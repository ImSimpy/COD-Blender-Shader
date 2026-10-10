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
; shader hash: 1b0048d5a16883a32280dabcf86d0092
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
  br i1 %325, label %1020, label %326

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
  %954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = and i32 %955, 10240
  %957 = icmp eq i32 %956, 0
  br i1 %957, label %1002, label %958

; <label>:958                                     ; preds = %950
  %959 = add i32 %73, 224
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = add i32 %961, 0
  %963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %964 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %963, %dx.types.Handle %99, float %417, float %418, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %965 = extractvalue %dx.types.ResRet.f32 %964, 1
  %966 = extractvalue %dx.types.ResRet.f32 %964, 3
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = and i32 %968, 1048576
  %970 = icmp ne i32 %969, 0
  %971 = and i32 %968, 8192
  %972 = icmp eq i32 %971, 0
  br i1 %972, label %988, label %973

; <label>:973                                     ; preds = %958
  %974 = extractvalue %dx.types.ResRet.f32 %964, 2
  %975 = select i1 %970, float %974, float %965
  %976 = extractvalue %dx.types.ResRet.f32 %964, 0
  %977 = select i1 %970, float %976, float %965
  %978 = add i32 %73, 48
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = lshr i32 %980, 16
  %982 = and i32 %981, 255
  %983 = uitofp i32 %982 to float
  %984 = fmul fast float %983, 0x3F80101020000000
  %985 = fmul fast float %984, %977
  %986 = fmul fast float %984, %965
  %987 = fmul fast float %984, %975
  br label %988

; <label>:988                                     ; preds = %973, %958
  %989 = phi float [ %985, %973 ], [ 0.000000e+00, %958 ]
  %990 = phi float [ %986, %973 ], [ 0.000000e+00, %958 ]
  %991 = phi float [ %987, %973 ], [ 0.000000e+00, %958 ]
  %992 = and i32 %968, 2048
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %1002, label %994

; <label>:994                                     ; preds = %988
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = shl i32 %996, 4
  %998 = and i32 %997, 32752
  %999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %998)  ; LegacyF16ToF32(value)
  %1000 = fmul fast float %999, %966
  %1001 = call float @dx.op.binary.f32(i32 35, float %1000, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1002

; <label>:1002                                    ; preds = %994, %988, %950
  %1003 = phi float [ %989, %994 ], [ %989, %988 ], [ 0.000000e+00, %950 ]
  %1004 = phi float [ %990, %994 ], [ %990, %988 ], [ 0.000000e+00, %950 ]
  %1005 = phi float [ %991, %994 ], [ %991, %988 ], [ 0.000000e+00, %950 ]
  %1006 = phi float [ %1001, %994 ], [ 0x3F70101020000000, %988 ], [ 0x3F70101020000000, %950 ]
  %1007 = add i32 %73, 48
  %1008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1007, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 0
  %1010 = and i32 %1009, 255
  %1011 = uitofp i32 %1010 to float
  %1012 = lshr i32 %1009, 8
  %1013 = and i32 %1012, 255
  %1014 = uitofp i32 %1013 to float
  %1015 = call float @dx.op.dot3.f32(i32 55, float %823, float %824, float %825, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1016 = fmul fast float %1014, %1015
  %1017 = fadd fast float %1016, %1011
  %1018 = fmul fast float %1017, 0x3F70101020000000
  %1019 = call float @dx.op.unary.f32(i32 7, float %1018)  ; Saturate(value)
  br label %1020

; <label>:1020                                    ; preds = %1002, %316
  %1021 = phi float [ 0.000000e+00, %316 ], [ %904, %1002 ]
  %1022 = phi float [ 0.000000e+00, %316 ], [ %905, %1002 ]
  %1023 = phi float [ 0.000000e+00, %316 ], [ %823, %1002 ]
  %1024 = phi float [ 0.000000e+00, %316 ], [ %824, %1002 ]
  %1025 = phi float [ 0.000000e+00, %316 ], [ %825, %1002 ]
  %1026 = phi float [ 0.000000e+00, %316 ], [ %951, %1002 ]
  %1027 = phi float [ 0.000000e+00, %316 ], [ %952, %1002 ]
  %1028 = phi float [ 0.000000e+00, %316 ], [ %953, %1002 ]
  %1029 = phi float [ 0.000000e+00, %316 ], [ %1003, %1002 ]
  %1030 = phi float [ 0.000000e+00, %316 ], [ %1004, %1002 ]
  %1031 = phi float [ 0.000000e+00, %316 ], [ %1005, %1002 ]
  %1032 = phi float [ 0.000000e+00, %316 ], [ %809, %1002 ]
  %1033 = phi float [ 0.000000e+00, %316 ], [ %605, %1002 ]
  %1034 = phi float [ 0.000000e+00, %316 ], [ %903, %1002 ]
  %1035 = phi float [ 0.000000e+00, %316 ], [ %906, %1002 ]
  %1036 = phi float [ 0.000000e+00, %316 ], [ %1006, %1002 ]
  %1037 = phi float [ 0.000000e+00, %316 ], [ %1019, %1002 ]
  %1038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1039 = extractvalue %dx.types.CBufRet.f32 %1038, 0
  %1040 = call float @dx.op.dot2.f32(i32 54, float %1021, float %1022, float %1021, float %1022)  ; Dot2(ax,ay,bx,by)
  %1041 = fmul fast float %1040, 0x3FE3333340000000
  %1042 = fsub fast float 1.000000e+00, %1041
  %1043 = call float @dx.op.dot3.f32(i32 55, float %1021, float %1022, float %1042, float %1021, float %1022, float %1042)  ; Dot3(ax,ay,az,bx,by,bz)
  %1044 = call float @dx.op.unary.f32(i32 25, float %1043)  ; Rsqrt(value)
  %1045 = fmul fast float %1044, %1021
  %1046 = fmul fast float %1044, %1022
  %1047 = fmul fast float %1042, %1044
  %1048 = fmul fast float %1047, %105
  %1049 = fmul fast float %1047, %106
  %1050 = fmul fast float %1047, %107
  %1051 = fmul fast float %1045, %108
  %1052 = fmul fast float %1045, %109
  %1053 = fmul fast float %1045, %110
  %1054 = fadd fast float %1048, %1051
  %1055 = fadd fast float %1049, %1052
  %1056 = fadd fast float %1050, %1053
  %1057 = fmul fast float %1046, %121
  %1058 = fmul fast float %1046, %122
  %1059 = fmul fast float %1046, %123
  %1060 = fadd fast float %1054, %1057
  %1061 = fadd fast float %1055, %1058
  %1062 = fadd fast float %1056, %1059
  %1063 = call float @dx.op.dot3.f32(i32 55, float %1060, float %1061, float %1062, float %1060, float %1061, float %1062)  ; Dot3(ax,ay,az,bx,by,bz)
  %1064 = call float @dx.op.unary.f32(i32 25, float %1063)  ; Rsqrt(value)
  %1065 = fmul fast float %1060, %1064
  %1066 = fmul fast float %1061, %1064
  %1067 = fmul fast float %1062, %1064
  %1068 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %1069 = call float @dx.op.unary.f32(i32 83, float %158)  ; DerivCoarseX(value)
  %1070 = call float @dx.op.unary.f32(i32 83, float %159)  ; DerivCoarseX(value)
  %1071 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %1072 = call float @dx.op.unary.f32(i32 84, float %158)  ; DerivCoarseY(value)
  %1073 = call float @dx.op.unary.f32(i32 84, float %159)  ; DerivCoarseY(value)
  %1074 = fadd fast float %1068, %157
  %1075 = fadd fast float %1069, %158
  %1076 = fadd fast float %1070, %159
  %1077 = fadd fast float %1071, %157
  %1078 = fadd fast float %1072, %158
  %1079 = fadd fast float %1073, %159
  %1080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1081 = extractvalue %dx.types.CBufRet.f32 %1080, 0
  %1082 = extractvalue %dx.types.CBufRet.f32 %1080, 1
  %1083 = extractvalue %dx.types.CBufRet.f32 %1080, 2
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 2
  %1086 = extractvalue %dx.types.CBufRet.f32 %1084, 3
  %1087 = fmul fast float %1081, %102
  %1088 = fmul fast float %1087, %1085
  %1089 = fmul fast float %1082, %103
  %1090 = fmul fast float %1089, %1086
  %1091 = fptoui float %1088 to i32
  %1092 = fptoui float %1090 to i32
  %1093 = fadd fast float %1081, -1.000000e+00
  %1094 = fadd fast float %1082, -1.000000e+00
  %1095 = fptoui float %1093 to i32
  %1096 = fptoui float %1094 to i32
  %1097 = call i32 @dx.op.binary.i32(i32 40, i32 %1091, i32 %1095)  ; UMin(a,b)
  %1098 = call i32 @dx.op.binary.i32(i32 40, i32 %1092, i32 %1096)  ; UMin(a,b)
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 2
  %1101 = extractvalue %dx.types.CBufRet.f32 %1099, 3
  %1102 = fmul fast float %1100, %90
  %1103 = fsub fast float %1102, %1101
  %1104 = fadd fast float %1083, -1.000000e+00
  %1105 = call float @dx.op.binary.f32(i32 36, float %1103, float %1104)  ; FMin(a,b)
  %1106 = fptoui float %1105 to i32
  %1107 = fptoui float %1081 to i32
  %1108 = fptoui float %1082 to i32
  %1109 = mul i32 %1106, %1108
  %1110 = add i32 %1109, %1098
  %1111 = mul i32 %1110, %1107
  %1112 = add i32 %1111, %1097
  %1113 = shl i32 %1112, 2
  %1114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1113, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.i32 %1114, 0
  %1116 = and i32 %1115, 1023
  %1117 = lshr i32 %1115, 10
  %1118 = icmp eq i32 %1116, 0
  br i1 %1118, label %1597, label %1119

; <label>:1119                                    ; preds = %1020
  %1120 = and i32 %1115, 1023
  br label %1121

; <label>:1121                                    ; preds = %1251, %1119
  %1122 = phi float [ %1252, %1251 ], [ 0.000000e+00, %1119 ]
  %1123 = phi float [ %1253, %1251 ], [ %1033, %1119 ]
  %1124 = phi float [ %1254, %1251 ], [ %1039, %1119 ]
  %1125 = phi float [ %1255, %1251 ], [ %1037, %1119 ]
  %1126 = phi float [ %1256, %1251 ], [ 0.000000e+00, %1119 ]
  %1127 = phi float [ %1257, %1251 ], [ 0.000000e+00, %1119 ]
  %1128 = phi float [ %1258, %1251 ], [ %1029, %1119 ]
  %1129 = phi float [ %1259, %1251 ], [ %1030, %1119 ]
  %1130 = phi float [ %1260, %1251 ], [ %1031, %1119 ]
  %1131 = phi float [ %1261, %1251 ], [ %1026, %1119 ]
  %1132 = phi float [ %1262, %1251 ], [ %1027, %1119 ]
  %1133 = phi float [ %1263, %1251 ], [ %1028, %1119 ]
  %1134 = phi float [ %1264, %1251 ], [ %1065, %1119 ]
  %1135 = phi float [ %1265, %1251 ], [ %1066, %1119 ]
  %1136 = phi float [ %1266, %1251 ], [ %1067, %1119 ]
  %1137 = phi float [ %1267, %1251 ], [ %1035, %1119 ]
  %1138 = phi float [ %1268, %1251 ], [ %1034, %1119 ]
  %1139 = phi float [ %1269, %1251 ], [ 0.000000e+00, %1119 ]
  %1140 = phi float [ %1270, %1251 ], [ %1032, %1119 ]
  %1141 = phi float [ %1271, %1251 ], [ %1023, %1119 ]
  %1142 = phi float [ %1272, %1251 ], [ %1024, %1119 ]
  %1143 = phi float [ %1273, %1251 ], [ %1025, %1119 ]
  %1144 = phi i32 [ %1201, %1251 ], [ 0, %1119 ]
  %1145 = add nuw nsw i32 %1144, %1117
  %1146 = shl i32 %1145, 2
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = shl i32 %1148, 8
  %1150 = or i32 %1149, 48
  %1151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.f32 %1151, 0
  %1153 = extractvalue %dx.types.ResRet.f32 %1151, 1
  %1154 = extractvalue %dx.types.ResRet.f32 %1151, 2
  %1155 = extractvalue %dx.types.ResRet.f32 %1151, 3
  %1156 = or i32 %1149, 64
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = extractvalue %dx.types.ResRet.i32 %1157, 1
  %1160 = or i32 %1149, 80
  %1161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1160, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.f32 %1161, 2
  %1163 = extractvalue %dx.types.ResRet.f32 %1161, 3
  %1164 = or i32 %1149, 96
  %1165 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.f32 %1165, 0
  %1167 = extractvalue %dx.types.ResRet.f32 %1165, 1
  %1168 = extractvalue %dx.types.ResRet.f32 %1165, 2
  %1169 = extractvalue %dx.types.ResRet.f32 %1165, 3
  %1170 = or i32 %1149, 112
  %1171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.f32 %1171, 2
  %1173 = or i32 %1149, 128
  %1174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.f32 %1174, 0
  %1176 = extractvalue %dx.types.ResRet.f32 %1174, 1
  %1177 = extractvalue %dx.types.ResRet.f32 %1174, 2
  %1178 = extractvalue %dx.types.ResRet.f32 %1174, 3
  %1179 = or i32 %1149, 144
  %1180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1179, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.f32 %1180, 0
  %1182 = extractvalue %dx.types.ResRet.f32 %1180, 1
  %1183 = extractvalue %dx.types.ResRet.f32 %1180, 2
  %1184 = extractvalue %dx.types.ResRet.f32 %1180, 3
  %1185 = or i32 %1149, 160
  %1186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.f32 %1186, 0
  %1188 = extractvalue %dx.types.ResRet.f32 %1186, 1
  %1189 = extractvalue %dx.types.ResRet.f32 %1186, 2
  %1190 = extractvalue %dx.types.ResRet.f32 %1186, 3
  %1191 = or i32 %1149, 192
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = or i32 %1149, 208
  %1195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = or i32 %1149, 248
  %1198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = extractvalue %dx.types.ResRet.f32 %1198, 1
  %1201 = add nuw nsw i32 %1144, 1
  %1202 = bitcast float %1155 to i32
  %1203 = and i32 %1202, 2560
  %1204 = icmp eq i32 %1203, 0
  %1205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = extractvalue %dx.types.ResRet.f32 %1205, 1
  %1208 = extractvalue %dx.types.ResRet.f32 %1205, 2
  %1209 = extractvalue %dx.types.ResRet.f32 %1205, 3
  %1210 = call float @dx.op.dot4.f32(i32 56, float %1206, float %1207, float %1208, float %1209, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1211 = or i32 %1149, 16
  %1212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = extractvalue %dx.types.ResRet.f32 %1212, 1
  %1215 = extractvalue %dx.types.ResRet.f32 %1212, 2
  %1216 = extractvalue %dx.types.ResRet.f32 %1212, 3
  %1217 = call float @dx.op.dot4.f32(i32 56, float %1213, float %1214, float %1215, float %1216, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1218 = or i32 %1149, 32
  %1219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.f32 %1219, 0
  %1221 = extractvalue %dx.types.ResRet.f32 %1219, 1
  %1222 = extractvalue %dx.types.ResRet.f32 %1219, 2
  %1223 = extractvalue %dx.types.ResRet.f32 %1219, 3
  %1224 = call float @dx.op.dot4.f32(i32 56, float %1220, float %1221, float %1222, float %1223, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1225 = call float @dx.op.unary.f32(i32 27, float %1210)  ; Round_ni(value)
  %1226 = call float @dx.op.unary.f32(i32 6, float %1225)  ; FAbs(value)
  %1227 = call float @dx.op.unary.f32(i32 27, float %1217)  ; Round_ni(value)
  %1228 = call float @dx.op.unary.f32(i32 6, float %1227)  ; FAbs(value)
  %1229 = call float @dx.op.unary.f32(i32 6, float %1224)  ; FAbs(value)
  %1230 = call float @dx.op.unary.f32(i32 27, float %1229)  ; Round_ni(value)
  %1231 = fadd fast float %1228, %1226
  %1232 = fadd fast float %1231, %1230
  %1233 = fcmp fast oeq float %1232, 0.000000e+00
  %1234 = call float @dx.op.dot4.f32(i32 56, float %1206, float %1207, float %1208, float %1209, float %1074, float %1075, float %1076, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1235 = call float @dx.op.dot4.f32(i32 56, float %1213, float %1214, float %1215, float %1216, float %1074, float %1075, float %1076, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1236 = call float @dx.op.dot4.f32(i32 56, float %1206, float %1207, float %1208, float %1209, float %1077, float %1078, float %1079, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1237 = call float @dx.op.dot4.f32(i32 56, float %1213, float %1214, float %1215, float %1216, float %1077, float %1078, float %1079, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1238 = fsub fast float %1234, %1210
  %1239 = fsub fast float %1236, %1210
  %1240 = fsub fast float %1235, %1217
  %1241 = fsub fast float %1237, %1217
  %1242 = call float @dx.op.dot3.f32(i32 55, float %1152, float %1153, float %1154, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %1243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1244 = extractvalue %dx.types.CBufRet.f32 %1243, 2
  %1245 = fadd fast float %1244, %1242
  %1246 = call float @dx.op.unary.f32(i32 7, float %1245)  ; Saturate(value)
  %1247 = extractvalue %dx.types.CBufRet.f32 %1243, 0
  %1248 = fcmp fast ogt float %1246, %1247
  %1249 = and i1 %1233, %1248
  %1250 = and i1 %1204, %1249
  br i1 %1250, label %1275, label %1251

; <label>:1251                                    ; preds = %1583, %1356, %1275, %1121
  %1252 = phi float [ %1122, %1275 ], [ %1359, %1356 ], [ %1359, %1583 ], [ %1122, %1121 ]
  %1253 = phi float [ %1123, %1275 ], [ %1123, %1356 ], [ %1559, %1583 ], [ %1123, %1121 ]
  %1254 = phi float [ %1124, %1275 ], [ %1124, %1356 ], [ %1558, %1583 ], [ %1124, %1121 ]
  %1255 = phi float [ %1125, %1275 ], [ %1125, %1356 ], [ %1556, %1583 ], [ %1125, %1121 ]
  %1256 = phi float [ %1126, %1275 ], [ %1126, %1356 ], [ %1483, %1583 ], [ %1126, %1121 ]
  %1257 = phi float [ %1127, %1275 ], [ %1127, %1356 ], [ %1481, %1583 ], [ %1127, %1121 ]
  %1258 = phi float [ %1128, %1275 ], [ %1128, %1356 ], [ %1526, %1583 ], [ %1128, %1121 ]
  %1259 = phi float [ %1129, %1275 ], [ %1129, %1356 ], [ %1527, %1583 ], [ %1129, %1121 ]
  %1260 = phi float [ %1130, %1275 ], [ %1130, %1356 ], [ %1528, %1583 ], [ %1130, %1121 ]
  %1261 = phi float [ %1131, %1275 ], [ %1131, %1356 ], [ %1593, %1583 ], [ %1131, %1121 ]
  %1262 = phi float [ %1132, %1275 ], [ %1132, %1356 ], [ %1594, %1583 ], [ %1132, %1121 ]
  %1263 = phi float [ %1133, %1275 ], [ %1133, %1356 ], [ %1595, %1583 ], [ %1133, %1121 ]
  %1264 = phi float [ %1134, %1275 ], [ %1134, %1356 ], [ %1462, %1583 ], [ %1134, %1121 ]
  %1265 = phi float [ %1135, %1275 ], [ %1135, %1356 ], [ %1463, %1583 ], [ %1135, %1121 ]
  %1266 = phi float [ %1136, %1275 ], [ %1136, %1356 ], [ %1464, %1583 ], [ %1136, %1121 ]
  %1267 = phi float [ %1137, %1275 ], [ %1137, %1356 ], [ %1536, %1583 ], [ %1137, %1121 ]
  %1268 = phi float [ %1138, %1275 ], [ %1138, %1356 ], [ %1533, %1583 ], [ %1138, %1121 ]
  %1269 = phi float [ %1139, %1275 ], [ %1139, %1356 ], [ %1530, %1583 ], [ %1139, %1121 ]
  %1270 = phi float [ %1140, %1275 ], [ %1140, %1356 ], [ %1479, %1583 ], [ %1140, %1121 ]
  %1271 = phi float [ %1141, %1275 ], [ %1141, %1356 ], [ %1474, %1583 ], [ %1141, %1121 ]
  %1272 = phi float [ %1142, %1275 ], [ %1142, %1356 ], [ %1475, %1583 ], [ %1142, %1121 ]
  %1273 = phi float [ %1143, %1275 ], [ %1143, %1356 ], [ %1476, %1583 ], [ %1143, %1121 ]
  %1274 = icmp eq i32 %1201, %1120
  br i1 %1274, label %1596, label %1121

; <label>:1275                                    ; preds = %1121
  %1276 = extractvalue %dx.types.ResRet.f32 %1171, 3
  %1277 = extractvalue %dx.types.ResRet.f32 %1171, 1
  %1278 = extractvalue %dx.types.ResRet.f32 %1171, 0
  %1279 = extractvalue %dx.types.ResRet.f32 %1161, 1
  %1280 = extractvalue %dx.types.ResRet.f32 %1161, 0
  %1281 = extractvalue %dx.types.ResRet.i32 %1157, 3
  %1282 = extractvalue %dx.types.ResRet.i32 %1157, 2
  %1283 = add i32 %1281, 0
  %1284 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1283, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1285 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1286 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1284, %dx.types.Handle %1285, float %1210, float %1217, float undef, float undef, i32 0, i32 0, i32 undef, float %1238, float %1240, float undef, float %1239, float %1241, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1287 = extractvalue %dx.types.ResRet.f32 %1286, 0
  %1288 = fmul fast float %1287, %1280
  %1289 = fadd fast float %1288, %1279
  %1290 = call float @dx.op.unary.f32(i32 7, float %1289)  ; Saturate(value)
  %1291 = fmul fast float %1210, %1166
  %1292 = call float @dx.op.tertiary.f32(i32 46, float %1167, float %1217, float %1291)  ; FMad(a,b,c)
  %1293 = fadd fast float %1292, %1278
  %1294 = fmul fast float %1210, %1168
  %1295 = call float @dx.op.tertiary.f32(i32 46, float %1169, float %1217, float %1294)  ; FMad(a,b,c)
  %1296 = fadd fast float %1295, %1277
  %1297 = fmul fast float %1238, %1166
  %1298 = call float @dx.op.tertiary.f32(i32 46, float %1167, float %1240, float %1297)  ; FMad(a,b,c)
  %1299 = fmul fast float %1238, %1168
  %1300 = call float @dx.op.tertiary.f32(i32 46, float %1169, float %1240, float %1299)  ; FMad(a,b,c)
  %1301 = fmul fast float %1239, %1166
  %1302 = call float @dx.op.tertiary.f32(i32 46, float %1167, float %1241, float %1301)  ; FMad(a,b,c)
  %1303 = fmul fast float %1239, %1168
  %1304 = call float @dx.op.tertiary.f32(i32 46, float %1169, float %1241, float %1303)  ; FMad(a,b,c)
  %1305 = add i32 %1282, 0
  %1306 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1305, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1307 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1306, %dx.types.Handle %1285, float %1293, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float %1298, float %1300, float undef, float %1302, float %1304, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1308 = extractvalue %dx.types.ResRet.f32 %1307, 0
  %1309 = and i32 %1202, 1024
  %1310 = icmp ne i32 %1309, 0
  %1311 = fcmp fast ogt float %1308, 0x3FE0101020000000
  %1312 = uitofp i1 %1311 to float
  %1313 = select i1 %1310, float %1312, float %1308
  %1314 = and i32 %1202, 8192
  %1315 = icmp ne i32 %1314, 0
  %1316 = select i1 %1315, float %1276, float 1.000000e+00
  %1317 = fmul fast float %1210, 2.000000e+00
  %1318 = fadd fast float %1317, -1.000000e+00
  %1319 = call float @dx.op.unary.f32(i32 6, float %1318)  ; FAbs(value)
  %1320 = fmul fast float %1319, %1199
  %1321 = fsub fast float %1320, %1199
  %1322 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1323 = fmul fast float %1217, 2.000000e+00
  %1324 = fadd fast float %1323, -1.000000e+00
  %1325 = call float @dx.op.unary.f32(i32 6, float %1324)  ; FAbs(value)
  %1326 = fmul fast float %1325, %1200
  %1327 = fsub fast float %1326, %1200
  %1328 = call float @dx.op.unary.f32(i32 7, float %1327)  ; Saturate(value)
  %1329 = fmul fast float %1229, %1162
  %1330 = fsub fast float %1329, %1162
  %1331 = call float @dx.op.unary.f32(i32 7, float %1330)  ; Saturate(value)
  %1332 = fmul fast float %1290, %1316
  %1333 = fmul fast float %1332, %1287
  %1334 = fmul fast float %1333, %1322
  %1335 = fmul fast float %1334, %1313
  %1336 = fmul fast float %1335, %1328
  %1337 = fmul fast float %1336, %1331
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.f32 %1338, 1
  %1340 = extractvalue %dx.types.CBufRet.f32 %1338, 0
  %1341 = fsub fast float %1246, %1340
  %1342 = fmul fast float %1341, %1339
  %1343 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1344 = fmul fast float %1337, %1163
  %1345 = fadd fast float %1337, %1163
  %1346 = fmul fast float %1345, %1172
  %1347 = fsub fast float %1346, %1172
  %1348 = call float @dx.op.unary.f32(i32 7, float %1347)  ; Saturate(value)
  %1349 = and i32 %1202, 128
  %1350 = icmp ne i32 %1349, 0
  %1351 = select i1 %1350, float %1348, float %1344
  %1352 = fmul fast float %1351, %1343
  %1353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1354 = extractvalue %dx.types.CBufRet.f32 %1353, 0
  %1355 = fcmp fast ugt float %1352, %1354
  br i1 %1355, label %1356, label %1251

; <label>:1356                                    ; preds = %1275
  %1357 = select i1 %1315, float %1352, float 0.000000e+00
  %1358 = fadd fast float %1357, %1122
  %1359 = call float @dx.op.unary.f32(i32 7, float %1358)  ; Saturate(value)
  br i1 %1315, label %1251, label %1360

; <label>:1360                                    ; preds = %1356
  %1361 = and i32 %1202, 4
  %1362 = and i32 %1202, 8
  %1363 = add i32 %1158, 0
  %1364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1363, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1365 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1366 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1364, %dx.types.Handle %1365, float %1293, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float %1298, float %1300, float undef, float %1302, float %1304, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1367 = extractvalue %dx.types.ResRet.f32 %1366, 0
  %1368 = extractvalue %dx.types.ResRet.f32 %1366, 1
  %1369 = extractvalue %dx.types.ResRet.f32 %1366, 2
  %1370 = extractvalue %dx.types.ResRet.f32 %1366, 3
  %1371 = bitcast float %1184 to i32
  %1372 = and i32 %1371, 255
  %1373 = uitofp i32 %1372 to float
  %1374 = lshr i32 %1371, 8
  %1375 = and i32 %1374, 255
  %1376 = uitofp i32 %1375 to float
  %1377 = fmul fast float %1370, %1373
  %1378 = fadd fast float %1377, %1376
  %1379 = fmul fast float %1378, 0x3F70101000000000
  %1380 = add i32 %1159, 0
  %1381 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1380, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1382 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1381, %dx.types.Handle %1365, float %1293, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float %1298, float %1300, float undef, float %1302, float %1304, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1383 = extractvalue %dx.types.ResRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.ResRet.f32 %1382, 1
  %1385 = extractvalue %dx.types.ResRet.f32 %1382, 2
  %1386 = extractvalue %dx.types.ResRet.f32 %1382, 3
  %1387 = bitcast float %1178 to i32
  %1388 = and i32 %1387, 255
  %1389 = uitofp i32 %1388 to float
  %1390 = lshr i32 %1387, 8
  %1391 = and i32 %1390, 255
  %1392 = uitofp i32 %1391 to float
  %1393 = lshr i32 %1387, 16
  %1394 = and i32 %1393, 255
  %1395 = uitofp i32 %1394 to float
  %1396 = fmul fast float %1395, 0x3F70101000000000
  %1397 = fmul fast float %1383, %1389
  %1398 = fadd fast float %1397, %1392
  %1399 = fmul fast float %1398, 0x3F70101000000000
  %1400 = fadd fast float %1384, -5.000000e-01
  %1401 = fadd fast float %1386, -5.000000e-01
  %1402 = fmul fast float %1400, %1396
  %1403 = fmul fast float %1401, %1396
  %1404 = fadd fast float %1402, 5.000000e-01
  %1405 = fadd fast float %1403, 5.000000e-01
  %1406 = fmul fast float %1367, %1187
  %1407 = fmul fast float %1368, %1188
  %1408 = fmul fast float %1369, %1189
  %1409 = fmul fast float %1404, 2.000000e+00
  %1410 = fadd fast float %1409, -1.000000e+00
  %1411 = fmul fast float %1405, 2.000000e+00
  %1412 = fadd fast float %1411, -1.000000e+00
  %1413 = fadd fast float %1410, %1412
  %1414 = fmul fast float %1413, 5.000000e-01
  %1415 = fsub fast float %1410, %1412
  %1416 = fmul fast float %1415, 5.000000e-01
  %1417 = call float @dx.op.unary.f32(i32 6, float %1414)  ; FAbs(value)
  %1418 = fsub fast float 1.000000e+00, %1417
  %1419 = call float @dx.op.unary.f32(i32 6, float %1416)  ; FAbs(value)
  %1420 = fsub fast float %1418, %1419
  %1421 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1416, float %1420, float %1414, float %1416, float %1420)  ; Dot3(ax,ay,az,bx,by,bz)
  %1422 = call float @dx.op.unary.f32(i32 25, float %1421)  ; Rsqrt(value)
  %1423 = fmul fast float %1414, %1422
  %1424 = fmul fast float %1416, %1422
  %1425 = fmul fast float %1422, %1420
  %1426 = fmul fast float %1425, %1152
  %1427 = fmul fast float %1425, %1153
  %1428 = fmul fast float %1425, %1154
  %1429 = fmul fast float %1423, %1175
  %1430 = fmul fast float %1423, %1176
  %1431 = fmul fast float %1423, %1177
  %1432 = fadd fast float %1429, %1426
  %1433 = fadd fast float %1430, %1427
  %1434 = fadd fast float %1431, %1428
  %1435 = fmul fast float %1424, %1181
  %1436 = fmul fast float %1424, %1182
  %1437 = fmul fast float %1424, %1183
  %1438 = fadd fast float %1432, %1435
  %1439 = fadd fast float %1433, %1436
  %1440 = fadd fast float %1434, %1437
  %1441 = call float @dx.op.dot3.f32(i32 55, float %1438, float %1439, float %1440, float %1438, float %1439, float %1440)  ; Dot3(ax,ay,az,bx,by,bz)
  %1442 = call float @dx.op.unary.f32(i32 25, float %1441)  ; Rsqrt(value)
  %1443 = fmul fast float %1438, %1442
  %1444 = fmul fast float %1439, %1442
  %1445 = fmul fast float %1440, %1442
  %1446 = icmp ne i32 %1362, 0
  %1447 = select i1 %1446, float 1.000000e+00, float 0.000000e+00
  %1448 = fmul fast float %1352, %1447
  %1449 = and i32 %1202, 1
  %1450 = icmp eq i32 %1449, 0
  br i1 %1450, label %1451, label %1455

; <label>:1451                                    ; preds = %1360
  %1452 = fsub fast float %1443, %1134
  %1453 = fsub fast float %1444, %1135
  %1454 = fsub fast float %1445, %1136
  br label %1455

; <label>:1455                                    ; preds = %1451, %1360
  %1456 = phi float [ %1452, %1451 ], [ %1443, %1360 ]
  %1457 = phi float [ %1453, %1451 ], [ %1444, %1360 ]
  %1458 = phi float [ %1454, %1451 ], [ %1445, %1360 ]
  %1459 = fmul float %1458, %1448
  %1460 = fmul float %1457, %1448
  %1461 = fmul float %1456, %1448
  %1462 = fadd fast float %1461, %1134
  %1463 = fadd fast float %1460, %1135
  %1464 = fadd fast float %1459, %1136
  %1465 = icmp ne i32 %1361, 0
  %1466 = select i1 %1465, float 1.000000e+00, float 0.000000e+00
  %1467 = fmul fast float %1352, %1466
  %1468 = fsub fast float %1406, %1141
  %1469 = fsub fast float %1407, %1142
  %1470 = fsub fast float %1408, %1143
  %1471 = fmul fast float %1468, %1467
  %1472 = fmul fast float %1469, %1467
  %1473 = fmul fast float %1470, %1467
  %1474 = fadd fast float %1471, %1141
  %1475 = fadd fast float %1472, %1142
  %1476 = fadd fast float %1473, %1143
  %1477 = fsub fast float %1379, %1140
  %1478 = fmul fast float %1477, %1467
  %1479 = fadd fast float %1478, %1140
  %1480 = fmul fast float %1467, %1127
  %1481 = fsub fast float %1127, %1480
  %1482 = fmul fast float %1467, %1126
  %1483 = fsub fast float %1126, %1482
  %1484 = bitcast float %1196 to i32
  %1485 = lshr i32 %1484, 16
  %1486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1485)  ; LegacyF16ToF32(value)
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = and i32 %1488, 1
  %1490 = icmp eq i32 %1489, 0
  br i1 %1490, label %1491, label %1516

; <label>:1491                                    ; preds = %1455
  %1492 = fadd fast float %1379, 0xBFB99999A0000000
  %1493 = call float @dx.op.unary.f32(i32 7, float %1492)  ; Saturate(value)
  %1494 = fmul fast float %1493, 0x3FF1C71C80000000
  %1495 = fsub fast float 1.000000e+00, %1494
  %1496 = call float @dx.op.unary.f32(i32 7, float %1495)  ; Saturate(value)
  %1497 = fmul fast float %1496, %1406
  %1498 = fmul fast float %1496, %1407
  %1499 = fmul fast float %1496, %1408
  %1500 = call float @dx.op.unary.f32(i32 7, float %1497)  ; Saturate(value)
  %1501 = call float @dx.op.unary.f32(i32 7, float %1498)  ; Saturate(value)
  %1502 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  %1503 = call float @dx.op.binary.f32(i32 35, float %1501, float %1502)  ; FMax(a,b)
  %1504 = call float @dx.op.binary.f32(i32 35, float %1500, float %1503)  ; FMax(a,b)
  %1505 = fcmp fast ogt float %1504, 0.000000e+00
  %1506 = bitcast float %1504 to i32
  %1507 = sub nsw i32 2129859010, %1506
  %1508 = bitcast i32 %1507 to float
  %1509 = select i1 %1505, float %1508, float 0.000000e+00
  %1510 = fmul fast float %1500, %1486
  %1511 = fmul fast float %1501, %1486
  %1512 = fmul fast float %1502, %1486
  %1513 = fmul fast float %1510, %1509
  %1514 = fmul fast float %1511, %1509
  %1515 = fmul fast float %1512, %1509
  br label %1516

; <label>:1516                                    ; preds = %1491, %1455
  %1517 = phi float [ %1486, %1455 ], [ %1513, %1491 ]
  %1518 = phi float [ %1486, %1455 ], [ %1514, %1491 ]
  %1519 = phi float [ %1486, %1455 ], [ %1515, %1491 ]
  %1520 = fsub fast float %1517, %1128
  %1521 = fsub fast float %1518, %1129
  %1522 = fsub fast float %1519, %1130
  %1523 = fmul fast float %1520, %1467
  %1524 = fmul fast float %1521, %1467
  %1525 = fmul fast float %1522, %1467
  %1526 = fadd fast float %1523, %1128
  %1527 = fadd fast float %1524, %1129
  %1528 = fadd fast float %1525, %1130
  %1529 = fadd fast float %1352, %1139
  %1530 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  %1531 = fsub fast float %1399, %1138
  %1532 = fmul fast float %1531, %1448
  %1533 = fadd fast float %1532, %1138
  %1534 = fsub fast float %1385, %1137
  %1535 = fmul fast float %1534, %1448
  %1536 = fadd fast float %1535, %1137
  %1537 = call float @dx.op.dot3.f32(i32 55, float %1406, float %1407, float %1408, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 0
  %1540 = extractvalue %dx.types.CBufRet.f32 %1538, 1
  %1541 = fmul fast float %1540, %1537
  %1542 = fadd fast float %1541, %1539
  %1543 = call float @dx.op.unary.f32(i32 7, float %1542)  ; Saturate(value)
  %1544 = bitcast float %1190 to i32
  %1545 = and i32 %1544, 65535
  %1546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1545)  ; LegacyF16ToF32(value)
  %1547 = lshr i32 %1544, 16
  %1548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1547)  ; LegacyF16ToF32(value)
  %1549 = fcmp fast oge float %1546, 0.000000e+00
  %1550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1551 = extractvalue %dx.types.CBufRet.f32 %1550, 0
  %1552 = select i1 %1549, float %1546, float %1551
  %1553 = fadd fast float %1552, %1548
  %1554 = fsub fast float %1543, %1125
  %1555 = fmul fast float %1554, %1352
  %1556 = fadd fast float %1555, %1125
  %1557 = fmul fast float %1553, %1352
  %1558 = call float @dx.op.binary.f32(i32 35, float %1124, float %1557)  ; FMax(a,b)
  %1559 = call float @dx.op.binary.f32(i32 35, float %1123, float %1352)  ; FMax(a,b)
  %1560 = and i32 %1202, 16
  %1561 = icmp eq i32 %1560, 0
  br i1 %1561, label %1583, label %1562

; <label>:1562                                    ; preds = %1516
  %1563 = add i32 %1193, 0
  %1564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1563, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1565 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1564, %dx.types.Handle %1365, float %1293, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float %1298, float %1300, float undef, float %1302, float %1304, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1566 = extractvalue %dx.types.ResRet.f32 %1565, 0
  %1567 = extractvalue %dx.types.ResRet.f32 %1565, 1
  %1568 = extractvalue %dx.types.ResRet.f32 %1565, 2
  %1569 = and i32 %1484, 65535
  %1570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1569)  ; LegacyF16ToF32(value)
  %1571 = fmul fast float %1566, %1187
  %1572 = fmul fast float %1567, %1188
  %1573 = fmul fast float %1568, %1189
  %1574 = and i32 %1202, 16384
  %1575 = icmp ne i32 %1574, 0
  %1576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1577 = extractvalue %dx.types.CBufRet.f32 %1576, 0
  %1578 = select i1 %1575, float %1577, float 1.000000e+00
  %1579 = fmul fast float %1578, %1570
  %1580 = fmul fast float %1571, %1579
  %1581 = fmul fast float %1572, %1579
  %1582 = fmul fast float %1573, %1579
  br label %1583

; <label>:1583                                    ; preds = %1562, %1516
  %1584 = phi float [ %1580, %1562 ], [ 0.000000e+00, %1516 ]
  %1585 = phi float [ %1581, %1562 ], [ 0.000000e+00, %1516 ]
  %1586 = phi float [ %1582, %1562 ], [ 0.000000e+00, %1516 ]
  %1587 = fsub fast float %1584, %1131
  %1588 = fsub fast float %1585, %1132
  %1589 = fsub fast float %1586, %1133
  %1590 = fmul fast float %1587, %1352
  %1591 = fmul fast float %1588, %1352
  %1592 = fmul fast float %1589, %1352
  %1593 = fadd fast float %1590, %1131
  %1594 = fadd fast float %1591, %1132
  %1595 = fadd fast float %1592, %1133
  br label %1251

; <label>:1596                                    ; preds = %1251
  br label %1597

; <label>:1597                                    ; preds = %1596, %1020
  %1598 = phi float [ 0.000000e+00, %1020 ], [ %1252, %1596 ]
  %1599 = phi float [ %1033, %1020 ], [ %1253, %1596 ]
  %1600 = phi float [ %1039, %1020 ], [ %1254, %1596 ]
  %1601 = phi float [ %1037, %1020 ], [ %1255, %1596 ]
  %1602 = phi float [ 0.000000e+00, %1020 ], [ %1256, %1596 ]
  %1603 = phi float [ 0.000000e+00, %1020 ], [ %1257, %1596 ]
  %1604 = phi float [ %1029, %1020 ], [ %1258, %1596 ]
  %1605 = phi float [ %1030, %1020 ], [ %1259, %1596 ]
  %1606 = phi float [ %1031, %1020 ], [ %1260, %1596 ]
  %1607 = phi float [ %1026, %1020 ], [ %1261, %1596 ]
  %1608 = phi float [ %1027, %1020 ], [ %1262, %1596 ]
  %1609 = phi float [ %1028, %1020 ], [ %1263, %1596 ]
  %1610 = phi float [ %1065, %1020 ], [ %1264, %1596 ]
  %1611 = phi float [ %1066, %1020 ], [ %1265, %1596 ]
  %1612 = phi float [ %1067, %1020 ], [ %1266, %1596 ]
  %1613 = phi float [ %1035, %1020 ], [ %1267, %1596 ]
  %1614 = phi float [ %1034, %1020 ], [ %1268, %1596 ]
  %1615 = phi float [ 0.000000e+00, %1020 ], [ %1269, %1596 ]
  %1616 = phi float [ %1032, %1020 ], [ %1270, %1596 ]
  %1617 = phi float [ %1023, %1020 ], [ %1271, %1596 ]
  %1618 = phi float [ %1024, %1020 ], [ %1272, %1596 ]
  %1619 = phi float [ %1025, %1020 ], [ %1273, %1596 ]
  %1620 = call float @dx.op.dot3.f32(i32 55, float %1610, float %1611, float %1612, float %1610, float %1611, float %1612)  ; Dot3(ax,ay,az,bx,by,bz)
  %1621 = call float @dx.op.unary.f32(i32 25, float %1620)  ; Rsqrt(value)
  %1622 = fmul fast float %1621, %1610
  %1623 = fmul fast float %1621, %1611
  %1624 = fmul fast float %1621, %1612
  %1625 = fadd fast float %1615, %1033
  %1626 = call float @dx.op.unary.f32(i32 7, float %1625)  ; Saturate(value)
  %1627 = call float @dx.op.dot3.f32(i32 55, float %1622, float %1623, float %1624, float %1622, float %1623, float %1624)  ; Dot3(ax,ay,az,bx,by,bz)
  %1628 = call float @dx.op.unary.f32(i32 25, float %1627)  ; Rsqrt(value)
  %1629 = fmul fast float %1628, %1622
  %1630 = fmul fast float %1628, %1623
  %1631 = fmul fast float %1628, %1624
  %1632 = fadd fast float %1616, 0xBFB99999A0000000
  %1633 = call float @dx.op.unary.f32(i32 7, float %1632)  ; Saturate(value)
  %1634 = fmul fast float %1633, 0x3FF1C71C80000000
  %1635 = call float @dx.op.binary.f32(i32 36, float %1616, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1636 = fsub fast float 1.000000e+00, %1634
  %1637 = call float @dx.op.unary.f32(i32 7, float %1636)  ; Saturate(value)
  %1638 = fmul fast float %1637, %1617
  %1639 = fmul fast float %1637, %1618
  %1640 = fmul fast float %1637, %1619
  %1641 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  %1642 = call float @dx.op.unary.f32(i32 7, float %1639)  ; Saturate(value)
  %1643 = call float @dx.op.unary.f32(i32 7, float %1640)  ; Saturate(value)
  %1644 = fmul fast float %1634, %1617
  %1645 = fmul fast float %1634, %1618
  %1646 = fmul fast float %1634, %1619
  %1647 = fadd fast float %1644, %1635
  %1648 = fadd fast float %1645, %1635
  %1649 = fadd fast float %1646, %1635
  %1650 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1651 = call float @dx.op.unary.f32(i32 7, float %1648)  ; Saturate(value)
  %1652 = call float @dx.op.unary.f32(i32 7, float %1649)  ; Saturate(value)
  %1653 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = and i32 %1655, 1
  %1657 = icmp eq i32 %1656, 0
  br i1 %1657, label %1672, label %1658

; <label>:1658                                    ; preds = %1597
  %1659 = call float @dx.op.binary.f32(i32 35, float %1642, float %1643)  ; FMax(a,b)
  %1660 = call float @dx.op.binary.f32(i32 35, float %1641, float %1659)  ; FMax(a,b)
  %1661 = fcmp fast ogt float %1660, 0.000000e+00
  %1662 = bitcast float %1660 to i32
  %1663 = sub nsw i32 2129859010, %1662
  %1664 = bitcast i32 %1663 to float
  %1665 = select i1 %1661, float %1664, float 0.000000e+00
  %1666 = fmul fast float %1641, %1604
  %1667 = fmul fast float %1642, %1605
  %1668 = fmul fast float %1643, %1606
  %1669 = fmul fast float %1666, %1665
  %1670 = fmul fast float %1667, %1665
  %1671 = fmul fast float %1668, %1665
  br label %1672

; <label>:1672                                    ; preds = %1658, %1597
  %1673 = phi float [ %1669, %1658 ], [ %1604, %1597 ]
  %1674 = phi float [ %1670, %1658 ], [ %1605, %1597 ]
  %1675 = phi float [ %1671, %1658 ], [ %1606, %1597 ]
  %1676 = fadd fast float %1641, 0xBFD51EB860000000
  %1677 = fadd fast float %1642, 0xBFD51EB860000000
  %1678 = fadd fast float %1643, 0xBFD51EB860000000
  %1679 = fmul fast float %1676, %1676
  %1680 = fmul fast float %1677, %1677
  %1681 = fmul fast float %1678, %1678
  %1682 = fmul fast float %1679, %1679
  %1683 = fmul fast float %1682, 1.000000e+02
  %1684 = fmul fast float %1680, %1680
  %1685 = fmul fast float %1684, 1.000000e+02
  %1686 = fmul fast float %1681, %1681
  %1687 = fmul fast float %1686, 1.000000e+02
  %1688 = fadd fast float %1683, 3.500000e+00
  %1689 = fadd fast float %1685, 3.500000e+00
  %1690 = fadd fast float %1687, 3.500000e+00
  %1691 = call float @dx.op.binary.f32(i32 35, float %1673, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %1692 = call float @dx.op.binary.f32(i32 35, float %1674, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %1693 = call float @dx.op.binary.f32(i32 35, float %1675, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %1694 = fdiv fast float %1688, %1691
  %1695 = fdiv fast float %1689, %1692
  %1696 = fdiv fast float %1690, %1693
  %1697 = fmul fast float %1036, 0xBFF7154760000000
  %1698 = fmul fast float %1697, %1694
  %1699 = call float @dx.op.unary.f32(i32 21, float %1698)  ; Exp(value)
  %1700 = fmul fast float %1699, 2.500000e-01
  %1701 = fmul fast float %1036, 0xBFDEC709E0000000
  %1702 = fmul fast float %1701, %1694
  %1703 = call float @dx.op.unary.f32(i32 21, float %1702)  ; Exp(value)
  %1704 = fmul fast float %1703, 7.500000e-01
  %1705 = fmul fast float %1697, %1695
  %1706 = call float @dx.op.unary.f32(i32 21, float %1705)  ; Exp(value)
  %1707 = fmul fast float %1706, 2.500000e-01
  %1708 = fmul fast float %1701, %1695
  %1709 = call float @dx.op.unary.f32(i32 21, float %1708)  ; Exp(value)
  %1710 = fmul fast float %1709, 7.500000e-01
  %1711 = fmul fast float %1697, %1696
  %1712 = call float @dx.op.unary.f32(i32 21, float %1711)  ; Exp(value)
  %1713 = fmul fast float %1712, 2.500000e-01
  %1714 = fmul fast float %1701, %1696
  %1715 = call float @dx.op.unary.f32(i32 21, float %1714)  ; Exp(value)
  %1716 = fmul fast float %1715, 7.500000e-01
  %1717 = fadd fast float %1700, %1704
  %1718 = fadd fast float %1707, %1710
  %1719 = fadd fast float %1713, %1716
  %1720 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1721 = extractvalue %dx.types.CBufRet.i32 %1720, 3
  %1722 = and i32 %1721, 8
  %1723 = icmp ne i32 %1722, 0
  %1724 = call float @dx.op.binary.f32(i32 35, float %1641, float %1617)  ; FMax(a,b)
  %1725 = call float @dx.op.binary.f32(i32 35, float %1642, float %1617)  ; FMax(a,b)
  %1726 = call float @dx.op.binary.f32(i32 35, float %1643, float %1617)  ; FMax(a,b)
  %1727 = call float @dx.op.dot3.f32(i32 55, float %1641, float %1642, float %1643, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1728 = select i1 %248, float %1617, float %1641
  %1729 = select i1 %248, float %1727, float %1642
  %1730 = select i1 %248, float 1.000000e+00, float %1643
  %1731 = select i1 %1723, float %1724, float %1728
  %1732 = select i1 %1723, float %1725, float %1729
  %1733 = select i1 %1723, float %1726, float %1730
  %1734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1735 = extractvalue %dx.types.CBufRet.f32 %1734, 0
  %1736 = extractvalue %dx.types.CBufRet.f32 %1734, 1
  %1737 = extractvalue %dx.types.CBufRet.f32 %1734, 2
  %1738 = fadd fast float %1735, %157
  %1739 = fadd fast float %1736, %158
  %1740 = fadd fast float %1737, %159
  %1741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1742 = extractvalue %dx.types.CBufRet.f32 %1741, 0
  %1743 = extractvalue %dx.types.CBufRet.f32 %1741, 1
  %1744 = fsub fast float %1738, %1742
  %1745 = fsub fast float %1739, %1743
  %1746 = fmul fast float %1744, %1744
  %1747 = fmul fast float %1745, %1745
  %1748 = fadd fast float %1746, %1747
  %1749 = call float @dx.op.unary.f32(i32 24, float %1748)  ; Sqrt(value)
  %1750 = extractvalue %dx.types.CBufRet.f32 %1741, 2
  %1751 = fcmp fast olt float %1749, %1750
  br i1 %1751, label %1752, label %1819

; <label>:1752                                    ; preds = %1672
  %1753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1754 = extractvalue %dx.types.CBufRet.f32 %1753, 0
  %1755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1756 = extractvalue %dx.types.CBufRet.f32 %1755, 0
  %1757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1758 = extractvalue %dx.types.CBufRet.f32 %1757, 0
  %1759 = extractvalue %dx.types.CBufRet.f32 %1753, 1
  %1760 = extractvalue %dx.types.CBufRet.f32 %1755, 1
  %1761 = extractvalue %dx.types.CBufRet.f32 %1757, 1
  %1762 = extractvalue %dx.types.CBufRet.f32 %1753, 3
  %1763 = extractvalue %dx.types.CBufRet.f32 %1755, 3
  %1764 = extractvalue %dx.types.CBufRet.f32 %1757, 3
  %1765 = fadd fast float %1762, %1738
  %1766 = fadd fast float %1763, %1739
  %1767 = fadd fast float %1764, %1740
  %1768 = fmul fast float %1765, %1754
  %1769 = call float @dx.op.tertiary.f32(i32 46, float %1766, float %1756, float %1768)  ; FMad(a,b,c)
  %1770 = call float @dx.op.tertiary.f32(i32 46, float %1767, float %1758, float %1769)  ; FMad(a,b,c)
  %1771 = fmul fast float %1765, %1759
  %1772 = call float @dx.op.tertiary.f32(i32 46, float %1766, float %1760, float %1771)  ; FMad(a,b,c)
  %1773 = call float @dx.op.tertiary.f32(i32 46, float %1767, float %1761, float %1772)  ; FMad(a,b,c)
  %1774 = fsub fast float %1770, %1762
  %1775 = fsub fast float %1773, %1763
  %1776 = fsub fast float %1774, %1742
  %1777 = fadd fast float %1776, %1750
  %1778 = fsub fast float %1775, %1743
  %1779 = fadd fast float %1778, %1750
  %1780 = extractvalue %dx.types.CBufRet.f32 %1741, 3
  %1781 = fmul fast float %1777, %1780
  %1782 = fmul fast float %1779, %1780
  %1783 = call float @dx.op.unary.f32(i32 7, float %1781)  ; Saturate(value)
  %1784 = call float @dx.op.unary.f32(i32 7, float %1782)  ; Saturate(value)
  %1785 = fsub fast float 1.000000e+00, %1783
  %1786 = fsub fast float 1.000000e+00, %1784
  %1787 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %64, float %1785, float %1786, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1788 = extractvalue %dx.types.ResRet.f32 %1787, 0
  %1789 = fcmp fast ugt float %1788, 0.000000e+00
  br i1 %1789, label %1790, label %2093

; <label>:1790                                    ; preds = %1752
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 2
  %1793 = fmul fast float %1792, %1788
  %1794 = extractvalue %dx.types.CBufRet.f32 %1791, 3
  %1795 = fadd fast float %1794, %1793
  %1796 = extractvalue %dx.types.CBufRet.f32 %1757, 2
  %1797 = fadd fast float %1795, %1764
  %1798 = fmul fast float %1770, %1758
  %1799 = call float @dx.op.tertiary.f32(i32 46, float %1773, float %1761, float %1798)  ; FMad(a,b,c)
  %1800 = call float @dx.op.tertiary.f32(i32 46, float %1797, float %1796, float %1799)  ; FMad(a,b,c)
  %1801 = fsub fast float %1800, %1764
  %1802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1803 = extractvalue %dx.types.CBufRet.f32 %1802, 2
  %1804 = fsub fast float %1801, %1803
  %1805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %64, float %1785, float %1786, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1806 = extractvalue %dx.types.ResRet.f32 %1805, 0
  %1807 = extractvalue %dx.types.ResRet.f32 %1805, 1
  %1808 = extractvalue %dx.types.ResRet.f32 %1805, 2
  %1809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %64, float %1785, float %1786, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1810 = extractvalue %dx.types.ResRet.f32 %1809, 0
  %1811 = extractvalue %dx.types.ResRet.f32 %1809, 1
  %1812 = extractvalue %dx.types.ResRet.f32 %1809, 2
  %1813 = fadd fast float %1810, %1806
  %1814 = fmul fast float %1813, 0x3F847AE140000000
  %1815 = fadd fast float %1811, %1807
  %1816 = fmul fast float %1815, 0x3F847AE140000000
  %1817 = fadd fast float %1812, %1808
  %1818 = fmul fast float %1817, 0x3F847AE140000000
  br label %2093

; <label>:1819                                    ; preds = %1672
  %1820 = and i32 %224, 1
  %1821 = icmp eq i32 %1820, 0
  br i1 %1821, label %2093, label %1822

; <label>:1822                                    ; preds = %1819
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 0
  %1825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1826 = extractvalue %dx.types.CBufRet.f32 %1825, 0
  %1827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1828 = extractvalue %dx.types.CBufRet.f32 %1827, 0
  %1829 = extractvalue %dx.types.CBufRet.f32 %1823, 1
  %1830 = extractvalue %dx.types.CBufRet.f32 %1825, 1
  %1831 = extractvalue %dx.types.CBufRet.f32 %1827, 1
  %1832 = extractvalue %dx.types.CBufRet.f32 %1823, 3
  %1833 = extractvalue %dx.types.CBufRet.f32 %1825, 3
  %1834 = extractvalue %dx.types.CBufRet.f32 %1827, 3
  %1835 = fadd fast float %1832, %1738
  %1836 = fadd fast float %1833, %1739
  %1837 = fadd fast float %1834, %1740
  %1838 = fmul fast float %1835, %1824
  %1839 = call float @dx.op.tertiary.f32(i32 46, float %1836, float %1826, float %1838)  ; FMad(a,b,c)
  %1840 = call float @dx.op.tertiary.f32(i32 46, float %1837, float %1828, float %1839)  ; FMad(a,b,c)
  %1841 = fmul fast float %1835, %1829
  %1842 = call float @dx.op.tertiary.f32(i32 46, float %1836, float %1830, float %1841)  ; FMad(a,b,c)
  %1843 = call float @dx.op.tertiary.f32(i32 46, float %1837, float %1831, float %1842)  ; FMad(a,b,c)
  %1844 = fsub fast float %1840, %1832
  %1845 = fsub fast float %1843, %1833
  %1846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1847 = extractvalue %dx.types.CBufRet.f32 %1846, 0
  %1848 = extractvalue %dx.types.CBufRet.f32 %1846, 1
  %1849 = extractvalue %dx.types.CBufRet.f32 %1846, 2
  %1850 = extractvalue %dx.types.CBufRet.f32 %1846, 3
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 3
  %1853 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.i32 %1853, 0
  %1855 = extractvalue %dx.types.CBufRet.i32 %1853, 1
  %1856 = udiv i32 %1855, %1854
  %1857 = fsub fast float %1844, %1847
  %1858 = fsub fast float %1845, %1848
  %1859 = call float @dx.op.binary.f32(i32 35, float %1857, float 0.000000e+00)  ; FMax(a,b)
  %1860 = call float @dx.op.binary.f32(i32 35, float %1858, float 0.000000e+00)  ; FMax(a,b)
  %1861 = call float @dx.op.binary.f32(i32 36, float %1859, float %1849)  ; FMin(a,b)
  %1862 = call float @dx.op.binary.f32(i32 36, float %1860, float %1850)  ; FMin(a,b)
  %1863 = add i32 %1854, -1
  %1864 = add i32 %1856, -1
  %1865 = fmul fast float %1861, %1852
  %1866 = fmul fast float %1862, %1852
  %1867 = fptoui float %1865 to i32
  %1868 = fptoui float %1866 to i32
  %1869 = call i32 @dx.op.binary.i32(i32 40, i32 %1867, i32 %1863)  ; UMin(a,b)
  %1870 = call i32 @dx.op.binary.i32(i32 40, i32 %1868, i32 %1864)  ; UMin(a,b)
  %1871 = mul i32 %1870, %1854
  %1872 = add i32 %1871, %1869
  %1873 = shl i32 %1872, 2
  %1874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.i32 %1874, 0
  %1876 = icmp eq i32 %1875, -1
  br i1 %1876, label %2093, label %1877

; <label>:1877                                    ; preds = %1822
  %1878 = mul i32 %1875, 148
  %1879 = add i32 %1878, 4
  %1880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %1881 = extractvalue %dx.types.ResRet.f32 %1880, 0
  %1882 = add i32 %1878, 8
  %1883 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.f32 %1883, 0
  %1885 = add i32 %1878, 36
  %1886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.f32 %1886, 0
  %1888 = add i32 %1878, 60
  %1889 = add i32 %1878, 92
  %1890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %1891 = extractvalue %dx.types.ResRet.i32 %1890, 0
  %1892 = add i32 %1878, 116
  %1893 = fsub fast float %1844, %1881
  %1894 = fsub fast float %1845, %1884
  %1895 = fmul fast float %1852, %1893
  %1896 = fmul fast float %1852, %1894
  %1897 = call float @dx.op.unary.f32(i32 7, float %1895)  ; Saturate(value)
  %1898 = call float @dx.op.unary.f32(i32 7, float %1896)  ; Saturate(value)
  %1899 = fsub fast float 1.000000e+00, %1898
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 2
  %1902 = call float @dx.op.unary.f32(i32 83, float %1897)  ; DerivCoarseX(value)
  %1903 = call float @dx.op.unary.f32(i32 83, float %1899)  ; DerivCoarseX(value)
  %1904 = call float @dx.op.unary.f32(i32 84, float %1897)  ; DerivCoarseY(value)
  %1905 = call float @dx.op.unary.f32(i32 84, float %1899)  ; DerivCoarseY(value)
  %1906 = fmul fast float %1902, %1901
  %1907 = fmul fast float %1903, %1901
  %1908 = fmul fast float %1904, %1901
  %1909 = fmul fast float %1905, %1901
  %1910 = call float @dx.op.dot2.f32(i32 54, float %1908, float %1909, float %1908, float %1909)  ; Dot2(ax,ay,bx,by)
  %1911 = call float @dx.op.dot2.f32(i32 54, float %1906, float %1907, float %1906, float %1907)  ; Dot2(ax,ay,bx,by)
  %1912 = call float @dx.op.binary.f32(i32 35, float %1911, float %1910)  ; FMax(a,b)
  %1913 = call float @dx.op.unary.f32(i32 23, float %1912)  ; Log(value)
  %1914 = fmul fast float %1913, 5.000000e-01
  %1915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1916 = extractvalue %dx.types.CBufRet.f32 %1915, 1
  %1917 = fadd fast float %1916, %1914
  %1918 = call float @dx.op.binary.f32(i32 35, float %1917, float 0.000000e+00)  ; FMax(a,b)
  %1919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1920 = extractvalue %dx.types.CBufRet.f32 %1919, 3
  %1921 = fadd fast float %1920, %1918
  %1922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1923 = extractvalue %dx.types.CBufRet.f32 %1922, 3
  %1924 = fadd fast float %1921, %1923
  %1925 = add i32 %1891, 0
  %1926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1925, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1927 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1926, i32 0)  ; GetDimensions(handle,mipLevel)
  %1928 = extractvalue %dx.types.Dimensions %1927, 0
  %1929 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1928)  ; FirstbitLo(value)
  %1930 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1931 = extractvalue %dx.types.CBufRet.i32 %1930, 1
  %1932 = sub nsw i32 %1931, %1929
  %1933 = sitofp i32 %1932 to float
  %1934 = fsub fast float %1924, %1933
  %1935 = call float @dx.op.binary.f32(i32 35, float %1934, float 0.000000e+00)  ; FMax(a,b)
  %1936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1926, %dx.types.Handle %62, float %1897, float %1899, float %1887, float undef, i32 0, i32 0, i32 undef, float %1935)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1937 = extractvalue %dx.types.ResRet.f32 %1936, 0
  %1938 = fcmp ule float %1937, 0x3FE0101020000000
  %1939 = extractvalue %dx.types.CBufRet.i32 %1930, 0
  %1940 = and i32 %1939, 128
  %1941 = icmp ne i32 %1940, 0
  %1942 = and i1 %1938, %1941
  br i1 %1942, label %2093, label %1943

; <label>:1943                                    ; preds = %1877
  %1944 = add i32 %1878, 20
  %1945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.f32 %1945, 0
  %1947 = add i32 %1878, 24
  %1948 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1947, i32 undef)  ; BufferLoad(srv,index,wot)
  %1949 = extractvalue %dx.types.ResRet.f32 %1948, 0
  %1950 = add i32 %1878, 40
  %1951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1952 = extractvalue %dx.types.ResRet.f32 %1951, 0
  %1953 = add i32 %1878, 96
  %1954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1955 = extractvalue %dx.types.ResRet.i32 %1954, 0
  %1956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1957 = extractvalue %dx.types.CBufRet.f32 %1956, 2
  %1958 = fmul fast float %1957, %1897
  %1959 = fmul fast float %1957, %1899
  %1960 = extractvalue %dx.types.CBufRet.f32 %1956, 3
  %1961 = fadd fast float %1958, %1960
  %1962 = fadd fast float %1959, %1960
  %1963 = add i32 %1955, 0
  %1964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1963, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1965 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1964, i32 0)  ; GetDimensions(handle,mipLevel)
  %1966 = extractvalue %dx.types.Dimensions %1965, 0
  %1967 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1966)  ; FirstbitLo(value)
  %1968 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1969 = extractvalue %dx.types.CBufRet.i32 %1968, 1
  %1970 = sub nsw i32 %1969, %1967
  %1971 = sitofp i32 %1970 to float
  %1972 = fsub fast float %1921, %1971
  %1973 = call float @dx.op.binary.f32(i32 35, float %1972, float 0.000000e+00)  ; FMax(a,b)
  %1974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1964, %dx.types.Handle %62, float %1961, float %1962, float %1952, float undef, i32 0, i32 0, i32 undef, float %1973)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1975 = extractvalue %dx.types.ResRet.f32 %1974, 0
  %1976 = fmul fast float %1975, %1946
  %1977 = fadd fast float %1976, %1949
  %1978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1979 = extractvalue %dx.types.CBufRet.f32 %1978, 0
  %1980 = extractvalue %dx.types.CBufRet.f32 %1978, 1
  %1981 = extractvalue %dx.types.CBufRet.f32 %1978, 2
  %1982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1983 = extractvalue %dx.types.CBufRet.f32 %1982, 3
  %1984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1985 = extractvalue %dx.types.CBufRet.f32 %1984, 3
  %1986 = extractvalue %dx.types.CBufRet.f32 %1978, 3
  %1987 = fadd fast float %1983, %1844
  %1988 = fadd fast float %1985, %1845
  %1989 = fadd fast float %1977, %1986
  %1990 = fmul fast float %1987, %1979
  %1991 = call float @dx.op.tertiary.f32(i32 46, float %1988, float %1980, float %1990)  ; FMad(a,b,c)
  %1992 = call float @dx.op.tertiary.f32(i32 46, float %1989, float %1981, float %1991)  ; FMad(a,b,c)
  %1993 = fsub fast float %1992, %1986
  %1994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1995 = extractvalue %dx.types.CBufRet.f32 %1994, 2
  %1996 = fsub fast float %1993, %1995
  %1997 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1998 = extractvalue %dx.types.CBufRet.i32 %1997, 0
  %1999 = call i32 @dx.op.binary.i32(i32 40, i32 %1875, i32 %1998)  ; UMin(a,b)
  %2000 = mul i32 %1999, 36
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = add i32 %2000, 4
  %2004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2005 = extractvalue %dx.types.CBufRet.f32 %2004, 0
  %2006 = fmul fast float %2005, %1897
  %2007 = fmul fast float %2005, %1899
  %2008 = extractvalue %dx.types.CBufRet.f32 %2004, 1
  %2009 = fadd fast float %2006, %2008
  %2010 = fadd fast float %2007, %2008
  %2011 = icmp eq i32 %2002, 0
  br i1 %2011, label %2080, label %2012

; <label>:2012                                    ; preds = %1943
  br label %2013

; <label>:2013                                    ; preds = %2070, %2012
  %2014 = phi float [ %2071, %2070 ], [ 0.000000e+00, %2012 ]
  %2015 = phi float [ %2072, %2070 ], [ 0.000000e+00, %2012 ]
  %2016 = phi float [ %2073, %2070 ], [ 0.000000e+00, %2012 ]
  %2017 = phi float [ %2074, %2070 ], [ 0.000000e+00, %2012 ]
  %2018 = phi float [ %2075, %2070 ], [ 0.000000e+00, %2012 ]
  %2019 = phi float [ %2076, %2070 ], [ 0.000000e+00, %2012 ]
  %2020 = phi i32 [ %2077, %2070 ], [ 0, %2012 ]
  %2021 = shl i32 %2020, 2
  %2022 = add i32 %1888, %2021
  %2023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.f32 %2023, 0
  %2025 = add i32 %1892, %2021
  %2026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2025, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.i32 %2026, 0
  %2028 = add i32 %2027, 0
  %2029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2028, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2030 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2029, i32 0)  ; GetDimensions(handle,mipLevel)
  %2031 = extractvalue %dx.types.Dimensions %2030, 0
  %2032 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2031)  ; FirstbitLo(value)
  %2033 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2034 = extractvalue %dx.types.CBufRet.i32 %2033, 1
  %2035 = sub nsw i32 %2034, %2032
  %2036 = sitofp i32 %2035 to float
  %2037 = fsub fast float %1921, %2036
  %2038 = call float @dx.op.binary.f32(i32 35, float %2037, float 0.000000e+00)  ; FMax(a,b)
  %2039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2029, %dx.types.Handle %62, float %2009, float %2010, float %2024, float undef, i32 0, i32 0, i32 undef, float %2038)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2040 = extractvalue %dx.types.ResRet.f32 %2039, 0
  %2041 = fcmp fast ogt float %2040, 0.000000e+00
  br i1 %2041, label %2042, label %2070

; <label>:2042                                    ; preds = %2013
  %2043 = add i32 %2003, %2021
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = and i32 %2045, 32767
  %2047 = mul nuw nsw i32 %2046, 928
  %2048 = add nuw nsw i32 %2047, 48
  %2049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.f32 %2049, 0
  %2051 = extractvalue %dx.types.ResRet.f32 %2049, 1
  %2052 = extractvalue %dx.types.ResRet.f32 %2049, 2
  %2053 = add nuw nsw i32 %2047, 60
  %2054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2053, i32 undef)  ; BufferLoad(srv,index,wot)
  %2055 = extractvalue %dx.types.ResRet.f32 %2054, 0
  %2056 = extractvalue %dx.types.ResRet.f32 %2054, 1
  %2057 = extractvalue %dx.types.ResRet.f32 %2054, 2
  %2058 = fmul fast float %2050, %2040
  %2059 = fmul fast float %2051, %2040
  %2060 = fmul fast float %2052, %2040
  %2061 = fadd fast float %2058, %2014
  %2062 = fadd fast float %2059, %2015
  %2063 = fadd fast float %2060, %2016
  %2064 = fmul fast float %2055, %2040
  %2065 = fmul fast float %2056, %2040
  %2066 = fmul fast float %2057, %2040
  %2067 = fadd fast float %2064, %2017
  %2068 = fadd fast float %2065, %2018
  %2069 = fadd fast float %2066, %2019
  br label %2070

; <label>:2070                                    ; preds = %2042, %2013
  %2071 = phi float [ %2061, %2042 ], [ %2014, %2013 ]
  %2072 = phi float [ %2062, %2042 ], [ %2015, %2013 ]
  %2073 = phi float [ %2063, %2042 ], [ %2016, %2013 ]
  %2074 = phi float [ %2067, %2042 ], [ %2017, %2013 ]
  %2075 = phi float [ %2068, %2042 ], [ %2018, %2013 ]
  %2076 = phi float [ %2069, %2042 ], [ %2019, %2013 ]
  %2077 = add nuw i32 %2020, 1
  %2078 = icmp eq i32 %2077, %2002
  br i1 %2078, label %2079, label %2013

; <label>:2079                                    ; preds = %2070
  br label %2080

; <label>:2080                                    ; preds = %2079, %1943
  %2081 = phi float [ 0.000000e+00, %1943 ], [ %2071, %2079 ]
  %2082 = phi float [ 0.000000e+00, %1943 ], [ %2072, %2079 ]
  %2083 = phi float [ 0.000000e+00, %1943 ], [ %2073, %2079 ]
  %2084 = phi float [ 0.000000e+00, %1943 ], [ %2074, %2079 ]
  %2085 = phi float [ 0.000000e+00, %1943 ], [ %2075, %2079 ]
  %2086 = phi float [ 0.000000e+00, %1943 ], [ %2076, %2079 ]
  %2087 = fadd fast float %2084, %2081
  %2088 = fmul fast float %2087, 0x3F847AE140000000
  %2089 = fadd fast float %2085, %2082
  %2090 = fmul fast float %2089, 0x3F847AE140000000
  %2091 = fadd fast float %2086, %2083
  %2092 = fmul fast float %2091, 0x3F847AE140000000
  br label %2093

; <label>:2093                                    ; preds = %2080, %1877, %1822, %1819, %1790, %1752
  %2094 = phi float [ %1804, %1790 ], [ -1.310720e+05, %1752 ], [ %1996, %2080 ], [ -1.310720e+05, %1822 ], [ -1.310720e+05, %1877 ], [ -1.310720e+05, %1819 ]
  %2095 = phi float [ %1814, %1790 ], [ 0.000000e+00, %1752 ], [ %2088, %2080 ], [ 0.000000e+00, %1822 ], [ 0.000000e+00, %1877 ], [ 0.000000e+00, %1819 ]
  %2096 = phi float [ %1816, %1790 ], [ 0.000000e+00, %1752 ], [ %2090, %2080 ], [ 0.000000e+00, %1822 ], [ 0.000000e+00, %1877 ], [ 0.000000e+00, %1819 ]
  %2097 = phi float [ %1818, %1790 ], [ 0.000000e+00, %1752 ], [ %2092, %2080 ], [ 0.000000e+00, %1822 ], [ 0.000000e+00, %1877 ], [ 0.000000e+00, %1819 ]
  %2098 = phi i1 [ true, %1790 ], [ false, %1752 ], [ true, %2080 ], [ false, %1822 ], [ false, %1877 ], [ false, %1819 ]
  %2099 = and i32 %224, 3
  %2100 = icmp eq i32 %2099, 1
  %2101 = select i1 %2100, float 1.000000e+00, float 0.000000e+00
  %2102 = fsub fast float %2094, %159
  %2103 = call float @dx.op.unary.f32(i32 7, float %2102)  ; Saturate(value)
  %2104 = select i1 %2098, float %2103, float 1.000000e+00
  %2105 = fmul fast float %2104, %2101
  %2106 = icmp eq i32 %2099, 3
  %2107 = select i1 %2106, float 1.000000e+00, float %2105
  %2108 = call float @dx.op.binary.f32(i32 35, float %1598, float %2107)  ; FMax(a,b)
  %2109 = call float @dx.op.unary.f32(i32 7, float %2108)  ; Saturate(value)
  %2110 = fcmp fast une float %2109, 0.000000e+00
  %2111 = call float @dx.op.dot3.f32(i32 55, float %157, float %158, float %159, float %157, float %158, float %159)  ; Dot3(ax,ay,az,bx,by,bz)
  %2112 = call float @dx.op.unary.f32(i32 25, float %2111)  ; Rsqrt(value)
  br i1 %2110, label %2120, label %2113

; <label>:2113                                    ; preds = %2093
  %2114 = fmul fast float %2112, %157
  %2115 = fmul fast float %2112, %158
  %2116 = fmul fast float %2112, %159
  %2117 = fsub fast float -0.000000e+00, %2114
  %2118 = fsub fast float -0.000000e+00, %2115
  %2119 = fsub fast float -0.000000e+00, %2116
  br label %2288

; <label>:2120                                    ; preds = %2093
  %2121 = fmul fast float %157, %2112
  %2122 = fsub fast float -0.000000e+00, %2121
  %2123 = fmul fast float %158, %2112
  %2124 = fsub fast float -0.000000e+00, %2123
  %2125 = fmul fast float %159, %2112
  %2126 = fsub fast float -0.000000e+00, %2125
  %2127 = call float @dx.op.dot3.f32(i32 55, float %2122, float %2124, float %2126, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %2128 = fmul fast float %2109, 2.500000e+00
  %2129 = call float @dx.op.unary.f32(i32 7, float %2128)  ; Saturate(value)
  %2130 = fmul fast float %2109, 0x4013FFFFE0000000
  %2131 = fadd fast float %2130, 0xBFFFFFFFE0000000
  %2132 = call float @dx.op.unary.f32(i32 7, float %2131)  ; Saturate(value)
  %2133 = fmul fast float %2109, 0x4004000020000000
  %2134 = fadd fast float %2133, 0xBFF8000040000000
  %2135 = call float @dx.op.unary.f32(i32 7, float %2134)  ; Saturate(value)
  %2136 = call float @dx.op.unary.f32(i32 7, float %2129)  ; Saturate(value)
  %2137 = fmul fast float %1632, 1.000000e+01
  %2138 = call float @dx.op.unary.f32(i32 7, float %2137)  ; Saturate(value)
  %2139 = fmul fast float %2138, 2.000000e+00
  %2140 = fsub fast float 3.000000e+00, %2139
  %2141 = fmul fast float %2138, %2138
  %2142 = fmul fast float %2141, %2140
  %2143 = fsub fast float 1.000000e+00, %2142
  %2144 = fsub fast float 0x3FE3333340000000, %1653
  %2145 = fmul fast float %2144, 0x400AAAAAA0000000
  %2146 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2147 = fmul fast float %2143, %2146
  %2148 = fmul fast float %1731, 0x3FEA2B8620000000
  %2149 = fmul fast float %1732, 0x3FEA2B8620000000
  %2150 = fmul fast float %1733, 0x3FEA2B8620000000
  %2151 = fadd fast float %2148, 0x3FC81DFBA0000000
  %2152 = fmul fast float %2151, %1731
  %2153 = fadd fast float %2152, 0x3F910E6020000000
  %2154 = fadd fast float %2149, 0x3FC81DFBA0000000
  %2155 = fmul fast float %2154, %1732
  %2156 = fadd fast float %2155, 0x3F910E6020000000
  %2157 = fadd fast float %2150, 0x3FC81DFBA0000000
  %2158 = fmul fast float %2157, %1733
  %2159 = fadd fast float %2158, 0x3F910E6020000000
  %2160 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  %2161 = call float @dx.op.unary.f32(i32 7, float %2156)  ; Saturate(value)
  %2162 = call float @dx.op.unary.f32(i32 7, float %2159)  ; Saturate(value)
  %2163 = fsub fast float %2160, %1731
  %2164 = fsub fast float %2161, %1732
  %2165 = fsub fast float %2162, %1733
  %2166 = fmul fast float %2163, %2136
  %2167 = fmul fast float %2166, %2147
  %2168 = fmul fast float %2164, %2136
  %2169 = fmul fast float %2168, %2147
  %2170 = fmul fast float %2165, %2136
  %2171 = fmul fast float %2170, %2147
  %2172 = fadd fast float %2167, %1731
  %2173 = fadd fast float %2169, %1732
  %2174 = fadd fast float %2171, %1733
  %2175 = fmul fast float %1613, %1613
  %2176 = fmul fast float %2175, %2175
  %2177 = fadd fast float %2132, 1.000000e+00
  %2178 = fsub fast float %2177, %2147
  %2179 = call float @dx.op.unary.f32(i32 7, float %2178)  ; Saturate(value)
  %2180 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2181 = call float @dx.op.unary.f32(i32 7, float %2180)  ; Saturate(value)
  %2182 = fsub fast float 1.000000e+00, %2176
  %2183 = call float @dx.op.binary.f32(i32 36, float %2179, float %2182)  ; FMin(a,b)
  %2184 = call float @dx.op.unary.f32(i32 7, float %2135)  ; Saturate(value)
  %2185 = call float @dx.op.binary.f32(i32 35, float %2183, float %2184)  ; FMax(a,b)
  %2186 = fadd fast float %2181, 0xBFE4CCCCC0000000
  %2187 = fmul fast float %2186, 0x4006DB6DA0000000
  %2188 = call float @dx.op.unary.f32(i32 7, float %2187)  ; Saturate(value)
  %2189 = fmul fast float %2188, 2.000000e+00
  %2190 = fsub fast float 3.000000e+00, %2189
  %2191 = bitcast float %1650 to i32
  %2192 = ashr i32 %2191, 1
  %2193 = add nsw i32 %2192, 532487669
  %2194 = bitcast i32 %2193 to float
  %2195 = fsub fast float 1.000000e+00, %2194
  %2196 = bitcast float %2195 to i32
  %2197 = sub nsw i32 2129859010, %2196
  %2198 = bitcast i32 %2197 to float
  %2199 = fmul fast float %2198, 2.000000e+00
  %2200 = bitcast float %1651 to i32
  %2201 = ashr i32 %2200, 1
  %2202 = add nsw i32 %2201, 532487669
  %2203 = bitcast i32 %2202 to float
  %2204 = fsub fast float 1.000000e+00, %2203
  %2205 = bitcast float %2204 to i32
  %2206 = sub nsw i32 2129859010, %2205
  %2207 = bitcast i32 %2206 to float
  %2208 = fmul fast float %2207, 2.000000e+00
  %2209 = bitcast float %1652 to i32
  %2210 = ashr i32 %2209, 1
  %2211 = add nsw i32 %2210, 532487669
  %2212 = bitcast i32 %2211 to float
  %2213 = fsub fast float 1.000000e+00, %2212
  %2214 = bitcast float %2213 to i32
  %2215 = sub nsw i32 2129859010, %2214
  %2216 = bitcast i32 %2215 to float
  %2217 = fmul fast float %2216, 2.000000e+00
  %2218 = fsub fast float 0x4002A9FBE0000000, %2199
  %2219 = fadd fast float %2199, 0x3FD54FDF00000000
  %2220 = bitcast float %2219 to i32
  %2221 = sub nsw i32 2129859010, %2220
  %2222 = bitcast i32 %2221 to float
  %2223 = fmul fast float %2222, %2218
  %2224 = fmul fast float %2223, %2223
  %2225 = fsub fast float 0x4002A9FBE0000000, %2208
  %2226 = fadd fast float %2208, 0x3FD54FDF00000000
  %2227 = bitcast float %2226 to i32
  %2228 = sub nsw i32 2129859010, %2227
  %2229 = bitcast i32 %2228 to float
  %2230 = fmul fast float %2229, %2225
  %2231 = fmul fast float %2230, %2230
  %2232 = fsub fast float 0x4002A9FBE0000000, %2217
  %2233 = fadd fast float %2217, 0x3FD54FDF00000000
  %2234 = bitcast float %2233 to i32
  %2235 = sub nsw i32 2129859010, %2234
  %2236 = bitcast i32 %2235 to float
  %2237 = fmul fast float %2236, %2232
  %2238 = fmul fast float %2237, %2237
  %2239 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2224)  ; FMax(a,b)
  %2240 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2231)  ; FMax(a,b)
  %2241 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2238)  ; FMax(a,b)
  %2242 = fsub fast float 1.000000e+00, %2127
  %2243 = fadd fast float %2242, %2143
  %2244 = call float @dx.op.unary.f32(i32 7, float %2243)  ; Saturate(value)
  %2245 = fsub fast float 1.000000e+00, %2107
  %2246 = fmul fast float %2185, %2245
  %2247 = fmul fast float %2188, %2188
  %2248 = fmul fast float %2247, %2246
  %2249 = fmul fast float %2248, %2190
  %2250 = fmul fast float %2245, 0xBFE99999A0000000
  %2251 = fmul fast float %2250, %2136
  %2252 = fmul fast float %2251, %2147
  %2253 = fadd fast float %2252, 1.000000e+00
  %2254 = fadd fast float %1653, -1.000000e+00
  %2255 = fmul fast float %2253, %2254
  %2256 = fadd fast float %2255, 1.000000e+00
  %2257 = fsub fast float %2239, %1650
  %2258 = fsub fast float %2240, %1651
  %2259 = fsub fast float %2241, %1652
  %2260 = fmul fast float %2249, %2257
  %2261 = fmul fast float %2249, %2258
  %2262 = fmul fast float %2249, %2259
  %2263 = fadd fast float %2260, %1650
  %2264 = fadd fast float %2261, %1651
  %2265 = fadd fast float %2262, %1652
  %2266 = fsub fast float %105, %1629
  %2267 = fsub fast float %106, %1630
  %2268 = fsub fast float %107, %1631
  %2269 = fmul fast float %2249, %2266
  %2270 = fmul fast float %2249, %2267
  %2271 = fmul fast float %2249, %2268
  %2272 = fadd fast float %2269, %1629
  %2273 = fadd fast float %2270, %1630
  %2274 = fadd fast float %2271, %1631
  %2275 = fmul fast float %2249, %2244
  %2276 = call float @dx.op.unary.f32(i32 7, float %2256)  ; Saturate(value)
  %2277 = fsub fast float 1.000000e+00, %2276
  %2278 = fmul fast float %2275, %2277
  %2279 = fadd fast float %2278, %2276
  %2280 = fsub fast float 1.000000e+00, %1613
  %2281 = fmul fast float %2249, %2280
  %2282 = fadd fast float %2281, %1613
  %2283 = call float @dx.op.dot3.f32(i32 55, float %2272, float %2273, float %2274, float %2272, float %2273, float %2274)  ; Dot3(ax,ay,az,bx,by,bz)
  %2284 = call float @dx.op.unary.f32(i32 25, float %2283)  ; Rsqrt(value)
  %2285 = fmul fast float %2272, %2284
  %2286 = fmul fast float %2273, %2284
  %2287 = fmul fast float %2274, %2284
  br label %2288

; <label>:2288                                    ; preds = %2120, %2113
  %2289 = phi float [ %2119, %2113 ], [ %2126, %2120 ]
  %2290 = phi float [ %2118, %2113 ], [ %2124, %2120 ]
  %2291 = phi float [ %2117, %2113 ], [ %2122, %2120 ]
  %2292 = phi float [ %2116, %2113 ], [ %2125, %2120 ]
  %2293 = phi float [ %2115, %2113 ], [ %2123, %2120 ]
  %2294 = phi float [ %2114, %2113 ], [ %2121, %2120 ]
  %2295 = phi float [ %1731, %2113 ], [ %2172, %2120 ]
  %2296 = phi float [ %1732, %2113 ], [ %2173, %2120 ]
  %2297 = phi float [ %1733, %2113 ], [ %2174, %2120 ]
  %2298 = phi float [ %1629, %2113 ], [ %2285, %2120 ]
  %2299 = phi float [ %1630, %2113 ], [ %2286, %2120 ]
  %2300 = phi float [ %1631, %2113 ], [ %2287, %2120 ]
  %2301 = phi float [ %1650, %2113 ], [ %2263, %2120 ]
  %2302 = phi float [ %1651, %2113 ], [ %2264, %2120 ]
  %2303 = phi float [ %1652, %2113 ], [ %2265, %2120 ]
  %2304 = phi float [ %1653, %2113 ], [ %2279, %2120 ]
  %2305 = phi float [ %1613, %2113 ], [ %2282, %2120 ]
  %2306 = fsub fast float -0.000000e+00, %159
  %2307 = select i1 %248, float 0.000000e+00, float %2303
  %2308 = call float @dx.op.dot3.f32(i32 55, float %2298, float %2299, float %2300, float %2291, float %2290, float %2289)  ; Dot3(ax,ay,az,bx,by,bz)
  %2309 = call float @dx.op.unary.f32(i32 7, float %2308)  ; Saturate(value)
  %2310 = call float @dx.op.dot3.f32(i32 55, float %2294, float %2293, float %2292, float %2298, float %2299, float %2300)  ; Dot3(ax,ay,az,bx,by,bz)
  %2311 = fmul fast float %2310, 2.000000e+00
  %2312 = fmul fast float %2311, %2298
  %2313 = fmul fast float %2311, %2299
  %2314 = fmul fast float %2311, %2300
  %2315 = fsub fast float %2294, %2312
  %2316 = fsub fast float %2293, %2313
  %2317 = fsub fast float %2292, %2314
  %2318 = call float @dx.op.binary.f32(i32 36, float %2305, float 1.000000e+00)  ; FMin(a,b)
  %2319 = fsub fast float 1.000000e+00, %2318
  %2320 = bitcast float %2319 to i32
  %2321 = ashr i32 %2320, 1
  %2322 = add nsw i32 %2321, 532487669
  %2323 = bitcast i32 %2322 to float
  %2324 = fsub fast float 1.000000e+00, %2304
  %2325 = call float @dx.op.binary.f32(i32 35, float %2324, float 0x3F847AE140000000)  ; FMax(a,b)
  %2326 = fmul fast float %2325, %2325
  %2327 = fmul fast float %2326, %2326
  %2328 = call float @dx.op.unary.f32(i32 7, float %2309)  ; Saturate(value)
  %2329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %64, float %2323, float %2327, float %2328, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2330 = extractvalue %dx.types.ResRet.f32 %2329, 0
  %2331 = fsub fast float 1.000000e+00, %2305
  %2332 = bitcast float %2331 to i32
  %2333 = sub nsw i32 2129859010, %2332
  %2334 = bitcast i32 %2333 to float
  %2335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2336 = extractvalue %dx.types.CBufRet.f32 %2335, 0
  %2337 = extractvalue %dx.types.CBufRet.f32 %2335, 1
  %2338 = fadd fast float %2336, %157
  %2339 = fadd fast float %2337, %158
  %2340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2341 = extractvalue %dx.types.CBufRet.i32 %2340, 0
  %2342 = icmp eq i32 %2341, 1
  br i1 %2342, label %2343, label %2378

; <label>:2343                                    ; preds = %2288
  %2344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2345 = extractvalue %dx.types.CBufRet.f32 %2344, 0
  %2346 = extractvalue %dx.types.CBufRet.f32 %2344, 1
  %2347 = fsub fast float %2338, %2345
  %2348 = fsub fast float %2339, %2346
  %2349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2350 = extractvalue %dx.types.CBufRet.f32 %2349, 0
  %2351 = extractvalue %dx.types.CBufRet.f32 %2349, 1
  %2352 = fmul fast float %2347, %2350
  %2353 = fmul fast float %2348, %2351
  %2354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %64, float %2352, float %2353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2355 = extractvalue %dx.types.ResRet.f32 %2354, 0
  %2356 = fcmp fast ogt float %2355, 0.000000e+00
  %2357 = extractvalue %dx.types.CBufRet.i32 %2340, 3
  %2358 = icmp ne i32 %2357, 0
  %2359 = and i1 %2356, %2358
  br i1 %2359, label %2360, label %2378, !dx.controlflow.hints !106

; <label>:2360                                    ; preds = %2343
  %2361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
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

; <label>:2378                                    ; preds = %2372, %2360, %2343, %2288
  %2379 = phi float [ 1.000000e+00, %2288 ], [ %2377, %2372 ], [ %2355, %2343 ], [ 0.000000e+00, %2360 ]
  %2380 = fcmp fast ogt float %2379, 0.000000e+00
  br i1 %2380, label %2381, label %2480, !dx.controlflow.hints !107

; <label>:2381                                    ; preds = %2378
  %2382 = fadd fast float %188, 5.000000e-01
  %2383 = call float @dx.op.unary.f32(i32 27, float %2382)  ; Round_ni(value)
  %2384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %64, float %186, float %187, float %2383, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2385 = extractvalue %dx.types.ResRet.f32 %2384, 0
  %2386 = extractvalue %dx.types.ResRet.f32 %2384, 1
  %2387 = extractvalue %dx.types.ResRet.f32 %2384, 2
  %2388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2389 = extractvalue %dx.types.CBufRet.f32 %2388, 3
  %2390 = fmul fast float %2389, %2385
  %2391 = fmul fast float %2389, %2386
  %2392 = fmul fast float %2389, %2387
  %2393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %186, float %187, float %2383, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2394 = extractvalue %dx.types.ResRet.f32 %2393, 0
  %2395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %64, float %186, float %187, float %2383, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %2421 = fmul fast float %2418, %105
  %2422 = fmul fast float %2418, %106
  %2423 = fmul fast float %2418, %107
  %2424 = fmul fast float %2416, %108
  %2425 = fmul fast float %2416, %109
  %2426 = fmul fast float %2416, %110
  %2427 = fadd fast float %2421, %2424
  %2428 = fadd fast float %2422, %2425
  %2429 = fadd fast float %2423, %2426
  %2430 = fmul fast float %2417, %121
  %2431 = fmul fast float %2417, %122
  %2432 = fmul fast float %2417, %123
  %2433 = fadd fast float %2427, %2430
  %2434 = fadd fast float %2428, %2431
  %2435 = fadd fast float %2429, %2432
  %2436 = call float @dx.op.dot3.f32(i32 55, float %2433, float %2434, float %2435, float %2433, float %2434, float %2435)  ; Dot3(ax,ay,az,bx,by,bz)
  %2437 = call float @dx.op.unary.f32(i32 25, float %2436)  ; Rsqrt(value)
  %2438 = fmul fast float %2433, %2437
  %2439 = fmul fast float %2434, %2437
  %2440 = fmul fast float %2435, %2437
  %2441 = call float @dx.op.dot3.f32(i32 55, float %2298, float %2299, float %2300, float %2298, float %2299, float %2300)  ; Dot3(ax,ay,az,bx,by,bz)
  %2442 = call float @dx.op.unary.f32(i32 7, float %2441)  ; Saturate(value)
  %2443 = fmul fast float %2442, 5.000000e-01
  %2444 = fadd fast float %2443, 5.000000e-01
  %2445 = fmul fast float %2444, %2394
  %2446 = call float @dx.op.dot3.f32(i32 55, float %2298, float %2299, float %2300, float %2438, float %2439, float %2440)  ; Dot3(ax,ay,az,bx,by,bz)
  %2447 = call float @dx.op.unary.f32(i32 7, float %2446)  ; Saturate(value)
  %2448 = fmul fast float %2447, %2420
  %2449 = fadd fast float %2445, %2448
  %2450 = fsub fast float 5.000000e-01, %2443
  %2451 = fmul fast float %2450, %2295
  %2452 = fmul fast float %2450, %2296
  %2453 = fmul fast float %2450, %2297
  %2454 = fadd fast float %2449, %2451
  %2455 = fmul fast float %2454, %2390
  %2456 = fadd fast float %2449, %2452
  %2457 = fmul fast float %2456, %2391
  %2458 = fadd fast float %2449, %2453
  %2459 = fmul fast float %2458, %2392
  %2460 = call float @dx.op.dot3.f32(i32 55, float %2315, float %2316, float %2317, float %2298, float %2299, float %2300)  ; Dot3(ax,ay,az,bx,by,bz)
  %2461 = call float @dx.op.unary.f32(i32 7, float %2460)  ; Saturate(value)
  %2462 = fmul fast float %2461, 5.000000e-01
  %2463 = fadd fast float %2462, 5.000000e-01
  %2464 = fmul fast float %2463, %2394
  %2465 = call float @dx.op.dot3.f32(i32 55, float %2315, float %2316, float %2317, float %2438, float %2439, float %2440)  ; Dot3(ax,ay,az,bx,by,bz)
  %2466 = call float @dx.op.unary.f32(i32 7, float %2465)  ; Saturate(value)
  %2467 = fmul fast float %2466, %2420
  %2468 = fadd fast float %2464, %2467
  %2469 = fsub fast float 5.000000e-01, %2462
  %2470 = fmul fast float %2469, %2295
  %2471 = fmul fast float %2469, %2296
  %2472 = fmul fast float %2469, %2297
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
  %2488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2489 = extractvalue %dx.types.CBufRet.f32 %2488, 0
  %2490 = fcmp fast ogt float %2489, 0.000000e+00
  %2491 = and i1 %2380, %2490
  br i1 %2491, label %2492, label %2696, !dx.controlflow.hints !108

; <label>:2492                                    ; preds = %2480
  %2493 = extractvalue %dx.types.CBufRet.f32 %2335, 2
  %2494 = fadd fast float %2493, %159
  %2495 = fmul fast float %2298, 3.200000e+01
  %2496 = fmul fast float %2299, 3.200000e+01
  %2497 = fadd fast float %2338, %2495
  %2498 = fadd fast float %2339, %2496
  %2499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2500 = extractvalue %dx.types.CBufRet.f32 %2499, 0
  %2501 = extractvalue %dx.types.CBufRet.f32 %2499, 1
  %2502 = fsub fast float %2497, %2500
  %2503 = fsub fast float %2498, %2501
  %2504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2505 = extractvalue %dx.types.CBufRet.f32 %2504, 0
  %2506 = extractvalue %dx.types.CBufRet.f32 %2504, 1
  %2507 = fmul fast float %2502, %2505
  %2508 = fmul fast float %2503, %2506
  %2509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2510 = extractvalue %dx.types.CBufRet.f32 %2509, 0
  %2511 = extractvalue %dx.types.CBufRet.f32 %2509, 1
  %2512 = fsub fast float %2338, %2510
  %2513 = fsub fast float %2339, %2511
  %2514 = fmul fast float %2512, %2512
  %2515 = fmul fast float %2513, %2513
  %2516 = fadd fast float %2514, %2515
  %2517 = call float @dx.op.unary.f32(i32 24, float %2516)  ; Sqrt(value)
  %2518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
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
  %2538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2539 = extractvalue %dx.types.CBufRet.f32 %2538, 2
  %2540 = extractvalue %dx.types.CBufRet.f32 %2538, 3
  %2541 = fmul fast float %2539, %2507
  %2542 = fmul fast float %2540, %2508
  %2543 = call float @dx.op.unary.f32(i32 27, float %2541)  ; Round_ni(value)
  %2544 = call float @dx.op.unary.f32(i32 27, float %2542)  ; Round_ni(value)
  %2545 = fptosi float %2543 to i32
  %2546 = fptosi float %2544 to i32
  %2547 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %2545, i32 %2546, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = lshr i32 %2548, 16
  %2550 = icmp eq i32 %2549, 65535
  br i1 %2550, label %2660, label %2551

; <label>:2551                                    ; preds = %2537
  %2552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2553 = extractvalue %dx.types.CBufRet.f32 %2552, 0
  %2554 = fmul fast float %2553, %2507
  %2555 = extractvalue %dx.types.CBufRet.f32 %2552, 1
  %2556 = fadd fast float %2554, %2555
  %2557 = extractvalue %dx.types.CBufRet.f32 %2552, 2
  %2558 = fmul fast float %2557, %2508
  %2559 = extractvalue %dx.types.CBufRet.f32 %2552, 3
  %2560 = fadd fast float %2558, %2559
  %2561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2556, float %2560, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2562 = extractvalue %dx.types.ResRet.f32 %2561, 0
  %2563 = extractvalue %dx.types.ResRet.f32 %2561, 1
  %2564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
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
  %2606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2602, float %2603, float %2605, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2607 = extractvalue %dx.types.ResRet.f32 %2606, 0
  %2608 = extractvalue %dx.types.ResRet.f32 %2606, 1
  %2609 = extractvalue %dx.types.ResRet.f32 %2606, 2
  %2610 = fadd fast float %2604, 5.312500e-01
  %2611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2602, float %2603, float %2610, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %2636 = call float @dx.op.dot3.f32(i32 55, float %2633, float %2634, float %2635, float %2298, float %2299, float %2300)  ; Dot3(ax,ay,az,bx,by,bz)
  %2637 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2636)  ; FMax(a,b)
  %2638 = fmul fast float %2637, 0x400C5BF8A0000000
  %2639 = fmul fast float %2607, %2527
  %2640 = fmul fast float %2639, %2638
  %2641 = fmul fast float %2608, %2527
  %2642 = fmul fast float %2641, %2638
  %2643 = fmul fast float %2609, %2527
  %2644 = fmul fast float %2643, %2638
  %2645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
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
  %2666 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2315, float %2316, float %2317)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %2700 = phi float [ %2684, %2660 ], [ 0.000000e+00, %2480 ]
  %2701 = phi float [ %2685, %2660 ], [ 0.000000e+00, %2480 ]
  %2702 = phi float [ %2686, %2660 ], [ 0.000000e+00, %2480 ]
  %2703 = phi float [ %2687, %2660 ], [ %2485, %2480 ]
  %2704 = phi float [ %2688, %2660 ], [ %2486, %2480 ]
  %2705 = phi float [ %2689, %2660 ], [ %2487, %2480 ]
  %2706 = fcmp fast olt float %2379, 1.000000e+00
  br i1 %2706, label %2707, label %3545, !dx.controlflow.hints !110

; <label>:2707                                    ; preds = %2696
  %2708 = extractvalue %dx.types.CBufRet.f32 %2335, 2
  %2709 = fadd fast float %2708, %159
  %2710 = fmul fast float %2298, 3.200000e+01
  %2711 = fmul fast float %2299, 3.200000e+01
  %2712 = fadd fast float %2338, %2710
  %2713 = fadd fast float %2339, %2711
  %2714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2715 = extractvalue %dx.types.CBufRet.f32 %2714, 0
  %2716 = extractvalue %dx.types.CBufRet.f32 %2714, 1
  %2717 = fsub fast float %2712, %2715
  %2718 = fsub fast float %2713, %2716
  %2719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2720 = extractvalue %dx.types.CBufRet.f32 %2719, 0
  %2721 = extractvalue %dx.types.CBufRet.f32 %2719, 1
  %2722 = fmul fast float %2717, %2720
  %2723 = fmul fast float %2718, %2721
  %2724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2725 = extractvalue %dx.types.CBufRet.f32 %2724, 0
  %2726 = fmul fast float %2722, %2725
  %2727 = extractvalue %dx.types.CBufRet.f32 %2724, 1
  %2728 = fadd fast float %2726, %2727
  %2729 = extractvalue %dx.types.CBufRet.f32 %2724, 2
  %2730 = fmul fast float %2729, %2723
  %2731 = extractvalue %dx.types.CBufRet.f32 %2724, 3
  %2732 = fadd fast float %2730, %2731
  %2733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2728, float %2732, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2734 = extractvalue %dx.types.ResRet.f32 %2733, 0
  %2735 = extractvalue %dx.types.ResRet.f32 %2733, 1
  %2736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2737 = extractvalue %dx.types.CBufRet.f32 %2736, 1
  %2738 = extractvalue %dx.types.CBufRet.f32 %2736, 0
  %2739 = fsub fast float %2737, %2738
  %2740 = fmul fast float %2739, %2734
  %2741 = fadd fast float %2740, %2738
  %2742 = extractvalue %dx.types.CBufRet.f32 %2736, 3
  %2743 = extractvalue %dx.types.CBufRet.f32 %2736, 2
  %2744 = fsub fast float %2742, %2743
  %2745 = fmul fast float %2744, %2735
  %2746 = fadd fast float %2745, %2743
  %2747 = fsub fast float %2709, %2741
  %2748 = fsub fast float %2746, %2741
  %2749 = fdiv fast float %2747, %2748
  %2750 = call float @dx.op.unary.f32(i32 7, float %2749)  ; Saturate(value)
  %2751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2752 = extractvalue %dx.types.CBufRet.f32 %2751, 0
  %2753 = fmul fast float %2752, %2750
  %2754 = extractvalue %dx.types.CBufRet.f32 %2751, 1
  %2755 = fadd fast float %2753, %2754
  %2756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2728, float %2732, float %2755, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2757 = extractvalue %dx.types.ResRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.ResRet.f32 %2756, 1
  %2759 = extractvalue %dx.types.ResRet.f32 %2756, 2
  %2760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2761 = extractvalue %dx.types.CBufRet.f32 %2760, 0
  %2762 = extractvalue %dx.types.CBufRet.f32 %2760, 1
  %2763 = extractvalue %dx.types.CBufRet.f32 %2760, 2
  %2764 = fmul fast float %2761, %2757
  %2765 = fmul fast float %2762, %2758
  %2766 = fmul fast float %2763, %2759
  %2767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2768 = extractvalue %dx.types.CBufRet.f32 %2767, 0
  %2769 = extractvalue %dx.types.CBufRet.f32 %2767, 1
  %2770 = extractvalue %dx.types.CBufRet.f32 %2767, 2
  %2771 = fadd fast float %2764, %2768
  %2772 = fadd fast float %2765, %2769
  %2773 = fadd fast float %2766, %2770
  %2774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2775 = extractvalue %dx.types.CBufRet.f32 %2774, 0
  %2776 = fmul fast float %2775, %2722
  %2777 = extractvalue %dx.types.CBufRet.f32 %2774, 1
  %2778 = fadd fast float %2776, %2777
  %2779 = extractvalue %dx.types.CBufRet.f32 %2774, 2
  %2780 = fmul fast float %2779, %2723
  %2781 = extractvalue %dx.types.CBufRet.f32 %2774, 3
  %2782 = fadd fast float %2780, %2781
  %2783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2784 = extractvalue %dx.types.CBufRet.f32 %2783, 0
  %2785 = extractvalue %dx.types.CBufRet.f32 %2783, 1
  %2786 = extractvalue %dx.types.CBufRet.f32 %2783, 2
  %2787 = extractvalue %dx.types.CBufRet.f32 %2783, 3
  %2788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2789 = extractvalue %dx.types.CBufRet.f32 %2788, 0
  %2790 = extractvalue %dx.types.CBufRet.f32 %2788, 1
  %2791 = extractvalue %dx.types.CBufRet.f32 %2788, 2
  %2792 = extractvalue %dx.types.CBufRet.f32 %2788, 3
  %2793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2778, float %2782, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2794 = extractvalue %dx.types.ResRet.f32 %2793, 0
  %2795 = extractvalue %dx.types.ResRet.f32 %2793, 1
  %2796 = extractvalue %dx.types.ResRet.f32 %2793, 2
  %2797 = extractvalue %dx.types.ResRet.f32 %2793, 3
  %2798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2778, float %2782, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2799 = extractvalue %dx.types.ResRet.f32 %2798, 0
  %2800 = extractvalue %dx.types.ResRet.f32 %2798, 1
  %2801 = extractvalue %dx.types.ResRet.f32 %2798, 2
  %2802 = extractvalue %dx.types.ResRet.f32 %2798, 3
  %2803 = fmul fast float %2794, %2771
  %2804 = fmul fast float %2799, %2771
  %2805 = fmul fast float %2801, %2771
  %2806 = fmul fast float %2797, %2771
  %2807 = fadd fast float %2803, %2784
  %2808 = fadd fast float %2804, %2785
  %2809 = fadd fast float %2805, %2786
  %2810 = fadd fast float %2806, %2787
  %2811 = fmul fast float %2795, %2771
  %2812 = fmul fast float %2800, %2771
  %2813 = fadd fast float %2811, %2789
  %2814 = fadd fast float %2812, %2790
  %2815 = fmul fast float %2796, %2771
  %2816 = fmul fast float %2802, %2771
  %2817 = fadd fast float %2815, %2791
  %2818 = fadd fast float %2816, %2792
  %2819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2778, float %2782, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2820 = extractvalue %dx.types.ResRet.f32 %2819, 0
  %2821 = extractvalue %dx.types.ResRet.f32 %2819, 1
  %2822 = extractvalue %dx.types.ResRet.f32 %2819, 2
  %2823 = extractvalue %dx.types.ResRet.f32 %2819, 3
  %2824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2778, float %2782, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2825 = extractvalue %dx.types.ResRet.f32 %2824, 0
  %2826 = extractvalue %dx.types.ResRet.f32 %2824, 1
  %2827 = extractvalue %dx.types.ResRet.f32 %2824, 2
  %2828 = extractvalue %dx.types.ResRet.f32 %2824, 3
  %2829 = fmul fast float %2820, %2772
  %2830 = fmul fast float %2825, %2772
  %2831 = fmul fast float %2827, %2772
  %2832 = fmul fast float %2823, %2772
  %2833 = fadd fast float %2807, %2829
  %2834 = fadd fast float %2808, %2830
  %2835 = fadd fast float %2809, %2831
  %2836 = fadd fast float %2810, %2832
  %2837 = fmul fast float %2821, %2772
  %2838 = fmul fast float %2826, %2772
  %2839 = fadd fast float %2813, %2837
  %2840 = fadd fast float %2814, %2838
  %2841 = fmul fast float %2822, %2772
  %2842 = fmul fast float %2828, %2772
  %2843 = fadd fast float %2817, %2841
  %2844 = fadd fast float %2818, %2842
  %2845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2778, float %2782, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2846 = extractvalue %dx.types.ResRet.f32 %2845, 0
  %2847 = extractvalue %dx.types.ResRet.f32 %2845, 1
  %2848 = extractvalue %dx.types.ResRet.f32 %2845, 2
  %2849 = extractvalue %dx.types.ResRet.f32 %2845, 3
  %2850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2778, float %2782, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2851 = extractvalue %dx.types.ResRet.f32 %2850, 0
  %2852 = extractvalue %dx.types.ResRet.f32 %2850, 1
  %2853 = extractvalue %dx.types.ResRet.f32 %2850, 2
  %2854 = extractvalue %dx.types.ResRet.f32 %2850, 3
  %2855 = fmul fast float %2846, %2773
  %2856 = fmul fast float %2851, %2773
  %2857 = fmul fast float %2853, %2773
  %2858 = fmul fast float %2849, %2773
  %2859 = fadd fast float %2833, %2855
  %2860 = fadd fast float %2834, %2856
  %2861 = fadd fast float %2835, %2857
  %2862 = fadd fast float %2836, %2858
  %2863 = fmul fast float %2847, %2773
  %2864 = fmul fast float %2852, %2773
  %2865 = fadd fast float %2839, %2863
  %2866 = fadd fast float %2840, %2864
  %2867 = fmul fast float %2848, %2773
  %2868 = fmul fast float %2854, %2773
  %2869 = fadd fast float %2843, %2867
  %2870 = fadd fast float %2844, %2868
  %2871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2872 = extractvalue %dx.types.CBufRet.f32 %2871, 0
  %2873 = fsub fast float %2338, %2872
  %2874 = fsub fast float %2715, %2338
  %2875 = call float @dx.op.binary.f32(i32 35, float %2874, float %2873)  ; FMax(a,b)
  %2876 = extractvalue %dx.types.CBufRet.f32 %2871, 1
  %2877 = fsub fast float %2339, %2876
  %2878 = fsub fast float %2716, %2339
  %2879 = call float @dx.op.binary.f32(i32 35, float %2878, float %2877)  ; FMax(a,b)
  %2880 = call float @dx.op.binary.f32(i32 35, float %2875, float %2879)  ; FMax(a,b)
  %2881 = extractvalue %dx.types.CBufRet.f32 %2719, 3
  %2882 = fmul fast float %2881, %2880
  %2883 = call float @dx.op.unary.f32(i32 7, float %2882)  ; Saturate(value)
  %2884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2885 = extractvalue %dx.types.CBufRet.f32 %2884, 0
  %2886 = extractvalue %dx.types.CBufRet.f32 %2884, 1
  %2887 = extractvalue %dx.types.CBufRet.f32 %2884, 2
  %2888 = extractvalue %dx.types.CBufRet.f32 %2884, 3
  %2889 = fsub fast float %2885, %2859
  %2890 = fsub fast float %2886, %2860
  %2891 = fsub fast float %2887, %2861
  %2892 = fsub fast float %2888, %2862
  %2893 = fmul fast float %2889, %2883
  %2894 = fmul fast float %2890, %2883
  %2895 = fmul fast float %2891, %2883
  %2896 = fmul fast float %2892, %2883
  %2897 = fadd fast float %2893, %2859
  %2898 = fadd fast float %2894, %2860
  %2899 = fadd fast float %2895, %2861
  %2900 = fadd fast float %2896, %2862
  %2901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2902 = extractvalue %dx.types.CBufRet.f32 %2901, 0
  %2903 = extractvalue %dx.types.CBufRet.f32 %2901, 1
  %2904 = fsub fast float %2902, %2865
  %2905 = fsub fast float %2903, %2866
  %2906 = fmul fast float %2904, %2883
  %2907 = fmul fast float %2905, %2883
  %2908 = fadd fast float %2906, %2865
  %2909 = fadd fast float %2907, %2866
  %2910 = extractvalue %dx.types.CBufRet.f32 %2901, 2
  %2911 = extractvalue %dx.types.CBufRet.f32 %2901, 3
  %2912 = fsub fast float %2910, %2869
  %2913 = fsub fast float %2911, %2870
  %2914 = fmul fast float %2912, %2883
  %2915 = fmul fast float %2913, %2883
  %2916 = fadd fast float %2914, %2869
  %2917 = fadd fast float %2915, %2870
  %2918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2919 = extractvalue %dx.types.CBufRet.f32 %2918, 0
  %2920 = fmul fast float %2919, %2897
  %2921 = fmul fast float %2919, %2898
  %2922 = fmul fast float %2919, %2899
  %2923 = fmul fast float %2919, %2900
  %2924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2925 = extractvalue %dx.types.CBufRet.f32 %2924, 0
  %2926 = fmul fast float %2925, %2908
  %2927 = fmul fast float %2925, %2909
  %2928 = fadd fast float %2926, %2920
  %2929 = fadd fast float %2927, %2922
  %2930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2931 = extractvalue %dx.types.CBufRet.f32 %2930, 0
  %2932 = fmul fast float %2931, %2916
  %2933 = fmul fast float %2931, %2917
  %2934 = fadd fast float %2928, %2932
  %2935 = fadd fast float %2929, %2933
  %2936 = extractvalue %dx.types.CBufRet.f32 %2918, 1
  %2937 = fmul fast float %2936, %2897
  %2938 = fmul fast float %2936, %2898
  %2939 = fmul fast float %2936, %2899
  %2940 = fmul fast float %2936, %2900
  %2941 = extractvalue %dx.types.CBufRet.f32 %2924, 1
  %2942 = fmul fast float %2941, %2908
  %2943 = fmul fast float %2941, %2909
  %2944 = fadd fast float %2942, %2937
  %2945 = fadd fast float %2943, %2939
  %2946 = extractvalue %dx.types.CBufRet.f32 %2930, 1
  %2947 = fmul fast float %2946, %2916
  %2948 = fmul fast float %2946, %2917
  %2949 = fadd fast float %2944, %2947
  %2950 = fadd fast float %2945, %2948
  %2951 = extractvalue %dx.types.CBufRet.f32 %2918, 2
  %2952 = fmul fast float %2951, %2897
  %2953 = fmul fast float %2951, %2898
  %2954 = fmul fast float %2951, %2899
  %2955 = fmul fast float %2951, %2900
  %2956 = extractvalue %dx.types.CBufRet.f32 %2924, 2
  %2957 = fmul fast float %2956, %2908
  %2958 = fmul fast float %2956, %2909
  %2959 = fadd fast float %2957, %2952
  %2960 = fadd fast float %2958, %2954
  %2961 = extractvalue %dx.types.CBufRet.f32 %2930, 2
  %2962 = fmul fast float %2961, %2916
  %2963 = fmul fast float %2961, %2917
  %2964 = fadd fast float %2959, %2962
  %2965 = fadd fast float %2960, %2963
  %2966 = fmul fast float %2953, %2953
  %2967 = fmul fast float %2965, %2965
  %2968 = fmul fast float %2955, %2955
  %2969 = fadd fast float %2968, %2966
  %2970 = fadd fast float %2969, %2967
  %2971 = call float @dx.op.unary.f32(i32 24, float %2970)  ; Sqrt(value)
  %2972 = fcmp fast ugt float %2971, 0.000000e+00
  br i1 %2972, label %2973, label %2988

; <label>:2973                                    ; preds = %2707
  %2974 = fsub fast float -0.000000e+00, %2955
  %2975 = fdiv fast float %2974, %2971
  %2976 = fsub fast float -0.000000e+00, %2953
  %2977 = fdiv fast float %2976, %2971
  %2978 = fdiv fast float %2965, %2971
  %2979 = fmul fast float %2964, 0x3FE279A760000000
  %2980 = fmul fast float %2977, %2953
  %2981 = fmul fast float %2978, %2965
  %2982 = fmul fast float %2975, %2955
  %2983 = fadd fast float %2980, %2982
  %2984 = fsub fast float %2983, %2981
  %2985 = call float @dx.op.unary.f32(i32 6, float %2984)  ; FAbs(value)
  %2986 = fadd fast float %2985, 0x3DDB7CDFE0000000
  %2987 = fdiv fast float %2979, %2986
  br label %2988

; <label>:2988                                    ; preds = %2973, %2707
  %2989 = phi float [ %2987, %2973 ], [ 1.000000e+00, %2707 ]
  %2990 = fmul fast float %2938, %2938
  %2991 = fmul fast float %2950, %2950
  %2992 = fmul fast float %2940, %2940
  %2993 = fadd fast float %2992, %2990
  %2994 = fadd fast float %2993, %2991
  %2995 = call float @dx.op.unary.f32(i32 24, float %2994)  ; Sqrt(value)
  %2996 = fcmp fast ugt float %2995, 0.000000e+00
  br i1 %2996, label %2997, label %3012

; <label>:2997                                    ; preds = %2988
  %2998 = fsub fast float -0.000000e+00, %2940
  %2999 = fdiv fast float %2998, %2995
  %3000 = fsub fast float -0.000000e+00, %2938
  %3001 = fdiv fast float %3000, %2995
  %3002 = fdiv fast float %2950, %2995
  %3003 = fmul fast float %2949, 0x3FE279A760000000
  %3004 = fmul fast float %3001, %2938
  %3005 = fmul fast float %3002, %2950
  %3006 = fmul fast float %2999, %2940
  %3007 = fadd fast float %3004, %3006
  %3008 = fsub fast float %3007, %3005
  %3009 = call float @dx.op.unary.f32(i32 6, float %3008)  ; FAbs(value)
  %3010 = fadd fast float %3009, 0x3DDB7CDFE0000000
  %3011 = fdiv fast float %3003, %3010
  br label %3012

; <label>:3012                                    ; preds = %2997, %2988
  %3013 = phi float [ %3011, %2997 ], [ 1.000000e+00, %2988 ]
  %3014 = call float @dx.op.binary.f32(i32 36, float %3013, float %2989)  ; FMin(a,b)
  %3015 = fmul fast float %2921, %2921
  %3016 = fmul fast float %2935, %2935
  %3017 = fmul fast float %2923, %2923
  %3018 = fadd fast float %3017, %3015
  %3019 = fadd fast float %3018, %3016
  %3020 = call float @dx.op.unary.f32(i32 24, float %3019)  ; Sqrt(value)
  %3021 = fcmp fast ugt float %3020, 0.000000e+00
  br i1 %3021, label %3022, label %3037

; <label>:3022                                    ; preds = %3012
  %3023 = fsub fast float -0.000000e+00, %2923
  %3024 = fdiv fast float %3023, %3020
  %3025 = fsub fast float -0.000000e+00, %2921
  %3026 = fdiv fast float %3025, %3020
  %3027 = fdiv fast float %2935, %3020
  %3028 = fmul fast float %2934, 0x3FE279A760000000
  %3029 = fmul fast float %3026, %2921
  %3030 = fmul fast float %3027, %2935
  %3031 = fmul fast float %3024, %2923
  %3032 = fadd fast float %3029, %3031
  %3033 = fsub fast float %3032, %3030
  %3034 = call float @dx.op.unary.f32(i32 6, float %3033)  ; FAbs(value)
  %3035 = fadd fast float %3034, 0x3DDB7CDFE0000000
  %3036 = fdiv fast float %3028, %3035
  br label %3037

; <label>:3037                                    ; preds = %3022, %3012
  %3038 = phi float [ %3036, %3022 ], [ 1.000000e+00, %3012 ]
  %3039 = call float @dx.op.binary.f32(i32 36, float %3038, float %3014)  ; FMin(a,b)
  %3040 = call float @dx.op.unary.f32(i32 7, float %3039)  ; Saturate(value)
  %3041 = fcmp fast olt float %3040, 1.000000e+00
  br i1 %3041, label %3042, label %3052

; <label>:3042                                    ; preds = %3037
  %3043 = fmul fast float %3040, %2921
  %3044 = fmul fast float %3040, %2935
  %3045 = fmul fast float %3040, %2923
  %3046 = fmul fast float %3040, %2938
  %3047 = fmul fast float %3040, %2950
  %3048 = fmul fast float %3040, %2940
  %3049 = fmul fast float %3040, %2953
  %3050 = fmul fast float %3040, %2965
  %3051 = fmul fast float %3040, %2955
  br label %3052

; <label>:3052                                    ; preds = %3042, %3037
  %3053 = phi float [ %3049, %3042 ], [ %2953, %3037 ]
  %3054 = phi float [ %3050, %3042 ], [ %2965, %3037 ]
  %3055 = phi float [ %3051, %3042 ], [ %2955, %3037 ]
  %3056 = phi float [ %3046, %3042 ], [ %2938, %3037 ]
  %3057 = phi float [ %3047, %3042 ], [ %2950, %3037 ]
  %3058 = phi float [ %3048, %3042 ], [ %2940, %3037 ]
  %3059 = phi float [ %3043, %3042 ], [ %2921, %3037 ]
  %3060 = phi float [ %3044, %3042 ], [ %2935, %3037 ]
  %3061 = phi float [ %3045, %3042 ], [ %2923, %3037 ]
  %3062 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2934)  ; FMax(a,b)
  %3063 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2949)  ; FMax(a,b)
  %3064 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2964)  ; FMax(a,b)
  %3065 = fcmp fast oge float %2722, 0.000000e+00
  %3066 = and i1 %3065, %2490
  %3067 = fcmp fast ole float %2722, 1.000000e+00
  %3068 = and i1 %3067, %3066
  %3069 = fcmp fast oge float %2723, 0.000000e+00
  %3070 = and i1 %3069, %3068
  %3071 = fcmp fast ole float %2723, 1.000000e+00
  %3072 = and i1 %3071, %3070
  br i1 %3072, label %3073, label %3218, !dx.controlflow.hints !111

; <label>:3073                                    ; preds = %3052
  %3074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3075 = extractvalue %dx.types.CBufRet.f32 %3074, 2
  %3076 = extractvalue %dx.types.CBufRet.f32 %3074, 3
  %3077 = fmul fast float %3075, %2722
  %3078 = fmul fast float %3076, %2723
  %3079 = call float @dx.op.unary.f32(i32 27, float %3077)  ; Round_ni(value)
  %3080 = call float @dx.op.unary.f32(i32 27, float %3078)  ; Round_ni(value)
  %3081 = fptosi float %3079 to i32
  %3082 = fptosi float %3080 to i32
  %3083 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %3081, i32 %3082, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = and i32 %3084, 65535
  %3086 = lshr i32 %3084, 16
  %3087 = icmp eq i32 %3085, 65535
  br i1 %3087, label %3124, label %3088

; <label>:3088                                    ; preds = %3073
  %3089 = extractvalue %dx.types.CBufRet.f32 %2488, 1
  %3090 = extractvalue %dx.types.CBufRet.f32 %3074, 0
  %3091 = extractvalue %dx.types.CBufRet.f32 %3074, 1
  %3092 = fmul fast float %3090, %2722
  %3093 = fmul fast float %3091, %2723
  %3094 = fmul fast float %3092, 1.250000e-01
  %3095 = fmul fast float %3093, 1.250000e-01
  %3096 = call float @dx.op.unary.f32(i32 27, float %3094)  ; Round_ni(value)
  %3097 = call float @dx.op.unary.f32(i32 27, float %3095)  ; Round_ni(value)
  %3098 = fmul fast float %3096, 8.000000e+00
  %3099 = fmul fast float %3097, 8.000000e+00
  %3100 = and i32 %3084, 255
  %3101 = lshr i32 %3084, 8
  %3102 = and i32 %3101, 255
  %3103 = mul nuw nsw i32 %3100, 9
  %3104 = uitofp i32 %3103 to float
  %3105 = mul nuw nsw i32 %3102, 9
  %3106 = uitofp i32 %3105 to float
  %3107 = fadd fast float %3104, 5.000000e-01
  %3108 = fadd fast float %3107, %3092
  %3109 = fsub fast float %3108, %3098
  %3110 = fadd fast float %3106, 5.000000e-01
  %3111 = fadd fast float %3110, %3093
  %3112 = fsub fast float %3111, %3099
  %3113 = fdiv fast float %3109, %2489
  %3114 = fdiv fast float %3112, %3089
  %3115 = fmul fast float %2750, 4.375000e-01
  %3116 = fadd fast float %3115, 3.125000e-02
  %3117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3113, float %3114, float %3116, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3118 = extractvalue %dx.types.ResRet.f32 %3117, 0
  %3119 = extractvalue %dx.types.ResRet.f32 %3117, 1
  %3120 = extractvalue %dx.types.ResRet.f32 %3117, 2
  %3121 = fadd fast float %3118, %3062
  %3122 = fadd fast float %3119, %3063
  %3123 = fadd fast float %3120, %3064
  br label %3124

; <label>:3124                                    ; preds = %3088, %3073
  %3125 = phi float [ %3123, %3088 ], [ %3064, %3073 ]
  %3126 = phi float [ %3122, %3088 ], [ %3063, %3073 ]
  %3127 = phi float [ %3121, %3088 ], [ %3062, %3073 ]
  %3128 = icmp eq i32 %3086, 65535
  br i1 %3128, label %3218, label %3129

; <label>:3129                                    ; preds = %3124
  %3130 = extractvalue %dx.types.CBufRet.f32 %2488, 1
  %3131 = extractvalue %dx.types.CBufRet.f32 %3074, 0
  %3132 = extractvalue %dx.types.CBufRet.f32 %3074, 1
  %3133 = fmul fast float %3131, %2722
  %3134 = fmul fast float %3132, %2723
  %3135 = fmul fast float %3133, 1.250000e-01
  %3136 = fmul fast float %3134, 1.250000e-01
  %3137 = call float @dx.op.unary.f32(i32 27, float %3135)  ; Round_ni(value)
  %3138 = call float @dx.op.unary.f32(i32 27, float %3136)  ; Round_ni(value)
  %3139 = fmul fast float %3137, 8.000000e+00
  %3140 = fmul fast float %3138, 8.000000e+00
  %3141 = fsub fast float %3133, %3139
  %3142 = fsub fast float %3134, %3140
  %3143 = fadd fast float %3141, 5.000000e-01
  %3144 = fadd fast float %3142, 5.000000e-01
  %3145 = and i32 %3086, 255
  %3146 = lshr i32 %3084, 24
  %3147 = mul nuw nsw i32 %3145, 9
  %3148 = uitofp i32 %3147 to float
  %3149 = mul nuw nsw i32 %3146, 9
  %3150 = uitofp i32 %3149 to float
  %3151 = fadd fast float %3143, %3148
  %3152 = fadd fast float %3144, %3150
  %3153 = fdiv fast float %3151, %2489
  %3154 = fdiv fast float %3152, %3130
  %3155 = fmul fast float %2750, 4.375000e-01
  %3156 = fadd fast float %3155, 3.125000e-02
  %3157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3153, float %3154, float %3156, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3158 = extractvalue %dx.types.ResRet.f32 %3157, 0
  %3159 = extractvalue %dx.types.ResRet.f32 %3157, 1
  %3160 = extractvalue %dx.types.ResRet.f32 %3157, 2
  %3161 = fadd fast float %3155, 5.312500e-01
  %3162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3153, float %3154, float %3161, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3163 = extractvalue %dx.types.ResRet.f32 %3162, 0
  %3164 = extractvalue %dx.types.ResRet.f32 %3162, 1
  %3165 = extractvalue %dx.types.ResRet.f32 %3162, 2
  %3166 = fmul fast float %3163, 2.000000e+00
  %3167 = fmul fast float %3164, 2.000000e+00
  %3168 = fmul fast float %3165, 2.000000e+00
  %3169 = fadd fast float %3166, -1.000000e+00
  %3170 = fadd fast float %3167, -1.000000e+00
  %3171 = fadd fast float %3168, -1.000000e+00
  %3172 = fmul fast float %3169, %3169
  %3173 = fmul fast float %3170, %3170
  %3174 = fadd fast float %3172, %3173
  %3175 = fmul fast float %3171, %3171
  %3176 = fadd fast float %3174, %3175
  %3177 = call float @dx.op.unary.f32(i32 24, float %3176)  ; Sqrt(value)
  %3178 = fcmp fast ogt float %3177, 0.000000e+00
  br i1 %3178, label %3179, label %3183

; <label>:3179                                    ; preds = %3129
  %3180 = fdiv fast float %3169, %3177
  %3181 = fdiv fast float %3170, %3177
  %3182 = fdiv fast float %3171, %3177
  br label %3183

; <label>:3183                                    ; preds = %3179, %3129
  %3184 = phi float [ %3180, %3179 ], [ 0.000000e+00, %3129 ]
  %3185 = phi float [ %3181, %3179 ], [ 0.000000e+00, %3129 ]
  %3186 = phi float [ %3182, %3179 ], [ 0.000000e+00, %3129 ]
  %3187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3188 = extractvalue %dx.types.CBufRet.f32 %3187, 0
  %3189 = extractvalue %dx.types.CBufRet.f32 %3187, 1
  %3190 = fsub fast float %2338, %3188
  %3191 = fsub fast float %2339, %3189
  %3192 = fmul fast float %3190, %3190
  %3193 = fmul fast float %3191, %3191
  %3194 = fadd fast float %3192, %3193
  %3195 = call float @dx.op.unary.f32(i32 24, float %3194)  ; Sqrt(value)
  %3196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3197 = extractvalue %dx.types.CBufRet.f32 %3196, 0
  %3198 = extractvalue %dx.types.CBufRet.f32 %3196, 1
  %3199 = fsub fast float %3195, %3197
  %3200 = fdiv fast float %3199, %3198
  %3201 = call float @dx.op.unary.f32(i32 7, float %3200)  ; Saturate(value)
  %3202 = fmul fast float %3201, 2.000000e+00
  %3203 = fsub fast float 3.000000e+00, %3202
  %3204 = fmul fast float %3201, %3201
  %3205 = fmul fast float %3204, %3203
  %3206 = call float @dx.op.dot3.f32(i32 55, float %3184, float %3185, float %3186, float %2298, float %2299, float %2300)  ; Dot3(ax,ay,az,bx,by,bz)
  %3207 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3206)  ; FMax(a,b)
  %3208 = fmul fast float %3207, 0x400C5BF8A0000000
  %3209 = fmul fast float %3205, %3158
  %3210 = fmul fast float %3209, %3208
  %3211 = fadd fast float %3210, %3127
  %3212 = fmul fast float %3205, %3159
  %3213 = fmul fast float %3212, %3208
  %3214 = fadd fast float %3213, %3126
  %3215 = fmul fast float %3205, %3160
  %3216 = fmul fast float %3215, %3208
  %3217 = fadd fast float %3216, %3125
  br label %3218

; <label>:3218                                    ; preds = %3183, %3124, %3052
  %3219 = phi float [ %3217, %3183 ], [ %3125, %3124 ], [ %3064, %3052 ]
  %3220 = phi float [ %3214, %3183 ], [ %3126, %3124 ], [ %3063, %3052 ]
  %3221 = phi float [ %3211, %3183 ], [ %3127, %3124 ], [ %3062, %3052 ]
  %3222 = fcmp fast ogt float %2709, %2746
  %3223 = and i1 %3065, %3222
  %3224 = and i1 %3067, %3223
  %3225 = and i1 %3069, %3224
  %3226 = and i1 %3071, %3225
  br i1 %3226, label %3227, label %3284, !dx.controlflow.hints !112

; <label>:3227                                    ; preds = %3218
  %3228 = fmul fast float %2748, 0x3FC24924A0000000
  %3229 = fsub fast float %2709, %2746
  %3230 = fdiv fast float %3229, %3228
  %3231 = call float @dx.op.unary.f32(i32 7, float %3230)  ; Saturate(value)
  %3232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3233 = extractvalue %dx.types.CBufRet.f32 %3232, 0
  %3234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3235 = extractvalue %dx.types.CBufRet.f32 %3234, 0
  %3236 = extractvalue %dx.types.CBufRet.f32 %3234, 1
  %3237 = extractvalue %dx.types.CBufRet.f32 %3234, 2
  %3238 = fsub fast float %3233, %3221
  %3239 = fsub fast float %3235, %3059
  %3240 = fsub fast float %3236, %3060
  %3241 = fsub fast float %3237, %3061
  %3242 = fmul fast float %3238, %3231
  %3243 = fmul fast float %3239, %3231
  %3244 = fmul fast float %3240, %3231
  %3245 = fmul fast float %3241, %3231
  %3246 = fadd fast float %3242, %3221
  %3247 = fadd fast float %3243, %3059
  %3248 = fadd fast float %3244, %3060
  %3249 = fadd fast float %3245, %3061
  %3250 = extractvalue %dx.types.CBufRet.f32 %3232, 1
  %3251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3252 = extractvalue %dx.types.CBufRet.f32 %3251, 0
  %3253 = extractvalue %dx.types.CBufRet.f32 %3251, 1
  %3254 = extractvalue %dx.types.CBufRet.f32 %3251, 2
  %3255 = fsub fast float %3250, %3220
  %3256 = fsub fast float %3252, %3056
  %3257 = fsub fast float %3253, %3057
  %3258 = fsub fast float %3254, %3058
  %3259 = fmul fast float %3255, %3231
  %3260 = fmul fast float %3256, %3231
  %3261 = fmul fast float %3257, %3231
  %3262 = fmul fast float %3258, %3231
  %3263 = fadd fast float %3259, %3220
  %3264 = fadd fast float %3260, %3056
  %3265 = fadd fast float %3261, %3057
  %3266 = fadd fast float %3262, %3058
  %3267 = extractvalue %dx.types.CBufRet.f32 %3232, 2
  %3268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3269 = extractvalue %dx.types.CBufRet.f32 %3268, 0
  %3270 = extractvalue %dx.types.CBufRet.f32 %3268, 1
  %3271 = extractvalue %dx.types.CBufRet.f32 %3268, 2
  %3272 = fsub fast float %3267, %3219
  %3273 = fsub fast float %3269, %3053
  %3274 = fsub fast float %3270, %3054
  %3275 = fsub fast float %3271, %3055
  %3276 = fmul fast float %3272, %3231
  %3277 = fmul fast float %3273, %3231
  %3278 = fmul fast float %3274, %3231
  %3279 = fmul fast float %3275, %3231
  %3280 = fadd fast float %3276, %3219
  %3281 = fadd fast float %3277, %3053
  %3282 = fadd fast float %3278, %3054
  %3283 = fadd fast float %3279, %3055
  br label %3284

; <label>:3284                                    ; preds = %3227, %3218
  %3285 = phi float [ %3280, %3227 ], [ %3219, %3218 ]
  %3286 = phi float [ %3281, %3227 ], [ %3053, %3218 ]
  %3287 = phi float [ %3282, %3227 ], [ %3054, %3218 ]
  %3288 = phi float [ %3283, %3227 ], [ %3055, %3218 ]
  %3289 = phi float [ %3263, %3227 ], [ %3220, %3218 ]
  %3290 = phi float [ %3264, %3227 ], [ %3056, %3218 ]
  %3291 = phi float [ %3265, %3227 ], [ %3057, %3218 ]
  %3292 = phi float [ %3266, %3227 ], [ %3058, %3218 ]
  %3293 = phi float [ %3246, %3227 ], [ %3221, %3218 ]
  %3294 = phi float [ %3247, %3227 ], [ %3059, %3218 ]
  %3295 = phi float [ %3248, %3227 ], [ %3060, %3218 ]
  %3296 = phi float [ %3249, %3227 ], [ %3061, %3218 ]
  %3297 = extractvalue %dx.types.CBufRet.f32 %2871, 3
  %3298 = fmul fast float %3297, %3293
  %3299 = fmul fast float %3297, %3289
  %3300 = fmul fast float %3297, %3285
  %3301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3302 = extractvalue %dx.types.CBufRet.f32 %3301, 3
  %3303 = fmul fast float %3298, %3302
  %3304 = fmul fast float %3299, %3302
  %3305 = fmul fast float %3300, %3302
  %3306 = call float @dx.op.dot3.f32(i32 55, float %3303, float %3304, float %3305, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3307 = fmul fast float %3306, 0x3FD20DD760000000
  %3308 = fmul fast float %3294, 1.500000e+00
  %3309 = fmul fast float %3308, %3297
  %3310 = fmul fast float %3309, %3302
  %3311 = fmul fast float %3295, 1.500000e+00
  %3312 = fmul fast float %3311, %3297
  %3313 = fmul fast float %3312, %3302
  %3314 = fmul fast float %3296, 1.500000e+00
  %3315 = fmul fast float %3314, %3297
  %3316 = fmul fast float %3315, %3302
  %3317 = fmul fast float %3290, 1.500000e+00
  %3318 = fmul fast float %3317, %3297
  %3319 = fmul fast float %3318, %3302
  %3320 = fmul fast float %3291, 1.500000e+00
  %3321 = fmul fast float %3320, %3297
  %3322 = fmul fast float %3321, %3302
  %3323 = fmul fast float %3292, 1.500000e+00
  %3324 = fmul fast float %3323, %3297
  %3325 = fmul fast float %3324, %3302
  %3326 = fmul fast float %3286, 1.500000e+00
  %3327 = fmul fast float %3326, %3297
  %3328 = fmul fast float %3327, %3302
  %3329 = fmul fast float %3287, 1.500000e+00
  %3330 = fmul fast float %3329, %3297
  %3331 = fmul fast float %3330, %3302
  %3332 = fmul fast float %3288, 1.500000e+00
  %3333 = fmul fast float %3332, %3297
  %3334 = fmul fast float %3333, %3302
  %3335 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3303)  ; FMax(a,b)
  %3336 = call float @dx.op.dot3.f32(i32 55, float %3310, float %3313, float %3316, float %3310, float %3313, float %3316)  ; Dot3(ax,ay,az,bx,by,bz)
  %3337 = fcmp fast oeq float %3336, 0.000000e+00
  %3338 = fcmp fast oeq float %3335, 0.000000e+00
  %3339 = or i1 %3338, %3337
  br i1 %3339, label %3369, label %3340

; <label>:3340                                    ; preds = %3284
  %3341 = fsub fast float -0.000000e+00, %3316
  %3342 = fsub fast float -0.000000e+00, %3310
  %3343 = call float @dx.op.unary.f32(i32 24, float %3336)  ; Sqrt(value)
  %3344 = fdiv fast float %3343, %3335
  %3345 = fcmp fast ogt float %3344, 0x3FFB6F8900000000
  %3346 = select i1 %3345, float 0x3FFB6F8900000000, float %3344
  %3347 = fmul fast float %3346, 0x3FE8A23460000000
  %3348 = call float @dx.op.unary.f32(i32 7, float %3347)  ; Saturate(value)
  %3349 = call float @dx.op.binary.f32(i32 35, float %3346, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3350 = fmul fast float %3348, %3335
  %3351 = fmul fast float %3349, 0x3FF279A740000000
  %3352 = fadd fast float %3351, -1.000000e+00
  %3353 = call float @dx.op.dot3.f32(i32 55, float %3341, float %3342, float %3313, float %3341, float %3342, float %3313)  ; Dot3(ax,ay,az,bx,by,bz)
  %3354 = call float @dx.op.unary.f32(i32 25, float %3353)  ; Rsqrt(value)
  %3355 = fmul fast float %3354, %3341
  %3356 = fmul fast float %3354, %3342
  %3357 = fmul fast float %3354, %3313
  %3358 = fmul fast float %3352, %3352
  %3359 = fsub fast float 1.000000e+00, %3358
  %3360 = fmul fast float %3349, 0x40005F8BE0000000
  %3361 = fsub fast float 0x400C5BF8A0000000, %3360
  %3362 = fdiv fast float %3350, %3361
  %3363 = fmul fast float %3362, 0x3FEE31C3C0000000
  %3364 = fmul fast float %3363, %3359
  %3365 = fmul fast float %3349, 0x3FDACB7480000000
  %3366 = fadd fast float %3365, 0xBFD7347680000000
  %3367 = fmul fast float %3366, %3362
  %3368 = fmul fast float %3367, %3359
  br label %3369

; <label>:3369                                    ; preds = %3340, %3284
  %3370 = phi float [ %3355, %3340 ], [ 0.000000e+00, %3284 ]
  %3371 = phi float [ %3356, %3340 ], [ 0.000000e+00, %3284 ]
  %3372 = phi float [ %3357, %3340 ], [ 0.000000e+00, %3284 ]
  %3373 = phi float [ %3364, %3340 ], [ 0.000000e+00, %3284 ]
  %3374 = phi float [ %3368, %3340 ], [ 0.000000e+00, %3284 ]
  %3375 = call float @dx.op.dot3.f32(i32 55, float %3370, float %3371, float %3372, float %2298, float %2299, float %2300)  ; Dot3(ax,ay,az,bx,by,bz)
  %3376 = fmul fast float %3375, 0x3FDF454380000000
  %3377 = fmul fast float %3375, %3375
  %3378 = fmul fast float %3377, 0x3FEE471020000000
  %3379 = fadd fast float %3378, 0xBFD42F6020000000
  %3380 = fmul fast float %3335, 0x3FD20DD760000000
  %3381 = fmul fast float %3379, %3374
  %3382 = fadd fast float %3381, %3380
  %3383 = fmul fast float %3376, %3373
  %3384 = fadd fast float %3382, %3383
  %3385 = fsub fast float %3382, %3383
  %3386 = call float @dx.op.dot3.f32(i32 55, float %3370, float %3371, float %3372, float %2315, float %2316, float %2317)  ; Dot3(ax,ay,az,bx,by,bz)
  %3387 = fmul fast float %3386, 0x3FDF454380000000
  %3388 = fmul fast float %3386, %3386
  %3389 = fmul fast float %3388, 0x3FEE471020000000
  %3390 = fadd fast float %3389, 0xBFD42F6020000000
  %3391 = call float @dx.op.dot3.f32(i32 55, float %3335, float %3373, float %3374, float 0x3FD20DD760000000, float %3387, float %3390)  ; Dot3(ax,ay,az,bx,by,bz)
  %3392 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3304)  ; FMax(a,b)
  %3393 = call float @dx.op.dot3.f32(i32 55, float %3319, float %3322, float %3325, float %3319, float %3322, float %3325)  ; Dot3(ax,ay,az,bx,by,bz)
  %3394 = fcmp fast oeq float %3393, 0.000000e+00
  %3395 = fcmp fast oeq float %3392, 0.000000e+00
  %3396 = or i1 %3395, %3394
  br i1 %3396, label %3426, label %3397

; <label>:3397                                    ; preds = %3369
  %3398 = fsub fast float -0.000000e+00, %3325
  %3399 = fsub fast float -0.000000e+00, %3319
  %3400 = call float @dx.op.unary.f32(i32 24, float %3393)  ; Sqrt(value)
  %3401 = fdiv fast float %3400, %3392
  %3402 = fcmp fast ogt float %3401, 0x3FFB6F8900000000
  %3403 = select i1 %3402, float 0x3FFB6F8900000000, float %3401
  %3404 = fmul fast float %3403, 0x3FE8A23460000000
  %3405 = call float @dx.op.unary.f32(i32 7, float %3404)  ; Saturate(value)
  %3406 = call float @dx.op.binary.f32(i32 35, float %3403, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3407 = fmul fast float %3405, %3392
  %3408 = fmul fast float %3406, 0x3FF279A740000000
  %3409 = fadd fast float %3408, -1.000000e+00
  %3410 = call float @dx.op.dot3.f32(i32 55, float %3398, float %3399, float %3322, float %3398, float %3399, float %3322)  ; Dot3(ax,ay,az,bx,by,bz)
  %3411 = call float @dx.op.unary.f32(i32 25, float %3410)  ; Rsqrt(value)
  %3412 = fmul fast float %3411, %3398
  %3413 = fmul fast float %3411, %3399
  %3414 = fmul fast float %3411, %3322
  %3415 = fmul fast float %3409, %3409
  %3416 = fsub fast float 1.000000e+00, %3415
  %3417 = fmul fast float %3406, 0x40005F8BE0000000
  %3418 = fsub fast float 0x400C5BF8A0000000, %3417
  %3419 = fdiv fast float %3407, %3418
  %3420 = fmul fast float %3419, 0x3FEE31C3C0000000
  %3421 = fmul fast float %3420, %3416
  %3422 = fmul fast float %3406, 0x3FDACB7480000000
  %3423 = fadd fast float %3422, 0xBFD7347680000000
  %3424 = fmul fast float %3423, %3419
  %3425 = fmul fast float %3424, %3416
  br label %3426

; <label>:3426                                    ; preds = %3397, %3369
  %3427 = phi float [ %3412, %3397 ], [ 0.000000e+00, %3369 ]
  %3428 = phi float [ %3413, %3397 ], [ 0.000000e+00, %3369 ]
  %3429 = phi float [ %3414, %3397 ], [ 0.000000e+00, %3369 ]
  %3430 = phi float [ %3421, %3397 ], [ 0.000000e+00, %3369 ]
  %3431 = phi float [ %3425, %3397 ], [ 0.000000e+00, %3369 ]
  %3432 = call float @dx.op.dot3.f32(i32 55, float %3427, float %3428, float %3429, float %2298, float %2299, float %2300)  ; Dot3(ax,ay,az,bx,by,bz)
  %3433 = fmul fast float %3432, 0x3FDF454380000000
  %3434 = fmul fast float %3432, %3432
  %3435 = fmul fast float %3434, 0x3FEE471020000000
  %3436 = fadd fast float %3435, 0xBFD42F6020000000
  %3437 = fmul fast float %3392, 0x3FD20DD760000000
  %3438 = fmul fast float %3436, %3431
  %3439 = fadd fast float %3438, %3437
  %3440 = fmul fast float %3433, %3430
  %3441 = fadd fast float %3439, %3440
  %3442 = fsub fast float %3439, %3440
  %3443 = call float @dx.op.dot3.f32(i32 55, float %3427, float %3428, float %3429, float %2315, float %2316, float %2317)  ; Dot3(ax,ay,az,bx,by,bz)
  %3444 = fmul fast float %3443, 0x3FDF454380000000
  %3445 = fmul fast float %3443, %3443
  %3446 = fmul fast float %3445, 0x3FEE471020000000
  %3447 = fadd fast float %3446, 0xBFD42F6020000000
  %3448 = call float @dx.op.dot3.f32(i32 55, float %3392, float %3430, float %3431, float 0x3FD20DD760000000, float %3444, float %3447)  ; Dot3(ax,ay,az,bx,by,bz)
  %3449 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3305)  ; FMax(a,b)
  %3450 = call float @dx.op.dot3.f32(i32 55, float %3328, float %3331, float %3334, float %3328, float %3331, float %3334)  ; Dot3(ax,ay,az,bx,by,bz)
  %3451 = fcmp fast oeq float %3450, 0.000000e+00
  %3452 = fcmp fast oeq float %3449, 0.000000e+00
  %3453 = or i1 %3452, %3451
  br i1 %3453, label %3483, label %3454

; <label>:3454                                    ; preds = %3426
  %3455 = fsub fast float -0.000000e+00, %3334
  %3456 = fsub fast float -0.000000e+00, %3328
  %3457 = call float @dx.op.unary.f32(i32 24, float %3450)  ; Sqrt(value)
  %3458 = fdiv fast float %3457, %3449
  %3459 = fcmp fast ogt float %3458, 0x3FFB6F8900000000
  %3460 = select i1 %3459, float 0x3FFB6F8900000000, float %3458
  %3461 = fmul fast float %3460, 0x3FE8A23460000000
  %3462 = call float @dx.op.unary.f32(i32 7, float %3461)  ; Saturate(value)
  %3463 = call float @dx.op.binary.f32(i32 35, float %3460, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3464 = fmul fast float %3462, %3449
  %3465 = fmul fast float %3463, 0x3FF279A740000000
  %3466 = fadd fast float %3465, -1.000000e+00
  %3467 = call float @dx.op.dot3.f32(i32 55, float %3455, float %3456, float %3331, float %3455, float %3456, float %3331)  ; Dot3(ax,ay,az,bx,by,bz)
  %3468 = call float @dx.op.unary.f32(i32 25, float %3467)  ; Rsqrt(value)
  %3469 = fmul fast float %3468, %3455
  %3470 = fmul fast float %3468, %3456
  %3471 = fmul fast float %3468, %3331
  %3472 = fmul fast float %3466, %3466
  %3473 = fsub fast float 1.000000e+00, %3472
  %3474 = fmul fast float %3463, 0x40005F8BE0000000
  %3475 = fsub fast float 0x400C5BF8A0000000, %3474
  %3476 = fdiv fast float %3464, %3475
  %3477 = fmul fast float %3476, 0x3FEE31C3C0000000
  %3478 = fmul fast float %3477, %3473
  %3479 = fmul fast float %3463, 0x3FDACB7480000000
  %3480 = fadd fast float %3479, 0xBFD7347680000000
  %3481 = fmul fast float %3480, %3476
  %3482 = fmul fast float %3481, %3473
  br label %3483

; <label>:3483                                    ; preds = %3454, %3426
  %3484 = phi float [ %3469, %3454 ], [ 0.000000e+00, %3426 ]
  %3485 = phi float [ %3470, %3454 ], [ 0.000000e+00, %3426 ]
  %3486 = phi float [ %3471, %3454 ], [ 0.000000e+00, %3426 ]
  %3487 = phi float [ %3478, %3454 ], [ 0.000000e+00, %3426 ]
  %3488 = phi float [ %3482, %3454 ], [ 0.000000e+00, %3426 ]
  %3489 = call float @dx.op.dot3.f32(i32 55, float %3484, float %3485, float %3486, float %2298, float %2299, float %2300)  ; Dot3(ax,ay,az,bx,by,bz)
  %3490 = fmul fast float %3489, 0x3FDF454380000000
  %3491 = fmul fast float %3489, %3489
  %3492 = fmul fast float %3491, 0x3FEE471020000000
  %3493 = fadd fast float %3492, 0xBFD42F6020000000
  %3494 = fmul fast float %3449, 0x3FD20DD760000000
  %3495 = fmul fast float %3493, %3488
  %3496 = fadd fast float %3495, %3494
  %3497 = fmul fast float %3490, %3487
  %3498 = fadd fast float %3496, %3497
  %3499 = fsub fast float %3496, %3497
  %3500 = call float @dx.op.dot3.f32(i32 55, float %3484, float %3485, float %3486, float %2315, float %2316, float %2317)  ; Dot3(ax,ay,az,bx,by,bz)
  %3501 = fmul fast float %3500, 0x3FDF454380000000
  %3502 = fmul fast float %3500, %3500
  %3503 = fmul fast float %3502, 0x3FEE471020000000
  %3504 = fadd fast float %3503, 0xBFD42F6020000000
  %3505 = call float @dx.op.dot3.f32(i32 55, float %3449, float %3487, float %3488, float 0x3FD20DD760000000, float %3501, float %3504)  ; Dot3(ax,ay,az,bx,by,bz)
  %3506 = call float @dx.op.binary.f32(i32 35, float %3384, float 0.000000e+00)  ; FMax(a,b)
  %3507 = call float @dx.op.binary.f32(i32 35, float %3441, float 0.000000e+00)  ; FMax(a,b)
  %3508 = call float @dx.op.binary.f32(i32 35, float %3498, float 0.000000e+00)  ; FMax(a,b)
  %3509 = call float @dx.op.binary.f32(i32 35, float %3385, float 0.000000e+00)  ; FMax(a,b)
  %3510 = call float @dx.op.binary.f32(i32 35, float %3442, float 0.000000e+00)  ; FMax(a,b)
  %3511 = call float @dx.op.binary.f32(i32 35, float %3499, float 0.000000e+00)  ; FMax(a,b)
  %3512 = call float @dx.op.binary.f32(i32 35, float %3391, float 0.000000e+00)  ; FMax(a,b)
  %3513 = call float @dx.op.binary.f32(i32 35, float %3448, float 0.000000e+00)  ; FMax(a,b)
  %3514 = call float @dx.op.binary.f32(i32 35, float %3505, float 0.000000e+00)  ; FMax(a,b)
  %3515 = fsub fast float %2703, %3506
  %3516 = fsub fast float %2704, %3507
  %3517 = fsub fast float %2705, %3508
  %3518 = fmul fast float %3515, %2379
  %3519 = fmul fast float %3516, %2379
  %3520 = fmul fast float %3517, %2379
  %3521 = fadd fast float %3518, %3506
  %3522 = fadd fast float %3519, %3507
  %3523 = fadd fast float %3520, %3508
  %3524 = fsub fast float %2700, %3509
  %3525 = fsub fast float %2701, %3510
  %3526 = fsub fast float %2702, %3511
  %3527 = fmul fast float %3524, %2379
  %3528 = fmul fast float %3525, %2379
  %3529 = fmul fast float %3526, %2379
  %3530 = fadd fast float %3527, %3509
  %3531 = fadd fast float %3528, %3510
  %3532 = fadd fast float %3529, %3511
  %3533 = fsub fast float %2697, %3512
  %3534 = fsub fast float %2698, %3513
  %3535 = fsub fast float %2699, %3514
  %3536 = fmul fast float %3533, %2379
  %3537 = fmul fast float %3534, %2379
  %3538 = fmul fast float %3535, %2379
  %3539 = fadd fast float %3536, %3512
  %3540 = fadd fast float %3537, %3513
  %3541 = fadd fast float %3538, %3514
  %3542 = fsub fast float %2481, %3307
  %3543 = fmul fast float %3542, %2379
  %3544 = fadd fast float %3543, %3307
  br label %3545

; <label>:3545                                    ; preds = %3483, %2696
  %3546 = phi float [ %3544, %3483 ], [ %2481, %2696 ]
  %3547 = phi float [ %3539, %3483 ], [ %2697, %2696 ]
  %3548 = phi float [ %3540, %3483 ], [ %2698, %2696 ]
  %3549 = phi float [ %3541, %3483 ], [ %2699, %2696 ]
  %3550 = phi float [ %3530, %3483 ], [ %2700, %2696 ]
  %3551 = phi float [ %3531, %3483 ], [ %2701, %2696 ]
  %3552 = phi float [ %3532, %3483 ], [ %2702, %2696 ]
  %3553 = phi float [ %3521, %3483 ], [ %2703, %2696 ]
  %3554 = phi float [ %3522, %3483 ], [ %2704, %2696 ]
  %3555 = phi float [ %3523, %3483 ], [ %2705, %2696 ]
  %3556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3557 = extractvalue %dx.types.CBufRet.f32 %3556, 0
  %3558 = call float @dx.op.binary.f32(i32 36, float %2295, float %3557)  ; FMin(a,b)
  %3559 = fmul fast float %3558, %2319
  %3560 = fsub fast float 1.000000e+00, %3559
  %3561 = bitcast float %3560 to i32
  %3562 = sub nsw i32 2129859010, %3561
  %3563 = bitcast i32 %3562 to float
  %3564 = call float @dx.op.binary.f32(i32 36, float %2296, float %3557)  ; FMin(a,b)
  %3565 = fmul fast float %3564, %2319
  %3566 = fsub fast float 1.000000e+00, %3565
  %3567 = bitcast float %3566 to i32
  %3568 = sub nsw i32 2129859010, %3567
  %3569 = bitcast i32 %3568 to float
  %3570 = call float @dx.op.binary.f32(i32 36, float %2297, float %3557)  ; FMin(a,b)
  %3571 = fmul fast float %3570, %2319
  %3572 = fsub fast float 1.000000e+00, %3571
  %3573 = bitcast float %3572 to i32
  %3574 = sub nsw i32 2129859010, %3573
  %3575 = bitcast i32 %3574 to float
  %3576 = fmul fast float %3553, %2318
  %3577 = fmul fast float %3576, %3563
  %3578 = fmul fast float %3554, %2318
  %3579 = fmul fast float %3578, %3569
  %3580 = fmul fast float %3555, %2318
  %3581 = fmul fast float %3580, %3575
  %3582 = call float @dx.op.binary.f32(i32 36, float %2301, float %3557)  ; FMin(a,b)
  %3583 = fmul fast float %3582, %2319
  %3584 = fsub fast float 1.000000e+00, %3583
  %3585 = bitcast float %3584 to i32
  %3586 = sub nsw i32 2129859010, %3585
  %3587 = bitcast i32 %3586 to float
  %3588 = call float @dx.op.binary.f32(i32 36, float %2302, float %3557)  ; FMin(a,b)
  %3589 = fmul fast float %3588, %2319
  %3590 = fsub fast float 1.000000e+00, %3589
  %3591 = bitcast float %3590 to i32
  %3592 = sub nsw i32 2129859010, %3591
  %3593 = bitcast i32 %3592 to float
  %3594 = call float @dx.op.binary.f32(i32 36, float %2307, float %3557)  ; FMin(a,b)
  %3595 = fmul fast float %3594, %2319
  %3596 = fsub fast float 1.000000e+00, %3595
  %3597 = bitcast float %3596 to i32
  %3598 = sub nsw i32 2129859010, %3597
  %3599 = bitcast i32 %3598 to float
  %3600 = fmul fast float %3547, %2318
  %3601 = fmul fast float %3600, %3587
  %3602 = fmul fast float %3548, %2318
  %3603 = fmul fast float %3602, %3593
  %3604 = fmul fast float %3549, %2318
  %3605 = fmul fast float %3604, %3599
  %3606 = call float @dx.op.dot3.f32(i32 55, float %3577, float %3579, float %3581, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3607 = select i1 %248, float 0.000000e+00, float %3577
  %3608 = select i1 %248, float %3606, float %3579
  %3609 = select i1 %248, float 0.000000e+00, float %3581
  %3610 = call float @dx.op.dot3.f32(i32 55, float %3550, float %3551, float %3552, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3611 = select i1 %248, float 0.000000e+00, float %3550
  %3612 = select i1 %248, float %3610, float %3551
  %3613 = select i1 %248, float 0.000000e+00, float %3552
  %3614 = call float @dx.op.dot3.f32(i32 55, float %3601, float %3603, float %3605, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3615 = select i1 %248, float 0.000000e+00, float %3601
  %3616 = select i1 %248, float %3614, float %3603
  %3617 = select i1 %248, float 0.000000e+00, float %3605
  %3618 = fmul fast float %2309, 9.843750e-01
  %3619 = fmul fast float %2304, 9.843750e-01
  %3620 = fadd fast float %3618, 7.812500e-03
  %3621 = fadd fast float %3619, 7.812500e-03
  %3622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %3620, float %3621, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3623 = extractvalue %dx.types.ResRet.f32 %3622, 2
  %3624 = extractvalue %dx.types.ResRet.f32 %3622, 3
  %3625 = fmul fast float %3623, %2301
  %3626 = fmul fast float %3623, %2302
  %3627 = fmul fast float %3623, %2307
  %3628 = fadd fast float %3625, %3624
  %3629 = fadd fast float %3626, %3624
  %3630 = fadd fast float %3627, %3624
  %3631 = fcmp fast ogt float %1603, 0.000000e+00
  br i1 %3631, label %3632, label %3658

; <label>:3632                                    ; preds = %3545
  %3633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1603, float %2309, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3634 = extractvalue %dx.types.ResRet.f32 %3633, 0
  %3635 = extractvalue %dx.types.ResRet.f32 %3633, 1
  %3636 = extractvalue %dx.types.ResRet.f32 %3633, 2
  %3637 = fadd fast float %3634, -5.000000e-01
  %3638 = fadd fast float %3635, -5.000000e-01
  %3639 = fadd fast float %3636, -5.000000e-01
  %3640 = fsub fast float 1.000000e+00, %2301
  %3641 = fsub fast float 1.000000e+00, %2302
  %3642 = fsub fast float 1.000000e+00, %2307
  %3643 = fmul fast float %2301, 4.000000e+00
  %3644 = fmul fast float %3643, %3640
  %3645 = fmul fast float %3644, %3637
  %3646 = fmul fast float %2302, 4.000000e+00
  %3647 = fmul fast float %3646, %3641
  %3648 = fmul fast float %3647, %3638
  %3649 = fmul fast float %2307, 4.000000e+00
  %3650 = fmul fast float %3649, %3642
  %3651 = fmul fast float %3650, %3639
  %3652 = fadd fast float %3645, %3628
  %3653 = fadd fast float %3648, %3629
  %3654 = fadd fast float %3651, %3630
  %3655 = call float @dx.op.unary.f32(i32 7, float %3652)  ; Saturate(value)
  %3656 = call float @dx.op.unary.f32(i32 7, float %3653)  ; Saturate(value)
  %3657 = call float @dx.op.unary.f32(i32 7, float %3654)  ; Saturate(value)
  br label %3658

; <label>:3658                                    ; preds = %3632, %3545
  %3659 = phi float [ %3655, %3632 ], [ %3628, %3545 ]
  %3660 = phi float [ %3656, %3632 ], [ %3629, %3545 ]
  %3661 = phi float [ %3657, %3632 ], [ %3630, %3545 ]
  %3662 = call float @dx.op.binary.f32(i32 35, float %3660, float %3661)  ; FMax(a,b)
  %3663 = call float @dx.op.binary.f32(i32 35, float %3659, float %3662)  ; FMax(a,b)
  %3664 = fsub fast float 1.000000e+00, %3663
  %3665 = fmul fast float %3663, %2304
  %3666 = fadd fast float %3665, %2304
  %3667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3668 = extractvalue %dx.types.CBufRet.f32 %3667, 2
  %3669 = extractvalue %dx.types.CBufRet.f32 %3667, 3
  %3670 = fmul fast float %3666, %3668
  %3671 = fadd fast float %3670, %3669
  %3672 = call float @dx.op.unary.f32(i32 7, float %3671)  ; Saturate(value)
  %3673 = fsub fast float 1.000000e+00, %2330
  %3674 = fadd fast float %3673, %3672
  %3675 = call float @dx.op.unary.f32(i32 7, float %3674)  ; Saturate(value)
  %3676 = fcmp fast olt float %3675, 1.000000e+00
  br i1 %3676, label %3677, label %4153

; <label>:3677                                    ; preds = %3658
  %3678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3679 = extractvalue %dx.types.CBufRet.f32 %3678, 2
  %3680 = extractvalue %dx.types.CBufRet.f32 %3678, 3
  %3681 = fmul fast float %3679, %102
  %3682 = fmul fast float %3680, %103
  %3683 = fptoui float %3681 to i32
  %3684 = fptoui float %3682 to i32
  %3685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3686 = extractvalue %dx.types.CBufRet.f32 %3685, 0
  %3687 = extractvalue %dx.types.CBufRet.f32 %3685, 2
  %3688 = extractvalue %dx.types.CBufRet.f32 %3685, 3
  %3689 = fadd fast float %90, -4.000000e+00
  %3690 = call float @dx.op.binary.f32(i32 35, float %3689, float 0.000000e+00)  ; FMax(a,b)
  %3691 = fadd fast float %3690, %3686
  %3692 = fmul fast float %3691, %3687
  %3693 = call float @dx.op.unary.f32(i32 23, float %3692)  ; Log(value)
  %3694 = fmul fast float %3693, %3688
  %3695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3696 = extractvalue %dx.types.CBufRet.f32 %3695, 2
  %3697 = fmul fast float %3694, %3696
  %3698 = call float @dx.op.unary.f32(i32 7, float %3697)  ; Saturate(value)
  %3699 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3700 = extractvalue %dx.types.CBufRet.i32 %3699, 1
  %3701 = add i32 %3700, -1
  %3702 = uitofp i32 %3700 to float
  %3703 = fmul fast float %3702, %3698
  %3704 = fptoui float %3703 to i32
  %3705 = call i32 @dx.op.binary.i32(i32 40, i32 %3704, i32 %3701)  ; UMin(a,b)
  %3706 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3707 = extractvalue %dx.types.CBufRet.i32 %3706, 2
  %3708 = extractvalue %dx.types.CBufRet.i32 %3706, 3
  %3709 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3684, i32 %3707, i32 %3683)  ; UMad(a,b,c)
  %3710 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3705, i32 %3708, i32 %3709)  ; UMad(a,b,c)
  %3711 = call float @dx.op.binary.f32(i32 35, float %90, float 0.000000e+00)  ; FMax(a,b)
  %3712 = fptoui float %3711 to i32
  %3713 = lshr i32 %3712, 5
  %3714 = call i32 @dx.op.binary.i32(i32 40, i32 %3713, i32 8191)  ; UMin(a,b)
  %3715 = fsub fast float %2094, %159
  %3716 = call float @dx.op.unary.f32(i32 7, float %3715)  ; Saturate(value)
  %3717 = fcmp fast ogt float %3716, 0.000000e+00
  %3718 = fcmp fast ogt float %2317, 0.000000e+00
  %3719 = and i1 %3718, %3717
  br i1 %3719, label %3720, label %3749

; <label>:3720                                    ; preds = %3677
  %3721 = call float @dx.op.dot3.f32(i32 55, float %2315, float %2316, float %2317, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3722 = call float @dx.op.binary.f32(i32 35, float %3721, float -1.000000e+00)  ; FMax(a,b)
  %3723 = call float @dx.op.binary.f32(i32 36, float %3722, float 1.000000e+00)  ; FMin(a,b)
  %3724 = fmul fast float %3723, %3723
  %3725 = fsub fast float 1.000000e+00, %3724
  %3726 = fmul fast float %3725, 0x3FFC6E2300000000
  %3727 = fsub fast float 1.000000e+00, %3726
  %3728 = fcmp fast ogt float %3727, 0.000000e+00
  %3729 = call float @dx.op.unary.f32(i32 24, float %3727)  ; Sqrt(value)
  %3730 = fsub fast float 1.000000e+00, %3729
  %3731 = call float @dx.op.unary.f32(i32 23, float %3730)  ; Log(value)
  %3732 = fmul fast float %3731, 5.000000e+00
  %3733 = call float @dx.op.unary.f32(i32 21, float %3732)  ; Exp(value)
  %3734 = fmul fast float %3733, 0x3FEF591A60000000
  %3735 = fadd fast float %3734, 0x3F94DCB540000000
  %3736 = select i1 %3728, float %3735, float 1.000000e+00
  %3737 = fcmp fast oge float %3736, 1.000000e+00
  %3738 = fmul fast float %3721, 2.000000e+00
  %3739 = fadd fast float %3738, %2317
  %3740 = select i1 %3737, float %3739, float %2317
  %3741 = fsub fast float %3740, %2317
  %3742 = fmul fast float %3741, %3716
  %3743 = fadd fast float %3742, %2317
  %3744 = call float @dx.op.dot3.f32(i32 55, float %2315, float %2316, float %3743, float %2315, float %2316, float %3743)  ; Dot3(ax,ay,az,bx,by,bz)
  %3745 = call float @dx.op.unary.f32(i32 25, float %3744)  ; Rsqrt(value)
  %3746 = fmul fast float %3745, %2315
  %3747 = fmul fast float %3745, %2316
  %3748 = fmul fast float %3743, %3745
  br label %3749

; <label>:3749                                    ; preds = %3720, %3677
  %3750 = phi float [ %3746, %3720 ], [ %2315, %3677 ]
  %3751 = phi float [ %3747, %3720 ], [ %2316, %3677 ]
  %3752 = phi float [ %3748, %3720 ], [ %2317, %3677 ]
  %3753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3754 = extractvalue %dx.types.CBufRet.i32 %3753, 2
  %3755 = add nsw i32 %3754, -1
  %3756 = call i32 @dx.op.binary.i32(i32 37, i32 %3755, i32 0)  ; IMax(a,b)
  %3757 = shl i32 %3714, 2
  %3758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3759 = extractvalue %dx.types.ResRet.i32 %3758, 0
  %3760 = lshr i32 %3759, 16
  %3761 = and i32 %3759, 65535
  %3762 = lshr i32 %3759, 21
  %3763 = lshr i32 %3761, 5
  %3764 = call i32 @dx.op.binary.i32(i32 40, i32 %3763, i32 %3756)  ; UMin(a,b)
  %3765 = icmp ugt i32 %3762, %3764
  br i1 %3765, label %4129, label %3766

; <label>:3766                                    ; preds = %3749
  br label %3767

; <label>:3767                                    ; preds = %4121, %3766
  %3768 = phi float [ %4122, %4121 ], [ 0.000000e+00, %3766 ]
  %3769 = phi float [ %4123, %4121 ], [ 0.000000e+00, %3766 ]
  %3770 = phi float [ %4124, %4121 ], [ 0.000000e+00, %3766 ]
  %3771 = phi float [ %4125, %4121 ], [ 1.000000e+00, %3766 ]
  %3772 = phi i32 [ %4126, %4121 ], [ %3762, %3766 ]
  %3773 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3774 = extractvalue %dx.types.CBufRet.i32 %3773, 2
  %3775 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3710, i32 %3774, i32 %3772)  ; UMad(a,b,c)
  %3776 = shl i32 %3775, 2
  %3777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3776, i32 undef)  ; BufferLoad(srv,index,wot)
  %3778 = extractvalue %dx.types.ResRet.i32 %3777, 0
  %3779 = shl i32 %3772, 5
  %3780 = sub nsw i32 %3760, %3779
  %3781 = call i32 @dx.op.binary.i32(i32 37, i32 %3780, i32 0)  ; IMax(a,b)
  %3782 = call i32 @dx.op.binary.i32(i32 38, i32 %3781, i32 31)  ; IMin(a,b)
  %3783 = sub nsw i32 1, %3760
  %3784 = add nsw i32 %3783, %3761
  %3785 = call i32 @dx.op.binary.i32(i32 37, i32 %3784, i32 0)  ; IMax(a,b)
  %3786 = call i32 @dx.op.binary.i32(i32 38, i32 %3785, i32 32)  ; IMin(a,b)
  %3787 = and i32 %3786, 31
  %3788 = shl i32 -1, %3787
  %3789 = xor i32 %3788, -1
  %3790 = and i32 %3782, 31
  %3791 = shl i32 %3789, %3790
  %3792 = icmp eq i32 %3786, 32
  %3793 = select i1 %3792, i32 -1, i32 %3791
  %3794 = and i32 %3793, %3778
  %3795 = icmp eq i32 %3794, 0
  br i1 %3795, label %4121, label %3796

; <label>:3796                                    ; preds = %3767
  br label %3797

; <label>:3797                                    ; preds = %3904, %3796
  %3798 = phi float [ %3905, %3904 ], [ %3768, %3796 ]
  %3799 = phi float [ %3906, %3904 ], [ %3769, %3796 ]
  %3800 = phi float [ %3907, %3904 ], [ %3770, %3796 ]
  %3801 = phi float [ %3908, %3904 ], [ %3771, %3796 ]
  %3802 = phi i32 [ %3807, %3904 ], [ %3794, %3796 ]
  %3803 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3802)  ; FirstbitLo(value)
  %3804 = add i32 %3803, %3779
  %3805 = and i32 %3803, 31
  %3806 = shl i32 1, %3805
  %3807 = xor i32 %3806, %3802
  %3808 = mul i32 %3804, 72
  %3809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3808, i32 undef)  ; BufferLoad(srv,index,wot)
  %3810 = extractvalue %dx.types.ResRet.f32 %3809, 0
  %3811 = extractvalue %dx.types.ResRet.f32 %3809, 1
  %3812 = extractvalue %dx.types.ResRet.f32 %3809, 2
  %3813 = add i32 %3808, 12
  %3814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3815 = extractvalue %dx.types.ResRet.i32 %3814, 0
  %3816 = add i32 %3808, 16
  %3817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.f32 %3817, 0
  %3819 = extractvalue %dx.types.ResRet.f32 %3817, 1
  %3820 = extractvalue %dx.types.ResRet.f32 %3817, 2
  %3821 = add i32 %3808, 28
  %3822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3823 = extractvalue %dx.types.ResRet.f32 %3822, 0
  %3824 = add i32 %3808, 32
  %3825 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3824, i32 undef)  ; BufferLoad(srv,index,wot)
  %3826 = extractvalue %dx.types.ResRet.f32 %3825, 0
  %3827 = extractvalue %dx.types.ResRet.f32 %3825, 1
  %3828 = extractvalue %dx.types.ResRet.f32 %3825, 2
  %3829 = extractvalue %dx.types.ResRet.f32 %3825, 3
  %3830 = add i32 %3808, 48
  %3831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3830, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = extractvalue %dx.types.ResRet.f32 %3831, 1
  %3834 = add i32 %3808, 56
  %3835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3836 = extractvalue %dx.types.ResRet.f32 %3835, 0
  %3837 = extractvalue %dx.types.ResRet.f32 %3835, 1
  %3838 = add i32 %3808, 64
  %3839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3840 = extractvalue %dx.types.ResRet.f32 %3839, 0
  %3841 = extractvalue %dx.types.ResRet.f32 %3839, 1
  %3842 = mul i32 %3804, 60
  %3843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3842, i32 undef)  ; BufferLoad(srv,index,wot)
  %3844 = extractvalue %dx.types.ResRet.f32 %3843, 0
  %3845 = extractvalue %dx.types.ResRet.f32 %3843, 1
  %3846 = extractvalue %dx.types.ResRet.f32 %3843, 2
  %3847 = add i32 %3842, 12
  %3848 = add i32 %3842, 48
  %3849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3850 = extractvalue %dx.types.ResRet.f32 %3849, 0
  %3851 = extractvalue %dx.types.ResRet.f32 %3849, 1
  %3852 = extractvalue %dx.types.ResRet.f32 %3849, 2
  %3853 = and i32 %3815, 32767
  %3854 = bitcast float %3810 to i32
  %3855 = icmp eq i32 %3854, -1
  %3856 = bitcast float %3811 to i32
  %3857 = and i32 %3815, 32768
  %3858 = icmp ne i32 %3857, 0
  %3859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3860 = extractvalue %dx.types.CBufRet.f32 %3859, 0
  %3861 = extractvalue %dx.types.CBufRet.f32 %3859, 1
  %3862 = extractvalue %dx.types.CBufRet.f32 %3859, 2
  %3863 = fsub fast float %3844, %3860
  %3864 = fsub fast float %3845, %3861
  %3865 = fsub fast float %3846, %3862
  %3866 = fsub fast float %157, %3863
  %3867 = fsub fast float %158, %3864
  %3868 = fsub fast float %159, %3865
  %3869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3870 = extractvalue %dx.types.ResRet.f32 %3869, 0
  %3871 = extractvalue %dx.types.ResRet.f32 %3869, 1
  %3872 = extractvalue %dx.types.ResRet.f32 %3869, 2
  %3873 = call float @dx.op.dot3.f32(i32 55, float %3866, float %3867, float %3868, float %3870, float %3871, float %3872)  ; Dot3(ax,ay,az,bx,by,bz)
  %3874 = add i32 %3842, 24
  %3875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3874, i32 undef)  ; BufferLoad(srv,index,wot)
  %3876 = extractvalue %dx.types.ResRet.f32 %3875, 0
  %3877 = extractvalue %dx.types.ResRet.f32 %3875, 1
  %3878 = extractvalue %dx.types.ResRet.f32 %3875, 2
  %3879 = call float @dx.op.dot3.f32(i32 55, float %3866, float %3867, float %3868, float %3876, float %3877, float %3878)  ; Dot3(ax,ay,az,bx,by,bz)
  %3880 = add i32 %3842, 36
  %3881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3880, i32 undef)  ; BufferLoad(srv,index,wot)
  %3882 = extractvalue %dx.types.ResRet.f32 %3881, 0
  %3883 = extractvalue %dx.types.ResRet.f32 %3881, 1
  %3884 = extractvalue %dx.types.ResRet.f32 %3881, 2
  %3885 = call float @dx.op.dot3.f32(i32 55, float %3866, float %3867, float %3868, float %3882, float %3883, float %3884)  ; Dot3(ax,ay,az,bx,by,bz)
  %3886 = call float @dx.op.unary.f32(i32 6, float %3873)  ; FAbs(value)
  %3887 = call float @dx.op.unary.f32(i32 6, float %3879)  ; FAbs(value)
  %3888 = call float @dx.op.unary.f32(i32 6, float %3885)  ; FAbs(value)
  %3889 = fsub fast float %3850, %3886
  %3890 = fsub fast float %3851, %3887
  %3891 = fsub fast float %3852, %3888
  %3892 = fmul fast float %3889, %3818
  %3893 = fmul fast float %3890, %3819
  %3894 = fmul fast float %3891, %3820
  %3895 = call float @dx.op.binary.f32(i32 36, float %3893, float %3894)  ; FMin(a,b)
  %3896 = call float @dx.op.binary.f32(i32 36, float %3892, float %3895)  ; FMin(a,b)
  %3897 = call float @dx.op.unary.f32(i32 7, float %3896)  ; Saturate(value)
  %3898 = call float @dx.op.binary.f32(i32 36, float %3801, float %3897)  ; FMin(a,b)
  %3899 = uitofp i1 %3858 to float
  %3900 = fadd fast float %3716, 1.000000e+00
  %3901 = fsub fast float %3900, %3899
  %3902 = fmul fast float %3898, %3901
  %3903 = fcmp fast ogt float %3902, 0.000000e+00
  br i1 %3903, label %3910, label %3904

; <label>:3904                                    ; preds = %4052, %3797
  %3905 = phi float [ %4116, %4052 ], [ %3798, %3797 ]
  %3906 = phi float [ %4117, %4052 ], [ %3799, %3797 ]
  %3907 = phi float [ %4118, %4052 ], [ %3800, %3797 ]
  %3908 = phi float [ %4119, %4052 ], [ %3801, %3797 ]
  %3909 = icmp eq i32 %3802, %3806
  br i1 %3909, label %4120, label %3797

; <label>:3910                                    ; preds = %3797
  br i1 %3855, label %3968, label %3911

; <label>:3911                                    ; preds = %3910
  %3912 = fsub fast float -0.000000e+00, %3870
  %3913 = fsub fast float -0.000000e+00, %3871
  %3914 = fsub fast float -0.000000e+00, %3872
  %3915 = call float @dx.op.dot3.f32(i32 55, float %3750, float %3751, float %3752, float %3912, float %3913, float %3914)  ; Dot3(ax,ay,az,bx,by,bz)
  %3916 = fsub fast float -0.000000e+00, %3915
  %3917 = call float @dx.op.dot3.f32(i32 55, float %3866, float %3867, float %3868, float %3912, float %3913, float %3914)  ; Dot3(ax,ay,az,bx,by,bz)
  %3918 = fadd fast float %3917, %3833
  %3919 = fadd fast float %3832, %3917
  %3920 = fsub fast float -0.000000e+00, %3919
  %3921 = fcmp ogt float %3915, -0.000000e+00
  %3922 = select i1 %3921, float %3920, float %3918
  %3923 = call float @dx.op.unary.f32(i32 6, float %3916)  ; FAbs(value)
  %3924 = fdiv fast float 1.000000e+00, %3923
  %3925 = fmul fast float %3922, %3924
  %3926 = call float @dx.op.binary.f32(i32 35, float %3925, float 0.000000e+00)  ; FMax(a,b)
  %3927 = fsub fast float -0.000000e+00, %3876
  %3928 = fsub fast float -0.000000e+00, %3877
  %3929 = fsub fast float -0.000000e+00, %3878
  %3930 = call float @dx.op.dot3.f32(i32 55, float %3750, float %3751, float %3752, float %3927, float %3928, float %3929)  ; Dot3(ax,ay,az,bx,by,bz)
  %3931 = fsub fast float -0.000000e+00, %3930
  %3932 = call float @dx.op.dot3.f32(i32 55, float %3866, float %3867, float %3868, float %3927, float %3928, float %3929)  ; Dot3(ax,ay,az,bx,by,bz)
  %3933 = fadd fast float %3932, %3837
  %3934 = fadd fast float %3836, %3932
  %3935 = fsub fast float -0.000000e+00, %3934
  %3936 = fcmp ogt float %3930, -0.000000e+00
  %3937 = select i1 %3936, float %3935, float %3933
  %3938 = call float @dx.op.unary.f32(i32 6, float %3931)  ; FAbs(value)
  %3939 = fdiv fast float 1.000000e+00, %3938
  %3940 = fmul fast float %3937, %3939
  %3941 = call float @dx.op.binary.f32(i32 35, float %3940, float 0.000000e+00)  ; FMax(a,b)
  %3942 = fsub fast float -0.000000e+00, %3882
  %3943 = fsub fast float -0.000000e+00, %3883
  %3944 = fsub fast float -0.000000e+00, %3884
  %3945 = call float @dx.op.dot3.f32(i32 55, float %3750, float %3751, float %3752, float %3942, float %3943, float %3944)  ; Dot3(ax,ay,az,bx,by,bz)
  %3946 = fsub fast float -0.000000e+00, %3945
  %3947 = call float @dx.op.dot3.f32(i32 55, float %3866, float %3867, float %3868, float %3942, float %3943, float %3944)  ; Dot3(ax,ay,az,bx,by,bz)
  %3948 = fadd fast float %3947, %3841
  %3949 = fadd fast float %3840, %3947
  %3950 = fsub fast float -0.000000e+00, %3949
  %3951 = fcmp ogt float %3945, -0.000000e+00
  %3952 = select i1 %3951, float %3950, float %3948
  %3953 = call float @dx.op.unary.f32(i32 6, float %3946)  ; FAbs(value)
  %3954 = fdiv fast float 1.000000e+00, %3953
  %3955 = fmul fast float %3952, %3954
  %3956 = call float @dx.op.binary.f32(i32 35, float %3955, float 0.000000e+00)  ; FMax(a,b)
  %3957 = call float @dx.op.binary.f32(i32 36, float %3941, float %3956)  ; FMin(a,b)
  %3958 = call float @dx.op.binary.f32(i32 36, float %3926, float %3957)  ; FMin(a,b)
  %3959 = fmul fast float %3958, %3750
  %3960 = fmul fast float %3958, %3751
  %3961 = fmul fast float %3958, %3752
  %3962 = fadd fast float %3959, %157
  %3963 = fadd fast float %3960, %158
  %3964 = fadd fast float %3961, %159
  %3965 = fsub fast float %3962, %3810
  %3966 = fsub fast float %3963, %3811
  %3967 = fsub fast float %3964, %3812
  br label %3975

; <label>:3968                                    ; preds = %3910
  %3969 = fmul fast float %3750, 8.096000e+03
  %3970 = fmul fast float %3751, 8.096000e+03
  %3971 = fmul fast float %3752, 8.096000e+03
  %3972 = fadd fast float %3969, %157
  %3973 = fadd fast float %3970, %158
  %3974 = fadd fast float %3971, %159
  br label %3975

; <label>:3975                                    ; preds = %3968, %3911
  %3976 = phi float [ %3750, %3968 ], [ %3965, %3911 ]
  %3977 = phi float [ %3751, %3968 ], [ %3966, %3911 ]
  %3978 = phi float [ %3752, %3968 ], [ %3967, %3911 ]
  %3979 = phi float [ %3972, %3968 ], [ %3962, %3911 ]
  %3980 = phi float [ %3973, %3968 ], [ %3963, %3911 ]
  %3981 = phi float [ %3974, %3968 ], [ %3964, %3911 ]
  %3982 = fcmp fast olt float %3829, 1.000000e+00
  br i1 %3982, label %3983, label %4014, !dx.controlflow.hints !113

; <label>:3983                                    ; preds = %3975
  %3984 = fmul fast float %3978, %3827
  %3985 = fmul fast float %3977, %3828
  %3986 = fsub fast float %3984, %3985
  %3987 = fmul fast float %3976, %3828
  %3988 = fmul fast float %3978, %3826
  %3989 = fsub fast float %3987, %3988
  %3990 = fmul fast float %3977, %3826
  %3991 = fmul fast float %3976, %3827
  %3992 = fsub fast float %3990, %3991
  %3993 = fmul fast float %3986, 2.000000e+00
  %3994 = fmul fast float %3989, 2.000000e+00
  %3995 = fmul fast float %3992, 2.000000e+00
  %3996 = fmul fast float %3993, %3829
  %3997 = fmul fast float %3994, %3829
  %3998 = fmul fast float %3995, %3829
  %3999 = fmul fast float %3995, %3827
  %4000 = fmul fast float %3994, %3828
  %4001 = fmul fast float %3993, %3828
  %4002 = fmul fast float %3995, %3826
  %4003 = fmul fast float %3994, %3826
  %4004 = fmul fast float %3993, %3827
  %4005 = fadd fast float %3999, %3976
  %4006 = fadd fast float %4005, %3996
  %4007 = fsub fast float %4006, %4000
  %4008 = fsub fast float %3977, %4002
  %4009 = fadd fast float %4008, %3997
  %4010 = fadd fast float %4009, %4001
  %4011 = fadd fast float %3998, %3978
  %4012 = fsub fast float %4011, %4004
  %4013 = fadd fast float %4012, %4003
  br label %4014

; <label>:4014                                    ; preds = %3983, %3975
  %4015 = phi float [ %4007, %3983 ], [ %3976, %3975 ]
  %4016 = phi float [ %4010, %3983 ], [ %3977, %3975 ]
  %4017 = phi float [ %4013, %3983 ], [ %3978, %3975 ]
  br i1 %3855, label %4049, label %4018

; <label>:4018                                    ; preds = %4014
  %4019 = fmul fast float %2304, 0x400187C840000000
  %4020 = fadd fast float %4019, 0xC00EFC2120000000
  %4021 = fmul fast float %4020, %2304
  %4022 = fadd fast float %4021, 0x3FE5D16340000000
  %4023 = fmul fast float %4022, %2304
  %4024 = fadd fast float %4023, 1.000000e+00
  %4025 = call float @dx.op.unary.f32(i32 7, float %4024)  ; Saturate(value)
  %4026 = fsub fast float %3979, %157
  %4027 = fsub fast float %3980, %158
  %4028 = fsub fast float %3981, %159
  %4029 = fsub fast float %3979, %3810
  %4030 = fsub fast float %3980, %3811
  %4031 = fsub fast float %3981, %3812
  %4032 = call float @dx.op.dot3.f32(i32 55, float %4026, float %4027, float %4028, float %4026, float %4027, float %4028)  ; Dot3(ax,ay,az,bx,by,bz)
  %4033 = call float @dx.op.dot3.f32(i32 55, float %4029, float %4030, float %4031, float %4029, float %4030, float %4031)  ; Dot3(ax,ay,az,bx,by,bz)
  %4034 = fadd fast float %4033, 0x3EE4F8B580000000
  %4035 = fdiv fast float %4032, %4034
  %4036 = bitcast float %4035 to i32
  %4037 = ashr i32 %4036, 1
  %4038 = add nsw i32 %4037, 532487669
  %4039 = bitcast i32 %4038 to float
  %4040 = fmul fast float %4039, %4025
  %4041 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  %4042 = fmul fast float %4041, 0x4009981AE0000000
  %4043 = fsub fast float 0x40111BBD80000000, %4042
  %4044 = fmul fast float %4043, %4041
  %4045 = fadd fast float %4044, 0xC0009F6020000000
  %4046 = fmul fast float %4045, %4041
  %4047 = fadd fast float %4046, 1.000000e+00
  %4048 = call float @dx.op.unary.f32(i32 7, float %4047)  ; Saturate(value)
  br label %4052

; <label>:4049                                    ; preds = %4014
  %4050 = icmp ne i32 %3856, -1
  %4051 = zext i1 %4050 to i32
  br label %4052

; <label>:4052                                    ; preds = %4049, %4018
  %4053 = phi float [ %2304, %4049 ], [ %4048, %4018 ]
  %4054 = phi i32 [ %4051, %4049 ], [ 0, %4018 ]
  %4055 = fmul float %4053, 5.000000e+00
  %4056 = fsub float 5.000000e+00, %4055
  %4057 = icmp ne i32 %4054, 0
  %4058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4059 = extractvalue %dx.types.CBufRet.f32 %4058, 3
  %4060 = fadd fast float %4059, %4056
  %4061 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4060)  ; FMax(a,b)
  %4062 = call float @dx.op.unary.f32(i32 6, float %4015)  ; FAbs(value)
  %4063 = call float @dx.op.unary.f32(i32 6, float %4016)  ; FAbs(value)
  %4064 = fadd fast float %4063, %4062
  %4065 = call float @dx.op.unary.f32(i32 6, float %4017)  ; FAbs(value)
  %4066 = fadd fast float %4064, %4065
  %4067 = fcmp fast oeq float %4066, 0.000000e+00
  %4068 = fdiv fast float 1.000000e+00, %4066
  %4069 = select i1 %4067, float 1.000000e+00, float %4068
  %4070 = fmul fast float %4069, %4015
  %4071 = fmul fast float %4069, %4016
  %4072 = call float @dx.op.unary.f32(i32 6, float %4071)  ; FAbs(value)
  %4073 = call float @dx.op.unary.f32(i32 6, float %4070)  ; FAbs(value)
  %4074 = fsub fast float 1.000000e+00, %4072
  %4075 = fsub fast float 1.000000e+00, %4073
  %4076 = fcmp fast oge float %4070, 0.000000e+00
  %4077 = fcmp fast oge float %4071, 0.000000e+00
  %4078 = select i1 %4076, float 1.000000e+00, float -1.000000e+00
  %4079 = select i1 %4077, float 1.000000e+00, float -1.000000e+00
  %4080 = fcmp fast ole float %4017, 0.000000e+00
  %4081 = fmul fast float %4078, %4074
  %4082 = fmul fast float %4079, %4075
  %4083 = select i1 %4080, float %4081, float %4070
  %4084 = select i1 %4080, float %4082, float %4071
  %4085 = fmul fast float %4083, 5.000000e-01
  %4086 = fmul fast float %4084, 5.000000e-01
  %4087 = fadd fast float %4085, 5.000000e-01
  %4088 = fadd fast float %4086, 5.000000e-01
  %4089 = uitofp i32 %3853 to float
  %4090 = call float @dx.op.binary.f32(i32 36, float %4061, float 3.000000e+00)  ; FMin(a,b)
  %4091 = fadd fast float %4090, 2.000000e+00
  %4092 = call float @dx.op.unary.f32(i32 21, float %4091)  ; Exp(value)
  %4093 = extractvalue %dx.types.CBufRet.f32 %4058, 1
  %4094 = fmul fast float %4093, %4092
  %4095 = fmul fast float %4094, 2.000000e+00
  %4096 = fsub fast float 1.000000e+00, %4095
  %4097 = fmul fast float %4087, %4096
  %4098 = fmul fast float %4088, %4096
  %4099 = fadd fast float %4097, %4094
  %4100 = fadd fast float %4098, %4094
  %4101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %62, float %4099, float %4100, float %4089, float undef, i32 0, i32 0, i32 undef, float %4061)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4102 = extractvalue %dx.types.ResRet.f32 %4101, 0
  %4103 = extractvalue %dx.types.ResRet.f32 %4101, 1
  %4104 = extractvalue %dx.types.ResRet.f32 %4101, 2
  %4105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4106 = extractvalue %dx.types.CBufRet.f32 %4105, 3
  %4107 = fmul fast float %4106, %3823
  %4108 = call float @dx.op.binary.f32(i32 36, float %3546, float %4107)  ; FMin(a,b)
  %4109 = select i1 %4057, float %4108, float %4107
  %4110 = fmul fast float %4102, %3902
  %4111 = fmul fast float %4110, %4109
  %4112 = fmul fast float %4103, %3902
  %4113 = fmul fast float %4112, %4109
  %4114 = fmul fast float %4104, %3902
  %4115 = fmul fast float %4114, %4109
  %4116 = fadd fast float %4111, %3798
  %4117 = fadd fast float %4113, %3799
  %4118 = fadd fast float %4115, %3800
  %4119 = fsub fast float %3801, %3902
  br label %3904

; <label>:4120                                    ; preds = %3904
  br label %4121

; <label>:4121                                    ; preds = %4120, %3767
  %4122 = phi float [ %3768, %3767 ], [ %3905, %4120 ]
  %4123 = phi float [ %3769, %3767 ], [ %3906, %4120 ]
  %4124 = phi float [ %3770, %3767 ], [ %3907, %4120 ]
  %4125 = phi float [ %3771, %3767 ], [ %3908, %4120 ]
  %4126 = add i32 %3772, 1
  %4127 = icmp ugt i32 %4126, %3764
  br i1 %4127, label %4128, label %3767, !llvm.loop !114

; <label>:4128                                    ; preds = %4121
  br label %4129

; <label>:4129                                    ; preds = %4128, %3749
  %4130 = phi float [ 0.000000e+00, %3749 ], [ %4122, %4128 ]
  %4131 = phi float [ 0.000000e+00, %3749 ], [ %4123, %4128 ]
  %4132 = phi float [ 0.000000e+00, %3749 ], [ %4124, %4128 ]
  %4133 = call float @dx.op.dot3.f32(i32 55, float %4130, float %4131, float %4132, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4134 = select i1 %248, float 0.000000e+00, float %4130
  %4135 = select i1 %248, float %4133, float %4131
  %4136 = select i1 %248, float 0.000000e+00, float %4132
  %4137 = fcmp fast olt float %3675, 0.000000e+00
  %4138 = call float @dx.op.unary.f32(i32 6, float %3675)  ; FAbs(value)
  %4139 = fmul fast float %4138, %3615
  %4140 = fmul fast float %4138, %3616
  %4141 = fmul fast float %4138, %3617
  %4142 = select i1 %4137, float %3615, float %4139
  %4143 = select i1 %4137, float %3616, float %4140
  %4144 = select i1 %4137, float %3617, float %4141
  %4145 = fsub fast float 1.000000e+00, %4138
  %4146 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4147 = fmul fast float %4146, %4134
  %4148 = fmul fast float %4146, %4135
  %4149 = fmul fast float %4146, %4136
  %4150 = fadd fast float %4142, %4147
  %4151 = fadd fast float %4143, %4148
  %4152 = fadd fast float %4144, %4149
  br label %4153

; <label>:4153                                    ; preds = %4129, %3658
  %4154 = phi float [ %3615, %3658 ], [ %4150, %4129 ]
  %4155 = phi float [ %3616, %3658 ], [ %4151, %4129 ]
  %4156 = phi float [ %3617, %3658 ], [ %4152, %4129 ]
  %4157 = call float @dx.op.dot3.f32(i32 55, float %2295, float %2296, float %2297, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4158 = fcmp fast ogt float %4157, 0x3E7FF19E20000000
  %4159 = fdiv fast float 1.000000e+00, %4157
  %4160 = select i1 %4158, float %4159, float 0.000000e+00
  %4161 = fmul fast float %4160, %2295
  %4162 = fmul fast float %4160, %2296
  %4163 = fmul fast float %4160, %2297
  %4164 = fadd fast float %4161, -1.000000e+00
  %4165 = fadd fast float %4162, -1.000000e+00
  %4166 = fadd fast float %4163, -1.000000e+00
  %4167 = fmul fast float %4164, 5.000000e-01
  %4168 = fmul fast float %4165, 5.000000e-01
  %4169 = fmul fast float %4166, 5.000000e-01
  %4170 = fadd fast float %4167, 1.000000e+00
  %4171 = fadd fast float %4168, 1.000000e+00
  %4172 = fadd fast float %4169, 1.000000e+00
  %4173 = fmul fast float %3664, %1717
  %4174 = fmul fast float %3664, %1718
  %4175 = fmul fast float %3664, %1719
  %4176 = fadd fast float %4173, -1.000000e+00
  %4177 = fadd fast float %4174, -1.000000e+00
  %4178 = fadd fast float %4175, -1.000000e+00
  %4179 = fmul fast float %4176, %1626
  %4180 = fmul fast float %4177, %1626
  %4181 = fmul fast float %4178, %1626
  %4182 = fmul fast float %4154, %3659
  %4183 = fmul fast float %4155, %3660
  %4184 = fmul fast float %4156, %3661
  %4185 = fsub fast float 1.000000e+00, %2309
  %4186 = bitcast float %4185 to i32
  %4187 = sitofp i32 %4186 to float
  %4188 = fmul fast float %4187, 5.000000e+00
  %4189 = fadd fast float %4188, 0xC1EFBF8940000000
  %4190 = fptosi float %4189 to i32
  %4191 = bitcast i32 %4190 to float
  %4192 = fmul fast float %4191, %1602
  %4193 = fmul fast float %3607, %4192
  %4194 = fmul fast float %4193, %3664
  %4195 = fmul fast float %4194, %4170
  %4196 = fmul fast float %3608, %4192
  %4197 = fmul fast float %4196, %3664
  %4198 = fmul fast float %4197, %4171
  %4199 = fmul fast float %3609, %4192
  %4200 = fmul fast float %4199, %3664
  %4201 = fmul fast float %4200, %4172
  %4202 = fadd fast float %4182, %1607
  %4203 = fadd fast float %4202, %4195
  %4204 = fmul fast float %4203, %1626
  %4205 = fadd fast float %4183, %1608
  %4206 = fadd fast float %4205, %4198
  %4207 = fmul fast float %4206, %1626
  %4208 = fadd fast float %4184, %1609
  %4209 = fadd fast float %4208, %4201
  %4210 = fmul fast float %4209, %1626
  %4211 = fadd fast float %4181, 1.000000e+00
  %4212 = fadd fast float %4180, 1.000000e+00
  %4213 = fadd fast float %4179, 1.000000e+00
  %4214 = fmul fast float %3664, %3609
  %4215 = fmul fast float %3664, %3608
  %4216 = fmul fast float %3664, %3607
  %4217 = fmul fast float %4213, %3611
  %4218 = fmul fast float %4212, %3612
  %4219 = fmul fast float %4211, %3613
  %4220 = fadd fast float %4217, %4216
  %4221 = fmul fast float %4220, %1626
  %4222 = fadd fast float %4218, %4215
  %4223 = fmul fast float %4222, %1626
  %4224 = fadd fast float %4219, %4214
  %4225 = fmul fast float %4224, %1626
  %4226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4227 = extractvalue %dx.types.CBufRet.f32 %4226, 3
  %4228 = fcmp fast oeq float %4227, 0.000000e+00
  br i1 %4228, label %5824, label %4229

; <label>:4229                                    ; preds = %4153
  %4230 = extractvalue %dx.types.CBufRet.f32 %4226, 0
  %4231 = extractvalue %dx.types.CBufRet.f32 %4226, 1
  %4232 = extractvalue %dx.types.CBufRet.f32 %4226, 2
  %4233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4233, 0
  %4235 = extractvalue %dx.types.CBufRet.f32 %4233, 1
  %4236 = extractvalue %dx.types.CBufRet.f32 %4233, 2
  %4237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4238 = extractvalue %dx.types.CBufRet.f32 %4237, 0
  %4239 = extractvalue %dx.types.CBufRet.f32 %4237, 1
  %4240 = call float @dx.op.dot3.f32(i32 55, float %4234, float %4235, float %4236, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4241 = select i1 %248, float %4238, float %4234
  %4242 = select i1 %248, float %4240, float %4235
  %4243 = select i1 %248, float %4239, float %4236
  %4244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4245 = extractvalue %dx.types.CBufRet.f32 %4244, 2
  %4246 = fmul fast float %4245, %105
  %4247 = fmul fast float %4245, %106
  %4248 = fmul fast float %4245, %107
  %4249 = fadd fast float %4246, %157
  %4250 = fadd fast float %4247, %158
  %4251 = fadd fast float %4248, %159
  %4252 = fcmp fast olt float %4227, 0.000000e+00
  br i1 %4252, label %5348, label %4253

; <label>:4253                                    ; preds = %4229
  %4254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4255 = extractvalue %dx.types.CBufRet.f32 %4254, 0
  %4256 = extractvalue %dx.types.CBufRet.f32 %4254, 1
  %4257 = extractvalue %dx.types.CBufRet.f32 %4254, 2
  %4258 = extractvalue %dx.types.CBufRet.f32 %4254, 3
  %4259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4260 = extractvalue %dx.types.CBufRet.f32 %4259, 0
  %4261 = extractvalue %dx.types.CBufRet.f32 %4259, 1
  %4262 = extractvalue %dx.types.CBufRet.f32 %4259, 2
  %4263 = extractvalue %dx.types.CBufRet.f32 %4259, 3
  %4264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.f32 %4264, 0
  %4266 = extractvalue %dx.types.CBufRet.f32 %4264, 1
  %4267 = extractvalue %dx.types.CBufRet.f32 %4264, 2
  %4268 = extractvalue %dx.types.CBufRet.f32 %4264, 3
  %4269 = fmul fast float %4255, %4249
  %4270 = call float @dx.op.tertiary.f32(i32 46, float %4250, float %4256, float %4269)  ; FMad(a,b,c)
  %4271 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %4257, float %4270)  ; FMad(a,b,c)
  %4272 = fadd fast float %4271, %4258
  %4273 = fmul fast float %4260, %4249
  %4274 = call float @dx.op.tertiary.f32(i32 46, float %4250, float %4261, float %4273)  ; FMad(a,b,c)
  %4275 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %4262, float %4274)  ; FMad(a,b,c)
  %4276 = fadd fast float %4275, %4263
  %4277 = fmul fast float %4265, %4249
  %4278 = call float @dx.op.tertiary.f32(i32 46, float %4250, float %4266, float %4277)  ; FMad(a,b,c)
  %4279 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %4267, float %4278)  ; FMad(a,b,c)
  %4280 = fadd fast float %4279, %4268
  %4281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4282 = extractvalue %dx.types.CBufRet.f32 %4281, 0
  %4283 = extractvalue %dx.types.CBufRet.f32 %4281, 1
  %4284 = extractvalue %dx.types.CBufRet.f32 %4281, 3
  %4285 = fmul fast float %4284, %4272
  %4286 = fmul fast float %4284, %4276
  %4287 = fadd fast float %4285, %4282
  %4288 = fadd fast float %4286, %4283
  %4289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4289, 0
  %4291 = extractvalue %dx.types.CBufRet.f32 %4289, 1
  %4292 = extractvalue %dx.types.CBufRet.f32 %4289, 3
  %4293 = fmul fast float %4292, %4272
  %4294 = fmul fast float %4292, %4276
  %4295 = fadd fast float %4293, %4290
  %4296 = fadd fast float %4294, %4291
  %4297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.f32 %4297, 1
  %4299 = fsub fast float %4298, %4280
  %4300 = extractvalue %dx.types.CBufRet.f32 %4297, 2
  %4301 = fmul fast float %4299, %4300
  %4302 = fsub fast float 1.000000e+00, %4301
  %4303 = call float @dx.op.unary.f32(i32 7, float %4302)  ; Saturate(value)
  %4304 = extractvalue %dx.types.CBufRet.f32 %4289, 2
  %4305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4306 = extractvalue %dx.types.CBufRet.f32 %4305, 2
  %4307 = fadd fast float %4306, %4304
  %4308 = fcmp fast ogt float %4307, 0.000000e+00
  br i1 %4308, label %4309, label %4333

; <label>:4309                                    ; preds = %4253
  %4310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4311 = extractvalue %dx.types.CBufRet.f32 %4310, 0
  %4312 = extractvalue %dx.types.CBufRet.f32 %4310, 1
  %4313 = fsub fast float %4295, %4311
  %4314 = fsub fast float %4296, %4312
  %4315 = fcmp fast olt float %4313, 0.000000e+00
  %4316 = fcmp fast olt float %4314, 0.000000e+00
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 0
  %4319 = extractvalue %dx.types.CBufRet.f32 %4317, 1
  %4320 = extractvalue %dx.types.CBufRet.f32 %4317, 2
  %4321 = extractvalue %dx.types.CBufRet.f32 %4317, 3
  %4322 = select i1 %4315, float %4318, float %4320
  %4323 = select i1 %4316, float %4319, float %4321
  %4324 = fmul fast float %4322, %4313
  %4325 = fmul fast float %4323, %4314
  %4326 = call float @dx.op.unary.f32(i32 6, float %4324)  ; FAbs(value)
  %4327 = call float @dx.op.unary.f32(i32 6, float %4325)  ; FAbs(value)
  %4328 = extractvalue %dx.types.CBufRet.f32 %4244, 0
  %4329 = call float @dx.op.binary.f32(i32 35, float %4326, float %4327)  ; FMax(a,b)
  %4330 = fsub fast float %4328, %4329
  %4331 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4332 = fmul fast float %4331, %4303
  br label %4333

; <label>:4333                                    ; preds = %4309, %4253
  %4334 = phi float [ %4332, %4309 ], [ 0.000000e+00, %4253 ]
  %4335 = extractvalue %dx.types.CBufRet.f32 %4281, 2
  %4336 = extractvalue %dx.types.CBufRet.f32 %4305, 1
  %4337 = fadd fast float %4336, %4335
  %4338 = fcmp fast ogt float %4337, 0.000000e+00
  %4339 = extractvalue %dx.types.CBufRet.f32 %4244, 0
  br i1 %4338, label %4340, label %4363

; <label>:4340                                    ; preds = %4333
  %4341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4342 = extractvalue %dx.types.CBufRet.f32 %4341, 0
  %4343 = extractvalue %dx.types.CBufRet.f32 %4341, 1
  %4344 = fsub fast float %4287, %4342
  %4345 = fsub fast float %4288, %4343
  %4346 = fcmp fast olt float %4344, 0.000000e+00
  %4347 = fcmp fast olt float %4345, 0.000000e+00
  %4348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.f32 %4348, 0
  %4350 = extractvalue %dx.types.CBufRet.f32 %4348, 1
  %4351 = extractvalue %dx.types.CBufRet.f32 %4348, 2
  %4352 = extractvalue %dx.types.CBufRet.f32 %4348, 3
  %4353 = select i1 %4346, float %4349, float %4351
  %4354 = select i1 %4347, float %4350, float %4352
  %4355 = fmul fast float %4353, %4344
  %4356 = fmul fast float %4354, %4345
  %4357 = call float @dx.op.unary.f32(i32 6, float %4355)  ; FAbs(value)
  %4358 = call float @dx.op.unary.f32(i32 6, float %4356)  ; FAbs(value)
  %4359 = call float @dx.op.binary.f32(i32 35, float %4357, float %4358)  ; FMax(a,b)
  %4360 = fsub fast float %4339, %4359
  %4361 = call float @dx.op.unary.f32(i32 7, float %4360)  ; Saturate(value)
  %4362 = fmul fast float %4361, %4303
  br label %4363

; <label>:4363                                    ; preds = %4340, %4333
  %4364 = phi float [ %4362, %4340 ], [ 0.000000e+00, %4333 ]
  %4365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4366 = extractvalue %dx.types.CBufRet.f32 %4365, 1
  %4367 = call float @dx.op.unary.f32(i32 7, float %4366)  ; Saturate(value)
  %4368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4369 = extractvalue %dx.types.CBufRet.f32 %4368, 0
  %4370 = extractvalue %dx.types.CBufRet.f32 %4368, 1
  %4371 = fsub fast float %4272, %4369
  %4372 = fsub fast float %4276, %4370
  %4373 = fcmp fast olt float %4371, 0.000000e+00
  %4374 = fcmp fast olt float %4372, 0.000000e+00
  %4375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4376 = extractvalue %dx.types.CBufRet.f32 %4375, 0
  %4377 = extractvalue %dx.types.CBufRet.f32 %4375, 1
  %4378 = extractvalue %dx.types.CBufRet.f32 %4375, 2
  %4379 = extractvalue %dx.types.CBufRet.f32 %4375, 3
  %4380 = select i1 %4373, float %4376, float %4378
  %4381 = select i1 %4374, float %4377, float %4379
  %4382 = fmul fast float %4380, %4371
  %4383 = fmul fast float %4381, %4372
  %4384 = call float @dx.op.unary.f32(i32 6, float %4382)  ; FAbs(value)
  %4385 = call float @dx.op.unary.f32(i32 6, float %4383)  ; FAbs(value)
  %4386 = call float @dx.op.binary.f32(i32 35, float %4384, float %4385)  ; FMax(a,b)
  %4387 = fsub fast float %4339, %4386
  %4388 = call float @dx.op.unary.f32(i32 7, float %4387)  ; Saturate(value)
  %4389 = call float @dx.op.binary.f32(i32 36, float %4388, float %4367)  ; FMin(a,b)
  %4390 = fmul fast float %4389, %4303
  %4391 = fsub fast float %4364, %4390
  %4392 = fsub fast float %4334, %4364
  %4393 = fsub fast float %4392, %4390
  %4394 = call float @dx.op.binary.f32(i32 35, float %4364, float %4334)  ; FMax(a,b)
  %4395 = call float @dx.op.binary.f32(i32 35, float %4390, float %4394)  ; FMax(a,b)
  %4396 = fcmp fast olt float %4395, 1.000000e+00
  br i1 %4396, label %4397, label %4795, !dx.controlflow.hints !116

; <label>:4397                                    ; preds = %4363
  %4398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4399 = extractvalue %dx.types.CBufRet.f32 %4398, 0
  %4400 = fcmp fast une float %4399, 0.000000e+00
  br i1 %4400, label %4401, label %4795, !dx.controlflow.hints !117

; <label>:4401                                    ; preds = %4397
  %4402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.f32 %4402, 0
  %4404 = extractvalue %dx.types.CBufRet.f32 %4402, 1
  %4405 = extractvalue %dx.types.CBufRet.f32 %4402, 2
  %4406 = extractvalue %dx.types.CBufRet.f32 %4402, 3
  %4407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4408 = extractvalue %dx.types.CBufRet.f32 %4407, 0
  %4409 = extractvalue %dx.types.CBufRet.f32 %4407, 1
  %4410 = extractvalue %dx.types.CBufRet.f32 %4407, 2
  %4411 = extractvalue %dx.types.CBufRet.f32 %4407, 3
  %4412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4413 = extractvalue %dx.types.CBufRet.f32 %4412, 0
  %4414 = extractvalue %dx.types.CBufRet.f32 %4412, 1
  %4415 = extractvalue %dx.types.CBufRet.f32 %4412, 2
  %4416 = extractvalue %dx.types.CBufRet.f32 %4412, 3
  %4417 = fmul fast float %4403, %4249
  %4418 = call float @dx.op.tertiary.f32(i32 46, float %4250, float %4404, float %4417)  ; FMad(a,b,c)
  %4419 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %4405, float %4418)  ; FMad(a,b,c)
  %4420 = fadd fast float %4419, %4406
  %4421 = fmul fast float %4408, %4249
  %4422 = call float @dx.op.tertiary.f32(i32 46, float %4250, float %4409, float %4421)  ; FMad(a,b,c)
  %4423 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %4410, float %4422)  ; FMad(a,b,c)
  %4424 = fadd fast float %4423, %4411
  %4425 = fmul fast float %4413, %4249
  %4426 = call float @dx.op.tertiary.f32(i32 46, float %4250, float %4414, float %4425)  ; FMad(a,b,c)
  %4427 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %4415, float %4426)  ; FMad(a,b,c)
  %4428 = fadd fast float %4427, %4416
  %4429 = fcmp fast oge float %4420, 1.000000e+00
  %4430 = fcmp fast oge float %4424, 1.000000e+00
  %4431 = or i1 %4429, %4430
  %4432 = fcmp fast olt float %4420, 0.000000e+00
  %4433 = fcmp fast olt float %4424, 0.000000e+00
  %4434 = or i1 %4432, %4433
  %4435 = or i1 %4431, %4434
  br i1 %4435, label %4795, label %4436, !dx.controlflow.hints !118

; <label>:4436                                    ; preds = %4401
  %4437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4438 = extractvalue %dx.types.CBufRet.f32 %4437, 0
  %4439 = extractvalue %dx.types.CBufRet.f32 %4437, 1
  %4440 = extractvalue %dx.types.CBufRet.f32 %4437, 2
  %4441 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4442 = extractvalue %dx.types.CBufRet.i32 %4441, 2
  %4443 = uitofp i32 %4442 to float
  %4444 = extractvalue %dx.types.CBufRet.i32 %4441, 3
  %4445 = uitofp i32 %4444 to float
  %4446 = extractvalue %dx.types.CBufRet.f32 %4437, 3
  %4447 = fmul fast float %4446, 2.000000e+00
  %4448 = fsub fast float %4420, %4438
  %4449 = fsub fast float %4424, %4439
  %4450 = fmul fast float %4447, %4448
  %4451 = fmul fast float %4447, %4449
  %4452 = fdiv fast float 1.000000e+00, %4232
  %4453 = fmul fast float %4451, %4452
  %4454 = call float @dx.op.unary.f32(i32 6, float %4453)  ; FAbs(value)
  %4455 = fmul fast float %4440, %4251
  %4456 = fmul fast float %4455, %4447
  %4457 = call float @dx.op.unary.f32(i32 6, float %4456)  ; FAbs(value)
  %4458 = call float @dx.op.unary.f32(i32 6, float %4450)  ; FAbs(value)
  %4459 = call float @dx.op.binary.f32(i32 35, float %4457, float %4454)  ; FMax(a,b)
  %4460 = call float @dx.op.binary.f32(i32 35, float %4458, float %4459)  ; FMax(a,b)
  %4461 = fmul fast float %4460, 2.000000e+00
  %4462 = call float @dx.op.unary.f32(i32 23, float %4461)  ; Log(value)
  %4463 = call float @dx.op.binary.f32(i32 35, float %4462, float %4443)  ; FMax(a,b)
  %4464 = call float @dx.op.unary.f32(i32 22, float %4463)  ; Frc(value)
  %4465 = fadd fast float %4464, 0xBFEA666660000000
  %4466 = fmul fast float %4465, 8.000000e+00
  %4467 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4468 = call float @dx.op.unary.f32(i32 27, float %4463)  ; Round_ni(value)
  %4469 = fadd fast float %4468, %4467
  %4470 = call float @dx.op.binary.f32(i32 36, float %4469, float %4445)  ; FMin(a,b)
  %4471 = call float @dx.op.unary.f32(i32 27, float %4470)  ; Round_ni(value)
  %4472 = fsub fast float -0.000000e+00, %4471
  %4473 = call float @dx.op.unary.f32(i32 21, float %4472)  ; Exp(value)
  %4474 = fmul fast float %4473, %4447
  %4475 = fmul fast float %4474, %4420
  %4476 = fmul fast float %4474, %4424
  %4477 = fmul fast float %4475, 2.500000e-01
  %4478 = fmul fast float %4476, 2.500000e-01
  %4479 = fadd fast float %4477, 5.000000e-01
  %4480 = fadd fast float %4478, 5.000000e-01
  %4481 = fsub fast float %4445, %4443
  %4482 = fptoui float %4481 to i32
  %4483 = add i32 %4482, 320
  %4484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %4483)  ; CBufferLoadLegacy(handle,regIndex)
  %4485 = extractvalue %dx.types.CBufRet.f32 %4484, 0
  %4486 = extractvalue %dx.types.CBufRet.f32 %4484, 1
  %4487 = fcmp fast une float %4470, %4445
  %4488 = fsub fast float %4420, %4485
  %4489 = fsub fast float %4424, %4486
  %4490 = call float @dx.op.unary.f32(i32 6, float %4488)  ; FAbs(value)
  %4491 = call float @dx.op.unary.f32(i32 6, float %4489)  ; FAbs(value)
  %4492 = fmul fast float %4490, %4474
  %4493 = fmul fast float %4491, %4474
  %4494 = fcmp fast olt float %4492, 1.000000e+00
  %4495 = fcmp fast olt float %4493, 1.000000e+00
  %4496 = and i1 %4494, %4495
  %4497 = or i1 %4487, %4496
  br i1 %4497, label %4498, label %4795, !dx.controlflow.hints !119

; <label>:4498                                    ; preds = %4436
  %4499 = fmul fast float %4476, 5.000000e-01
  %4500 = fmul fast float %4475, 5.000000e-01
  %4501 = fadd fast float %4499, 5.000000e-01
  %4502 = fadd fast float %4500, 5.000000e-01
  %4503 = sitofp i32 %4442 to float
  %4504 = fsub fast float %4470, %4503
  %4505 = call float @dx.op.unary.f32(i32 27, float %4504)  ; Round_ni(value)
  %4506 = call float @dx.op.unary.f32(i32 22, float %4470)  ; Frc(value)
  %4507 = call float @dx.op.unary.f32(i32 22, float %4502)  ; Frc(value)
  %4508 = call float @dx.op.unary.f32(i32 22, float %4501)  ; Frc(value)
  %4509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4507, float %4508, float %4505, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4510 = extractvalue %dx.types.ResRet.f32 %4509, 0
  %4511 = extractvalue %dx.types.ResRet.f32 %4509, 1
  %4512 = extractvalue %dx.types.ResRet.f32 %4509, 2
  %4513 = extractvalue %dx.types.ResRet.f32 %4509, 3
  %4514 = fcmp fast ogt float %4506, 0.000000e+00
  br i1 %4514, label %4515, label %4536, !dx.controlflow.hints !120

; <label>:4515                                    ; preds = %4498
  %4516 = fadd fast float %4505, 1.000000e+00
  %4517 = call float @dx.op.unary.f32(i32 22, float %4479)  ; Frc(value)
  %4518 = call float @dx.op.unary.f32(i32 22, float %4480)  ; Frc(value)
  %4519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4517, float %4518, float %4516, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4520 = extractvalue %dx.types.ResRet.f32 %4519, 0
  %4521 = extractvalue %dx.types.ResRet.f32 %4519, 1
  %4522 = extractvalue %dx.types.ResRet.f32 %4519, 2
  %4523 = extractvalue %dx.types.ResRet.f32 %4519, 3
  %4524 = fsub fast float %4520, %4510
  %4525 = fsub fast float %4521, %4511
  %4526 = fsub fast float %4522, %4512
  %4527 = fsub fast float %4523, %4513
  %4528 = fmul fast float %4524, %4506
  %4529 = fmul fast float %4525, %4506
  %4530 = fmul fast float %4526, %4506
  %4531 = fmul fast float %4527, %4506
  %4532 = fadd fast float %4528, %4510
  %4533 = fadd fast float %4529, %4511
  %4534 = fadd fast float %4530, %4512
  %4535 = fadd fast float %4531, %4513
  br label %4536

; <label>:4536                                    ; preds = %4515, %4498
  %4537 = phi float [ %4532, %4515 ], [ %4510, %4498 ]
  %4538 = phi float [ %4533, %4515 ], [ %4511, %4498 ]
  %4539 = phi float [ %4534, %4515 ], [ %4512, %4498 ]
  %4540 = phi float [ %4535, %4515 ], [ %4513, %4498 ]
  %4541 = fadd fast float %4537, -5.000000e-01
  %4542 = fadd fast float %4539, -5.000000e-01
  %4543 = fmul fast float %4541, 0xBFD5555560000000
  %4544 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4542, float %4543)  ; FMad(a,b,c)
  %4545 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4538, float 0.000000e+00)  ; FMad(a,b,c)
  %4546 = fadd fast float %4545, %4540
  %4547 = fmul fast float %4541, -7.500000e-01
  %4548 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4542, float %4547)  ; FMad(a,b,c)
  %4549 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4538, float 0.000000e+00)  ; FMad(a,b,c)
  %4550 = fadd fast float %4549, %4540
  %4551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4552 = extractvalue %dx.types.CBufRet.f32 %4551, 0
  %4553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4554 = extractvalue %dx.types.CBufRet.f32 %4553, 0
  %4555 = extractvalue %dx.types.CBufRet.f32 %4553, 1
  %4556 = extractvalue %dx.types.CBufRet.f32 %4553, 2
  %4557 = extractvalue %dx.types.CBufRet.f32 %4553, 3
  %4558 = fsub fast float %4554, %4544
  %4559 = fsub fast float %4555, %4546
  %4560 = fsub fast float %4556, %4548
  %4561 = fsub fast float %4557, %4550
  %4562 = fmul fast float %4558, %4552
  %4563 = fmul fast float %4559, %4552
  %4564 = fmul fast float %4560, %4552
  %4565 = fmul fast float %4561, %4552
  %4566 = fadd fast float %4562, %4544
  %4567 = fadd fast float %4563, %4546
  %4568 = fadd fast float %4564, %4548
  %4569 = fadd fast float %4565, %4550
  %4570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4571 = extractvalue %dx.types.ResRet.i32 %4570, 0
  %4572 = and i32 %4571, 536870911
  %4573 = uitofp i32 %4572 to float
  %4574 = fmul fast float %4573, %4420
  %4575 = fmul fast float %4573, %4424
  %4576 = fptoui float %4574 to i32
  %4577 = fptoui float %4575 to i32
  %4578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4579 = extractvalue %dx.types.ResRet.i32 %4578, 0
  %4580 = and i32 %4579, 31
  %4581 = lshr i32 %4576, %4580
  %4582 = lshr i32 %4577, %4580
  %4583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4584 = extractvalue %dx.types.ResRet.i32 %4583, 0
  %4585 = and i32 %4584, 31
  %4586 = shl i32 1, %4585
  %4587 = call i32 @dx.op.binary.i32(i32 40, i32 %4586, i32 4)  ; UMin(a,b)
  %4588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.i32 %4588, 0
  %4590 = extractvalue %dx.types.ResRet.i32 %4588, 1
  %4591 = icmp eq i32 %4587, 0
  br i1 %4591, label %4633, label %4592

; <label>:4592                                    ; preds = %4536
  br label %4593

; <label>:4593                                    ; preds = %4621, %4592
  %4594 = phi i32 [ %4624, %4621 ], [ 0, %4592 ]
  %4595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4596 = extractvalue %dx.types.ResRet.i32 %4595, 0
  %4597 = lshr i32 %4596, 16
  %4598 = and i32 %4597, 31
  %4599 = shl i32 %4582, %4598
  %4600 = add i32 %4599, %4581
  %4601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4602 = extractvalue %dx.types.ResRet.i32 %4601, 0
  %4603 = and i32 %4602, 31
  %4604 = shl i32 %4600, %4603
  %4605 = add i32 %4604, %4594
  %4606 = shl i32 %4605, 2
  %4607 = add i32 %4606, 32
  %4608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4607, i32 undef)  ; BufferLoad(srv,index,wot)
  %4609 = extractvalue %dx.types.ResRet.i32 %4608, 0
  %4610 = icmp slt i32 %4609, 0
  %4611 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %4594
  %4612 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %4594
  %4613 = bitcast float* %4611 to i32*
  %4614 = bitcast float* %4612 to i32*
  br i1 %4610, label %4615, label %4621

; <label>:4615                                    ; preds = %4593
  %4616 = and i32 %4609, 1073741823
  %4617 = add nuw nsw i32 %4616, 20
  %4618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4617, i32 undef)  ; BufferLoad(srv,index,wot)
  %4619 = extractvalue %dx.types.ResRet.i32 %4618, 0
  %4620 = extractvalue %dx.types.ResRet.i32 %4618, 1
  br label %4621

; <label>:4621                                    ; preds = %4615, %4593
  %4622 = phi i32 [ %4619, %4615 ], [ %4589, %4593 ]
  %4623 = phi i32 [ %4620, %4615 ], [ %4590, %4593 ]
  store i32 %4622, i32* %4613, align 4
  store i32 %4623, i32* %4614, align 4
  %4624 = add nuw i32 %4594, 1
  %4625 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.i32 %4625, 2
  %4627 = icmp eq i32 %4626, 0
  %4628 = icmp ugt i32 %4609, -1073741825
  %4629 = and i1 %4628, %4627
  %4630 = icmp ult i32 %4624, %4587
  %4631 = and i1 %4629, %4630
  br i1 %4631, label %4593, label %4632

; <label>:4632                                    ; preds = %4621
  br label %4633

; <label>:4633                                    ; preds = %4632, %4536
  %4634 = phi i32 [ 0, %4536 ], [ %4624, %4632 ]
  %4635 = extractvalue %dx.types.CBufRet.f32 %4398, 2
  %4636 = fptoui float %4635 to i32
  %4637 = icmp eq i32 %4636, 0
  br i1 %4637, label %4689, label %4638

; <label>:4638                                    ; preds = %4633
  br label %4639

; <label>:4639                                    ; preds = %4684, %4638
  %4640 = phi i32 [ %4685, %4684 ], [ %4634, %4638 ]
  %4641 = phi i32 [ %4686, %4684 ], [ 0, %4638 ]
  %4642 = lshr i32 %4641, 2
  %4643 = and i32 %4641, 3
  %4644 = add nuw nsw i32 %4642, 83
  %4645 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 %4644)  ; CBufferLoadLegacy(handle,regIndex)
  %4646 = extractvalue %dx.types.CBufRet.i32 %4645, 0
  %4647 = extractvalue %dx.types.CBufRet.i32 %4645, 1
  %4648 = extractvalue %dx.types.CBufRet.i32 %4645, 2
  %4649 = extractvalue %dx.types.CBufRet.i32 %4645, 3
  %4650 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %4646, i32* %4650, align 4
  %4651 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %4647, i32* %4651, align 4
  %4652 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %4648, i32* %4652, align 4
  %4653 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %4649, i32* %4653, align 4
  %4654 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %4643
  %4655 = load i32, i32* %4654, align 4, !tbaa !121, !noalias !125
  %4656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4657 = extractvalue %dx.types.ResRet.i32 %4656, 0
  %4658 = lshr i32 %4657, 16
  %4659 = and i32 %4658, 31
  %4660 = shl i32 %4582, %4659
  %4661 = add i32 %4660, %4581
  %4662 = shl i32 %4661, 2
  %4663 = add i32 %4662, %4655
  %4664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4663, i32 undef)  ; BufferLoad(srv,index,wot)
  %4665 = extractvalue %dx.types.ResRet.i32 %4664, 0
  %4666 = icmp eq i32 %4665, 0
  br i1 %4666, label %4684, label %4667

; <label>:4667                                    ; preds = %4639
  %4668 = icmp slt i32 %4665, 0
  %4669 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %4640
  %4670 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %4640
  %4671 = bitcast float* %4669 to i32*
  %4672 = bitcast float* %4670 to i32*
  br i1 %4668, label %4673, label %4680

; <label>:4673                                    ; preds = %4667
  %4674 = and i32 %4665, 1073741823
  %4675 = add i32 %4655, 20
  %4676 = add i32 %4675, %4674
  %4677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4676, i32 undef)  ; BufferLoad(srv,index,wot)
  %4678 = extractvalue %dx.types.ResRet.i32 %4677, 0
  %4679 = extractvalue %dx.types.ResRet.i32 %4677, 1
  br label %4680

; <label>:4680                                    ; preds = %4673, %4667
  %4681 = phi i32 [ %4678, %4673 ], [ %4589, %4667 ]
  %4682 = phi i32 [ %4679, %4673 ], [ %4590, %4667 ]
  store i32 %4681, i32* %4671, align 4
  store i32 %4682, i32* %4672, align 4
  %4683 = add i32 %4640, 1
  br label %4684

; <label>:4684                                    ; preds = %4680, %4639
  %4685 = phi i32 [ %4640, %4639 ], [ %4683, %4680 ]
  %4686 = add nuw i32 %4641, 1
  %4687 = icmp eq i32 %4686, %4636
  br i1 %4687, label %4688, label %4639

; <label>:4688                                    ; preds = %4684
  br label %4689

; <label>:4689                                    ; preds = %4688, %4633
  %4690 = phi i32 [ %4634, %4633 ], [ %4685, %4688 ]
  %4691 = icmp eq i32 %4690, 1
  %4692 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 0
  %4693 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 0
  br i1 %4691, label %4694, label %4697

; <label>:4694                                    ; preds = %4689
  %4695 = load float, float* %4692, align 4
  %4696 = load float, float* %4693, align 4
  br label %4724

; <label>:4697                                    ; preds = %4689
  %4698 = load float, float* %4692, align 4
  %4699 = load float, float* %4693, align 4
  %4700 = fdiv fast float 1.000000e+00, %4699
  %4701 = fsub fast float %4698, %4700
  %4702 = icmp ugt i32 %4690, 1
  br i1 %4702, label %4703, label %4719

; <label>:4703                                    ; preds = %4697
  br label %4704

; <label>:4704                                    ; preds = %4704, %4703
  %4705 = phi float [ %4714, %4704 ], [ %4701, %4703 ]
  %4706 = phi float [ %4715, %4704 ], [ %4698, %4703 ]
  %4707 = phi i32 [ %4716, %4704 ], [ 1, %4703 ]
  %4708 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %4707
  %4709 = load float, float* %4708, align 4
  %4710 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %4707
  %4711 = load float, float* %4710, align 4
  %4712 = fdiv fast float 1.000000e+00, %4711
  %4713 = fsub fast float %4709, %4712
  %4714 = call float @dx.op.binary.f32(i32 36, float %4705, float %4713)  ; FMin(a,b)
  %4715 = call float @dx.op.binary.f32(i32 35, float %4706, float %4709)  ; FMax(a,b)
  %4716 = add nuw i32 %4707, 1
  %4717 = icmp eq i32 %4716, %4690
  br i1 %4717, label %4718, label %4704

; <label>:4718                                    ; preds = %4704
  br label %4719

; <label>:4719                                    ; preds = %4718, %4697
  %4720 = phi float [ %4701, %4697 ], [ %4714, %4718 ]
  %4721 = phi float [ %4698, %4697 ], [ %4715, %4718 ]
  %4722 = fsub fast float %4721, %4720
  %4723 = fdiv fast float 1.000000e+00, %4722
  br label %4724

; <label>:4724                                    ; preds = %4719, %4694
  %4725 = phi float [ %4695, %4694 ], [ %4721, %4719 ]
  %4726 = phi float [ %4696, %4694 ], [ %4723, %4719 ]
  %4727 = fadd fast float %4428, %4725
  %4728 = fmul fast float %4727, %4726
  %4729 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4730 = fmul fast float %4729, 2.000000e+00
  %4731 = fsub fast float 1.000000e+00, %4730
  %4732 = fmul fast float %4566, %4566
  %4733 = fsub fast float %4567, %4732
  %4734 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4733)  ; FMax(a,b)
  %4735 = fdiv fast float 1.000000e+00, %4734
  %4736 = fmul fast float %4567, %4566
  %4737 = fsub fast float %4568, %4736
  %4738 = fsub fast float %4731, %4566
  %4739 = fmul fast float %4731, %4731
  %4740 = fsub fast float %4739, %4567
  %4741 = fmul fast float %4735, %4737
  %4742 = fmul fast float %4741, %4738
  %4743 = fsub fast float %4740, %4742
  %4744 = fmul fast float %4567, %4567
  %4745 = fsub fast float %4569, %4744
  %4746 = fmul fast float %4737, %4737
  %4747 = fmul fast float %4746, %4735
  %4748 = fsub fast float %4745, %4747
  %4749 = fdiv fast float %4743, %4748
  %4750 = fmul fast float %4749, %4737
  %4751 = fsub fast float %4738, %4750
  %4752 = fmul fast float %4751, %4735
  %4753 = fmul fast float %4752, %4566
  %4754 = fsub fast float 1.000000e+00, %4753
  %4755 = fmul fast float %4749, %4567
  %4756 = fsub fast float %4754, %4755
  %4757 = fmul fast float %4752, %4752
  %4758 = fmul fast float %4749, 4.000000e+00
  %4759 = fmul fast float %4758, %4756
  %4760 = fsub fast float %4757, %4759
  %4761 = call float @dx.op.unary.f32(i32 24, float %4760)  ; Sqrt(value)
  %4762 = fcmp fast oge float %4752, 0.000000e+00
  %4763 = fsub fast float -0.000000e+00, %4761
  %4764 = select i1 %4762, float %4763, float %4761
  %4765 = fsub fast float %4764, %4752
  %4766 = fdiv fast float %4765, %4749
  %4767 = fdiv fast float %4756, %4765
  %4768 = fmul fast float %4766, 5.000000e-01
  %4769 = fmul fast float %4767, 2.000000e+00
  %4770 = select i1 %4762, float %4768, float %4769
  %4771 = select i1 %4762, float %4769, float %4768
  %4772 = call float @dx.op.binary.f32(i32 35, float %4770, float %4771)  ; FMax(a,b)
  %4773 = call float @dx.op.binary.f32(i32 36, float %4770, float %4771)  ; FMin(a,b)
  %4774 = fcmp fast ogt float %4731, %4772
  %4775 = fsub fast float %4731, %4773
  %4776 = fsub fast float %4731, %4772
  %4777 = fsub fast float %4772, %4773
  %4778 = select i1 %4774, float %4776, float %4777
  %4779 = fmul float %4775, %4778
  %4780 = select i1 %4774, float %4773, float %4731
  %4781 = fcmp fast ogt float %4731, %4773
  %4782 = fmul fast float %4780, %4772
  %4783 = fadd fast float %4780, %4772
  %4784 = fmul fast float %4783, %4566
  %4785 = fadd fast float %4782, %4567
  %4786 = fsub fast float %4785, %4784
  %4787 = fdiv fast float %4786, %4779
  %4788 = select i1 %4781, float %4787, float 0.000000e+00
  %4789 = fsub fast float 1.000000e+00, %4788
  %4790 = select i1 %4774, float %4789, float %4788
  %4791 = call float @dx.op.unary.f32(i32 7, float %4790)  ; Saturate(value)
  %4792 = extractvalue %dx.types.CBufRet.f32 %4551, 3
  %4793 = fmul fast float %4792, %4791
  %4794 = fsub fast float 1.000000e+00, %4793
  br label %4795

; <label>:4795                                    ; preds = %4724, %4436, %4401, %4397, %4363
  %4796 = phi float [ 1.000000e+00, %4363 ], [ %4794, %4724 ], [ 1.000000e+00, %4401 ], [ 1.000000e+00, %4436 ], [ 1.000000e+00, %4397 ]
  %4797 = fcmp fast ogt float %4393, 0.000000e+00
  br i1 %4797, label %4798, label %4960, !dx.controlflow.hints !134

; <label>:4798                                    ; preds = %4795
  %4799 = fadd fast float %4306, %4280
  %4800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4801 = extractvalue %dx.types.CBufRet.f32 %4800, 2
  %4802 = extractvalue %dx.types.CBufRet.f32 %4800, 3
  %4803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4804 = extractvalue %dx.types.CBufRet.f32 %4803, 2
  %4805 = call float @dx.op.binary.f32(i32 35, float %4799, float 0.000000e+00)  ; FMax(a,b)
  %4806 = fadd fast float %4805, 0x3F10000000000000
  %4807 = fcmp fast oeq float %4804, 0.000000e+00
  br i1 %4807, label %4808, label %4875

; <label>:4808                                    ; preds = %4798
  %4809 = extractvalue %dx.types.CBufRet.f32 %4800, 1
  %4810 = extractvalue %dx.types.CBufRet.f32 %4800, 0
  %4811 = fmul fast float %4810, %4295
  %4812 = fmul fast float %4809, %4296
  %4813 = fadd fast float %4811, 5.000000e-01
  %4814 = call float @dx.op.unary.f32(i32 27, float %4813)  ; Round_ni(value)
  %4815 = fadd fast float %4812, 5.000000e-01
  %4816 = call float @dx.op.unary.f32(i32 27, float %4815)  ; Round_ni(value)
  %4817 = fsub fast float %4813, %4814
  %4818 = fsub fast float %4815, %4816
  %4819 = fadd fast float %4814, -5.000000e-01
  %4820 = fadd fast float %4816, -5.000000e-01
  %4821 = fmul fast float %4817, 2.000000e+00
  %4822 = fsub fast float 3.000000e+00, %4821
  %4823 = fadd fast float %4821, 1.000000e+00
  %4824 = fsub fast float 2.000000e+00, %4817
  %4825 = bitcast float %4822 to i32
  %4826 = sub nsw i32 2129859010, %4825
  %4827 = bitcast i32 %4826 to float
  %4828 = fmul fast float %4827, %4824
  %4829 = fadd fast float %4828, -1.000000e+00
  %4830 = bitcast float %4823 to i32
  %4831 = sub nsw i32 2129859010, %4830
  %4832 = bitcast i32 %4831 to float
  %4833 = fmul fast float %4832, %4817
  %4834 = fadd fast float %4833, 1.000000e+00
  %4835 = fmul fast float %4818, 2.000000e+00
  %4836 = fsub fast float 3.000000e+00, %4835
  %4837 = fadd fast float %4835, 1.000000e+00
  %4838 = fsub fast float 2.000000e+00, %4818
  %4839 = bitcast float %4836 to i32
  %4840 = sub nsw i32 2129859010, %4839
  %4841 = bitcast i32 %4840 to float
  %4842 = fmul fast float %4841, %4838
  %4843 = fadd fast float %4842, -1.000000e+00
  %4844 = bitcast float %4837 to i32
  %4845 = sub nsw i32 2129859010, %4844
  %4846 = bitcast i32 %4845 to float
  %4847 = fmul fast float %4846, %4818
  %4848 = fadd fast float %4847, 1.000000e+00
  %4849 = fadd fast float %4829, %4819
  %4850 = fmul fast float %4849, %4801
  %4851 = fadd fast float %4843, %4820
  %4852 = fmul fast float %4851, %4802
  %4853 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4850, float %4852, float undef, float undef, i32 0, i32 0, i32 undef, float %4806)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4854 = extractvalue %dx.types.ResRet.f32 %4853, 0
  %4855 = fmul fast float %4854, %4822
  %4856 = fadd fast float %4834, %4819
  %4857 = fmul fast float %4856, %4801
  %4858 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4857, float %4852, float undef, float undef, i32 0, i32 0, i32 undef, float %4806)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4859 = extractvalue %dx.types.ResRet.f32 %4858, 0
  %4860 = fmul fast float %4859, %4823
  %4861 = fadd fast float %4848, %4820
  %4862 = fmul fast float %4861, %4802
  %4863 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4850, float %4862, float undef, float undef, i32 0, i32 0, i32 undef, float %4806)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4864 = extractvalue %dx.types.ResRet.f32 %4863, 0
  %4865 = fmul fast float %4864, %4822
  %4866 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4857, float %4862, float undef, float undef, i32 0, i32 0, i32 undef, float %4806)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4867 = extractvalue %dx.types.ResRet.f32 %4866, 0
  %4868 = fmul fast float %4867, %4823
  %4869 = fadd fast float %4868, %4865
  %4870 = fmul fast float %4869, %4837
  %4871 = fadd fast float %4860, %4855
  %4872 = fmul fast float %4871, %4836
  %4873 = fadd fast float %4872, %4870
  %4874 = fmul fast float %4873, 6.250000e-02
  br label %4960

; <label>:4875                                    ; preds = %4798
  %4876 = fmul fast float %259, 0x401921FB60000000
  %4877 = call float @dx.op.unary.f32(i32 13, float %4876)  ; Sin(value)
  %4878 = call float @dx.op.unary.f32(i32 12, float %4876)  ; Cos(value)
  %4879 = fsub fast float -0.000000e+00, %4877
  br label %4880

; <label>:4880                                    ; preds = %4929, %4875
  %4881 = phi float [ 0.000000e+00, %4875 ], [ %4924, %4929 ]
  %4882 = phi float [ 0.000000e+00, %4875 ], [ %4926, %4929 ]
  %4883 = phi i32 [ 0, %4875 ], [ %4930, %4929 ]
  %4884 = mul i32 %4883, 2
  %4885 = add i32 0, %4884
  %4886 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4885
  %4887 = load float, float* %4886, align 4
  %4888 = mul i32 %4883, 2
  %4889 = add i32 1, %4888
  %4890 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4889
  %4891 = load float, float* %4890, align 4
  %4892 = fmul fast float %4887, %4878
  %4893 = call float @dx.op.tertiary.f32(i32 46, float %4891, float %4879, float %4892)  ; FMad(a,b,c)
  %4894 = fmul fast float %4887, %4877
  %4895 = call float @dx.op.tertiary.f32(i32 46, float %4891, float %4878, float %4894)  ; FMad(a,b,c)
  %4896 = fmul fast float %4893, %4804
  %4897 = fmul fast float %4895, %4804
  %4898 = fadd fast float %4896, %4295
  %4899 = fadd fast float %4897, %4296
  %4900 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %65, float %4898, float %4899, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4901 = extractvalue %dx.types.ResRet.f32 %4900, 0
  %4902 = extractvalue %dx.types.ResRet.f32 %4900, 1
  %4903 = extractvalue %dx.types.ResRet.f32 %4900, 2
  %4904 = extractvalue %dx.types.ResRet.f32 %4900, 3
  %4905 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %4901, float* %4905, align 4
  %4906 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %4902, float* %4906, align 4
  %4907 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %4903, float* %4907, align 4
  %4908 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %4904, float* %4908, align 4
  %4909 = fsub fast float %4901, %4806
  %4910 = fcmp fast olt float %4909, 0.000000e+00
  %4911 = select i1 %4910, float 0.000000e+00, float 1.000000e+00
  %4912 = fadd fast float %4911, %4881
  %4913 = fmul fast float %4911, %4909
  %4914 = fadd fast float %4913, %4882
  br label %4915

; <label>:4915                                    ; preds = %4915, %4880
  %4916 = phi i32 [ 1, %4880 ], [ %4927, %4915 ]
  %4917 = phi float [ %4914, %4880 ], [ %4926, %4915 ]
  %4918 = phi float [ %4912, %4880 ], [ %4924, %4915 ]
  %4919 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %4916
  %4920 = load float, float* %4919, align 4, !tbaa !135, !noalias !125
  %4921 = fsub fast float %4920, %4806
  %4922 = fcmp fast olt float %4921, 0.000000e+00
  %4923 = select i1 %4922, float 0.000000e+00, float 1.000000e+00
  %4924 = fadd fast float %4923, %4918
  %4925 = fmul fast float %4923, %4921
  %4926 = fadd fast float %4925, %4917
  %4927 = add nuw nsw i32 %4916, 1
  %4928 = icmp eq i32 %4927, 4
  br i1 %4928, label %4929, label %4915, !llvm.loop !137

; <label>:4929                                    ; preds = %4915
  %4930 = add nuw nsw i32 %4883, 1
  %4931 = icmp eq i32 %4930, 8
  br i1 %4931, label %4932, label %4880, !llvm.loop !138

; <label>:4932                                    ; preds = %4929
  %4933 = fdiv fast float 1.000000e+00, %4924
  %4934 = fmul fast float %4933, %4926
  %4935 = fdiv fast float 1.000000e+00, %4806
  %4936 = fmul fast float %4934, %4935
  %4937 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4938 = call float @dx.op.binary.f32(i32 35, float %4937, float 0.000000e+00)  ; FMax(a,b)
  %4939 = fmul fast float %4924, 3.125000e-02
  %4940 = call float @dx.op.unary.f32(i32 7, float %4939)  ; Saturate(value)
  %4941 = fmul fast float %4940, 2.000000e+00
  %4942 = fadd fast float %4941, -1.000000e+00
  %4943 = fcmp fast ogt float %4942, 0.000000e+00
  %4944 = fcmp fast olt float %4942, 0.000000e+00
  %4945 = zext i1 %4943 to i32
  %4946 = zext i1 %4944 to i32
  %4947 = sub nsw i32 %4945, %4946
  %4948 = sitofp i32 %4947 to float
  %4949 = fmul fast float %4948, %4942
  %4950 = fsub fast float 1.000000e+00, %4949
  %4951 = fmul fast float %4950, %4950
  %4952 = fmul fast float %4951, %4950
  %4953 = fsub fast float %4950, %4952
  %4954 = fmul fast float %4953, %4938
  %4955 = fsub fast float 1.000000e+00, %4952
  %4956 = fsub fast float %4955, %4954
  %4957 = fmul fast float %4948, 5.000000e-01
  %4958 = fmul fast float %4957, %4956
  %4959 = fsub fast float 5.000000e-01, %4958
  br label %4960

; <label>:4960                                    ; preds = %4932, %4808, %4795
  %4961 = phi float [ 1.000000e+00, %4795 ], [ %4874, %4808 ], [ %4959, %4932 ]
  %4962 = fcmp fast ogt float %4391, 0.000000e+00
  br i1 %4962, label %4963, label %5127, !dx.controlflow.hints !139

; <label>:4963                                    ; preds = %4960
  %4964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4965 = extractvalue %dx.types.CBufRet.f32 %4964, 1
  %4966 = fadd fast float %4965, %4280
  %4967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4968 = extractvalue %dx.types.CBufRet.f32 %4967, 2
  %4969 = extractvalue %dx.types.CBufRet.f32 %4967, 3
  %4970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4971 = extractvalue %dx.types.CBufRet.f32 %4970, 1
  %4972 = call float @dx.op.binary.f32(i32 35, float %4966, float 0.000000e+00)  ; FMax(a,b)
  %4973 = fadd fast float %4972, 0x3F10000000000000
  %4974 = fcmp fast oeq float %4971, 0.000000e+00
  br i1 %4974, label %4975, label %5042

; <label>:4975                                    ; preds = %4963
  %4976 = extractvalue %dx.types.CBufRet.f32 %4967, 1
  %4977 = extractvalue %dx.types.CBufRet.f32 %4967, 0
  %4978 = fmul fast float %4977, %4287
  %4979 = fmul fast float %4976, %4288
  %4980 = fadd fast float %4978, 5.000000e-01
  %4981 = call float @dx.op.unary.f32(i32 27, float %4980)  ; Round_ni(value)
  %4982 = fadd fast float %4979, 5.000000e-01
  %4983 = call float @dx.op.unary.f32(i32 27, float %4982)  ; Round_ni(value)
  %4984 = fsub fast float %4980, %4981
  %4985 = fsub fast float %4982, %4983
  %4986 = fadd fast float %4981, -5.000000e-01
  %4987 = fadd fast float %4983, -5.000000e-01
  %4988 = fmul fast float %4984, 2.000000e+00
  %4989 = fsub fast float 3.000000e+00, %4988
  %4990 = fadd fast float %4988, 1.000000e+00
  %4991 = fsub fast float 2.000000e+00, %4984
  %4992 = bitcast float %4989 to i32
  %4993 = sub nsw i32 2129859010, %4992
  %4994 = bitcast i32 %4993 to float
  %4995 = fmul fast float %4994, %4991
  %4996 = fadd fast float %4995, -1.000000e+00
  %4997 = bitcast float %4990 to i32
  %4998 = sub nsw i32 2129859010, %4997
  %4999 = bitcast i32 %4998 to float
  %5000 = fmul fast float %4999, %4984
  %5001 = fadd fast float %5000, 1.000000e+00
  %5002 = fmul fast float %4985, 2.000000e+00
  %5003 = fsub fast float 3.000000e+00, %5002
  %5004 = fadd fast float %5002, 1.000000e+00
  %5005 = fsub fast float 2.000000e+00, %4985
  %5006 = bitcast float %5003 to i32
  %5007 = sub nsw i32 2129859010, %5006
  %5008 = bitcast i32 %5007 to float
  %5009 = fmul fast float %5008, %5005
  %5010 = fadd fast float %5009, -1.000000e+00
  %5011 = bitcast float %5004 to i32
  %5012 = sub nsw i32 2129859010, %5011
  %5013 = bitcast i32 %5012 to float
  %5014 = fmul fast float %5013, %4985
  %5015 = fadd fast float %5014, 1.000000e+00
  %5016 = fadd fast float %4996, %4986
  %5017 = fmul fast float %5016, %4968
  %5018 = fadd fast float %5010, %4987
  %5019 = fmul fast float %5018, %4969
  %5020 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5017, float %5019, float undef, float undef, i32 0, i32 0, i32 undef, float %4973)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5021 = extractvalue %dx.types.ResRet.f32 %5020, 0
  %5022 = fmul fast float %5021, %4989
  %5023 = fadd fast float %5001, %4986
  %5024 = fmul fast float %5023, %4968
  %5025 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5024, float %5019, float undef, float undef, i32 0, i32 0, i32 undef, float %4973)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5026 = extractvalue %dx.types.ResRet.f32 %5025, 0
  %5027 = fmul fast float %5026, %4990
  %5028 = fadd fast float %5015, %4987
  %5029 = fmul fast float %5028, %4969
  %5030 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5017, float %5029, float undef, float undef, i32 0, i32 0, i32 undef, float %4973)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5031 = extractvalue %dx.types.ResRet.f32 %5030, 0
  %5032 = fmul fast float %5031, %4989
  %5033 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5024, float %5029, float undef, float undef, i32 0, i32 0, i32 undef, float %4973)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5034 = extractvalue %dx.types.ResRet.f32 %5033, 0
  %5035 = fmul fast float %5034, %4990
  %5036 = fadd fast float %5035, %5032
  %5037 = fmul fast float %5036, %5004
  %5038 = fadd fast float %5027, %5022
  %5039 = fmul fast float %5038, %5003
  %5040 = fadd fast float %5039, %5037
  %5041 = fmul fast float %5040, 6.250000e-02
  br label %5127

; <label>:5042                                    ; preds = %4963
  %5043 = fmul fast float %259, 0x401921FB60000000
  %5044 = call float @dx.op.unary.f32(i32 13, float %5043)  ; Sin(value)
  %5045 = call float @dx.op.unary.f32(i32 12, float %5043)  ; Cos(value)
  %5046 = fsub fast float -0.000000e+00, %5044
  br label %5047

; <label>:5047                                    ; preds = %5096, %5042
  %5048 = phi float [ 0.000000e+00, %5042 ], [ %5091, %5096 ]
  %5049 = phi float [ 0.000000e+00, %5042 ], [ %5093, %5096 ]
  %5050 = phi i32 [ 0, %5042 ], [ %5097, %5096 ]
  %5051 = mul i32 %5050, 2
  %5052 = add i32 0, %5051
  %5053 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5052
  %5054 = load float, float* %5053, align 4
  %5055 = mul i32 %5050, 2
  %5056 = add i32 1, %5055
  %5057 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5056
  %5058 = load float, float* %5057, align 4
  %5059 = fmul fast float %5054, %5045
  %5060 = call float @dx.op.tertiary.f32(i32 46, float %5058, float %5046, float %5059)  ; FMad(a,b,c)
  %5061 = fmul fast float %5054, %5044
  %5062 = call float @dx.op.tertiary.f32(i32 46, float %5058, float %5045, float %5061)  ; FMad(a,b,c)
  %5063 = fmul fast float %5060, %4971
  %5064 = fmul fast float %5062, %4971
  %5065 = fadd fast float %5063, %4287
  %5066 = fadd fast float %5064, %4288
  %5067 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %65, float %5065, float %5066, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5068 = extractvalue %dx.types.ResRet.f32 %5067, 0
  %5069 = extractvalue %dx.types.ResRet.f32 %5067, 1
  %5070 = extractvalue %dx.types.ResRet.f32 %5067, 2
  %5071 = extractvalue %dx.types.ResRet.f32 %5067, 3
  %5072 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 0
  store float %5068, float* %5072, align 4
  %5073 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 1
  store float %5069, float* %5073, align 4
  %5074 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 2
  store float %5070, float* %5074, align 4
  %5075 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 3
  store float %5071, float* %5075, align 4
  %5076 = fsub fast float %5068, %4973
  %5077 = fcmp fast olt float %5076, 0.000000e+00
  %5078 = select i1 %5077, float 0.000000e+00, float 1.000000e+00
  %5079 = fadd fast float %5078, %5048
  %5080 = fmul fast float %5078, %5076
  %5081 = fadd fast float %5080, %5049
  br label %5082

; <label>:5082                                    ; preds = %5082, %5047
  %5083 = phi i32 [ 1, %5047 ], [ %5094, %5082 ]
  %5084 = phi float [ %5081, %5047 ], [ %5093, %5082 ]
  %5085 = phi float [ %5079, %5047 ], [ %5091, %5082 ]
  %5086 = getelementptr [4 x float], [4 x float]* %94, i32 0, i32 %5083
  %5087 = load float, float* %5086, align 4, !tbaa !135, !noalias !125
  %5088 = fsub fast float %5087, %4973
  %5089 = fcmp fast olt float %5088, 0.000000e+00
  %5090 = select i1 %5089, float 0.000000e+00, float 1.000000e+00
  %5091 = fadd fast float %5090, %5085
  %5092 = fmul fast float %5090, %5088
  %5093 = fadd fast float %5092, %5084
  %5094 = add nuw nsw i32 %5083, 1
  %5095 = icmp eq i32 %5094, 4
  br i1 %5095, label %5096, label %5082, !llvm.loop !137

; <label>:5096                                    ; preds = %5082
  %5097 = add nuw nsw i32 %5050, 1
  %5098 = icmp eq i32 %5097, 8
  br i1 %5098, label %5099, label %5047, !llvm.loop !138

; <label>:5099                                    ; preds = %5096
  %5100 = fdiv fast float 1.000000e+00, %5091
  %5101 = fmul fast float %5100, %5093
  %5102 = fdiv fast float 1.000000e+00, %4973
  %5103 = fmul fast float %5101, %5102
  %5104 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5105 = call float @dx.op.binary.f32(i32 35, float %5104, float 0.000000e+00)  ; FMax(a,b)
  %5106 = fmul fast float %5091, 3.125000e-02
  %5107 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  %5108 = fmul fast float %5107, 2.000000e+00
  %5109 = fadd fast float %5108, -1.000000e+00
  %5110 = fcmp fast ogt float %5109, 0.000000e+00
  %5111 = fcmp fast olt float %5109, 0.000000e+00
  %5112 = zext i1 %5110 to i32
  %5113 = zext i1 %5111 to i32
  %5114 = sub nsw i32 %5112, %5113
  %5115 = sitofp i32 %5114 to float
  %5116 = fmul fast float %5115, %5109
  %5117 = fsub fast float 1.000000e+00, %5116
  %5118 = fmul fast float %5117, %5117
  %5119 = fmul fast float %5118, %5117
  %5120 = fsub fast float %5117, %5119
  %5121 = fmul fast float %5120, %5105
  %5122 = fsub fast float 1.000000e+00, %5119
  %5123 = fsub fast float %5122, %5121
  %5124 = fmul fast float %5115, 5.000000e-01
  %5125 = fmul fast float %5124, %5123
  %5126 = fsub fast float 5.000000e-01, %5125
  br label %5127

; <label>:5127                                    ; preds = %5099, %4975, %4960
  %5128 = phi float [ 1.000000e+00, %4960 ], [ %5041, %4975 ], [ %5126, %5099 ]
  %5129 = fcmp fast ogt float %4390, 0.000000e+00
  br i1 %5129, label %5130, label %5294, !dx.controlflow.hints !140

; <label>:5130                                    ; preds = %5127
  %5131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5132 = extractvalue %dx.types.CBufRet.f32 %5131, 0
  %5133 = fadd fast float %5132, %4280
  %5134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5135 = extractvalue %dx.types.CBufRet.f32 %5134, 2
  %5136 = extractvalue %dx.types.CBufRet.f32 %5134, 3
  %5137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.f32 %5137, 0
  %5139 = call float @dx.op.binary.f32(i32 35, float %5133, float 0.000000e+00)  ; FMax(a,b)
  %5140 = fadd fast float %5139, 0x3F10000000000000
  %5141 = fcmp fast oeq float %5138, 0.000000e+00
  br i1 %5141, label %5142, label %5209

; <label>:5142                                    ; preds = %5130
  %5143 = extractvalue %dx.types.CBufRet.f32 %5134, 1
  %5144 = extractvalue %dx.types.CBufRet.f32 %5134, 0
  %5145 = fmul fast float %5144, %4272
  %5146 = fmul fast float %5143, %4276
  %5147 = fadd fast float %5145, 5.000000e-01
  %5148 = call float @dx.op.unary.f32(i32 27, float %5147)  ; Round_ni(value)
  %5149 = fadd fast float %5146, 5.000000e-01
  %5150 = call float @dx.op.unary.f32(i32 27, float %5149)  ; Round_ni(value)
  %5151 = fsub fast float %5147, %5148
  %5152 = fsub fast float %5149, %5150
  %5153 = fadd fast float %5148, -5.000000e-01
  %5154 = fadd fast float %5150, -5.000000e-01
  %5155 = fmul fast float %5151, 2.000000e+00
  %5156 = fsub fast float 3.000000e+00, %5155
  %5157 = fadd fast float %5155, 1.000000e+00
  %5158 = fsub fast float 2.000000e+00, %5151
  %5159 = bitcast float %5156 to i32
  %5160 = sub nsw i32 2129859010, %5159
  %5161 = bitcast i32 %5160 to float
  %5162 = fmul fast float %5161, %5158
  %5163 = fadd fast float %5162, -1.000000e+00
  %5164 = bitcast float %5157 to i32
  %5165 = sub nsw i32 2129859010, %5164
  %5166 = bitcast i32 %5165 to float
  %5167 = fmul fast float %5166, %5151
  %5168 = fadd fast float %5167, 1.000000e+00
  %5169 = fmul fast float %5152, 2.000000e+00
  %5170 = fsub fast float 3.000000e+00, %5169
  %5171 = fadd fast float %5169, 1.000000e+00
  %5172 = fsub fast float 2.000000e+00, %5152
  %5173 = bitcast float %5170 to i32
  %5174 = sub nsw i32 2129859010, %5173
  %5175 = bitcast i32 %5174 to float
  %5176 = fmul fast float %5175, %5172
  %5177 = fadd fast float %5176, -1.000000e+00
  %5178 = bitcast float %5171 to i32
  %5179 = sub nsw i32 2129859010, %5178
  %5180 = bitcast i32 %5179 to float
  %5181 = fmul fast float %5180, %5152
  %5182 = fadd fast float %5181, 1.000000e+00
  %5183 = fadd fast float %5163, %5153
  %5184 = fmul fast float %5183, %5135
  %5185 = fadd fast float %5177, %5154
  %5186 = fmul fast float %5185, %5136
  %5187 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5184, float %5186, float undef, float undef, i32 0, i32 0, i32 undef, float %5140)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5188 = extractvalue %dx.types.ResRet.f32 %5187, 0
  %5189 = fmul fast float %5188, %5156
  %5190 = fadd fast float %5168, %5153
  %5191 = fmul fast float %5190, %5135
  %5192 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5191, float %5186, float undef, float undef, i32 0, i32 0, i32 undef, float %5140)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5193 = extractvalue %dx.types.ResRet.f32 %5192, 0
  %5194 = fmul fast float %5193, %5157
  %5195 = fadd fast float %5182, %5154
  %5196 = fmul fast float %5195, %5136
  %5197 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5184, float %5196, float undef, float undef, i32 0, i32 0, i32 undef, float %5140)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5198 = extractvalue %dx.types.ResRet.f32 %5197, 0
  %5199 = fmul fast float %5198, %5156
  %5200 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5191, float %5196, float undef, float undef, i32 0, i32 0, i32 undef, float %5140)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5201 = extractvalue %dx.types.ResRet.f32 %5200, 0
  %5202 = fmul fast float %5201, %5157
  %5203 = fadd fast float %5202, %5199
  %5204 = fmul fast float %5203, %5171
  %5205 = fadd fast float %5194, %5189
  %5206 = fmul fast float %5205, %5170
  %5207 = fadd fast float %5206, %5204
  %5208 = fmul fast float %5207, 6.250000e-02
  br label %5294

; <label>:5209                                    ; preds = %5130
  %5210 = fmul fast float %259, 0x401921FB60000000
  %5211 = call float @dx.op.unary.f32(i32 13, float %5210)  ; Sin(value)
  %5212 = call float @dx.op.unary.f32(i32 12, float %5210)  ; Cos(value)
  %5213 = fsub fast float -0.000000e+00, %5211
  br label %5214

; <label>:5214                                    ; preds = %5263, %5209
  %5215 = phi float [ 0.000000e+00, %5209 ], [ %5258, %5263 ]
  %5216 = phi float [ 0.000000e+00, %5209 ], [ %5260, %5263 ]
  %5217 = phi i32 [ 0, %5209 ], [ %5264, %5263 ]
  %5218 = mul i32 %5217, 2
  %5219 = add i32 0, %5218
  %5220 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5219
  %5221 = load float, float* %5220, align 4
  %5222 = mul i32 %5217, 2
  %5223 = add i32 1, %5222
  %5224 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5223
  %5225 = load float, float* %5224, align 4
  %5226 = fmul fast float %5221, %5212
  %5227 = call float @dx.op.tertiary.f32(i32 46, float %5225, float %5213, float %5226)  ; FMad(a,b,c)
  %5228 = fmul fast float %5221, %5211
  %5229 = call float @dx.op.tertiary.f32(i32 46, float %5225, float %5212, float %5228)  ; FMad(a,b,c)
  %5230 = fmul fast float %5227, %5138
  %5231 = fmul fast float %5229, %5138
  %5232 = fadd fast float %5230, %4272
  %5233 = fadd fast float %5231, %4276
  %5234 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %65, float %5232, float %5233, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5235 = extractvalue %dx.types.ResRet.f32 %5234, 0
  %5236 = extractvalue %dx.types.ResRet.f32 %5234, 1
  %5237 = extractvalue %dx.types.ResRet.f32 %5234, 2
  %5238 = extractvalue %dx.types.ResRet.f32 %5234, 3
  %5239 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 0
  store float %5235, float* %5239, align 4
  %5240 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 1
  store float %5236, float* %5240, align 4
  %5241 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 2
  store float %5237, float* %5241, align 4
  %5242 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 3
  store float %5238, float* %5242, align 4
  %5243 = fsub fast float %5235, %5140
  %5244 = fcmp fast olt float %5243, 0.000000e+00
  %5245 = select i1 %5244, float 0.000000e+00, float 1.000000e+00
  %5246 = fadd fast float %5245, %5215
  %5247 = fmul fast float %5245, %5243
  %5248 = fadd fast float %5247, %5216
  br label %5249

; <label>:5249                                    ; preds = %5249, %5214
  %5250 = phi i32 [ 1, %5214 ], [ %5261, %5249 ]
  %5251 = phi float [ %5248, %5214 ], [ %5260, %5249 ]
  %5252 = phi float [ %5246, %5214 ], [ %5258, %5249 ]
  %5253 = getelementptr [4 x float], [4 x float]* %93, i32 0, i32 %5250
  %5254 = load float, float* %5253, align 4, !tbaa !135, !noalias !125
  %5255 = fsub fast float %5254, %5140
  %5256 = fcmp fast olt float %5255, 0.000000e+00
  %5257 = select i1 %5256, float 0.000000e+00, float 1.000000e+00
  %5258 = fadd fast float %5257, %5252
  %5259 = fmul fast float %5257, %5255
  %5260 = fadd fast float %5259, %5251
  %5261 = add nuw nsw i32 %5250, 1
  %5262 = icmp eq i32 %5261, 4
  br i1 %5262, label %5263, label %5249, !llvm.loop !137

; <label>:5263                                    ; preds = %5249
  %5264 = add nuw nsw i32 %5217, 1
  %5265 = icmp eq i32 %5264, 8
  br i1 %5265, label %5266, label %5214, !llvm.loop !138

; <label>:5266                                    ; preds = %5263
  %5267 = fdiv fast float 1.000000e+00, %5258
  %5268 = fmul fast float %5267, %5260
  %5269 = fdiv fast float 1.000000e+00, %5140
  %5270 = fmul fast float %5268, %5269
  %5271 = call float @dx.op.unary.f32(i32 7, float %5270)  ; Saturate(value)
  %5272 = call float @dx.op.binary.f32(i32 35, float %5271, float 0.000000e+00)  ; FMax(a,b)
  %5273 = fmul fast float %5258, 3.125000e-02
  %5274 = call float @dx.op.unary.f32(i32 7, float %5273)  ; Saturate(value)
  %5275 = fmul fast float %5274, 2.000000e+00
  %5276 = fadd fast float %5275, -1.000000e+00
  %5277 = fcmp fast ogt float %5276, 0.000000e+00
  %5278 = fcmp fast olt float %5276, 0.000000e+00
  %5279 = zext i1 %5277 to i32
  %5280 = zext i1 %5278 to i32
  %5281 = sub nsw i32 %5279, %5280
  %5282 = sitofp i32 %5281 to float
  %5283 = fmul fast float %5282, %5276
  %5284 = fsub fast float 1.000000e+00, %5283
  %5285 = fmul fast float %5284, %5284
  %5286 = fmul fast float %5285, %5284
  %5287 = fsub fast float %5284, %5286
  %5288 = fmul fast float %5287, %5272
  %5289 = fsub fast float 1.000000e+00, %5286
  %5290 = fsub fast float %5289, %5288
  %5291 = fmul fast float %5282, 5.000000e-01
  %5292 = fmul fast float %5291, %5290
  %5293 = fsub fast float 5.000000e-01, %5292
  br label %5294

; <label>:5294                                    ; preds = %5266, %5142, %5127
  %5295 = phi float [ 1.000000e+00, %5127 ], [ %5208, %5142 ], [ %5293, %5266 ]
  %5296 = fsub fast float %4961, %4796
  %5297 = fmul fast float %5296, %4334
  %5298 = fadd fast float %5297, %4796
  %5299 = fsub fast float %5128, %5298
  %5300 = fmul fast float %5299, %4364
  %5301 = fadd fast float %5300, %5298
  %5302 = fsub fast float %5295, %5301
  %5303 = fmul fast float %5302, %4390
  %5304 = fadd fast float %5303, %5301
  %5305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5306 = extractvalue %dx.types.CBufRet.f32 %5305, 2
  %5307 = fcmp fast ogt float %5306, 0.000000e+00
  br i1 %5307, label %5308, label %5348, !dx.controlflow.hints !141

; <label>:5308                                    ; preds = %5294
  %5309 = fcmp fast ugt float %5306, 0.000000e+00
  br i1 %5309, label %5310, label %5345

; <label>:5310                                    ; preds = %5308
  %5311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5312 = extractvalue %dx.types.CBufRet.f32 %5311, 0
  %5313 = extractvalue %dx.types.CBufRet.f32 %5311, 1
  %5314 = extractvalue %dx.types.CBufRet.f32 %5311, 2
  %5315 = extractvalue %dx.types.CBufRet.f32 %5311, 3
  %5316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5317 = extractvalue %dx.types.CBufRet.f32 %5316, 0
  %5318 = extractvalue %dx.types.CBufRet.f32 %5316, 1
  %5319 = extractvalue %dx.types.CBufRet.f32 %5316, 2
  %5320 = extractvalue %dx.types.CBufRet.f32 %5316, 3
  %5321 = extractvalue %dx.types.CBufRet.f32 %5305, 0
  %5322 = extractvalue %dx.types.CBufRet.f32 %5305, 1
  %5323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5324 = extractvalue %dx.types.CBufRet.f32 %5323, 0
  %5325 = extractvalue %dx.types.CBufRet.f32 %5323, 1
  %5326 = extractvalue %dx.types.CBufRet.f32 %5323, 2
  %5327 = fadd fast float %5324, %4249
  %5328 = fadd fast float %5325, %4250
  %5329 = fadd fast float %5326, %4251
  %5330 = fmul fast float %5327, %5312
  %5331 = call float @dx.op.tertiary.f32(i32 46, float %5313, float %5328, float %5330)  ; FMad(a,b,c)
  %5332 = call float @dx.op.tertiary.f32(i32 46, float %5314, float %5329, float %5331)  ; FMad(a,b,c)
  %5333 = fadd fast float %5332, %5315
  %5334 = fmul fast float %5327, %5317
  %5335 = call float @dx.op.tertiary.f32(i32 46, float %5318, float %5328, float %5334)  ; FMad(a,b,c)
  %5336 = call float @dx.op.tertiary.f32(i32 46, float %5319, float %5329, float %5335)  ; FMad(a,b,c)
  %5337 = fadd fast float %5336, %5320
  %5338 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %61, float %5333, float %5337, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5339 = extractvalue %dx.types.ResRet.f32 %5338, 0
  %5340 = fmul fast float %5339, %5322
  %5341 = fadd fast float %5340, %5321
  %5342 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  %5343 = fmul fast float %5342, %5306
  %5344 = fsub fast float 1.000000e+00, %5343
  br label %5345

; <label>:5345                                    ; preds = %5310, %5308
  %5346 = phi float [ %5344, %5310 ], [ 1.000000e+00, %5308 ]
  %5347 = fmul fast float %5346, %5304
  br label %5348

; <label>:5348                                    ; preds = %5345, %5294, %4229
  %5349 = phi float [ 1.000000e+00, %4229 ], [ %5347, %5345 ], [ %5304, %5294 ]
  %5350 = call float @dx.op.binary.f32(i32 36, float %5349, float %5349)  ; FMin(a,b)
  %5351 = call float @dx.op.binary.f32(i32 36, float %5349, float %5350)  ; FMin(a,b)
  %5352 = fcmp fast ogt float %5351, 0.000000e+00
  br i1 %5352, label %5353, label %5518, !dx.controlflow.hints !142

; <label>:5353                                    ; preds = %5348
  %5354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5355 = extractvalue %dx.types.CBufRet.f32 %5354, 0
  %5356 = extractvalue %dx.types.CBufRet.f32 %5354, 1
  %5357 = extractvalue %dx.types.CBufRet.f32 %5354, 2
  %5358 = extractvalue %dx.types.CBufRet.f32 %5354, 3
  %5359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5360 = extractvalue %dx.types.CBufRet.f32 %5359, 0
  %5361 = extractvalue %dx.types.CBufRet.f32 %5359, 1
  %5362 = extractvalue %dx.types.CBufRet.f32 %5359, 2
  %5363 = extractvalue %dx.types.CBufRet.f32 %5359, 3
  %5364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5365 = extractvalue %dx.types.CBufRet.f32 %5364, 0
  %5366 = extractvalue %dx.types.CBufRet.f32 %5364, 1
  %5367 = extractvalue %dx.types.CBufRet.f32 %5364, 2
  %5368 = extractvalue %dx.types.CBufRet.f32 %5364, 3
  %5369 = fmul fast float %5355, %4249
  %5370 = call float @dx.op.tertiary.f32(i32 46, float %4250, float %5356, float %5369)  ; FMad(a,b,c)
  %5371 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %5357, float %5370)  ; FMad(a,b,c)
  %5372 = fadd fast float %5371, %5358
  %5373 = fmul fast float %5360, %4249
  %5374 = call float @dx.op.tertiary.f32(i32 46, float %4250, float %5361, float %5373)  ; FMad(a,b,c)
  %5375 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %5362, float %5374)  ; FMad(a,b,c)
  %5376 = fadd fast float %5375, %5363
  %5377 = fmul fast float %5365, %4249
  %5378 = call float @dx.op.tertiary.f32(i32 46, float %4250, float %5366, float %5377)  ; FMad(a,b,c)
  %5379 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %5367, float %5378)  ; FMad(a,b,c)
  %5380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5381 = extractvalue %dx.types.CBufRet.f32 %5380, 0
  %5382 = extractvalue %dx.types.CBufRet.f32 %5380, 1
  %5383 = extractvalue %dx.types.CBufRet.f32 %5380, 3
  %5384 = fmul fast float %5383, %5372
  %5385 = fmul fast float %5383, %5376
  %5386 = fadd fast float %5384, %5381
  %5387 = fadd fast float %5385, %5382
  %5388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5389 = extractvalue %dx.types.CBufRet.f32 %5388, 0
  %5390 = extractvalue %dx.types.CBufRet.f32 %5388, 1
  %5391 = fsub fast float %5386, %5389
  %5392 = fsub fast float %5387, %5390
  %5393 = fcmp fast olt float %5391, 0.000000e+00
  %5394 = fcmp fast olt float %5392, 0.000000e+00
  %5395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5396 = extractvalue %dx.types.CBufRet.f32 %5395, 0
  %5397 = extractvalue %dx.types.CBufRet.f32 %5395, 1
  %5398 = extractvalue %dx.types.CBufRet.f32 %5395, 2
  %5399 = extractvalue %dx.types.CBufRet.f32 %5395, 3
  %5400 = select i1 %5393, float %5396, float %5398
  %5401 = select i1 %5394, float %5397, float %5399
  %5402 = fmul fast float %5400, %5391
  %5403 = fmul fast float %5401, %5392
  %5404 = call float @dx.op.unary.f32(i32 6, float %5402)  ; FAbs(value)
  %5405 = call float @dx.op.unary.f32(i32 6, float %5403)  ; FAbs(value)
  %5406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5407 = extractvalue %dx.types.CBufRet.f32 %5406, 0
  %5408 = call float @dx.op.binary.f32(i32 35, float %5404, float %5405)  ; FMax(a,b)
  %5409 = fsub fast float %5407, %5408
  %5410 = call float @dx.op.unary.f32(i32 7, float %5409)  ; Saturate(value)
  %5411 = fcmp fast ogt float %5410, 0.000000e+00
  br i1 %5411, label %5412, label %5453, !dx.controlflow.hints !143

; <label>:5412                                    ; preds = %5353
  %5413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %64, float %5386, float %5387, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5414 = extractvalue %dx.types.ResRet.f32 %5413, 1
  %5415 = fcmp fast ogt float %5414, 0.000000e+00
  br i1 %5415, label %5416, label %5448

; <label>:5416                                    ; preds = %5412
  %5417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %64, float %5386, float %5387, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5418 = extractvalue %dx.types.ResRet.f32 %5417, 0
  %5419 = extractvalue %dx.types.ResRet.f32 %5417, 1
  %5420 = extractvalue %dx.types.ResRet.f32 %5417, 2
  %5421 = extractvalue %dx.types.ResRet.f32 %5417, 3
  %5422 = fsub fast float 1.000000e+00, %5368
  %5423 = fsub fast float %5422, %5379
  %5424 = fmul fast float %5423, 0x400921FB60000000
  %5425 = fadd fast float %5424, 0x3FF921FB60000000
  %5426 = call float @dx.op.unary.f32(i32 13, float %5425)  ; Sin(value)
  %5427 = fadd fast float %5426, -1.000000e+00
  %5428 = fmul fast float %5427, 0x3FD45F3060000000
  %5429 = fmul fast float %5423, 0x401921FB60000000
  %5430 = fadd fast float %5429, 0x400921FB60000000
  %5431 = call float @dx.op.unary.f32(i32 13, float %5430)  ; Sin(value)
  %5432 = fadd fast float %5431, 0x3E7777A5C0000000
  %5433 = fmul fast float %5432, 0x3FC45F3060000000
  %5434 = fmul fast float %5423, 0x4022D97C80000000
  %5435 = fadd fast float %5434, 0x4012D97C80000000
  %5436 = call float @dx.op.unary.f32(i32 13, float %5435)  ; Sin(value)
  %5437 = fadd fast float %5436, 1.000000e+00
  %5438 = fmul fast float %5437, 0x3FBB2995E0000000
  %5439 = fmul fast float %5423, 0x402921FB60000000
  %5440 = fadd fast float %5439, 0x401921FB60000000
  %5441 = call float @dx.op.unary.f32(i32 13, float %5440)  ; Sin(value)
  %5442 = fadd fast float %5441, 0xBE8777A5C0000000
  %5443 = fmul fast float %5442, 0x3FB45F3060000000
  %5444 = call float @dx.op.dot4.f32(i32 56, float %5418, float %5419, float %5420, float %5421, float %5428, float %5433, float %5438, float %5443)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5445 = fmul fast float %5444, 0xBFF7154760000000
  %5446 = call float @dx.op.unary.f32(i32 21, float %5445)  ; Exp(value)
  %5447 = call float @dx.op.unary.f32(i32 7, float %5446)  ; Saturate(value)
  br label %5448

; <label>:5448                                    ; preds = %5416, %5412
  %5449 = phi float [ %5447, %5416 ], [ 1.000000e+00, %5412 ]
  %5450 = fadd fast float %5449, -1.000000e+00
  %5451 = fmul fast float %5450, %5410
  %5452 = fadd fast float %5451, 1.000000e+00
  br label %5453

; <label>:5453                                    ; preds = %5448, %5353
  %5454 = phi float [ %5452, %5448 ], [ 1.000000e+00, %5353 ]
  %5455 = fmul fast float %5454, %5349
  %5456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5457 = extractvalue %dx.types.CBufRet.f32 %5456, 0
  %5458 = extractvalue %dx.types.CBufRet.f32 %5456, 1
  %5459 = extractvalue %dx.types.CBufRet.f32 %5456, 2
  %5460 = fadd fast float %5457, %157
  %5461 = fadd fast float %5458, %158
  %5462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5463 = extractvalue %dx.types.CBufRet.f32 %5462, 1
  %5464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5465 = extractvalue %dx.types.CBufRet.f32 %5464, 0
  %5466 = extractvalue %dx.types.CBufRet.f32 %5464, 1
  %5467 = extractvalue %dx.types.CBufRet.f32 %5464, 2
  %5468 = fsub fast float -0.000000e+00, %5460
  %5469 = fsub fast float -0.000000e+00, %5461
  %5470 = fsub fast float %2306, %5459
  %5471 = fadd fast float %5470, %5463
  %5472 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5468, float %5469, float %5471)  ; Dot3(ax,ay,az,bx,by,bz)
  %5473 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5465, float %5466, float %5467)  ; Dot3(ax,ay,az,bx,by,bz)
  %5474 = fdiv fast float 1.000000e+00, %5473
  %5475 = fmul fast float %5474, %5472
  %5476 = fmul fast float %5465, %5475
  %5477 = fmul fast float %5466, %5475
  %5478 = fadd fast float %5476, %5460
  %5479 = fadd fast float %5477, %5461
  %5480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5481 = extractvalue %dx.types.CBufRet.f32 %5480, 0
  %5482 = extractvalue %dx.types.CBufRet.f32 %5480, 1
  %5483 = fsub fast float %5478, %5481
  %5484 = fsub fast float %5479, %5482
  %5485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5486 = extractvalue %dx.types.CBufRet.f32 %5485, 2
  %5487 = extractvalue %dx.types.CBufRet.f32 %5485, 3
  %5488 = fmul fast float %5483, %5486
  %5489 = fmul fast float %5484, %5487
  %5490 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5491 = extractvalue %dx.types.CBufRet.i32 %5490, 3
  %5492 = icmp eq i32 %5491, 0
  br i1 %5492, label %5498, label %5493

; <label>:5493                                    ; preds = %5453
  %5494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %63, float %5488, float %5489, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5495 = extractvalue %dx.types.ResRet.f32 %5494, 0
  %5496 = extractvalue %dx.types.ResRet.f32 %5494, 1
  %5497 = extractvalue %dx.types.ResRet.f32 %5494, 2
  br label %5503

; <label>:5498                                    ; preds = %5453
  %5499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %64, float %5488, float %5489, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5500 = extractvalue %dx.types.ResRet.f32 %5499, 0
  %5501 = extractvalue %dx.types.ResRet.f32 %5499, 1
  %5502 = extractvalue %dx.types.ResRet.f32 %5499, 2
  br label %5503

; <label>:5503                                    ; preds = %5498, %5493
  %5504 = phi float [ %5495, %5493 ], [ %5500, %5498 ]
  %5505 = phi float [ %5496, %5493 ], [ %5501, %5498 ]
  %5506 = phi float [ %5497, %5493 ], [ %5502, %5498 ]
  %5507 = extractvalue %dx.types.CBufRet.f32 %5462, 2
  %5508 = fmul fast float %5507, %5504
  %5509 = extractvalue %dx.types.CBufRet.f32 %5462, 0
  %5510 = fsub fast float %5475, %5509
  %5511 = fsub fast float %5510, %5508
  %5512 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5511)  ; FMax(a,b)
  %5513 = fmul fast float %5512, %5505
  %5514 = call float @dx.op.binary.f32(i32 36, float %5506, float %5513)  ; FMin(a,b)
  %5515 = fmul fast float %5514, 0xBFF7154760000000
  %5516 = call float @dx.op.unary.f32(i32 21, float %5515)  ; Exp(value)
  %5517 = fmul fast float %5455, %5516
  br label %5518

; <label>:5518                                    ; preds = %5503, %5348
  %5519 = phi float [ %5517, %5503 ], [ %5349, %5348 ]
  %5520 = call float @dx.op.binary.f32(i32 36, float %5519, float %5519)  ; FMin(a,b)
  %5521 = call float @dx.op.binary.f32(i32 36, float %5519, float %5520)  ; FMin(a,b)
  %5522 = fcmp fast ogt float %5521, 0.000000e+00
  br i1 %5522, label %5523, label %5824, !dx.controlflow.hints !144

; <label>:5523                                    ; preds = %5518
  %5524 = fmul fast float %5519, %4241
  %5525 = fmul fast float %5519, %4242
  %5526 = fmul fast float %5519, %4243
  %5527 = fsub fast float %159, %2094
  %5528 = fcmp fast ogt float %5527, 0.000000e+00
  %5529 = fmul fast float %4230, 5.120000e+02
  %5530 = fmul fast float %4231, 5.120000e+02
  %5531 = fmul fast float %4232, 5.120000e+02
  %5532 = fadd fast float %5531, %159
  %5533 = fsub fast float %2094, %5532
  %5534 = fmul fast float %5533, 2.000000e+00
  %5535 = fadd fast float %5534, %5532
  %5536 = select i1 %5528, float %5535, float %5532
  %5537 = fsub fast float %5536, %159
  %5538 = call float @dx.op.dot3.f32(i32 55, float %5529, float %5530, float %5537, float %5529, float %5530, float %5537)  ; Dot3(ax,ay,az,bx,by,bz)
  %5539 = call float @dx.op.unary.f32(i32 25, float %5538)  ; Rsqrt(value)
  %5540 = fmul fast float %5539, %5529
  %5541 = fmul fast float %5539, %5530
  %5542 = fmul fast float %5539, %5537
  %5543 = fsub fast float %2094, %159
  %5544 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5543)  ; Dot3(ax,ay,az,bx,by,bz)
  %5545 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5540, float %5541, float %5542)  ; Dot3(ax,ay,az,bx,by,bz)
  %5546 = fdiv fast float 1.000000e+00, %5545
  %5547 = fmul fast float %5546, %5544
  %5548 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5527, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5549 = fcmp fast ogt float %5548, 0.000000e+00
  %5550 = fcmp fast olt float %5548, 0.000000e+00
  %5551 = zext i1 %5549 to i32
  %5552 = zext i1 %5550 to i32
  %5553 = sub nsw i32 %5551, %5552
  %5554 = sitofp i32 %5553 to float
  %5555 = fsub fast float %5536, %2094
  %5556 = call float @dx.op.dot3.f32(i32 55, float %5529, float %5530, float %5555, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5557 = fcmp fast ogt float %5556, 0.000000e+00
  %5558 = fcmp fast olt float %5556, 0.000000e+00
  %5559 = zext i1 %5557 to i32
  %5560 = zext i1 %5558 to i32
  %5561 = sub nsw i32 %5559, %5560
  %5562 = sitofp i32 %5561 to float
  %5563 = fcmp fast une float %5554, %5562
  br i1 %5563, label %5564, label %5574

; <label>:5564                                    ; preds = %5523
  %5565 = fmul fast float %5547, %5542
  %5566 = fmul fast float %5547, %5541
  %5567 = fmul fast float %5547, %5540
  %5568 = fmul fast float %5567, %5567
  %5569 = fmul fast float %5566, %5566
  %5570 = fadd fast float %5568, %5569
  %5571 = fmul fast float %5565, %5565
  %5572 = fadd fast float %5570, %5571
  %5573 = call float @dx.op.unary.f32(i32 24, float %5572)  ; Sqrt(value)
  br label %5584

; <label>:5574                                    ; preds = %5523
  %5575 = icmp slt i32 %5553, 0
  br i1 %5575, label %5576, label %5584

; <label>:5576                                    ; preds = %5574
  %5577 = fsub fast float %159, %5536
  %5578 = fmul fast float %5529, %5529
  %5579 = fmul fast float %5530, %5530
  %5580 = fadd fast float %5578, %5579
  %5581 = fmul fast float %5577, %5577
  %5582 = fadd fast float %5580, %5581
  %5583 = call float @dx.op.unary.f32(i32 24, float %5582)  ; Sqrt(value)
  br label %5584

; <label>:5584                                    ; preds = %5576, %5574, %5564
  %5585 = phi float [ %5573, %5564 ], [ %5583, %5576 ], [ 0.000000e+00, %5574 ]
  %5586 = fsub fast float -0.000000e+00, %5585
  %5587 = select i1 %5528, float -0.000000e+00, float %5586
  %5588 = fmul fast float %2095, 0x3FF7154760000000
  %5589 = fmul fast float %5588, %5587
  %5590 = fmul fast float %2096, 0x3FF7154760000000
  %5591 = fmul fast float %5590, %5587
  %5592 = fmul fast float %2097, 0x3FF7154760000000
  %5593 = fmul fast float %5592, %5587
  %5594 = call float @dx.op.unary.f32(i32 21, float %5589)  ; Exp(value)
  %5595 = call float @dx.op.unary.f32(i32 21, float %5591)  ; Exp(value)
  %5596 = call float @dx.op.unary.f32(i32 21, float %5593)  ; Exp(value)
  %5597 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  %5598 = call float @dx.op.unary.f32(i32 7, float %5595)  ; Saturate(value)
  %5599 = call float @dx.op.unary.f32(i32 7, float %5596)  ; Saturate(value)
  %5600 = fmul fast float %5524, %5597
  %5601 = fmul fast float %5525, %5598
  %5602 = fmul fast float %5526, %5599
  %5603 = fsub fast float %4230, %2294
  %5604 = fsub fast float %4231, %2293
  %5605 = fsub fast float %4232, %2292
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5603, float %5604, float %5605, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = call float @dx.op.unary.f32(i32 25, float %5606)  ; Rsqrt(value)
  %5608 = fmul fast float %5607, %5603
  %5609 = fmul fast float %5607, %5604
  %5610 = fmul fast float %5607, %5605
  %5611 = call float @dx.op.dot3.f32(i32 55, float %4230, float %4231, float %4232, float %2298, float %2299, float %2300)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = call float @dx.op.dot3.f32(i32 55, float %2291, float %2290, float %2289, float %5608, float %5609, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %5613 = call float @dx.op.unary.f32(i32 7, float %5611)  ; Saturate(value)
  %5614 = fmul fast float %5613, %5613
  %5615 = fmul fast float %5614, %2334
  %5616 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  %5617 = fmul fast float %5616, %5613
  %5618 = call float @dx.op.dot3.f32(i32 55, float %2298, float %2299, float %2300, float %5608, float %5609, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %5619 = fmul fast float %5618, %5618
  %5620 = call float @dx.op.unary.f32(i32 6, float %5611)  ; FAbs(value)
  %5621 = fsub fast float 1.000000e+00, %2327
  %5622 = fmul fast float %2309, %2309
  %5623 = fmul fast float %5622, %5621
  %5624 = fadd fast float %5623, %2327
  %5625 = bitcast float %5624 to i32
  %5626 = ashr i32 %5625, 1
  %5627 = add nsw i32 %5626, 532487669
  %5628 = bitcast i32 %5627 to float
  %5629 = fadd fast float %5628, %2309
  %5630 = fmul fast float %2327, %5619
  %5631 = fsub fast float 1.000000e+00, %5619
  %5632 = fadd fast float %5631, %5630
  %5633 = fmul fast float %5620, %5620
  %5634 = fmul fast float %5633, %5621
  %5635 = fadd fast float %5634, %2327
  %5636 = bitcast float %5635 to i32
  %5637 = ashr i32 %5636, 1
  %5638 = add nsw i32 %5637, 532487669
  %5639 = bitcast i32 %5638 to float
  %5640 = fadd fast float %5639, %5620
  %5641 = fmul fast float %5632, %5632
  %5642 = fmul fast float %5641, %5629
  %5643 = fmul fast float %5642, %5640
  %5644 = fdiv fast float 0x3FF0A00000000000, %5643
  %5645 = fmul fast float %5644, %2327
  %5646 = call float @dx.op.unary.f32(i32 6, float %5612)  ; FAbs(value)
  %5647 = fsub fast float 1.000000e+00, %5646
  %5648 = bitcast float %5647 to i32
  %5649 = sitofp i32 %5648 to float
  %5650 = fmul fast float %5649, 5.000000e+00
  %5651 = fadd fast float %5650, 0xC1EFBF8940000000
  %5652 = fptosi float %5651 to i32
  %5653 = bitcast i32 %5652 to float
  %5654 = fsub fast float 1.000000e+00, %2301
  %5655 = fsub fast float 1.000000e+00, %2302
  %5656 = fsub fast float 1.000000e+00, %2307
  %5657 = fmul fast float %5653, %5654
  %5658 = fmul fast float %5653, %5655
  %5659 = fmul fast float %5653, %5656
  %5660 = fadd fast float %5657, %2301
  %5661 = fadd fast float %5658, %2302
  %5662 = fadd fast float %5659, %2307
  br i1 %3631, label %5663, label %5686

; <label>:5663                                    ; preds = %5584
  %5664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1603, float %5646, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5665 = extractvalue %dx.types.ResRet.f32 %5664, 0
  %5666 = extractvalue %dx.types.ResRet.f32 %5664, 1
  %5667 = extractvalue %dx.types.ResRet.f32 %5664, 2
  %5668 = fadd fast float %5665, -5.000000e-01
  %5669 = fadd fast float %5666, -5.000000e-01
  %5670 = fadd fast float %5667, -5.000000e-01
  %5671 = fmul fast float %2301, 4.000000e+00
  %5672 = fmul fast float %5671, %5654
  %5673 = fmul fast float %5672, %5668
  %5674 = fmul fast float %2302, 4.000000e+00
  %5675 = fmul fast float %5674, %5655
  %5676 = fmul fast float %5675, %5669
  %5677 = fmul fast float %2307, 4.000000e+00
  %5678 = fmul fast float %5677, %5656
  %5679 = fmul fast float %5678, %5670
  %5680 = fadd fast float %5673, %5660
  %5681 = fadd fast float %5676, %5661
  %5682 = fadd fast float %5679, %5662
  %5683 = call float @dx.op.unary.f32(i32 7, float %5680)  ; Saturate(value)
  %5684 = call float @dx.op.unary.f32(i32 7, float %5681)  ; Saturate(value)
  %5685 = call float @dx.op.unary.f32(i32 7, float %5682)  ; Saturate(value)
  br label %5686

; <label>:5686                                    ; preds = %5663, %5584
  %5687 = phi float [ %5683, %5663 ], [ %5660, %5584 ]
  %5688 = phi float [ %5684, %5663 ], [ %5661, %5584 ]
  %5689 = phi float [ %5685, %5663 ], [ %5662, %5584 ]
  %5690 = fmul fast float %5611, 9.843750e-01
  %5691 = fadd fast float %5690, 7.812500e-03
  %5692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %5691, float %3621, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5693 = extractvalue %dx.types.ResRet.f32 %5692, 2
  %5694 = extractvalue %dx.types.ResRet.f32 %5692, 3
  %5695 = fmul fast float %5693, %2301
  %5696 = fmul fast float %5693, %2302
  %5697 = fmul fast float %5693, %2307
  %5698 = fadd fast float %5695, %5694
  %5699 = fadd fast float %5696, %5694
  %5700 = fadd fast float %5697, %5694
  br i1 %3631, label %5701, label %5724

; <label>:5701                                    ; preds = %5686
  %5702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1603, float %5611, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5703 = extractvalue %dx.types.ResRet.f32 %5702, 0
  %5704 = extractvalue %dx.types.ResRet.f32 %5702, 1
  %5705 = extractvalue %dx.types.ResRet.f32 %5702, 2
  %5706 = fadd fast float %5703, -5.000000e-01
  %5707 = fadd fast float %5704, -5.000000e-01
  %5708 = fadd fast float %5705, -5.000000e-01
  %5709 = fmul fast float %2301, 4.000000e+00
  %5710 = fmul fast float %5709, %5654
  %5711 = fmul fast float %5710, %5706
  %5712 = fmul fast float %2302, 4.000000e+00
  %5713 = fmul fast float %5712, %5655
  %5714 = fmul fast float %5713, %5707
  %5715 = fmul fast float %2307, 4.000000e+00
  %5716 = fmul fast float %5715, %5656
  %5717 = fmul fast float %5716, %5708
  %5718 = fadd fast float %5711, %5698
  %5719 = fadd fast float %5714, %5699
  %5720 = fadd fast float %5717, %5700
  %5721 = call float @dx.op.unary.f32(i32 7, float %5718)  ; Saturate(value)
  %5722 = call float @dx.op.unary.f32(i32 7, float %5719)  ; Saturate(value)
  %5723 = call float @dx.op.unary.f32(i32 7, float %5720)  ; Saturate(value)
  br label %5724

; <label>:5724                                    ; preds = %5701, %5686
  %5725 = phi float [ %5721, %5701 ], [ %5698, %5686 ]
  %5726 = phi float [ %5722, %5701 ], [ %5699, %5686 ]
  %5727 = phi float [ %5723, %5701 ], [ %5700, %5686 ]
  %5728 = call float @dx.op.binary.f32(i32 35, float %5726, float %5727)  ; FMax(a,b)
  %5729 = call float @dx.op.binary.f32(i32 35, float %5725, float %5728)  ; FMax(a,b)
  %5730 = fsub fast float 1.000000e+00, %5729
  %5731 = fsub fast float -0.000000e+00, %2298
  %5732 = fsub fast float -0.000000e+00, %2299
  %5733 = fsub fast float -0.000000e+00, %2300
  %5734 = call float @dx.op.dot3.f32(i32 55, float %4230, float %4231, float %4232, float %5731, float %5732, float %5733)  ; Dot3(ax,ay,az,bx,by,bz)
  %5735 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  %5736 = fmul fast float %5735, 9.843750e-01
  %5737 = fadd fast float %5736, 7.812500e-03
  %5738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %5737, float %3621, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5739 = extractvalue %dx.types.ResRet.f32 %5738, 2
  %5740 = extractvalue %dx.types.ResRet.f32 %5738, 3
  %5741 = fmul fast float %5739, %2301
  %5742 = fmul fast float %5739, %2302
  %5743 = fmul fast float %5739, %2307
  %5744 = fadd fast float %5741, %5740
  %5745 = fadd fast float %5742, %5740
  %5746 = fadd fast float %5743, %5740
  br i1 %3631, label %5747, label %5770

; <label>:5747                                    ; preds = %5724
  %5748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1603, float %5735, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5749 = extractvalue %dx.types.ResRet.f32 %5748, 0
  %5750 = extractvalue %dx.types.ResRet.f32 %5748, 1
  %5751 = extractvalue %dx.types.ResRet.f32 %5748, 2
  %5752 = fadd fast float %5749, -5.000000e-01
  %5753 = fadd fast float %5750, -5.000000e-01
  %5754 = fadd fast float %5751, -5.000000e-01
  %5755 = fmul fast float %2301, 4.000000e+00
  %5756 = fmul fast float %5755, %5654
  %5757 = fmul fast float %5756, %5752
  %5758 = fmul fast float %2302, 4.000000e+00
  %5759 = fmul fast float %5758, %5655
  %5760 = fmul fast float %5759, %5753
  %5761 = fmul fast float %2307, 4.000000e+00
  %5762 = fmul fast float %5761, %5656
  %5763 = fmul fast float %5762, %5754
  %5764 = fadd fast float %5757, %5744
  %5765 = fadd fast float %5760, %5745
  %5766 = fadd fast float %5763, %5746
  %5767 = call float @dx.op.unary.f32(i32 7, float %5764)  ; Saturate(value)
  %5768 = call float @dx.op.unary.f32(i32 7, float %5765)  ; Saturate(value)
  %5769 = call float @dx.op.unary.f32(i32 7, float %5766)  ; Saturate(value)
  br label %5770

; <label>:5770                                    ; preds = %5747, %5724
  %5771 = phi float [ %5767, %5747 ], [ %5744, %5724 ]
  %5772 = phi float [ %5768, %5747 ], [ %5745, %5724 ]
  %5773 = phi float [ %5769, %5747 ], [ %5746, %5724 ]
  %5774 = call float @dx.op.binary.f32(i32 35, float %5772, float %5773)  ; FMax(a,b)
  %5775 = call float @dx.op.binary.f32(i32 35, float %5771, float %5774)  ; FMax(a,b)
  %5776 = fsub fast float 1.000000e+00, %5775
  %5777 = fmul fast float %5776, %5735
  %5778 = fmul fast float %5777, %1717
  %5779 = fmul fast float %5777, %1718
  %5780 = fmul fast float %5777, %1719
  %5781 = fmul fast float %5687, %5645
  %5782 = fmul fast float %5688, %5645
  %5783 = fmul fast float %5689, %5645
  %5784 = fsub fast float 1.000000e+00, %5612
  %5785 = bitcast float %5784 to i32
  %5786 = sitofp i32 %5785 to float
  %5787 = fmul fast float %5786, 5.000000e+00
  %5788 = fadd fast float %5787, 0xC1EFBF8940000000
  %5789 = fptosi float %5788 to i32
  %5790 = bitcast i32 %5789 to float
  %5791 = fmul fast float %5790, %1602
  %5792 = fmul fast float %5730, %5791
  %5793 = fmul fast float %5792, %4170
  %5794 = fmul fast float %5792, %4171
  %5795 = fmul fast float %5792, %4172
  %5796 = fmul fast float %5730, %5617
  %5797 = fadd fast float %5793, %5781
  %5798 = fadd fast float %5794, %5782
  %5799 = fadd fast float %5795, %5783
  %5800 = fadd fast float %5778, %5796
  %5801 = fadd fast float %5779, %5796
  %5802 = fadd fast float %5780, %5796
  %5803 = fmul fast float %5800, %5600
  %5804 = fmul fast float %5801, %5601
  %5805 = fmul fast float %5802, %5602
  %5806 = fmul fast float %5617, %5600
  %5807 = fmul fast float %5806, %5797
  %5808 = fmul fast float %5617, %5601
  %5809 = fmul fast float %5808, %5798
  %5810 = fmul fast float %5617, %5602
  %5811 = fmul fast float %5810, %5799
  %5812 = fadd fast float %5803, %4220
  %5813 = fmul fast float %5812, %1626
  %5814 = fadd fast float %5804, %4222
  %5815 = fmul fast float %5814, %1626
  %5816 = fadd fast float %5805, %4224
  %5817 = fmul fast float %5816, %1626
  %5818 = fadd fast float %5807, %4203
  %5819 = fmul fast float %5818, %1626
  %5820 = fadd fast float %5809, %4206
  %5821 = fmul fast float %5820, %1626
  %5822 = fadd fast float %5811, %4209
  %5823 = fmul fast float %5822, %1626
  br label %5824

; <label>:5824                                    ; preds = %5770, %5518, %4153
  %5825 = phi float [ %4204, %4153 ], [ %4204, %5518 ], [ %5819, %5770 ]
  %5826 = phi float [ %4207, %4153 ], [ %4207, %5518 ], [ %5821, %5770 ]
  %5827 = phi float [ %4210, %4153 ], [ %4210, %5518 ], [ %5823, %5770 ]
  %5828 = phi float [ %4221, %4153 ], [ %4221, %5518 ], [ %5813, %5770 ]
  %5829 = phi float [ %4223, %4153 ], [ %4223, %5518 ], [ %5815, %5770 ]
  %5830 = phi float [ %4225, %4153 ], [ %4225, %5518 ], [ %5817, %5770 ]
  %5831 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5832 = extractvalue %dx.types.CBufRet.i32 %5831, 0
  %5833 = icmp eq i32 %5832, 0
  br i1 %5833, label %6551, label %5834

; <label>:5834                                    ; preds = %5824
  %5835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5836 = extractvalue %dx.types.CBufRet.f32 %5835, 2
  %5837 = extractvalue %dx.types.CBufRet.f32 %5835, 3
  %5838 = fmul fast float %5836, %102
  %5839 = fmul fast float %5837, %103
  %5840 = fptoui float %5838 to i32
  %5841 = fptoui float %5839 to i32
  %5842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5843 = extractvalue %dx.types.CBufRet.f32 %5842, 0
  %5844 = extractvalue %dx.types.CBufRet.f32 %5842, 2
  %5845 = extractvalue %dx.types.CBufRet.f32 %5842, 3
  %5846 = fadd fast float %90, -4.000000e+00
  %5847 = call float @dx.op.binary.f32(i32 35, float %5846, float 0.000000e+00)  ; FMax(a,b)
  %5848 = fadd fast float %5847, %5843
  %5849 = fmul fast float %5848, %5844
  %5850 = call float @dx.op.unary.f32(i32 23, float %5849)  ; Log(value)
  %5851 = fmul fast float %5850, %5845
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 2
  %5854 = fmul fast float %5851, %5853
  %5855 = call float @dx.op.unary.f32(i32 7, float %5854)  ; Saturate(value)
  %5856 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5857 = extractvalue %dx.types.CBufRet.i32 %5856, 1
  %5858 = add i32 %5857, -1
  %5859 = uitofp i32 %5857 to float
  %5860 = fmul fast float %5859, %5855
  %5861 = fptoui float %5860 to i32
  %5862 = call i32 @dx.op.binary.i32(i32 40, i32 %5861, i32 %5858)  ; UMin(a,b)
  %5863 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5864 = extractvalue %dx.types.CBufRet.i32 %5863, 2
  %5865 = extractvalue %dx.types.CBufRet.i32 %5863, 3
  %5866 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5841, i32 %5864, i32 %5840)  ; UMad(a,b,c)
  %5867 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5862, i32 %5865, i32 %5866)  ; UMad(a,b,c)
  %5868 = add nsw i32 %5832, -1
  %5869 = call i32 @dx.op.binary.i32(i32 37, i32 %5868, i32 0)  ; IMax(a,b)
  %5870 = call float @dx.op.binary.f32(i32 35, float %90, float 0.000000e+00)  ; FMax(a,b)
  %5871 = fptoui float %5870 to i32
  %5872 = lshr i32 %5871, 5
  %5873 = call i32 @dx.op.binary.i32(i32 40, i32 %5872, i32 8191)  ; UMin(a,b)
  %5874 = shl i32 %5873, 2
  %5875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5874, i32 undef)  ; BufferLoad(srv,index,wot)
  %5876 = extractvalue %dx.types.ResRet.i32 %5875, 0
  %5877 = lshr i32 %5876, 16
  %5878 = and i32 %5876, 65535
  %5879 = lshr i32 %5876, 21
  %5880 = lshr i32 %5878, 5
  %5881 = call i32 @dx.op.binary.i32(i32 40, i32 %5880, i32 %5869)  ; UMin(a,b)
  %5882 = icmp ugt i32 %5879, %5881
  br i1 %5882, label %6551, label %5883

; <label>:5883                                    ; preds = %5834
  br label %5884

; <label>:5884                                    ; preds = %6541, %5883
  %5885 = phi i32 [ %6548, %6541 ], [ %5879, %5883 ]
  %5886 = phi float [ %6542, %6541 ], [ %5825, %5883 ]
  %5887 = phi float [ %6543, %6541 ], [ %5826, %5883 ]
  %5888 = phi float [ %6544, %6541 ], [ %5827, %5883 ]
  %5889 = phi float [ %6545, %6541 ], [ %5828, %5883 ]
  %5890 = phi float [ %6546, %6541 ], [ %5829, %5883 ]
  %5891 = phi float [ %6547, %6541 ], [ %5830, %5883 ]
  %5892 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5893 = extractvalue %dx.types.CBufRet.i32 %5892, 0
  %5894 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5867, i32 %5893, i32 %5885)  ; UMad(a,b,c)
  %5895 = shl i32 %5894, 2
  %5896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5895, i32 undef)  ; BufferLoad(srv,index,wot)
  %5897 = extractvalue %dx.types.ResRet.i32 %5896, 0
  %5898 = shl i32 %5885, 5
  %5899 = sub nsw i32 %5877, %5898
  %5900 = call i32 @dx.op.binary.i32(i32 37, i32 %5899, i32 0)  ; IMax(a,b)
  %5901 = call i32 @dx.op.binary.i32(i32 38, i32 %5900, i32 31)  ; IMin(a,b)
  %5902 = sub nsw i32 1, %5877
  %5903 = add nsw i32 %5902, %5878
  %5904 = call i32 @dx.op.binary.i32(i32 37, i32 %5903, i32 0)  ; IMax(a,b)
  %5905 = call i32 @dx.op.binary.i32(i32 38, i32 %5904, i32 32)  ; IMin(a,b)
  %5906 = and i32 %5905, 31
  %5907 = shl i32 -1, %5906
  %5908 = xor i32 %5907, -1
  %5909 = and i32 %5901, 31
  %5910 = shl i32 %5908, %5909
  %5911 = icmp eq i32 %5905, 32
  %5912 = select i1 %5911, i32 -1, i32 %5910
  %5913 = and i32 %5912, %5897
  %5914 = icmp eq i32 %5913, 0
  br i1 %5914, label %6541, label %5915

; <label>:5915                                    ; preds = %5884
  br label %5916

; <label>:5916                                    ; preds = %6050, %5915
  %5917 = phi i32 [ %5928, %6050 ], [ %5913, %5915 ]
  %5918 = phi float [ %6051, %6050 ], [ %5886, %5915 ]
  %5919 = phi float [ %6052, %6050 ], [ %5887, %5915 ]
  %5920 = phi float [ %6053, %6050 ], [ %5888, %5915 ]
  %5921 = phi float [ %6054, %6050 ], [ %5889, %5915 ]
  %5922 = phi float [ %6055, %6050 ], [ %5890, %5915 ]
  %5923 = phi float [ %6056, %6050 ], [ %5891, %5915 ]
  %5924 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5917)  ; FirstbitLo(value)
  %5925 = add i32 %5924, %5898
  %5926 = and i32 %5924, 31
  %5927 = shl i32 1, %5926
  %5928 = xor i32 %5927, %5917
  %5929 = mul i32 %5925, 112
  %5930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5929, i32 undef)  ; BufferLoad(srv,index,wot)
  %5931 = extractvalue %dx.types.ResRet.f32 %5930, 0
  %5932 = extractvalue %dx.types.ResRet.f32 %5930, 1
  %5933 = extractvalue %dx.types.ResRet.f32 %5930, 2
  %5934 = or i32 %5929, 12
  %5935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5934, i32 undef)  ; BufferLoad(srv,index,wot)
  %5936 = extractvalue %dx.types.ResRet.f32 %5935, 0
  %5937 = add i32 %5929, 16
  %5938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5937, i32 undef)  ; BufferLoad(srv,index,wot)
  %5939 = extractvalue %dx.types.ResRet.f32 %5938, 0
  %5940 = extractvalue %dx.types.ResRet.f32 %5938, 1
  %5941 = extractvalue %dx.types.ResRet.f32 %5938, 2
  %5942 = add i32 %5929, 28
  %5943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5942, i32 undef)  ; BufferLoad(srv,index,wot)
  %5944 = extractvalue %dx.types.ResRet.i32 %5943, 0
  %5945 = add i32 %5929, 44
  %5946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5945, i32 undef)  ; BufferLoad(srv,index,wot)
  %5947 = extractvalue %dx.types.ResRet.f32 %5946, 0
  %5948 = add i32 %5929, 48
  %5949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5948, i32 undef)  ; BufferLoad(srv,index,wot)
  %5950 = extractvalue %dx.types.ResRet.f32 %5949, 0
  %5951 = extractvalue %dx.types.ResRet.f32 %5949, 1
  %5952 = extractvalue %dx.types.ResRet.f32 %5949, 2
  %5953 = extractvalue %dx.types.ResRet.f32 %5949, 3
  %5954 = add i32 %5929, 64
  %5955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5954, i32 undef)  ; BufferLoad(srv,index,wot)
  %5956 = extractvalue %dx.types.ResRet.f32 %5955, 0
  %5957 = extractvalue %dx.types.ResRet.f32 %5955, 1
  %5958 = extractvalue %dx.types.ResRet.f32 %5955, 2
  %5959 = extractvalue %dx.types.ResRet.f32 %5955, 3
  %5960 = add i32 %5929, 80
  %5961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5960, i32 undef)  ; BufferLoad(srv,index,wot)
  %5962 = extractvalue %dx.types.ResRet.f32 %5961, 1
  %5963 = extractvalue %dx.types.ResRet.f32 %5961, 2
  %5964 = add i32 %5929, 92
  %5965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5964, i32 undef)  ; BufferLoad(srv,index,wot)
  %5966 = extractvalue %dx.types.ResRet.i32 %5965, 0
  %5967 = call float @dx.op.dot3.f32(i32 55, float %5931, float %5932, float %5933, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5968 = select i1 %248, float %5962, float %5931
  %5969 = select i1 %248, float %5967, float %5932
  %5970 = select i1 %248, float %5963, float %5933
  %5971 = and i32 %5966, 65535
  %5972 = uitofp i32 %5971 to float
  %5973 = lshr i32 %5966, 16
  %5974 = uitofp i32 %5973 to float
  %5975 = and i32 %5944, 65535
  %5976 = and i32 %5944, 50331648
  %5977 = icmp eq i32 %5976, 33554432
  %5978 = fsub fast float %5950, %157
  %5979 = fsub fast float %5951, %158
  %5980 = fsub fast float %5952, %159
  %5981 = call float @dx.op.dot3.f32(i32 55, float %5978, float %5979, float %5980, float %5978, float %5979, float %5980)  ; Dot3(ax,ay,az,bx,by,bz)
  %5982 = call float @dx.op.unary.f32(i32 24, float %5981)  ; Sqrt(value)
  %5983 = fdiv fast float 1.000000e+00, %5982
  %5984 = fmul fast float %5983, %5978
  %5985 = fmul fast float %5983, %5979
  %5986 = fmul fast float %5983, %5980
  %5987 = fadd fast float %5982, %5936
  %5988 = fdiv fast float 1.000000e+00, %5987
  %5989 = fmul float %5947, %5988
  %5990 = fmul float %5989, %5989
  %5991 = call float @dx.op.unary.f32(i32 7, float %5990)  ; Saturate(value)
  br i1 %5977, label %5992, label %6013

; <label>:5992                                    ; preds = %5916
  %5993 = fmul fast float %5958, %5939
  %5994 = fmul fast float %5958, %5940
  %5995 = fmul fast float %5958, %5941
  %5996 = fadd fast float %5978, %5993
  %5997 = fadd fast float %5979, %5994
  %5998 = fadd fast float %5980, %5995
  %5999 = call float @dx.op.dot3.f32(i32 55, float %5996, float %5997, float %5998, float %5996, float %5997, float %5998)  ; Dot3(ax,ay,az,bx,by,bz)
  %6000 = call float @dx.op.unary.f32(i32 25, float %5999)  ; Rsqrt(value)
  %6001 = fmul fast float %6000, %5996
  %6002 = fmul fast float %6000, %5997
  %6003 = fmul fast float %6000, %5998
  %6004 = fsub fast float %157, %5950
  %6005 = fsub fast float %158, %5951
  %6006 = fsub fast float %159, %5952
  %6007 = fsub fast float -0.000000e+00, %6004
  %6008 = fsub fast float -0.000000e+00, %6005
  %6009 = fsub fast float -0.000000e+00, %6006
  %6010 = call float @dx.op.dot3.f32(i32 55, float %6007, float %6008, float %6009, float %5939, float %5940, float %5941)  ; Dot3(ax,ay,az,bx,by,bz)
  %6011 = fcmp fast ogt float %6010, 0.000000e+00
  %6012 = uitofp i1 %6011 to float
  br label %6013

; <label>:6013                                    ; preds = %5992, %5916
  %6014 = phi float [ %6012, %5992 ], [ 1.000000e+00, %5916 ]
  %6015 = phi float [ %6001, %5992 ], [ %5984, %5916 ]
  %6016 = phi float [ %6002, %5992 ], [ %5985, %5916 ]
  %6017 = phi float [ %6003, %5992 ], [ %5986, %5916 ]
  %6018 = call float @dx.op.dot3.f32(i32 55, float %5939, float %5940, float %5941, float %6015, float %6016, float %6017)  ; Dot3(ax,ay,az,bx,by,bz)
  %6019 = fmul fast float %6018, %6018
  %6020 = call float @dx.op.unary.f32(i32 7, float %6019)  ; Saturate(value)
  %6021 = fsub fast float 1.000000e+00, %6020
  %6022 = fmul fast float %6021, 5.000000e-01
  %6023 = fcmp fast ogt float %6018, 0.000000e+00
  %6024 = fsub fast float 1.000000e+00, %6022
  %6025 = select i1 %6023, float %6022, float %6024
  %6026 = fmul fast float %6025, %5974
  %6027 = fadd fast float %6026, %5972
  %6028 = fmul fast float %6027, 0x3EF0001000000000
  %6029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %64, float %6028, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6030 = extractvalue %dx.types.ResRet.f32 %6029, 0
  %6031 = fmul fast float %6018, %5956
  %6032 = fadd fast float %6031, %5957
  %6033 = call float @dx.op.unary.f32(i32 7, float %6032)  ; Saturate(value)
  %6034 = select i1 %5977, float 1.000000e+00, float %6033
  %6035 = select i1 %5977, float %6033, float 1.000000e+00
  %6036 = fmul fast float %5982, %5953
  %6037 = fsub fast float 1.000000e+00, %6036
  %6038 = fmul fast float %6037, %5959
  %6039 = call float @dx.op.unary.f32(i32 7, float %6038)  ; Saturate(value)
  %6040 = fmul fast float %6039, %6035
  %6041 = fmul fast float %6040, 2.000000e+00
  %6042 = fsub fast float 3.000000e+00, %6041
  %6043 = fmul fast float %6030, %6014
  %6044 = fmul fast float %6040, %6040
  %6045 = fmul fast float %6044, %6043
  %6046 = fmul fast float %6045, %6042
  %6047 = call float @dx.op.binary.f32(i32 36, float %6046, float %6046)  ; FMin(a,b)
  %6048 = call float @dx.op.binary.f32(i32 36, float %6046, float %6047)  ; FMin(a,b)
  %6049 = fcmp fast ogt float %6048, 0.000000e+00
  br i1 %6049, label %6058, label %6050, !dx.controlflow.hints !145

; <label>:6050                                    ; preds = %6489, %6204, %6013
  %6051 = phi float [ %5918, %6204 ], [ %5918, %6013 ], [ %6537, %6489 ]
  %6052 = phi float [ %5919, %6204 ], [ %5919, %6013 ], [ %6538, %6489 ]
  %6053 = phi float [ %5920, %6204 ], [ %5920, %6013 ], [ %6539, %6489 ]
  %6054 = phi float [ %5921, %6204 ], [ %5921, %6013 ], [ %6528, %6489 ]
  %6055 = phi float [ %5922, %6204 ], [ %5922, %6013 ], [ %6529, %6489 ]
  %6056 = phi float [ %5923, %6204 ], [ %5923, %6013 ], [ %6530, %6489 ]
  %6057 = icmp eq i32 %5917, %5927
  br i1 %6057, label %6540, label %5916

; <label>:6058                                    ; preds = %6013
  %6059 = icmp eq i32 %5975, 255
  br i1 %6059, label %6204, label %6060, !dx.controlflow.hints !146

; <label>:6060                                    ; preds = %6058
  %6061 = mul nuw nsw i32 %5975, 176
  %6062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6061, i32 undef)  ; BufferLoad(srv,index,wot)
  %6063 = extractvalue %dx.types.ResRet.f32 %6062, 0
  %6064 = extractvalue %dx.types.ResRet.f32 %6062, 1
  %6065 = extractvalue %dx.types.ResRet.f32 %6062, 2
  %6066 = extractvalue %dx.types.ResRet.f32 %6062, 3
  %6067 = add nuw nsw i32 %6061, 16
  %6068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6067, i32 undef)  ; BufferLoad(srv,index,wot)
  %6069 = extractvalue %dx.types.ResRet.f32 %6068, 0
  %6070 = extractvalue %dx.types.ResRet.f32 %6068, 1
  %6071 = add nuw nsw i32 %6061, 32
  %6072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6071, i32 undef)  ; BufferLoad(srv,index,wot)
  %6073 = extractvalue %dx.types.ResRet.f32 %6072, 0
  %6074 = extractvalue %dx.types.ResRet.f32 %6072, 1
  %6075 = extractvalue %dx.types.ResRet.f32 %6072, 2
  %6076 = add nuw nsw i32 %6061, 48
  %6077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6076, i32 undef)  ; BufferLoad(srv,index,wot)
  %6078 = extractvalue %dx.types.ResRet.f32 %6077, 0
  %6079 = extractvalue %dx.types.ResRet.f32 %6077, 1
  %6080 = extractvalue %dx.types.ResRet.f32 %6077, 2
  %6081 = extractvalue %dx.types.ResRet.f32 %6077, 3
  %6082 = add nuw nsw i32 %6061, 64
  %6083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6082, i32 undef)  ; BufferLoad(srv,index,wot)
  %6084 = extractvalue %dx.types.ResRet.f32 %6083, 0
  %6085 = extractvalue %dx.types.ResRet.f32 %6083, 1
  %6086 = extractvalue %dx.types.ResRet.f32 %6083, 2
  %6087 = extractvalue %dx.types.ResRet.f32 %6083, 3
  %6088 = add nuw nsw i32 %6061, 80
  %6089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6088, i32 undef)  ; BufferLoad(srv,index,wot)
  %6090 = extractvalue %dx.types.ResRet.f32 %6089, 0
  %6091 = extractvalue %dx.types.ResRet.f32 %6089, 1
  %6092 = extractvalue %dx.types.ResRet.f32 %6089, 2
  %6093 = extractvalue %dx.types.ResRet.f32 %6089, 3
  %6094 = add nuw nsw i32 %6061, 96
  %6095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6094, i32 undef)  ; BufferLoad(srv,index,wot)
  %6096 = extractvalue %dx.types.ResRet.f32 %6095, 0
  %6097 = extractvalue %dx.types.ResRet.f32 %6095, 1
  %6098 = extractvalue %dx.types.ResRet.f32 %6095, 2
  %6099 = extractvalue %dx.types.ResRet.f32 %6095, 3
  %6100 = bitcast float %6070 to i32
  %6101 = fmul fast float %6075, %105
  %6102 = fmul fast float %6075, %106
  %6103 = fmul fast float %6075, %107
  %6104 = fadd fast float %6101, %157
  %6105 = fadd fast float %6102, %158
  %6106 = fadd fast float %6103, %159
  %6107 = fmul fast float %6104, %6078
  %6108 = call float @dx.op.tertiary.f32(i32 46, float %6105, float %6084, float %6107)  ; FMad(a,b,c)
  %6109 = call float @dx.op.tertiary.f32(i32 46, float %6106, float %6090, float %6108)  ; FMad(a,b,c)
  %6110 = fadd fast float %6109, %6096
  %6111 = fmul fast float %6104, %6079
  %6112 = call float @dx.op.tertiary.f32(i32 46, float %6105, float %6085, float %6111)  ; FMad(a,b,c)
  %6113 = call float @dx.op.tertiary.f32(i32 46, float %6106, float %6091, float %6112)  ; FMad(a,b,c)
  %6114 = fadd fast float %6113, %6097
  %6115 = fmul fast float %6104, %6080
  %6116 = call float @dx.op.tertiary.f32(i32 46, float %6105, float %6086, float %6115)  ; FMad(a,b,c)
  %6117 = call float @dx.op.tertiary.f32(i32 46, float %6106, float %6092, float %6116)  ; FMad(a,b,c)
  %6118 = fadd fast float %6117, %6098
  %6119 = fmul fast float %6104, %6081
  %6120 = call float @dx.op.tertiary.f32(i32 46, float %6105, float %6087, float %6119)  ; FMad(a,b,c)
  %6121 = call float @dx.op.tertiary.f32(i32 46, float %6106, float %6093, float %6120)  ; FMad(a,b,c)
  %6122 = fadd fast float %6121, %6099
  %6123 = fdiv fast float %6110, %6122
  %6124 = fdiv fast float %6114, %6122
  %6125 = fdiv fast float %6118, %6122
  %6126 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6125)  ; FMax(a,b)
  %6127 = fmul fast float %259, 0x401921FB60000000
  %6128 = call float @dx.op.unary.f32(i32 13, float %6127)  ; Sin(value)
  %6129 = call float @dx.op.unary.f32(i32 12, float %6127)  ; Cos(value)
  %6130 = fmul fast float %6129, %6074
  %6131 = call float @dx.op.tertiary.f32(i32 46, float %6128, float %6074, float 0.000000e+00)  ; FMad(a,b,c)
  %6132 = fmul fast float %6074, %6128
  %6133 = fsub fast float -0.000000e+00, %6132
  %6134 = call float @dx.op.tertiary.f32(i32 46, float %6129, float %6074, float 0.000000e+00)  ; FMad(a,b,c)
  br label %6135

; <label>:6135                                    ; preds = %6135, %6060
  %6136 = phi float [ 0.000000e+00, %6060 ], [ %6168, %6135 ]
  %6137 = phi float [ 0.000000e+00, %6060 ], [ %6170, %6135 ]
  %6138 = phi i32 [ 0, %6060 ], [ %6171, %6135 ]
  %6139 = mul i32 %6138, 2
  %6140 = add i32 0, %6139
  %6141 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6140
  %6142 = load float, float* %6141, align 4
  %6143 = mul i32 %6138, 2
  %6144 = add i32 1, %6143
  %6145 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6144
  %6146 = load float, float* %6145, align 4
  %6147 = fmul fast float %6130, %6142
  %6148 = call float @dx.op.tertiary.f32(i32 46, float %6146, float %6133, float %6147)  ; FMad(a,b,c)
  %6149 = fmul fast float %6142, %6131
  %6150 = call float @dx.op.tertiary.f32(i32 46, float %6146, float %6134, float %6149)  ; FMad(a,b,c)
  %6151 = fadd fast float %6148, %6123
  %6152 = fadd fast float %6150, %6124
  %6153 = fmul fast float %6151, %6069
  %6154 = fmul fast float %6152, %6069
  %6155 = call float @dx.op.binary.f32(i32 35, float %6153, float %6065)  ; FMax(a,b)
  %6156 = call float @dx.op.binary.f32(i32 35, float %6154, float %6065)  ; FMax(a,b)
  %6157 = call float @dx.op.binary.f32(i32 36, float %6155, float %6066)  ; FMin(a,b)
  %6158 = call float @dx.op.binary.f32(i32 36, float %6156, float %6066)  ; FMin(a,b)
  %6159 = fadd fast float %6157, %6063
  %6160 = fadd fast float %6158, %6064
  %6161 = uitofp i32 %6100 to float
  %6162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %65, float %6159, float %6160, float %6161, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6163 = extractvalue %dx.types.ResRet.f32 %6162, 0
  %6164 = fsub fast float %6163, %6126
  %6165 = fsub fast float %6164, %6073
  %6166 = fcmp fast ogt float %6165, 0.000000e+00
  %6167 = select i1 %6166, float 1.000000e+00, float 0.000000e+00
  %6168 = fadd fast float %6167, %6136
  %6169 = select i1 %6166, float %6165, float 0.000000e+00
  %6170 = fadd fast float %6169, %6137
  %6171 = add nuw nsw i32 %6138, 1
  %6172 = icmp eq i32 %6171, 8
  br i1 %6172, label %6173, label %6135

; <label>:6173                                    ; preds = %6135
  %6174 = fdiv fast float 1.000000e+00, %6168
  %6175 = fmul fast float %6174, %6170
  %6176 = fdiv fast float 1.000000e+00, %6126
  %6177 = fmul fast float %6175, %6176
  %6178 = call float @dx.op.unary.f32(i32 7, float %6177)  ; Saturate(value)
  %6179 = call float @dx.op.binary.f32(i32 35, float %6178, float 0.000000e+00)  ; FMax(a,b)
  %6180 = fmul fast float %6168, 1.250000e-01
  %6181 = call float @dx.op.unary.f32(i32 7, float %6180)  ; Saturate(value)
  %6182 = fmul fast float %6181, 2.000000e+00
  %6183 = fadd fast float %6182, -1.000000e+00
  %6184 = fcmp fast ogt float %6183, 0.000000e+00
  %6185 = fcmp fast olt float %6183, 0.000000e+00
  %6186 = zext i1 %6184 to i32
  %6187 = zext i1 %6185 to i32
  %6188 = sub nsw i32 %6186, %6187
  %6189 = sitofp i32 %6188 to float
  %6190 = fmul fast float %6189, %6183
  %6191 = fsub fast float 1.000000e+00, %6190
  %6192 = fmul fast float %6191, %6191
  %6193 = fmul fast float %6192, %6191
  %6194 = fsub fast float %6191, %6193
  %6195 = fmul fast float %6194, %6179
  %6196 = fsub fast float 1.000000e+00, %6193
  %6197 = fsub fast float %6196, %6195
  %6198 = fmul fast float %6189, 5.000000e-01
  %6199 = fmul fast float %6198, %6197
  %6200 = fsub fast float -5.000000e-01, %6199
  %6201 = fmul fast float %6200, %6034
  %6202 = fadd fast float %6201, 1.000000e+00
  %6203 = fmul fast float %6202, %6046
  br label %6204

; <label>:6204                                    ; preds = %6173, %6058
  %6205 = phi float [ %6203, %6173 ], [ %6046, %6058 ]
  %6206 = call float @dx.op.binary.f32(i32 36, float %6205, float %6205)  ; FMin(a,b)
  %6207 = call float @dx.op.binary.f32(i32 36, float %6205, float %6206)  ; FMin(a,b)
  %6208 = fcmp fast ogt float %6207, 0.000000e+00
  br i1 %6208, label %6209, label %6050, !dx.controlflow.hints !147

; <label>:6209                                    ; preds = %6204
  %6210 = fmul fast float %6205, %5968
  %6211 = fmul fast float %6205, %5969
  %6212 = fmul fast float %6205, %5970
  %6213 = fsub fast float %5952, %2094
  %6214 = fcmp fast ogt float %6213, 0.000000e+00
  %6215 = fsub fast float %159, %2094
  %6216 = fcmp fast ogt float %6215, 0.000000e+00
  %6217 = xor i1 %6216, %6214
  %6218 = fsub fast float %2094, %5952
  %6219 = fmul fast float %6218, 2.000000e+00
  %6220 = fadd fast float %6219, %5952
  %6221 = select i1 %6217, float %5952, float %6220
  %6222 = fsub fast float %6221, %159
  %6223 = call float @dx.op.dot3.f32(i32 55, float %5978, float %5979, float %6222, float %5978, float %5979, float %6222)  ; Dot3(ax,ay,az,bx,by,bz)
  %6224 = call float @dx.op.unary.f32(i32 25, float %6223)  ; Rsqrt(value)
  %6225 = fmul fast float %6224, %5978
  %6226 = fmul fast float %6224, %5979
  %6227 = fmul fast float %6224, %6222
  %6228 = fsub fast float %2094, %159
  %6229 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6228)  ; Dot3(ax,ay,az,bx,by,bz)
  %6230 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6225, float %6226, float %6227)  ; Dot3(ax,ay,az,bx,by,bz)
  %6231 = fdiv fast float 1.000000e+00, %6230
  %6232 = fmul fast float %6231, %6229
  %6233 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6215, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6234 = fcmp fast ogt float %6233, 0.000000e+00
  %6235 = fcmp fast olt float %6233, 0.000000e+00
  %6236 = zext i1 %6234 to i32
  %6237 = zext i1 %6235 to i32
  %6238 = sub nsw i32 %6236, %6237
  %6239 = sitofp i32 %6238 to float
  %6240 = fsub fast float %6221, %2094
  %6241 = call float @dx.op.dot3.f32(i32 55, float %5978, float %5979, float %6240, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6242 = fcmp fast ogt float %6241, 0.000000e+00
  %6243 = fcmp fast olt float %6241, 0.000000e+00
  %6244 = zext i1 %6242 to i32
  %6245 = zext i1 %6243 to i32
  %6246 = sub nsw i32 %6244, %6245
  %6247 = sitofp i32 %6246 to float
  %6248 = fcmp fast une float %6239, %6247
  br i1 %6248, label %6249, label %6259

; <label>:6249                                    ; preds = %6209
  %6250 = fmul fast float %6232, %6227
  %6251 = fmul fast float %6232, %6226
  %6252 = fmul fast float %6232, %6225
  %6253 = fmul fast float %6252, %6252
  %6254 = fmul fast float %6251, %6251
  %6255 = fadd fast float %6253, %6254
  %6256 = fmul fast float %6250, %6250
  %6257 = fadd fast float %6255, %6256
  %6258 = call float @dx.op.unary.f32(i32 24, float %6257)  ; Sqrt(value)
  br label %6271

; <label>:6259                                    ; preds = %6209
  %6260 = icmp slt i32 %6238, 0
  br i1 %6260, label %6261, label %6271

; <label>:6261                                    ; preds = %6259
  %6262 = fsub fast float %157, %5950
  %6263 = fsub fast float %158, %5951
  %6264 = fsub fast float %159, %6221
  %6265 = fmul fast float %6262, %6262
  %6266 = fmul fast float %6263, %6263
  %6267 = fadd fast float %6265, %6266
  %6268 = fmul fast float %6264, %6264
  %6269 = fadd fast float %6267, %6268
  %6270 = call float @dx.op.unary.f32(i32 24, float %6269)  ; Sqrt(value)
  br label %6271

; <label>:6271                                    ; preds = %6261, %6259, %6249
  %6272 = phi float [ %6258, %6249 ], [ %6270, %6261 ], [ 0.000000e+00, %6259 ]
  %6273 = and i1 %6216, %6214
  %6274 = fsub fast float -0.000000e+00, %6272
  %6275 = select i1 %6273, float -0.000000e+00, float %6274
  %6276 = fmul fast float %2095, 0x3FF7154760000000
  %6277 = fmul fast float %6276, %6275
  %6278 = fmul fast float %2096, 0x3FF7154760000000
  %6279 = fmul fast float %6278, %6275
  %6280 = fmul fast float %2097, 0x3FF7154760000000
  %6281 = fmul fast float %6280, %6275
  %6282 = call float @dx.op.unary.f32(i32 21, float %6277)  ; Exp(value)
  %6283 = call float @dx.op.unary.f32(i32 21, float %6279)  ; Exp(value)
  %6284 = call float @dx.op.unary.f32(i32 21, float %6281)  ; Exp(value)
  %6285 = call float @dx.op.unary.f32(i32 7, float %6282)  ; Saturate(value)
  %6286 = call float @dx.op.unary.f32(i32 7, float %6283)  ; Saturate(value)
  %6287 = call float @dx.op.unary.f32(i32 7, float %6284)  ; Saturate(value)
  %6288 = fmul fast float %6210, %6285
  %6289 = fmul fast float %6211, %6286
  %6290 = fmul fast float %6212, %6287
  %6291 = fsub fast float %5984, %2294
  %6292 = fsub fast float %5985, %2293
  %6293 = fsub fast float %5986, %2292
  %6294 = call float @dx.op.dot3.f32(i32 55, float %6291, float %6292, float %6293, float %6291, float %6292, float %6293)  ; Dot3(ax,ay,az,bx,by,bz)
  %6295 = call float @dx.op.unary.f32(i32 25, float %6294)  ; Rsqrt(value)
  %6296 = fmul fast float %6295, %6291
  %6297 = fmul fast float %6295, %6292
  %6298 = fmul fast float %6295, %6293
  %6299 = call float @dx.op.dot3.f32(i32 55, float %5984, float %5985, float %5986, float %2298, float %2299, float %2300)  ; Dot3(ax,ay,az,bx,by,bz)
  %6300 = call float @dx.op.dot3.f32(i32 55, float %2291, float %2290, float %2289, float %6296, float %6297, float %6298)  ; Dot3(ax,ay,az,bx,by,bz)
  %6301 = call float @dx.op.unary.f32(i32 7, float %6299)  ; Saturate(value)
  %6302 = fmul fast float %6301, %5991
  %6303 = fmul fast float %6301, %6301
  %6304 = fmul fast float %6303, %2334
  %6305 = call float @dx.op.unary.f32(i32 7, float %6304)  ; Saturate(value)
  %6306 = fmul fast float %6302, %6305
  %6307 = bitcast float %5981 to i32
  %6308 = ashr i32 %6307, 1
  %6309 = sub nsw i32 1597463007, %6308
  %6310 = bitcast i32 %6309 to float
  %6311 = fmul fast float %6310, %5978
  %6312 = fmul fast float %6310, %5979
  %6313 = fmul fast float %6310, %5980
  %6314 = fsub fast float %6311, %2294
  %6315 = fsub fast float %6312, %2293
  %6316 = fsub fast float %6313, %2292
  %6317 = call float @dx.op.dot3.f32(i32 55, float %6314, float %6315, float %6316, float %6314, float %6315, float %6316)  ; Dot3(ax,ay,az,bx,by,bz)
  %6318 = call float @dx.op.unary.f32(i32 25, float %6317)  ; Rsqrt(value)
  %6319 = fmul fast float %6314, %6318
  %6320 = fmul fast float %6315, %6318
  %6321 = fmul fast float %6316, %6318
  %6322 = call float @dx.op.dot3.f32(i32 55, float %2298, float %2299, float %2300, float %6319, float %6320, float %6321)  ; Dot3(ax,ay,az,bx,by,bz)
  %6323 = fmul fast float %6322, %6322
  %6324 = call float @dx.op.unary.f32(i32 6, float %6299)  ; FAbs(value)
  %6325 = fsub fast float 1.000000e+00, %2327
  %6326 = fmul fast float %2309, %2309
  %6327 = fmul fast float %6326, %6325
  %6328 = fadd fast float %6327, %2327
  %6329 = bitcast float %6328 to i32
  %6330 = ashr i32 %6329, 1
  %6331 = add nsw i32 %6330, 532487669
  %6332 = bitcast i32 %6331 to float
  %6333 = fadd fast float %6332, %2309
  %6334 = fmul fast float %2327, %6323
  %6335 = fsub fast float 1.000000e+00, %6323
  %6336 = fadd fast float %6335, %6334
  %6337 = fmul fast float %6324, %6324
  %6338 = fmul fast float %6337, %6325
  %6339 = fadd fast float %6338, %2327
  %6340 = bitcast float %6339 to i32
  %6341 = ashr i32 %6340, 1
  %6342 = add nsw i32 %6341, 532487669
  %6343 = bitcast i32 %6342 to float
  %6344 = fadd fast float %6343, %6324
  %6345 = fmul fast float %6336, %6336
  %6346 = fmul fast float %6345, %6333
  %6347 = fmul fast float %6346, %6344
  %6348 = fdiv fast float 1.000000e+00, %6347
  %6349 = bitcast float %2327 to i32
  %6350 = sitofp i32 %6349 to float
  %6351 = fmul fast float %6350, 0x3FE7F73180000000
  %6352 = fadd fast float %6351, 0x41AFE27C40000000
  %6353 = fptosi float %6352 to i32
  %6354 = bitcast i32 %6353 to float
  %6355 = fmul fast float %5947, 0x3FD80E9D60000000
  %6356 = fmul fast float %6355, %6310
  %6357 = fadd fast float %6354, %6356
  %6358 = bitcast float %6357 to i32
  %6359 = sub nsw i32 2129859010, %6358
  %6360 = bitcast i32 %6359 to float
  %6361 = fmul fast float %2327, %6348
  %6362 = fmul fast float %6361, %6354
  %6363 = fmul fast float %6362, %6360
  %6364 = call float @dx.op.unary.f32(i32 6, float %6300)  ; FAbs(value)
  %6365 = fsub fast float 1.000000e+00, %6364
  %6366 = bitcast float %6365 to i32
  %6367 = sitofp i32 %6366 to float
  %6368 = fmul fast float %6367, 5.000000e+00
  %6369 = fadd fast float %6368, 0xC1EFBF8940000000
  %6370 = fptosi float %6369 to i32
  %6371 = bitcast i32 %6370 to float
  %6372 = fsub fast float 1.000000e+00, %2301
  %6373 = fsub fast float 1.000000e+00, %2302
  %6374 = fsub fast float 1.000000e+00, %2307
  %6375 = fmul fast float %6371, %6372
  %6376 = fmul fast float %6371, %6373
  %6377 = fmul fast float %6371, %6374
  %6378 = fadd fast float %6375, %2301
  %6379 = fadd fast float %6376, %2302
  %6380 = fadd fast float %6377, %2307
  br i1 %3631, label %6381, label %6404

; <label>:6381                                    ; preds = %6271
  %6382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1603, float %6364, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6383 = extractvalue %dx.types.ResRet.f32 %6382, 0
  %6384 = extractvalue %dx.types.ResRet.f32 %6382, 1
  %6385 = extractvalue %dx.types.ResRet.f32 %6382, 2
  %6386 = fadd fast float %6383, -5.000000e-01
  %6387 = fadd fast float %6384, -5.000000e-01
  %6388 = fadd fast float %6385, -5.000000e-01
  %6389 = fmul fast float %2301, 4.000000e+00
  %6390 = fmul fast float %6389, %6372
  %6391 = fmul fast float %6390, %6386
  %6392 = fmul fast float %2302, 4.000000e+00
  %6393 = fmul fast float %6392, %6373
  %6394 = fmul fast float %6393, %6387
  %6395 = fmul fast float %2307, 4.000000e+00
  %6396 = fmul fast float %6395, %6374
  %6397 = fmul fast float %6396, %6388
  %6398 = fadd fast float %6391, %6378
  %6399 = fadd fast float %6394, %6379
  %6400 = fadd fast float %6397, %6380
  %6401 = call float @dx.op.unary.f32(i32 7, float %6398)  ; Saturate(value)
  %6402 = call float @dx.op.unary.f32(i32 7, float %6399)  ; Saturate(value)
  %6403 = call float @dx.op.unary.f32(i32 7, float %6400)  ; Saturate(value)
  br label %6404

; <label>:6404                                    ; preds = %6381, %6271
  %6405 = phi float [ %6401, %6381 ], [ %6378, %6271 ]
  %6406 = phi float [ %6402, %6381 ], [ %6379, %6271 ]
  %6407 = phi float [ %6403, %6381 ], [ %6380, %6271 ]
  %6408 = fmul fast float %6299, 9.843750e-01
  %6409 = fadd fast float %6408, 7.812500e-03
  %6410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %6409, float %3621, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6411 = extractvalue %dx.types.ResRet.f32 %6410, 2
  %6412 = extractvalue %dx.types.ResRet.f32 %6410, 3
  %6413 = fmul fast float %6411, %2301
  %6414 = fmul fast float %6411, %2302
  %6415 = fmul fast float %6411, %2307
  %6416 = fadd fast float %6413, %6412
  %6417 = fadd fast float %6414, %6412
  %6418 = fadd fast float %6415, %6412
  br i1 %3631, label %6419, label %6442

; <label>:6419                                    ; preds = %6404
  %6420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1603, float %6299, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6421 = extractvalue %dx.types.ResRet.f32 %6420, 0
  %6422 = extractvalue %dx.types.ResRet.f32 %6420, 1
  %6423 = extractvalue %dx.types.ResRet.f32 %6420, 2
  %6424 = fadd fast float %6421, -5.000000e-01
  %6425 = fadd fast float %6422, -5.000000e-01
  %6426 = fadd fast float %6423, -5.000000e-01
  %6427 = fmul fast float %2301, 4.000000e+00
  %6428 = fmul fast float %6427, %6372
  %6429 = fmul fast float %6428, %6424
  %6430 = fmul fast float %2302, 4.000000e+00
  %6431 = fmul fast float %6430, %6373
  %6432 = fmul fast float %6431, %6425
  %6433 = fmul fast float %2307, 4.000000e+00
  %6434 = fmul fast float %6433, %6374
  %6435 = fmul fast float %6434, %6426
  %6436 = fadd fast float %6429, %6416
  %6437 = fadd fast float %6432, %6417
  %6438 = fadd fast float %6435, %6418
  %6439 = call float @dx.op.unary.f32(i32 7, float %6436)  ; Saturate(value)
  %6440 = call float @dx.op.unary.f32(i32 7, float %6437)  ; Saturate(value)
  %6441 = call float @dx.op.unary.f32(i32 7, float %6438)  ; Saturate(value)
  br label %6442

; <label>:6442                                    ; preds = %6419, %6404
  %6443 = phi float [ %6439, %6419 ], [ %6416, %6404 ]
  %6444 = phi float [ %6440, %6419 ], [ %6417, %6404 ]
  %6445 = phi float [ %6441, %6419 ], [ %6418, %6404 ]
  %6446 = call float @dx.op.binary.f32(i32 35, float %6444, float %6445)  ; FMax(a,b)
  %6447 = call float @dx.op.binary.f32(i32 35, float %6443, float %6446)  ; FMax(a,b)
  %6448 = fsub fast float 1.000000e+00, %6447
  %6449 = fsub fast float -0.000000e+00, %2298
  %6450 = fsub fast float -0.000000e+00, %2299
  %6451 = fsub fast float -0.000000e+00, %2300
  %6452 = call float @dx.op.dot3.f32(i32 55, float %5984, float %5985, float %5986, float %6449, float %6450, float %6451)  ; Dot3(ax,ay,az,bx,by,bz)
  %6453 = call float @dx.op.unary.f32(i32 7, float %6452)  ; Saturate(value)
  %6454 = fmul fast float %6453, %5991
  %6455 = fmul fast float %6453, 9.843750e-01
  %6456 = fadd fast float %6455, 7.812500e-03
  %6457 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %6456, float %3621, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6458 = extractvalue %dx.types.ResRet.f32 %6457, 2
  %6459 = extractvalue %dx.types.ResRet.f32 %6457, 3
  %6460 = fmul fast float %6458, %2301
  %6461 = fmul fast float %6458, %2302
  %6462 = fmul fast float %6458, %2307
  %6463 = fadd fast float %6460, %6459
  %6464 = fadd fast float %6461, %6459
  %6465 = fadd fast float %6462, %6459
  br i1 %3631, label %6466, label %6489

; <label>:6466                                    ; preds = %6442
  %6467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1603, float %6453, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6468 = extractvalue %dx.types.ResRet.f32 %6467, 0
  %6469 = extractvalue %dx.types.ResRet.f32 %6467, 1
  %6470 = extractvalue %dx.types.ResRet.f32 %6467, 2
  %6471 = fadd fast float %6468, -5.000000e-01
  %6472 = fadd fast float %6469, -5.000000e-01
  %6473 = fadd fast float %6470, -5.000000e-01
  %6474 = fmul fast float %2301, 4.000000e+00
  %6475 = fmul fast float %6474, %6372
  %6476 = fmul fast float %6475, %6471
  %6477 = fmul fast float %2302, 4.000000e+00
  %6478 = fmul fast float %6477, %6373
  %6479 = fmul fast float %6478, %6472
  %6480 = fmul fast float %2307, 4.000000e+00
  %6481 = fmul fast float %6480, %6374
  %6482 = fmul fast float %6481, %6473
  %6483 = fadd fast float %6476, %6463
  %6484 = fadd fast float %6479, %6464
  %6485 = fadd fast float %6482, %6465
  %6486 = call float @dx.op.unary.f32(i32 7, float %6483)  ; Saturate(value)
  %6487 = call float @dx.op.unary.f32(i32 7, float %6484)  ; Saturate(value)
  %6488 = call float @dx.op.unary.f32(i32 7, float %6485)  ; Saturate(value)
  br label %6489

; <label>:6489                                    ; preds = %6466, %6442
  %6490 = phi float [ %6486, %6466 ], [ %6463, %6442 ]
  %6491 = phi float [ %6487, %6466 ], [ %6464, %6442 ]
  %6492 = phi float [ %6488, %6466 ], [ %6465, %6442 ]
  %6493 = call float @dx.op.binary.f32(i32 35, float %6491, float %6492)  ; FMax(a,b)
  %6494 = call float @dx.op.binary.f32(i32 35, float %6490, float %6493)  ; FMax(a,b)
  %6495 = fsub fast float 1.000000e+00, %6494
  %6496 = fmul fast float %6454, %6495
  %6497 = fmul fast float %6496, %1717
  %6498 = fmul fast float %6496, %1718
  %6499 = fmul fast float %6496, %1719
  %6500 = fmul fast float %6405, %6363
  %6501 = fmul fast float %6406, %6363
  %6502 = fmul fast float %6407, %6363
  %6503 = fsub fast float 1.000000e+00, %6300
  %6504 = bitcast float %6503 to i32
  %6505 = sitofp i32 %6504 to float
  %6506 = fmul fast float %6505, 5.000000e+00
  %6507 = fadd fast float %6506, 0xC1EFBF8940000000
  %6508 = fptosi float %6507 to i32
  %6509 = bitcast i32 %6508 to float
  %6510 = fmul fast float %6509, %1602
  %6511 = fmul fast float %6448, %6510
  %6512 = fmul fast float %6511, %4170
  %6513 = fmul fast float %6511, %4171
  %6514 = fmul fast float %6511, %4172
  %6515 = fmul fast float %6448, %6306
  %6516 = fadd fast float %6512, %6500
  %6517 = fadd fast float %6513, %6501
  %6518 = fadd fast float %6514, %6502
  %6519 = fadd fast float %6497, %6515
  %6520 = fadd fast float %6498, %6515
  %6521 = fadd fast float %6499, %6515
  %6522 = fmul fast float %6288, %1626
  %6523 = fmul fast float %6522, %6519
  %6524 = fmul fast float %6289, %1626
  %6525 = fmul fast float %6524, %6520
  %6526 = fmul fast float %6290, %1626
  %6527 = fmul fast float %6526, %6521
  %6528 = fadd fast float %6523, %5921
  %6529 = fadd fast float %6525, %5922
  %6530 = fadd fast float %6527, %5923
  %6531 = fmul fast float %6522, %6306
  %6532 = fmul fast float %6531, %6516
  %6533 = fmul fast float %6524, %6306
  %6534 = fmul fast float %6533, %6517
  %6535 = fmul fast float %6526, %6306
  %6536 = fmul fast float %6535, %6518
  %6537 = fadd fast float %6532, %5918
  %6538 = fadd fast float %6534, %5919
  %6539 = fadd fast float %6536, %5920
  br label %6050

; <label>:6540                                    ; preds = %6050
  br label %6541

; <label>:6541                                    ; preds = %6540, %5884
  %6542 = phi float [ %5886, %5884 ], [ %6051, %6540 ]
  %6543 = phi float [ %5887, %5884 ], [ %6052, %6540 ]
  %6544 = phi float [ %5888, %5884 ], [ %6053, %6540 ]
  %6545 = phi float [ %5889, %5884 ], [ %6054, %6540 ]
  %6546 = phi float [ %5890, %5884 ], [ %6055, %6540 ]
  %6547 = phi float [ %5891, %5884 ], [ %6056, %6540 ]
  %6548 = add i32 %5885, 1
  %6549 = icmp ugt i32 %6548, %5881
  br i1 %6549, label %6550, label %5884

; <label>:6550                                    ; preds = %6541
  br label %6551

; <label>:6551                                    ; preds = %6550, %5834, %5824
  %6552 = phi float [ %5825, %5824 ], [ %5825, %5834 ], [ %6542, %6550 ]
  %6553 = phi float [ %5826, %5824 ], [ %5826, %5834 ], [ %6543, %6550 ]
  %6554 = phi float [ %5827, %5824 ], [ %5827, %5834 ], [ %6544, %6550 ]
  %6555 = phi float [ %5828, %5824 ], [ %5828, %5834 ], [ %6545, %6550 ]
  %6556 = phi float [ %5829, %5824 ], [ %5829, %5834 ], [ %6546, %6550 ]
  %6557 = phi float [ %5830, %5824 ], [ %5830, %5834 ], [ %6547, %6550 ]
  %6558 = fmul fast float %4179, %1626
  %6559 = fmul fast float %4180, %1626
  %6560 = fmul fast float %4181, %1626
  %6561 = fadd fast float %6558, 1.000000e+00
  %6562 = fadd fast float %6559, 1.000000e+00
  %6563 = fadd fast float %6560, 1.000000e+00
  %6564 = call float @dx.op.dot3.f32(i32 55, float %6561, float %6562, float %6563, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6565 = fsub fast float 1.000000e+00, %6564
  %6566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6567 = extractvalue %dx.types.CBufRet.f32 %6566, 0
  %6568 = fmul fast float %6567, %4185
  %6569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6570 = extractvalue %dx.types.CBufRet.f32 %6569, 3
  %6571 = fsub fast float 1.000000e+00, %1601
  %6572 = call float @dx.op.unary.f32(i32 7, float %6571)  ; Saturate(value)
  %6573 = fadd fast float %6557, %1600
  %6574 = fmul fast float %6573, %1601
  %6575 = fmul fast float %6572, %6570
  %6576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6577 = extractvalue %dx.types.CBufRet.f32 %6576, 3
  %6578 = fmul fast float %6555, %2295
  %6579 = fmul fast float %6556, %2296
  %6580 = fmul fast float %6557, %2297
  %6581 = fcmp fast ogt float %90, %208
  %6582 = and i1 %6581, %2100
  %6583 = or i1 %2106, %6582
  %6584 = icmp eq i32 %2099, 2
  %6585 = fcmp fast ole float %90, %208
  %6586 = and i1 %6585, %6584
  %6587 = or i1 %6586, %6583
  br i1 %6582, label %6588, label %6847

; <label>:6588                                    ; preds = %6551
  %6589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6590 = extractvalue %dx.types.CBufRet.f32 %6589, 2
  %6591 = extractvalue %dx.types.CBufRet.f32 %6589, 3
  %6592 = fmul fast float %6590, %102
  %6593 = fmul fast float %6591, %103
  %6594 = call float @dx.op.unary.f32(i32 7, float %6592)  ; Saturate(value)
  %6595 = call float @dx.op.unary.f32(i32 7, float %6593)  ; Saturate(value)
  %6596 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6594, float %6595, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6597 = extractvalue %dx.types.ResRet.f32 %6596, 0
  %6598 = extractvalue %dx.types.ResRet.f32 %6596, 1
  %6599 = extractvalue %dx.types.ResRet.f32 %6596, 2
  %6600 = extractvalue %dx.types.ResRet.f32 %6596, 3
  %6601 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6594, float %6595, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6602 = extractvalue %dx.types.ResRet.f32 %6601, 0
  %6603 = extractvalue %dx.types.ResRet.f32 %6601, 1
  %6604 = extractvalue %dx.types.ResRet.f32 %6601, 2
  %6605 = extractvalue %dx.types.ResRet.f32 %6601, 3
  %6606 = call float @dx.op.binary.f32(i32 35, float %6598, float %6599)  ; FMax(a,b)
  %6607 = call float @dx.op.binary.f32(i32 35, float %6597, float %6606)  ; FMax(a,b)
  %6608 = call float @dx.op.binary.f32(i32 35, float %6607, float %6600)  ; FMax(a,b)
  %6609 = call float @dx.op.binary.f32(i32 36, float %6603, float %6604)  ; FMin(a,b)
  %6610 = call float @dx.op.binary.f32(i32 36, float %6602, float %6609)  ; FMin(a,b)
  %6611 = call float @dx.op.binary.f32(i32 36, float %6610, float %6605)  ; FMin(a,b)
  %6612 = fmul fast float %6608, 2.550000e+02
  %6613 = fadd fast float %6612, 0x3F70101020000000
  %6614 = fptoui float %6613 to i32
  %6615 = fmul fast float %6611, 2.550000e+02
  %6616 = fadd fast float %6615, 0x3F70101020000000
  %6617 = fptoui float %6616 to i32
  %6618 = icmp ult i32 %6614, %6617
  br i1 %6618, label %6619, label %6787

; <label>:6619                                    ; preds = %6588
  %6620 = fcmp fast ogt float %89, 9.843750e-01
  %6621 = fadd fast float %90, -4.000000e+00
  %6622 = select i1 %6620, float -4.000000e+00, float %6621
  %6623 = call float @dx.op.binary.f32(i32 35, float %6622, float 0.000000e+00)  ; FMax(a,b)
  %6624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6625 = extractvalue %dx.types.CBufRet.f32 %6624, 0
  %6626 = fadd fast float %6625, %6623
  %6627 = extractvalue %dx.types.CBufRet.f32 %6624, 2
  %6628 = fmul fast float %6626, %6627
  %6629 = call float @dx.op.unary.f32(i32 23, float %6628)  ; Log(value)
  %6630 = extractvalue %dx.types.CBufRet.f32 %6624, 3
  %6631 = fmul fast float %6630, %6629
  %6632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6633 = extractvalue %dx.types.CBufRet.f32 %6632, 2
  %6634 = fmul fast float %6631, %6633
  %6635 = call float @dx.op.unary.f32(i32 7, float %6634)  ; Saturate(value)
  %6636 = uitofp i32 %6614 to float
  %6637 = uitofp i32 %6617 to float
  %6638 = fadd fast float %6636, 5.000000e-01
  %6639 = fadd fast float %6637, 5.000000e-01
  %6640 = fmul fast float %6633, %6638
  %6641 = fmul fast float %6633, %6639
  %6642 = fadd fast float %6640, 0x3F0FFB4800000000
  %6643 = fadd fast float %6641, 0xBF0FFB4800000000
  %6644 = call float @dx.op.binary.f32(i32 35, float %6635, float %6642)  ; FMax(a,b)
  %6645 = call float @dx.op.binary.f32(i32 36, float %6644, float %6643)  ; FMin(a,b)
  %6646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6647 = extractvalue %dx.types.CBufRet.f32 %6646, 1
  %6648 = extractvalue %dx.types.CBufRet.f32 %6646, 2
  %6649 = extractvalue %dx.types.CBufRet.f32 %6646, 0
  %6650 = fmul fast float %6647, %6645
  %6651 = fadd fast float %6649, %6650
  %6652 = fadd fast float %6649, %6648
  %6653 = fsub fast float %6647, %6648
  %6654 = fadd fast float %6653, %6649
  %6655 = call float @dx.op.binary.f32(i32 35, float %6651, float %6652)  ; FMax(a,b)
  %6656 = call float @dx.op.binary.f32(i32 36, float %6655, float %6654)  ; FMin(a,b)
  %6657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %6594, float %6595, float %6656, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6658 = extractvalue %dx.types.ResRet.f32 %6657, 0
  %6659 = extractvalue %dx.types.ResRet.f32 %6657, 1
  %6660 = extractvalue %dx.types.ResRet.f32 %6657, 2
  %6661 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6662 = extractvalue %dx.types.CBufRet.i32 %6661, 0
  %6663 = extractvalue %dx.types.CBufRet.i32 %6661, 1
  %6664 = uitofp i32 %6662 to float
  %6665 = uitofp i32 %6663 to float
  %6666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6667 = extractvalue %dx.types.CBufRet.f32 %6666, 0
  %6668 = extractvalue %dx.types.CBufRet.f32 %6666, 1
  %6669 = fmul fast float %6664, %6594
  %6670 = fmul fast float %6665, %6595
  %6671 = fadd fast float %6669, -5.000000e-01
  %6672 = fadd fast float %6670, -5.000000e-01
  %6673 = call float @dx.op.unary.f32(i32 22, float %6671)  ; Frc(value)
  %6674 = call float @dx.op.unary.f32(i32 22, float %6672)  ; Frc(value)
  %6675 = fmul fast float %6673, %6673
  %6676 = fmul fast float %6675, %6673
  %6677 = fsub fast float 3.000000e+00, %6673
  %6678 = fmul fast float %6675, %6677
  %6679 = fmul fast float %6673, 3.000000e+00
  %6680 = fmul fast float %6676, 3.000000e+00
  %6681 = fmul fast float %6675, 6.000000e+00
  %6682 = fsub fast float %6680, %6681
  %6683 = fadd fast float %6682, 4.000000e+00
  %6684 = fmul fast float %6683, 0x3FC5555560000000
  %6685 = fmul fast float %6676, -3.000000e+00
  %6686 = fadd fast float %6675, %6673
  %6687 = fmul fast float %6686, 3.000000e+00
  %6688 = fadd fast float %6685, 1.000000e+00
  %6689 = fadd fast float %6688, %6687
  %6690 = fmul fast float %6676, 0x3FC5555560000000
  %6691 = fmul fast float %6674, %6674
  %6692 = fmul fast float %6691, %6674
  %6693 = fsub fast float 3.000000e+00, %6674
  %6694 = fmul fast float %6691, %6693
  %6695 = fmul fast float %6674, 3.000000e+00
  %6696 = fmul fast float %6692, 3.000000e+00
  %6697 = fmul fast float %6691, 6.000000e+00
  %6698 = fsub fast float %6696, %6697
  %6699 = fadd fast float %6698, 4.000000e+00
  %6700 = fmul fast float %6699, 0x3FC5555560000000
  %6701 = fmul fast float %6692, -3.000000e+00
  %6702 = fadd fast float %6691, %6674
  %6703 = fmul fast float %6702, 3.000000e+00
  %6704 = fadd fast float %6701, 1.000000e+00
  %6705 = fadd fast float %6704, %6703
  %6706 = fmul fast float %6692, 0x3FC5555560000000
  %6707 = fadd fast float %6673, 1.000000e+00
  %6708 = fsub fast float 1.000000e+00, %6679
  %6709 = fadd fast float %6708, %6678
  %6710 = fadd fast float %6709, %6683
  %6711 = fmul fast float %6710, 0x3FC5555560000000
  %6712 = fdiv fast float %6684, %6711
  %6713 = fsub fast float %6707, %6712
  %6714 = fsub fast float 1.000000e+00, %6673
  %6715 = fadd fast float %6689, %6676
  %6716 = fmul fast float %6715, 0x3FC5555560000000
  %6717 = fdiv fast float %6690, %6716
  %6718 = fadd fast float %6714, %6717
  %6719 = fadd fast float %6674, 1.000000e+00
  %6720 = fsub fast float 1.000000e+00, %6695
  %6721 = fadd fast float %6720, %6694
  %6722 = fadd fast float %6721, %6699
  %6723 = fmul fast float %6722, 0x3FC5555560000000
  %6724 = fdiv fast float %6700, %6723
  %6725 = fsub fast float %6719, %6724
  %6726 = fsub fast float 1.000000e+00, %6674
  %6727 = fadd fast float %6705, %6692
  %6728 = fmul fast float %6727, 0x3FC5555560000000
  %6729 = fdiv fast float %6706, %6728
  %6730 = fadd fast float %6729, %6726
  %6731 = fmul fast float %6713, %6667
  %6732 = fsub fast float %6594, %6731
  %6733 = fmul fast float %6718, %6667
  %6734 = fadd fast float %6733, %6594
  %6735 = fmul fast float %6730, %6668
  %6736 = fadd fast float %6735, %6595
  %6737 = fmul fast float %6725, %6668
  %6738 = fsub fast float %6595, %6737
  %6739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6732, float %6738, float %6656, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6740 = extractvalue %dx.types.ResRet.f32 %6739, 0
  %6741 = extractvalue %dx.types.ResRet.f32 %6739, 1
  %6742 = extractvalue %dx.types.ResRet.f32 %6739, 2
  %6743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6734, float %6738, float %6656, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6744 = extractvalue %dx.types.ResRet.f32 %6743, 0
  %6745 = extractvalue %dx.types.ResRet.f32 %6743, 1
  %6746 = extractvalue %dx.types.ResRet.f32 %6743, 2
  %6747 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6732, float %6736, float %6656, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6748 = extractvalue %dx.types.ResRet.f32 %6747, 0
  %6749 = extractvalue %dx.types.ResRet.f32 %6747, 1
  %6750 = extractvalue %dx.types.ResRet.f32 %6747, 2
  %6751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6734, float %6736, float %6656, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6752 = extractvalue %dx.types.ResRet.f32 %6751, 0
  %6753 = extractvalue %dx.types.ResRet.f32 %6751, 1
  %6754 = extractvalue %dx.types.ResRet.f32 %6751, 2
  %6755 = fsub fast float %6748, %6740
  %6756 = fsub fast float %6749, %6741
  %6757 = fsub fast float %6750, %6742
  %6758 = fmul fast float %6755, %6728
  %6759 = fmul fast float %6756, %6728
  %6760 = fmul fast float %6757, %6728
  %6761 = fadd fast float %6758, %6740
  %6762 = fadd fast float %6759, %6741
  %6763 = fadd fast float %6760, %6742
  %6764 = fsub fast float %6752, %6744
  %6765 = fsub fast float %6753, %6745
  %6766 = fsub fast float %6754, %6746
  %6767 = fmul fast float %6764, %6728
  %6768 = fmul fast float %6765, %6728
  %6769 = fmul fast float %6766, %6728
  %6770 = fsub fast float %6744, %6761
  %6771 = fadd fast float %6770, %6767
  %6772 = fsub fast float %6745, %6762
  %6773 = fadd fast float %6772, %6768
  %6774 = fsub fast float %6746, %6763
  %6775 = fadd fast float %6774, %6769
  %6776 = fmul fast float %6771, %6716
  %6777 = fmul fast float %6773, %6716
  %6778 = fmul fast float %6775, %6716
  %6779 = fadd fast float %6776, %6761
  %6780 = fadd fast float %6777, %6762
  %6781 = fadd fast float %6778, %6763
  %6782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6783 = extractvalue %dx.types.CBufRet.f32 %6782, 1
  %6784 = fmul fast float %6779, %6783
  %6785 = fmul fast float %6780, %6783
  %6786 = fmul fast float %6781, %6783
  br label %6787

; <label>:6787                                    ; preds = %6619, %6588
  %6788 = phi float [ %6658, %6619 ], [ 1.000000e+00, %6588 ]
  %6789 = phi float [ %6659, %6619 ], [ 1.000000e+00, %6588 ]
  %6790 = phi float [ %6660, %6619 ], [ 1.000000e+00, %6588 ]
  %6791 = phi float [ %6784, %6619 ], [ 0.000000e+00, %6588 ]
  %6792 = phi float [ %6785, %6619 ], [ 0.000000e+00, %6588 ]
  %6793 = phi float [ %6786, %6619 ], [ 0.000000e+00, %6588 ]
  %6794 = fmul fast float %6791, %6565
  %6795 = fmul fast float %6792, %6565
  %6796 = fmul fast float %6793, %6565
  %6797 = call float @dx.op.dot3.f32(i32 55, float %6788, float %6789, float %6790, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6798 = call float @dx.op.dot3.f32(i32 55, float %6794, float %6795, float %6796, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6799 = select i1 %248, float %6797, float %6788
  %6800 = select i1 %248, float %6797, float %6789
  %6801 = select i1 %248, float 1.000000e+00, float %6790
  %6802 = select i1 %248, float %6798, float %6794
  %6803 = select i1 %248, float 0.000000e+00, float %6795
  %6804 = select i1 %248, float 0.000000e+00, float %6796
  %6805 = fmul fast float %6799, %6578
  %6806 = fmul fast float %6800, %6579
  %6807 = fmul fast float %6801, %6580
  %6808 = fadd fast float %6805, %6802
  %6809 = fadd fast float %6806, %6803
  %6810 = fadd fast float %6804, %6807
  %6811 = fmul fast float %6799, %6552
  %6812 = fmul fast float %6800, %6553
  %6813 = fmul fast float %6801, %6554
  %6814 = fmul fast float %102, 2.000000e+00
  %6815 = fmul fast float %6814, %6590
  %6816 = fmul fast float %103, 2.000000e+00
  %6817 = fmul fast float %6816, %6591
  %6818 = fsub fast float 1.000000e+00, %6815
  %6819 = fsub fast float 1.000000e+00, %6817
  %6820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6821 = extractvalue %dx.types.CBufRet.f32 %6820, 0
  %6822 = extractvalue %dx.types.CBufRet.f32 %6820, 1
  %6823 = extractvalue %dx.types.CBufRet.f32 %6820, 2
  %6824 = fmul fast float %6818, %6821
  %6825 = fmul fast float %6818, %6822
  %6826 = fmul fast float %6818, %6823
  %6827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6828 = extractvalue %dx.types.CBufRet.f32 %6827, 0
  %6829 = extractvalue %dx.types.CBufRet.f32 %6827, 1
  %6830 = extractvalue %dx.types.CBufRet.f32 %6827, 2
  %6831 = fmul fast float %6819, %6828
  %6832 = fmul fast float %6819, %6829
  %6833 = fmul fast float %6819, %6830
  %6834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6835 = extractvalue %dx.types.CBufRet.f32 %6834, 0
  %6836 = extractvalue %dx.types.CBufRet.f32 %6834, 1
  %6837 = extractvalue %dx.types.CBufRet.f32 %6834, 2
  %6838 = fadd fast float %6831, %6835
  %6839 = fadd fast float %6838, %6824
  %6840 = fadd fast float %6832, %6836
  %6841 = fadd fast float %6840, %6825
  %6842 = fadd fast float %6833, %6837
  %6843 = fadd fast float %6842, %6826
  %6844 = fmul fast float %6839, %208
  %6845 = fmul fast float %6841, %208
  %6846 = fmul fast float %6843, %208
  br label %6847

; <label>:6847                                    ; preds = %6787, %6551
  %6848 = phi float [ %6844, %6787 ], [ %157, %6551 ]
  %6849 = phi float [ %6845, %6787 ], [ %158, %6551 ]
  %6850 = phi float [ %6846, %6787 ], [ %159, %6551 ]
  %6851 = phi float [ %208, %6787 ], [ %90, %6551 ]
  %6852 = phi float [ %6808, %6787 ], [ %6578, %6551 ]
  %6853 = phi float [ %6809, %6787 ], [ %6579, %6551 ]
  %6854 = phi float [ %6810, %6787 ], [ %6580, %6551 ]
  %6855 = phi float [ %6811, %6787 ], [ %6552, %6551 ]
  %6856 = phi float [ %6812, %6787 ], [ %6553, %6551 ]
  %6857 = phi float [ %6813, %6787 ], [ %6554, %6551 ]
  %6858 = phi float [ %6788, %6787 ], [ 1.000000e+00, %6551 ]
  br i1 %6587, label %8013, label %6859

; <label>:6859                                    ; preds = %6847
  %6860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6861 = extractvalue %dx.types.CBufRet.f32 %6860, 0
  %6862 = extractvalue %dx.types.CBufRet.f32 %6860, 1
  %6863 = extractvalue %dx.types.CBufRet.f32 %6860, 2
  %6864 = extractvalue %dx.types.CBufRet.f32 %6860, 3
  %6865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6866 = extractvalue %dx.types.CBufRet.f32 %6865, 0
  %6867 = extractvalue %dx.types.CBufRet.f32 %6865, 1
  %6868 = extractvalue %dx.types.CBufRet.f32 %6865, 2
  %6869 = extractvalue %dx.types.CBufRet.f32 %6865, 3
  %6870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6871 = extractvalue %dx.types.CBufRet.f32 %6870, 0
  %6872 = extractvalue %dx.types.CBufRet.f32 %6870, 1
  %6873 = extractvalue %dx.types.CBufRet.f32 %6870, 2
  %6874 = extractvalue %dx.types.CBufRet.f32 %6870, 3
  %6875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6876 = extractvalue %dx.types.CBufRet.f32 %6875, 0
  %6877 = extractvalue %dx.types.CBufRet.f32 %6875, 1
  %6878 = extractvalue %dx.types.CBufRet.f32 %6875, 2
  %6879 = extractvalue %dx.types.CBufRet.f32 %6875, 3
  %6880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6881 = extractvalue %dx.types.CBufRet.f32 %6880, 3
  %6882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6883 = extractvalue %dx.types.CBufRet.f32 %6882, 3
  %6884 = extractvalue %dx.types.CBufRet.f32 %6882, 0
  %6885 = extractvalue %dx.types.CBufRet.f32 %6882, 1
  %6886 = extractvalue %dx.types.CBufRet.f32 %6882, 2
  %6887 = fcmp fast olt float %6886, -5.000000e-01
  %6888 = call float @dx.op.dot3.f32(i32 55, float %6848, float %6849, float %6850, float %6848, float %6849, float %6850)  ; Dot3(ax,ay,az,bx,by,bz)
  %6889 = call float @dx.op.unary.f32(i32 25, float %6888)  ; Rsqrt(value)
  %6890 = fmul fast float %6889, %6888
  %6891 = fmul fast float %6889, %6848
  %6892 = fmul fast float %6889, %6849
  %6893 = fmul fast float %6889, %6850
  %6894 = fadd fast float %6890, %6864
  %6895 = call float @dx.op.dot3.f32(i32 55, float %6891, float %6892, float %6893, float %6861, float %6862, float %6863)  ; Dot3(ax,ay,az,bx,by,bz)
  %6896 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6897 = extractvalue %dx.types.CBufRet.i32 %6896, 1
  %6898 = and i32 %6897, 1
  %6899 = icmp ne i32 %6898, 0
  %6900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6901 = extractvalue %dx.types.CBufRet.f32 %6900, 2
  %6902 = fcmp fast ogt float %6901, 0.000000e+00
  %6903 = and i1 %6899, %6902
  br i1 %6903, label %6904, label %7310, !dx.controlflow.hints !148

; <label>:6904                                    ; preds = %6859
  %6905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6906 = extractvalue %dx.types.CBufRet.f32 %6905, 3
  %6907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6908 = extractvalue %dx.types.CBufRet.f32 %6907, 2
  %6909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6910 = extractvalue %dx.types.CBufRet.f32 %6909, 2
  %6911 = fsub fast float %6908, %6910
  %6912 = and i32 %6897, 2
  %6913 = extractvalue %dx.types.CBufRet.i32 %6896, 0
  %6914 = call i32 @dx.op.binary.i32(i32 40, i32 %6913, i32 3)  ; UMin(a,b)
  %6915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6916 = extractvalue %dx.types.CBufRet.f32 %6915, 0
  %6917 = extractvalue %dx.types.CBufRet.f32 %6915, 1
  %6918 = extractvalue %dx.types.CBufRet.f32 %6909, 0
  %6919 = extractvalue %dx.types.CBufRet.f32 %6909, 1
  %6920 = fsub fast float %6916, %6918
  %6921 = fsub fast float %6917, %6919
  %6922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6923 = extractvalue %dx.types.CBufRet.f32 %6922, 0
  %6924 = fcmp fast ogt float %6923, 0.000000e+00
  %6925 = fsub fast float -0.000000e+00, %6920
  %6926 = fsub fast float -0.000000e+00, %6921
  %6927 = call float @dx.op.dot2.f32(i32 54, float %6891, float %6892, float %6891, float %6892)  ; Dot2(ax,ay,bx,by)
  %6928 = call float @dx.op.dot2.f32(i32 54, float %6891, float %6892, float %6925, float %6926)  ; Dot2(ax,ay,bx,by)
  %6929 = fmul fast float %6928, 2.000000e+00
  %6930 = call float @dx.op.dot2.f32(i32 54, float %6925, float %6926, float %6925, float %6926)  ; Dot2(ax,ay,bx,by)
  %6931 = fmul fast float %6923, %6923
  %6932 = fsub fast float %6930, %6931
  %6933 = fmul fast float %6929, %6929
  %6934 = fmul fast float %6927, 4.000000e+00
  %6935 = fmul fast float %6934, %6932
  %6936 = fsub fast float %6933, %6935
  %6937 = fcmp fast ogt float %6936, 0.000000e+00
  br i1 %6937, label %6938, label %6953

; <label>:6938                                    ; preds = %6904
  %6939 = fcmp fast ogt float %6929, 0.000000e+00
  %6940 = call float @dx.op.unary.f32(i32 24, float %6936)  ; Sqrt(value)
  %6941 = fsub fast float -0.000000e+00, %6940
  %6942 = select i1 %6939, float %6940, float %6941
  %6943 = fadd fast float %6942, %6929
  %6944 = fmul float %6943, -5.000000e-01
  %6945 = fdiv fast float %6944, %6927
  %6946 = call float @dx.op.binary.f32(i32 35, float %6945, float 0.000000e+00)  ; FMax(a,b)
  %6947 = call float @dx.op.binary.f32(i32 36, float %6890, float %6946)  ; FMin(a,b)
  %6948 = fdiv fast float %6932, %6944
  %6949 = call float @dx.op.binary.f32(i32 35, float %6948, float 0.000000e+00)  ; FMax(a,b)
  %6950 = call float @dx.op.binary.f32(i32 36, float %6890, float %6949)  ; FMin(a,b)
  %6951 = call float @dx.op.binary.f32(i32 36, float %6947, float %6950)  ; FMin(a,b)
  %6952 = call float @dx.op.binary.f32(i32 35, float %6947, float %6950)  ; FMax(a,b)
  br label %6953

; <label>:6953                                    ; preds = %6938, %6904
  %6954 = phi float [ %6952, %6938 ], [ -1.000000e+00, %6904 ]
  %6955 = phi float [ %6951, %6938 ], [ -1.000000e+00, %6904 ]
  %6956 = phi i1 [ true, %6938 ], [ false, %6904 ]
  %6957 = and i1 %6924, %6956
  br i1 %6957, label %6958, label %6960

; <label>:6958                                    ; preds = %6953
  %6959 = fcmp fast oeq float %6955, %6954
  br i1 %6959, label %7263, label %6961

; <label>:6960                                    ; preds = %6953
  br i1 %6924, label %7263, label %6961

; <label>:6961                                    ; preds = %6960, %6958
  %6962 = phi float [ %6890, %6960 ], [ %6954, %6958 ]
  %6963 = phi float [ 0.000000e+00, %6960 ], [ %6955, %6958 ]
  %6964 = icmp ne i32 %6912, 0
  %6965 = fmul fast float %6962, %6893
  %6966 = fadd fast float %6965, %6906
  %6967 = fmul fast float %6966, %6962
  %6968 = select i1 %6964, float 0.000000e+00, float %6967
  %6969 = fcmp fast oeq float %6893, 0.000000e+00
  %6970 = fdiv fast float %6911, %6893
  %6971 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6970)  ; FMax(a,b)
  %6972 = select i1 %6969, float %6962, float %6971
  %6973 = call float @dx.op.binary.f32(i32 36, float %6962, float %6972)  ; FMin(a,b)
  %6974 = fcmp fast ogt float %6893, 0.000000e+00
  %6975 = fcmp fast olt float %6911, 0.000000e+00
  br i1 %6974, label %6976, label %7033

; <label>:6976                                    ; preds = %6961
  %6977 = icmp eq i32 %6912, 0
  br i1 %6975, label %6978, label %7022

; <label>:6978                                    ; preds = %6976
  %6979 = select i1 %6977, float %6962, float 0.000000e+00
  %6980 = fsub fast float -0.000000e+00, %6979
  %6981 = call float @dx.op.unary.f32(i32 6, float %6980)  ; FAbs(value)
  %6982 = fmul fast float %6979, %6893
  %6983 = fadd fast float %6982, %6906
  %6984 = fmul fast float %6981, %6983
  %6985 = fsub fast float %6968, %6984
  %6986 = fsub fast float %6962, %6981
  %6987 = select i1 %6977, float %6986, float 0.000000e+00
  %6988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6989 = extractvalue %dx.types.CBufRet.f32 %6988, 0
  %6990 = extractvalue %dx.types.CBufRet.f32 %6988, 1
  %6991 = extractvalue %dx.types.CBufRet.f32 %6988, 2
  %6992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6993 = extractvalue %dx.types.CBufRet.f32 %6992, 0
  %6994 = extractvalue %dx.types.CBufRet.f32 %6992, 1
  %6995 = extractvalue %dx.types.CBufRet.f32 %6992, 2
  %6996 = extractvalue %dx.types.CBufRet.f32 %6992, 3
  %6997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6998 = extractvalue %dx.types.CBufRet.f32 %6997, 3
  %6999 = call float @dx.op.binary.f32(i32 36, float %6985, float %6998)  ; FMin(a,b)
  %7000 = fmul fast float %6996, %6987
  %7001 = call float @dx.op.unary.f32(i32 7, float %7000)  ; Saturate(value)
  %7002 = fsub fast float %6993, %6989
  %7003 = fsub fast float %6994, %6990
  %7004 = fsub fast float %6995, %6991
  %7005 = fmul fast float %7001, %7002
  %7006 = fmul fast float %7001, %7003
  %7007 = fmul fast float %7001, %7004
  %7008 = fadd fast float %7005, %6989
  %7009 = fadd fast float %7006, %6990
  %7010 = fadd fast float %7007, %6991
  %7011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7012 = extractvalue %dx.types.CBufRet.f32 %7011, 0
  %7013 = extractvalue %dx.types.CBufRet.f32 %7011, 1
  %7014 = fadd fast float %7013, %7012
  %7015 = call float @dx.op.unary.f32(i32 7, float %7014)  ; Saturate(value)
  %7016 = extractvalue %dx.types.CBufRet.f32 %7011, 2
  %7017 = extractvalue %dx.types.CBufRet.f32 %7011, 3
  %7018 = fadd fast float %7017, %7016
  %7019 = call float @dx.op.unary.f32(i32 7, float %7018)  ; Saturate(value)
  %7020 = fmul fast float %7015, %6999
  %7021 = fmul fast float %7020, %7019
  br label %7263

; <label>:7022                                    ; preds = %6976
  br i1 %6977, label %7023, label %7044

; <label>:7023                                    ; preds = %7022
  %7024 = call float @dx.op.binary.f32(i32 36, float %6973, float %6963)  ; FMin(a,b)
  %7025 = fsub fast float %6973, %7024
  %7026 = fsub fast float %7025, %6962
  %7027 = call float @dx.op.unary.f32(i32 6, float %7026)  ; FAbs(value)
  %7028 = fadd fast float %7025, %6962
  %7029 = fmul fast float %7028, %6893
  %7030 = fadd fast float %7029, %6906
  %7031 = fmul fast float %7030, %7027
  %7032 = fsub fast float %6968, %7031
  br label %7044

; <label>:7033                                    ; preds = %6961
  br i1 %6975, label %7034, label %7044

; <label>:7034                                    ; preds = %7033
  %7035 = call float @dx.op.binary.f32(i32 35, float %6963, float %6973)  ; FMax(a,b)
  %7036 = icmp eq i32 %6912, 0
  %7037 = select i1 %7036, float %6973, float 0.000000e+00
  %7038 = fsub fast float -0.000000e+00, %7037
  %7039 = call float @dx.op.unary.f32(i32 6, float %7038)  ; FAbs(value)
  %7040 = fmul fast float %7037, %6893
  %7041 = fadd fast float %7040, %6906
  %7042 = fmul fast float %7039, %7041
  %7043 = fsub fast float %6968, %7042
  br label %7044

; <label>:7044                                    ; preds = %7034, %7033, %7023, %7022
  %7045 = phi float [ %6963, %7022 ], [ %6963, %7023 ], [ %7035, %7034 ], [ %6963, %7033 ]
  %7046 = phi float [ 0.000000e+00, %7022 ], [ %7027, %7023 ], [ %7039, %7034 ], [ 0.000000e+00, %7033 ]
  %7047 = phi float [ %6968, %7022 ], [ %7032, %7023 ], [ %7043, %7034 ], [ %6968, %7033 ]
  %7048 = phi float [ %6973, %7022 ], [ %6973, %7023 ], [ %6962, %7034 ], [ %6962, %7033 ]
  %7049 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %7049, align 4, !tbaa !135, !noalias !149
  %7050 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %7050, align 4, !tbaa !135, !noalias !149
  %7051 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %7051, align 4, !tbaa !135, !noalias !149
  %7052 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 0
  store float -1.000000e+00, float* %7052, align 4, !tbaa !135, !noalias !149
  %7053 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 1
  store float -1.000000e+00, float* %7053, align 4, !tbaa !135, !noalias !149
  %7054 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 2
  store float -1.000000e+00, float* %7054, align 4, !tbaa !135, !noalias !149
  %7055 = icmp sgt i32 %6914, 0
  br i1 %7055, label %7056, label %7117

; <label>:7056                                    ; preds = %7044
  br label %7057

; <label>:7057                                    ; preds = %7106, %7056
  %7058 = phi i32 [ %7107, %7106 ], [ 0, %7056 ]
  %7059 = phi i32 [ %7108, %7106 ], [ 0, %7056 ]
  %7060 = add nuw i32 %7059, 171
  %7061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %7060)  ; CBufferLoadLegacy(handle,regIndex)
  %7062 = extractvalue %dx.types.CBufRet.f32 %7061, 0
  %7063 = extractvalue %dx.types.CBufRet.f32 %7061, 1
  %7064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7065 = extractvalue %dx.types.CBufRet.f32 %7064, 0
  %7066 = extractvalue %dx.types.CBufRet.f32 %7064, 1
  %7067 = fsub fast float %7062, %7065
  %7068 = fsub fast float %7063, %7066
  %7069 = extractvalue %dx.types.CBufRet.f32 %7061, 2
  %7070 = fsub fast float -0.000000e+00, %7067
  %7071 = fsub fast float -0.000000e+00, %7068
  %7072 = call float @dx.op.dot2.f32(i32 54, float %6891, float %6892, float %7070, float %7071)  ; Dot2(ax,ay,bx,by)
  %7073 = fmul fast float %7072, 2.000000e+00
  %7074 = call float @dx.op.dot2.f32(i32 54, float %7070, float %7071, float %7070, float %7071)  ; Dot2(ax,ay,bx,by)
  %7075 = fmul fast float %7069, %7069
  %7076 = fsub fast float %7074, %7075
  %7077 = fmul fast float %7073, %7073
  %7078 = fmul fast float %6934, %7076
  %7079 = fsub fast float %7077, %7078
  %7080 = fcmp fast ogt float %7079, 0.000000e+00
  br i1 %7080, label %7081, label %7096

; <label>:7081                                    ; preds = %7057
  %7082 = fcmp fast ogt float %7073, 0.000000e+00
  %7083 = call float @dx.op.unary.f32(i32 24, float %7079)  ; Sqrt(value)
  %7084 = fsub fast float -0.000000e+00, %7083
  %7085 = select i1 %7082, float %7083, float %7084
  %7086 = fadd fast float %7085, %7073
  %7087 = fmul float %7086, -5.000000e-01
  %7088 = fdiv fast float %7087, %6927
  %7089 = call float @dx.op.binary.f32(i32 35, float %7088, float 0.000000e+00)  ; FMax(a,b)
  %7090 = call float @dx.op.binary.f32(i32 36, float %6962, float %7089)  ; FMin(a,b)
  %7091 = fdiv fast float %7076, %7087
  %7092 = call float @dx.op.binary.f32(i32 35, float %7091, float 0.000000e+00)  ; FMax(a,b)
  %7093 = call float @dx.op.binary.f32(i32 36, float %6962, float %7092)  ; FMin(a,b)
  %7094 = call float @dx.op.binary.f32(i32 36, float %7090, float %7093)  ; FMin(a,b)
  %7095 = call float @dx.op.binary.f32(i32 35, float %7090, float %7093)  ; FMax(a,b)
  br label %7096

; <label>:7096                                    ; preds = %7081, %7057
  %7097 = phi float [ %7095, %7081 ], [ -1.000000e+00, %7057 ]
  %7098 = phi float [ %7094, %7081 ], [ -1.000000e+00, %7057 ]
  %7099 = phi i1 [ true, %7081 ], [ false, %7057 ]
  br i1 %7099, label %7100, label %7106

; <label>:7100                                    ; preds = %7096
  %7101 = call float @dx.op.binary.f32(i32 35, float %7045, float %7098)  ; FMax(a,b)
  %7102 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %7059
  store float %7101, float* %7102, align 4, !tbaa !135, !noalias !149
  %7103 = call float @dx.op.binary.f32(i32 35, float %7045, float %7097)  ; FMax(a,b)
  %7104 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %7059
  store float %7103, float* %7104, align 4, !tbaa !135, !noalias !149
  %7105 = add nsw i32 %7058, 1
  br label %7106

; <label>:7106                                    ; preds = %7100, %7096
  %7107 = phi i32 [ %7105, %7100 ], [ %7058, %7096 ]
  %7108 = add nuw nsw i32 %7059, 1
  %7109 = icmp eq i32 %7108, %6914
  br i1 %7109, label %7110, label %7057

; <label>:7110                                    ; preds = %7106
  %7111 = load float, float* %7051, align 4, !tbaa !135, !alias.scope !165, !noalias !168
  %7112 = load float, float* %7050, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  %7113 = load float, float* %7049, align 4, !tbaa !135, !alias.scope !173, !noalias !174
  %7114 = load float, float* %7054, align 4, !tbaa !135, !alias.scope !175, !noalias !178
  %7115 = load float, float* %7053, align 4, !tbaa !135, !alias.scope !181, !noalias !182
  %7116 = load float, float* %7052, align 4, !tbaa !135, !alias.scope !183, !noalias !184
  br label %7117

; <label>:7117                                    ; preds = %7110, %7044
  %7118 = phi float [ -1.000000e+00, %7044 ], [ %7116, %7110 ]
  %7119 = phi float [ -1.000000e+00, %7044 ], [ %7115, %7110 ]
  %7120 = phi float [ -1.000000e+00, %7044 ], [ %7114, %7110 ]
  %7121 = phi float [ -1.000000e+00, %7044 ], [ %7113, %7110 ]
  %7122 = phi float [ -1.000000e+00, %7044 ], [ %7112, %7110 ]
  %7123 = phi float [ -1.000000e+00, %7044 ], [ %7111, %7110 ]
  %7124 = phi i32 [ 0, %7044 ], [ %7107, %7110 ]
  %7125 = call float @dx.op.binary.f32(i32 36, float %7122, float %7123)  ; FMin(a,b)
  %7126 = call float @dx.op.binary.f32(i32 36, float %7121, float %7125)  ; FMin(a,b)
  %7127 = call float @dx.op.binary.f32(i32 35, float %7121, float %7122)  ; FMax(a,b)
  %7128 = call float @dx.op.binary.f32(i32 36, float %7127, float %7123)  ; FMin(a,b)
  %7129 = call float @dx.op.binary.f32(i32 36, float %7121, float %7122)  ; FMin(a,b)
  %7130 = call float @dx.op.binary.f32(i32 35, float %7129, float %7128)  ; FMax(a,b)
  %7131 = call float @dx.op.binary.f32(i32 35, float %7122, float %7123)  ; FMax(a,b)
  %7132 = call float @dx.op.binary.f32(i32 35, float %7121, float %7131)  ; FMax(a,b)
  store float %7126, float* %7049, align 4, !tbaa !135, !alias.scope !173, !noalias !174
  store float %7130, float* %7050, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  store float %7132, float* %7051, align 4, !tbaa !135, !alias.scope !165, !noalias !168
  %7133 = call float @dx.op.binary.f32(i32 36, float %7119, float %7120)  ; FMin(a,b)
  %7134 = call float @dx.op.binary.f32(i32 36, float %7118, float %7133)  ; FMin(a,b)
  %7135 = call float @dx.op.binary.f32(i32 35, float %7118, float %7119)  ; FMax(a,b)
  %7136 = call float @dx.op.binary.f32(i32 36, float %7135, float %7120)  ; FMin(a,b)
  %7137 = call float @dx.op.binary.f32(i32 36, float %7118, float %7119)  ; FMin(a,b)
  %7138 = call float @dx.op.binary.f32(i32 35, float %7137, float %7136)  ; FMax(a,b)
  %7139 = call float @dx.op.binary.f32(i32 35, float %7119, float %7120)  ; FMax(a,b)
  %7140 = call float @dx.op.binary.f32(i32 35, float %7118, float %7139)  ; FMax(a,b)
  store float %7134, float* %7052, align 4, !tbaa !135, !alias.scope !183, !noalias !184
  store float %7138, float* %7053, align 4, !tbaa !135, !alias.scope !181, !noalias !182
  store float %7140, float* %7054, align 4, !tbaa !135, !alias.scope !175, !noalias !178
  %7141 = sub nsw i32 3, %7124
  %7142 = icmp sgt i32 %7141, 2
  br i1 %7142, label %7143, label %7181

; <label>:7143                                    ; preds = %7117
  %7144 = icmp eq i32 %6912, 0
  %7145 = fsub fast float %6962, %7046
  %7146 = select i1 %7144, float %7145, float %7046
  %7147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7148 = extractvalue %dx.types.CBufRet.f32 %7147, 0
  %7149 = extractvalue %dx.types.CBufRet.f32 %7147, 1
  %7150 = extractvalue %dx.types.CBufRet.f32 %7147, 2
  %7151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7152 = extractvalue %dx.types.CBufRet.f32 %7151, 0
  %7153 = extractvalue %dx.types.CBufRet.f32 %7151, 1
  %7154 = extractvalue %dx.types.CBufRet.f32 %7151, 2
  %7155 = extractvalue %dx.types.CBufRet.f32 %7151, 3
  %7156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7157 = extractvalue %dx.types.CBufRet.f32 %7156, 3
  %7158 = call float @dx.op.binary.f32(i32 36, float %7047, float %7157)  ; FMin(a,b)
  %7159 = fmul fast float %7155, %7146
  %7160 = call float @dx.op.unary.f32(i32 7, float %7159)  ; Saturate(value)
  %7161 = fsub fast float %7152, %7148
  %7162 = fsub fast float %7153, %7149
  %7163 = fsub fast float %7154, %7150
  %7164 = fmul fast float %7160, %7161
  %7165 = fmul fast float %7160, %7162
  %7166 = fmul fast float %7160, %7163
  %7167 = fadd fast float %7164, %7148
  %7168 = fadd fast float %7165, %7149
  %7169 = fadd fast float %7166, %7150
  %7170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7171 = extractvalue %dx.types.CBufRet.f32 %7170, 0
  %7172 = extractvalue %dx.types.CBufRet.f32 %7170, 1
  %7173 = fadd fast float %7172, %7171
  %7174 = call float @dx.op.unary.f32(i32 7, float %7173)  ; Saturate(value)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7170, 2
  %7176 = extractvalue %dx.types.CBufRet.f32 %7170, 3
  %7177 = fadd fast float %7176, %7175
  %7178 = call float @dx.op.unary.f32(i32 7, float %7177)  ; Saturate(value)
  %7179 = fmul fast float %7174, %7158
  %7180 = fmul fast float %7179, %7178
  br label %7263

; <label>:7181                                    ; preds = %7117
  %7182 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %7141
  %7183 = load float, float* %7182, align 4, !tbaa !135, !noalias !149
  %7184 = fcmp fast olt float %7183, %7048
  %7185 = icmp sgt i32 %7124, 0
  %7186 = and i1 %7185, %7184
  br i1 %7186, label %7187, label %7224

; <label>:7187                                    ; preds = %7181
  br label %7188

; <label>:7188                                    ; preds = %7217, %7187
  %7189 = phi float [ %7218, %7217 ], [ %7046, %7187 ]
  %7190 = phi float [ %7219, %7217 ], [ %7047, %7187 ]
  %7191 = phi float [ %7199, %7217 ], [ %7183, %7187 ]
  %7192 = phi i32 [ %7196, %7217 ], [ %7141, %7187 ]
  %7193 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %7192
  %7194 = load float, float* %7193, align 4, !tbaa !135, !noalias !149
  %7195 = icmp slt i32 %7192, 2
  %7196 = add nsw i32 %7192, 1
  %7197 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %7196
  %7198 = load float, float* %7197, align 4, !tbaa !135, !noalias !149
  %7199 = select i1 %7195, float %7198, float %6962
  %7200 = call float @dx.op.binary.f32(i32 36, float %7199, float %7194)  ; FMin(a,b)
  %7201 = call float @dx.op.binary.f32(i32 36, float %7048, float %7200)  ; FMin(a,b)
  %7202 = icmp eq i32 %6912, 0
  %7203 = fadd fast float %7201, %7191
  %7204 = fmul fast float %7203, %6893
  %7205 = fadd fast float %7204, %6906
  br i1 %7202, label %7211, label %7206

; <label>:7206                                    ; preds = %7188
  %7207 = fsub fast float %7201, %7191
  %7208 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7207)  ; FMax(a,b)
  %7209 = fmul fast float %7208, %7205
  %7210 = fadd fast float %7209, %7190
  br label %7217

; <label>:7211                                    ; preds = %7188
  %7212 = fsub fast float %7191, %7201
  %7213 = call float @dx.op.unary.f32(i32 6, float %7212)  ; FAbs(value)
  %7214 = fadd fast float %7213, %7189
  %7215 = fmul fast float %7213, %7205
  %7216 = fsub fast float %7190, %7215
  br label %7217

; <label>:7217                                    ; preds = %7211, %7206
  %7218 = phi float [ %7208, %7206 ], [ %7214, %7211 ]
  %7219 = phi float [ %7210, %7206 ], [ %7216, %7211 ]
  %7220 = fcmp fast olt float %7199, %7048
  %7221 = icmp slt i32 %7196, 3
  %7222 = and i1 %7221, %7220
  br i1 %7222, label %7188, label %7223

; <label>:7223                                    ; preds = %7217
  br label %7224

; <label>:7224                                    ; preds = %7223, %7181
  %7225 = phi float [ %7046, %7181 ], [ %7218, %7223 ]
  %7226 = phi float [ %7047, %7181 ], [ %7219, %7223 ]
  %7227 = fsub fast float %6962, %7225
  %7228 = select i1 %6964, float %7225, float %7227
  %7229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7230 = extractvalue %dx.types.CBufRet.f32 %7229, 0
  %7231 = extractvalue %dx.types.CBufRet.f32 %7229, 1
  %7232 = extractvalue %dx.types.CBufRet.f32 %7229, 2
  %7233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7234 = extractvalue %dx.types.CBufRet.f32 %7233, 0
  %7235 = extractvalue %dx.types.CBufRet.f32 %7233, 1
  %7236 = extractvalue %dx.types.CBufRet.f32 %7233, 2
  %7237 = extractvalue %dx.types.CBufRet.f32 %7233, 3
  %7238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7239 = extractvalue %dx.types.CBufRet.f32 %7238, 3
  %7240 = call float @dx.op.binary.f32(i32 36, float %7226, float %7239)  ; FMin(a,b)
  %7241 = fmul fast float %7237, %7228
  %7242 = call float @dx.op.unary.f32(i32 7, float %7241)  ; Saturate(value)
  %7243 = fsub fast float %7234, %7230
  %7244 = fsub fast float %7235, %7231
  %7245 = fsub fast float %7236, %7232
  %7246 = fmul fast float %7242, %7243
  %7247 = fmul fast float %7242, %7244
  %7248 = fmul fast float %7242, %7245
  %7249 = fadd fast float %7246, %7230
  %7250 = fadd fast float %7247, %7231
  %7251 = fadd fast float %7248, %7232
  %7252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7253 = extractvalue %dx.types.CBufRet.f32 %7252, 0
  %7254 = extractvalue %dx.types.CBufRet.f32 %7252, 1
  %7255 = fadd fast float %7254, %7253
  %7256 = call float @dx.op.unary.f32(i32 7, float %7255)  ; Saturate(value)
  %7257 = extractvalue %dx.types.CBufRet.f32 %7252, 2
  %7258 = extractvalue %dx.types.CBufRet.f32 %7252, 3
  %7259 = fadd fast float %7258, %7257
  %7260 = call float @dx.op.unary.f32(i32 7, float %7259)  ; Saturate(value)
  %7261 = fmul fast float %7256, %7240
  %7262 = fmul fast float %7261, %7260
  br label %7263

; <label>:7263                                    ; preds = %7224, %7143, %6978, %6960, %6958
  %7264 = phi float [ %6987, %6978 ], [ %7146, %7143 ], [ %7228, %7224 ], [ 0.000000e+00, %6958 ], [ 0.000000e+00, %6960 ]
  %7265 = phi float [ %7021, %6978 ], [ %7180, %7143 ], [ %7262, %7224 ], [ 0.000000e+00, %6958 ], [ 0.000000e+00, %6960 ]
  %7266 = phi float [ %7008, %6978 ], [ %7167, %7143 ], [ %7249, %7224 ], [ 0.000000e+00, %6958 ], [ 0.000000e+00, %6960 ]
  %7267 = phi float [ %7009, %6978 ], [ %7168, %7143 ], [ %7250, %7224 ], [ 0.000000e+00, %6958 ], [ 0.000000e+00, %6960 ]
  %7268 = phi float [ %7010, %6978 ], [ %7169, %7143 ], [ %7251, %7224 ], [ 0.000000e+00, %6958 ], [ 0.000000e+00, %6960 ]
  %7269 = fmul fast float %6901, %7265
  %7270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7271 = extractvalue %dx.types.CBufRet.f32 %7270, 2
  %7272 = fsub fast float %6908, %7271
  %7273 = fcmp fast olt float %7269, -2.000000e+01
  %7274 = call float @dx.op.unary.f32(i32 21, float %7269)  ; Exp(value)
  %7275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7276 = extractvalue %dx.types.CBufRet.f32 %7275, 2
  %7277 = extractvalue %dx.types.CBufRet.f32 %7275, 3
  %7278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7279 = extractvalue %dx.types.CBufRet.f32 %7278, 2
  %7280 = fmul fast float %7277, %7272
  %7281 = call float @dx.op.unary.f32(i32 7, float %7280)  ; Saturate(value)
  %7282 = fsub fast float 1.000000e+00, %7281
  %7283 = fmul fast float %6893, 5.000000e-01
  %7284 = fadd fast float %7283, 5.000000e-01
  %7285 = call float @dx.op.unary.f32(i32 7, float %7284)  ; Saturate(value)
  %7286 = fsub fast float 1.000000e+00, %7285
  %7287 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7282)  ; FMax(a,b)
  %7288 = fdiv fast float %7286, %7287
  %7289 = fsub fast float %7272, %6850
  %7290 = call float @dx.op.unary.f32(i32 6, float %7289)  ; FAbs(value)
  %7291 = fmul fast float %7290, %7276
  %7292 = call float @dx.op.unary.f32(i32 7, float %7288)  ; Saturate(value)
  %7293 = fsub fast float 1.000000e+00, %7291
  %7294 = fmul fast float %7293, %7292
  %7295 = fadd fast float %7294, %7291
  %7296 = fmul fast float %7279, %7272
  %7297 = call float @dx.op.unary.f32(i32 7, float %7296)  ; Saturate(value)
  %7298 = fsub fast float 1.000000e+00, %7295
  %7299 = fmul fast float %7298, %7297
  %7300 = fadd fast float %7299, %7295
  %7301 = call float @dx.op.unary.f32(i32 7, float %7300)  ; Saturate(value)
  %7302 = fadd fast float %7274, -1.000000e+00
  %7303 = select i1 %7273, float -1.000000e+00, float %7302
  %7304 = fmul fast float %7301, %7303
  %7305 = fadd fast float %7304, 1.000000e+00
  %7306 = fsub fast float -0.000000e+00, %7304
  %7307 = fmul fast float %7266, %7306
  %7308 = fmul fast float %7267, %7306
  %7309 = fmul fast float %7268, %7306
  br label %7310

; <label>:7310                                    ; preds = %7263, %6859
  %7311 = phi float [ %7264, %7263 ], [ 0.000000e+00, %6859 ]
  %7312 = phi float [ %7305, %7263 ], [ 1.000000e+00, %6859 ]
  %7313 = phi float [ %7307, %7263 ], [ 0.000000e+00, %6859 ]
  %7314 = phi float [ %7308, %7263 ], [ 0.000000e+00, %6859 ]
  %7315 = phi float [ %7309, %7263 ], [ 0.000000e+00, %6859 ]
  %7316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7317 = extractvalue %dx.types.CBufRet.f32 %7316, 1
  %7318 = fsub fast float 1.000000e+00, %7312
  %7319 = fmul fast float %7318, %6894
  %7320 = fmul fast float %7319, %7317
  %7321 = fsub fast float %6894, %7320
  br i1 %6887, label %7322, label %7351, !dx.controlflow.hints !185

; <label>:7322                                    ; preds = %7310
  %7323 = fmul fast float %6895, %6884
  %7324 = fadd fast float %7323, %6885
  %7325 = call float @dx.op.unary.f32(i32 7, float %7324)  ; Saturate(value)
  %7326 = fmul fast float %6866, %7321
  %7327 = fsub fast float -0.000000e+00, %7326
  %7328 = fmul fast float %6867, %7321
  %7329 = fsub fast float -0.000000e+00, %7328
  %7330 = call float @dx.op.unary.f32(i32 21, float %7327)  ; Exp(value)
  %7331 = call float @dx.op.unary.f32(i32 21, float %7329)  ; Exp(value)
  %7332 = call float @dx.op.binary.f32(i32 35, float %6874, float %7330)  ; FMax(a,b)
  %7333 = call float @dx.op.binary.f32(i32 35, float %6874, float %7331)  ; FMax(a,b)
  %7334 = fsub fast float %7333, %7332
  %7335 = fmul fast float %7334, %7325
  %7336 = fadd fast float %7335, %7332
  %7337 = call float @dx.op.unary.f32(i32 7, float %7336)  ; Saturate(value)
  %7338 = fsub fast float %6871, %6876
  %7339 = fsub fast float %6872, %6877
  %7340 = fsub fast float %6873, %6878
  %7341 = fmul fast float %7325, %7338
  %7342 = fmul fast float %7325, %7339
  %7343 = fmul fast float %7325, %7340
  %7344 = fadd fast float %7341, %6876
  %7345 = fadd fast float %7342, %6877
  %7346 = fadd fast float %7343, %6878
  %7347 = fsub fast float 1.000000e+00, %7337
  %7348 = fmul fast float %7347, %7344
  %7349 = fmul fast float %7347, %7345
  %7350 = fmul fast float %7347, %7346
  br label %7410

; <label>:7351                                    ; preds = %7310
  %7352 = fmul fast float %7321, %6883
  %7353 = call float @dx.op.unary.f32(i32 7, float %7352)  ; Saturate(value)
  %7354 = fsub fast float 2.000000e+00, %7353
  %7355 = fmul fast float %7353, 9.921875e-01
  %7356 = fmul fast float %7355, %7354
  %7357 = fadd fast float %7356, 3.906250e-03
  %7358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %64, float %7357, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7359 = extractvalue %dx.types.ResRet.f32 %7358, 0
  %7360 = fsub fast float %7353, %7359
  %7361 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7360)  ; FMax(a,b)
  %7362 = fmul fast float %6869, %6850
  %7363 = call float @dx.op.unary.f32(i32 6, float %7362)  ; FAbs(value)
  %7364 = fcmp fast ogt float %7363, 0x3EB0C6F7A0000000
  br i1 %7364, label %7365, label %7371, !dx.controlflow.hints !186

; <label>:7365                                    ; preds = %7351
  %7366 = fmul fast float %7362, 0xBFF7154760000000
  %7367 = call float @dx.op.unary.f32(i32 21, float %7366)  ; Exp(value)
  %7368 = fsub fast float 1.000000e+00, %7367
  %7369 = fdiv fast float %7368, %7362
  %7370 = fmul fast float %7369, %6879
  br label %7371

; <label>:7371                                    ; preds = %7365, %7351
  %7372 = phi float [ %7370, %7365 ], [ %6879, %7351 ]
  %7373 = fadd fast float %7372, %6881
  %7374 = fmul fast float %7373, %7361
  %7375 = fmul fast float %6866, %7374
  %7376 = fsub fast float -0.000000e+00, %7375
  %7377 = fmul fast float %6867, %7374
  %7378 = fsub fast float -0.000000e+00, %7377
  %7379 = fmul fast float %6868, %7374
  %7380 = fsub fast float -0.000000e+00, %7379
  %7381 = call float @dx.op.unary.f32(i32 21, float %7376)  ; Exp(value)
  %7382 = call float @dx.op.unary.f32(i32 21, float %7378)  ; Exp(value)
  %7383 = call float @dx.op.unary.f32(i32 21, float %7380)  ; Exp(value)
  %7384 = fmul fast float %6895, %6895
  %7385 = fadd fast float %7384, 1.000000e+00
  %7386 = fmul fast float %7385, 0x3FAE8EC8A0000000
  %7387 = fmul fast float %7386, %6876
  %7388 = fmul fast float %7386, %6877
  %7389 = fmul fast float %7386, %6878
  %7390 = fmul fast float %6895, %6874
  %7391 = fsub fast float 1.000000e+00, %7390
  %7392 = fmul fast float %6874, %6874
  %7393 = fsub fast float 1.000000e+00, %7392
  %7394 = fmul fast float %7393, 0x3FB45F3060000000
  %7395 = fmul fast float %7391, %7391
  %7396 = fdiv fast float 1.000000e+00, %7395
  %7397 = fmul fast float %7394, %7396
  %7398 = fmul fast float %7397, %6871
  %7399 = fmul fast float %7397, %6872
  %7400 = fmul fast float %7397, %6873
  %7401 = fadd fast float %7398, %7387
  %7402 = fadd fast float %7399, %7388
  %7403 = fadd fast float %7400, %7389
  %7404 = fsub fast float 1.000000e+00, %7381
  %7405 = fsub fast float 1.000000e+00, %7382
  %7406 = fsub fast float 1.000000e+00, %7383
  %7407 = fmul fast float %7401, %7404
  %7408 = fmul fast float %7402, %7405
  %7409 = fmul fast float %7403, %7406
  br label %7410

; <label>:7410                                    ; preds = %7371, %7322
  %7411 = phi float [ %7348, %7322 ], [ %7407, %7371 ]
  %7412 = phi float [ %7349, %7322 ], [ %7408, %7371 ]
  %7413 = phi float [ %7350, %7322 ], [ %7409, %7371 ]
  %7414 = phi float [ %7337, %7322 ], [ %7381, %7371 ]
  %7415 = phi float [ %7337, %7322 ], [ %7382, %7371 ]
  %7416 = phi float [ %7337, %7322 ], [ %7383, %7371 ]
  br i1 %6903, label %7417, label %7615, !dx.controlflow.hints !187

; <label>:7417                                    ; preds = %7410
  %7418 = extractvalue %dx.types.CBufRet.f32 %7316, 0
  %7419 = fmul fast float %7418, %7318
  %7420 = fsub fast float %7313, %7411
  %7421 = fsub fast float %7314, %7412
  %7422 = fsub fast float %7315, %7413
  %7423 = fmul fast float %7419, %7420
  %7424 = fmul fast float %7419, %7421
  %7425 = fmul fast float %7419, %7422
  %7426 = fadd fast float %7423, %7411
  %7427 = fadd fast float %7424, %7412
  %7428 = fadd fast float %7425, %7413
  %7429 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7414)  ; FMax(a,b)
  %7430 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7415)  ; FMax(a,b)
  %7431 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7416)  ; FMax(a,b)
  %7432 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7312)  ; FMax(a,b)
  %7433 = call float @dx.op.binary.f32(i32 35, float %7311, float %7321)  ; FMax(a,b)
  %7434 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7433)  ; FMax(a,b)
  %7435 = fdiv fast float %7311, %7434
  %7436 = call float @dx.op.unary.f32(i32 7, float %7435)  ; Saturate(value)
  %7437 = fdiv fast float %7321, %7434
  %7438 = call float @dx.op.unary.f32(i32 7, float %7437)  ; Saturate(value)
  %7439 = fcmp fast une float %7432, 1.000000e+00
  br i1 %7439, label %7440, label %7453, !dx.controlflow.hints !188

; <label>:7440                                    ; preds = %7417
  %7441 = call float @dx.op.unary.f32(i32 23, float %7432)  ; Log(value)
  %7442 = fmul fast float %7441, 0x3FE62E4300000000
  %7443 = fmul fast float %7313, %7442
  %7444 = fsub fast float -0.000000e+00, %7443
  %7445 = fmul fast float %7314, %7442
  %7446 = fsub fast float -0.000000e+00, %7445
  %7447 = fmul fast float %7315, %7442
  %7448 = fsub fast float -0.000000e+00, %7447
  %7449 = fsub fast float 1.000000e+00, %7432
  %7450 = fdiv fast float %7444, %7449
  %7451 = fdiv fast float %7446, %7449
  %7452 = fdiv fast float %7448, %7449
  br label %7453

; <label>:7453                                    ; preds = %7440, %7417
  %7454 = phi float [ %7450, %7440 ], [ %7313, %7417 ]
  %7455 = phi float [ %7451, %7440 ], [ %7314, %7417 ]
  %7456 = phi float [ %7452, %7440 ], [ %7315, %7417 ]
  %7457 = phi float [ %7442, %7440 ], [ 0.000000e+00, %7417 ]
  %7458 = fcmp fast une float %7429, 1.000000e+00
  br i1 %7458, label %7459, label %7466, !dx.controlflow.hints !189

; <label>:7459                                    ; preds = %7453
  %7460 = call float @dx.op.unary.f32(i32 23, float %7429)  ; Log(value)
  %7461 = fmul fast float %7460, 0x3FE62E4300000000
  %7462 = fmul fast float %7426, %7461
  %7463 = fsub fast float -0.000000e+00, %7462
  %7464 = fsub fast float 1.000000e+00, %7429
  %7465 = fdiv fast float %7463, %7464
  br label %7466

; <label>:7466                                    ; preds = %7459, %7453
  %7467 = phi float [ %7465, %7459 ], [ %7426, %7453 ]
  %7468 = phi float [ %7461, %7459 ], [ 0.000000e+00, %7453 ]
  %7469 = fcmp fast une float %7430, 1.000000e+00
  br i1 %7469, label %7470, label %7477, !dx.controlflow.hints !189

; <label>:7470                                    ; preds = %7466
  %7471 = call float @dx.op.unary.f32(i32 23, float %7430)  ; Log(value)
  %7472 = fmul fast float %7471, 0x3FE62E4300000000
  %7473 = fmul fast float %7427, %7472
  %7474 = fsub fast float -0.000000e+00, %7473
  %7475 = fsub fast float 1.000000e+00, %7430
  %7476 = fdiv fast float %7474, %7475
  br label %7477

; <label>:7477                                    ; preds = %7470, %7466
  %7478 = phi float [ %7476, %7470 ], [ %7427, %7466 ]
  %7479 = phi float [ %7472, %7470 ], [ 0.000000e+00, %7466 ]
  %7480 = fcmp fast une float %7431, 1.000000e+00
  br i1 %7480, label %7481, label %7488, !dx.controlflow.hints !189

; <label>:7481                                    ; preds = %7477
  %7482 = call float @dx.op.unary.f32(i32 23, float %7431)  ; Log(value)
  %7483 = fmul fast float %7482, 0x3FE62E4300000000
  %7484 = fmul fast float %7428, %7483
  %7485 = fsub fast float -0.000000e+00, %7484
  %7486 = fsub fast float 1.000000e+00, %7431
  %7487 = fdiv fast float %7485, %7486
  br label %7488

; <label>:7488                                    ; preds = %7481, %7477
  %7489 = phi float [ %7487, %7481 ], [ %7428, %7477 ]
  %7490 = phi float [ %7483, %7481 ], [ 0.000000e+00, %7477 ]
  %7491 = fmul fast float %7454, %7438
  %7492 = fmul fast float %7455, %7438
  %7493 = fmul fast float %7456, %7438
  %7494 = fmul fast float %7457, %7438
  %7495 = fmul fast float %7467, %7436
  %7496 = fmul fast float %7478, %7436
  %7497 = fmul fast float %7489, %7436
  %7498 = fmul fast float %7468, %7436
  %7499 = fmul fast float %7479, %7436
  %7500 = fmul fast float %7490, %7436
  %7501 = fadd fast float %7495, %7491
  %7502 = fadd fast float %7496, %7492
  %7503 = fadd fast float %7497, %7493
  %7504 = fadd fast float %7498, %7494
  %7505 = fadd fast float %7499, %7494
  %7506 = fadd fast float %7500, %7494
  %7507 = fcmp fast une float %7504, 0.000000e+00
  br i1 %7507, label %7508, label %7515, !dx.controlflow.hints !190

; <label>:7508                                    ; preds = %7488
  %7509 = fmul fast float %7504, 0x3FF7154760000000
  %7510 = call float @dx.op.unary.f32(i32 21, float %7509)  ; Exp(value)
  %7511 = fsub fast float 1.000000e+00, %7510
  %7512 = fmul fast float %7501, %7511
  %7513 = fsub fast float -0.000000e+00, %7512
  %7514 = fdiv fast float %7513, %7504
  br label %7515

; <label>:7515                                    ; preds = %7508, %7488
  %7516 = phi float [ %7510, %7508 ], [ 1.000000e+00, %7488 ]
  %7517 = phi float [ %7514, %7508 ], [ %7501, %7488 ]
  %7518 = fcmp fast une float %7505, 0.000000e+00
  br i1 %7518, label %7519, label %7526, !dx.controlflow.hints !190

; <label>:7519                                    ; preds = %7515
  %7520 = fmul fast float %7505, 0x3FF7154760000000
  %7521 = call float @dx.op.unary.f32(i32 21, float %7520)  ; Exp(value)
  %7522 = fsub fast float 1.000000e+00, %7521
  %7523 = fmul fast float %7502, %7522
  %7524 = fsub fast float -0.000000e+00, %7523
  %7525 = fdiv fast float %7524, %7505
  br label %7526

; <label>:7526                                    ; preds = %7519, %7515
  %7527 = phi float [ %7521, %7519 ], [ 1.000000e+00, %7515 ]
  %7528 = phi float [ %7525, %7519 ], [ %7502, %7515 ]
  %7529 = fcmp fast une float %7506, 0.000000e+00
  br i1 %7529, label %7530, label %7537, !dx.controlflow.hints !190

; <label>:7530                                    ; preds = %7526
  %7531 = fmul fast float %7506, 0x3FF7154760000000
  %7532 = call float @dx.op.unary.f32(i32 21, float %7531)  ; Exp(value)
  %7533 = fsub fast float 1.000000e+00, %7532
  %7534 = fmul fast float %7503, %7533
  %7535 = fsub fast float -0.000000e+00, %7534
  %7536 = fdiv fast float %7535, %7506
  br label %7537

; <label>:7537                                    ; preds = %7530, %7526
  %7538 = phi float [ %7532, %7530 ], [ 1.000000e+00, %7526 ]
  %7539 = phi float [ %7536, %7530 ], [ %7503, %7526 ]
  %7540 = fcmp fast ogt float %7436, %7438
  br i1 %7540, label %7541, label %7561

; <label>:7541                                    ; preds = %7537
  %7542 = fsub fast float 1.000000e+00, %7438
  %7543 = fmul fast float %7454, %7542
  %7544 = fmul fast float %7455, %7542
  %7545 = fmul fast float %7456, %7542
  %7546 = fmul fast float %7457, %7542
  %7547 = fcmp fast une float %7546, 0.000000e+00
  br i1 %7547, label %7548, label %7599, !dx.controlflow.hints !191

; <label>:7548                                    ; preds = %7541
  %7549 = fmul fast float %7546, 0x3FF7154760000000
  %7550 = call float @dx.op.unary.f32(i32 21, float %7549)  ; Exp(value)
  %7551 = fsub fast float 1.000000e+00, %7550
  %7552 = fmul fast float %7543, %7551
  %7553 = fsub fast float -0.000000e+00, %7552
  %7554 = fmul fast float %7544, %7551
  %7555 = fsub fast float -0.000000e+00, %7554
  %7556 = fmul fast float %7545, %7551
  %7557 = fsub fast float -0.000000e+00, %7556
  %7558 = fdiv fast float %7553, %7546
  %7559 = fdiv fast float %7555, %7546
  %7560 = fdiv fast float %7557, %7546
  br label %7599

; <label>:7561                                    ; preds = %7537
  %7562 = fsub fast float 1.000000e+00, %7436
  %7563 = fmul fast float %7467, %7562
  %7564 = fmul fast float %7478, %7562
  %7565 = fmul fast float %7489, %7562
  %7566 = fmul fast float %7468, %7562
  %7567 = fmul fast float %7479, %7562
  %7568 = fmul fast float %7490, %7562
  %7569 = fcmp fast une float %7566, 0.000000e+00
  br i1 %7569, label %7570, label %7577, !dx.controlflow.hints !190

; <label>:7570                                    ; preds = %7561
  %7571 = fmul fast float %7566, 0x3FF7154760000000
  %7572 = call float @dx.op.unary.f32(i32 21, float %7571)  ; Exp(value)
  %7573 = fsub fast float 1.000000e+00, %7572
  %7574 = fmul fast float %7563, %7573
  %7575 = fsub fast float -0.000000e+00, %7574
  %7576 = fdiv fast float %7575, %7566
  br label %7577

; <label>:7577                                    ; preds = %7570, %7561
  %7578 = phi float [ %7576, %7570 ], [ %7563, %7561 ]
  %7579 = phi float [ %7572, %7570 ], [ 1.000000e+00, %7561 ]
  %7580 = fcmp fast une float %7567, 0.000000e+00
  br i1 %7580, label %7581, label %7588, !dx.controlflow.hints !190

; <label>:7581                                    ; preds = %7577
  %7582 = fmul fast float %7567, 0x3FF7154760000000
  %7583 = call float @dx.op.unary.f32(i32 21, float %7582)  ; Exp(value)
  %7584 = fsub fast float 1.000000e+00, %7583
  %7585 = fmul fast float %7564, %7584
  %7586 = fsub fast float -0.000000e+00, %7585
  %7587 = fdiv fast float %7586, %7567
  br label %7588

; <label>:7588                                    ; preds = %7581, %7577
  %7589 = phi float [ %7587, %7581 ], [ %7564, %7577 ]
  %7590 = phi float [ %7583, %7581 ], [ 1.000000e+00, %7577 ]
  %7591 = fcmp fast une float %7568, 0.000000e+00
  br i1 %7591, label %7592, label %7599, !dx.controlflow.hints !190

; <label>:7592                                    ; preds = %7588
  %7593 = fmul fast float %7568, 0x3FF7154760000000
  %7594 = call float @dx.op.unary.f32(i32 21, float %7593)  ; Exp(value)
  %7595 = fsub fast float 1.000000e+00, %7594
  %7596 = fmul fast float %7565, %7595
  %7597 = fsub fast float -0.000000e+00, %7596
  %7598 = fdiv fast float %7597, %7568
  br label %7599

; <label>:7599                                    ; preds = %7592, %7588, %7548, %7541
  %7600 = phi float [ %7598, %7592 ], [ %7560, %7548 ], [ %7545, %7541 ], [ %7565, %7588 ]
  %7601 = phi float [ %7589, %7592 ], [ %7559, %7548 ], [ %7544, %7541 ], [ %7589, %7588 ]
  %7602 = phi float [ %7578, %7592 ], [ %7558, %7548 ], [ %7543, %7541 ], [ %7578, %7588 ]
  %7603 = phi float [ %7594, %7592 ], [ %7550, %7548 ], [ 1.000000e+00, %7541 ], [ 1.000000e+00, %7588 ]
  %7604 = phi float [ %7590, %7592 ], [ %7550, %7548 ], [ 1.000000e+00, %7541 ], [ %7590, %7588 ]
  %7605 = phi float [ %7579, %7592 ], [ %7550, %7548 ], [ 1.000000e+00, %7541 ], [ %7579, %7588 ]
  %7606 = fmul fast float %7605, %7517
  %7607 = fmul fast float %7604, %7528
  %7608 = fmul fast float %7603, %7539
  %7609 = fadd fast float %7606, %7602
  %7610 = fadd fast float %7607, %7601
  %7611 = fadd fast float %7608, %7600
  %7612 = fmul fast float %7605, %7516
  %7613 = fmul fast float %7604, %7527
  %7614 = fmul fast float %7603, %7538
  br label %7615

; <label>:7615                                    ; preds = %7599, %7410
  %7616 = phi float [ %7614, %7599 ], [ %7416, %7410 ]
  %7617 = phi float [ %7613, %7599 ], [ %7415, %7410 ]
  %7618 = phi float [ %7612, %7599 ], [ %7414, %7410 ]
  %7619 = phi float [ %7611, %7599 ], [ %7413, %7410 ]
  %7620 = phi float [ %7610, %7599 ], [ %7412, %7410 ]
  %7621 = phi float [ %7609, %7599 ], [ %7411, %7410 ]
  %7622 = fmul fast float %7621, %6565
  %7623 = fmul fast float %7620, %6565
  %7624 = fmul fast float %7619, %6565
  %7625 = fmul fast float %7618, %6858
  %7626 = call float @dx.op.dot3.f32(i32 55, float %7618, float %7617, float %7616, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7627 = call float @dx.op.dot3.f32(i32 55, float %7622, float %7623, float %7624, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7628 = select i1 %248, float %7626, float %7618
  %7629 = select i1 %248, float %7626, float %7617
  %7630 = select i1 %248, float 1.000000e+00, float %7616
  %7631 = select i1 %248, float %7627, float %7622
  %7632 = select i1 %248, float 0.000000e+00, float %7623
  %7633 = select i1 %248, float 0.000000e+00, float %7624
  %7634 = fmul fast float %7628, %6852
  %7635 = fmul fast float %7629, %6853
  %7636 = fmul fast float %7630, %6854
  %7637 = fadd fast float %7634, %7631
  %7638 = fadd fast float %7635, %7632
  %7639 = fadd fast float %7633, %7636
  %7640 = fmul fast float %7628, %6855
  %7641 = fmul fast float %7629, %6856
  %7642 = fmul fast float %7630, %6857
  %7643 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7644 = extractvalue %dx.types.CBufRet.i32 %7643, 0
  %7645 = icmp eq i32 %7644, 0
  br i1 %7645, label %8013, label %7646, !dx.controlflow.hints !192

; <label>:7646                                    ; preds = %7615
  %7647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7648 = extractvalue %dx.types.CBufRet.f32 %7647, 2
  %7649 = extractvalue %dx.types.CBufRet.f32 %7647, 3
  %7650 = fmul fast float %7648, %102
  %7651 = fmul fast float %7649, %103
  %7652 = fmul fast float %7650, 2.000000e+00
  %7653 = fmul fast float %7651, 2.000000e+00
  %7654 = fsub fast float 1.000000e+00, %7652
  %7655 = fsub fast float 1.000000e+00, %7653
  %7656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7657 = extractvalue %dx.types.CBufRet.f32 %7656, 0
  %7658 = extractvalue %dx.types.CBufRet.f32 %7656, 1
  %7659 = extractvalue %dx.types.CBufRet.f32 %7656, 2
  %7660 = fmul fast float %7654, %7657
  %7661 = fmul fast float %7654, %7658
  %7662 = fmul fast float %7654, %7659
  %7663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7664 = extractvalue %dx.types.CBufRet.f32 %7663, 0
  %7665 = extractvalue %dx.types.CBufRet.f32 %7663, 1
  %7666 = extractvalue %dx.types.CBufRet.f32 %7663, 2
  %7667 = fmul fast float %7655, %7664
  %7668 = fmul fast float %7655, %7665
  %7669 = fmul fast float %7655, %7666
  %7670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7671 = extractvalue %dx.types.CBufRet.f32 %7670, 0
  %7672 = extractvalue %dx.types.CBufRet.f32 %7670, 1
  %7673 = extractvalue %dx.types.CBufRet.f32 %7670, 2
  %7674 = fadd fast float %7667, %7671
  %7675 = fadd fast float %7674, %7660
  %7676 = fadd fast float %7668, %7672
  %7677 = fadd fast float %7676, %7661
  %7678 = fadd fast float %7669, %7673
  %7679 = fadd fast float %7678, %7662
  %7680 = fmul fast float %7675, %6851
  %7681 = fmul fast float %7677, %6851
  %7682 = fmul fast float %7679, %6851
  %7683 = fmul fast float %7680, %7680
  %7684 = fmul fast float %7681, %7681
  %7685 = fadd fast float %7683, %7684
  %7686 = fmul fast float %7682, %7682
  %7687 = fadd fast float %7685, %7686
  %7688 = call float @dx.op.unary.f32(i32 24, float %7687)  ; Sqrt(value)
  %7689 = extractvalue %dx.types.CBufRet.f32 %6576, 0
  %7690 = fsub fast float %7688, %7689
  %7691 = extractvalue %dx.types.CBufRet.f32 %6576, 2
  %7692 = fmul fast float %7690, %7691
  %7693 = call float @dx.op.unary.f32(i32 7, float %7692)  ; Saturate(value)
  %7694 = fadd fast float %7693, -5.000000e-01
  %7695 = fmul fast float %7694, 2.000000e+00
  %7696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7697 = extractvalue %dx.types.CBufRet.f32 %7696, 2
  %7698 = call float @dx.op.binary.f32(i32 36, float %7697, float %7695)  ; FMin(a,b)
  %7699 = fsub fast float -0.000000e+00, %7697
  %7700 = fcmp fast ogt float %7698, %7699
  br i1 %7700, label %7701, label %8013, !dx.controlflow.hints !193

; <label>:7701                                    ; preds = %7646
  %7702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7703 = extractvalue %dx.types.CBufRet.f32 %7702, 3
  %7704 = fcmp fast ogt float %7703, 0.000000e+00
  br i1 %7704, label %7705, label %7780, !dx.controlflow.hints !194

; <label>:7705                                    ; preds = %7701
  %7706 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %7707 = extractvalue %dx.types.Dimensions %7706, 0
  %7708 = sitofp i32 %7707 to float
  %7709 = extractvalue %dx.types.Dimensions %7706, 1
  %7710 = sitofp i32 %7709 to float
  %7711 = fmul fast float %7650, %7708
  %7712 = fmul fast float %7651, %7710
  %7713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7714 = extractvalue %dx.types.CBufRet.f32 %7713, 1
  %7715 = fsub fast float -0.000000e+00, %7714
  %7716 = fptoui float %7715 to i32
  %7717 = fptoui float %7711 to i32
  %7718 = fptoui float %7712 to i32
  %7719 = and i32 %7716, 31
  %7720 = lshr i32 %7717, %7719
  %7721 = lshr i32 %7718, %7719
  %7722 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %7716, i32 %7720, i32 %7721, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7723 = extractvalue %dx.types.ResRet.f32 %7722, 0
  %7724 = fcmp fast olt float %7723, -1.000000e+00
  %7725 = fcmp fast ogt float %7723, -1.000000e+00
  %7726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7727 = extractvalue %dx.types.CBufRet.f32 %7726, 1
  %7728 = select i1 %7725, float %7727, float 1.000000e+00
  %7729 = fadd fast float %7723, 1.000000e+00
  %7730 = fmul fast float %7728, %7729
  %7731 = call float @dx.op.unary.f32(i32 6, float %7730)  ; FAbs(value)
  %7732 = extractvalue %dx.types.CBufRet.f32 %7726, 3
  %7733 = fcmp fast oge float %7731, %7732
  %7734 = select i1 %7733, float 0x4197782600000000, float %7731
  %7735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7736 = extractvalue %dx.types.CBufRet.f32 %7735, 0
  %7737 = extractvalue %dx.types.CBufRet.f32 %7735, 1
  %7738 = extractvalue %dx.types.CBufRet.f32 %7735, 2
  %7739 = select i1 %7724, float %7736, float %7657
  %7740 = select i1 %7724, float %7737, float %7658
  %7741 = select i1 %7724, float %7738, float %7659
  %7742 = fmul fast float %7739, %7654
  %7743 = fmul fast float %7740, %7654
  %7744 = fmul fast float %7741, %7654
  %7745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7746 = extractvalue %dx.types.CBufRet.f32 %7745, 0
  %7747 = extractvalue %dx.types.CBufRet.f32 %7745, 1
  %7748 = extractvalue %dx.types.CBufRet.f32 %7745, 2
  %7749 = select i1 %7724, float %7746, float %7664
  %7750 = select i1 %7724, float %7747, float %7665
  %7751 = select i1 %7724, float %7748, float %7666
  %7752 = fmul fast float %7749, %7655
  %7753 = fmul fast float %7750, %7655
  %7754 = fmul fast float %7751, %7655
  %7755 = fadd fast float %7752, %7742
  %7756 = fadd fast float %7753, %7743
  %7757 = fadd fast float %7754, %7744
  %7758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7759 = extractvalue %dx.types.CBufRet.f32 %7758, 0
  %7760 = extractvalue %dx.types.CBufRet.f32 %7758, 1
  %7761 = extractvalue %dx.types.CBufRet.f32 %7758, 2
  %7762 = select i1 %7724, float %7759, float %7671
  %7763 = select i1 %7724, float %7760, float %7672
  %7764 = select i1 %7724, float %7761, float %7673
  %7765 = fadd fast float %7755, %7762
  %7766 = fadd fast float %7756, %7763
  %7767 = fadd fast float %7757, %7764
  %7768 = fmul fast float %7765, %7734
  %7769 = fmul fast float %7766, %7734
  %7770 = fmul fast float %7767, %7734
  %7771 = fmul fast float %7768, %7768
  %7772 = fmul fast float %7769, %7769
  %7773 = fadd fast float %7771, %7772
  %7774 = fmul fast float %7770, %7770
  %7775 = fadd fast float %7773, %7774
  %7776 = call float @dx.op.unary.f32(i32 24, float %7775)  ; Sqrt(value)
  %7777 = fsub fast float %7776, %7689
  %7778 = fmul fast float %7777, %7691
  %7779 = call float @dx.op.unary.f32(i32 7, float %7778)  ; Saturate(value)
  br label %7780

; <label>:7780                                    ; preds = %7705, %7701
  %7781 = phi float [ %7779, %7705 ], [ 1.000000e+00, %7701 ]
  %7782 = fmul fast float %7698, 5.000000e-01
  %7783 = fadd fast float %7782, 5.000000e-01
  %7784 = call float @dx.op.unary.f32(i32 22, float %7783)  ; Frc(value)
  %7785 = call float @dx.op.unary.f32(i32 27, float %7784)  ; Round_ni(value)
  %7786 = call float @dx.op.unary.f32(i32 22, float %7784)  ; Frc(value)
  %7787 = fmul fast float %7786, 2.000000e+00
  %7788 = fadd fast float %7787, -1.000000e+00
  %7789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %64, float %7650, float %7651, float %7785, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7790 = extractvalue %dx.types.ResRet.f32 %7789, 0
  %7791 = extractvalue %dx.types.ResRet.f32 %7789, 1
  %7792 = extractvalue %dx.types.ResRet.f32 %7789, 2
  %7793 = extractvalue %dx.types.ResRet.f32 %7789, 3
  %7794 = fadd fast float %7790, -5.000000e-01
  %7795 = fadd fast float %7792, -5.000000e-01
  %7796 = fmul fast float %7794, 0xBFD5555560000000
  %7797 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7795, float %7796)  ; FMad(a,b,c)
  %7798 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7791, float 0.000000e+00)  ; FMad(a,b,c)
  %7799 = fadd fast float %7798, %7793
  %7800 = fmul fast float %7794, -7.500000e-01
  %7801 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7795, float %7800)  ; FMad(a,b,c)
  %7802 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7791, float 0.000000e+00)  ; FMad(a,b,c)
  %7803 = fadd fast float %7802, %7793
  %7804 = call float @dx.op.binary.f32(i32 35, float %7797, float -1.000000e+00)  ; FMax(a,b)
  %7805 = call float @dx.op.binary.f32(i32 35, float %7799, float -1.000000e+00)  ; FMax(a,b)
  %7806 = call float @dx.op.binary.f32(i32 35, float %7801, float -1.000000e+00)  ; FMax(a,b)
  %7807 = call float @dx.op.binary.f32(i32 35, float %7803, float -1.000000e+00)  ; FMax(a,b)
  %7808 = call float @dx.op.binary.f32(i32 36, float %7804, float 1.000000e+00)  ; FMin(a,b)
  %7809 = call float @dx.op.binary.f32(i32 36, float %7805, float 1.000000e+00)  ; FMin(a,b)
  %7810 = call float @dx.op.binary.f32(i32 36, float %7806, float 1.000000e+00)  ; FMin(a,b)
  %7811 = call float @dx.op.binary.f32(i32 36, float %7807, float 1.000000e+00)  ; FMin(a,b)
  %7812 = fcmp fast olt float %7808, 0x3FEFFF8020000000
  br i1 %7812, label %7813, label %7928, !dx.controlflow.hints !195

; <label>:7813                                    ; preds = %7780
  %7814 = extractvalue %dx.types.CBufRet.f32 %7696, 3
  %7815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7816 = extractvalue %dx.types.CBufRet.f32 %7815, 0
  %7817 = extractvalue %dx.types.CBufRet.f32 %7815, 1
  %7818 = extractvalue %dx.types.CBufRet.f32 %7815, 2
  %7819 = extractvalue %dx.types.CBufRet.f32 %7815, 3
  %7820 = fsub fast float %7816, %7808
  %7821 = fsub fast float %7817, %7809
  %7822 = fsub fast float %7818, %7810
  %7823 = fsub fast float %7819, %7811
  %7824 = fmul fast float %7820, %7814
  %7825 = fmul fast float %7821, %7814
  %7826 = fmul fast float %7822, %7814
  %7827 = fmul fast float %7823, %7814
  %7828 = fadd fast float %7824, %7808
  %7829 = fadd fast float %7825, %7809
  %7830 = fsub fast float -0.000000e+00, %7829
  %7831 = fadd fast float %7826, %7810
  %7832 = fadd fast float %7827, %7811
  %7833 = fmul fast float %7828, %7828
  %7834 = fsub fast float %7829, %7833
  %7835 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7834)  ; FMax(a,b)
  %7836 = fdiv fast float 1.000000e+00, %7835
  %7837 = fmul fast float %7829, %7828
  %7838 = fsub fast float %7831, %7837
  %7839 = fsub fast float %7788, %7828
  %7840 = fmul fast float %7788, %7788
  %7841 = fsub fast float %7840, %7829
  %7842 = fmul fast float %7839, %7836
  %7843 = fmul fast float %7842, %7838
  %7844 = fsub fast float %7841, %7843
  %7845 = fmul fast float %7829, %7829
  %7846 = fsub fast float %7832, %7845
  %7847 = fmul fast float %7838, %7838
  %7848 = fmul fast float %7847, %7836
  %7849 = fsub fast float %7846, %7848
  %7850 = fdiv fast float %7844, %7849
  %7851 = fmul fast float %7838, %7850
  %7852 = fsub fast float %7839, %7851
  %7853 = fmul fast float %7852, %7836
  %7854 = fmul fast float %7853, %7828
  %7855 = fsub fast float 1.000000e+00, %7854
  %7856 = fmul fast float %7829, %7850
  %7857 = fsub fast float %7855, %7856
  %7858 = fmul fast float %7853, %7853
  %7859 = fmul fast float %7850, 4.000000e+00
  %7860 = fmul fast float %7859, %7857
  %7861 = fsub fast float %7858, %7860
  %7862 = call float @dx.op.unary.f32(i32 24, float %7861)  ; Sqrt(value)
  %7863 = fcmp fast oge float %7853, 0.000000e+00
  %7864 = fsub fast float -0.000000e+00, %7862
  %7865 = select i1 %7863, float %7864, float %7862
  %7866 = fsub fast float %7865, %7853
  %7867 = fdiv fast float %7866, %7850
  %7868 = fdiv fast float %7857, %7866
  %7869 = fmul fast float %7867, 5.000000e-01
  %7870 = fmul fast float %7868, 2.000000e+00
  %7871 = select i1 %7863, float %7869, float %7870
  %7872 = select i1 %7863, float %7870, float %7869
  %7873 = call float @dx.op.binary.f32(i32 35, float %7871, float %7872)  ; FMax(a,b)
  %7874 = call float @dx.op.binary.f32(i32 36, float %7871, float %7872)  ; FMin(a,b)
  %7875 = fcmp fast ogt float %7788, %7874
  br i1 %7875, label %7876, label %7886

; <label>:7876                                    ; preds = %7813
  %7877 = fsub fast float %7788, %7874
  %7878 = fsub fast float %7873, %7874
  %7879 = fmul fast float %7877, %7878
  %7880 = fmul fast float %7873, %7788
  %7881 = fadd fast float %7873, %7788
  %7882 = fmul fast float %7881, %7828
  %7883 = fadd fast float %7880, %7829
  %7884 = fsub fast float %7883, %7882
  %7885 = fdiv fast float %7884, %7879
  br label %7886

; <label>:7886                                    ; preds = %7876, %7813
  %7887 = phi float [ %7885, %7876 ], [ 0.000000e+00, %7813 ]
  %7888 = fcmp fast ogt float %7788, %7873
  %7889 = fsub fast float %7788, %7873
  br i1 %7888, label %7890, label %7900

; <label>:7890                                    ; preds = %7886
  %7891 = fsub fast float %7873, %7874
  %7892 = fmul fast float %7891, %7889
  %7893 = fmul fast float %7874, %7788
  %7894 = fadd fast float %7874, %7788
  %7895 = fmul fast float %7894, %7828
  %7896 = fsub fast float %7830, %7893
  %7897 = fadd fast float %7896, %7895
  %7898 = fdiv fast float %7897, %7892
  %7899 = fadd fast float %7898, %7887
  br label %7900

; <label>:7900                                    ; preds = %7890, %7886
  %7901 = phi float [ %7899, %7890 ], [ %7887, %7886 ]
  %7902 = fsub fast float %7788, %7874
  %7903 = fmul fast float %7902, %7889
  %7904 = fmul fast float %7874, %7873
  %7905 = fadd fast float %7874, %7873
  %7906 = fmul fast float %7905, %7828
  %7907 = fadd fast float %7904, %7829
  %7908 = fsub fast float %7907, %7906
  %7909 = fdiv fast float %7908, %7903
  %7910 = call float @dx.op.unary.f32(i32 7, float %7901)  ; Saturate(value)
  %7911 = fcmp fast oeq float %6577, 0.000000e+00
  %7912 = extractvalue %dx.types.CBufRet.f32 %7696, 0
  %7913 = fcmp fast oeq float %7912, 0.000000e+00
  %7914 = or i1 %7911, %7913
  %7915 = fmul fast float %7912, 2.000000e+00
  %7916 = fadd fast float %7697, %7698
  %7917 = fdiv fast float %7916, %7915
  %7918 = call float @dx.op.unary.f32(i32 7, float %7917)  ; Saturate(value)
  %7919 = fmul fast float %7918, 2.000000e+00
  %7920 = fsub fast float 3.000000e+00, %7919
  %7921 = fmul fast float %7918, %7918
  %7922 = fmul fast float %7921, %7920
  %7923 = select i1 %7914, float 1.000000e+00, float %7922
  %7924 = fmul fast float %7909, %6577
  %7925 = fadd fast float %7910, %7924
  %7926 = call float @dx.op.unary.f32(i32 7, float %7925)  ; Saturate(value)
  %7927 = fmul fast float %7923, %7926
  br label %7928

; <label>:7928                                    ; preds = %7900, %7780
  %7929 = phi float [ %7927, %7900 ], [ 0.000000e+00, %7780 ]
  %7930 = fsub fast float 1.000000e+00, %7929
  %7931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %64, float %7650, float %7651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7932 = extractvalue %dx.types.ResRet.f32 %7931, 0
  %7933 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7934 = extractvalue %dx.types.CBufRet.i32 %7933, 2
  %7935 = icmp eq i32 %7934, 0
  br i1 %7935, label %7941, label %7936

; <label>:7936                                    ; preds = %7928
  %7937 = call float @dx.op.unary.f32(i32 7, float %7929)  ; Saturate(value)
  %7938 = fadd fast float %7932, -1.000000e+00
  %7939 = fmul fast float %7937, %7938
  %7940 = fadd fast float %7939, 1.000000e+00
  br label %7941

; <label>:7941                                    ; preds = %7936, %7928
  %7942 = phi float [ %7940, %7936 ], [ %7930, %7928 ]
  br i1 %7704, label %7943, label %7961

; <label>:7943                                    ; preds = %7941
  %7944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7945 = extractvalue %dx.types.CBufRet.f32 %7944, 1
  %7946 = fsub fast float %7781, %7945
  %7947 = call float @dx.op.unary.f32(i32 7, float %7946)  ; Saturate(value)
  %7948 = fsub fast float %7781, %7703
  %7949 = call float @dx.op.unary.f32(i32 7, float %7948)  ; Saturate(value)
  %7950 = fsub fast float %7947, %7949
  %7951 = fsub fast float %7783, %7949
  %7952 = fdiv fast float %7951, %7950
  %7953 = call float @dx.op.unary.f32(i32 7, float %7952)  ; Saturate(value)
  %7954 = fmul fast float %7953, 2.000000e+00
  %7955 = fsub fast float 3.000000e+00, %7954
  %7956 = fsub fast float %7932, %7942
  %7957 = fmul fast float %7953, %7953
  %7958 = fmul fast float %7957, %7956
  %7959 = fmul fast float %7958, %7955
  %7960 = fadd fast float %7959, %7942
  br label %7961

; <label>:7961                                    ; preds = %7943, %7941
  %7962 = phi float [ %7960, %7943 ], [ %7942, %7941 ]
  %7963 = call float @dx.op.binary.f32(i32 35, float %7932, float %7962)  ; FMax(a,b)
  %7964 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7965 = extractvalue %dx.types.CBufRet.i32 %7964, 2
  %7966 = and i32 %7965, 1
  %7967 = icmp eq i32 %7966, 0
  %7968 = fcmp fast une float %7963, 1.000000e+00
  %7969 = and i1 %7968, %7967
  br i1 %7969, label %7970, label %7989

; <label>:7970                                    ; preds = %7961
  %7971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %64, float %7650, float %7651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7972 = extractvalue %dx.types.ResRet.f32 %7971, 0
  %7973 = extractvalue %dx.types.ResRet.f32 %7971, 1
  %7974 = extractvalue %dx.types.ResRet.f32 %7971, 2
  %7975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7976 = extractvalue %dx.types.CBufRet.f32 %7975, 1
  %7977 = fmul fast float %7976, %7972
  %7978 = fmul fast float %7976, %7973
  %7979 = fmul fast float %7976, %7974
  %7980 = fcmp fast ogt float %7932, 0x3FEFFF2E40000000
  %7981 = fsub fast float 1.000000e+00, %7963
  %7982 = fsub fast float 1.000000e+00, %7932
  %7983 = fdiv fast float %7981, %7982
  %7984 = call float @dx.op.unary.f32(i32 7, float %7983)  ; Saturate(value)
  %7985 = select i1 %7980, float 0.000000e+00, float %7984
  %7986 = fmul fast float %7977, %7985
  %7987 = fmul fast float %7978, %7985
  %7988 = fmul fast float %7979, %7985
  br label %7989

; <label>:7989                                    ; preds = %7970, %7961
  %7990 = phi float [ 0.000000e+00, %7961 ], [ %7986, %7970 ]
  %7991 = phi float [ 0.000000e+00, %7961 ], [ %7987, %7970 ]
  %7992 = phi float [ 0.000000e+00, %7961 ], [ %7988, %7970 ]
  %7993 = fmul fast float %7990, %6565
  %7994 = fmul fast float %7991, %6565
  %7995 = fmul fast float %7992, %6565
  %7996 = fmul fast float %7963, %7625
  %7997 = call float @dx.op.dot3.f32(i32 55, float %7963, float %7963, float %7963, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7998 = call float @dx.op.dot3.f32(i32 55, float %7993, float %7994, float %7995, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7999 = select i1 %248, float %7997, float %7963
  %8000 = select i1 %248, float 1.000000e+00, float %7963
  %8001 = select i1 %248, float %7998, float %7993
  %8002 = select i1 %248, float 0.000000e+00, float %7994
  %8003 = select i1 %248, float 0.000000e+00, float %7995
  %8004 = fmul fast float %7999, %7637
  %8005 = fmul fast float %7999, %7638
  %8006 = fmul fast float %8000, %7639
  %8007 = fadd fast float %8004, %8001
  %8008 = fadd fast float %8005, %8002
  %8009 = fadd fast float %8003, %8006
  %8010 = fmul fast float %7999, %7640
  %8011 = fmul fast float %7999, %7641
  %8012 = fmul fast float %8000, %7642
  br label %8013

; <label>:8013                                    ; preds = %7989, %7646, %7615, %6847
  %8014 = phi float [ %6852, %6847 ], [ %7637, %7615 ], [ %8007, %7989 ], [ %7637, %7646 ]
  %8015 = phi float [ %6853, %6847 ], [ %7638, %7615 ], [ %8008, %7989 ], [ %7638, %7646 ]
  %8016 = phi float [ %6854, %6847 ], [ %7639, %7615 ], [ %8009, %7989 ], [ %7639, %7646 ]
  %8017 = phi float [ %6855, %6847 ], [ %7640, %7615 ], [ %8010, %7989 ], [ %7640, %7646 ]
  %8018 = phi float [ %6856, %6847 ], [ %7641, %7615 ], [ %8011, %7989 ], [ %7641, %7646 ]
  %8019 = phi float [ %6857, %6847 ], [ %7642, %7615 ], [ %8012, %7989 ], [ %7642, %7646 ]
  %8020 = phi float [ %6858, %6847 ], [ %7625, %7615 ], [ %7996, %7989 ], [ %7625, %7646 ]
  %8021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8022 = extractvalue %dx.types.CBufRet.f32 %8021, 2
  %8023 = extractvalue %dx.types.CBufRet.f32 %8021, 3
  %8024 = fmul fast float %8022, %102
  %8025 = fmul fast float %8023, %103
  %8026 = call float @dx.op.unary.f32(i32 7, float %8024)  ; Saturate(value)
  %8027 = call float @dx.op.unary.f32(i32 7, float %8025)  ; Saturate(value)
  %8028 = select i1 %6587, i32 2, i32 0
  %8029 = or i32 %8028, 1
  %8030 = uitofp i32 %8029 to float
  %8031 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %8026, float %8027, float %8030, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8032 = extractvalue %dx.types.ResRet.f32 %8031, 0
  %8033 = extractvalue %dx.types.ResRet.f32 %8031, 1
  %8034 = extractvalue %dx.types.ResRet.f32 %8031, 2
  %8035 = extractvalue %dx.types.ResRet.f32 %8031, 3
  %8036 = add nuw nsw i32 %8028, 2
  %8037 = uitofp i32 %8036 to float
  %8038 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %8026, float %8027, float %8037, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8039 = extractvalue %dx.types.ResRet.f32 %8038, 0
  %8040 = extractvalue %dx.types.ResRet.f32 %8038, 1
  %8041 = extractvalue %dx.types.ResRet.f32 %8038, 2
  %8042 = extractvalue %dx.types.ResRet.f32 %8038, 3
  %8043 = call float @dx.op.binary.f32(i32 35, float %8033, float %8034)  ; FMax(a,b)
  %8044 = call float @dx.op.binary.f32(i32 35, float %8032, float %8043)  ; FMax(a,b)
  %8045 = call float @dx.op.binary.f32(i32 35, float %8044, float %8035)  ; FMax(a,b)
  %8046 = call float @dx.op.binary.f32(i32 36, float %8040, float %8041)  ; FMin(a,b)
  %8047 = call float @dx.op.binary.f32(i32 36, float %8039, float %8046)  ; FMin(a,b)
  %8048 = call float @dx.op.binary.f32(i32 36, float %8047, float %8042)  ; FMin(a,b)
  %8049 = fmul fast float %8045, 2.550000e+02
  %8050 = fadd fast float %8049, 0x3F70101020000000
  %8051 = fptoui float %8050 to i32
  %8052 = fmul fast float %8048, 2.550000e+02
  %8053 = fadd fast float %8052, 0x3F70101020000000
  %8054 = fptoui float %8053 to i32
  %8055 = icmp ult i32 %8051, %8054
  br i1 %8055, label %8056, label %8225

; <label>:8056                                    ; preds = %8013
  %8057 = fcmp fast ogt float %89, 9.843750e-01
  %8058 = fadd fast float %6851, -4.000000e+00
  %8059 = select i1 %8057, float -4.000000e+00, float %8058
  %8060 = call float @dx.op.binary.f32(i32 35, float %8059, float 0.000000e+00)  ; FMax(a,b)
  %8061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8062 = extractvalue %dx.types.CBufRet.f32 %8061, 0
  %8063 = fadd fast float %8062, %8060
  %8064 = extractvalue %dx.types.CBufRet.f32 %8061, 2
  %8065 = fmul fast float %8063, %8064
  %8066 = call float @dx.op.unary.f32(i32 23, float %8065)  ; Log(value)
  %8067 = extractvalue %dx.types.CBufRet.f32 %8061, 3
  %8068 = fmul fast float %8067, %8066
  %8069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8070 = extractvalue %dx.types.CBufRet.f32 %8069, 2
  %8071 = fmul fast float %8068, %8070
  %8072 = call float @dx.op.unary.f32(i32 7, float %8071)  ; Saturate(value)
  %8073 = uitofp i32 %8051 to float
  %8074 = uitofp i32 %8054 to float
  %8075 = fadd fast float %8073, 5.000000e-01
  %8076 = fadd fast float %8074, 5.000000e-01
  %8077 = fmul fast float %8070, %8075
  %8078 = fmul fast float %8070, %8076
  %8079 = fadd fast float %8077, 0x3F0FFB4800000000
  %8080 = fadd fast float %8078, 0xBF0FFB4800000000
  %8081 = call float @dx.op.binary.f32(i32 35, float %8072, float %8079)  ; FMax(a,b)
  %8082 = call float @dx.op.binary.f32(i32 36, float %8081, float %8080)  ; FMin(a,b)
  %8083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8084 = extractvalue %dx.types.CBufRet.f32 %8083, 1
  %8085 = extractvalue %dx.types.CBufRet.f32 %8083, 2
  %8086 = extractvalue %dx.types.CBufRet.f32 %8083, 0
  %8087 = select i1 %6587, float %8086, float 0.000000e+00
  %8088 = fmul fast float %8084, %8082
  %8089 = fadd fast float %8087, %8088
  %8090 = fadd fast float %8087, %8085
  %8091 = fsub fast float %8084, %8085
  %8092 = fadd fast float %8091, %8087
  %8093 = call float @dx.op.binary.f32(i32 35, float %8089, float %8090)  ; FMax(a,b)
  %8094 = call float @dx.op.binary.f32(i32 36, float %8093, float %8092)  ; FMin(a,b)
  %8095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %8026, float %8027, float %8094, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8096 = extractvalue %dx.types.ResRet.f32 %8095, 0
  %8097 = extractvalue %dx.types.ResRet.f32 %8095, 1
  %8098 = extractvalue %dx.types.ResRet.f32 %8095, 2
  %8099 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8100 = extractvalue %dx.types.CBufRet.i32 %8099, 0
  %8101 = extractvalue %dx.types.CBufRet.i32 %8099, 1
  %8102 = uitofp i32 %8100 to float
  %8103 = uitofp i32 %8101 to float
  %8104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8105 = extractvalue %dx.types.CBufRet.f32 %8104, 0
  %8106 = extractvalue %dx.types.CBufRet.f32 %8104, 1
  %8107 = fmul fast float %8102, %8026
  %8108 = fmul fast float %8103, %8027
  %8109 = fadd fast float %8107, -5.000000e-01
  %8110 = fadd fast float %8108, -5.000000e-01
  %8111 = call float @dx.op.unary.f32(i32 22, float %8109)  ; Frc(value)
  %8112 = call float @dx.op.unary.f32(i32 22, float %8110)  ; Frc(value)
  %8113 = fmul fast float %8111, %8111
  %8114 = fmul fast float %8113, %8111
  %8115 = fsub fast float 3.000000e+00, %8111
  %8116 = fmul fast float %8113, %8115
  %8117 = fmul fast float %8111, 3.000000e+00
  %8118 = fmul fast float %8114, 3.000000e+00
  %8119 = fmul fast float %8113, 6.000000e+00
  %8120 = fsub fast float %8118, %8119
  %8121 = fadd fast float %8120, 4.000000e+00
  %8122 = fmul fast float %8121, 0x3FC5555560000000
  %8123 = fmul fast float %8114, -3.000000e+00
  %8124 = fadd fast float %8113, %8111
  %8125 = fmul fast float %8124, 3.000000e+00
  %8126 = fadd fast float %8123, 1.000000e+00
  %8127 = fadd fast float %8126, %8125
  %8128 = fmul fast float %8114, 0x3FC5555560000000
  %8129 = fmul fast float %8112, %8112
  %8130 = fmul fast float %8129, %8112
  %8131 = fsub fast float 3.000000e+00, %8112
  %8132 = fmul fast float %8129, %8131
  %8133 = fmul fast float %8112, 3.000000e+00
  %8134 = fmul fast float %8130, 3.000000e+00
  %8135 = fmul fast float %8129, 6.000000e+00
  %8136 = fsub fast float %8134, %8135
  %8137 = fadd fast float %8136, 4.000000e+00
  %8138 = fmul fast float %8137, 0x3FC5555560000000
  %8139 = fmul fast float %8130, -3.000000e+00
  %8140 = fadd fast float %8129, %8112
  %8141 = fmul fast float %8140, 3.000000e+00
  %8142 = fadd fast float %8139, 1.000000e+00
  %8143 = fadd fast float %8142, %8141
  %8144 = fmul fast float %8130, 0x3FC5555560000000
  %8145 = fadd fast float %8111, 1.000000e+00
  %8146 = fsub fast float 1.000000e+00, %8117
  %8147 = fadd fast float %8146, %8116
  %8148 = fadd fast float %8147, %8121
  %8149 = fmul fast float %8148, 0x3FC5555560000000
  %8150 = fdiv fast float %8122, %8149
  %8151 = fsub fast float %8145, %8150
  %8152 = fsub fast float 1.000000e+00, %8111
  %8153 = fadd fast float %8127, %8114
  %8154 = fmul fast float %8153, 0x3FC5555560000000
  %8155 = fdiv fast float %8128, %8154
  %8156 = fadd fast float %8152, %8155
  %8157 = fadd fast float %8112, 1.000000e+00
  %8158 = fsub fast float 1.000000e+00, %8133
  %8159 = fadd fast float %8158, %8132
  %8160 = fadd fast float %8159, %8137
  %8161 = fmul fast float %8160, 0x3FC5555560000000
  %8162 = fdiv fast float %8138, %8161
  %8163 = fsub fast float %8157, %8162
  %8164 = fsub fast float 1.000000e+00, %8112
  %8165 = fadd fast float %8143, %8130
  %8166 = fmul fast float %8165, 0x3FC5555560000000
  %8167 = fdiv fast float %8144, %8166
  %8168 = fadd fast float %8167, %8164
  %8169 = fmul fast float %8151, %8105
  %8170 = fsub fast float %8026, %8169
  %8171 = fmul fast float %8156, %8105
  %8172 = fadd fast float %8171, %8026
  %8173 = fmul fast float %8168, %8106
  %8174 = fadd fast float %8173, %8027
  %8175 = fmul fast float %8163, %8106
  %8176 = fsub fast float %8027, %8175
  %8177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8170, float %8176, float %8094, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8178 = extractvalue %dx.types.ResRet.f32 %8177, 0
  %8179 = extractvalue %dx.types.ResRet.f32 %8177, 1
  %8180 = extractvalue %dx.types.ResRet.f32 %8177, 2
  %8181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8172, float %8176, float %8094, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8182 = extractvalue %dx.types.ResRet.f32 %8181, 0
  %8183 = extractvalue %dx.types.ResRet.f32 %8181, 1
  %8184 = extractvalue %dx.types.ResRet.f32 %8181, 2
  %8185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8170, float %8174, float %8094, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8186 = extractvalue %dx.types.ResRet.f32 %8185, 0
  %8187 = extractvalue %dx.types.ResRet.f32 %8185, 1
  %8188 = extractvalue %dx.types.ResRet.f32 %8185, 2
  %8189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8172, float %8174, float %8094, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8190 = extractvalue %dx.types.ResRet.f32 %8189, 0
  %8191 = extractvalue %dx.types.ResRet.f32 %8189, 1
  %8192 = extractvalue %dx.types.ResRet.f32 %8189, 2
  %8193 = fsub fast float %8186, %8178
  %8194 = fsub fast float %8187, %8179
  %8195 = fsub fast float %8188, %8180
  %8196 = fmul fast float %8193, %8166
  %8197 = fmul fast float %8194, %8166
  %8198 = fmul fast float %8195, %8166
  %8199 = fadd fast float %8196, %8178
  %8200 = fadd fast float %8197, %8179
  %8201 = fadd fast float %8198, %8180
  %8202 = fsub fast float %8190, %8182
  %8203 = fsub fast float %8191, %8183
  %8204 = fsub fast float %8192, %8184
  %8205 = fmul fast float %8202, %8166
  %8206 = fmul fast float %8203, %8166
  %8207 = fmul fast float %8204, %8166
  %8208 = fsub fast float %8182, %8199
  %8209 = fadd fast float %8208, %8205
  %8210 = fsub fast float %8183, %8200
  %8211 = fadd fast float %8210, %8206
  %8212 = fsub fast float %8184, %8201
  %8213 = fadd fast float %8212, %8207
  %8214 = fmul fast float %8209, %8154
  %8215 = fmul fast float %8211, %8154
  %8216 = fmul fast float %8213, %8154
  %8217 = fadd fast float %8214, %8199
  %8218 = fadd fast float %8215, %8200
  %8219 = fadd fast float %8216, %8201
  %8220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8221 = extractvalue %dx.types.CBufRet.f32 %8220, 1
  %8222 = fmul fast float %8217, %8221
  %8223 = fmul fast float %8218, %8221
  %8224 = fmul fast float %8219, %8221
  br label %8225

; <label>:8225                                    ; preds = %8056, %8013
  %8226 = phi float [ %8096, %8056 ], [ 1.000000e+00, %8013 ]
  %8227 = phi float [ %8097, %8056 ], [ 1.000000e+00, %8013 ]
  %8228 = phi float [ %8098, %8056 ], [ 1.000000e+00, %8013 ]
  %8229 = phi float [ %8222, %8056 ], [ 0.000000e+00, %8013 ]
  %8230 = phi float [ %8223, %8056 ], [ 0.000000e+00, %8013 ]
  %8231 = phi float [ %8224, %8056 ], [ 0.000000e+00, %8013 ]
  %8232 = fmul fast float %8229, %6565
  %8233 = fmul fast float %8230, %6565
  %8234 = fmul fast float %8231, %6565
  %8235 = fmul fast float %8226, %8020
  %8236 = call float @dx.op.dot3.f32(i32 55, float %8226, float %8227, float %8228, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8237 = call float @dx.op.dot3.f32(i32 55, float %8232, float %8233, float %8234, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8238 = select i1 %248, float %8236, float %8226
  %8239 = select i1 %248, float %8236, float %8227
  %8240 = select i1 %248, float 1.000000e+00, float %8228
  %8241 = select i1 %248, float %8237, float %8232
  %8242 = select i1 %248, float 0.000000e+00, float %8233
  %8243 = select i1 %248, float 0.000000e+00, float %8234
  %8244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8245 = extractvalue %dx.types.CBufRet.i32 %8244, 3
  %8246 = and i32 %8245, 3
  %8247 = icmp ne i32 %8246, 0
  %8248 = and i32 %8245, 4
  %8249 = icmp ne i32 %8248, 0
  %8250 = and i1 %8247, %8249
  %8251 = and i1 %248, %8250
  br i1 %8251, label %8252, label %8258

; <label>:8252                                    ; preds = %8225
  %8253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8254 = extractvalue %dx.types.CBufRet.f32 %8253, 1
  %8255 = fadd fast float %8235, -1.000000e+00
  %8256 = fmul fast float %8254, %8255
  %8257 = fadd fast float %8256, 1.000000e+00
  br label %8258

; <label>:8258                                    ; preds = %8252, %8225
  %8259 = phi float [ %8257, %8252 ], [ %8235, %8225 ]
  %8260 = fadd fast float %8017, %8014
  %8261 = fmul fast float %8238, %8260
  %8262 = fadd fast float %8261, %8241
  %8263 = fadd fast float %8018, %8015
  %8264 = fmul fast float %8239, %8263
  %8265 = fadd fast float %8264, %8242
  %8266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8267 = extractvalue %dx.types.CBufRet.f32 %8266, 0
  br i1 %248, label %8268, label %8292

; <label>:8268                                    ; preds = %8258
  %8269 = fadd fast float %8262, %8265
  %8270 = fmul fast float %8267, %8269
  %8271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8272 = extractvalue %dx.types.CBufRet.f32 %8271, 3
  %8273 = extractvalue %dx.types.CBufRet.f32 %6569, 1
  %8274 = fsub fast float %6574, %6568
  %8275 = fadd fast float %8274, %6575
  %8276 = fsub fast float %8275, %8273
  %8277 = extractvalue %dx.types.CBufRet.f32 %6569, 2
  %8278 = fmul fast float %8276, %8277
  %8279 = call float @dx.op.unary.f32(i32 7, float %8278)  ; Saturate(value)
  %8280 = fsub fast float %8279, %8272
  %8281 = fmul fast float %8280, %8259
  %8282 = fadd fast float %8281, %8272
  %8283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8284 = extractvalue %dx.types.CBufRet.f32 %8283, 0
  %8285 = fsub fast float %8282, %8284
  %8286 = fmul fast float %8285, 1.000000e+01
  %8287 = call float @dx.op.unary.f32(i32 7, float %8286)  ; Saturate(value)
  %8288 = fsub fast float %1599, %6565
  %8289 = fmul fast float %8287, %8288
  %8290 = fadd fast float %8289, %6565
  %8291 = fmul fast float %8290, %8282
  br label %8316

; <label>:8292                                    ; preds = %8258
  %8293 = fadd fast float %8019, %8016
  %8294 = fmul fast float %8240, %8293
  %8295 = fadd fast float %8294, %8243
  %8296 = fmul fast float %8267, %8262
  %8297 = fmul fast float %8267, %8265
  %8298 = fmul fast float %8267, %8295
  %8299 = call float @dx.op.binary.f32(i32 35, float %8297, float %8298)  ; FMax(a,b)
  %8300 = call float @dx.op.binary.f32(i32 35, float %8296, float %8299)  ; FMax(a,b)
  %8301 = call float @dx.op.binary.f32(i32 35, float %8300, float %6565)  ; FMax(a,b)
  %8302 = fcmp fast ugt float %8301, 0x3F10000000000000
  br i1 %8302, label %8304, label %8303

; <label>:8303                                    ; preds = %8292
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8304

; <label>:8304                                    ; preds = %8303, %8292
  %8305 = add i32 %73, 116
  %8306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %8305, i32 undef)  ; BufferLoad(srv,index,wot)
  %8307 = extractvalue %dx.types.ResRet.i32 %8306, 0
  %8308 = and i32 %8307, 32
  %8309 = icmp eq i32 %8308, 0
  br i1 %8309, label %8316, label %8310

; <label>:8310                                    ; preds = %8304
  %8311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8312 = extractvalue %dx.types.CBufRet.f32 %8311, 0
  %8313 = fmul fast float %8312, 0x3FE99999A0000000
  %8314 = fadd fast float %8312, %8296
  %8315 = fadd fast float %8313, %8298
  br label %8316

; <label>:8316                                    ; preds = %8310, %8304, %8268
  %8317 = phi float [ %8270, %8268 ], [ %8314, %8310 ], [ %8296, %8304 ]
  %8318 = phi float [ %8291, %8268 ], [ %8297, %8310 ], [ %8297, %8304 ]
  %8319 = phi float [ %8290, %8268 ], [ %8315, %8310 ], [ %8298, %8304 ]
  %8320 = phi float [ %8290, %8268 ], [ %6565, %8310 ], [ %6565, %8304 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8321 = call float @dx.op.binary.f32(i32 36, float %8317, float 3.225500e+04)  ; FMin(a,b)
  %8322 = call float @dx.op.binary.f32(i32 36, float %8318, float 3.225500e+04)  ; FMin(a,b)
  %8323 = call float @dx.op.binary.f32(i32 36, float %8319, float 3.225500e+04)  ; FMin(a,b)
  %8324 = call float @dx.op.binary.f32(i32 36, float %8320, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8321)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8322)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8323)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8324)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

