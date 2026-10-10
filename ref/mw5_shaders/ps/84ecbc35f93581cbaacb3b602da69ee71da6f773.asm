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
; shader hash: 88801a567353a3d905843131b3a9518d
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
; Number of inputs: 26, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
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
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  %155 = or i32 %152, 4
  %156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %183 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %181, i32 %182, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = lshr i32 %184, 18
  %186 = uitofp i32 %185 to float
  %187 = fmul fast float %186, 0x3F4C00EBA0000000
  %188 = call float @dx.op.unary.f32(i32 21, float %187)  ; Exp(value)
  %189 = fadd fast float %188, -1.000000e+00
  %190 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
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
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = and i32 %205, 114688
  %207 = icmp ne i32 %206, 0
  %208 = select i1 %207, float %202, float 0.000000e+00
  %209 = select i1 %207, float %203, float 0.000000e+00
  %210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %65, float %208, float %209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = fmul fast float %211, 2.550000e+02
  %213 = fptoui float %212 to i32
  %214 = select i1 %207, i32 %213, i32 0
  %215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.i32 %215, 3
  %217 = and i32 %216, 3
  %218 = icmp ne i32 %217, 0
  %219 = and i32 %216, 4
  %220 = icmp ne i32 %219, 0
  %221 = and i1 %218, %220
  br i1 %221, label %222, label %231

; <label>:222                                     ; preds = %0
  %223 = fmul fast float %116, %101
  %224 = fmul fast float %115, %100
  %225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %64, float %224, float %223, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fsub fast float 1.000000e+00, %226
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 0
  %230 = fcmp fast olt float %227, %229
  br label %239

; <label>:231                                     ; preds = %0
  %232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.i32 %232, 3
  %234 = and i32 %233, 3
  %235 = icmp ne i32 %234, 0
  %236 = and i32 %233, 4
  %237 = icmp eq i32 %236, 0
  %238 = and i1 %235, %237
  br label %239

; <label>:239                                     ; preds = %231, %222
  %240 = phi i1 [ %230, %222 ], [ %238, %231 ]
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 2
  %243 = fmul fast float %242, 0x3FE3C6EF40000000
  %244 = frem fast float %100, 2.560000e+02
  %245 = frem fast float %101, 2.560000e+02
  %246 = fptoui float %244 to i32
  %247 = fptoui float %245 to i32
  %248 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %246, i32 %247, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %249 = extractvalue %dx.types.ResRet.f32 %248, 0
  %250 = extractvalue %dx.types.ResRet.f32 %248, 1
  %251 = fadd fast float %249, %243
  %252 = fadd fast float %250, %243
  %253 = call float @dx.op.unary.f32(i32 22, float %251)  ; Frc(value)
  %254 = call float @dx.op.unary.f32(i32 22, float %252)  ; Frc(value)
  %255 = add i32 %71, 60
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = shl i32 %257, 4
  %259 = and i32 %258, 32752
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = lshr i32 %257, 7
  %262 = and i32 %261, 32752
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = lshr i32 %257, 22
  %265 = shl nuw nsw i32 %264, 5
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = add i32 %71, 72
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 255
  %271 = uitofp i32 %270 to float
  %272 = fmul fast float %271, 0x3F70101020000000
  %273 = lshr i32 %269, 8
  %274 = and i32 %273, 255
  %275 = uitofp i32 %274 to float
  %276 = fmul fast float %275, 0x3F70101020000000
  %277 = lshr i32 %269, 16
  %278 = and i32 %277, 255
  %279 = uitofp i32 %278 to float
  %280 = fmul fast float %279, 0x3F70101020000000
  %281 = add i32 %71, 36
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = and i32 %283, 65535
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %283, 16
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = add i32 %71, 96
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 65535
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %290, 16
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = fmul fast float %292, 0x3F50624DE0000000
  %296 = fmul fast float %294, 0x3F50624DE0000000
  %297 = add i32 %71, 124
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 2
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %311, label %302

; <label>:302                                     ; preds = %239
  %303 = add i32 %71, 168
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = add i32 %305, 0
  %307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %306, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %308 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %307, %dx.types.Handle %97, float %82, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %309 = extractvalue %dx.types.ResRet.f32 %308, 3
  %310 = fmul fast float %309, %84
  br label %311

; <label>:311                                     ; preds = %302, %239
  %312 = phi float [ %84, %239 ], [ %310, %302 ]
  %313 = add i32 %71, 24
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = add i32 %71, 28
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = or i32 %318, %315
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %1073, label %321

; <label>:321                                     ; preds = %311
  %322 = add i32 %71, 92
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = lshr i32 %324, 16
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = fmul fast float %326, 0x3F50624DE0000000
  %328 = add i32 %71, 40
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = lshr i32 %330, 16
  %332 = and i32 %331, 255
  %333 = lshr i32 %330, 24
  %334 = add i32 %71, 100
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 65535
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %336, 16
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = add i32 %71, 32
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = lshr i32 %343, 22
  %345 = shl nuw nsw i32 %344, 5
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = shl i32 %343, 4
  %348 = and i32 %347, 32752
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %343, 7
  %351 = and i32 %350, 32752
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 3
  %355 = fmul fast float %354, 1.000000e+03
  %356 = fmul fast float %295, %355
  %357 = call float @dx.op.unary.f32(i32 22, float %356)  ; Frc(value)
  %358 = fadd fast float %357, %285
  %359 = fmul fast float %296, %355
  %360 = call float @dx.op.unary.f32(i32 22, float %359)  ; Frc(value)
  %361 = fadd fast float %360, %287
  %362 = fmul fast float %327, %355
  %363 = call float @dx.op.unary.f32(i32 22, float %362)  ; Frc(value)
  %364 = fmul fast float %363, 0x401921FB60000000
  %365 = fadd fast float %364, %346
  %366 = call float @dx.op.unary.f32(i32 13, float %365)  ; Sin(value)
  %367 = call float @dx.op.unary.f32(i32 12, float %365)  ; Cos(value)
  %368 = fsub fast float -0.000000e+00, %366
  %369 = fadd fast float %82, -5.000000e-01
  %370 = fadd fast float %83, -5.000000e-01
  %371 = fmul fast float %338, %369
  %372 = fmul fast float %340, %370
  %373 = fadd fast float %371, 5.000000e-01
  %374 = fadd fast float %372, 5.000000e-01
  %375 = fmul fast float %349, %373
  %376 = fmul fast float %352, %374
  %377 = fmul fast float %367, %375
  %378 = call float @dx.op.tertiary.f32(i32 46, float %368, float %376, float %377)  ; FMad(a,b,c)
  %379 = fmul fast float %366, %375
  %380 = call float @dx.op.tertiary.f32(i32 46, float %367, float %376, float %379)  ; FMad(a,b,c)
  %381 = fadd fast float %358, %378
  %382 = fadd fast float %361, %380
  %383 = icmp ugt i32 %332, 1
  %384 = icmp ugt i32 %330, 33554431
  %385 = or i1 %384, %383
  br i1 %385, label %386, label %411

; <label>:386                                     ; preds = %321
  %387 = add i32 %71, 84
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = lshr i32 %389, 16
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = fmul fast float %354, %391
  %393 = call float @dx.op.unary.f32(i32 22, float %392)  ; Frc(value)
  %394 = mul nuw nsw i32 %332, %333
  %395 = uitofp i32 %394 to float
  %396 = fmul fast float %393, %395
  %397 = call float @dx.op.unary.f32(i32 27, float %396)  ; Round_ni(value)
  %398 = fptoui float %397 to i32
  %399 = urem i32 %398, %332
  %400 = udiv i32 %398, %333
  %401 = call float @dx.op.unary.f32(i32 22, float %381)  ; Frc(value)
  %402 = call float @dx.op.unary.f32(i32 22, float %382)  ; Frc(value)
  %403 = uitofp i32 %399 to float
  %404 = uitofp i32 %400 to float
  %405 = fadd fast float %401, %403
  %406 = fadd fast float %402, %404
  %407 = uitofp i32 %332 to float
  %408 = uitofp i32 %333 to float
  %409 = fdiv fast float %405, %407
  %410 = fdiv fast float %406, %408
  br label %411

; <label>:411                                     ; preds = %386, %321
  %412 = phi float [ %409, %386 ], [ %381, %321 ]
  %413 = phi float [ %410, %386 ], [ %382, %321 ]
  %414 = and i32 %315, 16777216
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %525, label %416

; <label>:416                                     ; preds = %411
  %417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %418 = extractvalue %dx.types.CBufRet.f32 %417, 0
  %419 = extractvalue %dx.types.CBufRet.f32 %417, 1
  %420 = extractvalue %dx.types.CBufRet.f32 %417, 2
  %421 = fadd fast float %418, %147
  %422 = fadd fast float %419, %148
  %423 = fadd fast float %420, %149
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 0
  %426 = call float @dx.op.unary.f32(i32 7, float %425)  ; Saturate(value)
  %427 = icmp eq i32 %70, 65535
  br i1 %427, label %522, label %428

; <label>:428                                     ; preds = %416
  %429 = lshr i32 %70, 1
  %430 = shl i32 %429, 2
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %70, 1
  %434 = icmp ne i32 %433, 0
  %435 = lshr i32 %432, 16
  %436 = and i32 %432, 65535
  %437 = select i1 %434, i32 %435, i32 %436
  %438 = icmp eq i32 %437, 65535
  br i1 %438, label %518, label %439

; <label>:439                                     ; preds = %428
  %440 = mul nuw nsw i32 %437, 40
  %441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = extractvalue %dx.types.ResRet.f32 %441, 1
  %444 = extractvalue %dx.types.ResRet.f32 %441, 2
  %445 = add nuw nsw i32 %440, 12
  %446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = extractvalue %dx.types.ResRet.f32 %446, 1
  %449 = extractvalue %dx.types.ResRet.f32 %446, 2
  %450 = add nuw nsw i32 %440, 24
  %451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = extractvalue %dx.types.ResRet.f32 %451, 1
  %454 = extractvalue %dx.types.ResRet.f32 %451, 2
  %455 = add nuw nsw i32 %440, 36
  %456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.f32 %456, 0
  %458 = fsub fast float %421, %442
  %459 = fsub fast float %422, %443
  %460 = fsub fast float %423, %444
  %461 = fmul fast float %457, %458
  %462 = fmul fast float %457, %459
  %463 = fmul fast float %457, %460
  %464 = call float @dx.op.unary.f32(i32 27, float %461)  ; Round_ni(value)
  %465 = call float @dx.op.unary.f32(i32 27, float %462)  ; Round_ni(value)
  %466 = call float @dx.op.unary.f32(i32 27, float %463)  ; Round_ni(value)
  %467 = fadd fast float %464, 5.000000e-01
  %468 = fadd fast float %465, 5.000000e-01
  %469 = fadd fast float %466, 5.000000e-01
  %470 = fmul fast float %467, %447
  %471 = fmul fast float %468, %448
  %472 = fmul fast float %469, %449
  %473 = shl i32 %70, 2
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = add i32 %475, 0
  %477 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %476, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %478 = call float @dx.op.unary.f32(i32 22, float %470)  ; Frc(value)
  %479 = call float @dx.op.unary.f32(i32 22, float %471)  ; Frc(value)
  %480 = call float @dx.op.unary.f32(i32 22, float %472)  ; Frc(value)
  %481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %477, %dx.types.Handle %65, float %478, float %479, float %480, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = extractvalue %dx.types.ResRet.f32 %481, 2
  %485 = fmul fast float %482, 1.023000e+03
  %486 = fmul fast float %483, 1.023000e+03
  %487 = fmul fast float %484, 1.023000e+03
  %488 = fadd fast float %485, 5.000000e-01
  %489 = fadd fast float %486, 5.000000e-01
  %490 = fadd fast float %487, 5.000000e-01
  %491 = call float @dx.op.unary.f32(i32 27, float %488)  ; Round_ni(value)
  %492 = call float @dx.op.unary.f32(i32 27, float %489)  ; Round_ni(value)
  %493 = call float @dx.op.unary.f32(i32 27, float %490)  ; Round_ni(value)
  %494 = fsub fast float %461, %464
  %495 = fsub fast float %462, %465
  %496 = fsub fast float %463, %466
  %497 = fmul fast float %494, 7.500000e-01
  %498 = fmul fast float %495, 7.500000e-01
  %499 = fmul fast float %496, 7.500000e-01
  %500 = fadd fast float %464, 1.250000e-01
  %501 = fadd fast float %500, %497
  %502 = fadd fast float %501, %491
  %503 = fadd fast float %465, 1.250000e-01
  %504 = fadd fast float %503, %498
  %505 = fadd fast float %504, %492
  %506 = fadd fast float %466, 1.250000e-01
  %507 = fadd fast float %506, %499
  %508 = fadd fast float %507, %493
  %509 = fmul fast float %502, %452
  %510 = fmul fast float %505, %453
  %511 = fmul fast float %508, %454
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = add i32 %513, 0
  %515 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %514, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %515, %dx.types.Handle %63, float %509, float %510, float %511, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %517 = extractvalue %dx.types.ResRet.f32 %516, 0
  br label %518

; <label>:518                                     ; preds = %439, %428
  %519 = phi float [ %517, %439 ], [ -1.000000e+00, %428 ]
  %520 = fadd fast float %519, %426
  %521 = call float @dx.op.unary.f32(i32 7, float %520)  ; Saturate(value)
  br label %522

; <label>:522                                     ; preds = %518, %416
  %523 = phi float [ %521, %518 ], [ %426, %416 ]
  %524 = fmul fast float %523, %312
  br label %525

; <label>:525                                     ; preds = %522, %411
  %526 = phi float [ %524, %522 ], [ %312, %411 ]
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = and i32 %528, 256
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %577, label %531

; <label>:531                                     ; preds = %525
  %532 = add i32 %71, 152
  %533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.i32 %533, 0
  %535 = add i32 %534, 0
  %536 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %535, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %537 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %536, %dx.types.Handle %97, float %412, float %413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 0
  %539 = add i32 %71, 52
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = shl i32 %541, 4
  %543 = and i32 %542, 32752
  %544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %543)  ; LegacyF16ToF32(value)
  %545 = lshr i32 %541, 7
  %546 = and i32 %545, 32752
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = fsub fast float 1.000000e+00, %526
  %549 = call float @dx.op.binary.f32(i32 35, float %548, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %550 = bitcast float %526 to i32
  %551 = sitofp i32 %550 to float
  %552 = fadd fast float %551, 0xC1CFBF8940000000
  %553 = fmul fast float %547, %552
  %554 = fadd fast float %553, 0x41CFBF8940000000
  %555 = fptosi float %554 to i32
  %556 = bitcast i32 %555 to float
  %557 = bitcast float %549 to i32
  %558 = sitofp i32 %557 to float
  %559 = fadd fast float %558, 0xC1CFBF8940000000
  %560 = fmul fast float %559, %547
  %561 = fadd fast float %560, 0x41CFBF8940000000
  %562 = fptosi float %561 to i32
  %563 = bitcast i32 %562 to float
  %564 = fmul fast float %556, %544
  %565 = fmul fast float %563, %544
  %566 = fsub fast float %549, %564
  %567 = fadd fast float %565, %549
  %568 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  %569 = call float @dx.op.unary.f32(i32 7, float %567)  ; Saturate(value)
  %570 = fsub fast float %538, %568
  %571 = fsub fast float %569, %568
  %572 = bitcast float %571 to i32
  %573 = sub nsw i32 2129859010, %572
  %574 = bitcast i32 %573 to float
  %575 = fmul fast float %574, %570
  %576 = call float @dx.op.unary.f32(i32 7, float %575)  ; Saturate(value)
  br label %577

; <label>:577                                     ; preds = %531, %525
  %578 = phi float [ %576, %531 ], [ %526, %525 ]
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = and i32 %580, 128
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %599, label %583

; <label>:583                                     ; preds = %577
  %584 = add i32 %71, 148
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = add i32 %586, 0
  %588 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %587, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %589 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %588, %dx.types.Handle %97, float %412, float %413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %590 = extractvalue %dx.types.ResRet.f32 %589, 0
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = and i32 %592, 524288
  %594 = icmp ne i32 %593, 0
  %595 = fcmp fast ogt float %590, 0x3FE0101020000000
  %596 = select i1 %595, float 1.000000e+00, float 0.000000e+00
  %597 = select i1 %594, float %596, float %590
  %598 = fmul fast float %597, %578
  br label %599

; <label>:599                                     ; preds = %583, %577
  %600 = phi float [ %598, %583 ], [ %578, %577 ]
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = and i32 %602, 16
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %803, label %605

; <label>:605                                     ; preds = %599
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = add i32 %71, 136
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = add i32 %610, 0
  %612 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %611, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %613 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %612, %dx.types.Handle %96, float %412, float %413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = extractvalue %dx.types.ResRet.f32 %613, 1
  %616 = extractvalue %dx.types.ResRet.f32 %613, 2
  %617 = extractvalue %dx.types.ResRet.f32 %613, 3
  %618 = and i32 %607, 255
  %619 = uitofp i32 %618 to float
  %620 = lshr i32 %607, 8
  %621 = and i32 %620, 255
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %617, %619
  %624 = fadd fast float %623, %622
  %625 = fmul fast float %624, 0x3F70101000000000
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = and i32 %627, 512
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %638, label %630

; <label>:630                                     ; preds = %605
  %631 = add i32 %71, 156
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = add i32 %633, 0
  %635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %634, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %636 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %635, %dx.types.Handle %97, float %412, float %413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %637 = extractvalue %dx.types.ResRet.f32 %636, 0
  br label %638

; <label>:638                                     ; preds = %630, %605
  %639 = phi float [ %637, %630 ], [ 1.000000e+00, %605 ]
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.i32 %640, 0
  %642 = and i32 %641, 33554432
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %750, label %644

; <label>:644                                     ; preds = %638
  %645 = add i32 %71, 80
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = and i32 %647, 65535
  %649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %648)  ; LegacyF16ToF32(value)
  %650 = lshr i32 %647, 16
  %651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %650)  ; LegacyF16ToF32(value)
  %652 = add i32 %71, 84
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = and i32 %654, 65535
  %656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %655)  ; LegacyF16ToF32(value)
  %657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.i32 %657, 0
  %659 = lshr i32 %658, 24
  %660 = uitofp i32 %659 to float
  %661 = fmul fast float %660, 0x3F70101020000000
  %662 = and i32 %658, 255
  %663 = uitofp i32 %662 to float
  %664 = fmul fast float %663, 0x3F70101020000000
  %665 = lshr i32 %658, 8
  %666 = and i32 %665, 255
  %667 = uitofp i32 %666 to float
  %668 = fmul fast float %667, 0x3F70101020000000
  %669 = lshr i32 %658, 16
  %670 = and i32 %669, 255
  %671 = uitofp i32 %670 to float
  %672 = fmul fast float %671, 0x3F70101020000000
  %673 = add i32 %71, 76
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %673, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = lshr i32 %675, 24
  %677 = uitofp i32 %676 to float
  %678 = fmul fast float %677, 0x3F70101020000000
  %679 = and i32 %675, 255
  %680 = uitofp i32 %679 to float
  %681 = fmul fast float %680, 0x3F70101020000000
  %682 = lshr i32 %675, 8
  %683 = and i32 %682, 255
  %684 = uitofp i32 %683 to float
  %685 = fmul fast float %684, 0x3F70101020000000
  %686 = lshr i32 %675, 16
  %687 = and i32 %686, 255
  %688 = uitofp i32 %687 to float
  %689 = fmul fast float %688, 0x3F70101020000000
  %690 = bitcast float %614 to i32
  %691 = ashr i32 %690, 1
  %692 = sub nsw i32 1597463174, %691
  %693 = bitcast i32 %692 to float
  %694 = fmul fast float %614, 5.000000e-01
  %695 = fmul fast float %693, %693
  %696 = fmul fast float %695, %694
  %697 = fsub fast float 1.500000e+00, %696
  %698 = fmul fast float %693, %614
  %699 = fmul fast float %698, %697
  %700 = bitcast float %615 to i32
  %701 = ashr i32 %700, 1
  %702 = sub nsw i32 1597463174, %701
  %703 = bitcast i32 %702 to float
  %704 = fmul fast float %615, 5.000000e-01
  %705 = fmul fast float %703, %703
  %706 = fmul fast float %705, %704
  %707 = fsub fast float 1.500000e+00, %706
  %708 = fmul fast float %703, %615
  %709 = fmul fast float %708, %707
  %710 = bitcast float %616 to i32
  %711 = ashr i32 %710, 1
  %712 = sub nsw i32 1597463174, %711
  %713 = bitcast i32 %712 to float
  %714 = fmul fast float %616, 5.000000e-01
  %715 = fmul fast float %713, %713
  %716 = fmul fast float %715, %714
  %717 = fsub fast float 1.500000e+00, %716
  %718 = fmul fast float %713, %616
  %719 = fmul fast float %718, %717
  %720 = fsub fast float %699, %681
  %721 = fsub fast float %709, %685
  %722 = fsub fast float %719, %689
  %723 = fmul fast float %720, %649
  %724 = fmul fast float %721, %651
  %725 = fmul fast float %722, %656
  %726 = fadd fast float %723, %664
  %727 = fadd fast float %724, %668
  %728 = fadd fast float %725, %672
  %729 = call float @dx.op.unary.f32(i32 7, float %726)  ; Saturate(value)
  %730 = call float @dx.op.unary.f32(i32 7, float %727)  ; Saturate(value)
  %731 = call float @dx.op.unary.f32(i32 7, float %728)  ; Saturate(value)
  %732 = fmul fast float %729, %729
  %733 = fmul fast float %730, %730
  %734 = fmul fast float %731, %731
  %735 = fsub fast float %732, %614
  %736 = fsub fast float %733, %615
  %737 = fsub fast float %734, %616
  %738 = fmul fast float %735, %639
  %739 = fmul fast float %736, %639
  %740 = fmul fast float %737, %639
  %741 = fadd fast float %738, %614
  %742 = fadd fast float %739, %615
  %743 = fadd fast float %740, %616
  %744 = fadd fast float %661, %625
  %745 = fsub fast float %744, %678
  %746 = call float @dx.op.unary.f32(i32 7, float %745)  ; Saturate(value)
  %747 = fsub fast float %746, %625
  %748 = fmul fast float %747, %639
  %749 = fadd fast float %748, %625
  br label %803

; <label>:750                                     ; preds = %638
  %751 = and i32 %641, 134217728
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %787, label %753

; <label>:753                                     ; preds = %750
  %754 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %755 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %756 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %757 = fadd fast float %754, -5.000000e-01
  %758 = fadd fast float %755, -5.000000e-01
  %759 = fadd fast float %756, -5.000000e-01
  %760 = fmul fast float %757, %639
  %761 = fmul fast float %758, %639
  %762 = fmul fast float %759, %639
  %763 = fadd fast float %760, 5.000000e-01
  %764 = fadd fast float %761, 5.000000e-01
  %765 = fadd fast float %762, 5.000000e-01
  %766 = call float @dx.op.unary.f32(i32 24, float %614)  ; Sqrt(value)
  %767 = call float @dx.op.unary.f32(i32 24, float %615)  ; Sqrt(value)
  %768 = call float @dx.op.unary.f32(i32 24, float %616)  ; Sqrt(value)
  %769 = fmul fast float %763, 2.000000e+00
  %770 = fsub fast float 1.000000e+00, %769
  %771 = fmul fast float %770, %766
  %772 = fadd fast float %771, %769
  %773 = fmul fast float %772, %766
  %774 = fmul fast float %764, 2.000000e+00
  %775 = fsub fast float 1.000000e+00, %774
  %776 = fmul fast float %775, %767
  %777 = fadd fast float %776, %774
  %778 = fmul fast float %777, %767
  %779 = fmul fast float %765, 2.000000e+00
  %780 = fsub fast float 1.000000e+00, %779
  %781 = fmul fast float %780, %768
  %782 = fadd fast float %781, %779
  %783 = fmul fast float %782, %768
  %784 = fmul fast float %773, %773
  %785 = fmul fast float %778, %778
  %786 = fmul fast float %783, %783
  br label %803

; <label>:787                                     ; preds = %750
  %788 = fmul fast float %272, %272
  %789 = fmul fast float %276, %276
  %790 = fmul fast float %280, %280
  %791 = fadd fast float %788, -1.000000e+00
  %792 = fadd fast float %789, -1.000000e+00
  %793 = fadd fast float %790, -1.000000e+00
  %794 = fmul fast float %639, %791
  %795 = fmul fast float %639, %792
  %796 = fmul fast float %639, %793
  %797 = fadd fast float %794, 1.000000e+00
  %798 = fadd fast float %795, 1.000000e+00
  %799 = fadd fast float %796, 1.000000e+00
  %800 = fmul fast float %797, %614
  %801 = fmul fast float %798, %615
  %802 = fmul fast float %799, %616
  br label %803

; <label>:803                                     ; preds = %787, %753, %644, %599
  %804 = phi float [ %749, %644 ], [ %625, %753 ], [ %625, %787 ], [ 0x3FA23C0BE0000000, %599 ]
  %805 = phi float [ %741, %644 ], [ %784, %753 ], [ %800, %787 ], [ 1.000000e+00, %599 ]
  %806 = phi float [ %742, %644 ], [ %785, %753 ], [ %801, %787 ], [ 1.000000e+00, %599 ]
  %807 = phi float [ %743, %644 ], [ %786, %753 ], [ %802, %787 ], [ 1.000000e+00, %599 ]
  %808 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.i32 %808, 1
  %810 = and i32 %809, 1
  %811 = icmp ne i32 %810, 0
  %812 = add i32 %71, 132
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = and i32 %814, 32
  %816 = icmp ne i32 %815, 0
  %817 = and i1 %811, %816
  %818 = select i1 %817, float 1.000000e+00, float %805
  %819 = select i1 %817, float 0x3FD3333340000000, float %806
  %820 = select i1 %817, float 0x3FD3333340000000, float %807
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = and i32 %822, 32
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %897, label %825

; <label>:825                                     ; preds = %803
  %826 = add i32 %71, 44
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %826, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = add i32 %71, 140
  %830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.i32 %830, 0
  %832 = add i32 %831, 0
  %833 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %832, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %834 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %833, %dx.types.Handle %96, float %412, float %413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %835 = extractvalue %dx.types.ResRet.f32 %834, 0
  %836 = extractvalue %dx.types.ResRet.f32 %834, 1
  %837 = extractvalue %dx.types.ResRet.f32 %834, 2
  %838 = extractvalue %dx.types.ResRet.f32 %834, 3
  %839 = and i32 %828, 255
  %840 = uitofp i32 %839 to float
  %841 = lshr i32 %828, 8
  %842 = and i32 %841, 255
  %843 = uitofp i32 %842 to float
  %844 = lshr i32 %828, 16
  %845 = and i32 %844, 255
  %846 = uitofp i32 %845 to float
  %847 = fmul fast float %846, 0x3F70101000000000
  %848 = fmul fast float %835, %840
  %849 = fadd fast float %848, %843
  %850 = fmul fast float %849, 0x3F70101000000000
  %851 = fadd fast float %836, -5.000000e-01
  %852 = fadd fast float %838, -5.000000e-01
  %853 = fmul fast float %851, %847
  %854 = fmul fast float %852, %847
  %855 = fadd fast float %853, 5.000000e-01
  %856 = fadd fast float %854, 5.000000e-01
  %857 = fmul fast float %855, 2.000000e+00
  %858 = fadd fast float %857, -1.000000e+00
  %859 = fmul fast float %856, 2.000000e+00
  %860 = fadd fast float %859, -1.000000e+00
  %861 = fadd fast float %858, %860
  %862 = fmul fast float %861, 5.000000e-01
  %863 = fsub fast float %858, %860
  %864 = fmul fast float %863, 5.000000e-01
  %865 = call float @dx.op.unary.f32(i32 6, float %862)  ; FAbs(value)
  %866 = fsub fast float 1.000000e+00, %865
  %867 = call float @dx.op.unary.f32(i32 6, float %864)  ; FAbs(value)
  %868 = fsub fast float %866, %867
  %869 = call float @dx.op.dot3.f32(i32 55, float %862, float %864, float %868, float %862, float %864, float %868)  ; Dot3(ax,ay,az,bx,by,bz)
  %870 = call float @dx.op.unary.f32(i32 25, float %869)  ; Rsqrt(value)
  %871 = fmul fast float %862, %870
  %872 = fmul fast float %864, %870
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = and i32 %874, 67108864
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %893, label %877

; <label>:877                                     ; preds = %825
  %878 = add i32 %71, 88
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = and i32 %880, 65535
  %882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %881)  ; LegacyF16ToF32(value)
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = and i32 %884, 65535
  %886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %885)  ; LegacyF16ToF32(value)
  %887 = lshr i32 %880, 16
  %888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %887)  ; LegacyF16ToF32(value)
  %889 = fsub fast float %850, %888
  %890 = fmul fast float %889, %882
  %891 = fadd fast float %890, %886
  %892 = call float @dx.op.unary.f32(i32 7, float %891)  ; Saturate(value)
  br label %893

; <label>:893                                     ; preds = %877, %825
  %894 = phi float [ %892, %877 ], [ %850, %825 ]
  %895 = call float @dx.op.dot2.f32(i32 54, float %871, float %872, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %896 = call float @dx.op.dot2.f32(i32 54, float %871, float %872, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %897

; <label>:897                                     ; preds = %893, %803
  %898 = phi float [ %894, %893 ], [ 0x3FD6666660000000, %803 ]
  %899 = phi float [ %895, %893 ], [ 0.000000e+00, %803 ]
  %900 = phi float [ %896, %893 ], [ 0.000000e+00, %803 ]
  %901 = phi float [ %837, %893 ], [ 1.000000e+00, %803 ]
  %902 = add i32 %71, 64
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = lshr i32 %904, 22
  %906 = shl nuw nsw i32 %905, 5
  %907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %906)  ; LegacyF16ToF32(value)
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = and i32 %909, 64
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %945, label %912

; <label>:912                                     ; preds = %897
  %913 = add i32 %71, 144
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = add i32 %915, 0
  %917 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %916, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = and i32 %919, 131072
  %921 = icmp eq i32 %920, 0
  %922 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %917, %dx.types.Handle %96, float %412, float %413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %923 = extractvalue %dx.types.ResRet.f32 %922, 0
  %924 = extractvalue %dx.types.ResRet.f32 %922, 1
  %925 = extractvalue %dx.types.ResRet.f32 %922, 2
  %926 = fmul fast float %923, %260
  %927 = fmul fast float %924, %263
  %928 = fmul fast float %925, %266
  br i1 %921, label %935, label %929

; <label>:929                                     ; preds = %912
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 0
  %932 = fmul fast float %931, %926
  %933 = fmul fast float %931, %927
  %934 = fmul fast float %931, %928
  br label %935

; <label>:935                                     ; preds = %929, %912
  %936 = phi float [ %932, %929 ], [ %926, %912 ]
  %937 = phi float [ %933, %929 ], [ %927, %912 ]
  %938 = phi float [ %934, %929 ], [ %928, %912 ]
  %939 = fmul fast float %936, %907
  %940 = select i1 %240, float %939, float %936
  %941 = call float @dx.op.dot3.f32(i32 55, float %940, float %937, float %938, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %942 = select i1 %240, float 0.000000e+00, float %936
  %943 = select i1 %240, float %941, float %937
  %944 = select i1 %240, float 0.000000e+00, float %938
  br label %945

; <label>:945                                     ; preds = %935, %897
  %946 = phi float [ %942, %935 ], [ 0.000000e+00, %897 ]
  %947 = phi float [ %943, %935 ], [ 0.000000e+00, %897 ]
  %948 = phi float [ %944, %935 ], [ 0.000000e+00, %897 ]
  %949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.i32 %949, 0
  %951 = and i32 %950, 1024
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %983, label %953

; <label>:953                                     ; preds = %945
  %954 = add i32 %71, 56
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = and i32 %956, 255
  %958 = uitofp i32 %957 to float
  %959 = fmul fast float %958, 0x3F70101020000000
  %960 = lshr i32 %956, 8
  %961 = and i32 %960, 255
  %962 = uitofp i32 %961 to float
  %963 = fmul fast float %962, 0x3F70101020000000
  %964 = lshr i32 %956, 16
  %965 = and i32 %964, 255
  %966 = uitofp i32 %965 to float
  %967 = fmul fast float %966, 0x3F70101020000000
  %968 = fmul fast float %959, %959
  %969 = fmul fast float %963, %963
  %970 = fmul fast float %967, %967
  %971 = add i32 %71, 160
  %972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %973 = extractvalue %dx.types.ResRet.i32 %972, 0
  %974 = add i32 %973, 0
  %975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %974, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %976 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %975, %dx.types.Handle %97, float %412, float %413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %977 = extractvalue %dx.types.ResRet.f32 %976, 0
  %978 = extractvalue %dx.types.ResRet.f32 %976, 1
  %979 = extractvalue %dx.types.ResRet.f32 %976, 2
  %980 = fmul fast float %968, %977
  %981 = fmul fast float %969, %978
  %982 = fmul fast float %970, %979
  br label %983

; <label>:983                                     ; preds = %953, %945
  %984 = phi float [ %980, %953 ], [ 0.000000e+00, %945 ]
  %985 = phi float [ %981, %953 ], [ 0.000000e+00, %945 ]
  %986 = phi float [ %982, %953 ], [ 0.000000e+00, %945 ]
  %987 = fcmp fast ogt float %984, 0.000000e+00
  %988 = fcmp fast ogt float %985, 0.000000e+00
  %989 = fcmp fast ogt float %986, 0.000000e+00
  %990 = call float @dx.op.unary.f32(i32 23, float %984)  ; Log(value)
  %991 = call float @dx.op.unary.f32(i32 23, float %985)  ; Log(value)
  %992 = call float @dx.op.unary.f32(i32 23, float %986)  ; Log(value)
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = lshr i32 %994, 7
  %996 = and i32 %995, 32752
  %997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %996)  ; LegacyF16ToF32(value)
  %998 = fmul fast float %990, 0xBFE62E4300000000
  %999 = fmul fast float %998, %997
  %1000 = fmul fast float %991, 0xBFE62E4300000000
  %1001 = fmul fast float %1000, %997
  %1002 = fmul fast float %992, 0xBFE62E4300000000
  %1003 = fmul fast float %1002, %997
  %1004 = select i1 %987, float %999, float 1.270000e+02
  %1005 = select i1 %988, float %1001, float 1.270000e+02
  %1006 = select i1 %989, float %1003, float 1.270000e+02
  %1007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.i32 %1007, 0
  %1009 = and i32 %1008, 10240
  %1010 = icmp eq i32 %1009, 0
  br i1 %1010, label %1055, label %1011

; <label>:1011                                    ; preds = %983
  %1012 = add i32 %71, 164
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %1012, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = add i32 %1014, 0
  %1016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1015, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1017 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1016, %dx.types.Handle %97, float %412, float %413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1018 = extractvalue %dx.types.ResRet.f32 %1017, 1
  %1019 = extractvalue %dx.types.ResRet.f32 %1017, 3
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = and i32 %1021, 1048576
  %1023 = icmp ne i32 %1022, 0
  %1024 = and i32 %1021, 8192
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1041, label %1026

; <label>:1026                                    ; preds = %1011
  %1027 = extractvalue %dx.types.ResRet.f32 %1017, 2
  %1028 = select i1 %1023, float %1027, float %1018
  %1029 = extractvalue %dx.types.ResRet.f32 %1017, 0
  %1030 = select i1 %1023, float %1029, float %1018
  %1031 = add i32 %71, 48
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = lshr i32 %1033, 16
  %1035 = and i32 %1034, 255
  %1036 = uitofp i32 %1035 to float
  %1037 = fmul fast float %1036, 0x3F80101020000000
  %1038 = fmul fast float %1037, %1030
  %1039 = fmul fast float %1037, %1018
  %1040 = fmul fast float %1037, %1028
  br label %1041

; <label>:1041                                    ; preds = %1026, %1011
  %1042 = phi float [ %1038, %1026 ], [ 0.000000e+00, %1011 ]
  %1043 = phi float [ %1039, %1026 ], [ 0.000000e+00, %1011 ]
  %1044 = phi float [ %1040, %1026 ], [ 0.000000e+00, %1011 ]
  %1045 = and i32 %1021, 2048
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1055, label %1047

; <label>:1047                                    ; preds = %1041
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = shl i32 %1049, 4
  %1051 = and i32 %1050, 32752
  %1052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1051)  ; LegacyF16ToF32(value)
  %1053 = fmul fast float %1052, %1019
  %1054 = call float @dx.op.binary.f32(i32 35, float %1053, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1055

; <label>:1055                                    ; preds = %1047, %1041, %983
  %1056 = phi float [ %1042, %1047 ], [ %1042, %1041 ], [ 0.000000e+00, %983 ]
  %1057 = phi float [ %1043, %1047 ], [ %1043, %1041 ], [ 0.000000e+00, %983 ]
  %1058 = phi float [ %1044, %1047 ], [ %1044, %1041 ], [ 0.000000e+00, %983 ]
  %1059 = phi float [ %1054, %1047 ], [ 0x3F70101020000000, %1041 ], [ 0x3F70101020000000, %983 ]
  %1060 = add i32 %71, 48
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = and i32 %1062, 255
  %1064 = uitofp i32 %1063 to float
  %1065 = lshr i32 %1062, 8
  %1066 = and i32 %1065, 255
  %1067 = uitofp i32 %1066 to float
  %1068 = call float @dx.op.dot3.f32(i32 55, float %818, float %819, float %820, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1069 = fmul fast float %1067, %1068
  %1070 = fadd fast float %1069, %1064
  %1071 = fmul fast float %1070, 0x3F70101020000000
  %1072 = call float @dx.op.unary.f32(i32 7, float %1071)  ; Saturate(value)
  br label %1073

; <label>:1073                                    ; preds = %1055, %311
  %1074 = phi float [ 0.000000e+00, %311 ], [ %899, %1055 ]
  %1075 = phi float [ 0.000000e+00, %311 ], [ %900, %1055 ]
  %1076 = phi float [ 0.000000e+00, %311 ], [ %1004, %1055 ]
  %1077 = phi float [ 0.000000e+00, %311 ], [ %1005, %1055 ]
  %1078 = phi float [ 0.000000e+00, %311 ], [ %1006, %1055 ]
  %1079 = phi float [ 0.000000e+00, %311 ], [ %818, %1055 ]
  %1080 = phi float [ 0.000000e+00, %311 ], [ %819, %1055 ]
  %1081 = phi float [ 0.000000e+00, %311 ], [ %820, %1055 ]
  %1082 = phi float [ 0.000000e+00, %311 ], [ %946, %1055 ]
  %1083 = phi float [ 0.000000e+00, %311 ], [ %947, %1055 ]
  %1084 = phi float [ 0.000000e+00, %311 ], [ %948, %1055 ]
  %1085 = phi float [ 0.000000e+00, %311 ], [ %1056, %1055 ]
  %1086 = phi float [ 0.000000e+00, %311 ], [ %1057, %1055 ]
  %1087 = phi float [ 0.000000e+00, %311 ], [ %1058, %1055 ]
  %1088 = phi float [ 0.000000e+00, %311 ], [ %804, %1055 ]
  %1089 = phi float [ 0.000000e+00, %311 ], [ %600, %1055 ]
  %1090 = phi float [ 0.000000e+00, %311 ], [ %898, %1055 ]
  %1091 = phi float [ 0.000000e+00, %311 ], [ %901, %1055 ]
  %1092 = phi float [ 0.000000e+00, %311 ], [ %1059, %1055 ]
  %1093 = phi float [ 0.000000e+00, %311 ], [ %1072, %1055 ]
  %1094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1095 = extractvalue %dx.types.CBufRet.f32 %1094, 0
  %1096 = call float @dx.op.dot2.f32(i32 54, float %1074, float %1075, float %1074, float %1075)  ; Dot2(ax,ay,bx,by)
  %1097 = fmul fast float %1096, 0x3FE3333340000000
  %1098 = fsub fast float 1.000000e+00, %1097
  %1099 = call float @dx.op.dot3.f32(i32 55, float %1074, float %1075, float %1098, float %1074, float %1075, float %1098)  ; Dot3(ax,ay,az,bx,by,bz)
  %1100 = call float @dx.op.unary.f32(i32 25, float %1099)  ; Rsqrt(value)
  %1101 = fmul fast float %1100, %1074
  %1102 = fmul fast float %1100, %1075
  %1103 = fmul fast float %1098, %1100
  %1104 = fmul fast float %1103, %76
  %1105 = fmul fast float %1103, %77
  %1106 = fmul fast float %1103, %78
  %1107 = fmul fast float %1101, %72
  %1108 = fmul fast float %1101, %73
  %1109 = fmul fast float %1101, %74
  %1110 = fadd fast float %1104, %1107
  %1111 = fadd fast float %1105, %1108
  %1112 = fadd fast float %1106, %1109
  %1113 = fmul fast float %1102, %111
  %1114 = fmul fast float %1102, %112
  %1115 = fmul fast float %1102, %113
  %1116 = fadd fast float %1110, %1113
  %1117 = fadd fast float %1111, %1114
  %1118 = fadd fast float %1112, %1115
  %1119 = call float @dx.op.dot3.f32(i32 55, float %1116, float %1117, float %1118, float %1116, float %1117, float %1118)  ; Dot3(ax,ay,az,bx,by,bz)
  %1120 = call float @dx.op.unary.f32(i32 25, float %1119)  ; Rsqrt(value)
  %1121 = fmul fast float %1116, %1120
  %1122 = fmul fast float %1117, %1120
  %1123 = fmul fast float %1118, %1120
  %1124 = fadd fast float %1088, 0xBFB99999A0000000
  %1125 = call float @dx.op.unary.f32(i32 7, float %1124)  ; Saturate(value)
  %1126 = fmul fast float %1125, 0x3FF1C71C80000000
  %1127 = call float @dx.op.binary.f32(i32 36, float %1088, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1128 = fsub fast float 1.000000e+00, %1126
  %1129 = call float @dx.op.unary.f32(i32 7, float %1128)  ; Saturate(value)
  %1130 = fmul fast float %1129, %1079
  %1131 = fmul fast float %1129, %1080
  %1132 = fmul fast float %1129, %1081
  %1133 = call float @dx.op.unary.f32(i32 7, float %1130)  ; Saturate(value)
  %1134 = call float @dx.op.unary.f32(i32 7, float %1131)  ; Saturate(value)
  %1135 = call float @dx.op.unary.f32(i32 7, float %1132)  ; Saturate(value)
  %1136 = fmul fast float %1126, %1079
  %1137 = fmul fast float %1126, %1080
  %1138 = fmul fast float %1126, %1081
  %1139 = fadd fast float %1136, %1127
  %1140 = fadd fast float %1137, %1127
  %1141 = fadd fast float %1138, %1127
  %1142 = call float @dx.op.unary.f32(i32 7, float %1139)  ; Saturate(value)
  %1143 = call float @dx.op.unary.f32(i32 7, float %1140)  ; Saturate(value)
  %1144 = call float @dx.op.unary.f32(i32 7, float %1141)  ; Saturate(value)
  %1145 = call float @dx.op.unary.f32(i32 7, float %1090)  ; Saturate(value)
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = and i32 %1147, 1
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1164, label %1150

; <label>:1150                                    ; preds = %1073
  %1151 = call float @dx.op.binary.f32(i32 35, float %1134, float %1135)  ; FMax(a,b)
  %1152 = call float @dx.op.binary.f32(i32 35, float %1133, float %1151)  ; FMax(a,b)
  %1153 = fcmp fast ogt float %1152, 0.000000e+00
  %1154 = bitcast float %1152 to i32
  %1155 = sub nsw i32 2129859010, %1154
  %1156 = bitcast i32 %1155 to float
  %1157 = select i1 %1153, float %1156, float 0.000000e+00
  %1158 = fmul fast float %1133, %1085
  %1159 = fmul fast float %1134, %1086
  %1160 = fmul fast float %1135, %1087
  %1161 = fmul fast float %1158, %1157
  %1162 = fmul fast float %1159, %1157
  %1163 = fmul fast float %1160, %1157
  br label %1164

; <label>:1164                                    ; preds = %1150, %1073
  %1165 = phi float [ %1161, %1150 ], [ %1085, %1073 ]
  %1166 = phi float [ %1162, %1150 ], [ %1086, %1073 ]
  %1167 = phi float [ %1163, %1150 ], [ %1087, %1073 ]
  %1168 = call float @dx.op.binary.f32(i32 36, float %1076, float 1.270000e+02)  ; FMin(a,b)
  %1169 = call float @dx.op.binary.f32(i32 36, float %1077, float 1.270000e+02)  ; FMin(a,b)
  %1170 = call float @dx.op.binary.f32(i32 36, float %1078, float 1.270000e+02)  ; FMin(a,b)
  %1171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.i32 %1171, 3
  %1173 = and i32 %1172, 8
  %1174 = icmp ne i32 %1173, 0
  %1175 = call float @dx.op.binary.f32(i32 35, float %1133, float %1079)  ; FMax(a,b)
  %1176 = call float @dx.op.binary.f32(i32 35, float %1134, float %1079)  ; FMax(a,b)
  %1177 = call float @dx.op.binary.f32(i32 35, float %1135, float %1079)  ; FMax(a,b)
  %1178 = call float @dx.op.dot3.f32(i32 55, float %1133, float %1134, float %1135, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1179 = select i1 %240, float %1079, float %1133
  %1180 = select i1 %240, float %1178, float %1134
  %1181 = select i1 %240, float 1.000000e+00, float %1135
  %1182 = select i1 %1174, float %1175, float %1179
  %1183 = select i1 %1174, float %1176, float %1180
  %1184 = select i1 %1174, float %1177, float %1181
  %1185 = call float @dx.op.dot3.f32(i32 55, float %1165, float %1166, float %1167, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1186 = select i1 %240, float %1185, float %1165
  %1187 = select i1 %240, float %1185, float %1166
  %1188 = select i1 %240, float %1185, float %1167
  %1189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1190 = extractvalue %dx.types.CBufRet.f32 %1189, 0
  %1191 = extractvalue %dx.types.CBufRet.f32 %1189, 1
  %1192 = extractvalue %dx.types.CBufRet.f32 %1189, 2
  %1193 = fadd fast float %1190, %147
  %1194 = fadd fast float %1191, %148
  %1195 = fadd fast float %1192, %149
  %1196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1196, 0
  %1198 = extractvalue %dx.types.CBufRet.f32 %1196, 1
  %1199 = fsub fast float %1193, %1197
  %1200 = fsub fast float %1194, %1198
  %1201 = fmul fast float %1199, %1199
  %1202 = fmul fast float %1200, %1200
  %1203 = fadd fast float %1201, %1202
  %1204 = call float @dx.op.unary.f32(i32 24, float %1203)  ; Sqrt(value)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1196, 2
  %1206 = fcmp fast olt float %1204, %1205
  br i1 %1206, label %1207, label %1274

; <label>:1207                                    ; preds = %1164
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 0
  %1210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1211 = extractvalue %dx.types.CBufRet.f32 %1210, 0
  %1212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1213 = extractvalue %dx.types.CBufRet.f32 %1212, 0
  %1214 = extractvalue %dx.types.CBufRet.f32 %1208, 1
  %1215 = extractvalue %dx.types.CBufRet.f32 %1210, 1
  %1216 = extractvalue %dx.types.CBufRet.f32 %1212, 1
  %1217 = extractvalue %dx.types.CBufRet.f32 %1208, 3
  %1218 = extractvalue %dx.types.CBufRet.f32 %1210, 3
  %1219 = extractvalue %dx.types.CBufRet.f32 %1212, 3
  %1220 = fadd fast float %1217, %1193
  %1221 = fadd fast float %1218, %1194
  %1222 = fadd fast float %1219, %1195
  %1223 = fmul fast float %1220, %1209
  %1224 = call float @dx.op.tertiary.f32(i32 46, float %1221, float %1211, float %1223)  ; FMad(a,b,c)
  %1225 = call float @dx.op.tertiary.f32(i32 46, float %1222, float %1213, float %1224)  ; FMad(a,b,c)
  %1226 = fmul fast float %1220, %1214
  %1227 = call float @dx.op.tertiary.f32(i32 46, float %1221, float %1215, float %1226)  ; FMad(a,b,c)
  %1228 = call float @dx.op.tertiary.f32(i32 46, float %1222, float %1216, float %1227)  ; FMad(a,b,c)
  %1229 = fsub fast float %1225, %1217
  %1230 = fsub fast float %1228, %1218
  %1231 = fsub fast float %1229, %1197
  %1232 = fadd fast float %1231, %1205
  %1233 = fsub fast float %1230, %1198
  %1234 = fadd fast float %1233, %1205
  %1235 = extractvalue %dx.types.CBufRet.f32 %1196, 3
  %1236 = fmul fast float %1232, %1235
  %1237 = fmul fast float %1234, %1235
  %1238 = call float @dx.op.unary.f32(i32 7, float %1236)  ; Saturate(value)
  %1239 = call float @dx.op.unary.f32(i32 7, float %1237)  ; Saturate(value)
  %1240 = fsub fast float 1.000000e+00, %1238
  %1241 = fsub fast float 1.000000e+00, %1239
  %1242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %64, float %1240, float %1241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  %1244 = fcmp fast ugt float %1243, 0.000000e+00
  br i1 %1244, label %1245, label %1548

; <label>:1245                                    ; preds = %1207
  %1246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.f32 %1246, 2
  %1248 = fmul fast float %1247, %1243
  %1249 = extractvalue %dx.types.CBufRet.f32 %1246, 3
  %1250 = fadd fast float %1249, %1248
  %1251 = extractvalue %dx.types.CBufRet.f32 %1212, 2
  %1252 = fadd fast float %1250, %1219
  %1253 = fmul fast float %1225, %1213
  %1254 = call float @dx.op.tertiary.f32(i32 46, float %1228, float %1216, float %1253)  ; FMad(a,b,c)
  %1255 = call float @dx.op.tertiary.f32(i32 46, float %1252, float %1251, float %1254)  ; FMad(a,b,c)
  %1256 = fsub fast float %1255, %1219
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 2
  %1259 = fsub fast float %1256, %1258
  %1260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %64, float %1240, float %1241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1261 = extractvalue %dx.types.ResRet.f32 %1260, 0
  %1262 = extractvalue %dx.types.ResRet.f32 %1260, 1
  %1263 = extractvalue %dx.types.ResRet.f32 %1260, 2
  %1264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %64, float %1240, float %1241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1265 = extractvalue %dx.types.ResRet.f32 %1264, 0
  %1266 = extractvalue %dx.types.ResRet.f32 %1264, 1
  %1267 = extractvalue %dx.types.ResRet.f32 %1264, 2
  %1268 = fadd fast float %1265, %1261
  %1269 = fmul fast float %1268, 0x3F847AE140000000
  %1270 = fadd fast float %1266, %1262
  %1271 = fmul fast float %1270, 0x3F847AE140000000
  %1272 = fadd fast float %1267, %1263
  %1273 = fmul fast float %1272, 0x3F847AE140000000
  br label %1548

; <label>:1274                                    ; preds = %1164
  %1275 = and i32 %214, 1
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1548, label %1277

; <label>:1277                                    ; preds = %1274
  %1278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1279 = extractvalue %dx.types.CBufRet.f32 %1278, 0
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 0
  %1282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1283 = extractvalue %dx.types.CBufRet.f32 %1282, 0
  %1284 = extractvalue %dx.types.CBufRet.f32 %1278, 1
  %1285 = extractvalue %dx.types.CBufRet.f32 %1280, 1
  %1286 = extractvalue %dx.types.CBufRet.f32 %1282, 1
  %1287 = extractvalue %dx.types.CBufRet.f32 %1278, 3
  %1288 = extractvalue %dx.types.CBufRet.f32 %1280, 3
  %1289 = extractvalue %dx.types.CBufRet.f32 %1282, 3
  %1290 = fadd fast float %1287, %1193
  %1291 = fadd fast float %1288, %1194
  %1292 = fadd fast float %1289, %1195
  %1293 = fmul fast float %1290, %1279
  %1294 = call float @dx.op.tertiary.f32(i32 46, float %1291, float %1281, float %1293)  ; FMad(a,b,c)
  %1295 = call float @dx.op.tertiary.f32(i32 46, float %1292, float %1283, float %1294)  ; FMad(a,b,c)
  %1296 = fmul fast float %1290, %1284
  %1297 = call float @dx.op.tertiary.f32(i32 46, float %1291, float %1285, float %1296)  ; FMad(a,b,c)
  %1298 = call float @dx.op.tertiary.f32(i32 46, float %1292, float %1286, float %1297)  ; FMad(a,b,c)
  %1299 = fsub fast float %1295, %1287
  %1300 = fsub fast float %1298, %1288
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.CBufRet.f32 %1301, 1
  %1304 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1305 = extractvalue %dx.types.CBufRet.f32 %1301, 3
  %1306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.f32 %1306, 3
  %1308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1309 = extractvalue %dx.types.CBufRet.i32 %1308, 0
  %1310 = extractvalue %dx.types.CBufRet.i32 %1308, 1
  %1311 = udiv i32 %1310, %1309
  %1312 = fsub fast float %1299, %1302
  %1313 = fsub fast float %1300, %1303
  %1314 = call float @dx.op.binary.f32(i32 35, float %1312, float 0.000000e+00)  ; FMax(a,b)
  %1315 = call float @dx.op.binary.f32(i32 35, float %1313, float 0.000000e+00)  ; FMax(a,b)
  %1316 = call float @dx.op.binary.f32(i32 36, float %1314, float %1304)  ; FMin(a,b)
  %1317 = call float @dx.op.binary.f32(i32 36, float %1315, float %1305)  ; FMin(a,b)
  %1318 = add i32 %1309, -1
  %1319 = add i32 %1311, -1
  %1320 = fmul fast float %1316, %1307
  %1321 = fmul fast float %1317, %1307
  %1322 = fptoui float %1320 to i32
  %1323 = fptoui float %1321 to i32
  %1324 = call i32 @dx.op.binary.i32(i32 40, i32 %1322, i32 %1318)  ; UMin(a,b)
  %1325 = call i32 @dx.op.binary.i32(i32 40, i32 %1323, i32 %1319)  ; UMin(a,b)
  %1326 = mul i32 %1325, %1309
  %1327 = add i32 %1326, %1324
  %1328 = shl i32 %1327, 2
  %1329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1328, i32 undef)  ; BufferLoad(srv,index,wot)
  %1330 = extractvalue %dx.types.ResRet.i32 %1329, 0
  %1331 = icmp eq i32 %1330, -1
  br i1 %1331, label %1548, label %1332

; <label>:1332                                    ; preds = %1277
  %1333 = mul i32 %1330, 148
  %1334 = add i32 %1333, 4
  %1335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1334, i32 undef)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.f32 %1335, 0
  %1337 = add i32 %1333, 8
  %1338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1339 = extractvalue %dx.types.ResRet.f32 %1338, 0
  %1340 = add i32 %1333, 36
  %1341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.f32 %1341, 0
  %1343 = add i32 %1333, 60
  %1344 = add i32 %1333, 92
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = add i32 %1333, 116
  %1348 = fsub fast float %1299, %1336
  %1349 = fsub fast float %1300, %1339
  %1350 = fmul fast float %1307, %1348
  %1351 = fmul fast float %1307, %1349
  %1352 = call float @dx.op.unary.f32(i32 7, float %1350)  ; Saturate(value)
  %1353 = call float @dx.op.unary.f32(i32 7, float %1351)  ; Saturate(value)
  %1354 = fsub fast float 1.000000e+00, %1353
  %1355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1356 = extractvalue %dx.types.CBufRet.f32 %1355, 2
  %1357 = call float @dx.op.unary.f32(i32 83, float %1352)  ; DerivCoarseX(value)
  %1358 = call float @dx.op.unary.f32(i32 83, float %1354)  ; DerivCoarseX(value)
  %1359 = call float @dx.op.unary.f32(i32 84, float %1352)  ; DerivCoarseY(value)
  %1360 = call float @dx.op.unary.f32(i32 84, float %1354)  ; DerivCoarseY(value)
  %1361 = fmul fast float %1357, %1356
  %1362 = fmul fast float %1358, %1356
  %1363 = fmul fast float %1359, %1356
  %1364 = fmul fast float %1360, %1356
  %1365 = call float @dx.op.dot2.f32(i32 54, float %1363, float %1364, float %1363, float %1364)  ; Dot2(ax,ay,bx,by)
  %1366 = call float @dx.op.dot2.f32(i32 54, float %1361, float %1362, float %1361, float %1362)  ; Dot2(ax,ay,bx,by)
  %1367 = call float @dx.op.binary.f32(i32 35, float %1366, float %1365)  ; FMax(a,b)
  %1368 = call float @dx.op.unary.f32(i32 23, float %1367)  ; Log(value)
  %1369 = fmul fast float %1368, 5.000000e-01
  %1370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.f32 %1370, 1
  %1372 = fadd fast float %1371, %1369
  %1373 = call float @dx.op.binary.f32(i32 35, float %1372, float 0.000000e+00)  ; FMax(a,b)
  %1374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1375 = extractvalue %dx.types.CBufRet.f32 %1374, 3
  %1376 = fadd fast float %1375, %1373
  %1377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1378 = extractvalue %dx.types.CBufRet.f32 %1377, 3
  %1379 = fadd fast float %1376, %1378
  %1380 = add i32 %1346, 0
  %1381 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1380, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1382 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1381, i32 0)  ; GetDimensions(handle,mipLevel)
  %1383 = extractvalue %dx.types.Dimensions %1382, 0
  %1384 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1383)  ; FirstbitLo(value)
  %1385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1386 = extractvalue %dx.types.CBufRet.i32 %1385, 1
  %1387 = sub nsw i32 %1386, %1384
  %1388 = sitofp i32 %1387 to float
  %1389 = fsub fast float %1379, %1388
  %1390 = call float @dx.op.binary.f32(i32 35, float %1389, float 0.000000e+00)  ; FMax(a,b)
  %1391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1381, %dx.types.Handle %62, float %1352, float %1354, float %1342, float undef, i32 0, i32 0, i32 undef, float %1390)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1392 = extractvalue %dx.types.ResRet.f32 %1391, 0
  %1393 = fcmp ule float %1392, 0x3FE0101020000000
  %1394 = extractvalue %dx.types.CBufRet.i32 %1385, 0
  %1395 = and i32 %1394, 128
  %1396 = icmp ne i32 %1395, 0
  %1397 = and i1 %1393, %1396
  br i1 %1397, label %1548, label %1398

; <label>:1398                                    ; preds = %1332
  %1399 = add i32 %1333, 20
  %1400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1399, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.f32 %1400, 0
  %1402 = add i32 %1333, 24
  %1403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.f32 %1403, 0
  %1405 = add i32 %1333, 40
  %1406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1405, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.f32 %1406, 0
  %1408 = add i32 %1333, 96
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1411, 2
  %1413 = fmul fast float %1412, %1352
  %1414 = fmul fast float %1412, %1354
  %1415 = extractvalue %dx.types.CBufRet.f32 %1411, 3
  %1416 = fadd fast float %1413, %1415
  %1417 = fadd fast float %1414, %1415
  %1418 = add i32 %1410, 0
  %1419 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1418, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1420 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1419, i32 0)  ; GetDimensions(handle,mipLevel)
  %1421 = extractvalue %dx.types.Dimensions %1420, 0
  %1422 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1421)  ; FirstbitLo(value)
  %1423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1424 = extractvalue %dx.types.CBufRet.i32 %1423, 1
  %1425 = sub nsw i32 %1424, %1422
  %1426 = sitofp i32 %1425 to float
  %1427 = fsub fast float %1376, %1426
  %1428 = call float @dx.op.binary.f32(i32 35, float %1427, float 0.000000e+00)  ; FMax(a,b)
  %1429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1419, %dx.types.Handle %62, float %1416, float %1417, float %1407, float undef, i32 0, i32 0, i32 undef, float %1428)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1430 = extractvalue %dx.types.ResRet.f32 %1429, 0
  %1431 = fmul fast float %1430, %1401
  %1432 = fadd fast float %1431, %1404
  %1433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1434 = extractvalue %dx.types.CBufRet.f32 %1433, 0
  %1435 = extractvalue %dx.types.CBufRet.f32 %1433, 1
  %1436 = extractvalue %dx.types.CBufRet.f32 %1433, 2
  %1437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1438 = extractvalue %dx.types.CBufRet.f32 %1437, 3
  %1439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1440 = extractvalue %dx.types.CBufRet.f32 %1439, 3
  %1441 = extractvalue %dx.types.CBufRet.f32 %1433, 3
  %1442 = fadd fast float %1438, %1299
  %1443 = fadd fast float %1440, %1300
  %1444 = fadd fast float %1432, %1441
  %1445 = fmul fast float %1442, %1434
  %1446 = call float @dx.op.tertiary.f32(i32 46, float %1443, float %1435, float %1445)  ; FMad(a,b,c)
  %1447 = call float @dx.op.tertiary.f32(i32 46, float %1444, float %1436, float %1446)  ; FMad(a,b,c)
  %1448 = fsub fast float %1447, %1441
  %1449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1450 = extractvalue %dx.types.CBufRet.f32 %1449, 2
  %1451 = fsub fast float %1448, %1450
  %1452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1453 = extractvalue %dx.types.CBufRet.i32 %1452, 0
  %1454 = call i32 @dx.op.binary.i32(i32 40, i32 %1330, i32 %1453)  ; UMin(a,b)
  %1455 = mul i32 %1454, 36
  %1456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1455, i32 undef)  ; BufferLoad(srv,index,wot)
  %1457 = extractvalue %dx.types.ResRet.i32 %1456, 0
  %1458 = add i32 %1455, 4
  %1459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1460 = extractvalue %dx.types.CBufRet.f32 %1459, 0
  %1461 = fmul fast float %1460, %1352
  %1462 = fmul fast float %1460, %1354
  %1463 = extractvalue %dx.types.CBufRet.f32 %1459, 1
  %1464 = fadd fast float %1461, %1463
  %1465 = fadd fast float %1462, %1463
  %1466 = icmp eq i32 %1457, 0
  br i1 %1466, label %1535, label %1467

; <label>:1467                                    ; preds = %1398
  br label %1468

; <label>:1468                                    ; preds = %1525, %1467
  %1469 = phi float [ %1526, %1525 ], [ 0.000000e+00, %1467 ]
  %1470 = phi float [ %1527, %1525 ], [ 0.000000e+00, %1467 ]
  %1471 = phi float [ %1528, %1525 ], [ 0.000000e+00, %1467 ]
  %1472 = phi float [ %1529, %1525 ], [ 0.000000e+00, %1467 ]
  %1473 = phi float [ %1530, %1525 ], [ 0.000000e+00, %1467 ]
  %1474 = phi float [ %1531, %1525 ], [ 0.000000e+00, %1467 ]
  %1475 = phi i32 [ %1532, %1525 ], [ 0, %1467 ]
  %1476 = shl i32 %1475, 2
  %1477 = add i32 %1343, %1476
  %1478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.f32 %1478, 0
  %1480 = add i32 %1347, %1476
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = add i32 %1482, 0
  %1484 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1483, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1485 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1484, i32 0)  ; GetDimensions(handle,mipLevel)
  %1486 = extractvalue %dx.types.Dimensions %1485, 0
  %1487 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1486)  ; FirstbitLo(value)
  %1488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1489 = extractvalue %dx.types.CBufRet.i32 %1488, 1
  %1490 = sub nsw i32 %1489, %1487
  %1491 = sitofp i32 %1490 to float
  %1492 = fsub fast float %1376, %1491
  %1493 = call float @dx.op.binary.f32(i32 35, float %1492, float 0.000000e+00)  ; FMax(a,b)
  %1494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1484, %dx.types.Handle %62, float %1464, float %1465, float %1479, float undef, i32 0, i32 0, i32 undef, float %1493)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1495 = extractvalue %dx.types.ResRet.f32 %1494, 0
  %1496 = fcmp fast ogt float %1495, 0.000000e+00
  br i1 %1496, label %1497, label %1525

; <label>:1497                                    ; preds = %1468
  %1498 = add i32 %1458, %1476
  %1499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1498, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.i32 %1499, 0
  %1501 = and i32 %1500, 32767
  %1502 = mul nuw nsw i32 %1501, 928
  %1503 = add nuw nsw i32 %1502, 48
  %1504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.f32 %1504, 0
  %1506 = extractvalue %dx.types.ResRet.f32 %1504, 1
  %1507 = extractvalue %dx.types.ResRet.f32 %1504, 2
  %1508 = add nuw nsw i32 %1502, 60
  %1509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.f32 %1509, 0
  %1511 = extractvalue %dx.types.ResRet.f32 %1509, 1
  %1512 = extractvalue %dx.types.ResRet.f32 %1509, 2
  %1513 = fmul fast float %1505, %1495
  %1514 = fmul fast float %1506, %1495
  %1515 = fmul fast float %1507, %1495
  %1516 = fadd fast float %1513, %1469
  %1517 = fadd fast float %1514, %1470
  %1518 = fadd fast float %1515, %1471
  %1519 = fmul fast float %1510, %1495
  %1520 = fmul fast float %1511, %1495
  %1521 = fmul fast float %1512, %1495
  %1522 = fadd fast float %1519, %1472
  %1523 = fadd fast float %1520, %1473
  %1524 = fadd fast float %1521, %1474
  br label %1525

; <label>:1525                                    ; preds = %1497, %1468
  %1526 = phi float [ %1516, %1497 ], [ %1469, %1468 ]
  %1527 = phi float [ %1517, %1497 ], [ %1470, %1468 ]
  %1528 = phi float [ %1518, %1497 ], [ %1471, %1468 ]
  %1529 = phi float [ %1522, %1497 ], [ %1472, %1468 ]
  %1530 = phi float [ %1523, %1497 ], [ %1473, %1468 ]
  %1531 = phi float [ %1524, %1497 ], [ %1474, %1468 ]
  %1532 = add nuw i32 %1475, 1
  %1533 = icmp eq i32 %1532, %1457
  br i1 %1533, label %1534, label %1468

; <label>:1534                                    ; preds = %1525
  br label %1535

; <label>:1535                                    ; preds = %1534, %1398
  %1536 = phi float [ 0.000000e+00, %1398 ], [ %1526, %1534 ]
  %1537 = phi float [ 0.000000e+00, %1398 ], [ %1527, %1534 ]
  %1538 = phi float [ 0.000000e+00, %1398 ], [ %1528, %1534 ]
  %1539 = phi float [ 0.000000e+00, %1398 ], [ %1529, %1534 ]
  %1540 = phi float [ 0.000000e+00, %1398 ], [ %1530, %1534 ]
  %1541 = phi float [ 0.000000e+00, %1398 ], [ %1531, %1534 ]
  %1542 = fadd fast float %1539, %1536
  %1543 = fmul fast float %1542, 0x3F847AE140000000
  %1544 = fadd fast float %1540, %1537
  %1545 = fmul fast float %1544, 0x3F847AE140000000
  %1546 = fadd fast float %1541, %1538
  %1547 = fmul fast float %1546, 0x3F847AE140000000
  br label %1548

; <label>:1548                                    ; preds = %1535, %1332, %1277, %1274, %1245, %1207
  %1549 = phi float [ %1259, %1245 ], [ -1.310720e+05, %1207 ], [ %1451, %1535 ], [ -1.310720e+05, %1277 ], [ -1.310720e+05, %1332 ], [ -1.310720e+05, %1274 ]
  %1550 = phi float [ %1269, %1245 ], [ 0.000000e+00, %1207 ], [ %1543, %1535 ], [ 0.000000e+00, %1277 ], [ 0.000000e+00, %1332 ], [ 0.000000e+00, %1274 ]
  %1551 = phi float [ %1271, %1245 ], [ 0.000000e+00, %1207 ], [ %1545, %1535 ], [ 0.000000e+00, %1277 ], [ 0.000000e+00, %1332 ], [ 0.000000e+00, %1274 ]
  %1552 = phi float [ %1273, %1245 ], [ 0.000000e+00, %1207 ], [ %1547, %1535 ], [ 0.000000e+00, %1277 ], [ 0.000000e+00, %1332 ], [ 0.000000e+00, %1274 ]
  %1553 = phi i1 [ true, %1245 ], [ false, %1207 ], [ true, %1535 ], [ false, %1277 ], [ false, %1332 ], [ false, %1274 ]
  %1554 = and i32 %214, 3
  %1555 = icmp eq i32 %1554, 1
  %1556 = select i1 %1555, float 1.000000e+00, float 0.000000e+00
  %1557 = fsub fast float %1549, %149
  %1558 = call float @dx.op.unary.f32(i32 7, float %1557)  ; Saturate(value)
  %1559 = select i1 %1553, float %1558, float 1.000000e+00
  %1560 = fmul fast float %1559, %1556
  %1561 = icmp eq i32 %1554, 3
  %1562 = select i1 %1561, float 1.000000e+00, float %1560
  %1563 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1562)  ; FMax(a,b)
  %1564 = call float @dx.op.unary.f32(i32 7, float %1563)  ; Saturate(value)
  %1565 = fcmp fast une float %1564, 0.000000e+00
  %1566 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %147, float %148, float %149)  ; Dot3(ax,ay,az,bx,by,bz)
  %1567 = call float @dx.op.unary.f32(i32 25, float %1566)  ; Rsqrt(value)
  br i1 %1565, label %1575, label %1568

; <label>:1568                                    ; preds = %1548
  %1569 = fmul fast float %1567, %147
  %1570 = fmul fast float %1567, %148
  %1571 = fmul fast float %1567, %149
  %1572 = fsub fast float -0.000000e+00, %1569
  %1573 = fsub fast float -0.000000e+00, %1570
  %1574 = fsub fast float -0.000000e+00, %1571
  br label %1743

; <label>:1575                                    ; preds = %1548
  %1576 = fmul fast float %147, %1567
  %1577 = fsub fast float -0.000000e+00, %1576
  %1578 = fmul fast float %148, %1567
  %1579 = fsub fast float -0.000000e+00, %1578
  %1580 = fmul fast float %149, %1567
  %1581 = fsub fast float -0.000000e+00, %1580
  %1582 = call float @dx.op.dot3.f32(i32 55, float %1577, float %1579, float %1581, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %1583 = fmul fast float %1564, 2.500000e+00
  %1584 = call float @dx.op.unary.f32(i32 7, float %1583)  ; Saturate(value)
  %1585 = fmul fast float %1564, 0x4013FFFFE0000000
  %1586 = fadd fast float %1585, 0xBFFFFFFFE0000000
  %1587 = call float @dx.op.unary.f32(i32 7, float %1586)  ; Saturate(value)
  %1588 = fmul fast float %1564, 0x4004000020000000
  %1589 = fadd fast float %1588, 0xBFF8000040000000
  %1590 = call float @dx.op.unary.f32(i32 7, float %1589)  ; Saturate(value)
  %1591 = call float @dx.op.unary.f32(i32 7, float %1584)  ; Saturate(value)
  %1592 = fmul fast float %1124, 1.000000e+01
  %1593 = call float @dx.op.unary.f32(i32 7, float %1592)  ; Saturate(value)
  %1594 = fmul fast float %1593, 2.000000e+00
  %1595 = fsub fast float 3.000000e+00, %1594
  %1596 = fmul fast float %1593, %1593
  %1597 = fmul fast float %1596, %1595
  %1598 = fsub fast float 1.000000e+00, %1597
  %1599 = fsub fast float 0x3FE3333340000000, %1145
  %1600 = fmul fast float %1599, 0x400AAAAAA0000000
  %1601 = call float @dx.op.unary.f32(i32 7, float %1600)  ; Saturate(value)
  %1602 = fmul fast float %1598, %1601
  %1603 = fmul fast float %1182, 0x3FEA2B8620000000
  %1604 = fmul fast float %1183, 0x3FEA2B8620000000
  %1605 = fmul fast float %1184, 0x3FEA2B8620000000
  %1606 = fadd fast float %1603, 0x3FC81DFBA0000000
  %1607 = fmul fast float %1606, %1182
  %1608 = fadd fast float %1607, 0x3F910E6020000000
  %1609 = fadd fast float %1604, 0x3FC81DFBA0000000
  %1610 = fmul fast float %1609, %1183
  %1611 = fadd fast float %1610, 0x3F910E6020000000
  %1612 = fadd fast float %1605, 0x3FC81DFBA0000000
  %1613 = fmul fast float %1612, %1184
  %1614 = fadd fast float %1613, 0x3F910E6020000000
  %1615 = call float @dx.op.unary.f32(i32 7, float %1608)  ; Saturate(value)
  %1616 = call float @dx.op.unary.f32(i32 7, float %1611)  ; Saturate(value)
  %1617 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1618 = fsub fast float %1615, %1182
  %1619 = fsub fast float %1616, %1183
  %1620 = fsub fast float %1617, %1184
  %1621 = fmul fast float %1618, %1591
  %1622 = fmul fast float %1621, %1602
  %1623 = fmul fast float %1619, %1591
  %1624 = fmul fast float %1623, %1602
  %1625 = fmul fast float %1620, %1591
  %1626 = fmul fast float %1625, %1602
  %1627 = fadd fast float %1622, %1182
  %1628 = fadd fast float %1624, %1183
  %1629 = fadd fast float %1626, %1184
  %1630 = fmul fast float %1091, %1091
  %1631 = fmul fast float %1630, %1630
  %1632 = fadd fast float %1587, 1.000000e+00
  %1633 = fsub fast float %1632, %1602
  %1634 = call float @dx.op.unary.f32(i32 7, float %1633)  ; Saturate(value)
  %1635 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1636 = call float @dx.op.unary.f32(i32 7, float %1635)  ; Saturate(value)
  %1637 = fsub fast float 1.000000e+00, %1631
  %1638 = call float @dx.op.binary.f32(i32 36, float %1634, float %1637)  ; FMin(a,b)
  %1639 = call float @dx.op.unary.f32(i32 7, float %1590)  ; Saturate(value)
  %1640 = call float @dx.op.binary.f32(i32 35, float %1638, float %1639)  ; FMax(a,b)
  %1641 = fadd fast float %1636, 0xBFE4CCCCC0000000
  %1642 = fmul fast float %1641, 0x4006DB6DA0000000
  %1643 = call float @dx.op.unary.f32(i32 7, float %1642)  ; Saturate(value)
  %1644 = fmul fast float %1643, 2.000000e+00
  %1645 = fsub fast float 3.000000e+00, %1644
  %1646 = bitcast float %1142 to i32
  %1647 = ashr i32 %1646, 1
  %1648 = add nsw i32 %1647, 532487669
  %1649 = bitcast i32 %1648 to float
  %1650 = fsub fast float 1.000000e+00, %1649
  %1651 = bitcast float %1650 to i32
  %1652 = sub nsw i32 2129859010, %1651
  %1653 = bitcast i32 %1652 to float
  %1654 = fmul fast float %1653, 2.000000e+00
  %1655 = bitcast float %1143 to i32
  %1656 = ashr i32 %1655, 1
  %1657 = add nsw i32 %1656, 532487669
  %1658 = bitcast i32 %1657 to float
  %1659 = fsub fast float 1.000000e+00, %1658
  %1660 = bitcast float %1659 to i32
  %1661 = sub nsw i32 2129859010, %1660
  %1662 = bitcast i32 %1661 to float
  %1663 = fmul fast float %1662, 2.000000e+00
  %1664 = bitcast float %1144 to i32
  %1665 = ashr i32 %1664, 1
  %1666 = add nsw i32 %1665, 532487669
  %1667 = bitcast i32 %1666 to float
  %1668 = fsub fast float 1.000000e+00, %1667
  %1669 = bitcast float %1668 to i32
  %1670 = sub nsw i32 2129859010, %1669
  %1671 = bitcast i32 %1670 to float
  %1672 = fmul fast float %1671, 2.000000e+00
  %1673 = fsub fast float 0x4002A9FBE0000000, %1654
  %1674 = fadd fast float %1654, 0x3FD54FDF00000000
  %1675 = bitcast float %1674 to i32
  %1676 = sub nsw i32 2129859010, %1675
  %1677 = bitcast i32 %1676 to float
  %1678 = fmul fast float %1677, %1673
  %1679 = fmul fast float %1678, %1678
  %1680 = fsub fast float 0x4002A9FBE0000000, %1663
  %1681 = fadd fast float %1663, 0x3FD54FDF00000000
  %1682 = bitcast float %1681 to i32
  %1683 = sub nsw i32 2129859010, %1682
  %1684 = bitcast i32 %1683 to float
  %1685 = fmul fast float %1684, %1680
  %1686 = fmul fast float %1685, %1685
  %1687 = fsub fast float 0x4002A9FBE0000000, %1672
  %1688 = fadd fast float %1672, 0x3FD54FDF00000000
  %1689 = bitcast float %1688 to i32
  %1690 = sub nsw i32 2129859010, %1689
  %1691 = bitcast i32 %1690 to float
  %1692 = fmul fast float %1691, %1687
  %1693 = fmul fast float %1692, %1692
  %1694 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1679)  ; FMax(a,b)
  %1695 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1686)  ; FMax(a,b)
  %1696 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1693)  ; FMax(a,b)
  %1697 = fsub fast float 1.000000e+00, %1582
  %1698 = fadd fast float %1697, %1598
  %1699 = call float @dx.op.unary.f32(i32 7, float %1698)  ; Saturate(value)
  %1700 = fsub fast float 1.000000e+00, %1562
  %1701 = fmul fast float %1640, %1700
  %1702 = fmul fast float %1643, %1643
  %1703 = fmul fast float %1702, %1701
  %1704 = fmul fast float %1703, %1645
  %1705 = fmul fast float %1700, 0xBFE99999A0000000
  %1706 = fmul fast float %1705, %1591
  %1707 = fmul fast float %1706, %1602
  %1708 = fadd fast float %1707, 1.000000e+00
  %1709 = fadd fast float %1145, -1.000000e+00
  %1710 = fmul fast float %1708, %1709
  %1711 = fadd fast float %1710, 1.000000e+00
  %1712 = fsub fast float %1694, %1142
  %1713 = fsub fast float %1695, %1143
  %1714 = fsub fast float %1696, %1144
  %1715 = fmul fast float %1704, %1712
  %1716 = fmul fast float %1704, %1713
  %1717 = fmul fast float %1704, %1714
  %1718 = fadd fast float %1715, %1142
  %1719 = fadd fast float %1716, %1143
  %1720 = fadd fast float %1717, %1144
  %1721 = fsub fast float %76, %1121
  %1722 = fsub fast float %77, %1122
  %1723 = fsub fast float %78, %1123
  %1724 = fmul fast float %1704, %1721
  %1725 = fmul fast float %1704, %1722
  %1726 = fmul fast float %1704, %1723
  %1727 = fadd fast float %1724, %1121
  %1728 = fadd fast float %1725, %1122
  %1729 = fadd fast float %1726, %1123
  %1730 = fmul fast float %1704, %1699
  %1731 = call float @dx.op.unary.f32(i32 7, float %1711)  ; Saturate(value)
  %1732 = fsub fast float 1.000000e+00, %1731
  %1733 = fmul fast float %1730, %1732
  %1734 = fadd fast float %1733, %1731
  %1735 = fsub fast float 1.000000e+00, %1091
  %1736 = fmul fast float %1704, %1735
  %1737 = fadd fast float %1736, %1091
  %1738 = call float @dx.op.dot3.f32(i32 55, float %1727, float %1728, float %1729, float %1727, float %1728, float %1729)  ; Dot3(ax,ay,az,bx,by,bz)
  %1739 = call float @dx.op.unary.f32(i32 25, float %1738)  ; Rsqrt(value)
  %1740 = fmul fast float %1727, %1739
  %1741 = fmul fast float %1728, %1739
  %1742 = fmul fast float %1729, %1739
  br label %1743

; <label>:1743                                    ; preds = %1575, %1568
  %1744 = phi float [ %1574, %1568 ], [ %1581, %1575 ]
  %1745 = phi float [ %1573, %1568 ], [ %1579, %1575 ]
  %1746 = phi float [ %1572, %1568 ], [ %1577, %1575 ]
  %1747 = phi float [ %1571, %1568 ], [ %1580, %1575 ]
  %1748 = phi float [ %1570, %1568 ], [ %1578, %1575 ]
  %1749 = phi float [ %1569, %1568 ], [ %1576, %1575 ]
  %1750 = phi float [ %1121, %1568 ], [ %1740, %1575 ]
  %1751 = phi float [ %1122, %1568 ], [ %1741, %1575 ]
  %1752 = phi float [ %1123, %1568 ], [ %1742, %1575 ]
  %1753 = phi float [ %1142, %1568 ], [ %1718, %1575 ]
  %1754 = phi float [ %1143, %1568 ], [ %1719, %1575 ]
  %1755 = phi float [ %1144, %1568 ], [ %1720, %1575 ]
  %1756 = phi float [ %1182, %1568 ], [ %1627, %1575 ]
  %1757 = phi float [ %1183, %1568 ], [ %1628, %1575 ]
  %1758 = phi float [ %1184, %1568 ], [ %1629, %1575 ]
  %1759 = phi float [ %1145, %1568 ], [ %1734, %1575 ]
  %1760 = phi float [ %1091, %1568 ], [ %1737, %1575 ]
  %1761 = fsub fast float -0.000000e+00, %149
  %1762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1763 = extractvalue %dx.types.CBufRet.f32 %1762, 2
  %1764 = extractvalue %dx.types.CBufRet.f32 %1762, 3
  %1765 = fmul fast float %100, 2.000000e+00
  %1766 = fmul fast float %1765, %1763
  %1767 = fmul fast float %101, 2.000000e+00
  %1768 = fmul fast float %1767, %1764
  %1769 = fsub fast float 1.000000e+00, %1766
  %1770 = fsub fast float 1.000000e+00, %1768
  %1771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.f32 %1771, 0
  %1773 = extractvalue %dx.types.CBufRet.f32 %1771, 1
  %1774 = extractvalue %dx.types.CBufRet.f32 %1771, 2
  %1775 = fmul fast float %1769, %1772
  %1776 = fmul fast float %1769, %1773
  %1777 = fmul fast float %1769, %1774
  %1778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1779 = extractvalue %dx.types.CBufRet.f32 %1778, 0
  %1780 = extractvalue %dx.types.CBufRet.f32 %1778, 1
  %1781 = extractvalue %dx.types.CBufRet.f32 %1778, 2
  %1782 = fmul fast float %1770, %1779
  %1783 = fmul fast float %1770, %1780
  %1784 = fmul fast float %1770, %1781
  %1785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1785, 0
  %1787 = extractvalue %dx.types.CBufRet.f32 %1785, 1
  %1788 = extractvalue %dx.types.CBufRet.f32 %1785, 2
  %1789 = fadd fast float %1782, %1786
  %1790 = fadd fast float %1789, %1775
  %1791 = fadd fast float %1783, %1787
  %1792 = fadd fast float %1791, %1776
  %1793 = fadd fast float %1784, %1788
  %1794 = fadd fast float %1793, %1777
  %1795 = fmul fast float %1790, %88
  %1796 = fmul fast float %1792, %88
  %1797 = fmul fast float %1794, %88
  %1798 = select i1 %240, float 0.000000e+00, float %1755
  %1799 = call float @dx.op.dot3.f32(i32 55, float %1750, float %1751, float %1752, float %1746, float %1745, float %1744)  ; Dot3(ax,ay,az,bx,by,bz)
  %1800 = call float @dx.op.unary.f32(i32 7, float %1799)  ; Saturate(value)
  %1801 = call float @dx.op.dot3.f32(i32 55, float %1749, float %1748, float %1747, float %1750, float %1751, float %1752)  ; Dot3(ax,ay,az,bx,by,bz)
  %1802 = fmul fast float %1801, 2.000000e+00
  %1803 = fmul fast float %1802, %1750
  %1804 = fmul fast float %1802, %1751
  %1805 = fmul fast float %1802, %1752
  %1806 = fsub fast float %1749, %1803
  %1807 = fsub fast float %1748, %1804
  %1808 = fsub fast float %1747, %1805
  %1809 = call float @dx.op.binary.f32(i32 36, float %1760, float 1.000000e+00)  ; FMin(a,b)
  %1810 = fsub fast float 1.000000e+00, %1809
  %1811 = bitcast float %1810 to i32
  %1812 = ashr i32 %1811, 1
  %1813 = add nsw i32 %1812, 532487669
  %1814 = bitcast i32 %1813 to float
  %1815 = fsub fast float 1.000000e+00, %1759
  %1816 = call float @dx.op.binary.f32(i32 35, float %1815, float 0x3F847AE140000000)  ; FMax(a,b)
  %1817 = fmul fast float %1816, %1816
  %1818 = fmul fast float %1817, %1817
  %1819 = call float @dx.op.unary.f32(i32 7, float %1800)  ; Saturate(value)
  %1820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %64, float %1814, float %1818, float %1819, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1821 = extractvalue %dx.types.ResRet.f32 %1820, 0
  %1822 = fsub fast float 1.000000e+00, %1760
  %1823 = bitcast float %1822 to i32
  %1824 = sub nsw i32 2129859010, %1823
  %1825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1826 = extractvalue %dx.types.CBufRet.f32 %1825, 0
  %1827 = extractvalue %dx.types.CBufRet.f32 %1825, 1
  %1828 = fadd fast float %1826, %147
  %1829 = fadd fast float %1827, %148
  %1830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1831 = extractvalue %dx.types.CBufRet.i32 %1830, 0
  %1832 = icmp eq i32 %1831, 1
  br i1 %1832, label %1833, label %1868

; <label>:1833                                    ; preds = %1743
  %1834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1835 = extractvalue %dx.types.CBufRet.f32 %1834, 0
  %1836 = extractvalue %dx.types.CBufRet.f32 %1834, 1
  %1837 = fsub fast float %1828, %1835
  %1838 = fsub fast float %1829, %1836
  %1839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1840 = extractvalue %dx.types.CBufRet.f32 %1839, 0
  %1841 = extractvalue %dx.types.CBufRet.f32 %1839, 1
  %1842 = fmul fast float %1837, %1840
  %1843 = fmul fast float %1838, %1841
  %1844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %1842, float %1843, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1845 = extractvalue %dx.types.ResRet.f32 %1844, 0
  %1846 = fcmp fast ogt float %1845, 0.000000e+00
  %1847 = extractvalue %dx.types.CBufRet.i32 %1830, 3
  %1848 = icmp ne i32 %1847, 0
  %1849 = and i1 %1846, %1848
  br i1 %1849, label %1850, label %1868, !dx.controlflow.hints !104

; <label>:1850                                    ; preds = %1833
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 0
  %1853 = extractvalue %dx.types.CBufRet.f32 %1851, 1
  %1854 = fsub fast float %1828, %1852
  %1855 = fsub fast float %1829, %1853
  %1856 = fmul fast float %1854, %1854
  %1857 = fmul fast float %1855, %1855
  %1858 = fadd fast float %1856, %1857
  %1859 = uitofp i32 %1847 to float
  %1860 = fmul fast float %1859, %1859
  %1861 = fcmp fast ogt float %1858, %1860
  br i1 %1861, label %1868, label %1862

; <label>:1862                                    ; preds = %1850
  %1863 = call float @dx.op.unary.f32(i32 24, float %1858)  ; Sqrt(value)
  %1864 = fsub fast float %1859, %1863
  %1865 = fmul fast float %1864, 0x3F75555560000000
  %1866 = call float @dx.op.unary.f32(i32 7, float %1865)  ; Saturate(value)
  %1867 = call float @dx.op.binary.f32(i32 36, float %1866, float %1845)  ; FMin(a,b)
  br label %1868

; <label>:1868                                    ; preds = %1862, %1850, %1833, %1743
  %1869 = phi float [ 1.000000e+00, %1743 ], [ %1867, %1862 ], [ %1845, %1833 ], [ 0.000000e+00, %1850 ]
  %1870 = fcmp fast ogt float %1869, 0.000000e+00
  br i1 %1870, label %1871, label %1970, !dx.controlflow.hints !105

; <label>:1871                                    ; preds = %1868
  %1872 = fadd fast float %178, 5.000000e-01
  %1873 = call float @dx.op.unary.f32(i32 27, float %1872)  ; Round_ni(value)
  %1874 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %64, float %176, float %177, float %1873, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1875 = extractvalue %dx.types.ResRet.f32 %1874, 0
  %1876 = extractvalue %dx.types.ResRet.f32 %1874, 1
  %1877 = extractvalue %dx.types.ResRet.f32 %1874, 2
  %1878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1879 = extractvalue %dx.types.CBufRet.f32 %1878, 3
  %1880 = fmul fast float %1879, %1875
  %1881 = fmul fast float %1879, %1876
  %1882 = fmul fast float %1879, %1877
  %1883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %64, float %176, float %177, float %1873, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1884 = extractvalue %dx.types.ResRet.f32 %1883, 0
  %1885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %64, float %176, float %177, float %1873, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1886 = extractvalue %dx.types.ResRet.f32 %1885, 0
  %1887 = extractvalue %dx.types.ResRet.f32 %1885, 1
  %1888 = fmul fast float %1886, 2.000000e+00
  %1889 = fmul fast float %1887, 2.000000e+00
  %1890 = fadd fast float %1888, -1.000000e+00
  %1891 = fadd fast float %1889, -1.000000e+00
  %1892 = fadd fast float %1890, %1891
  %1893 = fmul fast float %1892, 5.000000e-01
  %1894 = fsub fast float %1890, %1891
  %1895 = fmul fast float %1894, 5.000000e-01
  %1896 = call float @dx.op.unary.f32(i32 6, float %1893)  ; FAbs(value)
  %1897 = fsub fast float 1.000000e+00, %1896
  %1898 = call float @dx.op.unary.f32(i32 6, float %1895)  ; FAbs(value)
  %1899 = fsub fast float %1897, %1898
  %1900 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1899)  ; FMax(a,b)
  %1901 = call float @dx.op.dot3.f32(i32 55, float %1893, float %1895, float %1900, float %1893, float %1895, float %1900)  ; Dot3(ax,ay,az,bx,by,bz)
  %1902 = bitcast float %1901 to i32
  %1903 = ashr i32 %1902, 1
  %1904 = sub nsw i32 1597250115, %1903
  %1905 = bitcast i32 %1904 to float
  %1906 = fmul fast float %1905, %1893
  %1907 = fmul fast float %1905, %1895
  %1908 = fmul fast float %1905, %1900
  %1909 = fsub fast float 1.000000e+00, %1884
  %1910 = fdiv fast float %1909, %1908
  %1911 = fmul fast float %1908, %76
  %1912 = fmul fast float %1908, %77
  %1913 = fmul fast float %1908, %78
  %1914 = fmul fast float %1906, %72
  %1915 = fmul fast float %1906, %73
  %1916 = fmul fast float %1906, %74
  %1917 = fadd fast float %1911, %1914
  %1918 = fadd fast float %1912, %1915
  %1919 = fadd fast float %1913, %1916
  %1920 = fmul fast float %1907, %111
  %1921 = fmul fast float %1907, %112
  %1922 = fmul fast float %1907, %113
  %1923 = fadd fast float %1917, %1920
  %1924 = fadd fast float %1918, %1921
  %1925 = fadd fast float %1919, %1922
  %1926 = call float @dx.op.dot3.f32(i32 55, float %1923, float %1924, float %1925, float %1923, float %1924, float %1925)  ; Dot3(ax,ay,az,bx,by,bz)
  %1927 = call float @dx.op.unary.f32(i32 25, float %1926)  ; Rsqrt(value)
  %1928 = fmul fast float %1923, %1927
  %1929 = fmul fast float %1924, %1927
  %1930 = fmul fast float %1925, %1927
  %1931 = call float @dx.op.dot3.f32(i32 55, float %1750, float %1751, float %1752, float %1750, float %1751, float %1752)  ; Dot3(ax,ay,az,bx,by,bz)
  %1932 = call float @dx.op.unary.f32(i32 7, float %1931)  ; Saturate(value)
  %1933 = fmul fast float %1932, 5.000000e-01
  %1934 = fadd fast float %1933, 5.000000e-01
  %1935 = fmul fast float %1934, %1884
  %1936 = call float @dx.op.dot3.f32(i32 55, float %1750, float %1751, float %1752, float %1928, float %1929, float %1930)  ; Dot3(ax,ay,az,bx,by,bz)
  %1937 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  %1938 = fmul fast float %1937, %1910
  %1939 = fadd fast float %1935, %1938
  %1940 = fsub fast float 5.000000e-01, %1933
  %1941 = fmul fast float %1940, %1756
  %1942 = fmul fast float %1940, %1757
  %1943 = fmul fast float %1940, %1758
  %1944 = fadd fast float %1939, %1941
  %1945 = fmul fast float %1944, %1880
  %1946 = fadd fast float %1939, %1942
  %1947 = fmul fast float %1946, %1881
  %1948 = fadd fast float %1939, %1943
  %1949 = fmul fast float %1948, %1882
  %1950 = call float @dx.op.dot3.f32(i32 55, float %1806, float %1807, float %1808, float %1750, float %1751, float %1752)  ; Dot3(ax,ay,az,bx,by,bz)
  %1951 = call float @dx.op.unary.f32(i32 7, float %1950)  ; Saturate(value)
  %1952 = fmul fast float %1951, 5.000000e-01
  %1953 = fadd fast float %1952, 5.000000e-01
  %1954 = fmul fast float %1953, %1884
  %1955 = call float @dx.op.dot3.f32(i32 55, float %1806, float %1807, float %1808, float %1928, float %1929, float %1930)  ; Dot3(ax,ay,az,bx,by,bz)
  %1956 = call float @dx.op.unary.f32(i32 7, float %1955)  ; Saturate(value)
  %1957 = fmul fast float %1956, %1910
  %1958 = fadd fast float %1954, %1957
  %1959 = fsub fast float 5.000000e-01, %1952
  %1960 = fmul fast float %1959, %1756
  %1961 = fmul fast float %1959, %1757
  %1962 = fmul fast float %1959, %1758
  %1963 = fadd fast float %1958, %1960
  %1964 = fmul fast float %1963, %1880
  %1965 = fadd fast float %1958, %1961
  %1966 = fmul fast float %1965, %1881
  %1967 = fadd fast float %1958, %1962
  %1968 = fmul fast float %1967, %1882
  %1969 = call float @dx.op.dot3.f32(i32 55, float %1880, float %1881, float %1882, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %1970

; <label>:1970                                    ; preds = %1871, %1868
  %1971 = phi float [ %1969, %1871 ], [ 0.000000e+00, %1868 ]
  %1972 = phi float [ %1964, %1871 ], [ 0.000000e+00, %1868 ]
  %1973 = phi float [ %1966, %1871 ], [ 0.000000e+00, %1868 ]
  %1974 = phi float [ %1968, %1871 ], [ 0.000000e+00, %1868 ]
  %1975 = phi float [ %1945, %1871 ], [ 0.000000e+00, %1868 ]
  %1976 = phi float [ %1947, %1871 ], [ 0.000000e+00, %1868 ]
  %1977 = phi float [ %1949, %1871 ], [ 0.000000e+00, %1868 ]
  %1978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1979 = extractvalue %dx.types.CBufRet.f32 %1978, 0
  %1980 = fcmp fast ogt float %1979, 0.000000e+00
  %1981 = and i1 %1870, %1980
  br i1 %1981, label %1982, label %2186, !dx.controlflow.hints !106

; <label>:1982                                    ; preds = %1970
  %1983 = extractvalue %dx.types.CBufRet.f32 %1825, 2
  %1984 = fadd fast float %1983, %149
  %1985 = fmul fast float %1750, 3.200000e+01
  %1986 = fmul fast float %1751, 3.200000e+01
  %1987 = fadd fast float %1828, %1985
  %1988 = fadd fast float %1829, %1986
  %1989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1990 = extractvalue %dx.types.CBufRet.f32 %1989, 0
  %1991 = extractvalue %dx.types.CBufRet.f32 %1989, 1
  %1992 = fsub fast float %1987, %1990
  %1993 = fsub fast float %1988, %1991
  %1994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1995 = extractvalue %dx.types.CBufRet.f32 %1994, 0
  %1996 = extractvalue %dx.types.CBufRet.f32 %1994, 1
  %1997 = fmul fast float %1992, %1995
  %1998 = fmul fast float %1993, %1996
  %1999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2000 = extractvalue %dx.types.CBufRet.f32 %1999, 0
  %2001 = extractvalue %dx.types.CBufRet.f32 %1999, 1
  %2002 = fsub fast float %1828, %2000
  %2003 = fsub fast float %1829, %2001
  %2004 = fmul fast float %2002, %2002
  %2005 = fmul fast float %2003, %2003
  %2006 = fadd fast float %2004, %2005
  %2007 = call float @dx.op.unary.f32(i32 24, float %2006)  ; Sqrt(value)
  %2008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2009 = extractvalue %dx.types.CBufRet.f32 %2008, 0
  %2010 = extractvalue %dx.types.CBufRet.f32 %2008, 1
  %2011 = fsub fast float %2007, %2009
  %2012 = fdiv fast float %2011, %2010
  %2013 = call float @dx.op.unary.f32(i32 7, float %2012)  ; Saturate(value)
  %2014 = fmul fast float %2013, 2.000000e+00
  %2015 = fsub fast float 3.000000e+00, %2014
  %2016 = fmul fast float %2013, %2013
  %2017 = fmul fast float %2016, %2015
  %2018 = fcmp fast oge float %1997, 0.000000e+00
  %2019 = fcmp fast ole float %1997, 1.000000e+00
  %2020 = and i1 %2019, %2018
  %2021 = fcmp fast oge float %1998, 0.000000e+00
  %2022 = and i1 %2021, %2020
  %2023 = fcmp fast ole float %1998, 1.000000e+00
  %2024 = and i1 %2023, %2022
  %2025 = fcmp fast ogt float %2017, 0.000000e+00
  %2026 = and i1 %2025, %2024
  br i1 %2026, label %2027, label %2150, !dx.controlflow.hints !107

; <label>:2027                                    ; preds = %1982
  %2028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2029 = extractvalue %dx.types.CBufRet.f32 %2028, 2
  %2030 = extractvalue %dx.types.CBufRet.f32 %2028, 3
  %2031 = fmul fast float %2029, %1997
  %2032 = fmul fast float %2030, %1998
  %2033 = call float @dx.op.unary.f32(i32 27, float %2031)  ; Round_ni(value)
  %2034 = call float @dx.op.unary.f32(i32 27, float %2032)  ; Round_ni(value)
  %2035 = fptosi float %2033 to i32
  %2036 = fptosi float %2034 to i32
  %2037 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %53, i32 0, i32 %2035, i32 %2036, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = lshr i32 %2038, 16
  %2040 = icmp eq i32 %2039, 65535
  br i1 %2040, label %2150, label %2041

; <label>:2041                                    ; preds = %2027
  %2042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2043 = extractvalue %dx.types.CBufRet.f32 %2042, 0
  %2044 = fmul fast float %2043, %1997
  %2045 = extractvalue %dx.types.CBufRet.f32 %2042, 1
  %2046 = fadd fast float %2044, %2045
  %2047 = extractvalue %dx.types.CBufRet.f32 %2042, 2
  %2048 = fmul fast float %2047, %1998
  %2049 = extractvalue %dx.types.CBufRet.f32 %2042, 3
  %2050 = fadd fast float %2048, %2049
  %2051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %64, float %2046, float %2050, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2052 = extractvalue %dx.types.ResRet.f32 %2051, 0
  %2053 = extractvalue %dx.types.ResRet.f32 %2051, 1
  %2054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2055 = extractvalue %dx.types.CBufRet.f32 %2054, 1
  %2056 = extractvalue %dx.types.CBufRet.f32 %2054, 0
  %2057 = fsub fast float %2055, %2056
  %2058 = fmul fast float %2057, %2052
  %2059 = fadd fast float %2058, %2056
  %2060 = extractvalue %dx.types.CBufRet.f32 %2054, 3
  %2061 = extractvalue %dx.types.CBufRet.f32 %2054, 2
  %2062 = fsub fast float %2060, %2061
  %2063 = fmul fast float %2062, %2053
  %2064 = fadd fast float %2063, %2061
  %2065 = fsub fast float %1984, %2059
  %2066 = fsub fast float %2064, %2059
  %2067 = fdiv fast float %2065, %2066
  %2068 = call float @dx.op.unary.f32(i32 7, float %2067)  ; Saturate(value)
  %2069 = extractvalue %dx.types.CBufRet.f32 %1978, 1
  %2070 = extractvalue %dx.types.CBufRet.f32 %2028, 0
  %2071 = extractvalue %dx.types.CBufRet.f32 %2028, 1
  %2072 = fmul fast float %2070, %1997
  %2073 = fmul fast float %2071, %1998
  %2074 = fmul fast float %2072, 1.250000e-01
  %2075 = fmul fast float %2073, 1.250000e-01
  %2076 = call float @dx.op.unary.f32(i32 27, float %2074)  ; Round_ni(value)
  %2077 = call float @dx.op.unary.f32(i32 27, float %2075)  ; Round_ni(value)
  %2078 = fmul fast float %2076, 8.000000e+00
  %2079 = fmul fast float %2077, 8.000000e+00
  %2080 = fsub fast float %2072, %2078
  %2081 = fsub fast float %2073, %2079
  %2082 = fadd fast float %2080, 5.000000e-01
  %2083 = fadd fast float %2081, 5.000000e-01
  %2084 = and i32 %2039, 255
  %2085 = lshr i32 %2038, 24
  %2086 = mul nuw nsw i32 %2084, 9
  %2087 = uitofp i32 %2086 to float
  %2088 = mul nuw nsw i32 %2085, 9
  %2089 = uitofp i32 %2088 to float
  %2090 = fadd fast float %2082, %2087
  %2091 = fadd fast float %2083, %2089
  %2092 = fdiv fast float %2090, %1979
  %2093 = fdiv fast float %2091, %2069
  %2094 = fmul fast float %2068, 4.375000e-01
  %2095 = fadd fast float %2094, 3.125000e-02
  %2096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %2092, float %2093, float %2095, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2097 = extractvalue %dx.types.ResRet.f32 %2096, 0
  %2098 = extractvalue %dx.types.ResRet.f32 %2096, 1
  %2099 = extractvalue %dx.types.ResRet.f32 %2096, 2
  %2100 = fadd fast float %2094, 5.312500e-01
  %2101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %2092, float %2093, float %2100, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2102 = extractvalue %dx.types.ResRet.f32 %2101, 0
  %2103 = extractvalue %dx.types.ResRet.f32 %2101, 1
  %2104 = extractvalue %dx.types.ResRet.f32 %2101, 2
  %2105 = fmul fast float %2102, 2.000000e+00
  %2106 = fmul fast float %2103, 2.000000e+00
  %2107 = fmul fast float %2104, 2.000000e+00
  %2108 = fadd fast float %2105, -1.000000e+00
  %2109 = fadd fast float %2106, -1.000000e+00
  %2110 = fadd fast float %2107, -1.000000e+00
  %2111 = fmul fast float %2108, %2108
  %2112 = fmul fast float %2109, %2109
  %2113 = fadd fast float %2111, %2112
  %2114 = fmul fast float %2110, %2110
  %2115 = fadd fast float %2113, %2114
  %2116 = call float @dx.op.unary.f32(i32 24, float %2115)  ; Sqrt(value)
  %2117 = fcmp fast ogt float %2116, 0.000000e+00
  br i1 %2117, label %2118, label %2122

; <label>:2118                                    ; preds = %2041
  %2119 = fdiv fast float %2108, %2116
  %2120 = fdiv fast float %2109, %2116
  %2121 = fdiv fast float %2110, %2116
  br label %2122

; <label>:2122                                    ; preds = %2118, %2041
  %2123 = phi float [ %2119, %2118 ], [ 0.000000e+00, %2041 ]
  %2124 = phi float [ %2120, %2118 ], [ 0.000000e+00, %2041 ]
  %2125 = phi float [ %2121, %2118 ], [ 0.000000e+00, %2041 ]
  %2126 = call float @dx.op.dot3.f32(i32 55, float %2123, float %2124, float %2125, float %1750, float %1751, float %1752)  ; Dot3(ax,ay,az,bx,by,bz)
  %2127 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2126)  ; FMax(a,b)
  %2128 = fmul fast float %2127, 0x400C5BF8A0000000
  %2129 = fmul fast float %2097, %2017
  %2130 = fmul fast float %2129, %2128
  %2131 = fmul fast float %2098, %2017
  %2132 = fmul fast float %2131, %2128
  %2133 = fmul fast float %2099, %2017
  %2134 = fmul fast float %2133, %2128
  %2135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2136 = extractvalue %dx.types.CBufRet.f32 %2135, 3
  %2137 = fmul fast float %2130, %2136
  %2138 = fmul fast float %2132, %2136
  %2139 = fmul fast float %2134, %2136
  %2140 = fcmp fast ogt float %1984, %2064
  br i1 %2140, label %2141, label %2150

; <label>:2141                                    ; preds = %2122
  %2142 = fmul fast float %2066, 0x3FC24924A0000000
  %2143 = fsub fast float %1984, %2064
  %2144 = fdiv fast float %2143, %2142
  %2145 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  %2146 = fsub fast float 1.000000e+00, %2145
  %2147 = fmul fast float %2146, %2137
  %2148 = fmul fast float %2146, %2138
  %2149 = fmul fast float %2146, %2139
  br label %2150

; <label>:2150                                    ; preds = %2141, %2122, %2027, %1982
  %2151 = phi float [ %2149, %2141 ], [ %2139, %2122 ], [ 0.000000e+00, %2027 ], [ 0.000000e+00, %1982 ]
  %2152 = phi float [ %2148, %2141 ], [ %2138, %2122 ], [ 0.000000e+00, %2027 ], [ 0.000000e+00, %1982 ]
  %2153 = phi float [ %2147, %2141 ], [ %2137, %2122 ], [ 0.000000e+00, %2027 ], [ 0.000000e+00, %1982 ]
  %2154 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2153)  ; FMax(a,b)
  %2155 = fmul fast float %2154, 0x3FD20DD760000000
  %2156 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1806, float %1807, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %2157 = fmul fast float %2156, 0x3FDF454380000000
  %2158 = fmul fast float %2156, %2156
  %2159 = fmul fast float %2158, 0x3FEE471020000000
  %2160 = fadd fast float %2159, 0xBFD42F6020000000
  %2161 = call float @dx.op.dot3.f32(i32 55, float %2154, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2157, float %2160)  ; Dot3(ax,ay,az,bx,by,bz)
  %2162 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2152)  ; FMax(a,b)
  %2163 = fmul fast float %2162, 0x3FD20DD760000000
  %2164 = call float @dx.op.dot3.f32(i32 55, float %2162, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2157, float %2160)  ; Dot3(ax,ay,az,bx,by,bz)
  %2165 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2151)  ; FMax(a,b)
  %2166 = fmul fast float %2165, 0x3FD20DD760000000
  %2167 = call float @dx.op.dot3.f32(i32 55, float %2165, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2157, float %2160)  ; Dot3(ax,ay,az,bx,by,bz)
  %2168 = call float @dx.op.binary.f32(i32 35, float %2155, float 0.000000e+00)  ; FMax(a,b)
  %2169 = call float @dx.op.binary.f32(i32 35, float %2163, float 0.000000e+00)  ; FMax(a,b)
  %2170 = call float @dx.op.binary.f32(i32 35, float %2166, float 0.000000e+00)  ; FMax(a,b)
  %2171 = call float @dx.op.binary.f32(i32 35, float %2161, float 0.000000e+00)  ; FMax(a,b)
  %2172 = call float @dx.op.binary.f32(i32 35, float %2164, float 0.000000e+00)  ; FMax(a,b)
  %2173 = call float @dx.op.binary.f32(i32 35, float %2167, float 0.000000e+00)  ; FMax(a,b)
  %2174 = fmul fast float %2168, %1869
  %2175 = fmul fast float %2169, %1869
  %2176 = fmul fast float %2170, %1869
  %2177 = fadd fast float %2174, %1975
  %2178 = fadd fast float %2175, %1976
  %2179 = fadd fast float %2176, %1977
  %2180 = fmul fast float %2171, %1869
  %2181 = fmul fast float %2172, %1869
  %2182 = fmul fast float %2173, %1869
  %2183 = fadd fast float %2180, %1972
  %2184 = fadd fast float %2181, %1973
  %2185 = fadd fast float %2182, %1974
  br label %2186

; <label>:2186                                    ; preds = %2150, %1970
  %2187 = phi float [ %2183, %2150 ], [ %1972, %1970 ]
  %2188 = phi float [ %2184, %2150 ], [ %1973, %1970 ]
  %2189 = phi float [ %2185, %2150 ], [ %1974, %1970 ]
  %2190 = phi float [ %2177, %2150 ], [ %1975, %1970 ]
  %2191 = phi float [ %2178, %2150 ], [ %1976, %1970 ]
  %2192 = phi float [ %2179, %2150 ], [ %1977, %1970 ]
  %2193 = fcmp fast olt float %1869, 1.000000e+00
  br i1 %2193, label %2194, label %3017, !dx.controlflow.hints !108

; <label>:2194                                    ; preds = %2186
  %2195 = extractvalue %dx.types.CBufRet.f32 %1825, 2
  %2196 = fadd fast float %2195, %149
  %2197 = fmul fast float %1750, 3.200000e+01
  %2198 = fmul fast float %1751, 3.200000e+01
  %2199 = fadd fast float %1828, %2197
  %2200 = fadd fast float %1829, %2198
  %2201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2202 = extractvalue %dx.types.CBufRet.f32 %2201, 0
  %2203 = extractvalue %dx.types.CBufRet.f32 %2201, 1
  %2204 = fsub fast float %2199, %2202
  %2205 = fsub fast float %2200, %2203
  %2206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2207 = extractvalue %dx.types.CBufRet.f32 %2206, 0
  %2208 = extractvalue %dx.types.CBufRet.f32 %2206, 1
  %2209 = fmul fast float %2204, %2207
  %2210 = fmul fast float %2205, %2208
  %2211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2212 = extractvalue %dx.types.CBufRet.f32 %2211, 0
  %2213 = fmul fast float %2209, %2212
  %2214 = extractvalue %dx.types.CBufRet.f32 %2211, 1
  %2215 = fadd fast float %2213, %2214
  %2216 = extractvalue %dx.types.CBufRet.f32 %2211, 2
  %2217 = fmul fast float %2216, %2210
  %2218 = extractvalue %dx.types.CBufRet.f32 %2211, 3
  %2219 = fadd fast float %2217, %2218
  %2220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %64, float %2215, float %2219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2221 = extractvalue %dx.types.ResRet.f32 %2220, 0
  %2222 = extractvalue %dx.types.ResRet.f32 %2220, 1
  %2223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2224 = extractvalue %dx.types.CBufRet.f32 %2223, 1
  %2225 = extractvalue %dx.types.CBufRet.f32 %2223, 0
  %2226 = fsub fast float %2224, %2225
  %2227 = fmul fast float %2226, %2221
  %2228 = fadd fast float %2227, %2225
  %2229 = extractvalue %dx.types.CBufRet.f32 %2223, 3
  %2230 = extractvalue %dx.types.CBufRet.f32 %2223, 2
  %2231 = fsub fast float %2229, %2230
  %2232 = fmul fast float %2231, %2222
  %2233 = fadd fast float %2232, %2230
  %2234 = fsub fast float %2196, %2228
  %2235 = fsub fast float %2233, %2228
  %2236 = fdiv fast float %2234, %2235
  %2237 = call float @dx.op.unary.f32(i32 7, float %2236)  ; Saturate(value)
  %2238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2239 = extractvalue %dx.types.CBufRet.f32 %2238, 0
  %2240 = fmul fast float %2239, %2237
  %2241 = extractvalue %dx.types.CBufRet.f32 %2238, 1
  %2242 = fadd fast float %2240, %2241
  %2243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %64, float %2215, float %2219, float %2242, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2244 = extractvalue %dx.types.ResRet.f32 %2243, 0
  %2245 = extractvalue %dx.types.ResRet.f32 %2243, 1
  %2246 = extractvalue %dx.types.ResRet.f32 %2243, 2
  %2247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2248 = extractvalue %dx.types.CBufRet.f32 %2247, 0
  %2249 = extractvalue %dx.types.CBufRet.f32 %2247, 1
  %2250 = extractvalue %dx.types.CBufRet.f32 %2247, 2
  %2251 = fmul fast float %2248, %2244
  %2252 = fmul fast float %2249, %2245
  %2253 = fmul fast float %2250, %2246
  %2254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2255 = extractvalue %dx.types.CBufRet.f32 %2254, 0
  %2256 = extractvalue %dx.types.CBufRet.f32 %2254, 1
  %2257 = extractvalue %dx.types.CBufRet.f32 %2254, 2
  %2258 = fadd fast float %2251, %2255
  %2259 = fadd fast float %2252, %2256
  %2260 = fadd fast float %2253, %2257
  %2261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2262 = extractvalue %dx.types.CBufRet.f32 %2261, 0
  %2263 = fmul fast float %2262, %2209
  %2264 = extractvalue %dx.types.CBufRet.f32 %2261, 1
  %2265 = fadd fast float %2263, %2264
  %2266 = extractvalue %dx.types.CBufRet.f32 %2261, 2
  %2267 = fmul fast float %2266, %2210
  %2268 = extractvalue %dx.types.CBufRet.f32 %2261, 3
  %2269 = fadd fast float %2267, %2268
  %2270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2271 = extractvalue %dx.types.CBufRet.f32 %2270, 0
  %2272 = extractvalue %dx.types.CBufRet.f32 %2270, 1
  %2273 = extractvalue %dx.types.CBufRet.f32 %2270, 2
  %2274 = extractvalue %dx.types.CBufRet.f32 %2270, 3
  %2275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2276 = extractvalue %dx.types.CBufRet.f32 %2275, 0
  %2277 = extractvalue %dx.types.CBufRet.f32 %2275, 1
  %2278 = extractvalue %dx.types.CBufRet.f32 %2275, 2
  %2279 = extractvalue %dx.types.CBufRet.f32 %2275, 3
  %2280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2265, float %2269, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2281 = extractvalue %dx.types.ResRet.f32 %2280, 0
  %2282 = extractvalue %dx.types.ResRet.f32 %2280, 1
  %2283 = extractvalue %dx.types.ResRet.f32 %2280, 2
  %2284 = extractvalue %dx.types.ResRet.f32 %2280, 3
  %2285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2265, float %2269, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2286 = extractvalue %dx.types.ResRet.f32 %2285, 0
  %2287 = extractvalue %dx.types.ResRet.f32 %2285, 1
  %2288 = extractvalue %dx.types.ResRet.f32 %2285, 2
  %2289 = extractvalue %dx.types.ResRet.f32 %2285, 3
  %2290 = fmul fast float %2281, %2258
  %2291 = fmul fast float %2286, %2258
  %2292 = fmul fast float %2288, %2258
  %2293 = fmul fast float %2284, %2258
  %2294 = fadd fast float %2290, %2271
  %2295 = fadd fast float %2291, %2272
  %2296 = fadd fast float %2292, %2273
  %2297 = fadd fast float %2293, %2274
  %2298 = fmul fast float %2282, %2258
  %2299 = fmul fast float %2287, %2258
  %2300 = fadd fast float %2298, %2276
  %2301 = fadd fast float %2299, %2277
  %2302 = fmul fast float %2283, %2258
  %2303 = fmul fast float %2289, %2258
  %2304 = fadd fast float %2302, %2278
  %2305 = fadd fast float %2303, %2279
  %2306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2265, float %2269, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2307 = extractvalue %dx.types.ResRet.f32 %2306, 0
  %2308 = extractvalue %dx.types.ResRet.f32 %2306, 1
  %2309 = extractvalue %dx.types.ResRet.f32 %2306, 2
  %2310 = extractvalue %dx.types.ResRet.f32 %2306, 3
  %2311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2265, float %2269, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2312 = extractvalue %dx.types.ResRet.f32 %2311, 0
  %2313 = extractvalue %dx.types.ResRet.f32 %2311, 1
  %2314 = extractvalue %dx.types.ResRet.f32 %2311, 2
  %2315 = extractvalue %dx.types.ResRet.f32 %2311, 3
  %2316 = fmul fast float %2307, %2259
  %2317 = fmul fast float %2312, %2259
  %2318 = fmul fast float %2314, %2259
  %2319 = fmul fast float %2310, %2259
  %2320 = fadd fast float %2294, %2316
  %2321 = fadd fast float %2295, %2317
  %2322 = fadd fast float %2296, %2318
  %2323 = fadd fast float %2297, %2319
  %2324 = fmul fast float %2308, %2259
  %2325 = fmul fast float %2313, %2259
  %2326 = fadd fast float %2300, %2324
  %2327 = fadd fast float %2301, %2325
  %2328 = fmul fast float %2309, %2259
  %2329 = fmul fast float %2315, %2259
  %2330 = fadd fast float %2304, %2328
  %2331 = fadd fast float %2305, %2329
  %2332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2265, float %2269, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2333 = extractvalue %dx.types.ResRet.f32 %2332, 0
  %2334 = extractvalue %dx.types.ResRet.f32 %2332, 1
  %2335 = extractvalue %dx.types.ResRet.f32 %2332, 2
  %2336 = extractvalue %dx.types.ResRet.f32 %2332, 3
  %2337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2265, float %2269, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2338 = extractvalue %dx.types.ResRet.f32 %2337, 0
  %2339 = extractvalue %dx.types.ResRet.f32 %2337, 1
  %2340 = extractvalue %dx.types.ResRet.f32 %2337, 2
  %2341 = extractvalue %dx.types.ResRet.f32 %2337, 3
  %2342 = fmul fast float %2333, %2260
  %2343 = fmul fast float %2338, %2260
  %2344 = fmul fast float %2340, %2260
  %2345 = fmul fast float %2336, %2260
  %2346 = fadd fast float %2320, %2342
  %2347 = fadd fast float %2321, %2343
  %2348 = fadd fast float %2322, %2344
  %2349 = fadd fast float %2323, %2345
  %2350 = fmul fast float %2334, %2260
  %2351 = fmul fast float %2339, %2260
  %2352 = fadd fast float %2326, %2350
  %2353 = fadd fast float %2327, %2351
  %2354 = fmul fast float %2335, %2260
  %2355 = fmul fast float %2341, %2260
  %2356 = fadd fast float %2330, %2354
  %2357 = fadd fast float %2331, %2355
  %2358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2359 = extractvalue %dx.types.CBufRet.f32 %2358, 0
  %2360 = fsub fast float %1828, %2359
  %2361 = fsub fast float %2202, %1828
  %2362 = call float @dx.op.binary.f32(i32 35, float %2361, float %2360)  ; FMax(a,b)
  %2363 = extractvalue %dx.types.CBufRet.f32 %2358, 1
  %2364 = fsub fast float %1829, %2363
  %2365 = fsub fast float %2203, %1829
  %2366 = call float @dx.op.binary.f32(i32 35, float %2365, float %2364)  ; FMax(a,b)
  %2367 = call float @dx.op.binary.f32(i32 35, float %2362, float %2366)  ; FMax(a,b)
  %2368 = extractvalue %dx.types.CBufRet.f32 %2206, 3
  %2369 = fmul fast float %2368, %2367
  %2370 = call float @dx.op.unary.f32(i32 7, float %2369)  ; Saturate(value)
  %2371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2372 = extractvalue %dx.types.CBufRet.f32 %2371, 0
  %2373 = extractvalue %dx.types.CBufRet.f32 %2371, 1
  %2374 = extractvalue %dx.types.CBufRet.f32 %2371, 2
  %2375 = extractvalue %dx.types.CBufRet.f32 %2371, 3
  %2376 = fsub fast float %2372, %2346
  %2377 = fsub fast float %2373, %2347
  %2378 = fsub fast float %2374, %2348
  %2379 = fsub fast float %2375, %2349
  %2380 = fmul fast float %2376, %2370
  %2381 = fmul fast float %2377, %2370
  %2382 = fmul fast float %2378, %2370
  %2383 = fmul fast float %2379, %2370
  %2384 = fadd fast float %2380, %2346
  %2385 = fadd fast float %2381, %2347
  %2386 = fadd fast float %2382, %2348
  %2387 = fadd fast float %2383, %2349
  %2388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2389 = extractvalue %dx.types.CBufRet.f32 %2388, 0
  %2390 = extractvalue %dx.types.CBufRet.f32 %2388, 1
  %2391 = fsub fast float %2389, %2352
  %2392 = fsub fast float %2390, %2353
  %2393 = fmul fast float %2391, %2370
  %2394 = fmul fast float %2392, %2370
  %2395 = fadd fast float %2393, %2352
  %2396 = fadd fast float %2394, %2353
  %2397 = extractvalue %dx.types.CBufRet.f32 %2388, 2
  %2398 = extractvalue %dx.types.CBufRet.f32 %2388, 3
  %2399 = fsub fast float %2397, %2356
  %2400 = fsub fast float %2398, %2357
  %2401 = fmul fast float %2399, %2370
  %2402 = fmul fast float %2400, %2370
  %2403 = fadd fast float %2401, %2356
  %2404 = fadd fast float %2402, %2357
  %2405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2406 = extractvalue %dx.types.CBufRet.f32 %2405, 0
  %2407 = fmul fast float %2406, %2384
  %2408 = fmul fast float %2406, %2385
  %2409 = fmul fast float %2406, %2386
  %2410 = fmul fast float %2406, %2387
  %2411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2412 = extractvalue %dx.types.CBufRet.f32 %2411, 0
  %2413 = fmul fast float %2412, %2395
  %2414 = fmul fast float %2412, %2396
  %2415 = fadd fast float %2413, %2407
  %2416 = fadd fast float %2414, %2409
  %2417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2418 = extractvalue %dx.types.CBufRet.f32 %2417, 0
  %2419 = fmul fast float %2418, %2403
  %2420 = fmul fast float %2418, %2404
  %2421 = fadd fast float %2415, %2419
  %2422 = fadd fast float %2416, %2420
  %2423 = extractvalue %dx.types.CBufRet.f32 %2405, 1
  %2424 = fmul fast float %2423, %2384
  %2425 = fmul fast float %2423, %2385
  %2426 = fmul fast float %2423, %2386
  %2427 = fmul fast float %2423, %2387
  %2428 = extractvalue %dx.types.CBufRet.f32 %2411, 1
  %2429 = fmul fast float %2428, %2395
  %2430 = fmul fast float %2428, %2396
  %2431 = fadd fast float %2429, %2424
  %2432 = fadd fast float %2430, %2426
  %2433 = extractvalue %dx.types.CBufRet.f32 %2417, 1
  %2434 = fmul fast float %2433, %2403
  %2435 = fmul fast float %2433, %2404
  %2436 = fadd fast float %2431, %2434
  %2437 = fadd fast float %2432, %2435
  %2438 = extractvalue %dx.types.CBufRet.f32 %2405, 2
  %2439 = fmul fast float %2438, %2384
  %2440 = fmul fast float %2438, %2385
  %2441 = fmul fast float %2438, %2386
  %2442 = fmul fast float %2438, %2387
  %2443 = extractvalue %dx.types.CBufRet.f32 %2411, 2
  %2444 = fmul fast float %2443, %2395
  %2445 = fmul fast float %2443, %2396
  %2446 = fadd fast float %2444, %2439
  %2447 = fadd fast float %2445, %2441
  %2448 = extractvalue %dx.types.CBufRet.f32 %2417, 2
  %2449 = fmul fast float %2448, %2403
  %2450 = fmul fast float %2448, %2404
  %2451 = fadd fast float %2446, %2449
  %2452 = fadd fast float %2447, %2450
  %2453 = fmul fast float %2440, %2440
  %2454 = fmul fast float %2452, %2452
  %2455 = fmul fast float %2442, %2442
  %2456 = fadd fast float %2455, %2453
  %2457 = fadd fast float %2456, %2454
  %2458 = call float @dx.op.unary.f32(i32 24, float %2457)  ; Sqrt(value)
  %2459 = fcmp fast ugt float %2458, 0.000000e+00
  br i1 %2459, label %2460, label %2475

; <label>:2460                                    ; preds = %2194
  %2461 = fsub fast float -0.000000e+00, %2442
  %2462 = fdiv fast float %2461, %2458
  %2463 = fsub fast float -0.000000e+00, %2440
  %2464 = fdiv fast float %2463, %2458
  %2465 = fdiv fast float %2452, %2458
  %2466 = fmul fast float %2451, 0x3FE279A760000000
  %2467 = fmul fast float %2464, %2440
  %2468 = fmul fast float %2465, %2452
  %2469 = fmul fast float %2462, %2442
  %2470 = fadd fast float %2467, %2469
  %2471 = fsub fast float %2470, %2468
  %2472 = call float @dx.op.unary.f32(i32 6, float %2471)  ; FAbs(value)
  %2473 = fadd fast float %2472, 0x3DDB7CDFE0000000
  %2474 = fdiv fast float %2466, %2473
  br label %2475

; <label>:2475                                    ; preds = %2460, %2194
  %2476 = phi float [ %2474, %2460 ], [ 1.000000e+00, %2194 ]
  %2477 = fmul fast float %2425, %2425
  %2478 = fmul fast float %2437, %2437
  %2479 = fmul fast float %2427, %2427
  %2480 = fadd fast float %2479, %2477
  %2481 = fadd fast float %2480, %2478
  %2482 = call float @dx.op.unary.f32(i32 24, float %2481)  ; Sqrt(value)
  %2483 = fcmp fast ugt float %2482, 0.000000e+00
  br i1 %2483, label %2484, label %2499

; <label>:2484                                    ; preds = %2475
  %2485 = fsub fast float -0.000000e+00, %2427
  %2486 = fdiv fast float %2485, %2482
  %2487 = fsub fast float -0.000000e+00, %2425
  %2488 = fdiv fast float %2487, %2482
  %2489 = fdiv fast float %2437, %2482
  %2490 = fmul fast float %2436, 0x3FE279A760000000
  %2491 = fmul fast float %2488, %2425
  %2492 = fmul fast float %2489, %2437
  %2493 = fmul fast float %2486, %2427
  %2494 = fadd fast float %2491, %2493
  %2495 = fsub fast float %2494, %2492
  %2496 = call float @dx.op.unary.f32(i32 6, float %2495)  ; FAbs(value)
  %2497 = fadd fast float %2496, 0x3DDB7CDFE0000000
  %2498 = fdiv fast float %2490, %2497
  br label %2499

; <label>:2499                                    ; preds = %2484, %2475
  %2500 = phi float [ %2498, %2484 ], [ 1.000000e+00, %2475 ]
  %2501 = call float @dx.op.binary.f32(i32 36, float %2500, float %2476)  ; FMin(a,b)
  %2502 = fmul fast float %2408, %2408
  %2503 = fmul fast float %2422, %2422
  %2504 = fmul fast float %2410, %2410
  %2505 = fadd fast float %2504, %2502
  %2506 = fadd fast float %2505, %2503
  %2507 = call float @dx.op.unary.f32(i32 24, float %2506)  ; Sqrt(value)
  %2508 = fcmp fast ugt float %2507, 0.000000e+00
  br i1 %2508, label %2509, label %2524

; <label>:2509                                    ; preds = %2499
  %2510 = fsub fast float -0.000000e+00, %2410
  %2511 = fdiv fast float %2510, %2507
  %2512 = fsub fast float -0.000000e+00, %2408
  %2513 = fdiv fast float %2512, %2507
  %2514 = fdiv fast float %2422, %2507
  %2515 = fmul fast float %2421, 0x3FE279A760000000
  %2516 = fmul fast float %2513, %2408
  %2517 = fmul fast float %2514, %2422
  %2518 = fmul fast float %2511, %2410
  %2519 = fadd fast float %2516, %2518
  %2520 = fsub fast float %2519, %2517
  %2521 = call float @dx.op.unary.f32(i32 6, float %2520)  ; FAbs(value)
  %2522 = fadd fast float %2521, 0x3DDB7CDFE0000000
  %2523 = fdiv fast float %2515, %2522
  br label %2524

; <label>:2524                                    ; preds = %2509, %2499
  %2525 = phi float [ %2523, %2509 ], [ 1.000000e+00, %2499 ]
  %2526 = call float @dx.op.binary.f32(i32 36, float %2525, float %2501)  ; FMin(a,b)
  %2527 = call float @dx.op.unary.f32(i32 7, float %2526)  ; Saturate(value)
  %2528 = fcmp fast olt float %2527, 1.000000e+00
  br i1 %2528, label %2529, label %2539

; <label>:2529                                    ; preds = %2524
  %2530 = fmul fast float %2527, %2408
  %2531 = fmul fast float %2527, %2422
  %2532 = fmul fast float %2527, %2410
  %2533 = fmul fast float %2527, %2425
  %2534 = fmul fast float %2527, %2437
  %2535 = fmul fast float %2527, %2427
  %2536 = fmul fast float %2527, %2440
  %2537 = fmul fast float %2527, %2452
  %2538 = fmul fast float %2527, %2442
  br label %2539

; <label>:2539                                    ; preds = %2529, %2524
  %2540 = phi float [ %2536, %2529 ], [ %2440, %2524 ]
  %2541 = phi float [ %2537, %2529 ], [ %2452, %2524 ]
  %2542 = phi float [ %2538, %2529 ], [ %2442, %2524 ]
  %2543 = phi float [ %2533, %2529 ], [ %2425, %2524 ]
  %2544 = phi float [ %2534, %2529 ], [ %2437, %2524 ]
  %2545 = phi float [ %2535, %2529 ], [ %2427, %2524 ]
  %2546 = phi float [ %2530, %2529 ], [ %2408, %2524 ]
  %2547 = phi float [ %2531, %2529 ], [ %2422, %2524 ]
  %2548 = phi float [ %2532, %2529 ], [ %2410, %2524 ]
  %2549 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2421)  ; FMax(a,b)
  %2550 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2436)  ; FMax(a,b)
  %2551 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2451)  ; FMax(a,b)
  %2552 = fcmp fast oge float %2209, 0.000000e+00
  %2553 = and i1 %2552, %1980
  %2554 = fcmp fast ole float %2209, 1.000000e+00
  %2555 = and i1 %2554, %2553
  %2556 = fcmp fast oge float %2210, 0.000000e+00
  %2557 = and i1 %2556, %2555
  %2558 = fcmp fast ole float %2210, 1.000000e+00
  %2559 = and i1 %2558, %2557
  br i1 %2559, label %2560, label %2705, !dx.controlflow.hints !109

; <label>:2560                                    ; preds = %2539
  %2561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2562 = extractvalue %dx.types.CBufRet.f32 %2561, 2
  %2563 = extractvalue %dx.types.CBufRet.f32 %2561, 3
  %2564 = fmul fast float %2562, %2209
  %2565 = fmul fast float %2563, %2210
  %2566 = call float @dx.op.unary.f32(i32 27, float %2564)  ; Round_ni(value)
  %2567 = call float @dx.op.unary.f32(i32 27, float %2565)  ; Round_ni(value)
  %2568 = fptosi float %2566 to i32
  %2569 = fptosi float %2567 to i32
  %2570 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %53, i32 0, i32 %2568, i32 %2569, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = and i32 %2571, 65535
  %2573 = lshr i32 %2571, 16
  %2574 = icmp eq i32 %2572, 65535
  br i1 %2574, label %2611, label %2575

; <label>:2575                                    ; preds = %2560
  %2576 = extractvalue %dx.types.CBufRet.f32 %1978, 1
  %2577 = extractvalue %dx.types.CBufRet.f32 %2561, 0
  %2578 = extractvalue %dx.types.CBufRet.f32 %2561, 1
  %2579 = fmul fast float %2577, %2209
  %2580 = fmul fast float %2578, %2210
  %2581 = fmul fast float %2579, 1.250000e-01
  %2582 = fmul fast float %2580, 1.250000e-01
  %2583 = call float @dx.op.unary.f32(i32 27, float %2581)  ; Round_ni(value)
  %2584 = call float @dx.op.unary.f32(i32 27, float %2582)  ; Round_ni(value)
  %2585 = fmul fast float %2583, 8.000000e+00
  %2586 = fmul fast float %2584, 8.000000e+00
  %2587 = and i32 %2571, 255
  %2588 = lshr i32 %2571, 8
  %2589 = and i32 %2588, 255
  %2590 = mul nuw nsw i32 %2587, 9
  %2591 = uitofp i32 %2590 to float
  %2592 = mul nuw nsw i32 %2589, 9
  %2593 = uitofp i32 %2592 to float
  %2594 = fadd fast float %2591, 5.000000e-01
  %2595 = fadd fast float %2594, %2579
  %2596 = fsub fast float %2595, %2585
  %2597 = fadd fast float %2593, 5.000000e-01
  %2598 = fadd fast float %2597, %2580
  %2599 = fsub fast float %2598, %2586
  %2600 = fdiv fast float %2596, %1979
  %2601 = fdiv fast float %2599, %2576
  %2602 = fmul fast float %2237, 4.375000e-01
  %2603 = fadd fast float %2602, 3.125000e-02
  %2604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %2600, float %2601, float %2603, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2605 = extractvalue %dx.types.ResRet.f32 %2604, 0
  %2606 = extractvalue %dx.types.ResRet.f32 %2604, 1
  %2607 = extractvalue %dx.types.ResRet.f32 %2604, 2
  %2608 = fadd fast float %2605, %2549
  %2609 = fadd fast float %2606, %2550
  %2610 = fadd fast float %2607, %2551
  br label %2611

; <label>:2611                                    ; preds = %2575, %2560
  %2612 = phi float [ %2610, %2575 ], [ %2551, %2560 ]
  %2613 = phi float [ %2609, %2575 ], [ %2550, %2560 ]
  %2614 = phi float [ %2608, %2575 ], [ %2549, %2560 ]
  %2615 = icmp eq i32 %2573, 65535
  br i1 %2615, label %2705, label %2616

; <label>:2616                                    ; preds = %2611
  %2617 = extractvalue %dx.types.CBufRet.f32 %1978, 1
  %2618 = extractvalue %dx.types.CBufRet.f32 %2561, 0
  %2619 = extractvalue %dx.types.CBufRet.f32 %2561, 1
  %2620 = fmul fast float %2618, %2209
  %2621 = fmul fast float %2619, %2210
  %2622 = fmul fast float %2620, 1.250000e-01
  %2623 = fmul fast float %2621, 1.250000e-01
  %2624 = call float @dx.op.unary.f32(i32 27, float %2622)  ; Round_ni(value)
  %2625 = call float @dx.op.unary.f32(i32 27, float %2623)  ; Round_ni(value)
  %2626 = fmul fast float %2624, 8.000000e+00
  %2627 = fmul fast float %2625, 8.000000e+00
  %2628 = fsub fast float %2620, %2626
  %2629 = fsub fast float %2621, %2627
  %2630 = fadd fast float %2628, 5.000000e-01
  %2631 = fadd fast float %2629, 5.000000e-01
  %2632 = and i32 %2573, 255
  %2633 = lshr i32 %2571, 24
  %2634 = mul nuw nsw i32 %2632, 9
  %2635 = uitofp i32 %2634 to float
  %2636 = mul nuw nsw i32 %2633, 9
  %2637 = uitofp i32 %2636 to float
  %2638 = fadd fast float %2630, %2635
  %2639 = fadd fast float %2631, %2637
  %2640 = fdiv fast float %2638, %1979
  %2641 = fdiv fast float %2639, %2617
  %2642 = fmul fast float %2237, 4.375000e-01
  %2643 = fadd fast float %2642, 3.125000e-02
  %2644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %2640, float %2641, float %2643, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2645 = extractvalue %dx.types.ResRet.f32 %2644, 0
  %2646 = extractvalue %dx.types.ResRet.f32 %2644, 1
  %2647 = extractvalue %dx.types.ResRet.f32 %2644, 2
  %2648 = fadd fast float %2642, 5.312500e-01
  %2649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %2640, float %2641, float %2648, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2650 = extractvalue %dx.types.ResRet.f32 %2649, 0
  %2651 = extractvalue %dx.types.ResRet.f32 %2649, 1
  %2652 = extractvalue %dx.types.ResRet.f32 %2649, 2
  %2653 = fmul fast float %2650, 2.000000e+00
  %2654 = fmul fast float %2651, 2.000000e+00
  %2655 = fmul fast float %2652, 2.000000e+00
  %2656 = fadd fast float %2653, -1.000000e+00
  %2657 = fadd fast float %2654, -1.000000e+00
  %2658 = fadd fast float %2655, -1.000000e+00
  %2659 = fmul fast float %2656, %2656
  %2660 = fmul fast float %2657, %2657
  %2661 = fadd fast float %2659, %2660
  %2662 = fmul fast float %2658, %2658
  %2663 = fadd fast float %2661, %2662
  %2664 = call float @dx.op.unary.f32(i32 24, float %2663)  ; Sqrt(value)
  %2665 = fcmp fast ogt float %2664, 0.000000e+00
  br i1 %2665, label %2666, label %2670

; <label>:2666                                    ; preds = %2616
  %2667 = fdiv fast float %2656, %2664
  %2668 = fdiv fast float %2657, %2664
  %2669 = fdiv fast float %2658, %2664
  br label %2670

; <label>:2670                                    ; preds = %2666, %2616
  %2671 = phi float [ %2667, %2666 ], [ 0.000000e+00, %2616 ]
  %2672 = phi float [ %2668, %2666 ], [ 0.000000e+00, %2616 ]
  %2673 = phi float [ %2669, %2666 ], [ 0.000000e+00, %2616 ]
  %2674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2675 = extractvalue %dx.types.CBufRet.f32 %2674, 0
  %2676 = extractvalue %dx.types.CBufRet.f32 %2674, 1
  %2677 = fsub fast float %1828, %2675
  %2678 = fsub fast float %1829, %2676
  %2679 = fmul fast float %2677, %2677
  %2680 = fmul fast float %2678, %2678
  %2681 = fadd fast float %2679, %2680
  %2682 = call float @dx.op.unary.f32(i32 24, float %2681)  ; Sqrt(value)
  %2683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2684 = extractvalue %dx.types.CBufRet.f32 %2683, 0
  %2685 = extractvalue %dx.types.CBufRet.f32 %2683, 1
  %2686 = fsub fast float %2682, %2684
  %2687 = fdiv fast float %2686, %2685
  %2688 = call float @dx.op.unary.f32(i32 7, float %2687)  ; Saturate(value)
  %2689 = fmul fast float %2688, 2.000000e+00
  %2690 = fsub fast float 3.000000e+00, %2689
  %2691 = fmul fast float %2688, %2688
  %2692 = fmul fast float %2691, %2690
  %2693 = call float @dx.op.dot3.f32(i32 55, float %2671, float %2672, float %2673, float %1750, float %1751, float %1752)  ; Dot3(ax,ay,az,bx,by,bz)
  %2694 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2693)  ; FMax(a,b)
  %2695 = fmul fast float %2694, 0x400C5BF8A0000000
  %2696 = fmul fast float %2692, %2645
  %2697 = fmul fast float %2696, %2695
  %2698 = fadd fast float %2697, %2614
  %2699 = fmul fast float %2692, %2646
  %2700 = fmul fast float %2699, %2695
  %2701 = fadd fast float %2700, %2613
  %2702 = fmul fast float %2692, %2647
  %2703 = fmul fast float %2702, %2695
  %2704 = fadd fast float %2703, %2612
  br label %2705

; <label>:2705                                    ; preds = %2670, %2611, %2539
  %2706 = phi float [ %2704, %2670 ], [ %2612, %2611 ], [ %2551, %2539 ]
  %2707 = phi float [ %2701, %2670 ], [ %2613, %2611 ], [ %2550, %2539 ]
  %2708 = phi float [ %2698, %2670 ], [ %2614, %2611 ], [ %2549, %2539 ]
  %2709 = fcmp fast ogt float %2196, %2233
  %2710 = and i1 %2552, %2709
  %2711 = and i1 %2554, %2710
  %2712 = and i1 %2556, %2711
  %2713 = and i1 %2558, %2712
  br i1 %2713, label %2714, label %2771, !dx.controlflow.hints !110

; <label>:2714                                    ; preds = %2705
  %2715 = fmul fast float %2235, 0x3FC24924A0000000
  %2716 = fsub fast float %2196, %2233
  %2717 = fdiv fast float %2716, %2715
  %2718 = call float @dx.op.unary.f32(i32 7, float %2717)  ; Saturate(value)
  %2719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2720 = extractvalue %dx.types.CBufRet.f32 %2719, 0
  %2721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2722 = extractvalue %dx.types.CBufRet.f32 %2721, 0
  %2723 = extractvalue %dx.types.CBufRet.f32 %2721, 1
  %2724 = extractvalue %dx.types.CBufRet.f32 %2721, 2
  %2725 = fsub fast float %2720, %2708
  %2726 = fsub fast float %2722, %2546
  %2727 = fsub fast float %2723, %2547
  %2728 = fsub fast float %2724, %2548
  %2729 = fmul fast float %2725, %2718
  %2730 = fmul fast float %2726, %2718
  %2731 = fmul fast float %2727, %2718
  %2732 = fmul fast float %2728, %2718
  %2733 = fadd fast float %2729, %2708
  %2734 = fadd fast float %2730, %2546
  %2735 = fadd fast float %2731, %2547
  %2736 = fadd fast float %2732, %2548
  %2737 = extractvalue %dx.types.CBufRet.f32 %2719, 1
  %2738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2739 = extractvalue %dx.types.CBufRet.f32 %2738, 0
  %2740 = extractvalue %dx.types.CBufRet.f32 %2738, 1
  %2741 = extractvalue %dx.types.CBufRet.f32 %2738, 2
  %2742 = fsub fast float %2737, %2707
  %2743 = fsub fast float %2739, %2543
  %2744 = fsub fast float %2740, %2544
  %2745 = fsub fast float %2741, %2545
  %2746 = fmul fast float %2742, %2718
  %2747 = fmul fast float %2743, %2718
  %2748 = fmul fast float %2744, %2718
  %2749 = fmul fast float %2745, %2718
  %2750 = fadd fast float %2746, %2707
  %2751 = fadd fast float %2747, %2543
  %2752 = fadd fast float %2748, %2544
  %2753 = fadd fast float %2749, %2545
  %2754 = extractvalue %dx.types.CBufRet.f32 %2719, 2
  %2755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2756 = extractvalue %dx.types.CBufRet.f32 %2755, 0
  %2757 = extractvalue %dx.types.CBufRet.f32 %2755, 1
  %2758 = extractvalue %dx.types.CBufRet.f32 %2755, 2
  %2759 = fsub fast float %2754, %2706
  %2760 = fsub fast float %2756, %2540
  %2761 = fsub fast float %2757, %2541
  %2762 = fsub fast float %2758, %2542
  %2763 = fmul fast float %2759, %2718
  %2764 = fmul fast float %2760, %2718
  %2765 = fmul fast float %2761, %2718
  %2766 = fmul fast float %2762, %2718
  %2767 = fadd fast float %2763, %2706
  %2768 = fadd fast float %2764, %2540
  %2769 = fadd fast float %2765, %2541
  %2770 = fadd fast float %2766, %2542
  br label %2771

; <label>:2771                                    ; preds = %2714, %2705
  %2772 = phi float [ %2767, %2714 ], [ %2706, %2705 ]
  %2773 = phi float [ %2768, %2714 ], [ %2540, %2705 ]
  %2774 = phi float [ %2769, %2714 ], [ %2541, %2705 ]
  %2775 = phi float [ %2770, %2714 ], [ %2542, %2705 ]
  %2776 = phi float [ %2750, %2714 ], [ %2707, %2705 ]
  %2777 = phi float [ %2751, %2714 ], [ %2543, %2705 ]
  %2778 = phi float [ %2752, %2714 ], [ %2544, %2705 ]
  %2779 = phi float [ %2753, %2714 ], [ %2545, %2705 ]
  %2780 = phi float [ %2733, %2714 ], [ %2708, %2705 ]
  %2781 = phi float [ %2734, %2714 ], [ %2546, %2705 ]
  %2782 = phi float [ %2735, %2714 ], [ %2547, %2705 ]
  %2783 = phi float [ %2736, %2714 ], [ %2548, %2705 ]
  %2784 = extractvalue %dx.types.CBufRet.f32 %2358, 3
  %2785 = fmul fast float %2784, %2780
  %2786 = fmul fast float %2784, %2776
  %2787 = fmul fast float %2784, %2772
  %2788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2789 = extractvalue %dx.types.CBufRet.f32 %2788, 3
  %2790 = fmul fast float %2785, %2789
  %2791 = fmul fast float %2786, %2789
  %2792 = fmul fast float %2787, %2789
  %2793 = call float @dx.op.dot3.f32(i32 55, float %2790, float %2791, float %2792, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2794 = fmul fast float %2793, 0x3FD20DD760000000
  %2795 = fmul fast float %2781, 1.500000e+00
  %2796 = fmul fast float %2795, %2784
  %2797 = fmul fast float %2796, %2789
  %2798 = fmul fast float %2782, 1.500000e+00
  %2799 = fmul fast float %2798, %2784
  %2800 = fmul fast float %2799, %2789
  %2801 = fmul fast float %2783, 1.500000e+00
  %2802 = fmul fast float %2801, %2784
  %2803 = fmul fast float %2802, %2789
  %2804 = fmul fast float %2777, 1.500000e+00
  %2805 = fmul fast float %2804, %2784
  %2806 = fmul fast float %2805, %2789
  %2807 = fmul fast float %2778, 1.500000e+00
  %2808 = fmul fast float %2807, %2784
  %2809 = fmul fast float %2808, %2789
  %2810 = fmul fast float %2779, 1.500000e+00
  %2811 = fmul fast float %2810, %2784
  %2812 = fmul fast float %2811, %2789
  %2813 = fmul fast float %2773, 1.500000e+00
  %2814 = fmul fast float %2813, %2784
  %2815 = fmul fast float %2814, %2789
  %2816 = fmul fast float %2774, 1.500000e+00
  %2817 = fmul fast float %2816, %2784
  %2818 = fmul fast float %2817, %2789
  %2819 = fmul fast float %2775, 1.500000e+00
  %2820 = fmul fast float %2819, %2784
  %2821 = fmul fast float %2820, %2789
  %2822 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2790)  ; FMax(a,b)
  %2823 = call float @dx.op.dot3.f32(i32 55, float %2797, float %2800, float %2803, float %2797, float %2800, float %2803)  ; Dot3(ax,ay,az,bx,by,bz)
  %2824 = fcmp fast oeq float %2823, 0.000000e+00
  %2825 = fcmp fast oeq float %2822, 0.000000e+00
  %2826 = or i1 %2825, %2824
  br i1 %2826, label %2856, label %2827

; <label>:2827                                    ; preds = %2771
  %2828 = fsub fast float -0.000000e+00, %2803
  %2829 = fsub fast float -0.000000e+00, %2797
  %2830 = call float @dx.op.unary.f32(i32 24, float %2823)  ; Sqrt(value)
  %2831 = fdiv fast float %2830, %2822
  %2832 = fcmp fast ogt float %2831, 0x3FFB6F8900000000
  %2833 = select i1 %2832, float 0x3FFB6F8900000000, float %2831
  %2834 = fmul fast float %2833, 0x3FE8A23460000000
  %2835 = call float @dx.op.unary.f32(i32 7, float %2834)  ; Saturate(value)
  %2836 = call float @dx.op.binary.f32(i32 35, float %2833, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2837 = fmul fast float %2835, %2822
  %2838 = fmul fast float %2836, 0x3FF279A740000000
  %2839 = fadd fast float %2838, -1.000000e+00
  %2840 = call float @dx.op.dot3.f32(i32 55, float %2828, float %2829, float %2800, float %2828, float %2829, float %2800)  ; Dot3(ax,ay,az,bx,by,bz)
  %2841 = call float @dx.op.unary.f32(i32 25, float %2840)  ; Rsqrt(value)
  %2842 = fmul fast float %2841, %2828
  %2843 = fmul fast float %2841, %2829
  %2844 = fmul fast float %2841, %2800
  %2845 = fmul fast float %2839, %2839
  %2846 = fsub fast float 1.000000e+00, %2845
  %2847 = fmul fast float %2836, 0x40005F8BE0000000
  %2848 = fsub fast float 0x400C5BF8A0000000, %2847
  %2849 = fdiv fast float %2837, %2848
  %2850 = fmul fast float %2849, 0x3FEE31C3C0000000
  %2851 = fmul fast float %2850, %2846
  %2852 = fmul fast float %2836, 0x3FDACB7480000000
  %2853 = fadd fast float %2852, 0xBFD7347680000000
  %2854 = fmul fast float %2853, %2849
  %2855 = fmul fast float %2854, %2846
  br label %2856

; <label>:2856                                    ; preds = %2827, %2771
  %2857 = phi float [ %2842, %2827 ], [ 0.000000e+00, %2771 ]
  %2858 = phi float [ %2843, %2827 ], [ 0.000000e+00, %2771 ]
  %2859 = phi float [ %2844, %2827 ], [ 0.000000e+00, %2771 ]
  %2860 = phi float [ %2851, %2827 ], [ 0.000000e+00, %2771 ]
  %2861 = phi float [ %2855, %2827 ], [ 0.000000e+00, %2771 ]
  %2862 = call float @dx.op.dot3.f32(i32 55, float %2857, float %2858, float %2859, float %1750, float %1751, float %1752)  ; Dot3(ax,ay,az,bx,by,bz)
  %2863 = fmul fast float %2862, %2862
  %2864 = fmul fast float %2863, 0x3FEE471020000000
  %2865 = fadd fast float %2864, 0xBFD42F6020000000
  %2866 = fmul fast float %2822, 0x3FD20DD760000000
  %2867 = fmul fast float %2865, %2861
  %2868 = fmul fast float %2860, 0x3FDF454380000000
  %2869 = fmul fast float %2868, %2862
  %2870 = fadd fast float %2869, %2866
  %2871 = fadd fast float %2870, %2867
  %2872 = call float @dx.op.dot3.f32(i32 55, float %2857, float %2858, float %2859, float %1806, float %1807, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %2873 = fmul fast float %2872, 0x3FDF454380000000
  %2874 = fmul fast float %2872, %2872
  %2875 = fmul fast float %2874, 0x3FEE471020000000
  %2876 = fadd fast float %2875, 0xBFD42F6020000000
  %2877 = call float @dx.op.dot3.f32(i32 55, float %2822, float %2860, float %2861, float 0x3FD20DD760000000, float %2873, float %2876)  ; Dot3(ax,ay,az,bx,by,bz)
  %2878 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2791)  ; FMax(a,b)
  %2879 = call float @dx.op.dot3.f32(i32 55, float %2806, float %2809, float %2812, float %2806, float %2809, float %2812)  ; Dot3(ax,ay,az,bx,by,bz)
  %2880 = fcmp fast oeq float %2879, 0.000000e+00
  %2881 = fcmp fast oeq float %2878, 0.000000e+00
  %2882 = or i1 %2881, %2880
  br i1 %2882, label %2912, label %2883

; <label>:2883                                    ; preds = %2856
  %2884 = fsub fast float -0.000000e+00, %2812
  %2885 = fsub fast float -0.000000e+00, %2806
  %2886 = call float @dx.op.unary.f32(i32 24, float %2879)  ; Sqrt(value)
  %2887 = fdiv fast float %2886, %2878
  %2888 = fcmp fast ogt float %2887, 0x3FFB6F8900000000
  %2889 = select i1 %2888, float 0x3FFB6F8900000000, float %2887
  %2890 = fmul fast float %2889, 0x3FE8A23460000000
  %2891 = call float @dx.op.unary.f32(i32 7, float %2890)  ; Saturate(value)
  %2892 = call float @dx.op.binary.f32(i32 35, float %2889, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2893 = fmul fast float %2891, %2878
  %2894 = fmul fast float %2892, 0x3FF279A740000000
  %2895 = fadd fast float %2894, -1.000000e+00
  %2896 = call float @dx.op.dot3.f32(i32 55, float %2884, float %2885, float %2809, float %2884, float %2885, float %2809)  ; Dot3(ax,ay,az,bx,by,bz)
  %2897 = call float @dx.op.unary.f32(i32 25, float %2896)  ; Rsqrt(value)
  %2898 = fmul fast float %2897, %2884
  %2899 = fmul fast float %2897, %2885
  %2900 = fmul fast float %2897, %2809
  %2901 = fmul fast float %2895, %2895
  %2902 = fsub fast float 1.000000e+00, %2901
  %2903 = fmul fast float %2892, 0x40005F8BE0000000
  %2904 = fsub fast float 0x400C5BF8A0000000, %2903
  %2905 = fdiv fast float %2893, %2904
  %2906 = fmul fast float %2905, 0x3FEE31C3C0000000
  %2907 = fmul fast float %2906, %2902
  %2908 = fmul fast float %2892, 0x3FDACB7480000000
  %2909 = fadd fast float %2908, 0xBFD7347680000000
  %2910 = fmul fast float %2909, %2905
  %2911 = fmul fast float %2910, %2902
  br label %2912

; <label>:2912                                    ; preds = %2883, %2856
  %2913 = phi float [ %2898, %2883 ], [ 0.000000e+00, %2856 ]
  %2914 = phi float [ %2899, %2883 ], [ 0.000000e+00, %2856 ]
  %2915 = phi float [ %2900, %2883 ], [ 0.000000e+00, %2856 ]
  %2916 = phi float [ %2907, %2883 ], [ 0.000000e+00, %2856 ]
  %2917 = phi float [ %2911, %2883 ], [ 0.000000e+00, %2856 ]
  %2918 = call float @dx.op.dot3.f32(i32 55, float %2913, float %2914, float %2915, float %1750, float %1751, float %1752)  ; Dot3(ax,ay,az,bx,by,bz)
  %2919 = fmul fast float %2918, %2918
  %2920 = fmul fast float %2919, 0x3FEE471020000000
  %2921 = fadd fast float %2920, 0xBFD42F6020000000
  %2922 = fmul fast float %2878, 0x3FD20DD760000000
  %2923 = fmul fast float %2921, %2917
  %2924 = fmul fast float %2916, 0x3FDF454380000000
  %2925 = fmul fast float %2924, %2918
  %2926 = fadd fast float %2925, %2922
  %2927 = fadd fast float %2926, %2923
  %2928 = call float @dx.op.dot3.f32(i32 55, float %2913, float %2914, float %2915, float %1806, float %1807, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %2929 = fmul fast float %2928, 0x3FDF454380000000
  %2930 = fmul fast float %2928, %2928
  %2931 = fmul fast float %2930, 0x3FEE471020000000
  %2932 = fadd fast float %2931, 0xBFD42F6020000000
  %2933 = call float @dx.op.dot3.f32(i32 55, float %2878, float %2916, float %2917, float 0x3FD20DD760000000, float %2929, float %2932)  ; Dot3(ax,ay,az,bx,by,bz)
  %2934 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2792)  ; FMax(a,b)
  %2935 = call float @dx.op.dot3.f32(i32 55, float %2815, float %2818, float %2821, float %2815, float %2818, float %2821)  ; Dot3(ax,ay,az,bx,by,bz)
  %2936 = fcmp fast oeq float %2935, 0.000000e+00
  %2937 = fcmp fast oeq float %2934, 0.000000e+00
  %2938 = or i1 %2937, %2936
  br i1 %2938, label %2968, label %2939

; <label>:2939                                    ; preds = %2912
  %2940 = fsub fast float -0.000000e+00, %2821
  %2941 = fsub fast float -0.000000e+00, %2815
  %2942 = call float @dx.op.unary.f32(i32 24, float %2935)  ; Sqrt(value)
  %2943 = fdiv fast float %2942, %2934
  %2944 = fcmp fast ogt float %2943, 0x3FFB6F8900000000
  %2945 = select i1 %2944, float 0x3FFB6F8900000000, float %2943
  %2946 = fmul fast float %2945, 0x3FE8A23460000000
  %2947 = call float @dx.op.unary.f32(i32 7, float %2946)  ; Saturate(value)
  %2948 = call float @dx.op.binary.f32(i32 35, float %2945, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2949 = fmul fast float %2947, %2934
  %2950 = fmul fast float %2948, 0x3FF279A740000000
  %2951 = fadd fast float %2950, -1.000000e+00
  %2952 = call float @dx.op.dot3.f32(i32 55, float %2940, float %2941, float %2818, float %2940, float %2941, float %2818)  ; Dot3(ax,ay,az,bx,by,bz)
  %2953 = call float @dx.op.unary.f32(i32 25, float %2952)  ; Rsqrt(value)
  %2954 = fmul fast float %2953, %2940
  %2955 = fmul fast float %2953, %2941
  %2956 = fmul fast float %2953, %2818
  %2957 = fmul fast float %2951, %2951
  %2958 = fsub fast float 1.000000e+00, %2957
  %2959 = fmul fast float %2948, 0x40005F8BE0000000
  %2960 = fsub fast float 0x400C5BF8A0000000, %2959
  %2961 = fdiv fast float %2949, %2960
  %2962 = fmul fast float %2961, 0x3FEE31C3C0000000
  %2963 = fmul fast float %2962, %2958
  %2964 = fmul fast float %2948, 0x3FDACB7480000000
  %2965 = fadd fast float %2964, 0xBFD7347680000000
  %2966 = fmul fast float %2965, %2961
  %2967 = fmul fast float %2966, %2958
  br label %2968

; <label>:2968                                    ; preds = %2939, %2912
  %2969 = phi float [ %2954, %2939 ], [ 0.000000e+00, %2912 ]
  %2970 = phi float [ %2955, %2939 ], [ 0.000000e+00, %2912 ]
  %2971 = phi float [ %2956, %2939 ], [ 0.000000e+00, %2912 ]
  %2972 = phi float [ %2963, %2939 ], [ 0.000000e+00, %2912 ]
  %2973 = phi float [ %2967, %2939 ], [ 0.000000e+00, %2912 ]
  %2974 = call float @dx.op.dot3.f32(i32 55, float %2969, float %2970, float %2971, float %1750, float %1751, float %1752)  ; Dot3(ax,ay,az,bx,by,bz)
  %2975 = fmul fast float %2974, %2974
  %2976 = fmul fast float %2975, 0x3FEE471020000000
  %2977 = fadd fast float %2976, 0xBFD42F6020000000
  %2978 = fmul fast float %2934, 0x3FD20DD760000000
  %2979 = fmul fast float %2977, %2973
  %2980 = fmul fast float %2972, 0x3FDF454380000000
  %2981 = fmul fast float %2980, %2974
  %2982 = fadd fast float %2981, %2978
  %2983 = fadd fast float %2982, %2979
  %2984 = call float @dx.op.dot3.f32(i32 55, float %2969, float %2970, float %2971, float %1806, float %1807, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %2985 = fmul fast float %2984, 0x3FDF454380000000
  %2986 = fmul fast float %2984, %2984
  %2987 = fmul fast float %2986, 0x3FEE471020000000
  %2988 = fadd fast float %2987, 0xBFD42F6020000000
  %2989 = call float @dx.op.dot3.f32(i32 55, float %2934, float %2972, float %2973, float 0x3FD20DD760000000, float %2985, float %2988)  ; Dot3(ax,ay,az,bx,by,bz)
  %2990 = call float @dx.op.binary.f32(i32 35, float %2871, float 0.000000e+00)  ; FMax(a,b)
  %2991 = call float @dx.op.binary.f32(i32 35, float %2927, float 0.000000e+00)  ; FMax(a,b)
  %2992 = call float @dx.op.binary.f32(i32 35, float %2983, float 0.000000e+00)  ; FMax(a,b)
  %2993 = call float @dx.op.binary.f32(i32 35, float %2877, float 0.000000e+00)  ; FMax(a,b)
  %2994 = call float @dx.op.binary.f32(i32 35, float %2933, float 0.000000e+00)  ; FMax(a,b)
  %2995 = call float @dx.op.binary.f32(i32 35, float %2989, float 0.000000e+00)  ; FMax(a,b)
  %2996 = fsub fast float %2190, %2990
  %2997 = fsub fast float %2191, %2991
  %2998 = fsub fast float %2192, %2992
  %2999 = fmul fast float %2996, %1869
  %3000 = fmul fast float %2997, %1869
  %3001 = fmul fast float %2998, %1869
  %3002 = fadd fast float %2999, %2990
  %3003 = fadd fast float %3000, %2991
  %3004 = fadd fast float %3001, %2992
  %3005 = fsub fast float %2187, %2993
  %3006 = fsub fast float %2188, %2994
  %3007 = fsub fast float %2189, %2995
  %3008 = fmul fast float %3005, %1869
  %3009 = fmul fast float %3006, %1869
  %3010 = fmul fast float %3007, %1869
  %3011 = fadd fast float %3008, %2993
  %3012 = fadd fast float %3009, %2994
  %3013 = fadd fast float %3010, %2995
  %3014 = fsub fast float %1971, %2794
  %3015 = fmul fast float %3014, %1869
  %3016 = fadd fast float %3015, %2794
  br label %3017

; <label>:3017                                    ; preds = %2968, %2186
  %3018 = phi float [ %3016, %2968 ], [ %1971, %2186 ]
  %3019 = phi float [ %3011, %2968 ], [ %2187, %2186 ]
  %3020 = phi float [ %3012, %2968 ], [ %2188, %2186 ]
  %3021 = phi float [ %3013, %2968 ], [ %2189, %2186 ]
  %3022 = phi float [ %3002, %2968 ], [ %2190, %2186 ]
  %3023 = phi float [ %3003, %2968 ], [ %2191, %2186 ]
  %3024 = phi float [ %3004, %2968 ], [ %2192, %2186 ]
  %3025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3026 = extractvalue %dx.types.CBufRet.f32 %3025, 0
  %3027 = call float @dx.op.binary.f32(i32 36, float %1756, float %3026)  ; FMin(a,b)
  %3028 = fmul fast float %3027, %1810
  %3029 = fsub fast float 1.000000e+00, %3028
  %3030 = bitcast float %3029 to i32
  %3031 = sub nsw i32 2129859010, %3030
  %3032 = bitcast i32 %3031 to float
  %3033 = call float @dx.op.binary.f32(i32 36, float %1757, float %3026)  ; FMin(a,b)
  %3034 = fmul fast float %3033, %1810
  %3035 = fsub fast float 1.000000e+00, %3034
  %3036 = bitcast float %3035 to i32
  %3037 = sub nsw i32 2129859010, %3036
  %3038 = bitcast i32 %3037 to float
  %3039 = call float @dx.op.binary.f32(i32 36, float %1758, float %3026)  ; FMin(a,b)
  %3040 = fmul fast float %3039, %1810
  %3041 = fsub fast float 1.000000e+00, %3040
  %3042 = bitcast float %3041 to i32
  %3043 = sub nsw i32 2129859010, %3042
  %3044 = bitcast i32 %3043 to float
  %3045 = fmul fast float %3022, %1809
  %3046 = fmul fast float %3045, %3032
  %3047 = fmul fast float %3023, %1809
  %3048 = fmul fast float %3047, %3038
  %3049 = fmul fast float %3024, %1809
  %3050 = fmul fast float %3049, %3044
  %3051 = call float @dx.op.binary.f32(i32 36, float %1753, float %3026)  ; FMin(a,b)
  %3052 = fmul fast float %3051, %1810
  %3053 = fsub fast float 1.000000e+00, %3052
  %3054 = bitcast float %3053 to i32
  %3055 = sub nsw i32 2129859010, %3054
  %3056 = bitcast i32 %3055 to float
  %3057 = call float @dx.op.binary.f32(i32 36, float %1754, float %3026)  ; FMin(a,b)
  %3058 = fmul fast float %3057, %1810
  %3059 = fsub fast float 1.000000e+00, %3058
  %3060 = bitcast float %3059 to i32
  %3061 = sub nsw i32 2129859010, %3060
  %3062 = bitcast i32 %3061 to float
  %3063 = call float @dx.op.binary.f32(i32 36, float %1798, float %3026)  ; FMin(a,b)
  %3064 = fmul fast float %3063, %1810
  %3065 = fsub fast float 1.000000e+00, %3064
  %3066 = bitcast float %3065 to i32
  %3067 = sub nsw i32 2129859010, %3066
  %3068 = bitcast i32 %3067 to float
  %3069 = fmul fast float %3019, %1809
  %3070 = fmul fast float %3069, %3056
  %3071 = fmul fast float %3020, %1809
  %3072 = fmul fast float %3071, %3062
  %3073 = fmul fast float %3021, %1809
  %3074 = fmul fast float %3073, %3068
  %3075 = call float @dx.op.dot3.f32(i32 55, float %3046, float %3048, float %3050, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3076 = select i1 %240, float 0.000000e+00, float %3046
  %3077 = select i1 %240, float %3075, float %3048
  %3078 = select i1 %240, float 0.000000e+00, float %3050
  %3079 = call float @dx.op.dot3.f32(i32 55, float %3070, float %3072, float %3074, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3080 = select i1 %240, float 0.000000e+00, float %3070
  %3081 = select i1 %240, float %3079, float %3072
  %3082 = select i1 %240, float 0.000000e+00, float %3074
  %3083 = fmul fast float %1092, %1092
  %3084 = call float @dx.op.unary.f32(i32 7, float %3083)  ; Saturate(value)
  %3085 = fmul fast float %1800, 9.843750e-01
  %3086 = fmul fast float %1759, 9.843750e-01
  %3087 = fadd fast float %3085, 7.812500e-03
  %3088 = fadd fast float %3086, 7.812500e-03
  %3089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %3087, float %3088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3090 = extractvalue %dx.types.ResRet.f32 %3089, 0
  %3091 = extractvalue %dx.types.ResRet.f32 %3089, 1
  %3092 = extractvalue %dx.types.ResRet.f32 %3089, 2
  %3093 = extractvalue %dx.types.ResRet.f32 %3089, 3
  %3094 = fsub fast float 1.000000e+00, %3084
  %3095 = fsub fast float %3092, %3090
  %3096 = fsub fast float %3093, %3091
  %3097 = fmul fast float %3095, %3094
  %3098 = fmul fast float %3096, %3094
  %3099 = fadd fast float %3097, %3090
  %3100 = fadd fast float %3098, %3091
  %3101 = fmul fast float %3099, %1753
  %3102 = fmul fast float %3099, %1754
  %3103 = fmul fast float %3099, %1798
  %3104 = fadd fast float %3101, %3100
  %3105 = fadd fast float %3102, %3100
  %3106 = fadd fast float %3103, %3100
  %3107 = call float @dx.op.binary.f32(i32 35, float %3105, float %3106)  ; FMax(a,b)
  %3108 = call float @dx.op.binary.f32(i32 35, float %3104, float %3107)  ; FMax(a,b)
  %3109 = fsub fast float 1.000000e+00, %3108
  %3110 = fmul fast float %3108, %1759
  %3111 = fadd fast float %3110, %1759
  %3112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3113 = extractvalue %dx.types.CBufRet.f32 %3112, 2
  %3114 = extractvalue %dx.types.CBufRet.f32 %3112, 3
  %3115 = fmul fast float %3111, %3113
  %3116 = fadd fast float %3115, %3114
  %3117 = call float @dx.op.unary.f32(i32 7, float %3116)  ; Saturate(value)
  %3118 = fsub fast float 1.000000e+00, %1821
  %3119 = fadd fast float %3118, %3117
  %3120 = call float @dx.op.unary.f32(i32 7, float %3119)  ; Saturate(value)
  %3121 = fcmp fast olt float %3120, 1.000000e+00
  br i1 %3121, label %3122, label %3704

; <label>:3122                                    ; preds = %3017
  %3123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3124 = extractvalue %dx.types.CBufRet.f32 %3123, 2
  %3125 = extractvalue %dx.types.CBufRet.f32 %3123, 3
  %3126 = fmul fast float %3124, %100
  %3127 = fmul fast float %3125, %101
  %3128 = fptoui float %3126 to i32
  %3129 = fptoui float %3127 to i32
  %3130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3131 = extractvalue %dx.types.CBufRet.f32 %3130, 0
  %3132 = extractvalue %dx.types.CBufRet.f32 %3130, 2
  %3133 = extractvalue %dx.types.CBufRet.f32 %3130, 3
  %3134 = fadd fast float %88, -4.000000e+00
  %3135 = call float @dx.op.binary.f32(i32 35, float %3134, float 0.000000e+00)  ; FMax(a,b)
  %3136 = fadd fast float %3135, %3131
  %3137 = fmul fast float %3136, %3132
  %3138 = call float @dx.op.unary.f32(i32 23, float %3137)  ; Log(value)
  %3139 = fmul fast float %3138, %3133
  %3140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3141 = extractvalue %dx.types.CBufRet.f32 %3140, 2
  %3142 = fmul fast float %3139, %3141
  %3143 = call float @dx.op.unary.f32(i32 7, float %3142)  ; Saturate(value)
  %3144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3145 = extractvalue %dx.types.CBufRet.i32 %3144, 1
  %3146 = add i32 %3145, -1
  %3147 = uitofp i32 %3145 to float
  %3148 = fmul fast float %3147, %3143
  %3149 = fptoui float %3148 to i32
  %3150 = call i32 @dx.op.binary.i32(i32 40, i32 %3149, i32 %3146)  ; UMin(a,b)
  %3151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3152 = extractvalue %dx.types.CBufRet.i32 %3151, 2
  %3153 = extractvalue %dx.types.CBufRet.i32 %3151, 3
  %3154 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3129, i32 %3152, i32 %3128)  ; UMad(a,b,c)
  %3155 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3150, i32 %3153, i32 %3154)  ; UMad(a,b,c)
  %3156 = call float @dx.op.binary.f32(i32 35, float %88, float 0.000000e+00)  ; FMax(a,b)
  %3157 = fptoui float %3156 to i32
  %3158 = lshr i32 %3157, 5
  %3159 = call i32 @dx.op.binary.i32(i32 40, i32 %3158, i32 8191)  ; UMin(a,b)
  %3160 = fsub fast float %1549, %149
  %3161 = call float @dx.op.unary.f32(i32 7, float %3160)  ; Saturate(value)
  %3162 = fcmp fast ogt float %3161, 0.000000e+00
  %3163 = fcmp fast ogt float %1808, 0.000000e+00
  %3164 = and i1 %3163, %3162
  br i1 %3164, label %3165, label %3194

; <label>:3165                                    ; preds = %3122
  %3166 = call float @dx.op.dot3.f32(i32 55, float %1806, float %1807, float %1808, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3167 = call float @dx.op.binary.f32(i32 35, float %3166, float -1.000000e+00)  ; FMax(a,b)
  %3168 = call float @dx.op.binary.f32(i32 36, float %3167, float 1.000000e+00)  ; FMin(a,b)
  %3169 = fmul fast float %3168, %3168
  %3170 = fsub fast float 1.000000e+00, %3169
  %3171 = fmul fast float %3170, 0x3FFC6E2300000000
  %3172 = fsub fast float 1.000000e+00, %3171
  %3173 = fcmp fast ogt float %3172, 0.000000e+00
  %3174 = call float @dx.op.unary.f32(i32 24, float %3172)  ; Sqrt(value)
  %3175 = fsub fast float 1.000000e+00, %3174
  %3176 = call float @dx.op.unary.f32(i32 23, float %3175)  ; Log(value)
  %3177 = fmul fast float %3176, 5.000000e+00
  %3178 = call float @dx.op.unary.f32(i32 21, float %3177)  ; Exp(value)
  %3179 = fmul fast float %3178, 0x3FEF591A60000000
  %3180 = fadd fast float %3179, 0x3F94DCB540000000
  %3181 = select i1 %3173, float %3180, float 1.000000e+00
  %3182 = fcmp fast oge float %3181, 1.000000e+00
  %3183 = fmul fast float %3166, 2.000000e+00
  %3184 = fadd fast float %3183, %1808
  %3185 = select i1 %3182, float %3184, float %1808
  %3186 = fsub fast float %3185, %1808
  %3187 = fmul fast float %3186, %3161
  %3188 = fadd fast float %3187, %1808
  %3189 = call float @dx.op.dot3.f32(i32 55, float %1806, float %1807, float %3188, float %1806, float %1807, float %3188)  ; Dot3(ax,ay,az,bx,by,bz)
  %3190 = call float @dx.op.unary.f32(i32 25, float %3189)  ; Rsqrt(value)
  %3191 = fmul fast float %3190, %1806
  %3192 = fmul fast float %3190, %1807
  %3193 = fmul fast float %3188, %3190
  br label %3194

; <label>:3194                                    ; preds = %3165, %3122
  %3195 = phi float [ %3191, %3165 ], [ %1806, %3122 ]
  %3196 = phi float [ %3192, %3165 ], [ %1807, %3122 ]
  %3197 = phi float [ %3193, %3165 ], [ %1808, %3122 ]
  %3198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3199 = extractvalue %dx.types.CBufRet.i32 %3198, 2
  %3200 = add nsw i32 %3199, -1
  %3201 = call i32 @dx.op.binary.i32(i32 37, i32 %3200, i32 0)  ; IMax(a,b)
  %3202 = shl i32 %3159, 2
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3202, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = lshr i32 %3204, 16
  %3206 = and i32 %3204, 65535
  %3207 = lshr i32 %3204, 21
  %3208 = lshr i32 %3206, 5
  %3209 = call i32 @dx.op.binary.i32(i32 40, i32 %3208, i32 %3201)  ; UMin(a,b)
  %3210 = icmp ugt i32 %3207, %3209
  br i1 %3210, label %3592, label %3211

; <label>:3211                                    ; preds = %3194
  br label %3212

; <label>:3212                                    ; preds = %3581, %3211
  %3213 = phi float [ %3582, %3581 ], [ 0.000000e+00, %3211 ]
  %3214 = phi float [ %3583, %3581 ], [ 0.000000e+00, %3211 ]
  %3215 = phi float [ %3584, %3581 ], [ 0.000000e+00, %3211 ]
  %3216 = phi float [ %3585, %3581 ], [ 1.000000e+00, %3211 ]
  %3217 = phi i32 [ %3589, %3581 ], [ %3207, %3211 ]
  %3218 = phi float [ %3586, %3581 ], [ 0.000000e+00, %3211 ]
  %3219 = phi float [ %3587, %3581 ], [ 0.000000e+00, %3211 ]
  %3220 = phi float [ %3588, %3581 ], [ 0.000000e+00, %3211 ]
  %3221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3222 = extractvalue %dx.types.CBufRet.i32 %3221, 2
  %3223 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3155, i32 %3222, i32 %3217)  ; UMad(a,b,c)
  %3224 = shl i32 %3223, 2
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3224, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = shl i32 %3217, 5
  %3228 = sub nsw i32 %3205, %3227
  %3229 = call i32 @dx.op.binary.i32(i32 37, i32 %3228, i32 0)  ; IMax(a,b)
  %3230 = call i32 @dx.op.binary.i32(i32 38, i32 %3229, i32 31)  ; IMin(a,b)
  %3231 = sub nsw i32 1, %3205
  %3232 = add nsw i32 %3231, %3206
  %3233 = call i32 @dx.op.binary.i32(i32 37, i32 %3232, i32 0)  ; IMax(a,b)
  %3234 = call i32 @dx.op.binary.i32(i32 38, i32 %3233, i32 32)  ; IMin(a,b)
  %3235 = and i32 %3234, 31
  %3236 = shl i32 -1, %3235
  %3237 = xor i32 %3236, -1
  %3238 = and i32 %3230, 31
  %3239 = shl i32 %3237, %3238
  %3240 = icmp eq i32 %3234, 32
  %3241 = select i1 %3240, i32 -1, i32 %3239
  %3242 = and i32 %3241, %3226
  %3243 = icmp eq i32 %3242, 0
  br i1 %3243, label %3581, label %3244

; <label>:3244                                    ; preds = %3212
  br label %3245

; <label>:3245                                    ; preds = %3355, %3244
  %3246 = phi float [ %3356, %3355 ], [ %3213, %3244 ]
  %3247 = phi float [ %3357, %3355 ], [ %3214, %3244 ]
  %3248 = phi float [ %3358, %3355 ], [ %3215, %3244 ]
  %3249 = phi float [ %3359, %3355 ], [ %3216, %3244 ]
  %3250 = phi i32 [ %3258, %3355 ], [ %3242, %3244 ]
  %3251 = phi float [ %3360, %3355 ], [ %3218, %3244 ]
  %3252 = phi float [ %3361, %3355 ], [ %3219, %3244 ]
  %3253 = phi float [ %3362, %3355 ], [ %3220, %3244 ]
  %3254 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3250)  ; FirstbitLo(value)
  %3255 = add i32 %3254, %3227
  %3256 = and i32 %3254, 31
  %3257 = shl i32 1, %3256
  %3258 = xor i32 %3257, %3250
  %3259 = mul i32 %3255, 72
  %3260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.f32 %3260, 0
  %3262 = extractvalue %dx.types.ResRet.f32 %3260, 1
  %3263 = extractvalue %dx.types.ResRet.f32 %3260, 2
  %3264 = add i32 %3259, 12
  %3265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3264, i32 undef)  ; BufferLoad(srv,index,wot)
  %3266 = extractvalue %dx.types.ResRet.i32 %3265, 0
  %3267 = add i32 %3259, 16
  %3268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3267, i32 undef)  ; BufferLoad(srv,index,wot)
  %3269 = extractvalue %dx.types.ResRet.f32 %3268, 0
  %3270 = extractvalue %dx.types.ResRet.f32 %3268, 1
  %3271 = extractvalue %dx.types.ResRet.f32 %3268, 2
  %3272 = add i32 %3259, 28
  %3273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3272, i32 undef)  ; BufferLoad(srv,index,wot)
  %3274 = extractvalue %dx.types.ResRet.f32 %3273, 0
  %3275 = add i32 %3259, 32
  %3276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3275, i32 undef)  ; BufferLoad(srv,index,wot)
  %3277 = extractvalue %dx.types.ResRet.f32 %3276, 0
  %3278 = extractvalue %dx.types.ResRet.f32 %3276, 1
  %3279 = extractvalue %dx.types.ResRet.f32 %3276, 2
  %3280 = extractvalue %dx.types.ResRet.f32 %3276, 3
  %3281 = add i32 %3259, 48
  %3282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3281, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.f32 %3282, 0
  %3284 = extractvalue %dx.types.ResRet.f32 %3282, 1
  %3285 = add i32 %3259, 56
  %3286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3285, i32 undef)  ; BufferLoad(srv,index,wot)
  %3287 = extractvalue %dx.types.ResRet.f32 %3286, 0
  %3288 = extractvalue %dx.types.ResRet.f32 %3286, 1
  %3289 = add i32 %3259, 64
  %3290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3289, i32 undef)  ; BufferLoad(srv,index,wot)
  %3291 = extractvalue %dx.types.ResRet.f32 %3290, 0
  %3292 = extractvalue %dx.types.ResRet.f32 %3290, 1
  %3293 = mul i32 %3255, 60
  %3294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3293, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.f32 %3294, 0
  %3296 = extractvalue %dx.types.ResRet.f32 %3294, 1
  %3297 = extractvalue %dx.types.ResRet.f32 %3294, 2
  %3298 = add i32 %3293, 12
  %3299 = add i32 %3293, 48
  %3300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3299, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.f32 %3300, 0
  %3302 = extractvalue %dx.types.ResRet.f32 %3300, 1
  %3303 = extractvalue %dx.types.ResRet.f32 %3300, 2
  %3304 = and i32 %3266, 32767
  %3305 = bitcast float %3261 to i32
  %3306 = icmp eq i32 %3305, -1
  %3307 = bitcast float %3262 to i32
  %3308 = and i32 %3266, 32768
  %3309 = icmp ne i32 %3308, 0
  %3310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3311 = extractvalue %dx.types.CBufRet.f32 %3310, 0
  %3312 = extractvalue %dx.types.CBufRet.f32 %3310, 1
  %3313 = extractvalue %dx.types.CBufRet.f32 %3310, 2
  %3314 = fsub fast float %3295, %3311
  %3315 = fsub fast float %3296, %3312
  %3316 = fsub fast float %3297, %3313
  %3317 = fsub fast float %147, %3314
  %3318 = fsub fast float %148, %3315
  %3319 = fsub fast float %149, %3316
  %3320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3298, i32 undef)  ; BufferLoad(srv,index,wot)
  %3321 = extractvalue %dx.types.ResRet.f32 %3320, 0
  %3322 = extractvalue %dx.types.ResRet.f32 %3320, 1
  %3323 = extractvalue %dx.types.ResRet.f32 %3320, 2
  %3324 = call float @dx.op.dot3.f32(i32 55, float %3317, float %3318, float %3319, float %3321, float %3322, float %3323)  ; Dot3(ax,ay,az,bx,by,bz)
  %3325 = add i32 %3293, 24
  %3326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3325, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.f32 %3326, 0
  %3328 = extractvalue %dx.types.ResRet.f32 %3326, 1
  %3329 = extractvalue %dx.types.ResRet.f32 %3326, 2
  %3330 = call float @dx.op.dot3.f32(i32 55, float %3317, float %3318, float %3319, float %3327, float %3328, float %3329)  ; Dot3(ax,ay,az,bx,by,bz)
  %3331 = add i32 %3293, 36
  %3332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3331, i32 undef)  ; BufferLoad(srv,index,wot)
  %3333 = extractvalue %dx.types.ResRet.f32 %3332, 0
  %3334 = extractvalue %dx.types.ResRet.f32 %3332, 1
  %3335 = extractvalue %dx.types.ResRet.f32 %3332, 2
  %3336 = call float @dx.op.dot3.f32(i32 55, float %3317, float %3318, float %3319, float %3333, float %3334, float %3335)  ; Dot3(ax,ay,az,bx,by,bz)
  %3337 = call float @dx.op.unary.f32(i32 6, float %3324)  ; FAbs(value)
  %3338 = call float @dx.op.unary.f32(i32 6, float %3330)  ; FAbs(value)
  %3339 = call float @dx.op.unary.f32(i32 6, float %3336)  ; FAbs(value)
  %3340 = fsub fast float %3301, %3337
  %3341 = fsub fast float %3302, %3338
  %3342 = fsub fast float %3303, %3339
  %3343 = fmul fast float %3340, %3269
  %3344 = fmul fast float %3341, %3270
  %3345 = fmul fast float %3342, %3271
  %3346 = call float @dx.op.binary.f32(i32 36, float %3344, float %3345)  ; FMin(a,b)
  %3347 = call float @dx.op.binary.f32(i32 36, float %3343, float %3346)  ; FMin(a,b)
  %3348 = call float @dx.op.unary.f32(i32 7, float %3347)  ; Saturate(value)
  %3349 = call float @dx.op.binary.f32(i32 36, float %3249, float %3348)  ; FMin(a,b)
  %3350 = uitofp i1 %3309 to float
  %3351 = fadd fast float %3161, 1.000000e+00
  %3352 = fsub fast float %3351, %3350
  %3353 = fmul fast float %3349, %3352
  %3354 = fcmp fast ogt float %3353, 0.000000e+00
  br i1 %3354, label %3364, label %3355

; <label>:3355                                    ; preds = %3506, %3245
  %3356 = phi float [ %3570, %3506 ], [ %3246, %3245 ]
  %3357 = phi float [ %3571, %3506 ], [ %3247, %3245 ]
  %3358 = phi float [ %3572, %3506 ], [ %3248, %3245 ]
  %3359 = phi float [ %3579, %3506 ], [ %3249, %3245 ]
  %3360 = phi float [ %3576, %3506 ], [ %3251, %3245 ]
  %3361 = phi float [ %3577, %3506 ], [ %3252, %3245 ]
  %3362 = phi float [ %3578, %3506 ], [ %3253, %3245 ]
  %3363 = icmp eq i32 %3250, %3257
  br i1 %3363, label %3580, label %3245

; <label>:3364                                    ; preds = %3245
  br i1 %3306, label %3422, label %3365

; <label>:3365                                    ; preds = %3364
  %3366 = fsub fast float -0.000000e+00, %3321
  %3367 = fsub fast float -0.000000e+00, %3322
  %3368 = fsub fast float -0.000000e+00, %3323
  %3369 = call float @dx.op.dot3.f32(i32 55, float %3195, float %3196, float %3197, float %3366, float %3367, float %3368)  ; Dot3(ax,ay,az,bx,by,bz)
  %3370 = fsub fast float -0.000000e+00, %3369
  %3371 = call float @dx.op.dot3.f32(i32 55, float %3317, float %3318, float %3319, float %3366, float %3367, float %3368)  ; Dot3(ax,ay,az,bx,by,bz)
  %3372 = fadd fast float %3371, %3284
  %3373 = fadd fast float %3283, %3371
  %3374 = fsub fast float -0.000000e+00, %3373
  %3375 = fcmp ogt float %3369, -0.000000e+00
  %3376 = select i1 %3375, float %3374, float %3372
  %3377 = call float @dx.op.unary.f32(i32 6, float %3370)  ; FAbs(value)
  %3378 = fdiv fast float 1.000000e+00, %3377
  %3379 = fmul fast float %3376, %3378
  %3380 = call float @dx.op.binary.f32(i32 35, float %3379, float 0.000000e+00)  ; FMax(a,b)
  %3381 = fsub fast float -0.000000e+00, %3327
  %3382 = fsub fast float -0.000000e+00, %3328
  %3383 = fsub fast float -0.000000e+00, %3329
  %3384 = call float @dx.op.dot3.f32(i32 55, float %3195, float %3196, float %3197, float %3381, float %3382, float %3383)  ; Dot3(ax,ay,az,bx,by,bz)
  %3385 = fsub fast float -0.000000e+00, %3384
  %3386 = call float @dx.op.dot3.f32(i32 55, float %3317, float %3318, float %3319, float %3381, float %3382, float %3383)  ; Dot3(ax,ay,az,bx,by,bz)
  %3387 = fadd fast float %3386, %3288
  %3388 = fadd fast float %3287, %3386
  %3389 = fsub fast float -0.000000e+00, %3388
  %3390 = fcmp ogt float %3384, -0.000000e+00
  %3391 = select i1 %3390, float %3389, float %3387
  %3392 = call float @dx.op.unary.f32(i32 6, float %3385)  ; FAbs(value)
  %3393 = fdiv fast float 1.000000e+00, %3392
  %3394 = fmul fast float %3391, %3393
  %3395 = call float @dx.op.binary.f32(i32 35, float %3394, float 0.000000e+00)  ; FMax(a,b)
  %3396 = fsub fast float -0.000000e+00, %3333
  %3397 = fsub fast float -0.000000e+00, %3334
  %3398 = fsub fast float -0.000000e+00, %3335
  %3399 = call float @dx.op.dot3.f32(i32 55, float %3195, float %3196, float %3197, float %3396, float %3397, float %3398)  ; Dot3(ax,ay,az,bx,by,bz)
  %3400 = fsub fast float -0.000000e+00, %3399
  %3401 = call float @dx.op.dot3.f32(i32 55, float %3317, float %3318, float %3319, float %3396, float %3397, float %3398)  ; Dot3(ax,ay,az,bx,by,bz)
  %3402 = fadd fast float %3401, %3292
  %3403 = fadd fast float %3291, %3401
  %3404 = fsub fast float -0.000000e+00, %3403
  %3405 = fcmp ogt float %3399, -0.000000e+00
  %3406 = select i1 %3405, float %3404, float %3402
  %3407 = call float @dx.op.unary.f32(i32 6, float %3400)  ; FAbs(value)
  %3408 = fdiv fast float 1.000000e+00, %3407
  %3409 = fmul fast float %3406, %3408
  %3410 = call float @dx.op.binary.f32(i32 35, float %3409, float 0.000000e+00)  ; FMax(a,b)
  %3411 = call float @dx.op.binary.f32(i32 36, float %3395, float %3410)  ; FMin(a,b)
  %3412 = call float @dx.op.binary.f32(i32 36, float %3380, float %3411)  ; FMin(a,b)
  %3413 = fmul fast float %3412, %3195
  %3414 = fmul fast float %3412, %3196
  %3415 = fmul fast float %3412, %3197
  %3416 = fadd fast float %3413, %147
  %3417 = fadd fast float %3414, %148
  %3418 = fadd fast float %3415, %149
  %3419 = fsub fast float %3416, %3261
  %3420 = fsub fast float %3417, %3262
  %3421 = fsub fast float %3418, %3263
  br label %3429

; <label>:3422                                    ; preds = %3364
  %3423 = fmul fast float %3195, 8.096000e+03
  %3424 = fmul fast float %3196, 8.096000e+03
  %3425 = fmul fast float %3197, 8.096000e+03
  %3426 = fadd fast float %3423, %147
  %3427 = fadd fast float %3424, %148
  %3428 = fadd fast float %3425, %149
  br label %3429

; <label>:3429                                    ; preds = %3422, %3365
  %3430 = phi float [ %3195, %3422 ], [ %3419, %3365 ]
  %3431 = phi float [ %3196, %3422 ], [ %3420, %3365 ]
  %3432 = phi float [ %3197, %3422 ], [ %3421, %3365 ]
  %3433 = phi float [ %3426, %3422 ], [ %3416, %3365 ]
  %3434 = phi float [ %3427, %3422 ], [ %3417, %3365 ]
  %3435 = phi float [ %3428, %3422 ], [ %3418, %3365 ]
  %3436 = fcmp fast olt float %3280, 1.000000e+00
  br i1 %3436, label %3437, label %3468, !dx.controlflow.hints !111

; <label>:3437                                    ; preds = %3429
  %3438 = fmul fast float %3432, %3278
  %3439 = fmul fast float %3431, %3279
  %3440 = fsub fast float %3438, %3439
  %3441 = fmul fast float %3430, %3279
  %3442 = fmul fast float %3432, %3277
  %3443 = fsub fast float %3441, %3442
  %3444 = fmul fast float %3431, %3277
  %3445 = fmul fast float %3430, %3278
  %3446 = fsub fast float %3444, %3445
  %3447 = fmul fast float %3440, 2.000000e+00
  %3448 = fmul fast float %3443, 2.000000e+00
  %3449 = fmul fast float %3446, 2.000000e+00
  %3450 = fmul fast float %3447, %3280
  %3451 = fmul fast float %3448, %3280
  %3452 = fmul fast float %3449, %3280
  %3453 = fmul fast float %3449, %3278
  %3454 = fmul fast float %3448, %3279
  %3455 = fmul fast float %3447, %3279
  %3456 = fmul fast float %3449, %3277
  %3457 = fmul fast float %3448, %3277
  %3458 = fmul fast float %3447, %3278
  %3459 = fadd fast float %3453, %3430
  %3460 = fadd fast float %3459, %3450
  %3461 = fsub fast float %3460, %3454
  %3462 = fsub fast float %3431, %3456
  %3463 = fadd fast float %3462, %3451
  %3464 = fadd fast float %3463, %3455
  %3465 = fadd fast float %3452, %3432
  %3466 = fsub fast float %3465, %3458
  %3467 = fadd fast float %3466, %3457
  br label %3468

; <label>:3468                                    ; preds = %3437, %3429
  %3469 = phi float [ %3461, %3437 ], [ %3430, %3429 ]
  %3470 = phi float [ %3464, %3437 ], [ %3431, %3429 ]
  %3471 = phi float [ %3467, %3437 ], [ %3432, %3429 ]
  br i1 %3306, label %3503, label %3472

; <label>:3472                                    ; preds = %3468
  %3473 = fmul fast float %1759, 0x400187C840000000
  %3474 = fadd fast float %3473, 0xC00EFC2120000000
  %3475 = fmul fast float %3474, %1759
  %3476 = fadd fast float %3475, 0x3FE5D16340000000
  %3477 = fmul fast float %3476, %1759
  %3478 = fadd fast float %3477, 1.000000e+00
  %3479 = call float @dx.op.unary.f32(i32 7, float %3478)  ; Saturate(value)
  %3480 = fsub fast float %3433, %147
  %3481 = fsub fast float %3434, %148
  %3482 = fsub fast float %3435, %149
  %3483 = fsub fast float %3433, %3261
  %3484 = fsub fast float %3434, %3262
  %3485 = fsub fast float %3435, %3263
  %3486 = call float @dx.op.dot3.f32(i32 55, float %3480, float %3481, float %3482, float %3480, float %3481, float %3482)  ; Dot3(ax,ay,az,bx,by,bz)
  %3487 = call float @dx.op.dot3.f32(i32 55, float %3483, float %3484, float %3485, float %3483, float %3484, float %3485)  ; Dot3(ax,ay,az,bx,by,bz)
  %3488 = fadd fast float %3487, 0x3EE4F8B580000000
  %3489 = fdiv fast float %3486, %3488
  %3490 = bitcast float %3489 to i32
  %3491 = ashr i32 %3490, 1
  %3492 = add nsw i32 %3491, 532487669
  %3493 = bitcast i32 %3492 to float
  %3494 = fmul fast float %3493, %3479
  %3495 = call float @dx.op.unary.f32(i32 7, float %3494)  ; Saturate(value)
  %3496 = fmul fast float %3495, 0x4009981AE0000000
  %3497 = fsub fast float 0x40111BBD80000000, %3496
  %3498 = fmul fast float %3497, %3495
  %3499 = fadd fast float %3498, 0xC0009F6020000000
  %3500 = fmul fast float %3499, %3495
  %3501 = fadd fast float %3500, 1.000000e+00
  %3502 = call float @dx.op.unary.f32(i32 7, float %3501)  ; Saturate(value)
  br label %3506

; <label>:3503                                    ; preds = %3468
  %3504 = icmp ne i32 %3307, -1
  %3505 = zext i1 %3504 to i32
  br label %3506

; <label>:3506                                    ; preds = %3503, %3472
  %3507 = phi float [ %1759, %3503 ], [ %3502, %3472 ]
  %3508 = phi i32 [ %3505, %3503 ], [ 0, %3472 ]
  %3509 = fmul float %3507, 5.000000e+00
  %3510 = fsub float 5.000000e+00, %3509
  %3511 = icmp ne i32 %3508, 0
  %3512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3513 = extractvalue %dx.types.CBufRet.f32 %3512, 3
  %3514 = fadd fast float %3513, %3510
  %3515 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3514)  ; FMax(a,b)
  %3516 = call float @dx.op.unary.f32(i32 6, float %3469)  ; FAbs(value)
  %3517 = call float @dx.op.unary.f32(i32 6, float %3470)  ; FAbs(value)
  %3518 = fadd fast float %3517, %3516
  %3519 = call float @dx.op.unary.f32(i32 6, float %3471)  ; FAbs(value)
  %3520 = fadd fast float %3518, %3519
  %3521 = fcmp fast oeq float %3520, 0.000000e+00
  %3522 = fdiv fast float 1.000000e+00, %3520
  %3523 = select i1 %3521, float 1.000000e+00, float %3522
  %3524 = fmul fast float %3523, %3469
  %3525 = fmul fast float %3523, %3470
  %3526 = call float @dx.op.unary.f32(i32 6, float %3525)  ; FAbs(value)
  %3527 = call float @dx.op.unary.f32(i32 6, float %3524)  ; FAbs(value)
  %3528 = fsub fast float 1.000000e+00, %3526
  %3529 = fsub fast float 1.000000e+00, %3527
  %3530 = fcmp fast oge float %3524, 0.000000e+00
  %3531 = fcmp fast oge float %3525, 0.000000e+00
  %3532 = select i1 %3530, float 1.000000e+00, float -1.000000e+00
  %3533 = select i1 %3531, float 1.000000e+00, float -1.000000e+00
  %3534 = fcmp fast ole float %3471, 0.000000e+00
  %3535 = fmul fast float %3532, %3528
  %3536 = fmul fast float %3533, %3529
  %3537 = select i1 %3534, float %3535, float %3524
  %3538 = select i1 %3534, float %3536, float %3525
  %3539 = fmul fast float %3537, 5.000000e-01
  %3540 = fmul fast float %3538, 5.000000e-01
  %3541 = fadd fast float %3539, 5.000000e-01
  %3542 = fadd fast float %3540, 5.000000e-01
  %3543 = uitofp i32 %3304 to float
  %3544 = call float @dx.op.binary.f32(i32 36, float %3515, float 3.000000e+00)  ; FMin(a,b)
  %3545 = fadd fast float %3544, 2.000000e+00
  %3546 = call float @dx.op.unary.f32(i32 21, float %3545)  ; Exp(value)
  %3547 = extractvalue %dx.types.CBufRet.f32 %3512, 1
  %3548 = fmul fast float %3547, %3546
  %3549 = fmul fast float %3548, 2.000000e+00
  %3550 = fsub fast float 1.000000e+00, %3549
  %3551 = fmul fast float %3541, %3550
  %3552 = fmul fast float %3542, %3550
  %3553 = fadd fast float %3551, %3548
  %3554 = fadd fast float %3552, %3548
  %3555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %62, float %3553, float %3554, float %3543, float undef, i32 0, i32 0, i32 undef, float %3515)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3556 = extractvalue %dx.types.ResRet.f32 %3555, 0
  %3557 = extractvalue %dx.types.ResRet.f32 %3555, 1
  %3558 = extractvalue %dx.types.ResRet.f32 %3555, 2
  %3559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3560 = extractvalue %dx.types.CBufRet.f32 %3559, 3
  %3561 = fmul fast float %3560, %3274
  %3562 = call float @dx.op.binary.f32(i32 36, float %3018, float %3561)  ; FMin(a,b)
  %3563 = select i1 %3511, float %3562, float %3561
  %3564 = fmul fast float %3556, %3353
  %3565 = fmul fast float %3564, %3563
  %3566 = fmul fast float %3557, %3353
  %3567 = fmul fast float %3566, %3563
  %3568 = fmul fast float %3558, %3353
  %3569 = fmul fast float %3568, %3563
  %3570 = fadd fast float %3565, %3246
  %3571 = fadd fast float %3567, %3247
  %3572 = fadd fast float %3569, %3248
  %3573 = fmul fast float %3433, %3353
  %3574 = fmul fast float %3434, %3353
  %3575 = fmul fast float %3435, %3353
  %3576 = fadd fast float %3573, %3251
  %3577 = fadd fast float %3574, %3252
  %3578 = fadd fast float %3575, %3253
  %3579 = fsub fast float %3249, %3353
  br label %3355

; <label>:3580                                    ; preds = %3355
  br label %3581

; <label>:3581                                    ; preds = %3580, %3212
  %3582 = phi float [ %3213, %3212 ], [ %3356, %3580 ]
  %3583 = phi float [ %3214, %3212 ], [ %3357, %3580 ]
  %3584 = phi float [ %3215, %3212 ], [ %3358, %3580 ]
  %3585 = phi float [ %3216, %3212 ], [ %3359, %3580 ]
  %3586 = phi float [ %3218, %3212 ], [ %3360, %3580 ]
  %3587 = phi float [ %3219, %3212 ], [ %3361, %3580 ]
  %3588 = phi float [ %3220, %3212 ], [ %3362, %3580 ]
  %3589 = add i32 %3217, 1
  %3590 = icmp ugt i32 %3589, %3209
  br i1 %3590, label %3591, label %3212, !llvm.loop !112

; <label>:3591                                    ; preds = %3581
  br label %3592

; <label>:3592                                    ; preds = %3591, %3194
  %3593 = phi float [ 0.000000e+00, %3194 ], [ %3582, %3591 ]
  %3594 = phi float [ 0.000000e+00, %3194 ], [ %3583, %3591 ]
  %3595 = phi float [ 0.000000e+00, %3194 ], [ %3584, %3591 ]
  %3596 = phi float [ 0.000000e+00, %3194 ], [ %3586, %3591 ]
  %3597 = phi float [ 0.000000e+00, %3194 ], [ %3587, %3591 ]
  %3598 = phi float [ 0.000000e+00, %3194 ], [ %3588, %3591 ]
  %3599 = call float @dx.op.dot3.f32(i32 55, float %3593, float %3594, float %3595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3600 = select i1 %240, float 0.000000e+00, float %3593
  %3601 = select i1 %240, float %3599, float %3594
  %3602 = select i1 %240, float 0.000000e+00, float %3595
  %3603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %3604 = extractvalue %dx.types.CBufRet.f32 %3603, 0
  %3605 = extractvalue %dx.types.CBufRet.f32 %3603, 1
  %3606 = extractvalue %dx.types.CBufRet.f32 %3603, 2
  %3607 = extractvalue %dx.types.CBufRet.f32 %3603, 3
  %3608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %3609 = extractvalue %dx.types.CBufRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.CBufRet.f32 %3608, 1
  %3611 = extractvalue %dx.types.CBufRet.f32 %3608, 2
  %3612 = extractvalue %dx.types.CBufRet.f32 %3608, 3
  %3613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %3614 = extractvalue %dx.types.CBufRet.f32 %3613, 0
  %3615 = extractvalue %dx.types.CBufRet.f32 %3613, 1
  %3616 = extractvalue %dx.types.CBufRet.f32 %3613, 2
  %3617 = extractvalue %dx.types.CBufRet.f32 %3613, 3
  %3618 = call float @dx.op.dot3.f32(i32 55, float %3614, float %3615, float %3616, float %1806, float %1807, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %3619 = call float @dx.op.dot3.f32(i32 55, float %3596, float %3597, float %3598, float %3614, float %3615, float %3616)  ; Dot3(ax,ay,az,bx,by,bz)
  %3620 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %3614, float %3615, float %3616)  ; Dot3(ax,ay,az,bx,by,bz)
  %3621 = fadd fast float %1759, -1.000000e+00
  %3622 = fsub fast float %3619, %3620
  %3623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %3624 = extractvalue %dx.types.CBufRet.f32 %3623, 2
  %3625 = fmul fast float %3624, %3619
  %3626 = fdiv fast float 1.600000e+02, %3625
  %3627 = fmul fast float %3621, %3621
  %3628 = fmul fast float %3627, 0xBFB5B17960000000
  %3629 = fmul fast float %3628, %3622
  %3630 = fmul fast float %3629, %3626
  %3631 = call float @dx.op.unary.f32(i32 21, float %3630)  ; Exp(value)
  %3632 = fmul fast float %3631, 0x3FF04B2960000000
  %3633 = fsub fast float 0x3FF04B2960000000, %3632
  %3634 = call float @dx.op.unary.f32(i32 7, float %3633)  ; Saturate(value)
  %3635 = fmul fast float %3634, 4.000000e+00
  %3636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %3637 = extractvalue %dx.types.CBufRet.f32 %3636, 0
  %3638 = extractvalue %dx.types.CBufRet.f32 %3636, 1
  %3639 = extractvalue %dx.types.CBufRet.f32 %3636, 2
  %3640 = fadd fast float %3637, %3596
  %3641 = fadd fast float %3638, %3597
  %3642 = fadd fast float %3639, %3598
  %3643 = fmul fast float %3640, %3604
  %3644 = call float @dx.op.tertiary.f32(i32 46, float %3641, float %3605, float %3643)  ; FMad(a,b,c)
  %3645 = call float @dx.op.tertiary.f32(i32 46, float %3642, float %3606, float %3644)  ; FMad(a,b,c)
  %3646 = fadd fast float %3645, %3607
  %3647 = fmul fast float %3640, %3609
  %3648 = call float @dx.op.tertiary.f32(i32 46, float %3641, float %3610, float %3647)  ; FMad(a,b,c)
  %3649 = call float @dx.op.tertiary.f32(i32 46, float %3642, float %3611, float %3648)  ; FMad(a,b,c)
  %3650 = fadd fast float %3649, %3612
  %3651 = fmul fast float %3640, %3614
  %3652 = call float @dx.op.tertiary.f32(i32 46, float %3641, float %3615, float %3651)  ; FMad(a,b,c)
  %3653 = call float @dx.op.tertiary.f32(i32 46, float %3642, float %3616, float %3652)  ; FMad(a,b,c)
  %3654 = fadd fast float %3653, %3617
  %3655 = fdiv fast float %3646, %3654
  %3656 = fdiv fast float %3650, %3654
  %3657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3658 = extractvalue %dx.types.CBufRet.f32 %3657, 0
  %3659 = extractvalue %dx.types.CBufRet.f32 %3657, 1
  %3660 = fmul fast float %3658, %3655
  %3661 = fmul fast float %3659, %3656
  %3662 = extractvalue %dx.types.CBufRet.f32 %3657, 2
  %3663 = extractvalue %dx.types.CBufRet.f32 %3657, 3
  %3664 = fadd fast float %3660, %3662
  %3665 = fadd fast float %3661, %3663
  %3666 = fmul fast float %3618, 8.000000e+00
  %3667 = call float @dx.op.unary.f32(i32 7, float %3666)  ; Saturate(value)
  %3668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %3669 = extractvalue %dx.types.CBufRet.f32 %3668, 0
  %3670 = fmul fast float %3664, 2.000000e+00
  %3671 = fmul fast float %3665, 2.000000e+00
  %3672 = fadd fast float %3670, -1.000000e+00
  %3673 = fadd fast float %3671, -1.000000e+00
  %3674 = fmul fast float %3672, %3672
  %3675 = fsub fast float 1.000000e+00, %3674
  %3676 = call float @dx.op.unary.f32(i32 7, float %3675)  ; Saturate(value)
  %3677 = fmul fast float %3673, %3673
  %3678 = fsub fast float 1.000000e+00, %3677
  %3679 = call float @dx.op.unary.f32(i32 7, float %3678)  ; Saturate(value)
  %3680 = fmul fast float %3669, %3676
  %3681 = fmul fast float %3680, %3679
  %3682 = call float @dx.op.unary.f32(i32 7, float %3681)  ; Saturate(value)
  %3683 = fmul fast float %3682, %3667
  %3684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %62, float %3664, float %3665, float undef, float undef, i32 0, i32 0, i32 undef, float %3635)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3685 = extractvalue %dx.types.ResRet.f32 %3684, 0
  %3686 = extractvalue %dx.types.ResRet.f32 %3684, 1
  %3687 = extractvalue %dx.types.ResRet.f32 %3684, 2
  %3688 = select i1 %240, float 0.000000e+00, float %3686
  %3689 = select i1 %240, float 0.000000e+00, float %3687
  %3690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3691 = extractvalue %dx.types.CBufRet.f32 %3690, 2
  %3692 = fmul fast float %3691, %3685
  %3693 = fmul fast float %3688, %3691
  %3694 = fmul fast float %3689, %3691
  %3695 = fsub fast float %3692, %3600
  %3696 = fsub fast float %3693, %3601
  %3697 = fsub fast float %3694, %3602
  %3698 = fmul fast float %3695, %3683
  %3699 = fmul fast float %3696, %3683
  %3700 = fmul fast float %3697, %3683
  %3701 = fadd fast float %3698, %3600
  %3702 = fadd fast float %3699, %3601
  %3703 = fadd fast float %3700, %3602
  br label %3704

; <label>:3704                                    ; preds = %3592, %3017
  %3705 = phi float [ %3080, %3017 ], [ %3701, %3592 ]
  %3706 = phi float [ %3081, %3017 ], [ %3702, %3592 ]
  %3707 = phi float [ %3082, %3017 ], [ %3703, %3592 ]
  %3708 = fmul fast float %3109, %3076
  %3709 = fmul fast float %3109, %3077
  %3710 = fmul fast float %3109, %3078
  %3711 = call float @dx.op.binary.f32(i32 35, float %1800, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3712 = fdiv fast float %1092, %3711
  %3713 = fcmp fast olt float %1168, 1.270000e+02
  %3714 = fcmp fast olt float %1169, 1.270000e+02
  %3715 = fcmp fast olt float %1170, 1.270000e+02
  %3716 = fmul fast float %1168, 0xBFF7154760000000
  %3717 = fmul fast float %3716, %3712
  %3718 = fmul fast float %1169, 0xBFF7154760000000
  %3719 = fmul fast float %3718, %3712
  %3720 = fmul fast float %1170, 0xBFF7154760000000
  %3721 = fmul fast float %3720, %3712
  %3722 = call float @dx.op.unary.f32(i32 21, float %3717)  ; Exp(value)
  %3723 = call float @dx.op.unary.f32(i32 21, float %3719)  ; Exp(value)
  %3724 = call float @dx.op.unary.f32(i32 21, float %3721)  ; Exp(value)
  %3725 = call float @dx.op.unary.f32(i32 7, float %3722)  ; Saturate(value)
  %3726 = call float @dx.op.unary.f32(i32 7, float %3723)  ; Saturate(value)
  %3727 = call float @dx.op.unary.f32(i32 7, float %3724)  ; Saturate(value)
  %3728 = select i1 %3713, float %3725, float 0.000000e+00
  %3729 = select i1 %3714, float %3726, float 0.000000e+00
  %3730 = select i1 %3715, float %3727, float 0.000000e+00
  %3731 = fmul fast float %3728, %3109
  %3732 = fmul fast float %3729, %3109
  %3733 = fmul fast float %3730, %3109
  %3734 = fadd fast float %3731, -1.000000e+00
  %3735 = fadd fast float %3732, -1.000000e+00
  %3736 = fadd fast float %3733, -1.000000e+00
  %3737 = fmul fast float %3734, %1089
  %3738 = fmul fast float %3735, %1089
  %3739 = fmul fast float %3736, %1089
  %3740 = fadd fast float %3737, 1.000000e+00
  %3741 = fadd fast float %3738, 1.000000e+00
  %3742 = fadd fast float %3739, 1.000000e+00
  %3743 = fmul fast float %1754, 0x401CF23780000000
  %3744 = fadd fast float %3743, 0x3FF32641C0000000
  %3745 = fdiv fast float 1.000000e+00, %3744
  %3746 = call float @dx.op.dot3.f32(i32 55, float %1746, float %1745, float %1744, float %1750, float %1751, float %1752)  ; Dot3(ax,ay,az,bx,by,bz)
  %3747 = fmul fast float %3745, %3745
  %3748 = fmul fast float %3746, %3746
  %3749 = fsub fast float 1.000000e+00, %3748
  %3750 = fmul fast float %3747, %3749
  %3751 = fsub fast float 1.000000e+00, %3750
  %3752 = fcmp fast oge float %3751, 0.000000e+00
  %3753 = fmul fast float %3745, %1746
  %3754 = fmul fast float %3745, %1745
  %3755 = fmul fast float %3745, %1744
  %3756 = call float @dx.op.unary.f32(i32 24, float %3751)  ; Sqrt(value)
  %3757 = fmul fast float %3746, %3745
  %3758 = fadd fast float %3757, %3756
  %3759 = fmul fast float %3758, %1750
  %3760 = fmul fast float %3758, %1751
  %3761 = fmul fast float %3758, %1752
  %3762 = fsub fast float %3753, %3759
  %3763 = fsub fast float %3754, %3760
  %3764 = fsub fast float %3755, %3761
  %3765 = select i1 %3752, float %3762, float 0.000000e+00
  %3766 = select i1 %3752, float %3763, float 0.000000e+00
  %3767 = select i1 %3752, float %3764, float 0.000000e+00
  %3768 = fmul fast float %3765, %1092
  %3769 = fmul fast float %3766, %1092
  %3770 = fmul fast float %3767, %1092
  %3771 = fadd fast float %3768, %1795
  %3772 = fadd fast float %3769, %1796
  %3773 = fadd fast float %3770, %1797
  %3774 = call float @dx.op.dot3.f32(i32 55, float %1186, float %1187, float %1188, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3775 = fmul fast float %1815, %1089
  %3776 = fsub fast float 1.000000e+00, %3775
  %3777 = call float @dx.op.unary.f32(i32 7, float %3776)  ; Saturate(value)
  %3778 = fsub fast float 1.000000e+00, %3777
  %3779 = fmul fast float %1754, 0x4012D0A400000000
  %3780 = fadd fast float %3779, 0x3FDB6377A0000000
  %3781 = fmul fast float %3778, %3780
  %3782 = fadd fast float %3781, %3774
  %3783 = call float @dx.op.unary.f32(i32 7, float %3782)  ; Saturate(value)
  %3784 = fmul fast float %3705, %3104
  %3785 = fmul fast float %3706, %3105
  %3786 = fmul fast float %3707, %3106
  %3787 = fmul fast float %3708, %1089
  %3788 = fmul fast float %3709, %1089
  %3789 = fmul fast float %3710, %1089
  %3790 = fadd fast float %3784, %1082
  %3791 = fadd fast float %3785, %1083
  %3792 = fadd fast float %3786, %1084
  %3793 = fsub fast float 1.000000e+00, %3783
  %3794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %3795 = extractvalue %dx.types.CBufRet.f32 %3794, 0
  %3796 = extractvalue %dx.types.CBufRet.f32 %3794, 1
  %3797 = extractvalue %dx.types.CBufRet.f32 %3794, 2
  %3798 = extractvalue %dx.types.CBufRet.f32 %3794, 3
  %3799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %3800 = extractvalue %dx.types.CBufRet.f32 %3799, 0
  %3801 = extractvalue %dx.types.CBufRet.f32 %3799, 1
  %3802 = extractvalue %dx.types.CBufRet.f32 %3799, 2
  %3803 = extractvalue %dx.types.CBufRet.f32 %3799, 3
  %3804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %3805 = extractvalue %dx.types.CBufRet.f32 %3804, 0
  %3806 = extractvalue %dx.types.CBufRet.f32 %3804, 1
  %3807 = extractvalue %dx.types.CBufRet.f32 %3804, 2
  %3808 = extractvalue %dx.types.CBufRet.f32 %3804, 3
  %3809 = fmul fast float %3771, %3795
  %3810 = call float @dx.op.tertiary.f32(i32 46, float %3772, float %3796, float %3809)  ; FMad(a,b,c)
  %3811 = call float @dx.op.tertiary.f32(i32 46, float %3773, float %3797, float %3810)  ; FMad(a,b,c)
  %3812 = fadd fast float %3811, %3798
  %3813 = fmul fast float %3771, %3800
  %3814 = call float @dx.op.tertiary.f32(i32 46, float %3772, float %3801, float %3813)  ; FMad(a,b,c)
  %3815 = call float @dx.op.tertiary.f32(i32 46, float %3773, float %3802, float %3814)  ; FMad(a,b,c)
  %3816 = fadd fast float %3815, %3803
  %3817 = fmul fast float %3771, %3805
  %3818 = call float @dx.op.tertiary.f32(i32 46, float %3772, float %3806, float %3817)  ; FMad(a,b,c)
  %3819 = call float @dx.op.tertiary.f32(i32 46, float %3773, float %3807, float %3818)  ; FMad(a,b,c)
  %3820 = fadd fast float %3819, %3808
  %3821 = fdiv fast float %3812, %3820
  %3822 = fdiv fast float %3816, %3820
  %3823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3824 = extractvalue %dx.types.CBufRet.f32 %3823, 0
  %3825 = extractvalue %dx.types.CBufRet.f32 %3823, 1
  %3826 = fmul fast float %3824, %3821
  %3827 = fmul fast float %3825, %3822
  %3828 = extractvalue %dx.types.CBufRet.f32 %3823, 2
  %3829 = extractvalue %dx.types.CBufRet.f32 %3823, 3
  %3830 = fadd fast float %3826, %3828
  %3831 = fadd fast float %3827, %3829
  %3832 = call float @dx.op.unary.f32(i32 7, float %3830)  ; Saturate(value)
  %3833 = call float @dx.op.unary.f32(i32 7, float %3831)  ; Saturate(value)
  %3834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3835 = extractvalue %dx.types.CBufRet.f32 %3834, 0
  %3836 = extractvalue %dx.types.CBufRet.f32 %3834, 1
  %3837 = fmul fast float %3835, %3832
  %3838 = fmul fast float %3836, %3833
  %3839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %3840 = extractvalue %dx.types.CBufRet.f32 %3839, 1
  %3841 = extractvalue %dx.types.CBufRet.f32 %3839, 2
  %3842 = fsub fast float %3840, %3841
  %3843 = fmul fast float %3842, %3793
  %3844 = fadd fast float %3843, %3841
  %3845 = fmul fast float %253, 2.000000e+00
  %3846 = fmul fast float %254, 2.000000e+00
  %3847 = fadd fast float %3845, -1.000000e+00
  %3848 = fadd fast float %3846, -1.000000e+00
  %3849 = fmul fast float %3844, %3847
  %3850 = fmul fast float %3844, %3848
  %3851 = fadd fast float %3849, %3837
  %3852 = fadd fast float %3850, %3838
  %3853 = extractvalue %dx.types.CBufRet.f32 %3834, 2
  %3854 = extractvalue %dx.types.CBufRet.f32 %3834, 3
  %3855 = fmul fast float %3851, %3853
  %3856 = fmul fast float %3852, %3854
  %3857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %65, float %3855, float %3856, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3858 = extractvalue %dx.types.ResRet.f32 %3857, 0
  %3859 = fcmp fast ogt float %3858, -1.000000e+00
  %3860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3861 = extractvalue %dx.types.CBufRet.f32 %3860, 1
  %3862 = select i1 %3859, float %3861, float 1.000000e+00
  %3863 = fadd fast float %3858, 1.000000e+00
  %3864 = fmul fast float %3862, %3863
  %3865 = call float @dx.op.unary.f32(i32 6, float %3864)  ; FAbs(value)
  %3866 = fsub fast float %3865, %3820
  %3867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %3868 = extractvalue %dx.types.CBufRet.f32 %3867, 2
  %3869 = fmul fast float %3868, %3865
  %3870 = fdiv fast float 1.600000e+02, %3869
  %3871 = fmul fast float %3783, %3783
  %3872 = fmul fast float %3871, 0xBFB5B17960000000
  %3873 = fmul fast float %3872, %3866
  %3874 = fmul fast float %3873, %3870
  %3875 = call float @dx.op.unary.f32(i32 21, float %3874)  ; Exp(value)
  %3876 = fmul fast float %3875, 0x3FF04B2960000000
  %3877 = fsub fast float 0x3FF04B2960000000, %3876
  %3878 = call float @dx.op.unary.f32(i32 7, float %3877)  ; Saturate(value)
  %3879 = fmul fast float %3878, 4.000000e+00
  %3880 = fadd fast float %253, -5.000000e-01
  %3881 = fadd fast float %254, -5.000000e-01
  %3882 = fmul fast float %3878, 0x3FBEB851E0000000
  %3883 = call float @dx.op.unary.f32(i32 7, float %3882)  ; Saturate(value)
  %3884 = fmul fast float %3883, %3880
  %3885 = fmul fast float %3883, %3881
  %3886 = fadd fast float %3884, %3830
  %3887 = fadd fast float %3885, %3831
  %3888 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %3889 = extractvalue %dx.types.CBufRet.i32 %3888, 0
  %3890 = icmp eq i32 %3889, 0
  br i1 %3890, label %3896, label %3891, !dx.controlflow.hints !114

; <label>:3891                                    ; preds = %3704
  %3892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %60, float %3886, float %3887, float undef, float undef, i32 0, i32 0, i32 undef, float %3879)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3893 = extractvalue %dx.types.ResRet.f32 %3892, 0
  %3894 = extractvalue %dx.types.ResRet.f32 %3892, 1
  %3895 = extractvalue %dx.types.ResRet.f32 %3892, 2
  br label %3901

; <label>:3896                                    ; preds = %3704
  %3897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %62, float %3886, float %3887, float undef, float undef, i32 0, i32 0, i32 undef, float %3879)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3898 = extractvalue %dx.types.ResRet.f32 %3897, 0
  %3899 = extractvalue %dx.types.ResRet.f32 %3897, 1
  %3900 = extractvalue %dx.types.ResRet.f32 %3897, 2
  br label %3901

; <label>:3901                                    ; preds = %3896, %3891
  %3902 = phi float [ %3893, %3891 ], [ %3898, %3896 ]
  %3903 = phi float [ %3894, %3891 ], [ %3899, %3896 ]
  %3904 = phi float [ %3895, %3891 ], [ %3900, %3896 ]
  %3905 = select i1 %240, float 0.000000e+00, float %3903
  %3906 = select i1 %240, float 0.000000e+00, float %3904
  %3907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3908 = extractvalue %dx.types.CBufRet.f32 %3907, 1
  %3909 = fmul fast float %3902, %3740
  %3910 = fmul fast float %3909, %3908
  %3911 = fmul fast float %3905, %3741
  %3912 = fmul fast float %3911, %3908
  %3913 = fmul fast float %3906, %3742
  %3914 = fmul fast float %3913, %3908
  %3915 = fadd fast float %3790, %3910
  %3916 = fmul fast float %3915, %1089
  %3917 = fadd fast float %3791, %3912
  %3918 = fmul fast float %3917, %1089
  %3919 = fadd fast float %3792, %3914
  %3920 = fmul fast float %3919, %1089
  %3921 = bitcast i32 %1824 to float
  %3922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3923 = extractvalue %dx.types.CBufRet.f32 %3922, 3
  %3924 = fcmp fast oeq float %3923, 0.000000e+00
  br i1 %3924, label %5504, label %3925

; <label>:3925                                    ; preds = %3901
  %3926 = extractvalue %dx.types.CBufRet.f32 %3922, 0
  %3927 = extractvalue %dx.types.CBufRet.f32 %3922, 1
  %3928 = extractvalue %dx.types.CBufRet.f32 %3922, 2
  %3929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3930 = extractvalue %dx.types.CBufRet.f32 %3929, 0
  %3931 = extractvalue %dx.types.CBufRet.f32 %3929, 1
  %3932 = extractvalue %dx.types.CBufRet.f32 %3929, 2
  %3933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3934 = extractvalue %dx.types.CBufRet.f32 %3933, 0
  %3935 = extractvalue %dx.types.CBufRet.f32 %3933, 1
  %3936 = call float @dx.op.dot3.f32(i32 55, float %3930, float %3931, float %3932, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3937 = select i1 %240, float %3934, float %3930
  %3938 = select i1 %240, float %3936, float %3931
  %3939 = select i1 %240, float %3935, float %3932
  %3940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3941 = extractvalue %dx.types.CBufRet.f32 %3940, 2
  %3942 = fmul fast float %3941, %76
  %3943 = fmul fast float %3941, %77
  %3944 = fmul fast float %3941, %78
  %3945 = fadd fast float %3942, %147
  %3946 = fadd fast float %3943, %148
  %3947 = fadd fast float %3944, %149
  %3948 = fcmp fast olt float %3923, 0.000000e+00
  br i1 %3948, label %5044, label %3949

; <label>:3949                                    ; preds = %3925
  %3950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3951 = extractvalue %dx.types.CBufRet.f32 %3950, 0
  %3952 = extractvalue %dx.types.CBufRet.f32 %3950, 1
  %3953 = extractvalue %dx.types.CBufRet.f32 %3950, 2
  %3954 = extractvalue %dx.types.CBufRet.f32 %3950, 3
  %3955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3956 = extractvalue %dx.types.CBufRet.f32 %3955, 0
  %3957 = extractvalue %dx.types.CBufRet.f32 %3955, 1
  %3958 = extractvalue %dx.types.CBufRet.f32 %3955, 2
  %3959 = extractvalue %dx.types.CBufRet.f32 %3955, 3
  %3960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3961 = extractvalue %dx.types.CBufRet.f32 %3960, 0
  %3962 = extractvalue %dx.types.CBufRet.f32 %3960, 1
  %3963 = extractvalue %dx.types.CBufRet.f32 %3960, 2
  %3964 = extractvalue %dx.types.CBufRet.f32 %3960, 3
  %3965 = fmul fast float %3951, %3945
  %3966 = call float @dx.op.tertiary.f32(i32 46, float %3946, float %3952, float %3965)  ; FMad(a,b,c)
  %3967 = call float @dx.op.tertiary.f32(i32 46, float %3947, float %3953, float %3966)  ; FMad(a,b,c)
  %3968 = fadd fast float %3967, %3954
  %3969 = fmul fast float %3956, %3945
  %3970 = call float @dx.op.tertiary.f32(i32 46, float %3946, float %3957, float %3969)  ; FMad(a,b,c)
  %3971 = call float @dx.op.tertiary.f32(i32 46, float %3947, float %3958, float %3970)  ; FMad(a,b,c)
  %3972 = fadd fast float %3971, %3959
  %3973 = fmul fast float %3961, %3945
  %3974 = call float @dx.op.tertiary.f32(i32 46, float %3946, float %3962, float %3973)  ; FMad(a,b,c)
  %3975 = call float @dx.op.tertiary.f32(i32 46, float %3947, float %3963, float %3974)  ; FMad(a,b,c)
  %3976 = fadd fast float %3975, %3964
  %3977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3978 = extractvalue %dx.types.CBufRet.f32 %3977, 0
  %3979 = extractvalue %dx.types.CBufRet.f32 %3977, 1
  %3980 = extractvalue %dx.types.CBufRet.f32 %3977, 3
  %3981 = fmul fast float %3980, %3968
  %3982 = fmul fast float %3980, %3972
  %3983 = fadd fast float %3981, %3978
  %3984 = fadd fast float %3982, %3979
  %3985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3986 = extractvalue %dx.types.CBufRet.f32 %3985, 0
  %3987 = extractvalue %dx.types.CBufRet.f32 %3985, 1
  %3988 = extractvalue %dx.types.CBufRet.f32 %3985, 3
  %3989 = fmul fast float %3988, %3968
  %3990 = fmul fast float %3988, %3972
  %3991 = fadd fast float %3989, %3986
  %3992 = fadd fast float %3990, %3987
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 1
  %3995 = fsub fast float %3994, %3976
  %3996 = extractvalue %dx.types.CBufRet.f32 %3993, 2
  %3997 = fmul fast float %3995, %3996
  %3998 = fsub fast float 1.000000e+00, %3997
  %3999 = call float @dx.op.unary.f32(i32 7, float %3998)  ; Saturate(value)
  %4000 = extractvalue %dx.types.CBufRet.f32 %3985, 2
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 2
  %4003 = fadd fast float %4002, %4000
  %4004 = fcmp fast ogt float %4003, 0.000000e+00
  br i1 %4004, label %4005, label %4029

; <label>:4005                                    ; preds = %3949
  %4006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4007 = extractvalue %dx.types.CBufRet.f32 %4006, 0
  %4008 = extractvalue %dx.types.CBufRet.f32 %4006, 1
  %4009 = fsub fast float %3991, %4007
  %4010 = fsub fast float %3992, %4008
  %4011 = fcmp fast olt float %4009, 0.000000e+00
  %4012 = fcmp fast olt float %4010, 0.000000e+00
  %4013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4014 = extractvalue %dx.types.CBufRet.f32 %4013, 0
  %4015 = extractvalue %dx.types.CBufRet.f32 %4013, 1
  %4016 = extractvalue %dx.types.CBufRet.f32 %4013, 2
  %4017 = extractvalue %dx.types.CBufRet.f32 %4013, 3
  %4018 = select i1 %4011, float %4014, float %4016
  %4019 = select i1 %4012, float %4015, float %4017
  %4020 = fmul fast float %4018, %4009
  %4021 = fmul fast float %4019, %4010
  %4022 = call float @dx.op.unary.f32(i32 6, float %4020)  ; FAbs(value)
  %4023 = call float @dx.op.unary.f32(i32 6, float %4021)  ; FAbs(value)
  %4024 = extractvalue %dx.types.CBufRet.f32 %3940, 0
  %4025 = call float @dx.op.binary.f32(i32 35, float %4022, float %4023)  ; FMax(a,b)
  %4026 = fsub fast float %4024, %4025
  %4027 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4028 = fmul fast float %4027, %3999
  br label %4029

; <label>:4029                                    ; preds = %4005, %3949
  %4030 = phi float [ %4028, %4005 ], [ 0.000000e+00, %3949 ]
  %4031 = extractvalue %dx.types.CBufRet.f32 %3977, 2
  %4032 = extractvalue %dx.types.CBufRet.f32 %4001, 1
  %4033 = fadd fast float %4032, %4031
  %4034 = fcmp fast ogt float %4033, 0.000000e+00
  %4035 = extractvalue %dx.types.CBufRet.f32 %3940, 0
  br i1 %4034, label %4036, label %4059

; <label>:4036                                    ; preds = %4029
  %4037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4038 = extractvalue %dx.types.CBufRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.CBufRet.f32 %4037, 1
  %4040 = fsub fast float %3983, %4038
  %4041 = fsub fast float %3984, %4039
  %4042 = fcmp fast olt float %4040, 0.000000e+00
  %4043 = fcmp fast olt float %4041, 0.000000e+00
  %4044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4045 = extractvalue %dx.types.CBufRet.f32 %4044, 0
  %4046 = extractvalue %dx.types.CBufRet.f32 %4044, 1
  %4047 = extractvalue %dx.types.CBufRet.f32 %4044, 2
  %4048 = extractvalue %dx.types.CBufRet.f32 %4044, 3
  %4049 = select i1 %4042, float %4045, float %4047
  %4050 = select i1 %4043, float %4046, float %4048
  %4051 = fmul fast float %4049, %4040
  %4052 = fmul fast float %4050, %4041
  %4053 = call float @dx.op.unary.f32(i32 6, float %4051)  ; FAbs(value)
  %4054 = call float @dx.op.unary.f32(i32 6, float %4052)  ; FAbs(value)
  %4055 = call float @dx.op.binary.f32(i32 35, float %4053, float %4054)  ; FMax(a,b)
  %4056 = fsub fast float %4035, %4055
  %4057 = call float @dx.op.unary.f32(i32 7, float %4056)  ; Saturate(value)
  %4058 = fmul fast float %4057, %3999
  br label %4059

; <label>:4059                                    ; preds = %4036, %4029
  %4060 = phi float [ %4058, %4036 ], [ 0.000000e+00, %4029 ]
  %4061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.f32 %4061, 1
  %4063 = call float @dx.op.unary.f32(i32 7, float %4062)  ; Saturate(value)
  %4064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4065 = extractvalue %dx.types.CBufRet.f32 %4064, 0
  %4066 = extractvalue %dx.types.CBufRet.f32 %4064, 1
  %4067 = fsub fast float %3968, %4065
  %4068 = fsub fast float %3972, %4066
  %4069 = fcmp fast olt float %4067, 0.000000e+00
  %4070 = fcmp fast olt float %4068, 0.000000e+00
  %4071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4072 = extractvalue %dx.types.CBufRet.f32 %4071, 0
  %4073 = extractvalue %dx.types.CBufRet.f32 %4071, 1
  %4074 = extractvalue %dx.types.CBufRet.f32 %4071, 2
  %4075 = extractvalue %dx.types.CBufRet.f32 %4071, 3
  %4076 = select i1 %4069, float %4072, float %4074
  %4077 = select i1 %4070, float %4073, float %4075
  %4078 = fmul fast float %4076, %4067
  %4079 = fmul fast float %4077, %4068
  %4080 = call float @dx.op.unary.f32(i32 6, float %4078)  ; FAbs(value)
  %4081 = call float @dx.op.unary.f32(i32 6, float %4079)  ; FAbs(value)
  %4082 = call float @dx.op.binary.f32(i32 35, float %4080, float %4081)  ; FMax(a,b)
  %4083 = fsub fast float %4035, %4082
  %4084 = call float @dx.op.unary.f32(i32 7, float %4083)  ; Saturate(value)
  %4085 = call float @dx.op.binary.f32(i32 36, float %4084, float %4063)  ; FMin(a,b)
  %4086 = fmul fast float %4085, %3999
  %4087 = fsub fast float %4060, %4086
  %4088 = fsub fast float %4030, %4060
  %4089 = fsub fast float %4088, %4086
  %4090 = call float @dx.op.binary.f32(i32 35, float %4060, float %4030)  ; FMax(a,b)
  %4091 = call float @dx.op.binary.f32(i32 35, float %4086, float %4090)  ; FMax(a,b)
  %4092 = fcmp fast olt float %4091, 1.000000e+00
  br i1 %4092, label %4093, label %4491, !dx.controlflow.hints !115

; <label>:4093                                    ; preds = %4059
  %4094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4095 = extractvalue %dx.types.CBufRet.f32 %4094, 0
  %4096 = fcmp fast une float %4095, 0.000000e+00
  br i1 %4096, label %4097, label %4491, !dx.controlflow.hints !116

; <label>:4097                                    ; preds = %4093
  %4098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4098, 0
  %4100 = extractvalue %dx.types.CBufRet.f32 %4098, 1
  %4101 = extractvalue %dx.types.CBufRet.f32 %4098, 2
  %4102 = extractvalue %dx.types.CBufRet.f32 %4098, 3
  %4103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4104 = extractvalue %dx.types.CBufRet.f32 %4103, 0
  %4105 = extractvalue %dx.types.CBufRet.f32 %4103, 1
  %4106 = extractvalue %dx.types.CBufRet.f32 %4103, 2
  %4107 = extractvalue %dx.types.CBufRet.f32 %4103, 3
  %4108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4109 = extractvalue %dx.types.CBufRet.f32 %4108, 0
  %4110 = extractvalue %dx.types.CBufRet.f32 %4108, 1
  %4111 = extractvalue %dx.types.CBufRet.f32 %4108, 2
  %4112 = extractvalue %dx.types.CBufRet.f32 %4108, 3
  %4113 = fmul fast float %4099, %3945
  %4114 = call float @dx.op.tertiary.f32(i32 46, float %3946, float %4100, float %4113)  ; FMad(a,b,c)
  %4115 = call float @dx.op.tertiary.f32(i32 46, float %3947, float %4101, float %4114)  ; FMad(a,b,c)
  %4116 = fadd fast float %4115, %4102
  %4117 = fmul fast float %4104, %3945
  %4118 = call float @dx.op.tertiary.f32(i32 46, float %3946, float %4105, float %4117)  ; FMad(a,b,c)
  %4119 = call float @dx.op.tertiary.f32(i32 46, float %3947, float %4106, float %4118)  ; FMad(a,b,c)
  %4120 = fadd fast float %4119, %4107
  %4121 = fmul fast float %4109, %3945
  %4122 = call float @dx.op.tertiary.f32(i32 46, float %3946, float %4110, float %4121)  ; FMad(a,b,c)
  %4123 = call float @dx.op.tertiary.f32(i32 46, float %3947, float %4111, float %4122)  ; FMad(a,b,c)
  %4124 = fadd fast float %4123, %4112
  %4125 = fcmp fast oge float %4116, 1.000000e+00
  %4126 = fcmp fast oge float %4120, 1.000000e+00
  %4127 = or i1 %4125, %4126
  %4128 = fcmp fast olt float %4116, 0.000000e+00
  %4129 = fcmp fast olt float %4120, 0.000000e+00
  %4130 = or i1 %4128, %4129
  %4131 = or i1 %4127, %4130
  br i1 %4131, label %4491, label %4132, !dx.controlflow.hints !117

; <label>:4132                                    ; preds = %4097
  %4133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.f32 %4133, 0
  %4135 = extractvalue %dx.types.CBufRet.f32 %4133, 1
  %4136 = extractvalue %dx.types.CBufRet.f32 %4133, 2
  %4137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4138 = extractvalue %dx.types.CBufRet.i32 %4137, 2
  %4139 = uitofp i32 %4138 to float
  %4140 = extractvalue %dx.types.CBufRet.i32 %4137, 3
  %4141 = uitofp i32 %4140 to float
  %4142 = extractvalue %dx.types.CBufRet.f32 %4133, 3
  %4143 = fmul fast float %4142, 2.000000e+00
  %4144 = fsub fast float %4116, %4134
  %4145 = fsub fast float %4120, %4135
  %4146 = fmul fast float %4143, %4144
  %4147 = fmul fast float %4143, %4145
  %4148 = fdiv fast float 1.000000e+00, %3928
  %4149 = fmul fast float %4147, %4148
  %4150 = call float @dx.op.unary.f32(i32 6, float %4149)  ; FAbs(value)
  %4151 = fmul fast float %4136, %3947
  %4152 = fmul fast float %4151, %4143
  %4153 = call float @dx.op.unary.f32(i32 6, float %4152)  ; FAbs(value)
  %4154 = call float @dx.op.unary.f32(i32 6, float %4146)  ; FAbs(value)
  %4155 = call float @dx.op.binary.f32(i32 35, float %4153, float %4150)  ; FMax(a,b)
  %4156 = call float @dx.op.binary.f32(i32 35, float %4154, float %4155)  ; FMax(a,b)
  %4157 = fmul fast float %4156, 2.000000e+00
  %4158 = call float @dx.op.unary.f32(i32 23, float %4157)  ; Log(value)
  %4159 = call float @dx.op.binary.f32(i32 35, float %4158, float %4139)  ; FMax(a,b)
  %4160 = call float @dx.op.unary.f32(i32 22, float %4159)  ; Frc(value)
  %4161 = fadd fast float %4160, 0xBFEA666660000000
  %4162 = fmul fast float %4161, 8.000000e+00
  %4163 = call float @dx.op.unary.f32(i32 7, float %4162)  ; Saturate(value)
  %4164 = call float @dx.op.unary.f32(i32 27, float %4159)  ; Round_ni(value)
  %4165 = fadd fast float %4164, %4163
  %4166 = call float @dx.op.binary.f32(i32 36, float %4165, float %4141)  ; FMin(a,b)
  %4167 = call float @dx.op.unary.f32(i32 27, float %4166)  ; Round_ni(value)
  %4168 = fsub fast float -0.000000e+00, %4167
  %4169 = call float @dx.op.unary.f32(i32 21, float %4168)  ; Exp(value)
  %4170 = fmul fast float %4169, %4143
  %4171 = fmul fast float %4170, %4116
  %4172 = fmul fast float %4170, %4120
  %4173 = fmul fast float %4171, 2.500000e-01
  %4174 = fmul fast float %4172, 2.500000e-01
  %4175 = fadd fast float %4173, 5.000000e-01
  %4176 = fadd fast float %4174, 5.000000e-01
  %4177 = fsub fast float %4141, %4139
  %4178 = fptoui float %4177 to i32
  %4179 = add i32 %4178, 320
  %4180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %4179)  ; CBufferLoadLegacy(handle,regIndex)
  %4181 = extractvalue %dx.types.CBufRet.f32 %4180, 0
  %4182 = extractvalue %dx.types.CBufRet.f32 %4180, 1
  %4183 = fcmp fast une float %4166, %4141
  %4184 = fsub fast float %4116, %4181
  %4185 = fsub fast float %4120, %4182
  %4186 = call float @dx.op.unary.f32(i32 6, float %4184)  ; FAbs(value)
  %4187 = call float @dx.op.unary.f32(i32 6, float %4185)  ; FAbs(value)
  %4188 = fmul fast float %4186, %4170
  %4189 = fmul fast float %4187, %4170
  %4190 = fcmp fast olt float %4188, 1.000000e+00
  %4191 = fcmp fast olt float %4189, 1.000000e+00
  %4192 = and i1 %4190, %4191
  %4193 = or i1 %4183, %4192
  br i1 %4193, label %4194, label %4491, !dx.controlflow.hints !118

; <label>:4194                                    ; preds = %4132
  %4195 = fmul fast float %4172, 5.000000e-01
  %4196 = fmul fast float %4171, 5.000000e-01
  %4197 = fadd fast float %4195, 5.000000e-01
  %4198 = fadd fast float %4196, 5.000000e-01
  %4199 = sitofp i32 %4138 to float
  %4200 = fsub fast float %4166, %4199
  %4201 = call float @dx.op.unary.f32(i32 27, float %4200)  ; Round_ni(value)
  %4202 = call float @dx.op.unary.f32(i32 22, float %4166)  ; Frc(value)
  %4203 = call float @dx.op.unary.f32(i32 22, float %4198)  ; Frc(value)
  %4204 = call float @dx.op.unary.f32(i32 22, float %4197)  ; Frc(value)
  %4205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4203, float %4204, float %4201, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4206 = extractvalue %dx.types.ResRet.f32 %4205, 0
  %4207 = extractvalue %dx.types.ResRet.f32 %4205, 1
  %4208 = extractvalue %dx.types.ResRet.f32 %4205, 2
  %4209 = extractvalue %dx.types.ResRet.f32 %4205, 3
  %4210 = fcmp fast ogt float %4202, 0.000000e+00
  br i1 %4210, label %4211, label %4232, !dx.controlflow.hints !119

; <label>:4211                                    ; preds = %4194
  %4212 = fadd fast float %4201, 1.000000e+00
  %4213 = call float @dx.op.unary.f32(i32 22, float %4175)  ; Frc(value)
  %4214 = call float @dx.op.unary.f32(i32 22, float %4176)  ; Frc(value)
  %4215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4213, float %4214, float %4212, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4216 = extractvalue %dx.types.ResRet.f32 %4215, 0
  %4217 = extractvalue %dx.types.ResRet.f32 %4215, 1
  %4218 = extractvalue %dx.types.ResRet.f32 %4215, 2
  %4219 = extractvalue %dx.types.ResRet.f32 %4215, 3
  %4220 = fsub fast float %4216, %4206
  %4221 = fsub fast float %4217, %4207
  %4222 = fsub fast float %4218, %4208
  %4223 = fsub fast float %4219, %4209
  %4224 = fmul fast float %4220, %4202
  %4225 = fmul fast float %4221, %4202
  %4226 = fmul fast float %4222, %4202
  %4227 = fmul fast float %4223, %4202
  %4228 = fadd fast float %4224, %4206
  %4229 = fadd fast float %4225, %4207
  %4230 = fadd fast float %4226, %4208
  %4231 = fadd fast float %4227, %4209
  br label %4232

; <label>:4232                                    ; preds = %4211, %4194
  %4233 = phi float [ %4228, %4211 ], [ %4206, %4194 ]
  %4234 = phi float [ %4229, %4211 ], [ %4207, %4194 ]
  %4235 = phi float [ %4230, %4211 ], [ %4208, %4194 ]
  %4236 = phi float [ %4231, %4211 ], [ %4209, %4194 ]
  %4237 = fadd fast float %4233, -5.000000e-01
  %4238 = fadd fast float %4235, -5.000000e-01
  %4239 = fmul fast float %4237, 0xBFD5555560000000
  %4240 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4238, float %4239)  ; FMad(a,b,c)
  %4241 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4234, float 0.000000e+00)  ; FMad(a,b,c)
  %4242 = fadd fast float %4241, %4236
  %4243 = fmul fast float %4237, -7.500000e-01
  %4244 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4238, float %4243)  ; FMad(a,b,c)
  %4245 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4234, float 0.000000e+00)  ; FMad(a,b,c)
  %4246 = fadd fast float %4245, %4236
  %4247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4248 = extractvalue %dx.types.CBufRet.f32 %4247, 0
  %4249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4250 = extractvalue %dx.types.CBufRet.f32 %4249, 0
  %4251 = extractvalue %dx.types.CBufRet.f32 %4249, 1
  %4252 = extractvalue %dx.types.CBufRet.f32 %4249, 2
  %4253 = extractvalue %dx.types.CBufRet.f32 %4249, 3
  %4254 = fsub fast float %4250, %4240
  %4255 = fsub fast float %4251, %4242
  %4256 = fsub fast float %4252, %4244
  %4257 = fsub fast float %4253, %4246
  %4258 = fmul fast float %4254, %4248
  %4259 = fmul fast float %4255, %4248
  %4260 = fmul fast float %4256, %4248
  %4261 = fmul fast float %4257, %4248
  %4262 = fadd fast float %4258, %4240
  %4263 = fadd fast float %4259, %4242
  %4264 = fadd fast float %4260, %4244
  %4265 = fadd fast float %4261, %4246
  %4266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4267 = extractvalue %dx.types.ResRet.i32 %4266, 0
  %4268 = and i32 %4267, 536870911
  %4269 = uitofp i32 %4268 to float
  %4270 = fmul fast float %4269, %4116
  %4271 = fmul fast float %4269, %4120
  %4272 = fptoui float %4270 to i32
  %4273 = fptoui float %4271 to i32
  %4274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4275 = extractvalue %dx.types.ResRet.i32 %4274, 0
  %4276 = and i32 %4275, 31
  %4277 = lshr i32 %4272, %4276
  %4278 = lshr i32 %4273, %4276
  %4279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4280 = extractvalue %dx.types.ResRet.i32 %4279, 0
  %4281 = and i32 %4280, 31
  %4282 = shl i32 1, %4281
  %4283 = call i32 @dx.op.binary.i32(i32 40, i32 %4282, i32 4)  ; UMin(a,b)
  %4284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4285 = extractvalue %dx.types.ResRet.i32 %4284, 0
  %4286 = extractvalue %dx.types.ResRet.i32 %4284, 1
  %4287 = icmp eq i32 %4283, 0
  br i1 %4287, label %4329, label %4288

; <label>:4288                                    ; preds = %4232
  br label %4289

; <label>:4289                                    ; preds = %4317, %4288
  %4290 = phi i32 [ %4320, %4317 ], [ 0, %4288 ]
  %4291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4292 = extractvalue %dx.types.ResRet.i32 %4291, 0
  %4293 = lshr i32 %4292, 16
  %4294 = and i32 %4293, 31
  %4295 = shl i32 %4278, %4294
  %4296 = add i32 %4295, %4277
  %4297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4298 = extractvalue %dx.types.ResRet.i32 %4297, 0
  %4299 = and i32 %4298, 31
  %4300 = shl i32 %4296, %4299
  %4301 = add i32 %4300, %4290
  %4302 = shl i32 %4301, 2
  %4303 = add i32 %4302, 32
  %4304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4303, i32 undef)  ; BufferLoad(srv,index,wot)
  %4305 = extractvalue %dx.types.ResRet.i32 %4304, 0
  %4306 = icmp slt i32 %4305, 0
  %4307 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4290
  %4308 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4290
  %4309 = bitcast float* %4307 to i32*
  %4310 = bitcast float* %4308 to i32*
  br i1 %4306, label %4311, label %4317

; <label>:4311                                    ; preds = %4289
  %4312 = and i32 %4305, 1073741823
  %4313 = add nuw nsw i32 %4312, 20
  %4314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4313, i32 undef)  ; BufferLoad(srv,index,wot)
  %4315 = extractvalue %dx.types.ResRet.i32 %4314, 0
  %4316 = extractvalue %dx.types.ResRet.i32 %4314, 1
  br label %4317

; <label>:4317                                    ; preds = %4311, %4289
  %4318 = phi i32 [ %4315, %4311 ], [ %4285, %4289 ]
  %4319 = phi i32 [ %4316, %4311 ], [ %4286, %4289 ]
  store i32 %4318, i32* %4309, align 4
  store i32 %4319, i32* %4310, align 4
  %4320 = add nuw i32 %4290, 1
  %4321 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.i32 %4321, 2
  %4323 = icmp eq i32 %4322, 0
  %4324 = icmp ugt i32 %4305, -1073741825
  %4325 = and i1 %4324, %4323
  %4326 = icmp ult i32 %4320, %4283
  %4327 = and i1 %4325, %4326
  br i1 %4327, label %4289, label %4328

; <label>:4328                                    ; preds = %4317
  br label %4329

; <label>:4329                                    ; preds = %4328, %4232
  %4330 = phi i32 [ 0, %4232 ], [ %4320, %4328 ]
  %4331 = extractvalue %dx.types.CBufRet.f32 %4094, 2
  %4332 = fptoui float %4331 to i32
  %4333 = icmp eq i32 %4332, 0
  br i1 %4333, label %4385, label %4334

; <label>:4334                                    ; preds = %4329
  br label %4335

; <label>:4335                                    ; preds = %4380, %4334
  %4336 = phi i32 [ %4381, %4380 ], [ %4330, %4334 ]
  %4337 = phi i32 [ %4382, %4380 ], [ 0, %4334 ]
  %4338 = lshr i32 %4337, 2
  %4339 = and i32 %4337, 3
  %4340 = add nuw nsw i32 %4338, 83
  %4341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 %4340)  ; CBufferLoadLegacy(handle,regIndex)
  %4342 = extractvalue %dx.types.CBufRet.i32 %4341, 0
  %4343 = extractvalue %dx.types.CBufRet.i32 %4341, 1
  %4344 = extractvalue %dx.types.CBufRet.i32 %4341, 2
  %4345 = extractvalue %dx.types.CBufRet.i32 %4341, 3
  %4346 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %4342, i32* %4346, align 4
  %4347 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %4343, i32* %4347, align 4
  %4348 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %4344, i32* %4348, align 4
  %4349 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %4345, i32* %4349, align 4
  %4350 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %4339
  %4351 = load i32, i32* %4350, align 4, !tbaa !120, !noalias !124
  %4352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4353 = extractvalue %dx.types.ResRet.i32 %4352, 0
  %4354 = lshr i32 %4353, 16
  %4355 = and i32 %4354, 31
  %4356 = shl i32 %4278, %4355
  %4357 = add i32 %4356, %4277
  %4358 = shl i32 %4357, 2
  %4359 = add i32 %4358, %4351
  %4360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4359, i32 undef)  ; BufferLoad(srv,index,wot)
  %4361 = extractvalue %dx.types.ResRet.i32 %4360, 0
  %4362 = icmp eq i32 %4361, 0
  br i1 %4362, label %4380, label %4363

; <label>:4363                                    ; preds = %4335
  %4364 = icmp slt i32 %4361, 0
  %4365 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4336
  %4366 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4336
  %4367 = bitcast float* %4365 to i32*
  %4368 = bitcast float* %4366 to i32*
  br i1 %4364, label %4369, label %4376

; <label>:4369                                    ; preds = %4363
  %4370 = and i32 %4361, 1073741823
  %4371 = add i32 %4351, 20
  %4372 = add i32 %4371, %4370
  %4373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4372, i32 undef)  ; BufferLoad(srv,index,wot)
  %4374 = extractvalue %dx.types.ResRet.i32 %4373, 0
  %4375 = extractvalue %dx.types.ResRet.i32 %4373, 1
  br label %4376

; <label>:4376                                    ; preds = %4369, %4363
  %4377 = phi i32 [ %4374, %4369 ], [ %4285, %4363 ]
  %4378 = phi i32 [ %4375, %4369 ], [ %4286, %4363 ]
  store i32 %4377, i32* %4367, align 4
  store i32 %4378, i32* %4368, align 4
  %4379 = add i32 %4336, 1
  br label %4380

; <label>:4380                                    ; preds = %4376, %4335
  %4381 = phi i32 [ %4336, %4335 ], [ %4379, %4376 ]
  %4382 = add nuw i32 %4337, 1
  %4383 = icmp eq i32 %4382, %4332
  br i1 %4383, label %4384, label %4335

; <label>:4384                                    ; preds = %4380
  br label %4385

; <label>:4385                                    ; preds = %4384, %4329
  %4386 = phi i32 [ %4330, %4329 ], [ %4381, %4384 ]
  %4387 = icmp eq i32 %4386, 1
  %4388 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  %4389 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  br i1 %4387, label %4390, label %4393

; <label>:4390                                    ; preds = %4385
  %4391 = load float, float* %4388, align 4
  %4392 = load float, float* %4389, align 4
  br label %4420

; <label>:4393                                    ; preds = %4385
  %4394 = load float, float* %4388, align 4
  %4395 = load float, float* %4389, align 4
  %4396 = fdiv fast float 1.000000e+00, %4395
  %4397 = fsub fast float %4394, %4396
  %4398 = icmp ugt i32 %4386, 1
  br i1 %4398, label %4399, label %4415

; <label>:4399                                    ; preds = %4393
  br label %4400

; <label>:4400                                    ; preds = %4400, %4399
  %4401 = phi float [ %4410, %4400 ], [ %4397, %4399 ]
  %4402 = phi float [ %4411, %4400 ], [ %4394, %4399 ]
  %4403 = phi i32 [ %4412, %4400 ], [ 1, %4399 ]
  %4404 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4403
  %4405 = load float, float* %4404, align 4
  %4406 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4403
  %4407 = load float, float* %4406, align 4
  %4408 = fdiv fast float 1.000000e+00, %4407
  %4409 = fsub fast float %4405, %4408
  %4410 = call float @dx.op.binary.f32(i32 36, float %4401, float %4409)  ; FMin(a,b)
  %4411 = call float @dx.op.binary.f32(i32 35, float %4402, float %4405)  ; FMax(a,b)
  %4412 = add nuw i32 %4403, 1
  %4413 = icmp eq i32 %4412, %4386
  br i1 %4413, label %4414, label %4400

; <label>:4414                                    ; preds = %4400
  br label %4415

; <label>:4415                                    ; preds = %4414, %4393
  %4416 = phi float [ %4397, %4393 ], [ %4410, %4414 ]
  %4417 = phi float [ %4394, %4393 ], [ %4411, %4414 ]
  %4418 = fsub fast float %4417, %4416
  %4419 = fdiv fast float 1.000000e+00, %4418
  br label %4420

; <label>:4420                                    ; preds = %4415, %4390
  %4421 = phi float [ %4391, %4390 ], [ %4417, %4415 ]
  %4422 = phi float [ %4392, %4390 ], [ %4419, %4415 ]
  %4423 = fadd fast float %4124, %4421
  %4424 = fmul fast float %4423, %4422
  %4425 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4426 = fmul fast float %4425, 2.000000e+00
  %4427 = fsub fast float 1.000000e+00, %4426
  %4428 = fmul fast float %4262, %4262
  %4429 = fsub fast float %4263, %4428
  %4430 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4429)  ; FMax(a,b)
  %4431 = fdiv fast float 1.000000e+00, %4430
  %4432 = fmul fast float %4263, %4262
  %4433 = fsub fast float %4264, %4432
  %4434 = fsub fast float %4427, %4262
  %4435 = fmul fast float %4427, %4427
  %4436 = fsub fast float %4435, %4263
  %4437 = fmul fast float %4431, %4433
  %4438 = fmul fast float %4437, %4434
  %4439 = fsub fast float %4436, %4438
  %4440 = fmul fast float %4263, %4263
  %4441 = fsub fast float %4265, %4440
  %4442 = fmul fast float %4433, %4433
  %4443 = fmul fast float %4442, %4431
  %4444 = fsub fast float %4441, %4443
  %4445 = fdiv fast float %4439, %4444
  %4446 = fmul fast float %4445, %4433
  %4447 = fsub fast float %4434, %4446
  %4448 = fmul fast float %4447, %4431
  %4449 = fmul fast float %4448, %4262
  %4450 = fsub fast float 1.000000e+00, %4449
  %4451 = fmul fast float %4445, %4263
  %4452 = fsub fast float %4450, %4451
  %4453 = fmul fast float %4448, %4448
  %4454 = fmul fast float %4445, 4.000000e+00
  %4455 = fmul fast float %4454, %4452
  %4456 = fsub fast float %4453, %4455
  %4457 = call float @dx.op.unary.f32(i32 24, float %4456)  ; Sqrt(value)
  %4458 = fcmp fast oge float %4448, 0.000000e+00
  %4459 = fsub fast float -0.000000e+00, %4457
  %4460 = select i1 %4458, float %4459, float %4457
  %4461 = fsub fast float %4460, %4448
  %4462 = fdiv fast float %4461, %4445
  %4463 = fdiv fast float %4452, %4461
  %4464 = fmul fast float %4462, 5.000000e-01
  %4465 = fmul fast float %4463, 2.000000e+00
  %4466 = select i1 %4458, float %4464, float %4465
  %4467 = select i1 %4458, float %4465, float %4464
  %4468 = call float @dx.op.binary.f32(i32 35, float %4466, float %4467)  ; FMax(a,b)
  %4469 = call float @dx.op.binary.f32(i32 36, float %4466, float %4467)  ; FMin(a,b)
  %4470 = fcmp fast ogt float %4427, %4468
  %4471 = fsub fast float %4427, %4469
  %4472 = fsub fast float %4427, %4468
  %4473 = fsub fast float %4468, %4469
  %4474 = select i1 %4470, float %4472, float %4473
  %4475 = fmul float %4471, %4474
  %4476 = select i1 %4470, float %4469, float %4427
  %4477 = fcmp fast ogt float %4427, %4469
  %4478 = fmul fast float %4476, %4468
  %4479 = fadd fast float %4476, %4468
  %4480 = fmul fast float %4479, %4262
  %4481 = fadd fast float %4478, %4263
  %4482 = fsub fast float %4481, %4480
  %4483 = fdiv fast float %4482, %4475
  %4484 = select i1 %4477, float %4483, float 0.000000e+00
  %4485 = fsub fast float 1.000000e+00, %4484
  %4486 = select i1 %4470, float %4485, float %4484
  %4487 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4488 = extractvalue %dx.types.CBufRet.f32 %4247, 3
  %4489 = fmul fast float %4488, %4487
  %4490 = fsub fast float 1.000000e+00, %4489
  br label %4491

; <label>:4491                                    ; preds = %4420, %4132, %4097, %4093, %4059
  %4492 = phi float [ 1.000000e+00, %4059 ], [ %4490, %4420 ], [ 1.000000e+00, %4097 ], [ 1.000000e+00, %4132 ], [ 1.000000e+00, %4093 ]
  %4493 = fcmp fast ogt float %4089, 0.000000e+00
  br i1 %4493, label %4494, label %4656, !dx.controlflow.hints !133

; <label>:4494                                    ; preds = %4491
  %4495 = fadd fast float %4002, %3976
  %4496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4497 = extractvalue %dx.types.CBufRet.f32 %4496, 2
  %4498 = extractvalue %dx.types.CBufRet.f32 %4496, 3
  %4499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4500 = extractvalue %dx.types.CBufRet.f32 %4499, 2
  %4501 = call float @dx.op.binary.f32(i32 35, float %4495, float 0.000000e+00)  ; FMax(a,b)
  %4502 = fadd fast float %4501, 0x3F10000000000000
  %4503 = fcmp fast oeq float %4500, 0.000000e+00
  br i1 %4503, label %4504, label %4571

; <label>:4504                                    ; preds = %4494
  %4505 = extractvalue %dx.types.CBufRet.f32 %4496, 1
  %4506 = extractvalue %dx.types.CBufRet.f32 %4496, 0
  %4507 = fmul fast float %4506, %3991
  %4508 = fmul fast float %4505, %3992
  %4509 = fadd fast float %4507, 5.000000e-01
  %4510 = call float @dx.op.unary.f32(i32 27, float %4509)  ; Round_ni(value)
  %4511 = fadd fast float %4508, 5.000000e-01
  %4512 = call float @dx.op.unary.f32(i32 27, float %4511)  ; Round_ni(value)
  %4513 = fsub fast float %4509, %4510
  %4514 = fsub fast float %4511, %4512
  %4515 = fadd fast float %4510, -5.000000e-01
  %4516 = fadd fast float %4512, -5.000000e-01
  %4517 = fmul fast float %4513, 2.000000e+00
  %4518 = fsub fast float 3.000000e+00, %4517
  %4519 = fadd fast float %4517, 1.000000e+00
  %4520 = fsub fast float 2.000000e+00, %4513
  %4521 = bitcast float %4518 to i32
  %4522 = sub nsw i32 2129859010, %4521
  %4523 = bitcast i32 %4522 to float
  %4524 = fmul fast float %4523, %4520
  %4525 = fadd fast float %4524, -1.000000e+00
  %4526 = bitcast float %4519 to i32
  %4527 = sub nsw i32 2129859010, %4526
  %4528 = bitcast i32 %4527 to float
  %4529 = fmul fast float %4528, %4513
  %4530 = fadd fast float %4529, 1.000000e+00
  %4531 = fmul fast float %4514, 2.000000e+00
  %4532 = fsub fast float 3.000000e+00, %4531
  %4533 = fadd fast float %4531, 1.000000e+00
  %4534 = fsub fast float 2.000000e+00, %4514
  %4535 = bitcast float %4532 to i32
  %4536 = sub nsw i32 2129859010, %4535
  %4537 = bitcast i32 %4536 to float
  %4538 = fmul fast float %4537, %4534
  %4539 = fadd fast float %4538, -1.000000e+00
  %4540 = bitcast float %4533 to i32
  %4541 = sub nsw i32 2129859010, %4540
  %4542 = bitcast i32 %4541 to float
  %4543 = fmul fast float %4542, %4514
  %4544 = fadd fast float %4543, 1.000000e+00
  %4545 = fadd fast float %4525, %4515
  %4546 = fmul fast float %4545, %4497
  %4547 = fadd fast float %4539, %4516
  %4548 = fmul fast float %4547, %4498
  %4549 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4546, float %4548, float undef, float undef, i32 0, i32 0, i32 undef, float %4502)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4550 = extractvalue %dx.types.ResRet.f32 %4549, 0
  %4551 = fmul fast float %4550, %4518
  %4552 = fadd fast float %4530, %4515
  %4553 = fmul fast float %4552, %4497
  %4554 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4553, float %4548, float undef, float undef, i32 0, i32 0, i32 undef, float %4502)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4555 = extractvalue %dx.types.ResRet.f32 %4554, 0
  %4556 = fmul fast float %4555, %4519
  %4557 = fadd fast float %4544, %4516
  %4558 = fmul fast float %4557, %4498
  %4559 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4546, float %4558, float undef, float undef, i32 0, i32 0, i32 undef, float %4502)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4560 = extractvalue %dx.types.ResRet.f32 %4559, 0
  %4561 = fmul fast float %4560, %4518
  %4562 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4553, float %4558, float undef, float undef, i32 0, i32 0, i32 undef, float %4502)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4563 = extractvalue %dx.types.ResRet.f32 %4562, 0
  %4564 = fmul fast float %4563, %4519
  %4565 = fadd fast float %4564, %4561
  %4566 = fmul fast float %4565, %4533
  %4567 = fadd fast float %4556, %4551
  %4568 = fmul fast float %4567, %4532
  %4569 = fadd fast float %4568, %4566
  %4570 = fmul fast float %4569, 6.250000e-02
  br label %4656

; <label>:4571                                    ; preds = %4494
  %4572 = fmul fast float %253, 0x401921FB60000000
  %4573 = call float @dx.op.unary.f32(i32 13, float %4572)  ; Sin(value)
  %4574 = call float @dx.op.unary.f32(i32 12, float %4572)  ; Cos(value)
  %4575 = fsub fast float -0.000000e+00, %4573
  br label %4576

; <label>:4576                                    ; preds = %4625, %4571
  %4577 = phi float [ 0.000000e+00, %4571 ], [ %4620, %4625 ]
  %4578 = phi float [ 0.000000e+00, %4571 ], [ %4622, %4625 ]
  %4579 = phi i32 [ 0, %4571 ], [ %4626, %4625 ]
  %4580 = mul i32 %4579, 2
  %4581 = add i32 0, %4580
  %4582 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4581
  %4583 = load float, float* %4582, align 4
  %4584 = mul i32 %4579, 2
  %4585 = add i32 1, %4584
  %4586 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4585
  %4587 = load float, float* %4586, align 4
  %4588 = fmul fast float %4583, %4574
  %4589 = call float @dx.op.tertiary.f32(i32 46, float %4587, float %4575, float %4588)  ; FMad(a,b,c)
  %4590 = fmul fast float %4583, %4573
  %4591 = call float @dx.op.tertiary.f32(i32 46, float %4587, float %4574, float %4590)  ; FMad(a,b,c)
  %4592 = fmul fast float %4589, %4500
  %4593 = fmul fast float %4591, %4500
  %4594 = fadd fast float %4592, %3991
  %4595 = fadd fast float %4593, %3992
  %4596 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %65, float %4594, float %4595, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4597 = extractvalue %dx.types.ResRet.f32 %4596, 0
  %4598 = extractvalue %dx.types.ResRet.f32 %4596, 1
  %4599 = extractvalue %dx.types.ResRet.f32 %4596, 2
  %4600 = extractvalue %dx.types.ResRet.f32 %4596, 3
  %4601 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 0
  store float %4597, float* %4601, align 4
  %4602 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 1
  store float %4598, float* %4602, align 4
  %4603 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 2
  store float %4599, float* %4603, align 4
  %4604 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 3
  store float %4600, float* %4604, align 4
  %4605 = fsub fast float %4597, %4502
  %4606 = fcmp fast olt float %4605, 0.000000e+00
  %4607 = select i1 %4606, float 0.000000e+00, float 1.000000e+00
  %4608 = fadd fast float %4607, %4577
  %4609 = fmul fast float %4607, %4605
  %4610 = fadd fast float %4609, %4578
  br label %4611

; <label>:4611                                    ; preds = %4611, %4576
  %4612 = phi i32 [ 1, %4576 ], [ %4623, %4611 ]
  %4613 = phi float [ %4610, %4576 ], [ %4622, %4611 ]
  %4614 = phi float [ %4608, %4576 ], [ %4620, %4611 ]
  %4615 = getelementptr [4 x float], [4 x float]* %93, i32 0, i32 %4612
  %4616 = load float, float* %4615, align 4, !tbaa !134, !noalias !124
  %4617 = fsub fast float %4616, %4502
  %4618 = fcmp fast olt float %4617, 0.000000e+00
  %4619 = select i1 %4618, float 0.000000e+00, float 1.000000e+00
  %4620 = fadd fast float %4619, %4614
  %4621 = fmul fast float %4619, %4617
  %4622 = fadd fast float %4621, %4613
  %4623 = add nuw nsw i32 %4612, 1
  %4624 = icmp eq i32 %4623, 4
  br i1 %4624, label %4625, label %4611, !llvm.loop !136

; <label>:4625                                    ; preds = %4611
  %4626 = add nuw nsw i32 %4579, 1
  %4627 = icmp eq i32 %4626, 8
  br i1 %4627, label %4628, label %4576, !llvm.loop !137

; <label>:4628                                    ; preds = %4625
  %4629 = fdiv fast float 1.000000e+00, %4620
  %4630 = fmul fast float %4629, %4622
  %4631 = fdiv fast float 1.000000e+00, %4502
  %4632 = fmul fast float %4630, %4631
  %4633 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4634 = call float @dx.op.binary.f32(i32 35, float %4633, float 0.000000e+00)  ; FMax(a,b)
  %4635 = fmul fast float %4620, 3.125000e-02
  %4636 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4637 = fmul fast float %4636, 2.000000e+00
  %4638 = fadd fast float %4637, -1.000000e+00
  %4639 = fcmp fast ogt float %4638, 0.000000e+00
  %4640 = fcmp fast olt float %4638, 0.000000e+00
  %4641 = zext i1 %4639 to i32
  %4642 = zext i1 %4640 to i32
  %4643 = sub nsw i32 %4641, %4642
  %4644 = sitofp i32 %4643 to float
  %4645 = fmul fast float %4644, %4638
  %4646 = fsub fast float 1.000000e+00, %4645
  %4647 = fmul fast float %4646, %4646
  %4648 = fmul fast float %4647, %4646
  %4649 = fsub fast float %4646, %4648
  %4650 = fmul fast float %4649, %4634
  %4651 = fsub fast float 1.000000e+00, %4648
  %4652 = fsub fast float %4651, %4650
  %4653 = fmul fast float %4644, 5.000000e-01
  %4654 = fmul fast float %4653, %4652
  %4655 = fsub fast float 5.000000e-01, %4654
  br label %4656

; <label>:4656                                    ; preds = %4628, %4504, %4491
  %4657 = phi float [ 1.000000e+00, %4491 ], [ %4570, %4504 ], [ %4655, %4628 ]
  %4658 = fcmp fast ogt float %4087, 0.000000e+00
  br i1 %4658, label %4659, label %4823, !dx.controlflow.hints !138

; <label>:4659                                    ; preds = %4656
  %4660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4661 = extractvalue %dx.types.CBufRet.f32 %4660, 1
  %4662 = fadd fast float %4661, %3976
  %4663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4664 = extractvalue %dx.types.CBufRet.f32 %4663, 2
  %4665 = extractvalue %dx.types.CBufRet.f32 %4663, 3
  %4666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4667 = extractvalue %dx.types.CBufRet.f32 %4666, 1
  %4668 = call float @dx.op.binary.f32(i32 35, float %4662, float 0.000000e+00)  ; FMax(a,b)
  %4669 = fadd fast float %4668, 0x3F10000000000000
  %4670 = fcmp fast oeq float %4667, 0.000000e+00
  br i1 %4670, label %4671, label %4738

; <label>:4671                                    ; preds = %4659
  %4672 = extractvalue %dx.types.CBufRet.f32 %4663, 1
  %4673 = extractvalue %dx.types.CBufRet.f32 %4663, 0
  %4674 = fmul fast float %4673, %3983
  %4675 = fmul fast float %4672, %3984
  %4676 = fadd fast float %4674, 5.000000e-01
  %4677 = call float @dx.op.unary.f32(i32 27, float %4676)  ; Round_ni(value)
  %4678 = fadd fast float %4675, 5.000000e-01
  %4679 = call float @dx.op.unary.f32(i32 27, float %4678)  ; Round_ni(value)
  %4680 = fsub fast float %4676, %4677
  %4681 = fsub fast float %4678, %4679
  %4682 = fadd fast float %4677, -5.000000e-01
  %4683 = fadd fast float %4679, -5.000000e-01
  %4684 = fmul fast float %4680, 2.000000e+00
  %4685 = fsub fast float 3.000000e+00, %4684
  %4686 = fadd fast float %4684, 1.000000e+00
  %4687 = fsub fast float 2.000000e+00, %4680
  %4688 = bitcast float %4685 to i32
  %4689 = sub nsw i32 2129859010, %4688
  %4690 = bitcast i32 %4689 to float
  %4691 = fmul fast float %4690, %4687
  %4692 = fadd fast float %4691, -1.000000e+00
  %4693 = bitcast float %4686 to i32
  %4694 = sub nsw i32 2129859010, %4693
  %4695 = bitcast i32 %4694 to float
  %4696 = fmul fast float %4695, %4680
  %4697 = fadd fast float %4696, 1.000000e+00
  %4698 = fmul fast float %4681, 2.000000e+00
  %4699 = fsub fast float 3.000000e+00, %4698
  %4700 = fadd fast float %4698, 1.000000e+00
  %4701 = fsub fast float 2.000000e+00, %4681
  %4702 = bitcast float %4699 to i32
  %4703 = sub nsw i32 2129859010, %4702
  %4704 = bitcast i32 %4703 to float
  %4705 = fmul fast float %4704, %4701
  %4706 = fadd fast float %4705, -1.000000e+00
  %4707 = bitcast float %4700 to i32
  %4708 = sub nsw i32 2129859010, %4707
  %4709 = bitcast i32 %4708 to float
  %4710 = fmul fast float %4709, %4681
  %4711 = fadd fast float %4710, 1.000000e+00
  %4712 = fadd fast float %4692, %4682
  %4713 = fmul fast float %4712, %4664
  %4714 = fadd fast float %4706, %4683
  %4715 = fmul fast float %4714, %4665
  %4716 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4713, float %4715, float undef, float undef, i32 0, i32 0, i32 undef, float %4669)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4717 = extractvalue %dx.types.ResRet.f32 %4716, 0
  %4718 = fmul fast float %4717, %4685
  %4719 = fadd fast float %4697, %4682
  %4720 = fmul fast float %4719, %4664
  %4721 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4720, float %4715, float undef, float undef, i32 0, i32 0, i32 undef, float %4669)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4722 = extractvalue %dx.types.ResRet.f32 %4721, 0
  %4723 = fmul fast float %4722, %4686
  %4724 = fadd fast float %4711, %4683
  %4725 = fmul fast float %4724, %4665
  %4726 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4713, float %4725, float undef, float undef, i32 0, i32 0, i32 undef, float %4669)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4727 = extractvalue %dx.types.ResRet.f32 %4726, 0
  %4728 = fmul fast float %4727, %4685
  %4729 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4720, float %4725, float undef, float undef, i32 0, i32 0, i32 undef, float %4669)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4730 = extractvalue %dx.types.ResRet.f32 %4729, 0
  %4731 = fmul fast float %4730, %4686
  %4732 = fadd fast float %4731, %4728
  %4733 = fmul fast float %4732, %4700
  %4734 = fadd fast float %4723, %4718
  %4735 = fmul fast float %4734, %4699
  %4736 = fadd fast float %4735, %4733
  %4737 = fmul fast float %4736, 6.250000e-02
  br label %4823

; <label>:4738                                    ; preds = %4659
  %4739 = fmul fast float %253, 0x401921FB60000000
  %4740 = call float @dx.op.unary.f32(i32 13, float %4739)  ; Sin(value)
  %4741 = call float @dx.op.unary.f32(i32 12, float %4739)  ; Cos(value)
  %4742 = fsub fast float -0.000000e+00, %4740
  br label %4743

; <label>:4743                                    ; preds = %4792, %4738
  %4744 = phi float [ 0.000000e+00, %4738 ], [ %4787, %4792 ]
  %4745 = phi float [ 0.000000e+00, %4738 ], [ %4789, %4792 ]
  %4746 = phi i32 [ 0, %4738 ], [ %4793, %4792 ]
  %4747 = mul i32 %4746, 2
  %4748 = add i32 0, %4747
  %4749 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4748
  %4750 = load float, float* %4749, align 4
  %4751 = mul i32 %4746, 2
  %4752 = add i32 1, %4751
  %4753 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4752
  %4754 = load float, float* %4753, align 4
  %4755 = fmul fast float %4750, %4741
  %4756 = call float @dx.op.tertiary.f32(i32 46, float %4754, float %4742, float %4755)  ; FMad(a,b,c)
  %4757 = fmul fast float %4750, %4740
  %4758 = call float @dx.op.tertiary.f32(i32 46, float %4754, float %4741, float %4757)  ; FMad(a,b,c)
  %4759 = fmul fast float %4756, %4667
  %4760 = fmul fast float %4758, %4667
  %4761 = fadd fast float %4759, %3983
  %4762 = fadd fast float %4760, %3984
  %4763 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %65, float %4761, float %4762, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4764 = extractvalue %dx.types.ResRet.f32 %4763, 0
  %4765 = extractvalue %dx.types.ResRet.f32 %4763, 1
  %4766 = extractvalue %dx.types.ResRet.f32 %4763, 2
  %4767 = extractvalue %dx.types.ResRet.f32 %4763, 3
  %4768 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %4764, float* %4768, align 4
  %4769 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %4765, float* %4769, align 4
  %4770 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %4766, float* %4770, align 4
  %4771 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %4767, float* %4771, align 4
  %4772 = fsub fast float %4764, %4669
  %4773 = fcmp fast olt float %4772, 0.000000e+00
  %4774 = select i1 %4773, float 0.000000e+00, float 1.000000e+00
  %4775 = fadd fast float %4774, %4744
  %4776 = fmul fast float %4774, %4772
  %4777 = fadd fast float %4776, %4745
  br label %4778

; <label>:4778                                    ; preds = %4778, %4743
  %4779 = phi i32 [ 1, %4743 ], [ %4790, %4778 ]
  %4780 = phi float [ %4777, %4743 ], [ %4789, %4778 ]
  %4781 = phi float [ %4775, %4743 ], [ %4787, %4778 ]
  %4782 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %4779
  %4783 = load float, float* %4782, align 4, !tbaa !134, !noalias !124
  %4784 = fsub fast float %4783, %4669
  %4785 = fcmp fast olt float %4784, 0.000000e+00
  %4786 = select i1 %4785, float 0.000000e+00, float 1.000000e+00
  %4787 = fadd fast float %4786, %4781
  %4788 = fmul fast float %4786, %4784
  %4789 = fadd fast float %4788, %4780
  %4790 = add nuw nsw i32 %4779, 1
  %4791 = icmp eq i32 %4790, 4
  br i1 %4791, label %4792, label %4778, !llvm.loop !136

; <label>:4792                                    ; preds = %4778
  %4793 = add nuw nsw i32 %4746, 1
  %4794 = icmp eq i32 %4793, 8
  br i1 %4794, label %4795, label %4743, !llvm.loop !137

; <label>:4795                                    ; preds = %4792
  %4796 = fdiv fast float 1.000000e+00, %4787
  %4797 = fmul fast float %4796, %4789
  %4798 = fdiv fast float 1.000000e+00, %4669
  %4799 = fmul fast float %4797, %4798
  %4800 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4801 = call float @dx.op.binary.f32(i32 35, float %4800, float 0.000000e+00)  ; FMax(a,b)
  %4802 = fmul fast float %4787, 3.125000e-02
  %4803 = call float @dx.op.unary.f32(i32 7, float %4802)  ; Saturate(value)
  %4804 = fmul fast float %4803, 2.000000e+00
  %4805 = fadd fast float %4804, -1.000000e+00
  %4806 = fcmp fast ogt float %4805, 0.000000e+00
  %4807 = fcmp fast olt float %4805, 0.000000e+00
  %4808 = zext i1 %4806 to i32
  %4809 = zext i1 %4807 to i32
  %4810 = sub nsw i32 %4808, %4809
  %4811 = sitofp i32 %4810 to float
  %4812 = fmul fast float %4811, %4805
  %4813 = fsub fast float 1.000000e+00, %4812
  %4814 = fmul fast float %4813, %4813
  %4815 = fmul fast float %4814, %4813
  %4816 = fsub fast float %4813, %4815
  %4817 = fmul fast float %4816, %4801
  %4818 = fsub fast float 1.000000e+00, %4815
  %4819 = fsub fast float %4818, %4817
  %4820 = fmul fast float %4811, 5.000000e-01
  %4821 = fmul fast float %4820, %4819
  %4822 = fsub fast float 5.000000e-01, %4821
  br label %4823

; <label>:4823                                    ; preds = %4795, %4671, %4656
  %4824 = phi float [ 1.000000e+00, %4656 ], [ %4737, %4671 ], [ %4822, %4795 ]
  %4825 = fcmp fast ogt float %4086, 0.000000e+00
  br i1 %4825, label %4826, label %4990, !dx.controlflow.hints !139

; <label>:4826                                    ; preds = %4823
  %4827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4828 = extractvalue %dx.types.CBufRet.f32 %4827, 0
  %4829 = fadd fast float %4828, %3976
  %4830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4831 = extractvalue %dx.types.CBufRet.f32 %4830, 2
  %4832 = extractvalue %dx.types.CBufRet.f32 %4830, 3
  %4833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4834 = extractvalue %dx.types.CBufRet.f32 %4833, 0
  %4835 = call float @dx.op.binary.f32(i32 35, float %4829, float 0.000000e+00)  ; FMax(a,b)
  %4836 = fadd fast float %4835, 0x3F10000000000000
  %4837 = fcmp fast oeq float %4834, 0.000000e+00
  br i1 %4837, label %4838, label %4905

; <label>:4838                                    ; preds = %4826
  %4839 = extractvalue %dx.types.CBufRet.f32 %4830, 1
  %4840 = extractvalue %dx.types.CBufRet.f32 %4830, 0
  %4841 = fmul fast float %4840, %3968
  %4842 = fmul fast float %4839, %3972
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
  %4883 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4880, float %4882, float undef, float undef, i32 0, i32 0, i32 undef, float %4836)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4884 = extractvalue %dx.types.ResRet.f32 %4883, 0
  %4885 = fmul fast float %4884, %4852
  %4886 = fadd fast float %4864, %4849
  %4887 = fmul fast float %4886, %4831
  %4888 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4887, float %4882, float undef, float undef, i32 0, i32 0, i32 undef, float %4836)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4889 = extractvalue %dx.types.ResRet.f32 %4888, 0
  %4890 = fmul fast float %4889, %4853
  %4891 = fadd fast float %4878, %4850
  %4892 = fmul fast float %4891, %4832
  %4893 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4880, float %4892, float undef, float undef, i32 0, i32 0, i32 undef, float %4836)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4894 = extractvalue %dx.types.ResRet.f32 %4893, 0
  %4895 = fmul fast float %4894, %4852
  %4896 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4887, float %4892, float undef, float undef, i32 0, i32 0, i32 undef, float %4836)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4897 = extractvalue %dx.types.ResRet.f32 %4896, 0
  %4898 = fmul fast float %4897, %4853
  %4899 = fadd fast float %4898, %4895
  %4900 = fmul fast float %4899, %4867
  %4901 = fadd fast float %4890, %4885
  %4902 = fmul fast float %4901, %4866
  %4903 = fadd fast float %4902, %4900
  %4904 = fmul fast float %4903, 6.250000e-02
  br label %4990

; <label>:4905                                    ; preds = %4826
  %4906 = fmul fast float %253, 0x401921FB60000000
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
  %4928 = fadd fast float %4926, %3968
  %4929 = fadd fast float %4927, %3972
  %4930 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %65, float %4928, float %4929, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4931 = extractvalue %dx.types.ResRet.f32 %4930, 0
  %4932 = extractvalue %dx.types.ResRet.f32 %4930, 1
  %4933 = extractvalue %dx.types.ResRet.f32 %4930, 2
  %4934 = extractvalue %dx.types.ResRet.f32 %4930, 3
  %4935 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %4931, float* %4935, align 4
  %4936 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %4932, float* %4936, align 4
  %4937 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %4933, float* %4937, align 4
  %4938 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
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
  %4949 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %4946
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

; <label>:4990                                    ; preds = %4962, %4838, %4823
  %4991 = phi float [ 1.000000e+00, %4823 ], [ %4904, %4838 ], [ %4989, %4962 ]
  %4992 = fsub fast float %4657, %4492
  %4993 = fmul fast float %4992, %4030
  %4994 = fadd fast float %4993, %4492
  %4995 = fsub fast float %4824, %4994
  %4996 = fmul fast float %4995, %4060
  %4997 = fadd fast float %4996, %4994
  %4998 = fsub fast float %4991, %4997
  %4999 = fmul fast float %4998, %4086
  %5000 = fadd fast float %4999, %4997
  %5001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5002 = extractvalue %dx.types.CBufRet.f32 %5001, 2
  %5003 = fcmp fast ogt float %5002, 0.000000e+00
  br i1 %5003, label %5004, label %5044, !dx.controlflow.hints !140

; <label>:5004                                    ; preds = %4990
  %5005 = fcmp fast ugt float %5002, 0.000000e+00
  br i1 %5005, label %5006, label %5041

; <label>:5006                                    ; preds = %5004
  %5007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5008 = extractvalue %dx.types.CBufRet.f32 %5007, 0
  %5009 = extractvalue %dx.types.CBufRet.f32 %5007, 1
  %5010 = extractvalue %dx.types.CBufRet.f32 %5007, 2
  %5011 = extractvalue %dx.types.CBufRet.f32 %5007, 3
  %5012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5013 = extractvalue %dx.types.CBufRet.f32 %5012, 0
  %5014 = extractvalue %dx.types.CBufRet.f32 %5012, 1
  %5015 = extractvalue %dx.types.CBufRet.f32 %5012, 2
  %5016 = extractvalue %dx.types.CBufRet.f32 %5012, 3
  %5017 = extractvalue %dx.types.CBufRet.f32 %5001, 0
  %5018 = extractvalue %dx.types.CBufRet.f32 %5001, 1
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 0
  %5021 = extractvalue %dx.types.CBufRet.f32 %5019, 1
  %5022 = extractvalue %dx.types.CBufRet.f32 %5019, 2
  %5023 = fadd fast float %5020, %3945
  %5024 = fadd fast float %5021, %3946
  %5025 = fadd fast float %5022, %3947
  %5026 = fmul fast float %5023, %5008
  %5027 = call float @dx.op.tertiary.f32(i32 46, float %5009, float %5024, float %5026)  ; FMad(a,b,c)
  %5028 = call float @dx.op.tertiary.f32(i32 46, float %5010, float %5025, float %5027)  ; FMad(a,b,c)
  %5029 = fadd fast float %5028, %5011
  %5030 = fmul fast float %5023, %5013
  %5031 = call float @dx.op.tertiary.f32(i32 46, float %5014, float %5024, float %5030)  ; FMad(a,b,c)
  %5032 = call float @dx.op.tertiary.f32(i32 46, float %5015, float %5025, float %5031)  ; FMad(a,b,c)
  %5033 = fadd fast float %5032, %5016
  %5034 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %61, float %5029, float %5033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5035 = extractvalue %dx.types.ResRet.f32 %5034, 0
  %5036 = fmul fast float %5035, %5018
  %5037 = fadd fast float %5036, %5017
  %5038 = call float @dx.op.unary.f32(i32 7, float %5037)  ; Saturate(value)
  %5039 = fmul fast float %5038, %5002
  %5040 = fsub fast float 1.000000e+00, %5039
  br label %5041

; <label>:5041                                    ; preds = %5006, %5004
  %5042 = phi float [ %5040, %5006 ], [ 1.000000e+00, %5004 ]
  %5043 = fmul fast float %5042, %5000
  br label %5044

; <label>:5044                                    ; preds = %5041, %4990, %3925
  %5045 = phi float [ 1.000000e+00, %3925 ], [ %5043, %5041 ], [ %5000, %4990 ]
  %5046 = call float @dx.op.binary.f32(i32 36, float %5045, float %5045)  ; FMin(a,b)
  %5047 = call float @dx.op.binary.f32(i32 36, float %5045, float %5046)  ; FMin(a,b)
  %5048 = fcmp fast ogt float %5047, 0.000000e+00
  br i1 %5048, label %5049, label %5214, !dx.controlflow.hints !141

; <label>:5049                                    ; preds = %5044
  %5050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5051 = extractvalue %dx.types.CBufRet.f32 %5050, 0
  %5052 = extractvalue %dx.types.CBufRet.f32 %5050, 1
  %5053 = extractvalue %dx.types.CBufRet.f32 %5050, 2
  %5054 = extractvalue %dx.types.CBufRet.f32 %5050, 3
  %5055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5056 = extractvalue %dx.types.CBufRet.f32 %5055, 0
  %5057 = extractvalue %dx.types.CBufRet.f32 %5055, 1
  %5058 = extractvalue %dx.types.CBufRet.f32 %5055, 2
  %5059 = extractvalue %dx.types.CBufRet.f32 %5055, 3
  %5060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5061 = extractvalue %dx.types.CBufRet.f32 %5060, 0
  %5062 = extractvalue %dx.types.CBufRet.f32 %5060, 1
  %5063 = extractvalue %dx.types.CBufRet.f32 %5060, 2
  %5064 = extractvalue %dx.types.CBufRet.f32 %5060, 3
  %5065 = fmul fast float %5051, %3945
  %5066 = call float @dx.op.tertiary.f32(i32 46, float %3946, float %5052, float %5065)  ; FMad(a,b,c)
  %5067 = call float @dx.op.tertiary.f32(i32 46, float %3947, float %5053, float %5066)  ; FMad(a,b,c)
  %5068 = fadd fast float %5067, %5054
  %5069 = fmul fast float %5056, %3945
  %5070 = call float @dx.op.tertiary.f32(i32 46, float %3946, float %5057, float %5069)  ; FMad(a,b,c)
  %5071 = call float @dx.op.tertiary.f32(i32 46, float %3947, float %5058, float %5070)  ; FMad(a,b,c)
  %5072 = fadd fast float %5071, %5059
  %5073 = fmul fast float %5061, %3945
  %5074 = call float @dx.op.tertiary.f32(i32 46, float %3946, float %5062, float %5073)  ; FMad(a,b,c)
  %5075 = call float @dx.op.tertiary.f32(i32 46, float %3947, float %5063, float %5074)  ; FMad(a,b,c)
  %5076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5077 = extractvalue %dx.types.CBufRet.f32 %5076, 0
  %5078 = extractvalue %dx.types.CBufRet.f32 %5076, 1
  %5079 = extractvalue %dx.types.CBufRet.f32 %5076, 3
  %5080 = fmul fast float %5079, %5068
  %5081 = fmul fast float %5079, %5072
  %5082 = fadd fast float %5080, %5077
  %5083 = fadd fast float %5081, %5078
  %5084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.f32 %5084, 0
  %5086 = extractvalue %dx.types.CBufRet.f32 %5084, 1
  %5087 = fsub fast float %5082, %5085
  %5088 = fsub fast float %5083, %5086
  %5089 = fcmp fast olt float %5087, 0.000000e+00
  %5090 = fcmp fast olt float %5088, 0.000000e+00
  %5091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5092 = extractvalue %dx.types.CBufRet.f32 %5091, 0
  %5093 = extractvalue %dx.types.CBufRet.f32 %5091, 1
  %5094 = extractvalue %dx.types.CBufRet.f32 %5091, 2
  %5095 = extractvalue %dx.types.CBufRet.f32 %5091, 3
  %5096 = select i1 %5089, float %5092, float %5094
  %5097 = select i1 %5090, float %5093, float %5095
  %5098 = fmul fast float %5096, %5087
  %5099 = fmul fast float %5097, %5088
  %5100 = call float @dx.op.unary.f32(i32 6, float %5098)  ; FAbs(value)
  %5101 = call float @dx.op.unary.f32(i32 6, float %5099)  ; FAbs(value)
  %5102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5103 = extractvalue %dx.types.CBufRet.f32 %5102, 0
  %5104 = call float @dx.op.binary.f32(i32 35, float %5100, float %5101)  ; FMax(a,b)
  %5105 = fsub fast float %5103, %5104
  %5106 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5107 = fcmp fast ogt float %5106, 0.000000e+00
  br i1 %5107, label %5108, label %5149, !dx.controlflow.hints !142

; <label>:5108                                    ; preds = %5049
  %5109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %64, float %5082, float %5083, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5110 = extractvalue %dx.types.ResRet.f32 %5109, 1
  %5111 = fcmp fast ogt float %5110, 0.000000e+00
  br i1 %5111, label %5112, label %5144

; <label>:5112                                    ; preds = %5108
  %5113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %64, float %5082, float %5083, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5114 = extractvalue %dx.types.ResRet.f32 %5113, 0
  %5115 = extractvalue %dx.types.ResRet.f32 %5113, 1
  %5116 = extractvalue %dx.types.ResRet.f32 %5113, 2
  %5117 = extractvalue %dx.types.ResRet.f32 %5113, 3
  %5118 = fsub fast float 1.000000e+00, %5064
  %5119 = fsub fast float %5118, %5075
  %5120 = fmul fast float %5119, 0x400921FB60000000
  %5121 = fadd fast float %5120, 0x3FF921FB60000000
  %5122 = call float @dx.op.unary.f32(i32 13, float %5121)  ; Sin(value)
  %5123 = fadd fast float %5122, -1.000000e+00
  %5124 = fmul fast float %5123, 0x3FD45F3060000000
  %5125 = fmul fast float %5119, 0x401921FB60000000
  %5126 = fadd fast float %5125, 0x400921FB60000000
  %5127 = call float @dx.op.unary.f32(i32 13, float %5126)  ; Sin(value)
  %5128 = fadd fast float %5127, 0x3E7777A5C0000000
  %5129 = fmul fast float %5128, 0x3FC45F3060000000
  %5130 = fmul fast float %5119, 0x4022D97C80000000
  %5131 = fadd fast float %5130, 0x4012D97C80000000
  %5132 = call float @dx.op.unary.f32(i32 13, float %5131)  ; Sin(value)
  %5133 = fadd fast float %5132, 1.000000e+00
  %5134 = fmul fast float %5133, 0x3FBB2995E0000000
  %5135 = fmul fast float %5119, 0x402921FB60000000
  %5136 = fadd fast float %5135, 0x401921FB60000000
  %5137 = call float @dx.op.unary.f32(i32 13, float %5136)  ; Sin(value)
  %5138 = fadd fast float %5137, 0xBE8777A5C0000000
  %5139 = fmul fast float %5138, 0x3FB45F3060000000
  %5140 = call float @dx.op.dot4.f32(i32 56, float %5114, float %5115, float %5116, float %5117, float %5124, float %5129, float %5134, float %5139)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5141 = fmul fast float %5140, 0xBFF7154760000000
  %5142 = call float @dx.op.unary.f32(i32 21, float %5141)  ; Exp(value)
  %5143 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  br label %5144

; <label>:5144                                    ; preds = %5112, %5108
  %5145 = phi float [ %5143, %5112 ], [ 1.000000e+00, %5108 ]
  %5146 = fadd fast float %5145, -1.000000e+00
  %5147 = fmul fast float %5146, %5106
  %5148 = fadd fast float %5147, 1.000000e+00
  br label %5149

; <label>:5149                                    ; preds = %5144, %5049
  %5150 = phi float [ %5148, %5144 ], [ 1.000000e+00, %5049 ]
  %5151 = fmul fast float %5150, %5045
  %5152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5153 = extractvalue %dx.types.CBufRet.f32 %5152, 0
  %5154 = extractvalue %dx.types.CBufRet.f32 %5152, 1
  %5155 = extractvalue %dx.types.CBufRet.f32 %5152, 2
  %5156 = fadd fast float %5153, %147
  %5157 = fadd fast float %5154, %148
  %5158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.f32 %5158, 1
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5162 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5163 = extractvalue %dx.types.CBufRet.f32 %5160, 2
  %5164 = fsub fast float -0.000000e+00, %5156
  %5165 = fsub fast float -0.000000e+00, %5157
  %5166 = fsub fast float %1761, %5155
  %5167 = fadd fast float %5166, %5159
  %5168 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5164, float %5165, float %5167)  ; Dot3(ax,ay,az,bx,by,bz)
  %5169 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5161, float %5162, float %5163)  ; Dot3(ax,ay,az,bx,by,bz)
  %5170 = fdiv fast float 1.000000e+00, %5169
  %5171 = fmul fast float %5170, %5168
  %5172 = fmul fast float %5161, %5171
  %5173 = fmul fast float %5162, %5171
  %5174 = fadd fast float %5172, %5156
  %5175 = fadd fast float %5173, %5157
  %5176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5177 = extractvalue %dx.types.CBufRet.f32 %5176, 0
  %5178 = extractvalue %dx.types.CBufRet.f32 %5176, 1
  %5179 = fsub fast float %5174, %5177
  %5180 = fsub fast float %5175, %5178
  %5181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5182 = extractvalue %dx.types.CBufRet.f32 %5181, 2
  %5183 = extractvalue %dx.types.CBufRet.f32 %5181, 3
  %5184 = fmul fast float %5179, %5182
  %5185 = fmul fast float %5180, %5183
  %5186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5187 = extractvalue %dx.types.CBufRet.i32 %5186, 3
  %5188 = icmp eq i32 %5187, 0
  br i1 %5188, label %5194, label %5189

; <label>:5189                                    ; preds = %5149
  %5190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %63, float %5184, float %5185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5191 = extractvalue %dx.types.ResRet.f32 %5190, 0
  %5192 = extractvalue %dx.types.ResRet.f32 %5190, 1
  %5193 = extractvalue %dx.types.ResRet.f32 %5190, 2
  br label %5199

; <label>:5194                                    ; preds = %5149
  %5195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %64, float %5184, float %5185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5196 = extractvalue %dx.types.ResRet.f32 %5195, 0
  %5197 = extractvalue %dx.types.ResRet.f32 %5195, 1
  %5198 = extractvalue %dx.types.ResRet.f32 %5195, 2
  br label %5199

; <label>:5199                                    ; preds = %5194, %5189
  %5200 = phi float [ %5191, %5189 ], [ %5196, %5194 ]
  %5201 = phi float [ %5192, %5189 ], [ %5197, %5194 ]
  %5202 = phi float [ %5193, %5189 ], [ %5198, %5194 ]
  %5203 = extractvalue %dx.types.CBufRet.f32 %5158, 2
  %5204 = fmul fast float %5203, %5200
  %5205 = extractvalue %dx.types.CBufRet.f32 %5158, 0
  %5206 = fsub fast float %5171, %5205
  %5207 = fsub fast float %5206, %5204
  %5208 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5207)  ; FMax(a,b)
  %5209 = fmul fast float %5208, %5201
  %5210 = call float @dx.op.binary.f32(i32 36, float %5202, float %5209)  ; FMin(a,b)
  %5211 = fmul fast float %5210, 0xBFF7154760000000
  %5212 = call float @dx.op.unary.f32(i32 21, float %5211)  ; Exp(value)
  %5213 = fmul fast float %5151, %5212
  br label %5214

; <label>:5214                                    ; preds = %5199, %5044
  %5215 = phi float [ %5213, %5199 ], [ %5045, %5044 ]
  %5216 = call float @dx.op.binary.f32(i32 36, float %5215, float %5215)  ; FMin(a,b)
  %5217 = call float @dx.op.binary.f32(i32 36, float %5215, float %5216)  ; FMin(a,b)
  %5218 = fcmp fast ogt float %5217, 0.000000e+00
  br i1 %5218, label %5219, label %5504, !dx.controlflow.hints !143

; <label>:5219                                    ; preds = %5214
  %5220 = fmul fast float %5215, %3937
  %5221 = fmul fast float %5215, %3938
  %5222 = fmul fast float %5215, %3939
  %5223 = fsub fast float %149, %1549
  %5224 = fcmp fast ogt float %5223, 0.000000e+00
  %5225 = fmul fast float %3926, 5.120000e+02
  %5226 = fmul fast float %3927, 5.120000e+02
  %5227 = fmul fast float %3928, 5.120000e+02
  %5228 = fadd fast float %5227, %149
  %5229 = fsub fast float %1549, %5228
  %5230 = fmul fast float %5229, 2.000000e+00
  %5231 = fadd fast float %5230, %5228
  %5232 = select i1 %5224, float %5231, float %5228
  %5233 = fsub fast float %5232, %149
  %5234 = call float @dx.op.dot3.f32(i32 55, float %5225, float %5226, float %5233, float %5225, float %5226, float %5233)  ; Dot3(ax,ay,az,bx,by,bz)
  %5235 = call float @dx.op.unary.f32(i32 25, float %5234)  ; Rsqrt(value)
  %5236 = fmul fast float %5235, %5225
  %5237 = fmul fast float %5235, %5226
  %5238 = fmul fast float %5235, %5233
  %5239 = fsub fast float %1549, %149
  %5240 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5239)  ; Dot3(ax,ay,az,bx,by,bz)
  %5241 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5236, float %5237, float %5238)  ; Dot3(ax,ay,az,bx,by,bz)
  %5242 = fdiv fast float 1.000000e+00, %5241
  %5243 = fmul fast float %5242, %5240
  %5244 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5223, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5245 = fcmp fast ogt float %5244, 0.000000e+00
  %5246 = fcmp fast olt float %5244, 0.000000e+00
  %5247 = zext i1 %5245 to i32
  %5248 = zext i1 %5246 to i32
  %5249 = sub nsw i32 %5247, %5248
  %5250 = sitofp i32 %5249 to float
  %5251 = fsub fast float %5232, %1549
  %5252 = call float @dx.op.dot3.f32(i32 55, float %5225, float %5226, float %5251, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5253 = fcmp fast ogt float %5252, 0.000000e+00
  %5254 = fcmp fast olt float %5252, 0.000000e+00
  %5255 = zext i1 %5253 to i32
  %5256 = zext i1 %5254 to i32
  %5257 = sub nsw i32 %5255, %5256
  %5258 = sitofp i32 %5257 to float
  %5259 = fcmp fast une float %5250, %5258
  br i1 %5259, label %5260, label %5270

; <label>:5260                                    ; preds = %5219
  %5261 = fmul fast float %5243, %5238
  %5262 = fmul fast float %5243, %5237
  %5263 = fmul fast float %5243, %5236
  %5264 = fmul fast float %5263, %5263
  %5265 = fmul fast float %5262, %5262
  %5266 = fadd fast float %5264, %5265
  %5267 = fmul fast float %5261, %5261
  %5268 = fadd fast float %5266, %5267
  %5269 = call float @dx.op.unary.f32(i32 24, float %5268)  ; Sqrt(value)
  br label %5280

; <label>:5270                                    ; preds = %5219
  %5271 = icmp slt i32 %5249, 0
  br i1 %5271, label %5272, label %5280

; <label>:5272                                    ; preds = %5270
  %5273 = fsub fast float %149, %5232
  %5274 = fmul fast float %5225, %5225
  %5275 = fmul fast float %5226, %5226
  %5276 = fadd fast float %5274, %5275
  %5277 = fmul fast float %5273, %5273
  %5278 = fadd fast float %5276, %5277
  %5279 = call float @dx.op.unary.f32(i32 24, float %5278)  ; Sqrt(value)
  br label %5280

; <label>:5280                                    ; preds = %5272, %5270, %5260
  %5281 = phi float [ %5269, %5260 ], [ %5279, %5272 ], [ 0.000000e+00, %5270 ]
  %5282 = fsub fast float -0.000000e+00, %5281
  %5283 = select i1 %5224, float -0.000000e+00, float %5282
  %5284 = fmul fast float %1550, 0x3FF7154760000000
  %5285 = fmul fast float %5284, %5283
  %5286 = fmul fast float %1551, 0x3FF7154760000000
  %5287 = fmul fast float %5286, %5283
  %5288 = fmul fast float %1552, 0x3FF7154760000000
  %5289 = fmul fast float %5288, %5283
  %5290 = call float @dx.op.unary.f32(i32 21, float %5285)  ; Exp(value)
  %5291 = call float @dx.op.unary.f32(i32 21, float %5287)  ; Exp(value)
  %5292 = call float @dx.op.unary.f32(i32 21, float %5289)  ; Exp(value)
  %5293 = call float @dx.op.unary.f32(i32 7, float %5290)  ; Saturate(value)
  %5294 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5295 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5296 = fmul fast float %5220, %5293
  %5297 = fmul fast float %5221, %5294
  %5298 = fmul fast float %5222, %5295
  %5299 = fsub fast float %3926, %1749
  %5300 = fsub fast float %3927, %1748
  %5301 = fsub fast float %3928, %1747
  %5302 = call float @dx.op.dot3.f32(i32 55, float %5299, float %5300, float %5301, float %5299, float %5300, float %5301)  ; Dot3(ax,ay,az,bx,by,bz)
  %5303 = call float @dx.op.unary.f32(i32 25, float %5302)  ; Rsqrt(value)
  %5304 = fmul fast float %5303, %5299
  %5305 = fmul fast float %5303, %5300
  %5306 = fmul fast float %5303, %5301
  %5307 = call float @dx.op.dot3.f32(i32 55, float %3926, float %3927, float %3928, float %1750, float %1751, float %1752)  ; Dot3(ax,ay,az,bx,by,bz)
  %5308 = call float @dx.op.dot3.f32(i32 55, float %1746, float %1745, float %1744, float %5304, float %5305, float %5306)  ; Dot3(ax,ay,az,bx,by,bz)
  %5309 = call float @dx.op.unary.f32(i32 7, float %5307)  ; Saturate(value)
  %5310 = fmul fast float %5309, %5309
  %5311 = fmul fast float %5310, %3921
  %5312 = call float @dx.op.unary.f32(i32 7, float %5311)  ; Saturate(value)
  %5313 = fmul fast float %5312, %5309
  %5314 = call float @dx.op.dot3.f32(i32 55, float %1750, float %1751, float %1752, float %5304, float %5305, float %5306)  ; Dot3(ax,ay,az,bx,by,bz)
  %5315 = fmul fast float %5314, %5314
  %5316 = call float @dx.op.unary.f32(i32 6, float %5307)  ; FAbs(value)
  %5317 = fsub fast float 1.000000e+00, %1818
  %5318 = fmul fast float %1800, %1800
  %5319 = fmul fast float %5318, %5317
  %5320 = fadd fast float %5319, %1818
  %5321 = bitcast float %5320 to i32
  %5322 = ashr i32 %5321, 1
  %5323 = add nsw i32 %5322, 532487669
  %5324 = bitcast i32 %5323 to float
  %5325 = fadd fast float %5324, %1800
  %5326 = fmul fast float %1818, %5315
  %5327 = fsub fast float 1.000000e+00, %5315
  %5328 = fadd fast float %5327, %5326
  %5329 = fmul fast float %5316, %5316
  %5330 = fmul fast float %5329, %5317
  %5331 = fadd fast float %5330, %1818
  %5332 = bitcast float %5331 to i32
  %5333 = ashr i32 %5332, 1
  %5334 = add nsw i32 %5333, 532487669
  %5335 = bitcast i32 %5334 to float
  %5336 = fadd fast float %5335, %5316
  %5337 = fmul fast float %5328, %5328
  %5338 = fmul fast float %5337, %5325
  %5339 = fmul fast float %5338, %5336
  %5340 = fdiv fast float 0x3FF0A00000000000, %5339
  %5341 = fmul fast float %5340, %1818
  %5342 = fmul fast float %3084, 0x3FF9999980000000
  %5343 = fsub fast float 5.000000e+00, %5342
  %5344 = call float @dx.op.unary.f32(i32 6, float %5308)  ; FAbs(value)
  %5345 = fsub fast float 1.000000e+00, %5344
  %5346 = fmul fast float %3084, 0x41D9660740000000
  %5347 = fadd fast float %5346, 0xC1EFBF8940000000
  %5348 = bitcast float %5345 to i32
  %5349 = sitofp i32 %5348 to float
  %5350 = fmul fast float %5349, %5343
  %5351 = fadd fast float %5347, %5350
  %5352 = fptosi float %5351 to i32
  %5353 = bitcast i32 %5352 to float
  %5354 = fsub fast float 1.000000e+00, %1753
  %5355 = fsub fast float 1.000000e+00, %1754
  %5356 = fsub fast float 1.000000e+00, %1798
  %5357 = fmul fast float %5353, %5354
  %5358 = fmul fast float %5353, %5355
  %5359 = fmul fast float %5353, %5356
  %5360 = fadd fast float %5357, %1753
  %5361 = fadd fast float %5358, %1754
  %5362 = fadd fast float %5359, %1798
  %5363 = fmul fast float %5307, 9.843750e-01
  %5364 = fadd fast float %5363, 7.812500e-03
  %5365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %5364, float %3088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5366 = extractvalue %dx.types.ResRet.f32 %5365, 0
  %5367 = extractvalue %dx.types.ResRet.f32 %5365, 1
  %5368 = extractvalue %dx.types.ResRet.f32 %5365, 2
  %5369 = extractvalue %dx.types.ResRet.f32 %5365, 3
  %5370 = fsub fast float %5368, %5366
  %5371 = fsub fast float %5369, %5367
  %5372 = fmul fast float %5370, %3094
  %5373 = fmul fast float %5371, %3094
  %5374 = fadd fast float %5372, %5366
  %5375 = fadd fast float %5373, %5367
  %5376 = fmul fast float %5374, %1753
  %5377 = fmul fast float %5374, %1754
  %5378 = fmul fast float %5374, %1798
  %5379 = fadd fast float %5376, %5375
  %5380 = fadd fast float %5377, %5375
  %5381 = fadd fast float %5378, %5375
  %5382 = call float @dx.op.binary.f32(i32 35, float %5380, float %5381)  ; FMax(a,b)
  %5383 = call float @dx.op.binary.f32(i32 35, float %5379, float %5382)  ; FMax(a,b)
  %5384 = fsub fast float 1.000000e+00, %5383
  %5385 = call float @dx.op.binary.f32(i32 35, float %5316, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5386 = fdiv fast float %1092, %5385
  %5387 = fmul fast float %3716, %5386
  %5388 = fmul fast float %3718, %5386
  %5389 = fmul fast float %3720, %5386
  %5390 = call float @dx.op.unary.f32(i32 21, float %5387)  ; Exp(value)
  %5391 = call float @dx.op.unary.f32(i32 21, float %5388)  ; Exp(value)
  %5392 = call float @dx.op.unary.f32(i32 21, float %5389)  ; Exp(value)
  %5393 = call float @dx.op.unary.f32(i32 7, float %5390)  ; Saturate(value)
  %5394 = call float @dx.op.unary.f32(i32 7, float %5391)  ; Saturate(value)
  %5395 = call float @dx.op.unary.f32(i32 7, float %5392)  ; Saturate(value)
  %5396 = select i1 %3713, float %5393, float 0.000000e+00
  %5397 = select i1 %3714, float %5394, float 0.000000e+00
  %5398 = select i1 %3715, float %5395, float 0.000000e+00
  %5399 = fsub fast float -0.000000e+00, %1750
  %5400 = fsub fast float -0.000000e+00, %1751
  %5401 = fsub fast float -0.000000e+00, %1752
  %5402 = call float @dx.op.dot3.f32(i32 55, float %3926, float %3927, float %3928, float %5399, float %5400, float %5401)  ; Dot3(ax,ay,az,bx,by,bz)
  %5403 = call float @dx.op.unary.f32(i32 7, float %5402)  ; Saturate(value)
  %5404 = fmul fast float %5403, 9.843750e-01
  %5405 = fadd fast float %5404, 7.812500e-03
  %5406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %5405, float %3088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5407 = extractvalue %dx.types.ResRet.f32 %5406, 0
  %5408 = extractvalue %dx.types.ResRet.f32 %5406, 1
  %5409 = extractvalue %dx.types.ResRet.f32 %5406, 2
  %5410 = extractvalue %dx.types.ResRet.f32 %5406, 3
  %5411 = fsub fast float %5409, %5407
  %5412 = fsub fast float %5410, %5408
  %5413 = fmul fast float %5411, %3094
  %5414 = fmul fast float %5412, %3094
  %5415 = fadd fast float %5413, %5407
  %5416 = fadd fast float %5414, %5408
  %5417 = fmul fast float %5415, %1753
  %5418 = fmul fast float %5415, %1754
  %5419 = fmul fast float %5415, %1798
  %5420 = fadd fast float %5417, %5416
  %5421 = fadd fast float %5418, %5416
  %5422 = fadd fast float %5419, %5416
  %5423 = call float @dx.op.binary.f32(i32 35, float %5421, float %5422)  ; FMax(a,b)
  %5424 = call float @dx.op.binary.f32(i32 35, float %5420, float %5423)  ; FMax(a,b)
  %5425 = fsub fast float 1.000000e+00, %5424
  %5426 = fmul fast float %1815, %3780
  %5427 = fadd fast float %3774, %5426
  %5428 = call float @dx.op.unary.f32(i32 7, float %5427)  ; Saturate(value)
  %5429 = fsub fast float %3926, %1806
  %5430 = fsub fast float %3927, %1807
  %5431 = fsub fast float %3928, %1808
  %5432 = call float @dx.op.dot3.f32(i32 55, float %5429, float %5430, float %5431, float %5429, float %5430, float %5431)  ; Dot3(ax,ay,az,bx,by,bz)
  %5433 = call float @dx.op.unary.f32(i32 25, float %5432)  ; Rsqrt(value)
  %5434 = fmul fast float %5433, %5429
  %5435 = fmul fast float %5433, %5430
  %5436 = fmul fast float %5433, %5431
  %5437 = call float @dx.op.dot3.f32(i32 55, float %5399, float %5400, float %5401, float %5434, float %5435, float %5436)  ; Dot3(ax,ay,az,bx,by,bz)
  %5438 = fmul fast float %5437, %5437
  %5439 = call float @dx.op.unary.f32(i32 6, float %5403)  ; FAbs(value)
  %5440 = call float @dx.op.binary.f32(i32 35, float %5428, float 0x3F847AE140000000)  ; FMax(a,b)
  %5441 = fmul fast float %5440, %5440
  %5442 = fmul fast float %5441, %5441
  %5443 = fsub fast float 1.000000e+00, %5442
  %5444 = fmul fast float %5318, %5443
  %5445 = fadd fast float %5444, %5442
  %5446 = bitcast float %5445 to i32
  %5447 = ashr i32 %5446, 1
  %5448 = add nsw i32 %5447, 532487669
  %5449 = bitcast i32 %5448 to float
  %5450 = fadd fast float %5449, %1800
  %5451 = fmul fast float %5442, %5438
  %5452 = fsub fast float 1.000000e+00, %5438
  %5453 = fadd fast float %5452, %5451
  %5454 = fmul fast float %5439, %5439
  %5455 = fmul fast float %5454, %5443
  %5456 = fadd fast float %5455, %5442
  %5457 = bitcast float %5456 to i32
  %5458 = ashr i32 %5457, 1
  %5459 = add nsw i32 %5458, 532487669
  %5460 = bitcast i32 %5459 to float
  %5461 = fadd fast float %5460, %5439
  %5462 = fmul fast float %5453, %5453
  %5463 = fmul fast float %5462, %5450
  %5464 = fmul fast float %5463, %5461
  %5465 = fdiv fast float 0x3FF0A00000000000, %5464
  %5466 = fmul fast float %5465, %5442
  %5467 = fmul fast float %5403, %5396
  %5468 = fmul fast float %5403, %5397
  %5469 = fmul fast float %5403, %5398
  %5470 = fmul fast float %5467, %5425
  %5471 = fmul fast float %5470, %5466
  %5472 = fmul fast float %5468, %5425
  %5473 = fmul fast float %5472, %5466
  %5474 = fmul fast float %5469, %5425
  %5475 = fmul fast float %5474, %5466
  %5476 = fmul fast float %5341, %5313
  %5477 = fmul fast float %5476, %5360
  %5478 = fmul fast float %5476, %5361
  %5479 = fmul fast float %5476, %5362
  %5480 = fmul fast float %5313, %5296
  %5481 = fmul fast float %5480, %5384
  %5482 = fmul fast float %5313, %5297
  %5483 = fmul fast float %5482, %5384
  %5484 = fmul fast float %5313, %5298
  %5485 = fmul fast float %5484, %5384
  %5486 = fadd fast float %5471, %5477
  %5487 = fadd fast float %5473, %5478
  %5488 = fadd fast float %5475, %5479
  %5489 = fmul fast float %5486, %5296
  %5490 = fmul fast float %5487, %5297
  %5491 = fmul fast float %5488, %5298
  %5492 = fadd fast float %5481, %3708
  %5493 = fmul fast float %5492, %1089
  %5494 = fadd fast float %5483, %3709
  %5495 = fmul fast float %5494, %1089
  %5496 = fadd fast float %5485, %3710
  %5497 = fmul fast float %5496, %1089
  %5498 = fadd fast float %5489, %3915
  %5499 = fmul fast float %5498, %1089
  %5500 = fadd fast float %5490, %3917
  %5501 = fmul fast float %5500, %1089
  %5502 = fadd fast float %5491, %3919
  %5503 = fmul fast float %5502, %1089
  br label %5504

; <label>:5504                                    ; preds = %5280, %5214, %3901
  %5505 = phi float [ %3916, %3901 ], [ %3916, %5214 ], [ %5499, %5280 ]
  %5506 = phi float [ %3918, %3901 ], [ %3918, %5214 ], [ %5501, %5280 ]
  %5507 = phi float [ %3920, %3901 ], [ %3920, %5214 ], [ %5503, %5280 ]
  %5508 = phi float [ %3787, %3901 ], [ %3787, %5214 ], [ %5493, %5280 ]
  %5509 = phi float [ %3788, %3901 ], [ %3788, %5214 ], [ %5495, %5280 ]
  %5510 = phi float [ %3789, %3901 ], [ %3789, %5214 ], [ %5497, %5280 ]
  %5511 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5512 = extractvalue %dx.types.CBufRet.i32 %5511, 0
  %5513 = icmp eq i32 %5512, 0
  br i1 %5513, label %6231, label %5514

; <label>:5514                                    ; preds = %5504
  %5515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5516 = extractvalue %dx.types.CBufRet.f32 %5515, 2
  %5517 = extractvalue %dx.types.CBufRet.f32 %5515, 3
  %5518 = fmul fast float %5516, %100
  %5519 = fmul fast float %5517, %101
  %5520 = fptoui float %5518 to i32
  %5521 = fptoui float %5519 to i32
  %5522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5523 = extractvalue %dx.types.CBufRet.f32 %5522, 0
  %5524 = extractvalue %dx.types.CBufRet.f32 %5522, 2
  %5525 = extractvalue %dx.types.CBufRet.f32 %5522, 3
  %5526 = fadd fast float %88, -4.000000e+00
  %5527 = call float @dx.op.binary.f32(i32 35, float %5526, float 0.000000e+00)  ; FMax(a,b)
  %5528 = fadd fast float %5527, %5523
  %5529 = fmul fast float %5528, %5524
  %5530 = call float @dx.op.unary.f32(i32 23, float %5529)  ; Log(value)
  %5531 = fmul fast float %5530, %5525
  %5532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5533 = extractvalue %dx.types.CBufRet.f32 %5532, 2
  %5534 = fmul fast float %5531, %5533
  %5535 = call float @dx.op.unary.f32(i32 7, float %5534)  ; Saturate(value)
  %5536 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5537 = extractvalue %dx.types.CBufRet.i32 %5536, 1
  %5538 = add i32 %5537, -1
  %5539 = uitofp i32 %5537 to float
  %5540 = fmul fast float %5539, %5535
  %5541 = fptoui float %5540 to i32
  %5542 = call i32 @dx.op.binary.i32(i32 40, i32 %5541, i32 %5538)  ; UMin(a,b)
  %5543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5544 = extractvalue %dx.types.CBufRet.i32 %5543, 2
  %5545 = extractvalue %dx.types.CBufRet.i32 %5543, 3
  %5546 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5521, i32 %5544, i32 %5520)  ; UMad(a,b,c)
  %5547 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5542, i32 %5545, i32 %5546)  ; UMad(a,b,c)
  %5548 = add nsw i32 %5512, -1
  %5549 = call i32 @dx.op.binary.i32(i32 37, i32 %5548, i32 0)  ; IMax(a,b)
  %5550 = call float @dx.op.binary.f32(i32 35, float %88, float 0.000000e+00)  ; FMax(a,b)
  %5551 = fptoui float %5550 to i32
  %5552 = lshr i32 %5551, 5
  %5553 = call i32 @dx.op.binary.i32(i32 40, i32 %5552, i32 8191)  ; UMin(a,b)
  %5554 = shl i32 %5553, 2
  %5555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5554, i32 undef)  ; BufferLoad(srv,index,wot)
  %5556 = extractvalue %dx.types.ResRet.i32 %5555, 0
  %5557 = lshr i32 %5556, 16
  %5558 = and i32 %5556, 65535
  %5559 = lshr i32 %5556, 21
  %5560 = lshr i32 %5558, 5
  %5561 = call i32 @dx.op.binary.i32(i32 40, i32 %5560, i32 %5549)  ; UMin(a,b)
  %5562 = icmp ugt i32 %5559, %5561
  br i1 %5562, label %6231, label %5563

; <label>:5563                                    ; preds = %5514
  br label %5564

; <label>:5564                                    ; preds = %6221, %5563
  %5565 = phi i32 [ %6228, %6221 ], [ %5559, %5563 ]
  %5566 = phi float [ %6222, %6221 ], [ %5505, %5563 ]
  %5567 = phi float [ %6223, %6221 ], [ %5506, %5563 ]
  %5568 = phi float [ %6224, %6221 ], [ %5507, %5563 ]
  %5569 = phi float [ %6225, %6221 ], [ %5508, %5563 ]
  %5570 = phi float [ %6226, %6221 ], [ %5509, %5563 ]
  %5571 = phi float [ %6227, %6221 ], [ %5510, %5563 ]
  %5572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5573 = extractvalue %dx.types.CBufRet.i32 %5572, 0
  %5574 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5547, i32 %5573, i32 %5565)  ; UMad(a,b,c)
  %5575 = shl i32 %5574, 2
  %5576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5575, i32 undef)  ; BufferLoad(srv,index,wot)
  %5577 = extractvalue %dx.types.ResRet.i32 %5576, 0
  %5578 = shl i32 %5565, 5
  %5579 = sub nsw i32 %5557, %5578
  %5580 = call i32 @dx.op.binary.i32(i32 37, i32 %5579, i32 0)  ; IMax(a,b)
  %5581 = call i32 @dx.op.binary.i32(i32 38, i32 %5580, i32 31)  ; IMin(a,b)
  %5582 = sub nsw i32 1, %5557
  %5583 = add nsw i32 %5582, %5558
  %5584 = call i32 @dx.op.binary.i32(i32 37, i32 %5583, i32 0)  ; IMax(a,b)
  %5585 = call i32 @dx.op.binary.i32(i32 38, i32 %5584, i32 32)  ; IMin(a,b)
  %5586 = and i32 %5585, 31
  %5587 = shl i32 -1, %5586
  %5588 = xor i32 %5587, -1
  %5589 = and i32 %5581, 31
  %5590 = shl i32 %5588, %5589
  %5591 = icmp eq i32 %5585, 32
  %5592 = select i1 %5591, i32 -1, i32 %5590
  %5593 = and i32 %5592, %5577
  %5594 = icmp eq i32 %5593, 0
  br i1 %5594, label %6221, label %5595

; <label>:5595                                    ; preds = %5564
  br label %5596

; <label>:5596                                    ; preds = %5731, %5595
  %5597 = phi i32 [ %5608, %5731 ], [ %5593, %5595 ]
  %5598 = phi float [ %5732, %5731 ], [ %5566, %5595 ]
  %5599 = phi float [ %5733, %5731 ], [ %5567, %5595 ]
  %5600 = phi float [ %5734, %5731 ], [ %5568, %5595 ]
  %5601 = phi float [ %5735, %5731 ], [ %5569, %5595 ]
  %5602 = phi float [ %5736, %5731 ], [ %5570, %5595 ]
  %5603 = phi float [ %5737, %5731 ], [ %5571, %5595 ]
  %5604 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5597)  ; FirstbitLo(value)
  %5605 = add i32 %5604, %5578
  %5606 = and i32 %5604, 31
  %5607 = shl i32 1, %5606
  %5608 = xor i32 %5607, %5597
  %5609 = mul i32 %5605, 112
  %5610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5609, i32 undef)  ; BufferLoad(srv,index,wot)
  %5611 = extractvalue %dx.types.ResRet.f32 %5610, 0
  %5612 = extractvalue %dx.types.ResRet.f32 %5610, 1
  %5613 = extractvalue %dx.types.ResRet.f32 %5610, 2
  %5614 = or i32 %5609, 12
  %5615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5614, i32 undef)  ; BufferLoad(srv,index,wot)
  %5616 = extractvalue %dx.types.ResRet.f32 %5615, 0
  %5617 = add i32 %5609, 16
  %5618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5617, i32 undef)  ; BufferLoad(srv,index,wot)
  %5619 = extractvalue %dx.types.ResRet.f32 %5618, 0
  %5620 = extractvalue %dx.types.ResRet.f32 %5618, 1
  %5621 = extractvalue %dx.types.ResRet.f32 %5618, 2
  %5622 = add i32 %5609, 28
  %5623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5622, i32 undef)  ; BufferLoad(srv,index,wot)
  %5624 = extractvalue %dx.types.ResRet.i32 %5623, 0
  %5625 = add i32 %5609, 44
  %5626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5625, i32 undef)  ; BufferLoad(srv,index,wot)
  %5627 = extractvalue %dx.types.ResRet.f32 %5626, 0
  %5628 = add i32 %5609, 48
  %5629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5628, i32 undef)  ; BufferLoad(srv,index,wot)
  %5630 = extractvalue %dx.types.ResRet.f32 %5629, 0
  %5631 = extractvalue %dx.types.ResRet.f32 %5629, 1
  %5632 = extractvalue %dx.types.ResRet.f32 %5629, 2
  %5633 = extractvalue %dx.types.ResRet.f32 %5629, 3
  %5634 = add i32 %5609, 64
  %5635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5634, i32 undef)  ; BufferLoad(srv,index,wot)
  %5636 = extractvalue %dx.types.ResRet.f32 %5635, 0
  %5637 = extractvalue %dx.types.ResRet.f32 %5635, 1
  %5638 = extractvalue %dx.types.ResRet.f32 %5635, 2
  %5639 = extractvalue %dx.types.ResRet.f32 %5635, 3
  %5640 = add i32 %5609, 80
  %5641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5640, i32 undef)  ; BufferLoad(srv,index,wot)
  %5642 = extractvalue %dx.types.ResRet.f32 %5641, 1
  %5643 = extractvalue %dx.types.ResRet.f32 %5641, 2
  %5644 = add i32 %5609, 92
  %5645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5644, i32 undef)  ; BufferLoad(srv,index,wot)
  %5646 = extractvalue %dx.types.ResRet.i32 %5645, 0
  %5647 = call float @dx.op.dot3.f32(i32 55, float %5611, float %5612, float %5613, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5648 = select i1 %240, float %5642, float %5611
  %5649 = select i1 %240, float %5647, float %5612
  %5650 = select i1 %240, float %5643, float %5613
  %5651 = and i32 %5646, 65535
  %5652 = uitofp i32 %5651 to float
  %5653 = lshr i32 %5646, 16
  %5654 = uitofp i32 %5653 to float
  %5655 = and i32 %5624, 65535
  %5656 = and i32 %5624, 50331648
  %5657 = icmp slt i32 %5624, 0
  %5658 = icmp eq i32 %5656, 33554432
  %5659 = fsub fast float %5630, %147
  %5660 = fsub fast float %5631, %148
  %5661 = fsub fast float %5632, %149
  %5662 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5661, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %5663 = call float @dx.op.unary.f32(i32 24, float %5662)  ; Sqrt(value)
  %5664 = fdiv fast float 1.000000e+00, %5663
  %5665 = fmul fast float %5664, %5659
  %5666 = fmul fast float %5664, %5660
  %5667 = fmul fast float %5664, %5661
  %5668 = fadd fast float %5663, %5616
  %5669 = fdiv fast float 1.000000e+00, %5668
  %5670 = fmul float %5627, %5669
  %5671 = fmul float %5670, %5670
  %5672 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  br i1 %5658, label %5673, label %5694

; <label>:5673                                    ; preds = %5596
  %5674 = fmul fast float %5638, %5619
  %5675 = fmul fast float %5638, %5620
  %5676 = fmul fast float %5638, %5621
  %5677 = fadd fast float %5659, %5674
  %5678 = fadd fast float %5660, %5675
  %5679 = fadd fast float %5661, %5676
  %5680 = call float @dx.op.dot3.f32(i32 55, float %5677, float %5678, float %5679, float %5677, float %5678, float %5679)  ; Dot3(ax,ay,az,bx,by,bz)
  %5681 = call float @dx.op.unary.f32(i32 25, float %5680)  ; Rsqrt(value)
  %5682 = fmul fast float %5681, %5677
  %5683 = fmul fast float %5681, %5678
  %5684 = fmul fast float %5681, %5679
  %5685 = fsub fast float %147, %5630
  %5686 = fsub fast float %148, %5631
  %5687 = fsub fast float %149, %5632
  %5688 = fsub fast float -0.000000e+00, %5685
  %5689 = fsub fast float -0.000000e+00, %5686
  %5690 = fsub fast float -0.000000e+00, %5687
  %5691 = call float @dx.op.dot3.f32(i32 55, float %5688, float %5689, float %5690, float %5619, float %5620, float %5621)  ; Dot3(ax,ay,az,bx,by,bz)
  %5692 = fcmp fast ogt float %5691, 0.000000e+00
  %5693 = uitofp i1 %5692 to float
  br label %5694

; <label>:5694                                    ; preds = %5673, %5596
  %5695 = phi float [ %5693, %5673 ], [ 1.000000e+00, %5596 ]
  %5696 = phi float [ %5682, %5673 ], [ %5665, %5596 ]
  %5697 = phi float [ %5683, %5673 ], [ %5666, %5596 ]
  %5698 = phi float [ %5684, %5673 ], [ %5667, %5596 ]
  %5699 = call float @dx.op.dot3.f32(i32 55, float %5619, float %5620, float %5621, float %5696, float %5697, float %5698)  ; Dot3(ax,ay,az,bx,by,bz)
  %5700 = fmul fast float %5699, %5699
  %5701 = call float @dx.op.unary.f32(i32 7, float %5700)  ; Saturate(value)
  %5702 = fsub fast float 1.000000e+00, %5701
  %5703 = fmul fast float %5702, 5.000000e-01
  %5704 = fcmp fast ogt float %5699, 0.000000e+00
  %5705 = fsub fast float 1.000000e+00, %5703
  %5706 = select i1 %5704, float %5703, float %5705
  %5707 = fmul fast float %5706, %5654
  %5708 = fadd fast float %5707, %5652
  %5709 = fmul fast float %5708, 0x3EF0001000000000
  %5710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %64, float %5709, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5711 = extractvalue %dx.types.ResRet.f32 %5710, 0
  %5712 = fmul fast float %5699, %5636
  %5713 = fadd fast float %5712, %5637
  %5714 = call float @dx.op.unary.f32(i32 7, float %5713)  ; Saturate(value)
  %5715 = select i1 %5658, float 1.000000e+00, float %5714
  %5716 = select i1 %5658, float %5714, float 1.000000e+00
  %5717 = fmul fast float %5663, %5633
  %5718 = fsub fast float 1.000000e+00, %5717
  %5719 = fmul fast float %5718, %5639
  %5720 = call float @dx.op.unary.f32(i32 7, float %5719)  ; Saturate(value)
  %5721 = fmul fast float %5720, %5716
  %5722 = fmul fast float %5721, 2.000000e+00
  %5723 = fsub fast float 3.000000e+00, %5722
  %5724 = fmul fast float %5711, %5695
  %5725 = fmul fast float %5721, %5721
  %5726 = fmul fast float %5725, %5724
  %5727 = fmul fast float %5726, %5723
  %5728 = call float @dx.op.binary.f32(i32 36, float %5727, float %5727)  ; FMin(a,b)
  %5729 = call float @dx.op.binary.f32(i32 36, float %5727, float %5728)  ; FMin(a,b)
  %5730 = fcmp fast ogt float %5729, 0.000000e+00
  br i1 %5730, label %5739, label %5731, !dx.controlflow.hints !144

; <label>:5731                                    ; preds = %6189, %5885, %5694
  %5732 = phi float [ %5598, %5885 ], [ %5598, %5694 ], [ %6217, %6189 ]
  %5733 = phi float [ %5599, %5885 ], [ %5599, %5694 ], [ %6218, %6189 ]
  %5734 = phi float [ %5600, %5885 ], [ %5600, %5694 ], [ %6219, %6189 ]
  %5735 = phi float [ %5601, %5885 ], [ %5601, %5694 ], [ %6211, %6189 ]
  %5736 = phi float [ %5602, %5885 ], [ %5602, %5694 ], [ %6212, %6189 ]
  %5737 = phi float [ %5603, %5885 ], [ %5603, %5694 ], [ %6213, %6189 ]
  %5738 = icmp eq i32 %5597, %5607
  br i1 %5738, label %6220, label %5596

; <label>:5739                                    ; preds = %5694
  %5740 = icmp eq i32 %5655, 255
  br i1 %5740, label %5885, label %5741, !dx.controlflow.hints !145

; <label>:5741                                    ; preds = %5739
  %5742 = mul nuw nsw i32 %5655, 176
  %5743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5742, i32 undef)  ; BufferLoad(srv,index,wot)
  %5744 = extractvalue %dx.types.ResRet.f32 %5743, 0
  %5745 = extractvalue %dx.types.ResRet.f32 %5743, 1
  %5746 = extractvalue %dx.types.ResRet.f32 %5743, 2
  %5747 = extractvalue %dx.types.ResRet.f32 %5743, 3
  %5748 = add nuw nsw i32 %5742, 16
  %5749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5748, i32 undef)  ; BufferLoad(srv,index,wot)
  %5750 = extractvalue %dx.types.ResRet.f32 %5749, 0
  %5751 = extractvalue %dx.types.ResRet.f32 %5749, 1
  %5752 = add nuw nsw i32 %5742, 32
  %5753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5752, i32 undef)  ; BufferLoad(srv,index,wot)
  %5754 = extractvalue %dx.types.ResRet.f32 %5753, 0
  %5755 = extractvalue %dx.types.ResRet.f32 %5753, 1
  %5756 = extractvalue %dx.types.ResRet.f32 %5753, 2
  %5757 = add nuw nsw i32 %5742, 48
  %5758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5757, i32 undef)  ; BufferLoad(srv,index,wot)
  %5759 = extractvalue %dx.types.ResRet.f32 %5758, 0
  %5760 = extractvalue %dx.types.ResRet.f32 %5758, 1
  %5761 = extractvalue %dx.types.ResRet.f32 %5758, 2
  %5762 = extractvalue %dx.types.ResRet.f32 %5758, 3
  %5763 = add nuw nsw i32 %5742, 64
  %5764 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5763, i32 undef)  ; BufferLoad(srv,index,wot)
  %5765 = extractvalue %dx.types.ResRet.f32 %5764, 0
  %5766 = extractvalue %dx.types.ResRet.f32 %5764, 1
  %5767 = extractvalue %dx.types.ResRet.f32 %5764, 2
  %5768 = extractvalue %dx.types.ResRet.f32 %5764, 3
  %5769 = add nuw nsw i32 %5742, 80
  %5770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5769, i32 undef)  ; BufferLoad(srv,index,wot)
  %5771 = extractvalue %dx.types.ResRet.f32 %5770, 0
  %5772 = extractvalue %dx.types.ResRet.f32 %5770, 1
  %5773 = extractvalue %dx.types.ResRet.f32 %5770, 2
  %5774 = extractvalue %dx.types.ResRet.f32 %5770, 3
  %5775 = add nuw nsw i32 %5742, 96
  %5776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5775, i32 undef)  ; BufferLoad(srv,index,wot)
  %5777 = extractvalue %dx.types.ResRet.f32 %5776, 0
  %5778 = extractvalue %dx.types.ResRet.f32 %5776, 1
  %5779 = extractvalue %dx.types.ResRet.f32 %5776, 2
  %5780 = extractvalue %dx.types.ResRet.f32 %5776, 3
  %5781 = bitcast float %5751 to i32
  %5782 = fmul fast float %5756, %76
  %5783 = fmul fast float %5756, %77
  %5784 = fmul fast float %5756, %78
  %5785 = fadd fast float %5782, %147
  %5786 = fadd fast float %5783, %148
  %5787 = fadd fast float %5784, %149
  %5788 = fmul fast float %5785, %5759
  %5789 = call float @dx.op.tertiary.f32(i32 46, float %5786, float %5765, float %5788)  ; FMad(a,b,c)
  %5790 = call float @dx.op.tertiary.f32(i32 46, float %5787, float %5771, float %5789)  ; FMad(a,b,c)
  %5791 = fadd fast float %5790, %5777
  %5792 = fmul fast float %5785, %5760
  %5793 = call float @dx.op.tertiary.f32(i32 46, float %5786, float %5766, float %5792)  ; FMad(a,b,c)
  %5794 = call float @dx.op.tertiary.f32(i32 46, float %5787, float %5772, float %5793)  ; FMad(a,b,c)
  %5795 = fadd fast float %5794, %5778
  %5796 = fmul fast float %5785, %5761
  %5797 = call float @dx.op.tertiary.f32(i32 46, float %5786, float %5767, float %5796)  ; FMad(a,b,c)
  %5798 = call float @dx.op.tertiary.f32(i32 46, float %5787, float %5773, float %5797)  ; FMad(a,b,c)
  %5799 = fadd fast float %5798, %5779
  %5800 = fmul fast float %5785, %5762
  %5801 = call float @dx.op.tertiary.f32(i32 46, float %5786, float %5768, float %5800)  ; FMad(a,b,c)
  %5802 = call float @dx.op.tertiary.f32(i32 46, float %5787, float %5774, float %5801)  ; FMad(a,b,c)
  %5803 = fadd fast float %5802, %5780
  %5804 = fdiv fast float %5791, %5803
  %5805 = fdiv fast float %5795, %5803
  %5806 = fdiv fast float %5799, %5803
  %5807 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5806)  ; FMax(a,b)
  %5808 = fmul fast float %253, 0x401921FB60000000
  %5809 = call float @dx.op.unary.f32(i32 13, float %5808)  ; Sin(value)
  %5810 = call float @dx.op.unary.f32(i32 12, float %5808)  ; Cos(value)
  %5811 = fmul fast float %5810, %5755
  %5812 = call float @dx.op.tertiary.f32(i32 46, float %5809, float %5755, float 0.000000e+00)  ; FMad(a,b,c)
  %5813 = fmul fast float %5755, %5809
  %5814 = fsub fast float -0.000000e+00, %5813
  %5815 = call float @dx.op.tertiary.f32(i32 46, float %5810, float %5755, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5816

; <label>:5816                                    ; preds = %5816, %5741
  %5817 = phi float [ 0.000000e+00, %5741 ], [ %5849, %5816 ]
  %5818 = phi float [ 0.000000e+00, %5741 ], [ %5851, %5816 ]
  %5819 = phi i32 [ 0, %5741 ], [ %5852, %5816 ]
  %5820 = mul i32 %5819, 2
  %5821 = add i32 0, %5820
  %5822 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5821
  %5823 = load float, float* %5822, align 4
  %5824 = mul i32 %5819, 2
  %5825 = add i32 1, %5824
  %5826 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5825
  %5827 = load float, float* %5826, align 4
  %5828 = fmul fast float %5811, %5823
  %5829 = call float @dx.op.tertiary.f32(i32 46, float %5827, float %5814, float %5828)  ; FMad(a,b,c)
  %5830 = fmul fast float %5823, %5812
  %5831 = call float @dx.op.tertiary.f32(i32 46, float %5827, float %5815, float %5830)  ; FMad(a,b,c)
  %5832 = fadd fast float %5829, %5804
  %5833 = fadd fast float %5831, %5805
  %5834 = fmul fast float %5832, %5750
  %5835 = fmul fast float %5833, %5750
  %5836 = call float @dx.op.binary.f32(i32 35, float %5834, float %5746)  ; FMax(a,b)
  %5837 = call float @dx.op.binary.f32(i32 35, float %5835, float %5746)  ; FMax(a,b)
  %5838 = call float @dx.op.binary.f32(i32 36, float %5836, float %5747)  ; FMin(a,b)
  %5839 = call float @dx.op.binary.f32(i32 36, float %5837, float %5747)  ; FMin(a,b)
  %5840 = fadd fast float %5838, %5744
  %5841 = fadd fast float %5839, %5745
  %5842 = uitofp i32 %5781 to float
  %5843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %65, float %5840, float %5841, float %5842, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5844 = extractvalue %dx.types.ResRet.f32 %5843, 0
  %5845 = fsub fast float %5844, %5807
  %5846 = fsub fast float %5845, %5754
  %5847 = fcmp fast ogt float %5846, 0.000000e+00
  %5848 = select i1 %5847, float 1.000000e+00, float 0.000000e+00
  %5849 = fadd fast float %5848, %5817
  %5850 = select i1 %5847, float %5846, float 0.000000e+00
  %5851 = fadd fast float %5850, %5818
  %5852 = add nuw nsw i32 %5819, 1
  %5853 = icmp eq i32 %5852, 8
  br i1 %5853, label %5854, label %5816

; <label>:5854                                    ; preds = %5816
  %5855 = fdiv fast float 1.000000e+00, %5849
  %5856 = fmul fast float %5855, %5851
  %5857 = fdiv fast float 1.000000e+00, %5807
  %5858 = fmul fast float %5856, %5857
  %5859 = call float @dx.op.unary.f32(i32 7, float %5858)  ; Saturate(value)
  %5860 = call float @dx.op.binary.f32(i32 35, float %5859, float 0.000000e+00)  ; FMax(a,b)
  %5861 = fmul fast float %5849, 1.250000e-01
  %5862 = call float @dx.op.unary.f32(i32 7, float %5861)  ; Saturate(value)
  %5863 = fmul fast float %5862, 2.000000e+00
  %5864 = fadd fast float %5863, -1.000000e+00
  %5865 = fcmp fast ogt float %5864, 0.000000e+00
  %5866 = fcmp fast olt float %5864, 0.000000e+00
  %5867 = zext i1 %5865 to i32
  %5868 = zext i1 %5866 to i32
  %5869 = sub nsw i32 %5867, %5868
  %5870 = sitofp i32 %5869 to float
  %5871 = fmul fast float %5870, %5864
  %5872 = fsub fast float 1.000000e+00, %5871
  %5873 = fmul fast float %5872, %5872
  %5874 = fmul fast float %5873, %5872
  %5875 = fsub fast float %5872, %5874
  %5876 = fmul fast float %5875, %5860
  %5877 = fsub fast float 1.000000e+00, %5874
  %5878 = fsub fast float %5877, %5876
  %5879 = fmul fast float %5870, 5.000000e-01
  %5880 = fmul fast float %5879, %5878
  %5881 = fsub fast float -5.000000e-01, %5880
  %5882 = fmul fast float %5881, %5715
  %5883 = fadd fast float %5882, 1.000000e+00
  %5884 = fmul fast float %5883, %5727
  br label %5885

; <label>:5885                                    ; preds = %5854, %5739
  %5886 = phi float [ %5884, %5854 ], [ %5727, %5739 ]
  %5887 = call float @dx.op.binary.f32(i32 36, float %5886, float %5886)  ; FMin(a,b)
  %5888 = call float @dx.op.binary.f32(i32 36, float %5886, float %5887)  ; FMin(a,b)
  %5889 = fcmp fast ogt float %5888, 0.000000e+00
  br i1 %5889, label %5890, label %5731, !dx.controlflow.hints !146

; <label>:5890                                    ; preds = %5885
  %5891 = fmul fast float %5886, %5648
  %5892 = fmul fast float %5886, %5649
  %5893 = fmul fast float %5886, %5650
  %5894 = fsub fast float %5632, %1549
  %5895 = fcmp fast ogt float %5894, 0.000000e+00
  %5896 = fsub fast float %149, %1549
  %5897 = fcmp fast ogt float %5896, 0.000000e+00
  %5898 = xor i1 %5897, %5895
  %5899 = fsub fast float %1549, %5632
  %5900 = fmul fast float %5899, 2.000000e+00
  %5901 = fadd fast float %5900, %5632
  %5902 = select i1 %5898, float %5632, float %5901
  %5903 = fsub fast float %5902, %149
  %5904 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5903, float %5659, float %5660, float %5903)  ; Dot3(ax,ay,az,bx,by,bz)
  %5905 = call float @dx.op.unary.f32(i32 25, float %5904)  ; Rsqrt(value)
  %5906 = fmul fast float %5905, %5659
  %5907 = fmul fast float %5905, %5660
  %5908 = fmul fast float %5905, %5903
  %5909 = fsub fast float %1549, %149
  %5910 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5909)  ; Dot3(ax,ay,az,bx,by,bz)
  %5911 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5906, float %5907, float %5908)  ; Dot3(ax,ay,az,bx,by,bz)
  %5912 = fdiv fast float 1.000000e+00, %5911
  %5913 = fmul fast float %5912, %5910
  %5914 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5896, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5915 = fcmp fast ogt float %5914, 0.000000e+00
  %5916 = fcmp fast olt float %5914, 0.000000e+00
  %5917 = zext i1 %5915 to i32
  %5918 = zext i1 %5916 to i32
  %5919 = sub nsw i32 %5917, %5918
  %5920 = sitofp i32 %5919 to float
  %5921 = fsub fast float %5902, %1549
  %5922 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5921, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5923 = fcmp fast ogt float %5922, 0.000000e+00
  %5924 = fcmp fast olt float %5922, 0.000000e+00
  %5925 = zext i1 %5923 to i32
  %5926 = zext i1 %5924 to i32
  %5927 = sub nsw i32 %5925, %5926
  %5928 = sitofp i32 %5927 to float
  %5929 = fcmp fast une float %5920, %5928
  br i1 %5929, label %5930, label %5940

; <label>:5930                                    ; preds = %5890
  %5931 = fmul fast float %5913, %5908
  %5932 = fmul fast float %5913, %5907
  %5933 = fmul fast float %5913, %5906
  %5934 = fmul fast float %5933, %5933
  %5935 = fmul fast float %5932, %5932
  %5936 = fadd fast float %5934, %5935
  %5937 = fmul fast float %5931, %5931
  %5938 = fadd fast float %5936, %5937
  %5939 = call float @dx.op.unary.f32(i32 24, float %5938)  ; Sqrt(value)
  br label %5952

; <label>:5940                                    ; preds = %5890
  %5941 = icmp slt i32 %5919, 0
  br i1 %5941, label %5942, label %5952

; <label>:5942                                    ; preds = %5940
  %5943 = fsub fast float %147, %5630
  %5944 = fsub fast float %148, %5631
  %5945 = fsub fast float %149, %5902
  %5946 = fmul fast float %5943, %5943
  %5947 = fmul fast float %5944, %5944
  %5948 = fadd fast float %5946, %5947
  %5949 = fmul fast float %5945, %5945
  %5950 = fadd fast float %5948, %5949
  %5951 = call float @dx.op.unary.f32(i32 24, float %5950)  ; Sqrt(value)
  br label %5952

; <label>:5952                                    ; preds = %5942, %5940, %5930
  %5953 = phi float [ %5939, %5930 ], [ %5951, %5942 ], [ 0.000000e+00, %5940 ]
  %5954 = and i1 %5897, %5895
  %5955 = fsub fast float -0.000000e+00, %5953
  %5956 = select i1 %5954, float -0.000000e+00, float %5955
  %5957 = fmul fast float %1550, 0x3FF7154760000000
  %5958 = fmul fast float %5957, %5956
  %5959 = fmul fast float %1551, 0x3FF7154760000000
  %5960 = fmul fast float %5959, %5956
  %5961 = fmul fast float %1552, 0x3FF7154760000000
  %5962 = fmul fast float %5961, %5956
  %5963 = call float @dx.op.unary.f32(i32 21, float %5958)  ; Exp(value)
  %5964 = call float @dx.op.unary.f32(i32 21, float %5960)  ; Exp(value)
  %5965 = call float @dx.op.unary.f32(i32 21, float %5962)  ; Exp(value)
  %5966 = call float @dx.op.unary.f32(i32 7, float %5963)  ; Saturate(value)
  %5967 = call float @dx.op.unary.f32(i32 7, float %5964)  ; Saturate(value)
  %5968 = call float @dx.op.unary.f32(i32 7, float %5965)  ; Saturate(value)
  %5969 = fmul fast float %5891, %5966
  %5970 = fmul fast float %5892, %5967
  %5971 = fmul fast float %5893, %5968
  %5972 = fsub fast float %5665, %1749
  %5973 = fsub fast float %5666, %1748
  %5974 = fsub fast float %5667, %1747
  %5975 = call float @dx.op.dot3.f32(i32 55, float %5972, float %5973, float %5974, float %5972, float %5973, float %5974)  ; Dot3(ax,ay,az,bx,by,bz)
  %5976 = call float @dx.op.unary.f32(i32 25, float %5975)  ; Rsqrt(value)
  %5977 = fmul fast float %5976, %5972
  %5978 = fmul fast float %5976, %5973
  %5979 = fmul fast float %5976, %5974
  %5980 = call float @dx.op.dot3.f32(i32 55, float %5665, float %5666, float %5667, float %1750, float %1751, float %1752)  ; Dot3(ax,ay,az,bx,by,bz)
  %5981 = call float @dx.op.dot3.f32(i32 55, float %1746, float %1745, float %1744, float %5977, float %5978, float %5979)  ; Dot3(ax,ay,az,bx,by,bz)
  %5982 = call float @dx.op.unary.f32(i32 7, float %5980)  ; Saturate(value)
  %5983 = fmul fast float %5982, %5672
  %5984 = fmul fast float %5982, %5982
  %5985 = fmul fast float %5984, %3921
  %5986 = call float @dx.op.unary.f32(i32 7, float %5985)  ; Saturate(value)
  %5987 = fmul fast float %5983, %5986
  %5988 = bitcast float %5662 to i32
  %5989 = ashr i32 %5988, 1
  %5990 = sub nsw i32 1597463007, %5989
  %5991 = bitcast i32 %5990 to float
  %5992 = fmul fast float %5991, %5659
  %5993 = fmul fast float %5991, %5660
  %5994 = fmul fast float %5991, %5661
  %5995 = fsub fast float %5992, %1749
  %5996 = fsub fast float %5993, %1748
  %5997 = fsub fast float %5994, %1747
  %5998 = call float @dx.op.dot3.f32(i32 55, float %5995, float %5996, float %5997, float %5995, float %5996, float %5997)  ; Dot3(ax,ay,az,bx,by,bz)
  %5999 = call float @dx.op.unary.f32(i32 25, float %5998)  ; Rsqrt(value)
  %6000 = fmul fast float %5995, %5999
  %6001 = fmul fast float %5996, %5999
  %6002 = fmul fast float %5997, %5999
  %6003 = call float @dx.op.dot3.f32(i32 55, float %1750, float %1751, float %1752, float %6000, float %6001, float %6002)  ; Dot3(ax,ay,az,bx,by,bz)
  %6004 = fmul fast float %6003, %6003
  %6005 = call float @dx.op.unary.f32(i32 6, float %5980)  ; FAbs(value)
  %6006 = fsub fast float 1.000000e+00, %1818
  %6007 = fmul fast float %1800, %1800
  %6008 = fmul fast float %6007, %6006
  %6009 = fadd fast float %6008, %1818
  %6010 = bitcast float %6009 to i32
  %6011 = ashr i32 %6010, 1
  %6012 = add nsw i32 %6011, 532487669
  %6013 = bitcast i32 %6012 to float
  %6014 = fadd fast float %6013, %1800
  %6015 = fmul fast float %1818, %6004
  %6016 = fsub fast float 1.000000e+00, %6004
  %6017 = fadd fast float %6016, %6015
  %6018 = fmul fast float %6005, %6005
  %6019 = fmul fast float %6018, %6006
  %6020 = fadd fast float %6019, %1818
  %6021 = bitcast float %6020 to i32
  %6022 = ashr i32 %6021, 1
  %6023 = add nsw i32 %6022, 532487669
  %6024 = bitcast i32 %6023 to float
  %6025 = fadd fast float %6024, %6005
  %6026 = fmul fast float %6017, %6017
  %6027 = fmul fast float %6026, %6014
  %6028 = fmul fast float %6027, %6025
  %6029 = fdiv fast float 1.000000e+00, %6028
  %6030 = bitcast float %1818 to i32
  %6031 = sitofp i32 %6030 to float
  %6032 = fmul fast float %6031, 0x3FE7F73180000000
  %6033 = fadd fast float %6032, 0x41AFE27C40000000
  %6034 = fptosi float %6033 to i32
  %6035 = bitcast i32 %6034 to float
  %6036 = fmul fast float %5627, 0x3FD80E9D60000000
  %6037 = fmul fast float %6036, %5991
  %6038 = fadd fast float %6035, %6037
  %6039 = bitcast float %6038 to i32
  %6040 = sub nsw i32 2129859010, %6039
  %6041 = bitcast i32 %6040 to float
  %6042 = fmul fast float %1818, %6029
  %6043 = fmul fast float %6042, %6035
  %6044 = fmul fast float %6043, %6041
  %6045 = fmul fast float %3084, 0x3FF9999980000000
  %6046 = fsub fast float 5.000000e+00, %6045
  %6047 = call float @dx.op.unary.f32(i32 6, float %5981)  ; FAbs(value)
  %6048 = fsub fast float 1.000000e+00, %6047
  %6049 = fmul fast float %3084, 0x41D9660740000000
  %6050 = fadd fast float %6049, 0xC1EFBF8940000000
  %6051 = bitcast float %6048 to i32
  %6052 = sitofp i32 %6051 to float
  %6053 = fmul fast float %6052, %6046
  %6054 = fadd fast float %6050, %6053
  %6055 = fptosi float %6054 to i32
  %6056 = bitcast i32 %6055 to float
  %6057 = fsub fast float 1.000000e+00, %1753
  %6058 = fsub fast float 1.000000e+00, %1754
  %6059 = fsub fast float 1.000000e+00, %1798
  %6060 = fmul fast float %6056, %6057
  %6061 = fmul fast float %6056, %6058
  %6062 = fmul fast float %6056, %6059
  %6063 = fadd fast float %6060, %1753
  %6064 = fadd fast float %6061, %1754
  %6065 = fadd fast float %6062, %1798
  %6066 = fmul fast float %5980, 9.843750e-01
  %6067 = fadd fast float %6066, 7.812500e-03
  %6068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %6067, float %3088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6069 = extractvalue %dx.types.ResRet.f32 %6068, 0
  %6070 = extractvalue %dx.types.ResRet.f32 %6068, 1
  %6071 = extractvalue %dx.types.ResRet.f32 %6068, 2
  %6072 = extractvalue %dx.types.ResRet.f32 %6068, 3
  %6073 = fsub fast float %6071, %6069
  %6074 = fsub fast float %6072, %6070
  %6075 = fmul fast float %6073, %3094
  %6076 = fmul fast float %6074, %3094
  %6077 = fadd fast float %6075, %6069
  %6078 = fadd fast float %6076, %6070
  %6079 = fmul fast float %6077, %1753
  %6080 = fmul fast float %6077, %1754
  %6081 = fmul fast float %6077, %1798
  %6082 = fadd fast float %6079, %6078
  %6083 = fadd fast float %6080, %6078
  %6084 = fadd fast float %6081, %6078
  %6085 = call float @dx.op.binary.f32(i32 35, float %6083, float %6084)  ; FMax(a,b)
  %6086 = call float @dx.op.binary.f32(i32 35, float %6082, float %6085)  ; FMax(a,b)
  %6087 = fsub fast float 1.000000e+00, %6086
  %6088 = call float @dx.op.binary.f32(i32 35, float %6005, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6089 = fdiv fast float %1092, %6088
  %6090 = fsub fast float -0.000000e+00, %1750
  %6091 = fsub fast float -0.000000e+00, %1751
  %6092 = fsub fast float -0.000000e+00, %1752
  %6093 = call float @dx.op.dot3.f32(i32 55, float %5665, float %5666, float %5667, float %6090, float %6091, float %6092)  ; Dot3(ax,ay,az,bx,by,bz)
  %6094 = call float @dx.op.unary.f32(i32 7, float %6093)  ; Saturate(value)
  %6095 = fmul fast float %6094, 9.843750e-01
  %6096 = fadd fast float %6095, 7.812500e-03
  %6097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %6096, float %3088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6098 = extractvalue %dx.types.ResRet.f32 %6097, 0
  %6099 = extractvalue %dx.types.ResRet.f32 %6097, 1
  %6100 = extractvalue %dx.types.ResRet.f32 %6097, 2
  %6101 = extractvalue %dx.types.ResRet.f32 %6097, 3
  %6102 = fsub fast float %6100, %6098
  %6103 = fsub fast float %6101, %6099
  %6104 = fmul fast float %6102, %3094
  %6105 = fmul fast float %6103, %3094
  %6106 = fadd fast float %6104, %6098
  %6107 = fadd fast float %6105, %6099
  %6108 = fmul fast float %1815, %3780
  %6109 = fadd fast float %3774, %6108
  %6110 = call float @dx.op.unary.f32(i32 7, float %6109)  ; Saturate(value)
  %6111 = fsub fast float %5992, %1806
  %6112 = fsub fast float %5993, %1807
  %6113 = fsub fast float %5994, %1808
  %6114 = call float @dx.op.dot3.f32(i32 55, float %6111, float %6112, float %6113, float %6111, float %6112, float %6113)  ; Dot3(ax,ay,az,bx,by,bz)
  %6115 = call float @dx.op.unary.f32(i32 25, float %6114)  ; Rsqrt(value)
  %6116 = fmul fast float %6111, %6115
  %6117 = fmul fast float %6112, %6115
  %6118 = fmul fast float %6113, %6115
  %6119 = call float @dx.op.dot3.f32(i32 55, float %6090, float %6091, float %6092, float %6116, float %6117, float %6118)  ; Dot3(ax,ay,az,bx,by,bz)
  %6120 = fmul fast float %6119, %6119
  %6121 = call float @dx.op.unary.f32(i32 6, float %6094)  ; FAbs(value)
  %6122 = call float @dx.op.binary.f32(i32 35, float %6110, float 0x3F847AE140000000)  ; FMax(a,b)
  %6123 = fmul fast float %6122, %6122
  %6124 = fmul fast float %6123, %6123
  %6125 = fsub fast float 1.000000e+00, %6124
  %6126 = fmul fast float %6124, %6120
  %6127 = fsub fast float 1.000000e+00, %6120
  %6128 = fadd fast float %6127, %6126
  %6129 = bitcast float %6124 to i32
  %6130 = sitofp i32 %6129 to float
  %6131 = fmul fast float %6130, 0x3FE7F73180000000
  %6132 = fadd fast float %6131, 0x41AFE27C40000000
  %6133 = fptosi float %6132 to i32
  %6134 = bitcast i32 %6133 to float
  br i1 %5657, label %6135, label %6189

; <label>:6135                                    ; preds = %5952
  %6136 = fmul fast float %6128, %6128
  %6137 = fmul fast float %6007, %6125
  %6138 = fadd fast float %6137, %6124
  %6139 = bitcast float %6138 to i32
  %6140 = ashr i32 %6139, 1
  %6141 = add nsw i32 %6140, 532487669
  %6142 = bitcast i32 %6141 to float
  %6143 = fadd fast float %6142, %1800
  %6144 = fmul fast float %6136, %6143
  %6145 = fmul fast float %6121, %6121
  %6146 = fmul fast float %6145, %6125
  %6147 = fadd fast float %6146, %6124
  %6148 = bitcast float %6147 to i32
  %6149 = ashr i32 %6148, 1
  %6150 = add nsw i32 %6149, 532487669
  %6151 = bitcast i32 %6150 to float
  %6152 = fadd fast float %6151, %6121
  %6153 = fmul fast float %6144, %6152
  %6154 = fdiv fast float 1.000000e+00, %6153
  %6155 = fmul fast float %6124, %6154
  %6156 = fmul fast float %6155, %6134
  %6157 = fadd fast float %6134, %6037
  %6158 = bitcast float %6157 to i32
  %6159 = sub nsw i32 2129859010, %6158
  %6160 = bitcast i32 %6159 to float
  %6161 = fmul fast float %6156, %6160
  %6162 = fmul fast float %6106, %1753
  %6163 = fadd fast float %6162, %6107
  %6164 = fmul fast float %6106, %1754
  %6165 = fadd fast float %6164, %6107
  %6166 = fmul fast float %6106, %1798
  %6167 = fadd fast float %6166, %6107
  %6168 = call float @dx.op.binary.f32(i32 35, float %6165, float %6167)  ; FMax(a,b)
  %6169 = call float @dx.op.binary.f32(i32 35, float %6163, float %6168)  ; FMax(a,b)
  %6170 = fsub fast float 1.000000e+00, %6169
  %6171 = fmul fast float %6094, %5672
  %6172 = fmul fast float %3720, %6089
  %6173 = call float @dx.op.unary.f32(i32 21, float %6172)  ; Exp(value)
  %6174 = call float @dx.op.unary.f32(i32 7, float %6173)  ; Saturate(value)
  %6175 = select i1 %3715, float %6174, float 0.000000e+00
  %6176 = fmul fast float %3718, %6089
  %6177 = call float @dx.op.unary.f32(i32 21, float %6176)  ; Exp(value)
  %6178 = call float @dx.op.unary.f32(i32 7, float %6177)  ; Saturate(value)
  %6179 = select i1 %3714, float %6178, float 0.000000e+00
  %6180 = fmul fast float %3716, %6089
  %6181 = call float @dx.op.unary.f32(i32 21, float %6180)  ; Exp(value)
  %6182 = call float @dx.op.unary.f32(i32 7, float %6181)  ; Saturate(value)
  %6183 = select i1 %3713, float %6182, float 0.000000e+00
  %6184 = fmul fast float %6170, %6171
  %6185 = fmul fast float %6184, %6161
  %6186 = fmul fast float %6185, %6183
  %6187 = fmul fast float %6185, %6179
  %6188 = fmul fast float %6185, %6175
  br label %6189

; <label>:6189                                    ; preds = %6135, %5952
  %6190 = phi float [ %6186, %6135 ], [ 0.000000e+00, %5952 ]
  %6191 = phi float [ %6187, %6135 ], [ 0.000000e+00, %5952 ]
  %6192 = phi float [ %6188, %6135 ], [ 0.000000e+00, %5952 ]
  %6193 = fmul fast float %6063, %5987
  %6194 = fmul fast float %6193, %6044
  %6195 = fmul fast float %6064, %5987
  %6196 = fmul fast float %6195, %6044
  %6197 = fmul fast float %6065, %5987
  %6198 = fmul fast float %6197, %6044
  %6199 = fadd fast float %6190, %6194
  %6200 = fadd fast float %6191, %6196
  %6201 = fadd fast float %6192, %6198
  %6202 = fmul fast float %5969, %1089
  %6203 = fmul fast float %6202, %5987
  %6204 = fmul fast float %6203, %6087
  %6205 = fmul fast float %5970, %1089
  %6206 = fmul fast float %6205, %5987
  %6207 = fmul fast float %6206, %6087
  %6208 = fmul fast float %5971, %1089
  %6209 = fmul fast float %6208, %5987
  %6210 = fmul fast float %6209, %6087
  %6211 = fadd fast float %6204, %5601
  %6212 = fadd fast float %6207, %5602
  %6213 = fadd fast float %6210, %5603
  %6214 = fmul fast float %6202, %6199
  %6215 = fmul fast float %6205, %6200
  %6216 = fmul fast float %6208, %6201
  %6217 = fadd fast float %6214, %5598
  %6218 = fadd fast float %6215, %5599
  %6219 = fadd fast float %6216, %5600
  br label %5731

; <label>:6220                                    ; preds = %5731
  br label %6221

; <label>:6221                                    ; preds = %6220, %5564
  %6222 = phi float [ %5566, %5564 ], [ %5732, %6220 ]
  %6223 = phi float [ %5567, %5564 ], [ %5733, %6220 ]
  %6224 = phi float [ %5568, %5564 ], [ %5734, %6220 ]
  %6225 = phi float [ %5569, %5564 ], [ %5735, %6220 ]
  %6226 = phi float [ %5570, %5564 ], [ %5736, %6220 ]
  %6227 = phi float [ %5571, %5564 ], [ %5737, %6220 ]
  %6228 = add i32 %5565, 1
  %6229 = icmp ugt i32 %6228, %5561
  br i1 %6229, label %6230, label %5564

; <label>:6230                                    ; preds = %6221
  br label %6231

; <label>:6231                                    ; preds = %6230, %5514, %5504
  %6232 = phi float [ %5505, %5504 ], [ %5505, %5514 ], [ %6222, %6230 ]
  %6233 = phi float [ %5506, %5504 ], [ %5506, %5514 ], [ %6223, %6230 ]
  %6234 = phi float [ %5507, %5504 ], [ %5507, %5514 ], [ %6224, %6230 ]
  %6235 = phi float [ %5508, %5504 ], [ %5508, %5514 ], [ %6225, %6230 ]
  %6236 = phi float [ %5509, %5504 ], [ %5509, %5514 ], [ %6226, %6230 ]
  %6237 = phi float [ %5510, %5504 ], [ %5510, %5514 ], [ %6227, %6230 ]
  %6238 = fsub fast float 1.000000e+00, %1800
  %6239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6240 = extractvalue %dx.types.CBufRet.f32 %6239, 0
  %6241 = fmul fast float %6240, %6238
  %6242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6243 = extractvalue %dx.types.CBufRet.f32 %6242, 3
  %6244 = fsub fast float 1.000000e+00, %1093
  %6245 = call float @dx.op.unary.f32(i32 7, float %6244)  ; Saturate(value)
  %6246 = fadd fast float %6237, %1095
  %6247 = fmul fast float %6246, %1093
  %6248 = fmul fast float %6245, %6243
  %6249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6250 = extractvalue %dx.types.CBufRet.f32 %6249, 3
  %6251 = fmul fast float %6235, %1756
  %6252 = fmul fast float %6236, %1757
  %6253 = fmul fast float %6237, %1758
  %6254 = fcmp fast ogt float %88, %198
  %6255 = and i1 %6254, %1555
  %6256 = or i1 %1561, %6255
  %6257 = icmp eq i32 %1554, 2
  %6258 = fcmp fast ole float %88, %198
  %6259 = and i1 %6258, %6257
  %6260 = or i1 %6259, %6256
  br i1 %6255, label %6261, label %6515

; <label>:6261                                    ; preds = %6231
  %6262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6263 = extractvalue %dx.types.CBufRet.f32 %6262, 2
  %6264 = extractvalue %dx.types.CBufRet.f32 %6262, 3
  %6265 = fmul fast float %6263, %100
  %6266 = fmul fast float %6264, %101
  %6267 = call float @dx.op.unary.f32(i32 7, float %6265)  ; Saturate(value)
  %6268 = call float @dx.op.unary.f32(i32 7, float %6266)  ; Saturate(value)
  %6269 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6267, float %6268, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6270 = extractvalue %dx.types.ResRet.f32 %6269, 0
  %6271 = extractvalue %dx.types.ResRet.f32 %6269, 1
  %6272 = extractvalue %dx.types.ResRet.f32 %6269, 2
  %6273 = extractvalue %dx.types.ResRet.f32 %6269, 3
  %6274 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6267, float %6268, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6275 = extractvalue %dx.types.ResRet.f32 %6274, 0
  %6276 = extractvalue %dx.types.ResRet.f32 %6274, 1
  %6277 = extractvalue %dx.types.ResRet.f32 %6274, 2
  %6278 = extractvalue %dx.types.ResRet.f32 %6274, 3
  %6279 = call float @dx.op.binary.f32(i32 35, float %6271, float %6272)  ; FMax(a,b)
  %6280 = call float @dx.op.binary.f32(i32 35, float %6270, float %6279)  ; FMax(a,b)
  %6281 = call float @dx.op.binary.f32(i32 35, float %6280, float %6273)  ; FMax(a,b)
  %6282 = call float @dx.op.binary.f32(i32 36, float %6276, float %6277)  ; FMin(a,b)
  %6283 = call float @dx.op.binary.f32(i32 36, float %6275, float %6282)  ; FMin(a,b)
  %6284 = call float @dx.op.binary.f32(i32 36, float %6283, float %6278)  ; FMin(a,b)
  %6285 = fmul fast float %6281, 2.550000e+02
  %6286 = fadd fast float %6285, 0x3F70101020000000
  %6287 = fptoui float %6286 to i32
  %6288 = fmul fast float %6284, 2.550000e+02
  %6289 = fadd fast float %6288, 0x3F70101020000000
  %6290 = fptoui float %6289 to i32
  %6291 = icmp ult i32 %6287, %6290
  br i1 %6291, label %6292, label %6460

; <label>:6292                                    ; preds = %6261
  %6293 = fcmp fast ogt float %87, 9.843750e-01
  %6294 = fadd fast float %88, -4.000000e+00
  %6295 = select i1 %6293, float -4.000000e+00, float %6294
  %6296 = call float @dx.op.binary.f32(i32 35, float %6295, float 0.000000e+00)  ; FMax(a,b)
  %6297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6298 = extractvalue %dx.types.CBufRet.f32 %6297, 0
  %6299 = fadd fast float %6298, %6296
  %6300 = extractvalue %dx.types.CBufRet.f32 %6297, 2
  %6301 = fmul fast float %6299, %6300
  %6302 = call float @dx.op.unary.f32(i32 23, float %6301)  ; Log(value)
  %6303 = extractvalue %dx.types.CBufRet.f32 %6297, 3
  %6304 = fmul fast float %6303, %6302
  %6305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6306 = extractvalue %dx.types.CBufRet.f32 %6305, 2
  %6307 = fmul fast float %6304, %6306
  %6308 = call float @dx.op.unary.f32(i32 7, float %6307)  ; Saturate(value)
  %6309 = uitofp i32 %6287 to float
  %6310 = uitofp i32 %6290 to float
  %6311 = fadd fast float %6309, 5.000000e-01
  %6312 = fadd fast float %6310, 5.000000e-01
  %6313 = fmul fast float %6306, %6311
  %6314 = fmul fast float %6306, %6312
  %6315 = fadd fast float %6313, 0x3F0FFB4800000000
  %6316 = fadd fast float %6314, 0xBF0FFB4800000000
  %6317 = call float @dx.op.binary.f32(i32 35, float %6308, float %6315)  ; FMax(a,b)
  %6318 = call float @dx.op.binary.f32(i32 36, float %6317, float %6316)  ; FMin(a,b)
  %6319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6320 = extractvalue %dx.types.CBufRet.f32 %6319, 1
  %6321 = extractvalue %dx.types.CBufRet.f32 %6319, 2
  %6322 = extractvalue %dx.types.CBufRet.f32 %6319, 0
  %6323 = fmul fast float %6320, %6318
  %6324 = fadd fast float %6322, %6323
  %6325 = fadd fast float %6322, %6321
  %6326 = fsub fast float %6320, %6321
  %6327 = fadd fast float %6326, %6322
  %6328 = call float @dx.op.binary.f32(i32 35, float %6324, float %6325)  ; FMax(a,b)
  %6329 = call float @dx.op.binary.f32(i32 36, float %6328, float %6327)  ; FMin(a,b)
  %6330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %6267, float %6268, float %6329, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6331 = extractvalue %dx.types.ResRet.f32 %6330, 0
  %6332 = extractvalue %dx.types.ResRet.f32 %6330, 1
  %6333 = extractvalue %dx.types.ResRet.f32 %6330, 2
  %6334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6335 = extractvalue %dx.types.CBufRet.i32 %6334, 0
  %6336 = extractvalue %dx.types.CBufRet.i32 %6334, 1
  %6337 = uitofp i32 %6335 to float
  %6338 = uitofp i32 %6336 to float
  %6339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6340 = extractvalue %dx.types.CBufRet.f32 %6339, 0
  %6341 = extractvalue %dx.types.CBufRet.f32 %6339, 1
  %6342 = fmul fast float %6337, %6267
  %6343 = fmul fast float %6338, %6268
  %6344 = fadd fast float %6342, -5.000000e-01
  %6345 = fadd fast float %6343, -5.000000e-01
  %6346 = call float @dx.op.unary.f32(i32 22, float %6344)  ; Frc(value)
  %6347 = call float @dx.op.unary.f32(i32 22, float %6345)  ; Frc(value)
  %6348 = fmul fast float %6346, %6346
  %6349 = fmul fast float %6348, %6346
  %6350 = fsub fast float 3.000000e+00, %6346
  %6351 = fmul fast float %6348, %6350
  %6352 = fmul fast float %6346, 3.000000e+00
  %6353 = fmul fast float %6349, 3.000000e+00
  %6354 = fmul fast float %6348, 6.000000e+00
  %6355 = fsub fast float %6353, %6354
  %6356 = fadd fast float %6355, 4.000000e+00
  %6357 = fmul fast float %6356, 0x3FC5555560000000
  %6358 = fmul fast float %6349, -3.000000e+00
  %6359 = fadd fast float %6348, %6346
  %6360 = fmul fast float %6359, 3.000000e+00
  %6361 = fadd fast float %6358, 1.000000e+00
  %6362 = fadd fast float %6361, %6360
  %6363 = fmul fast float %6349, 0x3FC5555560000000
  %6364 = fmul fast float %6347, %6347
  %6365 = fmul fast float %6364, %6347
  %6366 = fsub fast float 3.000000e+00, %6347
  %6367 = fmul fast float %6364, %6366
  %6368 = fmul fast float %6347, 3.000000e+00
  %6369 = fmul fast float %6365, 3.000000e+00
  %6370 = fmul fast float %6364, 6.000000e+00
  %6371 = fsub fast float %6369, %6370
  %6372 = fadd fast float %6371, 4.000000e+00
  %6373 = fmul fast float %6372, 0x3FC5555560000000
  %6374 = fmul fast float %6365, -3.000000e+00
  %6375 = fadd fast float %6364, %6347
  %6376 = fmul fast float %6375, 3.000000e+00
  %6377 = fadd fast float %6374, 1.000000e+00
  %6378 = fadd fast float %6377, %6376
  %6379 = fmul fast float %6365, 0x3FC5555560000000
  %6380 = fadd fast float %6346, 1.000000e+00
  %6381 = fsub fast float 1.000000e+00, %6352
  %6382 = fadd fast float %6381, %6351
  %6383 = fadd fast float %6382, %6356
  %6384 = fmul fast float %6383, 0x3FC5555560000000
  %6385 = fdiv fast float %6357, %6384
  %6386 = fsub fast float %6380, %6385
  %6387 = fsub fast float 1.000000e+00, %6346
  %6388 = fadd fast float %6362, %6349
  %6389 = fmul fast float %6388, 0x3FC5555560000000
  %6390 = fdiv fast float %6363, %6389
  %6391 = fadd fast float %6387, %6390
  %6392 = fadd fast float %6347, 1.000000e+00
  %6393 = fsub fast float 1.000000e+00, %6368
  %6394 = fadd fast float %6393, %6367
  %6395 = fadd fast float %6394, %6372
  %6396 = fmul fast float %6395, 0x3FC5555560000000
  %6397 = fdiv fast float %6373, %6396
  %6398 = fsub fast float %6392, %6397
  %6399 = fsub fast float 1.000000e+00, %6347
  %6400 = fadd fast float %6378, %6365
  %6401 = fmul fast float %6400, 0x3FC5555560000000
  %6402 = fdiv fast float %6379, %6401
  %6403 = fadd fast float %6402, %6399
  %6404 = fmul fast float %6386, %6340
  %6405 = fsub fast float %6267, %6404
  %6406 = fmul fast float %6391, %6340
  %6407 = fadd fast float %6406, %6267
  %6408 = fmul fast float %6403, %6341
  %6409 = fadd fast float %6408, %6268
  %6410 = fmul fast float %6398, %6341
  %6411 = fsub fast float %6268, %6410
  %6412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6405, float %6411, float %6329, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6413 = extractvalue %dx.types.ResRet.f32 %6412, 0
  %6414 = extractvalue %dx.types.ResRet.f32 %6412, 1
  %6415 = extractvalue %dx.types.ResRet.f32 %6412, 2
  %6416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6407, float %6411, float %6329, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6417 = extractvalue %dx.types.ResRet.f32 %6416, 0
  %6418 = extractvalue %dx.types.ResRet.f32 %6416, 1
  %6419 = extractvalue %dx.types.ResRet.f32 %6416, 2
  %6420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6405, float %6409, float %6329, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6421 = extractvalue %dx.types.ResRet.f32 %6420, 0
  %6422 = extractvalue %dx.types.ResRet.f32 %6420, 1
  %6423 = extractvalue %dx.types.ResRet.f32 %6420, 2
  %6424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6407, float %6409, float %6329, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6425 = extractvalue %dx.types.ResRet.f32 %6424, 0
  %6426 = extractvalue %dx.types.ResRet.f32 %6424, 1
  %6427 = extractvalue %dx.types.ResRet.f32 %6424, 2
  %6428 = fsub fast float %6421, %6413
  %6429 = fsub fast float %6422, %6414
  %6430 = fsub fast float %6423, %6415
  %6431 = fmul fast float %6428, %6401
  %6432 = fmul fast float %6429, %6401
  %6433 = fmul fast float %6430, %6401
  %6434 = fadd fast float %6431, %6413
  %6435 = fadd fast float %6432, %6414
  %6436 = fadd fast float %6433, %6415
  %6437 = fsub fast float %6425, %6417
  %6438 = fsub fast float %6426, %6418
  %6439 = fsub fast float %6427, %6419
  %6440 = fmul fast float %6437, %6401
  %6441 = fmul fast float %6438, %6401
  %6442 = fmul fast float %6439, %6401
  %6443 = fsub fast float %6417, %6434
  %6444 = fadd fast float %6443, %6440
  %6445 = fsub fast float %6418, %6435
  %6446 = fadd fast float %6445, %6441
  %6447 = fsub fast float %6419, %6436
  %6448 = fadd fast float %6447, %6442
  %6449 = fmul fast float %6444, %6389
  %6450 = fmul fast float %6446, %6389
  %6451 = fmul fast float %6448, %6389
  %6452 = fadd fast float %6449, %6434
  %6453 = fadd fast float %6450, %6435
  %6454 = fadd fast float %6451, %6436
  %6455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6456 = extractvalue %dx.types.CBufRet.f32 %6455, 1
  %6457 = fmul fast float %6452, %6456
  %6458 = fmul fast float %6453, %6456
  %6459 = fmul fast float %6454, %6456
  br label %6460

; <label>:6460                                    ; preds = %6292, %6261
  %6461 = phi float [ %6331, %6292 ], [ 1.000000e+00, %6261 ]
  %6462 = phi float [ %6332, %6292 ], [ 1.000000e+00, %6261 ]
  %6463 = phi float [ %6333, %6292 ], [ 1.000000e+00, %6261 ]
  %6464 = phi float [ %6457, %6292 ], [ 0.000000e+00, %6261 ]
  %6465 = phi float [ %6458, %6292 ], [ 0.000000e+00, %6261 ]
  %6466 = phi float [ %6459, %6292 ], [ 0.000000e+00, %6261 ]
  %6467 = call float @dx.op.dot3.f32(i32 55, float %6461, float %6462, float %6463, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6468 = call float @dx.op.dot3.f32(i32 55, float %6464, float %6465, float %6466, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6469 = select i1 %240, float %6467, float %6461
  %6470 = select i1 %240, float %6467, float %6462
  %6471 = select i1 %240, float 1.000000e+00, float %6463
  %6472 = select i1 %240, float %6468, float %6464
  %6473 = select i1 %240, float 0.000000e+00, float %6465
  %6474 = select i1 %240, float 0.000000e+00, float %6466
  %6475 = fmul fast float %6469, %6251
  %6476 = fmul fast float %6470, %6252
  %6477 = fmul fast float %6471, %6253
  %6478 = fadd fast float %6475, %6472
  %6479 = fadd fast float %6476, %6473
  %6480 = fadd fast float %6474, %6477
  %6481 = fmul fast float %6469, %6232
  %6482 = fmul fast float %6470, %6233
  %6483 = fmul fast float %6471, %6234
  %6484 = fmul fast float %1765, %6263
  %6485 = fmul fast float %1767, %6264
  %6486 = fsub fast float 1.000000e+00, %6484
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
  %6512 = fmul fast float %6507, %198
  %6513 = fmul fast float %6509, %198
  %6514 = fmul fast float %6511, %198
  br label %6515

; <label>:6515                                    ; preds = %6460, %6231
  %6516 = phi float [ %6512, %6460 ], [ %147, %6231 ]
  %6517 = phi float [ %6513, %6460 ], [ %148, %6231 ]
  %6518 = phi float [ %6514, %6460 ], [ %149, %6231 ]
  %6519 = phi float [ %198, %6460 ], [ %88, %6231 ]
  %6520 = phi float [ %6478, %6460 ], [ %6251, %6231 ]
  %6521 = phi float [ %6479, %6460 ], [ %6252, %6231 ]
  %6522 = phi float [ %6480, %6460 ], [ %6253, %6231 ]
  %6523 = phi float [ %6481, %6460 ], [ %6232, %6231 ]
  %6524 = phi float [ %6482, %6460 ], [ %6233, %6231 ]
  %6525 = phi float [ %6483, %6460 ], [ %6234, %6231 ]
  %6526 = phi float [ %6461, %6460 ], [ 1.000000e+00, %6231 ]
  br i1 %6260, label %7675, label %6527

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
  br i1 %6571, label %6572, label %6978, !dx.controlflow.hints !147

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
  %6717 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %6717, align 4, !tbaa !134, !noalias !148
  %6718 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %6718, align 4, !tbaa !134, !noalias !148
  %6719 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %6719, align 4, !tbaa !134, !noalias !148
  %6720 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %6720, align 4, !tbaa !134, !noalias !148
  %6721 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %6721, align 4, !tbaa !134, !noalias !148
  %6722 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %6722, align 4, !tbaa !134, !noalias !148
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
  %6770 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %6727
  store float %6769, float* %6770, align 4, !tbaa !134, !noalias !148
  %6771 = call float @dx.op.binary.f32(i32 35, float %6713, float %6765)  ; FMax(a,b)
  %6772 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %6727
  store float %6771, float* %6772, align 4, !tbaa !134, !noalias !148
  %6773 = add nsw i32 %6726, 1
  br label %6774

; <label>:6774                                    ; preds = %6768, %6764
  %6775 = phi i32 [ %6773, %6768 ], [ %6726, %6764 ]
  %6776 = add nuw nsw i32 %6727, 1
  %6777 = icmp eq i32 %6776, %6582
  br i1 %6777, label %6778, label %6725

; <label>:6778                                    ; preds = %6774
  %6779 = load float, float* %6719, align 4, !tbaa !134, !alias.scope !164, !noalias !167
  %6780 = load float, float* %6718, align 4, !tbaa !134, !alias.scope !170, !noalias !171
  %6781 = load float, float* %6717, align 4, !tbaa !134, !alias.scope !172, !noalias !173
  %6782 = load float, float* %6722, align 4, !tbaa !134, !alias.scope !174, !noalias !177
  %6783 = load float, float* %6721, align 4, !tbaa !134, !alias.scope !180, !noalias !181
  %6784 = load float, float* %6720, align 4, !tbaa !134, !alias.scope !182, !noalias !183
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
  store float %6794, float* %6717, align 4, !tbaa !134, !alias.scope !172, !noalias !173
  store float %6798, float* %6718, align 4, !tbaa !134, !alias.scope !170, !noalias !171
  store float %6800, float* %6719, align 4, !tbaa !134, !alias.scope !164, !noalias !167
  %6801 = call float @dx.op.binary.f32(i32 36, float %6787, float %6788)  ; FMin(a,b)
  %6802 = call float @dx.op.binary.f32(i32 36, float %6786, float %6801)  ; FMin(a,b)
  %6803 = call float @dx.op.binary.f32(i32 35, float %6786, float %6787)  ; FMax(a,b)
  %6804 = call float @dx.op.binary.f32(i32 36, float %6803, float %6788)  ; FMin(a,b)
  %6805 = call float @dx.op.binary.f32(i32 36, float %6786, float %6787)  ; FMin(a,b)
  %6806 = call float @dx.op.binary.f32(i32 35, float %6805, float %6804)  ; FMax(a,b)
  %6807 = call float @dx.op.binary.f32(i32 35, float %6787, float %6788)  ; FMax(a,b)
  %6808 = call float @dx.op.binary.f32(i32 35, float %6786, float %6807)  ; FMax(a,b)
  store float %6802, float* %6720, align 4, !tbaa !134, !alias.scope !182, !noalias !183
  store float %6806, float* %6721, align 4, !tbaa !134, !alias.scope !180, !noalias !181
  store float %6808, float* %6722, align 4, !tbaa !134, !alias.scope !174, !noalias !177
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
  %6850 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %6809
  %6851 = load float, float* %6850, align 4, !tbaa !134, !noalias !148
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
  %6861 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %6860
  %6862 = load float, float* %6861, align 4, !tbaa !134, !noalias !148
  %6863 = icmp slt i32 %6860, 2
  %6864 = add nsw i32 %6860, 1
  %6865 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %6864
  %6866 = load float, float* %6865, align 4, !tbaa !134, !noalias !148
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
  br i1 %6555, label %6990, label %7019, !dx.controlflow.hints !184

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
  br i1 %7032, label %7033, label %7039, !dx.controlflow.hints !185

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
  br i1 %6571, label %7085, label %7283, !dx.controlflow.hints !186

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
  br i1 %7107, label %7108, label %7121, !dx.controlflow.hints !187

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
  br i1 %7126, label %7127, label %7134, !dx.controlflow.hints !188

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
  br i1 %7137, label %7138, label %7145, !dx.controlflow.hints !188

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
  br i1 %7148, label %7149, label %7156, !dx.controlflow.hints !188

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
  br i1 %7175, label %7176, label %7183, !dx.controlflow.hints !189

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
  br i1 %7186, label %7187, label %7194, !dx.controlflow.hints !189

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
  br i1 %7197, label %7198, label %7205, !dx.controlflow.hints !189

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
  br i1 %7215, label %7216, label %7267, !dx.controlflow.hints !190

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
  br i1 %7237, label %7238, label %7245, !dx.controlflow.hints !189

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
  br i1 %7248, label %7249, label %7256, !dx.controlflow.hints !189

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
  br i1 %7259, label %7260, label %7267, !dx.controlflow.hints !189

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
  %7290 = fmul fast float %7286, %6526
  %7291 = call float @dx.op.dot3.f32(i32 55, float %7286, float %7285, float %7284, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7292 = call float @dx.op.dot3.f32(i32 55, float %7289, float %7288, float %7287, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7293 = select i1 %240, float %7291, float %7286
  %7294 = select i1 %240, float %7291, float %7285
  %7295 = select i1 %240, float 1.000000e+00, float %7284
  %7296 = select i1 %240, float %7292, float %7289
  %7297 = select i1 %240, float 0.000000e+00, float %7288
  %7298 = select i1 %240, float 0.000000e+00, float %7287
  %7299 = fmul fast float %7293, %6520
  %7300 = fmul fast float %7294, %6521
  %7301 = fmul fast float %7295, %6522
  %7302 = fadd fast float %7299, %7296
  %7303 = fadd fast float %7300, %7297
  %7304 = fadd fast float %7298, %7301
  %7305 = fmul fast float %7293, %6523
  %7306 = fmul fast float %7294, %6524
  %7307 = fmul fast float %7295, %6525
  %7308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7309 = extractvalue %dx.types.CBufRet.i32 %7308, 0
  %7310 = icmp eq i32 %7309, 0
  br i1 %7310, label %7675, label %7311, !dx.controlflow.hints !191

; <label>:7311                                    ; preds = %7283
  %7312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7313 = extractvalue %dx.types.CBufRet.f32 %7312, 2
  %7314 = extractvalue %dx.types.CBufRet.f32 %7312, 3
  %7315 = fmul fast float %7313, %100
  %7316 = fmul fast float %7314, %101
  %7317 = fmul fast float %7315, 2.000000e+00
  %7318 = fmul fast float %7316, 2.000000e+00
  %7319 = fsub fast float 1.000000e+00, %7317
  %7320 = fsub fast float 1.000000e+00, %7318
  %7321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7322 = extractvalue %dx.types.CBufRet.f32 %7321, 0
  %7323 = extractvalue %dx.types.CBufRet.f32 %7321, 1
  %7324 = extractvalue %dx.types.CBufRet.f32 %7321, 2
  %7325 = fmul fast float %7319, %7322
  %7326 = fmul fast float %7319, %7323
  %7327 = fmul fast float %7319, %7324
  %7328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7329 = extractvalue %dx.types.CBufRet.f32 %7328, 0
  %7330 = extractvalue %dx.types.CBufRet.f32 %7328, 1
  %7331 = extractvalue %dx.types.CBufRet.f32 %7328, 2
  %7332 = fmul fast float %7320, %7329
  %7333 = fmul fast float %7320, %7330
  %7334 = fmul fast float %7320, %7331
  %7335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7336 = extractvalue %dx.types.CBufRet.f32 %7335, 0
  %7337 = extractvalue %dx.types.CBufRet.f32 %7335, 1
  %7338 = extractvalue %dx.types.CBufRet.f32 %7335, 2
  %7339 = fadd fast float %7332, %7336
  %7340 = fadd fast float %7339, %7325
  %7341 = fadd fast float %7333, %7337
  %7342 = fadd fast float %7341, %7326
  %7343 = fadd fast float %7334, %7338
  %7344 = fadd fast float %7343, %7327
  %7345 = fmul fast float %7340, %6519
  %7346 = fmul fast float %7342, %6519
  %7347 = fmul fast float %7344, %6519
  %7348 = fmul fast float %7345, %7345
  %7349 = fmul fast float %7346, %7346
  %7350 = fadd fast float %7348, %7349
  %7351 = fmul fast float %7347, %7347
  %7352 = fadd fast float %7350, %7351
  %7353 = call float @dx.op.unary.f32(i32 24, float %7352)  ; Sqrt(value)
  %7354 = extractvalue %dx.types.CBufRet.f32 %6249, 0
  %7355 = fsub fast float %7353, %7354
  %7356 = extractvalue %dx.types.CBufRet.f32 %6249, 2
  %7357 = fmul fast float %7355, %7356
  %7358 = call float @dx.op.unary.f32(i32 7, float %7357)  ; Saturate(value)
  %7359 = fadd fast float %7358, -5.000000e-01
  %7360 = fmul fast float %7359, 2.000000e+00
  %7361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7362 = extractvalue %dx.types.CBufRet.f32 %7361, 2
  %7363 = call float @dx.op.binary.f32(i32 36, float %7362, float %7360)  ; FMin(a,b)
  %7364 = fsub fast float -0.000000e+00, %7362
  %7365 = fcmp fast ogt float %7363, %7364
  br i1 %7365, label %7366, label %7675, !dx.controlflow.hints !192

; <label>:7366                                    ; preds = %7311
  %7367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7368 = extractvalue %dx.types.CBufRet.f32 %7367, 3
  %7369 = fcmp fast ogt float %7368, 0.000000e+00
  br i1 %7369, label %7370, label %7445, !dx.controlflow.hints !193

; <label>:7370                                    ; preds = %7366
  %7371 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %7372 = extractvalue %dx.types.Dimensions %7371, 0
  %7373 = sitofp i32 %7372 to float
  %7374 = extractvalue %dx.types.Dimensions %7371, 1
  %7375 = sitofp i32 %7374 to float
  %7376 = fmul fast float %7315, %7373
  %7377 = fmul fast float %7316, %7375
  %7378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7379 = extractvalue %dx.types.CBufRet.f32 %7378, 1
  %7380 = fsub fast float -0.000000e+00, %7379
  %7381 = fptoui float %7380 to i32
  %7382 = fptoui float %7376 to i32
  %7383 = fptoui float %7377 to i32
  %7384 = and i32 %7381, 31
  %7385 = lshr i32 %7382, %7384
  %7386 = lshr i32 %7383, %7384
  %7387 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %7381, i32 %7385, i32 %7386, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7388 = extractvalue %dx.types.ResRet.f32 %7387, 0
  %7389 = fcmp fast olt float %7388, -1.000000e+00
  %7390 = fcmp fast ogt float %7388, -1.000000e+00
  %7391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7392 = extractvalue %dx.types.CBufRet.f32 %7391, 1
  %7393 = select i1 %7390, float %7392, float 1.000000e+00
  %7394 = fadd fast float %7388, 1.000000e+00
  %7395 = fmul fast float %7393, %7394
  %7396 = call float @dx.op.unary.f32(i32 6, float %7395)  ; FAbs(value)
  %7397 = extractvalue %dx.types.CBufRet.f32 %7391, 3
  %7398 = fcmp fast oge float %7396, %7397
  %7399 = select i1 %7398, float 0x4197782600000000, float %7396
  %7400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7401 = extractvalue %dx.types.CBufRet.f32 %7400, 0
  %7402 = extractvalue %dx.types.CBufRet.f32 %7400, 1
  %7403 = extractvalue %dx.types.CBufRet.f32 %7400, 2
  %7404 = select i1 %7389, float %7401, float %7322
  %7405 = select i1 %7389, float %7402, float %7323
  %7406 = select i1 %7389, float %7403, float %7324
  %7407 = fmul fast float %7404, %7319
  %7408 = fmul fast float %7405, %7319
  %7409 = fmul fast float %7406, %7319
  %7410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7411 = extractvalue %dx.types.CBufRet.f32 %7410, 0
  %7412 = extractvalue %dx.types.CBufRet.f32 %7410, 1
  %7413 = extractvalue %dx.types.CBufRet.f32 %7410, 2
  %7414 = select i1 %7389, float %7411, float %7329
  %7415 = select i1 %7389, float %7412, float %7330
  %7416 = select i1 %7389, float %7413, float %7331
  %7417 = fmul fast float %7414, %7320
  %7418 = fmul fast float %7415, %7320
  %7419 = fmul fast float %7416, %7320
  %7420 = fadd fast float %7417, %7407
  %7421 = fadd fast float %7418, %7408
  %7422 = fadd fast float %7419, %7409
  %7423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7424 = extractvalue %dx.types.CBufRet.f32 %7423, 0
  %7425 = extractvalue %dx.types.CBufRet.f32 %7423, 1
  %7426 = extractvalue %dx.types.CBufRet.f32 %7423, 2
  %7427 = select i1 %7389, float %7424, float %7336
  %7428 = select i1 %7389, float %7425, float %7337
  %7429 = select i1 %7389, float %7426, float %7338
  %7430 = fadd fast float %7420, %7427
  %7431 = fadd fast float %7421, %7428
  %7432 = fadd fast float %7422, %7429
  %7433 = fmul fast float %7430, %7399
  %7434 = fmul fast float %7431, %7399
  %7435 = fmul fast float %7432, %7399
  %7436 = fmul fast float %7433, %7433
  %7437 = fmul fast float %7434, %7434
  %7438 = fadd fast float %7436, %7437
  %7439 = fmul fast float %7435, %7435
  %7440 = fadd fast float %7438, %7439
  %7441 = call float @dx.op.unary.f32(i32 24, float %7440)  ; Sqrt(value)
  %7442 = fsub fast float %7441, %7354
  %7443 = fmul fast float %7442, %7356
  %7444 = call float @dx.op.unary.f32(i32 7, float %7443)  ; Saturate(value)
  br label %7445

; <label>:7445                                    ; preds = %7370, %7366
  %7446 = phi float [ %7444, %7370 ], [ 1.000000e+00, %7366 ]
  %7447 = fmul fast float %7363, 5.000000e-01
  %7448 = fadd fast float %7447, 5.000000e-01
  %7449 = call float @dx.op.unary.f32(i32 22, float %7448)  ; Frc(value)
  %7450 = call float @dx.op.unary.f32(i32 27, float %7449)  ; Round_ni(value)
  %7451 = call float @dx.op.unary.f32(i32 22, float %7449)  ; Frc(value)
  %7452 = fmul fast float %7451, 2.000000e+00
  %7453 = fadd fast float %7452, -1.000000e+00
  %7454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %64, float %7315, float %7316, float %7450, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7455 = extractvalue %dx.types.ResRet.f32 %7454, 0
  %7456 = extractvalue %dx.types.ResRet.f32 %7454, 1
  %7457 = extractvalue %dx.types.ResRet.f32 %7454, 2
  %7458 = extractvalue %dx.types.ResRet.f32 %7454, 3
  %7459 = fadd fast float %7455, -5.000000e-01
  %7460 = fadd fast float %7457, -5.000000e-01
  %7461 = fmul fast float %7459, 0xBFD5555560000000
  %7462 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7460, float %7461)  ; FMad(a,b,c)
  %7463 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7456, float 0.000000e+00)  ; FMad(a,b,c)
  %7464 = fadd fast float %7463, %7458
  %7465 = fmul fast float %7459, -7.500000e-01
  %7466 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7460, float %7465)  ; FMad(a,b,c)
  %7467 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7456, float 0.000000e+00)  ; FMad(a,b,c)
  %7468 = fadd fast float %7467, %7458
  %7469 = call float @dx.op.binary.f32(i32 35, float %7462, float -1.000000e+00)  ; FMax(a,b)
  %7470 = call float @dx.op.binary.f32(i32 35, float %7464, float -1.000000e+00)  ; FMax(a,b)
  %7471 = call float @dx.op.binary.f32(i32 35, float %7466, float -1.000000e+00)  ; FMax(a,b)
  %7472 = call float @dx.op.binary.f32(i32 35, float %7468, float -1.000000e+00)  ; FMax(a,b)
  %7473 = call float @dx.op.binary.f32(i32 36, float %7469, float 1.000000e+00)  ; FMin(a,b)
  %7474 = call float @dx.op.binary.f32(i32 36, float %7470, float 1.000000e+00)  ; FMin(a,b)
  %7475 = call float @dx.op.binary.f32(i32 36, float %7471, float 1.000000e+00)  ; FMin(a,b)
  %7476 = call float @dx.op.binary.f32(i32 36, float %7472, float 1.000000e+00)  ; FMin(a,b)
  %7477 = fcmp fast olt float %7473, 0x3FEFFF8020000000
  br i1 %7477, label %7478, label %7593, !dx.controlflow.hints !194

; <label>:7478                                    ; preds = %7445
  %7479 = extractvalue %dx.types.CBufRet.f32 %7361, 3
  %7480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7481 = extractvalue %dx.types.CBufRet.f32 %7480, 0
  %7482 = extractvalue %dx.types.CBufRet.f32 %7480, 1
  %7483 = extractvalue %dx.types.CBufRet.f32 %7480, 2
  %7484 = extractvalue %dx.types.CBufRet.f32 %7480, 3
  %7485 = fsub fast float %7481, %7473
  %7486 = fsub fast float %7482, %7474
  %7487 = fsub fast float %7483, %7475
  %7488 = fsub fast float %7484, %7476
  %7489 = fmul fast float %7485, %7479
  %7490 = fmul fast float %7486, %7479
  %7491 = fmul fast float %7487, %7479
  %7492 = fmul fast float %7488, %7479
  %7493 = fadd fast float %7489, %7473
  %7494 = fadd fast float %7490, %7474
  %7495 = fsub fast float -0.000000e+00, %7494
  %7496 = fadd fast float %7491, %7475
  %7497 = fadd fast float %7492, %7476
  %7498 = fmul fast float %7493, %7493
  %7499 = fsub fast float %7494, %7498
  %7500 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7499)  ; FMax(a,b)
  %7501 = fdiv fast float 1.000000e+00, %7500
  %7502 = fmul fast float %7494, %7493
  %7503 = fsub fast float %7496, %7502
  %7504 = fsub fast float %7453, %7493
  %7505 = fmul fast float %7453, %7453
  %7506 = fsub fast float %7505, %7494
  %7507 = fmul fast float %7504, %7501
  %7508 = fmul fast float %7507, %7503
  %7509 = fsub fast float %7506, %7508
  %7510 = fmul fast float %7494, %7494
  %7511 = fsub fast float %7497, %7510
  %7512 = fmul fast float %7503, %7503
  %7513 = fmul fast float %7512, %7501
  %7514 = fsub fast float %7511, %7513
  %7515 = fdiv fast float %7509, %7514
  %7516 = fmul fast float %7503, %7515
  %7517 = fsub fast float %7504, %7516
  %7518 = fmul fast float %7517, %7501
  %7519 = fmul fast float %7518, %7493
  %7520 = fsub fast float 1.000000e+00, %7519
  %7521 = fmul fast float %7494, %7515
  %7522 = fsub fast float %7520, %7521
  %7523 = fmul fast float %7518, %7518
  %7524 = fmul fast float %7515, 4.000000e+00
  %7525 = fmul fast float %7524, %7522
  %7526 = fsub fast float %7523, %7525
  %7527 = call float @dx.op.unary.f32(i32 24, float %7526)  ; Sqrt(value)
  %7528 = fcmp fast oge float %7518, 0.000000e+00
  %7529 = fsub fast float -0.000000e+00, %7527
  %7530 = select i1 %7528, float %7529, float %7527
  %7531 = fsub fast float %7530, %7518
  %7532 = fdiv fast float %7531, %7515
  %7533 = fdiv fast float %7522, %7531
  %7534 = fmul fast float %7532, 5.000000e-01
  %7535 = fmul fast float %7533, 2.000000e+00
  %7536 = select i1 %7528, float %7534, float %7535
  %7537 = select i1 %7528, float %7535, float %7534
  %7538 = call float @dx.op.binary.f32(i32 35, float %7536, float %7537)  ; FMax(a,b)
  %7539 = call float @dx.op.binary.f32(i32 36, float %7536, float %7537)  ; FMin(a,b)
  %7540 = fcmp fast ogt float %7453, %7539
  br i1 %7540, label %7541, label %7551

; <label>:7541                                    ; preds = %7478
  %7542 = fsub fast float %7453, %7539
  %7543 = fsub fast float %7538, %7539
  %7544 = fmul fast float %7542, %7543
  %7545 = fmul fast float %7538, %7453
  %7546 = fadd fast float %7538, %7453
  %7547 = fmul fast float %7546, %7493
  %7548 = fadd fast float %7545, %7494
  %7549 = fsub fast float %7548, %7547
  %7550 = fdiv fast float %7549, %7544
  br label %7551

; <label>:7551                                    ; preds = %7541, %7478
  %7552 = phi float [ %7550, %7541 ], [ 0.000000e+00, %7478 ]
  %7553 = fcmp fast ogt float %7453, %7538
  %7554 = fsub fast float %7453, %7538
  br i1 %7553, label %7555, label %7565

; <label>:7555                                    ; preds = %7551
  %7556 = fsub fast float %7538, %7539
  %7557 = fmul fast float %7556, %7554
  %7558 = fmul fast float %7539, %7453
  %7559 = fadd fast float %7539, %7453
  %7560 = fmul fast float %7559, %7493
  %7561 = fsub fast float %7495, %7558
  %7562 = fadd fast float %7561, %7560
  %7563 = fdiv fast float %7562, %7557
  %7564 = fadd fast float %7563, %7552
  br label %7565

; <label>:7565                                    ; preds = %7555, %7551
  %7566 = phi float [ %7564, %7555 ], [ %7552, %7551 ]
  %7567 = fsub fast float %7453, %7539
  %7568 = fmul fast float %7567, %7554
  %7569 = fmul fast float %7539, %7538
  %7570 = fadd fast float %7539, %7538
  %7571 = fmul fast float %7570, %7493
  %7572 = fadd fast float %7569, %7494
  %7573 = fsub fast float %7572, %7571
  %7574 = fdiv fast float %7573, %7568
  %7575 = call float @dx.op.unary.f32(i32 7, float %7566)  ; Saturate(value)
  %7576 = fcmp fast oeq float %6250, 0.000000e+00
  %7577 = extractvalue %dx.types.CBufRet.f32 %7361, 0
  %7578 = fcmp fast oeq float %7577, 0.000000e+00
  %7579 = or i1 %7576, %7578
  %7580 = fmul fast float %7577, 2.000000e+00
  %7581 = fadd fast float %7362, %7363
  %7582 = fdiv fast float %7581, %7580
  %7583 = call float @dx.op.unary.f32(i32 7, float %7582)  ; Saturate(value)
  %7584 = fmul fast float %7583, 2.000000e+00
  %7585 = fsub fast float 3.000000e+00, %7584
  %7586 = fmul fast float %7583, %7583
  %7587 = fmul fast float %7586, %7585
  %7588 = select i1 %7579, float 1.000000e+00, float %7587
  %7589 = fmul fast float %7574, %6250
  %7590 = fadd fast float %7575, %7589
  %7591 = call float @dx.op.unary.f32(i32 7, float %7590)  ; Saturate(value)
  %7592 = fmul fast float %7588, %7591
  br label %7593

; <label>:7593                                    ; preds = %7565, %7445
  %7594 = phi float [ %7592, %7565 ], [ 0.000000e+00, %7445 ]
  %7595 = fsub fast float 1.000000e+00, %7594
  %7596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %64, float %7315, float %7316, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7597 = extractvalue %dx.types.ResRet.f32 %7596, 0
  %7598 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7599 = extractvalue %dx.types.CBufRet.i32 %7598, 2
  %7600 = icmp eq i32 %7599, 0
  br i1 %7600, label %7606, label %7601

; <label>:7601                                    ; preds = %7593
  %7602 = call float @dx.op.unary.f32(i32 7, float %7594)  ; Saturate(value)
  %7603 = fadd fast float %7597, -1.000000e+00
  %7604 = fmul fast float %7602, %7603
  %7605 = fadd fast float %7604, 1.000000e+00
  br label %7606

; <label>:7606                                    ; preds = %7601, %7593
  %7607 = phi float [ %7605, %7601 ], [ %7595, %7593 ]
  br i1 %7369, label %7608, label %7626

; <label>:7608                                    ; preds = %7606
  %7609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7610 = extractvalue %dx.types.CBufRet.f32 %7609, 1
  %7611 = fsub fast float %7446, %7610
  %7612 = call float @dx.op.unary.f32(i32 7, float %7611)  ; Saturate(value)
  %7613 = fsub fast float %7446, %7368
  %7614 = call float @dx.op.unary.f32(i32 7, float %7613)  ; Saturate(value)
  %7615 = fsub fast float %7612, %7614
  %7616 = fsub fast float %7448, %7614
  %7617 = fdiv fast float %7616, %7615
  %7618 = call float @dx.op.unary.f32(i32 7, float %7617)  ; Saturate(value)
  %7619 = fmul fast float %7618, 2.000000e+00
  %7620 = fsub fast float 3.000000e+00, %7619
  %7621 = fsub fast float %7597, %7607
  %7622 = fmul fast float %7618, %7618
  %7623 = fmul fast float %7622, %7621
  %7624 = fmul fast float %7623, %7620
  %7625 = fadd fast float %7624, %7607
  br label %7626

; <label>:7626                                    ; preds = %7608, %7606
  %7627 = phi float [ %7625, %7608 ], [ %7607, %7606 ]
  %7628 = call float @dx.op.binary.f32(i32 35, float %7597, float %7627)  ; FMax(a,b)
  %7629 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7630 = extractvalue %dx.types.CBufRet.i32 %7629, 2
  %7631 = and i32 %7630, 1
  %7632 = icmp eq i32 %7631, 0
  %7633 = fcmp fast une float %7628, 1.000000e+00
  %7634 = and i1 %7633, %7632
  br i1 %7634, label %7635, label %7654

; <label>:7635                                    ; preds = %7626
  %7636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %64, float %7315, float %7316, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7637 = extractvalue %dx.types.ResRet.f32 %7636, 0
  %7638 = extractvalue %dx.types.ResRet.f32 %7636, 1
  %7639 = extractvalue %dx.types.ResRet.f32 %7636, 2
  %7640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7641 = extractvalue %dx.types.CBufRet.f32 %7640, 1
  %7642 = fmul fast float %7641, %7637
  %7643 = fmul fast float %7641, %7638
  %7644 = fmul fast float %7641, %7639
  %7645 = fcmp fast ogt float %7597, 0x3FEFFF2E40000000
  %7646 = fsub fast float 1.000000e+00, %7628
  %7647 = fsub fast float 1.000000e+00, %7597
  %7648 = fdiv fast float %7646, %7647
  %7649 = call float @dx.op.unary.f32(i32 7, float %7648)  ; Saturate(value)
  %7650 = select i1 %7645, float 0.000000e+00, float %7649
  %7651 = fmul fast float %7642, %7650
  %7652 = fmul fast float %7643, %7650
  %7653 = fmul fast float %7644, %7650
  br label %7654

; <label>:7654                                    ; preds = %7635, %7626
  %7655 = phi float [ 0.000000e+00, %7626 ], [ %7651, %7635 ]
  %7656 = phi float [ 0.000000e+00, %7626 ], [ %7652, %7635 ]
  %7657 = phi float [ 0.000000e+00, %7626 ], [ %7653, %7635 ]
  %7658 = fmul fast float %7628, %7290
  %7659 = call float @dx.op.dot3.f32(i32 55, float %7628, float %7628, float %7628, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7660 = call float @dx.op.dot3.f32(i32 55, float %7655, float %7656, float %7657, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7661 = select i1 %240, float %7659, float %7628
  %7662 = select i1 %240, float 1.000000e+00, float %7628
  %7663 = select i1 %240, float %7660, float %7655
  %7664 = select i1 %240, float 0.000000e+00, float %7656
  %7665 = select i1 %240, float 0.000000e+00, float %7657
  %7666 = fmul fast float %7661, %7302
  %7667 = fmul fast float %7661, %7303
  %7668 = fmul fast float %7662, %7304
  %7669 = fadd fast float %7666, %7663
  %7670 = fadd fast float %7667, %7664
  %7671 = fadd fast float %7665, %7668
  %7672 = fmul fast float %7661, %7305
  %7673 = fmul fast float %7661, %7306
  %7674 = fmul fast float %7662, %7307
  br label %7675

; <label>:7675                                    ; preds = %7654, %7311, %7283, %6515
  %7676 = phi float [ %6520, %6515 ], [ %7302, %7283 ], [ %7669, %7654 ], [ %7302, %7311 ]
  %7677 = phi float [ %6521, %6515 ], [ %7303, %7283 ], [ %7670, %7654 ], [ %7303, %7311 ]
  %7678 = phi float [ %6522, %6515 ], [ %7304, %7283 ], [ %7671, %7654 ], [ %7304, %7311 ]
  %7679 = phi float [ %6523, %6515 ], [ %7305, %7283 ], [ %7672, %7654 ], [ %7305, %7311 ]
  %7680 = phi float [ %6524, %6515 ], [ %7306, %7283 ], [ %7673, %7654 ], [ %7306, %7311 ]
  %7681 = phi float [ %6525, %6515 ], [ %7307, %7283 ], [ %7674, %7654 ], [ %7307, %7311 ]
  %7682 = phi float [ %6526, %6515 ], [ %7290, %7283 ], [ %7658, %7654 ], [ %7290, %7311 ]
  %7683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7684 = extractvalue %dx.types.CBufRet.f32 %7683, 2
  %7685 = extractvalue %dx.types.CBufRet.f32 %7683, 3
  %7686 = fmul fast float %7684, %100
  %7687 = fmul fast float %7685, %101
  %7688 = call float @dx.op.unary.f32(i32 7, float %7686)  ; Saturate(value)
  %7689 = call float @dx.op.unary.f32(i32 7, float %7687)  ; Saturate(value)
  %7690 = select i1 %6260, i32 2, i32 0
  %7691 = or i32 %7690, 1
  %7692 = uitofp i32 %7691 to float
  %7693 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7688, float %7689, float %7692, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7694 = extractvalue %dx.types.ResRet.f32 %7693, 0
  %7695 = extractvalue %dx.types.ResRet.f32 %7693, 1
  %7696 = extractvalue %dx.types.ResRet.f32 %7693, 2
  %7697 = extractvalue %dx.types.ResRet.f32 %7693, 3
  %7698 = add nuw nsw i32 %7690, 2
  %7699 = uitofp i32 %7698 to float
  %7700 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7688, float %7689, float %7699, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7701 = extractvalue %dx.types.ResRet.f32 %7700, 0
  %7702 = extractvalue %dx.types.ResRet.f32 %7700, 1
  %7703 = extractvalue %dx.types.ResRet.f32 %7700, 2
  %7704 = extractvalue %dx.types.ResRet.f32 %7700, 3
  %7705 = call float @dx.op.binary.f32(i32 35, float %7695, float %7696)  ; FMax(a,b)
  %7706 = call float @dx.op.binary.f32(i32 35, float %7694, float %7705)  ; FMax(a,b)
  %7707 = call float @dx.op.binary.f32(i32 35, float %7706, float %7697)  ; FMax(a,b)
  %7708 = call float @dx.op.binary.f32(i32 36, float %7702, float %7703)  ; FMin(a,b)
  %7709 = call float @dx.op.binary.f32(i32 36, float %7701, float %7708)  ; FMin(a,b)
  %7710 = call float @dx.op.binary.f32(i32 36, float %7709, float %7704)  ; FMin(a,b)
  %7711 = fmul fast float %7707, 2.550000e+02
  %7712 = fadd fast float %7711, 0x3F70101020000000
  %7713 = fptoui float %7712 to i32
  %7714 = fmul fast float %7710, 2.550000e+02
  %7715 = fadd fast float %7714, 0x3F70101020000000
  %7716 = fptoui float %7715 to i32
  %7717 = icmp ult i32 %7713, %7716
  br i1 %7717, label %7718, label %7887

; <label>:7718                                    ; preds = %7675
  %7719 = fcmp fast ogt float %87, 9.843750e-01
  %7720 = fadd fast float %6519, -4.000000e+00
  %7721 = select i1 %7719, float -4.000000e+00, float %7720
  %7722 = call float @dx.op.binary.f32(i32 35, float %7721, float 0.000000e+00)  ; FMax(a,b)
  %7723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7724 = extractvalue %dx.types.CBufRet.f32 %7723, 0
  %7725 = fadd fast float %7724, %7722
  %7726 = extractvalue %dx.types.CBufRet.f32 %7723, 2
  %7727 = fmul fast float %7725, %7726
  %7728 = call float @dx.op.unary.f32(i32 23, float %7727)  ; Log(value)
  %7729 = extractvalue %dx.types.CBufRet.f32 %7723, 3
  %7730 = fmul fast float %7729, %7728
  %7731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7732 = extractvalue %dx.types.CBufRet.f32 %7731, 2
  %7733 = fmul fast float %7730, %7732
  %7734 = call float @dx.op.unary.f32(i32 7, float %7733)  ; Saturate(value)
  %7735 = uitofp i32 %7713 to float
  %7736 = uitofp i32 %7716 to float
  %7737 = fadd fast float %7735, 5.000000e-01
  %7738 = fadd fast float %7736, 5.000000e-01
  %7739 = fmul fast float %7732, %7737
  %7740 = fmul fast float %7732, %7738
  %7741 = fadd fast float %7739, 0x3F0FFB4800000000
  %7742 = fadd fast float %7740, 0xBF0FFB4800000000
  %7743 = call float @dx.op.binary.f32(i32 35, float %7734, float %7741)  ; FMax(a,b)
  %7744 = call float @dx.op.binary.f32(i32 36, float %7743, float %7742)  ; FMin(a,b)
  %7745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7746 = extractvalue %dx.types.CBufRet.f32 %7745, 1
  %7747 = extractvalue %dx.types.CBufRet.f32 %7745, 2
  %7748 = extractvalue %dx.types.CBufRet.f32 %7745, 0
  %7749 = select i1 %6260, float %7748, float 0.000000e+00
  %7750 = fmul fast float %7746, %7744
  %7751 = fadd fast float %7749, %7750
  %7752 = fadd fast float %7749, %7747
  %7753 = fsub fast float %7746, %7747
  %7754 = fadd fast float %7753, %7749
  %7755 = call float @dx.op.binary.f32(i32 35, float %7751, float %7752)  ; FMax(a,b)
  %7756 = call float @dx.op.binary.f32(i32 36, float %7755, float %7754)  ; FMin(a,b)
  %7757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %7688, float %7689, float %7756, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7758 = extractvalue %dx.types.ResRet.f32 %7757, 0
  %7759 = extractvalue %dx.types.ResRet.f32 %7757, 1
  %7760 = extractvalue %dx.types.ResRet.f32 %7757, 2
  %7761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7762 = extractvalue %dx.types.CBufRet.i32 %7761, 0
  %7763 = extractvalue %dx.types.CBufRet.i32 %7761, 1
  %7764 = uitofp i32 %7762 to float
  %7765 = uitofp i32 %7763 to float
  %7766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7767 = extractvalue %dx.types.CBufRet.f32 %7766, 0
  %7768 = extractvalue %dx.types.CBufRet.f32 %7766, 1
  %7769 = fmul fast float %7764, %7688
  %7770 = fmul fast float %7765, %7689
  %7771 = fadd fast float %7769, -5.000000e-01
  %7772 = fadd fast float %7770, -5.000000e-01
  %7773 = call float @dx.op.unary.f32(i32 22, float %7771)  ; Frc(value)
  %7774 = call float @dx.op.unary.f32(i32 22, float %7772)  ; Frc(value)
  %7775 = fmul fast float %7773, %7773
  %7776 = fmul fast float %7775, %7773
  %7777 = fsub fast float 3.000000e+00, %7773
  %7778 = fmul fast float %7775, %7777
  %7779 = fmul fast float %7773, 3.000000e+00
  %7780 = fmul fast float %7776, 3.000000e+00
  %7781 = fmul fast float %7775, 6.000000e+00
  %7782 = fsub fast float %7780, %7781
  %7783 = fadd fast float %7782, 4.000000e+00
  %7784 = fmul fast float %7783, 0x3FC5555560000000
  %7785 = fmul fast float %7776, -3.000000e+00
  %7786 = fadd fast float %7775, %7773
  %7787 = fmul fast float %7786, 3.000000e+00
  %7788 = fadd fast float %7785, 1.000000e+00
  %7789 = fadd fast float %7788, %7787
  %7790 = fmul fast float %7776, 0x3FC5555560000000
  %7791 = fmul fast float %7774, %7774
  %7792 = fmul fast float %7791, %7774
  %7793 = fsub fast float 3.000000e+00, %7774
  %7794 = fmul fast float %7791, %7793
  %7795 = fmul fast float %7774, 3.000000e+00
  %7796 = fmul fast float %7792, 3.000000e+00
  %7797 = fmul fast float %7791, 6.000000e+00
  %7798 = fsub fast float %7796, %7797
  %7799 = fadd fast float %7798, 4.000000e+00
  %7800 = fmul fast float %7799, 0x3FC5555560000000
  %7801 = fmul fast float %7792, -3.000000e+00
  %7802 = fadd fast float %7791, %7774
  %7803 = fmul fast float %7802, 3.000000e+00
  %7804 = fadd fast float %7801, 1.000000e+00
  %7805 = fadd fast float %7804, %7803
  %7806 = fmul fast float %7792, 0x3FC5555560000000
  %7807 = fadd fast float %7773, 1.000000e+00
  %7808 = fsub fast float 1.000000e+00, %7779
  %7809 = fadd fast float %7808, %7778
  %7810 = fadd fast float %7809, %7783
  %7811 = fmul fast float %7810, 0x3FC5555560000000
  %7812 = fdiv fast float %7784, %7811
  %7813 = fsub fast float %7807, %7812
  %7814 = fsub fast float 1.000000e+00, %7773
  %7815 = fadd fast float %7789, %7776
  %7816 = fmul fast float %7815, 0x3FC5555560000000
  %7817 = fdiv fast float %7790, %7816
  %7818 = fadd fast float %7814, %7817
  %7819 = fadd fast float %7774, 1.000000e+00
  %7820 = fsub fast float 1.000000e+00, %7795
  %7821 = fadd fast float %7820, %7794
  %7822 = fadd fast float %7821, %7799
  %7823 = fmul fast float %7822, 0x3FC5555560000000
  %7824 = fdiv fast float %7800, %7823
  %7825 = fsub fast float %7819, %7824
  %7826 = fsub fast float 1.000000e+00, %7774
  %7827 = fadd fast float %7805, %7792
  %7828 = fmul fast float %7827, 0x3FC5555560000000
  %7829 = fdiv fast float %7806, %7828
  %7830 = fadd fast float %7829, %7826
  %7831 = fmul fast float %7813, %7767
  %7832 = fsub fast float %7688, %7831
  %7833 = fmul fast float %7818, %7767
  %7834 = fadd fast float %7833, %7688
  %7835 = fmul fast float %7830, %7768
  %7836 = fadd fast float %7835, %7689
  %7837 = fmul fast float %7825, %7768
  %7838 = fsub fast float %7689, %7837
  %7839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7832, float %7838, float %7756, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7840 = extractvalue %dx.types.ResRet.f32 %7839, 0
  %7841 = extractvalue %dx.types.ResRet.f32 %7839, 1
  %7842 = extractvalue %dx.types.ResRet.f32 %7839, 2
  %7843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7834, float %7838, float %7756, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7844 = extractvalue %dx.types.ResRet.f32 %7843, 0
  %7845 = extractvalue %dx.types.ResRet.f32 %7843, 1
  %7846 = extractvalue %dx.types.ResRet.f32 %7843, 2
  %7847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7832, float %7836, float %7756, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7848 = extractvalue %dx.types.ResRet.f32 %7847, 0
  %7849 = extractvalue %dx.types.ResRet.f32 %7847, 1
  %7850 = extractvalue %dx.types.ResRet.f32 %7847, 2
  %7851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7834, float %7836, float %7756, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7852 = extractvalue %dx.types.ResRet.f32 %7851, 0
  %7853 = extractvalue %dx.types.ResRet.f32 %7851, 1
  %7854 = extractvalue %dx.types.ResRet.f32 %7851, 2
  %7855 = fsub fast float %7848, %7840
  %7856 = fsub fast float %7849, %7841
  %7857 = fsub fast float %7850, %7842
  %7858 = fmul fast float %7855, %7828
  %7859 = fmul fast float %7856, %7828
  %7860 = fmul fast float %7857, %7828
  %7861 = fadd fast float %7858, %7840
  %7862 = fadd fast float %7859, %7841
  %7863 = fadd fast float %7860, %7842
  %7864 = fsub fast float %7852, %7844
  %7865 = fsub fast float %7853, %7845
  %7866 = fsub fast float %7854, %7846
  %7867 = fmul fast float %7864, %7828
  %7868 = fmul fast float %7865, %7828
  %7869 = fmul fast float %7866, %7828
  %7870 = fsub fast float %7844, %7861
  %7871 = fadd fast float %7870, %7867
  %7872 = fsub fast float %7845, %7862
  %7873 = fadd fast float %7872, %7868
  %7874 = fsub fast float %7846, %7863
  %7875 = fadd fast float %7874, %7869
  %7876 = fmul fast float %7871, %7816
  %7877 = fmul fast float %7873, %7816
  %7878 = fmul fast float %7875, %7816
  %7879 = fadd fast float %7876, %7861
  %7880 = fadd fast float %7877, %7862
  %7881 = fadd fast float %7878, %7863
  %7882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7883 = extractvalue %dx.types.CBufRet.f32 %7882, 1
  %7884 = fmul fast float %7879, %7883
  %7885 = fmul fast float %7880, %7883
  %7886 = fmul fast float %7881, %7883
  br label %7887

; <label>:7887                                    ; preds = %7718, %7675
  %7888 = phi float [ %7758, %7718 ], [ 1.000000e+00, %7675 ]
  %7889 = phi float [ %7759, %7718 ], [ 1.000000e+00, %7675 ]
  %7890 = phi float [ %7760, %7718 ], [ 1.000000e+00, %7675 ]
  %7891 = phi float [ %7884, %7718 ], [ 0.000000e+00, %7675 ]
  %7892 = phi float [ %7885, %7718 ], [ 0.000000e+00, %7675 ]
  %7893 = phi float [ %7886, %7718 ], [ 0.000000e+00, %7675 ]
  %7894 = fmul fast float %7888, %7682
  %7895 = call float @dx.op.dot3.f32(i32 55, float %7888, float %7889, float %7890, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7896 = call float @dx.op.dot3.f32(i32 55, float %7891, float %7892, float %7893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7897 = select i1 %240, float %7895, float %7888
  %7898 = select i1 %240, float %7895, float %7889
  %7899 = select i1 %240, float 1.000000e+00, float %7890
  %7900 = select i1 %240, float %7896, float %7891
  %7901 = select i1 %240, float 0.000000e+00, float %7892
  %7902 = select i1 %240, float 0.000000e+00, float %7893
  %7903 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7904 = extractvalue %dx.types.CBufRet.i32 %7903, 3
  %7905 = and i32 %7904, 3
  %7906 = icmp ne i32 %7905, 0
  %7907 = and i32 %7904, 4
  %7908 = icmp ne i32 %7907, 0
  %7909 = and i1 %7906, %7908
  %7910 = and i1 %240, %7909
  br i1 %7910, label %7911, label %7917

; <label>:7911                                    ; preds = %7887
  %7912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7913 = extractvalue %dx.types.CBufRet.f32 %7912, 1
  %7914 = fadd fast float %7894, -1.000000e+00
  %7915 = fmul fast float %7913, %7914
  %7916 = fadd fast float %7915, 1.000000e+00
  br label %7917

; <label>:7917                                    ; preds = %7911, %7887
  %7918 = phi float [ %7916, %7911 ], [ %7894, %7887 ]
  %7919 = fadd fast float %7679, %7676
  %7920 = fmul fast float %7897, %7919
  %7921 = fadd fast float %7920, %7900
  %7922 = fadd fast float %7680, %7677
  %7923 = fmul fast float %7898, %7922
  %7924 = fadd fast float %7923, %7901
  %7925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7926 = extractvalue %dx.types.CBufRet.f32 %7925, 0
  br i1 %240, label %7927, label %7942

; <label>:7927                                    ; preds = %7917
  %7928 = fadd fast float %7921, %7924
  %7929 = fmul fast float %7926, %7928
  %7930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7931 = extractvalue %dx.types.CBufRet.f32 %7930, 3
  %7932 = extractvalue %dx.types.CBufRet.f32 %6242, 1
  %7933 = fsub fast float %6247, %6241
  %7934 = fadd fast float %7933, %6248
  %7935 = fsub fast float %7934, %7932
  %7936 = extractvalue %dx.types.CBufRet.f32 %6242, 2
  %7937 = fmul fast float %7935, %7936
  %7938 = call float @dx.op.unary.f32(i32 7, float %7937)  ; Saturate(value)
  %7939 = fsub fast float %7938, %7931
  %7940 = fmul fast float %7939, %7918
  %7941 = fadd fast float %7940, %7931
  br label %7966

; <label>:7942                                    ; preds = %7917
  %7943 = fadd fast float %7681, %7678
  %7944 = fmul fast float %7899, %7943
  %7945 = fadd fast float %7944, %7902
  %7946 = fmul fast float %7926, %7921
  %7947 = fmul fast float %7926, %7924
  %7948 = fmul fast float %7926, %7945
  %7949 = call float @dx.op.binary.f32(i32 35, float %7947, float %7948)  ; FMax(a,b)
  %7950 = call float @dx.op.binary.f32(i32 35, float %7946, float %7949)  ; FMax(a,b)
  %7951 = call float @dx.op.binary.f32(i32 35, float %7950, float 1.000000e+00)  ; FMax(a,b)
  %7952 = fcmp fast ugt float %7951, 0x3F10000000000000
  br i1 %7952, label %7954, label %7953

; <label>:7953                                    ; preds = %7942
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7954

; <label>:7954                                    ; preds = %7953, %7942
  %7955 = add i32 %71, 132
  %7956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %59, i32 %7955, i32 undef)  ; BufferLoad(srv,index,wot)
  %7957 = extractvalue %dx.types.ResRet.i32 %7956, 0
  %7958 = and i32 %7957, 32
  %7959 = icmp eq i32 %7958, 0
  br i1 %7959, label %7966, label %7960

; <label>:7960                                    ; preds = %7954
  %7961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7962 = extractvalue %dx.types.CBufRet.f32 %7961, 0
  %7963 = fmul fast float %7962, 0x3FE99999A0000000
  %7964 = fadd fast float %7962, %7946
  %7965 = fadd fast float %7963, %7948
  br label %7966

; <label>:7966                                    ; preds = %7960, %7954, %7927
  %7967 = phi float [ %7929, %7927 ], [ %7964, %7960 ], [ %7946, %7954 ]
  %7968 = phi float [ %7941, %7927 ], [ %7947, %7960 ], [ %7947, %7954 ]
  %7969 = phi float [ 1.000000e+00, %7927 ], [ %7965, %7960 ], [ %7948, %7954 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7970 = call float @dx.op.binary.f32(i32 36, float %7967, float 3.225500e+04)  ; FMin(a,b)
  %7971 = call float @dx.op.binary.f32(i32 36, float %7968, float 3.225500e+04)  ; FMin(a,b)
  %7972 = call float @dx.op.binary.f32(i32 36, float %7969, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7970)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7971)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7972)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!83 = !{[28 x i32] [i32 26, i32 4, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!84 = !{void ()* @ps_main, !"ps_main", !85, !4, !103}
!85 = !{!86, !101, null}
!86 = !{!87, !90, !92, !94, !96, !97, !98, !99, !100}
!87 = !{i32 0, !"SV_Position", i8 9, i8 3, !88, i8 4, i32 1, i8 4, i32 0, i8 0, !89}
!88 = !{i32 0}
!89 = !{i32 3, i32 15}
!90 = !{i32 1, !"COLOR", i8 9, i8 0, !88, i8 2, i32 1, i8 4, i32 1, i8 0, !91}
!91 = !{i32 3, i32 1}
!92 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !88, i8 2, i32 1, i8 2, i32 2, i8 0, !93}
!93 = !{i32 3, i32 3}
!94 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !88, i8 2, i32 1, i8 3, i32 3, i8 0, !95}
!95 = !{i32 3, i32 7}
!96 = !{i32 4, !"NORMAL", i8 9, i8 0, !88, i8 2, i32 1, i8 3, i32 4, i8 0, !95}
!97 = !{i32 5, !"TANGENT", i8 9, i8 0, !88, i8 2, i32 1, i8 4, i32 5, i8 0, !89}
!98 = !{i32 6, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !88, i8 1, i32 1, i8 1, i32 6, i8 0, !91}
!99 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !88, i8 1, i32 1, i8 1, i32 6, i8 1, !91}
!100 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !88, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!101 = !{!102}
!102 = !{i32 0, !"SV_Target", i8 9, i8 16, !88, i8 0, i32 1, i8 4, i32 0, i8 0, !89}
!103 = !{i32 0, i64 16}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !113}
!113 = !{!"llvm.loop.unroll.disable"}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
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
!136 = distinct !{!136, !113}
!137 = distinct !{!137, !113}
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

