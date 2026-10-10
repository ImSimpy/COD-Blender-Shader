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
; shader hash: 26add7928130f65db7d514ad62b416ac
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
;                                   sampler      NA          NA      S7             s6     1
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
;                                   texture     f32          2d     T26             t1     1
;                                   texture     f32          2d     T27             t2     1
;                                   texture     f32          2d     T28     t58,space2     1
;                                   texture     f32          2d     T29     t59,space2     1
;                                   texture     f32          2d     T30     t60,space2     1
;                                   texture    byte         r/o     T31     t45,space1     1
;                                   texture    byte         r/o     T32     t46,space1     1
;                                   texture    byte         r/o     T33     t47,space1     1
;                                   texture    byte         r/o     T34     t48,space1     1
;                                   texture     f32          2d     T35     t57,space2     1
;                                   texture    byte         r/o     T36     t69,space1     1
;                                   texture     u32          2d     T37     t56,space2     1
;                                   texture     f32     2darray     T38     t35,space2     1
;                                   texture     f32          3d     T39     t31,space2     1
;                                   texture    byte         r/o     T40     t10,space1     1
;                                   texture    byte         r/o     T41      t1,space1     1
;                                   texture     f32          1d     T42     t32,space2     1
;                                   texture     f32     2darray     T43      t8,space2     1
;                                   texture     f32          2d     T44      t2,space2     1
;                                   texture     f32          2d     T45      t3,space2     1
;                                   texture     f32          2d     T46      t4,space2     1
;                                   textureunorm_f32     2darray     T47     t80,space2     1
;                                   texture    byte         r/o     T48     t67,space1     1
;                                   texture     f32          2d     T49      t7,space2     1
;                                   texture     f32          2d     T50      t6,space2     1
;                                   texture     f32          2d     T51      t5,space2     1
;                                   texture     f32          2d     T52     t38,space2     1
;                                   texture    byte         r/o     T53     t12,space1     1
;                                   texture    byte         r/o     T54     t13,space1     1
;                                   texture     f32          1d     T55     t30,space2     1
;                                   texture     f32          3d     T56     t44,space2     1
;                                   texture     f32          3d     T57     t45,space2     1
;                                   texture     f32     2darray     T58     t47,space2     1
;                                   textureunorm_f32     2darray     T59     t85,space2     1
;                                   texture     f32          2d     T60     t83,space2     1
;                                   texture     f32          2d     T61     t86,space2     1
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 61, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 60, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 59, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 58, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 57, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 56, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 55, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %151, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = or i32 %151, 4
  %155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %154, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %182 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %180, i32 %181, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %183 = extractvalue %dx.types.ResRet.i32 %182, 0
  %184 = lshr i32 %183, 18
  %185 = uitofp i32 %184 to float
  %186 = fmul fast float %185, 0x3F4C00EBA0000000
  %187 = call float @dx.op.unary.f32(i32 21, float %186)  ; Exp(value)
  %188 = fadd fast float %187, -1.000000e+00
  %189 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
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
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = and i32 %204, 114688
  %206 = icmp ne i32 %205, 0
  %207 = select i1 %206, float %201, float 0.000000e+00
  %208 = select i1 %206, float %202, float 0.000000e+00
  %209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %65, float %207, float %208, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = fmul fast float %210, 2.550000e+02
  %212 = fptoui float %211 to i32
  %213 = select i1 %206, i32 %212, i32 0
  %214 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.i32 %214, 3
  %216 = and i32 %215, 3
  %217 = icmp ne i32 %216, 0
  %218 = and i32 %215, 4
  %219 = icmp ne i32 %218, 0
  %220 = and i1 %217, %219
  br i1 %220, label %221, label %230

; <label>:221                                     ; preds = %0
  %222 = fmul fast float %115, %100
  %223 = fmul fast float %114, %99
  %224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %64, float %223, float %222, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %225 = extractvalue %dx.types.ResRet.f32 %224, 0
  %226 = fsub fast float 1.000000e+00, %225
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 0
  %229 = fcmp fast olt float %226, %228
  br label %238

; <label>:230                                     ; preds = %0
  %231 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.i32 %231, 3
  %233 = and i32 %232, 3
  %234 = icmp ne i32 %233, 0
  %235 = and i32 %232, 4
  %236 = icmp eq i32 %235, 0
  %237 = and i1 %234, %236
  br label %238

; <label>:238                                     ; preds = %230, %221
  %239 = phi i1 [ %229, %221 ], [ %237, %230 ]
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 2
  %242 = fmul fast float %241, 0x3FE3C6EF40000000
  %243 = frem fast float %99, 2.560000e+02
  %244 = frem fast float %100, 2.560000e+02
  %245 = fptoui float %243 to i32
  %246 = fptoui float %244 to i32
  %247 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %245, i32 %246, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = extractvalue %dx.types.ResRet.f32 %247, 1
  %250 = fadd fast float %248, %242
  %251 = fadd fast float %249, %242
  %252 = call float @dx.op.unary.f32(i32 22, float %250)  ; Frc(value)
  %253 = call float @dx.op.unary.f32(i32 22, float %251)  ; Frc(value)
  %254 = add i32 %71, 60
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = shl i32 %256, 4
  %258 = and i32 %257, 32752
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %256, 7
  %261 = and i32 %260, 32752
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %256, 22
  %264 = shl nuw nsw i32 %263, 5
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = add i32 %71, 72
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = and i32 %268, 255
  %270 = uitofp i32 %269 to float
  %271 = fmul fast float %270, 0x3F70101020000000
  %272 = lshr i32 %268, 8
  %273 = and i32 %272, 255
  %274 = uitofp i32 %273 to float
  %275 = fmul fast float %274, 0x3F70101020000000
  %276 = lshr i32 %268, 16
  %277 = and i32 %276, 255
  %278 = uitofp i32 %277 to float
  %279 = fmul fast float %278, 0x3F70101020000000
  %280 = add i32 %71, 36
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = and i32 %282, 65535
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = lshr i32 %282, 16
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = add i32 %71, 96
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = and i32 %289, 65535
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %289, 16
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = fmul fast float %291, 0x3F50624DE0000000
  %295 = fmul fast float %293, 0x3F50624DE0000000
  %296 = add i32 %71, 124
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = and i32 %298, 2
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %309, label %301

; <label>:301                                     ; preds = %238
  %302 = add i32 %71, 168
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = add i32 %304, 0
  %306 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %305, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %307 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %306, %dx.types.Handle %96, float %82, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 3
  br label %309

; <label>:309                                     ; preds = %301, %238
  %310 = phi float [ 1.000000e+00, %238 ], [ %308, %301 ]
  %311 = add i32 %71, 24
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = add i32 %71, 28
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = or i32 %316, %313
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %1071, label %319

; <label>:319                                     ; preds = %309
  %320 = add i32 %71, 92
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = lshr i32 %322, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = fmul fast float %324, 0x3F50624DE0000000
  %326 = add i32 %71, 40
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = lshr i32 %328, 16
  %330 = and i32 %329, 255
  %331 = lshr i32 %328, 24
  %332 = add i32 %71, 100
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 65535
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %334, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = add i32 %71, 32
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = lshr i32 %341, 22
  %343 = shl nuw nsw i32 %342, 5
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = shl i32 %341, 4
  %346 = and i32 %345, 32752
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = lshr i32 %341, 7
  %349 = and i32 %348, 32752
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.f32 %351, 3
  %353 = fmul fast float %352, 1.000000e+03
  %354 = fmul fast float %294, %353
  %355 = call float @dx.op.unary.f32(i32 22, float %354)  ; Frc(value)
  %356 = fadd fast float %355, %284
  %357 = fmul fast float %295, %353
  %358 = call float @dx.op.unary.f32(i32 22, float %357)  ; Frc(value)
  %359 = fadd fast float %358, %286
  %360 = fmul fast float %325, %353
  %361 = call float @dx.op.unary.f32(i32 22, float %360)  ; Frc(value)
  %362 = fmul fast float %361, 0x401921FB60000000
  %363 = fadd fast float %362, %344
  %364 = call float @dx.op.unary.f32(i32 13, float %363)  ; Sin(value)
  %365 = call float @dx.op.unary.f32(i32 12, float %363)  ; Cos(value)
  %366 = fsub fast float -0.000000e+00, %364
  %367 = fadd fast float %82, -5.000000e-01
  %368 = fadd fast float %83, -5.000000e-01
  %369 = fmul fast float %336, %367
  %370 = fmul fast float %338, %368
  %371 = fadd fast float %369, 5.000000e-01
  %372 = fadd fast float %370, 5.000000e-01
  %373 = fmul fast float %347, %371
  %374 = fmul fast float %350, %372
  %375 = fmul fast float %365, %373
  %376 = call float @dx.op.tertiary.f32(i32 46, float %366, float %374, float %375)  ; FMad(a,b,c)
  %377 = fmul fast float %364, %373
  %378 = call float @dx.op.tertiary.f32(i32 46, float %365, float %374, float %377)  ; FMad(a,b,c)
  %379 = fadd fast float %356, %376
  %380 = fadd fast float %359, %378
  %381 = icmp ugt i32 %330, 1
  %382 = icmp ugt i32 %328, 33554431
  %383 = or i1 %382, %381
  br i1 %383, label %384, label %409

; <label>:384                                     ; preds = %319
  %385 = add i32 %71, 84
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = lshr i32 %387, 16
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = fmul fast float %352, %389
  %391 = call float @dx.op.unary.f32(i32 22, float %390)  ; Frc(value)
  %392 = mul nuw nsw i32 %330, %331
  %393 = uitofp i32 %392 to float
  %394 = fmul fast float %391, %393
  %395 = call float @dx.op.unary.f32(i32 27, float %394)  ; Round_ni(value)
  %396 = fptoui float %395 to i32
  %397 = urem i32 %396, %330
  %398 = udiv i32 %396, %331
  %399 = call float @dx.op.unary.f32(i32 22, float %379)  ; Frc(value)
  %400 = call float @dx.op.unary.f32(i32 22, float %380)  ; Frc(value)
  %401 = uitofp i32 %397 to float
  %402 = uitofp i32 %398 to float
  %403 = fadd fast float %399, %401
  %404 = fadd fast float %400, %402
  %405 = uitofp i32 %330 to float
  %406 = uitofp i32 %331 to float
  %407 = fdiv fast float %403, %405
  %408 = fdiv fast float %404, %406
  br label %409

; <label>:409                                     ; preds = %384, %319
  %410 = phi float [ %407, %384 ], [ %379, %319 ]
  %411 = phi float [ %408, %384 ], [ %380, %319 ]
  %412 = and i32 %313, 16777216
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %523, label %414

; <label>:414                                     ; preds = %409
  %415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %416 = extractvalue %dx.types.CBufRet.f32 %415, 0
  %417 = extractvalue %dx.types.CBufRet.f32 %415, 1
  %418 = extractvalue %dx.types.CBufRet.f32 %415, 2
  %419 = fadd fast float %416, %146
  %420 = fadd fast float %417, %147
  %421 = fadd fast float %418, %148
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 0
  %424 = call float @dx.op.unary.f32(i32 7, float %423)  ; Saturate(value)
  %425 = icmp eq i32 %70, 65535
  br i1 %425, label %520, label %426

; <label>:426                                     ; preds = %414
  %427 = lshr i32 %70, 1
  %428 = shl i32 %427, 2
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %70, 1
  %432 = icmp ne i32 %431, 0
  %433 = lshr i32 %430, 16
  %434 = and i32 %430, 65535
  %435 = select i1 %432, i32 %433, i32 %434
  %436 = icmp eq i32 %435, 65535
  br i1 %436, label %516, label %437

; <label>:437                                     ; preds = %426
  %438 = mul nuw nsw i32 %435, 40
  %439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.f32 %439, 0
  %441 = extractvalue %dx.types.ResRet.f32 %439, 1
  %442 = extractvalue %dx.types.ResRet.f32 %439, 2
  %443 = add nuw nsw i32 %438, 12
  %444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = extractvalue %dx.types.ResRet.f32 %444, 1
  %447 = extractvalue %dx.types.ResRet.f32 %444, 2
  %448 = add nuw nsw i32 %438, 24
  %449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = extractvalue %dx.types.ResRet.f32 %449, 1
  %452 = extractvalue %dx.types.ResRet.f32 %449, 2
  %453 = add nuw nsw i32 %438, 36
  %454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = fsub fast float %419, %440
  %457 = fsub fast float %420, %441
  %458 = fsub fast float %421, %442
  %459 = fmul fast float %455, %456
  %460 = fmul fast float %455, %457
  %461 = fmul fast float %455, %458
  %462 = call float @dx.op.unary.f32(i32 27, float %459)  ; Round_ni(value)
  %463 = call float @dx.op.unary.f32(i32 27, float %460)  ; Round_ni(value)
  %464 = call float @dx.op.unary.f32(i32 27, float %461)  ; Round_ni(value)
  %465 = fadd fast float %462, 5.000000e-01
  %466 = fadd fast float %463, 5.000000e-01
  %467 = fadd fast float %464, 5.000000e-01
  %468 = fmul fast float %465, %445
  %469 = fmul fast float %466, %446
  %470 = fmul fast float %467, %447
  %471 = shl i32 %70, 2
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = add i32 %473, 0
  %475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %474, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %476 = call float @dx.op.unary.f32(i32 22, float %468)  ; Frc(value)
  %477 = call float @dx.op.unary.f32(i32 22, float %469)  ; Frc(value)
  %478 = call float @dx.op.unary.f32(i32 22, float %470)  ; Frc(value)
  %479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %475, %dx.types.Handle %65, float %476, float %477, float %478, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %480 = extractvalue %dx.types.ResRet.f32 %479, 0
  %481 = extractvalue %dx.types.ResRet.f32 %479, 1
  %482 = extractvalue %dx.types.ResRet.f32 %479, 2
  %483 = fmul fast float %480, 1.023000e+03
  %484 = fmul fast float %481, 1.023000e+03
  %485 = fmul fast float %482, 1.023000e+03
  %486 = fadd fast float %483, 5.000000e-01
  %487 = fadd fast float %484, 5.000000e-01
  %488 = fadd fast float %485, 5.000000e-01
  %489 = call float @dx.op.unary.f32(i32 27, float %486)  ; Round_ni(value)
  %490 = call float @dx.op.unary.f32(i32 27, float %487)  ; Round_ni(value)
  %491 = call float @dx.op.unary.f32(i32 27, float %488)  ; Round_ni(value)
  %492 = fsub fast float %459, %462
  %493 = fsub fast float %460, %463
  %494 = fsub fast float %461, %464
  %495 = fmul fast float %492, 7.500000e-01
  %496 = fmul fast float %493, 7.500000e-01
  %497 = fmul fast float %494, 7.500000e-01
  %498 = fadd fast float %462, 1.250000e-01
  %499 = fadd fast float %498, %495
  %500 = fadd fast float %499, %489
  %501 = fadd fast float %463, 1.250000e-01
  %502 = fadd fast float %501, %496
  %503 = fadd fast float %502, %490
  %504 = fadd fast float %464, 1.250000e-01
  %505 = fadd fast float %504, %497
  %506 = fadd fast float %505, %491
  %507 = fmul fast float %500, %450
  %508 = fmul fast float %503, %451
  %509 = fmul fast float %506, %452
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = add i32 %511, 0
  %513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %512, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %513, %dx.types.Handle %63, float %507, float %508, float %509, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  br label %516

; <label>:516                                     ; preds = %437, %426
  %517 = phi float [ %515, %437 ], [ -1.000000e+00, %426 ]
  %518 = fadd fast float %517, %424
  %519 = call float @dx.op.unary.f32(i32 7, float %518)  ; Saturate(value)
  br label %520

; <label>:520                                     ; preds = %516, %414
  %521 = phi float [ %519, %516 ], [ %424, %414 ]
  %522 = fmul fast float %521, %310
  br label %523

; <label>:523                                     ; preds = %520, %409
  %524 = phi float [ %522, %520 ], [ %310, %409 ]
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = and i32 %526, 256
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %575, label %529

; <label>:529                                     ; preds = %523
  %530 = add i32 %71, 152
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = add i32 %532, 0
  %534 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %533, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %535 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %534, %dx.types.Handle %96, float %410, float %411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %536 = extractvalue %dx.types.ResRet.f32 %535, 0
  %537 = add i32 %71, 52
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = shl i32 %539, 4
  %541 = and i32 %540, 32752
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = lshr i32 %539, 7
  %544 = and i32 %543, 32752
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = fsub fast float 1.000000e+00, %524
  %547 = call float @dx.op.binary.f32(i32 35, float %546, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %548 = bitcast float %524 to i32
  %549 = sitofp i32 %548 to float
  %550 = fadd fast float %549, 0xC1CFBF8940000000
  %551 = fmul fast float %545, %550
  %552 = fadd fast float %551, 0x41CFBF8940000000
  %553 = fptosi float %552 to i32
  %554 = bitcast i32 %553 to float
  %555 = bitcast float %547 to i32
  %556 = sitofp i32 %555 to float
  %557 = fadd fast float %556, 0xC1CFBF8940000000
  %558 = fmul fast float %557, %545
  %559 = fadd fast float %558, 0x41CFBF8940000000
  %560 = fptosi float %559 to i32
  %561 = bitcast i32 %560 to float
  %562 = fmul fast float %554, %542
  %563 = fmul fast float %561, %542
  %564 = fsub fast float %547, %562
  %565 = fadd fast float %563, %547
  %566 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  %567 = call float @dx.op.unary.f32(i32 7, float %565)  ; Saturate(value)
  %568 = fsub fast float %536, %566
  %569 = fsub fast float %567, %566
  %570 = bitcast float %569 to i32
  %571 = sub nsw i32 2129859010, %570
  %572 = bitcast i32 %571 to float
  %573 = fmul fast float %572, %568
  %574 = call float @dx.op.unary.f32(i32 7, float %573)  ; Saturate(value)
  br label %575

; <label>:575                                     ; preds = %529, %523
  %576 = phi float [ %574, %529 ], [ %524, %523 ]
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = and i32 %578, 128
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %597, label %581

; <label>:581                                     ; preds = %575
  %582 = add i32 %71, 148
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = add i32 %584, 0
  %586 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %585, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %587 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %586, %dx.types.Handle %96, float %410, float %411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %588 = extractvalue %dx.types.ResRet.f32 %587, 0
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = and i32 %590, 524288
  %592 = icmp ne i32 %591, 0
  %593 = fcmp fast ogt float %588, 0x3FE0101020000000
  %594 = select i1 %593, float 1.000000e+00, float 0.000000e+00
  %595 = select i1 %592, float %594, float %588
  %596 = fmul fast float %595, %576
  br label %597

; <label>:597                                     ; preds = %581, %575
  %598 = phi float [ %596, %581 ], [ %576, %575 ]
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = and i32 %600, 16
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %801, label %603

; <label>:603                                     ; preds = %597
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = add i32 %71, 136
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = add i32 %608, 0
  %610 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %609, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %611 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %610, %dx.types.Handle %95, float %410, float %411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = extractvalue %dx.types.ResRet.f32 %611, 1
  %614 = extractvalue %dx.types.ResRet.f32 %611, 2
  %615 = extractvalue %dx.types.ResRet.f32 %611, 3
  %616 = and i32 %605, 255
  %617 = uitofp i32 %616 to float
  %618 = lshr i32 %605, 8
  %619 = and i32 %618, 255
  %620 = uitofp i32 %619 to float
  %621 = fmul fast float %615, %617
  %622 = fadd fast float %621, %620
  %623 = fmul fast float %622, 0x3F70101000000000
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = and i32 %625, 512
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %636, label %628

; <label>:628                                     ; preds = %603
  %629 = add i32 %71, 156
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = add i32 %631, 0
  %633 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %632, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %634 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %633, %dx.types.Handle %96, float %410, float %411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %635 = extractvalue %dx.types.ResRet.f32 %634, 0
  br label %636

; <label>:636                                     ; preds = %628, %603
  %637 = phi float [ %635, %628 ], [ 1.000000e+00, %603 ]
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = and i32 %639, 33554432
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %748, label %642

; <label>:642                                     ; preds = %636
  %643 = add i32 %71, 80
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = and i32 %645, 65535
  %647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %646)  ; LegacyF16ToF32(value)
  %648 = lshr i32 %645, 16
  %649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %648)  ; LegacyF16ToF32(value)
  %650 = add i32 %71, 84
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %650, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = and i32 %652, 65535
  %654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %653)  ; LegacyF16ToF32(value)
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = lshr i32 %656, 24
  %658 = uitofp i32 %657 to float
  %659 = fmul fast float %658, 0x3F70101020000000
  %660 = and i32 %656, 255
  %661 = uitofp i32 %660 to float
  %662 = fmul fast float %661, 0x3F70101020000000
  %663 = lshr i32 %656, 8
  %664 = and i32 %663, 255
  %665 = uitofp i32 %664 to float
  %666 = fmul fast float %665, 0x3F70101020000000
  %667 = lshr i32 %656, 16
  %668 = and i32 %667, 255
  %669 = uitofp i32 %668 to float
  %670 = fmul fast float %669, 0x3F70101020000000
  %671 = add i32 %71, 76
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %671, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = lshr i32 %673, 24
  %675 = uitofp i32 %674 to float
  %676 = fmul fast float %675, 0x3F70101020000000
  %677 = and i32 %673, 255
  %678 = uitofp i32 %677 to float
  %679 = fmul fast float %678, 0x3F70101020000000
  %680 = lshr i32 %673, 8
  %681 = and i32 %680, 255
  %682 = uitofp i32 %681 to float
  %683 = fmul fast float %682, 0x3F70101020000000
  %684 = lshr i32 %673, 16
  %685 = and i32 %684, 255
  %686 = uitofp i32 %685 to float
  %687 = fmul fast float %686, 0x3F70101020000000
  %688 = bitcast float %612 to i32
  %689 = ashr i32 %688, 1
  %690 = sub nsw i32 1597463174, %689
  %691 = bitcast i32 %690 to float
  %692 = fmul fast float %612, 5.000000e-01
  %693 = fmul fast float %691, %691
  %694 = fmul fast float %693, %692
  %695 = fsub fast float 1.500000e+00, %694
  %696 = fmul fast float %691, %612
  %697 = fmul fast float %696, %695
  %698 = bitcast float %613 to i32
  %699 = ashr i32 %698, 1
  %700 = sub nsw i32 1597463174, %699
  %701 = bitcast i32 %700 to float
  %702 = fmul fast float %613, 5.000000e-01
  %703 = fmul fast float %701, %701
  %704 = fmul fast float %703, %702
  %705 = fsub fast float 1.500000e+00, %704
  %706 = fmul fast float %701, %613
  %707 = fmul fast float %706, %705
  %708 = bitcast float %614 to i32
  %709 = ashr i32 %708, 1
  %710 = sub nsw i32 1597463174, %709
  %711 = bitcast i32 %710 to float
  %712 = fmul fast float %614, 5.000000e-01
  %713 = fmul fast float %711, %711
  %714 = fmul fast float %713, %712
  %715 = fsub fast float 1.500000e+00, %714
  %716 = fmul fast float %711, %614
  %717 = fmul fast float %716, %715
  %718 = fsub fast float %697, %679
  %719 = fsub fast float %707, %683
  %720 = fsub fast float %717, %687
  %721 = fmul fast float %718, %647
  %722 = fmul fast float %719, %649
  %723 = fmul fast float %720, %654
  %724 = fadd fast float %721, %662
  %725 = fadd fast float %722, %666
  %726 = fadd fast float %723, %670
  %727 = call float @dx.op.unary.f32(i32 7, float %724)  ; Saturate(value)
  %728 = call float @dx.op.unary.f32(i32 7, float %725)  ; Saturate(value)
  %729 = call float @dx.op.unary.f32(i32 7, float %726)  ; Saturate(value)
  %730 = fmul fast float %727, %727
  %731 = fmul fast float %728, %728
  %732 = fmul fast float %729, %729
  %733 = fsub fast float %730, %612
  %734 = fsub fast float %731, %613
  %735 = fsub fast float %732, %614
  %736 = fmul fast float %733, %637
  %737 = fmul fast float %734, %637
  %738 = fmul fast float %735, %637
  %739 = fadd fast float %736, %612
  %740 = fadd fast float %737, %613
  %741 = fadd fast float %738, %614
  %742 = fadd fast float %659, %623
  %743 = fsub fast float %742, %676
  %744 = call float @dx.op.unary.f32(i32 7, float %743)  ; Saturate(value)
  %745 = fsub fast float %744, %623
  %746 = fmul fast float %745, %637
  %747 = fadd fast float %746, %623
  br label %801

; <label>:748                                     ; preds = %636
  %749 = and i32 %639, 134217728
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %785, label %751

; <label>:751                                     ; preds = %748
  %752 = call float @dx.op.unary.f32(i32 24, float %271)  ; Sqrt(value)
  %753 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %754 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %755 = fadd fast float %752, -5.000000e-01
  %756 = fadd fast float %753, -5.000000e-01
  %757 = fadd fast float %754, -5.000000e-01
  %758 = fmul fast float %755, %637
  %759 = fmul fast float %756, %637
  %760 = fmul fast float %757, %637
  %761 = fadd fast float %758, 5.000000e-01
  %762 = fadd fast float %759, 5.000000e-01
  %763 = fadd fast float %760, 5.000000e-01
  %764 = call float @dx.op.unary.f32(i32 24, float %612)  ; Sqrt(value)
  %765 = call float @dx.op.unary.f32(i32 24, float %613)  ; Sqrt(value)
  %766 = call float @dx.op.unary.f32(i32 24, float %614)  ; Sqrt(value)
  %767 = fmul fast float %761, 2.000000e+00
  %768 = fsub fast float 1.000000e+00, %767
  %769 = fmul fast float %768, %764
  %770 = fadd fast float %769, %767
  %771 = fmul fast float %770, %764
  %772 = fmul fast float %762, 2.000000e+00
  %773 = fsub fast float 1.000000e+00, %772
  %774 = fmul fast float %773, %765
  %775 = fadd fast float %774, %772
  %776 = fmul fast float %775, %765
  %777 = fmul fast float %763, 2.000000e+00
  %778 = fsub fast float 1.000000e+00, %777
  %779 = fmul fast float %778, %766
  %780 = fadd fast float %779, %777
  %781 = fmul fast float %780, %766
  %782 = fmul fast float %771, %771
  %783 = fmul fast float %776, %776
  %784 = fmul fast float %781, %781
  br label %801

; <label>:785                                     ; preds = %748
  %786 = fmul fast float %271, %271
  %787 = fmul fast float %275, %275
  %788 = fmul fast float %279, %279
  %789 = fadd fast float %786, -1.000000e+00
  %790 = fadd fast float %787, -1.000000e+00
  %791 = fadd fast float %788, -1.000000e+00
  %792 = fmul fast float %637, %789
  %793 = fmul fast float %637, %790
  %794 = fmul fast float %637, %791
  %795 = fadd fast float %792, 1.000000e+00
  %796 = fadd fast float %793, 1.000000e+00
  %797 = fadd fast float %794, 1.000000e+00
  %798 = fmul fast float %795, %612
  %799 = fmul fast float %796, %613
  %800 = fmul fast float %797, %614
  br label %801

; <label>:801                                     ; preds = %785, %751, %642, %597
  %802 = phi float [ %747, %642 ], [ %623, %751 ], [ %623, %785 ], [ 0x3FA23C0BE0000000, %597 ]
  %803 = phi float [ %739, %642 ], [ %782, %751 ], [ %798, %785 ], [ 1.000000e+00, %597 ]
  %804 = phi float [ %740, %642 ], [ %783, %751 ], [ %799, %785 ], [ 1.000000e+00, %597 ]
  %805 = phi float [ %741, %642 ], [ %784, %751 ], [ %800, %785 ], [ 1.000000e+00, %597 ]
  %806 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %807 = extractvalue %dx.types.CBufRet.i32 %806, 1
  %808 = and i32 %807, 1
  %809 = icmp ne i32 %808, 0
  %810 = add i32 %71, 132
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 32
  %814 = icmp ne i32 %813, 0
  %815 = and i1 %809, %814
  %816 = select i1 %815, float 1.000000e+00, float %803
  %817 = select i1 %815, float 0x3FD3333340000000, float %804
  %818 = select i1 %815, float 0x3FD3333340000000, float %805
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = and i32 %820, 32
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %895, label %823

; <label>:823                                     ; preds = %801
  %824 = add i32 %71, 44
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %824, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = add i32 %71, 140
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = add i32 %829, 0
  %831 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %830, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %832 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %831, %dx.types.Handle %95, float %410, float %411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %833 = extractvalue %dx.types.ResRet.f32 %832, 0
  %834 = extractvalue %dx.types.ResRet.f32 %832, 1
  %835 = extractvalue %dx.types.ResRet.f32 %832, 2
  %836 = extractvalue %dx.types.ResRet.f32 %832, 3
  %837 = and i32 %826, 255
  %838 = uitofp i32 %837 to float
  %839 = lshr i32 %826, 8
  %840 = and i32 %839, 255
  %841 = uitofp i32 %840 to float
  %842 = lshr i32 %826, 16
  %843 = and i32 %842, 255
  %844 = uitofp i32 %843 to float
  %845 = fmul fast float %844, 0x3F70101000000000
  %846 = fmul fast float %833, %838
  %847 = fadd fast float %846, %841
  %848 = fmul fast float %847, 0x3F70101000000000
  %849 = fadd fast float %834, -5.000000e-01
  %850 = fadd fast float %836, -5.000000e-01
  %851 = fmul fast float %849, %845
  %852 = fmul fast float %850, %845
  %853 = fadd fast float %851, 5.000000e-01
  %854 = fadd fast float %852, 5.000000e-01
  %855 = fmul fast float %853, 2.000000e+00
  %856 = fadd fast float %855, -1.000000e+00
  %857 = fmul fast float %854, 2.000000e+00
  %858 = fadd fast float %857, -1.000000e+00
  %859 = fadd fast float %856, %858
  %860 = fmul fast float %859, 5.000000e-01
  %861 = fsub fast float %856, %858
  %862 = fmul fast float %861, 5.000000e-01
  %863 = call float @dx.op.unary.f32(i32 6, float %860)  ; FAbs(value)
  %864 = fsub fast float 1.000000e+00, %863
  %865 = call float @dx.op.unary.f32(i32 6, float %862)  ; FAbs(value)
  %866 = fsub fast float %864, %865
  %867 = call float @dx.op.dot3.f32(i32 55, float %860, float %862, float %866, float %860, float %862, float %866)  ; Dot3(ax,ay,az,bx,by,bz)
  %868 = call float @dx.op.unary.f32(i32 25, float %867)  ; Rsqrt(value)
  %869 = fmul fast float %860, %868
  %870 = fmul fast float %862, %868
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = and i32 %872, 67108864
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %891, label %875

; <label>:875                                     ; preds = %823
  %876 = add i32 %71, 88
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = and i32 %878, 65535
  %880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %879)  ; LegacyF16ToF32(value)
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = and i32 %882, 65535
  %884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %883)  ; LegacyF16ToF32(value)
  %885 = lshr i32 %878, 16
  %886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %885)  ; LegacyF16ToF32(value)
  %887 = fsub fast float %848, %886
  %888 = fmul fast float %887, %880
  %889 = fadd fast float %888, %884
  %890 = call float @dx.op.unary.f32(i32 7, float %889)  ; Saturate(value)
  br label %891

; <label>:891                                     ; preds = %875, %823
  %892 = phi float [ %890, %875 ], [ %848, %823 ]
  %893 = call float @dx.op.dot2.f32(i32 54, float %869, float %870, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %894 = call float @dx.op.dot2.f32(i32 54, float %869, float %870, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %895

; <label>:895                                     ; preds = %891, %801
  %896 = phi float [ %892, %891 ], [ 0x3FD6666660000000, %801 ]
  %897 = phi float [ %893, %891 ], [ 0.000000e+00, %801 ]
  %898 = phi float [ %894, %891 ], [ 0.000000e+00, %801 ]
  %899 = phi float [ %835, %891 ], [ 1.000000e+00, %801 ]
  %900 = add i32 %71, 64
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = lshr i32 %902, 22
  %904 = shl nuw nsw i32 %903, 5
  %905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %904)  ; LegacyF16ToF32(value)
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = and i32 %907, 64
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %943, label %910

; <label>:910                                     ; preds = %895
  %911 = add i32 %71, 144
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = add i32 %913, 0
  %915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %914, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = and i32 %917, 131072
  %919 = icmp eq i32 %918, 0
  %920 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %915, %dx.types.Handle %95, float %410, float %411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 0
  %922 = extractvalue %dx.types.ResRet.f32 %920, 1
  %923 = extractvalue %dx.types.ResRet.f32 %920, 2
  %924 = fmul fast float %921, %259
  %925 = fmul fast float %922, %262
  %926 = fmul fast float %923, %265
  br i1 %919, label %933, label %927

; <label>:927                                     ; preds = %910
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 0
  %930 = fmul fast float %929, %924
  %931 = fmul fast float %929, %925
  %932 = fmul fast float %929, %926
  br label %933

; <label>:933                                     ; preds = %927, %910
  %934 = phi float [ %930, %927 ], [ %924, %910 ]
  %935 = phi float [ %931, %927 ], [ %925, %910 ]
  %936 = phi float [ %932, %927 ], [ %926, %910 ]
  %937 = fmul fast float %934, %905
  %938 = select i1 %239, float %937, float %934
  %939 = call float @dx.op.dot3.f32(i32 55, float %938, float %935, float %936, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %940 = select i1 %239, float 0.000000e+00, float %934
  %941 = select i1 %239, float %939, float %935
  %942 = select i1 %239, float 0.000000e+00, float %936
  br label %943

; <label>:943                                     ; preds = %933, %895
  %944 = phi float [ %940, %933 ], [ 0.000000e+00, %895 ]
  %945 = phi float [ %941, %933 ], [ 0.000000e+00, %895 ]
  %946 = phi float [ %942, %933 ], [ 0.000000e+00, %895 ]
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = and i32 %948, 1024
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %981, label %951

; <label>:951                                     ; preds = %943
  %952 = add i32 %71, 56
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = and i32 %954, 255
  %956 = uitofp i32 %955 to float
  %957 = fmul fast float %956, 0x3F70101020000000
  %958 = lshr i32 %954, 8
  %959 = and i32 %958, 255
  %960 = uitofp i32 %959 to float
  %961 = fmul fast float %960, 0x3F70101020000000
  %962 = lshr i32 %954, 16
  %963 = and i32 %962, 255
  %964 = uitofp i32 %963 to float
  %965 = fmul fast float %964, 0x3F70101020000000
  %966 = fmul fast float %957, %957
  %967 = fmul fast float %961, %961
  %968 = fmul fast float %965, %965
  %969 = add i32 %71, 160
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = add i32 %971, 0
  %973 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %972, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %974 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %973, %dx.types.Handle %96, float %410, float %411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %975 = extractvalue %dx.types.ResRet.f32 %974, 0
  %976 = extractvalue %dx.types.ResRet.f32 %974, 1
  %977 = extractvalue %dx.types.ResRet.f32 %974, 2
  %978 = fmul fast float %966, %975
  %979 = fmul fast float %967, %976
  %980 = fmul fast float %968, %977
  br label %981

; <label>:981                                     ; preds = %951, %943
  %982 = phi float [ %978, %951 ], [ 0.000000e+00, %943 ]
  %983 = phi float [ %979, %951 ], [ 0.000000e+00, %943 ]
  %984 = phi float [ %980, %951 ], [ 0.000000e+00, %943 ]
  %985 = fcmp fast ogt float %982, 0.000000e+00
  %986 = fcmp fast ogt float %983, 0.000000e+00
  %987 = fcmp fast ogt float %984, 0.000000e+00
  %988 = call float @dx.op.unary.f32(i32 23, float %982)  ; Log(value)
  %989 = call float @dx.op.unary.f32(i32 23, float %983)  ; Log(value)
  %990 = call float @dx.op.unary.f32(i32 23, float %984)  ; Log(value)
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = lshr i32 %992, 7
  %994 = and i32 %993, 32752
  %995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %994)  ; LegacyF16ToF32(value)
  %996 = fmul fast float %988, 0xBFE62E4300000000
  %997 = fmul fast float %996, %995
  %998 = fmul fast float %989, 0xBFE62E4300000000
  %999 = fmul fast float %998, %995
  %1000 = fmul fast float %990, 0xBFE62E4300000000
  %1001 = fmul fast float %1000, %995
  %1002 = select i1 %985, float %997, float 1.270000e+02
  %1003 = select i1 %986, float %999, float 1.270000e+02
  %1004 = select i1 %987, float %1001, float 1.270000e+02
  %1005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.i32 %1005, 0
  %1007 = and i32 %1006, 10240
  %1008 = icmp eq i32 %1007, 0
  br i1 %1008, label %1053, label %1009

; <label>:1009                                    ; preds = %981
  %1010 = add i32 %71, 164
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = add i32 %1012, 0
  %1014 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1013, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1015 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1014, %dx.types.Handle %96, float %410, float %411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 1
  %1017 = extractvalue %dx.types.ResRet.f32 %1015, 3
  %1018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.i32 %1018, 0
  %1020 = and i32 %1019, 1048576
  %1021 = icmp ne i32 %1020, 0
  %1022 = and i32 %1019, 8192
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1039, label %1024

; <label>:1024                                    ; preds = %1009
  %1025 = extractvalue %dx.types.ResRet.f32 %1015, 2
  %1026 = select i1 %1021, float %1025, float %1016
  %1027 = extractvalue %dx.types.ResRet.f32 %1015, 0
  %1028 = select i1 %1021, float %1027, float %1016
  %1029 = add i32 %71, 48
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = lshr i32 %1031, 16
  %1033 = and i32 %1032, 255
  %1034 = uitofp i32 %1033 to float
  %1035 = fmul fast float %1034, 0x3F80101020000000
  %1036 = fmul fast float %1035, %1028
  %1037 = fmul fast float %1035, %1016
  %1038 = fmul fast float %1035, %1026
  br label %1039

; <label>:1039                                    ; preds = %1024, %1009
  %1040 = phi float [ %1036, %1024 ], [ 0.000000e+00, %1009 ]
  %1041 = phi float [ %1037, %1024 ], [ 0.000000e+00, %1009 ]
  %1042 = phi float [ %1038, %1024 ], [ 0.000000e+00, %1009 ]
  %1043 = and i32 %1019, 2048
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1053, label %1045

; <label>:1045                                    ; preds = %1039
  %1046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.i32 %1046, 0
  %1048 = shl i32 %1047, 4
  %1049 = and i32 %1048, 32752
  %1050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1049)  ; LegacyF16ToF32(value)
  %1051 = fmul fast float %1050, %1017
  %1052 = call float @dx.op.binary.f32(i32 35, float %1051, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1053

; <label>:1053                                    ; preds = %1045, %1039, %981
  %1054 = phi float [ %1040, %1045 ], [ %1040, %1039 ], [ 0.000000e+00, %981 ]
  %1055 = phi float [ %1041, %1045 ], [ %1041, %1039 ], [ 0.000000e+00, %981 ]
  %1056 = phi float [ %1042, %1045 ], [ %1042, %1039 ], [ 0.000000e+00, %981 ]
  %1057 = phi float [ %1052, %1045 ], [ 0x3F70101020000000, %1039 ], [ 0x3F70101020000000, %981 ]
  %1058 = add i32 %71, 48
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = and i32 %1060, 255
  %1062 = uitofp i32 %1061 to float
  %1063 = lshr i32 %1060, 8
  %1064 = and i32 %1063, 255
  %1065 = uitofp i32 %1064 to float
  %1066 = call float @dx.op.dot3.f32(i32 55, float %816, float %817, float %818, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1067 = fmul fast float %1065, %1066
  %1068 = fadd fast float %1067, %1062
  %1069 = fmul fast float %1068, 0x3F70101020000000
  %1070 = call float @dx.op.unary.f32(i32 7, float %1069)  ; Saturate(value)
  br label %1071

; <label>:1071                                    ; preds = %1053, %309
  %1072 = phi float [ 0.000000e+00, %309 ], [ %897, %1053 ]
  %1073 = phi float [ 0.000000e+00, %309 ], [ %898, %1053 ]
  %1074 = phi float [ 0.000000e+00, %309 ], [ %1002, %1053 ]
  %1075 = phi float [ 0.000000e+00, %309 ], [ %1003, %1053 ]
  %1076 = phi float [ 0.000000e+00, %309 ], [ %1004, %1053 ]
  %1077 = phi float [ 0.000000e+00, %309 ], [ %816, %1053 ]
  %1078 = phi float [ 0.000000e+00, %309 ], [ %817, %1053 ]
  %1079 = phi float [ 0.000000e+00, %309 ], [ %818, %1053 ]
  %1080 = phi float [ 0.000000e+00, %309 ], [ %944, %1053 ]
  %1081 = phi float [ 0.000000e+00, %309 ], [ %945, %1053 ]
  %1082 = phi float [ 0.000000e+00, %309 ], [ %946, %1053 ]
  %1083 = phi float [ 0.000000e+00, %309 ], [ %1054, %1053 ]
  %1084 = phi float [ 0.000000e+00, %309 ], [ %1055, %1053 ]
  %1085 = phi float [ 0.000000e+00, %309 ], [ %1056, %1053 ]
  %1086 = phi float [ 0.000000e+00, %309 ], [ %802, %1053 ]
  %1087 = phi float [ 0.000000e+00, %309 ], [ %598, %1053 ]
  %1088 = phi float [ 0.000000e+00, %309 ], [ %896, %1053 ]
  %1089 = phi float [ 0.000000e+00, %309 ], [ %899, %1053 ]
  %1090 = phi float [ 0.000000e+00, %309 ], [ %1057, %1053 ]
  %1091 = phi float [ 0.000000e+00, %309 ], [ %1070, %1053 ]
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 0
  %1094 = call float @dx.op.dot2.f32(i32 54, float %1072, float %1073, float %1072, float %1073)  ; Dot2(ax,ay,bx,by)
  %1095 = fmul fast float %1094, 0x3FE3333340000000
  %1096 = fsub fast float 1.000000e+00, %1095
  %1097 = call float @dx.op.dot3.f32(i32 55, float %1072, float %1073, float %1096, float %1072, float %1073, float %1096)  ; Dot3(ax,ay,az,bx,by,bz)
  %1098 = call float @dx.op.unary.f32(i32 25, float %1097)  ; Rsqrt(value)
  %1099 = fmul fast float %1098, %1072
  %1100 = fmul fast float %1098, %1073
  %1101 = fmul fast float %1096, %1098
  %1102 = fmul fast float %1101, %76
  %1103 = fmul fast float %1101, %77
  %1104 = fmul fast float %1101, %78
  %1105 = fmul fast float %1099, %72
  %1106 = fmul fast float %1099, %73
  %1107 = fmul fast float %1099, %74
  %1108 = fadd fast float %1102, %1105
  %1109 = fadd fast float %1103, %1106
  %1110 = fadd fast float %1104, %1107
  %1111 = fmul fast float %1100, %110
  %1112 = fmul fast float %1100, %111
  %1113 = fmul fast float %1100, %112
  %1114 = fadd fast float %1108, %1111
  %1115 = fadd fast float %1109, %1112
  %1116 = fadd fast float %1110, %1113
  %1117 = call float @dx.op.dot3.f32(i32 55, float %1114, float %1115, float %1116, float %1114, float %1115, float %1116)  ; Dot3(ax,ay,az,bx,by,bz)
  %1118 = call float @dx.op.unary.f32(i32 25, float %1117)  ; Rsqrt(value)
  %1119 = fmul fast float %1114, %1118
  %1120 = fmul fast float %1115, %1118
  %1121 = fmul fast float %1116, %1118
  %1122 = fadd fast float %1086, 0xBFB99999A0000000
  %1123 = call float @dx.op.unary.f32(i32 7, float %1122)  ; Saturate(value)
  %1124 = fmul fast float %1123, 0x3FF1C71C80000000
  %1125 = call float @dx.op.binary.f32(i32 36, float %1086, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1126 = fsub fast float 1.000000e+00, %1124
  %1127 = call float @dx.op.unary.f32(i32 7, float %1126)  ; Saturate(value)
  %1128 = fmul fast float %1127, %1077
  %1129 = fmul fast float %1127, %1078
  %1130 = fmul fast float %1127, %1079
  %1131 = call float @dx.op.unary.f32(i32 7, float %1128)  ; Saturate(value)
  %1132 = call float @dx.op.unary.f32(i32 7, float %1129)  ; Saturate(value)
  %1133 = call float @dx.op.unary.f32(i32 7, float %1130)  ; Saturate(value)
  %1134 = fmul fast float %1124, %1077
  %1135 = fmul fast float %1124, %1078
  %1136 = fmul fast float %1124, %1079
  %1137 = fadd fast float %1134, %1125
  %1138 = fadd fast float %1135, %1125
  %1139 = fadd fast float %1136, %1125
  %1140 = call float @dx.op.unary.f32(i32 7, float %1137)  ; Saturate(value)
  %1141 = call float @dx.op.unary.f32(i32 7, float %1138)  ; Saturate(value)
  %1142 = call float @dx.op.unary.f32(i32 7, float %1139)  ; Saturate(value)
  %1143 = call float @dx.op.unary.f32(i32 7, float %1088)  ; Saturate(value)
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = and i32 %1145, 1
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1162, label %1148

; <label>:1148                                    ; preds = %1071
  %1149 = call float @dx.op.binary.f32(i32 35, float %1132, float %1133)  ; FMax(a,b)
  %1150 = call float @dx.op.binary.f32(i32 35, float %1131, float %1149)  ; FMax(a,b)
  %1151 = fcmp fast ogt float %1150, 0.000000e+00
  %1152 = bitcast float %1150 to i32
  %1153 = sub nsw i32 2129859010, %1152
  %1154 = bitcast i32 %1153 to float
  %1155 = select i1 %1151, float %1154, float 0.000000e+00
  %1156 = fmul fast float %1131, %1083
  %1157 = fmul fast float %1132, %1084
  %1158 = fmul fast float %1133, %1085
  %1159 = fmul fast float %1156, %1155
  %1160 = fmul fast float %1157, %1155
  %1161 = fmul fast float %1158, %1155
  br label %1162

; <label>:1162                                    ; preds = %1148, %1071
  %1163 = phi float [ %1159, %1148 ], [ %1083, %1071 ]
  %1164 = phi float [ %1160, %1148 ], [ %1084, %1071 ]
  %1165 = phi float [ %1161, %1148 ], [ %1085, %1071 ]
  %1166 = call float @dx.op.binary.f32(i32 36, float %1074, float 1.270000e+02)  ; FMin(a,b)
  %1167 = call float @dx.op.binary.f32(i32 36, float %1075, float 1.270000e+02)  ; FMin(a,b)
  %1168 = call float @dx.op.binary.f32(i32 36, float %1076, float 1.270000e+02)  ; FMin(a,b)
  %1169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1170 = extractvalue %dx.types.CBufRet.i32 %1169, 3
  %1171 = and i32 %1170, 8
  %1172 = icmp ne i32 %1171, 0
  %1173 = call float @dx.op.binary.f32(i32 35, float %1131, float %1077)  ; FMax(a,b)
  %1174 = call float @dx.op.binary.f32(i32 35, float %1132, float %1077)  ; FMax(a,b)
  %1175 = call float @dx.op.binary.f32(i32 35, float %1133, float %1077)  ; FMax(a,b)
  %1176 = call float @dx.op.dot3.f32(i32 55, float %1131, float %1132, float %1133, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1177 = select i1 %239, float %1077, float %1131
  %1178 = select i1 %239, float %1176, float %1132
  %1179 = select i1 %239, float 1.000000e+00, float %1133
  %1180 = select i1 %1172, float %1173, float %1177
  %1181 = select i1 %1172, float %1174, float %1178
  %1182 = select i1 %1172, float %1175, float %1179
  %1183 = call float @dx.op.dot3.f32(i32 55, float %1163, float %1164, float %1165, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1184 = select i1 %239, float %1183, float %1163
  %1185 = select i1 %239, float %1183, float %1164
  %1186 = select i1 %239, float %1183, float %1165
  %1187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.f32 %1187, 0
  %1189 = extractvalue %dx.types.CBufRet.f32 %1187, 1
  %1190 = extractvalue %dx.types.CBufRet.f32 %1187, 2
  %1191 = fadd fast float %1188, %146
  %1192 = fadd fast float %1189, %147
  %1193 = fadd fast float %1190, %148
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.CBufRet.f32 %1194, 1
  %1197 = fsub fast float %1191, %1195
  %1198 = fsub fast float %1192, %1196
  %1199 = fmul fast float %1197, %1197
  %1200 = fmul fast float %1198, %1198
  %1201 = fadd fast float %1199, %1200
  %1202 = call float @dx.op.unary.f32(i32 24, float %1201)  ; Sqrt(value)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1194, 2
  %1204 = fcmp fast olt float %1202, %1203
  br i1 %1204, label %1205, label %1272

; <label>:1205                                    ; preds = %1162
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 0
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 0
  %1210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1211 = extractvalue %dx.types.CBufRet.f32 %1210, 0
  %1212 = extractvalue %dx.types.CBufRet.f32 %1206, 1
  %1213 = extractvalue %dx.types.CBufRet.f32 %1208, 1
  %1214 = extractvalue %dx.types.CBufRet.f32 %1210, 1
  %1215 = extractvalue %dx.types.CBufRet.f32 %1206, 3
  %1216 = extractvalue %dx.types.CBufRet.f32 %1208, 3
  %1217 = extractvalue %dx.types.CBufRet.f32 %1210, 3
  %1218 = fadd fast float %1215, %1191
  %1219 = fadd fast float %1216, %1192
  %1220 = fadd fast float %1217, %1193
  %1221 = fmul fast float %1218, %1207
  %1222 = call float @dx.op.tertiary.f32(i32 46, float %1219, float %1209, float %1221)  ; FMad(a,b,c)
  %1223 = call float @dx.op.tertiary.f32(i32 46, float %1220, float %1211, float %1222)  ; FMad(a,b,c)
  %1224 = fmul fast float %1218, %1212
  %1225 = call float @dx.op.tertiary.f32(i32 46, float %1219, float %1213, float %1224)  ; FMad(a,b,c)
  %1226 = call float @dx.op.tertiary.f32(i32 46, float %1220, float %1214, float %1225)  ; FMad(a,b,c)
  %1227 = fsub fast float %1223, %1215
  %1228 = fsub fast float %1226, %1216
  %1229 = fsub fast float %1227, %1195
  %1230 = fadd fast float %1229, %1203
  %1231 = fsub fast float %1228, %1196
  %1232 = fadd fast float %1231, %1203
  %1233 = extractvalue %dx.types.CBufRet.f32 %1194, 3
  %1234 = fmul fast float %1230, %1233
  %1235 = fmul fast float %1232, %1233
  %1236 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  %1237 = call float @dx.op.unary.f32(i32 7, float %1235)  ; Saturate(value)
  %1238 = fsub fast float 1.000000e+00, %1236
  %1239 = fsub fast float 1.000000e+00, %1237
  %1240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %64, float %1238, float %1239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1241 = extractvalue %dx.types.ResRet.f32 %1240, 0
  %1242 = fcmp fast ugt float %1241, 0.000000e+00
  br i1 %1242, label %1243, label %1546

; <label>:1243                                    ; preds = %1205
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 2
  %1246 = fmul fast float %1245, %1241
  %1247 = extractvalue %dx.types.CBufRet.f32 %1244, 3
  %1248 = fadd fast float %1247, %1246
  %1249 = extractvalue %dx.types.CBufRet.f32 %1210, 2
  %1250 = fadd fast float %1248, %1217
  %1251 = fmul fast float %1223, %1211
  %1252 = call float @dx.op.tertiary.f32(i32 46, float %1226, float %1214, float %1251)  ; FMad(a,b,c)
  %1253 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %1249, float %1252)  ; FMad(a,b,c)
  %1254 = fsub fast float %1253, %1217
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 2
  %1257 = fsub fast float %1254, %1256
  %1258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %64, float %1238, float %1239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1259 = extractvalue %dx.types.ResRet.f32 %1258, 0
  %1260 = extractvalue %dx.types.ResRet.f32 %1258, 1
  %1261 = extractvalue %dx.types.ResRet.f32 %1258, 2
  %1262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %64, float %1238, float %1239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.ResRet.f32 %1262, 1
  %1265 = extractvalue %dx.types.ResRet.f32 %1262, 2
  %1266 = fadd fast float %1263, %1259
  %1267 = fmul fast float %1266, 0x3F847AE140000000
  %1268 = fadd fast float %1264, %1260
  %1269 = fmul fast float %1268, 0x3F847AE140000000
  %1270 = fadd fast float %1265, %1261
  %1271 = fmul fast float %1270, 0x3F847AE140000000
  br label %1546

; <label>:1272                                    ; preds = %1162
  %1273 = and i32 %213, 1
  %1274 = icmp eq i32 %1273, 0
  br i1 %1274, label %1546, label %1275

; <label>:1275                                    ; preds = %1272
  %1276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1277 = extractvalue %dx.types.CBufRet.f32 %1276, 0
  %1278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1279 = extractvalue %dx.types.CBufRet.f32 %1278, 0
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 0
  %1282 = extractvalue %dx.types.CBufRet.f32 %1276, 1
  %1283 = extractvalue %dx.types.CBufRet.f32 %1278, 1
  %1284 = extractvalue %dx.types.CBufRet.f32 %1280, 1
  %1285 = extractvalue %dx.types.CBufRet.f32 %1276, 3
  %1286 = extractvalue %dx.types.CBufRet.f32 %1278, 3
  %1287 = extractvalue %dx.types.CBufRet.f32 %1280, 3
  %1288 = fadd fast float %1285, %1191
  %1289 = fadd fast float %1286, %1192
  %1290 = fadd fast float %1287, %1193
  %1291 = fmul fast float %1288, %1277
  %1292 = call float @dx.op.tertiary.f32(i32 46, float %1289, float %1279, float %1291)  ; FMad(a,b,c)
  %1293 = call float @dx.op.tertiary.f32(i32 46, float %1290, float %1281, float %1292)  ; FMad(a,b,c)
  %1294 = fmul fast float %1288, %1282
  %1295 = call float @dx.op.tertiary.f32(i32 46, float %1289, float %1283, float %1294)  ; FMad(a,b,c)
  %1296 = call float @dx.op.tertiary.f32(i32 46, float %1290, float %1284, float %1295)  ; FMad(a,b,c)
  %1297 = fsub fast float %1293, %1285
  %1298 = fsub fast float %1296, %1286
  %1299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.CBufRet.f32 %1299, 1
  %1302 = extractvalue %dx.types.CBufRet.f32 %1299, 2
  %1303 = extractvalue %dx.types.CBufRet.f32 %1299, 3
  %1304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.f32 %1304, 3
  %1306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.i32 %1306, 0
  %1308 = extractvalue %dx.types.CBufRet.i32 %1306, 1
  %1309 = udiv i32 %1308, %1307
  %1310 = fsub fast float %1297, %1300
  %1311 = fsub fast float %1298, %1301
  %1312 = call float @dx.op.binary.f32(i32 35, float %1310, float 0.000000e+00)  ; FMax(a,b)
  %1313 = call float @dx.op.binary.f32(i32 35, float %1311, float 0.000000e+00)  ; FMax(a,b)
  %1314 = call float @dx.op.binary.f32(i32 36, float %1312, float %1302)  ; FMin(a,b)
  %1315 = call float @dx.op.binary.f32(i32 36, float %1313, float %1303)  ; FMin(a,b)
  %1316 = add i32 %1307, -1
  %1317 = add i32 %1309, -1
  %1318 = fmul fast float %1314, %1305
  %1319 = fmul fast float %1315, %1305
  %1320 = fptoui float %1318 to i32
  %1321 = fptoui float %1319 to i32
  %1322 = call i32 @dx.op.binary.i32(i32 40, i32 %1320, i32 %1316)  ; UMin(a,b)
  %1323 = call i32 @dx.op.binary.i32(i32 40, i32 %1321, i32 %1317)  ; UMin(a,b)
  %1324 = mul i32 %1323, %1307
  %1325 = add i32 %1324, %1322
  %1326 = shl i32 %1325, 2
  %1327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.i32 %1327, 0
  %1329 = icmp eq i32 %1328, -1
  br i1 %1329, label %1546, label %1330

; <label>:1330                                    ; preds = %1275
  %1331 = mul i32 %1328, 148
  %1332 = add i32 %1331, 4
  %1333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.f32 %1333, 0
  %1335 = add i32 %1331, 8
  %1336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1335, i32 undef)  ; BufferLoad(srv,index,wot)
  %1337 = extractvalue %dx.types.ResRet.f32 %1336, 0
  %1338 = add i32 %1331, 36
  %1339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1338, i32 undef)  ; BufferLoad(srv,index,wot)
  %1340 = extractvalue %dx.types.ResRet.f32 %1339, 0
  %1341 = add i32 %1331, 60
  %1342 = add i32 %1331, 92
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1342, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = add i32 %1331, 116
  %1346 = fsub fast float %1297, %1334
  %1347 = fsub fast float %1298, %1337
  %1348 = fmul fast float %1305, %1346
  %1349 = fmul fast float %1305, %1347
  %1350 = call float @dx.op.unary.f32(i32 7, float %1348)  ; Saturate(value)
  %1351 = call float @dx.op.unary.f32(i32 7, float %1349)  ; Saturate(value)
  %1352 = fsub fast float 1.000000e+00, %1351
  %1353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1354 = extractvalue %dx.types.CBufRet.f32 %1353, 2
  %1355 = call float @dx.op.unary.f32(i32 83, float %1350)  ; DerivCoarseX(value)
  %1356 = call float @dx.op.unary.f32(i32 83, float %1352)  ; DerivCoarseX(value)
  %1357 = call float @dx.op.unary.f32(i32 84, float %1350)  ; DerivCoarseY(value)
  %1358 = call float @dx.op.unary.f32(i32 84, float %1352)  ; DerivCoarseY(value)
  %1359 = fmul fast float %1355, %1354
  %1360 = fmul fast float %1356, %1354
  %1361 = fmul fast float %1357, %1354
  %1362 = fmul fast float %1358, %1354
  %1363 = call float @dx.op.dot2.f32(i32 54, float %1361, float %1362, float %1361, float %1362)  ; Dot2(ax,ay,bx,by)
  %1364 = call float @dx.op.dot2.f32(i32 54, float %1359, float %1360, float %1359, float %1360)  ; Dot2(ax,ay,bx,by)
  %1365 = call float @dx.op.binary.f32(i32 35, float %1364, float %1363)  ; FMax(a,b)
  %1366 = call float @dx.op.unary.f32(i32 23, float %1365)  ; Log(value)
  %1367 = fmul fast float %1366, 5.000000e-01
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 1
  %1370 = fadd fast float %1369, %1367
  %1371 = call float @dx.op.binary.f32(i32 35, float %1370, float 0.000000e+00)  ; FMax(a,b)
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 3
  %1374 = fadd fast float %1373, %1371
  %1375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.f32 %1375, 3
  %1377 = fadd fast float %1374, %1376
  %1378 = add i32 %1344, 0
  %1379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1378, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1380 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1379, i32 0)  ; GetDimensions(handle,mipLevel)
  %1381 = extractvalue %dx.types.Dimensions %1380, 0
  %1382 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1381)  ; FirstbitLo(value)
  %1383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.i32 %1383, 1
  %1385 = sub nsw i32 %1384, %1382
  %1386 = sitofp i32 %1385 to float
  %1387 = fsub fast float %1377, %1386
  %1388 = call float @dx.op.binary.f32(i32 35, float %1387, float 0.000000e+00)  ; FMax(a,b)
  %1389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1379, %dx.types.Handle %62, float %1350, float %1352, float %1340, float undef, i32 0, i32 0, i32 undef, float %1388)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1390 = extractvalue %dx.types.ResRet.f32 %1389, 0
  %1391 = fcmp ule float %1390, 0x3FE0101020000000
  %1392 = extractvalue %dx.types.CBufRet.i32 %1383, 0
  %1393 = and i32 %1392, 128
  %1394 = icmp ne i32 %1393, 0
  %1395 = and i1 %1391, %1394
  br i1 %1395, label %1546, label %1396

; <label>:1396                                    ; preds = %1330
  %1397 = add i32 %1331, 20
  %1398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1397, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = add i32 %1331, 24
  %1401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1400, i32 undef)  ; BufferLoad(srv,index,wot)
  %1402 = extractvalue %dx.types.ResRet.f32 %1401, 0
  %1403 = add i32 %1331, 40
  %1404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1403, i32 undef)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.f32 %1404, 0
  %1406 = add i32 %1331, 96
  %1407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1406, i32 undef)  ; BufferLoad(srv,index,wot)
  %1408 = extractvalue %dx.types.ResRet.i32 %1407, 0
  %1409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.f32 %1409, 2
  %1411 = fmul fast float %1410, %1350
  %1412 = fmul fast float %1410, %1352
  %1413 = extractvalue %dx.types.CBufRet.f32 %1409, 3
  %1414 = fadd fast float %1411, %1413
  %1415 = fadd fast float %1412, %1413
  %1416 = add i32 %1408, 0
  %1417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1416, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1418 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1417, i32 0)  ; GetDimensions(handle,mipLevel)
  %1419 = extractvalue %dx.types.Dimensions %1418, 0
  %1420 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1419)  ; FirstbitLo(value)
  %1421 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.i32 %1421, 1
  %1423 = sub nsw i32 %1422, %1420
  %1424 = sitofp i32 %1423 to float
  %1425 = fsub fast float %1374, %1424
  %1426 = call float @dx.op.binary.f32(i32 35, float %1425, float 0.000000e+00)  ; FMax(a,b)
  %1427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1417, %dx.types.Handle %62, float %1414, float %1415, float %1405, float undef, i32 0, i32 0, i32 undef, float %1426)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1428 = extractvalue %dx.types.ResRet.f32 %1427, 0
  %1429 = fmul fast float %1428, %1399
  %1430 = fadd fast float %1429, %1402
  %1431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1432 = extractvalue %dx.types.CBufRet.f32 %1431, 0
  %1433 = extractvalue %dx.types.CBufRet.f32 %1431, 1
  %1434 = extractvalue %dx.types.CBufRet.f32 %1431, 2
  %1435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1436 = extractvalue %dx.types.CBufRet.f32 %1435, 3
  %1437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1438 = extractvalue %dx.types.CBufRet.f32 %1437, 3
  %1439 = extractvalue %dx.types.CBufRet.f32 %1431, 3
  %1440 = fadd fast float %1436, %1297
  %1441 = fadd fast float %1438, %1298
  %1442 = fadd fast float %1430, %1439
  %1443 = fmul fast float %1440, %1432
  %1444 = call float @dx.op.tertiary.f32(i32 46, float %1441, float %1433, float %1443)  ; FMad(a,b,c)
  %1445 = call float @dx.op.tertiary.f32(i32 46, float %1442, float %1434, float %1444)  ; FMad(a,b,c)
  %1446 = fsub fast float %1445, %1439
  %1447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.f32 %1447, 2
  %1449 = fsub fast float %1446, %1448
  %1450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1451 = extractvalue %dx.types.CBufRet.i32 %1450, 0
  %1452 = call i32 @dx.op.binary.i32(i32 40, i32 %1328, i32 %1451)  ; UMin(a,b)
  %1453 = mul i32 %1452, 36
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = add i32 %1453, 4
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 0
  %1459 = fmul fast float %1458, %1350
  %1460 = fmul fast float %1458, %1352
  %1461 = extractvalue %dx.types.CBufRet.f32 %1457, 1
  %1462 = fadd fast float %1459, %1461
  %1463 = fadd fast float %1460, %1461
  %1464 = icmp eq i32 %1455, 0
  br i1 %1464, label %1533, label %1465

; <label>:1465                                    ; preds = %1396
  br label %1466

; <label>:1466                                    ; preds = %1523, %1465
  %1467 = phi float [ %1524, %1523 ], [ 0.000000e+00, %1465 ]
  %1468 = phi float [ %1525, %1523 ], [ 0.000000e+00, %1465 ]
  %1469 = phi float [ %1526, %1523 ], [ 0.000000e+00, %1465 ]
  %1470 = phi float [ %1527, %1523 ], [ 0.000000e+00, %1465 ]
  %1471 = phi float [ %1528, %1523 ], [ 0.000000e+00, %1465 ]
  %1472 = phi float [ %1529, %1523 ], [ 0.000000e+00, %1465 ]
  %1473 = phi i32 [ %1530, %1523 ], [ 0, %1465 ]
  %1474 = shl i32 %1473, 2
  %1475 = add i32 %1341, %1474
  %1476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.f32 %1476, 0
  %1478 = add i32 %1345, %1474
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1478, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = add i32 %1480, 0
  %1482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1481, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1483 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1482, i32 0)  ; GetDimensions(handle,mipLevel)
  %1484 = extractvalue %dx.types.Dimensions %1483, 0
  %1485 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1484)  ; FirstbitLo(value)
  %1486 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1487 = extractvalue %dx.types.CBufRet.i32 %1486, 1
  %1488 = sub nsw i32 %1487, %1485
  %1489 = sitofp i32 %1488 to float
  %1490 = fsub fast float %1374, %1489
  %1491 = call float @dx.op.binary.f32(i32 35, float %1490, float 0.000000e+00)  ; FMax(a,b)
  %1492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1482, %dx.types.Handle %62, float %1462, float %1463, float %1477, float undef, i32 0, i32 0, i32 undef, float %1491)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1493 = extractvalue %dx.types.ResRet.f32 %1492, 0
  %1494 = fcmp fast ogt float %1493, 0.000000e+00
  br i1 %1494, label %1495, label %1523

; <label>:1495                                    ; preds = %1466
  %1496 = add i32 %1456, %1474
  %1497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1496, i32 undef)  ; BufferLoad(srv,index,wot)
  %1498 = extractvalue %dx.types.ResRet.i32 %1497, 0
  %1499 = and i32 %1498, 32767
  %1500 = mul nuw nsw i32 %1499, 928
  %1501 = add nuw nsw i32 %1500, 48
  %1502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.f32 %1502, 0
  %1504 = extractvalue %dx.types.ResRet.f32 %1502, 1
  %1505 = extractvalue %dx.types.ResRet.f32 %1502, 2
  %1506 = add nuw nsw i32 %1500, 60
  %1507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.f32 %1507, 0
  %1509 = extractvalue %dx.types.ResRet.f32 %1507, 1
  %1510 = extractvalue %dx.types.ResRet.f32 %1507, 2
  %1511 = fmul fast float %1503, %1493
  %1512 = fmul fast float %1504, %1493
  %1513 = fmul fast float %1505, %1493
  %1514 = fadd fast float %1511, %1467
  %1515 = fadd fast float %1512, %1468
  %1516 = fadd fast float %1513, %1469
  %1517 = fmul fast float %1508, %1493
  %1518 = fmul fast float %1509, %1493
  %1519 = fmul fast float %1510, %1493
  %1520 = fadd fast float %1517, %1470
  %1521 = fadd fast float %1518, %1471
  %1522 = fadd fast float %1519, %1472
  br label %1523

; <label>:1523                                    ; preds = %1495, %1466
  %1524 = phi float [ %1514, %1495 ], [ %1467, %1466 ]
  %1525 = phi float [ %1515, %1495 ], [ %1468, %1466 ]
  %1526 = phi float [ %1516, %1495 ], [ %1469, %1466 ]
  %1527 = phi float [ %1520, %1495 ], [ %1470, %1466 ]
  %1528 = phi float [ %1521, %1495 ], [ %1471, %1466 ]
  %1529 = phi float [ %1522, %1495 ], [ %1472, %1466 ]
  %1530 = add nuw i32 %1473, 1
  %1531 = icmp eq i32 %1530, %1455
  br i1 %1531, label %1532, label %1466

; <label>:1532                                    ; preds = %1523
  br label %1533

; <label>:1533                                    ; preds = %1532, %1396
  %1534 = phi float [ 0.000000e+00, %1396 ], [ %1524, %1532 ]
  %1535 = phi float [ 0.000000e+00, %1396 ], [ %1525, %1532 ]
  %1536 = phi float [ 0.000000e+00, %1396 ], [ %1526, %1532 ]
  %1537 = phi float [ 0.000000e+00, %1396 ], [ %1527, %1532 ]
  %1538 = phi float [ 0.000000e+00, %1396 ], [ %1528, %1532 ]
  %1539 = phi float [ 0.000000e+00, %1396 ], [ %1529, %1532 ]
  %1540 = fadd fast float %1537, %1534
  %1541 = fmul fast float %1540, 0x3F847AE140000000
  %1542 = fadd fast float %1538, %1535
  %1543 = fmul fast float %1542, 0x3F847AE140000000
  %1544 = fadd fast float %1539, %1536
  %1545 = fmul fast float %1544, 0x3F847AE140000000
  br label %1546

; <label>:1546                                    ; preds = %1533, %1330, %1275, %1272, %1243, %1205
  %1547 = phi float [ %1257, %1243 ], [ -1.310720e+05, %1205 ], [ %1449, %1533 ], [ -1.310720e+05, %1275 ], [ -1.310720e+05, %1330 ], [ -1.310720e+05, %1272 ]
  %1548 = phi float [ %1267, %1243 ], [ 0.000000e+00, %1205 ], [ %1541, %1533 ], [ 0.000000e+00, %1275 ], [ 0.000000e+00, %1330 ], [ 0.000000e+00, %1272 ]
  %1549 = phi float [ %1269, %1243 ], [ 0.000000e+00, %1205 ], [ %1543, %1533 ], [ 0.000000e+00, %1275 ], [ 0.000000e+00, %1330 ], [ 0.000000e+00, %1272 ]
  %1550 = phi float [ %1271, %1243 ], [ 0.000000e+00, %1205 ], [ %1545, %1533 ], [ 0.000000e+00, %1275 ], [ 0.000000e+00, %1330 ], [ 0.000000e+00, %1272 ]
  %1551 = phi i1 [ true, %1243 ], [ false, %1205 ], [ true, %1533 ], [ false, %1275 ], [ false, %1330 ], [ false, %1272 ]
  %1552 = and i32 %213, 3
  %1553 = icmp eq i32 %1552, 1
  %1554 = select i1 %1553, float 1.000000e+00, float 0.000000e+00
  %1555 = fsub fast float %1547, %148
  %1556 = call float @dx.op.unary.f32(i32 7, float %1555)  ; Saturate(value)
  %1557 = select i1 %1551, float %1556, float 1.000000e+00
  %1558 = fmul fast float %1557, %1554
  %1559 = icmp eq i32 %1552, 3
  %1560 = select i1 %1559, float 1.000000e+00, float %1558
  %1561 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1560)  ; FMax(a,b)
  %1562 = call float @dx.op.unary.f32(i32 7, float %1561)  ; Saturate(value)
  %1563 = fcmp fast une float %1562, 0.000000e+00
  %1564 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %146, float %147, float %148)  ; Dot3(ax,ay,az,bx,by,bz)
  %1565 = call float @dx.op.unary.f32(i32 25, float %1564)  ; Rsqrt(value)
  br i1 %1563, label %1573, label %1566

; <label>:1566                                    ; preds = %1546
  %1567 = fmul fast float %1565, %146
  %1568 = fmul fast float %1565, %147
  %1569 = fmul fast float %1565, %148
  %1570 = fsub fast float -0.000000e+00, %1567
  %1571 = fsub fast float -0.000000e+00, %1568
  %1572 = fsub fast float -0.000000e+00, %1569
  br label %1741

; <label>:1573                                    ; preds = %1546
  %1574 = fmul fast float %146, %1565
  %1575 = fsub fast float -0.000000e+00, %1574
  %1576 = fmul fast float %147, %1565
  %1577 = fsub fast float -0.000000e+00, %1576
  %1578 = fmul fast float %148, %1565
  %1579 = fsub fast float -0.000000e+00, %1578
  %1580 = call float @dx.op.dot3.f32(i32 55, float %1575, float %1577, float %1579, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %1581 = fmul fast float %1562, 2.500000e+00
  %1582 = call float @dx.op.unary.f32(i32 7, float %1581)  ; Saturate(value)
  %1583 = fmul fast float %1562, 0x4013FFFFE0000000
  %1584 = fadd fast float %1583, 0xBFFFFFFFE0000000
  %1585 = call float @dx.op.unary.f32(i32 7, float %1584)  ; Saturate(value)
  %1586 = fmul fast float %1562, 0x4004000020000000
  %1587 = fadd fast float %1586, 0xBFF8000040000000
  %1588 = call float @dx.op.unary.f32(i32 7, float %1587)  ; Saturate(value)
  %1589 = call float @dx.op.unary.f32(i32 7, float %1582)  ; Saturate(value)
  %1590 = fmul fast float %1122, 1.000000e+01
  %1591 = call float @dx.op.unary.f32(i32 7, float %1590)  ; Saturate(value)
  %1592 = fmul fast float %1591, 2.000000e+00
  %1593 = fsub fast float 3.000000e+00, %1592
  %1594 = fmul fast float %1591, %1591
  %1595 = fmul fast float %1594, %1593
  %1596 = fsub fast float 1.000000e+00, %1595
  %1597 = fsub fast float 0x3FE3333340000000, %1143
  %1598 = fmul fast float %1597, 0x400AAAAAA0000000
  %1599 = call float @dx.op.unary.f32(i32 7, float %1598)  ; Saturate(value)
  %1600 = fmul fast float %1596, %1599
  %1601 = fmul fast float %1180, 0x3FEA2B8620000000
  %1602 = fmul fast float %1181, 0x3FEA2B8620000000
  %1603 = fmul fast float %1182, 0x3FEA2B8620000000
  %1604 = fadd fast float %1601, 0x3FC81DFBA0000000
  %1605 = fmul fast float %1604, %1180
  %1606 = fadd fast float %1605, 0x3F910E6020000000
  %1607 = fadd fast float %1602, 0x3FC81DFBA0000000
  %1608 = fmul fast float %1607, %1181
  %1609 = fadd fast float %1608, 0x3F910E6020000000
  %1610 = fadd fast float %1603, 0x3FC81DFBA0000000
  %1611 = fmul fast float %1610, %1182
  %1612 = fadd fast float %1611, 0x3F910E6020000000
  %1613 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  %1614 = call float @dx.op.unary.f32(i32 7, float %1609)  ; Saturate(value)
  %1615 = call float @dx.op.unary.f32(i32 7, float %1612)  ; Saturate(value)
  %1616 = fsub fast float %1613, %1180
  %1617 = fsub fast float %1614, %1181
  %1618 = fsub fast float %1615, %1182
  %1619 = fmul fast float %1616, %1589
  %1620 = fmul fast float %1619, %1600
  %1621 = fmul fast float %1617, %1589
  %1622 = fmul fast float %1621, %1600
  %1623 = fmul fast float %1618, %1589
  %1624 = fmul fast float %1623, %1600
  %1625 = fadd fast float %1620, %1180
  %1626 = fadd fast float %1622, %1181
  %1627 = fadd fast float %1624, %1182
  %1628 = fmul fast float %1089, %1089
  %1629 = fmul fast float %1628, %1628
  %1630 = fadd fast float %1585, 1.000000e+00
  %1631 = fsub fast float %1630, %1600
  %1632 = call float @dx.op.unary.f32(i32 7, float %1631)  ; Saturate(value)
  %1633 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1634 = call float @dx.op.unary.f32(i32 7, float %1633)  ; Saturate(value)
  %1635 = fsub fast float 1.000000e+00, %1629
  %1636 = call float @dx.op.binary.f32(i32 36, float %1632, float %1635)  ; FMin(a,b)
  %1637 = call float @dx.op.unary.f32(i32 7, float %1588)  ; Saturate(value)
  %1638 = call float @dx.op.binary.f32(i32 35, float %1636, float %1637)  ; FMax(a,b)
  %1639 = fadd fast float %1634, 0xBFE4CCCCC0000000
  %1640 = fmul fast float %1639, 0x4006DB6DA0000000
  %1641 = call float @dx.op.unary.f32(i32 7, float %1640)  ; Saturate(value)
  %1642 = fmul fast float %1641, 2.000000e+00
  %1643 = fsub fast float 3.000000e+00, %1642
  %1644 = bitcast float %1140 to i32
  %1645 = ashr i32 %1644, 1
  %1646 = add nsw i32 %1645, 532487669
  %1647 = bitcast i32 %1646 to float
  %1648 = fsub fast float 1.000000e+00, %1647
  %1649 = bitcast float %1648 to i32
  %1650 = sub nsw i32 2129859010, %1649
  %1651 = bitcast i32 %1650 to float
  %1652 = fmul fast float %1651, 2.000000e+00
  %1653 = bitcast float %1141 to i32
  %1654 = ashr i32 %1653, 1
  %1655 = add nsw i32 %1654, 532487669
  %1656 = bitcast i32 %1655 to float
  %1657 = fsub fast float 1.000000e+00, %1656
  %1658 = bitcast float %1657 to i32
  %1659 = sub nsw i32 2129859010, %1658
  %1660 = bitcast i32 %1659 to float
  %1661 = fmul fast float %1660, 2.000000e+00
  %1662 = bitcast float %1142 to i32
  %1663 = ashr i32 %1662, 1
  %1664 = add nsw i32 %1663, 532487669
  %1665 = bitcast i32 %1664 to float
  %1666 = fsub fast float 1.000000e+00, %1665
  %1667 = bitcast float %1666 to i32
  %1668 = sub nsw i32 2129859010, %1667
  %1669 = bitcast i32 %1668 to float
  %1670 = fmul fast float %1669, 2.000000e+00
  %1671 = fsub fast float 0x4002A9FBE0000000, %1652
  %1672 = fadd fast float %1652, 0x3FD54FDF00000000
  %1673 = bitcast float %1672 to i32
  %1674 = sub nsw i32 2129859010, %1673
  %1675 = bitcast i32 %1674 to float
  %1676 = fmul fast float %1675, %1671
  %1677 = fmul fast float %1676, %1676
  %1678 = fsub fast float 0x4002A9FBE0000000, %1661
  %1679 = fadd fast float %1661, 0x3FD54FDF00000000
  %1680 = bitcast float %1679 to i32
  %1681 = sub nsw i32 2129859010, %1680
  %1682 = bitcast i32 %1681 to float
  %1683 = fmul fast float %1682, %1678
  %1684 = fmul fast float %1683, %1683
  %1685 = fsub fast float 0x4002A9FBE0000000, %1670
  %1686 = fadd fast float %1670, 0x3FD54FDF00000000
  %1687 = bitcast float %1686 to i32
  %1688 = sub nsw i32 2129859010, %1687
  %1689 = bitcast i32 %1688 to float
  %1690 = fmul fast float %1689, %1685
  %1691 = fmul fast float %1690, %1690
  %1692 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1677)  ; FMax(a,b)
  %1693 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1684)  ; FMax(a,b)
  %1694 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1691)  ; FMax(a,b)
  %1695 = fsub fast float 1.000000e+00, %1580
  %1696 = fadd fast float %1695, %1596
  %1697 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  %1698 = fsub fast float 1.000000e+00, %1560
  %1699 = fmul fast float %1638, %1698
  %1700 = fmul fast float %1641, %1641
  %1701 = fmul fast float %1700, %1699
  %1702 = fmul fast float %1701, %1643
  %1703 = fmul fast float %1698, 0xBFE99999A0000000
  %1704 = fmul fast float %1703, %1589
  %1705 = fmul fast float %1704, %1600
  %1706 = fadd fast float %1705, 1.000000e+00
  %1707 = fadd fast float %1143, -1.000000e+00
  %1708 = fmul fast float %1706, %1707
  %1709 = fadd fast float %1708, 1.000000e+00
  %1710 = fsub fast float %1692, %1140
  %1711 = fsub fast float %1693, %1141
  %1712 = fsub fast float %1694, %1142
  %1713 = fmul fast float %1702, %1710
  %1714 = fmul fast float %1702, %1711
  %1715 = fmul fast float %1702, %1712
  %1716 = fadd fast float %1713, %1140
  %1717 = fadd fast float %1714, %1141
  %1718 = fadd fast float %1715, %1142
  %1719 = fsub fast float %76, %1119
  %1720 = fsub fast float %77, %1120
  %1721 = fsub fast float %78, %1121
  %1722 = fmul fast float %1702, %1719
  %1723 = fmul fast float %1702, %1720
  %1724 = fmul fast float %1702, %1721
  %1725 = fadd fast float %1722, %1119
  %1726 = fadd fast float %1723, %1120
  %1727 = fadd fast float %1724, %1121
  %1728 = fmul fast float %1702, %1697
  %1729 = call float @dx.op.unary.f32(i32 7, float %1709)  ; Saturate(value)
  %1730 = fsub fast float 1.000000e+00, %1729
  %1731 = fmul fast float %1728, %1730
  %1732 = fadd fast float %1731, %1729
  %1733 = fsub fast float 1.000000e+00, %1089
  %1734 = fmul fast float %1702, %1733
  %1735 = fadd fast float %1734, %1089
  %1736 = call float @dx.op.dot3.f32(i32 55, float %1725, float %1726, float %1727, float %1725, float %1726, float %1727)  ; Dot3(ax,ay,az,bx,by,bz)
  %1737 = call float @dx.op.unary.f32(i32 25, float %1736)  ; Rsqrt(value)
  %1738 = fmul fast float %1725, %1737
  %1739 = fmul fast float %1726, %1737
  %1740 = fmul fast float %1727, %1737
  br label %1741

; <label>:1741                                    ; preds = %1573, %1566
  %1742 = phi float [ %1572, %1566 ], [ %1579, %1573 ]
  %1743 = phi float [ %1571, %1566 ], [ %1577, %1573 ]
  %1744 = phi float [ %1570, %1566 ], [ %1575, %1573 ]
  %1745 = phi float [ %1569, %1566 ], [ %1578, %1573 ]
  %1746 = phi float [ %1568, %1566 ], [ %1576, %1573 ]
  %1747 = phi float [ %1567, %1566 ], [ %1574, %1573 ]
  %1748 = phi float [ %1119, %1566 ], [ %1738, %1573 ]
  %1749 = phi float [ %1120, %1566 ], [ %1739, %1573 ]
  %1750 = phi float [ %1121, %1566 ], [ %1740, %1573 ]
  %1751 = phi float [ %1140, %1566 ], [ %1716, %1573 ]
  %1752 = phi float [ %1141, %1566 ], [ %1717, %1573 ]
  %1753 = phi float [ %1142, %1566 ], [ %1718, %1573 ]
  %1754 = phi float [ %1180, %1566 ], [ %1625, %1573 ]
  %1755 = phi float [ %1181, %1566 ], [ %1626, %1573 ]
  %1756 = phi float [ %1182, %1566 ], [ %1627, %1573 ]
  %1757 = phi float [ %1143, %1566 ], [ %1732, %1573 ]
  %1758 = phi float [ %1089, %1566 ], [ %1735, %1573 ]
  %1759 = fsub fast float -0.000000e+00, %148
  %1760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1761 = extractvalue %dx.types.CBufRet.f32 %1760, 2
  %1762 = extractvalue %dx.types.CBufRet.f32 %1760, 3
  %1763 = fmul fast float %99, 2.000000e+00
  %1764 = fmul fast float %1763, %1761
  %1765 = fmul fast float %100, 2.000000e+00
  %1766 = fmul fast float %1765, %1762
  %1767 = fsub fast float 1.000000e+00, %1764
  %1768 = fsub fast float 1.000000e+00, %1766
  %1769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1770 = extractvalue %dx.types.CBufRet.f32 %1769, 0
  %1771 = extractvalue %dx.types.CBufRet.f32 %1769, 1
  %1772 = extractvalue %dx.types.CBufRet.f32 %1769, 2
  %1773 = fmul fast float %1767, %1770
  %1774 = fmul fast float %1767, %1771
  %1775 = fmul fast float %1767, %1772
  %1776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1777 = extractvalue %dx.types.CBufRet.f32 %1776, 0
  %1778 = extractvalue %dx.types.CBufRet.f32 %1776, 1
  %1779 = extractvalue %dx.types.CBufRet.f32 %1776, 2
  %1780 = fmul fast float %1768, %1777
  %1781 = fmul fast float %1768, %1778
  %1782 = fmul fast float %1768, %1779
  %1783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1784 = extractvalue %dx.types.CBufRet.f32 %1783, 0
  %1785 = extractvalue %dx.types.CBufRet.f32 %1783, 1
  %1786 = extractvalue %dx.types.CBufRet.f32 %1783, 2
  %1787 = fadd fast float %1780, %1784
  %1788 = fadd fast float %1787, %1773
  %1789 = fadd fast float %1781, %1785
  %1790 = fadd fast float %1789, %1774
  %1791 = fadd fast float %1782, %1786
  %1792 = fadd fast float %1791, %1775
  %1793 = fmul fast float %1788, %87
  %1794 = fmul fast float %1790, %87
  %1795 = fmul fast float %1792, %87
  %1796 = select i1 %239, float 0.000000e+00, float %1753
  %1797 = call float @dx.op.dot3.f32(i32 55, float %1748, float %1749, float %1750, float %1744, float %1743, float %1742)  ; Dot3(ax,ay,az,bx,by,bz)
  %1798 = call float @dx.op.unary.f32(i32 7, float %1797)  ; Saturate(value)
  %1799 = call float @dx.op.dot3.f32(i32 55, float %1747, float %1746, float %1745, float %1748, float %1749, float %1750)  ; Dot3(ax,ay,az,bx,by,bz)
  %1800 = fmul fast float %1799, 2.000000e+00
  %1801 = fmul fast float %1800, %1748
  %1802 = fmul fast float %1800, %1749
  %1803 = fmul fast float %1800, %1750
  %1804 = fsub fast float %1747, %1801
  %1805 = fsub fast float %1746, %1802
  %1806 = fsub fast float %1745, %1803
  %1807 = call float @dx.op.binary.f32(i32 36, float %1758, float 1.000000e+00)  ; FMin(a,b)
  %1808 = fsub fast float 1.000000e+00, %1807
  %1809 = bitcast float %1808 to i32
  %1810 = ashr i32 %1809, 1
  %1811 = add nsw i32 %1810, 532487669
  %1812 = bitcast i32 %1811 to float
  %1813 = fsub fast float 1.000000e+00, %1757
  %1814 = call float @dx.op.binary.f32(i32 35, float %1813, float 0x3F847AE140000000)  ; FMax(a,b)
  %1815 = fmul fast float %1814, %1814
  %1816 = fmul fast float %1815, %1815
  %1817 = call float @dx.op.unary.f32(i32 7, float %1798)  ; Saturate(value)
  %1818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %64, float %1812, float %1816, float %1817, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1819 = extractvalue %dx.types.ResRet.f32 %1818, 0
  %1820 = fsub fast float 1.000000e+00, %1758
  %1821 = bitcast float %1820 to i32
  %1822 = sub nsw i32 2129859010, %1821
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 0
  %1825 = extractvalue %dx.types.CBufRet.f32 %1823, 1
  %1826 = fadd fast float %1824, %146
  %1827 = fadd fast float %1825, %147
  %1828 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1829 = extractvalue %dx.types.CBufRet.i32 %1828, 0
  %1830 = icmp eq i32 %1829, 1
  br i1 %1830, label %1831, label %1866

; <label>:1831                                    ; preds = %1741
  %1832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1833 = extractvalue %dx.types.CBufRet.f32 %1832, 0
  %1834 = extractvalue %dx.types.CBufRet.f32 %1832, 1
  %1835 = fsub fast float %1826, %1833
  %1836 = fsub fast float %1827, %1834
  %1837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1838 = extractvalue %dx.types.CBufRet.f32 %1837, 0
  %1839 = extractvalue %dx.types.CBufRet.f32 %1837, 1
  %1840 = fmul fast float %1835, %1838
  %1841 = fmul fast float %1836, %1839
  %1842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %1840, float %1841, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1843 = extractvalue %dx.types.ResRet.f32 %1842, 0
  %1844 = fcmp fast ogt float %1843, 0.000000e+00
  %1845 = extractvalue %dx.types.CBufRet.i32 %1828, 3
  %1846 = icmp ne i32 %1845, 0
  %1847 = and i1 %1844, %1846
  br i1 %1847, label %1848, label %1866, !dx.controlflow.hints !103

; <label>:1848                                    ; preds = %1831
  %1849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1850 = extractvalue %dx.types.CBufRet.f32 %1849, 0
  %1851 = extractvalue %dx.types.CBufRet.f32 %1849, 1
  %1852 = fsub fast float %1826, %1850
  %1853 = fsub fast float %1827, %1851
  %1854 = fmul fast float %1852, %1852
  %1855 = fmul fast float %1853, %1853
  %1856 = fadd fast float %1854, %1855
  %1857 = uitofp i32 %1845 to float
  %1858 = fmul fast float %1857, %1857
  %1859 = fcmp fast ogt float %1856, %1858
  br i1 %1859, label %1866, label %1860

; <label>:1860                                    ; preds = %1848
  %1861 = call float @dx.op.unary.f32(i32 24, float %1856)  ; Sqrt(value)
  %1862 = fsub fast float %1857, %1861
  %1863 = fmul fast float %1862, 0x3F75555560000000
  %1864 = call float @dx.op.unary.f32(i32 7, float %1863)  ; Saturate(value)
  %1865 = call float @dx.op.binary.f32(i32 36, float %1864, float %1843)  ; FMin(a,b)
  br label %1866

; <label>:1866                                    ; preds = %1860, %1848, %1831, %1741
  %1867 = phi float [ 1.000000e+00, %1741 ], [ %1865, %1860 ], [ %1843, %1831 ], [ 0.000000e+00, %1848 ]
  %1868 = fcmp fast ogt float %1867, 0.000000e+00
  br i1 %1868, label %1869, label %1968, !dx.controlflow.hints !104

; <label>:1869                                    ; preds = %1866
  %1870 = fadd fast float %177, 5.000000e-01
  %1871 = call float @dx.op.unary.f32(i32 27, float %1870)  ; Round_ni(value)
  %1872 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %64, float %175, float %176, float %1871, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1873 = extractvalue %dx.types.ResRet.f32 %1872, 0
  %1874 = extractvalue %dx.types.ResRet.f32 %1872, 1
  %1875 = extractvalue %dx.types.ResRet.f32 %1872, 2
  %1876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1877 = extractvalue %dx.types.CBufRet.f32 %1876, 3
  %1878 = fmul fast float %1877, %1873
  %1879 = fmul fast float %1877, %1874
  %1880 = fmul fast float %1877, %1875
  %1881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %64, float %175, float %176, float %1871, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1882 = extractvalue %dx.types.ResRet.f32 %1881, 0
  %1883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %64, float %175, float %176, float %1871, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1884 = extractvalue %dx.types.ResRet.f32 %1883, 0
  %1885 = extractvalue %dx.types.ResRet.f32 %1883, 1
  %1886 = fmul fast float %1884, 2.000000e+00
  %1887 = fmul fast float %1885, 2.000000e+00
  %1888 = fadd fast float %1886, -1.000000e+00
  %1889 = fadd fast float %1887, -1.000000e+00
  %1890 = fadd fast float %1888, %1889
  %1891 = fmul fast float %1890, 5.000000e-01
  %1892 = fsub fast float %1888, %1889
  %1893 = fmul fast float %1892, 5.000000e-01
  %1894 = call float @dx.op.unary.f32(i32 6, float %1891)  ; FAbs(value)
  %1895 = fsub fast float 1.000000e+00, %1894
  %1896 = call float @dx.op.unary.f32(i32 6, float %1893)  ; FAbs(value)
  %1897 = fsub fast float %1895, %1896
  %1898 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1897)  ; FMax(a,b)
  %1899 = call float @dx.op.dot3.f32(i32 55, float %1891, float %1893, float %1898, float %1891, float %1893, float %1898)  ; Dot3(ax,ay,az,bx,by,bz)
  %1900 = bitcast float %1899 to i32
  %1901 = ashr i32 %1900, 1
  %1902 = sub nsw i32 1597250115, %1901
  %1903 = bitcast i32 %1902 to float
  %1904 = fmul fast float %1903, %1891
  %1905 = fmul fast float %1903, %1893
  %1906 = fmul fast float %1903, %1898
  %1907 = fsub fast float 1.000000e+00, %1882
  %1908 = fdiv fast float %1907, %1906
  %1909 = fmul fast float %1906, %76
  %1910 = fmul fast float %1906, %77
  %1911 = fmul fast float %1906, %78
  %1912 = fmul fast float %1904, %72
  %1913 = fmul fast float %1904, %73
  %1914 = fmul fast float %1904, %74
  %1915 = fadd fast float %1909, %1912
  %1916 = fadd fast float %1910, %1913
  %1917 = fadd fast float %1911, %1914
  %1918 = fmul fast float %1905, %110
  %1919 = fmul fast float %1905, %111
  %1920 = fmul fast float %1905, %112
  %1921 = fadd fast float %1915, %1918
  %1922 = fadd fast float %1916, %1919
  %1923 = fadd fast float %1917, %1920
  %1924 = call float @dx.op.dot3.f32(i32 55, float %1921, float %1922, float %1923, float %1921, float %1922, float %1923)  ; Dot3(ax,ay,az,bx,by,bz)
  %1925 = call float @dx.op.unary.f32(i32 25, float %1924)  ; Rsqrt(value)
  %1926 = fmul fast float %1921, %1925
  %1927 = fmul fast float %1922, %1925
  %1928 = fmul fast float %1923, %1925
  %1929 = call float @dx.op.dot3.f32(i32 55, float %1748, float %1749, float %1750, float %1748, float %1749, float %1750)  ; Dot3(ax,ay,az,bx,by,bz)
  %1930 = call float @dx.op.unary.f32(i32 7, float %1929)  ; Saturate(value)
  %1931 = fmul fast float %1930, 5.000000e-01
  %1932 = fadd fast float %1931, 5.000000e-01
  %1933 = fmul fast float %1932, %1882
  %1934 = call float @dx.op.dot3.f32(i32 55, float %1748, float %1749, float %1750, float %1926, float %1927, float %1928)  ; Dot3(ax,ay,az,bx,by,bz)
  %1935 = call float @dx.op.unary.f32(i32 7, float %1934)  ; Saturate(value)
  %1936 = fmul fast float %1935, %1908
  %1937 = fadd fast float %1933, %1936
  %1938 = fsub fast float 5.000000e-01, %1931
  %1939 = fmul fast float %1938, %1754
  %1940 = fmul fast float %1938, %1755
  %1941 = fmul fast float %1938, %1756
  %1942 = fadd fast float %1937, %1939
  %1943 = fmul fast float %1942, %1878
  %1944 = fadd fast float %1937, %1940
  %1945 = fmul fast float %1944, %1879
  %1946 = fadd fast float %1937, %1941
  %1947 = fmul fast float %1946, %1880
  %1948 = call float @dx.op.dot3.f32(i32 55, float %1804, float %1805, float %1806, float %1748, float %1749, float %1750)  ; Dot3(ax,ay,az,bx,by,bz)
  %1949 = call float @dx.op.unary.f32(i32 7, float %1948)  ; Saturate(value)
  %1950 = fmul fast float %1949, 5.000000e-01
  %1951 = fadd fast float %1950, 5.000000e-01
  %1952 = fmul fast float %1951, %1882
  %1953 = call float @dx.op.dot3.f32(i32 55, float %1804, float %1805, float %1806, float %1926, float %1927, float %1928)  ; Dot3(ax,ay,az,bx,by,bz)
  %1954 = call float @dx.op.unary.f32(i32 7, float %1953)  ; Saturate(value)
  %1955 = fmul fast float %1954, %1908
  %1956 = fadd fast float %1952, %1955
  %1957 = fsub fast float 5.000000e-01, %1950
  %1958 = fmul fast float %1957, %1754
  %1959 = fmul fast float %1957, %1755
  %1960 = fmul fast float %1957, %1756
  %1961 = fadd fast float %1956, %1958
  %1962 = fmul fast float %1961, %1878
  %1963 = fadd fast float %1956, %1959
  %1964 = fmul fast float %1963, %1879
  %1965 = fadd fast float %1956, %1960
  %1966 = fmul fast float %1965, %1880
  %1967 = call float @dx.op.dot3.f32(i32 55, float %1878, float %1879, float %1880, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %1968

; <label>:1968                                    ; preds = %1869, %1866
  %1969 = phi float [ %1967, %1869 ], [ 0.000000e+00, %1866 ]
  %1970 = phi float [ %1962, %1869 ], [ 0.000000e+00, %1866 ]
  %1971 = phi float [ %1964, %1869 ], [ 0.000000e+00, %1866 ]
  %1972 = phi float [ %1966, %1869 ], [ 0.000000e+00, %1866 ]
  %1973 = phi float [ %1943, %1869 ], [ 0.000000e+00, %1866 ]
  %1974 = phi float [ %1945, %1869 ], [ 0.000000e+00, %1866 ]
  %1975 = phi float [ %1947, %1869 ], [ 0.000000e+00, %1866 ]
  %1976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1977 = extractvalue %dx.types.CBufRet.f32 %1976, 0
  %1978 = fcmp fast ogt float %1977, 0.000000e+00
  %1979 = and i1 %1868, %1978
  br i1 %1979, label %1980, label %2184, !dx.controlflow.hints !105

; <label>:1980                                    ; preds = %1968
  %1981 = extractvalue %dx.types.CBufRet.f32 %1823, 2
  %1982 = fadd fast float %1981, %148
  %1983 = fmul fast float %1748, 3.200000e+01
  %1984 = fmul fast float %1749, 3.200000e+01
  %1985 = fadd fast float %1826, %1983
  %1986 = fadd fast float %1827, %1984
  %1987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1988 = extractvalue %dx.types.CBufRet.f32 %1987, 0
  %1989 = extractvalue %dx.types.CBufRet.f32 %1987, 1
  %1990 = fsub fast float %1985, %1988
  %1991 = fsub fast float %1986, %1989
  %1992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1993 = extractvalue %dx.types.CBufRet.f32 %1992, 0
  %1994 = extractvalue %dx.types.CBufRet.f32 %1992, 1
  %1995 = fmul fast float %1990, %1993
  %1996 = fmul fast float %1991, %1994
  %1997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1998 = extractvalue %dx.types.CBufRet.f32 %1997, 0
  %1999 = extractvalue %dx.types.CBufRet.f32 %1997, 1
  %2000 = fsub fast float %1826, %1998
  %2001 = fsub fast float %1827, %1999
  %2002 = fmul fast float %2000, %2000
  %2003 = fmul fast float %2001, %2001
  %2004 = fadd fast float %2002, %2003
  %2005 = call float @dx.op.unary.f32(i32 24, float %2004)  ; Sqrt(value)
  %2006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2007 = extractvalue %dx.types.CBufRet.f32 %2006, 0
  %2008 = extractvalue %dx.types.CBufRet.f32 %2006, 1
  %2009 = fsub fast float %2005, %2007
  %2010 = fdiv fast float %2009, %2008
  %2011 = call float @dx.op.unary.f32(i32 7, float %2010)  ; Saturate(value)
  %2012 = fmul fast float %2011, 2.000000e+00
  %2013 = fsub fast float 3.000000e+00, %2012
  %2014 = fmul fast float %2011, %2011
  %2015 = fmul fast float %2014, %2013
  %2016 = fcmp fast oge float %1995, 0.000000e+00
  %2017 = fcmp fast ole float %1995, 1.000000e+00
  %2018 = and i1 %2017, %2016
  %2019 = fcmp fast oge float %1996, 0.000000e+00
  %2020 = and i1 %2019, %2018
  %2021 = fcmp fast ole float %1996, 1.000000e+00
  %2022 = and i1 %2021, %2020
  %2023 = fcmp fast ogt float %2015, 0.000000e+00
  %2024 = and i1 %2023, %2022
  br i1 %2024, label %2025, label %2148, !dx.controlflow.hints !106

; <label>:2025                                    ; preds = %1980
  %2026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2027 = extractvalue %dx.types.CBufRet.f32 %2026, 2
  %2028 = extractvalue %dx.types.CBufRet.f32 %2026, 3
  %2029 = fmul fast float %2027, %1995
  %2030 = fmul fast float %2028, %1996
  %2031 = call float @dx.op.unary.f32(i32 27, float %2029)  ; Round_ni(value)
  %2032 = call float @dx.op.unary.f32(i32 27, float %2030)  ; Round_ni(value)
  %2033 = fptosi float %2031 to i32
  %2034 = fptosi float %2032 to i32
  %2035 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %53, i32 0, i32 %2033, i32 %2034, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = lshr i32 %2036, 16
  %2038 = icmp eq i32 %2037, 65535
  br i1 %2038, label %2148, label %2039

; <label>:2039                                    ; preds = %2025
  %2040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2041 = extractvalue %dx.types.CBufRet.f32 %2040, 0
  %2042 = fmul fast float %2041, %1995
  %2043 = extractvalue %dx.types.CBufRet.f32 %2040, 1
  %2044 = fadd fast float %2042, %2043
  %2045 = extractvalue %dx.types.CBufRet.f32 %2040, 2
  %2046 = fmul fast float %2045, %1996
  %2047 = extractvalue %dx.types.CBufRet.f32 %2040, 3
  %2048 = fadd fast float %2046, %2047
  %2049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %64, float %2044, float %2048, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2050 = extractvalue %dx.types.ResRet.f32 %2049, 0
  %2051 = extractvalue %dx.types.ResRet.f32 %2049, 1
  %2052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2053 = extractvalue %dx.types.CBufRet.f32 %2052, 1
  %2054 = extractvalue %dx.types.CBufRet.f32 %2052, 0
  %2055 = fsub fast float %2053, %2054
  %2056 = fmul fast float %2055, %2050
  %2057 = fadd fast float %2056, %2054
  %2058 = extractvalue %dx.types.CBufRet.f32 %2052, 3
  %2059 = extractvalue %dx.types.CBufRet.f32 %2052, 2
  %2060 = fsub fast float %2058, %2059
  %2061 = fmul fast float %2060, %2051
  %2062 = fadd fast float %2061, %2059
  %2063 = fsub fast float %1982, %2057
  %2064 = fsub fast float %2062, %2057
  %2065 = fdiv fast float %2063, %2064
  %2066 = call float @dx.op.unary.f32(i32 7, float %2065)  ; Saturate(value)
  %2067 = extractvalue %dx.types.CBufRet.f32 %1976, 1
  %2068 = extractvalue %dx.types.CBufRet.f32 %2026, 0
  %2069 = extractvalue %dx.types.CBufRet.f32 %2026, 1
  %2070 = fmul fast float %2068, %1995
  %2071 = fmul fast float %2069, %1996
  %2072 = fmul fast float %2070, 1.250000e-01
  %2073 = fmul fast float %2071, 1.250000e-01
  %2074 = call float @dx.op.unary.f32(i32 27, float %2072)  ; Round_ni(value)
  %2075 = call float @dx.op.unary.f32(i32 27, float %2073)  ; Round_ni(value)
  %2076 = fmul fast float %2074, 8.000000e+00
  %2077 = fmul fast float %2075, 8.000000e+00
  %2078 = fsub fast float %2070, %2076
  %2079 = fsub fast float %2071, %2077
  %2080 = fadd fast float %2078, 5.000000e-01
  %2081 = fadd fast float %2079, 5.000000e-01
  %2082 = and i32 %2037, 255
  %2083 = lshr i32 %2036, 24
  %2084 = mul nuw nsw i32 %2082, 9
  %2085 = uitofp i32 %2084 to float
  %2086 = mul nuw nsw i32 %2083, 9
  %2087 = uitofp i32 %2086 to float
  %2088 = fadd fast float %2080, %2085
  %2089 = fadd fast float %2081, %2087
  %2090 = fdiv fast float %2088, %1977
  %2091 = fdiv fast float %2089, %2067
  %2092 = fmul fast float %2066, 4.375000e-01
  %2093 = fadd fast float %2092, 3.125000e-02
  %2094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %2090, float %2091, float %2093, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2095 = extractvalue %dx.types.ResRet.f32 %2094, 0
  %2096 = extractvalue %dx.types.ResRet.f32 %2094, 1
  %2097 = extractvalue %dx.types.ResRet.f32 %2094, 2
  %2098 = fadd fast float %2092, 5.312500e-01
  %2099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %2090, float %2091, float %2098, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2100 = extractvalue %dx.types.ResRet.f32 %2099, 0
  %2101 = extractvalue %dx.types.ResRet.f32 %2099, 1
  %2102 = extractvalue %dx.types.ResRet.f32 %2099, 2
  %2103 = fmul fast float %2100, 2.000000e+00
  %2104 = fmul fast float %2101, 2.000000e+00
  %2105 = fmul fast float %2102, 2.000000e+00
  %2106 = fadd fast float %2103, -1.000000e+00
  %2107 = fadd fast float %2104, -1.000000e+00
  %2108 = fadd fast float %2105, -1.000000e+00
  %2109 = fmul fast float %2106, %2106
  %2110 = fmul fast float %2107, %2107
  %2111 = fadd fast float %2109, %2110
  %2112 = fmul fast float %2108, %2108
  %2113 = fadd fast float %2111, %2112
  %2114 = call float @dx.op.unary.f32(i32 24, float %2113)  ; Sqrt(value)
  %2115 = fcmp fast ogt float %2114, 0.000000e+00
  br i1 %2115, label %2116, label %2120

; <label>:2116                                    ; preds = %2039
  %2117 = fdiv fast float %2106, %2114
  %2118 = fdiv fast float %2107, %2114
  %2119 = fdiv fast float %2108, %2114
  br label %2120

; <label>:2120                                    ; preds = %2116, %2039
  %2121 = phi float [ %2117, %2116 ], [ 0.000000e+00, %2039 ]
  %2122 = phi float [ %2118, %2116 ], [ 0.000000e+00, %2039 ]
  %2123 = phi float [ %2119, %2116 ], [ 0.000000e+00, %2039 ]
  %2124 = call float @dx.op.dot3.f32(i32 55, float %2121, float %2122, float %2123, float %1748, float %1749, float %1750)  ; Dot3(ax,ay,az,bx,by,bz)
  %2125 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2124)  ; FMax(a,b)
  %2126 = fmul fast float %2125, 0x400C5BF8A0000000
  %2127 = fmul fast float %2095, %2015
  %2128 = fmul fast float %2127, %2126
  %2129 = fmul fast float %2096, %2015
  %2130 = fmul fast float %2129, %2126
  %2131 = fmul fast float %2097, %2015
  %2132 = fmul fast float %2131, %2126
  %2133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2134 = extractvalue %dx.types.CBufRet.f32 %2133, 3
  %2135 = fmul fast float %2128, %2134
  %2136 = fmul fast float %2130, %2134
  %2137 = fmul fast float %2132, %2134
  %2138 = fcmp fast ogt float %1982, %2062
  br i1 %2138, label %2139, label %2148

; <label>:2139                                    ; preds = %2120
  %2140 = fmul fast float %2064, 0x3FC24924A0000000
  %2141 = fsub fast float %1982, %2062
  %2142 = fdiv fast float %2141, %2140
  %2143 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2144 = fsub fast float 1.000000e+00, %2143
  %2145 = fmul fast float %2144, %2135
  %2146 = fmul fast float %2144, %2136
  %2147 = fmul fast float %2144, %2137
  br label %2148

; <label>:2148                                    ; preds = %2139, %2120, %2025, %1980
  %2149 = phi float [ %2147, %2139 ], [ %2137, %2120 ], [ 0.000000e+00, %2025 ], [ 0.000000e+00, %1980 ]
  %2150 = phi float [ %2146, %2139 ], [ %2136, %2120 ], [ 0.000000e+00, %2025 ], [ 0.000000e+00, %1980 ]
  %2151 = phi float [ %2145, %2139 ], [ %2135, %2120 ], [ 0.000000e+00, %2025 ], [ 0.000000e+00, %1980 ]
  %2152 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2151)  ; FMax(a,b)
  %2153 = fmul fast float %2152, 0x3FD20DD760000000
  %2154 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1804, float %1805, float %1806)  ; Dot3(ax,ay,az,bx,by,bz)
  %2155 = fmul fast float %2154, 0x3FDF454380000000
  %2156 = fmul fast float %2154, %2154
  %2157 = fmul fast float %2156, 0x3FEE471020000000
  %2158 = fadd fast float %2157, 0xBFD42F6020000000
  %2159 = call float @dx.op.dot3.f32(i32 55, float %2152, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2155, float %2158)  ; Dot3(ax,ay,az,bx,by,bz)
  %2160 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2150)  ; FMax(a,b)
  %2161 = fmul fast float %2160, 0x3FD20DD760000000
  %2162 = call float @dx.op.dot3.f32(i32 55, float %2160, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2155, float %2158)  ; Dot3(ax,ay,az,bx,by,bz)
  %2163 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2149)  ; FMax(a,b)
  %2164 = fmul fast float %2163, 0x3FD20DD760000000
  %2165 = call float @dx.op.dot3.f32(i32 55, float %2163, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2155, float %2158)  ; Dot3(ax,ay,az,bx,by,bz)
  %2166 = call float @dx.op.binary.f32(i32 35, float %2153, float 0.000000e+00)  ; FMax(a,b)
  %2167 = call float @dx.op.binary.f32(i32 35, float %2161, float 0.000000e+00)  ; FMax(a,b)
  %2168 = call float @dx.op.binary.f32(i32 35, float %2164, float 0.000000e+00)  ; FMax(a,b)
  %2169 = call float @dx.op.binary.f32(i32 35, float %2159, float 0.000000e+00)  ; FMax(a,b)
  %2170 = call float @dx.op.binary.f32(i32 35, float %2162, float 0.000000e+00)  ; FMax(a,b)
  %2171 = call float @dx.op.binary.f32(i32 35, float %2165, float 0.000000e+00)  ; FMax(a,b)
  %2172 = fmul fast float %2166, %1867
  %2173 = fmul fast float %2167, %1867
  %2174 = fmul fast float %2168, %1867
  %2175 = fadd fast float %2172, %1973
  %2176 = fadd fast float %2173, %1974
  %2177 = fadd fast float %2174, %1975
  %2178 = fmul fast float %2169, %1867
  %2179 = fmul fast float %2170, %1867
  %2180 = fmul fast float %2171, %1867
  %2181 = fadd fast float %2178, %1970
  %2182 = fadd fast float %2179, %1971
  %2183 = fadd fast float %2180, %1972
  br label %2184

; <label>:2184                                    ; preds = %2148, %1968
  %2185 = phi float [ %2181, %2148 ], [ %1970, %1968 ]
  %2186 = phi float [ %2182, %2148 ], [ %1971, %1968 ]
  %2187 = phi float [ %2183, %2148 ], [ %1972, %1968 ]
  %2188 = phi float [ %2175, %2148 ], [ %1973, %1968 ]
  %2189 = phi float [ %2176, %2148 ], [ %1974, %1968 ]
  %2190 = phi float [ %2177, %2148 ], [ %1975, %1968 ]
  %2191 = fcmp fast olt float %1867, 1.000000e+00
  br i1 %2191, label %2192, label %3015, !dx.controlflow.hints !107

; <label>:2192                                    ; preds = %2184
  %2193 = extractvalue %dx.types.CBufRet.f32 %1823, 2
  %2194 = fadd fast float %2193, %148
  %2195 = fmul fast float %1748, 3.200000e+01
  %2196 = fmul fast float %1749, 3.200000e+01
  %2197 = fadd fast float %1826, %2195
  %2198 = fadd fast float %1827, %2196
  %2199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2200 = extractvalue %dx.types.CBufRet.f32 %2199, 0
  %2201 = extractvalue %dx.types.CBufRet.f32 %2199, 1
  %2202 = fsub fast float %2197, %2200
  %2203 = fsub fast float %2198, %2201
  %2204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2205 = extractvalue %dx.types.CBufRet.f32 %2204, 0
  %2206 = extractvalue %dx.types.CBufRet.f32 %2204, 1
  %2207 = fmul fast float %2202, %2205
  %2208 = fmul fast float %2203, %2206
  %2209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2210 = extractvalue %dx.types.CBufRet.f32 %2209, 0
  %2211 = fmul fast float %2207, %2210
  %2212 = extractvalue %dx.types.CBufRet.f32 %2209, 1
  %2213 = fadd fast float %2211, %2212
  %2214 = extractvalue %dx.types.CBufRet.f32 %2209, 2
  %2215 = fmul fast float %2214, %2208
  %2216 = extractvalue %dx.types.CBufRet.f32 %2209, 3
  %2217 = fadd fast float %2215, %2216
  %2218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %64, float %2213, float %2217, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2219 = extractvalue %dx.types.ResRet.f32 %2218, 0
  %2220 = extractvalue %dx.types.ResRet.f32 %2218, 1
  %2221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2222 = extractvalue %dx.types.CBufRet.f32 %2221, 1
  %2223 = extractvalue %dx.types.CBufRet.f32 %2221, 0
  %2224 = fsub fast float %2222, %2223
  %2225 = fmul fast float %2224, %2219
  %2226 = fadd fast float %2225, %2223
  %2227 = extractvalue %dx.types.CBufRet.f32 %2221, 3
  %2228 = extractvalue %dx.types.CBufRet.f32 %2221, 2
  %2229 = fsub fast float %2227, %2228
  %2230 = fmul fast float %2229, %2220
  %2231 = fadd fast float %2230, %2228
  %2232 = fsub fast float %2194, %2226
  %2233 = fsub fast float %2231, %2226
  %2234 = fdiv fast float %2232, %2233
  %2235 = call float @dx.op.unary.f32(i32 7, float %2234)  ; Saturate(value)
  %2236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2237 = extractvalue %dx.types.CBufRet.f32 %2236, 0
  %2238 = fmul fast float %2237, %2235
  %2239 = extractvalue %dx.types.CBufRet.f32 %2236, 1
  %2240 = fadd fast float %2238, %2239
  %2241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %64, float %2213, float %2217, float %2240, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2242 = extractvalue %dx.types.ResRet.f32 %2241, 0
  %2243 = extractvalue %dx.types.ResRet.f32 %2241, 1
  %2244 = extractvalue %dx.types.ResRet.f32 %2241, 2
  %2245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2246 = extractvalue %dx.types.CBufRet.f32 %2245, 0
  %2247 = extractvalue %dx.types.CBufRet.f32 %2245, 1
  %2248 = extractvalue %dx.types.CBufRet.f32 %2245, 2
  %2249 = fmul fast float %2246, %2242
  %2250 = fmul fast float %2247, %2243
  %2251 = fmul fast float %2248, %2244
  %2252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2253 = extractvalue %dx.types.CBufRet.f32 %2252, 0
  %2254 = extractvalue %dx.types.CBufRet.f32 %2252, 1
  %2255 = extractvalue %dx.types.CBufRet.f32 %2252, 2
  %2256 = fadd fast float %2249, %2253
  %2257 = fadd fast float %2250, %2254
  %2258 = fadd fast float %2251, %2255
  %2259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2260 = extractvalue %dx.types.CBufRet.f32 %2259, 0
  %2261 = fmul fast float %2260, %2207
  %2262 = extractvalue %dx.types.CBufRet.f32 %2259, 1
  %2263 = fadd fast float %2261, %2262
  %2264 = extractvalue %dx.types.CBufRet.f32 %2259, 2
  %2265 = fmul fast float %2264, %2208
  %2266 = extractvalue %dx.types.CBufRet.f32 %2259, 3
  %2267 = fadd fast float %2265, %2266
  %2268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2269 = extractvalue %dx.types.CBufRet.f32 %2268, 0
  %2270 = extractvalue %dx.types.CBufRet.f32 %2268, 1
  %2271 = extractvalue %dx.types.CBufRet.f32 %2268, 2
  %2272 = extractvalue %dx.types.CBufRet.f32 %2268, 3
  %2273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2274 = extractvalue %dx.types.CBufRet.f32 %2273, 0
  %2275 = extractvalue %dx.types.CBufRet.f32 %2273, 1
  %2276 = extractvalue %dx.types.CBufRet.f32 %2273, 2
  %2277 = extractvalue %dx.types.CBufRet.f32 %2273, 3
  %2278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2263, float %2267, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2279 = extractvalue %dx.types.ResRet.f32 %2278, 0
  %2280 = extractvalue %dx.types.ResRet.f32 %2278, 1
  %2281 = extractvalue %dx.types.ResRet.f32 %2278, 2
  %2282 = extractvalue %dx.types.ResRet.f32 %2278, 3
  %2283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2263, float %2267, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2284 = extractvalue %dx.types.ResRet.f32 %2283, 0
  %2285 = extractvalue %dx.types.ResRet.f32 %2283, 1
  %2286 = extractvalue %dx.types.ResRet.f32 %2283, 2
  %2287 = extractvalue %dx.types.ResRet.f32 %2283, 3
  %2288 = fmul fast float %2279, %2256
  %2289 = fmul fast float %2284, %2256
  %2290 = fmul fast float %2286, %2256
  %2291 = fmul fast float %2282, %2256
  %2292 = fadd fast float %2288, %2269
  %2293 = fadd fast float %2289, %2270
  %2294 = fadd fast float %2290, %2271
  %2295 = fadd fast float %2291, %2272
  %2296 = fmul fast float %2280, %2256
  %2297 = fmul fast float %2285, %2256
  %2298 = fadd fast float %2296, %2274
  %2299 = fadd fast float %2297, %2275
  %2300 = fmul fast float %2281, %2256
  %2301 = fmul fast float %2287, %2256
  %2302 = fadd fast float %2300, %2276
  %2303 = fadd fast float %2301, %2277
  %2304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2263, float %2267, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2305 = extractvalue %dx.types.ResRet.f32 %2304, 0
  %2306 = extractvalue %dx.types.ResRet.f32 %2304, 1
  %2307 = extractvalue %dx.types.ResRet.f32 %2304, 2
  %2308 = extractvalue %dx.types.ResRet.f32 %2304, 3
  %2309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2263, float %2267, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2310 = extractvalue %dx.types.ResRet.f32 %2309, 0
  %2311 = extractvalue %dx.types.ResRet.f32 %2309, 1
  %2312 = extractvalue %dx.types.ResRet.f32 %2309, 2
  %2313 = extractvalue %dx.types.ResRet.f32 %2309, 3
  %2314 = fmul fast float %2305, %2257
  %2315 = fmul fast float %2310, %2257
  %2316 = fmul fast float %2312, %2257
  %2317 = fmul fast float %2308, %2257
  %2318 = fadd fast float %2292, %2314
  %2319 = fadd fast float %2293, %2315
  %2320 = fadd fast float %2294, %2316
  %2321 = fadd fast float %2295, %2317
  %2322 = fmul fast float %2306, %2257
  %2323 = fmul fast float %2311, %2257
  %2324 = fadd fast float %2298, %2322
  %2325 = fadd fast float %2299, %2323
  %2326 = fmul fast float %2307, %2257
  %2327 = fmul fast float %2313, %2257
  %2328 = fadd fast float %2302, %2326
  %2329 = fadd fast float %2303, %2327
  %2330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2263, float %2267, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2331 = extractvalue %dx.types.ResRet.f32 %2330, 0
  %2332 = extractvalue %dx.types.ResRet.f32 %2330, 1
  %2333 = extractvalue %dx.types.ResRet.f32 %2330, 2
  %2334 = extractvalue %dx.types.ResRet.f32 %2330, 3
  %2335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2263, float %2267, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2336 = extractvalue %dx.types.ResRet.f32 %2335, 0
  %2337 = extractvalue %dx.types.ResRet.f32 %2335, 1
  %2338 = extractvalue %dx.types.ResRet.f32 %2335, 2
  %2339 = extractvalue %dx.types.ResRet.f32 %2335, 3
  %2340 = fmul fast float %2331, %2258
  %2341 = fmul fast float %2336, %2258
  %2342 = fmul fast float %2338, %2258
  %2343 = fmul fast float %2334, %2258
  %2344 = fadd fast float %2318, %2340
  %2345 = fadd fast float %2319, %2341
  %2346 = fadd fast float %2320, %2342
  %2347 = fadd fast float %2321, %2343
  %2348 = fmul fast float %2332, %2258
  %2349 = fmul fast float %2337, %2258
  %2350 = fadd fast float %2324, %2348
  %2351 = fadd fast float %2325, %2349
  %2352 = fmul fast float %2333, %2258
  %2353 = fmul fast float %2339, %2258
  %2354 = fadd fast float %2328, %2352
  %2355 = fadd fast float %2329, %2353
  %2356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2357 = extractvalue %dx.types.CBufRet.f32 %2356, 0
  %2358 = fsub fast float %1826, %2357
  %2359 = fsub fast float %2200, %1826
  %2360 = call float @dx.op.binary.f32(i32 35, float %2359, float %2358)  ; FMax(a,b)
  %2361 = extractvalue %dx.types.CBufRet.f32 %2356, 1
  %2362 = fsub fast float %1827, %2361
  %2363 = fsub fast float %2201, %1827
  %2364 = call float @dx.op.binary.f32(i32 35, float %2363, float %2362)  ; FMax(a,b)
  %2365 = call float @dx.op.binary.f32(i32 35, float %2360, float %2364)  ; FMax(a,b)
  %2366 = extractvalue %dx.types.CBufRet.f32 %2204, 3
  %2367 = fmul fast float %2366, %2365
  %2368 = call float @dx.op.unary.f32(i32 7, float %2367)  ; Saturate(value)
  %2369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2369, 0
  %2371 = extractvalue %dx.types.CBufRet.f32 %2369, 1
  %2372 = extractvalue %dx.types.CBufRet.f32 %2369, 2
  %2373 = extractvalue %dx.types.CBufRet.f32 %2369, 3
  %2374 = fsub fast float %2370, %2344
  %2375 = fsub fast float %2371, %2345
  %2376 = fsub fast float %2372, %2346
  %2377 = fsub fast float %2373, %2347
  %2378 = fmul fast float %2374, %2368
  %2379 = fmul fast float %2375, %2368
  %2380 = fmul fast float %2376, %2368
  %2381 = fmul fast float %2377, %2368
  %2382 = fadd fast float %2378, %2344
  %2383 = fadd fast float %2379, %2345
  %2384 = fadd fast float %2380, %2346
  %2385 = fadd fast float %2381, %2347
  %2386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2387 = extractvalue %dx.types.CBufRet.f32 %2386, 0
  %2388 = extractvalue %dx.types.CBufRet.f32 %2386, 1
  %2389 = fsub fast float %2387, %2350
  %2390 = fsub fast float %2388, %2351
  %2391 = fmul fast float %2389, %2368
  %2392 = fmul fast float %2390, %2368
  %2393 = fadd fast float %2391, %2350
  %2394 = fadd fast float %2392, %2351
  %2395 = extractvalue %dx.types.CBufRet.f32 %2386, 2
  %2396 = extractvalue %dx.types.CBufRet.f32 %2386, 3
  %2397 = fsub fast float %2395, %2354
  %2398 = fsub fast float %2396, %2355
  %2399 = fmul fast float %2397, %2368
  %2400 = fmul fast float %2398, %2368
  %2401 = fadd fast float %2399, %2354
  %2402 = fadd fast float %2400, %2355
  %2403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2404 = extractvalue %dx.types.CBufRet.f32 %2403, 0
  %2405 = fmul fast float %2404, %2382
  %2406 = fmul fast float %2404, %2383
  %2407 = fmul fast float %2404, %2384
  %2408 = fmul fast float %2404, %2385
  %2409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2410 = extractvalue %dx.types.CBufRet.f32 %2409, 0
  %2411 = fmul fast float %2410, %2393
  %2412 = fmul fast float %2410, %2394
  %2413 = fadd fast float %2411, %2405
  %2414 = fadd fast float %2412, %2407
  %2415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2416 = extractvalue %dx.types.CBufRet.f32 %2415, 0
  %2417 = fmul fast float %2416, %2401
  %2418 = fmul fast float %2416, %2402
  %2419 = fadd fast float %2413, %2417
  %2420 = fadd fast float %2414, %2418
  %2421 = extractvalue %dx.types.CBufRet.f32 %2403, 1
  %2422 = fmul fast float %2421, %2382
  %2423 = fmul fast float %2421, %2383
  %2424 = fmul fast float %2421, %2384
  %2425 = fmul fast float %2421, %2385
  %2426 = extractvalue %dx.types.CBufRet.f32 %2409, 1
  %2427 = fmul fast float %2426, %2393
  %2428 = fmul fast float %2426, %2394
  %2429 = fadd fast float %2427, %2422
  %2430 = fadd fast float %2428, %2424
  %2431 = extractvalue %dx.types.CBufRet.f32 %2415, 1
  %2432 = fmul fast float %2431, %2401
  %2433 = fmul fast float %2431, %2402
  %2434 = fadd fast float %2429, %2432
  %2435 = fadd fast float %2430, %2433
  %2436 = extractvalue %dx.types.CBufRet.f32 %2403, 2
  %2437 = fmul fast float %2436, %2382
  %2438 = fmul fast float %2436, %2383
  %2439 = fmul fast float %2436, %2384
  %2440 = fmul fast float %2436, %2385
  %2441 = extractvalue %dx.types.CBufRet.f32 %2409, 2
  %2442 = fmul fast float %2441, %2393
  %2443 = fmul fast float %2441, %2394
  %2444 = fadd fast float %2442, %2437
  %2445 = fadd fast float %2443, %2439
  %2446 = extractvalue %dx.types.CBufRet.f32 %2415, 2
  %2447 = fmul fast float %2446, %2401
  %2448 = fmul fast float %2446, %2402
  %2449 = fadd fast float %2444, %2447
  %2450 = fadd fast float %2445, %2448
  %2451 = fmul fast float %2438, %2438
  %2452 = fmul fast float %2450, %2450
  %2453 = fmul fast float %2440, %2440
  %2454 = fadd fast float %2453, %2451
  %2455 = fadd fast float %2454, %2452
  %2456 = call float @dx.op.unary.f32(i32 24, float %2455)  ; Sqrt(value)
  %2457 = fcmp fast ugt float %2456, 0.000000e+00
  br i1 %2457, label %2458, label %2473

; <label>:2458                                    ; preds = %2192
  %2459 = fsub fast float -0.000000e+00, %2440
  %2460 = fdiv fast float %2459, %2456
  %2461 = fsub fast float -0.000000e+00, %2438
  %2462 = fdiv fast float %2461, %2456
  %2463 = fdiv fast float %2450, %2456
  %2464 = fmul fast float %2449, 0x3FE279A760000000
  %2465 = fmul fast float %2462, %2438
  %2466 = fmul fast float %2463, %2450
  %2467 = fmul fast float %2460, %2440
  %2468 = fadd fast float %2465, %2467
  %2469 = fsub fast float %2468, %2466
  %2470 = call float @dx.op.unary.f32(i32 6, float %2469)  ; FAbs(value)
  %2471 = fadd fast float %2470, 0x3DDB7CDFE0000000
  %2472 = fdiv fast float %2464, %2471
  br label %2473

; <label>:2473                                    ; preds = %2458, %2192
  %2474 = phi float [ %2472, %2458 ], [ 1.000000e+00, %2192 ]
  %2475 = fmul fast float %2423, %2423
  %2476 = fmul fast float %2435, %2435
  %2477 = fmul fast float %2425, %2425
  %2478 = fadd fast float %2477, %2475
  %2479 = fadd fast float %2478, %2476
  %2480 = call float @dx.op.unary.f32(i32 24, float %2479)  ; Sqrt(value)
  %2481 = fcmp fast ugt float %2480, 0.000000e+00
  br i1 %2481, label %2482, label %2497

; <label>:2482                                    ; preds = %2473
  %2483 = fsub fast float -0.000000e+00, %2425
  %2484 = fdiv fast float %2483, %2480
  %2485 = fsub fast float -0.000000e+00, %2423
  %2486 = fdiv fast float %2485, %2480
  %2487 = fdiv fast float %2435, %2480
  %2488 = fmul fast float %2434, 0x3FE279A760000000
  %2489 = fmul fast float %2486, %2423
  %2490 = fmul fast float %2487, %2435
  %2491 = fmul fast float %2484, %2425
  %2492 = fadd fast float %2489, %2491
  %2493 = fsub fast float %2492, %2490
  %2494 = call float @dx.op.unary.f32(i32 6, float %2493)  ; FAbs(value)
  %2495 = fadd fast float %2494, 0x3DDB7CDFE0000000
  %2496 = fdiv fast float %2488, %2495
  br label %2497

; <label>:2497                                    ; preds = %2482, %2473
  %2498 = phi float [ %2496, %2482 ], [ 1.000000e+00, %2473 ]
  %2499 = call float @dx.op.binary.f32(i32 36, float %2498, float %2474)  ; FMin(a,b)
  %2500 = fmul fast float %2406, %2406
  %2501 = fmul fast float %2420, %2420
  %2502 = fmul fast float %2408, %2408
  %2503 = fadd fast float %2502, %2500
  %2504 = fadd fast float %2503, %2501
  %2505 = call float @dx.op.unary.f32(i32 24, float %2504)  ; Sqrt(value)
  %2506 = fcmp fast ugt float %2505, 0.000000e+00
  br i1 %2506, label %2507, label %2522

; <label>:2507                                    ; preds = %2497
  %2508 = fsub fast float -0.000000e+00, %2408
  %2509 = fdiv fast float %2508, %2505
  %2510 = fsub fast float -0.000000e+00, %2406
  %2511 = fdiv fast float %2510, %2505
  %2512 = fdiv fast float %2420, %2505
  %2513 = fmul fast float %2419, 0x3FE279A760000000
  %2514 = fmul fast float %2511, %2406
  %2515 = fmul fast float %2512, %2420
  %2516 = fmul fast float %2509, %2408
  %2517 = fadd fast float %2514, %2516
  %2518 = fsub fast float %2517, %2515
  %2519 = call float @dx.op.unary.f32(i32 6, float %2518)  ; FAbs(value)
  %2520 = fadd fast float %2519, 0x3DDB7CDFE0000000
  %2521 = fdiv fast float %2513, %2520
  br label %2522

; <label>:2522                                    ; preds = %2507, %2497
  %2523 = phi float [ %2521, %2507 ], [ 1.000000e+00, %2497 ]
  %2524 = call float @dx.op.binary.f32(i32 36, float %2523, float %2499)  ; FMin(a,b)
  %2525 = call float @dx.op.unary.f32(i32 7, float %2524)  ; Saturate(value)
  %2526 = fcmp fast olt float %2525, 1.000000e+00
  br i1 %2526, label %2527, label %2537

; <label>:2527                                    ; preds = %2522
  %2528 = fmul fast float %2525, %2406
  %2529 = fmul fast float %2525, %2420
  %2530 = fmul fast float %2525, %2408
  %2531 = fmul fast float %2525, %2423
  %2532 = fmul fast float %2525, %2435
  %2533 = fmul fast float %2525, %2425
  %2534 = fmul fast float %2525, %2438
  %2535 = fmul fast float %2525, %2450
  %2536 = fmul fast float %2525, %2440
  br label %2537

; <label>:2537                                    ; preds = %2527, %2522
  %2538 = phi float [ %2534, %2527 ], [ %2438, %2522 ]
  %2539 = phi float [ %2535, %2527 ], [ %2450, %2522 ]
  %2540 = phi float [ %2536, %2527 ], [ %2440, %2522 ]
  %2541 = phi float [ %2531, %2527 ], [ %2423, %2522 ]
  %2542 = phi float [ %2532, %2527 ], [ %2435, %2522 ]
  %2543 = phi float [ %2533, %2527 ], [ %2425, %2522 ]
  %2544 = phi float [ %2528, %2527 ], [ %2406, %2522 ]
  %2545 = phi float [ %2529, %2527 ], [ %2420, %2522 ]
  %2546 = phi float [ %2530, %2527 ], [ %2408, %2522 ]
  %2547 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2419)  ; FMax(a,b)
  %2548 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2434)  ; FMax(a,b)
  %2549 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2449)  ; FMax(a,b)
  %2550 = fcmp fast oge float %2207, 0.000000e+00
  %2551 = and i1 %2550, %1978
  %2552 = fcmp fast ole float %2207, 1.000000e+00
  %2553 = and i1 %2552, %2551
  %2554 = fcmp fast oge float %2208, 0.000000e+00
  %2555 = and i1 %2554, %2553
  %2556 = fcmp fast ole float %2208, 1.000000e+00
  %2557 = and i1 %2556, %2555
  br i1 %2557, label %2558, label %2703, !dx.controlflow.hints !108

; <label>:2558                                    ; preds = %2537
  %2559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2560 = extractvalue %dx.types.CBufRet.f32 %2559, 2
  %2561 = extractvalue %dx.types.CBufRet.f32 %2559, 3
  %2562 = fmul fast float %2560, %2207
  %2563 = fmul fast float %2561, %2208
  %2564 = call float @dx.op.unary.f32(i32 27, float %2562)  ; Round_ni(value)
  %2565 = call float @dx.op.unary.f32(i32 27, float %2563)  ; Round_ni(value)
  %2566 = fptosi float %2564 to i32
  %2567 = fptosi float %2565 to i32
  %2568 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %53, i32 0, i32 %2566, i32 %2567, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = and i32 %2569, 65535
  %2571 = lshr i32 %2569, 16
  %2572 = icmp eq i32 %2570, 65535
  br i1 %2572, label %2609, label %2573

; <label>:2573                                    ; preds = %2558
  %2574 = extractvalue %dx.types.CBufRet.f32 %1976, 1
  %2575 = extractvalue %dx.types.CBufRet.f32 %2559, 0
  %2576 = extractvalue %dx.types.CBufRet.f32 %2559, 1
  %2577 = fmul fast float %2575, %2207
  %2578 = fmul fast float %2576, %2208
  %2579 = fmul fast float %2577, 1.250000e-01
  %2580 = fmul fast float %2578, 1.250000e-01
  %2581 = call float @dx.op.unary.f32(i32 27, float %2579)  ; Round_ni(value)
  %2582 = call float @dx.op.unary.f32(i32 27, float %2580)  ; Round_ni(value)
  %2583 = fmul fast float %2581, 8.000000e+00
  %2584 = fmul fast float %2582, 8.000000e+00
  %2585 = and i32 %2569, 255
  %2586 = lshr i32 %2569, 8
  %2587 = and i32 %2586, 255
  %2588 = mul nuw nsw i32 %2585, 9
  %2589 = uitofp i32 %2588 to float
  %2590 = mul nuw nsw i32 %2587, 9
  %2591 = uitofp i32 %2590 to float
  %2592 = fadd fast float %2589, 5.000000e-01
  %2593 = fadd fast float %2592, %2577
  %2594 = fsub fast float %2593, %2583
  %2595 = fadd fast float %2591, 5.000000e-01
  %2596 = fadd fast float %2595, %2578
  %2597 = fsub fast float %2596, %2584
  %2598 = fdiv fast float %2594, %1977
  %2599 = fdiv fast float %2597, %2574
  %2600 = fmul fast float %2235, 4.375000e-01
  %2601 = fadd fast float %2600, 3.125000e-02
  %2602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %2598, float %2599, float %2601, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2603 = extractvalue %dx.types.ResRet.f32 %2602, 0
  %2604 = extractvalue %dx.types.ResRet.f32 %2602, 1
  %2605 = extractvalue %dx.types.ResRet.f32 %2602, 2
  %2606 = fadd fast float %2603, %2547
  %2607 = fadd fast float %2604, %2548
  %2608 = fadd fast float %2605, %2549
  br label %2609

; <label>:2609                                    ; preds = %2573, %2558
  %2610 = phi float [ %2608, %2573 ], [ %2549, %2558 ]
  %2611 = phi float [ %2607, %2573 ], [ %2548, %2558 ]
  %2612 = phi float [ %2606, %2573 ], [ %2547, %2558 ]
  %2613 = icmp eq i32 %2571, 65535
  br i1 %2613, label %2703, label %2614

; <label>:2614                                    ; preds = %2609
  %2615 = extractvalue %dx.types.CBufRet.f32 %1976, 1
  %2616 = extractvalue %dx.types.CBufRet.f32 %2559, 0
  %2617 = extractvalue %dx.types.CBufRet.f32 %2559, 1
  %2618 = fmul fast float %2616, %2207
  %2619 = fmul fast float %2617, %2208
  %2620 = fmul fast float %2618, 1.250000e-01
  %2621 = fmul fast float %2619, 1.250000e-01
  %2622 = call float @dx.op.unary.f32(i32 27, float %2620)  ; Round_ni(value)
  %2623 = call float @dx.op.unary.f32(i32 27, float %2621)  ; Round_ni(value)
  %2624 = fmul fast float %2622, 8.000000e+00
  %2625 = fmul fast float %2623, 8.000000e+00
  %2626 = fsub fast float %2618, %2624
  %2627 = fsub fast float %2619, %2625
  %2628 = fadd fast float %2626, 5.000000e-01
  %2629 = fadd fast float %2627, 5.000000e-01
  %2630 = and i32 %2571, 255
  %2631 = lshr i32 %2569, 24
  %2632 = mul nuw nsw i32 %2630, 9
  %2633 = uitofp i32 %2632 to float
  %2634 = mul nuw nsw i32 %2631, 9
  %2635 = uitofp i32 %2634 to float
  %2636 = fadd fast float %2628, %2633
  %2637 = fadd fast float %2629, %2635
  %2638 = fdiv fast float %2636, %1977
  %2639 = fdiv fast float %2637, %2615
  %2640 = fmul fast float %2235, 4.375000e-01
  %2641 = fadd fast float %2640, 3.125000e-02
  %2642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %2638, float %2639, float %2641, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2643 = extractvalue %dx.types.ResRet.f32 %2642, 0
  %2644 = extractvalue %dx.types.ResRet.f32 %2642, 1
  %2645 = extractvalue %dx.types.ResRet.f32 %2642, 2
  %2646 = fadd fast float %2640, 5.312500e-01
  %2647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %2638, float %2639, float %2646, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2648 = extractvalue %dx.types.ResRet.f32 %2647, 0
  %2649 = extractvalue %dx.types.ResRet.f32 %2647, 1
  %2650 = extractvalue %dx.types.ResRet.f32 %2647, 2
  %2651 = fmul fast float %2648, 2.000000e+00
  %2652 = fmul fast float %2649, 2.000000e+00
  %2653 = fmul fast float %2650, 2.000000e+00
  %2654 = fadd fast float %2651, -1.000000e+00
  %2655 = fadd fast float %2652, -1.000000e+00
  %2656 = fadd fast float %2653, -1.000000e+00
  %2657 = fmul fast float %2654, %2654
  %2658 = fmul fast float %2655, %2655
  %2659 = fadd fast float %2657, %2658
  %2660 = fmul fast float %2656, %2656
  %2661 = fadd fast float %2659, %2660
  %2662 = call float @dx.op.unary.f32(i32 24, float %2661)  ; Sqrt(value)
  %2663 = fcmp fast ogt float %2662, 0.000000e+00
  br i1 %2663, label %2664, label %2668

; <label>:2664                                    ; preds = %2614
  %2665 = fdiv fast float %2654, %2662
  %2666 = fdiv fast float %2655, %2662
  %2667 = fdiv fast float %2656, %2662
  br label %2668

; <label>:2668                                    ; preds = %2664, %2614
  %2669 = phi float [ %2665, %2664 ], [ 0.000000e+00, %2614 ]
  %2670 = phi float [ %2666, %2664 ], [ 0.000000e+00, %2614 ]
  %2671 = phi float [ %2667, %2664 ], [ 0.000000e+00, %2614 ]
  %2672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2673 = extractvalue %dx.types.CBufRet.f32 %2672, 0
  %2674 = extractvalue %dx.types.CBufRet.f32 %2672, 1
  %2675 = fsub fast float %1826, %2673
  %2676 = fsub fast float %1827, %2674
  %2677 = fmul fast float %2675, %2675
  %2678 = fmul fast float %2676, %2676
  %2679 = fadd fast float %2677, %2678
  %2680 = call float @dx.op.unary.f32(i32 24, float %2679)  ; Sqrt(value)
  %2681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2682 = extractvalue %dx.types.CBufRet.f32 %2681, 0
  %2683 = extractvalue %dx.types.CBufRet.f32 %2681, 1
  %2684 = fsub fast float %2680, %2682
  %2685 = fdiv fast float %2684, %2683
  %2686 = call float @dx.op.unary.f32(i32 7, float %2685)  ; Saturate(value)
  %2687 = fmul fast float %2686, 2.000000e+00
  %2688 = fsub fast float 3.000000e+00, %2687
  %2689 = fmul fast float %2686, %2686
  %2690 = fmul fast float %2689, %2688
  %2691 = call float @dx.op.dot3.f32(i32 55, float %2669, float %2670, float %2671, float %1748, float %1749, float %1750)  ; Dot3(ax,ay,az,bx,by,bz)
  %2692 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2691)  ; FMax(a,b)
  %2693 = fmul fast float %2692, 0x400C5BF8A0000000
  %2694 = fmul fast float %2690, %2643
  %2695 = fmul fast float %2694, %2693
  %2696 = fadd fast float %2695, %2612
  %2697 = fmul fast float %2690, %2644
  %2698 = fmul fast float %2697, %2693
  %2699 = fadd fast float %2698, %2611
  %2700 = fmul fast float %2690, %2645
  %2701 = fmul fast float %2700, %2693
  %2702 = fadd fast float %2701, %2610
  br label %2703

; <label>:2703                                    ; preds = %2668, %2609, %2537
  %2704 = phi float [ %2702, %2668 ], [ %2610, %2609 ], [ %2549, %2537 ]
  %2705 = phi float [ %2699, %2668 ], [ %2611, %2609 ], [ %2548, %2537 ]
  %2706 = phi float [ %2696, %2668 ], [ %2612, %2609 ], [ %2547, %2537 ]
  %2707 = fcmp fast ogt float %2194, %2231
  %2708 = and i1 %2550, %2707
  %2709 = and i1 %2552, %2708
  %2710 = and i1 %2554, %2709
  %2711 = and i1 %2556, %2710
  br i1 %2711, label %2712, label %2769, !dx.controlflow.hints !109

; <label>:2712                                    ; preds = %2703
  %2713 = fmul fast float %2233, 0x3FC24924A0000000
  %2714 = fsub fast float %2194, %2231
  %2715 = fdiv fast float %2714, %2713
  %2716 = call float @dx.op.unary.f32(i32 7, float %2715)  ; Saturate(value)
  %2717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2718 = extractvalue %dx.types.CBufRet.f32 %2717, 0
  %2719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2720 = extractvalue %dx.types.CBufRet.f32 %2719, 0
  %2721 = extractvalue %dx.types.CBufRet.f32 %2719, 1
  %2722 = extractvalue %dx.types.CBufRet.f32 %2719, 2
  %2723 = fsub fast float %2718, %2706
  %2724 = fsub fast float %2720, %2544
  %2725 = fsub fast float %2721, %2545
  %2726 = fsub fast float %2722, %2546
  %2727 = fmul fast float %2723, %2716
  %2728 = fmul fast float %2724, %2716
  %2729 = fmul fast float %2725, %2716
  %2730 = fmul fast float %2726, %2716
  %2731 = fadd fast float %2727, %2706
  %2732 = fadd fast float %2728, %2544
  %2733 = fadd fast float %2729, %2545
  %2734 = fadd fast float %2730, %2546
  %2735 = extractvalue %dx.types.CBufRet.f32 %2717, 1
  %2736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2737 = extractvalue %dx.types.CBufRet.f32 %2736, 0
  %2738 = extractvalue %dx.types.CBufRet.f32 %2736, 1
  %2739 = extractvalue %dx.types.CBufRet.f32 %2736, 2
  %2740 = fsub fast float %2735, %2705
  %2741 = fsub fast float %2737, %2541
  %2742 = fsub fast float %2738, %2542
  %2743 = fsub fast float %2739, %2543
  %2744 = fmul fast float %2740, %2716
  %2745 = fmul fast float %2741, %2716
  %2746 = fmul fast float %2742, %2716
  %2747 = fmul fast float %2743, %2716
  %2748 = fadd fast float %2744, %2705
  %2749 = fadd fast float %2745, %2541
  %2750 = fadd fast float %2746, %2542
  %2751 = fadd fast float %2747, %2543
  %2752 = extractvalue %dx.types.CBufRet.f32 %2717, 2
  %2753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2754 = extractvalue %dx.types.CBufRet.f32 %2753, 0
  %2755 = extractvalue %dx.types.CBufRet.f32 %2753, 1
  %2756 = extractvalue %dx.types.CBufRet.f32 %2753, 2
  %2757 = fsub fast float %2752, %2704
  %2758 = fsub fast float %2754, %2538
  %2759 = fsub fast float %2755, %2539
  %2760 = fsub fast float %2756, %2540
  %2761 = fmul fast float %2757, %2716
  %2762 = fmul fast float %2758, %2716
  %2763 = fmul fast float %2759, %2716
  %2764 = fmul fast float %2760, %2716
  %2765 = fadd fast float %2761, %2704
  %2766 = fadd fast float %2762, %2538
  %2767 = fadd fast float %2763, %2539
  %2768 = fadd fast float %2764, %2540
  br label %2769

; <label>:2769                                    ; preds = %2712, %2703
  %2770 = phi float [ %2765, %2712 ], [ %2704, %2703 ]
  %2771 = phi float [ %2766, %2712 ], [ %2538, %2703 ]
  %2772 = phi float [ %2767, %2712 ], [ %2539, %2703 ]
  %2773 = phi float [ %2768, %2712 ], [ %2540, %2703 ]
  %2774 = phi float [ %2748, %2712 ], [ %2705, %2703 ]
  %2775 = phi float [ %2749, %2712 ], [ %2541, %2703 ]
  %2776 = phi float [ %2750, %2712 ], [ %2542, %2703 ]
  %2777 = phi float [ %2751, %2712 ], [ %2543, %2703 ]
  %2778 = phi float [ %2731, %2712 ], [ %2706, %2703 ]
  %2779 = phi float [ %2732, %2712 ], [ %2544, %2703 ]
  %2780 = phi float [ %2733, %2712 ], [ %2545, %2703 ]
  %2781 = phi float [ %2734, %2712 ], [ %2546, %2703 ]
  %2782 = extractvalue %dx.types.CBufRet.f32 %2356, 3
  %2783 = fmul fast float %2782, %2778
  %2784 = fmul fast float %2782, %2774
  %2785 = fmul fast float %2782, %2770
  %2786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2787 = extractvalue %dx.types.CBufRet.f32 %2786, 3
  %2788 = fmul fast float %2783, %2787
  %2789 = fmul fast float %2784, %2787
  %2790 = fmul fast float %2785, %2787
  %2791 = call float @dx.op.dot3.f32(i32 55, float %2788, float %2789, float %2790, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2792 = fmul fast float %2791, 0x3FD20DD760000000
  %2793 = fmul fast float %2779, 1.500000e+00
  %2794 = fmul fast float %2793, %2782
  %2795 = fmul fast float %2794, %2787
  %2796 = fmul fast float %2780, 1.500000e+00
  %2797 = fmul fast float %2796, %2782
  %2798 = fmul fast float %2797, %2787
  %2799 = fmul fast float %2781, 1.500000e+00
  %2800 = fmul fast float %2799, %2782
  %2801 = fmul fast float %2800, %2787
  %2802 = fmul fast float %2775, 1.500000e+00
  %2803 = fmul fast float %2802, %2782
  %2804 = fmul fast float %2803, %2787
  %2805 = fmul fast float %2776, 1.500000e+00
  %2806 = fmul fast float %2805, %2782
  %2807 = fmul fast float %2806, %2787
  %2808 = fmul fast float %2777, 1.500000e+00
  %2809 = fmul fast float %2808, %2782
  %2810 = fmul fast float %2809, %2787
  %2811 = fmul fast float %2771, 1.500000e+00
  %2812 = fmul fast float %2811, %2782
  %2813 = fmul fast float %2812, %2787
  %2814 = fmul fast float %2772, 1.500000e+00
  %2815 = fmul fast float %2814, %2782
  %2816 = fmul fast float %2815, %2787
  %2817 = fmul fast float %2773, 1.500000e+00
  %2818 = fmul fast float %2817, %2782
  %2819 = fmul fast float %2818, %2787
  %2820 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2788)  ; FMax(a,b)
  %2821 = call float @dx.op.dot3.f32(i32 55, float %2795, float %2798, float %2801, float %2795, float %2798, float %2801)  ; Dot3(ax,ay,az,bx,by,bz)
  %2822 = fcmp fast oeq float %2821, 0.000000e+00
  %2823 = fcmp fast oeq float %2820, 0.000000e+00
  %2824 = or i1 %2823, %2822
  br i1 %2824, label %2854, label %2825

; <label>:2825                                    ; preds = %2769
  %2826 = fsub fast float -0.000000e+00, %2801
  %2827 = fsub fast float -0.000000e+00, %2795
  %2828 = call float @dx.op.unary.f32(i32 24, float %2821)  ; Sqrt(value)
  %2829 = fdiv fast float %2828, %2820
  %2830 = fcmp fast ogt float %2829, 0x3FFB6F8900000000
  %2831 = select i1 %2830, float 0x3FFB6F8900000000, float %2829
  %2832 = fmul fast float %2831, 0x3FE8A23460000000
  %2833 = call float @dx.op.unary.f32(i32 7, float %2832)  ; Saturate(value)
  %2834 = call float @dx.op.binary.f32(i32 35, float %2831, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2835 = fmul fast float %2833, %2820
  %2836 = fmul fast float %2834, 0x3FF279A740000000
  %2837 = fadd fast float %2836, -1.000000e+00
  %2838 = call float @dx.op.dot3.f32(i32 55, float %2826, float %2827, float %2798, float %2826, float %2827, float %2798)  ; Dot3(ax,ay,az,bx,by,bz)
  %2839 = call float @dx.op.unary.f32(i32 25, float %2838)  ; Rsqrt(value)
  %2840 = fmul fast float %2839, %2826
  %2841 = fmul fast float %2839, %2827
  %2842 = fmul fast float %2839, %2798
  %2843 = fmul fast float %2837, %2837
  %2844 = fsub fast float 1.000000e+00, %2843
  %2845 = fmul fast float %2834, 0x40005F8BE0000000
  %2846 = fsub fast float 0x400C5BF8A0000000, %2845
  %2847 = fdiv fast float %2835, %2846
  %2848 = fmul fast float %2847, 0x3FEE31C3C0000000
  %2849 = fmul fast float %2848, %2844
  %2850 = fmul fast float %2834, 0x3FDACB7480000000
  %2851 = fadd fast float %2850, 0xBFD7347680000000
  %2852 = fmul fast float %2851, %2847
  %2853 = fmul fast float %2852, %2844
  br label %2854

; <label>:2854                                    ; preds = %2825, %2769
  %2855 = phi float [ %2840, %2825 ], [ 0.000000e+00, %2769 ]
  %2856 = phi float [ %2841, %2825 ], [ 0.000000e+00, %2769 ]
  %2857 = phi float [ %2842, %2825 ], [ 0.000000e+00, %2769 ]
  %2858 = phi float [ %2849, %2825 ], [ 0.000000e+00, %2769 ]
  %2859 = phi float [ %2853, %2825 ], [ 0.000000e+00, %2769 ]
  %2860 = call float @dx.op.dot3.f32(i32 55, float %2855, float %2856, float %2857, float %1748, float %1749, float %1750)  ; Dot3(ax,ay,az,bx,by,bz)
  %2861 = fmul fast float %2860, %2860
  %2862 = fmul fast float %2861, 0x3FEE471020000000
  %2863 = fadd fast float %2862, 0xBFD42F6020000000
  %2864 = fmul fast float %2820, 0x3FD20DD760000000
  %2865 = fmul fast float %2863, %2859
  %2866 = fmul fast float %2858, 0x3FDF454380000000
  %2867 = fmul fast float %2866, %2860
  %2868 = fadd fast float %2867, %2864
  %2869 = fadd fast float %2868, %2865
  %2870 = call float @dx.op.dot3.f32(i32 55, float %2855, float %2856, float %2857, float %1804, float %1805, float %1806)  ; Dot3(ax,ay,az,bx,by,bz)
  %2871 = fmul fast float %2870, 0x3FDF454380000000
  %2872 = fmul fast float %2870, %2870
  %2873 = fmul fast float %2872, 0x3FEE471020000000
  %2874 = fadd fast float %2873, 0xBFD42F6020000000
  %2875 = call float @dx.op.dot3.f32(i32 55, float %2820, float %2858, float %2859, float 0x3FD20DD760000000, float %2871, float %2874)  ; Dot3(ax,ay,az,bx,by,bz)
  %2876 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2789)  ; FMax(a,b)
  %2877 = call float @dx.op.dot3.f32(i32 55, float %2804, float %2807, float %2810, float %2804, float %2807, float %2810)  ; Dot3(ax,ay,az,bx,by,bz)
  %2878 = fcmp fast oeq float %2877, 0.000000e+00
  %2879 = fcmp fast oeq float %2876, 0.000000e+00
  %2880 = or i1 %2879, %2878
  br i1 %2880, label %2910, label %2881

; <label>:2881                                    ; preds = %2854
  %2882 = fsub fast float -0.000000e+00, %2810
  %2883 = fsub fast float -0.000000e+00, %2804
  %2884 = call float @dx.op.unary.f32(i32 24, float %2877)  ; Sqrt(value)
  %2885 = fdiv fast float %2884, %2876
  %2886 = fcmp fast ogt float %2885, 0x3FFB6F8900000000
  %2887 = select i1 %2886, float 0x3FFB6F8900000000, float %2885
  %2888 = fmul fast float %2887, 0x3FE8A23460000000
  %2889 = call float @dx.op.unary.f32(i32 7, float %2888)  ; Saturate(value)
  %2890 = call float @dx.op.binary.f32(i32 35, float %2887, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2891 = fmul fast float %2889, %2876
  %2892 = fmul fast float %2890, 0x3FF279A740000000
  %2893 = fadd fast float %2892, -1.000000e+00
  %2894 = call float @dx.op.dot3.f32(i32 55, float %2882, float %2883, float %2807, float %2882, float %2883, float %2807)  ; Dot3(ax,ay,az,bx,by,bz)
  %2895 = call float @dx.op.unary.f32(i32 25, float %2894)  ; Rsqrt(value)
  %2896 = fmul fast float %2895, %2882
  %2897 = fmul fast float %2895, %2883
  %2898 = fmul fast float %2895, %2807
  %2899 = fmul fast float %2893, %2893
  %2900 = fsub fast float 1.000000e+00, %2899
  %2901 = fmul fast float %2890, 0x40005F8BE0000000
  %2902 = fsub fast float 0x400C5BF8A0000000, %2901
  %2903 = fdiv fast float %2891, %2902
  %2904 = fmul fast float %2903, 0x3FEE31C3C0000000
  %2905 = fmul fast float %2904, %2900
  %2906 = fmul fast float %2890, 0x3FDACB7480000000
  %2907 = fadd fast float %2906, 0xBFD7347680000000
  %2908 = fmul fast float %2907, %2903
  %2909 = fmul fast float %2908, %2900
  br label %2910

; <label>:2910                                    ; preds = %2881, %2854
  %2911 = phi float [ %2896, %2881 ], [ 0.000000e+00, %2854 ]
  %2912 = phi float [ %2897, %2881 ], [ 0.000000e+00, %2854 ]
  %2913 = phi float [ %2898, %2881 ], [ 0.000000e+00, %2854 ]
  %2914 = phi float [ %2905, %2881 ], [ 0.000000e+00, %2854 ]
  %2915 = phi float [ %2909, %2881 ], [ 0.000000e+00, %2854 ]
  %2916 = call float @dx.op.dot3.f32(i32 55, float %2911, float %2912, float %2913, float %1748, float %1749, float %1750)  ; Dot3(ax,ay,az,bx,by,bz)
  %2917 = fmul fast float %2916, %2916
  %2918 = fmul fast float %2917, 0x3FEE471020000000
  %2919 = fadd fast float %2918, 0xBFD42F6020000000
  %2920 = fmul fast float %2876, 0x3FD20DD760000000
  %2921 = fmul fast float %2919, %2915
  %2922 = fmul fast float %2914, 0x3FDF454380000000
  %2923 = fmul fast float %2922, %2916
  %2924 = fadd fast float %2923, %2920
  %2925 = fadd fast float %2924, %2921
  %2926 = call float @dx.op.dot3.f32(i32 55, float %2911, float %2912, float %2913, float %1804, float %1805, float %1806)  ; Dot3(ax,ay,az,bx,by,bz)
  %2927 = fmul fast float %2926, 0x3FDF454380000000
  %2928 = fmul fast float %2926, %2926
  %2929 = fmul fast float %2928, 0x3FEE471020000000
  %2930 = fadd fast float %2929, 0xBFD42F6020000000
  %2931 = call float @dx.op.dot3.f32(i32 55, float %2876, float %2914, float %2915, float 0x3FD20DD760000000, float %2927, float %2930)  ; Dot3(ax,ay,az,bx,by,bz)
  %2932 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2790)  ; FMax(a,b)
  %2933 = call float @dx.op.dot3.f32(i32 55, float %2813, float %2816, float %2819, float %2813, float %2816, float %2819)  ; Dot3(ax,ay,az,bx,by,bz)
  %2934 = fcmp fast oeq float %2933, 0.000000e+00
  %2935 = fcmp fast oeq float %2932, 0.000000e+00
  %2936 = or i1 %2935, %2934
  br i1 %2936, label %2966, label %2937

; <label>:2937                                    ; preds = %2910
  %2938 = fsub fast float -0.000000e+00, %2819
  %2939 = fsub fast float -0.000000e+00, %2813
  %2940 = call float @dx.op.unary.f32(i32 24, float %2933)  ; Sqrt(value)
  %2941 = fdiv fast float %2940, %2932
  %2942 = fcmp fast ogt float %2941, 0x3FFB6F8900000000
  %2943 = select i1 %2942, float 0x3FFB6F8900000000, float %2941
  %2944 = fmul fast float %2943, 0x3FE8A23460000000
  %2945 = call float @dx.op.unary.f32(i32 7, float %2944)  ; Saturate(value)
  %2946 = call float @dx.op.binary.f32(i32 35, float %2943, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2947 = fmul fast float %2945, %2932
  %2948 = fmul fast float %2946, 0x3FF279A740000000
  %2949 = fadd fast float %2948, -1.000000e+00
  %2950 = call float @dx.op.dot3.f32(i32 55, float %2938, float %2939, float %2816, float %2938, float %2939, float %2816)  ; Dot3(ax,ay,az,bx,by,bz)
  %2951 = call float @dx.op.unary.f32(i32 25, float %2950)  ; Rsqrt(value)
  %2952 = fmul fast float %2951, %2938
  %2953 = fmul fast float %2951, %2939
  %2954 = fmul fast float %2951, %2816
  %2955 = fmul fast float %2949, %2949
  %2956 = fsub fast float 1.000000e+00, %2955
  %2957 = fmul fast float %2946, 0x40005F8BE0000000
  %2958 = fsub fast float 0x400C5BF8A0000000, %2957
  %2959 = fdiv fast float %2947, %2958
  %2960 = fmul fast float %2959, 0x3FEE31C3C0000000
  %2961 = fmul fast float %2960, %2956
  %2962 = fmul fast float %2946, 0x3FDACB7480000000
  %2963 = fadd fast float %2962, 0xBFD7347680000000
  %2964 = fmul fast float %2963, %2959
  %2965 = fmul fast float %2964, %2956
  br label %2966

; <label>:2966                                    ; preds = %2937, %2910
  %2967 = phi float [ %2952, %2937 ], [ 0.000000e+00, %2910 ]
  %2968 = phi float [ %2953, %2937 ], [ 0.000000e+00, %2910 ]
  %2969 = phi float [ %2954, %2937 ], [ 0.000000e+00, %2910 ]
  %2970 = phi float [ %2961, %2937 ], [ 0.000000e+00, %2910 ]
  %2971 = phi float [ %2965, %2937 ], [ 0.000000e+00, %2910 ]
  %2972 = call float @dx.op.dot3.f32(i32 55, float %2967, float %2968, float %2969, float %1748, float %1749, float %1750)  ; Dot3(ax,ay,az,bx,by,bz)
  %2973 = fmul fast float %2972, %2972
  %2974 = fmul fast float %2973, 0x3FEE471020000000
  %2975 = fadd fast float %2974, 0xBFD42F6020000000
  %2976 = fmul fast float %2932, 0x3FD20DD760000000
  %2977 = fmul fast float %2975, %2971
  %2978 = fmul fast float %2970, 0x3FDF454380000000
  %2979 = fmul fast float %2978, %2972
  %2980 = fadd fast float %2979, %2976
  %2981 = fadd fast float %2980, %2977
  %2982 = call float @dx.op.dot3.f32(i32 55, float %2967, float %2968, float %2969, float %1804, float %1805, float %1806)  ; Dot3(ax,ay,az,bx,by,bz)
  %2983 = fmul fast float %2982, 0x3FDF454380000000
  %2984 = fmul fast float %2982, %2982
  %2985 = fmul fast float %2984, 0x3FEE471020000000
  %2986 = fadd fast float %2985, 0xBFD42F6020000000
  %2987 = call float @dx.op.dot3.f32(i32 55, float %2932, float %2970, float %2971, float 0x3FD20DD760000000, float %2983, float %2986)  ; Dot3(ax,ay,az,bx,by,bz)
  %2988 = call float @dx.op.binary.f32(i32 35, float %2869, float 0.000000e+00)  ; FMax(a,b)
  %2989 = call float @dx.op.binary.f32(i32 35, float %2925, float 0.000000e+00)  ; FMax(a,b)
  %2990 = call float @dx.op.binary.f32(i32 35, float %2981, float 0.000000e+00)  ; FMax(a,b)
  %2991 = call float @dx.op.binary.f32(i32 35, float %2875, float 0.000000e+00)  ; FMax(a,b)
  %2992 = call float @dx.op.binary.f32(i32 35, float %2931, float 0.000000e+00)  ; FMax(a,b)
  %2993 = call float @dx.op.binary.f32(i32 35, float %2987, float 0.000000e+00)  ; FMax(a,b)
  %2994 = fsub fast float %2188, %2988
  %2995 = fsub fast float %2189, %2989
  %2996 = fsub fast float %2190, %2990
  %2997 = fmul fast float %2994, %1867
  %2998 = fmul fast float %2995, %1867
  %2999 = fmul fast float %2996, %1867
  %3000 = fadd fast float %2997, %2988
  %3001 = fadd fast float %2998, %2989
  %3002 = fadd fast float %2999, %2990
  %3003 = fsub fast float %2185, %2991
  %3004 = fsub fast float %2186, %2992
  %3005 = fsub fast float %2187, %2993
  %3006 = fmul fast float %3003, %1867
  %3007 = fmul fast float %3004, %1867
  %3008 = fmul fast float %3005, %1867
  %3009 = fadd fast float %3006, %2991
  %3010 = fadd fast float %3007, %2992
  %3011 = fadd fast float %3008, %2993
  %3012 = fsub fast float %1969, %2792
  %3013 = fmul fast float %3012, %1867
  %3014 = fadd fast float %3013, %2792
  br label %3015

; <label>:3015                                    ; preds = %2966, %2184
  %3016 = phi float [ %3014, %2966 ], [ %1969, %2184 ]
  %3017 = phi float [ %3009, %2966 ], [ %2185, %2184 ]
  %3018 = phi float [ %3010, %2966 ], [ %2186, %2184 ]
  %3019 = phi float [ %3011, %2966 ], [ %2187, %2184 ]
  %3020 = phi float [ %3000, %2966 ], [ %2188, %2184 ]
  %3021 = phi float [ %3001, %2966 ], [ %2189, %2184 ]
  %3022 = phi float [ %3002, %2966 ], [ %2190, %2184 ]
  %3023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3024 = extractvalue %dx.types.CBufRet.f32 %3023, 0
  %3025 = call float @dx.op.binary.f32(i32 36, float %1754, float %3024)  ; FMin(a,b)
  %3026 = fmul fast float %3025, %1808
  %3027 = fsub fast float 1.000000e+00, %3026
  %3028 = bitcast float %3027 to i32
  %3029 = sub nsw i32 2129859010, %3028
  %3030 = bitcast i32 %3029 to float
  %3031 = call float @dx.op.binary.f32(i32 36, float %1755, float %3024)  ; FMin(a,b)
  %3032 = fmul fast float %3031, %1808
  %3033 = fsub fast float 1.000000e+00, %3032
  %3034 = bitcast float %3033 to i32
  %3035 = sub nsw i32 2129859010, %3034
  %3036 = bitcast i32 %3035 to float
  %3037 = call float @dx.op.binary.f32(i32 36, float %1756, float %3024)  ; FMin(a,b)
  %3038 = fmul fast float %3037, %1808
  %3039 = fsub fast float 1.000000e+00, %3038
  %3040 = bitcast float %3039 to i32
  %3041 = sub nsw i32 2129859010, %3040
  %3042 = bitcast i32 %3041 to float
  %3043 = fmul fast float %3020, %1807
  %3044 = fmul fast float %3043, %3030
  %3045 = fmul fast float %3021, %1807
  %3046 = fmul fast float %3045, %3036
  %3047 = fmul fast float %3022, %1807
  %3048 = fmul fast float %3047, %3042
  %3049 = call float @dx.op.binary.f32(i32 36, float %1751, float %3024)  ; FMin(a,b)
  %3050 = fmul fast float %3049, %1808
  %3051 = fsub fast float 1.000000e+00, %3050
  %3052 = bitcast float %3051 to i32
  %3053 = sub nsw i32 2129859010, %3052
  %3054 = bitcast i32 %3053 to float
  %3055 = call float @dx.op.binary.f32(i32 36, float %1752, float %3024)  ; FMin(a,b)
  %3056 = fmul fast float %3055, %1808
  %3057 = fsub fast float 1.000000e+00, %3056
  %3058 = bitcast float %3057 to i32
  %3059 = sub nsw i32 2129859010, %3058
  %3060 = bitcast i32 %3059 to float
  %3061 = call float @dx.op.binary.f32(i32 36, float %1796, float %3024)  ; FMin(a,b)
  %3062 = fmul fast float %3061, %1808
  %3063 = fsub fast float 1.000000e+00, %3062
  %3064 = bitcast float %3063 to i32
  %3065 = sub nsw i32 2129859010, %3064
  %3066 = bitcast i32 %3065 to float
  %3067 = fmul fast float %3017, %1807
  %3068 = fmul fast float %3067, %3054
  %3069 = fmul fast float %3018, %1807
  %3070 = fmul fast float %3069, %3060
  %3071 = fmul fast float %3019, %1807
  %3072 = fmul fast float %3071, %3066
  %3073 = call float @dx.op.dot3.f32(i32 55, float %3044, float %3046, float %3048, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3074 = select i1 %239, float 0.000000e+00, float %3044
  %3075 = select i1 %239, float %3073, float %3046
  %3076 = select i1 %239, float 0.000000e+00, float %3048
  %3077 = call float @dx.op.dot3.f32(i32 55, float %3068, float %3070, float %3072, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3078 = select i1 %239, float 0.000000e+00, float %3068
  %3079 = select i1 %239, float %3077, float %3070
  %3080 = select i1 %239, float 0.000000e+00, float %3072
  %3081 = fmul fast float %1090, %1090
  %3082 = call float @dx.op.unary.f32(i32 7, float %3081)  ; Saturate(value)
  %3083 = fmul fast float %1798, 9.843750e-01
  %3084 = fmul fast float %1757, 9.843750e-01
  %3085 = fadd fast float %3083, 7.812500e-03
  %3086 = fadd fast float %3084, 7.812500e-03
  %3087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %3085, float %3086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3088 = extractvalue %dx.types.ResRet.f32 %3087, 0
  %3089 = extractvalue %dx.types.ResRet.f32 %3087, 1
  %3090 = extractvalue %dx.types.ResRet.f32 %3087, 2
  %3091 = extractvalue %dx.types.ResRet.f32 %3087, 3
  %3092 = fsub fast float 1.000000e+00, %3082
  %3093 = fsub fast float %3090, %3088
  %3094 = fsub fast float %3091, %3089
  %3095 = fmul fast float %3093, %3092
  %3096 = fmul fast float %3094, %3092
  %3097 = fadd fast float %3095, %3088
  %3098 = fadd fast float %3096, %3089
  %3099 = fmul fast float %3097, %1751
  %3100 = fmul fast float %3097, %1752
  %3101 = fmul fast float %3097, %1796
  %3102 = fadd fast float %3099, %3098
  %3103 = fadd fast float %3100, %3098
  %3104 = fadd fast float %3101, %3098
  %3105 = call float @dx.op.binary.f32(i32 35, float %3103, float %3104)  ; FMax(a,b)
  %3106 = call float @dx.op.binary.f32(i32 35, float %3102, float %3105)  ; FMax(a,b)
  %3107 = fsub fast float 1.000000e+00, %3106
  %3108 = fmul fast float %3106, %1757
  %3109 = fadd fast float %3108, %1757
  %3110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3111 = extractvalue %dx.types.CBufRet.f32 %3110, 2
  %3112 = extractvalue %dx.types.CBufRet.f32 %3110, 3
  %3113 = fmul fast float %3109, %3111
  %3114 = fadd fast float %3113, %3112
  %3115 = call float @dx.op.unary.f32(i32 7, float %3114)  ; Saturate(value)
  %3116 = fsub fast float 1.000000e+00, %1819
  %3117 = fadd fast float %3116, %3115
  %3118 = call float @dx.op.unary.f32(i32 7, float %3117)  ; Saturate(value)
  %3119 = fcmp fast olt float %3118, 1.000000e+00
  br i1 %3119, label %3120, label %3702

; <label>:3120                                    ; preds = %3015
  %3121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3122 = extractvalue %dx.types.CBufRet.f32 %3121, 2
  %3123 = extractvalue %dx.types.CBufRet.f32 %3121, 3
  %3124 = fmul fast float %3122, %99
  %3125 = fmul fast float %3123, %100
  %3126 = fptoui float %3124 to i32
  %3127 = fptoui float %3125 to i32
  %3128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3129 = extractvalue %dx.types.CBufRet.f32 %3128, 0
  %3130 = extractvalue %dx.types.CBufRet.f32 %3128, 2
  %3131 = extractvalue %dx.types.CBufRet.f32 %3128, 3
  %3132 = fadd fast float %87, -4.000000e+00
  %3133 = call float @dx.op.binary.f32(i32 35, float %3132, float 0.000000e+00)  ; FMax(a,b)
  %3134 = fadd fast float %3133, %3129
  %3135 = fmul fast float %3134, %3130
  %3136 = call float @dx.op.unary.f32(i32 23, float %3135)  ; Log(value)
  %3137 = fmul fast float %3136, %3131
  %3138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3139 = extractvalue %dx.types.CBufRet.f32 %3138, 2
  %3140 = fmul fast float %3137, %3139
  %3141 = call float @dx.op.unary.f32(i32 7, float %3140)  ; Saturate(value)
  %3142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3143 = extractvalue %dx.types.CBufRet.i32 %3142, 1
  %3144 = add i32 %3143, -1
  %3145 = uitofp i32 %3143 to float
  %3146 = fmul fast float %3145, %3141
  %3147 = fptoui float %3146 to i32
  %3148 = call i32 @dx.op.binary.i32(i32 40, i32 %3147, i32 %3144)  ; UMin(a,b)
  %3149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3150 = extractvalue %dx.types.CBufRet.i32 %3149, 2
  %3151 = extractvalue %dx.types.CBufRet.i32 %3149, 3
  %3152 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3127, i32 %3150, i32 %3126)  ; UMad(a,b,c)
  %3153 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3148, i32 %3151, i32 %3152)  ; UMad(a,b,c)
  %3154 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %3155 = fptoui float %3154 to i32
  %3156 = lshr i32 %3155, 5
  %3157 = call i32 @dx.op.binary.i32(i32 40, i32 %3156, i32 8191)  ; UMin(a,b)
  %3158 = fsub fast float %1547, %148
  %3159 = call float @dx.op.unary.f32(i32 7, float %3158)  ; Saturate(value)
  %3160 = fcmp fast ogt float %3159, 0.000000e+00
  %3161 = fcmp fast ogt float %1806, 0.000000e+00
  %3162 = and i1 %3161, %3160
  br i1 %3162, label %3163, label %3192

; <label>:3163                                    ; preds = %3120
  %3164 = call float @dx.op.dot3.f32(i32 55, float %1804, float %1805, float %1806, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3165 = call float @dx.op.binary.f32(i32 35, float %3164, float -1.000000e+00)  ; FMax(a,b)
  %3166 = call float @dx.op.binary.f32(i32 36, float %3165, float 1.000000e+00)  ; FMin(a,b)
  %3167 = fmul fast float %3166, %3166
  %3168 = fsub fast float 1.000000e+00, %3167
  %3169 = fmul fast float %3168, 0x3FFC6E2300000000
  %3170 = fsub fast float 1.000000e+00, %3169
  %3171 = fcmp fast ogt float %3170, 0.000000e+00
  %3172 = call float @dx.op.unary.f32(i32 24, float %3170)  ; Sqrt(value)
  %3173 = fsub fast float 1.000000e+00, %3172
  %3174 = call float @dx.op.unary.f32(i32 23, float %3173)  ; Log(value)
  %3175 = fmul fast float %3174, 5.000000e+00
  %3176 = call float @dx.op.unary.f32(i32 21, float %3175)  ; Exp(value)
  %3177 = fmul fast float %3176, 0x3FEF591A60000000
  %3178 = fadd fast float %3177, 0x3F94DCB540000000
  %3179 = select i1 %3171, float %3178, float 1.000000e+00
  %3180 = fcmp fast oge float %3179, 1.000000e+00
  %3181 = fmul fast float %3164, 2.000000e+00
  %3182 = fadd fast float %3181, %1806
  %3183 = select i1 %3180, float %3182, float %1806
  %3184 = fsub fast float %3183, %1806
  %3185 = fmul fast float %3184, %3159
  %3186 = fadd fast float %3185, %1806
  %3187 = call float @dx.op.dot3.f32(i32 55, float %1804, float %1805, float %3186, float %1804, float %1805, float %3186)  ; Dot3(ax,ay,az,bx,by,bz)
  %3188 = call float @dx.op.unary.f32(i32 25, float %3187)  ; Rsqrt(value)
  %3189 = fmul fast float %3188, %1804
  %3190 = fmul fast float %3188, %1805
  %3191 = fmul fast float %3186, %3188
  br label %3192

; <label>:3192                                    ; preds = %3163, %3120
  %3193 = phi float [ %3189, %3163 ], [ %1804, %3120 ]
  %3194 = phi float [ %3190, %3163 ], [ %1805, %3120 ]
  %3195 = phi float [ %3191, %3163 ], [ %1806, %3120 ]
  %3196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3197 = extractvalue %dx.types.CBufRet.i32 %3196, 2
  %3198 = add nsw i32 %3197, -1
  %3199 = call i32 @dx.op.binary.i32(i32 37, i32 %3198, i32 0)  ; IMax(a,b)
  %3200 = shl i32 %3157, 2
  %3201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3200, i32 undef)  ; BufferLoad(srv,index,wot)
  %3202 = extractvalue %dx.types.ResRet.i32 %3201, 0
  %3203 = lshr i32 %3202, 16
  %3204 = and i32 %3202, 65535
  %3205 = lshr i32 %3202, 21
  %3206 = lshr i32 %3204, 5
  %3207 = call i32 @dx.op.binary.i32(i32 40, i32 %3206, i32 %3199)  ; UMin(a,b)
  %3208 = icmp ugt i32 %3205, %3207
  br i1 %3208, label %3590, label %3209

; <label>:3209                                    ; preds = %3192
  br label %3210

; <label>:3210                                    ; preds = %3579, %3209
  %3211 = phi float [ %3580, %3579 ], [ 0.000000e+00, %3209 ]
  %3212 = phi float [ %3581, %3579 ], [ 0.000000e+00, %3209 ]
  %3213 = phi float [ %3582, %3579 ], [ 0.000000e+00, %3209 ]
  %3214 = phi float [ %3583, %3579 ], [ 1.000000e+00, %3209 ]
  %3215 = phi i32 [ %3587, %3579 ], [ %3205, %3209 ]
  %3216 = phi float [ %3584, %3579 ], [ 0.000000e+00, %3209 ]
  %3217 = phi float [ %3585, %3579 ], [ 0.000000e+00, %3209 ]
  %3218 = phi float [ %3586, %3579 ], [ 0.000000e+00, %3209 ]
  %3219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3220 = extractvalue %dx.types.CBufRet.i32 %3219, 2
  %3221 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3153, i32 %3220, i32 %3215)  ; UMad(a,b,c)
  %3222 = shl i32 %3221, 2
  %3223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3222, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.i32 %3223, 0
  %3225 = shl i32 %3215, 5
  %3226 = sub nsw i32 %3203, %3225
  %3227 = call i32 @dx.op.binary.i32(i32 37, i32 %3226, i32 0)  ; IMax(a,b)
  %3228 = call i32 @dx.op.binary.i32(i32 38, i32 %3227, i32 31)  ; IMin(a,b)
  %3229 = sub nsw i32 1, %3203
  %3230 = add nsw i32 %3229, %3204
  %3231 = call i32 @dx.op.binary.i32(i32 37, i32 %3230, i32 0)  ; IMax(a,b)
  %3232 = call i32 @dx.op.binary.i32(i32 38, i32 %3231, i32 32)  ; IMin(a,b)
  %3233 = and i32 %3232, 31
  %3234 = shl i32 -1, %3233
  %3235 = xor i32 %3234, -1
  %3236 = and i32 %3228, 31
  %3237 = shl i32 %3235, %3236
  %3238 = icmp eq i32 %3232, 32
  %3239 = select i1 %3238, i32 -1, i32 %3237
  %3240 = and i32 %3239, %3224
  %3241 = icmp eq i32 %3240, 0
  br i1 %3241, label %3579, label %3242

; <label>:3242                                    ; preds = %3210
  br label %3243

; <label>:3243                                    ; preds = %3353, %3242
  %3244 = phi float [ %3354, %3353 ], [ %3211, %3242 ]
  %3245 = phi float [ %3355, %3353 ], [ %3212, %3242 ]
  %3246 = phi float [ %3356, %3353 ], [ %3213, %3242 ]
  %3247 = phi float [ %3357, %3353 ], [ %3214, %3242 ]
  %3248 = phi i32 [ %3256, %3353 ], [ %3240, %3242 ]
  %3249 = phi float [ %3358, %3353 ], [ %3216, %3242 ]
  %3250 = phi float [ %3359, %3353 ], [ %3217, %3242 ]
  %3251 = phi float [ %3360, %3353 ], [ %3218, %3242 ]
  %3252 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3248)  ; FirstbitLo(value)
  %3253 = add i32 %3252, %3225
  %3254 = and i32 %3252, 31
  %3255 = shl i32 1, %3254
  %3256 = xor i32 %3255, %3248
  %3257 = mul i32 %3253, 72
  %3258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3257, i32 undef)  ; BufferLoad(srv,index,wot)
  %3259 = extractvalue %dx.types.ResRet.f32 %3258, 0
  %3260 = extractvalue %dx.types.ResRet.f32 %3258, 1
  %3261 = extractvalue %dx.types.ResRet.f32 %3258, 2
  %3262 = add i32 %3257, 12
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = add i32 %3257, 16
  %3266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3265, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.f32 %3266, 0
  %3268 = extractvalue %dx.types.ResRet.f32 %3266, 1
  %3269 = extractvalue %dx.types.ResRet.f32 %3266, 2
  %3270 = add i32 %3257, 28
  %3271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3270, i32 undef)  ; BufferLoad(srv,index,wot)
  %3272 = extractvalue %dx.types.ResRet.f32 %3271, 0
  %3273 = add i32 %3257, 32
  %3274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3273, i32 undef)  ; BufferLoad(srv,index,wot)
  %3275 = extractvalue %dx.types.ResRet.f32 %3274, 0
  %3276 = extractvalue %dx.types.ResRet.f32 %3274, 1
  %3277 = extractvalue %dx.types.ResRet.f32 %3274, 2
  %3278 = extractvalue %dx.types.ResRet.f32 %3274, 3
  %3279 = add i32 %3257, 48
  %3280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3279, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.f32 %3280, 0
  %3282 = extractvalue %dx.types.ResRet.f32 %3280, 1
  %3283 = add i32 %3257, 56
  %3284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3283, i32 undef)  ; BufferLoad(srv,index,wot)
  %3285 = extractvalue %dx.types.ResRet.f32 %3284, 0
  %3286 = extractvalue %dx.types.ResRet.f32 %3284, 1
  %3287 = add i32 %3257, 64
  %3288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3287, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.f32 %3288, 0
  %3290 = extractvalue %dx.types.ResRet.f32 %3288, 1
  %3291 = mul i32 %3253, 60
  %3292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3291, i32 undef)  ; BufferLoad(srv,index,wot)
  %3293 = extractvalue %dx.types.ResRet.f32 %3292, 0
  %3294 = extractvalue %dx.types.ResRet.f32 %3292, 1
  %3295 = extractvalue %dx.types.ResRet.f32 %3292, 2
  %3296 = add i32 %3291, 12
  %3297 = add i32 %3291, 48
  %3298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3297, i32 undef)  ; BufferLoad(srv,index,wot)
  %3299 = extractvalue %dx.types.ResRet.f32 %3298, 0
  %3300 = extractvalue %dx.types.ResRet.f32 %3298, 1
  %3301 = extractvalue %dx.types.ResRet.f32 %3298, 2
  %3302 = and i32 %3264, 32767
  %3303 = bitcast float %3259 to i32
  %3304 = icmp eq i32 %3303, -1
  %3305 = bitcast float %3260 to i32
  %3306 = and i32 %3264, 32768
  %3307 = icmp ne i32 %3306, 0
  %3308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3309 = extractvalue %dx.types.CBufRet.f32 %3308, 0
  %3310 = extractvalue %dx.types.CBufRet.f32 %3308, 1
  %3311 = extractvalue %dx.types.CBufRet.f32 %3308, 2
  %3312 = fsub fast float %3293, %3309
  %3313 = fsub fast float %3294, %3310
  %3314 = fsub fast float %3295, %3311
  %3315 = fsub fast float %146, %3312
  %3316 = fsub fast float %147, %3313
  %3317 = fsub fast float %148, %3314
  %3318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3319 = extractvalue %dx.types.ResRet.f32 %3318, 0
  %3320 = extractvalue %dx.types.ResRet.f32 %3318, 1
  %3321 = extractvalue %dx.types.ResRet.f32 %3318, 2
  %3322 = call float @dx.op.dot3.f32(i32 55, float %3315, float %3316, float %3317, float %3319, float %3320, float %3321)  ; Dot3(ax,ay,az,bx,by,bz)
  %3323 = add i32 %3291, 24
  %3324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3323, i32 undef)  ; BufferLoad(srv,index,wot)
  %3325 = extractvalue %dx.types.ResRet.f32 %3324, 0
  %3326 = extractvalue %dx.types.ResRet.f32 %3324, 1
  %3327 = extractvalue %dx.types.ResRet.f32 %3324, 2
  %3328 = call float @dx.op.dot3.f32(i32 55, float %3315, float %3316, float %3317, float %3325, float %3326, float %3327)  ; Dot3(ax,ay,az,bx,by,bz)
  %3329 = add i32 %3291, 36
  %3330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3329, i32 undef)  ; BufferLoad(srv,index,wot)
  %3331 = extractvalue %dx.types.ResRet.f32 %3330, 0
  %3332 = extractvalue %dx.types.ResRet.f32 %3330, 1
  %3333 = extractvalue %dx.types.ResRet.f32 %3330, 2
  %3334 = call float @dx.op.dot3.f32(i32 55, float %3315, float %3316, float %3317, float %3331, float %3332, float %3333)  ; Dot3(ax,ay,az,bx,by,bz)
  %3335 = call float @dx.op.unary.f32(i32 6, float %3322)  ; FAbs(value)
  %3336 = call float @dx.op.unary.f32(i32 6, float %3328)  ; FAbs(value)
  %3337 = call float @dx.op.unary.f32(i32 6, float %3334)  ; FAbs(value)
  %3338 = fsub fast float %3299, %3335
  %3339 = fsub fast float %3300, %3336
  %3340 = fsub fast float %3301, %3337
  %3341 = fmul fast float %3338, %3267
  %3342 = fmul fast float %3339, %3268
  %3343 = fmul fast float %3340, %3269
  %3344 = call float @dx.op.binary.f32(i32 36, float %3342, float %3343)  ; FMin(a,b)
  %3345 = call float @dx.op.binary.f32(i32 36, float %3341, float %3344)  ; FMin(a,b)
  %3346 = call float @dx.op.unary.f32(i32 7, float %3345)  ; Saturate(value)
  %3347 = call float @dx.op.binary.f32(i32 36, float %3247, float %3346)  ; FMin(a,b)
  %3348 = uitofp i1 %3307 to float
  %3349 = fadd fast float %3159, 1.000000e+00
  %3350 = fsub fast float %3349, %3348
  %3351 = fmul fast float %3347, %3350
  %3352 = fcmp fast ogt float %3351, 0.000000e+00
  br i1 %3352, label %3362, label %3353

; <label>:3353                                    ; preds = %3504, %3243
  %3354 = phi float [ %3568, %3504 ], [ %3244, %3243 ]
  %3355 = phi float [ %3569, %3504 ], [ %3245, %3243 ]
  %3356 = phi float [ %3570, %3504 ], [ %3246, %3243 ]
  %3357 = phi float [ %3577, %3504 ], [ %3247, %3243 ]
  %3358 = phi float [ %3574, %3504 ], [ %3249, %3243 ]
  %3359 = phi float [ %3575, %3504 ], [ %3250, %3243 ]
  %3360 = phi float [ %3576, %3504 ], [ %3251, %3243 ]
  %3361 = icmp eq i32 %3248, %3255
  br i1 %3361, label %3578, label %3243

; <label>:3362                                    ; preds = %3243
  br i1 %3304, label %3420, label %3363

; <label>:3363                                    ; preds = %3362
  %3364 = fsub fast float -0.000000e+00, %3319
  %3365 = fsub fast float -0.000000e+00, %3320
  %3366 = fsub fast float -0.000000e+00, %3321
  %3367 = call float @dx.op.dot3.f32(i32 55, float %3193, float %3194, float %3195, float %3364, float %3365, float %3366)  ; Dot3(ax,ay,az,bx,by,bz)
  %3368 = fsub fast float -0.000000e+00, %3367
  %3369 = call float @dx.op.dot3.f32(i32 55, float %3315, float %3316, float %3317, float %3364, float %3365, float %3366)  ; Dot3(ax,ay,az,bx,by,bz)
  %3370 = fadd fast float %3369, %3282
  %3371 = fadd fast float %3281, %3369
  %3372 = fsub fast float -0.000000e+00, %3371
  %3373 = fcmp ogt float %3367, -0.000000e+00
  %3374 = select i1 %3373, float %3372, float %3370
  %3375 = call float @dx.op.unary.f32(i32 6, float %3368)  ; FAbs(value)
  %3376 = fdiv fast float 1.000000e+00, %3375
  %3377 = fmul fast float %3374, %3376
  %3378 = call float @dx.op.binary.f32(i32 35, float %3377, float 0.000000e+00)  ; FMax(a,b)
  %3379 = fsub fast float -0.000000e+00, %3325
  %3380 = fsub fast float -0.000000e+00, %3326
  %3381 = fsub fast float -0.000000e+00, %3327
  %3382 = call float @dx.op.dot3.f32(i32 55, float %3193, float %3194, float %3195, float %3379, float %3380, float %3381)  ; Dot3(ax,ay,az,bx,by,bz)
  %3383 = fsub fast float -0.000000e+00, %3382
  %3384 = call float @dx.op.dot3.f32(i32 55, float %3315, float %3316, float %3317, float %3379, float %3380, float %3381)  ; Dot3(ax,ay,az,bx,by,bz)
  %3385 = fadd fast float %3384, %3286
  %3386 = fadd fast float %3285, %3384
  %3387 = fsub fast float -0.000000e+00, %3386
  %3388 = fcmp ogt float %3382, -0.000000e+00
  %3389 = select i1 %3388, float %3387, float %3385
  %3390 = call float @dx.op.unary.f32(i32 6, float %3383)  ; FAbs(value)
  %3391 = fdiv fast float 1.000000e+00, %3390
  %3392 = fmul fast float %3389, %3391
  %3393 = call float @dx.op.binary.f32(i32 35, float %3392, float 0.000000e+00)  ; FMax(a,b)
  %3394 = fsub fast float -0.000000e+00, %3331
  %3395 = fsub fast float -0.000000e+00, %3332
  %3396 = fsub fast float -0.000000e+00, %3333
  %3397 = call float @dx.op.dot3.f32(i32 55, float %3193, float %3194, float %3195, float %3394, float %3395, float %3396)  ; Dot3(ax,ay,az,bx,by,bz)
  %3398 = fsub fast float -0.000000e+00, %3397
  %3399 = call float @dx.op.dot3.f32(i32 55, float %3315, float %3316, float %3317, float %3394, float %3395, float %3396)  ; Dot3(ax,ay,az,bx,by,bz)
  %3400 = fadd fast float %3399, %3290
  %3401 = fadd fast float %3289, %3399
  %3402 = fsub fast float -0.000000e+00, %3401
  %3403 = fcmp ogt float %3397, -0.000000e+00
  %3404 = select i1 %3403, float %3402, float %3400
  %3405 = call float @dx.op.unary.f32(i32 6, float %3398)  ; FAbs(value)
  %3406 = fdiv fast float 1.000000e+00, %3405
  %3407 = fmul fast float %3404, %3406
  %3408 = call float @dx.op.binary.f32(i32 35, float %3407, float 0.000000e+00)  ; FMax(a,b)
  %3409 = call float @dx.op.binary.f32(i32 36, float %3393, float %3408)  ; FMin(a,b)
  %3410 = call float @dx.op.binary.f32(i32 36, float %3378, float %3409)  ; FMin(a,b)
  %3411 = fmul fast float %3410, %3193
  %3412 = fmul fast float %3410, %3194
  %3413 = fmul fast float %3410, %3195
  %3414 = fadd fast float %3411, %146
  %3415 = fadd fast float %3412, %147
  %3416 = fadd fast float %3413, %148
  %3417 = fsub fast float %3414, %3259
  %3418 = fsub fast float %3415, %3260
  %3419 = fsub fast float %3416, %3261
  br label %3427

; <label>:3420                                    ; preds = %3362
  %3421 = fmul fast float %3193, 8.096000e+03
  %3422 = fmul fast float %3194, 8.096000e+03
  %3423 = fmul fast float %3195, 8.096000e+03
  %3424 = fadd fast float %3421, %146
  %3425 = fadd fast float %3422, %147
  %3426 = fadd fast float %3423, %148
  br label %3427

; <label>:3427                                    ; preds = %3420, %3363
  %3428 = phi float [ %3193, %3420 ], [ %3417, %3363 ]
  %3429 = phi float [ %3194, %3420 ], [ %3418, %3363 ]
  %3430 = phi float [ %3195, %3420 ], [ %3419, %3363 ]
  %3431 = phi float [ %3424, %3420 ], [ %3414, %3363 ]
  %3432 = phi float [ %3425, %3420 ], [ %3415, %3363 ]
  %3433 = phi float [ %3426, %3420 ], [ %3416, %3363 ]
  %3434 = fcmp fast olt float %3278, 1.000000e+00
  br i1 %3434, label %3435, label %3466, !dx.controlflow.hints !110

; <label>:3435                                    ; preds = %3427
  %3436 = fmul fast float %3430, %3276
  %3437 = fmul fast float %3429, %3277
  %3438 = fsub fast float %3436, %3437
  %3439 = fmul fast float %3428, %3277
  %3440 = fmul fast float %3430, %3275
  %3441 = fsub fast float %3439, %3440
  %3442 = fmul fast float %3429, %3275
  %3443 = fmul fast float %3428, %3276
  %3444 = fsub fast float %3442, %3443
  %3445 = fmul fast float %3438, 2.000000e+00
  %3446 = fmul fast float %3441, 2.000000e+00
  %3447 = fmul fast float %3444, 2.000000e+00
  %3448 = fmul fast float %3445, %3278
  %3449 = fmul fast float %3446, %3278
  %3450 = fmul fast float %3447, %3278
  %3451 = fmul fast float %3447, %3276
  %3452 = fmul fast float %3446, %3277
  %3453 = fmul fast float %3445, %3277
  %3454 = fmul fast float %3447, %3275
  %3455 = fmul fast float %3446, %3275
  %3456 = fmul fast float %3445, %3276
  %3457 = fadd fast float %3451, %3428
  %3458 = fadd fast float %3457, %3448
  %3459 = fsub fast float %3458, %3452
  %3460 = fsub fast float %3429, %3454
  %3461 = fadd fast float %3460, %3449
  %3462 = fadd fast float %3461, %3453
  %3463 = fadd fast float %3450, %3430
  %3464 = fsub fast float %3463, %3456
  %3465 = fadd fast float %3464, %3455
  br label %3466

; <label>:3466                                    ; preds = %3435, %3427
  %3467 = phi float [ %3459, %3435 ], [ %3428, %3427 ]
  %3468 = phi float [ %3462, %3435 ], [ %3429, %3427 ]
  %3469 = phi float [ %3465, %3435 ], [ %3430, %3427 ]
  br i1 %3304, label %3501, label %3470

; <label>:3470                                    ; preds = %3466
  %3471 = fmul fast float %1757, 0x400187C840000000
  %3472 = fadd fast float %3471, 0xC00EFC2120000000
  %3473 = fmul fast float %3472, %1757
  %3474 = fadd fast float %3473, 0x3FE5D16340000000
  %3475 = fmul fast float %3474, %1757
  %3476 = fadd fast float %3475, 1.000000e+00
  %3477 = call float @dx.op.unary.f32(i32 7, float %3476)  ; Saturate(value)
  %3478 = fsub fast float %3431, %146
  %3479 = fsub fast float %3432, %147
  %3480 = fsub fast float %3433, %148
  %3481 = fsub fast float %3431, %3259
  %3482 = fsub fast float %3432, %3260
  %3483 = fsub fast float %3433, %3261
  %3484 = call float @dx.op.dot3.f32(i32 55, float %3478, float %3479, float %3480, float %3478, float %3479, float %3480)  ; Dot3(ax,ay,az,bx,by,bz)
  %3485 = call float @dx.op.dot3.f32(i32 55, float %3481, float %3482, float %3483, float %3481, float %3482, float %3483)  ; Dot3(ax,ay,az,bx,by,bz)
  %3486 = fadd fast float %3485, 0x3EE4F8B580000000
  %3487 = fdiv fast float %3484, %3486
  %3488 = bitcast float %3487 to i32
  %3489 = ashr i32 %3488, 1
  %3490 = add nsw i32 %3489, 532487669
  %3491 = bitcast i32 %3490 to float
  %3492 = fmul fast float %3491, %3477
  %3493 = call float @dx.op.unary.f32(i32 7, float %3492)  ; Saturate(value)
  %3494 = fmul fast float %3493, 0x4009981AE0000000
  %3495 = fsub fast float 0x40111BBD80000000, %3494
  %3496 = fmul fast float %3495, %3493
  %3497 = fadd fast float %3496, 0xC0009F6020000000
  %3498 = fmul fast float %3497, %3493
  %3499 = fadd fast float %3498, 1.000000e+00
  %3500 = call float @dx.op.unary.f32(i32 7, float %3499)  ; Saturate(value)
  br label %3504

; <label>:3501                                    ; preds = %3466
  %3502 = icmp ne i32 %3305, -1
  %3503 = zext i1 %3502 to i32
  br label %3504

; <label>:3504                                    ; preds = %3501, %3470
  %3505 = phi float [ %1757, %3501 ], [ %3500, %3470 ]
  %3506 = phi i32 [ %3503, %3501 ], [ 0, %3470 ]
  %3507 = fmul float %3505, 5.000000e+00
  %3508 = fsub float 5.000000e+00, %3507
  %3509 = icmp ne i32 %3506, 0
  %3510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3511 = extractvalue %dx.types.CBufRet.f32 %3510, 3
  %3512 = fadd fast float %3511, %3508
  %3513 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3512)  ; FMax(a,b)
  %3514 = call float @dx.op.unary.f32(i32 6, float %3467)  ; FAbs(value)
  %3515 = call float @dx.op.unary.f32(i32 6, float %3468)  ; FAbs(value)
  %3516 = fadd fast float %3515, %3514
  %3517 = call float @dx.op.unary.f32(i32 6, float %3469)  ; FAbs(value)
  %3518 = fadd fast float %3516, %3517
  %3519 = fcmp fast oeq float %3518, 0.000000e+00
  %3520 = fdiv fast float 1.000000e+00, %3518
  %3521 = select i1 %3519, float 1.000000e+00, float %3520
  %3522 = fmul fast float %3521, %3467
  %3523 = fmul fast float %3521, %3468
  %3524 = call float @dx.op.unary.f32(i32 6, float %3523)  ; FAbs(value)
  %3525 = call float @dx.op.unary.f32(i32 6, float %3522)  ; FAbs(value)
  %3526 = fsub fast float 1.000000e+00, %3524
  %3527 = fsub fast float 1.000000e+00, %3525
  %3528 = fcmp fast oge float %3522, 0.000000e+00
  %3529 = fcmp fast oge float %3523, 0.000000e+00
  %3530 = select i1 %3528, float 1.000000e+00, float -1.000000e+00
  %3531 = select i1 %3529, float 1.000000e+00, float -1.000000e+00
  %3532 = fcmp fast ole float %3469, 0.000000e+00
  %3533 = fmul fast float %3530, %3526
  %3534 = fmul fast float %3531, %3527
  %3535 = select i1 %3532, float %3533, float %3522
  %3536 = select i1 %3532, float %3534, float %3523
  %3537 = fmul fast float %3535, 5.000000e-01
  %3538 = fmul fast float %3536, 5.000000e-01
  %3539 = fadd fast float %3537, 5.000000e-01
  %3540 = fadd fast float %3538, 5.000000e-01
  %3541 = uitofp i32 %3302 to float
  %3542 = call float @dx.op.binary.f32(i32 36, float %3513, float 3.000000e+00)  ; FMin(a,b)
  %3543 = fadd fast float %3542, 2.000000e+00
  %3544 = call float @dx.op.unary.f32(i32 21, float %3543)  ; Exp(value)
  %3545 = extractvalue %dx.types.CBufRet.f32 %3510, 1
  %3546 = fmul fast float %3545, %3544
  %3547 = fmul fast float %3546, 2.000000e+00
  %3548 = fsub fast float 1.000000e+00, %3547
  %3549 = fmul fast float %3539, %3548
  %3550 = fmul fast float %3540, %3548
  %3551 = fadd fast float %3549, %3546
  %3552 = fadd fast float %3550, %3546
  %3553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %62, float %3551, float %3552, float %3541, float undef, i32 0, i32 0, i32 undef, float %3513)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3554 = extractvalue %dx.types.ResRet.f32 %3553, 0
  %3555 = extractvalue %dx.types.ResRet.f32 %3553, 1
  %3556 = extractvalue %dx.types.ResRet.f32 %3553, 2
  %3557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3558 = extractvalue %dx.types.CBufRet.f32 %3557, 3
  %3559 = fmul fast float %3558, %3272
  %3560 = call float @dx.op.binary.f32(i32 36, float %3016, float %3559)  ; FMin(a,b)
  %3561 = select i1 %3509, float %3560, float %3559
  %3562 = fmul fast float %3554, %3351
  %3563 = fmul fast float %3562, %3561
  %3564 = fmul fast float %3555, %3351
  %3565 = fmul fast float %3564, %3561
  %3566 = fmul fast float %3556, %3351
  %3567 = fmul fast float %3566, %3561
  %3568 = fadd fast float %3563, %3244
  %3569 = fadd fast float %3565, %3245
  %3570 = fadd fast float %3567, %3246
  %3571 = fmul fast float %3431, %3351
  %3572 = fmul fast float %3432, %3351
  %3573 = fmul fast float %3433, %3351
  %3574 = fadd fast float %3571, %3249
  %3575 = fadd fast float %3572, %3250
  %3576 = fadd fast float %3573, %3251
  %3577 = fsub fast float %3247, %3351
  br label %3353

; <label>:3578                                    ; preds = %3353
  br label %3579

; <label>:3579                                    ; preds = %3578, %3210
  %3580 = phi float [ %3211, %3210 ], [ %3354, %3578 ]
  %3581 = phi float [ %3212, %3210 ], [ %3355, %3578 ]
  %3582 = phi float [ %3213, %3210 ], [ %3356, %3578 ]
  %3583 = phi float [ %3214, %3210 ], [ %3357, %3578 ]
  %3584 = phi float [ %3216, %3210 ], [ %3358, %3578 ]
  %3585 = phi float [ %3217, %3210 ], [ %3359, %3578 ]
  %3586 = phi float [ %3218, %3210 ], [ %3360, %3578 ]
  %3587 = add i32 %3215, 1
  %3588 = icmp ugt i32 %3587, %3207
  br i1 %3588, label %3589, label %3210, !llvm.loop !111

; <label>:3589                                    ; preds = %3579
  br label %3590

; <label>:3590                                    ; preds = %3589, %3192
  %3591 = phi float [ 0.000000e+00, %3192 ], [ %3580, %3589 ]
  %3592 = phi float [ 0.000000e+00, %3192 ], [ %3581, %3589 ]
  %3593 = phi float [ 0.000000e+00, %3192 ], [ %3582, %3589 ]
  %3594 = phi float [ 0.000000e+00, %3192 ], [ %3584, %3589 ]
  %3595 = phi float [ 0.000000e+00, %3192 ], [ %3585, %3589 ]
  %3596 = phi float [ 0.000000e+00, %3192 ], [ %3586, %3589 ]
  %3597 = call float @dx.op.dot3.f32(i32 55, float %3591, float %3592, float %3593, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3598 = select i1 %239, float 0.000000e+00, float %3591
  %3599 = select i1 %239, float %3597, float %3592
  %3600 = select i1 %239, float 0.000000e+00, float %3593
  %3601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %3602 = extractvalue %dx.types.CBufRet.f32 %3601, 0
  %3603 = extractvalue %dx.types.CBufRet.f32 %3601, 1
  %3604 = extractvalue %dx.types.CBufRet.f32 %3601, 2
  %3605 = extractvalue %dx.types.CBufRet.f32 %3601, 3
  %3606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %3607 = extractvalue %dx.types.CBufRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.CBufRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.CBufRet.f32 %3606, 2
  %3610 = extractvalue %dx.types.CBufRet.f32 %3606, 3
  %3611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %3612 = extractvalue %dx.types.CBufRet.f32 %3611, 0
  %3613 = extractvalue %dx.types.CBufRet.f32 %3611, 1
  %3614 = extractvalue %dx.types.CBufRet.f32 %3611, 2
  %3615 = extractvalue %dx.types.CBufRet.f32 %3611, 3
  %3616 = call float @dx.op.dot3.f32(i32 55, float %3612, float %3613, float %3614, float %1804, float %1805, float %1806)  ; Dot3(ax,ay,az,bx,by,bz)
  %3617 = call float @dx.op.dot3.f32(i32 55, float %3594, float %3595, float %3596, float %3612, float %3613, float %3614)  ; Dot3(ax,ay,az,bx,by,bz)
  %3618 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %3612, float %3613, float %3614)  ; Dot3(ax,ay,az,bx,by,bz)
  %3619 = fadd fast float %1757, -1.000000e+00
  %3620 = fsub fast float %3617, %3618
  %3621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %3622 = extractvalue %dx.types.CBufRet.f32 %3621, 2
  %3623 = fmul fast float %3622, %3617
  %3624 = fdiv fast float 1.600000e+02, %3623
  %3625 = fmul fast float %3619, %3619
  %3626 = fmul fast float %3625, 0xBFB5B17960000000
  %3627 = fmul fast float %3626, %3620
  %3628 = fmul fast float %3627, %3624
  %3629 = call float @dx.op.unary.f32(i32 21, float %3628)  ; Exp(value)
  %3630 = fmul fast float %3629, 0x3FF04B2960000000
  %3631 = fsub fast float 0x3FF04B2960000000, %3630
  %3632 = call float @dx.op.unary.f32(i32 7, float %3631)  ; Saturate(value)
  %3633 = fmul fast float %3632, 4.000000e+00
  %3634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %3635 = extractvalue %dx.types.CBufRet.f32 %3634, 0
  %3636 = extractvalue %dx.types.CBufRet.f32 %3634, 1
  %3637 = extractvalue %dx.types.CBufRet.f32 %3634, 2
  %3638 = fadd fast float %3635, %3594
  %3639 = fadd fast float %3636, %3595
  %3640 = fadd fast float %3637, %3596
  %3641 = fmul fast float %3638, %3602
  %3642 = call float @dx.op.tertiary.f32(i32 46, float %3639, float %3603, float %3641)  ; FMad(a,b,c)
  %3643 = call float @dx.op.tertiary.f32(i32 46, float %3640, float %3604, float %3642)  ; FMad(a,b,c)
  %3644 = fadd fast float %3643, %3605
  %3645 = fmul fast float %3638, %3607
  %3646 = call float @dx.op.tertiary.f32(i32 46, float %3639, float %3608, float %3645)  ; FMad(a,b,c)
  %3647 = call float @dx.op.tertiary.f32(i32 46, float %3640, float %3609, float %3646)  ; FMad(a,b,c)
  %3648 = fadd fast float %3647, %3610
  %3649 = fmul fast float %3638, %3612
  %3650 = call float @dx.op.tertiary.f32(i32 46, float %3639, float %3613, float %3649)  ; FMad(a,b,c)
  %3651 = call float @dx.op.tertiary.f32(i32 46, float %3640, float %3614, float %3650)  ; FMad(a,b,c)
  %3652 = fadd fast float %3651, %3615
  %3653 = fdiv fast float %3644, %3652
  %3654 = fdiv fast float %3648, %3652
  %3655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3656 = extractvalue %dx.types.CBufRet.f32 %3655, 0
  %3657 = extractvalue %dx.types.CBufRet.f32 %3655, 1
  %3658 = fmul fast float %3656, %3653
  %3659 = fmul fast float %3657, %3654
  %3660 = extractvalue %dx.types.CBufRet.f32 %3655, 2
  %3661 = extractvalue %dx.types.CBufRet.f32 %3655, 3
  %3662 = fadd fast float %3658, %3660
  %3663 = fadd fast float %3659, %3661
  %3664 = fmul fast float %3616, 8.000000e+00
  %3665 = call float @dx.op.unary.f32(i32 7, float %3664)  ; Saturate(value)
  %3666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %3667 = extractvalue %dx.types.CBufRet.f32 %3666, 0
  %3668 = fmul fast float %3662, 2.000000e+00
  %3669 = fmul fast float %3663, 2.000000e+00
  %3670 = fadd fast float %3668, -1.000000e+00
  %3671 = fadd fast float %3669, -1.000000e+00
  %3672 = fmul fast float %3670, %3670
  %3673 = fsub fast float 1.000000e+00, %3672
  %3674 = call float @dx.op.unary.f32(i32 7, float %3673)  ; Saturate(value)
  %3675 = fmul fast float %3671, %3671
  %3676 = fsub fast float 1.000000e+00, %3675
  %3677 = call float @dx.op.unary.f32(i32 7, float %3676)  ; Saturate(value)
  %3678 = fmul fast float %3667, %3674
  %3679 = fmul fast float %3678, %3677
  %3680 = call float @dx.op.unary.f32(i32 7, float %3679)  ; Saturate(value)
  %3681 = fmul fast float %3680, %3665
  %3682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %62, float %3662, float %3663, float undef, float undef, i32 0, i32 0, i32 undef, float %3633)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3683 = extractvalue %dx.types.ResRet.f32 %3682, 0
  %3684 = extractvalue %dx.types.ResRet.f32 %3682, 1
  %3685 = extractvalue %dx.types.ResRet.f32 %3682, 2
  %3686 = select i1 %239, float 0.000000e+00, float %3684
  %3687 = select i1 %239, float 0.000000e+00, float %3685
  %3688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3689 = extractvalue %dx.types.CBufRet.f32 %3688, 2
  %3690 = fmul fast float %3689, %3683
  %3691 = fmul fast float %3686, %3689
  %3692 = fmul fast float %3687, %3689
  %3693 = fsub fast float %3690, %3598
  %3694 = fsub fast float %3691, %3599
  %3695 = fsub fast float %3692, %3600
  %3696 = fmul fast float %3693, %3681
  %3697 = fmul fast float %3694, %3681
  %3698 = fmul fast float %3695, %3681
  %3699 = fadd fast float %3696, %3598
  %3700 = fadd fast float %3697, %3599
  %3701 = fadd fast float %3698, %3600
  br label %3702

; <label>:3702                                    ; preds = %3590, %3015
  %3703 = phi float [ %3078, %3015 ], [ %3699, %3590 ]
  %3704 = phi float [ %3079, %3015 ], [ %3700, %3590 ]
  %3705 = phi float [ %3080, %3015 ], [ %3701, %3590 ]
  %3706 = fmul fast float %3107, %3074
  %3707 = fmul fast float %3107, %3075
  %3708 = fmul fast float %3107, %3076
  %3709 = call float @dx.op.binary.f32(i32 35, float %1798, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3710 = fdiv fast float %1090, %3709
  %3711 = fcmp fast olt float %1166, 1.270000e+02
  %3712 = fcmp fast olt float %1167, 1.270000e+02
  %3713 = fcmp fast olt float %1168, 1.270000e+02
  %3714 = fmul fast float %1166, 0xBFF7154760000000
  %3715 = fmul fast float %3714, %3710
  %3716 = fmul fast float %1167, 0xBFF7154760000000
  %3717 = fmul fast float %3716, %3710
  %3718 = fmul fast float %1168, 0xBFF7154760000000
  %3719 = fmul fast float %3718, %3710
  %3720 = call float @dx.op.unary.f32(i32 21, float %3715)  ; Exp(value)
  %3721 = call float @dx.op.unary.f32(i32 21, float %3717)  ; Exp(value)
  %3722 = call float @dx.op.unary.f32(i32 21, float %3719)  ; Exp(value)
  %3723 = call float @dx.op.unary.f32(i32 7, float %3720)  ; Saturate(value)
  %3724 = call float @dx.op.unary.f32(i32 7, float %3721)  ; Saturate(value)
  %3725 = call float @dx.op.unary.f32(i32 7, float %3722)  ; Saturate(value)
  %3726 = select i1 %3711, float %3723, float 0.000000e+00
  %3727 = select i1 %3712, float %3724, float 0.000000e+00
  %3728 = select i1 %3713, float %3725, float 0.000000e+00
  %3729 = fmul fast float %3726, %3107
  %3730 = fmul fast float %3727, %3107
  %3731 = fmul fast float %3728, %3107
  %3732 = fadd fast float %3729, -1.000000e+00
  %3733 = fadd fast float %3730, -1.000000e+00
  %3734 = fadd fast float %3731, -1.000000e+00
  %3735 = fmul fast float %3732, %1087
  %3736 = fmul fast float %3733, %1087
  %3737 = fmul fast float %3734, %1087
  %3738 = fadd fast float %3735, 1.000000e+00
  %3739 = fadd fast float %3736, 1.000000e+00
  %3740 = fadd fast float %3737, 1.000000e+00
  %3741 = fmul fast float %1752, 0x401CF23780000000
  %3742 = fadd fast float %3741, 0x3FF32641C0000000
  %3743 = fdiv fast float 1.000000e+00, %3742
  %3744 = call float @dx.op.dot3.f32(i32 55, float %1744, float %1743, float %1742, float %1748, float %1749, float %1750)  ; Dot3(ax,ay,az,bx,by,bz)
  %3745 = fmul fast float %3743, %3743
  %3746 = fmul fast float %3744, %3744
  %3747 = fsub fast float 1.000000e+00, %3746
  %3748 = fmul fast float %3745, %3747
  %3749 = fsub fast float 1.000000e+00, %3748
  %3750 = fcmp fast oge float %3749, 0.000000e+00
  %3751 = fmul fast float %3743, %1744
  %3752 = fmul fast float %3743, %1743
  %3753 = fmul fast float %3743, %1742
  %3754 = call float @dx.op.unary.f32(i32 24, float %3749)  ; Sqrt(value)
  %3755 = fmul fast float %3744, %3743
  %3756 = fadd fast float %3755, %3754
  %3757 = fmul fast float %3756, %1748
  %3758 = fmul fast float %3756, %1749
  %3759 = fmul fast float %3756, %1750
  %3760 = fsub fast float %3751, %3757
  %3761 = fsub fast float %3752, %3758
  %3762 = fsub fast float %3753, %3759
  %3763 = select i1 %3750, float %3760, float 0.000000e+00
  %3764 = select i1 %3750, float %3761, float 0.000000e+00
  %3765 = select i1 %3750, float %3762, float 0.000000e+00
  %3766 = fmul fast float %3763, %1090
  %3767 = fmul fast float %3764, %1090
  %3768 = fmul fast float %3765, %1090
  %3769 = fadd fast float %3766, %1793
  %3770 = fadd fast float %3767, %1794
  %3771 = fadd fast float %3768, %1795
  %3772 = call float @dx.op.dot3.f32(i32 55, float %1184, float %1185, float %1186, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3773 = fmul fast float %1813, %1087
  %3774 = fsub fast float 1.000000e+00, %3773
  %3775 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  %3776 = fsub fast float 1.000000e+00, %3775
  %3777 = fmul fast float %1752, 0x4012D0A400000000
  %3778 = fadd fast float %3777, 0x3FDB6377A0000000
  %3779 = fmul fast float %3776, %3778
  %3780 = fadd fast float %3779, %3772
  %3781 = call float @dx.op.unary.f32(i32 7, float %3780)  ; Saturate(value)
  %3782 = fmul fast float %3703, %3102
  %3783 = fmul fast float %3704, %3103
  %3784 = fmul fast float %3705, %3104
  %3785 = fmul fast float %3706, %1087
  %3786 = fmul fast float %3707, %1087
  %3787 = fmul fast float %3708, %1087
  %3788 = fadd fast float %3782, %1080
  %3789 = fadd fast float %3783, %1081
  %3790 = fadd fast float %3784, %1082
  %3791 = fsub fast float 1.000000e+00, %3781
  %3792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %3793 = extractvalue %dx.types.CBufRet.f32 %3792, 0
  %3794 = extractvalue %dx.types.CBufRet.f32 %3792, 1
  %3795 = extractvalue %dx.types.CBufRet.f32 %3792, 2
  %3796 = extractvalue %dx.types.CBufRet.f32 %3792, 3
  %3797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %3798 = extractvalue %dx.types.CBufRet.f32 %3797, 0
  %3799 = extractvalue %dx.types.CBufRet.f32 %3797, 1
  %3800 = extractvalue %dx.types.CBufRet.f32 %3797, 2
  %3801 = extractvalue %dx.types.CBufRet.f32 %3797, 3
  %3802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %3803 = extractvalue %dx.types.CBufRet.f32 %3802, 0
  %3804 = extractvalue %dx.types.CBufRet.f32 %3802, 1
  %3805 = extractvalue %dx.types.CBufRet.f32 %3802, 2
  %3806 = extractvalue %dx.types.CBufRet.f32 %3802, 3
  %3807 = fmul fast float %3769, %3793
  %3808 = call float @dx.op.tertiary.f32(i32 46, float %3770, float %3794, float %3807)  ; FMad(a,b,c)
  %3809 = call float @dx.op.tertiary.f32(i32 46, float %3771, float %3795, float %3808)  ; FMad(a,b,c)
  %3810 = fadd fast float %3809, %3796
  %3811 = fmul fast float %3769, %3798
  %3812 = call float @dx.op.tertiary.f32(i32 46, float %3770, float %3799, float %3811)  ; FMad(a,b,c)
  %3813 = call float @dx.op.tertiary.f32(i32 46, float %3771, float %3800, float %3812)  ; FMad(a,b,c)
  %3814 = fadd fast float %3813, %3801
  %3815 = fmul fast float %3769, %3803
  %3816 = call float @dx.op.tertiary.f32(i32 46, float %3770, float %3804, float %3815)  ; FMad(a,b,c)
  %3817 = call float @dx.op.tertiary.f32(i32 46, float %3771, float %3805, float %3816)  ; FMad(a,b,c)
  %3818 = fadd fast float %3817, %3806
  %3819 = fdiv fast float %3810, %3818
  %3820 = fdiv fast float %3814, %3818
  %3821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3822 = extractvalue %dx.types.CBufRet.f32 %3821, 0
  %3823 = extractvalue %dx.types.CBufRet.f32 %3821, 1
  %3824 = fmul fast float %3822, %3819
  %3825 = fmul fast float %3823, %3820
  %3826 = extractvalue %dx.types.CBufRet.f32 %3821, 2
  %3827 = extractvalue %dx.types.CBufRet.f32 %3821, 3
  %3828 = fadd fast float %3824, %3826
  %3829 = fadd fast float %3825, %3827
  %3830 = call float @dx.op.unary.f32(i32 7, float %3828)  ; Saturate(value)
  %3831 = call float @dx.op.unary.f32(i32 7, float %3829)  ; Saturate(value)
  %3832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3833 = extractvalue %dx.types.CBufRet.f32 %3832, 0
  %3834 = extractvalue %dx.types.CBufRet.f32 %3832, 1
  %3835 = fmul fast float %3833, %3830
  %3836 = fmul fast float %3834, %3831
  %3837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %3838 = extractvalue %dx.types.CBufRet.f32 %3837, 1
  %3839 = extractvalue %dx.types.CBufRet.f32 %3837, 2
  %3840 = fsub fast float %3838, %3839
  %3841 = fmul fast float %3840, %3791
  %3842 = fadd fast float %3841, %3839
  %3843 = fmul fast float %252, 2.000000e+00
  %3844 = fmul fast float %253, 2.000000e+00
  %3845 = fadd fast float %3843, -1.000000e+00
  %3846 = fadd fast float %3844, -1.000000e+00
  %3847 = fmul fast float %3842, %3845
  %3848 = fmul fast float %3842, %3846
  %3849 = fadd fast float %3847, %3835
  %3850 = fadd fast float %3848, %3836
  %3851 = extractvalue %dx.types.CBufRet.f32 %3832, 2
  %3852 = extractvalue %dx.types.CBufRet.f32 %3832, 3
  %3853 = fmul fast float %3849, %3851
  %3854 = fmul fast float %3850, %3852
  %3855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %65, float %3853, float %3854, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3856 = extractvalue %dx.types.ResRet.f32 %3855, 0
  %3857 = fcmp fast ogt float %3856, -1.000000e+00
  %3858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3859 = extractvalue %dx.types.CBufRet.f32 %3858, 1
  %3860 = select i1 %3857, float %3859, float 1.000000e+00
  %3861 = fadd fast float %3856, 1.000000e+00
  %3862 = fmul fast float %3860, %3861
  %3863 = call float @dx.op.unary.f32(i32 6, float %3862)  ; FAbs(value)
  %3864 = fsub fast float %3863, %3818
  %3865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %3866 = extractvalue %dx.types.CBufRet.f32 %3865, 2
  %3867 = fmul fast float %3866, %3863
  %3868 = fdiv fast float 1.600000e+02, %3867
  %3869 = fmul fast float %3781, %3781
  %3870 = fmul fast float %3869, 0xBFB5B17960000000
  %3871 = fmul fast float %3870, %3864
  %3872 = fmul fast float %3871, %3868
  %3873 = call float @dx.op.unary.f32(i32 21, float %3872)  ; Exp(value)
  %3874 = fmul fast float %3873, 0x3FF04B2960000000
  %3875 = fsub fast float 0x3FF04B2960000000, %3874
  %3876 = call float @dx.op.unary.f32(i32 7, float %3875)  ; Saturate(value)
  %3877 = fmul fast float %3876, 4.000000e+00
  %3878 = fadd fast float %252, -5.000000e-01
  %3879 = fadd fast float %253, -5.000000e-01
  %3880 = fmul fast float %3876, 0x3FBEB851E0000000
  %3881 = call float @dx.op.unary.f32(i32 7, float %3880)  ; Saturate(value)
  %3882 = fmul fast float %3881, %3878
  %3883 = fmul fast float %3881, %3879
  %3884 = fadd fast float %3882, %3828
  %3885 = fadd fast float %3883, %3829
  %3886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %3887 = extractvalue %dx.types.CBufRet.i32 %3886, 0
  %3888 = icmp eq i32 %3887, 0
  br i1 %3888, label %3894, label %3889, !dx.controlflow.hints !113

; <label>:3889                                    ; preds = %3702
  %3890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %60, float %3884, float %3885, float undef, float undef, i32 0, i32 0, i32 undef, float %3877)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3891 = extractvalue %dx.types.ResRet.f32 %3890, 0
  %3892 = extractvalue %dx.types.ResRet.f32 %3890, 1
  %3893 = extractvalue %dx.types.ResRet.f32 %3890, 2
  br label %3899

; <label>:3894                                    ; preds = %3702
  %3895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %62, float %3884, float %3885, float undef, float undef, i32 0, i32 0, i32 undef, float %3877)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3896 = extractvalue %dx.types.ResRet.f32 %3895, 0
  %3897 = extractvalue %dx.types.ResRet.f32 %3895, 1
  %3898 = extractvalue %dx.types.ResRet.f32 %3895, 2
  br label %3899

; <label>:3899                                    ; preds = %3894, %3889
  %3900 = phi float [ %3891, %3889 ], [ %3896, %3894 ]
  %3901 = phi float [ %3892, %3889 ], [ %3897, %3894 ]
  %3902 = phi float [ %3893, %3889 ], [ %3898, %3894 ]
  %3903 = select i1 %239, float 0.000000e+00, float %3901
  %3904 = select i1 %239, float 0.000000e+00, float %3902
  %3905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3906 = extractvalue %dx.types.CBufRet.f32 %3905, 1
  %3907 = fmul fast float %3900, %3738
  %3908 = fmul fast float %3907, %3906
  %3909 = fmul fast float %3903, %3739
  %3910 = fmul fast float %3909, %3906
  %3911 = fmul fast float %3904, %3740
  %3912 = fmul fast float %3911, %3906
  %3913 = fadd fast float %3788, %3908
  %3914 = fmul fast float %3913, %1087
  %3915 = fadd fast float %3789, %3910
  %3916 = fmul fast float %3915, %1087
  %3917 = fadd fast float %3790, %3912
  %3918 = fmul fast float %3917, %1087
  %3919 = bitcast i32 %1822 to float
  %3920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3921 = extractvalue %dx.types.CBufRet.f32 %3920, 3
  %3922 = fcmp fast oeq float %3921, 0.000000e+00
  br i1 %3922, label %5502, label %3923

; <label>:3923                                    ; preds = %3899
  %3924 = extractvalue %dx.types.CBufRet.f32 %3920, 0
  %3925 = extractvalue %dx.types.CBufRet.f32 %3920, 1
  %3926 = extractvalue %dx.types.CBufRet.f32 %3920, 2
  %3927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3928 = extractvalue %dx.types.CBufRet.f32 %3927, 0
  %3929 = extractvalue %dx.types.CBufRet.f32 %3927, 1
  %3930 = extractvalue %dx.types.CBufRet.f32 %3927, 2
  %3931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3932 = extractvalue %dx.types.CBufRet.f32 %3931, 0
  %3933 = extractvalue %dx.types.CBufRet.f32 %3931, 1
  %3934 = call float @dx.op.dot3.f32(i32 55, float %3928, float %3929, float %3930, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3935 = select i1 %239, float %3932, float %3928
  %3936 = select i1 %239, float %3934, float %3929
  %3937 = select i1 %239, float %3933, float %3930
  %3938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3939 = extractvalue %dx.types.CBufRet.f32 %3938, 2
  %3940 = fmul fast float %3939, %76
  %3941 = fmul fast float %3939, %77
  %3942 = fmul fast float %3939, %78
  %3943 = fadd fast float %3940, %146
  %3944 = fadd fast float %3941, %147
  %3945 = fadd fast float %3942, %148
  %3946 = fcmp fast olt float %3921, 0.000000e+00
  br i1 %3946, label %5042, label %3947

; <label>:3947                                    ; preds = %3923
  %3948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3949 = extractvalue %dx.types.CBufRet.f32 %3948, 0
  %3950 = extractvalue %dx.types.CBufRet.f32 %3948, 1
  %3951 = extractvalue %dx.types.CBufRet.f32 %3948, 2
  %3952 = extractvalue %dx.types.CBufRet.f32 %3948, 3
  %3953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3954 = extractvalue %dx.types.CBufRet.f32 %3953, 0
  %3955 = extractvalue %dx.types.CBufRet.f32 %3953, 1
  %3956 = extractvalue %dx.types.CBufRet.f32 %3953, 2
  %3957 = extractvalue %dx.types.CBufRet.f32 %3953, 3
  %3958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3959 = extractvalue %dx.types.CBufRet.f32 %3958, 0
  %3960 = extractvalue %dx.types.CBufRet.f32 %3958, 1
  %3961 = extractvalue %dx.types.CBufRet.f32 %3958, 2
  %3962 = extractvalue %dx.types.CBufRet.f32 %3958, 3
  %3963 = fmul fast float %3949, %3943
  %3964 = call float @dx.op.tertiary.f32(i32 46, float %3944, float %3950, float %3963)  ; FMad(a,b,c)
  %3965 = call float @dx.op.tertiary.f32(i32 46, float %3945, float %3951, float %3964)  ; FMad(a,b,c)
  %3966 = fadd fast float %3965, %3952
  %3967 = fmul fast float %3954, %3943
  %3968 = call float @dx.op.tertiary.f32(i32 46, float %3944, float %3955, float %3967)  ; FMad(a,b,c)
  %3969 = call float @dx.op.tertiary.f32(i32 46, float %3945, float %3956, float %3968)  ; FMad(a,b,c)
  %3970 = fadd fast float %3969, %3957
  %3971 = fmul fast float %3959, %3943
  %3972 = call float @dx.op.tertiary.f32(i32 46, float %3944, float %3960, float %3971)  ; FMad(a,b,c)
  %3973 = call float @dx.op.tertiary.f32(i32 46, float %3945, float %3961, float %3972)  ; FMad(a,b,c)
  %3974 = fadd fast float %3973, %3962
  %3975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3976 = extractvalue %dx.types.CBufRet.f32 %3975, 0
  %3977 = extractvalue %dx.types.CBufRet.f32 %3975, 1
  %3978 = extractvalue %dx.types.CBufRet.f32 %3975, 3
  %3979 = fmul fast float %3978, %3966
  %3980 = fmul fast float %3978, %3970
  %3981 = fadd fast float %3979, %3976
  %3982 = fadd fast float %3980, %3977
  %3983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3984 = extractvalue %dx.types.CBufRet.f32 %3983, 0
  %3985 = extractvalue %dx.types.CBufRet.f32 %3983, 1
  %3986 = extractvalue %dx.types.CBufRet.f32 %3983, 3
  %3987 = fmul fast float %3986, %3966
  %3988 = fmul fast float %3986, %3970
  %3989 = fadd fast float %3987, %3984
  %3990 = fadd fast float %3988, %3985
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 1
  %3993 = fsub fast float %3992, %3974
  %3994 = extractvalue %dx.types.CBufRet.f32 %3991, 2
  %3995 = fmul fast float %3993, %3994
  %3996 = fsub fast float 1.000000e+00, %3995
  %3997 = call float @dx.op.unary.f32(i32 7, float %3996)  ; Saturate(value)
  %3998 = extractvalue %dx.types.CBufRet.f32 %3983, 2
  %3999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4000 = extractvalue %dx.types.CBufRet.f32 %3999, 2
  %4001 = fadd fast float %4000, %3998
  %4002 = fcmp fast ogt float %4001, 0.000000e+00
  br i1 %4002, label %4003, label %4027

; <label>:4003                                    ; preds = %3947
  %4004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4005 = extractvalue %dx.types.CBufRet.f32 %4004, 0
  %4006 = extractvalue %dx.types.CBufRet.f32 %4004, 1
  %4007 = fsub fast float %3989, %4005
  %4008 = fsub fast float %3990, %4006
  %4009 = fcmp fast olt float %4007, 0.000000e+00
  %4010 = fcmp fast olt float %4008, 0.000000e+00
  %4011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4012 = extractvalue %dx.types.CBufRet.f32 %4011, 0
  %4013 = extractvalue %dx.types.CBufRet.f32 %4011, 1
  %4014 = extractvalue %dx.types.CBufRet.f32 %4011, 2
  %4015 = extractvalue %dx.types.CBufRet.f32 %4011, 3
  %4016 = select i1 %4009, float %4012, float %4014
  %4017 = select i1 %4010, float %4013, float %4015
  %4018 = fmul fast float %4016, %4007
  %4019 = fmul fast float %4017, %4008
  %4020 = call float @dx.op.unary.f32(i32 6, float %4018)  ; FAbs(value)
  %4021 = call float @dx.op.unary.f32(i32 6, float %4019)  ; FAbs(value)
  %4022 = extractvalue %dx.types.CBufRet.f32 %3938, 0
  %4023 = call float @dx.op.binary.f32(i32 35, float %4020, float %4021)  ; FMax(a,b)
  %4024 = fsub fast float %4022, %4023
  %4025 = call float @dx.op.unary.f32(i32 7, float %4024)  ; Saturate(value)
  %4026 = fmul fast float %4025, %3997
  br label %4027

; <label>:4027                                    ; preds = %4003, %3947
  %4028 = phi float [ %4026, %4003 ], [ 0.000000e+00, %3947 ]
  %4029 = extractvalue %dx.types.CBufRet.f32 %3975, 2
  %4030 = extractvalue %dx.types.CBufRet.f32 %3999, 1
  %4031 = fadd fast float %4030, %4029
  %4032 = fcmp fast ogt float %4031, 0.000000e+00
  %4033 = extractvalue %dx.types.CBufRet.f32 %3938, 0
  br i1 %4032, label %4034, label %4057

; <label>:4034                                    ; preds = %4027
  %4035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4036 = extractvalue %dx.types.CBufRet.f32 %4035, 0
  %4037 = extractvalue %dx.types.CBufRet.f32 %4035, 1
  %4038 = fsub fast float %3981, %4036
  %4039 = fsub fast float %3982, %4037
  %4040 = fcmp fast olt float %4038, 0.000000e+00
  %4041 = fcmp fast olt float %4039, 0.000000e+00
  %4042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4043 = extractvalue %dx.types.CBufRet.f32 %4042, 0
  %4044 = extractvalue %dx.types.CBufRet.f32 %4042, 1
  %4045 = extractvalue %dx.types.CBufRet.f32 %4042, 2
  %4046 = extractvalue %dx.types.CBufRet.f32 %4042, 3
  %4047 = select i1 %4040, float %4043, float %4045
  %4048 = select i1 %4041, float %4044, float %4046
  %4049 = fmul fast float %4047, %4038
  %4050 = fmul fast float %4048, %4039
  %4051 = call float @dx.op.unary.f32(i32 6, float %4049)  ; FAbs(value)
  %4052 = call float @dx.op.unary.f32(i32 6, float %4050)  ; FAbs(value)
  %4053 = call float @dx.op.binary.f32(i32 35, float %4051, float %4052)  ; FMax(a,b)
  %4054 = fsub fast float %4033, %4053
  %4055 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  %4056 = fmul fast float %4055, %3997
  br label %4057

; <label>:4057                                    ; preds = %4034, %4027
  %4058 = phi float [ %4056, %4034 ], [ 0.000000e+00, %4027 ]
  %4059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4060 = extractvalue %dx.types.CBufRet.f32 %4059, 1
  %4061 = call float @dx.op.unary.f32(i32 7, float %4060)  ; Saturate(value)
  %4062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4063 = extractvalue %dx.types.CBufRet.f32 %4062, 0
  %4064 = extractvalue %dx.types.CBufRet.f32 %4062, 1
  %4065 = fsub fast float %3966, %4063
  %4066 = fsub fast float %3970, %4064
  %4067 = fcmp fast olt float %4065, 0.000000e+00
  %4068 = fcmp fast olt float %4066, 0.000000e+00
  %4069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4070 = extractvalue %dx.types.CBufRet.f32 %4069, 0
  %4071 = extractvalue %dx.types.CBufRet.f32 %4069, 1
  %4072 = extractvalue %dx.types.CBufRet.f32 %4069, 2
  %4073 = extractvalue %dx.types.CBufRet.f32 %4069, 3
  %4074 = select i1 %4067, float %4070, float %4072
  %4075 = select i1 %4068, float %4071, float %4073
  %4076 = fmul fast float %4074, %4065
  %4077 = fmul fast float %4075, %4066
  %4078 = call float @dx.op.unary.f32(i32 6, float %4076)  ; FAbs(value)
  %4079 = call float @dx.op.unary.f32(i32 6, float %4077)  ; FAbs(value)
  %4080 = call float @dx.op.binary.f32(i32 35, float %4078, float %4079)  ; FMax(a,b)
  %4081 = fsub fast float %4033, %4080
  %4082 = call float @dx.op.unary.f32(i32 7, float %4081)  ; Saturate(value)
  %4083 = call float @dx.op.binary.f32(i32 36, float %4082, float %4061)  ; FMin(a,b)
  %4084 = fmul fast float %4083, %3997
  %4085 = fsub fast float %4058, %4084
  %4086 = fsub fast float %4028, %4058
  %4087 = fsub fast float %4086, %4084
  %4088 = call float @dx.op.binary.f32(i32 35, float %4058, float %4028)  ; FMax(a,b)
  %4089 = call float @dx.op.binary.f32(i32 35, float %4084, float %4088)  ; FMax(a,b)
  %4090 = fcmp fast olt float %4089, 1.000000e+00
  br i1 %4090, label %4091, label %4489, !dx.controlflow.hints !114

; <label>:4091                                    ; preds = %4057
  %4092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4093 = extractvalue %dx.types.CBufRet.f32 %4092, 0
  %4094 = fcmp fast une float %4093, 0.000000e+00
  br i1 %4094, label %4095, label %4489, !dx.controlflow.hints !115

; <label>:4095                                    ; preds = %4091
  %4096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4097 = extractvalue %dx.types.CBufRet.f32 %4096, 0
  %4098 = extractvalue %dx.types.CBufRet.f32 %4096, 1
  %4099 = extractvalue %dx.types.CBufRet.f32 %4096, 2
  %4100 = extractvalue %dx.types.CBufRet.f32 %4096, 3
  %4101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4102 = extractvalue %dx.types.CBufRet.f32 %4101, 0
  %4103 = extractvalue %dx.types.CBufRet.f32 %4101, 1
  %4104 = extractvalue %dx.types.CBufRet.f32 %4101, 2
  %4105 = extractvalue %dx.types.CBufRet.f32 %4101, 3
  %4106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.f32 %4106, 0
  %4108 = extractvalue %dx.types.CBufRet.f32 %4106, 1
  %4109 = extractvalue %dx.types.CBufRet.f32 %4106, 2
  %4110 = extractvalue %dx.types.CBufRet.f32 %4106, 3
  %4111 = fmul fast float %4097, %3943
  %4112 = call float @dx.op.tertiary.f32(i32 46, float %3944, float %4098, float %4111)  ; FMad(a,b,c)
  %4113 = call float @dx.op.tertiary.f32(i32 46, float %3945, float %4099, float %4112)  ; FMad(a,b,c)
  %4114 = fadd fast float %4113, %4100
  %4115 = fmul fast float %4102, %3943
  %4116 = call float @dx.op.tertiary.f32(i32 46, float %3944, float %4103, float %4115)  ; FMad(a,b,c)
  %4117 = call float @dx.op.tertiary.f32(i32 46, float %3945, float %4104, float %4116)  ; FMad(a,b,c)
  %4118 = fadd fast float %4117, %4105
  %4119 = fmul fast float %4107, %3943
  %4120 = call float @dx.op.tertiary.f32(i32 46, float %3944, float %4108, float %4119)  ; FMad(a,b,c)
  %4121 = call float @dx.op.tertiary.f32(i32 46, float %3945, float %4109, float %4120)  ; FMad(a,b,c)
  %4122 = fadd fast float %4121, %4110
  %4123 = fcmp fast oge float %4114, 1.000000e+00
  %4124 = fcmp fast oge float %4118, 1.000000e+00
  %4125 = or i1 %4123, %4124
  %4126 = fcmp fast olt float %4114, 0.000000e+00
  %4127 = fcmp fast olt float %4118, 0.000000e+00
  %4128 = or i1 %4126, %4127
  %4129 = or i1 %4125, %4128
  br i1 %4129, label %4489, label %4130, !dx.controlflow.hints !116

; <label>:4130                                    ; preds = %4095
  %4131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4132 = extractvalue %dx.types.CBufRet.f32 %4131, 0
  %4133 = extractvalue %dx.types.CBufRet.f32 %4131, 1
  %4134 = extractvalue %dx.types.CBufRet.f32 %4131, 2
  %4135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.i32 %4135, 2
  %4137 = uitofp i32 %4136 to float
  %4138 = extractvalue %dx.types.CBufRet.i32 %4135, 3
  %4139 = uitofp i32 %4138 to float
  %4140 = extractvalue %dx.types.CBufRet.f32 %4131, 3
  %4141 = fmul fast float %4140, 2.000000e+00
  %4142 = fsub fast float %4114, %4132
  %4143 = fsub fast float %4118, %4133
  %4144 = fmul fast float %4141, %4142
  %4145 = fmul fast float %4141, %4143
  %4146 = fdiv fast float 1.000000e+00, %3926
  %4147 = fmul fast float %4145, %4146
  %4148 = call float @dx.op.unary.f32(i32 6, float %4147)  ; FAbs(value)
  %4149 = fmul fast float %4134, %3945
  %4150 = fmul fast float %4149, %4141
  %4151 = call float @dx.op.unary.f32(i32 6, float %4150)  ; FAbs(value)
  %4152 = call float @dx.op.unary.f32(i32 6, float %4144)  ; FAbs(value)
  %4153 = call float @dx.op.binary.f32(i32 35, float %4151, float %4148)  ; FMax(a,b)
  %4154 = call float @dx.op.binary.f32(i32 35, float %4152, float %4153)  ; FMax(a,b)
  %4155 = fmul fast float %4154, 2.000000e+00
  %4156 = call float @dx.op.unary.f32(i32 23, float %4155)  ; Log(value)
  %4157 = call float @dx.op.binary.f32(i32 35, float %4156, float %4137)  ; FMax(a,b)
  %4158 = call float @dx.op.unary.f32(i32 22, float %4157)  ; Frc(value)
  %4159 = fadd fast float %4158, 0xBFEA666660000000
  %4160 = fmul fast float %4159, 8.000000e+00
  %4161 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4162 = call float @dx.op.unary.f32(i32 27, float %4157)  ; Round_ni(value)
  %4163 = fadd fast float %4162, %4161
  %4164 = call float @dx.op.binary.f32(i32 36, float %4163, float %4139)  ; FMin(a,b)
  %4165 = call float @dx.op.unary.f32(i32 27, float %4164)  ; Round_ni(value)
  %4166 = fsub fast float -0.000000e+00, %4165
  %4167 = call float @dx.op.unary.f32(i32 21, float %4166)  ; Exp(value)
  %4168 = fmul fast float %4167, %4141
  %4169 = fmul fast float %4168, %4114
  %4170 = fmul fast float %4168, %4118
  %4171 = fmul fast float %4169, 2.500000e-01
  %4172 = fmul fast float %4170, 2.500000e-01
  %4173 = fadd fast float %4171, 5.000000e-01
  %4174 = fadd fast float %4172, 5.000000e-01
  %4175 = fsub fast float %4139, %4137
  %4176 = fptoui float %4175 to i32
  %4177 = add i32 %4176, 320
  %4178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %4177)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.f32 %4178, 0
  %4180 = extractvalue %dx.types.CBufRet.f32 %4178, 1
  %4181 = fcmp fast une float %4164, %4139
  %4182 = fsub fast float %4114, %4179
  %4183 = fsub fast float %4118, %4180
  %4184 = call float @dx.op.unary.f32(i32 6, float %4182)  ; FAbs(value)
  %4185 = call float @dx.op.unary.f32(i32 6, float %4183)  ; FAbs(value)
  %4186 = fmul fast float %4184, %4168
  %4187 = fmul fast float %4185, %4168
  %4188 = fcmp fast olt float %4186, 1.000000e+00
  %4189 = fcmp fast olt float %4187, 1.000000e+00
  %4190 = and i1 %4188, %4189
  %4191 = or i1 %4181, %4190
  br i1 %4191, label %4192, label %4489, !dx.controlflow.hints !117

; <label>:4192                                    ; preds = %4130
  %4193 = fmul fast float %4170, 5.000000e-01
  %4194 = fmul fast float %4169, 5.000000e-01
  %4195 = fadd fast float %4193, 5.000000e-01
  %4196 = fadd fast float %4194, 5.000000e-01
  %4197 = sitofp i32 %4136 to float
  %4198 = fsub fast float %4164, %4197
  %4199 = call float @dx.op.unary.f32(i32 27, float %4198)  ; Round_ni(value)
  %4200 = call float @dx.op.unary.f32(i32 22, float %4164)  ; Frc(value)
  %4201 = call float @dx.op.unary.f32(i32 22, float %4196)  ; Frc(value)
  %4202 = call float @dx.op.unary.f32(i32 22, float %4195)  ; Frc(value)
  %4203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4201, float %4202, float %4199, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4204 = extractvalue %dx.types.ResRet.f32 %4203, 0
  %4205 = extractvalue %dx.types.ResRet.f32 %4203, 1
  %4206 = extractvalue %dx.types.ResRet.f32 %4203, 2
  %4207 = extractvalue %dx.types.ResRet.f32 %4203, 3
  %4208 = fcmp fast ogt float %4200, 0.000000e+00
  br i1 %4208, label %4209, label %4230, !dx.controlflow.hints !118

; <label>:4209                                    ; preds = %4192
  %4210 = fadd fast float %4199, 1.000000e+00
  %4211 = call float @dx.op.unary.f32(i32 22, float %4173)  ; Frc(value)
  %4212 = call float @dx.op.unary.f32(i32 22, float %4174)  ; Frc(value)
  %4213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4211, float %4212, float %4210, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4214 = extractvalue %dx.types.ResRet.f32 %4213, 0
  %4215 = extractvalue %dx.types.ResRet.f32 %4213, 1
  %4216 = extractvalue %dx.types.ResRet.f32 %4213, 2
  %4217 = extractvalue %dx.types.ResRet.f32 %4213, 3
  %4218 = fsub fast float %4214, %4204
  %4219 = fsub fast float %4215, %4205
  %4220 = fsub fast float %4216, %4206
  %4221 = fsub fast float %4217, %4207
  %4222 = fmul fast float %4218, %4200
  %4223 = fmul fast float %4219, %4200
  %4224 = fmul fast float %4220, %4200
  %4225 = fmul fast float %4221, %4200
  %4226 = fadd fast float %4222, %4204
  %4227 = fadd fast float %4223, %4205
  %4228 = fadd fast float %4224, %4206
  %4229 = fadd fast float %4225, %4207
  br label %4230

; <label>:4230                                    ; preds = %4209, %4192
  %4231 = phi float [ %4226, %4209 ], [ %4204, %4192 ]
  %4232 = phi float [ %4227, %4209 ], [ %4205, %4192 ]
  %4233 = phi float [ %4228, %4209 ], [ %4206, %4192 ]
  %4234 = phi float [ %4229, %4209 ], [ %4207, %4192 ]
  %4235 = fadd fast float %4231, -5.000000e-01
  %4236 = fadd fast float %4233, -5.000000e-01
  %4237 = fmul fast float %4235, 0xBFD5555560000000
  %4238 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4236, float %4237)  ; FMad(a,b,c)
  %4239 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4232, float 0.000000e+00)  ; FMad(a,b,c)
  %4240 = fadd fast float %4239, %4234
  %4241 = fmul fast float %4235, -7.500000e-01
  %4242 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4236, float %4241)  ; FMad(a,b,c)
  %4243 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4232, float 0.000000e+00)  ; FMad(a,b,c)
  %4244 = fadd fast float %4243, %4234
  %4245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.f32 %4245, 0
  %4247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4248 = extractvalue %dx.types.CBufRet.f32 %4247, 0
  %4249 = extractvalue %dx.types.CBufRet.f32 %4247, 1
  %4250 = extractvalue %dx.types.CBufRet.f32 %4247, 2
  %4251 = extractvalue %dx.types.CBufRet.f32 %4247, 3
  %4252 = fsub fast float %4248, %4238
  %4253 = fsub fast float %4249, %4240
  %4254 = fsub fast float %4250, %4242
  %4255 = fsub fast float %4251, %4244
  %4256 = fmul fast float %4252, %4246
  %4257 = fmul fast float %4253, %4246
  %4258 = fmul fast float %4254, %4246
  %4259 = fmul fast float %4255, %4246
  %4260 = fadd fast float %4256, %4238
  %4261 = fadd fast float %4257, %4240
  %4262 = fadd fast float %4258, %4242
  %4263 = fadd fast float %4259, %4244
  %4264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4265 = extractvalue %dx.types.ResRet.i32 %4264, 0
  %4266 = and i32 %4265, 536870911
  %4267 = uitofp i32 %4266 to float
  %4268 = fmul fast float %4267, %4114
  %4269 = fmul fast float %4267, %4118
  %4270 = fptoui float %4268 to i32
  %4271 = fptoui float %4269 to i32
  %4272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4273 = extractvalue %dx.types.ResRet.i32 %4272, 0
  %4274 = and i32 %4273, 31
  %4275 = lshr i32 %4270, %4274
  %4276 = lshr i32 %4271, %4274
  %4277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4278 = extractvalue %dx.types.ResRet.i32 %4277, 0
  %4279 = and i32 %4278, 31
  %4280 = shl i32 1, %4279
  %4281 = call i32 @dx.op.binary.i32(i32 40, i32 %4280, i32 4)  ; UMin(a,b)
  %4282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4283 = extractvalue %dx.types.ResRet.i32 %4282, 0
  %4284 = extractvalue %dx.types.ResRet.i32 %4282, 1
  %4285 = icmp eq i32 %4281, 0
  br i1 %4285, label %4327, label %4286

; <label>:4286                                    ; preds = %4230
  br label %4287

; <label>:4287                                    ; preds = %4315, %4286
  %4288 = phi i32 [ %4318, %4315 ], [ 0, %4286 ]
  %4289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4290 = extractvalue %dx.types.ResRet.i32 %4289, 0
  %4291 = lshr i32 %4290, 16
  %4292 = and i32 %4291, 31
  %4293 = shl i32 %4276, %4292
  %4294 = add i32 %4293, %4275
  %4295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4296 = extractvalue %dx.types.ResRet.i32 %4295, 0
  %4297 = and i32 %4296, 31
  %4298 = shl i32 %4294, %4297
  %4299 = add i32 %4298, %4288
  %4300 = shl i32 %4299, 2
  %4301 = add i32 %4300, 32
  %4302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4301, i32 undef)  ; BufferLoad(srv,index,wot)
  %4303 = extractvalue %dx.types.ResRet.i32 %4302, 0
  %4304 = icmp slt i32 %4303, 0
  %4305 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4288
  %4306 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4288
  %4307 = bitcast float* %4305 to i32*
  %4308 = bitcast float* %4306 to i32*
  br i1 %4304, label %4309, label %4315

; <label>:4309                                    ; preds = %4287
  %4310 = and i32 %4303, 1073741823
  %4311 = add nuw nsw i32 %4310, 20
  %4312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4311, i32 undef)  ; BufferLoad(srv,index,wot)
  %4313 = extractvalue %dx.types.ResRet.i32 %4312, 0
  %4314 = extractvalue %dx.types.ResRet.i32 %4312, 1
  br label %4315

; <label>:4315                                    ; preds = %4309, %4287
  %4316 = phi i32 [ %4313, %4309 ], [ %4283, %4287 ]
  %4317 = phi i32 [ %4314, %4309 ], [ %4284, %4287 ]
  store i32 %4316, i32* %4307, align 4
  store i32 %4317, i32* %4308, align 4
  %4318 = add nuw i32 %4288, 1
  %4319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.i32 %4319, 2
  %4321 = icmp eq i32 %4320, 0
  %4322 = icmp ugt i32 %4303, -1073741825
  %4323 = and i1 %4322, %4321
  %4324 = icmp ult i32 %4318, %4281
  %4325 = and i1 %4323, %4324
  br i1 %4325, label %4287, label %4326

; <label>:4326                                    ; preds = %4315
  br label %4327

; <label>:4327                                    ; preds = %4326, %4230
  %4328 = phi i32 [ 0, %4230 ], [ %4318, %4326 ]
  %4329 = extractvalue %dx.types.CBufRet.f32 %4092, 2
  %4330 = fptoui float %4329 to i32
  %4331 = icmp eq i32 %4330, 0
  br i1 %4331, label %4383, label %4332

; <label>:4332                                    ; preds = %4327
  br label %4333

; <label>:4333                                    ; preds = %4378, %4332
  %4334 = phi i32 [ %4379, %4378 ], [ %4328, %4332 ]
  %4335 = phi i32 [ %4380, %4378 ], [ 0, %4332 ]
  %4336 = lshr i32 %4335, 2
  %4337 = and i32 %4335, 3
  %4338 = add nuw nsw i32 %4336, 83
  %4339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 %4338)  ; CBufferLoadLegacy(handle,regIndex)
  %4340 = extractvalue %dx.types.CBufRet.i32 %4339, 0
  %4341 = extractvalue %dx.types.CBufRet.i32 %4339, 1
  %4342 = extractvalue %dx.types.CBufRet.i32 %4339, 2
  %4343 = extractvalue %dx.types.CBufRet.i32 %4339, 3
  %4344 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %4340, i32* %4344, align 4
  %4345 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %4341, i32* %4345, align 4
  %4346 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %4342, i32* %4346, align 4
  %4347 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %4343, i32* %4347, align 4
  %4348 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %4337
  %4349 = load i32, i32* %4348, align 4, !tbaa !119, !noalias !123
  %4350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4351 = extractvalue %dx.types.ResRet.i32 %4350, 0
  %4352 = lshr i32 %4351, 16
  %4353 = and i32 %4352, 31
  %4354 = shl i32 %4276, %4353
  %4355 = add i32 %4354, %4275
  %4356 = shl i32 %4355, 2
  %4357 = add i32 %4356, %4349
  %4358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4357, i32 undef)  ; BufferLoad(srv,index,wot)
  %4359 = extractvalue %dx.types.ResRet.i32 %4358, 0
  %4360 = icmp eq i32 %4359, 0
  br i1 %4360, label %4378, label %4361

; <label>:4361                                    ; preds = %4333
  %4362 = icmp slt i32 %4359, 0
  %4363 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4334
  %4364 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4334
  %4365 = bitcast float* %4363 to i32*
  %4366 = bitcast float* %4364 to i32*
  br i1 %4362, label %4367, label %4374

; <label>:4367                                    ; preds = %4361
  %4368 = and i32 %4359, 1073741823
  %4369 = add i32 %4349, 20
  %4370 = add i32 %4369, %4368
  %4371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4372 = extractvalue %dx.types.ResRet.i32 %4371, 0
  %4373 = extractvalue %dx.types.ResRet.i32 %4371, 1
  br label %4374

; <label>:4374                                    ; preds = %4367, %4361
  %4375 = phi i32 [ %4372, %4367 ], [ %4283, %4361 ]
  %4376 = phi i32 [ %4373, %4367 ], [ %4284, %4361 ]
  store i32 %4375, i32* %4365, align 4
  store i32 %4376, i32* %4366, align 4
  %4377 = add i32 %4334, 1
  br label %4378

; <label>:4378                                    ; preds = %4374, %4333
  %4379 = phi i32 [ %4334, %4333 ], [ %4377, %4374 ]
  %4380 = add nuw i32 %4335, 1
  %4381 = icmp eq i32 %4380, %4330
  br i1 %4381, label %4382, label %4333

; <label>:4382                                    ; preds = %4378
  br label %4383

; <label>:4383                                    ; preds = %4382, %4327
  %4384 = phi i32 [ %4328, %4327 ], [ %4379, %4382 ]
  %4385 = icmp eq i32 %4384, 1
  %4386 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  %4387 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  br i1 %4385, label %4388, label %4391

; <label>:4388                                    ; preds = %4383
  %4389 = load float, float* %4386, align 4
  %4390 = load float, float* %4387, align 4
  br label %4418

; <label>:4391                                    ; preds = %4383
  %4392 = load float, float* %4386, align 4
  %4393 = load float, float* %4387, align 4
  %4394 = fdiv fast float 1.000000e+00, %4393
  %4395 = fsub fast float %4392, %4394
  %4396 = icmp ugt i32 %4384, 1
  br i1 %4396, label %4397, label %4413

; <label>:4397                                    ; preds = %4391
  br label %4398

; <label>:4398                                    ; preds = %4398, %4397
  %4399 = phi float [ %4408, %4398 ], [ %4395, %4397 ]
  %4400 = phi float [ %4409, %4398 ], [ %4392, %4397 ]
  %4401 = phi i32 [ %4410, %4398 ], [ 1, %4397 ]
  %4402 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4401
  %4403 = load float, float* %4402, align 4
  %4404 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4401
  %4405 = load float, float* %4404, align 4
  %4406 = fdiv fast float 1.000000e+00, %4405
  %4407 = fsub fast float %4403, %4406
  %4408 = call float @dx.op.binary.f32(i32 36, float %4399, float %4407)  ; FMin(a,b)
  %4409 = call float @dx.op.binary.f32(i32 35, float %4400, float %4403)  ; FMax(a,b)
  %4410 = add nuw i32 %4401, 1
  %4411 = icmp eq i32 %4410, %4384
  br i1 %4411, label %4412, label %4398

; <label>:4412                                    ; preds = %4398
  br label %4413

; <label>:4413                                    ; preds = %4412, %4391
  %4414 = phi float [ %4395, %4391 ], [ %4408, %4412 ]
  %4415 = phi float [ %4392, %4391 ], [ %4409, %4412 ]
  %4416 = fsub fast float %4415, %4414
  %4417 = fdiv fast float 1.000000e+00, %4416
  br label %4418

; <label>:4418                                    ; preds = %4413, %4388
  %4419 = phi float [ %4389, %4388 ], [ %4415, %4413 ]
  %4420 = phi float [ %4390, %4388 ], [ %4417, %4413 ]
  %4421 = fadd fast float %4122, %4419
  %4422 = fmul fast float %4421, %4420
  %4423 = call float @dx.op.unary.f32(i32 7, float %4422)  ; Saturate(value)
  %4424 = fmul fast float %4423, 2.000000e+00
  %4425 = fsub fast float 1.000000e+00, %4424
  %4426 = fmul fast float %4260, %4260
  %4427 = fsub fast float %4261, %4426
  %4428 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4427)  ; FMax(a,b)
  %4429 = fdiv fast float 1.000000e+00, %4428
  %4430 = fmul fast float %4261, %4260
  %4431 = fsub fast float %4262, %4430
  %4432 = fsub fast float %4425, %4260
  %4433 = fmul fast float %4425, %4425
  %4434 = fsub fast float %4433, %4261
  %4435 = fmul fast float %4429, %4431
  %4436 = fmul fast float %4435, %4432
  %4437 = fsub fast float %4434, %4436
  %4438 = fmul fast float %4261, %4261
  %4439 = fsub fast float %4263, %4438
  %4440 = fmul fast float %4431, %4431
  %4441 = fmul fast float %4440, %4429
  %4442 = fsub fast float %4439, %4441
  %4443 = fdiv fast float %4437, %4442
  %4444 = fmul fast float %4443, %4431
  %4445 = fsub fast float %4432, %4444
  %4446 = fmul fast float %4445, %4429
  %4447 = fmul fast float %4446, %4260
  %4448 = fsub fast float 1.000000e+00, %4447
  %4449 = fmul fast float %4443, %4261
  %4450 = fsub fast float %4448, %4449
  %4451 = fmul fast float %4446, %4446
  %4452 = fmul fast float %4443, 4.000000e+00
  %4453 = fmul fast float %4452, %4450
  %4454 = fsub fast float %4451, %4453
  %4455 = call float @dx.op.unary.f32(i32 24, float %4454)  ; Sqrt(value)
  %4456 = fcmp fast oge float %4446, 0.000000e+00
  %4457 = fsub fast float -0.000000e+00, %4455
  %4458 = select i1 %4456, float %4457, float %4455
  %4459 = fsub fast float %4458, %4446
  %4460 = fdiv fast float %4459, %4443
  %4461 = fdiv fast float %4450, %4459
  %4462 = fmul fast float %4460, 5.000000e-01
  %4463 = fmul fast float %4461, 2.000000e+00
  %4464 = select i1 %4456, float %4462, float %4463
  %4465 = select i1 %4456, float %4463, float %4462
  %4466 = call float @dx.op.binary.f32(i32 35, float %4464, float %4465)  ; FMax(a,b)
  %4467 = call float @dx.op.binary.f32(i32 36, float %4464, float %4465)  ; FMin(a,b)
  %4468 = fcmp fast ogt float %4425, %4466
  %4469 = fsub fast float %4425, %4467
  %4470 = fsub fast float %4425, %4466
  %4471 = fsub fast float %4466, %4467
  %4472 = select i1 %4468, float %4470, float %4471
  %4473 = fmul float %4469, %4472
  %4474 = select i1 %4468, float %4467, float %4425
  %4475 = fcmp fast ogt float %4425, %4467
  %4476 = fmul fast float %4474, %4466
  %4477 = fadd fast float %4474, %4466
  %4478 = fmul fast float %4477, %4260
  %4479 = fadd fast float %4476, %4261
  %4480 = fsub fast float %4479, %4478
  %4481 = fdiv fast float %4480, %4473
  %4482 = select i1 %4475, float %4481, float 0.000000e+00
  %4483 = fsub fast float 1.000000e+00, %4482
  %4484 = select i1 %4468, float %4483, float %4482
  %4485 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4486 = extractvalue %dx.types.CBufRet.f32 %4245, 3
  %4487 = fmul fast float %4486, %4485
  %4488 = fsub fast float 1.000000e+00, %4487
  br label %4489

; <label>:4489                                    ; preds = %4418, %4130, %4095, %4091, %4057
  %4490 = phi float [ 1.000000e+00, %4057 ], [ %4488, %4418 ], [ 1.000000e+00, %4095 ], [ 1.000000e+00, %4130 ], [ 1.000000e+00, %4091 ]
  %4491 = fcmp fast ogt float %4087, 0.000000e+00
  br i1 %4491, label %4492, label %4654, !dx.controlflow.hints !132

; <label>:4492                                    ; preds = %4489
  %4493 = fadd fast float %4000, %3974
  %4494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4495 = extractvalue %dx.types.CBufRet.f32 %4494, 2
  %4496 = extractvalue %dx.types.CBufRet.f32 %4494, 3
  %4497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4498 = extractvalue %dx.types.CBufRet.f32 %4497, 2
  %4499 = call float @dx.op.binary.f32(i32 35, float %4493, float 0.000000e+00)  ; FMax(a,b)
  %4500 = fadd fast float %4499, 0x3F10000000000000
  %4501 = fcmp fast oeq float %4498, 0.000000e+00
  br i1 %4501, label %4502, label %4569

; <label>:4502                                    ; preds = %4492
  %4503 = extractvalue %dx.types.CBufRet.f32 %4494, 1
  %4504 = extractvalue %dx.types.CBufRet.f32 %4494, 0
  %4505 = fmul fast float %4504, %3989
  %4506 = fmul fast float %4503, %3990
  %4507 = fadd fast float %4505, 5.000000e-01
  %4508 = call float @dx.op.unary.f32(i32 27, float %4507)  ; Round_ni(value)
  %4509 = fadd fast float %4506, 5.000000e-01
  %4510 = call float @dx.op.unary.f32(i32 27, float %4509)  ; Round_ni(value)
  %4511 = fsub fast float %4507, %4508
  %4512 = fsub fast float %4509, %4510
  %4513 = fadd fast float %4508, -5.000000e-01
  %4514 = fadd fast float %4510, -5.000000e-01
  %4515 = fmul fast float %4511, 2.000000e+00
  %4516 = fsub fast float 3.000000e+00, %4515
  %4517 = fadd fast float %4515, 1.000000e+00
  %4518 = fsub fast float 2.000000e+00, %4511
  %4519 = bitcast float %4516 to i32
  %4520 = sub nsw i32 2129859010, %4519
  %4521 = bitcast i32 %4520 to float
  %4522 = fmul fast float %4521, %4518
  %4523 = fadd fast float %4522, -1.000000e+00
  %4524 = bitcast float %4517 to i32
  %4525 = sub nsw i32 2129859010, %4524
  %4526 = bitcast i32 %4525 to float
  %4527 = fmul fast float %4526, %4511
  %4528 = fadd fast float %4527, 1.000000e+00
  %4529 = fmul fast float %4512, 2.000000e+00
  %4530 = fsub fast float 3.000000e+00, %4529
  %4531 = fadd fast float %4529, 1.000000e+00
  %4532 = fsub fast float 2.000000e+00, %4512
  %4533 = bitcast float %4530 to i32
  %4534 = sub nsw i32 2129859010, %4533
  %4535 = bitcast i32 %4534 to float
  %4536 = fmul fast float %4535, %4532
  %4537 = fadd fast float %4536, -1.000000e+00
  %4538 = bitcast float %4531 to i32
  %4539 = sub nsw i32 2129859010, %4538
  %4540 = bitcast i32 %4539 to float
  %4541 = fmul fast float %4540, %4512
  %4542 = fadd fast float %4541, 1.000000e+00
  %4543 = fadd fast float %4523, %4513
  %4544 = fmul fast float %4543, %4495
  %4545 = fadd fast float %4537, %4514
  %4546 = fmul fast float %4545, %4496
  %4547 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4544, float %4546, float undef, float undef, i32 0, i32 0, i32 undef, float %4500)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4548 = extractvalue %dx.types.ResRet.f32 %4547, 0
  %4549 = fmul fast float %4548, %4516
  %4550 = fadd fast float %4528, %4513
  %4551 = fmul fast float %4550, %4495
  %4552 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4551, float %4546, float undef, float undef, i32 0, i32 0, i32 undef, float %4500)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4553 = extractvalue %dx.types.ResRet.f32 %4552, 0
  %4554 = fmul fast float %4553, %4517
  %4555 = fadd fast float %4542, %4514
  %4556 = fmul fast float %4555, %4496
  %4557 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4544, float %4556, float undef, float undef, i32 0, i32 0, i32 undef, float %4500)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4558 = extractvalue %dx.types.ResRet.f32 %4557, 0
  %4559 = fmul fast float %4558, %4516
  %4560 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4551, float %4556, float undef, float undef, i32 0, i32 0, i32 undef, float %4500)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4561 = extractvalue %dx.types.ResRet.f32 %4560, 0
  %4562 = fmul fast float %4561, %4517
  %4563 = fadd fast float %4562, %4559
  %4564 = fmul fast float %4563, %4531
  %4565 = fadd fast float %4554, %4549
  %4566 = fmul fast float %4565, %4530
  %4567 = fadd fast float %4566, %4564
  %4568 = fmul fast float %4567, 6.250000e-02
  br label %4654

; <label>:4569                                    ; preds = %4492
  %4570 = fmul fast float %252, 0x401921FB60000000
  %4571 = call float @dx.op.unary.f32(i32 13, float %4570)  ; Sin(value)
  %4572 = call float @dx.op.unary.f32(i32 12, float %4570)  ; Cos(value)
  %4573 = fsub fast float -0.000000e+00, %4571
  br label %4574

; <label>:4574                                    ; preds = %4623, %4569
  %4575 = phi float [ 0.000000e+00, %4569 ], [ %4618, %4623 ]
  %4576 = phi float [ 0.000000e+00, %4569 ], [ %4620, %4623 ]
  %4577 = phi i32 [ 0, %4569 ], [ %4624, %4623 ]
  %4578 = mul i32 %4577, 2
  %4579 = add i32 0, %4578
  %4580 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4579
  %4581 = load float, float* %4580, align 4
  %4582 = mul i32 %4577, 2
  %4583 = add i32 1, %4582
  %4584 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4583
  %4585 = load float, float* %4584, align 4
  %4586 = fmul fast float %4581, %4572
  %4587 = call float @dx.op.tertiary.f32(i32 46, float %4585, float %4573, float %4586)  ; FMad(a,b,c)
  %4588 = fmul fast float %4581, %4571
  %4589 = call float @dx.op.tertiary.f32(i32 46, float %4585, float %4572, float %4588)  ; FMad(a,b,c)
  %4590 = fmul fast float %4587, %4498
  %4591 = fmul fast float %4589, %4498
  %4592 = fadd fast float %4590, %3989
  %4593 = fadd fast float %4591, %3990
  %4594 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %65, float %4592, float %4593, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4595 = extractvalue %dx.types.ResRet.f32 %4594, 0
  %4596 = extractvalue %dx.types.ResRet.f32 %4594, 1
  %4597 = extractvalue %dx.types.ResRet.f32 %4594, 2
  %4598 = extractvalue %dx.types.ResRet.f32 %4594, 3
  %4599 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %4595, float* %4599, align 4
  %4600 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %4596, float* %4600, align 4
  %4601 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %4597, float* %4601, align 4
  %4602 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %4598, float* %4602, align 4
  %4603 = fsub fast float %4595, %4500
  %4604 = fcmp fast olt float %4603, 0.000000e+00
  %4605 = select i1 %4604, float 0.000000e+00, float 1.000000e+00
  %4606 = fadd fast float %4605, %4575
  %4607 = fmul fast float %4605, %4603
  %4608 = fadd fast float %4607, %4576
  br label %4609

; <label>:4609                                    ; preds = %4609, %4574
  %4610 = phi i32 [ 1, %4574 ], [ %4621, %4609 ]
  %4611 = phi float [ %4608, %4574 ], [ %4620, %4609 ]
  %4612 = phi float [ %4606, %4574 ], [ %4618, %4609 ]
  %4613 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %4610
  %4614 = load float, float* %4613, align 4, !tbaa !133, !noalias !123
  %4615 = fsub fast float %4614, %4500
  %4616 = fcmp fast olt float %4615, 0.000000e+00
  %4617 = select i1 %4616, float 0.000000e+00, float 1.000000e+00
  %4618 = fadd fast float %4617, %4612
  %4619 = fmul fast float %4617, %4615
  %4620 = fadd fast float %4619, %4611
  %4621 = add nuw nsw i32 %4610, 1
  %4622 = icmp eq i32 %4621, 4
  br i1 %4622, label %4623, label %4609, !llvm.loop !135

; <label>:4623                                    ; preds = %4609
  %4624 = add nuw nsw i32 %4577, 1
  %4625 = icmp eq i32 %4624, 8
  br i1 %4625, label %4626, label %4574, !llvm.loop !136

; <label>:4626                                    ; preds = %4623
  %4627 = fdiv fast float 1.000000e+00, %4618
  %4628 = fmul fast float %4627, %4620
  %4629 = fdiv fast float 1.000000e+00, %4500
  %4630 = fmul fast float %4628, %4629
  %4631 = call float @dx.op.unary.f32(i32 7, float %4630)  ; Saturate(value)
  %4632 = call float @dx.op.binary.f32(i32 35, float %4631, float 0.000000e+00)  ; FMax(a,b)
  %4633 = fmul fast float %4618, 3.125000e-02
  %4634 = call float @dx.op.unary.f32(i32 7, float %4633)  ; Saturate(value)
  %4635 = fmul fast float %4634, 2.000000e+00
  %4636 = fadd fast float %4635, -1.000000e+00
  %4637 = fcmp fast ogt float %4636, 0.000000e+00
  %4638 = fcmp fast olt float %4636, 0.000000e+00
  %4639 = zext i1 %4637 to i32
  %4640 = zext i1 %4638 to i32
  %4641 = sub nsw i32 %4639, %4640
  %4642 = sitofp i32 %4641 to float
  %4643 = fmul fast float %4642, %4636
  %4644 = fsub fast float 1.000000e+00, %4643
  %4645 = fmul fast float %4644, %4644
  %4646 = fmul fast float %4645, %4644
  %4647 = fsub fast float %4644, %4646
  %4648 = fmul fast float %4647, %4632
  %4649 = fsub fast float 1.000000e+00, %4646
  %4650 = fsub fast float %4649, %4648
  %4651 = fmul fast float %4642, 5.000000e-01
  %4652 = fmul fast float %4651, %4650
  %4653 = fsub fast float 5.000000e-01, %4652
  br label %4654

; <label>:4654                                    ; preds = %4626, %4502, %4489
  %4655 = phi float [ 1.000000e+00, %4489 ], [ %4568, %4502 ], [ %4653, %4626 ]
  %4656 = fcmp fast ogt float %4085, 0.000000e+00
  br i1 %4656, label %4657, label %4821, !dx.controlflow.hints !137

; <label>:4657                                    ; preds = %4654
  %4658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4659 = extractvalue %dx.types.CBufRet.f32 %4658, 1
  %4660 = fadd fast float %4659, %3974
  %4661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4662 = extractvalue %dx.types.CBufRet.f32 %4661, 2
  %4663 = extractvalue %dx.types.CBufRet.f32 %4661, 3
  %4664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4665 = extractvalue %dx.types.CBufRet.f32 %4664, 1
  %4666 = call float @dx.op.binary.f32(i32 35, float %4660, float 0.000000e+00)  ; FMax(a,b)
  %4667 = fadd fast float %4666, 0x3F10000000000000
  %4668 = fcmp fast oeq float %4665, 0.000000e+00
  br i1 %4668, label %4669, label %4736

; <label>:4669                                    ; preds = %4657
  %4670 = extractvalue %dx.types.CBufRet.f32 %4661, 1
  %4671 = extractvalue %dx.types.CBufRet.f32 %4661, 0
  %4672 = fmul fast float %4671, %3981
  %4673 = fmul fast float %4670, %3982
  %4674 = fadd fast float %4672, 5.000000e-01
  %4675 = call float @dx.op.unary.f32(i32 27, float %4674)  ; Round_ni(value)
  %4676 = fadd fast float %4673, 5.000000e-01
  %4677 = call float @dx.op.unary.f32(i32 27, float %4676)  ; Round_ni(value)
  %4678 = fsub fast float %4674, %4675
  %4679 = fsub fast float %4676, %4677
  %4680 = fadd fast float %4675, -5.000000e-01
  %4681 = fadd fast float %4677, -5.000000e-01
  %4682 = fmul fast float %4678, 2.000000e+00
  %4683 = fsub fast float 3.000000e+00, %4682
  %4684 = fadd fast float %4682, 1.000000e+00
  %4685 = fsub fast float 2.000000e+00, %4678
  %4686 = bitcast float %4683 to i32
  %4687 = sub nsw i32 2129859010, %4686
  %4688 = bitcast i32 %4687 to float
  %4689 = fmul fast float %4688, %4685
  %4690 = fadd fast float %4689, -1.000000e+00
  %4691 = bitcast float %4684 to i32
  %4692 = sub nsw i32 2129859010, %4691
  %4693 = bitcast i32 %4692 to float
  %4694 = fmul fast float %4693, %4678
  %4695 = fadd fast float %4694, 1.000000e+00
  %4696 = fmul fast float %4679, 2.000000e+00
  %4697 = fsub fast float 3.000000e+00, %4696
  %4698 = fadd fast float %4696, 1.000000e+00
  %4699 = fsub fast float 2.000000e+00, %4679
  %4700 = bitcast float %4697 to i32
  %4701 = sub nsw i32 2129859010, %4700
  %4702 = bitcast i32 %4701 to float
  %4703 = fmul fast float %4702, %4699
  %4704 = fadd fast float %4703, -1.000000e+00
  %4705 = bitcast float %4698 to i32
  %4706 = sub nsw i32 2129859010, %4705
  %4707 = bitcast i32 %4706 to float
  %4708 = fmul fast float %4707, %4679
  %4709 = fadd fast float %4708, 1.000000e+00
  %4710 = fadd fast float %4690, %4680
  %4711 = fmul fast float %4710, %4662
  %4712 = fadd fast float %4704, %4681
  %4713 = fmul fast float %4712, %4663
  %4714 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4711, float %4713, float undef, float undef, i32 0, i32 0, i32 undef, float %4667)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4715 = extractvalue %dx.types.ResRet.f32 %4714, 0
  %4716 = fmul fast float %4715, %4683
  %4717 = fadd fast float %4695, %4680
  %4718 = fmul fast float %4717, %4662
  %4719 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4718, float %4713, float undef, float undef, i32 0, i32 0, i32 undef, float %4667)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4720 = extractvalue %dx.types.ResRet.f32 %4719, 0
  %4721 = fmul fast float %4720, %4684
  %4722 = fadd fast float %4709, %4681
  %4723 = fmul fast float %4722, %4663
  %4724 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4711, float %4723, float undef, float undef, i32 0, i32 0, i32 undef, float %4667)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4725 = extractvalue %dx.types.ResRet.f32 %4724, 0
  %4726 = fmul fast float %4725, %4683
  %4727 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4718, float %4723, float undef, float undef, i32 0, i32 0, i32 undef, float %4667)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4728 = extractvalue %dx.types.ResRet.f32 %4727, 0
  %4729 = fmul fast float %4728, %4684
  %4730 = fadd fast float %4729, %4726
  %4731 = fmul fast float %4730, %4698
  %4732 = fadd fast float %4721, %4716
  %4733 = fmul fast float %4732, %4697
  %4734 = fadd fast float %4733, %4731
  %4735 = fmul fast float %4734, 6.250000e-02
  br label %4821

; <label>:4736                                    ; preds = %4657
  %4737 = fmul fast float %252, 0x401921FB60000000
  %4738 = call float @dx.op.unary.f32(i32 13, float %4737)  ; Sin(value)
  %4739 = call float @dx.op.unary.f32(i32 12, float %4737)  ; Cos(value)
  %4740 = fsub fast float -0.000000e+00, %4738
  br label %4741

; <label>:4741                                    ; preds = %4790, %4736
  %4742 = phi float [ 0.000000e+00, %4736 ], [ %4785, %4790 ]
  %4743 = phi float [ 0.000000e+00, %4736 ], [ %4787, %4790 ]
  %4744 = phi i32 [ 0, %4736 ], [ %4791, %4790 ]
  %4745 = mul i32 %4744, 2
  %4746 = add i32 0, %4745
  %4747 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4746
  %4748 = load float, float* %4747, align 4
  %4749 = mul i32 %4744, 2
  %4750 = add i32 1, %4749
  %4751 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4750
  %4752 = load float, float* %4751, align 4
  %4753 = fmul fast float %4748, %4739
  %4754 = call float @dx.op.tertiary.f32(i32 46, float %4752, float %4740, float %4753)  ; FMad(a,b,c)
  %4755 = fmul fast float %4748, %4738
  %4756 = call float @dx.op.tertiary.f32(i32 46, float %4752, float %4739, float %4755)  ; FMad(a,b,c)
  %4757 = fmul fast float %4754, %4665
  %4758 = fmul fast float %4756, %4665
  %4759 = fadd fast float %4757, %3981
  %4760 = fadd fast float %4758, %3982
  %4761 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %65, float %4759, float %4760, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4762 = extractvalue %dx.types.ResRet.f32 %4761, 0
  %4763 = extractvalue %dx.types.ResRet.f32 %4761, 1
  %4764 = extractvalue %dx.types.ResRet.f32 %4761, 2
  %4765 = extractvalue %dx.types.ResRet.f32 %4761, 3
  %4766 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %4762, float* %4766, align 4
  %4767 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %4763, float* %4767, align 4
  %4768 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %4764, float* %4768, align 4
  %4769 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %4765, float* %4769, align 4
  %4770 = fsub fast float %4762, %4667
  %4771 = fcmp fast olt float %4770, 0.000000e+00
  %4772 = select i1 %4771, float 0.000000e+00, float 1.000000e+00
  %4773 = fadd fast float %4772, %4742
  %4774 = fmul fast float %4772, %4770
  %4775 = fadd fast float %4774, %4743
  br label %4776

; <label>:4776                                    ; preds = %4776, %4741
  %4777 = phi i32 [ 1, %4741 ], [ %4788, %4776 ]
  %4778 = phi float [ %4775, %4741 ], [ %4787, %4776 ]
  %4779 = phi float [ %4773, %4741 ], [ %4785, %4776 ]
  %4780 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %4777
  %4781 = load float, float* %4780, align 4, !tbaa !133, !noalias !123
  %4782 = fsub fast float %4781, %4667
  %4783 = fcmp fast olt float %4782, 0.000000e+00
  %4784 = select i1 %4783, float 0.000000e+00, float 1.000000e+00
  %4785 = fadd fast float %4784, %4779
  %4786 = fmul fast float %4784, %4782
  %4787 = fadd fast float %4786, %4778
  %4788 = add nuw nsw i32 %4777, 1
  %4789 = icmp eq i32 %4788, 4
  br i1 %4789, label %4790, label %4776, !llvm.loop !135

; <label>:4790                                    ; preds = %4776
  %4791 = add nuw nsw i32 %4744, 1
  %4792 = icmp eq i32 %4791, 8
  br i1 %4792, label %4793, label %4741, !llvm.loop !136

; <label>:4793                                    ; preds = %4790
  %4794 = fdiv fast float 1.000000e+00, %4785
  %4795 = fmul fast float %4794, %4787
  %4796 = fdiv fast float 1.000000e+00, %4667
  %4797 = fmul fast float %4795, %4796
  %4798 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4799 = call float @dx.op.binary.f32(i32 35, float %4798, float 0.000000e+00)  ; FMax(a,b)
  %4800 = fmul fast float %4785, 3.125000e-02
  %4801 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4802 = fmul fast float %4801, 2.000000e+00
  %4803 = fadd fast float %4802, -1.000000e+00
  %4804 = fcmp fast ogt float %4803, 0.000000e+00
  %4805 = fcmp fast olt float %4803, 0.000000e+00
  %4806 = zext i1 %4804 to i32
  %4807 = zext i1 %4805 to i32
  %4808 = sub nsw i32 %4806, %4807
  %4809 = sitofp i32 %4808 to float
  %4810 = fmul fast float %4809, %4803
  %4811 = fsub fast float 1.000000e+00, %4810
  %4812 = fmul fast float %4811, %4811
  %4813 = fmul fast float %4812, %4811
  %4814 = fsub fast float %4811, %4813
  %4815 = fmul fast float %4814, %4799
  %4816 = fsub fast float 1.000000e+00, %4813
  %4817 = fsub fast float %4816, %4815
  %4818 = fmul fast float %4809, 5.000000e-01
  %4819 = fmul fast float %4818, %4817
  %4820 = fsub fast float 5.000000e-01, %4819
  br label %4821

; <label>:4821                                    ; preds = %4793, %4669, %4654
  %4822 = phi float [ 1.000000e+00, %4654 ], [ %4735, %4669 ], [ %4820, %4793 ]
  %4823 = fcmp fast ogt float %4084, 0.000000e+00
  br i1 %4823, label %4824, label %4988, !dx.controlflow.hints !138

; <label>:4824                                    ; preds = %4821
  %4825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4826 = extractvalue %dx.types.CBufRet.f32 %4825, 0
  %4827 = fadd fast float %4826, %3974
  %4828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4829 = extractvalue %dx.types.CBufRet.f32 %4828, 2
  %4830 = extractvalue %dx.types.CBufRet.f32 %4828, 3
  %4831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4832 = extractvalue %dx.types.CBufRet.f32 %4831, 0
  %4833 = call float @dx.op.binary.f32(i32 35, float %4827, float 0.000000e+00)  ; FMax(a,b)
  %4834 = fadd fast float %4833, 0x3F10000000000000
  %4835 = fcmp fast oeq float %4832, 0.000000e+00
  br i1 %4835, label %4836, label %4903

; <label>:4836                                    ; preds = %4824
  %4837 = extractvalue %dx.types.CBufRet.f32 %4828, 1
  %4838 = extractvalue %dx.types.CBufRet.f32 %4828, 0
  %4839 = fmul fast float %4838, %3966
  %4840 = fmul fast float %4837, %3970
  %4841 = fadd fast float %4839, 5.000000e-01
  %4842 = call float @dx.op.unary.f32(i32 27, float %4841)  ; Round_ni(value)
  %4843 = fadd fast float %4840, 5.000000e-01
  %4844 = call float @dx.op.unary.f32(i32 27, float %4843)  ; Round_ni(value)
  %4845 = fsub fast float %4841, %4842
  %4846 = fsub fast float %4843, %4844
  %4847 = fadd fast float %4842, -5.000000e-01
  %4848 = fadd fast float %4844, -5.000000e-01
  %4849 = fmul fast float %4845, 2.000000e+00
  %4850 = fsub fast float 3.000000e+00, %4849
  %4851 = fadd fast float %4849, 1.000000e+00
  %4852 = fsub fast float 2.000000e+00, %4845
  %4853 = bitcast float %4850 to i32
  %4854 = sub nsw i32 2129859010, %4853
  %4855 = bitcast i32 %4854 to float
  %4856 = fmul fast float %4855, %4852
  %4857 = fadd fast float %4856, -1.000000e+00
  %4858 = bitcast float %4851 to i32
  %4859 = sub nsw i32 2129859010, %4858
  %4860 = bitcast i32 %4859 to float
  %4861 = fmul fast float %4860, %4845
  %4862 = fadd fast float %4861, 1.000000e+00
  %4863 = fmul fast float %4846, 2.000000e+00
  %4864 = fsub fast float 3.000000e+00, %4863
  %4865 = fadd fast float %4863, 1.000000e+00
  %4866 = fsub fast float 2.000000e+00, %4846
  %4867 = bitcast float %4864 to i32
  %4868 = sub nsw i32 2129859010, %4867
  %4869 = bitcast i32 %4868 to float
  %4870 = fmul fast float %4869, %4866
  %4871 = fadd fast float %4870, -1.000000e+00
  %4872 = bitcast float %4865 to i32
  %4873 = sub nsw i32 2129859010, %4872
  %4874 = bitcast i32 %4873 to float
  %4875 = fmul fast float %4874, %4846
  %4876 = fadd fast float %4875, 1.000000e+00
  %4877 = fadd fast float %4857, %4847
  %4878 = fmul fast float %4877, %4829
  %4879 = fadd fast float %4871, %4848
  %4880 = fmul fast float %4879, %4830
  %4881 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4878, float %4880, float undef, float undef, i32 0, i32 0, i32 undef, float %4834)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4882 = extractvalue %dx.types.ResRet.f32 %4881, 0
  %4883 = fmul fast float %4882, %4850
  %4884 = fadd fast float %4862, %4847
  %4885 = fmul fast float %4884, %4829
  %4886 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4885, float %4880, float undef, float undef, i32 0, i32 0, i32 undef, float %4834)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4887 = extractvalue %dx.types.ResRet.f32 %4886, 0
  %4888 = fmul fast float %4887, %4851
  %4889 = fadd fast float %4876, %4848
  %4890 = fmul fast float %4889, %4830
  %4891 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4878, float %4890, float undef, float undef, i32 0, i32 0, i32 undef, float %4834)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4892 = extractvalue %dx.types.ResRet.f32 %4891, 0
  %4893 = fmul fast float %4892, %4850
  %4894 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4885, float %4890, float undef, float undef, i32 0, i32 0, i32 undef, float %4834)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4895 = extractvalue %dx.types.ResRet.f32 %4894, 0
  %4896 = fmul fast float %4895, %4851
  %4897 = fadd fast float %4896, %4893
  %4898 = fmul fast float %4897, %4865
  %4899 = fadd fast float %4888, %4883
  %4900 = fmul fast float %4899, %4864
  %4901 = fadd fast float %4900, %4898
  %4902 = fmul fast float %4901, 6.250000e-02
  br label %4988

; <label>:4903                                    ; preds = %4824
  %4904 = fmul fast float %252, 0x401921FB60000000
  %4905 = call float @dx.op.unary.f32(i32 13, float %4904)  ; Sin(value)
  %4906 = call float @dx.op.unary.f32(i32 12, float %4904)  ; Cos(value)
  %4907 = fsub fast float -0.000000e+00, %4905
  br label %4908

; <label>:4908                                    ; preds = %4957, %4903
  %4909 = phi float [ 0.000000e+00, %4903 ], [ %4952, %4957 ]
  %4910 = phi float [ 0.000000e+00, %4903 ], [ %4954, %4957 ]
  %4911 = phi i32 [ 0, %4903 ], [ %4958, %4957 ]
  %4912 = mul i32 %4911, 2
  %4913 = add i32 0, %4912
  %4914 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4913
  %4915 = load float, float* %4914, align 4
  %4916 = mul i32 %4911, 2
  %4917 = add i32 1, %4916
  %4918 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4917
  %4919 = load float, float* %4918, align 4
  %4920 = fmul fast float %4915, %4906
  %4921 = call float @dx.op.tertiary.f32(i32 46, float %4919, float %4907, float %4920)  ; FMad(a,b,c)
  %4922 = fmul fast float %4915, %4905
  %4923 = call float @dx.op.tertiary.f32(i32 46, float %4919, float %4906, float %4922)  ; FMad(a,b,c)
  %4924 = fmul fast float %4921, %4832
  %4925 = fmul fast float %4923, %4832
  %4926 = fadd fast float %4924, %3966
  %4927 = fadd fast float %4925, %3970
  %4928 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %65, float %4926, float %4927, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4929 = extractvalue %dx.types.ResRet.f32 %4928, 0
  %4930 = extractvalue %dx.types.ResRet.f32 %4928, 1
  %4931 = extractvalue %dx.types.ResRet.f32 %4928, 2
  %4932 = extractvalue %dx.types.ResRet.f32 %4928, 3
  %4933 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %4929, float* %4933, align 4
  %4934 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %4930, float* %4934, align 4
  %4935 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %4931, float* %4935, align 4
  %4936 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %4932, float* %4936, align 4
  %4937 = fsub fast float %4929, %4834
  %4938 = fcmp fast olt float %4937, 0.000000e+00
  %4939 = select i1 %4938, float 0.000000e+00, float 1.000000e+00
  %4940 = fadd fast float %4939, %4909
  %4941 = fmul fast float %4939, %4937
  %4942 = fadd fast float %4941, %4910
  br label %4943

; <label>:4943                                    ; preds = %4943, %4908
  %4944 = phi i32 [ 1, %4908 ], [ %4955, %4943 ]
  %4945 = phi float [ %4942, %4908 ], [ %4954, %4943 ]
  %4946 = phi float [ %4940, %4908 ], [ %4952, %4943 ]
  %4947 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %4944
  %4948 = load float, float* %4947, align 4, !tbaa !133, !noalias !123
  %4949 = fsub fast float %4948, %4834
  %4950 = fcmp fast olt float %4949, 0.000000e+00
  %4951 = select i1 %4950, float 0.000000e+00, float 1.000000e+00
  %4952 = fadd fast float %4951, %4946
  %4953 = fmul fast float %4951, %4949
  %4954 = fadd fast float %4953, %4945
  %4955 = add nuw nsw i32 %4944, 1
  %4956 = icmp eq i32 %4955, 4
  br i1 %4956, label %4957, label %4943, !llvm.loop !135

; <label>:4957                                    ; preds = %4943
  %4958 = add nuw nsw i32 %4911, 1
  %4959 = icmp eq i32 %4958, 8
  br i1 %4959, label %4960, label %4908, !llvm.loop !136

; <label>:4960                                    ; preds = %4957
  %4961 = fdiv fast float 1.000000e+00, %4952
  %4962 = fmul fast float %4961, %4954
  %4963 = fdiv fast float 1.000000e+00, %4834
  %4964 = fmul fast float %4962, %4963
  %4965 = call float @dx.op.unary.f32(i32 7, float %4964)  ; Saturate(value)
  %4966 = call float @dx.op.binary.f32(i32 35, float %4965, float 0.000000e+00)  ; FMax(a,b)
  %4967 = fmul fast float %4952, 3.125000e-02
  %4968 = call float @dx.op.unary.f32(i32 7, float %4967)  ; Saturate(value)
  %4969 = fmul fast float %4968, 2.000000e+00
  %4970 = fadd fast float %4969, -1.000000e+00
  %4971 = fcmp fast ogt float %4970, 0.000000e+00
  %4972 = fcmp fast olt float %4970, 0.000000e+00
  %4973 = zext i1 %4971 to i32
  %4974 = zext i1 %4972 to i32
  %4975 = sub nsw i32 %4973, %4974
  %4976 = sitofp i32 %4975 to float
  %4977 = fmul fast float %4976, %4970
  %4978 = fsub fast float 1.000000e+00, %4977
  %4979 = fmul fast float %4978, %4978
  %4980 = fmul fast float %4979, %4978
  %4981 = fsub fast float %4978, %4980
  %4982 = fmul fast float %4981, %4966
  %4983 = fsub fast float 1.000000e+00, %4980
  %4984 = fsub fast float %4983, %4982
  %4985 = fmul fast float %4976, 5.000000e-01
  %4986 = fmul fast float %4985, %4984
  %4987 = fsub fast float 5.000000e-01, %4986
  br label %4988

; <label>:4988                                    ; preds = %4960, %4836, %4821
  %4989 = phi float [ 1.000000e+00, %4821 ], [ %4902, %4836 ], [ %4987, %4960 ]
  %4990 = fsub fast float %4655, %4490
  %4991 = fmul fast float %4990, %4028
  %4992 = fadd fast float %4991, %4490
  %4993 = fsub fast float %4822, %4992
  %4994 = fmul fast float %4993, %4058
  %4995 = fadd fast float %4994, %4992
  %4996 = fsub fast float %4989, %4995
  %4997 = fmul fast float %4996, %4084
  %4998 = fadd fast float %4997, %4995
  %4999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5000 = extractvalue %dx.types.CBufRet.f32 %4999, 2
  %5001 = fcmp fast ogt float %5000, 0.000000e+00
  br i1 %5001, label %5002, label %5042, !dx.controlflow.hints !139

; <label>:5002                                    ; preds = %4988
  %5003 = fcmp fast ugt float %5000, 0.000000e+00
  br i1 %5003, label %5004, label %5039

; <label>:5004                                    ; preds = %5002
  %5005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5006 = extractvalue %dx.types.CBufRet.f32 %5005, 0
  %5007 = extractvalue %dx.types.CBufRet.f32 %5005, 1
  %5008 = extractvalue %dx.types.CBufRet.f32 %5005, 2
  %5009 = extractvalue %dx.types.CBufRet.f32 %5005, 3
  %5010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.f32 %5010, 0
  %5012 = extractvalue %dx.types.CBufRet.f32 %5010, 1
  %5013 = extractvalue %dx.types.CBufRet.f32 %5010, 2
  %5014 = extractvalue %dx.types.CBufRet.f32 %5010, 3
  %5015 = extractvalue %dx.types.CBufRet.f32 %4999, 0
  %5016 = extractvalue %dx.types.CBufRet.f32 %4999, 1
  %5017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5018 = extractvalue %dx.types.CBufRet.f32 %5017, 0
  %5019 = extractvalue %dx.types.CBufRet.f32 %5017, 1
  %5020 = extractvalue %dx.types.CBufRet.f32 %5017, 2
  %5021 = fadd fast float %5018, %3943
  %5022 = fadd fast float %5019, %3944
  %5023 = fadd fast float %5020, %3945
  %5024 = fmul fast float %5021, %5006
  %5025 = call float @dx.op.tertiary.f32(i32 46, float %5007, float %5022, float %5024)  ; FMad(a,b,c)
  %5026 = call float @dx.op.tertiary.f32(i32 46, float %5008, float %5023, float %5025)  ; FMad(a,b,c)
  %5027 = fadd fast float %5026, %5009
  %5028 = fmul fast float %5021, %5011
  %5029 = call float @dx.op.tertiary.f32(i32 46, float %5012, float %5022, float %5028)  ; FMad(a,b,c)
  %5030 = call float @dx.op.tertiary.f32(i32 46, float %5013, float %5023, float %5029)  ; FMad(a,b,c)
  %5031 = fadd fast float %5030, %5014
  %5032 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %61, float %5027, float %5031, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5033 = extractvalue %dx.types.ResRet.f32 %5032, 0
  %5034 = fmul fast float %5033, %5016
  %5035 = fadd fast float %5034, %5015
  %5036 = call float @dx.op.unary.f32(i32 7, float %5035)  ; Saturate(value)
  %5037 = fmul fast float %5036, %5000
  %5038 = fsub fast float 1.000000e+00, %5037
  br label %5039

; <label>:5039                                    ; preds = %5004, %5002
  %5040 = phi float [ %5038, %5004 ], [ 1.000000e+00, %5002 ]
  %5041 = fmul fast float %5040, %4998
  br label %5042

; <label>:5042                                    ; preds = %5039, %4988, %3923
  %5043 = phi float [ 1.000000e+00, %3923 ], [ %5041, %5039 ], [ %4998, %4988 ]
  %5044 = call float @dx.op.binary.f32(i32 36, float %5043, float %5043)  ; FMin(a,b)
  %5045 = call float @dx.op.binary.f32(i32 36, float %5043, float %5044)  ; FMin(a,b)
  %5046 = fcmp fast ogt float %5045, 0.000000e+00
  br i1 %5046, label %5047, label %5212, !dx.controlflow.hints !140

; <label>:5047                                    ; preds = %5042
  %5048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5049 = extractvalue %dx.types.CBufRet.f32 %5048, 0
  %5050 = extractvalue %dx.types.CBufRet.f32 %5048, 1
  %5051 = extractvalue %dx.types.CBufRet.f32 %5048, 2
  %5052 = extractvalue %dx.types.CBufRet.f32 %5048, 3
  %5053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5054 = extractvalue %dx.types.CBufRet.f32 %5053, 0
  %5055 = extractvalue %dx.types.CBufRet.f32 %5053, 1
  %5056 = extractvalue %dx.types.CBufRet.f32 %5053, 2
  %5057 = extractvalue %dx.types.CBufRet.f32 %5053, 3
  %5058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5059 = extractvalue %dx.types.CBufRet.f32 %5058, 0
  %5060 = extractvalue %dx.types.CBufRet.f32 %5058, 1
  %5061 = extractvalue %dx.types.CBufRet.f32 %5058, 2
  %5062 = extractvalue %dx.types.CBufRet.f32 %5058, 3
  %5063 = fmul fast float %5049, %3943
  %5064 = call float @dx.op.tertiary.f32(i32 46, float %3944, float %5050, float %5063)  ; FMad(a,b,c)
  %5065 = call float @dx.op.tertiary.f32(i32 46, float %3945, float %5051, float %5064)  ; FMad(a,b,c)
  %5066 = fadd fast float %5065, %5052
  %5067 = fmul fast float %5054, %3943
  %5068 = call float @dx.op.tertiary.f32(i32 46, float %3944, float %5055, float %5067)  ; FMad(a,b,c)
  %5069 = call float @dx.op.tertiary.f32(i32 46, float %3945, float %5056, float %5068)  ; FMad(a,b,c)
  %5070 = fadd fast float %5069, %5057
  %5071 = fmul fast float %5059, %3943
  %5072 = call float @dx.op.tertiary.f32(i32 46, float %3944, float %5060, float %5071)  ; FMad(a,b,c)
  %5073 = call float @dx.op.tertiary.f32(i32 46, float %3945, float %5061, float %5072)  ; FMad(a,b,c)
  %5074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5075 = extractvalue %dx.types.CBufRet.f32 %5074, 0
  %5076 = extractvalue %dx.types.CBufRet.f32 %5074, 1
  %5077 = extractvalue %dx.types.CBufRet.f32 %5074, 3
  %5078 = fmul fast float %5077, %5066
  %5079 = fmul fast float %5077, %5070
  %5080 = fadd fast float %5078, %5075
  %5081 = fadd fast float %5079, %5076
  %5082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5083 = extractvalue %dx.types.CBufRet.f32 %5082, 0
  %5084 = extractvalue %dx.types.CBufRet.f32 %5082, 1
  %5085 = fsub fast float %5080, %5083
  %5086 = fsub fast float %5081, %5084
  %5087 = fcmp fast olt float %5085, 0.000000e+00
  %5088 = fcmp fast olt float %5086, 0.000000e+00
  %5089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5090 = extractvalue %dx.types.CBufRet.f32 %5089, 0
  %5091 = extractvalue %dx.types.CBufRet.f32 %5089, 1
  %5092 = extractvalue %dx.types.CBufRet.f32 %5089, 2
  %5093 = extractvalue %dx.types.CBufRet.f32 %5089, 3
  %5094 = select i1 %5087, float %5090, float %5092
  %5095 = select i1 %5088, float %5091, float %5093
  %5096 = fmul fast float %5094, %5085
  %5097 = fmul fast float %5095, %5086
  %5098 = call float @dx.op.unary.f32(i32 6, float %5096)  ; FAbs(value)
  %5099 = call float @dx.op.unary.f32(i32 6, float %5097)  ; FAbs(value)
  %5100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5101 = extractvalue %dx.types.CBufRet.f32 %5100, 0
  %5102 = call float @dx.op.binary.f32(i32 35, float %5098, float %5099)  ; FMax(a,b)
  %5103 = fsub fast float %5101, %5102
  %5104 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5105 = fcmp fast ogt float %5104, 0.000000e+00
  br i1 %5105, label %5106, label %5147, !dx.controlflow.hints !141

; <label>:5106                                    ; preds = %5047
  %5107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %64, float %5080, float %5081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5108 = extractvalue %dx.types.ResRet.f32 %5107, 1
  %5109 = fcmp fast ogt float %5108, 0.000000e+00
  br i1 %5109, label %5110, label %5142

; <label>:5110                                    ; preds = %5106
  %5111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %64, float %5080, float %5081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5112 = extractvalue %dx.types.ResRet.f32 %5111, 0
  %5113 = extractvalue %dx.types.ResRet.f32 %5111, 1
  %5114 = extractvalue %dx.types.ResRet.f32 %5111, 2
  %5115 = extractvalue %dx.types.ResRet.f32 %5111, 3
  %5116 = fsub fast float 1.000000e+00, %5062
  %5117 = fsub fast float %5116, %5073
  %5118 = fmul fast float %5117, 0x400921FB60000000
  %5119 = fadd fast float %5118, 0x3FF921FB60000000
  %5120 = call float @dx.op.unary.f32(i32 13, float %5119)  ; Sin(value)
  %5121 = fadd fast float %5120, -1.000000e+00
  %5122 = fmul fast float %5121, 0x3FD45F3060000000
  %5123 = fmul fast float %5117, 0x401921FB60000000
  %5124 = fadd fast float %5123, 0x400921FB60000000
  %5125 = call float @dx.op.unary.f32(i32 13, float %5124)  ; Sin(value)
  %5126 = fadd fast float %5125, 0x3E7777A5C0000000
  %5127 = fmul fast float %5126, 0x3FC45F3060000000
  %5128 = fmul fast float %5117, 0x4022D97C80000000
  %5129 = fadd fast float %5128, 0x4012D97C80000000
  %5130 = call float @dx.op.unary.f32(i32 13, float %5129)  ; Sin(value)
  %5131 = fadd fast float %5130, 1.000000e+00
  %5132 = fmul fast float %5131, 0x3FBB2995E0000000
  %5133 = fmul fast float %5117, 0x402921FB60000000
  %5134 = fadd fast float %5133, 0x401921FB60000000
  %5135 = call float @dx.op.unary.f32(i32 13, float %5134)  ; Sin(value)
  %5136 = fadd fast float %5135, 0xBE8777A5C0000000
  %5137 = fmul fast float %5136, 0x3FB45F3060000000
  %5138 = call float @dx.op.dot4.f32(i32 56, float %5112, float %5113, float %5114, float %5115, float %5122, float %5127, float %5132, float %5137)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5139 = fmul fast float %5138, 0xBFF7154760000000
  %5140 = call float @dx.op.unary.f32(i32 21, float %5139)  ; Exp(value)
  %5141 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  br label %5142

; <label>:5142                                    ; preds = %5110, %5106
  %5143 = phi float [ %5141, %5110 ], [ 1.000000e+00, %5106 ]
  %5144 = fadd fast float %5143, -1.000000e+00
  %5145 = fmul fast float %5144, %5104
  %5146 = fadd fast float %5145, 1.000000e+00
  br label %5147

; <label>:5147                                    ; preds = %5142, %5047
  %5148 = phi float [ %5146, %5142 ], [ 1.000000e+00, %5047 ]
  %5149 = fmul fast float %5148, %5043
  %5150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5151 = extractvalue %dx.types.CBufRet.f32 %5150, 0
  %5152 = extractvalue %dx.types.CBufRet.f32 %5150, 1
  %5153 = extractvalue %dx.types.CBufRet.f32 %5150, 2
  %5154 = fadd fast float %5151, %146
  %5155 = fadd fast float %5152, %147
  %5156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5157 = extractvalue %dx.types.CBufRet.f32 %5156, 1
  %5158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.f32 %5158, 0
  %5160 = extractvalue %dx.types.CBufRet.f32 %5158, 1
  %5161 = extractvalue %dx.types.CBufRet.f32 %5158, 2
  %5162 = fsub fast float -0.000000e+00, %5154
  %5163 = fsub fast float -0.000000e+00, %5155
  %5164 = fsub fast float %1759, %5153
  %5165 = fadd fast float %5164, %5157
  %5166 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5162, float %5163, float %5165)  ; Dot3(ax,ay,az,bx,by,bz)
  %5167 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5159, float %5160, float %5161)  ; Dot3(ax,ay,az,bx,by,bz)
  %5168 = fdiv fast float 1.000000e+00, %5167
  %5169 = fmul fast float %5168, %5166
  %5170 = fmul fast float %5159, %5169
  %5171 = fmul fast float %5160, %5169
  %5172 = fadd fast float %5170, %5154
  %5173 = fadd fast float %5171, %5155
  %5174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5175 = extractvalue %dx.types.CBufRet.f32 %5174, 0
  %5176 = extractvalue %dx.types.CBufRet.f32 %5174, 1
  %5177 = fsub fast float %5172, %5175
  %5178 = fsub fast float %5173, %5176
  %5179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5180 = extractvalue %dx.types.CBufRet.f32 %5179, 2
  %5181 = extractvalue %dx.types.CBufRet.f32 %5179, 3
  %5182 = fmul fast float %5177, %5180
  %5183 = fmul fast float %5178, %5181
  %5184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5185 = extractvalue %dx.types.CBufRet.i32 %5184, 3
  %5186 = icmp eq i32 %5185, 0
  br i1 %5186, label %5192, label %5187

; <label>:5187                                    ; preds = %5147
  %5188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %63, float %5182, float %5183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5189 = extractvalue %dx.types.ResRet.f32 %5188, 0
  %5190 = extractvalue %dx.types.ResRet.f32 %5188, 1
  %5191 = extractvalue %dx.types.ResRet.f32 %5188, 2
  br label %5197

; <label>:5192                                    ; preds = %5147
  %5193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %64, float %5182, float %5183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5194 = extractvalue %dx.types.ResRet.f32 %5193, 0
  %5195 = extractvalue %dx.types.ResRet.f32 %5193, 1
  %5196 = extractvalue %dx.types.ResRet.f32 %5193, 2
  br label %5197

; <label>:5197                                    ; preds = %5192, %5187
  %5198 = phi float [ %5189, %5187 ], [ %5194, %5192 ]
  %5199 = phi float [ %5190, %5187 ], [ %5195, %5192 ]
  %5200 = phi float [ %5191, %5187 ], [ %5196, %5192 ]
  %5201 = extractvalue %dx.types.CBufRet.f32 %5156, 2
  %5202 = fmul fast float %5201, %5198
  %5203 = extractvalue %dx.types.CBufRet.f32 %5156, 0
  %5204 = fsub fast float %5169, %5203
  %5205 = fsub fast float %5204, %5202
  %5206 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5205)  ; FMax(a,b)
  %5207 = fmul fast float %5206, %5199
  %5208 = call float @dx.op.binary.f32(i32 36, float %5200, float %5207)  ; FMin(a,b)
  %5209 = fmul fast float %5208, 0xBFF7154760000000
  %5210 = call float @dx.op.unary.f32(i32 21, float %5209)  ; Exp(value)
  %5211 = fmul fast float %5149, %5210
  br label %5212

; <label>:5212                                    ; preds = %5197, %5042
  %5213 = phi float [ %5211, %5197 ], [ %5043, %5042 ]
  %5214 = call float @dx.op.binary.f32(i32 36, float %5213, float %5213)  ; FMin(a,b)
  %5215 = call float @dx.op.binary.f32(i32 36, float %5213, float %5214)  ; FMin(a,b)
  %5216 = fcmp fast ogt float %5215, 0.000000e+00
  br i1 %5216, label %5217, label %5502, !dx.controlflow.hints !142

; <label>:5217                                    ; preds = %5212
  %5218 = fmul fast float %5213, %3935
  %5219 = fmul fast float %5213, %3936
  %5220 = fmul fast float %5213, %3937
  %5221 = fsub fast float %148, %1547
  %5222 = fcmp fast ogt float %5221, 0.000000e+00
  %5223 = fmul fast float %3924, 5.120000e+02
  %5224 = fmul fast float %3925, 5.120000e+02
  %5225 = fmul fast float %3926, 5.120000e+02
  %5226 = fadd fast float %5225, %148
  %5227 = fsub fast float %1547, %5226
  %5228 = fmul fast float %5227, 2.000000e+00
  %5229 = fadd fast float %5228, %5226
  %5230 = select i1 %5222, float %5229, float %5226
  %5231 = fsub fast float %5230, %148
  %5232 = call float @dx.op.dot3.f32(i32 55, float %5223, float %5224, float %5231, float %5223, float %5224, float %5231)  ; Dot3(ax,ay,az,bx,by,bz)
  %5233 = call float @dx.op.unary.f32(i32 25, float %5232)  ; Rsqrt(value)
  %5234 = fmul fast float %5233, %5223
  %5235 = fmul fast float %5233, %5224
  %5236 = fmul fast float %5233, %5231
  %5237 = fsub fast float %1547, %148
  %5238 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5237)  ; Dot3(ax,ay,az,bx,by,bz)
  %5239 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5234, float %5235, float %5236)  ; Dot3(ax,ay,az,bx,by,bz)
  %5240 = fdiv fast float 1.000000e+00, %5239
  %5241 = fmul fast float %5240, %5238
  %5242 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5221, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5243 = fcmp fast ogt float %5242, 0.000000e+00
  %5244 = fcmp fast olt float %5242, 0.000000e+00
  %5245 = zext i1 %5243 to i32
  %5246 = zext i1 %5244 to i32
  %5247 = sub nsw i32 %5245, %5246
  %5248 = sitofp i32 %5247 to float
  %5249 = fsub fast float %5230, %1547
  %5250 = call float @dx.op.dot3.f32(i32 55, float %5223, float %5224, float %5249, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5251 = fcmp fast ogt float %5250, 0.000000e+00
  %5252 = fcmp fast olt float %5250, 0.000000e+00
  %5253 = zext i1 %5251 to i32
  %5254 = zext i1 %5252 to i32
  %5255 = sub nsw i32 %5253, %5254
  %5256 = sitofp i32 %5255 to float
  %5257 = fcmp fast une float %5248, %5256
  br i1 %5257, label %5258, label %5268

; <label>:5258                                    ; preds = %5217
  %5259 = fmul fast float %5241, %5236
  %5260 = fmul fast float %5241, %5235
  %5261 = fmul fast float %5241, %5234
  %5262 = fmul fast float %5261, %5261
  %5263 = fmul fast float %5260, %5260
  %5264 = fadd fast float %5262, %5263
  %5265 = fmul fast float %5259, %5259
  %5266 = fadd fast float %5264, %5265
  %5267 = call float @dx.op.unary.f32(i32 24, float %5266)  ; Sqrt(value)
  br label %5278

; <label>:5268                                    ; preds = %5217
  %5269 = icmp slt i32 %5247, 0
  br i1 %5269, label %5270, label %5278

; <label>:5270                                    ; preds = %5268
  %5271 = fsub fast float %148, %5230
  %5272 = fmul fast float %5223, %5223
  %5273 = fmul fast float %5224, %5224
  %5274 = fadd fast float %5272, %5273
  %5275 = fmul fast float %5271, %5271
  %5276 = fadd fast float %5274, %5275
  %5277 = call float @dx.op.unary.f32(i32 24, float %5276)  ; Sqrt(value)
  br label %5278

; <label>:5278                                    ; preds = %5270, %5268, %5258
  %5279 = phi float [ %5267, %5258 ], [ %5277, %5270 ], [ 0.000000e+00, %5268 ]
  %5280 = fsub fast float -0.000000e+00, %5279
  %5281 = select i1 %5222, float -0.000000e+00, float %5280
  %5282 = fmul fast float %1548, 0x3FF7154760000000
  %5283 = fmul fast float %5282, %5281
  %5284 = fmul fast float %1549, 0x3FF7154760000000
  %5285 = fmul fast float %5284, %5281
  %5286 = fmul fast float %1550, 0x3FF7154760000000
  %5287 = fmul fast float %5286, %5281
  %5288 = call float @dx.op.unary.f32(i32 21, float %5283)  ; Exp(value)
  %5289 = call float @dx.op.unary.f32(i32 21, float %5285)  ; Exp(value)
  %5290 = call float @dx.op.unary.f32(i32 21, float %5287)  ; Exp(value)
  %5291 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5292 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5293 = call float @dx.op.unary.f32(i32 7, float %5290)  ; Saturate(value)
  %5294 = fmul fast float %5218, %5291
  %5295 = fmul fast float %5219, %5292
  %5296 = fmul fast float %5220, %5293
  %5297 = fsub fast float %3924, %1747
  %5298 = fsub fast float %3925, %1746
  %5299 = fsub fast float %3926, %1745
  %5300 = call float @dx.op.dot3.f32(i32 55, float %5297, float %5298, float %5299, float %5297, float %5298, float %5299)  ; Dot3(ax,ay,az,bx,by,bz)
  %5301 = call float @dx.op.unary.f32(i32 25, float %5300)  ; Rsqrt(value)
  %5302 = fmul fast float %5301, %5297
  %5303 = fmul fast float %5301, %5298
  %5304 = fmul fast float %5301, %5299
  %5305 = call float @dx.op.dot3.f32(i32 55, float %3924, float %3925, float %3926, float %1748, float %1749, float %1750)  ; Dot3(ax,ay,az,bx,by,bz)
  %5306 = call float @dx.op.dot3.f32(i32 55, float %1744, float %1743, float %1742, float %5302, float %5303, float %5304)  ; Dot3(ax,ay,az,bx,by,bz)
  %5307 = call float @dx.op.unary.f32(i32 7, float %5305)  ; Saturate(value)
  %5308 = fmul fast float %5307, %5307
  %5309 = fmul fast float %5308, %3919
  %5310 = call float @dx.op.unary.f32(i32 7, float %5309)  ; Saturate(value)
  %5311 = fmul fast float %5310, %5307
  %5312 = call float @dx.op.dot3.f32(i32 55, float %1748, float %1749, float %1750, float %5302, float %5303, float %5304)  ; Dot3(ax,ay,az,bx,by,bz)
  %5313 = fmul fast float %5312, %5312
  %5314 = call float @dx.op.unary.f32(i32 6, float %5305)  ; FAbs(value)
  %5315 = fsub fast float 1.000000e+00, %1816
  %5316 = fmul fast float %1798, %1798
  %5317 = fmul fast float %5316, %5315
  %5318 = fadd fast float %5317, %1816
  %5319 = bitcast float %5318 to i32
  %5320 = ashr i32 %5319, 1
  %5321 = add nsw i32 %5320, 532487669
  %5322 = bitcast i32 %5321 to float
  %5323 = fadd fast float %5322, %1798
  %5324 = fmul fast float %1816, %5313
  %5325 = fsub fast float 1.000000e+00, %5313
  %5326 = fadd fast float %5325, %5324
  %5327 = fmul fast float %5314, %5314
  %5328 = fmul fast float %5327, %5315
  %5329 = fadd fast float %5328, %1816
  %5330 = bitcast float %5329 to i32
  %5331 = ashr i32 %5330, 1
  %5332 = add nsw i32 %5331, 532487669
  %5333 = bitcast i32 %5332 to float
  %5334 = fadd fast float %5333, %5314
  %5335 = fmul fast float %5326, %5326
  %5336 = fmul fast float %5335, %5323
  %5337 = fmul fast float %5336, %5334
  %5338 = fdiv fast float 0x3FF0A00000000000, %5337
  %5339 = fmul fast float %5338, %1816
  %5340 = fmul fast float %3082, 0x3FF9999980000000
  %5341 = fsub fast float 5.000000e+00, %5340
  %5342 = call float @dx.op.unary.f32(i32 6, float %5306)  ; FAbs(value)
  %5343 = fsub fast float 1.000000e+00, %5342
  %5344 = fmul fast float %3082, 0x41D9660740000000
  %5345 = fadd fast float %5344, 0xC1EFBF8940000000
  %5346 = bitcast float %5343 to i32
  %5347 = sitofp i32 %5346 to float
  %5348 = fmul fast float %5347, %5341
  %5349 = fadd fast float %5345, %5348
  %5350 = fptosi float %5349 to i32
  %5351 = bitcast i32 %5350 to float
  %5352 = fsub fast float 1.000000e+00, %1751
  %5353 = fsub fast float 1.000000e+00, %1752
  %5354 = fsub fast float 1.000000e+00, %1796
  %5355 = fmul fast float %5351, %5352
  %5356 = fmul fast float %5351, %5353
  %5357 = fmul fast float %5351, %5354
  %5358 = fadd fast float %5355, %1751
  %5359 = fadd fast float %5356, %1752
  %5360 = fadd fast float %5357, %1796
  %5361 = fmul fast float %5305, 9.843750e-01
  %5362 = fadd fast float %5361, 7.812500e-03
  %5363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %5362, float %3086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5364 = extractvalue %dx.types.ResRet.f32 %5363, 0
  %5365 = extractvalue %dx.types.ResRet.f32 %5363, 1
  %5366 = extractvalue %dx.types.ResRet.f32 %5363, 2
  %5367 = extractvalue %dx.types.ResRet.f32 %5363, 3
  %5368 = fsub fast float %5366, %5364
  %5369 = fsub fast float %5367, %5365
  %5370 = fmul fast float %5368, %3092
  %5371 = fmul fast float %5369, %3092
  %5372 = fadd fast float %5370, %5364
  %5373 = fadd fast float %5371, %5365
  %5374 = fmul fast float %5372, %1751
  %5375 = fmul fast float %5372, %1752
  %5376 = fmul fast float %5372, %1796
  %5377 = fadd fast float %5374, %5373
  %5378 = fadd fast float %5375, %5373
  %5379 = fadd fast float %5376, %5373
  %5380 = call float @dx.op.binary.f32(i32 35, float %5378, float %5379)  ; FMax(a,b)
  %5381 = call float @dx.op.binary.f32(i32 35, float %5377, float %5380)  ; FMax(a,b)
  %5382 = fsub fast float 1.000000e+00, %5381
  %5383 = call float @dx.op.binary.f32(i32 35, float %5314, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5384 = fdiv fast float %1090, %5383
  %5385 = fmul fast float %3714, %5384
  %5386 = fmul fast float %3716, %5384
  %5387 = fmul fast float %3718, %5384
  %5388 = call float @dx.op.unary.f32(i32 21, float %5385)  ; Exp(value)
  %5389 = call float @dx.op.unary.f32(i32 21, float %5386)  ; Exp(value)
  %5390 = call float @dx.op.unary.f32(i32 21, float %5387)  ; Exp(value)
  %5391 = call float @dx.op.unary.f32(i32 7, float %5388)  ; Saturate(value)
  %5392 = call float @dx.op.unary.f32(i32 7, float %5389)  ; Saturate(value)
  %5393 = call float @dx.op.unary.f32(i32 7, float %5390)  ; Saturate(value)
  %5394 = select i1 %3711, float %5391, float 0.000000e+00
  %5395 = select i1 %3712, float %5392, float 0.000000e+00
  %5396 = select i1 %3713, float %5393, float 0.000000e+00
  %5397 = fsub fast float -0.000000e+00, %1748
  %5398 = fsub fast float -0.000000e+00, %1749
  %5399 = fsub fast float -0.000000e+00, %1750
  %5400 = call float @dx.op.dot3.f32(i32 55, float %3924, float %3925, float %3926, float %5397, float %5398, float %5399)  ; Dot3(ax,ay,az,bx,by,bz)
  %5401 = call float @dx.op.unary.f32(i32 7, float %5400)  ; Saturate(value)
  %5402 = fmul fast float %5401, 9.843750e-01
  %5403 = fadd fast float %5402, 7.812500e-03
  %5404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %5403, float %3086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5405 = extractvalue %dx.types.ResRet.f32 %5404, 0
  %5406 = extractvalue %dx.types.ResRet.f32 %5404, 1
  %5407 = extractvalue %dx.types.ResRet.f32 %5404, 2
  %5408 = extractvalue %dx.types.ResRet.f32 %5404, 3
  %5409 = fsub fast float %5407, %5405
  %5410 = fsub fast float %5408, %5406
  %5411 = fmul fast float %5409, %3092
  %5412 = fmul fast float %5410, %3092
  %5413 = fadd fast float %5411, %5405
  %5414 = fadd fast float %5412, %5406
  %5415 = fmul fast float %5413, %1751
  %5416 = fmul fast float %5413, %1752
  %5417 = fmul fast float %5413, %1796
  %5418 = fadd fast float %5415, %5414
  %5419 = fadd fast float %5416, %5414
  %5420 = fadd fast float %5417, %5414
  %5421 = call float @dx.op.binary.f32(i32 35, float %5419, float %5420)  ; FMax(a,b)
  %5422 = call float @dx.op.binary.f32(i32 35, float %5418, float %5421)  ; FMax(a,b)
  %5423 = fsub fast float 1.000000e+00, %5422
  %5424 = fmul fast float %1813, %3778
  %5425 = fadd fast float %3772, %5424
  %5426 = call float @dx.op.unary.f32(i32 7, float %5425)  ; Saturate(value)
  %5427 = fsub fast float %3924, %1804
  %5428 = fsub fast float %3925, %1805
  %5429 = fsub fast float %3926, %1806
  %5430 = call float @dx.op.dot3.f32(i32 55, float %5427, float %5428, float %5429, float %5427, float %5428, float %5429)  ; Dot3(ax,ay,az,bx,by,bz)
  %5431 = call float @dx.op.unary.f32(i32 25, float %5430)  ; Rsqrt(value)
  %5432 = fmul fast float %5431, %5427
  %5433 = fmul fast float %5431, %5428
  %5434 = fmul fast float %5431, %5429
  %5435 = call float @dx.op.dot3.f32(i32 55, float %5397, float %5398, float %5399, float %5432, float %5433, float %5434)  ; Dot3(ax,ay,az,bx,by,bz)
  %5436 = fmul fast float %5435, %5435
  %5437 = call float @dx.op.unary.f32(i32 6, float %5401)  ; FAbs(value)
  %5438 = call float @dx.op.binary.f32(i32 35, float %5426, float 0x3F847AE140000000)  ; FMax(a,b)
  %5439 = fmul fast float %5438, %5438
  %5440 = fmul fast float %5439, %5439
  %5441 = fsub fast float 1.000000e+00, %5440
  %5442 = fmul fast float %5316, %5441
  %5443 = fadd fast float %5442, %5440
  %5444 = bitcast float %5443 to i32
  %5445 = ashr i32 %5444, 1
  %5446 = add nsw i32 %5445, 532487669
  %5447 = bitcast i32 %5446 to float
  %5448 = fadd fast float %5447, %1798
  %5449 = fmul fast float %5440, %5436
  %5450 = fsub fast float 1.000000e+00, %5436
  %5451 = fadd fast float %5450, %5449
  %5452 = fmul fast float %5437, %5437
  %5453 = fmul fast float %5452, %5441
  %5454 = fadd fast float %5453, %5440
  %5455 = bitcast float %5454 to i32
  %5456 = ashr i32 %5455, 1
  %5457 = add nsw i32 %5456, 532487669
  %5458 = bitcast i32 %5457 to float
  %5459 = fadd fast float %5458, %5437
  %5460 = fmul fast float %5451, %5451
  %5461 = fmul fast float %5460, %5448
  %5462 = fmul fast float %5461, %5459
  %5463 = fdiv fast float 0x3FF0A00000000000, %5462
  %5464 = fmul fast float %5463, %5440
  %5465 = fmul fast float %5401, %5394
  %5466 = fmul fast float %5401, %5395
  %5467 = fmul fast float %5401, %5396
  %5468 = fmul fast float %5465, %5423
  %5469 = fmul fast float %5468, %5464
  %5470 = fmul fast float %5466, %5423
  %5471 = fmul fast float %5470, %5464
  %5472 = fmul fast float %5467, %5423
  %5473 = fmul fast float %5472, %5464
  %5474 = fmul fast float %5339, %5311
  %5475 = fmul fast float %5474, %5358
  %5476 = fmul fast float %5474, %5359
  %5477 = fmul fast float %5474, %5360
  %5478 = fmul fast float %5311, %5294
  %5479 = fmul fast float %5478, %5382
  %5480 = fmul fast float %5311, %5295
  %5481 = fmul fast float %5480, %5382
  %5482 = fmul fast float %5311, %5296
  %5483 = fmul fast float %5482, %5382
  %5484 = fadd fast float %5469, %5475
  %5485 = fadd fast float %5471, %5476
  %5486 = fadd fast float %5473, %5477
  %5487 = fmul fast float %5484, %5294
  %5488 = fmul fast float %5485, %5295
  %5489 = fmul fast float %5486, %5296
  %5490 = fadd fast float %5479, %3706
  %5491 = fmul fast float %5490, %1087
  %5492 = fadd fast float %5481, %3707
  %5493 = fmul fast float %5492, %1087
  %5494 = fadd fast float %5483, %3708
  %5495 = fmul fast float %5494, %1087
  %5496 = fadd fast float %5487, %3913
  %5497 = fmul fast float %5496, %1087
  %5498 = fadd fast float %5488, %3915
  %5499 = fmul fast float %5498, %1087
  %5500 = fadd fast float %5489, %3917
  %5501 = fmul fast float %5500, %1087
  br label %5502

; <label>:5502                                    ; preds = %5278, %5212, %3899
  %5503 = phi float [ %3914, %3899 ], [ %3914, %5212 ], [ %5497, %5278 ]
  %5504 = phi float [ %3916, %3899 ], [ %3916, %5212 ], [ %5499, %5278 ]
  %5505 = phi float [ %3918, %3899 ], [ %3918, %5212 ], [ %5501, %5278 ]
  %5506 = phi float [ %3785, %3899 ], [ %3785, %5212 ], [ %5491, %5278 ]
  %5507 = phi float [ %3786, %3899 ], [ %3786, %5212 ], [ %5493, %5278 ]
  %5508 = phi float [ %3787, %3899 ], [ %3787, %5212 ], [ %5495, %5278 ]
  %5509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5510 = extractvalue %dx.types.CBufRet.i32 %5509, 0
  %5511 = icmp eq i32 %5510, 0
  br i1 %5511, label %6229, label %5512

; <label>:5512                                    ; preds = %5502
  %5513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5514 = extractvalue %dx.types.CBufRet.f32 %5513, 2
  %5515 = extractvalue %dx.types.CBufRet.f32 %5513, 3
  %5516 = fmul fast float %5514, %99
  %5517 = fmul fast float %5515, %100
  %5518 = fptoui float %5516 to i32
  %5519 = fptoui float %5517 to i32
  %5520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5521 = extractvalue %dx.types.CBufRet.f32 %5520, 0
  %5522 = extractvalue %dx.types.CBufRet.f32 %5520, 2
  %5523 = extractvalue %dx.types.CBufRet.f32 %5520, 3
  %5524 = fadd fast float %87, -4.000000e+00
  %5525 = call float @dx.op.binary.f32(i32 35, float %5524, float 0.000000e+00)  ; FMax(a,b)
  %5526 = fadd fast float %5525, %5521
  %5527 = fmul fast float %5526, %5522
  %5528 = call float @dx.op.unary.f32(i32 23, float %5527)  ; Log(value)
  %5529 = fmul fast float %5528, %5523
  %5530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5531 = extractvalue %dx.types.CBufRet.f32 %5530, 2
  %5532 = fmul fast float %5529, %5531
  %5533 = call float @dx.op.unary.f32(i32 7, float %5532)  ; Saturate(value)
  %5534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5535 = extractvalue %dx.types.CBufRet.i32 %5534, 1
  %5536 = add i32 %5535, -1
  %5537 = uitofp i32 %5535 to float
  %5538 = fmul fast float %5537, %5533
  %5539 = fptoui float %5538 to i32
  %5540 = call i32 @dx.op.binary.i32(i32 40, i32 %5539, i32 %5536)  ; UMin(a,b)
  %5541 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5542 = extractvalue %dx.types.CBufRet.i32 %5541, 2
  %5543 = extractvalue %dx.types.CBufRet.i32 %5541, 3
  %5544 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5519, i32 %5542, i32 %5518)  ; UMad(a,b,c)
  %5545 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5540, i32 %5543, i32 %5544)  ; UMad(a,b,c)
  %5546 = add nsw i32 %5510, -1
  %5547 = call i32 @dx.op.binary.i32(i32 37, i32 %5546, i32 0)  ; IMax(a,b)
  %5548 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %5549 = fptoui float %5548 to i32
  %5550 = lshr i32 %5549, 5
  %5551 = call i32 @dx.op.binary.i32(i32 40, i32 %5550, i32 8191)  ; UMin(a,b)
  %5552 = shl i32 %5551, 2
  %5553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5552, i32 undef)  ; BufferLoad(srv,index,wot)
  %5554 = extractvalue %dx.types.ResRet.i32 %5553, 0
  %5555 = lshr i32 %5554, 16
  %5556 = and i32 %5554, 65535
  %5557 = lshr i32 %5554, 21
  %5558 = lshr i32 %5556, 5
  %5559 = call i32 @dx.op.binary.i32(i32 40, i32 %5558, i32 %5547)  ; UMin(a,b)
  %5560 = icmp ugt i32 %5557, %5559
  br i1 %5560, label %6229, label %5561

; <label>:5561                                    ; preds = %5512
  br label %5562

; <label>:5562                                    ; preds = %6219, %5561
  %5563 = phi i32 [ %6226, %6219 ], [ %5557, %5561 ]
  %5564 = phi float [ %6220, %6219 ], [ %5503, %5561 ]
  %5565 = phi float [ %6221, %6219 ], [ %5504, %5561 ]
  %5566 = phi float [ %6222, %6219 ], [ %5505, %5561 ]
  %5567 = phi float [ %6223, %6219 ], [ %5506, %5561 ]
  %5568 = phi float [ %6224, %6219 ], [ %5507, %5561 ]
  %5569 = phi float [ %6225, %6219 ], [ %5508, %5561 ]
  %5570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5571 = extractvalue %dx.types.CBufRet.i32 %5570, 0
  %5572 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5545, i32 %5571, i32 %5563)  ; UMad(a,b,c)
  %5573 = shl i32 %5572, 2
  %5574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5573, i32 undef)  ; BufferLoad(srv,index,wot)
  %5575 = extractvalue %dx.types.ResRet.i32 %5574, 0
  %5576 = shl i32 %5563, 5
  %5577 = sub nsw i32 %5555, %5576
  %5578 = call i32 @dx.op.binary.i32(i32 37, i32 %5577, i32 0)  ; IMax(a,b)
  %5579 = call i32 @dx.op.binary.i32(i32 38, i32 %5578, i32 31)  ; IMin(a,b)
  %5580 = sub nsw i32 1, %5555
  %5581 = add nsw i32 %5580, %5556
  %5582 = call i32 @dx.op.binary.i32(i32 37, i32 %5581, i32 0)  ; IMax(a,b)
  %5583 = call i32 @dx.op.binary.i32(i32 38, i32 %5582, i32 32)  ; IMin(a,b)
  %5584 = and i32 %5583, 31
  %5585 = shl i32 -1, %5584
  %5586 = xor i32 %5585, -1
  %5587 = and i32 %5579, 31
  %5588 = shl i32 %5586, %5587
  %5589 = icmp eq i32 %5583, 32
  %5590 = select i1 %5589, i32 -1, i32 %5588
  %5591 = and i32 %5590, %5575
  %5592 = icmp eq i32 %5591, 0
  br i1 %5592, label %6219, label %5593

; <label>:5593                                    ; preds = %5562
  br label %5594

; <label>:5594                                    ; preds = %5729, %5593
  %5595 = phi i32 [ %5606, %5729 ], [ %5591, %5593 ]
  %5596 = phi float [ %5730, %5729 ], [ %5564, %5593 ]
  %5597 = phi float [ %5731, %5729 ], [ %5565, %5593 ]
  %5598 = phi float [ %5732, %5729 ], [ %5566, %5593 ]
  %5599 = phi float [ %5733, %5729 ], [ %5567, %5593 ]
  %5600 = phi float [ %5734, %5729 ], [ %5568, %5593 ]
  %5601 = phi float [ %5735, %5729 ], [ %5569, %5593 ]
  %5602 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5595)  ; FirstbitLo(value)
  %5603 = add i32 %5602, %5576
  %5604 = and i32 %5602, 31
  %5605 = shl i32 1, %5604
  %5606 = xor i32 %5605, %5595
  %5607 = mul i32 %5603, 112
  %5608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5607, i32 undef)  ; BufferLoad(srv,index,wot)
  %5609 = extractvalue %dx.types.ResRet.f32 %5608, 0
  %5610 = extractvalue %dx.types.ResRet.f32 %5608, 1
  %5611 = extractvalue %dx.types.ResRet.f32 %5608, 2
  %5612 = or i32 %5607, 12
  %5613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5612, i32 undef)  ; BufferLoad(srv,index,wot)
  %5614 = extractvalue %dx.types.ResRet.f32 %5613, 0
  %5615 = add i32 %5607, 16
  %5616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5615, i32 undef)  ; BufferLoad(srv,index,wot)
  %5617 = extractvalue %dx.types.ResRet.f32 %5616, 0
  %5618 = extractvalue %dx.types.ResRet.f32 %5616, 1
  %5619 = extractvalue %dx.types.ResRet.f32 %5616, 2
  %5620 = add i32 %5607, 28
  %5621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5620, i32 undef)  ; BufferLoad(srv,index,wot)
  %5622 = extractvalue %dx.types.ResRet.i32 %5621, 0
  %5623 = add i32 %5607, 44
  %5624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5623, i32 undef)  ; BufferLoad(srv,index,wot)
  %5625 = extractvalue %dx.types.ResRet.f32 %5624, 0
  %5626 = add i32 %5607, 48
  %5627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5626, i32 undef)  ; BufferLoad(srv,index,wot)
  %5628 = extractvalue %dx.types.ResRet.f32 %5627, 0
  %5629 = extractvalue %dx.types.ResRet.f32 %5627, 1
  %5630 = extractvalue %dx.types.ResRet.f32 %5627, 2
  %5631 = extractvalue %dx.types.ResRet.f32 %5627, 3
  %5632 = add i32 %5607, 64
  %5633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5632, i32 undef)  ; BufferLoad(srv,index,wot)
  %5634 = extractvalue %dx.types.ResRet.f32 %5633, 0
  %5635 = extractvalue %dx.types.ResRet.f32 %5633, 1
  %5636 = extractvalue %dx.types.ResRet.f32 %5633, 2
  %5637 = extractvalue %dx.types.ResRet.f32 %5633, 3
  %5638 = add i32 %5607, 80
  %5639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5638, i32 undef)  ; BufferLoad(srv,index,wot)
  %5640 = extractvalue %dx.types.ResRet.f32 %5639, 1
  %5641 = extractvalue %dx.types.ResRet.f32 %5639, 2
  %5642 = add i32 %5607, 92
  %5643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5642, i32 undef)  ; BufferLoad(srv,index,wot)
  %5644 = extractvalue %dx.types.ResRet.i32 %5643, 0
  %5645 = call float @dx.op.dot3.f32(i32 55, float %5609, float %5610, float %5611, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5646 = select i1 %239, float %5640, float %5609
  %5647 = select i1 %239, float %5645, float %5610
  %5648 = select i1 %239, float %5641, float %5611
  %5649 = and i32 %5644, 65535
  %5650 = uitofp i32 %5649 to float
  %5651 = lshr i32 %5644, 16
  %5652 = uitofp i32 %5651 to float
  %5653 = and i32 %5622, 65535
  %5654 = and i32 %5622, 50331648
  %5655 = icmp slt i32 %5622, 0
  %5656 = icmp eq i32 %5654, 33554432
  %5657 = fsub fast float %5628, %146
  %5658 = fsub fast float %5629, %147
  %5659 = fsub fast float %5630, %148
  %5660 = call float @dx.op.dot3.f32(i32 55, float %5657, float %5658, float %5659, float %5657, float %5658, float %5659)  ; Dot3(ax,ay,az,bx,by,bz)
  %5661 = call float @dx.op.unary.f32(i32 24, float %5660)  ; Sqrt(value)
  %5662 = fdiv fast float 1.000000e+00, %5661
  %5663 = fmul fast float %5662, %5657
  %5664 = fmul fast float %5662, %5658
  %5665 = fmul fast float %5662, %5659
  %5666 = fadd fast float %5661, %5614
  %5667 = fdiv fast float 1.000000e+00, %5666
  %5668 = fmul float %5625, %5667
  %5669 = fmul float %5668, %5668
  %5670 = call float @dx.op.unary.f32(i32 7, float %5669)  ; Saturate(value)
  br i1 %5656, label %5671, label %5692

; <label>:5671                                    ; preds = %5594
  %5672 = fmul fast float %5636, %5617
  %5673 = fmul fast float %5636, %5618
  %5674 = fmul fast float %5636, %5619
  %5675 = fadd fast float %5657, %5672
  %5676 = fadd fast float %5658, %5673
  %5677 = fadd fast float %5659, %5674
  %5678 = call float @dx.op.dot3.f32(i32 55, float %5675, float %5676, float %5677, float %5675, float %5676, float %5677)  ; Dot3(ax,ay,az,bx,by,bz)
  %5679 = call float @dx.op.unary.f32(i32 25, float %5678)  ; Rsqrt(value)
  %5680 = fmul fast float %5679, %5675
  %5681 = fmul fast float %5679, %5676
  %5682 = fmul fast float %5679, %5677
  %5683 = fsub fast float %146, %5628
  %5684 = fsub fast float %147, %5629
  %5685 = fsub fast float %148, %5630
  %5686 = fsub fast float -0.000000e+00, %5683
  %5687 = fsub fast float -0.000000e+00, %5684
  %5688 = fsub fast float -0.000000e+00, %5685
  %5689 = call float @dx.op.dot3.f32(i32 55, float %5686, float %5687, float %5688, float %5617, float %5618, float %5619)  ; Dot3(ax,ay,az,bx,by,bz)
  %5690 = fcmp fast ogt float %5689, 0.000000e+00
  %5691 = uitofp i1 %5690 to float
  br label %5692

; <label>:5692                                    ; preds = %5671, %5594
  %5693 = phi float [ %5691, %5671 ], [ 1.000000e+00, %5594 ]
  %5694 = phi float [ %5680, %5671 ], [ %5663, %5594 ]
  %5695 = phi float [ %5681, %5671 ], [ %5664, %5594 ]
  %5696 = phi float [ %5682, %5671 ], [ %5665, %5594 ]
  %5697 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %5619, float %5694, float %5695, float %5696)  ; Dot3(ax,ay,az,bx,by,bz)
  %5698 = fmul fast float %5697, %5697
  %5699 = call float @dx.op.unary.f32(i32 7, float %5698)  ; Saturate(value)
  %5700 = fsub fast float 1.000000e+00, %5699
  %5701 = fmul fast float %5700, 5.000000e-01
  %5702 = fcmp fast ogt float %5697, 0.000000e+00
  %5703 = fsub fast float 1.000000e+00, %5701
  %5704 = select i1 %5702, float %5701, float %5703
  %5705 = fmul fast float %5704, %5652
  %5706 = fadd fast float %5705, %5650
  %5707 = fmul fast float %5706, 0x3EF0001000000000
  %5708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %64, float %5707, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5709 = extractvalue %dx.types.ResRet.f32 %5708, 0
  %5710 = fmul fast float %5697, %5634
  %5711 = fadd fast float %5710, %5635
  %5712 = call float @dx.op.unary.f32(i32 7, float %5711)  ; Saturate(value)
  %5713 = select i1 %5656, float 1.000000e+00, float %5712
  %5714 = select i1 %5656, float %5712, float 1.000000e+00
  %5715 = fmul fast float %5661, %5631
  %5716 = fsub fast float 1.000000e+00, %5715
  %5717 = fmul fast float %5716, %5637
  %5718 = call float @dx.op.unary.f32(i32 7, float %5717)  ; Saturate(value)
  %5719 = fmul fast float %5718, %5714
  %5720 = fmul fast float %5719, 2.000000e+00
  %5721 = fsub fast float 3.000000e+00, %5720
  %5722 = fmul fast float %5709, %5693
  %5723 = fmul fast float %5719, %5719
  %5724 = fmul fast float %5723, %5722
  %5725 = fmul fast float %5724, %5721
  %5726 = call float @dx.op.binary.f32(i32 36, float %5725, float %5725)  ; FMin(a,b)
  %5727 = call float @dx.op.binary.f32(i32 36, float %5725, float %5726)  ; FMin(a,b)
  %5728 = fcmp fast ogt float %5727, 0.000000e+00
  br i1 %5728, label %5737, label %5729, !dx.controlflow.hints !143

; <label>:5729                                    ; preds = %6187, %5883, %5692
  %5730 = phi float [ %5596, %5883 ], [ %5596, %5692 ], [ %6215, %6187 ]
  %5731 = phi float [ %5597, %5883 ], [ %5597, %5692 ], [ %6216, %6187 ]
  %5732 = phi float [ %5598, %5883 ], [ %5598, %5692 ], [ %6217, %6187 ]
  %5733 = phi float [ %5599, %5883 ], [ %5599, %5692 ], [ %6209, %6187 ]
  %5734 = phi float [ %5600, %5883 ], [ %5600, %5692 ], [ %6210, %6187 ]
  %5735 = phi float [ %5601, %5883 ], [ %5601, %5692 ], [ %6211, %6187 ]
  %5736 = icmp eq i32 %5595, %5605
  br i1 %5736, label %6218, label %5594

; <label>:5737                                    ; preds = %5692
  %5738 = icmp eq i32 %5653, 255
  br i1 %5738, label %5883, label %5739, !dx.controlflow.hints !144

; <label>:5739                                    ; preds = %5737
  %5740 = mul nuw nsw i32 %5653, 176
  %5741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5740, i32 undef)  ; BufferLoad(srv,index,wot)
  %5742 = extractvalue %dx.types.ResRet.f32 %5741, 0
  %5743 = extractvalue %dx.types.ResRet.f32 %5741, 1
  %5744 = extractvalue %dx.types.ResRet.f32 %5741, 2
  %5745 = extractvalue %dx.types.ResRet.f32 %5741, 3
  %5746 = add nuw nsw i32 %5740, 16
  %5747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5746, i32 undef)  ; BufferLoad(srv,index,wot)
  %5748 = extractvalue %dx.types.ResRet.f32 %5747, 0
  %5749 = extractvalue %dx.types.ResRet.f32 %5747, 1
  %5750 = add nuw nsw i32 %5740, 32
  %5751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5750, i32 undef)  ; BufferLoad(srv,index,wot)
  %5752 = extractvalue %dx.types.ResRet.f32 %5751, 0
  %5753 = extractvalue %dx.types.ResRet.f32 %5751, 1
  %5754 = extractvalue %dx.types.ResRet.f32 %5751, 2
  %5755 = add nuw nsw i32 %5740, 48
  %5756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5755, i32 undef)  ; BufferLoad(srv,index,wot)
  %5757 = extractvalue %dx.types.ResRet.f32 %5756, 0
  %5758 = extractvalue %dx.types.ResRet.f32 %5756, 1
  %5759 = extractvalue %dx.types.ResRet.f32 %5756, 2
  %5760 = extractvalue %dx.types.ResRet.f32 %5756, 3
  %5761 = add nuw nsw i32 %5740, 64
  %5762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5761, i32 undef)  ; BufferLoad(srv,index,wot)
  %5763 = extractvalue %dx.types.ResRet.f32 %5762, 0
  %5764 = extractvalue %dx.types.ResRet.f32 %5762, 1
  %5765 = extractvalue %dx.types.ResRet.f32 %5762, 2
  %5766 = extractvalue %dx.types.ResRet.f32 %5762, 3
  %5767 = add nuw nsw i32 %5740, 80
  %5768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5767, i32 undef)  ; BufferLoad(srv,index,wot)
  %5769 = extractvalue %dx.types.ResRet.f32 %5768, 0
  %5770 = extractvalue %dx.types.ResRet.f32 %5768, 1
  %5771 = extractvalue %dx.types.ResRet.f32 %5768, 2
  %5772 = extractvalue %dx.types.ResRet.f32 %5768, 3
  %5773 = add nuw nsw i32 %5740, 96
  %5774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5773, i32 undef)  ; BufferLoad(srv,index,wot)
  %5775 = extractvalue %dx.types.ResRet.f32 %5774, 0
  %5776 = extractvalue %dx.types.ResRet.f32 %5774, 1
  %5777 = extractvalue %dx.types.ResRet.f32 %5774, 2
  %5778 = extractvalue %dx.types.ResRet.f32 %5774, 3
  %5779 = bitcast float %5749 to i32
  %5780 = fmul fast float %5754, %76
  %5781 = fmul fast float %5754, %77
  %5782 = fmul fast float %5754, %78
  %5783 = fadd fast float %5780, %146
  %5784 = fadd fast float %5781, %147
  %5785 = fadd fast float %5782, %148
  %5786 = fmul fast float %5783, %5757
  %5787 = call float @dx.op.tertiary.f32(i32 46, float %5784, float %5763, float %5786)  ; FMad(a,b,c)
  %5788 = call float @dx.op.tertiary.f32(i32 46, float %5785, float %5769, float %5787)  ; FMad(a,b,c)
  %5789 = fadd fast float %5788, %5775
  %5790 = fmul fast float %5783, %5758
  %5791 = call float @dx.op.tertiary.f32(i32 46, float %5784, float %5764, float %5790)  ; FMad(a,b,c)
  %5792 = call float @dx.op.tertiary.f32(i32 46, float %5785, float %5770, float %5791)  ; FMad(a,b,c)
  %5793 = fadd fast float %5792, %5776
  %5794 = fmul fast float %5783, %5759
  %5795 = call float @dx.op.tertiary.f32(i32 46, float %5784, float %5765, float %5794)  ; FMad(a,b,c)
  %5796 = call float @dx.op.tertiary.f32(i32 46, float %5785, float %5771, float %5795)  ; FMad(a,b,c)
  %5797 = fadd fast float %5796, %5777
  %5798 = fmul fast float %5783, %5760
  %5799 = call float @dx.op.tertiary.f32(i32 46, float %5784, float %5766, float %5798)  ; FMad(a,b,c)
  %5800 = call float @dx.op.tertiary.f32(i32 46, float %5785, float %5772, float %5799)  ; FMad(a,b,c)
  %5801 = fadd fast float %5800, %5778
  %5802 = fdiv fast float %5789, %5801
  %5803 = fdiv fast float %5793, %5801
  %5804 = fdiv fast float %5797, %5801
  %5805 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5804)  ; FMax(a,b)
  %5806 = fmul fast float %252, 0x401921FB60000000
  %5807 = call float @dx.op.unary.f32(i32 13, float %5806)  ; Sin(value)
  %5808 = call float @dx.op.unary.f32(i32 12, float %5806)  ; Cos(value)
  %5809 = fmul fast float %5808, %5753
  %5810 = call float @dx.op.tertiary.f32(i32 46, float %5807, float %5753, float 0.000000e+00)  ; FMad(a,b,c)
  %5811 = fmul fast float %5753, %5807
  %5812 = fsub fast float -0.000000e+00, %5811
  %5813 = call float @dx.op.tertiary.f32(i32 46, float %5808, float %5753, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5814

; <label>:5814                                    ; preds = %5814, %5739
  %5815 = phi float [ 0.000000e+00, %5739 ], [ %5847, %5814 ]
  %5816 = phi float [ 0.000000e+00, %5739 ], [ %5849, %5814 ]
  %5817 = phi i32 [ 0, %5739 ], [ %5850, %5814 ]
  %5818 = mul i32 %5817, 2
  %5819 = add i32 0, %5818
  %5820 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5819
  %5821 = load float, float* %5820, align 4
  %5822 = mul i32 %5817, 2
  %5823 = add i32 1, %5822
  %5824 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5823
  %5825 = load float, float* %5824, align 4
  %5826 = fmul fast float %5809, %5821
  %5827 = call float @dx.op.tertiary.f32(i32 46, float %5825, float %5812, float %5826)  ; FMad(a,b,c)
  %5828 = fmul fast float %5821, %5810
  %5829 = call float @dx.op.tertiary.f32(i32 46, float %5825, float %5813, float %5828)  ; FMad(a,b,c)
  %5830 = fadd fast float %5827, %5802
  %5831 = fadd fast float %5829, %5803
  %5832 = fmul fast float %5830, %5748
  %5833 = fmul fast float %5831, %5748
  %5834 = call float @dx.op.binary.f32(i32 35, float %5832, float %5744)  ; FMax(a,b)
  %5835 = call float @dx.op.binary.f32(i32 35, float %5833, float %5744)  ; FMax(a,b)
  %5836 = call float @dx.op.binary.f32(i32 36, float %5834, float %5745)  ; FMin(a,b)
  %5837 = call float @dx.op.binary.f32(i32 36, float %5835, float %5745)  ; FMin(a,b)
  %5838 = fadd fast float %5836, %5742
  %5839 = fadd fast float %5837, %5743
  %5840 = uitofp i32 %5779 to float
  %5841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %65, float %5838, float %5839, float %5840, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5842 = extractvalue %dx.types.ResRet.f32 %5841, 0
  %5843 = fsub fast float %5842, %5805
  %5844 = fsub fast float %5843, %5752
  %5845 = fcmp fast ogt float %5844, 0.000000e+00
  %5846 = select i1 %5845, float 1.000000e+00, float 0.000000e+00
  %5847 = fadd fast float %5846, %5815
  %5848 = select i1 %5845, float %5844, float 0.000000e+00
  %5849 = fadd fast float %5848, %5816
  %5850 = add nuw nsw i32 %5817, 1
  %5851 = icmp eq i32 %5850, 8
  br i1 %5851, label %5852, label %5814

; <label>:5852                                    ; preds = %5814
  %5853 = fdiv fast float 1.000000e+00, %5847
  %5854 = fmul fast float %5853, %5849
  %5855 = fdiv fast float 1.000000e+00, %5805
  %5856 = fmul fast float %5854, %5855
  %5857 = call float @dx.op.unary.f32(i32 7, float %5856)  ; Saturate(value)
  %5858 = call float @dx.op.binary.f32(i32 35, float %5857, float 0.000000e+00)  ; FMax(a,b)
  %5859 = fmul fast float %5847, 1.250000e-01
  %5860 = call float @dx.op.unary.f32(i32 7, float %5859)  ; Saturate(value)
  %5861 = fmul fast float %5860, 2.000000e+00
  %5862 = fadd fast float %5861, -1.000000e+00
  %5863 = fcmp fast ogt float %5862, 0.000000e+00
  %5864 = fcmp fast olt float %5862, 0.000000e+00
  %5865 = zext i1 %5863 to i32
  %5866 = zext i1 %5864 to i32
  %5867 = sub nsw i32 %5865, %5866
  %5868 = sitofp i32 %5867 to float
  %5869 = fmul fast float %5868, %5862
  %5870 = fsub fast float 1.000000e+00, %5869
  %5871 = fmul fast float %5870, %5870
  %5872 = fmul fast float %5871, %5870
  %5873 = fsub fast float %5870, %5872
  %5874 = fmul fast float %5873, %5858
  %5875 = fsub fast float 1.000000e+00, %5872
  %5876 = fsub fast float %5875, %5874
  %5877 = fmul fast float %5868, 5.000000e-01
  %5878 = fmul fast float %5877, %5876
  %5879 = fsub fast float -5.000000e-01, %5878
  %5880 = fmul fast float %5879, %5713
  %5881 = fadd fast float %5880, 1.000000e+00
  %5882 = fmul fast float %5881, %5725
  br label %5883

; <label>:5883                                    ; preds = %5852, %5737
  %5884 = phi float [ %5882, %5852 ], [ %5725, %5737 ]
  %5885 = call float @dx.op.binary.f32(i32 36, float %5884, float %5884)  ; FMin(a,b)
  %5886 = call float @dx.op.binary.f32(i32 36, float %5884, float %5885)  ; FMin(a,b)
  %5887 = fcmp fast ogt float %5886, 0.000000e+00
  br i1 %5887, label %5888, label %5729, !dx.controlflow.hints !145

; <label>:5888                                    ; preds = %5883
  %5889 = fmul fast float %5884, %5646
  %5890 = fmul fast float %5884, %5647
  %5891 = fmul fast float %5884, %5648
  %5892 = fsub fast float %5630, %1547
  %5893 = fcmp fast ogt float %5892, 0.000000e+00
  %5894 = fsub fast float %148, %1547
  %5895 = fcmp fast ogt float %5894, 0.000000e+00
  %5896 = xor i1 %5895, %5893
  %5897 = fsub fast float %1547, %5630
  %5898 = fmul fast float %5897, 2.000000e+00
  %5899 = fadd fast float %5898, %5630
  %5900 = select i1 %5896, float %5630, float %5899
  %5901 = fsub fast float %5900, %148
  %5902 = call float @dx.op.dot3.f32(i32 55, float %5657, float %5658, float %5901, float %5657, float %5658, float %5901)  ; Dot3(ax,ay,az,bx,by,bz)
  %5903 = call float @dx.op.unary.f32(i32 25, float %5902)  ; Rsqrt(value)
  %5904 = fmul fast float %5903, %5657
  %5905 = fmul fast float %5903, %5658
  %5906 = fmul fast float %5903, %5901
  %5907 = fsub fast float %1547, %148
  %5908 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5907)  ; Dot3(ax,ay,az,bx,by,bz)
  %5909 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5904, float %5905, float %5906)  ; Dot3(ax,ay,az,bx,by,bz)
  %5910 = fdiv fast float 1.000000e+00, %5909
  %5911 = fmul fast float %5910, %5908
  %5912 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5894, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5913 = fcmp fast ogt float %5912, 0.000000e+00
  %5914 = fcmp fast olt float %5912, 0.000000e+00
  %5915 = zext i1 %5913 to i32
  %5916 = zext i1 %5914 to i32
  %5917 = sub nsw i32 %5915, %5916
  %5918 = sitofp i32 %5917 to float
  %5919 = fsub fast float %5900, %1547
  %5920 = call float @dx.op.dot3.f32(i32 55, float %5657, float %5658, float %5919, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5921 = fcmp fast ogt float %5920, 0.000000e+00
  %5922 = fcmp fast olt float %5920, 0.000000e+00
  %5923 = zext i1 %5921 to i32
  %5924 = zext i1 %5922 to i32
  %5925 = sub nsw i32 %5923, %5924
  %5926 = sitofp i32 %5925 to float
  %5927 = fcmp fast une float %5918, %5926
  br i1 %5927, label %5928, label %5938

; <label>:5928                                    ; preds = %5888
  %5929 = fmul fast float %5911, %5906
  %5930 = fmul fast float %5911, %5905
  %5931 = fmul fast float %5911, %5904
  %5932 = fmul fast float %5931, %5931
  %5933 = fmul fast float %5930, %5930
  %5934 = fadd fast float %5932, %5933
  %5935 = fmul fast float %5929, %5929
  %5936 = fadd fast float %5934, %5935
  %5937 = call float @dx.op.unary.f32(i32 24, float %5936)  ; Sqrt(value)
  br label %5950

; <label>:5938                                    ; preds = %5888
  %5939 = icmp slt i32 %5917, 0
  br i1 %5939, label %5940, label %5950

; <label>:5940                                    ; preds = %5938
  %5941 = fsub fast float %146, %5628
  %5942 = fsub fast float %147, %5629
  %5943 = fsub fast float %148, %5900
  %5944 = fmul fast float %5941, %5941
  %5945 = fmul fast float %5942, %5942
  %5946 = fadd fast float %5944, %5945
  %5947 = fmul fast float %5943, %5943
  %5948 = fadd fast float %5946, %5947
  %5949 = call float @dx.op.unary.f32(i32 24, float %5948)  ; Sqrt(value)
  br label %5950

; <label>:5950                                    ; preds = %5940, %5938, %5928
  %5951 = phi float [ %5937, %5928 ], [ %5949, %5940 ], [ 0.000000e+00, %5938 ]
  %5952 = and i1 %5895, %5893
  %5953 = fsub fast float -0.000000e+00, %5951
  %5954 = select i1 %5952, float -0.000000e+00, float %5953
  %5955 = fmul fast float %1548, 0x3FF7154760000000
  %5956 = fmul fast float %5955, %5954
  %5957 = fmul fast float %1549, 0x3FF7154760000000
  %5958 = fmul fast float %5957, %5954
  %5959 = fmul fast float %1550, 0x3FF7154760000000
  %5960 = fmul fast float %5959, %5954
  %5961 = call float @dx.op.unary.f32(i32 21, float %5956)  ; Exp(value)
  %5962 = call float @dx.op.unary.f32(i32 21, float %5958)  ; Exp(value)
  %5963 = call float @dx.op.unary.f32(i32 21, float %5960)  ; Exp(value)
  %5964 = call float @dx.op.unary.f32(i32 7, float %5961)  ; Saturate(value)
  %5965 = call float @dx.op.unary.f32(i32 7, float %5962)  ; Saturate(value)
  %5966 = call float @dx.op.unary.f32(i32 7, float %5963)  ; Saturate(value)
  %5967 = fmul fast float %5889, %5964
  %5968 = fmul fast float %5890, %5965
  %5969 = fmul fast float %5891, %5966
  %5970 = fsub fast float %5663, %1747
  %5971 = fsub fast float %5664, %1746
  %5972 = fsub fast float %5665, %1745
  %5973 = call float @dx.op.dot3.f32(i32 55, float %5970, float %5971, float %5972, float %5970, float %5971, float %5972)  ; Dot3(ax,ay,az,bx,by,bz)
  %5974 = call float @dx.op.unary.f32(i32 25, float %5973)  ; Rsqrt(value)
  %5975 = fmul fast float %5974, %5970
  %5976 = fmul fast float %5974, %5971
  %5977 = fmul fast float %5974, %5972
  %5978 = call float @dx.op.dot3.f32(i32 55, float %5663, float %5664, float %5665, float %1748, float %1749, float %1750)  ; Dot3(ax,ay,az,bx,by,bz)
  %5979 = call float @dx.op.dot3.f32(i32 55, float %1744, float %1743, float %1742, float %5975, float %5976, float %5977)  ; Dot3(ax,ay,az,bx,by,bz)
  %5980 = call float @dx.op.unary.f32(i32 7, float %5978)  ; Saturate(value)
  %5981 = fmul fast float %5980, %5670
  %5982 = fmul fast float %5980, %5980
  %5983 = fmul fast float %5982, %3919
  %5984 = call float @dx.op.unary.f32(i32 7, float %5983)  ; Saturate(value)
  %5985 = fmul fast float %5981, %5984
  %5986 = bitcast float %5660 to i32
  %5987 = ashr i32 %5986, 1
  %5988 = sub nsw i32 1597463007, %5987
  %5989 = bitcast i32 %5988 to float
  %5990 = fmul fast float %5989, %5657
  %5991 = fmul fast float %5989, %5658
  %5992 = fmul fast float %5989, %5659
  %5993 = fsub fast float %5990, %1747
  %5994 = fsub fast float %5991, %1746
  %5995 = fsub fast float %5992, %1745
  %5996 = call float @dx.op.dot3.f32(i32 55, float %5993, float %5994, float %5995, float %5993, float %5994, float %5995)  ; Dot3(ax,ay,az,bx,by,bz)
  %5997 = call float @dx.op.unary.f32(i32 25, float %5996)  ; Rsqrt(value)
  %5998 = fmul fast float %5993, %5997
  %5999 = fmul fast float %5994, %5997
  %6000 = fmul fast float %5995, %5997
  %6001 = call float @dx.op.dot3.f32(i32 55, float %1748, float %1749, float %1750, float %5998, float %5999, float %6000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6002 = fmul fast float %6001, %6001
  %6003 = call float @dx.op.unary.f32(i32 6, float %5978)  ; FAbs(value)
  %6004 = fsub fast float 1.000000e+00, %1816
  %6005 = fmul fast float %1798, %1798
  %6006 = fmul fast float %6005, %6004
  %6007 = fadd fast float %6006, %1816
  %6008 = bitcast float %6007 to i32
  %6009 = ashr i32 %6008, 1
  %6010 = add nsw i32 %6009, 532487669
  %6011 = bitcast i32 %6010 to float
  %6012 = fadd fast float %6011, %1798
  %6013 = fmul fast float %1816, %6002
  %6014 = fsub fast float 1.000000e+00, %6002
  %6015 = fadd fast float %6014, %6013
  %6016 = fmul fast float %6003, %6003
  %6017 = fmul fast float %6016, %6004
  %6018 = fadd fast float %6017, %1816
  %6019 = bitcast float %6018 to i32
  %6020 = ashr i32 %6019, 1
  %6021 = add nsw i32 %6020, 532487669
  %6022 = bitcast i32 %6021 to float
  %6023 = fadd fast float %6022, %6003
  %6024 = fmul fast float %6015, %6015
  %6025 = fmul fast float %6024, %6012
  %6026 = fmul fast float %6025, %6023
  %6027 = fdiv fast float 1.000000e+00, %6026
  %6028 = bitcast float %1816 to i32
  %6029 = sitofp i32 %6028 to float
  %6030 = fmul fast float %6029, 0x3FE7F73180000000
  %6031 = fadd fast float %6030, 0x41AFE27C40000000
  %6032 = fptosi float %6031 to i32
  %6033 = bitcast i32 %6032 to float
  %6034 = fmul fast float %5625, 0x3FD80E9D60000000
  %6035 = fmul fast float %6034, %5989
  %6036 = fadd fast float %6033, %6035
  %6037 = bitcast float %6036 to i32
  %6038 = sub nsw i32 2129859010, %6037
  %6039 = bitcast i32 %6038 to float
  %6040 = fmul fast float %1816, %6027
  %6041 = fmul fast float %6040, %6033
  %6042 = fmul fast float %6041, %6039
  %6043 = fmul fast float %3082, 0x3FF9999980000000
  %6044 = fsub fast float 5.000000e+00, %6043
  %6045 = call float @dx.op.unary.f32(i32 6, float %5979)  ; FAbs(value)
  %6046 = fsub fast float 1.000000e+00, %6045
  %6047 = fmul fast float %3082, 0x41D9660740000000
  %6048 = fadd fast float %6047, 0xC1EFBF8940000000
  %6049 = bitcast float %6046 to i32
  %6050 = sitofp i32 %6049 to float
  %6051 = fmul fast float %6050, %6044
  %6052 = fadd fast float %6048, %6051
  %6053 = fptosi float %6052 to i32
  %6054 = bitcast i32 %6053 to float
  %6055 = fsub fast float 1.000000e+00, %1751
  %6056 = fsub fast float 1.000000e+00, %1752
  %6057 = fsub fast float 1.000000e+00, %1796
  %6058 = fmul fast float %6054, %6055
  %6059 = fmul fast float %6054, %6056
  %6060 = fmul fast float %6054, %6057
  %6061 = fadd fast float %6058, %1751
  %6062 = fadd fast float %6059, %1752
  %6063 = fadd fast float %6060, %1796
  %6064 = fmul fast float %5978, 9.843750e-01
  %6065 = fadd fast float %6064, 7.812500e-03
  %6066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %6065, float %3086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6067 = extractvalue %dx.types.ResRet.f32 %6066, 0
  %6068 = extractvalue %dx.types.ResRet.f32 %6066, 1
  %6069 = extractvalue %dx.types.ResRet.f32 %6066, 2
  %6070 = extractvalue %dx.types.ResRet.f32 %6066, 3
  %6071 = fsub fast float %6069, %6067
  %6072 = fsub fast float %6070, %6068
  %6073 = fmul fast float %6071, %3092
  %6074 = fmul fast float %6072, %3092
  %6075 = fadd fast float %6073, %6067
  %6076 = fadd fast float %6074, %6068
  %6077 = fmul fast float %6075, %1751
  %6078 = fmul fast float %6075, %1752
  %6079 = fmul fast float %6075, %1796
  %6080 = fadd fast float %6077, %6076
  %6081 = fadd fast float %6078, %6076
  %6082 = fadd fast float %6079, %6076
  %6083 = call float @dx.op.binary.f32(i32 35, float %6081, float %6082)  ; FMax(a,b)
  %6084 = call float @dx.op.binary.f32(i32 35, float %6080, float %6083)  ; FMax(a,b)
  %6085 = fsub fast float 1.000000e+00, %6084
  %6086 = call float @dx.op.binary.f32(i32 35, float %6003, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6087 = fdiv fast float %1090, %6086
  %6088 = fsub fast float -0.000000e+00, %1748
  %6089 = fsub fast float -0.000000e+00, %1749
  %6090 = fsub fast float -0.000000e+00, %1750
  %6091 = call float @dx.op.dot3.f32(i32 55, float %5663, float %5664, float %5665, float %6088, float %6089, float %6090)  ; Dot3(ax,ay,az,bx,by,bz)
  %6092 = call float @dx.op.unary.f32(i32 7, float %6091)  ; Saturate(value)
  %6093 = fmul fast float %6092, 9.843750e-01
  %6094 = fadd fast float %6093, 7.812500e-03
  %6095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %6094, float %3086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6096 = extractvalue %dx.types.ResRet.f32 %6095, 0
  %6097 = extractvalue %dx.types.ResRet.f32 %6095, 1
  %6098 = extractvalue %dx.types.ResRet.f32 %6095, 2
  %6099 = extractvalue %dx.types.ResRet.f32 %6095, 3
  %6100 = fsub fast float %6098, %6096
  %6101 = fsub fast float %6099, %6097
  %6102 = fmul fast float %6100, %3092
  %6103 = fmul fast float %6101, %3092
  %6104 = fadd fast float %6102, %6096
  %6105 = fadd fast float %6103, %6097
  %6106 = fmul fast float %1813, %3778
  %6107 = fadd fast float %3772, %6106
  %6108 = call float @dx.op.unary.f32(i32 7, float %6107)  ; Saturate(value)
  %6109 = fsub fast float %5990, %1804
  %6110 = fsub fast float %5991, %1805
  %6111 = fsub fast float %5992, %1806
  %6112 = call float @dx.op.dot3.f32(i32 55, float %6109, float %6110, float %6111, float %6109, float %6110, float %6111)  ; Dot3(ax,ay,az,bx,by,bz)
  %6113 = call float @dx.op.unary.f32(i32 25, float %6112)  ; Rsqrt(value)
  %6114 = fmul fast float %6109, %6113
  %6115 = fmul fast float %6110, %6113
  %6116 = fmul fast float %6111, %6113
  %6117 = call float @dx.op.dot3.f32(i32 55, float %6088, float %6089, float %6090, float %6114, float %6115, float %6116)  ; Dot3(ax,ay,az,bx,by,bz)
  %6118 = fmul fast float %6117, %6117
  %6119 = call float @dx.op.unary.f32(i32 6, float %6092)  ; FAbs(value)
  %6120 = call float @dx.op.binary.f32(i32 35, float %6108, float 0x3F847AE140000000)  ; FMax(a,b)
  %6121 = fmul fast float %6120, %6120
  %6122 = fmul fast float %6121, %6121
  %6123 = fsub fast float 1.000000e+00, %6122
  %6124 = fmul fast float %6122, %6118
  %6125 = fsub fast float 1.000000e+00, %6118
  %6126 = fadd fast float %6125, %6124
  %6127 = bitcast float %6122 to i32
  %6128 = sitofp i32 %6127 to float
  %6129 = fmul fast float %6128, 0x3FE7F73180000000
  %6130 = fadd fast float %6129, 0x41AFE27C40000000
  %6131 = fptosi float %6130 to i32
  %6132 = bitcast i32 %6131 to float
  br i1 %5655, label %6133, label %6187

; <label>:6133                                    ; preds = %5950
  %6134 = fmul fast float %6126, %6126
  %6135 = fmul fast float %6005, %6123
  %6136 = fadd fast float %6135, %6122
  %6137 = bitcast float %6136 to i32
  %6138 = ashr i32 %6137, 1
  %6139 = add nsw i32 %6138, 532487669
  %6140 = bitcast i32 %6139 to float
  %6141 = fadd fast float %6140, %1798
  %6142 = fmul fast float %6134, %6141
  %6143 = fmul fast float %6119, %6119
  %6144 = fmul fast float %6143, %6123
  %6145 = fadd fast float %6144, %6122
  %6146 = bitcast float %6145 to i32
  %6147 = ashr i32 %6146, 1
  %6148 = add nsw i32 %6147, 532487669
  %6149 = bitcast i32 %6148 to float
  %6150 = fadd fast float %6149, %6119
  %6151 = fmul fast float %6142, %6150
  %6152 = fdiv fast float 1.000000e+00, %6151
  %6153 = fmul fast float %6122, %6152
  %6154 = fmul fast float %6153, %6132
  %6155 = fadd fast float %6132, %6035
  %6156 = bitcast float %6155 to i32
  %6157 = sub nsw i32 2129859010, %6156
  %6158 = bitcast i32 %6157 to float
  %6159 = fmul fast float %6154, %6158
  %6160 = fmul fast float %6104, %1751
  %6161 = fadd fast float %6160, %6105
  %6162 = fmul fast float %6104, %1752
  %6163 = fadd fast float %6162, %6105
  %6164 = fmul fast float %6104, %1796
  %6165 = fadd fast float %6164, %6105
  %6166 = call float @dx.op.binary.f32(i32 35, float %6163, float %6165)  ; FMax(a,b)
  %6167 = call float @dx.op.binary.f32(i32 35, float %6161, float %6166)  ; FMax(a,b)
  %6168 = fsub fast float 1.000000e+00, %6167
  %6169 = fmul fast float %6092, %5670
  %6170 = fmul fast float %3718, %6087
  %6171 = call float @dx.op.unary.f32(i32 21, float %6170)  ; Exp(value)
  %6172 = call float @dx.op.unary.f32(i32 7, float %6171)  ; Saturate(value)
  %6173 = select i1 %3713, float %6172, float 0.000000e+00
  %6174 = fmul fast float %3716, %6087
  %6175 = call float @dx.op.unary.f32(i32 21, float %6174)  ; Exp(value)
  %6176 = call float @dx.op.unary.f32(i32 7, float %6175)  ; Saturate(value)
  %6177 = select i1 %3712, float %6176, float 0.000000e+00
  %6178 = fmul fast float %3714, %6087
  %6179 = call float @dx.op.unary.f32(i32 21, float %6178)  ; Exp(value)
  %6180 = call float @dx.op.unary.f32(i32 7, float %6179)  ; Saturate(value)
  %6181 = select i1 %3711, float %6180, float 0.000000e+00
  %6182 = fmul fast float %6168, %6169
  %6183 = fmul fast float %6182, %6159
  %6184 = fmul fast float %6183, %6181
  %6185 = fmul fast float %6183, %6177
  %6186 = fmul fast float %6183, %6173
  br label %6187

; <label>:6187                                    ; preds = %6133, %5950
  %6188 = phi float [ %6184, %6133 ], [ 0.000000e+00, %5950 ]
  %6189 = phi float [ %6185, %6133 ], [ 0.000000e+00, %5950 ]
  %6190 = phi float [ %6186, %6133 ], [ 0.000000e+00, %5950 ]
  %6191 = fmul fast float %6061, %5985
  %6192 = fmul fast float %6191, %6042
  %6193 = fmul fast float %6062, %5985
  %6194 = fmul fast float %6193, %6042
  %6195 = fmul fast float %6063, %5985
  %6196 = fmul fast float %6195, %6042
  %6197 = fadd fast float %6188, %6192
  %6198 = fadd fast float %6189, %6194
  %6199 = fadd fast float %6190, %6196
  %6200 = fmul fast float %5967, %1087
  %6201 = fmul fast float %6200, %5985
  %6202 = fmul fast float %6201, %6085
  %6203 = fmul fast float %5968, %1087
  %6204 = fmul fast float %6203, %5985
  %6205 = fmul fast float %6204, %6085
  %6206 = fmul fast float %5969, %1087
  %6207 = fmul fast float %6206, %5985
  %6208 = fmul fast float %6207, %6085
  %6209 = fadd fast float %6202, %5599
  %6210 = fadd fast float %6205, %5600
  %6211 = fadd fast float %6208, %5601
  %6212 = fmul fast float %6200, %6197
  %6213 = fmul fast float %6203, %6198
  %6214 = fmul fast float %6206, %6199
  %6215 = fadd fast float %6212, %5596
  %6216 = fadd fast float %6213, %5597
  %6217 = fadd fast float %6214, %5598
  br label %5729

; <label>:6218                                    ; preds = %5729
  br label %6219

; <label>:6219                                    ; preds = %6218, %5562
  %6220 = phi float [ %5564, %5562 ], [ %5730, %6218 ]
  %6221 = phi float [ %5565, %5562 ], [ %5731, %6218 ]
  %6222 = phi float [ %5566, %5562 ], [ %5732, %6218 ]
  %6223 = phi float [ %5567, %5562 ], [ %5733, %6218 ]
  %6224 = phi float [ %5568, %5562 ], [ %5734, %6218 ]
  %6225 = phi float [ %5569, %5562 ], [ %5735, %6218 ]
  %6226 = add i32 %5563, 1
  %6227 = icmp ugt i32 %6226, %5559
  br i1 %6227, label %6228, label %5562

; <label>:6228                                    ; preds = %6219
  br label %6229

; <label>:6229                                    ; preds = %6228, %5512, %5502
  %6230 = phi float [ %5503, %5502 ], [ %5503, %5512 ], [ %6220, %6228 ]
  %6231 = phi float [ %5504, %5502 ], [ %5504, %5512 ], [ %6221, %6228 ]
  %6232 = phi float [ %5505, %5502 ], [ %5505, %5512 ], [ %6222, %6228 ]
  %6233 = phi float [ %5506, %5502 ], [ %5506, %5512 ], [ %6223, %6228 ]
  %6234 = phi float [ %5507, %5502 ], [ %5507, %5512 ], [ %6224, %6228 ]
  %6235 = phi float [ %5508, %5502 ], [ %5508, %5512 ], [ %6225, %6228 ]
  %6236 = fsub fast float 1.000000e+00, %1798
  %6237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6238 = extractvalue %dx.types.CBufRet.f32 %6237, 0
  %6239 = fmul fast float %6238, %6236
  %6240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6241 = extractvalue %dx.types.CBufRet.f32 %6240, 3
  %6242 = fsub fast float 1.000000e+00, %1091
  %6243 = call float @dx.op.unary.f32(i32 7, float %6242)  ; Saturate(value)
  %6244 = fadd fast float %6235, %1093
  %6245 = fmul fast float %6244, %1091
  %6246 = fmul fast float %6243, %6241
  %6247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6248 = extractvalue %dx.types.CBufRet.f32 %6247, 3
  %6249 = fmul fast float %6233, %1754
  %6250 = fmul fast float %6234, %1755
  %6251 = fmul fast float %6235, %1756
  %6252 = fcmp fast ogt float %87, %197
  %6253 = and i1 %6252, %1553
  %6254 = or i1 %1559, %6253
  %6255 = icmp eq i32 %1552, 2
  %6256 = fcmp fast ole float %87, %197
  %6257 = and i1 %6256, %6255
  %6258 = or i1 %6257, %6254
  br i1 %6253, label %6259, label %6513

; <label>:6259                                    ; preds = %6229
  %6260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6261 = extractvalue %dx.types.CBufRet.f32 %6260, 2
  %6262 = extractvalue %dx.types.CBufRet.f32 %6260, 3
  %6263 = fmul fast float %6261, %99
  %6264 = fmul fast float %6262, %100
  %6265 = call float @dx.op.unary.f32(i32 7, float %6263)  ; Saturate(value)
  %6266 = call float @dx.op.unary.f32(i32 7, float %6264)  ; Saturate(value)
  %6267 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6265, float %6266, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6268 = extractvalue %dx.types.ResRet.f32 %6267, 0
  %6269 = extractvalue %dx.types.ResRet.f32 %6267, 1
  %6270 = extractvalue %dx.types.ResRet.f32 %6267, 2
  %6271 = extractvalue %dx.types.ResRet.f32 %6267, 3
  %6272 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6265, float %6266, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6273 = extractvalue %dx.types.ResRet.f32 %6272, 0
  %6274 = extractvalue %dx.types.ResRet.f32 %6272, 1
  %6275 = extractvalue %dx.types.ResRet.f32 %6272, 2
  %6276 = extractvalue %dx.types.ResRet.f32 %6272, 3
  %6277 = call float @dx.op.binary.f32(i32 35, float %6269, float %6270)  ; FMax(a,b)
  %6278 = call float @dx.op.binary.f32(i32 35, float %6268, float %6277)  ; FMax(a,b)
  %6279 = call float @dx.op.binary.f32(i32 35, float %6278, float %6271)  ; FMax(a,b)
  %6280 = call float @dx.op.binary.f32(i32 36, float %6274, float %6275)  ; FMin(a,b)
  %6281 = call float @dx.op.binary.f32(i32 36, float %6273, float %6280)  ; FMin(a,b)
  %6282 = call float @dx.op.binary.f32(i32 36, float %6281, float %6276)  ; FMin(a,b)
  %6283 = fmul fast float %6279, 2.550000e+02
  %6284 = fadd fast float %6283, 0x3F70101020000000
  %6285 = fptoui float %6284 to i32
  %6286 = fmul fast float %6282, 2.550000e+02
  %6287 = fadd fast float %6286, 0x3F70101020000000
  %6288 = fptoui float %6287 to i32
  %6289 = icmp ult i32 %6285, %6288
  br i1 %6289, label %6290, label %6458

; <label>:6290                                    ; preds = %6259
  %6291 = fcmp fast ogt float %86, 9.843750e-01
  %6292 = fadd fast float %87, -4.000000e+00
  %6293 = select i1 %6291, float -4.000000e+00, float %6292
  %6294 = call float @dx.op.binary.f32(i32 35, float %6293, float 0.000000e+00)  ; FMax(a,b)
  %6295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6296 = extractvalue %dx.types.CBufRet.f32 %6295, 0
  %6297 = fadd fast float %6296, %6294
  %6298 = extractvalue %dx.types.CBufRet.f32 %6295, 2
  %6299 = fmul fast float %6297, %6298
  %6300 = call float @dx.op.unary.f32(i32 23, float %6299)  ; Log(value)
  %6301 = extractvalue %dx.types.CBufRet.f32 %6295, 3
  %6302 = fmul fast float %6301, %6300
  %6303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6304 = extractvalue %dx.types.CBufRet.f32 %6303, 2
  %6305 = fmul fast float %6302, %6304
  %6306 = call float @dx.op.unary.f32(i32 7, float %6305)  ; Saturate(value)
  %6307 = uitofp i32 %6285 to float
  %6308 = uitofp i32 %6288 to float
  %6309 = fadd fast float %6307, 5.000000e-01
  %6310 = fadd fast float %6308, 5.000000e-01
  %6311 = fmul fast float %6304, %6309
  %6312 = fmul fast float %6304, %6310
  %6313 = fadd fast float %6311, 0x3F0FFB4800000000
  %6314 = fadd fast float %6312, 0xBF0FFB4800000000
  %6315 = call float @dx.op.binary.f32(i32 35, float %6306, float %6313)  ; FMax(a,b)
  %6316 = call float @dx.op.binary.f32(i32 36, float %6315, float %6314)  ; FMin(a,b)
  %6317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6318 = extractvalue %dx.types.CBufRet.f32 %6317, 1
  %6319 = extractvalue %dx.types.CBufRet.f32 %6317, 2
  %6320 = extractvalue %dx.types.CBufRet.f32 %6317, 0
  %6321 = fmul fast float %6318, %6316
  %6322 = fadd fast float %6320, %6321
  %6323 = fadd fast float %6320, %6319
  %6324 = fsub fast float %6318, %6319
  %6325 = fadd fast float %6324, %6320
  %6326 = call float @dx.op.binary.f32(i32 35, float %6322, float %6323)  ; FMax(a,b)
  %6327 = call float @dx.op.binary.f32(i32 36, float %6326, float %6325)  ; FMin(a,b)
  %6328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %6265, float %6266, float %6327, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6329 = extractvalue %dx.types.ResRet.f32 %6328, 0
  %6330 = extractvalue %dx.types.ResRet.f32 %6328, 1
  %6331 = extractvalue %dx.types.ResRet.f32 %6328, 2
  %6332 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6333 = extractvalue %dx.types.CBufRet.i32 %6332, 0
  %6334 = extractvalue %dx.types.CBufRet.i32 %6332, 1
  %6335 = uitofp i32 %6333 to float
  %6336 = uitofp i32 %6334 to float
  %6337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6338 = extractvalue %dx.types.CBufRet.f32 %6337, 0
  %6339 = extractvalue %dx.types.CBufRet.f32 %6337, 1
  %6340 = fmul fast float %6335, %6265
  %6341 = fmul fast float %6336, %6266
  %6342 = fadd fast float %6340, -5.000000e-01
  %6343 = fadd fast float %6341, -5.000000e-01
  %6344 = call float @dx.op.unary.f32(i32 22, float %6342)  ; Frc(value)
  %6345 = call float @dx.op.unary.f32(i32 22, float %6343)  ; Frc(value)
  %6346 = fmul fast float %6344, %6344
  %6347 = fmul fast float %6346, %6344
  %6348 = fsub fast float 3.000000e+00, %6344
  %6349 = fmul fast float %6346, %6348
  %6350 = fmul fast float %6344, 3.000000e+00
  %6351 = fmul fast float %6347, 3.000000e+00
  %6352 = fmul fast float %6346, 6.000000e+00
  %6353 = fsub fast float %6351, %6352
  %6354 = fadd fast float %6353, 4.000000e+00
  %6355 = fmul fast float %6354, 0x3FC5555560000000
  %6356 = fmul fast float %6347, -3.000000e+00
  %6357 = fadd fast float %6346, %6344
  %6358 = fmul fast float %6357, 3.000000e+00
  %6359 = fadd fast float %6356, 1.000000e+00
  %6360 = fadd fast float %6359, %6358
  %6361 = fmul fast float %6347, 0x3FC5555560000000
  %6362 = fmul fast float %6345, %6345
  %6363 = fmul fast float %6362, %6345
  %6364 = fsub fast float 3.000000e+00, %6345
  %6365 = fmul fast float %6362, %6364
  %6366 = fmul fast float %6345, 3.000000e+00
  %6367 = fmul fast float %6363, 3.000000e+00
  %6368 = fmul fast float %6362, 6.000000e+00
  %6369 = fsub fast float %6367, %6368
  %6370 = fadd fast float %6369, 4.000000e+00
  %6371 = fmul fast float %6370, 0x3FC5555560000000
  %6372 = fmul fast float %6363, -3.000000e+00
  %6373 = fadd fast float %6362, %6345
  %6374 = fmul fast float %6373, 3.000000e+00
  %6375 = fadd fast float %6372, 1.000000e+00
  %6376 = fadd fast float %6375, %6374
  %6377 = fmul fast float %6363, 0x3FC5555560000000
  %6378 = fadd fast float %6344, 1.000000e+00
  %6379 = fsub fast float 1.000000e+00, %6350
  %6380 = fadd fast float %6379, %6349
  %6381 = fadd fast float %6380, %6354
  %6382 = fmul fast float %6381, 0x3FC5555560000000
  %6383 = fdiv fast float %6355, %6382
  %6384 = fsub fast float %6378, %6383
  %6385 = fsub fast float 1.000000e+00, %6344
  %6386 = fadd fast float %6360, %6347
  %6387 = fmul fast float %6386, 0x3FC5555560000000
  %6388 = fdiv fast float %6361, %6387
  %6389 = fadd fast float %6385, %6388
  %6390 = fadd fast float %6345, 1.000000e+00
  %6391 = fsub fast float 1.000000e+00, %6366
  %6392 = fadd fast float %6391, %6365
  %6393 = fadd fast float %6392, %6370
  %6394 = fmul fast float %6393, 0x3FC5555560000000
  %6395 = fdiv fast float %6371, %6394
  %6396 = fsub fast float %6390, %6395
  %6397 = fsub fast float 1.000000e+00, %6345
  %6398 = fadd fast float %6376, %6363
  %6399 = fmul fast float %6398, 0x3FC5555560000000
  %6400 = fdiv fast float %6377, %6399
  %6401 = fadd fast float %6400, %6397
  %6402 = fmul fast float %6384, %6338
  %6403 = fsub fast float %6265, %6402
  %6404 = fmul fast float %6389, %6338
  %6405 = fadd fast float %6404, %6265
  %6406 = fmul fast float %6401, %6339
  %6407 = fadd fast float %6406, %6266
  %6408 = fmul fast float %6396, %6339
  %6409 = fsub fast float %6266, %6408
  %6410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6403, float %6409, float %6327, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6411 = extractvalue %dx.types.ResRet.f32 %6410, 0
  %6412 = extractvalue %dx.types.ResRet.f32 %6410, 1
  %6413 = extractvalue %dx.types.ResRet.f32 %6410, 2
  %6414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6405, float %6409, float %6327, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6415 = extractvalue %dx.types.ResRet.f32 %6414, 0
  %6416 = extractvalue %dx.types.ResRet.f32 %6414, 1
  %6417 = extractvalue %dx.types.ResRet.f32 %6414, 2
  %6418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6403, float %6407, float %6327, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6419 = extractvalue %dx.types.ResRet.f32 %6418, 0
  %6420 = extractvalue %dx.types.ResRet.f32 %6418, 1
  %6421 = extractvalue %dx.types.ResRet.f32 %6418, 2
  %6422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6405, float %6407, float %6327, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6423 = extractvalue %dx.types.ResRet.f32 %6422, 0
  %6424 = extractvalue %dx.types.ResRet.f32 %6422, 1
  %6425 = extractvalue %dx.types.ResRet.f32 %6422, 2
  %6426 = fsub fast float %6419, %6411
  %6427 = fsub fast float %6420, %6412
  %6428 = fsub fast float %6421, %6413
  %6429 = fmul fast float %6426, %6399
  %6430 = fmul fast float %6427, %6399
  %6431 = fmul fast float %6428, %6399
  %6432 = fadd fast float %6429, %6411
  %6433 = fadd fast float %6430, %6412
  %6434 = fadd fast float %6431, %6413
  %6435 = fsub fast float %6423, %6415
  %6436 = fsub fast float %6424, %6416
  %6437 = fsub fast float %6425, %6417
  %6438 = fmul fast float %6435, %6399
  %6439 = fmul fast float %6436, %6399
  %6440 = fmul fast float %6437, %6399
  %6441 = fsub fast float %6415, %6432
  %6442 = fadd fast float %6441, %6438
  %6443 = fsub fast float %6416, %6433
  %6444 = fadd fast float %6443, %6439
  %6445 = fsub fast float %6417, %6434
  %6446 = fadd fast float %6445, %6440
  %6447 = fmul fast float %6442, %6387
  %6448 = fmul fast float %6444, %6387
  %6449 = fmul fast float %6446, %6387
  %6450 = fadd fast float %6447, %6432
  %6451 = fadd fast float %6448, %6433
  %6452 = fadd fast float %6449, %6434
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 1
  %6455 = fmul fast float %6450, %6454
  %6456 = fmul fast float %6451, %6454
  %6457 = fmul fast float %6452, %6454
  br label %6458

; <label>:6458                                    ; preds = %6290, %6259
  %6459 = phi float [ %6329, %6290 ], [ 1.000000e+00, %6259 ]
  %6460 = phi float [ %6330, %6290 ], [ 1.000000e+00, %6259 ]
  %6461 = phi float [ %6331, %6290 ], [ 1.000000e+00, %6259 ]
  %6462 = phi float [ %6455, %6290 ], [ 0.000000e+00, %6259 ]
  %6463 = phi float [ %6456, %6290 ], [ 0.000000e+00, %6259 ]
  %6464 = phi float [ %6457, %6290 ], [ 0.000000e+00, %6259 ]
  %6465 = call float @dx.op.dot3.f32(i32 55, float %6459, float %6460, float %6461, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6466 = call float @dx.op.dot3.f32(i32 55, float %6462, float %6463, float %6464, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6467 = select i1 %239, float %6465, float %6459
  %6468 = select i1 %239, float %6465, float %6460
  %6469 = select i1 %239, float 1.000000e+00, float %6461
  %6470 = select i1 %239, float %6466, float %6462
  %6471 = select i1 %239, float 0.000000e+00, float %6463
  %6472 = select i1 %239, float 0.000000e+00, float %6464
  %6473 = fmul fast float %6467, %6249
  %6474 = fmul fast float %6468, %6250
  %6475 = fmul fast float %6469, %6251
  %6476 = fadd fast float %6473, %6470
  %6477 = fadd fast float %6474, %6471
  %6478 = fadd fast float %6472, %6475
  %6479 = fmul fast float %6467, %6230
  %6480 = fmul fast float %6468, %6231
  %6481 = fmul fast float %6469, %6232
  %6482 = fmul fast float %1763, %6261
  %6483 = fmul fast float %1765, %6262
  %6484 = fsub fast float 1.000000e+00, %6482
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
  %6510 = fmul fast float %6505, %197
  %6511 = fmul fast float %6507, %197
  %6512 = fmul fast float %6509, %197
  br label %6513

; <label>:6513                                    ; preds = %6458, %6229
  %6514 = phi float [ %6510, %6458 ], [ %146, %6229 ]
  %6515 = phi float [ %6511, %6458 ], [ %147, %6229 ]
  %6516 = phi float [ %6512, %6458 ], [ %148, %6229 ]
  %6517 = phi float [ %197, %6458 ], [ %87, %6229 ]
  %6518 = phi float [ %6476, %6458 ], [ %6249, %6229 ]
  %6519 = phi float [ %6477, %6458 ], [ %6250, %6229 ]
  %6520 = phi float [ %6478, %6458 ], [ %6251, %6229 ]
  %6521 = phi float [ %6479, %6458 ], [ %6230, %6229 ]
  %6522 = phi float [ %6480, %6458 ], [ %6231, %6229 ]
  %6523 = phi float [ %6481, %6458 ], [ %6232, %6229 ]
  %6524 = phi float [ %6459, %6458 ], [ 1.000000e+00, %6229 ]
  br i1 %6258, label %7673, label %6525

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
  br i1 %6569, label %6570, label %6976, !dx.controlflow.hints !146

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
  %6715 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %6715, align 4, !tbaa !133, !noalias !147
  %6716 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %6716, align 4, !tbaa !133, !noalias !147
  %6717 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %6717, align 4, !tbaa !133, !noalias !147
  %6718 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %6718, align 4, !tbaa !133, !noalias !147
  %6719 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %6719, align 4, !tbaa !133, !noalias !147
  %6720 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %6720, align 4, !tbaa !133, !noalias !147
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
  %6768 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %6725
  store float %6767, float* %6768, align 4, !tbaa !133, !noalias !147
  %6769 = call float @dx.op.binary.f32(i32 35, float %6711, float %6763)  ; FMax(a,b)
  %6770 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %6725
  store float %6769, float* %6770, align 4, !tbaa !133, !noalias !147
  %6771 = add nsw i32 %6724, 1
  br label %6772

; <label>:6772                                    ; preds = %6766, %6762
  %6773 = phi i32 [ %6771, %6766 ], [ %6724, %6762 ]
  %6774 = add nuw nsw i32 %6725, 1
  %6775 = icmp eq i32 %6774, %6580
  br i1 %6775, label %6776, label %6723

; <label>:6776                                    ; preds = %6772
  %6777 = load float, float* %6717, align 4, !tbaa !133, !alias.scope !163, !noalias !166
  %6778 = load float, float* %6716, align 4, !tbaa !133, !alias.scope !169, !noalias !170
  %6779 = load float, float* %6715, align 4, !tbaa !133, !alias.scope !171, !noalias !172
  %6780 = load float, float* %6720, align 4, !tbaa !133, !alias.scope !173, !noalias !176
  %6781 = load float, float* %6719, align 4, !tbaa !133, !alias.scope !179, !noalias !180
  %6782 = load float, float* %6718, align 4, !tbaa !133, !alias.scope !181, !noalias !182
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
  store float %6792, float* %6715, align 4, !tbaa !133, !alias.scope !171, !noalias !172
  store float %6796, float* %6716, align 4, !tbaa !133, !alias.scope !169, !noalias !170
  store float %6798, float* %6717, align 4, !tbaa !133, !alias.scope !163, !noalias !166
  %6799 = call float @dx.op.binary.f32(i32 36, float %6785, float %6786)  ; FMin(a,b)
  %6800 = call float @dx.op.binary.f32(i32 36, float %6784, float %6799)  ; FMin(a,b)
  %6801 = call float @dx.op.binary.f32(i32 35, float %6784, float %6785)  ; FMax(a,b)
  %6802 = call float @dx.op.binary.f32(i32 36, float %6801, float %6786)  ; FMin(a,b)
  %6803 = call float @dx.op.binary.f32(i32 36, float %6784, float %6785)  ; FMin(a,b)
  %6804 = call float @dx.op.binary.f32(i32 35, float %6803, float %6802)  ; FMax(a,b)
  %6805 = call float @dx.op.binary.f32(i32 35, float %6785, float %6786)  ; FMax(a,b)
  %6806 = call float @dx.op.binary.f32(i32 35, float %6784, float %6805)  ; FMax(a,b)
  store float %6800, float* %6718, align 4, !tbaa !133, !alias.scope !181, !noalias !182
  store float %6804, float* %6719, align 4, !tbaa !133, !alias.scope !179, !noalias !180
  store float %6806, float* %6720, align 4, !tbaa !133, !alias.scope !173, !noalias !176
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
  %6848 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %6807
  %6849 = load float, float* %6848, align 4, !tbaa !133, !noalias !147
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
  %6859 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %6858
  %6860 = load float, float* %6859, align 4, !tbaa !133, !noalias !147
  %6861 = icmp slt i32 %6858, 2
  %6862 = add nsw i32 %6858, 1
  %6863 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %6862
  %6864 = load float, float* %6863, align 4, !tbaa !133, !noalias !147
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
  br i1 %6553, label %6988, label %7017, !dx.controlflow.hints !183

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
  br i1 %7030, label %7031, label %7037, !dx.controlflow.hints !184

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
  br i1 %6569, label %7083, label %7281, !dx.controlflow.hints !185

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
  br i1 %7105, label %7106, label %7119, !dx.controlflow.hints !186

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
  br i1 %7124, label %7125, label %7132, !dx.controlflow.hints !187

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
  br i1 %7135, label %7136, label %7143, !dx.controlflow.hints !187

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
  br i1 %7146, label %7147, label %7154, !dx.controlflow.hints !187

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
  br i1 %7173, label %7174, label %7181, !dx.controlflow.hints !188

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
  br i1 %7184, label %7185, label %7192, !dx.controlflow.hints !188

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
  br i1 %7195, label %7196, label %7203, !dx.controlflow.hints !188

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
  br i1 %7213, label %7214, label %7265, !dx.controlflow.hints !189

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
  br i1 %7235, label %7236, label %7243, !dx.controlflow.hints !188

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
  br i1 %7246, label %7247, label %7254, !dx.controlflow.hints !188

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
  br i1 %7257, label %7258, label %7265, !dx.controlflow.hints !188

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
  %7288 = fmul fast float %7284, %6524
  %7289 = call float @dx.op.dot3.f32(i32 55, float %7284, float %7283, float %7282, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7290 = call float @dx.op.dot3.f32(i32 55, float %7287, float %7286, float %7285, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7291 = select i1 %239, float %7289, float %7284
  %7292 = select i1 %239, float %7289, float %7283
  %7293 = select i1 %239, float 1.000000e+00, float %7282
  %7294 = select i1 %239, float %7290, float %7287
  %7295 = select i1 %239, float 0.000000e+00, float %7286
  %7296 = select i1 %239, float 0.000000e+00, float %7285
  %7297 = fmul fast float %7291, %6518
  %7298 = fmul fast float %7292, %6519
  %7299 = fmul fast float %7293, %6520
  %7300 = fadd fast float %7297, %7294
  %7301 = fadd fast float %7298, %7295
  %7302 = fadd fast float %7296, %7299
  %7303 = fmul fast float %7291, %6521
  %7304 = fmul fast float %7292, %6522
  %7305 = fmul fast float %7293, %6523
  %7306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7307 = extractvalue %dx.types.CBufRet.i32 %7306, 0
  %7308 = icmp eq i32 %7307, 0
  br i1 %7308, label %7673, label %7309, !dx.controlflow.hints !190

; <label>:7309                                    ; preds = %7281
  %7310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7311 = extractvalue %dx.types.CBufRet.f32 %7310, 2
  %7312 = extractvalue %dx.types.CBufRet.f32 %7310, 3
  %7313 = fmul fast float %7311, %99
  %7314 = fmul fast float %7312, %100
  %7315 = fmul fast float %7313, 2.000000e+00
  %7316 = fmul fast float %7314, 2.000000e+00
  %7317 = fsub fast float 1.000000e+00, %7315
  %7318 = fsub fast float 1.000000e+00, %7316
  %7319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7320 = extractvalue %dx.types.CBufRet.f32 %7319, 0
  %7321 = extractvalue %dx.types.CBufRet.f32 %7319, 1
  %7322 = extractvalue %dx.types.CBufRet.f32 %7319, 2
  %7323 = fmul fast float %7317, %7320
  %7324 = fmul fast float %7317, %7321
  %7325 = fmul fast float %7317, %7322
  %7326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7327 = extractvalue %dx.types.CBufRet.f32 %7326, 0
  %7328 = extractvalue %dx.types.CBufRet.f32 %7326, 1
  %7329 = extractvalue %dx.types.CBufRet.f32 %7326, 2
  %7330 = fmul fast float %7318, %7327
  %7331 = fmul fast float %7318, %7328
  %7332 = fmul fast float %7318, %7329
  %7333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7334 = extractvalue %dx.types.CBufRet.f32 %7333, 0
  %7335 = extractvalue %dx.types.CBufRet.f32 %7333, 1
  %7336 = extractvalue %dx.types.CBufRet.f32 %7333, 2
  %7337 = fadd fast float %7330, %7334
  %7338 = fadd fast float %7337, %7323
  %7339 = fadd fast float %7331, %7335
  %7340 = fadd fast float %7339, %7324
  %7341 = fadd fast float %7332, %7336
  %7342 = fadd fast float %7341, %7325
  %7343 = fmul fast float %7338, %6517
  %7344 = fmul fast float %7340, %6517
  %7345 = fmul fast float %7342, %6517
  %7346 = fmul fast float %7343, %7343
  %7347 = fmul fast float %7344, %7344
  %7348 = fadd fast float %7346, %7347
  %7349 = fmul fast float %7345, %7345
  %7350 = fadd fast float %7348, %7349
  %7351 = call float @dx.op.unary.f32(i32 24, float %7350)  ; Sqrt(value)
  %7352 = extractvalue %dx.types.CBufRet.f32 %6247, 0
  %7353 = fsub fast float %7351, %7352
  %7354 = extractvalue %dx.types.CBufRet.f32 %6247, 2
  %7355 = fmul fast float %7353, %7354
  %7356 = call float @dx.op.unary.f32(i32 7, float %7355)  ; Saturate(value)
  %7357 = fadd fast float %7356, -5.000000e-01
  %7358 = fmul fast float %7357, 2.000000e+00
  %7359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7360 = extractvalue %dx.types.CBufRet.f32 %7359, 2
  %7361 = call float @dx.op.binary.f32(i32 36, float %7360, float %7358)  ; FMin(a,b)
  %7362 = fsub fast float -0.000000e+00, %7360
  %7363 = fcmp fast ogt float %7361, %7362
  br i1 %7363, label %7364, label %7673, !dx.controlflow.hints !191

; <label>:7364                                    ; preds = %7309
  %7365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7366 = extractvalue %dx.types.CBufRet.f32 %7365, 3
  %7367 = fcmp fast ogt float %7366, 0.000000e+00
  br i1 %7367, label %7368, label %7443, !dx.controlflow.hints !192

; <label>:7368                                    ; preds = %7364
  %7369 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %7370 = extractvalue %dx.types.Dimensions %7369, 0
  %7371 = sitofp i32 %7370 to float
  %7372 = extractvalue %dx.types.Dimensions %7369, 1
  %7373 = sitofp i32 %7372 to float
  %7374 = fmul fast float %7313, %7371
  %7375 = fmul fast float %7314, %7373
  %7376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7377 = extractvalue %dx.types.CBufRet.f32 %7376, 1
  %7378 = fsub fast float -0.000000e+00, %7377
  %7379 = fptoui float %7378 to i32
  %7380 = fptoui float %7374 to i32
  %7381 = fptoui float %7375 to i32
  %7382 = and i32 %7379, 31
  %7383 = lshr i32 %7380, %7382
  %7384 = lshr i32 %7381, %7382
  %7385 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %7379, i32 %7383, i32 %7384, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7386 = extractvalue %dx.types.ResRet.f32 %7385, 0
  %7387 = fcmp fast olt float %7386, -1.000000e+00
  %7388 = fcmp fast ogt float %7386, -1.000000e+00
  %7389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7390 = extractvalue %dx.types.CBufRet.f32 %7389, 1
  %7391 = select i1 %7388, float %7390, float 1.000000e+00
  %7392 = fadd fast float %7386, 1.000000e+00
  %7393 = fmul fast float %7391, %7392
  %7394 = call float @dx.op.unary.f32(i32 6, float %7393)  ; FAbs(value)
  %7395 = extractvalue %dx.types.CBufRet.f32 %7389, 3
  %7396 = fcmp fast oge float %7394, %7395
  %7397 = select i1 %7396, float 0x4197782600000000, float %7394
  %7398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7399 = extractvalue %dx.types.CBufRet.f32 %7398, 0
  %7400 = extractvalue %dx.types.CBufRet.f32 %7398, 1
  %7401 = extractvalue %dx.types.CBufRet.f32 %7398, 2
  %7402 = select i1 %7387, float %7399, float %7320
  %7403 = select i1 %7387, float %7400, float %7321
  %7404 = select i1 %7387, float %7401, float %7322
  %7405 = fmul fast float %7402, %7317
  %7406 = fmul fast float %7403, %7317
  %7407 = fmul fast float %7404, %7317
  %7408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7409 = extractvalue %dx.types.CBufRet.f32 %7408, 0
  %7410 = extractvalue %dx.types.CBufRet.f32 %7408, 1
  %7411 = extractvalue %dx.types.CBufRet.f32 %7408, 2
  %7412 = select i1 %7387, float %7409, float %7327
  %7413 = select i1 %7387, float %7410, float %7328
  %7414 = select i1 %7387, float %7411, float %7329
  %7415 = fmul fast float %7412, %7318
  %7416 = fmul fast float %7413, %7318
  %7417 = fmul fast float %7414, %7318
  %7418 = fadd fast float %7415, %7405
  %7419 = fadd fast float %7416, %7406
  %7420 = fadd fast float %7417, %7407
  %7421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7422 = extractvalue %dx.types.CBufRet.f32 %7421, 0
  %7423 = extractvalue %dx.types.CBufRet.f32 %7421, 1
  %7424 = extractvalue %dx.types.CBufRet.f32 %7421, 2
  %7425 = select i1 %7387, float %7422, float %7334
  %7426 = select i1 %7387, float %7423, float %7335
  %7427 = select i1 %7387, float %7424, float %7336
  %7428 = fadd fast float %7418, %7425
  %7429 = fadd fast float %7419, %7426
  %7430 = fadd fast float %7420, %7427
  %7431 = fmul fast float %7428, %7397
  %7432 = fmul fast float %7429, %7397
  %7433 = fmul fast float %7430, %7397
  %7434 = fmul fast float %7431, %7431
  %7435 = fmul fast float %7432, %7432
  %7436 = fadd fast float %7434, %7435
  %7437 = fmul fast float %7433, %7433
  %7438 = fadd fast float %7436, %7437
  %7439 = call float @dx.op.unary.f32(i32 24, float %7438)  ; Sqrt(value)
  %7440 = fsub fast float %7439, %7352
  %7441 = fmul fast float %7440, %7354
  %7442 = call float @dx.op.unary.f32(i32 7, float %7441)  ; Saturate(value)
  br label %7443

; <label>:7443                                    ; preds = %7368, %7364
  %7444 = phi float [ %7442, %7368 ], [ 1.000000e+00, %7364 ]
  %7445 = fmul fast float %7361, 5.000000e-01
  %7446 = fadd fast float %7445, 5.000000e-01
  %7447 = call float @dx.op.unary.f32(i32 22, float %7446)  ; Frc(value)
  %7448 = call float @dx.op.unary.f32(i32 27, float %7447)  ; Round_ni(value)
  %7449 = call float @dx.op.unary.f32(i32 22, float %7447)  ; Frc(value)
  %7450 = fmul fast float %7449, 2.000000e+00
  %7451 = fadd fast float %7450, -1.000000e+00
  %7452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %64, float %7313, float %7314, float %7448, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7453 = extractvalue %dx.types.ResRet.f32 %7452, 0
  %7454 = extractvalue %dx.types.ResRet.f32 %7452, 1
  %7455 = extractvalue %dx.types.ResRet.f32 %7452, 2
  %7456 = extractvalue %dx.types.ResRet.f32 %7452, 3
  %7457 = fadd fast float %7453, -5.000000e-01
  %7458 = fadd fast float %7455, -5.000000e-01
  %7459 = fmul fast float %7457, 0xBFD5555560000000
  %7460 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7458, float %7459)  ; FMad(a,b,c)
  %7461 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7454, float 0.000000e+00)  ; FMad(a,b,c)
  %7462 = fadd fast float %7461, %7456
  %7463 = fmul fast float %7457, -7.500000e-01
  %7464 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7458, float %7463)  ; FMad(a,b,c)
  %7465 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7454, float 0.000000e+00)  ; FMad(a,b,c)
  %7466 = fadd fast float %7465, %7456
  %7467 = call float @dx.op.binary.f32(i32 35, float %7460, float -1.000000e+00)  ; FMax(a,b)
  %7468 = call float @dx.op.binary.f32(i32 35, float %7462, float -1.000000e+00)  ; FMax(a,b)
  %7469 = call float @dx.op.binary.f32(i32 35, float %7464, float -1.000000e+00)  ; FMax(a,b)
  %7470 = call float @dx.op.binary.f32(i32 35, float %7466, float -1.000000e+00)  ; FMax(a,b)
  %7471 = call float @dx.op.binary.f32(i32 36, float %7467, float 1.000000e+00)  ; FMin(a,b)
  %7472 = call float @dx.op.binary.f32(i32 36, float %7468, float 1.000000e+00)  ; FMin(a,b)
  %7473 = call float @dx.op.binary.f32(i32 36, float %7469, float 1.000000e+00)  ; FMin(a,b)
  %7474 = call float @dx.op.binary.f32(i32 36, float %7470, float 1.000000e+00)  ; FMin(a,b)
  %7475 = fcmp fast olt float %7471, 0x3FEFFF8020000000
  br i1 %7475, label %7476, label %7591, !dx.controlflow.hints !193

; <label>:7476                                    ; preds = %7443
  %7477 = extractvalue %dx.types.CBufRet.f32 %7359, 3
  %7478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7479 = extractvalue %dx.types.CBufRet.f32 %7478, 0
  %7480 = extractvalue %dx.types.CBufRet.f32 %7478, 1
  %7481 = extractvalue %dx.types.CBufRet.f32 %7478, 2
  %7482 = extractvalue %dx.types.CBufRet.f32 %7478, 3
  %7483 = fsub fast float %7479, %7471
  %7484 = fsub fast float %7480, %7472
  %7485 = fsub fast float %7481, %7473
  %7486 = fsub fast float %7482, %7474
  %7487 = fmul fast float %7483, %7477
  %7488 = fmul fast float %7484, %7477
  %7489 = fmul fast float %7485, %7477
  %7490 = fmul fast float %7486, %7477
  %7491 = fadd fast float %7487, %7471
  %7492 = fadd fast float %7488, %7472
  %7493 = fsub fast float -0.000000e+00, %7492
  %7494 = fadd fast float %7489, %7473
  %7495 = fadd fast float %7490, %7474
  %7496 = fmul fast float %7491, %7491
  %7497 = fsub fast float %7492, %7496
  %7498 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7497)  ; FMax(a,b)
  %7499 = fdiv fast float 1.000000e+00, %7498
  %7500 = fmul fast float %7492, %7491
  %7501 = fsub fast float %7494, %7500
  %7502 = fsub fast float %7451, %7491
  %7503 = fmul fast float %7451, %7451
  %7504 = fsub fast float %7503, %7492
  %7505 = fmul fast float %7502, %7499
  %7506 = fmul fast float %7505, %7501
  %7507 = fsub fast float %7504, %7506
  %7508 = fmul fast float %7492, %7492
  %7509 = fsub fast float %7495, %7508
  %7510 = fmul fast float %7501, %7501
  %7511 = fmul fast float %7510, %7499
  %7512 = fsub fast float %7509, %7511
  %7513 = fdiv fast float %7507, %7512
  %7514 = fmul fast float %7501, %7513
  %7515 = fsub fast float %7502, %7514
  %7516 = fmul fast float %7515, %7499
  %7517 = fmul fast float %7516, %7491
  %7518 = fsub fast float 1.000000e+00, %7517
  %7519 = fmul fast float %7492, %7513
  %7520 = fsub fast float %7518, %7519
  %7521 = fmul fast float %7516, %7516
  %7522 = fmul fast float %7513, 4.000000e+00
  %7523 = fmul fast float %7522, %7520
  %7524 = fsub fast float %7521, %7523
  %7525 = call float @dx.op.unary.f32(i32 24, float %7524)  ; Sqrt(value)
  %7526 = fcmp fast oge float %7516, 0.000000e+00
  %7527 = fsub fast float -0.000000e+00, %7525
  %7528 = select i1 %7526, float %7527, float %7525
  %7529 = fsub fast float %7528, %7516
  %7530 = fdiv fast float %7529, %7513
  %7531 = fdiv fast float %7520, %7529
  %7532 = fmul fast float %7530, 5.000000e-01
  %7533 = fmul fast float %7531, 2.000000e+00
  %7534 = select i1 %7526, float %7532, float %7533
  %7535 = select i1 %7526, float %7533, float %7532
  %7536 = call float @dx.op.binary.f32(i32 35, float %7534, float %7535)  ; FMax(a,b)
  %7537 = call float @dx.op.binary.f32(i32 36, float %7534, float %7535)  ; FMin(a,b)
  %7538 = fcmp fast ogt float %7451, %7537
  br i1 %7538, label %7539, label %7549

; <label>:7539                                    ; preds = %7476
  %7540 = fsub fast float %7451, %7537
  %7541 = fsub fast float %7536, %7537
  %7542 = fmul fast float %7540, %7541
  %7543 = fmul fast float %7536, %7451
  %7544 = fadd fast float %7536, %7451
  %7545 = fmul fast float %7544, %7491
  %7546 = fadd fast float %7543, %7492
  %7547 = fsub fast float %7546, %7545
  %7548 = fdiv fast float %7547, %7542
  br label %7549

; <label>:7549                                    ; preds = %7539, %7476
  %7550 = phi float [ %7548, %7539 ], [ 0.000000e+00, %7476 ]
  %7551 = fcmp fast ogt float %7451, %7536
  %7552 = fsub fast float %7451, %7536
  br i1 %7551, label %7553, label %7563

; <label>:7553                                    ; preds = %7549
  %7554 = fsub fast float %7536, %7537
  %7555 = fmul fast float %7554, %7552
  %7556 = fmul fast float %7537, %7451
  %7557 = fadd fast float %7537, %7451
  %7558 = fmul fast float %7557, %7491
  %7559 = fsub fast float %7493, %7556
  %7560 = fadd fast float %7559, %7558
  %7561 = fdiv fast float %7560, %7555
  %7562 = fadd fast float %7561, %7550
  br label %7563

; <label>:7563                                    ; preds = %7553, %7549
  %7564 = phi float [ %7562, %7553 ], [ %7550, %7549 ]
  %7565 = fsub fast float %7451, %7537
  %7566 = fmul fast float %7565, %7552
  %7567 = fmul fast float %7537, %7536
  %7568 = fadd fast float %7537, %7536
  %7569 = fmul fast float %7568, %7491
  %7570 = fadd fast float %7567, %7492
  %7571 = fsub fast float %7570, %7569
  %7572 = fdiv fast float %7571, %7566
  %7573 = call float @dx.op.unary.f32(i32 7, float %7564)  ; Saturate(value)
  %7574 = fcmp fast oeq float %6248, 0.000000e+00
  %7575 = extractvalue %dx.types.CBufRet.f32 %7359, 0
  %7576 = fcmp fast oeq float %7575, 0.000000e+00
  %7577 = or i1 %7574, %7576
  %7578 = fmul fast float %7575, 2.000000e+00
  %7579 = fadd fast float %7360, %7361
  %7580 = fdiv fast float %7579, %7578
  %7581 = call float @dx.op.unary.f32(i32 7, float %7580)  ; Saturate(value)
  %7582 = fmul fast float %7581, 2.000000e+00
  %7583 = fsub fast float 3.000000e+00, %7582
  %7584 = fmul fast float %7581, %7581
  %7585 = fmul fast float %7584, %7583
  %7586 = select i1 %7577, float 1.000000e+00, float %7585
  %7587 = fmul fast float %7572, %6248
  %7588 = fadd fast float %7573, %7587
  %7589 = call float @dx.op.unary.f32(i32 7, float %7588)  ; Saturate(value)
  %7590 = fmul fast float %7586, %7589
  br label %7591

; <label>:7591                                    ; preds = %7563, %7443
  %7592 = phi float [ %7590, %7563 ], [ 0.000000e+00, %7443 ]
  %7593 = fsub fast float 1.000000e+00, %7592
  %7594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %64, float %7313, float %7314, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7595 = extractvalue %dx.types.ResRet.f32 %7594, 0
  %7596 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7597 = extractvalue %dx.types.CBufRet.i32 %7596, 2
  %7598 = icmp eq i32 %7597, 0
  br i1 %7598, label %7604, label %7599

; <label>:7599                                    ; preds = %7591
  %7600 = call float @dx.op.unary.f32(i32 7, float %7592)  ; Saturate(value)
  %7601 = fadd fast float %7595, -1.000000e+00
  %7602 = fmul fast float %7600, %7601
  %7603 = fadd fast float %7602, 1.000000e+00
  br label %7604

; <label>:7604                                    ; preds = %7599, %7591
  %7605 = phi float [ %7603, %7599 ], [ %7593, %7591 ]
  br i1 %7367, label %7606, label %7624

; <label>:7606                                    ; preds = %7604
  %7607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7608 = extractvalue %dx.types.CBufRet.f32 %7607, 1
  %7609 = fsub fast float %7444, %7608
  %7610 = call float @dx.op.unary.f32(i32 7, float %7609)  ; Saturate(value)
  %7611 = fsub fast float %7444, %7366
  %7612 = call float @dx.op.unary.f32(i32 7, float %7611)  ; Saturate(value)
  %7613 = fsub fast float %7610, %7612
  %7614 = fsub fast float %7446, %7612
  %7615 = fdiv fast float %7614, %7613
  %7616 = call float @dx.op.unary.f32(i32 7, float %7615)  ; Saturate(value)
  %7617 = fmul fast float %7616, 2.000000e+00
  %7618 = fsub fast float 3.000000e+00, %7617
  %7619 = fsub fast float %7595, %7605
  %7620 = fmul fast float %7616, %7616
  %7621 = fmul fast float %7620, %7619
  %7622 = fmul fast float %7621, %7618
  %7623 = fadd fast float %7622, %7605
  br label %7624

; <label>:7624                                    ; preds = %7606, %7604
  %7625 = phi float [ %7623, %7606 ], [ %7605, %7604 ]
  %7626 = call float @dx.op.binary.f32(i32 35, float %7595, float %7625)  ; FMax(a,b)
  %7627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7628 = extractvalue %dx.types.CBufRet.i32 %7627, 2
  %7629 = and i32 %7628, 1
  %7630 = icmp eq i32 %7629, 0
  %7631 = fcmp fast une float %7626, 1.000000e+00
  %7632 = and i1 %7631, %7630
  br i1 %7632, label %7633, label %7652

; <label>:7633                                    ; preds = %7624
  %7634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %64, float %7313, float %7314, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7635 = extractvalue %dx.types.ResRet.f32 %7634, 0
  %7636 = extractvalue %dx.types.ResRet.f32 %7634, 1
  %7637 = extractvalue %dx.types.ResRet.f32 %7634, 2
  %7638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7639 = extractvalue %dx.types.CBufRet.f32 %7638, 1
  %7640 = fmul fast float %7639, %7635
  %7641 = fmul fast float %7639, %7636
  %7642 = fmul fast float %7639, %7637
  %7643 = fcmp fast ogt float %7595, 0x3FEFFF2E40000000
  %7644 = fsub fast float 1.000000e+00, %7626
  %7645 = fsub fast float 1.000000e+00, %7595
  %7646 = fdiv fast float %7644, %7645
  %7647 = call float @dx.op.unary.f32(i32 7, float %7646)  ; Saturate(value)
  %7648 = select i1 %7643, float 0.000000e+00, float %7647
  %7649 = fmul fast float %7640, %7648
  %7650 = fmul fast float %7641, %7648
  %7651 = fmul fast float %7642, %7648
  br label %7652

; <label>:7652                                    ; preds = %7633, %7624
  %7653 = phi float [ 0.000000e+00, %7624 ], [ %7649, %7633 ]
  %7654 = phi float [ 0.000000e+00, %7624 ], [ %7650, %7633 ]
  %7655 = phi float [ 0.000000e+00, %7624 ], [ %7651, %7633 ]
  %7656 = fmul fast float %7626, %7288
  %7657 = call float @dx.op.dot3.f32(i32 55, float %7626, float %7626, float %7626, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7658 = call float @dx.op.dot3.f32(i32 55, float %7653, float %7654, float %7655, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7659 = select i1 %239, float %7657, float %7626
  %7660 = select i1 %239, float 1.000000e+00, float %7626
  %7661 = select i1 %239, float %7658, float %7653
  %7662 = select i1 %239, float 0.000000e+00, float %7654
  %7663 = select i1 %239, float 0.000000e+00, float %7655
  %7664 = fmul fast float %7659, %7300
  %7665 = fmul fast float %7659, %7301
  %7666 = fmul fast float %7660, %7302
  %7667 = fadd fast float %7664, %7661
  %7668 = fadd fast float %7665, %7662
  %7669 = fadd fast float %7663, %7666
  %7670 = fmul fast float %7659, %7303
  %7671 = fmul fast float %7659, %7304
  %7672 = fmul fast float %7660, %7305
  br label %7673

; <label>:7673                                    ; preds = %7652, %7309, %7281, %6513
  %7674 = phi float [ %6518, %6513 ], [ %7300, %7281 ], [ %7667, %7652 ], [ %7300, %7309 ]
  %7675 = phi float [ %6519, %6513 ], [ %7301, %7281 ], [ %7668, %7652 ], [ %7301, %7309 ]
  %7676 = phi float [ %6520, %6513 ], [ %7302, %7281 ], [ %7669, %7652 ], [ %7302, %7309 ]
  %7677 = phi float [ %6521, %6513 ], [ %7303, %7281 ], [ %7670, %7652 ], [ %7303, %7309 ]
  %7678 = phi float [ %6522, %6513 ], [ %7304, %7281 ], [ %7671, %7652 ], [ %7304, %7309 ]
  %7679 = phi float [ %6523, %6513 ], [ %7305, %7281 ], [ %7672, %7652 ], [ %7305, %7309 ]
  %7680 = phi float [ %6524, %6513 ], [ %7288, %7281 ], [ %7656, %7652 ], [ %7288, %7309 ]
  %7681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7682 = extractvalue %dx.types.CBufRet.f32 %7681, 2
  %7683 = extractvalue %dx.types.CBufRet.f32 %7681, 3
  %7684 = fmul fast float %7682, %99
  %7685 = fmul fast float %7683, %100
  %7686 = call float @dx.op.unary.f32(i32 7, float %7684)  ; Saturate(value)
  %7687 = call float @dx.op.unary.f32(i32 7, float %7685)  ; Saturate(value)
  %7688 = select i1 %6258, i32 2, i32 0
  %7689 = or i32 %7688, 1
  %7690 = uitofp i32 %7689 to float
  %7691 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7686, float %7687, float %7690, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7692 = extractvalue %dx.types.ResRet.f32 %7691, 0
  %7693 = extractvalue %dx.types.ResRet.f32 %7691, 1
  %7694 = extractvalue %dx.types.ResRet.f32 %7691, 2
  %7695 = extractvalue %dx.types.ResRet.f32 %7691, 3
  %7696 = add nuw nsw i32 %7688, 2
  %7697 = uitofp i32 %7696 to float
  %7698 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7686, float %7687, float %7697, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7699 = extractvalue %dx.types.ResRet.f32 %7698, 0
  %7700 = extractvalue %dx.types.ResRet.f32 %7698, 1
  %7701 = extractvalue %dx.types.ResRet.f32 %7698, 2
  %7702 = extractvalue %dx.types.ResRet.f32 %7698, 3
  %7703 = call float @dx.op.binary.f32(i32 35, float %7693, float %7694)  ; FMax(a,b)
  %7704 = call float @dx.op.binary.f32(i32 35, float %7692, float %7703)  ; FMax(a,b)
  %7705 = call float @dx.op.binary.f32(i32 35, float %7704, float %7695)  ; FMax(a,b)
  %7706 = call float @dx.op.binary.f32(i32 36, float %7700, float %7701)  ; FMin(a,b)
  %7707 = call float @dx.op.binary.f32(i32 36, float %7699, float %7706)  ; FMin(a,b)
  %7708 = call float @dx.op.binary.f32(i32 36, float %7707, float %7702)  ; FMin(a,b)
  %7709 = fmul fast float %7705, 2.550000e+02
  %7710 = fadd fast float %7709, 0x3F70101020000000
  %7711 = fptoui float %7710 to i32
  %7712 = fmul fast float %7708, 2.550000e+02
  %7713 = fadd fast float %7712, 0x3F70101020000000
  %7714 = fptoui float %7713 to i32
  %7715 = icmp ult i32 %7711, %7714
  br i1 %7715, label %7716, label %7885

; <label>:7716                                    ; preds = %7673
  %7717 = fcmp fast ogt float %86, 9.843750e-01
  %7718 = fadd fast float %6517, -4.000000e+00
  %7719 = select i1 %7717, float -4.000000e+00, float %7718
  %7720 = call float @dx.op.binary.f32(i32 35, float %7719, float 0.000000e+00)  ; FMax(a,b)
  %7721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7722 = extractvalue %dx.types.CBufRet.f32 %7721, 0
  %7723 = fadd fast float %7722, %7720
  %7724 = extractvalue %dx.types.CBufRet.f32 %7721, 2
  %7725 = fmul fast float %7723, %7724
  %7726 = call float @dx.op.unary.f32(i32 23, float %7725)  ; Log(value)
  %7727 = extractvalue %dx.types.CBufRet.f32 %7721, 3
  %7728 = fmul fast float %7727, %7726
  %7729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7730 = extractvalue %dx.types.CBufRet.f32 %7729, 2
  %7731 = fmul fast float %7728, %7730
  %7732 = call float @dx.op.unary.f32(i32 7, float %7731)  ; Saturate(value)
  %7733 = uitofp i32 %7711 to float
  %7734 = uitofp i32 %7714 to float
  %7735 = fadd fast float %7733, 5.000000e-01
  %7736 = fadd fast float %7734, 5.000000e-01
  %7737 = fmul fast float %7730, %7735
  %7738 = fmul fast float %7730, %7736
  %7739 = fadd fast float %7737, 0x3F0FFB4800000000
  %7740 = fadd fast float %7738, 0xBF0FFB4800000000
  %7741 = call float @dx.op.binary.f32(i32 35, float %7732, float %7739)  ; FMax(a,b)
  %7742 = call float @dx.op.binary.f32(i32 36, float %7741, float %7740)  ; FMin(a,b)
  %7743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7744 = extractvalue %dx.types.CBufRet.f32 %7743, 1
  %7745 = extractvalue %dx.types.CBufRet.f32 %7743, 2
  %7746 = extractvalue %dx.types.CBufRet.f32 %7743, 0
  %7747 = select i1 %6258, float %7746, float 0.000000e+00
  %7748 = fmul fast float %7744, %7742
  %7749 = fadd fast float %7747, %7748
  %7750 = fadd fast float %7747, %7745
  %7751 = fsub fast float %7744, %7745
  %7752 = fadd fast float %7751, %7747
  %7753 = call float @dx.op.binary.f32(i32 35, float %7749, float %7750)  ; FMax(a,b)
  %7754 = call float @dx.op.binary.f32(i32 36, float %7753, float %7752)  ; FMin(a,b)
  %7755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %7686, float %7687, float %7754, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7756 = extractvalue %dx.types.ResRet.f32 %7755, 0
  %7757 = extractvalue %dx.types.ResRet.f32 %7755, 1
  %7758 = extractvalue %dx.types.ResRet.f32 %7755, 2
  %7759 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7760 = extractvalue %dx.types.CBufRet.i32 %7759, 0
  %7761 = extractvalue %dx.types.CBufRet.i32 %7759, 1
  %7762 = uitofp i32 %7760 to float
  %7763 = uitofp i32 %7761 to float
  %7764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7765 = extractvalue %dx.types.CBufRet.f32 %7764, 0
  %7766 = extractvalue %dx.types.CBufRet.f32 %7764, 1
  %7767 = fmul fast float %7762, %7686
  %7768 = fmul fast float %7763, %7687
  %7769 = fadd fast float %7767, -5.000000e-01
  %7770 = fadd fast float %7768, -5.000000e-01
  %7771 = call float @dx.op.unary.f32(i32 22, float %7769)  ; Frc(value)
  %7772 = call float @dx.op.unary.f32(i32 22, float %7770)  ; Frc(value)
  %7773 = fmul fast float %7771, %7771
  %7774 = fmul fast float %7773, %7771
  %7775 = fsub fast float 3.000000e+00, %7771
  %7776 = fmul fast float %7773, %7775
  %7777 = fmul fast float %7771, 3.000000e+00
  %7778 = fmul fast float %7774, 3.000000e+00
  %7779 = fmul fast float %7773, 6.000000e+00
  %7780 = fsub fast float %7778, %7779
  %7781 = fadd fast float %7780, 4.000000e+00
  %7782 = fmul fast float %7781, 0x3FC5555560000000
  %7783 = fmul fast float %7774, -3.000000e+00
  %7784 = fadd fast float %7773, %7771
  %7785 = fmul fast float %7784, 3.000000e+00
  %7786 = fadd fast float %7783, 1.000000e+00
  %7787 = fadd fast float %7786, %7785
  %7788 = fmul fast float %7774, 0x3FC5555560000000
  %7789 = fmul fast float %7772, %7772
  %7790 = fmul fast float %7789, %7772
  %7791 = fsub fast float 3.000000e+00, %7772
  %7792 = fmul fast float %7789, %7791
  %7793 = fmul fast float %7772, 3.000000e+00
  %7794 = fmul fast float %7790, 3.000000e+00
  %7795 = fmul fast float %7789, 6.000000e+00
  %7796 = fsub fast float %7794, %7795
  %7797 = fadd fast float %7796, 4.000000e+00
  %7798 = fmul fast float %7797, 0x3FC5555560000000
  %7799 = fmul fast float %7790, -3.000000e+00
  %7800 = fadd fast float %7789, %7772
  %7801 = fmul fast float %7800, 3.000000e+00
  %7802 = fadd fast float %7799, 1.000000e+00
  %7803 = fadd fast float %7802, %7801
  %7804 = fmul fast float %7790, 0x3FC5555560000000
  %7805 = fadd fast float %7771, 1.000000e+00
  %7806 = fsub fast float 1.000000e+00, %7777
  %7807 = fadd fast float %7806, %7776
  %7808 = fadd fast float %7807, %7781
  %7809 = fmul fast float %7808, 0x3FC5555560000000
  %7810 = fdiv fast float %7782, %7809
  %7811 = fsub fast float %7805, %7810
  %7812 = fsub fast float 1.000000e+00, %7771
  %7813 = fadd fast float %7787, %7774
  %7814 = fmul fast float %7813, 0x3FC5555560000000
  %7815 = fdiv fast float %7788, %7814
  %7816 = fadd fast float %7812, %7815
  %7817 = fadd fast float %7772, 1.000000e+00
  %7818 = fsub fast float 1.000000e+00, %7793
  %7819 = fadd fast float %7818, %7792
  %7820 = fadd fast float %7819, %7797
  %7821 = fmul fast float %7820, 0x3FC5555560000000
  %7822 = fdiv fast float %7798, %7821
  %7823 = fsub fast float %7817, %7822
  %7824 = fsub fast float 1.000000e+00, %7772
  %7825 = fadd fast float %7803, %7790
  %7826 = fmul fast float %7825, 0x3FC5555560000000
  %7827 = fdiv fast float %7804, %7826
  %7828 = fadd fast float %7827, %7824
  %7829 = fmul fast float %7811, %7765
  %7830 = fsub fast float %7686, %7829
  %7831 = fmul fast float %7816, %7765
  %7832 = fadd fast float %7831, %7686
  %7833 = fmul fast float %7828, %7766
  %7834 = fadd fast float %7833, %7687
  %7835 = fmul fast float %7823, %7766
  %7836 = fsub fast float %7687, %7835
  %7837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7830, float %7836, float %7754, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7838 = extractvalue %dx.types.ResRet.f32 %7837, 0
  %7839 = extractvalue %dx.types.ResRet.f32 %7837, 1
  %7840 = extractvalue %dx.types.ResRet.f32 %7837, 2
  %7841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7832, float %7836, float %7754, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7842 = extractvalue %dx.types.ResRet.f32 %7841, 0
  %7843 = extractvalue %dx.types.ResRet.f32 %7841, 1
  %7844 = extractvalue %dx.types.ResRet.f32 %7841, 2
  %7845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7830, float %7834, float %7754, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7846 = extractvalue %dx.types.ResRet.f32 %7845, 0
  %7847 = extractvalue %dx.types.ResRet.f32 %7845, 1
  %7848 = extractvalue %dx.types.ResRet.f32 %7845, 2
  %7849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7832, float %7834, float %7754, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7850 = extractvalue %dx.types.ResRet.f32 %7849, 0
  %7851 = extractvalue %dx.types.ResRet.f32 %7849, 1
  %7852 = extractvalue %dx.types.ResRet.f32 %7849, 2
  %7853 = fsub fast float %7846, %7838
  %7854 = fsub fast float %7847, %7839
  %7855 = fsub fast float %7848, %7840
  %7856 = fmul fast float %7853, %7826
  %7857 = fmul fast float %7854, %7826
  %7858 = fmul fast float %7855, %7826
  %7859 = fadd fast float %7856, %7838
  %7860 = fadd fast float %7857, %7839
  %7861 = fadd fast float %7858, %7840
  %7862 = fsub fast float %7850, %7842
  %7863 = fsub fast float %7851, %7843
  %7864 = fsub fast float %7852, %7844
  %7865 = fmul fast float %7862, %7826
  %7866 = fmul fast float %7863, %7826
  %7867 = fmul fast float %7864, %7826
  %7868 = fsub fast float %7842, %7859
  %7869 = fadd fast float %7868, %7865
  %7870 = fsub fast float %7843, %7860
  %7871 = fadd fast float %7870, %7866
  %7872 = fsub fast float %7844, %7861
  %7873 = fadd fast float %7872, %7867
  %7874 = fmul fast float %7869, %7814
  %7875 = fmul fast float %7871, %7814
  %7876 = fmul fast float %7873, %7814
  %7877 = fadd fast float %7874, %7859
  %7878 = fadd fast float %7875, %7860
  %7879 = fadd fast float %7876, %7861
  %7880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7881 = extractvalue %dx.types.CBufRet.f32 %7880, 1
  %7882 = fmul fast float %7877, %7881
  %7883 = fmul fast float %7878, %7881
  %7884 = fmul fast float %7879, %7881
  br label %7885

; <label>:7885                                    ; preds = %7716, %7673
  %7886 = phi float [ %7756, %7716 ], [ 1.000000e+00, %7673 ]
  %7887 = phi float [ %7757, %7716 ], [ 1.000000e+00, %7673 ]
  %7888 = phi float [ %7758, %7716 ], [ 1.000000e+00, %7673 ]
  %7889 = phi float [ %7882, %7716 ], [ 0.000000e+00, %7673 ]
  %7890 = phi float [ %7883, %7716 ], [ 0.000000e+00, %7673 ]
  %7891 = phi float [ %7884, %7716 ], [ 0.000000e+00, %7673 ]
  %7892 = fmul fast float %7886, %7680
  %7893 = call float @dx.op.dot3.f32(i32 55, float %7886, float %7887, float %7888, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7894 = call float @dx.op.dot3.f32(i32 55, float %7889, float %7890, float %7891, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7895 = select i1 %239, float %7893, float %7886
  %7896 = select i1 %239, float %7893, float %7887
  %7897 = select i1 %239, float 1.000000e+00, float %7888
  %7898 = select i1 %239, float %7894, float %7889
  %7899 = select i1 %239, float 0.000000e+00, float %7890
  %7900 = select i1 %239, float 0.000000e+00, float %7891
  %7901 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7902 = extractvalue %dx.types.CBufRet.i32 %7901, 3
  %7903 = and i32 %7902, 3
  %7904 = icmp ne i32 %7903, 0
  %7905 = and i32 %7902, 4
  %7906 = icmp ne i32 %7905, 0
  %7907 = and i1 %7904, %7906
  %7908 = and i1 %239, %7907
  br i1 %7908, label %7909, label %7915

; <label>:7909                                    ; preds = %7885
  %7910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7911 = extractvalue %dx.types.CBufRet.f32 %7910, 1
  %7912 = fadd fast float %7892, -1.000000e+00
  %7913 = fmul fast float %7911, %7912
  %7914 = fadd fast float %7913, 1.000000e+00
  br label %7915

; <label>:7915                                    ; preds = %7909, %7885
  %7916 = phi float [ %7914, %7909 ], [ %7892, %7885 ]
  %7917 = fadd fast float %7677, %7674
  %7918 = fmul fast float %7895, %7917
  %7919 = fadd fast float %7918, %7898
  %7920 = fadd fast float %7678, %7675
  %7921 = fmul fast float %7896, %7920
  %7922 = fadd fast float %7921, %7899
  %7923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7924 = extractvalue %dx.types.CBufRet.f32 %7923, 0
  br i1 %239, label %7925, label %7940

; <label>:7925                                    ; preds = %7915
  %7926 = fadd fast float %7919, %7922
  %7927 = fmul fast float %7924, %7926
  %7928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7929 = extractvalue %dx.types.CBufRet.f32 %7928, 3
  %7930 = extractvalue %dx.types.CBufRet.f32 %6240, 1
  %7931 = fsub fast float %6245, %6239
  %7932 = fadd fast float %7931, %6246
  %7933 = fsub fast float %7932, %7930
  %7934 = extractvalue %dx.types.CBufRet.f32 %6240, 2
  %7935 = fmul fast float %7933, %7934
  %7936 = call float @dx.op.unary.f32(i32 7, float %7935)  ; Saturate(value)
  %7937 = fsub fast float %7936, %7929
  %7938 = fmul fast float %7937, %7916
  %7939 = fadd fast float %7938, %7929
  br label %7964

; <label>:7940                                    ; preds = %7915
  %7941 = fadd fast float %7679, %7676
  %7942 = fmul fast float %7897, %7941
  %7943 = fadd fast float %7942, %7900
  %7944 = fmul fast float %7924, %7919
  %7945 = fmul fast float %7924, %7922
  %7946 = fmul fast float %7924, %7943
  %7947 = call float @dx.op.binary.f32(i32 35, float %7945, float %7946)  ; FMax(a,b)
  %7948 = call float @dx.op.binary.f32(i32 35, float %7944, float %7947)  ; FMax(a,b)
  %7949 = call float @dx.op.binary.f32(i32 35, float %7948, float 1.000000e+00)  ; FMax(a,b)
  %7950 = fcmp fast ugt float %7949, 0x3F10000000000000
  br i1 %7950, label %7952, label %7951

; <label>:7951                                    ; preds = %7940
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7952

; <label>:7952                                    ; preds = %7951, %7940
  %7953 = add i32 %71, 132
  %7954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %7953, i32 undef)  ; BufferLoad(srv,index,wot)
  %7955 = extractvalue %dx.types.ResRet.i32 %7954, 0
  %7956 = and i32 %7955, 32
  %7957 = icmp eq i32 %7956, 0
  br i1 %7957, label %7964, label %7958

; <label>:7958                                    ; preds = %7952
  %7959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7960 = extractvalue %dx.types.CBufRet.f32 %7959, 0
  %7961 = fmul fast float %7960, 0x3FE99999A0000000
  %7962 = fadd fast float %7960, %7944
  %7963 = fadd fast float %7961, %7946
  br label %7964

; <label>:7964                                    ; preds = %7958, %7952, %7925
  %7965 = phi float [ %7927, %7925 ], [ %7962, %7958 ], [ %7944, %7952 ]
  %7966 = phi float [ %7939, %7925 ], [ %7945, %7958 ], [ %7945, %7952 ]
  %7967 = phi float [ 1.000000e+00, %7925 ], [ %7963, %7958 ], [ %7946, %7952 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7968 = call float @dx.op.binary.f32(i32 36, float %7965, float 3.225500e+04)  ; FMin(a,b)
  %7969 = call float @dx.op.binary.f32(i32 36, float %7966, float 3.225500e+04)  ; FMin(a,b)
  %7970 = call float @dx.op.binary.f32(i32 36, float %7967, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7968)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7969)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7970)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!83}
!dx.entryPoints = !{!84}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !71, !74}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
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
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!44 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!45 = !{i32 37, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !17}
!46 = !{i32 38, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!47 = !{i32 39, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!48 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!49 = !{i32 41, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!50 = !{i32 42, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!51 = !{i32 43, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!52 = !{i32 44, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!53 = !{i32 45, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!54 = !{i32 46, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!55 = !{i32 47, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !56}
!56 = !{i32 0, i32 14}
!57 = !{i32 48, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!58 = !{i32 49, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!59 = !{i32 50, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!60 = !{i32 51, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!61 = !{i32 52, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!62 = !{i32 53, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!63 = !{i32 54, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!64 = !{i32 55, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!65 = !{i32 56, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!66 = !{i32 57, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!67 = !{i32 58, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!68 = !{i32 59, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !56}
!69 = !{i32 60, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!70 = !{i32 61, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!71 = !{!72, !73}
!72 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!73 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!74 = !{!75, !76, !77, !78, !79, !80, !81, !82}
!75 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!76 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!77 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!78 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!79 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!80 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!81 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!82 = !{i32 7, %struct.SamplerState* undef, !"", i32 0, i32 6, i32 1, i32 0, null}
!83 = !{[24 x i32] [i32 22, i32 4, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!84 = !{void ()* @ps_main, !"ps_main", !85, !4, !102}
!85 = !{!86, !100, null}
!86 = !{!87, !90, !92, !94, !95, !96, !98, !99}
!87 = !{i32 0, !"SV_Position", i8 9, i8 3, !88, i8 4, i32 1, i8 4, i32 0, i8 0, !89}
!88 = !{i32 0}
!89 = !{i32 3, i32 15}
!90 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !88, i8 2, i32 1, i8 2, i32 1, i8 0, !91}
!91 = !{i32 3, i32 3}
!92 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !88, i8 2, i32 1, i8 3, i32 2, i8 0, !93}
!93 = !{i32 3, i32 7}
!94 = !{i32 3, !"NORMAL", i8 9, i8 0, !88, i8 2, i32 1, i8 3, i32 3, i8 0, !93}
!95 = !{i32 4, !"TANGENT", i8 9, i8 0, !88, i8 2, i32 1, i8 4, i32 4, i8 0, !89}
!96 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !88, i8 1, i32 1, i8 1, i32 5, i8 0, !97}
!97 = !{i32 3, i32 1}
!98 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !88, i8 1, i32 1, i8 1, i32 5, i8 1, !97}
!99 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !88, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!100 = !{!101}
!101 = !{i32 0, !"SV_Target", i8 9, i8 16, !88, i8 0, i32 1, i8 4, i32 0, i8 0, !89}
!102 = !{i32 0, i64 16}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !112}
!112 = !{!"llvm.loop.unroll.disable"}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
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
!135 = distinct !{!135, !112}
!136 = distinct !{!136, !112}
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

