;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; NORMAL                   0   xyz         1     NONE   float   xyz 
; FOAMMASK                 0      w        1     NONE   float      w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; WATER_SUBTILE_ID         0   x           3     NONE    uint   x   
; SV_IsFrontFace           0    y          3    FFACE    uint    y  
; SV_ClipDistance          0   x           4  CLIPDST   float       
; SV_ClipDistance          1    y          4  CLIPDST   float       
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 33d103859712b4841bcfbca7645b1cfa
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
; NORMAL                   0                 linear       
; TEXCOORD                 0                 linear       
; FOAMMASK                 0                 linear       
; WATER_SUBTILE_ID         0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
; SV_ClipDistance          0                 linear       
; SV_ClipDistance          1                 linear       
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
;   [3376 x i8] (type annotation not present)
;
; }
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
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb5     1
;                                   cbuffer      NA          NA     CB1            cb3     1
;                                   cbuffer      NA          NA     CB2            cb2     1
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s2     1
;                                   sampler      NA          NA      S4             s3     1
;                                   sampler      NA          NA      S5             s4     1
;                                   sampler      NA          NA      S6             s5     1
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture     f32     2darray      T1      t0,space6unbounded
;                                   texture     f32          2d      T2     t69,space2     1
;                                   texture    byte         r/o      T3             t0     1
;                                   textureunorm_f32          2d      T4             t1     1
;                                   texture     f32          2d      T5             t3     1
;                                   texture     f32          2d      T6     t33,space2     1
;                                   texture    byte         r/o      T7     t45,space1     1
;                                   texture    byte         r/o      T8     t46,space1     1
;                                   texture    byte         r/o      T9     t47,space1     1
;                                   texture    byte         r/o     T10             t4     1
;                                   texture    byte         r/o     T11             t5     1
;                                   texture    byte         r/o     T12             t6     1
;                                   texture     f32          2d     T13             t2     1
;                                   texture     f32     2darray     T14     t16,space2     1
;                                   texture     f32          3d     T15     t15,space2     1
;                                   texture     f32          2d     T16     t13,space2     1
;                                   texture     u32          2d     T17     t17,space2     1
;                                   texture     f32          3d     T18     t18,space2     1
;                                   texture    byte         r/o     T19      t3,space1     1
;                                   texture    byte         r/o     T20      t4,space1     1
;                                   texture    byte         r/o     T21      t5,space1     1
;                                   texture    byte         r/o     T22      t6,space1     1
;                                   texture     f32          2d     T23     t37,space2     1
;                                   texture     f32          2d     T24             t7     1
;                                   texture     f32          2d     T25             t9     1
;                                   texture     f32          2d     T26     t50,space2     1
;                                   texture     f32          2d     T27            t10     1
;                                   texture     f32     2darray     T28     t35,space2     1
;                                   texture    byte         r/o     T29     t10,space1     1
;                                   texture    byte         r/o     T30      t1,space1     1
;                                   texture     f32          1d     T31     t32,space2     1
;                                   texture     f32          3d     T32     t82,space2     1
;                                   texture     f32          1d     T33     t30,space2     1
;                                   texture     f32          3d     T34     t44,space2     1
;                                   texture     f32          3d     T35     t45,space2     1
;                                   texture     f32     2darray     T36     t47,space2     1
;                                   texture     f32     2darray     T37      t8,space2     1
;                                   texture     f32          2d     T38      t2,space2     1
;                                   texture     f32          2d     T39      t3,space2     1
;                                   texture     f32          2d     T40      t4,space2     1
;                                   textureunorm_f32     2darray     T41     t80,space2     1
;                                   texture    byte         r/o     T42     t67,space1     1
;                                   texture     f32          2d     T43      t7,space2     1
;                                   texture     f32          2d     T44      t6,space2     1
;                                   texture     f32          2d     T45      t5,space2     1
;                                   texture     f32          2d     T46     t38,space2     1
;                                   texture    byte         r/o     T47     t12,space1     1
;                                   texture    byte         r/o     T48     t13,space1     1
;                                   texture     f32          2d     T49     t83,space2     1
;                                   texture     f32          2d     T50     t86,space2     1
;                                   texture    byte         r/o     T51     t16,space1     1
;                                   texture    byte         r/o     T52     t17,space1     1
;                                   texture     f32          2d     T53             t8     1
;                                   texture     f32     2darray     T54            t11     1
;                                       UAV  struct         r/w      U0             u9     1
;
;
; ViewId state:
;
; Number of inputs: 18, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13 }
;   output 3 depends on inputs: { 0, 1, 3, 12, 13 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%hostlayout.waterConstants = type { %hostlayout.struct.GfxWaterConstants }
%hostlayout.struct.GfxWaterConstants = type { i32, float, float, float, float, float, float, i32, <3 x float>, float, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, float, float, float, float, i32, float, float, float, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, float, float, float, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [16 x <4 x float>], [16 x <4 x float>], <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, [2 x <4 x i32>], [2 x <4 x i32>], [2 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], <4 x i32>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, float, float, float, float, <3 x float>, i32, <3 x float>, i32, float, i32, i32, i32, float, float, float, float, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, i32, i32, i32, float, i32, i32, float, i32, i32, float, float, i32, float, i32, i32, i32 }
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
@MSM_VOGEL_DISK.v.1dim = internal constant [32 x float] [float 0xBFD19D7780000000, float 0xBFA8ED4440000000, float 0xBFC0AF4F00000000, float 0x3FBE91B820000000, float 0x3FD088BDA0000000, float 0xBFC5090F80000000, float 0xBFB07314C0000000, float 0xBFDFBC1260000000, float 0xBFC4DBB5A0000000, float 0xBFD414A4E0000000, float 0xBFB5FAA700000000, float 0x3FD470B8C0000000, float 0x3FC3785720000000, float 0x3FC9652BE0000000, float 0x3FD68B32C0000000, float 0x3FC0773E20000000, float 0xBFD8F4E020000000, float 0xBFCCECF200000000, float 1.250000e-01, float 0.000000e+00, float 0x3FC0968940000000, float 0x3FDA714BA0000000, float 0xBFD76262C0000000, float 0x3FC34E3360000000, float 0x3FDD3C2DA0000000, float 0xBFB9B584C0000000, float 0xBFD1D1D8A0000000, float 0x3FD958C4C0000000, float 0x3F9361EA00000000, float 0xBFCB9B4DC0000000, float 0x3FC67DE500000000, float 0xBFD80828C0000000], align 4
@MSM_VOGEL_DISK_ROTATIONS.v.1dim = internal constant [128 x float] [float 1.000000e+00, float -0.000000e+00, float 0xBFE79886E0000000, float 0xBFE59D9D40000000, float 0x3FB6618480000000, float 0x3FEFE0A200000000, float 0x3FE3785520000000, float 0xBFE9652DE0000000, float 0xBFEF82C6E0000000, float 0x3FC64B9880000000, float 0x3FEB000A80000000, float 0x3FE12CE040000000, float 0xBFD09D5A20000000, float 0xBFEEE72320000000, float 0xBFDD7F8440000000, float 0x3FEC65F960000000, float 0x3FEE0EED00000000, float 0xBFD5F455A0000000, float 0xBFED943C00000000, float 0xBFD86B6E00000000, float 0x3FDB2046C0000000, float 0x3FECFBC800000000, float 0x3FD3277C40000000, float 0xBFEE888300000000, float 0xBFEBAFD120000000, float 0x3FE00B86C0000000, float 0x3FEF40EE00000000, float 0x3FCB7BFA40000000, float 0xBFE26772E0000000, float 0xBFEA2D9280000000, float 0xBFC07314C0000000, float 0x3FEFBC1260000000, float 0x3FE8780340000000, float 0xBFE49F4D40000000, float 0xBFEFF90100000000, float 0xBFA527CDA0000000, float 0x3FE6AEB800000000, float 0x3FE6927B20000000, float 0xBFA7A63080000000, float 0xBFEFF74260000000, float 0xBFE480B460000000, float 0x3FE891ADA0000000, float 0x3FEFB6D860000000, float 0xBFC11172E0000000, float 0xBFEA4475E0000000, float 0xBFE246B8C0000000, float 0x3FCC17E340000000, float 0x3FEF384120000000, float 0x3FDFD1D8A0000000, float 0xBFEBC3C180000000, float 0xBFEE7C7600000000, float 0x3FD373A360000000, float 0x3FED0C9DA0000000, float 0x3FDAD7DC00000000, float 0xBFD8B530C0000000, float 0xBFED84E840000000, float 0xBFD5A93F20000000, float 0x3FEE1C8860000000, float 0x3FEC537C20000000, float 0xBFDDC64BA0000000, float 0xBFEEF16900000000, float 0xBFD0502AC0000000, float 0x3FE14E8540000000, float 0x3FEAEA8540000000, float 0x3FC5AE3600000000, float 0xBFEF89A240000000, float 0xBFE94CCCC0000000, float 0x3FE397F840000000, float 0x3FEFE40640000000, float 0x3FB5232EE0000000, float 0xBFE5BAFFC0000000, float 0xBFE77D7A20000000, float 0x3F73F7DF00000000, float 0x3FEFFFE6E0000000, float 0x3FE5801B40000000, float 0xBFE7B36DE0000000, float 0xBFEFDD0B80000000, float 0x3FB79FB8A0000000, float 0x3FE97D6520000000, float 0x3FE3589480000000, float 0xBFC6E8D100000000, float 0xBFEF7BB940000000, float 0xBFE10B2200000000, float 0x3FEB1565C0000000, float 0x3FEEDCAD20000000, float 0xBFD0EA7040000000, float 0xBFEC784CA0000000, float 0xBFDD388A80000000, float 0x3FD63F4AA0000000, float 0x3FEE012160000000, float 0x3FD8218580000000, float 0xBFEDA361A0000000, float 0xBFECEAC420000000, float 0x3FDB688BE0000000, float 0x3FEE945FA0000000, float 0x3FD2DB37C0000000, float 0xBFE02E07E0000000, float 0xBFEB9BB4A0000000, float 0xBFCADFDF00000000, float 0x3FEF4968A0000000, float 0x3FEA168720000000, float 0xBFE28811C0000000, float 0xBFEFC11C20000000, float 0xBFBFA93B00000000, float 0x3FE4BDC6A0000000, float 0x3FE85E3320000000, float 0x3FA2A94CA0000000, float 0xBFEFFA8F80000000, float 0xBFE6761AA0000000, float 0x3FE6CAD360000000, float 0x3FEFF55160000000, float 0xBFAA246B20000000, float 0xBFE8AB3020000000, float 0xBFE461FA00000000, float 0x3FC1AFB7E0000000, float 0x3FEFB16C20000000, float 0x3FE225E360000000, float 0xBFEA5B3180000000, float 0xBFEF2F6620000000, float 0x3FCCB3AAC0000000, float 0x3FEBD78600000000, float 0x3FDF8C71A0000000, float 0xBFD3BFAD20000000, float 0xBFEE703B00000000, float 0xBFDA8F4300000000, float 0x3FED1D4740000000, float 0x3FED756640000000, float 0xBFD8FEC9A0000000], align 4
@"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim" = internal constant [8 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = alloca [4 x i32], align 4
  %65 = alloca [4 x float], align 4
  %66 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = icmp ne i32 %66, 0
  %68 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = alloca [12 x float], align 4
  %80 = alloca [12 x float], align 4
  %81 = alloca [3 x float], align 4
  %82 = alloca [3 x float], align 4
  %83 = alloca [4 x float], align 4
  %84 = alloca [4 x float], align 4
  %85 = alloca [4 x float], align 4
  %86 = alloca [4 x float], align 4
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = fmul fast float %88, %75
  %90 = fmul fast float %88, %76
  %91 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %92 = call float @dx.op.unary.f32(i32 25, float %91)  ; Rsqrt(value)
  %93 = fmul fast float %92, %72
  %94 = fmul fast float %92, %73
  %95 = fmul fast float %92, %74
  %96 = xor i1 %67, true
  %97 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %98 = extractvalue %dx.types.ResRet.i32 %97, 0
  %99 = icmp eq i32 %98, 0
  %100 = and i1 %99, %96
  %101 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.i32 %101, 0
  %103 = and i32 %102, 256
  %104 = icmp ne i32 %103, 0
  %105 = and i1 %100, %104
  %106 = or i1 %67, %105
  %107 = select i1 %106, float 1.000000e+00, float -1.000000e+00
  %108 = fmul fast float %93, %107
  %109 = fmul fast float %94, %107
  %110 = fmul fast float %95, %107
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %114 = fmul fast float %89, 2.000000e+00
  %115 = fmul fast float %114, %112
  %116 = fmul fast float %90, 2.000000e+00
  %117 = fmul fast float %116, %113
  %118 = fsub fast float 1.000000e+00, %115
  %119 = fsub fast float 1.000000e+00, %117
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fmul fast float %118, %121
  %125 = fmul fast float %118, %122
  %126 = fmul fast float %118, %123
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = fmul fast float %119, %128
  %132 = fmul fast float %119, %129
  %133 = fmul fast float %119, %130
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = fadd fast float %131, %135
  %139 = fadd fast float %138, %124
  %140 = fadd fast float %132, %136
  %141 = fadd fast float %140, %125
  %142 = fadd fast float %133, %137
  %143 = fadd fast float %142, %126
  %144 = fmul fast float %139, %78
  %145 = fmul fast float %141, %78
  %146 = fmul fast float %143, %78
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %149 = call float @dx.op.unary.f32(i32 83, float %70)  ; DerivCoarseX(value)
  %150 = call float @dx.op.unary.f32(i32 83, float %71)  ; DerivCoarseX(value)
  %151 = call float @dx.op.unary.f32(i32 84, float %70)  ; DerivCoarseY(value)
  %152 = call float @dx.op.unary.f32(i32 84, float %71)  ; DerivCoarseY(value)
  %153 = fmul fast float %149, %148
  %154 = fmul fast float %150, %148
  %155 = fmul fast float %151, %148
  %156 = fmul fast float %152, %148
  %157 = call float @dx.op.dot2.f32(i32 54, float %155, float %156, float %155, float %156)  ; Dot2(ax,ay,bx,by)
  %158 = call float @dx.op.dot2.f32(i32 54, float %153, float %154, float %153, float %154)  ; Dot2(ax,ay,bx,by)
  %159 = call float @dx.op.binary.f32(i32 35, float %158, float %157)  ; FMax(a,b)
  %160 = call float @dx.op.unary.f32(i32 23, float %159)  ; Log(value)
  %161 = fmul fast float %160, 5.000000e-01
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %164 = fadd fast float %163, %161
  %165 = call float @dx.op.binary.f32(i32 35, float %164, float 0.000000e+00)  ; FMax(a,b)
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 3
  %168 = fadd fast float %167, %165
  %169 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %170 = shl i32 %169, 16
  %171 = or i32 %170, %169
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %175 = fadd fast float %173, %144
  %176 = fadd fast float %174, %145
  %177 = fmul fast float %175, 0x3F53C37960000000
  %178 = fmul fast float %176, 0x3F53C37960000000
  %179 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %179, float %177, float %178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %184 = fmul fast float %183, %181
  %185 = shl i32 %68, 3
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = and i32 %187, 16383
  %189 = shl i32 %68, 2
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = and i32 %191, 255
  %193 = mul nuw nsw i32 %188, 148
  %194 = add nuw nsw i32 %193, 4
  %195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = add nuw nsw i32 %193, 8
  %198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.f32 %198, 0
  %200 = add nuw nsw i32 %193, 48
  %201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = add nuw nsw i32 %193, 104
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = fsub fast float 1.000000e+00, %71
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %209 = fmul fast float %208, %70
  %210 = fmul fast float %208, %206
  %211 = fadd fast float %209, %196
  %212 = fadd fast float %210, %199
  %213 = add nuw nsw i32 %193, 20
  %214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = add nuw nsw i32 %193, 24
  %217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.f32 %217, 0
  %219 = add nuw nsw i32 %193, 40
  %220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = add nuw nsw i32 %193, 52
  %225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = add nuw nsw i32 %193, 96
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = add nuw nsw i32 %193, 108
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 2
  %237 = fmul fast float %236, %70
  %238 = fmul fast float %236, %71
  %239 = extractvalue %dx.types.CBufRet.f32 %235, 3
  %240 = fadd fast float %237, %239
  %241 = fadd fast float %238, %239
  %242 = extractvalue %dx.types.CBufRet.f32 %235, 0
  %243 = fmul fast float %242, %70
  %244 = fmul fast float %242, %71
  %245 = extractvalue %dx.types.CBufRet.f32 %235, 1
  %246 = fadd fast float %243, %245
  %247 = fadd fast float %244, %245
  %248 = add i32 %229, 0
  %249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %248, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %250 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %249, i32 0)  ; GetDimensions(handle,mipLevel)
  %251 = extractvalue %dx.types.Dimensions %250, 0
  %252 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %251)  ; FirstbitLo(value)
  %253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.i32 %253, 1
  %255 = sub nsw i32 %254, %252
  %256 = sitofp i32 %255 to float
  %257 = fsub fast float %168, %256
  %258 = call float @dx.op.binary.f32(i32 35, float %257, float 0.000000e+00)  ; FMax(a,b)
  %259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %249, %dx.types.Handle %56, float %240, float %241, float %221, float undef, i32 0, i32 0, i32 undef, float %258)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = fmul fast float %260, %215
  %262 = add i32 %231, 0
  %263 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %262, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %264 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %263, i32 0)  ; GetDimensions(handle,mipLevel)
  %265 = extractvalue %dx.types.Dimensions %264, 0
  %266 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %265)  ; FirstbitLo(value)
  %267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %268 = extractvalue %dx.types.CBufRet.i32 %267, 1
  %269 = sub nsw i32 %268, %266
  %270 = sitofp i32 %269 to float
  %271 = fsub fast float %168, %270
  %272 = call float @dx.op.binary.f32(i32 35, float %271, float 0.000000e+00)  ; FMax(a,b)
  %273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %263, %dx.types.Handle %56, float %246, float %247, float %223, float undef, i32 0, i32 0, i32 undef, float %272)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = extractvalue %dx.types.ResRet.f32 %273, 1
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 3
  %278 = fmul fast float %277, 2.000000e+00
  %279 = fmul fast float %278, %274
  %280 = fmul fast float %278, %275
  %281 = fsub fast float %279, %277
  %282 = fsub fast float %280, %277
  %283 = fmul fast float %281, %281
  %284 = fmul fast float %282, %282
  %285 = fadd fast float %283, %284
  %286 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %287 = add i32 %234, 0
  %288 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %287, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %289 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %288, i32 0)  ; GetDimensions(handle,mipLevel)
  %290 = extractvalue %dx.types.Dimensions %289, 0
  %291 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %290)  ; FirstbitLo(value)
  %292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.i32 %292, 1
  %294 = sub nsw i32 %293, %291
  %295 = sitofp i32 %294 to float
  %296 = fsub fast float %168, %295
  %297 = call float @dx.op.binary.f32(i32 35, float %296, float 0.000000e+00)  ; FMax(a,b)
  %298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %288, %dx.types.Handle %56, float %246, float %247, float %226, float undef, i32 0, i32 0, i32 undef, float %297)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.i32 %300, 0
  %302 = call i32 @dx.op.binary.i32(i32 40, i32 %188, i32 %301)  ; UMin(a,b)
  %303 = mul i32 %302, 36
  %304 = add i32 %303, 4
  %305 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %192)  ; FirstbitLo(value)
  %306 = shl i32 %305, 2
  %307 = add i32 %304, %306
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 32767
  %311 = mul nuw nsw i32 %310, 928
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = or i32 %311, 8
  %315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = or i32 %311, 12
  %318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.f32 %318, 1
  %320 = or i32 %311, 20
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = or i32 %311, 24
  %324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.f32 %324, 0
  %326 = extractvalue %dx.types.ResRet.f32 %324, 1
  %327 = extractvalue %dx.types.ResRet.f32 %324, 2
  %328 = extractvalue %dx.types.ResRet.f32 %324, 3
  %329 = add nuw nsw i32 %311, 40
  %330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.f32 %330, 0
  %332 = add nuw nsw i32 %311, 80
  %333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = add nuw nsw i32 %311, 228
  %336 = add nuw nsw i32 %311, 516
  %337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 1
  %339 = add nuw nsw i32 %311, 552
  %340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.f32 %340, 0
  %342 = extractvalue %dx.types.ResRet.f32 %340, 1
  %343 = extractvalue %dx.types.ResRet.f32 %340, 2
  %344 = add nuw nsw i32 %311, 596
  %345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.f32 %345, 0
  %347 = extractvalue %dx.types.ResRet.f32 %345, 1
  %348 = add nuw nsw i32 %311, 620
  %349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 0
  %351 = extractvalue %dx.types.ResRet.f32 %349, 1
  %352 = add nuw nsw i32 %311, 628
  %353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.f32 %353, 0
  %355 = extractvalue %dx.types.ResRet.f32 %353, 1
  %356 = extractvalue %dx.types.ResRet.f32 %353, 2
  %357 = extractvalue %dx.types.ResRet.f32 %353, 3
  %358 = add nuw nsw i32 %311, 644
  %359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = add nuw nsw i32 %311, 648
  %362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.f32 %362, 0
  %364 = add nuw nsw i32 %311, 652
  %365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.f32 %365, 0
  %367 = add nuw nsw i32 %311, 656
  %368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = add nuw nsw i32 %311, 660
  %371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = add nuw nsw i32 %311, 664
  %374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.f32 %374, 0
  %376 = extractvalue %dx.types.ResRet.f32 %374, 1
  %377 = add nuw nsw i32 %311, 676
  %378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.f32 %378, 0
  %380 = extractvalue %dx.types.ResRet.f32 %378, 1
  %381 = add nuw nsw i32 %311, 696
  %382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.f32 %382, 0
  %384 = extractvalue %dx.types.ResRet.f32 %382, 1
  %385 = add nuw nsw i32 %311, 704
  %386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.f32 %386, 0
  %388 = add nuw nsw i32 %311, 708
  %389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = extractvalue %dx.types.ResRet.f32 %389, 1
  %392 = add nuw nsw i32 %311, 716
  %393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.f32 %393, 0
  %395 = add nuw nsw i32 %311, 720
  %396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = extractvalue %dx.types.ResRet.f32 %396, 1
  %399 = add nuw nsw i32 %311, 732
  %400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.f32 %400, 1
  %402 = add nuw nsw i32 %311, 744
  %403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.f32 %403, 0
  %405 = add nuw nsw i32 %311, 748
  %406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.f32 %406, 0
  %408 = add nuw nsw i32 %311, 752
  %409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.f32 %409, 0
  %411 = add nuw nsw i32 %311, 756
  %412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.f32 %412, 0
  %414 = extractvalue %dx.types.ResRet.f32 %412, 1
  %415 = extractvalue %dx.types.ResRet.f32 %412, 2
  %416 = extractvalue %dx.types.ResRet.f32 %412, 3
  %417 = add nuw nsw i32 %311, 780
  %418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = extractvalue %dx.types.ResRet.f32 %418, 1
  %421 = add nuw nsw i32 %311, 792
  %422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = extractvalue %dx.types.ResRet.f32 %422, 1
  %425 = add nuw nsw i32 %311, 800
  %426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = extractvalue %dx.types.ResRet.f32 %426, 1
  %429 = add nuw nsw i32 %311, 812
  %430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = add nuw nsw i32 %311, 816
  %433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.f32 %433, 1
  %435 = add nuw nsw i32 %311, 884
  %436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = extractvalue %dx.types.ResRet.f32 %436, 2
  %440 = add nuw nsw i32 %311, 896
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = add nuw nsw i32 %311, 900
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = add nuw nsw i32 %311, 904
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = add nuw nsw i32 %311, 908
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = add nuw nsw i32 %311, 912
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = add nuw nsw i32 %311, 916
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %313, 128
  %459 = icmp ne i32 %458, 0
  %460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.i32 %460, 0
  %462 = and i32 %461, 512
  %463 = icmp ne i32 %462, 0
  %464 = and i1 %459, %463
  %465 = select i1 %464, float 0.000000e+00, float 1.000000e+00
  %466 = call float @dx.op.unary.f32(i32 7, float %465)  ; Saturate(value)
  %467 = fmul fast float %466, 2.550000e+02
  %468 = fptoui float %467 to i32
  %469 = fcmp fast ole float %69, 0x3FA4B5DCC0000000
  %470 = fmul fast float %69, 0x3FB3D07220000000
  %471 = fadd fast float %69, 0x3FAC28F5C0000000
  %472 = fmul fast float %471, 0x3FEE54EDE0000000
  %473 = call float @dx.op.unary.f32(i32 23, float %472)  ; Log(value)
  %474 = fmul fast float %473, 0x4003333340000000
  %475 = call float @dx.op.unary.f32(i32 21, float %474)  ; Exp(value)
  %476 = select i1 %469, float %470, float %475
  %477 = call float @dx.op.unary.f32(i32 7, float %476)  ; Saturate(value)
  %478 = fmul fast float %346, %299
  %479 = fadd fast float %478, %347
  %480 = call float @dx.op.unary.f32(i32 7, float %479)  ; Saturate(value)
  %481 = call float @dx.op.binary.f32(i32 35, float %477, float %480)  ; FMax(a,b)
  %482 = add i32 %445, 0
  %483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %482, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %484 = fmul fast float %334, %286
  %485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %486 = extractvalue %dx.types.CBufRet.f32 %485, 0
  %487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.f32 %487, 0
  %489 = extractvalue %dx.types.CBufRet.f32 %487, 1
  %490 = fadd fast float %488, %144
  %491 = fadd fast float %489, %145
  %492 = fmul fast float %144, %144
  %493 = fmul fast float %145, %145
  %494 = fadd fast float %492, %493
  %495 = fmul fast float %146, %146
  %496 = fadd fast float %494, %495
  %497 = call float @dx.op.unary.f32(i32 24, float %496)  ; Sqrt(value)
  %498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %499 = extractvalue %dx.types.CBufRet.f32 %498, 0
  %500 = fcmp fast ogt float %497, %499
  %501 = zext i1 %500 to i32
  %502 = extractvalue %dx.types.CBufRet.f32 %498, 1
  %503 = fcmp fast ogt float %497, %502
  %504 = zext i1 %503 to i32
  %505 = add nuw nsw i32 %504, %501
  %506 = extractvalue %dx.types.CBufRet.f32 %498, 2
  %507 = fcmp fast ogt float %497, %506
  %508 = zext i1 %507 to i32
  %509 = add nuw nsw i32 %505, %508
  %510 = icmp ult i32 %509, 3
  %511 = zext i1 %510 to i32
  %512 = shl nuw nsw i32 %509, 2
  %513 = add nuw nsw i32 %512, 48
  %514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 %513)  ; CBufferLoadLegacy(handle,regIndex)
  %515 = extractvalue %dx.types.CBufRet.f32 %514, 1
  %516 = fcmp fast ogt float %497, %515
  %517 = zext i1 %516 to i32
  %518 = or i32 %512, 1
  %519 = add nuw nsw i32 %518, 48
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 %519)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 1
  %522 = fcmp fast ogt float %497, %521
  %523 = zext i1 %522 to i32
  %524 = add nuw nsw i32 %523, %517
  %525 = or i32 %512, 2
  %526 = add nuw nsw i32 %525, 48
  %527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 %526)  ; CBufferLoadLegacy(handle,regIndex)
  %528 = extractvalue %dx.types.CBufRet.f32 %527, 1
  %529 = fcmp fast ogt float %497, %528
  %530 = zext i1 %529 to i32
  %531 = add nuw nsw i32 %524, %530
  %532 = add i32 %322, -1
  %533 = call i32 @dx.op.binary.i32(i32 40, i32 %531, i32 %532)  ; UMin(a,b)
  %534 = add i32 %512, %533
  %535 = call i32 @dx.op.binary.i32(i32 40, i32 %534, i32 12)  ; UMin(a,b)
  %536 = add i32 %535, 48
  %537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 %536)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.f32 %537, 0
  %539 = fcmp fast oge float %497, %538
  %540 = zext i1 %539 to i32
  %541 = call i32 @dx.op.binary.i32(i32 40, i32 %322, i32 %511)  ; UMin(a,b)
  %542 = call i32 @dx.op.binary.i32(i32 40, i32 %540, i32 %541)  ; UMin(a,b)
  %543 = fmul fast float %484, 3.906250e-03
  %544 = add i32 %542, %322
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %722, label %546

; <label>:546                                     ; preds = %0
  br label %547

; <label>:547                                     ; preds = %547, %546
  %548 = phi float [ %718, %547 ], [ 0.000000e+00, %546 ]
  %549 = phi float [ %710, %547 ], [ 0.000000e+00, %546 ]
  %550 = phi float [ %711, %547 ], [ 0.000000e+00, %546 ]
  %551 = phi i32 [ %559, %547 ], [ %535, %546 ]
  %552 = phi i32 [ %719, %547 ], [ 0, %546 ]
  %553 = add i32 %552, %551
  %554 = and i32 %553, -4
  %555 = add i32 %554, %322
  %556 = icmp uge i32 %553, %555
  %557 = sub i32 4, %322
  %558 = select i1 %556, i32 %557, i32 0
  %559 = add i32 %558, %551
  %560 = add i32 %558, %553
  %561 = and i32 %560, 3
  %562 = lshr i32 %560, 2
  %563 = add i32 %560, 32
  %564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 %563)  ; CBufferLoadLegacy(handle,regIndex)
  %565 = extractvalue %dx.types.CBufRet.f32 %564, 0
  %566 = extractvalue %dx.types.CBufRet.f32 %564, 1
  %567 = extractvalue %dx.types.CBufRet.f32 %564, 2
  %568 = extractvalue %dx.types.CBufRet.f32 %564, 3
  %569 = fmul fast float %565, %497
  %570 = fadd fast float %569, %566
  %571 = call float @dx.op.unary.f32(i32 7, float %570)  ; Saturate(value)
  %572 = fmul fast float %567, %497
  %573 = fadd fast float %572, %568
  %574 = call float @dx.op.unary.f32(i32 7, float %573)  ; Saturate(value)
  %575 = call float @dx.op.binary.f32(i32 36, float %571, float %574)  ; FMin(a,b)
  %576 = mul nuw nsw i32 %561, 72
  %577 = add nuw nsw i32 %335, %576
  %578 = add nuw nsw i32 %577, 16
  %579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.f32 %579, 0
  %581 = extractvalue %dx.types.ResRet.f32 %579, 1
  %582 = extractvalue %dx.types.ResRet.f32 %579, 2
  %583 = extractvalue %dx.types.ResRet.f32 %579, 3
  %584 = add nuw nsw i32 %577, 36
  %585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.f32 %585, 0
  %587 = fmul fast float %543, %586
  %588 = add nuw nsw i32 %577, 56
  %589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.f32 %589, 0
  %591 = fmul fast float %587, %590
  %592 = extractvalue %dx.types.ResRet.f32 %589, 1
  %593 = fadd fast float %591, %592
  %594 = call float @dx.op.binary.f32(i32 35, float %593, float 0.000000e+00)  ; FMax(a,b)
  %595 = add nuw nsw i32 %577, 32
  %596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.f32 %596, 0
  %598 = fmul fast float %586, %281
  %599 = fmul fast float %586, %282
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 1
  %602 = add nuw nsw i32 %577, 40
  %603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = extractvalue %dx.types.ResRet.f32 %603, 1
  %606 = extractvalue %dx.types.ResRet.f32 %603, 2
  %607 = extractvalue %dx.types.ResRet.f32 %603, 3
  %608 = fadd fast float %601, %184
  %609 = fadd fast float %608, %606
  %610 = fmul fast float %608, %605
  %611 = call float @dx.op.unary.f32(i32 29, float %610)  ; Round_z(value)
  %612 = fmul fast float %604, %611
  %613 = fsub fast float %608, %612
  %614 = fmul fast float %609, %605
  %615 = call float @dx.op.unary.f32(i32 29, float %614)  ; Round_z(value)
  %616 = fmul fast float %615, %604
  %617 = fsub fast float %609, %616
  %618 = fmul fast float %613, %598
  %619 = fmul fast float %613, %599
  %620 = fmul fast float %617, %598
  %621 = fmul fast float %617, %599
  %622 = fsub fast float %490, %618
  %623 = fsub fast float %491, %619
  %624 = fsub fast float %490, %620
  %625 = fsub fast float %491, %621
  %626 = fsub fast float %606, %613
  %627 = call float @dx.op.unary.f32(i32 6, float %626)  ; FAbs(value)
  %628 = fmul fast float %627, %607
  %629 = call float @dx.op.unary.f32(i32 7, float %628)  ; Saturate(value)
  %630 = fmul fast float %316, 4.000000e+00
  %631 = uitofp i32 %562 to float
  %632 = fadd fast float %631, %630
  %633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %634 = extractvalue %dx.types.CBufRet.f32 %633, 0
  %635 = extractvalue %dx.types.CBufRet.f32 %633, 1
  %636 = extractvalue %dx.types.CBufRet.f32 %633, 2
  %637 = extractvalue %dx.types.CBufRet.f32 %633, 3
  %638 = getelementptr inbounds [4 x float], [4 x float]* %65, i32 0, i32 0
  store float %634, float* %638, align 4
  %639 = getelementptr inbounds [4 x float], [4 x float]* %65, i32 0, i32 1
  store float %635, float* %639, align 4
  %640 = getelementptr inbounds [4 x float], [4 x float]* %65, i32 0, i32 2
  store float %636, float* %640, align 4
  %641 = getelementptr inbounds [4 x float], [4 x float]* %65, i32 0, i32 3
  store float %637, float* %641, align 4
  %642 = getelementptr inbounds [4 x float], [4 x float]* %65, i32 0, i32 %562
  %643 = load float, float* %642, align 4, !tbaa !101, !noalias !105
  %644 = fmul fast float %643, %319
  %645 = fmul fast float %622, %580
  %646 = call float @dx.op.tertiary.f32(i32 46, float %581, float %623, float %645)  ; FMad(a,b,c)
  %647 = fmul fast float %622, %582
  %648 = call float @dx.op.tertiary.f32(i32 46, float %583, float %623, float %647)  ; FMad(a,b,c)
  %649 = add nuw nsw i32 %577, 8
  %650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.f32 %650, 0
  %652 = extractvalue %dx.types.ResRet.f32 %650, 1
  %653 = fadd fast float %651, %646
  %654 = fadd fast float %652, %648
  %655 = fmul fast float %653, %644
  %656 = fmul fast float %654, %644
  %657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.f32 %657, 0
  %659 = extractvalue %dx.types.ResRet.f32 %657, 1
  %660 = fmul fast float %655, %658
  %661 = fmul fast float %656, %659
  %662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.f32 %662, 2
  %664 = fadd fast float %660, %663
  %665 = fadd fast float %661, %663
  %666 = fmul fast float %624, %580
  %667 = call float @dx.op.tertiary.f32(i32 46, float %581, float %625, float %666)  ; FMad(a,b,c)
  %668 = fmul fast float %624, %582
  %669 = call float @dx.op.tertiary.f32(i32 46, float %583, float %625, float %668)  ; FMad(a,b,c)
  %670 = fadd fast float %651, %667
  %671 = fadd fast float %652, %669
  %672 = fmul fast float %670, %644
  %673 = fmul fast float %671, %644
  %674 = fmul fast float %672, %658
  %675 = fmul fast float %673, %659
  %676 = fadd fast float %674, %663
  %677 = fadd fast float %675, %663
  %678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %57, float %664, float %665, float %632, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %679 = extractvalue %dx.types.ResRet.f32 %678, 0
  %680 = extractvalue %dx.types.ResRet.f32 %678, 1
  %681 = extractvalue %dx.types.ResRet.f32 %678, 3
  %682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %57, float %676, float %677, float %632, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %683 = extractvalue %dx.types.ResRet.f32 %682, 0
  %684 = extractvalue %dx.types.ResRet.f32 %682, 1
  %685 = extractvalue %dx.types.ResRet.f32 %682, 3
  %686 = fsub fast float %683, %679
  %687 = fsub fast float %684, %680
  %688 = fsub fast float %685, %681
  %689 = fmul fast float %686, %629
  %690 = fmul fast float %687, %629
  %691 = fmul fast float %688, %629
  %692 = fadd fast float %689, %679
  %693 = fadd fast float %690, %680
  %694 = fadd fast float %691, %681
  %695 = fmul fast float %692, 2.000000e+00
  %696 = fmul fast float %693, 2.000000e+00
  %697 = fadd fast float %695, -1.000000e+00
  %698 = fadd fast float %696, -1.000000e+00
  %699 = fmul fast float %697, %580
  %700 = call float @dx.op.tertiary.f32(i32 46, float %698, float %582, float %699)  ; FMad(a,b,c)
  %701 = fmul fast float %697, %581
  %702 = call float @dx.op.tertiary.f32(i32 46, float %698, float %583, float %701)  ; FMad(a,b,c)
  %703 = fmul fast float %575, %486
  %704 = fmul fast float %703, %594
  %705 = fmul fast float %704, %597
  %706 = fmul fast float %700, %705
  %707 = fmul fast float %706, %658
  %708 = fmul fast float %702, %705
  %709 = fmul fast float %708, %659
  %710 = fadd fast float %707, %549
  %711 = fadd fast float %709, %550
  %712 = add nuw nsw i32 %577, 64
  %713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.f32 %713, 0
  %715 = fmul fast float %714, %694
  %716 = extractvalue %dx.types.ResRet.f32 %713, 1
  %717 = fadd fast float %715, %716
  %718 = call float @dx.op.binary.f32(i32 35, float %548, float %717)  ; FMax(a,b)
  %719 = add nuw i32 %552, 1
  %720 = icmp eq i32 %719, %544
  br i1 %720, label %721, label %547

; <label>:721                                     ; preds = %547
  br label %722

; <label>:722                                     ; preds = %721, %0
  %723 = phi float [ 0.000000e+00, %0 ], [ %718, %721 ]
  %724 = phi float [ 0.000000e+00, %0 ], [ %710, %721 ]
  %725 = phi float [ 0.000000e+00, %0 ], [ %711, %721 ]
  %726 = call float @dx.op.dot3.f32(i32 55, float %724, float %725, float 1.000000e+00, float %724, float %725, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %727 = call float @dx.op.unary.f32(i32 25, float %726)  ; Rsqrt(value)
  %728 = fmul fast float %727, %724
  %729 = fmul fast float %727, %725
  %730 = fmul fast float %723, %350
  %731 = fadd fast float %730, %351
  %732 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  %733 = fadd fast float %732, %481
  %734 = fmul fast float %390, %286
  %735 = fadd fast float %734, %391
  %736 = call float @dx.op.binary.f32(i32 35, float %735, float 0.000000e+00)  ; FMax(a,b)
  %737 = fmul fast float %736, %383
  %738 = fadd fast float %737, %384
  %739 = call float @dx.op.unary.f32(i32 7, float %738)  ; Saturate(value)
  %740 = fmul fast float %739, %733
  %741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.f32 %741, 1
  %743 = fcmp fast oge float %740, %742
  %744 = and i32 %313, 2
  %745 = icmp ne i32 %744, 0
  %746 = and i1 %745, %743
  br i1 %746, label %747, label %974

; <label>:747                                     ; preds = %722
  %748 = add i32 %205, 0
  %749 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %748, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %750 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %749, i32 0)  ; GetDimensions(handle,mipLevel)
  %751 = extractvalue %dx.types.Dimensions %750, 0
  %752 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %751)  ; FirstbitLo(value)
  %753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.i32 %753, 1
  %755 = sub nsw i32 %754, %752
  %756 = sitofp i32 %755 to float
  %757 = fsub fast float %343, %756
  %758 = call float @dx.op.binary.f32(i32 35, float %757, float 0.000000e+00)  ; FMax(a,b)
  %759 = fmul fast float %338, %211
  %760 = fmul fast float %338, %212
  %761 = fmul fast float %341, %70
  %762 = fmul fast float %341, %71
  %763 = call float @dx.op.unary.f32(i32 22, float %761)  ; Frc(value)
  %764 = call float @dx.op.unary.f32(i32 22, float %762)  ; Frc(value)
  %765 = fmul fast float %763, 2.000000e+00
  %766 = fmul fast float %764, 2.000000e+00
  %767 = fadd fast float %765, -1.000000e+00
  %768 = fadd fast float %766, -1.000000e+00
  %769 = call float @dx.op.unary.f32(i32 6, float %767)  ; FAbs(value)
  %770 = call float @dx.op.unary.f32(i32 6, float %768)  ; FAbs(value)
  %771 = fsub fast float 1.000000e+00, %769
  %772 = fmul fast float %771, %770
  %773 = fsub fast float %771, %772
  %774 = getelementptr [4 x float], [4 x float]* %86, i32 0, i32 0
  store float %773, float* %774, align 4, !tbaa !101, !noalias !110
  %775 = fmul fast float %770, %769
  %776 = fsub fast float %769, %775
  %777 = getelementptr [4 x float], [4 x float]* %86, i32 0, i32 1
  store float %776, float* %777, align 4, !tbaa !101, !noalias !110
  %778 = getelementptr [4 x float], [4 x float]* %86, i32 0, i32 2
  store float %772, float* %778, align 4, !tbaa !101, !noalias !110
  %779 = getelementptr [4 x float], [4 x float]* %86, i32 0, i32 3
  store float %775, float* %779, align 4, !tbaa !101, !noalias !110
  br label %780

; <label>:780                                     ; preds = %955, %747
  %781 = phi float [ 0.000000e+00, %747 ], [ %956, %955 ]
  %782 = phi float [ 0.000000e+00, %747 ], [ %957, %955 ]
  %783 = phi float [ 0.000000e+00, %747 ], [ %958, %955 ]
  %784 = phi float [ 0.000000e+00, %747 ], [ %959, %955 ]
  %785 = phi float [ 0.000000e+00, %747 ], [ %960, %955 ]
  %786 = phi i32 [ 0, %747 ], [ %961, %955 ]
  %787 = mul i32 %786, 2
  %788 = add i32 0, %787
  %789 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %788
  %790 = load float, float* %789, align 4
  %791 = mul i32 %786, 2
  %792 = add i32 1, %791
  %793 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %792
  %794 = load float, float* %793, align 4
  %795 = fmul fast float %790, 5.000000e-01
  %796 = fmul fast float %794, 5.000000e-01
  %797 = fsub fast float 1.000000e+00, %790
  %798 = fsub fast float 1.000000e+00, %794
  %799 = fmul fast float %797, 5.000000e-01
  %800 = fmul fast float %798, 5.000000e-01
  %801 = fadd fast float %795, %761
  %802 = fadd fast float %796, %762
  %803 = call float @dx.op.unary.f32(i32 27, float %801)  ; Round_ni(value)
  %804 = call float @dx.op.unary.f32(i32 27, float %802)  ; Round_ni(value)
  %805 = fadd fast float %803, %799
  %806 = fadd fast float %804, %800
  %807 = fmul fast float %805, %342
  %808 = fmul fast float %806, %342
  %809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.f32 %809, 0
  %811 = fmul fast float %807, %810
  %812 = fmul fast float %808, %810
  %813 = extractvalue %dx.types.CBufRet.f32 %809, 1
  %814 = fadd fast float %811, %813
  %815 = fadd fast float %812, %813
  %816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %749, %dx.types.Handle %59, float %814, float %815, float %202, float undef, i32 0, i32 0, i32 undef, float %758)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %817 = extractvalue %dx.types.ResRet.f32 %816, 0
  %818 = extractvalue %dx.types.ResRet.f32 %816, 1
  %819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %820 = extractvalue %dx.types.CBufRet.f32 %819, 3
  %821 = fmul fast float %820, 2.000000e+00
  %822 = fmul fast float %821, %817
  %823 = fmul fast float %821, %818
  %824 = fsub fast float %822, %820
  %825 = fsub fast float %823, %820
  %826 = fmul fast float %824, %824
  %827 = fmul fast float %825, %825
  %828 = fadd fast float %826, %827
  %829 = call float @dx.op.unary.f32(i32 24, float %828)  ; Sqrt(value)
  %830 = fcmp fast ogt float %829, 0.000000e+00
  %831 = fdiv fast float 1.000000e+00, %829
  %832 = fmul fast float %824, %831
  %833 = fmul fast float %825, %831
  %834 = select i1 %830, float %832, float 0.000000e+00
  %835 = select i1 %830, float %833, float 0.000000e+00
  %836 = fcmp fast ogt float %733, 0.000000e+00
  br i1 %836, label %837, label %955

; <label>:837                                     ; preds = %780
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 1
  %840 = fmul fast float %387, %338
  %841 = fmul fast float %829, %840
  %842 = fsub fast float -0.000000e+00, %834
  %843 = fmul fast float %835, %759
  %844 = call float @dx.op.tertiary.f32(i32 46, float %842, float %760, float %843)  ; FMad(a,b,c)
  %845 = fmul fast float %834, %759
  %846 = call float @dx.op.tertiary.f32(i32 46, float %835, float %760, float %845)  ; FMad(a,b,c)
  %847 = fmul fast float %841, %839
  %848 = fsub fast float %846, %847
  %849 = fmul fast float %844, %375
  %850 = fmul fast float %848, %376
  %851 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %852 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %483, %dx.types.Handle %851, float %849, float %850, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %853 = extractvalue %dx.types.ResRet.f32 %852, 0
  %854 = fmul fast float %737, %853
  %855 = fadd fast float %854, %384
  %856 = call float @dx.op.unary.f32(i32 7, float %855)  ; Saturate(value)
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 2
  %859 = fmul fast float %858, %78
  %860 = extractvalue %dx.types.CBufRet.f32 %857, 3
  %861 = fadd fast float %859, %860
  %862 = call float @dx.op.unary.f32(i32 7, float %861)  ; Saturate(value)
  %863 = fcmp fast ogt float %856, 0.000000e+00
  %864 = fcmp fast ogt float %862, 0.000000e+00
  %865 = and i1 %863, %864
  %866 = and i32 %313, 64
  %867 = icmp ne i32 %866, 0
  %868 = and i1 %867, %865
  br i1 %868, label %869, label %937

; <label>:869                                     ; preds = %837
  %870 = add i32 %451, 0
  %871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %870, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %872 = add i32 %454, 0
  %873 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %872, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %874 = fmul fast float %844, %379
  %875 = fmul fast float %848, %380
  %876 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %871, %dx.types.Handle %851, float %874, float %875, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %877 = extractvalue %dx.types.ResRet.f32 %876, 0
  %878 = extractvalue %dx.types.ResRet.f32 %876, 1
  %879 = extractvalue %dx.types.ResRet.f32 %876, 2
  %880 = extractvalue %dx.types.ResRet.f32 %876, 3
  %881 = fmul fast float %877, %437
  %882 = fadd fast float %881, %438
  %883 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %884 = fadd fast float %878, %880
  %885 = fmul fast float %884, %439
  %886 = fsub fast float %885, %439
  %887 = fsub fast float %878, %880
  %888 = fmul fast float %887, %439
  %889 = fmul fast float %886, %835
  %890 = call float @dx.op.tertiary.f32(i32 46, float %834, float %888, float %889)  ; FMad(a,b,c)
  %891 = fmul fast float %886, %842
  %892 = call float @dx.op.tertiary.f32(i32 46, float %835, float %888, float %891)  ; FMad(a,b,c)
  %893 = fmul fast float %890, %379
  %894 = fmul fast float %892, %380
  %895 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %873, %dx.types.Handle %851, float %874, float %875, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %896 = extractvalue %dx.types.ResRet.f32 %895, 0
  %897 = fsub fast float 1.000000e+00, %856
  %898 = bitcast float %856 to i32
  %899 = sitofp i32 %898 to float
  %900 = fadd fast float %899, 0xC1CFBF8940000000
  %901 = fmul fast float %900, %372
  %902 = fadd fast float %901, 0x41CFBF8940000000
  %903 = fptosi float %902 to i32
  %904 = bitcast i32 %903 to float
  %905 = bitcast float %897 to i32
  %906 = sitofp i32 %905 to float
  %907 = fadd fast float %906, 0xC1CFBF8940000000
  %908 = fmul fast float %907, %372
  %909 = fadd fast float %908, 0x41CFBF8940000000
  %910 = fptosi float %909 to i32
  %911 = bitcast i32 %910 to float
  %912 = fmul fast float %904, %369
  %913 = fmul fast float %911, %369
  %914 = fsub fast float %897, %912
  %915 = fadd fast float %913, %897
  %916 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %917 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  %918 = fsub fast float %896, %916
  %919 = fsub fast float %917, %916
  %920 = bitcast float %919 to i32
  %921 = sub nsw i32 2129859010, %920
  %922 = bitcast i32 %921 to float
  %923 = fmul fast float %922, %918
  %924 = call float @dx.op.unary.f32(i32 7, float %923)  ; Saturate(value)
  %925 = fmul fast float %862, %366
  %926 = fmul fast float %925, %924
  %927 = fmul fast float %893, %926
  %928 = fmul fast float %894, %926
  %929 = fadd fast float %879, -1.000000e+00
  %930 = fmul fast float %926, %929
  %931 = fadd fast float %930, 1.000000e+00
  %932 = fsub fast float %883, %360
  %933 = fmul fast float %926, %932
  %934 = fadd fast float %933, %360
  %935 = fmul fast float %926, %897
  %936 = fadd fast float %935, %856
  br label %937

; <label>:937                                     ; preds = %869, %837
  %938 = phi float [ %936, %869 ], [ %856, %837 ]
  %939 = phi float [ %934, %869 ], [ %360, %837 ]
  %940 = phi float [ %931, %869 ], [ 1.000000e+00, %837 ]
  %941 = phi float [ %927, %869 ], [ 0.000000e+00, %837 ]
  %942 = phi float [ %928, %869 ], [ 0.000000e+00, %837 ]
  %943 = getelementptr [4 x float], [4 x float]* %86, i32 0, i32 %786
  %944 = load float, float* %943, align 4, !tbaa !101, !noalias !110
  %945 = fmul fast float %944, %938
  %946 = fmul fast float %945, %941
  %947 = fmul fast float %945, %942
  %948 = fadd fast float %946, %781
  %949 = fadd fast float %947, %782
  %950 = fmul fast float %945, %940
  %951 = fadd fast float %950, %783
  %952 = fmul fast float %945, %939
  %953 = fadd fast float %952, %784
  %954 = fadd fast float %945, %785
  br label %955

; <label>:955                                     ; preds = %937, %780
  %956 = phi float [ %948, %937 ], [ %781, %780 ]
  %957 = phi float [ %949, %937 ], [ %782, %780 ]
  %958 = phi float [ %951, %937 ], [ %783, %780 ]
  %959 = phi float [ %953, %937 ], [ %784, %780 ]
  %960 = phi float [ %954, %937 ], [ %785, %780 ]
  %961 = add nuw nsw i32 %786, 1
  %962 = icmp eq i32 %961, 4
  br i1 %962, label %963, label %780, !llvm.loop !116

; <label>:963                                     ; preds = %955
  %964 = fmul fast float %960, %733
  %965 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %964)  ; FMax(a,b)
  %966 = fmul fast float %960, %956
  %967 = fmul fast float %960, %957
  %968 = fadd fast float %958, -1.000000e+00
  %969 = fmul fast float %960, %968
  %970 = fadd fast float %969, 1.000000e+00
  %971 = fsub fast float %959, %331
  %972 = fmul fast float %960, %971
  %973 = fadd fast float %972, %331
  br label %974

; <label>:974                                     ; preds = %963, %722
  %975 = phi float [ %965, %963 ], [ 0.000000e+00, %722 ]
  %976 = phi float [ %966, %963 ], [ 0.000000e+00, %722 ]
  %977 = phi float [ %967, %963 ], [ 0.000000e+00, %722 ]
  %978 = phi float [ %970, %963 ], [ 1.000000e+00, %722 ]
  %979 = phi float [ %973, %963 ], [ %331, %722 ]
  %980 = fmul fast float %423, %286
  %981 = fadd fast float %980, %424
  %982 = call float @dx.op.binary.f32(i32 35, float %981, float 0.000000e+00)  ; FMax(a,b)
  %983 = fmul fast float %982, %419
  %984 = fadd fast float %983, %420
  %985 = call float @dx.op.unary.f32(i32 7, float %984)  ; Saturate(value)
  %986 = fmul fast float %985, %733
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 1
  %989 = fcmp fast oge float %986, %988
  %990 = and i32 %313, 4
  %991 = icmp ne i32 %990, 0
  %992 = and i1 %991, %989
  br i1 %992, label %993, label %1282

; <label>:993                                     ; preds = %974
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 0
  %996 = extractvalue %dx.types.CBufRet.f32 %994, 1
  %997 = fsub fast float %144, %211
  %998 = fadd fast float %997, %995
  %999 = fsub fast float %145, %212
  %1000 = fadd fast float %999, %996
  %1001 = fmul fast float %998, %394
  %1002 = fmul fast float %1000, %394
  %1003 = fadd fast float %1001, %211
  %1004 = fadd fast float %1002, %212
  %1005 = add i32 %457, 0
  %1006 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1005, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1007 = fmul fast float %1003, %401
  %1008 = fmul fast float %1004, %401
  %1009 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1010 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1006, %dx.types.Handle %1009, float %1007, float %1008, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.ResRet.f32 %1010, 1
  %1013 = extractvalue %dx.types.ResRet.f32 %1010, 2
  %1014 = fmul fast float %1011, 2.000000e+00
  %1015 = fmul fast float %1012, 2.000000e+00
  %1016 = fadd fast float %1014, -1.000000e+00
  %1017 = fadd fast float %1015, -1.000000e+00
  %1018 = fmul fast float %1013, %397
  %1019 = fmul fast float %1018, %410
  %1020 = fmul fast float %1019, %1016
  %1021 = fmul fast float %1019, %1017
  %1022 = fsub fast float %281, %1020
  %1023 = fsub fast float %282, %1021
  %1024 = fmul fast float %1022, %407
  %1025 = fmul fast float %1023, %407
  %1026 = fadd fast float %1024, %1020
  %1027 = fadd fast float %1025, %1021
  %1028 = fmul fast float %1026, %410
  %1029 = fmul fast float %1027, %410
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 1
  %1032 = fmul fast float %410, %184
  %1033 = fadd fast float %1031, %1032
  %1034 = fadd fast float %1033, %415
  %1035 = fmul fast float %1033, %414
  %1036 = call float @dx.op.unary.f32(i32 29, float %1035)  ; Round_z(value)
  %1037 = fmul fast float %1036, %413
  %1038 = fsub fast float %1033, %1037
  %1039 = fmul fast float %1034, %414
  %1040 = call float @dx.op.unary.f32(i32 29, float %1039)  ; Round_z(value)
  %1041 = fmul fast float %1040, %413
  %1042 = fsub fast float %1034, %1041
  %1043 = fmul fast float %1028, %1038
  %1044 = fmul fast float %1029, %1038
  %1045 = fmul fast float %1028, %1042
  %1046 = fmul fast float %1029, %1042
  %1047 = fsub fast float %1003, %1043
  %1048 = fsub fast float %1004, %1044
  %1049 = fsub fast float %1003, %1045
  %1050 = fsub fast float %1004, %1046
  %1051 = fsub fast float %415, %1038
  %1052 = call float @dx.op.unary.f32(i32 6, float %1051)  ; FAbs(value)
  %1053 = fmul fast float %1052, %416
  %1054 = call float @dx.op.unary.f32(i32 7, float %1053)  ; Saturate(value)
  %1055 = fmul fast float %1047, %398
  %1056 = fmul fast float %1048, %398
  %1057 = fmul fast float %1049, %398
  %1058 = fmul fast float %1050, %398
  %1059 = fcmp fast ogt float %404, 0.000000e+00
  br i1 %1059, label %1060, label %1147

; <label>:1060                                    ; preds = %993
  %1061 = fmul fast float %404, %184
  %1062 = fmul fast float %1061, 5.000000e-01
  %1063 = fadd fast float %1062, 5.000000e-01
  %1064 = call float @dx.op.unary.f32(i32 22, float %1063)  ; Frc(value)
  %1065 = call float @dx.op.unary.f32(i32 22, float %1062)  ; Frc(value)
  %1066 = call float @dx.op.unary.f32(i32 27, float %1063)  ; Round_ni(value)
  %1067 = call float @dx.op.unary.f32(i32 27, float %1062)  ; Round_ni(value)
  %1068 = fmul fast float %1066, 2.000000e+00
  %1069 = fmul fast float %1067, 2.000000e+00
  %1070 = fadd fast float %1069, 1.000000e+00
  %1071 = fsub fast float 1.000000e+00, %1064
  %1072 = fsub fast float 1.000000e+00, %1065
  %1073 = call float @dx.op.binary.f32(i32 36, float %1064, float %1071)  ; FMin(a,b)
  %1074 = call float @dx.op.binary.f32(i32 36, float %1065, float %1072)  ; FMin(a,b)
  %1075 = fmul fast float %1073, 2.000000e+00
  %1076 = fmul fast float %1074, 2.000000e+00
  %1077 = call float @dx.op.dot3.f32(i32 55, float %1068, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1078 = call float @dx.op.dot3.f32(i32 55, float %1068, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1079 = call float @dx.op.dot3.f32(i32 55, float %1068, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1080 = call float @dx.op.unary.f32(i32 13, float %1077)  ; Sin(value)
  %1081 = call float @dx.op.unary.f32(i32 13, float %1078)  ; Sin(value)
  %1082 = call float @dx.op.unary.f32(i32 13, float %1079)  ; Sin(value)
  %1083 = fmul fast float %1080, 0x40E55DD180000000
  %1084 = fmul fast float %1081, 0x40E55DD180000000
  %1085 = fmul fast float %1082, 0x40E55DD180000000
  %1086 = call float @dx.op.unary.f32(i32 22, float %1083)  ; Frc(value)
  %1087 = call float @dx.op.unary.f32(i32 22, float %1084)  ; Frc(value)
  %1088 = call float @dx.op.unary.f32(i32 22, float %1085)  ; Frc(value)
  %1089 = fmul fast float %1086, 0x401921FB60000000
  %1090 = call float @dx.op.unary.f32(i32 12, float %1089)  ; Cos(value)
  %1091 = call float @dx.op.unary.f32(i32 13, float %1089)  ; Sin(value)
  %1092 = fsub fast float -0.000000e+00, %1091
  %1093 = call float @dx.op.dot3.f32(i32 55, float %1070, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1094 = call float @dx.op.dot3.f32(i32 55, float %1070, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1095 = call float @dx.op.dot3.f32(i32 55, float %1070, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1096 = call float @dx.op.unary.f32(i32 13, float %1093)  ; Sin(value)
  %1097 = call float @dx.op.unary.f32(i32 13, float %1094)  ; Sin(value)
  %1098 = call float @dx.op.unary.f32(i32 13, float %1095)  ; Sin(value)
  %1099 = fmul fast float %1096, 0x40E55DD180000000
  %1100 = fmul fast float %1097, 0x40E55DD180000000
  %1101 = fmul fast float %1098, 0x40E55DD180000000
  %1102 = call float @dx.op.unary.f32(i32 22, float %1099)  ; Frc(value)
  %1103 = call float @dx.op.unary.f32(i32 22, float %1100)  ; Frc(value)
  %1104 = call float @dx.op.unary.f32(i32 22, float %1101)  ; Frc(value)
  %1105 = fmul fast float %1102, 0x401921FB60000000
  %1106 = call float @dx.op.unary.f32(i32 12, float %1105)  ; Cos(value)
  %1107 = call float @dx.op.unary.f32(i32 13, float %1105)  ; Sin(value)
  %1108 = fsub fast float -0.000000e+00, %1107
  %1109 = fmul fast float %1090, %1055
  %1110 = call float @dx.op.tertiary.f32(i32 46, float %1056, float %1092, float %1109)  ; FMad(a,b,c)
  %1111 = fmul fast float %1091, %1055
  %1112 = call float @dx.op.tertiary.f32(i32 46, float %1056, float %1090, float %1111)  ; FMad(a,b,c)
  %1113 = fadd fast float %1110, %1087
  %1114 = fadd fast float %1112, %1088
  %1115 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %483, %dx.types.Handle %1009, float %1113, float %1114, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1116 = extractvalue %dx.types.ResRet.f32 %1115, 0
  %1117 = fmul fast float %1116, %1075
  %1118 = fmul fast float %1106, %1055
  %1119 = call float @dx.op.tertiary.f32(i32 46, float %1056, float %1108, float %1118)  ; FMad(a,b,c)
  %1120 = fmul fast float %1107, %1055
  %1121 = call float @dx.op.tertiary.f32(i32 46, float %1056, float %1106, float %1120)  ; FMad(a,b,c)
  %1122 = fadd fast float %1119, %1103
  %1123 = fadd fast float %1121, %1104
  %1124 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %483, %dx.types.Handle %1009, float %1122, float %1123, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1125 = extractvalue %dx.types.ResRet.f32 %1124, 0
  %1126 = fmul fast float %1125, %1076
  %1127 = fadd fast float %1126, %1117
  %1128 = fmul fast float %1090, %1057
  %1129 = call float @dx.op.tertiary.f32(i32 46, float %1058, float %1092, float %1128)  ; FMad(a,b,c)
  %1130 = fmul fast float %1091, %1057
  %1131 = call float @dx.op.tertiary.f32(i32 46, float %1058, float %1090, float %1130)  ; FMad(a,b,c)
  %1132 = fadd fast float %1129, %1087
  %1133 = fadd fast float %1131, %1088
  %1134 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %483, %dx.types.Handle %1009, float %1132, float %1133, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = fmul fast float %1135, %1075
  %1137 = fmul fast float %1106, %1057
  %1138 = call float @dx.op.tertiary.f32(i32 46, float %1058, float %1108, float %1137)  ; FMad(a,b,c)
  %1139 = fmul fast float %1107, %1057
  %1140 = call float @dx.op.tertiary.f32(i32 46, float %1058, float %1106, float %1139)  ; FMad(a,b,c)
  %1141 = fadd fast float %1138, %1103
  %1142 = fadd fast float %1140, %1104
  %1143 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %483, %dx.types.Handle %1009, float %1141, float %1142, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1144 = extractvalue %dx.types.ResRet.f32 %1143, 0
  %1145 = fmul fast float %1144, %1076
  %1146 = fadd fast float %1145, %1136
  br label %1152

; <label>:1147                                    ; preds = %993
  %1148 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %483, %dx.types.Handle %1009, float %1055, float %1056, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1149 = extractvalue %dx.types.ResRet.f32 %1148, 0
  %1150 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %483, %dx.types.Handle %1009, float %1057, float %1058, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1151 = extractvalue %dx.types.ResRet.f32 %1150, 0
  br label %1152

; <label>:1152                                    ; preds = %1147, %1060
  %1153 = phi float [ %1127, %1060 ], [ %1149, %1147 ]
  %1154 = phi float [ %1146, %1060 ], [ %1151, %1147 ]
  %1155 = fsub fast float %1154, %1153
  %1156 = fmul fast float %1155, %1054
  %1157 = fadd fast float %1156, %1153
  %1158 = fmul fast float %983, %1157
  %1159 = fadd fast float %1158, %420
  %1160 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  %1161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1162 = extractvalue %dx.types.CBufRet.f32 %1161, 2
  %1163 = fmul fast float %1162, %78
  %1164 = extractvalue %dx.types.CBufRet.f32 %1161, 3
  %1165 = fadd fast float %1163, %1164
  %1166 = call float @dx.op.unary.f32(i32 7, float %1165)  ; Saturate(value)
  %1167 = fcmp fast ogt float %1160, 0.000000e+00
  %1168 = fcmp fast ogt float %1166, 0.000000e+00
  %1169 = and i1 %1167, %1168
  %1170 = and i32 %313, 64
  %1171 = icmp ne i32 %1170, 0
  %1172 = and i1 %1171, %1169
  br i1 %1172, label %1173, label %1262

; <label>:1173                                    ; preds = %1152
  %1174 = add i32 %451, 0
  %1175 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1174, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1176 = fmul fast float %1055, %427
  %1177 = fmul fast float %1056, %428
  %1178 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1175, %dx.types.Handle %1009, float %1176, float %1177, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 0
  %1180 = extractvalue %dx.types.ResRet.f32 %1178, 1
  %1181 = extractvalue %dx.types.ResRet.f32 %1178, 2
  %1182 = extractvalue %dx.types.ResRet.f32 %1178, 3
  %1183 = fmul fast float %1179, %437
  %1184 = fadd fast float %1183, %438
  %1185 = call float @dx.op.unary.f32(i32 7, float %1184)  ; Saturate(value)
  %1186 = fadd fast float %1180, %1182
  %1187 = fmul fast float %1186, %439
  %1188 = fsub fast float %1187, %439
  %1189 = fsub fast float %1180, %1182
  %1190 = fmul fast float %1057, %427
  %1191 = fmul fast float %1058, %428
  %1192 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1175, %dx.types.Handle %1009, float %1190, float %1191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  %1194 = extractvalue %dx.types.ResRet.f32 %1192, 1
  %1195 = extractvalue %dx.types.ResRet.f32 %1192, 2
  %1196 = extractvalue %dx.types.ResRet.f32 %1192, 3
  %1197 = fmul fast float %1193, %437
  %1198 = fadd fast float %1197, %438
  %1199 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1200 = fsub fast float %1196, %1186
  %1201 = fadd fast float %1200, %1194
  %1202 = fsub fast float -0.000000e+00, %1189
  %1203 = fsub fast float %1202, %1196
  %1204 = fadd fast float %1203, %1194
  %1205 = fmul fast float %1054, %439
  %1206 = fmul fast float %1205, %1201
  %1207 = fmul fast float %1204, %1054
  %1208 = fadd fast float %1206, %1188
  %1209 = fmul fast float %427, %1208
  %1210 = fadd fast float %1207, %1189
  %1211 = fmul fast float %439, %1210
  %1212 = fmul fast float %428, %1211
  %1213 = fsub fast float %1195, %1181
  %1214 = fmul fast float %1213, %1054
  %1215 = fsub fast float %1199, %1185
  %1216 = fmul fast float %1215, %1054
  %1217 = fsub fast float %1193, %1179
  %1218 = fmul fast float %1217, %1054
  %1219 = fsub fast float 1.000000e+00, %1160
  %1220 = bitcast float %1160 to i32
  %1221 = sitofp i32 %1220 to float
  %1222 = fadd fast float %1221, 0xC1CFBF8940000000
  %1223 = fmul fast float %1222, %372
  %1224 = fadd fast float %1223, 0x41CFBF8940000000
  %1225 = fptosi float %1224 to i32
  %1226 = bitcast i32 %1225 to float
  %1227 = bitcast float %1219 to i32
  %1228 = sitofp i32 %1227 to float
  %1229 = fadd fast float %1228, 0xC1CFBF8940000000
  %1230 = fmul fast float %1229, %372
  %1231 = fadd fast float %1230, 0x41CFBF8940000000
  %1232 = fptosi float %1231 to i32
  %1233 = bitcast i32 %1232 to float
  %1234 = fmul fast float %1226, %369
  %1235 = fmul fast float %1233, %369
  %1236 = fsub fast float %1219, %1234
  %1237 = fadd fast float %1235, %1219
  %1238 = call float @dx.op.unary.f32(i32 7, float %1236)  ; Saturate(value)
  %1239 = call float @dx.op.unary.f32(i32 7, float %1237)  ; Saturate(value)
  %1240 = fsub fast float %1179, %1238
  %1241 = fadd fast float %1240, %1218
  %1242 = fsub fast float %1239, %1238
  %1243 = bitcast float %1242 to i32
  %1244 = sub nsw i32 2129859010, %1243
  %1245 = bitcast i32 %1244 to float
  %1246 = fmul fast float %1245, %1241
  %1247 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  %1248 = fmul fast float %1166, %366
  %1249 = fmul fast float %1248, %1247
  %1250 = fmul fast float %1209, %1249
  %1251 = fmul fast float %1212, %1249
  %1252 = fadd fast float %1181, -1.000000e+00
  %1253 = fadd fast float %1252, %1214
  %1254 = fmul fast float %1249, %1253
  %1255 = fadd fast float %1254, 1.000000e+00
  %1256 = fsub fast float %1185, %360
  %1257 = fadd fast float %1256, %1216
  %1258 = fmul fast float %1249, %1257
  %1259 = fadd fast float %1258, %360
  %1260 = fmul fast float %1249, %1219
  %1261 = fadd fast float %1260, %1160
  br label %1262

; <label>:1262                                    ; preds = %1173, %1152
  %1263 = phi float [ %1261, %1173 ], [ %1160, %1152 ]
  %1264 = phi float [ %1250, %1173 ], [ 0.000000e+00, %1152 ]
  %1265 = phi float [ %1251, %1173 ], [ 0.000000e+00, %1152 ]
  %1266 = phi float [ %1255, %1173 ], [ 1.000000e+00, %1152 ]
  %1267 = phi float [ %1259, %1173 ], [ %360, %1152 ]
  %1268 = fsub fast float %1264, %976
  %1269 = fsub fast float %1265, %977
  %1270 = fmul fast float %1268, %1263
  %1271 = fmul fast float %1269, %1263
  %1272 = fadd fast float %1270, %976
  %1273 = fadd fast float %1271, %977
  %1274 = fsub fast float %1266, %978
  %1275 = fmul fast float %1274, %1263
  %1276 = fadd fast float %1275, %978
  %1277 = fsub fast float %1267, %979
  %1278 = fmul fast float %1277, %1263
  %1279 = fadd fast float %1278, %979
  %1280 = fmul fast float %1263, %733
  %1281 = call float @dx.op.binary.f32(i32 35, float %975, float %1280)  ; FMax(a,b)
  br label %1282

; <label>:1282                                    ; preds = %1262, %974
  %1283 = phi float [ %1281, %1262 ], [ %975, %974 ]
  %1284 = phi float [ %1272, %1262 ], [ %976, %974 ]
  %1285 = phi float [ %1273, %1262 ], [ %977, %974 ]
  %1286 = phi float [ %1276, %1262 ], [ %978, %974 ]
  %1287 = phi float [ %1279, %1262 ], [ %979, %974 ]
  %1288 = and i32 %313, 16
  %1289 = icmp eq i32 %1288, 0
  br i1 %1289, label %1356, label %1290

; <label>:1290                                    ; preds = %1282
  %1291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1292 = extractvalue %dx.types.CBufRet.f32 %1291, 0
  %1293 = extractvalue %dx.types.CBufRet.f32 %1291, 1
  %1294 = fadd fast float %1292, %144
  %1295 = fadd fast float %1293, %145
  %1296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1297 = extractvalue %dx.types.CBufRet.f32 %1296, 0
  %1298 = extractvalue %dx.types.CBufRet.f32 %1296, 1
  %1299 = fsub fast float %1294, %1297
  %1300 = fsub fast float %1295, %1298
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1303 = fmul fast float %1299, %1302
  %1304 = fmul fast float %1300, %1302
  %1305 = fadd fast float %1303, 5.000000e-01
  %1306 = fadd fast float %1304, 5.000000e-01
  %1307 = fcmp fast olt float %1305, 0.000000e+00
  %1308 = fcmp fast olt float %1306, 0.000000e+00
  %1309 = or i1 %1307, %1308
  %1310 = fcmp fast oge float %1305, 1.000000e+00
  %1311 = fcmp fast oge float %1306, 1.000000e+00
  %1312 = or i1 %1310, %1311
  %1313 = or i1 %1309, %1312
  br i1 %1313, label %1347, label %1314

; <label>:1314                                    ; preds = %1290
  %1315 = extractvalue %dx.types.CBufRet.f32 %1291, 2
  %1316 = fadd fast float %1315, %146
  %1317 = fmul fast float %1302, %1294
  %1318 = fmul fast float %1302, %1295
  %1319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %1320 = extractvalue %dx.types.CBufRet.f32 %1319, 2
  %1321 = fsub fast float %1316, %1320
  %1322 = extractvalue %dx.types.CBufRet.f32 %1319, 1
  %1323 = fmul fast float %1321, %1322
  %1324 = call float @dx.op.unary.f32(i32 7, float %1323)  ; Saturate(value)
  %1325 = call float @dx.op.binary.f32(i32 36, float %1306, float %1324)  ; FMin(a,b)
  %1326 = call float @dx.op.binary.f32(i32 36, float %1305, float %1325)  ; FMin(a,b)
  %1327 = call float @dx.op.binary.f32(i32 35, float %1306, float %1324)  ; FMax(a,b)
  %1328 = call float @dx.op.binary.f32(i32 35, float %1305, float %1327)  ; FMax(a,b)
  %1329 = fsub fast float 1.000000e+00, %1328
  %1330 = call float @dx.op.binary.f32(i32 36, float %1326, float %1329)  ; FMin(a,b)
  %1331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %1332 = extractvalue %dx.types.CBufRet.f32 %1331, 3
  %1333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %1334 = extractvalue %dx.types.CBufRet.f32 %1333, 1
  %1335 = call float @dx.op.binary.f32(i32 35, float %1334, float %1332)  ; FMax(a,b)
  %1336 = fsub fast float %1335, %1334
  %1337 = fsub fast float %1330, %1334
  %1338 = fdiv fast float %1337, %1336
  %1339 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  %1340 = fmul fast float %1339, 2.000000e+00
  %1341 = fsub fast float 3.000000e+00, %1340
  %1342 = fmul fast float %1339, %1339
  %1343 = fmul fast float %1342, %1341
  %1344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %57, float %1317, float %1318, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1345 = extractvalue %dx.types.ResRet.f32 %1344, 0
  %1346 = fmul fast float %1343, %1345
  br label %1347

; <label>:1347                                    ; preds = %1314, %1290
  %1348 = phi float [ %1346, %1314 ], [ 0.000000e+00, %1290 ]
  %1349 = fmul fast float %434, %211
  %1350 = fmul fast float %434, %212
  %1351 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1352 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %483, %dx.types.Handle %1351, float %1349, float %1350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1353 = extractvalue %dx.types.ResRet.f32 %1352, 0
  %1354 = fmul fast float %1353, %1348
  %1355 = call float @dx.op.binary.f32(i32 35, float %1283, float %1354)  ; FMax(a,b)
  br label %1356

; <label>:1356                                    ; preds = %1347, %1282
  %1357 = phi float [ %1355, %1347 ], [ %1283, %1282 ]
  %1358 = and i32 %313, 8
  %1359 = icmp eq i32 %1358, 0
  br i1 %1359, label %1376, label %1360

; <label>:1360                                    ; preds = %1356
  %1361 = fadd fast float %431, 1.000000e+00
  %1362 = fmul fast float %733, %1361
  %1363 = fsub fast float %1362, %431
  %1364 = fsub fast float %1361, %1363
  %1365 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1366 = fsub fast float 1.000000e+00, %1362
  %1367 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  %1368 = fsub fast float %1365, %1367
  %1369 = fsub fast float %1357, %1367
  %1370 = fdiv fast float %1369, %1368
  %1371 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1372 = fmul fast float %1371, 2.000000e+00
  %1373 = fsub fast float 3.000000e+00, %1372
  %1374 = fmul fast float %1371, %1371
  %1375 = fmul fast float %1374, %1373
  br label %1376

; <label>:1376                                    ; preds = %1360, %1356
  %1377 = phi float [ %1375, %1360 ], [ %1357, %1356 ]
  %1378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.f32 %1378, 3
  %1380 = fmul fast float %1379, %1377
  %1381 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1382 = and i32 %313, 32
  %1383 = icmp eq i32 %1382, 0
  br i1 %1383, label %1400, label %1384

; <label>:1384                                    ; preds = %1376
  %1385 = add i32 %448, 0
  %1386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1385, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1386, %dx.types.Handle %58, float %1380, float %363, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1388 = extractvalue %dx.types.ResRet.f32 %1387, 0
  %1389 = extractvalue %dx.types.ResRet.f32 %1387, 1
  %1390 = extractvalue %dx.types.ResRet.f32 %1387, 2
  %1391 = extractvalue %dx.types.ResRet.f32 %1387, 3
  %1392 = and i32 %442, 255
  %1393 = uitofp i32 %1392 to float
  %1394 = lshr i32 %442, 8
  %1395 = and i32 %1394, 255
  %1396 = uitofp i32 %1395 to float
  %1397 = fmul fast float %1391, %1393
  %1398 = fadd fast float %1397, %1396
  %1399 = fmul fast float %1398, 0x3F70101000000000
  br label %1400

; <label>:1400                                    ; preds = %1384, %1376
  %1401 = phi float [ %1388, %1384 ], [ %354, %1376 ]
  %1402 = phi float [ %1389, %1384 ], [ %355, %1376 ]
  %1403 = phi float [ %1390, %1384 ], [ %356, %1376 ]
  %1404 = phi float [ %1399, %1384 ], [ %357, %1376 ]
  %1405 = fsub fast float %1401, %325
  %1406 = fsub fast float %1402, %326
  %1407 = fsub fast float %1403, %327
  %1408 = fmul fast float %1405, %1380
  %1409 = fmul fast float %1406, %1380
  %1410 = fmul fast float %1407, %1380
  %1411 = fadd fast float %1408, %325
  %1412 = fadd fast float %1409, %326
  %1413 = fadd fast float %1410, %327
  %1414 = fsub fast float %1404, %328
  %1415 = fmul fast float %1414, %1380
  %1416 = fadd fast float %1415, %328
  %1417 = fsub fast float %1287, %331
  %1418 = fmul fast float %1380, %1417
  %1419 = fadd fast float %1418, %331
  %1420 = fadd fast float %1286, -1.000000e+00
  %1421 = fmul fast float %1380, %1420
  %1422 = fadd fast float %1421, 1.000000e+00
  %1423 = fmul fast float %1380, %1284
  %1424 = fmul fast float %1380, %1285
  %1425 = fadd fast float %1423, %728
  %1426 = fadd fast float %1424, %729
  %1427 = and i32 %169, 65535
  %1428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1427)  ; LegacyF16ToF32(value)
  %1429 = lshr i32 %171, 16
  %1430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1429)  ; LegacyF16ToF32(value)
  %1431 = fadd fast float %1411, %1428
  %1432 = fadd fast float %1412, %1430
  %1433 = fadd fast float %1413, %1428
  %1434 = fadd fast float %1416, %1430
  %1435 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1431)  ; LegacyF32ToF16(value)
  %1436 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1432)  ; LegacyF32ToF16(value)
  %1437 = shl i32 %1436, 16
  %1438 = or i32 %1437, %1435
  %1439 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1433)  ; LegacyF32ToF16(value)
  %1440 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1434)  ; LegacyF32ToF16(value)
  %1441 = shl i32 %1440, 16
  %1442 = or i32 %1441, %1439
  %1443 = fadd fast float %1422, %1428
  %1444 = fadd fast float %1419, %1430
  %1445 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1443)  ; LegacyF32ToF16(value)
  %1446 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1444)  ; LegacyF32ToF16(value)
  %1447 = shl i32 %1446, 16
  %1448 = or i32 %1447, %1445
  %1449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1450 = extractvalue %dx.types.CBufRet.f32 %1449, 0
  %1451 = extractvalue %dx.types.CBufRet.f32 %1449, 1
  %1452 = extractvalue %dx.types.CBufRet.f32 %1449, 2
  %1453 = fadd fast float %1450, %144
  %1454 = fadd fast float %1451, %145
  %1455 = fadd fast float %1452, %146
  %1456 = call float @dx.op.unary.f32(i32 83, float %1453)  ; DerivCoarseX(value)
  %1457 = call float @dx.op.unary.f32(i32 83, float %1454)  ; DerivCoarseX(value)
  %1458 = call float @dx.op.unary.f32(i32 83, float %1455)  ; DerivCoarseX(value)
  %1459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1460 = extractvalue %dx.types.CBufRet.f32 %1459, 2
  %1461 = fmul fast float %1460, %1456
  %1462 = fmul fast float %1460, %1457
  %1463 = fmul fast float %1460, %1458
  %1464 = call float @dx.op.unary.f32(i32 84, float %1453)  ; DerivCoarseY(value)
  %1465 = call float @dx.op.unary.f32(i32 84, float %1454)  ; DerivCoarseY(value)
  %1466 = call float @dx.op.unary.f32(i32 84, float %1455)  ; DerivCoarseY(value)
  %1467 = fmul fast float %1460, %1464
  %1468 = fmul fast float %1460, %1465
  %1469 = fmul fast float %1460, %1466
  %1470 = fmul fast float %1469, %1462
  %1471 = fmul fast float %1468, %1463
  %1472 = fsub fast float %1470, %1471
  %1473 = fmul fast float %1467, %1463
  %1474 = fmul fast float %1469, %1461
  %1475 = fsub fast float %1473, %1474
  %1476 = fmul fast float %1468, %1461
  %1477 = fmul fast float %1467, %1462
  %1478 = fsub fast float %1476, %1477
  %1479 = add nuw nsw i32 %311, 832
  %1480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1479, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.f32 %1480, 0
  %1482 = add nuw nsw i32 %311, 836
  %1483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1482, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.f32 %1483, 0
  %1485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1486 = extractvalue %dx.types.CBufRet.f32 %1485, 0
  %1487 = fmul fast float %1486, %1484
  %1488 = extractvalue %dx.types.CBufRet.f32 %1485, 1
  %1489 = fadd fast float %1487, %1488
  %1490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 210)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1490, 0
  %1492 = fadd fast float %1491, %1481
  %1493 = fcmp fast ogt float %1489, 0.000000e+00
  %1494 = fcmp fast ogt float %1381, %1492
  %1495 = and i1 %1493, %1494
  br i1 %1495, label %1496, label %1573

; <label>:1496                                    ; preds = %1400
  %1497 = fmul fast float %1472, %1472
  %1498 = fmul fast float %1475, %1475
  %1499 = fadd fast float %1497, %1498
  %1500 = fmul fast float %1478, %1478
  %1501 = fadd fast float %1499, %1500
  %1502 = call float @dx.op.unary.f32(i32 24, float %1501)  ; Sqrt(value)
  %1503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1504 = extractvalue %dx.types.CBufRet.f32 %1503, 3
  %1505 = fmul fast float %1453, 7.000000e+00
  %1506 = fadd fast float %1505, 9.175040e+05
  %1507 = fmul fast float %1454, 9.000000e+00
  %1508 = fadd fast float %1507, 1.179648e+06
  %1509 = fmul fast float %1504, 1.370000e+02
  %1510 = bitcast float %1506 to i32
  %1511 = bitcast float %1508 to i32
  %1512 = bitcast float %1509 to i32
  %1513 = shl i32 %1511, 17
  %1514 = xor i32 %1513, %1510
  %1515 = xor i32 %1514, %1512
  %1516 = xor i32 %1515, 61
  %1517 = lshr i32 %1515, 16
  %1518 = xor i32 %1516, %1517
  %1519 = mul i32 %1518, 9
  %1520 = lshr i32 %1519, 4
  %1521 = xor i32 %1520, %1519
  %1522 = mul i32 %1521, 668265261
  %1523 = lshr i32 %1522, 15
  %1524 = xor i32 %1523, %1522
  %1525 = uitofp i32 %1524 to float
  %1526 = fmul fast float %1525, 0x3DF0000000000000
  %1527 = fmul fast float %1502, %1489
  %1528 = fcmp fast ugt float %1526, %1527
  br i1 %1528, label %1573, label %1529

; <label>:1529                                    ; preds = %1496
  %1530 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 0, i32 undef, i32 6)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1531 = add i32 %1530, 6
  %1532 = icmp ugt i32 %1531, 4095
  br i1 %1532, label %1533, label %1536

; <label>:1533                                    ; preds = %1529
  %1534 = icmp ult i32 %1530, 4096
  br i1 %1534, label %1535, label %1536

; <label>:1535                                    ; preds = %1533
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1530, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1536

; <label>:1536                                    ; preds = %1535, %1533, %1529
  %1537 = phi i32 [ %1530, %1529 ], [ 0, %1535 ], [ 0, %1533 ]
  %1538 = icmp eq i32 %1537, 0
  br i1 %1538, label %1573, label %1539

; <label>:1539                                    ; preds = %1536
  %1540 = fsub fast float -0.000000e+00, %218
  %1541 = fsub fast float %1540, %261
  %1542 = fadd fast float %1541, %1455
  %1543 = shl nuw nsw i32 %310, 16
  %1544 = or i32 %1543, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1537, i32 0, i32 %1544, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1545 = bitcast float %1542 to i32
  %1546 = add i32 %1537, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1546, i32 0, i32 %1545, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1547 = bitcast float %1453 to i32
  %1548 = add i32 %1537, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1548, i32 0, i32 %1547, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1549 = bitcast float %1454 to i32
  %1550 = add i32 %1537, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1550, i32 0, i32 %1549, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1551 = bitcast float %1455 to i32
  %1552 = add i32 %1537, 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1552, i32 0, i32 %1551, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1553 = fadd fast float %108, 1.000000e+00
  %1554 = fadd fast float %109, 1.000000e+00
  %1555 = fadd fast float %110, 1.000000e+00
  %1556 = fmul fast float %1553, 5.000000e-01
  %1557 = fmul fast float %1554, 5.000000e-01
  %1558 = fmul fast float %1555, 5.000000e-01
  %1559 = call float @dx.op.unary.f32(i32 7, float %1556)  ; Saturate(value)
  %1560 = call float @dx.op.unary.f32(i32 7, float %1557)  ; Saturate(value)
  %1561 = call float @dx.op.unary.f32(i32 7, float %1558)  ; Saturate(value)
  %1562 = fmul fast float %1559, 1.023000e+03
  %1563 = fmul fast float %1560, 1.023000e+03
  %1564 = fmul fast float %1561, 1.023000e+03
  %1565 = fptoui float %1562 to i32
  %1566 = fptoui float %1563 to i32
  %1567 = fptoui float %1564 to i32
  %1568 = shl i32 %1566, 10
  %1569 = or i32 %1568, %1565
  %1570 = shl i32 %1567, 20
  %1571 = or i32 %1569, %1570
  %1572 = add i32 %1537, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1572, i32 0, i32 %1571, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1573

; <label>:1573                                    ; preds = %1539, %1536, %1496, %1400
  %1574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1575 = extractvalue %dx.types.CBufRet.f32 %1574, 2
  %1576 = fmul fast float %1575, 0x3FE3C6EF40000000
  %1577 = frem fast float %89, 2.560000e+02
  %1578 = frem fast float %90, 2.560000e+02
  %1579 = fptoui float %1577 to i32
  %1580 = fptoui float %1578 to i32
  %1581 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %33, i32 0, i32 %1579, i32 %1580, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1582 = extractvalue %dx.types.ResRet.f32 %1581, 0
  %1583 = extractvalue %dx.types.ResRet.f32 %1581, 1
  %1584 = fadd fast float %1582, %1576
  %1585 = fadd fast float %1583, %1576
  %1586 = call float @dx.op.unary.f32(i32 22, float %1584)  ; Frc(value)
  %1587 = call float @dx.op.unary.f32(i32 22, float %1585)  ; Frc(value)
  %1588 = fcmp fast ogt float %110, 0.000000e+00
  %1589 = fcmp fast olt float %110, 0.000000e+00
  %1590 = zext i1 %1588 to i32
  %1591 = zext i1 %1589 to i32
  %1592 = sub nsw i32 %1590, %1591
  %1593 = sitofp i32 %1592 to float
  %1594 = fadd fast float %1593, %110
  %1595 = fdiv fast float -1.000000e+00, %1594
  %1596 = fmul fast float %108, %109
  %1597 = fmul fast float %1596, %1595
  %1598 = fmul fast float %108, %108
  %1599 = fmul fast float %1598, %1593
  %1600 = fmul fast float %1599, %1595
  %1601 = fadd fast float %1600, 1.000000e+00
  %1602 = fmul fast float %1597, %1593
  %1603 = fmul fast float %108, %1593
  %1604 = fsub fast float -0.000000e+00, %1603
  %1605 = fmul fast float %109, %109
  %1606 = fmul fast float %1605, %1595
  %1607 = fadd fast float %1606, %1593
  %1608 = fsub fast float -0.000000e+00, %109
  %1609 = and i32 %1435, 65535
  %1610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1609)  ; LegacyF16ToF32(value)
  %1611 = lshr i32 %1438, 16
  %1612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1611)  ; LegacyF16ToF32(value)
  %1613 = and i32 %1439, 65535
  %1614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1613)  ; LegacyF16ToF32(value)
  %1615 = lshr i32 %1442, 16
  %1616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1615)  ; LegacyF16ToF32(value)
  %1617 = and i32 %1445, 65535
  %1618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1617)  ; LegacyF16ToF32(value)
  %1619 = lshr i32 %1448, 16
  %1620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1619)  ; LegacyF16ToF32(value)
  %1621 = call float @dx.op.unary.f32(i32 7, float %1620)  ; Saturate(value)
  %1622 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %1623 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %1624 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %1625 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %1626 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %1627 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %1628 = fadd fast float %1622, %144
  %1629 = fadd fast float %1623, %145
  %1630 = fadd fast float %1624, %146
  %1631 = fadd fast float %1625, %144
  %1632 = fadd fast float %1626, %145
  %1633 = fadd fast float %1627, %146
  %1634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1635 = extractvalue %dx.types.CBufRet.f32 %1634, 0
  %1636 = extractvalue %dx.types.CBufRet.f32 %1634, 1
  %1637 = extractvalue %dx.types.CBufRet.f32 %1634, 2
  %1638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1639 = extractvalue %dx.types.CBufRet.f32 %1638, 2
  %1640 = extractvalue %dx.types.CBufRet.f32 %1638, 3
  %1641 = fmul fast float %1635, %89
  %1642 = fmul fast float %1641, %1639
  %1643 = fmul fast float %1636, %90
  %1644 = fmul fast float %1643, %1640
  %1645 = fptoui float %1642 to i32
  %1646 = fptoui float %1644 to i32
  %1647 = fadd fast float %1635, -1.000000e+00
  %1648 = fadd fast float %1636, -1.000000e+00
  %1649 = fptoui float %1647 to i32
  %1650 = fptoui float %1648 to i32
  %1651 = call i32 @dx.op.binary.i32(i32 40, i32 %1645, i32 %1649)  ; UMin(a,b)
  %1652 = call i32 @dx.op.binary.i32(i32 40, i32 %1646, i32 %1650)  ; UMin(a,b)
  %1653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1654 = extractvalue %dx.types.CBufRet.f32 %1653, 2
  %1655 = extractvalue %dx.types.CBufRet.f32 %1653, 3
  %1656 = fmul fast float %1654, %78
  %1657 = fsub fast float %1656, %1655
  %1658 = fadd fast float %1637, -1.000000e+00
  %1659 = call float @dx.op.binary.f32(i32 36, float %1657, float %1658)  ; FMin(a,b)
  %1660 = fptoui float %1659 to i32
  %1661 = fptoui float %1635 to i32
  %1662 = fptoui float %1636 to i32
  %1663 = mul i32 %1660, %1662
  %1664 = add i32 %1663, %1652
  %1665 = mul i32 %1664, %1661
  %1666 = add i32 %1665, %1651
  %1667 = shl i32 %1666, 2
  %1668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.i32 %1668, 0
  %1670 = and i32 %1669, 1023
  %1671 = lshr i32 %1669, 10
  %1672 = icmp eq i32 %1670, 0
  br i1 %1672, label %2062, label %1673

; <label>:1673                                    ; preds = %1573
  %1674 = and i32 %1669, 1023
  br label %1675

; <label>:1675                                    ; preds = %1794, %1673
  %1676 = phi float [ %1795, %1794 ], [ 0.000000e+00, %1673 ]
  %1677 = phi float [ %1796, %1794 ], [ 0.000000e+00, %1673 ]
  %1678 = phi float [ %1797, %1794 ], [ 0.000000e+00, %1673 ]
  %1679 = phi float [ %1798, %1794 ], [ %1425, %1673 ]
  %1680 = phi float [ %1799, %1794 ], [ %1426, %1673 ]
  %1681 = phi float [ %1800, %1794 ], [ %1618, %1673 ]
  %1682 = phi float [ %1801, %1794 ], [ %1621, %1673 ]
  %1683 = phi float [ %1802, %1794 ], [ %1616, %1673 ]
  %1684 = phi float [ %1803, %1794 ], [ %1610, %1673 ]
  %1685 = phi float [ %1804, %1794 ], [ %1612, %1673 ]
  %1686 = phi float [ %1805, %1794 ], [ %1614, %1673 ]
  %1687 = phi i32 [ %1743, %1794 ], [ 0, %1673 ]
  %1688 = add nuw nsw i32 %1687, %1671
  %1689 = shl i32 %1688, 2
  %1690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1689, i32 undef)  ; BufferLoad(srv,index,wot)
  %1691 = extractvalue %dx.types.ResRet.i32 %1690, 0
  %1692 = shl i32 %1691, 8
  %1693 = or i32 %1692, 48
  %1694 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1695 = extractvalue %dx.types.ResRet.f32 %1694, 0
  %1696 = extractvalue %dx.types.ResRet.f32 %1694, 1
  %1697 = extractvalue %dx.types.ResRet.f32 %1694, 2
  %1698 = extractvalue %dx.types.ResRet.f32 %1694, 3
  %1699 = or i32 %1692, 64
  %1700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1701 = extractvalue %dx.types.ResRet.i32 %1700, 0
  %1702 = extractvalue %dx.types.ResRet.i32 %1700, 1
  %1703 = or i32 %1692, 80
  %1704 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.f32 %1704, 2
  %1706 = extractvalue %dx.types.ResRet.f32 %1704, 3
  %1707 = or i32 %1692, 96
  %1708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.f32 %1708, 0
  %1710 = extractvalue %dx.types.ResRet.f32 %1708, 1
  %1711 = extractvalue %dx.types.ResRet.f32 %1708, 2
  %1712 = extractvalue %dx.types.ResRet.f32 %1708, 3
  %1713 = or i32 %1692, 112
  %1714 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.f32 %1714, 2
  %1716 = or i32 %1692, 128
  %1717 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1716, i32 undef)  ; BufferLoad(srv,index,wot)
  %1718 = extractvalue %dx.types.ResRet.f32 %1717, 0
  %1719 = extractvalue %dx.types.ResRet.f32 %1717, 1
  %1720 = extractvalue %dx.types.ResRet.f32 %1717, 2
  %1721 = extractvalue %dx.types.ResRet.f32 %1717, 3
  %1722 = or i32 %1692, 144
  %1723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.f32 %1723, 0
  %1725 = extractvalue %dx.types.ResRet.f32 %1723, 1
  %1726 = extractvalue %dx.types.ResRet.f32 %1723, 2
  %1727 = extractvalue %dx.types.ResRet.f32 %1723, 3
  %1728 = or i32 %1692, 160
  %1729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.f32 %1729, 0
  %1731 = extractvalue %dx.types.ResRet.f32 %1729, 1
  %1732 = extractvalue %dx.types.ResRet.f32 %1729, 2
  %1733 = or i32 %1692, 192
  %1734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %1735 = extractvalue %dx.types.ResRet.i32 %1734, 0
  %1736 = or i32 %1692, 208
  %1737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.f32 %1737, 0
  %1739 = or i32 %1692, 248
  %1740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.f32 %1740, 0
  %1742 = extractvalue %dx.types.ResRet.f32 %1740, 1
  %1743 = add nuw nsw i32 %1687, 1
  %1744 = bitcast float %1698 to i32
  %1745 = and i32 %1744, 512
  %1746 = icmp ne i32 %1745, 0
  %1747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.f32 %1747, 0
  %1749 = extractvalue %dx.types.ResRet.f32 %1747, 1
  %1750 = extractvalue %dx.types.ResRet.f32 %1747, 2
  %1751 = extractvalue %dx.types.ResRet.f32 %1747, 3
  %1752 = call float @dx.op.dot4.f32(i32 56, float %1748, float %1749, float %1750, float %1751, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1753 = or i32 %1692, 16
  %1754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.f32 %1754, 0
  %1756 = extractvalue %dx.types.ResRet.f32 %1754, 1
  %1757 = extractvalue %dx.types.ResRet.f32 %1754, 2
  %1758 = extractvalue %dx.types.ResRet.f32 %1754, 3
  %1759 = call float @dx.op.dot4.f32(i32 56, float %1755, float %1756, float %1757, float %1758, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1760 = or i32 %1692, 32
  %1761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.f32 %1761, 0
  %1763 = extractvalue %dx.types.ResRet.f32 %1761, 1
  %1764 = extractvalue %dx.types.ResRet.f32 %1761, 2
  %1765 = extractvalue %dx.types.ResRet.f32 %1761, 3
  %1766 = call float @dx.op.dot4.f32(i32 56, float %1762, float %1763, float %1764, float %1765, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1767 = call float @dx.op.unary.f32(i32 27, float %1752)  ; Round_ni(value)
  %1768 = call float @dx.op.unary.f32(i32 6, float %1767)  ; FAbs(value)
  %1769 = call float @dx.op.unary.f32(i32 27, float %1759)  ; Round_ni(value)
  %1770 = call float @dx.op.unary.f32(i32 6, float %1769)  ; FAbs(value)
  %1771 = call float @dx.op.unary.f32(i32 6, float %1766)  ; FAbs(value)
  %1772 = call float @dx.op.unary.f32(i32 27, float %1771)  ; Round_ni(value)
  %1773 = fadd fast float %1770, %1768
  %1774 = fadd fast float %1773, %1772
  %1775 = fcmp fast oeq float %1774, 0.000000e+00
  %1776 = call float @dx.op.dot4.f32(i32 56, float %1748, float %1749, float %1750, float %1751, float %1628, float %1629, float %1630, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1777 = call float @dx.op.dot4.f32(i32 56, float %1755, float %1756, float %1757, float %1758, float %1628, float %1629, float %1630, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1778 = call float @dx.op.dot4.f32(i32 56, float %1748, float %1749, float %1750, float %1751, float %1631, float %1632, float %1633, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1779 = call float @dx.op.dot4.f32(i32 56, float %1755, float %1756, float %1757, float %1758, float %1631, float %1632, float %1633, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1780 = fsub fast float %1776, %1752
  %1781 = fsub fast float %1778, %1752
  %1782 = fsub fast float %1777, %1759
  %1783 = fsub fast float %1779, %1759
  %1784 = call float @dx.op.dot3.f32(i32 55, float %1695, float %1696, float %1697, float %108, float %109, float %110)  ; Dot3(ax,ay,az,bx,by,bz)
  %1785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1785, 2
  %1787 = call float @dx.op.unary.f32(i32 6, float %1784)  ; FAbs(value)
  %1788 = fadd fast float %1787, %1786
  %1789 = call float @dx.op.unary.f32(i32 7, float %1788)  ; Saturate(value)
  %1790 = extractvalue %dx.types.CBufRet.f32 %1785, 0
  %1791 = fcmp fast ogt float %1789, %1790
  %1792 = and i1 %1775, %1791
  %1793 = and i1 %1746, %1792
  br i1 %1793, label %1807, label %1794

; <label>:1794                                    ; preds = %2048, %1888, %1807, %1675
  %1795 = phi float [ %1676, %1807 ], [ %1676, %1888 ], [ %2058, %2048 ], [ %1676, %1675 ]
  %1796 = phi float [ %1677, %1807 ], [ %1677, %1888 ], [ %2059, %2048 ], [ %1677, %1675 ]
  %1797 = phi float [ %1678, %1807 ], [ %1678, %1888 ], [ %2060, %2048 ], [ %1678, %1675 ]
  %1798 = phi float [ %1679, %1807 ], [ %1679, %1888 ], [ %2022, %2048 ], [ %1679, %1675 ]
  %1799 = phi float [ %1680, %1807 ], [ %1680, %1888 ], [ %2023, %2048 ], [ %1680, %1675 ]
  %1800 = phi float [ %1681, %1807 ], [ %1681, %1888 ], [ %2017, %2048 ], [ %1681, %1675 ]
  %1801 = phi float [ %1682, %1807 ], [ %1682, %1888 ], [ %2014, %2048 ], [ %1682, %1675 ]
  %1802 = phi float [ %1683, %1807 ], [ %1683, %1888 ], [ %2011, %2048 ], [ %1683, %1675 ]
  %1803 = phi float [ %1684, %1807 ], [ %1684, %1888 ], [ %2006, %2048 ], [ %1684, %1675 ]
  %1804 = phi float [ %1685, %1807 ], [ %1685, %1888 ], [ %2007, %2048 ], [ %1685, %1675 ]
  %1805 = phi float [ %1686, %1807 ], [ %1686, %1888 ], [ %2008, %2048 ], [ %1686, %1675 ]
  %1806 = icmp eq i32 %1743, %1674
  br i1 %1806, label %2061, label %1675

; <label>:1807                                    ; preds = %1675
  %1808 = extractvalue %dx.types.ResRet.f32 %1714, 3
  %1809 = extractvalue %dx.types.ResRet.f32 %1714, 1
  %1810 = extractvalue %dx.types.ResRet.f32 %1714, 0
  %1811 = extractvalue %dx.types.ResRet.f32 %1704, 1
  %1812 = extractvalue %dx.types.ResRet.f32 %1704, 0
  %1813 = extractvalue %dx.types.ResRet.i32 %1700, 3
  %1814 = extractvalue %dx.types.ResRet.i32 %1700, 2
  %1815 = add i32 %1813, 0
  %1816 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1815, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1818 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1816, %dx.types.Handle %1817, float %1752, float %1759, float undef, float undef, i32 0, i32 0, i32 undef, float %1780, float %1782, float undef, float %1781, float %1783, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1819 = extractvalue %dx.types.ResRet.f32 %1818, 0
  %1820 = fmul fast float %1819, %1812
  %1821 = fadd fast float %1820, %1811
  %1822 = call float @dx.op.unary.f32(i32 7, float %1821)  ; Saturate(value)
  %1823 = fmul fast float %1752, %1709
  %1824 = call float @dx.op.tertiary.f32(i32 46, float %1710, float %1759, float %1823)  ; FMad(a,b,c)
  %1825 = fadd fast float %1824, %1810
  %1826 = fmul fast float %1752, %1711
  %1827 = call float @dx.op.tertiary.f32(i32 46, float %1712, float %1759, float %1826)  ; FMad(a,b,c)
  %1828 = fadd fast float %1827, %1809
  %1829 = fmul fast float %1780, %1709
  %1830 = call float @dx.op.tertiary.f32(i32 46, float %1710, float %1782, float %1829)  ; FMad(a,b,c)
  %1831 = fmul fast float %1780, %1711
  %1832 = call float @dx.op.tertiary.f32(i32 46, float %1712, float %1782, float %1831)  ; FMad(a,b,c)
  %1833 = fmul fast float %1781, %1709
  %1834 = call float @dx.op.tertiary.f32(i32 46, float %1710, float %1783, float %1833)  ; FMad(a,b,c)
  %1835 = fmul fast float %1781, %1711
  %1836 = call float @dx.op.tertiary.f32(i32 46, float %1712, float %1783, float %1835)  ; FMad(a,b,c)
  %1837 = add i32 %1814, 0
  %1838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1837, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1839 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1838, %dx.types.Handle %1817, float %1825, float %1828, float undef, float undef, i32 0, i32 0, i32 undef, float %1830, float %1832, float undef, float %1834, float %1836, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1840 = extractvalue %dx.types.ResRet.f32 %1839, 0
  %1841 = and i32 %1744, 1024
  %1842 = icmp ne i32 %1841, 0
  %1843 = fcmp fast ogt float %1840, 0x3FE0101020000000
  %1844 = uitofp i1 %1843 to float
  %1845 = select i1 %1842, float %1844, float %1840
  %1846 = and i32 %1744, 8192
  %1847 = icmp ne i32 %1846, 0
  %1848 = select i1 %1847, float %1808, float 1.000000e+00
  %1849 = fmul fast float %1752, 2.000000e+00
  %1850 = fadd fast float %1849, -1.000000e+00
  %1851 = call float @dx.op.unary.f32(i32 6, float %1850)  ; FAbs(value)
  %1852 = fmul fast float %1851, %1741
  %1853 = fsub fast float %1852, %1741
  %1854 = call float @dx.op.unary.f32(i32 7, float %1853)  ; Saturate(value)
  %1855 = fmul fast float %1759, 2.000000e+00
  %1856 = fadd fast float %1855, -1.000000e+00
  %1857 = call float @dx.op.unary.f32(i32 6, float %1856)  ; FAbs(value)
  %1858 = fmul fast float %1857, %1742
  %1859 = fsub fast float %1858, %1742
  %1860 = call float @dx.op.unary.f32(i32 7, float %1859)  ; Saturate(value)
  %1861 = fmul fast float %1771, %1705
  %1862 = fsub fast float %1861, %1705
  %1863 = call float @dx.op.unary.f32(i32 7, float %1862)  ; Saturate(value)
  %1864 = fmul fast float %1822, %1848
  %1865 = fmul fast float %1864, %1819
  %1866 = fmul fast float %1865, %1854
  %1867 = fmul fast float %1866, %1845
  %1868 = fmul fast float %1867, %1860
  %1869 = fmul fast float %1868, %1863
  %1870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1871 = extractvalue %dx.types.CBufRet.f32 %1870, 1
  %1872 = extractvalue %dx.types.CBufRet.f32 %1870, 0
  %1873 = fsub fast float %1789, %1872
  %1874 = fmul fast float %1873, %1871
  %1875 = call float @dx.op.unary.f32(i32 7, float %1874)  ; Saturate(value)
  %1876 = fmul fast float %1869, %1706
  %1877 = fadd fast float %1869, %1706
  %1878 = fmul fast float %1877, %1715
  %1879 = fsub fast float %1878, %1715
  %1880 = call float @dx.op.unary.f32(i32 7, float %1879)  ; Saturate(value)
  %1881 = and i32 %1744, 128
  %1882 = icmp ne i32 %1881, 0
  %1883 = select i1 %1882, float %1880, float %1876
  %1884 = fmul fast float %1883, %1875
  %1885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.f32 %1885, 0
  %1887 = fcmp fast ugt float %1884, %1886
  br i1 %1887, label %1888, label %1794

; <label>:1888                                    ; preds = %1807
  br i1 %1847, label %1794, label %1889

; <label>:1889                                    ; preds = %1888
  %1890 = and i32 %1744, 4
  %1891 = and i32 %1744, 8
  %1892 = add i32 %1701, 0
  %1893 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1892, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1894 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1895 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1893, %dx.types.Handle %1894, float %1825, float %1828, float undef, float undef, i32 0, i32 0, i32 undef, float %1830, float %1832, float undef, float %1834, float %1836, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1896 = extractvalue %dx.types.ResRet.f32 %1895, 0
  %1897 = extractvalue %dx.types.ResRet.f32 %1895, 1
  %1898 = extractvalue %dx.types.ResRet.f32 %1895, 2
  %1899 = extractvalue %dx.types.ResRet.f32 %1895, 3
  %1900 = bitcast float %1727 to i32
  %1901 = and i32 %1900, 255
  %1902 = uitofp i32 %1901 to float
  %1903 = lshr i32 %1900, 8
  %1904 = and i32 %1903, 255
  %1905 = uitofp i32 %1904 to float
  %1906 = fmul fast float %1899, %1902
  %1907 = fadd fast float %1906, %1905
  %1908 = fmul fast float %1907, 0x3F70101000000000
  %1909 = add i32 %1702, 0
  %1910 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1909, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1911 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1910, %dx.types.Handle %1894, float %1825, float %1828, float undef, float undef, i32 0, i32 0, i32 undef, float %1830, float %1832, float undef, float %1834, float %1836, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1912 = extractvalue %dx.types.ResRet.f32 %1911, 0
  %1913 = extractvalue %dx.types.ResRet.f32 %1911, 1
  %1914 = extractvalue %dx.types.ResRet.f32 %1911, 2
  %1915 = extractvalue %dx.types.ResRet.f32 %1911, 3
  %1916 = bitcast float %1721 to i32
  %1917 = and i32 %1916, 255
  %1918 = uitofp i32 %1917 to float
  %1919 = lshr i32 %1916, 8
  %1920 = and i32 %1919, 255
  %1921 = uitofp i32 %1920 to float
  %1922 = lshr i32 %1916, 16
  %1923 = and i32 %1922, 255
  %1924 = uitofp i32 %1923 to float
  %1925 = fmul fast float %1924, 0x3F70101000000000
  %1926 = fmul fast float %1912, %1918
  %1927 = fadd fast float %1926, %1921
  %1928 = fmul fast float %1927, 0x3F70101000000000
  %1929 = fadd fast float %1913, -5.000000e-01
  %1930 = fadd fast float %1915, -5.000000e-01
  %1931 = fmul fast float %1929, %1925
  %1932 = fmul fast float %1930, %1925
  %1933 = fadd fast float %1931, 5.000000e-01
  %1934 = fadd fast float %1932, 5.000000e-01
  %1935 = fmul fast float %1896, %1730
  %1936 = fmul fast float %1897, %1731
  %1937 = fmul fast float %1898, %1732
  %1938 = fmul fast float %1933, 2.000000e+00
  %1939 = fadd fast float %1938, -1.000000e+00
  %1940 = fmul fast float %1934, 2.000000e+00
  %1941 = fadd fast float %1940, -1.000000e+00
  %1942 = fadd fast float %1939, %1941
  %1943 = fmul fast float %1942, 5.000000e-01
  %1944 = fsub fast float %1939, %1941
  %1945 = fmul fast float %1944, 5.000000e-01
  %1946 = call float @dx.op.unary.f32(i32 6, float %1943)  ; FAbs(value)
  %1947 = fsub fast float 1.000000e+00, %1946
  %1948 = call float @dx.op.unary.f32(i32 6, float %1945)  ; FAbs(value)
  %1949 = fsub fast float %1947, %1948
  %1950 = call float @dx.op.dot3.f32(i32 55, float %1943, float %1945, float %1949, float %1943, float %1945, float %1949)  ; Dot3(ax,ay,az,bx,by,bz)
  %1951 = call float @dx.op.unary.f32(i32 25, float %1950)  ; Rsqrt(value)
  %1952 = fmul fast float %1943, %1951
  %1953 = fmul fast float %1945, %1951
  %1954 = fmul fast float %1951, %1949
  %1955 = fmul fast float %1954, %1695
  %1956 = fmul fast float %1954, %1696
  %1957 = fmul fast float %1954, %1697
  %1958 = fmul fast float %1952, %1718
  %1959 = fmul fast float %1952, %1719
  %1960 = fmul fast float %1952, %1720
  %1961 = fadd fast float %1958, %1955
  %1962 = fadd fast float %1959, %1956
  %1963 = fadd fast float %1960, %1957
  %1964 = fmul fast float %1953, %1724
  %1965 = fmul fast float %1953, %1725
  %1966 = fmul fast float %1953, %1726
  %1967 = fadd fast float %1961, %1964
  %1968 = fadd fast float %1962, %1965
  %1969 = fadd fast float %1963, %1966
  %1970 = call float @dx.op.dot3.f32(i32 55, float %1967, float %1968, float %1969, float %1967, float %1968, float %1969)  ; Dot3(ax,ay,az,bx,by,bz)
  %1971 = call float @dx.op.unary.f32(i32 25, float %1970)  ; Rsqrt(value)
  %1972 = fmul fast float %1967, %1971
  %1973 = fmul fast float %1968, %1971
  %1974 = fmul fast float %1969, %1971
  %1975 = fcmp fast ogt float %1784, %1790
  %1976 = fsub fast float -0.000000e+00, %1972
  %1977 = fsub fast float -0.000000e+00, %1973
  %1978 = fsub fast float -0.000000e+00, %1974
  %1979 = select i1 %1975, float %1972, float %1976
  %1980 = select i1 %1975, float %1973, float %1977
  %1981 = select i1 %1975, float %1974, float %1978
  %1982 = fmul fast float %1979, %1601
  %1983 = call float @dx.op.tertiary.f32(i32 46, float %1980, float %1602, float %1982)  ; FMad(a,b,c)
  %1984 = call float @dx.op.tertiary.f32(i32 46, float %1981, float %1604, float %1983)  ; FMad(a,b,c)
  %1985 = fmul fast float %1979, %1597
  %1986 = call float @dx.op.tertiary.f32(i32 46, float %1980, float %1607, float %1985)  ; FMad(a,b,c)
  %1987 = call float @dx.op.tertiary.f32(i32 46, float %1981, float %1608, float %1986)  ; FMad(a,b,c)
  %1988 = icmp ne i32 %1891, 0
  %1989 = select i1 %1988, float 1.000000e+00, float 0.000000e+00
  %1990 = fmul fast float %1884, %1989
  %1991 = and i32 %1744, 1
  %1992 = icmp ne i32 %1991, 0
  %1993 = fadd fast float %1984, %1679
  %1994 = fadd fast float %1987, %1680
  %1995 = select i1 %1992, float %1993, float %1984
  %1996 = select i1 %1992, float %1994, float %1987
  %1997 = icmp ne i32 %1890, 0
  %1998 = select i1 %1997, float 1.000000e+00, float 0.000000e+00
  %1999 = fmul fast float %1884, %1998
  %2000 = fsub fast float %1935, %1684
  %2001 = fsub fast float %1936, %1685
  %2002 = fsub fast float %1937, %1686
  %2003 = fmul fast float %2000, %1999
  %2004 = fmul fast float %2001, %1999
  %2005 = fmul fast float %2002, %1999
  %2006 = fadd fast float %2003, %1684
  %2007 = fadd fast float %2004, %1685
  %2008 = fadd fast float %2005, %1686
  %2009 = fsub fast float %1908, %1683
  %2010 = fmul fast float %2009, %1999
  %2011 = fadd fast float %2010, %1683
  %2012 = fsub fast float %1928, %1682
  %2013 = fmul fast float %2012, %1990
  %2014 = fadd fast float %2013, %1682
  %2015 = fsub fast float %1914, %1681
  %2016 = fmul fast float %2015, %1990
  %2017 = fadd fast float %2016, %1681
  %2018 = fsub fast float %1995, %1679
  %2019 = fsub fast float %1996, %1680
  %2020 = fmul fast float %2018, %1990
  %2021 = fmul fast float %2019, %1990
  %2022 = fadd fast float %2020, %1679
  %2023 = fadd fast float %2021, %1680
  %2024 = and i32 %1744, 16
  %2025 = icmp eq i32 %2024, 0
  br i1 %2025, label %2048, label %2026

; <label>:2026                                    ; preds = %1889
  %2027 = bitcast float %1738 to i32
  %2028 = add i32 %1735, 0
  %2029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2028, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2030 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2029, %dx.types.Handle %1894, float %1825, float %1828, float undef, float undef, i32 0, i32 0, i32 undef, float %1830, float %1832, float undef, float %1834, float %1836, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2031 = extractvalue %dx.types.ResRet.f32 %2030, 0
  %2032 = extractvalue %dx.types.ResRet.f32 %2030, 1
  %2033 = extractvalue %dx.types.ResRet.f32 %2030, 2
  %2034 = and i32 %2027, 65535
  %2035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2034)  ; LegacyF16ToF32(value)
  %2036 = fmul fast float %2031, %1730
  %2037 = fmul fast float %2032, %1731
  %2038 = fmul fast float %2033, %1732
  %2039 = and i32 %1744, 16384
  %2040 = icmp ne i32 %2039, 0
  %2041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2042 = extractvalue %dx.types.CBufRet.f32 %2041, 0
  %2043 = select i1 %2040, float %2042, float 1.000000e+00
  %2044 = fmul fast float %2043, %2035
  %2045 = fmul fast float %2036, %2044
  %2046 = fmul fast float %2037, %2044
  %2047 = fmul fast float %2038, %2044
  br label %2048

; <label>:2048                                    ; preds = %2026, %1889
  %2049 = phi float [ %2045, %2026 ], [ 0.000000e+00, %1889 ]
  %2050 = phi float [ %2046, %2026 ], [ 0.000000e+00, %1889 ]
  %2051 = phi float [ %2047, %2026 ], [ 0.000000e+00, %1889 ]
  %2052 = fsub fast float %2049, %1676
  %2053 = fsub fast float %2050, %1677
  %2054 = fsub fast float %2051, %1678
  %2055 = fmul fast float %2052, %1884
  %2056 = fmul fast float %2053, %1884
  %2057 = fmul fast float %2054, %1884
  %2058 = fadd fast float %2055, %1676
  %2059 = fadd fast float %2056, %1677
  %2060 = fadd fast float %2057, %1678
  br label %1794

; <label>:2061                                    ; preds = %1794
  br label %2062

; <label>:2062                                    ; preds = %2061, %1573
  %2063 = phi float [ 0.000000e+00, %1573 ], [ %1795, %2061 ]
  %2064 = phi float [ 0.000000e+00, %1573 ], [ %1796, %2061 ]
  %2065 = phi float [ 0.000000e+00, %1573 ], [ %1797, %2061 ]
  %2066 = phi float [ %1425, %1573 ], [ %1798, %2061 ]
  %2067 = phi float [ %1426, %1573 ], [ %1799, %2061 ]
  %2068 = phi float [ %1618, %1573 ], [ %1800, %2061 ]
  %2069 = phi float [ %1621, %1573 ], [ %1801, %2061 ]
  %2070 = phi float [ %1616, %1573 ], [ %1802, %2061 ]
  %2071 = phi float [ %1610, %1573 ], [ %1803, %2061 ]
  %2072 = phi float [ %1612, %1573 ], [ %1804, %2061 ]
  %2073 = phi float [ %1614, %1573 ], [ %1805, %2061 ]
  %2074 = call float @dx.op.dot2.f32(i32 54, float %2066, float %2067, float %2066, float %2067)  ; Dot2(ax,ay,bx,by)
  %2075 = fmul fast float %2074, 0x3FE3333340000000
  %2076 = fsub fast float 1.000000e+00, %2075
  %2077 = call float @dx.op.dot3.f32(i32 55, float %2066, float %2067, float %2076, float %2066, float %2067, float %2076)  ; Dot3(ax,ay,az,bx,by,bz)
  %2078 = call float @dx.op.unary.f32(i32 25, float %2077)  ; Rsqrt(value)
  %2079 = fmul fast float %2078, %2066
  %2080 = fmul fast float %2078, %2067
  %2081 = fmul fast float %2076, %2078
  %2082 = fmul fast float %2081, %108
  %2083 = fmul fast float %2081, %109
  %2084 = fmul fast float %2081, %110
  %2085 = fmul fast float %2079, %1601
  %2086 = fmul fast float %2079, %1602
  %2087 = fmul fast float %2079, %1604
  %2088 = fadd fast float %2082, %2085
  %2089 = fadd fast float %2083, %2086
  %2090 = fadd fast float %2084, %2087
  %2091 = fmul fast float %2080, %1597
  %2092 = fmul fast float %2080, %1607
  %2093 = fmul fast float %2080, %1608
  %2094 = fadd fast float %2088, %2091
  %2095 = fadd fast float %2089, %2092
  %2096 = fadd fast float %2090, %2093
  %2097 = call float @dx.op.dot3.f32(i32 55, float %2094, float %2095, float %2096, float %2094, float %2095, float %2096)  ; Dot3(ax,ay,az,bx,by,bz)
  %2098 = call float @dx.op.unary.f32(i32 25, float %2097)  ; Rsqrt(value)
  %2099 = fmul fast float %2094, %2098
  %2100 = fmul fast float %2095, %2098
  %2101 = fmul fast float %2096, %2098
  %2102 = fadd fast float %2070, 0xBFB99999A0000000
  %2103 = call float @dx.op.unary.f32(i32 7, float %2102)  ; Saturate(value)
  %2104 = fmul fast float %2103, 0x3FF1C71C80000000
  %2105 = call float @dx.op.binary.f32(i32 36, float %2070, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2106 = fsub fast float 1.000000e+00, %2104
  %2107 = call float @dx.op.unary.f32(i32 7, float %2106)  ; Saturate(value)
  %2108 = fmul fast float %2107, %2071
  %2109 = fmul fast float %2107, %2072
  %2110 = fmul fast float %2107, %2073
  %2111 = call float @dx.op.unary.f32(i32 7, float %2108)  ; Saturate(value)
  %2112 = call float @dx.op.unary.f32(i32 7, float %2109)  ; Saturate(value)
  %2113 = call float @dx.op.unary.f32(i32 7, float %2110)  ; Saturate(value)
  %2114 = fmul fast float %2104, %2071
  %2115 = fmul fast float %2104, %2072
  %2116 = fmul fast float %2104, %2073
  %2117 = fadd fast float %2114, %2105
  %2118 = fadd fast float %2115, %2105
  %2119 = fadd fast float %2116, %2105
  %2120 = call float @dx.op.unary.f32(i32 7, float %2117)  ; Saturate(value)
  %2121 = call float @dx.op.unary.f32(i32 7, float %2118)  ; Saturate(value)
  %2122 = call float @dx.op.unary.f32(i32 7, float %2119)  ; Saturate(value)
  %2123 = fmul fast float %2121, 0x401CF23780000000
  %2124 = fadd fast float %2123, 0x3FF32641C0000000
  %2125 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %144, float %145, float %146)  ; Dot3(ax,ay,az,bx,by,bz)
  %2126 = call float @dx.op.unary.f32(i32 25, float %2125)  ; Rsqrt(value)
  %2127 = fmul fast float %2126, %144
  %2128 = fmul fast float %2126, %145
  %2129 = fmul fast float %2126, %146
  %2130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2131 = extractvalue %dx.types.CBufRet.f32 %2130, 0
  %2132 = fdiv fast float 1.000000e+00, %2124
  %2133 = select i1 %106, float %2132, float %2124
  %2134 = fadd fast float %2133, -1.000000e+00
  %2135 = fadd fast float %2133, 1.000000e+00
  %2136 = fdiv fast float %2134, %2135
  %2137 = fmul fast float %2136, %2136
  %2138 = call float @dx.op.dot3.f32(i32 55, float %2127, float %2128, float %2129, float %2099, float %2100, float %2101)  ; Dot3(ax,ay,az,bx,by,bz)
  %2139 = select i1 %106, float 0.000000e+00, float %2131
  %2140 = fadd fast float %2138, %2139
  %2141 = call float @dx.op.binary.f32(i32 35, float %2140, float -1.000000e+00)  ; FMax(a,b)
  %2142 = call float @dx.op.binary.f32(i32 36, float %2141, float 1.000000e+00)  ; FMin(a,b)
  %2143 = fmul fast float %2133, %2133
  %2144 = fmul fast float %2142, %2142
  %2145 = fsub fast float 1.000000e+00, %2144
  %2146 = fmul fast float %2143, %2145
  %2147 = fsub fast float 1.000000e+00, %2146
  %2148 = fcmp fast olt float %2133, 1.000000e+00
  %2149 = select i1 %2148, float %2144, float %2147
  %2150 = fcmp fast ogt float %2147, 0.000000e+00
  %2151 = fsub fast float 1.000000e+00, %2137
  %2152 = call float @dx.op.unary.f32(i32 24, float %2149)  ; Sqrt(value)
  %2153 = fsub fast float 1.000000e+00, %2152
  %2154 = call float @dx.op.unary.f32(i32 23, float %2153)  ; Log(value)
  %2155 = fmul fast float %2154, 5.000000e+00
  %2156 = call float @dx.op.unary.f32(i32 21, float %2155)  ; Exp(value)
  %2157 = fmul fast float %2156, %2151
  %2158 = fadd fast float %2157, %2137
  %2159 = select i1 %2150, float %2158, float 1.000000e+00
  %2160 = and i32 %468, 255
  %2161 = uitofp i32 %2160 to float
  %2162 = fmul fast float %2161, 0x3F70101020000000
  %2163 = call float @dx.op.unary.f32(i32 7, float %2162)  ; Saturate(value)
  %2164 = fmul fast float %144, %144
  %2165 = fmul fast float %145, %145
  %2166 = fadd fast float %2165, %2164
  %2167 = fmul fast float %146, %146
  %2168 = fadd fast float %2166, %2167
  %2169 = call float @dx.op.unary.f32(i32 24, float %2168)  ; Sqrt(value)
  %2170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %2171 = extractvalue %dx.types.CBufRet.f32 %2170, 0
  %2172 = fmul fast float %2171, %2169
  %2173 = extractvalue %dx.types.CBufRet.f32 %2170, 1
  %2174 = fadd fast float %2172, %2173
  %2175 = call float @dx.op.unary.f32(i32 7, float %2174)  ; Saturate(value)
  %2176 = fmul fast float %2163, 2.550000e+02
  %2177 = fmul fast float %2176, %2175
  %2178 = fptoui float %2177 to i32
  %2179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2180 = extractvalue %dx.types.CBufRet.f32 %2179, 3
  %2181 = fmul fast float %2180, %2069
  %2182 = call float @dx.op.unary.f32(i32 7, float %2181)  ; Saturate(value)
  %2183 = call float @dx.op.unary.f32(i32 7, float %2068)  ; Saturate(value)
  %2184 = call float @dx.op.dot3.f32(i32 55, float %2120, float %2121, float %2122, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2185 = fsub fast float 1.000000e+00, %2184
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = and i32 %2187, 255
  %2189 = uitofp i32 %2188 to float
  %2190 = lshr i32 %2187, 8
  %2191 = and i32 %2190, 255
  %2192 = uitofp i32 %2191 to float
  %2193 = fmul fast float %2192, %2185
  %2194 = fadd fast float %2193, %2189
  %2195 = fmul fast float %2194, 0x3F70101020000000
  %2196 = call float @dx.op.unary.f32(i32 7, float %2195)  ; Saturate(value)
  %2197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2198 = extractvalue %dx.types.CBufRet.f32 %2197, 0
  %2199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2201 = extractvalue %dx.types.CBufRet.i32 %2200, 3
  %2202 = and i32 %2201, 3
  %2203 = icmp ne i32 %2202, 0
  %2204 = and i32 %2201, 4
  %2205 = icmp ne i32 %2204, 0
  %2206 = and i1 %2203, %2205
  br i1 %2206, label %2207, label %2218

; <label>:2207                                    ; preds = %2062
  %2208 = extractvalue %dx.types.CBufRet.f32 %2199, 3
  %2209 = fmul fast float %2208, %90
  %2210 = extractvalue %dx.types.CBufRet.f32 %2199, 2
  %2211 = fmul fast float %2210, %89
  %2212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %58, float %2211, float %2209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2213 = extractvalue %dx.types.ResRet.f32 %2212, 0
  %2214 = fsub fast float 1.000000e+00, %2213
  %2215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %2216 = extractvalue %dx.types.CBufRet.f32 %2215, 0
  %2217 = fcmp fast olt float %2214, %2216
  br label %2221

; <label>:2218                                    ; preds = %2062
  %2219 = icmp eq i32 %2204, 0
  %2220 = and i1 %2203, %2219
  br label %2221

; <label>:2221                                    ; preds = %2218, %2207
  %2222 = phi i1 [ %2217, %2207 ], [ %2220, %2218 ]
  %2223 = fsub fast float -0.000000e+00, %146
  %2224 = fsub fast float -0.000000e+00, %2127
  %2225 = fsub fast float -0.000000e+00, %2128
  %2226 = fsub fast float -0.000000e+00, %2129
  %2227 = select i1 %2222, float 0.000000e+00, float %2122
  %2228 = call float @dx.op.dot3.f32(i32 55, float %2099, float %2100, float %2101, float %2224, float %2225, float %2226)  ; Dot3(ax,ay,az,bx,by,bz)
  %2229 = call float @dx.op.unary.f32(i32 7, float %2228)  ; Saturate(value)
  %2230 = fmul fast float %2138, 2.000000e+00
  %2231 = fmul fast float %2230, %2099
  %2232 = fmul fast float %2230, %2100
  %2233 = fmul fast float %2230, %2101
  %2234 = fsub fast float %2127, %2231
  %2235 = fsub fast float %2128, %2232
  %2236 = fsub fast float %2129, %2233
  %2237 = call float @dx.op.binary.f32(i32 36, float %2183, float 1.000000e+00)  ; FMin(a,b)
  %2238 = fsub fast float 1.000000e+00, %2183
  %2239 = bitcast float %2238 to i32
  %2240 = sub nsw i32 2129859010, %2239
  %2241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2242 = extractvalue %dx.types.CBufRet.f32 %2241, 0
  %2243 = extractvalue %dx.types.CBufRet.f32 %2241, 1
  %2244 = extractvalue %dx.types.CBufRet.f32 %2241, 2
  %2245 = fadd fast float %2242, %144
  %2246 = fadd fast float %2243, %145
  %2247 = fadd fast float %2244, %146
  %2248 = fmul fast float %2099, 3.200000e+01
  %2249 = fmul fast float %2100, 3.200000e+01
  %2250 = fadd fast float %2245, %2248
  %2251 = fadd fast float %2246, %2249
  %2252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2253 = extractvalue %dx.types.CBufRet.f32 %2252, 0
  %2254 = extractvalue %dx.types.CBufRet.f32 %2252, 1
  %2255 = fsub fast float %2250, %2253
  %2256 = fsub fast float %2251, %2254
  %2257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2258 = extractvalue %dx.types.CBufRet.f32 %2257, 0
  %2259 = extractvalue %dx.types.CBufRet.f32 %2257, 1
  %2260 = fmul fast float %2255, %2258
  %2261 = fmul fast float %2256, %2259
  %2262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2263 = extractvalue %dx.types.CBufRet.f32 %2262, 0
  %2264 = fmul fast float %2260, %2263
  %2265 = extractvalue %dx.types.CBufRet.f32 %2262, 1
  %2266 = fadd fast float %2264, %2265
  %2267 = extractvalue %dx.types.CBufRet.f32 %2262, 2
  %2268 = fmul fast float %2267, %2261
  %2269 = extractvalue %dx.types.CBufRet.f32 %2262, 3
  %2270 = fadd fast float %2268, %2269
  %2271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %58, float %2266, float %2270, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2272 = extractvalue %dx.types.ResRet.f32 %2271, 0
  %2273 = extractvalue %dx.types.ResRet.f32 %2271, 1
  %2274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2275 = extractvalue %dx.types.CBufRet.f32 %2274, 1
  %2276 = extractvalue %dx.types.CBufRet.f32 %2274, 0
  %2277 = fsub fast float %2275, %2276
  %2278 = fmul fast float %2277, %2272
  %2279 = fadd fast float %2278, %2276
  %2280 = extractvalue %dx.types.CBufRet.f32 %2274, 3
  %2281 = extractvalue %dx.types.CBufRet.f32 %2274, 2
  %2282 = fsub fast float %2280, %2281
  %2283 = fmul fast float %2282, %2273
  %2284 = fadd fast float %2283, %2281
  %2285 = fsub fast float %2247, %2279
  %2286 = fsub fast float %2284, %2279
  %2287 = fdiv fast float %2285, %2286
  %2288 = call float @dx.op.unary.f32(i32 7, float %2287)  ; Saturate(value)
  %2289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2290 = extractvalue %dx.types.CBufRet.f32 %2289, 0
  %2291 = fmul fast float %2290, %2288
  %2292 = extractvalue %dx.types.CBufRet.f32 %2289, 1
  %2293 = fadd fast float %2291, %2292
  %2294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %58, float %2266, float %2270, float %2293, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2295 = extractvalue %dx.types.ResRet.f32 %2294, 0
  %2296 = extractvalue %dx.types.ResRet.f32 %2294, 1
  %2297 = extractvalue %dx.types.ResRet.f32 %2294, 2
  %2298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2299 = extractvalue %dx.types.CBufRet.f32 %2298, 0
  %2300 = extractvalue %dx.types.CBufRet.f32 %2298, 1
  %2301 = extractvalue %dx.types.CBufRet.f32 %2298, 2
  %2302 = fmul fast float %2299, %2295
  %2303 = fmul fast float %2300, %2296
  %2304 = fmul fast float %2301, %2297
  %2305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2306 = extractvalue %dx.types.CBufRet.f32 %2305, 0
  %2307 = extractvalue %dx.types.CBufRet.f32 %2305, 1
  %2308 = extractvalue %dx.types.CBufRet.f32 %2305, 2
  %2309 = fadd fast float %2302, %2306
  %2310 = fadd fast float %2303, %2307
  %2311 = fadd fast float %2304, %2308
  %2312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2313 = extractvalue %dx.types.CBufRet.f32 %2312, 0
  %2314 = fmul fast float %2313, %2260
  %2315 = extractvalue %dx.types.CBufRet.f32 %2312, 1
  %2316 = fadd fast float %2314, %2315
  %2317 = extractvalue %dx.types.CBufRet.f32 %2312, 2
  %2318 = fmul fast float %2317, %2261
  %2319 = extractvalue %dx.types.CBufRet.f32 %2312, 3
  %2320 = fadd fast float %2318, %2319
  %2321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2322 = extractvalue %dx.types.CBufRet.f32 %2321, 0
  %2323 = extractvalue %dx.types.CBufRet.f32 %2321, 1
  %2324 = extractvalue %dx.types.CBufRet.f32 %2321, 2
  %2325 = extractvalue %dx.types.CBufRet.f32 %2321, 3
  %2326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2327 = extractvalue %dx.types.CBufRet.f32 %2326, 0
  %2328 = extractvalue %dx.types.CBufRet.f32 %2326, 1
  %2329 = extractvalue %dx.types.CBufRet.f32 %2326, 2
  %2330 = extractvalue %dx.types.CBufRet.f32 %2326, 3
  %2331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %2316, float %2320, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2332 = extractvalue %dx.types.ResRet.f32 %2331, 0
  %2333 = extractvalue %dx.types.ResRet.f32 %2331, 1
  %2334 = extractvalue %dx.types.ResRet.f32 %2331, 2
  %2335 = extractvalue %dx.types.ResRet.f32 %2331, 3
  %2336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %2316, float %2320, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2337 = extractvalue %dx.types.ResRet.f32 %2336, 0
  %2338 = extractvalue %dx.types.ResRet.f32 %2336, 1
  %2339 = extractvalue %dx.types.ResRet.f32 %2336, 2
  %2340 = extractvalue %dx.types.ResRet.f32 %2336, 3
  %2341 = fmul fast float %2332, %2309
  %2342 = fmul fast float %2337, %2309
  %2343 = fmul fast float %2339, %2309
  %2344 = fmul fast float %2335, %2309
  %2345 = fadd fast float %2341, %2322
  %2346 = fadd fast float %2342, %2323
  %2347 = fadd fast float %2343, %2324
  %2348 = fadd fast float %2344, %2325
  %2349 = fmul fast float %2333, %2309
  %2350 = fmul fast float %2338, %2309
  %2351 = fadd fast float %2349, %2327
  %2352 = fadd fast float %2350, %2328
  %2353 = fmul fast float %2334, %2309
  %2354 = fmul fast float %2340, %2309
  %2355 = fadd fast float %2353, %2329
  %2356 = fadd fast float %2354, %2330
  %2357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %2316, float %2320, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2358 = extractvalue %dx.types.ResRet.f32 %2357, 0
  %2359 = extractvalue %dx.types.ResRet.f32 %2357, 1
  %2360 = extractvalue %dx.types.ResRet.f32 %2357, 2
  %2361 = extractvalue %dx.types.ResRet.f32 %2357, 3
  %2362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %2316, float %2320, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2363 = extractvalue %dx.types.ResRet.f32 %2362, 0
  %2364 = extractvalue %dx.types.ResRet.f32 %2362, 1
  %2365 = extractvalue %dx.types.ResRet.f32 %2362, 2
  %2366 = extractvalue %dx.types.ResRet.f32 %2362, 3
  %2367 = fmul fast float %2358, %2310
  %2368 = fmul fast float %2363, %2310
  %2369 = fmul fast float %2365, %2310
  %2370 = fmul fast float %2361, %2310
  %2371 = fadd fast float %2345, %2367
  %2372 = fadd fast float %2346, %2368
  %2373 = fadd fast float %2347, %2369
  %2374 = fadd fast float %2348, %2370
  %2375 = fmul fast float %2359, %2310
  %2376 = fmul fast float %2364, %2310
  %2377 = fadd fast float %2351, %2375
  %2378 = fadd fast float %2352, %2376
  %2379 = fmul fast float %2360, %2310
  %2380 = fmul fast float %2366, %2310
  %2381 = fadd fast float %2355, %2379
  %2382 = fadd fast float %2356, %2380
  %2383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %2316, float %2320, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2384 = extractvalue %dx.types.ResRet.f32 %2383, 0
  %2385 = extractvalue %dx.types.ResRet.f32 %2383, 1
  %2386 = extractvalue %dx.types.ResRet.f32 %2383, 2
  %2387 = extractvalue %dx.types.ResRet.f32 %2383, 3
  %2388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %2316, float %2320, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2389 = extractvalue %dx.types.ResRet.f32 %2388, 0
  %2390 = extractvalue %dx.types.ResRet.f32 %2388, 1
  %2391 = extractvalue %dx.types.ResRet.f32 %2388, 2
  %2392 = extractvalue %dx.types.ResRet.f32 %2388, 3
  %2393 = fmul fast float %2384, %2311
  %2394 = fmul fast float %2389, %2311
  %2395 = fmul fast float %2391, %2311
  %2396 = fmul fast float %2387, %2311
  %2397 = fadd fast float %2371, %2393
  %2398 = fadd fast float %2372, %2394
  %2399 = fadd fast float %2373, %2395
  %2400 = fadd fast float %2374, %2396
  %2401 = fmul fast float %2385, %2311
  %2402 = fmul fast float %2390, %2311
  %2403 = fadd fast float %2377, %2401
  %2404 = fadd fast float %2378, %2402
  %2405 = fmul fast float %2386, %2311
  %2406 = fmul fast float %2392, %2311
  %2407 = fadd fast float %2381, %2405
  %2408 = fadd fast float %2382, %2406
  %2409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2410 = extractvalue %dx.types.CBufRet.f32 %2409, 0
  %2411 = fsub fast float %2245, %2410
  %2412 = fsub fast float %2253, %2245
  %2413 = call float @dx.op.binary.f32(i32 35, float %2412, float %2411)  ; FMax(a,b)
  %2414 = extractvalue %dx.types.CBufRet.f32 %2409, 1
  %2415 = fsub fast float %2246, %2414
  %2416 = fsub fast float %2254, %2246
  %2417 = call float @dx.op.binary.f32(i32 35, float %2416, float %2415)  ; FMax(a,b)
  %2418 = call float @dx.op.binary.f32(i32 35, float %2413, float %2417)  ; FMax(a,b)
  %2419 = extractvalue %dx.types.CBufRet.f32 %2257, 3
  %2420 = fmul fast float %2419, %2418
  %2421 = call float @dx.op.unary.f32(i32 7, float %2420)  ; Saturate(value)
  %2422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2423 = extractvalue %dx.types.CBufRet.f32 %2422, 0
  %2424 = extractvalue %dx.types.CBufRet.f32 %2422, 1
  %2425 = extractvalue %dx.types.CBufRet.f32 %2422, 2
  %2426 = extractvalue %dx.types.CBufRet.f32 %2422, 3
  %2427 = fsub fast float %2423, %2397
  %2428 = fsub fast float %2424, %2398
  %2429 = fsub fast float %2425, %2399
  %2430 = fsub fast float %2426, %2400
  %2431 = fmul fast float %2427, %2421
  %2432 = fmul fast float %2428, %2421
  %2433 = fmul fast float %2429, %2421
  %2434 = fmul fast float %2430, %2421
  %2435 = fadd fast float %2431, %2397
  %2436 = fadd fast float %2432, %2398
  %2437 = fadd fast float %2433, %2399
  %2438 = fadd fast float %2434, %2400
  %2439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2440 = extractvalue %dx.types.CBufRet.f32 %2439, 0
  %2441 = extractvalue %dx.types.CBufRet.f32 %2439, 1
  %2442 = fsub fast float %2440, %2403
  %2443 = fsub fast float %2441, %2404
  %2444 = fmul fast float %2442, %2421
  %2445 = fmul fast float %2443, %2421
  %2446 = fadd fast float %2444, %2403
  %2447 = fadd fast float %2445, %2404
  %2448 = extractvalue %dx.types.CBufRet.f32 %2439, 2
  %2449 = extractvalue %dx.types.CBufRet.f32 %2439, 3
  %2450 = fsub fast float %2448, %2407
  %2451 = fsub fast float %2449, %2408
  %2452 = fmul fast float %2450, %2421
  %2453 = fmul fast float %2451, %2421
  %2454 = fadd fast float %2452, %2407
  %2455 = fadd fast float %2453, %2408
  %2456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2457 = extractvalue %dx.types.CBufRet.f32 %2456, 0
  %2458 = fmul fast float %2457, %2435
  %2459 = fmul fast float %2457, %2436
  %2460 = fmul fast float %2457, %2437
  %2461 = fmul fast float %2457, %2438
  %2462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2463 = extractvalue %dx.types.CBufRet.f32 %2462, 0
  %2464 = fmul fast float %2463, %2446
  %2465 = fmul fast float %2463, %2447
  %2466 = fadd fast float %2464, %2458
  %2467 = fadd fast float %2465, %2460
  %2468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2469 = extractvalue %dx.types.CBufRet.f32 %2468, 0
  %2470 = fmul fast float %2469, %2454
  %2471 = fmul fast float %2469, %2455
  %2472 = fadd fast float %2466, %2470
  %2473 = fadd fast float %2467, %2471
  %2474 = extractvalue %dx.types.CBufRet.f32 %2456, 1
  %2475 = fmul fast float %2474, %2435
  %2476 = fmul fast float %2474, %2436
  %2477 = fmul fast float %2474, %2437
  %2478 = fmul fast float %2474, %2438
  %2479 = extractvalue %dx.types.CBufRet.f32 %2462, 1
  %2480 = fmul fast float %2479, %2446
  %2481 = fmul fast float %2479, %2447
  %2482 = fadd fast float %2480, %2475
  %2483 = fadd fast float %2481, %2477
  %2484 = extractvalue %dx.types.CBufRet.f32 %2468, 1
  %2485 = fmul fast float %2484, %2454
  %2486 = fmul fast float %2484, %2455
  %2487 = fadd fast float %2482, %2485
  %2488 = fadd fast float %2483, %2486
  %2489 = extractvalue %dx.types.CBufRet.f32 %2456, 2
  %2490 = fmul fast float %2489, %2435
  %2491 = fmul fast float %2489, %2436
  %2492 = fmul fast float %2489, %2437
  %2493 = fmul fast float %2489, %2438
  %2494 = extractvalue %dx.types.CBufRet.f32 %2462, 2
  %2495 = fmul fast float %2494, %2446
  %2496 = fmul fast float %2494, %2447
  %2497 = fadd fast float %2495, %2490
  %2498 = fadd fast float %2496, %2492
  %2499 = extractvalue %dx.types.CBufRet.f32 %2468, 2
  %2500 = fmul fast float %2499, %2454
  %2501 = fmul fast float %2499, %2455
  %2502 = fadd fast float %2497, %2500
  %2503 = fadd fast float %2498, %2501
  %2504 = fmul fast float %2491, %2491
  %2505 = fmul fast float %2503, %2503
  %2506 = fmul fast float %2493, %2493
  %2507 = fadd fast float %2506, %2504
  %2508 = fadd fast float %2507, %2505
  %2509 = call float @dx.op.unary.f32(i32 24, float %2508)  ; Sqrt(value)
  %2510 = fcmp fast ugt float %2509, 0.000000e+00
  br i1 %2510, label %2511, label %2526

; <label>:2511                                    ; preds = %2221
  %2512 = fsub fast float -0.000000e+00, %2493
  %2513 = fdiv fast float %2512, %2509
  %2514 = fsub fast float -0.000000e+00, %2491
  %2515 = fdiv fast float %2514, %2509
  %2516 = fdiv fast float %2503, %2509
  %2517 = fmul fast float %2502, 0x3FE279A760000000
  %2518 = fmul fast float %2515, %2491
  %2519 = fmul fast float %2516, %2503
  %2520 = fmul fast float %2513, %2493
  %2521 = fadd fast float %2518, %2520
  %2522 = fsub fast float %2521, %2519
  %2523 = call float @dx.op.unary.f32(i32 6, float %2522)  ; FAbs(value)
  %2524 = fadd fast float %2523, 0x3DDB7CDFE0000000
  %2525 = fdiv fast float %2517, %2524
  br label %2526

; <label>:2526                                    ; preds = %2511, %2221
  %2527 = phi float [ %2525, %2511 ], [ 1.000000e+00, %2221 ]
  %2528 = fmul fast float %2476, %2476
  %2529 = fmul fast float %2488, %2488
  %2530 = fmul fast float %2478, %2478
  %2531 = fadd fast float %2530, %2528
  %2532 = fadd fast float %2531, %2529
  %2533 = call float @dx.op.unary.f32(i32 24, float %2532)  ; Sqrt(value)
  %2534 = fcmp fast ugt float %2533, 0.000000e+00
  br i1 %2534, label %2535, label %2550

; <label>:2535                                    ; preds = %2526
  %2536 = fsub fast float -0.000000e+00, %2478
  %2537 = fdiv fast float %2536, %2533
  %2538 = fsub fast float -0.000000e+00, %2476
  %2539 = fdiv fast float %2538, %2533
  %2540 = fdiv fast float %2488, %2533
  %2541 = fmul fast float %2487, 0x3FE279A760000000
  %2542 = fmul fast float %2539, %2476
  %2543 = fmul fast float %2540, %2488
  %2544 = fmul fast float %2537, %2478
  %2545 = fadd fast float %2542, %2544
  %2546 = fsub fast float %2545, %2543
  %2547 = call float @dx.op.unary.f32(i32 6, float %2546)  ; FAbs(value)
  %2548 = fadd fast float %2547, 0x3DDB7CDFE0000000
  %2549 = fdiv fast float %2541, %2548
  br label %2550

; <label>:2550                                    ; preds = %2535, %2526
  %2551 = phi float [ %2549, %2535 ], [ 1.000000e+00, %2526 ]
  %2552 = call float @dx.op.binary.f32(i32 36, float %2551, float %2527)  ; FMin(a,b)
  %2553 = fmul fast float %2459, %2459
  %2554 = fmul fast float %2473, %2473
  %2555 = fmul fast float %2461, %2461
  %2556 = fadd fast float %2555, %2553
  %2557 = fadd fast float %2556, %2554
  %2558 = call float @dx.op.unary.f32(i32 24, float %2557)  ; Sqrt(value)
  %2559 = fcmp fast ugt float %2558, 0.000000e+00
  br i1 %2559, label %2560, label %2575

; <label>:2560                                    ; preds = %2550
  %2561 = fsub fast float -0.000000e+00, %2461
  %2562 = fdiv fast float %2561, %2558
  %2563 = fsub fast float -0.000000e+00, %2459
  %2564 = fdiv fast float %2563, %2558
  %2565 = fdiv fast float %2473, %2558
  %2566 = fmul fast float %2472, 0x3FE279A760000000
  %2567 = fmul fast float %2564, %2459
  %2568 = fmul fast float %2565, %2473
  %2569 = fmul fast float %2562, %2461
  %2570 = fadd fast float %2567, %2569
  %2571 = fsub fast float %2570, %2568
  %2572 = call float @dx.op.unary.f32(i32 6, float %2571)  ; FAbs(value)
  %2573 = fadd fast float %2572, 0x3DDB7CDFE0000000
  %2574 = fdiv fast float %2566, %2573
  br label %2575

; <label>:2575                                    ; preds = %2560, %2550
  %2576 = phi float [ %2574, %2560 ], [ 1.000000e+00, %2550 ]
  %2577 = call float @dx.op.binary.f32(i32 36, float %2576, float %2552)  ; FMin(a,b)
  %2578 = call float @dx.op.unary.f32(i32 7, float %2577)  ; Saturate(value)
  %2579 = fcmp fast olt float %2578, 1.000000e+00
  br i1 %2579, label %2580, label %2590

; <label>:2580                                    ; preds = %2575
  %2581 = fmul fast float %2578, %2459
  %2582 = fmul fast float %2578, %2473
  %2583 = fmul fast float %2578, %2461
  %2584 = fmul fast float %2578, %2476
  %2585 = fmul fast float %2578, %2488
  %2586 = fmul fast float %2578, %2478
  %2587 = fmul fast float %2578, %2491
  %2588 = fmul fast float %2578, %2503
  %2589 = fmul fast float %2578, %2493
  br label %2590

; <label>:2590                                    ; preds = %2580, %2575
  %2591 = phi float [ %2587, %2580 ], [ %2491, %2575 ]
  %2592 = phi float [ %2588, %2580 ], [ %2503, %2575 ]
  %2593 = phi float [ %2589, %2580 ], [ %2493, %2575 ]
  %2594 = phi float [ %2584, %2580 ], [ %2476, %2575 ]
  %2595 = phi float [ %2585, %2580 ], [ %2488, %2575 ]
  %2596 = phi float [ %2586, %2580 ], [ %2478, %2575 ]
  %2597 = phi float [ %2581, %2580 ], [ %2459, %2575 ]
  %2598 = phi float [ %2582, %2580 ], [ %2473, %2575 ]
  %2599 = phi float [ %2583, %2580 ], [ %2461, %2575 ]
  %2600 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2472)  ; FMax(a,b)
  %2601 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2487)  ; FMax(a,b)
  %2602 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2502)  ; FMax(a,b)
  %2603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2604 = extractvalue %dx.types.CBufRet.f32 %2603, 0
  %2605 = fcmp fast ogt float %2604, 0.000000e+00
  %2606 = fcmp fast oge float %2260, 0.000000e+00
  %2607 = and i1 %2606, %2605
  %2608 = fcmp fast ole float %2260, 1.000000e+00
  %2609 = and i1 %2608, %2607
  %2610 = fcmp fast oge float %2261, 0.000000e+00
  %2611 = and i1 %2610, %2609
  %2612 = fcmp fast ole float %2261, 1.000000e+00
  %2613 = and i1 %2612, %2611
  br i1 %2613, label %2614, label %2754, !dx.controlflow.hints !118

; <label>:2614                                    ; preds = %2590
  %2615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2616 = extractvalue %dx.types.CBufRet.f32 %2615, 2
  %2617 = extractvalue %dx.types.CBufRet.f32 %2615, 3
  %2618 = fmul fast float %2616, %2260
  %2619 = fmul fast float %2617, %2261
  %2620 = call float @dx.op.unary.f32(i32 27, float %2618)  ; Round_ni(value)
  %2621 = call float @dx.op.unary.f32(i32 27, float %2619)  ; Round_ni(value)
  %2622 = fptosi float %2620 to i32
  %2623 = fptosi float %2621 to i32
  %2624 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %39, i32 0, i32 %2622, i32 %2623, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = and i32 %2625, 65535
  %2627 = lshr i32 %2625, 16
  %2628 = icmp eq i32 %2626, 65535
  br i1 %2628, label %2665, label %2629

; <label>:2629                                    ; preds = %2614
  %2630 = extractvalue %dx.types.CBufRet.f32 %2603, 1
  %2631 = extractvalue %dx.types.CBufRet.f32 %2615, 0
  %2632 = extractvalue %dx.types.CBufRet.f32 %2615, 1
  %2633 = fmul fast float %2631, %2260
  %2634 = fmul fast float %2632, %2261
  %2635 = fmul fast float %2633, 1.250000e-01
  %2636 = fmul fast float %2634, 1.250000e-01
  %2637 = call float @dx.op.unary.f32(i32 27, float %2635)  ; Round_ni(value)
  %2638 = call float @dx.op.unary.f32(i32 27, float %2636)  ; Round_ni(value)
  %2639 = fmul fast float %2637, 8.000000e+00
  %2640 = fmul fast float %2638, 8.000000e+00
  %2641 = and i32 %2625, 255
  %2642 = lshr i32 %2625, 8
  %2643 = and i32 %2642, 255
  %2644 = mul nuw nsw i32 %2641, 9
  %2645 = uitofp i32 %2644 to float
  %2646 = mul nuw nsw i32 %2643, 9
  %2647 = uitofp i32 %2646 to float
  %2648 = fadd fast float %2645, 5.000000e-01
  %2649 = fadd fast float %2648, %2633
  %2650 = fsub fast float %2649, %2639
  %2651 = fadd fast float %2647, 5.000000e-01
  %2652 = fadd fast float %2651, %2634
  %2653 = fsub fast float %2652, %2640
  %2654 = fdiv fast float %2650, %2604
  %2655 = fdiv fast float %2653, %2630
  %2656 = fmul fast float %2288, 4.375000e-01
  %2657 = fadd fast float %2656, 3.125000e-02
  %2658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %58, float %2654, float %2655, float %2657, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2659 = extractvalue %dx.types.ResRet.f32 %2658, 0
  %2660 = extractvalue %dx.types.ResRet.f32 %2658, 1
  %2661 = extractvalue %dx.types.ResRet.f32 %2658, 2
  %2662 = fadd fast float %2659, %2600
  %2663 = fadd fast float %2660, %2601
  %2664 = fadd fast float %2661, %2602
  br label %2665

; <label>:2665                                    ; preds = %2629, %2614
  %2666 = phi float [ %2664, %2629 ], [ %2602, %2614 ]
  %2667 = phi float [ %2663, %2629 ], [ %2601, %2614 ]
  %2668 = phi float [ %2662, %2629 ], [ %2600, %2614 ]
  %2669 = icmp eq i32 %2627, 65535
  br i1 %2669, label %2754, label %2670

; <label>:2670                                    ; preds = %2665
  %2671 = extractvalue %dx.types.CBufRet.f32 %2603, 1
  %2672 = extractvalue %dx.types.CBufRet.f32 %2615, 0
  %2673 = extractvalue %dx.types.CBufRet.f32 %2615, 1
  %2674 = fmul fast float %2672, %2260
  %2675 = fmul fast float %2673, %2261
  %2676 = fmul fast float %2674, 1.250000e-01
  %2677 = fmul fast float %2675, 1.250000e-01
  %2678 = call float @dx.op.unary.f32(i32 27, float %2676)  ; Round_ni(value)
  %2679 = call float @dx.op.unary.f32(i32 27, float %2677)  ; Round_ni(value)
  %2680 = fmul fast float %2678, 8.000000e+00
  %2681 = fmul fast float %2679, 8.000000e+00
  %2682 = fsub fast float %2674, %2680
  %2683 = fsub fast float %2675, %2681
  %2684 = fadd fast float %2682, 5.000000e-01
  %2685 = fadd fast float %2683, 5.000000e-01
  %2686 = and i32 %2627, 255
  %2687 = lshr i32 %2625, 24
  %2688 = mul nuw nsw i32 %2686, 9
  %2689 = uitofp i32 %2688 to float
  %2690 = mul nuw nsw i32 %2687, 9
  %2691 = uitofp i32 %2690 to float
  %2692 = fadd fast float %2684, %2689
  %2693 = fadd fast float %2685, %2691
  %2694 = fdiv fast float %2692, %2604
  %2695 = fdiv fast float %2693, %2671
  %2696 = fmul fast float %2288, 4.375000e-01
  %2697 = fadd fast float %2696, 3.125000e-02
  %2698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %58, float %2694, float %2695, float %2697, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2699 = extractvalue %dx.types.ResRet.f32 %2698, 0
  %2700 = extractvalue %dx.types.ResRet.f32 %2698, 1
  %2701 = extractvalue %dx.types.ResRet.f32 %2698, 2
  %2702 = fadd fast float %2696, 5.312500e-01
  %2703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %58, float %2694, float %2695, float %2702, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2704 = extractvalue %dx.types.ResRet.f32 %2703, 0
  %2705 = extractvalue %dx.types.ResRet.f32 %2703, 1
  %2706 = extractvalue %dx.types.ResRet.f32 %2703, 2
  %2707 = fmul fast float %2704, 2.000000e+00
  %2708 = fmul fast float %2705, 2.000000e+00
  %2709 = fmul fast float %2706, 2.000000e+00
  %2710 = fadd fast float %2707, -1.000000e+00
  %2711 = fadd fast float %2708, -1.000000e+00
  %2712 = fadd fast float %2709, -1.000000e+00
  %2713 = fmul fast float %2710, %2710
  %2714 = fmul fast float %2711, %2711
  %2715 = fadd fast float %2713, %2714
  %2716 = fmul fast float %2712, %2712
  %2717 = fadd fast float %2715, %2716
  %2718 = call float @dx.op.unary.f32(i32 24, float %2717)  ; Sqrt(value)
  %2719 = fcmp fast ogt float %2718, 0.000000e+00
  br i1 %2719, label %2720, label %2724

; <label>:2720                                    ; preds = %2670
  %2721 = fdiv fast float %2710, %2718
  %2722 = fdiv fast float %2711, %2718
  %2723 = fdiv fast float %2712, %2718
  br label %2724

; <label>:2724                                    ; preds = %2720, %2670
  %2725 = phi float [ %2721, %2720 ], [ 0.000000e+00, %2670 ]
  %2726 = phi float [ %2722, %2720 ], [ 0.000000e+00, %2670 ]
  %2727 = phi float [ %2723, %2720 ], [ 0.000000e+00, %2670 ]
  %2728 = fmul fast float %144, %144
  %2729 = fmul fast float %145, %145
  %2730 = fadd fast float %2728, %2729
  %2731 = call float @dx.op.unary.f32(i32 24, float %2730)  ; Sqrt(value)
  %2732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2733 = extractvalue %dx.types.CBufRet.f32 %2732, 0
  %2734 = extractvalue %dx.types.CBufRet.f32 %2732, 1
  %2735 = fsub fast float %2731, %2733
  %2736 = fdiv fast float %2735, %2734
  %2737 = call float @dx.op.unary.f32(i32 7, float %2736)  ; Saturate(value)
  %2738 = fmul fast float %2737, 2.000000e+00
  %2739 = fsub fast float 3.000000e+00, %2738
  %2740 = fmul fast float %2737, %2737
  %2741 = fmul fast float %2740, %2739
  %2742 = call float @dx.op.dot3.f32(i32 55, float %2725, float %2726, float %2727, float %2099, float %2100, float %2101)  ; Dot3(ax,ay,az,bx,by,bz)
  %2743 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2742)  ; FMax(a,b)
  %2744 = fmul fast float %2743, 0x400C5BF8A0000000
  %2745 = fmul fast float %2741, %2699
  %2746 = fmul fast float %2745, %2744
  %2747 = fadd fast float %2746, %2668
  %2748 = fmul fast float %2741, %2700
  %2749 = fmul fast float %2748, %2744
  %2750 = fadd fast float %2749, %2667
  %2751 = fmul fast float %2741, %2701
  %2752 = fmul fast float %2751, %2744
  %2753 = fadd fast float %2752, %2666
  br label %2754

; <label>:2754                                    ; preds = %2724, %2665, %2590
  %2755 = phi float [ %2753, %2724 ], [ %2666, %2665 ], [ %2602, %2590 ]
  %2756 = phi float [ %2750, %2724 ], [ %2667, %2665 ], [ %2601, %2590 ]
  %2757 = phi float [ %2747, %2724 ], [ %2668, %2665 ], [ %2600, %2590 ]
  %2758 = fcmp fast ogt float %2247, %2284
  %2759 = and i1 %2606, %2758
  %2760 = and i1 %2608, %2759
  %2761 = and i1 %2610, %2760
  %2762 = and i1 %2612, %2761
  br i1 %2762, label %2763, label %2820, !dx.controlflow.hints !119

; <label>:2763                                    ; preds = %2754
  %2764 = fmul fast float %2286, 0x3FC24924A0000000
  %2765 = fsub fast float %2247, %2284
  %2766 = fdiv fast float %2765, %2764
  %2767 = call float @dx.op.unary.f32(i32 7, float %2766)  ; Saturate(value)
  %2768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2769 = extractvalue %dx.types.CBufRet.f32 %2768, 0
  %2770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2771 = extractvalue %dx.types.CBufRet.f32 %2770, 0
  %2772 = extractvalue %dx.types.CBufRet.f32 %2770, 1
  %2773 = extractvalue %dx.types.CBufRet.f32 %2770, 2
  %2774 = fsub fast float %2769, %2757
  %2775 = fsub fast float %2771, %2597
  %2776 = fsub fast float %2772, %2598
  %2777 = fsub fast float %2773, %2599
  %2778 = fmul fast float %2774, %2767
  %2779 = fmul fast float %2775, %2767
  %2780 = fmul fast float %2776, %2767
  %2781 = fmul fast float %2777, %2767
  %2782 = fadd fast float %2778, %2757
  %2783 = fadd fast float %2779, %2597
  %2784 = fadd fast float %2780, %2598
  %2785 = fadd fast float %2781, %2599
  %2786 = extractvalue %dx.types.CBufRet.f32 %2768, 1
  %2787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2788 = extractvalue %dx.types.CBufRet.f32 %2787, 0
  %2789 = extractvalue %dx.types.CBufRet.f32 %2787, 1
  %2790 = extractvalue %dx.types.CBufRet.f32 %2787, 2
  %2791 = fsub fast float %2786, %2756
  %2792 = fsub fast float %2788, %2594
  %2793 = fsub fast float %2789, %2595
  %2794 = fsub fast float %2790, %2596
  %2795 = fmul fast float %2791, %2767
  %2796 = fmul fast float %2792, %2767
  %2797 = fmul fast float %2793, %2767
  %2798 = fmul fast float %2794, %2767
  %2799 = fadd fast float %2795, %2756
  %2800 = fadd fast float %2796, %2594
  %2801 = fadd fast float %2797, %2595
  %2802 = fadd fast float %2798, %2596
  %2803 = extractvalue %dx.types.CBufRet.f32 %2768, 2
  %2804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2805 = extractvalue %dx.types.CBufRet.f32 %2804, 0
  %2806 = extractvalue %dx.types.CBufRet.f32 %2804, 1
  %2807 = extractvalue %dx.types.CBufRet.f32 %2804, 2
  %2808 = fsub fast float %2803, %2755
  %2809 = fsub fast float %2805, %2591
  %2810 = fsub fast float %2806, %2592
  %2811 = fsub fast float %2807, %2593
  %2812 = fmul fast float %2808, %2767
  %2813 = fmul fast float %2809, %2767
  %2814 = fmul fast float %2810, %2767
  %2815 = fmul fast float %2811, %2767
  %2816 = fadd fast float %2812, %2755
  %2817 = fadd fast float %2813, %2591
  %2818 = fadd fast float %2814, %2592
  %2819 = fadd fast float %2815, %2593
  br label %2820

; <label>:2820                                    ; preds = %2763, %2754
  %2821 = phi float [ %2816, %2763 ], [ %2755, %2754 ]
  %2822 = phi float [ %2817, %2763 ], [ %2591, %2754 ]
  %2823 = phi float [ %2818, %2763 ], [ %2592, %2754 ]
  %2824 = phi float [ %2819, %2763 ], [ %2593, %2754 ]
  %2825 = phi float [ %2799, %2763 ], [ %2756, %2754 ]
  %2826 = phi float [ %2800, %2763 ], [ %2594, %2754 ]
  %2827 = phi float [ %2801, %2763 ], [ %2595, %2754 ]
  %2828 = phi float [ %2802, %2763 ], [ %2596, %2754 ]
  %2829 = phi float [ %2782, %2763 ], [ %2757, %2754 ]
  %2830 = phi float [ %2783, %2763 ], [ %2597, %2754 ]
  %2831 = phi float [ %2784, %2763 ], [ %2598, %2754 ]
  %2832 = phi float [ %2785, %2763 ], [ %2599, %2754 ]
  %2833 = extractvalue %dx.types.CBufRet.f32 %2409, 3
  %2834 = fmul fast float %2833, %2829
  %2835 = fmul fast float %2833, %2825
  %2836 = fmul fast float %2833, %2821
  %2837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2838 = extractvalue %dx.types.CBufRet.f32 %2837, 3
  %2839 = fmul fast float %2834, %2838
  %2840 = fmul fast float %2835, %2838
  %2841 = fmul fast float %2836, %2838
  %2842 = call float @dx.op.dot3.f32(i32 55, float %2839, float %2840, float %2841, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2843 = fmul fast float %2842, 0x3FD20DD760000000
  %2844 = fmul fast float %2830, 1.500000e+00
  %2845 = fmul fast float %2844, %2833
  %2846 = fmul fast float %2845, %2838
  %2847 = fmul fast float %2831, 1.500000e+00
  %2848 = fmul fast float %2847, %2833
  %2849 = fmul fast float %2848, %2838
  %2850 = fmul fast float %2832, 1.500000e+00
  %2851 = fmul fast float %2850, %2833
  %2852 = fmul fast float %2851, %2838
  %2853 = fmul fast float %2826, 1.500000e+00
  %2854 = fmul fast float %2853, %2833
  %2855 = fmul fast float %2854, %2838
  %2856 = fmul fast float %2827, 1.500000e+00
  %2857 = fmul fast float %2856, %2833
  %2858 = fmul fast float %2857, %2838
  %2859 = fmul fast float %2828, 1.500000e+00
  %2860 = fmul fast float %2859, %2833
  %2861 = fmul fast float %2860, %2838
  %2862 = fmul fast float %2822, 1.500000e+00
  %2863 = fmul fast float %2862, %2833
  %2864 = fmul fast float %2863, %2838
  %2865 = fmul fast float %2823, 1.500000e+00
  %2866 = fmul fast float %2865, %2833
  %2867 = fmul fast float %2866, %2838
  %2868 = fmul fast float %2824, 1.500000e+00
  %2869 = fmul fast float %2868, %2833
  %2870 = fmul fast float %2869, %2838
  %2871 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2839)  ; FMax(a,b)
  %2872 = call float @dx.op.dot3.f32(i32 55, float %2846, float %2849, float %2852, float %2846, float %2849, float %2852)  ; Dot3(ax,ay,az,bx,by,bz)
  %2873 = fcmp fast oeq float %2872, 0.000000e+00
  %2874 = fcmp fast oeq float %2871, 0.000000e+00
  %2875 = or i1 %2874, %2873
  br i1 %2875, label %2905, label %2876

; <label>:2876                                    ; preds = %2820
  %2877 = fsub fast float -0.000000e+00, %2852
  %2878 = fsub fast float -0.000000e+00, %2846
  %2879 = call float @dx.op.unary.f32(i32 24, float %2872)  ; Sqrt(value)
  %2880 = fdiv fast float %2879, %2871
  %2881 = fcmp fast ogt float %2880, 0x3FFB6F8900000000
  %2882 = select i1 %2881, float 0x3FFB6F8900000000, float %2880
  %2883 = fmul fast float %2882, 0x3FE8A23460000000
  %2884 = call float @dx.op.unary.f32(i32 7, float %2883)  ; Saturate(value)
  %2885 = call float @dx.op.binary.f32(i32 35, float %2882, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2886 = fmul fast float %2884, %2871
  %2887 = fmul fast float %2885, 0x3FF279A740000000
  %2888 = fadd fast float %2887, -1.000000e+00
  %2889 = call float @dx.op.dot3.f32(i32 55, float %2877, float %2878, float %2849, float %2877, float %2878, float %2849)  ; Dot3(ax,ay,az,bx,by,bz)
  %2890 = call float @dx.op.unary.f32(i32 25, float %2889)  ; Rsqrt(value)
  %2891 = fmul fast float %2890, %2877
  %2892 = fmul fast float %2890, %2878
  %2893 = fmul fast float %2890, %2849
  %2894 = fmul fast float %2888, %2888
  %2895 = fsub fast float 1.000000e+00, %2894
  %2896 = fmul fast float %2885, 0x40005F8BE0000000
  %2897 = fsub fast float 0x400C5BF8A0000000, %2896
  %2898 = fdiv fast float %2886, %2897
  %2899 = fmul fast float %2898, 0x3FEE31C3C0000000
  %2900 = fmul fast float %2899, %2895
  %2901 = fmul fast float %2885, 0x3FDACB7480000000
  %2902 = fadd fast float %2901, 0xBFD7347680000000
  %2903 = fmul fast float %2902, %2898
  %2904 = fmul fast float %2903, %2895
  br label %2905

; <label>:2905                                    ; preds = %2876, %2820
  %2906 = phi float [ %2891, %2876 ], [ 0.000000e+00, %2820 ]
  %2907 = phi float [ %2892, %2876 ], [ 0.000000e+00, %2820 ]
  %2908 = phi float [ %2893, %2876 ], [ 0.000000e+00, %2820 ]
  %2909 = phi float [ %2900, %2876 ], [ 0.000000e+00, %2820 ]
  %2910 = phi float [ %2904, %2876 ], [ 0.000000e+00, %2820 ]
  %2911 = call float @dx.op.dot3.f32(i32 55, float %2906, float %2907, float %2908, float %2099, float %2100, float %2101)  ; Dot3(ax,ay,az,bx,by,bz)
  %2912 = fmul fast float %2911, %2911
  %2913 = fmul fast float %2912, 0x3FEE471020000000
  %2914 = fadd fast float %2913, 0xBFD42F6020000000
  %2915 = fmul fast float %2871, 0x3FD20DD760000000
  %2916 = fmul fast float %2914, %2910
  %2917 = fmul fast float %2909, 0x3FDF454380000000
  %2918 = fmul fast float %2917, %2911
  %2919 = fadd fast float %2918, %2915
  %2920 = fadd fast float %2919, %2916
  %2921 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2840)  ; FMax(a,b)
  %2922 = call float @dx.op.dot3.f32(i32 55, float %2855, float %2858, float %2861, float %2855, float %2858, float %2861)  ; Dot3(ax,ay,az,bx,by,bz)
  %2923 = fcmp fast oeq float %2922, 0.000000e+00
  %2924 = fcmp fast oeq float %2921, 0.000000e+00
  %2925 = or i1 %2924, %2923
  br i1 %2925, label %2955, label %2926

; <label>:2926                                    ; preds = %2905
  %2927 = fsub fast float -0.000000e+00, %2861
  %2928 = fsub fast float -0.000000e+00, %2855
  %2929 = call float @dx.op.unary.f32(i32 24, float %2922)  ; Sqrt(value)
  %2930 = fdiv fast float %2929, %2921
  %2931 = fcmp fast ogt float %2930, 0x3FFB6F8900000000
  %2932 = select i1 %2931, float 0x3FFB6F8900000000, float %2930
  %2933 = fmul fast float %2932, 0x3FE8A23460000000
  %2934 = call float @dx.op.unary.f32(i32 7, float %2933)  ; Saturate(value)
  %2935 = call float @dx.op.binary.f32(i32 35, float %2932, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2936 = fmul fast float %2934, %2921
  %2937 = fmul fast float %2935, 0x3FF279A740000000
  %2938 = fadd fast float %2937, -1.000000e+00
  %2939 = call float @dx.op.dot3.f32(i32 55, float %2927, float %2928, float %2858, float %2927, float %2928, float %2858)  ; Dot3(ax,ay,az,bx,by,bz)
  %2940 = call float @dx.op.unary.f32(i32 25, float %2939)  ; Rsqrt(value)
  %2941 = fmul fast float %2940, %2927
  %2942 = fmul fast float %2940, %2928
  %2943 = fmul fast float %2940, %2858
  %2944 = fmul fast float %2938, %2938
  %2945 = fsub fast float 1.000000e+00, %2944
  %2946 = fmul fast float %2935, 0x40005F8BE0000000
  %2947 = fsub fast float 0x400C5BF8A0000000, %2946
  %2948 = fdiv fast float %2936, %2947
  %2949 = fmul fast float %2948, 0x3FEE31C3C0000000
  %2950 = fmul fast float %2949, %2945
  %2951 = fmul fast float %2935, 0x3FDACB7480000000
  %2952 = fadd fast float %2951, 0xBFD7347680000000
  %2953 = fmul fast float %2952, %2948
  %2954 = fmul fast float %2953, %2945
  br label %2955

; <label>:2955                                    ; preds = %2926, %2905
  %2956 = phi float [ %2941, %2926 ], [ 0.000000e+00, %2905 ]
  %2957 = phi float [ %2942, %2926 ], [ 0.000000e+00, %2905 ]
  %2958 = phi float [ %2943, %2926 ], [ 0.000000e+00, %2905 ]
  %2959 = phi float [ %2950, %2926 ], [ 0.000000e+00, %2905 ]
  %2960 = phi float [ %2954, %2926 ], [ 0.000000e+00, %2905 ]
  %2961 = call float @dx.op.dot3.f32(i32 55, float %2956, float %2957, float %2958, float %2099, float %2100, float %2101)  ; Dot3(ax,ay,az,bx,by,bz)
  %2962 = fmul fast float %2961, %2961
  %2963 = fmul fast float %2962, 0x3FEE471020000000
  %2964 = fadd fast float %2963, 0xBFD42F6020000000
  %2965 = fmul fast float %2921, 0x3FD20DD760000000
  %2966 = fmul fast float %2964, %2960
  %2967 = fmul fast float %2959, 0x3FDF454380000000
  %2968 = fmul fast float %2967, %2961
  %2969 = fadd fast float %2968, %2965
  %2970 = fadd fast float %2969, %2966
  %2971 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2841)  ; FMax(a,b)
  %2972 = call float @dx.op.dot3.f32(i32 55, float %2864, float %2867, float %2870, float %2864, float %2867, float %2870)  ; Dot3(ax,ay,az,bx,by,bz)
  %2973 = fcmp fast oeq float %2972, 0.000000e+00
  %2974 = fcmp fast oeq float %2971, 0.000000e+00
  %2975 = or i1 %2974, %2973
  br i1 %2975, label %3005, label %2976

; <label>:2976                                    ; preds = %2955
  %2977 = fsub fast float -0.000000e+00, %2870
  %2978 = fsub fast float -0.000000e+00, %2864
  %2979 = call float @dx.op.unary.f32(i32 24, float %2972)  ; Sqrt(value)
  %2980 = fdiv fast float %2979, %2971
  %2981 = fcmp fast ogt float %2980, 0x3FFB6F8900000000
  %2982 = select i1 %2981, float 0x3FFB6F8900000000, float %2980
  %2983 = fmul fast float %2982, 0x3FE8A23460000000
  %2984 = call float @dx.op.unary.f32(i32 7, float %2983)  ; Saturate(value)
  %2985 = call float @dx.op.binary.f32(i32 35, float %2982, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2986 = fmul fast float %2984, %2971
  %2987 = fmul fast float %2985, 0x3FF279A740000000
  %2988 = fadd fast float %2987, -1.000000e+00
  %2989 = call float @dx.op.dot3.f32(i32 55, float %2977, float %2978, float %2867, float %2977, float %2978, float %2867)  ; Dot3(ax,ay,az,bx,by,bz)
  %2990 = call float @dx.op.unary.f32(i32 25, float %2989)  ; Rsqrt(value)
  %2991 = fmul fast float %2990, %2977
  %2992 = fmul fast float %2990, %2978
  %2993 = fmul fast float %2990, %2867
  %2994 = fmul fast float %2988, %2988
  %2995 = fsub fast float 1.000000e+00, %2994
  %2996 = fmul fast float %2985, 0x40005F8BE0000000
  %2997 = fsub fast float 0x400C5BF8A0000000, %2996
  %2998 = fdiv fast float %2986, %2997
  %2999 = fmul fast float %2998, 0x3FEE31C3C0000000
  %3000 = fmul fast float %2999, %2995
  %3001 = fmul fast float %2985, 0x3FDACB7480000000
  %3002 = fadd fast float %3001, 0xBFD7347680000000
  %3003 = fmul fast float %3002, %2998
  %3004 = fmul fast float %3003, %2995
  br label %3005

; <label>:3005                                    ; preds = %2976, %2955
  %3006 = phi float [ %2991, %2976 ], [ 0.000000e+00, %2955 ]
  %3007 = phi float [ %2992, %2976 ], [ 0.000000e+00, %2955 ]
  %3008 = phi float [ %2993, %2976 ], [ 0.000000e+00, %2955 ]
  %3009 = phi float [ %3000, %2976 ], [ 0.000000e+00, %2955 ]
  %3010 = phi float [ %3004, %2976 ], [ 0.000000e+00, %2955 ]
  %3011 = call float @dx.op.dot3.f32(i32 55, float %3006, float %3007, float %3008, float %2099, float %2100, float %2101)  ; Dot3(ax,ay,az,bx,by,bz)
  %3012 = fmul fast float %3011, %3011
  %3013 = fmul fast float %3012, 0x3FEE471020000000
  %3014 = fadd fast float %3013, 0xBFD42F6020000000
  %3015 = fmul fast float %2971, 0x3FD20DD760000000
  %3016 = fmul fast float %3014, %3010
  %3017 = fmul fast float %3009, 0x3FDF454380000000
  %3018 = fmul fast float %3017, %3011
  %3019 = fadd fast float %3018, %3015
  %3020 = fadd fast float %3019, %3016
  %3021 = call float @dx.op.binary.f32(i32 35, float %2920, float 0.000000e+00)  ; FMax(a,b)
  %3022 = call float @dx.op.binary.f32(i32 35, float %2970, float 0.000000e+00)  ; FMax(a,b)
  %3023 = call float @dx.op.binary.f32(i32 35, float %3020, float 0.000000e+00)  ; FMax(a,b)
  %3024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3025 = extractvalue %dx.types.CBufRet.f32 %3024, 0
  %3026 = call float @dx.op.binary.f32(i32 36, float %2111, float %3025)  ; FMin(a,b)
  %3027 = fsub fast float 1.000000e+00, %2237
  %3028 = fmul fast float %3026, %3027
  %3029 = fsub fast float 1.000000e+00, %3028
  %3030 = bitcast float %3029 to i32
  %3031 = sub nsw i32 2129859010, %3030
  %3032 = bitcast i32 %3031 to float
  %3033 = call float @dx.op.binary.f32(i32 36, float %2112, float %3025)  ; FMin(a,b)
  %3034 = fmul fast float %3033, %3027
  %3035 = fsub fast float 1.000000e+00, %3034
  %3036 = bitcast float %3035 to i32
  %3037 = sub nsw i32 2129859010, %3036
  %3038 = bitcast i32 %3037 to float
  %3039 = call float @dx.op.binary.f32(i32 36, float %2113, float %3025)  ; FMin(a,b)
  %3040 = fmul fast float %3039, %3027
  %3041 = fsub fast float 1.000000e+00, %3040
  %3042 = bitcast float %3041 to i32
  %3043 = sub nsw i32 2129859010, %3042
  %3044 = bitcast i32 %3043 to float
  %3045 = fmul fast float %3021, %2237
  %3046 = fmul fast float %3045, %3032
  %3047 = fmul fast float %3022, %2237
  %3048 = fmul fast float %3047, %3038
  %3049 = fmul fast float %3023, %2237
  %3050 = fmul fast float %3049, %3044
  %3051 = call float @dx.op.dot3.f32(i32 55, float %3046, float %3048, float %3050, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3052 = select i1 %2222, float 0.000000e+00, float %3046
  %3053 = select i1 %2222, float %3051, float %3048
  %3054 = select i1 %2222, float 0.000000e+00, float %3050
  %3055 = fsub fast float 1.000000e+00, %2120
  %3056 = fsub fast float 1.000000e+00, %2121
  %3057 = fsub fast float 1.000000e+00, %2227
  %3058 = fmul fast float %2159, %3055
  %3059 = fmul fast float %2159, %3056
  %3060 = fmul fast float %3057, %2159
  %3061 = fadd fast float %3058, %2120
  %3062 = fadd fast float %3059, %2121
  %3063 = fadd fast float %3060, %2227
  %3064 = call float @dx.op.binary.f32(i32 35, float %3062, float %3063)  ; FMax(a,b)
  %3065 = call float @dx.op.binary.f32(i32 35, float %3061, float %3064)  ; FMax(a,b)
  %3066 = fsub fast float 1.000000e+00, %3065
  %3067 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3068 = extractvalue %dx.types.CBufRet.i32 %3067, 0
  %3069 = and i32 %3068, 524288
  %3070 = icmp ne i32 %3069, 0
  %3071 = select i1 %3070, float 0.000000e+00, float 1.000000e+00
  %3072 = xor i1 %3070, true
  %3073 = zext i1 %3072 to i32
  br i1 %3070, label %3074, label %3344

; <label>:3074                                    ; preds = %3005
  %3075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %3076 = extractvalue %dx.types.CBufRet.f32 %3075, 0
  %3077 = extractvalue %dx.types.CBufRet.f32 %3075, 1
  %3078 = extractvalue %dx.types.CBufRet.f32 %3075, 2
  %3079 = extractvalue %dx.types.CBufRet.f32 %3075, 3
  %3080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %3081 = extractvalue %dx.types.CBufRet.f32 %3080, 0
  %3082 = extractvalue %dx.types.CBufRet.f32 %3080, 1
  %3083 = extractvalue %dx.types.CBufRet.f32 %3080, 2
  %3084 = extractvalue %dx.types.CBufRet.f32 %3080, 3
  %3085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %3086 = extractvalue %dx.types.CBufRet.f32 %3085, 0
  %3087 = extractvalue %dx.types.CBufRet.f32 %3085, 1
  %3088 = extractvalue %dx.types.CBufRet.f32 %3085, 2
  %3089 = extractvalue %dx.types.CBufRet.f32 %3085, 3
  %3090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %3091 = extractvalue %dx.types.CBufRet.f32 %3090, 0
  %3092 = extractvalue %dx.types.CBufRet.f32 %3090, 1
  %3093 = extractvalue %dx.types.CBufRet.f32 %3090, 2
  %3094 = extractvalue %dx.types.CBufRet.f32 %3090, 3
  %3095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %3096 = extractvalue %dx.types.CBufRet.f32 %3095, 0
  %3097 = extractvalue %dx.types.CBufRet.f32 %3095, 1
  %3098 = extractvalue %dx.types.CBufRet.f32 %3095, 2
  %3099 = extractvalue %dx.types.CBufRet.f32 %3095, 3
  %3100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %3101 = extractvalue %dx.types.CBufRet.f32 %3100, 0
  %3102 = extractvalue %dx.types.CBufRet.f32 %3100, 1
  %3103 = extractvalue %dx.types.CBufRet.f32 %3100, 2
  %3104 = extractvalue %dx.types.CBufRet.f32 %3100, 3
  %3105 = call float @dx.op.dot3.f32(i32 55, float %3101, float %3102, float %3103, float %2234, float %2235, float %2236)  ; Dot3(ax,ay,az,bx,by,bz)
  %3106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %3107 = extractvalue %dx.types.CBufRet.f32 %3106, 1
  %3108 = extractvalue %dx.types.CBufRet.f32 %3106, 0
  %3109 = select i1 %106, float %3108, float %3107
  %3110 = fmul fast float %3105, 8.000000e+00
  %3111 = fmul fast float %3110, %3109
  %3112 = call float @dx.op.unary.f32(i32 7, float %3111)  ; Saturate(value)
  %3113 = fcmp fast ogt float %3112, 0.000000e+00
  br i1 %3113, label %3114, label %3331, !dx.controlflow.hints !120

; <label>:3114                                    ; preds = %3074
  %3115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %3116 = extractvalue %dx.types.CBufRet.f32 %3115, 1
  %3117 = fmul fast float %1586, 2.000000e+00
  %3118 = fmul fast float %1587, 2.000000e+00
  %3119 = fadd fast float %3117, -1.000000e+00
  %3120 = fadd fast float %3118, -1.000000e+00
  %3121 = fmul fast float %3116, %3119
  %3122 = fmul fast float %3116, %3120
  %3123 = fadd fast float %3121, %89
  %3124 = fadd fast float %3122, %90
  %3125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3126 = extractvalue %dx.types.CBufRet.f32 %3125, 2
  %3127 = extractvalue %dx.types.CBufRet.f32 %3125, 3
  %3128 = fmul fast float %3123, %3126
  %3129 = fmul fast float %3124, %3127
  %3130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %59, float %3128, float %3129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3131 = extractvalue %dx.types.ResRet.f32 %3130, 0
  %3132 = fcmp fast une float %3131, 0xFFF0000000000000
  %3133 = fcmp fast une float %3131, 0x7FF0000000000000
  %3134 = and i1 %3132, %3133
  %3135 = call float @dx.op.unary.f32(i32 6, float %3131)  ; FAbs(value)
  %3136 = fsub fast float 1.000000e+00, %3135
  %3137 = select i1 %3134, float 1.000000e+00, float 0.000000e+00
  %3138 = fmul fast float %3137, %3112
  %3139 = fcmp fast ogt float %3138, 0.000000e+00
  br i1 %3139, label %3140, label %3331, !dx.controlflow.hints !121

; <label>:3140                                    ; preds = %3114
  %3141 = fmul fast float %3076, %144
  %3142 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3077, float %3141)  ; FMad(a,b,c)
  %3143 = call float @dx.op.tertiary.f32(i32 46, float %146, float %3078, float %3142)  ; FMad(a,b,c)
  %3144 = fadd fast float %3143, %3079
  %3145 = fmul fast float %3081, %144
  %3146 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3082, float %3145)  ; FMad(a,b,c)
  %3147 = call float @dx.op.tertiary.f32(i32 46, float %146, float %3083, float %3146)  ; FMad(a,b,c)
  %3148 = fadd fast float %3147, %3084
  %3149 = fmul fast float %3086, %144
  %3150 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3087, float %3149)  ; FMad(a,b,c)
  %3151 = call float @dx.op.tertiary.f32(i32 46, float %146, float %3088, float %3150)  ; FMad(a,b,c)
  %3152 = fadd fast float %3151, %3089
  %3153 = fdiv fast float 1.000000e+00, %3152
  %3154 = fmul fast float %3153, %3144
  %3155 = fmul fast float %3153, %3148
  %3156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3157 = extractvalue %dx.types.CBufRet.f32 %3156, 0
  %3158 = extractvalue %dx.types.CBufRet.f32 %3156, 1
  %3159 = fmul fast float %3154, %3157
  %3160 = fmul fast float %3155, %3158
  %3161 = extractvalue %dx.types.CBufRet.f32 %3156, 2
  %3162 = extractvalue %dx.types.CBufRet.f32 %3156, 3
  %3163 = fadd fast float %3159, %3161
  %3164 = fadd fast float %3160, %3162
  %3165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3166 = extractvalue %dx.types.CBufRet.f32 %3165, 3
  %3167 = fmul fast float %3166, %2234
  %3168 = fmul fast float %3166, %2235
  %3169 = fmul fast float %3166, %2236
  %3170 = fadd fast float %3167, %144
  %3171 = fadd fast float %3168, %145
  %3172 = fadd fast float %3169, %146
  %3173 = fmul fast float %3170, %3076
  %3174 = call float @dx.op.tertiary.f32(i32 46, float %3171, float %3077, float %3173)  ; FMad(a,b,c)
  %3175 = call float @dx.op.tertiary.f32(i32 46, float %3172, float %3078, float %3174)  ; FMad(a,b,c)
  %3176 = fadd fast float %3175, %3079
  %3177 = fmul fast float %3170, %3081
  %3178 = call float @dx.op.tertiary.f32(i32 46, float %3171, float %3082, float %3177)  ; FMad(a,b,c)
  %3179 = call float @dx.op.tertiary.f32(i32 46, float %3172, float %3083, float %3178)  ; FMad(a,b,c)
  %3180 = fadd fast float %3179, %3084
  %3181 = fmul fast float %3170, %3086
  %3182 = call float @dx.op.tertiary.f32(i32 46, float %3171, float %3087, float %3181)  ; FMad(a,b,c)
  %3183 = call float @dx.op.tertiary.f32(i32 46, float %3172, float %3088, float %3182)  ; FMad(a,b,c)
  %3184 = fadd fast float %3183, %3089
  %3185 = fdiv fast float 1.000000e+00, %3184
  %3186 = fmul fast float %3185, %3176
  %3187 = fmul fast float %3185, %3180
  %3188 = fmul fast float %3163, 2.000000e+00
  %3189 = fadd fast float %3188, -1.000000e+00
  %3190 = call float @dx.op.unary.f32(i32 6, float %3189)  ; FAbs(value)
  %3191 = fmul fast float %3190, 5.000000e+00
  %3192 = fadd fast float %3191, -4.000000e+00
  %3193 = call float @dx.op.unary.f32(i32 7, float %3192)  ; Saturate(value)
  %3194 = fsub fast float %3154, %3186
  %3195 = fmul fast float %3157, %3194
  %3196 = fmul fast float %3195, %3193
  %3197 = fsub fast float %3186, %3154
  %3198 = fmul fast float %3157, %3197
  %3199 = fadd fast float %3198, %3196
  %3200 = fsub fast float %3187, %3155
  %3201 = fmul fast float %3158, %3200
  %3202 = fmul fast float %3199, %3136
  %3203 = fmul fast float %3201, %3136
  %3204 = fadd fast float %3202, %3163
  %3205 = fadd fast float %3203, %3164
  %3206 = fsub fast float %3185, %3153
  %3207 = fmul fast float %3206, %3136
  %3208 = fadd fast float %3207, %3153
  %3209 = fdiv fast float 1.000000e+00, %3208
  %3210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %58, float %3204, float %3205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3211 = extractvalue %dx.types.ResRet.f32 %3210, 0
  %3212 = extractvalue %dx.types.ResRet.f32 %3210, 1
  %3213 = extractvalue %dx.types.ResRet.f32 %3210, 2
  %3214 = extractvalue %dx.types.CBufRet.f32 %2837, 1
  %3215 = fmul fast float %3214, %3211
  %3216 = fmul fast float %3214, %3212
  %3217 = fmul fast float %3214, %3213
  %3218 = call float @dx.op.binary.f32(i32 35, float %3209, float 0x3810000000000000)  ; FMax(a,b)
  %3219 = fdiv fast float %3152, %3218
  %3220 = call float @dx.op.unary.f32(i32 7, float %3219)  ; Saturate(value)
  %3221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %3222 = extractvalue %dx.types.CBufRet.f32 %3221, 0
  %3223 = extractvalue %dx.types.CBufRet.f32 %3221, 1
  %3224 = extractvalue %dx.types.CBufRet.f32 %3221, 2
  %3225 = fadd fast float %3222, %144
  %3226 = fadd fast float %3223, %145
  %3227 = fadd fast float %3224, %146
  %3228 = fmul fast float %3225, %3091
  %3229 = call float @dx.op.tertiary.f32(i32 46, float %3226, float %3092, float %3228)  ; FMad(a,b,c)
  %3230 = call float @dx.op.tertiary.f32(i32 46, float %3227, float %3093, float %3229)  ; FMad(a,b,c)
  %3231 = fadd fast float %3230, %3094
  %3232 = fmul fast float %3225, %3096
  %3233 = call float @dx.op.tertiary.f32(i32 46, float %3226, float %3097, float %3232)  ; FMad(a,b,c)
  %3234 = call float @dx.op.tertiary.f32(i32 46, float %3227, float %3098, float %3233)  ; FMad(a,b,c)
  %3235 = fadd fast float %3234, %3099
  %3236 = fmul fast float %3225, %3101
  %3237 = call float @dx.op.tertiary.f32(i32 46, float %3226, float %3102, float %3236)  ; FMad(a,b,c)
  %3238 = call float @dx.op.tertiary.f32(i32 46, float %3227, float %3103, float %3237)  ; FMad(a,b,c)
  %3239 = fadd fast float %3238, %3104
  %3240 = fdiv fast float 1.000000e+00, %3239
  %3241 = fmul fast float %3240, %3231
  %3242 = fmul fast float %3240, %3235
  %3243 = fmul fast float %3241, %3157
  %3244 = fmul fast float %3242, %3158
  %3245 = fadd fast float %3243, %3161
  %3246 = fadd fast float %3244, %3162
  %3247 = fadd fast float %3167, %3225
  %3248 = fadd fast float %3168, %3226
  %3249 = fadd fast float %3169, %3227
  %3250 = fmul fast float %3247, %3091
  %3251 = call float @dx.op.tertiary.f32(i32 46, float %3248, float %3092, float %3250)  ; FMad(a,b,c)
  %3252 = call float @dx.op.tertiary.f32(i32 46, float %3249, float %3093, float %3251)  ; FMad(a,b,c)
  %3253 = fadd fast float %3252, %3094
  %3254 = fmul fast float %3247, %3096
  %3255 = call float @dx.op.tertiary.f32(i32 46, float %3248, float %3097, float %3254)  ; FMad(a,b,c)
  %3256 = call float @dx.op.tertiary.f32(i32 46, float %3249, float %3098, float %3255)  ; FMad(a,b,c)
  %3257 = fadd fast float %3256, %3099
  %3258 = fmul fast float %3247, %3101
  %3259 = call float @dx.op.tertiary.f32(i32 46, float %3248, float %3102, float %3258)  ; FMad(a,b,c)
  %3260 = call float @dx.op.tertiary.f32(i32 46, float %3249, float %3103, float %3259)  ; FMad(a,b,c)
  %3261 = fadd fast float %3260, %3104
  %3262 = fdiv fast float 1.000000e+00, %3261
  %3263 = fmul fast float %3262, %3253
  %3264 = fmul fast float %3262, %3257
  %3265 = fmul fast float %3245, 2.000000e+00
  %3266 = fadd fast float %3265, -1.000000e+00
  %3267 = call float @dx.op.unary.f32(i32 6, float %3266)  ; FAbs(value)
  %3268 = fmul fast float %3267, 5.000000e+00
  %3269 = fadd fast float %3268, -4.000000e+00
  %3270 = call float @dx.op.unary.f32(i32 7, float %3269)  ; Saturate(value)
  %3271 = fsub fast float %3241, %3263
  %3272 = fmul fast float %3157, %3271
  %3273 = fmul fast float %3272, %3270
  %3274 = fsub fast float %3263, %3241
  %3275 = fmul fast float %3157, %3274
  %3276 = fadd fast float %3275, %3273
  %3277 = fsub fast float %3264, %3242
  %3278 = fmul fast float %3158, %3277
  %3279 = fmul fast float %3276, %3136
  %3280 = fmul fast float %3278, %3136
  %3281 = fadd fast float %3279, %3245
  %3282 = fadd fast float %3280, %3246
  %3283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %58, float %3281, float %3282, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3284 = extractvalue %dx.types.ResRet.f32 %3283, 0
  %3285 = extractvalue %dx.types.ResRet.f32 %3283, 1
  %3286 = extractvalue %dx.types.ResRet.f32 %3283, 2
  %3287 = extractvalue %dx.types.CBufRet.f32 %2837, 2
  %3288 = fmul fast float %3287, %3284
  %3289 = fmul fast float %3287, %3285
  %3290 = fmul fast float %3287, %3286
  %3291 = and i32 %2178, 255
  %3292 = uitofp i32 %3291 to float
  %3293 = fmul fast float %3292, 0x3F70101020000000
  %3294 = fmul fast float %3293, %3220
  %3295 = extractvalue %dx.types.CBufRet.f32 %3106, 2
  %3296 = fadd fast float %3295, %3294
  %3297 = call float @dx.op.unary.f32(i32 7, float %3296)  ; Saturate(value)
  %3298 = call float @dx.op.binary.f32(i32 35, float %3215, float 0x3810000000000000)  ; FMax(a,b)
  %3299 = call float @dx.op.binary.f32(i32 35, float %3216, float 0x3810000000000000)  ; FMax(a,b)
  %3300 = call float @dx.op.binary.f32(i32 35, float %3217, float 0x3810000000000000)  ; FMax(a,b)
  %3301 = call float @dx.op.unary.f32(i32 23, float %3298)  ; Log(value)
  %3302 = call float @dx.op.unary.f32(i32 23, float %3299)  ; Log(value)
  %3303 = call float @dx.op.unary.f32(i32 23, float %3300)  ; Log(value)
  %3304 = call float @dx.op.binary.f32(i32 35, float %3288, float 0x3810000000000000)  ; FMax(a,b)
  %3305 = call float @dx.op.binary.f32(i32 35, float %3289, float 0x3810000000000000)  ; FMax(a,b)
  %3306 = call float @dx.op.binary.f32(i32 35, float %3290, float 0x3810000000000000)  ; FMax(a,b)
  %3307 = call float @dx.op.unary.f32(i32 23, float %3304)  ; Log(value)
  %3308 = call float @dx.op.unary.f32(i32 23, float %3305)  ; Log(value)
  %3309 = call float @dx.op.unary.f32(i32 23, float %3306)  ; Log(value)
  %3310 = fsub fast float %3301, %3307
  %3311 = fsub fast float %3302, %3308
  %3312 = fsub fast float %3303, %3309
  %3313 = fmul fast float %3310, %3297
  %3314 = fmul fast float %3311, %3297
  %3315 = fmul fast float %3312, %3297
  %3316 = fadd fast float %3313, %3307
  %3317 = fadd fast float %3314, %3308
  %3318 = fadd fast float %3315, %3309
  %3319 = call float @dx.op.unary.f32(i32 21, float %3316)  ; Exp(value)
  %3320 = call float @dx.op.unary.f32(i32 21, float %3317)  ; Exp(value)
  %3321 = call float @dx.op.unary.f32(i32 21, float %3318)  ; Exp(value)
  %3322 = select i1 %2222, float 0.000000e+00, float %3320
  %3323 = select i1 %2222, float 0.000000e+00, float %3321
  %3324 = fmul fast float %3282, 2.000000e+00
  %3325 = fadd fast float %3324, -1.000000e+00
  %3326 = fmul fast float %3325, %3325
  %3327 = fsub fast float 1.000000e+00, %3326
  %3328 = call float @dx.op.unary.f32(i32 7, float %3327)  ; Saturate(value)
  %3329 = call float @dx.op.unary.f32(i32 7, float %3328)  ; Saturate(value)
  %3330 = fmul fast float %3329, %3138
  br label %3331

; <label>:3331                                    ; preds = %3140, %3114, %3074
  %3332 = phi float [ %3319, %3140 ], [ 0.000000e+00, %3114 ], [ 0.000000e+00, %3074 ]
  %3333 = phi float [ %3322, %3140 ], [ 0.000000e+00, %3114 ], [ 0.000000e+00, %3074 ]
  %3334 = phi float [ %3323, %3140 ], [ 0.000000e+00, %3114 ], [ 0.000000e+00, %3074 ]
  %3335 = phi float [ %3330, %3140 ], [ 0.000000e+00, %3114 ], [ 0.000000e+00, %3074 ]
  %3336 = fcmp fast olt float %3335, 1.000000e+00
  %3337 = or i1 %3336, %3072
  %3338 = zext i1 %3337 to i32
  %3339 = fmul fast float %3335, %3071
  %3340 = fsub fast float %3335, %3339
  %3341 = fmul fast float %3340, %3332
  %3342 = fmul fast float %3340, %3333
  %3343 = fmul fast float %3340, %3334
  br label %3344

; <label>:3344                                    ; preds = %3331, %3005
  %3345 = phi float [ 0.000000e+00, %3005 ], [ %3340, %3331 ]
  %3346 = phi float [ 0.000000e+00, %3005 ], [ %3341, %3331 ]
  %3347 = phi float [ 0.000000e+00, %3005 ], [ %3342, %3331 ]
  %3348 = phi float [ 0.000000e+00, %3005 ], [ %3343, %3331 ]
  %3349 = phi i32 [ %3073, %3005 ], [ %3338, %3331 ]
  %3350 = icmp eq i32 %3349, 0
  br i1 %3350, label %3789, label %3351

; <label>:3351                                    ; preds = %3344
  %3352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3353 = extractvalue %dx.types.CBufRet.f32 %3352, 2
  %3354 = extractvalue %dx.types.CBufRet.f32 %3352, 3
  %3355 = fmul fast float %3353, %89
  %3356 = fmul fast float %3354, %90
  %3357 = fptoui float %3355 to i32
  %3358 = fptoui float %3356 to i32
  %3359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3360 = extractvalue %dx.types.CBufRet.f32 %3359, 0
  %3361 = extractvalue %dx.types.CBufRet.f32 %3359, 2
  %3362 = extractvalue %dx.types.CBufRet.f32 %3359, 3
  %3363 = fadd fast float %78, -4.000000e+00
  %3364 = call float @dx.op.binary.f32(i32 35, float %3363, float 0.000000e+00)  ; FMax(a,b)
  %3365 = fadd fast float %3364, %3360
  %3366 = fmul fast float %3365, %3361
  %3367 = call float @dx.op.unary.f32(i32 23, float %3366)  ; Log(value)
  %3368 = fmul fast float %3367, %3362
  %3369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3370 = extractvalue %dx.types.CBufRet.f32 %3369, 2
  %3371 = fmul fast float %3368, %3370
  %3372 = call float @dx.op.unary.f32(i32 7, float %3371)  ; Saturate(value)
  %3373 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3374 = extractvalue %dx.types.CBufRet.i32 %3373, 1
  %3375 = add i32 %3374, -1
  %3376 = uitofp i32 %3374 to float
  %3377 = fmul fast float %3376, %3372
  %3378 = fptoui float %3377 to i32
  %3379 = call i32 @dx.op.binary.i32(i32 40, i32 %3378, i32 %3375)  ; UMin(a,b)
  %3380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3381 = extractvalue %dx.types.CBufRet.i32 %3380, 2
  %3382 = extractvalue %dx.types.CBufRet.i32 %3380, 3
  %3383 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3358, i32 %3381, i32 %3357)  ; UMad(a,b,c)
  %3384 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3379, i32 %3382, i32 %3383)  ; UMad(a,b,c)
  %3385 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %3386 = fptoui float %3385 to i32
  %3387 = lshr i32 %3386, 5
  %3388 = call i32 @dx.op.binary.i32(i32 40, i32 %3387, i32 8191)  ; UMin(a,b)
  %3389 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3390 = extractvalue %dx.types.CBufRet.i32 %3389, 2
  %3391 = add nsw i32 %3390, -1
  %3392 = call i32 @dx.op.binary.i32(i32 37, i32 %3391, i32 0)  ; IMax(a,b)
  %3393 = shl i32 %3388, 2
  %3394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.i32 %3394, 0
  %3396 = lshr i32 %3395, 16
  %3397 = and i32 %3395, 65535
  %3398 = lshr i32 %3395, 21
  %3399 = lshr i32 %3397, 5
  %3400 = call i32 @dx.op.binary.i32(i32 40, i32 %3399, i32 %3392)  ; UMin(a,b)
  %3401 = icmp ugt i32 %3398, %3400
  br i1 %3401, label %3765, label %3402

; <label>:3402                                    ; preds = %3351
  br label %3403

; <label>:3403                                    ; preds = %3757, %3402
  %3404 = phi float [ %3758, %3757 ], [ 0.000000e+00, %3402 ]
  %3405 = phi float [ %3759, %3757 ], [ 0.000000e+00, %3402 ]
  %3406 = phi float [ %3760, %3757 ], [ 0.000000e+00, %3402 ]
  %3407 = phi float [ %3761, %3757 ], [ 1.000000e+00, %3402 ]
  %3408 = phi i32 [ %3762, %3757 ], [ %3398, %3402 ]
  %3409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3410 = extractvalue %dx.types.CBufRet.i32 %3409, 2
  %3411 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3384, i32 %3410, i32 %3408)  ; UMad(a,b,c)
  %3412 = shl i32 %3411, 2
  %3413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %3412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3414 = extractvalue %dx.types.ResRet.i32 %3413, 0
  %3415 = shl i32 %3408, 5
  %3416 = sub nsw i32 %3396, %3415
  %3417 = call i32 @dx.op.binary.i32(i32 37, i32 %3416, i32 0)  ; IMax(a,b)
  %3418 = call i32 @dx.op.binary.i32(i32 38, i32 %3417, i32 31)  ; IMin(a,b)
  %3419 = sub nsw i32 1, %3396
  %3420 = add nsw i32 %3419, %3397
  %3421 = call i32 @dx.op.binary.i32(i32 37, i32 %3420, i32 0)  ; IMax(a,b)
  %3422 = call i32 @dx.op.binary.i32(i32 38, i32 %3421, i32 32)  ; IMin(a,b)
  %3423 = and i32 %3422, 31
  %3424 = shl i32 -1, %3423
  %3425 = xor i32 %3424, -1
  %3426 = and i32 %3418, 31
  %3427 = shl i32 %3425, %3426
  %3428 = icmp eq i32 %3422, 32
  %3429 = select i1 %3428, i32 -1, i32 %3427
  %3430 = and i32 %3429, %3414
  %3431 = icmp eq i32 %3430, 0
  br i1 %3431, label %3757, label %3432

; <label>:3432                                    ; preds = %3403
  br label %3433

; <label>:3433                                    ; preds = %3540, %3432
  %3434 = phi float [ %3541, %3540 ], [ %3404, %3432 ]
  %3435 = phi float [ %3542, %3540 ], [ %3405, %3432 ]
  %3436 = phi float [ %3543, %3540 ], [ %3406, %3432 ]
  %3437 = phi float [ %3544, %3540 ], [ %3407, %3432 ]
  %3438 = phi i32 [ %3443, %3540 ], [ %3430, %3432 ]
  %3439 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3438)  ; FirstbitLo(value)
  %3440 = add i32 %3439, %3415
  %3441 = and i32 %3439, 31
  %3442 = shl i32 1, %3441
  %3443 = xor i32 %3442, %3438
  %3444 = mul i32 %3440, 72
  %3445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3444, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.f32 %3445, 0
  %3447 = extractvalue %dx.types.ResRet.f32 %3445, 1
  %3448 = extractvalue %dx.types.ResRet.f32 %3445, 2
  %3449 = add i32 %3444, 12
  %3450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3449, i32 undef)  ; BufferLoad(srv,index,wot)
  %3451 = extractvalue %dx.types.ResRet.i32 %3450, 0
  %3452 = add i32 %3444, 16
  %3453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3452, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.f32 %3453, 0
  %3455 = extractvalue %dx.types.ResRet.f32 %3453, 1
  %3456 = extractvalue %dx.types.ResRet.f32 %3453, 2
  %3457 = add i32 %3444, 28
  %3458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3457, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.f32 %3458, 0
  %3460 = add i32 %3444, 32
  %3461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3460, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.f32 %3461, 0
  %3463 = extractvalue %dx.types.ResRet.f32 %3461, 1
  %3464 = extractvalue %dx.types.ResRet.f32 %3461, 2
  %3465 = extractvalue %dx.types.ResRet.f32 %3461, 3
  %3466 = add i32 %3444, 48
  %3467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3466, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.f32 %3467, 0
  %3469 = extractvalue %dx.types.ResRet.f32 %3467, 1
  %3470 = add i32 %3444, 56
  %3471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3470, i32 undef)  ; BufferLoad(srv,index,wot)
  %3472 = extractvalue %dx.types.ResRet.f32 %3471, 0
  %3473 = extractvalue %dx.types.ResRet.f32 %3471, 1
  %3474 = add i32 %3444, 64
  %3475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3474, i32 undef)  ; BufferLoad(srv,index,wot)
  %3476 = extractvalue %dx.types.ResRet.f32 %3475, 0
  %3477 = extractvalue %dx.types.ResRet.f32 %3475, 1
  %3478 = mul i32 %3440, 60
  %3479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.f32 %3479, 0
  %3481 = extractvalue %dx.types.ResRet.f32 %3479, 1
  %3482 = extractvalue %dx.types.ResRet.f32 %3479, 2
  %3483 = add i32 %3478, 12
  %3484 = add i32 %3478, 48
  %3485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %3484, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.f32 %3485, 0
  %3487 = extractvalue %dx.types.ResRet.f32 %3485, 1
  %3488 = extractvalue %dx.types.ResRet.f32 %3485, 2
  %3489 = and i32 %3451, 32767
  %3490 = bitcast float %3446 to i32
  %3491 = icmp eq i32 %3490, -1
  %3492 = bitcast float %3447 to i32
  %3493 = and i32 %3451, 32768
  %3494 = icmp ne i32 %3493, 0
  %3495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3496 = extractvalue %dx.types.CBufRet.f32 %3495, 0
  %3497 = extractvalue %dx.types.CBufRet.f32 %3495, 1
  %3498 = extractvalue %dx.types.CBufRet.f32 %3495, 2
  %3499 = fsub fast float %3480, %3496
  %3500 = fsub fast float %3481, %3497
  %3501 = fsub fast float %3482, %3498
  %3502 = fsub fast float %144, %3499
  %3503 = fsub fast float %145, %3500
  %3504 = fsub fast float %146, %3501
  %3505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %3483, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.f32 %3505, 0
  %3507 = extractvalue %dx.types.ResRet.f32 %3505, 1
  %3508 = extractvalue %dx.types.ResRet.f32 %3505, 2
  %3509 = call float @dx.op.dot3.f32(i32 55, float %3502, float %3503, float %3504, float %3506, float %3507, float %3508)  ; Dot3(ax,ay,az,bx,by,bz)
  %3510 = add i32 %3478, 24
  %3511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.ResRet.f32 %3511, 1
  %3514 = extractvalue %dx.types.ResRet.f32 %3511, 2
  %3515 = call float @dx.op.dot3.f32(i32 55, float %3502, float %3503, float %3504, float %3512, float %3513, float %3514)  ; Dot3(ax,ay,az,bx,by,bz)
  %3516 = add i32 %3478, 36
  %3517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %3516, i32 undef)  ; BufferLoad(srv,index,wot)
  %3518 = extractvalue %dx.types.ResRet.f32 %3517, 0
  %3519 = extractvalue %dx.types.ResRet.f32 %3517, 1
  %3520 = extractvalue %dx.types.ResRet.f32 %3517, 2
  %3521 = call float @dx.op.dot3.f32(i32 55, float %3502, float %3503, float %3504, float %3518, float %3519, float %3520)  ; Dot3(ax,ay,az,bx,by,bz)
  %3522 = call float @dx.op.unary.f32(i32 6, float %3509)  ; FAbs(value)
  %3523 = call float @dx.op.unary.f32(i32 6, float %3515)  ; FAbs(value)
  %3524 = call float @dx.op.unary.f32(i32 6, float %3521)  ; FAbs(value)
  %3525 = fsub fast float %3486, %3522
  %3526 = fsub fast float %3487, %3523
  %3527 = fsub fast float %3488, %3524
  %3528 = fmul fast float %3525, %3454
  %3529 = fmul fast float %3526, %3455
  %3530 = fmul fast float %3527, %3456
  %3531 = call float @dx.op.binary.f32(i32 36, float %3529, float %3530)  ; FMin(a,b)
  %3532 = call float @dx.op.binary.f32(i32 36, float %3528, float %3531)  ; FMin(a,b)
  %3533 = call float @dx.op.unary.f32(i32 7, float %3532)  ; Saturate(value)
  %3534 = call float @dx.op.binary.f32(i32 36, float %3437, float %3533)  ; FMin(a,b)
  %3535 = uitofp i1 %3494 to float
  %3536 = select i1 %106, float 1.000000e+00, float 2.000000e+00
  %3537 = fsub fast float %3536, %3535
  %3538 = fmul fast float %3534, %3537
  %3539 = fcmp fast ogt float %3538, 0.000000e+00
  br i1 %3539, label %3546, label %3540

; <label>:3540                                    ; preds = %3688, %3433
  %3541 = phi float [ %3752, %3688 ], [ %3434, %3433 ]
  %3542 = phi float [ %3753, %3688 ], [ %3435, %3433 ]
  %3543 = phi float [ %3754, %3688 ], [ %3436, %3433 ]
  %3544 = phi float [ %3755, %3688 ], [ %3437, %3433 ]
  %3545 = icmp eq i32 %3438, %3442
  br i1 %3545, label %3756, label %3433

; <label>:3546                                    ; preds = %3433
  br i1 %3491, label %3604, label %3547

; <label>:3547                                    ; preds = %3546
  %3548 = fsub fast float -0.000000e+00, %3506
  %3549 = fsub fast float -0.000000e+00, %3507
  %3550 = fsub fast float -0.000000e+00, %3508
  %3551 = call float @dx.op.dot3.f32(i32 55, float %2234, float %2235, float %2236, float %3548, float %3549, float %3550)  ; Dot3(ax,ay,az,bx,by,bz)
  %3552 = fsub fast float -0.000000e+00, %3551
  %3553 = call float @dx.op.dot3.f32(i32 55, float %3502, float %3503, float %3504, float %3548, float %3549, float %3550)  ; Dot3(ax,ay,az,bx,by,bz)
  %3554 = fadd fast float %3553, %3469
  %3555 = fadd fast float %3468, %3553
  %3556 = fsub fast float -0.000000e+00, %3555
  %3557 = fcmp ogt float %3551, -0.000000e+00
  %3558 = select i1 %3557, float %3556, float %3554
  %3559 = call float @dx.op.unary.f32(i32 6, float %3552)  ; FAbs(value)
  %3560 = fdiv fast float 1.000000e+00, %3559
  %3561 = fmul fast float %3558, %3560
  %3562 = call float @dx.op.binary.f32(i32 35, float %3561, float 0.000000e+00)  ; FMax(a,b)
  %3563 = fsub fast float -0.000000e+00, %3512
  %3564 = fsub fast float -0.000000e+00, %3513
  %3565 = fsub fast float -0.000000e+00, %3514
  %3566 = call float @dx.op.dot3.f32(i32 55, float %2234, float %2235, float %2236, float %3563, float %3564, float %3565)  ; Dot3(ax,ay,az,bx,by,bz)
  %3567 = fsub fast float -0.000000e+00, %3566
  %3568 = call float @dx.op.dot3.f32(i32 55, float %3502, float %3503, float %3504, float %3563, float %3564, float %3565)  ; Dot3(ax,ay,az,bx,by,bz)
  %3569 = fadd fast float %3568, %3473
  %3570 = fadd fast float %3472, %3568
  %3571 = fsub fast float -0.000000e+00, %3570
  %3572 = fcmp ogt float %3566, -0.000000e+00
  %3573 = select i1 %3572, float %3571, float %3569
  %3574 = call float @dx.op.unary.f32(i32 6, float %3567)  ; FAbs(value)
  %3575 = fdiv fast float 1.000000e+00, %3574
  %3576 = fmul fast float %3573, %3575
  %3577 = call float @dx.op.binary.f32(i32 35, float %3576, float 0.000000e+00)  ; FMax(a,b)
  %3578 = fsub fast float -0.000000e+00, %3518
  %3579 = fsub fast float -0.000000e+00, %3519
  %3580 = fsub fast float -0.000000e+00, %3520
  %3581 = call float @dx.op.dot3.f32(i32 55, float %2234, float %2235, float %2236, float %3578, float %3579, float %3580)  ; Dot3(ax,ay,az,bx,by,bz)
  %3582 = fsub fast float -0.000000e+00, %3581
  %3583 = call float @dx.op.dot3.f32(i32 55, float %3502, float %3503, float %3504, float %3578, float %3579, float %3580)  ; Dot3(ax,ay,az,bx,by,bz)
  %3584 = fadd fast float %3583, %3477
  %3585 = fadd fast float %3476, %3583
  %3586 = fsub fast float -0.000000e+00, %3585
  %3587 = fcmp ogt float %3581, -0.000000e+00
  %3588 = select i1 %3587, float %3586, float %3584
  %3589 = call float @dx.op.unary.f32(i32 6, float %3582)  ; FAbs(value)
  %3590 = fdiv fast float 1.000000e+00, %3589
  %3591 = fmul fast float %3588, %3590
  %3592 = call float @dx.op.binary.f32(i32 35, float %3591, float 0.000000e+00)  ; FMax(a,b)
  %3593 = call float @dx.op.binary.f32(i32 36, float %3577, float %3592)  ; FMin(a,b)
  %3594 = call float @dx.op.binary.f32(i32 36, float %3562, float %3593)  ; FMin(a,b)
  %3595 = fmul fast float %3594, %2234
  %3596 = fmul fast float %3594, %2235
  %3597 = fmul fast float %3594, %2236
  %3598 = fadd fast float %3595, %144
  %3599 = fadd fast float %3596, %145
  %3600 = fadd fast float %3597, %146
  %3601 = fsub fast float %3598, %3446
  %3602 = fsub fast float %3599, %3447
  %3603 = fsub fast float %3600, %3448
  br label %3611

; <label>:3604                                    ; preds = %3546
  %3605 = fmul fast float %2234, 8.096000e+03
  %3606 = fmul fast float %2235, 8.096000e+03
  %3607 = fmul fast float %2236, 8.096000e+03
  %3608 = fadd fast float %3605, %144
  %3609 = fadd fast float %3606, %145
  %3610 = fadd fast float %3607, %146
  br label %3611

; <label>:3611                                    ; preds = %3604, %3547
  %3612 = phi float [ %2234, %3604 ], [ %3601, %3547 ]
  %3613 = phi float [ %2235, %3604 ], [ %3602, %3547 ]
  %3614 = phi float [ %2236, %3604 ], [ %3603, %3547 ]
  %3615 = phi float [ %3608, %3604 ], [ %3598, %3547 ]
  %3616 = phi float [ %3609, %3604 ], [ %3599, %3547 ]
  %3617 = phi float [ %3610, %3604 ], [ %3600, %3547 ]
  %3618 = fcmp fast olt float %3465, 1.000000e+00
  br i1 %3618, label %3619, label %3650, !dx.controlflow.hints !122

; <label>:3619                                    ; preds = %3611
  %3620 = fmul fast float %3614, %3463
  %3621 = fmul fast float %3613, %3464
  %3622 = fsub fast float %3620, %3621
  %3623 = fmul fast float %3612, %3464
  %3624 = fmul fast float %3614, %3462
  %3625 = fsub fast float %3623, %3624
  %3626 = fmul fast float %3613, %3462
  %3627 = fmul fast float %3612, %3463
  %3628 = fsub fast float %3626, %3627
  %3629 = fmul fast float %3622, 2.000000e+00
  %3630 = fmul fast float %3625, 2.000000e+00
  %3631 = fmul fast float %3628, 2.000000e+00
  %3632 = fmul fast float %3629, %3465
  %3633 = fmul fast float %3630, %3465
  %3634 = fmul fast float %3631, %3465
  %3635 = fmul fast float %3631, %3463
  %3636 = fmul fast float %3630, %3464
  %3637 = fmul fast float %3629, %3464
  %3638 = fmul fast float %3631, %3462
  %3639 = fmul fast float %3630, %3462
  %3640 = fmul fast float %3629, %3463
  %3641 = fadd fast float %3635, %3612
  %3642 = fadd fast float %3641, %3632
  %3643 = fsub fast float %3642, %3636
  %3644 = fsub fast float %3613, %3638
  %3645 = fadd fast float %3644, %3633
  %3646 = fadd fast float %3645, %3637
  %3647 = fadd fast float %3634, %3614
  %3648 = fsub fast float %3647, %3640
  %3649 = fadd fast float %3648, %3639
  br label %3650

; <label>:3650                                    ; preds = %3619, %3611
  %3651 = phi float [ %3643, %3619 ], [ %3612, %3611 ]
  %3652 = phi float [ %3646, %3619 ], [ %3613, %3611 ]
  %3653 = phi float [ %3649, %3619 ], [ %3614, %3611 ]
  br i1 %3491, label %3685, label %3654

; <label>:3654                                    ; preds = %3650
  %3655 = fmul fast float %2182, 0x400187C840000000
  %3656 = fadd fast float %3655, 0xC00EFC2120000000
  %3657 = fmul fast float %3656, %2182
  %3658 = fadd fast float %3657, 0x3FE5D16340000000
  %3659 = fmul fast float %3658, %2182
  %3660 = fadd fast float %3659, 1.000000e+00
  %3661 = call float @dx.op.unary.f32(i32 7, float %3660)  ; Saturate(value)
  %3662 = fsub fast float %3615, %144
  %3663 = fsub fast float %3616, %145
  %3664 = fsub fast float %3617, %146
  %3665 = fsub fast float %3615, %3446
  %3666 = fsub fast float %3616, %3447
  %3667 = fsub fast float %3617, %3448
  %3668 = call float @dx.op.dot3.f32(i32 55, float %3662, float %3663, float %3664, float %3662, float %3663, float %3664)  ; Dot3(ax,ay,az,bx,by,bz)
  %3669 = call float @dx.op.dot3.f32(i32 55, float %3665, float %3666, float %3667, float %3665, float %3666, float %3667)  ; Dot3(ax,ay,az,bx,by,bz)
  %3670 = fadd fast float %3669, 0x3EE4F8B580000000
  %3671 = fdiv fast float %3668, %3670
  %3672 = bitcast float %3671 to i32
  %3673 = ashr i32 %3672, 1
  %3674 = add nsw i32 %3673, 532487669
  %3675 = bitcast i32 %3674 to float
  %3676 = fmul fast float %3675, %3661
  %3677 = call float @dx.op.unary.f32(i32 7, float %3676)  ; Saturate(value)
  %3678 = fmul fast float %3677, 0x4009981AE0000000
  %3679 = fsub fast float 0x40111BBD80000000, %3678
  %3680 = fmul fast float %3679, %3677
  %3681 = fadd fast float %3680, 0xC0009F6020000000
  %3682 = fmul fast float %3681, %3677
  %3683 = fadd fast float %3682, 1.000000e+00
  %3684 = call float @dx.op.unary.f32(i32 7, float %3683)  ; Saturate(value)
  br label %3688

; <label>:3685                                    ; preds = %3650
  %3686 = icmp ne i32 %3492, -1
  %3687 = zext i1 %3686 to i32
  br label %3688

; <label>:3688                                    ; preds = %3685, %3654
  %3689 = phi float [ %2182, %3685 ], [ %3684, %3654 ]
  %3690 = phi i32 [ %3687, %3685 ], [ 0, %3654 ]
  %3691 = fmul float %3689, 5.000000e+00
  %3692 = fsub float 5.000000e+00, %3691
  %3693 = icmp ne i32 %3690, 0
  %3694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3695 = extractvalue %dx.types.CBufRet.f32 %3694, 3
  %3696 = fadd fast float %3695, %3692
  %3697 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3696)  ; FMax(a,b)
  %3698 = call float @dx.op.unary.f32(i32 6, float %3651)  ; FAbs(value)
  %3699 = call float @dx.op.unary.f32(i32 6, float %3652)  ; FAbs(value)
  %3700 = fadd fast float %3699, %3698
  %3701 = call float @dx.op.unary.f32(i32 6, float %3653)  ; FAbs(value)
  %3702 = fadd fast float %3700, %3701
  %3703 = fcmp fast oeq float %3702, 0.000000e+00
  %3704 = fdiv fast float 1.000000e+00, %3702
  %3705 = select i1 %3703, float 1.000000e+00, float %3704
  %3706 = fmul fast float %3705, %3651
  %3707 = fmul fast float %3705, %3652
  %3708 = call float @dx.op.unary.f32(i32 6, float %3707)  ; FAbs(value)
  %3709 = call float @dx.op.unary.f32(i32 6, float %3706)  ; FAbs(value)
  %3710 = fsub fast float 1.000000e+00, %3708
  %3711 = fsub fast float 1.000000e+00, %3709
  %3712 = fcmp fast oge float %3706, 0.000000e+00
  %3713 = fcmp fast oge float %3707, 0.000000e+00
  %3714 = select i1 %3712, float 1.000000e+00, float -1.000000e+00
  %3715 = select i1 %3713, float 1.000000e+00, float -1.000000e+00
  %3716 = fcmp fast ole float %3653, 0.000000e+00
  %3717 = fmul fast float %3714, %3710
  %3718 = fmul fast float %3715, %3711
  %3719 = select i1 %3716, float %3717, float %3706
  %3720 = select i1 %3716, float %3718, float %3707
  %3721 = fmul fast float %3719, 5.000000e-01
  %3722 = fmul fast float %3720, 5.000000e-01
  %3723 = fadd fast float %3721, 5.000000e-01
  %3724 = fadd fast float %3722, 5.000000e-01
  %3725 = uitofp i32 %3489 to float
  %3726 = call float @dx.op.binary.f32(i32 36, float %3697, float 3.000000e+00)  ; FMin(a,b)
  %3727 = fadd fast float %3726, 2.000000e+00
  %3728 = call float @dx.op.unary.f32(i32 21, float %3727)  ; Exp(value)
  %3729 = extractvalue %dx.types.CBufRet.f32 %3694, 1
  %3730 = fmul fast float %3729, %3728
  %3731 = fmul fast float %3730, 2.000000e+00
  %3732 = fsub fast float 1.000000e+00, %3731
  %3733 = fmul fast float %3723, %3732
  %3734 = fmul fast float %3724, %3732
  %3735 = fadd fast float %3733, %3730
  %3736 = fadd fast float %3734, %3730
  %3737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %56, float %3735, float %3736, float %3725, float undef, i32 0, i32 0, i32 undef, float %3697)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3738 = extractvalue %dx.types.ResRet.f32 %3737, 0
  %3739 = extractvalue %dx.types.ResRet.f32 %3737, 1
  %3740 = extractvalue %dx.types.ResRet.f32 %3737, 2
  %3741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3742 = extractvalue %dx.types.CBufRet.f32 %3741, 3
  %3743 = fmul fast float %3742, %3459
  %3744 = call float @dx.op.binary.f32(i32 36, float %2843, float %3743)  ; FMin(a,b)
  %3745 = select i1 %3693, float %3744, float %3743
  %3746 = fmul fast float %3738, %3538
  %3747 = fmul fast float %3746, %3745
  %3748 = fmul fast float %3739, %3538
  %3749 = fmul fast float %3748, %3745
  %3750 = fmul fast float %3740, %3538
  %3751 = fmul fast float %3750, %3745
  %3752 = fadd fast float %3747, %3434
  %3753 = fadd fast float %3749, %3435
  %3754 = fadd fast float %3751, %3436
  %3755 = fsub fast float %3437, %3538
  br label %3540

; <label>:3756                                    ; preds = %3540
  br label %3757

; <label>:3757                                    ; preds = %3756, %3403
  %3758 = phi float [ %3404, %3403 ], [ %3541, %3756 ]
  %3759 = phi float [ %3405, %3403 ], [ %3542, %3756 ]
  %3760 = phi float [ %3406, %3403 ], [ %3543, %3756 ]
  %3761 = phi float [ %3407, %3403 ], [ %3544, %3756 ]
  %3762 = add i32 %3408, 1
  %3763 = icmp ugt i32 %3762, %3400
  br i1 %3763, label %3764, label %3403, !llvm.loop !123

; <label>:3764                                    ; preds = %3757
  br label %3765

; <label>:3765                                    ; preds = %3764, %3351
  %3766 = phi float [ 0.000000e+00, %3351 ], [ %3758, %3764 ]
  %3767 = phi float [ 0.000000e+00, %3351 ], [ %3759, %3764 ]
  %3768 = phi float [ 0.000000e+00, %3351 ], [ %3760, %3764 ]
  %3769 = call float @dx.op.dot3.f32(i32 55, float %3766, float %3767, float %3768, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3770 = select i1 %2222, float 0.000000e+00, float %3766
  %3771 = select i1 %2222, float %3769, float %3767
  %3772 = select i1 %2222, float 0.000000e+00, float %3768
  %3773 = fcmp fast olt float %3345, 0.000000e+00
  %3774 = call float @dx.op.unary.f32(i32 6, float %3345)  ; FAbs(value)
  %3775 = fmul fast float %3774, %3346
  %3776 = fmul fast float %3774, %3347
  %3777 = fmul fast float %3774, %3348
  %3778 = select i1 %3773, float %3346, float %3775
  %3779 = select i1 %3773, float %3347, float %3776
  %3780 = select i1 %3773, float %3348, float %3777
  %3781 = fsub fast float 1.000000e+00, %3774
  %3782 = call float @dx.op.unary.f32(i32 7, float %3781)  ; Saturate(value)
  %3783 = fmul fast float %3782, %3770
  %3784 = fmul fast float %3782, %3771
  %3785 = fmul fast float %3782, %3772
  %3786 = fadd fast float %3778, %3783
  %3787 = fadd fast float %3779, %3784
  %3788 = fadd fast float %3780, %3785
  br label %3789

; <label>:3789                                    ; preds = %3765, %3344
  %3790 = phi float [ %3346, %3344 ], [ %3786, %3765 ]
  %3791 = phi float [ %3347, %3344 ], [ %3787, %3765 ]
  %3792 = phi float [ %3348, %3344 ], [ %3788, %3765 ]
  %3793 = fmul fast float %3052, %3066
  %3794 = fmul fast float %3053, %3066
  %3795 = fmul fast float %3054, %3066
  %3796 = fmul fast float %3790, %3061
  %3797 = fmul fast float %3791, %3062
  %3798 = fmul fast float %3792, %3063
  %3799 = fadd fast float %3796, %2063
  %3800 = fadd fast float %3797, %2064
  %3801 = fadd fast float %3798, %2065
  %3802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3803 = extractvalue %dx.types.CBufRet.f32 %3802, 3
  %3804 = fcmp fast oeq float %3803, 0.000000e+00
  br i1 %3804, label %5537, label %3805

; <label>:3805                                    ; preds = %3789
  %3806 = extractvalue %dx.types.CBufRet.f32 %3802, 0
  %3807 = extractvalue %dx.types.CBufRet.f32 %3802, 1
  %3808 = extractvalue %dx.types.CBufRet.f32 %3802, 2
  %3809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3810 = extractvalue %dx.types.CBufRet.f32 %3809, 0
  %3811 = extractvalue %dx.types.CBufRet.f32 %3809, 1
  %3812 = extractvalue %dx.types.CBufRet.f32 %3809, 2
  %3813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3814 = extractvalue %dx.types.CBufRet.f32 %3813, 0
  %3815 = extractvalue %dx.types.CBufRet.f32 %3813, 1
  %3816 = call float @dx.op.dot3.f32(i32 55, float %3810, float %3811, float %3812, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3817 = select i1 %2222, float %3814, float %3810
  %3818 = select i1 %2222, float %3816, float %3811
  %3819 = select i1 %2222, float %3815, float %3812
  %3820 = fcmp fast olt float %3803, 0.000000e+00
  br i1 %3820, label %5195, label %3821

; <label>:3821                                    ; preds = %3805
  %3822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3823 = extractvalue %dx.types.CBufRet.f32 %3822, 0
  %3824 = extractvalue %dx.types.CBufRet.f32 %3822, 1
  %3825 = extractvalue %dx.types.CBufRet.f32 %3822, 2
  %3826 = extractvalue %dx.types.CBufRet.f32 %3822, 3
  %3827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3828 = extractvalue %dx.types.CBufRet.f32 %3827, 0
  %3829 = extractvalue %dx.types.CBufRet.f32 %3827, 1
  %3830 = extractvalue %dx.types.CBufRet.f32 %3827, 2
  %3831 = extractvalue %dx.types.CBufRet.f32 %3827, 3
  %3832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3833 = extractvalue %dx.types.CBufRet.f32 %3832, 0
  %3834 = extractvalue %dx.types.CBufRet.f32 %3832, 1
  %3835 = extractvalue %dx.types.CBufRet.f32 %3832, 2
  %3836 = extractvalue %dx.types.CBufRet.f32 %3832, 3
  %3837 = fmul fast float %3823, %144
  %3838 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3824, float %3837)  ; FMad(a,b,c)
  %3839 = call float @dx.op.tertiary.f32(i32 46, float %146, float %3825, float %3838)  ; FMad(a,b,c)
  %3840 = fadd fast float %3839, %3826
  %3841 = fmul fast float %3828, %144
  %3842 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3829, float %3841)  ; FMad(a,b,c)
  %3843 = call float @dx.op.tertiary.f32(i32 46, float %146, float %3830, float %3842)  ; FMad(a,b,c)
  %3844 = fadd fast float %3843, %3831
  %3845 = fmul fast float %3833, %144
  %3846 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3834, float %3845)  ; FMad(a,b,c)
  %3847 = call float @dx.op.tertiary.f32(i32 46, float %146, float %3835, float %3846)  ; FMad(a,b,c)
  %3848 = fadd fast float %3847, %3836
  %3849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3850 = extractvalue %dx.types.CBufRet.f32 %3849, 0
  %3851 = extractvalue %dx.types.CBufRet.f32 %3849, 1
  %3852 = extractvalue %dx.types.CBufRet.f32 %3849, 3
  %3853 = fmul fast float %3852, %3840
  %3854 = fmul fast float %3852, %3844
  %3855 = fadd fast float %3853, %3850
  %3856 = fadd fast float %3854, %3851
  %3857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3858 = extractvalue %dx.types.CBufRet.f32 %3857, 0
  %3859 = extractvalue %dx.types.CBufRet.f32 %3857, 1
  %3860 = extractvalue %dx.types.CBufRet.f32 %3857, 3
  %3861 = fmul fast float %3860, %3840
  %3862 = fmul fast float %3860, %3844
  %3863 = fadd fast float %3861, %3858
  %3864 = fadd fast float %3862, %3859
  %3865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3866 = extractvalue %dx.types.CBufRet.f32 %3865, 1
  %3867 = fsub fast float %3866, %3848
  %3868 = extractvalue %dx.types.CBufRet.f32 %3865, 2
  %3869 = fmul fast float %3867, %3868
  %3870 = fsub fast float 1.000000e+00, %3869
  %3871 = call float @dx.op.unary.f32(i32 7, float %3870)  ; Saturate(value)
  %3872 = extractvalue %dx.types.CBufRet.f32 %3857, 2
  %3873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3874 = extractvalue %dx.types.CBufRet.f32 %3873, 2
  %3875 = fadd fast float %3874, %3872
  %3876 = fcmp fast ogt float %3875, 0.000000e+00
  br i1 %3876, label %3877, label %3902

; <label>:3877                                    ; preds = %3821
  %3878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3879 = extractvalue %dx.types.CBufRet.f32 %3878, 0
  %3880 = extractvalue %dx.types.CBufRet.f32 %3878, 1
  %3881 = fsub fast float %3863, %3879
  %3882 = fsub fast float %3864, %3880
  %3883 = fcmp fast olt float %3881, 0.000000e+00
  %3884 = fcmp fast olt float %3882, 0.000000e+00
  %3885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3886 = extractvalue %dx.types.CBufRet.f32 %3885, 0
  %3887 = extractvalue %dx.types.CBufRet.f32 %3885, 1
  %3888 = extractvalue %dx.types.CBufRet.f32 %3885, 2
  %3889 = extractvalue %dx.types.CBufRet.f32 %3885, 3
  %3890 = select i1 %3883, float %3886, float %3888
  %3891 = select i1 %3884, float %3887, float %3889
  %3892 = fmul fast float %3890, %3881
  %3893 = fmul fast float %3891, %3882
  %3894 = call float @dx.op.unary.f32(i32 6, float %3892)  ; FAbs(value)
  %3895 = call float @dx.op.unary.f32(i32 6, float %3893)  ; FAbs(value)
  %3896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3897 = extractvalue %dx.types.CBufRet.f32 %3896, 0
  %3898 = call float @dx.op.binary.f32(i32 35, float %3894, float %3895)  ; FMax(a,b)
  %3899 = fsub fast float %3897, %3898
  %3900 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  %3901 = fmul fast float %3900, %3871
  br label %3902

; <label>:3902                                    ; preds = %3877, %3821
  %3903 = phi float [ %3901, %3877 ], [ 0.000000e+00, %3821 ]
  %3904 = extractvalue %dx.types.CBufRet.f32 %3849, 2
  %3905 = extractvalue %dx.types.CBufRet.f32 %3873, 1
  %3906 = fadd fast float %3905, %3904
  %3907 = fcmp fast ogt float %3906, 0.000000e+00
  br i1 %3907, label %3908, label %3933

; <label>:3908                                    ; preds = %3902
  %3909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3910 = extractvalue %dx.types.CBufRet.f32 %3909, 0
  %3911 = extractvalue %dx.types.CBufRet.f32 %3909, 1
  %3912 = fsub fast float %3855, %3910
  %3913 = fsub fast float %3856, %3911
  %3914 = fcmp fast olt float %3912, 0.000000e+00
  %3915 = fcmp fast olt float %3913, 0.000000e+00
  %3916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3917 = extractvalue %dx.types.CBufRet.f32 %3916, 0
  %3918 = extractvalue %dx.types.CBufRet.f32 %3916, 1
  %3919 = extractvalue %dx.types.CBufRet.f32 %3916, 2
  %3920 = extractvalue %dx.types.CBufRet.f32 %3916, 3
  %3921 = select i1 %3914, float %3917, float %3919
  %3922 = select i1 %3915, float %3918, float %3920
  %3923 = fmul fast float %3921, %3912
  %3924 = fmul fast float %3922, %3913
  %3925 = call float @dx.op.unary.f32(i32 6, float %3923)  ; FAbs(value)
  %3926 = call float @dx.op.unary.f32(i32 6, float %3924)  ; FAbs(value)
  %3927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3928 = extractvalue %dx.types.CBufRet.f32 %3927, 0
  %3929 = call float @dx.op.binary.f32(i32 35, float %3925, float %3926)  ; FMax(a,b)
  %3930 = fsub fast float %3928, %3929
  %3931 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3932 = fmul fast float %3931, %3871
  br label %3933

; <label>:3933                                    ; preds = %3908, %3902
  %3934 = phi float [ %3932, %3908 ], [ 0.000000e+00, %3902 ]
  %3935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3936 = extractvalue %dx.types.CBufRet.f32 %3935, 1
  %3937 = call float @dx.op.unary.f32(i32 7, float %3936)  ; Saturate(value)
  %3938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3939 = extractvalue %dx.types.CBufRet.f32 %3938, 0
  %3940 = extractvalue %dx.types.CBufRet.f32 %3938, 1
  %3941 = fsub fast float %3840, %3939
  %3942 = fsub fast float %3844, %3940
  %3943 = fcmp fast olt float %3941, 0.000000e+00
  %3944 = fcmp fast olt float %3942, 0.000000e+00
  %3945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3946 = extractvalue %dx.types.CBufRet.f32 %3945, 0
  %3947 = extractvalue %dx.types.CBufRet.f32 %3945, 1
  %3948 = extractvalue %dx.types.CBufRet.f32 %3945, 2
  %3949 = extractvalue %dx.types.CBufRet.f32 %3945, 3
  %3950 = select i1 %3943, float %3946, float %3948
  %3951 = select i1 %3944, float %3947, float %3949
  %3952 = fmul fast float %3950, %3941
  %3953 = fmul fast float %3951, %3942
  %3954 = call float @dx.op.unary.f32(i32 6, float %3952)  ; FAbs(value)
  %3955 = call float @dx.op.unary.f32(i32 6, float %3953)  ; FAbs(value)
  %3956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3957 = extractvalue %dx.types.CBufRet.f32 %3956, 0
  %3958 = call float @dx.op.binary.f32(i32 35, float %3954, float %3955)  ; FMax(a,b)
  %3959 = fsub fast float %3957, %3958
  %3960 = call float @dx.op.unary.f32(i32 7, float %3959)  ; Saturate(value)
  %3961 = call float @dx.op.binary.f32(i32 36, float %3960, float %3937)  ; FMin(a,b)
  %3962 = fmul fast float %3961, %3871
  %3963 = fsub fast float %3934, %3962
  %3964 = fsub fast float %3903, %3934
  %3965 = fsub fast float %3964, %3962
  %3966 = call float @dx.op.binary.f32(i32 35, float %3934, float %3903)  ; FMax(a,b)
  %3967 = call float @dx.op.binary.f32(i32 35, float %3962, float %3966)  ; FMax(a,b)
  %3968 = fcmp fast olt float %3967, 1.000000e+00
  br i1 %3968, label %3969, label %4640, !dx.controlflow.hints !124

; <label>:3969                                    ; preds = %3933
  %3970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3971 = extractvalue %dx.types.CBufRet.f32 %3970, 0
  %3972 = fcmp fast une float %3971, 0.000000e+00
  br i1 %3972, label %3973, label %4640, !dx.controlflow.hints !125

; <label>:3973                                    ; preds = %3969
  %3974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3975 = extractvalue %dx.types.CBufRet.f32 %3974, 0
  %3976 = extractvalue %dx.types.CBufRet.f32 %3974, 1
  %3977 = extractvalue %dx.types.CBufRet.f32 %3974, 2
  %3978 = extractvalue %dx.types.CBufRet.f32 %3974, 3
  %3979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3980 = extractvalue %dx.types.CBufRet.f32 %3979, 0
  %3981 = extractvalue %dx.types.CBufRet.f32 %3979, 1
  %3982 = extractvalue %dx.types.CBufRet.f32 %3979, 2
  %3983 = extractvalue %dx.types.CBufRet.f32 %3979, 3
  %3984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3985 = extractvalue %dx.types.CBufRet.f32 %3984, 0
  %3986 = extractvalue %dx.types.CBufRet.f32 %3984, 1
  %3987 = extractvalue %dx.types.CBufRet.f32 %3984, 2
  %3988 = extractvalue %dx.types.CBufRet.f32 %3984, 3
  %3989 = fmul fast float %3975, %144
  %3990 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3976, float %3989)  ; FMad(a,b,c)
  %3991 = call float @dx.op.tertiary.f32(i32 46, float %146, float %3977, float %3990)  ; FMad(a,b,c)
  %3992 = fadd fast float %3991, %3978
  %3993 = fmul fast float %3980, %144
  %3994 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3981, float %3993)  ; FMad(a,b,c)
  %3995 = call float @dx.op.tertiary.f32(i32 46, float %146, float %3982, float %3994)  ; FMad(a,b,c)
  %3996 = fadd fast float %3995, %3983
  %3997 = fmul fast float %3985, %144
  %3998 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3986, float %3997)  ; FMad(a,b,c)
  %3999 = call float @dx.op.tertiary.f32(i32 46, float %146, float %3987, float %3998)  ; FMad(a,b,c)
  %4000 = fadd fast float %3999, %3988
  %4001 = fcmp fast oge float %3992, 1.000000e+00
  %4002 = fcmp fast oge float %3996, 1.000000e+00
  %4003 = or i1 %4001, %4002
  %4004 = fcmp fast olt float %3992, 0.000000e+00
  %4005 = fcmp fast olt float %3996, 0.000000e+00
  %4006 = or i1 %4004, %4005
  %4007 = or i1 %4003, %4006
  br i1 %4007, label %4640, label %4008, !dx.controlflow.hints !126

; <label>:4008                                    ; preds = %3973
  %4009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4010 = extractvalue %dx.types.CBufRet.f32 %4009, 0
  %4011 = extractvalue %dx.types.CBufRet.f32 %4009, 1
  %4012 = extractvalue %dx.types.CBufRet.f32 %4009, 2
  %4013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4014 = extractvalue %dx.types.CBufRet.f32 %4013, 1
  %4015 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4016 = extractvalue %dx.types.CBufRet.i32 %4015, 2
  %4017 = uitofp i32 %4016 to float
  %4018 = extractvalue %dx.types.CBufRet.i32 %4015, 3
  %4019 = uitofp i32 %4018 to float
  %4020 = extractvalue %dx.types.CBufRet.f32 %4009, 3
  %4021 = fmul fast float %4020, 2.000000e+00
  %4022 = fsub fast float %3992, %4010
  %4023 = fsub fast float %3996, %4011
  %4024 = fmul fast float %4021, %4022
  %4025 = fmul fast float %4021, %4023
  %4026 = fdiv fast float 1.000000e+00, %3808
  %4027 = fmul fast float %4025, %4026
  %4028 = call float @dx.op.unary.f32(i32 6, float %4027)  ; FAbs(value)
  %4029 = fmul fast float %4012, %146
  %4030 = fmul fast float %4029, %4021
  %4031 = call float @dx.op.unary.f32(i32 6, float %4030)  ; FAbs(value)
  %4032 = call float @dx.op.unary.f32(i32 6, float %4024)  ; FAbs(value)
  %4033 = call float @dx.op.binary.f32(i32 35, float %4031, float %4028)  ; FMax(a,b)
  %4034 = call float @dx.op.binary.f32(i32 35, float %4032, float %4033)  ; FMax(a,b)
  %4035 = fmul fast float %4034, 2.000000e+00
  %4036 = call float @dx.op.unary.f32(i32 23, float %4035)  ; Log(value)
  %4037 = call float @dx.op.binary.f32(i32 35, float %4036, float %4017)  ; FMax(a,b)
  %4038 = call float @dx.op.unary.f32(i32 22, float %4037)  ; Frc(value)
  %4039 = fadd fast float %4038, 0xBFEA666660000000
  %4040 = fmul fast float %4039, 8.000000e+00
  %4041 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  %4042 = call float @dx.op.unary.f32(i32 27, float %4037)  ; Round_ni(value)
  %4043 = fadd fast float %4042, %4041
  %4044 = call float @dx.op.binary.f32(i32 36, float %4043, float %4019)  ; FMin(a,b)
  %4045 = call float @dx.op.unary.f32(i32 27, float %4044)  ; Round_ni(value)
  %4046 = fsub fast float -0.000000e+00, %4045
  %4047 = call float @dx.op.unary.f32(i32 21, float %4046)  ; Exp(value)
  %4048 = fmul fast float %4047, %4021
  %4049 = fmul fast float %4048, %3992
  %4050 = fmul fast float %4048, %3996
  %4051 = fmul fast float %4049, 5.000000e-01
  %4052 = fmul fast float %4050, 5.000000e-01
  %4053 = fadd fast float %4051, 5.000000e-01
  %4054 = fadd fast float %4052, 5.000000e-01
  %4055 = fmul fast float %4049, 2.500000e-01
  %4056 = fmul fast float %4050, 2.500000e-01
  %4057 = fadd fast float %4055, 5.000000e-01
  %4058 = fadd fast float %4056, 5.000000e-01
  %4059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4060 = extractvalue %dx.types.ResRet.i32 %4059, 0
  %4061 = and i32 %4060, 536870911
  %4062 = lshr i32 %4061, 9
  %4063 = uitofp i32 %4062 to float
  %4064 = fmul fast float %4063, %3992
  %4065 = fmul fast float %4063, %3996
  %4066 = call float @dx.op.unary.f32(i32 22, float %4064)  ; Frc(value)
  %4067 = call float @dx.op.unary.f32(i32 22, float %4065)  ; Frc(value)
  %4068 = call float @dx.op.unary.f32(i32 22, float %4041)  ; Frc(value)
  %4069 = fcmp fast une float %4068, 0.000000e+00
  br i1 %4069, label %4070, label %4168, !dx.controlflow.hints !127

; <label>:4070                                    ; preds = %4008
  %4071 = call float @dx.op.unary.f32(i32 21, float %4042)  ; Exp(value)
  %4072 = fmul fast float %4071, 1.953125e-03
  %4073 = fcmp fast olt float %4066, %4072
  %4074 = fcmp fast olt float %4067, %4072
  %4075 = or i1 %4073, %4074
  %4076 = fsub fast float 1.000000e+00, %4072
  %4077 = fcmp fast ogt float %4066, %4076
  %4078 = fcmp fast ogt float %4067, %4076
  %4079 = or i1 %4077, %4078
  %4080 = or i1 %4075, %4079
  br i1 %4080, label %4081, label %4247, !dx.controlflow.hints !128

; <label>:4081                                    ; preds = %4070
  %4082 = fmul fast float %4014, 5.000000e-01
  %4083 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4084 = extractvalue %dx.types.CBufRet.i32 %4083, 0
  %4085 = fmul fast float %3996, 3.530000e+02
  %4086 = uitofp i32 %4061 to float
  %4087 = fmul fast float %4085, %4086
  %4088 = fmul fast float %3992, 6.130000e+02
  %4089 = fadd fast float %4087, %4088
  %4090 = fptoui float %4089 to i32
  %4091 = add i32 %4084, %4090
  %4092 = mul i32 %4091, -63
  %4093 = lshr i32 %4092, 17
  %4094 = xor i32 %4093, %4092
  %4095 = mul i32 %4094, -511
  %4096 = mul i32 %4094, -8176
  %4097 = xor i32 %4095, %4096
  %4098 = mul i32 %4097, -7
  %4099 = mul i32 %4097, -7168
  %4100 = xor i32 %4098, %4099
  %4101 = lshr i32 %4100, 15
  %4102 = xor i32 %4101, %4098
  %4103 = and i32 %4102, 15
  %4104 = mul i32 %4103, 2
  %4105 = add i32 0, %4104
  %4106 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %4105
  %4107 = load float, float* %4106, align 4
  %4108 = mul i32 %4103, 2
  %4109 = add i32 1, %4108
  %4110 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %4109
  %4111 = load float, float* %4110, align 4
  %4112 = fmul fast float %3996, 2.770000e+02
  %4113 = fmul fast float %4112, %4086
  %4114 = fmul fast float %3992, 5.990000e+02
  %4115 = fadd fast float %4113, %4114
  %4116 = fptoui float %4115 to i32
  %4117 = mul i32 %4116, -63
  %4118 = lshr i32 %4117, 17
  %4119 = xor i32 %4118, %4117
  %4120 = mul i32 %4119, -511
  %4121 = mul i32 %4119, -8176
  %4122 = xor i32 %4120, %4121
  %4123 = mul i32 %4122, -7
  %4124 = mul i32 %4122, -7168
  %4125 = xor i32 %4123, %4124
  %4126 = lshr i32 %4125, 15
  %4127 = xor i32 %4126, %4123
  %4128 = and i32 %4127, 63
  %4129 = mul i32 %4128, 2
  %4130 = add i32 0, %4129
  %4131 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %4130
  %4132 = load float, float* %4131, align 4
  %4133 = mul i32 %4128, 2
  %4134 = add i32 1, %4133
  %4135 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %4134
  %4136 = load float, float* %4135, align 4
  %4137 = call float @dx.op.dot2.f32(i32 54, float %4107, float %4111, float %4132, float %4136)  ; Dot2(ax,ay,bx,by)
  %4138 = fsub fast float -0.000000e+00, %4132
  %4139 = call float @dx.op.dot2.f32(i32 54, float %4107, float %4111, float %4138, float %4136)  ; Dot2(ax,ay,bx,by)
  %4140 = fmul fast float %4137, %4082
  %4141 = fmul fast float %4139, %4082
  %4142 = fdiv fast float 2.000000e+00, %4048
  %4143 = fmul fast float %4071, 9.765625e-04
  %4144 = fcmp fast olt float %4066, %4143
  %4145 = fcmp fast olt float %4067, %4143
  %4146 = or i1 %4144, %4145
  %4147 = fsub fast float 1.000000e+00, %4143
  %4148 = fcmp fast ogt float %4066, %4147
  %4149 = fcmp fast ogt float %4067, %4147
  %4150 = or i1 %4148, %4149
  %4151 = or i1 %4146, %4150
  %4152 = fmul fast float %4140, 2.000000e+00
  br i1 %4151, label %4153, label %4157

; <label>:4153                                    ; preds = %4081
  %4154 = fmul fast float %4141, 2.000000e+00
  %4155 = fadd fast float %4152, %4053
  %4156 = fadd fast float %4154, %4054
  br label %4157

; <label>:4157                                    ; preds = %4153, %4081
  %4158 = phi float [ %4155, %4153 ], [ %4053, %4081 ]
  %4159 = phi float [ %4156, %4153 ], [ %4054, %4081 ]
  %4160 = phi i32 [ 3, %4153 ], [ 2, %4081 ]
  %4161 = fadd fast float %4140, %4057
  %4162 = fadd fast float %4141, %4058
  %4163 = fmul fast float %4152, %4142
  %4164 = fmul fast float %4142, 2.000000e+00
  %4165 = fmul fast float %4164, %4141
  %4166 = fadd fast float %4163, %3992
  %4167 = fadd fast float %4165, %3996
  br label %4247

; <label>:4168                                    ; preds = %4008
  %4169 = call float @dx.op.unary.f32(i32 21, float %4045)  ; Exp(value)
  %4170 = fmul fast float %4169, 9.765625e-04
  %4171 = fcmp fast olt float %4066, %4170
  %4172 = fcmp fast olt float %4067, %4170
  %4173 = or i1 %4171, %4172
  %4174 = fsub fast float 1.000000e+00, %4170
  %4175 = fcmp fast ogt float %4066, %4174
  %4176 = fcmp fast ogt float %4067, %4174
  %4177 = or i1 %4175, %4176
  %4178 = or i1 %4173, %4177
  br i1 %4178, label %4179, label %4247, !dx.controlflow.hints !129

; <label>:4179                                    ; preds = %4168
  %4180 = fmul fast float %4014, 5.000000e-01
  %4181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.i32 %4181, 0
  %4183 = fmul fast float %3996, 3.530000e+02
  %4184 = uitofp i32 %4061 to float
  %4185 = fmul fast float %4183, %4184
  %4186 = fmul fast float %3992, 6.130000e+02
  %4187 = fadd fast float %4185, %4186
  %4188 = fptoui float %4187 to i32
  %4189 = add i32 %4182, %4188
  %4190 = mul i32 %4189, -63
  %4191 = lshr i32 %4190, 17
  %4192 = xor i32 %4191, %4190
  %4193 = mul i32 %4192, -511
  %4194 = mul i32 %4192, -8176
  %4195 = xor i32 %4193, %4194
  %4196 = mul i32 %4195, -7
  %4197 = mul i32 %4195, -7168
  %4198 = xor i32 %4196, %4197
  %4199 = lshr i32 %4198, 15
  %4200 = xor i32 %4199, %4196
  %4201 = and i32 %4200, 15
  %4202 = mul i32 %4201, 2
  %4203 = add i32 0, %4202
  %4204 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %4203
  %4205 = load float, float* %4204, align 4
  %4206 = mul i32 %4201, 2
  %4207 = add i32 1, %4206
  %4208 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %4207
  %4209 = load float, float* %4208, align 4
  %4210 = fmul fast float %3996, 2.770000e+02
  %4211 = fmul fast float %4210, %4184
  %4212 = fmul fast float %3992, 5.990000e+02
  %4213 = fadd fast float %4211, %4212
  %4214 = fptoui float %4213 to i32
  %4215 = mul i32 %4214, -63
  %4216 = lshr i32 %4215, 17
  %4217 = xor i32 %4216, %4215
  %4218 = mul i32 %4217, -511
  %4219 = mul i32 %4217, -8176
  %4220 = xor i32 %4218, %4219
  %4221 = mul i32 %4220, -7
  %4222 = mul i32 %4220, -7168
  %4223 = xor i32 %4221, %4222
  %4224 = lshr i32 %4223, 15
  %4225 = xor i32 %4224, %4221
  %4226 = and i32 %4225, 63
  %4227 = mul i32 %4226, 2
  %4228 = add i32 0, %4227
  %4229 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %4228
  %4230 = load float, float* %4229, align 4
  %4231 = mul i32 %4226, 2
  %4232 = add i32 1, %4231
  %4233 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %4232
  %4234 = load float, float* %4233, align 4
  %4235 = call float @dx.op.dot2.f32(i32 54, float %4205, float %4209, float %4230, float %4234)  ; Dot2(ax,ay,bx,by)
  %4236 = fsub fast float -0.000000e+00, %4230
  %4237 = call float @dx.op.dot2.f32(i32 54, float %4205, float %4209, float %4236, float %4234)  ; Dot2(ax,ay,bx,by)
  %4238 = fmul fast float %4235, %4180
  %4239 = fmul fast float %4237, %4180
  %4240 = fadd fast float %4238, %4053
  %4241 = fadd fast float %4239, %4054
  %4242 = fdiv fast float 2.000000e+00, %4048
  %4243 = fmul fast float %4242, %4238
  %4244 = fmul fast float %4239, %4242
  %4245 = fadd fast float %4243, %3992
  %4246 = fadd fast float %4244, %3996
  br label %4247

; <label>:4247                                    ; preds = %4179, %4168, %4157, %4070
  %4248 = phi float [ %4161, %4157 ], [ %4057, %4070 ], [ %4057, %4179 ], [ %4057, %4168 ]
  %4249 = phi float [ %4162, %4157 ], [ %4058, %4070 ], [ %4058, %4179 ], [ %4058, %4168 ]
  %4250 = phi float [ %4158, %4157 ], [ %4053, %4070 ], [ %4240, %4179 ], [ %4053, %4168 ]
  %4251 = phi float [ %4159, %4157 ], [ %4054, %4070 ], [ %4241, %4179 ], [ %4054, %4168 ]
  %4252 = phi i32 [ %4160, %4157 ], [ 0, %4070 ], [ 1, %4179 ], [ 0, %4168 ]
  %4253 = phi float [ %4166, %4157 ], [ %3992, %4070 ], [ %4245, %4179 ], [ %3992, %4168 ]
  %4254 = phi float [ %4167, %4157 ], [ %3996, %4070 ], [ %4246, %4179 ], [ %3996, %4168 ]
  %4255 = fsub fast float %4019, %4017
  %4256 = fptoui float %4255 to i32
  %4257 = add i32 %4256, 320
  %4258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %4257)  ; CBufferLoadLegacy(handle,regIndex)
  %4259 = extractvalue %dx.types.CBufRet.f32 %4258, 0
  %4260 = extractvalue %dx.types.CBufRet.f32 %4258, 1
  %4261 = fcmp fast une float %4044, %4019
  %4262 = fsub fast float %4253, %4259
  %4263 = fsub fast float %4254, %4260
  %4264 = call float @dx.op.unary.f32(i32 6, float %4262)  ; FAbs(value)
  %4265 = call float @dx.op.unary.f32(i32 6, float %4263)  ; FAbs(value)
  %4266 = fmul fast float %4264, %4048
  %4267 = fmul fast float %4265, %4048
  %4268 = fcmp fast olt float %4266, 1.000000e+00
  %4269 = fcmp fast olt float %4267, 1.000000e+00
  %4270 = and i1 %4268, %4269
  %4271 = or i1 %4261, %4270
  br i1 %4271, label %4272, label %4640, !dx.controlflow.hints !130

; <label>:4272                                    ; preds = %4247
  %4273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.i32 %4273, 2
  %4275 = sitofp i32 %4274 to float
  %4276 = fsub fast float %4044, %4275
  %4277 = call float @dx.op.unary.f32(i32 27, float %4276)  ; Round_ni(value)
  %4278 = call float @dx.op.unary.f32(i32 22, float %4044)  ; Frc(value)
  %4279 = icmp eq i32 %4252, 0
  %4280 = call float @dx.op.unary.f32(i32 22, float %4250)  ; Frc(value)
  %4281 = call float @dx.op.unary.f32(i32 22, float %4251)  ; Frc(value)
  br i1 %4279, label %4352, label %4282, !dx.controlflow.hints !131

; <label>:4282                                    ; preds = %4272
  %4283 = and i32 %4252, 1
  %4284 = icmp eq i32 %4283, 0
  br i1 %4284, label %4298, label %4285, !dx.controlflow.hints !132

; <label>:4285                                    ; preds = %4282
  %4286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.f32 %4286, 0
  %4288 = fmul fast float %4280, %4287
  %4289 = fmul fast float %4281, %4287
  %4290 = fptoui float %4288 to i32
  %4291 = fptoui float %4289 to i32
  %4292 = fptoui float %4277 to i32
  %4293 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %4290, i32 %4291, i32 %4292, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4294 = extractvalue %dx.types.ResRet.f32 %4293, 0
  %4295 = extractvalue %dx.types.ResRet.f32 %4293, 1
  %4296 = extractvalue %dx.types.ResRet.f32 %4293, 2
  %4297 = extractvalue %dx.types.ResRet.f32 %4293, 3
  br label %4304

; <label>:4298                                    ; preds = %4282
  %4299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %4280, float %4281, float %4277, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4300 = extractvalue %dx.types.ResRet.f32 %4299, 0
  %4301 = extractvalue %dx.types.ResRet.f32 %4299, 1
  %4302 = extractvalue %dx.types.ResRet.f32 %4299, 2
  %4303 = extractvalue %dx.types.ResRet.f32 %4299, 3
  br label %4304

; <label>:4304                                    ; preds = %4298, %4285
  %4305 = phi float [ %4294, %4285 ], [ %4300, %4298 ]
  %4306 = phi float [ %4295, %4285 ], [ %4301, %4298 ]
  %4307 = phi float [ %4296, %4285 ], [ %4302, %4298 ]
  %4308 = phi float [ %4297, %4285 ], [ %4303, %4298 ]
  %4309 = fcmp fast ogt float %4278, 0.000000e+00
  br i1 %4309, label %4310, label %4380

; <label>:4310                                    ; preds = %4304
  %4311 = and i32 %4252, 2
  %4312 = icmp eq i32 %4311, 0
  %4313 = fadd fast float %4277, 1.000000e+00
  %4314 = call float @dx.op.unary.f32(i32 22, float %4248)  ; Frc(value)
  %4315 = call float @dx.op.unary.f32(i32 22, float %4249)  ; Frc(value)
  br i1 %4312, label %4329, label %4316, !dx.controlflow.hints !133

; <label>:4316                                    ; preds = %4310
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 0
  %4319 = fmul fast float %4314, %4318
  %4320 = fmul fast float %4315, %4318
  %4321 = fptoui float %4319 to i32
  %4322 = fptoui float %4320 to i32
  %4323 = fptoui float %4313 to i32
  %4324 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %4321, i32 %4322, i32 %4323, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4325 = extractvalue %dx.types.ResRet.f32 %4324, 0
  %4326 = extractvalue %dx.types.ResRet.f32 %4324, 1
  %4327 = extractvalue %dx.types.ResRet.f32 %4324, 2
  %4328 = extractvalue %dx.types.ResRet.f32 %4324, 3
  br label %4335

; <label>:4329                                    ; preds = %4310
  %4330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %4314, float %4315, float %4313, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4331 = extractvalue %dx.types.ResRet.f32 %4330, 0
  %4332 = extractvalue %dx.types.ResRet.f32 %4330, 1
  %4333 = extractvalue %dx.types.ResRet.f32 %4330, 2
  %4334 = extractvalue %dx.types.ResRet.f32 %4330, 3
  br label %4335

; <label>:4335                                    ; preds = %4329, %4316
  %4336 = phi float [ %4325, %4316 ], [ %4331, %4329 ]
  %4337 = phi float [ %4326, %4316 ], [ %4332, %4329 ]
  %4338 = phi float [ %4327, %4316 ], [ %4333, %4329 ]
  %4339 = phi float [ %4328, %4316 ], [ %4334, %4329 ]
  %4340 = fsub fast float %4336, %4305
  %4341 = fsub fast float %4337, %4306
  %4342 = fsub fast float %4338, %4307
  %4343 = fsub fast float %4339, %4308
  %4344 = fmul fast float %4340, %4278
  %4345 = fmul fast float %4341, %4278
  %4346 = fmul fast float %4342, %4278
  %4347 = fmul fast float %4343, %4278
  %4348 = fadd fast float %4344, %4305
  %4349 = fadd fast float %4345, %4306
  %4350 = fadd fast float %4346, %4307
  %4351 = fadd fast float %4347, %4308
  br label %4380

; <label>:4352                                    ; preds = %4272
  %4353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %4280, float %4281, float %4277, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4354 = extractvalue %dx.types.ResRet.f32 %4353, 0
  %4355 = extractvalue %dx.types.ResRet.f32 %4353, 1
  %4356 = extractvalue %dx.types.ResRet.f32 %4353, 2
  %4357 = extractvalue %dx.types.ResRet.f32 %4353, 3
  %4358 = fcmp fast ogt float %4278, 0.000000e+00
  br i1 %4358, label %4359, label %4380, !dx.controlflow.hints !134

; <label>:4359                                    ; preds = %4352
  %4360 = fadd fast float %4277, 1.000000e+00
  %4361 = call float @dx.op.unary.f32(i32 22, float %4248)  ; Frc(value)
  %4362 = call float @dx.op.unary.f32(i32 22, float %4249)  ; Frc(value)
  %4363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %4361, float %4362, float %4360, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4364 = extractvalue %dx.types.ResRet.f32 %4363, 0
  %4365 = extractvalue %dx.types.ResRet.f32 %4363, 1
  %4366 = extractvalue %dx.types.ResRet.f32 %4363, 2
  %4367 = extractvalue %dx.types.ResRet.f32 %4363, 3
  %4368 = fsub fast float %4364, %4354
  %4369 = fsub fast float %4365, %4355
  %4370 = fsub fast float %4366, %4356
  %4371 = fsub fast float %4367, %4357
  %4372 = fmul fast float %4368, %4278
  %4373 = fmul fast float %4369, %4278
  %4374 = fmul fast float %4370, %4278
  %4375 = fmul fast float %4371, %4278
  %4376 = fadd fast float %4372, %4354
  %4377 = fadd fast float %4373, %4355
  %4378 = fadd fast float %4374, %4356
  %4379 = fadd fast float %4375, %4357
  br label %4380

; <label>:4380                                    ; preds = %4359, %4352, %4335, %4304
  %4381 = phi float [ %4348, %4335 ], [ %4305, %4304 ], [ %4376, %4359 ], [ %4354, %4352 ]
  %4382 = phi float [ %4349, %4335 ], [ %4306, %4304 ], [ %4377, %4359 ], [ %4355, %4352 ]
  %4383 = phi float [ %4350, %4335 ], [ %4307, %4304 ], [ %4378, %4359 ], [ %4356, %4352 ]
  %4384 = phi float [ %4351, %4335 ], [ %4308, %4304 ], [ %4379, %4359 ], [ %4357, %4352 ]
  %4385 = fadd fast float %4381, -5.000000e-01
  %4386 = fadd fast float %4383, -5.000000e-01
  %4387 = fmul fast float %4385, 0xBFD5555560000000
  %4388 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4386, float %4387)  ; FMad(a,b,c)
  %4389 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4382, float 0.000000e+00)  ; FMad(a,b,c)
  %4390 = fadd fast float %4389, %4384
  %4391 = fmul fast float %4385, -7.500000e-01
  %4392 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4386, float %4391)  ; FMad(a,b,c)
  %4393 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4382, float 0.000000e+00)  ; FMad(a,b,c)
  %4394 = fadd fast float %4393, %4384
  %4395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4396 = extractvalue %dx.types.CBufRet.f32 %4395, 0
  %4397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4398 = extractvalue %dx.types.CBufRet.f32 %4397, 0
  %4399 = extractvalue %dx.types.CBufRet.f32 %4397, 1
  %4400 = extractvalue %dx.types.CBufRet.f32 %4397, 2
  %4401 = extractvalue %dx.types.CBufRet.f32 %4397, 3
  %4402 = fsub fast float %4398, %4388
  %4403 = fsub fast float %4399, %4390
  %4404 = fsub fast float %4400, %4392
  %4405 = fsub fast float %4401, %4394
  %4406 = fmul fast float %4402, %4396
  %4407 = fmul fast float %4403, %4396
  %4408 = fmul fast float %4404, %4396
  %4409 = fmul fast float %4405, %4396
  %4410 = fadd fast float %4406, %4388
  %4411 = fadd fast float %4407, %4390
  %4412 = fadd fast float %4408, %4392
  %4413 = fadd fast float %4409, %4394
  %4414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4415 = extractvalue %dx.types.ResRet.i32 %4414, 0
  %4416 = and i32 %4415, 536870911
  %4417 = uitofp i32 %4416 to float
  %4418 = fmul fast float %4417, %4253
  %4419 = fmul fast float %4417, %4254
  %4420 = fptoui float %4418 to i32
  %4421 = fptoui float %4419 to i32
  %4422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4423 = extractvalue %dx.types.ResRet.i32 %4422, 0
  %4424 = and i32 %4423, 31
  %4425 = lshr i32 %4420, %4424
  %4426 = lshr i32 %4421, %4424
  %4427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4428 = extractvalue %dx.types.ResRet.i32 %4427, 0
  %4429 = and i32 %4428, 31
  %4430 = shl i32 1, %4429
  %4431 = call i32 @dx.op.binary.i32(i32 40, i32 %4430, i32 4)  ; UMin(a,b)
  %4432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4433 = extractvalue %dx.types.ResRet.i32 %4432, 0
  %4434 = extractvalue %dx.types.ResRet.i32 %4432, 1
  %4435 = icmp eq i32 %4431, 0
  br i1 %4435, label %4477, label %4436

; <label>:4436                                    ; preds = %4380
  br label %4437

; <label>:4437                                    ; preds = %4465, %4436
  %4438 = phi i32 [ %4468, %4465 ], [ 0, %4436 ]
  %4439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4440 = extractvalue %dx.types.ResRet.i32 %4439, 0
  %4441 = lshr i32 %4440, 16
  %4442 = and i32 %4441, 31
  %4443 = shl i32 %4426, %4442
  %4444 = add i32 %4443, %4425
  %4445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4446 = extractvalue %dx.types.ResRet.i32 %4445, 0
  %4447 = and i32 %4446, 31
  %4448 = shl i32 %4444, %4447
  %4449 = add i32 %4448, %4438
  %4450 = shl i32 %4449, 2
  %4451 = add i32 %4450, 32
  %4452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4451, i32 undef)  ; BufferLoad(srv,index,wot)
  %4453 = extractvalue %dx.types.ResRet.i32 %4452, 0
  %4454 = icmp slt i32 %4453, 0
  %4455 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %4438
  %4456 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %4438
  %4457 = bitcast float* %4455 to i32*
  %4458 = bitcast float* %4456 to i32*
  br i1 %4454, label %4459, label %4465

; <label>:4459                                    ; preds = %4437
  %4460 = and i32 %4453, 1073741823
  %4461 = add nuw nsw i32 %4460, 20
  %4462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4461, i32 undef)  ; BufferLoad(srv,index,wot)
  %4463 = extractvalue %dx.types.ResRet.i32 %4462, 0
  %4464 = extractvalue %dx.types.ResRet.i32 %4462, 1
  br label %4465

; <label>:4465                                    ; preds = %4459, %4437
  %4466 = phi i32 [ %4463, %4459 ], [ %4433, %4437 ]
  %4467 = phi i32 [ %4464, %4459 ], [ %4434, %4437 ]
  store i32 %4466, i32* %4457, align 4
  store i32 %4467, i32* %4458, align 4
  %4468 = add nuw i32 %4438, 1
  %4469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.i32 %4469, 2
  %4471 = icmp eq i32 %4470, 0
  %4472 = icmp ugt i32 %4453, -1073741825
  %4473 = and i1 %4472, %4471
  %4474 = icmp ult i32 %4468, %4431
  %4475 = and i1 %4473, %4474
  br i1 %4475, label %4437, label %4476

; <label>:4476                                    ; preds = %4465
  br label %4477

; <label>:4477                                    ; preds = %4476, %4380
  %4478 = phi i32 [ 0, %4380 ], [ %4468, %4476 ]
  %4479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4480 = extractvalue %dx.types.CBufRet.f32 %4479, 2
  %4481 = fptoui float %4480 to i32
  %4482 = icmp eq i32 %4481, 0
  br i1 %4482, label %4534, label %4483

; <label>:4483                                    ; preds = %4477
  br label %4484

; <label>:4484                                    ; preds = %4529, %4483
  %4485 = phi i32 [ %4530, %4529 ], [ %4478, %4483 ]
  %4486 = phi i32 [ %4531, %4529 ], [ 0, %4483 ]
  %4487 = lshr i32 %4486, 2
  %4488 = and i32 %4486, 3
  %4489 = add nuw nsw i32 %4487, 83
  %4490 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 %4489)  ; CBufferLoadLegacy(handle,regIndex)
  %4491 = extractvalue %dx.types.CBufRet.i32 %4490, 0
  %4492 = extractvalue %dx.types.CBufRet.i32 %4490, 1
  %4493 = extractvalue %dx.types.CBufRet.i32 %4490, 2
  %4494 = extractvalue %dx.types.CBufRet.i32 %4490, 3
  %4495 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i32 0, i32 0
  store i32 %4491, i32* %4495, align 4
  %4496 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i32 0, i32 1
  store i32 %4492, i32* %4496, align 4
  %4497 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i32 0, i32 2
  store i32 %4493, i32* %4497, align 4
  %4498 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i32 0, i32 3
  store i32 %4494, i32* %4498, align 4
  %4499 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i32 0, i32 %4488
  %4500 = load i32, i32* %4499, align 4, !tbaa !135, !noalias !137
  %4501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4502 = extractvalue %dx.types.ResRet.i32 %4501, 0
  %4503 = lshr i32 %4502, 16
  %4504 = and i32 %4503, 31
  %4505 = shl i32 %4426, %4504
  %4506 = add i32 %4505, %4425
  %4507 = shl i32 %4506, 2
  %4508 = add i32 %4507, %4500
  %4509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4508, i32 undef)  ; BufferLoad(srv,index,wot)
  %4510 = extractvalue %dx.types.ResRet.i32 %4509, 0
  %4511 = icmp eq i32 %4510, 0
  br i1 %4511, label %4529, label %4512

; <label>:4512                                    ; preds = %4484
  %4513 = icmp slt i32 %4510, 0
  %4514 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %4485
  %4515 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %4485
  %4516 = bitcast float* %4514 to i32*
  %4517 = bitcast float* %4515 to i32*
  br i1 %4513, label %4518, label %4525

; <label>:4518                                    ; preds = %4512
  %4519 = and i32 %4510, 1073741823
  %4520 = add i32 %4500, 20
  %4521 = add i32 %4520, %4519
  %4522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4521, i32 undef)  ; BufferLoad(srv,index,wot)
  %4523 = extractvalue %dx.types.ResRet.i32 %4522, 0
  %4524 = extractvalue %dx.types.ResRet.i32 %4522, 1
  br label %4525

; <label>:4525                                    ; preds = %4518, %4512
  %4526 = phi i32 [ %4523, %4518 ], [ %4433, %4512 ]
  %4527 = phi i32 [ %4524, %4518 ], [ %4434, %4512 ]
  store i32 %4526, i32* %4516, align 4
  store i32 %4527, i32* %4517, align 4
  %4528 = add i32 %4485, 1
  br label %4529

; <label>:4529                                    ; preds = %4525, %4484
  %4530 = phi i32 [ %4485, %4484 ], [ %4528, %4525 ]
  %4531 = add nuw i32 %4486, 1
  %4532 = icmp eq i32 %4531, %4481
  br i1 %4532, label %4533, label %4484

; <label>:4533                                    ; preds = %4529
  br label %4534

; <label>:4534                                    ; preds = %4533, %4477
  %4535 = phi i32 [ %4478, %4477 ], [ %4530, %4533 ]
  %4536 = icmp eq i32 %4535, 1
  %4537 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 0
  %4538 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 0
  br i1 %4536, label %4539, label %4542

; <label>:4539                                    ; preds = %4534
  %4540 = load float, float* %4537, align 4
  %4541 = load float, float* %4538, align 4
  br label %4569

; <label>:4542                                    ; preds = %4534
  %4543 = load float, float* %4537, align 4
  %4544 = load float, float* %4538, align 4
  %4545 = fdiv fast float 1.000000e+00, %4544
  %4546 = fsub fast float %4543, %4545
  %4547 = icmp ugt i32 %4535, 1
  br i1 %4547, label %4548, label %4564

; <label>:4548                                    ; preds = %4542
  br label %4549

; <label>:4549                                    ; preds = %4549, %4548
  %4550 = phi float [ %4559, %4549 ], [ %4546, %4548 ]
  %4551 = phi float [ %4560, %4549 ], [ %4543, %4548 ]
  %4552 = phi i32 [ %4561, %4549 ], [ 1, %4548 ]
  %4553 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %4552
  %4554 = load float, float* %4553, align 4
  %4555 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %4552
  %4556 = load float, float* %4555, align 4
  %4557 = fdiv fast float 1.000000e+00, %4556
  %4558 = fsub fast float %4554, %4557
  %4559 = call float @dx.op.binary.f32(i32 36, float %4550, float %4558)  ; FMin(a,b)
  %4560 = call float @dx.op.binary.f32(i32 35, float %4551, float %4554)  ; FMax(a,b)
  %4561 = add nuw i32 %4552, 1
  %4562 = icmp eq i32 %4561, %4535
  br i1 %4562, label %4563, label %4549

; <label>:4563                                    ; preds = %4549
  br label %4564

; <label>:4564                                    ; preds = %4563, %4542
  %4565 = phi float [ %4546, %4542 ], [ %4559, %4563 ]
  %4566 = phi float [ %4543, %4542 ], [ %4560, %4563 ]
  %4567 = fsub fast float %4566, %4565
  %4568 = fdiv fast float 1.000000e+00, %4567
  br label %4569

; <label>:4569                                    ; preds = %4564, %4539
  %4570 = phi float [ %4540, %4539 ], [ %4566, %4564 ]
  %4571 = phi float [ %4541, %4539 ], [ %4568, %4564 ]
  %4572 = fadd fast float %4000, %4570
  %4573 = fmul fast float %4572, %4571
  %4574 = call float @dx.op.unary.f32(i32 7, float %4573)  ; Saturate(value)
  %4575 = fmul fast float %4574, 2.000000e+00
  %4576 = fsub fast float 1.000000e+00, %4575
  %4577 = fmul fast float %4410, %4410
  %4578 = fsub fast float %4411, %4577
  %4579 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4578)  ; FMax(a,b)
  %4580 = fdiv fast float 1.000000e+00, %4579
  %4581 = fmul fast float %4411, %4410
  %4582 = fsub fast float %4412, %4581
  %4583 = fsub fast float %4576, %4410
  %4584 = fmul fast float %4576, %4576
  %4585 = fsub fast float %4584, %4411
  %4586 = fmul fast float %4580, %4582
  %4587 = fmul fast float %4586, %4583
  %4588 = fsub fast float %4585, %4587
  %4589 = fmul fast float %4411, %4411
  %4590 = fsub fast float %4413, %4589
  %4591 = fmul fast float %4582, %4582
  %4592 = fmul fast float %4591, %4580
  %4593 = fsub fast float %4590, %4592
  %4594 = fdiv fast float %4588, %4593
  %4595 = fmul fast float %4594, %4582
  %4596 = fsub fast float %4583, %4595
  %4597 = fmul fast float %4596, %4580
  %4598 = fmul fast float %4597, %4410
  %4599 = fsub fast float 1.000000e+00, %4598
  %4600 = fmul fast float %4594, %4411
  %4601 = fsub fast float %4599, %4600
  %4602 = fmul fast float %4597, %4597
  %4603 = fmul fast float %4594, 4.000000e+00
  %4604 = fmul fast float %4603, %4601
  %4605 = fsub fast float %4602, %4604
  %4606 = call float @dx.op.unary.f32(i32 24, float %4605)  ; Sqrt(value)
  %4607 = fcmp fast oge float %4597, 0.000000e+00
  %4608 = fsub fast float -0.000000e+00, %4606
  %4609 = select i1 %4607, float %4608, float %4606
  %4610 = fsub fast float %4609, %4597
  %4611 = fdiv fast float %4610, %4594
  %4612 = fdiv fast float %4601, %4610
  %4613 = fmul fast float %4611, 5.000000e-01
  %4614 = fmul fast float %4612, 2.000000e+00
  %4615 = select i1 %4607, float %4613, float %4614
  %4616 = select i1 %4607, float %4614, float %4613
  %4617 = call float @dx.op.binary.f32(i32 35, float %4615, float %4616)  ; FMax(a,b)
  %4618 = call float @dx.op.binary.f32(i32 36, float %4615, float %4616)  ; FMin(a,b)
  %4619 = fcmp fast ogt float %4576, %4617
  %4620 = fsub fast float %4576, %4618
  %4621 = fsub fast float %4576, %4617
  %4622 = fsub fast float %4617, %4618
  %4623 = select i1 %4619, float %4621, float %4622
  %4624 = fmul float %4620, %4623
  %4625 = select i1 %4619, float %4618, float %4576
  %4626 = fcmp fast ogt float %4576, %4618
  %4627 = fmul fast float %4625, %4617
  %4628 = fadd fast float %4625, %4617
  %4629 = fmul fast float %4628, %4410
  %4630 = fadd fast float %4627, %4411
  %4631 = fsub fast float %4630, %4629
  %4632 = fdiv fast float %4631, %4624
  %4633 = select i1 %4626, float %4632, float 0.000000e+00
  %4634 = fsub fast float 1.000000e+00, %4633
  %4635 = select i1 %4619, float %4634, float %4633
  %4636 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4637 = extractvalue %dx.types.CBufRet.f32 %4395, 3
  %4638 = fmul fast float %4637, %4636
  %4639 = fsub fast float 1.000000e+00, %4638
  br label %4640

; <label>:4640                                    ; preds = %4569, %4247, %3973, %3969, %3933
  %4641 = phi float [ 1.000000e+00, %3933 ], [ %4639, %4569 ], [ 1.000000e+00, %3973 ], [ 1.000000e+00, %4247 ], [ 1.000000e+00, %3969 ]
  %4642 = fcmp fast ogt float %3965, 0.000000e+00
  br i1 %4642, label %4643, label %4807, !dx.controlflow.hints !146

; <label>:4643                                    ; preds = %4640
  %4644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.f32 %4644, 2
  %4646 = fadd fast float %4645, %3848
  %4647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4648 = extractvalue %dx.types.CBufRet.f32 %4647, 2
  %4649 = extractvalue %dx.types.CBufRet.f32 %4647, 3
  %4650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4651 = extractvalue %dx.types.CBufRet.f32 %4650, 2
  %4652 = call float @dx.op.binary.f32(i32 35, float %4646, float 0.000000e+00)  ; FMax(a,b)
  %4653 = fadd fast float %4652, 0x3F10000000000000
  %4654 = fcmp fast oeq float %4651, 0.000000e+00
  br i1 %4654, label %4655, label %4722

; <label>:4655                                    ; preds = %4643
  %4656 = extractvalue %dx.types.CBufRet.f32 %4647, 1
  %4657 = extractvalue %dx.types.CBufRet.f32 %4647, 0
  %4658 = fmul fast float %4657, %3863
  %4659 = fmul fast float %4656, %3864
  %4660 = fadd fast float %4658, 5.000000e-01
  %4661 = call float @dx.op.unary.f32(i32 27, float %4660)  ; Round_ni(value)
  %4662 = fadd fast float %4659, 5.000000e-01
  %4663 = call float @dx.op.unary.f32(i32 27, float %4662)  ; Round_ni(value)
  %4664 = fsub fast float %4660, %4661
  %4665 = fsub fast float %4662, %4663
  %4666 = fadd fast float %4661, -5.000000e-01
  %4667 = fadd fast float %4663, -5.000000e-01
  %4668 = fmul fast float %4664, 2.000000e+00
  %4669 = fsub fast float 3.000000e+00, %4668
  %4670 = fadd fast float %4668, 1.000000e+00
  %4671 = fsub fast float 2.000000e+00, %4664
  %4672 = bitcast float %4669 to i32
  %4673 = sub nsw i32 2129859010, %4672
  %4674 = bitcast i32 %4673 to float
  %4675 = fmul fast float %4674, %4671
  %4676 = fadd fast float %4675, -1.000000e+00
  %4677 = bitcast float %4670 to i32
  %4678 = sub nsw i32 2129859010, %4677
  %4679 = bitcast i32 %4678 to float
  %4680 = fmul fast float %4679, %4664
  %4681 = fadd fast float %4680, 1.000000e+00
  %4682 = fmul fast float %4665, 2.000000e+00
  %4683 = fsub fast float 3.000000e+00, %4682
  %4684 = fadd fast float %4682, 1.000000e+00
  %4685 = fsub fast float 2.000000e+00, %4665
  %4686 = bitcast float %4683 to i32
  %4687 = sub nsw i32 2129859010, %4686
  %4688 = bitcast i32 %4687 to float
  %4689 = fmul fast float %4688, %4685
  %4690 = fadd fast float %4689, -1.000000e+00
  %4691 = bitcast float %4684 to i32
  %4692 = sub nsw i32 2129859010, %4691
  %4693 = bitcast i32 %4692 to float
  %4694 = fmul fast float %4693, %4665
  %4695 = fadd fast float %4694, 1.000000e+00
  %4696 = fadd fast float %4676, %4666
  %4697 = fmul fast float %4696, %4648
  %4698 = fadd fast float %4690, %4667
  %4699 = fmul fast float %4698, %4649
  %4700 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %4697, float %4699, float undef, float undef, i32 0, i32 0, i32 undef, float %4653)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4701 = extractvalue %dx.types.ResRet.f32 %4700, 0
  %4702 = fmul fast float %4701, %4669
  %4703 = fadd fast float %4681, %4666
  %4704 = fmul fast float %4703, %4648
  %4705 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %4704, float %4699, float undef, float undef, i32 0, i32 0, i32 undef, float %4653)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4706 = extractvalue %dx.types.ResRet.f32 %4705, 0
  %4707 = fmul fast float %4706, %4670
  %4708 = fadd fast float %4695, %4667
  %4709 = fmul fast float %4708, %4649
  %4710 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %4697, float %4709, float undef, float undef, i32 0, i32 0, i32 undef, float %4653)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4711 = extractvalue %dx.types.ResRet.f32 %4710, 0
  %4712 = fmul fast float %4711, %4669
  %4713 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %4704, float %4709, float undef, float undef, i32 0, i32 0, i32 undef, float %4653)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4714 = extractvalue %dx.types.ResRet.f32 %4713, 0
  %4715 = fmul fast float %4714, %4670
  %4716 = fadd fast float %4715, %4712
  %4717 = fmul fast float %4716, %4684
  %4718 = fadd fast float %4707, %4702
  %4719 = fmul fast float %4718, %4683
  %4720 = fadd fast float %4719, %4717
  %4721 = fmul fast float %4720, 6.250000e-02
  br label %4807

; <label>:4722                                    ; preds = %4643
  %4723 = fmul fast float %1586, 0x401921FB60000000
  %4724 = call float @dx.op.unary.f32(i32 13, float %4723)  ; Sin(value)
  %4725 = call float @dx.op.unary.f32(i32 12, float %4723)  ; Cos(value)
  %4726 = fsub fast float -0.000000e+00, %4724
  br label %4727

; <label>:4727                                    ; preds = %4776, %4722
  %4728 = phi float [ 0.000000e+00, %4722 ], [ %4771, %4776 ]
  %4729 = phi float [ 0.000000e+00, %4722 ], [ %4773, %4776 ]
  %4730 = phi i32 [ 0, %4722 ], [ %4777, %4776 ]
  %4731 = mul i32 %4730, 2
  %4732 = add i32 0, %4731
  %4733 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4732
  %4734 = load float, float* %4733, align 4
  %4735 = mul i32 %4730, 2
  %4736 = add i32 1, %4735
  %4737 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4736
  %4738 = load float, float* %4737, align 4
  %4739 = fmul fast float %4734, %4725
  %4740 = call float @dx.op.tertiary.f32(i32 46, float %4738, float %4726, float %4739)  ; FMad(a,b,c)
  %4741 = fmul fast float %4734, %4724
  %4742 = call float @dx.op.tertiary.f32(i32 46, float %4738, float %4725, float %4741)  ; FMad(a,b,c)
  %4743 = fmul fast float %4740, %4651
  %4744 = fmul fast float %4742, %4651
  %4745 = fadd fast float %4743, %3863
  %4746 = fadd fast float %4744, %3864
  %4747 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %59, float %4745, float %4746, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4748 = extractvalue %dx.types.ResRet.f32 %4747, 0
  %4749 = extractvalue %dx.types.ResRet.f32 %4747, 1
  %4750 = extractvalue %dx.types.ResRet.f32 %4747, 2
  %4751 = extractvalue %dx.types.ResRet.f32 %4747, 3
  %4752 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 0
  store float %4748, float* %4752, align 4
  %4753 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 1
  store float %4749, float* %4753, align 4
  %4754 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 2
  store float %4750, float* %4754, align 4
  %4755 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 3
  store float %4751, float* %4755, align 4
  %4756 = fsub fast float %4748, %4653
  %4757 = fcmp fast olt float %4756, 0.000000e+00
  %4758 = select i1 %4757, float 0.000000e+00, float 1.000000e+00
  %4759 = fadd fast float %4758, %4728
  %4760 = fmul fast float %4758, %4756
  %4761 = fadd fast float %4760, %4729
  br label %4762

; <label>:4762                                    ; preds = %4762, %4727
  %4763 = phi i32 [ 1, %4727 ], [ %4774, %4762 ]
  %4764 = phi float [ %4761, %4727 ], [ %4773, %4762 ]
  %4765 = phi float [ %4759, %4727 ], [ %4771, %4762 ]
  %4766 = getelementptr [4 x float], [4 x float]* %85, i32 0, i32 %4763
  %4767 = load float, float* %4766, align 4, !tbaa !101, !noalias !137
  %4768 = fsub fast float %4767, %4653
  %4769 = fcmp fast olt float %4768, 0.000000e+00
  %4770 = select i1 %4769, float 0.000000e+00, float 1.000000e+00
  %4771 = fadd fast float %4770, %4765
  %4772 = fmul fast float %4770, %4768
  %4773 = fadd fast float %4772, %4764
  %4774 = add nuw nsw i32 %4763, 1
  %4775 = icmp eq i32 %4774, 4
  br i1 %4775, label %4776, label %4762, !llvm.loop !147

; <label>:4776                                    ; preds = %4762
  %4777 = add nuw nsw i32 %4730, 1
  %4778 = icmp eq i32 %4777, 8
  br i1 %4778, label %4779, label %4727, !llvm.loop !148

; <label>:4779                                    ; preds = %4776
  %4780 = fdiv fast float 1.000000e+00, %4771
  %4781 = fmul fast float %4780, %4773
  %4782 = fdiv fast float 1.000000e+00, %4653
  %4783 = fmul fast float %4781, %4782
  %4784 = call float @dx.op.unary.f32(i32 7, float %4783)  ; Saturate(value)
  %4785 = call float @dx.op.binary.f32(i32 35, float %4784, float 0.000000e+00)  ; FMax(a,b)
  %4786 = fmul fast float %4771, 3.125000e-02
  %4787 = call float @dx.op.unary.f32(i32 7, float %4786)  ; Saturate(value)
  %4788 = fmul fast float %4787, 2.000000e+00
  %4789 = fadd fast float %4788, -1.000000e+00
  %4790 = fcmp fast ogt float %4789, 0.000000e+00
  %4791 = fcmp fast olt float %4789, 0.000000e+00
  %4792 = zext i1 %4790 to i32
  %4793 = zext i1 %4791 to i32
  %4794 = sub nsw i32 %4792, %4793
  %4795 = sitofp i32 %4794 to float
  %4796 = fmul fast float %4795, %4789
  %4797 = fsub fast float 1.000000e+00, %4796
  %4798 = fmul fast float %4797, %4797
  %4799 = fmul fast float %4798, %4797
  %4800 = fsub fast float %4797, %4799
  %4801 = fmul fast float %4800, %4785
  %4802 = fsub fast float 1.000000e+00, %4799
  %4803 = fsub fast float %4802, %4801
  %4804 = fmul fast float %4795, 5.000000e-01
  %4805 = fmul fast float %4804, %4803
  %4806 = fsub fast float 5.000000e-01, %4805
  br label %4807

; <label>:4807                                    ; preds = %4779, %4655, %4640
  %4808 = phi float [ 1.000000e+00, %4640 ], [ %4721, %4655 ], [ %4806, %4779 ]
  %4809 = fcmp fast ogt float %3963, 0.000000e+00
  br i1 %4809, label %4810, label %4974, !dx.controlflow.hints !149

; <label>:4810                                    ; preds = %4807
  %4811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4812 = extractvalue %dx.types.CBufRet.f32 %4811, 1
  %4813 = fadd fast float %4812, %3848
  %4814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4815 = extractvalue %dx.types.CBufRet.f32 %4814, 2
  %4816 = extractvalue %dx.types.CBufRet.f32 %4814, 3
  %4817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4818 = extractvalue %dx.types.CBufRet.f32 %4817, 1
  %4819 = call float @dx.op.binary.f32(i32 35, float %4813, float 0.000000e+00)  ; FMax(a,b)
  %4820 = fadd fast float %4819, 0x3F10000000000000
  %4821 = fcmp fast oeq float %4818, 0.000000e+00
  br i1 %4821, label %4822, label %4889

; <label>:4822                                    ; preds = %4810
  %4823 = extractvalue %dx.types.CBufRet.f32 %4814, 1
  %4824 = extractvalue %dx.types.CBufRet.f32 %4814, 0
  %4825 = fmul fast float %4824, %3855
  %4826 = fmul fast float %4823, %3856
  %4827 = fadd fast float %4825, 5.000000e-01
  %4828 = call float @dx.op.unary.f32(i32 27, float %4827)  ; Round_ni(value)
  %4829 = fadd fast float %4826, 5.000000e-01
  %4830 = call float @dx.op.unary.f32(i32 27, float %4829)  ; Round_ni(value)
  %4831 = fsub fast float %4827, %4828
  %4832 = fsub fast float %4829, %4830
  %4833 = fadd fast float %4828, -5.000000e-01
  %4834 = fadd fast float %4830, -5.000000e-01
  %4835 = fmul fast float %4831, 2.000000e+00
  %4836 = fsub fast float 3.000000e+00, %4835
  %4837 = fadd fast float %4835, 1.000000e+00
  %4838 = fsub fast float 2.000000e+00, %4831
  %4839 = bitcast float %4836 to i32
  %4840 = sub nsw i32 2129859010, %4839
  %4841 = bitcast i32 %4840 to float
  %4842 = fmul fast float %4841, %4838
  %4843 = fadd fast float %4842, -1.000000e+00
  %4844 = bitcast float %4837 to i32
  %4845 = sub nsw i32 2129859010, %4844
  %4846 = bitcast i32 %4845 to float
  %4847 = fmul fast float %4846, %4831
  %4848 = fadd fast float %4847, 1.000000e+00
  %4849 = fmul fast float %4832, 2.000000e+00
  %4850 = fsub fast float 3.000000e+00, %4849
  %4851 = fadd fast float %4849, 1.000000e+00
  %4852 = fsub fast float 2.000000e+00, %4832
  %4853 = bitcast float %4850 to i32
  %4854 = sub nsw i32 2129859010, %4853
  %4855 = bitcast i32 %4854 to float
  %4856 = fmul fast float %4855, %4852
  %4857 = fadd fast float %4856, -1.000000e+00
  %4858 = bitcast float %4851 to i32
  %4859 = sub nsw i32 2129859010, %4858
  %4860 = bitcast i32 %4859 to float
  %4861 = fmul fast float %4860, %4832
  %4862 = fadd fast float %4861, 1.000000e+00
  %4863 = fadd fast float %4843, %4833
  %4864 = fmul fast float %4863, %4815
  %4865 = fadd fast float %4857, %4834
  %4866 = fmul fast float %4865, %4816
  %4867 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %4864, float %4866, float undef, float undef, i32 0, i32 0, i32 undef, float %4820)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4868 = extractvalue %dx.types.ResRet.f32 %4867, 0
  %4869 = fmul fast float %4868, %4836
  %4870 = fadd fast float %4848, %4833
  %4871 = fmul fast float %4870, %4815
  %4872 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %4871, float %4866, float undef, float undef, i32 0, i32 0, i32 undef, float %4820)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4873 = extractvalue %dx.types.ResRet.f32 %4872, 0
  %4874 = fmul fast float %4873, %4837
  %4875 = fadd fast float %4862, %4834
  %4876 = fmul fast float %4875, %4816
  %4877 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %4864, float %4876, float undef, float undef, i32 0, i32 0, i32 undef, float %4820)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4878 = extractvalue %dx.types.ResRet.f32 %4877, 0
  %4879 = fmul fast float %4878, %4836
  %4880 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %4871, float %4876, float undef, float undef, i32 0, i32 0, i32 undef, float %4820)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4881 = extractvalue %dx.types.ResRet.f32 %4880, 0
  %4882 = fmul fast float %4881, %4837
  %4883 = fadd fast float %4882, %4879
  %4884 = fmul fast float %4883, %4851
  %4885 = fadd fast float %4874, %4869
  %4886 = fmul fast float %4885, %4850
  %4887 = fadd fast float %4886, %4884
  %4888 = fmul fast float %4887, 6.250000e-02
  br label %4974

; <label>:4889                                    ; preds = %4810
  %4890 = fmul fast float %1586, 0x401921FB60000000
  %4891 = call float @dx.op.unary.f32(i32 13, float %4890)  ; Sin(value)
  %4892 = call float @dx.op.unary.f32(i32 12, float %4890)  ; Cos(value)
  %4893 = fsub fast float -0.000000e+00, %4891
  br label %4894

; <label>:4894                                    ; preds = %4943, %4889
  %4895 = phi float [ 0.000000e+00, %4889 ], [ %4938, %4943 ]
  %4896 = phi float [ 0.000000e+00, %4889 ], [ %4940, %4943 ]
  %4897 = phi i32 [ 0, %4889 ], [ %4944, %4943 ]
  %4898 = mul i32 %4897, 2
  %4899 = add i32 0, %4898
  %4900 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4899
  %4901 = load float, float* %4900, align 4
  %4902 = mul i32 %4897, 2
  %4903 = add i32 1, %4902
  %4904 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4903
  %4905 = load float, float* %4904, align 4
  %4906 = fmul fast float %4901, %4892
  %4907 = call float @dx.op.tertiary.f32(i32 46, float %4905, float %4893, float %4906)  ; FMad(a,b,c)
  %4908 = fmul fast float %4901, %4891
  %4909 = call float @dx.op.tertiary.f32(i32 46, float %4905, float %4892, float %4908)  ; FMad(a,b,c)
  %4910 = fmul fast float %4907, %4818
  %4911 = fmul fast float %4909, %4818
  %4912 = fadd fast float %4910, %3855
  %4913 = fadd fast float %4911, %3856
  %4914 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %59, float %4912, float %4913, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4915 = extractvalue %dx.types.ResRet.f32 %4914, 0
  %4916 = extractvalue %dx.types.ResRet.f32 %4914, 1
  %4917 = extractvalue %dx.types.ResRet.f32 %4914, 2
  %4918 = extractvalue %dx.types.ResRet.f32 %4914, 3
  %4919 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 0
  store float %4915, float* %4919, align 4
  %4920 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 1
  store float %4916, float* %4920, align 4
  %4921 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 2
  store float %4917, float* %4921, align 4
  %4922 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 3
  store float %4918, float* %4922, align 4
  %4923 = fsub fast float %4915, %4820
  %4924 = fcmp fast olt float %4923, 0.000000e+00
  %4925 = select i1 %4924, float 0.000000e+00, float 1.000000e+00
  %4926 = fadd fast float %4925, %4895
  %4927 = fmul fast float %4925, %4923
  %4928 = fadd fast float %4927, %4896
  br label %4929

; <label>:4929                                    ; preds = %4929, %4894
  %4930 = phi i32 [ 1, %4894 ], [ %4941, %4929 ]
  %4931 = phi float [ %4928, %4894 ], [ %4940, %4929 ]
  %4932 = phi float [ %4926, %4894 ], [ %4938, %4929 ]
  %4933 = getelementptr [4 x float], [4 x float]* %84, i32 0, i32 %4930
  %4934 = load float, float* %4933, align 4, !tbaa !101, !noalias !137
  %4935 = fsub fast float %4934, %4820
  %4936 = fcmp fast olt float %4935, 0.000000e+00
  %4937 = select i1 %4936, float 0.000000e+00, float 1.000000e+00
  %4938 = fadd fast float %4937, %4932
  %4939 = fmul fast float %4937, %4935
  %4940 = fadd fast float %4939, %4931
  %4941 = add nuw nsw i32 %4930, 1
  %4942 = icmp eq i32 %4941, 4
  br i1 %4942, label %4943, label %4929, !llvm.loop !147

; <label>:4943                                    ; preds = %4929
  %4944 = add nuw nsw i32 %4897, 1
  %4945 = icmp eq i32 %4944, 8
  br i1 %4945, label %4946, label %4894, !llvm.loop !148

; <label>:4946                                    ; preds = %4943
  %4947 = fdiv fast float 1.000000e+00, %4938
  %4948 = fmul fast float %4947, %4940
  %4949 = fdiv fast float 1.000000e+00, %4820
  %4950 = fmul fast float %4948, %4949
  %4951 = call float @dx.op.unary.f32(i32 7, float %4950)  ; Saturate(value)
  %4952 = call float @dx.op.binary.f32(i32 35, float %4951, float 0.000000e+00)  ; FMax(a,b)
  %4953 = fmul fast float %4938, 3.125000e-02
  %4954 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  %4955 = fmul fast float %4954, 2.000000e+00
  %4956 = fadd fast float %4955, -1.000000e+00
  %4957 = fcmp fast ogt float %4956, 0.000000e+00
  %4958 = fcmp fast olt float %4956, 0.000000e+00
  %4959 = zext i1 %4957 to i32
  %4960 = zext i1 %4958 to i32
  %4961 = sub nsw i32 %4959, %4960
  %4962 = sitofp i32 %4961 to float
  %4963 = fmul fast float %4962, %4956
  %4964 = fsub fast float 1.000000e+00, %4963
  %4965 = fmul fast float %4964, %4964
  %4966 = fmul fast float %4965, %4964
  %4967 = fsub fast float %4964, %4966
  %4968 = fmul fast float %4967, %4952
  %4969 = fsub fast float 1.000000e+00, %4966
  %4970 = fsub fast float %4969, %4968
  %4971 = fmul fast float %4962, 5.000000e-01
  %4972 = fmul fast float %4971, %4970
  %4973 = fsub fast float 5.000000e-01, %4972
  br label %4974

; <label>:4974                                    ; preds = %4946, %4822, %4807
  %4975 = phi float [ 1.000000e+00, %4807 ], [ %4888, %4822 ], [ %4973, %4946 ]
  %4976 = fcmp fast ogt float %3962, 0.000000e+00
  br i1 %4976, label %4977, label %5141, !dx.controlflow.hints !150

; <label>:4977                                    ; preds = %4974
  %4978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4979 = extractvalue %dx.types.CBufRet.f32 %4978, 0
  %4980 = fadd fast float %4979, %3848
  %4981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4982 = extractvalue %dx.types.CBufRet.f32 %4981, 2
  %4983 = extractvalue %dx.types.CBufRet.f32 %4981, 3
  %4984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4985 = extractvalue %dx.types.CBufRet.f32 %4984, 0
  %4986 = call float @dx.op.binary.f32(i32 35, float %4980, float 0.000000e+00)  ; FMax(a,b)
  %4987 = fadd fast float %4986, 0x3F10000000000000
  %4988 = fcmp fast oeq float %4985, 0.000000e+00
  br i1 %4988, label %4989, label %5056

; <label>:4989                                    ; preds = %4977
  %4990 = extractvalue %dx.types.CBufRet.f32 %4981, 1
  %4991 = extractvalue %dx.types.CBufRet.f32 %4981, 0
  %4992 = fmul fast float %4991, %3840
  %4993 = fmul fast float %4990, %3844
  %4994 = fadd fast float %4992, 5.000000e-01
  %4995 = call float @dx.op.unary.f32(i32 27, float %4994)  ; Round_ni(value)
  %4996 = fadd fast float %4993, 5.000000e-01
  %4997 = call float @dx.op.unary.f32(i32 27, float %4996)  ; Round_ni(value)
  %4998 = fsub fast float %4994, %4995
  %4999 = fsub fast float %4996, %4997
  %5000 = fadd fast float %4995, -5.000000e-01
  %5001 = fadd fast float %4997, -5.000000e-01
  %5002 = fmul fast float %4998, 2.000000e+00
  %5003 = fsub fast float 3.000000e+00, %5002
  %5004 = fadd fast float %5002, 1.000000e+00
  %5005 = fsub fast float 2.000000e+00, %4998
  %5006 = bitcast float %5003 to i32
  %5007 = sub nsw i32 2129859010, %5006
  %5008 = bitcast i32 %5007 to float
  %5009 = fmul fast float %5008, %5005
  %5010 = fadd fast float %5009, -1.000000e+00
  %5011 = bitcast float %5004 to i32
  %5012 = sub nsw i32 2129859010, %5011
  %5013 = bitcast i32 %5012 to float
  %5014 = fmul fast float %5013, %4998
  %5015 = fadd fast float %5014, 1.000000e+00
  %5016 = fmul fast float %4999, 2.000000e+00
  %5017 = fsub fast float 3.000000e+00, %5016
  %5018 = fadd fast float %5016, 1.000000e+00
  %5019 = fsub fast float 2.000000e+00, %4999
  %5020 = bitcast float %5017 to i32
  %5021 = sub nsw i32 2129859010, %5020
  %5022 = bitcast i32 %5021 to float
  %5023 = fmul fast float %5022, %5019
  %5024 = fadd fast float %5023, -1.000000e+00
  %5025 = bitcast float %5018 to i32
  %5026 = sub nsw i32 2129859010, %5025
  %5027 = bitcast i32 %5026 to float
  %5028 = fmul fast float %5027, %4999
  %5029 = fadd fast float %5028, 1.000000e+00
  %5030 = fadd fast float %5010, %5000
  %5031 = fmul fast float %5030, %4982
  %5032 = fadd fast float %5024, %5001
  %5033 = fmul fast float %5032, %4983
  %5034 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %5031, float %5033, float undef, float undef, i32 0, i32 0, i32 undef, float %4987)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5035 = extractvalue %dx.types.ResRet.f32 %5034, 0
  %5036 = fmul fast float %5035, %5003
  %5037 = fadd fast float %5015, %5000
  %5038 = fmul fast float %5037, %4982
  %5039 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %5038, float %5033, float undef, float undef, i32 0, i32 0, i32 undef, float %4987)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5040 = extractvalue %dx.types.ResRet.f32 %5039, 0
  %5041 = fmul fast float %5040, %5004
  %5042 = fadd fast float %5029, %5001
  %5043 = fmul fast float %5042, %4983
  %5044 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %5031, float %5043, float undef, float undef, i32 0, i32 0, i32 undef, float %4987)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5045 = extractvalue %dx.types.ResRet.f32 %5044, 0
  %5046 = fmul fast float %5045, %5003
  %5047 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %5038, float %5043, float undef, float undef, i32 0, i32 0, i32 undef, float %4987)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5048 = extractvalue %dx.types.ResRet.f32 %5047, 0
  %5049 = fmul fast float %5048, %5004
  %5050 = fadd fast float %5049, %5046
  %5051 = fmul fast float %5050, %5018
  %5052 = fadd fast float %5041, %5036
  %5053 = fmul fast float %5052, %5017
  %5054 = fadd fast float %5053, %5051
  %5055 = fmul fast float %5054, 6.250000e-02
  br label %5141

; <label>:5056                                    ; preds = %4977
  %5057 = fmul fast float %1586, 0x401921FB60000000
  %5058 = call float @dx.op.unary.f32(i32 13, float %5057)  ; Sin(value)
  %5059 = call float @dx.op.unary.f32(i32 12, float %5057)  ; Cos(value)
  %5060 = fsub fast float -0.000000e+00, %5058
  br label %5061

; <label>:5061                                    ; preds = %5110, %5056
  %5062 = phi float [ 0.000000e+00, %5056 ], [ %5105, %5110 ]
  %5063 = phi float [ 0.000000e+00, %5056 ], [ %5107, %5110 ]
  %5064 = phi i32 [ 0, %5056 ], [ %5111, %5110 ]
  %5065 = mul i32 %5064, 2
  %5066 = add i32 0, %5065
  %5067 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5066
  %5068 = load float, float* %5067, align 4
  %5069 = mul i32 %5064, 2
  %5070 = add i32 1, %5069
  %5071 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5070
  %5072 = load float, float* %5071, align 4
  %5073 = fmul fast float %5068, %5059
  %5074 = call float @dx.op.tertiary.f32(i32 46, float %5072, float %5060, float %5073)  ; FMad(a,b,c)
  %5075 = fmul fast float %5068, %5058
  %5076 = call float @dx.op.tertiary.f32(i32 46, float %5072, float %5059, float %5075)  ; FMad(a,b,c)
  %5077 = fmul fast float %5074, %4985
  %5078 = fmul fast float %5076, %4985
  %5079 = fadd fast float %5077, %3840
  %5080 = fadd fast float %5078, %3844
  %5081 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %59, float %5079, float %5080, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5082 = extractvalue %dx.types.ResRet.f32 %5081, 0
  %5083 = extractvalue %dx.types.ResRet.f32 %5081, 1
  %5084 = extractvalue %dx.types.ResRet.f32 %5081, 2
  %5085 = extractvalue %dx.types.ResRet.f32 %5081, 3
  %5086 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 0
  store float %5082, float* %5086, align 4
  %5087 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 1
  store float %5083, float* %5087, align 4
  %5088 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 2
  store float %5084, float* %5088, align 4
  %5089 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 3
  store float %5085, float* %5089, align 4
  %5090 = fsub fast float %5082, %4987
  %5091 = fcmp fast olt float %5090, 0.000000e+00
  %5092 = select i1 %5091, float 0.000000e+00, float 1.000000e+00
  %5093 = fadd fast float %5092, %5062
  %5094 = fmul fast float %5092, %5090
  %5095 = fadd fast float %5094, %5063
  br label %5096

; <label>:5096                                    ; preds = %5096, %5061
  %5097 = phi i32 [ 1, %5061 ], [ %5108, %5096 ]
  %5098 = phi float [ %5095, %5061 ], [ %5107, %5096 ]
  %5099 = phi float [ %5093, %5061 ], [ %5105, %5096 ]
  %5100 = getelementptr [4 x float], [4 x float]* %83, i32 0, i32 %5097
  %5101 = load float, float* %5100, align 4, !tbaa !101, !noalias !137
  %5102 = fsub fast float %5101, %4987
  %5103 = fcmp fast olt float %5102, 0.000000e+00
  %5104 = select i1 %5103, float 0.000000e+00, float 1.000000e+00
  %5105 = fadd fast float %5104, %5099
  %5106 = fmul fast float %5104, %5102
  %5107 = fadd fast float %5106, %5098
  %5108 = add nuw nsw i32 %5097, 1
  %5109 = icmp eq i32 %5108, 4
  br i1 %5109, label %5110, label %5096, !llvm.loop !147

; <label>:5110                                    ; preds = %5096
  %5111 = add nuw nsw i32 %5064, 1
  %5112 = icmp eq i32 %5111, 8
  br i1 %5112, label %5113, label %5061, !llvm.loop !148

; <label>:5113                                    ; preds = %5110
  %5114 = fdiv fast float 1.000000e+00, %5105
  %5115 = fmul fast float %5114, %5107
  %5116 = fdiv fast float 1.000000e+00, %4987
  %5117 = fmul fast float %5115, %5116
  %5118 = call float @dx.op.unary.f32(i32 7, float %5117)  ; Saturate(value)
  %5119 = call float @dx.op.binary.f32(i32 35, float %5118, float 0.000000e+00)  ; FMax(a,b)
  %5120 = fmul fast float %5105, 3.125000e-02
  %5121 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5122 = fmul fast float %5121, 2.000000e+00
  %5123 = fadd fast float %5122, -1.000000e+00
  %5124 = fcmp fast ogt float %5123, 0.000000e+00
  %5125 = fcmp fast olt float %5123, 0.000000e+00
  %5126 = zext i1 %5124 to i32
  %5127 = zext i1 %5125 to i32
  %5128 = sub nsw i32 %5126, %5127
  %5129 = sitofp i32 %5128 to float
  %5130 = fmul fast float %5129, %5123
  %5131 = fsub fast float 1.000000e+00, %5130
  %5132 = fmul fast float %5131, %5131
  %5133 = fmul fast float %5132, %5131
  %5134 = fsub fast float %5131, %5133
  %5135 = fmul fast float %5134, %5119
  %5136 = fsub fast float 1.000000e+00, %5133
  %5137 = fsub fast float %5136, %5135
  %5138 = fmul fast float %5129, 5.000000e-01
  %5139 = fmul fast float %5138, %5137
  %5140 = fsub fast float 5.000000e-01, %5139
  br label %5141

; <label>:5141                                    ; preds = %5113, %4989, %4974
  %5142 = phi float [ 1.000000e+00, %4974 ], [ %5055, %4989 ], [ %5140, %5113 ]
  %5143 = fsub fast float %4808, %4641
  %5144 = fmul fast float %5143, %3903
  %5145 = fadd fast float %5144, %4641
  %5146 = fsub fast float %4975, %5145
  %5147 = fmul fast float %5146, %3934
  %5148 = fadd fast float %5147, %5145
  %5149 = fsub fast float %5142, %5148
  %5150 = fmul fast float %5149, %3962
  %5151 = fadd fast float %5150, %5148
  %5152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5153 = extractvalue %dx.types.CBufRet.f32 %5152, 2
  %5154 = fcmp fast ogt float %5153, 0.000000e+00
  br i1 %5154, label %5155, label %5195, !dx.controlflow.hints !151

; <label>:5155                                    ; preds = %5141
  %5156 = fcmp fast ugt float %5153, 0.000000e+00
  br i1 %5156, label %5157, label %5192

; <label>:5157                                    ; preds = %5155
  %5158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.f32 %5158, 0
  %5160 = extractvalue %dx.types.CBufRet.f32 %5158, 1
  %5161 = extractvalue %dx.types.CBufRet.f32 %5158, 2
  %5162 = extractvalue %dx.types.CBufRet.f32 %5158, 3
  %5163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5164 = extractvalue %dx.types.CBufRet.f32 %5163, 0
  %5165 = extractvalue %dx.types.CBufRet.f32 %5163, 1
  %5166 = extractvalue %dx.types.CBufRet.f32 %5163, 2
  %5167 = extractvalue %dx.types.CBufRet.f32 %5163, 3
  %5168 = extractvalue %dx.types.CBufRet.f32 %5152, 0
  %5169 = extractvalue %dx.types.CBufRet.f32 %5152, 1
  %5170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5171 = extractvalue %dx.types.CBufRet.f32 %5170, 0
  %5172 = extractvalue %dx.types.CBufRet.f32 %5170, 1
  %5173 = extractvalue %dx.types.CBufRet.f32 %5170, 2
  %5174 = fadd fast float %5171, %144
  %5175 = fadd fast float %5172, %145
  %5176 = fadd fast float %5173, %146
  %5177 = fmul fast float %5174, %5159
  %5178 = call float @dx.op.tertiary.f32(i32 46, float %5160, float %5175, float %5177)  ; FMad(a,b,c)
  %5179 = call float @dx.op.tertiary.f32(i32 46, float %5161, float %5176, float %5178)  ; FMad(a,b,c)
  %5180 = fadd fast float %5179, %5162
  %5181 = fmul fast float %5174, %5164
  %5182 = call float @dx.op.tertiary.f32(i32 46, float %5165, float %5175, float %5181)  ; FMad(a,b,c)
  %5183 = call float @dx.op.tertiary.f32(i32 46, float %5166, float %5176, float %5182)  ; FMad(a,b,c)
  %5184 = fadd fast float %5183, %5167
  %5185 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %55, float %5180, float %5184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5186 = extractvalue %dx.types.ResRet.f32 %5185, 0
  %5187 = fmul fast float %5186, %5169
  %5188 = fadd fast float %5187, %5168
  %5189 = call float @dx.op.unary.f32(i32 7, float %5188)  ; Saturate(value)
  %5190 = fmul fast float %5189, %5153
  %5191 = fsub fast float 1.000000e+00, %5190
  br label %5192

; <label>:5192                                    ; preds = %5157, %5155
  %5193 = phi float [ %5191, %5157 ], [ 1.000000e+00, %5155 ]
  %5194 = fmul fast float %5193, %5151
  br label %5195

; <label>:5195                                    ; preds = %5192, %5141, %3805
  %5196 = phi float [ 1.000000e+00, %3805 ], [ %5194, %5192 ], [ %5151, %5141 ]
  %5197 = call float @dx.op.binary.f32(i32 36, float %5196, float %5196)  ; FMin(a,b)
  %5198 = call float @dx.op.binary.f32(i32 36, float %5196, float %5197)  ; FMin(a,b)
  %5199 = fcmp fast ogt float %5198, 0.000000e+00
  br i1 %5199, label %5200, label %5365, !dx.controlflow.hints !152

; <label>:5200                                    ; preds = %5195
  %5201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5202 = extractvalue %dx.types.CBufRet.f32 %5201, 0
  %5203 = extractvalue %dx.types.CBufRet.f32 %5201, 1
  %5204 = extractvalue %dx.types.CBufRet.f32 %5201, 2
  %5205 = extractvalue %dx.types.CBufRet.f32 %5201, 3
  %5206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5207 = extractvalue %dx.types.CBufRet.f32 %5206, 0
  %5208 = extractvalue %dx.types.CBufRet.f32 %5206, 1
  %5209 = extractvalue %dx.types.CBufRet.f32 %5206, 2
  %5210 = extractvalue %dx.types.CBufRet.f32 %5206, 3
  %5211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5212 = extractvalue %dx.types.CBufRet.f32 %5211, 0
  %5213 = extractvalue %dx.types.CBufRet.f32 %5211, 1
  %5214 = extractvalue %dx.types.CBufRet.f32 %5211, 2
  %5215 = extractvalue %dx.types.CBufRet.f32 %5211, 3
  %5216 = fmul fast float %5202, %144
  %5217 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5203, float %5216)  ; FMad(a,b,c)
  %5218 = call float @dx.op.tertiary.f32(i32 46, float %146, float %5204, float %5217)  ; FMad(a,b,c)
  %5219 = fadd fast float %5218, %5205
  %5220 = fmul fast float %5207, %144
  %5221 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5208, float %5220)  ; FMad(a,b,c)
  %5222 = call float @dx.op.tertiary.f32(i32 46, float %146, float %5209, float %5221)  ; FMad(a,b,c)
  %5223 = fadd fast float %5222, %5210
  %5224 = fmul fast float %5212, %144
  %5225 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5213, float %5224)  ; FMad(a,b,c)
  %5226 = call float @dx.op.tertiary.f32(i32 46, float %146, float %5214, float %5225)  ; FMad(a,b,c)
  %5227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5228 = extractvalue %dx.types.CBufRet.f32 %5227, 0
  %5229 = extractvalue %dx.types.CBufRet.f32 %5227, 1
  %5230 = extractvalue %dx.types.CBufRet.f32 %5227, 3
  %5231 = fmul fast float %5230, %5219
  %5232 = fmul fast float %5230, %5223
  %5233 = fadd fast float %5231, %5228
  %5234 = fadd fast float %5232, %5229
  %5235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5236 = extractvalue %dx.types.CBufRet.f32 %5235, 0
  %5237 = extractvalue %dx.types.CBufRet.f32 %5235, 1
  %5238 = fsub fast float %5233, %5236
  %5239 = fsub fast float %5234, %5237
  %5240 = fcmp fast olt float %5238, 0.000000e+00
  %5241 = fcmp fast olt float %5239, 0.000000e+00
  %5242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5243 = extractvalue %dx.types.CBufRet.f32 %5242, 0
  %5244 = extractvalue %dx.types.CBufRet.f32 %5242, 1
  %5245 = extractvalue %dx.types.CBufRet.f32 %5242, 2
  %5246 = extractvalue %dx.types.CBufRet.f32 %5242, 3
  %5247 = select i1 %5240, float %5243, float %5245
  %5248 = select i1 %5241, float %5244, float %5246
  %5249 = fmul fast float %5247, %5238
  %5250 = fmul fast float %5248, %5239
  %5251 = call float @dx.op.unary.f32(i32 6, float %5249)  ; FAbs(value)
  %5252 = call float @dx.op.unary.f32(i32 6, float %5250)  ; FAbs(value)
  %5253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5254 = extractvalue %dx.types.CBufRet.f32 %5253, 0
  %5255 = call float @dx.op.binary.f32(i32 35, float %5251, float %5252)  ; FMax(a,b)
  %5256 = fsub fast float %5254, %5255
  %5257 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  %5258 = fcmp fast ogt float %5257, 0.000000e+00
  br i1 %5258, label %5259, label %5300, !dx.controlflow.hints !153

; <label>:5259                                    ; preds = %5200
  %5260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %58, float %5233, float %5234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5261 = extractvalue %dx.types.ResRet.f32 %5260, 1
  %5262 = fcmp fast ogt float %5261, 0.000000e+00
  br i1 %5262, label %5263, label %5295

; <label>:5263                                    ; preds = %5259
  %5264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %58, float %5233, float %5234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5265 = extractvalue %dx.types.ResRet.f32 %5264, 0
  %5266 = extractvalue %dx.types.ResRet.f32 %5264, 1
  %5267 = extractvalue %dx.types.ResRet.f32 %5264, 2
  %5268 = extractvalue %dx.types.ResRet.f32 %5264, 3
  %5269 = fsub fast float 1.000000e+00, %5215
  %5270 = fsub fast float %5269, %5226
  %5271 = fmul fast float %5270, 0x400921FB60000000
  %5272 = fadd fast float %5271, 0x3FF921FB60000000
  %5273 = call float @dx.op.unary.f32(i32 13, float %5272)  ; Sin(value)
  %5274 = fadd fast float %5273, -1.000000e+00
  %5275 = fmul fast float %5274, 0x3FD45F3060000000
  %5276 = fmul fast float %5270, 0x401921FB60000000
  %5277 = fadd fast float %5276, 0x400921FB60000000
  %5278 = call float @dx.op.unary.f32(i32 13, float %5277)  ; Sin(value)
  %5279 = fadd fast float %5278, 0x3E7777A5C0000000
  %5280 = fmul fast float %5279, 0x3FC45F3060000000
  %5281 = fmul fast float %5270, 0x4022D97C80000000
  %5282 = fadd fast float %5281, 0x4012D97C80000000
  %5283 = call float @dx.op.unary.f32(i32 13, float %5282)  ; Sin(value)
  %5284 = fadd fast float %5283, 1.000000e+00
  %5285 = fmul fast float %5284, 0x3FBB2995E0000000
  %5286 = fmul fast float %5270, 0x402921FB60000000
  %5287 = fadd fast float %5286, 0x401921FB60000000
  %5288 = call float @dx.op.unary.f32(i32 13, float %5287)  ; Sin(value)
  %5289 = fadd fast float %5288, 0xBE8777A5C0000000
  %5290 = fmul fast float %5289, 0x3FB45F3060000000
  %5291 = call float @dx.op.dot4.f32(i32 56, float %5265, float %5266, float %5267, float %5268, float %5275, float %5280, float %5285, float %5290)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5292 = fmul fast float %5291, 0xBFF7154760000000
  %5293 = call float @dx.op.unary.f32(i32 21, float %5292)  ; Exp(value)
  %5294 = call float @dx.op.unary.f32(i32 7, float %5293)  ; Saturate(value)
  br label %5295

; <label>:5295                                    ; preds = %5263, %5259
  %5296 = phi float [ %5294, %5263 ], [ 1.000000e+00, %5259 ]
  %5297 = fadd fast float %5296, -1.000000e+00
  %5298 = fmul fast float %5297, %5257
  %5299 = fadd fast float %5298, 1.000000e+00
  br label %5300

; <label>:5300                                    ; preds = %5295, %5200
  %5301 = phi float [ %5299, %5295 ], [ 1.000000e+00, %5200 ]
  %5302 = fmul fast float %5301, %5196
  %5303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5304 = extractvalue %dx.types.CBufRet.f32 %5303, 0
  %5305 = extractvalue %dx.types.CBufRet.f32 %5303, 1
  %5306 = extractvalue %dx.types.CBufRet.f32 %5303, 2
  %5307 = fadd fast float %5304, %144
  %5308 = fadd fast float %5305, %145
  %5309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5310 = extractvalue %dx.types.CBufRet.f32 %5309, 1
  %5311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5312 = extractvalue %dx.types.CBufRet.f32 %5311, 0
  %5313 = extractvalue %dx.types.CBufRet.f32 %5311, 1
  %5314 = extractvalue %dx.types.CBufRet.f32 %5311, 2
  %5315 = fsub fast float -0.000000e+00, %5307
  %5316 = fsub fast float -0.000000e+00, %5308
  %5317 = fsub fast float %2223, %5306
  %5318 = fadd fast float %5317, %5310
  %5319 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5315, float %5316, float %5318)  ; Dot3(ax,ay,az,bx,by,bz)
  %5320 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5312, float %5313, float %5314)  ; Dot3(ax,ay,az,bx,by,bz)
  %5321 = fdiv fast float 1.000000e+00, %5320
  %5322 = fmul fast float %5321, %5319
  %5323 = fmul fast float %5312, %5322
  %5324 = fmul fast float %5313, %5322
  %5325 = fadd fast float %5323, %5307
  %5326 = fadd fast float %5324, %5308
  %5327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5328 = extractvalue %dx.types.CBufRet.f32 %5327, 0
  %5329 = extractvalue %dx.types.CBufRet.f32 %5327, 1
  %5330 = fsub fast float %5325, %5328
  %5331 = fsub fast float %5326, %5329
  %5332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5333 = extractvalue %dx.types.CBufRet.f32 %5332, 2
  %5334 = extractvalue %dx.types.CBufRet.f32 %5332, 3
  %5335 = fmul fast float %5330, %5333
  %5336 = fmul fast float %5331, %5334
  %5337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5338 = extractvalue %dx.types.CBufRet.i32 %5337, 3
  %5339 = icmp eq i32 %5338, 0
  br i1 %5339, label %5345, label %5340

; <label>:5340                                    ; preds = %5300
  %5341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %57, float %5335, float %5336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5342 = extractvalue %dx.types.ResRet.f32 %5341, 0
  %5343 = extractvalue %dx.types.ResRet.f32 %5341, 1
  %5344 = extractvalue %dx.types.ResRet.f32 %5341, 2
  br label %5350

; <label>:5345                                    ; preds = %5300
  %5346 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %58, float %5335, float %5336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5347 = extractvalue %dx.types.ResRet.f32 %5346, 0
  %5348 = extractvalue %dx.types.ResRet.f32 %5346, 1
  %5349 = extractvalue %dx.types.ResRet.f32 %5346, 2
  br label %5350

; <label>:5350                                    ; preds = %5345, %5340
  %5351 = phi float [ %5342, %5340 ], [ %5347, %5345 ]
  %5352 = phi float [ %5343, %5340 ], [ %5348, %5345 ]
  %5353 = phi float [ %5344, %5340 ], [ %5349, %5345 ]
  %5354 = extractvalue %dx.types.CBufRet.f32 %5309, 2
  %5355 = fmul fast float %5354, %5351
  %5356 = extractvalue %dx.types.CBufRet.f32 %5309, 0
  %5357 = fsub fast float %5322, %5356
  %5358 = fsub fast float %5357, %5355
  %5359 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5358)  ; FMax(a,b)
  %5360 = fmul fast float %5359, %5352
  %5361 = call float @dx.op.binary.f32(i32 36, float %5353, float %5360)  ; FMin(a,b)
  %5362 = fmul fast float %5361, 0xBFF7154760000000
  %5363 = call float @dx.op.unary.f32(i32 21, float %5362)  ; Exp(value)
  %5364 = fmul fast float %5302, %5363
  br label %5365

; <label>:5365                                    ; preds = %5350, %5195
  %5366 = phi float [ %5364, %5350 ], [ %5196, %5195 ]
  %5367 = call float @dx.op.binary.f32(i32 36, float %5366, float %5366)  ; FMin(a,b)
  %5368 = call float @dx.op.binary.f32(i32 36, float %5366, float %5367)  ; FMin(a,b)
  %5369 = fcmp fast ogt float %5368, 0.000000e+00
  br i1 %5369, label %5370, label %5537, !dx.controlflow.hints !154

; <label>:5370                                    ; preds = %5365
  %5371 = bitcast i32 %2240 to float
  %5372 = fmul fast float %5366, %3817
  %5373 = fmul fast float %5366, %3818
  %5374 = fmul fast float %5366, %3819
  %5375 = fsub fast float %3806, %2127
  %5376 = fsub fast float %3807, %2128
  %5377 = fsub fast float %3808, %2129
  %5378 = call float @dx.op.dot3.f32(i32 55, float %5375, float %5376, float %5377, float %5375, float %5376, float %5377)  ; Dot3(ax,ay,az,bx,by,bz)
  %5379 = call float @dx.op.unary.f32(i32 25, float %5378)  ; Rsqrt(value)
  %5380 = fmul fast float %5379, %5375
  %5381 = fmul fast float %5379, %5376
  %5382 = fmul fast float %5379, %5377
  %5383 = call float @dx.op.dot3.f32(i32 55, float %3806, float %3807, float %3808, float %2099, float %2100, float %2101)  ; Dot3(ax,ay,az,bx,by,bz)
  %5384 = call float @dx.op.dot3.f32(i32 55, float %2224, float %2225, float %2226, float %5380, float %5381, float %5382)  ; Dot3(ax,ay,az,bx,by,bz)
  %5385 = call float @dx.op.unary.f32(i32 7, float %5383)  ; Saturate(value)
  %5386 = fmul fast float %5385, %5385
  %5387 = fmul fast float %5386, %5371
  %5388 = call float @dx.op.unary.f32(i32 7, float %5387)  ; Saturate(value)
  %5389 = fmul fast float %5388, %5385
  %5390 = call float @dx.op.dot3.f32(i32 55, float %2099, float %2100, float %2101, float %5380, float %5381, float %5382)  ; Dot3(ax,ay,az,bx,by,bz)
  %5391 = fmul fast float %5390, %5390
  %5392 = call float @dx.op.unary.f32(i32 6, float %5383)  ; FAbs(value)
  %5393 = fsub fast float 1.000000e+00, %2182
  %5394 = call float @dx.op.binary.f32(i32 35, float %5393, float 0x3F847AE140000000)  ; FMax(a,b)
  %5395 = fmul fast float %5394, %5394
  %5396 = fmul fast float %5395, %5395
  %5397 = fsub fast float 1.000000e+00, %5396
  %5398 = fmul fast float %2229, %2229
  %5399 = fmul fast float %5398, %5397
  %5400 = fadd fast float %5399, %5396
  %5401 = bitcast float %5400 to i32
  %5402 = ashr i32 %5401, 1
  %5403 = add nsw i32 %5402, 532487669
  %5404 = bitcast i32 %5403 to float
  %5405 = fadd fast float %5404, %2229
  %5406 = fmul fast float %5396, %5391
  %5407 = fsub fast float 1.000000e+00, %5391
  %5408 = fadd fast float %5407, %5406
  %5409 = fmul fast float %5392, %5392
  %5410 = fmul fast float %5409, %5397
  %5411 = fadd fast float %5410, %5396
  %5412 = bitcast float %5411 to i32
  %5413 = ashr i32 %5412, 1
  %5414 = add nsw i32 %5413, 532487669
  %5415 = bitcast i32 %5414 to float
  %5416 = fadd fast float %5415, %5392
  %5417 = fmul fast float %5408, %5408
  %5418 = fmul fast float %5417, %5405
  %5419 = fmul fast float %5418, %5416
  %5420 = fdiv fast float 0x3FF0A00000000000, %5419
  %5421 = fmul fast float %5420, %5396
  %5422 = call float @dx.op.unary.f32(i32 6, float %5384)  ; FAbs(value)
  %5423 = fsub fast float 1.000000e+00, %5422
  %5424 = bitcast float %5423 to i32
  %5425 = sitofp i32 %5424 to float
  %5426 = fmul fast float %5425, 5.000000e+00
  %5427 = fadd fast float %5426, 0xC1EFBF8940000000
  %5428 = fptosi float %5427 to i32
  %5429 = bitcast i32 %5428 to float
  %5430 = fmul fast float %5429, %3055
  %5431 = fmul fast float %5429, %3056
  %5432 = fmul fast float %5429, %3057
  %5433 = fadd fast float %5430, %2120
  %5434 = fadd fast float %5431, %2121
  %5435 = fadd fast float %5432, %2227
  %5436 = fmul fast float %5383, 9.843750e-01
  %5437 = fmul fast float %2182, 9.843750e-01
  %5438 = fadd fast float %5436, 7.812500e-03
  %5439 = fadd fast float %5437, 7.812500e-03
  %5440 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %5438, float %5439, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5441 = extractvalue %dx.types.ResRet.f32 %5440, 2
  %5442 = extractvalue %dx.types.ResRet.f32 %5440, 3
  %5443 = fmul fast float %5441, %2120
  %5444 = fmul fast float %5441, %2121
  %5445 = fmul fast float %5441, %2227
  %5446 = fadd fast float %5443, %5442
  %5447 = fadd fast float %5444, %5442
  %5448 = fadd fast float %5445, %5442
  %5449 = call float @dx.op.binary.f32(i32 35, float %5447, float %5448)  ; FMax(a,b)
  %5450 = call float @dx.op.binary.f32(i32 35, float %5446, float %5449)  ; FMax(a,b)
  %5451 = fsub fast float 1.000000e+00, %5450
  %5452 = fsub fast float -0.000000e+00, %2099
  %5453 = fsub fast float -0.000000e+00, %2100
  %5454 = fsub fast float -0.000000e+00, %2101
  %5455 = call float @dx.op.dot3.f32(i32 55, float %3806, float %3807, float %3808, float %5452, float %5453, float %5454)  ; Dot3(ax,ay,az,bx,by,bz)
  %5456 = call float @dx.op.unary.f32(i32 7, float %5455)  ; Saturate(value)
  %5457 = fmul fast float %5456, 9.843750e-01
  %5458 = fadd fast float %5457, 7.812500e-03
  %5459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %5458, float %5439, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5460 = extractvalue %dx.types.ResRet.f32 %5459, 2
  %5461 = extractvalue %dx.types.ResRet.f32 %5459, 3
  %5462 = fmul fast float %5460, %2120
  %5463 = fmul fast float %5460, %2121
  %5464 = fmul fast float %5460, %2227
  %5465 = fadd fast float %5462, %5461
  %5466 = fadd fast float %5463, %5461
  %5467 = fadd fast float %5464, %5461
  %5468 = call float @dx.op.binary.f32(i32 35, float %5466, float %5467)  ; FMax(a,b)
  %5469 = call float @dx.op.binary.f32(i32 35, float %5465, float %5468)  ; FMax(a,b)
  %5470 = fsub fast float 1.000000e+00, %5469
  %5471 = fmul fast float %2121, 0x4012D0A400000000
  %5472 = fadd fast float %5471, 0x3FDB6377A0000000
  %5473 = fmul fast float %5393, %5472
  %5474 = call float @dx.op.unary.f32(i32 7, float %5473)  ; Saturate(value)
  %5475 = fsub fast float %3806, %2234
  %5476 = fsub fast float %3807, %2235
  %5477 = fsub fast float %3808, %2236
  %5478 = call float @dx.op.dot3.f32(i32 55, float %5475, float %5476, float %5477, float %5475, float %5476, float %5477)  ; Dot3(ax,ay,az,bx,by,bz)
  %5479 = call float @dx.op.unary.f32(i32 25, float %5478)  ; Rsqrt(value)
  %5480 = fmul fast float %5479, %5475
  %5481 = fmul fast float %5479, %5476
  %5482 = fmul fast float %5479, %5477
  %5483 = call float @dx.op.dot3.f32(i32 55, float %5452, float %5453, float %5454, float %5480, float %5481, float %5482)  ; Dot3(ax,ay,az,bx,by,bz)
  %5484 = fmul fast float %5483, %5483
  %5485 = call float @dx.op.unary.f32(i32 6, float %5456)  ; FAbs(value)
  %5486 = call float @dx.op.binary.f32(i32 35, float %5474, float 0x3F847AE140000000)  ; FMax(a,b)
  %5487 = fmul fast float %5486, %5486
  %5488 = fmul fast float %5487, %5487
  %5489 = fsub fast float 1.000000e+00, %5488
  %5490 = fmul fast float %5398, %5489
  %5491 = fadd fast float %5490, %5488
  %5492 = bitcast float %5491 to i32
  %5493 = ashr i32 %5492, 1
  %5494 = add nsw i32 %5493, 532487669
  %5495 = bitcast i32 %5494 to float
  %5496 = fadd fast float %5495, %2229
  %5497 = fmul fast float %5488, %5484
  %5498 = fsub fast float 1.000000e+00, %5484
  %5499 = fadd fast float %5498, %5497
  %5500 = fmul fast float %5485, %5485
  %5501 = fmul fast float %5500, %5489
  %5502 = fadd fast float %5501, %5488
  %5503 = bitcast float %5502 to i32
  %5504 = ashr i32 %5503, 1
  %5505 = add nsw i32 %5504, 532487669
  %5506 = bitcast i32 %5505 to float
  %5507 = fadd fast float %5506, %5485
  %5508 = fmul fast float %5499, %5499
  %5509 = fmul fast float %5508, %5496
  %5510 = fmul fast float %5509, %5507
  %5511 = fdiv fast float 0x3FF0A00000000000, %5510
  %5512 = fmul fast float %5511, %5488
  %5513 = fmul fast float %5470, %5456
  %5514 = fmul fast float %5513, %5512
  %5515 = fmul fast float %5421, %5389
  %5516 = fmul fast float %5515, %5433
  %5517 = fmul fast float %5515, %5434
  %5518 = fmul fast float %5515, %5435
  %5519 = fadd fast float %5514, %5516
  %5520 = fadd fast float %5514, %5517
  %5521 = fadd fast float %5514, %5518
  %5522 = fmul fast float %5389, %5372
  %5523 = fmul fast float %5522, %5451
  %5524 = fmul fast float %5389, %5373
  %5525 = fmul fast float %5524, %5451
  %5526 = fmul fast float %5389, %5374
  %5527 = fmul fast float %5526, %5451
  %5528 = fadd fast float %5523, %3793
  %5529 = fadd fast float %5525, %3794
  %5530 = fadd fast float %5527, %3795
  %5531 = fmul fast float %5519, %5372
  %5532 = fmul fast float %5520, %5373
  %5533 = fmul fast float %5521, %5374
  %5534 = fadd fast float %5531, %3799
  %5535 = fadd fast float %5532, %3800
  %5536 = fadd fast float %5533, %3801
  br label %5537

; <label>:5537                                    ; preds = %5370, %5365, %3789
  %5538 = phi float [ %5366, %5370 ], [ 0.000000e+00, %3789 ], [ 0.000000e+00, %5365 ]
  %5539 = phi float [ %5534, %5370 ], [ %3799, %3789 ], [ %3799, %5365 ]
  %5540 = phi float [ %5535, %5370 ], [ %3800, %3789 ], [ %3800, %5365 ]
  %5541 = phi float [ %5536, %5370 ], [ %3801, %3789 ], [ %3801, %5365 ]
  %5542 = phi float [ %5528, %5370 ], [ %3793, %3789 ], [ %3793, %5365 ]
  %5543 = phi float [ %5529, %5370 ], [ %3794, %3789 ], [ %3794, %5365 ]
  %5544 = phi float [ %5530, %5370 ], [ %3795, %3789 ], [ %3795, %5365 ]
  %5545 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5546 = extractvalue %dx.types.CBufRet.i32 %5545, 0
  %5547 = icmp eq i32 %5546, 0
  br i1 %5547, label %6143, label %5548

; <label>:5548                                    ; preds = %5537
  %5549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5550 = extractvalue %dx.types.CBufRet.f32 %5549, 2
  %5551 = extractvalue %dx.types.CBufRet.f32 %5549, 3
  %5552 = fmul fast float %5550, %89
  %5553 = fmul fast float %5551, %90
  %5554 = fptoui float %5552 to i32
  %5555 = fptoui float %5553 to i32
  %5556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5557 = extractvalue %dx.types.CBufRet.f32 %5556, 0
  %5558 = extractvalue %dx.types.CBufRet.f32 %5556, 2
  %5559 = extractvalue %dx.types.CBufRet.f32 %5556, 3
  %5560 = fadd fast float %78, -4.000000e+00
  %5561 = call float @dx.op.binary.f32(i32 35, float %5560, float 0.000000e+00)  ; FMax(a,b)
  %5562 = fadd fast float %5561, %5557
  %5563 = fmul fast float %5562, %5558
  %5564 = call float @dx.op.unary.f32(i32 23, float %5563)  ; Log(value)
  %5565 = fmul fast float %5564, %5559
  %5566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5567 = extractvalue %dx.types.CBufRet.f32 %5566, 2
  %5568 = fmul fast float %5565, %5567
  %5569 = call float @dx.op.unary.f32(i32 7, float %5568)  ; Saturate(value)
  %5570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5571 = extractvalue %dx.types.CBufRet.i32 %5570, 1
  %5572 = add i32 %5571, -1
  %5573 = uitofp i32 %5571 to float
  %5574 = fmul fast float %5573, %5569
  %5575 = fptoui float %5574 to i32
  %5576 = call i32 @dx.op.binary.i32(i32 40, i32 %5575, i32 %5572)  ; UMin(a,b)
  %5577 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5578 = extractvalue %dx.types.CBufRet.i32 %5577, 2
  %5579 = extractvalue %dx.types.CBufRet.i32 %5577, 3
  %5580 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5555, i32 %5578, i32 %5554)  ; UMad(a,b,c)
  %5581 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5576, i32 %5579, i32 %5580)  ; UMad(a,b,c)
  %5582 = add nsw i32 %5546, -1
  %5583 = call i32 @dx.op.binary.i32(i32 37, i32 %5582, i32 0)  ; IMax(a,b)
  %5584 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %5585 = fptoui float %5584 to i32
  %5586 = lshr i32 %5585, 5
  %5587 = call i32 @dx.op.binary.i32(i32 40, i32 %5586, i32 8191)  ; UMin(a,b)
  %5588 = shl i32 %5587, 2
  %5589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5588, i32 undef)  ; BufferLoad(srv,index,wot)
  %5590 = extractvalue %dx.types.ResRet.i32 %5589, 0
  %5591 = lshr i32 %5590, 16
  %5592 = and i32 %5590, 65535
  %5593 = lshr i32 %5590, 21
  %5594 = lshr i32 %5592, 5
  %5595 = call i32 @dx.op.binary.i32(i32 40, i32 %5594, i32 %5583)  ; UMin(a,b)
  %5596 = icmp ugt i32 %5593, %5595
  br i1 %5596, label %6143, label %5597

; <label>:5597                                    ; preds = %5548
  br label %5598

; <label>:5598                                    ; preds = %6133, %5597
  %5599 = phi i32 [ %6140, %6133 ], [ %5593, %5597 ]
  %5600 = phi float [ %6134, %6133 ], [ %5539, %5597 ]
  %5601 = phi float [ %6135, %6133 ], [ %5540, %5597 ]
  %5602 = phi float [ %6136, %6133 ], [ %5541, %5597 ]
  %5603 = phi float [ %6137, %6133 ], [ %5542, %5597 ]
  %5604 = phi float [ %6138, %6133 ], [ %5543, %5597 ]
  %5605 = phi float [ %6139, %6133 ], [ %5544, %5597 ]
  %5606 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5607 = extractvalue %dx.types.CBufRet.i32 %5606, 0
  %5608 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5581, i32 %5607, i32 %5599)  ; UMad(a,b,c)
  %5609 = shl i32 %5608, 2
  %5610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5609, i32 undef)  ; BufferLoad(srv,index,wot)
  %5611 = extractvalue %dx.types.ResRet.i32 %5610, 0
  %5612 = shl i32 %5599, 5
  %5613 = sub nsw i32 %5591, %5612
  %5614 = call i32 @dx.op.binary.i32(i32 37, i32 %5613, i32 0)  ; IMax(a,b)
  %5615 = call i32 @dx.op.binary.i32(i32 38, i32 %5614, i32 31)  ; IMin(a,b)
  %5616 = sub nsw i32 1, %5591
  %5617 = add nsw i32 %5616, %5592
  %5618 = call i32 @dx.op.binary.i32(i32 37, i32 %5617, i32 0)  ; IMax(a,b)
  %5619 = call i32 @dx.op.binary.i32(i32 38, i32 %5618, i32 32)  ; IMin(a,b)
  %5620 = and i32 %5619, 31
  %5621 = shl i32 -1, %5620
  %5622 = xor i32 %5621, -1
  %5623 = and i32 %5615, 31
  %5624 = shl i32 %5622, %5623
  %5625 = icmp eq i32 %5619, 32
  %5626 = select i1 %5625, i32 -1, i32 %5624
  %5627 = and i32 %5626, %5611
  %5628 = icmp eq i32 %5627, 0
  br i1 %5628, label %6133, label %5629

; <label>:5629                                    ; preds = %5598
  br label %5630

; <label>:5630                                    ; preds = %5765, %5629
  %5631 = phi i32 [ %5642, %5765 ], [ %5627, %5629 ]
  %5632 = phi float [ %5766, %5765 ], [ %5600, %5629 ]
  %5633 = phi float [ %5767, %5765 ], [ %5601, %5629 ]
  %5634 = phi float [ %5768, %5765 ], [ %5602, %5629 ]
  %5635 = phi float [ %5769, %5765 ], [ %5603, %5629 ]
  %5636 = phi float [ %5770, %5765 ], [ %5604, %5629 ]
  %5637 = phi float [ %5771, %5765 ], [ %5605, %5629 ]
  %5638 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5631)  ; FirstbitLo(value)
  %5639 = add i32 %5638, %5612
  %5640 = and i32 %5638, 31
  %5641 = shl i32 1, %5640
  %5642 = xor i32 %5641, %5631
  %5643 = mul i32 %5639, 112
  %5644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %5643, i32 undef)  ; BufferLoad(srv,index,wot)
  %5645 = extractvalue %dx.types.ResRet.f32 %5644, 0
  %5646 = extractvalue %dx.types.ResRet.f32 %5644, 1
  %5647 = extractvalue %dx.types.ResRet.f32 %5644, 2
  %5648 = or i32 %5643, 12
  %5649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %5648, i32 undef)  ; BufferLoad(srv,index,wot)
  %5650 = extractvalue %dx.types.ResRet.f32 %5649, 0
  %5651 = add i32 %5643, 16
  %5652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %5651, i32 undef)  ; BufferLoad(srv,index,wot)
  %5653 = extractvalue %dx.types.ResRet.f32 %5652, 0
  %5654 = extractvalue %dx.types.ResRet.f32 %5652, 1
  %5655 = extractvalue %dx.types.ResRet.f32 %5652, 2
  %5656 = add i32 %5643, 28
  %5657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5656, i32 undef)  ; BufferLoad(srv,index,wot)
  %5658 = extractvalue %dx.types.ResRet.i32 %5657, 0
  %5659 = add i32 %5643, 44
  %5660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %5659, i32 undef)  ; BufferLoad(srv,index,wot)
  %5661 = extractvalue %dx.types.ResRet.f32 %5660, 0
  %5662 = add i32 %5643, 48
  %5663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %5662, i32 undef)  ; BufferLoad(srv,index,wot)
  %5664 = extractvalue %dx.types.ResRet.f32 %5663, 0
  %5665 = extractvalue %dx.types.ResRet.f32 %5663, 1
  %5666 = extractvalue %dx.types.ResRet.f32 %5663, 2
  %5667 = extractvalue %dx.types.ResRet.f32 %5663, 3
  %5668 = add i32 %5643, 64
  %5669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %5668, i32 undef)  ; BufferLoad(srv,index,wot)
  %5670 = extractvalue %dx.types.ResRet.f32 %5669, 0
  %5671 = extractvalue %dx.types.ResRet.f32 %5669, 1
  %5672 = extractvalue %dx.types.ResRet.f32 %5669, 2
  %5673 = extractvalue %dx.types.ResRet.f32 %5669, 3
  %5674 = add i32 %5643, 80
  %5675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %5674, i32 undef)  ; BufferLoad(srv,index,wot)
  %5676 = extractvalue %dx.types.ResRet.f32 %5675, 1
  %5677 = extractvalue %dx.types.ResRet.f32 %5675, 2
  %5678 = add i32 %5643, 92
  %5679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5678, i32 undef)  ; BufferLoad(srv,index,wot)
  %5680 = extractvalue %dx.types.ResRet.i32 %5679, 0
  %5681 = call float @dx.op.dot3.f32(i32 55, float %5645, float %5646, float %5647, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5682 = select i1 %2222, float %5676, float %5645
  %5683 = select i1 %2222, float %5681, float %5646
  %5684 = select i1 %2222, float %5677, float %5647
  %5685 = and i32 %5680, 65535
  %5686 = uitofp i32 %5685 to float
  %5687 = lshr i32 %5680, 16
  %5688 = uitofp i32 %5687 to float
  %5689 = and i32 %5658, 65535
  %5690 = and i32 %5658, 50331648
  %5691 = icmp slt i32 %5658, 0
  %5692 = icmp eq i32 %5690, 33554432
  %5693 = fsub fast float %5664, %144
  %5694 = fsub fast float %5665, %145
  %5695 = fsub fast float %5666, %146
  %5696 = call float @dx.op.dot3.f32(i32 55, float %5693, float %5694, float %5695, float %5693, float %5694, float %5695)  ; Dot3(ax,ay,az,bx,by,bz)
  %5697 = call float @dx.op.unary.f32(i32 24, float %5696)  ; Sqrt(value)
  %5698 = fdiv fast float 1.000000e+00, %5697
  %5699 = fmul fast float %5698, %5693
  %5700 = fmul fast float %5698, %5694
  %5701 = fmul fast float %5698, %5695
  %5702 = fadd fast float %5697, %5650
  %5703 = fdiv fast float 1.000000e+00, %5702
  %5704 = fmul float %5661, %5703
  %5705 = fmul float %5704, %5704
  %5706 = call float @dx.op.unary.f32(i32 7, float %5705)  ; Saturate(value)
  br i1 %5692, label %5707, label %5728

; <label>:5707                                    ; preds = %5630
  %5708 = fmul fast float %5672, %5653
  %5709 = fmul fast float %5672, %5654
  %5710 = fmul fast float %5672, %5655
  %5711 = fadd fast float %5693, %5708
  %5712 = fadd fast float %5694, %5709
  %5713 = fadd fast float %5695, %5710
  %5714 = call float @dx.op.dot3.f32(i32 55, float %5711, float %5712, float %5713, float %5711, float %5712, float %5713)  ; Dot3(ax,ay,az,bx,by,bz)
  %5715 = call float @dx.op.unary.f32(i32 25, float %5714)  ; Rsqrt(value)
  %5716 = fmul fast float %5715, %5711
  %5717 = fmul fast float %5715, %5712
  %5718 = fmul fast float %5715, %5713
  %5719 = fsub fast float %144, %5664
  %5720 = fsub fast float %145, %5665
  %5721 = fsub fast float %146, %5666
  %5722 = fsub fast float -0.000000e+00, %5719
  %5723 = fsub fast float -0.000000e+00, %5720
  %5724 = fsub fast float -0.000000e+00, %5721
  %5725 = call float @dx.op.dot3.f32(i32 55, float %5722, float %5723, float %5724, float %5653, float %5654, float %5655)  ; Dot3(ax,ay,az,bx,by,bz)
  %5726 = fcmp fast ogt float %5725, 0.000000e+00
  %5727 = uitofp i1 %5726 to float
  br label %5728

; <label>:5728                                    ; preds = %5707, %5630
  %5729 = phi float [ %5727, %5707 ], [ 1.000000e+00, %5630 ]
  %5730 = phi float [ %5716, %5707 ], [ %5699, %5630 ]
  %5731 = phi float [ %5717, %5707 ], [ %5700, %5630 ]
  %5732 = phi float [ %5718, %5707 ], [ %5701, %5630 ]
  %5733 = call float @dx.op.dot3.f32(i32 55, float %5653, float %5654, float %5655, float %5730, float %5731, float %5732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5734 = fmul fast float %5733, %5733
  %5735 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  %5736 = fsub fast float 1.000000e+00, %5735
  %5737 = fmul fast float %5736, 5.000000e-01
  %5738 = fcmp fast ogt float %5733, 0.000000e+00
  %5739 = fsub fast float 1.000000e+00, %5737
  %5740 = select i1 %5738, float %5737, float %5739
  %5741 = fmul fast float %5740, %5688
  %5742 = fadd fast float %5741, %5686
  %5743 = fmul fast float %5742, 0x3EF0001000000000
  %5744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %58, float %5743, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5745 = extractvalue %dx.types.ResRet.f32 %5744, 0
  %5746 = fmul fast float %5733, %5670
  %5747 = fadd fast float %5746, %5671
  %5748 = call float @dx.op.unary.f32(i32 7, float %5747)  ; Saturate(value)
  %5749 = select i1 %5692, float 1.000000e+00, float %5748
  %5750 = select i1 %5692, float %5748, float 1.000000e+00
  %5751 = fmul fast float %5697, %5667
  %5752 = fsub fast float 1.000000e+00, %5751
  %5753 = fmul fast float %5752, %5673
  %5754 = call float @dx.op.unary.f32(i32 7, float %5753)  ; Saturate(value)
  %5755 = fmul fast float %5754, %5750
  %5756 = fmul fast float %5755, 2.000000e+00
  %5757 = fsub fast float 3.000000e+00, %5756
  %5758 = fmul fast float %5745, %5729
  %5759 = fmul fast float %5755, %5755
  %5760 = fmul fast float %5759, %5758
  %5761 = fmul fast float %5760, %5757
  %5762 = call float @dx.op.binary.f32(i32 36, float %5761, float %5761)  ; FMin(a,b)
  %5763 = call float @dx.op.binary.f32(i32 36, float %5761, float %5762)  ; FMin(a,b)
  %5764 = fcmp fast ogt float %5763, 0.000000e+00
  br i1 %5764, label %5773, label %5765, !dx.controlflow.hints !155

; <label>:5765                                    ; preds = %6106, %5912, %5728
  %5766 = phi float [ %5632, %5912 ], [ %5632, %5728 ], [ %6129, %6106 ]
  %5767 = phi float [ %5633, %5912 ], [ %5633, %5728 ], [ %6130, %6106 ]
  %5768 = phi float [ %5634, %5912 ], [ %5634, %5728 ], [ %6131, %6106 ]
  %5769 = phi float [ %5635, %5912 ], [ %5635, %5728 ], [ %6123, %6106 ]
  %5770 = phi float [ %5636, %5912 ], [ %5636, %5728 ], [ %6124, %6106 ]
  %5771 = phi float [ %5637, %5912 ], [ %5637, %5728 ], [ %6125, %6106 ]
  %5772 = icmp eq i32 %5631, %5641
  br i1 %5772, label %6132, label %5630

; <label>:5773                                    ; preds = %5728
  %5774 = icmp eq i32 %5689, 255
  br i1 %5774, label %5912, label %5775, !dx.controlflow.hints !156

; <label>:5775                                    ; preds = %5773
  %5776 = mul nuw nsw i32 %5689, 176
  %5777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5776, i32 undef)  ; BufferLoad(srv,index,wot)
  %5778 = extractvalue %dx.types.ResRet.f32 %5777, 0
  %5779 = extractvalue %dx.types.ResRet.f32 %5777, 1
  %5780 = extractvalue %dx.types.ResRet.f32 %5777, 2
  %5781 = extractvalue %dx.types.ResRet.f32 %5777, 3
  %5782 = add nuw nsw i32 %5776, 16
  %5783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5782, i32 undef)  ; BufferLoad(srv,index,wot)
  %5784 = extractvalue %dx.types.ResRet.f32 %5783, 0
  %5785 = extractvalue %dx.types.ResRet.f32 %5783, 1
  %5786 = add nuw nsw i32 %5776, 32
  %5787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5786, i32 undef)  ; BufferLoad(srv,index,wot)
  %5788 = extractvalue %dx.types.ResRet.f32 %5787, 0
  %5789 = extractvalue %dx.types.ResRet.f32 %5787, 1
  %5790 = add nuw nsw i32 %5776, 48
  %5791 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5790, i32 undef)  ; BufferLoad(srv,index,wot)
  %5792 = extractvalue %dx.types.ResRet.f32 %5791, 0
  %5793 = extractvalue %dx.types.ResRet.f32 %5791, 1
  %5794 = extractvalue %dx.types.ResRet.f32 %5791, 2
  %5795 = extractvalue %dx.types.ResRet.f32 %5791, 3
  %5796 = add nuw nsw i32 %5776, 64
  %5797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5796, i32 undef)  ; BufferLoad(srv,index,wot)
  %5798 = extractvalue %dx.types.ResRet.f32 %5797, 0
  %5799 = extractvalue %dx.types.ResRet.f32 %5797, 1
  %5800 = extractvalue %dx.types.ResRet.f32 %5797, 2
  %5801 = extractvalue %dx.types.ResRet.f32 %5797, 3
  %5802 = add nuw nsw i32 %5776, 80
  %5803 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5802, i32 undef)  ; BufferLoad(srv,index,wot)
  %5804 = extractvalue %dx.types.ResRet.f32 %5803, 0
  %5805 = extractvalue %dx.types.ResRet.f32 %5803, 1
  %5806 = extractvalue %dx.types.ResRet.f32 %5803, 2
  %5807 = extractvalue %dx.types.ResRet.f32 %5803, 3
  %5808 = add nuw nsw i32 %5776, 96
  %5809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5808, i32 undef)  ; BufferLoad(srv,index,wot)
  %5810 = extractvalue %dx.types.ResRet.f32 %5809, 0
  %5811 = extractvalue %dx.types.ResRet.f32 %5809, 1
  %5812 = extractvalue %dx.types.ResRet.f32 %5809, 2
  %5813 = extractvalue %dx.types.ResRet.f32 %5809, 3
  %5814 = bitcast float %5785 to i32
  %5815 = fmul fast float %5792, %144
  %5816 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5798, float %5815)  ; FMad(a,b,c)
  %5817 = call float @dx.op.tertiary.f32(i32 46, float %146, float %5804, float %5816)  ; FMad(a,b,c)
  %5818 = fadd fast float %5817, %5810
  %5819 = fmul fast float %5793, %144
  %5820 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5799, float %5819)  ; FMad(a,b,c)
  %5821 = call float @dx.op.tertiary.f32(i32 46, float %146, float %5805, float %5820)  ; FMad(a,b,c)
  %5822 = fadd fast float %5821, %5811
  %5823 = fmul fast float %5794, %144
  %5824 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5800, float %5823)  ; FMad(a,b,c)
  %5825 = call float @dx.op.tertiary.f32(i32 46, float %146, float %5806, float %5824)  ; FMad(a,b,c)
  %5826 = fadd fast float %5825, %5812
  %5827 = fmul fast float %5795, %144
  %5828 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5801, float %5827)  ; FMad(a,b,c)
  %5829 = call float @dx.op.tertiary.f32(i32 46, float %146, float %5807, float %5828)  ; FMad(a,b,c)
  %5830 = fadd fast float %5829, %5813
  %5831 = fdiv fast float %5818, %5830
  %5832 = fdiv fast float %5822, %5830
  %5833 = fdiv fast float %5826, %5830
  %5834 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5833)  ; FMax(a,b)
  %5835 = fmul fast float %1586, 0x401921FB60000000
  %5836 = call float @dx.op.unary.f32(i32 13, float %5835)  ; Sin(value)
  %5837 = call float @dx.op.unary.f32(i32 12, float %5835)  ; Cos(value)
  %5838 = fmul fast float %5837, %5789
  %5839 = call float @dx.op.tertiary.f32(i32 46, float %5836, float %5789, float 0.000000e+00)  ; FMad(a,b,c)
  %5840 = fmul fast float %5789, %5836
  %5841 = fsub fast float -0.000000e+00, %5840
  %5842 = call float @dx.op.tertiary.f32(i32 46, float %5837, float %5789, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5843

; <label>:5843                                    ; preds = %5843, %5775
  %5844 = phi float [ 0.000000e+00, %5775 ], [ %5876, %5843 ]
  %5845 = phi float [ 0.000000e+00, %5775 ], [ %5878, %5843 ]
  %5846 = phi i32 [ 0, %5775 ], [ %5879, %5843 ]
  %5847 = mul i32 %5846, 2
  %5848 = add i32 0, %5847
  %5849 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5848
  %5850 = load float, float* %5849, align 4
  %5851 = mul i32 %5846, 2
  %5852 = add i32 1, %5851
  %5853 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5852
  %5854 = load float, float* %5853, align 4
  %5855 = fmul fast float %5838, %5850
  %5856 = call float @dx.op.tertiary.f32(i32 46, float %5854, float %5841, float %5855)  ; FMad(a,b,c)
  %5857 = fmul fast float %5850, %5839
  %5858 = call float @dx.op.tertiary.f32(i32 46, float %5854, float %5842, float %5857)  ; FMad(a,b,c)
  %5859 = fadd fast float %5856, %5831
  %5860 = fadd fast float %5858, %5832
  %5861 = fmul fast float %5859, %5784
  %5862 = fmul fast float %5860, %5784
  %5863 = call float @dx.op.binary.f32(i32 35, float %5861, float %5780)  ; FMax(a,b)
  %5864 = call float @dx.op.binary.f32(i32 35, float %5862, float %5780)  ; FMax(a,b)
  %5865 = call float @dx.op.binary.f32(i32 36, float %5863, float %5781)  ; FMin(a,b)
  %5866 = call float @dx.op.binary.f32(i32 36, float %5864, float %5781)  ; FMin(a,b)
  %5867 = fadd fast float %5865, %5778
  %5868 = fadd fast float %5866, %5779
  %5869 = uitofp i32 %5814 to float
  %5870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %59, float %5867, float %5868, float %5869, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5871 = extractvalue %dx.types.ResRet.f32 %5870, 0
  %5872 = fsub fast float %5871, %5834
  %5873 = fsub fast float %5872, %5788
  %5874 = fcmp fast ogt float %5873, 0.000000e+00
  %5875 = select i1 %5874, float 1.000000e+00, float 0.000000e+00
  %5876 = fadd fast float %5875, %5844
  %5877 = select i1 %5874, float %5873, float 0.000000e+00
  %5878 = fadd fast float %5877, %5845
  %5879 = add nuw nsw i32 %5846, 1
  %5880 = icmp eq i32 %5879, 8
  br i1 %5880, label %5881, label %5843

; <label>:5881                                    ; preds = %5843
  %5882 = fdiv fast float 1.000000e+00, %5876
  %5883 = fmul fast float %5882, %5878
  %5884 = fdiv fast float 1.000000e+00, %5834
  %5885 = fmul fast float %5883, %5884
  %5886 = call float @dx.op.unary.f32(i32 7, float %5885)  ; Saturate(value)
  %5887 = call float @dx.op.binary.f32(i32 35, float %5886, float 0.000000e+00)  ; FMax(a,b)
  %5888 = fmul fast float %5876, 1.250000e-01
  %5889 = call float @dx.op.unary.f32(i32 7, float %5888)  ; Saturate(value)
  %5890 = fmul fast float %5889, 2.000000e+00
  %5891 = fadd fast float %5890, -1.000000e+00
  %5892 = fcmp fast ogt float %5891, 0.000000e+00
  %5893 = fcmp fast olt float %5891, 0.000000e+00
  %5894 = zext i1 %5892 to i32
  %5895 = zext i1 %5893 to i32
  %5896 = sub nsw i32 %5894, %5895
  %5897 = sitofp i32 %5896 to float
  %5898 = fmul fast float %5897, %5891
  %5899 = fsub fast float 1.000000e+00, %5898
  %5900 = fmul fast float %5899, %5899
  %5901 = fmul fast float %5900, %5899
  %5902 = fsub fast float %5899, %5901
  %5903 = fmul fast float %5902, %5887
  %5904 = fsub fast float 1.000000e+00, %5901
  %5905 = fsub fast float %5904, %5903
  %5906 = fmul fast float %5897, 5.000000e-01
  %5907 = fmul fast float %5906, %5905
  %5908 = fsub fast float -5.000000e-01, %5907
  %5909 = fmul fast float %5908, %5749
  %5910 = fadd fast float %5909, 1.000000e+00
  %5911 = fmul fast float %5910, %5761
  br label %5912

; <label>:5912                                    ; preds = %5881, %5773
  %5913 = phi float [ %5911, %5881 ], [ %5761, %5773 ]
  %5914 = call float @dx.op.binary.f32(i32 36, float %5913, float %5913)  ; FMin(a,b)
  %5915 = call float @dx.op.binary.f32(i32 36, float %5913, float %5914)  ; FMin(a,b)
  %5916 = fcmp fast ogt float %5915, 0.000000e+00
  br i1 %5916, label %5917, label %5765, !dx.controlflow.hints !157

; <label>:5917                                    ; preds = %5912
  %5918 = bitcast i32 %2240 to float
  %5919 = fmul fast float %5913, %5682
  %5920 = fmul fast float %5913, %5683
  %5921 = fmul fast float %5913, %5684
  %5922 = fsub fast float %5699, %2127
  %5923 = fsub fast float %5700, %2128
  %5924 = fsub fast float %5701, %2129
  %5925 = call float @dx.op.dot3.f32(i32 55, float %5922, float %5923, float %5924, float %5922, float %5923, float %5924)  ; Dot3(ax,ay,az,bx,by,bz)
  %5926 = call float @dx.op.unary.f32(i32 25, float %5925)  ; Rsqrt(value)
  %5927 = fmul fast float %5926, %5922
  %5928 = fmul fast float %5926, %5923
  %5929 = fmul fast float %5926, %5924
  %5930 = call float @dx.op.dot3.f32(i32 55, float %5699, float %5700, float %5701, float %2099, float %2100, float %2101)  ; Dot3(ax,ay,az,bx,by,bz)
  %5931 = call float @dx.op.dot3.f32(i32 55, float %2224, float %2225, float %2226, float %5927, float %5928, float %5929)  ; Dot3(ax,ay,az,bx,by,bz)
  %5932 = call float @dx.op.unary.f32(i32 7, float %5930)  ; Saturate(value)
  %5933 = fmul fast float %5932, %5706
  %5934 = fmul fast float %5932, %5932
  %5935 = fmul fast float %5934, %5918
  %5936 = call float @dx.op.unary.f32(i32 7, float %5935)  ; Saturate(value)
  %5937 = fmul fast float %5933, %5936
  %5938 = bitcast float %5696 to i32
  %5939 = ashr i32 %5938, 1
  %5940 = sub nsw i32 1597463007, %5939
  %5941 = bitcast i32 %5940 to float
  %5942 = fmul fast float %5941, %5693
  %5943 = fmul fast float %5941, %5694
  %5944 = fmul fast float %5941, %5695
  %5945 = fsub fast float %5942, %2127
  %5946 = fsub fast float %5943, %2128
  %5947 = fsub fast float %5944, %2129
  %5948 = call float @dx.op.dot3.f32(i32 55, float %5945, float %5946, float %5947, float %5945, float %5946, float %5947)  ; Dot3(ax,ay,az,bx,by,bz)
  %5949 = call float @dx.op.unary.f32(i32 25, float %5948)  ; Rsqrt(value)
  %5950 = fmul fast float %5945, %5949
  %5951 = fmul fast float %5946, %5949
  %5952 = fmul fast float %5947, %5949
  %5953 = call float @dx.op.dot3.f32(i32 55, float %2099, float %2100, float %2101, float %5950, float %5951, float %5952)  ; Dot3(ax,ay,az,bx,by,bz)
  %5954 = fmul fast float %5953, %5953
  %5955 = call float @dx.op.unary.f32(i32 6, float %5930)  ; FAbs(value)
  %5956 = fsub fast float 1.000000e+00, %2182
  %5957 = call float @dx.op.binary.f32(i32 35, float %5956, float 0x3F847AE140000000)  ; FMax(a,b)
  %5958 = fmul fast float %5957, %5957
  %5959 = fmul fast float %5958, %5958
  %5960 = fsub fast float 1.000000e+00, %5959
  %5961 = fmul fast float %2229, %2229
  %5962 = fmul fast float %5961, %5960
  %5963 = fadd fast float %5962, %5959
  %5964 = bitcast float %5963 to i32
  %5965 = ashr i32 %5964, 1
  %5966 = add nsw i32 %5965, 532487669
  %5967 = bitcast i32 %5966 to float
  %5968 = fadd fast float %5967, %2229
  %5969 = fmul fast float %5959, %5954
  %5970 = fsub fast float 1.000000e+00, %5954
  %5971 = fadd fast float %5970, %5969
  %5972 = fmul fast float %5955, %5955
  %5973 = fmul fast float %5972, %5960
  %5974 = fadd fast float %5973, %5959
  %5975 = bitcast float %5974 to i32
  %5976 = ashr i32 %5975, 1
  %5977 = add nsw i32 %5976, 532487669
  %5978 = bitcast i32 %5977 to float
  %5979 = fadd fast float %5978, %5955
  %5980 = fmul fast float %5971, %5971
  %5981 = fmul fast float %5980, %5968
  %5982 = fmul fast float %5981, %5979
  %5983 = fdiv fast float 1.000000e+00, %5982
  %5984 = bitcast float %5959 to i32
  %5985 = sitofp i32 %5984 to float
  %5986 = fmul fast float %5985, 0x3FE7F73180000000
  %5987 = fadd fast float %5986, 0x41AFE27C40000000
  %5988 = fptosi float %5987 to i32
  %5989 = bitcast i32 %5988 to float
  %5990 = fmul fast float %5661, 0x3FD80E9D60000000
  %5991 = fmul fast float %5990, %5941
  %5992 = fadd fast float %5989, %5991
  %5993 = bitcast float %5992 to i32
  %5994 = sub nsw i32 2129859010, %5993
  %5995 = bitcast i32 %5994 to float
  %5996 = fmul fast float %5959, %5983
  %5997 = fmul fast float %5996, %5989
  %5998 = fmul fast float %5997, %5995
  %5999 = call float @dx.op.unary.f32(i32 6, float %5931)  ; FAbs(value)
  %6000 = fsub fast float 1.000000e+00, %5999
  %6001 = bitcast float %6000 to i32
  %6002 = sitofp i32 %6001 to float
  %6003 = fmul fast float %6002, 5.000000e+00
  %6004 = fadd fast float %6003, 0xC1EFBF8940000000
  %6005 = fptosi float %6004 to i32
  %6006 = bitcast i32 %6005 to float
  %6007 = fmul fast float %6006, %3055
  %6008 = fmul fast float %6006, %3056
  %6009 = fmul fast float %6006, %3057
  %6010 = fadd fast float %6007, %2120
  %6011 = fadd fast float %6008, %2121
  %6012 = fadd fast float %6009, %2227
  %6013 = fmul fast float %5930, 9.843750e-01
  %6014 = fmul fast float %2182, 9.843750e-01
  %6015 = fadd fast float %6013, 7.812500e-03
  %6016 = fadd fast float %6014, 7.812500e-03
  %6017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %6015, float %6016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6018 = extractvalue %dx.types.ResRet.f32 %6017, 2
  %6019 = extractvalue %dx.types.ResRet.f32 %6017, 3
  %6020 = fmul fast float %6018, %2120
  %6021 = fmul fast float %6018, %2121
  %6022 = fmul fast float %6018, %2227
  %6023 = fadd fast float %6020, %6019
  %6024 = fadd fast float %6021, %6019
  %6025 = fadd fast float %6022, %6019
  %6026 = call float @dx.op.binary.f32(i32 35, float %6024, float %6025)  ; FMax(a,b)
  %6027 = call float @dx.op.binary.f32(i32 35, float %6023, float %6026)  ; FMax(a,b)
  %6028 = fsub fast float 1.000000e+00, %6027
  %6029 = fsub fast float -0.000000e+00, %2099
  %6030 = fsub fast float -0.000000e+00, %2100
  %6031 = fsub fast float -0.000000e+00, %2101
  %6032 = call float @dx.op.dot3.f32(i32 55, float %5699, float %5700, float %5701, float %6029, float %6030, float %6031)  ; Dot3(ax,ay,az,bx,by,bz)
  %6033 = call float @dx.op.unary.f32(i32 7, float %6032)  ; Saturate(value)
  %6034 = fmul fast float %6033, 9.843750e-01
  %6035 = fadd fast float %6034, 7.812500e-03
  %6036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %6035, float %6016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6037 = extractvalue %dx.types.ResRet.f32 %6036, 2
  %6038 = extractvalue %dx.types.ResRet.f32 %6036, 3
  %6039 = fmul fast float %2121, 0x4012D0A400000000
  %6040 = fadd fast float %6039, 0x3FDB6377A0000000
  %6041 = fmul fast float %5956, %6040
  %6042 = call float @dx.op.unary.f32(i32 7, float %6041)  ; Saturate(value)
  %6043 = fsub fast float %5942, %2234
  %6044 = fsub fast float %5943, %2235
  %6045 = fsub fast float %5944, %2236
  %6046 = call float @dx.op.dot3.f32(i32 55, float %6043, float %6044, float %6045, float %6043, float %6044, float %6045)  ; Dot3(ax,ay,az,bx,by,bz)
  %6047 = call float @dx.op.unary.f32(i32 25, float %6046)  ; Rsqrt(value)
  %6048 = fmul fast float %6043, %6047
  %6049 = fmul fast float %6044, %6047
  %6050 = fmul fast float %6045, %6047
  %6051 = call float @dx.op.dot3.f32(i32 55, float %6029, float %6030, float %6031, float %6048, float %6049, float %6050)  ; Dot3(ax,ay,az,bx,by,bz)
  %6052 = fmul fast float %6051, %6051
  %6053 = call float @dx.op.unary.f32(i32 6, float %6033)  ; FAbs(value)
  %6054 = call float @dx.op.binary.f32(i32 35, float %6042, float 0x3F847AE140000000)  ; FMax(a,b)
  %6055 = fmul fast float %6054, %6054
  %6056 = fmul fast float %6055, %6055
  %6057 = fsub fast float 1.000000e+00, %6056
  %6058 = fmul fast float %6056, %6052
  %6059 = fsub fast float 1.000000e+00, %6052
  %6060 = fadd fast float %6059, %6058
  %6061 = bitcast float %6056 to i32
  %6062 = sitofp i32 %6061 to float
  %6063 = fmul fast float %6062, 0x3FE7F73180000000
  %6064 = fadd fast float %6063, 0x41AFE27C40000000
  %6065 = fptosi float %6064 to i32
  %6066 = bitcast i32 %6065 to float
  br i1 %5691, label %6067, label %6106

; <label>:6067                                    ; preds = %5917
  %6068 = fmul fast float %6060, %6060
  %6069 = fmul fast float %5961, %6057
  %6070 = fadd fast float %6069, %6056
  %6071 = bitcast float %6070 to i32
  %6072 = ashr i32 %6071, 1
  %6073 = add nsw i32 %6072, 532487669
  %6074 = bitcast i32 %6073 to float
  %6075 = fadd fast float %6074, %2229
  %6076 = fmul fast float %6068, %6075
  %6077 = fmul fast float %6053, %6053
  %6078 = fmul fast float %6077, %6057
  %6079 = fadd fast float %6078, %6056
  %6080 = bitcast float %6079 to i32
  %6081 = ashr i32 %6080, 1
  %6082 = add nsw i32 %6081, 532487669
  %6083 = bitcast i32 %6082 to float
  %6084 = fadd fast float %6083, %6053
  %6085 = fmul fast float %6076, %6084
  %6086 = fdiv fast float 1.000000e+00, %6085
  %6087 = fmul fast float %6056, %6086
  %6088 = fmul fast float %6087, %6066
  %6089 = fadd fast float %6066, %5991
  %6090 = bitcast float %6089 to i32
  %6091 = sub nsw i32 2129859010, %6090
  %6092 = bitcast i32 %6091 to float
  %6093 = fmul fast float %6088, %6092
  %6094 = fmul fast float %6037, %2120
  %6095 = fadd fast float %6094, %6038
  %6096 = fmul fast float %6037, %2121
  %6097 = fadd fast float %6096, %6038
  %6098 = fmul fast float %6037, %2227
  %6099 = fadd fast float %6098, %6038
  %6100 = call float @dx.op.binary.f32(i32 35, float %6097, float %6099)  ; FMax(a,b)
  %6101 = call float @dx.op.binary.f32(i32 35, float %6095, float %6100)  ; FMax(a,b)
  %6102 = fsub fast float 1.000000e+00, %6101
  %6103 = fmul fast float %6033, %5706
  %6104 = fmul fast float %6103, %6102
  %6105 = fmul fast float %6104, %6093
  br label %6106

; <label>:6106                                    ; preds = %6067, %5917
  %6107 = phi float [ %6105, %6067 ], [ 0.000000e+00, %5917 ]
  %6108 = fmul fast float %6010, %5937
  %6109 = fmul fast float %6108, %5998
  %6110 = fmul fast float %6011, %5937
  %6111 = fmul fast float %6110, %5998
  %6112 = fmul fast float %6012, %5937
  %6113 = fmul fast float %6112, %5998
  %6114 = fadd fast float %6107, %6109
  %6115 = fadd fast float %6107, %6111
  %6116 = fadd fast float %6107, %6113
  %6117 = fmul fast float %5937, %5919
  %6118 = fmul fast float %6117, %6028
  %6119 = fmul fast float %5937, %5920
  %6120 = fmul fast float %6119, %6028
  %6121 = fmul fast float %5937, %5921
  %6122 = fmul fast float %6121, %6028
  %6123 = fadd fast float %6118, %5635
  %6124 = fadd fast float %6120, %5636
  %6125 = fadd fast float %6122, %5637
  %6126 = fmul fast float %6114, %5919
  %6127 = fmul fast float %6115, %5920
  %6128 = fmul fast float %6116, %5921
  %6129 = fadd fast float %6126, %5632
  %6130 = fadd fast float %6127, %5633
  %6131 = fadd fast float %6128, %5634
  br label %5765

; <label>:6132                                    ; preds = %5765
  br label %6133

; <label>:6133                                    ; preds = %6132, %5598
  %6134 = phi float [ %5600, %5598 ], [ %5766, %6132 ]
  %6135 = phi float [ %5601, %5598 ], [ %5767, %6132 ]
  %6136 = phi float [ %5602, %5598 ], [ %5768, %6132 ]
  %6137 = phi float [ %5603, %5598 ], [ %5769, %6132 ]
  %6138 = phi float [ %5604, %5598 ], [ %5770, %6132 ]
  %6139 = phi float [ %5605, %5598 ], [ %5771, %6132 ]
  %6140 = add i32 %5599, 1
  %6141 = icmp ugt i32 %6140, %5595
  br i1 %6141, label %6142, label %5598

; <label>:6142                                    ; preds = %6133
  br label %6143

; <label>:6143                                    ; preds = %6142, %5548, %5537
  %6144 = phi float [ %5539, %5537 ], [ %5539, %5548 ], [ %6134, %6142 ]
  %6145 = phi float [ %5540, %5537 ], [ %5540, %5548 ], [ %6135, %6142 ]
  %6146 = phi float [ %5541, %5537 ], [ %5541, %5548 ], [ %6136, %6142 ]
  %6147 = phi float [ %5542, %5537 ], [ %5542, %5548 ], [ %6137, %6142 ]
  %6148 = phi float [ %5543, %5537 ], [ %5543, %5548 ], [ %6138, %6142 ]
  %6149 = phi float [ %5544, %5537 ], [ %5544, %5548 ], [ %6139, %6142 ]
  %6150 = and i32 %2178, 255
  %6151 = uitofp i32 %6150 to float
  %6152 = fmul fast float %6151, 0x3F70101020000000
  %6153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6154 = extractvalue %dx.types.CBufRet.f32 %6153, 2
  %6155 = extractvalue %dx.types.CBufRet.f32 %6153, 3
  %6156 = fmul fast float %114, %6154
  %6157 = fmul fast float %116, %6155
  %6158 = fsub fast float 1.000000e+00, %6156
  %6159 = fsub fast float 1.000000e+00, %6157
  %6160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6161 = extractvalue %dx.types.CBufRet.f32 %6160, 0
  %6162 = extractvalue %dx.types.CBufRet.f32 %6160, 1
  %6163 = extractvalue %dx.types.CBufRet.f32 %6160, 2
  %6164 = fmul fast float %6158, %6161
  %6165 = fmul fast float %6158, %6162
  %6166 = fmul fast float %6158, %6163
  %6167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6168 = extractvalue %dx.types.CBufRet.f32 %6167, 0
  %6169 = extractvalue %dx.types.CBufRet.f32 %6167, 1
  %6170 = extractvalue %dx.types.CBufRet.f32 %6167, 2
  %6171 = fmul fast float %6159, %6168
  %6172 = fmul fast float %6159, %6169
  %6173 = fmul fast float %6159, %6170
  %6174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6175 = extractvalue %dx.types.CBufRet.f32 %6174, 0
  %6176 = extractvalue %dx.types.CBufRet.f32 %6174, 1
  %6177 = extractvalue %dx.types.CBufRet.f32 %6174, 2
  %6178 = fadd fast float %6171, %6175
  %6179 = fadd fast float %6178, %6164
  %6180 = fadd fast float %6172, %6176
  %6181 = fadd fast float %6180, %6165
  %6182 = fadd fast float %6173, %6177
  %6183 = fadd fast float %6182, %6166
  %6184 = fmul fast float %6179, %78
  %6185 = fmul fast float %6181, %78
  %6186 = fmul fast float %6183, %78
  %6187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6188 = extractvalue %dx.types.CBufRet.f32 %6187, 2
  %6189 = extractvalue %dx.types.CBufRet.f32 %6187, 3
  %6190 = fmul fast float %6188, %89
  %6191 = fmul fast float %6189, %90
  %6192 = fptoui float %89 to i32
  %6193 = fptoui float %90 to i32
  %6194 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %43, i32 0, i32 %6192, i32 %6193, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6195 = extractvalue %dx.types.ResRet.f32 %6194, 0
  %6196 = fcmp fast olt float %6195, -1.000000e+00
  %6197 = fcmp fast ogt float %6195, -1.000000e+00
  %6198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6199 = extractvalue %dx.types.CBufRet.f32 %6198, 1
  %6200 = select i1 %6197, float %6199, float 1.000000e+00
  %6201 = fadd fast float %6195, 1.000000e+00
  %6202 = fmul fast float %6200, %6201
  %6203 = call float @dx.op.unary.f32(i32 6, float %6202)  ; FAbs(value)
  %6204 = fsub fast float %6203, %78
  %6205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %6206 = extractvalue %dx.types.CBufRet.f32 %6205, 2
  %6207 = fsub fast float %6204, %6206
  %6208 = extractvalue %dx.types.CBufRet.f32 %6205, 3
  %6209 = fmul fast float %6208, %6152
  %6210 = fmul fast float %6209, %6207
  %6211 = call float @dx.op.unary.f32(i32 7, float %6210)  ; Saturate(value)
  %6212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 356)  ; CBufferLoadLegacy(handle,regIndex)
  %6213 = extractvalue %dx.types.CBufRet.f32 %6212, 1
  %6214 = extractvalue %dx.types.CBufRet.f32 %6212, 0
  %6215 = extractvalue %dx.types.CBufRet.f32 %6212, 3
  %6216 = extractvalue %dx.types.CBufRet.f32 %6212, 2
  %6217 = select i1 %6196, float %6213, float %6215
  %6218 = select i1 %6196, float %6214, float %6216
  %6219 = fsub fast float %6204, %6218
  %6220 = fmul fast float %6219, %6217
  %6221 = fsub fast float 1.000000e+00, %6152
  %6222 = fadd fast float %6221, %6220
  %6223 = call float @dx.op.unary.f32(i32 7, float %6222)  ; Saturate(value)
  %6224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %6225 = extractvalue %dx.types.CBufRet.f32 %6224, 1
  %6226 = extractvalue %dx.types.CBufRet.f32 %6224, 2
  %6227 = fsub fast float 1.000000e+00, %6191
  %6228 = fsub fast float 1.000000e+00, %6190
  %6229 = fmul fast float %6191, %6190
  %6230 = fmul fast float %6229, %6227
  %6231 = fmul fast float %6230, %6228
  %6232 = fmul fast float %6231, %6225
  %6233 = call float @dx.op.unary.f32(i32 23, float %6232)  ; Log(value)
  %6234 = fmul fast float %6233, %6226
  %6235 = call float @dx.op.unary.f32(i32 21, float %6234)  ; Exp(value)
  %6236 = call float @dx.op.unary.f32(i32 7, float %6235)  ; Saturate(value)
  %6237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 66)  ; CBufferLoadLegacy(handle,regIndex)
  %6238 = extractvalue %dx.types.CBufRet.f32 %6237, 2
  %6239 = extractvalue %dx.types.CBufRet.f32 %6237, 3
  %6240 = extractvalue %dx.types.CBufRet.f32 %6237, 0
  %6241 = fsub fast float %78, %6240
  %6242 = extractvalue %dx.types.CBufRet.f32 %6224, 0
  %6243 = fmul fast float %6241, %6242
  %6244 = call float @dx.op.unary.f32(i32 7, float %6243)  ; Saturate(value)
  %6245 = fsub fast float %6239, %6238
  %6246 = fmul fast float %6244, %6245
  %6247 = fadd fast float %6246, %6238
  %6248 = fmul fast float %6247, %6211
  %6249 = fmul fast float %6248, %2099
  %6250 = fmul fast float %6248, %2100
  %6251 = fadd fast float %6249, %6184
  %6252 = fadd fast float %6250, %6185
  %6253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6254 = extractvalue %dx.types.CBufRet.f32 %6253, 0
  %6255 = extractvalue %dx.types.CBufRet.f32 %6253, 1
  %6256 = extractvalue %dx.types.CBufRet.f32 %6253, 2
  %6257 = extractvalue %dx.types.CBufRet.f32 %6253, 3
  %6258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6259 = extractvalue %dx.types.CBufRet.f32 %6258, 0
  %6260 = extractvalue %dx.types.CBufRet.f32 %6258, 1
  %6261 = extractvalue %dx.types.CBufRet.f32 %6258, 2
  %6262 = extractvalue %dx.types.CBufRet.f32 %6258, 3
  %6263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6264 = extractvalue %dx.types.CBufRet.f32 %6263, 0
  %6265 = extractvalue %dx.types.CBufRet.f32 %6263, 1
  %6266 = extractvalue %dx.types.CBufRet.f32 %6263, 2
  %6267 = extractvalue %dx.types.CBufRet.f32 %6263, 3
  %6268 = fmul fast float %6251, %6254
  %6269 = call float @dx.op.tertiary.f32(i32 46, float %6252, float %6255, float %6268)  ; FMad(a,b,c)
  %6270 = call float @dx.op.tertiary.f32(i32 46, float %6186, float %6256, float %6269)  ; FMad(a,b,c)
  %6271 = fadd fast float %6270, %6257
  %6272 = fmul fast float %6251, %6259
  %6273 = call float @dx.op.tertiary.f32(i32 46, float %6252, float %6260, float %6272)  ; FMad(a,b,c)
  %6274 = call float @dx.op.tertiary.f32(i32 46, float %6186, float %6261, float %6273)  ; FMad(a,b,c)
  %6275 = fadd fast float %6274, %6262
  %6276 = fmul fast float %6251, %6264
  %6277 = call float @dx.op.tertiary.f32(i32 46, float %6252, float %6265, float %6276)  ; FMad(a,b,c)
  %6278 = call float @dx.op.tertiary.f32(i32 46, float %6186, float %6266, float %6277)  ; FMad(a,b,c)
  %6279 = fadd fast float %6278, %6267
  %6280 = fdiv fast float %6271, %6279
  %6281 = fdiv fast float %6275, %6279
  %6282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6283 = extractvalue %dx.types.CBufRet.f32 %6282, 0
  %6284 = extractvalue %dx.types.CBufRet.f32 %6282, 1
  %6285 = fmul fast float %6283, %6280
  %6286 = fmul fast float %6284, %6281
  %6287 = extractvalue %dx.types.CBufRet.f32 %6282, 2
  %6288 = extractvalue %dx.types.CBufRet.f32 %6282, 3
  %6289 = fadd fast float %6285, %6287
  %6290 = fadd fast float %6286, %6288
  %6291 = call float @dx.op.unary.f32(i32 7, float %6289)  ; Saturate(value)
  %6292 = call float @dx.op.unary.f32(i32 7, float %6290)  ; Saturate(value)
  %6293 = fsub fast float %6291, %6190
  %6294 = fsub fast float %6292, %6191
  %6295 = fmul fast float %6293, %6236
  %6296 = fmul fast float %6294, %6236
  %6297 = fadd fast float %6295, %6190
  %6298 = fadd fast float %6296, %6191
  %6299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %59, float %6297, float %6298, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6300 = extractvalue %dx.types.ResRet.f32 %6299, 0
  %6301 = fcmp fast ogt float %6300, -1.000000e+00
  %6302 = select i1 %6301, float %6199, float 1.000000e+00
  %6303 = fadd fast float %6300, 1.000000e+00
  %6304 = fmul fast float %6302, %6303
  %6305 = call float @dx.op.unary.f32(i32 6, float %6304)  ; FAbs(value)
  %6306 = fcmp fast ugt float %6305, %6279
  br i1 %6306, label %6308, label %6307

; <label>:6307                                    ; preds = %6143
  br label %6308

; <label>:6308                                    ; preds = %6307, %6143
  %6309 = phi float [ %6190, %6307 ], [ %6297, %6143 ]
  %6310 = phi float [ %6191, %6307 ], [ %6298, %6143 ]
  %6311 = phi float [ %78, %6307 ], [ %6279, %6143 ]
  %6312 = phi float [ %6203, %6307 ], [ %6305, %6143 ]
  br i1 %106, label %6313, label %6749

; <label>:6313                                    ; preds = %6308
  %6314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %6315 = extractvalue %dx.types.CBufRet.f32 %6314, 0
  %6316 = extractvalue %dx.types.CBufRet.f32 %6314, 1
  %6317 = extractvalue %dx.types.CBufRet.f32 %6314, 2
  %6318 = fcmp fast oge float %6316, %6311
  %6319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %6320 = extractvalue %dx.types.CBufRet.i32 %6319, 0
  %6321 = and i32 %6320, 65536
  %6322 = icmp ne i32 %6321, 0
  %6323 = and i1 %6318, %6322
  br i1 %6323, label %6324, label %6405

; <label>:6324                                    ; preds = %6313
  %6325 = extractvalue %dx.types.CBufRet.f32 %6153, 0
  %6326 = extractvalue %dx.types.CBufRet.f32 %6153, 1
  %6327 = fmul fast float %6325, %6309
  %6328 = fmul fast float %6326, %6310
  %6329 = fmul fast float %6327, %6154
  %6330 = fmul fast float %6328, %6155
  %6331 = call float @dx.op.unary.f32(i32 7, float %6329)  ; Saturate(value)
  %6332 = call float @dx.op.unary.f32(i32 7, float %6330)  ; Saturate(value)
  %6333 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %58, float %6331, float %6332, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6334 = extractvalue %dx.types.ResRet.f32 %6333, 0
  %6335 = extractvalue %dx.types.ResRet.f32 %6333, 1
  %6336 = extractvalue %dx.types.ResRet.f32 %6333, 2
  %6337 = extractvalue %dx.types.ResRet.f32 %6333, 3
  %6338 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %58, float %6331, float %6332, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6339 = extractvalue %dx.types.ResRet.f32 %6338, 0
  %6340 = extractvalue %dx.types.ResRet.f32 %6338, 1
  %6341 = extractvalue %dx.types.ResRet.f32 %6338, 2
  %6342 = extractvalue %dx.types.ResRet.f32 %6338, 3
  %6343 = call float @dx.op.binary.f32(i32 35, float %6335, float %6336)  ; FMax(a,b)
  %6344 = call float @dx.op.binary.f32(i32 35, float %6334, float %6343)  ; FMax(a,b)
  %6345 = call float @dx.op.binary.f32(i32 35, float %6344, float %6337)  ; FMax(a,b)
  %6346 = call float @dx.op.binary.f32(i32 36, float %6340, float %6341)  ; FMin(a,b)
  %6347 = call float @dx.op.binary.f32(i32 36, float %6339, float %6346)  ; FMin(a,b)
  %6348 = call float @dx.op.binary.f32(i32 36, float %6347, float %6342)  ; FMin(a,b)
  %6349 = fmul fast float %6345, 2.550000e+02
  %6350 = fadd fast float %6349, 0x3F70101020000000
  %6351 = fptoui float %6350 to i32
  %6352 = fmul fast float %6348, 2.550000e+02
  %6353 = fadd fast float %6352, 0x3F70101020000000
  %6354 = fptoui float %6353 to i32
  %6355 = icmp ult i32 %6351, %6354
  br i1 %6355, label %6356, label %6405

; <label>:6356                                    ; preds = %6324
  %6357 = fadd fast float %6312, -4.000000e+00
  %6358 = call float @dx.op.binary.f32(i32 35, float %6357, float 0.000000e+00)  ; FMax(a,b)
  %6359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6360 = extractvalue %dx.types.CBufRet.f32 %6359, 0
  %6361 = fadd fast float %6360, %6358
  %6362 = extractvalue %dx.types.CBufRet.f32 %6359, 2
  %6363 = fmul fast float %6361, %6362
  %6364 = call float @dx.op.unary.f32(i32 23, float %6363)  ; Log(value)
  %6365 = extractvalue %dx.types.CBufRet.f32 %6359, 3
  %6366 = fmul fast float %6365, %6364
  %6367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6368 = extractvalue %dx.types.CBufRet.f32 %6367, 2
  %6369 = fmul fast float %6366, %6368
  %6370 = call float @dx.op.unary.f32(i32 7, float %6369)  ; Saturate(value)
  %6371 = uitofp i32 %6351 to float
  %6372 = uitofp i32 %6354 to float
  %6373 = fadd fast float %6371, 5.000000e-01
  %6374 = fadd fast float %6372, 5.000000e-01
  %6375 = fmul fast float %6368, %6373
  %6376 = fmul fast float %6368, %6374
  %6377 = fadd fast float %6375, 0x3F0FFB4800000000
  %6378 = fadd fast float %6376, 0xBF0FFB4800000000
  %6379 = call float @dx.op.binary.f32(i32 35, float %6370, float %6377)  ; FMax(a,b)
  %6380 = call float @dx.op.binary.f32(i32 36, float %6379, float %6378)  ; FMin(a,b)
  %6381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6382 = extractvalue %dx.types.CBufRet.f32 %6381, 1
  %6383 = extractvalue %dx.types.CBufRet.f32 %6381, 2
  %6384 = extractvalue %dx.types.CBufRet.f32 %6381, 0
  %6385 = fmul fast float %6382, %6380
  %6386 = fadd fast float %6384, %6385
  %6387 = fadd fast float %6384, %6383
  %6388 = fsub fast float %6382, %6383
  %6389 = fadd fast float %6388, %6384
  %6390 = call float @dx.op.binary.f32(i32 35, float %6386, float %6387)  ; FMax(a,b)
  %6391 = call float @dx.op.binary.f32(i32 36, float %6390, float %6389)  ; FMin(a,b)
  %6392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %56, float %6331, float %6332, float %6391, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6393 = extractvalue %dx.types.ResRet.f32 %6392, 0
  %6394 = extractvalue %dx.types.ResRet.f32 %6392, 1
  %6395 = extractvalue %dx.types.ResRet.f32 %6392, 2
  %6396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %56, float %6331, float %6332, float %6391, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6397 = extractvalue %dx.types.ResRet.f32 %6396, 0
  %6398 = extractvalue %dx.types.ResRet.f32 %6396, 1
  %6399 = extractvalue %dx.types.ResRet.f32 %6396, 2
  %6400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6401 = extractvalue %dx.types.CBufRet.f32 %6400, 1
  %6402 = fmul fast float %6401, %6397
  %6403 = fmul fast float %6401, %6398
  %6404 = fmul fast float %6401, %6399
  br label %6405

; <label>:6405                                    ; preds = %6356, %6324, %6313
  %6406 = phi float [ 0.000000e+00, %6313 ], [ %6402, %6356 ], [ 0.000000e+00, %6324 ]
  %6407 = phi float [ 0.000000e+00, %6313 ], [ %6403, %6356 ], [ 0.000000e+00, %6324 ]
  %6408 = phi float [ 0.000000e+00, %6313 ], [ %6404, %6356 ], [ 0.000000e+00, %6324 ]
  %6409 = phi float [ 1.000000e+00, %6313 ], [ %6393, %6356 ], [ 1.000000e+00, %6324 ]
  %6410 = phi float [ 1.000000e+00, %6313 ], [ %6394, %6356 ], [ 1.000000e+00, %6324 ]
  %6411 = phi float [ 1.000000e+00, %6313 ], [ %6395, %6356 ], [ 1.000000e+00, %6324 ]
  %6412 = fcmp fast olt float %6152, 1.000000e+00
  %6413 = fcmp fast olt float %6315, %6312
  %6414 = or i1 %6412, %6413
  br i1 %6414, label %6415, label %6506

; <label>:6415                                    ; preds = %6405
  %6416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %6417 = extractvalue %dx.types.CBufRet.i32 %6416, 0
  %6418 = call i32 @dx.op.binary.i32(i32 40, i32 %188, i32 %6417)  ; UMin(a,b)
  %6419 = mul i32 %6418, 36
  %6420 = add i32 %6419, 4
  %6421 = add i32 %6420, %306
  %6422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %6421, i32 undef)  ; BufferLoad(srv,index,wot)
  %6423 = extractvalue %dx.types.ResRet.i32 %6422, 0
  %6424 = and i32 %6423, 32767
  %6425 = mul nuw nsw i32 %6424, 928
  %6426 = add nuw nsw i32 %6425, 44
  %6427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6426, i32 undef)  ; BufferLoad(srv,index,wot)
  %6428 = extractvalue %dx.types.ResRet.f32 %6427, 0
  %6429 = add nuw nsw i32 %6425, 48
  %6430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6429, i32 undef)  ; BufferLoad(srv,index,wot)
  %6431 = extractvalue %dx.types.ResRet.f32 %6430, 0
  %6432 = extractvalue %dx.types.ResRet.f32 %6430, 1
  %6433 = extractvalue %dx.types.ResRet.f32 %6430, 2
  %6434 = add nuw nsw i32 %6425, 60
  %6435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6434, i32 undef)  ; BufferLoad(srv,index,wot)
  %6436 = extractvalue %dx.types.ResRet.f32 %6435, 0
  %6437 = extractvalue %dx.types.ResRet.f32 %6435, 1
  %6438 = extractvalue %dx.types.ResRet.f32 %6435, 2
  %6439 = fmul fast float %6431, 0x3F847AE140000000
  %6440 = fmul fast float %6432, 0x3F847AE140000000
  %6441 = fmul fast float %6433, 0x3F847AE140000000
  %6442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6443 = extractvalue %dx.types.CBufRet.f32 %6442, 0
  %6444 = extractvalue %dx.types.CBufRet.f32 %6442, 1
  %6445 = extractvalue %dx.types.CBufRet.f32 %6442, 2
  %6446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6447 = extractvalue %dx.types.CBufRet.f32 %6446, 0
  %6448 = extractvalue %dx.types.CBufRet.f32 %6446, 1
  %6449 = call float @dx.op.dot3.f32(i32 55, float %6443, float %6444, float %6445, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6450 = select i1 %2222, float %6447, float %6443
  %6451 = select i1 %2222, float %6449, float %6444
  %6452 = select i1 %2222, float %6448, float %6445
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 0
  %6455 = extractvalue %dx.types.CBufRet.f32 %6453, 1
  %6456 = extractvalue %dx.types.CBufRet.f32 %6453, 2
  %6457 = fadd fast float %6436, %6431
  %6458 = fmul fast float %6457, 0x3F847AE140000000
  %6459 = fadd fast float %6437, %6432
  %6460 = fmul fast float %6459, 0x3F847AE140000000
  %6461 = fadd fast float %6438, %6433
  %6462 = fmul fast float %6461, 0x3F847AE140000000
  %6463 = call float @dx.op.dot3.f32(i32 55, float %6454, float %6455, float %6456, float %2127, float %2128, float %2129)  ; Dot3(ax,ay,az,bx,by,bz)
  %6464 = fcmp fast ogt float %6428, 0.000000e+00
  %6465 = select i1 %6464, float 1.000000e+00, float -1.000000e+00
  %6466 = fmul fast float %6465, 5.000000e-01
  %6467 = fmul fast float %6466, %6463
  %6468 = fmul fast float %6465, %6428
  %6469 = fadd fast float %6467, 4.921875e-01
  %6470 = fadd fast float %6468, -3.125000e-02
  %6471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %58, float %6469, float 0x3FB25F3060000000, float %6470, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6472 = extractvalue %dx.types.ResRet.f32 %6471, 0
  %6473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %6474 = extractvalue %dx.types.CBufRet.f32 %6473, 0
  %6475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %6476 = extractvalue %dx.types.CBufRet.f32 %6475, 0
  %6477 = fmul fast float %6476, %6474
  %6478 = extractvalue %dx.types.CBufRet.f32 %6475, 1
  %6479 = fadd fast float %6477, %6478
  %6480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %6481 = extractvalue %dx.types.CBufRet.f32 %6480, 0
  %6482 = fmul fast float %6481, %5538
  %6483 = extractvalue %dx.types.CBufRet.f32 %6480, 1
  %6484 = fadd fast float %6482, %6483
  %6485 = call float @dx.op.unary.f32(i32 7, float %6484)  ; Saturate(value)
  %6486 = extractvalue %dx.types.CBufRet.f32 %6473, 3
  %6487 = extractvalue %dx.types.CBufRet.f32 %6475, 2
  %6488 = fmul fast float %6487, %6486
  %6489 = extractvalue %dx.types.CBufRet.f32 %6475, 3
  %6490 = fadd fast float %6488, %6489
  %6491 = fmul fast float %6472, 0x400921FB60000000
  %6492 = fmul fast float %6491, %6479
  %6493 = fmul fast float %6492, %6485
  %6494 = fmul fast float %6450, %6439
  %6495 = fmul fast float %6494, %6493
  %6496 = fmul fast float %6451, %6440
  %6497 = fmul fast float %6496, %6493
  %6498 = fmul fast float %6452, %6441
  %6499 = fmul fast float %6498, %6493
  %6500 = fmul fast float %6439, %3052
  %6501 = fmul fast float %6500, %6490
  %6502 = fmul fast float %6440, %3053
  %6503 = fmul fast float %6502, %6490
  %6504 = fmul fast float %6441, %3054
  %6505 = fmul fast float %6504, %6490
  br label %6506

; <label>:6506                                    ; preds = %6415, %6405
  %6507 = phi float [ %6458, %6415 ], [ 0.000000e+00, %6405 ]
  %6508 = phi float [ %6460, %6415 ], [ 0.000000e+00, %6405 ]
  %6509 = phi float [ %6462, %6415 ], [ 0.000000e+00, %6405 ]
  %6510 = phi float [ %6495, %6415 ], [ 0.000000e+00, %6405 ]
  %6511 = phi float [ %6497, %6415 ], [ 0.000000e+00, %6405 ]
  %6512 = phi float [ %6499, %6415 ], [ 0.000000e+00, %6405 ]
  %6513 = phi float [ %6501, %6415 ], [ 0.000000e+00, %6405 ]
  %6514 = phi float [ %6503, %6415 ], [ 0.000000e+00, %6405 ]
  %6515 = phi float [ %6505, %6415 ], [ 0.000000e+00, %6405 ]
  %6516 = call float @dx.op.binary.f32(i32 35, float %6507, float 0x3F10000000000000)  ; FMax(a,b)
  %6517 = call float @dx.op.binary.f32(i32 35, float %6508, float 0x3F10000000000000)  ; FMax(a,b)
  %6518 = call float @dx.op.binary.f32(i32 35, float %6509, float 0x3F10000000000000)  ; FMax(a,b)
  %6519 = fdiv fast float 1.000000e+00, %6516
  %6520 = fdiv fast float 1.000000e+00, %6517
  %6521 = fdiv fast float 1.000000e+00, %6518
  %6522 = fmul fast float %6507, 0xBFF7154760000000
  %6523 = fmul fast float %6508, 0xBFF7154760000000
  %6524 = fmul fast float %6509, 0xBFF7154760000000
  %6525 = extractvalue %dx.types.CBufRet.f32 %6314, 3
  %6526 = call float @dx.op.dot3.f32(i32 55, float %6519, float %6520, float %6521, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6527 = fmul fast float %6525, %6526
  %6528 = call float @dx.op.binary.f32(i32 35, float %6316, float %6311)  ; FMax(a,b)
  %6529 = fsub fast float %6312, %6528
  %6530 = call float @dx.op.binary.f32(i32 35, float %6529, float 0.000000e+00)  ; FMax(a,b)
  %6531 = fsub fast float %6312, %6311
  %6532 = call float @dx.op.binary.f32(i32 35, float %6531, float 0.000000e+00)  ; FMax(a,b)
  %6533 = call float @dx.op.binary.f32(i32 36, float %6532, float %6527)  ; FMin(a,b)
  %6534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %6535 = extractvalue %dx.types.CBufRet.f32 %6534, 0
  %6536 = fmul fast float %6535, %6533
  %6537 = fmul fast float %6536, %6522
  %6538 = fmul fast float %6536, %6523
  %6539 = fmul fast float %6536, %6524
  %6540 = call float @dx.op.unary.f32(i32 21, float %6537)  ; Exp(value)
  %6541 = call float @dx.op.unary.f32(i32 21, float %6538)  ; Exp(value)
  %6542 = call float @dx.op.unary.f32(i32 21, float %6539)  ; Exp(value)
  %6543 = fmul fast float %6540, %6510
  %6544 = fmul fast float %6541, %6511
  %6545 = fmul fast float %6542, %6512
  %6546 = extractvalue %dx.types.CBufRet.f32 %6534, 1
  %6547 = fmul fast float %6546, %6533
  %6548 = fmul fast float %6547, %6522
  %6549 = fmul fast float %6547, %6523
  %6550 = fmul fast float %6547, %6524
  %6551 = call float @dx.op.unary.f32(i32 21, float %6548)  ; Exp(value)
  %6552 = call float @dx.op.unary.f32(i32 21, float %6549)  ; Exp(value)
  %6553 = call float @dx.op.unary.f32(i32 21, float %6550)  ; Exp(value)
  %6554 = fmul fast float %6551, %6513
  %6555 = fmul fast float %6552, %6514
  %6556 = fmul fast float %6553, %6515
  %6557 = fadd fast float %6554, %6543
  %6558 = fadd fast float %6555, %6544
  %6559 = fadd fast float %6556, %6545
  %6560 = fmul fast float %6530, %6522
  %6561 = fmul fast float %6530, %6523
  %6562 = fmul fast float %6530, %6524
  %6563 = call float @dx.op.unary.f32(i32 21, float %6560)  ; Exp(value)
  %6564 = call float @dx.op.unary.f32(i32 21, float %6561)  ; Exp(value)
  %6565 = call float @dx.op.unary.f32(i32 21, float %6562)  ; Exp(value)
  %6566 = call float @dx.op.unary.f32(i32 7, float %6563)  ; Saturate(value)
  %6567 = call float @dx.op.unary.f32(i32 7, float %6564)  ; Saturate(value)
  %6568 = call float @dx.op.unary.f32(i32 7, float %6565)  ; Saturate(value)
  %6569 = fmul fast float %6566, %6557
  %6570 = fmul fast float %6567, %6558
  %6571 = fmul fast float %6568, %6559
  %6572 = fsub fast float %6557, %6569
  %6573 = fsub fast float %6558, %6570
  %6574 = fsub fast float %6559, %6571
  %6575 = fmul fast float %6519, %6409
  %6576 = fmul fast float %6575, %6572
  %6577 = fmul fast float %6520, %6410
  %6578 = fmul fast float %6577, %6573
  %6579 = fmul fast float %6521, %6411
  %6580 = fmul fast float %6579, %6574
  %6581 = fadd fast float %6576, %6406
  %6582 = fadd fast float %6578, %6407
  %6583 = fadd fast float %6580, %6408
  %6584 = fmul fast float %6566, %6409
  %6585 = fmul fast float %6567, %6410
  %6586 = fmul fast float %6568, %6411
  %6587 = fmul fast float %6532, %6522
  %6588 = fmul fast float %6532, %6523
  %6589 = fmul fast float %6532, %6524
  %6590 = call float @dx.op.unary.f32(i32 21, float %6587)  ; Exp(value)
  %6591 = call float @dx.op.unary.f32(i32 21, float %6588)  ; Exp(value)
  %6592 = call float @dx.op.unary.f32(i32 21, float %6589)  ; Exp(value)
  %6593 = call float @dx.op.unary.f32(i32 7, float %6590)  ; Saturate(value)
  %6594 = call float @dx.op.unary.f32(i32 7, float %6591)  ; Saturate(value)
  %6595 = call float @dx.op.unary.f32(i32 7, float %6592)  ; Saturate(value)
  %6596 = fmul fast float %6593, %6557
  %6597 = fmul fast float %6594, %6558
  %6598 = fmul fast float %6595, %6559
  %6599 = fsub fast float %6557, %6596
  %6600 = fsub fast float %6558, %6597
  %6601 = fsub fast float %6559, %6598
  %6602 = fmul fast float %6599, %6519
  %6603 = fmul fast float %6600, %6520
  %6604 = fmul fast float %6601, %6521
  %6605 = fsub fast float %6311, %6315
  %6606 = fmul fast float %6317, %6605
  %6607 = call float @dx.op.unary.f32(i32 7, float %6606)  ; Saturate(value)
  %6608 = fmul fast float %6607, %6607
  %6609 = fmul fast float %6607, 2.000000e+00
  %6610 = fsub fast float 3.000000e+00, %6609
  %6611 = fmul fast float %6608, %6610
  %6612 = fsub fast float %6602, %6581
  %6613 = fsub fast float %6603, %6582
  %6614 = fsub fast float %6604, %6583
  %6615 = fmul fast float %6611, %6612
  %6616 = fmul fast float %6611, %6613
  %6617 = fmul fast float %6611, %6614
  %6618 = fadd fast float %6615, %6581
  %6619 = fadd fast float %6616, %6582
  %6620 = fadd fast float %6617, %6583
  %6621 = fsub fast float %6593, %6584
  %6622 = fsub fast float %6594, %6585
  %6623 = fsub fast float %6595, %6586
  %6624 = fmul fast float %6611, %6621
  %6625 = fmul fast float %6611, %6622
  %6626 = fmul fast float %6611, %6623
  %6627 = fadd fast float %6624, %6584
  %6628 = fadd fast float %6625, %6585
  %6629 = fadd fast float %6626, %6586
  br i1 %6412, label %6630, label %6698

; <label>:6630                                    ; preds = %6506
  %6631 = extractvalue %dx.types.CBufRet.f32 %6534, 3
  %6632 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6631)  ; Dot3(ax,ay,az,bx,by,bz)
  %6633 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2224, float %2225, float %2226)  ; Dot3(ax,ay,az,bx,by,bz)
  %6634 = fdiv fast float 1.000000e+00, %6633
  %6635 = fmul fast float %6634, %6632
  %6636 = fcmp ogt float %2129, -0.000000e+00
  %6637 = select i1 %6636, float %6631, float %6635
  %6638 = call float @dx.op.binary.f32(i32 36, float %6637, float %6527)  ; FMin(a,b)
  %6639 = fmul fast float %6535, %6638
  %6640 = fmul fast float %6639, %6522
  %6641 = fmul fast float %6639, %6523
  %6642 = fmul fast float %6639, %6524
  %6643 = call float @dx.op.unary.f32(i32 21, float %6640)  ; Exp(value)
  %6644 = call float @dx.op.unary.f32(i32 21, float %6641)  ; Exp(value)
  %6645 = call float @dx.op.unary.f32(i32 21, float %6642)  ; Exp(value)
  %6646 = fmul fast float %6643, %6510
  %6647 = fmul fast float %6644, %6511
  %6648 = fmul fast float %6645, %6512
  %6649 = fmul fast float %6546, %6638
  %6650 = fmul fast float %6649, %6522
  %6651 = fmul fast float %6649, %6523
  %6652 = fmul fast float %6649, %6524
  %6653 = call float @dx.op.unary.f32(i32 21, float %6650)  ; Exp(value)
  %6654 = call float @dx.op.unary.f32(i32 21, float %6651)  ; Exp(value)
  %6655 = call float @dx.op.unary.f32(i32 21, float %6652)  ; Exp(value)
  %6656 = fmul fast float %6653, %6513
  %6657 = fmul fast float %6654, %6514
  %6658 = fmul fast float %6655, %6515
  %6659 = fadd fast float %6656, %6646
  %6660 = fadd fast float %6657, %6647
  %6661 = fadd fast float %6658, %6648
  %6662 = fmul fast float %6637, %6522
  %6663 = fmul fast float %6637, %6523
  %6664 = fmul fast float %6637, %6524
  %6665 = call float @dx.op.unary.f32(i32 21, float %6662)  ; Exp(value)
  %6666 = call float @dx.op.unary.f32(i32 21, float %6663)  ; Exp(value)
  %6667 = call float @dx.op.unary.f32(i32 21, float %6664)  ; Exp(value)
  %6668 = call float @dx.op.unary.f32(i32 7, float %6665)  ; Saturate(value)
  %6669 = call float @dx.op.unary.f32(i32 7, float %6666)  ; Saturate(value)
  %6670 = call float @dx.op.unary.f32(i32 7, float %6667)  ; Saturate(value)
  %6671 = fmul fast float %6668, %6659
  %6672 = fmul fast float %6669, %6660
  %6673 = fmul fast float %6670, %6661
  %6674 = fsub fast float %6659, %6671
  %6675 = fsub fast float %6660, %6672
  %6676 = fsub fast float %6661, %6673
  %6677 = fmul fast float %6674, %6519
  %6678 = fmul fast float %6675, %6520
  %6679 = fmul fast float %6676, %6521
  %6680 = fsub fast float %6618, %6677
  %6681 = fsub fast float %6619, %6678
  %6682 = fsub fast float %6620, %6679
  %6683 = fmul fast float %6680, %6152
  %6684 = fmul fast float %6681, %6152
  %6685 = fmul fast float %6682, %6152
  %6686 = fadd fast float %6683, %6677
  %6687 = fadd fast float %6684, %6678
  %6688 = fadd fast float %6685, %6679
  %6689 = fsub fast float %6627, %6668
  %6690 = fsub fast float %6628, %6669
  %6691 = fsub fast float %6629, %6670
  %6692 = fmul fast float %6689, %6152
  %6693 = fmul fast float %6690, %6152
  %6694 = fmul fast float %6691, %6152
  %6695 = fadd fast float %6692, %6668
  %6696 = fadd fast float %6693, %6669
  %6697 = fadd fast float %6694, %6670
  br label %6698

; <label>:6698                                    ; preds = %6630, %6506
  %6699 = phi float [ %6686, %6630 ], [ %6618, %6506 ]
  %6700 = phi float [ %6687, %6630 ], [ %6619, %6506 ]
  %6701 = phi float [ %6688, %6630 ], [ %6620, %6506 ]
  %6702 = phi float [ %6695, %6630 ], [ %6627, %6506 ]
  %6703 = phi float [ %6696, %6630 ], [ %6628, %6506 ]
  %6704 = phi float [ %6697, %6630 ], [ %6629, %6506 ]
  %6705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6706 = extractvalue %dx.types.CBufRet.i32 %6705, 3
  %6707 = and i32 %6706, 3
  %6708 = icmp ne i32 %6707, 0
  %6709 = and i32 %6706, 4
  %6710 = icmp ne i32 %6709, 0
  %6711 = and i1 %6708, %6710
  br i1 %6711, label %6712, label %6719

; <label>:6712                                    ; preds = %6698
  %6713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %58, float %6309, float %6310, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6714 = extractvalue %dx.types.ResRet.f32 %6713, 0
  %6715 = fsub fast float 1.000000e+00, %6714
  %6716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %6717 = extractvalue %dx.types.CBufRet.f32 %6716, 0
  %6718 = fcmp fast olt float %6715, %6717
  br label %6722

; <label>:6719                                    ; preds = %6698
  %6720 = icmp eq i32 %6709, 0
  %6721 = and i1 %6708, %6720
  br label %6722

; <label>:6722                                    ; preds = %6719, %6712
  %6723 = phi i1 [ %6718, %6712 ], [ %6721, %6719 ]
  %6724 = xor i1 %2222, %6723
  %6725 = select i1 %6724, float 0.000000e+00, float %6152
  %6726 = fcmp fast ogt float %6725, 0.000000e+00
  %6727 = select i1 %6726, float %6309, float 0.000000e+00
  %6728 = select i1 %6726, float %6310, float 0.000000e+00
  %6729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %58, float %6727, float %6728, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6730 = extractvalue %dx.types.ResRet.f32 %6729, 0
  %6731 = extractvalue %dx.types.ResRet.f32 %6729, 1
  %6732 = extractvalue %dx.types.ResRet.f32 %6729, 2
  %6733 = fmul fast float %6731, %6725
  %6734 = fmul fast float %6732, %6725
  %6735 = select i1 %2222, float 0.000000e+00, float %6733
  %6736 = select i1 %2222, float 0.000000e+00, float %6734
  %6737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6738 = extractvalue %dx.types.CBufRet.f32 %6737, 1
  %6739 = fmul fast float %6725, %6702
  %6740 = fmul fast float %6739, %6730
  %6741 = fmul fast float %6740, %6738
  %6742 = fmul fast float %6738, %6703
  %6743 = fmul fast float %6742, %6735
  %6744 = fmul fast float %6738, %6704
  %6745 = fmul fast float %6744, %6736
  %6746 = fadd fast float %6741, %6699
  %6747 = fadd fast float %6743, %6700
  %6748 = fadd fast float %6745, %6701
  br label %6788

; <label>:6749                                    ; preds = %6308
  %6750 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6751 = extractvalue %dx.types.CBufRet.i32 %6750, 3
  %6752 = and i32 %6751, 3
  %6753 = icmp ne i32 %6752, 0
  %6754 = and i32 %6751, 4
  %6755 = icmp ne i32 %6754, 0
  %6756 = and i1 %6753, %6755
  br i1 %6756, label %6757, label %6764

; <label>:6757                                    ; preds = %6749
  %6758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %58, float %6309, float %6310, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6759 = extractvalue %dx.types.ResRet.f32 %6758, 0
  %6760 = fsub fast float 1.000000e+00, %6759
  %6761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %6762 = extractvalue %dx.types.CBufRet.f32 %6761, 0
  %6763 = fcmp fast olt float %6760, %6762
  br label %6767

; <label>:6764                                    ; preds = %6749
  %6765 = icmp eq i32 %6754, 0
  %6766 = and i1 %6753, %6765
  br label %6767

; <label>:6767                                    ; preds = %6764, %6757
  %6768 = phi i1 [ %6763, %6757 ], [ %6766, %6764 ]
  %6769 = xor i1 %2222, %6768
  %6770 = select i1 %6769, float 0.000000e+00, float %6152
  %6771 = fcmp fast ogt float %6770, 0.000000e+00
  %6772 = select i1 %6771, float %6309, float 0.000000e+00
  %6773 = select i1 %6771, float %6310, float 0.000000e+00
  %6774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %58, float %6772, float %6773, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6775 = extractvalue %dx.types.ResRet.f32 %6774, 0
  %6776 = extractvalue %dx.types.ResRet.f32 %6774, 1
  %6777 = extractvalue %dx.types.ResRet.f32 %6774, 2
  %6778 = fmul fast float %6775, %6770
  %6779 = fmul fast float %6776, %6770
  %6780 = fmul fast float %6777, %6770
  %6781 = select i1 %2222, float 0.000000e+00, float %6779
  %6782 = select i1 %2222, float 0.000000e+00, float %6780
  %6783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6784 = extractvalue %dx.types.CBufRet.f32 %6783, 1
  %6785 = fmul fast float %6778, %6784
  %6786 = fmul fast float %6781, %6784
  %6787 = fmul fast float %6782, %6784
  br label %6788

; <label>:6788                                    ; preds = %6767, %6722
  %6789 = phi float [ %6785, %6767 ], [ %6746, %6722 ]
  %6790 = phi float [ %6786, %6767 ], [ %6747, %6722 ]
  %6791 = phi float [ %6787, %6767 ], [ %6748, %6722 ]
  %6792 = fmul fast float %6789, %3066
  %6793 = fmul fast float %6790, %3066
  %6794 = fmul fast float %6791, %3066
  %6795 = select i1 %106, float %6223, float 1.000000e+00
  %6796 = fsub fast float 1.000000e+00, %2229
  %6797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6798 = extractvalue %dx.types.CBufRet.f32 %6797, 0
  %6799 = fmul fast float %6798, %6796
  %6800 = fmul fast float %2101, 2.000000e+00
  %6801 = fmul fast float %6800, %2138
  %6802 = fsub fast float %2129, %6801
  %6803 = call float @dx.op.unary.f32(i32 7, float %6802)  ; Saturate(value)
  %6804 = fsub fast float 1.000000e+00, %6803
  %6805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6806 = extractvalue %dx.types.CBufRet.f32 %6805, 3
  %6807 = fmul fast float %6806, %6804
  %6808 = fsub fast float 1.000000e+00, %2196
  %6809 = call float @dx.op.unary.f32(i32 7, float %6808)  ; Saturate(value)
  %6810 = fadd fast float %6149, %2198
  %6811 = fmul fast float %6810, %2196
  %6812 = fmul fast float %6807, %6809
  %6813 = fmul fast float %6147, %2111
  %6814 = fmul fast float %6148, %2112
  %6815 = fmul fast float %6149, %2113
  %6816 = fadd fast float %6813, %6144
  %6817 = fadd fast float %6816, %6792
  %6818 = fadd fast float %6814, %6145
  %6819 = fadd fast float %6818, %6793
  %6820 = fadd fast float %6815, %6146
  %6821 = fadd fast float %6820, %6794
  br i1 %106, label %6825, label %6822

; <label>:6822                                    ; preds = %6788
  %6823 = fmul fast float %6154, %89
  %6824 = fmul fast float %6155, %90
  br label %7624

; <label>:6825                                    ; preds = %6788
  %6826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6827 = extractvalue %dx.types.CBufRet.f32 %6826, 0
  %6828 = extractvalue %dx.types.CBufRet.f32 %6826, 1
  %6829 = extractvalue %dx.types.CBufRet.f32 %6826, 2
  %6830 = extractvalue %dx.types.CBufRet.f32 %6826, 3
  %6831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6832 = extractvalue %dx.types.CBufRet.f32 %6831, 0
  %6833 = extractvalue %dx.types.CBufRet.f32 %6831, 1
  %6834 = extractvalue %dx.types.CBufRet.f32 %6831, 2
  %6835 = extractvalue %dx.types.CBufRet.f32 %6831, 3
  %6836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6837 = extractvalue %dx.types.CBufRet.f32 %6836, 0
  %6838 = extractvalue %dx.types.CBufRet.f32 %6836, 1
  %6839 = extractvalue %dx.types.CBufRet.f32 %6836, 2
  %6840 = extractvalue %dx.types.CBufRet.f32 %6836, 3
  %6841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6842 = extractvalue %dx.types.CBufRet.f32 %6841, 0
  %6843 = extractvalue %dx.types.CBufRet.f32 %6841, 1
  %6844 = extractvalue %dx.types.CBufRet.f32 %6841, 2
  %6845 = extractvalue %dx.types.CBufRet.f32 %6841, 3
  %6846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6847 = extractvalue %dx.types.CBufRet.f32 %6846, 3
  %6848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6849 = extractvalue %dx.types.CBufRet.f32 %6848, 3
  %6850 = extractvalue %dx.types.CBufRet.f32 %6848, 0
  %6851 = extractvalue %dx.types.CBufRet.f32 %6848, 1
  %6852 = extractvalue %dx.types.CBufRet.f32 %6848, 2
  %6853 = fcmp fast olt float %6852, -5.000000e-01
  %6854 = fmul fast float %2126, %2125
  %6855 = fadd fast float %6854, %6830
  %6856 = call float @dx.op.dot3.f32(i32 55, float %2127, float %2128, float %2129, float %6827, float %6828, float %6829)  ; Dot3(ax,ay,az,bx,by,bz)
  %6857 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6858 = extractvalue %dx.types.CBufRet.i32 %6857, 1
  %6859 = and i32 %6858, 1
  %6860 = icmp ne i32 %6859, 0
  %6861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6862 = extractvalue %dx.types.CBufRet.f32 %6861, 2
  %6863 = fcmp fast ogt float %6862, 0.000000e+00
  %6864 = and i1 %6860, %6863
  br i1 %6864, label %6865, label %7271, !dx.controlflow.hints !158

; <label>:6865                                    ; preds = %6825
  %6866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6867 = extractvalue %dx.types.CBufRet.f32 %6866, 3
  %6868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6869 = extractvalue %dx.types.CBufRet.f32 %6868, 2
  %6870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6871 = extractvalue %dx.types.CBufRet.f32 %6870, 2
  %6872 = fsub fast float %6869, %6871
  %6873 = and i32 %6858, 2
  %6874 = extractvalue %dx.types.CBufRet.i32 %6857, 0
  %6875 = call i32 @dx.op.binary.i32(i32 40, i32 %6874, i32 3)  ; UMin(a,b)
  %6876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6877 = extractvalue %dx.types.CBufRet.f32 %6876, 0
  %6878 = extractvalue %dx.types.CBufRet.f32 %6876, 1
  %6879 = extractvalue %dx.types.CBufRet.f32 %6870, 0
  %6880 = extractvalue %dx.types.CBufRet.f32 %6870, 1
  %6881 = fsub fast float %6877, %6879
  %6882 = fsub fast float %6878, %6880
  %6883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6884 = extractvalue %dx.types.CBufRet.f32 %6883, 0
  %6885 = fcmp fast ogt float %6884, 0.000000e+00
  %6886 = fsub fast float -0.000000e+00, %6881
  %6887 = fsub fast float -0.000000e+00, %6882
  %6888 = call float @dx.op.dot2.f32(i32 54, float %2127, float %2128, float %2127, float %2128)  ; Dot2(ax,ay,bx,by)
  %6889 = call float @dx.op.dot2.f32(i32 54, float %2127, float %2128, float %6886, float %6887)  ; Dot2(ax,ay,bx,by)
  %6890 = fmul fast float %6889, 2.000000e+00
  %6891 = call float @dx.op.dot2.f32(i32 54, float %6886, float %6887, float %6886, float %6887)  ; Dot2(ax,ay,bx,by)
  %6892 = fmul fast float %6884, %6884
  %6893 = fsub fast float %6891, %6892
  %6894 = fmul fast float %6890, %6890
  %6895 = fmul fast float %6888, 4.000000e+00
  %6896 = fmul fast float %6895, %6893
  %6897 = fsub fast float %6894, %6896
  %6898 = fcmp fast ogt float %6897, 0.000000e+00
  br i1 %6898, label %6899, label %6914

; <label>:6899                                    ; preds = %6865
  %6900 = fcmp fast ogt float %6890, 0.000000e+00
  %6901 = call float @dx.op.unary.f32(i32 24, float %6897)  ; Sqrt(value)
  %6902 = fsub fast float -0.000000e+00, %6901
  %6903 = select i1 %6900, float %6901, float %6902
  %6904 = fadd fast float %6903, %6890
  %6905 = fmul float %6904, -5.000000e-01
  %6906 = fdiv fast float %6905, %6888
  %6907 = call float @dx.op.binary.f32(i32 35, float %6906, float 0.000000e+00)  ; FMax(a,b)
  %6908 = call float @dx.op.binary.f32(i32 36, float %6854, float %6907)  ; FMin(a,b)
  %6909 = fdiv fast float %6893, %6905
  %6910 = call float @dx.op.binary.f32(i32 35, float %6909, float 0.000000e+00)  ; FMax(a,b)
  %6911 = call float @dx.op.binary.f32(i32 36, float %6854, float %6910)  ; FMin(a,b)
  %6912 = call float @dx.op.binary.f32(i32 36, float %6908, float %6911)  ; FMin(a,b)
  %6913 = call float @dx.op.binary.f32(i32 35, float %6908, float %6911)  ; FMax(a,b)
  br label %6914

; <label>:6914                                    ; preds = %6899, %6865
  %6915 = phi float [ %6913, %6899 ], [ -1.000000e+00, %6865 ]
  %6916 = phi float [ %6912, %6899 ], [ -1.000000e+00, %6865 ]
  %6917 = phi i1 [ true, %6899 ], [ false, %6865 ]
  %6918 = and i1 %6885, %6917
  br i1 %6918, label %6919, label %6921

; <label>:6919                                    ; preds = %6914
  %6920 = fcmp fast oeq float %6916, %6915
  br i1 %6920, label %7224, label %6922

; <label>:6921                                    ; preds = %6914
  br i1 %6885, label %7224, label %6922

; <label>:6922                                    ; preds = %6921, %6919
  %6923 = phi float [ %6854, %6921 ], [ %6915, %6919 ]
  %6924 = phi float [ 0.000000e+00, %6921 ], [ %6916, %6919 ]
  %6925 = icmp ne i32 %6873, 0
  %6926 = fmul fast float %6923, %2129
  %6927 = fadd fast float %6926, %6867
  %6928 = fmul fast float %6927, %6923
  %6929 = select i1 %6925, float 0.000000e+00, float %6928
  %6930 = fcmp fast oeq float %2129, 0.000000e+00
  %6931 = fdiv fast float %6872, %2129
  %6932 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6931)  ; FMax(a,b)
  %6933 = select i1 %6930, float %6923, float %6932
  %6934 = call float @dx.op.binary.f32(i32 36, float %6923, float %6933)  ; FMin(a,b)
  %6935 = fcmp fast ogt float %2129, 0.000000e+00
  %6936 = fcmp fast olt float %6872, 0.000000e+00
  br i1 %6935, label %6937, label %6994

; <label>:6937                                    ; preds = %6922
  %6938 = icmp eq i32 %6873, 0
  br i1 %6936, label %6939, label %6983

; <label>:6939                                    ; preds = %6937
  %6940 = select i1 %6938, float %6923, float 0.000000e+00
  %6941 = fsub fast float -0.000000e+00, %6940
  %6942 = call float @dx.op.unary.f32(i32 6, float %6941)  ; FAbs(value)
  %6943 = fmul fast float %6940, %2129
  %6944 = fadd fast float %6943, %6867
  %6945 = fmul fast float %6942, %6944
  %6946 = fsub fast float %6929, %6945
  %6947 = fsub fast float %6923, %6942
  %6948 = select i1 %6938, float %6947, float 0.000000e+00
  %6949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6950 = extractvalue %dx.types.CBufRet.f32 %6949, 0
  %6951 = extractvalue %dx.types.CBufRet.f32 %6949, 1
  %6952 = extractvalue %dx.types.CBufRet.f32 %6949, 2
  %6953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6954 = extractvalue %dx.types.CBufRet.f32 %6953, 0
  %6955 = extractvalue %dx.types.CBufRet.f32 %6953, 1
  %6956 = extractvalue %dx.types.CBufRet.f32 %6953, 2
  %6957 = extractvalue %dx.types.CBufRet.f32 %6953, 3
  %6958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6959 = extractvalue %dx.types.CBufRet.f32 %6958, 3
  %6960 = call float @dx.op.binary.f32(i32 36, float %6946, float %6959)  ; FMin(a,b)
  %6961 = fmul fast float %6957, %6948
  %6962 = call float @dx.op.unary.f32(i32 7, float %6961)  ; Saturate(value)
  %6963 = fsub fast float %6954, %6950
  %6964 = fsub fast float %6955, %6951
  %6965 = fsub fast float %6956, %6952
  %6966 = fmul fast float %6962, %6963
  %6967 = fmul fast float %6962, %6964
  %6968 = fmul fast float %6962, %6965
  %6969 = fadd fast float %6966, %6950
  %6970 = fadd fast float %6967, %6951
  %6971 = fadd fast float %6968, %6952
  %6972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6973 = extractvalue %dx.types.CBufRet.f32 %6972, 0
  %6974 = extractvalue %dx.types.CBufRet.f32 %6972, 1
  %6975 = fadd fast float %6974, %6973
  %6976 = call float @dx.op.unary.f32(i32 7, float %6975)  ; Saturate(value)
  %6977 = extractvalue %dx.types.CBufRet.f32 %6972, 2
  %6978 = extractvalue %dx.types.CBufRet.f32 %6972, 3
  %6979 = fadd fast float %6978, %6977
  %6980 = call float @dx.op.unary.f32(i32 7, float %6979)  ; Saturate(value)
  %6981 = fmul fast float %6976, %6960
  %6982 = fmul fast float %6981, %6980
  br label %7224

; <label>:6983                                    ; preds = %6937
  br i1 %6938, label %6984, label %7005

; <label>:6984                                    ; preds = %6983
  %6985 = call float @dx.op.binary.f32(i32 36, float %6934, float %6924)  ; FMin(a,b)
  %6986 = fsub fast float %6934, %6985
  %6987 = fsub fast float %6986, %6923
  %6988 = call float @dx.op.unary.f32(i32 6, float %6987)  ; FAbs(value)
  %6989 = fadd fast float %6986, %6923
  %6990 = fmul fast float %6989, %2129
  %6991 = fadd fast float %6990, %6867
  %6992 = fmul fast float %6991, %6988
  %6993 = fsub fast float %6929, %6992
  br label %7005

; <label>:6994                                    ; preds = %6922
  br i1 %6936, label %6995, label %7005

; <label>:6995                                    ; preds = %6994
  %6996 = call float @dx.op.binary.f32(i32 35, float %6924, float %6934)  ; FMax(a,b)
  %6997 = icmp eq i32 %6873, 0
  %6998 = select i1 %6997, float %6934, float 0.000000e+00
  %6999 = fsub fast float -0.000000e+00, %6998
  %7000 = call float @dx.op.unary.f32(i32 6, float %6999)  ; FAbs(value)
  %7001 = fmul fast float %6998, %2129
  %7002 = fadd fast float %7001, %6867
  %7003 = fmul fast float %7000, %7002
  %7004 = fsub fast float %6929, %7003
  br label %7005

; <label>:7005                                    ; preds = %6995, %6994, %6984, %6983
  %7006 = phi float [ %6924, %6983 ], [ %6924, %6984 ], [ %6996, %6995 ], [ %6924, %6994 ]
  %7007 = phi float [ 0.000000e+00, %6983 ], [ %6988, %6984 ], [ %7000, %6995 ], [ 0.000000e+00, %6994 ]
  %7008 = phi float [ %6929, %6983 ], [ %6993, %6984 ], [ %7004, %6995 ], [ %6929, %6994 ]
  %7009 = phi float [ %6934, %6983 ], [ %6934, %6984 ], [ %6923, %6995 ], [ %6923, %6994 ]
  %7010 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 0
  store float -1.000000e+00, float* %7010, align 4, !tbaa !101, !noalias !159
  %7011 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 1
  store float -1.000000e+00, float* %7011, align 4, !tbaa !101, !noalias !159
  %7012 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 2
  store float -1.000000e+00, float* %7012, align 4, !tbaa !101, !noalias !159
  %7013 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 0
  store float -1.000000e+00, float* %7013, align 4, !tbaa !101, !noalias !159
  %7014 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 1
  store float -1.000000e+00, float* %7014, align 4, !tbaa !101, !noalias !159
  %7015 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 2
  store float -1.000000e+00, float* %7015, align 4, !tbaa !101, !noalias !159
  %7016 = icmp sgt i32 %6875, 0
  br i1 %7016, label %7017, label %7078

; <label>:7017                                    ; preds = %7005
  br label %7018

; <label>:7018                                    ; preds = %7067, %7017
  %7019 = phi i32 [ %7068, %7067 ], [ 0, %7017 ]
  %7020 = phi i32 [ %7069, %7067 ], [ 0, %7017 ]
  %7021 = add nuw i32 %7020, 171
  %7022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %7021)  ; CBufferLoadLegacy(handle,regIndex)
  %7023 = extractvalue %dx.types.CBufRet.f32 %7022, 0
  %7024 = extractvalue %dx.types.CBufRet.f32 %7022, 1
  %7025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7026 = extractvalue %dx.types.CBufRet.f32 %7025, 0
  %7027 = extractvalue %dx.types.CBufRet.f32 %7025, 1
  %7028 = fsub fast float %7023, %7026
  %7029 = fsub fast float %7024, %7027
  %7030 = extractvalue %dx.types.CBufRet.f32 %7022, 2
  %7031 = fsub fast float -0.000000e+00, %7028
  %7032 = fsub fast float -0.000000e+00, %7029
  %7033 = call float @dx.op.dot2.f32(i32 54, float %2127, float %2128, float %7031, float %7032)  ; Dot2(ax,ay,bx,by)
  %7034 = fmul fast float %7033, 2.000000e+00
  %7035 = call float @dx.op.dot2.f32(i32 54, float %7031, float %7032, float %7031, float %7032)  ; Dot2(ax,ay,bx,by)
  %7036 = fmul fast float %7030, %7030
  %7037 = fsub fast float %7035, %7036
  %7038 = fmul fast float %7034, %7034
  %7039 = fmul fast float %6895, %7037
  %7040 = fsub fast float %7038, %7039
  %7041 = fcmp fast ogt float %7040, 0.000000e+00
  br i1 %7041, label %7042, label %7057

; <label>:7042                                    ; preds = %7018
  %7043 = fcmp fast ogt float %7034, 0.000000e+00
  %7044 = call float @dx.op.unary.f32(i32 24, float %7040)  ; Sqrt(value)
  %7045 = fsub fast float -0.000000e+00, %7044
  %7046 = select i1 %7043, float %7044, float %7045
  %7047 = fadd fast float %7046, %7034
  %7048 = fmul float %7047, -5.000000e-01
  %7049 = fdiv fast float %7048, %6888
  %7050 = call float @dx.op.binary.f32(i32 35, float %7049, float 0.000000e+00)  ; FMax(a,b)
  %7051 = call float @dx.op.binary.f32(i32 36, float %6923, float %7050)  ; FMin(a,b)
  %7052 = fdiv fast float %7037, %7048
  %7053 = call float @dx.op.binary.f32(i32 35, float %7052, float 0.000000e+00)  ; FMax(a,b)
  %7054 = call float @dx.op.binary.f32(i32 36, float %6923, float %7053)  ; FMin(a,b)
  %7055 = call float @dx.op.binary.f32(i32 36, float %7051, float %7054)  ; FMin(a,b)
  %7056 = call float @dx.op.binary.f32(i32 35, float %7051, float %7054)  ; FMax(a,b)
  br label %7057

; <label>:7057                                    ; preds = %7042, %7018
  %7058 = phi float [ %7056, %7042 ], [ -1.000000e+00, %7018 ]
  %7059 = phi float [ %7055, %7042 ], [ -1.000000e+00, %7018 ]
  %7060 = phi i1 [ true, %7042 ], [ false, %7018 ]
  br i1 %7060, label %7061, label %7067

; <label>:7061                                    ; preds = %7057
  %7062 = call float @dx.op.binary.f32(i32 35, float %7006, float %7059)  ; FMax(a,b)
  %7063 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7020
  store float %7062, float* %7063, align 4, !tbaa !101, !noalias !159
  %7064 = call float @dx.op.binary.f32(i32 35, float %7006, float %7058)  ; FMax(a,b)
  %7065 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %7020
  store float %7064, float* %7065, align 4, !tbaa !101, !noalias !159
  %7066 = add nsw i32 %7019, 1
  br label %7067

; <label>:7067                                    ; preds = %7061, %7057
  %7068 = phi i32 [ %7066, %7061 ], [ %7019, %7057 ]
  %7069 = add nuw nsw i32 %7020, 1
  %7070 = icmp eq i32 %7069, %6875
  br i1 %7070, label %7071, label %7018

; <label>:7071                                    ; preds = %7067
  %7072 = load float, float* %7012, align 4, !tbaa !101, !alias.scope !175, !noalias !178
  %7073 = load float, float* %7011, align 4, !tbaa !101, !alias.scope !181, !noalias !182
  %7074 = load float, float* %7010, align 4, !tbaa !101, !alias.scope !183, !noalias !184
  %7075 = load float, float* %7015, align 4, !tbaa !101, !alias.scope !185, !noalias !188
  %7076 = load float, float* %7014, align 4, !tbaa !101, !alias.scope !191, !noalias !192
  %7077 = load float, float* %7013, align 4, !tbaa !101, !alias.scope !193, !noalias !194
  br label %7078

; <label>:7078                                    ; preds = %7071, %7005
  %7079 = phi float [ -1.000000e+00, %7005 ], [ %7077, %7071 ]
  %7080 = phi float [ -1.000000e+00, %7005 ], [ %7076, %7071 ]
  %7081 = phi float [ -1.000000e+00, %7005 ], [ %7075, %7071 ]
  %7082 = phi float [ -1.000000e+00, %7005 ], [ %7074, %7071 ]
  %7083 = phi float [ -1.000000e+00, %7005 ], [ %7073, %7071 ]
  %7084 = phi float [ -1.000000e+00, %7005 ], [ %7072, %7071 ]
  %7085 = phi i32 [ 0, %7005 ], [ %7068, %7071 ]
  %7086 = call float @dx.op.binary.f32(i32 36, float %7083, float %7084)  ; FMin(a,b)
  %7087 = call float @dx.op.binary.f32(i32 36, float %7082, float %7086)  ; FMin(a,b)
  %7088 = call float @dx.op.binary.f32(i32 35, float %7082, float %7083)  ; FMax(a,b)
  %7089 = call float @dx.op.binary.f32(i32 36, float %7088, float %7084)  ; FMin(a,b)
  %7090 = call float @dx.op.binary.f32(i32 36, float %7082, float %7083)  ; FMin(a,b)
  %7091 = call float @dx.op.binary.f32(i32 35, float %7090, float %7089)  ; FMax(a,b)
  %7092 = call float @dx.op.binary.f32(i32 35, float %7083, float %7084)  ; FMax(a,b)
  %7093 = call float @dx.op.binary.f32(i32 35, float %7082, float %7092)  ; FMax(a,b)
  store float %7087, float* %7010, align 4, !tbaa !101, !alias.scope !183, !noalias !184
  store float %7091, float* %7011, align 4, !tbaa !101, !alias.scope !181, !noalias !182
  store float %7093, float* %7012, align 4, !tbaa !101, !alias.scope !175, !noalias !178
  %7094 = call float @dx.op.binary.f32(i32 36, float %7080, float %7081)  ; FMin(a,b)
  %7095 = call float @dx.op.binary.f32(i32 36, float %7079, float %7094)  ; FMin(a,b)
  %7096 = call float @dx.op.binary.f32(i32 35, float %7079, float %7080)  ; FMax(a,b)
  %7097 = call float @dx.op.binary.f32(i32 36, float %7096, float %7081)  ; FMin(a,b)
  %7098 = call float @dx.op.binary.f32(i32 36, float %7079, float %7080)  ; FMin(a,b)
  %7099 = call float @dx.op.binary.f32(i32 35, float %7098, float %7097)  ; FMax(a,b)
  %7100 = call float @dx.op.binary.f32(i32 35, float %7080, float %7081)  ; FMax(a,b)
  %7101 = call float @dx.op.binary.f32(i32 35, float %7079, float %7100)  ; FMax(a,b)
  store float %7095, float* %7013, align 4, !tbaa !101, !alias.scope !193, !noalias !194
  store float %7099, float* %7014, align 4, !tbaa !101, !alias.scope !191, !noalias !192
  store float %7101, float* %7015, align 4, !tbaa !101, !alias.scope !185, !noalias !188
  %7102 = sub nsw i32 3, %7085
  %7103 = icmp sgt i32 %7102, 2
  br i1 %7103, label %7104, label %7142

; <label>:7104                                    ; preds = %7078
  %7105 = icmp eq i32 %6873, 0
  %7106 = fsub fast float %6923, %7007
  %7107 = select i1 %7105, float %7106, float %7007
  %7108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7109 = extractvalue %dx.types.CBufRet.f32 %7108, 0
  %7110 = extractvalue %dx.types.CBufRet.f32 %7108, 1
  %7111 = extractvalue %dx.types.CBufRet.f32 %7108, 2
  %7112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7113 = extractvalue %dx.types.CBufRet.f32 %7112, 0
  %7114 = extractvalue %dx.types.CBufRet.f32 %7112, 1
  %7115 = extractvalue %dx.types.CBufRet.f32 %7112, 2
  %7116 = extractvalue %dx.types.CBufRet.f32 %7112, 3
  %7117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7118 = extractvalue %dx.types.CBufRet.f32 %7117, 3
  %7119 = call float @dx.op.binary.f32(i32 36, float %7008, float %7118)  ; FMin(a,b)
  %7120 = fmul fast float %7116, %7107
  %7121 = call float @dx.op.unary.f32(i32 7, float %7120)  ; Saturate(value)
  %7122 = fsub fast float %7113, %7109
  %7123 = fsub fast float %7114, %7110
  %7124 = fsub fast float %7115, %7111
  %7125 = fmul fast float %7121, %7122
  %7126 = fmul fast float %7121, %7123
  %7127 = fmul fast float %7121, %7124
  %7128 = fadd fast float %7125, %7109
  %7129 = fadd fast float %7126, %7110
  %7130 = fadd fast float %7127, %7111
  %7131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7132 = extractvalue %dx.types.CBufRet.f32 %7131, 0
  %7133 = extractvalue %dx.types.CBufRet.f32 %7131, 1
  %7134 = fadd fast float %7133, %7132
  %7135 = call float @dx.op.unary.f32(i32 7, float %7134)  ; Saturate(value)
  %7136 = extractvalue %dx.types.CBufRet.f32 %7131, 2
  %7137 = extractvalue %dx.types.CBufRet.f32 %7131, 3
  %7138 = fadd fast float %7137, %7136
  %7139 = call float @dx.op.unary.f32(i32 7, float %7138)  ; Saturate(value)
  %7140 = fmul fast float %7135, %7119
  %7141 = fmul fast float %7140, %7139
  br label %7224

; <label>:7142                                    ; preds = %7078
  %7143 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7102
  %7144 = load float, float* %7143, align 4, !tbaa !101, !noalias !159
  %7145 = fcmp fast olt float %7144, %7009
  %7146 = icmp sgt i32 %7085, 0
  %7147 = and i1 %7146, %7145
  br i1 %7147, label %7148, label %7185

; <label>:7148                                    ; preds = %7142
  br label %7149

; <label>:7149                                    ; preds = %7178, %7148
  %7150 = phi float [ %7179, %7178 ], [ %7007, %7148 ]
  %7151 = phi float [ %7180, %7178 ], [ %7008, %7148 ]
  %7152 = phi float [ %7160, %7178 ], [ %7144, %7148 ]
  %7153 = phi i32 [ %7157, %7178 ], [ %7102, %7148 ]
  %7154 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %7153
  %7155 = load float, float* %7154, align 4, !tbaa !101, !noalias !159
  %7156 = icmp slt i32 %7153, 2
  %7157 = add nsw i32 %7153, 1
  %7158 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7157
  %7159 = load float, float* %7158, align 4, !tbaa !101, !noalias !159
  %7160 = select i1 %7156, float %7159, float %6923
  %7161 = call float @dx.op.binary.f32(i32 36, float %7160, float %7155)  ; FMin(a,b)
  %7162 = call float @dx.op.binary.f32(i32 36, float %7009, float %7161)  ; FMin(a,b)
  %7163 = icmp eq i32 %6873, 0
  %7164 = fadd fast float %7162, %7152
  %7165 = fmul fast float %7164, %2129
  %7166 = fadd fast float %7165, %6867
  br i1 %7163, label %7172, label %7167

; <label>:7167                                    ; preds = %7149
  %7168 = fsub fast float %7162, %7152
  %7169 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7168)  ; FMax(a,b)
  %7170 = fmul fast float %7169, %7166
  %7171 = fadd fast float %7170, %7151
  br label %7178

; <label>:7172                                    ; preds = %7149
  %7173 = fsub fast float %7152, %7162
  %7174 = call float @dx.op.unary.f32(i32 6, float %7173)  ; FAbs(value)
  %7175 = fadd fast float %7174, %7150
  %7176 = fmul fast float %7174, %7166
  %7177 = fsub fast float %7151, %7176
  br label %7178

; <label>:7178                                    ; preds = %7172, %7167
  %7179 = phi float [ %7169, %7167 ], [ %7175, %7172 ]
  %7180 = phi float [ %7171, %7167 ], [ %7177, %7172 ]
  %7181 = fcmp fast olt float %7160, %7009
  %7182 = icmp slt i32 %7157, 3
  %7183 = and i1 %7182, %7181
  br i1 %7183, label %7149, label %7184

; <label>:7184                                    ; preds = %7178
  br label %7185

; <label>:7185                                    ; preds = %7184, %7142
  %7186 = phi float [ %7007, %7142 ], [ %7179, %7184 ]
  %7187 = phi float [ %7008, %7142 ], [ %7180, %7184 ]
  %7188 = fsub fast float %6923, %7186
  %7189 = select i1 %6925, float %7186, float %7188
  %7190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7191 = extractvalue %dx.types.CBufRet.f32 %7190, 0
  %7192 = extractvalue %dx.types.CBufRet.f32 %7190, 1
  %7193 = extractvalue %dx.types.CBufRet.f32 %7190, 2
  %7194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7195 = extractvalue %dx.types.CBufRet.f32 %7194, 0
  %7196 = extractvalue %dx.types.CBufRet.f32 %7194, 1
  %7197 = extractvalue %dx.types.CBufRet.f32 %7194, 2
  %7198 = extractvalue %dx.types.CBufRet.f32 %7194, 3
  %7199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7200 = extractvalue %dx.types.CBufRet.f32 %7199, 3
  %7201 = call float @dx.op.binary.f32(i32 36, float %7187, float %7200)  ; FMin(a,b)
  %7202 = fmul fast float %7198, %7189
  %7203 = call float @dx.op.unary.f32(i32 7, float %7202)  ; Saturate(value)
  %7204 = fsub fast float %7195, %7191
  %7205 = fsub fast float %7196, %7192
  %7206 = fsub fast float %7197, %7193
  %7207 = fmul fast float %7203, %7204
  %7208 = fmul fast float %7203, %7205
  %7209 = fmul fast float %7203, %7206
  %7210 = fadd fast float %7207, %7191
  %7211 = fadd fast float %7208, %7192
  %7212 = fadd fast float %7209, %7193
  %7213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7214 = extractvalue %dx.types.CBufRet.f32 %7213, 0
  %7215 = extractvalue %dx.types.CBufRet.f32 %7213, 1
  %7216 = fadd fast float %7215, %7214
  %7217 = call float @dx.op.unary.f32(i32 7, float %7216)  ; Saturate(value)
  %7218 = extractvalue %dx.types.CBufRet.f32 %7213, 2
  %7219 = extractvalue %dx.types.CBufRet.f32 %7213, 3
  %7220 = fadd fast float %7219, %7218
  %7221 = call float @dx.op.unary.f32(i32 7, float %7220)  ; Saturate(value)
  %7222 = fmul fast float %7217, %7201
  %7223 = fmul fast float %7222, %7221
  br label %7224

; <label>:7224                                    ; preds = %7185, %7104, %6939, %6921, %6919
  %7225 = phi float [ %6948, %6939 ], [ %7107, %7104 ], [ %7189, %7185 ], [ 0.000000e+00, %6919 ], [ 0.000000e+00, %6921 ]
  %7226 = phi float [ %6982, %6939 ], [ %7141, %7104 ], [ %7223, %7185 ], [ 0.000000e+00, %6919 ], [ 0.000000e+00, %6921 ]
  %7227 = phi float [ %6969, %6939 ], [ %7128, %7104 ], [ %7210, %7185 ], [ 0.000000e+00, %6919 ], [ 0.000000e+00, %6921 ]
  %7228 = phi float [ %6970, %6939 ], [ %7129, %7104 ], [ %7211, %7185 ], [ 0.000000e+00, %6919 ], [ 0.000000e+00, %6921 ]
  %7229 = phi float [ %6971, %6939 ], [ %7130, %7104 ], [ %7212, %7185 ], [ 0.000000e+00, %6919 ], [ 0.000000e+00, %6921 ]
  %7230 = fmul fast float %6862, %7226
  %7231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7232 = extractvalue %dx.types.CBufRet.f32 %7231, 2
  %7233 = fsub fast float %6869, %7232
  %7234 = fcmp fast olt float %7230, -2.000000e+01
  %7235 = call float @dx.op.unary.f32(i32 21, float %7230)  ; Exp(value)
  %7236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7237 = extractvalue %dx.types.CBufRet.f32 %7236, 2
  %7238 = extractvalue %dx.types.CBufRet.f32 %7236, 3
  %7239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7240 = extractvalue %dx.types.CBufRet.f32 %7239, 2
  %7241 = fmul fast float %7238, %7233
  %7242 = call float @dx.op.unary.f32(i32 7, float %7241)  ; Saturate(value)
  %7243 = fsub fast float 1.000000e+00, %7242
  %7244 = fmul fast float %2129, 5.000000e-01
  %7245 = fadd fast float %7244, 5.000000e-01
  %7246 = call float @dx.op.unary.f32(i32 7, float %7245)  ; Saturate(value)
  %7247 = fsub fast float 1.000000e+00, %7246
  %7248 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7243)  ; FMax(a,b)
  %7249 = fdiv fast float %7247, %7248
  %7250 = fsub fast float %7233, %146
  %7251 = call float @dx.op.unary.f32(i32 6, float %7250)  ; FAbs(value)
  %7252 = fmul fast float %7251, %7237
  %7253 = call float @dx.op.unary.f32(i32 7, float %7249)  ; Saturate(value)
  %7254 = fsub fast float 1.000000e+00, %7252
  %7255 = fmul fast float %7254, %7253
  %7256 = fadd fast float %7255, %7252
  %7257 = fmul fast float %7240, %7233
  %7258 = call float @dx.op.unary.f32(i32 7, float %7257)  ; Saturate(value)
  %7259 = fsub fast float 1.000000e+00, %7256
  %7260 = fmul fast float %7259, %7258
  %7261 = fadd fast float %7260, %7256
  %7262 = call float @dx.op.unary.f32(i32 7, float %7261)  ; Saturate(value)
  %7263 = fadd fast float %7235, -1.000000e+00
  %7264 = select i1 %7234, float -1.000000e+00, float %7263
  %7265 = fmul fast float %7262, %7264
  %7266 = fadd fast float %7265, 1.000000e+00
  %7267 = fsub fast float -0.000000e+00, %7265
  %7268 = fmul fast float %7227, %7267
  %7269 = fmul fast float %7228, %7267
  %7270 = fmul fast float %7229, %7267
  br label %7271

; <label>:7271                                    ; preds = %7224, %6825
  %7272 = phi float [ %7225, %7224 ], [ 0.000000e+00, %6825 ]
  %7273 = phi float [ %7266, %7224 ], [ 1.000000e+00, %6825 ]
  %7274 = phi float [ %7268, %7224 ], [ 0.000000e+00, %6825 ]
  %7275 = phi float [ %7269, %7224 ], [ 0.000000e+00, %6825 ]
  %7276 = phi float [ %7270, %7224 ], [ 0.000000e+00, %6825 ]
  %7277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7278 = extractvalue %dx.types.CBufRet.f32 %7277, 1
  %7279 = fsub fast float 1.000000e+00, %7273
  %7280 = fmul fast float %7279, %6855
  %7281 = fmul fast float %7280, %7278
  %7282 = fsub fast float %6855, %7281
  br i1 %6853, label %7283, label %7312, !dx.controlflow.hints !195

; <label>:7283                                    ; preds = %7271
  %7284 = fmul fast float %6856, %6850
  %7285 = fadd fast float %7284, %6851
  %7286 = call float @dx.op.unary.f32(i32 7, float %7285)  ; Saturate(value)
  %7287 = fmul fast float %6832, %7282
  %7288 = fsub fast float -0.000000e+00, %7287
  %7289 = fmul fast float %6833, %7282
  %7290 = fsub fast float -0.000000e+00, %7289
  %7291 = call float @dx.op.unary.f32(i32 21, float %7288)  ; Exp(value)
  %7292 = call float @dx.op.unary.f32(i32 21, float %7290)  ; Exp(value)
  %7293 = call float @dx.op.binary.f32(i32 35, float %6840, float %7291)  ; FMax(a,b)
  %7294 = call float @dx.op.binary.f32(i32 35, float %6840, float %7292)  ; FMax(a,b)
  %7295 = fsub fast float %7294, %7293
  %7296 = fmul fast float %7295, %7286
  %7297 = fadd fast float %7296, %7293
  %7298 = call float @dx.op.unary.f32(i32 7, float %7297)  ; Saturate(value)
  %7299 = fsub fast float %6837, %6842
  %7300 = fsub fast float %6838, %6843
  %7301 = fsub fast float %6839, %6844
  %7302 = fmul fast float %7286, %7299
  %7303 = fmul fast float %7286, %7300
  %7304 = fmul fast float %7286, %7301
  %7305 = fadd fast float %7302, %6842
  %7306 = fadd fast float %7303, %6843
  %7307 = fadd fast float %7304, %6844
  %7308 = fsub fast float 1.000000e+00, %7298
  %7309 = fmul fast float %7308, %7305
  %7310 = fmul fast float %7308, %7306
  %7311 = fmul fast float %7308, %7307
  br label %7371

; <label>:7312                                    ; preds = %7271
  %7313 = fmul fast float %7282, %6849
  %7314 = call float @dx.op.unary.f32(i32 7, float %7313)  ; Saturate(value)
  %7315 = fsub fast float 2.000000e+00, %7314
  %7316 = fmul fast float %7314, 9.921875e-01
  %7317 = fmul fast float %7316, %7315
  %7318 = fadd fast float %7317, 3.906250e-03
  %7319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %7318, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7320 = extractvalue %dx.types.ResRet.f32 %7319, 0
  %7321 = fsub fast float %7314, %7320
  %7322 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7321)  ; FMax(a,b)
  %7323 = fmul fast float %6835, %146
  %7324 = call float @dx.op.unary.f32(i32 6, float %7323)  ; FAbs(value)
  %7325 = fcmp fast ogt float %7324, 0x3EB0C6F7A0000000
  br i1 %7325, label %7326, label %7332, !dx.controlflow.hints !196

; <label>:7326                                    ; preds = %7312
  %7327 = fmul fast float %7323, 0xBFF7154760000000
  %7328 = call float @dx.op.unary.f32(i32 21, float %7327)  ; Exp(value)
  %7329 = fsub fast float 1.000000e+00, %7328
  %7330 = fdiv fast float %7329, %7323
  %7331 = fmul fast float %7330, %6845
  br label %7332

; <label>:7332                                    ; preds = %7326, %7312
  %7333 = phi float [ %7331, %7326 ], [ %6845, %7312 ]
  %7334 = fadd fast float %7333, %6847
  %7335 = fmul fast float %7334, %7322
  %7336 = fmul fast float %6832, %7335
  %7337 = fsub fast float -0.000000e+00, %7336
  %7338 = fmul fast float %6833, %7335
  %7339 = fsub fast float -0.000000e+00, %7338
  %7340 = fmul fast float %6834, %7335
  %7341 = fsub fast float -0.000000e+00, %7340
  %7342 = call float @dx.op.unary.f32(i32 21, float %7337)  ; Exp(value)
  %7343 = call float @dx.op.unary.f32(i32 21, float %7339)  ; Exp(value)
  %7344 = call float @dx.op.unary.f32(i32 21, float %7341)  ; Exp(value)
  %7345 = fmul fast float %6856, %6856
  %7346 = fadd fast float %7345, 1.000000e+00
  %7347 = fmul fast float %7346, 0x3FAE8EC8A0000000
  %7348 = fmul fast float %7347, %6842
  %7349 = fmul fast float %7347, %6843
  %7350 = fmul fast float %7347, %6844
  %7351 = fmul fast float %6856, %6840
  %7352 = fsub fast float 1.000000e+00, %7351
  %7353 = fmul fast float %6840, %6840
  %7354 = fsub fast float 1.000000e+00, %7353
  %7355 = fmul fast float %7354, 0x3FB45F3060000000
  %7356 = fmul fast float %7352, %7352
  %7357 = fdiv fast float 1.000000e+00, %7356
  %7358 = fmul fast float %7355, %7357
  %7359 = fmul fast float %7358, %6837
  %7360 = fmul fast float %7358, %6838
  %7361 = fmul fast float %7358, %6839
  %7362 = fadd fast float %7359, %7348
  %7363 = fadd fast float %7360, %7349
  %7364 = fadd fast float %7361, %7350
  %7365 = fsub fast float 1.000000e+00, %7342
  %7366 = fsub fast float 1.000000e+00, %7343
  %7367 = fsub fast float 1.000000e+00, %7344
  %7368 = fmul fast float %7362, %7365
  %7369 = fmul fast float %7363, %7366
  %7370 = fmul fast float %7364, %7367
  br label %7371

; <label>:7371                                    ; preds = %7332, %7283
  %7372 = phi float [ %7309, %7283 ], [ %7368, %7332 ]
  %7373 = phi float [ %7310, %7283 ], [ %7369, %7332 ]
  %7374 = phi float [ %7311, %7283 ], [ %7370, %7332 ]
  %7375 = phi float [ %7298, %7283 ], [ %7342, %7332 ]
  %7376 = phi float [ %7298, %7283 ], [ %7343, %7332 ]
  %7377 = phi float [ %7298, %7283 ], [ %7344, %7332 ]
  br i1 %6864, label %7378, label %7576, !dx.controlflow.hints !197

; <label>:7378                                    ; preds = %7371
  %7379 = extractvalue %dx.types.CBufRet.f32 %7277, 0
  %7380 = fmul fast float %7379, %7279
  %7381 = fsub fast float %7274, %7372
  %7382 = fsub fast float %7275, %7373
  %7383 = fsub fast float %7276, %7374
  %7384 = fmul fast float %7380, %7381
  %7385 = fmul fast float %7380, %7382
  %7386 = fmul fast float %7380, %7383
  %7387 = fadd fast float %7384, %7372
  %7388 = fadd fast float %7385, %7373
  %7389 = fadd fast float %7386, %7374
  %7390 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7375)  ; FMax(a,b)
  %7391 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7376)  ; FMax(a,b)
  %7392 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7377)  ; FMax(a,b)
  %7393 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7273)  ; FMax(a,b)
  %7394 = call float @dx.op.binary.f32(i32 35, float %7272, float %7282)  ; FMax(a,b)
  %7395 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7394)  ; FMax(a,b)
  %7396 = fdiv fast float %7272, %7395
  %7397 = call float @dx.op.unary.f32(i32 7, float %7396)  ; Saturate(value)
  %7398 = fdiv fast float %7282, %7395
  %7399 = call float @dx.op.unary.f32(i32 7, float %7398)  ; Saturate(value)
  %7400 = fcmp fast une float %7393, 1.000000e+00
  br i1 %7400, label %7401, label %7414, !dx.controlflow.hints !198

; <label>:7401                                    ; preds = %7378
  %7402 = call float @dx.op.unary.f32(i32 23, float %7393)  ; Log(value)
  %7403 = fmul fast float %7402, 0x3FE62E4300000000
  %7404 = fmul fast float %7274, %7403
  %7405 = fsub fast float -0.000000e+00, %7404
  %7406 = fmul fast float %7275, %7403
  %7407 = fsub fast float -0.000000e+00, %7406
  %7408 = fmul fast float %7276, %7403
  %7409 = fsub fast float -0.000000e+00, %7408
  %7410 = fsub fast float 1.000000e+00, %7393
  %7411 = fdiv fast float %7405, %7410
  %7412 = fdiv fast float %7407, %7410
  %7413 = fdiv fast float %7409, %7410
  br label %7414

; <label>:7414                                    ; preds = %7401, %7378
  %7415 = phi float [ %7411, %7401 ], [ %7274, %7378 ]
  %7416 = phi float [ %7412, %7401 ], [ %7275, %7378 ]
  %7417 = phi float [ %7413, %7401 ], [ %7276, %7378 ]
  %7418 = phi float [ %7403, %7401 ], [ 0.000000e+00, %7378 ]
  %7419 = fcmp fast une float %7390, 1.000000e+00
  br i1 %7419, label %7420, label %7427, !dx.controlflow.hints !199

; <label>:7420                                    ; preds = %7414
  %7421 = call float @dx.op.unary.f32(i32 23, float %7390)  ; Log(value)
  %7422 = fmul fast float %7421, 0x3FE62E4300000000
  %7423 = fmul fast float %7387, %7422
  %7424 = fsub fast float -0.000000e+00, %7423
  %7425 = fsub fast float 1.000000e+00, %7390
  %7426 = fdiv fast float %7424, %7425
  br label %7427

; <label>:7427                                    ; preds = %7420, %7414
  %7428 = phi float [ %7426, %7420 ], [ %7387, %7414 ]
  %7429 = phi float [ %7422, %7420 ], [ 0.000000e+00, %7414 ]
  %7430 = fcmp fast une float %7391, 1.000000e+00
  br i1 %7430, label %7431, label %7438, !dx.controlflow.hints !199

; <label>:7431                                    ; preds = %7427
  %7432 = call float @dx.op.unary.f32(i32 23, float %7391)  ; Log(value)
  %7433 = fmul fast float %7432, 0x3FE62E4300000000
  %7434 = fmul fast float %7388, %7433
  %7435 = fsub fast float -0.000000e+00, %7434
  %7436 = fsub fast float 1.000000e+00, %7391
  %7437 = fdiv fast float %7435, %7436
  br label %7438

; <label>:7438                                    ; preds = %7431, %7427
  %7439 = phi float [ %7437, %7431 ], [ %7388, %7427 ]
  %7440 = phi float [ %7433, %7431 ], [ 0.000000e+00, %7427 ]
  %7441 = fcmp fast une float %7392, 1.000000e+00
  br i1 %7441, label %7442, label %7449, !dx.controlflow.hints !199

; <label>:7442                                    ; preds = %7438
  %7443 = call float @dx.op.unary.f32(i32 23, float %7392)  ; Log(value)
  %7444 = fmul fast float %7443, 0x3FE62E4300000000
  %7445 = fmul fast float %7389, %7444
  %7446 = fsub fast float -0.000000e+00, %7445
  %7447 = fsub fast float 1.000000e+00, %7392
  %7448 = fdiv fast float %7446, %7447
  br label %7449

; <label>:7449                                    ; preds = %7442, %7438
  %7450 = phi float [ %7448, %7442 ], [ %7389, %7438 ]
  %7451 = phi float [ %7444, %7442 ], [ 0.000000e+00, %7438 ]
  %7452 = fmul fast float %7415, %7399
  %7453 = fmul fast float %7416, %7399
  %7454 = fmul fast float %7417, %7399
  %7455 = fmul fast float %7418, %7399
  %7456 = fmul fast float %7428, %7397
  %7457 = fmul fast float %7439, %7397
  %7458 = fmul fast float %7450, %7397
  %7459 = fmul fast float %7429, %7397
  %7460 = fmul fast float %7440, %7397
  %7461 = fmul fast float %7451, %7397
  %7462 = fadd fast float %7456, %7452
  %7463 = fadd fast float %7457, %7453
  %7464 = fadd fast float %7458, %7454
  %7465 = fadd fast float %7459, %7455
  %7466 = fadd fast float %7460, %7455
  %7467 = fadd fast float %7461, %7455
  %7468 = fcmp fast une float %7465, 0.000000e+00
  br i1 %7468, label %7469, label %7476, !dx.controlflow.hints !200

; <label>:7469                                    ; preds = %7449
  %7470 = fmul fast float %7465, 0x3FF7154760000000
  %7471 = call float @dx.op.unary.f32(i32 21, float %7470)  ; Exp(value)
  %7472 = fsub fast float 1.000000e+00, %7471
  %7473 = fmul fast float %7462, %7472
  %7474 = fsub fast float -0.000000e+00, %7473
  %7475 = fdiv fast float %7474, %7465
  br label %7476

; <label>:7476                                    ; preds = %7469, %7449
  %7477 = phi float [ %7471, %7469 ], [ 1.000000e+00, %7449 ]
  %7478 = phi float [ %7475, %7469 ], [ %7462, %7449 ]
  %7479 = fcmp fast une float %7466, 0.000000e+00
  br i1 %7479, label %7480, label %7487, !dx.controlflow.hints !200

; <label>:7480                                    ; preds = %7476
  %7481 = fmul fast float %7466, 0x3FF7154760000000
  %7482 = call float @dx.op.unary.f32(i32 21, float %7481)  ; Exp(value)
  %7483 = fsub fast float 1.000000e+00, %7482
  %7484 = fmul fast float %7463, %7483
  %7485 = fsub fast float -0.000000e+00, %7484
  %7486 = fdiv fast float %7485, %7466
  br label %7487

; <label>:7487                                    ; preds = %7480, %7476
  %7488 = phi float [ %7482, %7480 ], [ 1.000000e+00, %7476 ]
  %7489 = phi float [ %7486, %7480 ], [ %7463, %7476 ]
  %7490 = fcmp fast une float %7467, 0.000000e+00
  br i1 %7490, label %7491, label %7498, !dx.controlflow.hints !200

; <label>:7491                                    ; preds = %7487
  %7492 = fmul fast float %7467, 0x3FF7154760000000
  %7493 = call float @dx.op.unary.f32(i32 21, float %7492)  ; Exp(value)
  %7494 = fsub fast float 1.000000e+00, %7493
  %7495 = fmul fast float %7464, %7494
  %7496 = fsub fast float -0.000000e+00, %7495
  %7497 = fdiv fast float %7496, %7467
  br label %7498

; <label>:7498                                    ; preds = %7491, %7487
  %7499 = phi float [ %7493, %7491 ], [ 1.000000e+00, %7487 ]
  %7500 = phi float [ %7497, %7491 ], [ %7464, %7487 ]
  %7501 = fcmp fast ogt float %7397, %7399
  br i1 %7501, label %7502, label %7522

; <label>:7502                                    ; preds = %7498
  %7503 = fsub fast float 1.000000e+00, %7399
  %7504 = fmul fast float %7415, %7503
  %7505 = fmul fast float %7416, %7503
  %7506 = fmul fast float %7417, %7503
  %7507 = fmul fast float %7418, %7503
  %7508 = fcmp fast une float %7507, 0.000000e+00
  br i1 %7508, label %7509, label %7560, !dx.controlflow.hints !201

; <label>:7509                                    ; preds = %7502
  %7510 = fmul fast float %7507, 0x3FF7154760000000
  %7511 = call float @dx.op.unary.f32(i32 21, float %7510)  ; Exp(value)
  %7512 = fsub fast float 1.000000e+00, %7511
  %7513 = fmul fast float %7504, %7512
  %7514 = fsub fast float -0.000000e+00, %7513
  %7515 = fmul fast float %7505, %7512
  %7516 = fsub fast float -0.000000e+00, %7515
  %7517 = fmul fast float %7506, %7512
  %7518 = fsub fast float -0.000000e+00, %7517
  %7519 = fdiv fast float %7514, %7507
  %7520 = fdiv fast float %7516, %7507
  %7521 = fdiv fast float %7518, %7507
  br label %7560

; <label>:7522                                    ; preds = %7498
  %7523 = fsub fast float 1.000000e+00, %7397
  %7524 = fmul fast float %7428, %7523
  %7525 = fmul fast float %7439, %7523
  %7526 = fmul fast float %7450, %7523
  %7527 = fmul fast float %7429, %7523
  %7528 = fmul fast float %7440, %7523
  %7529 = fmul fast float %7451, %7523
  %7530 = fcmp fast une float %7527, 0.000000e+00
  br i1 %7530, label %7531, label %7538, !dx.controlflow.hints !200

; <label>:7531                                    ; preds = %7522
  %7532 = fmul fast float %7527, 0x3FF7154760000000
  %7533 = call float @dx.op.unary.f32(i32 21, float %7532)  ; Exp(value)
  %7534 = fsub fast float 1.000000e+00, %7533
  %7535 = fmul fast float %7524, %7534
  %7536 = fsub fast float -0.000000e+00, %7535
  %7537 = fdiv fast float %7536, %7527
  br label %7538

; <label>:7538                                    ; preds = %7531, %7522
  %7539 = phi float [ %7537, %7531 ], [ %7524, %7522 ]
  %7540 = phi float [ %7533, %7531 ], [ 1.000000e+00, %7522 ]
  %7541 = fcmp fast une float %7528, 0.000000e+00
  br i1 %7541, label %7542, label %7549, !dx.controlflow.hints !200

; <label>:7542                                    ; preds = %7538
  %7543 = fmul fast float %7528, 0x3FF7154760000000
  %7544 = call float @dx.op.unary.f32(i32 21, float %7543)  ; Exp(value)
  %7545 = fsub fast float 1.000000e+00, %7544
  %7546 = fmul fast float %7525, %7545
  %7547 = fsub fast float -0.000000e+00, %7546
  %7548 = fdiv fast float %7547, %7528
  br label %7549

; <label>:7549                                    ; preds = %7542, %7538
  %7550 = phi float [ %7548, %7542 ], [ %7525, %7538 ]
  %7551 = phi float [ %7544, %7542 ], [ 1.000000e+00, %7538 ]
  %7552 = fcmp fast une float %7529, 0.000000e+00
  br i1 %7552, label %7553, label %7560, !dx.controlflow.hints !200

; <label>:7553                                    ; preds = %7549
  %7554 = fmul fast float %7529, 0x3FF7154760000000
  %7555 = call float @dx.op.unary.f32(i32 21, float %7554)  ; Exp(value)
  %7556 = fsub fast float 1.000000e+00, %7555
  %7557 = fmul fast float %7526, %7556
  %7558 = fsub fast float -0.000000e+00, %7557
  %7559 = fdiv fast float %7558, %7529
  br label %7560

; <label>:7560                                    ; preds = %7553, %7549, %7509, %7502
  %7561 = phi float [ %7559, %7553 ], [ %7521, %7509 ], [ %7506, %7502 ], [ %7526, %7549 ]
  %7562 = phi float [ %7550, %7553 ], [ %7520, %7509 ], [ %7505, %7502 ], [ %7550, %7549 ]
  %7563 = phi float [ %7539, %7553 ], [ %7519, %7509 ], [ %7504, %7502 ], [ %7539, %7549 ]
  %7564 = phi float [ %7555, %7553 ], [ %7511, %7509 ], [ 1.000000e+00, %7502 ], [ 1.000000e+00, %7549 ]
  %7565 = phi float [ %7551, %7553 ], [ %7511, %7509 ], [ 1.000000e+00, %7502 ], [ %7551, %7549 ]
  %7566 = phi float [ %7540, %7553 ], [ %7511, %7509 ], [ 1.000000e+00, %7502 ], [ %7540, %7549 ]
  %7567 = fmul fast float %7566, %7478
  %7568 = fmul fast float %7565, %7489
  %7569 = fmul fast float %7564, %7500
  %7570 = fadd fast float %7567, %7563
  %7571 = fadd fast float %7568, %7562
  %7572 = fadd fast float %7569, %7561
  %7573 = fmul fast float %7566, %7477
  %7574 = fmul fast float %7565, %7488
  %7575 = fmul fast float %7564, %7499
  br label %7576

; <label>:7576                                    ; preds = %7560, %7371
  %7577 = phi float [ %7575, %7560 ], [ %7377, %7371 ]
  %7578 = phi float [ %7574, %7560 ], [ %7376, %7371 ]
  %7579 = phi float [ %7573, %7560 ], [ %7375, %7371 ]
  %7580 = phi float [ %7572, %7560 ], [ %7374, %7371 ]
  %7581 = phi float [ %7571, %7560 ], [ %7373, %7371 ]
  %7582 = phi float [ %7570, %7560 ], [ %7372, %7371 ]
  %7583 = call float @dx.op.dot3.f32(i32 55, float %7579, float %7578, float %7577, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7584 = call float @dx.op.dot3.f32(i32 55, float %7582, float %7581, float %7580, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7585 = select i1 %2222, float %7583, float %7579
  %7586 = select i1 %2222, float %7583, float %7578
  %7587 = select i1 %2222, float 1.000000e+00, float %7577
  %7588 = select i1 %2222, float %7584, float %7582
  %7589 = select i1 %2222, float 0.000000e+00, float %7581
  %7590 = select i1 %2222, float 0.000000e+00, float %7580
  %7591 = fmul fast float %7585, %6817
  %7592 = fmul fast float %7586, %6819
  %7593 = fmul fast float %7587, %6821
  %7594 = fadd fast float %7591, %7588
  %7595 = fadd fast float %7592, %7589
  %7596 = fadd fast float %7590, %7593
  %7597 = fmul fast float %6154, %89
  %7598 = fmul fast float %6155, %90
  %7599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %58, float %7597, float %7598, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7600 = extractvalue %dx.types.ResRet.f32 %7599, 0
  %7601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %58, float %7597, float %7598, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7602 = extractvalue %dx.types.ResRet.f32 %7601, 0
  %7603 = extractvalue %dx.types.ResRet.f32 %7601, 1
  %7604 = extractvalue %dx.types.ResRet.f32 %7601, 2
  %7605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7606 = extractvalue %dx.types.CBufRet.f32 %7605, 1
  %7607 = fmul fast float %7606, %7602
  %7608 = fmul fast float %7606, %7603
  %7609 = fmul fast float %7606, %7604
  %7610 = fmul fast float %7600, %7579
  %7611 = call float @dx.op.dot3.f32(i32 55, float %7600, float %7600, float %7600, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7612 = call float @dx.op.dot3.f32(i32 55, float %7607, float %7608, float %7609, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7613 = select i1 %2222, float %7611, float %7600
  %7614 = select i1 %2222, float 1.000000e+00, float %7600
  %7615 = select i1 %2222, float %7612, float %7607
  %7616 = select i1 %2222, float 0.000000e+00, float %7608
  %7617 = select i1 %2222, float 0.000000e+00, float %7609
  %7618 = fmul fast float %7613, %7594
  %7619 = fmul fast float %7613, %7595
  %7620 = fmul fast float %7614, %7596
  %7621 = fadd fast float %7618, %7615
  %7622 = fadd fast float %7619, %7616
  %7623 = fadd fast float %7617, %7620
  br label %7624

; <label>:7624                                    ; preds = %7576, %6822
  %7625 = phi float [ %6824, %6822 ], [ %7598, %7576 ]
  %7626 = phi float [ %6823, %6822 ], [ %7597, %7576 ]
  %7627 = phi float [ %6817, %6822 ], [ %7621, %7576 ]
  %7628 = phi float [ %6819, %6822 ], [ %7622, %7576 ]
  %7629 = phi float [ %6821, %6822 ], [ %7623, %7576 ]
  %7630 = phi float [ 1.000000e+00, %6822 ], [ %7610, %7576 ]
  %7631 = call float @dx.op.unary.f32(i32 7, float %7626)  ; Saturate(value)
  %7632 = call float @dx.op.unary.f32(i32 7, float %7625)  ; Saturate(value)
  %7633 = select i1 %106, i32 0, i32 2
  %7634 = or i32 %7633, 1
  %7635 = uitofp i32 %7634 to float
  %7636 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %58, float %7631, float %7632, float %7635, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7637 = extractvalue %dx.types.ResRet.f32 %7636, 0
  %7638 = extractvalue %dx.types.ResRet.f32 %7636, 1
  %7639 = extractvalue %dx.types.ResRet.f32 %7636, 2
  %7640 = extractvalue %dx.types.ResRet.f32 %7636, 3
  %7641 = add nuw nsw i32 %7633, 2
  %7642 = uitofp i32 %7641 to float
  %7643 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %58, float %7631, float %7632, float %7642, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7644 = extractvalue %dx.types.ResRet.f32 %7643, 0
  %7645 = extractvalue %dx.types.ResRet.f32 %7643, 1
  %7646 = extractvalue %dx.types.ResRet.f32 %7643, 2
  %7647 = extractvalue %dx.types.ResRet.f32 %7643, 3
  %7648 = call float @dx.op.binary.f32(i32 35, float %7638, float %7639)  ; FMax(a,b)
  %7649 = call float @dx.op.binary.f32(i32 35, float %7637, float %7648)  ; FMax(a,b)
  %7650 = call float @dx.op.binary.f32(i32 35, float %7649, float %7640)  ; FMax(a,b)
  %7651 = call float @dx.op.binary.f32(i32 36, float %7645, float %7646)  ; FMin(a,b)
  %7652 = call float @dx.op.binary.f32(i32 36, float %7644, float %7651)  ; FMin(a,b)
  %7653 = call float @dx.op.binary.f32(i32 36, float %7652, float %7647)  ; FMin(a,b)
  %7654 = fmul fast float %7650, 2.550000e+02
  %7655 = fadd fast float %7654, 0x3F70101020000000
  %7656 = fptoui float %7655 to i32
  %7657 = fmul fast float %7653, 2.550000e+02
  %7658 = fadd fast float %7657, 0x3F70101020000000
  %7659 = fptoui float %7658 to i32
  %7660 = icmp ult i32 %7656, %7659
  br i1 %7660, label %7661, label %7713

; <label>:7661                                    ; preds = %7624
  %7662 = fcmp fast ogt float %77, 9.843750e-01
  %7663 = fadd fast float %78, -4.000000e+00
  %7664 = select i1 %7662, float -4.000000e+00, float %7663
  %7665 = call float @dx.op.binary.f32(i32 35, float %7664, float 0.000000e+00)  ; FMax(a,b)
  %7666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7667 = extractvalue %dx.types.CBufRet.f32 %7666, 0
  %7668 = fadd fast float %7667, %7665
  %7669 = extractvalue %dx.types.CBufRet.f32 %7666, 2
  %7670 = fmul fast float %7668, %7669
  %7671 = call float @dx.op.unary.f32(i32 23, float %7670)  ; Log(value)
  %7672 = extractvalue %dx.types.CBufRet.f32 %7666, 3
  %7673 = fmul fast float %7672, %7671
  %7674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7675 = extractvalue %dx.types.CBufRet.f32 %7674, 2
  %7676 = fmul fast float %7673, %7675
  %7677 = call float @dx.op.unary.f32(i32 7, float %7676)  ; Saturate(value)
  %7678 = uitofp i32 %7656 to float
  %7679 = uitofp i32 %7659 to float
  %7680 = fadd fast float %7678, 5.000000e-01
  %7681 = fadd fast float %7679, 5.000000e-01
  %7682 = fmul fast float %7675, %7680
  %7683 = fmul fast float %7675, %7681
  %7684 = fadd fast float %7682, 0x3F0FFB4800000000
  %7685 = fadd fast float %7683, 0xBF0FFB4800000000
  %7686 = call float @dx.op.binary.f32(i32 35, float %7677, float %7684)  ; FMax(a,b)
  %7687 = call float @dx.op.binary.f32(i32 36, float %7686, float %7685)  ; FMin(a,b)
  %7688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7689 = extractvalue %dx.types.CBufRet.f32 %7688, 1
  %7690 = extractvalue %dx.types.CBufRet.f32 %7688, 2
  %7691 = extractvalue %dx.types.CBufRet.f32 %7688, 0
  %7692 = select i1 %106, float 0.000000e+00, float %7691
  %7693 = fmul fast float %7689, %7687
  %7694 = fadd fast float %7692, %7693
  %7695 = fadd fast float %7692, %7690
  %7696 = fsub fast float %7689, %7690
  %7697 = fadd fast float %7696, %7692
  %7698 = call float @dx.op.binary.f32(i32 35, float %7694, float %7695)  ; FMax(a,b)
  %7699 = call float @dx.op.binary.f32(i32 36, float %7698, float %7697)  ; FMin(a,b)
  %7700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %56, float %7631, float %7632, float %7699, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7701 = extractvalue %dx.types.ResRet.f32 %7700, 0
  %7702 = extractvalue %dx.types.ResRet.f32 %7700, 1
  %7703 = extractvalue %dx.types.ResRet.f32 %7700, 2
  %7704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %56, float %7631, float %7632, float %7699, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7705 = extractvalue %dx.types.ResRet.f32 %7704, 0
  %7706 = extractvalue %dx.types.ResRet.f32 %7704, 1
  %7707 = extractvalue %dx.types.ResRet.f32 %7704, 2
  %7708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7709 = extractvalue %dx.types.CBufRet.f32 %7708, 1
  %7710 = fmul fast float %7709, %7705
  %7711 = fmul fast float %7709, %7706
  %7712 = fmul fast float %7709, %7707
  br label %7713

; <label>:7713                                    ; preds = %7661, %7624
  %7714 = phi float [ %7701, %7661 ], [ 1.000000e+00, %7624 ]
  %7715 = phi float [ %7702, %7661 ], [ 1.000000e+00, %7624 ]
  %7716 = phi float [ %7703, %7661 ], [ 1.000000e+00, %7624 ]
  %7717 = phi float [ %7710, %7661 ], [ 0.000000e+00, %7624 ]
  %7718 = phi float [ %7711, %7661 ], [ 0.000000e+00, %7624 ]
  %7719 = phi float [ %7712, %7661 ], [ 0.000000e+00, %7624 ]
  %7720 = fmul fast float %7714, %7630
  %7721 = call float @dx.op.dot3.f32(i32 55, float %7714, float %7715, float %7716, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7722 = call float @dx.op.dot3.f32(i32 55, float %7717, float %7718, float %7719, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7723 = select i1 %2222, float %7721, float %7714
  %7724 = select i1 %2222, float %7721, float %7715
  %7725 = select i1 %2222, float 1.000000e+00, float %7716
  %7726 = select i1 %2222, float %7722, float %7717
  %7727 = select i1 %2222, float 0.000000e+00, float %7718
  %7728 = select i1 %2222, float 0.000000e+00, float %7719
  %7729 = fmul fast float %7723, %7627
  %7730 = fmul fast float %7724, %7628
  %7731 = fmul fast float %7725, %7629
  %7732 = fadd fast float %7729, %7726
  %7733 = fadd fast float %7730, %7727
  %7734 = fadd fast float %7728, %7731
  %7735 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7736 = extractvalue %dx.types.CBufRet.i32 %7735, 3
  %7737 = and i32 %7736, 3
  %7738 = icmp ne i32 %7737, 0
  %7739 = and i32 %7736, 4
  %7740 = icmp ne i32 %7739, 0
  %7741 = and i1 %7738, %7740
  %7742 = and i1 %2222, %7741
  br i1 %7742, label %7743, label %7749

; <label>:7743                                    ; preds = %7713
  %7744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7745 = extractvalue %dx.types.CBufRet.f32 %7744, 1
  %7746 = fadd fast float %7720, -1.000000e+00
  %7747 = fmul fast float %7745, %7746
  %7748 = fadd fast float %7747, 1.000000e+00
  br label %7749

; <label>:7749                                    ; preds = %7743, %7713
  %7750 = phi float [ %7748, %7743 ], [ %7720, %7713 ]
  %7751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7752 = extractvalue %dx.types.CBufRet.f32 %7751, 0
  br i1 %2222, label %7753, label %7767

; <label>:7753                                    ; preds = %7749
  %7754 = fadd fast float %7732, %7733
  %7755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7756 = extractvalue %dx.types.CBufRet.f32 %7755, 3
  %7757 = extractvalue %dx.types.CBufRet.f32 %6805, 1
  %7758 = fsub fast float %6811, %6799
  %7759 = fadd fast float %7758, %6812
  %7760 = fsub fast float %7759, %7757
  %7761 = extractvalue %dx.types.CBufRet.f32 %6805, 2
  %7762 = fmul fast float %7760, %7761
  %7763 = call float @dx.op.unary.f32(i32 7, float %7762)  ; Saturate(value)
  %7764 = fsub fast float %7763, %7756
  %7765 = fmul fast float %7764, %7750
  %7766 = fadd fast float %7765, %7756
  br label %7770

; <label>:7767                                    ; preds = %7749
  %7768 = fmul fast float %7752, %7733
  %7769 = fmul fast float %7752, %7734
  br label %7770

; <label>:7770                                    ; preds = %7767, %7753
  %7771 = phi float [ %7754, %7753 ], [ %7732, %7767 ]
  %7772 = phi float [ %7766, %7753 ], [ %7768, %7767 ]
  %7773 = phi float [ 1.000000e+00, %7753 ], [ %7769, %7767 ]
  %7774 = fmul float %7752, %7771
  %7775 = fadd fast float %1586, 0x3FE3C6EF40000000
  %7776 = call float @dx.op.unary.f32(i32 22, float %7775)  ; Frc(value)
  %7777 = call float @dx.op.unary.f32(i32 23, float %7774)  ; Log(value)
  %7778 = fadd fast float %7777, -7.000000e+00
  %7779 = call float @dx.op.unary.f32(i32 21, float %7778)  ; Exp(value)
  %7780 = fmul fast float %7776, 2.000000e+00
  %7781 = fadd fast float %7780, -1.000000e+00
  %7782 = fmul fast float %7779, %7781
  %7783 = fcmp fast ogt float %7774, 0.000000e+00
  %7784 = select i1 %7783, float %7782, float 0.000000e+00
  %7785 = fadd fast float %7784, %7774
  %7786 = fadd fast float %1586, 0x3FF3C6EF40000000
  %7787 = call float @dx.op.unary.f32(i32 22, float %7786)  ; Frc(value)
  %7788 = call float @dx.op.unary.f32(i32 23, float %7772)  ; Log(value)
  %7789 = fadd fast float %7788, -7.000000e+00
  %7790 = call float @dx.op.unary.f32(i32 21, float %7789)  ; Exp(value)
  %7791 = fmul fast float %7787, 2.000000e+00
  %7792 = fadd fast float %7791, -1.000000e+00
  %7793 = fmul fast float %7790, %7792
  %7794 = fcmp fast ogt float %7772, 0.000000e+00
  %7795 = select i1 %7794, float %7793, float 0.000000e+00
  %7796 = fadd fast float %7795, %7772
  %7797 = fadd fast float %1586, 0x3FFDAA66E0000000
  %7798 = call float @dx.op.unary.f32(i32 22, float %7797)  ; Frc(value)
  %7799 = call float @dx.op.unary.f32(i32 23, float %7773)  ; Log(value)
  %7800 = fadd fast float %7799, -6.000000e+00
  %7801 = call float @dx.op.unary.f32(i32 21, float %7800)  ; Exp(value)
  %7802 = fmul fast float %7798, 2.000000e+00
  %7803 = fadd fast float %7802, -1.000000e+00
  %7804 = fmul fast float %7801, %7803
  %7805 = fcmp fast ogt float %7773, 0.000000e+00
  %7806 = select i1 %7805, float %7804, float 0.000000e+00
  %7807 = fadd fast float %7806, %7773
  %7808 = call float @dx.op.binary.f32(i32 36, float %7785, float 3.225500e+04)  ; FMin(a,b)
  %7809 = call float @dx.op.binary.f32(i32 36, float %7796, float 3.225500e+04)  ; FMin(a,b)
  %7810 = call float @dx.op.binary.f32(i32 36, float %7807, float 3.225500e+04)  ; FMin(a,b)
  %7811 = fmul fast float %7808, %6795
  %7812 = fmul fast float %7809, %6795
  %7813 = fmul fast float %7810, %6795
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7811)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7812)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7813)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6795)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!79}
!dx.entryPoints = !{!80}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !64, !67, !71}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !12}
!12 = !{i32 0, i32 14}
!13 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!16 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!23 = !{i32 15, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !26}
!26 = !{i32 0, i32 5}
!27 = !{i32 18, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!28 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!29 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!30 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!31 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!32 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!33 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
!34 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!35 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 50, i32 1, i32 2, i32 0, !7}
!36 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !7}
!37 = !{i32 28, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!38 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!39 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!40 = !{i32 31, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!41 = !{i32 32, %"class.Texture3D<float>"* undef, !"", i32 2, i32 82, i32 1, i32 4, i32 0, !7}
!42 = !{i32 33, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!43 = !{i32 34, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!44 = !{i32 35, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!45 = !{i32 36, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!46 = !{i32 37, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !12}
!51 = !{i32 42, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!52 = !{i32 43, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!54 = !{i32 45, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!55 = !{i32 46, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!56 = !{i32 47, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!57 = !{i32 48, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!58 = !{i32 49, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!59 = !{i32 50, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!60 = !{i32 51, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!61 = !{i32 52, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!62 = !{i32 53, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!63 = !{i32 54, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 11, i32 1, i32 7, i32 0, !7}
!64 = !{!65}
!65 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i1 false, i1 false, i1 false, !66}
!66 = !{i32 1, i32 4}
!67 = !{!68, !69, !70}
!68 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!69 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!70 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!71 = !{!72, !73, !74, !75, !76, !77, !78}
!72 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!73 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!74 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!75 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!76 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!77 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!78 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!79 = !{[20 x i32] [i32 18, i32 4, i32 15, i32 15, i32 7, i32 15, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0]}
!80 = !{void ()* @ps_main, !"ps_main", !81, !4, !100}
!81 = !{!82, !98, null}
!82 = !{!83, !86, !88, !90, !92, !93, !94, !95, !97}
!83 = !{i32 0, !"SV_Position", i8 9, i8 3, !84, i8 4, i32 1, i8 4, i32 0, i8 0, !85}
!84 = !{i32 0}
!85 = !{i32 3, i32 15}
!86 = !{i32 1, !"NORMAL", i8 9, i8 0, !84, i8 2, i32 1, i8 3, i32 1, i8 0, !87}
!87 = !{i32 3, i32 7}
!88 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !84, i8 2, i32 1, i8 2, i32 2, i8 0, !89}
!89 = !{i32 3, i32 3}
!90 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !84, i8 2, i32 1, i8 1, i32 1, i8 3, !91}
!91 = !{i32 3, i32 1}
!92 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !84, i8 1, i32 1, i8 1, i32 3, i8 0, !91}
!93 = !{i32 5, !"SV_IsFrontFace", i8 5, i8 13, !84, i8 1, i32 1, i8 1, i32 3, i8 1, !91}
!94 = !{i32 6, !"SV_ClipDistance", i8 9, i8 6, !84, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!95 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !96, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!96 = !{i32 1}
!97 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !84, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!98 = !{!99}
!99 = !{i32 0, !"SV_Target", i8 9, i8 16, !84, i8 0, i32 1, i8 4, i32 0, i8 0, !85}
!100 = !{i32 0, i64 24}
!101 = !{!102, !102, i64 0}
!102 = !{!"float", !103, i64 0}
!103 = !{!"omnipotent char", !104, i64 0}
!104 = !{!"Simple C/C++ TBAA"}
!105 = !{!106, !108, !109}
!106 = distinct !{!106, !107, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!107 = distinct !{!107, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!108 = distinct !{!108, !107, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!109 = distinct !{!109, !107, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!110 = !{!111, !113, !114, !115}
!111 = distinct !{!111, !112, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoam"}
!112 = distinct !{!112, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z"}
!113 = distinct !{!113, !112, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamNormalOffsets"}
!114 = distinct !{!114, !112, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamOcclusion"}
!115 = distinct !{!115, !112, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamGloss"}
!116 = distinct !{!116, !117}
!117 = !{!"llvm.loop.unroll.disable"}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !117}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = !{!136, !136, i64 0}
!136 = !{!"int", !103, i64 0}
!137 = !{!138, !140, !142, !144}
!138 = distinct !{!138, !139, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!139 = distinct !{!139, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!140 = distinct !{!140, !141, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!141 = distinct !{!141, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!142 = distinct !{!142, !143, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!143 = distinct !{!143, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!144 = distinct !{!144, !145, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!145 = distinct !{!145, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = distinct !{!147, !117}
!148 = distinct !{!148, !117}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = !{!160, !162, !164, !165, !167, !168, !169, !171, !172, !173}
!160 = distinct !{!160, !161, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!161 = distinct !{!161, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!162 = distinct !{!162, !163, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!163 = distinct !{!163, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!164 = distinct !{!164, !163, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!165 = distinct !{!165, !166, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!166 = distinct !{!166, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!167 = distinct !{!167, !166, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!168 = distinct !{!168, !166, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!169 = distinct !{!169, !170, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!170 = distinct !{!170, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!171 = distinct !{!171, !170, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!172 = distinct !{!172, !170, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!173 = distinct !{!173, !174, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!174 = distinct !{!174, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"\01?sort@@YAXAIAM00@Z: %c"}
!177 = distinct !{!177, !"\01?sort@@YAXAIAM00@Z"}
!178 = !{!179, !180, !160, !162, !164, !165, !167, !168, !169, !171, !172, !173}
!179 = distinct !{!179, !177, !"\01?sort@@YAXAIAM00@Z: %a"}
!180 = distinct !{!180, !177, !"\01?sort@@YAXAIAM00@Z: %b"}
!181 = !{!180}
!182 = !{!179, !176, !160, !162, !164, !165, !167, !168, !169, !171, !172, !173}
!183 = !{!179}
!184 = !{!180, !176, !160, !162, !164, !165, !167, !168, !169, !171, !172, !173}
!185 = !{!186}
!186 = distinct !{!186, !187, !"\01?sort@@YAXAIAM00@Z: %c"}
!187 = distinct !{!187, !"\01?sort@@YAXAIAM00@Z"}
!188 = !{!189, !190, !160, !162, !164, !165, !167, !168, !169, !171, !172, !173}
!189 = distinct !{!189, !187, !"\01?sort@@YAXAIAM00@Z: %a"}
!190 = distinct !{!190, !187, !"\01?sort@@YAXAIAM00@Z: %b"}
!191 = !{!190}
!192 = !{!189, !186, !160, !162, !164, !165, !167, !168, !169, !171, !172, !173}
!193 = !{!189}
!194 = !{!190, !186, !160, !162, !164, !165, !167, !168, !169, !171, !172, !173}
!195 = distinct !{!195, !"dx.controlflow.hints", i32 1}
!196 = distinct !{!196, !"dx.controlflow.hints", i32 2}
!197 = distinct !{!197, !"dx.controlflow.hints", i32 1}
!198 = distinct !{!198, !"dx.controlflow.hints", i32 1}
!199 = distinct !{!199, !"dx.controlflow.hints", i32 1}
!200 = distinct !{!200, !"dx.controlflow.hints", i32 1}
!201 = distinct !{!201, !"dx.controlflow.hints", i32 1}

