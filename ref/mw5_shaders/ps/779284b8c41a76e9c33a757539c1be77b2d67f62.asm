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
; shader hash: b6e7a2169c26852b20617ff3f13feb62
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
  %293 = add i32 %72, 108
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 2
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %307, label %298

; <label>:298                                     ; preds = %238
  %299 = add i32 %72, 184
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
  br i1 %316, label %1110, label %317

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
  %528 = add i32 %72, 168
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
  %580 = add i32 %72, 164
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
  %604 = add i32 %72, 152
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
  %627 = add i32 %72, 172
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
  %808 = add i32 %72, 116
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
  br i1 %820, label %961, label %821

; <label>:821                                     ; preds = %799
  %822 = add i32 %72, 44
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = add i32 %72, 156
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %825, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = add i32 %827, 0
  %829 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %828, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %830 = add i32 %72, 120
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = extractvalue %dx.types.ResRet.i32 %831, 1
  %834 = extractvalue %dx.types.ResRet.i32 %831, 2
  %835 = extractvalue %dx.types.ResRet.i32 %831, 3
  %836 = bitcast i32 %833 to float
  %837 = bitcast i32 %834 to float
  %838 = bitcast i32 %835 to float
  %839 = add i32 %72, 136
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = extractvalue %dx.types.ResRet.i32 %840, 1
  %843 = extractvalue %dx.types.ResRet.i32 %840, 2
  %844 = extractvalue %dx.types.ResRet.i32 %840, 3
  %845 = bitcast i32 %842 to float
  %846 = bitcast i32 %843 to float
  %847 = bitcast i32 %844 to float
  %848 = fmul fast float %836, %408
  %849 = fmul fast float %836, %409
  %850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.f32 %850, 3
  %852 = fmul fast float %851, %837
  %853 = fmul fast float %851, %838
  %854 = fadd fast float %852, %848
  %855 = fadd fast float %853, %849
  %856 = fmul fast float %845, %408
  %857 = fmul fast float %845, %409
  %858 = fmul fast float %851, %846
  %859 = fmul fast float %851, %847
  %860 = fadd fast float %858, %856
  %861 = fadd fast float %859, %857
  %862 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %829, i32 0)  ; GetDimensions(handle,mipLevel)
  %863 = extractvalue %dx.types.Dimensions %862, 3
  %864 = sitofp i32 %863 to float
  %865 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %829, %dx.types.Handle %97, float %854, float %855, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %866 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %829, %dx.types.Handle %97, float %860, float %861, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %867 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %829, %dx.types.Handle %97, float %854, float %855, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %868 = extractvalue %dx.types.ResRet.f32 %867, 0
  %869 = extractvalue %dx.types.ResRet.f32 %867, 1
  %870 = extractvalue %dx.types.ResRet.f32 %867, 2
  %871 = extractvalue %dx.types.ResRet.f32 %867, 3
  %872 = and i32 %824, 255
  %873 = uitofp i32 %872 to float
  %874 = lshr i32 %824, 8
  %875 = and i32 %874, 255
  %876 = uitofp i32 %875 to float
  %877 = lshr i32 %824, 16
  %878 = and i32 %877, 255
  %879 = uitofp i32 %878 to float
  %880 = fmul fast float %879, 0x3F70101000000000
  %881 = fmul fast float %868, %873
  %882 = fadd fast float %881, %876
  %883 = fadd fast float %869, -5.000000e-01
  %884 = fadd fast float %871, -5.000000e-01
  %885 = fmul fast float %883, %880
  %886 = fmul fast float %884, %880
  %887 = fadd fast float %885, 5.000000e-01
  %888 = fadd fast float %886, 5.000000e-01
  %889 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %829, %dx.types.Handle %97, float %860, float %861, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %890 = extractvalue %dx.types.ResRet.f32 %889, 0
  %891 = extractvalue %dx.types.ResRet.f32 %889, 1
  %892 = extractvalue %dx.types.ResRet.f32 %889, 2
  %893 = extractvalue %dx.types.ResRet.f32 %889, 3
  %894 = fmul fast float %890, %873
  %895 = fadd fast float %894, %876
  %896 = fadd fast float %891, -5.000000e-01
  %897 = fadd fast float %893, -5.000000e-01
  %898 = fmul fast float %896, %880
  %899 = fmul fast float %897, %880
  %900 = fadd fast float %898, 5.000000e-01
  %901 = fadd fast float %899, 5.000000e-01
  %902 = fmul fast float %887, 2.000000e+00
  %903 = fadd fast float %902, -1.000000e+00
  %904 = fmul fast float %888, 2.000000e+00
  %905 = fadd fast float %904, -1.000000e+00
  %906 = fadd fast float %903, %905
  %907 = fmul fast float %906, 5.000000e-01
  %908 = fsub fast float %903, %905
  %909 = fmul fast float %908, 5.000000e-01
  %910 = call float @dx.op.unary.f32(i32 6, float %907)  ; FAbs(value)
  %911 = fsub fast float 1.000000e+00, %910
  %912 = call float @dx.op.unary.f32(i32 6, float %909)  ; FAbs(value)
  %913 = fsub fast float %911, %912
  %914 = call float @dx.op.dot3.f32(i32 55, float %907, float %909, float %913, float %907, float %909, float %913)  ; Dot3(ax,ay,az,bx,by,bz)
  %915 = call float @dx.op.unary.f32(i32 25, float %914)  ; Rsqrt(value)
  %916 = fmul fast float %900, 2.000000e+00
  %917 = fadd fast float %916, -1.000000e+00
  %918 = fmul fast float %901, 2.000000e+00
  %919 = fadd fast float %918, -1.000000e+00
  %920 = fadd fast float %917, %919
  %921 = fmul fast float %920, 5.000000e-01
  %922 = fsub fast float %917, %919
  %923 = fmul fast float %922, 5.000000e-01
  %924 = call float @dx.op.unary.f32(i32 6, float %921)  ; FAbs(value)
  %925 = fsub fast float 1.000000e+00, %924
  %926 = call float @dx.op.unary.f32(i32 6, float %923)  ; FAbs(value)
  %927 = fsub fast float %925, %926
  %928 = call float @dx.op.dot3.f32(i32 55, float %921, float %923, float %927, float %921, float %923, float %927)  ; Dot3(ax,ay,az,bx,by,bz)
  %929 = call float @dx.op.unary.f32(i32 25, float %928)  ; Rsqrt(value)
  %930 = fadd fast float %864, -1.000000e+00
  %931 = fsub fast float %930, %865
  %932 = fmul fast float %931, 5.000000e-01
  %933 = call float @dx.op.unary.f32(i32 7, float %932)  ; Saturate(value)
  %934 = fsub fast float %930, %866
  %935 = fmul fast float %934, 5.000000e-01
  %936 = call float @dx.op.unary.f32(i32 7, float %935)  ; Saturate(value)
  %937 = bitcast i32 %832 to float
  %938 = bitcast i32 %841 to float
  %939 = fmul fast float %907, %937
  %940 = fmul fast float %939, %915
  %941 = fmul fast float %940, %933
  %942 = fmul fast float %909, %937
  %943 = fmul fast float %942, %915
  %944 = fmul fast float %943, %933
  %945 = fmul fast float %929, %938
  %946 = fmul fast float %945, %921
  %947 = fmul fast float %946, %936
  %948 = fmul fast float %945, %923
  %949 = fmul fast float %948, %936
  %950 = fadd fast float %947, %941
  %951 = fadd fast float %949, %944
  %952 = fmul fast float %870, %937
  %953 = fmul fast float %892, %938
  %954 = fadd fast float %953, %952
  %955 = fmul fast float %882, %937
  %956 = fmul fast float %895, %938
  %957 = fadd fast float %956, %955
  %958 = fmul fast float %957, 0x3F70101000000000
  %959 = call float @dx.op.dot2.f32(i32 54, float %950, float %951, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %960 = call float @dx.op.dot2.f32(i32 54, float %950, float %951, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %961

; <label>:961                                     ; preds = %821, %799
  %962 = phi float [ %958, %821 ], [ 0x3FD6666660000000, %799 ]
  %963 = phi float [ %959, %821 ], [ 0.000000e+00, %799 ]
  %964 = phi float [ %960, %821 ], [ 0.000000e+00, %799 ]
  %965 = phi float [ %954, %821 ], [ 1.000000e+00, %799 ]
  %966 = add i32 %72, 64
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = lshr i32 %968, 22
  %970 = shl nuw nsw i32 %969, 5
  %971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %970)  ; LegacyF16ToF32(value)
  %972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %973 = extractvalue %dx.types.ResRet.i32 %972, 0
  %974 = and i32 %973, 64
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %1009, label %976

; <label>:976                                     ; preds = %961
  %977 = add i32 %72, 160
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = add i32 %979, 0
  %981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %980, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = and i32 %983, 131072
  %985 = icmp eq i32 %984, 0
  %986 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %981, %dx.types.Handle %97, float %408, float %409, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %987 = extractvalue %dx.types.ResRet.f32 %986, 0
  %988 = extractvalue %dx.types.ResRet.f32 %986, 1
  %989 = extractvalue %dx.types.ResRet.f32 %986, 2
  %990 = fmul fast float %987, %256
  %991 = fmul fast float %988, %259
  %992 = fmul fast float %989, %262
  br i1 %985, label %999, label %993

; <label>:993                                     ; preds = %976
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 0
  %996 = fmul fast float %995, %990
  %997 = fmul fast float %995, %991
  %998 = fmul fast float %995, %992
  br label %999

; <label>:999                                     ; preds = %993, %976
  %1000 = phi float [ %996, %993 ], [ %990, %976 ]
  %1001 = phi float [ %997, %993 ], [ %991, %976 ]
  %1002 = phi float [ %998, %993 ], [ %992, %976 ]
  %1003 = fmul fast float %1000, %971
  %1004 = select i1 %239, float %1003, float %1000
  %1005 = call float @dx.op.dot3.f32(i32 55, float %1004, float %1001, float %1002, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1006 = select i1 %239, float 0.000000e+00, float %1000
  %1007 = select i1 %239, float %1005, float %1001
  %1008 = select i1 %239, float 0.000000e+00, float %1002
  br label %1009

; <label>:1009                                    ; preds = %999, %961
  %1010 = phi float [ %1006, %999 ], [ 0.000000e+00, %961 ]
  %1011 = phi float [ %1007, %999 ], [ 0.000000e+00, %961 ]
  %1012 = phi float [ %1008, %999 ], [ 0.000000e+00, %961 ]
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = and i32 %1014, 1024
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1047, label %1017

; <label>:1017                                    ; preds = %1009
  %1018 = add i32 %72, 56
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = and i32 %1020, 255
  %1022 = uitofp i32 %1021 to float
  %1023 = fmul fast float %1022, 0x3F70101020000000
  %1024 = lshr i32 %1020, 8
  %1025 = and i32 %1024, 255
  %1026 = uitofp i32 %1025 to float
  %1027 = fmul fast float %1026, 0x3F70101020000000
  %1028 = lshr i32 %1020, 16
  %1029 = and i32 %1028, 255
  %1030 = uitofp i32 %1029 to float
  %1031 = fmul fast float %1030, 0x3F70101020000000
  %1032 = fmul fast float %1023, %1023
  %1033 = fmul fast float %1027, %1027
  %1034 = fmul fast float %1031, %1031
  %1035 = add i32 %72, 176
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = add i32 %1037, 0
  %1039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1038, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1040 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1039, %dx.types.Handle %98, float %408, float %409, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 0
  %1042 = extractvalue %dx.types.ResRet.f32 %1040, 1
  %1043 = extractvalue %dx.types.ResRet.f32 %1040, 2
  %1044 = fmul fast float %1032, %1041
  %1045 = fmul fast float %1033, %1042
  %1046 = fmul fast float %1034, %1043
  br label %1047

; <label>:1047                                    ; preds = %1017, %1009
  %1048 = phi float [ %1044, %1017 ], [ 0.000000e+00, %1009 ]
  %1049 = phi float [ %1045, %1017 ], [ 0.000000e+00, %1009 ]
  %1050 = phi float [ %1046, %1017 ], [ 0.000000e+00, %1009 ]
  %1051 = fcmp fast ogt float %1048, 0.000000e+00
  %1052 = fcmp fast ogt float %1049, 0.000000e+00
  %1053 = fcmp fast ogt float %1050, 0.000000e+00
  %1054 = call float @dx.op.unary.f32(i32 23, float %1048)  ; Log(value)
  %1055 = call float @dx.op.unary.f32(i32 23, float %1049)  ; Log(value)
  %1056 = call float @dx.op.unary.f32(i32 23, float %1050)  ; Log(value)
  %1057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = lshr i32 %1058, 7
  %1060 = and i32 %1059, 32752
  %1061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1060)  ; LegacyF16ToF32(value)
  %1062 = fmul fast float %1054, 0xBFE62E4300000000
  %1063 = fmul fast float %1062, %1061
  %1064 = fmul fast float %1055, 0xBFE62E4300000000
  %1065 = fmul fast float %1064, %1061
  %1066 = fmul fast float %1056, 0xBFE62E4300000000
  %1067 = fmul fast float %1066, %1061
  %1068 = select i1 %1051, float %1063, float 1.270000e+02
  %1069 = select i1 %1052, float %1065, float 1.270000e+02
  %1070 = select i1 %1053, float %1067, float 1.270000e+02
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = and i32 %1072, 10240
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1095, label %1075

; <label>:1075                                    ; preds = %1047
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = and i32 %1077, 2048
  %1079 = icmp eq i32 %1078, 0
  br i1 %1079, label %1095, label %1080

; <label>:1080                                    ; preds = %1075
  %1081 = add i32 %72, 180
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = add i32 %1083, 0
  %1085 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1084, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1086 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1085, %dx.types.Handle %98, float %408, float %409, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 3
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = shl i32 %1089, 4
  %1091 = and i32 %1090, 32752
  %1092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1091)  ; LegacyF16ToF32(value)
  %1093 = fmul fast float %1092, %1087
  %1094 = call float @dx.op.binary.f32(i32 35, float %1093, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1095

; <label>:1095                                    ; preds = %1080, %1075, %1047
  %1096 = phi float [ %1094, %1080 ], [ 0x3F70101020000000, %1075 ], [ 0x3F70101020000000, %1047 ]
  %1097 = add i32 %72, 48
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = and i32 %1099, 255
  %1101 = uitofp i32 %1100 to float
  %1102 = lshr i32 %1099, 8
  %1103 = and i32 %1102, 255
  %1104 = uitofp i32 %1103 to float
  %1105 = call float @dx.op.dot3.f32(i32 55, float %814, float %815, float %816, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1106 = fmul fast float %1104, %1105
  %1107 = fadd fast float %1106, %1101
  %1108 = fmul fast float %1107, 0x3F70101020000000
  %1109 = call float @dx.op.unary.f32(i32 7, float %1108)  ; Saturate(value)
  br label %1110

; <label>:1110                                    ; preds = %1095, %307
  %1111 = phi float [ 0.000000e+00, %307 ], [ %963, %1095 ]
  %1112 = phi float [ 0.000000e+00, %307 ], [ %964, %1095 ]
  %1113 = phi float [ 0.000000e+00, %307 ], [ %814, %1095 ]
  %1114 = phi float [ 0.000000e+00, %307 ], [ %815, %1095 ]
  %1115 = phi float [ 0.000000e+00, %307 ], [ %816, %1095 ]
  %1116 = phi float [ 0.000000e+00, %307 ], [ %1010, %1095 ]
  %1117 = phi float [ 0.000000e+00, %307 ], [ %1011, %1095 ]
  %1118 = phi float [ 0.000000e+00, %307 ], [ %1012, %1095 ]
  %1119 = phi float [ 0.000000e+00, %307 ], [ %1068, %1095 ]
  %1120 = phi float [ 0.000000e+00, %307 ], [ %1069, %1095 ]
  %1121 = phi float [ 0.000000e+00, %307 ], [ %1070, %1095 ]
  %1122 = phi float [ 0.000000e+00, %307 ], [ %800, %1095 ]
  %1123 = phi float [ 0.000000e+00, %307 ], [ %596, %1095 ]
  %1124 = phi float [ 0.000000e+00, %307 ], [ %962, %1095 ]
  %1125 = phi float [ 0.000000e+00, %307 ], [ %965, %1095 ]
  %1126 = phi float [ 0.000000e+00, %307 ], [ %1096, %1095 ]
  %1127 = phi float [ 0.000000e+00, %307 ], [ %1109, %1095 ]
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 0
  %1130 = call float @dx.op.dot2.f32(i32 54, float %1111, float %1112, float %1111, float %1112)  ; Dot2(ax,ay,bx,by)
  %1131 = fmul fast float %1130, 0x3FE3333340000000
  %1132 = fsub fast float 1.000000e+00, %1131
  %1133 = call float @dx.op.dot3.f32(i32 55, float %1111, float %1112, float %1132, float %1111, float %1112, float %1132)  ; Dot3(ax,ay,az,bx,by,bz)
  %1134 = call float @dx.op.unary.f32(i32 25, float %1133)  ; Rsqrt(value)
  %1135 = fmul fast float %1134, %1111
  %1136 = fmul fast float %1134, %1112
  %1137 = fmul fast float %1132, %1134
  %1138 = fmul fast float %1137, %77
  %1139 = fmul fast float %1137, %78
  %1140 = fmul fast float %1137, %79
  %1141 = fmul fast float %1135, %73
  %1142 = fmul fast float %1135, %74
  %1143 = fmul fast float %1135, %75
  %1144 = fadd fast float %1138, %1141
  %1145 = fadd fast float %1139, %1142
  %1146 = fadd fast float %1140, %1143
  %1147 = fmul fast float %1136, %112
  %1148 = fmul fast float %1136, %113
  %1149 = fmul fast float %1136, %114
  %1150 = fadd fast float %1144, %1147
  %1151 = fadd fast float %1145, %1148
  %1152 = fadd fast float %1146, %1149
  %1153 = call float @dx.op.dot3.f32(i32 55, float %1150, float %1151, float %1152, float %1150, float %1151, float %1152)  ; Dot3(ax,ay,az,bx,by,bz)
  %1154 = call float @dx.op.unary.f32(i32 25, float %1153)  ; Rsqrt(value)
  %1155 = fmul fast float %1150, %1154
  %1156 = fmul fast float %1151, %1154
  %1157 = fmul fast float %1152, %1154
  %1158 = call float @dx.op.unary.f32(i32 83, float %148)  ; DerivCoarseX(value)
  %1159 = call float @dx.op.unary.f32(i32 83, float %149)  ; DerivCoarseX(value)
  %1160 = call float @dx.op.unary.f32(i32 83, float %150)  ; DerivCoarseX(value)
  %1161 = call float @dx.op.unary.f32(i32 84, float %148)  ; DerivCoarseY(value)
  %1162 = call float @dx.op.unary.f32(i32 84, float %149)  ; DerivCoarseY(value)
  %1163 = call float @dx.op.unary.f32(i32 84, float %150)  ; DerivCoarseY(value)
  %1164 = fadd fast float %1158, %148
  %1165 = fadd fast float %1159, %149
  %1166 = fadd fast float %1160, %150
  %1167 = fadd fast float %1161, %148
  %1168 = fadd fast float %1162, %149
  %1169 = fadd fast float %1163, %150
  %1170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1171 = extractvalue %dx.types.CBufRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.CBufRet.f32 %1170, 1
  %1173 = extractvalue %dx.types.CBufRet.f32 %1170, 2
  %1174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.f32 %1174, 2
  %1176 = extractvalue %dx.types.CBufRet.f32 %1174, 3
  %1177 = fmul fast float %1171, %101
  %1178 = fmul fast float %1177, %1175
  %1179 = fmul fast float %1172, %102
  %1180 = fmul fast float %1179, %1176
  %1181 = fptoui float %1178 to i32
  %1182 = fptoui float %1180 to i32
  %1183 = fadd fast float %1171, -1.000000e+00
  %1184 = fadd fast float %1172, -1.000000e+00
  %1185 = fptoui float %1183 to i32
  %1186 = fptoui float %1184 to i32
  %1187 = call i32 @dx.op.binary.i32(i32 40, i32 %1181, i32 %1185)  ; UMin(a,b)
  %1188 = call i32 @dx.op.binary.i32(i32 40, i32 %1182, i32 %1186)  ; UMin(a,b)
  %1189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1190 = extractvalue %dx.types.CBufRet.f32 %1189, 2
  %1191 = extractvalue %dx.types.CBufRet.f32 %1189, 3
  %1192 = fmul fast float %1190, %89
  %1193 = fsub fast float %1192, %1191
  %1194 = fadd fast float %1173, -1.000000e+00
  %1195 = call float @dx.op.binary.f32(i32 36, float %1193, float %1194)  ; FMin(a,b)
  %1196 = fptoui float %1195 to i32
  %1197 = fptoui float %1171 to i32
  %1198 = fptoui float %1172 to i32
  %1199 = mul i32 %1196, %1198
  %1200 = add i32 %1199, %1188
  %1201 = mul i32 %1200, %1197
  %1202 = add i32 %1201, %1187
  %1203 = shl i32 %1202, 2
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = and i32 %1205, 1023
  %1207 = lshr i32 %1205, 10
  %1208 = icmp eq i32 %1206, 0
  br i1 %1208, label %1662, label %1209

; <label>:1209                                    ; preds = %1110
  %1210 = and i32 %1205, 1023
  br label %1211

; <label>:1211                                    ; preds = %1340, %1209
  %1212 = phi float [ %1341, %1340 ], [ 0.000000e+00, %1209 ]
  %1213 = phi float [ %1342, %1340 ], [ %1129, %1209 ]
  %1214 = phi float [ %1343, %1340 ], [ %1127, %1209 ]
  %1215 = phi float [ %1344, %1340 ], [ %1119, %1209 ]
  %1216 = phi float [ %1345, %1340 ], [ %1120, %1209 ]
  %1217 = phi float [ %1346, %1340 ], [ %1121, %1209 ]
  %1218 = phi float [ %1347, %1340 ], [ 0.000000e+00, %1209 ]
  %1219 = phi float [ %1348, %1340 ], [ 0.000000e+00, %1209 ]
  %1220 = phi float [ %1349, %1340 ], [ %1116, %1209 ]
  %1221 = phi float [ %1350, %1340 ], [ %1117, %1209 ]
  %1222 = phi float [ %1351, %1340 ], [ %1118, %1209 ]
  %1223 = phi float [ %1352, %1340 ], [ %1155, %1209 ]
  %1224 = phi float [ %1353, %1340 ], [ %1156, %1209 ]
  %1225 = phi float [ %1354, %1340 ], [ %1157, %1209 ]
  %1226 = phi float [ %1355, %1340 ], [ %1125, %1209 ]
  %1227 = phi float [ %1356, %1340 ], [ %1124, %1209 ]
  %1228 = phi float [ %1357, %1340 ], [ 0.000000e+00, %1209 ]
  %1229 = phi float [ %1358, %1340 ], [ %1122, %1209 ]
  %1230 = phi float [ %1359, %1340 ], [ %1113, %1209 ]
  %1231 = phi float [ %1360, %1340 ], [ %1114, %1209 ]
  %1232 = phi float [ %1361, %1340 ], [ %1115, %1209 ]
  %1233 = phi i32 [ %1290, %1340 ], [ 0, %1209 ]
  %1234 = add nuw nsw i32 %1233, %1207
  %1235 = shl i32 %1234, 2
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = shl i32 %1237, 8
  %1239 = or i32 %1238, 48
  %1240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.f32 %1240, 0
  %1242 = extractvalue %dx.types.ResRet.f32 %1240, 1
  %1243 = extractvalue %dx.types.ResRet.f32 %1240, 2
  %1244 = extractvalue %dx.types.ResRet.f32 %1240, 3
  %1245 = or i32 %1238, 64
  %1246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.i32 %1246, 0
  %1248 = extractvalue %dx.types.ResRet.i32 %1246, 1
  %1249 = or i32 %1238, 80
  %1250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 2
  %1252 = extractvalue %dx.types.ResRet.f32 %1250, 3
  %1253 = or i32 %1238, 96
  %1254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = extractvalue %dx.types.ResRet.f32 %1254, 1
  %1257 = extractvalue %dx.types.ResRet.f32 %1254, 2
  %1258 = extractvalue %dx.types.ResRet.f32 %1254, 3
  %1259 = or i32 %1238, 112
  %1260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.f32 %1260, 2
  %1262 = or i32 %1238, 128
  %1263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.ResRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.ResRet.f32 %1263, 2
  %1267 = extractvalue %dx.types.ResRet.f32 %1263, 3
  %1268 = or i32 %1238, 144
  %1269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.f32 %1269, 0
  %1271 = extractvalue %dx.types.ResRet.f32 %1269, 1
  %1272 = extractvalue %dx.types.ResRet.f32 %1269, 2
  %1273 = extractvalue %dx.types.ResRet.f32 %1269, 3
  %1274 = or i32 %1238, 160
  %1275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.f32 %1275, 0
  %1277 = extractvalue %dx.types.ResRet.f32 %1275, 1
  %1278 = extractvalue %dx.types.ResRet.f32 %1275, 2
  %1279 = extractvalue %dx.types.ResRet.f32 %1275, 3
  %1280 = or i32 %1238, 192
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = or i32 %1238, 208
  %1284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = or i32 %1238, 248
  %1287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.f32 %1287, 0
  %1289 = extractvalue %dx.types.ResRet.f32 %1287, 1
  %1290 = add nuw nsw i32 %1233, 1
  %1291 = bitcast float %1244 to i32
  %1292 = and i32 %1291, 2560
  %1293 = icmp eq i32 %1292, 0
  %1294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1238, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.f32 %1294, 0
  %1296 = extractvalue %dx.types.ResRet.f32 %1294, 1
  %1297 = extractvalue %dx.types.ResRet.f32 %1294, 2
  %1298 = extractvalue %dx.types.ResRet.f32 %1294, 3
  %1299 = call float @dx.op.dot4.f32(i32 56, float %1295, float %1296, float %1297, float %1298, float %148, float %149, float %150, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1300 = or i32 %1238, 16
  %1301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.ResRet.f32 %1301, 1
  %1304 = extractvalue %dx.types.ResRet.f32 %1301, 2
  %1305 = extractvalue %dx.types.ResRet.f32 %1301, 3
  %1306 = call float @dx.op.dot4.f32(i32 56, float %1302, float %1303, float %1304, float %1305, float %148, float %149, float %150, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1307 = or i32 %1238, 32
  %1308 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1307, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.f32 %1308, 0
  %1310 = extractvalue %dx.types.ResRet.f32 %1308, 1
  %1311 = extractvalue %dx.types.ResRet.f32 %1308, 2
  %1312 = extractvalue %dx.types.ResRet.f32 %1308, 3
  %1313 = call float @dx.op.dot4.f32(i32 56, float %1309, float %1310, float %1311, float %1312, float %148, float %149, float %150, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1314 = call float @dx.op.unary.f32(i32 27, float %1299)  ; Round_ni(value)
  %1315 = call float @dx.op.unary.f32(i32 6, float %1314)  ; FAbs(value)
  %1316 = call float @dx.op.unary.f32(i32 27, float %1306)  ; Round_ni(value)
  %1317 = call float @dx.op.unary.f32(i32 6, float %1316)  ; FAbs(value)
  %1318 = call float @dx.op.unary.f32(i32 6, float %1313)  ; FAbs(value)
  %1319 = call float @dx.op.unary.f32(i32 27, float %1318)  ; Round_ni(value)
  %1320 = fadd fast float %1317, %1315
  %1321 = fadd fast float %1320, %1319
  %1322 = fcmp fast oeq float %1321, 0.000000e+00
  %1323 = call float @dx.op.dot4.f32(i32 56, float %1295, float %1296, float %1297, float %1298, float %1164, float %1165, float %1166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1324 = call float @dx.op.dot4.f32(i32 56, float %1302, float %1303, float %1304, float %1305, float %1164, float %1165, float %1166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1325 = call float @dx.op.dot4.f32(i32 56, float %1295, float %1296, float %1297, float %1298, float %1167, float %1168, float %1169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1326 = call float @dx.op.dot4.f32(i32 56, float %1302, float %1303, float %1304, float %1305, float %1167, float %1168, float %1169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1327 = fsub fast float %1323, %1299
  %1328 = fsub fast float %1325, %1299
  %1329 = fsub fast float %1324, %1306
  %1330 = fsub fast float %1326, %1306
  %1331 = call float @dx.op.dot3.f32(i32 55, float %1241, float %1242, float %1243, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %1332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1333 = extractvalue %dx.types.CBufRet.f32 %1332, 2
  %1334 = fadd fast float %1333, %1331
  %1335 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1332, 0
  %1337 = fcmp fast ogt float %1335, %1336
  %1338 = and i1 %1322, %1337
  %1339 = and i1 %1293, %1338
  br i1 %1339, label %1363, label %1340

; <label>:1340                                    ; preds = %1648, %1444, %1363, %1211
  %1341 = phi float [ %1212, %1363 ], [ %1447, %1444 ], [ %1447, %1648 ], [ %1212, %1211 ]
  %1342 = phi float [ %1213, %1363 ], [ %1213, %1444 ], [ %1624, %1648 ], [ %1213, %1211 ]
  %1343 = phi float [ %1214, %1363 ], [ %1214, %1444 ], [ %1622, %1648 ], [ %1214, %1211 ]
  %1344 = phi float [ %1215, %1363 ], [ %1215, %1444 ], [ %1600, %1648 ], [ %1215, %1211 ]
  %1345 = phi float [ %1216, %1363 ], [ %1216, %1444 ], [ %1601, %1648 ], [ %1216, %1211 ]
  %1346 = phi float [ %1217, %1363 ], [ %1217, %1444 ], [ %1602, %1648 ], [ %1217, %1211 ]
  %1347 = phi float [ %1218, %1363 ], [ %1218, %1444 ], [ %1571, %1648 ], [ %1218, %1211 ]
  %1348 = phi float [ %1219, %1363 ], [ %1219, %1444 ], [ %1569, %1648 ], [ %1219, %1211 ]
  %1349 = phi float [ %1220, %1363 ], [ %1220, %1444 ], [ %1658, %1648 ], [ %1220, %1211 ]
  %1350 = phi float [ %1221, %1363 ], [ %1221, %1444 ], [ %1659, %1648 ], [ %1221, %1211 ]
  %1351 = phi float [ %1222, %1363 ], [ %1222, %1444 ], [ %1660, %1648 ], [ %1222, %1211 ]
  %1352 = phi float [ %1223, %1363 ], [ %1223, %1444 ], [ %1550, %1648 ], [ %1223, %1211 ]
  %1353 = phi float [ %1224, %1363 ], [ %1224, %1444 ], [ %1551, %1648 ], [ %1224, %1211 ]
  %1354 = phi float [ %1225, %1363 ], [ %1225, %1444 ], [ %1552, %1648 ], [ %1225, %1211 ]
  %1355 = phi float [ %1226, %1363 ], [ %1226, %1444 ], [ %1580, %1648 ], [ %1226, %1211 ]
  %1356 = phi float [ %1227, %1363 ], [ %1227, %1444 ], [ %1577, %1648 ], [ %1227, %1211 ]
  %1357 = phi float [ %1228, %1363 ], [ %1228, %1444 ], [ %1574, %1648 ], [ %1228, %1211 ]
  %1358 = phi float [ %1229, %1363 ], [ %1229, %1444 ], [ %1567, %1648 ], [ %1229, %1211 ]
  %1359 = phi float [ %1230, %1363 ], [ %1230, %1444 ], [ %1562, %1648 ], [ %1230, %1211 ]
  %1360 = phi float [ %1231, %1363 ], [ %1231, %1444 ], [ %1563, %1648 ], [ %1231, %1211 ]
  %1361 = phi float [ %1232, %1363 ], [ %1232, %1444 ], [ %1564, %1648 ], [ %1232, %1211 ]
  %1362 = icmp eq i32 %1290, %1210
  br i1 %1362, label %1661, label %1211

; <label>:1363                                    ; preds = %1211
  %1364 = extractvalue %dx.types.ResRet.f32 %1260, 3
  %1365 = extractvalue %dx.types.ResRet.f32 %1260, 1
  %1366 = extractvalue %dx.types.ResRet.f32 %1260, 0
  %1367 = extractvalue %dx.types.ResRet.f32 %1250, 1
  %1368 = extractvalue %dx.types.ResRet.f32 %1250, 0
  %1369 = extractvalue %dx.types.ResRet.i32 %1246, 3
  %1370 = extractvalue %dx.types.ResRet.i32 %1246, 2
  %1371 = add i32 %1369, 0
  %1372 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1371, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1373 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1374 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1372, %dx.types.Handle %1373, float %1299, float %1306, float undef, float undef, i32 0, i32 0, i32 undef, float %1327, float %1329, float undef, float %1328, float %1330, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1375 = extractvalue %dx.types.ResRet.f32 %1374, 0
  %1376 = fmul fast float %1375, %1368
  %1377 = fadd fast float %1376, %1367
  %1378 = call float @dx.op.unary.f32(i32 7, float %1377)  ; Saturate(value)
  %1379 = fmul fast float %1299, %1255
  %1380 = call float @dx.op.tertiary.f32(i32 46, float %1256, float %1306, float %1379)  ; FMad(a,b,c)
  %1381 = fadd fast float %1380, %1366
  %1382 = fmul fast float %1299, %1257
  %1383 = call float @dx.op.tertiary.f32(i32 46, float %1258, float %1306, float %1382)  ; FMad(a,b,c)
  %1384 = fadd fast float %1383, %1365
  %1385 = fmul fast float %1327, %1255
  %1386 = call float @dx.op.tertiary.f32(i32 46, float %1256, float %1329, float %1385)  ; FMad(a,b,c)
  %1387 = fmul fast float %1327, %1257
  %1388 = call float @dx.op.tertiary.f32(i32 46, float %1258, float %1329, float %1387)  ; FMad(a,b,c)
  %1389 = fmul fast float %1328, %1255
  %1390 = call float @dx.op.tertiary.f32(i32 46, float %1256, float %1330, float %1389)  ; FMad(a,b,c)
  %1391 = fmul fast float %1328, %1257
  %1392 = call float @dx.op.tertiary.f32(i32 46, float %1258, float %1330, float %1391)  ; FMad(a,b,c)
  %1393 = add i32 %1370, 0
  %1394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1393, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1395 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1394, %dx.types.Handle %1373, float %1381, float %1384, float undef, float undef, i32 0, i32 0, i32 undef, float %1386, float %1388, float undef, float %1390, float %1392, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1396 = extractvalue %dx.types.ResRet.f32 %1395, 0
  %1397 = and i32 %1291, 1024
  %1398 = icmp ne i32 %1397, 0
  %1399 = fcmp fast ogt float %1396, 0x3FE0101020000000
  %1400 = uitofp i1 %1399 to float
  %1401 = select i1 %1398, float %1400, float %1396
  %1402 = and i32 %1291, 8192
  %1403 = icmp ne i32 %1402, 0
  %1404 = select i1 %1403, float %1364, float 1.000000e+00
  %1405 = fmul fast float %1299, 2.000000e+00
  %1406 = fadd fast float %1405, -1.000000e+00
  %1407 = call float @dx.op.unary.f32(i32 6, float %1406)  ; FAbs(value)
  %1408 = fmul fast float %1407, %1288
  %1409 = fsub fast float %1408, %1288
  %1410 = call float @dx.op.unary.f32(i32 7, float %1409)  ; Saturate(value)
  %1411 = fmul fast float %1306, 2.000000e+00
  %1412 = fadd fast float %1411, -1.000000e+00
  %1413 = call float @dx.op.unary.f32(i32 6, float %1412)  ; FAbs(value)
  %1414 = fmul fast float %1413, %1289
  %1415 = fsub fast float %1414, %1289
  %1416 = call float @dx.op.unary.f32(i32 7, float %1415)  ; Saturate(value)
  %1417 = fmul fast float %1318, %1251
  %1418 = fsub fast float %1417, %1251
  %1419 = call float @dx.op.unary.f32(i32 7, float %1418)  ; Saturate(value)
  %1420 = fmul fast float %1378, %1404
  %1421 = fmul fast float %1420, %1375
  %1422 = fmul fast float %1421, %1410
  %1423 = fmul fast float %1422, %1401
  %1424 = fmul fast float %1423, %1416
  %1425 = fmul fast float %1424, %1419
  %1426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1427 = extractvalue %dx.types.CBufRet.f32 %1426, 1
  %1428 = extractvalue %dx.types.CBufRet.f32 %1426, 0
  %1429 = fsub fast float %1335, %1428
  %1430 = fmul fast float %1429, %1427
  %1431 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  %1432 = fmul fast float %1425, %1252
  %1433 = fadd fast float %1425, %1252
  %1434 = fmul fast float %1433, %1261
  %1435 = fsub fast float %1434, %1261
  %1436 = call float @dx.op.unary.f32(i32 7, float %1435)  ; Saturate(value)
  %1437 = and i32 %1291, 128
  %1438 = icmp ne i32 %1437, 0
  %1439 = select i1 %1438, float %1436, float %1432
  %1440 = fmul fast float %1439, %1431
  %1441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1442 = extractvalue %dx.types.CBufRet.f32 %1441, 0
  %1443 = fcmp fast ugt float %1440, %1442
  br i1 %1443, label %1444, label %1340

; <label>:1444                                    ; preds = %1363
  %1445 = select i1 %1403, float %1440, float 0.000000e+00
  %1446 = fadd fast float %1445, %1212
  %1447 = call float @dx.op.unary.f32(i32 7, float %1446)  ; Saturate(value)
  br i1 %1403, label %1340, label %1448

; <label>:1448                                    ; preds = %1444
  %1449 = and i32 %1291, 4
  %1450 = and i32 %1291, 8
  %1451 = add i32 %1247, 0
  %1452 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1451, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1454 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1452, %dx.types.Handle %1453, float %1381, float %1384, float undef, float undef, i32 0, i32 0, i32 undef, float %1386, float %1388, float undef, float %1390, float %1392, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1455 = extractvalue %dx.types.ResRet.f32 %1454, 0
  %1456 = extractvalue %dx.types.ResRet.f32 %1454, 1
  %1457 = extractvalue %dx.types.ResRet.f32 %1454, 2
  %1458 = extractvalue %dx.types.ResRet.f32 %1454, 3
  %1459 = bitcast float %1273 to i32
  %1460 = and i32 %1459, 255
  %1461 = uitofp i32 %1460 to float
  %1462 = lshr i32 %1459, 8
  %1463 = and i32 %1462, 255
  %1464 = uitofp i32 %1463 to float
  %1465 = fmul fast float %1458, %1461
  %1466 = fadd fast float %1465, %1464
  %1467 = fmul fast float %1466, 0x3F70101000000000
  %1468 = add i32 %1248, 0
  %1469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1468, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1470 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1469, %dx.types.Handle %1453, float %1381, float %1384, float undef, float undef, i32 0, i32 0, i32 undef, float %1386, float %1388, float undef, float %1390, float %1392, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1471 = extractvalue %dx.types.ResRet.f32 %1470, 0
  %1472 = extractvalue %dx.types.ResRet.f32 %1470, 1
  %1473 = extractvalue %dx.types.ResRet.f32 %1470, 2
  %1474 = extractvalue %dx.types.ResRet.f32 %1470, 3
  %1475 = bitcast float %1267 to i32
  %1476 = and i32 %1475, 255
  %1477 = uitofp i32 %1476 to float
  %1478 = lshr i32 %1475, 8
  %1479 = and i32 %1478, 255
  %1480 = uitofp i32 %1479 to float
  %1481 = lshr i32 %1475, 16
  %1482 = and i32 %1481, 255
  %1483 = uitofp i32 %1482 to float
  %1484 = fmul fast float %1483, 0x3F70101000000000
  %1485 = fmul fast float %1471, %1477
  %1486 = fadd fast float %1485, %1480
  %1487 = fmul fast float %1486, 0x3F70101000000000
  %1488 = fadd fast float %1472, -5.000000e-01
  %1489 = fadd fast float %1474, -5.000000e-01
  %1490 = fmul fast float %1488, %1484
  %1491 = fmul fast float %1489, %1484
  %1492 = fadd fast float %1490, 5.000000e-01
  %1493 = fadd fast float %1491, 5.000000e-01
  %1494 = fmul fast float %1455, %1276
  %1495 = fmul fast float %1456, %1277
  %1496 = fmul fast float %1457, %1278
  %1497 = fmul fast float %1492, 2.000000e+00
  %1498 = fadd fast float %1497, -1.000000e+00
  %1499 = fmul fast float %1493, 2.000000e+00
  %1500 = fadd fast float %1499, -1.000000e+00
  %1501 = fadd fast float %1498, %1500
  %1502 = fmul fast float %1501, 5.000000e-01
  %1503 = fsub fast float %1498, %1500
  %1504 = fmul fast float %1503, 5.000000e-01
  %1505 = call float @dx.op.unary.f32(i32 6, float %1502)  ; FAbs(value)
  %1506 = fsub fast float 1.000000e+00, %1505
  %1507 = call float @dx.op.unary.f32(i32 6, float %1504)  ; FAbs(value)
  %1508 = fsub fast float %1506, %1507
  %1509 = call float @dx.op.dot3.f32(i32 55, float %1502, float %1504, float %1508, float %1502, float %1504, float %1508)  ; Dot3(ax,ay,az,bx,by,bz)
  %1510 = call float @dx.op.unary.f32(i32 25, float %1509)  ; Rsqrt(value)
  %1511 = fmul fast float %1502, %1510
  %1512 = fmul fast float %1504, %1510
  %1513 = fmul fast float %1510, %1508
  %1514 = fmul fast float %1513, %1241
  %1515 = fmul fast float %1513, %1242
  %1516 = fmul fast float %1513, %1243
  %1517 = fmul fast float %1511, %1264
  %1518 = fmul fast float %1511, %1265
  %1519 = fmul fast float %1511, %1266
  %1520 = fadd fast float %1517, %1514
  %1521 = fadd fast float %1518, %1515
  %1522 = fadd fast float %1519, %1516
  %1523 = fmul fast float %1512, %1270
  %1524 = fmul fast float %1512, %1271
  %1525 = fmul fast float %1512, %1272
  %1526 = fadd fast float %1520, %1523
  %1527 = fadd fast float %1521, %1524
  %1528 = fadd fast float %1522, %1525
  %1529 = call float @dx.op.dot3.f32(i32 55, float %1526, float %1527, float %1528, float %1526, float %1527, float %1528)  ; Dot3(ax,ay,az,bx,by,bz)
  %1530 = call float @dx.op.unary.f32(i32 25, float %1529)  ; Rsqrt(value)
  %1531 = fmul fast float %1526, %1530
  %1532 = fmul fast float %1527, %1530
  %1533 = fmul fast float %1528, %1530
  %1534 = icmp ne i32 %1450, 0
  %1535 = select i1 %1534, float 1.000000e+00, float 0.000000e+00
  %1536 = fmul fast float %1440, %1535
  %1537 = and i32 %1291, 1
  %1538 = icmp eq i32 %1537, 0
  br i1 %1538, label %1539, label %1543

; <label>:1539                                    ; preds = %1448
  %1540 = fsub fast float %1531, %1223
  %1541 = fsub fast float %1532, %1224
  %1542 = fsub fast float %1533, %1225
  br label %1543

; <label>:1543                                    ; preds = %1539, %1448
  %1544 = phi float [ %1540, %1539 ], [ %1531, %1448 ]
  %1545 = phi float [ %1541, %1539 ], [ %1532, %1448 ]
  %1546 = phi float [ %1542, %1539 ], [ %1533, %1448 ]
  %1547 = fmul float %1546, %1536
  %1548 = fmul float %1545, %1536
  %1549 = fmul float %1544, %1536
  %1550 = fadd fast float %1549, %1223
  %1551 = fadd fast float %1548, %1224
  %1552 = fadd fast float %1547, %1225
  %1553 = icmp ne i32 %1449, 0
  %1554 = select i1 %1553, float 1.000000e+00, float 0.000000e+00
  %1555 = fmul fast float %1440, %1554
  %1556 = fsub fast float %1494, %1230
  %1557 = fsub fast float %1495, %1231
  %1558 = fsub fast float %1496, %1232
  %1559 = fmul fast float %1556, %1555
  %1560 = fmul fast float %1557, %1555
  %1561 = fmul fast float %1558, %1555
  %1562 = fadd fast float %1559, %1230
  %1563 = fadd fast float %1560, %1231
  %1564 = fadd fast float %1561, %1232
  %1565 = fsub fast float %1467, %1229
  %1566 = fmul fast float %1565, %1555
  %1567 = fadd fast float %1566, %1229
  %1568 = fmul fast float %1555, %1219
  %1569 = fsub fast float %1219, %1568
  %1570 = fmul fast float %1555, %1218
  %1571 = fsub fast float %1218, %1570
  %1572 = bitcast float %1285 to i32
  %1573 = fadd fast float %1440, %1228
  %1574 = call float @dx.op.unary.f32(i32 7, float %1573)  ; Saturate(value)
  %1575 = fsub fast float %1487, %1227
  %1576 = fmul fast float %1575, %1536
  %1577 = fadd fast float %1576, %1227
  %1578 = fsub fast float %1473, %1226
  %1579 = fmul fast float %1578, %1536
  %1580 = fadd fast float %1579, %1226
  br i1 %1538, label %1589, label %1581

; <label>:1581                                    ; preds = %1543
  %1582 = and i32 %1291, 32768
  %1583 = icmp eq i32 %1582, 0
  br i1 %1583, label %1599, label %1584

; <label>:1584                                    ; preds = %1581
  %1585 = fmul fast float %1536, 1.270000e+02
  %1586 = fadd fast float %1585, %1215
  %1587 = fadd fast float %1585, %1216
  %1588 = fadd fast float %1585, %1217
  br label %1599

; <label>:1589                                    ; preds = %1543
  %1590 = fsub fast float 1.270000e+02, %1215
  %1591 = fsub fast float 1.270000e+02, %1216
  %1592 = fsub fast float 1.270000e+02, %1217
  %1593 = fmul fast float %1536, %1590
  %1594 = fmul fast float %1536, %1591
  %1595 = fmul fast float %1536, %1592
  %1596 = fadd fast float %1593, %1215
  %1597 = fadd fast float %1594, %1216
  %1598 = fadd fast float %1595, %1217
  br label %1599

; <label>:1599                                    ; preds = %1589, %1584, %1581
  %1600 = phi float [ %1586, %1584 ], [ %1215, %1581 ], [ %1596, %1589 ]
  %1601 = phi float [ %1587, %1584 ], [ %1216, %1581 ], [ %1597, %1589 ]
  %1602 = phi float [ %1588, %1584 ], [ %1217, %1581 ], [ %1598, %1589 ]
  %1603 = call float @dx.op.dot3.f32(i32 55, float %1494, float %1495, float %1496, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1605 = extractvalue %dx.types.CBufRet.f32 %1604, 0
  %1606 = extractvalue %dx.types.CBufRet.f32 %1604, 1
  %1607 = fmul fast float %1606, %1603
  %1608 = fadd fast float %1607, %1605
  %1609 = call float @dx.op.unary.f32(i32 7, float %1608)  ; Saturate(value)
  %1610 = bitcast float %1279 to i32
  %1611 = and i32 %1610, 65535
  %1612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1611)  ; LegacyF16ToF32(value)
  %1613 = lshr i32 %1610, 16
  %1614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1613)  ; LegacyF16ToF32(value)
  %1615 = fcmp fast oge float %1612, 0.000000e+00
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 0
  %1618 = select i1 %1615, float %1612, float %1617
  %1619 = fadd fast float %1618, %1614
  %1620 = fsub fast float %1609, %1214
  %1621 = fmul fast float %1620, %1440
  %1622 = fadd fast float %1621, %1214
  %1623 = fmul fast float %1619, %1440
  %1624 = call float @dx.op.binary.f32(i32 35, float %1213, float %1623)  ; FMax(a,b)
  %1625 = and i32 %1291, 16
  %1626 = icmp eq i32 %1625, 0
  br i1 %1626, label %1648, label %1627

; <label>:1627                                    ; preds = %1599
  %1628 = add i32 %1282, 0
  %1629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1628, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1630 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1629, %dx.types.Handle %1453, float %1381, float %1384, float undef, float undef, i32 0, i32 0, i32 undef, float %1386, float %1388, float undef, float %1390, float %1392, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1631 = extractvalue %dx.types.ResRet.f32 %1630, 0
  %1632 = extractvalue %dx.types.ResRet.f32 %1630, 1
  %1633 = extractvalue %dx.types.ResRet.f32 %1630, 2
  %1634 = and i32 %1572, 65535
  %1635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1634)  ; LegacyF16ToF32(value)
  %1636 = fmul fast float %1631, %1276
  %1637 = fmul fast float %1632, %1277
  %1638 = fmul fast float %1633, %1278
  %1639 = and i32 %1291, 16384
  %1640 = icmp ne i32 %1639, 0
  %1641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1641, 0
  %1643 = select i1 %1640, float %1642, float 1.000000e+00
  %1644 = fmul fast float %1643, %1635
  %1645 = fmul fast float %1636, %1644
  %1646 = fmul fast float %1637, %1644
  %1647 = fmul fast float %1638, %1644
  br label %1648

; <label>:1648                                    ; preds = %1627, %1599
  %1649 = phi float [ %1645, %1627 ], [ 0.000000e+00, %1599 ]
  %1650 = phi float [ %1646, %1627 ], [ 0.000000e+00, %1599 ]
  %1651 = phi float [ %1647, %1627 ], [ 0.000000e+00, %1599 ]
  %1652 = fsub fast float %1649, %1220
  %1653 = fsub fast float %1650, %1221
  %1654 = fsub fast float %1651, %1222
  %1655 = fmul fast float %1652, %1440
  %1656 = fmul fast float %1653, %1440
  %1657 = fmul fast float %1654, %1440
  %1658 = fadd fast float %1655, %1220
  %1659 = fadd fast float %1656, %1221
  %1660 = fadd fast float %1657, %1222
  br label %1340

; <label>:1661                                    ; preds = %1340
  br label %1662

; <label>:1662                                    ; preds = %1661, %1110
  %1663 = phi float [ 0.000000e+00, %1110 ], [ %1341, %1661 ]
  %1664 = phi float [ %1129, %1110 ], [ %1342, %1661 ]
  %1665 = phi float [ %1127, %1110 ], [ %1343, %1661 ]
  %1666 = phi float [ %1119, %1110 ], [ %1344, %1661 ]
  %1667 = phi float [ %1120, %1110 ], [ %1345, %1661 ]
  %1668 = phi float [ %1121, %1110 ], [ %1346, %1661 ]
  %1669 = phi float [ 0.000000e+00, %1110 ], [ %1347, %1661 ]
  %1670 = phi float [ 0.000000e+00, %1110 ], [ %1348, %1661 ]
  %1671 = phi float [ %1116, %1110 ], [ %1349, %1661 ]
  %1672 = phi float [ %1117, %1110 ], [ %1350, %1661 ]
  %1673 = phi float [ %1118, %1110 ], [ %1351, %1661 ]
  %1674 = phi float [ %1155, %1110 ], [ %1352, %1661 ]
  %1675 = phi float [ %1156, %1110 ], [ %1353, %1661 ]
  %1676 = phi float [ %1157, %1110 ], [ %1354, %1661 ]
  %1677 = phi float [ %1125, %1110 ], [ %1355, %1661 ]
  %1678 = phi float [ %1124, %1110 ], [ %1356, %1661 ]
  %1679 = phi float [ 0.000000e+00, %1110 ], [ %1357, %1661 ]
  %1680 = phi float [ %1122, %1110 ], [ %1358, %1661 ]
  %1681 = phi float [ %1113, %1110 ], [ %1359, %1661 ]
  %1682 = phi float [ %1114, %1110 ], [ %1360, %1661 ]
  %1683 = phi float [ %1115, %1110 ], [ %1361, %1661 ]
  %1684 = call float @dx.op.dot3.f32(i32 55, float %1674, float %1675, float %1676, float %1674, float %1675, float %1676)  ; Dot3(ax,ay,az,bx,by,bz)
  %1685 = call float @dx.op.unary.f32(i32 25, float %1684)  ; Rsqrt(value)
  %1686 = fmul fast float %1685, %1674
  %1687 = fmul fast float %1685, %1675
  %1688 = fmul fast float %1685, %1676
  %1689 = fadd fast float %1679, %1123
  %1690 = call float @dx.op.unary.f32(i32 7, float %1689)  ; Saturate(value)
  %1691 = call float @dx.op.dot3.f32(i32 55, float %1686, float %1687, float %1688, float %1686, float %1687, float %1688)  ; Dot3(ax,ay,az,bx,by,bz)
  %1692 = call float @dx.op.unary.f32(i32 25, float %1691)  ; Rsqrt(value)
  %1693 = fmul fast float %1692, %1686
  %1694 = fmul fast float %1692, %1687
  %1695 = fmul fast float %1692, %1688
  %1696 = fadd fast float %1680, 0xBFB99999A0000000
  %1697 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  %1698 = fmul fast float %1697, 0x3FF1C71C80000000
  %1699 = call float @dx.op.binary.f32(i32 36, float %1680, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1700 = fsub fast float 1.000000e+00, %1698
  %1701 = call float @dx.op.unary.f32(i32 7, float %1700)  ; Saturate(value)
  %1702 = fmul fast float %1701, %1681
  %1703 = fmul fast float %1701, %1682
  %1704 = fmul fast float %1701, %1683
  %1705 = call float @dx.op.unary.f32(i32 7, float %1702)  ; Saturate(value)
  %1706 = call float @dx.op.unary.f32(i32 7, float %1703)  ; Saturate(value)
  %1707 = call float @dx.op.unary.f32(i32 7, float %1704)  ; Saturate(value)
  %1708 = fmul fast float %1698, %1681
  %1709 = fmul fast float %1698, %1682
  %1710 = fmul fast float %1698, %1683
  %1711 = fadd fast float %1708, %1699
  %1712 = fadd fast float %1709, %1699
  %1713 = fadd fast float %1710, %1699
  %1714 = call float @dx.op.unary.f32(i32 7, float %1711)  ; Saturate(value)
  %1715 = call float @dx.op.unary.f32(i32 7, float %1712)  ; Saturate(value)
  %1716 = call float @dx.op.unary.f32(i32 7, float %1713)  ; Saturate(value)
  %1717 = call float @dx.op.unary.f32(i32 7, float %1678)  ; Saturate(value)
  %1718 = call float @dx.op.binary.f32(i32 36, float %1666, float 1.270000e+02)  ; FMin(a,b)
  %1719 = call float @dx.op.binary.f32(i32 36, float %1667, float 1.270000e+02)  ; FMin(a,b)
  %1720 = call float @dx.op.binary.f32(i32 36, float %1668, float 1.270000e+02)  ; FMin(a,b)
  %1721 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1722 = extractvalue %dx.types.CBufRet.i32 %1721, 3
  %1723 = and i32 %1722, 8
  %1724 = icmp ne i32 %1723, 0
  %1725 = call float @dx.op.binary.f32(i32 35, float %1705, float %1681)  ; FMax(a,b)
  %1726 = call float @dx.op.binary.f32(i32 35, float %1706, float %1681)  ; FMax(a,b)
  %1727 = call float @dx.op.binary.f32(i32 35, float %1707, float %1681)  ; FMax(a,b)
  %1728 = call float @dx.op.dot3.f32(i32 55, float %1705, float %1706, float %1707, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1729 = select i1 %239, float %1681, float %1705
  %1730 = select i1 %239, float %1728, float %1706
  %1731 = select i1 %239, float 1.000000e+00, float %1707
  %1732 = select i1 %1724, float %1725, float %1729
  %1733 = select i1 %1724, float %1726, float %1730
  %1734 = select i1 %1724, float %1727, float %1731
  %1735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1736 = extractvalue %dx.types.CBufRet.f32 %1735, 0
  %1737 = extractvalue %dx.types.CBufRet.f32 %1735, 1
  %1738 = extractvalue %dx.types.CBufRet.f32 %1735, 2
  %1739 = fadd fast float %1736, %148
  %1740 = fadd fast float %1737, %149
  %1741 = fadd fast float %1738, %150
  %1742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1743 = extractvalue %dx.types.CBufRet.f32 %1742, 0
  %1744 = extractvalue %dx.types.CBufRet.f32 %1742, 1
  %1745 = fsub fast float %1739, %1743
  %1746 = fsub fast float %1740, %1744
  %1747 = fmul fast float %1745, %1745
  %1748 = fmul fast float %1746, %1746
  %1749 = fadd fast float %1747, %1748
  %1750 = call float @dx.op.unary.f32(i32 24, float %1749)  ; Sqrt(value)
  %1751 = extractvalue %dx.types.CBufRet.f32 %1742, 2
  %1752 = fcmp fast olt float %1750, %1751
  br i1 %1752, label %1753, label %1820

; <label>:1753                                    ; preds = %1662
  %1754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1755 = extractvalue %dx.types.CBufRet.f32 %1754, 0
  %1756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1757 = extractvalue %dx.types.CBufRet.f32 %1756, 0
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 0
  %1760 = extractvalue %dx.types.CBufRet.f32 %1754, 1
  %1761 = extractvalue %dx.types.CBufRet.f32 %1756, 1
  %1762 = extractvalue %dx.types.CBufRet.f32 %1758, 1
  %1763 = extractvalue %dx.types.CBufRet.f32 %1754, 3
  %1764 = extractvalue %dx.types.CBufRet.f32 %1756, 3
  %1765 = extractvalue %dx.types.CBufRet.f32 %1758, 3
  %1766 = fadd fast float %1763, %1739
  %1767 = fadd fast float %1764, %1740
  %1768 = fadd fast float %1765, %1741
  %1769 = fmul fast float %1766, %1755
  %1770 = call float @dx.op.tertiary.f32(i32 46, float %1767, float %1757, float %1769)  ; FMad(a,b,c)
  %1771 = call float @dx.op.tertiary.f32(i32 46, float %1768, float %1759, float %1770)  ; FMad(a,b,c)
  %1772 = fmul fast float %1766, %1760
  %1773 = call float @dx.op.tertiary.f32(i32 46, float %1767, float %1761, float %1772)  ; FMad(a,b,c)
  %1774 = call float @dx.op.tertiary.f32(i32 46, float %1768, float %1762, float %1773)  ; FMad(a,b,c)
  %1775 = fsub fast float %1771, %1763
  %1776 = fsub fast float %1774, %1764
  %1777 = fsub fast float %1775, %1743
  %1778 = fadd fast float %1777, %1751
  %1779 = fsub fast float %1776, %1744
  %1780 = fadd fast float %1779, %1751
  %1781 = extractvalue %dx.types.CBufRet.f32 %1742, 3
  %1782 = fmul fast float %1778, %1781
  %1783 = fmul fast float %1780, %1781
  %1784 = call float @dx.op.unary.f32(i32 7, float %1782)  ; Saturate(value)
  %1785 = call float @dx.op.unary.f32(i32 7, float %1783)  ; Saturate(value)
  %1786 = fsub fast float 1.000000e+00, %1784
  %1787 = fsub fast float 1.000000e+00, %1785
  %1788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %65, float %1786, float %1787, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1789 = extractvalue %dx.types.ResRet.f32 %1788, 0
  %1790 = fcmp fast ugt float %1789, 0.000000e+00
  br i1 %1790, label %1791, label %2094

; <label>:1791                                    ; preds = %1753
  %1792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1792, 2
  %1794 = fmul fast float %1793, %1789
  %1795 = extractvalue %dx.types.CBufRet.f32 %1792, 3
  %1796 = fadd fast float %1795, %1794
  %1797 = extractvalue %dx.types.CBufRet.f32 %1758, 2
  %1798 = fadd fast float %1796, %1765
  %1799 = fmul fast float %1771, %1759
  %1800 = call float @dx.op.tertiary.f32(i32 46, float %1774, float %1762, float %1799)  ; FMad(a,b,c)
  %1801 = call float @dx.op.tertiary.f32(i32 46, float %1798, float %1797, float %1800)  ; FMad(a,b,c)
  %1802 = fsub fast float %1801, %1765
  %1803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1804 = extractvalue %dx.types.CBufRet.f32 %1803, 2
  %1805 = fsub fast float %1802, %1804
  %1806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %65, float %1786, float %1787, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1807 = extractvalue %dx.types.ResRet.f32 %1806, 0
  %1808 = extractvalue %dx.types.ResRet.f32 %1806, 1
  %1809 = extractvalue %dx.types.ResRet.f32 %1806, 2
  %1810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %65, float %1786, float %1787, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1811 = extractvalue %dx.types.ResRet.f32 %1810, 0
  %1812 = extractvalue %dx.types.ResRet.f32 %1810, 1
  %1813 = extractvalue %dx.types.ResRet.f32 %1810, 2
  %1814 = fadd fast float %1811, %1807
  %1815 = fmul fast float %1814, 0x3F847AE140000000
  %1816 = fadd fast float %1812, %1808
  %1817 = fmul fast float %1816, 0x3F847AE140000000
  %1818 = fadd fast float %1813, %1809
  %1819 = fmul fast float %1818, 0x3F847AE140000000
  br label %2094

; <label>:1820                                    ; preds = %1662
  %1821 = and i32 %215, 1
  %1822 = icmp eq i32 %1821, 0
  br i1 %1822, label %2094, label %1823

; <label>:1823                                    ; preds = %1820
  %1824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1825 = extractvalue %dx.types.CBufRet.f32 %1824, 0
  %1826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1827 = extractvalue %dx.types.CBufRet.f32 %1826, 0
  %1828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1829 = extractvalue %dx.types.CBufRet.f32 %1828, 0
  %1830 = extractvalue %dx.types.CBufRet.f32 %1824, 1
  %1831 = extractvalue %dx.types.CBufRet.f32 %1826, 1
  %1832 = extractvalue %dx.types.CBufRet.f32 %1828, 1
  %1833 = extractvalue %dx.types.CBufRet.f32 %1824, 3
  %1834 = extractvalue %dx.types.CBufRet.f32 %1826, 3
  %1835 = extractvalue %dx.types.CBufRet.f32 %1828, 3
  %1836 = fadd fast float %1833, %1739
  %1837 = fadd fast float %1834, %1740
  %1838 = fadd fast float %1835, %1741
  %1839 = fmul fast float %1836, %1825
  %1840 = call float @dx.op.tertiary.f32(i32 46, float %1837, float %1827, float %1839)  ; FMad(a,b,c)
  %1841 = call float @dx.op.tertiary.f32(i32 46, float %1838, float %1829, float %1840)  ; FMad(a,b,c)
  %1842 = fmul fast float %1836, %1830
  %1843 = call float @dx.op.tertiary.f32(i32 46, float %1837, float %1831, float %1842)  ; FMad(a,b,c)
  %1844 = call float @dx.op.tertiary.f32(i32 46, float %1838, float %1832, float %1843)  ; FMad(a,b,c)
  %1845 = fsub fast float %1841, %1833
  %1846 = fsub fast float %1844, %1834
  %1847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.f32 %1847, 0
  %1849 = extractvalue %dx.types.CBufRet.f32 %1847, 1
  %1850 = extractvalue %dx.types.CBufRet.f32 %1847, 2
  %1851 = extractvalue %dx.types.CBufRet.f32 %1847, 3
  %1852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1853 = extractvalue %dx.types.CBufRet.f32 %1852, 3
  %1854 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.i32 %1854, 0
  %1856 = extractvalue %dx.types.CBufRet.i32 %1854, 1
  %1857 = udiv i32 %1856, %1855
  %1858 = fsub fast float %1845, %1848
  %1859 = fsub fast float %1846, %1849
  %1860 = call float @dx.op.binary.f32(i32 35, float %1858, float 0.000000e+00)  ; FMax(a,b)
  %1861 = call float @dx.op.binary.f32(i32 35, float %1859, float 0.000000e+00)  ; FMax(a,b)
  %1862 = call float @dx.op.binary.f32(i32 36, float %1860, float %1850)  ; FMin(a,b)
  %1863 = call float @dx.op.binary.f32(i32 36, float %1861, float %1851)  ; FMin(a,b)
  %1864 = add i32 %1855, -1
  %1865 = add i32 %1857, -1
  %1866 = fmul fast float %1862, %1853
  %1867 = fmul fast float %1863, %1853
  %1868 = fptoui float %1866 to i32
  %1869 = fptoui float %1867 to i32
  %1870 = call i32 @dx.op.binary.i32(i32 40, i32 %1868, i32 %1864)  ; UMin(a,b)
  %1871 = call i32 @dx.op.binary.i32(i32 40, i32 %1869, i32 %1865)  ; UMin(a,b)
  %1872 = mul i32 %1871, %1855
  %1873 = add i32 %1872, %1870
  %1874 = shl i32 %1873, 2
  %1875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1876 = extractvalue %dx.types.ResRet.i32 %1875, 0
  %1877 = icmp eq i32 %1876, -1
  br i1 %1877, label %2094, label %1878

; <label>:1878                                    ; preds = %1823
  %1879 = mul i32 %1876, 148
  %1880 = add i32 %1879, 4
  %1881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %1882 = extractvalue %dx.types.ResRet.f32 %1881, 0
  %1883 = add i32 %1879, 8
  %1884 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.f32 %1884, 0
  %1886 = add i32 %1879, 36
  %1887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1888 = extractvalue %dx.types.ResRet.f32 %1887, 0
  %1889 = add i32 %1879, 60
  %1890 = add i32 %1879, 92
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = add i32 %1879, 116
  %1894 = fsub fast float %1845, %1882
  %1895 = fsub fast float %1846, %1885
  %1896 = fmul fast float %1853, %1894
  %1897 = fmul fast float %1853, %1895
  %1898 = call float @dx.op.unary.f32(i32 7, float %1896)  ; Saturate(value)
  %1899 = call float @dx.op.unary.f32(i32 7, float %1897)  ; Saturate(value)
  %1900 = fsub fast float 1.000000e+00, %1899
  %1901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1902 = extractvalue %dx.types.CBufRet.f32 %1901, 2
  %1903 = call float @dx.op.unary.f32(i32 83, float %1898)  ; DerivCoarseX(value)
  %1904 = call float @dx.op.unary.f32(i32 83, float %1900)  ; DerivCoarseX(value)
  %1905 = call float @dx.op.unary.f32(i32 84, float %1898)  ; DerivCoarseY(value)
  %1906 = call float @dx.op.unary.f32(i32 84, float %1900)  ; DerivCoarseY(value)
  %1907 = fmul fast float %1903, %1902
  %1908 = fmul fast float %1904, %1902
  %1909 = fmul fast float %1905, %1902
  %1910 = fmul fast float %1906, %1902
  %1911 = call float @dx.op.dot2.f32(i32 54, float %1909, float %1910, float %1909, float %1910)  ; Dot2(ax,ay,bx,by)
  %1912 = call float @dx.op.dot2.f32(i32 54, float %1907, float %1908, float %1907, float %1908)  ; Dot2(ax,ay,bx,by)
  %1913 = call float @dx.op.binary.f32(i32 35, float %1912, float %1911)  ; FMax(a,b)
  %1914 = call float @dx.op.unary.f32(i32 23, float %1913)  ; Log(value)
  %1915 = fmul fast float %1914, 5.000000e-01
  %1916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1917 = extractvalue %dx.types.CBufRet.f32 %1916, 1
  %1918 = fadd fast float %1917, %1915
  %1919 = call float @dx.op.binary.f32(i32 35, float %1918, float 0.000000e+00)  ; FMax(a,b)
  %1920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1921 = extractvalue %dx.types.CBufRet.f32 %1920, 3
  %1922 = fadd fast float %1921, %1919
  %1923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1924 = extractvalue %dx.types.CBufRet.f32 %1923, 3
  %1925 = fadd fast float %1922, %1924
  %1926 = add i32 %1892, 0
  %1927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1926, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1928 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1927, i32 0)  ; GetDimensions(handle,mipLevel)
  %1929 = extractvalue %dx.types.Dimensions %1928, 0
  %1930 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1929)  ; FirstbitLo(value)
  %1931 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1932 = extractvalue %dx.types.CBufRet.i32 %1931, 1
  %1933 = sub nsw i32 %1932, %1930
  %1934 = sitofp i32 %1933 to float
  %1935 = fsub fast float %1925, %1934
  %1936 = call float @dx.op.binary.f32(i32 35, float %1935, float 0.000000e+00)  ; FMax(a,b)
  %1937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1927, %dx.types.Handle %63, float %1898, float %1900, float %1888, float undef, i32 0, i32 0, i32 undef, float %1936)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1938 = extractvalue %dx.types.ResRet.f32 %1937, 0
  %1939 = fcmp ule float %1938, 0x3FE0101020000000
  %1940 = extractvalue %dx.types.CBufRet.i32 %1931, 0
  %1941 = and i32 %1940, 128
  %1942 = icmp ne i32 %1941, 0
  %1943 = and i1 %1939, %1942
  br i1 %1943, label %2094, label %1944

; <label>:1944                                    ; preds = %1878
  %1945 = add i32 %1879, 20
  %1946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1945, i32 undef)  ; BufferLoad(srv,index,wot)
  %1947 = extractvalue %dx.types.ResRet.f32 %1946, 0
  %1948 = add i32 %1879, 24
  %1949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1948, i32 undef)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.f32 %1949, 0
  %1951 = add i32 %1879, 40
  %1952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.f32 %1952, 0
  %1954 = add i32 %1879, 96
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1958 = extractvalue %dx.types.CBufRet.f32 %1957, 2
  %1959 = fmul fast float %1958, %1898
  %1960 = fmul fast float %1958, %1900
  %1961 = extractvalue %dx.types.CBufRet.f32 %1957, 3
  %1962 = fadd fast float %1959, %1961
  %1963 = fadd fast float %1960, %1961
  %1964 = add i32 %1956, 0
  %1965 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1964, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1966 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1965, i32 0)  ; GetDimensions(handle,mipLevel)
  %1967 = extractvalue %dx.types.Dimensions %1966, 0
  %1968 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1967)  ; FirstbitLo(value)
  %1969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1970 = extractvalue %dx.types.CBufRet.i32 %1969, 1
  %1971 = sub nsw i32 %1970, %1968
  %1972 = sitofp i32 %1971 to float
  %1973 = fsub fast float %1922, %1972
  %1974 = call float @dx.op.binary.f32(i32 35, float %1973, float 0.000000e+00)  ; FMax(a,b)
  %1975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1965, %dx.types.Handle %63, float %1962, float %1963, float %1953, float undef, i32 0, i32 0, i32 undef, float %1974)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1977 = fmul fast float %1976, %1947
  %1978 = fadd fast float %1977, %1950
  %1979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1980 = extractvalue %dx.types.CBufRet.f32 %1979, 0
  %1981 = extractvalue %dx.types.CBufRet.f32 %1979, 1
  %1982 = extractvalue %dx.types.CBufRet.f32 %1979, 2
  %1983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1984 = extractvalue %dx.types.CBufRet.f32 %1983, 3
  %1985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1986 = extractvalue %dx.types.CBufRet.f32 %1985, 3
  %1987 = extractvalue %dx.types.CBufRet.f32 %1979, 3
  %1988 = fadd fast float %1984, %1845
  %1989 = fadd fast float %1986, %1846
  %1990 = fadd fast float %1978, %1987
  %1991 = fmul fast float %1988, %1980
  %1992 = call float @dx.op.tertiary.f32(i32 46, float %1989, float %1981, float %1991)  ; FMad(a,b,c)
  %1993 = call float @dx.op.tertiary.f32(i32 46, float %1990, float %1982, float %1992)  ; FMad(a,b,c)
  %1994 = fsub fast float %1993, %1987
  %1995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1996 = extractvalue %dx.types.CBufRet.f32 %1995, 2
  %1997 = fsub fast float %1994, %1996
  %1998 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1999 = extractvalue %dx.types.CBufRet.i32 %1998, 0
  %2000 = call i32 @dx.op.binary.i32(i32 40, i32 %1876, i32 %1999)  ; UMin(a,b)
  %2001 = mul i32 %2000, 36
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = add i32 %2001, 4
  %2005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2006 = extractvalue %dx.types.CBufRet.f32 %2005, 0
  %2007 = fmul fast float %2006, %1898
  %2008 = fmul fast float %2006, %1900
  %2009 = extractvalue %dx.types.CBufRet.f32 %2005, 1
  %2010 = fadd fast float %2007, %2009
  %2011 = fadd fast float %2008, %2009
  %2012 = icmp eq i32 %2003, 0
  br i1 %2012, label %2081, label %2013

; <label>:2013                                    ; preds = %1944
  br label %2014

; <label>:2014                                    ; preds = %2071, %2013
  %2015 = phi float [ %2072, %2071 ], [ 0.000000e+00, %2013 ]
  %2016 = phi float [ %2073, %2071 ], [ 0.000000e+00, %2013 ]
  %2017 = phi float [ %2074, %2071 ], [ 0.000000e+00, %2013 ]
  %2018 = phi float [ %2075, %2071 ], [ 0.000000e+00, %2013 ]
  %2019 = phi float [ %2076, %2071 ], [ 0.000000e+00, %2013 ]
  %2020 = phi float [ %2077, %2071 ], [ 0.000000e+00, %2013 ]
  %2021 = phi i32 [ %2078, %2071 ], [ 0, %2013 ]
  %2022 = shl i32 %2021, 2
  %2023 = add i32 %1889, %2022
  %2024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2023, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.f32 %2024, 0
  %2026 = add i32 %1893, %2022
  %2027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2026, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.i32 %2027, 0
  %2029 = add i32 %2028, 0
  %2030 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2029, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2031 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2030, i32 0)  ; GetDimensions(handle,mipLevel)
  %2032 = extractvalue %dx.types.Dimensions %2031, 0
  %2033 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2032)  ; FirstbitLo(value)
  %2034 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2035 = extractvalue %dx.types.CBufRet.i32 %2034, 1
  %2036 = sub nsw i32 %2035, %2033
  %2037 = sitofp i32 %2036 to float
  %2038 = fsub fast float %1922, %2037
  %2039 = call float @dx.op.binary.f32(i32 35, float %2038, float 0.000000e+00)  ; FMax(a,b)
  %2040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2030, %dx.types.Handle %63, float %2010, float %2011, float %2025, float undef, i32 0, i32 0, i32 undef, float %2039)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2041 = extractvalue %dx.types.ResRet.f32 %2040, 0
  %2042 = fcmp fast ogt float %2041, 0.000000e+00
  br i1 %2042, label %2043, label %2071

; <label>:2043                                    ; preds = %2014
  %2044 = add i32 %2004, %2022
  %2045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.i32 %2045, 0
  %2047 = and i32 %2046, 32767
  %2048 = mul nuw nsw i32 %2047, 928
  %2049 = add nuw nsw i32 %2048, 48
  %2050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2049, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.f32 %2050, 0
  %2052 = extractvalue %dx.types.ResRet.f32 %2050, 1
  %2053 = extractvalue %dx.types.ResRet.f32 %2050, 2
  %2054 = add nuw nsw i32 %2048, 60
  %2055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.f32 %2055, 0
  %2057 = extractvalue %dx.types.ResRet.f32 %2055, 1
  %2058 = extractvalue %dx.types.ResRet.f32 %2055, 2
  %2059 = fmul fast float %2051, %2041
  %2060 = fmul fast float %2052, %2041
  %2061 = fmul fast float %2053, %2041
  %2062 = fadd fast float %2059, %2015
  %2063 = fadd fast float %2060, %2016
  %2064 = fadd fast float %2061, %2017
  %2065 = fmul fast float %2056, %2041
  %2066 = fmul fast float %2057, %2041
  %2067 = fmul fast float %2058, %2041
  %2068 = fadd fast float %2065, %2018
  %2069 = fadd fast float %2066, %2019
  %2070 = fadd fast float %2067, %2020
  br label %2071

; <label>:2071                                    ; preds = %2043, %2014
  %2072 = phi float [ %2062, %2043 ], [ %2015, %2014 ]
  %2073 = phi float [ %2063, %2043 ], [ %2016, %2014 ]
  %2074 = phi float [ %2064, %2043 ], [ %2017, %2014 ]
  %2075 = phi float [ %2068, %2043 ], [ %2018, %2014 ]
  %2076 = phi float [ %2069, %2043 ], [ %2019, %2014 ]
  %2077 = phi float [ %2070, %2043 ], [ %2020, %2014 ]
  %2078 = add nuw i32 %2021, 1
  %2079 = icmp eq i32 %2078, %2003
  br i1 %2079, label %2080, label %2014

; <label>:2080                                    ; preds = %2071
  br label %2081

; <label>:2081                                    ; preds = %2080, %1944
  %2082 = phi float [ 0.000000e+00, %1944 ], [ %2072, %2080 ]
  %2083 = phi float [ 0.000000e+00, %1944 ], [ %2073, %2080 ]
  %2084 = phi float [ 0.000000e+00, %1944 ], [ %2074, %2080 ]
  %2085 = phi float [ 0.000000e+00, %1944 ], [ %2075, %2080 ]
  %2086 = phi float [ 0.000000e+00, %1944 ], [ %2076, %2080 ]
  %2087 = phi float [ 0.000000e+00, %1944 ], [ %2077, %2080 ]
  %2088 = fadd fast float %2085, %2082
  %2089 = fmul fast float %2088, 0x3F847AE140000000
  %2090 = fadd fast float %2086, %2083
  %2091 = fmul fast float %2090, 0x3F847AE140000000
  %2092 = fadd fast float %2087, %2084
  %2093 = fmul fast float %2092, 0x3F847AE140000000
  br label %2094

; <label>:2094                                    ; preds = %2081, %1878, %1823, %1820, %1791, %1753
  %2095 = phi float [ %1805, %1791 ], [ -1.310720e+05, %1753 ], [ %1997, %2081 ], [ -1.310720e+05, %1823 ], [ -1.310720e+05, %1878 ], [ -1.310720e+05, %1820 ]
  %2096 = phi float [ %1815, %1791 ], [ 0.000000e+00, %1753 ], [ %2089, %2081 ], [ 0.000000e+00, %1823 ], [ 0.000000e+00, %1878 ], [ 0.000000e+00, %1820 ]
  %2097 = phi float [ %1817, %1791 ], [ 0.000000e+00, %1753 ], [ %2091, %2081 ], [ 0.000000e+00, %1823 ], [ 0.000000e+00, %1878 ], [ 0.000000e+00, %1820 ]
  %2098 = phi float [ %1819, %1791 ], [ 0.000000e+00, %1753 ], [ %2093, %2081 ], [ 0.000000e+00, %1823 ], [ 0.000000e+00, %1878 ], [ 0.000000e+00, %1820 ]
  %2099 = phi i1 [ true, %1791 ], [ false, %1753 ], [ true, %2081 ], [ false, %1823 ], [ false, %1878 ], [ false, %1820 ]
  %2100 = and i32 %215, 3
  %2101 = icmp eq i32 %2100, 1
  %2102 = select i1 %2101, float 1.000000e+00, float 0.000000e+00
  %2103 = fsub fast float %2095, %150
  %2104 = call float @dx.op.unary.f32(i32 7, float %2103)  ; Saturate(value)
  %2105 = select i1 %2099, float %2104, float 1.000000e+00
  %2106 = fmul fast float %2105, %2102
  %2107 = icmp eq i32 %2100, 3
  %2108 = select i1 %2107, float 1.000000e+00, float %2106
  %2109 = call float @dx.op.binary.f32(i32 35, float %1663, float %2108)  ; FMax(a,b)
  %2110 = call float @dx.op.unary.f32(i32 7, float %2109)  ; Saturate(value)
  %2111 = fcmp fast une float %2110, 0.000000e+00
  %2112 = call float @dx.op.dot3.f32(i32 55, float %148, float %149, float %150, float %148, float %149, float %150)  ; Dot3(ax,ay,az,bx,by,bz)
  %2113 = call float @dx.op.unary.f32(i32 25, float %2112)  ; Rsqrt(value)
  br i1 %2111, label %2121, label %2114

; <label>:2114                                    ; preds = %2094
  %2115 = fmul fast float %2113, %148
  %2116 = fmul fast float %2113, %149
  %2117 = fmul fast float %2113, %150
  %2118 = fsub fast float -0.000000e+00, %2115
  %2119 = fsub fast float -0.000000e+00, %2116
  %2120 = fsub fast float -0.000000e+00, %2117
  br label %2289

; <label>:2121                                    ; preds = %2094
  %2122 = fmul fast float %148, %2113
  %2123 = fsub fast float -0.000000e+00, %2122
  %2124 = fmul fast float %149, %2113
  %2125 = fsub fast float -0.000000e+00, %2124
  %2126 = fmul fast float %150, %2113
  %2127 = fsub fast float -0.000000e+00, %2126
  %2128 = call float @dx.op.dot3.f32(i32 55, float %2123, float %2125, float %2127, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %2129 = fmul fast float %2110, 2.500000e+00
  %2130 = call float @dx.op.unary.f32(i32 7, float %2129)  ; Saturate(value)
  %2131 = fmul fast float %2110, 0x4013FFFFE0000000
  %2132 = fadd fast float %2131, 0xBFFFFFFFE0000000
  %2133 = call float @dx.op.unary.f32(i32 7, float %2132)  ; Saturate(value)
  %2134 = fmul fast float %2110, 0x4004000020000000
  %2135 = fadd fast float %2134, 0xBFF8000040000000
  %2136 = call float @dx.op.unary.f32(i32 7, float %2135)  ; Saturate(value)
  %2137 = call float @dx.op.unary.f32(i32 7, float %2130)  ; Saturate(value)
  %2138 = fmul fast float %1696, 1.000000e+01
  %2139 = call float @dx.op.unary.f32(i32 7, float %2138)  ; Saturate(value)
  %2140 = fmul fast float %2139, 2.000000e+00
  %2141 = fsub fast float 3.000000e+00, %2140
  %2142 = fmul fast float %2139, %2139
  %2143 = fmul fast float %2142, %2141
  %2144 = fsub fast float 1.000000e+00, %2143
  %2145 = fsub fast float 0x3FE3333340000000, %1717
  %2146 = fmul fast float %2145, 0x400AAAAAA0000000
  %2147 = call float @dx.op.unary.f32(i32 7, float %2146)  ; Saturate(value)
  %2148 = fmul fast float %2144, %2147
  %2149 = fmul fast float %1732, 0x3FEA2B8620000000
  %2150 = fmul fast float %1733, 0x3FEA2B8620000000
  %2151 = fmul fast float %1734, 0x3FEA2B8620000000
  %2152 = fadd fast float %2149, 0x3FC81DFBA0000000
  %2153 = fmul fast float %2152, %1732
  %2154 = fadd fast float %2153, 0x3F910E6020000000
  %2155 = fadd fast float %2150, 0x3FC81DFBA0000000
  %2156 = fmul fast float %2155, %1733
  %2157 = fadd fast float %2156, 0x3F910E6020000000
  %2158 = fadd fast float %2151, 0x3FC81DFBA0000000
  %2159 = fmul fast float %2158, %1734
  %2160 = fadd fast float %2159, 0x3F910E6020000000
  %2161 = call float @dx.op.unary.f32(i32 7, float %2154)  ; Saturate(value)
  %2162 = call float @dx.op.unary.f32(i32 7, float %2157)  ; Saturate(value)
  %2163 = call float @dx.op.unary.f32(i32 7, float %2160)  ; Saturate(value)
  %2164 = fsub fast float %2161, %1732
  %2165 = fsub fast float %2162, %1733
  %2166 = fsub fast float %2163, %1734
  %2167 = fmul fast float %2164, %2137
  %2168 = fmul fast float %2167, %2148
  %2169 = fmul fast float %2165, %2137
  %2170 = fmul fast float %2169, %2148
  %2171 = fmul fast float %2166, %2137
  %2172 = fmul fast float %2171, %2148
  %2173 = fadd fast float %2168, %1732
  %2174 = fadd fast float %2170, %1733
  %2175 = fadd fast float %2172, %1734
  %2176 = fmul fast float %1677, %1677
  %2177 = fmul fast float %2176, %2176
  %2178 = fadd fast float %2133, 1.000000e+00
  %2179 = fsub fast float %2178, %2148
  %2180 = call float @dx.op.unary.f32(i32 7, float %2179)  ; Saturate(value)
  %2181 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2182 = call float @dx.op.unary.f32(i32 7, float %2181)  ; Saturate(value)
  %2183 = fsub fast float 1.000000e+00, %2177
  %2184 = call float @dx.op.binary.f32(i32 36, float %2180, float %2183)  ; FMin(a,b)
  %2185 = call float @dx.op.unary.f32(i32 7, float %2136)  ; Saturate(value)
  %2186 = call float @dx.op.binary.f32(i32 35, float %2184, float %2185)  ; FMax(a,b)
  %2187 = fadd fast float %2182, 0xBFE4CCCCC0000000
  %2188 = fmul fast float %2187, 0x4006DB6DA0000000
  %2189 = call float @dx.op.unary.f32(i32 7, float %2188)  ; Saturate(value)
  %2190 = fmul fast float %2189, 2.000000e+00
  %2191 = fsub fast float 3.000000e+00, %2190
  %2192 = bitcast float %1714 to i32
  %2193 = ashr i32 %2192, 1
  %2194 = add nsw i32 %2193, 532487669
  %2195 = bitcast i32 %2194 to float
  %2196 = fsub fast float 1.000000e+00, %2195
  %2197 = bitcast float %2196 to i32
  %2198 = sub nsw i32 2129859010, %2197
  %2199 = bitcast i32 %2198 to float
  %2200 = fmul fast float %2199, 2.000000e+00
  %2201 = bitcast float %1715 to i32
  %2202 = ashr i32 %2201, 1
  %2203 = add nsw i32 %2202, 532487669
  %2204 = bitcast i32 %2203 to float
  %2205 = fsub fast float 1.000000e+00, %2204
  %2206 = bitcast float %2205 to i32
  %2207 = sub nsw i32 2129859010, %2206
  %2208 = bitcast i32 %2207 to float
  %2209 = fmul fast float %2208, 2.000000e+00
  %2210 = bitcast float %1716 to i32
  %2211 = ashr i32 %2210, 1
  %2212 = add nsw i32 %2211, 532487669
  %2213 = bitcast i32 %2212 to float
  %2214 = fsub fast float 1.000000e+00, %2213
  %2215 = bitcast float %2214 to i32
  %2216 = sub nsw i32 2129859010, %2215
  %2217 = bitcast i32 %2216 to float
  %2218 = fmul fast float %2217, 2.000000e+00
  %2219 = fsub fast float 0x4002A9FBE0000000, %2200
  %2220 = fadd fast float %2200, 0x3FD54FDF00000000
  %2221 = bitcast float %2220 to i32
  %2222 = sub nsw i32 2129859010, %2221
  %2223 = bitcast i32 %2222 to float
  %2224 = fmul fast float %2223, %2219
  %2225 = fmul fast float %2224, %2224
  %2226 = fsub fast float 0x4002A9FBE0000000, %2209
  %2227 = fadd fast float %2209, 0x3FD54FDF00000000
  %2228 = bitcast float %2227 to i32
  %2229 = sub nsw i32 2129859010, %2228
  %2230 = bitcast i32 %2229 to float
  %2231 = fmul fast float %2230, %2226
  %2232 = fmul fast float %2231, %2231
  %2233 = fsub fast float 0x4002A9FBE0000000, %2218
  %2234 = fadd fast float %2218, 0x3FD54FDF00000000
  %2235 = bitcast float %2234 to i32
  %2236 = sub nsw i32 2129859010, %2235
  %2237 = bitcast i32 %2236 to float
  %2238 = fmul fast float %2237, %2233
  %2239 = fmul fast float %2238, %2238
  %2240 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2225)  ; FMax(a,b)
  %2241 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2232)  ; FMax(a,b)
  %2242 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2239)  ; FMax(a,b)
  %2243 = fsub fast float 1.000000e+00, %2128
  %2244 = fadd fast float %2243, %2144
  %2245 = call float @dx.op.unary.f32(i32 7, float %2244)  ; Saturate(value)
  %2246 = fsub fast float 1.000000e+00, %2108
  %2247 = fmul fast float %2186, %2246
  %2248 = fmul fast float %2189, %2189
  %2249 = fmul fast float %2248, %2247
  %2250 = fmul fast float %2249, %2191
  %2251 = fmul fast float %2246, 0xBFE99999A0000000
  %2252 = fmul fast float %2251, %2137
  %2253 = fmul fast float %2252, %2148
  %2254 = fadd fast float %2253, 1.000000e+00
  %2255 = fadd fast float %1717, -1.000000e+00
  %2256 = fmul fast float %2254, %2255
  %2257 = fadd fast float %2256, 1.000000e+00
  %2258 = fsub fast float %2240, %1714
  %2259 = fsub fast float %2241, %1715
  %2260 = fsub fast float %2242, %1716
  %2261 = fmul fast float %2250, %2258
  %2262 = fmul fast float %2250, %2259
  %2263 = fmul fast float %2250, %2260
  %2264 = fadd fast float %2261, %1714
  %2265 = fadd fast float %2262, %1715
  %2266 = fadd fast float %2263, %1716
  %2267 = fsub fast float %77, %1693
  %2268 = fsub fast float %78, %1694
  %2269 = fsub fast float %79, %1695
  %2270 = fmul fast float %2250, %2267
  %2271 = fmul fast float %2250, %2268
  %2272 = fmul fast float %2250, %2269
  %2273 = fadd fast float %2270, %1693
  %2274 = fadd fast float %2271, %1694
  %2275 = fadd fast float %2272, %1695
  %2276 = fmul fast float %2250, %2245
  %2277 = call float @dx.op.unary.f32(i32 7, float %2257)  ; Saturate(value)
  %2278 = fsub fast float 1.000000e+00, %2277
  %2279 = fmul fast float %2276, %2278
  %2280 = fadd fast float %2279, %2277
  %2281 = fsub fast float 1.000000e+00, %1677
  %2282 = fmul fast float %2250, %2281
  %2283 = fadd fast float %2282, %1677
  %2284 = call float @dx.op.dot3.f32(i32 55, float %2273, float %2274, float %2275, float %2273, float %2274, float %2275)  ; Dot3(ax,ay,az,bx,by,bz)
  %2285 = call float @dx.op.unary.f32(i32 25, float %2284)  ; Rsqrt(value)
  %2286 = fmul fast float %2273, %2285
  %2287 = fmul fast float %2274, %2285
  %2288 = fmul fast float %2275, %2285
  br label %2289

; <label>:2289                                    ; preds = %2121, %2114
  %2290 = phi float [ %2120, %2114 ], [ %2127, %2121 ]
  %2291 = phi float [ %2119, %2114 ], [ %2125, %2121 ]
  %2292 = phi float [ %2118, %2114 ], [ %2123, %2121 ]
  %2293 = phi float [ %2117, %2114 ], [ %2126, %2121 ]
  %2294 = phi float [ %2116, %2114 ], [ %2124, %2121 ]
  %2295 = phi float [ %2115, %2114 ], [ %2122, %2121 ]
  %2296 = phi float [ %1732, %2114 ], [ %2173, %2121 ]
  %2297 = phi float [ %1733, %2114 ], [ %2174, %2121 ]
  %2298 = phi float [ %1734, %2114 ], [ %2175, %2121 ]
  %2299 = phi float [ %1693, %2114 ], [ %2286, %2121 ]
  %2300 = phi float [ %1694, %2114 ], [ %2287, %2121 ]
  %2301 = phi float [ %1695, %2114 ], [ %2288, %2121 ]
  %2302 = phi float [ %1714, %2114 ], [ %2264, %2121 ]
  %2303 = phi float [ %1715, %2114 ], [ %2265, %2121 ]
  %2304 = phi float [ %1716, %2114 ], [ %2266, %2121 ]
  %2305 = phi float [ %1717, %2114 ], [ %2280, %2121 ]
  %2306 = phi float [ %1677, %2114 ], [ %2283, %2121 ]
  %2307 = fsub fast float -0.000000e+00, %150
  %2308 = select i1 %239, float 0.000000e+00, float %2304
  %2309 = call float @dx.op.dot3.f32(i32 55, float %2299, float %2300, float %2301, float %2292, float %2291, float %2290)  ; Dot3(ax,ay,az,bx,by,bz)
  %2310 = call float @dx.op.unary.f32(i32 7, float %2309)  ; Saturate(value)
  %2311 = call float @dx.op.dot3.f32(i32 55, float %2295, float %2294, float %2293, float %2299, float %2300, float %2301)  ; Dot3(ax,ay,az,bx,by,bz)
  %2312 = fmul fast float %2311, 2.000000e+00
  %2313 = fmul fast float %2312, %2299
  %2314 = fmul fast float %2312, %2300
  %2315 = fmul fast float %2312, %2301
  %2316 = fsub fast float %2295, %2313
  %2317 = fsub fast float %2294, %2314
  %2318 = fsub fast float %2293, %2315
  %2319 = call float @dx.op.binary.f32(i32 36, float %2306, float 1.000000e+00)  ; FMin(a,b)
  %2320 = fsub fast float 1.000000e+00, %2319
  %2321 = bitcast float %2320 to i32
  %2322 = ashr i32 %2321, 1
  %2323 = add nsw i32 %2322, 532487669
  %2324 = bitcast i32 %2323 to float
  %2325 = fsub fast float 1.000000e+00, %2305
  %2326 = call float @dx.op.binary.f32(i32 35, float %2325, float 0x3F847AE140000000)  ; FMax(a,b)
  %2327 = fmul fast float %2326, %2326
  %2328 = fmul fast float %2327, %2327
  %2329 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %65, float %2324, float %2328, float %2329, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2331 = extractvalue %dx.types.ResRet.f32 %2330, 0
  %2332 = fsub fast float 1.000000e+00, %2306
  %2333 = bitcast float %2332 to i32
  %2334 = sub nsw i32 2129859010, %2333
  %2335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2336 = extractvalue %dx.types.CBufRet.f32 %2335, 0
  %2337 = extractvalue %dx.types.CBufRet.f32 %2335, 1
  %2338 = fadd fast float %2336, %148
  %2339 = fadd fast float %2337, %149
  %2340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2341 = extractvalue %dx.types.CBufRet.i32 %2340, 0
  %2342 = icmp eq i32 %2341, 1
  br i1 %2342, label %2343, label %2378

; <label>:2343                                    ; preds = %2289
  %2344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2345 = extractvalue %dx.types.CBufRet.f32 %2344, 0
  %2346 = extractvalue %dx.types.CBufRet.f32 %2344, 1
  %2347 = fsub fast float %2338, %2345
  %2348 = fsub fast float %2339, %2346
  %2349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2350 = extractvalue %dx.types.CBufRet.f32 %2349, 0
  %2351 = extractvalue %dx.types.CBufRet.f32 %2349, 1
  %2352 = fmul fast float %2347, %2350
  %2353 = fmul fast float %2348, %2351
  %2354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %65, float %2352, float %2353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2355 = extractvalue %dx.types.ResRet.f32 %2354, 0
  %2356 = fcmp fast ogt float %2355, 0.000000e+00
  %2357 = extractvalue %dx.types.CBufRet.i32 %2340, 3
  %2358 = icmp ne i32 %2357, 0
  %2359 = and i1 %2356, %2358
  br i1 %2359, label %2360, label %2378, !dx.controlflow.hints !106

; <label>:2360                                    ; preds = %2343
  %2361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2362 = extractvalue %dx.types.CBufRet.f32 %2361, 0
  %2363 = extractvalue %dx.types.CBufRet.f32 %2361, 1
  %2364 = fsub fast float %2338, %2362
  %2365 = fsub fast float %2339, %2363
  %2366 = fmul fast float %2364, %2364
  %2367 = fmul fast float %2365, %2365
  %2368 = fadd fast float %2366, %2367
  %2369 = uitofp i32 %2357 to float
  %2370 = fmul fast float %2369, %2369
  %2371 = fcmp fast ogt float %2368, %2370
  br i1 %2371, label %2378, label %2372

; <label>:2372                                    ; preds = %2360
  %2373 = call float @dx.op.unary.f32(i32 24, float %2368)  ; Sqrt(value)
  %2374 = fsub fast float %2369, %2373
  %2375 = fmul fast float %2374, 0x3F75555560000000
  %2376 = call float @dx.op.unary.f32(i32 7, float %2375)  ; Saturate(value)
  %2377 = call float @dx.op.binary.f32(i32 36, float %2376, float %2355)  ; FMin(a,b)
  br label %2378

; <label>:2378                                    ; preds = %2372, %2360, %2343, %2289
  %2379 = phi float [ 1.000000e+00, %2289 ], [ %2377, %2372 ], [ %2355, %2343 ], [ 0.000000e+00, %2360 ]
  %2380 = fcmp fast ogt float %2379, 0.000000e+00
  br i1 %2380, label %2381, label %2480, !dx.controlflow.hints !107

; <label>:2381                                    ; preds = %2378
  %2382 = fadd fast float %179, 5.000000e-01
  %2383 = call float @dx.op.unary.f32(i32 27, float %2382)  ; Round_ni(value)
  %2384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %65, float %177, float %178, float %2383, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2385 = extractvalue %dx.types.ResRet.f32 %2384, 0
  %2386 = extractvalue %dx.types.ResRet.f32 %2384, 1
  %2387 = extractvalue %dx.types.ResRet.f32 %2384, 2
  %2388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2389 = extractvalue %dx.types.CBufRet.f32 %2388, 3
  %2390 = fmul fast float %2389, %2385
  %2391 = fmul fast float %2389, %2386
  %2392 = fmul fast float %2389, %2387
  %2393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %65, float %177, float %178, float %2383, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2394 = extractvalue %dx.types.ResRet.f32 %2393, 0
  %2395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %65, float %177, float %178, float %2383, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2396 = extractvalue %dx.types.ResRet.f32 %2395, 0
  %2397 = extractvalue %dx.types.ResRet.f32 %2395, 1
  %2398 = fmul fast float %2396, 2.000000e+00
  %2399 = fmul fast float %2397, 2.000000e+00
  %2400 = fadd fast float %2398, -1.000000e+00
  %2401 = fadd fast float %2399, -1.000000e+00
  %2402 = fadd fast float %2400, %2401
  %2403 = fmul fast float %2402, 5.000000e-01
  %2404 = fsub fast float %2400, %2401
  %2405 = fmul fast float %2404, 5.000000e-01
  %2406 = call float @dx.op.unary.f32(i32 6, float %2403)  ; FAbs(value)
  %2407 = fsub fast float 1.000000e+00, %2406
  %2408 = call float @dx.op.unary.f32(i32 6, float %2405)  ; FAbs(value)
  %2409 = fsub fast float %2407, %2408
  %2410 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2409)  ; FMax(a,b)
  %2411 = call float @dx.op.dot3.f32(i32 55, float %2403, float %2405, float %2410, float %2403, float %2405, float %2410)  ; Dot3(ax,ay,az,bx,by,bz)
  %2412 = bitcast float %2411 to i32
  %2413 = ashr i32 %2412, 1
  %2414 = sub nsw i32 1597250115, %2413
  %2415 = bitcast i32 %2414 to float
  %2416 = fmul fast float %2415, %2403
  %2417 = fmul fast float %2415, %2405
  %2418 = fmul fast float %2415, %2410
  %2419 = fsub fast float 1.000000e+00, %2394
  %2420 = fdiv fast float %2419, %2418
  %2421 = fmul fast float %2418, %77
  %2422 = fmul fast float %2418, %78
  %2423 = fmul fast float %2418, %79
  %2424 = fmul fast float %2416, %73
  %2425 = fmul fast float %2416, %74
  %2426 = fmul fast float %2416, %75
  %2427 = fadd fast float %2421, %2424
  %2428 = fadd fast float %2422, %2425
  %2429 = fadd fast float %2423, %2426
  %2430 = fmul fast float %2417, %112
  %2431 = fmul fast float %2417, %113
  %2432 = fmul fast float %2417, %114
  %2433 = fadd fast float %2427, %2430
  %2434 = fadd fast float %2428, %2431
  %2435 = fadd fast float %2429, %2432
  %2436 = call float @dx.op.dot3.f32(i32 55, float %2433, float %2434, float %2435, float %2433, float %2434, float %2435)  ; Dot3(ax,ay,az,bx,by,bz)
  %2437 = call float @dx.op.unary.f32(i32 25, float %2436)  ; Rsqrt(value)
  %2438 = fmul fast float %2433, %2437
  %2439 = fmul fast float %2434, %2437
  %2440 = fmul fast float %2435, %2437
  %2441 = call float @dx.op.dot3.f32(i32 55, float %2299, float %2300, float %2301, float %2299, float %2300, float %2301)  ; Dot3(ax,ay,az,bx,by,bz)
  %2442 = call float @dx.op.unary.f32(i32 7, float %2441)  ; Saturate(value)
  %2443 = fmul fast float %2442, 5.000000e-01
  %2444 = fadd fast float %2443, 5.000000e-01
  %2445 = fmul fast float %2444, %2394
  %2446 = call float @dx.op.dot3.f32(i32 55, float %2299, float %2300, float %2301, float %2438, float %2439, float %2440)  ; Dot3(ax,ay,az,bx,by,bz)
  %2447 = call float @dx.op.unary.f32(i32 7, float %2446)  ; Saturate(value)
  %2448 = fmul fast float %2447, %2420
  %2449 = fadd fast float %2445, %2448
  %2450 = fsub fast float 5.000000e-01, %2443
  %2451 = fmul fast float %2450, %2296
  %2452 = fmul fast float %2450, %2297
  %2453 = fmul fast float %2450, %2298
  %2454 = fadd fast float %2449, %2451
  %2455 = fmul fast float %2454, %2390
  %2456 = fadd fast float %2449, %2452
  %2457 = fmul fast float %2456, %2391
  %2458 = fadd fast float %2449, %2453
  %2459 = fmul fast float %2458, %2392
  %2460 = call float @dx.op.dot3.f32(i32 55, float %2316, float %2317, float %2318, float %2299, float %2300, float %2301)  ; Dot3(ax,ay,az,bx,by,bz)
  %2461 = call float @dx.op.unary.f32(i32 7, float %2460)  ; Saturate(value)
  %2462 = fmul fast float %2461, 5.000000e-01
  %2463 = fadd fast float %2462, 5.000000e-01
  %2464 = fmul fast float %2463, %2394
  %2465 = call float @dx.op.dot3.f32(i32 55, float %2316, float %2317, float %2318, float %2438, float %2439, float %2440)  ; Dot3(ax,ay,az,bx,by,bz)
  %2466 = call float @dx.op.unary.f32(i32 7, float %2465)  ; Saturate(value)
  %2467 = fmul fast float %2466, %2420
  %2468 = fadd fast float %2464, %2467
  %2469 = fsub fast float 5.000000e-01, %2462
  %2470 = fmul fast float %2469, %2296
  %2471 = fmul fast float %2469, %2297
  %2472 = fmul fast float %2469, %2298
  %2473 = fadd fast float %2468, %2470
  %2474 = fmul fast float %2473, %2390
  %2475 = fadd fast float %2468, %2471
  %2476 = fmul fast float %2475, %2391
  %2477 = fadd fast float %2468, %2472
  %2478 = fmul fast float %2477, %2392
  %2479 = call float @dx.op.dot3.f32(i32 55, float %2390, float %2391, float %2392, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2480

; <label>:2480                                    ; preds = %2381, %2378
  %2481 = phi float [ %2479, %2381 ], [ 0.000000e+00, %2378 ]
  %2482 = phi float [ %2474, %2381 ], [ 0.000000e+00, %2378 ]
  %2483 = phi float [ %2476, %2381 ], [ 0.000000e+00, %2378 ]
  %2484 = phi float [ %2478, %2381 ], [ 0.000000e+00, %2378 ]
  %2485 = phi float [ %2455, %2381 ], [ 0.000000e+00, %2378 ]
  %2486 = phi float [ %2457, %2381 ], [ 0.000000e+00, %2378 ]
  %2487 = phi float [ %2459, %2381 ], [ 0.000000e+00, %2378 ]
  %2488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2489 = extractvalue %dx.types.CBufRet.f32 %2488, 0
  %2490 = fcmp fast ogt float %2489, 0.000000e+00
  %2491 = and i1 %2380, %2490
  br i1 %2491, label %2492, label %2696, !dx.controlflow.hints !108

; <label>:2492                                    ; preds = %2480
  %2493 = extractvalue %dx.types.CBufRet.f32 %2335, 2
  %2494 = fadd fast float %2493, %150
  %2495 = fmul fast float %2299, 3.200000e+01
  %2496 = fmul fast float %2300, 3.200000e+01
  %2497 = fadd fast float %2338, %2495
  %2498 = fadd fast float %2339, %2496
  %2499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2500 = extractvalue %dx.types.CBufRet.f32 %2499, 0
  %2501 = extractvalue %dx.types.CBufRet.f32 %2499, 1
  %2502 = fsub fast float %2497, %2500
  %2503 = fsub fast float %2498, %2501
  %2504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2505 = extractvalue %dx.types.CBufRet.f32 %2504, 0
  %2506 = extractvalue %dx.types.CBufRet.f32 %2504, 1
  %2507 = fmul fast float %2502, %2505
  %2508 = fmul fast float %2503, %2506
  %2509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2510 = extractvalue %dx.types.CBufRet.f32 %2509, 0
  %2511 = extractvalue %dx.types.CBufRet.f32 %2509, 1
  %2512 = fsub fast float %2338, %2510
  %2513 = fsub fast float %2339, %2511
  %2514 = fmul fast float %2512, %2512
  %2515 = fmul fast float %2513, %2513
  %2516 = fadd fast float %2514, %2515
  %2517 = call float @dx.op.unary.f32(i32 24, float %2516)  ; Sqrt(value)
  %2518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2519 = extractvalue %dx.types.CBufRet.f32 %2518, 0
  %2520 = extractvalue %dx.types.CBufRet.f32 %2518, 1
  %2521 = fsub fast float %2517, %2519
  %2522 = fdiv fast float %2521, %2520
  %2523 = call float @dx.op.unary.f32(i32 7, float %2522)  ; Saturate(value)
  %2524 = fmul fast float %2523, 2.000000e+00
  %2525 = fsub fast float 3.000000e+00, %2524
  %2526 = fmul fast float %2523, %2523
  %2527 = fmul fast float %2526, %2525
  %2528 = fcmp fast oge float %2507, 0.000000e+00
  %2529 = fcmp fast ole float %2507, 1.000000e+00
  %2530 = and i1 %2529, %2528
  %2531 = fcmp fast oge float %2508, 0.000000e+00
  %2532 = and i1 %2531, %2530
  %2533 = fcmp fast ole float %2508, 1.000000e+00
  %2534 = and i1 %2533, %2532
  %2535 = fcmp fast ogt float %2527, 0.000000e+00
  %2536 = and i1 %2535, %2534
  br i1 %2536, label %2537, label %2660, !dx.controlflow.hints !109

; <label>:2537                                    ; preds = %2492
  %2538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2539 = extractvalue %dx.types.CBufRet.f32 %2538, 2
  %2540 = extractvalue %dx.types.CBufRet.f32 %2538, 3
  %2541 = fmul fast float %2539, %2507
  %2542 = fmul fast float %2540, %2508
  %2543 = call float @dx.op.unary.f32(i32 27, float %2541)  ; Round_ni(value)
  %2544 = call float @dx.op.unary.f32(i32 27, float %2542)  ; Round_ni(value)
  %2545 = fptosi float %2543 to i32
  %2546 = fptosi float %2544 to i32
  %2547 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %55, i32 0, i32 %2545, i32 %2546, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = lshr i32 %2548, 16
  %2550 = icmp eq i32 %2549, 65535
  br i1 %2550, label %2660, label %2551

; <label>:2551                                    ; preds = %2537
  %2552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2553 = extractvalue %dx.types.CBufRet.f32 %2552, 0
  %2554 = fmul fast float %2553, %2507
  %2555 = extractvalue %dx.types.CBufRet.f32 %2552, 1
  %2556 = fadd fast float %2554, %2555
  %2557 = extractvalue %dx.types.CBufRet.f32 %2552, 2
  %2558 = fmul fast float %2557, %2508
  %2559 = extractvalue %dx.types.CBufRet.f32 %2552, 3
  %2560 = fadd fast float %2558, %2559
  %2561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %65, float %2556, float %2560, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2562 = extractvalue %dx.types.ResRet.f32 %2561, 0
  %2563 = extractvalue %dx.types.ResRet.f32 %2561, 1
  %2564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2565 = extractvalue %dx.types.CBufRet.f32 %2564, 1
  %2566 = extractvalue %dx.types.CBufRet.f32 %2564, 0
  %2567 = fsub fast float %2565, %2566
  %2568 = fmul fast float %2567, %2562
  %2569 = fadd fast float %2568, %2566
  %2570 = extractvalue %dx.types.CBufRet.f32 %2564, 3
  %2571 = extractvalue %dx.types.CBufRet.f32 %2564, 2
  %2572 = fsub fast float %2570, %2571
  %2573 = fmul fast float %2572, %2563
  %2574 = fadd fast float %2573, %2571
  %2575 = fsub fast float %2494, %2569
  %2576 = fsub fast float %2574, %2569
  %2577 = fdiv fast float %2575, %2576
  %2578 = call float @dx.op.unary.f32(i32 7, float %2577)  ; Saturate(value)
  %2579 = extractvalue %dx.types.CBufRet.f32 %2488, 1
  %2580 = extractvalue %dx.types.CBufRet.f32 %2538, 0
  %2581 = extractvalue %dx.types.CBufRet.f32 %2538, 1
  %2582 = fmul fast float %2580, %2507
  %2583 = fmul fast float %2581, %2508
  %2584 = fmul fast float %2582, 1.250000e-01
  %2585 = fmul fast float %2583, 1.250000e-01
  %2586 = call float @dx.op.unary.f32(i32 27, float %2584)  ; Round_ni(value)
  %2587 = call float @dx.op.unary.f32(i32 27, float %2585)  ; Round_ni(value)
  %2588 = fmul fast float %2586, 8.000000e+00
  %2589 = fmul fast float %2587, 8.000000e+00
  %2590 = fsub fast float %2582, %2588
  %2591 = fsub fast float %2583, %2589
  %2592 = fadd fast float %2590, 5.000000e-01
  %2593 = fadd fast float %2591, 5.000000e-01
  %2594 = and i32 %2549, 255
  %2595 = lshr i32 %2548, 24
  %2596 = mul nuw nsw i32 %2594, 9
  %2597 = uitofp i32 %2596 to float
  %2598 = mul nuw nsw i32 %2595, 9
  %2599 = uitofp i32 %2598 to float
  %2600 = fadd fast float %2592, %2597
  %2601 = fadd fast float %2593, %2599
  %2602 = fdiv fast float %2600, %2489
  %2603 = fdiv fast float %2601, %2579
  %2604 = fmul fast float %2578, 4.375000e-01
  %2605 = fadd fast float %2604, 3.125000e-02
  %2606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %65, float %2602, float %2603, float %2605, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2607 = extractvalue %dx.types.ResRet.f32 %2606, 0
  %2608 = extractvalue %dx.types.ResRet.f32 %2606, 1
  %2609 = extractvalue %dx.types.ResRet.f32 %2606, 2
  %2610 = fadd fast float %2604, 5.312500e-01
  %2611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %65, float %2602, float %2603, float %2610, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2612 = extractvalue %dx.types.ResRet.f32 %2611, 0
  %2613 = extractvalue %dx.types.ResRet.f32 %2611, 1
  %2614 = extractvalue %dx.types.ResRet.f32 %2611, 2
  %2615 = fmul fast float %2612, 2.000000e+00
  %2616 = fmul fast float %2613, 2.000000e+00
  %2617 = fmul fast float %2614, 2.000000e+00
  %2618 = fadd fast float %2615, -1.000000e+00
  %2619 = fadd fast float %2616, -1.000000e+00
  %2620 = fadd fast float %2617, -1.000000e+00
  %2621 = fmul fast float %2618, %2618
  %2622 = fmul fast float %2619, %2619
  %2623 = fadd fast float %2621, %2622
  %2624 = fmul fast float %2620, %2620
  %2625 = fadd fast float %2623, %2624
  %2626 = call float @dx.op.unary.f32(i32 24, float %2625)  ; Sqrt(value)
  %2627 = fcmp fast ogt float %2626, 0.000000e+00
  br i1 %2627, label %2628, label %2632

; <label>:2628                                    ; preds = %2551
  %2629 = fdiv fast float %2618, %2626
  %2630 = fdiv fast float %2619, %2626
  %2631 = fdiv fast float %2620, %2626
  br label %2632

; <label>:2632                                    ; preds = %2628, %2551
  %2633 = phi float [ %2629, %2628 ], [ 0.000000e+00, %2551 ]
  %2634 = phi float [ %2630, %2628 ], [ 0.000000e+00, %2551 ]
  %2635 = phi float [ %2631, %2628 ], [ 0.000000e+00, %2551 ]
  %2636 = call float @dx.op.dot3.f32(i32 55, float %2633, float %2634, float %2635, float %2299, float %2300, float %2301)  ; Dot3(ax,ay,az,bx,by,bz)
  %2637 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2636)  ; FMax(a,b)
  %2638 = fmul fast float %2637, 0x400C5BF8A0000000
  %2639 = fmul fast float %2607, %2527
  %2640 = fmul fast float %2639, %2638
  %2641 = fmul fast float %2608, %2527
  %2642 = fmul fast float %2641, %2638
  %2643 = fmul fast float %2609, %2527
  %2644 = fmul fast float %2643, %2638
  %2645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2646 = extractvalue %dx.types.CBufRet.f32 %2645, 3
  %2647 = fmul fast float %2640, %2646
  %2648 = fmul fast float %2642, %2646
  %2649 = fmul fast float %2644, %2646
  %2650 = fcmp fast ogt float %2494, %2574
  br i1 %2650, label %2651, label %2660

; <label>:2651                                    ; preds = %2632
  %2652 = fmul fast float %2576, 0x3FC24924A0000000
  %2653 = fsub fast float %2494, %2574
  %2654 = fdiv fast float %2653, %2652
  %2655 = call float @dx.op.unary.f32(i32 7, float %2654)  ; Saturate(value)
  %2656 = fsub fast float 1.000000e+00, %2655
  %2657 = fmul fast float %2656, %2647
  %2658 = fmul fast float %2656, %2648
  %2659 = fmul fast float %2656, %2649
  br label %2660

; <label>:2660                                    ; preds = %2651, %2632, %2537, %2492
  %2661 = phi float [ %2659, %2651 ], [ %2649, %2632 ], [ 0.000000e+00, %2537 ], [ 0.000000e+00, %2492 ]
  %2662 = phi float [ %2658, %2651 ], [ %2648, %2632 ], [ 0.000000e+00, %2537 ], [ 0.000000e+00, %2492 ]
  %2663 = phi float [ %2657, %2651 ], [ %2647, %2632 ], [ 0.000000e+00, %2537 ], [ 0.000000e+00, %2492 ]
  %2664 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2663)  ; FMax(a,b)
  %2665 = fmul fast float %2664, 0x3FD20DD760000000
  %2666 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2316, float %2317, float %2318)  ; Dot3(ax,ay,az,bx,by,bz)
  %2667 = fmul fast float %2666, 0x3FDF454380000000
  %2668 = fmul fast float %2666, %2666
  %2669 = fmul fast float %2668, 0x3FEE471020000000
  %2670 = fadd fast float %2669, 0xBFD42F6020000000
  %2671 = call float @dx.op.dot3.f32(i32 55, float %2664, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2667, float %2670)  ; Dot3(ax,ay,az,bx,by,bz)
  %2672 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2662)  ; FMax(a,b)
  %2673 = fmul fast float %2672, 0x3FD20DD760000000
  %2674 = call float @dx.op.dot3.f32(i32 55, float %2672, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2667, float %2670)  ; Dot3(ax,ay,az,bx,by,bz)
  %2675 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2661)  ; FMax(a,b)
  %2676 = fmul fast float %2675, 0x3FD20DD760000000
  %2677 = call float @dx.op.dot3.f32(i32 55, float %2675, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2667, float %2670)  ; Dot3(ax,ay,az,bx,by,bz)
  %2678 = call float @dx.op.binary.f32(i32 35, float %2665, float 0.000000e+00)  ; FMax(a,b)
  %2679 = call float @dx.op.binary.f32(i32 35, float %2673, float 0.000000e+00)  ; FMax(a,b)
  %2680 = call float @dx.op.binary.f32(i32 35, float %2676, float 0.000000e+00)  ; FMax(a,b)
  %2681 = call float @dx.op.binary.f32(i32 35, float %2671, float 0.000000e+00)  ; FMax(a,b)
  %2682 = call float @dx.op.binary.f32(i32 35, float %2674, float 0.000000e+00)  ; FMax(a,b)
  %2683 = call float @dx.op.binary.f32(i32 35, float %2677, float 0.000000e+00)  ; FMax(a,b)
  %2684 = fmul fast float %2678, %2379
  %2685 = fmul fast float %2679, %2379
  %2686 = fmul fast float %2680, %2379
  %2687 = fadd fast float %2684, %2485
  %2688 = fadd fast float %2685, %2486
  %2689 = fadd fast float %2686, %2487
  %2690 = fmul fast float %2681, %2379
  %2691 = fmul fast float %2682, %2379
  %2692 = fmul fast float %2683, %2379
  %2693 = fadd fast float %2690, %2482
  %2694 = fadd fast float %2691, %2483
  %2695 = fadd fast float %2692, %2484
  br label %2696

; <label>:2696                                    ; preds = %2660, %2480
  %2697 = phi float [ %2693, %2660 ], [ %2482, %2480 ]
  %2698 = phi float [ %2694, %2660 ], [ %2483, %2480 ]
  %2699 = phi float [ %2695, %2660 ], [ %2484, %2480 ]
  %2700 = phi float [ %2687, %2660 ], [ %2485, %2480 ]
  %2701 = phi float [ %2688, %2660 ], [ %2486, %2480 ]
  %2702 = phi float [ %2689, %2660 ], [ %2487, %2480 ]
  %2703 = fcmp fast olt float %2379, 1.000000e+00
  br i1 %2703, label %2704, label %3527, !dx.controlflow.hints !110

; <label>:2704                                    ; preds = %2696
  %2705 = extractvalue %dx.types.CBufRet.f32 %2335, 2
  %2706 = fadd fast float %2705, %150
  %2707 = fmul fast float %2299, 3.200000e+01
  %2708 = fmul fast float %2300, 3.200000e+01
  %2709 = fadd fast float %2338, %2707
  %2710 = fadd fast float %2339, %2708
  %2711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2712 = extractvalue %dx.types.CBufRet.f32 %2711, 0
  %2713 = extractvalue %dx.types.CBufRet.f32 %2711, 1
  %2714 = fsub fast float %2709, %2712
  %2715 = fsub fast float %2710, %2713
  %2716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2717 = extractvalue %dx.types.CBufRet.f32 %2716, 0
  %2718 = extractvalue %dx.types.CBufRet.f32 %2716, 1
  %2719 = fmul fast float %2714, %2717
  %2720 = fmul fast float %2715, %2718
  %2721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2722 = extractvalue %dx.types.CBufRet.f32 %2721, 0
  %2723 = fmul fast float %2719, %2722
  %2724 = extractvalue %dx.types.CBufRet.f32 %2721, 1
  %2725 = fadd fast float %2723, %2724
  %2726 = extractvalue %dx.types.CBufRet.f32 %2721, 2
  %2727 = fmul fast float %2726, %2720
  %2728 = extractvalue %dx.types.CBufRet.f32 %2721, 3
  %2729 = fadd fast float %2727, %2728
  %2730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %65, float %2725, float %2729, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2731 = extractvalue %dx.types.ResRet.f32 %2730, 0
  %2732 = extractvalue %dx.types.ResRet.f32 %2730, 1
  %2733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2734 = extractvalue %dx.types.CBufRet.f32 %2733, 1
  %2735 = extractvalue %dx.types.CBufRet.f32 %2733, 0
  %2736 = fsub fast float %2734, %2735
  %2737 = fmul fast float %2736, %2731
  %2738 = fadd fast float %2737, %2735
  %2739 = extractvalue %dx.types.CBufRet.f32 %2733, 3
  %2740 = extractvalue %dx.types.CBufRet.f32 %2733, 2
  %2741 = fsub fast float %2739, %2740
  %2742 = fmul fast float %2741, %2732
  %2743 = fadd fast float %2742, %2740
  %2744 = fsub fast float %2706, %2738
  %2745 = fsub fast float %2743, %2738
  %2746 = fdiv fast float %2744, %2745
  %2747 = call float @dx.op.unary.f32(i32 7, float %2746)  ; Saturate(value)
  %2748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2749 = extractvalue %dx.types.CBufRet.f32 %2748, 0
  %2750 = fmul fast float %2749, %2747
  %2751 = extractvalue %dx.types.CBufRet.f32 %2748, 1
  %2752 = fadd fast float %2750, %2751
  %2753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %65, float %2725, float %2729, float %2752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2754 = extractvalue %dx.types.ResRet.f32 %2753, 0
  %2755 = extractvalue %dx.types.ResRet.f32 %2753, 1
  %2756 = extractvalue %dx.types.ResRet.f32 %2753, 2
  %2757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2758 = extractvalue %dx.types.CBufRet.f32 %2757, 0
  %2759 = extractvalue %dx.types.CBufRet.f32 %2757, 1
  %2760 = extractvalue %dx.types.CBufRet.f32 %2757, 2
  %2761 = fmul fast float %2758, %2754
  %2762 = fmul fast float %2759, %2755
  %2763 = fmul fast float %2760, %2756
  %2764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2765 = extractvalue %dx.types.CBufRet.f32 %2764, 0
  %2766 = extractvalue %dx.types.CBufRet.f32 %2764, 1
  %2767 = extractvalue %dx.types.CBufRet.f32 %2764, 2
  %2768 = fadd fast float %2761, %2765
  %2769 = fadd fast float %2762, %2766
  %2770 = fadd fast float %2763, %2767
  %2771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2772 = extractvalue %dx.types.CBufRet.f32 %2771, 0
  %2773 = fmul fast float %2772, %2719
  %2774 = extractvalue %dx.types.CBufRet.f32 %2771, 1
  %2775 = fadd fast float %2773, %2774
  %2776 = extractvalue %dx.types.CBufRet.f32 %2771, 2
  %2777 = fmul fast float %2776, %2720
  %2778 = extractvalue %dx.types.CBufRet.f32 %2771, 3
  %2779 = fadd fast float %2777, %2778
  %2780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2781 = extractvalue %dx.types.CBufRet.f32 %2780, 0
  %2782 = extractvalue %dx.types.CBufRet.f32 %2780, 1
  %2783 = extractvalue %dx.types.CBufRet.f32 %2780, 2
  %2784 = extractvalue %dx.types.CBufRet.f32 %2780, 3
  %2785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2786 = extractvalue %dx.types.CBufRet.f32 %2785, 0
  %2787 = extractvalue %dx.types.CBufRet.f32 %2785, 1
  %2788 = extractvalue %dx.types.CBufRet.f32 %2785, 2
  %2789 = extractvalue %dx.types.CBufRet.f32 %2785, 3
  %2790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %65, float %2775, float %2779, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2791 = extractvalue %dx.types.ResRet.f32 %2790, 0
  %2792 = extractvalue %dx.types.ResRet.f32 %2790, 1
  %2793 = extractvalue %dx.types.ResRet.f32 %2790, 2
  %2794 = extractvalue %dx.types.ResRet.f32 %2790, 3
  %2795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %65, float %2775, float %2779, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2796 = extractvalue %dx.types.ResRet.f32 %2795, 0
  %2797 = extractvalue %dx.types.ResRet.f32 %2795, 1
  %2798 = extractvalue %dx.types.ResRet.f32 %2795, 2
  %2799 = extractvalue %dx.types.ResRet.f32 %2795, 3
  %2800 = fmul fast float %2791, %2768
  %2801 = fmul fast float %2796, %2768
  %2802 = fmul fast float %2798, %2768
  %2803 = fmul fast float %2794, %2768
  %2804 = fadd fast float %2800, %2781
  %2805 = fadd fast float %2801, %2782
  %2806 = fadd fast float %2802, %2783
  %2807 = fadd fast float %2803, %2784
  %2808 = fmul fast float %2792, %2768
  %2809 = fmul fast float %2797, %2768
  %2810 = fadd fast float %2808, %2786
  %2811 = fadd fast float %2809, %2787
  %2812 = fmul fast float %2793, %2768
  %2813 = fmul fast float %2799, %2768
  %2814 = fadd fast float %2812, %2788
  %2815 = fadd fast float %2813, %2789
  %2816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %65, float %2775, float %2779, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2817 = extractvalue %dx.types.ResRet.f32 %2816, 0
  %2818 = extractvalue %dx.types.ResRet.f32 %2816, 1
  %2819 = extractvalue %dx.types.ResRet.f32 %2816, 2
  %2820 = extractvalue %dx.types.ResRet.f32 %2816, 3
  %2821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %65, float %2775, float %2779, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2822 = extractvalue %dx.types.ResRet.f32 %2821, 0
  %2823 = extractvalue %dx.types.ResRet.f32 %2821, 1
  %2824 = extractvalue %dx.types.ResRet.f32 %2821, 2
  %2825 = extractvalue %dx.types.ResRet.f32 %2821, 3
  %2826 = fmul fast float %2817, %2769
  %2827 = fmul fast float %2822, %2769
  %2828 = fmul fast float %2824, %2769
  %2829 = fmul fast float %2820, %2769
  %2830 = fadd fast float %2804, %2826
  %2831 = fadd fast float %2805, %2827
  %2832 = fadd fast float %2806, %2828
  %2833 = fadd fast float %2807, %2829
  %2834 = fmul fast float %2818, %2769
  %2835 = fmul fast float %2823, %2769
  %2836 = fadd fast float %2810, %2834
  %2837 = fadd fast float %2811, %2835
  %2838 = fmul fast float %2819, %2769
  %2839 = fmul fast float %2825, %2769
  %2840 = fadd fast float %2814, %2838
  %2841 = fadd fast float %2815, %2839
  %2842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %65, float %2775, float %2779, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2843 = extractvalue %dx.types.ResRet.f32 %2842, 0
  %2844 = extractvalue %dx.types.ResRet.f32 %2842, 1
  %2845 = extractvalue %dx.types.ResRet.f32 %2842, 2
  %2846 = extractvalue %dx.types.ResRet.f32 %2842, 3
  %2847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %65, float %2775, float %2779, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2848 = extractvalue %dx.types.ResRet.f32 %2847, 0
  %2849 = extractvalue %dx.types.ResRet.f32 %2847, 1
  %2850 = extractvalue %dx.types.ResRet.f32 %2847, 2
  %2851 = extractvalue %dx.types.ResRet.f32 %2847, 3
  %2852 = fmul fast float %2843, %2770
  %2853 = fmul fast float %2848, %2770
  %2854 = fmul fast float %2850, %2770
  %2855 = fmul fast float %2846, %2770
  %2856 = fadd fast float %2830, %2852
  %2857 = fadd fast float %2831, %2853
  %2858 = fadd fast float %2832, %2854
  %2859 = fadd fast float %2833, %2855
  %2860 = fmul fast float %2844, %2770
  %2861 = fmul fast float %2849, %2770
  %2862 = fadd fast float %2836, %2860
  %2863 = fadd fast float %2837, %2861
  %2864 = fmul fast float %2845, %2770
  %2865 = fmul fast float %2851, %2770
  %2866 = fadd fast float %2840, %2864
  %2867 = fadd fast float %2841, %2865
  %2868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2869 = extractvalue %dx.types.CBufRet.f32 %2868, 0
  %2870 = fsub fast float %2338, %2869
  %2871 = fsub fast float %2712, %2338
  %2872 = call float @dx.op.binary.f32(i32 35, float %2871, float %2870)  ; FMax(a,b)
  %2873 = extractvalue %dx.types.CBufRet.f32 %2868, 1
  %2874 = fsub fast float %2339, %2873
  %2875 = fsub fast float %2713, %2339
  %2876 = call float @dx.op.binary.f32(i32 35, float %2875, float %2874)  ; FMax(a,b)
  %2877 = call float @dx.op.binary.f32(i32 35, float %2872, float %2876)  ; FMax(a,b)
  %2878 = extractvalue %dx.types.CBufRet.f32 %2716, 3
  %2879 = fmul fast float %2878, %2877
  %2880 = call float @dx.op.unary.f32(i32 7, float %2879)  ; Saturate(value)
  %2881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2882 = extractvalue %dx.types.CBufRet.f32 %2881, 0
  %2883 = extractvalue %dx.types.CBufRet.f32 %2881, 1
  %2884 = extractvalue %dx.types.CBufRet.f32 %2881, 2
  %2885 = extractvalue %dx.types.CBufRet.f32 %2881, 3
  %2886 = fsub fast float %2882, %2856
  %2887 = fsub fast float %2883, %2857
  %2888 = fsub fast float %2884, %2858
  %2889 = fsub fast float %2885, %2859
  %2890 = fmul fast float %2886, %2880
  %2891 = fmul fast float %2887, %2880
  %2892 = fmul fast float %2888, %2880
  %2893 = fmul fast float %2889, %2880
  %2894 = fadd fast float %2890, %2856
  %2895 = fadd fast float %2891, %2857
  %2896 = fadd fast float %2892, %2858
  %2897 = fadd fast float %2893, %2859
  %2898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2899 = extractvalue %dx.types.CBufRet.f32 %2898, 0
  %2900 = extractvalue %dx.types.CBufRet.f32 %2898, 1
  %2901 = fsub fast float %2899, %2862
  %2902 = fsub fast float %2900, %2863
  %2903 = fmul fast float %2901, %2880
  %2904 = fmul fast float %2902, %2880
  %2905 = fadd fast float %2903, %2862
  %2906 = fadd fast float %2904, %2863
  %2907 = extractvalue %dx.types.CBufRet.f32 %2898, 2
  %2908 = extractvalue %dx.types.CBufRet.f32 %2898, 3
  %2909 = fsub fast float %2907, %2866
  %2910 = fsub fast float %2908, %2867
  %2911 = fmul fast float %2909, %2880
  %2912 = fmul fast float %2910, %2880
  %2913 = fadd fast float %2911, %2866
  %2914 = fadd fast float %2912, %2867
  %2915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2916 = extractvalue %dx.types.CBufRet.f32 %2915, 0
  %2917 = fmul fast float %2916, %2894
  %2918 = fmul fast float %2916, %2895
  %2919 = fmul fast float %2916, %2896
  %2920 = fmul fast float %2916, %2897
  %2921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2922 = extractvalue %dx.types.CBufRet.f32 %2921, 0
  %2923 = fmul fast float %2922, %2905
  %2924 = fmul fast float %2922, %2906
  %2925 = fadd fast float %2923, %2917
  %2926 = fadd fast float %2924, %2919
  %2927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2928 = extractvalue %dx.types.CBufRet.f32 %2927, 0
  %2929 = fmul fast float %2928, %2913
  %2930 = fmul fast float %2928, %2914
  %2931 = fadd fast float %2925, %2929
  %2932 = fadd fast float %2926, %2930
  %2933 = extractvalue %dx.types.CBufRet.f32 %2915, 1
  %2934 = fmul fast float %2933, %2894
  %2935 = fmul fast float %2933, %2895
  %2936 = fmul fast float %2933, %2896
  %2937 = fmul fast float %2933, %2897
  %2938 = extractvalue %dx.types.CBufRet.f32 %2921, 1
  %2939 = fmul fast float %2938, %2905
  %2940 = fmul fast float %2938, %2906
  %2941 = fadd fast float %2939, %2934
  %2942 = fadd fast float %2940, %2936
  %2943 = extractvalue %dx.types.CBufRet.f32 %2927, 1
  %2944 = fmul fast float %2943, %2913
  %2945 = fmul fast float %2943, %2914
  %2946 = fadd fast float %2941, %2944
  %2947 = fadd fast float %2942, %2945
  %2948 = extractvalue %dx.types.CBufRet.f32 %2915, 2
  %2949 = fmul fast float %2948, %2894
  %2950 = fmul fast float %2948, %2895
  %2951 = fmul fast float %2948, %2896
  %2952 = fmul fast float %2948, %2897
  %2953 = extractvalue %dx.types.CBufRet.f32 %2921, 2
  %2954 = fmul fast float %2953, %2905
  %2955 = fmul fast float %2953, %2906
  %2956 = fadd fast float %2954, %2949
  %2957 = fadd fast float %2955, %2951
  %2958 = extractvalue %dx.types.CBufRet.f32 %2927, 2
  %2959 = fmul fast float %2958, %2913
  %2960 = fmul fast float %2958, %2914
  %2961 = fadd fast float %2956, %2959
  %2962 = fadd fast float %2957, %2960
  %2963 = fmul fast float %2950, %2950
  %2964 = fmul fast float %2962, %2962
  %2965 = fmul fast float %2952, %2952
  %2966 = fadd fast float %2965, %2963
  %2967 = fadd fast float %2966, %2964
  %2968 = call float @dx.op.unary.f32(i32 24, float %2967)  ; Sqrt(value)
  %2969 = fcmp fast ugt float %2968, 0.000000e+00
  br i1 %2969, label %2970, label %2985

; <label>:2970                                    ; preds = %2704
  %2971 = fsub fast float -0.000000e+00, %2952
  %2972 = fdiv fast float %2971, %2968
  %2973 = fsub fast float -0.000000e+00, %2950
  %2974 = fdiv fast float %2973, %2968
  %2975 = fdiv fast float %2962, %2968
  %2976 = fmul fast float %2961, 0x3FE279A760000000
  %2977 = fmul fast float %2974, %2950
  %2978 = fmul fast float %2975, %2962
  %2979 = fmul fast float %2972, %2952
  %2980 = fadd fast float %2977, %2979
  %2981 = fsub fast float %2980, %2978
  %2982 = call float @dx.op.unary.f32(i32 6, float %2981)  ; FAbs(value)
  %2983 = fadd fast float %2982, 0x3DDB7CDFE0000000
  %2984 = fdiv fast float %2976, %2983
  br label %2985

; <label>:2985                                    ; preds = %2970, %2704
  %2986 = phi float [ %2984, %2970 ], [ 1.000000e+00, %2704 ]
  %2987 = fmul fast float %2935, %2935
  %2988 = fmul fast float %2947, %2947
  %2989 = fmul fast float %2937, %2937
  %2990 = fadd fast float %2989, %2987
  %2991 = fadd fast float %2990, %2988
  %2992 = call float @dx.op.unary.f32(i32 24, float %2991)  ; Sqrt(value)
  %2993 = fcmp fast ugt float %2992, 0.000000e+00
  br i1 %2993, label %2994, label %3009

; <label>:2994                                    ; preds = %2985
  %2995 = fsub fast float -0.000000e+00, %2937
  %2996 = fdiv fast float %2995, %2992
  %2997 = fsub fast float -0.000000e+00, %2935
  %2998 = fdiv fast float %2997, %2992
  %2999 = fdiv fast float %2947, %2992
  %3000 = fmul fast float %2946, 0x3FE279A760000000
  %3001 = fmul fast float %2998, %2935
  %3002 = fmul fast float %2999, %2947
  %3003 = fmul fast float %2996, %2937
  %3004 = fadd fast float %3001, %3003
  %3005 = fsub fast float %3004, %3002
  %3006 = call float @dx.op.unary.f32(i32 6, float %3005)  ; FAbs(value)
  %3007 = fadd fast float %3006, 0x3DDB7CDFE0000000
  %3008 = fdiv fast float %3000, %3007
  br label %3009

; <label>:3009                                    ; preds = %2994, %2985
  %3010 = phi float [ %3008, %2994 ], [ 1.000000e+00, %2985 ]
  %3011 = call float @dx.op.binary.f32(i32 36, float %3010, float %2986)  ; FMin(a,b)
  %3012 = fmul fast float %2918, %2918
  %3013 = fmul fast float %2932, %2932
  %3014 = fmul fast float %2920, %2920
  %3015 = fadd fast float %3014, %3012
  %3016 = fadd fast float %3015, %3013
  %3017 = call float @dx.op.unary.f32(i32 24, float %3016)  ; Sqrt(value)
  %3018 = fcmp fast ugt float %3017, 0.000000e+00
  br i1 %3018, label %3019, label %3034

; <label>:3019                                    ; preds = %3009
  %3020 = fsub fast float -0.000000e+00, %2920
  %3021 = fdiv fast float %3020, %3017
  %3022 = fsub fast float -0.000000e+00, %2918
  %3023 = fdiv fast float %3022, %3017
  %3024 = fdiv fast float %2932, %3017
  %3025 = fmul fast float %2931, 0x3FE279A760000000
  %3026 = fmul fast float %3023, %2918
  %3027 = fmul fast float %3024, %2932
  %3028 = fmul fast float %3021, %2920
  %3029 = fadd fast float %3026, %3028
  %3030 = fsub fast float %3029, %3027
  %3031 = call float @dx.op.unary.f32(i32 6, float %3030)  ; FAbs(value)
  %3032 = fadd fast float %3031, 0x3DDB7CDFE0000000
  %3033 = fdiv fast float %3025, %3032
  br label %3034

; <label>:3034                                    ; preds = %3019, %3009
  %3035 = phi float [ %3033, %3019 ], [ 1.000000e+00, %3009 ]
  %3036 = call float @dx.op.binary.f32(i32 36, float %3035, float %3011)  ; FMin(a,b)
  %3037 = call float @dx.op.unary.f32(i32 7, float %3036)  ; Saturate(value)
  %3038 = fcmp fast olt float %3037, 1.000000e+00
  br i1 %3038, label %3039, label %3049

; <label>:3039                                    ; preds = %3034
  %3040 = fmul fast float %3037, %2918
  %3041 = fmul fast float %3037, %2932
  %3042 = fmul fast float %3037, %2920
  %3043 = fmul fast float %3037, %2935
  %3044 = fmul fast float %3037, %2947
  %3045 = fmul fast float %3037, %2937
  %3046 = fmul fast float %3037, %2950
  %3047 = fmul fast float %3037, %2962
  %3048 = fmul fast float %3037, %2952
  br label %3049

; <label>:3049                                    ; preds = %3039, %3034
  %3050 = phi float [ %3046, %3039 ], [ %2950, %3034 ]
  %3051 = phi float [ %3047, %3039 ], [ %2962, %3034 ]
  %3052 = phi float [ %3048, %3039 ], [ %2952, %3034 ]
  %3053 = phi float [ %3043, %3039 ], [ %2935, %3034 ]
  %3054 = phi float [ %3044, %3039 ], [ %2947, %3034 ]
  %3055 = phi float [ %3045, %3039 ], [ %2937, %3034 ]
  %3056 = phi float [ %3040, %3039 ], [ %2918, %3034 ]
  %3057 = phi float [ %3041, %3039 ], [ %2932, %3034 ]
  %3058 = phi float [ %3042, %3039 ], [ %2920, %3034 ]
  %3059 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2931)  ; FMax(a,b)
  %3060 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2946)  ; FMax(a,b)
  %3061 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2961)  ; FMax(a,b)
  %3062 = fcmp fast oge float %2719, 0.000000e+00
  %3063 = and i1 %3062, %2490
  %3064 = fcmp fast ole float %2719, 1.000000e+00
  %3065 = and i1 %3064, %3063
  %3066 = fcmp fast oge float %2720, 0.000000e+00
  %3067 = and i1 %3066, %3065
  %3068 = fcmp fast ole float %2720, 1.000000e+00
  %3069 = and i1 %3068, %3067
  br i1 %3069, label %3070, label %3215, !dx.controlflow.hints !111

; <label>:3070                                    ; preds = %3049
  %3071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3072 = extractvalue %dx.types.CBufRet.f32 %3071, 2
  %3073 = extractvalue %dx.types.CBufRet.f32 %3071, 3
  %3074 = fmul fast float %3072, %2719
  %3075 = fmul fast float %3073, %2720
  %3076 = call float @dx.op.unary.f32(i32 27, float %3074)  ; Round_ni(value)
  %3077 = call float @dx.op.unary.f32(i32 27, float %3075)  ; Round_ni(value)
  %3078 = fptosi float %3076 to i32
  %3079 = fptosi float %3077 to i32
  %3080 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %55, i32 0, i32 %3078, i32 %3079, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3081 = extractvalue %dx.types.ResRet.i32 %3080, 0
  %3082 = and i32 %3081, 65535
  %3083 = lshr i32 %3081, 16
  %3084 = icmp eq i32 %3082, 65535
  br i1 %3084, label %3121, label %3085

; <label>:3085                                    ; preds = %3070
  %3086 = extractvalue %dx.types.CBufRet.f32 %2488, 1
  %3087 = extractvalue %dx.types.CBufRet.f32 %3071, 0
  %3088 = extractvalue %dx.types.CBufRet.f32 %3071, 1
  %3089 = fmul fast float %3087, %2719
  %3090 = fmul fast float %3088, %2720
  %3091 = fmul fast float %3089, 1.250000e-01
  %3092 = fmul fast float %3090, 1.250000e-01
  %3093 = call float @dx.op.unary.f32(i32 27, float %3091)  ; Round_ni(value)
  %3094 = call float @dx.op.unary.f32(i32 27, float %3092)  ; Round_ni(value)
  %3095 = fmul fast float %3093, 8.000000e+00
  %3096 = fmul fast float %3094, 8.000000e+00
  %3097 = and i32 %3081, 255
  %3098 = lshr i32 %3081, 8
  %3099 = and i32 %3098, 255
  %3100 = mul nuw nsw i32 %3097, 9
  %3101 = uitofp i32 %3100 to float
  %3102 = mul nuw nsw i32 %3099, 9
  %3103 = uitofp i32 %3102 to float
  %3104 = fadd fast float %3101, 5.000000e-01
  %3105 = fadd fast float %3104, %3089
  %3106 = fsub fast float %3105, %3095
  %3107 = fadd fast float %3103, 5.000000e-01
  %3108 = fadd fast float %3107, %3090
  %3109 = fsub fast float %3108, %3096
  %3110 = fdiv fast float %3106, %2489
  %3111 = fdiv fast float %3109, %3086
  %3112 = fmul fast float %2747, 4.375000e-01
  %3113 = fadd fast float %3112, 3.125000e-02
  %3114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %65, float %3110, float %3111, float %3113, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3115 = extractvalue %dx.types.ResRet.f32 %3114, 0
  %3116 = extractvalue %dx.types.ResRet.f32 %3114, 1
  %3117 = extractvalue %dx.types.ResRet.f32 %3114, 2
  %3118 = fadd fast float %3115, %3059
  %3119 = fadd fast float %3116, %3060
  %3120 = fadd fast float %3117, %3061
  br label %3121

; <label>:3121                                    ; preds = %3085, %3070
  %3122 = phi float [ %3120, %3085 ], [ %3061, %3070 ]
  %3123 = phi float [ %3119, %3085 ], [ %3060, %3070 ]
  %3124 = phi float [ %3118, %3085 ], [ %3059, %3070 ]
  %3125 = icmp eq i32 %3083, 65535
  br i1 %3125, label %3215, label %3126

; <label>:3126                                    ; preds = %3121
  %3127 = extractvalue %dx.types.CBufRet.f32 %2488, 1
  %3128 = extractvalue %dx.types.CBufRet.f32 %3071, 0
  %3129 = extractvalue %dx.types.CBufRet.f32 %3071, 1
  %3130 = fmul fast float %3128, %2719
  %3131 = fmul fast float %3129, %2720
  %3132 = fmul fast float %3130, 1.250000e-01
  %3133 = fmul fast float %3131, 1.250000e-01
  %3134 = call float @dx.op.unary.f32(i32 27, float %3132)  ; Round_ni(value)
  %3135 = call float @dx.op.unary.f32(i32 27, float %3133)  ; Round_ni(value)
  %3136 = fmul fast float %3134, 8.000000e+00
  %3137 = fmul fast float %3135, 8.000000e+00
  %3138 = fsub fast float %3130, %3136
  %3139 = fsub fast float %3131, %3137
  %3140 = fadd fast float %3138, 5.000000e-01
  %3141 = fadd fast float %3139, 5.000000e-01
  %3142 = and i32 %3083, 255
  %3143 = lshr i32 %3081, 24
  %3144 = mul nuw nsw i32 %3142, 9
  %3145 = uitofp i32 %3144 to float
  %3146 = mul nuw nsw i32 %3143, 9
  %3147 = uitofp i32 %3146 to float
  %3148 = fadd fast float %3140, %3145
  %3149 = fadd fast float %3141, %3147
  %3150 = fdiv fast float %3148, %2489
  %3151 = fdiv fast float %3149, %3127
  %3152 = fmul fast float %2747, 4.375000e-01
  %3153 = fadd fast float %3152, 3.125000e-02
  %3154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %65, float %3150, float %3151, float %3153, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3155 = extractvalue %dx.types.ResRet.f32 %3154, 0
  %3156 = extractvalue %dx.types.ResRet.f32 %3154, 1
  %3157 = extractvalue %dx.types.ResRet.f32 %3154, 2
  %3158 = fadd fast float %3152, 5.312500e-01
  %3159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %65, float %3150, float %3151, float %3158, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3160 = extractvalue %dx.types.ResRet.f32 %3159, 0
  %3161 = extractvalue %dx.types.ResRet.f32 %3159, 1
  %3162 = extractvalue %dx.types.ResRet.f32 %3159, 2
  %3163 = fmul fast float %3160, 2.000000e+00
  %3164 = fmul fast float %3161, 2.000000e+00
  %3165 = fmul fast float %3162, 2.000000e+00
  %3166 = fadd fast float %3163, -1.000000e+00
  %3167 = fadd fast float %3164, -1.000000e+00
  %3168 = fadd fast float %3165, -1.000000e+00
  %3169 = fmul fast float %3166, %3166
  %3170 = fmul fast float %3167, %3167
  %3171 = fadd fast float %3169, %3170
  %3172 = fmul fast float %3168, %3168
  %3173 = fadd fast float %3171, %3172
  %3174 = call float @dx.op.unary.f32(i32 24, float %3173)  ; Sqrt(value)
  %3175 = fcmp fast ogt float %3174, 0.000000e+00
  br i1 %3175, label %3176, label %3180

; <label>:3176                                    ; preds = %3126
  %3177 = fdiv fast float %3166, %3174
  %3178 = fdiv fast float %3167, %3174
  %3179 = fdiv fast float %3168, %3174
  br label %3180

; <label>:3180                                    ; preds = %3176, %3126
  %3181 = phi float [ %3177, %3176 ], [ 0.000000e+00, %3126 ]
  %3182 = phi float [ %3178, %3176 ], [ 0.000000e+00, %3126 ]
  %3183 = phi float [ %3179, %3176 ], [ 0.000000e+00, %3126 ]
  %3184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3185 = extractvalue %dx.types.CBufRet.f32 %3184, 0
  %3186 = extractvalue %dx.types.CBufRet.f32 %3184, 1
  %3187 = fsub fast float %2338, %3185
  %3188 = fsub fast float %2339, %3186
  %3189 = fmul fast float %3187, %3187
  %3190 = fmul fast float %3188, %3188
  %3191 = fadd fast float %3189, %3190
  %3192 = call float @dx.op.unary.f32(i32 24, float %3191)  ; Sqrt(value)
  %3193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3194 = extractvalue %dx.types.CBufRet.f32 %3193, 0
  %3195 = extractvalue %dx.types.CBufRet.f32 %3193, 1
  %3196 = fsub fast float %3192, %3194
  %3197 = fdiv fast float %3196, %3195
  %3198 = call float @dx.op.unary.f32(i32 7, float %3197)  ; Saturate(value)
  %3199 = fmul fast float %3198, 2.000000e+00
  %3200 = fsub fast float 3.000000e+00, %3199
  %3201 = fmul fast float %3198, %3198
  %3202 = fmul fast float %3201, %3200
  %3203 = call float @dx.op.dot3.f32(i32 55, float %3181, float %3182, float %3183, float %2299, float %2300, float %2301)  ; Dot3(ax,ay,az,bx,by,bz)
  %3204 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3203)  ; FMax(a,b)
  %3205 = fmul fast float %3204, 0x400C5BF8A0000000
  %3206 = fmul fast float %3202, %3155
  %3207 = fmul fast float %3206, %3205
  %3208 = fadd fast float %3207, %3124
  %3209 = fmul fast float %3202, %3156
  %3210 = fmul fast float %3209, %3205
  %3211 = fadd fast float %3210, %3123
  %3212 = fmul fast float %3202, %3157
  %3213 = fmul fast float %3212, %3205
  %3214 = fadd fast float %3213, %3122
  br label %3215

; <label>:3215                                    ; preds = %3180, %3121, %3049
  %3216 = phi float [ %3214, %3180 ], [ %3122, %3121 ], [ %3061, %3049 ]
  %3217 = phi float [ %3211, %3180 ], [ %3123, %3121 ], [ %3060, %3049 ]
  %3218 = phi float [ %3208, %3180 ], [ %3124, %3121 ], [ %3059, %3049 ]
  %3219 = fcmp fast ogt float %2706, %2743
  %3220 = and i1 %3062, %3219
  %3221 = and i1 %3064, %3220
  %3222 = and i1 %3066, %3221
  %3223 = and i1 %3068, %3222
  br i1 %3223, label %3224, label %3281, !dx.controlflow.hints !112

; <label>:3224                                    ; preds = %3215
  %3225 = fmul fast float %2745, 0x3FC24924A0000000
  %3226 = fsub fast float %2706, %2743
  %3227 = fdiv fast float %3226, %3225
  %3228 = call float @dx.op.unary.f32(i32 7, float %3227)  ; Saturate(value)
  %3229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3230 = extractvalue %dx.types.CBufRet.f32 %3229, 0
  %3231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3232 = extractvalue %dx.types.CBufRet.f32 %3231, 0
  %3233 = extractvalue %dx.types.CBufRet.f32 %3231, 1
  %3234 = extractvalue %dx.types.CBufRet.f32 %3231, 2
  %3235 = fsub fast float %3230, %3218
  %3236 = fsub fast float %3232, %3056
  %3237 = fsub fast float %3233, %3057
  %3238 = fsub fast float %3234, %3058
  %3239 = fmul fast float %3235, %3228
  %3240 = fmul fast float %3236, %3228
  %3241 = fmul fast float %3237, %3228
  %3242 = fmul fast float %3238, %3228
  %3243 = fadd fast float %3239, %3218
  %3244 = fadd fast float %3240, %3056
  %3245 = fadd fast float %3241, %3057
  %3246 = fadd fast float %3242, %3058
  %3247 = extractvalue %dx.types.CBufRet.f32 %3229, 1
  %3248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3249 = extractvalue %dx.types.CBufRet.f32 %3248, 0
  %3250 = extractvalue %dx.types.CBufRet.f32 %3248, 1
  %3251 = extractvalue %dx.types.CBufRet.f32 %3248, 2
  %3252 = fsub fast float %3247, %3217
  %3253 = fsub fast float %3249, %3053
  %3254 = fsub fast float %3250, %3054
  %3255 = fsub fast float %3251, %3055
  %3256 = fmul fast float %3252, %3228
  %3257 = fmul fast float %3253, %3228
  %3258 = fmul fast float %3254, %3228
  %3259 = fmul fast float %3255, %3228
  %3260 = fadd fast float %3256, %3217
  %3261 = fadd fast float %3257, %3053
  %3262 = fadd fast float %3258, %3054
  %3263 = fadd fast float %3259, %3055
  %3264 = extractvalue %dx.types.CBufRet.f32 %3229, 2
  %3265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3266 = extractvalue %dx.types.CBufRet.f32 %3265, 0
  %3267 = extractvalue %dx.types.CBufRet.f32 %3265, 1
  %3268 = extractvalue %dx.types.CBufRet.f32 %3265, 2
  %3269 = fsub fast float %3264, %3216
  %3270 = fsub fast float %3266, %3050
  %3271 = fsub fast float %3267, %3051
  %3272 = fsub fast float %3268, %3052
  %3273 = fmul fast float %3269, %3228
  %3274 = fmul fast float %3270, %3228
  %3275 = fmul fast float %3271, %3228
  %3276 = fmul fast float %3272, %3228
  %3277 = fadd fast float %3273, %3216
  %3278 = fadd fast float %3274, %3050
  %3279 = fadd fast float %3275, %3051
  %3280 = fadd fast float %3276, %3052
  br label %3281

; <label>:3281                                    ; preds = %3224, %3215
  %3282 = phi float [ %3277, %3224 ], [ %3216, %3215 ]
  %3283 = phi float [ %3278, %3224 ], [ %3050, %3215 ]
  %3284 = phi float [ %3279, %3224 ], [ %3051, %3215 ]
  %3285 = phi float [ %3280, %3224 ], [ %3052, %3215 ]
  %3286 = phi float [ %3260, %3224 ], [ %3217, %3215 ]
  %3287 = phi float [ %3261, %3224 ], [ %3053, %3215 ]
  %3288 = phi float [ %3262, %3224 ], [ %3054, %3215 ]
  %3289 = phi float [ %3263, %3224 ], [ %3055, %3215 ]
  %3290 = phi float [ %3243, %3224 ], [ %3218, %3215 ]
  %3291 = phi float [ %3244, %3224 ], [ %3056, %3215 ]
  %3292 = phi float [ %3245, %3224 ], [ %3057, %3215 ]
  %3293 = phi float [ %3246, %3224 ], [ %3058, %3215 ]
  %3294 = extractvalue %dx.types.CBufRet.f32 %2868, 3
  %3295 = fmul fast float %3294, %3290
  %3296 = fmul fast float %3294, %3286
  %3297 = fmul fast float %3294, %3282
  %3298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3299 = extractvalue %dx.types.CBufRet.f32 %3298, 3
  %3300 = fmul fast float %3295, %3299
  %3301 = fmul fast float %3296, %3299
  %3302 = fmul fast float %3297, %3299
  %3303 = call float @dx.op.dot3.f32(i32 55, float %3300, float %3301, float %3302, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3304 = fmul fast float %3303, 0x3FD20DD760000000
  %3305 = fmul fast float %3291, 1.500000e+00
  %3306 = fmul fast float %3305, %3294
  %3307 = fmul fast float %3306, %3299
  %3308 = fmul fast float %3292, 1.500000e+00
  %3309 = fmul fast float %3308, %3294
  %3310 = fmul fast float %3309, %3299
  %3311 = fmul fast float %3293, 1.500000e+00
  %3312 = fmul fast float %3311, %3294
  %3313 = fmul fast float %3312, %3299
  %3314 = fmul fast float %3287, 1.500000e+00
  %3315 = fmul fast float %3314, %3294
  %3316 = fmul fast float %3315, %3299
  %3317 = fmul fast float %3288, 1.500000e+00
  %3318 = fmul fast float %3317, %3294
  %3319 = fmul fast float %3318, %3299
  %3320 = fmul fast float %3289, 1.500000e+00
  %3321 = fmul fast float %3320, %3294
  %3322 = fmul fast float %3321, %3299
  %3323 = fmul fast float %3283, 1.500000e+00
  %3324 = fmul fast float %3323, %3294
  %3325 = fmul fast float %3324, %3299
  %3326 = fmul fast float %3284, 1.500000e+00
  %3327 = fmul fast float %3326, %3294
  %3328 = fmul fast float %3327, %3299
  %3329 = fmul fast float %3285, 1.500000e+00
  %3330 = fmul fast float %3329, %3294
  %3331 = fmul fast float %3330, %3299
  %3332 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3300)  ; FMax(a,b)
  %3333 = call float @dx.op.dot3.f32(i32 55, float %3307, float %3310, float %3313, float %3307, float %3310, float %3313)  ; Dot3(ax,ay,az,bx,by,bz)
  %3334 = fcmp fast oeq float %3333, 0.000000e+00
  %3335 = fcmp fast oeq float %3332, 0.000000e+00
  %3336 = or i1 %3335, %3334
  br i1 %3336, label %3366, label %3337

; <label>:3337                                    ; preds = %3281
  %3338 = fsub fast float -0.000000e+00, %3313
  %3339 = fsub fast float -0.000000e+00, %3307
  %3340 = call float @dx.op.unary.f32(i32 24, float %3333)  ; Sqrt(value)
  %3341 = fdiv fast float %3340, %3332
  %3342 = fcmp fast ogt float %3341, 0x3FFB6F8900000000
  %3343 = select i1 %3342, float 0x3FFB6F8900000000, float %3341
  %3344 = fmul fast float %3343, 0x3FE8A23460000000
  %3345 = call float @dx.op.unary.f32(i32 7, float %3344)  ; Saturate(value)
  %3346 = call float @dx.op.binary.f32(i32 35, float %3343, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3347 = fmul fast float %3345, %3332
  %3348 = fmul fast float %3346, 0x3FF279A740000000
  %3349 = fadd fast float %3348, -1.000000e+00
  %3350 = call float @dx.op.dot3.f32(i32 55, float %3338, float %3339, float %3310, float %3338, float %3339, float %3310)  ; Dot3(ax,ay,az,bx,by,bz)
  %3351 = call float @dx.op.unary.f32(i32 25, float %3350)  ; Rsqrt(value)
  %3352 = fmul fast float %3351, %3338
  %3353 = fmul fast float %3351, %3339
  %3354 = fmul fast float %3351, %3310
  %3355 = fmul fast float %3349, %3349
  %3356 = fsub fast float 1.000000e+00, %3355
  %3357 = fmul fast float %3346, 0x40005F8BE0000000
  %3358 = fsub fast float 0x400C5BF8A0000000, %3357
  %3359 = fdiv fast float %3347, %3358
  %3360 = fmul fast float %3359, 0x3FEE31C3C0000000
  %3361 = fmul fast float %3360, %3356
  %3362 = fmul fast float %3346, 0x3FDACB7480000000
  %3363 = fadd fast float %3362, 0xBFD7347680000000
  %3364 = fmul fast float %3363, %3359
  %3365 = fmul fast float %3364, %3356
  br label %3366

; <label>:3366                                    ; preds = %3337, %3281
  %3367 = phi float [ %3352, %3337 ], [ 0.000000e+00, %3281 ]
  %3368 = phi float [ %3353, %3337 ], [ 0.000000e+00, %3281 ]
  %3369 = phi float [ %3354, %3337 ], [ 0.000000e+00, %3281 ]
  %3370 = phi float [ %3361, %3337 ], [ 0.000000e+00, %3281 ]
  %3371 = phi float [ %3365, %3337 ], [ 0.000000e+00, %3281 ]
  %3372 = call float @dx.op.dot3.f32(i32 55, float %3367, float %3368, float %3369, float %2299, float %2300, float %2301)  ; Dot3(ax,ay,az,bx,by,bz)
  %3373 = fmul fast float %3372, %3372
  %3374 = fmul fast float %3373, 0x3FEE471020000000
  %3375 = fadd fast float %3374, 0xBFD42F6020000000
  %3376 = fmul fast float %3332, 0x3FD20DD760000000
  %3377 = fmul fast float %3375, %3371
  %3378 = fmul fast float %3370, 0x3FDF454380000000
  %3379 = fmul fast float %3378, %3372
  %3380 = fadd fast float %3379, %3376
  %3381 = fadd fast float %3380, %3377
  %3382 = call float @dx.op.dot3.f32(i32 55, float %3367, float %3368, float %3369, float %2316, float %2317, float %2318)  ; Dot3(ax,ay,az,bx,by,bz)
  %3383 = fmul fast float %3382, 0x3FDF454380000000
  %3384 = fmul fast float %3382, %3382
  %3385 = fmul fast float %3384, 0x3FEE471020000000
  %3386 = fadd fast float %3385, 0xBFD42F6020000000
  %3387 = call float @dx.op.dot3.f32(i32 55, float %3332, float %3370, float %3371, float 0x3FD20DD760000000, float %3383, float %3386)  ; Dot3(ax,ay,az,bx,by,bz)
  %3388 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3301)  ; FMax(a,b)
  %3389 = call float @dx.op.dot3.f32(i32 55, float %3316, float %3319, float %3322, float %3316, float %3319, float %3322)  ; Dot3(ax,ay,az,bx,by,bz)
  %3390 = fcmp fast oeq float %3389, 0.000000e+00
  %3391 = fcmp fast oeq float %3388, 0.000000e+00
  %3392 = or i1 %3391, %3390
  br i1 %3392, label %3422, label %3393

; <label>:3393                                    ; preds = %3366
  %3394 = fsub fast float -0.000000e+00, %3322
  %3395 = fsub fast float -0.000000e+00, %3316
  %3396 = call float @dx.op.unary.f32(i32 24, float %3389)  ; Sqrt(value)
  %3397 = fdiv fast float %3396, %3388
  %3398 = fcmp fast ogt float %3397, 0x3FFB6F8900000000
  %3399 = select i1 %3398, float 0x3FFB6F8900000000, float %3397
  %3400 = fmul fast float %3399, 0x3FE8A23460000000
  %3401 = call float @dx.op.unary.f32(i32 7, float %3400)  ; Saturate(value)
  %3402 = call float @dx.op.binary.f32(i32 35, float %3399, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3403 = fmul fast float %3401, %3388
  %3404 = fmul fast float %3402, 0x3FF279A740000000
  %3405 = fadd fast float %3404, -1.000000e+00
  %3406 = call float @dx.op.dot3.f32(i32 55, float %3394, float %3395, float %3319, float %3394, float %3395, float %3319)  ; Dot3(ax,ay,az,bx,by,bz)
  %3407 = call float @dx.op.unary.f32(i32 25, float %3406)  ; Rsqrt(value)
  %3408 = fmul fast float %3407, %3394
  %3409 = fmul fast float %3407, %3395
  %3410 = fmul fast float %3407, %3319
  %3411 = fmul fast float %3405, %3405
  %3412 = fsub fast float 1.000000e+00, %3411
  %3413 = fmul fast float %3402, 0x40005F8BE0000000
  %3414 = fsub fast float 0x400C5BF8A0000000, %3413
  %3415 = fdiv fast float %3403, %3414
  %3416 = fmul fast float %3415, 0x3FEE31C3C0000000
  %3417 = fmul fast float %3416, %3412
  %3418 = fmul fast float %3402, 0x3FDACB7480000000
  %3419 = fadd fast float %3418, 0xBFD7347680000000
  %3420 = fmul fast float %3419, %3415
  %3421 = fmul fast float %3420, %3412
  br label %3422

; <label>:3422                                    ; preds = %3393, %3366
  %3423 = phi float [ %3408, %3393 ], [ 0.000000e+00, %3366 ]
  %3424 = phi float [ %3409, %3393 ], [ 0.000000e+00, %3366 ]
  %3425 = phi float [ %3410, %3393 ], [ 0.000000e+00, %3366 ]
  %3426 = phi float [ %3417, %3393 ], [ 0.000000e+00, %3366 ]
  %3427 = phi float [ %3421, %3393 ], [ 0.000000e+00, %3366 ]
  %3428 = call float @dx.op.dot3.f32(i32 55, float %3423, float %3424, float %3425, float %2299, float %2300, float %2301)  ; Dot3(ax,ay,az,bx,by,bz)
  %3429 = fmul fast float %3428, %3428
  %3430 = fmul fast float %3429, 0x3FEE471020000000
  %3431 = fadd fast float %3430, 0xBFD42F6020000000
  %3432 = fmul fast float %3388, 0x3FD20DD760000000
  %3433 = fmul fast float %3431, %3427
  %3434 = fmul fast float %3426, 0x3FDF454380000000
  %3435 = fmul fast float %3434, %3428
  %3436 = fadd fast float %3435, %3432
  %3437 = fadd fast float %3436, %3433
  %3438 = call float @dx.op.dot3.f32(i32 55, float %3423, float %3424, float %3425, float %2316, float %2317, float %2318)  ; Dot3(ax,ay,az,bx,by,bz)
  %3439 = fmul fast float %3438, 0x3FDF454380000000
  %3440 = fmul fast float %3438, %3438
  %3441 = fmul fast float %3440, 0x3FEE471020000000
  %3442 = fadd fast float %3441, 0xBFD42F6020000000
  %3443 = call float @dx.op.dot3.f32(i32 55, float %3388, float %3426, float %3427, float 0x3FD20DD760000000, float %3439, float %3442)  ; Dot3(ax,ay,az,bx,by,bz)
  %3444 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3302)  ; FMax(a,b)
  %3445 = call float @dx.op.dot3.f32(i32 55, float %3325, float %3328, float %3331, float %3325, float %3328, float %3331)  ; Dot3(ax,ay,az,bx,by,bz)
  %3446 = fcmp fast oeq float %3445, 0.000000e+00
  %3447 = fcmp fast oeq float %3444, 0.000000e+00
  %3448 = or i1 %3447, %3446
  br i1 %3448, label %3478, label %3449

; <label>:3449                                    ; preds = %3422
  %3450 = fsub fast float -0.000000e+00, %3331
  %3451 = fsub fast float -0.000000e+00, %3325
  %3452 = call float @dx.op.unary.f32(i32 24, float %3445)  ; Sqrt(value)
  %3453 = fdiv fast float %3452, %3444
  %3454 = fcmp fast ogt float %3453, 0x3FFB6F8900000000
  %3455 = select i1 %3454, float 0x3FFB6F8900000000, float %3453
  %3456 = fmul fast float %3455, 0x3FE8A23460000000
  %3457 = call float @dx.op.unary.f32(i32 7, float %3456)  ; Saturate(value)
  %3458 = call float @dx.op.binary.f32(i32 35, float %3455, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3459 = fmul fast float %3457, %3444
  %3460 = fmul fast float %3458, 0x3FF279A740000000
  %3461 = fadd fast float %3460, -1.000000e+00
  %3462 = call float @dx.op.dot3.f32(i32 55, float %3450, float %3451, float %3328, float %3450, float %3451, float %3328)  ; Dot3(ax,ay,az,bx,by,bz)
  %3463 = call float @dx.op.unary.f32(i32 25, float %3462)  ; Rsqrt(value)
  %3464 = fmul fast float %3463, %3450
  %3465 = fmul fast float %3463, %3451
  %3466 = fmul fast float %3463, %3328
  %3467 = fmul fast float %3461, %3461
  %3468 = fsub fast float 1.000000e+00, %3467
  %3469 = fmul fast float %3458, 0x40005F8BE0000000
  %3470 = fsub fast float 0x400C5BF8A0000000, %3469
  %3471 = fdiv fast float %3459, %3470
  %3472 = fmul fast float %3471, 0x3FEE31C3C0000000
  %3473 = fmul fast float %3472, %3468
  %3474 = fmul fast float %3458, 0x3FDACB7480000000
  %3475 = fadd fast float %3474, 0xBFD7347680000000
  %3476 = fmul fast float %3475, %3471
  %3477 = fmul fast float %3476, %3468
  br label %3478

; <label>:3478                                    ; preds = %3449, %3422
  %3479 = phi float [ %3464, %3449 ], [ 0.000000e+00, %3422 ]
  %3480 = phi float [ %3465, %3449 ], [ 0.000000e+00, %3422 ]
  %3481 = phi float [ %3466, %3449 ], [ 0.000000e+00, %3422 ]
  %3482 = phi float [ %3473, %3449 ], [ 0.000000e+00, %3422 ]
  %3483 = phi float [ %3477, %3449 ], [ 0.000000e+00, %3422 ]
  %3484 = call float @dx.op.dot3.f32(i32 55, float %3479, float %3480, float %3481, float %2299, float %2300, float %2301)  ; Dot3(ax,ay,az,bx,by,bz)
  %3485 = fmul fast float %3484, %3484
  %3486 = fmul fast float %3485, 0x3FEE471020000000
  %3487 = fadd fast float %3486, 0xBFD42F6020000000
  %3488 = fmul fast float %3444, 0x3FD20DD760000000
  %3489 = fmul fast float %3487, %3483
  %3490 = fmul fast float %3482, 0x3FDF454380000000
  %3491 = fmul fast float %3490, %3484
  %3492 = fadd fast float %3491, %3488
  %3493 = fadd fast float %3492, %3489
  %3494 = call float @dx.op.dot3.f32(i32 55, float %3479, float %3480, float %3481, float %2316, float %2317, float %2318)  ; Dot3(ax,ay,az,bx,by,bz)
  %3495 = fmul fast float %3494, 0x3FDF454380000000
  %3496 = fmul fast float %3494, %3494
  %3497 = fmul fast float %3496, 0x3FEE471020000000
  %3498 = fadd fast float %3497, 0xBFD42F6020000000
  %3499 = call float @dx.op.dot3.f32(i32 55, float %3444, float %3482, float %3483, float 0x3FD20DD760000000, float %3495, float %3498)  ; Dot3(ax,ay,az,bx,by,bz)
  %3500 = call float @dx.op.binary.f32(i32 35, float %3381, float 0.000000e+00)  ; FMax(a,b)
  %3501 = call float @dx.op.binary.f32(i32 35, float %3437, float 0.000000e+00)  ; FMax(a,b)
  %3502 = call float @dx.op.binary.f32(i32 35, float %3493, float 0.000000e+00)  ; FMax(a,b)
  %3503 = call float @dx.op.binary.f32(i32 35, float %3387, float 0.000000e+00)  ; FMax(a,b)
  %3504 = call float @dx.op.binary.f32(i32 35, float %3443, float 0.000000e+00)  ; FMax(a,b)
  %3505 = call float @dx.op.binary.f32(i32 35, float %3499, float 0.000000e+00)  ; FMax(a,b)
  %3506 = fsub fast float %2700, %3500
  %3507 = fsub fast float %2701, %3501
  %3508 = fsub fast float %2702, %3502
  %3509 = fmul fast float %3506, %2379
  %3510 = fmul fast float %3507, %2379
  %3511 = fmul fast float %3508, %2379
  %3512 = fadd fast float %3509, %3500
  %3513 = fadd fast float %3510, %3501
  %3514 = fadd fast float %3511, %3502
  %3515 = fsub fast float %2697, %3503
  %3516 = fsub fast float %2698, %3504
  %3517 = fsub fast float %2699, %3505
  %3518 = fmul fast float %3515, %2379
  %3519 = fmul fast float %3516, %2379
  %3520 = fmul fast float %3517, %2379
  %3521 = fadd fast float %3518, %3503
  %3522 = fadd fast float %3519, %3504
  %3523 = fadd fast float %3520, %3505
  %3524 = fsub fast float %2481, %3304
  %3525 = fmul fast float %3524, %2379
  %3526 = fadd fast float %3525, %3304
  br label %3527

; <label>:3527                                    ; preds = %3478, %2696
  %3528 = phi float [ %3526, %3478 ], [ %2481, %2696 ]
  %3529 = phi float [ %3521, %3478 ], [ %2697, %2696 ]
  %3530 = phi float [ %3522, %3478 ], [ %2698, %2696 ]
  %3531 = phi float [ %3523, %3478 ], [ %2699, %2696 ]
  %3532 = phi float [ %3512, %3478 ], [ %2700, %2696 ]
  %3533 = phi float [ %3513, %3478 ], [ %2701, %2696 ]
  %3534 = phi float [ %3514, %3478 ], [ %2702, %2696 ]
  %3535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3536 = extractvalue %dx.types.CBufRet.f32 %3535, 0
  %3537 = call float @dx.op.binary.f32(i32 36, float %2296, float %3536)  ; FMin(a,b)
  %3538 = fmul fast float %3537, %2320
  %3539 = fsub fast float 1.000000e+00, %3538
  %3540 = bitcast float %3539 to i32
  %3541 = sub nsw i32 2129859010, %3540
  %3542 = bitcast i32 %3541 to float
  %3543 = call float @dx.op.binary.f32(i32 36, float %2297, float %3536)  ; FMin(a,b)
  %3544 = fmul fast float %3543, %2320
  %3545 = fsub fast float 1.000000e+00, %3544
  %3546 = bitcast float %3545 to i32
  %3547 = sub nsw i32 2129859010, %3546
  %3548 = bitcast i32 %3547 to float
  %3549 = call float @dx.op.binary.f32(i32 36, float %2298, float %3536)  ; FMin(a,b)
  %3550 = fmul fast float %3549, %2320
  %3551 = fsub fast float 1.000000e+00, %3550
  %3552 = bitcast float %3551 to i32
  %3553 = sub nsw i32 2129859010, %3552
  %3554 = bitcast i32 %3553 to float
  %3555 = fmul fast float %3532, %2319
  %3556 = fmul fast float %3555, %3542
  %3557 = fmul fast float %3533, %2319
  %3558 = fmul fast float %3557, %3548
  %3559 = fmul fast float %3534, %2319
  %3560 = fmul fast float %3559, %3554
  %3561 = call float @dx.op.binary.f32(i32 36, float %2302, float %3536)  ; FMin(a,b)
  %3562 = fmul fast float %3561, %2320
  %3563 = fsub fast float 1.000000e+00, %3562
  %3564 = bitcast float %3563 to i32
  %3565 = sub nsw i32 2129859010, %3564
  %3566 = bitcast i32 %3565 to float
  %3567 = call float @dx.op.binary.f32(i32 36, float %2303, float %3536)  ; FMin(a,b)
  %3568 = fmul fast float %3567, %2320
  %3569 = fsub fast float 1.000000e+00, %3568
  %3570 = bitcast float %3569 to i32
  %3571 = sub nsw i32 2129859010, %3570
  %3572 = bitcast i32 %3571 to float
  %3573 = call float @dx.op.binary.f32(i32 36, float %2308, float %3536)  ; FMin(a,b)
  %3574 = fmul fast float %3573, %2320
  %3575 = fsub fast float 1.000000e+00, %3574
  %3576 = bitcast float %3575 to i32
  %3577 = sub nsw i32 2129859010, %3576
  %3578 = bitcast i32 %3577 to float
  %3579 = fmul fast float %3529, %2319
  %3580 = fmul fast float %3579, %3566
  %3581 = fmul fast float %3530, %2319
  %3582 = fmul fast float %3581, %3572
  %3583 = fmul fast float %3531, %2319
  %3584 = fmul fast float %3583, %3578
  %3585 = call float @dx.op.dot3.f32(i32 55, float %3556, float %3558, float %3560, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3586 = select i1 %239, float 0.000000e+00, float %3556
  %3587 = select i1 %239, float %3585, float %3558
  %3588 = select i1 %239, float 0.000000e+00, float %3560
  %3589 = call float @dx.op.dot3.f32(i32 55, float %3580, float %3582, float %3584, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3590 = select i1 %239, float 0.000000e+00, float %3580
  %3591 = select i1 %239, float %3589, float %3582
  %3592 = select i1 %239, float 0.000000e+00, float %3584
  %3593 = fmul fast float %1126, %1126
  %3594 = call float @dx.op.unary.f32(i32 7, float %3593)  ; Saturate(value)
  %3595 = fmul fast float %2310, 9.843750e-01
  %3596 = fmul fast float %2305, 9.843750e-01
  %3597 = fadd fast float %3595, 7.812500e-03
  %3598 = fadd fast float %3596, 7.812500e-03
  %3599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %60, %dx.types.Handle %65, float %3597, float %3598, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 0
  %3601 = extractvalue %dx.types.ResRet.f32 %3599, 1
  %3602 = extractvalue %dx.types.ResRet.f32 %3599, 2
  %3603 = extractvalue %dx.types.ResRet.f32 %3599, 3
  %3604 = fsub fast float 1.000000e+00, %3594
  %3605 = fsub fast float %3602, %3600
  %3606 = fsub fast float %3603, %3601
  %3607 = fmul fast float %3605, %3604
  %3608 = fmul fast float %3606, %3604
  %3609 = fadd fast float %3607, %3600
  %3610 = fadd fast float %3608, %3601
  %3611 = fmul fast float %3609, %2302
  %3612 = fmul fast float %3609, %2303
  %3613 = fmul fast float %3609, %2308
  %3614 = fadd fast float %3611, %3610
  %3615 = fadd fast float %3612, %3610
  %3616 = fadd fast float %3613, %3610
  %3617 = fcmp fast ogt float %1670, 0.000000e+00
  br i1 %3617, label %3618, label %3644

; <label>:3618                                    ; preds = %3527
  %3619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %65, float %1670, float %2310, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3620 = extractvalue %dx.types.ResRet.f32 %3619, 0
  %3621 = extractvalue %dx.types.ResRet.f32 %3619, 1
  %3622 = extractvalue %dx.types.ResRet.f32 %3619, 2
  %3623 = fadd fast float %3620, -5.000000e-01
  %3624 = fadd fast float %3621, -5.000000e-01
  %3625 = fadd fast float %3622, -5.000000e-01
  %3626 = fsub fast float 1.000000e+00, %2302
  %3627 = fsub fast float 1.000000e+00, %2303
  %3628 = fsub fast float 1.000000e+00, %2308
  %3629 = fmul fast float %2302, 4.000000e+00
  %3630 = fmul fast float %3629, %3626
  %3631 = fmul fast float %3630, %3623
  %3632 = fmul fast float %2303, 4.000000e+00
  %3633 = fmul fast float %3632, %3627
  %3634 = fmul fast float %3633, %3624
  %3635 = fmul fast float %2308, 4.000000e+00
  %3636 = fmul fast float %3635, %3628
  %3637 = fmul fast float %3636, %3625
  %3638 = fadd fast float %3631, %3614
  %3639 = fadd fast float %3634, %3615
  %3640 = fadd fast float %3637, %3616
  %3641 = call float @dx.op.unary.f32(i32 7, float %3638)  ; Saturate(value)
  %3642 = call float @dx.op.unary.f32(i32 7, float %3639)  ; Saturate(value)
  %3643 = call float @dx.op.unary.f32(i32 7, float %3640)  ; Saturate(value)
  br label %3644

; <label>:3644                                    ; preds = %3618, %3527
  %3645 = phi float [ %3641, %3618 ], [ %3614, %3527 ]
  %3646 = phi float [ %3642, %3618 ], [ %3615, %3527 ]
  %3647 = phi float [ %3643, %3618 ], [ %3616, %3527 ]
  %3648 = call float @dx.op.binary.f32(i32 35, float %3646, float %3647)  ; FMax(a,b)
  %3649 = call float @dx.op.binary.f32(i32 35, float %3645, float %3648)  ; FMax(a,b)
  %3650 = fsub fast float 1.000000e+00, %3649
  %3651 = fmul fast float %3649, %2305
  %3652 = fadd fast float %3651, %2305
  %3653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3654 = extractvalue %dx.types.CBufRet.f32 %3653, 2
  %3655 = extractvalue %dx.types.CBufRet.f32 %3653, 3
  %3656 = fmul fast float %3652, %3654
  %3657 = fadd fast float %3656, %3655
  %3658 = call float @dx.op.unary.f32(i32 7, float %3657)  ; Saturate(value)
  %3659 = fsub fast float 1.000000e+00, %2331
  %3660 = fadd fast float %3659, %3658
  %3661 = call float @dx.op.unary.f32(i32 7, float %3660)  ; Saturate(value)
  %3662 = fcmp fast olt float %3661, 1.000000e+00
  br i1 %3662, label %3663, label %4245

; <label>:3663                                    ; preds = %3644
  %3664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3665 = extractvalue %dx.types.CBufRet.f32 %3664, 2
  %3666 = extractvalue %dx.types.CBufRet.f32 %3664, 3
  %3667 = fmul fast float %3665, %101
  %3668 = fmul fast float %3666, %102
  %3669 = fptoui float %3667 to i32
  %3670 = fptoui float %3668 to i32
  %3671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3672 = extractvalue %dx.types.CBufRet.f32 %3671, 0
  %3673 = extractvalue %dx.types.CBufRet.f32 %3671, 2
  %3674 = extractvalue %dx.types.CBufRet.f32 %3671, 3
  %3675 = fadd fast float %89, -4.000000e+00
  %3676 = call float @dx.op.binary.f32(i32 35, float %3675, float 0.000000e+00)  ; FMax(a,b)
  %3677 = fadd fast float %3676, %3672
  %3678 = fmul fast float %3677, %3673
  %3679 = call float @dx.op.unary.f32(i32 23, float %3678)  ; Log(value)
  %3680 = fmul fast float %3679, %3674
  %3681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3682 = extractvalue %dx.types.CBufRet.f32 %3681, 2
  %3683 = fmul fast float %3680, %3682
  %3684 = call float @dx.op.unary.f32(i32 7, float %3683)  ; Saturate(value)
  %3685 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3686 = extractvalue %dx.types.CBufRet.i32 %3685, 1
  %3687 = add i32 %3686, -1
  %3688 = uitofp i32 %3686 to float
  %3689 = fmul fast float %3688, %3684
  %3690 = fptoui float %3689 to i32
  %3691 = call i32 @dx.op.binary.i32(i32 40, i32 %3690, i32 %3687)  ; UMin(a,b)
  %3692 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3693 = extractvalue %dx.types.CBufRet.i32 %3692, 2
  %3694 = extractvalue %dx.types.CBufRet.i32 %3692, 3
  %3695 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3670, i32 %3693, i32 %3669)  ; UMad(a,b,c)
  %3696 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3691, i32 %3694, i32 %3695)  ; UMad(a,b,c)
  %3697 = call float @dx.op.binary.f32(i32 35, float %89, float 0.000000e+00)  ; FMax(a,b)
  %3698 = fptoui float %3697 to i32
  %3699 = lshr i32 %3698, 5
  %3700 = call i32 @dx.op.binary.i32(i32 40, i32 %3699, i32 8191)  ; UMin(a,b)
  %3701 = fsub fast float %2095, %150
  %3702 = call float @dx.op.unary.f32(i32 7, float %3701)  ; Saturate(value)
  %3703 = fcmp fast ogt float %3702, 0.000000e+00
  %3704 = fcmp fast ogt float %2318, 0.000000e+00
  %3705 = and i1 %3704, %3703
  br i1 %3705, label %3706, label %3735

; <label>:3706                                    ; preds = %3663
  %3707 = call float @dx.op.dot3.f32(i32 55, float %2316, float %2317, float %2318, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3708 = call float @dx.op.binary.f32(i32 35, float %3707, float -1.000000e+00)  ; FMax(a,b)
  %3709 = call float @dx.op.binary.f32(i32 36, float %3708, float 1.000000e+00)  ; FMin(a,b)
  %3710 = fmul fast float %3709, %3709
  %3711 = fsub fast float 1.000000e+00, %3710
  %3712 = fmul fast float %3711, 0x3FFC6E2300000000
  %3713 = fsub fast float 1.000000e+00, %3712
  %3714 = fcmp fast ogt float %3713, 0.000000e+00
  %3715 = call float @dx.op.unary.f32(i32 24, float %3713)  ; Sqrt(value)
  %3716 = fsub fast float 1.000000e+00, %3715
  %3717 = call float @dx.op.unary.f32(i32 23, float %3716)  ; Log(value)
  %3718 = fmul fast float %3717, 5.000000e+00
  %3719 = call float @dx.op.unary.f32(i32 21, float %3718)  ; Exp(value)
  %3720 = fmul fast float %3719, 0x3FEF591A60000000
  %3721 = fadd fast float %3720, 0x3F94DCB540000000
  %3722 = select i1 %3714, float %3721, float 1.000000e+00
  %3723 = fcmp fast oge float %3722, 1.000000e+00
  %3724 = fmul fast float %3707, 2.000000e+00
  %3725 = fadd fast float %3724, %2318
  %3726 = select i1 %3723, float %3725, float %2318
  %3727 = fsub fast float %3726, %2318
  %3728 = fmul fast float %3727, %3702
  %3729 = fadd fast float %3728, %2318
  %3730 = call float @dx.op.dot3.f32(i32 55, float %2316, float %2317, float %3729, float %2316, float %2317, float %3729)  ; Dot3(ax,ay,az,bx,by,bz)
  %3731 = call float @dx.op.unary.f32(i32 25, float %3730)  ; Rsqrt(value)
  %3732 = fmul fast float %3731, %2316
  %3733 = fmul fast float %3731, %2317
  %3734 = fmul fast float %3729, %3731
  br label %3735

; <label>:3735                                    ; preds = %3706, %3663
  %3736 = phi float [ %3732, %3706 ], [ %2316, %3663 ]
  %3737 = phi float [ %3733, %3706 ], [ %2317, %3663 ]
  %3738 = phi float [ %3734, %3706 ], [ %2318, %3663 ]
  %3739 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3740 = extractvalue %dx.types.CBufRet.i32 %3739, 2
  %3741 = add nsw i32 %3740, -1
  %3742 = call i32 @dx.op.binary.i32(i32 37, i32 %3741, i32 0)  ; IMax(a,b)
  %3743 = shl i32 %3700, 2
  %3744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3743, i32 undef)  ; BufferLoad(srv,index,wot)
  %3745 = extractvalue %dx.types.ResRet.i32 %3744, 0
  %3746 = lshr i32 %3745, 16
  %3747 = and i32 %3745, 65535
  %3748 = lshr i32 %3745, 21
  %3749 = lshr i32 %3747, 5
  %3750 = call i32 @dx.op.binary.i32(i32 40, i32 %3749, i32 %3742)  ; UMin(a,b)
  %3751 = icmp ugt i32 %3748, %3750
  br i1 %3751, label %4133, label %3752

; <label>:3752                                    ; preds = %3735
  br label %3753

; <label>:3753                                    ; preds = %4122, %3752
  %3754 = phi float [ %4123, %4122 ], [ 0.000000e+00, %3752 ]
  %3755 = phi float [ %4124, %4122 ], [ 0.000000e+00, %3752 ]
  %3756 = phi float [ %4125, %4122 ], [ 0.000000e+00, %3752 ]
  %3757 = phi float [ %4126, %4122 ], [ 1.000000e+00, %3752 ]
  %3758 = phi i32 [ %4130, %4122 ], [ %3748, %3752 ]
  %3759 = phi float [ %4127, %4122 ], [ 0.000000e+00, %3752 ]
  %3760 = phi float [ %4128, %4122 ], [ 0.000000e+00, %3752 ]
  %3761 = phi float [ %4129, %4122 ], [ 0.000000e+00, %3752 ]
  %3762 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3763 = extractvalue %dx.types.CBufRet.i32 %3762, 2
  %3764 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3696, i32 %3763, i32 %3758)  ; UMad(a,b,c)
  %3765 = shl i32 %3764, 2
  %3766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3765, i32 undef)  ; BufferLoad(srv,index,wot)
  %3767 = extractvalue %dx.types.ResRet.i32 %3766, 0
  %3768 = shl i32 %3758, 5
  %3769 = sub nsw i32 %3746, %3768
  %3770 = call i32 @dx.op.binary.i32(i32 37, i32 %3769, i32 0)  ; IMax(a,b)
  %3771 = call i32 @dx.op.binary.i32(i32 38, i32 %3770, i32 31)  ; IMin(a,b)
  %3772 = sub nsw i32 1, %3746
  %3773 = add nsw i32 %3772, %3747
  %3774 = call i32 @dx.op.binary.i32(i32 37, i32 %3773, i32 0)  ; IMax(a,b)
  %3775 = call i32 @dx.op.binary.i32(i32 38, i32 %3774, i32 32)  ; IMin(a,b)
  %3776 = and i32 %3775, 31
  %3777 = shl i32 -1, %3776
  %3778 = xor i32 %3777, -1
  %3779 = and i32 %3771, 31
  %3780 = shl i32 %3778, %3779
  %3781 = icmp eq i32 %3775, 32
  %3782 = select i1 %3781, i32 -1, i32 %3780
  %3783 = and i32 %3782, %3767
  %3784 = icmp eq i32 %3783, 0
  br i1 %3784, label %4122, label %3785

; <label>:3785                                    ; preds = %3753
  br label %3786

; <label>:3786                                    ; preds = %3896, %3785
  %3787 = phi float [ %3897, %3896 ], [ %3754, %3785 ]
  %3788 = phi float [ %3898, %3896 ], [ %3755, %3785 ]
  %3789 = phi float [ %3899, %3896 ], [ %3756, %3785 ]
  %3790 = phi float [ %3900, %3896 ], [ %3757, %3785 ]
  %3791 = phi i32 [ %3799, %3896 ], [ %3783, %3785 ]
  %3792 = phi float [ %3901, %3896 ], [ %3759, %3785 ]
  %3793 = phi float [ %3902, %3896 ], [ %3760, %3785 ]
  %3794 = phi float [ %3903, %3896 ], [ %3761, %3785 ]
  %3795 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3791)  ; FirstbitLo(value)
  %3796 = add i32 %3795, %3768
  %3797 = and i32 %3795, 31
  %3798 = shl i32 1, %3797
  %3799 = xor i32 %3798, %3791
  %3800 = mul i32 %3796, 72
  %3801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3800, i32 undef)  ; BufferLoad(srv,index,wot)
  %3802 = extractvalue %dx.types.ResRet.f32 %3801, 0
  %3803 = extractvalue %dx.types.ResRet.f32 %3801, 1
  %3804 = extractvalue %dx.types.ResRet.f32 %3801, 2
  %3805 = add i32 %3800, 12
  %3806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3807 = extractvalue %dx.types.ResRet.i32 %3806, 0
  %3808 = add i32 %3800, 16
  %3809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3808, i32 undef)  ; BufferLoad(srv,index,wot)
  %3810 = extractvalue %dx.types.ResRet.f32 %3809, 0
  %3811 = extractvalue %dx.types.ResRet.f32 %3809, 1
  %3812 = extractvalue %dx.types.ResRet.f32 %3809, 2
  %3813 = add i32 %3800, 28
  %3814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3815 = extractvalue %dx.types.ResRet.f32 %3814, 0
  %3816 = add i32 %3800, 32
  %3817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.f32 %3817, 0
  %3819 = extractvalue %dx.types.ResRet.f32 %3817, 1
  %3820 = extractvalue %dx.types.ResRet.f32 %3817, 2
  %3821 = extractvalue %dx.types.ResRet.f32 %3817, 3
  %3822 = add i32 %3800, 48
  %3823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.f32 %3823, 0
  %3825 = extractvalue %dx.types.ResRet.f32 %3823, 1
  %3826 = add i32 %3800, 56
  %3827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3828 = extractvalue %dx.types.ResRet.f32 %3827, 0
  %3829 = extractvalue %dx.types.ResRet.f32 %3827, 1
  %3830 = add i32 %3800, 64
  %3831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3830, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = extractvalue %dx.types.ResRet.f32 %3831, 1
  %3834 = mul i32 %3796, 60
  %3835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3836 = extractvalue %dx.types.ResRet.f32 %3835, 0
  %3837 = extractvalue %dx.types.ResRet.f32 %3835, 1
  %3838 = extractvalue %dx.types.ResRet.f32 %3835, 2
  %3839 = add i32 %3834, 12
  %3840 = add i32 %3834, 48
  %3841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.f32 %3841, 0
  %3843 = extractvalue %dx.types.ResRet.f32 %3841, 1
  %3844 = extractvalue %dx.types.ResRet.f32 %3841, 2
  %3845 = and i32 %3807, 32767
  %3846 = bitcast float %3802 to i32
  %3847 = icmp eq i32 %3846, -1
  %3848 = bitcast float %3803 to i32
  %3849 = and i32 %3807, 32768
  %3850 = icmp ne i32 %3849, 0
  %3851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3852 = extractvalue %dx.types.CBufRet.f32 %3851, 0
  %3853 = extractvalue %dx.types.CBufRet.f32 %3851, 1
  %3854 = extractvalue %dx.types.CBufRet.f32 %3851, 2
  %3855 = fsub fast float %3836, %3852
  %3856 = fsub fast float %3837, %3853
  %3857 = fsub fast float %3838, %3854
  %3858 = fsub fast float %148, %3855
  %3859 = fsub fast float %149, %3856
  %3860 = fsub fast float %150, %3857
  %3861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3839, i32 undef)  ; BufferLoad(srv,index,wot)
  %3862 = extractvalue %dx.types.ResRet.f32 %3861, 0
  %3863 = extractvalue %dx.types.ResRet.f32 %3861, 1
  %3864 = extractvalue %dx.types.ResRet.f32 %3861, 2
  %3865 = call float @dx.op.dot3.f32(i32 55, float %3858, float %3859, float %3860, float %3862, float %3863, float %3864)  ; Dot3(ax,ay,az,bx,by,bz)
  %3866 = add i32 %3834, 24
  %3867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3868 = extractvalue %dx.types.ResRet.f32 %3867, 0
  %3869 = extractvalue %dx.types.ResRet.f32 %3867, 1
  %3870 = extractvalue %dx.types.ResRet.f32 %3867, 2
  %3871 = call float @dx.op.dot3.f32(i32 55, float %3858, float %3859, float %3860, float %3868, float %3869, float %3870)  ; Dot3(ax,ay,az,bx,by,bz)
  %3872 = add i32 %3834, 36
  %3873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3872, i32 undef)  ; BufferLoad(srv,index,wot)
  %3874 = extractvalue %dx.types.ResRet.f32 %3873, 0
  %3875 = extractvalue %dx.types.ResRet.f32 %3873, 1
  %3876 = extractvalue %dx.types.ResRet.f32 %3873, 2
  %3877 = call float @dx.op.dot3.f32(i32 55, float %3858, float %3859, float %3860, float %3874, float %3875, float %3876)  ; Dot3(ax,ay,az,bx,by,bz)
  %3878 = call float @dx.op.unary.f32(i32 6, float %3865)  ; FAbs(value)
  %3879 = call float @dx.op.unary.f32(i32 6, float %3871)  ; FAbs(value)
  %3880 = call float @dx.op.unary.f32(i32 6, float %3877)  ; FAbs(value)
  %3881 = fsub fast float %3842, %3878
  %3882 = fsub fast float %3843, %3879
  %3883 = fsub fast float %3844, %3880
  %3884 = fmul fast float %3881, %3810
  %3885 = fmul fast float %3882, %3811
  %3886 = fmul fast float %3883, %3812
  %3887 = call float @dx.op.binary.f32(i32 36, float %3885, float %3886)  ; FMin(a,b)
  %3888 = call float @dx.op.binary.f32(i32 36, float %3884, float %3887)  ; FMin(a,b)
  %3889 = call float @dx.op.unary.f32(i32 7, float %3888)  ; Saturate(value)
  %3890 = call float @dx.op.binary.f32(i32 36, float %3790, float %3889)  ; FMin(a,b)
  %3891 = uitofp i1 %3850 to float
  %3892 = fadd fast float %3702, 1.000000e+00
  %3893 = fsub fast float %3892, %3891
  %3894 = fmul fast float %3890, %3893
  %3895 = fcmp fast ogt float %3894, 0.000000e+00
  br i1 %3895, label %3905, label %3896

; <label>:3896                                    ; preds = %4047, %3786
  %3897 = phi float [ %4111, %4047 ], [ %3787, %3786 ]
  %3898 = phi float [ %4112, %4047 ], [ %3788, %3786 ]
  %3899 = phi float [ %4113, %4047 ], [ %3789, %3786 ]
  %3900 = phi float [ %4120, %4047 ], [ %3790, %3786 ]
  %3901 = phi float [ %4117, %4047 ], [ %3792, %3786 ]
  %3902 = phi float [ %4118, %4047 ], [ %3793, %3786 ]
  %3903 = phi float [ %4119, %4047 ], [ %3794, %3786 ]
  %3904 = icmp eq i32 %3791, %3798
  br i1 %3904, label %4121, label %3786

; <label>:3905                                    ; preds = %3786
  br i1 %3847, label %3963, label %3906

; <label>:3906                                    ; preds = %3905
  %3907 = fsub fast float -0.000000e+00, %3862
  %3908 = fsub fast float -0.000000e+00, %3863
  %3909 = fsub fast float -0.000000e+00, %3864
  %3910 = call float @dx.op.dot3.f32(i32 55, float %3736, float %3737, float %3738, float %3907, float %3908, float %3909)  ; Dot3(ax,ay,az,bx,by,bz)
  %3911 = fsub fast float -0.000000e+00, %3910
  %3912 = call float @dx.op.dot3.f32(i32 55, float %3858, float %3859, float %3860, float %3907, float %3908, float %3909)  ; Dot3(ax,ay,az,bx,by,bz)
  %3913 = fadd fast float %3912, %3825
  %3914 = fadd fast float %3824, %3912
  %3915 = fsub fast float -0.000000e+00, %3914
  %3916 = fcmp ogt float %3910, -0.000000e+00
  %3917 = select i1 %3916, float %3915, float %3913
  %3918 = call float @dx.op.unary.f32(i32 6, float %3911)  ; FAbs(value)
  %3919 = fdiv fast float 1.000000e+00, %3918
  %3920 = fmul fast float %3917, %3919
  %3921 = call float @dx.op.binary.f32(i32 35, float %3920, float 0.000000e+00)  ; FMax(a,b)
  %3922 = fsub fast float -0.000000e+00, %3868
  %3923 = fsub fast float -0.000000e+00, %3869
  %3924 = fsub fast float -0.000000e+00, %3870
  %3925 = call float @dx.op.dot3.f32(i32 55, float %3736, float %3737, float %3738, float %3922, float %3923, float %3924)  ; Dot3(ax,ay,az,bx,by,bz)
  %3926 = fsub fast float -0.000000e+00, %3925
  %3927 = call float @dx.op.dot3.f32(i32 55, float %3858, float %3859, float %3860, float %3922, float %3923, float %3924)  ; Dot3(ax,ay,az,bx,by,bz)
  %3928 = fadd fast float %3927, %3829
  %3929 = fadd fast float %3828, %3927
  %3930 = fsub fast float -0.000000e+00, %3929
  %3931 = fcmp ogt float %3925, -0.000000e+00
  %3932 = select i1 %3931, float %3930, float %3928
  %3933 = call float @dx.op.unary.f32(i32 6, float %3926)  ; FAbs(value)
  %3934 = fdiv fast float 1.000000e+00, %3933
  %3935 = fmul fast float %3932, %3934
  %3936 = call float @dx.op.binary.f32(i32 35, float %3935, float 0.000000e+00)  ; FMax(a,b)
  %3937 = fsub fast float -0.000000e+00, %3874
  %3938 = fsub fast float -0.000000e+00, %3875
  %3939 = fsub fast float -0.000000e+00, %3876
  %3940 = call float @dx.op.dot3.f32(i32 55, float %3736, float %3737, float %3738, float %3937, float %3938, float %3939)  ; Dot3(ax,ay,az,bx,by,bz)
  %3941 = fsub fast float -0.000000e+00, %3940
  %3942 = call float @dx.op.dot3.f32(i32 55, float %3858, float %3859, float %3860, float %3937, float %3938, float %3939)  ; Dot3(ax,ay,az,bx,by,bz)
  %3943 = fadd fast float %3942, %3833
  %3944 = fadd fast float %3832, %3942
  %3945 = fsub fast float -0.000000e+00, %3944
  %3946 = fcmp ogt float %3940, -0.000000e+00
  %3947 = select i1 %3946, float %3945, float %3943
  %3948 = call float @dx.op.unary.f32(i32 6, float %3941)  ; FAbs(value)
  %3949 = fdiv fast float 1.000000e+00, %3948
  %3950 = fmul fast float %3947, %3949
  %3951 = call float @dx.op.binary.f32(i32 35, float %3950, float 0.000000e+00)  ; FMax(a,b)
  %3952 = call float @dx.op.binary.f32(i32 36, float %3936, float %3951)  ; FMin(a,b)
  %3953 = call float @dx.op.binary.f32(i32 36, float %3921, float %3952)  ; FMin(a,b)
  %3954 = fmul fast float %3953, %3736
  %3955 = fmul fast float %3953, %3737
  %3956 = fmul fast float %3953, %3738
  %3957 = fadd fast float %3954, %148
  %3958 = fadd fast float %3955, %149
  %3959 = fadd fast float %3956, %150
  %3960 = fsub fast float %3957, %3802
  %3961 = fsub fast float %3958, %3803
  %3962 = fsub fast float %3959, %3804
  br label %3970

; <label>:3963                                    ; preds = %3905
  %3964 = fmul fast float %3736, 8.096000e+03
  %3965 = fmul fast float %3737, 8.096000e+03
  %3966 = fmul fast float %3738, 8.096000e+03
  %3967 = fadd fast float %3964, %148
  %3968 = fadd fast float %3965, %149
  %3969 = fadd fast float %3966, %150
  br label %3970

; <label>:3970                                    ; preds = %3963, %3906
  %3971 = phi float [ %3736, %3963 ], [ %3960, %3906 ]
  %3972 = phi float [ %3737, %3963 ], [ %3961, %3906 ]
  %3973 = phi float [ %3738, %3963 ], [ %3962, %3906 ]
  %3974 = phi float [ %3967, %3963 ], [ %3957, %3906 ]
  %3975 = phi float [ %3968, %3963 ], [ %3958, %3906 ]
  %3976 = phi float [ %3969, %3963 ], [ %3959, %3906 ]
  %3977 = fcmp fast olt float %3821, 1.000000e+00
  br i1 %3977, label %3978, label %4009, !dx.controlflow.hints !113

; <label>:3978                                    ; preds = %3970
  %3979 = fmul fast float %3973, %3819
  %3980 = fmul fast float %3972, %3820
  %3981 = fsub fast float %3979, %3980
  %3982 = fmul fast float %3971, %3820
  %3983 = fmul fast float %3973, %3818
  %3984 = fsub fast float %3982, %3983
  %3985 = fmul fast float %3972, %3818
  %3986 = fmul fast float %3971, %3819
  %3987 = fsub fast float %3985, %3986
  %3988 = fmul fast float %3981, 2.000000e+00
  %3989 = fmul fast float %3984, 2.000000e+00
  %3990 = fmul fast float %3987, 2.000000e+00
  %3991 = fmul fast float %3988, %3821
  %3992 = fmul fast float %3989, %3821
  %3993 = fmul fast float %3990, %3821
  %3994 = fmul fast float %3990, %3819
  %3995 = fmul fast float %3989, %3820
  %3996 = fmul fast float %3988, %3820
  %3997 = fmul fast float %3990, %3818
  %3998 = fmul fast float %3989, %3818
  %3999 = fmul fast float %3988, %3819
  %4000 = fadd fast float %3994, %3971
  %4001 = fadd fast float %4000, %3991
  %4002 = fsub fast float %4001, %3995
  %4003 = fsub fast float %3972, %3997
  %4004 = fadd fast float %4003, %3992
  %4005 = fadd fast float %4004, %3996
  %4006 = fadd fast float %3993, %3973
  %4007 = fsub fast float %4006, %3999
  %4008 = fadd fast float %4007, %3998
  br label %4009

; <label>:4009                                    ; preds = %3978, %3970
  %4010 = phi float [ %4002, %3978 ], [ %3971, %3970 ]
  %4011 = phi float [ %4005, %3978 ], [ %3972, %3970 ]
  %4012 = phi float [ %4008, %3978 ], [ %3973, %3970 ]
  br i1 %3847, label %4044, label %4013

; <label>:4013                                    ; preds = %4009
  %4014 = fmul fast float %2305, 0x400187C840000000
  %4015 = fadd fast float %4014, 0xC00EFC2120000000
  %4016 = fmul fast float %4015, %2305
  %4017 = fadd fast float %4016, 0x3FE5D16340000000
  %4018 = fmul fast float %4017, %2305
  %4019 = fadd fast float %4018, 1.000000e+00
  %4020 = call float @dx.op.unary.f32(i32 7, float %4019)  ; Saturate(value)
  %4021 = fsub fast float %3974, %148
  %4022 = fsub fast float %3975, %149
  %4023 = fsub fast float %3976, %150
  %4024 = fsub fast float %3974, %3802
  %4025 = fsub fast float %3975, %3803
  %4026 = fsub fast float %3976, %3804
  %4027 = call float @dx.op.dot3.f32(i32 55, float %4021, float %4022, float %4023, float %4021, float %4022, float %4023)  ; Dot3(ax,ay,az,bx,by,bz)
  %4028 = call float @dx.op.dot3.f32(i32 55, float %4024, float %4025, float %4026, float %4024, float %4025, float %4026)  ; Dot3(ax,ay,az,bx,by,bz)
  %4029 = fadd fast float %4028, 0x3EE4F8B580000000
  %4030 = fdiv fast float %4027, %4029
  %4031 = bitcast float %4030 to i32
  %4032 = ashr i32 %4031, 1
  %4033 = add nsw i32 %4032, 532487669
  %4034 = bitcast i32 %4033 to float
  %4035 = fmul fast float %4034, %4020
  %4036 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4037 = fmul fast float %4036, 0x4009981AE0000000
  %4038 = fsub fast float 0x40111BBD80000000, %4037
  %4039 = fmul fast float %4038, %4036
  %4040 = fadd fast float %4039, 0xC0009F6020000000
  %4041 = fmul fast float %4040, %4036
  %4042 = fadd fast float %4041, 1.000000e+00
  %4043 = call float @dx.op.unary.f32(i32 7, float %4042)  ; Saturate(value)
  br label %4047

; <label>:4044                                    ; preds = %4009
  %4045 = icmp ne i32 %3848, -1
  %4046 = zext i1 %4045 to i32
  br label %4047

; <label>:4047                                    ; preds = %4044, %4013
  %4048 = phi float [ %2305, %4044 ], [ %4043, %4013 ]
  %4049 = phi i32 [ %4046, %4044 ], [ 0, %4013 ]
  %4050 = fmul float %4048, 5.000000e+00
  %4051 = fsub float 5.000000e+00, %4050
  %4052 = icmp ne i32 %4049, 0
  %4053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.f32 %4053, 3
  %4055 = fadd fast float %4054, %4051
  %4056 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4055)  ; FMax(a,b)
  %4057 = call float @dx.op.unary.f32(i32 6, float %4010)  ; FAbs(value)
  %4058 = call float @dx.op.unary.f32(i32 6, float %4011)  ; FAbs(value)
  %4059 = fadd fast float %4058, %4057
  %4060 = call float @dx.op.unary.f32(i32 6, float %4012)  ; FAbs(value)
  %4061 = fadd fast float %4059, %4060
  %4062 = fcmp fast oeq float %4061, 0.000000e+00
  %4063 = fdiv fast float 1.000000e+00, %4061
  %4064 = select i1 %4062, float 1.000000e+00, float %4063
  %4065 = fmul fast float %4064, %4010
  %4066 = fmul fast float %4064, %4011
  %4067 = call float @dx.op.unary.f32(i32 6, float %4066)  ; FAbs(value)
  %4068 = call float @dx.op.unary.f32(i32 6, float %4065)  ; FAbs(value)
  %4069 = fsub fast float 1.000000e+00, %4067
  %4070 = fsub fast float 1.000000e+00, %4068
  %4071 = fcmp fast oge float %4065, 0.000000e+00
  %4072 = fcmp fast oge float %4066, 0.000000e+00
  %4073 = select i1 %4071, float 1.000000e+00, float -1.000000e+00
  %4074 = select i1 %4072, float 1.000000e+00, float -1.000000e+00
  %4075 = fcmp fast ole float %4012, 0.000000e+00
  %4076 = fmul fast float %4073, %4069
  %4077 = fmul fast float %4074, %4070
  %4078 = select i1 %4075, float %4076, float %4065
  %4079 = select i1 %4075, float %4077, float %4066
  %4080 = fmul fast float %4078, 5.000000e-01
  %4081 = fmul fast float %4079, 5.000000e-01
  %4082 = fadd fast float %4080, 5.000000e-01
  %4083 = fadd fast float %4081, 5.000000e-01
  %4084 = uitofp i32 %3845 to float
  %4085 = call float @dx.op.binary.f32(i32 36, float %4056, float 3.000000e+00)  ; FMin(a,b)
  %4086 = fadd fast float %4085, 2.000000e+00
  %4087 = call float @dx.op.unary.f32(i32 21, float %4086)  ; Exp(value)
  %4088 = extractvalue %dx.types.CBufRet.f32 %4053, 1
  %4089 = fmul fast float %4088, %4087
  %4090 = fmul fast float %4089, 2.000000e+00
  %4091 = fsub fast float 1.000000e+00, %4090
  %4092 = fmul fast float %4082, %4091
  %4093 = fmul fast float %4083, %4091
  %4094 = fadd fast float %4092, %4089
  %4095 = fadd fast float %4093, %4089
  %4096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %63, float %4094, float %4095, float %4084, float undef, i32 0, i32 0, i32 undef, float %4056)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4097 = extractvalue %dx.types.ResRet.f32 %4096, 0
  %4098 = extractvalue %dx.types.ResRet.f32 %4096, 1
  %4099 = extractvalue %dx.types.ResRet.f32 %4096, 2
  %4100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4101 = extractvalue %dx.types.CBufRet.f32 %4100, 3
  %4102 = fmul fast float %4101, %3815
  %4103 = call float @dx.op.binary.f32(i32 36, float %3528, float %4102)  ; FMin(a,b)
  %4104 = select i1 %4052, float %4103, float %4102
  %4105 = fmul fast float %4097, %3894
  %4106 = fmul fast float %4105, %4104
  %4107 = fmul fast float %4098, %3894
  %4108 = fmul fast float %4107, %4104
  %4109 = fmul fast float %4099, %3894
  %4110 = fmul fast float %4109, %4104
  %4111 = fadd fast float %4106, %3787
  %4112 = fadd fast float %4108, %3788
  %4113 = fadd fast float %4110, %3789
  %4114 = fmul fast float %3974, %3894
  %4115 = fmul fast float %3975, %3894
  %4116 = fmul fast float %3976, %3894
  %4117 = fadd fast float %4114, %3792
  %4118 = fadd fast float %4115, %3793
  %4119 = fadd fast float %4116, %3794
  %4120 = fsub fast float %3790, %3894
  br label %3896

; <label>:4121                                    ; preds = %3896
  br label %4122

; <label>:4122                                    ; preds = %4121, %3753
  %4123 = phi float [ %3754, %3753 ], [ %3897, %4121 ]
  %4124 = phi float [ %3755, %3753 ], [ %3898, %4121 ]
  %4125 = phi float [ %3756, %3753 ], [ %3899, %4121 ]
  %4126 = phi float [ %3757, %3753 ], [ %3900, %4121 ]
  %4127 = phi float [ %3759, %3753 ], [ %3901, %4121 ]
  %4128 = phi float [ %3760, %3753 ], [ %3902, %4121 ]
  %4129 = phi float [ %3761, %3753 ], [ %3903, %4121 ]
  %4130 = add i32 %3758, 1
  %4131 = icmp ugt i32 %4130, %3750
  br i1 %4131, label %4132, label %3753, !llvm.loop !114

; <label>:4132                                    ; preds = %4122
  br label %4133

; <label>:4133                                    ; preds = %4132, %3735
  %4134 = phi float [ 0.000000e+00, %3735 ], [ %4123, %4132 ]
  %4135 = phi float [ 0.000000e+00, %3735 ], [ %4124, %4132 ]
  %4136 = phi float [ 0.000000e+00, %3735 ], [ %4125, %4132 ]
  %4137 = phi float [ 0.000000e+00, %3735 ], [ %4127, %4132 ]
  %4138 = phi float [ 0.000000e+00, %3735 ], [ %4128, %4132 ]
  %4139 = phi float [ 0.000000e+00, %3735 ], [ %4129, %4132 ]
  %4140 = call float @dx.op.dot3.f32(i32 55, float %4134, float %4135, float %4136, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4141 = select i1 %239, float 0.000000e+00, float %4134
  %4142 = select i1 %239, float %4140, float %4135
  %4143 = select i1 %239, float 0.000000e+00, float %4136
  %4144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4145 = extractvalue %dx.types.CBufRet.f32 %4144, 0
  %4146 = extractvalue %dx.types.CBufRet.f32 %4144, 1
  %4147 = extractvalue %dx.types.CBufRet.f32 %4144, 2
  %4148 = extractvalue %dx.types.CBufRet.f32 %4144, 3
  %4149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4150 = extractvalue %dx.types.CBufRet.f32 %4149, 0
  %4151 = extractvalue %dx.types.CBufRet.f32 %4149, 1
  %4152 = extractvalue %dx.types.CBufRet.f32 %4149, 2
  %4153 = extractvalue %dx.types.CBufRet.f32 %4149, 3
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 0
  %4156 = extractvalue %dx.types.CBufRet.f32 %4154, 1
  %4157 = extractvalue %dx.types.CBufRet.f32 %4154, 2
  %4158 = extractvalue %dx.types.CBufRet.f32 %4154, 3
  %4159 = call float @dx.op.dot3.f32(i32 55, float %4155, float %4156, float %4157, float %2316, float %2317, float %2318)  ; Dot3(ax,ay,az,bx,by,bz)
  %4160 = call float @dx.op.dot3.f32(i32 55, float %4137, float %4138, float %4139, float %4155, float %4156, float %4157)  ; Dot3(ax,ay,az,bx,by,bz)
  %4161 = call float @dx.op.dot3.f32(i32 55, float %148, float %149, float %150, float %4155, float %4156, float %4157)  ; Dot3(ax,ay,az,bx,by,bz)
  %4162 = fadd fast float %2305, -1.000000e+00
  %4163 = fsub fast float %4160, %4161
  %4164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.f32 %4164, 2
  %4166 = fmul fast float %4165, %4160
  %4167 = fdiv fast float 1.600000e+02, %4166
  %4168 = fmul fast float %4162, %4162
  %4169 = fmul fast float %4168, 0xBFB5B17960000000
  %4170 = fmul fast float %4169, %4163
  %4171 = fmul fast float %4170, %4167
  %4172 = call float @dx.op.unary.f32(i32 21, float %4171)  ; Exp(value)
  %4173 = fmul fast float %4172, 0x3FF04B2960000000
  %4174 = fsub fast float 0x3FF04B2960000000, %4173
  %4175 = call float @dx.op.unary.f32(i32 7, float %4174)  ; Saturate(value)
  %4176 = fmul fast float %4175, 4.000000e+00
  %4177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4178 = extractvalue %dx.types.CBufRet.f32 %4177, 0
  %4179 = extractvalue %dx.types.CBufRet.f32 %4177, 1
  %4180 = extractvalue %dx.types.CBufRet.f32 %4177, 2
  %4181 = fadd fast float %4178, %4137
  %4182 = fadd fast float %4179, %4138
  %4183 = fadd fast float %4180, %4139
  %4184 = fmul fast float %4181, %4145
  %4185 = call float @dx.op.tertiary.f32(i32 46, float %4182, float %4146, float %4184)  ; FMad(a,b,c)
  %4186 = call float @dx.op.tertiary.f32(i32 46, float %4183, float %4147, float %4185)  ; FMad(a,b,c)
  %4187 = fadd fast float %4186, %4148
  %4188 = fmul fast float %4181, %4150
  %4189 = call float @dx.op.tertiary.f32(i32 46, float %4182, float %4151, float %4188)  ; FMad(a,b,c)
  %4190 = call float @dx.op.tertiary.f32(i32 46, float %4183, float %4152, float %4189)  ; FMad(a,b,c)
  %4191 = fadd fast float %4190, %4153
  %4192 = fmul fast float %4181, %4155
  %4193 = call float @dx.op.tertiary.f32(i32 46, float %4182, float %4156, float %4192)  ; FMad(a,b,c)
  %4194 = call float @dx.op.tertiary.f32(i32 46, float %4183, float %4157, float %4193)  ; FMad(a,b,c)
  %4195 = fadd fast float %4194, %4158
  %4196 = fdiv fast float %4187, %4195
  %4197 = fdiv fast float %4191, %4195
  %4198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4199 = extractvalue %dx.types.CBufRet.f32 %4198, 0
  %4200 = extractvalue %dx.types.CBufRet.f32 %4198, 1
  %4201 = fmul fast float %4199, %4196
  %4202 = fmul fast float %4200, %4197
  %4203 = extractvalue %dx.types.CBufRet.f32 %4198, 2
  %4204 = extractvalue %dx.types.CBufRet.f32 %4198, 3
  %4205 = fadd fast float %4201, %4203
  %4206 = fadd fast float %4202, %4204
  %4207 = fmul fast float %4159, 8.000000e+00
  %4208 = call float @dx.op.unary.f32(i32 7, float %4207)  ; Saturate(value)
  %4209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4210 = extractvalue %dx.types.CBufRet.f32 %4209, 0
  %4211 = fmul fast float %4205, 2.000000e+00
  %4212 = fmul fast float %4206, 2.000000e+00
  %4213 = fadd fast float %4211, -1.000000e+00
  %4214 = fadd fast float %4212, -1.000000e+00
  %4215 = fmul fast float %4213, %4213
  %4216 = fsub fast float 1.000000e+00, %4215
  %4217 = call float @dx.op.unary.f32(i32 7, float %4216)  ; Saturate(value)
  %4218 = fmul fast float %4214, %4214
  %4219 = fsub fast float 1.000000e+00, %4218
  %4220 = call float @dx.op.unary.f32(i32 7, float %4219)  ; Saturate(value)
  %4221 = fmul fast float %4210, %4217
  %4222 = fmul fast float %4221, %4220
  %4223 = call float @dx.op.unary.f32(i32 7, float %4222)  ; Saturate(value)
  %4224 = fmul fast float %4223, %4208
  %4225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %63, float %4205, float %4206, float undef, float undef, i32 0, i32 0, i32 undef, float %4176)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4226 = extractvalue %dx.types.ResRet.f32 %4225, 0
  %4227 = extractvalue %dx.types.ResRet.f32 %4225, 1
  %4228 = extractvalue %dx.types.ResRet.f32 %4225, 2
  %4229 = select i1 %239, float 0.000000e+00, float %4227
  %4230 = select i1 %239, float 0.000000e+00, float %4228
  %4231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4232 = extractvalue %dx.types.CBufRet.f32 %4231, 2
  %4233 = fmul fast float %4232, %4226
  %4234 = fmul fast float %4229, %4232
  %4235 = fmul fast float %4230, %4232
  %4236 = fsub fast float %4233, %4141
  %4237 = fsub fast float %4234, %4142
  %4238 = fsub fast float %4235, %4143
  %4239 = fmul fast float %4236, %4224
  %4240 = fmul fast float %4237, %4224
  %4241 = fmul fast float %4238, %4224
  %4242 = fadd fast float %4239, %4141
  %4243 = fadd fast float %4240, %4142
  %4244 = fadd fast float %4241, %4143
  br label %4245

; <label>:4245                                    ; preds = %4133, %3644
  %4246 = phi float [ %3590, %3644 ], [ %4242, %4133 ]
  %4247 = phi float [ %3591, %3644 ], [ %4243, %4133 ]
  %4248 = phi float [ %3592, %3644 ], [ %4244, %4133 ]
  %4249 = fmul fast float %3650, %3586
  %4250 = fmul fast float %3650, %3587
  %4251 = fmul fast float %3650, %3588
  %4252 = call float @dx.op.dot3.f32(i32 55, float %2296, float %2297, float %2298, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4253 = fcmp fast ogt float %4252, 0x3E7FF19E20000000
  %4254 = fdiv fast float 1.000000e+00, %4252
  %4255 = select i1 %4253, float %4254, float 0.000000e+00
  %4256 = fmul fast float %4255, %2296
  %4257 = fmul fast float %4255, %2297
  %4258 = fmul fast float %4255, %2298
  %4259 = fadd fast float %4256, -1.000000e+00
  %4260 = fadd fast float %4257, -1.000000e+00
  %4261 = fadd fast float %4258, -1.000000e+00
  %4262 = fmul fast float %4259, 5.000000e-01
  %4263 = fmul fast float %4260, 5.000000e-01
  %4264 = fmul fast float %4261, 5.000000e-01
  %4265 = fadd fast float %4262, 1.000000e+00
  %4266 = fadd fast float %4263, 1.000000e+00
  %4267 = fadd fast float %4264, 1.000000e+00
  %4268 = call float @dx.op.binary.f32(i32 35, float %2310, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4269 = fdiv fast float %1126, %4268
  %4270 = fcmp fast olt float %1718, 1.270000e+02
  %4271 = fcmp fast olt float %1719, 1.270000e+02
  %4272 = fcmp fast olt float %1720, 1.270000e+02
  %4273 = fmul fast float %1718, 0xBFF7154760000000
  %4274 = fmul fast float %4273, %4269
  %4275 = fmul fast float %1719, 0xBFF7154760000000
  %4276 = fmul fast float %4275, %4269
  %4277 = fmul fast float %1720, 0xBFF7154760000000
  %4278 = fmul fast float %4277, %4269
  %4279 = call float @dx.op.unary.f32(i32 21, float %4274)  ; Exp(value)
  %4280 = call float @dx.op.unary.f32(i32 21, float %4276)  ; Exp(value)
  %4281 = call float @dx.op.unary.f32(i32 21, float %4278)  ; Exp(value)
  %4282 = call float @dx.op.unary.f32(i32 7, float %4279)  ; Saturate(value)
  %4283 = call float @dx.op.unary.f32(i32 7, float %4280)  ; Saturate(value)
  %4284 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4285 = select i1 %4270, float %4282, float 0.000000e+00
  %4286 = select i1 %4271, float %4283, float 0.000000e+00
  %4287 = select i1 %4272, float %4284, float 0.000000e+00
  %4288 = fmul fast float %4285, %3650
  %4289 = fmul fast float %4286, %3650
  %4290 = fmul fast float %4287, %3650
  %4291 = fadd fast float %4288, -1.000000e+00
  %4292 = fadd fast float %4289, -1.000000e+00
  %4293 = fadd fast float %4290, -1.000000e+00
  %4294 = fmul fast float %4246, %3645
  %4295 = fmul fast float %4247, %3646
  %4296 = fmul fast float %4248, %3647
  %4297 = fsub fast float 1.000000e+00, %2310
  %4298 = bitcast float %4297 to i32
  %4299 = sitofp i32 %4298 to float
  %4300 = fmul fast float %4299, 5.000000e+00
  %4301 = fadd fast float %4300, 0xC1EFBF8940000000
  %4302 = fptosi float %4301 to i32
  %4303 = bitcast i32 %4302 to float
  %4304 = fmul fast float %4303, %1669
  %4305 = fmul fast float %3586, %4304
  %4306 = fmul fast float %4305, %3650
  %4307 = fmul fast float %4306, %4265
  %4308 = fmul fast float %3587, %4304
  %4309 = fmul fast float %4308, %3650
  %4310 = fmul fast float %4309, %4266
  %4311 = fmul fast float %3588, %4304
  %4312 = fmul fast float %4311, %3650
  %4313 = fmul fast float %4312, %4267
  %4314 = fmul fast float %4249, %1690
  %4315 = fmul fast float %4250, %1690
  %4316 = fmul fast float %4251, %1690
  %4317 = fadd fast float %4294, %1671
  %4318 = fadd fast float %4317, %4307
  %4319 = fmul fast float %4318, %1690
  %4320 = fadd fast float %4295, %1672
  %4321 = fadd fast float %4320, %4310
  %4322 = fmul fast float %4321, %1690
  %4323 = fadd fast float %4296, %1673
  %4324 = fadd fast float %4323, %4313
  %4325 = fmul fast float %4324, %1690
  %4326 = bitcast i32 %2334 to float
  %4327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.f32 %4327, 3
  %4329 = fcmp fast oeq float %4328, 0.000000e+00
  br i1 %4329, label %5883, label %4330

; <label>:4330                                    ; preds = %4245
  %4331 = extractvalue %dx.types.CBufRet.f32 %4327, 0
  %4332 = extractvalue %dx.types.CBufRet.f32 %4327, 1
  %4333 = extractvalue %dx.types.CBufRet.f32 %4327, 2
  %4334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4335 = extractvalue %dx.types.CBufRet.f32 %4334, 0
  %4336 = extractvalue %dx.types.CBufRet.f32 %4334, 1
  %4337 = extractvalue %dx.types.CBufRet.f32 %4334, 2
  %4338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.f32 %4338, 0
  %4340 = extractvalue %dx.types.CBufRet.f32 %4338, 1
  %4341 = call float @dx.op.dot3.f32(i32 55, float %4335, float %4336, float %4337, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4342 = select i1 %239, float %4339, float %4335
  %4343 = select i1 %239, float %4341, float %4336
  %4344 = select i1 %239, float %4340, float %4337
  %4345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4346 = extractvalue %dx.types.CBufRet.f32 %4345, 2
  %4347 = fmul fast float %4346, %77
  %4348 = fmul fast float %4346, %78
  %4349 = fmul fast float %4346, %79
  %4350 = fadd fast float %4347, %148
  %4351 = fadd fast float %4348, %149
  %4352 = fadd fast float %4349, %150
  %4353 = fcmp fast olt float %4328, 0.000000e+00
  br i1 %4353, label %5449, label %4354

; <label>:4354                                    ; preds = %4330
  %4355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.f32 %4355, 0
  %4357 = extractvalue %dx.types.CBufRet.f32 %4355, 1
  %4358 = extractvalue %dx.types.CBufRet.f32 %4355, 2
  %4359 = extractvalue %dx.types.CBufRet.f32 %4355, 3
  %4360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4361 = extractvalue %dx.types.CBufRet.f32 %4360, 0
  %4362 = extractvalue %dx.types.CBufRet.f32 %4360, 1
  %4363 = extractvalue %dx.types.CBufRet.f32 %4360, 2
  %4364 = extractvalue %dx.types.CBufRet.f32 %4360, 3
  %4365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4366 = extractvalue %dx.types.CBufRet.f32 %4365, 0
  %4367 = extractvalue %dx.types.CBufRet.f32 %4365, 1
  %4368 = extractvalue %dx.types.CBufRet.f32 %4365, 2
  %4369 = extractvalue %dx.types.CBufRet.f32 %4365, 3
  %4370 = fmul fast float %4356, %4350
  %4371 = call float @dx.op.tertiary.f32(i32 46, float %4351, float %4357, float %4370)  ; FMad(a,b,c)
  %4372 = call float @dx.op.tertiary.f32(i32 46, float %4352, float %4358, float %4371)  ; FMad(a,b,c)
  %4373 = fadd fast float %4372, %4359
  %4374 = fmul fast float %4361, %4350
  %4375 = call float @dx.op.tertiary.f32(i32 46, float %4351, float %4362, float %4374)  ; FMad(a,b,c)
  %4376 = call float @dx.op.tertiary.f32(i32 46, float %4352, float %4363, float %4375)  ; FMad(a,b,c)
  %4377 = fadd fast float %4376, %4364
  %4378 = fmul fast float %4366, %4350
  %4379 = call float @dx.op.tertiary.f32(i32 46, float %4351, float %4367, float %4378)  ; FMad(a,b,c)
  %4380 = call float @dx.op.tertiary.f32(i32 46, float %4352, float %4368, float %4379)  ; FMad(a,b,c)
  %4381 = fadd fast float %4380, %4369
  %4382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.f32 %4382, 0
  %4384 = extractvalue %dx.types.CBufRet.f32 %4382, 1
  %4385 = extractvalue %dx.types.CBufRet.f32 %4382, 3
  %4386 = fmul fast float %4385, %4373
  %4387 = fmul fast float %4385, %4377
  %4388 = fadd fast float %4386, %4383
  %4389 = fadd fast float %4387, %4384
  %4390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4391 = extractvalue %dx.types.CBufRet.f32 %4390, 0
  %4392 = extractvalue %dx.types.CBufRet.f32 %4390, 1
  %4393 = extractvalue %dx.types.CBufRet.f32 %4390, 3
  %4394 = fmul fast float %4393, %4373
  %4395 = fmul fast float %4393, %4377
  %4396 = fadd fast float %4394, %4391
  %4397 = fadd fast float %4395, %4392
  %4398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4399 = extractvalue %dx.types.CBufRet.f32 %4398, 1
  %4400 = fsub fast float %4399, %4381
  %4401 = extractvalue %dx.types.CBufRet.f32 %4398, 2
  %4402 = fmul fast float %4400, %4401
  %4403 = fsub fast float 1.000000e+00, %4402
  %4404 = call float @dx.op.unary.f32(i32 7, float %4403)  ; Saturate(value)
  %4405 = extractvalue %dx.types.CBufRet.f32 %4390, 2
  %4406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4407 = extractvalue %dx.types.CBufRet.f32 %4406, 2
  %4408 = fadd fast float %4407, %4405
  %4409 = fcmp fast ogt float %4408, 0.000000e+00
  br i1 %4409, label %4410, label %4434

; <label>:4410                                    ; preds = %4354
  %4411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4412 = extractvalue %dx.types.CBufRet.f32 %4411, 0
  %4413 = extractvalue %dx.types.CBufRet.f32 %4411, 1
  %4414 = fsub fast float %4396, %4412
  %4415 = fsub fast float %4397, %4413
  %4416 = fcmp fast olt float %4414, 0.000000e+00
  %4417 = fcmp fast olt float %4415, 0.000000e+00
  %4418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4419 = extractvalue %dx.types.CBufRet.f32 %4418, 0
  %4420 = extractvalue %dx.types.CBufRet.f32 %4418, 1
  %4421 = extractvalue %dx.types.CBufRet.f32 %4418, 2
  %4422 = extractvalue %dx.types.CBufRet.f32 %4418, 3
  %4423 = select i1 %4416, float %4419, float %4421
  %4424 = select i1 %4417, float %4420, float %4422
  %4425 = fmul fast float %4423, %4414
  %4426 = fmul fast float %4424, %4415
  %4427 = call float @dx.op.unary.f32(i32 6, float %4425)  ; FAbs(value)
  %4428 = call float @dx.op.unary.f32(i32 6, float %4426)  ; FAbs(value)
  %4429 = extractvalue %dx.types.CBufRet.f32 %4345, 0
  %4430 = call float @dx.op.binary.f32(i32 35, float %4427, float %4428)  ; FMax(a,b)
  %4431 = fsub fast float %4429, %4430
  %4432 = call float @dx.op.unary.f32(i32 7, float %4431)  ; Saturate(value)
  %4433 = fmul fast float %4432, %4404
  br label %4434

; <label>:4434                                    ; preds = %4410, %4354
  %4435 = phi float [ %4433, %4410 ], [ 0.000000e+00, %4354 ]
  %4436 = extractvalue %dx.types.CBufRet.f32 %4382, 2
  %4437 = extractvalue %dx.types.CBufRet.f32 %4406, 1
  %4438 = fadd fast float %4437, %4436
  %4439 = fcmp fast ogt float %4438, 0.000000e+00
  %4440 = extractvalue %dx.types.CBufRet.f32 %4345, 0
  br i1 %4439, label %4441, label %4464

; <label>:4441                                    ; preds = %4434
  %4442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4443 = extractvalue %dx.types.CBufRet.f32 %4442, 0
  %4444 = extractvalue %dx.types.CBufRet.f32 %4442, 1
  %4445 = fsub fast float %4388, %4443
  %4446 = fsub fast float %4389, %4444
  %4447 = fcmp fast olt float %4445, 0.000000e+00
  %4448 = fcmp fast olt float %4446, 0.000000e+00
  %4449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4450 = extractvalue %dx.types.CBufRet.f32 %4449, 0
  %4451 = extractvalue %dx.types.CBufRet.f32 %4449, 1
  %4452 = extractvalue %dx.types.CBufRet.f32 %4449, 2
  %4453 = extractvalue %dx.types.CBufRet.f32 %4449, 3
  %4454 = select i1 %4447, float %4450, float %4452
  %4455 = select i1 %4448, float %4451, float %4453
  %4456 = fmul fast float %4454, %4445
  %4457 = fmul fast float %4455, %4446
  %4458 = call float @dx.op.unary.f32(i32 6, float %4456)  ; FAbs(value)
  %4459 = call float @dx.op.unary.f32(i32 6, float %4457)  ; FAbs(value)
  %4460 = call float @dx.op.binary.f32(i32 35, float %4458, float %4459)  ; FMax(a,b)
  %4461 = fsub fast float %4440, %4460
  %4462 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4463 = fmul fast float %4462, %4404
  br label %4464

; <label>:4464                                    ; preds = %4441, %4434
  %4465 = phi float [ %4463, %4441 ], [ 0.000000e+00, %4434 ]
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 1
  %4468 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 0
  %4471 = extractvalue %dx.types.CBufRet.f32 %4469, 1
  %4472 = fsub fast float %4373, %4470
  %4473 = fsub fast float %4377, %4471
  %4474 = fcmp fast olt float %4472, 0.000000e+00
  %4475 = fcmp fast olt float %4473, 0.000000e+00
  %4476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4477 = extractvalue %dx.types.CBufRet.f32 %4476, 0
  %4478 = extractvalue %dx.types.CBufRet.f32 %4476, 1
  %4479 = extractvalue %dx.types.CBufRet.f32 %4476, 2
  %4480 = extractvalue %dx.types.CBufRet.f32 %4476, 3
  %4481 = select i1 %4474, float %4477, float %4479
  %4482 = select i1 %4475, float %4478, float %4480
  %4483 = fmul fast float %4481, %4472
  %4484 = fmul fast float %4482, %4473
  %4485 = call float @dx.op.unary.f32(i32 6, float %4483)  ; FAbs(value)
  %4486 = call float @dx.op.unary.f32(i32 6, float %4484)  ; FAbs(value)
  %4487 = call float @dx.op.binary.f32(i32 35, float %4485, float %4486)  ; FMax(a,b)
  %4488 = fsub fast float %4440, %4487
  %4489 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4490 = call float @dx.op.binary.f32(i32 36, float %4489, float %4468)  ; FMin(a,b)
  %4491 = fmul fast float %4490, %4404
  %4492 = fsub fast float %4465, %4491
  %4493 = fsub fast float %4435, %4465
  %4494 = fsub fast float %4493, %4491
  %4495 = call float @dx.op.binary.f32(i32 35, float %4465, float %4435)  ; FMax(a,b)
  %4496 = call float @dx.op.binary.f32(i32 35, float %4491, float %4495)  ; FMax(a,b)
  %4497 = fcmp fast olt float %4496, 1.000000e+00
  br i1 %4497, label %4498, label %4896, !dx.controlflow.hints !116

; <label>:4498                                    ; preds = %4464
  %4499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4500 = extractvalue %dx.types.CBufRet.f32 %4499, 0
  %4501 = fcmp fast une float %4500, 0.000000e+00
  br i1 %4501, label %4502, label %4896, !dx.controlflow.hints !117

; <label>:4502                                    ; preds = %4498
  %4503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4504 = extractvalue %dx.types.CBufRet.f32 %4503, 0
  %4505 = extractvalue %dx.types.CBufRet.f32 %4503, 1
  %4506 = extractvalue %dx.types.CBufRet.f32 %4503, 2
  %4507 = extractvalue %dx.types.CBufRet.f32 %4503, 3
  %4508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4509 = extractvalue %dx.types.CBufRet.f32 %4508, 0
  %4510 = extractvalue %dx.types.CBufRet.f32 %4508, 1
  %4511 = extractvalue %dx.types.CBufRet.f32 %4508, 2
  %4512 = extractvalue %dx.types.CBufRet.f32 %4508, 3
  %4513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4514 = extractvalue %dx.types.CBufRet.f32 %4513, 0
  %4515 = extractvalue %dx.types.CBufRet.f32 %4513, 1
  %4516 = extractvalue %dx.types.CBufRet.f32 %4513, 2
  %4517 = extractvalue %dx.types.CBufRet.f32 %4513, 3
  %4518 = fmul fast float %4504, %4350
  %4519 = call float @dx.op.tertiary.f32(i32 46, float %4351, float %4505, float %4518)  ; FMad(a,b,c)
  %4520 = call float @dx.op.tertiary.f32(i32 46, float %4352, float %4506, float %4519)  ; FMad(a,b,c)
  %4521 = fadd fast float %4520, %4507
  %4522 = fmul fast float %4509, %4350
  %4523 = call float @dx.op.tertiary.f32(i32 46, float %4351, float %4510, float %4522)  ; FMad(a,b,c)
  %4524 = call float @dx.op.tertiary.f32(i32 46, float %4352, float %4511, float %4523)  ; FMad(a,b,c)
  %4525 = fadd fast float %4524, %4512
  %4526 = fmul fast float %4514, %4350
  %4527 = call float @dx.op.tertiary.f32(i32 46, float %4351, float %4515, float %4526)  ; FMad(a,b,c)
  %4528 = call float @dx.op.tertiary.f32(i32 46, float %4352, float %4516, float %4527)  ; FMad(a,b,c)
  %4529 = fadd fast float %4528, %4517
  %4530 = fcmp fast oge float %4521, 1.000000e+00
  %4531 = fcmp fast oge float %4525, 1.000000e+00
  %4532 = or i1 %4530, %4531
  %4533 = fcmp fast olt float %4521, 0.000000e+00
  %4534 = fcmp fast olt float %4525, 0.000000e+00
  %4535 = or i1 %4533, %4534
  %4536 = or i1 %4532, %4535
  br i1 %4536, label %4896, label %4537, !dx.controlflow.hints !118

; <label>:4537                                    ; preds = %4502
  %4538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4539 = extractvalue %dx.types.CBufRet.f32 %4538, 0
  %4540 = extractvalue %dx.types.CBufRet.f32 %4538, 1
  %4541 = extractvalue %dx.types.CBufRet.f32 %4538, 2
  %4542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4543 = extractvalue %dx.types.CBufRet.i32 %4542, 2
  %4544 = uitofp i32 %4543 to float
  %4545 = extractvalue %dx.types.CBufRet.i32 %4542, 3
  %4546 = uitofp i32 %4545 to float
  %4547 = extractvalue %dx.types.CBufRet.f32 %4538, 3
  %4548 = fmul fast float %4547, 2.000000e+00
  %4549 = fsub fast float %4521, %4539
  %4550 = fsub fast float %4525, %4540
  %4551 = fmul fast float %4548, %4549
  %4552 = fmul fast float %4548, %4550
  %4553 = fdiv fast float 1.000000e+00, %4333
  %4554 = fmul fast float %4552, %4553
  %4555 = call float @dx.op.unary.f32(i32 6, float %4554)  ; FAbs(value)
  %4556 = fmul fast float %4541, %4352
  %4557 = fmul fast float %4556, %4548
  %4558 = call float @dx.op.unary.f32(i32 6, float %4557)  ; FAbs(value)
  %4559 = call float @dx.op.unary.f32(i32 6, float %4551)  ; FAbs(value)
  %4560 = call float @dx.op.binary.f32(i32 35, float %4558, float %4555)  ; FMax(a,b)
  %4561 = call float @dx.op.binary.f32(i32 35, float %4559, float %4560)  ; FMax(a,b)
  %4562 = fmul fast float %4561, 2.000000e+00
  %4563 = call float @dx.op.unary.f32(i32 23, float %4562)  ; Log(value)
  %4564 = call float @dx.op.binary.f32(i32 35, float %4563, float %4544)  ; FMax(a,b)
  %4565 = call float @dx.op.unary.f32(i32 22, float %4564)  ; Frc(value)
  %4566 = fadd fast float %4565, 0xBFEA666660000000
  %4567 = fmul fast float %4566, 8.000000e+00
  %4568 = call float @dx.op.unary.f32(i32 7, float %4567)  ; Saturate(value)
  %4569 = call float @dx.op.unary.f32(i32 27, float %4564)  ; Round_ni(value)
  %4570 = fadd fast float %4569, %4568
  %4571 = call float @dx.op.binary.f32(i32 36, float %4570, float %4546)  ; FMin(a,b)
  %4572 = call float @dx.op.unary.f32(i32 27, float %4571)  ; Round_ni(value)
  %4573 = fsub fast float -0.000000e+00, %4572
  %4574 = call float @dx.op.unary.f32(i32 21, float %4573)  ; Exp(value)
  %4575 = fmul fast float %4574, %4548
  %4576 = fmul fast float %4575, %4521
  %4577 = fmul fast float %4575, %4525
  %4578 = fmul fast float %4576, 2.500000e-01
  %4579 = fmul fast float %4577, 2.500000e-01
  %4580 = fadd fast float %4578, 5.000000e-01
  %4581 = fadd fast float %4579, 5.000000e-01
  %4582 = fsub fast float %4546, %4544
  %4583 = fptoui float %4582 to i32
  %4584 = add i32 %4583, 320
  %4585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 %4584)  ; CBufferLoadLegacy(handle,regIndex)
  %4586 = extractvalue %dx.types.CBufRet.f32 %4585, 0
  %4587 = extractvalue %dx.types.CBufRet.f32 %4585, 1
  %4588 = fcmp fast une float %4571, %4546
  %4589 = fsub fast float %4521, %4586
  %4590 = fsub fast float %4525, %4587
  %4591 = call float @dx.op.unary.f32(i32 6, float %4589)  ; FAbs(value)
  %4592 = call float @dx.op.unary.f32(i32 6, float %4590)  ; FAbs(value)
  %4593 = fmul fast float %4591, %4575
  %4594 = fmul fast float %4592, %4575
  %4595 = fcmp fast olt float %4593, 1.000000e+00
  %4596 = fcmp fast olt float %4594, 1.000000e+00
  %4597 = and i1 %4595, %4596
  %4598 = or i1 %4588, %4597
  br i1 %4598, label %4599, label %4896, !dx.controlflow.hints !119

; <label>:4599                                    ; preds = %4537
  %4600 = fmul fast float %4577, 5.000000e-01
  %4601 = fmul fast float %4576, 5.000000e-01
  %4602 = fadd fast float %4600, 5.000000e-01
  %4603 = fadd fast float %4601, 5.000000e-01
  %4604 = sitofp i32 %4543 to float
  %4605 = fsub fast float %4571, %4604
  %4606 = call float @dx.op.unary.f32(i32 27, float %4605)  ; Round_ni(value)
  %4607 = call float @dx.op.unary.f32(i32 22, float %4571)  ; Frc(value)
  %4608 = call float @dx.op.unary.f32(i32 22, float %4603)  ; Frc(value)
  %4609 = call float @dx.op.unary.f32(i32 22, float %4602)  ; Frc(value)
  %4610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %64, float %4608, float %4609, float %4606, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4611 = extractvalue %dx.types.ResRet.f32 %4610, 0
  %4612 = extractvalue %dx.types.ResRet.f32 %4610, 1
  %4613 = extractvalue %dx.types.ResRet.f32 %4610, 2
  %4614 = extractvalue %dx.types.ResRet.f32 %4610, 3
  %4615 = fcmp fast ogt float %4607, 0.000000e+00
  br i1 %4615, label %4616, label %4637, !dx.controlflow.hints !120

; <label>:4616                                    ; preds = %4599
  %4617 = fadd fast float %4606, 1.000000e+00
  %4618 = call float @dx.op.unary.f32(i32 22, float %4580)  ; Frc(value)
  %4619 = call float @dx.op.unary.f32(i32 22, float %4581)  ; Frc(value)
  %4620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %64, float %4618, float %4619, float %4617, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4621 = extractvalue %dx.types.ResRet.f32 %4620, 0
  %4622 = extractvalue %dx.types.ResRet.f32 %4620, 1
  %4623 = extractvalue %dx.types.ResRet.f32 %4620, 2
  %4624 = extractvalue %dx.types.ResRet.f32 %4620, 3
  %4625 = fsub fast float %4621, %4611
  %4626 = fsub fast float %4622, %4612
  %4627 = fsub fast float %4623, %4613
  %4628 = fsub fast float %4624, %4614
  %4629 = fmul fast float %4625, %4607
  %4630 = fmul fast float %4626, %4607
  %4631 = fmul fast float %4627, %4607
  %4632 = fmul fast float %4628, %4607
  %4633 = fadd fast float %4629, %4611
  %4634 = fadd fast float %4630, %4612
  %4635 = fadd fast float %4631, %4613
  %4636 = fadd fast float %4632, %4614
  br label %4637

; <label>:4637                                    ; preds = %4616, %4599
  %4638 = phi float [ %4633, %4616 ], [ %4611, %4599 ]
  %4639 = phi float [ %4634, %4616 ], [ %4612, %4599 ]
  %4640 = phi float [ %4635, %4616 ], [ %4613, %4599 ]
  %4641 = phi float [ %4636, %4616 ], [ %4614, %4599 ]
  %4642 = fadd fast float %4638, -5.000000e-01
  %4643 = fadd fast float %4640, -5.000000e-01
  %4644 = fmul fast float %4642, 0xBFD5555560000000
  %4645 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4643, float %4644)  ; FMad(a,b,c)
  %4646 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4639, float 0.000000e+00)  ; FMad(a,b,c)
  %4647 = fadd fast float %4646, %4641
  %4648 = fmul fast float %4642, -7.500000e-01
  %4649 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4643, float %4648)  ; FMad(a,b,c)
  %4650 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4639, float 0.000000e+00)  ; FMad(a,b,c)
  %4651 = fadd fast float %4650, %4641
  %4652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4653 = extractvalue %dx.types.CBufRet.f32 %4652, 0
  %4654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4655 = extractvalue %dx.types.CBufRet.f32 %4654, 0
  %4656 = extractvalue %dx.types.CBufRet.f32 %4654, 1
  %4657 = extractvalue %dx.types.CBufRet.f32 %4654, 2
  %4658 = extractvalue %dx.types.CBufRet.f32 %4654, 3
  %4659 = fsub fast float %4655, %4645
  %4660 = fsub fast float %4656, %4647
  %4661 = fsub fast float %4657, %4649
  %4662 = fsub fast float %4658, %4651
  %4663 = fmul fast float %4659, %4653
  %4664 = fmul fast float %4660, %4653
  %4665 = fmul fast float %4661, %4653
  %4666 = fmul fast float %4662, %4653
  %4667 = fadd fast float %4663, %4645
  %4668 = fadd fast float %4664, %4647
  %4669 = fadd fast float %4665, %4649
  %4670 = fadd fast float %4666, %4651
  %4671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4672 = extractvalue %dx.types.ResRet.i32 %4671, 0
  %4673 = and i32 %4672, 536870911
  %4674 = uitofp i32 %4673 to float
  %4675 = fmul fast float %4674, %4521
  %4676 = fmul fast float %4674, %4525
  %4677 = fptoui float %4675 to i32
  %4678 = fptoui float %4676 to i32
  %4679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4680 = extractvalue %dx.types.ResRet.i32 %4679, 0
  %4681 = and i32 %4680, 31
  %4682 = lshr i32 %4677, %4681
  %4683 = lshr i32 %4678, %4681
  %4684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4685 = extractvalue %dx.types.ResRet.i32 %4684, 0
  %4686 = and i32 %4685, 31
  %4687 = shl i32 1, %4686
  %4688 = call i32 @dx.op.binary.i32(i32 40, i32 %4687, i32 4)  ; UMin(a,b)
  %4689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4690 = extractvalue %dx.types.ResRet.i32 %4689, 0
  %4691 = extractvalue %dx.types.ResRet.i32 %4689, 1
  %4692 = icmp eq i32 %4688, 0
  br i1 %4692, label %4734, label %4693

; <label>:4693                                    ; preds = %4637
  br label %4694

; <label>:4694                                    ; preds = %4722, %4693
  %4695 = phi i32 [ %4725, %4722 ], [ 0, %4693 ]
  %4696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4697 = extractvalue %dx.types.ResRet.i32 %4696, 0
  %4698 = lshr i32 %4697, 16
  %4699 = and i32 %4698, 31
  %4700 = shl i32 %4683, %4699
  %4701 = add i32 %4700, %4682
  %4702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4703 = extractvalue %dx.types.ResRet.i32 %4702, 0
  %4704 = and i32 %4703, 31
  %4705 = shl i32 %4701, %4704
  %4706 = add i32 %4705, %4695
  %4707 = shl i32 %4706, 2
  %4708 = add i32 %4707, 32
  %4709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4708, i32 undef)  ; BufferLoad(srv,index,wot)
  %4710 = extractvalue %dx.types.ResRet.i32 %4709, 0
  %4711 = icmp slt i32 %4710, 0
  %4712 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4695
  %4713 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %4695
  %4714 = bitcast float* %4712 to i32*
  %4715 = bitcast float* %4713 to i32*
  br i1 %4711, label %4716, label %4722

; <label>:4716                                    ; preds = %4694
  %4717 = and i32 %4710, 1073741823
  %4718 = add nuw nsw i32 %4717, 20
  %4719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4718, i32 undef)  ; BufferLoad(srv,index,wot)
  %4720 = extractvalue %dx.types.ResRet.i32 %4719, 0
  %4721 = extractvalue %dx.types.ResRet.i32 %4719, 1
  br label %4722

; <label>:4722                                    ; preds = %4716, %4694
  %4723 = phi i32 [ %4720, %4716 ], [ %4690, %4694 ]
  %4724 = phi i32 [ %4721, %4716 ], [ %4691, %4694 ]
  store i32 %4723, i32* %4714, align 4
  store i32 %4724, i32* %4715, align 4
  %4725 = add nuw i32 %4695, 1
  %4726 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4727 = extractvalue %dx.types.CBufRet.i32 %4726, 2
  %4728 = icmp eq i32 %4727, 0
  %4729 = icmp ugt i32 %4710, -1073741825
  %4730 = and i1 %4729, %4728
  %4731 = icmp ult i32 %4725, %4688
  %4732 = and i1 %4730, %4731
  br i1 %4732, label %4694, label %4733

; <label>:4733                                    ; preds = %4722
  br label %4734

; <label>:4734                                    ; preds = %4733, %4637
  %4735 = phi i32 [ 0, %4637 ], [ %4725, %4733 ]
  %4736 = extractvalue %dx.types.CBufRet.f32 %4499, 2
  %4737 = fptoui float %4736 to i32
  %4738 = icmp eq i32 %4737, 0
  br i1 %4738, label %4790, label %4739

; <label>:4739                                    ; preds = %4734
  br label %4740

; <label>:4740                                    ; preds = %4785, %4739
  %4741 = phi i32 [ %4786, %4785 ], [ %4735, %4739 ]
  %4742 = phi i32 [ %4787, %4785 ], [ 0, %4739 ]
  %4743 = lshr i32 %4742, 2
  %4744 = and i32 %4742, 3
  %4745 = add nuw nsw i32 %4743, 83
  %4746 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 %4745)  ; CBufferLoadLegacy(handle,regIndex)
  %4747 = extractvalue %dx.types.CBufRet.i32 %4746, 0
  %4748 = extractvalue %dx.types.CBufRet.i32 %4746, 1
  %4749 = extractvalue %dx.types.CBufRet.i32 %4746, 2
  %4750 = extractvalue %dx.types.CBufRet.i32 %4746, 3
  %4751 = getelementptr inbounds [4 x i32], [4 x i32]* %70, i32 0, i32 0
  store i32 %4747, i32* %4751, align 4
  %4752 = getelementptr inbounds [4 x i32], [4 x i32]* %70, i32 0, i32 1
  store i32 %4748, i32* %4752, align 4
  %4753 = getelementptr inbounds [4 x i32], [4 x i32]* %70, i32 0, i32 2
  store i32 %4749, i32* %4753, align 4
  %4754 = getelementptr inbounds [4 x i32], [4 x i32]* %70, i32 0, i32 3
  store i32 %4750, i32* %4754, align 4
  %4755 = getelementptr inbounds [4 x i32], [4 x i32]* %70, i32 0, i32 %4744
  %4756 = load i32, i32* %4755, align 4, !tbaa !121, !noalias !125
  %4757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4758 = extractvalue %dx.types.ResRet.i32 %4757, 0
  %4759 = lshr i32 %4758, 16
  %4760 = and i32 %4759, 31
  %4761 = shl i32 %4683, %4760
  %4762 = add i32 %4761, %4682
  %4763 = shl i32 %4762, 2
  %4764 = add i32 %4763, %4756
  %4765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4764, i32 undef)  ; BufferLoad(srv,index,wot)
  %4766 = extractvalue %dx.types.ResRet.i32 %4765, 0
  %4767 = icmp eq i32 %4766, 0
  br i1 %4767, label %4785, label %4768

; <label>:4768                                    ; preds = %4740
  %4769 = icmp slt i32 %4766, 0
  %4770 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4741
  %4771 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %4741
  %4772 = bitcast float* %4770 to i32*
  %4773 = bitcast float* %4771 to i32*
  br i1 %4769, label %4774, label %4781

; <label>:4774                                    ; preds = %4768
  %4775 = and i32 %4766, 1073741823
  %4776 = add i32 %4756, 20
  %4777 = add i32 %4776, %4775
  %4778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4777, i32 undef)  ; BufferLoad(srv,index,wot)
  %4779 = extractvalue %dx.types.ResRet.i32 %4778, 0
  %4780 = extractvalue %dx.types.ResRet.i32 %4778, 1
  br label %4781

; <label>:4781                                    ; preds = %4774, %4768
  %4782 = phi i32 [ %4779, %4774 ], [ %4690, %4768 ]
  %4783 = phi i32 [ %4780, %4774 ], [ %4691, %4768 ]
  store i32 %4782, i32* %4772, align 4
  store i32 %4783, i32* %4773, align 4
  %4784 = add i32 %4741, 1
  br label %4785

; <label>:4785                                    ; preds = %4781, %4740
  %4786 = phi i32 [ %4741, %4740 ], [ %4784, %4781 ]
  %4787 = add nuw i32 %4742, 1
  %4788 = icmp eq i32 %4787, %4737
  br i1 %4788, label %4789, label %4740

; <label>:4789                                    ; preds = %4785
  br label %4790

; <label>:4790                                    ; preds = %4789, %4734
  %4791 = phi i32 [ %4735, %4734 ], [ %4786, %4789 ]
  %4792 = icmp eq i32 %4791, 1
  %4793 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  %4794 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 0
  br i1 %4792, label %4795, label %4798

; <label>:4795                                    ; preds = %4790
  %4796 = load float, float* %4793, align 4
  %4797 = load float, float* %4794, align 4
  br label %4825

; <label>:4798                                    ; preds = %4790
  %4799 = load float, float* %4793, align 4
  %4800 = load float, float* %4794, align 4
  %4801 = fdiv fast float 1.000000e+00, %4800
  %4802 = fsub fast float %4799, %4801
  %4803 = icmp ugt i32 %4791, 1
  br i1 %4803, label %4804, label %4820

; <label>:4804                                    ; preds = %4798
  br label %4805

; <label>:4805                                    ; preds = %4805, %4804
  %4806 = phi float [ %4815, %4805 ], [ %4802, %4804 ]
  %4807 = phi float [ %4816, %4805 ], [ %4799, %4804 ]
  %4808 = phi i32 [ %4817, %4805 ], [ 1, %4804 ]
  %4809 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4808
  %4810 = load float, float* %4809, align 4
  %4811 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %4808
  %4812 = load float, float* %4811, align 4
  %4813 = fdiv fast float 1.000000e+00, %4812
  %4814 = fsub fast float %4810, %4813
  %4815 = call float @dx.op.binary.f32(i32 36, float %4806, float %4814)  ; FMin(a,b)
  %4816 = call float @dx.op.binary.f32(i32 35, float %4807, float %4810)  ; FMax(a,b)
  %4817 = add nuw i32 %4808, 1
  %4818 = icmp eq i32 %4817, %4791
  br i1 %4818, label %4819, label %4805

; <label>:4819                                    ; preds = %4805
  br label %4820

; <label>:4820                                    ; preds = %4819, %4798
  %4821 = phi float [ %4802, %4798 ], [ %4815, %4819 ]
  %4822 = phi float [ %4799, %4798 ], [ %4816, %4819 ]
  %4823 = fsub fast float %4822, %4821
  %4824 = fdiv fast float 1.000000e+00, %4823
  br label %4825

; <label>:4825                                    ; preds = %4820, %4795
  %4826 = phi float [ %4796, %4795 ], [ %4822, %4820 ]
  %4827 = phi float [ %4797, %4795 ], [ %4824, %4820 ]
  %4828 = fadd fast float %4529, %4826
  %4829 = fmul fast float %4828, %4827
  %4830 = call float @dx.op.unary.f32(i32 7, float %4829)  ; Saturate(value)
  %4831 = fmul fast float %4830, 2.000000e+00
  %4832 = fsub fast float 1.000000e+00, %4831
  %4833 = fmul fast float %4667, %4667
  %4834 = fsub fast float %4668, %4833
  %4835 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4834)  ; FMax(a,b)
  %4836 = fdiv fast float 1.000000e+00, %4835
  %4837 = fmul fast float %4668, %4667
  %4838 = fsub fast float %4669, %4837
  %4839 = fsub fast float %4832, %4667
  %4840 = fmul fast float %4832, %4832
  %4841 = fsub fast float %4840, %4668
  %4842 = fmul fast float %4836, %4838
  %4843 = fmul fast float %4842, %4839
  %4844 = fsub fast float %4841, %4843
  %4845 = fmul fast float %4668, %4668
  %4846 = fsub fast float %4670, %4845
  %4847 = fmul fast float %4838, %4838
  %4848 = fmul fast float %4847, %4836
  %4849 = fsub fast float %4846, %4848
  %4850 = fdiv fast float %4844, %4849
  %4851 = fmul fast float %4850, %4838
  %4852 = fsub fast float %4839, %4851
  %4853 = fmul fast float %4852, %4836
  %4854 = fmul fast float %4853, %4667
  %4855 = fsub fast float 1.000000e+00, %4854
  %4856 = fmul fast float %4850, %4668
  %4857 = fsub fast float %4855, %4856
  %4858 = fmul fast float %4853, %4853
  %4859 = fmul fast float %4850, 4.000000e+00
  %4860 = fmul fast float %4859, %4857
  %4861 = fsub fast float %4858, %4860
  %4862 = call float @dx.op.unary.f32(i32 24, float %4861)  ; Sqrt(value)
  %4863 = fcmp fast oge float %4853, 0.000000e+00
  %4864 = fsub fast float -0.000000e+00, %4862
  %4865 = select i1 %4863, float %4864, float %4862
  %4866 = fsub fast float %4865, %4853
  %4867 = fdiv fast float %4866, %4850
  %4868 = fdiv fast float %4857, %4866
  %4869 = fmul fast float %4867, 5.000000e-01
  %4870 = fmul fast float %4868, 2.000000e+00
  %4871 = select i1 %4863, float %4869, float %4870
  %4872 = select i1 %4863, float %4870, float %4869
  %4873 = call float @dx.op.binary.f32(i32 35, float %4871, float %4872)  ; FMax(a,b)
  %4874 = call float @dx.op.binary.f32(i32 36, float %4871, float %4872)  ; FMin(a,b)
  %4875 = fcmp fast ogt float %4832, %4873
  %4876 = fsub fast float %4832, %4874
  %4877 = fsub fast float %4832, %4873
  %4878 = fsub fast float %4873, %4874
  %4879 = select i1 %4875, float %4877, float %4878
  %4880 = fmul float %4876, %4879
  %4881 = select i1 %4875, float %4874, float %4832
  %4882 = fcmp fast ogt float %4832, %4874
  %4883 = fmul fast float %4881, %4873
  %4884 = fadd fast float %4881, %4873
  %4885 = fmul fast float %4884, %4667
  %4886 = fadd fast float %4883, %4668
  %4887 = fsub fast float %4886, %4885
  %4888 = fdiv fast float %4887, %4880
  %4889 = select i1 %4882, float %4888, float 0.000000e+00
  %4890 = fsub fast float 1.000000e+00, %4889
  %4891 = select i1 %4875, float %4890, float %4889
  %4892 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4893 = extractvalue %dx.types.CBufRet.f32 %4652, 3
  %4894 = fmul fast float %4893, %4892
  %4895 = fsub fast float 1.000000e+00, %4894
  br label %4896

; <label>:4896                                    ; preds = %4825, %4537, %4502, %4498, %4464
  %4897 = phi float [ 1.000000e+00, %4464 ], [ %4895, %4825 ], [ 1.000000e+00, %4502 ], [ 1.000000e+00, %4537 ], [ 1.000000e+00, %4498 ]
  %4898 = fcmp fast ogt float %4494, 0.000000e+00
  br i1 %4898, label %4899, label %5061, !dx.controlflow.hints !134

; <label>:4899                                    ; preds = %4896
  %4900 = fadd fast float %4407, %4381
  %4901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4902 = extractvalue %dx.types.CBufRet.f32 %4901, 2
  %4903 = extractvalue %dx.types.CBufRet.f32 %4901, 3
  %4904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4905 = extractvalue %dx.types.CBufRet.f32 %4904, 2
  %4906 = call float @dx.op.binary.f32(i32 35, float %4900, float 0.000000e+00)  ; FMax(a,b)
  %4907 = fadd fast float %4906, 0x3F10000000000000
  %4908 = fcmp fast oeq float %4905, 0.000000e+00
  br i1 %4908, label %4909, label %4976

; <label>:4909                                    ; preds = %4899
  %4910 = extractvalue %dx.types.CBufRet.f32 %4901, 1
  %4911 = extractvalue %dx.types.CBufRet.f32 %4901, 0
  %4912 = fmul fast float %4911, %4396
  %4913 = fmul fast float %4910, %4397
  %4914 = fadd fast float %4912, 5.000000e-01
  %4915 = call float @dx.op.unary.f32(i32 27, float %4914)  ; Round_ni(value)
  %4916 = fadd fast float %4913, 5.000000e-01
  %4917 = call float @dx.op.unary.f32(i32 27, float %4916)  ; Round_ni(value)
  %4918 = fsub fast float %4914, %4915
  %4919 = fsub fast float %4916, %4917
  %4920 = fadd fast float %4915, -5.000000e-01
  %4921 = fadd fast float %4917, -5.000000e-01
  %4922 = fmul fast float %4918, 2.000000e+00
  %4923 = fsub fast float 3.000000e+00, %4922
  %4924 = fadd fast float %4922, 1.000000e+00
  %4925 = fsub fast float 2.000000e+00, %4918
  %4926 = bitcast float %4923 to i32
  %4927 = sub nsw i32 2129859010, %4926
  %4928 = bitcast i32 %4927 to float
  %4929 = fmul fast float %4928, %4925
  %4930 = fadd fast float %4929, -1.000000e+00
  %4931 = bitcast float %4924 to i32
  %4932 = sub nsw i32 2129859010, %4931
  %4933 = bitcast i32 %4932 to float
  %4934 = fmul fast float %4933, %4918
  %4935 = fadd fast float %4934, 1.000000e+00
  %4936 = fmul fast float %4919, 2.000000e+00
  %4937 = fsub fast float 3.000000e+00, %4936
  %4938 = fadd fast float %4936, 1.000000e+00
  %4939 = fsub fast float 2.000000e+00, %4919
  %4940 = bitcast float %4937 to i32
  %4941 = sub nsw i32 2129859010, %4940
  %4942 = bitcast i32 %4941 to float
  %4943 = fmul fast float %4942, %4939
  %4944 = fadd fast float %4943, -1.000000e+00
  %4945 = bitcast float %4938 to i32
  %4946 = sub nsw i32 2129859010, %4945
  %4947 = bitcast i32 %4946 to float
  %4948 = fmul fast float %4947, %4919
  %4949 = fadd fast float %4948, 1.000000e+00
  %4950 = fadd fast float %4930, %4920
  %4951 = fmul fast float %4950, %4902
  %4952 = fadd fast float %4944, %4921
  %4953 = fmul fast float %4952, %4903
  %4954 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %67, float %4951, float %4953, float undef, float undef, i32 0, i32 0, i32 undef, float %4907)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4955 = extractvalue %dx.types.ResRet.f32 %4954, 0
  %4956 = fmul fast float %4955, %4923
  %4957 = fadd fast float %4935, %4920
  %4958 = fmul fast float %4957, %4902
  %4959 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %67, float %4958, float %4953, float undef, float undef, i32 0, i32 0, i32 undef, float %4907)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4960 = extractvalue %dx.types.ResRet.f32 %4959, 0
  %4961 = fmul fast float %4960, %4924
  %4962 = fadd fast float %4949, %4921
  %4963 = fmul fast float %4962, %4903
  %4964 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %67, float %4951, float %4963, float undef, float undef, i32 0, i32 0, i32 undef, float %4907)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4965 = extractvalue %dx.types.ResRet.f32 %4964, 0
  %4966 = fmul fast float %4965, %4923
  %4967 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %67, float %4958, float %4963, float undef, float undef, i32 0, i32 0, i32 undef, float %4907)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4968 = extractvalue %dx.types.ResRet.f32 %4967, 0
  %4969 = fmul fast float %4968, %4924
  %4970 = fadd fast float %4969, %4966
  %4971 = fmul fast float %4970, %4938
  %4972 = fadd fast float %4961, %4956
  %4973 = fmul fast float %4972, %4937
  %4974 = fadd fast float %4973, %4971
  %4975 = fmul fast float %4974, 6.250000e-02
  br label %5061

; <label>:4976                                    ; preds = %4899
  %4977 = fmul fast float %250, 0x401921FB60000000
  %4978 = call float @dx.op.unary.f32(i32 13, float %4977)  ; Sin(value)
  %4979 = call float @dx.op.unary.f32(i32 12, float %4977)  ; Cos(value)
  %4980 = fsub fast float -0.000000e+00, %4978
  br label %4981

; <label>:4981                                    ; preds = %5030, %4976
  %4982 = phi float [ 0.000000e+00, %4976 ], [ %5025, %5030 ]
  %4983 = phi float [ 0.000000e+00, %4976 ], [ %5027, %5030 ]
  %4984 = phi i32 [ 0, %4976 ], [ %5031, %5030 ]
  %4985 = mul i32 %4984, 2
  %4986 = add i32 0, %4985
  %4987 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4986
  %4988 = load float, float* %4987, align 4
  %4989 = mul i32 %4984, 2
  %4990 = add i32 1, %4989
  %4991 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4990
  %4992 = load float, float* %4991, align 4
  %4993 = fmul fast float %4988, %4979
  %4994 = call float @dx.op.tertiary.f32(i32 46, float %4992, float %4980, float %4993)  ; FMad(a,b,c)
  %4995 = fmul fast float %4988, %4978
  %4996 = call float @dx.op.tertiary.f32(i32 46, float %4992, float %4979, float %4995)  ; FMad(a,b,c)
  %4997 = fmul fast float %4994, %4905
  %4998 = fmul fast float %4996, %4905
  %4999 = fadd fast float %4997, %4396
  %5000 = fadd fast float %4998, %4397
  %5001 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %66, float %4999, float %5000, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5002 = extractvalue %dx.types.ResRet.f32 %5001, 0
  %5003 = extractvalue %dx.types.ResRet.f32 %5001, 1
  %5004 = extractvalue %dx.types.ResRet.f32 %5001, 2
  %5005 = extractvalue %dx.types.ResRet.f32 %5001, 3
  %5006 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 0
  store float %5002, float* %5006, align 4
  %5007 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 1
  store float %5003, float* %5007, align 4
  %5008 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 2
  store float %5004, float* %5008, align 4
  %5009 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 3
  store float %5005, float* %5009, align 4
  %5010 = fsub fast float %5002, %4907
  %5011 = fcmp fast olt float %5010, 0.000000e+00
  %5012 = select i1 %5011, float 0.000000e+00, float 1.000000e+00
  %5013 = fadd fast float %5012, %4982
  %5014 = fmul fast float %5012, %5010
  %5015 = fadd fast float %5014, %4983
  br label %5016

; <label>:5016                                    ; preds = %5016, %4981
  %5017 = phi i32 [ 1, %4981 ], [ %5028, %5016 ]
  %5018 = phi float [ %5015, %4981 ], [ %5027, %5016 ]
  %5019 = phi float [ %5013, %4981 ], [ %5025, %5016 ]
  %5020 = getelementptr [4 x float], [4 x float]* %94, i32 0, i32 %5017
  %5021 = load float, float* %5020, align 4, !tbaa !135, !noalias !125
  %5022 = fsub fast float %5021, %4907
  %5023 = fcmp fast olt float %5022, 0.000000e+00
  %5024 = select i1 %5023, float 0.000000e+00, float 1.000000e+00
  %5025 = fadd fast float %5024, %5019
  %5026 = fmul fast float %5024, %5022
  %5027 = fadd fast float %5026, %5018
  %5028 = add nuw nsw i32 %5017, 1
  %5029 = icmp eq i32 %5028, 4
  br i1 %5029, label %5030, label %5016, !llvm.loop !137

; <label>:5030                                    ; preds = %5016
  %5031 = add nuw nsw i32 %4984, 1
  %5032 = icmp eq i32 %5031, 8
  br i1 %5032, label %5033, label %4981, !llvm.loop !138

; <label>:5033                                    ; preds = %5030
  %5034 = fdiv fast float 1.000000e+00, %5025
  %5035 = fmul fast float %5034, %5027
  %5036 = fdiv fast float 1.000000e+00, %4907
  %5037 = fmul fast float %5035, %5036
  %5038 = call float @dx.op.unary.f32(i32 7, float %5037)  ; Saturate(value)
  %5039 = call float @dx.op.binary.f32(i32 35, float %5038, float 0.000000e+00)  ; FMax(a,b)
  %5040 = fmul fast float %5025, 3.125000e-02
  %5041 = call float @dx.op.unary.f32(i32 7, float %5040)  ; Saturate(value)
  %5042 = fmul fast float %5041, 2.000000e+00
  %5043 = fadd fast float %5042, -1.000000e+00
  %5044 = fcmp fast ogt float %5043, 0.000000e+00
  %5045 = fcmp fast olt float %5043, 0.000000e+00
  %5046 = zext i1 %5044 to i32
  %5047 = zext i1 %5045 to i32
  %5048 = sub nsw i32 %5046, %5047
  %5049 = sitofp i32 %5048 to float
  %5050 = fmul fast float %5049, %5043
  %5051 = fsub fast float 1.000000e+00, %5050
  %5052 = fmul fast float %5051, %5051
  %5053 = fmul fast float %5052, %5051
  %5054 = fsub fast float %5051, %5053
  %5055 = fmul fast float %5054, %5039
  %5056 = fsub fast float 1.000000e+00, %5053
  %5057 = fsub fast float %5056, %5055
  %5058 = fmul fast float %5049, 5.000000e-01
  %5059 = fmul fast float %5058, %5057
  %5060 = fsub fast float 5.000000e-01, %5059
  br label %5061

; <label>:5061                                    ; preds = %5033, %4909, %4896
  %5062 = phi float [ 1.000000e+00, %4896 ], [ %4975, %4909 ], [ %5060, %5033 ]
  %5063 = fcmp fast ogt float %4492, 0.000000e+00
  br i1 %5063, label %5064, label %5228, !dx.controlflow.hints !139

; <label>:5064                                    ; preds = %5061
  %5065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5066 = extractvalue %dx.types.CBufRet.f32 %5065, 1
  %5067 = fadd fast float %5066, %4381
  %5068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5069 = extractvalue %dx.types.CBufRet.f32 %5068, 2
  %5070 = extractvalue %dx.types.CBufRet.f32 %5068, 3
  %5071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5072 = extractvalue %dx.types.CBufRet.f32 %5071, 1
  %5073 = call float @dx.op.binary.f32(i32 35, float %5067, float 0.000000e+00)  ; FMax(a,b)
  %5074 = fadd fast float %5073, 0x3F10000000000000
  %5075 = fcmp fast oeq float %5072, 0.000000e+00
  br i1 %5075, label %5076, label %5143

; <label>:5076                                    ; preds = %5064
  %5077 = extractvalue %dx.types.CBufRet.f32 %5068, 1
  %5078 = extractvalue %dx.types.CBufRet.f32 %5068, 0
  %5079 = fmul fast float %5078, %4388
  %5080 = fmul fast float %5077, %4389
  %5081 = fadd fast float %5079, 5.000000e-01
  %5082 = call float @dx.op.unary.f32(i32 27, float %5081)  ; Round_ni(value)
  %5083 = fadd fast float %5080, 5.000000e-01
  %5084 = call float @dx.op.unary.f32(i32 27, float %5083)  ; Round_ni(value)
  %5085 = fsub fast float %5081, %5082
  %5086 = fsub fast float %5083, %5084
  %5087 = fadd fast float %5082, -5.000000e-01
  %5088 = fadd fast float %5084, -5.000000e-01
  %5089 = fmul fast float %5085, 2.000000e+00
  %5090 = fsub fast float 3.000000e+00, %5089
  %5091 = fadd fast float %5089, 1.000000e+00
  %5092 = fsub fast float 2.000000e+00, %5085
  %5093 = bitcast float %5090 to i32
  %5094 = sub nsw i32 2129859010, %5093
  %5095 = bitcast i32 %5094 to float
  %5096 = fmul fast float %5095, %5092
  %5097 = fadd fast float %5096, -1.000000e+00
  %5098 = bitcast float %5091 to i32
  %5099 = sub nsw i32 2129859010, %5098
  %5100 = bitcast i32 %5099 to float
  %5101 = fmul fast float %5100, %5085
  %5102 = fadd fast float %5101, 1.000000e+00
  %5103 = fmul fast float %5086, 2.000000e+00
  %5104 = fsub fast float 3.000000e+00, %5103
  %5105 = fadd fast float %5103, 1.000000e+00
  %5106 = fsub fast float 2.000000e+00, %5086
  %5107 = bitcast float %5104 to i32
  %5108 = sub nsw i32 2129859010, %5107
  %5109 = bitcast i32 %5108 to float
  %5110 = fmul fast float %5109, %5106
  %5111 = fadd fast float %5110, -1.000000e+00
  %5112 = bitcast float %5105 to i32
  %5113 = sub nsw i32 2129859010, %5112
  %5114 = bitcast i32 %5113 to float
  %5115 = fmul fast float %5114, %5086
  %5116 = fadd fast float %5115, 1.000000e+00
  %5117 = fadd fast float %5097, %5087
  %5118 = fmul fast float %5117, %5069
  %5119 = fadd fast float %5111, %5088
  %5120 = fmul fast float %5119, %5070
  %5121 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %67, float %5118, float %5120, float undef, float undef, i32 0, i32 0, i32 undef, float %5074)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5122 = extractvalue %dx.types.ResRet.f32 %5121, 0
  %5123 = fmul fast float %5122, %5090
  %5124 = fadd fast float %5102, %5087
  %5125 = fmul fast float %5124, %5069
  %5126 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %67, float %5125, float %5120, float undef, float undef, i32 0, i32 0, i32 undef, float %5074)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5127 = extractvalue %dx.types.ResRet.f32 %5126, 0
  %5128 = fmul fast float %5127, %5091
  %5129 = fadd fast float %5116, %5088
  %5130 = fmul fast float %5129, %5070
  %5131 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %67, float %5118, float %5130, float undef, float undef, i32 0, i32 0, i32 undef, float %5074)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5132 = extractvalue %dx.types.ResRet.f32 %5131, 0
  %5133 = fmul fast float %5132, %5090
  %5134 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %67, float %5125, float %5130, float undef, float undef, i32 0, i32 0, i32 undef, float %5074)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5135 = extractvalue %dx.types.ResRet.f32 %5134, 0
  %5136 = fmul fast float %5135, %5091
  %5137 = fadd fast float %5136, %5133
  %5138 = fmul fast float %5137, %5105
  %5139 = fadd fast float %5128, %5123
  %5140 = fmul fast float %5139, %5104
  %5141 = fadd fast float %5140, %5138
  %5142 = fmul fast float %5141, 6.250000e-02
  br label %5228

; <label>:5143                                    ; preds = %5064
  %5144 = fmul fast float %250, 0x401921FB60000000
  %5145 = call float @dx.op.unary.f32(i32 13, float %5144)  ; Sin(value)
  %5146 = call float @dx.op.unary.f32(i32 12, float %5144)  ; Cos(value)
  %5147 = fsub fast float -0.000000e+00, %5145
  br label %5148

; <label>:5148                                    ; preds = %5197, %5143
  %5149 = phi float [ 0.000000e+00, %5143 ], [ %5192, %5197 ]
  %5150 = phi float [ 0.000000e+00, %5143 ], [ %5194, %5197 ]
  %5151 = phi i32 [ 0, %5143 ], [ %5198, %5197 ]
  %5152 = mul i32 %5151, 2
  %5153 = add i32 0, %5152
  %5154 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5153
  %5155 = load float, float* %5154, align 4
  %5156 = mul i32 %5151, 2
  %5157 = add i32 1, %5156
  %5158 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5157
  %5159 = load float, float* %5158, align 4
  %5160 = fmul fast float %5155, %5146
  %5161 = call float @dx.op.tertiary.f32(i32 46, float %5159, float %5147, float %5160)  ; FMad(a,b,c)
  %5162 = fmul fast float %5155, %5145
  %5163 = call float @dx.op.tertiary.f32(i32 46, float %5159, float %5146, float %5162)  ; FMad(a,b,c)
  %5164 = fmul fast float %5161, %5072
  %5165 = fmul fast float %5163, %5072
  %5166 = fadd fast float %5164, %4388
  %5167 = fadd fast float %5165, %4389
  %5168 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %66, float %5166, float %5167, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5169 = extractvalue %dx.types.ResRet.f32 %5168, 0
  %5170 = extractvalue %dx.types.ResRet.f32 %5168, 1
  %5171 = extractvalue %dx.types.ResRet.f32 %5168, 2
  %5172 = extractvalue %dx.types.ResRet.f32 %5168, 3
  %5173 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 0
  store float %5169, float* %5173, align 4
  %5174 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 1
  store float %5170, float* %5174, align 4
  %5175 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 2
  store float %5171, float* %5175, align 4
  %5176 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 3
  store float %5172, float* %5176, align 4
  %5177 = fsub fast float %5169, %5074
  %5178 = fcmp fast olt float %5177, 0.000000e+00
  %5179 = select i1 %5178, float 0.000000e+00, float 1.000000e+00
  %5180 = fadd fast float %5179, %5149
  %5181 = fmul fast float %5179, %5177
  %5182 = fadd fast float %5181, %5150
  br label %5183

; <label>:5183                                    ; preds = %5183, %5148
  %5184 = phi i32 [ 1, %5148 ], [ %5195, %5183 ]
  %5185 = phi float [ %5182, %5148 ], [ %5194, %5183 ]
  %5186 = phi float [ %5180, %5148 ], [ %5192, %5183 ]
  %5187 = getelementptr [4 x float], [4 x float]* %93, i32 0, i32 %5184
  %5188 = load float, float* %5187, align 4, !tbaa !135, !noalias !125
  %5189 = fsub fast float %5188, %5074
  %5190 = fcmp fast olt float %5189, 0.000000e+00
  %5191 = select i1 %5190, float 0.000000e+00, float 1.000000e+00
  %5192 = fadd fast float %5191, %5186
  %5193 = fmul fast float %5191, %5189
  %5194 = fadd fast float %5193, %5185
  %5195 = add nuw nsw i32 %5184, 1
  %5196 = icmp eq i32 %5195, 4
  br i1 %5196, label %5197, label %5183, !llvm.loop !137

; <label>:5197                                    ; preds = %5183
  %5198 = add nuw nsw i32 %5151, 1
  %5199 = icmp eq i32 %5198, 8
  br i1 %5199, label %5200, label %5148, !llvm.loop !138

; <label>:5200                                    ; preds = %5197
  %5201 = fdiv fast float 1.000000e+00, %5192
  %5202 = fmul fast float %5201, %5194
  %5203 = fdiv fast float 1.000000e+00, %5074
  %5204 = fmul fast float %5202, %5203
  %5205 = call float @dx.op.unary.f32(i32 7, float %5204)  ; Saturate(value)
  %5206 = call float @dx.op.binary.f32(i32 35, float %5205, float 0.000000e+00)  ; FMax(a,b)
  %5207 = fmul fast float %5192, 3.125000e-02
  %5208 = call float @dx.op.unary.f32(i32 7, float %5207)  ; Saturate(value)
  %5209 = fmul fast float %5208, 2.000000e+00
  %5210 = fadd fast float %5209, -1.000000e+00
  %5211 = fcmp fast ogt float %5210, 0.000000e+00
  %5212 = fcmp fast olt float %5210, 0.000000e+00
  %5213 = zext i1 %5211 to i32
  %5214 = zext i1 %5212 to i32
  %5215 = sub nsw i32 %5213, %5214
  %5216 = sitofp i32 %5215 to float
  %5217 = fmul fast float %5216, %5210
  %5218 = fsub fast float 1.000000e+00, %5217
  %5219 = fmul fast float %5218, %5218
  %5220 = fmul fast float %5219, %5218
  %5221 = fsub fast float %5218, %5220
  %5222 = fmul fast float %5221, %5206
  %5223 = fsub fast float 1.000000e+00, %5220
  %5224 = fsub fast float %5223, %5222
  %5225 = fmul fast float %5216, 5.000000e-01
  %5226 = fmul fast float %5225, %5224
  %5227 = fsub fast float 5.000000e-01, %5226
  br label %5228

; <label>:5228                                    ; preds = %5200, %5076, %5061
  %5229 = phi float [ 1.000000e+00, %5061 ], [ %5142, %5076 ], [ %5227, %5200 ]
  %5230 = fcmp fast ogt float %4491, 0.000000e+00
  br i1 %5230, label %5231, label %5395, !dx.controlflow.hints !140

; <label>:5231                                    ; preds = %5228
  %5232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5233 = extractvalue %dx.types.CBufRet.f32 %5232, 0
  %5234 = fadd fast float %5233, %4381
  %5235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5236 = extractvalue %dx.types.CBufRet.f32 %5235, 2
  %5237 = extractvalue %dx.types.CBufRet.f32 %5235, 3
  %5238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5239 = extractvalue %dx.types.CBufRet.f32 %5238, 0
  %5240 = call float @dx.op.binary.f32(i32 35, float %5234, float 0.000000e+00)  ; FMax(a,b)
  %5241 = fadd fast float %5240, 0x3F10000000000000
  %5242 = fcmp fast oeq float %5239, 0.000000e+00
  br i1 %5242, label %5243, label %5310

; <label>:5243                                    ; preds = %5231
  %5244 = extractvalue %dx.types.CBufRet.f32 %5235, 1
  %5245 = extractvalue %dx.types.CBufRet.f32 %5235, 0
  %5246 = fmul fast float %5245, %4373
  %5247 = fmul fast float %5244, %4377
  %5248 = fadd fast float %5246, 5.000000e-01
  %5249 = call float @dx.op.unary.f32(i32 27, float %5248)  ; Round_ni(value)
  %5250 = fadd fast float %5247, 5.000000e-01
  %5251 = call float @dx.op.unary.f32(i32 27, float %5250)  ; Round_ni(value)
  %5252 = fsub fast float %5248, %5249
  %5253 = fsub fast float %5250, %5251
  %5254 = fadd fast float %5249, -5.000000e-01
  %5255 = fadd fast float %5251, -5.000000e-01
  %5256 = fmul fast float %5252, 2.000000e+00
  %5257 = fsub fast float 3.000000e+00, %5256
  %5258 = fadd fast float %5256, 1.000000e+00
  %5259 = fsub fast float 2.000000e+00, %5252
  %5260 = bitcast float %5257 to i32
  %5261 = sub nsw i32 2129859010, %5260
  %5262 = bitcast i32 %5261 to float
  %5263 = fmul fast float %5262, %5259
  %5264 = fadd fast float %5263, -1.000000e+00
  %5265 = bitcast float %5258 to i32
  %5266 = sub nsw i32 2129859010, %5265
  %5267 = bitcast i32 %5266 to float
  %5268 = fmul fast float %5267, %5252
  %5269 = fadd fast float %5268, 1.000000e+00
  %5270 = fmul fast float %5253, 2.000000e+00
  %5271 = fsub fast float 3.000000e+00, %5270
  %5272 = fadd fast float %5270, 1.000000e+00
  %5273 = fsub fast float 2.000000e+00, %5253
  %5274 = bitcast float %5271 to i32
  %5275 = sub nsw i32 2129859010, %5274
  %5276 = bitcast i32 %5275 to float
  %5277 = fmul fast float %5276, %5273
  %5278 = fadd fast float %5277, -1.000000e+00
  %5279 = bitcast float %5272 to i32
  %5280 = sub nsw i32 2129859010, %5279
  %5281 = bitcast i32 %5280 to float
  %5282 = fmul fast float %5281, %5253
  %5283 = fadd fast float %5282, 1.000000e+00
  %5284 = fadd fast float %5264, %5254
  %5285 = fmul fast float %5284, %5236
  %5286 = fadd fast float %5278, %5255
  %5287 = fmul fast float %5286, %5237
  %5288 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %67, float %5285, float %5287, float undef, float undef, i32 0, i32 0, i32 undef, float %5241)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5289 = extractvalue %dx.types.ResRet.f32 %5288, 0
  %5290 = fmul fast float %5289, %5257
  %5291 = fadd fast float %5269, %5254
  %5292 = fmul fast float %5291, %5236
  %5293 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %67, float %5292, float %5287, float undef, float undef, i32 0, i32 0, i32 undef, float %5241)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5294 = extractvalue %dx.types.ResRet.f32 %5293, 0
  %5295 = fmul fast float %5294, %5258
  %5296 = fadd fast float %5283, %5255
  %5297 = fmul fast float %5296, %5237
  %5298 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %67, float %5285, float %5297, float undef, float undef, i32 0, i32 0, i32 undef, float %5241)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5299 = extractvalue %dx.types.ResRet.f32 %5298, 0
  %5300 = fmul fast float %5299, %5257
  %5301 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %67, float %5292, float %5297, float undef, float undef, i32 0, i32 0, i32 undef, float %5241)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5302 = extractvalue %dx.types.ResRet.f32 %5301, 0
  %5303 = fmul fast float %5302, %5258
  %5304 = fadd fast float %5303, %5300
  %5305 = fmul fast float %5304, %5272
  %5306 = fadd fast float %5295, %5290
  %5307 = fmul fast float %5306, %5271
  %5308 = fadd fast float %5307, %5305
  %5309 = fmul fast float %5308, 6.250000e-02
  br label %5395

; <label>:5310                                    ; preds = %5231
  %5311 = fmul fast float %250, 0x401921FB60000000
  %5312 = call float @dx.op.unary.f32(i32 13, float %5311)  ; Sin(value)
  %5313 = call float @dx.op.unary.f32(i32 12, float %5311)  ; Cos(value)
  %5314 = fsub fast float -0.000000e+00, %5312
  br label %5315

; <label>:5315                                    ; preds = %5364, %5310
  %5316 = phi float [ 0.000000e+00, %5310 ], [ %5359, %5364 ]
  %5317 = phi float [ 0.000000e+00, %5310 ], [ %5361, %5364 ]
  %5318 = phi i32 [ 0, %5310 ], [ %5365, %5364 ]
  %5319 = mul i32 %5318, 2
  %5320 = add i32 0, %5319
  %5321 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5320
  %5322 = load float, float* %5321, align 4
  %5323 = mul i32 %5318, 2
  %5324 = add i32 1, %5323
  %5325 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5324
  %5326 = load float, float* %5325, align 4
  %5327 = fmul fast float %5322, %5313
  %5328 = call float @dx.op.tertiary.f32(i32 46, float %5326, float %5314, float %5327)  ; FMad(a,b,c)
  %5329 = fmul fast float %5322, %5312
  %5330 = call float @dx.op.tertiary.f32(i32 46, float %5326, float %5313, float %5329)  ; FMad(a,b,c)
  %5331 = fmul fast float %5328, %5239
  %5332 = fmul fast float %5330, %5239
  %5333 = fadd fast float %5331, %4373
  %5334 = fadd fast float %5332, %4377
  %5335 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %66, float %5333, float %5334, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5336 = extractvalue %dx.types.ResRet.f32 %5335, 0
  %5337 = extractvalue %dx.types.ResRet.f32 %5335, 1
  %5338 = extractvalue %dx.types.ResRet.f32 %5335, 2
  %5339 = extractvalue %dx.types.ResRet.f32 %5335, 3
  %5340 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %5336, float* %5340, align 4
  %5341 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %5337, float* %5341, align 4
  %5342 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %5338, float* %5342, align 4
  %5343 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %5339, float* %5343, align 4
  %5344 = fsub fast float %5336, %5241
  %5345 = fcmp fast olt float %5344, 0.000000e+00
  %5346 = select i1 %5345, float 0.000000e+00, float 1.000000e+00
  %5347 = fadd fast float %5346, %5316
  %5348 = fmul fast float %5346, %5344
  %5349 = fadd fast float %5348, %5317
  br label %5350

; <label>:5350                                    ; preds = %5350, %5315
  %5351 = phi i32 [ 1, %5315 ], [ %5362, %5350 ]
  %5352 = phi float [ %5349, %5315 ], [ %5361, %5350 ]
  %5353 = phi float [ %5347, %5315 ], [ %5359, %5350 ]
  %5354 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %5351
  %5355 = load float, float* %5354, align 4, !tbaa !135, !noalias !125
  %5356 = fsub fast float %5355, %5241
  %5357 = fcmp fast olt float %5356, 0.000000e+00
  %5358 = select i1 %5357, float 0.000000e+00, float 1.000000e+00
  %5359 = fadd fast float %5358, %5353
  %5360 = fmul fast float %5358, %5356
  %5361 = fadd fast float %5360, %5352
  %5362 = add nuw nsw i32 %5351, 1
  %5363 = icmp eq i32 %5362, 4
  br i1 %5363, label %5364, label %5350, !llvm.loop !137

; <label>:5364                                    ; preds = %5350
  %5365 = add nuw nsw i32 %5318, 1
  %5366 = icmp eq i32 %5365, 8
  br i1 %5366, label %5367, label %5315, !llvm.loop !138

; <label>:5367                                    ; preds = %5364
  %5368 = fdiv fast float 1.000000e+00, %5359
  %5369 = fmul fast float %5368, %5361
  %5370 = fdiv fast float 1.000000e+00, %5241
  %5371 = fmul fast float %5369, %5370
  %5372 = call float @dx.op.unary.f32(i32 7, float %5371)  ; Saturate(value)
  %5373 = call float @dx.op.binary.f32(i32 35, float %5372, float 0.000000e+00)  ; FMax(a,b)
  %5374 = fmul fast float %5359, 3.125000e-02
  %5375 = call float @dx.op.unary.f32(i32 7, float %5374)  ; Saturate(value)
  %5376 = fmul fast float %5375, 2.000000e+00
  %5377 = fadd fast float %5376, -1.000000e+00
  %5378 = fcmp fast ogt float %5377, 0.000000e+00
  %5379 = fcmp fast olt float %5377, 0.000000e+00
  %5380 = zext i1 %5378 to i32
  %5381 = zext i1 %5379 to i32
  %5382 = sub nsw i32 %5380, %5381
  %5383 = sitofp i32 %5382 to float
  %5384 = fmul fast float %5383, %5377
  %5385 = fsub fast float 1.000000e+00, %5384
  %5386 = fmul fast float %5385, %5385
  %5387 = fmul fast float %5386, %5385
  %5388 = fsub fast float %5385, %5387
  %5389 = fmul fast float %5388, %5373
  %5390 = fsub fast float 1.000000e+00, %5387
  %5391 = fsub fast float %5390, %5389
  %5392 = fmul fast float %5383, 5.000000e-01
  %5393 = fmul fast float %5392, %5391
  %5394 = fsub fast float 5.000000e-01, %5393
  br label %5395

; <label>:5395                                    ; preds = %5367, %5243, %5228
  %5396 = phi float [ 1.000000e+00, %5228 ], [ %5309, %5243 ], [ %5394, %5367 ]
  %5397 = fsub fast float %5062, %4897
  %5398 = fmul fast float %5397, %4435
  %5399 = fadd fast float %5398, %4897
  %5400 = fsub fast float %5229, %5399
  %5401 = fmul fast float %5400, %4465
  %5402 = fadd fast float %5401, %5399
  %5403 = fsub fast float %5396, %5402
  %5404 = fmul fast float %5403, %4491
  %5405 = fadd fast float %5404, %5402
  %5406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5407 = extractvalue %dx.types.CBufRet.f32 %5406, 2
  %5408 = fcmp fast ogt float %5407, 0.000000e+00
  br i1 %5408, label %5409, label %5449, !dx.controlflow.hints !141

; <label>:5409                                    ; preds = %5395
  %5410 = fcmp fast ugt float %5407, 0.000000e+00
  br i1 %5410, label %5411, label %5446

; <label>:5411                                    ; preds = %5409
  %5412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5413 = extractvalue %dx.types.CBufRet.f32 %5412, 0
  %5414 = extractvalue %dx.types.CBufRet.f32 %5412, 1
  %5415 = extractvalue %dx.types.CBufRet.f32 %5412, 2
  %5416 = extractvalue %dx.types.CBufRet.f32 %5412, 3
  %5417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5418 = extractvalue %dx.types.CBufRet.f32 %5417, 0
  %5419 = extractvalue %dx.types.CBufRet.f32 %5417, 1
  %5420 = extractvalue %dx.types.CBufRet.f32 %5417, 2
  %5421 = extractvalue %dx.types.CBufRet.f32 %5417, 3
  %5422 = extractvalue %dx.types.CBufRet.f32 %5406, 0
  %5423 = extractvalue %dx.types.CBufRet.f32 %5406, 1
  %5424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5425 = extractvalue %dx.types.CBufRet.f32 %5424, 0
  %5426 = extractvalue %dx.types.CBufRet.f32 %5424, 1
  %5427 = extractvalue %dx.types.CBufRet.f32 %5424, 2
  %5428 = fadd fast float %5425, %4350
  %5429 = fadd fast float %5426, %4351
  %5430 = fadd fast float %5427, %4352
  %5431 = fmul fast float %5428, %5413
  %5432 = call float @dx.op.tertiary.f32(i32 46, float %5414, float %5429, float %5431)  ; FMad(a,b,c)
  %5433 = call float @dx.op.tertiary.f32(i32 46, float %5415, float %5430, float %5432)  ; FMad(a,b,c)
  %5434 = fadd fast float %5433, %5416
  %5435 = fmul fast float %5428, %5418
  %5436 = call float @dx.op.tertiary.f32(i32 46, float %5419, float %5429, float %5435)  ; FMad(a,b,c)
  %5437 = call float @dx.op.tertiary.f32(i32 46, float %5420, float %5430, float %5436)  ; FMad(a,b,c)
  %5438 = fadd fast float %5437, %5421
  %5439 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %62, float %5434, float %5438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5440 = extractvalue %dx.types.ResRet.f32 %5439, 0
  %5441 = fmul fast float %5440, %5423
  %5442 = fadd fast float %5441, %5422
  %5443 = call float @dx.op.unary.f32(i32 7, float %5442)  ; Saturate(value)
  %5444 = fmul fast float %5443, %5407
  %5445 = fsub fast float 1.000000e+00, %5444
  br label %5446

; <label>:5446                                    ; preds = %5411, %5409
  %5447 = phi float [ %5445, %5411 ], [ 1.000000e+00, %5409 ]
  %5448 = fmul fast float %5447, %5405
  br label %5449

; <label>:5449                                    ; preds = %5446, %5395, %4330
  %5450 = phi float [ 1.000000e+00, %4330 ], [ %5448, %5446 ], [ %5405, %5395 ]
  %5451 = call float @dx.op.binary.f32(i32 36, float %5450, float %5450)  ; FMin(a,b)
  %5452 = call float @dx.op.binary.f32(i32 36, float %5450, float %5451)  ; FMin(a,b)
  %5453 = fcmp fast ogt float %5452, 0.000000e+00
  br i1 %5453, label %5454, label %5619, !dx.controlflow.hints !142

; <label>:5454                                    ; preds = %5449
  %5455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5456 = extractvalue %dx.types.CBufRet.f32 %5455, 0
  %5457 = extractvalue %dx.types.CBufRet.f32 %5455, 1
  %5458 = extractvalue %dx.types.CBufRet.f32 %5455, 2
  %5459 = extractvalue %dx.types.CBufRet.f32 %5455, 3
  %5460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5461 = extractvalue %dx.types.CBufRet.f32 %5460, 0
  %5462 = extractvalue %dx.types.CBufRet.f32 %5460, 1
  %5463 = extractvalue %dx.types.CBufRet.f32 %5460, 2
  %5464 = extractvalue %dx.types.CBufRet.f32 %5460, 3
  %5465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5466 = extractvalue %dx.types.CBufRet.f32 %5465, 0
  %5467 = extractvalue %dx.types.CBufRet.f32 %5465, 1
  %5468 = extractvalue %dx.types.CBufRet.f32 %5465, 2
  %5469 = extractvalue %dx.types.CBufRet.f32 %5465, 3
  %5470 = fmul fast float %5456, %4350
  %5471 = call float @dx.op.tertiary.f32(i32 46, float %4351, float %5457, float %5470)  ; FMad(a,b,c)
  %5472 = call float @dx.op.tertiary.f32(i32 46, float %4352, float %5458, float %5471)  ; FMad(a,b,c)
  %5473 = fadd fast float %5472, %5459
  %5474 = fmul fast float %5461, %4350
  %5475 = call float @dx.op.tertiary.f32(i32 46, float %4351, float %5462, float %5474)  ; FMad(a,b,c)
  %5476 = call float @dx.op.tertiary.f32(i32 46, float %4352, float %5463, float %5475)  ; FMad(a,b,c)
  %5477 = fadd fast float %5476, %5464
  %5478 = fmul fast float %5466, %4350
  %5479 = call float @dx.op.tertiary.f32(i32 46, float %4351, float %5467, float %5478)  ; FMad(a,b,c)
  %5480 = call float @dx.op.tertiary.f32(i32 46, float %4352, float %5468, float %5479)  ; FMad(a,b,c)
  %5481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5482 = extractvalue %dx.types.CBufRet.f32 %5481, 0
  %5483 = extractvalue %dx.types.CBufRet.f32 %5481, 1
  %5484 = extractvalue %dx.types.CBufRet.f32 %5481, 3
  %5485 = fmul fast float %5484, %5473
  %5486 = fmul fast float %5484, %5477
  %5487 = fadd fast float %5485, %5482
  %5488 = fadd fast float %5486, %5483
  %5489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5490 = extractvalue %dx.types.CBufRet.f32 %5489, 0
  %5491 = extractvalue %dx.types.CBufRet.f32 %5489, 1
  %5492 = fsub fast float %5487, %5490
  %5493 = fsub fast float %5488, %5491
  %5494 = fcmp fast olt float %5492, 0.000000e+00
  %5495 = fcmp fast olt float %5493, 0.000000e+00
  %5496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5497 = extractvalue %dx.types.CBufRet.f32 %5496, 0
  %5498 = extractvalue %dx.types.CBufRet.f32 %5496, 1
  %5499 = extractvalue %dx.types.CBufRet.f32 %5496, 2
  %5500 = extractvalue %dx.types.CBufRet.f32 %5496, 3
  %5501 = select i1 %5494, float %5497, float %5499
  %5502 = select i1 %5495, float %5498, float %5500
  %5503 = fmul fast float %5501, %5492
  %5504 = fmul fast float %5502, %5493
  %5505 = call float @dx.op.unary.f32(i32 6, float %5503)  ; FAbs(value)
  %5506 = call float @dx.op.unary.f32(i32 6, float %5504)  ; FAbs(value)
  %5507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5508 = extractvalue %dx.types.CBufRet.f32 %5507, 0
  %5509 = call float @dx.op.binary.f32(i32 35, float %5505, float %5506)  ; FMax(a,b)
  %5510 = fsub fast float %5508, %5509
  %5511 = call float @dx.op.unary.f32(i32 7, float %5510)  ; Saturate(value)
  %5512 = fcmp fast ogt float %5511, 0.000000e+00
  br i1 %5512, label %5513, label %5554, !dx.controlflow.hints !143

; <label>:5513                                    ; preds = %5454
  %5514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %65, float %5487, float %5488, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5515 = extractvalue %dx.types.ResRet.f32 %5514, 1
  %5516 = fcmp fast ogt float %5515, 0.000000e+00
  br i1 %5516, label %5517, label %5549

; <label>:5517                                    ; preds = %5513
  %5518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %65, float %5487, float %5488, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5519 = extractvalue %dx.types.ResRet.f32 %5518, 0
  %5520 = extractvalue %dx.types.ResRet.f32 %5518, 1
  %5521 = extractvalue %dx.types.ResRet.f32 %5518, 2
  %5522 = extractvalue %dx.types.ResRet.f32 %5518, 3
  %5523 = fsub fast float 1.000000e+00, %5469
  %5524 = fsub fast float %5523, %5480
  %5525 = fmul fast float %5524, 0x400921FB60000000
  %5526 = fadd fast float %5525, 0x3FF921FB60000000
  %5527 = call float @dx.op.unary.f32(i32 13, float %5526)  ; Sin(value)
  %5528 = fadd fast float %5527, -1.000000e+00
  %5529 = fmul fast float %5528, 0x3FD45F3060000000
  %5530 = fmul fast float %5524, 0x401921FB60000000
  %5531 = fadd fast float %5530, 0x400921FB60000000
  %5532 = call float @dx.op.unary.f32(i32 13, float %5531)  ; Sin(value)
  %5533 = fadd fast float %5532, 0x3E7777A5C0000000
  %5534 = fmul fast float %5533, 0x3FC45F3060000000
  %5535 = fmul fast float %5524, 0x4022D97C80000000
  %5536 = fadd fast float %5535, 0x4012D97C80000000
  %5537 = call float @dx.op.unary.f32(i32 13, float %5536)  ; Sin(value)
  %5538 = fadd fast float %5537, 1.000000e+00
  %5539 = fmul fast float %5538, 0x3FBB2995E0000000
  %5540 = fmul fast float %5524, 0x402921FB60000000
  %5541 = fadd fast float %5540, 0x401921FB60000000
  %5542 = call float @dx.op.unary.f32(i32 13, float %5541)  ; Sin(value)
  %5543 = fadd fast float %5542, 0xBE8777A5C0000000
  %5544 = fmul fast float %5543, 0x3FB45F3060000000
  %5545 = call float @dx.op.dot4.f32(i32 56, float %5519, float %5520, float %5521, float %5522, float %5529, float %5534, float %5539, float %5544)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5546 = fmul fast float %5545, 0xBFF7154760000000
  %5547 = call float @dx.op.unary.f32(i32 21, float %5546)  ; Exp(value)
  %5548 = call float @dx.op.unary.f32(i32 7, float %5547)  ; Saturate(value)
  br label %5549

; <label>:5549                                    ; preds = %5517, %5513
  %5550 = phi float [ %5548, %5517 ], [ 1.000000e+00, %5513 ]
  %5551 = fadd fast float %5550, -1.000000e+00
  %5552 = fmul fast float %5551, %5511
  %5553 = fadd fast float %5552, 1.000000e+00
  br label %5554

; <label>:5554                                    ; preds = %5549, %5454
  %5555 = phi float [ %5553, %5549 ], [ 1.000000e+00, %5454 ]
  %5556 = fmul fast float %5555, %5450
  %5557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5558 = extractvalue %dx.types.CBufRet.f32 %5557, 0
  %5559 = extractvalue %dx.types.CBufRet.f32 %5557, 1
  %5560 = extractvalue %dx.types.CBufRet.f32 %5557, 2
  %5561 = fadd fast float %5558, %148
  %5562 = fadd fast float %5559, %149
  %5563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5564 = extractvalue %dx.types.CBufRet.f32 %5563, 1
  %5565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5566 = extractvalue %dx.types.CBufRet.f32 %5565, 0
  %5567 = extractvalue %dx.types.CBufRet.f32 %5565, 1
  %5568 = extractvalue %dx.types.CBufRet.f32 %5565, 2
  %5569 = fsub fast float -0.000000e+00, %5561
  %5570 = fsub fast float -0.000000e+00, %5562
  %5571 = fsub fast float %2307, %5560
  %5572 = fadd fast float %5571, %5564
  %5573 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5569, float %5570, float %5572)  ; Dot3(ax,ay,az,bx,by,bz)
  %5574 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5566, float %5567, float %5568)  ; Dot3(ax,ay,az,bx,by,bz)
  %5575 = fdiv fast float 1.000000e+00, %5574
  %5576 = fmul fast float %5575, %5573
  %5577 = fmul fast float %5566, %5576
  %5578 = fmul fast float %5567, %5576
  %5579 = fadd fast float %5577, %5561
  %5580 = fadd fast float %5578, %5562
  %5581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5582 = extractvalue %dx.types.CBufRet.f32 %5581, 0
  %5583 = extractvalue %dx.types.CBufRet.f32 %5581, 1
  %5584 = fsub fast float %5579, %5582
  %5585 = fsub fast float %5580, %5583
  %5586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5587 = extractvalue %dx.types.CBufRet.f32 %5586, 2
  %5588 = extractvalue %dx.types.CBufRet.f32 %5586, 3
  %5589 = fmul fast float %5584, %5587
  %5590 = fmul fast float %5585, %5588
  %5591 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5592 = extractvalue %dx.types.CBufRet.i32 %5591, 3
  %5593 = icmp eq i32 %5592, 0
  br i1 %5593, label %5599, label %5594

; <label>:5594                                    ; preds = %5554
  %5595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %64, float %5589, float %5590, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5596 = extractvalue %dx.types.ResRet.f32 %5595, 0
  %5597 = extractvalue %dx.types.ResRet.f32 %5595, 1
  %5598 = extractvalue %dx.types.ResRet.f32 %5595, 2
  br label %5604

; <label>:5599                                    ; preds = %5554
  %5600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %65, float %5589, float %5590, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5601 = extractvalue %dx.types.ResRet.f32 %5600, 0
  %5602 = extractvalue %dx.types.ResRet.f32 %5600, 1
  %5603 = extractvalue %dx.types.ResRet.f32 %5600, 2
  br label %5604

; <label>:5604                                    ; preds = %5599, %5594
  %5605 = phi float [ %5596, %5594 ], [ %5601, %5599 ]
  %5606 = phi float [ %5597, %5594 ], [ %5602, %5599 ]
  %5607 = phi float [ %5598, %5594 ], [ %5603, %5599 ]
  %5608 = extractvalue %dx.types.CBufRet.f32 %5563, 2
  %5609 = fmul fast float %5608, %5605
  %5610 = extractvalue %dx.types.CBufRet.f32 %5563, 0
  %5611 = fsub fast float %5576, %5610
  %5612 = fsub fast float %5611, %5609
  %5613 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5612)  ; FMax(a,b)
  %5614 = fmul fast float %5613, %5606
  %5615 = call float @dx.op.binary.f32(i32 36, float %5607, float %5614)  ; FMin(a,b)
  %5616 = fmul fast float %5615, 0xBFF7154760000000
  %5617 = call float @dx.op.unary.f32(i32 21, float %5616)  ; Exp(value)
  %5618 = fmul fast float %5556, %5617
  br label %5619

; <label>:5619                                    ; preds = %5604, %5449
  %5620 = phi float [ %5618, %5604 ], [ %5450, %5449 ]
  %5621 = call float @dx.op.binary.f32(i32 36, float %5620, float %5620)  ; FMin(a,b)
  %5622 = call float @dx.op.binary.f32(i32 36, float %5620, float %5621)  ; FMin(a,b)
  %5623 = fcmp fast ogt float %5622, 0.000000e+00
  br i1 %5623, label %5624, label %5883, !dx.controlflow.hints !144

; <label>:5624                                    ; preds = %5619
  %5625 = fmul fast float %5620, %4342
  %5626 = fmul fast float %5620, %4343
  %5627 = fmul fast float %5620, %4344
  %5628 = fsub fast float %150, %2095
  %5629 = fcmp fast ogt float %5628, 0.000000e+00
  %5630 = fmul fast float %4331, 5.120000e+02
  %5631 = fmul fast float %4332, 5.120000e+02
  %5632 = fmul fast float %4333, 5.120000e+02
  %5633 = fadd fast float %5632, %150
  %5634 = fsub fast float %2095, %5633
  %5635 = fmul fast float %5634, 2.000000e+00
  %5636 = fadd fast float %5635, %5633
  %5637 = select i1 %5629, float %5636, float %5633
  %5638 = fsub fast float %5637, %150
  %5639 = call float @dx.op.dot3.f32(i32 55, float %5630, float %5631, float %5638, float %5630, float %5631, float %5638)  ; Dot3(ax,ay,az,bx,by,bz)
  %5640 = call float @dx.op.unary.f32(i32 25, float %5639)  ; Rsqrt(value)
  %5641 = fmul fast float %5640, %5630
  %5642 = fmul fast float %5640, %5631
  %5643 = fmul fast float %5640, %5638
  %5644 = fsub fast float %2095, %150
  %5645 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5644)  ; Dot3(ax,ay,az,bx,by,bz)
  %5646 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5641, float %5642, float %5643)  ; Dot3(ax,ay,az,bx,by,bz)
  %5647 = fdiv fast float 1.000000e+00, %5646
  %5648 = fmul fast float %5647, %5645
  %5649 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5628, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5650 = fcmp fast ogt float %5649, 0.000000e+00
  %5651 = fcmp fast olt float %5649, 0.000000e+00
  %5652 = zext i1 %5650 to i32
  %5653 = zext i1 %5651 to i32
  %5654 = sub nsw i32 %5652, %5653
  %5655 = sitofp i32 %5654 to float
  %5656 = fsub fast float %5637, %2095
  %5657 = call float @dx.op.dot3.f32(i32 55, float %5630, float %5631, float %5656, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5658 = fcmp fast ogt float %5657, 0.000000e+00
  %5659 = fcmp fast olt float %5657, 0.000000e+00
  %5660 = zext i1 %5658 to i32
  %5661 = zext i1 %5659 to i32
  %5662 = sub nsw i32 %5660, %5661
  %5663 = sitofp i32 %5662 to float
  %5664 = fcmp fast une float %5655, %5663
  br i1 %5664, label %5665, label %5675

; <label>:5665                                    ; preds = %5624
  %5666 = fmul fast float %5648, %5643
  %5667 = fmul fast float %5648, %5642
  %5668 = fmul fast float %5648, %5641
  %5669 = fmul fast float %5668, %5668
  %5670 = fmul fast float %5667, %5667
  %5671 = fadd fast float %5669, %5670
  %5672 = fmul fast float %5666, %5666
  %5673 = fadd fast float %5671, %5672
  %5674 = call float @dx.op.unary.f32(i32 24, float %5673)  ; Sqrt(value)
  br label %5685

; <label>:5675                                    ; preds = %5624
  %5676 = icmp slt i32 %5654, 0
  br i1 %5676, label %5677, label %5685

; <label>:5677                                    ; preds = %5675
  %5678 = fsub fast float %150, %5637
  %5679 = fmul fast float %5630, %5630
  %5680 = fmul fast float %5631, %5631
  %5681 = fadd fast float %5679, %5680
  %5682 = fmul fast float %5678, %5678
  %5683 = fadd fast float %5681, %5682
  %5684 = call float @dx.op.unary.f32(i32 24, float %5683)  ; Sqrt(value)
  br label %5685

; <label>:5685                                    ; preds = %5677, %5675, %5665
  %5686 = phi float [ %5674, %5665 ], [ %5684, %5677 ], [ 0.000000e+00, %5675 ]
  %5687 = fsub fast float -0.000000e+00, %5686
  %5688 = select i1 %5629, float -0.000000e+00, float %5687
  %5689 = fmul fast float %2096, 0x3FF7154760000000
  %5690 = fmul fast float %5689, %5688
  %5691 = fmul fast float %2097, 0x3FF7154760000000
  %5692 = fmul fast float %5691, %5688
  %5693 = fmul fast float %2098, 0x3FF7154760000000
  %5694 = fmul fast float %5693, %5688
  %5695 = call float @dx.op.unary.f32(i32 21, float %5690)  ; Exp(value)
  %5696 = call float @dx.op.unary.f32(i32 21, float %5692)  ; Exp(value)
  %5697 = call float @dx.op.unary.f32(i32 21, float %5694)  ; Exp(value)
  %5698 = call float @dx.op.unary.f32(i32 7, float %5695)  ; Saturate(value)
  %5699 = call float @dx.op.unary.f32(i32 7, float %5696)  ; Saturate(value)
  %5700 = call float @dx.op.unary.f32(i32 7, float %5697)  ; Saturate(value)
  %5701 = fmul fast float %5625, %5698
  %5702 = fmul fast float %5626, %5699
  %5703 = fmul fast float %5627, %5700
  %5704 = fsub fast float %4331, %2295
  %5705 = fsub fast float %4332, %2294
  %5706 = fsub fast float %4333, %2293
  %5707 = call float @dx.op.dot3.f32(i32 55, float %5704, float %5705, float %5706, float %5704, float %5705, float %5706)  ; Dot3(ax,ay,az,bx,by,bz)
  %5708 = call float @dx.op.unary.f32(i32 25, float %5707)  ; Rsqrt(value)
  %5709 = fmul fast float %5708, %5704
  %5710 = fmul fast float %5708, %5705
  %5711 = fmul fast float %5708, %5706
  %5712 = call float @dx.op.dot3.f32(i32 55, float %4331, float %4332, float %4333, float %2299, float %2300, float %2301)  ; Dot3(ax,ay,az,bx,by,bz)
  %5713 = call float @dx.op.dot3.f32(i32 55, float %2292, float %2291, float %2290, float %5709, float %5710, float %5711)  ; Dot3(ax,ay,az,bx,by,bz)
  %5714 = call float @dx.op.unary.f32(i32 7, float %5712)  ; Saturate(value)
  %5715 = fmul fast float %5714, %5714
  %5716 = fmul fast float %5715, %4326
  %5717 = call float @dx.op.unary.f32(i32 7, float %5716)  ; Saturate(value)
  %5718 = fmul fast float %5717, %5714
  %5719 = call float @dx.op.dot3.f32(i32 55, float %2299, float %2300, float %2301, float %5709, float %5710, float %5711)  ; Dot3(ax,ay,az,bx,by,bz)
  %5720 = fmul fast float %5719, %5719
  %5721 = call float @dx.op.unary.f32(i32 6, float %5712)  ; FAbs(value)
  %5722 = fsub fast float 1.000000e+00, %2328
  %5723 = fmul fast float %2310, %2310
  %5724 = fmul fast float %5723, %5722
  %5725 = fadd fast float %5724, %2328
  %5726 = bitcast float %5725 to i32
  %5727 = ashr i32 %5726, 1
  %5728 = add nsw i32 %5727, 532487669
  %5729 = bitcast i32 %5728 to float
  %5730 = fadd fast float %5729, %2310
  %5731 = fmul fast float %2328, %5720
  %5732 = fsub fast float 1.000000e+00, %5720
  %5733 = fadd fast float %5732, %5731
  %5734 = fmul fast float %5721, %5721
  %5735 = fmul fast float %5734, %5722
  %5736 = fadd fast float %5735, %2328
  %5737 = bitcast float %5736 to i32
  %5738 = ashr i32 %5737, 1
  %5739 = add nsw i32 %5738, 532487669
  %5740 = bitcast i32 %5739 to float
  %5741 = fadd fast float %5740, %5721
  %5742 = fmul fast float %5733, %5733
  %5743 = fmul fast float %5742, %5730
  %5744 = fmul fast float %5743, %5741
  %5745 = fdiv fast float 0x3FF0A00000000000, %5744
  %5746 = fmul fast float %5745, %2328
  %5747 = fmul fast float %3594, 0x3FF9999980000000
  %5748 = fsub fast float 5.000000e+00, %5747
  %5749 = call float @dx.op.unary.f32(i32 6, float %5713)  ; FAbs(value)
  %5750 = fsub fast float 1.000000e+00, %5749
  %5751 = fmul fast float %3594, 0x41D9660740000000
  %5752 = fadd fast float %5751, 0xC1EFBF8940000000
  %5753 = bitcast float %5750 to i32
  %5754 = sitofp i32 %5753 to float
  %5755 = fmul fast float %5754, %5748
  %5756 = fadd fast float %5752, %5755
  %5757 = fptosi float %5756 to i32
  %5758 = bitcast i32 %5757 to float
  %5759 = fsub fast float 1.000000e+00, %2302
  %5760 = fsub fast float 1.000000e+00, %2303
  %5761 = fsub fast float 1.000000e+00, %2308
  %5762 = fmul fast float %5758, %5759
  %5763 = fmul fast float %5758, %5760
  %5764 = fmul fast float %5758, %5761
  %5765 = fadd fast float %5762, %2302
  %5766 = fadd fast float %5763, %2303
  %5767 = fadd fast float %5764, %2308
  br i1 %3617, label %5768, label %5791

; <label>:5768                                    ; preds = %5685
  %5769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %65, float %1670, float %5749, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5770 = extractvalue %dx.types.ResRet.f32 %5769, 0
  %5771 = extractvalue %dx.types.ResRet.f32 %5769, 1
  %5772 = extractvalue %dx.types.ResRet.f32 %5769, 2
  %5773 = fadd fast float %5770, -5.000000e-01
  %5774 = fadd fast float %5771, -5.000000e-01
  %5775 = fadd fast float %5772, -5.000000e-01
  %5776 = fmul fast float %2302, 4.000000e+00
  %5777 = fmul fast float %5776, %5759
  %5778 = fmul fast float %5777, %5773
  %5779 = fmul fast float %2303, 4.000000e+00
  %5780 = fmul fast float %5779, %5760
  %5781 = fmul fast float %5780, %5774
  %5782 = fmul fast float %2308, 4.000000e+00
  %5783 = fmul fast float %5782, %5761
  %5784 = fmul fast float %5783, %5775
  %5785 = fadd fast float %5778, %5765
  %5786 = fadd fast float %5781, %5766
  %5787 = fadd fast float %5784, %5767
  %5788 = call float @dx.op.unary.f32(i32 7, float %5785)  ; Saturate(value)
  %5789 = call float @dx.op.unary.f32(i32 7, float %5786)  ; Saturate(value)
  %5790 = call float @dx.op.unary.f32(i32 7, float %5787)  ; Saturate(value)
  br label %5791

; <label>:5791                                    ; preds = %5768, %5685
  %5792 = phi float [ %5788, %5768 ], [ %5765, %5685 ]
  %5793 = phi float [ %5789, %5768 ], [ %5766, %5685 ]
  %5794 = phi float [ %5790, %5768 ], [ %5767, %5685 ]
  %5795 = fmul fast float %5712, 9.843750e-01
  %5796 = fadd fast float %5795, 7.812500e-03
  %5797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %60, %dx.types.Handle %65, float %5796, float %3598, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5798 = extractvalue %dx.types.ResRet.f32 %5797, 0
  %5799 = extractvalue %dx.types.ResRet.f32 %5797, 1
  %5800 = extractvalue %dx.types.ResRet.f32 %5797, 2
  %5801 = extractvalue %dx.types.ResRet.f32 %5797, 3
  %5802 = fsub fast float %5800, %5798
  %5803 = fsub fast float %5801, %5799
  %5804 = fmul fast float %5802, %3604
  %5805 = fmul fast float %5803, %3604
  %5806 = fadd fast float %5804, %5798
  %5807 = fadd fast float %5805, %5799
  %5808 = fmul fast float %5806, %2302
  %5809 = fmul fast float %5806, %2303
  %5810 = fmul fast float %5806, %2308
  %5811 = fadd fast float %5808, %5807
  %5812 = fadd fast float %5809, %5807
  %5813 = fadd fast float %5810, %5807
  br i1 %3617, label %5814, label %5837

; <label>:5814                                    ; preds = %5791
  %5815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %65, float %1670, float %5712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5816 = extractvalue %dx.types.ResRet.f32 %5815, 0
  %5817 = extractvalue %dx.types.ResRet.f32 %5815, 1
  %5818 = extractvalue %dx.types.ResRet.f32 %5815, 2
  %5819 = fadd fast float %5816, -5.000000e-01
  %5820 = fadd fast float %5817, -5.000000e-01
  %5821 = fadd fast float %5818, -5.000000e-01
  %5822 = fmul fast float %2302, 4.000000e+00
  %5823 = fmul fast float %5822, %5759
  %5824 = fmul fast float %5823, %5819
  %5825 = fmul fast float %2303, 4.000000e+00
  %5826 = fmul fast float %5825, %5760
  %5827 = fmul fast float %5826, %5820
  %5828 = fmul fast float %2308, 4.000000e+00
  %5829 = fmul fast float %5828, %5761
  %5830 = fmul fast float %5829, %5821
  %5831 = fadd fast float %5824, %5811
  %5832 = fadd fast float %5827, %5812
  %5833 = fadd fast float %5830, %5813
  %5834 = call float @dx.op.unary.f32(i32 7, float %5831)  ; Saturate(value)
  %5835 = call float @dx.op.unary.f32(i32 7, float %5832)  ; Saturate(value)
  %5836 = call float @dx.op.unary.f32(i32 7, float %5833)  ; Saturate(value)
  br label %5837

; <label>:5837                                    ; preds = %5814, %5791
  %5838 = phi float [ %5834, %5814 ], [ %5811, %5791 ]
  %5839 = phi float [ %5835, %5814 ], [ %5812, %5791 ]
  %5840 = phi float [ %5836, %5814 ], [ %5813, %5791 ]
  %5841 = call float @dx.op.binary.f32(i32 35, float %5839, float %5840)  ; FMax(a,b)
  %5842 = call float @dx.op.binary.f32(i32 35, float %5838, float %5841)  ; FMax(a,b)
  %5843 = fsub fast float 1.000000e+00, %5842
  %5844 = fmul fast float %5792, %5746
  %5845 = fmul fast float %5793, %5746
  %5846 = fmul fast float %5794, %5746
  %5847 = fsub fast float 1.000000e+00, %5713
  %5848 = bitcast float %5847 to i32
  %5849 = sitofp i32 %5848 to float
  %5850 = fmul fast float %5849, 5.000000e+00
  %5851 = fadd fast float %5850, 0xC1EFBF8940000000
  %5852 = fptosi float %5851 to i32
  %5853 = bitcast i32 %5852 to float
  %5854 = fmul fast float %5853, %1669
  %5855 = fmul fast float %5843, %5854
  %5856 = fmul fast float %5855, %4265
  %5857 = fmul fast float %5855, %4266
  %5858 = fmul fast float %5855, %4267
  %5859 = fadd fast float %5856, %5844
  %5860 = fadd fast float %5857, %5845
  %5861 = fadd fast float %5858, %5846
  %5862 = fmul fast float %5718, %5701
  %5863 = fmul fast float %5862, %5843
  %5864 = fmul fast float %5718, %5702
  %5865 = fmul fast float %5864, %5843
  %5866 = fmul fast float %5718, %5703
  %5867 = fmul fast float %5866, %5843
  %5868 = fmul fast float %5862, %5859
  %5869 = fmul fast float %5864, %5860
  %5870 = fmul fast float %5866, %5861
  %5871 = fadd fast float %5863, %4249
  %5872 = fmul fast float %5871, %1690
  %5873 = fadd fast float %5865, %4250
  %5874 = fmul fast float %5873, %1690
  %5875 = fadd fast float %5867, %4251
  %5876 = fmul fast float %5875, %1690
  %5877 = fadd fast float %5868, %4318
  %5878 = fmul fast float %5877, %1690
  %5879 = fadd fast float %5869, %4321
  %5880 = fmul fast float %5879, %1690
  %5881 = fadd fast float %5870, %4324
  %5882 = fmul fast float %5881, %1690
  br label %5883

; <label>:5883                                    ; preds = %5837, %5619, %4245
  %5884 = phi float [ %4319, %4245 ], [ %4319, %5619 ], [ %5878, %5837 ]
  %5885 = phi float [ %4322, %4245 ], [ %4322, %5619 ], [ %5880, %5837 ]
  %5886 = phi float [ %4325, %4245 ], [ %4325, %5619 ], [ %5882, %5837 ]
  %5887 = phi float [ %4314, %4245 ], [ %4314, %5619 ], [ %5872, %5837 ]
  %5888 = phi float [ %4315, %4245 ], [ %4315, %5619 ], [ %5874, %5837 ]
  %5889 = phi float [ %4316, %4245 ], [ %4316, %5619 ], [ %5876, %5837 ]
  %5890 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5891 = extractvalue %dx.types.CBufRet.i32 %5890, 0
  %5892 = icmp eq i32 %5891, 0
  br i1 %5892, label %6567, label %5893

; <label>:5893                                    ; preds = %5883
  %5894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5895 = extractvalue %dx.types.CBufRet.f32 %5894, 2
  %5896 = extractvalue %dx.types.CBufRet.f32 %5894, 3
  %5897 = fmul fast float %5895, %101
  %5898 = fmul fast float %5896, %102
  %5899 = fptoui float %5897 to i32
  %5900 = fptoui float %5898 to i32
  %5901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.f32 %5901, 0
  %5903 = extractvalue %dx.types.CBufRet.f32 %5901, 2
  %5904 = extractvalue %dx.types.CBufRet.f32 %5901, 3
  %5905 = fadd fast float %89, -4.000000e+00
  %5906 = call float @dx.op.binary.f32(i32 35, float %5905, float 0.000000e+00)  ; FMax(a,b)
  %5907 = fadd fast float %5906, %5902
  %5908 = fmul fast float %5907, %5903
  %5909 = call float @dx.op.unary.f32(i32 23, float %5908)  ; Log(value)
  %5910 = fmul fast float %5909, %5904
  %5911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5911, 2
  %5913 = fmul fast float %5910, %5912
  %5914 = call float @dx.op.unary.f32(i32 7, float %5913)  ; Saturate(value)
  %5915 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5916 = extractvalue %dx.types.CBufRet.i32 %5915, 1
  %5917 = add i32 %5916, -1
  %5918 = uitofp i32 %5916 to float
  %5919 = fmul fast float %5918, %5914
  %5920 = fptoui float %5919 to i32
  %5921 = call i32 @dx.op.binary.i32(i32 40, i32 %5920, i32 %5917)  ; UMin(a,b)
  %5922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5923 = extractvalue %dx.types.CBufRet.i32 %5922, 2
  %5924 = extractvalue %dx.types.CBufRet.i32 %5922, 3
  %5925 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5900, i32 %5923, i32 %5899)  ; UMad(a,b,c)
  %5926 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5921, i32 %5924, i32 %5925)  ; UMad(a,b,c)
  %5927 = add nsw i32 %5891, -1
  %5928 = call i32 @dx.op.binary.i32(i32 37, i32 %5927, i32 0)  ; IMax(a,b)
  %5929 = call float @dx.op.binary.f32(i32 35, float %89, float 0.000000e+00)  ; FMax(a,b)
  %5930 = fptoui float %5929 to i32
  %5931 = lshr i32 %5930, 5
  %5932 = call i32 @dx.op.binary.i32(i32 40, i32 %5931, i32 8191)  ; UMin(a,b)
  %5933 = shl i32 %5932, 2
  %5934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5933, i32 undef)  ; BufferLoad(srv,index,wot)
  %5935 = extractvalue %dx.types.ResRet.i32 %5934, 0
  %5936 = lshr i32 %5935, 16
  %5937 = and i32 %5935, 65535
  %5938 = lshr i32 %5935, 21
  %5939 = lshr i32 %5937, 5
  %5940 = call i32 @dx.op.binary.i32(i32 40, i32 %5939, i32 %5928)  ; UMin(a,b)
  %5941 = icmp ugt i32 %5938, %5940
  br i1 %5941, label %6567, label %5942

; <label>:5942                                    ; preds = %5893
  br label %5943

; <label>:5943                                    ; preds = %6557, %5942
  %5944 = phi i32 [ %6564, %6557 ], [ %5938, %5942 ]
  %5945 = phi float [ %6558, %6557 ], [ %5884, %5942 ]
  %5946 = phi float [ %6559, %6557 ], [ %5885, %5942 ]
  %5947 = phi float [ %6560, %6557 ], [ %5886, %5942 ]
  %5948 = phi float [ %6561, %6557 ], [ %5887, %5942 ]
  %5949 = phi float [ %6562, %6557 ], [ %5888, %5942 ]
  %5950 = phi float [ %6563, %6557 ], [ %5889, %5942 ]
  %5951 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5952 = extractvalue %dx.types.CBufRet.i32 %5951, 0
  %5953 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5926, i32 %5952, i32 %5944)  ; UMad(a,b,c)
  %5954 = shl i32 %5953, 2
  %5955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5954, i32 undef)  ; BufferLoad(srv,index,wot)
  %5956 = extractvalue %dx.types.ResRet.i32 %5955, 0
  %5957 = shl i32 %5944, 5
  %5958 = sub nsw i32 %5936, %5957
  %5959 = call i32 @dx.op.binary.i32(i32 37, i32 %5958, i32 0)  ; IMax(a,b)
  %5960 = call i32 @dx.op.binary.i32(i32 38, i32 %5959, i32 31)  ; IMin(a,b)
  %5961 = sub nsw i32 1, %5936
  %5962 = add nsw i32 %5961, %5937
  %5963 = call i32 @dx.op.binary.i32(i32 37, i32 %5962, i32 0)  ; IMax(a,b)
  %5964 = call i32 @dx.op.binary.i32(i32 38, i32 %5963, i32 32)  ; IMin(a,b)
  %5965 = and i32 %5964, 31
  %5966 = shl i32 -1, %5965
  %5967 = xor i32 %5966, -1
  %5968 = and i32 %5960, 31
  %5969 = shl i32 %5967, %5968
  %5970 = icmp eq i32 %5964, 32
  %5971 = select i1 %5970, i32 -1, i32 %5969
  %5972 = and i32 %5971, %5956
  %5973 = icmp eq i32 %5972, 0
  br i1 %5973, label %6557, label %5974

; <label>:5974                                    ; preds = %5943
  br label %5975

; <label>:5975                                    ; preds = %6109, %5974
  %5976 = phi i32 [ %5987, %6109 ], [ %5972, %5974 ]
  %5977 = phi float [ %6110, %6109 ], [ %5945, %5974 ]
  %5978 = phi float [ %6111, %6109 ], [ %5946, %5974 ]
  %5979 = phi float [ %6112, %6109 ], [ %5947, %5974 ]
  %5980 = phi float [ %6113, %6109 ], [ %5948, %5974 ]
  %5981 = phi float [ %6114, %6109 ], [ %5949, %5974 ]
  %5982 = phi float [ %6115, %6109 ], [ %5950, %5974 ]
  %5983 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5976)  ; FirstbitLo(value)
  %5984 = add i32 %5983, %5957
  %5985 = and i32 %5983, 31
  %5986 = shl i32 1, %5985
  %5987 = xor i32 %5986, %5976
  %5988 = mul i32 %5984, 112
  %5989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5988, i32 undef)  ; BufferLoad(srv,index,wot)
  %5990 = extractvalue %dx.types.ResRet.f32 %5989, 0
  %5991 = extractvalue %dx.types.ResRet.f32 %5989, 1
  %5992 = extractvalue %dx.types.ResRet.f32 %5989, 2
  %5993 = or i32 %5988, 12
  %5994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5993, i32 undef)  ; BufferLoad(srv,index,wot)
  %5995 = extractvalue %dx.types.ResRet.f32 %5994, 0
  %5996 = add i32 %5988, 16
  %5997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5996, i32 undef)  ; BufferLoad(srv,index,wot)
  %5998 = extractvalue %dx.types.ResRet.f32 %5997, 0
  %5999 = extractvalue %dx.types.ResRet.f32 %5997, 1
  %6000 = extractvalue %dx.types.ResRet.f32 %5997, 2
  %6001 = add i32 %5988, 28
  %6002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6001, i32 undef)  ; BufferLoad(srv,index,wot)
  %6003 = extractvalue %dx.types.ResRet.i32 %6002, 0
  %6004 = add i32 %5988, 44
  %6005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6004, i32 undef)  ; BufferLoad(srv,index,wot)
  %6006 = extractvalue %dx.types.ResRet.f32 %6005, 0
  %6007 = add i32 %5988, 48
  %6008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6007, i32 undef)  ; BufferLoad(srv,index,wot)
  %6009 = extractvalue %dx.types.ResRet.f32 %6008, 0
  %6010 = extractvalue %dx.types.ResRet.f32 %6008, 1
  %6011 = extractvalue %dx.types.ResRet.f32 %6008, 2
  %6012 = extractvalue %dx.types.ResRet.f32 %6008, 3
  %6013 = add i32 %5988, 64
  %6014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6013, i32 undef)  ; BufferLoad(srv,index,wot)
  %6015 = extractvalue %dx.types.ResRet.f32 %6014, 0
  %6016 = extractvalue %dx.types.ResRet.f32 %6014, 1
  %6017 = extractvalue %dx.types.ResRet.f32 %6014, 2
  %6018 = extractvalue %dx.types.ResRet.f32 %6014, 3
  %6019 = add i32 %5988, 80
  %6020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6019, i32 undef)  ; BufferLoad(srv,index,wot)
  %6021 = extractvalue %dx.types.ResRet.f32 %6020, 1
  %6022 = extractvalue %dx.types.ResRet.f32 %6020, 2
  %6023 = add i32 %5988, 92
  %6024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6023, i32 undef)  ; BufferLoad(srv,index,wot)
  %6025 = extractvalue %dx.types.ResRet.i32 %6024, 0
  %6026 = call float @dx.op.dot3.f32(i32 55, float %5990, float %5991, float %5992, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6027 = select i1 %239, float %6021, float %5990
  %6028 = select i1 %239, float %6026, float %5991
  %6029 = select i1 %239, float %6022, float %5992
  %6030 = and i32 %6025, 65535
  %6031 = uitofp i32 %6030 to float
  %6032 = lshr i32 %6025, 16
  %6033 = uitofp i32 %6032 to float
  %6034 = and i32 %6003, 65535
  %6035 = and i32 %6003, 50331648
  %6036 = icmp eq i32 %6035, 33554432
  %6037 = fsub fast float %6009, %148
  %6038 = fsub fast float %6010, %149
  %6039 = fsub fast float %6011, %150
  %6040 = call float @dx.op.dot3.f32(i32 55, float %6037, float %6038, float %6039, float %6037, float %6038, float %6039)  ; Dot3(ax,ay,az,bx,by,bz)
  %6041 = call float @dx.op.unary.f32(i32 24, float %6040)  ; Sqrt(value)
  %6042 = fdiv fast float 1.000000e+00, %6041
  %6043 = fmul fast float %6042, %6037
  %6044 = fmul fast float %6042, %6038
  %6045 = fmul fast float %6042, %6039
  %6046 = fadd fast float %6041, %5995
  %6047 = fdiv fast float 1.000000e+00, %6046
  %6048 = fmul float %6006, %6047
  %6049 = fmul float %6048, %6048
  %6050 = call float @dx.op.unary.f32(i32 7, float %6049)  ; Saturate(value)
  br i1 %6036, label %6051, label %6072

; <label>:6051                                    ; preds = %5975
  %6052 = fmul fast float %6017, %5998
  %6053 = fmul fast float %6017, %5999
  %6054 = fmul fast float %6017, %6000
  %6055 = fadd fast float %6037, %6052
  %6056 = fadd fast float %6038, %6053
  %6057 = fadd fast float %6039, %6054
  %6058 = call float @dx.op.dot3.f32(i32 55, float %6055, float %6056, float %6057, float %6055, float %6056, float %6057)  ; Dot3(ax,ay,az,bx,by,bz)
  %6059 = call float @dx.op.unary.f32(i32 25, float %6058)  ; Rsqrt(value)
  %6060 = fmul fast float %6059, %6055
  %6061 = fmul fast float %6059, %6056
  %6062 = fmul fast float %6059, %6057
  %6063 = fsub fast float %148, %6009
  %6064 = fsub fast float %149, %6010
  %6065 = fsub fast float %150, %6011
  %6066 = fsub fast float -0.000000e+00, %6063
  %6067 = fsub fast float -0.000000e+00, %6064
  %6068 = fsub fast float -0.000000e+00, %6065
  %6069 = call float @dx.op.dot3.f32(i32 55, float %6066, float %6067, float %6068, float %5998, float %5999, float %6000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6070 = fcmp fast ogt float %6069, 0.000000e+00
  %6071 = uitofp i1 %6070 to float
  br label %6072

; <label>:6072                                    ; preds = %6051, %5975
  %6073 = phi float [ %6071, %6051 ], [ 1.000000e+00, %5975 ]
  %6074 = phi float [ %6060, %6051 ], [ %6043, %5975 ]
  %6075 = phi float [ %6061, %6051 ], [ %6044, %5975 ]
  %6076 = phi float [ %6062, %6051 ], [ %6045, %5975 ]
  %6077 = call float @dx.op.dot3.f32(i32 55, float %5998, float %5999, float %6000, float %6074, float %6075, float %6076)  ; Dot3(ax,ay,az,bx,by,bz)
  %6078 = fmul fast float %6077, %6077
  %6079 = call float @dx.op.unary.f32(i32 7, float %6078)  ; Saturate(value)
  %6080 = fsub fast float 1.000000e+00, %6079
  %6081 = fmul fast float %6080, 5.000000e-01
  %6082 = fcmp fast ogt float %6077, 0.000000e+00
  %6083 = fsub fast float 1.000000e+00, %6081
  %6084 = select i1 %6082, float %6081, float %6083
  %6085 = fmul fast float %6084, %6033
  %6086 = fadd fast float %6085, %6031
  %6087 = fmul fast float %6086, 0x3EF0001000000000
  %6088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %65, float %6087, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6089 = extractvalue %dx.types.ResRet.f32 %6088, 0
  %6090 = fmul fast float %6077, %6015
  %6091 = fadd fast float %6090, %6016
  %6092 = call float @dx.op.unary.f32(i32 7, float %6091)  ; Saturate(value)
  %6093 = select i1 %6036, float 1.000000e+00, float %6092
  %6094 = select i1 %6036, float %6092, float 1.000000e+00
  %6095 = fmul fast float %6041, %6012
  %6096 = fsub fast float 1.000000e+00, %6095
  %6097 = fmul fast float %6096, %6018
  %6098 = call float @dx.op.unary.f32(i32 7, float %6097)  ; Saturate(value)
  %6099 = fmul fast float %6098, %6094
  %6100 = fmul fast float %6099, 2.000000e+00
  %6101 = fsub fast float 3.000000e+00, %6100
  %6102 = fmul fast float %6089, %6073
  %6103 = fmul fast float %6099, %6099
  %6104 = fmul fast float %6103, %6102
  %6105 = fmul fast float %6104, %6101
  %6106 = call float @dx.op.binary.f32(i32 36, float %6105, float %6105)  ; FMin(a,b)
  %6107 = call float @dx.op.binary.f32(i32 36, float %6105, float %6106)  ; FMin(a,b)
  %6108 = fcmp fast ogt float %6107, 0.000000e+00
  br i1 %6108, label %6117, label %6109, !dx.controlflow.hints !145

; <label>:6109                                    ; preds = %6513, %6263, %6072
  %6110 = phi float [ %5977, %6263 ], [ %5977, %6072 ], [ %6553, %6513 ]
  %6111 = phi float [ %5978, %6263 ], [ %5978, %6072 ], [ %6554, %6513 ]
  %6112 = phi float [ %5979, %6263 ], [ %5979, %6072 ], [ %6555, %6513 ]
  %6113 = phi float [ %5980, %6263 ], [ %5980, %6072 ], [ %6547, %6513 ]
  %6114 = phi float [ %5981, %6263 ], [ %5981, %6072 ], [ %6548, %6513 ]
  %6115 = phi float [ %5982, %6263 ], [ %5982, %6072 ], [ %6549, %6513 ]
  %6116 = icmp eq i32 %5976, %5986
  br i1 %6116, label %6556, label %5975

; <label>:6117                                    ; preds = %6072
  %6118 = icmp eq i32 %6034, 255
  br i1 %6118, label %6263, label %6119, !dx.controlflow.hints !146

; <label>:6119                                    ; preds = %6117
  %6120 = mul nuw nsw i32 %6034, 176
  %6121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6120, i32 undef)  ; BufferLoad(srv,index,wot)
  %6122 = extractvalue %dx.types.ResRet.f32 %6121, 0
  %6123 = extractvalue %dx.types.ResRet.f32 %6121, 1
  %6124 = extractvalue %dx.types.ResRet.f32 %6121, 2
  %6125 = extractvalue %dx.types.ResRet.f32 %6121, 3
  %6126 = add nuw nsw i32 %6120, 16
  %6127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6126, i32 undef)  ; BufferLoad(srv,index,wot)
  %6128 = extractvalue %dx.types.ResRet.f32 %6127, 0
  %6129 = extractvalue %dx.types.ResRet.f32 %6127, 1
  %6130 = add nuw nsw i32 %6120, 32
  %6131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6130, i32 undef)  ; BufferLoad(srv,index,wot)
  %6132 = extractvalue %dx.types.ResRet.f32 %6131, 0
  %6133 = extractvalue %dx.types.ResRet.f32 %6131, 1
  %6134 = extractvalue %dx.types.ResRet.f32 %6131, 2
  %6135 = add nuw nsw i32 %6120, 48
  %6136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6135, i32 undef)  ; BufferLoad(srv,index,wot)
  %6137 = extractvalue %dx.types.ResRet.f32 %6136, 0
  %6138 = extractvalue %dx.types.ResRet.f32 %6136, 1
  %6139 = extractvalue %dx.types.ResRet.f32 %6136, 2
  %6140 = extractvalue %dx.types.ResRet.f32 %6136, 3
  %6141 = add nuw nsw i32 %6120, 64
  %6142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6141, i32 undef)  ; BufferLoad(srv,index,wot)
  %6143 = extractvalue %dx.types.ResRet.f32 %6142, 0
  %6144 = extractvalue %dx.types.ResRet.f32 %6142, 1
  %6145 = extractvalue %dx.types.ResRet.f32 %6142, 2
  %6146 = extractvalue %dx.types.ResRet.f32 %6142, 3
  %6147 = add nuw nsw i32 %6120, 80
  %6148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6147, i32 undef)  ; BufferLoad(srv,index,wot)
  %6149 = extractvalue %dx.types.ResRet.f32 %6148, 0
  %6150 = extractvalue %dx.types.ResRet.f32 %6148, 1
  %6151 = extractvalue %dx.types.ResRet.f32 %6148, 2
  %6152 = extractvalue %dx.types.ResRet.f32 %6148, 3
  %6153 = add nuw nsw i32 %6120, 96
  %6154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6153, i32 undef)  ; BufferLoad(srv,index,wot)
  %6155 = extractvalue %dx.types.ResRet.f32 %6154, 0
  %6156 = extractvalue %dx.types.ResRet.f32 %6154, 1
  %6157 = extractvalue %dx.types.ResRet.f32 %6154, 2
  %6158 = extractvalue %dx.types.ResRet.f32 %6154, 3
  %6159 = bitcast float %6129 to i32
  %6160 = fmul fast float %6134, %77
  %6161 = fmul fast float %6134, %78
  %6162 = fmul fast float %6134, %79
  %6163 = fadd fast float %6160, %148
  %6164 = fadd fast float %6161, %149
  %6165 = fadd fast float %6162, %150
  %6166 = fmul fast float %6163, %6137
  %6167 = call float @dx.op.tertiary.f32(i32 46, float %6164, float %6143, float %6166)  ; FMad(a,b,c)
  %6168 = call float @dx.op.tertiary.f32(i32 46, float %6165, float %6149, float %6167)  ; FMad(a,b,c)
  %6169 = fadd fast float %6168, %6155
  %6170 = fmul fast float %6163, %6138
  %6171 = call float @dx.op.tertiary.f32(i32 46, float %6164, float %6144, float %6170)  ; FMad(a,b,c)
  %6172 = call float @dx.op.tertiary.f32(i32 46, float %6165, float %6150, float %6171)  ; FMad(a,b,c)
  %6173 = fadd fast float %6172, %6156
  %6174 = fmul fast float %6163, %6139
  %6175 = call float @dx.op.tertiary.f32(i32 46, float %6164, float %6145, float %6174)  ; FMad(a,b,c)
  %6176 = call float @dx.op.tertiary.f32(i32 46, float %6165, float %6151, float %6175)  ; FMad(a,b,c)
  %6177 = fadd fast float %6176, %6157
  %6178 = fmul fast float %6163, %6140
  %6179 = call float @dx.op.tertiary.f32(i32 46, float %6164, float %6146, float %6178)  ; FMad(a,b,c)
  %6180 = call float @dx.op.tertiary.f32(i32 46, float %6165, float %6152, float %6179)  ; FMad(a,b,c)
  %6181 = fadd fast float %6180, %6158
  %6182 = fdiv fast float %6169, %6181
  %6183 = fdiv fast float %6173, %6181
  %6184 = fdiv fast float %6177, %6181
  %6185 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6184)  ; FMax(a,b)
  %6186 = fmul fast float %250, 0x401921FB60000000
  %6187 = call float @dx.op.unary.f32(i32 13, float %6186)  ; Sin(value)
  %6188 = call float @dx.op.unary.f32(i32 12, float %6186)  ; Cos(value)
  %6189 = fmul fast float %6188, %6133
  %6190 = call float @dx.op.tertiary.f32(i32 46, float %6187, float %6133, float 0.000000e+00)  ; FMad(a,b,c)
  %6191 = fmul fast float %6133, %6187
  %6192 = fsub fast float -0.000000e+00, %6191
  %6193 = call float @dx.op.tertiary.f32(i32 46, float %6188, float %6133, float 0.000000e+00)  ; FMad(a,b,c)
  br label %6194

; <label>:6194                                    ; preds = %6194, %6119
  %6195 = phi float [ 0.000000e+00, %6119 ], [ %6227, %6194 ]
  %6196 = phi float [ 0.000000e+00, %6119 ], [ %6229, %6194 ]
  %6197 = phi i32 [ 0, %6119 ], [ %6230, %6194 ]
  %6198 = mul i32 %6197, 2
  %6199 = add i32 0, %6198
  %6200 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6199
  %6201 = load float, float* %6200, align 4
  %6202 = mul i32 %6197, 2
  %6203 = add i32 1, %6202
  %6204 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6203
  %6205 = load float, float* %6204, align 4
  %6206 = fmul fast float %6189, %6201
  %6207 = call float @dx.op.tertiary.f32(i32 46, float %6205, float %6192, float %6206)  ; FMad(a,b,c)
  %6208 = fmul fast float %6201, %6190
  %6209 = call float @dx.op.tertiary.f32(i32 46, float %6205, float %6193, float %6208)  ; FMad(a,b,c)
  %6210 = fadd fast float %6207, %6182
  %6211 = fadd fast float %6209, %6183
  %6212 = fmul fast float %6210, %6128
  %6213 = fmul fast float %6211, %6128
  %6214 = call float @dx.op.binary.f32(i32 35, float %6212, float %6124)  ; FMax(a,b)
  %6215 = call float @dx.op.binary.f32(i32 35, float %6213, float %6124)  ; FMax(a,b)
  %6216 = call float @dx.op.binary.f32(i32 36, float %6214, float %6125)  ; FMin(a,b)
  %6217 = call float @dx.op.binary.f32(i32 36, float %6215, float %6125)  ; FMin(a,b)
  %6218 = fadd fast float %6216, %6122
  %6219 = fadd fast float %6217, %6123
  %6220 = uitofp i32 %6159 to float
  %6221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %66, float %6218, float %6219, float %6220, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6222 = extractvalue %dx.types.ResRet.f32 %6221, 0
  %6223 = fsub fast float %6222, %6185
  %6224 = fsub fast float %6223, %6132
  %6225 = fcmp fast ogt float %6224, 0.000000e+00
  %6226 = select i1 %6225, float 1.000000e+00, float 0.000000e+00
  %6227 = fadd fast float %6226, %6195
  %6228 = select i1 %6225, float %6224, float 0.000000e+00
  %6229 = fadd fast float %6228, %6196
  %6230 = add nuw nsw i32 %6197, 1
  %6231 = icmp eq i32 %6230, 8
  br i1 %6231, label %6232, label %6194

; <label>:6232                                    ; preds = %6194
  %6233 = fdiv fast float 1.000000e+00, %6227
  %6234 = fmul fast float %6233, %6229
  %6235 = fdiv fast float 1.000000e+00, %6185
  %6236 = fmul fast float %6234, %6235
  %6237 = call float @dx.op.unary.f32(i32 7, float %6236)  ; Saturate(value)
  %6238 = call float @dx.op.binary.f32(i32 35, float %6237, float 0.000000e+00)  ; FMax(a,b)
  %6239 = fmul fast float %6227, 1.250000e-01
  %6240 = call float @dx.op.unary.f32(i32 7, float %6239)  ; Saturate(value)
  %6241 = fmul fast float %6240, 2.000000e+00
  %6242 = fadd fast float %6241, -1.000000e+00
  %6243 = fcmp fast ogt float %6242, 0.000000e+00
  %6244 = fcmp fast olt float %6242, 0.000000e+00
  %6245 = zext i1 %6243 to i32
  %6246 = zext i1 %6244 to i32
  %6247 = sub nsw i32 %6245, %6246
  %6248 = sitofp i32 %6247 to float
  %6249 = fmul fast float %6248, %6242
  %6250 = fsub fast float 1.000000e+00, %6249
  %6251 = fmul fast float %6250, %6250
  %6252 = fmul fast float %6251, %6250
  %6253 = fsub fast float %6250, %6252
  %6254 = fmul fast float %6253, %6238
  %6255 = fsub fast float 1.000000e+00, %6252
  %6256 = fsub fast float %6255, %6254
  %6257 = fmul fast float %6248, 5.000000e-01
  %6258 = fmul fast float %6257, %6256
  %6259 = fsub fast float -5.000000e-01, %6258
  %6260 = fmul fast float %6259, %6093
  %6261 = fadd fast float %6260, 1.000000e+00
  %6262 = fmul fast float %6261, %6105
  br label %6263

; <label>:6263                                    ; preds = %6232, %6117
  %6264 = phi float [ %6262, %6232 ], [ %6105, %6117 ]
  %6265 = call float @dx.op.binary.f32(i32 36, float %6264, float %6264)  ; FMin(a,b)
  %6266 = call float @dx.op.binary.f32(i32 36, float %6264, float %6265)  ; FMin(a,b)
  %6267 = fcmp fast ogt float %6266, 0.000000e+00
  br i1 %6267, label %6268, label %6109, !dx.controlflow.hints !147

; <label>:6268                                    ; preds = %6263
  %6269 = fmul fast float %6264, %6027
  %6270 = fmul fast float %6264, %6028
  %6271 = fmul fast float %6264, %6029
  %6272 = fsub fast float %6011, %2095
  %6273 = fcmp fast ogt float %6272, 0.000000e+00
  %6274 = fsub fast float %150, %2095
  %6275 = fcmp fast ogt float %6274, 0.000000e+00
  %6276 = xor i1 %6275, %6273
  %6277 = fsub fast float %2095, %6011
  %6278 = fmul fast float %6277, 2.000000e+00
  %6279 = fadd fast float %6278, %6011
  %6280 = select i1 %6276, float %6011, float %6279
  %6281 = fsub fast float %6280, %150
  %6282 = call float @dx.op.dot3.f32(i32 55, float %6037, float %6038, float %6281, float %6037, float %6038, float %6281)  ; Dot3(ax,ay,az,bx,by,bz)
  %6283 = call float @dx.op.unary.f32(i32 25, float %6282)  ; Rsqrt(value)
  %6284 = fmul fast float %6283, %6037
  %6285 = fmul fast float %6283, %6038
  %6286 = fmul fast float %6283, %6281
  %6287 = fsub fast float %2095, %150
  %6288 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6287)  ; Dot3(ax,ay,az,bx,by,bz)
  %6289 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6284, float %6285, float %6286)  ; Dot3(ax,ay,az,bx,by,bz)
  %6290 = fdiv fast float 1.000000e+00, %6289
  %6291 = fmul fast float %6290, %6288
  %6292 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6274, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6293 = fcmp fast ogt float %6292, 0.000000e+00
  %6294 = fcmp fast olt float %6292, 0.000000e+00
  %6295 = zext i1 %6293 to i32
  %6296 = zext i1 %6294 to i32
  %6297 = sub nsw i32 %6295, %6296
  %6298 = sitofp i32 %6297 to float
  %6299 = fsub fast float %6280, %2095
  %6300 = call float @dx.op.dot3.f32(i32 55, float %6037, float %6038, float %6299, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6301 = fcmp fast ogt float %6300, 0.000000e+00
  %6302 = fcmp fast olt float %6300, 0.000000e+00
  %6303 = zext i1 %6301 to i32
  %6304 = zext i1 %6302 to i32
  %6305 = sub nsw i32 %6303, %6304
  %6306 = sitofp i32 %6305 to float
  %6307 = fcmp fast une float %6298, %6306
  br i1 %6307, label %6308, label %6318

; <label>:6308                                    ; preds = %6268
  %6309 = fmul fast float %6291, %6286
  %6310 = fmul fast float %6291, %6285
  %6311 = fmul fast float %6291, %6284
  %6312 = fmul fast float %6311, %6311
  %6313 = fmul fast float %6310, %6310
  %6314 = fadd fast float %6312, %6313
  %6315 = fmul fast float %6309, %6309
  %6316 = fadd fast float %6314, %6315
  %6317 = call float @dx.op.unary.f32(i32 24, float %6316)  ; Sqrt(value)
  br label %6330

; <label>:6318                                    ; preds = %6268
  %6319 = icmp slt i32 %6297, 0
  br i1 %6319, label %6320, label %6330

; <label>:6320                                    ; preds = %6318
  %6321 = fsub fast float %148, %6009
  %6322 = fsub fast float %149, %6010
  %6323 = fsub fast float %150, %6280
  %6324 = fmul fast float %6321, %6321
  %6325 = fmul fast float %6322, %6322
  %6326 = fadd fast float %6324, %6325
  %6327 = fmul fast float %6323, %6323
  %6328 = fadd fast float %6326, %6327
  %6329 = call float @dx.op.unary.f32(i32 24, float %6328)  ; Sqrt(value)
  br label %6330

; <label>:6330                                    ; preds = %6320, %6318, %6308
  %6331 = phi float [ %6317, %6308 ], [ %6329, %6320 ], [ 0.000000e+00, %6318 ]
  %6332 = and i1 %6275, %6273
  %6333 = fsub fast float -0.000000e+00, %6331
  %6334 = select i1 %6332, float -0.000000e+00, float %6333
  %6335 = fmul fast float %2096, 0x3FF7154760000000
  %6336 = fmul fast float %6335, %6334
  %6337 = fmul fast float %2097, 0x3FF7154760000000
  %6338 = fmul fast float %6337, %6334
  %6339 = fmul fast float %2098, 0x3FF7154760000000
  %6340 = fmul fast float %6339, %6334
  %6341 = call float @dx.op.unary.f32(i32 21, float %6336)  ; Exp(value)
  %6342 = call float @dx.op.unary.f32(i32 21, float %6338)  ; Exp(value)
  %6343 = call float @dx.op.unary.f32(i32 21, float %6340)  ; Exp(value)
  %6344 = call float @dx.op.unary.f32(i32 7, float %6341)  ; Saturate(value)
  %6345 = call float @dx.op.unary.f32(i32 7, float %6342)  ; Saturate(value)
  %6346 = call float @dx.op.unary.f32(i32 7, float %6343)  ; Saturate(value)
  %6347 = fmul fast float %6269, %6344
  %6348 = fmul fast float %6270, %6345
  %6349 = fmul fast float %6271, %6346
  %6350 = fsub fast float %6043, %2295
  %6351 = fsub fast float %6044, %2294
  %6352 = fsub fast float %6045, %2293
  %6353 = call float @dx.op.dot3.f32(i32 55, float %6350, float %6351, float %6352, float %6350, float %6351, float %6352)  ; Dot3(ax,ay,az,bx,by,bz)
  %6354 = call float @dx.op.unary.f32(i32 25, float %6353)  ; Rsqrt(value)
  %6355 = fmul fast float %6354, %6350
  %6356 = fmul fast float %6354, %6351
  %6357 = fmul fast float %6354, %6352
  %6358 = call float @dx.op.dot3.f32(i32 55, float %6043, float %6044, float %6045, float %2299, float %2300, float %2301)  ; Dot3(ax,ay,az,bx,by,bz)
  %6359 = call float @dx.op.dot3.f32(i32 55, float %2292, float %2291, float %2290, float %6355, float %6356, float %6357)  ; Dot3(ax,ay,az,bx,by,bz)
  %6360 = call float @dx.op.unary.f32(i32 7, float %6358)  ; Saturate(value)
  %6361 = fmul fast float %6360, %6050
  %6362 = fmul fast float %6360, %6360
  %6363 = fmul fast float %6362, %4326
  %6364 = call float @dx.op.unary.f32(i32 7, float %6363)  ; Saturate(value)
  %6365 = fmul fast float %6361, %6364
  %6366 = bitcast float %6040 to i32
  %6367 = ashr i32 %6366, 1
  %6368 = sub nsw i32 1597463007, %6367
  %6369 = bitcast i32 %6368 to float
  %6370 = fmul fast float %6369, %6037
  %6371 = fmul fast float %6369, %6038
  %6372 = fmul fast float %6369, %6039
  %6373 = fsub fast float %6370, %2295
  %6374 = fsub fast float %6371, %2294
  %6375 = fsub fast float %6372, %2293
  %6376 = call float @dx.op.dot3.f32(i32 55, float %6373, float %6374, float %6375, float %6373, float %6374, float %6375)  ; Dot3(ax,ay,az,bx,by,bz)
  %6377 = call float @dx.op.unary.f32(i32 25, float %6376)  ; Rsqrt(value)
  %6378 = fmul fast float %6373, %6377
  %6379 = fmul fast float %6374, %6377
  %6380 = fmul fast float %6375, %6377
  %6381 = call float @dx.op.dot3.f32(i32 55, float %2299, float %2300, float %2301, float %6378, float %6379, float %6380)  ; Dot3(ax,ay,az,bx,by,bz)
  %6382 = fmul fast float %6381, %6381
  %6383 = call float @dx.op.unary.f32(i32 6, float %6358)  ; FAbs(value)
  %6384 = fsub fast float 1.000000e+00, %2328
  %6385 = fmul fast float %2310, %2310
  %6386 = fmul fast float %6385, %6384
  %6387 = fadd fast float %6386, %2328
  %6388 = bitcast float %6387 to i32
  %6389 = ashr i32 %6388, 1
  %6390 = add nsw i32 %6389, 532487669
  %6391 = bitcast i32 %6390 to float
  %6392 = fadd fast float %6391, %2310
  %6393 = fmul fast float %2328, %6382
  %6394 = fsub fast float 1.000000e+00, %6382
  %6395 = fadd fast float %6394, %6393
  %6396 = fmul fast float %6383, %6383
  %6397 = fmul fast float %6396, %6384
  %6398 = fadd fast float %6397, %2328
  %6399 = bitcast float %6398 to i32
  %6400 = ashr i32 %6399, 1
  %6401 = add nsw i32 %6400, 532487669
  %6402 = bitcast i32 %6401 to float
  %6403 = fadd fast float %6402, %6383
  %6404 = fmul fast float %6395, %6395
  %6405 = fmul fast float %6404, %6392
  %6406 = fmul fast float %6405, %6403
  %6407 = fdiv fast float 1.000000e+00, %6406
  %6408 = bitcast float %2328 to i32
  %6409 = sitofp i32 %6408 to float
  %6410 = fmul fast float %6409, 0x3FE7F73180000000
  %6411 = fadd fast float %6410, 0x41AFE27C40000000
  %6412 = fptosi float %6411 to i32
  %6413 = bitcast i32 %6412 to float
  %6414 = fmul fast float %6006, 0x3FD80E9D60000000
  %6415 = fmul fast float %6414, %6369
  %6416 = fadd fast float %6413, %6415
  %6417 = bitcast float %6416 to i32
  %6418 = sub nsw i32 2129859010, %6417
  %6419 = bitcast i32 %6418 to float
  %6420 = fmul fast float %2328, %6407
  %6421 = fmul fast float %6420, %6413
  %6422 = fmul fast float %6421, %6419
  %6423 = fmul fast float %3594, 0x3FF9999980000000
  %6424 = fsub fast float 5.000000e+00, %6423
  %6425 = call float @dx.op.unary.f32(i32 6, float %6359)  ; FAbs(value)
  %6426 = fsub fast float 1.000000e+00, %6425
  %6427 = fmul fast float %3594, 0x41D9660740000000
  %6428 = fadd fast float %6427, 0xC1EFBF8940000000
  %6429 = bitcast float %6426 to i32
  %6430 = sitofp i32 %6429 to float
  %6431 = fmul fast float %6430, %6424
  %6432 = fadd fast float %6428, %6431
  %6433 = fptosi float %6432 to i32
  %6434 = bitcast i32 %6433 to float
  %6435 = fsub fast float 1.000000e+00, %2302
  %6436 = fsub fast float 1.000000e+00, %2303
  %6437 = fsub fast float 1.000000e+00, %2308
  %6438 = fmul fast float %6434, %6435
  %6439 = fmul fast float %6434, %6436
  %6440 = fmul fast float %6434, %6437
  %6441 = fadd fast float %6438, %2302
  %6442 = fadd fast float %6439, %2303
  %6443 = fadd fast float %6440, %2308
  br i1 %3617, label %6444, label %6467

; <label>:6444                                    ; preds = %6330
  %6445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %65, float %1670, float %6425, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6446 = extractvalue %dx.types.ResRet.f32 %6445, 0
  %6447 = extractvalue %dx.types.ResRet.f32 %6445, 1
  %6448 = extractvalue %dx.types.ResRet.f32 %6445, 2
  %6449 = fadd fast float %6446, -5.000000e-01
  %6450 = fadd fast float %6447, -5.000000e-01
  %6451 = fadd fast float %6448, -5.000000e-01
  %6452 = fmul fast float %2302, 4.000000e+00
  %6453 = fmul fast float %6452, %6435
  %6454 = fmul fast float %6453, %6449
  %6455 = fmul fast float %2303, 4.000000e+00
  %6456 = fmul fast float %6455, %6436
  %6457 = fmul fast float %6456, %6450
  %6458 = fmul fast float %2308, 4.000000e+00
  %6459 = fmul fast float %6458, %6437
  %6460 = fmul fast float %6459, %6451
  %6461 = fadd fast float %6454, %6441
  %6462 = fadd fast float %6457, %6442
  %6463 = fadd fast float %6460, %6443
  %6464 = call float @dx.op.unary.f32(i32 7, float %6461)  ; Saturate(value)
  %6465 = call float @dx.op.unary.f32(i32 7, float %6462)  ; Saturate(value)
  %6466 = call float @dx.op.unary.f32(i32 7, float %6463)  ; Saturate(value)
  br label %6467

; <label>:6467                                    ; preds = %6444, %6330
  %6468 = phi float [ %6464, %6444 ], [ %6441, %6330 ]
  %6469 = phi float [ %6465, %6444 ], [ %6442, %6330 ]
  %6470 = phi float [ %6466, %6444 ], [ %6443, %6330 ]
  %6471 = fmul fast float %6358, 9.843750e-01
  %6472 = fadd fast float %6471, 7.812500e-03
  %6473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %60, %dx.types.Handle %65, float %6472, float %3598, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6474 = extractvalue %dx.types.ResRet.f32 %6473, 0
  %6475 = extractvalue %dx.types.ResRet.f32 %6473, 1
  %6476 = extractvalue %dx.types.ResRet.f32 %6473, 2
  %6477 = extractvalue %dx.types.ResRet.f32 %6473, 3
  %6478 = fsub fast float %6476, %6474
  %6479 = fsub fast float %6477, %6475
  %6480 = fmul fast float %6478, %3604
  %6481 = fmul fast float %6479, %3604
  %6482 = fadd fast float %6480, %6474
  %6483 = fadd fast float %6481, %6475
  %6484 = fmul fast float %6482, %2302
  %6485 = fmul fast float %6482, %2303
  %6486 = fmul fast float %6482, %2308
  %6487 = fadd fast float %6484, %6483
  %6488 = fadd fast float %6485, %6483
  %6489 = fadd fast float %6486, %6483
  br i1 %3617, label %6490, label %6513

; <label>:6490                                    ; preds = %6467
  %6491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %65, float %1670, float %6358, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6492 = extractvalue %dx.types.ResRet.f32 %6491, 0
  %6493 = extractvalue %dx.types.ResRet.f32 %6491, 1
  %6494 = extractvalue %dx.types.ResRet.f32 %6491, 2
  %6495 = fadd fast float %6492, -5.000000e-01
  %6496 = fadd fast float %6493, -5.000000e-01
  %6497 = fadd fast float %6494, -5.000000e-01
  %6498 = fmul fast float %2302, 4.000000e+00
  %6499 = fmul fast float %6498, %6435
  %6500 = fmul fast float %6499, %6495
  %6501 = fmul fast float %2303, 4.000000e+00
  %6502 = fmul fast float %6501, %6436
  %6503 = fmul fast float %6502, %6496
  %6504 = fmul fast float %2308, 4.000000e+00
  %6505 = fmul fast float %6504, %6437
  %6506 = fmul fast float %6505, %6497
  %6507 = fadd fast float %6500, %6487
  %6508 = fadd fast float %6503, %6488
  %6509 = fadd fast float %6506, %6489
  %6510 = call float @dx.op.unary.f32(i32 7, float %6507)  ; Saturate(value)
  %6511 = call float @dx.op.unary.f32(i32 7, float %6508)  ; Saturate(value)
  %6512 = call float @dx.op.unary.f32(i32 7, float %6509)  ; Saturate(value)
  br label %6513

; <label>:6513                                    ; preds = %6490, %6467
  %6514 = phi float [ %6510, %6490 ], [ %6487, %6467 ]
  %6515 = phi float [ %6511, %6490 ], [ %6488, %6467 ]
  %6516 = phi float [ %6512, %6490 ], [ %6489, %6467 ]
  %6517 = call float @dx.op.binary.f32(i32 35, float %6515, float %6516)  ; FMax(a,b)
  %6518 = call float @dx.op.binary.f32(i32 35, float %6514, float %6517)  ; FMax(a,b)
  %6519 = fsub fast float 1.000000e+00, %6518
  %6520 = fmul fast float %6468, %6422
  %6521 = fmul fast float %6469, %6422
  %6522 = fmul fast float %6470, %6422
  %6523 = fsub fast float 1.000000e+00, %6359
  %6524 = bitcast float %6523 to i32
  %6525 = sitofp i32 %6524 to float
  %6526 = fmul fast float %6525, 5.000000e+00
  %6527 = fadd fast float %6526, 0xC1EFBF8940000000
  %6528 = fptosi float %6527 to i32
  %6529 = bitcast i32 %6528 to float
  %6530 = fmul fast float %6529, %1669
  %6531 = fmul fast float %6519, %6530
  %6532 = fmul fast float %6531, %4265
  %6533 = fmul fast float %6531, %4266
  %6534 = fmul fast float %6531, %4267
  %6535 = fadd fast float %6532, %6520
  %6536 = fadd fast float %6533, %6521
  %6537 = fadd fast float %6534, %6522
  %6538 = fmul fast float %6347, %1690
  %6539 = fmul fast float %6538, %6365
  %6540 = fmul fast float %6539, %6519
  %6541 = fmul fast float %6348, %1690
  %6542 = fmul fast float %6541, %6365
  %6543 = fmul fast float %6542, %6519
  %6544 = fmul fast float %6349, %1690
  %6545 = fmul fast float %6544, %6365
  %6546 = fmul fast float %6545, %6519
  %6547 = fadd fast float %6540, %5980
  %6548 = fadd fast float %6543, %5981
  %6549 = fadd fast float %6546, %5982
  %6550 = fmul fast float %6539, %6535
  %6551 = fmul fast float %6542, %6536
  %6552 = fmul fast float %6545, %6537
  %6553 = fadd fast float %6550, %5977
  %6554 = fadd fast float %6551, %5978
  %6555 = fadd fast float %6552, %5979
  br label %6109

; <label>:6556                                    ; preds = %6109
  br label %6557

; <label>:6557                                    ; preds = %6556, %5943
  %6558 = phi float [ %5945, %5943 ], [ %6110, %6556 ]
  %6559 = phi float [ %5946, %5943 ], [ %6111, %6556 ]
  %6560 = phi float [ %5947, %5943 ], [ %6112, %6556 ]
  %6561 = phi float [ %5948, %5943 ], [ %6113, %6556 ]
  %6562 = phi float [ %5949, %5943 ], [ %6114, %6556 ]
  %6563 = phi float [ %5950, %5943 ], [ %6115, %6556 ]
  %6564 = add i32 %5944, 1
  %6565 = icmp ugt i32 %6564, %5940
  br i1 %6565, label %6566, label %5943

; <label>:6566                                    ; preds = %6557
  br label %6567

; <label>:6567                                    ; preds = %6566, %5893, %5883
  %6568 = phi float [ %5884, %5883 ], [ %5884, %5893 ], [ %6558, %6566 ]
  %6569 = phi float [ %5885, %5883 ], [ %5885, %5893 ], [ %6559, %6566 ]
  %6570 = phi float [ %5886, %5883 ], [ %5886, %5893 ], [ %6560, %6566 ]
  %6571 = phi float [ %5887, %5883 ], [ %5887, %5893 ], [ %6561, %6566 ]
  %6572 = phi float [ %5888, %5883 ], [ %5888, %5893 ], [ %6562, %6566 ]
  %6573 = phi float [ %5889, %5883 ], [ %5889, %5893 ], [ %6563, %6566 ]
  %6574 = fmul fast float %1690, %1690
  %6575 = fmul fast float %6574, %4291
  %6576 = fmul fast float %6574, %4292
  %6577 = fmul fast float %6574, %4293
  %6578 = fadd fast float %6575, 1.000000e+00
  %6579 = fadd fast float %6576, 1.000000e+00
  %6580 = fadd fast float %6577, 1.000000e+00
  %6581 = call float @dx.op.dot3.f32(i32 55, float %6578, float %6579, float %6580, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6582 = fsub fast float 1.000000e+00, %6581
  %6583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6584 = extractvalue %dx.types.CBufRet.f32 %6583, 0
  %6585 = fmul fast float %6584, %4297
  %6586 = fmul fast float %2301, 2.000000e+00
  %6587 = fmul fast float %6586, %2311
  %6588 = fsub fast float %2293, %6587
  %6589 = call float @dx.op.unary.f32(i32 7, float %6588)  ; Saturate(value)
  %6590 = fsub fast float 1.000000e+00, %6589
  %6591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6592 = extractvalue %dx.types.CBufRet.f32 %6591, 3
  %6593 = fmul fast float %6592, %6590
  %6594 = fsub fast float 1.000000e+00, %1665
  %6595 = call float @dx.op.unary.f32(i32 7, float %6594)  ; Saturate(value)
  %6596 = fadd fast float %6573, %1664
  %6597 = fmul fast float %6596, %1665
  %6598 = fmul fast float %6593, %6595
  %6599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6600 = extractvalue %dx.types.CBufRet.f32 %6599, 3
  %6601 = fmul fast float %6571, %2296
  %6602 = fmul fast float %6572, %2297
  %6603 = fmul fast float %6573, %2298
  %6604 = fcmp fast ogt float %89, %199
  %6605 = and i1 %6604, %2101
  %6606 = or i1 %2107, %6605
  %6607 = icmp eq i32 %2100, 2
  %6608 = fcmp fast ole float %89, %199
  %6609 = and i1 %6608, %6607
  %6610 = or i1 %6609, %6606
  br i1 %6605, label %6611, label %6870

; <label>:6611                                    ; preds = %6567
  %6612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6613 = extractvalue %dx.types.CBufRet.f32 %6612, 2
  %6614 = extractvalue %dx.types.CBufRet.f32 %6612, 3
  %6615 = fmul fast float %6613, %101
  %6616 = fmul fast float %6614, %102
  %6617 = call float @dx.op.unary.f32(i32 7, float %6615)  ; Saturate(value)
  %6618 = call float @dx.op.unary.f32(i32 7, float %6616)  ; Saturate(value)
  %6619 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %65, float %6617, float %6618, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6620 = extractvalue %dx.types.ResRet.f32 %6619, 0
  %6621 = extractvalue %dx.types.ResRet.f32 %6619, 1
  %6622 = extractvalue %dx.types.ResRet.f32 %6619, 2
  %6623 = extractvalue %dx.types.ResRet.f32 %6619, 3
  %6624 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %65, float %6617, float %6618, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6625 = extractvalue %dx.types.ResRet.f32 %6624, 0
  %6626 = extractvalue %dx.types.ResRet.f32 %6624, 1
  %6627 = extractvalue %dx.types.ResRet.f32 %6624, 2
  %6628 = extractvalue %dx.types.ResRet.f32 %6624, 3
  %6629 = call float @dx.op.binary.f32(i32 35, float %6621, float %6622)  ; FMax(a,b)
  %6630 = call float @dx.op.binary.f32(i32 35, float %6620, float %6629)  ; FMax(a,b)
  %6631 = call float @dx.op.binary.f32(i32 35, float %6630, float %6623)  ; FMax(a,b)
  %6632 = call float @dx.op.binary.f32(i32 36, float %6626, float %6627)  ; FMin(a,b)
  %6633 = call float @dx.op.binary.f32(i32 36, float %6625, float %6632)  ; FMin(a,b)
  %6634 = call float @dx.op.binary.f32(i32 36, float %6633, float %6628)  ; FMin(a,b)
  %6635 = fmul fast float %6631, 2.550000e+02
  %6636 = fadd fast float %6635, 0x3F70101020000000
  %6637 = fptoui float %6636 to i32
  %6638 = fmul fast float %6634, 2.550000e+02
  %6639 = fadd fast float %6638, 0x3F70101020000000
  %6640 = fptoui float %6639 to i32
  %6641 = icmp ult i32 %6637, %6640
  br i1 %6641, label %6642, label %6810

; <label>:6642                                    ; preds = %6611
  %6643 = fcmp fast ogt float %88, 9.843750e-01
  %6644 = fadd fast float %89, -4.000000e+00
  %6645 = select i1 %6643, float -4.000000e+00, float %6644
  %6646 = call float @dx.op.binary.f32(i32 35, float %6645, float 0.000000e+00)  ; FMax(a,b)
  %6647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6648 = extractvalue %dx.types.CBufRet.f32 %6647, 0
  %6649 = fadd fast float %6648, %6646
  %6650 = extractvalue %dx.types.CBufRet.f32 %6647, 2
  %6651 = fmul fast float %6649, %6650
  %6652 = call float @dx.op.unary.f32(i32 23, float %6651)  ; Log(value)
  %6653 = extractvalue %dx.types.CBufRet.f32 %6647, 3
  %6654 = fmul fast float %6653, %6652
  %6655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6656 = extractvalue %dx.types.CBufRet.f32 %6655, 2
  %6657 = fmul fast float %6654, %6656
  %6658 = call float @dx.op.unary.f32(i32 7, float %6657)  ; Saturate(value)
  %6659 = uitofp i32 %6637 to float
  %6660 = uitofp i32 %6640 to float
  %6661 = fadd fast float %6659, 5.000000e-01
  %6662 = fadd fast float %6660, 5.000000e-01
  %6663 = fmul fast float %6656, %6661
  %6664 = fmul fast float %6656, %6662
  %6665 = fadd fast float %6663, 0x3F0FFB4800000000
  %6666 = fadd fast float %6664, 0xBF0FFB4800000000
  %6667 = call float @dx.op.binary.f32(i32 35, float %6658, float %6665)  ; FMax(a,b)
  %6668 = call float @dx.op.binary.f32(i32 36, float %6667, float %6666)  ; FMin(a,b)
  %6669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6670 = extractvalue %dx.types.CBufRet.f32 %6669, 1
  %6671 = extractvalue %dx.types.CBufRet.f32 %6669, 2
  %6672 = extractvalue %dx.types.CBufRet.f32 %6669, 0
  %6673 = fmul fast float %6670, %6668
  %6674 = fadd fast float %6672, %6673
  %6675 = fadd fast float %6672, %6671
  %6676 = fsub fast float %6670, %6671
  %6677 = fadd fast float %6676, %6672
  %6678 = call float @dx.op.binary.f32(i32 35, float %6674, float %6675)  ; FMax(a,b)
  %6679 = call float @dx.op.binary.f32(i32 36, float %6678, float %6677)  ; FMin(a,b)
  %6680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %63, float %6617, float %6618, float %6679, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6681 = extractvalue %dx.types.ResRet.f32 %6680, 0
  %6682 = extractvalue %dx.types.ResRet.f32 %6680, 1
  %6683 = extractvalue %dx.types.ResRet.f32 %6680, 2
  %6684 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6685 = extractvalue %dx.types.CBufRet.i32 %6684, 0
  %6686 = extractvalue %dx.types.CBufRet.i32 %6684, 1
  %6687 = uitofp i32 %6685 to float
  %6688 = uitofp i32 %6686 to float
  %6689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6690 = extractvalue %dx.types.CBufRet.f32 %6689, 0
  %6691 = extractvalue %dx.types.CBufRet.f32 %6689, 1
  %6692 = fmul fast float %6687, %6617
  %6693 = fmul fast float %6688, %6618
  %6694 = fadd fast float %6692, -5.000000e-01
  %6695 = fadd fast float %6693, -5.000000e-01
  %6696 = call float @dx.op.unary.f32(i32 22, float %6694)  ; Frc(value)
  %6697 = call float @dx.op.unary.f32(i32 22, float %6695)  ; Frc(value)
  %6698 = fmul fast float %6696, %6696
  %6699 = fmul fast float %6698, %6696
  %6700 = fsub fast float 3.000000e+00, %6696
  %6701 = fmul fast float %6698, %6700
  %6702 = fmul fast float %6696, 3.000000e+00
  %6703 = fmul fast float %6699, 3.000000e+00
  %6704 = fmul fast float %6698, 6.000000e+00
  %6705 = fsub fast float %6703, %6704
  %6706 = fadd fast float %6705, 4.000000e+00
  %6707 = fmul fast float %6706, 0x3FC5555560000000
  %6708 = fmul fast float %6699, -3.000000e+00
  %6709 = fadd fast float %6698, %6696
  %6710 = fmul fast float %6709, 3.000000e+00
  %6711 = fadd fast float %6708, 1.000000e+00
  %6712 = fadd fast float %6711, %6710
  %6713 = fmul fast float %6699, 0x3FC5555560000000
  %6714 = fmul fast float %6697, %6697
  %6715 = fmul fast float %6714, %6697
  %6716 = fsub fast float 3.000000e+00, %6697
  %6717 = fmul fast float %6714, %6716
  %6718 = fmul fast float %6697, 3.000000e+00
  %6719 = fmul fast float %6715, 3.000000e+00
  %6720 = fmul fast float %6714, 6.000000e+00
  %6721 = fsub fast float %6719, %6720
  %6722 = fadd fast float %6721, 4.000000e+00
  %6723 = fmul fast float %6722, 0x3FC5555560000000
  %6724 = fmul fast float %6715, -3.000000e+00
  %6725 = fadd fast float %6714, %6697
  %6726 = fmul fast float %6725, 3.000000e+00
  %6727 = fadd fast float %6724, 1.000000e+00
  %6728 = fadd fast float %6727, %6726
  %6729 = fmul fast float %6715, 0x3FC5555560000000
  %6730 = fadd fast float %6696, 1.000000e+00
  %6731 = fsub fast float 1.000000e+00, %6702
  %6732 = fadd fast float %6731, %6701
  %6733 = fadd fast float %6732, %6706
  %6734 = fmul fast float %6733, 0x3FC5555560000000
  %6735 = fdiv fast float %6707, %6734
  %6736 = fsub fast float %6730, %6735
  %6737 = fsub fast float 1.000000e+00, %6696
  %6738 = fadd fast float %6712, %6699
  %6739 = fmul fast float %6738, 0x3FC5555560000000
  %6740 = fdiv fast float %6713, %6739
  %6741 = fadd fast float %6737, %6740
  %6742 = fadd fast float %6697, 1.000000e+00
  %6743 = fsub fast float 1.000000e+00, %6718
  %6744 = fadd fast float %6743, %6717
  %6745 = fadd fast float %6744, %6722
  %6746 = fmul fast float %6745, 0x3FC5555560000000
  %6747 = fdiv fast float %6723, %6746
  %6748 = fsub fast float %6742, %6747
  %6749 = fsub fast float 1.000000e+00, %6697
  %6750 = fadd fast float %6728, %6715
  %6751 = fmul fast float %6750, 0x3FC5555560000000
  %6752 = fdiv fast float %6729, %6751
  %6753 = fadd fast float %6752, %6749
  %6754 = fmul fast float %6736, %6690
  %6755 = fsub fast float %6617, %6754
  %6756 = fmul fast float %6741, %6690
  %6757 = fadd fast float %6756, %6617
  %6758 = fmul fast float %6753, %6691
  %6759 = fadd fast float %6758, %6618
  %6760 = fmul fast float %6748, %6691
  %6761 = fsub fast float %6618, %6760
  %6762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %63, float %6755, float %6761, float %6679, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6763 = extractvalue %dx.types.ResRet.f32 %6762, 0
  %6764 = extractvalue %dx.types.ResRet.f32 %6762, 1
  %6765 = extractvalue %dx.types.ResRet.f32 %6762, 2
  %6766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %63, float %6757, float %6761, float %6679, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6767 = extractvalue %dx.types.ResRet.f32 %6766, 0
  %6768 = extractvalue %dx.types.ResRet.f32 %6766, 1
  %6769 = extractvalue %dx.types.ResRet.f32 %6766, 2
  %6770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %63, float %6755, float %6759, float %6679, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6771 = extractvalue %dx.types.ResRet.f32 %6770, 0
  %6772 = extractvalue %dx.types.ResRet.f32 %6770, 1
  %6773 = extractvalue %dx.types.ResRet.f32 %6770, 2
  %6774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %63, float %6757, float %6759, float %6679, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6775 = extractvalue %dx.types.ResRet.f32 %6774, 0
  %6776 = extractvalue %dx.types.ResRet.f32 %6774, 1
  %6777 = extractvalue %dx.types.ResRet.f32 %6774, 2
  %6778 = fsub fast float %6771, %6763
  %6779 = fsub fast float %6772, %6764
  %6780 = fsub fast float %6773, %6765
  %6781 = fmul fast float %6778, %6751
  %6782 = fmul fast float %6779, %6751
  %6783 = fmul fast float %6780, %6751
  %6784 = fadd fast float %6781, %6763
  %6785 = fadd fast float %6782, %6764
  %6786 = fadd fast float %6783, %6765
  %6787 = fsub fast float %6775, %6767
  %6788 = fsub fast float %6776, %6768
  %6789 = fsub fast float %6777, %6769
  %6790 = fmul fast float %6787, %6751
  %6791 = fmul fast float %6788, %6751
  %6792 = fmul fast float %6789, %6751
  %6793 = fsub fast float %6767, %6784
  %6794 = fadd fast float %6793, %6790
  %6795 = fsub fast float %6768, %6785
  %6796 = fadd fast float %6795, %6791
  %6797 = fsub fast float %6769, %6786
  %6798 = fadd fast float %6797, %6792
  %6799 = fmul fast float %6794, %6739
  %6800 = fmul fast float %6796, %6739
  %6801 = fmul fast float %6798, %6739
  %6802 = fadd fast float %6799, %6784
  %6803 = fadd fast float %6800, %6785
  %6804 = fadd fast float %6801, %6786
  %6805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6806 = extractvalue %dx.types.CBufRet.f32 %6805, 1
  %6807 = fmul fast float %6802, %6806
  %6808 = fmul fast float %6803, %6806
  %6809 = fmul fast float %6804, %6806
  br label %6810

; <label>:6810                                    ; preds = %6642, %6611
  %6811 = phi float [ %6681, %6642 ], [ 1.000000e+00, %6611 ]
  %6812 = phi float [ %6682, %6642 ], [ 1.000000e+00, %6611 ]
  %6813 = phi float [ %6683, %6642 ], [ 1.000000e+00, %6611 ]
  %6814 = phi float [ %6807, %6642 ], [ 0.000000e+00, %6611 ]
  %6815 = phi float [ %6808, %6642 ], [ 0.000000e+00, %6611 ]
  %6816 = phi float [ %6809, %6642 ], [ 0.000000e+00, %6611 ]
  %6817 = fmul fast float %6814, %6582
  %6818 = fmul fast float %6815, %6582
  %6819 = fmul fast float %6816, %6582
  %6820 = call float @dx.op.dot3.f32(i32 55, float %6811, float %6812, float %6813, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6821 = call float @dx.op.dot3.f32(i32 55, float %6817, float %6818, float %6819, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6822 = select i1 %239, float %6820, float %6811
  %6823 = select i1 %239, float %6820, float %6812
  %6824 = select i1 %239, float 1.000000e+00, float %6813
  %6825 = select i1 %239, float %6821, float %6817
  %6826 = select i1 %239, float 0.000000e+00, float %6818
  %6827 = select i1 %239, float 0.000000e+00, float %6819
  %6828 = fmul fast float %6822, %6601
  %6829 = fmul fast float %6823, %6602
  %6830 = fmul fast float %6824, %6603
  %6831 = fadd fast float %6828, %6825
  %6832 = fadd fast float %6829, %6826
  %6833 = fadd fast float %6827, %6830
  %6834 = fmul fast float %6822, %6568
  %6835 = fmul fast float %6823, %6569
  %6836 = fmul fast float %6824, %6570
  %6837 = fmul fast float %101, 2.000000e+00
  %6838 = fmul fast float %6837, %6613
  %6839 = fmul fast float %102, 2.000000e+00
  %6840 = fmul fast float %6839, %6614
  %6841 = fsub fast float 1.000000e+00, %6838
  %6842 = fsub fast float 1.000000e+00, %6840
  %6843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6844 = extractvalue %dx.types.CBufRet.f32 %6843, 0
  %6845 = extractvalue %dx.types.CBufRet.f32 %6843, 1
  %6846 = extractvalue %dx.types.CBufRet.f32 %6843, 2
  %6847 = fmul fast float %6841, %6844
  %6848 = fmul fast float %6841, %6845
  %6849 = fmul fast float %6841, %6846
  %6850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6851 = extractvalue %dx.types.CBufRet.f32 %6850, 0
  %6852 = extractvalue %dx.types.CBufRet.f32 %6850, 1
  %6853 = extractvalue %dx.types.CBufRet.f32 %6850, 2
  %6854 = fmul fast float %6842, %6851
  %6855 = fmul fast float %6842, %6852
  %6856 = fmul fast float %6842, %6853
  %6857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6858 = extractvalue %dx.types.CBufRet.f32 %6857, 0
  %6859 = extractvalue %dx.types.CBufRet.f32 %6857, 1
  %6860 = extractvalue %dx.types.CBufRet.f32 %6857, 2
  %6861 = fadd fast float %6854, %6858
  %6862 = fadd fast float %6861, %6847
  %6863 = fadd fast float %6855, %6859
  %6864 = fadd fast float %6863, %6848
  %6865 = fadd fast float %6856, %6860
  %6866 = fadd fast float %6865, %6849
  %6867 = fmul fast float %6862, %199
  %6868 = fmul fast float %6864, %199
  %6869 = fmul fast float %6866, %199
  br label %6870

; <label>:6870                                    ; preds = %6810, %6567
  %6871 = phi float [ %6867, %6810 ], [ %148, %6567 ]
  %6872 = phi float [ %6868, %6810 ], [ %149, %6567 ]
  %6873 = phi float [ %6869, %6810 ], [ %150, %6567 ]
  %6874 = phi float [ %199, %6810 ], [ %89, %6567 ]
  %6875 = phi float [ %6831, %6810 ], [ %6601, %6567 ]
  %6876 = phi float [ %6832, %6810 ], [ %6602, %6567 ]
  %6877 = phi float [ %6833, %6810 ], [ %6603, %6567 ]
  %6878 = phi float [ %6834, %6810 ], [ %6568, %6567 ]
  %6879 = phi float [ %6835, %6810 ], [ %6569, %6567 ]
  %6880 = phi float [ %6836, %6810 ], [ %6570, %6567 ]
  %6881 = phi float [ %6811, %6810 ], [ 1.000000e+00, %6567 ]
  br i1 %6610, label %8036, label %6882

; <label>:6882                                    ; preds = %6870
  %6883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6884 = extractvalue %dx.types.CBufRet.f32 %6883, 0
  %6885 = extractvalue %dx.types.CBufRet.f32 %6883, 1
  %6886 = extractvalue %dx.types.CBufRet.f32 %6883, 2
  %6887 = extractvalue %dx.types.CBufRet.f32 %6883, 3
  %6888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6889 = extractvalue %dx.types.CBufRet.f32 %6888, 0
  %6890 = extractvalue %dx.types.CBufRet.f32 %6888, 1
  %6891 = extractvalue %dx.types.CBufRet.f32 %6888, 2
  %6892 = extractvalue %dx.types.CBufRet.f32 %6888, 3
  %6893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6894 = extractvalue %dx.types.CBufRet.f32 %6893, 0
  %6895 = extractvalue %dx.types.CBufRet.f32 %6893, 1
  %6896 = extractvalue %dx.types.CBufRet.f32 %6893, 2
  %6897 = extractvalue %dx.types.CBufRet.f32 %6893, 3
  %6898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6899 = extractvalue %dx.types.CBufRet.f32 %6898, 0
  %6900 = extractvalue %dx.types.CBufRet.f32 %6898, 1
  %6901 = extractvalue %dx.types.CBufRet.f32 %6898, 2
  %6902 = extractvalue %dx.types.CBufRet.f32 %6898, 3
  %6903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6904 = extractvalue %dx.types.CBufRet.f32 %6903, 3
  %6905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6906 = extractvalue %dx.types.CBufRet.f32 %6905, 3
  %6907 = extractvalue %dx.types.CBufRet.f32 %6905, 0
  %6908 = extractvalue %dx.types.CBufRet.f32 %6905, 1
  %6909 = extractvalue %dx.types.CBufRet.f32 %6905, 2
  %6910 = fcmp fast olt float %6909, -5.000000e-01
  %6911 = call float @dx.op.dot3.f32(i32 55, float %6871, float %6872, float %6873, float %6871, float %6872, float %6873)  ; Dot3(ax,ay,az,bx,by,bz)
  %6912 = call float @dx.op.unary.f32(i32 25, float %6911)  ; Rsqrt(value)
  %6913 = fmul fast float %6912, %6911
  %6914 = fmul fast float %6912, %6871
  %6915 = fmul fast float %6912, %6872
  %6916 = fmul fast float %6912, %6873
  %6917 = fadd fast float %6913, %6887
  %6918 = call float @dx.op.dot3.f32(i32 55, float %6914, float %6915, float %6916, float %6884, float %6885, float %6886)  ; Dot3(ax,ay,az,bx,by,bz)
  %6919 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6920 = extractvalue %dx.types.CBufRet.i32 %6919, 1
  %6921 = and i32 %6920, 1
  %6922 = icmp ne i32 %6921, 0
  %6923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6924 = extractvalue %dx.types.CBufRet.f32 %6923, 2
  %6925 = fcmp fast ogt float %6924, 0.000000e+00
  %6926 = and i1 %6922, %6925
  br i1 %6926, label %6927, label %7333, !dx.controlflow.hints !148

; <label>:6927                                    ; preds = %6882
  %6928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6929 = extractvalue %dx.types.CBufRet.f32 %6928, 3
  %6930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6931 = extractvalue %dx.types.CBufRet.f32 %6930, 2
  %6932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6933 = extractvalue %dx.types.CBufRet.f32 %6932, 2
  %6934 = fsub fast float %6931, %6933
  %6935 = and i32 %6920, 2
  %6936 = extractvalue %dx.types.CBufRet.i32 %6919, 0
  %6937 = call i32 @dx.op.binary.i32(i32 40, i32 %6936, i32 3)  ; UMin(a,b)
  %6938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6939 = extractvalue %dx.types.CBufRet.f32 %6938, 0
  %6940 = extractvalue %dx.types.CBufRet.f32 %6938, 1
  %6941 = extractvalue %dx.types.CBufRet.f32 %6932, 0
  %6942 = extractvalue %dx.types.CBufRet.f32 %6932, 1
  %6943 = fsub fast float %6939, %6941
  %6944 = fsub fast float %6940, %6942
  %6945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6946 = extractvalue %dx.types.CBufRet.f32 %6945, 0
  %6947 = fcmp fast ogt float %6946, 0.000000e+00
  %6948 = fsub fast float -0.000000e+00, %6943
  %6949 = fsub fast float -0.000000e+00, %6944
  %6950 = call float @dx.op.dot2.f32(i32 54, float %6914, float %6915, float %6914, float %6915)  ; Dot2(ax,ay,bx,by)
  %6951 = call float @dx.op.dot2.f32(i32 54, float %6914, float %6915, float %6948, float %6949)  ; Dot2(ax,ay,bx,by)
  %6952 = fmul fast float %6951, 2.000000e+00
  %6953 = call float @dx.op.dot2.f32(i32 54, float %6948, float %6949, float %6948, float %6949)  ; Dot2(ax,ay,bx,by)
  %6954 = fmul fast float %6946, %6946
  %6955 = fsub fast float %6953, %6954
  %6956 = fmul fast float %6952, %6952
  %6957 = fmul fast float %6950, 4.000000e+00
  %6958 = fmul fast float %6957, %6955
  %6959 = fsub fast float %6956, %6958
  %6960 = fcmp fast ogt float %6959, 0.000000e+00
  br i1 %6960, label %6961, label %6976

; <label>:6961                                    ; preds = %6927
  %6962 = fcmp fast ogt float %6952, 0.000000e+00
  %6963 = call float @dx.op.unary.f32(i32 24, float %6959)  ; Sqrt(value)
  %6964 = fsub fast float -0.000000e+00, %6963
  %6965 = select i1 %6962, float %6963, float %6964
  %6966 = fadd fast float %6965, %6952
  %6967 = fmul float %6966, -5.000000e-01
  %6968 = fdiv fast float %6967, %6950
  %6969 = call float @dx.op.binary.f32(i32 35, float %6968, float 0.000000e+00)  ; FMax(a,b)
  %6970 = call float @dx.op.binary.f32(i32 36, float %6913, float %6969)  ; FMin(a,b)
  %6971 = fdiv fast float %6955, %6967
  %6972 = call float @dx.op.binary.f32(i32 35, float %6971, float 0.000000e+00)  ; FMax(a,b)
  %6973 = call float @dx.op.binary.f32(i32 36, float %6913, float %6972)  ; FMin(a,b)
  %6974 = call float @dx.op.binary.f32(i32 36, float %6970, float %6973)  ; FMin(a,b)
  %6975 = call float @dx.op.binary.f32(i32 35, float %6970, float %6973)  ; FMax(a,b)
  br label %6976

; <label>:6976                                    ; preds = %6961, %6927
  %6977 = phi float [ %6975, %6961 ], [ -1.000000e+00, %6927 ]
  %6978 = phi float [ %6974, %6961 ], [ -1.000000e+00, %6927 ]
  %6979 = phi i1 [ true, %6961 ], [ false, %6927 ]
  %6980 = and i1 %6947, %6979
  br i1 %6980, label %6981, label %6983

; <label>:6981                                    ; preds = %6976
  %6982 = fcmp fast oeq float %6978, %6977
  br i1 %6982, label %7286, label %6984

; <label>:6983                                    ; preds = %6976
  br i1 %6947, label %7286, label %6984

; <label>:6984                                    ; preds = %6983, %6981
  %6985 = phi float [ %6913, %6983 ], [ %6977, %6981 ]
  %6986 = phi float [ 0.000000e+00, %6983 ], [ %6978, %6981 ]
  %6987 = icmp ne i32 %6935, 0
  %6988 = fmul fast float %6985, %6916
  %6989 = fadd fast float %6988, %6929
  %6990 = fmul fast float %6989, %6985
  %6991 = select i1 %6987, float 0.000000e+00, float %6990
  %6992 = fcmp fast oeq float %6916, 0.000000e+00
  %6993 = fdiv fast float %6934, %6916
  %6994 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6993)  ; FMax(a,b)
  %6995 = select i1 %6992, float %6985, float %6994
  %6996 = call float @dx.op.binary.f32(i32 36, float %6985, float %6995)  ; FMin(a,b)
  %6997 = fcmp fast ogt float %6916, 0.000000e+00
  %6998 = fcmp fast olt float %6934, 0.000000e+00
  br i1 %6997, label %6999, label %7056

; <label>:6999                                    ; preds = %6984
  %7000 = icmp eq i32 %6935, 0
  br i1 %6998, label %7001, label %7045

; <label>:7001                                    ; preds = %6999
  %7002 = select i1 %7000, float %6985, float 0.000000e+00
  %7003 = fsub fast float -0.000000e+00, %7002
  %7004 = call float @dx.op.unary.f32(i32 6, float %7003)  ; FAbs(value)
  %7005 = fmul fast float %7002, %6916
  %7006 = fadd fast float %7005, %6929
  %7007 = fmul fast float %7004, %7006
  %7008 = fsub fast float %6991, %7007
  %7009 = fsub fast float %6985, %7004
  %7010 = select i1 %7000, float %7009, float 0.000000e+00
  %7011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7012 = extractvalue %dx.types.CBufRet.f32 %7011, 0
  %7013 = extractvalue %dx.types.CBufRet.f32 %7011, 1
  %7014 = extractvalue %dx.types.CBufRet.f32 %7011, 2
  %7015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7016 = extractvalue %dx.types.CBufRet.f32 %7015, 0
  %7017 = extractvalue %dx.types.CBufRet.f32 %7015, 1
  %7018 = extractvalue %dx.types.CBufRet.f32 %7015, 2
  %7019 = extractvalue %dx.types.CBufRet.f32 %7015, 3
  %7020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7021 = extractvalue %dx.types.CBufRet.f32 %7020, 3
  %7022 = call float @dx.op.binary.f32(i32 36, float %7008, float %7021)  ; FMin(a,b)
  %7023 = fmul fast float %7019, %7010
  %7024 = call float @dx.op.unary.f32(i32 7, float %7023)  ; Saturate(value)
  %7025 = fsub fast float %7016, %7012
  %7026 = fsub fast float %7017, %7013
  %7027 = fsub fast float %7018, %7014
  %7028 = fmul fast float %7024, %7025
  %7029 = fmul fast float %7024, %7026
  %7030 = fmul fast float %7024, %7027
  %7031 = fadd fast float %7028, %7012
  %7032 = fadd fast float %7029, %7013
  %7033 = fadd fast float %7030, %7014
  %7034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7035 = extractvalue %dx.types.CBufRet.f32 %7034, 0
  %7036 = extractvalue %dx.types.CBufRet.f32 %7034, 1
  %7037 = fadd fast float %7036, %7035
  %7038 = call float @dx.op.unary.f32(i32 7, float %7037)  ; Saturate(value)
  %7039 = extractvalue %dx.types.CBufRet.f32 %7034, 2
  %7040 = extractvalue %dx.types.CBufRet.f32 %7034, 3
  %7041 = fadd fast float %7040, %7039
  %7042 = call float @dx.op.unary.f32(i32 7, float %7041)  ; Saturate(value)
  %7043 = fmul fast float %7038, %7022
  %7044 = fmul fast float %7043, %7042
  br label %7286

; <label>:7045                                    ; preds = %6999
  br i1 %7000, label %7046, label %7067

; <label>:7046                                    ; preds = %7045
  %7047 = call float @dx.op.binary.f32(i32 36, float %6996, float %6986)  ; FMin(a,b)
  %7048 = fsub fast float %6996, %7047
  %7049 = fsub fast float %7048, %6985
  %7050 = call float @dx.op.unary.f32(i32 6, float %7049)  ; FAbs(value)
  %7051 = fadd fast float %7048, %6985
  %7052 = fmul fast float %7051, %6916
  %7053 = fadd fast float %7052, %6929
  %7054 = fmul fast float %7053, %7050
  %7055 = fsub fast float %6991, %7054
  br label %7067

; <label>:7056                                    ; preds = %6984
  br i1 %6998, label %7057, label %7067

; <label>:7057                                    ; preds = %7056
  %7058 = call float @dx.op.binary.f32(i32 35, float %6986, float %6996)  ; FMax(a,b)
  %7059 = icmp eq i32 %6935, 0
  %7060 = select i1 %7059, float %6996, float 0.000000e+00
  %7061 = fsub fast float -0.000000e+00, %7060
  %7062 = call float @dx.op.unary.f32(i32 6, float %7061)  ; FAbs(value)
  %7063 = fmul fast float %7060, %6916
  %7064 = fadd fast float %7063, %6929
  %7065 = fmul fast float %7062, %7064
  %7066 = fsub fast float %6991, %7065
  br label %7067

; <label>:7067                                    ; preds = %7057, %7056, %7046, %7045
  %7068 = phi float [ %6986, %7045 ], [ %6986, %7046 ], [ %7058, %7057 ], [ %6986, %7056 ]
  %7069 = phi float [ 0.000000e+00, %7045 ], [ %7050, %7046 ], [ %7062, %7057 ], [ 0.000000e+00, %7056 ]
  %7070 = phi float [ %6991, %7045 ], [ %7055, %7046 ], [ %7066, %7057 ], [ %6991, %7056 ]
  %7071 = phi float [ %6996, %7045 ], [ %6996, %7046 ], [ %6985, %7057 ], [ %6985, %7056 ]
  %7072 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %7072, align 4, !tbaa !135, !noalias !149
  %7073 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %7073, align 4, !tbaa !135, !noalias !149
  %7074 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %7074, align 4, !tbaa !135, !noalias !149
  %7075 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %7075, align 4, !tbaa !135, !noalias !149
  %7076 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %7076, align 4, !tbaa !135, !noalias !149
  %7077 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %7077, align 4, !tbaa !135, !noalias !149
  %7078 = icmp sgt i32 %6937, 0
  br i1 %7078, label %7079, label %7140

; <label>:7079                                    ; preds = %7067
  br label %7080

; <label>:7080                                    ; preds = %7129, %7079
  %7081 = phi i32 [ %7130, %7129 ], [ 0, %7079 ]
  %7082 = phi i32 [ %7131, %7129 ], [ 0, %7079 ]
  %7083 = add nuw i32 %7082, 171
  %7084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 %7083)  ; CBufferLoadLegacy(handle,regIndex)
  %7085 = extractvalue %dx.types.CBufRet.f32 %7084, 0
  %7086 = extractvalue %dx.types.CBufRet.f32 %7084, 1
  %7087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7088 = extractvalue %dx.types.CBufRet.f32 %7087, 0
  %7089 = extractvalue %dx.types.CBufRet.f32 %7087, 1
  %7090 = fsub fast float %7085, %7088
  %7091 = fsub fast float %7086, %7089
  %7092 = extractvalue %dx.types.CBufRet.f32 %7084, 2
  %7093 = fsub fast float -0.000000e+00, %7090
  %7094 = fsub fast float -0.000000e+00, %7091
  %7095 = call float @dx.op.dot2.f32(i32 54, float %6914, float %6915, float %7093, float %7094)  ; Dot2(ax,ay,bx,by)
  %7096 = fmul fast float %7095, 2.000000e+00
  %7097 = call float @dx.op.dot2.f32(i32 54, float %7093, float %7094, float %7093, float %7094)  ; Dot2(ax,ay,bx,by)
  %7098 = fmul fast float %7092, %7092
  %7099 = fsub fast float %7097, %7098
  %7100 = fmul fast float %7096, %7096
  %7101 = fmul fast float %6957, %7099
  %7102 = fsub fast float %7100, %7101
  %7103 = fcmp fast ogt float %7102, 0.000000e+00
  br i1 %7103, label %7104, label %7119

; <label>:7104                                    ; preds = %7080
  %7105 = fcmp fast ogt float %7096, 0.000000e+00
  %7106 = call float @dx.op.unary.f32(i32 24, float %7102)  ; Sqrt(value)
  %7107 = fsub fast float -0.000000e+00, %7106
  %7108 = select i1 %7105, float %7106, float %7107
  %7109 = fadd fast float %7108, %7096
  %7110 = fmul float %7109, -5.000000e-01
  %7111 = fdiv fast float %7110, %6950
  %7112 = call float @dx.op.binary.f32(i32 35, float %7111, float 0.000000e+00)  ; FMax(a,b)
  %7113 = call float @dx.op.binary.f32(i32 36, float %6985, float %7112)  ; FMin(a,b)
  %7114 = fdiv fast float %7099, %7110
  %7115 = call float @dx.op.binary.f32(i32 35, float %7114, float 0.000000e+00)  ; FMax(a,b)
  %7116 = call float @dx.op.binary.f32(i32 36, float %6985, float %7115)  ; FMin(a,b)
  %7117 = call float @dx.op.binary.f32(i32 36, float %7113, float %7116)  ; FMin(a,b)
  %7118 = call float @dx.op.binary.f32(i32 35, float %7113, float %7116)  ; FMax(a,b)
  br label %7119

; <label>:7119                                    ; preds = %7104, %7080
  %7120 = phi float [ %7118, %7104 ], [ -1.000000e+00, %7080 ]
  %7121 = phi float [ %7117, %7104 ], [ -1.000000e+00, %7080 ]
  %7122 = phi i1 [ true, %7104 ], [ false, %7080 ]
  br i1 %7122, label %7123, label %7129

; <label>:7123                                    ; preds = %7119
  %7124 = call float @dx.op.binary.f32(i32 35, float %7068, float %7121)  ; FMax(a,b)
  %7125 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %7082
  store float %7124, float* %7125, align 4, !tbaa !135, !noalias !149
  %7126 = call float @dx.op.binary.f32(i32 35, float %7068, float %7120)  ; FMax(a,b)
  %7127 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %7082
  store float %7126, float* %7127, align 4, !tbaa !135, !noalias !149
  %7128 = add nsw i32 %7081, 1
  br label %7129

; <label>:7129                                    ; preds = %7123, %7119
  %7130 = phi i32 [ %7128, %7123 ], [ %7081, %7119 ]
  %7131 = add nuw nsw i32 %7082, 1
  %7132 = icmp eq i32 %7131, %6937
  br i1 %7132, label %7133, label %7080

; <label>:7133                                    ; preds = %7129
  %7134 = load float, float* %7074, align 4, !tbaa !135, !alias.scope !165, !noalias !168
  %7135 = load float, float* %7073, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  %7136 = load float, float* %7072, align 4, !tbaa !135, !alias.scope !173, !noalias !174
  %7137 = load float, float* %7077, align 4, !tbaa !135, !alias.scope !175, !noalias !178
  %7138 = load float, float* %7076, align 4, !tbaa !135, !alias.scope !181, !noalias !182
  %7139 = load float, float* %7075, align 4, !tbaa !135, !alias.scope !183, !noalias !184
  br label %7140

; <label>:7140                                    ; preds = %7133, %7067
  %7141 = phi float [ -1.000000e+00, %7067 ], [ %7139, %7133 ]
  %7142 = phi float [ -1.000000e+00, %7067 ], [ %7138, %7133 ]
  %7143 = phi float [ -1.000000e+00, %7067 ], [ %7137, %7133 ]
  %7144 = phi float [ -1.000000e+00, %7067 ], [ %7136, %7133 ]
  %7145 = phi float [ -1.000000e+00, %7067 ], [ %7135, %7133 ]
  %7146 = phi float [ -1.000000e+00, %7067 ], [ %7134, %7133 ]
  %7147 = phi i32 [ 0, %7067 ], [ %7130, %7133 ]
  %7148 = call float @dx.op.binary.f32(i32 36, float %7145, float %7146)  ; FMin(a,b)
  %7149 = call float @dx.op.binary.f32(i32 36, float %7144, float %7148)  ; FMin(a,b)
  %7150 = call float @dx.op.binary.f32(i32 35, float %7144, float %7145)  ; FMax(a,b)
  %7151 = call float @dx.op.binary.f32(i32 36, float %7150, float %7146)  ; FMin(a,b)
  %7152 = call float @dx.op.binary.f32(i32 36, float %7144, float %7145)  ; FMin(a,b)
  %7153 = call float @dx.op.binary.f32(i32 35, float %7152, float %7151)  ; FMax(a,b)
  %7154 = call float @dx.op.binary.f32(i32 35, float %7145, float %7146)  ; FMax(a,b)
  %7155 = call float @dx.op.binary.f32(i32 35, float %7144, float %7154)  ; FMax(a,b)
  store float %7149, float* %7072, align 4, !tbaa !135, !alias.scope !173, !noalias !174
  store float %7153, float* %7073, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  store float %7155, float* %7074, align 4, !tbaa !135, !alias.scope !165, !noalias !168
  %7156 = call float @dx.op.binary.f32(i32 36, float %7142, float %7143)  ; FMin(a,b)
  %7157 = call float @dx.op.binary.f32(i32 36, float %7141, float %7156)  ; FMin(a,b)
  %7158 = call float @dx.op.binary.f32(i32 35, float %7141, float %7142)  ; FMax(a,b)
  %7159 = call float @dx.op.binary.f32(i32 36, float %7158, float %7143)  ; FMin(a,b)
  %7160 = call float @dx.op.binary.f32(i32 36, float %7141, float %7142)  ; FMin(a,b)
  %7161 = call float @dx.op.binary.f32(i32 35, float %7160, float %7159)  ; FMax(a,b)
  %7162 = call float @dx.op.binary.f32(i32 35, float %7142, float %7143)  ; FMax(a,b)
  %7163 = call float @dx.op.binary.f32(i32 35, float %7141, float %7162)  ; FMax(a,b)
  store float %7157, float* %7075, align 4, !tbaa !135, !alias.scope !183, !noalias !184
  store float %7161, float* %7076, align 4, !tbaa !135, !alias.scope !181, !noalias !182
  store float %7163, float* %7077, align 4, !tbaa !135, !alias.scope !175, !noalias !178
  %7164 = sub nsw i32 3, %7147
  %7165 = icmp sgt i32 %7164, 2
  br i1 %7165, label %7166, label %7204

; <label>:7166                                    ; preds = %7140
  %7167 = icmp eq i32 %6935, 0
  %7168 = fsub fast float %6985, %7069
  %7169 = select i1 %7167, float %7168, float %7069
  %7170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7171 = extractvalue %dx.types.CBufRet.f32 %7170, 0
  %7172 = extractvalue %dx.types.CBufRet.f32 %7170, 1
  %7173 = extractvalue %dx.types.CBufRet.f32 %7170, 2
  %7174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7174, 0
  %7176 = extractvalue %dx.types.CBufRet.f32 %7174, 1
  %7177 = extractvalue %dx.types.CBufRet.f32 %7174, 2
  %7178 = extractvalue %dx.types.CBufRet.f32 %7174, 3
  %7179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7180 = extractvalue %dx.types.CBufRet.f32 %7179, 3
  %7181 = call float @dx.op.binary.f32(i32 36, float %7070, float %7180)  ; FMin(a,b)
  %7182 = fmul fast float %7178, %7169
  %7183 = call float @dx.op.unary.f32(i32 7, float %7182)  ; Saturate(value)
  %7184 = fsub fast float %7175, %7171
  %7185 = fsub fast float %7176, %7172
  %7186 = fsub fast float %7177, %7173
  %7187 = fmul fast float %7183, %7184
  %7188 = fmul fast float %7183, %7185
  %7189 = fmul fast float %7183, %7186
  %7190 = fadd fast float %7187, %7171
  %7191 = fadd fast float %7188, %7172
  %7192 = fadd fast float %7189, %7173
  %7193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7194 = extractvalue %dx.types.CBufRet.f32 %7193, 0
  %7195 = extractvalue %dx.types.CBufRet.f32 %7193, 1
  %7196 = fadd fast float %7195, %7194
  %7197 = call float @dx.op.unary.f32(i32 7, float %7196)  ; Saturate(value)
  %7198 = extractvalue %dx.types.CBufRet.f32 %7193, 2
  %7199 = extractvalue %dx.types.CBufRet.f32 %7193, 3
  %7200 = fadd fast float %7199, %7198
  %7201 = call float @dx.op.unary.f32(i32 7, float %7200)  ; Saturate(value)
  %7202 = fmul fast float %7197, %7181
  %7203 = fmul fast float %7202, %7201
  br label %7286

; <label>:7204                                    ; preds = %7140
  %7205 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %7164
  %7206 = load float, float* %7205, align 4, !tbaa !135, !noalias !149
  %7207 = fcmp fast olt float %7206, %7071
  %7208 = icmp sgt i32 %7147, 0
  %7209 = and i1 %7208, %7207
  br i1 %7209, label %7210, label %7247

; <label>:7210                                    ; preds = %7204
  br label %7211

; <label>:7211                                    ; preds = %7240, %7210
  %7212 = phi float [ %7241, %7240 ], [ %7069, %7210 ]
  %7213 = phi float [ %7242, %7240 ], [ %7070, %7210 ]
  %7214 = phi float [ %7222, %7240 ], [ %7206, %7210 ]
  %7215 = phi i32 [ %7219, %7240 ], [ %7164, %7210 ]
  %7216 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %7215
  %7217 = load float, float* %7216, align 4, !tbaa !135, !noalias !149
  %7218 = icmp slt i32 %7215, 2
  %7219 = add nsw i32 %7215, 1
  %7220 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %7219
  %7221 = load float, float* %7220, align 4, !tbaa !135, !noalias !149
  %7222 = select i1 %7218, float %7221, float %6985
  %7223 = call float @dx.op.binary.f32(i32 36, float %7222, float %7217)  ; FMin(a,b)
  %7224 = call float @dx.op.binary.f32(i32 36, float %7071, float %7223)  ; FMin(a,b)
  %7225 = icmp eq i32 %6935, 0
  %7226 = fadd fast float %7224, %7214
  %7227 = fmul fast float %7226, %6916
  %7228 = fadd fast float %7227, %6929
  br i1 %7225, label %7234, label %7229

; <label>:7229                                    ; preds = %7211
  %7230 = fsub fast float %7224, %7214
  %7231 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7230)  ; FMax(a,b)
  %7232 = fmul fast float %7231, %7228
  %7233 = fadd fast float %7232, %7213
  br label %7240

; <label>:7234                                    ; preds = %7211
  %7235 = fsub fast float %7214, %7224
  %7236 = call float @dx.op.unary.f32(i32 6, float %7235)  ; FAbs(value)
  %7237 = fadd fast float %7236, %7212
  %7238 = fmul fast float %7236, %7228
  %7239 = fsub fast float %7213, %7238
  br label %7240

; <label>:7240                                    ; preds = %7234, %7229
  %7241 = phi float [ %7231, %7229 ], [ %7237, %7234 ]
  %7242 = phi float [ %7233, %7229 ], [ %7239, %7234 ]
  %7243 = fcmp fast olt float %7222, %7071
  %7244 = icmp slt i32 %7219, 3
  %7245 = and i1 %7244, %7243
  br i1 %7245, label %7211, label %7246

; <label>:7246                                    ; preds = %7240
  br label %7247

; <label>:7247                                    ; preds = %7246, %7204
  %7248 = phi float [ %7069, %7204 ], [ %7241, %7246 ]
  %7249 = phi float [ %7070, %7204 ], [ %7242, %7246 ]
  %7250 = fsub fast float %6985, %7248
  %7251 = select i1 %6987, float %7248, float %7250
  %7252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7253 = extractvalue %dx.types.CBufRet.f32 %7252, 0
  %7254 = extractvalue %dx.types.CBufRet.f32 %7252, 1
  %7255 = extractvalue %dx.types.CBufRet.f32 %7252, 2
  %7256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7257 = extractvalue %dx.types.CBufRet.f32 %7256, 0
  %7258 = extractvalue %dx.types.CBufRet.f32 %7256, 1
  %7259 = extractvalue %dx.types.CBufRet.f32 %7256, 2
  %7260 = extractvalue %dx.types.CBufRet.f32 %7256, 3
  %7261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7262 = extractvalue %dx.types.CBufRet.f32 %7261, 3
  %7263 = call float @dx.op.binary.f32(i32 36, float %7249, float %7262)  ; FMin(a,b)
  %7264 = fmul fast float %7260, %7251
  %7265 = call float @dx.op.unary.f32(i32 7, float %7264)  ; Saturate(value)
  %7266 = fsub fast float %7257, %7253
  %7267 = fsub fast float %7258, %7254
  %7268 = fsub fast float %7259, %7255
  %7269 = fmul fast float %7265, %7266
  %7270 = fmul fast float %7265, %7267
  %7271 = fmul fast float %7265, %7268
  %7272 = fadd fast float %7269, %7253
  %7273 = fadd fast float %7270, %7254
  %7274 = fadd fast float %7271, %7255
  %7275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7276 = extractvalue %dx.types.CBufRet.f32 %7275, 0
  %7277 = extractvalue %dx.types.CBufRet.f32 %7275, 1
  %7278 = fadd fast float %7277, %7276
  %7279 = call float @dx.op.unary.f32(i32 7, float %7278)  ; Saturate(value)
  %7280 = extractvalue %dx.types.CBufRet.f32 %7275, 2
  %7281 = extractvalue %dx.types.CBufRet.f32 %7275, 3
  %7282 = fadd fast float %7281, %7280
  %7283 = call float @dx.op.unary.f32(i32 7, float %7282)  ; Saturate(value)
  %7284 = fmul fast float %7279, %7263
  %7285 = fmul fast float %7284, %7283
  br label %7286

; <label>:7286                                    ; preds = %7247, %7166, %7001, %6983, %6981
  %7287 = phi float [ %7010, %7001 ], [ %7169, %7166 ], [ %7251, %7247 ], [ 0.000000e+00, %6981 ], [ 0.000000e+00, %6983 ]
  %7288 = phi float [ %7044, %7001 ], [ %7203, %7166 ], [ %7285, %7247 ], [ 0.000000e+00, %6981 ], [ 0.000000e+00, %6983 ]
  %7289 = phi float [ %7031, %7001 ], [ %7190, %7166 ], [ %7272, %7247 ], [ 0.000000e+00, %6981 ], [ 0.000000e+00, %6983 ]
  %7290 = phi float [ %7032, %7001 ], [ %7191, %7166 ], [ %7273, %7247 ], [ 0.000000e+00, %6981 ], [ 0.000000e+00, %6983 ]
  %7291 = phi float [ %7033, %7001 ], [ %7192, %7166 ], [ %7274, %7247 ], [ 0.000000e+00, %6981 ], [ 0.000000e+00, %6983 ]
  %7292 = fmul fast float %6924, %7288
  %7293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7294 = extractvalue %dx.types.CBufRet.f32 %7293, 2
  %7295 = fsub fast float %6931, %7294
  %7296 = fcmp fast olt float %7292, -2.000000e+01
  %7297 = call float @dx.op.unary.f32(i32 21, float %7292)  ; Exp(value)
  %7298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7299 = extractvalue %dx.types.CBufRet.f32 %7298, 2
  %7300 = extractvalue %dx.types.CBufRet.f32 %7298, 3
  %7301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7302 = extractvalue %dx.types.CBufRet.f32 %7301, 2
  %7303 = fmul fast float %7300, %7295
  %7304 = call float @dx.op.unary.f32(i32 7, float %7303)  ; Saturate(value)
  %7305 = fsub fast float 1.000000e+00, %7304
  %7306 = fmul fast float %6916, 5.000000e-01
  %7307 = fadd fast float %7306, 5.000000e-01
  %7308 = call float @dx.op.unary.f32(i32 7, float %7307)  ; Saturate(value)
  %7309 = fsub fast float 1.000000e+00, %7308
  %7310 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7305)  ; FMax(a,b)
  %7311 = fdiv fast float %7309, %7310
  %7312 = fsub fast float %7295, %6873
  %7313 = call float @dx.op.unary.f32(i32 6, float %7312)  ; FAbs(value)
  %7314 = fmul fast float %7313, %7299
  %7315 = call float @dx.op.unary.f32(i32 7, float %7311)  ; Saturate(value)
  %7316 = fsub fast float 1.000000e+00, %7314
  %7317 = fmul fast float %7316, %7315
  %7318 = fadd fast float %7317, %7314
  %7319 = fmul fast float %7302, %7295
  %7320 = call float @dx.op.unary.f32(i32 7, float %7319)  ; Saturate(value)
  %7321 = fsub fast float 1.000000e+00, %7318
  %7322 = fmul fast float %7321, %7320
  %7323 = fadd fast float %7322, %7318
  %7324 = call float @dx.op.unary.f32(i32 7, float %7323)  ; Saturate(value)
  %7325 = fadd fast float %7297, -1.000000e+00
  %7326 = select i1 %7296, float -1.000000e+00, float %7325
  %7327 = fmul fast float %7324, %7326
  %7328 = fadd fast float %7327, 1.000000e+00
  %7329 = fsub fast float -0.000000e+00, %7327
  %7330 = fmul fast float %7289, %7329
  %7331 = fmul fast float %7290, %7329
  %7332 = fmul fast float %7291, %7329
  br label %7333

; <label>:7333                                    ; preds = %7286, %6882
  %7334 = phi float [ %7287, %7286 ], [ 0.000000e+00, %6882 ]
  %7335 = phi float [ %7328, %7286 ], [ 1.000000e+00, %6882 ]
  %7336 = phi float [ %7330, %7286 ], [ 0.000000e+00, %6882 ]
  %7337 = phi float [ %7331, %7286 ], [ 0.000000e+00, %6882 ]
  %7338 = phi float [ %7332, %7286 ], [ 0.000000e+00, %6882 ]
  %7339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7340 = extractvalue %dx.types.CBufRet.f32 %7339, 1
  %7341 = fsub fast float 1.000000e+00, %7335
  %7342 = fmul fast float %7341, %6917
  %7343 = fmul fast float %7342, %7340
  %7344 = fsub fast float %6917, %7343
  br i1 %6910, label %7345, label %7374, !dx.controlflow.hints !185

; <label>:7345                                    ; preds = %7333
  %7346 = fmul fast float %6918, %6907
  %7347 = fadd fast float %7346, %6908
  %7348 = call float @dx.op.unary.f32(i32 7, float %7347)  ; Saturate(value)
  %7349 = fmul fast float %6889, %7344
  %7350 = fsub fast float -0.000000e+00, %7349
  %7351 = fmul fast float %6890, %7344
  %7352 = fsub fast float -0.000000e+00, %7351
  %7353 = call float @dx.op.unary.f32(i32 21, float %7350)  ; Exp(value)
  %7354 = call float @dx.op.unary.f32(i32 21, float %7352)  ; Exp(value)
  %7355 = call float @dx.op.binary.f32(i32 35, float %6897, float %7353)  ; FMax(a,b)
  %7356 = call float @dx.op.binary.f32(i32 35, float %6897, float %7354)  ; FMax(a,b)
  %7357 = fsub fast float %7356, %7355
  %7358 = fmul fast float %7357, %7348
  %7359 = fadd fast float %7358, %7355
  %7360 = call float @dx.op.unary.f32(i32 7, float %7359)  ; Saturate(value)
  %7361 = fsub fast float %6894, %6899
  %7362 = fsub fast float %6895, %6900
  %7363 = fsub fast float %6896, %6901
  %7364 = fmul fast float %7348, %7361
  %7365 = fmul fast float %7348, %7362
  %7366 = fmul fast float %7348, %7363
  %7367 = fadd fast float %7364, %6899
  %7368 = fadd fast float %7365, %6900
  %7369 = fadd fast float %7366, %6901
  %7370 = fsub fast float 1.000000e+00, %7360
  %7371 = fmul fast float %7370, %7367
  %7372 = fmul fast float %7370, %7368
  %7373 = fmul fast float %7370, %7369
  br label %7433

; <label>:7374                                    ; preds = %7333
  %7375 = fmul fast float %7344, %6906
  %7376 = call float @dx.op.unary.f32(i32 7, float %7375)  ; Saturate(value)
  %7377 = fsub fast float 2.000000e+00, %7376
  %7378 = fmul fast float %7376, 9.921875e-01
  %7379 = fmul fast float %7378, %7377
  %7380 = fadd fast float %7379, 3.906250e-03
  %7381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %65, float %7380, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7382 = extractvalue %dx.types.ResRet.f32 %7381, 0
  %7383 = fsub fast float %7376, %7382
  %7384 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7383)  ; FMax(a,b)
  %7385 = fmul fast float %6892, %6873
  %7386 = call float @dx.op.unary.f32(i32 6, float %7385)  ; FAbs(value)
  %7387 = fcmp fast ogt float %7386, 0x3EB0C6F7A0000000
  br i1 %7387, label %7388, label %7394, !dx.controlflow.hints !186

; <label>:7388                                    ; preds = %7374
  %7389 = fmul fast float %7385, 0xBFF7154760000000
  %7390 = call float @dx.op.unary.f32(i32 21, float %7389)  ; Exp(value)
  %7391 = fsub fast float 1.000000e+00, %7390
  %7392 = fdiv fast float %7391, %7385
  %7393 = fmul fast float %7392, %6902
  br label %7394

; <label>:7394                                    ; preds = %7388, %7374
  %7395 = phi float [ %7393, %7388 ], [ %6902, %7374 ]
  %7396 = fadd fast float %7395, %6904
  %7397 = fmul fast float %7396, %7384
  %7398 = fmul fast float %6889, %7397
  %7399 = fsub fast float -0.000000e+00, %7398
  %7400 = fmul fast float %6890, %7397
  %7401 = fsub fast float -0.000000e+00, %7400
  %7402 = fmul fast float %6891, %7397
  %7403 = fsub fast float -0.000000e+00, %7402
  %7404 = call float @dx.op.unary.f32(i32 21, float %7399)  ; Exp(value)
  %7405 = call float @dx.op.unary.f32(i32 21, float %7401)  ; Exp(value)
  %7406 = call float @dx.op.unary.f32(i32 21, float %7403)  ; Exp(value)
  %7407 = fmul fast float %6918, %6918
  %7408 = fadd fast float %7407, 1.000000e+00
  %7409 = fmul fast float %7408, 0x3FAE8EC8A0000000
  %7410 = fmul fast float %7409, %6899
  %7411 = fmul fast float %7409, %6900
  %7412 = fmul fast float %7409, %6901
  %7413 = fmul fast float %6918, %6897
  %7414 = fsub fast float 1.000000e+00, %7413
  %7415 = fmul fast float %6897, %6897
  %7416 = fsub fast float 1.000000e+00, %7415
  %7417 = fmul fast float %7416, 0x3FB45F3060000000
  %7418 = fmul fast float %7414, %7414
  %7419 = fdiv fast float 1.000000e+00, %7418
  %7420 = fmul fast float %7417, %7419
  %7421 = fmul fast float %7420, %6894
  %7422 = fmul fast float %7420, %6895
  %7423 = fmul fast float %7420, %6896
  %7424 = fadd fast float %7421, %7410
  %7425 = fadd fast float %7422, %7411
  %7426 = fadd fast float %7423, %7412
  %7427 = fsub fast float 1.000000e+00, %7404
  %7428 = fsub fast float 1.000000e+00, %7405
  %7429 = fsub fast float 1.000000e+00, %7406
  %7430 = fmul fast float %7424, %7427
  %7431 = fmul fast float %7425, %7428
  %7432 = fmul fast float %7426, %7429
  br label %7433

; <label>:7433                                    ; preds = %7394, %7345
  %7434 = phi float [ %7371, %7345 ], [ %7430, %7394 ]
  %7435 = phi float [ %7372, %7345 ], [ %7431, %7394 ]
  %7436 = phi float [ %7373, %7345 ], [ %7432, %7394 ]
  %7437 = phi float [ %7360, %7345 ], [ %7404, %7394 ]
  %7438 = phi float [ %7360, %7345 ], [ %7405, %7394 ]
  %7439 = phi float [ %7360, %7345 ], [ %7406, %7394 ]
  br i1 %6926, label %7440, label %7638, !dx.controlflow.hints !187

; <label>:7440                                    ; preds = %7433
  %7441 = extractvalue %dx.types.CBufRet.f32 %7339, 0
  %7442 = fmul fast float %7441, %7341
  %7443 = fsub fast float %7336, %7434
  %7444 = fsub fast float %7337, %7435
  %7445 = fsub fast float %7338, %7436
  %7446 = fmul fast float %7442, %7443
  %7447 = fmul fast float %7442, %7444
  %7448 = fmul fast float %7442, %7445
  %7449 = fadd fast float %7446, %7434
  %7450 = fadd fast float %7447, %7435
  %7451 = fadd fast float %7448, %7436
  %7452 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7437)  ; FMax(a,b)
  %7453 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7438)  ; FMax(a,b)
  %7454 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7439)  ; FMax(a,b)
  %7455 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7335)  ; FMax(a,b)
  %7456 = call float @dx.op.binary.f32(i32 35, float %7334, float %7344)  ; FMax(a,b)
  %7457 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7456)  ; FMax(a,b)
  %7458 = fdiv fast float %7334, %7457
  %7459 = call float @dx.op.unary.f32(i32 7, float %7458)  ; Saturate(value)
  %7460 = fdiv fast float %7344, %7457
  %7461 = call float @dx.op.unary.f32(i32 7, float %7460)  ; Saturate(value)
  %7462 = fcmp fast une float %7455, 1.000000e+00
  br i1 %7462, label %7463, label %7476, !dx.controlflow.hints !188

; <label>:7463                                    ; preds = %7440
  %7464 = call float @dx.op.unary.f32(i32 23, float %7455)  ; Log(value)
  %7465 = fmul fast float %7464, 0x3FE62E4300000000
  %7466 = fmul fast float %7336, %7465
  %7467 = fsub fast float -0.000000e+00, %7466
  %7468 = fmul fast float %7337, %7465
  %7469 = fsub fast float -0.000000e+00, %7468
  %7470 = fmul fast float %7338, %7465
  %7471 = fsub fast float -0.000000e+00, %7470
  %7472 = fsub fast float 1.000000e+00, %7455
  %7473 = fdiv fast float %7467, %7472
  %7474 = fdiv fast float %7469, %7472
  %7475 = fdiv fast float %7471, %7472
  br label %7476

; <label>:7476                                    ; preds = %7463, %7440
  %7477 = phi float [ %7473, %7463 ], [ %7336, %7440 ]
  %7478 = phi float [ %7474, %7463 ], [ %7337, %7440 ]
  %7479 = phi float [ %7475, %7463 ], [ %7338, %7440 ]
  %7480 = phi float [ %7465, %7463 ], [ 0.000000e+00, %7440 ]
  %7481 = fcmp fast une float %7452, 1.000000e+00
  br i1 %7481, label %7482, label %7489, !dx.controlflow.hints !189

; <label>:7482                                    ; preds = %7476
  %7483 = call float @dx.op.unary.f32(i32 23, float %7452)  ; Log(value)
  %7484 = fmul fast float %7483, 0x3FE62E4300000000
  %7485 = fmul fast float %7449, %7484
  %7486 = fsub fast float -0.000000e+00, %7485
  %7487 = fsub fast float 1.000000e+00, %7452
  %7488 = fdiv fast float %7486, %7487
  br label %7489

; <label>:7489                                    ; preds = %7482, %7476
  %7490 = phi float [ %7488, %7482 ], [ %7449, %7476 ]
  %7491 = phi float [ %7484, %7482 ], [ 0.000000e+00, %7476 ]
  %7492 = fcmp fast une float %7453, 1.000000e+00
  br i1 %7492, label %7493, label %7500, !dx.controlflow.hints !189

; <label>:7493                                    ; preds = %7489
  %7494 = call float @dx.op.unary.f32(i32 23, float %7453)  ; Log(value)
  %7495 = fmul fast float %7494, 0x3FE62E4300000000
  %7496 = fmul fast float %7450, %7495
  %7497 = fsub fast float -0.000000e+00, %7496
  %7498 = fsub fast float 1.000000e+00, %7453
  %7499 = fdiv fast float %7497, %7498
  br label %7500

; <label>:7500                                    ; preds = %7493, %7489
  %7501 = phi float [ %7499, %7493 ], [ %7450, %7489 ]
  %7502 = phi float [ %7495, %7493 ], [ 0.000000e+00, %7489 ]
  %7503 = fcmp fast une float %7454, 1.000000e+00
  br i1 %7503, label %7504, label %7511, !dx.controlflow.hints !189

; <label>:7504                                    ; preds = %7500
  %7505 = call float @dx.op.unary.f32(i32 23, float %7454)  ; Log(value)
  %7506 = fmul fast float %7505, 0x3FE62E4300000000
  %7507 = fmul fast float %7451, %7506
  %7508 = fsub fast float -0.000000e+00, %7507
  %7509 = fsub fast float 1.000000e+00, %7454
  %7510 = fdiv fast float %7508, %7509
  br label %7511

; <label>:7511                                    ; preds = %7504, %7500
  %7512 = phi float [ %7510, %7504 ], [ %7451, %7500 ]
  %7513 = phi float [ %7506, %7504 ], [ 0.000000e+00, %7500 ]
  %7514 = fmul fast float %7477, %7461
  %7515 = fmul fast float %7478, %7461
  %7516 = fmul fast float %7479, %7461
  %7517 = fmul fast float %7480, %7461
  %7518 = fmul fast float %7490, %7459
  %7519 = fmul fast float %7501, %7459
  %7520 = fmul fast float %7512, %7459
  %7521 = fmul fast float %7491, %7459
  %7522 = fmul fast float %7502, %7459
  %7523 = fmul fast float %7513, %7459
  %7524 = fadd fast float %7518, %7514
  %7525 = fadd fast float %7519, %7515
  %7526 = fadd fast float %7520, %7516
  %7527 = fadd fast float %7521, %7517
  %7528 = fadd fast float %7522, %7517
  %7529 = fadd fast float %7523, %7517
  %7530 = fcmp fast une float %7527, 0.000000e+00
  br i1 %7530, label %7531, label %7538, !dx.controlflow.hints !190

; <label>:7531                                    ; preds = %7511
  %7532 = fmul fast float %7527, 0x3FF7154760000000
  %7533 = call float @dx.op.unary.f32(i32 21, float %7532)  ; Exp(value)
  %7534 = fsub fast float 1.000000e+00, %7533
  %7535 = fmul fast float %7524, %7534
  %7536 = fsub fast float -0.000000e+00, %7535
  %7537 = fdiv fast float %7536, %7527
  br label %7538

; <label>:7538                                    ; preds = %7531, %7511
  %7539 = phi float [ %7533, %7531 ], [ 1.000000e+00, %7511 ]
  %7540 = phi float [ %7537, %7531 ], [ %7524, %7511 ]
  %7541 = fcmp fast une float %7528, 0.000000e+00
  br i1 %7541, label %7542, label %7549, !dx.controlflow.hints !190

; <label>:7542                                    ; preds = %7538
  %7543 = fmul fast float %7528, 0x3FF7154760000000
  %7544 = call float @dx.op.unary.f32(i32 21, float %7543)  ; Exp(value)
  %7545 = fsub fast float 1.000000e+00, %7544
  %7546 = fmul fast float %7525, %7545
  %7547 = fsub fast float -0.000000e+00, %7546
  %7548 = fdiv fast float %7547, %7528
  br label %7549

; <label>:7549                                    ; preds = %7542, %7538
  %7550 = phi float [ %7544, %7542 ], [ 1.000000e+00, %7538 ]
  %7551 = phi float [ %7548, %7542 ], [ %7525, %7538 ]
  %7552 = fcmp fast une float %7529, 0.000000e+00
  br i1 %7552, label %7553, label %7560, !dx.controlflow.hints !190

; <label>:7553                                    ; preds = %7549
  %7554 = fmul fast float %7529, 0x3FF7154760000000
  %7555 = call float @dx.op.unary.f32(i32 21, float %7554)  ; Exp(value)
  %7556 = fsub fast float 1.000000e+00, %7555
  %7557 = fmul fast float %7526, %7556
  %7558 = fsub fast float -0.000000e+00, %7557
  %7559 = fdiv fast float %7558, %7529
  br label %7560

; <label>:7560                                    ; preds = %7553, %7549
  %7561 = phi float [ %7555, %7553 ], [ 1.000000e+00, %7549 ]
  %7562 = phi float [ %7559, %7553 ], [ %7526, %7549 ]
  %7563 = fcmp fast ogt float %7459, %7461
  br i1 %7563, label %7564, label %7584

; <label>:7564                                    ; preds = %7560
  %7565 = fsub fast float 1.000000e+00, %7461
  %7566 = fmul fast float %7477, %7565
  %7567 = fmul fast float %7478, %7565
  %7568 = fmul fast float %7479, %7565
  %7569 = fmul fast float %7480, %7565
  %7570 = fcmp fast une float %7569, 0.000000e+00
  br i1 %7570, label %7571, label %7622, !dx.controlflow.hints !191

; <label>:7571                                    ; preds = %7564
  %7572 = fmul fast float %7569, 0x3FF7154760000000
  %7573 = call float @dx.op.unary.f32(i32 21, float %7572)  ; Exp(value)
  %7574 = fsub fast float 1.000000e+00, %7573
  %7575 = fmul fast float %7566, %7574
  %7576 = fsub fast float -0.000000e+00, %7575
  %7577 = fmul fast float %7567, %7574
  %7578 = fsub fast float -0.000000e+00, %7577
  %7579 = fmul fast float %7568, %7574
  %7580 = fsub fast float -0.000000e+00, %7579
  %7581 = fdiv fast float %7576, %7569
  %7582 = fdiv fast float %7578, %7569
  %7583 = fdiv fast float %7580, %7569
  br label %7622

; <label>:7584                                    ; preds = %7560
  %7585 = fsub fast float 1.000000e+00, %7459
  %7586 = fmul fast float %7490, %7585
  %7587 = fmul fast float %7501, %7585
  %7588 = fmul fast float %7512, %7585
  %7589 = fmul fast float %7491, %7585
  %7590 = fmul fast float %7502, %7585
  %7591 = fmul fast float %7513, %7585
  %7592 = fcmp fast une float %7589, 0.000000e+00
  br i1 %7592, label %7593, label %7600, !dx.controlflow.hints !190

; <label>:7593                                    ; preds = %7584
  %7594 = fmul fast float %7589, 0x3FF7154760000000
  %7595 = call float @dx.op.unary.f32(i32 21, float %7594)  ; Exp(value)
  %7596 = fsub fast float 1.000000e+00, %7595
  %7597 = fmul fast float %7586, %7596
  %7598 = fsub fast float -0.000000e+00, %7597
  %7599 = fdiv fast float %7598, %7589
  br label %7600

; <label>:7600                                    ; preds = %7593, %7584
  %7601 = phi float [ %7599, %7593 ], [ %7586, %7584 ]
  %7602 = phi float [ %7595, %7593 ], [ 1.000000e+00, %7584 ]
  %7603 = fcmp fast une float %7590, 0.000000e+00
  br i1 %7603, label %7604, label %7611, !dx.controlflow.hints !190

; <label>:7604                                    ; preds = %7600
  %7605 = fmul fast float %7590, 0x3FF7154760000000
  %7606 = call float @dx.op.unary.f32(i32 21, float %7605)  ; Exp(value)
  %7607 = fsub fast float 1.000000e+00, %7606
  %7608 = fmul fast float %7587, %7607
  %7609 = fsub fast float -0.000000e+00, %7608
  %7610 = fdiv fast float %7609, %7590
  br label %7611

; <label>:7611                                    ; preds = %7604, %7600
  %7612 = phi float [ %7610, %7604 ], [ %7587, %7600 ]
  %7613 = phi float [ %7606, %7604 ], [ 1.000000e+00, %7600 ]
  %7614 = fcmp fast une float %7591, 0.000000e+00
  br i1 %7614, label %7615, label %7622, !dx.controlflow.hints !190

; <label>:7615                                    ; preds = %7611
  %7616 = fmul fast float %7591, 0x3FF7154760000000
  %7617 = call float @dx.op.unary.f32(i32 21, float %7616)  ; Exp(value)
  %7618 = fsub fast float 1.000000e+00, %7617
  %7619 = fmul fast float %7588, %7618
  %7620 = fsub fast float -0.000000e+00, %7619
  %7621 = fdiv fast float %7620, %7591
  br label %7622

; <label>:7622                                    ; preds = %7615, %7611, %7571, %7564
  %7623 = phi float [ %7621, %7615 ], [ %7583, %7571 ], [ %7568, %7564 ], [ %7588, %7611 ]
  %7624 = phi float [ %7612, %7615 ], [ %7582, %7571 ], [ %7567, %7564 ], [ %7612, %7611 ]
  %7625 = phi float [ %7601, %7615 ], [ %7581, %7571 ], [ %7566, %7564 ], [ %7601, %7611 ]
  %7626 = phi float [ %7617, %7615 ], [ %7573, %7571 ], [ 1.000000e+00, %7564 ], [ 1.000000e+00, %7611 ]
  %7627 = phi float [ %7613, %7615 ], [ %7573, %7571 ], [ 1.000000e+00, %7564 ], [ %7613, %7611 ]
  %7628 = phi float [ %7602, %7615 ], [ %7573, %7571 ], [ 1.000000e+00, %7564 ], [ %7602, %7611 ]
  %7629 = fmul fast float %7628, %7540
  %7630 = fmul fast float %7627, %7551
  %7631 = fmul fast float %7626, %7562
  %7632 = fadd fast float %7629, %7625
  %7633 = fadd fast float %7630, %7624
  %7634 = fadd fast float %7631, %7623
  %7635 = fmul fast float %7628, %7539
  %7636 = fmul fast float %7627, %7550
  %7637 = fmul fast float %7626, %7561
  br label %7638

; <label>:7638                                    ; preds = %7622, %7433
  %7639 = phi float [ %7637, %7622 ], [ %7439, %7433 ]
  %7640 = phi float [ %7636, %7622 ], [ %7438, %7433 ]
  %7641 = phi float [ %7635, %7622 ], [ %7437, %7433 ]
  %7642 = phi float [ %7634, %7622 ], [ %7436, %7433 ]
  %7643 = phi float [ %7633, %7622 ], [ %7435, %7433 ]
  %7644 = phi float [ %7632, %7622 ], [ %7434, %7433 ]
  %7645 = fmul fast float %7644, %6582
  %7646 = fmul fast float %7643, %6582
  %7647 = fmul fast float %7642, %6582
  %7648 = fmul fast float %7641, %6881
  %7649 = call float @dx.op.dot3.f32(i32 55, float %7641, float %7640, float %7639, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7650 = call float @dx.op.dot3.f32(i32 55, float %7645, float %7646, float %7647, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7651 = select i1 %239, float %7649, float %7641
  %7652 = select i1 %239, float %7649, float %7640
  %7653 = select i1 %239, float 1.000000e+00, float %7639
  %7654 = select i1 %239, float %7650, float %7645
  %7655 = select i1 %239, float 0.000000e+00, float %7646
  %7656 = select i1 %239, float 0.000000e+00, float %7647
  %7657 = fmul fast float %7651, %6875
  %7658 = fmul fast float %7652, %6876
  %7659 = fmul fast float %7653, %6877
  %7660 = fadd fast float %7657, %7654
  %7661 = fadd fast float %7658, %7655
  %7662 = fadd fast float %7656, %7659
  %7663 = fmul fast float %7651, %6878
  %7664 = fmul fast float %7652, %6879
  %7665 = fmul fast float %7653, %6880
  %7666 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7667 = extractvalue %dx.types.CBufRet.i32 %7666, 0
  %7668 = icmp eq i32 %7667, 0
  br i1 %7668, label %8036, label %7669, !dx.controlflow.hints !192

; <label>:7669                                    ; preds = %7638
  %7670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7671 = extractvalue %dx.types.CBufRet.f32 %7670, 2
  %7672 = extractvalue %dx.types.CBufRet.f32 %7670, 3
  %7673 = fmul fast float %7671, %101
  %7674 = fmul fast float %7672, %102
  %7675 = fmul fast float %7673, 2.000000e+00
  %7676 = fmul fast float %7674, 2.000000e+00
  %7677 = fsub fast float 1.000000e+00, %7675
  %7678 = fsub fast float 1.000000e+00, %7676
  %7679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7680 = extractvalue %dx.types.CBufRet.f32 %7679, 0
  %7681 = extractvalue %dx.types.CBufRet.f32 %7679, 1
  %7682 = extractvalue %dx.types.CBufRet.f32 %7679, 2
  %7683 = fmul fast float %7677, %7680
  %7684 = fmul fast float %7677, %7681
  %7685 = fmul fast float %7677, %7682
  %7686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7687 = extractvalue %dx.types.CBufRet.f32 %7686, 0
  %7688 = extractvalue %dx.types.CBufRet.f32 %7686, 1
  %7689 = extractvalue %dx.types.CBufRet.f32 %7686, 2
  %7690 = fmul fast float %7678, %7687
  %7691 = fmul fast float %7678, %7688
  %7692 = fmul fast float %7678, %7689
  %7693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7694 = extractvalue %dx.types.CBufRet.f32 %7693, 0
  %7695 = extractvalue %dx.types.CBufRet.f32 %7693, 1
  %7696 = extractvalue %dx.types.CBufRet.f32 %7693, 2
  %7697 = fadd fast float %7690, %7694
  %7698 = fadd fast float %7697, %7683
  %7699 = fadd fast float %7691, %7695
  %7700 = fadd fast float %7699, %7684
  %7701 = fadd fast float %7692, %7696
  %7702 = fadd fast float %7701, %7685
  %7703 = fmul fast float %7698, %6874
  %7704 = fmul fast float %7700, %6874
  %7705 = fmul fast float %7702, %6874
  %7706 = fmul fast float %7703, %7703
  %7707 = fmul fast float %7704, %7704
  %7708 = fadd fast float %7706, %7707
  %7709 = fmul fast float %7705, %7705
  %7710 = fadd fast float %7708, %7709
  %7711 = call float @dx.op.unary.f32(i32 24, float %7710)  ; Sqrt(value)
  %7712 = extractvalue %dx.types.CBufRet.f32 %6599, 0
  %7713 = fsub fast float %7711, %7712
  %7714 = extractvalue %dx.types.CBufRet.f32 %6599, 2
  %7715 = fmul fast float %7713, %7714
  %7716 = call float @dx.op.unary.f32(i32 7, float %7715)  ; Saturate(value)
  %7717 = fadd fast float %7716, -5.000000e-01
  %7718 = fmul fast float %7717, 2.000000e+00
  %7719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7720 = extractvalue %dx.types.CBufRet.f32 %7719, 2
  %7721 = call float @dx.op.binary.f32(i32 36, float %7720, float %7718)  ; FMin(a,b)
  %7722 = fsub fast float -0.000000e+00, %7720
  %7723 = fcmp fast ogt float %7721, %7722
  br i1 %7723, label %7724, label %8036, !dx.controlflow.hints !193

; <label>:7724                                    ; preds = %7669
  %7725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7726 = extractvalue %dx.types.CBufRet.f32 %7725, 3
  %7727 = fcmp fast ogt float %7726, 0.000000e+00
  br i1 %7727, label %7728, label %7803, !dx.controlflow.hints !194

; <label>:7728                                    ; preds = %7724
  %7729 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %7730 = extractvalue %dx.types.Dimensions %7729, 0
  %7731 = sitofp i32 %7730 to float
  %7732 = extractvalue %dx.types.Dimensions %7729, 1
  %7733 = sitofp i32 %7732 to float
  %7734 = fmul fast float %7673, %7731
  %7735 = fmul fast float %7674, %7733
  %7736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7737 = extractvalue %dx.types.CBufRet.f32 %7736, 1
  %7738 = fsub fast float -0.000000e+00, %7737
  %7739 = fptoui float %7738 to i32
  %7740 = fptoui float %7734 to i32
  %7741 = fptoui float %7735 to i32
  %7742 = and i32 %7739, 31
  %7743 = lshr i32 %7740, %7742
  %7744 = lshr i32 %7741, %7742
  %7745 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %7739, i32 %7743, i32 %7744, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7746 = extractvalue %dx.types.ResRet.f32 %7745, 0
  %7747 = fcmp fast olt float %7746, -1.000000e+00
  %7748 = fcmp fast ogt float %7746, -1.000000e+00
  %7749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7750 = extractvalue %dx.types.CBufRet.f32 %7749, 1
  %7751 = select i1 %7748, float %7750, float 1.000000e+00
  %7752 = fadd fast float %7746, 1.000000e+00
  %7753 = fmul fast float %7751, %7752
  %7754 = call float @dx.op.unary.f32(i32 6, float %7753)  ; FAbs(value)
  %7755 = extractvalue %dx.types.CBufRet.f32 %7749, 3
  %7756 = fcmp fast oge float %7754, %7755
  %7757 = select i1 %7756, float 0x4197782600000000, float %7754
  %7758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7759 = extractvalue %dx.types.CBufRet.f32 %7758, 0
  %7760 = extractvalue %dx.types.CBufRet.f32 %7758, 1
  %7761 = extractvalue %dx.types.CBufRet.f32 %7758, 2
  %7762 = select i1 %7747, float %7759, float %7680
  %7763 = select i1 %7747, float %7760, float %7681
  %7764 = select i1 %7747, float %7761, float %7682
  %7765 = fmul fast float %7762, %7677
  %7766 = fmul fast float %7763, %7677
  %7767 = fmul fast float %7764, %7677
  %7768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7769 = extractvalue %dx.types.CBufRet.f32 %7768, 0
  %7770 = extractvalue %dx.types.CBufRet.f32 %7768, 1
  %7771 = extractvalue %dx.types.CBufRet.f32 %7768, 2
  %7772 = select i1 %7747, float %7769, float %7687
  %7773 = select i1 %7747, float %7770, float %7688
  %7774 = select i1 %7747, float %7771, float %7689
  %7775 = fmul fast float %7772, %7678
  %7776 = fmul fast float %7773, %7678
  %7777 = fmul fast float %7774, %7678
  %7778 = fadd fast float %7775, %7765
  %7779 = fadd fast float %7776, %7766
  %7780 = fadd fast float %7777, %7767
  %7781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7782 = extractvalue %dx.types.CBufRet.f32 %7781, 0
  %7783 = extractvalue %dx.types.CBufRet.f32 %7781, 1
  %7784 = extractvalue %dx.types.CBufRet.f32 %7781, 2
  %7785 = select i1 %7747, float %7782, float %7694
  %7786 = select i1 %7747, float %7783, float %7695
  %7787 = select i1 %7747, float %7784, float %7696
  %7788 = fadd fast float %7778, %7785
  %7789 = fadd fast float %7779, %7786
  %7790 = fadd fast float %7780, %7787
  %7791 = fmul fast float %7788, %7757
  %7792 = fmul fast float %7789, %7757
  %7793 = fmul fast float %7790, %7757
  %7794 = fmul fast float %7791, %7791
  %7795 = fmul fast float %7792, %7792
  %7796 = fadd fast float %7794, %7795
  %7797 = fmul fast float %7793, %7793
  %7798 = fadd fast float %7796, %7797
  %7799 = call float @dx.op.unary.f32(i32 24, float %7798)  ; Sqrt(value)
  %7800 = fsub fast float %7799, %7712
  %7801 = fmul fast float %7800, %7714
  %7802 = call float @dx.op.unary.f32(i32 7, float %7801)  ; Saturate(value)
  br label %7803

; <label>:7803                                    ; preds = %7728, %7724
  %7804 = phi float [ %7802, %7728 ], [ 1.000000e+00, %7724 ]
  %7805 = fmul fast float %7721, 5.000000e-01
  %7806 = fadd fast float %7805, 5.000000e-01
  %7807 = call float @dx.op.unary.f32(i32 22, float %7806)  ; Frc(value)
  %7808 = call float @dx.op.unary.f32(i32 27, float %7807)  ; Round_ni(value)
  %7809 = call float @dx.op.unary.f32(i32 22, float %7807)  ; Frc(value)
  %7810 = fmul fast float %7809, 2.000000e+00
  %7811 = fadd fast float %7810, -1.000000e+00
  %7812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %65, float %7673, float %7674, float %7808, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7813 = extractvalue %dx.types.ResRet.f32 %7812, 0
  %7814 = extractvalue %dx.types.ResRet.f32 %7812, 1
  %7815 = extractvalue %dx.types.ResRet.f32 %7812, 2
  %7816 = extractvalue %dx.types.ResRet.f32 %7812, 3
  %7817 = fadd fast float %7813, -5.000000e-01
  %7818 = fadd fast float %7815, -5.000000e-01
  %7819 = fmul fast float %7817, 0xBFD5555560000000
  %7820 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7818, float %7819)  ; FMad(a,b,c)
  %7821 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7814, float 0.000000e+00)  ; FMad(a,b,c)
  %7822 = fadd fast float %7821, %7816
  %7823 = fmul fast float %7817, -7.500000e-01
  %7824 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7818, float %7823)  ; FMad(a,b,c)
  %7825 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7814, float 0.000000e+00)  ; FMad(a,b,c)
  %7826 = fadd fast float %7825, %7816
  %7827 = call float @dx.op.binary.f32(i32 35, float %7820, float -1.000000e+00)  ; FMax(a,b)
  %7828 = call float @dx.op.binary.f32(i32 35, float %7822, float -1.000000e+00)  ; FMax(a,b)
  %7829 = call float @dx.op.binary.f32(i32 35, float %7824, float -1.000000e+00)  ; FMax(a,b)
  %7830 = call float @dx.op.binary.f32(i32 35, float %7826, float -1.000000e+00)  ; FMax(a,b)
  %7831 = call float @dx.op.binary.f32(i32 36, float %7827, float 1.000000e+00)  ; FMin(a,b)
  %7832 = call float @dx.op.binary.f32(i32 36, float %7828, float 1.000000e+00)  ; FMin(a,b)
  %7833 = call float @dx.op.binary.f32(i32 36, float %7829, float 1.000000e+00)  ; FMin(a,b)
  %7834 = call float @dx.op.binary.f32(i32 36, float %7830, float 1.000000e+00)  ; FMin(a,b)
  %7835 = fcmp fast olt float %7831, 0x3FEFFF8020000000
  br i1 %7835, label %7836, label %7951, !dx.controlflow.hints !195

; <label>:7836                                    ; preds = %7803
  %7837 = extractvalue %dx.types.CBufRet.f32 %7719, 3
  %7838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7839 = extractvalue %dx.types.CBufRet.f32 %7838, 0
  %7840 = extractvalue %dx.types.CBufRet.f32 %7838, 1
  %7841 = extractvalue %dx.types.CBufRet.f32 %7838, 2
  %7842 = extractvalue %dx.types.CBufRet.f32 %7838, 3
  %7843 = fsub fast float %7839, %7831
  %7844 = fsub fast float %7840, %7832
  %7845 = fsub fast float %7841, %7833
  %7846 = fsub fast float %7842, %7834
  %7847 = fmul fast float %7843, %7837
  %7848 = fmul fast float %7844, %7837
  %7849 = fmul fast float %7845, %7837
  %7850 = fmul fast float %7846, %7837
  %7851 = fadd fast float %7847, %7831
  %7852 = fadd fast float %7848, %7832
  %7853 = fsub fast float -0.000000e+00, %7852
  %7854 = fadd fast float %7849, %7833
  %7855 = fadd fast float %7850, %7834
  %7856 = fmul fast float %7851, %7851
  %7857 = fsub fast float %7852, %7856
  %7858 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7857)  ; FMax(a,b)
  %7859 = fdiv fast float 1.000000e+00, %7858
  %7860 = fmul fast float %7852, %7851
  %7861 = fsub fast float %7854, %7860
  %7862 = fsub fast float %7811, %7851
  %7863 = fmul fast float %7811, %7811
  %7864 = fsub fast float %7863, %7852
  %7865 = fmul fast float %7862, %7859
  %7866 = fmul fast float %7865, %7861
  %7867 = fsub fast float %7864, %7866
  %7868 = fmul fast float %7852, %7852
  %7869 = fsub fast float %7855, %7868
  %7870 = fmul fast float %7861, %7861
  %7871 = fmul fast float %7870, %7859
  %7872 = fsub fast float %7869, %7871
  %7873 = fdiv fast float %7867, %7872
  %7874 = fmul fast float %7861, %7873
  %7875 = fsub fast float %7862, %7874
  %7876 = fmul fast float %7875, %7859
  %7877 = fmul fast float %7876, %7851
  %7878 = fsub fast float 1.000000e+00, %7877
  %7879 = fmul fast float %7852, %7873
  %7880 = fsub fast float %7878, %7879
  %7881 = fmul fast float %7876, %7876
  %7882 = fmul fast float %7873, 4.000000e+00
  %7883 = fmul fast float %7882, %7880
  %7884 = fsub fast float %7881, %7883
  %7885 = call float @dx.op.unary.f32(i32 24, float %7884)  ; Sqrt(value)
  %7886 = fcmp fast oge float %7876, 0.000000e+00
  %7887 = fsub fast float -0.000000e+00, %7885
  %7888 = select i1 %7886, float %7887, float %7885
  %7889 = fsub fast float %7888, %7876
  %7890 = fdiv fast float %7889, %7873
  %7891 = fdiv fast float %7880, %7889
  %7892 = fmul fast float %7890, 5.000000e-01
  %7893 = fmul fast float %7891, 2.000000e+00
  %7894 = select i1 %7886, float %7892, float %7893
  %7895 = select i1 %7886, float %7893, float %7892
  %7896 = call float @dx.op.binary.f32(i32 35, float %7894, float %7895)  ; FMax(a,b)
  %7897 = call float @dx.op.binary.f32(i32 36, float %7894, float %7895)  ; FMin(a,b)
  %7898 = fcmp fast ogt float %7811, %7897
  br i1 %7898, label %7899, label %7909

; <label>:7899                                    ; preds = %7836
  %7900 = fsub fast float %7811, %7897
  %7901 = fsub fast float %7896, %7897
  %7902 = fmul fast float %7900, %7901
  %7903 = fmul fast float %7896, %7811
  %7904 = fadd fast float %7896, %7811
  %7905 = fmul fast float %7904, %7851
  %7906 = fadd fast float %7903, %7852
  %7907 = fsub fast float %7906, %7905
  %7908 = fdiv fast float %7907, %7902
  br label %7909

; <label>:7909                                    ; preds = %7899, %7836
  %7910 = phi float [ %7908, %7899 ], [ 0.000000e+00, %7836 ]
  %7911 = fcmp fast ogt float %7811, %7896
  %7912 = fsub fast float %7811, %7896
  br i1 %7911, label %7913, label %7923

; <label>:7913                                    ; preds = %7909
  %7914 = fsub fast float %7896, %7897
  %7915 = fmul fast float %7914, %7912
  %7916 = fmul fast float %7897, %7811
  %7917 = fadd fast float %7897, %7811
  %7918 = fmul fast float %7917, %7851
  %7919 = fsub fast float %7853, %7916
  %7920 = fadd fast float %7919, %7918
  %7921 = fdiv fast float %7920, %7915
  %7922 = fadd fast float %7921, %7910
  br label %7923

; <label>:7923                                    ; preds = %7913, %7909
  %7924 = phi float [ %7922, %7913 ], [ %7910, %7909 ]
  %7925 = fsub fast float %7811, %7897
  %7926 = fmul fast float %7925, %7912
  %7927 = fmul fast float %7897, %7896
  %7928 = fadd fast float %7897, %7896
  %7929 = fmul fast float %7928, %7851
  %7930 = fadd fast float %7927, %7852
  %7931 = fsub fast float %7930, %7929
  %7932 = fdiv fast float %7931, %7926
  %7933 = call float @dx.op.unary.f32(i32 7, float %7924)  ; Saturate(value)
  %7934 = fcmp fast oeq float %6600, 0.000000e+00
  %7935 = extractvalue %dx.types.CBufRet.f32 %7719, 0
  %7936 = fcmp fast oeq float %7935, 0.000000e+00
  %7937 = or i1 %7934, %7936
  %7938 = fmul fast float %7935, 2.000000e+00
  %7939 = fadd fast float %7720, %7721
  %7940 = fdiv fast float %7939, %7938
  %7941 = call float @dx.op.unary.f32(i32 7, float %7940)  ; Saturate(value)
  %7942 = fmul fast float %7941, 2.000000e+00
  %7943 = fsub fast float 3.000000e+00, %7942
  %7944 = fmul fast float %7941, %7941
  %7945 = fmul fast float %7944, %7943
  %7946 = select i1 %7937, float 1.000000e+00, float %7945
  %7947 = fmul fast float %7932, %6600
  %7948 = fadd fast float %7933, %7947
  %7949 = call float @dx.op.unary.f32(i32 7, float %7948)  ; Saturate(value)
  %7950 = fmul fast float %7946, %7949
  br label %7951

; <label>:7951                                    ; preds = %7923, %7803
  %7952 = phi float [ %7950, %7923 ], [ 0.000000e+00, %7803 ]
  %7953 = fsub fast float 1.000000e+00, %7952
  %7954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %65, float %7673, float %7674, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7955 = extractvalue %dx.types.ResRet.f32 %7954, 0
  %7956 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7957 = extractvalue %dx.types.CBufRet.i32 %7956, 2
  %7958 = icmp eq i32 %7957, 0
  br i1 %7958, label %7964, label %7959

; <label>:7959                                    ; preds = %7951
  %7960 = call float @dx.op.unary.f32(i32 7, float %7952)  ; Saturate(value)
  %7961 = fadd fast float %7955, -1.000000e+00
  %7962 = fmul fast float %7960, %7961
  %7963 = fadd fast float %7962, 1.000000e+00
  br label %7964

; <label>:7964                                    ; preds = %7959, %7951
  %7965 = phi float [ %7963, %7959 ], [ %7953, %7951 ]
  br i1 %7727, label %7966, label %7984

; <label>:7966                                    ; preds = %7964
  %7967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7968 = extractvalue %dx.types.CBufRet.f32 %7967, 1
  %7969 = fsub fast float %7804, %7968
  %7970 = call float @dx.op.unary.f32(i32 7, float %7969)  ; Saturate(value)
  %7971 = fsub fast float %7804, %7726
  %7972 = call float @dx.op.unary.f32(i32 7, float %7971)  ; Saturate(value)
  %7973 = fsub fast float %7970, %7972
  %7974 = fsub fast float %7806, %7972
  %7975 = fdiv fast float %7974, %7973
  %7976 = call float @dx.op.unary.f32(i32 7, float %7975)  ; Saturate(value)
  %7977 = fmul fast float %7976, 2.000000e+00
  %7978 = fsub fast float 3.000000e+00, %7977
  %7979 = fsub fast float %7955, %7965
  %7980 = fmul fast float %7976, %7976
  %7981 = fmul fast float %7980, %7979
  %7982 = fmul fast float %7981, %7978
  %7983 = fadd fast float %7982, %7965
  br label %7984

; <label>:7984                                    ; preds = %7966, %7964
  %7985 = phi float [ %7983, %7966 ], [ %7965, %7964 ]
  %7986 = call float @dx.op.binary.f32(i32 35, float %7955, float %7985)  ; FMax(a,b)
  %7987 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7988 = extractvalue %dx.types.CBufRet.i32 %7987, 2
  %7989 = and i32 %7988, 1
  %7990 = icmp eq i32 %7989, 0
  %7991 = fcmp fast une float %7986, 1.000000e+00
  %7992 = and i1 %7991, %7990
  br i1 %7992, label %7993, label %8012

; <label>:7993                                    ; preds = %7984
  %7994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %65, float %7673, float %7674, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7995 = extractvalue %dx.types.ResRet.f32 %7994, 0
  %7996 = extractvalue %dx.types.ResRet.f32 %7994, 1
  %7997 = extractvalue %dx.types.ResRet.f32 %7994, 2
  %7998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7999 = extractvalue %dx.types.CBufRet.f32 %7998, 1
  %8000 = fmul fast float %7999, %7995
  %8001 = fmul fast float %7999, %7996
  %8002 = fmul fast float %7999, %7997
  %8003 = fcmp fast ogt float %7955, 0x3FEFFF2E40000000
  %8004 = fsub fast float 1.000000e+00, %7986
  %8005 = fsub fast float 1.000000e+00, %7955
  %8006 = fdiv fast float %8004, %8005
  %8007 = call float @dx.op.unary.f32(i32 7, float %8006)  ; Saturate(value)
  %8008 = select i1 %8003, float 0.000000e+00, float %8007
  %8009 = fmul fast float %8000, %8008
  %8010 = fmul fast float %8001, %8008
  %8011 = fmul fast float %8002, %8008
  br label %8012

; <label>:8012                                    ; preds = %7993, %7984
  %8013 = phi float [ 0.000000e+00, %7984 ], [ %8009, %7993 ]
  %8014 = phi float [ 0.000000e+00, %7984 ], [ %8010, %7993 ]
  %8015 = phi float [ 0.000000e+00, %7984 ], [ %8011, %7993 ]
  %8016 = fmul fast float %8013, %6582
  %8017 = fmul fast float %8014, %6582
  %8018 = fmul fast float %8015, %6582
  %8019 = fmul fast float %7986, %7648
  %8020 = call float @dx.op.dot3.f32(i32 55, float %7986, float %7986, float %7986, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8021 = call float @dx.op.dot3.f32(i32 55, float %8016, float %8017, float %8018, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8022 = select i1 %239, float %8020, float %7986
  %8023 = select i1 %239, float 1.000000e+00, float %7986
  %8024 = select i1 %239, float %8021, float %8016
  %8025 = select i1 %239, float 0.000000e+00, float %8017
  %8026 = select i1 %239, float 0.000000e+00, float %8018
  %8027 = fmul fast float %8022, %7660
  %8028 = fmul fast float %8022, %7661
  %8029 = fmul fast float %8023, %7662
  %8030 = fadd fast float %8027, %8024
  %8031 = fadd fast float %8028, %8025
  %8032 = fadd fast float %8026, %8029
  %8033 = fmul fast float %8022, %7663
  %8034 = fmul fast float %8022, %7664
  %8035 = fmul fast float %8023, %7665
  br label %8036

; <label>:8036                                    ; preds = %8012, %7669, %7638, %6870
  %8037 = phi float [ %6875, %6870 ], [ %7660, %7638 ], [ %8030, %8012 ], [ %7660, %7669 ]
  %8038 = phi float [ %6876, %6870 ], [ %7661, %7638 ], [ %8031, %8012 ], [ %7661, %7669 ]
  %8039 = phi float [ %6877, %6870 ], [ %7662, %7638 ], [ %8032, %8012 ], [ %7662, %7669 ]
  %8040 = phi float [ %6878, %6870 ], [ %7663, %7638 ], [ %8033, %8012 ], [ %7663, %7669 ]
  %8041 = phi float [ %6879, %6870 ], [ %7664, %7638 ], [ %8034, %8012 ], [ %7664, %7669 ]
  %8042 = phi float [ %6880, %6870 ], [ %7665, %7638 ], [ %8035, %8012 ], [ %7665, %7669 ]
  %8043 = phi float [ %6881, %6870 ], [ %7648, %7638 ], [ %8019, %8012 ], [ %7648, %7669 ]
  %8044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8045 = extractvalue %dx.types.CBufRet.f32 %8044, 2
  %8046 = extractvalue %dx.types.CBufRet.f32 %8044, 3
  %8047 = fmul fast float %8045, %101
  %8048 = fmul fast float %8046, %102
  %8049 = call float @dx.op.unary.f32(i32 7, float %8047)  ; Saturate(value)
  %8050 = call float @dx.op.unary.f32(i32 7, float %8048)  ; Saturate(value)
  %8051 = select i1 %6610, i32 2, i32 0
  %8052 = or i32 %8051, 1
  %8053 = uitofp i32 %8052 to float
  %8054 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %65, float %8049, float %8050, float %8053, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8055 = extractvalue %dx.types.ResRet.f32 %8054, 0
  %8056 = extractvalue %dx.types.ResRet.f32 %8054, 1
  %8057 = extractvalue %dx.types.ResRet.f32 %8054, 2
  %8058 = extractvalue %dx.types.ResRet.f32 %8054, 3
  %8059 = add nuw nsw i32 %8051, 2
  %8060 = uitofp i32 %8059 to float
  %8061 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %65, float %8049, float %8050, float %8060, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8062 = extractvalue %dx.types.ResRet.f32 %8061, 0
  %8063 = extractvalue %dx.types.ResRet.f32 %8061, 1
  %8064 = extractvalue %dx.types.ResRet.f32 %8061, 2
  %8065 = extractvalue %dx.types.ResRet.f32 %8061, 3
  %8066 = call float @dx.op.binary.f32(i32 35, float %8056, float %8057)  ; FMax(a,b)
  %8067 = call float @dx.op.binary.f32(i32 35, float %8055, float %8066)  ; FMax(a,b)
  %8068 = call float @dx.op.binary.f32(i32 35, float %8067, float %8058)  ; FMax(a,b)
  %8069 = call float @dx.op.binary.f32(i32 36, float %8063, float %8064)  ; FMin(a,b)
  %8070 = call float @dx.op.binary.f32(i32 36, float %8062, float %8069)  ; FMin(a,b)
  %8071 = call float @dx.op.binary.f32(i32 36, float %8070, float %8065)  ; FMin(a,b)
  %8072 = fmul fast float %8068, 2.550000e+02
  %8073 = fadd fast float %8072, 0x3F70101020000000
  %8074 = fptoui float %8073 to i32
  %8075 = fmul fast float %8071, 2.550000e+02
  %8076 = fadd fast float %8075, 0x3F70101020000000
  %8077 = fptoui float %8076 to i32
  %8078 = icmp ult i32 %8074, %8077
  br i1 %8078, label %8079, label %8248

; <label>:8079                                    ; preds = %8036
  %8080 = fcmp fast ogt float %88, 9.843750e-01
  %8081 = fadd fast float %6874, -4.000000e+00
  %8082 = select i1 %8080, float -4.000000e+00, float %8081
  %8083 = call float @dx.op.binary.f32(i32 35, float %8082, float 0.000000e+00)  ; FMax(a,b)
  %8084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8085 = extractvalue %dx.types.CBufRet.f32 %8084, 0
  %8086 = fadd fast float %8085, %8083
  %8087 = extractvalue %dx.types.CBufRet.f32 %8084, 2
  %8088 = fmul fast float %8086, %8087
  %8089 = call float @dx.op.unary.f32(i32 23, float %8088)  ; Log(value)
  %8090 = extractvalue %dx.types.CBufRet.f32 %8084, 3
  %8091 = fmul fast float %8090, %8089
  %8092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8093 = extractvalue %dx.types.CBufRet.f32 %8092, 2
  %8094 = fmul fast float %8091, %8093
  %8095 = call float @dx.op.unary.f32(i32 7, float %8094)  ; Saturate(value)
  %8096 = uitofp i32 %8074 to float
  %8097 = uitofp i32 %8077 to float
  %8098 = fadd fast float %8096, 5.000000e-01
  %8099 = fadd fast float %8097, 5.000000e-01
  %8100 = fmul fast float %8093, %8098
  %8101 = fmul fast float %8093, %8099
  %8102 = fadd fast float %8100, 0x3F0FFB4800000000
  %8103 = fadd fast float %8101, 0xBF0FFB4800000000
  %8104 = call float @dx.op.binary.f32(i32 35, float %8095, float %8102)  ; FMax(a,b)
  %8105 = call float @dx.op.binary.f32(i32 36, float %8104, float %8103)  ; FMin(a,b)
  %8106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8107 = extractvalue %dx.types.CBufRet.f32 %8106, 1
  %8108 = extractvalue %dx.types.CBufRet.f32 %8106, 2
  %8109 = extractvalue %dx.types.CBufRet.f32 %8106, 0
  %8110 = select i1 %6610, float %8109, float 0.000000e+00
  %8111 = fmul fast float %8107, %8105
  %8112 = fadd fast float %8110, %8111
  %8113 = fadd fast float %8110, %8108
  %8114 = fsub fast float %8107, %8108
  %8115 = fadd fast float %8114, %8110
  %8116 = call float @dx.op.binary.f32(i32 35, float %8112, float %8113)  ; FMax(a,b)
  %8117 = call float @dx.op.binary.f32(i32 36, float %8116, float %8115)  ; FMin(a,b)
  %8118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %63, float %8049, float %8050, float %8117, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8119 = extractvalue %dx.types.ResRet.f32 %8118, 0
  %8120 = extractvalue %dx.types.ResRet.f32 %8118, 1
  %8121 = extractvalue %dx.types.ResRet.f32 %8118, 2
  %8122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8123 = extractvalue %dx.types.CBufRet.i32 %8122, 0
  %8124 = extractvalue %dx.types.CBufRet.i32 %8122, 1
  %8125 = uitofp i32 %8123 to float
  %8126 = uitofp i32 %8124 to float
  %8127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8128 = extractvalue %dx.types.CBufRet.f32 %8127, 0
  %8129 = extractvalue %dx.types.CBufRet.f32 %8127, 1
  %8130 = fmul fast float %8125, %8049
  %8131 = fmul fast float %8126, %8050
  %8132 = fadd fast float %8130, -5.000000e-01
  %8133 = fadd fast float %8131, -5.000000e-01
  %8134 = call float @dx.op.unary.f32(i32 22, float %8132)  ; Frc(value)
  %8135 = call float @dx.op.unary.f32(i32 22, float %8133)  ; Frc(value)
  %8136 = fmul fast float %8134, %8134
  %8137 = fmul fast float %8136, %8134
  %8138 = fsub fast float 3.000000e+00, %8134
  %8139 = fmul fast float %8136, %8138
  %8140 = fmul fast float %8134, 3.000000e+00
  %8141 = fmul fast float %8137, 3.000000e+00
  %8142 = fmul fast float %8136, 6.000000e+00
  %8143 = fsub fast float %8141, %8142
  %8144 = fadd fast float %8143, 4.000000e+00
  %8145 = fmul fast float %8144, 0x3FC5555560000000
  %8146 = fmul fast float %8137, -3.000000e+00
  %8147 = fadd fast float %8136, %8134
  %8148 = fmul fast float %8147, 3.000000e+00
  %8149 = fadd fast float %8146, 1.000000e+00
  %8150 = fadd fast float %8149, %8148
  %8151 = fmul fast float %8137, 0x3FC5555560000000
  %8152 = fmul fast float %8135, %8135
  %8153 = fmul fast float %8152, %8135
  %8154 = fsub fast float 3.000000e+00, %8135
  %8155 = fmul fast float %8152, %8154
  %8156 = fmul fast float %8135, 3.000000e+00
  %8157 = fmul fast float %8153, 3.000000e+00
  %8158 = fmul fast float %8152, 6.000000e+00
  %8159 = fsub fast float %8157, %8158
  %8160 = fadd fast float %8159, 4.000000e+00
  %8161 = fmul fast float %8160, 0x3FC5555560000000
  %8162 = fmul fast float %8153, -3.000000e+00
  %8163 = fadd fast float %8152, %8135
  %8164 = fmul fast float %8163, 3.000000e+00
  %8165 = fadd fast float %8162, 1.000000e+00
  %8166 = fadd fast float %8165, %8164
  %8167 = fmul fast float %8153, 0x3FC5555560000000
  %8168 = fadd fast float %8134, 1.000000e+00
  %8169 = fsub fast float 1.000000e+00, %8140
  %8170 = fadd fast float %8169, %8139
  %8171 = fadd fast float %8170, %8144
  %8172 = fmul fast float %8171, 0x3FC5555560000000
  %8173 = fdiv fast float %8145, %8172
  %8174 = fsub fast float %8168, %8173
  %8175 = fsub fast float 1.000000e+00, %8134
  %8176 = fadd fast float %8150, %8137
  %8177 = fmul fast float %8176, 0x3FC5555560000000
  %8178 = fdiv fast float %8151, %8177
  %8179 = fadd fast float %8175, %8178
  %8180 = fadd fast float %8135, 1.000000e+00
  %8181 = fsub fast float 1.000000e+00, %8156
  %8182 = fadd fast float %8181, %8155
  %8183 = fadd fast float %8182, %8160
  %8184 = fmul fast float %8183, 0x3FC5555560000000
  %8185 = fdiv fast float %8161, %8184
  %8186 = fsub fast float %8180, %8185
  %8187 = fsub fast float 1.000000e+00, %8135
  %8188 = fadd fast float %8166, %8153
  %8189 = fmul fast float %8188, 0x3FC5555560000000
  %8190 = fdiv fast float %8167, %8189
  %8191 = fadd fast float %8190, %8187
  %8192 = fmul fast float %8174, %8128
  %8193 = fsub fast float %8049, %8192
  %8194 = fmul fast float %8179, %8128
  %8195 = fadd fast float %8194, %8049
  %8196 = fmul fast float %8191, %8129
  %8197 = fadd fast float %8196, %8050
  %8198 = fmul fast float %8186, %8129
  %8199 = fsub fast float %8050, %8198
  %8200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %63, float %8193, float %8199, float %8117, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8201 = extractvalue %dx.types.ResRet.f32 %8200, 0
  %8202 = extractvalue %dx.types.ResRet.f32 %8200, 1
  %8203 = extractvalue %dx.types.ResRet.f32 %8200, 2
  %8204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %63, float %8195, float %8199, float %8117, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8205 = extractvalue %dx.types.ResRet.f32 %8204, 0
  %8206 = extractvalue %dx.types.ResRet.f32 %8204, 1
  %8207 = extractvalue %dx.types.ResRet.f32 %8204, 2
  %8208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %63, float %8193, float %8197, float %8117, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8209 = extractvalue %dx.types.ResRet.f32 %8208, 0
  %8210 = extractvalue %dx.types.ResRet.f32 %8208, 1
  %8211 = extractvalue %dx.types.ResRet.f32 %8208, 2
  %8212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %63, float %8195, float %8197, float %8117, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8213 = extractvalue %dx.types.ResRet.f32 %8212, 0
  %8214 = extractvalue %dx.types.ResRet.f32 %8212, 1
  %8215 = extractvalue %dx.types.ResRet.f32 %8212, 2
  %8216 = fsub fast float %8209, %8201
  %8217 = fsub fast float %8210, %8202
  %8218 = fsub fast float %8211, %8203
  %8219 = fmul fast float %8216, %8189
  %8220 = fmul fast float %8217, %8189
  %8221 = fmul fast float %8218, %8189
  %8222 = fadd fast float %8219, %8201
  %8223 = fadd fast float %8220, %8202
  %8224 = fadd fast float %8221, %8203
  %8225 = fsub fast float %8213, %8205
  %8226 = fsub fast float %8214, %8206
  %8227 = fsub fast float %8215, %8207
  %8228 = fmul fast float %8225, %8189
  %8229 = fmul fast float %8226, %8189
  %8230 = fmul fast float %8227, %8189
  %8231 = fsub fast float %8205, %8222
  %8232 = fadd fast float %8231, %8228
  %8233 = fsub fast float %8206, %8223
  %8234 = fadd fast float %8233, %8229
  %8235 = fsub fast float %8207, %8224
  %8236 = fadd fast float %8235, %8230
  %8237 = fmul fast float %8232, %8177
  %8238 = fmul fast float %8234, %8177
  %8239 = fmul fast float %8236, %8177
  %8240 = fadd fast float %8237, %8222
  %8241 = fadd fast float %8238, %8223
  %8242 = fadd fast float %8239, %8224
  %8243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8244 = extractvalue %dx.types.CBufRet.f32 %8243, 1
  %8245 = fmul fast float %8240, %8244
  %8246 = fmul fast float %8241, %8244
  %8247 = fmul fast float %8242, %8244
  br label %8248

; <label>:8248                                    ; preds = %8079, %8036
  %8249 = phi float [ %8119, %8079 ], [ 1.000000e+00, %8036 ]
  %8250 = phi float [ %8120, %8079 ], [ 1.000000e+00, %8036 ]
  %8251 = phi float [ %8121, %8079 ], [ 1.000000e+00, %8036 ]
  %8252 = phi float [ %8245, %8079 ], [ 0.000000e+00, %8036 ]
  %8253 = phi float [ %8246, %8079 ], [ 0.000000e+00, %8036 ]
  %8254 = phi float [ %8247, %8079 ], [ 0.000000e+00, %8036 ]
  %8255 = fmul fast float %8252, %6582
  %8256 = fmul fast float %8253, %6582
  %8257 = fmul fast float %8254, %6582
  %8258 = fmul fast float %8249, %8043
  %8259 = call float @dx.op.dot3.f32(i32 55, float %8249, float %8250, float %8251, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8260 = call float @dx.op.dot3.f32(i32 55, float %8255, float %8256, float %8257, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8261 = select i1 %239, float %8259, float %8249
  %8262 = select i1 %239, float %8259, float %8250
  %8263 = select i1 %239, float 1.000000e+00, float %8251
  %8264 = select i1 %239, float %8260, float %8255
  %8265 = select i1 %239, float 0.000000e+00, float %8256
  %8266 = select i1 %239, float 0.000000e+00, float %8257
  %8267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8268 = extractvalue %dx.types.CBufRet.i32 %8267, 3
  %8269 = and i32 %8268, 3
  %8270 = icmp ne i32 %8269, 0
  %8271 = and i32 %8268, 4
  %8272 = icmp ne i32 %8271, 0
  %8273 = and i1 %8270, %8272
  %8274 = and i1 %239, %8273
  br i1 %8274, label %8275, label %8281

; <label>:8275                                    ; preds = %8248
  %8276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8277 = extractvalue %dx.types.CBufRet.f32 %8276, 1
  %8278 = fadd fast float %8258, -1.000000e+00
  %8279 = fmul fast float %8277, %8278
  %8280 = fadd fast float %8279, 1.000000e+00
  br label %8281

; <label>:8281                                    ; preds = %8275, %8248
  %8282 = phi float [ %8280, %8275 ], [ %8258, %8248 ]
  %8283 = fadd fast float %8040, %8037
  %8284 = fmul fast float %8261, %8283
  %8285 = fadd fast float %8284, %8264
  %8286 = fadd fast float %8041, %8038
  %8287 = fmul fast float %8262, %8286
  %8288 = fadd fast float %8287, %8265
  %8289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8290 = extractvalue %dx.types.CBufRet.f32 %8289, 0
  br i1 %239, label %8291, label %8314

; <label>:8291                                    ; preds = %8281
  %8292 = fadd fast float %8285, %8288
  %8293 = fmul fast float %8290, %8292
  %8294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8295 = extractvalue %dx.types.CBufRet.f32 %8294, 3
  %8296 = extractvalue %dx.types.CBufRet.f32 %6591, 1
  %8297 = fsub fast float %6597, %6585
  %8298 = fadd fast float %8297, %6598
  %8299 = fsub fast float %8298, %8296
  %8300 = extractvalue %dx.types.CBufRet.f32 %6591, 2
  %8301 = fmul fast float %8299, %8300
  %8302 = call float @dx.op.unary.f32(i32 7, float %8301)  ; Saturate(value)
  %8303 = fsub fast float %8302, %8295
  %8304 = fmul fast float %8303, %8282
  %8305 = fadd fast float %8304, %8295
  %8306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8307 = extractvalue %dx.types.CBufRet.f32 %8306, 0
  %8308 = fsub fast float %8305, %8307
  %8309 = fmul fast float %8308, 1.000000e+01
  %8310 = call float @dx.op.unary.f32(i32 7, float %8309)  ; Saturate(value)
  %8311 = fmul fast float %8310, %6581
  %8312 = fadd fast float %8311, %6582
  %8313 = fmul fast float %8312, %8305
  br label %8338

; <label>:8314                                    ; preds = %8281
  %8315 = fadd fast float %8042, %8039
  %8316 = fmul fast float %8263, %8315
  %8317 = fadd fast float %8316, %8266
  %8318 = fmul fast float %8290, %8285
  %8319 = fmul fast float %8290, %8288
  %8320 = fmul fast float %8290, %8317
  %8321 = call float @dx.op.binary.f32(i32 35, float %8319, float %8320)  ; FMax(a,b)
  %8322 = call float @dx.op.binary.f32(i32 35, float %8318, float %8321)  ; FMax(a,b)
  %8323 = call float @dx.op.binary.f32(i32 35, float %8322, float %6582)  ; FMax(a,b)
  %8324 = fcmp fast ugt float %8323, 0x3F10000000000000
  br i1 %8324, label %8326, label %8325

; <label>:8325                                    ; preds = %8314
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8326

; <label>:8326                                    ; preds = %8325, %8314
  %8327 = add i32 %72, 116
  %8328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %8327, i32 undef)  ; BufferLoad(srv,index,wot)
  %8329 = extractvalue %dx.types.ResRet.i32 %8328, 0
  %8330 = and i32 %8329, 32
  %8331 = icmp eq i32 %8330, 0
  br i1 %8331, label %8338, label %8332

; <label>:8332                                    ; preds = %8326
  %8333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8334 = extractvalue %dx.types.CBufRet.f32 %8333, 0
  %8335 = fmul fast float %8334, 0x3FE99999A0000000
  %8336 = fadd fast float %8334, %8318
  %8337 = fadd fast float %8335, %8320
  br label %8338

; <label>:8338                                    ; preds = %8332, %8326, %8291
  %8339 = phi float [ %8293, %8291 ], [ %8336, %8332 ], [ %8318, %8326 ]
  %8340 = phi float [ %8313, %8291 ], [ %8319, %8332 ], [ %8319, %8326 ]
  %8341 = phi float [ %8312, %8291 ], [ %8337, %8332 ], [ %8320, %8326 ]
  %8342 = phi float [ %8312, %8291 ], [ %6582, %8332 ], [ %6582, %8326 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8343 = call float @dx.op.binary.f32(i32 36, float %8339, float 3.225500e+04)  ; FMin(a,b)
  %8344 = call float @dx.op.binary.f32(i32 36, float %8340, float 3.225500e+04)  ; FMin(a,b)
  %8345 = call float @dx.op.binary.f32(i32 36, float %8341, float 3.225500e+04)  ; FMin(a,b)
  %8346 = call float @dx.op.binary.f32(i32 36, float %8342, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8343)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8344)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8345)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8346)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

