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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 4bc738d3bd6389fd9dfb13669916e02b
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
; SV_Target                1                              
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
; Number of inputs: 26, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 8, 9, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 8, 9, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 8, 9, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
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
  %292 = add i32 %71, 108
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 2
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %306, label %297

; <label>:297                                     ; preds = %237
  %298 = add i32 %71, 152
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
  br i1 %315, label %1068, label %316

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
  %527 = add i32 %71, 136
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
  %579 = add i32 %71, 132
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
  %603 = add i32 %71, 120
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
  %626 = add i32 %71, 140
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
  %807 = add i32 %71, 116
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
  %824 = add i32 %71, 124
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
  %908 = add i32 %71, 128
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
  %944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %945 = extractvalue %dx.types.ResRet.i32 %944, 0
  %946 = and i32 %945, 1024
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %978, label %948

; <label>:948                                     ; preds = %940
  %949 = add i32 %71, 56
  %950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %949, i32 undef)  ; BufferLoad(srv,index,wot)
  %951 = extractvalue %dx.types.ResRet.i32 %950, 0
  %952 = and i32 %951, 255
  %953 = uitofp i32 %952 to float
  %954 = fmul fast float %953, 0x3F70101020000000
  %955 = lshr i32 %951, 8
  %956 = and i32 %955, 255
  %957 = uitofp i32 %956 to float
  %958 = fmul fast float %957, 0x3F70101020000000
  %959 = lshr i32 %951, 16
  %960 = and i32 %959, 255
  %961 = uitofp i32 %960 to float
  %962 = fmul fast float %961, 0x3F70101020000000
  %963 = fmul fast float %954, %954
  %964 = fmul fast float %958, %958
  %965 = fmul fast float %962, %962
  %966 = add i32 %71, 144
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = add i32 %968, 0
  %970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %969, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %971 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %970, %dx.types.Handle %97, float %407, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %972 = extractvalue %dx.types.ResRet.f32 %971, 0
  %973 = extractvalue %dx.types.ResRet.f32 %971, 1
  %974 = extractvalue %dx.types.ResRet.f32 %971, 2
  %975 = fmul fast float %963, %972
  %976 = fmul fast float %964, %973
  %977 = fmul fast float %965, %974
  br label %978

; <label>:978                                     ; preds = %948, %940
  %979 = phi float [ %975, %948 ], [ 0.000000e+00, %940 ]
  %980 = phi float [ %976, %948 ], [ 0.000000e+00, %940 ]
  %981 = phi float [ %977, %948 ], [ 0.000000e+00, %940 ]
  %982 = fcmp fast ogt float %979, 0.000000e+00
  %983 = fcmp fast ogt float %980, 0.000000e+00
  %984 = fcmp fast ogt float %981, 0.000000e+00
  %985 = call float @dx.op.unary.f32(i32 23, float %979)  ; Log(value)
  %986 = call float @dx.op.unary.f32(i32 23, float %980)  ; Log(value)
  %987 = call float @dx.op.unary.f32(i32 23, float %981)  ; Log(value)
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = lshr i32 %989, 7
  %991 = and i32 %990, 32752
  %992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %991)  ; LegacyF16ToF32(value)
  %993 = fmul fast float %985, 0xBFE62E4300000000
  %994 = fmul fast float %993, %992
  %995 = fmul fast float %986, 0xBFE62E4300000000
  %996 = fmul fast float %995, %992
  %997 = fmul fast float %987, 0xBFE62E4300000000
  %998 = fmul fast float %997, %992
  %999 = select i1 %982, float %994, float 1.270000e+02
  %1000 = select i1 %983, float %996, float 1.270000e+02
  %1001 = select i1 %984, float %998, float 1.270000e+02
  %1002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1003 = extractvalue %dx.types.ResRet.i32 %1002, 0
  %1004 = and i32 %1003, 10240
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1050, label %1006

; <label>:1006                                    ; preds = %978
  %1007 = add i32 %71, 148
  %1008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1007, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 0
  %1010 = add i32 %1009, 0
  %1011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1012 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1011, %dx.types.Handle %97, float %407, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1013 = extractvalue %dx.types.ResRet.f32 %1012, 1
  %1014 = extractvalue %dx.types.ResRet.f32 %1012, 3
  %1015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.i32 %1015, 0
  %1017 = and i32 %1016, 1048576
  %1018 = icmp ne i32 %1017, 0
  %1019 = and i32 %1016, 8192
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1036, label %1021

; <label>:1021                                    ; preds = %1006
  %1022 = extractvalue %dx.types.ResRet.f32 %1012, 2
  %1023 = select i1 %1018, float %1022, float %1013
  %1024 = extractvalue %dx.types.ResRet.f32 %1012, 0
  %1025 = select i1 %1018, float %1024, float %1013
  %1026 = add i32 %71, 48
  %1027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1026, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.i32 %1027, 0
  %1029 = lshr i32 %1028, 16
  %1030 = and i32 %1029, 255
  %1031 = uitofp i32 %1030 to float
  %1032 = fmul fast float %1031, 0x3F80101020000000
  %1033 = fmul fast float %1032, %1025
  %1034 = fmul fast float %1032, %1013
  %1035 = fmul fast float %1032, %1023
  br label %1036

; <label>:1036                                    ; preds = %1021, %1006
  %1037 = phi float [ %1033, %1021 ], [ 0.000000e+00, %1006 ]
  %1038 = phi float [ %1034, %1021 ], [ 0.000000e+00, %1006 ]
  %1039 = phi float [ %1035, %1021 ], [ 0.000000e+00, %1006 ]
  %1040 = and i32 %1016, 2048
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1050, label %1042

; <label>:1042                                    ; preds = %1036
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = shl i32 %1044, 4
  %1046 = and i32 %1045, 32752
  %1047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1046)  ; LegacyF16ToF32(value)
  %1048 = fmul fast float %1047, %1014
  %1049 = call float @dx.op.binary.f32(i32 35, float %1048, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1050

; <label>:1050                                    ; preds = %1042, %1036, %978
  %1051 = phi float [ %1037, %1042 ], [ %1037, %1036 ], [ 0.000000e+00, %978 ]
  %1052 = phi float [ %1038, %1042 ], [ %1038, %1036 ], [ 0.000000e+00, %978 ]
  %1053 = phi float [ %1039, %1042 ], [ %1039, %1036 ], [ 0.000000e+00, %978 ]
  %1054 = phi float [ %1049, %1042 ], [ 0x3F70101020000000, %1036 ], [ 0x3F70101020000000, %978 ]
  %1055 = add i32 %71, 48
  %1056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.i32 %1056, 0
  %1058 = and i32 %1057, 255
  %1059 = uitofp i32 %1058 to float
  %1060 = lshr i32 %1057, 8
  %1061 = and i32 %1060, 255
  %1062 = uitofp i32 %1061 to float
  %1063 = call float @dx.op.dot3.f32(i32 55, float %813, float %814, float %815, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1064 = fmul fast float %1062, %1063
  %1065 = fadd fast float %1064, %1059
  %1066 = fmul fast float %1065, 0x3F70101020000000
  %1067 = call float @dx.op.unary.f32(i32 7, float %1066)  ; Saturate(value)
  br label %1068

; <label>:1068                                    ; preds = %1050, %306
  %1069 = phi float [ 0.000000e+00, %306 ], [ %894, %1050 ]
  %1070 = phi float [ 0.000000e+00, %306 ], [ %895, %1050 ]
  %1071 = phi float [ 0.000000e+00, %306 ], [ %813, %1050 ]
  %1072 = phi float [ 0.000000e+00, %306 ], [ %814, %1050 ]
  %1073 = phi float [ 0.000000e+00, %306 ], [ %815, %1050 ]
  %1074 = phi float [ 0.000000e+00, %306 ], [ %1051, %1050 ]
  %1075 = phi float [ 0.000000e+00, %306 ], [ %1052, %1050 ]
  %1076 = phi float [ 0.000000e+00, %306 ], [ %1053, %1050 ]
  %1077 = phi float [ 0.000000e+00, %306 ], [ %941, %1050 ]
  %1078 = phi float [ 0.000000e+00, %306 ], [ %942, %1050 ]
  %1079 = phi float [ 0.000000e+00, %306 ], [ %943, %1050 ]
  %1080 = phi float [ 0.000000e+00, %306 ], [ %999, %1050 ]
  %1081 = phi float [ 0.000000e+00, %306 ], [ %1000, %1050 ]
  %1082 = phi float [ 0.000000e+00, %306 ], [ %1001, %1050 ]
  %1083 = phi float [ 0.000000e+00, %306 ], [ %799, %1050 ]
  %1084 = phi float [ 0.000000e+00, %306 ], [ %595, %1050 ]
  %1085 = phi float [ 0.000000e+00, %306 ], [ %893, %1050 ]
  %1086 = phi float [ 0.000000e+00, %306 ], [ %896, %1050 ]
  %1087 = phi float [ 0.000000e+00, %306 ], [ %1054, %1050 ]
  %1088 = phi float [ 0.000000e+00, %306 ], [ %1067, %1050 ]
  %1089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.f32 %1089, 0
  %1091 = call float @dx.op.dot2.f32(i32 54, float %1069, float %1070, float %1069, float %1070)  ; Dot2(ax,ay,bx,by)
  %1092 = fmul fast float %1091, 0x3FE3333340000000
  %1093 = fsub fast float 1.000000e+00, %1092
  %1094 = call float @dx.op.dot3.f32(i32 55, float %1069, float %1070, float %1093, float %1069, float %1070, float %1093)  ; Dot3(ax,ay,az,bx,by,bz)
  %1095 = call float @dx.op.unary.f32(i32 25, float %1094)  ; Rsqrt(value)
  %1096 = fmul fast float %1095, %1069
  %1097 = fmul fast float %1095, %1070
  %1098 = fmul fast float %1093, %1095
  %1099 = fmul fast float %1098, %76
  %1100 = fmul fast float %1098, %77
  %1101 = fmul fast float %1098, %78
  %1102 = fmul fast float %1096, %72
  %1103 = fmul fast float %1096, %73
  %1104 = fmul fast float %1096, %74
  %1105 = fadd fast float %1099, %1102
  %1106 = fadd fast float %1100, %1103
  %1107 = fadd fast float %1101, %1104
  %1108 = fmul fast float %1097, %111
  %1109 = fmul fast float %1097, %112
  %1110 = fmul fast float %1097, %113
  %1111 = fadd fast float %1105, %1108
  %1112 = fadd fast float %1106, %1109
  %1113 = fadd fast float %1107, %1110
  %1114 = call float @dx.op.dot3.f32(i32 55, float %1111, float %1112, float %1113, float %1111, float %1112, float %1113)  ; Dot3(ax,ay,az,bx,by,bz)
  %1115 = call float @dx.op.unary.f32(i32 25, float %1114)  ; Rsqrt(value)
  %1116 = fmul fast float %1111, %1115
  %1117 = fmul fast float %1112, %1115
  %1118 = fmul fast float %1113, %1115
  %1119 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %1120 = call float @dx.op.unary.f32(i32 83, float %148)  ; DerivCoarseX(value)
  %1121 = call float @dx.op.unary.f32(i32 83, float %149)  ; DerivCoarseX(value)
  %1122 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %1123 = call float @dx.op.unary.f32(i32 84, float %148)  ; DerivCoarseY(value)
  %1124 = call float @dx.op.unary.f32(i32 84, float %149)  ; DerivCoarseY(value)
  %1125 = fadd fast float %1119, %147
  %1126 = fadd fast float %1120, %148
  %1127 = fadd fast float %1121, %149
  %1128 = fadd fast float %1122, %147
  %1129 = fadd fast float %1123, %148
  %1130 = fadd fast float %1124, %149
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.CBufRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.CBufRet.f32 %1131, 2
  %1135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1136 = extractvalue %dx.types.CBufRet.f32 %1135, 2
  %1137 = extractvalue %dx.types.CBufRet.f32 %1135, 3
  %1138 = fmul fast float %1132, %100
  %1139 = fmul fast float %1138, %1136
  %1140 = fmul fast float %1133, %101
  %1141 = fmul fast float %1140, %1137
  %1142 = fptoui float %1139 to i32
  %1143 = fptoui float %1141 to i32
  %1144 = fadd fast float %1132, -1.000000e+00
  %1145 = fadd fast float %1133, -1.000000e+00
  %1146 = fptoui float %1144 to i32
  %1147 = fptoui float %1145 to i32
  %1148 = call i32 @dx.op.binary.i32(i32 40, i32 %1142, i32 %1146)  ; UMin(a,b)
  %1149 = call i32 @dx.op.binary.i32(i32 40, i32 %1143, i32 %1147)  ; UMin(a,b)
  %1150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1151 = extractvalue %dx.types.CBufRet.f32 %1150, 2
  %1152 = extractvalue %dx.types.CBufRet.f32 %1150, 3
  %1153 = fmul fast float %1151, %88
  %1154 = fsub fast float %1153, %1152
  %1155 = fadd fast float %1134, -1.000000e+00
  %1156 = call float @dx.op.binary.f32(i32 36, float %1154, float %1155)  ; FMin(a,b)
  %1157 = fptoui float %1156 to i32
  %1158 = fptoui float %1132 to i32
  %1159 = fptoui float %1133 to i32
  %1160 = mul i32 %1157, %1159
  %1161 = add i32 %1160, %1149
  %1162 = mul i32 %1161, %1158
  %1163 = add i32 %1162, %1148
  %1164 = shl i32 %1163, 2
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = and i32 %1166, 1023
  %1168 = lshr i32 %1166, 10
  %1169 = icmp eq i32 %1167, 0
  br i1 %1169, label %1673, label %1170

; <label>:1170                                    ; preds = %1068
  %1171 = and i32 %1166, 1023
  br label %1172

; <label>:1172                                    ; preds = %1304, %1170
  %1173 = phi float [ %1305, %1304 ], [ 0.000000e+00, %1170 ]
  %1174 = phi float [ %1306, %1304 ], [ %1090, %1170 ]
  %1175 = phi float [ %1307, %1304 ], [ %1088, %1170 ]
  %1176 = phi float [ %1308, %1304 ], [ %1080, %1170 ]
  %1177 = phi float [ %1309, %1304 ], [ %1081, %1170 ]
  %1178 = phi float [ %1310, %1304 ], [ %1082, %1170 ]
  %1179 = phi float [ %1311, %1304 ], [ 0.000000e+00, %1170 ]
  %1180 = phi float [ %1312, %1304 ], [ 0.000000e+00, %1170 ]
  %1181 = phi float [ %1313, %1304 ], [ %1074, %1170 ]
  %1182 = phi float [ %1314, %1304 ], [ %1075, %1170 ]
  %1183 = phi float [ %1315, %1304 ], [ %1076, %1170 ]
  %1184 = phi float [ %1316, %1304 ], [ %1077, %1170 ]
  %1185 = phi float [ %1317, %1304 ], [ %1078, %1170 ]
  %1186 = phi float [ %1318, %1304 ], [ %1079, %1170 ]
  %1187 = phi float [ %1319, %1304 ], [ %1116, %1170 ]
  %1188 = phi float [ %1320, %1304 ], [ %1117, %1170 ]
  %1189 = phi float [ %1321, %1304 ], [ %1118, %1170 ]
  %1190 = phi float [ %1322, %1304 ], [ %1086, %1170 ]
  %1191 = phi float [ %1323, %1304 ], [ %1085, %1170 ]
  %1192 = phi float [ %1324, %1304 ], [ 0.000000e+00, %1170 ]
  %1193 = phi float [ %1325, %1304 ], [ %1083, %1170 ]
  %1194 = phi float [ %1326, %1304 ], [ %1071, %1170 ]
  %1195 = phi float [ %1327, %1304 ], [ %1072, %1170 ]
  %1196 = phi float [ %1328, %1304 ], [ %1073, %1170 ]
  %1197 = phi i32 [ %1254, %1304 ], [ 0, %1170 ]
  %1198 = add nuw nsw i32 %1197, %1168
  %1199 = shl i32 %1198, 2
  %1200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.i32 %1200, 0
  %1202 = shl i32 %1201, 8
  %1203 = or i32 %1202, 48
  %1204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.f32 %1204, 0
  %1206 = extractvalue %dx.types.ResRet.f32 %1204, 1
  %1207 = extractvalue %dx.types.ResRet.f32 %1204, 2
  %1208 = extractvalue %dx.types.ResRet.f32 %1204, 3
  %1209 = or i32 %1202, 64
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1209, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = extractvalue %dx.types.ResRet.i32 %1210, 1
  %1213 = or i32 %1202, 80
  %1214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 2
  %1216 = extractvalue %dx.types.ResRet.f32 %1214, 3
  %1217 = or i32 %1202, 96
  %1218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.ResRet.f32 %1218, 2
  %1222 = extractvalue %dx.types.ResRet.f32 %1218, 3
  %1223 = or i32 %1202, 112
  %1224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.f32 %1224, 2
  %1226 = or i32 %1202, 128
  %1227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.ResRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.ResRet.f32 %1227, 2
  %1231 = extractvalue %dx.types.ResRet.f32 %1227, 3
  %1232 = or i32 %1202, 144
  %1233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.f32 %1233, 0
  %1235 = extractvalue %dx.types.ResRet.f32 %1233, 1
  %1236 = extractvalue %dx.types.ResRet.f32 %1233, 2
  %1237 = extractvalue %dx.types.ResRet.f32 %1233, 3
  %1238 = or i32 %1202, 160
  %1239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1238, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.f32 %1239, 0
  %1241 = extractvalue %dx.types.ResRet.f32 %1239, 1
  %1242 = extractvalue %dx.types.ResRet.f32 %1239, 2
  %1243 = extractvalue %dx.types.ResRet.f32 %1239, 3
  %1244 = or i32 %1202, 192
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = or i32 %1202, 208
  %1248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 0
  %1250 = or i32 %1202, 248
  %1251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.ResRet.f32 %1251, 1
  %1254 = add nuw nsw i32 %1197, 1
  %1255 = bitcast float %1208 to i32
  %1256 = and i32 %1255, 2560
  %1257 = icmp eq i32 %1256, 0
  %1258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.f32 %1258, 0
  %1260 = extractvalue %dx.types.ResRet.f32 %1258, 1
  %1261 = extractvalue %dx.types.ResRet.f32 %1258, 2
  %1262 = extractvalue %dx.types.ResRet.f32 %1258, 3
  %1263 = call float @dx.op.dot4.f32(i32 56, float %1259, float %1260, float %1261, float %1262, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1264 = or i32 %1202, 16
  %1265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.f32 %1265, 0
  %1267 = extractvalue %dx.types.ResRet.f32 %1265, 1
  %1268 = extractvalue %dx.types.ResRet.f32 %1265, 2
  %1269 = extractvalue %dx.types.ResRet.f32 %1265, 3
  %1270 = call float @dx.op.dot4.f32(i32 56, float %1266, float %1267, float %1268, float %1269, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1271 = or i32 %1202, 32
  %1272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.f32 %1272, 0
  %1274 = extractvalue %dx.types.ResRet.f32 %1272, 1
  %1275 = extractvalue %dx.types.ResRet.f32 %1272, 2
  %1276 = extractvalue %dx.types.ResRet.f32 %1272, 3
  %1277 = call float @dx.op.dot4.f32(i32 56, float %1273, float %1274, float %1275, float %1276, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1278 = call float @dx.op.unary.f32(i32 27, float %1263)  ; Round_ni(value)
  %1279 = call float @dx.op.unary.f32(i32 6, float %1278)  ; FAbs(value)
  %1280 = call float @dx.op.unary.f32(i32 27, float %1270)  ; Round_ni(value)
  %1281 = call float @dx.op.unary.f32(i32 6, float %1280)  ; FAbs(value)
  %1282 = call float @dx.op.unary.f32(i32 6, float %1277)  ; FAbs(value)
  %1283 = call float @dx.op.unary.f32(i32 27, float %1282)  ; Round_ni(value)
  %1284 = fadd fast float %1281, %1279
  %1285 = fadd fast float %1284, %1283
  %1286 = fcmp fast oeq float %1285, 0.000000e+00
  %1287 = call float @dx.op.dot4.f32(i32 56, float %1259, float %1260, float %1261, float %1262, float %1125, float %1126, float %1127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1288 = call float @dx.op.dot4.f32(i32 56, float %1266, float %1267, float %1268, float %1269, float %1125, float %1126, float %1127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1289 = call float @dx.op.dot4.f32(i32 56, float %1259, float %1260, float %1261, float %1262, float %1128, float %1129, float %1130, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1290 = call float @dx.op.dot4.f32(i32 56, float %1266, float %1267, float %1268, float %1269, float %1128, float %1129, float %1130, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1291 = fsub fast float %1287, %1263
  %1292 = fsub fast float %1289, %1263
  %1293 = fsub fast float %1288, %1270
  %1294 = fsub fast float %1290, %1270
  %1295 = call float @dx.op.dot3.f32(i32 55, float %1205, float %1206, float %1207, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %1296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1297 = extractvalue %dx.types.CBufRet.f32 %1296, 2
  %1298 = fadd fast float %1297, %1295
  %1299 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1296, 0
  %1301 = fcmp fast ogt float %1299, %1300
  %1302 = and i1 %1286, %1301
  %1303 = and i1 %1257, %1302
  br i1 %1303, label %1330, label %1304

; <label>:1304                                    ; preds = %1659, %1411, %1330, %1172
  %1305 = phi float [ %1173, %1330 ], [ %1414, %1411 ], [ %1414, %1659 ], [ %1173, %1172 ]
  %1306 = phi float [ %1174, %1330 ], [ %1174, %1411 ], [ %1635, %1659 ], [ %1174, %1172 ]
  %1307 = phi float [ %1175, %1330 ], [ %1175, %1411 ], [ %1633, %1659 ], [ %1175, %1172 ]
  %1308 = phi float [ %1176, %1330 ], [ %1176, %1411 ], [ %1611, %1659 ], [ %1176, %1172 ]
  %1309 = phi float [ %1177, %1330 ], [ %1177, %1411 ], [ %1612, %1659 ], [ %1177, %1172 ]
  %1310 = phi float [ %1178, %1330 ], [ %1178, %1411 ], [ %1613, %1659 ], [ %1178, %1172 ]
  %1311 = phi float [ %1179, %1330 ], [ %1179, %1411 ], [ %1538, %1659 ], [ %1179, %1172 ]
  %1312 = phi float [ %1180, %1330 ], [ %1180, %1411 ], [ %1536, %1659 ], [ %1180, %1172 ]
  %1313 = phi float [ %1181, %1330 ], [ %1181, %1411 ], [ %1581, %1659 ], [ %1181, %1172 ]
  %1314 = phi float [ %1182, %1330 ], [ %1182, %1411 ], [ %1582, %1659 ], [ %1182, %1172 ]
  %1315 = phi float [ %1183, %1330 ], [ %1183, %1411 ], [ %1583, %1659 ], [ %1183, %1172 ]
  %1316 = phi float [ %1184, %1330 ], [ %1184, %1411 ], [ %1669, %1659 ], [ %1184, %1172 ]
  %1317 = phi float [ %1185, %1330 ], [ %1185, %1411 ], [ %1670, %1659 ], [ %1185, %1172 ]
  %1318 = phi float [ %1186, %1330 ], [ %1186, %1411 ], [ %1671, %1659 ], [ %1186, %1172 ]
  %1319 = phi float [ %1187, %1330 ], [ %1187, %1411 ], [ %1517, %1659 ], [ %1187, %1172 ]
  %1320 = phi float [ %1188, %1330 ], [ %1188, %1411 ], [ %1518, %1659 ], [ %1188, %1172 ]
  %1321 = phi float [ %1189, %1330 ], [ %1189, %1411 ], [ %1519, %1659 ], [ %1189, %1172 ]
  %1322 = phi float [ %1190, %1330 ], [ %1190, %1411 ], [ %1591, %1659 ], [ %1190, %1172 ]
  %1323 = phi float [ %1191, %1330 ], [ %1191, %1411 ], [ %1588, %1659 ], [ %1191, %1172 ]
  %1324 = phi float [ %1192, %1330 ], [ %1192, %1411 ], [ %1585, %1659 ], [ %1192, %1172 ]
  %1325 = phi float [ %1193, %1330 ], [ %1193, %1411 ], [ %1534, %1659 ], [ %1193, %1172 ]
  %1326 = phi float [ %1194, %1330 ], [ %1194, %1411 ], [ %1529, %1659 ], [ %1194, %1172 ]
  %1327 = phi float [ %1195, %1330 ], [ %1195, %1411 ], [ %1530, %1659 ], [ %1195, %1172 ]
  %1328 = phi float [ %1196, %1330 ], [ %1196, %1411 ], [ %1531, %1659 ], [ %1196, %1172 ]
  %1329 = icmp eq i32 %1254, %1171
  br i1 %1329, label %1672, label %1172

; <label>:1330                                    ; preds = %1172
  %1331 = extractvalue %dx.types.ResRet.f32 %1224, 3
  %1332 = extractvalue %dx.types.ResRet.f32 %1224, 1
  %1333 = extractvalue %dx.types.ResRet.f32 %1224, 0
  %1334 = extractvalue %dx.types.ResRet.f32 %1214, 1
  %1335 = extractvalue %dx.types.ResRet.f32 %1214, 0
  %1336 = extractvalue %dx.types.ResRet.i32 %1210, 3
  %1337 = extractvalue %dx.types.ResRet.i32 %1210, 2
  %1338 = add i32 %1336, 0
  %1339 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1338, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1341 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1339, %dx.types.Handle %1340, float %1263, float %1270, float undef, float undef, i32 0, i32 0, i32 undef, float %1291, float %1293, float undef, float %1292, float %1294, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1342 = extractvalue %dx.types.ResRet.f32 %1341, 0
  %1343 = fmul fast float %1342, %1335
  %1344 = fadd fast float %1343, %1334
  %1345 = call float @dx.op.unary.f32(i32 7, float %1344)  ; Saturate(value)
  %1346 = fmul fast float %1263, %1219
  %1347 = call float @dx.op.tertiary.f32(i32 46, float %1220, float %1270, float %1346)  ; FMad(a,b,c)
  %1348 = fadd fast float %1347, %1333
  %1349 = fmul fast float %1263, %1221
  %1350 = call float @dx.op.tertiary.f32(i32 46, float %1222, float %1270, float %1349)  ; FMad(a,b,c)
  %1351 = fadd fast float %1350, %1332
  %1352 = fmul fast float %1291, %1219
  %1353 = call float @dx.op.tertiary.f32(i32 46, float %1220, float %1293, float %1352)  ; FMad(a,b,c)
  %1354 = fmul fast float %1291, %1221
  %1355 = call float @dx.op.tertiary.f32(i32 46, float %1222, float %1293, float %1354)  ; FMad(a,b,c)
  %1356 = fmul fast float %1292, %1219
  %1357 = call float @dx.op.tertiary.f32(i32 46, float %1220, float %1294, float %1356)  ; FMad(a,b,c)
  %1358 = fmul fast float %1292, %1221
  %1359 = call float @dx.op.tertiary.f32(i32 46, float %1222, float %1294, float %1358)  ; FMad(a,b,c)
  %1360 = add i32 %1337, 0
  %1361 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1360, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1362 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1361, %dx.types.Handle %1340, float %1348, float %1351, float undef, float undef, i32 0, i32 0, i32 undef, float %1353, float %1355, float undef, float %1357, float %1359, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1363 = extractvalue %dx.types.ResRet.f32 %1362, 0
  %1364 = and i32 %1255, 1024
  %1365 = icmp ne i32 %1364, 0
  %1366 = fcmp fast ogt float %1363, 0x3FE0101020000000
  %1367 = uitofp i1 %1366 to float
  %1368 = select i1 %1365, float %1367, float %1363
  %1369 = and i32 %1255, 8192
  %1370 = icmp ne i32 %1369, 0
  %1371 = select i1 %1370, float %1331, float 1.000000e+00
  %1372 = fmul fast float %1263, 2.000000e+00
  %1373 = fadd fast float %1372, -1.000000e+00
  %1374 = call float @dx.op.unary.f32(i32 6, float %1373)  ; FAbs(value)
  %1375 = fmul fast float %1374, %1252
  %1376 = fsub fast float %1375, %1252
  %1377 = call float @dx.op.unary.f32(i32 7, float %1376)  ; Saturate(value)
  %1378 = fmul fast float %1270, 2.000000e+00
  %1379 = fadd fast float %1378, -1.000000e+00
  %1380 = call float @dx.op.unary.f32(i32 6, float %1379)  ; FAbs(value)
  %1381 = fmul fast float %1380, %1253
  %1382 = fsub fast float %1381, %1253
  %1383 = call float @dx.op.unary.f32(i32 7, float %1382)  ; Saturate(value)
  %1384 = fmul fast float %1282, %1215
  %1385 = fsub fast float %1384, %1215
  %1386 = call float @dx.op.unary.f32(i32 7, float %1385)  ; Saturate(value)
  %1387 = fmul fast float %1345, %1371
  %1388 = fmul fast float %1387, %1342
  %1389 = fmul fast float %1388, %1377
  %1390 = fmul fast float %1389, %1368
  %1391 = fmul fast float %1390, %1383
  %1392 = fmul fast float %1391, %1386
  %1393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.f32 %1393, 1
  %1395 = extractvalue %dx.types.CBufRet.f32 %1393, 0
  %1396 = fsub fast float %1299, %1395
  %1397 = fmul fast float %1396, %1394
  %1398 = call float @dx.op.unary.f32(i32 7, float %1397)  ; Saturate(value)
  %1399 = fmul fast float %1392, %1216
  %1400 = fadd fast float %1392, %1216
  %1401 = fmul fast float %1400, %1225
  %1402 = fsub fast float %1401, %1225
  %1403 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  %1404 = and i32 %1255, 128
  %1405 = icmp ne i32 %1404, 0
  %1406 = select i1 %1405, float %1403, float %1399
  %1407 = fmul fast float %1406, %1398
  %1408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1409 = extractvalue %dx.types.CBufRet.f32 %1408, 0
  %1410 = fcmp fast ugt float %1407, %1409
  br i1 %1410, label %1411, label %1304

; <label>:1411                                    ; preds = %1330
  %1412 = select i1 %1370, float %1407, float 0.000000e+00
  %1413 = fadd fast float %1412, %1173
  %1414 = call float @dx.op.unary.f32(i32 7, float %1413)  ; Saturate(value)
  br i1 %1370, label %1304, label %1415

; <label>:1415                                    ; preds = %1411
  %1416 = and i32 %1255, 4
  %1417 = and i32 %1255, 8
  %1418 = add i32 %1211, 0
  %1419 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1418, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1420 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1421 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1419, %dx.types.Handle %1420, float %1348, float %1351, float undef, float undef, i32 0, i32 0, i32 undef, float %1353, float %1355, float undef, float %1357, float %1359, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1422 = extractvalue %dx.types.ResRet.f32 %1421, 0
  %1423 = extractvalue %dx.types.ResRet.f32 %1421, 1
  %1424 = extractvalue %dx.types.ResRet.f32 %1421, 2
  %1425 = extractvalue %dx.types.ResRet.f32 %1421, 3
  %1426 = bitcast float %1237 to i32
  %1427 = and i32 %1426, 255
  %1428 = uitofp i32 %1427 to float
  %1429 = lshr i32 %1426, 8
  %1430 = and i32 %1429, 255
  %1431 = uitofp i32 %1430 to float
  %1432 = fmul fast float %1425, %1428
  %1433 = fadd fast float %1432, %1431
  %1434 = fmul fast float %1433, 0x3F70101000000000
  %1435 = add i32 %1212, 0
  %1436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1435, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1437 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1436, %dx.types.Handle %1420, float %1348, float %1351, float undef, float undef, i32 0, i32 0, i32 undef, float %1353, float %1355, float undef, float %1357, float %1359, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  %1439 = extractvalue %dx.types.ResRet.f32 %1437, 1
  %1440 = extractvalue %dx.types.ResRet.f32 %1437, 2
  %1441 = extractvalue %dx.types.ResRet.f32 %1437, 3
  %1442 = bitcast float %1231 to i32
  %1443 = and i32 %1442, 255
  %1444 = uitofp i32 %1443 to float
  %1445 = lshr i32 %1442, 8
  %1446 = and i32 %1445, 255
  %1447 = uitofp i32 %1446 to float
  %1448 = lshr i32 %1442, 16
  %1449 = and i32 %1448, 255
  %1450 = uitofp i32 %1449 to float
  %1451 = fmul fast float %1450, 0x3F70101000000000
  %1452 = fmul fast float %1438, %1444
  %1453 = fadd fast float %1452, %1447
  %1454 = fmul fast float %1453, 0x3F70101000000000
  %1455 = fadd fast float %1439, -5.000000e-01
  %1456 = fadd fast float %1441, -5.000000e-01
  %1457 = fmul fast float %1455, %1451
  %1458 = fmul fast float %1456, %1451
  %1459 = fadd fast float %1457, 5.000000e-01
  %1460 = fadd fast float %1458, 5.000000e-01
  %1461 = fmul fast float %1422, %1240
  %1462 = fmul fast float %1423, %1241
  %1463 = fmul fast float %1424, %1242
  %1464 = fmul fast float %1459, 2.000000e+00
  %1465 = fadd fast float %1464, -1.000000e+00
  %1466 = fmul fast float %1460, 2.000000e+00
  %1467 = fadd fast float %1466, -1.000000e+00
  %1468 = fadd fast float %1465, %1467
  %1469 = fmul fast float %1468, 5.000000e-01
  %1470 = fsub fast float %1465, %1467
  %1471 = fmul fast float %1470, 5.000000e-01
  %1472 = call float @dx.op.unary.f32(i32 6, float %1469)  ; FAbs(value)
  %1473 = fsub fast float 1.000000e+00, %1472
  %1474 = call float @dx.op.unary.f32(i32 6, float %1471)  ; FAbs(value)
  %1475 = fsub fast float %1473, %1474
  %1476 = call float @dx.op.dot3.f32(i32 55, float %1469, float %1471, float %1475, float %1469, float %1471, float %1475)  ; Dot3(ax,ay,az,bx,by,bz)
  %1477 = call float @dx.op.unary.f32(i32 25, float %1476)  ; Rsqrt(value)
  %1478 = fmul fast float %1469, %1477
  %1479 = fmul fast float %1471, %1477
  %1480 = fmul fast float %1477, %1475
  %1481 = fmul fast float %1480, %1205
  %1482 = fmul fast float %1480, %1206
  %1483 = fmul fast float %1480, %1207
  %1484 = fmul fast float %1478, %1228
  %1485 = fmul fast float %1478, %1229
  %1486 = fmul fast float %1478, %1230
  %1487 = fadd fast float %1484, %1481
  %1488 = fadd fast float %1485, %1482
  %1489 = fadd fast float %1486, %1483
  %1490 = fmul fast float %1479, %1234
  %1491 = fmul fast float %1479, %1235
  %1492 = fmul fast float %1479, %1236
  %1493 = fadd fast float %1487, %1490
  %1494 = fadd fast float %1488, %1491
  %1495 = fadd fast float %1489, %1492
  %1496 = call float @dx.op.dot3.f32(i32 55, float %1493, float %1494, float %1495, float %1493, float %1494, float %1495)  ; Dot3(ax,ay,az,bx,by,bz)
  %1497 = call float @dx.op.unary.f32(i32 25, float %1496)  ; Rsqrt(value)
  %1498 = fmul fast float %1493, %1497
  %1499 = fmul fast float %1494, %1497
  %1500 = fmul fast float %1495, %1497
  %1501 = icmp ne i32 %1417, 0
  %1502 = select i1 %1501, float 1.000000e+00, float 0.000000e+00
  %1503 = fmul fast float %1407, %1502
  %1504 = and i32 %1255, 1
  %1505 = icmp eq i32 %1504, 0
  br i1 %1505, label %1506, label %1510

; <label>:1506                                    ; preds = %1415
  %1507 = fsub fast float %1498, %1187
  %1508 = fsub fast float %1499, %1188
  %1509 = fsub fast float %1500, %1189
  br label %1510

; <label>:1510                                    ; preds = %1506, %1415
  %1511 = phi float [ %1507, %1506 ], [ %1498, %1415 ]
  %1512 = phi float [ %1508, %1506 ], [ %1499, %1415 ]
  %1513 = phi float [ %1509, %1506 ], [ %1500, %1415 ]
  %1514 = fmul float %1513, %1503
  %1515 = fmul float %1512, %1503
  %1516 = fmul float %1511, %1503
  %1517 = fadd fast float %1516, %1187
  %1518 = fadd fast float %1515, %1188
  %1519 = fadd fast float %1514, %1189
  %1520 = icmp ne i32 %1416, 0
  %1521 = select i1 %1520, float 1.000000e+00, float 0.000000e+00
  %1522 = fmul fast float %1407, %1521
  %1523 = fsub fast float %1461, %1194
  %1524 = fsub fast float %1462, %1195
  %1525 = fsub fast float %1463, %1196
  %1526 = fmul fast float %1523, %1522
  %1527 = fmul fast float %1524, %1522
  %1528 = fmul fast float %1525, %1522
  %1529 = fadd fast float %1526, %1194
  %1530 = fadd fast float %1527, %1195
  %1531 = fadd fast float %1528, %1196
  %1532 = fsub fast float %1434, %1193
  %1533 = fmul fast float %1532, %1522
  %1534 = fadd fast float %1533, %1193
  %1535 = fmul fast float %1522, %1180
  %1536 = fsub fast float %1180, %1535
  %1537 = fmul fast float %1522, %1179
  %1538 = fsub fast float %1179, %1537
  %1539 = bitcast float %1249 to i32
  %1540 = lshr i32 %1539, 16
  %1541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1540)  ; LegacyF16ToF32(value)
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = and i32 %1543, 1
  %1545 = icmp eq i32 %1544, 0
  br i1 %1545, label %1546, label %1571

; <label>:1546                                    ; preds = %1510
  %1547 = fadd fast float %1434, 0xBFB99999A0000000
  %1548 = call float @dx.op.unary.f32(i32 7, float %1547)  ; Saturate(value)
  %1549 = fmul fast float %1548, 0x3FF1C71C80000000
  %1550 = fsub fast float 1.000000e+00, %1549
  %1551 = call float @dx.op.unary.f32(i32 7, float %1550)  ; Saturate(value)
  %1552 = fmul fast float %1551, %1461
  %1553 = fmul fast float %1551, %1462
  %1554 = fmul fast float %1551, %1463
  %1555 = call float @dx.op.unary.f32(i32 7, float %1552)  ; Saturate(value)
  %1556 = call float @dx.op.unary.f32(i32 7, float %1553)  ; Saturate(value)
  %1557 = call float @dx.op.unary.f32(i32 7, float %1554)  ; Saturate(value)
  %1558 = call float @dx.op.binary.f32(i32 35, float %1556, float %1557)  ; FMax(a,b)
  %1559 = call float @dx.op.binary.f32(i32 35, float %1555, float %1558)  ; FMax(a,b)
  %1560 = fcmp fast ogt float %1559, 0.000000e+00
  %1561 = bitcast float %1559 to i32
  %1562 = sub nsw i32 2129859010, %1561
  %1563 = bitcast i32 %1562 to float
  %1564 = select i1 %1560, float %1563, float 0.000000e+00
  %1565 = fmul fast float %1555, %1541
  %1566 = fmul fast float %1556, %1541
  %1567 = fmul fast float %1557, %1541
  %1568 = fmul fast float %1565, %1564
  %1569 = fmul fast float %1566, %1564
  %1570 = fmul fast float %1567, %1564
  br label %1571

; <label>:1571                                    ; preds = %1546, %1510
  %1572 = phi float [ %1541, %1510 ], [ %1568, %1546 ]
  %1573 = phi float [ %1541, %1510 ], [ %1569, %1546 ]
  %1574 = phi float [ %1541, %1510 ], [ %1570, %1546 ]
  %1575 = fsub fast float %1572, %1181
  %1576 = fsub fast float %1573, %1182
  %1577 = fsub fast float %1574, %1183
  %1578 = fmul fast float %1575, %1522
  %1579 = fmul fast float %1576, %1522
  %1580 = fmul fast float %1577, %1522
  %1581 = fadd fast float %1578, %1181
  %1582 = fadd fast float %1579, %1182
  %1583 = fadd fast float %1580, %1183
  %1584 = fadd fast float %1407, %1192
  %1585 = call float @dx.op.unary.f32(i32 7, float %1584)  ; Saturate(value)
  %1586 = fsub fast float %1454, %1191
  %1587 = fmul fast float %1586, %1503
  %1588 = fadd fast float %1587, %1191
  %1589 = fsub fast float %1440, %1190
  %1590 = fmul fast float %1589, %1503
  %1591 = fadd fast float %1590, %1190
  br i1 %1505, label %1600, label %1592

; <label>:1592                                    ; preds = %1571
  %1593 = and i32 %1255, 32768
  %1594 = icmp eq i32 %1593, 0
  br i1 %1594, label %1610, label %1595

; <label>:1595                                    ; preds = %1592
  %1596 = fmul fast float %1503, 1.270000e+02
  %1597 = fadd fast float %1596, %1176
  %1598 = fadd fast float %1596, %1177
  %1599 = fadd fast float %1596, %1178
  br label %1610

; <label>:1600                                    ; preds = %1571
  %1601 = fsub fast float 1.270000e+02, %1176
  %1602 = fsub fast float 1.270000e+02, %1177
  %1603 = fsub fast float 1.270000e+02, %1178
  %1604 = fmul fast float %1503, %1601
  %1605 = fmul fast float %1503, %1602
  %1606 = fmul fast float %1503, %1603
  %1607 = fadd fast float %1604, %1176
  %1608 = fadd fast float %1605, %1177
  %1609 = fadd fast float %1606, %1178
  br label %1610

; <label>:1610                                    ; preds = %1600, %1595, %1592
  %1611 = phi float [ %1597, %1595 ], [ %1176, %1592 ], [ %1607, %1600 ]
  %1612 = phi float [ %1598, %1595 ], [ %1177, %1592 ], [ %1608, %1600 ]
  %1613 = phi float [ %1599, %1595 ], [ %1178, %1592 ], [ %1609, %1600 ]
  %1614 = call float @dx.op.dot3.f32(i32 55, float %1461, float %1462, float %1463, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1616 = extractvalue %dx.types.CBufRet.f32 %1615, 0
  %1617 = extractvalue %dx.types.CBufRet.f32 %1615, 1
  %1618 = fmul fast float %1617, %1614
  %1619 = fadd fast float %1618, %1616
  %1620 = call float @dx.op.unary.f32(i32 7, float %1619)  ; Saturate(value)
  %1621 = bitcast float %1243 to i32
  %1622 = and i32 %1621, 65535
  %1623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1622)  ; LegacyF16ToF32(value)
  %1624 = lshr i32 %1621, 16
  %1625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1624)  ; LegacyF16ToF32(value)
  %1626 = fcmp fast oge float %1623, 0.000000e+00
  %1627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1628 = extractvalue %dx.types.CBufRet.f32 %1627, 0
  %1629 = select i1 %1626, float %1623, float %1628
  %1630 = fadd fast float %1629, %1625
  %1631 = fsub fast float %1620, %1175
  %1632 = fmul fast float %1631, %1407
  %1633 = fadd fast float %1632, %1175
  %1634 = fmul fast float %1630, %1407
  %1635 = call float @dx.op.binary.f32(i32 35, float %1174, float %1634)  ; FMax(a,b)
  %1636 = and i32 %1255, 16
  %1637 = icmp eq i32 %1636, 0
  br i1 %1637, label %1659, label %1638

; <label>:1638                                    ; preds = %1610
  %1639 = add i32 %1246, 0
  %1640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1639, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1641 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1640, %dx.types.Handle %1420, float %1348, float %1351, float undef, float undef, i32 0, i32 0, i32 undef, float %1353, float %1355, float undef, float %1357, float %1359, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1642 = extractvalue %dx.types.ResRet.f32 %1641, 0
  %1643 = extractvalue %dx.types.ResRet.f32 %1641, 1
  %1644 = extractvalue %dx.types.ResRet.f32 %1641, 2
  %1645 = and i32 %1539, 65535
  %1646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1645)  ; LegacyF16ToF32(value)
  %1647 = fmul fast float %1642, %1240
  %1648 = fmul fast float %1643, %1241
  %1649 = fmul fast float %1644, %1242
  %1650 = and i32 %1255, 16384
  %1651 = icmp ne i32 %1650, 0
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 0
  %1654 = select i1 %1651, float %1653, float 1.000000e+00
  %1655 = fmul fast float %1654, %1646
  %1656 = fmul fast float %1647, %1655
  %1657 = fmul fast float %1648, %1655
  %1658 = fmul fast float %1649, %1655
  br label %1659

; <label>:1659                                    ; preds = %1638, %1610
  %1660 = phi float [ %1656, %1638 ], [ 0.000000e+00, %1610 ]
  %1661 = phi float [ %1657, %1638 ], [ 0.000000e+00, %1610 ]
  %1662 = phi float [ %1658, %1638 ], [ 0.000000e+00, %1610 ]
  %1663 = fsub fast float %1660, %1184
  %1664 = fsub fast float %1661, %1185
  %1665 = fsub fast float %1662, %1186
  %1666 = fmul fast float %1663, %1407
  %1667 = fmul fast float %1664, %1407
  %1668 = fmul fast float %1665, %1407
  %1669 = fadd fast float %1666, %1184
  %1670 = fadd fast float %1667, %1185
  %1671 = fadd fast float %1668, %1186
  br label %1304

; <label>:1672                                    ; preds = %1304
  br label %1673

; <label>:1673                                    ; preds = %1672, %1068
  %1674 = phi float [ 0.000000e+00, %1068 ], [ %1305, %1672 ]
  %1675 = phi float [ %1090, %1068 ], [ %1306, %1672 ]
  %1676 = phi float [ %1088, %1068 ], [ %1307, %1672 ]
  %1677 = phi float [ %1080, %1068 ], [ %1308, %1672 ]
  %1678 = phi float [ %1081, %1068 ], [ %1309, %1672 ]
  %1679 = phi float [ %1082, %1068 ], [ %1310, %1672 ]
  %1680 = phi float [ 0.000000e+00, %1068 ], [ %1311, %1672 ]
  %1681 = phi float [ 0.000000e+00, %1068 ], [ %1312, %1672 ]
  %1682 = phi float [ %1074, %1068 ], [ %1313, %1672 ]
  %1683 = phi float [ %1075, %1068 ], [ %1314, %1672 ]
  %1684 = phi float [ %1076, %1068 ], [ %1315, %1672 ]
  %1685 = phi float [ %1077, %1068 ], [ %1316, %1672 ]
  %1686 = phi float [ %1078, %1068 ], [ %1317, %1672 ]
  %1687 = phi float [ %1079, %1068 ], [ %1318, %1672 ]
  %1688 = phi float [ %1116, %1068 ], [ %1319, %1672 ]
  %1689 = phi float [ %1117, %1068 ], [ %1320, %1672 ]
  %1690 = phi float [ %1118, %1068 ], [ %1321, %1672 ]
  %1691 = phi float [ %1086, %1068 ], [ %1322, %1672 ]
  %1692 = phi float [ %1085, %1068 ], [ %1323, %1672 ]
  %1693 = phi float [ 0.000000e+00, %1068 ], [ %1324, %1672 ]
  %1694 = phi float [ %1083, %1068 ], [ %1325, %1672 ]
  %1695 = phi float [ %1071, %1068 ], [ %1326, %1672 ]
  %1696 = phi float [ %1072, %1068 ], [ %1327, %1672 ]
  %1697 = phi float [ %1073, %1068 ], [ %1328, %1672 ]
  %1698 = call float @dx.op.dot3.f32(i32 55, float %1688, float %1689, float %1690, float %1688, float %1689, float %1690)  ; Dot3(ax,ay,az,bx,by,bz)
  %1699 = call float @dx.op.unary.f32(i32 25, float %1698)  ; Rsqrt(value)
  %1700 = fmul fast float %1699, %1688
  %1701 = fmul fast float %1699, %1689
  %1702 = fmul fast float %1699, %1690
  %1703 = fadd fast float %1693, %1084
  %1704 = call float @dx.op.unary.f32(i32 7, float %1703)  ; Saturate(value)
  %1705 = call float @dx.op.dot3.f32(i32 55, float %1700, float %1701, float %1702, float %1700, float %1701, float %1702)  ; Dot3(ax,ay,az,bx,by,bz)
  %1706 = call float @dx.op.unary.f32(i32 25, float %1705)  ; Rsqrt(value)
  %1707 = fmul fast float %1706, %1700
  %1708 = fmul fast float %1706, %1701
  %1709 = fmul fast float %1706, %1702
  %1710 = fadd fast float %1694, 0xBFB99999A0000000
  %1711 = call float @dx.op.unary.f32(i32 7, float %1710)  ; Saturate(value)
  %1712 = fmul fast float %1711, 0x3FF1C71C80000000
  %1713 = call float @dx.op.binary.f32(i32 36, float %1694, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1714 = fsub fast float 1.000000e+00, %1712
  %1715 = call float @dx.op.unary.f32(i32 7, float %1714)  ; Saturate(value)
  %1716 = fmul fast float %1715, %1695
  %1717 = fmul fast float %1715, %1696
  %1718 = fmul fast float %1715, %1697
  %1719 = call float @dx.op.unary.f32(i32 7, float %1716)  ; Saturate(value)
  %1720 = call float @dx.op.unary.f32(i32 7, float %1717)  ; Saturate(value)
  %1721 = call float @dx.op.unary.f32(i32 7, float %1718)  ; Saturate(value)
  %1722 = fmul fast float %1712, %1695
  %1723 = fmul fast float %1712, %1696
  %1724 = fmul fast float %1712, %1697
  %1725 = fadd fast float %1722, %1713
  %1726 = fadd fast float %1723, %1713
  %1727 = fadd fast float %1724, %1713
  %1728 = call float @dx.op.unary.f32(i32 7, float %1725)  ; Saturate(value)
  %1729 = call float @dx.op.unary.f32(i32 7, float %1726)  ; Saturate(value)
  %1730 = call float @dx.op.unary.f32(i32 7, float %1727)  ; Saturate(value)
  %1731 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = and i32 %1733, 1
  %1735 = icmp eq i32 %1734, 0
  br i1 %1735, label %1750, label %1736

; <label>:1736                                    ; preds = %1673
  %1737 = call float @dx.op.binary.f32(i32 35, float %1720, float %1721)  ; FMax(a,b)
  %1738 = call float @dx.op.binary.f32(i32 35, float %1719, float %1737)  ; FMax(a,b)
  %1739 = fcmp fast ogt float %1738, 0.000000e+00
  %1740 = bitcast float %1738 to i32
  %1741 = sub nsw i32 2129859010, %1740
  %1742 = bitcast i32 %1741 to float
  %1743 = select i1 %1739, float %1742, float 0.000000e+00
  %1744 = fmul fast float %1719, %1682
  %1745 = fmul fast float %1720, %1683
  %1746 = fmul fast float %1721, %1684
  %1747 = fmul fast float %1744, %1743
  %1748 = fmul fast float %1745, %1743
  %1749 = fmul fast float %1746, %1743
  br label %1750

; <label>:1750                                    ; preds = %1736, %1673
  %1751 = phi float [ %1747, %1736 ], [ %1682, %1673 ]
  %1752 = phi float [ %1748, %1736 ], [ %1683, %1673 ]
  %1753 = phi float [ %1749, %1736 ], [ %1684, %1673 ]
  %1754 = call float @dx.op.binary.f32(i32 36, float %1677, float 1.270000e+02)  ; FMin(a,b)
  %1755 = call float @dx.op.binary.f32(i32 36, float %1678, float 1.270000e+02)  ; FMin(a,b)
  %1756 = call float @dx.op.binary.f32(i32 36, float %1679, float 1.270000e+02)  ; FMin(a,b)
  %1757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1758 = extractvalue %dx.types.CBufRet.i32 %1757, 3
  %1759 = and i32 %1758, 8
  %1760 = icmp ne i32 %1759, 0
  %1761 = call float @dx.op.binary.f32(i32 35, float %1719, float %1695)  ; FMax(a,b)
  %1762 = call float @dx.op.binary.f32(i32 35, float %1720, float %1695)  ; FMax(a,b)
  %1763 = call float @dx.op.binary.f32(i32 35, float %1721, float %1695)  ; FMax(a,b)
  %1764 = call float @dx.op.dot3.f32(i32 55, float %1719, float %1720, float %1721, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1765 = select i1 %238, float %1695, float %1719
  %1766 = select i1 %238, float %1764, float %1720
  %1767 = select i1 %238, float 1.000000e+00, float %1721
  %1768 = select i1 %1760, float %1761, float %1765
  %1769 = select i1 %1760, float %1762, float %1766
  %1770 = select i1 %1760, float %1763, float %1767
  %1771 = call float @dx.op.dot3.f32(i32 55, float %1751, float %1752, float %1753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1772 = select i1 %238, float %1771, float %1751
  %1773 = select i1 %238, float %1771, float %1752
  %1774 = select i1 %238, float %1771, float %1753
  %1775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1776 = extractvalue %dx.types.CBufRet.f32 %1775, 0
  %1777 = extractvalue %dx.types.CBufRet.f32 %1775, 1
  %1778 = extractvalue %dx.types.CBufRet.f32 %1775, 2
  %1779 = fadd fast float %1776, %147
  %1780 = fadd fast float %1777, %148
  %1781 = fadd fast float %1778, %149
  %1782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.f32 %1782, 0
  %1784 = extractvalue %dx.types.CBufRet.f32 %1782, 1
  %1785 = fsub fast float %1779, %1783
  %1786 = fsub fast float %1780, %1784
  %1787 = fmul fast float %1785, %1785
  %1788 = fmul fast float %1786, %1786
  %1789 = fadd fast float %1787, %1788
  %1790 = call float @dx.op.unary.f32(i32 24, float %1789)  ; Sqrt(value)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1782, 2
  %1792 = fcmp fast olt float %1790, %1791
  br i1 %1792, label %1793, label %1860

; <label>:1793                                    ; preds = %1750
  %1794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1794, 0
  %1796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1797 = extractvalue %dx.types.CBufRet.f32 %1796, 0
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 0
  %1800 = extractvalue %dx.types.CBufRet.f32 %1794, 1
  %1801 = extractvalue %dx.types.CBufRet.f32 %1796, 1
  %1802 = extractvalue %dx.types.CBufRet.f32 %1798, 1
  %1803 = extractvalue %dx.types.CBufRet.f32 %1794, 3
  %1804 = extractvalue %dx.types.CBufRet.f32 %1796, 3
  %1805 = extractvalue %dx.types.CBufRet.f32 %1798, 3
  %1806 = fadd fast float %1803, %1779
  %1807 = fadd fast float %1804, %1780
  %1808 = fadd fast float %1805, %1781
  %1809 = fmul fast float %1806, %1795
  %1810 = call float @dx.op.tertiary.f32(i32 46, float %1807, float %1797, float %1809)  ; FMad(a,b,c)
  %1811 = call float @dx.op.tertiary.f32(i32 46, float %1808, float %1799, float %1810)  ; FMad(a,b,c)
  %1812 = fmul fast float %1806, %1800
  %1813 = call float @dx.op.tertiary.f32(i32 46, float %1807, float %1801, float %1812)  ; FMad(a,b,c)
  %1814 = call float @dx.op.tertiary.f32(i32 46, float %1808, float %1802, float %1813)  ; FMad(a,b,c)
  %1815 = fsub fast float %1811, %1803
  %1816 = fsub fast float %1814, %1804
  %1817 = fsub fast float %1815, %1783
  %1818 = fadd fast float %1817, %1791
  %1819 = fsub fast float %1816, %1784
  %1820 = fadd fast float %1819, %1791
  %1821 = extractvalue %dx.types.CBufRet.f32 %1782, 3
  %1822 = fmul fast float %1818, %1821
  %1823 = fmul fast float %1820, %1821
  %1824 = call float @dx.op.unary.f32(i32 7, float %1822)  ; Saturate(value)
  %1825 = call float @dx.op.unary.f32(i32 7, float %1823)  ; Saturate(value)
  %1826 = fsub fast float 1.000000e+00, %1824
  %1827 = fsub fast float 1.000000e+00, %1825
  %1828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %64, float %1826, float %1827, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1829 = extractvalue %dx.types.ResRet.f32 %1828, 0
  %1830 = fcmp fast ugt float %1829, 0.000000e+00
  br i1 %1830, label %1831, label %2134

; <label>:1831                                    ; preds = %1793
  %1832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1833 = extractvalue %dx.types.CBufRet.f32 %1832, 2
  %1834 = fmul fast float %1833, %1829
  %1835 = extractvalue %dx.types.CBufRet.f32 %1832, 3
  %1836 = fadd fast float %1835, %1834
  %1837 = extractvalue %dx.types.CBufRet.f32 %1798, 2
  %1838 = fadd fast float %1836, %1805
  %1839 = fmul fast float %1811, %1799
  %1840 = call float @dx.op.tertiary.f32(i32 46, float %1814, float %1802, float %1839)  ; FMad(a,b,c)
  %1841 = call float @dx.op.tertiary.f32(i32 46, float %1838, float %1837, float %1840)  ; FMad(a,b,c)
  %1842 = fsub fast float %1841, %1805
  %1843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.f32 %1843, 2
  %1845 = fsub fast float %1842, %1844
  %1846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %64, float %1826, float %1827, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1847 = extractvalue %dx.types.ResRet.f32 %1846, 0
  %1848 = extractvalue %dx.types.ResRet.f32 %1846, 1
  %1849 = extractvalue %dx.types.ResRet.f32 %1846, 2
  %1850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %64, float %1826, float %1827, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1851 = extractvalue %dx.types.ResRet.f32 %1850, 0
  %1852 = extractvalue %dx.types.ResRet.f32 %1850, 1
  %1853 = extractvalue %dx.types.ResRet.f32 %1850, 2
  %1854 = fadd fast float %1851, %1847
  %1855 = fmul fast float %1854, 0x3F847AE140000000
  %1856 = fadd fast float %1852, %1848
  %1857 = fmul fast float %1856, 0x3F847AE140000000
  %1858 = fadd fast float %1853, %1849
  %1859 = fmul fast float %1858, 0x3F847AE140000000
  br label %2134

; <label>:1860                                    ; preds = %1750
  %1861 = and i32 %214, 1
  %1862 = icmp eq i32 %1861, 0
  br i1 %1862, label %2134, label %1863

; <label>:1863                                    ; preds = %1860
  %1864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.f32 %1864, 0
  %1866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.f32 %1866, 0
  %1868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1869 = extractvalue %dx.types.CBufRet.f32 %1868, 0
  %1870 = extractvalue %dx.types.CBufRet.f32 %1864, 1
  %1871 = extractvalue %dx.types.CBufRet.f32 %1866, 1
  %1872 = extractvalue %dx.types.CBufRet.f32 %1868, 1
  %1873 = extractvalue %dx.types.CBufRet.f32 %1864, 3
  %1874 = extractvalue %dx.types.CBufRet.f32 %1866, 3
  %1875 = extractvalue %dx.types.CBufRet.f32 %1868, 3
  %1876 = fadd fast float %1873, %1779
  %1877 = fadd fast float %1874, %1780
  %1878 = fadd fast float %1875, %1781
  %1879 = fmul fast float %1876, %1865
  %1880 = call float @dx.op.tertiary.f32(i32 46, float %1877, float %1867, float %1879)  ; FMad(a,b,c)
  %1881 = call float @dx.op.tertiary.f32(i32 46, float %1878, float %1869, float %1880)  ; FMad(a,b,c)
  %1882 = fmul fast float %1876, %1870
  %1883 = call float @dx.op.tertiary.f32(i32 46, float %1877, float %1871, float %1882)  ; FMad(a,b,c)
  %1884 = call float @dx.op.tertiary.f32(i32 46, float %1878, float %1872, float %1883)  ; FMad(a,b,c)
  %1885 = fsub fast float %1881, %1873
  %1886 = fsub fast float %1884, %1874
  %1887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1888 = extractvalue %dx.types.CBufRet.f32 %1887, 0
  %1889 = extractvalue %dx.types.CBufRet.f32 %1887, 1
  %1890 = extractvalue %dx.types.CBufRet.f32 %1887, 2
  %1891 = extractvalue %dx.types.CBufRet.f32 %1887, 3
  %1892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1893 = extractvalue %dx.types.CBufRet.f32 %1892, 3
  %1894 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1895 = extractvalue %dx.types.CBufRet.i32 %1894, 0
  %1896 = extractvalue %dx.types.CBufRet.i32 %1894, 1
  %1897 = udiv i32 %1896, %1895
  %1898 = fsub fast float %1885, %1888
  %1899 = fsub fast float %1886, %1889
  %1900 = call float @dx.op.binary.f32(i32 35, float %1898, float 0.000000e+00)  ; FMax(a,b)
  %1901 = call float @dx.op.binary.f32(i32 35, float %1899, float 0.000000e+00)  ; FMax(a,b)
  %1902 = call float @dx.op.binary.f32(i32 36, float %1900, float %1890)  ; FMin(a,b)
  %1903 = call float @dx.op.binary.f32(i32 36, float %1901, float %1891)  ; FMin(a,b)
  %1904 = add i32 %1895, -1
  %1905 = add i32 %1897, -1
  %1906 = fmul fast float %1902, %1893
  %1907 = fmul fast float %1903, %1893
  %1908 = fptoui float %1906 to i32
  %1909 = fptoui float %1907 to i32
  %1910 = call i32 @dx.op.binary.i32(i32 40, i32 %1908, i32 %1904)  ; UMin(a,b)
  %1911 = call i32 @dx.op.binary.i32(i32 40, i32 %1909, i32 %1905)  ; UMin(a,b)
  %1912 = mul i32 %1911, %1895
  %1913 = add i32 %1912, %1910
  %1914 = shl i32 %1913, 2
  %1915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1916 = extractvalue %dx.types.ResRet.i32 %1915, 0
  %1917 = icmp eq i32 %1916, -1
  br i1 %1917, label %2134, label %1918

; <label>:1918                                    ; preds = %1863
  %1919 = mul i32 %1916, 148
  %1920 = add i32 %1919, 4
  %1921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1920, i32 undef)  ; BufferLoad(srv,index,wot)
  %1922 = extractvalue %dx.types.ResRet.f32 %1921, 0
  %1923 = add i32 %1919, 8
  %1924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %1925 = extractvalue %dx.types.ResRet.f32 %1924, 0
  %1926 = add i32 %1919, 36
  %1927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1926, i32 undef)  ; BufferLoad(srv,index,wot)
  %1928 = extractvalue %dx.types.ResRet.f32 %1927, 0
  %1929 = add i32 %1919, 60
  %1930 = add i32 %1919, 92
  %1931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.i32 %1931, 0
  %1933 = add i32 %1919, 116
  %1934 = fsub fast float %1885, %1922
  %1935 = fsub fast float %1886, %1925
  %1936 = fmul fast float %1893, %1934
  %1937 = fmul fast float %1893, %1935
  %1938 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  %1939 = call float @dx.op.unary.f32(i32 7, float %1937)  ; Saturate(value)
  %1940 = fsub fast float 1.000000e+00, %1939
  %1941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1942 = extractvalue %dx.types.CBufRet.f32 %1941, 2
  %1943 = call float @dx.op.unary.f32(i32 83, float %1938)  ; DerivCoarseX(value)
  %1944 = call float @dx.op.unary.f32(i32 83, float %1940)  ; DerivCoarseX(value)
  %1945 = call float @dx.op.unary.f32(i32 84, float %1938)  ; DerivCoarseY(value)
  %1946 = call float @dx.op.unary.f32(i32 84, float %1940)  ; DerivCoarseY(value)
  %1947 = fmul fast float %1943, %1942
  %1948 = fmul fast float %1944, %1942
  %1949 = fmul fast float %1945, %1942
  %1950 = fmul fast float %1946, %1942
  %1951 = call float @dx.op.dot2.f32(i32 54, float %1949, float %1950, float %1949, float %1950)  ; Dot2(ax,ay,bx,by)
  %1952 = call float @dx.op.dot2.f32(i32 54, float %1947, float %1948, float %1947, float %1948)  ; Dot2(ax,ay,bx,by)
  %1953 = call float @dx.op.binary.f32(i32 35, float %1952, float %1951)  ; FMax(a,b)
  %1954 = call float @dx.op.unary.f32(i32 23, float %1953)  ; Log(value)
  %1955 = fmul fast float %1954, 5.000000e-01
  %1956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1957 = extractvalue %dx.types.CBufRet.f32 %1956, 1
  %1958 = fadd fast float %1957, %1955
  %1959 = call float @dx.op.binary.f32(i32 35, float %1958, float 0.000000e+00)  ; FMax(a,b)
  %1960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1961 = extractvalue %dx.types.CBufRet.f32 %1960, 3
  %1962 = fadd fast float %1961, %1959
  %1963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1964 = extractvalue %dx.types.CBufRet.f32 %1963, 3
  %1965 = fadd fast float %1962, %1964
  %1966 = add i32 %1932, 0
  %1967 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1966, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1968 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1967, i32 0)  ; GetDimensions(handle,mipLevel)
  %1969 = extractvalue %dx.types.Dimensions %1968, 0
  %1970 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1969)  ; FirstbitLo(value)
  %1971 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1972 = extractvalue %dx.types.CBufRet.i32 %1971, 1
  %1973 = sub nsw i32 %1972, %1970
  %1974 = sitofp i32 %1973 to float
  %1975 = fsub fast float %1965, %1974
  %1976 = call float @dx.op.binary.f32(i32 35, float %1975, float 0.000000e+00)  ; FMax(a,b)
  %1977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1967, %dx.types.Handle %62, float %1938, float %1940, float %1928, float undef, i32 0, i32 0, i32 undef, float %1976)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1978 = extractvalue %dx.types.ResRet.f32 %1977, 0
  %1979 = fcmp ule float %1978, 0x3FE0101020000000
  %1980 = extractvalue %dx.types.CBufRet.i32 %1971, 0
  %1981 = and i32 %1980, 128
  %1982 = icmp ne i32 %1981, 0
  %1983 = and i1 %1979, %1982
  br i1 %1983, label %2134, label %1984

; <label>:1984                                    ; preds = %1918
  %1985 = add i32 %1919, 20
  %1986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.f32 %1986, 0
  %1988 = add i32 %1919, 24
  %1989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %1990 = extractvalue %dx.types.ResRet.f32 %1989, 0
  %1991 = add i32 %1919, 40
  %1992 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1991, i32 undef)  ; BufferLoad(srv,index,wot)
  %1993 = extractvalue %dx.types.ResRet.f32 %1992, 0
  %1994 = add i32 %1919, 96
  %1995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %1996 = extractvalue %dx.types.ResRet.i32 %1995, 0
  %1997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1998 = extractvalue %dx.types.CBufRet.f32 %1997, 2
  %1999 = fmul fast float %1998, %1938
  %2000 = fmul fast float %1998, %1940
  %2001 = extractvalue %dx.types.CBufRet.f32 %1997, 3
  %2002 = fadd fast float %1999, %2001
  %2003 = fadd fast float %2000, %2001
  %2004 = add i32 %1996, 0
  %2005 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2004, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2006 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2005, i32 0)  ; GetDimensions(handle,mipLevel)
  %2007 = extractvalue %dx.types.Dimensions %2006, 0
  %2008 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2007)  ; FirstbitLo(value)
  %2009 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2010 = extractvalue %dx.types.CBufRet.i32 %2009, 1
  %2011 = sub nsw i32 %2010, %2008
  %2012 = sitofp i32 %2011 to float
  %2013 = fsub fast float %1962, %2012
  %2014 = call float @dx.op.binary.f32(i32 35, float %2013, float 0.000000e+00)  ; FMax(a,b)
  %2015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2005, %dx.types.Handle %62, float %2002, float %2003, float %1993, float undef, i32 0, i32 0, i32 undef, float %2014)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2016 = extractvalue %dx.types.ResRet.f32 %2015, 0
  %2017 = fmul fast float %2016, %1987
  %2018 = fadd fast float %2017, %1990
  %2019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2020 = extractvalue %dx.types.CBufRet.f32 %2019, 0
  %2021 = extractvalue %dx.types.CBufRet.f32 %2019, 1
  %2022 = extractvalue %dx.types.CBufRet.f32 %2019, 2
  %2023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2024 = extractvalue %dx.types.CBufRet.f32 %2023, 3
  %2025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2026 = extractvalue %dx.types.CBufRet.f32 %2025, 3
  %2027 = extractvalue %dx.types.CBufRet.f32 %2019, 3
  %2028 = fadd fast float %2024, %1885
  %2029 = fadd fast float %2026, %1886
  %2030 = fadd fast float %2018, %2027
  %2031 = fmul fast float %2028, %2020
  %2032 = call float @dx.op.tertiary.f32(i32 46, float %2029, float %2021, float %2031)  ; FMad(a,b,c)
  %2033 = call float @dx.op.tertiary.f32(i32 46, float %2030, float %2022, float %2032)  ; FMad(a,b,c)
  %2034 = fsub fast float %2033, %2027
  %2035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.f32 %2035, 2
  %2037 = fsub fast float %2034, %2036
  %2038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2039 = extractvalue %dx.types.CBufRet.i32 %2038, 0
  %2040 = call i32 @dx.op.binary.i32(i32 40, i32 %1916, i32 %2039)  ; UMin(a,b)
  %2041 = mul i32 %2040, 36
  %2042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2041, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.i32 %2042, 0
  %2044 = add i32 %2041, 4
  %2045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2046 = extractvalue %dx.types.CBufRet.f32 %2045, 0
  %2047 = fmul fast float %2046, %1938
  %2048 = fmul fast float %2046, %1940
  %2049 = extractvalue %dx.types.CBufRet.f32 %2045, 1
  %2050 = fadd fast float %2047, %2049
  %2051 = fadd fast float %2048, %2049
  %2052 = icmp eq i32 %2043, 0
  br i1 %2052, label %2121, label %2053

; <label>:2053                                    ; preds = %1984
  br label %2054

; <label>:2054                                    ; preds = %2111, %2053
  %2055 = phi float [ %2112, %2111 ], [ 0.000000e+00, %2053 ]
  %2056 = phi float [ %2113, %2111 ], [ 0.000000e+00, %2053 ]
  %2057 = phi float [ %2114, %2111 ], [ 0.000000e+00, %2053 ]
  %2058 = phi float [ %2115, %2111 ], [ 0.000000e+00, %2053 ]
  %2059 = phi float [ %2116, %2111 ], [ 0.000000e+00, %2053 ]
  %2060 = phi float [ %2117, %2111 ], [ 0.000000e+00, %2053 ]
  %2061 = phi i32 [ %2118, %2111 ], [ 0, %2053 ]
  %2062 = shl i32 %2061, 2
  %2063 = add i32 %1929, %2062
  %2064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2063, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.f32 %2064, 0
  %2066 = add i32 %1933, %2062
  %2067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2066, i32 undef)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.i32 %2067, 0
  %2069 = add i32 %2068, 0
  %2070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2069, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2071 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2070, i32 0)  ; GetDimensions(handle,mipLevel)
  %2072 = extractvalue %dx.types.Dimensions %2071, 0
  %2073 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2072)  ; FirstbitLo(value)
  %2074 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2075 = extractvalue %dx.types.CBufRet.i32 %2074, 1
  %2076 = sub nsw i32 %2075, %2073
  %2077 = sitofp i32 %2076 to float
  %2078 = fsub fast float %1962, %2077
  %2079 = call float @dx.op.binary.f32(i32 35, float %2078, float 0.000000e+00)  ; FMax(a,b)
  %2080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2070, %dx.types.Handle %62, float %2050, float %2051, float %2065, float undef, i32 0, i32 0, i32 undef, float %2079)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2081 = extractvalue %dx.types.ResRet.f32 %2080, 0
  %2082 = fcmp fast ogt float %2081, 0.000000e+00
  br i1 %2082, label %2083, label %2111

; <label>:2083                                    ; preds = %2054
  %2084 = add i32 %2044, %2062
  %2085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2084, i32 undef)  ; BufferLoad(srv,index,wot)
  %2086 = extractvalue %dx.types.ResRet.i32 %2085, 0
  %2087 = and i32 %2086, 32767
  %2088 = mul nuw nsw i32 %2087, 928
  %2089 = add nuw nsw i32 %2088, 48
  %2090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2089, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.f32 %2090, 0
  %2092 = extractvalue %dx.types.ResRet.f32 %2090, 1
  %2093 = extractvalue %dx.types.ResRet.f32 %2090, 2
  %2094 = add nuw nsw i32 %2088, 60
  %2095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.f32 %2095, 0
  %2097 = extractvalue %dx.types.ResRet.f32 %2095, 1
  %2098 = extractvalue %dx.types.ResRet.f32 %2095, 2
  %2099 = fmul fast float %2091, %2081
  %2100 = fmul fast float %2092, %2081
  %2101 = fmul fast float %2093, %2081
  %2102 = fadd fast float %2099, %2055
  %2103 = fadd fast float %2100, %2056
  %2104 = fadd fast float %2101, %2057
  %2105 = fmul fast float %2096, %2081
  %2106 = fmul fast float %2097, %2081
  %2107 = fmul fast float %2098, %2081
  %2108 = fadd fast float %2105, %2058
  %2109 = fadd fast float %2106, %2059
  %2110 = fadd fast float %2107, %2060
  br label %2111

; <label>:2111                                    ; preds = %2083, %2054
  %2112 = phi float [ %2102, %2083 ], [ %2055, %2054 ]
  %2113 = phi float [ %2103, %2083 ], [ %2056, %2054 ]
  %2114 = phi float [ %2104, %2083 ], [ %2057, %2054 ]
  %2115 = phi float [ %2108, %2083 ], [ %2058, %2054 ]
  %2116 = phi float [ %2109, %2083 ], [ %2059, %2054 ]
  %2117 = phi float [ %2110, %2083 ], [ %2060, %2054 ]
  %2118 = add nuw i32 %2061, 1
  %2119 = icmp eq i32 %2118, %2043
  br i1 %2119, label %2120, label %2054

; <label>:2120                                    ; preds = %2111
  br label %2121

; <label>:2121                                    ; preds = %2120, %1984
  %2122 = phi float [ 0.000000e+00, %1984 ], [ %2112, %2120 ]
  %2123 = phi float [ 0.000000e+00, %1984 ], [ %2113, %2120 ]
  %2124 = phi float [ 0.000000e+00, %1984 ], [ %2114, %2120 ]
  %2125 = phi float [ 0.000000e+00, %1984 ], [ %2115, %2120 ]
  %2126 = phi float [ 0.000000e+00, %1984 ], [ %2116, %2120 ]
  %2127 = phi float [ 0.000000e+00, %1984 ], [ %2117, %2120 ]
  %2128 = fadd fast float %2125, %2122
  %2129 = fmul fast float %2128, 0x3F847AE140000000
  %2130 = fadd fast float %2126, %2123
  %2131 = fmul fast float %2130, 0x3F847AE140000000
  %2132 = fadd fast float %2127, %2124
  %2133 = fmul fast float %2132, 0x3F847AE140000000
  br label %2134

; <label>:2134                                    ; preds = %2121, %1918, %1863, %1860, %1831, %1793
  %2135 = phi float [ %1845, %1831 ], [ -1.310720e+05, %1793 ], [ %2037, %2121 ], [ -1.310720e+05, %1863 ], [ -1.310720e+05, %1918 ], [ -1.310720e+05, %1860 ]
  %2136 = phi float [ %1855, %1831 ], [ 0.000000e+00, %1793 ], [ %2129, %2121 ], [ 0.000000e+00, %1863 ], [ 0.000000e+00, %1918 ], [ 0.000000e+00, %1860 ]
  %2137 = phi float [ %1857, %1831 ], [ 0.000000e+00, %1793 ], [ %2131, %2121 ], [ 0.000000e+00, %1863 ], [ 0.000000e+00, %1918 ], [ 0.000000e+00, %1860 ]
  %2138 = phi float [ %1859, %1831 ], [ 0.000000e+00, %1793 ], [ %2133, %2121 ], [ 0.000000e+00, %1863 ], [ 0.000000e+00, %1918 ], [ 0.000000e+00, %1860 ]
  %2139 = phi i1 [ true, %1831 ], [ false, %1793 ], [ true, %2121 ], [ false, %1863 ], [ false, %1918 ], [ false, %1860 ]
  %2140 = and i32 %214, 3
  %2141 = icmp eq i32 %2140, 1
  %2142 = select i1 %2141, float 1.000000e+00, float 0.000000e+00
  %2143 = fsub fast float %2135, %149
  %2144 = call float @dx.op.unary.f32(i32 7, float %2143)  ; Saturate(value)
  %2145 = select i1 %2139, float %2144, float 1.000000e+00
  %2146 = fmul fast float %2145, %2142
  %2147 = icmp eq i32 %2140, 3
  %2148 = select i1 %2147, float 1.000000e+00, float %2146
  %2149 = call float @dx.op.binary.f32(i32 35, float %1674, float %2148)  ; FMax(a,b)
  %2150 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  %2151 = fcmp fast une float %2150, 0.000000e+00
  %2152 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %147, float %148, float %149)  ; Dot3(ax,ay,az,bx,by,bz)
  %2153 = call float @dx.op.unary.f32(i32 25, float %2152)  ; Rsqrt(value)
  br i1 %2151, label %2161, label %2154

; <label>:2154                                    ; preds = %2134
  %2155 = fmul fast float %2153, %147
  %2156 = fmul fast float %2153, %148
  %2157 = fmul fast float %2153, %149
  %2158 = fsub fast float -0.000000e+00, %2155
  %2159 = fsub fast float -0.000000e+00, %2156
  %2160 = fsub fast float -0.000000e+00, %2157
  br label %2329

; <label>:2161                                    ; preds = %2134
  %2162 = fmul fast float %147, %2153
  %2163 = fsub fast float -0.000000e+00, %2162
  %2164 = fmul fast float %148, %2153
  %2165 = fsub fast float -0.000000e+00, %2164
  %2166 = fmul fast float %149, %2153
  %2167 = fsub fast float -0.000000e+00, %2166
  %2168 = call float @dx.op.dot3.f32(i32 55, float %2163, float %2165, float %2167, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %2169 = fmul fast float %2150, 2.500000e+00
  %2170 = call float @dx.op.unary.f32(i32 7, float %2169)  ; Saturate(value)
  %2171 = fmul fast float %2150, 0x4013FFFFE0000000
  %2172 = fadd fast float %2171, 0xBFFFFFFFE0000000
  %2173 = call float @dx.op.unary.f32(i32 7, float %2172)  ; Saturate(value)
  %2174 = fmul fast float %2150, 0x4004000020000000
  %2175 = fadd fast float %2174, 0xBFF8000040000000
  %2176 = call float @dx.op.unary.f32(i32 7, float %2175)  ; Saturate(value)
  %2177 = call float @dx.op.unary.f32(i32 7, float %2170)  ; Saturate(value)
  %2178 = fmul fast float %1710, 1.000000e+01
  %2179 = call float @dx.op.unary.f32(i32 7, float %2178)  ; Saturate(value)
  %2180 = fmul fast float %2179, 2.000000e+00
  %2181 = fsub fast float 3.000000e+00, %2180
  %2182 = fmul fast float %2179, %2179
  %2183 = fmul fast float %2182, %2181
  %2184 = fsub fast float 1.000000e+00, %2183
  %2185 = fsub fast float 0x3FE3333340000000, %1731
  %2186 = fmul fast float %2185, 0x400AAAAAA0000000
  %2187 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  %2188 = fmul fast float %2184, %2187
  %2189 = fmul fast float %1768, 0x3FEA2B8620000000
  %2190 = fmul fast float %1769, 0x3FEA2B8620000000
  %2191 = fmul fast float %1770, 0x3FEA2B8620000000
  %2192 = fadd fast float %2189, 0x3FC81DFBA0000000
  %2193 = fmul fast float %2192, %1768
  %2194 = fadd fast float %2193, 0x3F910E6020000000
  %2195 = fadd fast float %2190, 0x3FC81DFBA0000000
  %2196 = fmul fast float %2195, %1769
  %2197 = fadd fast float %2196, 0x3F910E6020000000
  %2198 = fadd fast float %2191, 0x3FC81DFBA0000000
  %2199 = fmul fast float %2198, %1770
  %2200 = fadd fast float %2199, 0x3F910E6020000000
  %2201 = call float @dx.op.unary.f32(i32 7, float %2194)  ; Saturate(value)
  %2202 = call float @dx.op.unary.f32(i32 7, float %2197)  ; Saturate(value)
  %2203 = call float @dx.op.unary.f32(i32 7, float %2200)  ; Saturate(value)
  %2204 = fsub fast float %2201, %1768
  %2205 = fsub fast float %2202, %1769
  %2206 = fsub fast float %2203, %1770
  %2207 = fmul fast float %2204, %2177
  %2208 = fmul fast float %2207, %2188
  %2209 = fmul fast float %2205, %2177
  %2210 = fmul fast float %2209, %2188
  %2211 = fmul fast float %2206, %2177
  %2212 = fmul fast float %2211, %2188
  %2213 = fadd fast float %2208, %1768
  %2214 = fadd fast float %2210, %1769
  %2215 = fadd fast float %2212, %1770
  %2216 = fmul fast float %1691, %1691
  %2217 = fmul fast float %2216, %2216
  %2218 = fadd fast float %2173, 1.000000e+00
  %2219 = fsub fast float %2218, %2188
  %2220 = call float @dx.op.unary.f32(i32 7, float %2219)  ; Saturate(value)
  %2221 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2222 = call float @dx.op.unary.f32(i32 7, float %2221)  ; Saturate(value)
  %2223 = fsub fast float 1.000000e+00, %2217
  %2224 = call float @dx.op.binary.f32(i32 36, float %2220, float %2223)  ; FMin(a,b)
  %2225 = call float @dx.op.unary.f32(i32 7, float %2176)  ; Saturate(value)
  %2226 = call float @dx.op.binary.f32(i32 35, float %2224, float %2225)  ; FMax(a,b)
  %2227 = fadd fast float %2222, 0xBFE4CCCCC0000000
  %2228 = fmul fast float %2227, 0x4006DB6DA0000000
  %2229 = call float @dx.op.unary.f32(i32 7, float %2228)  ; Saturate(value)
  %2230 = fmul fast float %2229, 2.000000e+00
  %2231 = fsub fast float 3.000000e+00, %2230
  %2232 = bitcast float %1728 to i32
  %2233 = ashr i32 %2232, 1
  %2234 = add nsw i32 %2233, 532487669
  %2235 = bitcast i32 %2234 to float
  %2236 = fsub fast float 1.000000e+00, %2235
  %2237 = bitcast float %2236 to i32
  %2238 = sub nsw i32 2129859010, %2237
  %2239 = bitcast i32 %2238 to float
  %2240 = fmul fast float %2239, 2.000000e+00
  %2241 = bitcast float %1729 to i32
  %2242 = ashr i32 %2241, 1
  %2243 = add nsw i32 %2242, 532487669
  %2244 = bitcast i32 %2243 to float
  %2245 = fsub fast float 1.000000e+00, %2244
  %2246 = bitcast float %2245 to i32
  %2247 = sub nsw i32 2129859010, %2246
  %2248 = bitcast i32 %2247 to float
  %2249 = fmul fast float %2248, 2.000000e+00
  %2250 = bitcast float %1730 to i32
  %2251 = ashr i32 %2250, 1
  %2252 = add nsw i32 %2251, 532487669
  %2253 = bitcast i32 %2252 to float
  %2254 = fsub fast float 1.000000e+00, %2253
  %2255 = bitcast float %2254 to i32
  %2256 = sub nsw i32 2129859010, %2255
  %2257 = bitcast i32 %2256 to float
  %2258 = fmul fast float %2257, 2.000000e+00
  %2259 = fsub fast float 0x4002A9FBE0000000, %2240
  %2260 = fadd fast float %2240, 0x3FD54FDF00000000
  %2261 = bitcast float %2260 to i32
  %2262 = sub nsw i32 2129859010, %2261
  %2263 = bitcast i32 %2262 to float
  %2264 = fmul fast float %2263, %2259
  %2265 = fmul fast float %2264, %2264
  %2266 = fsub fast float 0x4002A9FBE0000000, %2249
  %2267 = fadd fast float %2249, 0x3FD54FDF00000000
  %2268 = bitcast float %2267 to i32
  %2269 = sub nsw i32 2129859010, %2268
  %2270 = bitcast i32 %2269 to float
  %2271 = fmul fast float %2270, %2266
  %2272 = fmul fast float %2271, %2271
  %2273 = fsub fast float 0x4002A9FBE0000000, %2258
  %2274 = fadd fast float %2258, 0x3FD54FDF00000000
  %2275 = bitcast float %2274 to i32
  %2276 = sub nsw i32 2129859010, %2275
  %2277 = bitcast i32 %2276 to float
  %2278 = fmul fast float %2277, %2273
  %2279 = fmul fast float %2278, %2278
  %2280 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2265)  ; FMax(a,b)
  %2281 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2272)  ; FMax(a,b)
  %2282 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2279)  ; FMax(a,b)
  %2283 = fsub fast float 1.000000e+00, %2168
  %2284 = fadd fast float %2283, %2184
  %2285 = call float @dx.op.unary.f32(i32 7, float %2284)  ; Saturate(value)
  %2286 = fsub fast float 1.000000e+00, %2148
  %2287 = fmul fast float %2226, %2286
  %2288 = fmul fast float %2229, %2229
  %2289 = fmul fast float %2288, %2287
  %2290 = fmul fast float %2289, %2231
  %2291 = fmul fast float %2286, 0xBFE99999A0000000
  %2292 = fmul fast float %2291, %2177
  %2293 = fmul fast float %2292, %2188
  %2294 = fadd fast float %2293, 1.000000e+00
  %2295 = fadd fast float %1731, -1.000000e+00
  %2296 = fmul fast float %2294, %2295
  %2297 = fadd fast float %2296, 1.000000e+00
  %2298 = fsub fast float %2280, %1728
  %2299 = fsub fast float %2281, %1729
  %2300 = fsub fast float %2282, %1730
  %2301 = fmul fast float %2290, %2298
  %2302 = fmul fast float %2290, %2299
  %2303 = fmul fast float %2290, %2300
  %2304 = fadd fast float %2301, %1728
  %2305 = fadd fast float %2302, %1729
  %2306 = fadd fast float %2303, %1730
  %2307 = fsub fast float %76, %1707
  %2308 = fsub fast float %77, %1708
  %2309 = fsub fast float %78, %1709
  %2310 = fmul fast float %2290, %2307
  %2311 = fmul fast float %2290, %2308
  %2312 = fmul fast float %2290, %2309
  %2313 = fadd fast float %2310, %1707
  %2314 = fadd fast float %2311, %1708
  %2315 = fadd fast float %2312, %1709
  %2316 = fmul fast float %2290, %2285
  %2317 = call float @dx.op.unary.f32(i32 7, float %2297)  ; Saturate(value)
  %2318 = fsub fast float 1.000000e+00, %2317
  %2319 = fmul fast float %2316, %2318
  %2320 = fadd fast float %2319, %2317
  %2321 = fsub fast float 1.000000e+00, %1691
  %2322 = fmul fast float %2290, %2321
  %2323 = fadd fast float %2322, %1691
  %2324 = call float @dx.op.dot3.f32(i32 55, float %2313, float %2314, float %2315, float %2313, float %2314, float %2315)  ; Dot3(ax,ay,az,bx,by,bz)
  %2325 = call float @dx.op.unary.f32(i32 25, float %2324)  ; Rsqrt(value)
  %2326 = fmul fast float %2313, %2325
  %2327 = fmul fast float %2314, %2325
  %2328 = fmul fast float %2315, %2325
  br label %2329

; <label>:2329                                    ; preds = %2161, %2154
  %2330 = phi float [ %2160, %2154 ], [ %2167, %2161 ]
  %2331 = phi float [ %2159, %2154 ], [ %2165, %2161 ]
  %2332 = phi float [ %2158, %2154 ], [ %2163, %2161 ]
  %2333 = phi float [ %2157, %2154 ], [ %2166, %2161 ]
  %2334 = phi float [ %2156, %2154 ], [ %2164, %2161 ]
  %2335 = phi float [ %2155, %2154 ], [ %2162, %2161 ]
  %2336 = phi float [ %1768, %2154 ], [ %2213, %2161 ]
  %2337 = phi float [ %1769, %2154 ], [ %2214, %2161 ]
  %2338 = phi float [ %1770, %2154 ], [ %2215, %2161 ]
  %2339 = phi float [ %1707, %2154 ], [ %2326, %2161 ]
  %2340 = phi float [ %1708, %2154 ], [ %2327, %2161 ]
  %2341 = phi float [ %1709, %2154 ], [ %2328, %2161 ]
  %2342 = phi float [ %1728, %2154 ], [ %2304, %2161 ]
  %2343 = phi float [ %1729, %2154 ], [ %2305, %2161 ]
  %2344 = phi float [ %1730, %2154 ], [ %2306, %2161 ]
  %2345 = phi float [ %1731, %2154 ], [ %2320, %2161 ]
  %2346 = phi float [ %1691, %2154 ], [ %2323, %2161 ]
  %2347 = fsub fast float -0.000000e+00, %149
  %2348 = select i1 %238, float 0.000000e+00, float %2344
  %2349 = call float @dx.op.dot3.f32(i32 55, float %2339, float %2340, float %2341, float %2332, float %2331, float %2330)  ; Dot3(ax,ay,az,bx,by,bz)
  %2350 = call float @dx.op.unary.f32(i32 7, float %2349)  ; Saturate(value)
  %2351 = call float @dx.op.dot3.f32(i32 55, float %2335, float %2334, float %2333, float %2339, float %2340, float %2341)  ; Dot3(ax,ay,az,bx,by,bz)
  %2352 = fmul fast float %2351, 2.000000e+00
  %2353 = fmul fast float %2352, %2339
  %2354 = fmul fast float %2352, %2340
  %2355 = fmul fast float %2352, %2341
  %2356 = fsub fast float %2335, %2353
  %2357 = fsub fast float %2334, %2354
  %2358 = fsub fast float %2333, %2355
  %2359 = call float @dx.op.binary.f32(i32 36, float %2346, float 1.000000e+00)  ; FMin(a,b)
  %2360 = fsub fast float 1.000000e+00, %2359
  %2361 = bitcast float %2360 to i32
  %2362 = ashr i32 %2361, 1
  %2363 = add nsw i32 %2362, 532487669
  %2364 = bitcast i32 %2363 to float
  %2365 = fsub fast float 1.000000e+00, %2345
  %2366 = call float @dx.op.binary.f32(i32 35, float %2365, float 0x3F847AE140000000)  ; FMax(a,b)
  %2367 = fmul fast float %2366, %2366
  %2368 = fmul fast float %2367, %2367
  %2369 = call float @dx.op.unary.f32(i32 7, float %2350)  ; Saturate(value)
  %2370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %64, float %2364, float %2368, float %2369, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2371 = extractvalue %dx.types.ResRet.f32 %2370, 0
  %2372 = fsub fast float 1.000000e+00, %2346
  %2373 = bitcast float %2372 to i32
  %2374 = sub nsw i32 2129859010, %2373
  %2375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2376 = extractvalue %dx.types.CBufRet.f32 %2375, 0
  %2377 = extractvalue %dx.types.CBufRet.f32 %2375, 1
  %2378 = fadd fast float %2376, %147
  %2379 = fadd fast float %2377, %148
  %2380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2381 = extractvalue %dx.types.CBufRet.i32 %2380, 0
  %2382 = icmp eq i32 %2381, 1
  br i1 %2382, label %2383, label %2418

; <label>:2383                                    ; preds = %2329
  %2384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2385 = extractvalue %dx.types.CBufRet.f32 %2384, 0
  %2386 = extractvalue %dx.types.CBufRet.f32 %2384, 1
  %2387 = fsub fast float %2378, %2385
  %2388 = fsub fast float %2379, %2386
  %2389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2390 = extractvalue %dx.types.CBufRet.f32 %2389, 0
  %2391 = extractvalue %dx.types.CBufRet.f32 %2389, 1
  %2392 = fmul fast float %2387, %2390
  %2393 = fmul fast float %2388, %2391
  %2394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %64, float %2392, float %2393, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2395 = extractvalue %dx.types.ResRet.f32 %2394, 0
  %2396 = fcmp fast ogt float %2395, 0.000000e+00
  %2397 = extractvalue %dx.types.CBufRet.i32 %2380, 3
  %2398 = icmp ne i32 %2397, 0
  %2399 = and i1 %2396, %2398
  br i1 %2399, label %2400, label %2418, !dx.controlflow.hints !107

; <label>:2400                                    ; preds = %2383
  %2401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2402 = extractvalue %dx.types.CBufRet.f32 %2401, 0
  %2403 = extractvalue %dx.types.CBufRet.f32 %2401, 1
  %2404 = fsub fast float %2378, %2402
  %2405 = fsub fast float %2379, %2403
  %2406 = fmul fast float %2404, %2404
  %2407 = fmul fast float %2405, %2405
  %2408 = fadd fast float %2406, %2407
  %2409 = uitofp i32 %2397 to float
  %2410 = fmul fast float %2409, %2409
  %2411 = fcmp fast ogt float %2408, %2410
  br i1 %2411, label %2418, label %2412

; <label>:2412                                    ; preds = %2400
  %2413 = call float @dx.op.unary.f32(i32 24, float %2408)  ; Sqrt(value)
  %2414 = fsub fast float %2409, %2413
  %2415 = fmul fast float %2414, 0x3F75555560000000
  %2416 = call float @dx.op.unary.f32(i32 7, float %2415)  ; Saturate(value)
  %2417 = call float @dx.op.binary.f32(i32 36, float %2416, float %2395)  ; FMin(a,b)
  br label %2418

; <label>:2418                                    ; preds = %2412, %2400, %2383, %2329
  %2419 = phi float [ 1.000000e+00, %2329 ], [ %2417, %2412 ], [ %2395, %2383 ], [ 0.000000e+00, %2400 ]
  %2420 = fcmp fast ogt float %2419, 0.000000e+00
  br i1 %2420, label %2421, label %2520, !dx.controlflow.hints !108

; <label>:2421                                    ; preds = %2418
  %2422 = fadd fast float %178, 5.000000e-01
  %2423 = call float @dx.op.unary.f32(i32 27, float %2422)  ; Round_ni(value)
  %2424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %64, float %176, float %177, float %2423, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2425 = extractvalue %dx.types.ResRet.f32 %2424, 0
  %2426 = extractvalue %dx.types.ResRet.f32 %2424, 1
  %2427 = extractvalue %dx.types.ResRet.f32 %2424, 2
  %2428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2429 = extractvalue %dx.types.CBufRet.f32 %2428, 3
  %2430 = fmul fast float %2429, %2425
  %2431 = fmul fast float %2429, %2426
  %2432 = fmul fast float %2429, %2427
  %2433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %176, float %177, float %2423, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2434 = extractvalue %dx.types.ResRet.f32 %2433, 0
  %2435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %64, float %176, float %177, float %2423, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2436 = extractvalue %dx.types.ResRet.f32 %2435, 0
  %2437 = extractvalue %dx.types.ResRet.f32 %2435, 1
  %2438 = fmul fast float %2436, 2.000000e+00
  %2439 = fmul fast float %2437, 2.000000e+00
  %2440 = fadd fast float %2438, -1.000000e+00
  %2441 = fadd fast float %2439, -1.000000e+00
  %2442 = fadd fast float %2440, %2441
  %2443 = fmul fast float %2442, 5.000000e-01
  %2444 = fsub fast float %2440, %2441
  %2445 = fmul fast float %2444, 5.000000e-01
  %2446 = call float @dx.op.unary.f32(i32 6, float %2443)  ; FAbs(value)
  %2447 = fsub fast float 1.000000e+00, %2446
  %2448 = call float @dx.op.unary.f32(i32 6, float %2445)  ; FAbs(value)
  %2449 = fsub fast float %2447, %2448
  %2450 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2449)  ; FMax(a,b)
  %2451 = call float @dx.op.dot3.f32(i32 55, float %2443, float %2445, float %2450, float %2443, float %2445, float %2450)  ; Dot3(ax,ay,az,bx,by,bz)
  %2452 = bitcast float %2451 to i32
  %2453 = ashr i32 %2452, 1
  %2454 = sub nsw i32 1597250115, %2453
  %2455 = bitcast i32 %2454 to float
  %2456 = fmul fast float %2455, %2443
  %2457 = fmul fast float %2455, %2445
  %2458 = fmul fast float %2455, %2450
  %2459 = fsub fast float 1.000000e+00, %2434
  %2460 = fdiv fast float %2459, %2458
  %2461 = fmul fast float %2458, %76
  %2462 = fmul fast float %2458, %77
  %2463 = fmul fast float %2458, %78
  %2464 = fmul fast float %2456, %72
  %2465 = fmul fast float %2456, %73
  %2466 = fmul fast float %2456, %74
  %2467 = fadd fast float %2461, %2464
  %2468 = fadd fast float %2462, %2465
  %2469 = fadd fast float %2463, %2466
  %2470 = fmul fast float %2457, %111
  %2471 = fmul fast float %2457, %112
  %2472 = fmul fast float %2457, %113
  %2473 = fadd fast float %2467, %2470
  %2474 = fadd fast float %2468, %2471
  %2475 = fadd fast float %2469, %2472
  %2476 = call float @dx.op.dot3.f32(i32 55, float %2473, float %2474, float %2475, float %2473, float %2474, float %2475)  ; Dot3(ax,ay,az,bx,by,bz)
  %2477 = call float @dx.op.unary.f32(i32 25, float %2476)  ; Rsqrt(value)
  %2478 = fmul fast float %2473, %2477
  %2479 = fmul fast float %2474, %2477
  %2480 = fmul fast float %2475, %2477
  %2481 = call float @dx.op.dot3.f32(i32 55, float %2339, float %2340, float %2341, float %2339, float %2340, float %2341)  ; Dot3(ax,ay,az,bx,by,bz)
  %2482 = call float @dx.op.unary.f32(i32 7, float %2481)  ; Saturate(value)
  %2483 = fmul fast float %2482, 5.000000e-01
  %2484 = fadd fast float %2483, 5.000000e-01
  %2485 = fmul fast float %2484, %2434
  %2486 = call float @dx.op.dot3.f32(i32 55, float %2339, float %2340, float %2341, float %2478, float %2479, float %2480)  ; Dot3(ax,ay,az,bx,by,bz)
  %2487 = call float @dx.op.unary.f32(i32 7, float %2486)  ; Saturate(value)
  %2488 = fmul fast float %2487, %2460
  %2489 = fadd fast float %2485, %2488
  %2490 = fsub fast float 5.000000e-01, %2483
  %2491 = fmul fast float %2490, %2336
  %2492 = fmul fast float %2490, %2337
  %2493 = fmul fast float %2490, %2338
  %2494 = fadd fast float %2489, %2491
  %2495 = fmul fast float %2494, %2430
  %2496 = fadd fast float %2489, %2492
  %2497 = fmul fast float %2496, %2431
  %2498 = fadd fast float %2489, %2493
  %2499 = fmul fast float %2498, %2432
  %2500 = call float @dx.op.dot3.f32(i32 55, float %2356, float %2357, float %2358, float %2339, float %2340, float %2341)  ; Dot3(ax,ay,az,bx,by,bz)
  %2501 = call float @dx.op.unary.f32(i32 7, float %2500)  ; Saturate(value)
  %2502 = fmul fast float %2501, 5.000000e-01
  %2503 = fadd fast float %2502, 5.000000e-01
  %2504 = fmul fast float %2503, %2434
  %2505 = call float @dx.op.dot3.f32(i32 55, float %2356, float %2357, float %2358, float %2478, float %2479, float %2480)  ; Dot3(ax,ay,az,bx,by,bz)
  %2506 = call float @dx.op.unary.f32(i32 7, float %2505)  ; Saturate(value)
  %2507 = fmul fast float %2506, %2460
  %2508 = fadd fast float %2504, %2507
  %2509 = fsub fast float 5.000000e-01, %2502
  %2510 = fmul fast float %2509, %2336
  %2511 = fmul fast float %2509, %2337
  %2512 = fmul fast float %2509, %2338
  %2513 = fadd fast float %2508, %2510
  %2514 = fmul fast float %2513, %2430
  %2515 = fadd fast float %2508, %2511
  %2516 = fmul fast float %2515, %2431
  %2517 = fadd fast float %2508, %2512
  %2518 = fmul fast float %2517, %2432
  %2519 = call float @dx.op.dot3.f32(i32 55, float %2430, float %2431, float %2432, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2520

; <label>:2520                                    ; preds = %2421, %2418
  %2521 = phi float [ %2519, %2421 ], [ 0.000000e+00, %2418 ]
  %2522 = phi float [ %2514, %2421 ], [ 0.000000e+00, %2418 ]
  %2523 = phi float [ %2516, %2421 ], [ 0.000000e+00, %2418 ]
  %2524 = phi float [ %2518, %2421 ], [ 0.000000e+00, %2418 ]
  %2525 = phi float [ %2495, %2421 ], [ 0.000000e+00, %2418 ]
  %2526 = phi float [ %2497, %2421 ], [ 0.000000e+00, %2418 ]
  %2527 = phi float [ %2499, %2421 ], [ 0.000000e+00, %2418 ]
  %2528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2529 = extractvalue %dx.types.CBufRet.f32 %2528, 0
  %2530 = fcmp fast ogt float %2529, 0.000000e+00
  %2531 = and i1 %2420, %2530
  br i1 %2531, label %2532, label %2736, !dx.controlflow.hints !109

; <label>:2532                                    ; preds = %2520
  %2533 = extractvalue %dx.types.CBufRet.f32 %2375, 2
  %2534 = fadd fast float %2533, %149
  %2535 = fmul fast float %2339, 3.200000e+01
  %2536 = fmul fast float %2340, 3.200000e+01
  %2537 = fadd fast float %2378, %2535
  %2538 = fadd fast float %2379, %2536
  %2539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2540 = extractvalue %dx.types.CBufRet.f32 %2539, 0
  %2541 = extractvalue %dx.types.CBufRet.f32 %2539, 1
  %2542 = fsub fast float %2537, %2540
  %2543 = fsub fast float %2538, %2541
  %2544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2545 = extractvalue %dx.types.CBufRet.f32 %2544, 0
  %2546 = extractvalue %dx.types.CBufRet.f32 %2544, 1
  %2547 = fmul fast float %2542, %2545
  %2548 = fmul fast float %2543, %2546
  %2549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2550 = extractvalue %dx.types.CBufRet.f32 %2549, 0
  %2551 = extractvalue %dx.types.CBufRet.f32 %2549, 1
  %2552 = fsub fast float %2378, %2550
  %2553 = fsub fast float %2379, %2551
  %2554 = fmul fast float %2552, %2552
  %2555 = fmul fast float %2553, %2553
  %2556 = fadd fast float %2554, %2555
  %2557 = call float @dx.op.unary.f32(i32 24, float %2556)  ; Sqrt(value)
  %2558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2559 = extractvalue %dx.types.CBufRet.f32 %2558, 0
  %2560 = extractvalue %dx.types.CBufRet.f32 %2558, 1
  %2561 = fsub fast float %2557, %2559
  %2562 = fdiv fast float %2561, %2560
  %2563 = call float @dx.op.unary.f32(i32 7, float %2562)  ; Saturate(value)
  %2564 = fmul fast float %2563, 2.000000e+00
  %2565 = fsub fast float 3.000000e+00, %2564
  %2566 = fmul fast float %2563, %2563
  %2567 = fmul fast float %2566, %2565
  %2568 = fcmp fast oge float %2547, 0.000000e+00
  %2569 = fcmp fast ole float %2547, 1.000000e+00
  %2570 = and i1 %2569, %2568
  %2571 = fcmp fast oge float %2548, 0.000000e+00
  %2572 = and i1 %2571, %2570
  %2573 = fcmp fast ole float %2548, 1.000000e+00
  %2574 = and i1 %2573, %2572
  %2575 = fcmp fast ogt float %2567, 0.000000e+00
  %2576 = and i1 %2575, %2574
  br i1 %2576, label %2577, label %2700, !dx.controlflow.hints !110

; <label>:2577                                    ; preds = %2532
  %2578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2579 = extractvalue %dx.types.CBufRet.f32 %2578, 2
  %2580 = extractvalue %dx.types.CBufRet.f32 %2578, 3
  %2581 = fmul fast float %2579, %2547
  %2582 = fmul fast float %2580, %2548
  %2583 = call float @dx.op.unary.f32(i32 27, float %2581)  ; Round_ni(value)
  %2584 = call float @dx.op.unary.f32(i32 27, float %2582)  ; Round_ni(value)
  %2585 = fptosi float %2583 to i32
  %2586 = fptosi float %2584 to i32
  %2587 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %2585, i32 %2586, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2588 = extractvalue %dx.types.ResRet.i32 %2587, 0
  %2589 = lshr i32 %2588, 16
  %2590 = icmp eq i32 %2589, 65535
  br i1 %2590, label %2700, label %2591

; <label>:2591                                    ; preds = %2577
  %2592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2593 = extractvalue %dx.types.CBufRet.f32 %2592, 0
  %2594 = fmul fast float %2593, %2547
  %2595 = extractvalue %dx.types.CBufRet.f32 %2592, 1
  %2596 = fadd fast float %2594, %2595
  %2597 = extractvalue %dx.types.CBufRet.f32 %2592, 2
  %2598 = fmul fast float %2597, %2548
  %2599 = extractvalue %dx.types.CBufRet.f32 %2592, 3
  %2600 = fadd fast float %2598, %2599
  %2601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2596, float %2600, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2602 = extractvalue %dx.types.ResRet.f32 %2601, 0
  %2603 = extractvalue %dx.types.ResRet.f32 %2601, 1
  %2604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2605 = extractvalue %dx.types.CBufRet.f32 %2604, 1
  %2606 = extractvalue %dx.types.CBufRet.f32 %2604, 0
  %2607 = fsub fast float %2605, %2606
  %2608 = fmul fast float %2607, %2602
  %2609 = fadd fast float %2608, %2606
  %2610 = extractvalue %dx.types.CBufRet.f32 %2604, 3
  %2611 = extractvalue %dx.types.CBufRet.f32 %2604, 2
  %2612 = fsub fast float %2610, %2611
  %2613 = fmul fast float %2612, %2603
  %2614 = fadd fast float %2613, %2611
  %2615 = fsub fast float %2534, %2609
  %2616 = fsub fast float %2614, %2609
  %2617 = fdiv fast float %2615, %2616
  %2618 = call float @dx.op.unary.f32(i32 7, float %2617)  ; Saturate(value)
  %2619 = extractvalue %dx.types.CBufRet.f32 %2528, 1
  %2620 = extractvalue %dx.types.CBufRet.f32 %2578, 0
  %2621 = extractvalue %dx.types.CBufRet.f32 %2578, 1
  %2622 = fmul fast float %2620, %2547
  %2623 = fmul fast float %2621, %2548
  %2624 = fmul fast float %2622, 1.250000e-01
  %2625 = fmul fast float %2623, 1.250000e-01
  %2626 = call float @dx.op.unary.f32(i32 27, float %2624)  ; Round_ni(value)
  %2627 = call float @dx.op.unary.f32(i32 27, float %2625)  ; Round_ni(value)
  %2628 = fmul fast float %2626, 8.000000e+00
  %2629 = fmul fast float %2627, 8.000000e+00
  %2630 = fsub fast float %2622, %2628
  %2631 = fsub fast float %2623, %2629
  %2632 = fadd fast float %2630, 5.000000e-01
  %2633 = fadd fast float %2631, 5.000000e-01
  %2634 = and i32 %2589, 255
  %2635 = lshr i32 %2588, 24
  %2636 = mul nuw nsw i32 %2634, 9
  %2637 = uitofp i32 %2636 to float
  %2638 = mul nuw nsw i32 %2635, 9
  %2639 = uitofp i32 %2638 to float
  %2640 = fadd fast float %2632, %2637
  %2641 = fadd fast float %2633, %2639
  %2642 = fdiv fast float %2640, %2529
  %2643 = fdiv fast float %2641, %2619
  %2644 = fmul fast float %2618, 4.375000e-01
  %2645 = fadd fast float %2644, 3.125000e-02
  %2646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2642, float %2643, float %2645, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2647 = extractvalue %dx.types.ResRet.f32 %2646, 0
  %2648 = extractvalue %dx.types.ResRet.f32 %2646, 1
  %2649 = extractvalue %dx.types.ResRet.f32 %2646, 2
  %2650 = fadd fast float %2644, 5.312500e-01
  %2651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2642, float %2643, float %2650, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2652 = extractvalue %dx.types.ResRet.f32 %2651, 0
  %2653 = extractvalue %dx.types.ResRet.f32 %2651, 1
  %2654 = extractvalue %dx.types.ResRet.f32 %2651, 2
  %2655 = fmul fast float %2652, 2.000000e+00
  %2656 = fmul fast float %2653, 2.000000e+00
  %2657 = fmul fast float %2654, 2.000000e+00
  %2658 = fadd fast float %2655, -1.000000e+00
  %2659 = fadd fast float %2656, -1.000000e+00
  %2660 = fadd fast float %2657, -1.000000e+00
  %2661 = fmul fast float %2658, %2658
  %2662 = fmul fast float %2659, %2659
  %2663 = fadd fast float %2661, %2662
  %2664 = fmul fast float %2660, %2660
  %2665 = fadd fast float %2663, %2664
  %2666 = call float @dx.op.unary.f32(i32 24, float %2665)  ; Sqrt(value)
  %2667 = fcmp fast ogt float %2666, 0.000000e+00
  br i1 %2667, label %2668, label %2672

; <label>:2668                                    ; preds = %2591
  %2669 = fdiv fast float %2658, %2666
  %2670 = fdiv fast float %2659, %2666
  %2671 = fdiv fast float %2660, %2666
  br label %2672

; <label>:2672                                    ; preds = %2668, %2591
  %2673 = phi float [ %2669, %2668 ], [ 0.000000e+00, %2591 ]
  %2674 = phi float [ %2670, %2668 ], [ 0.000000e+00, %2591 ]
  %2675 = phi float [ %2671, %2668 ], [ 0.000000e+00, %2591 ]
  %2676 = call float @dx.op.dot3.f32(i32 55, float %2673, float %2674, float %2675, float %2339, float %2340, float %2341)  ; Dot3(ax,ay,az,bx,by,bz)
  %2677 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2676)  ; FMax(a,b)
  %2678 = fmul fast float %2677, 0x400C5BF8A0000000
  %2679 = fmul fast float %2647, %2567
  %2680 = fmul fast float %2679, %2678
  %2681 = fmul fast float %2648, %2567
  %2682 = fmul fast float %2681, %2678
  %2683 = fmul fast float %2649, %2567
  %2684 = fmul fast float %2683, %2678
  %2685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2686 = extractvalue %dx.types.CBufRet.f32 %2685, 3
  %2687 = fmul fast float %2680, %2686
  %2688 = fmul fast float %2682, %2686
  %2689 = fmul fast float %2684, %2686
  %2690 = fcmp fast ogt float %2534, %2614
  br i1 %2690, label %2691, label %2700

; <label>:2691                                    ; preds = %2672
  %2692 = fmul fast float %2616, 0x3FC24924A0000000
  %2693 = fsub fast float %2534, %2614
  %2694 = fdiv fast float %2693, %2692
  %2695 = call float @dx.op.unary.f32(i32 7, float %2694)  ; Saturate(value)
  %2696 = fsub fast float 1.000000e+00, %2695
  %2697 = fmul fast float %2696, %2687
  %2698 = fmul fast float %2696, %2688
  %2699 = fmul fast float %2696, %2689
  br label %2700

; <label>:2700                                    ; preds = %2691, %2672, %2577, %2532
  %2701 = phi float [ %2699, %2691 ], [ %2689, %2672 ], [ 0.000000e+00, %2577 ], [ 0.000000e+00, %2532 ]
  %2702 = phi float [ %2698, %2691 ], [ %2688, %2672 ], [ 0.000000e+00, %2577 ], [ 0.000000e+00, %2532 ]
  %2703 = phi float [ %2697, %2691 ], [ %2687, %2672 ], [ 0.000000e+00, %2577 ], [ 0.000000e+00, %2532 ]
  %2704 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2703)  ; FMax(a,b)
  %2705 = fmul fast float %2704, 0x3FD20DD760000000
  %2706 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2356, float %2357, float %2358)  ; Dot3(ax,ay,az,bx,by,bz)
  %2707 = fmul fast float %2706, 0x3FDF454380000000
  %2708 = fmul fast float %2706, %2706
  %2709 = fmul fast float %2708, 0x3FEE471020000000
  %2710 = fadd fast float %2709, 0xBFD42F6020000000
  %2711 = call float @dx.op.dot3.f32(i32 55, float %2704, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2707, float %2710)  ; Dot3(ax,ay,az,bx,by,bz)
  %2712 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2702)  ; FMax(a,b)
  %2713 = fmul fast float %2712, 0x3FD20DD760000000
  %2714 = call float @dx.op.dot3.f32(i32 55, float %2712, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2707, float %2710)  ; Dot3(ax,ay,az,bx,by,bz)
  %2715 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2701)  ; FMax(a,b)
  %2716 = fmul fast float %2715, 0x3FD20DD760000000
  %2717 = call float @dx.op.dot3.f32(i32 55, float %2715, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2707, float %2710)  ; Dot3(ax,ay,az,bx,by,bz)
  %2718 = call float @dx.op.binary.f32(i32 35, float %2705, float 0.000000e+00)  ; FMax(a,b)
  %2719 = call float @dx.op.binary.f32(i32 35, float %2713, float 0.000000e+00)  ; FMax(a,b)
  %2720 = call float @dx.op.binary.f32(i32 35, float %2716, float 0.000000e+00)  ; FMax(a,b)
  %2721 = call float @dx.op.binary.f32(i32 35, float %2711, float 0.000000e+00)  ; FMax(a,b)
  %2722 = call float @dx.op.binary.f32(i32 35, float %2714, float 0.000000e+00)  ; FMax(a,b)
  %2723 = call float @dx.op.binary.f32(i32 35, float %2717, float 0.000000e+00)  ; FMax(a,b)
  %2724 = fmul fast float %2718, %2419
  %2725 = fmul fast float %2719, %2419
  %2726 = fmul fast float %2720, %2419
  %2727 = fadd fast float %2724, %2525
  %2728 = fadd fast float %2725, %2526
  %2729 = fadd fast float %2726, %2527
  %2730 = fmul fast float %2721, %2419
  %2731 = fmul fast float %2722, %2419
  %2732 = fmul fast float %2723, %2419
  %2733 = fadd fast float %2730, %2522
  %2734 = fadd fast float %2731, %2523
  %2735 = fadd fast float %2732, %2524
  br label %2736

; <label>:2736                                    ; preds = %2700, %2520
  %2737 = phi float [ %2733, %2700 ], [ %2522, %2520 ]
  %2738 = phi float [ %2734, %2700 ], [ %2523, %2520 ]
  %2739 = phi float [ %2735, %2700 ], [ %2524, %2520 ]
  %2740 = phi float [ %2724, %2700 ], [ 0.000000e+00, %2520 ]
  %2741 = phi float [ %2725, %2700 ], [ 0.000000e+00, %2520 ]
  %2742 = phi float [ %2726, %2700 ], [ 0.000000e+00, %2520 ]
  %2743 = phi float [ %2727, %2700 ], [ %2525, %2520 ]
  %2744 = phi float [ %2728, %2700 ], [ %2526, %2520 ]
  %2745 = phi float [ %2729, %2700 ], [ %2527, %2520 ]
  %2746 = fcmp fast olt float %2419, 1.000000e+00
  br i1 %2746, label %2747, label %3585, !dx.controlflow.hints !111

; <label>:2747                                    ; preds = %2736
  %2748 = extractvalue %dx.types.CBufRet.f32 %2375, 2
  %2749 = fadd fast float %2748, %149
  %2750 = fmul fast float %2339, 3.200000e+01
  %2751 = fmul fast float %2340, 3.200000e+01
  %2752 = fadd fast float %2378, %2750
  %2753 = fadd fast float %2379, %2751
  %2754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2755 = extractvalue %dx.types.CBufRet.f32 %2754, 0
  %2756 = extractvalue %dx.types.CBufRet.f32 %2754, 1
  %2757 = fsub fast float %2752, %2755
  %2758 = fsub fast float %2753, %2756
  %2759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2760 = extractvalue %dx.types.CBufRet.f32 %2759, 0
  %2761 = extractvalue %dx.types.CBufRet.f32 %2759, 1
  %2762 = fmul fast float %2757, %2760
  %2763 = fmul fast float %2758, %2761
  %2764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2765 = extractvalue %dx.types.CBufRet.f32 %2764, 0
  %2766 = fmul fast float %2762, %2765
  %2767 = extractvalue %dx.types.CBufRet.f32 %2764, 1
  %2768 = fadd fast float %2766, %2767
  %2769 = extractvalue %dx.types.CBufRet.f32 %2764, 2
  %2770 = fmul fast float %2769, %2763
  %2771 = extractvalue %dx.types.CBufRet.f32 %2764, 3
  %2772 = fadd fast float %2770, %2771
  %2773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2768, float %2772, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2774 = extractvalue %dx.types.ResRet.f32 %2773, 0
  %2775 = extractvalue %dx.types.ResRet.f32 %2773, 1
  %2776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2777 = extractvalue %dx.types.CBufRet.f32 %2776, 1
  %2778 = extractvalue %dx.types.CBufRet.f32 %2776, 0
  %2779 = fsub fast float %2777, %2778
  %2780 = fmul fast float %2779, %2774
  %2781 = fadd fast float %2780, %2778
  %2782 = extractvalue %dx.types.CBufRet.f32 %2776, 3
  %2783 = extractvalue %dx.types.CBufRet.f32 %2776, 2
  %2784 = fsub fast float %2782, %2783
  %2785 = fmul fast float %2784, %2775
  %2786 = fadd fast float %2785, %2783
  %2787 = fsub fast float %2749, %2781
  %2788 = fsub fast float %2786, %2781
  %2789 = fdiv fast float %2787, %2788
  %2790 = call float @dx.op.unary.f32(i32 7, float %2789)  ; Saturate(value)
  %2791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2792 = extractvalue %dx.types.CBufRet.f32 %2791, 0
  %2793 = fmul fast float %2792, %2790
  %2794 = extractvalue %dx.types.CBufRet.f32 %2791, 1
  %2795 = fadd fast float %2793, %2794
  %2796 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2768, float %2772, float %2795, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2797 = extractvalue %dx.types.ResRet.f32 %2796, 0
  %2798 = extractvalue %dx.types.ResRet.f32 %2796, 1
  %2799 = extractvalue %dx.types.ResRet.f32 %2796, 2
  %2800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2801 = extractvalue %dx.types.CBufRet.f32 %2800, 0
  %2802 = extractvalue %dx.types.CBufRet.f32 %2800, 1
  %2803 = extractvalue %dx.types.CBufRet.f32 %2800, 2
  %2804 = fmul fast float %2801, %2797
  %2805 = fmul fast float %2802, %2798
  %2806 = fmul fast float %2803, %2799
  %2807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2808 = extractvalue %dx.types.CBufRet.f32 %2807, 0
  %2809 = extractvalue %dx.types.CBufRet.f32 %2807, 1
  %2810 = extractvalue %dx.types.CBufRet.f32 %2807, 2
  %2811 = fadd fast float %2804, %2808
  %2812 = fadd fast float %2805, %2809
  %2813 = fadd fast float %2806, %2810
  %2814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2815 = extractvalue %dx.types.CBufRet.f32 %2814, 0
  %2816 = fmul fast float %2815, %2762
  %2817 = extractvalue %dx.types.CBufRet.f32 %2814, 1
  %2818 = fadd fast float %2816, %2817
  %2819 = extractvalue %dx.types.CBufRet.f32 %2814, 2
  %2820 = fmul fast float %2819, %2763
  %2821 = extractvalue %dx.types.CBufRet.f32 %2814, 3
  %2822 = fadd fast float %2820, %2821
  %2823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2824 = extractvalue %dx.types.CBufRet.f32 %2823, 0
  %2825 = extractvalue %dx.types.CBufRet.f32 %2823, 1
  %2826 = extractvalue %dx.types.CBufRet.f32 %2823, 2
  %2827 = extractvalue %dx.types.CBufRet.f32 %2823, 3
  %2828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2829 = extractvalue %dx.types.CBufRet.f32 %2828, 0
  %2830 = extractvalue %dx.types.CBufRet.f32 %2828, 1
  %2831 = extractvalue %dx.types.CBufRet.f32 %2828, 2
  %2832 = extractvalue %dx.types.CBufRet.f32 %2828, 3
  %2833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2818, float %2822, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2834 = extractvalue %dx.types.ResRet.f32 %2833, 0
  %2835 = extractvalue %dx.types.ResRet.f32 %2833, 1
  %2836 = extractvalue %dx.types.ResRet.f32 %2833, 2
  %2837 = extractvalue %dx.types.ResRet.f32 %2833, 3
  %2838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2818, float %2822, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2839 = extractvalue %dx.types.ResRet.f32 %2838, 0
  %2840 = extractvalue %dx.types.ResRet.f32 %2838, 1
  %2841 = extractvalue %dx.types.ResRet.f32 %2838, 2
  %2842 = extractvalue %dx.types.ResRet.f32 %2838, 3
  %2843 = fmul fast float %2834, %2811
  %2844 = fmul fast float %2839, %2811
  %2845 = fmul fast float %2841, %2811
  %2846 = fmul fast float %2837, %2811
  %2847 = fadd fast float %2843, %2824
  %2848 = fadd fast float %2844, %2825
  %2849 = fadd fast float %2845, %2826
  %2850 = fadd fast float %2846, %2827
  %2851 = fmul fast float %2835, %2811
  %2852 = fmul fast float %2840, %2811
  %2853 = fadd fast float %2851, %2829
  %2854 = fadd fast float %2852, %2830
  %2855 = fmul fast float %2836, %2811
  %2856 = fmul fast float %2842, %2811
  %2857 = fadd fast float %2855, %2831
  %2858 = fadd fast float %2856, %2832
  %2859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2818, float %2822, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2860 = extractvalue %dx.types.ResRet.f32 %2859, 0
  %2861 = extractvalue %dx.types.ResRet.f32 %2859, 1
  %2862 = extractvalue %dx.types.ResRet.f32 %2859, 2
  %2863 = extractvalue %dx.types.ResRet.f32 %2859, 3
  %2864 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2818, float %2822, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2865 = extractvalue %dx.types.ResRet.f32 %2864, 0
  %2866 = extractvalue %dx.types.ResRet.f32 %2864, 1
  %2867 = extractvalue %dx.types.ResRet.f32 %2864, 2
  %2868 = extractvalue %dx.types.ResRet.f32 %2864, 3
  %2869 = fmul fast float %2860, %2812
  %2870 = fmul fast float %2865, %2812
  %2871 = fmul fast float %2867, %2812
  %2872 = fmul fast float %2863, %2812
  %2873 = fadd fast float %2847, %2869
  %2874 = fadd fast float %2848, %2870
  %2875 = fadd fast float %2849, %2871
  %2876 = fadd fast float %2850, %2872
  %2877 = fmul fast float %2861, %2812
  %2878 = fmul fast float %2866, %2812
  %2879 = fadd fast float %2853, %2877
  %2880 = fadd fast float %2854, %2878
  %2881 = fmul fast float %2862, %2812
  %2882 = fmul fast float %2868, %2812
  %2883 = fadd fast float %2857, %2881
  %2884 = fadd fast float %2858, %2882
  %2885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2818, float %2822, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2886 = extractvalue %dx.types.ResRet.f32 %2885, 0
  %2887 = extractvalue %dx.types.ResRet.f32 %2885, 1
  %2888 = extractvalue %dx.types.ResRet.f32 %2885, 2
  %2889 = extractvalue %dx.types.ResRet.f32 %2885, 3
  %2890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2818, float %2822, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2891 = extractvalue %dx.types.ResRet.f32 %2890, 0
  %2892 = extractvalue %dx.types.ResRet.f32 %2890, 1
  %2893 = extractvalue %dx.types.ResRet.f32 %2890, 2
  %2894 = extractvalue %dx.types.ResRet.f32 %2890, 3
  %2895 = fmul fast float %2886, %2813
  %2896 = fmul fast float %2891, %2813
  %2897 = fmul fast float %2893, %2813
  %2898 = fmul fast float %2889, %2813
  %2899 = fadd fast float %2873, %2895
  %2900 = fadd fast float %2874, %2896
  %2901 = fadd fast float %2875, %2897
  %2902 = fadd fast float %2876, %2898
  %2903 = fmul fast float %2887, %2813
  %2904 = fmul fast float %2892, %2813
  %2905 = fadd fast float %2879, %2903
  %2906 = fadd fast float %2880, %2904
  %2907 = fmul fast float %2888, %2813
  %2908 = fmul fast float %2894, %2813
  %2909 = fadd fast float %2883, %2907
  %2910 = fadd fast float %2884, %2908
  %2911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2912 = extractvalue %dx.types.CBufRet.f32 %2911, 0
  %2913 = fsub fast float %2378, %2912
  %2914 = fsub fast float %2755, %2378
  %2915 = call float @dx.op.binary.f32(i32 35, float %2914, float %2913)  ; FMax(a,b)
  %2916 = extractvalue %dx.types.CBufRet.f32 %2911, 1
  %2917 = fsub fast float %2379, %2916
  %2918 = fsub fast float %2756, %2379
  %2919 = call float @dx.op.binary.f32(i32 35, float %2918, float %2917)  ; FMax(a,b)
  %2920 = call float @dx.op.binary.f32(i32 35, float %2915, float %2919)  ; FMax(a,b)
  %2921 = extractvalue %dx.types.CBufRet.f32 %2759, 3
  %2922 = fmul fast float %2921, %2920
  %2923 = call float @dx.op.unary.f32(i32 7, float %2922)  ; Saturate(value)
  %2924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2925 = extractvalue %dx.types.CBufRet.f32 %2924, 0
  %2926 = extractvalue %dx.types.CBufRet.f32 %2924, 1
  %2927 = extractvalue %dx.types.CBufRet.f32 %2924, 2
  %2928 = extractvalue %dx.types.CBufRet.f32 %2924, 3
  %2929 = fsub fast float %2925, %2899
  %2930 = fsub fast float %2926, %2900
  %2931 = fsub fast float %2927, %2901
  %2932 = fsub fast float %2928, %2902
  %2933 = fmul fast float %2929, %2923
  %2934 = fmul fast float %2930, %2923
  %2935 = fmul fast float %2931, %2923
  %2936 = fmul fast float %2932, %2923
  %2937 = fadd fast float %2933, %2899
  %2938 = fadd fast float %2934, %2900
  %2939 = fadd fast float %2935, %2901
  %2940 = fadd fast float %2936, %2902
  %2941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2942 = extractvalue %dx.types.CBufRet.f32 %2941, 0
  %2943 = extractvalue %dx.types.CBufRet.f32 %2941, 1
  %2944 = fsub fast float %2942, %2905
  %2945 = fsub fast float %2943, %2906
  %2946 = fmul fast float %2944, %2923
  %2947 = fmul fast float %2945, %2923
  %2948 = fadd fast float %2946, %2905
  %2949 = fadd fast float %2947, %2906
  %2950 = extractvalue %dx.types.CBufRet.f32 %2941, 2
  %2951 = extractvalue %dx.types.CBufRet.f32 %2941, 3
  %2952 = fsub fast float %2950, %2909
  %2953 = fsub fast float %2951, %2910
  %2954 = fmul fast float %2952, %2923
  %2955 = fmul fast float %2953, %2923
  %2956 = fadd fast float %2954, %2909
  %2957 = fadd fast float %2955, %2910
  %2958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2959 = extractvalue %dx.types.CBufRet.f32 %2958, 0
  %2960 = fmul fast float %2959, %2937
  %2961 = fmul fast float %2959, %2938
  %2962 = fmul fast float %2959, %2939
  %2963 = fmul fast float %2959, %2940
  %2964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2965 = extractvalue %dx.types.CBufRet.f32 %2964, 0
  %2966 = fmul fast float %2965, %2948
  %2967 = fmul fast float %2965, %2949
  %2968 = fadd fast float %2966, %2960
  %2969 = fadd fast float %2967, %2962
  %2970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2971 = extractvalue %dx.types.CBufRet.f32 %2970, 0
  %2972 = fmul fast float %2971, %2956
  %2973 = fmul fast float %2971, %2957
  %2974 = fadd fast float %2968, %2972
  %2975 = fadd fast float %2969, %2973
  %2976 = extractvalue %dx.types.CBufRet.f32 %2958, 1
  %2977 = fmul fast float %2976, %2937
  %2978 = fmul fast float %2976, %2938
  %2979 = fmul fast float %2976, %2939
  %2980 = fmul fast float %2976, %2940
  %2981 = extractvalue %dx.types.CBufRet.f32 %2964, 1
  %2982 = fmul fast float %2981, %2948
  %2983 = fmul fast float %2981, %2949
  %2984 = fadd fast float %2982, %2977
  %2985 = fadd fast float %2983, %2979
  %2986 = extractvalue %dx.types.CBufRet.f32 %2970, 1
  %2987 = fmul fast float %2986, %2956
  %2988 = fmul fast float %2986, %2957
  %2989 = fadd fast float %2984, %2987
  %2990 = fadd fast float %2985, %2988
  %2991 = extractvalue %dx.types.CBufRet.f32 %2958, 2
  %2992 = fmul fast float %2991, %2937
  %2993 = fmul fast float %2991, %2938
  %2994 = fmul fast float %2991, %2939
  %2995 = fmul fast float %2991, %2940
  %2996 = extractvalue %dx.types.CBufRet.f32 %2964, 2
  %2997 = fmul fast float %2996, %2948
  %2998 = fmul fast float %2996, %2949
  %2999 = fadd fast float %2997, %2992
  %3000 = fadd fast float %2998, %2994
  %3001 = extractvalue %dx.types.CBufRet.f32 %2970, 2
  %3002 = fmul fast float %3001, %2956
  %3003 = fmul fast float %3001, %2957
  %3004 = fadd fast float %2999, %3002
  %3005 = fadd fast float %3000, %3003
  %3006 = fmul fast float %2993, %2993
  %3007 = fmul fast float %3005, %3005
  %3008 = fmul fast float %2995, %2995
  %3009 = fadd fast float %3008, %3006
  %3010 = fadd fast float %3009, %3007
  %3011 = call float @dx.op.unary.f32(i32 24, float %3010)  ; Sqrt(value)
  %3012 = fcmp fast ugt float %3011, 0.000000e+00
  br i1 %3012, label %3013, label %3028

; <label>:3013                                    ; preds = %2747
  %3014 = fsub fast float -0.000000e+00, %2995
  %3015 = fdiv fast float %3014, %3011
  %3016 = fsub fast float -0.000000e+00, %2993
  %3017 = fdiv fast float %3016, %3011
  %3018 = fdiv fast float %3005, %3011
  %3019 = fmul fast float %3004, 0x3FE279A760000000
  %3020 = fmul fast float %3017, %2993
  %3021 = fmul fast float %3018, %3005
  %3022 = fmul fast float %3015, %2995
  %3023 = fadd fast float %3020, %3022
  %3024 = fsub fast float %3023, %3021
  %3025 = call float @dx.op.unary.f32(i32 6, float %3024)  ; FAbs(value)
  %3026 = fadd fast float %3025, 0x3DDB7CDFE0000000
  %3027 = fdiv fast float %3019, %3026
  br label %3028

; <label>:3028                                    ; preds = %3013, %2747
  %3029 = phi float [ %3027, %3013 ], [ 1.000000e+00, %2747 ]
  %3030 = fmul fast float %2978, %2978
  %3031 = fmul fast float %2990, %2990
  %3032 = fmul fast float %2980, %2980
  %3033 = fadd fast float %3032, %3030
  %3034 = fadd fast float %3033, %3031
  %3035 = call float @dx.op.unary.f32(i32 24, float %3034)  ; Sqrt(value)
  %3036 = fcmp fast ugt float %3035, 0.000000e+00
  br i1 %3036, label %3037, label %3052

; <label>:3037                                    ; preds = %3028
  %3038 = fsub fast float -0.000000e+00, %2980
  %3039 = fdiv fast float %3038, %3035
  %3040 = fsub fast float -0.000000e+00, %2978
  %3041 = fdiv fast float %3040, %3035
  %3042 = fdiv fast float %2990, %3035
  %3043 = fmul fast float %2989, 0x3FE279A760000000
  %3044 = fmul fast float %3041, %2978
  %3045 = fmul fast float %3042, %2990
  %3046 = fmul fast float %3039, %2980
  %3047 = fadd fast float %3044, %3046
  %3048 = fsub fast float %3047, %3045
  %3049 = call float @dx.op.unary.f32(i32 6, float %3048)  ; FAbs(value)
  %3050 = fadd fast float %3049, 0x3DDB7CDFE0000000
  %3051 = fdiv fast float %3043, %3050
  br label %3052

; <label>:3052                                    ; preds = %3037, %3028
  %3053 = phi float [ %3051, %3037 ], [ 1.000000e+00, %3028 ]
  %3054 = call float @dx.op.binary.f32(i32 36, float %3053, float %3029)  ; FMin(a,b)
  %3055 = fmul fast float %2961, %2961
  %3056 = fmul fast float %2975, %2975
  %3057 = fmul fast float %2963, %2963
  %3058 = fadd fast float %3057, %3055
  %3059 = fadd fast float %3058, %3056
  %3060 = call float @dx.op.unary.f32(i32 24, float %3059)  ; Sqrt(value)
  %3061 = fcmp fast ugt float %3060, 0.000000e+00
  br i1 %3061, label %3062, label %3077

; <label>:3062                                    ; preds = %3052
  %3063 = fsub fast float -0.000000e+00, %2963
  %3064 = fdiv fast float %3063, %3060
  %3065 = fsub fast float -0.000000e+00, %2961
  %3066 = fdiv fast float %3065, %3060
  %3067 = fdiv fast float %2975, %3060
  %3068 = fmul fast float %2974, 0x3FE279A760000000
  %3069 = fmul fast float %3066, %2961
  %3070 = fmul fast float %3067, %2975
  %3071 = fmul fast float %3064, %2963
  %3072 = fadd fast float %3069, %3071
  %3073 = fsub fast float %3072, %3070
  %3074 = call float @dx.op.unary.f32(i32 6, float %3073)  ; FAbs(value)
  %3075 = fadd fast float %3074, 0x3DDB7CDFE0000000
  %3076 = fdiv fast float %3068, %3075
  br label %3077

; <label>:3077                                    ; preds = %3062, %3052
  %3078 = phi float [ %3076, %3062 ], [ 1.000000e+00, %3052 ]
  %3079 = call float @dx.op.binary.f32(i32 36, float %3078, float %3054)  ; FMin(a,b)
  %3080 = call float @dx.op.unary.f32(i32 7, float %3079)  ; Saturate(value)
  %3081 = fcmp fast olt float %3080, 1.000000e+00
  br i1 %3081, label %3082, label %3092

; <label>:3082                                    ; preds = %3077
  %3083 = fmul fast float %3080, %2961
  %3084 = fmul fast float %3080, %2975
  %3085 = fmul fast float %3080, %2963
  %3086 = fmul fast float %3080, %2978
  %3087 = fmul fast float %3080, %2990
  %3088 = fmul fast float %3080, %2980
  %3089 = fmul fast float %3080, %2993
  %3090 = fmul fast float %3080, %3005
  %3091 = fmul fast float %3080, %2995
  br label %3092

; <label>:3092                                    ; preds = %3082, %3077
  %3093 = phi float [ %3089, %3082 ], [ %2993, %3077 ]
  %3094 = phi float [ %3090, %3082 ], [ %3005, %3077 ]
  %3095 = phi float [ %3091, %3082 ], [ %2995, %3077 ]
  %3096 = phi float [ %3086, %3082 ], [ %2978, %3077 ]
  %3097 = phi float [ %3087, %3082 ], [ %2990, %3077 ]
  %3098 = phi float [ %3088, %3082 ], [ %2980, %3077 ]
  %3099 = phi float [ %3083, %3082 ], [ %2961, %3077 ]
  %3100 = phi float [ %3084, %3082 ], [ %2975, %3077 ]
  %3101 = phi float [ %3085, %3082 ], [ %2963, %3077 ]
  %3102 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2974)  ; FMax(a,b)
  %3103 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2989)  ; FMax(a,b)
  %3104 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3004)  ; FMax(a,b)
  %3105 = fcmp fast oge float %2762, 0.000000e+00
  %3106 = and i1 %3105, %2530
  %3107 = fcmp fast ole float %2762, 1.000000e+00
  %3108 = and i1 %3107, %3106
  %3109 = fcmp fast oge float %2763, 0.000000e+00
  %3110 = and i1 %3109, %3108
  %3111 = fcmp fast ole float %2763, 1.000000e+00
  %3112 = and i1 %3111, %3110
  br i1 %3112, label %3113, label %3258, !dx.controlflow.hints !112

; <label>:3113                                    ; preds = %3092
  %3114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3115 = extractvalue %dx.types.CBufRet.f32 %3114, 2
  %3116 = extractvalue %dx.types.CBufRet.f32 %3114, 3
  %3117 = fmul fast float %3115, %2762
  %3118 = fmul fast float %3116, %2763
  %3119 = call float @dx.op.unary.f32(i32 27, float %3117)  ; Round_ni(value)
  %3120 = call float @dx.op.unary.f32(i32 27, float %3118)  ; Round_ni(value)
  %3121 = fptosi float %3119 to i32
  %3122 = fptosi float %3120 to i32
  %3123 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %3121, i32 %3122, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3124 = extractvalue %dx.types.ResRet.i32 %3123, 0
  %3125 = and i32 %3124, 65535
  %3126 = lshr i32 %3124, 16
  %3127 = icmp eq i32 %3125, 65535
  br i1 %3127, label %3164, label %3128

; <label>:3128                                    ; preds = %3113
  %3129 = extractvalue %dx.types.CBufRet.f32 %2528, 1
  %3130 = extractvalue %dx.types.CBufRet.f32 %3114, 0
  %3131 = extractvalue %dx.types.CBufRet.f32 %3114, 1
  %3132 = fmul fast float %3130, %2762
  %3133 = fmul fast float %3131, %2763
  %3134 = fmul fast float %3132, 1.250000e-01
  %3135 = fmul fast float %3133, 1.250000e-01
  %3136 = call float @dx.op.unary.f32(i32 27, float %3134)  ; Round_ni(value)
  %3137 = call float @dx.op.unary.f32(i32 27, float %3135)  ; Round_ni(value)
  %3138 = fmul fast float %3136, 8.000000e+00
  %3139 = fmul fast float %3137, 8.000000e+00
  %3140 = and i32 %3124, 255
  %3141 = lshr i32 %3124, 8
  %3142 = and i32 %3141, 255
  %3143 = mul nuw nsw i32 %3140, 9
  %3144 = uitofp i32 %3143 to float
  %3145 = mul nuw nsw i32 %3142, 9
  %3146 = uitofp i32 %3145 to float
  %3147 = fadd fast float %3144, 5.000000e-01
  %3148 = fadd fast float %3147, %3132
  %3149 = fsub fast float %3148, %3138
  %3150 = fadd fast float %3146, 5.000000e-01
  %3151 = fadd fast float %3150, %3133
  %3152 = fsub fast float %3151, %3139
  %3153 = fdiv fast float %3149, %2529
  %3154 = fdiv fast float %3152, %3129
  %3155 = fmul fast float %2790, 4.375000e-01
  %3156 = fadd fast float %3155, 3.125000e-02
  %3157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3153, float %3154, float %3156, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3158 = extractvalue %dx.types.ResRet.f32 %3157, 0
  %3159 = extractvalue %dx.types.ResRet.f32 %3157, 1
  %3160 = extractvalue %dx.types.ResRet.f32 %3157, 2
  %3161 = fadd fast float %3158, %3102
  %3162 = fadd fast float %3159, %3103
  %3163 = fadd fast float %3160, %3104
  br label %3164

; <label>:3164                                    ; preds = %3128, %3113
  %3165 = phi float [ %3163, %3128 ], [ %3104, %3113 ]
  %3166 = phi float [ %3162, %3128 ], [ %3103, %3113 ]
  %3167 = phi float [ %3161, %3128 ], [ %3102, %3113 ]
  %3168 = icmp eq i32 %3126, 65535
  br i1 %3168, label %3258, label %3169

; <label>:3169                                    ; preds = %3164
  %3170 = extractvalue %dx.types.CBufRet.f32 %2528, 1
  %3171 = extractvalue %dx.types.CBufRet.f32 %3114, 0
  %3172 = extractvalue %dx.types.CBufRet.f32 %3114, 1
  %3173 = fmul fast float %3171, %2762
  %3174 = fmul fast float %3172, %2763
  %3175 = fmul fast float %3173, 1.250000e-01
  %3176 = fmul fast float %3174, 1.250000e-01
  %3177 = call float @dx.op.unary.f32(i32 27, float %3175)  ; Round_ni(value)
  %3178 = call float @dx.op.unary.f32(i32 27, float %3176)  ; Round_ni(value)
  %3179 = fmul fast float %3177, 8.000000e+00
  %3180 = fmul fast float %3178, 8.000000e+00
  %3181 = fsub fast float %3173, %3179
  %3182 = fsub fast float %3174, %3180
  %3183 = fadd fast float %3181, 5.000000e-01
  %3184 = fadd fast float %3182, 5.000000e-01
  %3185 = and i32 %3126, 255
  %3186 = lshr i32 %3124, 24
  %3187 = mul nuw nsw i32 %3185, 9
  %3188 = uitofp i32 %3187 to float
  %3189 = mul nuw nsw i32 %3186, 9
  %3190 = uitofp i32 %3189 to float
  %3191 = fadd fast float %3183, %3188
  %3192 = fadd fast float %3184, %3190
  %3193 = fdiv fast float %3191, %2529
  %3194 = fdiv fast float %3192, %3170
  %3195 = fmul fast float %2790, 4.375000e-01
  %3196 = fadd fast float %3195, 3.125000e-02
  %3197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3193, float %3194, float %3196, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3198 = extractvalue %dx.types.ResRet.f32 %3197, 0
  %3199 = extractvalue %dx.types.ResRet.f32 %3197, 1
  %3200 = extractvalue %dx.types.ResRet.f32 %3197, 2
  %3201 = fadd fast float %3195, 5.312500e-01
  %3202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3193, float %3194, float %3201, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3203 = extractvalue %dx.types.ResRet.f32 %3202, 0
  %3204 = extractvalue %dx.types.ResRet.f32 %3202, 1
  %3205 = extractvalue %dx.types.ResRet.f32 %3202, 2
  %3206 = fmul fast float %3203, 2.000000e+00
  %3207 = fmul fast float %3204, 2.000000e+00
  %3208 = fmul fast float %3205, 2.000000e+00
  %3209 = fadd fast float %3206, -1.000000e+00
  %3210 = fadd fast float %3207, -1.000000e+00
  %3211 = fadd fast float %3208, -1.000000e+00
  %3212 = fmul fast float %3209, %3209
  %3213 = fmul fast float %3210, %3210
  %3214 = fadd fast float %3212, %3213
  %3215 = fmul fast float %3211, %3211
  %3216 = fadd fast float %3214, %3215
  %3217 = call float @dx.op.unary.f32(i32 24, float %3216)  ; Sqrt(value)
  %3218 = fcmp fast ogt float %3217, 0.000000e+00
  br i1 %3218, label %3219, label %3223

; <label>:3219                                    ; preds = %3169
  %3220 = fdiv fast float %3209, %3217
  %3221 = fdiv fast float %3210, %3217
  %3222 = fdiv fast float %3211, %3217
  br label %3223

; <label>:3223                                    ; preds = %3219, %3169
  %3224 = phi float [ %3220, %3219 ], [ 0.000000e+00, %3169 ]
  %3225 = phi float [ %3221, %3219 ], [ 0.000000e+00, %3169 ]
  %3226 = phi float [ %3222, %3219 ], [ 0.000000e+00, %3169 ]
  %3227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3228 = extractvalue %dx.types.CBufRet.f32 %3227, 0
  %3229 = extractvalue %dx.types.CBufRet.f32 %3227, 1
  %3230 = fsub fast float %2378, %3228
  %3231 = fsub fast float %2379, %3229
  %3232 = fmul fast float %3230, %3230
  %3233 = fmul fast float %3231, %3231
  %3234 = fadd fast float %3232, %3233
  %3235 = call float @dx.op.unary.f32(i32 24, float %3234)  ; Sqrt(value)
  %3236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3237 = extractvalue %dx.types.CBufRet.f32 %3236, 0
  %3238 = extractvalue %dx.types.CBufRet.f32 %3236, 1
  %3239 = fsub fast float %3235, %3237
  %3240 = fdiv fast float %3239, %3238
  %3241 = call float @dx.op.unary.f32(i32 7, float %3240)  ; Saturate(value)
  %3242 = fmul fast float %3241, 2.000000e+00
  %3243 = fsub fast float 3.000000e+00, %3242
  %3244 = fmul fast float %3241, %3241
  %3245 = fmul fast float %3244, %3243
  %3246 = call float @dx.op.dot3.f32(i32 55, float %3224, float %3225, float %3226, float %2339, float %2340, float %2341)  ; Dot3(ax,ay,az,bx,by,bz)
  %3247 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3246)  ; FMax(a,b)
  %3248 = fmul fast float %3247, 0x400C5BF8A0000000
  %3249 = fmul fast float %3245, %3198
  %3250 = fmul fast float %3249, %3248
  %3251 = fadd fast float %3250, %3167
  %3252 = fmul fast float %3245, %3199
  %3253 = fmul fast float %3252, %3248
  %3254 = fadd fast float %3253, %3166
  %3255 = fmul fast float %3245, %3200
  %3256 = fmul fast float %3255, %3248
  %3257 = fadd fast float %3256, %3165
  br label %3258

; <label>:3258                                    ; preds = %3223, %3164, %3092
  %3259 = phi float [ %3257, %3223 ], [ %3165, %3164 ], [ %3104, %3092 ]
  %3260 = phi float [ %3254, %3223 ], [ %3166, %3164 ], [ %3103, %3092 ]
  %3261 = phi float [ %3251, %3223 ], [ %3167, %3164 ], [ %3102, %3092 ]
  %3262 = fcmp fast ogt float %2749, %2786
  %3263 = and i1 %3105, %3262
  %3264 = and i1 %3107, %3263
  %3265 = and i1 %3109, %3264
  %3266 = and i1 %3111, %3265
  br i1 %3266, label %3267, label %3324, !dx.controlflow.hints !113

; <label>:3267                                    ; preds = %3258
  %3268 = fmul fast float %2788, 0x3FC24924A0000000
  %3269 = fsub fast float %2749, %2786
  %3270 = fdiv fast float %3269, %3268
  %3271 = call float @dx.op.unary.f32(i32 7, float %3270)  ; Saturate(value)
  %3272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3273 = extractvalue %dx.types.CBufRet.f32 %3272, 0
  %3274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3275 = extractvalue %dx.types.CBufRet.f32 %3274, 0
  %3276 = extractvalue %dx.types.CBufRet.f32 %3274, 1
  %3277 = extractvalue %dx.types.CBufRet.f32 %3274, 2
  %3278 = fsub fast float %3273, %3261
  %3279 = fsub fast float %3275, %3099
  %3280 = fsub fast float %3276, %3100
  %3281 = fsub fast float %3277, %3101
  %3282 = fmul fast float %3278, %3271
  %3283 = fmul fast float %3279, %3271
  %3284 = fmul fast float %3280, %3271
  %3285 = fmul fast float %3281, %3271
  %3286 = fadd fast float %3282, %3261
  %3287 = fadd fast float %3283, %3099
  %3288 = fadd fast float %3284, %3100
  %3289 = fadd fast float %3285, %3101
  %3290 = extractvalue %dx.types.CBufRet.f32 %3272, 1
  %3291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3292 = extractvalue %dx.types.CBufRet.f32 %3291, 0
  %3293 = extractvalue %dx.types.CBufRet.f32 %3291, 1
  %3294 = extractvalue %dx.types.CBufRet.f32 %3291, 2
  %3295 = fsub fast float %3290, %3260
  %3296 = fsub fast float %3292, %3096
  %3297 = fsub fast float %3293, %3097
  %3298 = fsub fast float %3294, %3098
  %3299 = fmul fast float %3295, %3271
  %3300 = fmul fast float %3296, %3271
  %3301 = fmul fast float %3297, %3271
  %3302 = fmul fast float %3298, %3271
  %3303 = fadd fast float %3299, %3260
  %3304 = fadd fast float %3300, %3096
  %3305 = fadd fast float %3301, %3097
  %3306 = fadd fast float %3302, %3098
  %3307 = extractvalue %dx.types.CBufRet.f32 %3272, 2
  %3308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3309 = extractvalue %dx.types.CBufRet.f32 %3308, 0
  %3310 = extractvalue %dx.types.CBufRet.f32 %3308, 1
  %3311 = extractvalue %dx.types.CBufRet.f32 %3308, 2
  %3312 = fsub fast float %3307, %3259
  %3313 = fsub fast float %3309, %3093
  %3314 = fsub fast float %3310, %3094
  %3315 = fsub fast float %3311, %3095
  %3316 = fmul fast float %3312, %3271
  %3317 = fmul fast float %3313, %3271
  %3318 = fmul fast float %3314, %3271
  %3319 = fmul fast float %3315, %3271
  %3320 = fadd fast float %3316, %3259
  %3321 = fadd fast float %3317, %3093
  %3322 = fadd fast float %3318, %3094
  %3323 = fadd fast float %3319, %3095
  br label %3324

; <label>:3324                                    ; preds = %3267, %3258
  %3325 = phi float [ %3320, %3267 ], [ %3259, %3258 ]
  %3326 = phi float [ %3321, %3267 ], [ %3093, %3258 ]
  %3327 = phi float [ %3322, %3267 ], [ %3094, %3258 ]
  %3328 = phi float [ %3323, %3267 ], [ %3095, %3258 ]
  %3329 = phi float [ %3303, %3267 ], [ %3260, %3258 ]
  %3330 = phi float [ %3304, %3267 ], [ %3096, %3258 ]
  %3331 = phi float [ %3305, %3267 ], [ %3097, %3258 ]
  %3332 = phi float [ %3306, %3267 ], [ %3098, %3258 ]
  %3333 = phi float [ %3286, %3267 ], [ %3261, %3258 ]
  %3334 = phi float [ %3287, %3267 ], [ %3099, %3258 ]
  %3335 = phi float [ %3288, %3267 ], [ %3100, %3258 ]
  %3336 = phi float [ %3289, %3267 ], [ %3101, %3258 ]
  %3337 = extractvalue %dx.types.CBufRet.f32 %2911, 3
  %3338 = fmul fast float %3337, %3333
  %3339 = fmul fast float %3337, %3329
  %3340 = fmul fast float %3337, %3325
  %3341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3342 = extractvalue %dx.types.CBufRet.f32 %3341, 3
  %3343 = fmul fast float %3338, %3342
  %3344 = fmul fast float %3339, %3342
  %3345 = fmul fast float %3340, %3342
  %3346 = call float @dx.op.dot3.f32(i32 55, float %3343, float %3344, float %3345, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3347 = fmul fast float %3346, 0x3FD20DD760000000
  %3348 = fmul fast float %3334, 1.500000e+00
  %3349 = fmul fast float %3348, %3337
  %3350 = fmul fast float %3349, %3342
  %3351 = fmul fast float %3335, 1.500000e+00
  %3352 = fmul fast float %3351, %3337
  %3353 = fmul fast float %3352, %3342
  %3354 = fmul fast float %3336, 1.500000e+00
  %3355 = fmul fast float %3354, %3337
  %3356 = fmul fast float %3355, %3342
  %3357 = fmul fast float %3330, 1.500000e+00
  %3358 = fmul fast float %3357, %3337
  %3359 = fmul fast float %3358, %3342
  %3360 = fmul fast float %3331, 1.500000e+00
  %3361 = fmul fast float %3360, %3337
  %3362 = fmul fast float %3361, %3342
  %3363 = fmul fast float %3332, 1.500000e+00
  %3364 = fmul fast float %3363, %3337
  %3365 = fmul fast float %3364, %3342
  %3366 = fmul fast float %3326, 1.500000e+00
  %3367 = fmul fast float %3366, %3337
  %3368 = fmul fast float %3367, %3342
  %3369 = fmul fast float %3327, 1.500000e+00
  %3370 = fmul fast float %3369, %3337
  %3371 = fmul fast float %3370, %3342
  %3372 = fmul fast float %3328, 1.500000e+00
  %3373 = fmul fast float %3372, %3337
  %3374 = fmul fast float %3373, %3342
  %3375 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3343)  ; FMax(a,b)
  %3376 = call float @dx.op.dot3.f32(i32 55, float %3350, float %3353, float %3356, float %3350, float %3353, float %3356)  ; Dot3(ax,ay,az,bx,by,bz)
  %3377 = fcmp fast oeq float %3376, 0.000000e+00
  %3378 = fcmp fast oeq float %3375, 0.000000e+00
  %3379 = or i1 %3378, %3377
  br i1 %3379, label %3409, label %3380

; <label>:3380                                    ; preds = %3324
  %3381 = fsub fast float -0.000000e+00, %3356
  %3382 = fsub fast float -0.000000e+00, %3350
  %3383 = call float @dx.op.unary.f32(i32 24, float %3376)  ; Sqrt(value)
  %3384 = fdiv fast float %3383, %3375
  %3385 = fcmp fast ogt float %3384, 0x3FFB6F8900000000
  %3386 = select i1 %3385, float 0x3FFB6F8900000000, float %3384
  %3387 = fmul fast float %3386, 0x3FE8A23460000000
  %3388 = call float @dx.op.unary.f32(i32 7, float %3387)  ; Saturate(value)
  %3389 = call float @dx.op.binary.f32(i32 35, float %3386, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3390 = fmul fast float %3388, %3375
  %3391 = fmul fast float %3389, 0x3FF279A740000000
  %3392 = fadd fast float %3391, -1.000000e+00
  %3393 = call float @dx.op.dot3.f32(i32 55, float %3381, float %3382, float %3353, float %3381, float %3382, float %3353)  ; Dot3(ax,ay,az,bx,by,bz)
  %3394 = call float @dx.op.unary.f32(i32 25, float %3393)  ; Rsqrt(value)
  %3395 = fmul fast float %3394, %3381
  %3396 = fmul fast float %3394, %3382
  %3397 = fmul fast float %3394, %3353
  %3398 = fmul fast float %3392, %3392
  %3399 = fsub fast float 1.000000e+00, %3398
  %3400 = fmul fast float %3389, 0x40005F8BE0000000
  %3401 = fsub fast float 0x400C5BF8A0000000, %3400
  %3402 = fdiv fast float %3390, %3401
  %3403 = fmul fast float %3402, 0x3FEE31C3C0000000
  %3404 = fmul fast float %3403, %3399
  %3405 = fmul fast float %3389, 0x3FDACB7480000000
  %3406 = fadd fast float %3405, 0xBFD7347680000000
  %3407 = fmul fast float %3406, %3402
  %3408 = fmul fast float %3407, %3399
  br label %3409

; <label>:3409                                    ; preds = %3380, %3324
  %3410 = phi float [ %3395, %3380 ], [ 0.000000e+00, %3324 ]
  %3411 = phi float [ %3396, %3380 ], [ 0.000000e+00, %3324 ]
  %3412 = phi float [ %3397, %3380 ], [ 0.000000e+00, %3324 ]
  %3413 = phi float [ %3404, %3380 ], [ 0.000000e+00, %3324 ]
  %3414 = phi float [ %3408, %3380 ], [ 0.000000e+00, %3324 ]
  %3415 = call float @dx.op.dot3.f32(i32 55, float %3410, float %3411, float %3412, float %2339, float %2340, float %2341)  ; Dot3(ax,ay,az,bx,by,bz)
  %3416 = fmul fast float %3415, 0x3FDF454380000000
  %3417 = fmul fast float %3415, %3415
  %3418 = fmul fast float %3417, 0x3FEE471020000000
  %3419 = fadd fast float %3418, 0xBFD42F6020000000
  %3420 = fmul fast float %3375, 0x3FD20DD760000000
  %3421 = fmul fast float %3419, %3414
  %3422 = fadd fast float %3421, %3420
  %3423 = fmul fast float %3416, %3413
  %3424 = fadd fast float %3422, %3423
  %3425 = fsub fast float %3422, %3423
  %3426 = call float @dx.op.dot3.f32(i32 55, float %3410, float %3411, float %3412, float %2356, float %2357, float %2358)  ; Dot3(ax,ay,az,bx,by,bz)
  %3427 = fmul fast float %3426, 0x3FDF454380000000
  %3428 = fmul fast float %3426, %3426
  %3429 = fmul fast float %3428, 0x3FEE471020000000
  %3430 = fadd fast float %3429, 0xBFD42F6020000000
  %3431 = call float @dx.op.dot3.f32(i32 55, float %3375, float %3413, float %3414, float 0x3FD20DD760000000, float %3427, float %3430)  ; Dot3(ax,ay,az,bx,by,bz)
  %3432 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3344)  ; FMax(a,b)
  %3433 = call float @dx.op.dot3.f32(i32 55, float %3359, float %3362, float %3365, float %3359, float %3362, float %3365)  ; Dot3(ax,ay,az,bx,by,bz)
  %3434 = fcmp fast oeq float %3433, 0.000000e+00
  %3435 = fcmp fast oeq float %3432, 0.000000e+00
  %3436 = or i1 %3435, %3434
  br i1 %3436, label %3466, label %3437

; <label>:3437                                    ; preds = %3409
  %3438 = fsub fast float -0.000000e+00, %3365
  %3439 = fsub fast float -0.000000e+00, %3359
  %3440 = call float @dx.op.unary.f32(i32 24, float %3433)  ; Sqrt(value)
  %3441 = fdiv fast float %3440, %3432
  %3442 = fcmp fast ogt float %3441, 0x3FFB6F8900000000
  %3443 = select i1 %3442, float 0x3FFB6F8900000000, float %3441
  %3444 = fmul fast float %3443, 0x3FE8A23460000000
  %3445 = call float @dx.op.unary.f32(i32 7, float %3444)  ; Saturate(value)
  %3446 = call float @dx.op.binary.f32(i32 35, float %3443, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3447 = fmul fast float %3445, %3432
  %3448 = fmul fast float %3446, 0x3FF279A740000000
  %3449 = fadd fast float %3448, -1.000000e+00
  %3450 = call float @dx.op.dot3.f32(i32 55, float %3438, float %3439, float %3362, float %3438, float %3439, float %3362)  ; Dot3(ax,ay,az,bx,by,bz)
  %3451 = call float @dx.op.unary.f32(i32 25, float %3450)  ; Rsqrt(value)
  %3452 = fmul fast float %3451, %3438
  %3453 = fmul fast float %3451, %3439
  %3454 = fmul fast float %3451, %3362
  %3455 = fmul fast float %3449, %3449
  %3456 = fsub fast float 1.000000e+00, %3455
  %3457 = fmul fast float %3446, 0x40005F8BE0000000
  %3458 = fsub fast float 0x400C5BF8A0000000, %3457
  %3459 = fdiv fast float %3447, %3458
  %3460 = fmul fast float %3459, 0x3FEE31C3C0000000
  %3461 = fmul fast float %3460, %3456
  %3462 = fmul fast float %3446, 0x3FDACB7480000000
  %3463 = fadd fast float %3462, 0xBFD7347680000000
  %3464 = fmul fast float %3463, %3459
  %3465 = fmul fast float %3464, %3456
  br label %3466

; <label>:3466                                    ; preds = %3437, %3409
  %3467 = phi float [ %3452, %3437 ], [ 0.000000e+00, %3409 ]
  %3468 = phi float [ %3453, %3437 ], [ 0.000000e+00, %3409 ]
  %3469 = phi float [ %3454, %3437 ], [ 0.000000e+00, %3409 ]
  %3470 = phi float [ %3461, %3437 ], [ 0.000000e+00, %3409 ]
  %3471 = phi float [ %3465, %3437 ], [ 0.000000e+00, %3409 ]
  %3472 = call float @dx.op.dot3.f32(i32 55, float %3467, float %3468, float %3469, float %2339, float %2340, float %2341)  ; Dot3(ax,ay,az,bx,by,bz)
  %3473 = fmul fast float %3472, 0x3FDF454380000000
  %3474 = fmul fast float %3472, %3472
  %3475 = fmul fast float %3474, 0x3FEE471020000000
  %3476 = fadd fast float %3475, 0xBFD42F6020000000
  %3477 = fmul fast float %3432, 0x3FD20DD760000000
  %3478 = fmul fast float %3476, %3471
  %3479 = fadd fast float %3478, %3477
  %3480 = fmul fast float %3473, %3470
  %3481 = fadd fast float %3479, %3480
  %3482 = fsub fast float %3479, %3480
  %3483 = call float @dx.op.dot3.f32(i32 55, float %3467, float %3468, float %3469, float %2356, float %2357, float %2358)  ; Dot3(ax,ay,az,bx,by,bz)
  %3484 = fmul fast float %3483, 0x3FDF454380000000
  %3485 = fmul fast float %3483, %3483
  %3486 = fmul fast float %3485, 0x3FEE471020000000
  %3487 = fadd fast float %3486, 0xBFD42F6020000000
  %3488 = call float @dx.op.dot3.f32(i32 55, float %3432, float %3470, float %3471, float 0x3FD20DD760000000, float %3484, float %3487)  ; Dot3(ax,ay,az,bx,by,bz)
  %3489 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3345)  ; FMax(a,b)
  %3490 = call float @dx.op.dot3.f32(i32 55, float %3368, float %3371, float %3374, float %3368, float %3371, float %3374)  ; Dot3(ax,ay,az,bx,by,bz)
  %3491 = fcmp fast oeq float %3490, 0.000000e+00
  %3492 = fcmp fast oeq float %3489, 0.000000e+00
  %3493 = or i1 %3492, %3491
  br i1 %3493, label %3523, label %3494

; <label>:3494                                    ; preds = %3466
  %3495 = fsub fast float -0.000000e+00, %3374
  %3496 = fsub fast float -0.000000e+00, %3368
  %3497 = call float @dx.op.unary.f32(i32 24, float %3490)  ; Sqrt(value)
  %3498 = fdiv fast float %3497, %3489
  %3499 = fcmp fast ogt float %3498, 0x3FFB6F8900000000
  %3500 = select i1 %3499, float 0x3FFB6F8900000000, float %3498
  %3501 = fmul fast float %3500, 0x3FE8A23460000000
  %3502 = call float @dx.op.unary.f32(i32 7, float %3501)  ; Saturate(value)
  %3503 = call float @dx.op.binary.f32(i32 35, float %3500, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3504 = fmul fast float %3502, %3489
  %3505 = fmul fast float %3503, 0x3FF279A740000000
  %3506 = fadd fast float %3505, -1.000000e+00
  %3507 = call float @dx.op.dot3.f32(i32 55, float %3495, float %3496, float %3371, float %3495, float %3496, float %3371)  ; Dot3(ax,ay,az,bx,by,bz)
  %3508 = call float @dx.op.unary.f32(i32 25, float %3507)  ; Rsqrt(value)
  %3509 = fmul fast float %3508, %3495
  %3510 = fmul fast float %3508, %3496
  %3511 = fmul fast float %3508, %3371
  %3512 = fmul fast float %3506, %3506
  %3513 = fsub fast float 1.000000e+00, %3512
  %3514 = fmul fast float %3503, 0x40005F8BE0000000
  %3515 = fsub fast float 0x400C5BF8A0000000, %3514
  %3516 = fdiv fast float %3504, %3515
  %3517 = fmul fast float %3516, 0x3FEE31C3C0000000
  %3518 = fmul fast float %3517, %3513
  %3519 = fmul fast float %3503, 0x3FDACB7480000000
  %3520 = fadd fast float %3519, 0xBFD7347680000000
  %3521 = fmul fast float %3520, %3516
  %3522 = fmul fast float %3521, %3513
  br label %3523

; <label>:3523                                    ; preds = %3494, %3466
  %3524 = phi float [ %3509, %3494 ], [ 0.000000e+00, %3466 ]
  %3525 = phi float [ %3510, %3494 ], [ 0.000000e+00, %3466 ]
  %3526 = phi float [ %3511, %3494 ], [ 0.000000e+00, %3466 ]
  %3527 = phi float [ %3518, %3494 ], [ 0.000000e+00, %3466 ]
  %3528 = phi float [ %3522, %3494 ], [ 0.000000e+00, %3466 ]
  %3529 = call float @dx.op.dot3.f32(i32 55, float %3524, float %3525, float %3526, float %2339, float %2340, float %2341)  ; Dot3(ax,ay,az,bx,by,bz)
  %3530 = fmul fast float %3529, 0x3FDF454380000000
  %3531 = fmul fast float %3529, %3529
  %3532 = fmul fast float %3531, 0x3FEE471020000000
  %3533 = fadd fast float %3532, 0xBFD42F6020000000
  %3534 = fmul fast float %3489, 0x3FD20DD760000000
  %3535 = fmul fast float %3533, %3528
  %3536 = fadd fast float %3535, %3534
  %3537 = fmul fast float %3530, %3527
  %3538 = fadd fast float %3536, %3537
  %3539 = fsub fast float %3536, %3537
  %3540 = call float @dx.op.dot3.f32(i32 55, float %3524, float %3525, float %3526, float %2356, float %2357, float %2358)  ; Dot3(ax,ay,az,bx,by,bz)
  %3541 = fmul fast float %3540, 0x3FDF454380000000
  %3542 = fmul fast float %3540, %3540
  %3543 = fmul fast float %3542, 0x3FEE471020000000
  %3544 = fadd fast float %3543, 0xBFD42F6020000000
  %3545 = call float @dx.op.dot3.f32(i32 55, float %3489, float %3527, float %3528, float 0x3FD20DD760000000, float %3541, float %3544)  ; Dot3(ax,ay,az,bx,by,bz)
  %3546 = call float @dx.op.binary.f32(i32 35, float %3424, float 0.000000e+00)  ; FMax(a,b)
  %3547 = call float @dx.op.binary.f32(i32 35, float %3481, float 0.000000e+00)  ; FMax(a,b)
  %3548 = call float @dx.op.binary.f32(i32 35, float %3538, float 0.000000e+00)  ; FMax(a,b)
  %3549 = call float @dx.op.binary.f32(i32 35, float %3425, float 0.000000e+00)  ; FMax(a,b)
  %3550 = call float @dx.op.binary.f32(i32 35, float %3482, float 0.000000e+00)  ; FMax(a,b)
  %3551 = call float @dx.op.binary.f32(i32 35, float %3539, float 0.000000e+00)  ; FMax(a,b)
  %3552 = call float @dx.op.binary.f32(i32 35, float %3431, float 0.000000e+00)  ; FMax(a,b)
  %3553 = call float @dx.op.binary.f32(i32 35, float %3488, float 0.000000e+00)  ; FMax(a,b)
  %3554 = call float @dx.op.binary.f32(i32 35, float %3545, float 0.000000e+00)  ; FMax(a,b)
  %3555 = fsub fast float %2743, %3546
  %3556 = fsub fast float %2744, %3547
  %3557 = fsub fast float %2745, %3548
  %3558 = fmul fast float %3555, %2419
  %3559 = fmul fast float %3556, %2419
  %3560 = fmul fast float %3557, %2419
  %3561 = fadd fast float %3558, %3546
  %3562 = fadd fast float %3559, %3547
  %3563 = fadd fast float %3560, %3548
  %3564 = fsub fast float %2740, %3549
  %3565 = fsub fast float %2741, %3550
  %3566 = fsub fast float %2742, %3551
  %3567 = fmul fast float %3564, %2419
  %3568 = fmul fast float %3565, %2419
  %3569 = fmul fast float %3566, %2419
  %3570 = fadd fast float %3567, %3549
  %3571 = fadd fast float %3568, %3550
  %3572 = fadd fast float %3569, %3551
  %3573 = fsub fast float %2737, %3552
  %3574 = fsub fast float %2738, %3553
  %3575 = fsub fast float %2739, %3554
  %3576 = fmul fast float %3573, %2419
  %3577 = fmul fast float %3574, %2419
  %3578 = fmul fast float %3575, %2419
  %3579 = fadd fast float %3576, %3552
  %3580 = fadd fast float %3577, %3553
  %3581 = fadd fast float %3578, %3554
  %3582 = fsub fast float %2521, %3347
  %3583 = fmul fast float %3582, %2419
  %3584 = fadd fast float %3583, %3347
  br label %3585

; <label>:3585                                    ; preds = %3523, %2736
  %3586 = phi float [ %3584, %3523 ], [ %2521, %2736 ]
  %3587 = phi float [ %3579, %3523 ], [ %2737, %2736 ]
  %3588 = phi float [ %3580, %3523 ], [ %2738, %2736 ]
  %3589 = phi float [ %3581, %3523 ], [ %2739, %2736 ]
  %3590 = phi float [ %3570, %3523 ], [ %2740, %2736 ]
  %3591 = phi float [ %3571, %3523 ], [ %2741, %2736 ]
  %3592 = phi float [ %3572, %3523 ], [ %2742, %2736 ]
  %3593 = phi float [ %3561, %3523 ], [ %2743, %2736 ]
  %3594 = phi float [ %3562, %3523 ], [ %2744, %2736 ]
  %3595 = phi float [ %3563, %3523 ], [ %2745, %2736 ]
  %3596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3597 = extractvalue %dx.types.CBufRet.f32 %3596, 0
  %3598 = call float @dx.op.binary.f32(i32 36, float %2336, float %3597)  ; FMin(a,b)
  %3599 = fmul fast float %3598, %2360
  %3600 = fsub fast float 1.000000e+00, %3599
  %3601 = bitcast float %3600 to i32
  %3602 = sub nsw i32 2129859010, %3601
  %3603 = bitcast i32 %3602 to float
  %3604 = call float @dx.op.binary.f32(i32 36, float %2337, float %3597)  ; FMin(a,b)
  %3605 = fmul fast float %3604, %2360
  %3606 = fsub fast float 1.000000e+00, %3605
  %3607 = bitcast float %3606 to i32
  %3608 = sub nsw i32 2129859010, %3607
  %3609 = bitcast i32 %3608 to float
  %3610 = call float @dx.op.binary.f32(i32 36, float %2338, float %3597)  ; FMin(a,b)
  %3611 = fmul fast float %3610, %2360
  %3612 = fsub fast float 1.000000e+00, %3611
  %3613 = bitcast float %3612 to i32
  %3614 = sub nsw i32 2129859010, %3613
  %3615 = bitcast i32 %3614 to float
  %3616 = fmul fast float %3593, %2359
  %3617 = fmul fast float %3616, %3603
  %3618 = fmul fast float %3594, %2359
  %3619 = fmul fast float %3618, %3609
  %3620 = fmul fast float %3595, %2359
  %3621 = fmul fast float %3620, %3615
  %3622 = call float @dx.op.binary.f32(i32 36, float %2342, float %3597)  ; FMin(a,b)
  %3623 = fmul fast float %3622, %2360
  %3624 = fsub fast float 1.000000e+00, %3623
  %3625 = bitcast float %3624 to i32
  %3626 = sub nsw i32 2129859010, %3625
  %3627 = bitcast i32 %3626 to float
  %3628 = call float @dx.op.binary.f32(i32 36, float %2343, float %3597)  ; FMin(a,b)
  %3629 = fmul fast float %3628, %2360
  %3630 = fsub fast float 1.000000e+00, %3629
  %3631 = bitcast float %3630 to i32
  %3632 = sub nsw i32 2129859010, %3631
  %3633 = bitcast i32 %3632 to float
  %3634 = call float @dx.op.binary.f32(i32 36, float %2348, float %3597)  ; FMin(a,b)
  %3635 = fmul fast float %3634, %2360
  %3636 = fsub fast float 1.000000e+00, %3635
  %3637 = bitcast float %3636 to i32
  %3638 = sub nsw i32 2129859010, %3637
  %3639 = bitcast i32 %3638 to float
  %3640 = fmul fast float %3587, %2359
  %3641 = fmul fast float %3640, %3627
  %3642 = fmul fast float %3588, %2359
  %3643 = fmul fast float %3642, %3633
  %3644 = fmul fast float %3589, %2359
  %3645 = fmul fast float %3644, %3639
  %3646 = call float @dx.op.dot3.f32(i32 55, float %3617, float %3619, float %3621, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3647 = select i1 %238, float 0.000000e+00, float %3617
  %3648 = select i1 %238, float %3646, float %3619
  %3649 = select i1 %238, float 0.000000e+00, float %3621
  %3650 = call float @dx.op.dot3.f32(i32 55, float %3590, float %3591, float %3592, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3651 = select i1 %238, float 0.000000e+00, float %3590
  %3652 = select i1 %238, float %3650, float %3591
  %3653 = select i1 %238, float 0.000000e+00, float %3592
  %3654 = call float @dx.op.dot3.f32(i32 55, float %3641, float %3643, float %3645, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3655 = select i1 %238, float 0.000000e+00, float %3641
  %3656 = select i1 %238, float %3654, float %3643
  %3657 = select i1 %238, float 0.000000e+00, float %3645
  %3658 = fmul fast float %1087, %1087
  %3659 = call float @dx.op.unary.f32(i32 7, float %3658)  ; Saturate(value)
  %3660 = fmul fast float %2350, 9.843750e-01
  %3661 = fmul fast float %2345, 9.843750e-01
  %3662 = fadd fast float %3660, 7.812500e-03
  %3663 = fadd fast float %3661, 7.812500e-03
  %3664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %3662, float %3663, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3665 = extractvalue %dx.types.ResRet.f32 %3664, 0
  %3666 = extractvalue %dx.types.ResRet.f32 %3664, 1
  %3667 = extractvalue %dx.types.ResRet.f32 %3664, 2
  %3668 = extractvalue %dx.types.ResRet.f32 %3664, 3
  %3669 = fsub fast float 1.000000e+00, %3659
  %3670 = fsub fast float %3667, %3665
  %3671 = fsub fast float %3668, %3666
  %3672 = fmul fast float %3670, %3669
  %3673 = fmul fast float %3671, %3669
  %3674 = fadd fast float %3672, %3665
  %3675 = fadd fast float %3673, %3666
  %3676 = fmul fast float %3674, %2342
  %3677 = fmul fast float %3674, %2343
  %3678 = fmul fast float %3674, %2348
  %3679 = fadd fast float %3676, %3675
  %3680 = fadd fast float %3677, %3675
  %3681 = fadd fast float %3678, %3675
  %3682 = fcmp fast ogt float %1681, 0.000000e+00
  br i1 %3682, label %3683, label %3709

; <label>:3683                                    ; preds = %3585
  %3684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1681, float %2350, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3685 = extractvalue %dx.types.ResRet.f32 %3684, 0
  %3686 = extractvalue %dx.types.ResRet.f32 %3684, 1
  %3687 = extractvalue %dx.types.ResRet.f32 %3684, 2
  %3688 = fadd fast float %3685, -5.000000e-01
  %3689 = fadd fast float %3686, -5.000000e-01
  %3690 = fadd fast float %3687, -5.000000e-01
  %3691 = fsub fast float 1.000000e+00, %2342
  %3692 = fsub fast float 1.000000e+00, %2343
  %3693 = fsub fast float 1.000000e+00, %2348
  %3694 = fmul fast float %2342, 4.000000e+00
  %3695 = fmul fast float %3694, %3691
  %3696 = fmul fast float %3695, %3688
  %3697 = fmul fast float %2343, 4.000000e+00
  %3698 = fmul fast float %3697, %3692
  %3699 = fmul fast float %3698, %3689
  %3700 = fmul fast float %2348, 4.000000e+00
  %3701 = fmul fast float %3700, %3693
  %3702 = fmul fast float %3701, %3690
  %3703 = fadd fast float %3696, %3679
  %3704 = fadd fast float %3699, %3680
  %3705 = fadd fast float %3702, %3681
  %3706 = call float @dx.op.unary.f32(i32 7, float %3703)  ; Saturate(value)
  %3707 = call float @dx.op.unary.f32(i32 7, float %3704)  ; Saturate(value)
  %3708 = call float @dx.op.unary.f32(i32 7, float %3705)  ; Saturate(value)
  br label %3709

; <label>:3709                                    ; preds = %3683, %3585
  %3710 = phi float [ %3706, %3683 ], [ %3679, %3585 ]
  %3711 = phi float [ %3707, %3683 ], [ %3680, %3585 ]
  %3712 = phi float [ %3708, %3683 ], [ %3681, %3585 ]
  %3713 = call float @dx.op.binary.f32(i32 35, float %3711, float %3712)  ; FMax(a,b)
  %3714 = call float @dx.op.binary.f32(i32 35, float %3710, float %3713)  ; FMax(a,b)
  %3715 = fsub fast float 1.000000e+00, %3714
  %3716 = fmul fast float %3714, %2345
  %3717 = fadd fast float %3716, %2345
  %3718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3719 = extractvalue %dx.types.CBufRet.f32 %3718, 2
  %3720 = extractvalue %dx.types.CBufRet.f32 %3718, 3
  %3721 = fmul fast float %3717, %3719
  %3722 = fadd fast float %3721, %3720
  %3723 = call float @dx.op.unary.f32(i32 7, float %3722)  ; Saturate(value)
  %3724 = fsub fast float 1.000000e+00, %2371
  %3725 = fadd fast float %3724, %3723
  %3726 = call float @dx.op.unary.f32(i32 7, float %3725)  ; Saturate(value)
  %3727 = fcmp fast olt float %3726, 1.000000e+00
  br i1 %3727, label %3728, label %4204

; <label>:3728                                    ; preds = %3709
  %3729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3730 = extractvalue %dx.types.CBufRet.f32 %3729, 2
  %3731 = extractvalue %dx.types.CBufRet.f32 %3729, 3
  %3732 = fmul fast float %3730, %100
  %3733 = fmul fast float %3731, %101
  %3734 = fptoui float %3732 to i32
  %3735 = fptoui float %3733 to i32
  %3736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3737 = extractvalue %dx.types.CBufRet.f32 %3736, 0
  %3738 = extractvalue %dx.types.CBufRet.f32 %3736, 2
  %3739 = extractvalue %dx.types.CBufRet.f32 %3736, 3
  %3740 = fadd fast float %88, -4.000000e+00
  %3741 = call float @dx.op.binary.f32(i32 35, float %3740, float 0.000000e+00)  ; FMax(a,b)
  %3742 = fadd fast float %3741, %3737
  %3743 = fmul fast float %3742, %3738
  %3744 = call float @dx.op.unary.f32(i32 23, float %3743)  ; Log(value)
  %3745 = fmul fast float %3744, %3739
  %3746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3747 = extractvalue %dx.types.CBufRet.f32 %3746, 2
  %3748 = fmul fast float %3745, %3747
  %3749 = call float @dx.op.unary.f32(i32 7, float %3748)  ; Saturate(value)
  %3750 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3751 = extractvalue %dx.types.CBufRet.i32 %3750, 1
  %3752 = add i32 %3751, -1
  %3753 = uitofp i32 %3751 to float
  %3754 = fmul fast float %3753, %3749
  %3755 = fptoui float %3754 to i32
  %3756 = call i32 @dx.op.binary.i32(i32 40, i32 %3755, i32 %3752)  ; UMin(a,b)
  %3757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3758 = extractvalue %dx.types.CBufRet.i32 %3757, 2
  %3759 = extractvalue %dx.types.CBufRet.i32 %3757, 3
  %3760 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3735, i32 %3758, i32 %3734)  ; UMad(a,b,c)
  %3761 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3756, i32 %3759, i32 %3760)  ; UMad(a,b,c)
  %3762 = call float @dx.op.binary.f32(i32 35, float %88, float 0.000000e+00)  ; FMax(a,b)
  %3763 = fptoui float %3762 to i32
  %3764 = lshr i32 %3763, 5
  %3765 = call i32 @dx.op.binary.i32(i32 40, i32 %3764, i32 8191)  ; UMin(a,b)
  %3766 = fsub fast float %2135, %149
  %3767 = call float @dx.op.unary.f32(i32 7, float %3766)  ; Saturate(value)
  %3768 = fcmp fast ogt float %3767, 0.000000e+00
  %3769 = fcmp fast ogt float %2358, 0.000000e+00
  %3770 = and i1 %3769, %3768
  br i1 %3770, label %3771, label %3800

; <label>:3771                                    ; preds = %3728
  %3772 = call float @dx.op.dot3.f32(i32 55, float %2356, float %2357, float %2358, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3773 = call float @dx.op.binary.f32(i32 35, float %3772, float -1.000000e+00)  ; FMax(a,b)
  %3774 = call float @dx.op.binary.f32(i32 36, float %3773, float 1.000000e+00)  ; FMin(a,b)
  %3775 = fmul fast float %3774, %3774
  %3776 = fsub fast float 1.000000e+00, %3775
  %3777 = fmul fast float %3776, 0x3FFC6E2300000000
  %3778 = fsub fast float 1.000000e+00, %3777
  %3779 = fcmp fast ogt float %3778, 0.000000e+00
  %3780 = call float @dx.op.unary.f32(i32 24, float %3778)  ; Sqrt(value)
  %3781 = fsub fast float 1.000000e+00, %3780
  %3782 = call float @dx.op.unary.f32(i32 23, float %3781)  ; Log(value)
  %3783 = fmul fast float %3782, 5.000000e+00
  %3784 = call float @dx.op.unary.f32(i32 21, float %3783)  ; Exp(value)
  %3785 = fmul fast float %3784, 0x3FEF591A60000000
  %3786 = fadd fast float %3785, 0x3F94DCB540000000
  %3787 = select i1 %3779, float %3786, float 1.000000e+00
  %3788 = fcmp fast oge float %3787, 1.000000e+00
  %3789 = fmul fast float %3772, 2.000000e+00
  %3790 = fadd fast float %3789, %2358
  %3791 = select i1 %3788, float %3790, float %2358
  %3792 = fsub fast float %3791, %2358
  %3793 = fmul fast float %3792, %3767
  %3794 = fadd fast float %3793, %2358
  %3795 = call float @dx.op.dot3.f32(i32 55, float %2356, float %2357, float %3794, float %2356, float %2357, float %3794)  ; Dot3(ax,ay,az,bx,by,bz)
  %3796 = call float @dx.op.unary.f32(i32 25, float %3795)  ; Rsqrt(value)
  %3797 = fmul fast float %3796, %2356
  %3798 = fmul fast float %3796, %2357
  %3799 = fmul fast float %3794, %3796
  br label %3800

; <label>:3800                                    ; preds = %3771, %3728
  %3801 = phi float [ %3797, %3771 ], [ %2356, %3728 ]
  %3802 = phi float [ %3798, %3771 ], [ %2357, %3728 ]
  %3803 = phi float [ %3799, %3771 ], [ %2358, %3728 ]
  %3804 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3805 = extractvalue %dx.types.CBufRet.i32 %3804, 2
  %3806 = add nsw i32 %3805, -1
  %3807 = call i32 @dx.op.binary.i32(i32 37, i32 %3806, i32 0)  ; IMax(a,b)
  %3808 = shl i32 %3765, 2
  %3809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3808, i32 undef)  ; BufferLoad(srv,index,wot)
  %3810 = extractvalue %dx.types.ResRet.i32 %3809, 0
  %3811 = lshr i32 %3810, 16
  %3812 = and i32 %3810, 65535
  %3813 = lshr i32 %3810, 21
  %3814 = lshr i32 %3812, 5
  %3815 = call i32 @dx.op.binary.i32(i32 40, i32 %3814, i32 %3807)  ; UMin(a,b)
  %3816 = icmp ugt i32 %3813, %3815
  br i1 %3816, label %4180, label %3817

; <label>:3817                                    ; preds = %3800
  br label %3818

; <label>:3818                                    ; preds = %4172, %3817
  %3819 = phi float [ %4173, %4172 ], [ 0.000000e+00, %3817 ]
  %3820 = phi float [ %4174, %4172 ], [ 0.000000e+00, %3817 ]
  %3821 = phi float [ %4175, %4172 ], [ 0.000000e+00, %3817 ]
  %3822 = phi float [ %4176, %4172 ], [ 1.000000e+00, %3817 ]
  %3823 = phi i32 [ %4177, %4172 ], [ %3813, %3817 ]
  %3824 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3825 = extractvalue %dx.types.CBufRet.i32 %3824, 2
  %3826 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3761, i32 %3825, i32 %3823)  ; UMad(a,b,c)
  %3827 = shl i32 %3826, 2
  %3828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3829 = extractvalue %dx.types.ResRet.i32 %3828, 0
  %3830 = shl i32 %3823, 5
  %3831 = sub nsw i32 %3811, %3830
  %3832 = call i32 @dx.op.binary.i32(i32 37, i32 %3831, i32 0)  ; IMax(a,b)
  %3833 = call i32 @dx.op.binary.i32(i32 38, i32 %3832, i32 31)  ; IMin(a,b)
  %3834 = sub nsw i32 1, %3811
  %3835 = add nsw i32 %3834, %3812
  %3836 = call i32 @dx.op.binary.i32(i32 37, i32 %3835, i32 0)  ; IMax(a,b)
  %3837 = call i32 @dx.op.binary.i32(i32 38, i32 %3836, i32 32)  ; IMin(a,b)
  %3838 = and i32 %3837, 31
  %3839 = shl i32 -1, %3838
  %3840 = xor i32 %3839, -1
  %3841 = and i32 %3833, 31
  %3842 = shl i32 %3840, %3841
  %3843 = icmp eq i32 %3837, 32
  %3844 = select i1 %3843, i32 -1, i32 %3842
  %3845 = and i32 %3844, %3829
  %3846 = icmp eq i32 %3845, 0
  br i1 %3846, label %4172, label %3847

; <label>:3847                                    ; preds = %3818
  br label %3848

; <label>:3848                                    ; preds = %3955, %3847
  %3849 = phi float [ %3956, %3955 ], [ %3819, %3847 ]
  %3850 = phi float [ %3957, %3955 ], [ %3820, %3847 ]
  %3851 = phi float [ %3958, %3955 ], [ %3821, %3847 ]
  %3852 = phi float [ %3959, %3955 ], [ %3822, %3847 ]
  %3853 = phi i32 [ %3858, %3955 ], [ %3845, %3847 ]
  %3854 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3853)  ; FirstbitLo(value)
  %3855 = add i32 %3854, %3830
  %3856 = and i32 %3854, 31
  %3857 = shl i32 1, %3856
  %3858 = xor i32 %3857, %3853
  %3859 = mul i32 %3855, 72
  %3860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3859, i32 undef)  ; BufferLoad(srv,index,wot)
  %3861 = extractvalue %dx.types.ResRet.f32 %3860, 0
  %3862 = extractvalue %dx.types.ResRet.f32 %3860, 1
  %3863 = extractvalue %dx.types.ResRet.f32 %3860, 2
  %3864 = add i32 %3859, 12
  %3865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3866 = extractvalue %dx.types.ResRet.i32 %3865, 0
  %3867 = add i32 %3859, 16
  %3868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3867, i32 undef)  ; BufferLoad(srv,index,wot)
  %3869 = extractvalue %dx.types.ResRet.f32 %3868, 0
  %3870 = extractvalue %dx.types.ResRet.f32 %3868, 1
  %3871 = extractvalue %dx.types.ResRet.f32 %3868, 2
  %3872 = add i32 %3859, 28
  %3873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3872, i32 undef)  ; BufferLoad(srv,index,wot)
  %3874 = extractvalue %dx.types.ResRet.f32 %3873, 0
  %3875 = add i32 %3859, 32
  %3876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3875, i32 undef)  ; BufferLoad(srv,index,wot)
  %3877 = extractvalue %dx.types.ResRet.f32 %3876, 0
  %3878 = extractvalue %dx.types.ResRet.f32 %3876, 1
  %3879 = extractvalue %dx.types.ResRet.f32 %3876, 2
  %3880 = extractvalue %dx.types.ResRet.f32 %3876, 3
  %3881 = add i32 %3859, 48
  %3882 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3881, i32 undef)  ; BufferLoad(srv,index,wot)
  %3883 = extractvalue %dx.types.ResRet.f32 %3882, 0
  %3884 = extractvalue %dx.types.ResRet.f32 %3882, 1
  %3885 = add i32 %3859, 56
  %3886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3887 = extractvalue %dx.types.ResRet.f32 %3886, 0
  %3888 = extractvalue %dx.types.ResRet.f32 %3886, 1
  %3889 = add i32 %3859, 64
  %3890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.f32 %3890, 0
  %3892 = extractvalue %dx.types.ResRet.f32 %3890, 1
  %3893 = mul i32 %3855, 60
  %3894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.f32 %3894, 0
  %3896 = extractvalue %dx.types.ResRet.f32 %3894, 1
  %3897 = extractvalue %dx.types.ResRet.f32 %3894, 2
  %3898 = add i32 %3893, 12
  %3899 = add i32 %3893, 48
  %3900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3901 = extractvalue %dx.types.ResRet.f32 %3900, 0
  %3902 = extractvalue %dx.types.ResRet.f32 %3900, 1
  %3903 = extractvalue %dx.types.ResRet.f32 %3900, 2
  %3904 = and i32 %3866, 32767
  %3905 = bitcast float %3861 to i32
  %3906 = icmp eq i32 %3905, -1
  %3907 = bitcast float %3862 to i32
  %3908 = and i32 %3866, 32768
  %3909 = icmp ne i32 %3908, 0
  %3910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3911 = extractvalue %dx.types.CBufRet.f32 %3910, 0
  %3912 = extractvalue %dx.types.CBufRet.f32 %3910, 1
  %3913 = extractvalue %dx.types.CBufRet.f32 %3910, 2
  %3914 = fsub fast float %3895, %3911
  %3915 = fsub fast float %3896, %3912
  %3916 = fsub fast float %3897, %3913
  %3917 = fsub fast float %147, %3914
  %3918 = fsub fast float %148, %3915
  %3919 = fsub fast float %149, %3916
  %3920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3898, i32 undef)  ; BufferLoad(srv,index,wot)
  %3921 = extractvalue %dx.types.ResRet.f32 %3920, 0
  %3922 = extractvalue %dx.types.ResRet.f32 %3920, 1
  %3923 = extractvalue %dx.types.ResRet.f32 %3920, 2
  %3924 = call float @dx.op.dot3.f32(i32 55, float %3917, float %3918, float %3919, float %3921, float %3922, float %3923)  ; Dot3(ax,ay,az,bx,by,bz)
  %3925 = add i32 %3893, 24
  %3926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3927 = extractvalue %dx.types.ResRet.f32 %3926, 0
  %3928 = extractvalue %dx.types.ResRet.f32 %3926, 1
  %3929 = extractvalue %dx.types.ResRet.f32 %3926, 2
  %3930 = call float @dx.op.dot3.f32(i32 55, float %3917, float %3918, float %3919, float %3927, float %3928, float %3929)  ; Dot3(ax,ay,az,bx,by,bz)
  %3931 = add i32 %3893, 36
  %3932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3931, i32 undef)  ; BufferLoad(srv,index,wot)
  %3933 = extractvalue %dx.types.ResRet.f32 %3932, 0
  %3934 = extractvalue %dx.types.ResRet.f32 %3932, 1
  %3935 = extractvalue %dx.types.ResRet.f32 %3932, 2
  %3936 = call float @dx.op.dot3.f32(i32 55, float %3917, float %3918, float %3919, float %3933, float %3934, float %3935)  ; Dot3(ax,ay,az,bx,by,bz)
  %3937 = call float @dx.op.unary.f32(i32 6, float %3924)  ; FAbs(value)
  %3938 = call float @dx.op.unary.f32(i32 6, float %3930)  ; FAbs(value)
  %3939 = call float @dx.op.unary.f32(i32 6, float %3936)  ; FAbs(value)
  %3940 = fsub fast float %3901, %3937
  %3941 = fsub fast float %3902, %3938
  %3942 = fsub fast float %3903, %3939
  %3943 = fmul fast float %3940, %3869
  %3944 = fmul fast float %3941, %3870
  %3945 = fmul fast float %3942, %3871
  %3946 = call float @dx.op.binary.f32(i32 36, float %3944, float %3945)  ; FMin(a,b)
  %3947 = call float @dx.op.binary.f32(i32 36, float %3943, float %3946)  ; FMin(a,b)
  %3948 = call float @dx.op.unary.f32(i32 7, float %3947)  ; Saturate(value)
  %3949 = call float @dx.op.binary.f32(i32 36, float %3852, float %3948)  ; FMin(a,b)
  %3950 = uitofp i1 %3909 to float
  %3951 = fadd fast float %3767, 1.000000e+00
  %3952 = fsub fast float %3951, %3950
  %3953 = fmul fast float %3949, %3952
  %3954 = fcmp fast ogt float %3953, 0.000000e+00
  br i1 %3954, label %3961, label %3955

; <label>:3955                                    ; preds = %4103, %3848
  %3956 = phi float [ %4167, %4103 ], [ %3849, %3848 ]
  %3957 = phi float [ %4168, %4103 ], [ %3850, %3848 ]
  %3958 = phi float [ %4169, %4103 ], [ %3851, %3848 ]
  %3959 = phi float [ %4170, %4103 ], [ %3852, %3848 ]
  %3960 = icmp eq i32 %3853, %3857
  br i1 %3960, label %4171, label %3848

; <label>:3961                                    ; preds = %3848
  br i1 %3906, label %4019, label %3962

; <label>:3962                                    ; preds = %3961
  %3963 = fsub fast float -0.000000e+00, %3921
  %3964 = fsub fast float -0.000000e+00, %3922
  %3965 = fsub fast float -0.000000e+00, %3923
  %3966 = call float @dx.op.dot3.f32(i32 55, float %3801, float %3802, float %3803, float %3963, float %3964, float %3965)  ; Dot3(ax,ay,az,bx,by,bz)
  %3967 = fsub fast float -0.000000e+00, %3966
  %3968 = call float @dx.op.dot3.f32(i32 55, float %3917, float %3918, float %3919, float %3963, float %3964, float %3965)  ; Dot3(ax,ay,az,bx,by,bz)
  %3969 = fadd fast float %3968, %3884
  %3970 = fadd fast float %3883, %3968
  %3971 = fsub fast float -0.000000e+00, %3970
  %3972 = fcmp ogt float %3966, -0.000000e+00
  %3973 = select i1 %3972, float %3971, float %3969
  %3974 = call float @dx.op.unary.f32(i32 6, float %3967)  ; FAbs(value)
  %3975 = fdiv fast float 1.000000e+00, %3974
  %3976 = fmul fast float %3973, %3975
  %3977 = call float @dx.op.binary.f32(i32 35, float %3976, float 0.000000e+00)  ; FMax(a,b)
  %3978 = fsub fast float -0.000000e+00, %3927
  %3979 = fsub fast float -0.000000e+00, %3928
  %3980 = fsub fast float -0.000000e+00, %3929
  %3981 = call float @dx.op.dot3.f32(i32 55, float %3801, float %3802, float %3803, float %3978, float %3979, float %3980)  ; Dot3(ax,ay,az,bx,by,bz)
  %3982 = fsub fast float -0.000000e+00, %3981
  %3983 = call float @dx.op.dot3.f32(i32 55, float %3917, float %3918, float %3919, float %3978, float %3979, float %3980)  ; Dot3(ax,ay,az,bx,by,bz)
  %3984 = fadd fast float %3983, %3888
  %3985 = fadd fast float %3887, %3983
  %3986 = fsub fast float -0.000000e+00, %3985
  %3987 = fcmp ogt float %3981, -0.000000e+00
  %3988 = select i1 %3987, float %3986, float %3984
  %3989 = call float @dx.op.unary.f32(i32 6, float %3982)  ; FAbs(value)
  %3990 = fdiv fast float 1.000000e+00, %3989
  %3991 = fmul fast float %3988, %3990
  %3992 = call float @dx.op.binary.f32(i32 35, float %3991, float 0.000000e+00)  ; FMax(a,b)
  %3993 = fsub fast float -0.000000e+00, %3933
  %3994 = fsub fast float -0.000000e+00, %3934
  %3995 = fsub fast float -0.000000e+00, %3935
  %3996 = call float @dx.op.dot3.f32(i32 55, float %3801, float %3802, float %3803, float %3993, float %3994, float %3995)  ; Dot3(ax,ay,az,bx,by,bz)
  %3997 = fsub fast float -0.000000e+00, %3996
  %3998 = call float @dx.op.dot3.f32(i32 55, float %3917, float %3918, float %3919, float %3993, float %3994, float %3995)  ; Dot3(ax,ay,az,bx,by,bz)
  %3999 = fadd fast float %3998, %3892
  %4000 = fadd fast float %3891, %3998
  %4001 = fsub fast float -0.000000e+00, %4000
  %4002 = fcmp ogt float %3996, -0.000000e+00
  %4003 = select i1 %4002, float %4001, float %3999
  %4004 = call float @dx.op.unary.f32(i32 6, float %3997)  ; FAbs(value)
  %4005 = fdiv fast float 1.000000e+00, %4004
  %4006 = fmul fast float %4003, %4005
  %4007 = call float @dx.op.binary.f32(i32 35, float %4006, float 0.000000e+00)  ; FMax(a,b)
  %4008 = call float @dx.op.binary.f32(i32 36, float %3992, float %4007)  ; FMin(a,b)
  %4009 = call float @dx.op.binary.f32(i32 36, float %3977, float %4008)  ; FMin(a,b)
  %4010 = fmul fast float %4009, %3801
  %4011 = fmul fast float %4009, %3802
  %4012 = fmul fast float %4009, %3803
  %4013 = fadd fast float %4010, %147
  %4014 = fadd fast float %4011, %148
  %4015 = fadd fast float %4012, %149
  %4016 = fsub fast float %4013, %3861
  %4017 = fsub fast float %4014, %3862
  %4018 = fsub fast float %4015, %3863
  br label %4026

; <label>:4019                                    ; preds = %3961
  %4020 = fmul fast float %3801, 8.096000e+03
  %4021 = fmul fast float %3802, 8.096000e+03
  %4022 = fmul fast float %3803, 8.096000e+03
  %4023 = fadd fast float %4020, %147
  %4024 = fadd fast float %4021, %148
  %4025 = fadd fast float %4022, %149
  br label %4026

; <label>:4026                                    ; preds = %4019, %3962
  %4027 = phi float [ %3801, %4019 ], [ %4016, %3962 ]
  %4028 = phi float [ %3802, %4019 ], [ %4017, %3962 ]
  %4029 = phi float [ %3803, %4019 ], [ %4018, %3962 ]
  %4030 = phi float [ %4023, %4019 ], [ %4013, %3962 ]
  %4031 = phi float [ %4024, %4019 ], [ %4014, %3962 ]
  %4032 = phi float [ %4025, %4019 ], [ %4015, %3962 ]
  %4033 = fcmp fast olt float %3880, 1.000000e+00
  br i1 %4033, label %4034, label %4065, !dx.controlflow.hints !114

; <label>:4034                                    ; preds = %4026
  %4035 = fmul fast float %4029, %3878
  %4036 = fmul fast float %4028, %3879
  %4037 = fsub fast float %4035, %4036
  %4038 = fmul fast float %4027, %3879
  %4039 = fmul fast float %4029, %3877
  %4040 = fsub fast float %4038, %4039
  %4041 = fmul fast float %4028, %3877
  %4042 = fmul fast float %4027, %3878
  %4043 = fsub fast float %4041, %4042
  %4044 = fmul fast float %4037, 2.000000e+00
  %4045 = fmul fast float %4040, 2.000000e+00
  %4046 = fmul fast float %4043, 2.000000e+00
  %4047 = fmul fast float %4044, %3880
  %4048 = fmul fast float %4045, %3880
  %4049 = fmul fast float %4046, %3880
  %4050 = fmul fast float %4046, %3878
  %4051 = fmul fast float %4045, %3879
  %4052 = fmul fast float %4044, %3879
  %4053 = fmul fast float %4046, %3877
  %4054 = fmul fast float %4045, %3877
  %4055 = fmul fast float %4044, %3878
  %4056 = fadd fast float %4050, %4027
  %4057 = fadd fast float %4056, %4047
  %4058 = fsub fast float %4057, %4051
  %4059 = fsub fast float %4028, %4053
  %4060 = fadd fast float %4059, %4048
  %4061 = fadd fast float %4060, %4052
  %4062 = fadd fast float %4049, %4029
  %4063 = fsub fast float %4062, %4055
  %4064 = fadd fast float %4063, %4054
  br label %4065

; <label>:4065                                    ; preds = %4034, %4026
  %4066 = phi float [ %4058, %4034 ], [ %4027, %4026 ]
  %4067 = phi float [ %4061, %4034 ], [ %4028, %4026 ]
  %4068 = phi float [ %4064, %4034 ], [ %4029, %4026 ]
  br i1 %3906, label %4100, label %4069

; <label>:4069                                    ; preds = %4065
  %4070 = fmul fast float %2345, 0x400187C840000000
  %4071 = fadd fast float %4070, 0xC00EFC2120000000
  %4072 = fmul fast float %4071, %2345
  %4073 = fadd fast float %4072, 0x3FE5D16340000000
  %4074 = fmul fast float %4073, %2345
  %4075 = fadd fast float %4074, 1.000000e+00
  %4076 = call float @dx.op.unary.f32(i32 7, float %4075)  ; Saturate(value)
  %4077 = fsub fast float %4030, %147
  %4078 = fsub fast float %4031, %148
  %4079 = fsub fast float %4032, %149
  %4080 = fsub fast float %4030, %3861
  %4081 = fsub fast float %4031, %3862
  %4082 = fsub fast float %4032, %3863
  %4083 = call float @dx.op.dot3.f32(i32 55, float %4077, float %4078, float %4079, float %4077, float %4078, float %4079)  ; Dot3(ax,ay,az,bx,by,bz)
  %4084 = call float @dx.op.dot3.f32(i32 55, float %4080, float %4081, float %4082, float %4080, float %4081, float %4082)  ; Dot3(ax,ay,az,bx,by,bz)
  %4085 = fadd fast float %4084, 0x3EE4F8B580000000
  %4086 = fdiv fast float %4083, %4085
  %4087 = bitcast float %4086 to i32
  %4088 = ashr i32 %4087, 1
  %4089 = add nsw i32 %4088, 532487669
  %4090 = bitcast i32 %4089 to float
  %4091 = fmul fast float %4090, %4076
  %4092 = call float @dx.op.unary.f32(i32 7, float %4091)  ; Saturate(value)
  %4093 = fmul fast float %4092, 0x4009981AE0000000
  %4094 = fsub fast float 0x40111BBD80000000, %4093
  %4095 = fmul fast float %4094, %4092
  %4096 = fadd fast float %4095, 0xC0009F6020000000
  %4097 = fmul fast float %4096, %4092
  %4098 = fadd fast float %4097, 1.000000e+00
  %4099 = call float @dx.op.unary.f32(i32 7, float %4098)  ; Saturate(value)
  br label %4103

; <label>:4100                                    ; preds = %4065
  %4101 = icmp ne i32 %3907, -1
  %4102 = zext i1 %4101 to i32
  br label %4103

; <label>:4103                                    ; preds = %4100, %4069
  %4104 = phi float [ %2345, %4100 ], [ %4099, %4069 ]
  %4105 = phi i32 [ %4102, %4100 ], [ 0, %4069 ]
  %4106 = fmul float %4104, 5.000000e+00
  %4107 = fsub float 5.000000e+00, %4106
  %4108 = icmp ne i32 %4105, 0
  %4109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4110 = extractvalue %dx.types.CBufRet.f32 %4109, 3
  %4111 = fadd fast float %4110, %4107
  %4112 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4111)  ; FMax(a,b)
  %4113 = call float @dx.op.unary.f32(i32 6, float %4066)  ; FAbs(value)
  %4114 = call float @dx.op.unary.f32(i32 6, float %4067)  ; FAbs(value)
  %4115 = fadd fast float %4114, %4113
  %4116 = call float @dx.op.unary.f32(i32 6, float %4068)  ; FAbs(value)
  %4117 = fadd fast float %4115, %4116
  %4118 = fcmp fast oeq float %4117, 0.000000e+00
  %4119 = fdiv fast float 1.000000e+00, %4117
  %4120 = select i1 %4118, float 1.000000e+00, float %4119
  %4121 = fmul fast float %4120, %4066
  %4122 = fmul fast float %4120, %4067
  %4123 = call float @dx.op.unary.f32(i32 6, float %4122)  ; FAbs(value)
  %4124 = call float @dx.op.unary.f32(i32 6, float %4121)  ; FAbs(value)
  %4125 = fsub fast float 1.000000e+00, %4123
  %4126 = fsub fast float 1.000000e+00, %4124
  %4127 = fcmp fast oge float %4121, 0.000000e+00
  %4128 = fcmp fast oge float %4122, 0.000000e+00
  %4129 = select i1 %4127, float 1.000000e+00, float -1.000000e+00
  %4130 = select i1 %4128, float 1.000000e+00, float -1.000000e+00
  %4131 = fcmp fast ole float %4068, 0.000000e+00
  %4132 = fmul fast float %4129, %4125
  %4133 = fmul fast float %4130, %4126
  %4134 = select i1 %4131, float %4132, float %4121
  %4135 = select i1 %4131, float %4133, float %4122
  %4136 = fmul fast float %4134, 5.000000e-01
  %4137 = fmul fast float %4135, 5.000000e-01
  %4138 = fadd fast float %4136, 5.000000e-01
  %4139 = fadd fast float %4137, 5.000000e-01
  %4140 = uitofp i32 %3904 to float
  %4141 = call float @dx.op.binary.f32(i32 36, float %4112, float 3.000000e+00)  ; FMin(a,b)
  %4142 = fadd fast float %4141, 2.000000e+00
  %4143 = call float @dx.op.unary.f32(i32 21, float %4142)  ; Exp(value)
  %4144 = extractvalue %dx.types.CBufRet.f32 %4109, 1
  %4145 = fmul fast float %4144, %4143
  %4146 = fmul fast float %4145, 2.000000e+00
  %4147 = fsub fast float 1.000000e+00, %4146
  %4148 = fmul fast float %4138, %4147
  %4149 = fmul fast float %4139, %4147
  %4150 = fadd fast float %4148, %4145
  %4151 = fadd fast float %4149, %4145
  %4152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %62, float %4150, float %4151, float %4140, float undef, i32 0, i32 0, i32 undef, float %4112)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4153 = extractvalue %dx.types.ResRet.f32 %4152, 0
  %4154 = extractvalue %dx.types.ResRet.f32 %4152, 1
  %4155 = extractvalue %dx.types.ResRet.f32 %4152, 2
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 3
  %4158 = fmul fast float %4157, %3874
  %4159 = call float @dx.op.binary.f32(i32 36, float %3586, float %4158)  ; FMin(a,b)
  %4160 = select i1 %4108, float %4159, float %4158
  %4161 = fmul fast float %4153, %3953
  %4162 = fmul fast float %4161, %4160
  %4163 = fmul fast float %4154, %3953
  %4164 = fmul fast float %4163, %4160
  %4165 = fmul fast float %4155, %3953
  %4166 = fmul fast float %4165, %4160
  %4167 = fadd fast float %4162, %3849
  %4168 = fadd fast float %4164, %3850
  %4169 = fadd fast float %4166, %3851
  %4170 = fsub fast float %3852, %3953
  br label %3955

; <label>:4171                                    ; preds = %3955
  br label %4172

; <label>:4172                                    ; preds = %4171, %3818
  %4173 = phi float [ %3819, %3818 ], [ %3956, %4171 ]
  %4174 = phi float [ %3820, %3818 ], [ %3957, %4171 ]
  %4175 = phi float [ %3821, %3818 ], [ %3958, %4171 ]
  %4176 = phi float [ %3822, %3818 ], [ %3959, %4171 ]
  %4177 = add i32 %3823, 1
  %4178 = icmp ugt i32 %4177, %3815
  br i1 %4178, label %4179, label %3818, !llvm.loop !115

; <label>:4179                                    ; preds = %4172
  br label %4180

; <label>:4180                                    ; preds = %4179, %3800
  %4181 = phi float [ 0.000000e+00, %3800 ], [ %4173, %4179 ]
  %4182 = phi float [ 0.000000e+00, %3800 ], [ %4174, %4179 ]
  %4183 = phi float [ 0.000000e+00, %3800 ], [ %4175, %4179 ]
  %4184 = call float @dx.op.dot3.f32(i32 55, float %4181, float %4182, float %4183, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4185 = select i1 %238, float 0.000000e+00, float %4181
  %4186 = select i1 %238, float %4184, float %4182
  %4187 = select i1 %238, float 0.000000e+00, float %4183
  %4188 = fcmp fast olt float %3726, 0.000000e+00
  %4189 = call float @dx.op.unary.f32(i32 6, float %3726)  ; FAbs(value)
  %4190 = fmul fast float %4189, %3655
  %4191 = fmul fast float %4189, %3656
  %4192 = fmul fast float %4189, %3657
  %4193 = select i1 %4188, float %3655, float %4190
  %4194 = select i1 %4188, float %3656, float %4191
  %4195 = select i1 %4188, float %3657, float %4192
  %4196 = fsub fast float 1.000000e+00, %4189
  %4197 = call float @dx.op.unary.f32(i32 7, float %4196)  ; Saturate(value)
  %4198 = fmul fast float %4197, %4185
  %4199 = fmul fast float %4197, %4186
  %4200 = fmul fast float %4197, %4187
  %4201 = fadd fast float %4193, %4198
  %4202 = fadd fast float %4194, %4199
  %4203 = fadd fast float %4195, %4200
  br label %4204

; <label>:4204                                    ; preds = %4180, %3709
  %4205 = phi float [ %3655, %3709 ], [ %4201, %4180 ]
  %4206 = phi float [ %3656, %3709 ], [ %4202, %4180 ]
  %4207 = phi float [ %3657, %3709 ], [ %4203, %4180 ]
  %4208 = call float @dx.op.dot3.f32(i32 55, float %2336, float %2337, float %2338, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4209 = fcmp fast ogt float %4208, 0x3E7FF19E20000000
  %4210 = fdiv fast float 1.000000e+00, %4208
  %4211 = select i1 %4209, float %4210, float 0.000000e+00
  %4212 = fmul fast float %4211, %2336
  %4213 = fmul fast float %4211, %2337
  %4214 = fmul fast float %4211, %2338
  %4215 = fadd fast float %4212, -1.000000e+00
  %4216 = fadd fast float %4213, -1.000000e+00
  %4217 = fadd fast float %4214, -1.000000e+00
  %4218 = fmul fast float %4215, 5.000000e-01
  %4219 = fmul fast float %4216, 5.000000e-01
  %4220 = fmul fast float %4217, 5.000000e-01
  %4221 = fadd fast float %4218, 1.000000e+00
  %4222 = fadd fast float %4219, 1.000000e+00
  %4223 = fadd fast float %4220, 1.000000e+00
  %4224 = call float @dx.op.binary.f32(i32 35, float %2350, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4225 = fdiv fast float %1087, %4224
  %4226 = fcmp fast olt float %1754, 1.270000e+02
  %4227 = fcmp fast olt float %1755, 1.270000e+02
  %4228 = fcmp fast olt float %1756, 1.270000e+02
  %4229 = fmul fast float %1754, 0xBFF7154760000000
  %4230 = fmul fast float %4229, %4225
  %4231 = fmul fast float %1755, 0xBFF7154760000000
  %4232 = fmul fast float %4231, %4225
  %4233 = fmul fast float %1756, 0xBFF7154760000000
  %4234 = fmul fast float %4233, %4225
  %4235 = call float @dx.op.unary.f32(i32 21, float %4230)  ; Exp(value)
  %4236 = call float @dx.op.unary.f32(i32 21, float %4232)  ; Exp(value)
  %4237 = call float @dx.op.unary.f32(i32 21, float %4234)  ; Exp(value)
  %4238 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4239 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4240 = call float @dx.op.unary.f32(i32 7, float %4237)  ; Saturate(value)
  %4241 = select i1 %4226, float %4238, float 0.000000e+00
  %4242 = select i1 %4227, float %4239, float 0.000000e+00
  %4243 = select i1 %4228, float %4240, float 0.000000e+00
  %4244 = fmul fast float %4241, %3715
  %4245 = fmul fast float %4242, %3715
  %4246 = fmul fast float %4243, %3715
  %4247 = fadd fast float %4244, -1.000000e+00
  %4248 = fadd fast float %4245, -1.000000e+00
  %4249 = fadd fast float %4246, -1.000000e+00
  %4250 = fmul fast float %4247, %1704
  %4251 = fmul fast float %4248, %1704
  %4252 = fmul fast float %4249, %1704
  %4253 = fmul fast float %4205, %3710
  %4254 = fmul fast float %4206, %3711
  %4255 = fmul fast float %4207, %3712
  %4256 = fsub fast float 1.000000e+00, %2350
  %4257 = bitcast float %4256 to i32
  %4258 = sitofp i32 %4257 to float
  %4259 = fmul fast float %4258, 5.000000e+00
  %4260 = fadd fast float %4259, 0xC1EFBF8940000000
  %4261 = fptosi float %4260 to i32
  %4262 = bitcast i32 %4261 to float
  %4263 = fmul fast float %4262, %1680
  %4264 = fmul fast float %3647, %4263
  %4265 = fmul fast float %4264, %3715
  %4266 = fmul fast float %4265, %4221
  %4267 = fmul fast float %3648, %4263
  %4268 = fmul fast float %4267, %3715
  %4269 = fmul fast float %4268, %4222
  %4270 = fmul fast float %3649, %4263
  %4271 = fmul fast float %4270, %3715
  %4272 = fmul fast float %4271, %4223
  %4273 = fadd fast float %4253, %1685
  %4274 = fadd fast float %4273, %4266
  %4275 = fmul fast float %4274, %1704
  %4276 = fadd fast float %4254, %1686
  %4277 = fadd fast float %4276, %4269
  %4278 = fmul fast float %4277, %1704
  %4279 = fadd fast float %4255, %1687
  %4280 = fadd fast float %4279, %4272
  %4281 = fmul fast float %4280, %1704
  %4282 = fmul fast float %2343, 0x4012D0A400000000
  %4283 = fadd fast float %4252, 1.000000e+00
  %4284 = fadd fast float %4251, 1.000000e+00
  %4285 = fadd fast float %4250, 1.000000e+00
  %4286 = fmul fast float %3715, %3649
  %4287 = fmul fast float %3715, %3648
  %4288 = fmul fast float %3715, %3647
  %4289 = fmul fast float %2365, %1704
  %4290 = fsub fast float 1.000000e+00, %4289
  %4291 = call float @dx.op.unary.f32(i32 7, float %4290)  ; Saturate(value)
  %4292 = fsub fast float 1.000000e+00, %4291
  %4293 = fadd fast float %4282, 0x3FDB6377A0000000
  %4294 = fmul fast float %4292, %4293
  %4295 = call float @dx.op.dot3.f32(i32 55, float %1772, float %1773, float %1774, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4296 = fadd fast float %4294, %4295
  %4297 = call float @dx.op.unary.f32(i32 7, float %4296)  ; Saturate(value)
  %4298 = call float @dx.op.binary.f32(i32 35, float %4297, float 0x3F847AE140000000)  ; FMax(a,b)
  %4299 = fmul fast float %4298, %4298
  %4300 = fmul fast float %4299, %4299
  %4301 = fmul fast float %4300, 0xC00A935000000000
  %4302 = call float @dx.op.unary.f32(i32 21, float %4301)  ; Exp(value)
  %4303 = fsub fast float 1.000000e+00, %4302
  %4304 = fmul fast float %4285, %3651
  %4305 = fmul fast float %4304, %4303
  %4306 = fmul fast float %4284, %3652
  %4307 = fmul fast float %4306, %4303
  %4308 = fmul fast float %4283, %3653
  %4309 = fmul fast float %4308, %4303
  %4310 = fadd fast float %4305, %4288
  %4311 = fmul fast float %4310, %1704
  %4312 = fadd fast float %4307, %4287
  %4313 = fmul fast float %4312, %1704
  %4314 = fadd fast float %4309, %4286
  %4315 = fmul fast float %4314, %1704
  %4316 = bitcast i32 %2374 to float
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 3
  %4319 = fcmp fast oeq float %4318, 0.000000e+00
  br i1 %4319, label %5997, label %4320

; <label>:4320                                    ; preds = %4204
  %4321 = extractvalue %dx.types.CBufRet.f32 %4317, 0
  %4322 = extractvalue %dx.types.CBufRet.f32 %4317, 1
  %4323 = extractvalue %dx.types.CBufRet.f32 %4317, 2
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 0
  %4326 = extractvalue %dx.types.CBufRet.f32 %4324, 1
  %4327 = extractvalue %dx.types.CBufRet.f32 %4324, 2
  %4328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4329 = extractvalue %dx.types.CBufRet.f32 %4328, 0
  %4330 = extractvalue %dx.types.CBufRet.f32 %4328, 1
  %4331 = call float @dx.op.dot3.f32(i32 55, float %4325, float %4326, float %4327, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4332 = select i1 %238, float %4329, float %4325
  %4333 = select i1 %238, float %4331, float %4326
  %4334 = select i1 %238, float %4330, float %4327
  %4335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.f32 %4335, 2
  %4337 = fmul fast float %4336, %76
  %4338 = fmul fast float %4336, %77
  %4339 = fmul fast float %4336, %78
  %4340 = fadd fast float %4337, %147
  %4341 = fadd fast float %4338, %148
  %4342 = fadd fast float %4339, %149
  %4343 = fcmp fast olt float %4318, 0.000000e+00
  br i1 %4343, label %5439, label %4344

; <label>:4344                                    ; preds = %4320
  %4345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4346 = extractvalue %dx.types.CBufRet.f32 %4345, 0
  %4347 = extractvalue %dx.types.CBufRet.f32 %4345, 1
  %4348 = extractvalue %dx.types.CBufRet.f32 %4345, 2
  %4349 = extractvalue %dx.types.CBufRet.f32 %4345, 3
  %4350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4351 = extractvalue %dx.types.CBufRet.f32 %4350, 0
  %4352 = extractvalue %dx.types.CBufRet.f32 %4350, 1
  %4353 = extractvalue %dx.types.CBufRet.f32 %4350, 2
  %4354 = extractvalue %dx.types.CBufRet.f32 %4350, 3
  %4355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.f32 %4355, 0
  %4357 = extractvalue %dx.types.CBufRet.f32 %4355, 1
  %4358 = extractvalue %dx.types.CBufRet.f32 %4355, 2
  %4359 = extractvalue %dx.types.CBufRet.f32 %4355, 3
  %4360 = fmul fast float %4346, %4340
  %4361 = call float @dx.op.tertiary.f32(i32 46, float %4341, float %4347, float %4360)  ; FMad(a,b,c)
  %4362 = call float @dx.op.tertiary.f32(i32 46, float %4342, float %4348, float %4361)  ; FMad(a,b,c)
  %4363 = fadd fast float %4362, %4349
  %4364 = fmul fast float %4351, %4340
  %4365 = call float @dx.op.tertiary.f32(i32 46, float %4341, float %4352, float %4364)  ; FMad(a,b,c)
  %4366 = call float @dx.op.tertiary.f32(i32 46, float %4342, float %4353, float %4365)  ; FMad(a,b,c)
  %4367 = fadd fast float %4366, %4354
  %4368 = fmul fast float %4356, %4340
  %4369 = call float @dx.op.tertiary.f32(i32 46, float %4341, float %4357, float %4368)  ; FMad(a,b,c)
  %4370 = call float @dx.op.tertiary.f32(i32 46, float %4342, float %4358, float %4369)  ; FMad(a,b,c)
  %4371 = fadd fast float %4370, %4359
  %4372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4373 = extractvalue %dx.types.CBufRet.f32 %4372, 0
  %4374 = extractvalue %dx.types.CBufRet.f32 %4372, 1
  %4375 = extractvalue %dx.types.CBufRet.f32 %4372, 3
  %4376 = fmul fast float %4375, %4363
  %4377 = fmul fast float %4375, %4367
  %4378 = fadd fast float %4376, %4373
  %4379 = fadd fast float %4377, %4374
  %4380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.f32 %4380, 0
  %4382 = extractvalue %dx.types.CBufRet.f32 %4380, 1
  %4383 = extractvalue %dx.types.CBufRet.f32 %4380, 3
  %4384 = fmul fast float %4383, %4363
  %4385 = fmul fast float %4383, %4367
  %4386 = fadd fast float %4384, %4381
  %4387 = fadd fast float %4385, %4382
  %4388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.f32 %4388, 1
  %4390 = fsub fast float %4389, %4371
  %4391 = extractvalue %dx.types.CBufRet.f32 %4388, 2
  %4392 = fmul fast float %4390, %4391
  %4393 = fsub fast float 1.000000e+00, %4392
  %4394 = call float @dx.op.unary.f32(i32 7, float %4393)  ; Saturate(value)
  %4395 = extractvalue %dx.types.CBufRet.f32 %4380, 2
  %4396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4397 = extractvalue %dx.types.CBufRet.f32 %4396, 2
  %4398 = fadd fast float %4397, %4395
  %4399 = fcmp fast ogt float %4398, 0.000000e+00
  br i1 %4399, label %4400, label %4424

; <label>:4400                                    ; preds = %4344
  %4401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4402 = extractvalue %dx.types.CBufRet.f32 %4401, 0
  %4403 = extractvalue %dx.types.CBufRet.f32 %4401, 1
  %4404 = fsub fast float %4386, %4402
  %4405 = fsub fast float %4387, %4403
  %4406 = fcmp fast olt float %4404, 0.000000e+00
  %4407 = fcmp fast olt float %4405, 0.000000e+00
  %4408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4409 = extractvalue %dx.types.CBufRet.f32 %4408, 0
  %4410 = extractvalue %dx.types.CBufRet.f32 %4408, 1
  %4411 = extractvalue %dx.types.CBufRet.f32 %4408, 2
  %4412 = extractvalue %dx.types.CBufRet.f32 %4408, 3
  %4413 = select i1 %4406, float %4409, float %4411
  %4414 = select i1 %4407, float %4410, float %4412
  %4415 = fmul fast float %4413, %4404
  %4416 = fmul fast float %4414, %4405
  %4417 = call float @dx.op.unary.f32(i32 6, float %4415)  ; FAbs(value)
  %4418 = call float @dx.op.unary.f32(i32 6, float %4416)  ; FAbs(value)
  %4419 = extractvalue %dx.types.CBufRet.f32 %4335, 0
  %4420 = call float @dx.op.binary.f32(i32 35, float %4417, float %4418)  ; FMax(a,b)
  %4421 = fsub fast float %4419, %4420
  %4422 = call float @dx.op.unary.f32(i32 7, float %4421)  ; Saturate(value)
  %4423 = fmul fast float %4422, %4394
  br label %4424

; <label>:4424                                    ; preds = %4400, %4344
  %4425 = phi float [ %4423, %4400 ], [ 0.000000e+00, %4344 ]
  %4426 = extractvalue %dx.types.CBufRet.f32 %4372, 2
  %4427 = extractvalue %dx.types.CBufRet.f32 %4396, 1
  %4428 = fadd fast float %4427, %4426
  %4429 = fcmp fast ogt float %4428, 0.000000e+00
  %4430 = extractvalue %dx.types.CBufRet.f32 %4335, 0
  br i1 %4429, label %4431, label %4454

; <label>:4431                                    ; preds = %4424
  %4432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.f32 %4432, 0
  %4434 = extractvalue %dx.types.CBufRet.f32 %4432, 1
  %4435 = fsub fast float %4378, %4433
  %4436 = fsub fast float %4379, %4434
  %4437 = fcmp fast olt float %4435, 0.000000e+00
  %4438 = fcmp fast olt float %4436, 0.000000e+00
  %4439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4440 = extractvalue %dx.types.CBufRet.f32 %4439, 0
  %4441 = extractvalue %dx.types.CBufRet.f32 %4439, 1
  %4442 = extractvalue %dx.types.CBufRet.f32 %4439, 2
  %4443 = extractvalue %dx.types.CBufRet.f32 %4439, 3
  %4444 = select i1 %4437, float %4440, float %4442
  %4445 = select i1 %4438, float %4441, float %4443
  %4446 = fmul fast float %4444, %4435
  %4447 = fmul fast float %4445, %4436
  %4448 = call float @dx.op.unary.f32(i32 6, float %4446)  ; FAbs(value)
  %4449 = call float @dx.op.unary.f32(i32 6, float %4447)  ; FAbs(value)
  %4450 = call float @dx.op.binary.f32(i32 35, float %4448, float %4449)  ; FMax(a,b)
  %4451 = fsub fast float %4430, %4450
  %4452 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4453 = fmul fast float %4452, %4394
  br label %4454

; <label>:4454                                    ; preds = %4431, %4424
  %4455 = phi float [ %4453, %4431 ], [ 0.000000e+00, %4424 ]
  %4456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4457 = extractvalue %dx.types.CBufRet.f32 %4456, 1
  %4458 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4459, 0
  %4461 = extractvalue %dx.types.CBufRet.f32 %4459, 1
  %4462 = fsub fast float %4363, %4460
  %4463 = fsub fast float %4367, %4461
  %4464 = fcmp fast olt float %4462, 0.000000e+00
  %4465 = fcmp fast olt float %4463, 0.000000e+00
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 0
  %4468 = extractvalue %dx.types.CBufRet.f32 %4466, 1
  %4469 = extractvalue %dx.types.CBufRet.f32 %4466, 2
  %4470 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4471 = select i1 %4464, float %4467, float %4469
  %4472 = select i1 %4465, float %4468, float %4470
  %4473 = fmul fast float %4471, %4462
  %4474 = fmul fast float %4472, %4463
  %4475 = call float @dx.op.unary.f32(i32 6, float %4473)  ; FAbs(value)
  %4476 = call float @dx.op.unary.f32(i32 6, float %4474)  ; FAbs(value)
  %4477 = call float @dx.op.binary.f32(i32 35, float %4475, float %4476)  ; FMax(a,b)
  %4478 = fsub fast float %4430, %4477
  %4479 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4480 = call float @dx.op.binary.f32(i32 36, float %4479, float %4458)  ; FMin(a,b)
  %4481 = fmul fast float %4480, %4394
  %4482 = fsub fast float %4455, %4481
  %4483 = fsub fast float %4425, %4455
  %4484 = fsub fast float %4483, %4481
  %4485 = call float @dx.op.binary.f32(i32 35, float %4455, float %4425)  ; FMax(a,b)
  %4486 = call float @dx.op.binary.f32(i32 35, float %4481, float %4485)  ; FMax(a,b)
  %4487 = fcmp fast olt float %4486, 1.000000e+00
  br i1 %4487, label %4488, label %4886, !dx.controlflow.hints !117

; <label>:4488                                    ; preds = %4454
  %4489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4490 = extractvalue %dx.types.CBufRet.f32 %4489, 0
  %4491 = fcmp fast une float %4490, 0.000000e+00
  br i1 %4491, label %4492, label %4886, !dx.controlflow.hints !118

; <label>:4492                                    ; preds = %4488
  %4493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4494 = extractvalue %dx.types.CBufRet.f32 %4493, 0
  %4495 = extractvalue %dx.types.CBufRet.f32 %4493, 1
  %4496 = extractvalue %dx.types.CBufRet.f32 %4493, 2
  %4497 = extractvalue %dx.types.CBufRet.f32 %4493, 3
  %4498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4499 = extractvalue %dx.types.CBufRet.f32 %4498, 0
  %4500 = extractvalue %dx.types.CBufRet.f32 %4498, 1
  %4501 = extractvalue %dx.types.CBufRet.f32 %4498, 2
  %4502 = extractvalue %dx.types.CBufRet.f32 %4498, 3
  %4503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4504 = extractvalue %dx.types.CBufRet.f32 %4503, 0
  %4505 = extractvalue %dx.types.CBufRet.f32 %4503, 1
  %4506 = extractvalue %dx.types.CBufRet.f32 %4503, 2
  %4507 = extractvalue %dx.types.CBufRet.f32 %4503, 3
  %4508 = fmul fast float %4494, %4340
  %4509 = call float @dx.op.tertiary.f32(i32 46, float %4341, float %4495, float %4508)  ; FMad(a,b,c)
  %4510 = call float @dx.op.tertiary.f32(i32 46, float %4342, float %4496, float %4509)  ; FMad(a,b,c)
  %4511 = fadd fast float %4510, %4497
  %4512 = fmul fast float %4499, %4340
  %4513 = call float @dx.op.tertiary.f32(i32 46, float %4341, float %4500, float %4512)  ; FMad(a,b,c)
  %4514 = call float @dx.op.tertiary.f32(i32 46, float %4342, float %4501, float %4513)  ; FMad(a,b,c)
  %4515 = fadd fast float %4514, %4502
  %4516 = fmul fast float %4504, %4340
  %4517 = call float @dx.op.tertiary.f32(i32 46, float %4341, float %4505, float %4516)  ; FMad(a,b,c)
  %4518 = call float @dx.op.tertiary.f32(i32 46, float %4342, float %4506, float %4517)  ; FMad(a,b,c)
  %4519 = fadd fast float %4518, %4507
  %4520 = fcmp fast oge float %4511, 1.000000e+00
  %4521 = fcmp fast oge float %4515, 1.000000e+00
  %4522 = or i1 %4520, %4521
  %4523 = fcmp fast olt float %4511, 0.000000e+00
  %4524 = fcmp fast olt float %4515, 0.000000e+00
  %4525 = or i1 %4523, %4524
  %4526 = or i1 %4522, %4525
  br i1 %4526, label %4886, label %4527, !dx.controlflow.hints !119

; <label>:4527                                    ; preds = %4492
  %4528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4528, 0
  %4530 = extractvalue %dx.types.CBufRet.f32 %4528, 1
  %4531 = extractvalue %dx.types.CBufRet.f32 %4528, 2
  %4532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4533 = extractvalue %dx.types.CBufRet.i32 %4532, 2
  %4534 = uitofp i32 %4533 to float
  %4535 = extractvalue %dx.types.CBufRet.i32 %4532, 3
  %4536 = uitofp i32 %4535 to float
  %4537 = extractvalue %dx.types.CBufRet.f32 %4528, 3
  %4538 = fmul fast float %4537, 2.000000e+00
  %4539 = fsub fast float %4511, %4529
  %4540 = fsub fast float %4515, %4530
  %4541 = fmul fast float %4538, %4539
  %4542 = fmul fast float %4538, %4540
  %4543 = fdiv fast float 1.000000e+00, %4323
  %4544 = fmul fast float %4542, %4543
  %4545 = call float @dx.op.unary.f32(i32 6, float %4544)  ; FAbs(value)
  %4546 = fmul fast float %4531, %4342
  %4547 = fmul fast float %4546, %4538
  %4548 = call float @dx.op.unary.f32(i32 6, float %4547)  ; FAbs(value)
  %4549 = call float @dx.op.unary.f32(i32 6, float %4541)  ; FAbs(value)
  %4550 = call float @dx.op.binary.f32(i32 35, float %4548, float %4545)  ; FMax(a,b)
  %4551 = call float @dx.op.binary.f32(i32 35, float %4549, float %4550)  ; FMax(a,b)
  %4552 = fmul fast float %4551, 2.000000e+00
  %4553 = call float @dx.op.unary.f32(i32 23, float %4552)  ; Log(value)
  %4554 = call float @dx.op.binary.f32(i32 35, float %4553, float %4534)  ; FMax(a,b)
  %4555 = call float @dx.op.unary.f32(i32 22, float %4554)  ; Frc(value)
  %4556 = fadd fast float %4555, 0xBFEA666660000000
  %4557 = fmul fast float %4556, 8.000000e+00
  %4558 = call float @dx.op.unary.f32(i32 7, float %4557)  ; Saturate(value)
  %4559 = call float @dx.op.unary.f32(i32 27, float %4554)  ; Round_ni(value)
  %4560 = fadd fast float %4559, %4558
  %4561 = call float @dx.op.binary.f32(i32 36, float %4560, float %4536)  ; FMin(a,b)
  %4562 = call float @dx.op.unary.f32(i32 27, float %4561)  ; Round_ni(value)
  %4563 = fsub fast float -0.000000e+00, %4562
  %4564 = call float @dx.op.unary.f32(i32 21, float %4563)  ; Exp(value)
  %4565 = fmul fast float %4564, %4538
  %4566 = fmul fast float %4565, %4511
  %4567 = fmul fast float %4565, %4515
  %4568 = fmul fast float %4566, 2.500000e-01
  %4569 = fmul fast float %4567, 2.500000e-01
  %4570 = fadd fast float %4568, 5.000000e-01
  %4571 = fadd fast float %4569, 5.000000e-01
  %4572 = fsub fast float %4536, %4534
  %4573 = fptoui float %4572 to i32
  %4574 = add i32 %4573, 320
  %4575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %4574)  ; CBufferLoadLegacy(handle,regIndex)
  %4576 = extractvalue %dx.types.CBufRet.f32 %4575, 0
  %4577 = extractvalue %dx.types.CBufRet.f32 %4575, 1
  %4578 = fcmp fast une float %4561, %4536
  %4579 = fsub fast float %4511, %4576
  %4580 = fsub fast float %4515, %4577
  %4581 = call float @dx.op.unary.f32(i32 6, float %4579)  ; FAbs(value)
  %4582 = call float @dx.op.unary.f32(i32 6, float %4580)  ; FAbs(value)
  %4583 = fmul fast float %4581, %4565
  %4584 = fmul fast float %4582, %4565
  %4585 = fcmp fast olt float %4583, 1.000000e+00
  %4586 = fcmp fast olt float %4584, 1.000000e+00
  %4587 = and i1 %4585, %4586
  %4588 = or i1 %4578, %4587
  br i1 %4588, label %4589, label %4886, !dx.controlflow.hints !120

; <label>:4589                                    ; preds = %4527
  %4590 = fmul fast float %4567, 5.000000e-01
  %4591 = fmul fast float %4566, 5.000000e-01
  %4592 = fadd fast float %4590, 5.000000e-01
  %4593 = fadd fast float %4591, 5.000000e-01
  %4594 = sitofp i32 %4533 to float
  %4595 = fsub fast float %4561, %4594
  %4596 = call float @dx.op.unary.f32(i32 27, float %4595)  ; Round_ni(value)
  %4597 = call float @dx.op.unary.f32(i32 22, float %4561)  ; Frc(value)
  %4598 = call float @dx.op.unary.f32(i32 22, float %4593)  ; Frc(value)
  %4599 = call float @dx.op.unary.f32(i32 22, float %4592)  ; Frc(value)
  %4600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4598, float %4599, float %4596, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4601 = extractvalue %dx.types.ResRet.f32 %4600, 0
  %4602 = extractvalue %dx.types.ResRet.f32 %4600, 1
  %4603 = extractvalue %dx.types.ResRet.f32 %4600, 2
  %4604 = extractvalue %dx.types.ResRet.f32 %4600, 3
  %4605 = fcmp fast ogt float %4597, 0.000000e+00
  br i1 %4605, label %4606, label %4627, !dx.controlflow.hints !121

; <label>:4606                                    ; preds = %4589
  %4607 = fadd fast float %4596, 1.000000e+00
  %4608 = call float @dx.op.unary.f32(i32 22, float %4570)  ; Frc(value)
  %4609 = call float @dx.op.unary.f32(i32 22, float %4571)  ; Frc(value)
  %4610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4608, float %4609, float %4607, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4611 = extractvalue %dx.types.ResRet.f32 %4610, 0
  %4612 = extractvalue %dx.types.ResRet.f32 %4610, 1
  %4613 = extractvalue %dx.types.ResRet.f32 %4610, 2
  %4614 = extractvalue %dx.types.ResRet.f32 %4610, 3
  %4615 = fsub fast float %4611, %4601
  %4616 = fsub fast float %4612, %4602
  %4617 = fsub fast float %4613, %4603
  %4618 = fsub fast float %4614, %4604
  %4619 = fmul fast float %4615, %4597
  %4620 = fmul fast float %4616, %4597
  %4621 = fmul fast float %4617, %4597
  %4622 = fmul fast float %4618, %4597
  %4623 = fadd fast float %4619, %4601
  %4624 = fadd fast float %4620, %4602
  %4625 = fadd fast float %4621, %4603
  %4626 = fadd fast float %4622, %4604
  br label %4627

; <label>:4627                                    ; preds = %4606, %4589
  %4628 = phi float [ %4623, %4606 ], [ %4601, %4589 ]
  %4629 = phi float [ %4624, %4606 ], [ %4602, %4589 ]
  %4630 = phi float [ %4625, %4606 ], [ %4603, %4589 ]
  %4631 = phi float [ %4626, %4606 ], [ %4604, %4589 ]
  %4632 = fadd fast float %4628, -5.000000e-01
  %4633 = fadd fast float %4630, -5.000000e-01
  %4634 = fmul fast float %4632, 0xBFD5555560000000
  %4635 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4633, float %4634)  ; FMad(a,b,c)
  %4636 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4629, float 0.000000e+00)  ; FMad(a,b,c)
  %4637 = fadd fast float %4636, %4631
  %4638 = fmul fast float %4632, -7.500000e-01
  %4639 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4633, float %4638)  ; FMad(a,b,c)
  %4640 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4629, float 0.000000e+00)  ; FMad(a,b,c)
  %4641 = fadd fast float %4640, %4631
  %4642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4643 = extractvalue %dx.types.CBufRet.f32 %4642, 0
  %4644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.f32 %4644, 0
  %4646 = extractvalue %dx.types.CBufRet.f32 %4644, 1
  %4647 = extractvalue %dx.types.CBufRet.f32 %4644, 2
  %4648 = extractvalue %dx.types.CBufRet.f32 %4644, 3
  %4649 = fsub fast float %4645, %4635
  %4650 = fsub fast float %4646, %4637
  %4651 = fsub fast float %4647, %4639
  %4652 = fsub fast float %4648, %4641
  %4653 = fmul fast float %4649, %4643
  %4654 = fmul fast float %4650, %4643
  %4655 = fmul fast float %4651, %4643
  %4656 = fmul fast float %4652, %4643
  %4657 = fadd fast float %4653, %4635
  %4658 = fadd fast float %4654, %4637
  %4659 = fadd fast float %4655, %4639
  %4660 = fadd fast float %4656, %4641
  %4661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4662 = extractvalue %dx.types.ResRet.i32 %4661, 0
  %4663 = and i32 %4662, 536870911
  %4664 = uitofp i32 %4663 to float
  %4665 = fmul fast float %4664, %4511
  %4666 = fmul fast float %4664, %4515
  %4667 = fptoui float %4665 to i32
  %4668 = fptoui float %4666 to i32
  %4669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4670 = extractvalue %dx.types.ResRet.i32 %4669, 0
  %4671 = and i32 %4670, 31
  %4672 = lshr i32 %4667, %4671
  %4673 = lshr i32 %4668, %4671
  %4674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4675 = extractvalue %dx.types.ResRet.i32 %4674, 0
  %4676 = and i32 %4675, 31
  %4677 = shl i32 1, %4676
  %4678 = call i32 @dx.op.binary.i32(i32 40, i32 %4677, i32 4)  ; UMin(a,b)
  %4679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4680 = extractvalue %dx.types.ResRet.i32 %4679, 0
  %4681 = extractvalue %dx.types.ResRet.i32 %4679, 1
  %4682 = icmp eq i32 %4678, 0
  br i1 %4682, label %4724, label %4683

; <label>:4683                                    ; preds = %4627
  br label %4684

; <label>:4684                                    ; preds = %4712, %4683
  %4685 = phi i32 [ %4715, %4712 ], [ 0, %4683 ]
  %4686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4687 = extractvalue %dx.types.ResRet.i32 %4686, 0
  %4688 = lshr i32 %4687, 16
  %4689 = and i32 %4688, 31
  %4690 = shl i32 %4673, %4689
  %4691 = add i32 %4690, %4672
  %4692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4693 = extractvalue %dx.types.ResRet.i32 %4692, 0
  %4694 = and i32 %4693, 31
  %4695 = shl i32 %4691, %4694
  %4696 = add i32 %4695, %4685
  %4697 = shl i32 %4696, 2
  %4698 = add i32 %4697, 32
  %4699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4698, i32 undef)  ; BufferLoad(srv,index,wot)
  %4700 = extractvalue %dx.types.ResRet.i32 %4699, 0
  %4701 = icmp slt i32 %4700, 0
  %4702 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4685
  %4703 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4685
  %4704 = bitcast float* %4702 to i32*
  %4705 = bitcast float* %4703 to i32*
  br i1 %4701, label %4706, label %4712

; <label>:4706                                    ; preds = %4684
  %4707 = and i32 %4700, 1073741823
  %4708 = add nuw nsw i32 %4707, 20
  %4709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4708, i32 undef)  ; BufferLoad(srv,index,wot)
  %4710 = extractvalue %dx.types.ResRet.i32 %4709, 0
  %4711 = extractvalue %dx.types.ResRet.i32 %4709, 1
  br label %4712

; <label>:4712                                    ; preds = %4706, %4684
  %4713 = phi i32 [ %4710, %4706 ], [ %4680, %4684 ]
  %4714 = phi i32 [ %4711, %4706 ], [ %4681, %4684 ]
  store i32 %4713, i32* %4704, align 4
  store i32 %4714, i32* %4705, align 4
  %4715 = add nuw i32 %4685, 1
  %4716 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4717 = extractvalue %dx.types.CBufRet.i32 %4716, 2
  %4718 = icmp eq i32 %4717, 0
  %4719 = icmp ugt i32 %4700, -1073741825
  %4720 = and i1 %4719, %4718
  %4721 = icmp ult i32 %4715, %4678
  %4722 = and i1 %4720, %4721
  br i1 %4722, label %4684, label %4723

; <label>:4723                                    ; preds = %4712
  br label %4724

; <label>:4724                                    ; preds = %4723, %4627
  %4725 = phi i32 [ 0, %4627 ], [ %4715, %4723 ]
  %4726 = extractvalue %dx.types.CBufRet.f32 %4489, 2
  %4727 = fptoui float %4726 to i32
  %4728 = icmp eq i32 %4727, 0
  br i1 %4728, label %4780, label %4729

; <label>:4729                                    ; preds = %4724
  br label %4730

; <label>:4730                                    ; preds = %4775, %4729
  %4731 = phi i32 [ %4776, %4775 ], [ %4725, %4729 ]
  %4732 = phi i32 [ %4777, %4775 ], [ 0, %4729 ]
  %4733 = lshr i32 %4732, 2
  %4734 = and i32 %4732, 3
  %4735 = add nuw nsw i32 %4733, 83
  %4736 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 %4735)  ; CBufferLoadLegacy(handle,regIndex)
  %4737 = extractvalue %dx.types.CBufRet.i32 %4736, 0
  %4738 = extractvalue %dx.types.CBufRet.i32 %4736, 1
  %4739 = extractvalue %dx.types.CBufRet.i32 %4736, 2
  %4740 = extractvalue %dx.types.CBufRet.i32 %4736, 3
  %4741 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %4737, i32* %4741, align 4
  %4742 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %4738, i32* %4742, align 4
  %4743 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %4739, i32* %4743, align 4
  %4744 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %4740, i32* %4744, align 4
  %4745 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %4734
  %4746 = load i32, i32* %4745, align 4, !tbaa !122, !noalias !126
  %4747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4748 = extractvalue %dx.types.ResRet.i32 %4747, 0
  %4749 = lshr i32 %4748, 16
  %4750 = and i32 %4749, 31
  %4751 = shl i32 %4673, %4750
  %4752 = add i32 %4751, %4672
  %4753 = shl i32 %4752, 2
  %4754 = add i32 %4753, %4746
  %4755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4754, i32 undef)  ; BufferLoad(srv,index,wot)
  %4756 = extractvalue %dx.types.ResRet.i32 %4755, 0
  %4757 = icmp eq i32 %4756, 0
  br i1 %4757, label %4775, label %4758

; <label>:4758                                    ; preds = %4730
  %4759 = icmp slt i32 %4756, 0
  %4760 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4731
  %4761 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4731
  %4762 = bitcast float* %4760 to i32*
  %4763 = bitcast float* %4761 to i32*
  br i1 %4759, label %4764, label %4771

; <label>:4764                                    ; preds = %4758
  %4765 = and i32 %4756, 1073741823
  %4766 = add i32 %4746, 20
  %4767 = add i32 %4766, %4765
  %4768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4767, i32 undef)  ; BufferLoad(srv,index,wot)
  %4769 = extractvalue %dx.types.ResRet.i32 %4768, 0
  %4770 = extractvalue %dx.types.ResRet.i32 %4768, 1
  br label %4771

; <label>:4771                                    ; preds = %4764, %4758
  %4772 = phi i32 [ %4769, %4764 ], [ %4680, %4758 ]
  %4773 = phi i32 [ %4770, %4764 ], [ %4681, %4758 ]
  store i32 %4772, i32* %4762, align 4
  store i32 %4773, i32* %4763, align 4
  %4774 = add i32 %4731, 1
  br label %4775

; <label>:4775                                    ; preds = %4771, %4730
  %4776 = phi i32 [ %4731, %4730 ], [ %4774, %4771 ]
  %4777 = add nuw i32 %4732, 1
  %4778 = icmp eq i32 %4777, %4727
  br i1 %4778, label %4779, label %4730

; <label>:4779                                    ; preds = %4775
  br label %4780

; <label>:4780                                    ; preds = %4779, %4724
  %4781 = phi i32 [ %4725, %4724 ], [ %4776, %4779 ]
  %4782 = icmp eq i32 %4781, 1
  %4783 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  %4784 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  br i1 %4782, label %4785, label %4788

; <label>:4785                                    ; preds = %4780
  %4786 = load float, float* %4783, align 4
  %4787 = load float, float* %4784, align 4
  br label %4815

; <label>:4788                                    ; preds = %4780
  %4789 = load float, float* %4783, align 4
  %4790 = load float, float* %4784, align 4
  %4791 = fdiv fast float 1.000000e+00, %4790
  %4792 = fsub fast float %4789, %4791
  %4793 = icmp ugt i32 %4781, 1
  br i1 %4793, label %4794, label %4810

; <label>:4794                                    ; preds = %4788
  br label %4795

; <label>:4795                                    ; preds = %4795, %4794
  %4796 = phi float [ %4805, %4795 ], [ %4792, %4794 ]
  %4797 = phi float [ %4806, %4795 ], [ %4789, %4794 ]
  %4798 = phi i32 [ %4807, %4795 ], [ 1, %4794 ]
  %4799 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4798
  %4800 = load float, float* %4799, align 4
  %4801 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4798
  %4802 = load float, float* %4801, align 4
  %4803 = fdiv fast float 1.000000e+00, %4802
  %4804 = fsub fast float %4800, %4803
  %4805 = call float @dx.op.binary.f32(i32 36, float %4796, float %4804)  ; FMin(a,b)
  %4806 = call float @dx.op.binary.f32(i32 35, float %4797, float %4800)  ; FMax(a,b)
  %4807 = add nuw i32 %4798, 1
  %4808 = icmp eq i32 %4807, %4781
  br i1 %4808, label %4809, label %4795

; <label>:4809                                    ; preds = %4795
  br label %4810

; <label>:4810                                    ; preds = %4809, %4788
  %4811 = phi float [ %4792, %4788 ], [ %4805, %4809 ]
  %4812 = phi float [ %4789, %4788 ], [ %4806, %4809 ]
  %4813 = fsub fast float %4812, %4811
  %4814 = fdiv fast float 1.000000e+00, %4813
  br label %4815

; <label>:4815                                    ; preds = %4810, %4785
  %4816 = phi float [ %4786, %4785 ], [ %4812, %4810 ]
  %4817 = phi float [ %4787, %4785 ], [ %4814, %4810 ]
  %4818 = fadd fast float %4519, %4816
  %4819 = fmul fast float %4818, %4817
  %4820 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  %4821 = fmul fast float %4820, 2.000000e+00
  %4822 = fsub fast float 1.000000e+00, %4821
  %4823 = fmul fast float %4657, %4657
  %4824 = fsub fast float %4658, %4823
  %4825 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4824)  ; FMax(a,b)
  %4826 = fdiv fast float 1.000000e+00, %4825
  %4827 = fmul fast float %4658, %4657
  %4828 = fsub fast float %4659, %4827
  %4829 = fsub fast float %4822, %4657
  %4830 = fmul fast float %4822, %4822
  %4831 = fsub fast float %4830, %4658
  %4832 = fmul fast float %4826, %4828
  %4833 = fmul fast float %4832, %4829
  %4834 = fsub fast float %4831, %4833
  %4835 = fmul fast float %4658, %4658
  %4836 = fsub fast float %4660, %4835
  %4837 = fmul fast float %4828, %4828
  %4838 = fmul fast float %4837, %4826
  %4839 = fsub fast float %4836, %4838
  %4840 = fdiv fast float %4834, %4839
  %4841 = fmul fast float %4840, %4828
  %4842 = fsub fast float %4829, %4841
  %4843 = fmul fast float %4842, %4826
  %4844 = fmul fast float %4843, %4657
  %4845 = fsub fast float 1.000000e+00, %4844
  %4846 = fmul fast float %4840, %4658
  %4847 = fsub fast float %4845, %4846
  %4848 = fmul fast float %4843, %4843
  %4849 = fmul fast float %4840, 4.000000e+00
  %4850 = fmul fast float %4849, %4847
  %4851 = fsub fast float %4848, %4850
  %4852 = call float @dx.op.unary.f32(i32 24, float %4851)  ; Sqrt(value)
  %4853 = fcmp fast oge float %4843, 0.000000e+00
  %4854 = fsub fast float -0.000000e+00, %4852
  %4855 = select i1 %4853, float %4854, float %4852
  %4856 = fsub fast float %4855, %4843
  %4857 = fdiv fast float %4856, %4840
  %4858 = fdiv fast float %4847, %4856
  %4859 = fmul fast float %4857, 5.000000e-01
  %4860 = fmul fast float %4858, 2.000000e+00
  %4861 = select i1 %4853, float %4859, float %4860
  %4862 = select i1 %4853, float %4860, float %4859
  %4863 = call float @dx.op.binary.f32(i32 35, float %4861, float %4862)  ; FMax(a,b)
  %4864 = call float @dx.op.binary.f32(i32 36, float %4861, float %4862)  ; FMin(a,b)
  %4865 = fcmp fast ogt float %4822, %4863
  %4866 = fsub fast float %4822, %4864
  %4867 = fsub fast float %4822, %4863
  %4868 = fsub fast float %4863, %4864
  %4869 = select i1 %4865, float %4867, float %4868
  %4870 = fmul float %4866, %4869
  %4871 = select i1 %4865, float %4864, float %4822
  %4872 = fcmp fast ogt float %4822, %4864
  %4873 = fmul fast float %4871, %4863
  %4874 = fadd fast float %4871, %4863
  %4875 = fmul fast float %4874, %4657
  %4876 = fadd fast float %4873, %4658
  %4877 = fsub fast float %4876, %4875
  %4878 = fdiv fast float %4877, %4870
  %4879 = select i1 %4872, float %4878, float 0.000000e+00
  %4880 = fsub fast float 1.000000e+00, %4879
  %4881 = select i1 %4865, float %4880, float %4879
  %4882 = call float @dx.op.unary.f32(i32 7, float %4881)  ; Saturate(value)
  %4883 = extractvalue %dx.types.CBufRet.f32 %4642, 3
  %4884 = fmul fast float %4883, %4882
  %4885 = fsub fast float 1.000000e+00, %4884
  br label %4886

; <label>:4886                                    ; preds = %4815, %4527, %4492, %4488, %4454
  %4887 = phi float [ 1.000000e+00, %4454 ], [ %4885, %4815 ], [ 1.000000e+00, %4492 ], [ 1.000000e+00, %4527 ], [ 1.000000e+00, %4488 ]
  %4888 = fcmp fast ogt float %4484, 0.000000e+00
  br i1 %4888, label %4889, label %5051, !dx.controlflow.hints !135

; <label>:4889                                    ; preds = %4886
  %4890 = fadd fast float %4397, %4371
  %4891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4892 = extractvalue %dx.types.CBufRet.f32 %4891, 2
  %4893 = extractvalue %dx.types.CBufRet.f32 %4891, 3
  %4894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4895 = extractvalue %dx.types.CBufRet.f32 %4894, 2
  %4896 = call float @dx.op.binary.f32(i32 35, float %4890, float 0.000000e+00)  ; FMax(a,b)
  %4897 = fadd fast float %4896, 0x3F10000000000000
  %4898 = fcmp fast oeq float %4895, 0.000000e+00
  br i1 %4898, label %4899, label %4966

; <label>:4899                                    ; preds = %4889
  %4900 = extractvalue %dx.types.CBufRet.f32 %4891, 1
  %4901 = extractvalue %dx.types.CBufRet.f32 %4891, 0
  %4902 = fmul fast float %4901, %4386
  %4903 = fmul fast float %4900, %4387
  %4904 = fadd fast float %4902, 5.000000e-01
  %4905 = call float @dx.op.unary.f32(i32 27, float %4904)  ; Round_ni(value)
  %4906 = fadd fast float %4903, 5.000000e-01
  %4907 = call float @dx.op.unary.f32(i32 27, float %4906)  ; Round_ni(value)
  %4908 = fsub fast float %4904, %4905
  %4909 = fsub fast float %4906, %4907
  %4910 = fadd fast float %4905, -5.000000e-01
  %4911 = fadd fast float %4907, -5.000000e-01
  %4912 = fmul fast float %4908, 2.000000e+00
  %4913 = fsub fast float 3.000000e+00, %4912
  %4914 = fadd fast float %4912, 1.000000e+00
  %4915 = fsub fast float 2.000000e+00, %4908
  %4916 = bitcast float %4913 to i32
  %4917 = sub nsw i32 2129859010, %4916
  %4918 = bitcast i32 %4917 to float
  %4919 = fmul fast float %4918, %4915
  %4920 = fadd fast float %4919, -1.000000e+00
  %4921 = bitcast float %4914 to i32
  %4922 = sub nsw i32 2129859010, %4921
  %4923 = bitcast i32 %4922 to float
  %4924 = fmul fast float %4923, %4908
  %4925 = fadd fast float %4924, 1.000000e+00
  %4926 = fmul fast float %4909, 2.000000e+00
  %4927 = fsub fast float 3.000000e+00, %4926
  %4928 = fadd fast float %4926, 1.000000e+00
  %4929 = fsub fast float 2.000000e+00, %4909
  %4930 = bitcast float %4927 to i32
  %4931 = sub nsw i32 2129859010, %4930
  %4932 = bitcast i32 %4931 to float
  %4933 = fmul fast float %4932, %4929
  %4934 = fadd fast float %4933, -1.000000e+00
  %4935 = bitcast float %4928 to i32
  %4936 = sub nsw i32 2129859010, %4935
  %4937 = bitcast i32 %4936 to float
  %4938 = fmul fast float %4937, %4909
  %4939 = fadd fast float %4938, 1.000000e+00
  %4940 = fadd fast float %4920, %4910
  %4941 = fmul fast float %4940, %4892
  %4942 = fadd fast float %4934, %4911
  %4943 = fmul fast float %4942, %4893
  %4944 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4941, float %4943, float undef, float undef, i32 0, i32 0, i32 undef, float %4897)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4945 = extractvalue %dx.types.ResRet.f32 %4944, 0
  %4946 = fmul fast float %4945, %4913
  %4947 = fadd fast float %4925, %4910
  %4948 = fmul fast float %4947, %4892
  %4949 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4948, float %4943, float undef, float undef, i32 0, i32 0, i32 undef, float %4897)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4950 = extractvalue %dx.types.ResRet.f32 %4949, 0
  %4951 = fmul fast float %4950, %4914
  %4952 = fadd fast float %4939, %4911
  %4953 = fmul fast float %4952, %4893
  %4954 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4941, float %4953, float undef, float undef, i32 0, i32 0, i32 undef, float %4897)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4955 = extractvalue %dx.types.ResRet.f32 %4954, 0
  %4956 = fmul fast float %4955, %4913
  %4957 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4948, float %4953, float undef, float undef, i32 0, i32 0, i32 undef, float %4897)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4958 = extractvalue %dx.types.ResRet.f32 %4957, 0
  %4959 = fmul fast float %4958, %4914
  %4960 = fadd fast float %4959, %4956
  %4961 = fmul fast float %4960, %4928
  %4962 = fadd fast float %4951, %4946
  %4963 = fmul fast float %4962, %4927
  %4964 = fadd fast float %4963, %4961
  %4965 = fmul fast float %4964, 6.250000e-02
  br label %5051

; <label>:4966                                    ; preds = %4889
  %4967 = fmul fast float %249, 0x401921FB60000000
  %4968 = call float @dx.op.unary.f32(i32 13, float %4967)  ; Sin(value)
  %4969 = call float @dx.op.unary.f32(i32 12, float %4967)  ; Cos(value)
  %4970 = fsub fast float -0.000000e+00, %4968
  br label %4971

; <label>:4971                                    ; preds = %5020, %4966
  %4972 = phi float [ 0.000000e+00, %4966 ], [ %5015, %5020 ]
  %4973 = phi float [ 0.000000e+00, %4966 ], [ %5017, %5020 ]
  %4974 = phi i32 [ 0, %4966 ], [ %5021, %5020 ]
  %4975 = mul i32 %4974, 2
  %4976 = add i32 0, %4975
  %4977 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4976
  %4978 = load float, float* %4977, align 4
  %4979 = mul i32 %4974, 2
  %4980 = add i32 1, %4979
  %4981 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4980
  %4982 = load float, float* %4981, align 4
  %4983 = fmul fast float %4978, %4969
  %4984 = call float @dx.op.tertiary.f32(i32 46, float %4982, float %4970, float %4983)  ; FMad(a,b,c)
  %4985 = fmul fast float %4978, %4968
  %4986 = call float @dx.op.tertiary.f32(i32 46, float %4982, float %4969, float %4985)  ; FMad(a,b,c)
  %4987 = fmul fast float %4984, %4895
  %4988 = fmul fast float %4986, %4895
  %4989 = fadd fast float %4987, %4386
  %4990 = fadd fast float %4988, %4387
  %4991 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %65, float %4989, float %4990, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4992 = extractvalue %dx.types.ResRet.f32 %4991, 0
  %4993 = extractvalue %dx.types.ResRet.f32 %4991, 1
  %4994 = extractvalue %dx.types.ResRet.f32 %4991, 2
  %4995 = extractvalue %dx.types.ResRet.f32 %4991, 3
  %4996 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 0
  store float %4992, float* %4996, align 4
  %4997 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 1
  store float %4993, float* %4997, align 4
  %4998 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 2
  store float %4994, float* %4998, align 4
  %4999 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 3
  store float %4995, float* %4999, align 4
  %5000 = fsub fast float %4992, %4897
  %5001 = fcmp fast olt float %5000, 0.000000e+00
  %5002 = select i1 %5001, float 0.000000e+00, float 1.000000e+00
  %5003 = fadd fast float %5002, %4972
  %5004 = fmul fast float %5002, %5000
  %5005 = fadd fast float %5004, %4973
  br label %5006

; <label>:5006                                    ; preds = %5006, %4971
  %5007 = phi i32 [ 1, %4971 ], [ %5018, %5006 ]
  %5008 = phi float [ %5005, %4971 ], [ %5017, %5006 ]
  %5009 = phi float [ %5003, %4971 ], [ %5015, %5006 ]
  %5010 = getelementptr [4 x float], [4 x float]* %93, i32 0, i32 %5007
  %5011 = load float, float* %5010, align 4, !tbaa !136, !noalias !126
  %5012 = fsub fast float %5011, %4897
  %5013 = fcmp fast olt float %5012, 0.000000e+00
  %5014 = select i1 %5013, float 0.000000e+00, float 1.000000e+00
  %5015 = fadd fast float %5014, %5009
  %5016 = fmul fast float %5014, %5012
  %5017 = fadd fast float %5016, %5008
  %5018 = add nuw nsw i32 %5007, 1
  %5019 = icmp eq i32 %5018, 4
  br i1 %5019, label %5020, label %5006, !llvm.loop !138

; <label>:5020                                    ; preds = %5006
  %5021 = add nuw nsw i32 %4974, 1
  %5022 = icmp eq i32 %5021, 8
  br i1 %5022, label %5023, label %4971, !llvm.loop !139

; <label>:5023                                    ; preds = %5020
  %5024 = fdiv fast float 1.000000e+00, %5015
  %5025 = fmul fast float %5024, %5017
  %5026 = fdiv fast float 1.000000e+00, %4897
  %5027 = fmul fast float %5025, %5026
  %5028 = call float @dx.op.unary.f32(i32 7, float %5027)  ; Saturate(value)
  %5029 = call float @dx.op.binary.f32(i32 35, float %5028, float 0.000000e+00)  ; FMax(a,b)
  %5030 = fmul fast float %5015, 3.125000e-02
  %5031 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5032 = fmul fast float %5031, 2.000000e+00
  %5033 = fadd fast float %5032, -1.000000e+00
  %5034 = fcmp fast ogt float %5033, 0.000000e+00
  %5035 = fcmp fast olt float %5033, 0.000000e+00
  %5036 = zext i1 %5034 to i32
  %5037 = zext i1 %5035 to i32
  %5038 = sub nsw i32 %5036, %5037
  %5039 = sitofp i32 %5038 to float
  %5040 = fmul fast float %5039, %5033
  %5041 = fsub fast float 1.000000e+00, %5040
  %5042 = fmul fast float %5041, %5041
  %5043 = fmul fast float %5042, %5041
  %5044 = fsub fast float %5041, %5043
  %5045 = fmul fast float %5044, %5029
  %5046 = fsub fast float 1.000000e+00, %5043
  %5047 = fsub fast float %5046, %5045
  %5048 = fmul fast float %5039, 5.000000e-01
  %5049 = fmul fast float %5048, %5047
  %5050 = fsub fast float 5.000000e-01, %5049
  br label %5051

; <label>:5051                                    ; preds = %5023, %4899, %4886
  %5052 = phi float [ 1.000000e+00, %4886 ], [ %4965, %4899 ], [ %5050, %5023 ]
  %5053 = fcmp fast ogt float %4482, 0.000000e+00
  br i1 %5053, label %5054, label %5218, !dx.controlflow.hints !140

; <label>:5054                                    ; preds = %5051
  %5055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5056 = extractvalue %dx.types.CBufRet.f32 %5055, 1
  %5057 = fadd fast float %5056, %4371
  %5058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5059 = extractvalue %dx.types.CBufRet.f32 %5058, 2
  %5060 = extractvalue %dx.types.CBufRet.f32 %5058, 3
  %5061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5062 = extractvalue %dx.types.CBufRet.f32 %5061, 1
  %5063 = call float @dx.op.binary.f32(i32 35, float %5057, float 0.000000e+00)  ; FMax(a,b)
  %5064 = fadd fast float %5063, 0x3F10000000000000
  %5065 = fcmp fast oeq float %5062, 0.000000e+00
  br i1 %5065, label %5066, label %5133

; <label>:5066                                    ; preds = %5054
  %5067 = extractvalue %dx.types.CBufRet.f32 %5058, 1
  %5068 = extractvalue %dx.types.CBufRet.f32 %5058, 0
  %5069 = fmul fast float %5068, %4378
  %5070 = fmul fast float %5067, %4379
  %5071 = fadd fast float %5069, 5.000000e-01
  %5072 = call float @dx.op.unary.f32(i32 27, float %5071)  ; Round_ni(value)
  %5073 = fadd fast float %5070, 5.000000e-01
  %5074 = call float @dx.op.unary.f32(i32 27, float %5073)  ; Round_ni(value)
  %5075 = fsub fast float %5071, %5072
  %5076 = fsub fast float %5073, %5074
  %5077 = fadd fast float %5072, -5.000000e-01
  %5078 = fadd fast float %5074, -5.000000e-01
  %5079 = fmul fast float %5075, 2.000000e+00
  %5080 = fsub fast float 3.000000e+00, %5079
  %5081 = fadd fast float %5079, 1.000000e+00
  %5082 = fsub fast float 2.000000e+00, %5075
  %5083 = bitcast float %5080 to i32
  %5084 = sub nsw i32 2129859010, %5083
  %5085 = bitcast i32 %5084 to float
  %5086 = fmul fast float %5085, %5082
  %5087 = fadd fast float %5086, -1.000000e+00
  %5088 = bitcast float %5081 to i32
  %5089 = sub nsw i32 2129859010, %5088
  %5090 = bitcast i32 %5089 to float
  %5091 = fmul fast float %5090, %5075
  %5092 = fadd fast float %5091, 1.000000e+00
  %5093 = fmul fast float %5076, 2.000000e+00
  %5094 = fsub fast float 3.000000e+00, %5093
  %5095 = fadd fast float %5093, 1.000000e+00
  %5096 = fsub fast float 2.000000e+00, %5076
  %5097 = bitcast float %5094 to i32
  %5098 = sub nsw i32 2129859010, %5097
  %5099 = bitcast i32 %5098 to float
  %5100 = fmul fast float %5099, %5096
  %5101 = fadd fast float %5100, -1.000000e+00
  %5102 = bitcast float %5095 to i32
  %5103 = sub nsw i32 2129859010, %5102
  %5104 = bitcast i32 %5103 to float
  %5105 = fmul fast float %5104, %5076
  %5106 = fadd fast float %5105, 1.000000e+00
  %5107 = fadd fast float %5087, %5077
  %5108 = fmul fast float %5107, %5059
  %5109 = fadd fast float %5101, %5078
  %5110 = fmul fast float %5109, %5060
  %5111 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5108, float %5110, float undef, float undef, i32 0, i32 0, i32 undef, float %5064)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5112 = extractvalue %dx.types.ResRet.f32 %5111, 0
  %5113 = fmul fast float %5112, %5080
  %5114 = fadd fast float %5092, %5077
  %5115 = fmul fast float %5114, %5059
  %5116 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5115, float %5110, float undef, float undef, i32 0, i32 0, i32 undef, float %5064)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5117 = extractvalue %dx.types.ResRet.f32 %5116, 0
  %5118 = fmul fast float %5117, %5081
  %5119 = fadd fast float %5106, %5078
  %5120 = fmul fast float %5119, %5060
  %5121 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5108, float %5120, float undef, float undef, i32 0, i32 0, i32 undef, float %5064)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5122 = extractvalue %dx.types.ResRet.f32 %5121, 0
  %5123 = fmul fast float %5122, %5080
  %5124 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5115, float %5120, float undef, float undef, i32 0, i32 0, i32 undef, float %5064)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5125 = extractvalue %dx.types.ResRet.f32 %5124, 0
  %5126 = fmul fast float %5125, %5081
  %5127 = fadd fast float %5126, %5123
  %5128 = fmul fast float %5127, %5095
  %5129 = fadd fast float %5118, %5113
  %5130 = fmul fast float %5129, %5094
  %5131 = fadd fast float %5130, %5128
  %5132 = fmul fast float %5131, 6.250000e-02
  br label %5218

; <label>:5133                                    ; preds = %5054
  %5134 = fmul fast float %249, 0x401921FB60000000
  %5135 = call float @dx.op.unary.f32(i32 13, float %5134)  ; Sin(value)
  %5136 = call float @dx.op.unary.f32(i32 12, float %5134)  ; Cos(value)
  %5137 = fsub fast float -0.000000e+00, %5135
  br label %5138

; <label>:5138                                    ; preds = %5187, %5133
  %5139 = phi float [ 0.000000e+00, %5133 ], [ %5182, %5187 ]
  %5140 = phi float [ 0.000000e+00, %5133 ], [ %5184, %5187 ]
  %5141 = phi i32 [ 0, %5133 ], [ %5188, %5187 ]
  %5142 = mul i32 %5141, 2
  %5143 = add i32 0, %5142
  %5144 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5143
  %5145 = load float, float* %5144, align 4
  %5146 = mul i32 %5141, 2
  %5147 = add i32 1, %5146
  %5148 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5147
  %5149 = load float, float* %5148, align 4
  %5150 = fmul fast float %5145, %5136
  %5151 = call float @dx.op.tertiary.f32(i32 46, float %5149, float %5137, float %5150)  ; FMad(a,b,c)
  %5152 = fmul fast float %5145, %5135
  %5153 = call float @dx.op.tertiary.f32(i32 46, float %5149, float %5136, float %5152)  ; FMad(a,b,c)
  %5154 = fmul fast float %5151, %5062
  %5155 = fmul fast float %5153, %5062
  %5156 = fadd fast float %5154, %4378
  %5157 = fadd fast float %5155, %4379
  %5158 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %65, float %5156, float %5157, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5159 = extractvalue %dx.types.ResRet.f32 %5158, 0
  %5160 = extractvalue %dx.types.ResRet.f32 %5158, 1
  %5161 = extractvalue %dx.types.ResRet.f32 %5158, 2
  %5162 = extractvalue %dx.types.ResRet.f32 %5158, 3
  %5163 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %5159, float* %5163, align 4
  %5164 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %5160, float* %5164, align 4
  %5165 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %5161, float* %5165, align 4
  %5166 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %5162, float* %5166, align 4
  %5167 = fsub fast float %5159, %5064
  %5168 = fcmp fast olt float %5167, 0.000000e+00
  %5169 = select i1 %5168, float 0.000000e+00, float 1.000000e+00
  %5170 = fadd fast float %5169, %5139
  %5171 = fmul fast float %5169, %5167
  %5172 = fadd fast float %5171, %5140
  br label %5173

; <label>:5173                                    ; preds = %5173, %5138
  %5174 = phi i32 [ 1, %5138 ], [ %5185, %5173 ]
  %5175 = phi float [ %5172, %5138 ], [ %5184, %5173 ]
  %5176 = phi float [ %5170, %5138 ], [ %5182, %5173 ]
  %5177 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %5174
  %5178 = load float, float* %5177, align 4, !tbaa !136, !noalias !126
  %5179 = fsub fast float %5178, %5064
  %5180 = fcmp fast olt float %5179, 0.000000e+00
  %5181 = select i1 %5180, float 0.000000e+00, float 1.000000e+00
  %5182 = fadd fast float %5181, %5176
  %5183 = fmul fast float %5181, %5179
  %5184 = fadd fast float %5183, %5175
  %5185 = add nuw nsw i32 %5174, 1
  %5186 = icmp eq i32 %5185, 4
  br i1 %5186, label %5187, label %5173, !llvm.loop !138

; <label>:5187                                    ; preds = %5173
  %5188 = add nuw nsw i32 %5141, 1
  %5189 = icmp eq i32 %5188, 8
  br i1 %5189, label %5190, label %5138, !llvm.loop !139

; <label>:5190                                    ; preds = %5187
  %5191 = fdiv fast float 1.000000e+00, %5182
  %5192 = fmul fast float %5191, %5184
  %5193 = fdiv fast float 1.000000e+00, %5064
  %5194 = fmul fast float %5192, %5193
  %5195 = call float @dx.op.unary.f32(i32 7, float %5194)  ; Saturate(value)
  %5196 = call float @dx.op.binary.f32(i32 35, float %5195, float 0.000000e+00)  ; FMax(a,b)
  %5197 = fmul fast float %5182, 3.125000e-02
  %5198 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5199 = fmul fast float %5198, 2.000000e+00
  %5200 = fadd fast float %5199, -1.000000e+00
  %5201 = fcmp fast ogt float %5200, 0.000000e+00
  %5202 = fcmp fast olt float %5200, 0.000000e+00
  %5203 = zext i1 %5201 to i32
  %5204 = zext i1 %5202 to i32
  %5205 = sub nsw i32 %5203, %5204
  %5206 = sitofp i32 %5205 to float
  %5207 = fmul fast float %5206, %5200
  %5208 = fsub fast float 1.000000e+00, %5207
  %5209 = fmul fast float %5208, %5208
  %5210 = fmul fast float %5209, %5208
  %5211 = fsub fast float %5208, %5210
  %5212 = fmul fast float %5211, %5196
  %5213 = fsub fast float 1.000000e+00, %5210
  %5214 = fsub fast float %5213, %5212
  %5215 = fmul fast float %5206, 5.000000e-01
  %5216 = fmul fast float %5215, %5214
  %5217 = fsub fast float 5.000000e-01, %5216
  br label %5218

; <label>:5218                                    ; preds = %5190, %5066, %5051
  %5219 = phi float [ 1.000000e+00, %5051 ], [ %5132, %5066 ], [ %5217, %5190 ]
  %5220 = fcmp fast ogt float %4481, 0.000000e+00
  br i1 %5220, label %5221, label %5385, !dx.controlflow.hints !141

; <label>:5221                                    ; preds = %5218
  %5222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5223 = extractvalue %dx.types.CBufRet.f32 %5222, 0
  %5224 = fadd fast float %5223, %4371
  %5225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5226 = extractvalue %dx.types.CBufRet.f32 %5225, 2
  %5227 = extractvalue %dx.types.CBufRet.f32 %5225, 3
  %5228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5229 = extractvalue %dx.types.CBufRet.f32 %5228, 0
  %5230 = call float @dx.op.binary.f32(i32 35, float %5224, float 0.000000e+00)  ; FMax(a,b)
  %5231 = fadd fast float %5230, 0x3F10000000000000
  %5232 = fcmp fast oeq float %5229, 0.000000e+00
  br i1 %5232, label %5233, label %5300

; <label>:5233                                    ; preds = %5221
  %5234 = extractvalue %dx.types.CBufRet.f32 %5225, 1
  %5235 = extractvalue %dx.types.CBufRet.f32 %5225, 0
  %5236 = fmul fast float %5235, %4363
  %5237 = fmul fast float %5234, %4367
  %5238 = fadd fast float %5236, 5.000000e-01
  %5239 = call float @dx.op.unary.f32(i32 27, float %5238)  ; Round_ni(value)
  %5240 = fadd fast float %5237, 5.000000e-01
  %5241 = call float @dx.op.unary.f32(i32 27, float %5240)  ; Round_ni(value)
  %5242 = fsub fast float %5238, %5239
  %5243 = fsub fast float %5240, %5241
  %5244 = fadd fast float %5239, -5.000000e-01
  %5245 = fadd fast float %5241, -5.000000e-01
  %5246 = fmul fast float %5242, 2.000000e+00
  %5247 = fsub fast float 3.000000e+00, %5246
  %5248 = fadd fast float %5246, 1.000000e+00
  %5249 = fsub fast float 2.000000e+00, %5242
  %5250 = bitcast float %5247 to i32
  %5251 = sub nsw i32 2129859010, %5250
  %5252 = bitcast i32 %5251 to float
  %5253 = fmul fast float %5252, %5249
  %5254 = fadd fast float %5253, -1.000000e+00
  %5255 = bitcast float %5248 to i32
  %5256 = sub nsw i32 2129859010, %5255
  %5257 = bitcast i32 %5256 to float
  %5258 = fmul fast float %5257, %5242
  %5259 = fadd fast float %5258, 1.000000e+00
  %5260 = fmul fast float %5243, 2.000000e+00
  %5261 = fsub fast float 3.000000e+00, %5260
  %5262 = fadd fast float %5260, 1.000000e+00
  %5263 = fsub fast float 2.000000e+00, %5243
  %5264 = bitcast float %5261 to i32
  %5265 = sub nsw i32 2129859010, %5264
  %5266 = bitcast i32 %5265 to float
  %5267 = fmul fast float %5266, %5263
  %5268 = fadd fast float %5267, -1.000000e+00
  %5269 = bitcast float %5262 to i32
  %5270 = sub nsw i32 2129859010, %5269
  %5271 = bitcast i32 %5270 to float
  %5272 = fmul fast float %5271, %5243
  %5273 = fadd fast float %5272, 1.000000e+00
  %5274 = fadd fast float %5254, %5244
  %5275 = fmul fast float %5274, %5226
  %5276 = fadd fast float %5268, %5245
  %5277 = fmul fast float %5276, %5227
  %5278 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5275, float %5277, float undef, float undef, i32 0, i32 0, i32 undef, float %5231)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5279 = extractvalue %dx.types.ResRet.f32 %5278, 0
  %5280 = fmul fast float %5279, %5247
  %5281 = fadd fast float %5259, %5244
  %5282 = fmul fast float %5281, %5226
  %5283 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5282, float %5277, float undef, float undef, i32 0, i32 0, i32 undef, float %5231)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5284 = extractvalue %dx.types.ResRet.f32 %5283, 0
  %5285 = fmul fast float %5284, %5248
  %5286 = fadd fast float %5273, %5245
  %5287 = fmul fast float %5286, %5227
  %5288 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5275, float %5287, float undef, float undef, i32 0, i32 0, i32 undef, float %5231)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5289 = extractvalue %dx.types.ResRet.f32 %5288, 0
  %5290 = fmul fast float %5289, %5247
  %5291 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5282, float %5287, float undef, float undef, i32 0, i32 0, i32 undef, float %5231)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5292 = extractvalue %dx.types.ResRet.f32 %5291, 0
  %5293 = fmul fast float %5292, %5248
  %5294 = fadd fast float %5293, %5290
  %5295 = fmul fast float %5294, %5262
  %5296 = fadd fast float %5285, %5280
  %5297 = fmul fast float %5296, %5261
  %5298 = fadd fast float %5297, %5295
  %5299 = fmul fast float %5298, 6.250000e-02
  br label %5385

; <label>:5300                                    ; preds = %5221
  %5301 = fmul fast float %249, 0x401921FB60000000
  %5302 = call float @dx.op.unary.f32(i32 13, float %5301)  ; Sin(value)
  %5303 = call float @dx.op.unary.f32(i32 12, float %5301)  ; Cos(value)
  %5304 = fsub fast float -0.000000e+00, %5302
  br label %5305

; <label>:5305                                    ; preds = %5354, %5300
  %5306 = phi float [ 0.000000e+00, %5300 ], [ %5349, %5354 ]
  %5307 = phi float [ 0.000000e+00, %5300 ], [ %5351, %5354 ]
  %5308 = phi i32 [ 0, %5300 ], [ %5355, %5354 ]
  %5309 = mul i32 %5308, 2
  %5310 = add i32 0, %5309
  %5311 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5310
  %5312 = load float, float* %5311, align 4
  %5313 = mul i32 %5308, 2
  %5314 = add i32 1, %5313
  %5315 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5314
  %5316 = load float, float* %5315, align 4
  %5317 = fmul fast float %5312, %5303
  %5318 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5304, float %5317)  ; FMad(a,b,c)
  %5319 = fmul fast float %5312, %5302
  %5320 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5303, float %5319)  ; FMad(a,b,c)
  %5321 = fmul fast float %5318, %5229
  %5322 = fmul fast float %5320, %5229
  %5323 = fadd fast float %5321, %4363
  %5324 = fadd fast float %5322, %4367
  %5325 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %65, float %5323, float %5324, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5326 = extractvalue %dx.types.ResRet.f32 %5325, 0
  %5327 = extractvalue %dx.types.ResRet.f32 %5325, 1
  %5328 = extractvalue %dx.types.ResRet.f32 %5325, 2
  %5329 = extractvalue %dx.types.ResRet.f32 %5325, 3
  %5330 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %5326, float* %5330, align 4
  %5331 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %5327, float* %5331, align 4
  %5332 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %5328, float* %5332, align 4
  %5333 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %5329, float* %5333, align 4
  %5334 = fsub fast float %5326, %5231
  %5335 = fcmp fast olt float %5334, 0.000000e+00
  %5336 = select i1 %5335, float 0.000000e+00, float 1.000000e+00
  %5337 = fadd fast float %5336, %5306
  %5338 = fmul fast float %5336, %5334
  %5339 = fadd fast float %5338, %5307
  br label %5340

; <label>:5340                                    ; preds = %5340, %5305
  %5341 = phi i32 [ 1, %5305 ], [ %5352, %5340 ]
  %5342 = phi float [ %5339, %5305 ], [ %5351, %5340 ]
  %5343 = phi float [ %5337, %5305 ], [ %5349, %5340 ]
  %5344 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %5341
  %5345 = load float, float* %5344, align 4, !tbaa !136, !noalias !126
  %5346 = fsub fast float %5345, %5231
  %5347 = fcmp fast olt float %5346, 0.000000e+00
  %5348 = select i1 %5347, float 0.000000e+00, float 1.000000e+00
  %5349 = fadd fast float %5348, %5343
  %5350 = fmul fast float %5348, %5346
  %5351 = fadd fast float %5350, %5342
  %5352 = add nuw nsw i32 %5341, 1
  %5353 = icmp eq i32 %5352, 4
  br i1 %5353, label %5354, label %5340, !llvm.loop !138

; <label>:5354                                    ; preds = %5340
  %5355 = add nuw nsw i32 %5308, 1
  %5356 = icmp eq i32 %5355, 8
  br i1 %5356, label %5357, label %5305, !llvm.loop !139

; <label>:5357                                    ; preds = %5354
  %5358 = fdiv fast float 1.000000e+00, %5349
  %5359 = fmul fast float %5358, %5351
  %5360 = fdiv fast float 1.000000e+00, %5231
  %5361 = fmul fast float %5359, %5360
  %5362 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5363 = call float @dx.op.binary.f32(i32 35, float %5362, float 0.000000e+00)  ; FMax(a,b)
  %5364 = fmul fast float %5349, 3.125000e-02
  %5365 = call float @dx.op.unary.f32(i32 7, float %5364)  ; Saturate(value)
  %5366 = fmul fast float %5365, 2.000000e+00
  %5367 = fadd fast float %5366, -1.000000e+00
  %5368 = fcmp fast ogt float %5367, 0.000000e+00
  %5369 = fcmp fast olt float %5367, 0.000000e+00
  %5370 = zext i1 %5368 to i32
  %5371 = zext i1 %5369 to i32
  %5372 = sub nsw i32 %5370, %5371
  %5373 = sitofp i32 %5372 to float
  %5374 = fmul fast float %5373, %5367
  %5375 = fsub fast float 1.000000e+00, %5374
  %5376 = fmul fast float %5375, %5375
  %5377 = fmul fast float %5376, %5375
  %5378 = fsub fast float %5375, %5377
  %5379 = fmul fast float %5378, %5363
  %5380 = fsub fast float 1.000000e+00, %5377
  %5381 = fsub fast float %5380, %5379
  %5382 = fmul fast float %5373, 5.000000e-01
  %5383 = fmul fast float %5382, %5381
  %5384 = fsub fast float 5.000000e-01, %5383
  br label %5385

; <label>:5385                                    ; preds = %5357, %5233, %5218
  %5386 = phi float [ 1.000000e+00, %5218 ], [ %5299, %5233 ], [ %5384, %5357 ]
  %5387 = fsub fast float %5052, %4887
  %5388 = fmul fast float %5387, %4425
  %5389 = fadd fast float %5388, %4887
  %5390 = fsub fast float %5219, %5389
  %5391 = fmul fast float %5390, %4455
  %5392 = fadd fast float %5391, %5389
  %5393 = fsub fast float %5386, %5392
  %5394 = fmul fast float %5393, %4481
  %5395 = fadd fast float %5394, %5392
  %5396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5397 = extractvalue %dx.types.CBufRet.f32 %5396, 2
  %5398 = fcmp fast ogt float %5397, 0.000000e+00
  br i1 %5398, label %5399, label %5439, !dx.controlflow.hints !142

; <label>:5399                                    ; preds = %5385
  %5400 = fcmp fast ugt float %5397, 0.000000e+00
  br i1 %5400, label %5401, label %5436

; <label>:5401                                    ; preds = %5399
  %5402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5403 = extractvalue %dx.types.CBufRet.f32 %5402, 0
  %5404 = extractvalue %dx.types.CBufRet.f32 %5402, 1
  %5405 = extractvalue %dx.types.CBufRet.f32 %5402, 2
  %5406 = extractvalue %dx.types.CBufRet.f32 %5402, 3
  %5407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5408 = extractvalue %dx.types.CBufRet.f32 %5407, 0
  %5409 = extractvalue %dx.types.CBufRet.f32 %5407, 1
  %5410 = extractvalue %dx.types.CBufRet.f32 %5407, 2
  %5411 = extractvalue %dx.types.CBufRet.f32 %5407, 3
  %5412 = extractvalue %dx.types.CBufRet.f32 %5396, 0
  %5413 = extractvalue %dx.types.CBufRet.f32 %5396, 1
  %5414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5415 = extractvalue %dx.types.CBufRet.f32 %5414, 0
  %5416 = extractvalue %dx.types.CBufRet.f32 %5414, 1
  %5417 = extractvalue %dx.types.CBufRet.f32 %5414, 2
  %5418 = fadd fast float %5415, %4340
  %5419 = fadd fast float %5416, %4341
  %5420 = fadd fast float %5417, %4342
  %5421 = fmul fast float %5418, %5403
  %5422 = call float @dx.op.tertiary.f32(i32 46, float %5404, float %5419, float %5421)  ; FMad(a,b,c)
  %5423 = call float @dx.op.tertiary.f32(i32 46, float %5405, float %5420, float %5422)  ; FMad(a,b,c)
  %5424 = fadd fast float %5423, %5406
  %5425 = fmul fast float %5418, %5408
  %5426 = call float @dx.op.tertiary.f32(i32 46, float %5409, float %5419, float %5425)  ; FMad(a,b,c)
  %5427 = call float @dx.op.tertiary.f32(i32 46, float %5410, float %5420, float %5426)  ; FMad(a,b,c)
  %5428 = fadd fast float %5427, %5411
  %5429 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %61, float %5424, float %5428, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5430 = extractvalue %dx.types.ResRet.f32 %5429, 0
  %5431 = fmul fast float %5430, %5413
  %5432 = fadd fast float %5431, %5412
  %5433 = call float @dx.op.unary.f32(i32 7, float %5432)  ; Saturate(value)
  %5434 = fmul fast float %5433, %5397
  %5435 = fsub fast float 1.000000e+00, %5434
  br label %5436

; <label>:5436                                    ; preds = %5401, %5399
  %5437 = phi float [ %5435, %5401 ], [ 1.000000e+00, %5399 ]
  %5438 = fmul fast float %5437, %5395
  br label %5439

; <label>:5439                                    ; preds = %5436, %5385, %4320
  %5440 = phi float [ 1.000000e+00, %4320 ], [ %5438, %5436 ], [ %5395, %5385 ]
  %5441 = call float @dx.op.binary.f32(i32 36, float %5440, float %5440)  ; FMin(a,b)
  %5442 = call float @dx.op.binary.f32(i32 36, float %5440, float %5441)  ; FMin(a,b)
  %5443 = fcmp fast ogt float %5442, 0.000000e+00
  br i1 %5443, label %5444, label %5609, !dx.controlflow.hints !143

; <label>:5444                                    ; preds = %5439
  %5445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.f32 %5445, 0
  %5447 = extractvalue %dx.types.CBufRet.f32 %5445, 1
  %5448 = extractvalue %dx.types.CBufRet.f32 %5445, 2
  %5449 = extractvalue %dx.types.CBufRet.f32 %5445, 3
  %5450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5451 = extractvalue %dx.types.CBufRet.f32 %5450, 0
  %5452 = extractvalue %dx.types.CBufRet.f32 %5450, 1
  %5453 = extractvalue %dx.types.CBufRet.f32 %5450, 2
  %5454 = extractvalue %dx.types.CBufRet.f32 %5450, 3
  %5455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5456 = extractvalue %dx.types.CBufRet.f32 %5455, 0
  %5457 = extractvalue %dx.types.CBufRet.f32 %5455, 1
  %5458 = extractvalue %dx.types.CBufRet.f32 %5455, 2
  %5459 = extractvalue %dx.types.CBufRet.f32 %5455, 3
  %5460 = fmul fast float %5446, %4340
  %5461 = call float @dx.op.tertiary.f32(i32 46, float %4341, float %5447, float %5460)  ; FMad(a,b,c)
  %5462 = call float @dx.op.tertiary.f32(i32 46, float %4342, float %5448, float %5461)  ; FMad(a,b,c)
  %5463 = fadd fast float %5462, %5449
  %5464 = fmul fast float %5451, %4340
  %5465 = call float @dx.op.tertiary.f32(i32 46, float %4341, float %5452, float %5464)  ; FMad(a,b,c)
  %5466 = call float @dx.op.tertiary.f32(i32 46, float %4342, float %5453, float %5465)  ; FMad(a,b,c)
  %5467 = fadd fast float %5466, %5454
  %5468 = fmul fast float %5456, %4340
  %5469 = call float @dx.op.tertiary.f32(i32 46, float %4341, float %5457, float %5468)  ; FMad(a,b,c)
  %5470 = call float @dx.op.tertiary.f32(i32 46, float %4342, float %5458, float %5469)  ; FMad(a,b,c)
  %5471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5472 = extractvalue %dx.types.CBufRet.f32 %5471, 0
  %5473 = extractvalue %dx.types.CBufRet.f32 %5471, 1
  %5474 = extractvalue %dx.types.CBufRet.f32 %5471, 3
  %5475 = fmul fast float %5474, %5463
  %5476 = fmul fast float %5474, %5467
  %5477 = fadd fast float %5475, %5472
  %5478 = fadd fast float %5476, %5473
  %5479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5480 = extractvalue %dx.types.CBufRet.f32 %5479, 0
  %5481 = extractvalue %dx.types.CBufRet.f32 %5479, 1
  %5482 = fsub fast float %5477, %5480
  %5483 = fsub fast float %5478, %5481
  %5484 = fcmp fast olt float %5482, 0.000000e+00
  %5485 = fcmp fast olt float %5483, 0.000000e+00
  %5486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5486, 0
  %5488 = extractvalue %dx.types.CBufRet.f32 %5486, 1
  %5489 = extractvalue %dx.types.CBufRet.f32 %5486, 2
  %5490 = extractvalue %dx.types.CBufRet.f32 %5486, 3
  %5491 = select i1 %5484, float %5487, float %5489
  %5492 = select i1 %5485, float %5488, float %5490
  %5493 = fmul fast float %5491, %5482
  %5494 = fmul fast float %5492, %5483
  %5495 = call float @dx.op.unary.f32(i32 6, float %5493)  ; FAbs(value)
  %5496 = call float @dx.op.unary.f32(i32 6, float %5494)  ; FAbs(value)
  %5497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5498 = extractvalue %dx.types.CBufRet.f32 %5497, 0
  %5499 = call float @dx.op.binary.f32(i32 35, float %5495, float %5496)  ; FMax(a,b)
  %5500 = fsub fast float %5498, %5499
  %5501 = call float @dx.op.unary.f32(i32 7, float %5500)  ; Saturate(value)
  %5502 = fcmp fast ogt float %5501, 0.000000e+00
  br i1 %5502, label %5503, label %5544, !dx.controlflow.hints !144

; <label>:5503                                    ; preds = %5444
  %5504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %64, float %5477, float %5478, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5505 = extractvalue %dx.types.ResRet.f32 %5504, 1
  %5506 = fcmp fast ogt float %5505, 0.000000e+00
  br i1 %5506, label %5507, label %5539

; <label>:5507                                    ; preds = %5503
  %5508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %64, float %5477, float %5478, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5509 = extractvalue %dx.types.ResRet.f32 %5508, 0
  %5510 = extractvalue %dx.types.ResRet.f32 %5508, 1
  %5511 = extractvalue %dx.types.ResRet.f32 %5508, 2
  %5512 = extractvalue %dx.types.ResRet.f32 %5508, 3
  %5513 = fsub fast float 1.000000e+00, %5459
  %5514 = fsub fast float %5513, %5470
  %5515 = fmul fast float %5514, 0x400921FB60000000
  %5516 = fadd fast float %5515, 0x3FF921FB60000000
  %5517 = call float @dx.op.unary.f32(i32 13, float %5516)  ; Sin(value)
  %5518 = fadd fast float %5517, -1.000000e+00
  %5519 = fmul fast float %5518, 0x3FD45F3060000000
  %5520 = fmul fast float %5514, 0x401921FB60000000
  %5521 = fadd fast float %5520, 0x400921FB60000000
  %5522 = call float @dx.op.unary.f32(i32 13, float %5521)  ; Sin(value)
  %5523 = fadd fast float %5522, 0x3E7777A5C0000000
  %5524 = fmul fast float %5523, 0x3FC45F3060000000
  %5525 = fmul fast float %5514, 0x4022D97C80000000
  %5526 = fadd fast float %5525, 0x4012D97C80000000
  %5527 = call float @dx.op.unary.f32(i32 13, float %5526)  ; Sin(value)
  %5528 = fadd fast float %5527, 1.000000e+00
  %5529 = fmul fast float %5528, 0x3FBB2995E0000000
  %5530 = fmul fast float %5514, 0x402921FB60000000
  %5531 = fadd fast float %5530, 0x401921FB60000000
  %5532 = call float @dx.op.unary.f32(i32 13, float %5531)  ; Sin(value)
  %5533 = fadd fast float %5532, 0xBE8777A5C0000000
  %5534 = fmul fast float %5533, 0x3FB45F3060000000
  %5535 = call float @dx.op.dot4.f32(i32 56, float %5509, float %5510, float %5511, float %5512, float %5519, float %5524, float %5529, float %5534)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5536 = fmul fast float %5535, 0xBFF7154760000000
  %5537 = call float @dx.op.unary.f32(i32 21, float %5536)  ; Exp(value)
  %5538 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  br label %5539

; <label>:5539                                    ; preds = %5507, %5503
  %5540 = phi float [ %5538, %5507 ], [ 1.000000e+00, %5503 ]
  %5541 = fadd fast float %5540, -1.000000e+00
  %5542 = fmul fast float %5541, %5501
  %5543 = fadd fast float %5542, 1.000000e+00
  br label %5544

; <label>:5544                                    ; preds = %5539, %5444
  %5545 = phi float [ %5543, %5539 ], [ 1.000000e+00, %5444 ]
  %5546 = fmul fast float %5545, %5440
  %5547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5548 = extractvalue %dx.types.CBufRet.f32 %5547, 0
  %5549 = extractvalue %dx.types.CBufRet.f32 %5547, 1
  %5550 = extractvalue %dx.types.CBufRet.f32 %5547, 2
  %5551 = fadd fast float %5548, %147
  %5552 = fadd fast float %5549, %148
  %5553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5554 = extractvalue %dx.types.CBufRet.f32 %5553, 1
  %5555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5556 = extractvalue %dx.types.CBufRet.f32 %5555, 0
  %5557 = extractvalue %dx.types.CBufRet.f32 %5555, 1
  %5558 = extractvalue %dx.types.CBufRet.f32 %5555, 2
  %5559 = fsub fast float -0.000000e+00, %5551
  %5560 = fsub fast float -0.000000e+00, %5552
  %5561 = fsub fast float %2347, %5550
  %5562 = fadd fast float %5561, %5554
  %5563 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5559, float %5560, float %5562)  ; Dot3(ax,ay,az,bx,by,bz)
  %5564 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5556, float %5557, float %5558)  ; Dot3(ax,ay,az,bx,by,bz)
  %5565 = fdiv fast float 1.000000e+00, %5564
  %5566 = fmul fast float %5565, %5563
  %5567 = fmul fast float %5556, %5566
  %5568 = fmul fast float %5557, %5566
  %5569 = fadd fast float %5567, %5551
  %5570 = fadd fast float %5568, %5552
  %5571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5572 = extractvalue %dx.types.CBufRet.f32 %5571, 0
  %5573 = extractvalue %dx.types.CBufRet.f32 %5571, 1
  %5574 = fsub fast float %5569, %5572
  %5575 = fsub fast float %5570, %5573
  %5576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5577 = extractvalue %dx.types.CBufRet.f32 %5576, 2
  %5578 = extractvalue %dx.types.CBufRet.f32 %5576, 3
  %5579 = fmul fast float %5574, %5577
  %5580 = fmul fast float %5575, %5578
  %5581 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5582 = extractvalue %dx.types.CBufRet.i32 %5581, 3
  %5583 = icmp eq i32 %5582, 0
  br i1 %5583, label %5589, label %5584

; <label>:5584                                    ; preds = %5544
  %5585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %63, float %5579, float %5580, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5586 = extractvalue %dx.types.ResRet.f32 %5585, 0
  %5587 = extractvalue %dx.types.ResRet.f32 %5585, 1
  %5588 = extractvalue %dx.types.ResRet.f32 %5585, 2
  br label %5594

; <label>:5589                                    ; preds = %5544
  %5590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %64, float %5579, float %5580, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5591 = extractvalue %dx.types.ResRet.f32 %5590, 0
  %5592 = extractvalue %dx.types.ResRet.f32 %5590, 1
  %5593 = extractvalue %dx.types.ResRet.f32 %5590, 2
  br label %5594

; <label>:5594                                    ; preds = %5589, %5584
  %5595 = phi float [ %5586, %5584 ], [ %5591, %5589 ]
  %5596 = phi float [ %5587, %5584 ], [ %5592, %5589 ]
  %5597 = phi float [ %5588, %5584 ], [ %5593, %5589 ]
  %5598 = extractvalue %dx.types.CBufRet.f32 %5553, 2
  %5599 = fmul fast float %5598, %5595
  %5600 = extractvalue %dx.types.CBufRet.f32 %5553, 0
  %5601 = fsub fast float %5566, %5600
  %5602 = fsub fast float %5601, %5599
  %5603 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5602)  ; FMax(a,b)
  %5604 = fmul fast float %5603, %5596
  %5605 = call float @dx.op.binary.f32(i32 36, float %5597, float %5604)  ; FMin(a,b)
  %5606 = fmul fast float %5605, 0xBFF7154760000000
  %5607 = call float @dx.op.unary.f32(i32 21, float %5606)  ; Exp(value)
  %5608 = fmul fast float %5546, %5607
  br label %5609

; <label>:5609                                    ; preds = %5594, %5439
  %5610 = phi float [ %5608, %5594 ], [ %5440, %5439 ]
  %5611 = call float @dx.op.binary.f32(i32 36, float %5610, float %5610)  ; FMin(a,b)
  %5612 = call float @dx.op.binary.f32(i32 36, float %5610, float %5611)  ; FMin(a,b)
  %5613 = fcmp fast ogt float %5612, 0.000000e+00
  br i1 %5613, label %5614, label %5997, !dx.controlflow.hints !145

; <label>:5614                                    ; preds = %5609
  %5615 = fmul fast float %5610, %4332
  %5616 = fmul fast float %5610, %4333
  %5617 = fmul fast float %5610, %4334
  %5618 = fsub fast float %149, %2135
  %5619 = fcmp fast ogt float %5618, 0.000000e+00
  %5620 = fmul fast float %4321, 5.120000e+02
  %5621 = fmul fast float %4322, 5.120000e+02
  %5622 = fmul fast float %4323, 5.120000e+02
  %5623 = fadd fast float %5622, %149
  %5624 = fsub fast float %2135, %5623
  %5625 = fmul fast float %5624, 2.000000e+00
  %5626 = fadd fast float %5625, %5623
  %5627 = select i1 %5619, float %5626, float %5623
  %5628 = fsub fast float %5627, %149
  %5629 = call float @dx.op.dot3.f32(i32 55, float %5620, float %5621, float %5628, float %5620, float %5621, float %5628)  ; Dot3(ax,ay,az,bx,by,bz)
  %5630 = call float @dx.op.unary.f32(i32 25, float %5629)  ; Rsqrt(value)
  %5631 = fmul fast float %5630, %5620
  %5632 = fmul fast float %5630, %5621
  %5633 = fmul fast float %5630, %5628
  %5634 = fsub fast float %2135, %149
  %5635 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5634)  ; Dot3(ax,ay,az,bx,by,bz)
  %5636 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5631, float %5632, float %5633)  ; Dot3(ax,ay,az,bx,by,bz)
  %5637 = fdiv fast float 1.000000e+00, %5636
  %5638 = fmul fast float %5637, %5635
  %5639 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5618, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5640 = fcmp fast ogt float %5639, 0.000000e+00
  %5641 = fcmp fast olt float %5639, 0.000000e+00
  %5642 = zext i1 %5640 to i32
  %5643 = zext i1 %5641 to i32
  %5644 = sub nsw i32 %5642, %5643
  %5645 = sitofp i32 %5644 to float
  %5646 = fsub fast float %5627, %2135
  %5647 = call float @dx.op.dot3.f32(i32 55, float %5620, float %5621, float %5646, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5648 = fcmp fast ogt float %5647, 0.000000e+00
  %5649 = fcmp fast olt float %5647, 0.000000e+00
  %5650 = zext i1 %5648 to i32
  %5651 = zext i1 %5649 to i32
  %5652 = sub nsw i32 %5650, %5651
  %5653 = sitofp i32 %5652 to float
  %5654 = fcmp fast une float %5645, %5653
  br i1 %5654, label %5655, label %5665

; <label>:5655                                    ; preds = %5614
  %5656 = fmul fast float %5638, %5633
  %5657 = fmul fast float %5638, %5632
  %5658 = fmul fast float %5638, %5631
  %5659 = fmul fast float %5658, %5658
  %5660 = fmul fast float %5657, %5657
  %5661 = fadd fast float %5659, %5660
  %5662 = fmul fast float %5656, %5656
  %5663 = fadd fast float %5661, %5662
  %5664 = call float @dx.op.unary.f32(i32 24, float %5663)  ; Sqrt(value)
  br label %5675

; <label>:5665                                    ; preds = %5614
  %5666 = icmp slt i32 %5644, 0
  br i1 %5666, label %5667, label %5675

; <label>:5667                                    ; preds = %5665
  %5668 = fsub fast float %149, %5627
  %5669 = fmul fast float %5620, %5620
  %5670 = fmul fast float %5621, %5621
  %5671 = fadd fast float %5669, %5670
  %5672 = fmul fast float %5668, %5668
  %5673 = fadd fast float %5671, %5672
  %5674 = call float @dx.op.unary.f32(i32 24, float %5673)  ; Sqrt(value)
  br label %5675

; <label>:5675                                    ; preds = %5667, %5665, %5655
  %5676 = phi float [ %5664, %5655 ], [ %5674, %5667 ], [ 0.000000e+00, %5665 ]
  %5677 = fsub fast float -0.000000e+00, %5676
  %5678 = select i1 %5619, float -0.000000e+00, float %5677
  %5679 = fmul fast float %2136, 0x3FF7154760000000
  %5680 = fmul fast float %5679, %5678
  %5681 = fmul fast float %2137, 0x3FF7154760000000
  %5682 = fmul fast float %5681, %5678
  %5683 = fmul fast float %2138, 0x3FF7154760000000
  %5684 = fmul fast float %5683, %5678
  %5685 = call float @dx.op.unary.f32(i32 21, float %5680)  ; Exp(value)
  %5686 = call float @dx.op.unary.f32(i32 21, float %5682)  ; Exp(value)
  %5687 = call float @dx.op.unary.f32(i32 21, float %5684)  ; Exp(value)
  %5688 = call float @dx.op.unary.f32(i32 7, float %5685)  ; Saturate(value)
  %5689 = call float @dx.op.unary.f32(i32 7, float %5686)  ; Saturate(value)
  %5690 = call float @dx.op.unary.f32(i32 7, float %5687)  ; Saturate(value)
  %5691 = fmul fast float %5615, %5688
  %5692 = fmul fast float %5616, %5689
  %5693 = fmul fast float %5617, %5690
  %5694 = fsub fast float %4321, %2335
  %5695 = fsub fast float %4322, %2334
  %5696 = fsub fast float %4323, %2333
  %5697 = call float @dx.op.dot3.f32(i32 55, float %5694, float %5695, float %5696, float %5694, float %5695, float %5696)  ; Dot3(ax,ay,az,bx,by,bz)
  %5698 = call float @dx.op.unary.f32(i32 25, float %5697)  ; Rsqrt(value)
  %5699 = fmul fast float %5698, %5694
  %5700 = fmul fast float %5698, %5695
  %5701 = fmul fast float %5698, %5696
  %5702 = call float @dx.op.dot3.f32(i32 55, float %4321, float %4322, float %4323, float %2339, float %2340, float %2341)  ; Dot3(ax,ay,az,bx,by,bz)
  %5703 = call float @dx.op.dot3.f32(i32 55, float %2332, float %2331, float %2330, float %5699, float %5700, float %5701)  ; Dot3(ax,ay,az,bx,by,bz)
  %5704 = call float @dx.op.unary.f32(i32 7, float %5702)  ; Saturate(value)
  %5705 = fmul fast float %5704, %5704
  %5706 = fmul fast float %5705, %4316
  %5707 = call float @dx.op.unary.f32(i32 7, float %5706)  ; Saturate(value)
  %5708 = fmul fast float %5707, %5704
  %5709 = call float @dx.op.dot3.f32(i32 55, float %2339, float %2340, float %2341, float %5699, float %5700, float %5701)  ; Dot3(ax,ay,az,bx,by,bz)
  %5710 = fmul fast float %5709, %5709
  %5711 = call float @dx.op.unary.f32(i32 6, float %5702)  ; FAbs(value)
  %5712 = fsub fast float 1.000000e+00, %2368
  %5713 = fmul fast float %2350, %2350
  %5714 = fmul fast float %5713, %5712
  %5715 = fadd fast float %5714, %2368
  %5716 = bitcast float %5715 to i32
  %5717 = ashr i32 %5716, 1
  %5718 = add nsw i32 %5717, 532487669
  %5719 = bitcast i32 %5718 to float
  %5720 = fadd fast float %5719, %2350
  %5721 = fmul fast float %2368, %5710
  %5722 = fsub fast float 1.000000e+00, %5710
  %5723 = fadd fast float %5722, %5721
  %5724 = fmul fast float %5711, %5711
  %5725 = fmul fast float %5724, %5712
  %5726 = fadd fast float %5725, %2368
  %5727 = bitcast float %5726 to i32
  %5728 = ashr i32 %5727, 1
  %5729 = add nsw i32 %5728, 532487669
  %5730 = bitcast i32 %5729 to float
  %5731 = fadd fast float %5730, %5711
  %5732 = fmul fast float %5723, %5723
  %5733 = fmul fast float %5732, %5720
  %5734 = fmul fast float %5733, %5731
  %5735 = fdiv fast float 0x3FF0A00000000000, %5734
  %5736 = fmul fast float %5735, %2368
  %5737 = fmul fast float %3659, 0x3FF9999980000000
  %5738 = fsub fast float 5.000000e+00, %5737
  %5739 = call float @dx.op.unary.f32(i32 6, float %5703)  ; FAbs(value)
  %5740 = fsub fast float 1.000000e+00, %5739
  %5741 = fmul fast float %3659, 0x41D9660740000000
  %5742 = fadd fast float %5741, 0xC1EFBF8940000000
  %5743 = bitcast float %5740 to i32
  %5744 = sitofp i32 %5743 to float
  %5745 = fmul fast float %5744, %5738
  %5746 = fadd fast float %5742, %5745
  %5747 = fptosi float %5746 to i32
  %5748 = bitcast i32 %5747 to float
  %5749 = fsub fast float 1.000000e+00, %2342
  %5750 = fsub fast float 1.000000e+00, %2343
  %5751 = fsub fast float 1.000000e+00, %2348
  %5752 = fmul fast float %5748, %5749
  %5753 = fmul fast float %5748, %5750
  %5754 = fmul fast float %5748, %5751
  %5755 = fadd fast float %5752, %2342
  %5756 = fadd fast float %5753, %2343
  %5757 = fadd fast float %5754, %2348
  br i1 %3682, label %5758, label %5781

; <label>:5758                                    ; preds = %5675
  %5759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1681, float %5739, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5760 = extractvalue %dx.types.ResRet.f32 %5759, 0
  %5761 = extractvalue %dx.types.ResRet.f32 %5759, 1
  %5762 = extractvalue %dx.types.ResRet.f32 %5759, 2
  %5763 = fadd fast float %5760, -5.000000e-01
  %5764 = fadd fast float %5761, -5.000000e-01
  %5765 = fadd fast float %5762, -5.000000e-01
  %5766 = fmul fast float %2342, 4.000000e+00
  %5767 = fmul fast float %5766, %5749
  %5768 = fmul fast float %5767, %5763
  %5769 = fmul fast float %2343, 4.000000e+00
  %5770 = fmul fast float %5769, %5750
  %5771 = fmul fast float %5770, %5764
  %5772 = fmul fast float %2348, 4.000000e+00
  %5773 = fmul fast float %5772, %5751
  %5774 = fmul fast float %5773, %5765
  %5775 = fadd fast float %5768, %5755
  %5776 = fadd fast float %5771, %5756
  %5777 = fadd fast float %5774, %5757
  %5778 = call float @dx.op.unary.f32(i32 7, float %5775)  ; Saturate(value)
  %5779 = call float @dx.op.unary.f32(i32 7, float %5776)  ; Saturate(value)
  %5780 = call float @dx.op.unary.f32(i32 7, float %5777)  ; Saturate(value)
  br label %5781

; <label>:5781                                    ; preds = %5758, %5675
  %5782 = phi float [ %5778, %5758 ], [ %5755, %5675 ]
  %5783 = phi float [ %5779, %5758 ], [ %5756, %5675 ]
  %5784 = phi float [ %5780, %5758 ], [ %5757, %5675 ]
  %5785 = fmul fast float %5702, 9.843750e-01
  %5786 = fadd fast float %5785, 7.812500e-03
  %5787 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %5786, float %3663, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5788 = extractvalue %dx.types.ResRet.f32 %5787, 0
  %5789 = extractvalue %dx.types.ResRet.f32 %5787, 1
  %5790 = extractvalue %dx.types.ResRet.f32 %5787, 2
  %5791 = extractvalue %dx.types.ResRet.f32 %5787, 3
  %5792 = fsub fast float %5790, %5788
  %5793 = fsub fast float %5791, %5789
  %5794 = fmul fast float %5792, %3669
  %5795 = fmul fast float %5793, %3669
  %5796 = fadd fast float %5794, %5788
  %5797 = fadd fast float %5795, %5789
  %5798 = fmul fast float %5796, %2342
  %5799 = fmul fast float %5796, %2343
  %5800 = fmul fast float %5796, %2348
  %5801 = fadd fast float %5798, %5797
  %5802 = fadd fast float %5799, %5797
  %5803 = fadd fast float %5800, %5797
  br i1 %3682, label %5804, label %5827

; <label>:5804                                    ; preds = %5781
  %5805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1681, float %5702, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5806 = extractvalue %dx.types.ResRet.f32 %5805, 0
  %5807 = extractvalue %dx.types.ResRet.f32 %5805, 1
  %5808 = extractvalue %dx.types.ResRet.f32 %5805, 2
  %5809 = fadd fast float %5806, -5.000000e-01
  %5810 = fadd fast float %5807, -5.000000e-01
  %5811 = fadd fast float %5808, -5.000000e-01
  %5812 = fmul fast float %2342, 4.000000e+00
  %5813 = fmul fast float %5812, %5749
  %5814 = fmul fast float %5813, %5809
  %5815 = fmul fast float %2343, 4.000000e+00
  %5816 = fmul fast float %5815, %5750
  %5817 = fmul fast float %5816, %5810
  %5818 = fmul fast float %2348, 4.000000e+00
  %5819 = fmul fast float %5818, %5751
  %5820 = fmul fast float %5819, %5811
  %5821 = fadd fast float %5814, %5801
  %5822 = fadd fast float %5817, %5802
  %5823 = fadd fast float %5820, %5803
  %5824 = call float @dx.op.unary.f32(i32 7, float %5821)  ; Saturate(value)
  %5825 = call float @dx.op.unary.f32(i32 7, float %5822)  ; Saturate(value)
  %5826 = call float @dx.op.unary.f32(i32 7, float %5823)  ; Saturate(value)
  br label %5827

; <label>:5827                                    ; preds = %5804, %5781
  %5828 = phi float [ %5824, %5804 ], [ %5801, %5781 ]
  %5829 = phi float [ %5825, %5804 ], [ %5802, %5781 ]
  %5830 = phi float [ %5826, %5804 ], [ %5803, %5781 ]
  %5831 = call float @dx.op.binary.f32(i32 35, float %5829, float %5830)  ; FMax(a,b)
  %5832 = call float @dx.op.binary.f32(i32 35, float %5828, float %5831)  ; FMax(a,b)
  %5833 = fsub fast float 1.000000e+00, %5832
  %5834 = call float @dx.op.binary.f32(i32 35, float %5711, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5835 = fdiv fast float %1087, %5834
  %5836 = fmul fast float %4229, %5835
  %5837 = fmul fast float %4231, %5835
  %5838 = fmul fast float %4233, %5835
  %5839 = call float @dx.op.unary.f32(i32 21, float %5836)  ; Exp(value)
  %5840 = call float @dx.op.unary.f32(i32 21, float %5837)  ; Exp(value)
  %5841 = call float @dx.op.unary.f32(i32 21, float %5838)  ; Exp(value)
  %5842 = call float @dx.op.unary.f32(i32 7, float %5839)  ; Saturate(value)
  %5843 = call float @dx.op.unary.f32(i32 7, float %5840)  ; Saturate(value)
  %5844 = call float @dx.op.unary.f32(i32 7, float %5841)  ; Saturate(value)
  %5845 = select i1 %4226, float %5842, float 0.000000e+00
  %5846 = select i1 %4227, float %5843, float 0.000000e+00
  %5847 = select i1 %4228, float %5844, float 0.000000e+00
  %5848 = fsub fast float -0.000000e+00, %2339
  %5849 = fsub fast float -0.000000e+00, %2340
  %5850 = fsub fast float -0.000000e+00, %2341
  %5851 = call float @dx.op.dot3.f32(i32 55, float %4321, float %4322, float %4323, float %5848, float %5849, float %5850)  ; Dot3(ax,ay,az,bx,by,bz)
  %5852 = call float @dx.op.unary.f32(i32 7, float %5851)  ; Saturate(value)
  %5853 = fmul fast float %5852, 9.843750e-01
  %5854 = fadd fast float %5853, 7.812500e-03
  %5855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %5854, float %3663, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5856 = extractvalue %dx.types.ResRet.f32 %5855, 0
  %5857 = extractvalue %dx.types.ResRet.f32 %5855, 1
  %5858 = extractvalue %dx.types.ResRet.f32 %5855, 2
  %5859 = extractvalue %dx.types.ResRet.f32 %5855, 3
  %5860 = fsub fast float %5858, %5856
  %5861 = fsub fast float %5859, %5857
  %5862 = fmul fast float %5860, %3669
  %5863 = fmul fast float %5861, %3669
  %5864 = fadd fast float %5862, %5856
  %5865 = fadd fast float %5863, %5857
  %5866 = fmul fast float %5864, %2342
  %5867 = fmul fast float %5864, %2343
  %5868 = fmul fast float %5864, %2348
  %5869 = fadd fast float %5866, %5865
  %5870 = fadd fast float %5867, %5865
  %5871 = fadd fast float %5868, %5865
  br i1 %3682, label %5872, label %5895

; <label>:5872                                    ; preds = %5827
  %5873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1681, float %5852, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5874 = extractvalue %dx.types.ResRet.f32 %5873, 0
  %5875 = extractvalue %dx.types.ResRet.f32 %5873, 1
  %5876 = extractvalue %dx.types.ResRet.f32 %5873, 2
  %5877 = fadd fast float %5874, -5.000000e-01
  %5878 = fadd fast float %5875, -5.000000e-01
  %5879 = fadd fast float %5876, -5.000000e-01
  %5880 = fmul fast float %2342, 4.000000e+00
  %5881 = fmul fast float %5880, %5749
  %5882 = fmul fast float %5881, %5877
  %5883 = fmul fast float %2343, 4.000000e+00
  %5884 = fmul fast float %5883, %5750
  %5885 = fmul fast float %5884, %5878
  %5886 = fmul fast float %2348, 4.000000e+00
  %5887 = fmul fast float %5886, %5751
  %5888 = fmul fast float %5887, %5879
  %5889 = fadd fast float %5882, %5869
  %5890 = fadd fast float %5885, %5870
  %5891 = fadd fast float %5888, %5871
  %5892 = call float @dx.op.unary.f32(i32 7, float %5889)  ; Saturate(value)
  %5893 = call float @dx.op.unary.f32(i32 7, float %5890)  ; Saturate(value)
  %5894 = call float @dx.op.unary.f32(i32 7, float %5891)  ; Saturate(value)
  br label %5895

; <label>:5895                                    ; preds = %5872, %5827
  %5896 = phi float [ %5892, %5872 ], [ %5869, %5827 ]
  %5897 = phi float [ %5893, %5872 ], [ %5870, %5827 ]
  %5898 = phi float [ %5894, %5872 ], [ %5871, %5827 ]
  %5899 = call float @dx.op.binary.f32(i32 35, float %5897, float %5898)  ; FMax(a,b)
  %5900 = call float @dx.op.binary.f32(i32 35, float %5896, float %5899)  ; FMax(a,b)
  %5901 = fsub fast float 1.000000e+00, %5900
  %5902 = fmul fast float %2365, %4293
  %5903 = fadd fast float %4295, %5902
  %5904 = call float @dx.op.unary.f32(i32 7, float %5903)  ; Saturate(value)
  %5905 = fsub fast float %4321, %2356
  %5906 = fsub fast float %4322, %2357
  %5907 = fsub fast float %4323, %2358
  %5908 = call float @dx.op.dot3.f32(i32 55, float %5905, float %5906, float %5907, float %5905, float %5906, float %5907)  ; Dot3(ax,ay,az,bx,by,bz)
  %5909 = call float @dx.op.unary.f32(i32 25, float %5908)  ; Rsqrt(value)
  %5910 = fmul fast float %5909, %5905
  %5911 = fmul fast float %5909, %5906
  %5912 = fmul fast float %5909, %5907
  %5913 = call float @dx.op.dot3.f32(i32 55, float %5848, float %5849, float %5850, float %5910, float %5911, float %5912)  ; Dot3(ax,ay,az,bx,by,bz)
  %5914 = fmul fast float %5913, %5913
  %5915 = call float @dx.op.unary.f32(i32 6, float %5852)  ; FAbs(value)
  %5916 = call float @dx.op.binary.f32(i32 35, float %5904, float 0x3F847AE140000000)  ; FMax(a,b)
  %5917 = fmul fast float %5916, %5916
  %5918 = fmul fast float %5917, %5917
  %5919 = fsub fast float 1.000000e+00, %5918
  %5920 = fmul fast float %5713, %5919
  %5921 = fadd fast float %5920, %5918
  %5922 = bitcast float %5921 to i32
  %5923 = ashr i32 %5922, 1
  %5924 = add nsw i32 %5923, 532487669
  %5925 = bitcast i32 %5924 to float
  %5926 = fadd fast float %5925, %2350
  %5927 = fmul fast float %5918, %5914
  %5928 = fsub fast float 1.000000e+00, %5914
  %5929 = fadd fast float %5928, %5927
  %5930 = fmul fast float %5915, %5915
  %5931 = fmul fast float %5930, %5919
  %5932 = fadd fast float %5931, %5918
  %5933 = bitcast float %5932 to i32
  %5934 = ashr i32 %5933, 1
  %5935 = add nsw i32 %5934, 532487669
  %5936 = bitcast i32 %5935 to float
  %5937 = fadd fast float %5936, %5915
  %5938 = fmul fast float %5929, %5929
  %5939 = fmul fast float %5938, %5926
  %5940 = fmul fast float %5939, %5937
  %5941 = fdiv fast float 0x3FF0A00000000000, %5940
  %5942 = fmul fast float %5941, %5918
  %5943 = fmul fast float %5852, %5845
  %5944 = fmul fast float %5852, %5846
  %5945 = fmul fast float %5852, %5847
  %5946 = fmul fast float %5943, %5901
  %5947 = fmul fast float %5946, %5942
  %5948 = fmul fast float %5944, %5901
  %5949 = fmul fast float %5948, %5942
  %5950 = fmul fast float %5945, %5901
  %5951 = fmul fast float %5950, %5942
  %5952 = fmul fast float %5782, %5736
  %5953 = fmul fast float %5783, %5736
  %5954 = fmul fast float %5784, %5736
  %5955 = fsub fast float 1.000000e+00, %5703
  %5956 = bitcast float %5955 to i32
  %5957 = sitofp i32 %5956 to float
  %5958 = fmul fast float %5957, 5.000000e+00
  %5959 = fadd fast float %5958, 0xC1EFBF8940000000
  %5960 = fptosi float %5959 to i32
  %5961 = bitcast i32 %5960 to float
  %5962 = fmul fast float %5961, %1680
  %5963 = fmul fast float %5833, %5962
  %5964 = fmul fast float %5963, %4221
  %5965 = fmul fast float %5963, %4222
  %5966 = fmul fast float %5963, %4223
  %5967 = fadd fast float %5964, %5952
  %5968 = fadd fast float %5965, %5953
  %5969 = fadd fast float %5966, %5954
  %5970 = fmul fast float %5967, %5708
  %5971 = fmul fast float %5968, %5708
  %5972 = fmul fast float %5969, %5708
  %5973 = fmul fast float %5708, %5691
  %5974 = fmul fast float %5973, %5833
  %5975 = fmul fast float %5708, %5692
  %5976 = fmul fast float %5975, %5833
  %5977 = fmul fast float %5708, %5693
  %5978 = fmul fast float %5977, %5833
  %5979 = fadd fast float %5970, %5947
  %5980 = fadd fast float %5971, %5949
  %5981 = fadd fast float %5972, %5951
  %5982 = fmul fast float %5979, %5691
  %5983 = fmul fast float %5980, %5692
  %5984 = fmul fast float %5981, %5693
  %5985 = fadd fast float %5974, %4310
  %5986 = fmul fast float %5985, %1704
  %5987 = fadd fast float %5976, %4312
  %5988 = fmul fast float %5987, %1704
  %5989 = fadd fast float %5978, %4314
  %5990 = fmul fast float %5989, %1704
  %5991 = fadd fast float %5982, %4274
  %5992 = fmul fast float %5991, %1704
  %5993 = fadd fast float %5983, %4277
  %5994 = fmul fast float %5993, %1704
  %5995 = fadd fast float %5984, %4280
  %5996 = fmul fast float %5995, %1704
  br label %5997

; <label>:5997                                    ; preds = %5895, %5609, %4204
  %5998 = phi float [ %4275, %4204 ], [ %4275, %5609 ], [ %5992, %5895 ]
  %5999 = phi float [ %4278, %4204 ], [ %4278, %5609 ], [ %5994, %5895 ]
  %6000 = phi float [ %4281, %4204 ], [ %4281, %5609 ], [ %5996, %5895 ]
  %6001 = phi float [ %4311, %4204 ], [ %4311, %5609 ], [ %5986, %5895 ]
  %6002 = phi float [ %4313, %4204 ], [ %4313, %5609 ], [ %5988, %5895 ]
  %6003 = phi float [ %4315, %4204 ], [ %4315, %5609 ], [ %5990, %5895 ]
  %6004 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6005 = extractvalue %dx.types.CBufRet.i32 %6004, 0
  %6006 = icmp eq i32 %6005, 0
  br i1 %6006, label %6824, label %6007

; <label>:6007                                    ; preds = %5997
  %6008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6009 = extractvalue %dx.types.CBufRet.f32 %6008, 2
  %6010 = extractvalue %dx.types.CBufRet.f32 %6008, 3
  %6011 = fmul fast float %6009, %100
  %6012 = fmul fast float %6010, %101
  %6013 = fptoui float %6011 to i32
  %6014 = fptoui float %6012 to i32
  %6015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6016 = extractvalue %dx.types.CBufRet.f32 %6015, 0
  %6017 = extractvalue %dx.types.CBufRet.f32 %6015, 2
  %6018 = extractvalue %dx.types.CBufRet.f32 %6015, 3
  %6019 = fadd fast float %88, -4.000000e+00
  %6020 = call float @dx.op.binary.f32(i32 35, float %6019, float 0.000000e+00)  ; FMax(a,b)
  %6021 = fadd fast float %6020, %6016
  %6022 = fmul fast float %6021, %6017
  %6023 = call float @dx.op.unary.f32(i32 23, float %6022)  ; Log(value)
  %6024 = fmul fast float %6023, %6018
  %6025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6026 = extractvalue %dx.types.CBufRet.f32 %6025, 2
  %6027 = fmul fast float %6024, %6026
  %6028 = call float @dx.op.unary.f32(i32 7, float %6027)  ; Saturate(value)
  %6029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6030 = extractvalue %dx.types.CBufRet.i32 %6029, 1
  %6031 = add i32 %6030, -1
  %6032 = uitofp i32 %6030 to float
  %6033 = fmul fast float %6032, %6028
  %6034 = fptoui float %6033 to i32
  %6035 = call i32 @dx.op.binary.i32(i32 40, i32 %6034, i32 %6031)  ; UMin(a,b)
  %6036 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6037 = extractvalue %dx.types.CBufRet.i32 %6036, 2
  %6038 = extractvalue %dx.types.CBufRet.i32 %6036, 3
  %6039 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6014, i32 %6037, i32 %6013)  ; UMad(a,b,c)
  %6040 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6035, i32 %6038, i32 %6039)  ; UMad(a,b,c)
  %6041 = add nsw i32 %6005, -1
  %6042 = call i32 @dx.op.binary.i32(i32 37, i32 %6041, i32 0)  ; IMax(a,b)
  %6043 = call float @dx.op.binary.f32(i32 35, float %88, float 0.000000e+00)  ; FMax(a,b)
  %6044 = fptoui float %6043 to i32
  %6045 = lshr i32 %6044, 5
  %6046 = call i32 @dx.op.binary.i32(i32 40, i32 %6045, i32 8191)  ; UMin(a,b)
  %6047 = shl i32 %6046, 2
  %6048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6047, i32 undef)  ; BufferLoad(srv,index,wot)
  %6049 = extractvalue %dx.types.ResRet.i32 %6048, 0
  %6050 = lshr i32 %6049, 16
  %6051 = and i32 %6049, 65535
  %6052 = lshr i32 %6049, 21
  %6053 = lshr i32 %6051, 5
  %6054 = call i32 @dx.op.binary.i32(i32 40, i32 %6053, i32 %6042)  ; UMin(a,b)
  %6055 = icmp ugt i32 %6052, %6054
  br i1 %6055, label %6824, label %6056

; <label>:6056                                    ; preds = %6007
  br label %6057

; <label>:6057                                    ; preds = %6814, %6056
  %6058 = phi i32 [ %6821, %6814 ], [ %6052, %6056 ]
  %6059 = phi float [ %6815, %6814 ], [ %5998, %6056 ]
  %6060 = phi float [ %6816, %6814 ], [ %5999, %6056 ]
  %6061 = phi float [ %6817, %6814 ], [ %6000, %6056 ]
  %6062 = phi float [ %6818, %6814 ], [ %6001, %6056 ]
  %6063 = phi float [ %6819, %6814 ], [ %6002, %6056 ]
  %6064 = phi float [ %6820, %6814 ], [ %6003, %6056 ]
  %6065 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6066 = extractvalue %dx.types.CBufRet.i32 %6065, 0
  %6067 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6040, i32 %6066, i32 %6058)  ; UMad(a,b,c)
  %6068 = shl i32 %6067, 2
  %6069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6068, i32 undef)  ; BufferLoad(srv,index,wot)
  %6070 = extractvalue %dx.types.ResRet.i32 %6069, 0
  %6071 = shl i32 %6058, 5
  %6072 = sub nsw i32 %6050, %6071
  %6073 = call i32 @dx.op.binary.i32(i32 37, i32 %6072, i32 0)  ; IMax(a,b)
  %6074 = call i32 @dx.op.binary.i32(i32 38, i32 %6073, i32 31)  ; IMin(a,b)
  %6075 = sub nsw i32 1, %6050
  %6076 = add nsw i32 %6075, %6051
  %6077 = call i32 @dx.op.binary.i32(i32 37, i32 %6076, i32 0)  ; IMax(a,b)
  %6078 = call i32 @dx.op.binary.i32(i32 38, i32 %6077, i32 32)  ; IMin(a,b)
  %6079 = and i32 %6078, 31
  %6080 = shl i32 -1, %6079
  %6081 = xor i32 %6080, -1
  %6082 = and i32 %6074, 31
  %6083 = shl i32 %6081, %6082
  %6084 = icmp eq i32 %6078, 32
  %6085 = select i1 %6084, i32 -1, i32 %6083
  %6086 = and i32 %6085, %6070
  %6087 = icmp eq i32 %6086, 0
  br i1 %6087, label %6814, label %6088

; <label>:6088                                    ; preds = %6057
  br label %6089

; <label>:6089                                    ; preds = %6224, %6088
  %6090 = phi i32 [ %6101, %6224 ], [ %6086, %6088 ]
  %6091 = phi float [ %6225, %6224 ], [ %6059, %6088 ]
  %6092 = phi float [ %6226, %6224 ], [ %6060, %6088 ]
  %6093 = phi float [ %6227, %6224 ], [ %6061, %6088 ]
  %6094 = phi float [ %6228, %6224 ], [ %6062, %6088 ]
  %6095 = phi float [ %6229, %6224 ], [ %6063, %6088 ]
  %6096 = phi float [ %6230, %6224 ], [ %6064, %6088 ]
  %6097 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6090)  ; FirstbitLo(value)
  %6098 = add i32 %6097, %6071
  %6099 = and i32 %6097, 31
  %6100 = shl i32 1, %6099
  %6101 = xor i32 %6100, %6090
  %6102 = mul i32 %6098, 112
  %6103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6102, i32 undef)  ; BufferLoad(srv,index,wot)
  %6104 = extractvalue %dx.types.ResRet.f32 %6103, 0
  %6105 = extractvalue %dx.types.ResRet.f32 %6103, 1
  %6106 = extractvalue %dx.types.ResRet.f32 %6103, 2
  %6107 = or i32 %6102, 12
  %6108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6107, i32 undef)  ; BufferLoad(srv,index,wot)
  %6109 = extractvalue %dx.types.ResRet.f32 %6108, 0
  %6110 = add i32 %6102, 16
  %6111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6110, i32 undef)  ; BufferLoad(srv,index,wot)
  %6112 = extractvalue %dx.types.ResRet.f32 %6111, 0
  %6113 = extractvalue %dx.types.ResRet.f32 %6111, 1
  %6114 = extractvalue %dx.types.ResRet.f32 %6111, 2
  %6115 = add i32 %6102, 28
  %6116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6115, i32 undef)  ; BufferLoad(srv,index,wot)
  %6117 = extractvalue %dx.types.ResRet.i32 %6116, 0
  %6118 = add i32 %6102, 44
  %6119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6118, i32 undef)  ; BufferLoad(srv,index,wot)
  %6120 = extractvalue %dx.types.ResRet.f32 %6119, 0
  %6121 = add i32 %6102, 48
  %6122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6121, i32 undef)  ; BufferLoad(srv,index,wot)
  %6123 = extractvalue %dx.types.ResRet.f32 %6122, 0
  %6124 = extractvalue %dx.types.ResRet.f32 %6122, 1
  %6125 = extractvalue %dx.types.ResRet.f32 %6122, 2
  %6126 = extractvalue %dx.types.ResRet.f32 %6122, 3
  %6127 = add i32 %6102, 64
  %6128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6127, i32 undef)  ; BufferLoad(srv,index,wot)
  %6129 = extractvalue %dx.types.ResRet.f32 %6128, 0
  %6130 = extractvalue %dx.types.ResRet.f32 %6128, 1
  %6131 = extractvalue %dx.types.ResRet.f32 %6128, 2
  %6132 = extractvalue %dx.types.ResRet.f32 %6128, 3
  %6133 = add i32 %6102, 80
  %6134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6133, i32 undef)  ; BufferLoad(srv,index,wot)
  %6135 = extractvalue %dx.types.ResRet.f32 %6134, 1
  %6136 = extractvalue %dx.types.ResRet.f32 %6134, 2
  %6137 = add i32 %6102, 92
  %6138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6137, i32 undef)  ; BufferLoad(srv,index,wot)
  %6139 = extractvalue %dx.types.ResRet.i32 %6138, 0
  %6140 = call float @dx.op.dot3.f32(i32 55, float %6104, float %6105, float %6106, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6141 = select i1 %238, float %6135, float %6104
  %6142 = select i1 %238, float %6140, float %6105
  %6143 = select i1 %238, float %6136, float %6106
  %6144 = and i32 %6139, 65535
  %6145 = uitofp i32 %6144 to float
  %6146 = lshr i32 %6139, 16
  %6147 = uitofp i32 %6146 to float
  %6148 = and i32 %6117, 65535
  %6149 = and i32 %6117, 50331648
  %6150 = icmp slt i32 %6117, 0
  %6151 = icmp eq i32 %6149, 33554432
  %6152 = fsub fast float %6123, %147
  %6153 = fsub fast float %6124, %148
  %6154 = fsub fast float %6125, %149
  %6155 = call float @dx.op.dot3.f32(i32 55, float %6152, float %6153, float %6154, float %6152, float %6153, float %6154)  ; Dot3(ax,ay,az,bx,by,bz)
  %6156 = call float @dx.op.unary.f32(i32 24, float %6155)  ; Sqrt(value)
  %6157 = fdiv fast float 1.000000e+00, %6156
  %6158 = fmul fast float %6157, %6152
  %6159 = fmul fast float %6157, %6153
  %6160 = fmul fast float %6157, %6154
  %6161 = fadd fast float %6156, %6109
  %6162 = fdiv fast float 1.000000e+00, %6161
  %6163 = fmul float %6120, %6162
  %6164 = fmul float %6163, %6163
  %6165 = call float @dx.op.unary.f32(i32 7, float %6164)  ; Saturate(value)
  br i1 %6151, label %6166, label %6187

; <label>:6166                                    ; preds = %6089
  %6167 = fmul fast float %6131, %6112
  %6168 = fmul fast float %6131, %6113
  %6169 = fmul fast float %6131, %6114
  %6170 = fadd fast float %6152, %6167
  %6171 = fadd fast float %6153, %6168
  %6172 = fadd fast float %6154, %6169
  %6173 = call float @dx.op.dot3.f32(i32 55, float %6170, float %6171, float %6172, float %6170, float %6171, float %6172)  ; Dot3(ax,ay,az,bx,by,bz)
  %6174 = call float @dx.op.unary.f32(i32 25, float %6173)  ; Rsqrt(value)
  %6175 = fmul fast float %6174, %6170
  %6176 = fmul fast float %6174, %6171
  %6177 = fmul fast float %6174, %6172
  %6178 = fsub fast float %147, %6123
  %6179 = fsub fast float %148, %6124
  %6180 = fsub fast float %149, %6125
  %6181 = fsub fast float -0.000000e+00, %6178
  %6182 = fsub fast float -0.000000e+00, %6179
  %6183 = fsub fast float -0.000000e+00, %6180
  %6184 = call float @dx.op.dot3.f32(i32 55, float %6181, float %6182, float %6183, float %6112, float %6113, float %6114)  ; Dot3(ax,ay,az,bx,by,bz)
  %6185 = fcmp fast ogt float %6184, 0.000000e+00
  %6186 = uitofp i1 %6185 to float
  br label %6187

; <label>:6187                                    ; preds = %6166, %6089
  %6188 = phi float [ %6186, %6166 ], [ 1.000000e+00, %6089 ]
  %6189 = phi float [ %6175, %6166 ], [ %6158, %6089 ]
  %6190 = phi float [ %6176, %6166 ], [ %6159, %6089 ]
  %6191 = phi float [ %6177, %6166 ], [ %6160, %6089 ]
  %6192 = call float @dx.op.dot3.f32(i32 55, float %6112, float %6113, float %6114, float %6189, float %6190, float %6191)  ; Dot3(ax,ay,az,bx,by,bz)
  %6193 = fmul fast float %6192, %6192
  %6194 = call float @dx.op.unary.f32(i32 7, float %6193)  ; Saturate(value)
  %6195 = fsub fast float 1.000000e+00, %6194
  %6196 = fmul fast float %6195, 5.000000e-01
  %6197 = fcmp fast ogt float %6192, 0.000000e+00
  %6198 = fsub fast float 1.000000e+00, %6196
  %6199 = select i1 %6197, float %6196, float %6198
  %6200 = fmul fast float %6199, %6147
  %6201 = fadd fast float %6200, %6145
  %6202 = fmul fast float %6201, 0x3EF0001000000000
  %6203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %64, float %6202, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6204 = extractvalue %dx.types.ResRet.f32 %6203, 0
  %6205 = fmul fast float %6192, %6129
  %6206 = fadd fast float %6205, %6130
  %6207 = call float @dx.op.unary.f32(i32 7, float %6206)  ; Saturate(value)
  %6208 = select i1 %6151, float 1.000000e+00, float %6207
  %6209 = select i1 %6151, float %6207, float 1.000000e+00
  %6210 = fmul fast float %6156, %6126
  %6211 = fsub fast float 1.000000e+00, %6210
  %6212 = fmul fast float %6211, %6132
  %6213 = call float @dx.op.unary.f32(i32 7, float %6212)  ; Saturate(value)
  %6214 = fmul fast float %6213, %6209
  %6215 = fmul fast float %6214, 2.000000e+00
  %6216 = fsub fast float 3.000000e+00, %6215
  %6217 = fmul fast float %6204, %6188
  %6218 = fmul fast float %6214, %6214
  %6219 = fmul fast float %6218, %6217
  %6220 = fmul fast float %6219, %6216
  %6221 = call float @dx.op.binary.f32(i32 36, float %6220, float %6220)  ; FMin(a,b)
  %6222 = call float @dx.op.binary.f32(i32 36, float %6220, float %6221)  ; FMin(a,b)
  %6223 = fcmp fast ogt float %6222, 0.000000e+00
  br i1 %6223, label %6232, label %6224, !dx.controlflow.hints !146

; <label>:6224                                    ; preds = %6767, %6378, %6187
  %6225 = phi float [ %6091, %6378 ], [ %6091, %6187 ], [ %6810, %6767 ]
  %6226 = phi float [ %6092, %6378 ], [ %6092, %6187 ], [ %6811, %6767 ]
  %6227 = phi float [ %6093, %6378 ], [ %6093, %6187 ], [ %6812, %6767 ]
  %6228 = phi float [ %6094, %6378 ], [ %6094, %6187 ], [ %6804, %6767 ]
  %6229 = phi float [ %6095, %6378 ], [ %6095, %6187 ], [ %6805, %6767 ]
  %6230 = phi float [ %6096, %6378 ], [ %6096, %6187 ], [ %6806, %6767 ]
  %6231 = icmp eq i32 %6090, %6100
  br i1 %6231, label %6813, label %6089

; <label>:6232                                    ; preds = %6187
  %6233 = icmp eq i32 %6148, 255
  br i1 %6233, label %6378, label %6234, !dx.controlflow.hints !147

; <label>:6234                                    ; preds = %6232
  %6235 = mul nuw nsw i32 %6148, 176
  %6236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6235, i32 undef)  ; BufferLoad(srv,index,wot)
  %6237 = extractvalue %dx.types.ResRet.f32 %6236, 0
  %6238 = extractvalue %dx.types.ResRet.f32 %6236, 1
  %6239 = extractvalue %dx.types.ResRet.f32 %6236, 2
  %6240 = extractvalue %dx.types.ResRet.f32 %6236, 3
  %6241 = add nuw nsw i32 %6235, 16
  %6242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6241, i32 undef)  ; BufferLoad(srv,index,wot)
  %6243 = extractvalue %dx.types.ResRet.f32 %6242, 0
  %6244 = extractvalue %dx.types.ResRet.f32 %6242, 1
  %6245 = add nuw nsw i32 %6235, 32
  %6246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6245, i32 undef)  ; BufferLoad(srv,index,wot)
  %6247 = extractvalue %dx.types.ResRet.f32 %6246, 0
  %6248 = extractvalue %dx.types.ResRet.f32 %6246, 1
  %6249 = extractvalue %dx.types.ResRet.f32 %6246, 2
  %6250 = add nuw nsw i32 %6235, 48
  %6251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6250, i32 undef)  ; BufferLoad(srv,index,wot)
  %6252 = extractvalue %dx.types.ResRet.f32 %6251, 0
  %6253 = extractvalue %dx.types.ResRet.f32 %6251, 1
  %6254 = extractvalue %dx.types.ResRet.f32 %6251, 2
  %6255 = extractvalue %dx.types.ResRet.f32 %6251, 3
  %6256 = add nuw nsw i32 %6235, 64
  %6257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6256, i32 undef)  ; BufferLoad(srv,index,wot)
  %6258 = extractvalue %dx.types.ResRet.f32 %6257, 0
  %6259 = extractvalue %dx.types.ResRet.f32 %6257, 1
  %6260 = extractvalue %dx.types.ResRet.f32 %6257, 2
  %6261 = extractvalue %dx.types.ResRet.f32 %6257, 3
  %6262 = add nuw nsw i32 %6235, 80
  %6263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6262, i32 undef)  ; BufferLoad(srv,index,wot)
  %6264 = extractvalue %dx.types.ResRet.f32 %6263, 0
  %6265 = extractvalue %dx.types.ResRet.f32 %6263, 1
  %6266 = extractvalue %dx.types.ResRet.f32 %6263, 2
  %6267 = extractvalue %dx.types.ResRet.f32 %6263, 3
  %6268 = add nuw nsw i32 %6235, 96
  %6269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6268, i32 undef)  ; BufferLoad(srv,index,wot)
  %6270 = extractvalue %dx.types.ResRet.f32 %6269, 0
  %6271 = extractvalue %dx.types.ResRet.f32 %6269, 1
  %6272 = extractvalue %dx.types.ResRet.f32 %6269, 2
  %6273 = extractvalue %dx.types.ResRet.f32 %6269, 3
  %6274 = bitcast float %6244 to i32
  %6275 = fmul fast float %6249, %76
  %6276 = fmul fast float %6249, %77
  %6277 = fmul fast float %6249, %78
  %6278 = fadd fast float %6275, %147
  %6279 = fadd fast float %6276, %148
  %6280 = fadd fast float %6277, %149
  %6281 = fmul fast float %6278, %6252
  %6282 = call float @dx.op.tertiary.f32(i32 46, float %6279, float %6258, float %6281)  ; FMad(a,b,c)
  %6283 = call float @dx.op.tertiary.f32(i32 46, float %6280, float %6264, float %6282)  ; FMad(a,b,c)
  %6284 = fadd fast float %6283, %6270
  %6285 = fmul fast float %6278, %6253
  %6286 = call float @dx.op.tertiary.f32(i32 46, float %6279, float %6259, float %6285)  ; FMad(a,b,c)
  %6287 = call float @dx.op.tertiary.f32(i32 46, float %6280, float %6265, float %6286)  ; FMad(a,b,c)
  %6288 = fadd fast float %6287, %6271
  %6289 = fmul fast float %6278, %6254
  %6290 = call float @dx.op.tertiary.f32(i32 46, float %6279, float %6260, float %6289)  ; FMad(a,b,c)
  %6291 = call float @dx.op.tertiary.f32(i32 46, float %6280, float %6266, float %6290)  ; FMad(a,b,c)
  %6292 = fadd fast float %6291, %6272
  %6293 = fmul fast float %6278, %6255
  %6294 = call float @dx.op.tertiary.f32(i32 46, float %6279, float %6261, float %6293)  ; FMad(a,b,c)
  %6295 = call float @dx.op.tertiary.f32(i32 46, float %6280, float %6267, float %6294)  ; FMad(a,b,c)
  %6296 = fadd fast float %6295, %6273
  %6297 = fdiv fast float %6284, %6296
  %6298 = fdiv fast float %6288, %6296
  %6299 = fdiv fast float %6292, %6296
  %6300 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6299)  ; FMax(a,b)
  %6301 = fmul fast float %249, 0x401921FB60000000
  %6302 = call float @dx.op.unary.f32(i32 13, float %6301)  ; Sin(value)
  %6303 = call float @dx.op.unary.f32(i32 12, float %6301)  ; Cos(value)
  %6304 = fmul fast float %6303, %6248
  %6305 = call float @dx.op.tertiary.f32(i32 46, float %6302, float %6248, float 0.000000e+00)  ; FMad(a,b,c)
  %6306 = fmul fast float %6248, %6302
  %6307 = fsub fast float -0.000000e+00, %6306
  %6308 = call float @dx.op.tertiary.f32(i32 46, float %6303, float %6248, float 0.000000e+00)  ; FMad(a,b,c)
  br label %6309

; <label>:6309                                    ; preds = %6309, %6234
  %6310 = phi float [ 0.000000e+00, %6234 ], [ %6342, %6309 ]
  %6311 = phi float [ 0.000000e+00, %6234 ], [ %6344, %6309 ]
  %6312 = phi i32 [ 0, %6234 ], [ %6345, %6309 ]
  %6313 = mul i32 %6312, 2
  %6314 = add i32 0, %6313
  %6315 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6314
  %6316 = load float, float* %6315, align 4
  %6317 = mul i32 %6312, 2
  %6318 = add i32 1, %6317
  %6319 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6318
  %6320 = load float, float* %6319, align 4
  %6321 = fmul fast float %6304, %6316
  %6322 = call float @dx.op.tertiary.f32(i32 46, float %6320, float %6307, float %6321)  ; FMad(a,b,c)
  %6323 = fmul fast float %6316, %6305
  %6324 = call float @dx.op.tertiary.f32(i32 46, float %6320, float %6308, float %6323)  ; FMad(a,b,c)
  %6325 = fadd fast float %6322, %6297
  %6326 = fadd fast float %6324, %6298
  %6327 = fmul fast float %6325, %6243
  %6328 = fmul fast float %6326, %6243
  %6329 = call float @dx.op.binary.f32(i32 35, float %6327, float %6239)  ; FMax(a,b)
  %6330 = call float @dx.op.binary.f32(i32 35, float %6328, float %6239)  ; FMax(a,b)
  %6331 = call float @dx.op.binary.f32(i32 36, float %6329, float %6240)  ; FMin(a,b)
  %6332 = call float @dx.op.binary.f32(i32 36, float %6330, float %6240)  ; FMin(a,b)
  %6333 = fadd fast float %6331, %6237
  %6334 = fadd fast float %6332, %6238
  %6335 = uitofp i32 %6274 to float
  %6336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %65, float %6333, float %6334, float %6335, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6337 = extractvalue %dx.types.ResRet.f32 %6336, 0
  %6338 = fsub fast float %6337, %6300
  %6339 = fsub fast float %6338, %6247
  %6340 = fcmp fast ogt float %6339, 0.000000e+00
  %6341 = select i1 %6340, float 1.000000e+00, float 0.000000e+00
  %6342 = fadd fast float %6341, %6310
  %6343 = select i1 %6340, float %6339, float 0.000000e+00
  %6344 = fadd fast float %6343, %6311
  %6345 = add nuw nsw i32 %6312, 1
  %6346 = icmp eq i32 %6345, 8
  br i1 %6346, label %6347, label %6309

; <label>:6347                                    ; preds = %6309
  %6348 = fdiv fast float 1.000000e+00, %6342
  %6349 = fmul fast float %6348, %6344
  %6350 = fdiv fast float 1.000000e+00, %6300
  %6351 = fmul fast float %6349, %6350
  %6352 = call float @dx.op.unary.f32(i32 7, float %6351)  ; Saturate(value)
  %6353 = call float @dx.op.binary.f32(i32 35, float %6352, float 0.000000e+00)  ; FMax(a,b)
  %6354 = fmul fast float %6342, 1.250000e-01
  %6355 = call float @dx.op.unary.f32(i32 7, float %6354)  ; Saturate(value)
  %6356 = fmul fast float %6355, 2.000000e+00
  %6357 = fadd fast float %6356, -1.000000e+00
  %6358 = fcmp fast ogt float %6357, 0.000000e+00
  %6359 = fcmp fast olt float %6357, 0.000000e+00
  %6360 = zext i1 %6358 to i32
  %6361 = zext i1 %6359 to i32
  %6362 = sub nsw i32 %6360, %6361
  %6363 = sitofp i32 %6362 to float
  %6364 = fmul fast float %6363, %6357
  %6365 = fsub fast float 1.000000e+00, %6364
  %6366 = fmul fast float %6365, %6365
  %6367 = fmul fast float %6366, %6365
  %6368 = fsub fast float %6365, %6367
  %6369 = fmul fast float %6368, %6353
  %6370 = fsub fast float 1.000000e+00, %6367
  %6371 = fsub fast float %6370, %6369
  %6372 = fmul fast float %6363, 5.000000e-01
  %6373 = fmul fast float %6372, %6371
  %6374 = fsub fast float -5.000000e-01, %6373
  %6375 = fmul fast float %6374, %6208
  %6376 = fadd fast float %6375, 1.000000e+00
  %6377 = fmul fast float %6376, %6220
  br label %6378

; <label>:6378                                    ; preds = %6347, %6232
  %6379 = phi float [ %6377, %6347 ], [ %6220, %6232 ]
  %6380 = call float @dx.op.binary.f32(i32 36, float %6379, float %6379)  ; FMin(a,b)
  %6381 = call float @dx.op.binary.f32(i32 36, float %6379, float %6380)  ; FMin(a,b)
  %6382 = fcmp fast ogt float %6381, 0.000000e+00
  br i1 %6382, label %6383, label %6224, !dx.controlflow.hints !148

; <label>:6383                                    ; preds = %6378
  %6384 = fmul fast float %6379, %6141
  %6385 = fmul fast float %6379, %6142
  %6386 = fmul fast float %6379, %6143
  %6387 = fsub fast float %6125, %2135
  %6388 = fcmp fast ogt float %6387, 0.000000e+00
  %6389 = fsub fast float %149, %2135
  %6390 = fcmp fast ogt float %6389, 0.000000e+00
  %6391 = xor i1 %6390, %6388
  %6392 = fsub fast float %2135, %6125
  %6393 = fmul fast float %6392, 2.000000e+00
  %6394 = fadd fast float %6393, %6125
  %6395 = select i1 %6391, float %6125, float %6394
  %6396 = fsub fast float %6395, %149
  %6397 = call float @dx.op.dot3.f32(i32 55, float %6152, float %6153, float %6396, float %6152, float %6153, float %6396)  ; Dot3(ax,ay,az,bx,by,bz)
  %6398 = call float @dx.op.unary.f32(i32 25, float %6397)  ; Rsqrt(value)
  %6399 = fmul fast float %6398, %6152
  %6400 = fmul fast float %6398, %6153
  %6401 = fmul fast float %6398, %6396
  %6402 = fsub fast float %2135, %149
  %6403 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6402)  ; Dot3(ax,ay,az,bx,by,bz)
  %6404 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6399, float %6400, float %6401)  ; Dot3(ax,ay,az,bx,by,bz)
  %6405 = fdiv fast float 1.000000e+00, %6404
  %6406 = fmul fast float %6405, %6403
  %6407 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6389, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6408 = fcmp fast ogt float %6407, 0.000000e+00
  %6409 = fcmp fast olt float %6407, 0.000000e+00
  %6410 = zext i1 %6408 to i32
  %6411 = zext i1 %6409 to i32
  %6412 = sub nsw i32 %6410, %6411
  %6413 = sitofp i32 %6412 to float
  %6414 = fsub fast float %6395, %2135
  %6415 = call float @dx.op.dot3.f32(i32 55, float %6152, float %6153, float %6414, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6416 = fcmp fast ogt float %6415, 0.000000e+00
  %6417 = fcmp fast olt float %6415, 0.000000e+00
  %6418 = zext i1 %6416 to i32
  %6419 = zext i1 %6417 to i32
  %6420 = sub nsw i32 %6418, %6419
  %6421 = sitofp i32 %6420 to float
  %6422 = fcmp fast une float %6413, %6421
  br i1 %6422, label %6423, label %6433

; <label>:6423                                    ; preds = %6383
  %6424 = fmul fast float %6406, %6401
  %6425 = fmul fast float %6406, %6400
  %6426 = fmul fast float %6406, %6399
  %6427 = fmul fast float %6426, %6426
  %6428 = fmul fast float %6425, %6425
  %6429 = fadd fast float %6427, %6428
  %6430 = fmul fast float %6424, %6424
  %6431 = fadd fast float %6429, %6430
  %6432 = call float @dx.op.unary.f32(i32 24, float %6431)  ; Sqrt(value)
  br label %6445

; <label>:6433                                    ; preds = %6383
  %6434 = icmp slt i32 %6412, 0
  br i1 %6434, label %6435, label %6445

; <label>:6435                                    ; preds = %6433
  %6436 = fsub fast float %147, %6123
  %6437 = fsub fast float %148, %6124
  %6438 = fsub fast float %149, %6395
  %6439 = fmul fast float %6436, %6436
  %6440 = fmul fast float %6437, %6437
  %6441 = fadd fast float %6439, %6440
  %6442 = fmul fast float %6438, %6438
  %6443 = fadd fast float %6441, %6442
  %6444 = call float @dx.op.unary.f32(i32 24, float %6443)  ; Sqrt(value)
  br label %6445

; <label>:6445                                    ; preds = %6435, %6433, %6423
  %6446 = phi float [ %6432, %6423 ], [ %6444, %6435 ], [ 0.000000e+00, %6433 ]
  %6447 = and i1 %6390, %6388
  %6448 = fsub fast float -0.000000e+00, %6446
  %6449 = select i1 %6447, float -0.000000e+00, float %6448
  %6450 = fmul fast float %2136, 0x3FF7154760000000
  %6451 = fmul fast float %6450, %6449
  %6452 = fmul fast float %2137, 0x3FF7154760000000
  %6453 = fmul fast float %6452, %6449
  %6454 = fmul fast float %2138, 0x3FF7154760000000
  %6455 = fmul fast float %6454, %6449
  %6456 = call float @dx.op.unary.f32(i32 21, float %6451)  ; Exp(value)
  %6457 = call float @dx.op.unary.f32(i32 21, float %6453)  ; Exp(value)
  %6458 = call float @dx.op.unary.f32(i32 21, float %6455)  ; Exp(value)
  %6459 = call float @dx.op.unary.f32(i32 7, float %6456)  ; Saturate(value)
  %6460 = call float @dx.op.unary.f32(i32 7, float %6457)  ; Saturate(value)
  %6461 = call float @dx.op.unary.f32(i32 7, float %6458)  ; Saturate(value)
  %6462 = fmul fast float %6384, %6459
  %6463 = fmul fast float %6385, %6460
  %6464 = fmul fast float %6386, %6461
  %6465 = fsub fast float %6158, %2335
  %6466 = fsub fast float %6159, %2334
  %6467 = fsub fast float %6160, %2333
  %6468 = call float @dx.op.dot3.f32(i32 55, float %6465, float %6466, float %6467, float %6465, float %6466, float %6467)  ; Dot3(ax,ay,az,bx,by,bz)
  %6469 = call float @dx.op.unary.f32(i32 25, float %6468)  ; Rsqrt(value)
  %6470 = fmul fast float %6469, %6465
  %6471 = fmul fast float %6469, %6466
  %6472 = fmul fast float %6469, %6467
  %6473 = call float @dx.op.dot3.f32(i32 55, float %6158, float %6159, float %6160, float %2339, float %2340, float %2341)  ; Dot3(ax,ay,az,bx,by,bz)
  %6474 = call float @dx.op.dot3.f32(i32 55, float %2332, float %2331, float %2330, float %6470, float %6471, float %6472)  ; Dot3(ax,ay,az,bx,by,bz)
  %6475 = call float @dx.op.unary.f32(i32 7, float %6473)  ; Saturate(value)
  %6476 = fmul fast float %6475, %6165
  %6477 = fmul fast float %6475, %6475
  %6478 = fmul fast float %6477, %4316
  %6479 = call float @dx.op.unary.f32(i32 7, float %6478)  ; Saturate(value)
  %6480 = fmul fast float %6476, %6479
  %6481 = bitcast float %6155 to i32
  %6482 = ashr i32 %6481, 1
  %6483 = sub nsw i32 1597463007, %6482
  %6484 = bitcast i32 %6483 to float
  %6485 = fmul fast float %6484, %6152
  %6486 = fmul fast float %6484, %6153
  %6487 = fmul fast float %6484, %6154
  %6488 = fsub fast float %6485, %2335
  %6489 = fsub fast float %6486, %2334
  %6490 = fsub fast float %6487, %2333
  %6491 = call float @dx.op.dot3.f32(i32 55, float %6488, float %6489, float %6490, float %6488, float %6489, float %6490)  ; Dot3(ax,ay,az,bx,by,bz)
  %6492 = call float @dx.op.unary.f32(i32 25, float %6491)  ; Rsqrt(value)
  %6493 = fmul fast float %6488, %6492
  %6494 = fmul fast float %6489, %6492
  %6495 = fmul fast float %6490, %6492
  %6496 = call float @dx.op.dot3.f32(i32 55, float %2339, float %2340, float %2341, float %6493, float %6494, float %6495)  ; Dot3(ax,ay,az,bx,by,bz)
  %6497 = fmul fast float %6496, %6496
  %6498 = call float @dx.op.unary.f32(i32 6, float %6473)  ; FAbs(value)
  %6499 = fsub fast float 1.000000e+00, %2368
  %6500 = fmul fast float %2350, %2350
  %6501 = fmul fast float %6500, %6499
  %6502 = fadd fast float %6501, %2368
  %6503 = bitcast float %6502 to i32
  %6504 = ashr i32 %6503, 1
  %6505 = add nsw i32 %6504, 532487669
  %6506 = bitcast i32 %6505 to float
  %6507 = fadd fast float %6506, %2350
  %6508 = fmul fast float %2368, %6497
  %6509 = fsub fast float 1.000000e+00, %6497
  %6510 = fadd fast float %6509, %6508
  %6511 = fmul fast float %6498, %6498
  %6512 = fmul fast float %6511, %6499
  %6513 = fadd fast float %6512, %2368
  %6514 = bitcast float %6513 to i32
  %6515 = ashr i32 %6514, 1
  %6516 = add nsw i32 %6515, 532487669
  %6517 = bitcast i32 %6516 to float
  %6518 = fadd fast float %6517, %6498
  %6519 = fmul fast float %6510, %6510
  %6520 = fmul fast float %6519, %6507
  %6521 = fmul fast float %6520, %6518
  %6522 = fdiv fast float 1.000000e+00, %6521
  %6523 = bitcast float %2368 to i32
  %6524 = sitofp i32 %6523 to float
  %6525 = fmul fast float %6524, 0x3FE7F73180000000
  %6526 = fadd fast float %6525, 0x41AFE27C40000000
  %6527 = fptosi float %6526 to i32
  %6528 = bitcast i32 %6527 to float
  %6529 = fmul fast float %6120, 0x3FD80E9D60000000
  %6530 = fmul fast float %6529, %6484
  %6531 = fadd fast float %6528, %6530
  %6532 = bitcast float %6531 to i32
  %6533 = sub nsw i32 2129859010, %6532
  %6534 = bitcast i32 %6533 to float
  %6535 = fmul fast float %2368, %6522
  %6536 = fmul fast float %6535, %6528
  %6537 = fmul fast float %6536, %6534
  %6538 = fmul fast float %3659, 0x3FF9999980000000
  %6539 = fsub fast float 5.000000e+00, %6538
  %6540 = call float @dx.op.unary.f32(i32 6, float %6474)  ; FAbs(value)
  %6541 = fsub fast float 1.000000e+00, %6540
  %6542 = fmul fast float %3659, 0x41D9660740000000
  %6543 = fadd fast float %6542, 0xC1EFBF8940000000
  %6544 = bitcast float %6541 to i32
  %6545 = sitofp i32 %6544 to float
  %6546 = fmul fast float %6545, %6539
  %6547 = fadd fast float %6543, %6546
  %6548 = fptosi float %6547 to i32
  %6549 = bitcast i32 %6548 to float
  %6550 = fsub fast float 1.000000e+00, %2342
  %6551 = fsub fast float 1.000000e+00, %2343
  %6552 = fsub fast float 1.000000e+00, %2348
  %6553 = fmul fast float %6549, %6550
  %6554 = fmul fast float %6549, %6551
  %6555 = fmul fast float %6549, %6552
  %6556 = fadd fast float %6553, %2342
  %6557 = fadd fast float %6554, %2343
  %6558 = fadd fast float %6555, %2348
  br i1 %3682, label %6559, label %6582

; <label>:6559                                    ; preds = %6445
  %6560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1681, float %6540, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6561 = extractvalue %dx.types.ResRet.f32 %6560, 0
  %6562 = extractvalue %dx.types.ResRet.f32 %6560, 1
  %6563 = extractvalue %dx.types.ResRet.f32 %6560, 2
  %6564 = fadd fast float %6561, -5.000000e-01
  %6565 = fadd fast float %6562, -5.000000e-01
  %6566 = fadd fast float %6563, -5.000000e-01
  %6567 = fmul fast float %2342, 4.000000e+00
  %6568 = fmul fast float %6567, %6550
  %6569 = fmul fast float %6568, %6564
  %6570 = fmul fast float %2343, 4.000000e+00
  %6571 = fmul fast float %6570, %6551
  %6572 = fmul fast float %6571, %6565
  %6573 = fmul fast float %2348, 4.000000e+00
  %6574 = fmul fast float %6573, %6552
  %6575 = fmul fast float %6574, %6566
  %6576 = fadd fast float %6569, %6556
  %6577 = fadd fast float %6572, %6557
  %6578 = fadd fast float %6575, %6558
  %6579 = call float @dx.op.unary.f32(i32 7, float %6576)  ; Saturate(value)
  %6580 = call float @dx.op.unary.f32(i32 7, float %6577)  ; Saturate(value)
  %6581 = call float @dx.op.unary.f32(i32 7, float %6578)  ; Saturate(value)
  br label %6582

; <label>:6582                                    ; preds = %6559, %6445
  %6583 = phi float [ %6579, %6559 ], [ %6556, %6445 ]
  %6584 = phi float [ %6580, %6559 ], [ %6557, %6445 ]
  %6585 = phi float [ %6581, %6559 ], [ %6558, %6445 ]
  %6586 = fmul fast float %6473, 9.843750e-01
  %6587 = fadd fast float %6586, 7.812500e-03
  %6588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %6587, float %3663, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6589 = extractvalue %dx.types.ResRet.f32 %6588, 0
  %6590 = extractvalue %dx.types.ResRet.f32 %6588, 1
  %6591 = extractvalue %dx.types.ResRet.f32 %6588, 2
  %6592 = extractvalue %dx.types.ResRet.f32 %6588, 3
  %6593 = fsub fast float %6591, %6589
  %6594 = fsub fast float %6592, %6590
  %6595 = fmul fast float %6593, %3669
  %6596 = fmul fast float %6594, %3669
  %6597 = fadd fast float %6595, %6589
  %6598 = fadd fast float %6596, %6590
  %6599 = fmul fast float %6597, %2342
  %6600 = fmul fast float %6597, %2343
  %6601 = fmul fast float %6597, %2348
  %6602 = fadd fast float %6599, %6598
  %6603 = fadd fast float %6600, %6598
  %6604 = fadd fast float %6601, %6598
  br i1 %3682, label %6605, label %6628

; <label>:6605                                    ; preds = %6582
  %6606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1681, float %6473, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6607 = extractvalue %dx.types.ResRet.f32 %6606, 0
  %6608 = extractvalue %dx.types.ResRet.f32 %6606, 1
  %6609 = extractvalue %dx.types.ResRet.f32 %6606, 2
  %6610 = fadd fast float %6607, -5.000000e-01
  %6611 = fadd fast float %6608, -5.000000e-01
  %6612 = fadd fast float %6609, -5.000000e-01
  %6613 = fmul fast float %2342, 4.000000e+00
  %6614 = fmul fast float %6613, %6550
  %6615 = fmul fast float %6614, %6610
  %6616 = fmul fast float %2343, 4.000000e+00
  %6617 = fmul fast float %6616, %6551
  %6618 = fmul fast float %6617, %6611
  %6619 = fmul fast float %2348, 4.000000e+00
  %6620 = fmul fast float %6619, %6552
  %6621 = fmul fast float %6620, %6612
  %6622 = fadd fast float %6615, %6602
  %6623 = fadd fast float %6618, %6603
  %6624 = fadd fast float %6621, %6604
  %6625 = call float @dx.op.unary.f32(i32 7, float %6622)  ; Saturate(value)
  %6626 = call float @dx.op.unary.f32(i32 7, float %6623)  ; Saturate(value)
  %6627 = call float @dx.op.unary.f32(i32 7, float %6624)  ; Saturate(value)
  br label %6628

; <label>:6628                                    ; preds = %6605, %6582
  %6629 = phi float [ %6625, %6605 ], [ %6602, %6582 ]
  %6630 = phi float [ %6626, %6605 ], [ %6603, %6582 ]
  %6631 = phi float [ %6627, %6605 ], [ %6604, %6582 ]
  %6632 = call float @dx.op.binary.f32(i32 35, float %6630, float %6631)  ; FMax(a,b)
  %6633 = call float @dx.op.binary.f32(i32 35, float %6629, float %6632)  ; FMax(a,b)
  %6634 = fsub fast float 1.000000e+00, %6633
  %6635 = call float @dx.op.binary.f32(i32 35, float %6498, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6636 = fdiv fast float %1087, %6635
  %6637 = fmul fast float %4229, %6636
  %6638 = fmul fast float %4231, %6636
  %6639 = fmul fast float %4233, %6636
  %6640 = call float @dx.op.unary.f32(i32 21, float %6637)  ; Exp(value)
  %6641 = call float @dx.op.unary.f32(i32 21, float %6638)  ; Exp(value)
  %6642 = call float @dx.op.unary.f32(i32 21, float %6639)  ; Exp(value)
  %6643 = call float @dx.op.unary.f32(i32 7, float %6640)  ; Saturate(value)
  %6644 = call float @dx.op.unary.f32(i32 7, float %6641)  ; Saturate(value)
  %6645 = call float @dx.op.unary.f32(i32 7, float %6642)  ; Saturate(value)
  %6646 = select i1 %4226, float %6643, float 0.000000e+00
  %6647 = select i1 %4227, float %6644, float 0.000000e+00
  %6648 = select i1 %4228, float %6645, float 0.000000e+00
  %6649 = fsub fast float -0.000000e+00, %2339
  %6650 = fsub fast float -0.000000e+00, %2340
  %6651 = fsub fast float -0.000000e+00, %2341
  %6652 = call float @dx.op.dot3.f32(i32 55, float %6158, float %6159, float %6160, float %6649, float %6650, float %6651)  ; Dot3(ax,ay,az,bx,by,bz)
  %6653 = call float @dx.op.unary.f32(i32 7, float %6652)  ; Saturate(value)
  %6654 = fmul fast float %6653, %6165
  %6655 = fmul fast float %6653, 9.843750e-01
  %6656 = fadd fast float %6655, 7.812500e-03
  %6657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %6656, float %3663, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6658 = extractvalue %dx.types.ResRet.f32 %6657, 0
  %6659 = extractvalue %dx.types.ResRet.f32 %6657, 1
  %6660 = extractvalue %dx.types.ResRet.f32 %6657, 2
  %6661 = extractvalue %dx.types.ResRet.f32 %6657, 3
  %6662 = fsub fast float %6660, %6658
  %6663 = fsub fast float %6661, %6659
  %6664 = fmul fast float %6662, %3669
  %6665 = fmul fast float %6663, %3669
  %6666 = fadd fast float %6664, %6658
  %6667 = fadd fast float %6665, %6659
  %6668 = fmul fast float %6666, %2342
  %6669 = fmul fast float %6666, %2343
  %6670 = fmul fast float %6666, %2348
  %6671 = fadd fast float %6668, %6667
  %6672 = fadd fast float %6669, %6667
  %6673 = fadd fast float %6670, %6667
  br i1 %3682, label %6674, label %6697

; <label>:6674                                    ; preds = %6628
  %6675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1681, float %6653, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6676 = extractvalue %dx.types.ResRet.f32 %6675, 0
  %6677 = extractvalue %dx.types.ResRet.f32 %6675, 1
  %6678 = extractvalue %dx.types.ResRet.f32 %6675, 2
  %6679 = fadd fast float %6676, -5.000000e-01
  %6680 = fadd fast float %6677, -5.000000e-01
  %6681 = fadd fast float %6678, -5.000000e-01
  %6682 = fmul fast float %2342, 4.000000e+00
  %6683 = fmul fast float %6682, %6550
  %6684 = fmul fast float %6683, %6679
  %6685 = fmul fast float %2343, 4.000000e+00
  %6686 = fmul fast float %6685, %6551
  %6687 = fmul fast float %6686, %6680
  %6688 = fmul fast float %2348, 4.000000e+00
  %6689 = fmul fast float %6688, %6552
  %6690 = fmul fast float %6689, %6681
  %6691 = fadd fast float %6684, %6671
  %6692 = fadd fast float %6687, %6672
  %6693 = fadd fast float %6690, %6673
  %6694 = call float @dx.op.unary.f32(i32 7, float %6691)  ; Saturate(value)
  %6695 = call float @dx.op.unary.f32(i32 7, float %6692)  ; Saturate(value)
  %6696 = call float @dx.op.unary.f32(i32 7, float %6693)  ; Saturate(value)
  br label %6697

; <label>:6697                                    ; preds = %6674, %6628
  %6698 = phi float [ %6694, %6674 ], [ %6671, %6628 ]
  %6699 = phi float [ %6695, %6674 ], [ %6672, %6628 ]
  %6700 = phi float [ %6696, %6674 ], [ %6673, %6628 ]
  %6701 = call float @dx.op.binary.f32(i32 35, float %6699, float %6700)  ; FMax(a,b)
  %6702 = call float @dx.op.binary.f32(i32 35, float %6698, float %6701)  ; FMax(a,b)
  %6703 = fsub fast float 1.000000e+00, %6702
  %6704 = fmul fast float %2365, %4293
  %6705 = fadd fast float %4295, %6704
  %6706 = call float @dx.op.unary.f32(i32 7, float %6705)  ; Saturate(value)
  %6707 = fsub fast float %6485, %2356
  %6708 = fsub fast float %6486, %2357
  %6709 = fsub fast float %6487, %2358
  %6710 = call float @dx.op.dot3.f32(i32 55, float %6707, float %6708, float %6709, float %6707, float %6708, float %6709)  ; Dot3(ax,ay,az,bx,by,bz)
  %6711 = call float @dx.op.unary.f32(i32 25, float %6710)  ; Rsqrt(value)
  %6712 = fmul fast float %6707, %6711
  %6713 = fmul fast float %6708, %6711
  %6714 = fmul fast float %6709, %6711
  %6715 = call float @dx.op.dot3.f32(i32 55, float %6649, float %6650, float %6651, float %6712, float %6713, float %6714)  ; Dot3(ax,ay,az,bx,by,bz)
  %6716 = fmul fast float %6715, %6715
  %6717 = call float @dx.op.unary.f32(i32 6, float %6653)  ; FAbs(value)
  %6718 = call float @dx.op.binary.f32(i32 35, float %6706, float 0x3F847AE140000000)  ; FMax(a,b)
  %6719 = fmul fast float %6718, %6718
  %6720 = fmul fast float %6719, %6719
  %6721 = fsub fast float 1.000000e+00, %6720
  %6722 = fmul fast float %6500, %6721
  %6723 = fadd fast float %6722, %6720
  %6724 = bitcast float %6723 to i32
  %6725 = ashr i32 %6724, 1
  %6726 = add nsw i32 %6725, 532487669
  %6727 = bitcast i32 %6726 to float
  %6728 = fadd fast float %6727, %2350
  %6729 = fmul fast float %6720, %6716
  %6730 = fsub fast float 1.000000e+00, %6716
  %6731 = fadd fast float %6730, %6729
  %6732 = fmul fast float %6717, %6717
  %6733 = fmul fast float %6732, %6721
  %6734 = fadd fast float %6733, %6720
  %6735 = bitcast float %6734 to i32
  %6736 = ashr i32 %6735, 1
  %6737 = add nsw i32 %6736, 532487669
  %6738 = bitcast i32 %6737 to float
  %6739 = fadd fast float %6738, %6717
  %6740 = fmul fast float %6731, %6731
  %6741 = fmul fast float %6740, %6728
  %6742 = fmul fast float %6741, %6739
  %6743 = fdiv fast float 1.000000e+00, %6742
  %6744 = bitcast float %6720 to i32
  %6745 = sitofp i32 %6744 to float
  %6746 = fmul fast float %6745, 0x3FE7F73180000000
  %6747 = fadd fast float %6746, 0x41AFE27C40000000
  %6748 = fptosi float %6747 to i32
  %6749 = bitcast i32 %6748 to float
  %6750 = fadd fast float %6749, %6530
  %6751 = bitcast float %6750 to i32
  %6752 = sub nsw i32 2129859010, %6751
  %6753 = bitcast i32 %6752 to float
  %6754 = fmul fast float %6720, %6743
  %6755 = fmul fast float %6754, %6749
  %6756 = fmul fast float %6755, %6753
  br i1 %6150, label %6757, label %6767

; <label>:6757                                    ; preds = %6697
  %6758 = fmul fast float %6654, %6646
  %6759 = fmul fast float %6654, %6647
  %6760 = fmul fast float %6654, %6648
  %6761 = fmul fast float %6758, %6703
  %6762 = fmul fast float %6761, %6756
  %6763 = fmul fast float %6759, %6703
  %6764 = fmul fast float %6763, %6756
  %6765 = fmul fast float %6760, %6703
  %6766 = fmul fast float %6765, %6756
  br label %6767

; <label>:6767                                    ; preds = %6757, %6697
  %6768 = phi float [ %6762, %6757 ], [ 0.000000e+00, %6697 ]
  %6769 = phi float [ %6764, %6757 ], [ 0.000000e+00, %6697 ]
  %6770 = phi float [ %6766, %6757 ], [ 0.000000e+00, %6697 ]
  %6771 = fmul fast float %6583, %6537
  %6772 = fmul fast float %6584, %6537
  %6773 = fmul fast float %6585, %6537
  %6774 = fsub fast float 1.000000e+00, %6474
  %6775 = bitcast float %6774 to i32
  %6776 = sitofp i32 %6775 to float
  %6777 = fmul fast float %6776, 5.000000e+00
  %6778 = fadd fast float %6777, 0xC1EFBF8940000000
  %6779 = fptosi float %6778 to i32
  %6780 = bitcast i32 %6779 to float
  %6781 = fmul fast float %6780, %1680
  %6782 = fmul fast float %6634, %6781
  %6783 = fmul fast float %6782, %4221
  %6784 = fmul fast float %6782, %4222
  %6785 = fmul fast float %6782, %4223
  %6786 = fadd fast float %6783, %6771
  %6787 = fadd fast float %6784, %6772
  %6788 = fadd fast float %6785, %6773
  %6789 = fmul fast float %6786, %6480
  %6790 = fmul fast float %6787, %6480
  %6791 = fmul fast float %6788, %6480
  %6792 = fadd fast float %6789, %6768
  %6793 = fadd fast float %6790, %6769
  %6794 = fadd fast float %6791, %6770
  %6795 = fmul fast float %6462, %1704
  %6796 = fmul fast float %6795, %6480
  %6797 = fmul fast float %6796, %6634
  %6798 = fmul fast float %6463, %1704
  %6799 = fmul fast float %6798, %6480
  %6800 = fmul fast float %6799, %6634
  %6801 = fmul fast float %6464, %1704
  %6802 = fmul fast float %6801, %6480
  %6803 = fmul fast float %6802, %6634
  %6804 = fadd fast float %6797, %6094
  %6805 = fadd fast float %6800, %6095
  %6806 = fadd fast float %6803, %6096
  %6807 = fmul fast float %6795, %6792
  %6808 = fmul fast float %6798, %6793
  %6809 = fmul fast float %6801, %6794
  %6810 = fadd fast float %6807, %6091
  %6811 = fadd fast float %6808, %6092
  %6812 = fadd fast float %6809, %6093
  br label %6224

; <label>:6813                                    ; preds = %6224
  br label %6814

; <label>:6814                                    ; preds = %6813, %6057
  %6815 = phi float [ %6059, %6057 ], [ %6225, %6813 ]
  %6816 = phi float [ %6060, %6057 ], [ %6226, %6813 ]
  %6817 = phi float [ %6061, %6057 ], [ %6227, %6813 ]
  %6818 = phi float [ %6062, %6057 ], [ %6228, %6813 ]
  %6819 = phi float [ %6063, %6057 ], [ %6229, %6813 ]
  %6820 = phi float [ %6064, %6057 ], [ %6230, %6813 ]
  %6821 = add i32 %6058, 1
  %6822 = icmp ugt i32 %6821, %6054
  br i1 %6822, label %6823, label %6057

; <label>:6823                                    ; preds = %6814
  br label %6824

; <label>:6824                                    ; preds = %6823, %6007, %5997
  %6825 = phi float [ %5998, %5997 ], [ %5998, %6007 ], [ %6815, %6823 ]
  %6826 = phi float [ %5999, %5997 ], [ %5999, %6007 ], [ %6816, %6823 ]
  %6827 = phi float [ %6000, %5997 ], [ %6000, %6007 ], [ %6817, %6823 ]
  %6828 = phi float [ %6001, %5997 ], [ %6001, %6007 ], [ %6818, %6823 ]
  %6829 = phi float [ %6002, %5997 ], [ %6002, %6007 ], [ %6819, %6823 ]
  %6830 = phi float [ %6003, %5997 ], [ %6003, %6007 ], [ %6820, %6823 ]
  %6831 = fmul fast float %1704, %4250
  %6832 = fsub fast float -0.000000e+00, %6831
  %6833 = fmul fast float %1704, %4251
  %6834 = fsub fast float -0.000000e+00, %6833
  %6835 = fmul fast float %1704, %4252
  %6836 = fsub fast float -0.000000e+00, %6835
  %6837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6838 = extractvalue %dx.types.CBufRet.f32 %6837, 0
  %6839 = fmul fast float %6838, %4256
  %6840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6841 = extractvalue %dx.types.CBufRet.f32 %6840, 3
  %6842 = fsub fast float 1.000000e+00, %1676
  %6843 = call float @dx.op.unary.f32(i32 7, float %6842)  ; Saturate(value)
  %6844 = fadd fast float %6830, %1675
  %6845 = fmul fast float %6844, %1676
  %6846 = fmul fast float %6843, %6841
  %6847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6848 = extractvalue %dx.types.CBufRet.f32 %6847, 3
  %6849 = fmul fast float %6828, %2336
  %6850 = fmul fast float %6829, %2337
  %6851 = fmul fast float %6830, %2338
  %6852 = fcmp fast ogt float %88, %198
  %6853 = and i1 %6852, %2141
  %6854 = or i1 %2147, %6853
  %6855 = icmp eq i32 %2140, 2
  %6856 = fcmp fast ole float %88, %198
  %6857 = and i1 %6856, %6855
  %6858 = or i1 %6857, %6854
  br i1 %6853, label %6859, label %7118

; <label>:6859                                    ; preds = %6824
  %6860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6861 = extractvalue %dx.types.CBufRet.f32 %6860, 2
  %6862 = extractvalue %dx.types.CBufRet.f32 %6860, 3
  %6863 = fmul fast float %6861, %100
  %6864 = fmul fast float %6862, %101
  %6865 = call float @dx.op.unary.f32(i32 7, float %6863)  ; Saturate(value)
  %6866 = call float @dx.op.unary.f32(i32 7, float %6864)  ; Saturate(value)
  %6867 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6865, float %6866, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6868 = extractvalue %dx.types.ResRet.f32 %6867, 0
  %6869 = extractvalue %dx.types.ResRet.f32 %6867, 1
  %6870 = extractvalue %dx.types.ResRet.f32 %6867, 2
  %6871 = extractvalue %dx.types.ResRet.f32 %6867, 3
  %6872 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6865, float %6866, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6873 = extractvalue %dx.types.ResRet.f32 %6872, 0
  %6874 = extractvalue %dx.types.ResRet.f32 %6872, 1
  %6875 = extractvalue %dx.types.ResRet.f32 %6872, 2
  %6876 = extractvalue %dx.types.ResRet.f32 %6872, 3
  %6877 = call float @dx.op.binary.f32(i32 35, float %6869, float %6870)  ; FMax(a,b)
  %6878 = call float @dx.op.binary.f32(i32 35, float %6868, float %6877)  ; FMax(a,b)
  %6879 = call float @dx.op.binary.f32(i32 35, float %6878, float %6871)  ; FMax(a,b)
  %6880 = call float @dx.op.binary.f32(i32 36, float %6874, float %6875)  ; FMin(a,b)
  %6881 = call float @dx.op.binary.f32(i32 36, float %6873, float %6880)  ; FMin(a,b)
  %6882 = call float @dx.op.binary.f32(i32 36, float %6881, float %6876)  ; FMin(a,b)
  %6883 = fmul fast float %6879, 2.550000e+02
  %6884 = fadd fast float %6883, 0x3F70101020000000
  %6885 = fptoui float %6884 to i32
  %6886 = fmul fast float %6882, 2.550000e+02
  %6887 = fadd fast float %6886, 0x3F70101020000000
  %6888 = fptoui float %6887 to i32
  %6889 = icmp ult i32 %6885, %6888
  br i1 %6889, label %6890, label %7058

; <label>:6890                                    ; preds = %6859
  %6891 = fcmp fast ogt float %87, 9.843750e-01
  %6892 = fadd fast float %88, -4.000000e+00
  %6893 = select i1 %6891, float -4.000000e+00, float %6892
  %6894 = call float @dx.op.binary.f32(i32 35, float %6893, float 0.000000e+00)  ; FMax(a,b)
  %6895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6896 = extractvalue %dx.types.CBufRet.f32 %6895, 0
  %6897 = fadd fast float %6896, %6894
  %6898 = extractvalue %dx.types.CBufRet.f32 %6895, 2
  %6899 = fmul fast float %6897, %6898
  %6900 = call float @dx.op.unary.f32(i32 23, float %6899)  ; Log(value)
  %6901 = extractvalue %dx.types.CBufRet.f32 %6895, 3
  %6902 = fmul fast float %6901, %6900
  %6903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6904 = extractvalue %dx.types.CBufRet.f32 %6903, 2
  %6905 = fmul fast float %6902, %6904
  %6906 = call float @dx.op.unary.f32(i32 7, float %6905)  ; Saturate(value)
  %6907 = uitofp i32 %6885 to float
  %6908 = uitofp i32 %6888 to float
  %6909 = fadd fast float %6907, 5.000000e-01
  %6910 = fadd fast float %6908, 5.000000e-01
  %6911 = fmul fast float %6904, %6909
  %6912 = fmul fast float %6904, %6910
  %6913 = fadd fast float %6911, 0x3F0FFB4800000000
  %6914 = fadd fast float %6912, 0xBF0FFB4800000000
  %6915 = call float @dx.op.binary.f32(i32 35, float %6906, float %6913)  ; FMax(a,b)
  %6916 = call float @dx.op.binary.f32(i32 36, float %6915, float %6914)  ; FMin(a,b)
  %6917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6918 = extractvalue %dx.types.CBufRet.f32 %6917, 1
  %6919 = extractvalue %dx.types.CBufRet.f32 %6917, 2
  %6920 = extractvalue %dx.types.CBufRet.f32 %6917, 0
  %6921 = fmul fast float %6918, %6916
  %6922 = fadd fast float %6920, %6921
  %6923 = fadd fast float %6920, %6919
  %6924 = fsub fast float %6918, %6919
  %6925 = fadd fast float %6924, %6920
  %6926 = call float @dx.op.binary.f32(i32 35, float %6922, float %6923)  ; FMax(a,b)
  %6927 = call float @dx.op.binary.f32(i32 36, float %6926, float %6925)  ; FMin(a,b)
  %6928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %6865, float %6866, float %6927, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6929 = extractvalue %dx.types.ResRet.f32 %6928, 0
  %6930 = extractvalue %dx.types.ResRet.f32 %6928, 1
  %6931 = extractvalue %dx.types.ResRet.f32 %6928, 2
  %6932 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6933 = extractvalue %dx.types.CBufRet.i32 %6932, 0
  %6934 = extractvalue %dx.types.CBufRet.i32 %6932, 1
  %6935 = uitofp i32 %6933 to float
  %6936 = uitofp i32 %6934 to float
  %6937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6938 = extractvalue %dx.types.CBufRet.f32 %6937, 0
  %6939 = extractvalue %dx.types.CBufRet.f32 %6937, 1
  %6940 = fmul fast float %6935, %6865
  %6941 = fmul fast float %6936, %6866
  %6942 = fadd fast float %6940, -5.000000e-01
  %6943 = fadd fast float %6941, -5.000000e-01
  %6944 = call float @dx.op.unary.f32(i32 22, float %6942)  ; Frc(value)
  %6945 = call float @dx.op.unary.f32(i32 22, float %6943)  ; Frc(value)
  %6946 = fmul fast float %6944, %6944
  %6947 = fmul fast float %6946, %6944
  %6948 = fsub fast float 3.000000e+00, %6944
  %6949 = fmul fast float %6946, %6948
  %6950 = fmul fast float %6944, 3.000000e+00
  %6951 = fmul fast float %6947, 3.000000e+00
  %6952 = fmul fast float %6946, 6.000000e+00
  %6953 = fsub fast float %6951, %6952
  %6954 = fadd fast float %6953, 4.000000e+00
  %6955 = fmul fast float %6954, 0x3FC5555560000000
  %6956 = fmul fast float %6947, -3.000000e+00
  %6957 = fadd fast float %6946, %6944
  %6958 = fmul fast float %6957, 3.000000e+00
  %6959 = fadd fast float %6956, 1.000000e+00
  %6960 = fadd fast float %6959, %6958
  %6961 = fmul fast float %6947, 0x3FC5555560000000
  %6962 = fmul fast float %6945, %6945
  %6963 = fmul fast float %6962, %6945
  %6964 = fsub fast float 3.000000e+00, %6945
  %6965 = fmul fast float %6962, %6964
  %6966 = fmul fast float %6945, 3.000000e+00
  %6967 = fmul fast float %6963, 3.000000e+00
  %6968 = fmul fast float %6962, 6.000000e+00
  %6969 = fsub fast float %6967, %6968
  %6970 = fadd fast float %6969, 4.000000e+00
  %6971 = fmul fast float %6970, 0x3FC5555560000000
  %6972 = fmul fast float %6963, -3.000000e+00
  %6973 = fadd fast float %6962, %6945
  %6974 = fmul fast float %6973, 3.000000e+00
  %6975 = fadd fast float %6972, 1.000000e+00
  %6976 = fadd fast float %6975, %6974
  %6977 = fmul fast float %6963, 0x3FC5555560000000
  %6978 = fadd fast float %6944, 1.000000e+00
  %6979 = fsub fast float 1.000000e+00, %6950
  %6980 = fadd fast float %6979, %6949
  %6981 = fadd fast float %6980, %6954
  %6982 = fmul fast float %6981, 0x3FC5555560000000
  %6983 = fdiv fast float %6955, %6982
  %6984 = fsub fast float %6978, %6983
  %6985 = fsub fast float 1.000000e+00, %6944
  %6986 = fadd fast float %6960, %6947
  %6987 = fmul fast float %6986, 0x3FC5555560000000
  %6988 = fdiv fast float %6961, %6987
  %6989 = fadd fast float %6985, %6988
  %6990 = fadd fast float %6945, 1.000000e+00
  %6991 = fsub fast float 1.000000e+00, %6966
  %6992 = fadd fast float %6991, %6965
  %6993 = fadd fast float %6992, %6970
  %6994 = fmul fast float %6993, 0x3FC5555560000000
  %6995 = fdiv fast float %6971, %6994
  %6996 = fsub fast float %6990, %6995
  %6997 = fsub fast float 1.000000e+00, %6945
  %6998 = fadd fast float %6976, %6963
  %6999 = fmul fast float %6998, 0x3FC5555560000000
  %7000 = fdiv fast float %6977, %6999
  %7001 = fadd fast float %7000, %6997
  %7002 = fmul fast float %6984, %6938
  %7003 = fsub fast float %6865, %7002
  %7004 = fmul fast float %6989, %6938
  %7005 = fadd fast float %7004, %6865
  %7006 = fmul fast float %7001, %6939
  %7007 = fadd fast float %7006, %6866
  %7008 = fmul fast float %6996, %6939
  %7009 = fsub fast float %6866, %7008
  %7010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7003, float %7009, float %6927, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7011 = extractvalue %dx.types.ResRet.f32 %7010, 0
  %7012 = extractvalue %dx.types.ResRet.f32 %7010, 1
  %7013 = extractvalue %dx.types.ResRet.f32 %7010, 2
  %7014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7005, float %7009, float %6927, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7015 = extractvalue %dx.types.ResRet.f32 %7014, 0
  %7016 = extractvalue %dx.types.ResRet.f32 %7014, 1
  %7017 = extractvalue %dx.types.ResRet.f32 %7014, 2
  %7018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7003, float %7007, float %6927, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7019 = extractvalue %dx.types.ResRet.f32 %7018, 0
  %7020 = extractvalue %dx.types.ResRet.f32 %7018, 1
  %7021 = extractvalue %dx.types.ResRet.f32 %7018, 2
  %7022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7005, float %7007, float %6927, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7023 = extractvalue %dx.types.ResRet.f32 %7022, 0
  %7024 = extractvalue %dx.types.ResRet.f32 %7022, 1
  %7025 = extractvalue %dx.types.ResRet.f32 %7022, 2
  %7026 = fsub fast float %7019, %7011
  %7027 = fsub fast float %7020, %7012
  %7028 = fsub fast float %7021, %7013
  %7029 = fmul fast float %7026, %6999
  %7030 = fmul fast float %7027, %6999
  %7031 = fmul fast float %7028, %6999
  %7032 = fadd fast float %7029, %7011
  %7033 = fadd fast float %7030, %7012
  %7034 = fadd fast float %7031, %7013
  %7035 = fsub fast float %7023, %7015
  %7036 = fsub fast float %7024, %7016
  %7037 = fsub fast float %7025, %7017
  %7038 = fmul fast float %7035, %6999
  %7039 = fmul fast float %7036, %6999
  %7040 = fmul fast float %7037, %6999
  %7041 = fsub fast float %7015, %7032
  %7042 = fadd fast float %7041, %7038
  %7043 = fsub fast float %7016, %7033
  %7044 = fadd fast float %7043, %7039
  %7045 = fsub fast float %7017, %7034
  %7046 = fadd fast float %7045, %7040
  %7047 = fmul fast float %7042, %6987
  %7048 = fmul fast float %7044, %6987
  %7049 = fmul fast float %7046, %6987
  %7050 = fadd fast float %7047, %7032
  %7051 = fadd fast float %7048, %7033
  %7052 = fadd fast float %7049, %7034
  %7053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7054 = extractvalue %dx.types.CBufRet.f32 %7053, 1
  %7055 = fmul fast float %7050, %7054
  %7056 = fmul fast float %7051, %7054
  %7057 = fmul fast float %7052, %7054
  br label %7058

; <label>:7058                                    ; preds = %6890, %6859
  %7059 = phi float [ %6929, %6890 ], [ 1.000000e+00, %6859 ]
  %7060 = phi float [ %6930, %6890 ], [ 1.000000e+00, %6859 ]
  %7061 = phi float [ %6931, %6890 ], [ 1.000000e+00, %6859 ]
  %7062 = phi float [ %7055, %6890 ], [ 0.000000e+00, %6859 ]
  %7063 = phi float [ %7056, %6890 ], [ 0.000000e+00, %6859 ]
  %7064 = phi float [ %7057, %6890 ], [ 0.000000e+00, %6859 ]
  %7065 = fmul fast float %7062, %6832
  %7066 = fmul fast float %7063, %6834
  %7067 = fmul fast float %7064, %6836
  %7068 = call float @dx.op.dot3.f32(i32 55, float %7059, float %7060, float %7061, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7069 = call float @dx.op.dot3.f32(i32 55, float %7065, float %7066, float %7067, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7070 = select i1 %238, float %7068, float %7059
  %7071 = select i1 %238, float %7068, float %7060
  %7072 = select i1 %238, float 1.000000e+00, float %7061
  %7073 = select i1 %238, float %7069, float %7065
  %7074 = select i1 %238, float 0.000000e+00, float %7066
  %7075 = select i1 %238, float 0.000000e+00, float %7067
  %7076 = fmul fast float %7070, %6849
  %7077 = fmul fast float %7071, %6850
  %7078 = fmul fast float %7072, %6851
  %7079 = fadd fast float %7076, %7073
  %7080 = fadd fast float %7077, %7074
  %7081 = fadd fast float %7075, %7078
  %7082 = fmul fast float %7070, %6825
  %7083 = fmul fast float %7071, %6826
  %7084 = fmul fast float %7072, %6827
  %7085 = fmul fast float %100, 2.000000e+00
  %7086 = fmul fast float %7085, %6861
  %7087 = fmul fast float %101, 2.000000e+00
  %7088 = fmul fast float %7087, %6862
  %7089 = fsub fast float 1.000000e+00, %7086
  %7090 = fsub fast float 1.000000e+00, %7088
  %7091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7092 = extractvalue %dx.types.CBufRet.f32 %7091, 0
  %7093 = extractvalue %dx.types.CBufRet.f32 %7091, 1
  %7094 = extractvalue %dx.types.CBufRet.f32 %7091, 2
  %7095 = fmul fast float %7089, %7092
  %7096 = fmul fast float %7089, %7093
  %7097 = fmul fast float %7089, %7094
  %7098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7099 = extractvalue %dx.types.CBufRet.f32 %7098, 0
  %7100 = extractvalue %dx.types.CBufRet.f32 %7098, 1
  %7101 = extractvalue %dx.types.CBufRet.f32 %7098, 2
  %7102 = fmul fast float %7090, %7099
  %7103 = fmul fast float %7090, %7100
  %7104 = fmul fast float %7090, %7101
  %7105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7106 = extractvalue %dx.types.CBufRet.f32 %7105, 0
  %7107 = extractvalue %dx.types.CBufRet.f32 %7105, 1
  %7108 = extractvalue %dx.types.CBufRet.f32 %7105, 2
  %7109 = fadd fast float %7102, %7106
  %7110 = fadd fast float %7109, %7095
  %7111 = fadd fast float %7103, %7107
  %7112 = fadd fast float %7111, %7096
  %7113 = fadd fast float %7104, %7108
  %7114 = fadd fast float %7113, %7097
  %7115 = fmul fast float %7110, %198
  %7116 = fmul fast float %7112, %198
  %7117 = fmul fast float %7114, %198
  br label %7118

; <label>:7118                                    ; preds = %7058, %6824
  %7119 = phi float [ %7115, %7058 ], [ %147, %6824 ]
  %7120 = phi float [ %7116, %7058 ], [ %148, %6824 ]
  %7121 = phi float [ %7117, %7058 ], [ %149, %6824 ]
  %7122 = phi float [ %198, %7058 ], [ %88, %6824 ]
  %7123 = phi float [ %7079, %7058 ], [ %6849, %6824 ]
  %7124 = phi float [ %7080, %7058 ], [ %6850, %6824 ]
  %7125 = phi float [ %7081, %7058 ], [ %6851, %6824 ]
  %7126 = phi float [ %7082, %7058 ], [ %6825, %6824 ]
  %7127 = phi float [ %7083, %7058 ], [ %6826, %6824 ]
  %7128 = phi float [ %7084, %7058 ], [ %6827, %6824 ]
  %7129 = phi float [ %7059, %7058 ], [ 1.000000e+00, %6824 ]
  br i1 %6858, label %8284, label %7130

; <label>:7130                                    ; preds = %7118
  %7131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7132 = extractvalue %dx.types.CBufRet.f32 %7131, 0
  %7133 = extractvalue %dx.types.CBufRet.f32 %7131, 1
  %7134 = extractvalue %dx.types.CBufRet.f32 %7131, 2
  %7135 = extractvalue %dx.types.CBufRet.f32 %7131, 3
  %7136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7137 = extractvalue %dx.types.CBufRet.f32 %7136, 0
  %7138 = extractvalue %dx.types.CBufRet.f32 %7136, 1
  %7139 = extractvalue %dx.types.CBufRet.f32 %7136, 2
  %7140 = extractvalue %dx.types.CBufRet.f32 %7136, 3
  %7141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7142 = extractvalue %dx.types.CBufRet.f32 %7141, 0
  %7143 = extractvalue %dx.types.CBufRet.f32 %7141, 1
  %7144 = extractvalue %dx.types.CBufRet.f32 %7141, 2
  %7145 = extractvalue %dx.types.CBufRet.f32 %7141, 3
  %7146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7147 = extractvalue %dx.types.CBufRet.f32 %7146, 0
  %7148 = extractvalue %dx.types.CBufRet.f32 %7146, 1
  %7149 = extractvalue %dx.types.CBufRet.f32 %7146, 2
  %7150 = extractvalue %dx.types.CBufRet.f32 %7146, 3
  %7151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7152 = extractvalue %dx.types.CBufRet.f32 %7151, 3
  %7153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7154 = extractvalue %dx.types.CBufRet.f32 %7153, 3
  %7155 = extractvalue %dx.types.CBufRet.f32 %7153, 0
  %7156 = extractvalue %dx.types.CBufRet.f32 %7153, 1
  %7157 = extractvalue %dx.types.CBufRet.f32 %7153, 2
  %7158 = fcmp fast olt float %7157, -5.000000e-01
  %7159 = call float @dx.op.dot3.f32(i32 55, float %7119, float %7120, float %7121, float %7119, float %7120, float %7121)  ; Dot3(ax,ay,az,bx,by,bz)
  %7160 = call float @dx.op.unary.f32(i32 25, float %7159)  ; Rsqrt(value)
  %7161 = fmul fast float %7160, %7159
  %7162 = fmul fast float %7160, %7119
  %7163 = fmul fast float %7160, %7120
  %7164 = fmul fast float %7160, %7121
  %7165 = fadd fast float %7161, %7135
  %7166 = call float @dx.op.dot3.f32(i32 55, float %7162, float %7163, float %7164, float %7132, float %7133, float %7134)  ; Dot3(ax,ay,az,bx,by,bz)
  %7167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7168 = extractvalue %dx.types.CBufRet.i32 %7167, 1
  %7169 = and i32 %7168, 1
  %7170 = icmp ne i32 %7169, 0
  %7171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7172 = extractvalue %dx.types.CBufRet.f32 %7171, 2
  %7173 = fcmp fast ogt float %7172, 0.000000e+00
  %7174 = and i1 %7170, %7173
  br i1 %7174, label %7175, label %7581, !dx.controlflow.hints !149

; <label>:7175                                    ; preds = %7130
  %7176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7177 = extractvalue %dx.types.CBufRet.f32 %7176, 3
  %7178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7179 = extractvalue %dx.types.CBufRet.f32 %7178, 2
  %7180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7181 = extractvalue %dx.types.CBufRet.f32 %7180, 2
  %7182 = fsub fast float %7179, %7181
  %7183 = and i32 %7168, 2
  %7184 = extractvalue %dx.types.CBufRet.i32 %7167, 0
  %7185 = call i32 @dx.op.binary.i32(i32 40, i32 %7184, i32 3)  ; UMin(a,b)
  %7186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7187 = extractvalue %dx.types.CBufRet.f32 %7186, 0
  %7188 = extractvalue %dx.types.CBufRet.f32 %7186, 1
  %7189 = extractvalue %dx.types.CBufRet.f32 %7180, 0
  %7190 = extractvalue %dx.types.CBufRet.f32 %7180, 1
  %7191 = fsub fast float %7187, %7189
  %7192 = fsub fast float %7188, %7190
  %7193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7194 = extractvalue %dx.types.CBufRet.f32 %7193, 0
  %7195 = fcmp fast ogt float %7194, 0.000000e+00
  %7196 = fsub fast float -0.000000e+00, %7191
  %7197 = fsub fast float -0.000000e+00, %7192
  %7198 = call float @dx.op.dot2.f32(i32 54, float %7162, float %7163, float %7162, float %7163)  ; Dot2(ax,ay,bx,by)
  %7199 = call float @dx.op.dot2.f32(i32 54, float %7162, float %7163, float %7196, float %7197)  ; Dot2(ax,ay,bx,by)
  %7200 = fmul fast float %7199, 2.000000e+00
  %7201 = call float @dx.op.dot2.f32(i32 54, float %7196, float %7197, float %7196, float %7197)  ; Dot2(ax,ay,bx,by)
  %7202 = fmul fast float %7194, %7194
  %7203 = fsub fast float %7201, %7202
  %7204 = fmul fast float %7200, %7200
  %7205 = fmul fast float %7198, 4.000000e+00
  %7206 = fmul fast float %7205, %7203
  %7207 = fsub fast float %7204, %7206
  %7208 = fcmp fast ogt float %7207, 0.000000e+00
  br i1 %7208, label %7209, label %7224

; <label>:7209                                    ; preds = %7175
  %7210 = fcmp fast ogt float %7200, 0.000000e+00
  %7211 = call float @dx.op.unary.f32(i32 24, float %7207)  ; Sqrt(value)
  %7212 = fsub fast float -0.000000e+00, %7211
  %7213 = select i1 %7210, float %7211, float %7212
  %7214 = fadd fast float %7213, %7200
  %7215 = fmul float %7214, -5.000000e-01
  %7216 = fdiv fast float %7215, %7198
  %7217 = call float @dx.op.binary.f32(i32 35, float %7216, float 0.000000e+00)  ; FMax(a,b)
  %7218 = call float @dx.op.binary.f32(i32 36, float %7161, float %7217)  ; FMin(a,b)
  %7219 = fdiv fast float %7203, %7215
  %7220 = call float @dx.op.binary.f32(i32 35, float %7219, float 0.000000e+00)  ; FMax(a,b)
  %7221 = call float @dx.op.binary.f32(i32 36, float %7161, float %7220)  ; FMin(a,b)
  %7222 = call float @dx.op.binary.f32(i32 36, float %7218, float %7221)  ; FMin(a,b)
  %7223 = call float @dx.op.binary.f32(i32 35, float %7218, float %7221)  ; FMax(a,b)
  br label %7224

; <label>:7224                                    ; preds = %7209, %7175
  %7225 = phi float [ %7223, %7209 ], [ -1.000000e+00, %7175 ]
  %7226 = phi float [ %7222, %7209 ], [ -1.000000e+00, %7175 ]
  %7227 = phi i1 [ true, %7209 ], [ false, %7175 ]
  %7228 = and i1 %7195, %7227
  br i1 %7228, label %7229, label %7231

; <label>:7229                                    ; preds = %7224
  %7230 = fcmp fast oeq float %7226, %7225
  br i1 %7230, label %7534, label %7232

; <label>:7231                                    ; preds = %7224
  br i1 %7195, label %7534, label %7232

; <label>:7232                                    ; preds = %7231, %7229
  %7233 = phi float [ %7161, %7231 ], [ %7225, %7229 ]
  %7234 = phi float [ 0.000000e+00, %7231 ], [ %7226, %7229 ]
  %7235 = icmp ne i32 %7183, 0
  %7236 = fmul fast float %7233, %7164
  %7237 = fadd fast float %7236, %7177
  %7238 = fmul fast float %7237, %7233
  %7239 = select i1 %7235, float 0.000000e+00, float %7238
  %7240 = fcmp fast oeq float %7164, 0.000000e+00
  %7241 = fdiv fast float %7182, %7164
  %7242 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7241)  ; FMax(a,b)
  %7243 = select i1 %7240, float %7233, float %7242
  %7244 = call float @dx.op.binary.f32(i32 36, float %7233, float %7243)  ; FMin(a,b)
  %7245 = fcmp fast ogt float %7164, 0.000000e+00
  %7246 = fcmp fast olt float %7182, 0.000000e+00
  br i1 %7245, label %7247, label %7304

; <label>:7247                                    ; preds = %7232
  %7248 = icmp eq i32 %7183, 0
  br i1 %7246, label %7249, label %7293

; <label>:7249                                    ; preds = %7247
  %7250 = select i1 %7248, float %7233, float 0.000000e+00
  %7251 = fsub fast float -0.000000e+00, %7250
  %7252 = call float @dx.op.unary.f32(i32 6, float %7251)  ; FAbs(value)
  %7253 = fmul fast float %7250, %7164
  %7254 = fadd fast float %7253, %7177
  %7255 = fmul fast float %7252, %7254
  %7256 = fsub fast float %7239, %7255
  %7257 = fsub fast float %7233, %7252
  %7258 = select i1 %7248, float %7257, float 0.000000e+00
  %7259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7260 = extractvalue %dx.types.CBufRet.f32 %7259, 0
  %7261 = extractvalue %dx.types.CBufRet.f32 %7259, 1
  %7262 = extractvalue %dx.types.CBufRet.f32 %7259, 2
  %7263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7264 = extractvalue %dx.types.CBufRet.f32 %7263, 0
  %7265 = extractvalue %dx.types.CBufRet.f32 %7263, 1
  %7266 = extractvalue %dx.types.CBufRet.f32 %7263, 2
  %7267 = extractvalue %dx.types.CBufRet.f32 %7263, 3
  %7268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7269 = extractvalue %dx.types.CBufRet.f32 %7268, 3
  %7270 = call float @dx.op.binary.f32(i32 36, float %7256, float %7269)  ; FMin(a,b)
  %7271 = fmul fast float %7267, %7258
  %7272 = call float @dx.op.unary.f32(i32 7, float %7271)  ; Saturate(value)
  %7273 = fsub fast float %7264, %7260
  %7274 = fsub fast float %7265, %7261
  %7275 = fsub fast float %7266, %7262
  %7276 = fmul fast float %7272, %7273
  %7277 = fmul fast float %7272, %7274
  %7278 = fmul fast float %7272, %7275
  %7279 = fadd fast float %7276, %7260
  %7280 = fadd fast float %7277, %7261
  %7281 = fadd fast float %7278, %7262
  %7282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7283 = extractvalue %dx.types.CBufRet.f32 %7282, 0
  %7284 = extractvalue %dx.types.CBufRet.f32 %7282, 1
  %7285 = fadd fast float %7284, %7283
  %7286 = call float @dx.op.unary.f32(i32 7, float %7285)  ; Saturate(value)
  %7287 = extractvalue %dx.types.CBufRet.f32 %7282, 2
  %7288 = extractvalue %dx.types.CBufRet.f32 %7282, 3
  %7289 = fadd fast float %7288, %7287
  %7290 = call float @dx.op.unary.f32(i32 7, float %7289)  ; Saturate(value)
  %7291 = fmul fast float %7286, %7270
  %7292 = fmul fast float %7291, %7290
  br label %7534

; <label>:7293                                    ; preds = %7247
  br i1 %7248, label %7294, label %7315

; <label>:7294                                    ; preds = %7293
  %7295 = call float @dx.op.binary.f32(i32 36, float %7244, float %7234)  ; FMin(a,b)
  %7296 = fsub fast float %7244, %7295
  %7297 = fsub fast float %7296, %7233
  %7298 = call float @dx.op.unary.f32(i32 6, float %7297)  ; FAbs(value)
  %7299 = fadd fast float %7296, %7233
  %7300 = fmul fast float %7299, %7164
  %7301 = fadd fast float %7300, %7177
  %7302 = fmul fast float %7301, %7298
  %7303 = fsub fast float %7239, %7302
  br label %7315

; <label>:7304                                    ; preds = %7232
  br i1 %7246, label %7305, label %7315

; <label>:7305                                    ; preds = %7304
  %7306 = call float @dx.op.binary.f32(i32 35, float %7234, float %7244)  ; FMax(a,b)
  %7307 = icmp eq i32 %7183, 0
  %7308 = select i1 %7307, float %7244, float 0.000000e+00
  %7309 = fsub fast float -0.000000e+00, %7308
  %7310 = call float @dx.op.unary.f32(i32 6, float %7309)  ; FAbs(value)
  %7311 = fmul fast float %7308, %7164
  %7312 = fadd fast float %7311, %7177
  %7313 = fmul fast float %7310, %7312
  %7314 = fsub fast float %7239, %7313
  br label %7315

; <label>:7315                                    ; preds = %7305, %7304, %7294, %7293
  %7316 = phi float [ %7234, %7293 ], [ %7234, %7294 ], [ %7306, %7305 ], [ %7234, %7304 ]
  %7317 = phi float [ 0.000000e+00, %7293 ], [ %7298, %7294 ], [ %7310, %7305 ], [ 0.000000e+00, %7304 ]
  %7318 = phi float [ %7239, %7293 ], [ %7303, %7294 ], [ %7314, %7305 ], [ %7239, %7304 ]
  %7319 = phi float [ %7244, %7293 ], [ %7244, %7294 ], [ %7233, %7305 ], [ %7233, %7304 ]
  %7320 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %7320, align 4, !tbaa !136, !noalias !150
  %7321 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %7321, align 4, !tbaa !136, !noalias !150
  %7322 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %7322, align 4, !tbaa !136, !noalias !150
  %7323 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %7323, align 4, !tbaa !136, !noalias !150
  %7324 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %7324, align 4, !tbaa !136, !noalias !150
  %7325 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %7325, align 4, !tbaa !136, !noalias !150
  %7326 = icmp sgt i32 %7185, 0
  br i1 %7326, label %7327, label %7388

; <label>:7327                                    ; preds = %7315
  br label %7328

; <label>:7328                                    ; preds = %7377, %7327
  %7329 = phi i32 [ %7378, %7377 ], [ 0, %7327 ]
  %7330 = phi i32 [ %7379, %7377 ], [ 0, %7327 ]
  %7331 = add nuw i32 %7330, 171
  %7332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %7331)  ; CBufferLoadLegacy(handle,regIndex)
  %7333 = extractvalue %dx.types.CBufRet.f32 %7332, 0
  %7334 = extractvalue %dx.types.CBufRet.f32 %7332, 1
  %7335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7336 = extractvalue %dx.types.CBufRet.f32 %7335, 0
  %7337 = extractvalue %dx.types.CBufRet.f32 %7335, 1
  %7338 = fsub fast float %7333, %7336
  %7339 = fsub fast float %7334, %7337
  %7340 = extractvalue %dx.types.CBufRet.f32 %7332, 2
  %7341 = fsub fast float -0.000000e+00, %7338
  %7342 = fsub fast float -0.000000e+00, %7339
  %7343 = call float @dx.op.dot2.f32(i32 54, float %7162, float %7163, float %7341, float %7342)  ; Dot2(ax,ay,bx,by)
  %7344 = fmul fast float %7343, 2.000000e+00
  %7345 = call float @dx.op.dot2.f32(i32 54, float %7341, float %7342, float %7341, float %7342)  ; Dot2(ax,ay,bx,by)
  %7346 = fmul fast float %7340, %7340
  %7347 = fsub fast float %7345, %7346
  %7348 = fmul fast float %7344, %7344
  %7349 = fmul fast float %7205, %7347
  %7350 = fsub fast float %7348, %7349
  %7351 = fcmp fast ogt float %7350, 0.000000e+00
  br i1 %7351, label %7352, label %7367

; <label>:7352                                    ; preds = %7328
  %7353 = fcmp fast ogt float %7344, 0.000000e+00
  %7354 = call float @dx.op.unary.f32(i32 24, float %7350)  ; Sqrt(value)
  %7355 = fsub fast float -0.000000e+00, %7354
  %7356 = select i1 %7353, float %7354, float %7355
  %7357 = fadd fast float %7356, %7344
  %7358 = fmul float %7357, -5.000000e-01
  %7359 = fdiv fast float %7358, %7198
  %7360 = call float @dx.op.binary.f32(i32 35, float %7359, float 0.000000e+00)  ; FMax(a,b)
  %7361 = call float @dx.op.binary.f32(i32 36, float %7233, float %7360)  ; FMin(a,b)
  %7362 = fdiv fast float %7347, %7358
  %7363 = call float @dx.op.binary.f32(i32 35, float %7362, float 0.000000e+00)  ; FMax(a,b)
  %7364 = call float @dx.op.binary.f32(i32 36, float %7233, float %7363)  ; FMin(a,b)
  %7365 = call float @dx.op.binary.f32(i32 36, float %7361, float %7364)  ; FMin(a,b)
  %7366 = call float @dx.op.binary.f32(i32 35, float %7361, float %7364)  ; FMax(a,b)
  br label %7367

; <label>:7367                                    ; preds = %7352, %7328
  %7368 = phi float [ %7366, %7352 ], [ -1.000000e+00, %7328 ]
  %7369 = phi float [ %7365, %7352 ], [ -1.000000e+00, %7328 ]
  %7370 = phi i1 [ true, %7352 ], [ false, %7328 ]
  br i1 %7370, label %7371, label %7377

; <label>:7371                                    ; preds = %7367
  %7372 = call float @dx.op.binary.f32(i32 35, float %7316, float %7369)  ; FMax(a,b)
  %7373 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7330
  store float %7372, float* %7373, align 4, !tbaa !136, !noalias !150
  %7374 = call float @dx.op.binary.f32(i32 35, float %7316, float %7368)  ; FMax(a,b)
  %7375 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %7330
  store float %7374, float* %7375, align 4, !tbaa !136, !noalias !150
  %7376 = add nsw i32 %7329, 1
  br label %7377

; <label>:7377                                    ; preds = %7371, %7367
  %7378 = phi i32 [ %7376, %7371 ], [ %7329, %7367 ]
  %7379 = add nuw nsw i32 %7330, 1
  %7380 = icmp eq i32 %7379, %7185
  br i1 %7380, label %7381, label %7328

; <label>:7381                                    ; preds = %7377
  %7382 = load float, float* %7322, align 4, !tbaa !136, !alias.scope !166, !noalias !169
  %7383 = load float, float* %7321, align 4, !tbaa !136, !alias.scope !172, !noalias !173
  %7384 = load float, float* %7320, align 4, !tbaa !136, !alias.scope !174, !noalias !175
  %7385 = load float, float* %7325, align 4, !tbaa !136, !alias.scope !176, !noalias !179
  %7386 = load float, float* %7324, align 4, !tbaa !136, !alias.scope !182, !noalias !183
  %7387 = load float, float* %7323, align 4, !tbaa !136, !alias.scope !184, !noalias !185
  br label %7388

; <label>:7388                                    ; preds = %7381, %7315
  %7389 = phi float [ -1.000000e+00, %7315 ], [ %7387, %7381 ]
  %7390 = phi float [ -1.000000e+00, %7315 ], [ %7386, %7381 ]
  %7391 = phi float [ -1.000000e+00, %7315 ], [ %7385, %7381 ]
  %7392 = phi float [ -1.000000e+00, %7315 ], [ %7384, %7381 ]
  %7393 = phi float [ -1.000000e+00, %7315 ], [ %7383, %7381 ]
  %7394 = phi float [ -1.000000e+00, %7315 ], [ %7382, %7381 ]
  %7395 = phi i32 [ 0, %7315 ], [ %7378, %7381 ]
  %7396 = call float @dx.op.binary.f32(i32 36, float %7393, float %7394)  ; FMin(a,b)
  %7397 = call float @dx.op.binary.f32(i32 36, float %7392, float %7396)  ; FMin(a,b)
  %7398 = call float @dx.op.binary.f32(i32 35, float %7392, float %7393)  ; FMax(a,b)
  %7399 = call float @dx.op.binary.f32(i32 36, float %7398, float %7394)  ; FMin(a,b)
  %7400 = call float @dx.op.binary.f32(i32 36, float %7392, float %7393)  ; FMin(a,b)
  %7401 = call float @dx.op.binary.f32(i32 35, float %7400, float %7399)  ; FMax(a,b)
  %7402 = call float @dx.op.binary.f32(i32 35, float %7393, float %7394)  ; FMax(a,b)
  %7403 = call float @dx.op.binary.f32(i32 35, float %7392, float %7402)  ; FMax(a,b)
  store float %7397, float* %7320, align 4, !tbaa !136, !alias.scope !174, !noalias !175
  store float %7401, float* %7321, align 4, !tbaa !136, !alias.scope !172, !noalias !173
  store float %7403, float* %7322, align 4, !tbaa !136, !alias.scope !166, !noalias !169
  %7404 = call float @dx.op.binary.f32(i32 36, float %7390, float %7391)  ; FMin(a,b)
  %7405 = call float @dx.op.binary.f32(i32 36, float %7389, float %7404)  ; FMin(a,b)
  %7406 = call float @dx.op.binary.f32(i32 35, float %7389, float %7390)  ; FMax(a,b)
  %7407 = call float @dx.op.binary.f32(i32 36, float %7406, float %7391)  ; FMin(a,b)
  %7408 = call float @dx.op.binary.f32(i32 36, float %7389, float %7390)  ; FMin(a,b)
  %7409 = call float @dx.op.binary.f32(i32 35, float %7408, float %7407)  ; FMax(a,b)
  %7410 = call float @dx.op.binary.f32(i32 35, float %7390, float %7391)  ; FMax(a,b)
  %7411 = call float @dx.op.binary.f32(i32 35, float %7389, float %7410)  ; FMax(a,b)
  store float %7405, float* %7323, align 4, !tbaa !136, !alias.scope !184, !noalias !185
  store float %7409, float* %7324, align 4, !tbaa !136, !alias.scope !182, !noalias !183
  store float %7411, float* %7325, align 4, !tbaa !136, !alias.scope !176, !noalias !179
  %7412 = sub nsw i32 3, %7395
  %7413 = icmp sgt i32 %7412, 2
  br i1 %7413, label %7414, label %7452

; <label>:7414                                    ; preds = %7388
  %7415 = icmp eq i32 %7183, 0
  %7416 = fsub fast float %7233, %7317
  %7417 = select i1 %7415, float %7416, float %7317
  %7418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7419 = extractvalue %dx.types.CBufRet.f32 %7418, 0
  %7420 = extractvalue %dx.types.CBufRet.f32 %7418, 1
  %7421 = extractvalue %dx.types.CBufRet.f32 %7418, 2
  %7422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7423 = extractvalue %dx.types.CBufRet.f32 %7422, 0
  %7424 = extractvalue %dx.types.CBufRet.f32 %7422, 1
  %7425 = extractvalue %dx.types.CBufRet.f32 %7422, 2
  %7426 = extractvalue %dx.types.CBufRet.f32 %7422, 3
  %7427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7428 = extractvalue %dx.types.CBufRet.f32 %7427, 3
  %7429 = call float @dx.op.binary.f32(i32 36, float %7318, float %7428)  ; FMin(a,b)
  %7430 = fmul fast float %7426, %7417
  %7431 = call float @dx.op.unary.f32(i32 7, float %7430)  ; Saturate(value)
  %7432 = fsub fast float %7423, %7419
  %7433 = fsub fast float %7424, %7420
  %7434 = fsub fast float %7425, %7421
  %7435 = fmul fast float %7431, %7432
  %7436 = fmul fast float %7431, %7433
  %7437 = fmul fast float %7431, %7434
  %7438 = fadd fast float %7435, %7419
  %7439 = fadd fast float %7436, %7420
  %7440 = fadd fast float %7437, %7421
  %7441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7442 = extractvalue %dx.types.CBufRet.f32 %7441, 0
  %7443 = extractvalue %dx.types.CBufRet.f32 %7441, 1
  %7444 = fadd fast float %7443, %7442
  %7445 = call float @dx.op.unary.f32(i32 7, float %7444)  ; Saturate(value)
  %7446 = extractvalue %dx.types.CBufRet.f32 %7441, 2
  %7447 = extractvalue %dx.types.CBufRet.f32 %7441, 3
  %7448 = fadd fast float %7447, %7446
  %7449 = call float @dx.op.unary.f32(i32 7, float %7448)  ; Saturate(value)
  %7450 = fmul fast float %7445, %7429
  %7451 = fmul fast float %7450, %7449
  br label %7534

; <label>:7452                                    ; preds = %7388
  %7453 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7412
  %7454 = load float, float* %7453, align 4, !tbaa !136, !noalias !150
  %7455 = fcmp fast olt float %7454, %7319
  %7456 = icmp sgt i32 %7395, 0
  %7457 = and i1 %7456, %7455
  br i1 %7457, label %7458, label %7495

; <label>:7458                                    ; preds = %7452
  br label %7459

; <label>:7459                                    ; preds = %7488, %7458
  %7460 = phi float [ %7489, %7488 ], [ %7317, %7458 ]
  %7461 = phi float [ %7490, %7488 ], [ %7318, %7458 ]
  %7462 = phi float [ %7470, %7488 ], [ %7454, %7458 ]
  %7463 = phi i32 [ %7467, %7488 ], [ %7412, %7458 ]
  %7464 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %7463
  %7465 = load float, float* %7464, align 4, !tbaa !136, !noalias !150
  %7466 = icmp slt i32 %7463, 2
  %7467 = add nsw i32 %7463, 1
  %7468 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7467
  %7469 = load float, float* %7468, align 4, !tbaa !136, !noalias !150
  %7470 = select i1 %7466, float %7469, float %7233
  %7471 = call float @dx.op.binary.f32(i32 36, float %7470, float %7465)  ; FMin(a,b)
  %7472 = call float @dx.op.binary.f32(i32 36, float %7319, float %7471)  ; FMin(a,b)
  %7473 = icmp eq i32 %7183, 0
  %7474 = fadd fast float %7472, %7462
  %7475 = fmul fast float %7474, %7164
  %7476 = fadd fast float %7475, %7177
  br i1 %7473, label %7482, label %7477

; <label>:7477                                    ; preds = %7459
  %7478 = fsub fast float %7472, %7462
  %7479 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7478)  ; FMax(a,b)
  %7480 = fmul fast float %7479, %7476
  %7481 = fadd fast float %7480, %7461
  br label %7488

; <label>:7482                                    ; preds = %7459
  %7483 = fsub fast float %7462, %7472
  %7484 = call float @dx.op.unary.f32(i32 6, float %7483)  ; FAbs(value)
  %7485 = fadd fast float %7484, %7460
  %7486 = fmul fast float %7484, %7476
  %7487 = fsub fast float %7461, %7486
  br label %7488

; <label>:7488                                    ; preds = %7482, %7477
  %7489 = phi float [ %7479, %7477 ], [ %7485, %7482 ]
  %7490 = phi float [ %7481, %7477 ], [ %7487, %7482 ]
  %7491 = fcmp fast olt float %7470, %7319
  %7492 = icmp slt i32 %7467, 3
  %7493 = and i1 %7492, %7491
  br i1 %7493, label %7459, label %7494

; <label>:7494                                    ; preds = %7488
  br label %7495

; <label>:7495                                    ; preds = %7494, %7452
  %7496 = phi float [ %7317, %7452 ], [ %7489, %7494 ]
  %7497 = phi float [ %7318, %7452 ], [ %7490, %7494 ]
  %7498 = fsub fast float %7233, %7496
  %7499 = select i1 %7235, float %7496, float %7498
  %7500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7501 = extractvalue %dx.types.CBufRet.f32 %7500, 0
  %7502 = extractvalue %dx.types.CBufRet.f32 %7500, 1
  %7503 = extractvalue %dx.types.CBufRet.f32 %7500, 2
  %7504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7505 = extractvalue %dx.types.CBufRet.f32 %7504, 0
  %7506 = extractvalue %dx.types.CBufRet.f32 %7504, 1
  %7507 = extractvalue %dx.types.CBufRet.f32 %7504, 2
  %7508 = extractvalue %dx.types.CBufRet.f32 %7504, 3
  %7509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7510 = extractvalue %dx.types.CBufRet.f32 %7509, 3
  %7511 = call float @dx.op.binary.f32(i32 36, float %7497, float %7510)  ; FMin(a,b)
  %7512 = fmul fast float %7508, %7499
  %7513 = call float @dx.op.unary.f32(i32 7, float %7512)  ; Saturate(value)
  %7514 = fsub fast float %7505, %7501
  %7515 = fsub fast float %7506, %7502
  %7516 = fsub fast float %7507, %7503
  %7517 = fmul fast float %7513, %7514
  %7518 = fmul fast float %7513, %7515
  %7519 = fmul fast float %7513, %7516
  %7520 = fadd fast float %7517, %7501
  %7521 = fadd fast float %7518, %7502
  %7522 = fadd fast float %7519, %7503
  %7523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7524 = extractvalue %dx.types.CBufRet.f32 %7523, 0
  %7525 = extractvalue %dx.types.CBufRet.f32 %7523, 1
  %7526 = fadd fast float %7525, %7524
  %7527 = call float @dx.op.unary.f32(i32 7, float %7526)  ; Saturate(value)
  %7528 = extractvalue %dx.types.CBufRet.f32 %7523, 2
  %7529 = extractvalue %dx.types.CBufRet.f32 %7523, 3
  %7530 = fadd fast float %7529, %7528
  %7531 = call float @dx.op.unary.f32(i32 7, float %7530)  ; Saturate(value)
  %7532 = fmul fast float %7527, %7511
  %7533 = fmul fast float %7532, %7531
  br label %7534

; <label>:7534                                    ; preds = %7495, %7414, %7249, %7231, %7229
  %7535 = phi float [ %7258, %7249 ], [ %7417, %7414 ], [ %7499, %7495 ], [ 0.000000e+00, %7229 ], [ 0.000000e+00, %7231 ]
  %7536 = phi float [ %7292, %7249 ], [ %7451, %7414 ], [ %7533, %7495 ], [ 0.000000e+00, %7229 ], [ 0.000000e+00, %7231 ]
  %7537 = phi float [ %7279, %7249 ], [ %7438, %7414 ], [ %7520, %7495 ], [ 0.000000e+00, %7229 ], [ 0.000000e+00, %7231 ]
  %7538 = phi float [ %7280, %7249 ], [ %7439, %7414 ], [ %7521, %7495 ], [ 0.000000e+00, %7229 ], [ 0.000000e+00, %7231 ]
  %7539 = phi float [ %7281, %7249 ], [ %7440, %7414 ], [ %7522, %7495 ], [ 0.000000e+00, %7229 ], [ 0.000000e+00, %7231 ]
  %7540 = fmul fast float %7172, %7536
  %7541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7542 = extractvalue %dx.types.CBufRet.f32 %7541, 2
  %7543 = fsub fast float %7179, %7542
  %7544 = fcmp fast olt float %7540, -2.000000e+01
  %7545 = call float @dx.op.unary.f32(i32 21, float %7540)  ; Exp(value)
  %7546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7547 = extractvalue %dx.types.CBufRet.f32 %7546, 2
  %7548 = extractvalue %dx.types.CBufRet.f32 %7546, 3
  %7549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7550 = extractvalue %dx.types.CBufRet.f32 %7549, 2
  %7551 = fmul fast float %7548, %7543
  %7552 = call float @dx.op.unary.f32(i32 7, float %7551)  ; Saturate(value)
  %7553 = fsub fast float 1.000000e+00, %7552
  %7554 = fmul fast float %7164, 5.000000e-01
  %7555 = fadd fast float %7554, 5.000000e-01
  %7556 = call float @dx.op.unary.f32(i32 7, float %7555)  ; Saturate(value)
  %7557 = fsub fast float 1.000000e+00, %7556
  %7558 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7553)  ; FMax(a,b)
  %7559 = fdiv fast float %7557, %7558
  %7560 = fsub fast float %7543, %7121
  %7561 = call float @dx.op.unary.f32(i32 6, float %7560)  ; FAbs(value)
  %7562 = fmul fast float %7561, %7547
  %7563 = call float @dx.op.unary.f32(i32 7, float %7559)  ; Saturate(value)
  %7564 = fsub fast float 1.000000e+00, %7562
  %7565 = fmul fast float %7564, %7563
  %7566 = fadd fast float %7565, %7562
  %7567 = fmul fast float %7550, %7543
  %7568 = call float @dx.op.unary.f32(i32 7, float %7567)  ; Saturate(value)
  %7569 = fsub fast float 1.000000e+00, %7566
  %7570 = fmul fast float %7569, %7568
  %7571 = fadd fast float %7570, %7566
  %7572 = call float @dx.op.unary.f32(i32 7, float %7571)  ; Saturate(value)
  %7573 = fadd fast float %7545, -1.000000e+00
  %7574 = select i1 %7544, float -1.000000e+00, float %7573
  %7575 = fmul fast float %7572, %7574
  %7576 = fadd fast float %7575, 1.000000e+00
  %7577 = fsub fast float -0.000000e+00, %7575
  %7578 = fmul fast float %7537, %7577
  %7579 = fmul fast float %7538, %7577
  %7580 = fmul fast float %7539, %7577
  br label %7581

; <label>:7581                                    ; preds = %7534, %7130
  %7582 = phi float [ %7535, %7534 ], [ 0.000000e+00, %7130 ]
  %7583 = phi float [ %7576, %7534 ], [ 1.000000e+00, %7130 ]
  %7584 = phi float [ %7578, %7534 ], [ 0.000000e+00, %7130 ]
  %7585 = phi float [ %7579, %7534 ], [ 0.000000e+00, %7130 ]
  %7586 = phi float [ %7580, %7534 ], [ 0.000000e+00, %7130 ]
  %7587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7588 = extractvalue %dx.types.CBufRet.f32 %7587, 1
  %7589 = fsub fast float 1.000000e+00, %7583
  %7590 = fmul fast float %7589, %7165
  %7591 = fmul fast float %7590, %7588
  %7592 = fsub fast float %7165, %7591
  br i1 %7158, label %7593, label %7622, !dx.controlflow.hints !186

; <label>:7593                                    ; preds = %7581
  %7594 = fmul fast float %7166, %7155
  %7595 = fadd fast float %7594, %7156
  %7596 = call float @dx.op.unary.f32(i32 7, float %7595)  ; Saturate(value)
  %7597 = fmul fast float %7137, %7592
  %7598 = fsub fast float -0.000000e+00, %7597
  %7599 = fmul fast float %7138, %7592
  %7600 = fsub fast float -0.000000e+00, %7599
  %7601 = call float @dx.op.unary.f32(i32 21, float %7598)  ; Exp(value)
  %7602 = call float @dx.op.unary.f32(i32 21, float %7600)  ; Exp(value)
  %7603 = call float @dx.op.binary.f32(i32 35, float %7145, float %7601)  ; FMax(a,b)
  %7604 = call float @dx.op.binary.f32(i32 35, float %7145, float %7602)  ; FMax(a,b)
  %7605 = fsub fast float %7604, %7603
  %7606 = fmul fast float %7605, %7596
  %7607 = fadd fast float %7606, %7603
  %7608 = call float @dx.op.unary.f32(i32 7, float %7607)  ; Saturate(value)
  %7609 = fsub fast float %7142, %7147
  %7610 = fsub fast float %7143, %7148
  %7611 = fsub fast float %7144, %7149
  %7612 = fmul fast float %7596, %7609
  %7613 = fmul fast float %7596, %7610
  %7614 = fmul fast float %7596, %7611
  %7615 = fadd fast float %7612, %7147
  %7616 = fadd fast float %7613, %7148
  %7617 = fadd fast float %7614, %7149
  %7618 = fsub fast float 1.000000e+00, %7608
  %7619 = fmul fast float %7618, %7615
  %7620 = fmul fast float %7618, %7616
  %7621 = fmul fast float %7618, %7617
  br label %7681

; <label>:7622                                    ; preds = %7581
  %7623 = fmul fast float %7592, %7154
  %7624 = call float @dx.op.unary.f32(i32 7, float %7623)  ; Saturate(value)
  %7625 = fsub fast float 2.000000e+00, %7624
  %7626 = fmul fast float %7624, 9.921875e-01
  %7627 = fmul fast float %7626, %7625
  %7628 = fadd fast float %7627, 3.906250e-03
  %7629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %64, float %7628, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7630 = extractvalue %dx.types.ResRet.f32 %7629, 0
  %7631 = fsub fast float %7624, %7630
  %7632 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7631)  ; FMax(a,b)
  %7633 = fmul fast float %7140, %7121
  %7634 = call float @dx.op.unary.f32(i32 6, float %7633)  ; FAbs(value)
  %7635 = fcmp fast ogt float %7634, 0x3EB0C6F7A0000000
  br i1 %7635, label %7636, label %7642, !dx.controlflow.hints !187

; <label>:7636                                    ; preds = %7622
  %7637 = fmul fast float %7633, 0xBFF7154760000000
  %7638 = call float @dx.op.unary.f32(i32 21, float %7637)  ; Exp(value)
  %7639 = fsub fast float 1.000000e+00, %7638
  %7640 = fdiv fast float %7639, %7633
  %7641 = fmul fast float %7640, %7150
  br label %7642

; <label>:7642                                    ; preds = %7636, %7622
  %7643 = phi float [ %7641, %7636 ], [ %7150, %7622 ]
  %7644 = fadd fast float %7643, %7152
  %7645 = fmul fast float %7644, %7632
  %7646 = fmul fast float %7137, %7645
  %7647 = fsub fast float -0.000000e+00, %7646
  %7648 = fmul fast float %7138, %7645
  %7649 = fsub fast float -0.000000e+00, %7648
  %7650 = fmul fast float %7139, %7645
  %7651 = fsub fast float -0.000000e+00, %7650
  %7652 = call float @dx.op.unary.f32(i32 21, float %7647)  ; Exp(value)
  %7653 = call float @dx.op.unary.f32(i32 21, float %7649)  ; Exp(value)
  %7654 = call float @dx.op.unary.f32(i32 21, float %7651)  ; Exp(value)
  %7655 = fmul fast float %7166, %7166
  %7656 = fadd fast float %7655, 1.000000e+00
  %7657 = fmul fast float %7656, 0x3FAE8EC8A0000000
  %7658 = fmul fast float %7657, %7147
  %7659 = fmul fast float %7657, %7148
  %7660 = fmul fast float %7657, %7149
  %7661 = fmul fast float %7166, %7145
  %7662 = fsub fast float 1.000000e+00, %7661
  %7663 = fmul fast float %7145, %7145
  %7664 = fsub fast float 1.000000e+00, %7663
  %7665 = fmul fast float %7664, 0x3FB45F3060000000
  %7666 = fmul fast float %7662, %7662
  %7667 = fdiv fast float 1.000000e+00, %7666
  %7668 = fmul fast float %7665, %7667
  %7669 = fmul fast float %7668, %7142
  %7670 = fmul fast float %7668, %7143
  %7671 = fmul fast float %7668, %7144
  %7672 = fadd fast float %7669, %7658
  %7673 = fadd fast float %7670, %7659
  %7674 = fadd fast float %7671, %7660
  %7675 = fsub fast float 1.000000e+00, %7652
  %7676 = fsub fast float 1.000000e+00, %7653
  %7677 = fsub fast float 1.000000e+00, %7654
  %7678 = fmul fast float %7672, %7675
  %7679 = fmul fast float %7673, %7676
  %7680 = fmul fast float %7674, %7677
  br label %7681

; <label>:7681                                    ; preds = %7642, %7593
  %7682 = phi float [ %7619, %7593 ], [ %7678, %7642 ]
  %7683 = phi float [ %7620, %7593 ], [ %7679, %7642 ]
  %7684 = phi float [ %7621, %7593 ], [ %7680, %7642 ]
  %7685 = phi float [ %7608, %7593 ], [ %7652, %7642 ]
  %7686 = phi float [ %7608, %7593 ], [ %7653, %7642 ]
  %7687 = phi float [ %7608, %7593 ], [ %7654, %7642 ]
  br i1 %7174, label %7688, label %7886, !dx.controlflow.hints !188

; <label>:7688                                    ; preds = %7681
  %7689 = extractvalue %dx.types.CBufRet.f32 %7587, 0
  %7690 = fmul fast float %7689, %7589
  %7691 = fsub fast float %7584, %7682
  %7692 = fsub fast float %7585, %7683
  %7693 = fsub fast float %7586, %7684
  %7694 = fmul fast float %7690, %7691
  %7695 = fmul fast float %7690, %7692
  %7696 = fmul fast float %7690, %7693
  %7697 = fadd fast float %7694, %7682
  %7698 = fadd fast float %7695, %7683
  %7699 = fadd fast float %7696, %7684
  %7700 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7685)  ; FMax(a,b)
  %7701 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7686)  ; FMax(a,b)
  %7702 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7687)  ; FMax(a,b)
  %7703 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7583)  ; FMax(a,b)
  %7704 = call float @dx.op.binary.f32(i32 35, float %7582, float %7592)  ; FMax(a,b)
  %7705 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7704)  ; FMax(a,b)
  %7706 = fdiv fast float %7582, %7705
  %7707 = call float @dx.op.unary.f32(i32 7, float %7706)  ; Saturate(value)
  %7708 = fdiv fast float %7592, %7705
  %7709 = call float @dx.op.unary.f32(i32 7, float %7708)  ; Saturate(value)
  %7710 = fcmp fast une float %7703, 1.000000e+00
  br i1 %7710, label %7711, label %7724, !dx.controlflow.hints !189

; <label>:7711                                    ; preds = %7688
  %7712 = call float @dx.op.unary.f32(i32 23, float %7703)  ; Log(value)
  %7713 = fmul fast float %7712, 0x3FE62E4300000000
  %7714 = fmul fast float %7584, %7713
  %7715 = fsub fast float -0.000000e+00, %7714
  %7716 = fmul fast float %7585, %7713
  %7717 = fsub fast float -0.000000e+00, %7716
  %7718 = fmul fast float %7586, %7713
  %7719 = fsub fast float -0.000000e+00, %7718
  %7720 = fsub fast float 1.000000e+00, %7703
  %7721 = fdiv fast float %7715, %7720
  %7722 = fdiv fast float %7717, %7720
  %7723 = fdiv fast float %7719, %7720
  br label %7724

; <label>:7724                                    ; preds = %7711, %7688
  %7725 = phi float [ %7721, %7711 ], [ %7584, %7688 ]
  %7726 = phi float [ %7722, %7711 ], [ %7585, %7688 ]
  %7727 = phi float [ %7723, %7711 ], [ %7586, %7688 ]
  %7728 = phi float [ %7713, %7711 ], [ 0.000000e+00, %7688 ]
  %7729 = fcmp fast une float %7700, 1.000000e+00
  br i1 %7729, label %7730, label %7737, !dx.controlflow.hints !190

; <label>:7730                                    ; preds = %7724
  %7731 = call float @dx.op.unary.f32(i32 23, float %7700)  ; Log(value)
  %7732 = fmul fast float %7731, 0x3FE62E4300000000
  %7733 = fmul fast float %7697, %7732
  %7734 = fsub fast float -0.000000e+00, %7733
  %7735 = fsub fast float 1.000000e+00, %7700
  %7736 = fdiv fast float %7734, %7735
  br label %7737

; <label>:7737                                    ; preds = %7730, %7724
  %7738 = phi float [ %7736, %7730 ], [ %7697, %7724 ]
  %7739 = phi float [ %7732, %7730 ], [ 0.000000e+00, %7724 ]
  %7740 = fcmp fast une float %7701, 1.000000e+00
  br i1 %7740, label %7741, label %7748, !dx.controlflow.hints !190

; <label>:7741                                    ; preds = %7737
  %7742 = call float @dx.op.unary.f32(i32 23, float %7701)  ; Log(value)
  %7743 = fmul fast float %7742, 0x3FE62E4300000000
  %7744 = fmul fast float %7698, %7743
  %7745 = fsub fast float -0.000000e+00, %7744
  %7746 = fsub fast float 1.000000e+00, %7701
  %7747 = fdiv fast float %7745, %7746
  br label %7748

; <label>:7748                                    ; preds = %7741, %7737
  %7749 = phi float [ %7747, %7741 ], [ %7698, %7737 ]
  %7750 = phi float [ %7743, %7741 ], [ 0.000000e+00, %7737 ]
  %7751 = fcmp fast une float %7702, 1.000000e+00
  br i1 %7751, label %7752, label %7759, !dx.controlflow.hints !190

; <label>:7752                                    ; preds = %7748
  %7753 = call float @dx.op.unary.f32(i32 23, float %7702)  ; Log(value)
  %7754 = fmul fast float %7753, 0x3FE62E4300000000
  %7755 = fmul fast float %7699, %7754
  %7756 = fsub fast float -0.000000e+00, %7755
  %7757 = fsub fast float 1.000000e+00, %7702
  %7758 = fdiv fast float %7756, %7757
  br label %7759

; <label>:7759                                    ; preds = %7752, %7748
  %7760 = phi float [ %7758, %7752 ], [ %7699, %7748 ]
  %7761 = phi float [ %7754, %7752 ], [ 0.000000e+00, %7748 ]
  %7762 = fmul fast float %7725, %7709
  %7763 = fmul fast float %7726, %7709
  %7764 = fmul fast float %7727, %7709
  %7765 = fmul fast float %7728, %7709
  %7766 = fmul fast float %7738, %7707
  %7767 = fmul fast float %7749, %7707
  %7768 = fmul fast float %7760, %7707
  %7769 = fmul fast float %7739, %7707
  %7770 = fmul fast float %7750, %7707
  %7771 = fmul fast float %7761, %7707
  %7772 = fadd fast float %7766, %7762
  %7773 = fadd fast float %7767, %7763
  %7774 = fadd fast float %7768, %7764
  %7775 = fadd fast float %7769, %7765
  %7776 = fadd fast float %7770, %7765
  %7777 = fadd fast float %7771, %7765
  %7778 = fcmp fast une float %7775, 0.000000e+00
  br i1 %7778, label %7779, label %7786, !dx.controlflow.hints !191

; <label>:7779                                    ; preds = %7759
  %7780 = fmul fast float %7775, 0x3FF7154760000000
  %7781 = call float @dx.op.unary.f32(i32 21, float %7780)  ; Exp(value)
  %7782 = fsub fast float 1.000000e+00, %7781
  %7783 = fmul fast float %7772, %7782
  %7784 = fsub fast float -0.000000e+00, %7783
  %7785 = fdiv fast float %7784, %7775
  br label %7786

; <label>:7786                                    ; preds = %7779, %7759
  %7787 = phi float [ %7781, %7779 ], [ 1.000000e+00, %7759 ]
  %7788 = phi float [ %7785, %7779 ], [ %7772, %7759 ]
  %7789 = fcmp fast une float %7776, 0.000000e+00
  br i1 %7789, label %7790, label %7797, !dx.controlflow.hints !191

; <label>:7790                                    ; preds = %7786
  %7791 = fmul fast float %7776, 0x3FF7154760000000
  %7792 = call float @dx.op.unary.f32(i32 21, float %7791)  ; Exp(value)
  %7793 = fsub fast float 1.000000e+00, %7792
  %7794 = fmul fast float %7773, %7793
  %7795 = fsub fast float -0.000000e+00, %7794
  %7796 = fdiv fast float %7795, %7776
  br label %7797

; <label>:7797                                    ; preds = %7790, %7786
  %7798 = phi float [ %7792, %7790 ], [ 1.000000e+00, %7786 ]
  %7799 = phi float [ %7796, %7790 ], [ %7773, %7786 ]
  %7800 = fcmp fast une float %7777, 0.000000e+00
  br i1 %7800, label %7801, label %7808, !dx.controlflow.hints !191

; <label>:7801                                    ; preds = %7797
  %7802 = fmul fast float %7777, 0x3FF7154760000000
  %7803 = call float @dx.op.unary.f32(i32 21, float %7802)  ; Exp(value)
  %7804 = fsub fast float 1.000000e+00, %7803
  %7805 = fmul fast float %7774, %7804
  %7806 = fsub fast float -0.000000e+00, %7805
  %7807 = fdiv fast float %7806, %7777
  br label %7808

; <label>:7808                                    ; preds = %7801, %7797
  %7809 = phi float [ %7803, %7801 ], [ 1.000000e+00, %7797 ]
  %7810 = phi float [ %7807, %7801 ], [ %7774, %7797 ]
  %7811 = fcmp fast ogt float %7707, %7709
  br i1 %7811, label %7812, label %7832

; <label>:7812                                    ; preds = %7808
  %7813 = fsub fast float 1.000000e+00, %7709
  %7814 = fmul fast float %7725, %7813
  %7815 = fmul fast float %7726, %7813
  %7816 = fmul fast float %7727, %7813
  %7817 = fmul fast float %7728, %7813
  %7818 = fcmp fast une float %7817, 0.000000e+00
  br i1 %7818, label %7819, label %7870, !dx.controlflow.hints !192

; <label>:7819                                    ; preds = %7812
  %7820 = fmul fast float %7817, 0x3FF7154760000000
  %7821 = call float @dx.op.unary.f32(i32 21, float %7820)  ; Exp(value)
  %7822 = fsub fast float 1.000000e+00, %7821
  %7823 = fmul fast float %7814, %7822
  %7824 = fsub fast float -0.000000e+00, %7823
  %7825 = fmul fast float %7815, %7822
  %7826 = fsub fast float -0.000000e+00, %7825
  %7827 = fmul fast float %7816, %7822
  %7828 = fsub fast float -0.000000e+00, %7827
  %7829 = fdiv fast float %7824, %7817
  %7830 = fdiv fast float %7826, %7817
  %7831 = fdiv fast float %7828, %7817
  br label %7870

; <label>:7832                                    ; preds = %7808
  %7833 = fsub fast float 1.000000e+00, %7707
  %7834 = fmul fast float %7738, %7833
  %7835 = fmul fast float %7749, %7833
  %7836 = fmul fast float %7760, %7833
  %7837 = fmul fast float %7739, %7833
  %7838 = fmul fast float %7750, %7833
  %7839 = fmul fast float %7761, %7833
  %7840 = fcmp fast une float %7837, 0.000000e+00
  br i1 %7840, label %7841, label %7848, !dx.controlflow.hints !191

; <label>:7841                                    ; preds = %7832
  %7842 = fmul fast float %7837, 0x3FF7154760000000
  %7843 = call float @dx.op.unary.f32(i32 21, float %7842)  ; Exp(value)
  %7844 = fsub fast float 1.000000e+00, %7843
  %7845 = fmul fast float %7834, %7844
  %7846 = fsub fast float -0.000000e+00, %7845
  %7847 = fdiv fast float %7846, %7837
  br label %7848

; <label>:7848                                    ; preds = %7841, %7832
  %7849 = phi float [ %7847, %7841 ], [ %7834, %7832 ]
  %7850 = phi float [ %7843, %7841 ], [ 1.000000e+00, %7832 ]
  %7851 = fcmp fast une float %7838, 0.000000e+00
  br i1 %7851, label %7852, label %7859, !dx.controlflow.hints !191

; <label>:7852                                    ; preds = %7848
  %7853 = fmul fast float %7838, 0x3FF7154760000000
  %7854 = call float @dx.op.unary.f32(i32 21, float %7853)  ; Exp(value)
  %7855 = fsub fast float 1.000000e+00, %7854
  %7856 = fmul fast float %7835, %7855
  %7857 = fsub fast float -0.000000e+00, %7856
  %7858 = fdiv fast float %7857, %7838
  br label %7859

; <label>:7859                                    ; preds = %7852, %7848
  %7860 = phi float [ %7858, %7852 ], [ %7835, %7848 ]
  %7861 = phi float [ %7854, %7852 ], [ 1.000000e+00, %7848 ]
  %7862 = fcmp fast une float %7839, 0.000000e+00
  br i1 %7862, label %7863, label %7870, !dx.controlflow.hints !191

; <label>:7863                                    ; preds = %7859
  %7864 = fmul fast float %7839, 0x3FF7154760000000
  %7865 = call float @dx.op.unary.f32(i32 21, float %7864)  ; Exp(value)
  %7866 = fsub fast float 1.000000e+00, %7865
  %7867 = fmul fast float %7836, %7866
  %7868 = fsub fast float -0.000000e+00, %7867
  %7869 = fdiv fast float %7868, %7839
  br label %7870

; <label>:7870                                    ; preds = %7863, %7859, %7819, %7812
  %7871 = phi float [ %7869, %7863 ], [ %7831, %7819 ], [ %7816, %7812 ], [ %7836, %7859 ]
  %7872 = phi float [ %7860, %7863 ], [ %7830, %7819 ], [ %7815, %7812 ], [ %7860, %7859 ]
  %7873 = phi float [ %7849, %7863 ], [ %7829, %7819 ], [ %7814, %7812 ], [ %7849, %7859 ]
  %7874 = phi float [ %7865, %7863 ], [ %7821, %7819 ], [ 1.000000e+00, %7812 ], [ 1.000000e+00, %7859 ]
  %7875 = phi float [ %7861, %7863 ], [ %7821, %7819 ], [ 1.000000e+00, %7812 ], [ %7861, %7859 ]
  %7876 = phi float [ %7850, %7863 ], [ %7821, %7819 ], [ 1.000000e+00, %7812 ], [ %7850, %7859 ]
  %7877 = fmul fast float %7876, %7788
  %7878 = fmul fast float %7875, %7799
  %7879 = fmul fast float %7874, %7810
  %7880 = fadd fast float %7877, %7873
  %7881 = fadd fast float %7878, %7872
  %7882 = fadd fast float %7879, %7871
  %7883 = fmul fast float %7876, %7787
  %7884 = fmul fast float %7875, %7798
  %7885 = fmul fast float %7874, %7809
  br label %7886

; <label>:7886                                    ; preds = %7870, %7681
  %7887 = phi float [ %7885, %7870 ], [ %7687, %7681 ]
  %7888 = phi float [ %7884, %7870 ], [ %7686, %7681 ]
  %7889 = phi float [ %7883, %7870 ], [ %7685, %7681 ]
  %7890 = phi float [ %7882, %7870 ], [ %7684, %7681 ]
  %7891 = phi float [ %7881, %7870 ], [ %7683, %7681 ]
  %7892 = phi float [ %7880, %7870 ], [ %7682, %7681 ]
  %7893 = fmul fast float %7892, %6832
  %7894 = fmul fast float %7891, %6834
  %7895 = fmul fast float %7890, %6836
  %7896 = fmul fast float %7889, %7129
  %7897 = call float @dx.op.dot3.f32(i32 55, float %7889, float %7888, float %7887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7898 = call float @dx.op.dot3.f32(i32 55, float %7893, float %7894, float %7895, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7899 = select i1 %238, float %7897, float %7889
  %7900 = select i1 %238, float %7897, float %7888
  %7901 = select i1 %238, float 1.000000e+00, float %7887
  %7902 = select i1 %238, float %7898, float %7893
  %7903 = select i1 %238, float 0.000000e+00, float %7894
  %7904 = select i1 %238, float 0.000000e+00, float %7895
  %7905 = fmul fast float %7899, %7123
  %7906 = fmul fast float %7900, %7124
  %7907 = fmul fast float %7901, %7125
  %7908 = fadd fast float %7905, %7902
  %7909 = fadd fast float %7906, %7903
  %7910 = fadd fast float %7904, %7907
  %7911 = fmul fast float %7899, %7126
  %7912 = fmul fast float %7900, %7127
  %7913 = fmul fast float %7901, %7128
  %7914 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7915 = extractvalue %dx.types.CBufRet.i32 %7914, 0
  %7916 = icmp eq i32 %7915, 0
  br i1 %7916, label %8284, label %7917, !dx.controlflow.hints !193

; <label>:7917                                    ; preds = %7886
  %7918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7919 = extractvalue %dx.types.CBufRet.f32 %7918, 2
  %7920 = extractvalue %dx.types.CBufRet.f32 %7918, 3
  %7921 = fmul fast float %7919, %100
  %7922 = fmul fast float %7920, %101
  %7923 = fmul fast float %7921, 2.000000e+00
  %7924 = fmul fast float %7922, 2.000000e+00
  %7925 = fsub fast float 1.000000e+00, %7923
  %7926 = fsub fast float 1.000000e+00, %7924
  %7927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7928 = extractvalue %dx.types.CBufRet.f32 %7927, 0
  %7929 = extractvalue %dx.types.CBufRet.f32 %7927, 1
  %7930 = extractvalue %dx.types.CBufRet.f32 %7927, 2
  %7931 = fmul fast float %7925, %7928
  %7932 = fmul fast float %7925, %7929
  %7933 = fmul fast float %7925, %7930
  %7934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7935 = extractvalue %dx.types.CBufRet.f32 %7934, 0
  %7936 = extractvalue %dx.types.CBufRet.f32 %7934, 1
  %7937 = extractvalue %dx.types.CBufRet.f32 %7934, 2
  %7938 = fmul fast float %7926, %7935
  %7939 = fmul fast float %7926, %7936
  %7940 = fmul fast float %7926, %7937
  %7941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7942 = extractvalue %dx.types.CBufRet.f32 %7941, 0
  %7943 = extractvalue %dx.types.CBufRet.f32 %7941, 1
  %7944 = extractvalue %dx.types.CBufRet.f32 %7941, 2
  %7945 = fadd fast float %7938, %7942
  %7946 = fadd fast float %7945, %7931
  %7947 = fadd fast float %7939, %7943
  %7948 = fadd fast float %7947, %7932
  %7949 = fadd fast float %7940, %7944
  %7950 = fadd fast float %7949, %7933
  %7951 = fmul fast float %7946, %7122
  %7952 = fmul fast float %7948, %7122
  %7953 = fmul fast float %7950, %7122
  %7954 = fmul fast float %7951, %7951
  %7955 = fmul fast float %7952, %7952
  %7956 = fadd fast float %7954, %7955
  %7957 = fmul fast float %7953, %7953
  %7958 = fadd fast float %7956, %7957
  %7959 = call float @dx.op.unary.f32(i32 24, float %7958)  ; Sqrt(value)
  %7960 = extractvalue %dx.types.CBufRet.f32 %6847, 0
  %7961 = fsub fast float %7959, %7960
  %7962 = extractvalue %dx.types.CBufRet.f32 %6847, 2
  %7963 = fmul fast float %7961, %7962
  %7964 = call float @dx.op.unary.f32(i32 7, float %7963)  ; Saturate(value)
  %7965 = fadd fast float %7964, -5.000000e-01
  %7966 = fmul fast float %7965, 2.000000e+00
  %7967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7968 = extractvalue %dx.types.CBufRet.f32 %7967, 2
  %7969 = call float @dx.op.binary.f32(i32 36, float %7968, float %7966)  ; FMin(a,b)
  %7970 = fsub fast float -0.000000e+00, %7968
  %7971 = fcmp fast ogt float %7969, %7970
  br i1 %7971, label %7972, label %8284, !dx.controlflow.hints !194

; <label>:7972                                    ; preds = %7917
  %7973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7974 = extractvalue %dx.types.CBufRet.f32 %7973, 3
  %7975 = fcmp fast ogt float %7974, 0.000000e+00
  br i1 %7975, label %7976, label %8051, !dx.controlflow.hints !195

; <label>:7976                                    ; preds = %7972
  %7977 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %7978 = extractvalue %dx.types.Dimensions %7977, 0
  %7979 = sitofp i32 %7978 to float
  %7980 = extractvalue %dx.types.Dimensions %7977, 1
  %7981 = sitofp i32 %7980 to float
  %7982 = fmul fast float %7921, %7979
  %7983 = fmul fast float %7922, %7981
  %7984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7985 = extractvalue %dx.types.CBufRet.f32 %7984, 1
  %7986 = fsub fast float -0.000000e+00, %7985
  %7987 = fptoui float %7986 to i32
  %7988 = fptoui float %7982 to i32
  %7989 = fptoui float %7983 to i32
  %7990 = and i32 %7987, 31
  %7991 = lshr i32 %7988, %7990
  %7992 = lshr i32 %7989, %7990
  %7993 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %7987, i32 %7991, i32 %7992, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7994 = extractvalue %dx.types.ResRet.f32 %7993, 0
  %7995 = fcmp fast olt float %7994, -1.000000e+00
  %7996 = fcmp fast ogt float %7994, -1.000000e+00
  %7997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7998 = extractvalue %dx.types.CBufRet.f32 %7997, 1
  %7999 = select i1 %7996, float %7998, float 1.000000e+00
  %8000 = fadd fast float %7994, 1.000000e+00
  %8001 = fmul fast float %7999, %8000
  %8002 = call float @dx.op.unary.f32(i32 6, float %8001)  ; FAbs(value)
  %8003 = extractvalue %dx.types.CBufRet.f32 %7997, 3
  %8004 = fcmp fast oge float %8002, %8003
  %8005 = select i1 %8004, float 0x4197782600000000, float %8002
  %8006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8007 = extractvalue %dx.types.CBufRet.f32 %8006, 0
  %8008 = extractvalue %dx.types.CBufRet.f32 %8006, 1
  %8009 = extractvalue %dx.types.CBufRet.f32 %8006, 2
  %8010 = select i1 %7995, float %8007, float %7928
  %8011 = select i1 %7995, float %8008, float %7929
  %8012 = select i1 %7995, float %8009, float %7930
  %8013 = fmul fast float %8010, %7925
  %8014 = fmul fast float %8011, %7925
  %8015 = fmul fast float %8012, %7925
  %8016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8017 = extractvalue %dx.types.CBufRet.f32 %8016, 0
  %8018 = extractvalue %dx.types.CBufRet.f32 %8016, 1
  %8019 = extractvalue %dx.types.CBufRet.f32 %8016, 2
  %8020 = select i1 %7995, float %8017, float %7935
  %8021 = select i1 %7995, float %8018, float %7936
  %8022 = select i1 %7995, float %8019, float %7937
  %8023 = fmul fast float %8020, %7926
  %8024 = fmul fast float %8021, %7926
  %8025 = fmul fast float %8022, %7926
  %8026 = fadd fast float %8023, %8013
  %8027 = fadd fast float %8024, %8014
  %8028 = fadd fast float %8025, %8015
  %8029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8030 = extractvalue %dx.types.CBufRet.f32 %8029, 0
  %8031 = extractvalue %dx.types.CBufRet.f32 %8029, 1
  %8032 = extractvalue %dx.types.CBufRet.f32 %8029, 2
  %8033 = select i1 %7995, float %8030, float %7942
  %8034 = select i1 %7995, float %8031, float %7943
  %8035 = select i1 %7995, float %8032, float %7944
  %8036 = fadd fast float %8026, %8033
  %8037 = fadd fast float %8027, %8034
  %8038 = fadd fast float %8028, %8035
  %8039 = fmul fast float %8036, %8005
  %8040 = fmul fast float %8037, %8005
  %8041 = fmul fast float %8038, %8005
  %8042 = fmul fast float %8039, %8039
  %8043 = fmul fast float %8040, %8040
  %8044 = fadd fast float %8042, %8043
  %8045 = fmul fast float %8041, %8041
  %8046 = fadd fast float %8044, %8045
  %8047 = call float @dx.op.unary.f32(i32 24, float %8046)  ; Sqrt(value)
  %8048 = fsub fast float %8047, %7960
  %8049 = fmul fast float %8048, %7962
  %8050 = call float @dx.op.unary.f32(i32 7, float %8049)  ; Saturate(value)
  br label %8051

; <label>:8051                                    ; preds = %7976, %7972
  %8052 = phi float [ %8050, %7976 ], [ 1.000000e+00, %7972 ]
  %8053 = fmul fast float %7969, 5.000000e-01
  %8054 = fadd fast float %8053, 5.000000e-01
  %8055 = call float @dx.op.unary.f32(i32 22, float %8054)  ; Frc(value)
  %8056 = call float @dx.op.unary.f32(i32 27, float %8055)  ; Round_ni(value)
  %8057 = call float @dx.op.unary.f32(i32 22, float %8055)  ; Frc(value)
  %8058 = fmul fast float %8057, 2.000000e+00
  %8059 = fadd fast float %8058, -1.000000e+00
  %8060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %64, float %7921, float %7922, float %8056, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8061 = extractvalue %dx.types.ResRet.f32 %8060, 0
  %8062 = extractvalue %dx.types.ResRet.f32 %8060, 1
  %8063 = extractvalue %dx.types.ResRet.f32 %8060, 2
  %8064 = extractvalue %dx.types.ResRet.f32 %8060, 3
  %8065 = fadd fast float %8061, -5.000000e-01
  %8066 = fadd fast float %8063, -5.000000e-01
  %8067 = fmul fast float %8065, 0xBFD5555560000000
  %8068 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8066, float %8067)  ; FMad(a,b,c)
  %8069 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8062, float 0.000000e+00)  ; FMad(a,b,c)
  %8070 = fadd fast float %8069, %8064
  %8071 = fmul fast float %8065, -7.500000e-01
  %8072 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8066, float %8071)  ; FMad(a,b,c)
  %8073 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8062, float 0.000000e+00)  ; FMad(a,b,c)
  %8074 = fadd fast float %8073, %8064
  %8075 = call float @dx.op.binary.f32(i32 35, float %8068, float -1.000000e+00)  ; FMax(a,b)
  %8076 = call float @dx.op.binary.f32(i32 35, float %8070, float -1.000000e+00)  ; FMax(a,b)
  %8077 = call float @dx.op.binary.f32(i32 35, float %8072, float -1.000000e+00)  ; FMax(a,b)
  %8078 = call float @dx.op.binary.f32(i32 35, float %8074, float -1.000000e+00)  ; FMax(a,b)
  %8079 = call float @dx.op.binary.f32(i32 36, float %8075, float 1.000000e+00)  ; FMin(a,b)
  %8080 = call float @dx.op.binary.f32(i32 36, float %8076, float 1.000000e+00)  ; FMin(a,b)
  %8081 = call float @dx.op.binary.f32(i32 36, float %8077, float 1.000000e+00)  ; FMin(a,b)
  %8082 = call float @dx.op.binary.f32(i32 36, float %8078, float 1.000000e+00)  ; FMin(a,b)
  %8083 = fcmp fast olt float %8079, 0x3FEFFF8020000000
  br i1 %8083, label %8084, label %8199, !dx.controlflow.hints !196

; <label>:8084                                    ; preds = %8051
  %8085 = extractvalue %dx.types.CBufRet.f32 %7967, 3
  %8086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8087 = extractvalue %dx.types.CBufRet.f32 %8086, 0
  %8088 = extractvalue %dx.types.CBufRet.f32 %8086, 1
  %8089 = extractvalue %dx.types.CBufRet.f32 %8086, 2
  %8090 = extractvalue %dx.types.CBufRet.f32 %8086, 3
  %8091 = fsub fast float %8087, %8079
  %8092 = fsub fast float %8088, %8080
  %8093 = fsub fast float %8089, %8081
  %8094 = fsub fast float %8090, %8082
  %8095 = fmul fast float %8091, %8085
  %8096 = fmul fast float %8092, %8085
  %8097 = fmul fast float %8093, %8085
  %8098 = fmul fast float %8094, %8085
  %8099 = fadd fast float %8095, %8079
  %8100 = fadd fast float %8096, %8080
  %8101 = fsub fast float -0.000000e+00, %8100
  %8102 = fadd fast float %8097, %8081
  %8103 = fadd fast float %8098, %8082
  %8104 = fmul fast float %8099, %8099
  %8105 = fsub fast float %8100, %8104
  %8106 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8105)  ; FMax(a,b)
  %8107 = fdiv fast float 1.000000e+00, %8106
  %8108 = fmul fast float %8100, %8099
  %8109 = fsub fast float %8102, %8108
  %8110 = fsub fast float %8059, %8099
  %8111 = fmul fast float %8059, %8059
  %8112 = fsub fast float %8111, %8100
  %8113 = fmul fast float %8110, %8107
  %8114 = fmul fast float %8113, %8109
  %8115 = fsub fast float %8112, %8114
  %8116 = fmul fast float %8100, %8100
  %8117 = fsub fast float %8103, %8116
  %8118 = fmul fast float %8109, %8109
  %8119 = fmul fast float %8118, %8107
  %8120 = fsub fast float %8117, %8119
  %8121 = fdiv fast float %8115, %8120
  %8122 = fmul fast float %8109, %8121
  %8123 = fsub fast float %8110, %8122
  %8124 = fmul fast float %8123, %8107
  %8125 = fmul fast float %8124, %8099
  %8126 = fsub fast float 1.000000e+00, %8125
  %8127 = fmul fast float %8100, %8121
  %8128 = fsub fast float %8126, %8127
  %8129 = fmul fast float %8124, %8124
  %8130 = fmul fast float %8121, 4.000000e+00
  %8131 = fmul fast float %8130, %8128
  %8132 = fsub fast float %8129, %8131
  %8133 = call float @dx.op.unary.f32(i32 24, float %8132)  ; Sqrt(value)
  %8134 = fcmp fast oge float %8124, 0.000000e+00
  %8135 = fsub fast float -0.000000e+00, %8133
  %8136 = select i1 %8134, float %8135, float %8133
  %8137 = fsub fast float %8136, %8124
  %8138 = fdiv fast float %8137, %8121
  %8139 = fdiv fast float %8128, %8137
  %8140 = fmul fast float %8138, 5.000000e-01
  %8141 = fmul fast float %8139, 2.000000e+00
  %8142 = select i1 %8134, float %8140, float %8141
  %8143 = select i1 %8134, float %8141, float %8140
  %8144 = call float @dx.op.binary.f32(i32 35, float %8142, float %8143)  ; FMax(a,b)
  %8145 = call float @dx.op.binary.f32(i32 36, float %8142, float %8143)  ; FMin(a,b)
  %8146 = fcmp fast ogt float %8059, %8145
  br i1 %8146, label %8147, label %8157

; <label>:8147                                    ; preds = %8084
  %8148 = fsub fast float %8059, %8145
  %8149 = fsub fast float %8144, %8145
  %8150 = fmul fast float %8148, %8149
  %8151 = fmul fast float %8144, %8059
  %8152 = fadd fast float %8144, %8059
  %8153 = fmul fast float %8152, %8099
  %8154 = fadd fast float %8151, %8100
  %8155 = fsub fast float %8154, %8153
  %8156 = fdiv fast float %8155, %8150
  br label %8157

; <label>:8157                                    ; preds = %8147, %8084
  %8158 = phi float [ %8156, %8147 ], [ 0.000000e+00, %8084 ]
  %8159 = fcmp fast ogt float %8059, %8144
  %8160 = fsub fast float %8059, %8144
  br i1 %8159, label %8161, label %8171

; <label>:8161                                    ; preds = %8157
  %8162 = fsub fast float %8144, %8145
  %8163 = fmul fast float %8162, %8160
  %8164 = fmul fast float %8145, %8059
  %8165 = fadd fast float %8145, %8059
  %8166 = fmul fast float %8165, %8099
  %8167 = fsub fast float %8101, %8164
  %8168 = fadd fast float %8167, %8166
  %8169 = fdiv fast float %8168, %8163
  %8170 = fadd fast float %8169, %8158
  br label %8171

; <label>:8171                                    ; preds = %8161, %8157
  %8172 = phi float [ %8170, %8161 ], [ %8158, %8157 ]
  %8173 = fsub fast float %8059, %8145
  %8174 = fmul fast float %8173, %8160
  %8175 = fmul fast float %8145, %8144
  %8176 = fadd fast float %8145, %8144
  %8177 = fmul fast float %8176, %8099
  %8178 = fadd fast float %8175, %8100
  %8179 = fsub fast float %8178, %8177
  %8180 = fdiv fast float %8179, %8174
  %8181 = call float @dx.op.unary.f32(i32 7, float %8172)  ; Saturate(value)
  %8182 = fcmp fast oeq float %6848, 0.000000e+00
  %8183 = extractvalue %dx.types.CBufRet.f32 %7967, 0
  %8184 = fcmp fast oeq float %8183, 0.000000e+00
  %8185 = or i1 %8182, %8184
  %8186 = fmul fast float %8183, 2.000000e+00
  %8187 = fadd fast float %7968, %7969
  %8188 = fdiv fast float %8187, %8186
  %8189 = call float @dx.op.unary.f32(i32 7, float %8188)  ; Saturate(value)
  %8190 = fmul fast float %8189, 2.000000e+00
  %8191 = fsub fast float 3.000000e+00, %8190
  %8192 = fmul fast float %8189, %8189
  %8193 = fmul fast float %8192, %8191
  %8194 = select i1 %8185, float 1.000000e+00, float %8193
  %8195 = fmul fast float %8180, %6848
  %8196 = fadd fast float %8181, %8195
  %8197 = call float @dx.op.unary.f32(i32 7, float %8196)  ; Saturate(value)
  %8198 = fmul fast float %8194, %8197
  br label %8199

; <label>:8199                                    ; preds = %8171, %8051
  %8200 = phi float [ %8198, %8171 ], [ 0.000000e+00, %8051 ]
  %8201 = fsub fast float 1.000000e+00, %8200
  %8202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %64, float %7921, float %7922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8203 = extractvalue %dx.types.ResRet.f32 %8202, 0
  %8204 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8205 = extractvalue %dx.types.CBufRet.i32 %8204, 2
  %8206 = icmp eq i32 %8205, 0
  br i1 %8206, label %8212, label %8207

; <label>:8207                                    ; preds = %8199
  %8208 = call float @dx.op.unary.f32(i32 7, float %8200)  ; Saturate(value)
  %8209 = fadd fast float %8203, -1.000000e+00
  %8210 = fmul fast float %8208, %8209
  %8211 = fadd fast float %8210, 1.000000e+00
  br label %8212

; <label>:8212                                    ; preds = %8207, %8199
  %8213 = phi float [ %8211, %8207 ], [ %8201, %8199 ]
  br i1 %7975, label %8214, label %8232

; <label>:8214                                    ; preds = %8212
  %8215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8216 = extractvalue %dx.types.CBufRet.f32 %8215, 1
  %8217 = fsub fast float %8052, %8216
  %8218 = call float @dx.op.unary.f32(i32 7, float %8217)  ; Saturate(value)
  %8219 = fsub fast float %8052, %7974
  %8220 = call float @dx.op.unary.f32(i32 7, float %8219)  ; Saturate(value)
  %8221 = fsub fast float %8218, %8220
  %8222 = fsub fast float %8054, %8220
  %8223 = fdiv fast float %8222, %8221
  %8224 = call float @dx.op.unary.f32(i32 7, float %8223)  ; Saturate(value)
  %8225 = fmul fast float %8224, 2.000000e+00
  %8226 = fsub fast float 3.000000e+00, %8225
  %8227 = fsub fast float %8203, %8213
  %8228 = fmul fast float %8224, %8224
  %8229 = fmul fast float %8228, %8227
  %8230 = fmul fast float %8229, %8226
  %8231 = fadd fast float %8230, %8213
  br label %8232

; <label>:8232                                    ; preds = %8214, %8212
  %8233 = phi float [ %8231, %8214 ], [ %8213, %8212 ]
  %8234 = call float @dx.op.binary.f32(i32 35, float %8203, float %8233)  ; FMax(a,b)
  %8235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8236 = extractvalue %dx.types.CBufRet.i32 %8235, 2
  %8237 = and i32 %8236, 1
  %8238 = icmp eq i32 %8237, 0
  %8239 = fcmp fast une float %8234, 1.000000e+00
  %8240 = and i1 %8239, %8238
  br i1 %8240, label %8241, label %8260

; <label>:8241                                    ; preds = %8232
  %8242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %64, float %7921, float %7922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8243 = extractvalue %dx.types.ResRet.f32 %8242, 0
  %8244 = extractvalue %dx.types.ResRet.f32 %8242, 1
  %8245 = extractvalue %dx.types.ResRet.f32 %8242, 2
  %8246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8247 = extractvalue %dx.types.CBufRet.f32 %8246, 1
  %8248 = fmul fast float %8247, %8243
  %8249 = fmul fast float %8247, %8244
  %8250 = fmul fast float %8247, %8245
  %8251 = fcmp fast ogt float %8203, 0x3FEFFF2E40000000
  %8252 = fsub fast float 1.000000e+00, %8234
  %8253 = fsub fast float 1.000000e+00, %8203
  %8254 = fdiv fast float %8252, %8253
  %8255 = call float @dx.op.unary.f32(i32 7, float %8254)  ; Saturate(value)
  %8256 = select i1 %8251, float 0.000000e+00, float %8255
  %8257 = fmul fast float %8248, %8256
  %8258 = fmul fast float %8249, %8256
  %8259 = fmul fast float %8250, %8256
  br label %8260

; <label>:8260                                    ; preds = %8241, %8232
  %8261 = phi float [ 0.000000e+00, %8232 ], [ %8257, %8241 ]
  %8262 = phi float [ 0.000000e+00, %8232 ], [ %8258, %8241 ]
  %8263 = phi float [ 0.000000e+00, %8232 ], [ %8259, %8241 ]
  %8264 = fmul fast float %8261, %6832
  %8265 = fmul fast float %8262, %6834
  %8266 = fmul fast float %8263, %6836
  %8267 = fmul fast float %8234, %7896
  %8268 = call float @dx.op.dot3.f32(i32 55, float %8234, float %8234, float %8234, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8269 = call float @dx.op.dot3.f32(i32 55, float %8264, float %8265, float %8266, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8270 = select i1 %238, float %8268, float %8234
  %8271 = select i1 %238, float 1.000000e+00, float %8234
  %8272 = select i1 %238, float %8269, float %8264
  %8273 = select i1 %238, float 0.000000e+00, float %8265
  %8274 = select i1 %238, float 0.000000e+00, float %8266
  %8275 = fmul fast float %8270, %7908
  %8276 = fmul fast float %8270, %7909
  %8277 = fmul fast float %8271, %7910
  %8278 = fadd fast float %8275, %8272
  %8279 = fadd fast float %8276, %8273
  %8280 = fadd fast float %8274, %8277
  %8281 = fmul fast float %8270, %7911
  %8282 = fmul fast float %8270, %7912
  %8283 = fmul fast float %8271, %7913
  br label %8284

; <label>:8284                                    ; preds = %8260, %7917, %7886, %7118
  %8285 = phi float [ %7123, %7118 ], [ %7908, %7886 ], [ %8278, %8260 ], [ %7908, %7917 ]
  %8286 = phi float [ %7124, %7118 ], [ %7909, %7886 ], [ %8279, %8260 ], [ %7909, %7917 ]
  %8287 = phi float [ %7125, %7118 ], [ %7910, %7886 ], [ %8280, %8260 ], [ %7910, %7917 ]
  %8288 = phi float [ %7126, %7118 ], [ %7911, %7886 ], [ %8281, %8260 ], [ %7911, %7917 ]
  %8289 = phi float [ %7127, %7118 ], [ %7912, %7886 ], [ %8282, %8260 ], [ %7912, %7917 ]
  %8290 = phi float [ %7128, %7118 ], [ %7913, %7886 ], [ %8283, %8260 ], [ %7913, %7917 ]
  %8291 = phi float [ %7129, %7118 ], [ %7896, %7886 ], [ %8267, %8260 ], [ %7896, %7917 ]
  %8292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8293 = extractvalue %dx.types.CBufRet.f32 %8292, 2
  %8294 = extractvalue %dx.types.CBufRet.f32 %8292, 3
  %8295 = fmul fast float %8293, %100
  %8296 = fmul fast float %8294, %101
  %8297 = call float @dx.op.unary.f32(i32 7, float %8295)  ; Saturate(value)
  %8298 = call float @dx.op.unary.f32(i32 7, float %8296)  ; Saturate(value)
  %8299 = select i1 %6858, i32 2, i32 0
  %8300 = or i32 %8299, 1
  %8301 = uitofp i32 %8300 to float
  %8302 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %8297, float %8298, float %8301, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8303 = extractvalue %dx.types.ResRet.f32 %8302, 0
  %8304 = extractvalue %dx.types.ResRet.f32 %8302, 1
  %8305 = extractvalue %dx.types.ResRet.f32 %8302, 2
  %8306 = extractvalue %dx.types.ResRet.f32 %8302, 3
  %8307 = add nuw nsw i32 %8299, 2
  %8308 = uitofp i32 %8307 to float
  %8309 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %8297, float %8298, float %8308, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8310 = extractvalue %dx.types.ResRet.f32 %8309, 0
  %8311 = extractvalue %dx.types.ResRet.f32 %8309, 1
  %8312 = extractvalue %dx.types.ResRet.f32 %8309, 2
  %8313 = extractvalue %dx.types.ResRet.f32 %8309, 3
  %8314 = call float @dx.op.binary.f32(i32 35, float %8304, float %8305)  ; FMax(a,b)
  %8315 = call float @dx.op.binary.f32(i32 35, float %8303, float %8314)  ; FMax(a,b)
  %8316 = call float @dx.op.binary.f32(i32 35, float %8315, float %8306)  ; FMax(a,b)
  %8317 = call float @dx.op.binary.f32(i32 36, float %8311, float %8312)  ; FMin(a,b)
  %8318 = call float @dx.op.binary.f32(i32 36, float %8310, float %8317)  ; FMin(a,b)
  %8319 = call float @dx.op.binary.f32(i32 36, float %8318, float %8313)  ; FMin(a,b)
  %8320 = fmul fast float %8316, 2.550000e+02
  %8321 = fadd fast float %8320, 0x3F70101020000000
  %8322 = fptoui float %8321 to i32
  %8323 = fmul fast float %8319, 2.550000e+02
  %8324 = fadd fast float %8323, 0x3F70101020000000
  %8325 = fptoui float %8324 to i32
  %8326 = icmp ult i32 %8322, %8325
  br i1 %8326, label %8327, label %8496

; <label>:8327                                    ; preds = %8284
  %8328 = fcmp fast ogt float %87, 9.843750e-01
  %8329 = fadd fast float %7122, -4.000000e+00
  %8330 = select i1 %8328, float -4.000000e+00, float %8329
  %8331 = call float @dx.op.binary.f32(i32 35, float %8330, float 0.000000e+00)  ; FMax(a,b)
  %8332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8333 = extractvalue %dx.types.CBufRet.f32 %8332, 0
  %8334 = fadd fast float %8333, %8331
  %8335 = extractvalue %dx.types.CBufRet.f32 %8332, 2
  %8336 = fmul fast float %8334, %8335
  %8337 = call float @dx.op.unary.f32(i32 23, float %8336)  ; Log(value)
  %8338 = extractvalue %dx.types.CBufRet.f32 %8332, 3
  %8339 = fmul fast float %8338, %8337
  %8340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8341 = extractvalue %dx.types.CBufRet.f32 %8340, 2
  %8342 = fmul fast float %8339, %8341
  %8343 = call float @dx.op.unary.f32(i32 7, float %8342)  ; Saturate(value)
  %8344 = uitofp i32 %8322 to float
  %8345 = uitofp i32 %8325 to float
  %8346 = fadd fast float %8344, 5.000000e-01
  %8347 = fadd fast float %8345, 5.000000e-01
  %8348 = fmul fast float %8341, %8346
  %8349 = fmul fast float %8341, %8347
  %8350 = fadd fast float %8348, 0x3F0FFB4800000000
  %8351 = fadd fast float %8349, 0xBF0FFB4800000000
  %8352 = call float @dx.op.binary.f32(i32 35, float %8343, float %8350)  ; FMax(a,b)
  %8353 = call float @dx.op.binary.f32(i32 36, float %8352, float %8351)  ; FMin(a,b)
  %8354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8355 = extractvalue %dx.types.CBufRet.f32 %8354, 1
  %8356 = extractvalue %dx.types.CBufRet.f32 %8354, 2
  %8357 = extractvalue %dx.types.CBufRet.f32 %8354, 0
  %8358 = select i1 %6858, float %8357, float 0.000000e+00
  %8359 = fmul fast float %8355, %8353
  %8360 = fadd fast float %8358, %8359
  %8361 = fadd fast float %8358, %8356
  %8362 = fsub fast float %8355, %8356
  %8363 = fadd fast float %8362, %8358
  %8364 = call float @dx.op.binary.f32(i32 35, float %8360, float %8361)  ; FMax(a,b)
  %8365 = call float @dx.op.binary.f32(i32 36, float %8364, float %8363)  ; FMin(a,b)
  %8366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %8297, float %8298, float %8365, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8367 = extractvalue %dx.types.ResRet.f32 %8366, 0
  %8368 = extractvalue %dx.types.ResRet.f32 %8366, 1
  %8369 = extractvalue %dx.types.ResRet.f32 %8366, 2
  %8370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8371 = extractvalue %dx.types.CBufRet.i32 %8370, 0
  %8372 = extractvalue %dx.types.CBufRet.i32 %8370, 1
  %8373 = uitofp i32 %8371 to float
  %8374 = uitofp i32 %8372 to float
  %8375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8376 = extractvalue %dx.types.CBufRet.f32 %8375, 0
  %8377 = extractvalue %dx.types.CBufRet.f32 %8375, 1
  %8378 = fmul fast float %8373, %8297
  %8379 = fmul fast float %8374, %8298
  %8380 = fadd fast float %8378, -5.000000e-01
  %8381 = fadd fast float %8379, -5.000000e-01
  %8382 = call float @dx.op.unary.f32(i32 22, float %8380)  ; Frc(value)
  %8383 = call float @dx.op.unary.f32(i32 22, float %8381)  ; Frc(value)
  %8384 = fmul fast float %8382, %8382
  %8385 = fmul fast float %8384, %8382
  %8386 = fsub fast float 3.000000e+00, %8382
  %8387 = fmul fast float %8384, %8386
  %8388 = fmul fast float %8382, 3.000000e+00
  %8389 = fmul fast float %8385, 3.000000e+00
  %8390 = fmul fast float %8384, 6.000000e+00
  %8391 = fsub fast float %8389, %8390
  %8392 = fadd fast float %8391, 4.000000e+00
  %8393 = fmul fast float %8392, 0x3FC5555560000000
  %8394 = fmul fast float %8385, -3.000000e+00
  %8395 = fadd fast float %8384, %8382
  %8396 = fmul fast float %8395, 3.000000e+00
  %8397 = fadd fast float %8394, 1.000000e+00
  %8398 = fadd fast float %8397, %8396
  %8399 = fmul fast float %8385, 0x3FC5555560000000
  %8400 = fmul fast float %8383, %8383
  %8401 = fmul fast float %8400, %8383
  %8402 = fsub fast float 3.000000e+00, %8383
  %8403 = fmul fast float %8400, %8402
  %8404 = fmul fast float %8383, 3.000000e+00
  %8405 = fmul fast float %8401, 3.000000e+00
  %8406 = fmul fast float %8400, 6.000000e+00
  %8407 = fsub fast float %8405, %8406
  %8408 = fadd fast float %8407, 4.000000e+00
  %8409 = fmul fast float %8408, 0x3FC5555560000000
  %8410 = fmul fast float %8401, -3.000000e+00
  %8411 = fadd fast float %8400, %8383
  %8412 = fmul fast float %8411, 3.000000e+00
  %8413 = fadd fast float %8410, 1.000000e+00
  %8414 = fadd fast float %8413, %8412
  %8415 = fmul fast float %8401, 0x3FC5555560000000
  %8416 = fadd fast float %8382, 1.000000e+00
  %8417 = fsub fast float 1.000000e+00, %8388
  %8418 = fadd fast float %8417, %8387
  %8419 = fadd fast float %8418, %8392
  %8420 = fmul fast float %8419, 0x3FC5555560000000
  %8421 = fdiv fast float %8393, %8420
  %8422 = fsub fast float %8416, %8421
  %8423 = fsub fast float 1.000000e+00, %8382
  %8424 = fadd fast float %8398, %8385
  %8425 = fmul fast float %8424, 0x3FC5555560000000
  %8426 = fdiv fast float %8399, %8425
  %8427 = fadd fast float %8423, %8426
  %8428 = fadd fast float %8383, 1.000000e+00
  %8429 = fsub fast float 1.000000e+00, %8404
  %8430 = fadd fast float %8429, %8403
  %8431 = fadd fast float %8430, %8408
  %8432 = fmul fast float %8431, 0x3FC5555560000000
  %8433 = fdiv fast float %8409, %8432
  %8434 = fsub fast float %8428, %8433
  %8435 = fsub fast float 1.000000e+00, %8383
  %8436 = fadd fast float %8414, %8401
  %8437 = fmul fast float %8436, 0x3FC5555560000000
  %8438 = fdiv fast float %8415, %8437
  %8439 = fadd fast float %8438, %8435
  %8440 = fmul fast float %8422, %8376
  %8441 = fsub fast float %8297, %8440
  %8442 = fmul fast float %8427, %8376
  %8443 = fadd fast float %8442, %8297
  %8444 = fmul fast float %8439, %8377
  %8445 = fadd fast float %8444, %8298
  %8446 = fmul fast float %8434, %8377
  %8447 = fsub fast float %8298, %8446
  %8448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8441, float %8447, float %8365, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8449 = extractvalue %dx.types.ResRet.f32 %8448, 0
  %8450 = extractvalue %dx.types.ResRet.f32 %8448, 1
  %8451 = extractvalue %dx.types.ResRet.f32 %8448, 2
  %8452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8443, float %8447, float %8365, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8453 = extractvalue %dx.types.ResRet.f32 %8452, 0
  %8454 = extractvalue %dx.types.ResRet.f32 %8452, 1
  %8455 = extractvalue %dx.types.ResRet.f32 %8452, 2
  %8456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8441, float %8445, float %8365, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8457 = extractvalue %dx.types.ResRet.f32 %8456, 0
  %8458 = extractvalue %dx.types.ResRet.f32 %8456, 1
  %8459 = extractvalue %dx.types.ResRet.f32 %8456, 2
  %8460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8443, float %8445, float %8365, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8461 = extractvalue %dx.types.ResRet.f32 %8460, 0
  %8462 = extractvalue %dx.types.ResRet.f32 %8460, 1
  %8463 = extractvalue %dx.types.ResRet.f32 %8460, 2
  %8464 = fsub fast float %8457, %8449
  %8465 = fsub fast float %8458, %8450
  %8466 = fsub fast float %8459, %8451
  %8467 = fmul fast float %8464, %8437
  %8468 = fmul fast float %8465, %8437
  %8469 = fmul fast float %8466, %8437
  %8470 = fadd fast float %8467, %8449
  %8471 = fadd fast float %8468, %8450
  %8472 = fadd fast float %8469, %8451
  %8473 = fsub fast float %8461, %8453
  %8474 = fsub fast float %8462, %8454
  %8475 = fsub fast float %8463, %8455
  %8476 = fmul fast float %8473, %8437
  %8477 = fmul fast float %8474, %8437
  %8478 = fmul fast float %8475, %8437
  %8479 = fsub fast float %8453, %8470
  %8480 = fadd fast float %8479, %8476
  %8481 = fsub fast float %8454, %8471
  %8482 = fadd fast float %8481, %8477
  %8483 = fsub fast float %8455, %8472
  %8484 = fadd fast float %8483, %8478
  %8485 = fmul fast float %8480, %8425
  %8486 = fmul fast float %8482, %8425
  %8487 = fmul fast float %8484, %8425
  %8488 = fadd fast float %8485, %8470
  %8489 = fadd fast float %8486, %8471
  %8490 = fadd fast float %8487, %8472
  %8491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8492 = extractvalue %dx.types.CBufRet.f32 %8491, 1
  %8493 = fmul fast float %8488, %8492
  %8494 = fmul fast float %8489, %8492
  %8495 = fmul fast float %8490, %8492
  br label %8496

; <label>:8496                                    ; preds = %8327, %8284
  %8497 = phi float [ %8367, %8327 ], [ 1.000000e+00, %8284 ]
  %8498 = phi float [ %8368, %8327 ], [ 1.000000e+00, %8284 ]
  %8499 = phi float [ %8369, %8327 ], [ 1.000000e+00, %8284 ]
  %8500 = phi float [ %8493, %8327 ], [ 0.000000e+00, %8284 ]
  %8501 = phi float [ %8494, %8327 ], [ 0.000000e+00, %8284 ]
  %8502 = phi float [ %8495, %8327 ], [ 0.000000e+00, %8284 ]
  %8503 = fmul fast float %8500, %6832
  %8504 = fmul fast float %8501, %6834
  %8505 = fmul fast float %8502, %6836
  %8506 = fmul fast float %8497, %8291
  %8507 = call float @dx.op.dot3.f32(i32 55, float %8497, float %8498, float %8499, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8508 = call float @dx.op.dot3.f32(i32 55, float %8503, float %8504, float %8505, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8509 = select i1 %238, float %8507, float %8497
  %8510 = select i1 %238, float %8507, float %8498
  %8511 = select i1 %238, float 1.000000e+00, float %8499
  %8512 = select i1 %238, float %8508, float %8503
  %8513 = select i1 %238, float 0.000000e+00, float %8504
  %8514 = select i1 %238, float 0.000000e+00, float %8505
  %8515 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8516 = extractvalue %dx.types.CBufRet.i32 %8515, 3
  %8517 = and i32 %8516, 3
  %8518 = icmp ne i32 %8517, 0
  %8519 = and i32 %8516, 4
  %8520 = icmp ne i32 %8519, 0
  %8521 = and i1 %8518, %8520
  %8522 = and i1 %238, %8521
  br i1 %8522, label %8523, label %8529

; <label>:8523                                    ; preds = %8496
  %8524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8525 = extractvalue %dx.types.CBufRet.f32 %8524, 1
  %8526 = fadd fast float %8506, -1.000000e+00
  %8527 = fmul fast float %8525, %8526
  %8528 = fadd fast float %8527, 1.000000e+00
  br label %8529

; <label>:8529                                    ; preds = %8523, %8496
  %8530 = phi float [ %8528, %8523 ], [ %8506, %8496 ]
  %8531 = fadd fast float %8288, %8285
  %8532 = fmul fast float %8509, %8531
  %8533 = fadd fast float %8532, %8512
  %8534 = fadd fast float %8289, %8286
  %8535 = fmul fast float %8510, %8534
  %8536 = fadd fast float %8535, %8513
  %8537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8538 = extractvalue %dx.types.CBufRet.f32 %8537, 0
  br i1 %238, label %8539, label %8554

; <label>:8539                                    ; preds = %8529
  %8540 = fadd fast float %8533, %8536
  %8541 = fmul fast float %8538, %8540
  %8542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8543 = extractvalue %dx.types.CBufRet.f32 %8542, 3
  %8544 = extractvalue %dx.types.CBufRet.f32 %6840, 1
  %8545 = fsub fast float %6845, %6839
  %8546 = fadd fast float %8545, %6846
  %8547 = fsub fast float %8546, %8544
  %8548 = extractvalue %dx.types.CBufRet.f32 %6840, 2
  %8549 = fmul fast float %8547, %8548
  %8550 = call float @dx.op.unary.f32(i32 7, float %8549)  ; Saturate(value)
  %8551 = fsub fast float %8550, %8543
  %8552 = fmul fast float %8551, %8530
  %8553 = fadd fast float %8552, %8543
  br label %8580

; <label>:8554                                    ; preds = %8529
  %8555 = fadd fast float %8290, %8287
  %8556 = fmul fast float %8511, %8555
  %8557 = fadd fast float %8556, %8514
  %8558 = fmul fast float %8538, %8533
  %8559 = fmul fast float %8538, %8536
  %8560 = fmul fast float %8538, %8557
  %8561 = call float @dx.op.binary.f32(i32 35, float %8559, float %8560)  ; FMax(a,b)
  %8562 = call float @dx.op.binary.f32(i32 35, float %8558, float %8561)  ; FMax(a,b)
  %8563 = call float @dx.op.binary.f32(i32 35, float %6834, float %6836)  ; FMax(a,b)
  %8564 = call float @dx.op.binary.f32(i32 35, float %6832, float %8563)  ; FMax(a,b)
  %8565 = call float @dx.op.binary.f32(i32 35, float %8562, float %8564)  ; FMax(a,b)
  %8566 = fcmp fast ugt float %8565, 0x3F10000000000000
  br i1 %8566, label %8568, label %8567

; <label>:8567                                    ; preds = %8554
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8568

; <label>:8568                                    ; preds = %8567, %8554
  %8569 = add i32 %71, 116
  %8570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %8569, i32 undef)  ; BufferLoad(srv,index,wot)
  %8571 = extractvalue %dx.types.ResRet.i32 %8570, 0
  %8572 = and i32 %8571, 32
  %8573 = icmp eq i32 %8572, 0
  br i1 %8573, label %8580, label %8574

; <label>:8574                                    ; preds = %8568
  %8575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8576 = extractvalue %dx.types.CBufRet.f32 %8575, 0
  %8577 = fmul fast float %8576, 0x3FE99999A0000000
  %8578 = fadd fast float %8576, %8558
  %8579 = fadd fast float %8577, %8560
  br label %8580

; <label>:8580                                    ; preds = %8574, %8568, %8539
  %8581 = phi float [ 1.000000e+00, %8539 ], [ %6834, %8574 ], [ %6834, %8568 ]
  %8582 = phi float [ 1.000000e+00, %8539 ], [ %6836, %8574 ], [ %6836, %8568 ]
  %8583 = phi float [ %8541, %8539 ], [ %8578, %8574 ], [ %8558, %8568 ]
  %8584 = phi float [ %8553, %8539 ], [ %8559, %8574 ], [ %8559, %8568 ]
  %8585 = phi float [ 1.000000e+00, %8539 ], [ %8579, %8574 ], [ %8560, %8568 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8586 = call float @dx.op.binary.f32(i32 36, float %8583, float 3.225500e+04)  ; FMin(a,b)
  %8587 = call float @dx.op.binary.f32(i32 36, float %8584, float 3.225500e+04)  ; FMin(a,b)
  %8588 = call float @dx.op.binary.f32(i32 36, float %8585, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8586)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8587)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8588)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8589 = call float @dx.op.binary.f32(i32 36, float %6832, float 3.225500e+04)  ; FMin(a,b)
  %8590 = call float @dx.op.binary.f32(i32 36, float %8581, float 3.225500e+04)  ; FMin(a,b)
  %8591 = call float @dx.op.binary.f32(i32 36, float %8582, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8589)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8590)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8591)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!84 = !{[28 x i32] [i32 26, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 0, i32 0, i32 0, i32 119, i32 119, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119]}
!85 = !{void ()* @ps_main, !"ps_main", !86, !4, !106}
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
!102 = !{!103, !104}
!103 = !{i32 0, !"SV_Target", i8 9, i8 16, !89, i8 0, i32 1, i8 4, i32 0, i8 0, !90}
!104 = !{i32 1, !"SV_Target", i8 9, i8 16, !105, i8 0, i32 1, i8 4, i32 1, i8 0, !90}
!105 = !{i32 1}
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
!156 = distinct !{!156, !157, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!157 = distinct !{!157, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!158 = distinct !{!158, !157, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!159 = distinct !{!159, !157, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!160 = distinct !{!160, !161, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!161 = distinct !{!161, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!162 = distinct !{!162, !161, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!163 = distinct !{!163, !161, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
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

