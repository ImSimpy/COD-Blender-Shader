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
; shader hash: 2b282c59dc89c8f97663fbf3ea0ee59b
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
;                                   texture     f32          2d     T29     t34,space2     1
;                                   texture    byte         r/o     T30     t10,space1     1
;                                   texture    byte         r/o     T31      t1,space1     1
;                                   texture     f32          1d     T32     t32,space2     1
;                                   texture     f32          3d     T33     t82,space2     1
;                                   texture     f32          1d     T34     t30,space2     1
;                                   texture     f32          3d     T35     t44,space2     1
;                                   texture     f32          3d     T36     t45,space2     1
;                                   texture     f32     2darray     T37     t47,space2     1
;                                   texture     f32     2darray     T38      t8,space2     1
;                                   texture     f32          2d     T39      t2,space2     1
;                                   texture     f32          2d     T40      t3,space2     1
;                                   texture     f32          2d     T41      t4,space2     1
;                                   textureunorm_f32     2darray     T42     t80,space2     1
;                                   texture    byte         r/o     T43     t67,space1     1
;                                   texture     f32          2d     T44      t7,space2     1
;                                   texture     f32          2d     T45      t6,space2     1
;                                   texture     f32          2d     T46      t5,space2     1
;                                   texture     f32          2d     T47     t38,space2     1
;                                   texture    byte         r/o     T48     t12,space1     1
;                                   texture    byte         r/o     T49     t13,space1     1
;                                   texture     f32          2d     T50     t83,space2     1
;                                   texture     f32          2d     T51     t86,space2     1
;                                   texture    byte         r/o     T52     t16,space1     1
;                                   texture    byte         r/o     T53     t17,space1     1
;                                   texture     f32          2d     T54             t8     1
;                                   texture     f32     2darray     T55            t11     1
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
;   output 3 depends on inputs: { 0, 1, 3, 8, 9, 12, 13 }
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
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
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

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 55, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = fmul fast float %87, %75
  %89 = fmul fast float %87, %76
  %90 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %91 = call float @dx.op.unary.f32(i32 25, float %90)  ; Rsqrt(value)
  %92 = fmul fast float %91, %72
  %93 = fmul fast float %91, %73
  %94 = fmul fast float %91, %74
  %95 = xor i1 %67, true
  %96 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %97 = extractvalue %dx.types.ResRet.i32 %96, 0
  %98 = icmp eq i32 %97, 0
  %99 = and i1 %98, %95
  %100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.i32 %100, 0
  %102 = and i32 %101, 256
  %103 = icmp ne i32 %102, 0
  %104 = and i1 %99, %103
  %105 = or i1 %67, %104
  %106 = select i1 %105, float 1.000000e+00, float -1.000000e+00
  %107 = fmul fast float %92, %106
  %108 = fmul fast float %93, %106
  %109 = fmul fast float %94, %106
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %113 = fmul fast float %88, 2.000000e+00
  %114 = fmul fast float %113, %111
  %115 = fmul fast float %89, 2.000000e+00
  %116 = fmul fast float %115, %112
  %117 = fsub fast float 1.000000e+00, %114
  %118 = fsub fast float 1.000000e+00, %116
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = fmul fast float %117, %120
  %124 = fmul fast float %117, %121
  %125 = fmul fast float %117, %122
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = fmul fast float %118, %127
  %131 = fmul fast float %118, %128
  %132 = fmul fast float %118, %129
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = fadd fast float %130, %134
  %138 = fadd fast float %137, %123
  %139 = fadd fast float %131, %135
  %140 = fadd fast float %139, %124
  %141 = fadd fast float %132, %136
  %142 = fadd fast float %141, %125
  %143 = fmul fast float %138, %78
  %144 = fmul fast float %140, %78
  %145 = fmul fast float %142, %78
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %148 = call float @dx.op.unary.f32(i32 83, float %70)  ; DerivCoarseX(value)
  %149 = call float @dx.op.unary.f32(i32 83, float %71)  ; DerivCoarseX(value)
  %150 = call float @dx.op.unary.f32(i32 84, float %70)  ; DerivCoarseY(value)
  %151 = call float @dx.op.unary.f32(i32 84, float %71)  ; DerivCoarseY(value)
  %152 = fmul fast float %148, %147
  %153 = fmul fast float %149, %147
  %154 = fmul fast float %150, %147
  %155 = fmul fast float %151, %147
  %156 = call float @dx.op.dot2.f32(i32 54, float %154, float %155, float %154, float %155)  ; Dot2(ax,ay,bx,by)
  %157 = call float @dx.op.dot2.f32(i32 54, float %152, float %153, float %152, float %153)  ; Dot2(ax,ay,bx,by)
  %158 = call float @dx.op.binary.f32(i32 35, float %157, float %156)  ; FMax(a,b)
  %159 = call float @dx.op.unary.f32(i32 23, float %158)  ; Log(value)
  %160 = fmul fast float %159, 5.000000e-01
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %163 = fadd fast float %162, %160
  %164 = call float @dx.op.binary.f32(i32 35, float %163, float 0.000000e+00)  ; FMax(a,b)
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 3
  %167 = fadd fast float %166, %164
  %168 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %169 = shl i32 %168, 16
  %170 = or i32 %169, %168
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %174 = fadd fast float %172, %143
  %175 = fadd fast float %173, %144
  %176 = fmul fast float %174, 0x3F53C37960000000
  %177 = fmul fast float %175, 0x3F53C37960000000
  %178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %178, float %176, float %177, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %183 = fmul fast float %182, %180
  %184 = shl i32 %68, 3
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = and i32 %186, 16383
  %188 = shl i32 %68, 2
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = and i32 %190, 255
  %192 = shl nuw nsw i32 %191, 16
  %193 = or i32 %192, %187
  %194 = mul nuw nsw i32 %187, 148
  %195 = add nuw nsw i32 %194, 4
  %196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.f32 %196, 0
  %198 = add nuw nsw i32 %194, 8
  %199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = add nuw nsw i32 %194, 60
  %202 = add nuw nsw i32 %194, 116
  %203 = fsub fast float 1.000000e+00, %71
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 2
  %206 = fmul fast float %205, %70
  %207 = fmul fast float %205, %203
  %208 = fadd fast float %206, %197
  %209 = fadd fast float %207, %200
  %210 = add nuw nsw i32 %194, 48
  %211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = add nuw nsw i32 %194, 52
  %214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = add nuw nsw i32 %194, 56
  %217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.f32 %217, 0
  %219 = add nuw nsw i32 %194, 104
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = add nuw nsw i32 %194, 108
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = add nuw nsw i32 %194, 112
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 0
  %230 = fmul fast float %229, %70
  %231 = fmul fast float %229, %71
  %232 = extractvalue %dx.types.CBufRet.f32 %228, 1
  %233 = fadd fast float %230, %232
  %234 = fadd fast float %231, %232
  %235 = add i32 %221, 0
  %236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %235, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %237 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %236, i32 0)  ; GetDimensions(handle,mipLevel)
  %238 = extractvalue %dx.types.Dimensions %237, 0
  %239 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %238)  ; FirstbitLo(value)
  %240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.i32 %240, 1
  %242 = sub nsw i32 %241, %239
  %243 = sitofp i32 %242 to float
  %244 = fsub fast float %167, %243
  %245 = call float @dx.op.binary.f32(i32 35, float %244, float 0.000000e+00)  ; FMax(a,b)
  %246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %236, %dx.types.Handle %56, float %233, float %234, float %212, float undef, i32 0, i32 0, i32 undef, float %245)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 1
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 3
  %251 = fmul fast float %250, 2.000000e+00
  %252 = fmul fast float %251, %247
  %253 = fmul fast float %251, %248
  %254 = fsub fast float %252, %250
  %255 = fsub fast float %253, %250
  %256 = fmul fast float %254, %254
  %257 = fmul fast float %255, %255
  %258 = fadd fast float %256, %257
  %259 = call float @dx.op.unary.f32(i32 24, float %258)  ; Sqrt(value)
  %260 = add i32 %224, 0
  %261 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %260, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %262 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %261, i32 0)  ; GetDimensions(handle,mipLevel)
  %263 = extractvalue %dx.types.Dimensions %262, 0
  %264 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %263)  ; FirstbitLo(value)
  %265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.i32 %265, 1
  %267 = sub nsw i32 %266, %264
  %268 = sitofp i32 %267 to float
  %269 = fsub fast float %167, %268
  %270 = call float @dx.op.binary.f32(i32 35, float %269, float 0.000000e+00)  ; FMax(a,b)
  %271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %261, %dx.types.Handle %56, float %233, float %234, float %215, float undef, i32 0, i32 0, i32 undef, float %270)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %272 = extractvalue %dx.types.ResRet.f32 %271, 0
  %273 = add i32 %227, 0
  %274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %273, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %275 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %274, i32 0)  ; GetDimensions(handle,mipLevel)
  %276 = extractvalue %dx.types.Dimensions %275, 0
  %277 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %276)  ; FirstbitLo(value)
  %278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.i32 %278, 1
  %280 = sub nsw i32 %279, %277
  %281 = sitofp i32 %280 to float
  %282 = fsub fast float %167, %281
  %283 = call float @dx.op.binary.f32(i32 35, float %282, float 0.000000e+00)  ; FMax(a,b)
  %284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %274, %dx.types.Handle %56, float %233, float %234, float %218, float undef, i32 0, i32 0, i32 undef, float %283)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.i32 %286, 0
  %288 = call i32 @dx.op.binary.i32(i32 40, i32 %187, i32 %287)  ; UMin(a,b)
  %289 = mul i32 %288, 36
  %290 = add i32 %289, 4
  %291 = icmp eq i32 %191, 0
  br i1 %291, label %873, label %292

; <label>:292                                     ; preds = %0
  br label %293

; <label>:293                                     ; preds = %863, %292
  %294 = phi i32 [ %864, %863 ], [ %193, %292 ]
  %295 = phi float [ %865, %863 ], [ 0.000000e+00, %292 ]
  %296 = phi float [ %866, %863 ], [ 0.000000e+00, %292 ]
  %297 = phi i32 [ %306, %863 ], [ %191, %292 ]
  %298 = phi i32 [ %867, %863 ], [ %170, %292 ]
  %299 = phi i32 [ %868, %863 ], [ %170, %292 ]
  %300 = phi i32 [ %869, %863 ], [ %170, %292 ]
  %301 = phi i32 [ %870, %863 ], [ %170, %292 ]
  %302 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %297)  ; FirstbitLo(value)
  %303 = and i32 %302, 31
  %304 = shl i32 1, %303
  %305 = xor i32 %304, -1
  %306 = and i32 %297, %305
  %307 = shl i32 %302, 2
  %308 = add i32 %201, %307
  %309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.f32 %309, 0
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 0
  %313 = fmul fast float %312, %70
  %314 = fmul fast float %312, %71
  %315 = extractvalue %dx.types.CBufRet.f32 %311, 1
  %316 = fadd fast float %313, %315
  %317 = fadd fast float %314, %315
  %318 = add i32 %202, %307
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = add i32 %320, 0
  %322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %321, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %323 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %322, i32 0)  ; GetDimensions(handle,mipLevel)
  %324 = extractvalue %dx.types.Dimensions %323, 0
  %325 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %324)  ; FirstbitLo(value)
  %326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.i32 %326, 1
  %328 = sub nsw i32 %327, %325
  %329 = sitofp i32 %328 to float
  %330 = fsub fast float %167, %329
  %331 = call float @dx.op.binary.f32(i32 35, float %330, float 0.000000e+00)  ; FMax(a,b)
  %332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %322, %dx.types.Handle %56, float %316, float %317, float %310, float undef, i32 0, i32 0, i32 undef, float %331)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %333 = extractvalue %dx.types.ResRet.f32 %332, 0
  %334 = fcmp fast ogt float %333, 0.000000e+00
  br i1 %334, label %335, label %863

; <label>:335                                     ; preds = %293
  %336 = add i32 %290, %307
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, 32767
  %340 = mul nuw nsw i32 %339, 928
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = or i32 %340, 8
  %344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.f32 %344, 0
  %346 = or i32 %340, 12
  %347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.f32 %347, 1
  %349 = or i32 %340, 20
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = or i32 %340, 24
  %353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.f32 %353, 0
  %355 = extractvalue %dx.types.ResRet.f32 %353, 1
  %356 = extractvalue %dx.types.ResRet.f32 %353, 2
  %357 = extractvalue %dx.types.ResRet.f32 %353, 3
  %358 = add nuw nsw i32 %340, 40
  %359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = add nuw nsw i32 %340, 72
  %362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.f32 %362, 0
  %364 = extractvalue %dx.types.ResRet.f32 %362, 1
  %365 = add nuw nsw i32 %340, 80
  %366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.f32 %366, 0
  %368 = add nuw nsw i32 %340, 228
  %369 = add nuw nsw i32 %340, 596
  %370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  %372 = extractvalue %dx.types.ResRet.f32 %370, 1
  %373 = add nuw nsw i32 %340, 620
  %374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.f32 %374, 0
  %376 = extractvalue %dx.types.ResRet.f32 %374, 1
  %377 = add nuw nsw i32 %340, 628
  %378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.f32 %378, 0
  %380 = extractvalue %dx.types.ResRet.f32 %378, 1
  %381 = extractvalue %dx.types.ResRet.f32 %378, 2
  %382 = extractvalue %dx.types.ResRet.f32 %378, 3
  %383 = add nuw nsw i32 %340, 648
  %384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.f32 %384, 0
  %386 = add nuw nsw i32 %340, 812
  %387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = add nuw nsw i32 %340, 816
  %390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.f32 %390, 1
  %392 = add nuw nsw i32 %340, 896
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = add nuw nsw i32 %340, 900
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = add nuw nsw i32 %340, 904
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = lshr i32 %294, 24
  %402 = uitofp i32 %401 to float
  %403 = fmul fast float %402, 0x3F70101020000000
  %404 = and i32 %342, 128
  %405 = icmp ne i32 %404, 0
  %406 = extractvalue %dx.types.CBufRet.i32 %326, 0
  %407 = and i32 %406, 512
  %408 = icmp ne i32 %407, 0
  %409 = and i1 %405, %408
  %410 = select i1 %409, float 0.000000e+00, float %333
  %411 = fadd fast float %410, %403
  %412 = call float @dx.op.unary.f32(i32 7, float %411)  ; Saturate(value)
  %413 = fmul fast float %412, 2.550000e+02
  %414 = fptoui float %413 to i32
  %415 = shl i32 %414, 24
  %416 = and i32 %294, 16777215
  %417 = or i32 %415, %416
  %418 = fcmp fast ole float %69, 0x3FA4B5DCC0000000
  %419 = fmul fast float %69, 0x3FB3D07220000000
  %420 = fadd fast float %69, 0x3FAC28F5C0000000
  %421 = fmul fast float %420, 0x3FEE54EDE0000000
  %422 = call float @dx.op.unary.f32(i32 23, float %421)  ; Log(value)
  %423 = fmul fast float %422, 0x4003333340000000
  %424 = call float @dx.op.unary.f32(i32 21, float %423)  ; Exp(value)
  %425 = select i1 %418, float %419, float %424
  %426 = call float @dx.op.unary.f32(i32 7, float %425)  ; Saturate(value)
  %427 = fmul fast float %371, %272
  %428 = fadd fast float %427, %372
  %429 = call float @dx.op.unary.f32(i32 7, float %428)  ; Saturate(value)
  %430 = call float @dx.op.binary.f32(i32 35, float %426, float %429)  ; FMax(a,b)
  %431 = add i32 %397, 0
  %432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %431, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %434 = extractvalue %dx.types.CBufRet.f32 %433, 0
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 0
  %437 = extractvalue %dx.types.CBufRet.f32 %435, 1
  %438 = extractvalue %dx.types.CBufRet.f32 %435, 2
  %439 = fadd fast float %436, %143
  %440 = fadd fast float %437, %144
  %441 = fadd fast float %438, %145
  %442 = fmul fast float %143, %143
  %443 = fmul fast float %144, %144
  %444 = fadd fast float %442, %443
  %445 = fmul fast float %145, %145
  %446 = fadd fast float %444, %445
  %447 = call float @dx.op.unary.f32(i32 24, float %446)  ; Sqrt(value)
  %448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.f32 %448, 0
  %450 = fcmp fast ogt float %447, %449
  %451 = zext i1 %450 to i32
  %452 = extractvalue %dx.types.CBufRet.f32 %448, 1
  %453 = fcmp fast ogt float %447, %452
  %454 = zext i1 %453 to i32
  %455 = add nuw nsw i32 %454, %451
  %456 = extractvalue %dx.types.CBufRet.f32 %448, 2
  %457 = fcmp fast ogt float %447, %456
  %458 = zext i1 %457 to i32
  %459 = add nuw nsw i32 %455, %458
  %460 = icmp ult i32 %459, 3
  %461 = zext i1 %460 to i32
  %462 = shl nuw nsw i32 %459, 2
  %463 = add nuw nsw i32 %462, 48
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 %463)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 1
  %466 = fcmp fast ogt float %447, %465
  %467 = zext i1 %466 to i32
  %468 = or i32 %462, 1
  %469 = add nuw nsw i32 %468, 48
  %470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 %469)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.f32 %470, 1
  %472 = fcmp fast ogt float %447, %471
  %473 = zext i1 %472 to i32
  %474 = add nuw nsw i32 %473, %467
  %475 = or i32 %462, 2
  %476 = add nuw nsw i32 %475, 48
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 %476)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 1
  %479 = fcmp fast ogt float %447, %478
  %480 = zext i1 %479 to i32
  %481 = add nuw nsw i32 %474, %480
  %482 = add i32 %351, -1
  %483 = call i32 @dx.op.binary.i32(i32 40, i32 %481, i32 %482)  ; UMin(a,b)
  %484 = add i32 %462, %483
  %485 = call i32 @dx.op.binary.i32(i32 40, i32 %484, i32 12)  ; UMin(a,b)
  %486 = add i32 %485, 48
  %487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 %486)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.f32 %487, 0
  %489 = fcmp fast oge float %447, %488
  %490 = zext i1 %489 to i32
  %491 = call i32 @dx.op.binary.i32(i32 40, i32 %351, i32 %461)  ; UMin(a,b)
  %492 = call i32 @dx.op.binary.i32(i32 40, i32 %490, i32 %491)  ; UMin(a,b)
  %493 = add i32 %492, %351
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %673, label %495

; <label>:495                                     ; preds = %335
  br label %496

; <label>:496                                     ; preds = %496, %495
  %497 = phi float [ %669, %496 ], [ 0.000000e+00, %495 ]
  %498 = phi float [ %661, %496 ], [ 0.000000e+00, %495 ]
  %499 = phi float [ %662, %496 ], [ 0.000000e+00, %495 ]
  %500 = phi i32 [ %508, %496 ], [ %485, %495 ]
  %501 = phi i32 [ %670, %496 ], [ 0, %495 ]
  %502 = add i32 %501, %500
  %503 = and i32 %502, -4
  %504 = add i32 %503, %351
  %505 = icmp uge i32 %502, %504
  %506 = sub i32 4, %351
  %507 = select i1 %505, i32 %506, i32 0
  %508 = add i32 %507, %500
  %509 = add i32 %507, %502
  %510 = and i32 %509, 3
  %511 = lshr i32 %509, 2
  %512 = add i32 %509, 32
  %513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 %512)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.f32 %513, 0
  %515 = extractvalue %dx.types.CBufRet.f32 %513, 1
  %516 = extractvalue %dx.types.CBufRet.f32 %513, 2
  %517 = extractvalue %dx.types.CBufRet.f32 %513, 3
  %518 = fmul fast float %514, %447
  %519 = fadd fast float %518, %515
  %520 = call float @dx.op.unary.f32(i32 7, float %519)  ; Saturate(value)
  %521 = fmul fast float %516, %447
  %522 = fadd fast float %521, %517
  %523 = call float @dx.op.unary.f32(i32 7, float %522)  ; Saturate(value)
  %524 = call float @dx.op.binary.f32(i32 36, float %520, float %523)  ; FMin(a,b)
  %525 = mul nuw nsw i32 %510, 72
  %526 = add nuw nsw i32 %368, %525
  %527 = add nuw nsw i32 %526, 16
  %528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 0
  %530 = extractvalue %dx.types.ResRet.f32 %528, 1
  %531 = extractvalue %dx.types.ResRet.f32 %528, 2
  %532 = extractvalue %dx.types.ResRet.f32 %528, 3
  %533 = add nuw nsw i32 %526, 36
  %534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = add nuw nsw i32 %526, 56
  %537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 0
  %539 = fmul fast float %259, 3.906250e-03
  %540 = fmul fast float %539, %367
  %541 = fmul fast float %540, %535
  %542 = fmul fast float %541, %538
  %543 = extractvalue %dx.types.ResRet.f32 %537, 1
  %544 = fadd fast float %542, %543
  %545 = call float @dx.op.binary.f32(i32 35, float %544, float 0.000000e+00)  ; FMax(a,b)
  %546 = add nuw nsw i32 %526, 32
  %547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = fmul fast float %535, %254
  %550 = fmul fast float %535, %255
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 1
  %553 = add nuw nsw i32 %526, 40
  %554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.f32 %554, 0
  %556 = extractvalue %dx.types.ResRet.f32 %554, 1
  %557 = extractvalue %dx.types.ResRet.f32 %554, 2
  %558 = extractvalue %dx.types.ResRet.f32 %554, 3
  %559 = fadd fast float %552, %183
  %560 = fadd fast float %559, %557
  %561 = fmul fast float %559, %556
  %562 = call float @dx.op.unary.f32(i32 29, float %561)  ; Round_z(value)
  %563 = fmul fast float %555, %562
  %564 = fsub fast float %559, %563
  %565 = fmul fast float %560, %556
  %566 = call float @dx.op.unary.f32(i32 29, float %565)  ; Round_z(value)
  %567 = fmul fast float %566, %555
  %568 = fsub fast float %560, %567
  %569 = fmul fast float %564, %549
  %570 = fmul fast float %564, %550
  %571 = fmul fast float %568, %549
  %572 = fmul fast float %568, %550
  %573 = fsub fast float %439, %569
  %574 = fsub fast float %440, %570
  %575 = fsub fast float %439, %571
  %576 = fsub fast float %440, %572
  %577 = fsub fast float %557, %564
  %578 = call float @dx.op.unary.f32(i32 6, float %577)  ; FAbs(value)
  %579 = fmul fast float %578, %558
  %580 = call float @dx.op.unary.f32(i32 7, float %579)  ; Saturate(value)
  %581 = fmul fast float %345, 4.000000e+00
  %582 = uitofp i32 %511 to float
  %583 = fadd fast float %582, %581
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %587 = extractvalue %dx.types.CBufRet.f32 %584, 2
  %588 = extractvalue %dx.types.CBufRet.f32 %584, 3
  %589 = getelementptr inbounds [4 x float], [4 x float]* %65, i32 0, i32 0
  store float %585, float* %589, align 4
  %590 = getelementptr inbounds [4 x float], [4 x float]* %65, i32 0, i32 1
  store float %586, float* %590, align 4
  %591 = getelementptr inbounds [4 x float], [4 x float]* %65, i32 0, i32 2
  store float %587, float* %591, align 4
  %592 = getelementptr inbounds [4 x float], [4 x float]* %65, i32 0, i32 3
  store float %588, float* %592, align 4
  %593 = getelementptr inbounds [4 x float], [4 x float]* %65, i32 0, i32 %511
  %594 = load float, float* %593, align 4, !tbaa !99, !noalias !103
  %595 = fmul fast float %594, %348
  %596 = fmul fast float %573, %529
  %597 = call float @dx.op.tertiary.f32(i32 46, float %530, float %574, float %596)  ; FMad(a,b,c)
  %598 = fmul fast float %573, %531
  %599 = call float @dx.op.tertiary.f32(i32 46, float %532, float %574, float %598)  ; FMad(a,b,c)
  %600 = add nuw nsw i32 %526, 8
  %601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = extractvalue %dx.types.ResRet.f32 %601, 1
  %604 = fadd fast float %602, %597
  %605 = fadd fast float %603, %599
  %606 = fmul fast float %604, %595
  %607 = fmul fast float %605, %595
  %608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.f32 %608, 0
  %610 = extractvalue %dx.types.ResRet.f32 %608, 1
  %611 = fmul fast float %606, %609
  %612 = fmul fast float %607, %610
  %613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %614 = extractvalue %dx.types.CBufRet.f32 %613, 2
  %615 = fadd fast float %611, %614
  %616 = fadd fast float %612, %614
  %617 = fmul fast float %575, %529
  %618 = call float @dx.op.tertiary.f32(i32 46, float %530, float %576, float %617)  ; FMad(a,b,c)
  %619 = fmul fast float %575, %531
  %620 = call float @dx.op.tertiary.f32(i32 46, float %532, float %576, float %619)  ; FMad(a,b,c)
  %621 = fadd fast float %602, %618
  %622 = fadd fast float %603, %620
  %623 = fmul fast float %621, %595
  %624 = fmul fast float %622, %595
  %625 = fmul fast float %623, %609
  %626 = fmul fast float %624, %610
  %627 = fadd fast float %625, %614
  %628 = fadd fast float %626, %614
  %629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %57, float %615, float %616, float %583, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %630 = extractvalue %dx.types.ResRet.f32 %629, 0
  %631 = extractvalue %dx.types.ResRet.f32 %629, 1
  %632 = extractvalue %dx.types.ResRet.f32 %629, 3
  %633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %57, float %627, float %628, float %583, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %634 = extractvalue %dx.types.ResRet.f32 %633, 0
  %635 = extractvalue %dx.types.ResRet.f32 %633, 1
  %636 = extractvalue %dx.types.ResRet.f32 %633, 3
  %637 = fsub fast float %634, %630
  %638 = fsub fast float %635, %631
  %639 = fsub fast float %636, %632
  %640 = fmul fast float %637, %580
  %641 = fmul fast float %638, %580
  %642 = fmul fast float %639, %580
  %643 = fadd fast float %640, %630
  %644 = fadd fast float %641, %631
  %645 = fadd fast float %642, %632
  %646 = fmul fast float %643, 2.000000e+00
  %647 = fmul fast float %644, 2.000000e+00
  %648 = fadd fast float %646, -1.000000e+00
  %649 = fadd fast float %647, -1.000000e+00
  %650 = fmul fast float %648, %529
  %651 = call float @dx.op.tertiary.f32(i32 46, float %649, float %531, float %650)  ; FMad(a,b,c)
  %652 = fmul fast float %648, %530
  %653 = call float @dx.op.tertiary.f32(i32 46, float %649, float %532, float %652)  ; FMad(a,b,c)
  %654 = fmul fast float %524, %434
  %655 = fmul fast float %654, %545
  %656 = fmul fast float %655, %548
  %657 = fmul fast float %651, %656
  %658 = fmul fast float %657, %609
  %659 = fmul fast float %653, %656
  %660 = fmul fast float %659, %610
  %661 = fadd fast float %658, %498
  %662 = fadd fast float %660, %499
  %663 = add nuw nsw i32 %526, 64
  %664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %663, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.f32 %664, 0
  %666 = fmul fast float %665, %645
  %667 = extractvalue %dx.types.ResRet.f32 %664, 1
  %668 = fadd fast float %666, %667
  %669 = call float @dx.op.binary.f32(i32 35, float %497, float %668)  ; FMax(a,b)
  %670 = add nuw i32 %501, 1
  %671 = icmp eq i32 %670, %493
  br i1 %671, label %672, label %496

; <label>:672                                     ; preds = %496
  br label %673

; <label>:673                                     ; preds = %672, %335
  %674 = phi float [ 0.000000e+00, %335 ], [ %669, %672 ]
  %675 = phi float [ 0.000000e+00, %335 ], [ %661, %672 ]
  %676 = phi float [ 0.000000e+00, %335 ], [ %662, %672 ]
  %677 = call float @dx.op.dot3.f32(i32 55, float %675, float %676, float 1.000000e+00, float %675, float %676, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %678 = call float @dx.op.unary.f32(i32 25, float %677)  ; Rsqrt(value)
  %679 = fmul fast float %674, %375
  %680 = fadd fast float %679, %376
  %681 = call float @dx.op.unary.f32(i32 7, float %680)  ; Saturate(value)
  %682 = fmul fast float %675, %333
  %683 = fmul fast float %682, %678
  %684 = fmul fast float %676, %333
  %685 = fmul fast float %684, %678
  %686 = fadd fast float %683, %295
  %687 = fadd fast float %685, %296
  %688 = fadd fast float %681, %430
  %689 = and i32 %342, 16
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %750, label %691

; <label>:691                                     ; preds = %673
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 0
  %694 = extractvalue %dx.types.CBufRet.f32 %692, 1
  %695 = fsub fast float %439, %693
  %696 = fsub fast float %440, %694
  %697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %698 = extractvalue %dx.types.CBufRet.f32 %697, 2
  %699 = fmul fast float %695, %698
  %700 = fmul fast float %696, %698
  %701 = fadd fast float %699, 5.000000e-01
  %702 = fadd fast float %700, 5.000000e-01
  %703 = fcmp fast olt float %701, 0.000000e+00
  %704 = fcmp fast olt float %702, 0.000000e+00
  %705 = or i1 %703, %704
  %706 = fcmp fast oge float %701, 1.000000e+00
  %707 = fcmp fast oge float %702, 1.000000e+00
  %708 = or i1 %706, %707
  %709 = or i1 %705, %708
  br i1 %709, label %741, label %710

; <label>:710                                     ; preds = %691
  %711 = fmul fast float %698, %439
  %712 = fmul fast float %698, %440
  %713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %714 = extractvalue %dx.types.CBufRet.f32 %713, 2
  %715 = fsub fast float %441, %714
  %716 = extractvalue %dx.types.CBufRet.f32 %713, 1
  %717 = fmul fast float %715, %716
  %718 = call float @dx.op.unary.f32(i32 7, float %717)  ; Saturate(value)
  %719 = call float @dx.op.binary.f32(i32 36, float %702, float %718)  ; FMin(a,b)
  %720 = call float @dx.op.binary.f32(i32 36, float %701, float %719)  ; FMin(a,b)
  %721 = call float @dx.op.binary.f32(i32 35, float %702, float %718)  ; FMax(a,b)
  %722 = call float @dx.op.binary.f32(i32 35, float %701, float %721)  ; FMax(a,b)
  %723 = fsub fast float 1.000000e+00, %722
  %724 = call float @dx.op.binary.f32(i32 36, float %720, float %723)  ; FMin(a,b)
  %725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %726 = extractvalue %dx.types.CBufRet.f32 %725, 3
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 1
  %729 = call float @dx.op.binary.f32(i32 35, float %728, float %726)  ; FMax(a,b)
  %730 = fsub fast float %729, %728
  %731 = fsub fast float %724, %728
  %732 = fdiv fast float %731, %730
  %733 = call float @dx.op.unary.f32(i32 7, float %732)  ; Saturate(value)
  %734 = fmul fast float %733, 2.000000e+00
  %735 = fsub fast float 3.000000e+00, %734
  %736 = fmul fast float %733, %733
  %737 = fmul fast float %736, %735
  %738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %57, float %711, float %712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = fmul fast float %737, %739
  br label %741

; <label>:741                                     ; preds = %710, %691
  %742 = phi float [ %740, %710 ], [ 0.000000e+00, %691 ]
  %743 = fmul fast float %391, %208
  %744 = fmul fast float %391, %209
  %745 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %746 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %432, %dx.types.Handle %745, float %743, float %744, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %747 = extractvalue %dx.types.ResRet.f32 %746, 0
  %748 = fmul fast float %747, %742
  %749 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %748)  ; FMax(a,b)
  br label %750

; <label>:750                                     ; preds = %741, %673
  %751 = phi float [ %749, %741 ], [ 0.000000e+00, %673 ]
  %752 = and i32 %342, 8
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %770, label %754

; <label>:754                                     ; preds = %750
  %755 = fadd fast float %388, 1.000000e+00
  %756 = fmul fast float %688, %755
  %757 = fsub fast float %756, %388
  %758 = fsub fast float %755, %757
  %759 = call float @dx.op.unary.f32(i32 7, float %758)  ; Saturate(value)
  %760 = fsub fast float 1.000000e+00, %756
  %761 = call float @dx.op.unary.f32(i32 7, float %760)  ; Saturate(value)
  %762 = fsub fast float %759, %761
  %763 = fsub fast float %751, %761
  %764 = fdiv fast float %763, %762
  %765 = call float @dx.op.unary.f32(i32 7, float %764)  ; Saturate(value)
  %766 = fmul fast float %765, 2.000000e+00
  %767 = fsub fast float 3.000000e+00, %766
  %768 = fmul fast float %765, %765
  %769 = fmul fast float %768, %767
  br label %770

; <label>:770                                     ; preds = %754, %750
  %771 = phi float [ %769, %754 ], [ %751, %750 ]
  %772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %773 = extractvalue %dx.types.CBufRet.f32 %772, 3
  %774 = fmul fast float %773, %771
  %775 = and i32 %342, 32
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %793, label %777

; <label>:777                                     ; preds = %770
  %778 = add i32 %400, 0
  %779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %778, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %779, %dx.types.Handle %58, float %774, float %385, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %781 = extractvalue %dx.types.ResRet.f32 %780, 0
  %782 = extractvalue %dx.types.ResRet.f32 %780, 1
  %783 = extractvalue %dx.types.ResRet.f32 %780, 2
  %784 = extractvalue %dx.types.ResRet.f32 %780, 3
  %785 = and i32 %394, 255
  %786 = uitofp i32 %785 to float
  %787 = lshr i32 %394, 8
  %788 = and i32 %787, 255
  %789 = uitofp i32 %788 to float
  %790 = fmul fast float %784, %786
  %791 = fadd fast float %790, %789
  %792 = fmul fast float %791, 0x3F70101000000000
  br label %793

; <label>:793                                     ; preds = %777, %770
  %794 = phi float [ %781, %777 ], [ %379, %770 ]
  %795 = phi float [ %782, %777 ], [ %380, %770 ]
  %796 = phi float [ %783, %777 ], [ %381, %770 ]
  %797 = phi float [ %792, %777 ], [ %382, %770 ]
  %798 = fsub fast float %794, %354
  %799 = fsub fast float %795, %355
  %800 = fsub fast float %796, %356
  %801 = fmul fast float %798, %774
  %802 = fmul fast float %799, %774
  %803 = fmul fast float %800, %774
  %804 = fadd fast float %801, %354
  %805 = fadd fast float %802, %355
  %806 = fadd fast float %803, %356
  %807 = fsub fast float %797, %357
  %808 = fmul fast float %807, %774
  %809 = fadd fast float %808, %357
  %810 = fmul fast float %363, %285
  %811 = fadd fast float %810, %364
  %812 = and i32 %298, 65535
  %813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %812)  ; LegacyF16ToF32(value)
  %814 = lshr i32 %298, 16
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = and i32 %299, 65535
  %817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %816)  ; LegacyF16ToF32(value)
  %818 = lshr i32 %299, 16
  %819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %818)  ; LegacyF16ToF32(value)
  %820 = fmul fast float %804, %333
  %821 = fmul fast float %805, %333
  %822 = fmul fast float %806, %333
  %823 = fmul fast float %809, %333
  %824 = fadd fast float %813, %820
  %825 = fadd fast float %815, %821
  %826 = fadd fast float %817, %822
  %827 = fadd fast float %819, %823
  %828 = call i32 @dx.op.legacyF32ToF16(i32 130, float %824)  ; LegacyF32ToF16(value)
  %829 = call i32 @dx.op.legacyF32ToF16(i32 130, float %825)  ; LegacyF32ToF16(value)
  %830 = shl i32 %829, 16
  %831 = or i32 %830, %828
  %832 = call i32 @dx.op.legacyF32ToF16(i32 130, float %826)  ; LegacyF32ToF16(value)
  %833 = call i32 @dx.op.legacyF32ToF16(i32 130, float %827)  ; LegacyF32ToF16(value)
  %834 = shl i32 %833, 16
  %835 = or i32 %834, %832
  %836 = and i32 %301, 65535
  %837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %836)  ; LegacyF16ToF32(value)
  %838 = lshr i32 %301, 16
  %839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %838)  ; LegacyF16ToF32(value)
  %840 = fmul fast float %360, %333
  %841 = fadd fast float %837, %333
  %842 = fadd fast float %839, %840
  %843 = call i32 @dx.op.legacyF32ToF16(i32 130, float %841)  ; LegacyF32ToF16(value)
  %844 = call i32 @dx.op.legacyF32ToF16(i32 130, float %842)  ; LegacyF32ToF16(value)
  %845 = shl i32 %844, 16
  %846 = or i32 %845, %843
  %847 = fcmp fast ogt float %811, 0.000000e+00
  %848 = select i1 %847, float 1.000000e+00, float 0.000000e+00
  %849 = and i32 %300, 65535
  %850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %849)  ; LegacyF16ToF32(value)
  %851 = lshr i32 %300, 16
  %852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %851)  ; LegacyF16ToF32(value)
  %853 = fmul fast float %811, %333
  %854 = fmul fast float %848, %333
  %855 = fadd fast float %850, %853
  %856 = fadd fast float %852, %854
  %857 = call float @dx.op.unary.f32(i32 7, float %855)  ; Saturate(value)
  %858 = call float @dx.op.unary.f32(i32 7, float %856)  ; Saturate(value)
  %859 = call i32 @dx.op.legacyF32ToF16(i32 130, float %857)  ; LegacyF32ToF16(value)
  %860 = call i32 @dx.op.legacyF32ToF16(i32 130, float %858)  ; LegacyF32ToF16(value)
  %861 = shl i32 %860, 16
  %862 = or i32 %861, %859
  br label %863

; <label>:863                                     ; preds = %793, %293
  %864 = phi i32 [ %417, %793 ], [ %294, %293 ]
  %865 = phi float [ %686, %793 ], [ %295, %293 ]
  %866 = phi float [ %687, %793 ], [ %296, %293 ]
  %867 = phi i32 [ %831, %793 ], [ %298, %293 ]
  %868 = phi i32 [ %835, %793 ], [ %299, %293 ]
  %869 = phi i32 [ %862, %793 ], [ %300, %293 ]
  %870 = phi i32 [ %846, %793 ], [ %301, %293 ]
  %871 = icmp eq i32 %306, 0
  br i1 %871, label %872, label %293

; <label>:872                                     ; preds = %863
  br label %873

; <label>:873                                     ; preds = %872, %0
  %874 = phi i32 [ %193, %0 ], [ %864, %872 ]
  %875 = phi float [ 0.000000e+00, %0 ], [ %865, %872 ]
  %876 = phi float [ 0.000000e+00, %0 ], [ %866, %872 ]
  %877 = phi i32 [ %170, %0 ], [ %867, %872 ]
  %878 = phi i32 [ %170, %0 ], [ %868, %872 ]
  %879 = phi i32 [ %170, %0 ], [ %869, %872 ]
  %880 = phi i32 [ %170, %0 ], [ %870, %872 ]
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 2
  %883 = fmul fast float %882, 0x3FE3C6EF40000000
  %884 = frem fast float %88, 2.560000e+02
  %885 = frem fast float %89, 2.560000e+02
  %886 = fptoui float %884 to i32
  %887 = fptoui float %885 to i32
  %888 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %33, i32 0, i32 %886, i32 %887, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %889 = extractvalue %dx.types.ResRet.f32 %888, 0
  %890 = extractvalue %dx.types.ResRet.f32 %888, 1
  %891 = fadd fast float %889, %883
  %892 = fadd fast float %890, %883
  %893 = call float @dx.op.unary.f32(i32 22, float %891)  ; Frc(value)
  %894 = call float @dx.op.unary.f32(i32 22, float %892)  ; Frc(value)
  %895 = fcmp fast ogt float %109, 0.000000e+00
  %896 = fcmp fast olt float %109, 0.000000e+00
  %897 = zext i1 %895 to i32
  %898 = zext i1 %896 to i32
  %899 = sub nsw i32 %897, %898
  %900 = sitofp i32 %899 to float
  %901 = fadd fast float %900, %109
  %902 = fdiv fast float -1.000000e+00, %901
  %903 = fmul fast float %107, %108
  %904 = fmul fast float %903, %902
  %905 = fmul fast float %107, %107
  %906 = fmul fast float %905, %900
  %907 = fmul fast float %906, %902
  %908 = fadd fast float %907, 1.000000e+00
  %909 = fmul fast float %904, %900
  %910 = fmul fast float %107, %900
  %911 = fsub fast float -0.000000e+00, %910
  %912 = fmul fast float %108, %108
  %913 = fmul fast float %912, %902
  %914 = fadd fast float %913, %900
  %915 = fsub fast float -0.000000e+00, %108
  %916 = and i32 %877, 65535
  %917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %916)  ; LegacyF16ToF32(value)
  %918 = lshr i32 %877, 16
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = and i32 %878, 65535
  %921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %920)  ; LegacyF16ToF32(value)
  %922 = lshr i32 %878, 16
  %923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %922)  ; LegacyF16ToF32(value)
  %924 = and i32 %880, 65535
  %925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %924)  ; LegacyF16ToF32(value)
  %926 = lshr i32 %880, 16
  %927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %926)  ; LegacyF16ToF32(value)
  %928 = call float @dx.op.unary.f32(i32 7, float %927)  ; Saturate(value)
  %929 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %930 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %931 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %932 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %933 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %934 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %935 = fadd fast float %929, %143
  %936 = fadd fast float %930, %144
  %937 = fadd fast float %931, %145
  %938 = fadd fast float %932, %143
  %939 = fadd fast float %933, %144
  %940 = fadd fast float %934, %145
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 0
  %943 = extractvalue %dx.types.CBufRet.f32 %941, 1
  %944 = extractvalue %dx.types.CBufRet.f32 %941, 2
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 2
  %947 = extractvalue %dx.types.CBufRet.f32 %945, 3
  %948 = fmul fast float %942, %88
  %949 = fmul fast float %948, %946
  %950 = fmul fast float %943, %89
  %951 = fmul fast float %950, %947
  %952 = fptoui float %949 to i32
  %953 = fptoui float %951 to i32
  %954 = fadd fast float %942, -1.000000e+00
  %955 = fadd fast float %943, -1.000000e+00
  %956 = fptoui float %954 to i32
  %957 = fptoui float %955 to i32
  %958 = call i32 @dx.op.binary.i32(i32 40, i32 %952, i32 %956)  ; UMin(a,b)
  %959 = call i32 @dx.op.binary.i32(i32 40, i32 %953, i32 %957)  ; UMin(a,b)
  %960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.f32 %960, 2
  %962 = extractvalue %dx.types.CBufRet.f32 %960, 3
  %963 = fmul fast float %961, %78
  %964 = fsub fast float %963, %962
  %965 = fadd fast float %944, -1.000000e+00
  %966 = call float @dx.op.binary.f32(i32 36, float %964, float %965)  ; FMin(a,b)
  %967 = fptoui float %966 to i32
  %968 = fptoui float %942 to i32
  %969 = fptoui float %943 to i32
  %970 = mul i32 %967, %969
  %971 = add i32 %970, %959
  %972 = mul i32 %971, %968
  %973 = add i32 %972, %958
  %974 = shl i32 %973, 2
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = and i32 %976, 1023
  %978 = lshr i32 %976, 10
  %979 = icmp eq i32 %977, 0
  br i1 %979, label %1369, label %980

; <label>:980                                     ; preds = %873
  %981 = and i32 %976, 1023
  br label %982

; <label>:982                                     ; preds = %1101, %980
  %983 = phi float [ %1102, %1101 ], [ 0.000000e+00, %980 ]
  %984 = phi float [ %1103, %1101 ], [ 0.000000e+00, %980 ]
  %985 = phi float [ %1104, %1101 ], [ 0.000000e+00, %980 ]
  %986 = phi float [ %1105, %1101 ], [ %875, %980 ]
  %987 = phi float [ %1106, %1101 ], [ %876, %980 ]
  %988 = phi float [ %1107, %1101 ], [ %925, %980 ]
  %989 = phi float [ %1108, %1101 ], [ %928, %980 ]
  %990 = phi float [ %1109, %1101 ], [ %923, %980 ]
  %991 = phi float [ %1110, %1101 ], [ %917, %980 ]
  %992 = phi float [ %1111, %1101 ], [ %919, %980 ]
  %993 = phi float [ %1112, %1101 ], [ %921, %980 ]
  %994 = phi i32 [ %1050, %1101 ], [ 0, %980 ]
  %995 = add nuw nsw i32 %994, %978
  %996 = shl i32 %995, 2
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = shl i32 %998, 8
  %1000 = or i32 %999, 48
  %1001 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.f32 %1001, 0
  %1003 = extractvalue %dx.types.ResRet.f32 %1001, 1
  %1004 = extractvalue %dx.types.ResRet.f32 %1001, 2
  %1005 = extractvalue %dx.types.ResRet.f32 %1001, 3
  %1006 = or i32 %999, 64
  %1007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.i32 %1007, 0
  %1009 = extractvalue %dx.types.ResRet.i32 %1007, 1
  %1010 = or i32 %999, 80
  %1011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.f32 %1011, 2
  %1013 = extractvalue %dx.types.ResRet.f32 %1011, 3
  %1014 = or i32 %999, 96
  %1015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 0
  %1017 = extractvalue %dx.types.ResRet.f32 %1015, 1
  %1018 = extractvalue %dx.types.ResRet.f32 %1015, 2
  %1019 = extractvalue %dx.types.ResRet.f32 %1015, 3
  %1020 = or i32 %999, 112
  %1021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 2
  %1023 = or i32 %999, 128
  %1024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.ResRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.ResRet.f32 %1024, 2
  %1028 = extractvalue %dx.types.ResRet.f32 %1024, 3
  %1029 = or i32 %999, 144
  %1030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 0
  %1032 = extractvalue %dx.types.ResRet.f32 %1030, 1
  %1033 = extractvalue %dx.types.ResRet.f32 %1030, 2
  %1034 = extractvalue %dx.types.ResRet.f32 %1030, 3
  %1035 = or i32 %999, 160
  %1036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.ResRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.ResRet.f32 %1036, 2
  %1040 = or i32 %999, 192
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1040, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = or i32 %999, 208
  %1044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1046 = or i32 %999, 248
  %1047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.ResRet.f32 %1047, 1
  %1050 = add nuw nsw i32 %994, 1
  %1051 = bitcast float %1005 to i32
  %1052 = and i32 %1051, 512
  %1053 = icmp ne i32 %1052, 0
  %1054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.ResRet.f32 %1054, 1
  %1057 = extractvalue %dx.types.ResRet.f32 %1054, 2
  %1058 = extractvalue %dx.types.ResRet.f32 %1054, 3
  %1059 = call float @dx.op.dot4.f32(i32 56, float %1055, float %1056, float %1057, float %1058, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1060 = or i32 %999, 16
  %1061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.f32 %1061, 0
  %1063 = extractvalue %dx.types.ResRet.f32 %1061, 1
  %1064 = extractvalue %dx.types.ResRet.f32 %1061, 2
  %1065 = extractvalue %dx.types.ResRet.f32 %1061, 3
  %1066 = call float @dx.op.dot4.f32(i32 56, float %1062, float %1063, float %1064, float %1065, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1067 = or i32 %999, 32
  %1068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.f32 %1068, 0
  %1070 = extractvalue %dx.types.ResRet.f32 %1068, 1
  %1071 = extractvalue %dx.types.ResRet.f32 %1068, 2
  %1072 = extractvalue %dx.types.ResRet.f32 %1068, 3
  %1073 = call float @dx.op.dot4.f32(i32 56, float %1069, float %1070, float %1071, float %1072, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1074 = call float @dx.op.unary.f32(i32 27, float %1059)  ; Round_ni(value)
  %1075 = call float @dx.op.unary.f32(i32 6, float %1074)  ; FAbs(value)
  %1076 = call float @dx.op.unary.f32(i32 27, float %1066)  ; Round_ni(value)
  %1077 = call float @dx.op.unary.f32(i32 6, float %1076)  ; FAbs(value)
  %1078 = call float @dx.op.unary.f32(i32 6, float %1073)  ; FAbs(value)
  %1079 = call float @dx.op.unary.f32(i32 27, float %1078)  ; Round_ni(value)
  %1080 = fadd fast float %1077, %1075
  %1081 = fadd fast float %1080, %1079
  %1082 = fcmp fast oeq float %1081, 0.000000e+00
  %1083 = call float @dx.op.dot4.f32(i32 56, float %1055, float %1056, float %1057, float %1058, float %935, float %936, float %937, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1084 = call float @dx.op.dot4.f32(i32 56, float %1062, float %1063, float %1064, float %1065, float %935, float %936, float %937, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1085 = call float @dx.op.dot4.f32(i32 56, float %1055, float %1056, float %1057, float %1058, float %938, float %939, float %940, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1086 = call float @dx.op.dot4.f32(i32 56, float %1062, float %1063, float %1064, float %1065, float %938, float %939, float %940, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1087 = fsub fast float %1083, %1059
  %1088 = fsub fast float %1085, %1059
  %1089 = fsub fast float %1084, %1066
  %1090 = fsub fast float %1086, %1066
  %1091 = call float @dx.op.dot3.f32(i32 55, float %1002, float %1003, float %1004, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 2
  %1094 = call float @dx.op.unary.f32(i32 6, float %1091)  ; FAbs(value)
  %1095 = fadd fast float %1094, %1093
  %1096 = call float @dx.op.unary.f32(i32 7, float %1095)  ; Saturate(value)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1092, 0
  %1098 = fcmp fast ogt float %1096, %1097
  %1099 = and i1 %1082, %1098
  %1100 = and i1 %1053, %1099
  br i1 %1100, label %1114, label %1101

; <label>:1101                                    ; preds = %1355, %1195, %1114, %982
  %1102 = phi float [ %983, %1114 ], [ %983, %1195 ], [ %1365, %1355 ], [ %983, %982 ]
  %1103 = phi float [ %984, %1114 ], [ %984, %1195 ], [ %1366, %1355 ], [ %984, %982 ]
  %1104 = phi float [ %985, %1114 ], [ %985, %1195 ], [ %1367, %1355 ], [ %985, %982 ]
  %1105 = phi float [ %986, %1114 ], [ %986, %1195 ], [ %1329, %1355 ], [ %986, %982 ]
  %1106 = phi float [ %987, %1114 ], [ %987, %1195 ], [ %1330, %1355 ], [ %987, %982 ]
  %1107 = phi float [ %988, %1114 ], [ %988, %1195 ], [ %1324, %1355 ], [ %988, %982 ]
  %1108 = phi float [ %989, %1114 ], [ %989, %1195 ], [ %1321, %1355 ], [ %989, %982 ]
  %1109 = phi float [ %990, %1114 ], [ %990, %1195 ], [ %1318, %1355 ], [ %990, %982 ]
  %1110 = phi float [ %991, %1114 ], [ %991, %1195 ], [ %1313, %1355 ], [ %991, %982 ]
  %1111 = phi float [ %992, %1114 ], [ %992, %1195 ], [ %1314, %1355 ], [ %992, %982 ]
  %1112 = phi float [ %993, %1114 ], [ %993, %1195 ], [ %1315, %1355 ], [ %993, %982 ]
  %1113 = icmp eq i32 %1050, %981
  br i1 %1113, label %1368, label %982

; <label>:1114                                    ; preds = %982
  %1115 = extractvalue %dx.types.ResRet.f32 %1021, 3
  %1116 = extractvalue %dx.types.ResRet.f32 %1021, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1021, 0
  %1118 = extractvalue %dx.types.ResRet.f32 %1011, 1
  %1119 = extractvalue %dx.types.ResRet.f32 %1011, 0
  %1120 = extractvalue %dx.types.ResRet.i32 %1007, 3
  %1121 = extractvalue %dx.types.ResRet.i32 %1007, 2
  %1122 = add i32 %1120, 0
  %1123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1122, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1125 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1123, %dx.types.Handle %1124, float %1059, float %1066, float undef, float undef, i32 0, i32 0, i32 undef, float %1087, float %1089, float undef, float %1088, float %1090, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  %1127 = fmul fast float %1126, %1119
  %1128 = fadd fast float %1127, %1118
  %1129 = call float @dx.op.unary.f32(i32 7, float %1128)  ; Saturate(value)
  %1130 = fmul fast float %1059, %1016
  %1131 = call float @dx.op.tertiary.f32(i32 46, float %1017, float %1066, float %1130)  ; FMad(a,b,c)
  %1132 = fadd fast float %1131, %1117
  %1133 = fmul fast float %1059, %1018
  %1134 = call float @dx.op.tertiary.f32(i32 46, float %1019, float %1066, float %1133)  ; FMad(a,b,c)
  %1135 = fadd fast float %1134, %1116
  %1136 = fmul fast float %1087, %1016
  %1137 = call float @dx.op.tertiary.f32(i32 46, float %1017, float %1089, float %1136)  ; FMad(a,b,c)
  %1138 = fmul fast float %1087, %1018
  %1139 = call float @dx.op.tertiary.f32(i32 46, float %1019, float %1089, float %1138)  ; FMad(a,b,c)
  %1140 = fmul fast float %1088, %1016
  %1141 = call float @dx.op.tertiary.f32(i32 46, float %1017, float %1090, float %1140)  ; FMad(a,b,c)
  %1142 = fmul fast float %1088, %1018
  %1143 = call float @dx.op.tertiary.f32(i32 46, float %1019, float %1090, float %1142)  ; FMad(a,b,c)
  %1144 = add i32 %1121, 0
  %1145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1144, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1146 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1145, %dx.types.Handle %1124, float %1132, float %1135, float undef, float undef, i32 0, i32 0, i32 undef, float %1137, float %1139, float undef, float %1141, float %1143, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = and i32 %1051, 1024
  %1149 = icmp ne i32 %1148, 0
  %1150 = fcmp fast ogt float %1147, 0x3FE0101020000000
  %1151 = uitofp i1 %1150 to float
  %1152 = select i1 %1149, float %1151, float %1147
  %1153 = and i32 %1051, 8192
  %1154 = icmp ne i32 %1153, 0
  %1155 = select i1 %1154, float %1115, float 1.000000e+00
  %1156 = fmul fast float %1059, 2.000000e+00
  %1157 = fadd fast float %1156, -1.000000e+00
  %1158 = call float @dx.op.unary.f32(i32 6, float %1157)  ; FAbs(value)
  %1159 = fmul fast float %1158, %1048
  %1160 = fsub fast float %1159, %1048
  %1161 = call float @dx.op.unary.f32(i32 7, float %1160)  ; Saturate(value)
  %1162 = fmul fast float %1066, 2.000000e+00
  %1163 = fadd fast float %1162, -1.000000e+00
  %1164 = call float @dx.op.unary.f32(i32 6, float %1163)  ; FAbs(value)
  %1165 = fmul fast float %1164, %1049
  %1166 = fsub fast float %1165, %1049
  %1167 = call float @dx.op.unary.f32(i32 7, float %1166)  ; Saturate(value)
  %1168 = fmul fast float %1078, %1012
  %1169 = fsub fast float %1168, %1012
  %1170 = call float @dx.op.unary.f32(i32 7, float %1169)  ; Saturate(value)
  %1171 = fmul fast float %1129, %1155
  %1172 = fmul fast float %1171, %1126
  %1173 = fmul fast float %1172, %1161
  %1174 = fmul fast float %1173, %1152
  %1175 = fmul fast float %1174, %1167
  %1176 = fmul fast float %1175, %1170
  %1177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1178 = extractvalue %dx.types.CBufRet.f32 %1177, 1
  %1179 = extractvalue %dx.types.CBufRet.f32 %1177, 0
  %1180 = fsub fast float %1096, %1179
  %1181 = fmul fast float %1180, %1178
  %1182 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  %1183 = fmul fast float %1176, %1013
  %1184 = fadd fast float %1176, %1013
  %1185 = fmul fast float %1184, %1022
  %1186 = fsub fast float %1185, %1022
  %1187 = call float @dx.op.unary.f32(i32 7, float %1186)  ; Saturate(value)
  %1188 = and i32 %1051, 128
  %1189 = icmp ne i32 %1188, 0
  %1190 = select i1 %1189, float %1187, float %1183
  %1191 = fmul fast float %1190, %1182
  %1192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.f32 %1192, 0
  %1194 = fcmp fast ugt float %1191, %1193
  br i1 %1194, label %1195, label %1101

; <label>:1195                                    ; preds = %1114
  br i1 %1154, label %1101, label %1196

; <label>:1196                                    ; preds = %1195
  %1197 = and i32 %1051, 4
  %1198 = and i32 %1051, 8
  %1199 = add i32 %1008, 0
  %1200 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1199, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1202 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1200, %dx.types.Handle %1201, float %1132, float %1135, float undef, float undef, i32 0, i32 0, i32 undef, float %1137, float %1139, float undef, float %1141, float %1143, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.ResRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.ResRet.f32 %1202, 2
  %1206 = extractvalue %dx.types.ResRet.f32 %1202, 3
  %1207 = bitcast float %1034 to i32
  %1208 = and i32 %1207, 255
  %1209 = uitofp i32 %1208 to float
  %1210 = lshr i32 %1207, 8
  %1211 = and i32 %1210, 255
  %1212 = uitofp i32 %1211 to float
  %1213 = fmul fast float %1206, %1209
  %1214 = fadd fast float %1213, %1212
  %1215 = fmul fast float %1214, 0x3F70101000000000
  %1216 = add i32 %1009, 0
  %1217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1216, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1218 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1217, %dx.types.Handle %1201, float %1132, float %1135, float undef, float undef, i32 0, i32 0, i32 undef, float %1137, float %1139, float undef, float %1141, float %1143, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.ResRet.f32 %1218, 2
  %1222 = extractvalue %dx.types.ResRet.f32 %1218, 3
  %1223 = bitcast float %1028 to i32
  %1224 = and i32 %1223, 255
  %1225 = uitofp i32 %1224 to float
  %1226 = lshr i32 %1223, 8
  %1227 = and i32 %1226, 255
  %1228 = uitofp i32 %1227 to float
  %1229 = lshr i32 %1223, 16
  %1230 = and i32 %1229, 255
  %1231 = uitofp i32 %1230 to float
  %1232 = fmul fast float %1231, 0x3F70101000000000
  %1233 = fmul fast float %1219, %1225
  %1234 = fadd fast float %1233, %1228
  %1235 = fmul fast float %1234, 0x3F70101000000000
  %1236 = fadd fast float %1220, -5.000000e-01
  %1237 = fadd fast float %1222, -5.000000e-01
  %1238 = fmul fast float %1236, %1232
  %1239 = fmul fast float %1237, %1232
  %1240 = fadd fast float %1238, 5.000000e-01
  %1241 = fadd fast float %1239, 5.000000e-01
  %1242 = fmul fast float %1203, %1037
  %1243 = fmul fast float %1204, %1038
  %1244 = fmul fast float %1205, %1039
  %1245 = fmul fast float %1240, 2.000000e+00
  %1246 = fadd fast float %1245, -1.000000e+00
  %1247 = fmul fast float %1241, 2.000000e+00
  %1248 = fadd fast float %1247, -1.000000e+00
  %1249 = fadd fast float %1246, %1248
  %1250 = fmul fast float %1249, 5.000000e-01
  %1251 = fsub fast float %1246, %1248
  %1252 = fmul fast float %1251, 5.000000e-01
  %1253 = call float @dx.op.unary.f32(i32 6, float %1250)  ; FAbs(value)
  %1254 = fsub fast float 1.000000e+00, %1253
  %1255 = call float @dx.op.unary.f32(i32 6, float %1252)  ; FAbs(value)
  %1256 = fsub fast float %1254, %1255
  %1257 = call float @dx.op.dot3.f32(i32 55, float %1250, float %1252, float %1256, float %1250, float %1252, float %1256)  ; Dot3(ax,ay,az,bx,by,bz)
  %1258 = call float @dx.op.unary.f32(i32 25, float %1257)  ; Rsqrt(value)
  %1259 = fmul fast float %1250, %1258
  %1260 = fmul fast float %1252, %1258
  %1261 = fmul fast float %1258, %1256
  %1262 = fmul fast float %1261, %1002
  %1263 = fmul fast float %1261, %1003
  %1264 = fmul fast float %1261, %1004
  %1265 = fmul fast float %1259, %1025
  %1266 = fmul fast float %1259, %1026
  %1267 = fmul fast float %1259, %1027
  %1268 = fadd fast float %1265, %1262
  %1269 = fadd fast float %1266, %1263
  %1270 = fadd fast float %1267, %1264
  %1271 = fmul fast float %1260, %1031
  %1272 = fmul fast float %1260, %1032
  %1273 = fmul fast float %1260, %1033
  %1274 = fadd fast float %1268, %1271
  %1275 = fadd fast float %1269, %1272
  %1276 = fadd fast float %1270, %1273
  %1277 = call float @dx.op.dot3.f32(i32 55, float %1274, float %1275, float %1276, float %1274, float %1275, float %1276)  ; Dot3(ax,ay,az,bx,by,bz)
  %1278 = call float @dx.op.unary.f32(i32 25, float %1277)  ; Rsqrt(value)
  %1279 = fmul fast float %1274, %1278
  %1280 = fmul fast float %1275, %1278
  %1281 = fmul fast float %1276, %1278
  %1282 = fcmp fast ogt float %1091, %1097
  %1283 = fsub fast float -0.000000e+00, %1279
  %1284 = fsub fast float -0.000000e+00, %1280
  %1285 = fsub fast float -0.000000e+00, %1281
  %1286 = select i1 %1282, float %1279, float %1283
  %1287 = select i1 %1282, float %1280, float %1284
  %1288 = select i1 %1282, float %1281, float %1285
  %1289 = fmul fast float %1286, %908
  %1290 = call float @dx.op.tertiary.f32(i32 46, float %1287, float %909, float %1289)  ; FMad(a,b,c)
  %1291 = call float @dx.op.tertiary.f32(i32 46, float %1288, float %911, float %1290)  ; FMad(a,b,c)
  %1292 = fmul fast float %1286, %904
  %1293 = call float @dx.op.tertiary.f32(i32 46, float %1287, float %914, float %1292)  ; FMad(a,b,c)
  %1294 = call float @dx.op.tertiary.f32(i32 46, float %1288, float %915, float %1293)  ; FMad(a,b,c)
  %1295 = icmp ne i32 %1198, 0
  %1296 = select i1 %1295, float 1.000000e+00, float 0.000000e+00
  %1297 = fmul fast float %1191, %1296
  %1298 = and i32 %1051, 1
  %1299 = icmp ne i32 %1298, 0
  %1300 = fadd fast float %1291, %986
  %1301 = fadd fast float %1294, %987
  %1302 = select i1 %1299, float %1300, float %1291
  %1303 = select i1 %1299, float %1301, float %1294
  %1304 = icmp ne i32 %1197, 0
  %1305 = select i1 %1304, float 1.000000e+00, float 0.000000e+00
  %1306 = fmul fast float %1191, %1305
  %1307 = fsub fast float %1242, %991
  %1308 = fsub fast float %1243, %992
  %1309 = fsub fast float %1244, %993
  %1310 = fmul fast float %1307, %1306
  %1311 = fmul fast float %1308, %1306
  %1312 = fmul fast float %1309, %1306
  %1313 = fadd fast float %1310, %991
  %1314 = fadd fast float %1311, %992
  %1315 = fadd fast float %1312, %993
  %1316 = fsub fast float %1215, %990
  %1317 = fmul fast float %1316, %1306
  %1318 = fadd fast float %1317, %990
  %1319 = fsub fast float %1235, %989
  %1320 = fmul fast float %1319, %1297
  %1321 = fadd fast float %1320, %989
  %1322 = fsub fast float %1221, %988
  %1323 = fmul fast float %1322, %1297
  %1324 = fadd fast float %1323, %988
  %1325 = fsub fast float %1302, %986
  %1326 = fsub fast float %1303, %987
  %1327 = fmul fast float %1325, %1297
  %1328 = fmul fast float %1326, %1297
  %1329 = fadd fast float %1327, %986
  %1330 = fadd fast float %1328, %987
  %1331 = and i32 %1051, 16
  %1332 = icmp eq i32 %1331, 0
  br i1 %1332, label %1355, label %1333

; <label>:1333                                    ; preds = %1196
  %1334 = bitcast float %1045 to i32
  %1335 = add i32 %1042, 0
  %1336 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1335, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1337 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1336, %dx.types.Handle %1201, float %1132, float %1135, float undef, float undef, i32 0, i32 0, i32 undef, float %1137, float %1139, float undef, float %1141, float %1143, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1338 = extractvalue %dx.types.ResRet.f32 %1337, 0
  %1339 = extractvalue %dx.types.ResRet.f32 %1337, 1
  %1340 = extractvalue %dx.types.ResRet.f32 %1337, 2
  %1341 = and i32 %1334, 65535
  %1342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1341)  ; LegacyF16ToF32(value)
  %1343 = fmul fast float %1338, %1037
  %1344 = fmul fast float %1339, %1038
  %1345 = fmul fast float %1340, %1039
  %1346 = and i32 %1051, 16384
  %1347 = icmp ne i32 %1346, 0
  %1348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1349 = extractvalue %dx.types.CBufRet.f32 %1348, 0
  %1350 = select i1 %1347, float %1349, float 1.000000e+00
  %1351 = fmul fast float %1350, %1342
  %1352 = fmul fast float %1343, %1351
  %1353 = fmul fast float %1344, %1351
  %1354 = fmul fast float %1345, %1351
  br label %1355

; <label>:1355                                    ; preds = %1333, %1196
  %1356 = phi float [ %1352, %1333 ], [ 0.000000e+00, %1196 ]
  %1357 = phi float [ %1353, %1333 ], [ 0.000000e+00, %1196 ]
  %1358 = phi float [ %1354, %1333 ], [ 0.000000e+00, %1196 ]
  %1359 = fsub fast float %1356, %983
  %1360 = fsub fast float %1357, %984
  %1361 = fsub fast float %1358, %985
  %1362 = fmul fast float %1359, %1191
  %1363 = fmul fast float %1360, %1191
  %1364 = fmul fast float %1361, %1191
  %1365 = fadd fast float %1362, %983
  %1366 = fadd fast float %1363, %984
  %1367 = fadd fast float %1364, %985
  br label %1101

; <label>:1368                                    ; preds = %1101
  br label %1369

; <label>:1369                                    ; preds = %1368, %873
  %1370 = phi float [ 0.000000e+00, %873 ], [ %1102, %1368 ]
  %1371 = phi float [ 0.000000e+00, %873 ], [ %1103, %1368 ]
  %1372 = phi float [ 0.000000e+00, %873 ], [ %1104, %1368 ]
  %1373 = phi float [ %875, %873 ], [ %1105, %1368 ]
  %1374 = phi float [ %876, %873 ], [ %1106, %1368 ]
  %1375 = phi float [ %925, %873 ], [ %1107, %1368 ]
  %1376 = phi float [ %928, %873 ], [ %1108, %1368 ]
  %1377 = phi float [ %923, %873 ], [ %1109, %1368 ]
  %1378 = phi float [ %917, %873 ], [ %1110, %1368 ]
  %1379 = phi float [ %919, %873 ], [ %1111, %1368 ]
  %1380 = phi float [ %921, %873 ], [ %1112, %1368 ]
  %1381 = call float @dx.op.dot2.f32(i32 54, float %1373, float %1374, float %1373, float %1374)  ; Dot2(ax,ay,bx,by)
  %1382 = fmul fast float %1381, 0x3FE3333340000000
  %1383 = fsub fast float 1.000000e+00, %1382
  %1384 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1383, float %1373, float %1374, float %1383)  ; Dot3(ax,ay,az,bx,by,bz)
  %1385 = call float @dx.op.unary.f32(i32 25, float %1384)  ; Rsqrt(value)
  %1386 = fmul fast float %1385, %1373
  %1387 = fmul fast float %1385, %1374
  %1388 = fmul fast float %1383, %1385
  %1389 = fmul fast float %1388, %107
  %1390 = fmul fast float %1388, %108
  %1391 = fmul fast float %1388, %109
  %1392 = fmul fast float %1386, %908
  %1393 = fmul fast float %1386, %909
  %1394 = fmul fast float %1386, %911
  %1395 = fadd fast float %1389, %1392
  %1396 = fadd fast float %1390, %1393
  %1397 = fadd fast float %1391, %1394
  %1398 = fmul fast float %1387, %904
  %1399 = fmul fast float %1387, %914
  %1400 = fmul fast float %1387, %915
  %1401 = fadd fast float %1395, %1398
  %1402 = fadd fast float %1396, %1399
  %1403 = fadd fast float %1397, %1400
  %1404 = call float @dx.op.dot3.f32(i32 55, float %1401, float %1402, float %1403, float %1401, float %1402, float %1403)  ; Dot3(ax,ay,az,bx,by,bz)
  %1405 = call float @dx.op.unary.f32(i32 25, float %1404)  ; Rsqrt(value)
  %1406 = fmul fast float %1401, %1405
  %1407 = fmul fast float %1402, %1405
  %1408 = fmul fast float %1403, %1405
  %1409 = fadd fast float %1377, 0xBFB99999A0000000
  %1410 = call float @dx.op.unary.f32(i32 7, float %1409)  ; Saturate(value)
  %1411 = fmul fast float %1410, 0x3FF1C71C80000000
  %1412 = call float @dx.op.binary.f32(i32 36, float %1377, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1413 = fsub fast float 1.000000e+00, %1411
  %1414 = call float @dx.op.unary.f32(i32 7, float %1413)  ; Saturate(value)
  %1415 = fmul fast float %1414, %1378
  %1416 = fmul fast float %1414, %1379
  %1417 = fmul fast float %1414, %1380
  %1418 = call float @dx.op.unary.f32(i32 7, float %1415)  ; Saturate(value)
  %1419 = call float @dx.op.unary.f32(i32 7, float %1416)  ; Saturate(value)
  %1420 = call float @dx.op.unary.f32(i32 7, float %1417)  ; Saturate(value)
  %1421 = fmul fast float %1411, %1378
  %1422 = fmul fast float %1411, %1379
  %1423 = fmul fast float %1411, %1380
  %1424 = fadd fast float %1421, %1412
  %1425 = fadd fast float %1422, %1412
  %1426 = fadd fast float %1423, %1412
  %1427 = call float @dx.op.unary.f32(i32 7, float %1424)  ; Saturate(value)
  %1428 = call float @dx.op.unary.f32(i32 7, float %1425)  ; Saturate(value)
  %1429 = call float @dx.op.unary.f32(i32 7, float %1426)  ; Saturate(value)
  %1430 = fmul fast float %1428, 0x401CF23780000000
  %1431 = fadd fast float %1430, 0x3FF32641C0000000
  %1432 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %1433 = call float @dx.op.unary.f32(i32 25, float %1432)  ; Rsqrt(value)
  %1434 = fmul fast float %1433, %143
  %1435 = fmul fast float %1433, %144
  %1436 = fmul fast float %1433, %145
  %1437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1438 = extractvalue %dx.types.CBufRet.f32 %1437, 0
  %1439 = fdiv fast float 1.000000e+00, %1431
  %1440 = select i1 %105, float %1439, float %1431
  %1441 = fadd fast float %1440, -1.000000e+00
  %1442 = fadd fast float %1440, 1.000000e+00
  %1443 = fdiv fast float %1441, %1442
  %1444 = fmul fast float %1443, %1443
  %1445 = call float @dx.op.dot3.f32(i32 55, float %1434, float %1435, float %1436, float %1406, float %1407, float %1408)  ; Dot3(ax,ay,az,bx,by,bz)
  %1446 = select i1 %105, float 0.000000e+00, float %1438
  %1447 = fadd fast float %1445, %1446
  %1448 = call float @dx.op.binary.f32(i32 35, float %1447, float -1.000000e+00)  ; FMax(a,b)
  %1449 = call float @dx.op.binary.f32(i32 36, float %1448, float 1.000000e+00)  ; FMin(a,b)
  %1450 = fmul fast float %1440, %1440
  %1451 = fmul fast float %1449, %1449
  %1452 = fsub fast float 1.000000e+00, %1451
  %1453 = fmul fast float %1450, %1452
  %1454 = fsub fast float 1.000000e+00, %1453
  %1455 = fcmp fast olt float %1440, 1.000000e+00
  %1456 = select i1 %1455, float %1451, float %1454
  %1457 = fcmp fast ogt float %1454, 0.000000e+00
  %1458 = fsub fast float 1.000000e+00, %1444
  %1459 = call float @dx.op.unary.f32(i32 24, float %1456)  ; Sqrt(value)
  %1460 = fsub fast float 1.000000e+00, %1459
  %1461 = call float @dx.op.unary.f32(i32 23, float %1460)  ; Log(value)
  %1462 = fmul fast float %1461, 5.000000e+00
  %1463 = call float @dx.op.unary.f32(i32 21, float %1462)  ; Exp(value)
  %1464 = fmul fast float %1463, %1458
  %1465 = fadd fast float %1464, %1444
  %1466 = select i1 %1457, float %1465, float 1.000000e+00
  %1467 = lshr i32 %874, 24
  %1468 = uitofp i32 %1467 to float
  %1469 = fmul fast float %1468, 0x3F70101020000000
  %1470 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  %1471 = fmul fast float %143, %143
  %1472 = fmul fast float %144, %144
  %1473 = fadd fast float %1472, %1471
  %1474 = fmul fast float %145, %145
  %1475 = fadd fast float %1473, %1474
  %1476 = call float @dx.op.unary.f32(i32 24, float %1475)  ; Sqrt(value)
  %1477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %1478 = extractvalue %dx.types.CBufRet.f32 %1477, 0
  %1479 = fmul fast float %1478, %1476
  %1480 = extractvalue %dx.types.CBufRet.f32 %1477, 1
  %1481 = fadd fast float %1479, %1480
  %1482 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  %1483 = fmul fast float %1470, 2.550000e+02
  %1484 = fmul fast float %1483, %1482
  %1485 = fptoui float %1484 to i32
  %1486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1487 = extractvalue %dx.types.CBufRet.f32 %1486, 3
  %1488 = fmul fast float %1487, %1376
  %1489 = call float @dx.op.unary.f32(i32 7, float %1488)  ; Saturate(value)
  %1490 = call float @dx.op.unary.f32(i32 7, float %1375)  ; Saturate(value)
  %1491 = fmul fast float %70, 6.553500e+04
  %1492 = call float @dx.op.unary.f32(i32 26, float %1491)  ; Round_ne(value)
  %1493 = fptosi float %1492 to i32
  %1494 = call i32 @dx.op.binary.i32(i32 37, i32 %1493, i32 0)  ; IMax(a,b)
  %1495 = call i32 @dx.op.binary.i32(i32 38, i32 %1494, i32 65535)  ; IMin(a,b)
  %1496 = fmul fast float %71, 6.553500e+04
  %1497 = call float @dx.op.unary.f32(i32 26, float %1496)  ; Round_ne(value)
  %1498 = fptosi float %1497 to i32
  %1499 = call i32 @dx.op.binary.i32(i32 37, i32 %1498, i32 0)  ; IMax(a,b)
  %1500 = call i32 @dx.op.binary.i32(i32 38, i32 %1499, i32 65535)  ; IMin(a,b)
  %1501 = shl i32 %1500, 16
  %1502 = or i32 %1501, %1495
  %1503 = call float @dx.op.dot3.f32(i32 55, float %1427, float %1428, float %1429, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1504 = fsub fast float 1.000000e+00, %1503
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = and i32 %1506, 255
  %1508 = uitofp i32 %1507 to float
  %1509 = lshr i32 %1506, 8
  %1510 = and i32 %1509, 255
  %1511 = uitofp i32 %1510 to float
  %1512 = fmul fast float %1511, %1504
  %1513 = fadd fast float %1512, %1508
  %1514 = fmul fast float %1513, 0x3F70101020000000
  %1515 = call float @dx.op.unary.f32(i32 7, float %1514)  ; Saturate(value)
  %1516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1517 = extractvalue %dx.types.CBufRet.f32 %1516, 0
  %1518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1520 = extractvalue %dx.types.CBufRet.i32 %1519, 3
  %1521 = and i32 %1520, 3
  %1522 = icmp ne i32 %1521, 0
  %1523 = and i32 %1520, 4
  %1524 = icmp ne i32 %1523, 0
  %1525 = and i1 %1522, %1524
  br i1 %1525, label %1526, label %1537

; <label>:1526                                    ; preds = %1369
  %1527 = extractvalue %dx.types.CBufRet.f32 %1518, 3
  %1528 = fmul fast float %1527, %89
  %1529 = extractvalue %dx.types.CBufRet.f32 %1518, 2
  %1530 = fmul fast float %1529, %88
  %1531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %58, float %1530, float %1528, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1532 = extractvalue %dx.types.ResRet.f32 %1531, 0
  %1533 = fsub fast float 1.000000e+00, %1532
  %1534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1535 = extractvalue %dx.types.CBufRet.f32 %1534, 0
  %1536 = fcmp fast olt float %1533, %1535
  br label %1540

; <label>:1537                                    ; preds = %1369
  %1538 = icmp eq i32 %1523, 0
  %1539 = and i1 %1522, %1538
  br label %1540

; <label>:1540                                    ; preds = %1537, %1526
  %1541 = phi i1 [ %1536, %1526 ], [ %1539, %1537 ]
  %1542 = fsub fast float -0.000000e+00, %145
  %1543 = fsub fast float -0.000000e+00, %1434
  %1544 = fsub fast float -0.000000e+00, %1435
  %1545 = fsub fast float -0.000000e+00, %1436
  %1546 = select i1 %1541, float 0.000000e+00, float %1429
  %1547 = call float @dx.op.dot3.f32(i32 55, float %1406, float %1407, float %1408, float %1543, float %1544, float %1545)  ; Dot3(ax,ay,az,bx,by,bz)
  %1548 = call float @dx.op.unary.f32(i32 7, float %1547)  ; Saturate(value)
  %1549 = fmul fast float %1445, 2.000000e+00
  %1550 = fmul fast float %1549, %1406
  %1551 = fmul fast float %1549, %1407
  %1552 = fmul fast float %1549, %1408
  %1553 = fsub fast float %1434, %1550
  %1554 = fsub fast float %1435, %1551
  %1555 = fsub fast float %1436, %1552
  %1556 = call float @dx.op.binary.f32(i32 36, float %1490, float 1.000000e+00)  ; FMin(a,b)
  %1557 = fsub fast float 1.000000e+00, %1490
  %1558 = bitcast float %1557 to i32
  %1559 = sub nsw i32 2129859010, %1558
  %1560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1561 = extractvalue %dx.types.CBufRet.f32 %1560, 0
  %1562 = extractvalue %dx.types.CBufRet.f32 %1560, 1
  %1563 = extractvalue %dx.types.CBufRet.f32 %1560, 2
  %1564 = fadd fast float %1561, %143
  %1565 = fadd fast float %1562, %144
  %1566 = fadd fast float %1563, %145
  %1567 = fmul fast float %1406, 3.200000e+01
  %1568 = fmul fast float %1407, 3.200000e+01
  %1569 = fadd fast float %1564, %1567
  %1570 = fadd fast float %1565, %1568
  %1571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1572 = extractvalue %dx.types.CBufRet.f32 %1571, 0
  %1573 = extractvalue %dx.types.CBufRet.f32 %1571, 1
  %1574 = fsub fast float %1569, %1572
  %1575 = fsub fast float %1570, %1573
  %1576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1577 = extractvalue %dx.types.CBufRet.f32 %1576, 0
  %1578 = extractvalue %dx.types.CBufRet.f32 %1576, 1
  %1579 = fmul fast float %1574, %1577
  %1580 = fmul fast float %1575, %1578
  %1581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1582 = extractvalue %dx.types.CBufRet.f32 %1581, 0
  %1583 = fmul fast float %1579, %1582
  %1584 = extractvalue %dx.types.CBufRet.f32 %1581, 1
  %1585 = fadd fast float %1583, %1584
  %1586 = extractvalue %dx.types.CBufRet.f32 %1581, 2
  %1587 = fmul fast float %1586, %1580
  %1588 = extractvalue %dx.types.CBufRet.f32 %1581, 3
  %1589 = fadd fast float %1587, %1588
  %1590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %58, float %1585, float %1589, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1591 = extractvalue %dx.types.ResRet.f32 %1590, 0
  %1592 = extractvalue %dx.types.ResRet.f32 %1590, 1
  %1593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1594 = extractvalue %dx.types.CBufRet.f32 %1593, 1
  %1595 = extractvalue %dx.types.CBufRet.f32 %1593, 0
  %1596 = fsub fast float %1594, %1595
  %1597 = fmul fast float %1596, %1591
  %1598 = fadd fast float %1597, %1595
  %1599 = extractvalue %dx.types.CBufRet.f32 %1593, 3
  %1600 = extractvalue %dx.types.CBufRet.f32 %1593, 2
  %1601 = fsub fast float %1599, %1600
  %1602 = fmul fast float %1601, %1592
  %1603 = fadd fast float %1602, %1600
  %1604 = fsub fast float %1566, %1598
  %1605 = fsub fast float %1603, %1598
  %1606 = fdiv fast float %1604, %1605
  %1607 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  %1608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1609 = extractvalue %dx.types.CBufRet.f32 %1608, 0
  %1610 = fmul fast float %1609, %1607
  %1611 = extractvalue %dx.types.CBufRet.f32 %1608, 1
  %1612 = fadd fast float %1610, %1611
  %1613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %58, float %1585, float %1589, float %1612, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1614 = extractvalue %dx.types.ResRet.f32 %1613, 0
  %1615 = extractvalue %dx.types.ResRet.f32 %1613, 1
  %1616 = extractvalue %dx.types.ResRet.f32 %1613, 2
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 0
  %1619 = extractvalue %dx.types.CBufRet.f32 %1617, 1
  %1620 = extractvalue %dx.types.CBufRet.f32 %1617, 2
  %1621 = fmul fast float %1618, %1614
  %1622 = fmul fast float %1619, %1615
  %1623 = fmul fast float %1620, %1616
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 0
  %1626 = extractvalue %dx.types.CBufRet.f32 %1624, 1
  %1627 = extractvalue %dx.types.CBufRet.f32 %1624, 2
  %1628 = fadd fast float %1621, %1625
  %1629 = fadd fast float %1622, %1626
  %1630 = fadd fast float %1623, %1627
  %1631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1632 = extractvalue %dx.types.CBufRet.f32 %1631, 0
  %1633 = fmul fast float %1632, %1579
  %1634 = extractvalue %dx.types.CBufRet.f32 %1631, 1
  %1635 = fadd fast float %1633, %1634
  %1636 = extractvalue %dx.types.CBufRet.f32 %1631, 2
  %1637 = fmul fast float %1636, %1580
  %1638 = extractvalue %dx.types.CBufRet.f32 %1631, 3
  %1639 = fadd fast float %1637, %1638
  %1640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1641 = extractvalue %dx.types.CBufRet.f32 %1640, 0
  %1642 = extractvalue %dx.types.CBufRet.f32 %1640, 1
  %1643 = extractvalue %dx.types.CBufRet.f32 %1640, 2
  %1644 = extractvalue %dx.types.CBufRet.f32 %1640, 3
  %1645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.f32 %1645, 0
  %1647 = extractvalue %dx.types.CBufRet.f32 %1645, 1
  %1648 = extractvalue %dx.types.CBufRet.f32 %1645, 2
  %1649 = extractvalue %dx.types.CBufRet.f32 %1645, 3
  %1650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %1635, float %1639, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1651 = extractvalue %dx.types.ResRet.f32 %1650, 0
  %1652 = extractvalue %dx.types.ResRet.f32 %1650, 1
  %1653 = extractvalue %dx.types.ResRet.f32 %1650, 2
  %1654 = extractvalue %dx.types.ResRet.f32 %1650, 3
  %1655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %1635, float %1639, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1656 = extractvalue %dx.types.ResRet.f32 %1655, 0
  %1657 = extractvalue %dx.types.ResRet.f32 %1655, 1
  %1658 = extractvalue %dx.types.ResRet.f32 %1655, 2
  %1659 = extractvalue %dx.types.ResRet.f32 %1655, 3
  %1660 = fmul fast float %1651, %1628
  %1661 = fmul fast float %1656, %1628
  %1662 = fmul fast float %1658, %1628
  %1663 = fmul fast float %1654, %1628
  %1664 = fadd fast float %1660, %1641
  %1665 = fadd fast float %1661, %1642
  %1666 = fadd fast float %1662, %1643
  %1667 = fadd fast float %1663, %1644
  %1668 = fmul fast float %1652, %1628
  %1669 = fmul fast float %1657, %1628
  %1670 = fadd fast float %1668, %1646
  %1671 = fadd fast float %1669, %1647
  %1672 = fmul fast float %1653, %1628
  %1673 = fmul fast float %1659, %1628
  %1674 = fadd fast float %1672, %1648
  %1675 = fadd fast float %1673, %1649
  %1676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %1635, float %1639, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1677 = extractvalue %dx.types.ResRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.ResRet.f32 %1676, 1
  %1679 = extractvalue %dx.types.ResRet.f32 %1676, 2
  %1680 = extractvalue %dx.types.ResRet.f32 %1676, 3
  %1681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %1635, float %1639, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1682 = extractvalue %dx.types.ResRet.f32 %1681, 0
  %1683 = extractvalue %dx.types.ResRet.f32 %1681, 1
  %1684 = extractvalue %dx.types.ResRet.f32 %1681, 2
  %1685 = extractvalue %dx.types.ResRet.f32 %1681, 3
  %1686 = fmul fast float %1677, %1629
  %1687 = fmul fast float %1682, %1629
  %1688 = fmul fast float %1684, %1629
  %1689 = fmul fast float %1680, %1629
  %1690 = fadd fast float %1664, %1686
  %1691 = fadd fast float %1665, %1687
  %1692 = fadd fast float %1666, %1688
  %1693 = fadd fast float %1667, %1689
  %1694 = fmul fast float %1678, %1629
  %1695 = fmul fast float %1683, %1629
  %1696 = fadd fast float %1670, %1694
  %1697 = fadd fast float %1671, %1695
  %1698 = fmul fast float %1679, %1629
  %1699 = fmul fast float %1685, %1629
  %1700 = fadd fast float %1674, %1698
  %1701 = fadd fast float %1675, %1699
  %1702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %1635, float %1639, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1703 = extractvalue %dx.types.ResRet.f32 %1702, 0
  %1704 = extractvalue %dx.types.ResRet.f32 %1702, 1
  %1705 = extractvalue %dx.types.ResRet.f32 %1702, 2
  %1706 = extractvalue %dx.types.ResRet.f32 %1702, 3
  %1707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %1635, float %1639, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1708 = extractvalue %dx.types.ResRet.f32 %1707, 0
  %1709 = extractvalue %dx.types.ResRet.f32 %1707, 1
  %1710 = extractvalue %dx.types.ResRet.f32 %1707, 2
  %1711 = extractvalue %dx.types.ResRet.f32 %1707, 3
  %1712 = fmul fast float %1703, %1630
  %1713 = fmul fast float %1708, %1630
  %1714 = fmul fast float %1710, %1630
  %1715 = fmul fast float %1706, %1630
  %1716 = fadd fast float %1690, %1712
  %1717 = fadd fast float %1691, %1713
  %1718 = fadd fast float %1692, %1714
  %1719 = fadd fast float %1693, %1715
  %1720 = fmul fast float %1704, %1630
  %1721 = fmul fast float %1709, %1630
  %1722 = fadd fast float %1696, %1720
  %1723 = fadd fast float %1697, %1721
  %1724 = fmul fast float %1705, %1630
  %1725 = fmul fast float %1711, %1630
  %1726 = fadd fast float %1700, %1724
  %1727 = fadd fast float %1701, %1725
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1729 = extractvalue %dx.types.CBufRet.f32 %1728, 0
  %1730 = fsub fast float %1564, %1729
  %1731 = fsub fast float %1572, %1564
  %1732 = call float @dx.op.binary.f32(i32 35, float %1731, float %1730)  ; FMax(a,b)
  %1733 = extractvalue %dx.types.CBufRet.f32 %1728, 1
  %1734 = fsub fast float %1565, %1733
  %1735 = fsub fast float %1573, %1565
  %1736 = call float @dx.op.binary.f32(i32 35, float %1735, float %1734)  ; FMax(a,b)
  %1737 = call float @dx.op.binary.f32(i32 35, float %1732, float %1736)  ; FMax(a,b)
  %1738 = extractvalue %dx.types.CBufRet.f32 %1576, 3
  %1739 = fmul fast float %1738, %1737
  %1740 = call float @dx.op.unary.f32(i32 7, float %1739)  ; Saturate(value)
  %1741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1742 = extractvalue %dx.types.CBufRet.f32 %1741, 0
  %1743 = extractvalue %dx.types.CBufRet.f32 %1741, 1
  %1744 = extractvalue %dx.types.CBufRet.f32 %1741, 2
  %1745 = extractvalue %dx.types.CBufRet.f32 %1741, 3
  %1746 = fsub fast float %1742, %1716
  %1747 = fsub fast float %1743, %1717
  %1748 = fsub fast float %1744, %1718
  %1749 = fsub fast float %1745, %1719
  %1750 = fmul fast float %1746, %1740
  %1751 = fmul fast float %1747, %1740
  %1752 = fmul fast float %1748, %1740
  %1753 = fmul fast float %1749, %1740
  %1754 = fadd fast float %1750, %1716
  %1755 = fadd fast float %1751, %1717
  %1756 = fadd fast float %1752, %1718
  %1757 = fadd fast float %1753, %1719
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 0
  %1760 = extractvalue %dx.types.CBufRet.f32 %1758, 1
  %1761 = fsub fast float %1759, %1722
  %1762 = fsub fast float %1760, %1723
  %1763 = fmul fast float %1761, %1740
  %1764 = fmul fast float %1762, %1740
  %1765 = fadd fast float %1763, %1722
  %1766 = fadd fast float %1764, %1723
  %1767 = extractvalue %dx.types.CBufRet.f32 %1758, 2
  %1768 = extractvalue %dx.types.CBufRet.f32 %1758, 3
  %1769 = fsub fast float %1767, %1726
  %1770 = fsub fast float %1768, %1727
  %1771 = fmul fast float %1769, %1740
  %1772 = fmul fast float %1770, %1740
  %1773 = fadd fast float %1771, %1726
  %1774 = fadd fast float %1772, %1727
  %1775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1776 = extractvalue %dx.types.CBufRet.f32 %1775, 0
  %1777 = fmul fast float %1776, %1754
  %1778 = fmul fast float %1776, %1755
  %1779 = fmul fast float %1776, %1756
  %1780 = fmul fast float %1776, %1757
  %1781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1782 = extractvalue %dx.types.CBufRet.f32 %1781, 0
  %1783 = fmul fast float %1782, %1765
  %1784 = fmul fast float %1782, %1766
  %1785 = fadd fast float %1783, %1777
  %1786 = fadd fast float %1784, %1779
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 0
  %1789 = fmul fast float %1788, %1773
  %1790 = fmul fast float %1788, %1774
  %1791 = fadd fast float %1785, %1789
  %1792 = fadd fast float %1786, %1790
  %1793 = extractvalue %dx.types.CBufRet.f32 %1775, 1
  %1794 = fmul fast float %1793, %1754
  %1795 = fmul fast float %1793, %1755
  %1796 = fmul fast float %1793, %1756
  %1797 = fmul fast float %1793, %1757
  %1798 = extractvalue %dx.types.CBufRet.f32 %1781, 1
  %1799 = fmul fast float %1798, %1765
  %1800 = fmul fast float %1798, %1766
  %1801 = fadd fast float %1799, %1794
  %1802 = fadd fast float %1800, %1796
  %1803 = extractvalue %dx.types.CBufRet.f32 %1787, 1
  %1804 = fmul fast float %1803, %1773
  %1805 = fmul fast float %1803, %1774
  %1806 = fadd fast float %1801, %1804
  %1807 = fadd fast float %1802, %1805
  %1808 = extractvalue %dx.types.CBufRet.f32 %1775, 2
  %1809 = fmul fast float %1808, %1754
  %1810 = fmul fast float %1808, %1755
  %1811 = fmul fast float %1808, %1756
  %1812 = fmul fast float %1808, %1757
  %1813 = extractvalue %dx.types.CBufRet.f32 %1781, 2
  %1814 = fmul fast float %1813, %1765
  %1815 = fmul fast float %1813, %1766
  %1816 = fadd fast float %1814, %1809
  %1817 = fadd fast float %1815, %1811
  %1818 = extractvalue %dx.types.CBufRet.f32 %1787, 2
  %1819 = fmul fast float %1818, %1773
  %1820 = fmul fast float %1818, %1774
  %1821 = fadd fast float %1816, %1819
  %1822 = fadd fast float %1817, %1820
  %1823 = fmul fast float %1810, %1810
  %1824 = fmul fast float %1822, %1822
  %1825 = fmul fast float %1812, %1812
  %1826 = fadd fast float %1825, %1823
  %1827 = fadd fast float %1826, %1824
  %1828 = call float @dx.op.unary.f32(i32 24, float %1827)  ; Sqrt(value)
  %1829 = fcmp fast ugt float %1828, 0.000000e+00
  br i1 %1829, label %1830, label %1845

; <label>:1830                                    ; preds = %1540
  %1831 = fsub fast float -0.000000e+00, %1812
  %1832 = fdiv fast float %1831, %1828
  %1833 = fsub fast float -0.000000e+00, %1810
  %1834 = fdiv fast float %1833, %1828
  %1835 = fdiv fast float %1822, %1828
  %1836 = fmul fast float %1821, 0x3FE279A760000000
  %1837 = fmul fast float %1834, %1810
  %1838 = fmul fast float %1835, %1822
  %1839 = fmul fast float %1832, %1812
  %1840 = fadd fast float %1837, %1839
  %1841 = fsub fast float %1840, %1838
  %1842 = call float @dx.op.unary.f32(i32 6, float %1841)  ; FAbs(value)
  %1843 = fadd fast float %1842, 0x3DDB7CDFE0000000
  %1844 = fdiv fast float %1836, %1843
  br label %1845

; <label>:1845                                    ; preds = %1830, %1540
  %1846 = phi float [ %1844, %1830 ], [ 1.000000e+00, %1540 ]
  %1847 = fmul fast float %1795, %1795
  %1848 = fmul fast float %1807, %1807
  %1849 = fmul fast float %1797, %1797
  %1850 = fadd fast float %1849, %1847
  %1851 = fadd fast float %1850, %1848
  %1852 = call float @dx.op.unary.f32(i32 24, float %1851)  ; Sqrt(value)
  %1853 = fcmp fast ugt float %1852, 0.000000e+00
  br i1 %1853, label %1854, label %1869

; <label>:1854                                    ; preds = %1845
  %1855 = fsub fast float -0.000000e+00, %1797
  %1856 = fdiv fast float %1855, %1852
  %1857 = fsub fast float -0.000000e+00, %1795
  %1858 = fdiv fast float %1857, %1852
  %1859 = fdiv fast float %1807, %1852
  %1860 = fmul fast float %1806, 0x3FE279A760000000
  %1861 = fmul fast float %1858, %1795
  %1862 = fmul fast float %1859, %1807
  %1863 = fmul fast float %1856, %1797
  %1864 = fadd fast float %1861, %1863
  %1865 = fsub fast float %1864, %1862
  %1866 = call float @dx.op.unary.f32(i32 6, float %1865)  ; FAbs(value)
  %1867 = fadd fast float %1866, 0x3DDB7CDFE0000000
  %1868 = fdiv fast float %1860, %1867
  br label %1869

; <label>:1869                                    ; preds = %1854, %1845
  %1870 = phi float [ %1868, %1854 ], [ 1.000000e+00, %1845 ]
  %1871 = call float @dx.op.binary.f32(i32 36, float %1870, float %1846)  ; FMin(a,b)
  %1872 = fmul fast float %1778, %1778
  %1873 = fmul fast float %1792, %1792
  %1874 = fmul fast float %1780, %1780
  %1875 = fadd fast float %1874, %1872
  %1876 = fadd fast float %1875, %1873
  %1877 = call float @dx.op.unary.f32(i32 24, float %1876)  ; Sqrt(value)
  %1878 = fcmp fast ugt float %1877, 0.000000e+00
  br i1 %1878, label %1879, label %1894

; <label>:1879                                    ; preds = %1869
  %1880 = fsub fast float -0.000000e+00, %1780
  %1881 = fdiv fast float %1880, %1877
  %1882 = fsub fast float -0.000000e+00, %1778
  %1883 = fdiv fast float %1882, %1877
  %1884 = fdiv fast float %1792, %1877
  %1885 = fmul fast float %1791, 0x3FE279A760000000
  %1886 = fmul fast float %1883, %1778
  %1887 = fmul fast float %1884, %1792
  %1888 = fmul fast float %1881, %1780
  %1889 = fadd fast float %1886, %1888
  %1890 = fsub fast float %1889, %1887
  %1891 = call float @dx.op.unary.f32(i32 6, float %1890)  ; FAbs(value)
  %1892 = fadd fast float %1891, 0x3DDB7CDFE0000000
  %1893 = fdiv fast float %1885, %1892
  br label %1894

; <label>:1894                                    ; preds = %1879, %1869
  %1895 = phi float [ %1893, %1879 ], [ 1.000000e+00, %1869 ]
  %1896 = call float @dx.op.binary.f32(i32 36, float %1895, float %1871)  ; FMin(a,b)
  %1897 = call float @dx.op.unary.f32(i32 7, float %1896)  ; Saturate(value)
  %1898 = fcmp fast olt float %1897, 1.000000e+00
  br i1 %1898, label %1899, label %1909

; <label>:1899                                    ; preds = %1894
  %1900 = fmul fast float %1897, %1778
  %1901 = fmul fast float %1897, %1792
  %1902 = fmul fast float %1897, %1780
  %1903 = fmul fast float %1897, %1795
  %1904 = fmul fast float %1897, %1807
  %1905 = fmul fast float %1897, %1797
  %1906 = fmul fast float %1897, %1810
  %1907 = fmul fast float %1897, %1822
  %1908 = fmul fast float %1897, %1812
  br label %1909

; <label>:1909                                    ; preds = %1899, %1894
  %1910 = phi float [ %1906, %1899 ], [ %1810, %1894 ]
  %1911 = phi float [ %1907, %1899 ], [ %1822, %1894 ]
  %1912 = phi float [ %1908, %1899 ], [ %1812, %1894 ]
  %1913 = phi float [ %1903, %1899 ], [ %1795, %1894 ]
  %1914 = phi float [ %1904, %1899 ], [ %1807, %1894 ]
  %1915 = phi float [ %1905, %1899 ], [ %1797, %1894 ]
  %1916 = phi float [ %1900, %1899 ], [ %1778, %1894 ]
  %1917 = phi float [ %1901, %1899 ], [ %1792, %1894 ]
  %1918 = phi float [ %1902, %1899 ], [ %1780, %1894 ]
  %1919 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1791)  ; FMax(a,b)
  %1920 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1806)  ; FMax(a,b)
  %1921 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1821)  ; FMax(a,b)
  %1922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1923 = extractvalue %dx.types.CBufRet.f32 %1922, 0
  %1924 = fcmp fast ogt float %1923, 0.000000e+00
  %1925 = fcmp fast oge float %1579, 0.000000e+00
  %1926 = and i1 %1925, %1924
  %1927 = fcmp fast ole float %1579, 1.000000e+00
  %1928 = and i1 %1927, %1926
  %1929 = fcmp fast oge float %1580, 0.000000e+00
  %1930 = and i1 %1929, %1928
  %1931 = fcmp fast ole float %1580, 1.000000e+00
  %1932 = and i1 %1931, %1930
  br i1 %1932, label %1933, label %2073, !dx.controlflow.hints !108

; <label>:1933                                    ; preds = %1909
  %1934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1935 = extractvalue %dx.types.CBufRet.f32 %1934, 2
  %1936 = extractvalue %dx.types.CBufRet.f32 %1934, 3
  %1937 = fmul fast float %1935, %1579
  %1938 = fmul fast float %1936, %1580
  %1939 = call float @dx.op.unary.f32(i32 27, float %1937)  ; Round_ni(value)
  %1940 = call float @dx.op.unary.f32(i32 27, float %1938)  ; Round_ni(value)
  %1941 = fptosi float %1939 to i32
  %1942 = fptosi float %1940 to i32
  %1943 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %39, i32 0, i32 %1941, i32 %1942, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1944 = extractvalue %dx.types.ResRet.i32 %1943, 0
  %1945 = and i32 %1944, 65535
  %1946 = lshr i32 %1944, 16
  %1947 = icmp eq i32 %1945, 65535
  br i1 %1947, label %1984, label %1948

; <label>:1948                                    ; preds = %1933
  %1949 = extractvalue %dx.types.CBufRet.f32 %1922, 1
  %1950 = extractvalue %dx.types.CBufRet.f32 %1934, 0
  %1951 = extractvalue %dx.types.CBufRet.f32 %1934, 1
  %1952 = fmul fast float %1950, %1579
  %1953 = fmul fast float %1951, %1580
  %1954 = fmul fast float %1952, 1.250000e-01
  %1955 = fmul fast float %1953, 1.250000e-01
  %1956 = call float @dx.op.unary.f32(i32 27, float %1954)  ; Round_ni(value)
  %1957 = call float @dx.op.unary.f32(i32 27, float %1955)  ; Round_ni(value)
  %1958 = fmul fast float %1956, 8.000000e+00
  %1959 = fmul fast float %1957, 8.000000e+00
  %1960 = and i32 %1944, 255
  %1961 = lshr i32 %1944, 8
  %1962 = and i32 %1961, 255
  %1963 = mul nuw nsw i32 %1960, 9
  %1964 = uitofp i32 %1963 to float
  %1965 = mul nuw nsw i32 %1962, 9
  %1966 = uitofp i32 %1965 to float
  %1967 = fadd fast float %1964, 5.000000e-01
  %1968 = fadd fast float %1967, %1952
  %1969 = fsub fast float %1968, %1958
  %1970 = fadd fast float %1966, 5.000000e-01
  %1971 = fadd fast float %1970, %1953
  %1972 = fsub fast float %1971, %1959
  %1973 = fdiv fast float %1969, %1923
  %1974 = fdiv fast float %1972, %1949
  %1975 = fmul fast float %1607, 4.375000e-01
  %1976 = fadd fast float %1975, 3.125000e-02
  %1977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %58, float %1973, float %1974, float %1976, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1978 = extractvalue %dx.types.ResRet.f32 %1977, 0
  %1979 = extractvalue %dx.types.ResRet.f32 %1977, 1
  %1980 = extractvalue %dx.types.ResRet.f32 %1977, 2
  %1981 = fadd fast float %1978, %1919
  %1982 = fadd fast float %1979, %1920
  %1983 = fadd fast float %1980, %1921
  br label %1984

; <label>:1984                                    ; preds = %1948, %1933
  %1985 = phi float [ %1983, %1948 ], [ %1921, %1933 ]
  %1986 = phi float [ %1982, %1948 ], [ %1920, %1933 ]
  %1987 = phi float [ %1981, %1948 ], [ %1919, %1933 ]
  %1988 = icmp eq i32 %1946, 65535
  br i1 %1988, label %2073, label %1989

; <label>:1989                                    ; preds = %1984
  %1990 = extractvalue %dx.types.CBufRet.f32 %1922, 1
  %1991 = extractvalue %dx.types.CBufRet.f32 %1934, 0
  %1992 = extractvalue %dx.types.CBufRet.f32 %1934, 1
  %1993 = fmul fast float %1991, %1579
  %1994 = fmul fast float %1992, %1580
  %1995 = fmul fast float %1993, 1.250000e-01
  %1996 = fmul fast float %1994, 1.250000e-01
  %1997 = call float @dx.op.unary.f32(i32 27, float %1995)  ; Round_ni(value)
  %1998 = call float @dx.op.unary.f32(i32 27, float %1996)  ; Round_ni(value)
  %1999 = fmul fast float %1997, 8.000000e+00
  %2000 = fmul fast float %1998, 8.000000e+00
  %2001 = fsub fast float %1993, %1999
  %2002 = fsub fast float %1994, %2000
  %2003 = fadd fast float %2001, 5.000000e-01
  %2004 = fadd fast float %2002, 5.000000e-01
  %2005 = and i32 %1946, 255
  %2006 = lshr i32 %1944, 24
  %2007 = mul nuw nsw i32 %2005, 9
  %2008 = uitofp i32 %2007 to float
  %2009 = mul nuw nsw i32 %2006, 9
  %2010 = uitofp i32 %2009 to float
  %2011 = fadd fast float %2003, %2008
  %2012 = fadd fast float %2004, %2010
  %2013 = fdiv fast float %2011, %1923
  %2014 = fdiv fast float %2012, %1990
  %2015 = fmul fast float %1607, 4.375000e-01
  %2016 = fadd fast float %2015, 3.125000e-02
  %2017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %58, float %2013, float %2014, float %2016, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2018 = extractvalue %dx.types.ResRet.f32 %2017, 0
  %2019 = extractvalue %dx.types.ResRet.f32 %2017, 1
  %2020 = extractvalue %dx.types.ResRet.f32 %2017, 2
  %2021 = fadd fast float %2015, 5.312500e-01
  %2022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %58, float %2013, float %2014, float %2021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2023 = extractvalue %dx.types.ResRet.f32 %2022, 0
  %2024 = extractvalue %dx.types.ResRet.f32 %2022, 1
  %2025 = extractvalue %dx.types.ResRet.f32 %2022, 2
  %2026 = fmul fast float %2023, 2.000000e+00
  %2027 = fmul fast float %2024, 2.000000e+00
  %2028 = fmul fast float %2025, 2.000000e+00
  %2029 = fadd fast float %2026, -1.000000e+00
  %2030 = fadd fast float %2027, -1.000000e+00
  %2031 = fadd fast float %2028, -1.000000e+00
  %2032 = fmul fast float %2029, %2029
  %2033 = fmul fast float %2030, %2030
  %2034 = fadd fast float %2032, %2033
  %2035 = fmul fast float %2031, %2031
  %2036 = fadd fast float %2034, %2035
  %2037 = call float @dx.op.unary.f32(i32 24, float %2036)  ; Sqrt(value)
  %2038 = fcmp fast ogt float %2037, 0.000000e+00
  br i1 %2038, label %2039, label %2043

; <label>:2039                                    ; preds = %1989
  %2040 = fdiv fast float %2029, %2037
  %2041 = fdiv fast float %2030, %2037
  %2042 = fdiv fast float %2031, %2037
  br label %2043

; <label>:2043                                    ; preds = %2039, %1989
  %2044 = phi float [ %2040, %2039 ], [ 0.000000e+00, %1989 ]
  %2045 = phi float [ %2041, %2039 ], [ 0.000000e+00, %1989 ]
  %2046 = phi float [ %2042, %2039 ], [ 0.000000e+00, %1989 ]
  %2047 = fmul fast float %143, %143
  %2048 = fmul fast float %144, %144
  %2049 = fadd fast float %2047, %2048
  %2050 = call float @dx.op.unary.f32(i32 24, float %2049)  ; Sqrt(value)
  %2051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2052 = extractvalue %dx.types.CBufRet.f32 %2051, 0
  %2053 = extractvalue %dx.types.CBufRet.f32 %2051, 1
  %2054 = fsub fast float %2050, %2052
  %2055 = fdiv fast float %2054, %2053
  %2056 = call float @dx.op.unary.f32(i32 7, float %2055)  ; Saturate(value)
  %2057 = fmul fast float %2056, 2.000000e+00
  %2058 = fsub fast float 3.000000e+00, %2057
  %2059 = fmul fast float %2056, %2056
  %2060 = fmul fast float %2059, %2058
  %2061 = call float @dx.op.dot3.f32(i32 55, float %2044, float %2045, float %2046, float %1406, float %1407, float %1408)  ; Dot3(ax,ay,az,bx,by,bz)
  %2062 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2061)  ; FMax(a,b)
  %2063 = fmul fast float %2062, 0x400C5BF8A0000000
  %2064 = fmul fast float %2060, %2018
  %2065 = fmul fast float %2064, %2063
  %2066 = fadd fast float %2065, %1987
  %2067 = fmul fast float %2060, %2019
  %2068 = fmul fast float %2067, %2063
  %2069 = fadd fast float %2068, %1986
  %2070 = fmul fast float %2060, %2020
  %2071 = fmul fast float %2070, %2063
  %2072 = fadd fast float %2071, %1985
  br label %2073

; <label>:2073                                    ; preds = %2043, %1984, %1909
  %2074 = phi float [ %2072, %2043 ], [ %1985, %1984 ], [ %1921, %1909 ]
  %2075 = phi float [ %2069, %2043 ], [ %1986, %1984 ], [ %1920, %1909 ]
  %2076 = phi float [ %2066, %2043 ], [ %1987, %1984 ], [ %1919, %1909 ]
  %2077 = fcmp fast ogt float %1566, %1603
  %2078 = and i1 %1925, %2077
  %2079 = and i1 %1927, %2078
  %2080 = and i1 %1929, %2079
  %2081 = and i1 %1931, %2080
  br i1 %2081, label %2082, label %2139, !dx.controlflow.hints !109

; <label>:2082                                    ; preds = %2073
  %2083 = fmul fast float %1605, 0x3FC24924A0000000
  %2084 = fsub fast float %1566, %1603
  %2085 = fdiv fast float %2084, %2083
  %2086 = call float @dx.op.unary.f32(i32 7, float %2085)  ; Saturate(value)
  %2087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2088 = extractvalue %dx.types.CBufRet.f32 %2087, 0
  %2089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2090 = extractvalue %dx.types.CBufRet.f32 %2089, 0
  %2091 = extractvalue %dx.types.CBufRet.f32 %2089, 1
  %2092 = extractvalue %dx.types.CBufRet.f32 %2089, 2
  %2093 = fsub fast float %2088, %2076
  %2094 = fsub fast float %2090, %1916
  %2095 = fsub fast float %2091, %1917
  %2096 = fsub fast float %2092, %1918
  %2097 = fmul fast float %2093, %2086
  %2098 = fmul fast float %2094, %2086
  %2099 = fmul fast float %2095, %2086
  %2100 = fmul fast float %2096, %2086
  %2101 = fadd fast float %2097, %2076
  %2102 = fadd fast float %2098, %1916
  %2103 = fadd fast float %2099, %1917
  %2104 = fadd fast float %2100, %1918
  %2105 = extractvalue %dx.types.CBufRet.f32 %2087, 1
  %2106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2107 = extractvalue %dx.types.CBufRet.f32 %2106, 0
  %2108 = extractvalue %dx.types.CBufRet.f32 %2106, 1
  %2109 = extractvalue %dx.types.CBufRet.f32 %2106, 2
  %2110 = fsub fast float %2105, %2075
  %2111 = fsub fast float %2107, %1913
  %2112 = fsub fast float %2108, %1914
  %2113 = fsub fast float %2109, %1915
  %2114 = fmul fast float %2110, %2086
  %2115 = fmul fast float %2111, %2086
  %2116 = fmul fast float %2112, %2086
  %2117 = fmul fast float %2113, %2086
  %2118 = fadd fast float %2114, %2075
  %2119 = fadd fast float %2115, %1913
  %2120 = fadd fast float %2116, %1914
  %2121 = fadd fast float %2117, %1915
  %2122 = extractvalue %dx.types.CBufRet.f32 %2087, 2
  %2123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2124 = extractvalue %dx.types.CBufRet.f32 %2123, 0
  %2125 = extractvalue %dx.types.CBufRet.f32 %2123, 1
  %2126 = extractvalue %dx.types.CBufRet.f32 %2123, 2
  %2127 = fsub fast float %2122, %2074
  %2128 = fsub fast float %2124, %1910
  %2129 = fsub fast float %2125, %1911
  %2130 = fsub fast float %2126, %1912
  %2131 = fmul fast float %2127, %2086
  %2132 = fmul fast float %2128, %2086
  %2133 = fmul fast float %2129, %2086
  %2134 = fmul fast float %2130, %2086
  %2135 = fadd fast float %2131, %2074
  %2136 = fadd fast float %2132, %1910
  %2137 = fadd fast float %2133, %1911
  %2138 = fadd fast float %2134, %1912
  br label %2139

; <label>:2139                                    ; preds = %2082, %2073
  %2140 = phi float [ %2135, %2082 ], [ %2074, %2073 ]
  %2141 = phi float [ %2136, %2082 ], [ %1910, %2073 ]
  %2142 = phi float [ %2137, %2082 ], [ %1911, %2073 ]
  %2143 = phi float [ %2138, %2082 ], [ %1912, %2073 ]
  %2144 = phi float [ %2118, %2082 ], [ %2075, %2073 ]
  %2145 = phi float [ %2119, %2082 ], [ %1913, %2073 ]
  %2146 = phi float [ %2120, %2082 ], [ %1914, %2073 ]
  %2147 = phi float [ %2121, %2082 ], [ %1915, %2073 ]
  %2148 = phi float [ %2101, %2082 ], [ %2076, %2073 ]
  %2149 = phi float [ %2102, %2082 ], [ %1916, %2073 ]
  %2150 = phi float [ %2103, %2082 ], [ %1917, %2073 ]
  %2151 = phi float [ %2104, %2082 ], [ %1918, %2073 ]
  %2152 = extractvalue %dx.types.CBufRet.f32 %1728, 3
  %2153 = fmul fast float %2152, %2148
  %2154 = fmul fast float %2152, %2144
  %2155 = fmul fast float %2152, %2140
  %2156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2157 = extractvalue %dx.types.CBufRet.f32 %2156, 3
  %2158 = fmul fast float %2153, %2157
  %2159 = fmul fast float %2154, %2157
  %2160 = fmul fast float %2155, %2157
  %2161 = call float @dx.op.dot3.f32(i32 55, float %2158, float %2159, float %2160, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2162 = fmul fast float %2161, 0x3FD20DD760000000
  %2163 = fmul fast float %2149, 1.500000e+00
  %2164 = fmul fast float %2163, %2152
  %2165 = fmul fast float %2164, %2157
  %2166 = fmul fast float %2150, 1.500000e+00
  %2167 = fmul fast float %2166, %2152
  %2168 = fmul fast float %2167, %2157
  %2169 = fmul fast float %2151, 1.500000e+00
  %2170 = fmul fast float %2169, %2152
  %2171 = fmul fast float %2170, %2157
  %2172 = fmul fast float %2145, 1.500000e+00
  %2173 = fmul fast float %2172, %2152
  %2174 = fmul fast float %2173, %2157
  %2175 = fmul fast float %2146, 1.500000e+00
  %2176 = fmul fast float %2175, %2152
  %2177 = fmul fast float %2176, %2157
  %2178 = fmul fast float %2147, 1.500000e+00
  %2179 = fmul fast float %2178, %2152
  %2180 = fmul fast float %2179, %2157
  %2181 = fmul fast float %2141, 1.500000e+00
  %2182 = fmul fast float %2181, %2152
  %2183 = fmul fast float %2182, %2157
  %2184 = fmul fast float %2142, 1.500000e+00
  %2185 = fmul fast float %2184, %2152
  %2186 = fmul fast float %2185, %2157
  %2187 = fmul fast float %2143, 1.500000e+00
  %2188 = fmul fast float %2187, %2152
  %2189 = fmul fast float %2188, %2157
  %2190 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2158)  ; FMax(a,b)
  %2191 = call float @dx.op.dot3.f32(i32 55, float %2165, float %2168, float %2171, float %2165, float %2168, float %2171)  ; Dot3(ax,ay,az,bx,by,bz)
  %2192 = fcmp fast oeq float %2191, 0.000000e+00
  %2193 = fcmp fast oeq float %2190, 0.000000e+00
  %2194 = or i1 %2193, %2192
  br i1 %2194, label %2224, label %2195

; <label>:2195                                    ; preds = %2139
  %2196 = fsub fast float -0.000000e+00, %2171
  %2197 = fsub fast float -0.000000e+00, %2165
  %2198 = call float @dx.op.unary.f32(i32 24, float %2191)  ; Sqrt(value)
  %2199 = fdiv fast float %2198, %2190
  %2200 = fcmp fast ogt float %2199, 0x3FFB6F8900000000
  %2201 = select i1 %2200, float 0x3FFB6F8900000000, float %2199
  %2202 = fmul fast float %2201, 0x3FE8A23460000000
  %2203 = call float @dx.op.unary.f32(i32 7, float %2202)  ; Saturate(value)
  %2204 = call float @dx.op.binary.f32(i32 35, float %2201, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2205 = fmul fast float %2203, %2190
  %2206 = fmul fast float %2204, 0x3FF279A740000000
  %2207 = fadd fast float %2206, -1.000000e+00
  %2208 = call float @dx.op.dot3.f32(i32 55, float %2196, float %2197, float %2168, float %2196, float %2197, float %2168)  ; Dot3(ax,ay,az,bx,by,bz)
  %2209 = call float @dx.op.unary.f32(i32 25, float %2208)  ; Rsqrt(value)
  %2210 = fmul fast float %2209, %2196
  %2211 = fmul fast float %2209, %2197
  %2212 = fmul fast float %2209, %2168
  %2213 = fmul fast float %2207, %2207
  %2214 = fsub fast float 1.000000e+00, %2213
  %2215 = fmul fast float %2204, 0x40005F8BE0000000
  %2216 = fsub fast float 0x400C5BF8A0000000, %2215
  %2217 = fdiv fast float %2205, %2216
  %2218 = fmul fast float %2217, 0x3FEE31C3C0000000
  %2219 = fmul fast float %2218, %2214
  %2220 = fmul fast float %2204, 0x3FDACB7480000000
  %2221 = fadd fast float %2220, 0xBFD7347680000000
  %2222 = fmul fast float %2221, %2217
  %2223 = fmul fast float %2222, %2214
  br label %2224

; <label>:2224                                    ; preds = %2195, %2139
  %2225 = phi float [ %2210, %2195 ], [ 0.000000e+00, %2139 ]
  %2226 = phi float [ %2211, %2195 ], [ 0.000000e+00, %2139 ]
  %2227 = phi float [ %2212, %2195 ], [ 0.000000e+00, %2139 ]
  %2228 = phi float [ %2219, %2195 ], [ 0.000000e+00, %2139 ]
  %2229 = phi float [ %2223, %2195 ], [ 0.000000e+00, %2139 ]
  %2230 = call float @dx.op.dot3.f32(i32 55, float %2225, float %2226, float %2227, float %1406, float %1407, float %1408)  ; Dot3(ax,ay,az,bx,by,bz)
  %2231 = fmul fast float %2230, %2230
  %2232 = fmul fast float %2231, 0x3FEE471020000000
  %2233 = fadd fast float %2232, 0xBFD42F6020000000
  %2234 = fmul fast float %2190, 0x3FD20DD760000000
  %2235 = fmul fast float %2233, %2229
  %2236 = fmul fast float %2228, 0x3FDF454380000000
  %2237 = fmul fast float %2236, %2230
  %2238 = fadd fast float %2237, %2234
  %2239 = fadd fast float %2238, %2235
  %2240 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2159)  ; FMax(a,b)
  %2241 = call float @dx.op.dot3.f32(i32 55, float %2174, float %2177, float %2180, float %2174, float %2177, float %2180)  ; Dot3(ax,ay,az,bx,by,bz)
  %2242 = fcmp fast oeq float %2241, 0.000000e+00
  %2243 = fcmp fast oeq float %2240, 0.000000e+00
  %2244 = or i1 %2243, %2242
  br i1 %2244, label %2274, label %2245

; <label>:2245                                    ; preds = %2224
  %2246 = fsub fast float -0.000000e+00, %2180
  %2247 = fsub fast float -0.000000e+00, %2174
  %2248 = call float @dx.op.unary.f32(i32 24, float %2241)  ; Sqrt(value)
  %2249 = fdiv fast float %2248, %2240
  %2250 = fcmp fast ogt float %2249, 0x3FFB6F8900000000
  %2251 = select i1 %2250, float 0x3FFB6F8900000000, float %2249
  %2252 = fmul fast float %2251, 0x3FE8A23460000000
  %2253 = call float @dx.op.unary.f32(i32 7, float %2252)  ; Saturate(value)
  %2254 = call float @dx.op.binary.f32(i32 35, float %2251, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2255 = fmul fast float %2253, %2240
  %2256 = fmul fast float %2254, 0x3FF279A740000000
  %2257 = fadd fast float %2256, -1.000000e+00
  %2258 = call float @dx.op.dot3.f32(i32 55, float %2246, float %2247, float %2177, float %2246, float %2247, float %2177)  ; Dot3(ax,ay,az,bx,by,bz)
  %2259 = call float @dx.op.unary.f32(i32 25, float %2258)  ; Rsqrt(value)
  %2260 = fmul fast float %2259, %2246
  %2261 = fmul fast float %2259, %2247
  %2262 = fmul fast float %2259, %2177
  %2263 = fmul fast float %2257, %2257
  %2264 = fsub fast float 1.000000e+00, %2263
  %2265 = fmul fast float %2254, 0x40005F8BE0000000
  %2266 = fsub fast float 0x400C5BF8A0000000, %2265
  %2267 = fdiv fast float %2255, %2266
  %2268 = fmul fast float %2267, 0x3FEE31C3C0000000
  %2269 = fmul fast float %2268, %2264
  %2270 = fmul fast float %2254, 0x3FDACB7480000000
  %2271 = fadd fast float %2270, 0xBFD7347680000000
  %2272 = fmul fast float %2271, %2267
  %2273 = fmul fast float %2272, %2264
  br label %2274

; <label>:2274                                    ; preds = %2245, %2224
  %2275 = phi float [ %2260, %2245 ], [ 0.000000e+00, %2224 ]
  %2276 = phi float [ %2261, %2245 ], [ 0.000000e+00, %2224 ]
  %2277 = phi float [ %2262, %2245 ], [ 0.000000e+00, %2224 ]
  %2278 = phi float [ %2269, %2245 ], [ 0.000000e+00, %2224 ]
  %2279 = phi float [ %2273, %2245 ], [ 0.000000e+00, %2224 ]
  %2280 = call float @dx.op.dot3.f32(i32 55, float %2275, float %2276, float %2277, float %1406, float %1407, float %1408)  ; Dot3(ax,ay,az,bx,by,bz)
  %2281 = fmul fast float %2280, %2280
  %2282 = fmul fast float %2281, 0x3FEE471020000000
  %2283 = fadd fast float %2282, 0xBFD42F6020000000
  %2284 = fmul fast float %2240, 0x3FD20DD760000000
  %2285 = fmul fast float %2283, %2279
  %2286 = fmul fast float %2278, 0x3FDF454380000000
  %2287 = fmul fast float %2286, %2280
  %2288 = fadd fast float %2287, %2284
  %2289 = fadd fast float %2288, %2285
  %2290 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2160)  ; FMax(a,b)
  %2291 = call float @dx.op.dot3.f32(i32 55, float %2183, float %2186, float %2189, float %2183, float %2186, float %2189)  ; Dot3(ax,ay,az,bx,by,bz)
  %2292 = fcmp fast oeq float %2291, 0.000000e+00
  %2293 = fcmp fast oeq float %2290, 0.000000e+00
  %2294 = or i1 %2293, %2292
  br i1 %2294, label %2324, label %2295

; <label>:2295                                    ; preds = %2274
  %2296 = fsub fast float -0.000000e+00, %2189
  %2297 = fsub fast float -0.000000e+00, %2183
  %2298 = call float @dx.op.unary.f32(i32 24, float %2291)  ; Sqrt(value)
  %2299 = fdiv fast float %2298, %2290
  %2300 = fcmp fast ogt float %2299, 0x3FFB6F8900000000
  %2301 = select i1 %2300, float 0x3FFB6F8900000000, float %2299
  %2302 = fmul fast float %2301, 0x3FE8A23460000000
  %2303 = call float @dx.op.unary.f32(i32 7, float %2302)  ; Saturate(value)
  %2304 = call float @dx.op.binary.f32(i32 35, float %2301, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2305 = fmul fast float %2303, %2290
  %2306 = fmul fast float %2304, 0x3FF279A740000000
  %2307 = fadd fast float %2306, -1.000000e+00
  %2308 = call float @dx.op.dot3.f32(i32 55, float %2296, float %2297, float %2186, float %2296, float %2297, float %2186)  ; Dot3(ax,ay,az,bx,by,bz)
  %2309 = call float @dx.op.unary.f32(i32 25, float %2308)  ; Rsqrt(value)
  %2310 = fmul fast float %2309, %2296
  %2311 = fmul fast float %2309, %2297
  %2312 = fmul fast float %2309, %2186
  %2313 = fmul fast float %2307, %2307
  %2314 = fsub fast float 1.000000e+00, %2313
  %2315 = fmul fast float %2304, 0x40005F8BE0000000
  %2316 = fsub fast float 0x400C5BF8A0000000, %2315
  %2317 = fdiv fast float %2305, %2316
  %2318 = fmul fast float %2317, 0x3FEE31C3C0000000
  %2319 = fmul fast float %2318, %2314
  %2320 = fmul fast float %2304, 0x3FDACB7480000000
  %2321 = fadd fast float %2320, 0xBFD7347680000000
  %2322 = fmul fast float %2321, %2317
  %2323 = fmul fast float %2322, %2314
  br label %2324

; <label>:2324                                    ; preds = %2295, %2274
  %2325 = phi float [ %2310, %2295 ], [ 0.000000e+00, %2274 ]
  %2326 = phi float [ %2311, %2295 ], [ 0.000000e+00, %2274 ]
  %2327 = phi float [ %2312, %2295 ], [ 0.000000e+00, %2274 ]
  %2328 = phi float [ %2319, %2295 ], [ 0.000000e+00, %2274 ]
  %2329 = phi float [ %2323, %2295 ], [ 0.000000e+00, %2274 ]
  %2330 = call float @dx.op.dot3.f32(i32 55, float %2325, float %2326, float %2327, float %1406, float %1407, float %1408)  ; Dot3(ax,ay,az,bx,by,bz)
  %2331 = fmul fast float %2330, %2330
  %2332 = fmul fast float %2331, 0x3FEE471020000000
  %2333 = fadd fast float %2332, 0xBFD42F6020000000
  %2334 = fmul fast float %2290, 0x3FD20DD760000000
  %2335 = fmul fast float %2333, %2329
  %2336 = fmul fast float %2328, 0x3FDF454380000000
  %2337 = fmul fast float %2336, %2330
  %2338 = fadd fast float %2337, %2334
  %2339 = fadd fast float %2338, %2335
  %2340 = call float @dx.op.binary.f32(i32 35, float %2239, float 0.000000e+00)  ; FMax(a,b)
  %2341 = call float @dx.op.binary.f32(i32 35, float %2289, float 0.000000e+00)  ; FMax(a,b)
  %2342 = call float @dx.op.binary.f32(i32 35, float %2339, float 0.000000e+00)  ; FMax(a,b)
  %2343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2344 = extractvalue %dx.types.CBufRet.f32 %2343, 0
  %2345 = call float @dx.op.binary.f32(i32 36, float %1418, float %2344)  ; FMin(a,b)
  %2346 = fsub fast float 1.000000e+00, %1556
  %2347 = fmul fast float %2345, %2346
  %2348 = fsub fast float 1.000000e+00, %2347
  %2349 = bitcast float %2348 to i32
  %2350 = sub nsw i32 2129859010, %2349
  %2351 = bitcast i32 %2350 to float
  %2352 = call float @dx.op.binary.f32(i32 36, float %1419, float %2344)  ; FMin(a,b)
  %2353 = fmul fast float %2352, %2346
  %2354 = fsub fast float 1.000000e+00, %2353
  %2355 = bitcast float %2354 to i32
  %2356 = sub nsw i32 2129859010, %2355
  %2357 = bitcast i32 %2356 to float
  %2358 = call float @dx.op.binary.f32(i32 36, float %1420, float %2344)  ; FMin(a,b)
  %2359 = fmul fast float %2358, %2346
  %2360 = fsub fast float 1.000000e+00, %2359
  %2361 = bitcast float %2360 to i32
  %2362 = sub nsw i32 2129859010, %2361
  %2363 = bitcast i32 %2362 to float
  %2364 = fmul fast float %2340, %1556
  %2365 = fmul fast float %2364, %2351
  %2366 = fmul fast float %2341, %1556
  %2367 = fmul fast float %2366, %2357
  %2368 = fmul fast float %2342, %1556
  %2369 = fmul fast float %2368, %2363
  %2370 = call float @dx.op.dot3.f32(i32 55, float %2365, float %2367, float %2369, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2371 = select i1 %1541, float 0.000000e+00, float %2365
  %2372 = select i1 %1541, float %2370, float %2367
  %2373 = select i1 %1541, float 0.000000e+00, float %2369
  %2374 = fsub fast float 1.000000e+00, %1427
  %2375 = fsub fast float 1.000000e+00, %1428
  %2376 = fsub fast float 1.000000e+00, %1546
  %2377 = fmul fast float %1466, %2374
  %2378 = fmul fast float %1466, %2375
  %2379 = fmul fast float %2376, %1466
  %2380 = fadd fast float %2377, %1427
  %2381 = fadd fast float %2378, %1428
  %2382 = fadd fast float %2379, %1546
  %2383 = and i32 %879, 65535
  %2384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2383)  ; LegacyF16ToF32(value)
  %2385 = lshr i32 %879, 16
  %2386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2385)  ; LegacyF16ToF32(value)
  %2387 = fcmp fast ogt float %2384, 0.000000e+00
  %2388 = call float @dx.op.unary.f32(i32 6, float %1548)  ; FAbs(value)
  %2389 = select i1 %2387, float %2388, float 0.000000e+00
  %2390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %58, float %2384, float %2389, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2391 = extractvalue %dx.types.ResRet.f32 %2390, 0
  %2392 = extractvalue %dx.types.ResRet.f32 %2390, 1
  %2393 = extractvalue %dx.types.ResRet.f32 %2390, 2
  %2394 = fadd fast float %2391, -5.000000e-01
  %2395 = fadd fast float %2392, -5.000000e-01
  %2396 = fadd fast float %2393, -5.000000e-01
  %2397 = fmul fast float %1427, 4.000000e+00
  %2398 = fmul fast float %2397, %2374
  %2399 = fmul fast float %2398, %2386
  %2400 = fmul fast float %2399, %2394
  %2401 = fmul fast float %1428, 4.000000e+00
  %2402 = fmul fast float %2401, %2375
  %2403 = fmul fast float %2402, %2386
  %2404 = fmul fast float %2403, %2395
  %2405 = fmul fast float %1546, 4.000000e+00
  %2406 = fmul fast float %2405, %2376
  %2407 = fmul fast float %2406, %2386
  %2408 = fmul fast float %2407, %2396
  %2409 = fadd fast float %2380, %2400
  %2410 = fadd fast float %2381, %2404
  %2411 = fadd fast float %2382, %2408
  %2412 = call float @dx.op.unary.f32(i32 7, float %2409)  ; Saturate(value)
  %2413 = call float @dx.op.unary.f32(i32 7, float %2410)  ; Saturate(value)
  %2414 = call float @dx.op.unary.f32(i32 7, float %2411)  ; Saturate(value)
  %2415 = call float @dx.op.binary.f32(i32 35, float %2413, float %2414)  ; FMax(a,b)
  %2416 = call float @dx.op.binary.f32(i32 35, float %2412, float %2415)  ; FMax(a,b)
  %2417 = fsub fast float 1.000000e+00, %2416
  %2418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2419 = extractvalue %dx.types.CBufRet.i32 %2418, 0
  %2420 = and i32 %2419, 524288
  %2421 = icmp ne i32 %2420, 0
  %2422 = select i1 %2421, float 0.000000e+00, float 1.000000e+00
  %2423 = xor i1 %2421, true
  %2424 = zext i1 %2423 to i32
  br i1 %2421, label %2425, label %2695

; <label>:2425                                    ; preds = %2324
  %2426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %2427 = extractvalue %dx.types.CBufRet.f32 %2426, 0
  %2428 = extractvalue %dx.types.CBufRet.f32 %2426, 1
  %2429 = extractvalue %dx.types.CBufRet.f32 %2426, 2
  %2430 = extractvalue %dx.types.CBufRet.f32 %2426, 3
  %2431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %2432 = extractvalue %dx.types.CBufRet.f32 %2431, 0
  %2433 = extractvalue %dx.types.CBufRet.f32 %2431, 1
  %2434 = extractvalue %dx.types.CBufRet.f32 %2431, 2
  %2435 = extractvalue %dx.types.CBufRet.f32 %2431, 3
  %2436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %2437 = extractvalue %dx.types.CBufRet.f32 %2436, 0
  %2438 = extractvalue %dx.types.CBufRet.f32 %2436, 1
  %2439 = extractvalue %dx.types.CBufRet.f32 %2436, 2
  %2440 = extractvalue %dx.types.CBufRet.f32 %2436, 3
  %2441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %2442 = extractvalue %dx.types.CBufRet.f32 %2441, 0
  %2443 = extractvalue %dx.types.CBufRet.f32 %2441, 1
  %2444 = extractvalue %dx.types.CBufRet.f32 %2441, 2
  %2445 = extractvalue %dx.types.CBufRet.f32 %2441, 3
  %2446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %2447 = extractvalue %dx.types.CBufRet.f32 %2446, 0
  %2448 = extractvalue %dx.types.CBufRet.f32 %2446, 1
  %2449 = extractvalue %dx.types.CBufRet.f32 %2446, 2
  %2450 = extractvalue %dx.types.CBufRet.f32 %2446, 3
  %2451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %2452 = extractvalue %dx.types.CBufRet.f32 %2451, 0
  %2453 = extractvalue %dx.types.CBufRet.f32 %2451, 1
  %2454 = extractvalue %dx.types.CBufRet.f32 %2451, 2
  %2455 = extractvalue %dx.types.CBufRet.f32 %2451, 3
  %2456 = call float @dx.op.dot3.f32(i32 55, float %2452, float %2453, float %2454, float %1553, float %1554, float %1555)  ; Dot3(ax,ay,az,bx,by,bz)
  %2457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %2458 = extractvalue %dx.types.CBufRet.f32 %2457, 1
  %2459 = extractvalue %dx.types.CBufRet.f32 %2457, 0
  %2460 = select i1 %105, float %2459, float %2458
  %2461 = fmul fast float %2456, 8.000000e+00
  %2462 = fmul fast float %2461, %2460
  %2463 = call float @dx.op.unary.f32(i32 7, float %2462)  ; Saturate(value)
  %2464 = fcmp fast ogt float %2463, 0.000000e+00
  br i1 %2464, label %2465, label %2682, !dx.controlflow.hints !110

; <label>:2465                                    ; preds = %2425
  %2466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %2467 = extractvalue %dx.types.CBufRet.f32 %2466, 1
  %2468 = fmul fast float %893, 2.000000e+00
  %2469 = fmul fast float %894, 2.000000e+00
  %2470 = fadd fast float %2468, -1.000000e+00
  %2471 = fadd fast float %2469, -1.000000e+00
  %2472 = fmul fast float %2467, %2470
  %2473 = fmul fast float %2467, %2471
  %2474 = fadd fast float %2472, %88
  %2475 = fadd fast float %2473, %89
  %2476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2477 = extractvalue %dx.types.CBufRet.f32 %2476, 2
  %2478 = extractvalue %dx.types.CBufRet.f32 %2476, 3
  %2479 = fmul fast float %2474, %2477
  %2480 = fmul fast float %2475, %2478
  %2481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %59, float %2479, float %2480, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2482 = extractvalue %dx.types.ResRet.f32 %2481, 0
  %2483 = fcmp fast une float %2482, 0xFFF0000000000000
  %2484 = fcmp fast une float %2482, 0x7FF0000000000000
  %2485 = and i1 %2483, %2484
  %2486 = call float @dx.op.unary.f32(i32 6, float %2482)  ; FAbs(value)
  %2487 = fsub fast float 1.000000e+00, %2486
  %2488 = select i1 %2485, float 1.000000e+00, float 0.000000e+00
  %2489 = fmul fast float %2488, %2463
  %2490 = fcmp fast ogt float %2489, 0.000000e+00
  br i1 %2490, label %2491, label %2682, !dx.controlflow.hints !111

; <label>:2491                                    ; preds = %2465
  %2492 = fmul fast float %2427, %143
  %2493 = call float @dx.op.tertiary.f32(i32 46, float %144, float %2428, float %2492)  ; FMad(a,b,c)
  %2494 = call float @dx.op.tertiary.f32(i32 46, float %145, float %2429, float %2493)  ; FMad(a,b,c)
  %2495 = fadd fast float %2494, %2430
  %2496 = fmul fast float %2432, %143
  %2497 = call float @dx.op.tertiary.f32(i32 46, float %144, float %2433, float %2496)  ; FMad(a,b,c)
  %2498 = call float @dx.op.tertiary.f32(i32 46, float %145, float %2434, float %2497)  ; FMad(a,b,c)
  %2499 = fadd fast float %2498, %2435
  %2500 = fmul fast float %2437, %143
  %2501 = call float @dx.op.tertiary.f32(i32 46, float %144, float %2438, float %2500)  ; FMad(a,b,c)
  %2502 = call float @dx.op.tertiary.f32(i32 46, float %145, float %2439, float %2501)  ; FMad(a,b,c)
  %2503 = fadd fast float %2502, %2440
  %2504 = fdiv fast float 1.000000e+00, %2503
  %2505 = fmul fast float %2504, %2495
  %2506 = fmul fast float %2504, %2499
  %2507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2508 = extractvalue %dx.types.CBufRet.f32 %2507, 0
  %2509 = extractvalue %dx.types.CBufRet.f32 %2507, 1
  %2510 = fmul fast float %2505, %2508
  %2511 = fmul fast float %2506, %2509
  %2512 = extractvalue %dx.types.CBufRet.f32 %2507, 2
  %2513 = extractvalue %dx.types.CBufRet.f32 %2507, 3
  %2514 = fadd fast float %2510, %2512
  %2515 = fadd fast float %2511, %2513
  %2516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2517 = extractvalue %dx.types.CBufRet.f32 %2516, 3
  %2518 = fmul fast float %2517, %1553
  %2519 = fmul fast float %2517, %1554
  %2520 = fmul fast float %2517, %1555
  %2521 = fadd fast float %2518, %143
  %2522 = fadd fast float %2519, %144
  %2523 = fadd fast float %2520, %145
  %2524 = fmul fast float %2521, %2427
  %2525 = call float @dx.op.tertiary.f32(i32 46, float %2522, float %2428, float %2524)  ; FMad(a,b,c)
  %2526 = call float @dx.op.tertiary.f32(i32 46, float %2523, float %2429, float %2525)  ; FMad(a,b,c)
  %2527 = fadd fast float %2526, %2430
  %2528 = fmul fast float %2521, %2432
  %2529 = call float @dx.op.tertiary.f32(i32 46, float %2522, float %2433, float %2528)  ; FMad(a,b,c)
  %2530 = call float @dx.op.tertiary.f32(i32 46, float %2523, float %2434, float %2529)  ; FMad(a,b,c)
  %2531 = fadd fast float %2530, %2435
  %2532 = fmul fast float %2521, %2437
  %2533 = call float @dx.op.tertiary.f32(i32 46, float %2522, float %2438, float %2532)  ; FMad(a,b,c)
  %2534 = call float @dx.op.tertiary.f32(i32 46, float %2523, float %2439, float %2533)  ; FMad(a,b,c)
  %2535 = fadd fast float %2534, %2440
  %2536 = fdiv fast float 1.000000e+00, %2535
  %2537 = fmul fast float %2536, %2527
  %2538 = fmul fast float %2536, %2531
  %2539 = fmul fast float %2514, 2.000000e+00
  %2540 = fadd fast float %2539, -1.000000e+00
  %2541 = call float @dx.op.unary.f32(i32 6, float %2540)  ; FAbs(value)
  %2542 = fmul fast float %2541, 5.000000e+00
  %2543 = fadd fast float %2542, -4.000000e+00
  %2544 = call float @dx.op.unary.f32(i32 7, float %2543)  ; Saturate(value)
  %2545 = fsub fast float %2505, %2537
  %2546 = fmul fast float %2508, %2545
  %2547 = fmul fast float %2546, %2544
  %2548 = fsub fast float %2537, %2505
  %2549 = fmul fast float %2508, %2548
  %2550 = fadd fast float %2549, %2547
  %2551 = fsub fast float %2538, %2506
  %2552 = fmul fast float %2509, %2551
  %2553 = fmul fast float %2550, %2487
  %2554 = fmul fast float %2552, %2487
  %2555 = fadd fast float %2553, %2514
  %2556 = fadd fast float %2554, %2515
  %2557 = fsub fast float %2536, %2504
  %2558 = fmul fast float %2557, %2487
  %2559 = fadd fast float %2558, %2504
  %2560 = fdiv fast float 1.000000e+00, %2559
  %2561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %58, float %2555, float %2556, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2562 = extractvalue %dx.types.ResRet.f32 %2561, 0
  %2563 = extractvalue %dx.types.ResRet.f32 %2561, 1
  %2564 = extractvalue %dx.types.ResRet.f32 %2561, 2
  %2565 = extractvalue %dx.types.CBufRet.f32 %2156, 1
  %2566 = fmul fast float %2565, %2562
  %2567 = fmul fast float %2565, %2563
  %2568 = fmul fast float %2565, %2564
  %2569 = call float @dx.op.binary.f32(i32 35, float %2560, float 0x3810000000000000)  ; FMax(a,b)
  %2570 = fdiv fast float %2503, %2569
  %2571 = call float @dx.op.unary.f32(i32 7, float %2570)  ; Saturate(value)
  %2572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %2573 = extractvalue %dx.types.CBufRet.f32 %2572, 0
  %2574 = extractvalue %dx.types.CBufRet.f32 %2572, 1
  %2575 = extractvalue %dx.types.CBufRet.f32 %2572, 2
  %2576 = fadd fast float %2573, %143
  %2577 = fadd fast float %2574, %144
  %2578 = fadd fast float %2575, %145
  %2579 = fmul fast float %2576, %2442
  %2580 = call float @dx.op.tertiary.f32(i32 46, float %2577, float %2443, float %2579)  ; FMad(a,b,c)
  %2581 = call float @dx.op.tertiary.f32(i32 46, float %2578, float %2444, float %2580)  ; FMad(a,b,c)
  %2582 = fadd fast float %2581, %2445
  %2583 = fmul fast float %2576, %2447
  %2584 = call float @dx.op.tertiary.f32(i32 46, float %2577, float %2448, float %2583)  ; FMad(a,b,c)
  %2585 = call float @dx.op.tertiary.f32(i32 46, float %2578, float %2449, float %2584)  ; FMad(a,b,c)
  %2586 = fadd fast float %2585, %2450
  %2587 = fmul fast float %2576, %2452
  %2588 = call float @dx.op.tertiary.f32(i32 46, float %2577, float %2453, float %2587)  ; FMad(a,b,c)
  %2589 = call float @dx.op.tertiary.f32(i32 46, float %2578, float %2454, float %2588)  ; FMad(a,b,c)
  %2590 = fadd fast float %2589, %2455
  %2591 = fdiv fast float 1.000000e+00, %2590
  %2592 = fmul fast float %2591, %2582
  %2593 = fmul fast float %2591, %2586
  %2594 = fmul fast float %2592, %2508
  %2595 = fmul fast float %2593, %2509
  %2596 = fadd fast float %2594, %2512
  %2597 = fadd fast float %2595, %2513
  %2598 = fadd fast float %2518, %2576
  %2599 = fadd fast float %2519, %2577
  %2600 = fadd fast float %2520, %2578
  %2601 = fmul fast float %2598, %2442
  %2602 = call float @dx.op.tertiary.f32(i32 46, float %2599, float %2443, float %2601)  ; FMad(a,b,c)
  %2603 = call float @dx.op.tertiary.f32(i32 46, float %2600, float %2444, float %2602)  ; FMad(a,b,c)
  %2604 = fadd fast float %2603, %2445
  %2605 = fmul fast float %2598, %2447
  %2606 = call float @dx.op.tertiary.f32(i32 46, float %2599, float %2448, float %2605)  ; FMad(a,b,c)
  %2607 = call float @dx.op.tertiary.f32(i32 46, float %2600, float %2449, float %2606)  ; FMad(a,b,c)
  %2608 = fadd fast float %2607, %2450
  %2609 = fmul fast float %2598, %2452
  %2610 = call float @dx.op.tertiary.f32(i32 46, float %2599, float %2453, float %2609)  ; FMad(a,b,c)
  %2611 = call float @dx.op.tertiary.f32(i32 46, float %2600, float %2454, float %2610)  ; FMad(a,b,c)
  %2612 = fadd fast float %2611, %2455
  %2613 = fdiv fast float 1.000000e+00, %2612
  %2614 = fmul fast float %2613, %2604
  %2615 = fmul fast float %2613, %2608
  %2616 = fmul fast float %2596, 2.000000e+00
  %2617 = fadd fast float %2616, -1.000000e+00
  %2618 = call float @dx.op.unary.f32(i32 6, float %2617)  ; FAbs(value)
  %2619 = fmul fast float %2618, 5.000000e+00
  %2620 = fadd fast float %2619, -4.000000e+00
  %2621 = call float @dx.op.unary.f32(i32 7, float %2620)  ; Saturate(value)
  %2622 = fsub fast float %2592, %2614
  %2623 = fmul fast float %2508, %2622
  %2624 = fmul fast float %2623, %2621
  %2625 = fsub fast float %2614, %2592
  %2626 = fmul fast float %2508, %2625
  %2627 = fadd fast float %2626, %2624
  %2628 = fsub fast float %2615, %2593
  %2629 = fmul fast float %2509, %2628
  %2630 = fmul fast float %2627, %2487
  %2631 = fmul fast float %2629, %2487
  %2632 = fadd fast float %2630, %2596
  %2633 = fadd fast float %2631, %2597
  %2634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %58, float %2632, float %2633, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2635 = extractvalue %dx.types.ResRet.f32 %2634, 0
  %2636 = extractvalue %dx.types.ResRet.f32 %2634, 1
  %2637 = extractvalue %dx.types.ResRet.f32 %2634, 2
  %2638 = extractvalue %dx.types.CBufRet.f32 %2156, 2
  %2639 = fmul fast float %2638, %2635
  %2640 = fmul fast float %2638, %2636
  %2641 = fmul fast float %2638, %2637
  %2642 = and i32 %1485, 255
  %2643 = uitofp i32 %2642 to float
  %2644 = fmul fast float %2643, 0x3F70101020000000
  %2645 = fmul fast float %2644, %2571
  %2646 = extractvalue %dx.types.CBufRet.f32 %2457, 2
  %2647 = fadd fast float %2646, %2645
  %2648 = call float @dx.op.unary.f32(i32 7, float %2647)  ; Saturate(value)
  %2649 = call float @dx.op.binary.f32(i32 35, float %2566, float 0x3810000000000000)  ; FMax(a,b)
  %2650 = call float @dx.op.binary.f32(i32 35, float %2567, float 0x3810000000000000)  ; FMax(a,b)
  %2651 = call float @dx.op.binary.f32(i32 35, float %2568, float 0x3810000000000000)  ; FMax(a,b)
  %2652 = call float @dx.op.unary.f32(i32 23, float %2649)  ; Log(value)
  %2653 = call float @dx.op.unary.f32(i32 23, float %2650)  ; Log(value)
  %2654 = call float @dx.op.unary.f32(i32 23, float %2651)  ; Log(value)
  %2655 = call float @dx.op.binary.f32(i32 35, float %2639, float 0x3810000000000000)  ; FMax(a,b)
  %2656 = call float @dx.op.binary.f32(i32 35, float %2640, float 0x3810000000000000)  ; FMax(a,b)
  %2657 = call float @dx.op.binary.f32(i32 35, float %2641, float 0x3810000000000000)  ; FMax(a,b)
  %2658 = call float @dx.op.unary.f32(i32 23, float %2655)  ; Log(value)
  %2659 = call float @dx.op.unary.f32(i32 23, float %2656)  ; Log(value)
  %2660 = call float @dx.op.unary.f32(i32 23, float %2657)  ; Log(value)
  %2661 = fsub fast float %2652, %2658
  %2662 = fsub fast float %2653, %2659
  %2663 = fsub fast float %2654, %2660
  %2664 = fmul fast float %2661, %2648
  %2665 = fmul fast float %2662, %2648
  %2666 = fmul fast float %2663, %2648
  %2667 = fadd fast float %2664, %2658
  %2668 = fadd fast float %2665, %2659
  %2669 = fadd fast float %2666, %2660
  %2670 = call float @dx.op.unary.f32(i32 21, float %2667)  ; Exp(value)
  %2671 = call float @dx.op.unary.f32(i32 21, float %2668)  ; Exp(value)
  %2672 = call float @dx.op.unary.f32(i32 21, float %2669)  ; Exp(value)
  %2673 = select i1 %1541, float 0.000000e+00, float %2671
  %2674 = select i1 %1541, float 0.000000e+00, float %2672
  %2675 = fmul fast float %2633, 2.000000e+00
  %2676 = fadd fast float %2675, -1.000000e+00
  %2677 = fmul fast float %2676, %2676
  %2678 = fsub fast float 1.000000e+00, %2677
  %2679 = call float @dx.op.unary.f32(i32 7, float %2678)  ; Saturate(value)
  %2680 = call float @dx.op.unary.f32(i32 7, float %2679)  ; Saturate(value)
  %2681 = fmul fast float %2680, %2489
  br label %2682

; <label>:2682                                    ; preds = %2491, %2465, %2425
  %2683 = phi float [ %2670, %2491 ], [ 0.000000e+00, %2465 ], [ 0.000000e+00, %2425 ]
  %2684 = phi float [ %2673, %2491 ], [ 0.000000e+00, %2465 ], [ 0.000000e+00, %2425 ]
  %2685 = phi float [ %2674, %2491 ], [ 0.000000e+00, %2465 ], [ 0.000000e+00, %2425 ]
  %2686 = phi float [ %2681, %2491 ], [ 0.000000e+00, %2465 ], [ 0.000000e+00, %2425 ]
  %2687 = fcmp fast olt float %2686, 1.000000e+00
  %2688 = or i1 %2687, %2423
  %2689 = zext i1 %2688 to i32
  %2690 = fmul fast float %2686, %2422
  %2691 = fsub fast float %2686, %2690
  %2692 = fmul fast float %2691, %2683
  %2693 = fmul fast float %2691, %2684
  %2694 = fmul fast float %2691, %2685
  br label %2695

; <label>:2695                                    ; preds = %2682, %2324
  %2696 = phi float [ 0.000000e+00, %2324 ], [ %2691, %2682 ]
  %2697 = phi float [ 0.000000e+00, %2324 ], [ %2692, %2682 ]
  %2698 = phi float [ 0.000000e+00, %2324 ], [ %2693, %2682 ]
  %2699 = phi float [ 0.000000e+00, %2324 ], [ %2694, %2682 ]
  %2700 = phi i32 [ %2424, %2324 ], [ %2689, %2682 ]
  %2701 = icmp eq i32 %2700, 0
  br i1 %2701, label %3140, label %2702

; <label>:2702                                    ; preds = %2695
  %2703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2704 = extractvalue %dx.types.CBufRet.f32 %2703, 2
  %2705 = extractvalue %dx.types.CBufRet.f32 %2703, 3
  %2706 = fmul fast float %2704, %88
  %2707 = fmul fast float %2705, %89
  %2708 = fptoui float %2706 to i32
  %2709 = fptoui float %2707 to i32
  %2710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2711 = extractvalue %dx.types.CBufRet.f32 %2710, 0
  %2712 = extractvalue %dx.types.CBufRet.f32 %2710, 2
  %2713 = extractvalue %dx.types.CBufRet.f32 %2710, 3
  %2714 = fadd fast float %78, -4.000000e+00
  %2715 = call float @dx.op.binary.f32(i32 35, float %2714, float 0.000000e+00)  ; FMax(a,b)
  %2716 = fadd fast float %2715, %2711
  %2717 = fmul fast float %2716, %2712
  %2718 = call float @dx.op.unary.f32(i32 23, float %2717)  ; Log(value)
  %2719 = fmul fast float %2718, %2713
  %2720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2721 = extractvalue %dx.types.CBufRet.f32 %2720, 2
  %2722 = fmul fast float %2719, %2721
  %2723 = call float @dx.op.unary.f32(i32 7, float %2722)  ; Saturate(value)
  %2724 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2725 = extractvalue %dx.types.CBufRet.i32 %2724, 1
  %2726 = add i32 %2725, -1
  %2727 = uitofp i32 %2725 to float
  %2728 = fmul fast float %2727, %2723
  %2729 = fptoui float %2728 to i32
  %2730 = call i32 @dx.op.binary.i32(i32 40, i32 %2729, i32 %2726)  ; UMin(a,b)
  %2731 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2732 = extractvalue %dx.types.CBufRet.i32 %2731, 2
  %2733 = extractvalue %dx.types.CBufRet.i32 %2731, 3
  %2734 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2709, i32 %2732, i32 %2708)  ; UMad(a,b,c)
  %2735 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2730, i32 %2733, i32 %2734)  ; UMad(a,b,c)
  %2736 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %2737 = fptoui float %2736 to i32
  %2738 = lshr i32 %2737, 5
  %2739 = call i32 @dx.op.binary.i32(i32 40, i32 %2738, i32 8191)  ; UMin(a,b)
  %2740 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2741 = extractvalue %dx.types.CBufRet.i32 %2740, 2
  %2742 = add nsw i32 %2741, -1
  %2743 = call i32 @dx.op.binary.i32(i32 37, i32 %2742, i32 0)  ; IMax(a,b)
  %2744 = shl i32 %2739, 2
  %2745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %2746 = extractvalue %dx.types.ResRet.i32 %2745, 0
  %2747 = lshr i32 %2746, 16
  %2748 = and i32 %2746, 65535
  %2749 = lshr i32 %2746, 21
  %2750 = lshr i32 %2748, 5
  %2751 = call i32 @dx.op.binary.i32(i32 40, i32 %2750, i32 %2743)  ; UMin(a,b)
  %2752 = icmp ugt i32 %2749, %2751
  br i1 %2752, label %3116, label %2753

; <label>:2753                                    ; preds = %2702
  br label %2754

; <label>:2754                                    ; preds = %3108, %2753
  %2755 = phi float [ %3109, %3108 ], [ 0.000000e+00, %2753 ]
  %2756 = phi float [ %3110, %3108 ], [ 0.000000e+00, %2753 ]
  %2757 = phi float [ %3111, %3108 ], [ 0.000000e+00, %2753 ]
  %2758 = phi float [ %3112, %3108 ], [ 1.000000e+00, %2753 ]
  %2759 = phi i32 [ %3113, %3108 ], [ %2749, %2753 ]
  %2760 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2761 = extractvalue %dx.types.CBufRet.i32 %2760, 2
  %2762 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2735, i32 %2761, i32 %2759)  ; UMad(a,b,c)
  %2763 = shl i32 %2762, 2
  %2764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2765 = extractvalue %dx.types.ResRet.i32 %2764, 0
  %2766 = shl i32 %2759, 5
  %2767 = sub nsw i32 %2747, %2766
  %2768 = call i32 @dx.op.binary.i32(i32 37, i32 %2767, i32 0)  ; IMax(a,b)
  %2769 = call i32 @dx.op.binary.i32(i32 38, i32 %2768, i32 31)  ; IMin(a,b)
  %2770 = sub nsw i32 1, %2747
  %2771 = add nsw i32 %2770, %2748
  %2772 = call i32 @dx.op.binary.i32(i32 37, i32 %2771, i32 0)  ; IMax(a,b)
  %2773 = call i32 @dx.op.binary.i32(i32 38, i32 %2772, i32 32)  ; IMin(a,b)
  %2774 = and i32 %2773, 31
  %2775 = shl i32 -1, %2774
  %2776 = xor i32 %2775, -1
  %2777 = and i32 %2769, 31
  %2778 = shl i32 %2776, %2777
  %2779 = icmp eq i32 %2773, 32
  %2780 = select i1 %2779, i32 -1, i32 %2778
  %2781 = and i32 %2780, %2765
  %2782 = icmp eq i32 %2781, 0
  br i1 %2782, label %3108, label %2783

; <label>:2783                                    ; preds = %2754
  br label %2784

; <label>:2784                                    ; preds = %2891, %2783
  %2785 = phi float [ %2892, %2891 ], [ %2755, %2783 ]
  %2786 = phi float [ %2893, %2891 ], [ %2756, %2783 ]
  %2787 = phi float [ %2894, %2891 ], [ %2757, %2783 ]
  %2788 = phi float [ %2895, %2891 ], [ %2758, %2783 ]
  %2789 = phi i32 [ %2794, %2891 ], [ %2781, %2783 ]
  %2790 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2789)  ; FirstbitLo(value)
  %2791 = add i32 %2790, %2766
  %2792 = and i32 %2790, 31
  %2793 = shl i32 1, %2792
  %2794 = xor i32 %2793, %2789
  %2795 = mul i32 %2791, 72
  %2796 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %2795, i32 undef)  ; BufferLoad(srv,index,wot)
  %2797 = extractvalue %dx.types.ResRet.f32 %2796, 0
  %2798 = extractvalue %dx.types.ResRet.f32 %2796, 1
  %2799 = extractvalue %dx.types.ResRet.f32 %2796, 2
  %2800 = add i32 %2795, 12
  %2801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %2800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2802 = extractvalue %dx.types.ResRet.i32 %2801, 0
  %2803 = add i32 %2795, 16
  %2804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %2803, i32 undef)  ; BufferLoad(srv,index,wot)
  %2805 = extractvalue %dx.types.ResRet.f32 %2804, 0
  %2806 = extractvalue %dx.types.ResRet.f32 %2804, 1
  %2807 = extractvalue %dx.types.ResRet.f32 %2804, 2
  %2808 = add i32 %2795, 28
  %2809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %2808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2810 = extractvalue %dx.types.ResRet.f32 %2809, 0
  %2811 = add i32 %2795, 32
  %2812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2813 = extractvalue %dx.types.ResRet.f32 %2812, 0
  %2814 = extractvalue %dx.types.ResRet.f32 %2812, 1
  %2815 = extractvalue %dx.types.ResRet.f32 %2812, 2
  %2816 = extractvalue %dx.types.ResRet.f32 %2812, 3
  %2817 = add i32 %2795, 48
  %2818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.f32 %2818, 0
  %2820 = extractvalue %dx.types.ResRet.f32 %2818, 1
  %2821 = add i32 %2795, 56
  %2822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %2823 = extractvalue %dx.types.ResRet.f32 %2822, 0
  %2824 = extractvalue %dx.types.ResRet.f32 %2822, 1
  %2825 = add i32 %2795, 64
  %2826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.f32 %2826, 0
  %2828 = extractvalue %dx.types.ResRet.f32 %2826, 1
  %2829 = mul i32 %2791, 60
  %2830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.f32 %2830, 0
  %2832 = extractvalue %dx.types.ResRet.f32 %2830, 1
  %2833 = extractvalue %dx.types.ResRet.f32 %2830, 2
  %2834 = add i32 %2829, 12
  %2835 = add i32 %2829, 48
  %2836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %2835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.f32 %2836, 0
  %2838 = extractvalue %dx.types.ResRet.f32 %2836, 1
  %2839 = extractvalue %dx.types.ResRet.f32 %2836, 2
  %2840 = and i32 %2802, 32767
  %2841 = bitcast float %2797 to i32
  %2842 = icmp eq i32 %2841, -1
  %2843 = bitcast float %2798 to i32
  %2844 = and i32 %2802, 32768
  %2845 = icmp ne i32 %2844, 0
  %2846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2847 = extractvalue %dx.types.CBufRet.f32 %2846, 0
  %2848 = extractvalue %dx.types.CBufRet.f32 %2846, 1
  %2849 = extractvalue %dx.types.CBufRet.f32 %2846, 2
  %2850 = fsub fast float %2831, %2847
  %2851 = fsub fast float %2832, %2848
  %2852 = fsub fast float %2833, %2849
  %2853 = fsub fast float %143, %2850
  %2854 = fsub fast float %144, %2851
  %2855 = fsub fast float %145, %2852
  %2856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.f32 %2856, 0
  %2858 = extractvalue %dx.types.ResRet.f32 %2856, 1
  %2859 = extractvalue %dx.types.ResRet.f32 %2856, 2
  %2860 = call float @dx.op.dot3.f32(i32 55, float %2853, float %2854, float %2855, float %2857, float %2858, float %2859)  ; Dot3(ax,ay,az,bx,by,bz)
  %2861 = add i32 %2829, 24
  %2862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %2861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2863 = extractvalue %dx.types.ResRet.f32 %2862, 0
  %2864 = extractvalue %dx.types.ResRet.f32 %2862, 1
  %2865 = extractvalue %dx.types.ResRet.f32 %2862, 2
  %2866 = call float @dx.op.dot3.f32(i32 55, float %2853, float %2854, float %2855, float %2863, float %2864, float %2865)  ; Dot3(ax,ay,az,bx,by,bz)
  %2867 = add i32 %2829, 36
  %2868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.f32 %2868, 0
  %2870 = extractvalue %dx.types.ResRet.f32 %2868, 1
  %2871 = extractvalue %dx.types.ResRet.f32 %2868, 2
  %2872 = call float @dx.op.dot3.f32(i32 55, float %2853, float %2854, float %2855, float %2869, float %2870, float %2871)  ; Dot3(ax,ay,az,bx,by,bz)
  %2873 = call float @dx.op.unary.f32(i32 6, float %2860)  ; FAbs(value)
  %2874 = call float @dx.op.unary.f32(i32 6, float %2866)  ; FAbs(value)
  %2875 = call float @dx.op.unary.f32(i32 6, float %2872)  ; FAbs(value)
  %2876 = fsub fast float %2837, %2873
  %2877 = fsub fast float %2838, %2874
  %2878 = fsub fast float %2839, %2875
  %2879 = fmul fast float %2876, %2805
  %2880 = fmul fast float %2877, %2806
  %2881 = fmul fast float %2878, %2807
  %2882 = call float @dx.op.binary.f32(i32 36, float %2880, float %2881)  ; FMin(a,b)
  %2883 = call float @dx.op.binary.f32(i32 36, float %2879, float %2882)  ; FMin(a,b)
  %2884 = call float @dx.op.unary.f32(i32 7, float %2883)  ; Saturate(value)
  %2885 = call float @dx.op.binary.f32(i32 36, float %2788, float %2884)  ; FMin(a,b)
  %2886 = uitofp i1 %2845 to float
  %2887 = select i1 %105, float 1.000000e+00, float 2.000000e+00
  %2888 = fsub fast float %2887, %2886
  %2889 = fmul fast float %2885, %2888
  %2890 = fcmp fast ogt float %2889, 0.000000e+00
  br i1 %2890, label %2897, label %2891

; <label>:2891                                    ; preds = %3039, %2784
  %2892 = phi float [ %3103, %3039 ], [ %2785, %2784 ]
  %2893 = phi float [ %3104, %3039 ], [ %2786, %2784 ]
  %2894 = phi float [ %3105, %3039 ], [ %2787, %2784 ]
  %2895 = phi float [ %3106, %3039 ], [ %2788, %2784 ]
  %2896 = icmp eq i32 %2789, %2793
  br i1 %2896, label %3107, label %2784

; <label>:2897                                    ; preds = %2784
  br i1 %2842, label %2955, label %2898

; <label>:2898                                    ; preds = %2897
  %2899 = fsub fast float -0.000000e+00, %2857
  %2900 = fsub fast float -0.000000e+00, %2858
  %2901 = fsub fast float -0.000000e+00, %2859
  %2902 = call float @dx.op.dot3.f32(i32 55, float %1553, float %1554, float %1555, float %2899, float %2900, float %2901)  ; Dot3(ax,ay,az,bx,by,bz)
  %2903 = fsub fast float -0.000000e+00, %2902
  %2904 = call float @dx.op.dot3.f32(i32 55, float %2853, float %2854, float %2855, float %2899, float %2900, float %2901)  ; Dot3(ax,ay,az,bx,by,bz)
  %2905 = fadd fast float %2904, %2820
  %2906 = fadd fast float %2819, %2904
  %2907 = fsub fast float -0.000000e+00, %2906
  %2908 = fcmp ogt float %2902, -0.000000e+00
  %2909 = select i1 %2908, float %2907, float %2905
  %2910 = call float @dx.op.unary.f32(i32 6, float %2903)  ; FAbs(value)
  %2911 = fdiv fast float 1.000000e+00, %2910
  %2912 = fmul fast float %2909, %2911
  %2913 = call float @dx.op.binary.f32(i32 35, float %2912, float 0.000000e+00)  ; FMax(a,b)
  %2914 = fsub fast float -0.000000e+00, %2863
  %2915 = fsub fast float -0.000000e+00, %2864
  %2916 = fsub fast float -0.000000e+00, %2865
  %2917 = call float @dx.op.dot3.f32(i32 55, float %1553, float %1554, float %1555, float %2914, float %2915, float %2916)  ; Dot3(ax,ay,az,bx,by,bz)
  %2918 = fsub fast float -0.000000e+00, %2917
  %2919 = call float @dx.op.dot3.f32(i32 55, float %2853, float %2854, float %2855, float %2914, float %2915, float %2916)  ; Dot3(ax,ay,az,bx,by,bz)
  %2920 = fadd fast float %2919, %2824
  %2921 = fadd fast float %2823, %2919
  %2922 = fsub fast float -0.000000e+00, %2921
  %2923 = fcmp ogt float %2917, -0.000000e+00
  %2924 = select i1 %2923, float %2922, float %2920
  %2925 = call float @dx.op.unary.f32(i32 6, float %2918)  ; FAbs(value)
  %2926 = fdiv fast float 1.000000e+00, %2925
  %2927 = fmul fast float %2924, %2926
  %2928 = call float @dx.op.binary.f32(i32 35, float %2927, float 0.000000e+00)  ; FMax(a,b)
  %2929 = fsub fast float -0.000000e+00, %2869
  %2930 = fsub fast float -0.000000e+00, %2870
  %2931 = fsub fast float -0.000000e+00, %2871
  %2932 = call float @dx.op.dot3.f32(i32 55, float %1553, float %1554, float %1555, float %2929, float %2930, float %2931)  ; Dot3(ax,ay,az,bx,by,bz)
  %2933 = fsub fast float -0.000000e+00, %2932
  %2934 = call float @dx.op.dot3.f32(i32 55, float %2853, float %2854, float %2855, float %2929, float %2930, float %2931)  ; Dot3(ax,ay,az,bx,by,bz)
  %2935 = fadd fast float %2934, %2828
  %2936 = fadd fast float %2827, %2934
  %2937 = fsub fast float -0.000000e+00, %2936
  %2938 = fcmp ogt float %2932, -0.000000e+00
  %2939 = select i1 %2938, float %2937, float %2935
  %2940 = call float @dx.op.unary.f32(i32 6, float %2933)  ; FAbs(value)
  %2941 = fdiv fast float 1.000000e+00, %2940
  %2942 = fmul fast float %2939, %2941
  %2943 = call float @dx.op.binary.f32(i32 35, float %2942, float 0.000000e+00)  ; FMax(a,b)
  %2944 = call float @dx.op.binary.f32(i32 36, float %2928, float %2943)  ; FMin(a,b)
  %2945 = call float @dx.op.binary.f32(i32 36, float %2913, float %2944)  ; FMin(a,b)
  %2946 = fmul fast float %2945, %1553
  %2947 = fmul fast float %2945, %1554
  %2948 = fmul fast float %2945, %1555
  %2949 = fadd fast float %2946, %143
  %2950 = fadd fast float %2947, %144
  %2951 = fadd fast float %2948, %145
  %2952 = fsub fast float %2949, %2797
  %2953 = fsub fast float %2950, %2798
  %2954 = fsub fast float %2951, %2799
  br label %2962

; <label>:2955                                    ; preds = %2897
  %2956 = fmul fast float %1553, 8.096000e+03
  %2957 = fmul fast float %1554, 8.096000e+03
  %2958 = fmul fast float %1555, 8.096000e+03
  %2959 = fadd fast float %2956, %143
  %2960 = fadd fast float %2957, %144
  %2961 = fadd fast float %2958, %145
  br label %2962

; <label>:2962                                    ; preds = %2955, %2898
  %2963 = phi float [ %1553, %2955 ], [ %2952, %2898 ]
  %2964 = phi float [ %1554, %2955 ], [ %2953, %2898 ]
  %2965 = phi float [ %1555, %2955 ], [ %2954, %2898 ]
  %2966 = phi float [ %2959, %2955 ], [ %2949, %2898 ]
  %2967 = phi float [ %2960, %2955 ], [ %2950, %2898 ]
  %2968 = phi float [ %2961, %2955 ], [ %2951, %2898 ]
  %2969 = fcmp fast olt float %2816, 1.000000e+00
  br i1 %2969, label %2970, label %3001, !dx.controlflow.hints !112

; <label>:2970                                    ; preds = %2962
  %2971 = fmul fast float %2965, %2814
  %2972 = fmul fast float %2964, %2815
  %2973 = fsub fast float %2971, %2972
  %2974 = fmul fast float %2963, %2815
  %2975 = fmul fast float %2965, %2813
  %2976 = fsub fast float %2974, %2975
  %2977 = fmul fast float %2964, %2813
  %2978 = fmul fast float %2963, %2814
  %2979 = fsub fast float %2977, %2978
  %2980 = fmul fast float %2973, 2.000000e+00
  %2981 = fmul fast float %2976, 2.000000e+00
  %2982 = fmul fast float %2979, 2.000000e+00
  %2983 = fmul fast float %2980, %2816
  %2984 = fmul fast float %2981, %2816
  %2985 = fmul fast float %2982, %2816
  %2986 = fmul fast float %2982, %2814
  %2987 = fmul fast float %2981, %2815
  %2988 = fmul fast float %2980, %2815
  %2989 = fmul fast float %2982, %2813
  %2990 = fmul fast float %2981, %2813
  %2991 = fmul fast float %2980, %2814
  %2992 = fadd fast float %2986, %2963
  %2993 = fadd fast float %2992, %2983
  %2994 = fsub fast float %2993, %2987
  %2995 = fsub fast float %2964, %2989
  %2996 = fadd fast float %2995, %2984
  %2997 = fadd fast float %2996, %2988
  %2998 = fadd fast float %2985, %2965
  %2999 = fsub fast float %2998, %2991
  %3000 = fadd fast float %2999, %2990
  br label %3001

; <label>:3001                                    ; preds = %2970, %2962
  %3002 = phi float [ %2994, %2970 ], [ %2963, %2962 ]
  %3003 = phi float [ %2997, %2970 ], [ %2964, %2962 ]
  %3004 = phi float [ %3000, %2970 ], [ %2965, %2962 ]
  br i1 %2842, label %3036, label %3005

; <label>:3005                                    ; preds = %3001
  %3006 = fmul fast float %1489, 0x400187C840000000
  %3007 = fadd fast float %3006, 0xC00EFC2120000000
  %3008 = fmul fast float %3007, %1489
  %3009 = fadd fast float %3008, 0x3FE5D16340000000
  %3010 = fmul fast float %3009, %1489
  %3011 = fadd fast float %3010, 1.000000e+00
  %3012 = call float @dx.op.unary.f32(i32 7, float %3011)  ; Saturate(value)
  %3013 = fsub fast float %2966, %143
  %3014 = fsub fast float %2967, %144
  %3015 = fsub fast float %2968, %145
  %3016 = fsub fast float %2966, %2797
  %3017 = fsub fast float %2967, %2798
  %3018 = fsub fast float %2968, %2799
  %3019 = call float @dx.op.dot3.f32(i32 55, float %3013, float %3014, float %3015, float %3013, float %3014, float %3015)  ; Dot3(ax,ay,az,bx,by,bz)
  %3020 = call float @dx.op.dot3.f32(i32 55, float %3016, float %3017, float %3018, float %3016, float %3017, float %3018)  ; Dot3(ax,ay,az,bx,by,bz)
  %3021 = fadd fast float %3020, 0x3EE4F8B580000000
  %3022 = fdiv fast float %3019, %3021
  %3023 = bitcast float %3022 to i32
  %3024 = ashr i32 %3023, 1
  %3025 = add nsw i32 %3024, 532487669
  %3026 = bitcast i32 %3025 to float
  %3027 = fmul fast float %3026, %3012
  %3028 = call float @dx.op.unary.f32(i32 7, float %3027)  ; Saturate(value)
  %3029 = fmul fast float %3028, 0x4009981AE0000000
  %3030 = fsub fast float 0x40111BBD80000000, %3029
  %3031 = fmul fast float %3030, %3028
  %3032 = fadd fast float %3031, 0xC0009F6020000000
  %3033 = fmul fast float %3032, %3028
  %3034 = fadd fast float %3033, 1.000000e+00
  %3035 = call float @dx.op.unary.f32(i32 7, float %3034)  ; Saturate(value)
  br label %3039

; <label>:3036                                    ; preds = %3001
  %3037 = icmp ne i32 %2843, -1
  %3038 = zext i1 %3037 to i32
  br label %3039

; <label>:3039                                    ; preds = %3036, %3005
  %3040 = phi float [ %1489, %3036 ], [ %3035, %3005 ]
  %3041 = phi i32 [ %3038, %3036 ], [ 0, %3005 ]
  %3042 = fmul float %3040, 5.000000e+00
  %3043 = fsub float 5.000000e+00, %3042
  %3044 = icmp ne i32 %3041, 0
  %3045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3046 = extractvalue %dx.types.CBufRet.f32 %3045, 3
  %3047 = fadd fast float %3046, %3043
  %3048 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3047)  ; FMax(a,b)
  %3049 = call float @dx.op.unary.f32(i32 6, float %3002)  ; FAbs(value)
  %3050 = call float @dx.op.unary.f32(i32 6, float %3003)  ; FAbs(value)
  %3051 = fadd fast float %3050, %3049
  %3052 = call float @dx.op.unary.f32(i32 6, float %3004)  ; FAbs(value)
  %3053 = fadd fast float %3051, %3052
  %3054 = fcmp fast oeq float %3053, 0.000000e+00
  %3055 = fdiv fast float 1.000000e+00, %3053
  %3056 = select i1 %3054, float 1.000000e+00, float %3055
  %3057 = fmul fast float %3056, %3002
  %3058 = fmul fast float %3056, %3003
  %3059 = call float @dx.op.unary.f32(i32 6, float %3058)  ; FAbs(value)
  %3060 = call float @dx.op.unary.f32(i32 6, float %3057)  ; FAbs(value)
  %3061 = fsub fast float 1.000000e+00, %3059
  %3062 = fsub fast float 1.000000e+00, %3060
  %3063 = fcmp fast oge float %3057, 0.000000e+00
  %3064 = fcmp fast oge float %3058, 0.000000e+00
  %3065 = select i1 %3063, float 1.000000e+00, float -1.000000e+00
  %3066 = select i1 %3064, float 1.000000e+00, float -1.000000e+00
  %3067 = fcmp fast ole float %3004, 0.000000e+00
  %3068 = fmul fast float %3065, %3061
  %3069 = fmul fast float %3066, %3062
  %3070 = select i1 %3067, float %3068, float %3057
  %3071 = select i1 %3067, float %3069, float %3058
  %3072 = fmul fast float %3070, 5.000000e-01
  %3073 = fmul fast float %3071, 5.000000e-01
  %3074 = fadd fast float %3072, 5.000000e-01
  %3075 = fadd fast float %3073, 5.000000e-01
  %3076 = uitofp i32 %2840 to float
  %3077 = call float @dx.op.binary.f32(i32 36, float %3048, float 3.000000e+00)  ; FMin(a,b)
  %3078 = fadd fast float %3077, 2.000000e+00
  %3079 = call float @dx.op.unary.f32(i32 21, float %3078)  ; Exp(value)
  %3080 = extractvalue %dx.types.CBufRet.f32 %3045, 1
  %3081 = fmul fast float %3080, %3079
  %3082 = fmul fast float %3081, 2.000000e+00
  %3083 = fsub fast float 1.000000e+00, %3082
  %3084 = fmul fast float %3074, %3083
  %3085 = fmul fast float %3075, %3083
  %3086 = fadd fast float %3084, %3081
  %3087 = fadd fast float %3085, %3081
  %3088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %56, float %3086, float %3087, float %3076, float undef, i32 0, i32 0, i32 undef, float %3048)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3089 = extractvalue %dx.types.ResRet.f32 %3088, 0
  %3090 = extractvalue %dx.types.ResRet.f32 %3088, 1
  %3091 = extractvalue %dx.types.ResRet.f32 %3088, 2
  %3092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3093 = extractvalue %dx.types.CBufRet.f32 %3092, 3
  %3094 = fmul fast float %3093, %2810
  %3095 = call float @dx.op.binary.f32(i32 36, float %2162, float %3094)  ; FMin(a,b)
  %3096 = select i1 %3044, float %3095, float %3094
  %3097 = fmul fast float %3089, %2889
  %3098 = fmul fast float %3097, %3096
  %3099 = fmul fast float %3090, %2889
  %3100 = fmul fast float %3099, %3096
  %3101 = fmul fast float %3091, %2889
  %3102 = fmul fast float %3101, %3096
  %3103 = fadd fast float %3098, %2785
  %3104 = fadd fast float %3100, %2786
  %3105 = fadd fast float %3102, %2787
  %3106 = fsub fast float %2788, %2889
  br label %2891

; <label>:3107                                    ; preds = %2891
  br label %3108

; <label>:3108                                    ; preds = %3107, %2754
  %3109 = phi float [ %2755, %2754 ], [ %2892, %3107 ]
  %3110 = phi float [ %2756, %2754 ], [ %2893, %3107 ]
  %3111 = phi float [ %2757, %2754 ], [ %2894, %3107 ]
  %3112 = phi float [ %2758, %2754 ], [ %2895, %3107 ]
  %3113 = add i32 %2759, 1
  %3114 = icmp ugt i32 %3113, %2751
  br i1 %3114, label %3115, label %2754, !llvm.loop !113

; <label>:3115                                    ; preds = %3108
  br label %3116

; <label>:3116                                    ; preds = %3115, %2702
  %3117 = phi float [ 0.000000e+00, %2702 ], [ %3109, %3115 ]
  %3118 = phi float [ 0.000000e+00, %2702 ], [ %3110, %3115 ]
  %3119 = phi float [ 0.000000e+00, %2702 ], [ %3111, %3115 ]
  %3120 = call float @dx.op.dot3.f32(i32 55, float %3117, float %3118, float %3119, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3121 = select i1 %1541, float 0.000000e+00, float %3117
  %3122 = select i1 %1541, float %3120, float %3118
  %3123 = select i1 %1541, float 0.000000e+00, float %3119
  %3124 = fcmp fast olt float %2696, 0.000000e+00
  %3125 = call float @dx.op.unary.f32(i32 6, float %2696)  ; FAbs(value)
  %3126 = fmul fast float %3125, %2697
  %3127 = fmul fast float %3125, %2698
  %3128 = fmul fast float %3125, %2699
  %3129 = select i1 %3124, float %2697, float %3126
  %3130 = select i1 %3124, float %2698, float %3127
  %3131 = select i1 %3124, float %2699, float %3128
  %3132 = fsub fast float 1.000000e+00, %3125
  %3133 = call float @dx.op.unary.f32(i32 7, float %3132)  ; Saturate(value)
  %3134 = fmul fast float %3133, %3121
  %3135 = fmul fast float %3133, %3122
  %3136 = fmul fast float %3133, %3123
  %3137 = fadd fast float %3129, %3134
  %3138 = fadd fast float %3130, %3135
  %3139 = fadd fast float %3131, %3136
  br label %3140

; <label>:3140                                    ; preds = %3116, %2695
  %3141 = phi float [ %2697, %2695 ], [ %3137, %3116 ]
  %3142 = phi float [ %2698, %2695 ], [ %3138, %3116 ]
  %3143 = phi float [ %2699, %2695 ], [ %3139, %3116 ]
  %3144 = fmul fast float %2417, %2371
  %3145 = fmul fast float %2417, %2372
  %3146 = fmul fast float %2417, %2373
  %3147 = fmul fast float %3141, %2412
  %3148 = fmul fast float %3142, %2413
  %3149 = fmul fast float %3143, %2414
  %3150 = fadd fast float %3147, %1370
  %3151 = fadd fast float %3148, %1371
  %3152 = fadd fast float %3149, %1372
  %3153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3154 = extractvalue %dx.types.CBufRet.f32 %3153, 3
  %3155 = fcmp fast oeq float %3154, 0.000000e+00
  br i1 %3155, label %4945, label %3156

; <label>:3156                                    ; preds = %3140
  %3157 = extractvalue %dx.types.CBufRet.f32 %3153, 0
  %3158 = extractvalue %dx.types.CBufRet.f32 %3153, 1
  %3159 = extractvalue %dx.types.CBufRet.f32 %3153, 2
  %3160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3161 = extractvalue %dx.types.CBufRet.f32 %3160, 0
  %3162 = extractvalue %dx.types.CBufRet.f32 %3160, 1
  %3163 = extractvalue %dx.types.CBufRet.f32 %3160, 2
  %3164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3165 = extractvalue %dx.types.CBufRet.f32 %3164, 0
  %3166 = extractvalue %dx.types.CBufRet.f32 %3164, 1
  %3167 = call float @dx.op.dot3.f32(i32 55, float %3161, float %3162, float %3163, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3168 = select i1 %1541, float %3165, float %3161
  %3169 = select i1 %1541, float %3167, float %3162
  %3170 = select i1 %1541, float %3166, float %3163
  %3171 = fcmp fast olt float %3154, 0.000000e+00
  br i1 %3171, label %4546, label %3172

; <label>:3172                                    ; preds = %3156
  %3173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3174 = extractvalue %dx.types.CBufRet.f32 %3173, 0
  %3175 = extractvalue %dx.types.CBufRet.f32 %3173, 1
  %3176 = extractvalue %dx.types.CBufRet.f32 %3173, 2
  %3177 = extractvalue %dx.types.CBufRet.f32 %3173, 3
  %3178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3179 = extractvalue %dx.types.CBufRet.f32 %3178, 0
  %3180 = extractvalue %dx.types.CBufRet.f32 %3178, 1
  %3181 = extractvalue %dx.types.CBufRet.f32 %3178, 2
  %3182 = extractvalue %dx.types.CBufRet.f32 %3178, 3
  %3183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3184 = extractvalue %dx.types.CBufRet.f32 %3183, 0
  %3185 = extractvalue %dx.types.CBufRet.f32 %3183, 1
  %3186 = extractvalue %dx.types.CBufRet.f32 %3183, 2
  %3187 = extractvalue %dx.types.CBufRet.f32 %3183, 3
  %3188 = fmul fast float %3174, %143
  %3189 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3175, float %3188)  ; FMad(a,b,c)
  %3190 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3176, float %3189)  ; FMad(a,b,c)
  %3191 = fadd fast float %3190, %3177
  %3192 = fmul fast float %3179, %143
  %3193 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3180, float %3192)  ; FMad(a,b,c)
  %3194 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3181, float %3193)  ; FMad(a,b,c)
  %3195 = fadd fast float %3194, %3182
  %3196 = fmul fast float %3184, %143
  %3197 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3185, float %3196)  ; FMad(a,b,c)
  %3198 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3186, float %3197)  ; FMad(a,b,c)
  %3199 = fadd fast float %3198, %3187
  %3200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3201 = extractvalue %dx.types.CBufRet.f32 %3200, 0
  %3202 = extractvalue %dx.types.CBufRet.f32 %3200, 1
  %3203 = extractvalue %dx.types.CBufRet.f32 %3200, 3
  %3204 = fmul fast float %3203, %3191
  %3205 = fmul fast float %3203, %3195
  %3206 = fadd fast float %3204, %3201
  %3207 = fadd fast float %3205, %3202
  %3208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3209 = extractvalue %dx.types.CBufRet.f32 %3208, 0
  %3210 = extractvalue %dx.types.CBufRet.f32 %3208, 1
  %3211 = extractvalue %dx.types.CBufRet.f32 %3208, 3
  %3212 = fmul fast float %3211, %3191
  %3213 = fmul fast float %3211, %3195
  %3214 = fadd fast float %3212, %3209
  %3215 = fadd fast float %3213, %3210
  %3216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3217 = extractvalue %dx.types.CBufRet.f32 %3216, 1
  %3218 = fsub fast float %3217, %3199
  %3219 = extractvalue %dx.types.CBufRet.f32 %3216, 2
  %3220 = fmul fast float %3218, %3219
  %3221 = fsub fast float 1.000000e+00, %3220
  %3222 = call float @dx.op.unary.f32(i32 7, float %3221)  ; Saturate(value)
  %3223 = extractvalue %dx.types.CBufRet.f32 %3208, 2
  %3224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3225 = extractvalue %dx.types.CBufRet.f32 %3224, 2
  %3226 = fadd fast float %3225, %3223
  %3227 = fcmp fast ogt float %3226, 0.000000e+00
  br i1 %3227, label %3228, label %3253

; <label>:3228                                    ; preds = %3172
  %3229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3230 = extractvalue %dx.types.CBufRet.f32 %3229, 0
  %3231 = extractvalue %dx.types.CBufRet.f32 %3229, 1
  %3232 = fsub fast float %3214, %3230
  %3233 = fsub fast float %3215, %3231
  %3234 = fcmp fast olt float %3232, 0.000000e+00
  %3235 = fcmp fast olt float %3233, 0.000000e+00
  %3236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3237 = extractvalue %dx.types.CBufRet.f32 %3236, 0
  %3238 = extractvalue %dx.types.CBufRet.f32 %3236, 1
  %3239 = extractvalue %dx.types.CBufRet.f32 %3236, 2
  %3240 = extractvalue %dx.types.CBufRet.f32 %3236, 3
  %3241 = select i1 %3234, float %3237, float %3239
  %3242 = select i1 %3235, float %3238, float %3240
  %3243 = fmul fast float %3241, %3232
  %3244 = fmul fast float %3242, %3233
  %3245 = call float @dx.op.unary.f32(i32 6, float %3243)  ; FAbs(value)
  %3246 = call float @dx.op.unary.f32(i32 6, float %3244)  ; FAbs(value)
  %3247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3248 = extractvalue %dx.types.CBufRet.f32 %3247, 0
  %3249 = call float @dx.op.binary.f32(i32 35, float %3245, float %3246)  ; FMax(a,b)
  %3250 = fsub fast float %3248, %3249
  %3251 = call float @dx.op.unary.f32(i32 7, float %3250)  ; Saturate(value)
  %3252 = fmul fast float %3251, %3222
  br label %3253

; <label>:3253                                    ; preds = %3228, %3172
  %3254 = phi float [ %3252, %3228 ], [ 0.000000e+00, %3172 ]
  %3255 = extractvalue %dx.types.CBufRet.f32 %3200, 2
  %3256 = extractvalue %dx.types.CBufRet.f32 %3224, 1
  %3257 = fadd fast float %3256, %3255
  %3258 = fcmp fast ogt float %3257, 0.000000e+00
  br i1 %3258, label %3259, label %3284

; <label>:3259                                    ; preds = %3253
  %3260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3261 = extractvalue %dx.types.CBufRet.f32 %3260, 0
  %3262 = extractvalue %dx.types.CBufRet.f32 %3260, 1
  %3263 = fsub fast float %3206, %3261
  %3264 = fsub fast float %3207, %3262
  %3265 = fcmp fast olt float %3263, 0.000000e+00
  %3266 = fcmp fast olt float %3264, 0.000000e+00
  %3267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3268 = extractvalue %dx.types.CBufRet.f32 %3267, 0
  %3269 = extractvalue %dx.types.CBufRet.f32 %3267, 1
  %3270 = extractvalue %dx.types.CBufRet.f32 %3267, 2
  %3271 = extractvalue %dx.types.CBufRet.f32 %3267, 3
  %3272 = select i1 %3265, float %3268, float %3270
  %3273 = select i1 %3266, float %3269, float %3271
  %3274 = fmul fast float %3272, %3263
  %3275 = fmul fast float %3273, %3264
  %3276 = call float @dx.op.unary.f32(i32 6, float %3274)  ; FAbs(value)
  %3277 = call float @dx.op.unary.f32(i32 6, float %3275)  ; FAbs(value)
  %3278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3279 = extractvalue %dx.types.CBufRet.f32 %3278, 0
  %3280 = call float @dx.op.binary.f32(i32 35, float %3276, float %3277)  ; FMax(a,b)
  %3281 = fsub fast float %3279, %3280
  %3282 = call float @dx.op.unary.f32(i32 7, float %3281)  ; Saturate(value)
  %3283 = fmul fast float %3282, %3222
  br label %3284

; <label>:3284                                    ; preds = %3259, %3253
  %3285 = phi float [ %3283, %3259 ], [ 0.000000e+00, %3253 ]
  %3286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3287 = extractvalue %dx.types.CBufRet.f32 %3286, 1
  %3288 = call float @dx.op.unary.f32(i32 7, float %3287)  ; Saturate(value)
  %3289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3290 = extractvalue %dx.types.CBufRet.f32 %3289, 0
  %3291 = extractvalue %dx.types.CBufRet.f32 %3289, 1
  %3292 = fsub fast float %3191, %3290
  %3293 = fsub fast float %3195, %3291
  %3294 = fcmp fast olt float %3292, 0.000000e+00
  %3295 = fcmp fast olt float %3293, 0.000000e+00
  %3296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3297 = extractvalue %dx.types.CBufRet.f32 %3296, 0
  %3298 = extractvalue %dx.types.CBufRet.f32 %3296, 1
  %3299 = extractvalue %dx.types.CBufRet.f32 %3296, 2
  %3300 = extractvalue %dx.types.CBufRet.f32 %3296, 3
  %3301 = select i1 %3294, float %3297, float %3299
  %3302 = select i1 %3295, float %3298, float %3300
  %3303 = fmul fast float %3301, %3292
  %3304 = fmul fast float %3302, %3293
  %3305 = call float @dx.op.unary.f32(i32 6, float %3303)  ; FAbs(value)
  %3306 = call float @dx.op.unary.f32(i32 6, float %3304)  ; FAbs(value)
  %3307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3308 = extractvalue %dx.types.CBufRet.f32 %3307, 0
  %3309 = call float @dx.op.binary.f32(i32 35, float %3305, float %3306)  ; FMax(a,b)
  %3310 = fsub fast float %3308, %3309
  %3311 = call float @dx.op.unary.f32(i32 7, float %3310)  ; Saturate(value)
  %3312 = call float @dx.op.binary.f32(i32 36, float %3311, float %3288)  ; FMin(a,b)
  %3313 = fmul fast float %3312, %3222
  %3314 = fsub fast float %3285, %3313
  %3315 = fsub fast float %3254, %3285
  %3316 = fsub fast float %3315, %3313
  %3317 = call float @dx.op.binary.f32(i32 35, float %3285, float %3254)  ; FMax(a,b)
  %3318 = call float @dx.op.binary.f32(i32 35, float %3313, float %3317)  ; FMax(a,b)
  %3319 = fcmp fast olt float %3318, 1.000000e+00
  br i1 %3319, label %3320, label %3991, !dx.controlflow.hints !115

; <label>:3320                                    ; preds = %3284
  %3321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3322 = extractvalue %dx.types.CBufRet.f32 %3321, 0
  %3323 = fcmp fast une float %3322, 0.000000e+00
  br i1 %3323, label %3324, label %3991, !dx.controlflow.hints !116

; <label>:3324                                    ; preds = %3320
  %3325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3326 = extractvalue %dx.types.CBufRet.f32 %3325, 0
  %3327 = extractvalue %dx.types.CBufRet.f32 %3325, 1
  %3328 = extractvalue %dx.types.CBufRet.f32 %3325, 2
  %3329 = extractvalue %dx.types.CBufRet.f32 %3325, 3
  %3330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3331 = extractvalue %dx.types.CBufRet.f32 %3330, 0
  %3332 = extractvalue %dx.types.CBufRet.f32 %3330, 1
  %3333 = extractvalue %dx.types.CBufRet.f32 %3330, 2
  %3334 = extractvalue %dx.types.CBufRet.f32 %3330, 3
  %3335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3336 = extractvalue %dx.types.CBufRet.f32 %3335, 0
  %3337 = extractvalue %dx.types.CBufRet.f32 %3335, 1
  %3338 = extractvalue %dx.types.CBufRet.f32 %3335, 2
  %3339 = extractvalue %dx.types.CBufRet.f32 %3335, 3
  %3340 = fmul fast float %3326, %143
  %3341 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3327, float %3340)  ; FMad(a,b,c)
  %3342 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3328, float %3341)  ; FMad(a,b,c)
  %3343 = fadd fast float %3342, %3329
  %3344 = fmul fast float %3331, %143
  %3345 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3332, float %3344)  ; FMad(a,b,c)
  %3346 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3333, float %3345)  ; FMad(a,b,c)
  %3347 = fadd fast float %3346, %3334
  %3348 = fmul fast float %3336, %143
  %3349 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3337, float %3348)  ; FMad(a,b,c)
  %3350 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3338, float %3349)  ; FMad(a,b,c)
  %3351 = fadd fast float %3350, %3339
  %3352 = fcmp fast oge float %3343, 1.000000e+00
  %3353 = fcmp fast oge float %3347, 1.000000e+00
  %3354 = or i1 %3352, %3353
  %3355 = fcmp fast olt float %3343, 0.000000e+00
  %3356 = fcmp fast olt float %3347, 0.000000e+00
  %3357 = or i1 %3355, %3356
  %3358 = or i1 %3354, %3357
  br i1 %3358, label %3991, label %3359, !dx.controlflow.hints !117

; <label>:3359                                    ; preds = %3324
  %3360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3361 = extractvalue %dx.types.CBufRet.f32 %3360, 0
  %3362 = extractvalue %dx.types.CBufRet.f32 %3360, 1
  %3363 = extractvalue %dx.types.CBufRet.f32 %3360, 2
  %3364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3365 = extractvalue %dx.types.CBufRet.f32 %3364, 1
  %3366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3367 = extractvalue %dx.types.CBufRet.i32 %3366, 2
  %3368 = uitofp i32 %3367 to float
  %3369 = extractvalue %dx.types.CBufRet.i32 %3366, 3
  %3370 = uitofp i32 %3369 to float
  %3371 = extractvalue %dx.types.CBufRet.f32 %3360, 3
  %3372 = fmul fast float %3371, 2.000000e+00
  %3373 = fsub fast float %3343, %3361
  %3374 = fsub fast float %3347, %3362
  %3375 = fmul fast float %3372, %3373
  %3376 = fmul fast float %3372, %3374
  %3377 = fdiv fast float 1.000000e+00, %3159
  %3378 = fmul fast float %3376, %3377
  %3379 = call float @dx.op.unary.f32(i32 6, float %3378)  ; FAbs(value)
  %3380 = fmul fast float %3363, %145
  %3381 = fmul fast float %3380, %3372
  %3382 = call float @dx.op.unary.f32(i32 6, float %3381)  ; FAbs(value)
  %3383 = call float @dx.op.unary.f32(i32 6, float %3375)  ; FAbs(value)
  %3384 = call float @dx.op.binary.f32(i32 35, float %3382, float %3379)  ; FMax(a,b)
  %3385 = call float @dx.op.binary.f32(i32 35, float %3383, float %3384)  ; FMax(a,b)
  %3386 = fmul fast float %3385, 2.000000e+00
  %3387 = call float @dx.op.unary.f32(i32 23, float %3386)  ; Log(value)
  %3388 = call float @dx.op.binary.f32(i32 35, float %3387, float %3368)  ; FMax(a,b)
  %3389 = call float @dx.op.unary.f32(i32 22, float %3388)  ; Frc(value)
  %3390 = fadd fast float %3389, 0xBFEA666660000000
  %3391 = fmul fast float %3390, 8.000000e+00
  %3392 = call float @dx.op.unary.f32(i32 7, float %3391)  ; Saturate(value)
  %3393 = call float @dx.op.unary.f32(i32 27, float %3388)  ; Round_ni(value)
  %3394 = fadd fast float %3393, %3392
  %3395 = call float @dx.op.binary.f32(i32 36, float %3394, float %3370)  ; FMin(a,b)
  %3396 = call float @dx.op.unary.f32(i32 27, float %3395)  ; Round_ni(value)
  %3397 = fsub fast float -0.000000e+00, %3396
  %3398 = call float @dx.op.unary.f32(i32 21, float %3397)  ; Exp(value)
  %3399 = fmul fast float %3398, %3372
  %3400 = fmul fast float %3399, %3343
  %3401 = fmul fast float %3399, %3347
  %3402 = fmul fast float %3400, 5.000000e-01
  %3403 = fmul fast float %3401, 5.000000e-01
  %3404 = fadd fast float %3402, 5.000000e-01
  %3405 = fadd fast float %3403, 5.000000e-01
  %3406 = fmul fast float %3400, 2.500000e-01
  %3407 = fmul fast float %3401, 2.500000e-01
  %3408 = fadd fast float %3406, 5.000000e-01
  %3409 = fadd fast float %3407, 5.000000e-01
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = and i32 %3411, 536870911
  %3413 = lshr i32 %3412, 9
  %3414 = uitofp i32 %3413 to float
  %3415 = fmul fast float %3414, %3343
  %3416 = fmul fast float %3414, %3347
  %3417 = call float @dx.op.unary.f32(i32 22, float %3415)  ; Frc(value)
  %3418 = call float @dx.op.unary.f32(i32 22, float %3416)  ; Frc(value)
  %3419 = call float @dx.op.unary.f32(i32 22, float %3392)  ; Frc(value)
  %3420 = fcmp fast une float %3419, 0.000000e+00
  br i1 %3420, label %3421, label %3519, !dx.controlflow.hints !118

; <label>:3421                                    ; preds = %3359
  %3422 = call float @dx.op.unary.f32(i32 21, float %3393)  ; Exp(value)
  %3423 = fmul fast float %3422, 1.953125e-03
  %3424 = fcmp fast olt float %3417, %3423
  %3425 = fcmp fast olt float %3418, %3423
  %3426 = or i1 %3424, %3425
  %3427 = fsub fast float 1.000000e+00, %3423
  %3428 = fcmp fast ogt float %3417, %3427
  %3429 = fcmp fast ogt float %3418, %3427
  %3430 = or i1 %3428, %3429
  %3431 = or i1 %3426, %3430
  br i1 %3431, label %3432, label %3598, !dx.controlflow.hints !119

; <label>:3432                                    ; preds = %3421
  %3433 = fmul fast float %3365, 5.000000e-01
  %3434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3435 = extractvalue %dx.types.CBufRet.i32 %3434, 0
  %3436 = fmul fast float %3347, 3.530000e+02
  %3437 = uitofp i32 %3412 to float
  %3438 = fmul fast float %3436, %3437
  %3439 = fmul fast float %3343, 6.130000e+02
  %3440 = fadd fast float %3438, %3439
  %3441 = fptoui float %3440 to i32
  %3442 = add i32 %3435, %3441
  %3443 = mul i32 %3442, -63
  %3444 = lshr i32 %3443, 17
  %3445 = xor i32 %3444, %3443
  %3446 = mul i32 %3445, -511
  %3447 = mul i32 %3445, -8176
  %3448 = xor i32 %3446, %3447
  %3449 = mul i32 %3448, -7
  %3450 = mul i32 %3448, -7168
  %3451 = xor i32 %3449, %3450
  %3452 = lshr i32 %3451, 15
  %3453 = xor i32 %3452, %3449
  %3454 = and i32 %3453, 15
  %3455 = mul i32 %3454, 2
  %3456 = add i32 0, %3455
  %3457 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3456
  %3458 = load float, float* %3457, align 4
  %3459 = mul i32 %3454, 2
  %3460 = add i32 1, %3459
  %3461 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3460
  %3462 = load float, float* %3461, align 4
  %3463 = fmul fast float %3347, 2.770000e+02
  %3464 = fmul fast float %3463, %3437
  %3465 = fmul fast float %3343, 5.990000e+02
  %3466 = fadd fast float %3464, %3465
  %3467 = fptoui float %3466 to i32
  %3468 = mul i32 %3467, -63
  %3469 = lshr i32 %3468, 17
  %3470 = xor i32 %3469, %3468
  %3471 = mul i32 %3470, -511
  %3472 = mul i32 %3470, -8176
  %3473 = xor i32 %3471, %3472
  %3474 = mul i32 %3473, -7
  %3475 = mul i32 %3473, -7168
  %3476 = xor i32 %3474, %3475
  %3477 = lshr i32 %3476, 15
  %3478 = xor i32 %3477, %3474
  %3479 = and i32 %3478, 63
  %3480 = mul i32 %3479, 2
  %3481 = add i32 0, %3480
  %3482 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3481
  %3483 = load float, float* %3482, align 4
  %3484 = mul i32 %3479, 2
  %3485 = add i32 1, %3484
  %3486 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3485
  %3487 = load float, float* %3486, align 4
  %3488 = call float @dx.op.dot2.f32(i32 54, float %3458, float %3462, float %3483, float %3487)  ; Dot2(ax,ay,bx,by)
  %3489 = fsub fast float -0.000000e+00, %3483
  %3490 = call float @dx.op.dot2.f32(i32 54, float %3458, float %3462, float %3489, float %3487)  ; Dot2(ax,ay,bx,by)
  %3491 = fmul fast float %3488, %3433
  %3492 = fmul fast float %3490, %3433
  %3493 = fdiv fast float 2.000000e+00, %3399
  %3494 = fmul fast float %3422, 9.765625e-04
  %3495 = fcmp fast olt float %3417, %3494
  %3496 = fcmp fast olt float %3418, %3494
  %3497 = or i1 %3495, %3496
  %3498 = fsub fast float 1.000000e+00, %3494
  %3499 = fcmp fast ogt float %3417, %3498
  %3500 = fcmp fast ogt float %3418, %3498
  %3501 = or i1 %3499, %3500
  %3502 = or i1 %3497, %3501
  %3503 = fmul fast float %3491, 2.000000e+00
  br i1 %3502, label %3504, label %3508

; <label>:3504                                    ; preds = %3432
  %3505 = fmul fast float %3492, 2.000000e+00
  %3506 = fadd fast float %3503, %3404
  %3507 = fadd fast float %3505, %3405
  br label %3508

; <label>:3508                                    ; preds = %3504, %3432
  %3509 = phi float [ %3506, %3504 ], [ %3404, %3432 ]
  %3510 = phi float [ %3507, %3504 ], [ %3405, %3432 ]
  %3511 = phi i32 [ 3, %3504 ], [ 2, %3432 ]
  %3512 = fadd fast float %3491, %3408
  %3513 = fadd fast float %3492, %3409
  %3514 = fmul fast float %3503, %3493
  %3515 = fmul fast float %3493, 2.000000e+00
  %3516 = fmul fast float %3515, %3492
  %3517 = fadd fast float %3514, %3343
  %3518 = fadd fast float %3516, %3347
  br label %3598

; <label>:3519                                    ; preds = %3359
  %3520 = call float @dx.op.unary.f32(i32 21, float %3396)  ; Exp(value)
  %3521 = fmul fast float %3520, 9.765625e-04
  %3522 = fcmp fast olt float %3417, %3521
  %3523 = fcmp fast olt float %3418, %3521
  %3524 = or i1 %3522, %3523
  %3525 = fsub fast float 1.000000e+00, %3521
  %3526 = fcmp fast ogt float %3417, %3525
  %3527 = fcmp fast ogt float %3418, %3525
  %3528 = or i1 %3526, %3527
  %3529 = or i1 %3524, %3528
  br i1 %3529, label %3530, label %3598, !dx.controlflow.hints !120

; <label>:3530                                    ; preds = %3519
  %3531 = fmul fast float %3365, 5.000000e-01
  %3532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3533 = extractvalue %dx.types.CBufRet.i32 %3532, 0
  %3534 = fmul fast float %3347, 3.530000e+02
  %3535 = uitofp i32 %3412 to float
  %3536 = fmul fast float %3534, %3535
  %3537 = fmul fast float %3343, 6.130000e+02
  %3538 = fadd fast float %3536, %3537
  %3539 = fptoui float %3538 to i32
  %3540 = add i32 %3533, %3539
  %3541 = mul i32 %3540, -63
  %3542 = lshr i32 %3541, 17
  %3543 = xor i32 %3542, %3541
  %3544 = mul i32 %3543, -511
  %3545 = mul i32 %3543, -8176
  %3546 = xor i32 %3544, %3545
  %3547 = mul i32 %3546, -7
  %3548 = mul i32 %3546, -7168
  %3549 = xor i32 %3547, %3548
  %3550 = lshr i32 %3549, 15
  %3551 = xor i32 %3550, %3547
  %3552 = and i32 %3551, 15
  %3553 = mul i32 %3552, 2
  %3554 = add i32 0, %3553
  %3555 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3554
  %3556 = load float, float* %3555, align 4
  %3557 = mul i32 %3552, 2
  %3558 = add i32 1, %3557
  %3559 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3558
  %3560 = load float, float* %3559, align 4
  %3561 = fmul fast float %3347, 2.770000e+02
  %3562 = fmul fast float %3561, %3535
  %3563 = fmul fast float %3343, 5.990000e+02
  %3564 = fadd fast float %3562, %3563
  %3565 = fptoui float %3564 to i32
  %3566 = mul i32 %3565, -63
  %3567 = lshr i32 %3566, 17
  %3568 = xor i32 %3567, %3566
  %3569 = mul i32 %3568, -511
  %3570 = mul i32 %3568, -8176
  %3571 = xor i32 %3569, %3570
  %3572 = mul i32 %3571, -7
  %3573 = mul i32 %3571, -7168
  %3574 = xor i32 %3572, %3573
  %3575 = lshr i32 %3574, 15
  %3576 = xor i32 %3575, %3572
  %3577 = and i32 %3576, 63
  %3578 = mul i32 %3577, 2
  %3579 = add i32 0, %3578
  %3580 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3579
  %3581 = load float, float* %3580, align 4
  %3582 = mul i32 %3577, 2
  %3583 = add i32 1, %3582
  %3584 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3583
  %3585 = load float, float* %3584, align 4
  %3586 = call float @dx.op.dot2.f32(i32 54, float %3556, float %3560, float %3581, float %3585)  ; Dot2(ax,ay,bx,by)
  %3587 = fsub fast float -0.000000e+00, %3581
  %3588 = call float @dx.op.dot2.f32(i32 54, float %3556, float %3560, float %3587, float %3585)  ; Dot2(ax,ay,bx,by)
  %3589 = fmul fast float %3586, %3531
  %3590 = fmul fast float %3588, %3531
  %3591 = fadd fast float %3589, %3404
  %3592 = fadd fast float %3590, %3405
  %3593 = fdiv fast float 2.000000e+00, %3399
  %3594 = fmul fast float %3593, %3589
  %3595 = fmul fast float %3590, %3593
  %3596 = fadd fast float %3594, %3343
  %3597 = fadd fast float %3595, %3347
  br label %3598

; <label>:3598                                    ; preds = %3530, %3519, %3508, %3421
  %3599 = phi float [ %3512, %3508 ], [ %3408, %3421 ], [ %3408, %3530 ], [ %3408, %3519 ]
  %3600 = phi float [ %3513, %3508 ], [ %3409, %3421 ], [ %3409, %3530 ], [ %3409, %3519 ]
  %3601 = phi float [ %3509, %3508 ], [ %3404, %3421 ], [ %3591, %3530 ], [ %3404, %3519 ]
  %3602 = phi float [ %3510, %3508 ], [ %3405, %3421 ], [ %3592, %3530 ], [ %3405, %3519 ]
  %3603 = phi i32 [ %3511, %3508 ], [ 0, %3421 ], [ 1, %3530 ], [ 0, %3519 ]
  %3604 = phi float [ %3517, %3508 ], [ %3343, %3421 ], [ %3596, %3530 ], [ %3343, %3519 ]
  %3605 = phi float [ %3518, %3508 ], [ %3347, %3421 ], [ %3597, %3530 ], [ %3347, %3519 ]
  %3606 = fsub fast float %3370, %3368
  %3607 = fptoui float %3606 to i32
  %3608 = add i32 %3607, 320
  %3609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %3608)  ; CBufferLoadLegacy(handle,regIndex)
  %3610 = extractvalue %dx.types.CBufRet.f32 %3609, 0
  %3611 = extractvalue %dx.types.CBufRet.f32 %3609, 1
  %3612 = fcmp fast une float %3395, %3370
  %3613 = fsub fast float %3604, %3610
  %3614 = fsub fast float %3605, %3611
  %3615 = call float @dx.op.unary.f32(i32 6, float %3613)  ; FAbs(value)
  %3616 = call float @dx.op.unary.f32(i32 6, float %3614)  ; FAbs(value)
  %3617 = fmul fast float %3615, %3399
  %3618 = fmul fast float %3616, %3399
  %3619 = fcmp fast olt float %3617, 1.000000e+00
  %3620 = fcmp fast olt float %3618, 1.000000e+00
  %3621 = and i1 %3619, %3620
  %3622 = or i1 %3612, %3621
  br i1 %3622, label %3623, label %3991, !dx.controlflow.hints !121

; <label>:3623                                    ; preds = %3598
  %3624 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3625 = extractvalue %dx.types.CBufRet.i32 %3624, 2
  %3626 = sitofp i32 %3625 to float
  %3627 = fsub fast float %3395, %3626
  %3628 = call float @dx.op.unary.f32(i32 27, float %3627)  ; Round_ni(value)
  %3629 = call float @dx.op.unary.f32(i32 22, float %3395)  ; Frc(value)
  %3630 = icmp eq i32 %3603, 0
  %3631 = call float @dx.op.unary.f32(i32 22, float %3601)  ; Frc(value)
  %3632 = call float @dx.op.unary.f32(i32 22, float %3602)  ; Frc(value)
  br i1 %3630, label %3703, label %3633, !dx.controlflow.hints !122

; <label>:3633                                    ; preds = %3623
  %3634 = and i32 %3603, 1
  %3635 = icmp eq i32 %3634, 0
  br i1 %3635, label %3649, label %3636, !dx.controlflow.hints !123

; <label>:3636                                    ; preds = %3633
  %3637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3638 = extractvalue %dx.types.CBufRet.f32 %3637, 0
  %3639 = fmul fast float %3631, %3638
  %3640 = fmul fast float %3632, %3638
  %3641 = fptoui float %3639 to i32
  %3642 = fptoui float %3640 to i32
  %3643 = fptoui float %3628 to i32
  %3644 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %3641, i32 %3642, i32 %3643, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3645 = extractvalue %dx.types.ResRet.f32 %3644, 0
  %3646 = extractvalue %dx.types.ResRet.f32 %3644, 1
  %3647 = extractvalue %dx.types.ResRet.f32 %3644, 2
  %3648 = extractvalue %dx.types.ResRet.f32 %3644, 3
  br label %3655

; <label>:3649                                    ; preds = %3633
  %3650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %57, float %3631, float %3632, float %3628, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3651 = extractvalue %dx.types.ResRet.f32 %3650, 0
  %3652 = extractvalue %dx.types.ResRet.f32 %3650, 1
  %3653 = extractvalue %dx.types.ResRet.f32 %3650, 2
  %3654 = extractvalue %dx.types.ResRet.f32 %3650, 3
  br label %3655

; <label>:3655                                    ; preds = %3649, %3636
  %3656 = phi float [ %3645, %3636 ], [ %3651, %3649 ]
  %3657 = phi float [ %3646, %3636 ], [ %3652, %3649 ]
  %3658 = phi float [ %3647, %3636 ], [ %3653, %3649 ]
  %3659 = phi float [ %3648, %3636 ], [ %3654, %3649 ]
  %3660 = fcmp fast ogt float %3629, 0.000000e+00
  br i1 %3660, label %3661, label %3731

; <label>:3661                                    ; preds = %3655
  %3662 = and i32 %3603, 2
  %3663 = icmp eq i32 %3662, 0
  %3664 = fadd fast float %3628, 1.000000e+00
  %3665 = call float @dx.op.unary.f32(i32 22, float %3599)  ; Frc(value)
  %3666 = call float @dx.op.unary.f32(i32 22, float %3600)  ; Frc(value)
  br i1 %3663, label %3680, label %3667, !dx.controlflow.hints !124

; <label>:3667                                    ; preds = %3661
  %3668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3669 = extractvalue %dx.types.CBufRet.f32 %3668, 0
  %3670 = fmul fast float %3665, %3669
  %3671 = fmul fast float %3666, %3669
  %3672 = fptoui float %3670 to i32
  %3673 = fptoui float %3671 to i32
  %3674 = fptoui float %3664 to i32
  %3675 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %3672, i32 %3673, i32 %3674, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3676 = extractvalue %dx.types.ResRet.f32 %3675, 0
  %3677 = extractvalue %dx.types.ResRet.f32 %3675, 1
  %3678 = extractvalue %dx.types.ResRet.f32 %3675, 2
  %3679 = extractvalue %dx.types.ResRet.f32 %3675, 3
  br label %3686

; <label>:3680                                    ; preds = %3661
  %3681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %57, float %3665, float %3666, float %3664, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3682 = extractvalue %dx.types.ResRet.f32 %3681, 0
  %3683 = extractvalue %dx.types.ResRet.f32 %3681, 1
  %3684 = extractvalue %dx.types.ResRet.f32 %3681, 2
  %3685 = extractvalue %dx.types.ResRet.f32 %3681, 3
  br label %3686

; <label>:3686                                    ; preds = %3680, %3667
  %3687 = phi float [ %3676, %3667 ], [ %3682, %3680 ]
  %3688 = phi float [ %3677, %3667 ], [ %3683, %3680 ]
  %3689 = phi float [ %3678, %3667 ], [ %3684, %3680 ]
  %3690 = phi float [ %3679, %3667 ], [ %3685, %3680 ]
  %3691 = fsub fast float %3687, %3656
  %3692 = fsub fast float %3688, %3657
  %3693 = fsub fast float %3689, %3658
  %3694 = fsub fast float %3690, %3659
  %3695 = fmul fast float %3691, %3629
  %3696 = fmul fast float %3692, %3629
  %3697 = fmul fast float %3693, %3629
  %3698 = fmul fast float %3694, %3629
  %3699 = fadd fast float %3695, %3656
  %3700 = fadd fast float %3696, %3657
  %3701 = fadd fast float %3697, %3658
  %3702 = fadd fast float %3698, %3659
  br label %3731

; <label>:3703                                    ; preds = %3623
  %3704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %57, float %3631, float %3632, float %3628, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3705 = extractvalue %dx.types.ResRet.f32 %3704, 0
  %3706 = extractvalue %dx.types.ResRet.f32 %3704, 1
  %3707 = extractvalue %dx.types.ResRet.f32 %3704, 2
  %3708 = extractvalue %dx.types.ResRet.f32 %3704, 3
  %3709 = fcmp fast ogt float %3629, 0.000000e+00
  br i1 %3709, label %3710, label %3731, !dx.controlflow.hints !125

; <label>:3710                                    ; preds = %3703
  %3711 = fadd fast float %3628, 1.000000e+00
  %3712 = call float @dx.op.unary.f32(i32 22, float %3599)  ; Frc(value)
  %3713 = call float @dx.op.unary.f32(i32 22, float %3600)  ; Frc(value)
  %3714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %57, float %3712, float %3713, float %3711, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3715 = extractvalue %dx.types.ResRet.f32 %3714, 0
  %3716 = extractvalue %dx.types.ResRet.f32 %3714, 1
  %3717 = extractvalue %dx.types.ResRet.f32 %3714, 2
  %3718 = extractvalue %dx.types.ResRet.f32 %3714, 3
  %3719 = fsub fast float %3715, %3705
  %3720 = fsub fast float %3716, %3706
  %3721 = fsub fast float %3717, %3707
  %3722 = fsub fast float %3718, %3708
  %3723 = fmul fast float %3719, %3629
  %3724 = fmul fast float %3720, %3629
  %3725 = fmul fast float %3721, %3629
  %3726 = fmul fast float %3722, %3629
  %3727 = fadd fast float %3723, %3705
  %3728 = fadd fast float %3724, %3706
  %3729 = fadd fast float %3725, %3707
  %3730 = fadd fast float %3726, %3708
  br label %3731

; <label>:3731                                    ; preds = %3710, %3703, %3686, %3655
  %3732 = phi float [ %3699, %3686 ], [ %3656, %3655 ], [ %3727, %3710 ], [ %3705, %3703 ]
  %3733 = phi float [ %3700, %3686 ], [ %3657, %3655 ], [ %3728, %3710 ], [ %3706, %3703 ]
  %3734 = phi float [ %3701, %3686 ], [ %3658, %3655 ], [ %3729, %3710 ], [ %3707, %3703 ]
  %3735 = phi float [ %3702, %3686 ], [ %3659, %3655 ], [ %3730, %3710 ], [ %3708, %3703 ]
  %3736 = fadd fast float %3732, -5.000000e-01
  %3737 = fadd fast float %3734, -5.000000e-01
  %3738 = fmul fast float %3736, 0xBFD5555560000000
  %3739 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3737, float %3738)  ; FMad(a,b,c)
  %3740 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3733, float 0.000000e+00)  ; FMad(a,b,c)
  %3741 = fadd fast float %3740, %3735
  %3742 = fmul fast float %3736, -7.500000e-01
  %3743 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3737, float %3742)  ; FMad(a,b,c)
  %3744 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3733, float 0.000000e+00)  ; FMad(a,b,c)
  %3745 = fadd fast float %3744, %3735
  %3746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3747 = extractvalue %dx.types.CBufRet.f32 %3746, 0
  %3748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3749 = extractvalue %dx.types.CBufRet.f32 %3748, 0
  %3750 = extractvalue %dx.types.CBufRet.f32 %3748, 1
  %3751 = extractvalue %dx.types.CBufRet.f32 %3748, 2
  %3752 = extractvalue %dx.types.CBufRet.f32 %3748, 3
  %3753 = fsub fast float %3749, %3739
  %3754 = fsub fast float %3750, %3741
  %3755 = fsub fast float %3751, %3743
  %3756 = fsub fast float %3752, %3745
  %3757 = fmul fast float %3753, %3747
  %3758 = fmul fast float %3754, %3747
  %3759 = fmul fast float %3755, %3747
  %3760 = fmul fast float %3756, %3747
  %3761 = fadd fast float %3757, %3739
  %3762 = fadd fast float %3758, %3741
  %3763 = fadd fast float %3759, %3743
  %3764 = fadd fast float %3760, %3745
  %3765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3766 = extractvalue %dx.types.ResRet.i32 %3765, 0
  %3767 = and i32 %3766, 536870911
  %3768 = uitofp i32 %3767 to float
  %3769 = fmul fast float %3768, %3604
  %3770 = fmul fast float %3768, %3605
  %3771 = fptoui float %3769 to i32
  %3772 = fptoui float %3770 to i32
  %3773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3774 = extractvalue %dx.types.ResRet.i32 %3773, 0
  %3775 = and i32 %3774, 31
  %3776 = lshr i32 %3771, %3775
  %3777 = lshr i32 %3772, %3775
  %3778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3779 = extractvalue %dx.types.ResRet.i32 %3778, 0
  %3780 = and i32 %3779, 31
  %3781 = shl i32 1, %3780
  %3782 = call i32 @dx.op.binary.i32(i32 40, i32 %3781, i32 4)  ; UMin(a,b)
  %3783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3784 = extractvalue %dx.types.ResRet.i32 %3783, 0
  %3785 = extractvalue %dx.types.ResRet.i32 %3783, 1
  %3786 = icmp eq i32 %3782, 0
  br i1 %3786, label %3828, label %3787

; <label>:3787                                    ; preds = %3731
  br label %3788

; <label>:3788                                    ; preds = %3816, %3787
  %3789 = phi i32 [ %3819, %3816 ], [ 0, %3787 ]
  %3790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3791 = extractvalue %dx.types.ResRet.i32 %3790, 0
  %3792 = lshr i32 %3791, 16
  %3793 = and i32 %3792, 31
  %3794 = shl i32 %3777, %3793
  %3795 = add i32 %3794, %3776
  %3796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3797 = extractvalue %dx.types.ResRet.i32 %3796, 0
  %3798 = and i32 %3797, 31
  %3799 = shl i32 %3795, %3798
  %3800 = add i32 %3799, %3789
  %3801 = shl i32 %3800, 2
  %3802 = add i32 %3801, 32
  %3803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3804 = extractvalue %dx.types.ResRet.i32 %3803, 0
  %3805 = icmp slt i32 %3804, 0
  %3806 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %3789
  %3807 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %3789
  %3808 = bitcast float* %3806 to i32*
  %3809 = bitcast float* %3807 to i32*
  br i1 %3805, label %3810, label %3816

; <label>:3810                                    ; preds = %3788
  %3811 = and i32 %3804, 1073741823
  %3812 = add nuw nsw i32 %3811, 20
  %3813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3814 = extractvalue %dx.types.ResRet.i32 %3813, 0
  %3815 = extractvalue %dx.types.ResRet.i32 %3813, 1
  br label %3816

; <label>:3816                                    ; preds = %3810, %3788
  %3817 = phi i32 [ %3814, %3810 ], [ %3784, %3788 ]
  %3818 = phi i32 [ %3815, %3810 ], [ %3785, %3788 ]
  store i32 %3817, i32* %3808, align 4
  store i32 %3818, i32* %3809, align 4
  %3819 = add nuw i32 %3789, 1
  %3820 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3821 = extractvalue %dx.types.CBufRet.i32 %3820, 2
  %3822 = icmp eq i32 %3821, 0
  %3823 = icmp ugt i32 %3804, -1073741825
  %3824 = and i1 %3823, %3822
  %3825 = icmp ult i32 %3819, %3782
  %3826 = and i1 %3824, %3825
  br i1 %3826, label %3788, label %3827

; <label>:3827                                    ; preds = %3816
  br label %3828

; <label>:3828                                    ; preds = %3827, %3731
  %3829 = phi i32 [ 0, %3731 ], [ %3819, %3827 ]
  %3830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3831 = extractvalue %dx.types.CBufRet.f32 %3830, 2
  %3832 = fptoui float %3831 to i32
  %3833 = icmp eq i32 %3832, 0
  br i1 %3833, label %3885, label %3834

; <label>:3834                                    ; preds = %3828
  br label %3835

; <label>:3835                                    ; preds = %3880, %3834
  %3836 = phi i32 [ %3881, %3880 ], [ %3829, %3834 ]
  %3837 = phi i32 [ %3882, %3880 ], [ 0, %3834 ]
  %3838 = lshr i32 %3837, 2
  %3839 = and i32 %3837, 3
  %3840 = add nuw nsw i32 %3838, 83
  %3841 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 %3840)  ; CBufferLoadLegacy(handle,regIndex)
  %3842 = extractvalue %dx.types.CBufRet.i32 %3841, 0
  %3843 = extractvalue %dx.types.CBufRet.i32 %3841, 1
  %3844 = extractvalue %dx.types.CBufRet.i32 %3841, 2
  %3845 = extractvalue %dx.types.CBufRet.i32 %3841, 3
  %3846 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i32 0, i32 0
  store i32 %3842, i32* %3846, align 4
  %3847 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i32 0, i32 1
  store i32 %3843, i32* %3847, align 4
  %3848 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i32 0, i32 2
  store i32 %3844, i32* %3848, align 4
  %3849 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i32 0, i32 3
  store i32 %3845, i32* %3849, align 4
  %3850 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i32 0, i32 %3839
  %3851 = load i32, i32* %3850, align 4, !tbaa !126, !noalias !128
  %3852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.i32 %3852, 0
  %3854 = lshr i32 %3853, 16
  %3855 = and i32 %3854, 31
  %3856 = shl i32 %3777, %3855
  %3857 = add i32 %3856, %3776
  %3858 = shl i32 %3857, 2
  %3859 = add i32 %3858, %3851
  %3860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3859, i32 undef)  ; BufferLoad(srv,index,wot)
  %3861 = extractvalue %dx.types.ResRet.i32 %3860, 0
  %3862 = icmp eq i32 %3861, 0
  br i1 %3862, label %3880, label %3863

; <label>:3863                                    ; preds = %3835
  %3864 = icmp slt i32 %3861, 0
  %3865 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %3836
  %3866 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %3836
  %3867 = bitcast float* %3865 to i32*
  %3868 = bitcast float* %3866 to i32*
  br i1 %3864, label %3869, label %3876

; <label>:3869                                    ; preds = %3863
  %3870 = and i32 %3861, 1073741823
  %3871 = add i32 %3851, 20
  %3872 = add i32 %3871, %3870
  %3873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3872, i32 undef)  ; BufferLoad(srv,index,wot)
  %3874 = extractvalue %dx.types.ResRet.i32 %3873, 0
  %3875 = extractvalue %dx.types.ResRet.i32 %3873, 1
  br label %3876

; <label>:3876                                    ; preds = %3869, %3863
  %3877 = phi i32 [ %3874, %3869 ], [ %3784, %3863 ]
  %3878 = phi i32 [ %3875, %3869 ], [ %3785, %3863 ]
  store i32 %3877, i32* %3867, align 4
  store i32 %3878, i32* %3868, align 4
  %3879 = add i32 %3836, 1
  br label %3880

; <label>:3880                                    ; preds = %3876, %3835
  %3881 = phi i32 [ %3836, %3835 ], [ %3879, %3876 ]
  %3882 = add nuw i32 %3837, 1
  %3883 = icmp eq i32 %3882, %3832
  br i1 %3883, label %3884, label %3835

; <label>:3884                                    ; preds = %3880
  br label %3885

; <label>:3885                                    ; preds = %3884, %3828
  %3886 = phi i32 [ %3829, %3828 ], [ %3881, %3884 ]
  %3887 = icmp eq i32 %3886, 1
  %3888 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 0
  %3889 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 0
  br i1 %3887, label %3890, label %3893

; <label>:3890                                    ; preds = %3885
  %3891 = load float, float* %3888, align 4
  %3892 = load float, float* %3889, align 4
  br label %3920

; <label>:3893                                    ; preds = %3885
  %3894 = load float, float* %3888, align 4
  %3895 = load float, float* %3889, align 4
  %3896 = fdiv fast float 1.000000e+00, %3895
  %3897 = fsub fast float %3894, %3896
  %3898 = icmp ugt i32 %3886, 1
  br i1 %3898, label %3899, label %3915

; <label>:3899                                    ; preds = %3893
  br label %3900

; <label>:3900                                    ; preds = %3900, %3899
  %3901 = phi float [ %3910, %3900 ], [ %3897, %3899 ]
  %3902 = phi float [ %3911, %3900 ], [ %3894, %3899 ]
  %3903 = phi i32 [ %3912, %3900 ], [ 1, %3899 ]
  %3904 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %3903
  %3905 = load float, float* %3904, align 4
  %3906 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %3903
  %3907 = load float, float* %3906, align 4
  %3908 = fdiv fast float 1.000000e+00, %3907
  %3909 = fsub fast float %3905, %3908
  %3910 = call float @dx.op.binary.f32(i32 36, float %3901, float %3909)  ; FMin(a,b)
  %3911 = call float @dx.op.binary.f32(i32 35, float %3902, float %3905)  ; FMax(a,b)
  %3912 = add nuw i32 %3903, 1
  %3913 = icmp eq i32 %3912, %3886
  br i1 %3913, label %3914, label %3900

; <label>:3914                                    ; preds = %3900
  br label %3915

; <label>:3915                                    ; preds = %3914, %3893
  %3916 = phi float [ %3897, %3893 ], [ %3910, %3914 ]
  %3917 = phi float [ %3894, %3893 ], [ %3911, %3914 ]
  %3918 = fsub fast float %3917, %3916
  %3919 = fdiv fast float 1.000000e+00, %3918
  br label %3920

; <label>:3920                                    ; preds = %3915, %3890
  %3921 = phi float [ %3891, %3890 ], [ %3917, %3915 ]
  %3922 = phi float [ %3892, %3890 ], [ %3919, %3915 ]
  %3923 = fadd fast float %3351, %3921
  %3924 = fmul fast float %3923, %3922
  %3925 = call float @dx.op.unary.f32(i32 7, float %3924)  ; Saturate(value)
  %3926 = fmul fast float %3925, 2.000000e+00
  %3927 = fsub fast float 1.000000e+00, %3926
  %3928 = fmul fast float %3761, %3761
  %3929 = fsub fast float %3762, %3928
  %3930 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3929)  ; FMax(a,b)
  %3931 = fdiv fast float 1.000000e+00, %3930
  %3932 = fmul fast float %3762, %3761
  %3933 = fsub fast float %3763, %3932
  %3934 = fsub fast float %3927, %3761
  %3935 = fmul fast float %3927, %3927
  %3936 = fsub fast float %3935, %3762
  %3937 = fmul fast float %3931, %3933
  %3938 = fmul fast float %3937, %3934
  %3939 = fsub fast float %3936, %3938
  %3940 = fmul fast float %3762, %3762
  %3941 = fsub fast float %3764, %3940
  %3942 = fmul fast float %3933, %3933
  %3943 = fmul fast float %3942, %3931
  %3944 = fsub fast float %3941, %3943
  %3945 = fdiv fast float %3939, %3944
  %3946 = fmul fast float %3945, %3933
  %3947 = fsub fast float %3934, %3946
  %3948 = fmul fast float %3947, %3931
  %3949 = fmul fast float %3948, %3761
  %3950 = fsub fast float 1.000000e+00, %3949
  %3951 = fmul fast float %3945, %3762
  %3952 = fsub fast float %3950, %3951
  %3953 = fmul fast float %3948, %3948
  %3954 = fmul fast float %3945, 4.000000e+00
  %3955 = fmul fast float %3954, %3952
  %3956 = fsub fast float %3953, %3955
  %3957 = call float @dx.op.unary.f32(i32 24, float %3956)  ; Sqrt(value)
  %3958 = fcmp fast oge float %3948, 0.000000e+00
  %3959 = fsub fast float -0.000000e+00, %3957
  %3960 = select i1 %3958, float %3959, float %3957
  %3961 = fsub fast float %3960, %3948
  %3962 = fdiv fast float %3961, %3945
  %3963 = fdiv fast float %3952, %3961
  %3964 = fmul fast float %3962, 5.000000e-01
  %3965 = fmul fast float %3963, 2.000000e+00
  %3966 = select i1 %3958, float %3964, float %3965
  %3967 = select i1 %3958, float %3965, float %3964
  %3968 = call float @dx.op.binary.f32(i32 35, float %3966, float %3967)  ; FMax(a,b)
  %3969 = call float @dx.op.binary.f32(i32 36, float %3966, float %3967)  ; FMin(a,b)
  %3970 = fcmp fast ogt float %3927, %3968
  %3971 = fsub fast float %3927, %3969
  %3972 = fsub fast float %3927, %3968
  %3973 = fsub fast float %3968, %3969
  %3974 = select i1 %3970, float %3972, float %3973
  %3975 = fmul float %3971, %3974
  %3976 = select i1 %3970, float %3969, float %3927
  %3977 = fcmp fast ogt float %3927, %3969
  %3978 = fmul fast float %3976, %3968
  %3979 = fadd fast float %3976, %3968
  %3980 = fmul fast float %3979, %3761
  %3981 = fadd fast float %3978, %3762
  %3982 = fsub fast float %3981, %3980
  %3983 = fdiv fast float %3982, %3975
  %3984 = select i1 %3977, float %3983, float 0.000000e+00
  %3985 = fsub fast float 1.000000e+00, %3984
  %3986 = select i1 %3970, float %3985, float %3984
  %3987 = call float @dx.op.unary.f32(i32 7, float %3986)  ; Saturate(value)
  %3988 = extractvalue %dx.types.CBufRet.f32 %3746, 3
  %3989 = fmul fast float %3988, %3987
  %3990 = fsub fast float 1.000000e+00, %3989
  br label %3991

; <label>:3991                                    ; preds = %3920, %3598, %3324, %3320, %3284
  %3992 = phi float [ 1.000000e+00, %3284 ], [ %3990, %3920 ], [ 1.000000e+00, %3324 ], [ 1.000000e+00, %3598 ], [ 1.000000e+00, %3320 ]
  %3993 = fcmp fast ogt float %3316, 0.000000e+00
  br i1 %3993, label %3994, label %4158, !dx.controlflow.hints !137

; <label>:3994                                    ; preds = %3991
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 2
  %3997 = fadd fast float %3996, %3199
  %3998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.f32 %3998, 2
  %4000 = extractvalue %dx.types.CBufRet.f32 %3998, 3
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 2
  %4003 = call float @dx.op.binary.f32(i32 35, float %3997, float 0.000000e+00)  ; FMax(a,b)
  %4004 = fadd fast float %4003, 0x3F10000000000000
  %4005 = fcmp fast oeq float %4002, 0.000000e+00
  br i1 %4005, label %4006, label %4073

; <label>:4006                                    ; preds = %3994
  %4007 = extractvalue %dx.types.CBufRet.f32 %3998, 1
  %4008 = extractvalue %dx.types.CBufRet.f32 %3998, 0
  %4009 = fmul fast float %4008, %3214
  %4010 = fmul fast float %4007, %3215
  %4011 = fadd fast float %4009, 5.000000e-01
  %4012 = call float @dx.op.unary.f32(i32 27, float %4011)  ; Round_ni(value)
  %4013 = fadd fast float %4010, 5.000000e-01
  %4014 = call float @dx.op.unary.f32(i32 27, float %4013)  ; Round_ni(value)
  %4015 = fsub fast float %4011, %4012
  %4016 = fsub fast float %4013, %4014
  %4017 = fadd fast float %4012, -5.000000e-01
  %4018 = fadd fast float %4014, -5.000000e-01
  %4019 = fmul fast float %4015, 2.000000e+00
  %4020 = fsub fast float 3.000000e+00, %4019
  %4021 = fadd fast float %4019, 1.000000e+00
  %4022 = fsub fast float 2.000000e+00, %4015
  %4023 = bitcast float %4020 to i32
  %4024 = sub nsw i32 2129859010, %4023
  %4025 = bitcast i32 %4024 to float
  %4026 = fmul fast float %4025, %4022
  %4027 = fadd fast float %4026, -1.000000e+00
  %4028 = bitcast float %4021 to i32
  %4029 = sub nsw i32 2129859010, %4028
  %4030 = bitcast i32 %4029 to float
  %4031 = fmul fast float %4030, %4015
  %4032 = fadd fast float %4031, 1.000000e+00
  %4033 = fmul fast float %4016, 2.000000e+00
  %4034 = fsub fast float 3.000000e+00, %4033
  %4035 = fadd fast float %4033, 1.000000e+00
  %4036 = fsub fast float 2.000000e+00, %4016
  %4037 = bitcast float %4034 to i32
  %4038 = sub nsw i32 2129859010, %4037
  %4039 = bitcast i32 %4038 to float
  %4040 = fmul fast float %4039, %4036
  %4041 = fadd fast float %4040, -1.000000e+00
  %4042 = bitcast float %4035 to i32
  %4043 = sub nsw i32 2129859010, %4042
  %4044 = bitcast i32 %4043 to float
  %4045 = fmul fast float %4044, %4016
  %4046 = fadd fast float %4045, 1.000000e+00
  %4047 = fadd fast float %4027, %4017
  %4048 = fmul fast float %4047, %3999
  %4049 = fadd fast float %4041, %4018
  %4050 = fmul fast float %4049, %4000
  %4051 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %60, float %4048, float %4050, float undef, float undef, i32 0, i32 0, i32 undef, float %4004)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4052 = extractvalue %dx.types.ResRet.f32 %4051, 0
  %4053 = fmul fast float %4052, %4020
  %4054 = fadd fast float %4032, %4017
  %4055 = fmul fast float %4054, %3999
  %4056 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %60, float %4055, float %4050, float undef, float undef, i32 0, i32 0, i32 undef, float %4004)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4057 = extractvalue %dx.types.ResRet.f32 %4056, 0
  %4058 = fmul fast float %4057, %4021
  %4059 = fadd fast float %4046, %4018
  %4060 = fmul fast float %4059, %4000
  %4061 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %60, float %4048, float %4060, float undef, float undef, i32 0, i32 0, i32 undef, float %4004)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4062 = extractvalue %dx.types.ResRet.f32 %4061, 0
  %4063 = fmul fast float %4062, %4020
  %4064 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %60, float %4055, float %4060, float undef, float undef, i32 0, i32 0, i32 undef, float %4004)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4065 = extractvalue %dx.types.ResRet.f32 %4064, 0
  %4066 = fmul fast float %4065, %4021
  %4067 = fadd fast float %4066, %4063
  %4068 = fmul fast float %4067, %4035
  %4069 = fadd fast float %4058, %4053
  %4070 = fmul fast float %4069, %4034
  %4071 = fadd fast float %4070, %4068
  %4072 = fmul fast float %4071, 6.250000e-02
  br label %4158

; <label>:4073                                    ; preds = %3994
  %4074 = fmul fast float %893, 0x401921FB60000000
  %4075 = call float @dx.op.unary.f32(i32 13, float %4074)  ; Sin(value)
  %4076 = call float @dx.op.unary.f32(i32 12, float %4074)  ; Cos(value)
  %4077 = fsub fast float -0.000000e+00, %4075
  br label %4078

; <label>:4078                                    ; preds = %4127, %4073
  %4079 = phi float [ 0.000000e+00, %4073 ], [ %4122, %4127 ]
  %4080 = phi float [ 0.000000e+00, %4073 ], [ %4124, %4127 ]
  %4081 = phi i32 [ 0, %4073 ], [ %4128, %4127 ]
  %4082 = mul i32 %4081, 2
  %4083 = add i32 0, %4082
  %4084 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4083
  %4085 = load float, float* %4084, align 4
  %4086 = mul i32 %4081, 2
  %4087 = add i32 1, %4086
  %4088 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4087
  %4089 = load float, float* %4088, align 4
  %4090 = fmul fast float %4085, %4076
  %4091 = call float @dx.op.tertiary.f32(i32 46, float %4089, float %4077, float %4090)  ; FMad(a,b,c)
  %4092 = fmul fast float %4085, %4075
  %4093 = call float @dx.op.tertiary.f32(i32 46, float %4089, float %4076, float %4092)  ; FMad(a,b,c)
  %4094 = fmul fast float %4091, %4002
  %4095 = fmul fast float %4093, %4002
  %4096 = fadd fast float %4094, %3214
  %4097 = fadd fast float %4095, %3215
  %4098 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %59, float %4096, float %4097, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4099 = extractvalue %dx.types.ResRet.f32 %4098, 0
  %4100 = extractvalue %dx.types.ResRet.f32 %4098, 1
  %4101 = extractvalue %dx.types.ResRet.f32 %4098, 2
  %4102 = extractvalue %dx.types.ResRet.f32 %4098, 3
  %4103 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 0
  store float %4099, float* %4103, align 4
  %4104 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 1
  store float %4100, float* %4104, align 4
  %4105 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 2
  store float %4101, float* %4105, align 4
  %4106 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 3
  store float %4102, float* %4106, align 4
  %4107 = fsub fast float %4099, %4004
  %4108 = fcmp fast olt float %4107, 0.000000e+00
  %4109 = select i1 %4108, float 0.000000e+00, float 1.000000e+00
  %4110 = fadd fast float %4109, %4079
  %4111 = fmul fast float %4109, %4107
  %4112 = fadd fast float %4111, %4080
  br label %4113

; <label>:4113                                    ; preds = %4113, %4078
  %4114 = phi i32 [ 1, %4078 ], [ %4125, %4113 ]
  %4115 = phi float [ %4112, %4078 ], [ %4124, %4113 ]
  %4116 = phi float [ %4110, %4078 ], [ %4122, %4113 ]
  %4117 = getelementptr [4 x float], [4 x float]* %85, i32 0, i32 %4114
  %4118 = load float, float* %4117, align 4, !tbaa !99, !noalias !128
  %4119 = fsub fast float %4118, %4004
  %4120 = fcmp fast olt float %4119, 0.000000e+00
  %4121 = select i1 %4120, float 0.000000e+00, float 1.000000e+00
  %4122 = fadd fast float %4121, %4116
  %4123 = fmul fast float %4121, %4119
  %4124 = fadd fast float %4123, %4115
  %4125 = add nuw nsw i32 %4114, 1
  %4126 = icmp eq i32 %4125, 4
  br i1 %4126, label %4127, label %4113, !llvm.loop !138

; <label>:4127                                    ; preds = %4113
  %4128 = add nuw nsw i32 %4081, 1
  %4129 = icmp eq i32 %4128, 8
  br i1 %4129, label %4130, label %4078, !llvm.loop !139

; <label>:4130                                    ; preds = %4127
  %4131 = fdiv fast float 1.000000e+00, %4122
  %4132 = fmul fast float %4131, %4124
  %4133 = fdiv fast float 1.000000e+00, %4004
  %4134 = fmul fast float %4132, %4133
  %4135 = call float @dx.op.unary.f32(i32 7, float %4134)  ; Saturate(value)
  %4136 = call float @dx.op.binary.f32(i32 35, float %4135, float 0.000000e+00)  ; FMax(a,b)
  %4137 = fmul fast float %4122, 3.125000e-02
  %4138 = call float @dx.op.unary.f32(i32 7, float %4137)  ; Saturate(value)
  %4139 = fmul fast float %4138, 2.000000e+00
  %4140 = fadd fast float %4139, -1.000000e+00
  %4141 = fcmp fast ogt float %4140, 0.000000e+00
  %4142 = fcmp fast olt float %4140, 0.000000e+00
  %4143 = zext i1 %4141 to i32
  %4144 = zext i1 %4142 to i32
  %4145 = sub nsw i32 %4143, %4144
  %4146 = sitofp i32 %4145 to float
  %4147 = fmul fast float %4146, %4140
  %4148 = fsub fast float 1.000000e+00, %4147
  %4149 = fmul fast float %4148, %4148
  %4150 = fmul fast float %4149, %4148
  %4151 = fsub fast float %4148, %4150
  %4152 = fmul fast float %4151, %4136
  %4153 = fsub fast float 1.000000e+00, %4150
  %4154 = fsub fast float %4153, %4152
  %4155 = fmul fast float %4146, 5.000000e-01
  %4156 = fmul fast float %4155, %4154
  %4157 = fsub fast float 5.000000e-01, %4156
  br label %4158

; <label>:4158                                    ; preds = %4130, %4006, %3991
  %4159 = phi float [ 1.000000e+00, %3991 ], [ %4072, %4006 ], [ %4157, %4130 ]
  %4160 = fcmp fast ogt float %3314, 0.000000e+00
  br i1 %4160, label %4161, label %4325, !dx.controlflow.hints !140

; <label>:4161                                    ; preds = %4158
  %4162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4163 = extractvalue %dx.types.CBufRet.f32 %4162, 1
  %4164 = fadd fast float %4163, %3199
  %4165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4166 = extractvalue %dx.types.CBufRet.f32 %4165, 2
  %4167 = extractvalue %dx.types.CBufRet.f32 %4165, 3
  %4168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4169 = extractvalue %dx.types.CBufRet.f32 %4168, 1
  %4170 = call float @dx.op.binary.f32(i32 35, float %4164, float 0.000000e+00)  ; FMax(a,b)
  %4171 = fadd fast float %4170, 0x3F10000000000000
  %4172 = fcmp fast oeq float %4169, 0.000000e+00
  br i1 %4172, label %4173, label %4240

; <label>:4173                                    ; preds = %4161
  %4174 = extractvalue %dx.types.CBufRet.f32 %4165, 1
  %4175 = extractvalue %dx.types.CBufRet.f32 %4165, 0
  %4176 = fmul fast float %4175, %3206
  %4177 = fmul fast float %4174, %3207
  %4178 = fadd fast float %4176, 5.000000e-01
  %4179 = call float @dx.op.unary.f32(i32 27, float %4178)  ; Round_ni(value)
  %4180 = fadd fast float %4177, 5.000000e-01
  %4181 = call float @dx.op.unary.f32(i32 27, float %4180)  ; Round_ni(value)
  %4182 = fsub fast float %4178, %4179
  %4183 = fsub fast float %4180, %4181
  %4184 = fadd fast float %4179, -5.000000e-01
  %4185 = fadd fast float %4181, -5.000000e-01
  %4186 = fmul fast float %4182, 2.000000e+00
  %4187 = fsub fast float 3.000000e+00, %4186
  %4188 = fadd fast float %4186, 1.000000e+00
  %4189 = fsub fast float 2.000000e+00, %4182
  %4190 = bitcast float %4187 to i32
  %4191 = sub nsw i32 2129859010, %4190
  %4192 = bitcast i32 %4191 to float
  %4193 = fmul fast float %4192, %4189
  %4194 = fadd fast float %4193, -1.000000e+00
  %4195 = bitcast float %4188 to i32
  %4196 = sub nsw i32 2129859010, %4195
  %4197 = bitcast i32 %4196 to float
  %4198 = fmul fast float %4197, %4182
  %4199 = fadd fast float %4198, 1.000000e+00
  %4200 = fmul fast float %4183, 2.000000e+00
  %4201 = fsub fast float 3.000000e+00, %4200
  %4202 = fadd fast float %4200, 1.000000e+00
  %4203 = fsub fast float 2.000000e+00, %4183
  %4204 = bitcast float %4201 to i32
  %4205 = sub nsw i32 2129859010, %4204
  %4206 = bitcast i32 %4205 to float
  %4207 = fmul fast float %4206, %4203
  %4208 = fadd fast float %4207, -1.000000e+00
  %4209 = bitcast float %4202 to i32
  %4210 = sub nsw i32 2129859010, %4209
  %4211 = bitcast i32 %4210 to float
  %4212 = fmul fast float %4211, %4183
  %4213 = fadd fast float %4212, 1.000000e+00
  %4214 = fadd fast float %4194, %4184
  %4215 = fmul fast float %4214, %4166
  %4216 = fadd fast float %4208, %4185
  %4217 = fmul fast float %4216, %4167
  %4218 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %4215, float %4217, float undef, float undef, i32 0, i32 0, i32 undef, float %4171)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4219 = extractvalue %dx.types.ResRet.f32 %4218, 0
  %4220 = fmul fast float %4219, %4187
  %4221 = fadd fast float %4199, %4184
  %4222 = fmul fast float %4221, %4166
  %4223 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %4222, float %4217, float undef, float undef, i32 0, i32 0, i32 undef, float %4171)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4224 = extractvalue %dx.types.ResRet.f32 %4223, 0
  %4225 = fmul fast float %4224, %4188
  %4226 = fadd fast float %4213, %4185
  %4227 = fmul fast float %4226, %4167
  %4228 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %4215, float %4227, float undef, float undef, i32 0, i32 0, i32 undef, float %4171)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4229 = extractvalue %dx.types.ResRet.f32 %4228, 0
  %4230 = fmul fast float %4229, %4187
  %4231 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %4222, float %4227, float undef, float undef, i32 0, i32 0, i32 undef, float %4171)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4232 = extractvalue %dx.types.ResRet.f32 %4231, 0
  %4233 = fmul fast float %4232, %4188
  %4234 = fadd fast float %4233, %4230
  %4235 = fmul fast float %4234, %4202
  %4236 = fadd fast float %4225, %4220
  %4237 = fmul fast float %4236, %4201
  %4238 = fadd fast float %4237, %4235
  %4239 = fmul fast float %4238, 6.250000e-02
  br label %4325

; <label>:4240                                    ; preds = %4161
  %4241 = fmul fast float %893, 0x401921FB60000000
  %4242 = call float @dx.op.unary.f32(i32 13, float %4241)  ; Sin(value)
  %4243 = call float @dx.op.unary.f32(i32 12, float %4241)  ; Cos(value)
  %4244 = fsub fast float -0.000000e+00, %4242
  br label %4245

; <label>:4245                                    ; preds = %4294, %4240
  %4246 = phi float [ 0.000000e+00, %4240 ], [ %4289, %4294 ]
  %4247 = phi float [ 0.000000e+00, %4240 ], [ %4291, %4294 ]
  %4248 = phi i32 [ 0, %4240 ], [ %4295, %4294 ]
  %4249 = mul i32 %4248, 2
  %4250 = add i32 0, %4249
  %4251 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4250
  %4252 = load float, float* %4251, align 4
  %4253 = mul i32 %4248, 2
  %4254 = add i32 1, %4253
  %4255 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4254
  %4256 = load float, float* %4255, align 4
  %4257 = fmul fast float %4252, %4243
  %4258 = call float @dx.op.tertiary.f32(i32 46, float %4256, float %4244, float %4257)  ; FMad(a,b,c)
  %4259 = fmul fast float %4252, %4242
  %4260 = call float @dx.op.tertiary.f32(i32 46, float %4256, float %4243, float %4259)  ; FMad(a,b,c)
  %4261 = fmul fast float %4258, %4169
  %4262 = fmul fast float %4260, %4169
  %4263 = fadd fast float %4261, %3206
  %4264 = fadd fast float %4262, %3207
  %4265 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %59, float %4263, float %4264, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4266 = extractvalue %dx.types.ResRet.f32 %4265, 0
  %4267 = extractvalue %dx.types.ResRet.f32 %4265, 1
  %4268 = extractvalue %dx.types.ResRet.f32 %4265, 2
  %4269 = extractvalue %dx.types.ResRet.f32 %4265, 3
  %4270 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 0
  store float %4266, float* %4270, align 4
  %4271 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 1
  store float %4267, float* %4271, align 4
  %4272 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 2
  store float %4268, float* %4272, align 4
  %4273 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 3
  store float %4269, float* %4273, align 4
  %4274 = fsub fast float %4266, %4171
  %4275 = fcmp fast olt float %4274, 0.000000e+00
  %4276 = select i1 %4275, float 0.000000e+00, float 1.000000e+00
  %4277 = fadd fast float %4276, %4246
  %4278 = fmul fast float %4276, %4274
  %4279 = fadd fast float %4278, %4247
  br label %4280

; <label>:4280                                    ; preds = %4280, %4245
  %4281 = phi i32 [ 1, %4245 ], [ %4292, %4280 ]
  %4282 = phi float [ %4279, %4245 ], [ %4291, %4280 ]
  %4283 = phi float [ %4277, %4245 ], [ %4289, %4280 ]
  %4284 = getelementptr [4 x float], [4 x float]* %84, i32 0, i32 %4281
  %4285 = load float, float* %4284, align 4, !tbaa !99, !noalias !128
  %4286 = fsub fast float %4285, %4171
  %4287 = fcmp fast olt float %4286, 0.000000e+00
  %4288 = select i1 %4287, float 0.000000e+00, float 1.000000e+00
  %4289 = fadd fast float %4288, %4283
  %4290 = fmul fast float %4288, %4286
  %4291 = fadd fast float %4290, %4282
  %4292 = add nuw nsw i32 %4281, 1
  %4293 = icmp eq i32 %4292, 4
  br i1 %4293, label %4294, label %4280, !llvm.loop !138

; <label>:4294                                    ; preds = %4280
  %4295 = add nuw nsw i32 %4248, 1
  %4296 = icmp eq i32 %4295, 8
  br i1 %4296, label %4297, label %4245, !llvm.loop !139

; <label>:4297                                    ; preds = %4294
  %4298 = fdiv fast float 1.000000e+00, %4289
  %4299 = fmul fast float %4298, %4291
  %4300 = fdiv fast float 1.000000e+00, %4171
  %4301 = fmul fast float %4299, %4300
  %4302 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4303 = call float @dx.op.binary.f32(i32 35, float %4302, float 0.000000e+00)  ; FMax(a,b)
  %4304 = fmul fast float %4289, 3.125000e-02
  %4305 = call float @dx.op.unary.f32(i32 7, float %4304)  ; Saturate(value)
  %4306 = fmul fast float %4305, 2.000000e+00
  %4307 = fadd fast float %4306, -1.000000e+00
  %4308 = fcmp fast ogt float %4307, 0.000000e+00
  %4309 = fcmp fast olt float %4307, 0.000000e+00
  %4310 = zext i1 %4308 to i32
  %4311 = zext i1 %4309 to i32
  %4312 = sub nsw i32 %4310, %4311
  %4313 = sitofp i32 %4312 to float
  %4314 = fmul fast float %4313, %4307
  %4315 = fsub fast float 1.000000e+00, %4314
  %4316 = fmul fast float %4315, %4315
  %4317 = fmul fast float %4316, %4315
  %4318 = fsub fast float %4315, %4317
  %4319 = fmul fast float %4318, %4303
  %4320 = fsub fast float 1.000000e+00, %4317
  %4321 = fsub fast float %4320, %4319
  %4322 = fmul fast float %4313, 5.000000e-01
  %4323 = fmul fast float %4322, %4321
  %4324 = fsub fast float 5.000000e-01, %4323
  br label %4325

; <label>:4325                                    ; preds = %4297, %4173, %4158
  %4326 = phi float [ 1.000000e+00, %4158 ], [ %4239, %4173 ], [ %4324, %4297 ]
  %4327 = fcmp fast ogt float %3313, 0.000000e+00
  br i1 %4327, label %4328, label %4492, !dx.controlflow.hints !141

; <label>:4328                                    ; preds = %4325
  %4329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.f32 %4329, 0
  %4331 = fadd fast float %4330, %3199
  %4332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4332, 2
  %4334 = extractvalue %dx.types.CBufRet.f32 %4332, 3
  %4335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.f32 %4335, 0
  %4337 = call float @dx.op.binary.f32(i32 35, float %4331, float 0.000000e+00)  ; FMax(a,b)
  %4338 = fadd fast float %4337, 0x3F10000000000000
  %4339 = fcmp fast oeq float %4336, 0.000000e+00
  br i1 %4339, label %4340, label %4407

; <label>:4340                                    ; preds = %4328
  %4341 = extractvalue %dx.types.CBufRet.f32 %4332, 1
  %4342 = extractvalue %dx.types.CBufRet.f32 %4332, 0
  %4343 = fmul fast float %4342, %3191
  %4344 = fmul fast float %4341, %3195
  %4345 = fadd fast float %4343, 5.000000e-01
  %4346 = call float @dx.op.unary.f32(i32 27, float %4345)  ; Round_ni(value)
  %4347 = fadd fast float %4344, 5.000000e-01
  %4348 = call float @dx.op.unary.f32(i32 27, float %4347)  ; Round_ni(value)
  %4349 = fsub fast float %4345, %4346
  %4350 = fsub fast float %4347, %4348
  %4351 = fadd fast float %4346, -5.000000e-01
  %4352 = fadd fast float %4348, -5.000000e-01
  %4353 = fmul fast float %4349, 2.000000e+00
  %4354 = fsub fast float 3.000000e+00, %4353
  %4355 = fadd fast float %4353, 1.000000e+00
  %4356 = fsub fast float 2.000000e+00, %4349
  %4357 = bitcast float %4354 to i32
  %4358 = sub nsw i32 2129859010, %4357
  %4359 = bitcast i32 %4358 to float
  %4360 = fmul fast float %4359, %4356
  %4361 = fadd fast float %4360, -1.000000e+00
  %4362 = bitcast float %4355 to i32
  %4363 = sub nsw i32 2129859010, %4362
  %4364 = bitcast i32 %4363 to float
  %4365 = fmul fast float %4364, %4349
  %4366 = fadd fast float %4365, 1.000000e+00
  %4367 = fmul fast float %4350, 2.000000e+00
  %4368 = fsub fast float 3.000000e+00, %4367
  %4369 = fadd fast float %4367, 1.000000e+00
  %4370 = fsub fast float 2.000000e+00, %4350
  %4371 = bitcast float %4368 to i32
  %4372 = sub nsw i32 2129859010, %4371
  %4373 = bitcast i32 %4372 to float
  %4374 = fmul fast float %4373, %4370
  %4375 = fadd fast float %4374, -1.000000e+00
  %4376 = bitcast float %4369 to i32
  %4377 = sub nsw i32 2129859010, %4376
  %4378 = bitcast i32 %4377 to float
  %4379 = fmul fast float %4378, %4350
  %4380 = fadd fast float %4379, 1.000000e+00
  %4381 = fadd fast float %4361, %4351
  %4382 = fmul fast float %4381, %4333
  %4383 = fadd fast float %4375, %4352
  %4384 = fmul fast float %4383, %4334
  %4385 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %4382, float %4384, float undef, float undef, i32 0, i32 0, i32 undef, float %4338)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4386 = extractvalue %dx.types.ResRet.f32 %4385, 0
  %4387 = fmul fast float %4386, %4354
  %4388 = fadd fast float %4366, %4351
  %4389 = fmul fast float %4388, %4333
  %4390 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %4389, float %4384, float undef, float undef, i32 0, i32 0, i32 undef, float %4338)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4391 = extractvalue %dx.types.ResRet.f32 %4390, 0
  %4392 = fmul fast float %4391, %4355
  %4393 = fadd fast float %4380, %4352
  %4394 = fmul fast float %4393, %4334
  %4395 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %4382, float %4394, float undef, float undef, i32 0, i32 0, i32 undef, float %4338)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4396 = extractvalue %dx.types.ResRet.f32 %4395, 0
  %4397 = fmul fast float %4396, %4354
  %4398 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %4389, float %4394, float undef, float undef, i32 0, i32 0, i32 undef, float %4338)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4399 = extractvalue %dx.types.ResRet.f32 %4398, 0
  %4400 = fmul fast float %4399, %4355
  %4401 = fadd fast float %4400, %4397
  %4402 = fmul fast float %4401, %4369
  %4403 = fadd fast float %4392, %4387
  %4404 = fmul fast float %4403, %4368
  %4405 = fadd fast float %4404, %4402
  %4406 = fmul fast float %4405, 6.250000e-02
  br label %4492

; <label>:4407                                    ; preds = %4328
  %4408 = fmul fast float %893, 0x401921FB60000000
  %4409 = call float @dx.op.unary.f32(i32 13, float %4408)  ; Sin(value)
  %4410 = call float @dx.op.unary.f32(i32 12, float %4408)  ; Cos(value)
  %4411 = fsub fast float -0.000000e+00, %4409
  br label %4412

; <label>:4412                                    ; preds = %4461, %4407
  %4413 = phi float [ 0.000000e+00, %4407 ], [ %4456, %4461 ]
  %4414 = phi float [ 0.000000e+00, %4407 ], [ %4458, %4461 ]
  %4415 = phi i32 [ 0, %4407 ], [ %4462, %4461 ]
  %4416 = mul i32 %4415, 2
  %4417 = add i32 0, %4416
  %4418 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4417
  %4419 = load float, float* %4418, align 4
  %4420 = mul i32 %4415, 2
  %4421 = add i32 1, %4420
  %4422 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4421
  %4423 = load float, float* %4422, align 4
  %4424 = fmul fast float %4419, %4410
  %4425 = call float @dx.op.tertiary.f32(i32 46, float %4423, float %4411, float %4424)  ; FMad(a,b,c)
  %4426 = fmul fast float %4419, %4409
  %4427 = call float @dx.op.tertiary.f32(i32 46, float %4423, float %4410, float %4426)  ; FMad(a,b,c)
  %4428 = fmul fast float %4425, %4336
  %4429 = fmul fast float %4427, %4336
  %4430 = fadd fast float %4428, %3191
  %4431 = fadd fast float %4429, %3195
  %4432 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %59, float %4430, float %4431, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4433 = extractvalue %dx.types.ResRet.f32 %4432, 0
  %4434 = extractvalue %dx.types.ResRet.f32 %4432, 1
  %4435 = extractvalue %dx.types.ResRet.f32 %4432, 2
  %4436 = extractvalue %dx.types.ResRet.f32 %4432, 3
  %4437 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 0
  store float %4433, float* %4437, align 4
  %4438 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 1
  store float %4434, float* %4438, align 4
  %4439 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 2
  store float %4435, float* %4439, align 4
  %4440 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 3
  store float %4436, float* %4440, align 4
  %4441 = fsub fast float %4433, %4338
  %4442 = fcmp fast olt float %4441, 0.000000e+00
  %4443 = select i1 %4442, float 0.000000e+00, float 1.000000e+00
  %4444 = fadd fast float %4443, %4413
  %4445 = fmul fast float %4443, %4441
  %4446 = fadd fast float %4445, %4414
  br label %4447

; <label>:4447                                    ; preds = %4447, %4412
  %4448 = phi i32 [ 1, %4412 ], [ %4459, %4447 ]
  %4449 = phi float [ %4446, %4412 ], [ %4458, %4447 ]
  %4450 = phi float [ %4444, %4412 ], [ %4456, %4447 ]
  %4451 = getelementptr [4 x float], [4 x float]* %83, i32 0, i32 %4448
  %4452 = load float, float* %4451, align 4, !tbaa !99, !noalias !128
  %4453 = fsub fast float %4452, %4338
  %4454 = fcmp fast olt float %4453, 0.000000e+00
  %4455 = select i1 %4454, float 0.000000e+00, float 1.000000e+00
  %4456 = fadd fast float %4455, %4450
  %4457 = fmul fast float %4455, %4453
  %4458 = fadd fast float %4457, %4449
  %4459 = add nuw nsw i32 %4448, 1
  %4460 = icmp eq i32 %4459, 4
  br i1 %4460, label %4461, label %4447, !llvm.loop !138

; <label>:4461                                    ; preds = %4447
  %4462 = add nuw nsw i32 %4415, 1
  %4463 = icmp eq i32 %4462, 8
  br i1 %4463, label %4464, label %4412, !llvm.loop !139

; <label>:4464                                    ; preds = %4461
  %4465 = fdiv fast float 1.000000e+00, %4456
  %4466 = fmul fast float %4465, %4458
  %4467 = fdiv fast float 1.000000e+00, %4338
  %4468 = fmul fast float %4466, %4467
  %4469 = call float @dx.op.unary.f32(i32 7, float %4468)  ; Saturate(value)
  %4470 = call float @dx.op.binary.f32(i32 35, float %4469, float 0.000000e+00)  ; FMax(a,b)
  %4471 = fmul fast float %4456, 3.125000e-02
  %4472 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4473 = fmul fast float %4472, 2.000000e+00
  %4474 = fadd fast float %4473, -1.000000e+00
  %4475 = fcmp fast ogt float %4474, 0.000000e+00
  %4476 = fcmp fast olt float %4474, 0.000000e+00
  %4477 = zext i1 %4475 to i32
  %4478 = zext i1 %4476 to i32
  %4479 = sub nsw i32 %4477, %4478
  %4480 = sitofp i32 %4479 to float
  %4481 = fmul fast float %4480, %4474
  %4482 = fsub fast float 1.000000e+00, %4481
  %4483 = fmul fast float %4482, %4482
  %4484 = fmul fast float %4483, %4482
  %4485 = fsub fast float %4482, %4484
  %4486 = fmul fast float %4485, %4470
  %4487 = fsub fast float 1.000000e+00, %4484
  %4488 = fsub fast float %4487, %4486
  %4489 = fmul fast float %4480, 5.000000e-01
  %4490 = fmul fast float %4489, %4488
  %4491 = fsub fast float 5.000000e-01, %4490
  br label %4492

; <label>:4492                                    ; preds = %4464, %4340, %4325
  %4493 = phi float [ 1.000000e+00, %4325 ], [ %4406, %4340 ], [ %4491, %4464 ]
  %4494 = fsub fast float %4159, %3992
  %4495 = fmul fast float %4494, %3254
  %4496 = fadd fast float %4495, %3992
  %4497 = fsub fast float %4326, %4496
  %4498 = fmul fast float %4497, %3285
  %4499 = fadd fast float %4498, %4496
  %4500 = fsub fast float %4493, %4499
  %4501 = fmul fast float %4500, %3313
  %4502 = fadd fast float %4501, %4499
  %4503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4504 = extractvalue %dx.types.CBufRet.f32 %4503, 2
  %4505 = fcmp fast ogt float %4504, 0.000000e+00
  br i1 %4505, label %4506, label %4546, !dx.controlflow.hints !142

; <label>:4506                                    ; preds = %4492
  %4507 = fcmp fast ugt float %4504, 0.000000e+00
  br i1 %4507, label %4508, label %4543

; <label>:4508                                    ; preds = %4506
  %4509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4510 = extractvalue %dx.types.CBufRet.f32 %4509, 0
  %4511 = extractvalue %dx.types.CBufRet.f32 %4509, 1
  %4512 = extractvalue %dx.types.CBufRet.f32 %4509, 2
  %4513 = extractvalue %dx.types.CBufRet.f32 %4509, 3
  %4514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4515 = extractvalue %dx.types.CBufRet.f32 %4514, 0
  %4516 = extractvalue %dx.types.CBufRet.f32 %4514, 1
  %4517 = extractvalue %dx.types.CBufRet.f32 %4514, 2
  %4518 = extractvalue %dx.types.CBufRet.f32 %4514, 3
  %4519 = extractvalue %dx.types.CBufRet.f32 %4503, 0
  %4520 = extractvalue %dx.types.CBufRet.f32 %4503, 1
  %4521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4522 = extractvalue %dx.types.CBufRet.f32 %4521, 0
  %4523 = extractvalue %dx.types.CBufRet.f32 %4521, 1
  %4524 = extractvalue %dx.types.CBufRet.f32 %4521, 2
  %4525 = fadd fast float %4522, %143
  %4526 = fadd fast float %4523, %144
  %4527 = fadd fast float %4524, %145
  %4528 = fmul fast float %4525, %4510
  %4529 = call float @dx.op.tertiary.f32(i32 46, float %4511, float %4526, float %4528)  ; FMad(a,b,c)
  %4530 = call float @dx.op.tertiary.f32(i32 46, float %4512, float %4527, float %4529)  ; FMad(a,b,c)
  %4531 = fadd fast float %4530, %4513
  %4532 = fmul fast float %4525, %4515
  %4533 = call float @dx.op.tertiary.f32(i32 46, float %4516, float %4526, float %4532)  ; FMad(a,b,c)
  %4534 = call float @dx.op.tertiary.f32(i32 46, float %4517, float %4527, float %4533)  ; FMad(a,b,c)
  %4535 = fadd fast float %4534, %4518
  %4536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %12, %dx.types.Handle %55, float %4531, float %4535, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4537 = extractvalue %dx.types.ResRet.f32 %4536, 0
  %4538 = fmul fast float %4537, %4520
  %4539 = fadd fast float %4538, %4519
  %4540 = call float @dx.op.unary.f32(i32 7, float %4539)  ; Saturate(value)
  %4541 = fmul fast float %4540, %4504
  %4542 = fsub fast float 1.000000e+00, %4541
  br label %4543

; <label>:4543                                    ; preds = %4508, %4506
  %4544 = phi float [ %4542, %4508 ], [ 1.000000e+00, %4506 ]
  %4545 = fmul fast float %4544, %4502
  br label %4546

; <label>:4546                                    ; preds = %4543, %4492, %3156
  %4547 = phi float [ 1.000000e+00, %3156 ], [ %4545, %4543 ], [ %4502, %4492 ]
  %4548 = call float @dx.op.binary.f32(i32 36, float %4547, float %4547)  ; FMin(a,b)
  %4549 = call float @dx.op.binary.f32(i32 36, float %4547, float %4548)  ; FMin(a,b)
  %4550 = fcmp fast ogt float %4549, 0.000000e+00
  br i1 %4550, label %4551, label %4716, !dx.controlflow.hints !143

; <label>:4551                                    ; preds = %4546
  %4552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4553 = extractvalue %dx.types.CBufRet.f32 %4552, 0
  %4554 = extractvalue %dx.types.CBufRet.f32 %4552, 1
  %4555 = extractvalue %dx.types.CBufRet.f32 %4552, 2
  %4556 = extractvalue %dx.types.CBufRet.f32 %4552, 3
  %4557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4558 = extractvalue %dx.types.CBufRet.f32 %4557, 0
  %4559 = extractvalue %dx.types.CBufRet.f32 %4557, 1
  %4560 = extractvalue %dx.types.CBufRet.f32 %4557, 2
  %4561 = extractvalue %dx.types.CBufRet.f32 %4557, 3
  %4562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4563 = extractvalue %dx.types.CBufRet.f32 %4562, 0
  %4564 = extractvalue %dx.types.CBufRet.f32 %4562, 1
  %4565 = extractvalue %dx.types.CBufRet.f32 %4562, 2
  %4566 = extractvalue %dx.types.CBufRet.f32 %4562, 3
  %4567 = fmul fast float %4553, %143
  %4568 = call float @dx.op.tertiary.f32(i32 46, float %144, float %4554, float %4567)  ; FMad(a,b,c)
  %4569 = call float @dx.op.tertiary.f32(i32 46, float %145, float %4555, float %4568)  ; FMad(a,b,c)
  %4570 = fadd fast float %4569, %4556
  %4571 = fmul fast float %4558, %143
  %4572 = call float @dx.op.tertiary.f32(i32 46, float %144, float %4559, float %4571)  ; FMad(a,b,c)
  %4573 = call float @dx.op.tertiary.f32(i32 46, float %145, float %4560, float %4572)  ; FMad(a,b,c)
  %4574 = fadd fast float %4573, %4561
  %4575 = fmul fast float %4563, %143
  %4576 = call float @dx.op.tertiary.f32(i32 46, float %144, float %4564, float %4575)  ; FMad(a,b,c)
  %4577 = call float @dx.op.tertiary.f32(i32 46, float %145, float %4565, float %4576)  ; FMad(a,b,c)
  %4578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4579 = extractvalue %dx.types.CBufRet.f32 %4578, 0
  %4580 = extractvalue %dx.types.CBufRet.f32 %4578, 1
  %4581 = extractvalue %dx.types.CBufRet.f32 %4578, 3
  %4582 = fmul fast float %4581, %4570
  %4583 = fmul fast float %4581, %4574
  %4584 = fadd fast float %4582, %4579
  %4585 = fadd fast float %4583, %4580
  %4586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4587 = extractvalue %dx.types.CBufRet.f32 %4586, 0
  %4588 = extractvalue %dx.types.CBufRet.f32 %4586, 1
  %4589 = fsub fast float %4584, %4587
  %4590 = fsub fast float %4585, %4588
  %4591 = fcmp fast olt float %4589, 0.000000e+00
  %4592 = fcmp fast olt float %4590, 0.000000e+00
  %4593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4594 = extractvalue %dx.types.CBufRet.f32 %4593, 0
  %4595 = extractvalue %dx.types.CBufRet.f32 %4593, 1
  %4596 = extractvalue %dx.types.CBufRet.f32 %4593, 2
  %4597 = extractvalue %dx.types.CBufRet.f32 %4593, 3
  %4598 = select i1 %4591, float %4594, float %4596
  %4599 = select i1 %4592, float %4595, float %4597
  %4600 = fmul fast float %4598, %4589
  %4601 = fmul fast float %4599, %4590
  %4602 = call float @dx.op.unary.f32(i32 6, float %4600)  ; FAbs(value)
  %4603 = call float @dx.op.unary.f32(i32 6, float %4601)  ; FAbs(value)
  %4604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4605 = extractvalue %dx.types.CBufRet.f32 %4604, 0
  %4606 = call float @dx.op.binary.f32(i32 35, float %4602, float %4603)  ; FMax(a,b)
  %4607 = fsub fast float %4605, %4606
  %4608 = call float @dx.op.unary.f32(i32 7, float %4607)  ; Saturate(value)
  %4609 = fcmp fast ogt float %4608, 0.000000e+00
  br i1 %4609, label %4610, label %4651, !dx.controlflow.hints !144

; <label>:4610                                    ; preds = %4551
  %4611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %58, float %4584, float %4585, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 1
  %4613 = fcmp fast ogt float %4612, 0.000000e+00
  br i1 %4613, label %4614, label %4646

; <label>:4614                                    ; preds = %4610
  %4615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %58, float %4584, float %4585, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4616 = extractvalue %dx.types.ResRet.f32 %4615, 0
  %4617 = extractvalue %dx.types.ResRet.f32 %4615, 1
  %4618 = extractvalue %dx.types.ResRet.f32 %4615, 2
  %4619 = extractvalue %dx.types.ResRet.f32 %4615, 3
  %4620 = fsub fast float 1.000000e+00, %4566
  %4621 = fsub fast float %4620, %4577
  %4622 = fmul fast float %4621, 0x400921FB60000000
  %4623 = fadd fast float %4622, 0x3FF921FB60000000
  %4624 = call float @dx.op.unary.f32(i32 13, float %4623)  ; Sin(value)
  %4625 = fadd fast float %4624, -1.000000e+00
  %4626 = fmul fast float %4625, 0x3FD45F3060000000
  %4627 = fmul fast float %4621, 0x401921FB60000000
  %4628 = fadd fast float %4627, 0x400921FB60000000
  %4629 = call float @dx.op.unary.f32(i32 13, float %4628)  ; Sin(value)
  %4630 = fadd fast float %4629, 0x3E7777A5C0000000
  %4631 = fmul fast float %4630, 0x3FC45F3060000000
  %4632 = fmul fast float %4621, 0x4022D97C80000000
  %4633 = fadd fast float %4632, 0x4012D97C80000000
  %4634 = call float @dx.op.unary.f32(i32 13, float %4633)  ; Sin(value)
  %4635 = fadd fast float %4634, 1.000000e+00
  %4636 = fmul fast float %4635, 0x3FBB2995E0000000
  %4637 = fmul fast float %4621, 0x402921FB60000000
  %4638 = fadd fast float %4637, 0x401921FB60000000
  %4639 = call float @dx.op.unary.f32(i32 13, float %4638)  ; Sin(value)
  %4640 = fadd fast float %4639, 0xBE8777A5C0000000
  %4641 = fmul fast float %4640, 0x3FB45F3060000000
  %4642 = call float @dx.op.dot4.f32(i32 56, float %4616, float %4617, float %4618, float %4619, float %4626, float %4631, float %4636, float %4641)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4643 = fmul fast float %4642, 0xBFF7154760000000
  %4644 = call float @dx.op.unary.f32(i32 21, float %4643)  ; Exp(value)
  %4645 = call float @dx.op.unary.f32(i32 7, float %4644)  ; Saturate(value)
  br label %4646

; <label>:4646                                    ; preds = %4614, %4610
  %4647 = phi float [ %4645, %4614 ], [ 1.000000e+00, %4610 ]
  %4648 = fadd fast float %4647, -1.000000e+00
  %4649 = fmul fast float %4648, %4608
  %4650 = fadd fast float %4649, 1.000000e+00
  br label %4651

; <label>:4651                                    ; preds = %4646, %4551
  %4652 = phi float [ %4650, %4646 ], [ 1.000000e+00, %4551 ]
  %4653 = fmul fast float %4652, %4547
  %4654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4655 = extractvalue %dx.types.CBufRet.f32 %4654, 0
  %4656 = extractvalue %dx.types.CBufRet.f32 %4654, 1
  %4657 = extractvalue %dx.types.CBufRet.f32 %4654, 2
  %4658 = fadd fast float %4655, %143
  %4659 = fadd fast float %4656, %144
  %4660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4661 = extractvalue %dx.types.CBufRet.f32 %4660, 1
  %4662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4663 = extractvalue %dx.types.CBufRet.f32 %4662, 0
  %4664 = extractvalue %dx.types.CBufRet.f32 %4662, 1
  %4665 = extractvalue %dx.types.CBufRet.f32 %4662, 2
  %4666 = fsub fast float -0.000000e+00, %4658
  %4667 = fsub fast float -0.000000e+00, %4659
  %4668 = fsub fast float %1542, %4657
  %4669 = fadd fast float %4668, %4661
  %4670 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4666, float %4667, float %4669)  ; Dot3(ax,ay,az,bx,by,bz)
  %4671 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4663, float %4664, float %4665)  ; Dot3(ax,ay,az,bx,by,bz)
  %4672 = fdiv fast float 1.000000e+00, %4671
  %4673 = fmul fast float %4672, %4670
  %4674 = fmul fast float %4663, %4673
  %4675 = fmul fast float %4664, %4673
  %4676 = fadd fast float %4674, %4658
  %4677 = fadd fast float %4675, %4659
  %4678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4679 = extractvalue %dx.types.CBufRet.f32 %4678, 0
  %4680 = extractvalue %dx.types.CBufRet.f32 %4678, 1
  %4681 = fsub fast float %4676, %4679
  %4682 = fsub fast float %4677, %4680
  %4683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4684 = extractvalue %dx.types.CBufRet.f32 %4683, 2
  %4685 = extractvalue %dx.types.CBufRet.f32 %4683, 3
  %4686 = fmul fast float %4681, %4684
  %4687 = fmul fast float %4682, %4685
  %4688 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4689 = extractvalue %dx.types.CBufRet.i32 %4688, 3
  %4690 = icmp eq i32 %4689, 0
  br i1 %4690, label %4696, label %4691

; <label>:4691                                    ; preds = %4651
  %4692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %57, float %4686, float %4687, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4693 = extractvalue %dx.types.ResRet.f32 %4692, 0
  %4694 = extractvalue %dx.types.ResRet.f32 %4692, 1
  %4695 = extractvalue %dx.types.ResRet.f32 %4692, 2
  br label %4701

; <label>:4696                                    ; preds = %4651
  %4697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %58, float %4686, float %4687, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4698 = extractvalue %dx.types.ResRet.f32 %4697, 0
  %4699 = extractvalue %dx.types.ResRet.f32 %4697, 1
  %4700 = extractvalue %dx.types.ResRet.f32 %4697, 2
  br label %4701

; <label>:4701                                    ; preds = %4696, %4691
  %4702 = phi float [ %4693, %4691 ], [ %4698, %4696 ]
  %4703 = phi float [ %4694, %4691 ], [ %4699, %4696 ]
  %4704 = phi float [ %4695, %4691 ], [ %4700, %4696 ]
  %4705 = extractvalue %dx.types.CBufRet.f32 %4660, 2
  %4706 = fmul fast float %4705, %4702
  %4707 = extractvalue %dx.types.CBufRet.f32 %4660, 0
  %4708 = fsub fast float %4673, %4707
  %4709 = fsub fast float %4708, %4706
  %4710 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4709)  ; FMax(a,b)
  %4711 = fmul fast float %4710, %4703
  %4712 = call float @dx.op.binary.f32(i32 36, float %4704, float %4711)  ; FMin(a,b)
  %4713 = fmul fast float %4712, 0xBFF7154760000000
  %4714 = call float @dx.op.unary.f32(i32 21, float %4713)  ; Exp(value)
  %4715 = fmul fast float %4653, %4714
  br label %4716

; <label>:4716                                    ; preds = %4701, %4546
  %4717 = phi float [ %4715, %4701 ], [ %4547, %4546 ]
  %4718 = call float @dx.op.binary.f32(i32 36, float %4717, float %4717)  ; FMin(a,b)
  %4719 = call float @dx.op.binary.f32(i32 36, float %4717, float %4718)  ; FMin(a,b)
  %4720 = fcmp fast ogt float %4719, 0.000000e+00
  br i1 %4720, label %4721, label %4945, !dx.controlflow.hints !145

; <label>:4721                                    ; preds = %4716
  %4722 = bitcast i32 %1559 to float
  %4723 = fmul fast float %4717, %3168
  %4724 = fmul fast float %4717, %3169
  %4725 = fmul fast float %4717, %3170
  %4726 = fsub fast float %3157, %1434
  %4727 = fsub fast float %3158, %1435
  %4728 = fsub fast float %3159, %1436
  %4729 = call float @dx.op.dot3.f32(i32 55, float %4726, float %4727, float %4728, float %4726, float %4727, float %4728)  ; Dot3(ax,ay,az,bx,by,bz)
  %4730 = call float @dx.op.unary.f32(i32 25, float %4729)  ; Rsqrt(value)
  %4731 = fmul fast float %4730, %4726
  %4732 = fmul fast float %4730, %4727
  %4733 = fmul fast float %4730, %4728
  %4734 = call float @dx.op.dot3.f32(i32 55, float %3157, float %3158, float %3159, float %1406, float %1407, float %1408)  ; Dot3(ax,ay,az,bx,by,bz)
  %4735 = call float @dx.op.dot3.f32(i32 55, float %1543, float %1544, float %1545, float %4731, float %4732, float %4733)  ; Dot3(ax,ay,az,bx,by,bz)
  %4736 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4737 = fmul fast float %4736, %4736
  %4738 = fmul fast float %4737, %4722
  %4739 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4740 = fmul fast float %4739, %4736
  %4741 = call float @dx.op.dot3.f32(i32 55, float %1406, float %1407, float %1408, float %4731, float %4732, float %4733)  ; Dot3(ax,ay,az,bx,by,bz)
  %4742 = fmul fast float %4741, %4741
  %4743 = call float @dx.op.unary.f32(i32 6, float %4734)  ; FAbs(value)
  %4744 = fsub fast float 1.000000e+00, %1489
  %4745 = call float @dx.op.binary.f32(i32 35, float %4744, float 0x3F847AE140000000)  ; FMax(a,b)
  %4746 = fmul fast float %4745, %4745
  %4747 = fmul fast float %4746, %4746
  %4748 = fsub fast float 1.000000e+00, %4747
  %4749 = fmul fast float %1548, %1548
  %4750 = fmul fast float %4749, %4748
  %4751 = fadd fast float %4750, %4747
  %4752 = bitcast float %4751 to i32
  %4753 = ashr i32 %4752, 1
  %4754 = add nsw i32 %4753, 532487669
  %4755 = bitcast i32 %4754 to float
  %4756 = fadd fast float %4755, %1548
  %4757 = fmul fast float %4747, %4742
  %4758 = fsub fast float 1.000000e+00, %4742
  %4759 = fadd fast float %4758, %4757
  %4760 = fmul fast float %4743, %4743
  %4761 = fmul fast float %4760, %4748
  %4762 = fadd fast float %4761, %4747
  %4763 = bitcast float %4762 to i32
  %4764 = ashr i32 %4763, 1
  %4765 = add nsw i32 %4764, 532487669
  %4766 = bitcast i32 %4765 to float
  %4767 = fadd fast float %4766, %4743
  %4768 = fmul fast float %4759, %4759
  %4769 = fmul fast float %4768, %4756
  %4770 = fmul fast float %4769, %4767
  %4771 = fdiv fast float 0x3FF0A00000000000, %4770
  %4772 = fmul fast float %4771, %4747
  %4773 = call float @dx.op.unary.f32(i32 6, float %4735)  ; FAbs(value)
  %4774 = fsub fast float 1.000000e+00, %4773
  %4775 = bitcast float %4774 to i32
  %4776 = sitofp i32 %4775 to float
  %4777 = fmul fast float %4776, 5.000000e+00
  %4778 = fadd fast float %4777, 0xC1EFBF8940000000
  %4779 = fptosi float %4778 to i32
  %4780 = bitcast i32 %4779 to float
  %4781 = fmul fast float %4780, %2374
  %4782 = fmul fast float %4780, %2375
  %4783 = fmul fast float %4780, %2376
  %4784 = fadd fast float %4781, %1427
  %4785 = fadd fast float %4782, %1428
  %4786 = fadd fast float %4783, %1546
  %4787 = select i1 %2387, float %4773, float 0.000000e+00
  %4788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %58, float %2384, float %4787, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4789 = extractvalue %dx.types.ResRet.f32 %4788, 0
  %4790 = extractvalue %dx.types.ResRet.f32 %4788, 1
  %4791 = extractvalue %dx.types.ResRet.f32 %4788, 2
  %4792 = fadd fast float %4789, -5.000000e-01
  %4793 = fadd fast float %4790, -5.000000e-01
  %4794 = fadd fast float %4791, -5.000000e-01
  %4795 = fmul fast float %2399, %4792
  %4796 = fmul fast float %2403, %4793
  %4797 = fmul fast float %2407, %4794
  %4798 = fadd fast float %4784, %4795
  %4799 = fadd fast float %4785, %4796
  %4800 = fadd fast float %4786, %4797
  %4801 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4802 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4803 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4804 = fmul fast float %4734, 9.843750e-01
  %4805 = fmul fast float %1489, 9.843750e-01
  %4806 = fadd fast float %4804, 7.812500e-03
  %4807 = fadd fast float %4805, 7.812500e-03
  %4808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %4806, float %4807, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4809 = extractvalue %dx.types.ResRet.f32 %4808, 2
  %4810 = extractvalue %dx.types.ResRet.f32 %4808, 3
  %4811 = select i1 %2387, float %4734, float 0.000000e+00
  %4812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %58, float %2384, float %4811, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4813 = extractvalue %dx.types.ResRet.f32 %4812, 0
  %4814 = extractvalue %dx.types.ResRet.f32 %4812, 1
  %4815 = extractvalue %dx.types.ResRet.f32 %4812, 2
  %4816 = fadd fast float %4813, -5.000000e-01
  %4817 = fadd fast float %4814, -5.000000e-01
  %4818 = fadd fast float %4815, -5.000000e-01
  %4819 = fmul fast float %2374, 4.000000e+00
  %4820 = fmul fast float %4819, %2386
  %4821 = fmul fast float %4820, %4816
  %4822 = fmul fast float %2375, 4.000000e+00
  %4823 = fmul fast float %4822, %2386
  %4824 = fmul fast float %4823, %4817
  %4825 = fmul fast float %2376, 4.000000e+00
  %4826 = fmul fast float %4825, %2386
  %4827 = fmul fast float %4826, %4818
  %4828 = fadd fast float %4821, %4809
  %4829 = fmul fast float %4828, %1427
  %4830 = fadd fast float %4829, %4810
  %4831 = fadd fast float %4824, %4809
  %4832 = fmul fast float %4831, %1428
  %4833 = fadd fast float %4832, %4810
  %4834 = fadd fast float %4827, %4809
  %4835 = fmul fast float %4834, %1546
  %4836 = fadd fast float %4835, %4810
  %4837 = call float @dx.op.unary.f32(i32 7, float %4830)  ; Saturate(value)
  %4838 = call float @dx.op.unary.f32(i32 7, float %4833)  ; Saturate(value)
  %4839 = call float @dx.op.unary.f32(i32 7, float %4836)  ; Saturate(value)
  %4840 = call float @dx.op.binary.f32(i32 35, float %4838, float %4839)  ; FMax(a,b)
  %4841 = call float @dx.op.binary.f32(i32 35, float %4837, float %4840)  ; FMax(a,b)
  %4842 = fsub fast float 1.000000e+00, %4841
  %4843 = fsub fast float -0.000000e+00, %1406
  %4844 = fsub fast float -0.000000e+00, %1407
  %4845 = fsub fast float -0.000000e+00, %1408
  %4846 = call float @dx.op.dot3.f32(i32 55, float %3157, float %3158, float %3159, float %4843, float %4844, float %4845)  ; Dot3(ax,ay,az,bx,by,bz)
  %4847 = call float @dx.op.unary.f32(i32 7, float %4846)  ; Saturate(value)
  %4848 = fmul fast float %4847, 9.843750e-01
  %4849 = fadd fast float %4848, 7.812500e-03
  %4850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %4849, float %4807, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4851 = extractvalue %dx.types.ResRet.f32 %4850, 2
  %4852 = extractvalue %dx.types.ResRet.f32 %4850, 3
  %4853 = select i1 %2387, float %4847, float 0.000000e+00
  %4854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %58, float %2384, float %4853, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4855 = extractvalue %dx.types.ResRet.f32 %4854, 0
  %4856 = extractvalue %dx.types.ResRet.f32 %4854, 1
  %4857 = extractvalue %dx.types.ResRet.f32 %4854, 2
  %4858 = fadd fast float %4855, -5.000000e-01
  %4859 = fadd fast float %4856, -5.000000e-01
  %4860 = fadd fast float %4857, -5.000000e-01
  %4861 = fmul fast float %4820, %4858
  %4862 = fmul fast float %4823, %4859
  %4863 = fmul fast float %4826, %4860
  %4864 = fadd fast float %4861, %4851
  %4865 = fmul fast float %4864, %1427
  %4866 = fadd fast float %4865, %4852
  %4867 = fadd fast float %4862, %4851
  %4868 = fmul fast float %4867, %1428
  %4869 = fadd fast float %4868, %4852
  %4870 = fadd fast float %4863, %4851
  %4871 = fmul fast float %4870, %1546
  %4872 = fadd fast float %4871, %4852
  %4873 = call float @dx.op.unary.f32(i32 7, float %4866)  ; Saturate(value)
  %4874 = call float @dx.op.unary.f32(i32 7, float %4869)  ; Saturate(value)
  %4875 = call float @dx.op.unary.f32(i32 7, float %4872)  ; Saturate(value)
  %4876 = call float @dx.op.binary.f32(i32 35, float %4874, float %4875)  ; FMax(a,b)
  %4877 = call float @dx.op.binary.f32(i32 35, float %4873, float %4876)  ; FMax(a,b)
  %4878 = fsub fast float 1.000000e+00, %4877
  %4879 = fmul fast float %1428, 0x4012D0A400000000
  %4880 = fadd fast float %4879, 0x3FDB6377A0000000
  %4881 = fmul fast float %4744, %4880
  %4882 = call float @dx.op.unary.f32(i32 7, float %4881)  ; Saturate(value)
  %4883 = fsub fast float %3157, %1553
  %4884 = fsub fast float %3158, %1554
  %4885 = fsub fast float %3159, %1555
  %4886 = call float @dx.op.dot3.f32(i32 55, float %4883, float %4884, float %4885, float %4883, float %4884, float %4885)  ; Dot3(ax,ay,az,bx,by,bz)
  %4887 = call float @dx.op.unary.f32(i32 25, float %4886)  ; Rsqrt(value)
  %4888 = fmul fast float %4887, %4883
  %4889 = fmul fast float %4887, %4884
  %4890 = fmul fast float %4887, %4885
  %4891 = call float @dx.op.dot3.f32(i32 55, float %4843, float %4844, float %4845, float %4888, float %4889, float %4890)  ; Dot3(ax,ay,az,bx,by,bz)
  %4892 = fmul fast float %4891, %4891
  %4893 = call float @dx.op.unary.f32(i32 6, float %4847)  ; FAbs(value)
  %4894 = call float @dx.op.binary.f32(i32 35, float %4882, float 0x3F847AE140000000)  ; FMax(a,b)
  %4895 = fmul fast float %4894, %4894
  %4896 = fmul fast float %4895, %4895
  %4897 = fsub fast float 1.000000e+00, %4896
  %4898 = fmul fast float %4749, %4897
  %4899 = fadd fast float %4898, %4896
  %4900 = bitcast float %4899 to i32
  %4901 = ashr i32 %4900, 1
  %4902 = add nsw i32 %4901, 532487669
  %4903 = bitcast i32 %4902 to float
  %4904 = fadd fast float %4903, %1548
  %4905 = fmul fast float %4896, %4892
  %4906 = fsub fast float 1.000000e+00, %4892
  %4907 = fadd fast float %4906, %4905
  %4908 = fmul fast float %4893, %4893
  %4909 = fmul fast float %4908, %4897
  %4910 = fadd fast float %4909, %4896
  %4911 = bitcast float %4910 to i32
  %4912 = ashr i32 %4911, 1
  %4913 = add nsw i32 %4912, 532487669
  %4914 = bitcast i32 %4913 to float
  %4915 = fadd fast float %4914, %4893
  %4916 = fmul fast float %4907, %4907
  %4917 = fmul fast float %4916, %4904
  %4918 = fmul fast float %4917, %4915
  %4919 = fdiv fast float 0x3FF0A00000000000, %4918
  %4920 = fmul fast float %4919, %4896
  %4921 = fmul fast float %4878, %4847
  %4922 = fmul fast float %4921, %4920
  %4923 = fmul fast float %4772, %4740
  %4924 = fmul fast float %4923, %4801
  %4925 = fmul fast float %4923, %4802
  %4926 = fmul fast float %4923, %4803
  %4927 = fadd fast float %4922, %4924
  %4928 = fadd fast float %4922, %4925
  %4929 = fadd fast float %4922, %4926
  %4930 = fmul fast float %4740, %4723
  %4931 = fmul fast float %4930, %4842
  %4932 = fmul fast float %4740, %4724
  %4933 = fmul fast float %4932, %4842
  %4934 = fmul fast float %4740, %4725
  %4935 = fmul fast float %4934, %4842
  %4936 = fadd fast float %4931, %3144
  %4937 = fadd fast float %4933, %3145
  %4938 = fadd fast float %4935, %3146
  %4939 = fmul fast float %4927, %4723
  %4940 = fmul fast float %4928, %4724
  %4941 = fmul fast float %4929, %4725
  %4942 = fadd fast float %4939, %3150
  %4943 = fadd fast float %4940, %3151
  %4944 = fadd fast float %4941, %3152
  br label %4945

; <label>:4945                                    ; preds = %4721, %4716, %3140
  %4946 = phi float [ %4717, %4721 ], [ 0.000000e+00, %3140 ], [ 0.000000e+00, %4716 ]
  %4947 = phi float [ %4942, %4721 ], [ %3150, %3140 ], [ %3150, %4716 ]
  %4948 = phi float [ %4943, %4721 ], [ %3151, %3140 ], [ %3151, %4716 ]
  %4949 = phi float [ %4944, %4721 ], [ %3152, %3140 ], [ %3152, %4716 ]
  %4950 = phi float [ %4936, %4721 ], [ %3144, %3140 ], [ %3144, %4716 ]
  %4951 = phi float [ %4937, %4721 ], [ %3145, %3140 ], [ %3145, %4716 ]
  %4952 = phi float [ %4938, %4721 ], [ %3146, %3140 ], [ %3146, %4716 ]
  %4953 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4954 = extractvalue %dx.types.CBufRet.i32 %4953, 0
  %4955 = icmp eq i32 %4954, 0
  br i1 %4955, label %5608, label %4956

; <label>:4956                                    ; preds = %4945
  %4957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4958 = extractvalue %dx.types.CBufRet.f32 %4957, 2
  %4959 = extractvalue %dx.types.CBufRet.f32 %4957, 3
  %4960 = fmul fast float %4958, %88
  %4961 = fmul fast float %4959, %89
  %4962 = fptoui float %4960 to i32
  %4963 = fptoui float %4961 to i32
  %4964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4965 = extractvalue %dx.types.CBufRet.f32 %4964, 0
  %4966 = extractvalue %dx.types.CBufRet.f32 %4964, 2
  %4967 = extractvalue %dx.types.CBufRet.f32 %4964, 3
  %4968 = fadd fast float %78, -4.000000e+00
  %4969 = call float @dx.op.binary.f32(i32 35, float %4968, float 0.000000e+00)  ; FMax(a,b)
  %4970 = fadd fast float %4969, %4965
  %4971 = fmul fast float %4970, %4966
  %4972 = call float @dx.op.unary.f32(i32 23, float %4971)  ; Log(value)
  %4973 = fmul fast float %4972, %4967
  %4974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4975 = extractvalue %dx.types.CBufRet.f32 %4974, 2
  %4976 = fmul fast float %4973, %4975
  %4977 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4978 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4979 = extractvalue %dx.types.CBufRet.i32 %4978, 1
  %4980 = add i32 %4979, -1
  %4981 = uitofp i32 %4979 to float
  %4982 = fmul fast float %4981, %4977
  %4983 = fptoui float %4982 to i32
  %4984 = call i32 @dx.op.binary.i32(i32 40, i32 %4983, i32 %4980)  ; UMin(a,b)
  %4985 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4986 = extractvalue %dx.types.CBufRet.i32 %4985, 2
  %4987 = extractvalue %dx.types.CBufRet.i32 %4985, 3
  %4988 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4963, i32 %4986, i32 %4962)  ; UMad(a,b,c)
  %4989 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4984, i32 %4987, i32 %4988)  ; UMad(a,b,c)
  %4990 = add nsw i32 %4954, -1
  %4991 = call i32 @dx.op.binary.i32(i32 37, i32 %4990, i32 0)  ; IMax(a,b)
  %4992 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %4993 = fptoui float %4992 to i32
  %4994 = lshr i32 %4993, 5
  %4995 = call i32 @dx.op.binary.i32(i32 40, i32 %4994, i32 8191)  ; UMin(a,b)
  %4996 = shl i32 %4995, 2
  %4997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4996, i32 undef)  ; BufferLoad(srv,index,wot)
  %4998 = extractvalue %dx.types.ResRet.i32 %4997, 0
  %4999 = lshr i32 %4998, 16
  %5000 = and i32 %4998, 65535
  %5001 = lshr i32 %4998, 21
  %5002 = lshr i32 %5000, 5
  %5003 = call i32 @dx.op.binary.i32(i32 40, i32 %5002, i32 %4991)  ; UMin(a,b)
  %5004 = icmp ugt i32 %5001, %5003
  br i1 %5004, label %5608, label %5005

; <label>:5005                                    ; preds = %4956
  br label %5006

; <label>:5006                                    ; preds = %5598, %5005
  %5007 = phi i32 [ %5605, %5598 ], [ %5001, %5005 ]
  %5008 = phi float [ %5599, %5598 ], [ %4947, %5005 ]
  %5009 = phi float [ %5600, %5598 ], [ %4948, %5005 ]
  %5010 = phi float [ %5601, %5598 ], [ %4949, %5005 ]
  %5011 = phi float [ %5602, %5598 ], [ %4950, %5005 ]
  %5012 = phi float [ %5603, %5598 ], [ %4951, %5005 ]
  %5013 = phi float [ %5604, %5598 ], [ %4952, %5005 ]
  %5014 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5015 = extractvalue %dx.types.CBufRet.i32 %5014, 0
  %5016 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4989, i32 %5015, i32 %5007)  ; UMad(a,b,c)
  %5017 = shl i32 %5016, 2
  %5018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5017, i32 undef)  ; BufferLoad(srv,index,wot)
  %5019 = extractvalue %dx.types.ResRet.i32 %5018, 0
  %5020 = shl i32 %5007, 5
  %5021 = sub nsw i32 %4999, %5020
  %5022 = call i32 @dx.op.binary.i32(i32 37, i32 %5021, i32 0)  ; IMax(a,b)
  %5023 = call i32 @dx.op.binary.i32(i32 38, i32 %5022, i32 31)  ; IMin(a,b)
  %5024 = sub nsw i32 1, %4999
  %5025 = add nsw i32 %5024, %5000
  %5026 = call i32 @dx.op.binary.i32(i32 37, i32 %5025, i32 0)  ; IMax(a,b)
  %5027 = call i32 @dx.op.binary.i32(i32 38, i32 %5026, i32 32)  ; IMin(a,b)
  %5028 = and i32 %5027, 31
  %5029 = shl i32 -1, %5028
  %5030 = xor i32 %5029, -1
  %5031 = and i32 %5023, 31
  %5032 = shl i32 %5030, %5031
  %5033 = icmp eq i32 %5027, 32
  %5034 = select i1 %5033, i32 -1, i32 %5032
  %5035 = and i32 %5034, %5019
  %5036 = icmp eq i32 %5035, 0
  br i1 %5036, label %5598, label %5037

; <label>:5037                                    ; preds = %5006
  br label %5038

; <label>:5038                                    ; preds = %5173, %5037
  %5039 = phi i32 [ %5050, %5173 ], [ %5035, %5037 ]
  %5040 = phi float [ %5174, %5173 ], [ %5008, %5037 ]
  %5041 = phi float [ %5175, %5173 ], [ %5009, %5037 ]
  %5042 = phi float [ %5176, %5173 ], [ %5010, %5037 ]
  %5043 = phi float [ %5177, %5173 ], [ %5011, %5037 ]
  %5044 = phi float [ %5178, %5173 ], [ %5012, %5037 ]
  %5045 = phi float [ %5179, %5173 ], [ %5013, %5037 ]
  %5046 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5039)  ; FirstbitLo(value)
  %5047 = add i32 %5046, %5020
  %5048 = and i32 %5046, 31
  %5049 = shl i32 1, %5048
  %5050 = xor i32 %5049, %5039
  %5051 = mul i32 %5047, 112
  %5052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5051, i32 undef)  ; BufferLoad(srv,index,wot)
  %5053 = extractvalue %dx.types.ResRet.f32 %5052, 0
  %5054 = extractvalue %dx.types.ResRet.f32 %5052, 1
  %5055 = extractvalue %dx.types.ResRet.f32 %5052, 2
  %5056 = or i32 %5051, 12
  %5057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5056, i32 undef)  ; BufferLoad(srv,index,wot)
  %5058 = extractvalue %dx.types.ResRet.f32 %5057, 0
  %5059 = add i32 %5051, 16
  %5060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5059, i32 undef)  ; BufferLoad(srv,index,wot)
  %5061 = extractvalue %dx.types.ResRet.f32 %5060, 0
  %5062 = extractvalue %dx.types.ResRet.f32 %5060, 1
  %5063 = extractvalue %dx.types.ResRet.f32 %5060, 2
  %5064 = add i32 %5051, 28
  %5065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5064, i32 undef)  ; BufferLoad(srv,index,wot)
  %5066 = extractvalue %dx.types.ResRet.i32 %5065, 0
  %5067 = add i32 %5051, 44
  %5068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5067, i32 undef)  ; BufferLoad(srv,index,wot)
  %5069 = extractvalue %dx.types.ResRet.f32 %5068, 0
  %5070 = add i32 %5051, 48
  %5071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5070, i32 undef)  ; BufferLoad(srv,index,wot)
  %5072 = extractvalue %dx.types.ResRet.f32 %5071, 0
  %5073 = extractvalue %dx.types.ResRet.f32 %5071, 1
  %5074 = extractvalue %dx.types.ResRet.f32 %5071, 2
  %5075 = extractvalue %dx.types.ResRet.f32 %5071, 3
  %5076 = add i32 %5051, 64
  %5077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5076, i32 undef)  ; BufferLoad(srv,index,wot)
  %5078 = extractvalue %dx.types.ResRet.f32 %5077, 0
  %5079 = extractvalue %dx.types.ResRet.f32 %5077, 1
  %5080 = extractvalue %dx.types.ResRet.f32 %5077, 2
  %5081 = extractvalue %dx.types.ResRet.f32 %5077, 3
  %5082 = add i32 %5051, 80
  %5083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5082, i32 undef)  ; BufferLoad(srv,index,wot)
  %5084 = extractvalue %dx.types.ResRet.f32 %5083, 1
  %5085 = extractvalue %dx.types.ResRet.f32 %5083, 2
  %5086 = add i32 %5051, 92
  %5087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5086, i32 undef)  ; BufferLoad(srv,index,wot)
  %5088 = extractvalue %dx.types.ResRet.i32 %5087, 0
  %5089 = call float @dx.op.dot3.f32(i32 55, float %5053, float %5054, float %5055, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5090 = select i1 %1541, float %5084, float %5053
  %5091 = select i1 %1541, float %5089, float %5054
  %5092 = select i1 %1541, float %5085, float %5055
  %5093 = and i32 %5088, 65535
  %5094 = uitofp i32 %5093 to float
  %5095 = lshr i32 %5088, 16
  %5096 = uitofp i32 %5095 to float
  %5097 = and i32 %5066, 65535
  %5098 = and i32 %5066, 50331648
  %5099 = icmp slt i32 %5066, 0
  %5100 = icmp eq i32 %5098, 33554432
  %5101 = fsub fast float %5072, %143
  %5102 = fsub fast float %5073, %144
  %5103 = fsub fast float %5074, %145
  %5104 = call float @dx.op.dot3.f32(i32 55, float %5101, float %5102, float %5103, float %5101, float %5102, float %5103)  ; Dot3(ax,ay,az,bx,by,bz)
  %5105 = call float @dx.op.unary.f32(i32 24, float %5104)  ; Sqrt(value)
  %5106 = fdiv fast float 1.000000e+00, %5105
  %5107 = fmul fast float %5106, %5101
  %5108 = fmul fast float %5106, %5102
  %5109 = fmul fast float %5106, %5103
  %5110 = fadd fast float %5105, %5058
  %5111 = fdiv fast float 1.000000e+00, %5110
  %5112 = fmul float %5069, %5111
  %5113 = fmul float %5112, %5112
  %5114 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  br i1 %5100, label %5115, label %5136

; <label>:5115                                    ; preds = %5038
  %5116 = fmul fast float %5080, %5061
  %5117 = fmul fast float %5080, %5062
  %5118 = fmul fast float %5080, %5063
  %5119 = fadd fast float %5101, %5116
  %5120 = fadd fast float %5102, %5117
  %5121 = fadd fast float %5103, %5118
  %5122 = call float @dx.op.dot3.f32(i32 55, float %5119, float %5120, float %5121, float %5119, float %5120, float %5121)  ; Dot3(ax,ay,az,bx,by,bz)
  %5123 = call float @dx.op.unary.f32(i32 25, float %5122)  ; Rsqrt(value)
  %5124 = fmul fast float %5123, %5119
  %5125 = fmul fast float %5123, %5120
  %5126 = fmul fast float %5123, %5121
  %5127 = fsub fast float %143, %5072
  %5128 = fsub fast float %144, %5073
  %5129 = fsub fast float %145, %5074
  %5130 = fsub fast float -0.000000e+00, %5127
  %5131 = fsub fast float -0.000000e+00, %5128
  %5132 = fsub fast float -0.000000e+00, %5129
  %5133 = call float @dx.op.dot3.f32(i32 55, float %5130, float %5131, float %5132, float %5061, float %5062, float %5063)  ; Dot3(ax,ay,az,bx,by,bz)
  %5134 = fcmp fast ogt float %5133, 0.000000e+00
  %5135 = uitofp i1 %5134 to float
  br label %5136

; <label>:5136                                    ; preds = %5115, %5038
  %5137 = phi float [ %5135, %5115 ], [ 1.000000e+00, %5038 ]
  %5138 = phi float [ %5124, %5115 ], [ %5107, %5038 ]
  %5139 = phi float [ %5125, %5115 ], [ %5108, %5038 ]
  %5140 = phi float [ %5126, %5115 ], [ %5109, %5038 ]
  %5141 = call float @dx.op.dot3.f32(i32 55, float %5061, float %5062, float %5063, float %5138, float %5139, float %5140)  ; Dot3(ax,ay,az,bx,by,bz)
  %5142 = fmul fast float %5141, %5141
  %5143 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5144 = fsub fast float 1.000000e+00, %5143
  %5145 = fmul fast float %5144, 5.000000e-01
  %5146 = fcmp fast ogt float %5141, 0.000000e+00
  %5147 = fsub fast float 1.000000e+00, %5145
  %5148 = select i1 %5146, float %5145, float %5147
  %5149 = fmul fast float %5148, %5096
  %5150 = fadd fast float %5149, %5094
  %5151 = fmul fast float %5150, 0x3EF0001000000000
  %5152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %58, float %5151, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5153 = extractvalue %dx.types.ResRet.f32 %5152, 0
  %5154 = fmul fast float %5141, %5078
  %5155 = fadd fast float %5154, %5079
  %5156 = call float @dx.op.unary.f32(i32 7, float %5155)  ; Saturate(value)
  %5157 = select i1 %5100, float 1.000000e+00, float %5156
  %5158 = select i1 %5100, float %5156, float 1.000000e+00
  %5159 = fmul fast float %5105, %5075
  %5160 = fsub fast float 1.000000e+00, %5159
  %5161 = fmul fast float %5160, %5081
  %5162 = call float @dx.op.unary.f32(i32 7, float %5161)  ; Saturate(value)
  %5163 = fmul fast float %5162, %5158
  %5164 = fmul fast float %5163, 2.000000e+00
  %5165 = fsub fast float 3.000000e+00, %5164
  %5166 = fmul fast float %5153, %5137
  %5167 = fmul fast float %5163, %5163
  %5168 = fmul fast float %5167, %5166
  %5169 = fmul fast float %5168, %5165
  %5170 = call float @dx.op.binary.f32(i32 36, float %5169, float %5169)  ; FMin(a,b)
  %5171 = call float @dx.op.binary.f32(i32 36, float %5169, float %5170)  ; FMin(a,b)
  %5172 = fcmp fast ogt float %5171, 0.000000e+00
  br i1 %5172, label %5181, label %5173, !dx.controlflow.hints !146

; <label>:5173                                    ; preds = %5571, %5320, %5136
  %5174 = phi float [ %5040, %5320 ], [ %5040, %5136 ], [ %5594, %5571 ]
  %5175 = phi float [ %5041, %5320 ], [ %5041, %5136 ], [ %5595, %5571 ]
  %5176 = phi float [ %5042, %5320 ], [ %5042, %5136 ], [ %5596, %5571 ]
  %5177 = phi float [ %5043, %5320 ], [ %5043, %5136 ], [ %5588, %5571 ]
  %5178 = phi float [ %5044, %5320 ], [ %5044, %5136 ], [ %5589, %5571 ]
  %5179 = phi float [ %5045, %5320 ], [ %5045, %5136 ], [ %5590, %5571 ]
  %5180 = icmp eq i32 %5039, %5049
  br i1 %5180, label %5597, label %5038

; <label>:5181                                    ; preds = %5136
  %5182 = icmp eq i32 %5097, 255
  br i1 %5182, label %5320, label %5183, !dx.controlflow.hints !147

; <label>:5183                                    ; preds = %5181
  %5184 = mul nuw nsw i32 %5097, 176
  %5185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5184, i32 undef)  ; BufferLoad(srv,index,wot)
  %5186 = extractvalue %dx.types.ResRet.f32 %5185, 0
  %5187 = extractvalue %dx.types.ResRet.f32 %5185, 1
  %5188 = extractvalue %dx.types.ResRet.f32 %5185, 2
  %5189 = extractvalue %dx.types.ResRet.f32 %5185, 3
  %5190 = add nuw nsw i32 %5184, 16
  %5191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5190, i32 undef)  ; BufferLoad(srv,index,wot)
  %5192 = extractvalue %dx.types.ResRet.f32 %5191, 0
  %5193 = extractvalue %dx.types.ResRet.f32 %5191, 1
  %5194 = add nuw nsw i32 %5184, 32
  %5195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5194, i32 undef)  ; BufferLoad(srv,index,wot)
  %5196 = extractvalue %dx.types.ResRet.f32 %5195, 0
  %5197 = extractvalue %dx.types.ResRet.f32 %5195, 1
  %5198 = add nuw nsw i32 %5184, 48
  %5199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5198, i32 undef)  ; BufferLoad(srv,index,wot)
  %5200 = extractvalue %dx.types.ResRet.f32 %5199, 0
  %5201 = extractvalue %dx.types.ResRet.f32 %5199, 1
  %5202 = extractvalue %dx.types.ResRet.f32 %5199, 2
  %5203 = extractvalue %dx.types.ResRet.f32 %5199, 3
  %5204 = add nuw nsw i32 %5184, 64
  %5205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5204, i32 undef)  ; BufferLoad(srv,index,wot)
  %5206 = extractvalue %dx.types.ResRet.f32 %5205, 0
  %5207 = extractvalue %dx.types.ResRet.f32 %5205, 1
  %5208 = extractvalue %dx.types.ResRet.f32 %5205, 2
  %5209 = extractvalue %dx.types.ResRet.f32 %5205, 3
  %5210 = add nuw nsw i32 %5184, 80
  %5211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5210, i32 undef)  ; BufferLoad(srv,index,wot)
  %5212 = extractvalue %dx.types.ResRet.f32 %5211, 0
  %5213 = extractvalue %dx.types.ResRet.f32 %5211, 1
  %5214 = extractvalue %dx.types.ResRet.f32 %5211, 2
  %5215 = extractvalue %dx.types.ResRet.f32 %5211, 3
  %5216 = add nuw nsw i32 %5184, 96
  %5217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5216, i32 undef)  ; BufferLoad(srv,index,wot)
  %5218 = extractvalue %dx.types.ResRet.f32 %5217, 0
  %5219 = extractvalue %dx.types.ResRet.f32 %5217, 1
  %5220 = extractvalue %dx.types.ResRet.f32 %5217, 2
  %5221 = extractvalue %dx.types.ResRet.f32 %5217, 3
  %5222 = bitcast float %5193 to i32
  %5223 = fmul fast float %5200, %143
  %5224 = call float @dx.op.tertiary.f32(i32 46, float %144, float %5206, float %5223)  ; FMad(a,b,c)
  %5225 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5212, float %5224)  ; FMad(a,b,c)
  %5226 = fadd fast float %5225, %5218
  %5227 = fmul fast float %5201, %143
  %5228 = call float @dx.op.tertiary.f32(i32 46, float %144, float %5207, float %5227)  ; FMad(a,b,c)
  %5229 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5213, float %5228)  ; FMad(a,b,c)
  %5230 = fadd fast float %5229, %5219
  %5231 = fmul fast float %5202, %143
  %5232 = call float @dx.op.tertiary.f32(i32 46, float %144, float %5208, float %5231)  ; FMad(a,b,c)
  %5233 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5214, float %5232)  ; FMad(a,b,c)
  %5234 = fadd fast float %5233, %5220
  %5235 = fmul fast float %5203, %143
  %5236 = call float @dx.op.tertiary.f32(i32 46, float %144, float %5209, float %5235)  ; FMad(a,b,c)
  %5237 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5215, float %5236)  ; FMad(a,b,c)
  %5238 = fadd fast float %5237, %5221
  %5239 = fdiv fast float %5226, %5238
  %5240 = fdiv fast float %5230, %5238
  %5241 = fdiv fast float %5234, %5238
  %5242 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5241)  ; FMax(a,b)
  %5243 = fmul fast float %893, 0x401921FB60000000
  %5244 = call float @dx.op.unary.f32(i32 13, float %5243)  ; Sin(value)
  %5245 = call float @dx.op.unary.f32(i32 12, float %5243)  ; Cos(value)
  %5246 = fmul fast float %5245, %5197
  %5247 = call float @dx.op.tertiary.f32(i32 46, float %5244, float %5197, float 0.000000e+00)  ; FMad(a,b,c)
  %5248 = fmul fast float %5197, %5244
  %5249 = fsub fast float -0.000000e+00, %5248
  %5250 = call float @dx.op.tertiary.f32(i32 46, float %5245, float %5197, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5251

; <label>:5251                                    ; preds = %5251, %5183
  %5252 = phi float [ 0.000000e+00, %5183 ], [ %5284, %5251 ]
  %5253 = phi float [ 0.000000e+00, %5183 ], [ %5286, %5251 ]
  %5254 = phi i32 [ 0, %5183 ], [ %5287, %5251 ]
  %5255 = mul i32 %5254, 2
  %5256 = add i32 0, %5255
  %5257 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5256
  %5258 = load float, float* %5257, align 4
  %5259 = mul i32 %5254, 2
  %5260 = add i32 1, %5259
  %5261 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5260
  %5262 = load float, float* %5261, align 4
  %5263 = fmul fast float %5246, %5258
  %5264 = call float @dx.op.tertiary.f32(i32 46, float %5262, float %5249, float %5263)  ; FMad(a,b,c)
  %5265 = fmul fast float %5258, %5247
  %5266 = call float @dx.op.tertiary.f32(i32 46, float %5262, float %5250, float %5265)  ; FMad(a,b,c)
  %5267 = fadd fast float %5264, %5239
  %5268 = fadd fast float %5266, %5240
  %5269 = fmul fast float %5267, %5192
  %5270 = fmul fast float %5268, %5192
  %5271 = call float @dx.op.binary.f32(i32 35, float %5269, float %5188)  ; FMax(a,b)
  %5272 = call float @dx.op.binary.f32(i32 35, float %5270, float %5188)  ; FMax(a,b)
  %5273 = call float @dx.op.binary.f32(i32 36, float %5271, float %5189)  ; FMin(a,b)
  %5274 = call float @dx.op.binary.f32(i32 36, float %5272, float %5189)  ; FMin(a,b)
  %5275 = fadd fast float %5273, %5186
  %5276 = fadd fast float %5274, %5187
  %5277 = uitofp i32 %5222 to float
  %5278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %59, float %5275, float %5276, float %5277, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5279 = extractvalue %dx.types.ResRet.f32 %5278, 0
  %5280 = fsub fast float %5279, %5242
  %5281 = fsub fast float %5280, %5196
  %5282 = fcmp fast ogt float %5281, 0.000000e+00
  %5283 = select i1 %5282, float 1.000000e+00, float 0.000000e+00
  %5284 = fadd fast float %5283, %5252
  %5285 = select i1 %5282, float %5281, float 0.000000e+00
  %5286 = fadd fast float %5285, %5253
  %5287 = add nuw nsw i32 %5254, 1
  %5288 = icmp eq i32 %5287, 8
  br i1 %5288, label %5289, label %5251

; <label>:5289                                    ; preds = %5251
  %5290 = fdiv fast float 1.000000e+00, %5284
  %5291 = fmul fast float %5290, %5286
  %5292 = fdiv fast float 1.000000e+00, %5242
  %5293 = fmul fast float %5291, %5292
  %5294 = call float @dx.op.unary.f32(i32 7, float %5293)  ; Saturate(value)
  %5295 = call float @dx.op.binary.f32(i32 35, float %5294, float 0.000000e+00)  ; FMax(a,b)
  %5296 = fmul fast float %5284, 1.250000e-01
  %5297 = call float @dx.op.unary.f32(i32 7, float %5296)  ; Saturate(value)
  %5298 = fmul fast float %5297, 2.000000e+00
  %5299 = fadd fast float %5298, -1.000000e+00
  %5300 = fcmp fast ogt float %5299, 0.000000e+00
  %5301 = fcmp fast olt float %5299, 0.000000e+00
  %5302 = zext i1 %5300 to i32
  %5303 = zext i1 %5301 to i32
  %5304 = sub nsw i32 %5302, %5303
  %5305 = sitofp i32 %5304 to float
  %5306 = fmul fast float %5305, %5299
  %5307 = fsub fast float 1.000000e+00, %5306
  %5308 = fmul fast float %5307, %5307
  %5309 = fmul fast float %5308, %5307
  %5310 = fsub fast float %5307, %5309
  %5311 = fmul fast float %5310, %5295
  %5312 = fsub fast float 1.000000e+00, %5309
  %5313 = fsub fast float %5312, %5311
  %5314 = fmul fast float %5305, 5.000000e-01
  %5315 = fmul fast float %5314, %5313
  %5316 = fsub fast float -5.000000e-01, %5315
  %5317 = fmul fast float %5316, %5157
  %5318 = fadd fast float %5317, 1.000000e+00
  %5319 = fmul fast float %5318, %5169
  br label %5320

; <label>:5320                                    ; preds = %5289, %5181
  %5321 = phi float [ %5319, %5289 ], [ %5169, %5181 ]
  %5322 = call float @dx.op.binary.f32(i32 36, float %5321, float %5321)  ; FMin(a,b)
  %5323 = call float @dx.op.binary.f32(i32 36, float %5321, float %5322)  ; FMin(a,b)
  %5324 = fcmp fast ogt float %5323, 0.000000e+00
  br i1 %5324, label %5325, label %5173, !dx.controlflow.hints !148

; <label>:5325                                    ; preds = %5320
  %5326 = bitcast i32 %1559 to float
  %5327 = fmul fast float %5321, %5090
  %5328 = fmul fast float %5321, %5091
  %5329 = fmul fast float %5321, %5092
  %5330 = fsub fast float %5107, %1434
  %5331 = fsub fast float %5108, %1435
  %5332 = fsub fast float %5109, %1436
  %5333 = call float @dx.op.dot3.f32(i32 55, float %5330, float %5331, float %5332, float %5330, float %5331, float %5332)  ; Dot3(ax,ay,az,bx,by,bz)
  %5334 = call float @dx.op.unary.f32(i32 25, float %5333)  ; Rsqrt(value)
  %5335 = fmul fast float %5334, %5330
  %5336 = fmul fast float %5334, %5331
  %5337 = fmul fast float %5334, %5332
  %5338 = call float @dx.op.dot3.f32(i32 55, float %5107, float %5108, float %5109, float %1406, float %1407, float %1408)  ; Dot3(ax,ay,az,bx,by,bz)
  %5339 = call float @dx.op.dot3.f32(i32 55, float %1543, float %1544, float %1545, float %5335, float %5336, float %5337)  ; Dot3(ax,ay,az,bx,by,bz)
  %5340 = call float @dx.op.unary.f32(i32 7, float %5338)  ; Saturate(value)
  %5341 = fmul fast float %5340, %5114
  %5342 = fmul fast float %5340, %5340
  %5343 = fmul fast float %5342, %5326
  %5344 = call float @dx.op.unary.f32(i32 7, float %5343)  ; Saturate(value)
  %5345 = fmul fast float %5341, %5344
  %5346 = bitcast float %5104 to i32
  %5347 = ashr i32 %5346, 1
  %5348 = sub nsw i32 1597463007, %5347
  %5349 = bitcast i32 %5348 to float
  %5350 = fmul fast float %5349, %5101
  %5351 = fmul fast float %5349, %5102
  %5352 = fmul fast float %5349, %5103
  %5353 = fsub fast float %5350, %1434
  %5354 = fsub fast float %5351, %1435
  %5355 = fsub fast float %5352, %1436
  %5356 = call float @dx.op.dot3.f32(i32 55, float %5353, float %5354, float %5355, float %5353, float %5354, float %5355)  ; Dot3(ax,ay,az,bx,by,bz)
  %5357 = call float @dx.op.unary.f32(i32 25, float %5356)  ; Rsqrt(value)
  %5358 = fmul fast float %5353, %5357
  %5359 = fmul fast float %5354, %5357
  %5360 = fmul fast float %5355, %5357
  %5361 = call float @dx.op.dot3.f32(i32 55, float %1406, float %1407, float %1408, float %5358, float %5359, float %5360)  ; Dot3(ax,ay,az,bx,by,bz)
  %5362 = fmul fast float %5361, %5361
  %5363 = call float @dx.op.unary.f32(i32 6, float %5338)  ; FAbs(value)
  %5364 = fsub fast float 1.000000e+00, %1489
  %5365 = call float @dx.op.binary.f32(i32 35, float %5364, float 0x3F847AE140000000)  ; FMax(a,b)
  %5366 = fmul fast float %5365, %5365
  %5367 = fmul fast float %5366, %5366
  %5368 = fsub fast float 1.000000e+00, %5367
  %5369 = fmul fast float %1548, %1548
  %5370 = fmul fast float %5369, %5368
  %5371 = fadd fast float %5370, %5367
  %5372 = bitcast float %5371 to i32
  %5373 = ashr i32 %5372, 1
  %5374 = add nsw i32 %5373, 532487669
  %5375 = bitcast i32 %5374 to float
  %5376 = fadd fast float %5375, %1548
  %5377 = fmul fast float %5367, %5362
  %5378 = fsub fast float 1.000000e+00, %5362
  %5379 = fadd fast float %5378, %5377
  %5380 = fmul fast float %5363, %5363
  %5381 = fmul fast float %5380, %5368
  %5382 = fadd fast float %5381, %5367
  %5383 = bitcast float %5382 to i32
  %5384 = ashr i32 %5383, 1
  %5385 = add nsw i32 %5384, 532487669
  %5386 = bitcast i32 %5385 to float
  %5387 = fadd fast float %5386, %5363
  %5388 = fmul fast float %5379, %5379
  %5389 = fmul fast float %5388, %5376
  %5390 = fmul fast float %5389, %5387
  %5391 = fdiv fast float 1.000000e+00, %5390
  %5392 = bitcast float %5367 to i32
  %5393 = sitofp i32 %5392 to float
  %5394 = fmul fast float %5393, 0x3FE7F73180000000
  %5395 = fadd fast float %5394, 0x41AFE27C40000000
  %5396 = fptosi float %5395 to i32
  %5397 = bitcast i32 %5396 to float
  %5398 = fmul fast float %5069, 0x3FD80E9D60000000
  %5399 = fmul fast float %5398, %5349
  %5400 = fadd fast float %5397, %5399
  %5401 = bitcast float %5400 to i32
  %5402 = sub nsw i32 2129859010, %5401
  %5403 = bitcast i32 %5402 to float
  %5404 = fmul fast float %5367, %5391
  %5405 = fmul fast float %5404, %5397
  %5406 = fmul fast float %5405, %5403
  %5407 = call float @dx.op.unary.f32(i32 6, float %5339)  ; FAbs(value)
  %5408 = fsub fast float 1.000000e+00, %5407
  %5409 = bitcast float %5408 to i32
  %5410 = sitofp i32 %5409 to float
  %5411 = fmul fast float %5410, 5.000000e+00
  %5412 = fadd fast float %5411, 0xC1EFBF8940000000
  %5413 = fptosi float %5412 to i32
  %5414 = bitcast i32 %5413 to float
  %5415 = fmul fast float %5414, %2374
  %5416 = fmul fast float %5414, %2375
  %5417 = fmul fast float %5414, %2376
  %5418 = fadd fast float %5415, %1427
  %5419 = fadd fast float %5416, %1428
  %5420 = fadd fast float %5417, %1546
  %5421 = select i1 %2387, float %5407, float 0.000000e+00
  %5422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %58, float %2384, float %5421, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5423 = extractvalue %dx.types.ResRet.f32 %5422, 0
  %5424 = extractvalue %dx.types.ResRet.f32 %5422, 1
  %5425 = extractvalue %dx.types.ResRet.f32 %5422, 2
  %5426 = fadd fast float %5423, -5.000000e-01
  %5427 = fadd fast float %5424, -5.000000e-01
  %5428 = fadd fast float %5425, -5.000000e-01
  %5429 = fmul fast float %2399, %5426
  %5430 = fmul fast float %2403, %5427
  %5431 = fmul fast float %2407, %5428
  %5432 = fadd fast float %5418, %5429
  %5433 = fadd fast float %5419, %5430
  %5434 = fadd fast float %5420, %5431
  %5435 = call float @dx.op.unary.f32(i32 7, float %5432)  ; Saturate(value)
  %5436 = call float @dx.op.unary.f32(i32 7, float %5433)  ; Saturate(value)
  %5437 = call float @dx.op.unary.f32(i32 7, float %5434)  ; Saturate(value)
  %5438 = fmul fast float %5338, 9.843750e-01
  %5439 = fmul fast float %1489, 9.843750e-01
  %5440 = fadd fast float %5438, 7.812500e-03
  %5441 = fadd fast float %5439, 7.812500e-03
  %5442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %5440, float %5441, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5443 = extractvalue %dx.types.ResRet.f32 %5442, 2
  %5444 = extractvalue %dx.types.ResRet.f32 %5442, 3
  %5445 = select i1 %2387, float %5338, float 0.000000e+00
  %5446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %58, float %2384, float %5445, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5447 = extractvalue %dx.types.ResRet.f32 %5446, 0
  %5448 = extractvalue %dx.types.ResRet.f32 %5446, 1
  %5449 = extractvalue %dx.types.ResRet.f32 %5446, 2
  %5450 = fadd fast float %5447, -5.000000e-01
  %5451 = fadd fast float %5448, -5.000000e-01
  %5452 = fadd fast float %5449, -5.000000e-01
  %5453 = fmul fast float %2374, 4.000000e+00
  %5454 = fmul fast float %5453, %2386
  %5455 = fmul fast float %5454, %5450
  %5456 = fmul fast float %2375, 4.000000e+00
  %5457 = fmul fast float %5456, %2386
  %5458 = fmul fast float %5457, %5451
  %5459 = fmul fast float %2376, 4.000000e+00
  %5460 = fmul fast float %5459, %2386
  %5461 = fmul fast float %5460, %5452
  %5462 = fadd fast float %5455, %5443
  %5463 = fmul fast float %5462, %1427
  %5464 = fadd fast float %5463, %5444
  %5465 = fadd fast float %5458, %5443
  %5466 = fmul fast float %5465, %1428
  %5467 = fadd fast float %5466, %5444
  %5468 = fadd fast float %5461, %5443
  %5469 = fmul fast float %5468, %1546
  %5470 = fadd fast float %5469, %5444
  %5471 = call float @dx.op.unary.f32(i32 7, float %5464)  ; Saturate(value)
  %5472 = call float @dx.op.unary.f32(i32 7, float %5467)  ; Saturate(value)
  %5473 = call float @dx.op.unary.f32(i32 7, float %5470)  ; Saturate(value)
  %5474 = call float @dx.op.binary.f32(i32 35, float %5472, float %5473)  ; FMax(a,b)
  %5475 = call float @dx.op.binary.f32(i32 35, float %5471, float %5474)  ; FMax(a,b)
  %5476 = fsub fast float 1.000000e+00, %5475
  %5477 = fsub fast float -0.000000e+00, %1406
  %5478 = fsub fast float -0.000000e+00, %1407
  %5479 = fsub fast float -0.000000e+00, %1408
  %5480 = call float @dx.op.dot3.f32(i32 55, float %5107, float %5108, float %5109, float %5477, float %5478, float %5479)  ; Dot3(ax,ay,az,bx,by,bz)
  %5481 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  %5482 = fmul fast float %5481, 9.843750e-01
  %5483 = fadd fast float %5482, 7.812500e-03
  %5484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %5483, float %5441, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5485 = extractvalue %dx.types.ResRet.f32 %5484, 2
  %5486 = extractvalue %dx.types.ResRet.f32 %5484, 3
  %5487 = select i1 %2387, float %5481, float 0.000000e+00
  %5488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %58, float %2384, float %5487, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5489 = fmul fast float %1428, 0x4012D0A400000000
  %5490 = fadd fast float %5489, 0x3FDB6377A0000000
  %5491 = fmul fast float %5364, %5490
  %5492 = call float @dx.op.unary.f32(i32 7, float %5491)  ; Saturate(value)
  %5493 = fsub fast float %5350, %1553
  %5494 = fsub fast float %5351, %1554
  %5495 = fsub fast float %5352, %1555
  %5496 = call float @dx.op.dot3.f32(i32 55, float %5493, float %5494, float %5495, float %5493, float %5494, float %5495)  ; Dot3(ax,ay,az,bx,by,bz)
  %5497 = call float @dx.op.unary.f32(i32 25, float %5496)  ; Rsqrt(value)
  %5498 = fmul fast float %5493, %5497
  %5499 = fmul fast float %5494, %5497
  %5500 = fmul fast float %5495, %5497
  %5501 = call float @dx.op.dot3.f32(i32 55, float %5477, float %5478, float %5479, float %5498, float %5499, float %5500)  ; Dot3(ax,ay,az,bx,by,bz)
  %5502 = fmul fast float %5501, %5501
  %5503 = call float @dx.op.unary.f32(i32 6, float %5481)  ; FAbs(value)
  %5504 = call float @dx.op.binary.f32(i32 35, float %5492, float 0x3F847AE140000000)  ; FMax(a,b)
  %5505 = fmul fast float %5504, %5504
  %5506 = fmul fast float %5505, %5505
  %5507 = fsub fast float 1.000000e+00, %5506
  %5508 = fmul fast float %5506, %5502
  %5509 = fsub fast float 1.000000e+00, %5502
  %5510 = fadd fast float %5509, %5508
  %5511 = bitcast float %5506 to i32
  %5512 = sitofp i32 %5511 to float
  %5513 = fmul fast float %5512, 0x3FE7F73180000000
  %5514 = fadd fast float %5513, 0x41AFE27C40000000
  %5515 = fptosi float %5514 to i32
  %5516 = bitcast i32 %5515 to float
  br i1 %5099, label %5517, label %5571

; <label>:5517                                    ; preds = %5325
  %5518 = fmul fast float %5510, %5510
  %5519 = fmul fast float %5369, %5507
  %5520 = fadd fast float %5519, %5506
  %5521 = bitcast float %5520 to i32
  %5522 = ashr i32 %5521, 1
  %5523 = add nsw i32 %5522, 532487669
  %5524 = bitcast i32 %5523 to float
  %5525 = fadd fast float %5524, %1548
  %5526 = fmul fast float %5518, %5525
  %5527 = fmul fast float %5503, %5503
  %5528 = fmul fast float %5527, %5507
  %5529 = fadd fast float %5528, %5506
  %5530 = bitcast float %5529 to i32
  %5531 = ashr i32 %5530, 1
  %5532 = add nsw i32 %5531, 532487669
  %5533 = bitcast i32 %5532 to float
  %5534 = fadd fast float %5533, %5503
  %5535 = fmul fast float %5526, %5534
  %5536 = fdiv fast float 1.000000e+00, %5535
  %5537 = fmul fast float %5506, %5536
  %5538 = fmul fast float %5537, %5516
  %5539 = fadd fast float %5516, %5399
  %5540 = bitcast float %5539 to i32
  %5541 = sub nsw i32 2129859010, %5540
  %5542 = bitcast i32 %5541 to float
  %5543 = fmul fast float %5538, %5542
  %5544 = extractvalue %dx.types.ResRet.f32 %5488, 0
  %5545 = fadd fast float %5544, -5.000000e-01
  %5546 = fmul fast float %5454, %5545
  %5547 = fadd fast float %5546, %5485
  %5548 = fmul fast float %5547, %1427
  %5549 = fadd fast float %5548, %5486
  %5550 = call float @dx.op.unary.f32(i32 7, float %5549)  ; Saturate(value)
  %5551 = extractvalue %dx.types.ResRet.f32 %5488, 1
  %5552 = fadd fast float %5551, -5.000000e-01
  %5553 = fmul fast float %5457, %5552
  %5554 = fadd fast float %5553, %5485
  %5555 = fmul fast float %5554, %1428
  %5556 = fadd fast float %5555, %5486
  %5557 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  %5558 = extractvalue %dx.types.ResRet.f32 %5488, 2
  %5559 = fadd fast float %5558, -5.000000e-01
  %5560 = fmul fast float %5460, %5559
  %5561 = fadd fast float %5560, %5485
  %5562 = fmul fast float %5561, %1546
  %5563 = fadd fast float %5562, %5486
  %5564 = call float @dx.op.unary.f32(i32 7, float %5563)  ; Saturate(value)
  %5565 = call float @dx.op.binary.f32(i32 35, float %5557, float %5564)  ; FMax(a,b)
  %5566 = call float @dx.op.binary.f32(i32 35, float %5550, float %5565)  ; FMax(a,b)
  %5567 = fsub fast float 1.000000e+00, %5566
  %5568 = fmul fast float %5481, %5114
  %5569 = fmul fast float %5568, %5567
  %5570 = fmul fast float %5569, %5543
  br label %5571

; <label>:5571                                    ; preds = %5517, %5325
  %5572 = phi float [ %5570, %5517 ], [ 0.000000e+00, %5325 ]
  %5573 = fmul fast float %5435, %5345
  %5574 = fmul fast float %5573, %5406
  %5575 = fmul fast float %5436, %5345
  %5576 = fmul fast float %5575, %5406
  %5577 = fmul fast float %5437, %5345
  %5578 = fmul fast float %5577, %5406
  %5579 = fadd fast float %5572, %5574
  %5580 = fadd fast float %5572, %5576
  %5581 = fadd fast float %5572, %5578
  %5582 = fmul fast float %5345, %5327
  %5583 = fmul fast float %5582, %5476
  %5584 = fmul fast float %5345, %5328
  %5585 = fmul fast float %5584, %5476
  %5586 = fmul fast float %5345, %5329
  %5587 = fmul fast float %5586, %5476
  %5588 = fadd fast float %5583, %5043
  %5589 = fadd fast float %5585, %5044
  %5590 = fadd fast float %5587, %5045
  %5591 = fmul fast float %5579, %5327
  %5592 = fmul fast float %5580, %5328
  %5593 = fmul fast float %5581, %5329
  %5594 = fadd fast float %5591, %5040
  %5595 = fadd fast float %5592, %5041
  %5596 = fadd fast float %5593, %5042
  br label %5173

; <label>:5597                                    ; preds = %5173
  br label %5598

; <label>:5598                                    ; preds = %5597, %5006
  %5599 = phi float [ %5008, %5006 ], [ %5174, %5597 ]
  %5600 = phi float [ %5009, %5006 ], [ %5175, %5597 ]
  %5601 = phi float [ %5010, %5006 ], [ %5176, %5597 ]
  %5602 = phi float [ %5011, %5006 ], [ %5177, %5597 ]
  %5603 = phi float [ %5012, %5006 ], [ %5178, %5597 ]
  %5604 = phi float [ %5013, %5006 ], [ %5179, %5597 ]
  %5605 = add i32 %5007, 1
  %5606 = icmp ugt i32 %5605, %5003
  br i1 %5606, label %5607, label %5006

; <label>:5607                                    ; preds = %5598
  br label %5608

; <label>:5608                                    ; preds = %5607, %4956, %4945
  %5609 = phi float [ %4947, %4945 ], [ %4947, %4956 ], [ %5599, %5607 ]
  %5610 = phi float [ %4948, %4945 ], [ %4948, %4956 ], [ %5600, %5607 ]
  %5611 = phi float [ %4949, %4945 ], [ %4949, %4956 ], [ %5601, %5607 ]
  %5612 = phi float [ %4950, %4945 ], [ %4950, %4956 ], [ %5602, %5607 ]
  %5613 = phi float [ %4951, %4945 ], [ %4951, %4956 ], [ %5603, %5607 ]
  %5614 = phi float [ %4952, %4945 ], [ %4952, %4956 ], [ %5604, %5607 ]
  %5615 = and i32 %1485, 255
  %5616 = uitofp i32 %5615 to float
  %5617 = fmul fast float %5616, 0x3F70101020000000
  %5618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5619 = extractvalue %dx.types.CBufRet.f32 %5618, 2
  %5620 = extractvalue %dx.types.CBufRet.f32 %5618, 3
  %5621 = fmul fast float %113, %5619
  %5622 = fmul fast float %115, %5620
  %5623 = fsub fast float 1.000000e+00, %5621
  %5624 = fsub fast float 1.000000e+00, %5622
  %5625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5626 = extractvalue %dx.types.CBufRet.f32 %5625, 0
  %5627 = extractvalue %dx.types.CBufRet.f32 %5625, 1
  %5628 = extractvalue %dx.types.CBufRet.f32 %5625, 2
  %5629 = fmul fast float %5623, %5626
  %5630 = fmul fast float %5623, %5627
  %5631 = fmul fast float %5623, %5628
  %5632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5633 = extractvalue %dx.types.CBufRet.f32 %5632, 0
  %5634 = extractvalue %dx.types.CBufRet.f32 %5632, 1
  %5635 = extractvalue %dx.types.CBufRet.f32 %5632, 2
  %5636 = fmul fast float %5624, %5633
  %5637 = fmul fast float %5624, %5634
  %5638 = fmul fast float %5624, %5635
  %5639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5640 = extractvalue %dx.types.CBufRet.f32 %5639, 0
  %5641 = extractvalue %dx.types.CBufRet.f32 %5639, 1
  %5642 = extractvalue %dx.types.CBufRet.f32 %5639, 2
  %5643 = fadd fast float %5636, %5640
  %5644 = fadd fast float %5643, %5629
  %5645 = fadd fast float %5637, %5641
  %5646 = fadd fast float %5645, %5630
  %5647 = fadd fast float %5638, %5642
  %5648 = fadd fast float %5647, %5631
  %5649 = fmul fast float %5644, %78
  %5650 = fmul fast float %5646, %78
  %5651 = fmul fast float %5648, %78
  %5652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5653 = extractvalue %dx.types.CBufRet.f32 %5652, 2
  %5654 = extractvalue %dx.types.CBufRet.f32 %5652, 3
  %5655 = fmul fast float %5653, %88
  %5656 = fmul fast float %5654, %89
  %5657 = fptoui float %88 to i32
  %5658 = fptoui float %89 to i32
  %5659 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %43, i32 0, i32 %5657, i32 %5658, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5660 = extractvalue %dx.types.ResRet.f32 %5659, 0
  %5661 = fcmp fast olt float %5660, -1.000000e+00
  %5662 = fcmp fast ogt float %5660, -1.000000e+00
  %5663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5664 = extractvalue %dx.types.CBufRet.f32 %5663, 1
  %5665 = select i1 %5662, float %5664, float 1.000000e+00
  %5666 = fadd fast float %5660, 1.000000e+00
  %5667 = fmul fast float %5665, %5666
  %5668 = call float @dx.op.unary.f32(i32 6, float %5667)  ; FAbs(value)
  %5669 = fsub fast float %5668, %78
  %5670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %5671 = extractvalue %dx.types.CBufRet.f32 %5670, 2
  %5672 = fsub fast float %5669, %5671
  %5673 = extractvalue %dx.types.CBufRet.f32 %5670, 3
  %5674 = fmul fast float %5673, %5617
  %5675 = fmul fast float %5674, %5672
  %5676 = call float @dx.op.unary.f32(i32 7, float %5675)  ; Saturate(value)
  %5677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 356)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5677, 1
  %5679 = extractvalue %dx.types.CBufRet.f32 %5677, 0
  %5680 = extractvalue %dx.types.CBufRet.f32 %5677, 3
  %5681 = extractvalue %dx.types.CBufRet.f32 %5677, 2
  %5682 = select i1 %5661, float %5678, float %5680
  %5683 = select i1 %5661, float %5679, float %5681
  %5684 = fsub fast float %5669, %5683
  %5685 = fmul fast float %5684, %5682
  %5686 = fsub fast float 1.000000e+00, %5617
  %5687 = fadd fast float %5686, %5685
  %5688 = call float @dx.op.unary.f32(i32 7, float %5687)  ; Saturate(value)
  %5689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %5690 = extractvalue %dx.types.CBufRet.f32 %5689, 1
  %5691 = extractvalue %dx.types.CBufRet.f32 %5689, 2
  %5692 = fsub fast float 1.000000e+00, %5656
  %5693 = fsub fast float 1.000000e+00, %5655
  %5694 = fmul fast float %5656, %5655
  %5695 = fmul fast float %5694, %5692
  %5696 = fmul fast float %5695, %5693
  %5697 = fmul fast float %5696, %5690
  %5698 = call float @dx.op.unary.f32(i32 23, float %5697)  ; Log(value)
  %5699 = fmul fast float %5698, %5691
  %5700 = call float @dx.op.unary.f32(i32 21, float %5699)  ; Exp(value)
  %5701 = call float @dx.op.unary.f32(i32 7, float %5700)  ; Saturate(value)
  %5702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 66)  ; CBufferLoadLegacy(handle,regIndex)
  %5703 = extractvalue %dx.types.CBufRet.f32 %5702, 2
  %5704 = extractvalue %dx.types.CBufRet.f32 %5702, 3
  %5705 = extractvalue %dx.types.CBufRet.f32 %5702, 0
  %5706 = fsub fast float %78, %5705
  %5707 = extractvalue %dx.types.CBufRet.f32 %5689, 0
  %5708 = fmul fast float %5706, %5707
  %5709 = call float @dx.op.unary.f32(i32 7, float %5708)  ; Saturate(value)
  %5710 = fsub fast float %5704, %5703
  %5711 = fmul fast float %5709, %5710
  %5712 = fadd fast float %5711, %5703
  %5713 = fmul fast float %5712, %5676
  %5714 = fmul fast float %5713, %1406
  %5715 = fmul fast float %5713, %1407
  %5716 = fadd fast float %5714, %5649
  %5717 = fadd fast float %5715, %5650
  %5718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5719 = extractvalue %dx.types.CBufRet.f32 %5718, 0
  %5720 = extractvalue %dx.types.CBufRet.f32 %5718, 1
  %5721 = extractvalue %dx.types.CBufRet.f32 %5718, 2
  %5722 = extractvalue %dx.types.CBufRet.f32 %5718, 3
  %5723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5724 = extractvalue %dx.types.CBufRet.f32 %5723, 0
  %5725 = extractvalue %dx.types.CBufRet.f32 %5723, 1
  %5726 = extractvalue %dx.types.CBufRet.f32 %5723, 2
  %5727 = extractvalue %dx.types.CBufRet.f32 %5723, 3
  %5728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5729 = extractvalue %dx.types.CBufRet.f32 %5728, 0
  %5730 = extractvalue %dx.types.CBufRet.f32 %5728, 1
  %5731 = extractvalue %dx.types.CBufRet.f32 %5728, 2
  %5732 = extractvalue %dx.types.CBufRet.f32 %5728, 3
  %5733 = fmul fast float %5716, %5719
  %5734 = call float @dx.op.tertiary.f32(i32 46, float %5717, float %5720, float %5733)  ; FMad(a,b,c)
  %5735 = call float @dx.op.tertiary.f32(i32 46, float %5651, float %5721, float %5734)  ; FMad(a,b,c)
  %5736 = fadd fast float %5735, %5722
  %5737 = fmul fast float %5716, %5724
  %5738 = call float @dx.op.tertiary.f32(i32 46, float %5717, float %5725, float %5737)  ; FMad(a,b,c)
  %5739 = call float @dx.op.tertiary.f32(i32 46, float %5651, float %5726, float %5738)  ; FMad(a,b,c)
  %5740 = fadd fast float %5739, %5727
  %5741 = fmul fast float %5716, %5729
  %5742 = call float @dx.op.tertiary.f32(i32 46, float %5717, float %5730, float %5741)  ; FMad(a,b,c)
  %5743 = call float @dx.op.tertiary.f32(i32 46, float %5651, float %5731, float %5742)  ; FMad(a,b,c)
  %5744 = fadd fast float %5743, %5732
  %5745 = fdiv fast float %5736, %5744
  %5746 = fdiv fast float %5740, %5744
  %5747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5748 = extractvalue %dx.types.CBufRet.f32 %5747, 0
  %5749 = extractvalue %dx.types.CBufRet.f32 %5747, 1
  %5750 = fmul fast float %5748, %5745
  %5751 = fmul fast float %5749, %5746
  %5752 = extractvalue %dx.types.CBufRet.f32 %5747, 2
  %5753 = extractvalue %dx.types.CBufRet.f32 %5747, 3
  %5754 = fadd fast float %5750, %5752
  %5755 = fadd fast float %5751, %5753
  %5756 = call float @dx.op.unary.f32(i32 7, float %5754)  ; Saturate(value)
  %5757 = call float @dx.op.unary.f32(i32 7, float %5755)  ; Saturate(value)
  %5758 = fsub fast float %5756, %5655
  %5759 = fsub fast float %5757, %5656
  %5760 = fmul fast float %5758, %5701
  %5761 = fmul fast float %5759, %5701
  %5762 = fadd fast float %5760, %5655
  %5763 = fadd fast float %5761, %5656
  %5764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %59, float %5762, float %5763, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5765 = extractvalue %dx.types.ResRet.f32 %5764, 0
  %5766 = fcmp fast ogt float %5765, -1.000000e+00
  %5767 = select i1 %5766, float %5664, float 1.000000e+00
  %5768 = fadd fast float %5765, 1.000000e+00
  %5769 = fmul fast float %5767, %5768
  %5770 = call float @dx.op.unary.f32(i32 6, float %5769)  ; FAbs(value)
  %5771 = fcmp fast ugt float %5770, %5744
  br i1 %5771, label %5773, label %5772

; <label>:5772                                    ; preds = %5608
  br label %5773

; <label>:5773                                    ; preds = %5772, %5608
  %5774 = phi float [ %5655, %5772 ], [ %5762, %5608 ]
  %5775 = phi float [ %5656, %5772 ], [ %5763, %5608 ]
  %5776 = phi float [ %78, %5772 ], [ %5744, %5608 ]
  %5777 = phi float [ %5668, %5772 ], [ %5770, %5608 ]
  br i1 %105, label %5778, label %6288

; <label>:5778                                    ; preds = %5773
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.CBufRet.f32 %5779, 1
  %5782 = extractvalue %dx.types.CBufRet.f32 %5779, 2
  %5783 = fcmp fast oge float %5781, %5776
  %5784 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5785 = extractvalue %dx.types.CBufRet.i32 %5784, 0
  %5786 = and i32 %5785, 65536
  %5787 = icmp ne i32 %5786, 0
  %5788 = and i1 %5783, %5787
  br i1 %5788, label %5789, label %5870

; <label>:5789                                    ; preds = %5778
  %5790 = extractvalue %dx.types.CBufRet.f32 %5618, 0
  %5791 = extractvalue %dx.types.CBufRet.f32 %5618, 1
  %5792 = fmul fast float %5790, %5774
  %5793 = fmul fast float %5791, %5775
  %5794 = fmul fast float %5792, %5619
  %5795 = fmul fast float %5793, %5620
  %5796 = call float @dx.op.unary.f32(i32 7, float %5794)  ; Saturate(value)
  %5797 = call float @dx.op.unary.f32(i32 7, float %5795)  ; Saturate(value)
  %5798 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %58, float %5796, float %5797, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5799 = extractvalue %dx.types.ResRet.f32 %5798, 0
  %5800 = extractvalue %dx.types.ResRet.f32 %5798, 1
  %5801 = extractvalue %dx.types.ResRet.f32 %5798, 2
  %5802 = extractvalue %dx.types.ResRet.f32 %5798, 3
  %5803 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %58, float %5796, float %5797, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5804 = extractvalue %dx.types.ResRet.f32 %5803, 0
  %5805 = extractvalue %dx.types.ResRet.f32 %5803, 1
  %5806 = extractvalue %dx.types.ResRet.f32 %5803, 2
  %5807 = extractvalue %dx.types.ResRet.f32 %5803, 3
  %5808 = call float @dx.op.binary.f32(i32 35, float %5800, float %5801)  ; FMax(a,b)
  %5809 = call float @dx.op.binary.f32(i32 35, float %5799, float %5808)  ; FMax(a,b)
  %5810 = call float @dx.op.binary.f32(i32 35, float %5809, float %5802)  ; FMax(a,b)
  %5811 = call float @dx.op.binary.f32(i32 36, float %5805, float %5806)  ; FMin(a,b)
  %5812 = call float @dx.op.binary.f32(i32 36, float %5804, float %5811)  ; FMin(a,b)
  %5813 = call float @dx.op.binary.f32(i32 36, float %5812, float %5807)  ; FMin(a,b)
  %5814 = fmul fast float %5810, 2.550000e+02
  %5815 = fadd fast float %5814, 0x3F70101020000000
  %5816 = fptoui float %5815 to i32
  %5817 = fmul fast float %5813, 2.550000e+02
  %5818 = fadd fast float %5817, 0x3F70101020000000
  %5819 = fptoui float %5818 to i32
  %5820 = icmp ult i32 %5816, %5819
  br i1 %5820, label %5821, label %5870

; <label>:5821                                    ; preds = %5789
  %5822 = fadd fast float %5777, -4.000000e+00
  %5823 = call float @dx.op.binary.f32(i32 35, float %5822, float 0.000000e+00)  ; FMax(a,b)
  %5824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5825 = extractvalue %dx.types.CBufRet.f32 %5824, 0
  %5826 = fadd fast float %5825, %5823
  %5827 = extractvalue %dx.types.CBufRet.f32 %5824, 2
  %5828 = fmul fast float %5826, %5827
  %5829 = call float @dx.op.unary.f32(i32 23, float %5828)  ; Log(value)
  %5830 = extractvalue %dx.types.CBufRet.f32 %5824, 3
  %5831 = fmul fast float %5830, %5829
  %5832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5833 = extractvalue %dx.types.CBufRet.f32 %5832, 2
  %5834 = fmul fast float %5831, %5833
  %5835 = call float @dx.op.unary.f32(i32 7, float %5834)  ; Saturate(value)
  %5836 = uitofp i32 %5816 to float
  %5837 = uitofp i32 %5819 to float
  %5838 = fadd fast float %5836, 5.000000e-01
  %5839 = fadd fast float %5837, 5.000000e-01
  %5840 = fmul fast float %5833, %5838
  %5841 = fmul fast float %5833, %5839
  %5842 = fadd fast float %5840, 0x3F0FFB4800000000
  %5843 = fadd fast float %5841, 0xBF0FFB4800000000
  %5844 = call float @dx.op.binary.f32(i32 35, float %5835, float %5842)  ; FMax(a,b)
  %5845 = call float @dx.op.binary.f32(i32 36, float %5844, float %5843)  ; FMin(a,b)
  %5846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5847 = extractvalue %dx.types.CBufRet.f32 %5846, 1
  %5848 = extractvalue %dx.types.CBufRet.f32 %5846, 2
  %5849 = extractvalue %dx.types.CBufRet.f32 %5846, 0
  %5850 = fmul fast float %5847, %5845
  %5851 = fadd fast float %5849, %5850
  %5852 = fadd fast float %5849, %5848
  %5853 = fsub fast float %5847, %5848
  %5854 = fadd fast float %5853, %5849
  %5855 = call float @dx.op.binary.f32(i32 35, float %5851, float %5852)  ; FMax(a,b)
  %5856 = call float @dx.op.binary.f32(i32 36, float %5855, float %5854)  ; FMin(a,b)
  %5857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %56, float %5796, float %5797, float %5856, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5858 = extractvalue %dx.types.ResRet.f32 %5857, 0
  %5859 = extractvalue %dx.types.ResRet.f32 %5857, 1
  %5860 = extractvalue %dx.types.ResRet.f32 %5857, 2
  %5861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %56, float %5796, float %5797, float %5856, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5862 = extractvalue %dx.types.ResRet.f32 %5861, 0
  %5863 = extractvalue %dx.types.ResRet.f32 %5861, 1
  %5864 = extractvalue %dx.types.ResRet.f32 %5861, 2
  %5865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5866 = extractvalue %dx.types.CBufRet.f32 %5865, 1
  %5867 = fmul fast float %5866, %5862
  %5868 = fmul fast float %5866, %5863
  %5869 = fmul fast float %5866, %5864
  br label %5870

; <label>:5870                                    ; preds = %5821, %5789, %5778
  %5871 = phi float [ 0.000000e+00, %5778 ], [ %5867, %5821 ], [ 0.000000e+00, %5789 ]
  %5872 = phi float [ 0.000000e+00, %5778 ], [ %5868, %5821 ], [ 0.000000e+00, %5789 ]
  %5873 = phi float [ 0.000000e+00, %5778 ], [ %5869, %5821 ], [ 0.000000e+00, %5789 ]
  %5874 = phi float [ 1.000000e+00, %5778 ], [ %5858, %5821 ], [ 1.000000e+00, %5789 ]
  %5875 = phi float [ 1.000000e+00, %5778 ], [ %5859, %5821 ], [ 1.000000e+00, %5789 ]
  %5876 = phi float [ 1.000000e+00, %5778 ], [ %5860, %5821 ], [ 1.000000e+00, %5789 ]
  %5877 = fcmp fast olt float %5617, 1.000000e+00
  %5878 = fcmp fast olt float %5780, %5777
  %5879 = or i1 %5877, %5878
  br i1 %5879, label %5880, label %6044

; <label>:5880                                    ; preds = %5870
  %5881 = lshr i32 %1502, 16
  %5882 = uitofp i32 %5881 to float
  %5883 = fmul fast float %5882, 0x3EF0001000000000
  %5884 = and i32 %1495, 65535
  %5885 = uitofp i32 %5884 to float
  %5886 = fmul fast float %5885, 0x3EF0001000000000
  %5887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5888 = extractvalue %dx.types.CBufRet.f32 %5887, 3
  %5889 = fadd fast float %5888, 3.000000e+00
  %5890 = and i32 %874, 16383
  %5891 = lshr i32 %874, 16
  %5892 = and i32 %5891, 255
  %5893 = mul nuw nsw i32 %5890, 148
  %5894 = add nuw nsw i32 %5893, 60
  %5895 = add nuw nsw i32 %5893, 116
  %5896 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.i32 %5896, 0
  %5898 = call i32 @dx.op.binary.i32(i32 40, i32 %5890, i32 %5897)  ; UMin(a,b)
  %5899 = mul i32 %5898, 36
  %5900 = add i32 %5899, 4
  %5901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.f32 %5901, 0
  %5903 = fmul fast float %5886, %5902
  %5904 = fmul fast float %5883, %5902
  %5905 = extractvalue %dx.types.CBufRet.f32 %5901, 1
  %5906 = fadd fast float %5903, %5905
  %5907 = fadd fast float %5904, %5905
  %5908 = icmp eq i32 %5892, 0
  br i1 %5908, label %5969, label %5909

; <label>:5909                                    ; preds = %5880
  br label %5910

; <label>:5910                                    ; preds = %5910, %5909
  %5911 = phi float [ %5954, %5910 ], [ 0.000000e+00, %5909 ]
  %5912 = phi float [ %5964, %5910 ], [ 0.000000e+00, %5909 ]
  %5913 = phi float [ %5965, %5910 ], [ 0.000000e+00, %5909 ]
  %5914 = phi float [ %5966, %5910 ], [ 0.000000e+00, %5909 ]
  %5915 = phi float [ %5958, %5910 ], [ 0.000000e+00, %5909 ]
  %5916 = phi float [ %5959, %5910 ], [ 0.000000e+00, %5909 ]
  %5917 = phi float [ %5960, %5910 ], [ 0.000000e+00, %5909 ]
  %5918 = phi i32 [ %5923, %5910 ], [ %5892, %5909 ]
  %5919 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5918)  ; FirstbitLo(value)
  %5920 = and i32 %5919, 31
  %5921 = shl i32 1, %5920
  %5922 = xor i32 %5921, -1
  %5923 = and i32 %5918, %5922
  %5924 = shl i32 %5919, 2
  %5925 = add i32 %5900, %5924
  %5926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5925, i32 undef)  ; BufferLoad(srv,index,wot)
  %5927 = extractvalue %dx.types.ResRet.i32 %5926, 0
  %5928 = and i32 %5927, 32767
  %5929 = add i32 %5894, %5924
  %5930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5929, i32 undef)  ; BufferLoad(srv,index,wot)
  %5931 = extractvalue %dx.types.ResRet.f32 %5930, 0
  %5932 = add i32 %5895, %5924
  %5933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5932, i32 undef)  ; BufferLoad(srv,index,wot)
  %5934 = extractvalue %dx.types.ResRet.i32 %5933, 0
  %5935 = add i32 %5934, 0
  %5936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5935, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5936, %dx.types.Handle %56, float %5906, float %5907, float %5931, float undef, i32 0, i32 0, i32 undef, float %5889)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5938 = extractvalue %dx.types.ResRet.f32 %5937, 0
  %5939 = mul nuw nsw i32 %5928, 928
  %5940 = add nuw nsw i32 %5939, 44
  %5941 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %5940, i32 undef)  ; BufferLoad(srv,index,wot)
  %5942 = extractvalue %dx.types.ResRet.f32 %5941, 0
  %5943 = add nuw nsw i32 %5939, 48
  %5944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %5943, i32 undef)  ; BufferLoad(srv,index,wot)
  %5945 = extractvalue %dx.types.ResRet.f32 %5944, 0
  %5946 = extractvalue %dx.types.ResRet.f32 %5944, 1
  %5947 = extractvalue %dx.types.ResRet.f32 %5944, 2
  %5948 = add nuw nsw i32 %5939, 60
  %5949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %5948, i32 undef)  ; BufferLoad(srv,index,wot)
  %5950 = extractvalue %dx.types.ResRet.f32 %5949, 0
  %5951 = extractvalue %dx.types.ResRet.f32 %5949, 1
  %5952 = extractvalue %dx.types.ResRet.f32 %5949, 2
  %5953 = fmul fast float %5942, %5938
  %5954 = fadd fast float %5953, %5911
  %5955 = fmul fast float %5945, %5938
  %5956 = fmul fast float %5946, %5938
  %5957 = fmul fast float %5947, %5938
  %5958 = fadd fast float %5955, %5915
  %5959 = fadd fast float %5956, %5916
  %5960 = fadd fast float %5957, %5917
  %5961 = fmul fast float %5950, %5938
  %5962 = fmul fast float %5951, %5938
  %5963 = fmul fast float %5952, %5938
  %5964 = fadd fast float %5961, %5912
  %5965 = fadd fast float %5962, %5913
  %5966 = fadd fast float %5963, %5914
  %5967 = icmp eq i32 %5923, 0
  br i1 %5967, label %5968, label %5910

; <label>:5968                                    ; preds = %5910
  br label %5969

; <label>:5969                                    ; preds = %5968, %5880
  %5970 = phi float [ 0.000000e+00, %5880 ], [ %5954, %5968 ]
  %5971 = phi float [ 0.000000e+00, %5880 ], [ %5964, %5968 ]
  %5972 = phi float [ 0.000000e+00, %5880 ], [ %5965, %5968 ]
  %5973 = phi float [ 0.000000e+00, %5880 ], [ %5966, %5968 ]
  %5974 = phi float [ 0.000000e+00, %5880 ], [ %5958, %5968 ]
  %5975 = phi float [ 0.000000e+00, %5880 ], [ %5959, %5968 ]
  %5976 = phi float [ 0.000000e+00, %5880 ], [ %5960, %5968 ]
  %5977 = fmul fast float %5974, 0x3F847AE140000000
  %5978 = fmul fast float %5975, 0x3F847AE140000000
  %5979 = fmul fast float %5976, 0x3F847AE140000000
  %5980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5981 = extractvalue %dx.types.CBufRet.f32 %5980, 0
  %5982 = extractvalue %dx.types.CBufRet.f32 %5980, 1
  %5983 = extractvalue %dx.types.CBufRet.f32 %5980, 2
  %5984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5985 = extractvalue %dx.types.CBufRet.f32 %5984, 0
  %5986 = extractvalue %dx.types.CBufRet.f32 %5984, 1
  %5987 = call float @dx.op.dot3.f32(i32 55, float %5981, float %5982, float %5983, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5988 = select i1 %1541, float %5985, float %5981
  %5989 = select i1 %1541, float %5987, float %5982
  %5990 = select i1 %1541, float %5986, float %5983
  %5991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5992 = extractvalue %dx.types.CBufRet.f32 %5991, 0
  %5993 = extractvalue %dx.types.CBufRet.f32 %5991, 1
  %5994 = extractvalue %dx.types.CBufRet.f32 %5991, 2
  %5995 = fadd fast float %5974, %5971
  %5996 = fmul fast float %5995, 0x3F847AE140000000
  %5997 = fadd fast float %5975, %5972
  %5998 = fmul fast float %5997, 0x3F847AE140000000
  %5999 = fadd fast float %5976, %5973
  %6000 = fmul fast float %5999, 0x3F847AE140000000
  %6001 = call float @dx.op.dot3.f32(i32 55, float %5992, float %5993, float %5994, float %1434, float %1435, float %1436)  ; Dot3(ax,ay,az,bx,by,bz)
  %6002 = fcmp fast ogt float %5970, 0.000000e+00
  %6003 = select i1 %6002, float 1.000000e+00, float -1.000000e+00
  %6004 = fmul fast float %6003, 5.000000e-01
  %6005 = fmul fast float %6004, %6001
  %6006 = fmul fast float %6003, %5970
  %6007 = fadd fast float %6005, 4.921875e-01
  %6008 = fadd fast float %6006, -3.125000e-02
  %6009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %6007, float 0x3FB25F3060000000, float %6008, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6010 = extractvalue %dx.types.ResRet.f32 %6009, 0
  %6011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %6012 = extractvalue %dx.types.CBufRet.f32 %6011, 0
  %6013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %6014 = extractvalue %dx.types.CBufRet.f32 %6013, 0
  %6015 = fmul fast float %6014, %6012
  %6016 = extractvalue %dx.types.CBufRet.f32 %6013, 1
  %6017 = fadd fast float %6015, %6016
  %6018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %6019 = extractvalue %dx.types.CBufRet.f32 %6018, 0
  %6020 = fmul fast float %6019, %4946
  %6021 = extractvalue %dx.types.CBufRet.f32 %6018, 1
  %6022 = fadd fast float %6020, %6021
  %6023 = call float @dx.op.unary.f32(i32 7, float %6022)  ; Saturate(value)
  %6024 = extractvalue %dx.types.CBufRet.f32 %6011, 3
  %6025 = extractvalue %dx.types.CBufRet.f32 %6013, 2
  %6026 = fmul fast float %6025, %6024
  %6027 = extractvalue %dx.types.CBufRet.f32 %6013, 3
  %6028 = fadd fast float %6026, %6027
  %6029 = fmul fast float %6010, 0x400921FB60000000
  %6030 = fmul fast float %6029, %6017
  %6031 = fmul fast float %6030, %6023
  %6032 = fmul fast float %5988, %5977
  %6033 = fmul fast float %6032, %6031
  %6034 = fmul fast float %5989, %5978
  %6035 = fmul fast float %6034, %6031
  %6036 = fmul fast float %5990, %5979
  %6037 = fmul fast float %6036, %6031
  %6038 = fmul fast float %5977, %2371
  %6039 = fmul fast float %6038, %6028
  %6040 = fmul fast float %5978, %2372
  %6041 = fmul fast float %6040, %6028
  %6042 = fmul fast float %5979, %2373
  %6043 = fmul fast float %6042, %6028
  br label %6044

; <label>:6044                                    ; preds = %5969, %5870
  %6045 = phi float [ %5996, %5969 ], [ 0.000000e+00, %5870 ]
  %6046 = phi float [ %5998, %5969 ], [ 0.000000e+00, %5870 ]
  %6047 = phi float [ %6000, %5969 ], [ 0.000000e+00, %5870 ]
  %6048 = phi float [ %6033, %5969 ], [ 0.000000e+00, %5870 ]
  %6049 = phi float [ %6035, %5969 ], [ 0.000000e+00, %5870 ]
  %6050 = phi float [ %6037, %5969 ], [ 0.000000e+00, %5870 ]
  %6051 = phi float [ %6039, %5969 ], [ 0.000000e+00, %5870 ]
  %6052 = phi float [ %6041, %5969 ], [ 0.000000e+00, %5870 ]
  %6053 = phi float [ %6043, %5969 ], [ 0.000000e+00, %5870 ]
  %6054 = call float @dx.op.binary.f32(i32 35, float %6045, float 0x3F10000000000000)  ; FMax(a,b)
  %6055 = call float @dx.op.binary.f32(i32 35, float %6046, float 0x3F10000000000000)  ; FMax(a,b)
  %6056 = call float @dx.op.binary.f32(i32 35, float %6047, float 0x3F10000000000000)  ; FMax(a,b)
  %6057 = fdiv fast float 1.000000e+00, %6054
  %6058 = fdiv fast float 1.000000e+00, %6055
  %6059 = fdiv fast float 1.000000e+00, %6056
  %6060 = fmul fast float %6045, 0xBFF7154760000000
  %6061 = fmul fast float %6046, 0xBFF7154760000000
  %6062 = fmul fast float %6047, 0xBFF7154760000000
  %6063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %6064 = extractvalue %dx.types.CBufRet.f32 %6063, 3
  %6065 = call float @dx.op.dot3.f32(i32 55, float %6057, float %6058, float %6059, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6066 = fmul fast float %6064, %6065
  %6067 = call float @dx.op.binary.f32(i32 35, float %5781, float %5776)  ; FMax(a,b)
  %6068 = fsub fast float %5777, %6067
  %6069 = call float @dx.op.binary.f32(i32 35, float %6068, float 0.000000e+00)  ; FMax(a,b)
  %6070 = fsub fast float %5777, %5776
  %6071 = call float @dx.op.binary.f32(i32 35, float %6070, float 0.000000e+00)  ; FMax(a,b)
  %6072 = call float @dx.op.binary.f32(i32 36, float %6071, float %6066)  ; FMin(a,b)
  %6073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %6074 = extractvalue %dx.types.CBufRet.f32 %6073, 0
  %6075 = fmul fast float %6074, %6072
  %6076 = fmul fast float %6075, %6060
  %6077 = fmul fast float %6075, %6061
  %6078 = fmul fast float %6075, %6062
  %6079 = call float @dx.op.unary.f32(i32 21, float %6076)  ; Exp(value)
  %6080 = call float @dx.op.unary.f32(i32 21, float %6077)  ; Exp(value)
  %6081 = call float @dx.op.unary.f32(i32 21, float %6078)  ; Exp(value)
  %6082 = fmul fast float %6079, %6048
  %6083 = fmul fast float %6080, %6049
  %6084 = fmul fast float %6081, %6050
  %6085 = extractvalue %dx.types.CBufRet.f32 %6073, 1
  %6086 = fmul fast float %6085, %6072
  %6087 = fmul fast float %6086, %6060
  %6088 = fmul fast float %6086, %6061
  %6089 = fmul fast float %6086, %6062
  %6090 = call float @dx.op.unary.f32(i32 21, float %6087)  ; Exp(value)
  %6091 = call float @dx.op.unary.f32(i32 21, float %6088)  ; Exp(value)
  %6092 = call float @dx.op.unary.f32(i32 21, float %6089)  ; Exp(value)
  %6093 = fmul fast float %6090, %6051
  %6094 = fmul fast float %6091, %6052
  %6095 = fmul fast float %6092, %6053
  %6096 = fadd fast float %6093, %6082
  %6097 = fadd fast float %6094, %6083
  %6098 = fadd fast float %6095, %6084
  %6099 = fmul fast float %6069, %6060
  %6100 = fmul fast float %6069, %6061
  %6101 = fmul fast float %6069, %6062
  %6102 = call float @dx.op.unary.f32(i32 21, float %6099)  ; Exp(value)
  %6103 = call float @dx.op.unary.f32(i32 21, float %6100)  ; Exp(value)
  %6104 = call float @dx.op.unary.f32(i32 21, float %6101)  ; Exp(value)
  %6105 = call float @dx.op.unary.f32(i32 7, float %6102)  ; Saturate(value)
  %6106 = call float @dx.op.unary.f32(i32 7, float %6103)  ; Saturate(value)
  %6107 = call float @dx.op.unary.f32(i32 7, float %6104)  ; Saturate(value)
  %6108 = fmul fast float %6105, %6096
  %6109 = fmul fast float %6106, %6097
  %6110 = fmul fast float %6107, %6098
  %6111 = fsub fast float %6096, %6108
  %6112 = fsub fast float %6097, %6109
  %6113 = fsub fast float %6098, %6110
  %6114 = fmul fast float %6057, %5874
  %6115 = fmul fast float %6114, %6111
  %6116 = fmul fast float %6058, %5875
  %6117 = fmul fast float %6116, %6112
  %6118 = fmul fast float %6059, %5876
  %6119 = fmul fast float %6118, %6113
  %6120 = fadd fast float %6115, %5871
  %6121 = fadd fast float %6117, %5872
  %6122 = fadd fast float %6119, %5873
  %6123 = fmul fast float %6105, %5874
  %6124 = fmul fast float %6106, %5875
  %6125 = fmul fast float %6107, %5876
  %6126 = fmul fast float %6071, %6060
  %6127 = fmul fast float %6071, %6061
  %6128 = fmul fast float %6071, %6062
  %6129 = call float @dx.op.unary.f32(i32 21, float %6126)  ; Exp(value)
  %6130 = call float @dx.op.unary.f32(i32 21, float %6127)  ; Exp(value)
  %6131 = call float @dx.op.unary.f32(i32 21, float %6128)  ; Exp(value)
  %6132 = call float @dx.op.unary.f32(i32 7, float %6129)  ; Saturate(value)
  %6133 = call float @dx.op.unary.f32(i32 7, float %6130)  ; Saturate(value)
  %6134 = call float @dx.op.unary.f32(i32 7, float %6131)  ; Saturate(value)
  %6135 = fmul fast float %6132, %6096
  %6136 = fmul fast float %6133, %6097
  %6137 = fmul fast float %6134, %6098
  %6138 = fsub fast float %6096, %6135
  %6139 = fsub fast float %6097, %6136
  %6140 = fsub fast float %6098, %6137
  %6141 = fmul fast float %6138, %6057
  %6142 = fmul fast float %6139, %6058
  %6143 = fmul fast float %6140, %6059
  %6144 = fsub fast float %5776, %5780
  %6145 = fmul fast float %5782, %6144
  %6146 = call float @dx.op.unary.f32(i32 7, float %6145)  ; Saturate(value)
  %6147 = fmul fast float %6146, %6146
  %6148 = fmul fast float %6146, 2.000000e+00
  %6149 = fsub fast float 3.000000e+00, %6148
  %6150 = fmul fast float %6147, %6149
  %6151 = fsub fast float %6141, %6120
  %6152 = fsub fast float %6142, %6121
  %6153 = fsub fast float %6143, %6122
  %6154 = fmul fast float %6150, %6151
  %6155 = fmul fast float %6150, %6152
  %6156 = fmul fast float %6150, %6153
  %6157 = fadd fast float %6154, %6120
  %6158 = fadd fast float %6155, %6121
  %6159 = fadd fast float %6156, %6122
  %6160 = fsub fast float %6132, %6123
  %6161 = fsub fast float %6133, %6124
  %6162 = fsub fast float %6134, %6125
  %6163 = fmul fast float %6150, %6160
  %6164 = fmul fast float %6150, %6161
  %6165 = fmul fast float %6150, %6162
  %6166 = fadd fast float %6163, %6123
  %6167 = fadd fast float %6164, %6124
  %6168 = fadd fast float %6165, %6125
  br i1 %5877, label %6169, label %6237

; <label>:6169                                    ; preds = %6044
  %6170 = extractvalue %dx.types.CBufRet.f32 %6073, 3
  %6171 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6170)  ; Dot3(ax,ay,az,bx,by,bz)
  %6172 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1543, float %1544, float %1545)  ; Dot3(ax,ay,az,bx,by,bz)
  %6173 = fdiv fast float 1.000000e+00, %6172
  %6174 = fmul fast float %6173, %6171
  %6175 = fcmp ogt float %1436, -0.000000e+00
  %6176 = select i1 %6175, float %6170, float %6174
  %6177 = call float @dx.op.binary.f32(i32 36, float %6176, float %6066)  ; FMin(a,b)
  %6178 = fmul fast float %6074, %6177
  %6179 = fmul fast float %6178, %6060
  %6180 = fmul fast float %6178, %6061
  %6181 = fmul fast float %6178, %6062
  %6182 = call float @dx.op.unary.f32(i32 21, float %6179)  ; Exp(value)
  %6183 = call float @dx.op.unary.f32(i32 21, float %6180)  ; Exp(value)
  %6184 = call float @dx.op.unary.f32(i32 21, float %6181)  ; Exp(value)
  %6185 = fmul fast float %6182, %6048
  %6186 = fmul fast float %6183, %6049
  %6187 = fmul fast float %6184, %6050
  %6188 = fmul fast float %6085, %6177
  %6189 = fmul fast float %6188, %6060
  %6190 = fmul fast float %6188, %6061
  %6191 = fmul fast float %6188, %6062
  %6192 = call float @dx.op.unary.f32(i32 21, float %6189)  ; Exp(value)
  %6193 = call float @dx.op.unary.f32(i32 21, float %6190)  ; Exp(value)
  %6194 = call float @dx.op.unary.f32(i32 21, float %6191)  ; Exp(value)
  %6195 = fmul fast float %6192, %6051
  %6196 = fmul fast float %6193, %6052
  %6197 = fmul fast float %6194, %6053
  %6198 = fadd fast float %6195, %6185
  %6199 = fadd fast float %6196, %6186
  %6200 = fadd fast float %6197, %6187
  %6201 = fmul fast float %6176, %6060
  %6202 = fmul fast float %6176, %6061
  %6203 = fmul fast float %6176, %6062
  %6204 = call float @dx.op.unary.f32(i32 21, float %6201)  ; Exp(value)
  %6205 = call float @dx.op.unary.f32(i32 21, float %6202)  ; Exp(value)
  %6206 = call float @dx.op.unary.f32(i32 21, float %6203)  ; Exp(value)
  %6207 = call float @dx.op.unary.f32(i32 7, float %6204)  ; Saturate(value)
  %6208 = call float @dx.op.unary.f32(i32 7, float %6205)  ; Saturate(value)
  %6209 = call float @dx.op.unary.f32(i32 7, float %6206)  ; Saturate(value)
  %6210 = fmul fast float %6207, %6198
  %6211 = fmul fast float %6208, %6199
  %6212 = fmul fast float %6209, %6200
  %6213 = fsub fast float %6198, %6210
  %6214 = fsub fast float %6199, %6211
  %6215 = fsub fast float %6200, %6212
  %6216 = fmul fast float %6213, %6057
  %6217 = fmul fast float %6214, %6058
  %6218 = fmul fast float %6215, %6059
  %6219 = fsub fast float %6157, %6216
  %6220 = fsub fast float %6158, %6217
  %6221 = fsub fast float %6159, %6218
  %6222 = fmul fast float %6219, %5617
  %6223 = fmul fast float %6220, %5617
  %6224 = fmul fast float %6221, %5617
  %6225 = fadd fast float %6222, %6216
  %6226 = fadd fast float %6223, %6217
  %6227 = fadd fast float %6224, %6218
  %6228 = fsub fast float %6166, %6207
  %6229 = fsub fast float %6167, %6208
  %6230 = fsub fast float %6168, %6209
  %6231 = fmul fast float %6228, %5617
  %6232 = fmul fast float %6229, %5617
  %6233 = fmul fast float %6230, %5617
  %6234 = fadd fast float %6231, %6207
  %6235 = fadd fast float %6232, %6208
  %6236 = fadd fast float %6233, %6209
  br label %6237

; <label>:6237                                    ; preds = %6169, %6044
  %6238 = phi float [ %6225, %6169 ], [ %6157, %6044 ]
  %6239 = phi float [ %6226, %6169 ], [ %6158, %6044 ]
  %6240 = phi float [ %6227, %6169 ], [ %6159, %6044 ]
  %6241 = phi float [ %6234, %6169 ], [ %6166, %6044 ]
  %6242 = phi float [ %6235, %6169 ], [ %6167, %6044 ]
  %6243 = phi float [ %6236, %6169 ], [ %6168, %6044 ]
  %6244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6245 = extractvalue %dx.types.CBufRet.i32 %6244, 3
  %6246 = and i32 %6245, 3
  %6247 = icmp ne i32 %6246, 0
  %6248 = and i32 %6245, 4
  %6249 = icmp ne i32 %6248, 0
  %6250 = and i1 %6247, %6249
  br i1 %6250, label %6251, label %6258

; <label>:6251                                    ; preds = %6237
  %6252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %58, float %5774, float %5775, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6253 = extractvalue %dx.types.ResRet.f32 %6252, 0
  %6254 = fsub fast float 1.000000e+00, %6253
  %6255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %6256 = extractvalue %dx.types.CBufRet.f32 %6255, 0
  %6257 = fcmp fast olt float %6254, %6256
  br label %6261

; <label>:6258                                    ; preds = %6237
  %6259 = icmp eq i32 %6248, 0
  %6260 = and i1 %6247, %6259
  br label %6261

; <label>:6261                                    ; preds = %6258, %6251
  %6262 = phi i1 [ %6257, %6251 ], [ %6260, %6258 ]
  %6263 = xor i1 %1541, %6262
  %6264 = select i1 %6263, float 0.000000e+00, float %5617
  %6265 = fcmp fast ogt float %6264, 0.000000e+00
  %6266 = select i1 %6265, float %5774, float 0.000000e+00
  %6267 = select i1 %6265, float %5775, float 0.000000e+00
  %6268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %58, float %6266, float %6267, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6269 = extractvalue %dx.types.ResRet.f32 %6268, 0
  %6270 = extractvalue %dx.types.ResRet.f32 %6268, 1
  %6271 = extractvalue %dx.types.ResRet.f32 %6268, 2
  %6272 = fmul fast float %6270, %6264
  %6273 = fmul fast float %6271, %6264
  %6274 = select i1 %1541, float 0.000000e+00, float %6272
  %6275 = select i1 %1541, float 0.000000e+00, float %6273
  %6276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6277 = extractvalue %dx.types.CBufRet.f32 %6276, 1
  %6278 = fmul fast float %6264, %6241
  %6279 = fmul fast float %6278, %6269
  %6280 = fmul fast float %6279, %6277
  %6281 = fmul fast float %6277, %6242
  %6282 = fmul fast float %6281, %6274
  %6283 = fmul fast float %6277, %6243
  %6284 = fmul fast float %6283, %6275
  %6285 = fadd fast float %6280, %6238
  %6286 = fadd fast float %6282, %6239
  %6287 = fadd fast float %6284, %6240
  br label %6327

; <label>:6288                                    ; preds = %5773
  %6289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6290 = extractvalue %dx.types.CBufRet.i32 %6289, 3
  %6291 = and i32 %6290, 3
  %6292 = icmp ne i32 %6291, 0
  %6293 = and i32 %6290, 4
  %6294 = icmp ne i32 %6293, 0
  %6295 = and i1 %6292, %6294
  br i1 %6295, label %6296, label %6303

; <label>:6296                                    ; preds = %6288
  %6297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %58, float %5774, float %5775, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6298 = extractvalue %dx.types.ResRet.f32 %6297, 0
  %6299 = fsub fast float 1.000000e+00, %6298
  %6300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %6301 = extractvalue %dx.types.CBufRet.f32 %6300, 0
  %6302 = fcmp fast olt float %6299, %6301
  br label %6306

; <label>:6303                                    ; preds = %6288
  %6304 = icmp eq i32 %6293, 0
  %6305 = and i1 %6292, %6304
  br label %6306

; <label>:6306                                    ; preds = %6303, %6296
  %6307 = phi i1 [ %6302, %6296 ], [ %6305, %6303 ]
  %6308 = xor i1 %1541, %6307
  %6309 = select i1 %6308, float 0.000000e+00, float %5617
  %6310 = fcmp fast ogt float %6309, 0.000000e+00
  %6311 = select i1 %6310, float %5774, float 0.000000e+00
  %6312 = select i1 %6310, float %5775, float 0.000000e+00
  %6313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %58, float %6311, float %6312, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6314 = extractvalue %dx.types.ResRet.f32 %6313, 0
  %6315 = extractvalue %dx.types.ResRet.f32 %6313, 1
  %6316 = extractvalue %dx.types.ResRet.f32 %6313, 2
  %6317 = fmul fast float %6314, %6309
  %6318 = fmul fast float %6315, %6309
  %6319 = fmul fast float %6316, %6309
  %6320 = select i1 %1541, float 0.000000e+00, float %6318
  %6321 = select i1 %1541, float 0.000000e+00, float %6319
  %6322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6323 = extractvalue %dx.types.CBufRet.f32 %6322, 1
  %6324 = fmul fast float %6317, %6323
  %6325 = fmul fast float %6320, %6323
  %6326 = fmul fast float %6321, %6323
  br label %6327

; <label>:6327                                    ; preds = %6306, %6261
  %6328 = phi float [ %6324, %6306 ], [ %6285, %6261 ]
  %6329 = phi float [ %6325, %6306 ], [ %6286, %6261 ]
  %6330 = phi float [ %6326, %6306 ], [ %6287, %6261 ]
  %6331 = fmul fast float %6328, %2417
  %6332 = fmul fast float %6329, %2417
  %6333 = fmul fast float %6330, %2417
  %6334 = select i1 %105, float %5688, float 1.000000e+00
  %6335 = fsub fast float 1.000000e+00, %1548
  %6336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6337 = extractvalue %dx.types.CBufRet.f32 %6336, 0
  %6338 = fmul fast float %6337, %6335
  %6339 = fmul fast float %1408, 2.000000e+00
  %6340 = fmul fast float %6339, %1445
  %6341 = fsub fast float %1436, %6340
  %6342 = call float @dx.op.unary.f32(i32 7, float %6341)  ; Saturate(value)
  %6343 = fsub fast float 1.000000e+00, %6342
  %6344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6345 = extractvalue %dx.types.CBufRet.f32 %6344, 3
  %6346 = fmul fast float %6345, %6343
  %6347 = fsub fast float 1.000000e+00, %1515
  %6348 = call float @dx.op.unary.f32(i32 7, float %6347)  ; Saturate(value)
  %6349 = fadd fast float %5614, %1517
  %6350 = fmul fast float %6349, %1515
  %6351 = fmul fast float %6346, %6348
  %6352 = fmul fast float %5612, %1418
  %6353 = fmul fast float %5613, %1419
  %6354 = fmul fast float %5614, %1420
  %6355 = fadd fast float %6352, %5609
  %6356 = fadd fast float %6355, %6331
  %6357 = fadd fast float %6353, %5610
  %6358 = fadd fast float %6357, %6332
  %6359 = fadd fast float %6354, %5611
  %6360 = fadd fast float %6359, %6333
  br i1 %105, label %6361, label %7163

; <label>:6361                                    ; preds = %6327
  %6362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6363 = extractvalue %dx.types.CBufRet.f32 %6362, 0
  %6364 = extractvalue %dx.types.CBufRet.f32 %6362, 1
  %6365 = extractvalue %dx.types.CBufRet.f32 %6362, 2
  %6366 = extractvalue %dx.types.CBufRet.f32 %6362, 3
  %6367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6368 = extractvalue %dx.types.CBufRet.f32 %6367, 0
  %6369 = extractvalue %dx.types.CBufRet.f32 %6367, 1
  %6370 = extractvalue %dx.types.CBufRet.f32 %6367, 2
  %6371 = extractvalue %dx.types.CBufRet.f32 %6367, 3
  %6372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6372, 0
  %6374 = extractvalue %dx.types.CBufRet.f32 %6372, 1
  %6375 = extractvalue %dx.types.CBufRet.f32 %6372, 2
  %6376 = extractvalue %dx.types.CBufRet.f32 %6372, 3
  %6377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6378 = extractvalue %dx.types.CBufRet.f32 %6377, 0
  %6379 = extractvalue %dx.types.CBufRet.f32 %6377, 1
  %6380 = extractvalue %dx.types.CBufRet.f32 %6377, 2
  %6381 = extractvalue %dx.types.CBufRet.f32 %6377, 3
  %6382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6383 = extractvalue %dx.types.CBufRet.f32 %6382, 3
  %6384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6385 = extractvalue %dx.types.CBufRet.f32 %6384, 3
  %6386 = extractvalue %dx.types.CBufRet.f32 %6384, 0
  %6387 = extractvalue %dx.types.CBufRet.f32 %6384, 1
  %6388 = extractvalue %dx.types.CBufRet.f32 %6384, 2
  %6389 = fcmp fast olt float %6388, -5.000000e-01
  %6390 = fmul fast float %1433, %1432
  %6391 = fadd fast float %6390, %6366
  %6392 = call float @dx.op.dot3.f32(i32 55, float %1434, float %1435, float %1436, float %6363, float %6364, float %6365)  ; Dot3(ax,ay,az,bx,by,bz)
  %6393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6394 = extractvalue %dx.types.CBufRet.i32 %6393, 1
  %6395 = and i32 %6394, 1
  %6396 = icmp ne i32 %6395, 0
  %6397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6398 = extractvalue %dx.types.CBufRet.f32 %6397, 2
  %6399 = fcmp fast ogt float %6398, 0.000000e+00
  %6400 = and i1 %6396, %6399
  br i1 %6400, label %6401, label %6807, !dx.controlflow.hints !149

; <label>:6401                                    ; preds = %6361
  %6402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6403 = extractvalue %dx.types.CBufRet.f32 %6402, 3
  %6404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6405 = extractvalue %dx.types.CBufRet.f32 %6404, 2
  %6406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6407 = extractvalue %dx.types.CBufRet.f32 %6406, 2
  %6408 = fsub fast float %6405, %6407
  %6409 = and i32 %6394, 2
  %6410 = extractvalue %dx.types.CBufRet.i32 %6393, 0
  %6411 = call i32 @dx.op.binary.i32(i32 40, i32 %6410, i32 3)  ; UMin(a,b)
  %6412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6413 = extractvalue %dx.types.CBufRet.f32 %6412, 0
  %6414 = extractvalue %dx.types.CBufRet.f32 %6412, 1
  %6415 = extractvalue %dx.types.CBufRet.f32 %6406, 0
  %6416 = extractvalue %dx.types.CBufRet.f32 %6406, 1
  %6417 = fsub fast float %6413, %6415
  %6418 = fsub fast float %6414, %6416
  %6419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6420 = extractvalue %dx.types.CBufRet.f32 %6419, 0
  %6421 = fcmp fast ogt float %6420, 0.000000e+00
  %6422 = fsub fast float -0.000000e+00, %6417
  %6423 = fsub fast float -0.000000e+00, %6418
  %6424 = call float @dx.op.dot2.f32(i32 54, float %1434, float %1435, float %1434, float %1435)  ; Dot2(ax,ay,bx,by)
  %6425 = call float @dx.op.dot2.f32(i32 54, float %1434, float %1435, float %6422, float %6423)  ; Dot2(ax,ay,bx,by)
  %6426 = fmul fast float %6425, 2.000000e+00
  %6427 = call float @dx.op.dot2.f32(i32 54, float %6422, float %6423, float %6422, float %6423)  ; Dot2(ax,ay,bx,by)
  %6428 = fmul fast float %6420, %6420
  %6429 = fsub fast float %6427, %6428
  %6430 = fmul fast float %6426, %6426
  %6431 = fmul fast float %6424, 4.000000e+00
  %6432 = fmul fast float %6431, %6429
  %6433 = fsub fast float %6430, %6432
  %6434 = fcmp fast ogt float %6433, 0.000000e+00
  br i1 %6434, label %6435, label %6450

; <label>:6435                                    ; preds = %6401
  %6436 = fcmp fast ogt float %6426, 0.000000e+00
  %6437 = call float @dx.op.unary.f32(i32 24, float %6433)  ; Sqrt(value)
  %6438 = fsub fast float -0.000000e+00, %6437
  %6439 = select i1 %6436, float %6437, float %6438
  %6440 = fadd fast float %6439, %6426
  %6441 = fmul float %6440, -5.000000e-01
  %6442 = fdiv fast float %6441, %6424
  %6443 = call float @dx.op.binary.f32(i32 35, float %6442, float 0.000000e+00)  ; FMax(a,b)
  %6444 = call float @dx.op.binary.f32(i32 36, float %6390, float %6443)  ; FMin(a,b)
  %6445 = fdiv fast float %6429, %6441
  %6446 = call float @dx.op.binary.f32(i32 35, float %6445, float 0.000000e+00)  ; FMax(a,b)
  %6447 = call float @dx.op.binary.f32(i32 36, float %6390, float %6446)  ; FMin(a,b)
  %6448 = call float @dx.op.binary.f32(i32 36, float %6444, float %6447)  ; FMin(a,b)
  %6449 = call float @dx.op.binary.f32(i32 35, float %6444, float %6447)  ; FMax(a,b)
  br label %6450

; <label>:6450                                    ; preds = %6435, %6401
  %6451 = phi float [ %6449, %6435 ], [ -1.000000e+00, %6401 ]
  %6452 = phi float [ %6448, %6435 ], [ -1.000000e+00, %6401 ]
  %6453 = phi i1 [ true, %6435 ], [ false, %6401 ]
  %6454 = and i1 %6421, %6453
  br i1 %6454, label %6455, label %6457

; <label>:6455                                    ; preds = %6450
  %6456 = fcmp fast oeq float %6452, %6451
  br i1 %6456, label %6760, label %6458

; <label>:6457                                    ; preds = %6450
  br i1 %6421, label %6760, label %6458

; <label>:6458                                    ; preds = %6457, %6455
  %6459 = phi float [ %6390, %6457 ], [ %6451, %6455 ]
  %6460 = phi float [ 0.000000e+00, %6457 ], [ %6452, %6455 ]
  %6461 = icmp ne i32 %6409, 0
  %6462 = fmul fast float %6459, %1436
  %6463 = fadd fast float %6462, %6403
  %6464 = fmul fast float %6463, %6459
  %6465 = select i1 %6461, float 0.000000e+00, float %6464
  %6466 = fcmp fast oeq float %1436, 0.000000e+00
  %6467 = fdiv fast float %6408, %1436
  %6468 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6467)  ; FMax(a,b)
  %6469 = select i1 %6466, float %6459, float %6468
  %6470 = call float @dx.op.binary.f32(i32 36, float %6459, float %6469)  ; FMin(a,b)
  %6471 = fcmp fast ogt float %1436, 0.000000e+00
  %6472 = fcmp fast olt float %6408, 0.000000e+00
  br i1 %6471, label %6473, label %6530

; <label>:6473                                    ; preds = %6458
  %6474 = icmp eq i32 %6409, 0
  br i1 %6472, label %6475, label %6519

; <label>:6475                                    ; preds = %6473
  %6476 = select i1 %6474, float %6459, float 0.000000e+00
  %6477 = fsub fast float -0.000000e+00, %6476
  %6478 = call float @dx.op.unary.f32(i32 6, float %6477)  ; FAbs(value)
  %6479 = fmul fast float %6476, %1436
  %6480 = fadd fast float %6479, %6403
  %6481 = fmul fast float %6478, %6480
  %6482 = fsub fast float %6465, %6481
  %6483 = fsub fast float %6459, %6478
  %6484 = select i1 %6474, float %6483, float 0.000000e+00
  %6485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6486 = extractvalue %dx.types.CBufRet.f32 %6485, 0
  %6487 = extractvalue %dx.types.CBufRet.f32 %6485, 1
  %6488 = extractvalue %dx.types.CBufRet.f32 %6485, 2
  %6489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6490 = extractvalue %dx.types.CBufRet.f32 %6489, 0
  %6491 = extractvalue %dx.types.CBufRet.f32 %6489, 1
  %6492 = extractvalue %dx.types.CBufRet.f32 %6489, 2
  %6493 = extractvalue %dx.types.CBufRet.f32 %6489, 3
  %6494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6495 = extractvalue %dx.types.CBufRet.f32 %6494, 3
  %6496 = call float @dx.op.binary.f32(i32 36, float %6482, float %6495)  ; FMin(a,b)
  %6497 = fmul fast float %6493, %6484
  %6498 = call float @dx.op.unary.f32(i32 7, float %6497)  ; Saturate(value)
  %6499 = fsub fast float %6490, %6486
  %6500 = fsub fast float %6491, %6487
  %6501 = fsub fast float %6492, %6488
  %6502 = fmul fast float %6498, %6499
  %6503 = fmul fast float %6498, %6500
  %6504 = fmul fast float %6498, %6501
  %6505 = fadd fast float %6502, %6486
  %6506 = fadd fast float %6503, %6487
  %6507 = fadd fast float %6504, %6488
  %6508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6509 = extractvalue %dx.types.CBufRet.f32 %6508, 0
  %6510 = extractvalue %dx.types.CBufRet.f32 %6508, 1
  %6511 = fadd fast float %6510, %6509
  %6512 = call float @dx.op.unary.f32(i32 7, float %6511)  ; Saturate(value)
  %6513 = extractvalue %dx.types.CBufRet.f32 %6508, 2
  %6514 = extractvalue %dx.types.CBufRet.f32 %6508, 3
  %6515 = fadd fast float %6514, %6513
  %6516 = call float @dx.op.unary.f32(i32 7, float %6515)  ; Saturate(value)
  %6517 = fmul fast float %6512, %6496
  %6518 = fmul fast float %6517, %6516
  br label %6760

; <label>:6519                                    ; preds = %6473
  br i1 %6474, label %6520, label %6541

; <label>:6520                                    ; preds = %6519
  %6521 = call float @dx.op.binary.f32(i32 36, float %6470, float %6460)  ; FMin(a,b)
  %6522 = fsub fast float %6470, %6521
  %6523 = fsub fast float %6522, %6459
  %6524 = call float @dx.op.unary.f32(i32 6, float %6523)  ; FAbs(value)
  %6525 = fadd fast float %6522, %6459
  %6526 = fmul fast float %6525, %1436
  %6527 = fadd fast float %6526, %6403
  %6528 = fmul fast float %6527, %6524
  %6529 = fsub fast float %6465, %6528
  br label %6541

; <label>:6530                                    ; preds = %6458
  br i1 %6472, label %6531, label %6541

; <label>:6531                                    ; preds = %6530
  %6532 = call float @dx.op.binary.f32(i32 35, float %6460, float %6470)  ; FMax(a,b)
  %6533 = icmp eq i32 %6409, 0
  %6534 = select i1 %6533, float %6470, float 0.000000e+00
  %6535 = fsub fast float -0.000000e+00, %6534
  %6536 = call float @dx.op.unary.f32(i32 6, float %6535)  ; FAbs(value)
  %6537 = fmul fast float %6534, %1436
  %6538 = fadd fast float %6537, %6403
  %6539 = fmul fast float %6536, %6538
  %6540 = fsub fast float %6465, %6539
  br label %6541

; <label>:6541                                    ; preds = %6531, %6530, %6520, %6519
  %6542 = phi float [ %6460, %6519 ], [ %6460, %6520 ], [ %6532, %6531 ], [ %6460, %6530 ]
  %6543 = phi float [ 0.000000e+00, %6519 ], [ %6524, %6520 ], [ %6536, %6531 ], [ 0.000000e+00, %6530 ]
  %6544 = phi float [ %6465, %6519 ], [ %6529, %6520 ], [ %6540, %6531 ], [ %6465, %6530 ]
  %6545 = phi float [ %6470, %6519 ], [ %6470, %6520 ], [ %6459, %6531 ], [ %6459, %6530 ]
  %6546 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 0
  store float -1.000000e+00, float* %6546, align 4, !tbaa !99, !noalias !150
  %6547 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 1
  store float -1.000000e+00, float* %6547, align 4, !tbaa !99, !noalias !150
  %6548 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 2
  store float -1.000000e+00, float* %6548, align 4, !tbaa !99, !noalias !150
  %6549 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 0
  store float -1.000000e+00, float* %6549, align 4, !tbaa !99, !noalias !150
  %6550 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 1
  store float -1.000000e+00, float* %6550, align 4, !tbaa !99, !noalias !150
  %6551 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 2
  store float -1.000000e+00, float* %6551, align 4, !tbaa !99, !noalias !150
  %6552 = icmp sgt i32 %6411, 0
  br i1 %6552, label %6553, label %6614

; <label>:6553                                    ; preds = %6541
  br label %6554

; <label>:6554                                    ; preds = %6603, %6553
  %6555 = phi i32 [ %6604, %6603 ], [ 0, %6553 ]
  %6556 = phi i32 [ %6605, %6603 ], [ 0, %6553 ]
  %6557 = add nuw i32 %6556, 171
  %6558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %6557)  ; CBufferLoadLegacy(handle,regIndex)
  %6559 = extractvalue %dx.types.CBufRet.f32 %6558, 0
  %6560 = extractvalue %dx.types.CBufRet.f32 %6558, 1
  %6561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6562 = extractvalue %dx.types.CBufRet.f32 %6561, 0
  %6563 = extractvalue %dx.types.CBufRet.f32 %6561, 1
  %6564 = fsub fast float %6559, %6562
  %6565 = fsub fast float %6560, %6563
  %6566 = extractvalue %dx.types.CBufRet.f32 %6558, 2
  %6567 = fsub fast float -0.000000e+00, %6564
  %6568 = fsub fast float -0.000000e+00, %6565
  %6569 = call float @dx.op.dot2.f32(i32 54, float %1434, float %1435, float %6567, float %6568)  ; Dot2(ax,ay,bx,by)
  %6570 = fmul fast float %6569, 2.000000e+00
  %6571 = call float @dx.op.dot2.f32(i32 54, float %6567, float %6568, float %6567, float %6568)  ; Dot2(ax,ay,bx,by)
  %6572 = fmul fast float %6566, %6566
  %6573 = fsub fast float %6571, %6572
  %6574 = fmul fast float %6570, %6570
  %6575 = fmul fast float %6431, %6573
  %6576 = fsub fast float %6574, %6575
  %6577 = fcmp fast ogt float %6576, 0.000000e+00
  br i1 %6577, label %6578, label %6593

; <label>:6578                                    ; preds = %6554
  %6579 = fcmp fast ogt float %6570, 0.000000e+00
  %6580 = call float @dx.op.unary.f32(i32 24, float %6576)  ; Sqrt(value)
  %6581 = fsub fast float -0.000000e+00, %6580
  %6582 = select i1 %6579, float %6580, float %6581
  %6583 = fadd fast float %6582, %6570
  %6584 = fmul float %6583, -5.000000e-01
  %6585 = fdiv fast float %6584, %6424
  %6586 = call float @dx.op.binary.f32(i32 35, float %6585, float 0.000000e+00)  ; FMax(a,b)
  %6587 = call float @dx.op.binary.f32(i32 36, float %6459, float %6586)  ; FMin(a,b)
  %6588 = fdiv fast float %6573, %6584
  %6589 = call float @dx.op.binary.f32(i32 35, float %6588, float 0.000000e+00)  ; FMax(a,b)
  %6590 = call float @dx.op.binary.f32(i32 36, float %6459, float %6589)  ; FMin(a,b)
  %6591 = call float @dx.op.binary.f32(i32 36, float %6587, float %6590)  ; FMin(a,b)
  %6592 = call float @dx.op.binary.f32(i32 35, float %6587, float %6590)  ; FMax(a,b)
  br label %6593

; <label>:6593                                    ; preds = %6578, %6554
  %6594 = phi float [ %6592, %6578 ], [ -1.000000e+00, %6554 ]
  %6595 = phi float [ %6591, %6578 ], [ -1.000000e+00, %6554 ]
  %6596 = phi i1 [ true, %6578 ], [ false, %6554 ]
  br i1 %6596, label %6597, label %6603

; <label>:6597                                    ; preds = %6593
  %6598 = call float @dx.op.binary.f32(i32 35, float %6542, float %6595)  ; FMax(a,b)
  %6599 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %6556
  store float %6598, float* %6599, align 4, !tbaa !99, !noalias !150
  %6600 = call float @dx.op.binary.f32(i32 35, float %6542, float %6594)  ; FMax(a,b)
  %6601 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %6556
  store float %6600, float* %6601, align 4, !tbaa !99, !noalias !150
  %6602 = add nsw i32 %6555, 1
  br label %6603

; <label>:6603                                    ; preds = %6597, %6593
  %6604 = phi i32 [ %6602, %6597 ], [ %6555, %6593 ]
  %6605 = add nuw nsw i32 %6556, 1
  %6606 = icmp eq i32 %6605, %6411
  br i1 %6606, label %6607, label %6554

; <label>:6607                                    ; preds = %6603
  %6608 = load float, float* %6548, align 4, !tbaa !99, !alias.scope !166, !noalias !169
  %6609 = load float, float* %6547, align 4, !tbaa !99, !alias.scope !172, !noalias !173
  %6610 = load float, float* %6546, align 4, !tbaa !99, !alias.scope !174, !noalias !175
  %6611 = load float, float* %6551, align 4, !tbaa !99, !alias.scope !176, !noalias !179
  %6612 = load float, float* %6550, align 4, !tbaa !99, !alias.scope !182, !noalias !183
  %6613 = load float, float* %6549, align 4, !tbaa !99, !alias.scope !184, !noalias !185
  br label %6614

; <label>:6614                                    ; preds = %6607, %6541
  %6615 = phi float [ -1.000000e+00, %6541 ], [ %6613, %6607 ]
  %6616 = phi float [ -1.000000e+00, %6541 ], [ %6612, %6607 ]
  %6617 = phi float [ -1.000000e+00, %6541 ], [ %6611, %6607 ]
  %6618 = phi float [ -1.000000e+00, %6541 ], [ %6610, %6607 ]
  %6619 = phi float [ -1.000000e+00, %6541 ], [ %6609, %6607 ]
  %6620 = phi float [ -1.000000e+00, %6541 ], [ %6608, %6607 ]
  %6621 = phi i32 [ 0, %6541 ], [ %6604, %6607 ]
  %6622 = call float @dx.op.binary.f32(i32 36, float %6619, float %6620)  ; FMin(a,b)
  %6623 = call float @dx.op.binary.f32(i32 36, float %6618, float %6622)  ; FMin(a,b)
  %6624 = call float @dx.op.binary.f32(i32 35, float %6618, float %6619)  ; FMax(a,b)
  %6625 = call float @dx.op.binary.f32(i32 36, float %6624, float %6620)  ; FMin(a,b)
  %6626 = call float @dx.op.binary.f32(i32 36, float %6618, float %6619)  ; FMin(a,b)
  %6627 = call float @dx.op.binary.f32(i32 35, float %6626, float %6625)  ; FMax(a,b)
  %6628 = call float @dx.op.binary.f32(i32 35, float %6619, float %6620)  ; FMax(a,b)
  %6629 = call float @dx.op.binary.f32(i32 35, float %6618, float %6628)  ; FMax(a,b)
  store float %6623, float* %6546, align 4, !tbaa !99, !alias.scope !174, !noalias !175
  store float %6627, float* %6547, align 4, !tbaa !99, !alias.scope !172, !noalias !173
  store float %6629, float* %6548, align 4, !tbaa !99, !alias.scope !166, !noalias !169
  %6630 = call float @dx.op.binary.f32(i32 36, float %6616, float %6617)  ; FMin(a,b)
  %6631 = call float @dx.op.binary.f32(i32 36, float %6615, float %6630)  ; FMin(a,b)
  %6632 = call float @dx.op.binary.f32(i32 35, float %6615, float %6616)  ; FMax(a,b)
  %6633 = call float @dx.op.binary.f32(i32 36, float %6632, float %6617)  ; FMin(a,b)
  %6634 = call float @dx.op.binary.f32(i32 36, float %6615, float %6616)  ; FMin(a,b)
  %6635 = call float @dx.op.binary.f32(i32 35, float %6634, float %6633)  ; FMax(a,b)
  %6636 = call float @dx.op.binary.f32(i32 35, float %6616, float %6617)  ; FMax(a,b)
  %6637 = call float @dx.op.binary.f32(i32 35, float %6615, float %6636)  ; FMax(a,b)
  store float %6631, float* %6549, align 4, !tbaa !99, !alias.scope !184, !noalias !185
  store float %6635, float* %6550, align 4, !tbaa !99, !alias.scope !182, !noalias !183
  store float %6637, float* %6551, align 4, !tbaa !99, !alias.scope !176, !noalias !179
  %6638 = sub nsw i32 3, %6621
  %6639 = icmp sgt i32 %6638, 2
  br i1 %6639, label %6640, label %6678

; <label>:6640                                    ; preds = %6614
  %6641 = icmp eq i32 %6409, 0
  %6642 = fsub fast float %6459, %6543
  %6643 = select i1 %6641, float %6642, float %6543
  %6644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6645 = extractvalue %dx.types.CBufRet.f32 %6644, 0
  %6646 = extractvalue %dx.types.CBufRet.f32 %6644, 1
  %6647 = extractvalue %dx.types.CBufRet.f32 %6644, 2
  %6648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6649 = extractvalue %dx.types.CBufRet.f32 %6648, 0
  %6650 = extractvalue %dx.types.CBufRet.f32 %6648, 1
  %6651 = extractvalue %dx.types.CBufRet.f32 %6648, 2
  %6652 = extractvalue %dx.types.CBufRet.f32 %6648, 3
  %6653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6654 = extractvalue %dx.types.CBufRet.f32 %6653, 3
  %6655 = call float @dx.op.binary.f32(i32 36, float %6544, float %6654)  ; FMin(a,b)
  %6656 = fmul fast float %6652, %6643
  %6657 = call float @dx.op.unary.f32(i32 7, float %6656)  ; Saturate(value)
  %6658 = fsub fast float %6649, %6645
  %6659 = fsub fast float %6650, %6646
  %6660 = fsub fast float %6651, %6647
  %6661 = fmul fast float %6657, %6658
  %6662 = fmul fast float %6657, %6659
  %6663 = fmul fast float %6657, %6660
  %6664 = fadd fast float %6661, %6645
  %6665 = fadd fast float %6662, %6646
  %6666 = fadd fast float %6663, %6647
  %6667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6668 = extractvalue %dx.types.CBufRet.f32 %6667, 0
  %6669 = extractvalue %dx.types.CBufRet.f32 %6667, 1
  %6670 = fadd fast float %6669, %6668
  %6671 = call float @dx.op.unary.f32(i32 7, float %6670)  ; Saturate(value)
  %6672 = extractvalue %dx.types.CBufRet.f32 %6667, 2
  %6673 = extractvalue %dx.types.CBufRet.f32 %6667, 3
  %6674 = fadd fast float %6673, %6672
  %6675 = call float @dx.op.unary.f32(i32 7, float %6674)  ; Saturate(value)
  %6676 = fmul fast float %6671, %6655
  %6677 = fmul fast float %6676, %6675
  br label %6760

; <label>:6678                                    ; preds = %6614
  %6679 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %6638
  %6680 = load float, float* %6679, align 4, !tbaa !99, !noalias !150
  %6681 = fcmp fast olt float %6680, %6545
  %6682 = icmp sgt i32 %6621, 0
  %6683 = and i1 %6682, %6681
  br i1 %6683, label %6684, label %6721

; <label>:6684                                    ; preds = %6678
  br label %6685

; <label>:6685                                    ; preds = %6714, %6684
  %6686 = phi float [ %6715, %6714 ], [ %6543, %6684 ]
  %6687 = phi float [ %6716, %6714 ], [ %6544, %6684 ]
  %6688 = phi float [ %6696, %6714 ], [ %6680, %6684 ]
  %6689 = phi i32 [ %6693, %6714 ], [ %6638, %6684 ]
  %6690 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %6689
  %6691 = load float, float* %6690, align 4, !tbaa !99, !noalias !150
  %6692 = icmp slt i32 %6689, 2
  %6693 = add nsw i32 %6689, 1
  %6694 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %6693
  %6695 = load float, float* %6694, align 4, !tbaa !99, !noalias !150
  %6696 = select i1 %6692, float %6695, float %6459
  %6697 = call float @dx.op.binary.f32(i32 36, float %6696, float %6691)  ; FMin(a,b)
  %6698 = call float @dx.op.binary.f32(i32 36, float %6545, float %6697)  ; FMin(a,b)
  %6699 = icmp eq i32 %6409, 0
  %6700 = fadd fast float %6698, %6688
  %6701 = fmul fast float %6700, %1436
  %6702 = fadd fast float %6701, %6403
  br i1 %6699, label %6708, label %6703

; <label>:6703                                    ; preds = %6685
  %6704 = fsub fast float %6698, %6688
  %6705 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6704)  ; FMax(a,b)
  %6706 = fmul fast float %6705, %6702
  %6707 = fadd fast float %6706, %6687
  br label %6714

; <label>:6708                                    ; preds = %6685
  %6709 = fsub fast float %6688, %6698
  %6710 = call float @dx.op.unary.f32(i32 6, float %6709)  ; FAbs(value)
  %6711 = fadd fast float %6710, %6686
  %6712 = fmul fast float %6710, %6702
  %6713 = fsub fast float %6687, %6712
  br label %6714

; <label>:6714                                    ; preds = %6708, %6703
  %6715 = phi float [ %6705, %6703 ], [ %6711, %6708 ]
  %6716 = phi float [ %6707, %6703 ], [ %6713, %6708 ]
  %6717 = fcmp fast olt float %6696, %6545
  %6718 = icmp slt i32 %6693, 3
  %6719 = and i1 %6718, %6717
  br i1 %6719, label %6685, label %6720

; <label>:6720                                    ; preds = %6714
  br label %6721

; <label>:6721                                    ; preds = %6720, %6678
  %6722 = phi float [ %6543, %6678 ], [ %6715, %6720 ]
  %6723 = phi float [ %6544, %6678 ], [ %6716, %6720 ]
  %6724 = fsub fast float %6459, %6722
  %6725 = select i1 %6461, float %6722, float %6724
  %6726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6727 = extractvalue %dx.types.CBufRet.f32 %6726, 0
  %6728 = extractvalue %dx.types.CBufRet.f32 %6726, 1
  %6729 = extractvalue %dx.types.CBufRet.f32 %6726, 2
  %6730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6731 = extractvalue %dx.types.CBufRet.f32 %6730, 0
  %6732 = extractvalue %dx.types.CBufRet.f32 %6730, 1
  %6733 = extractvalue %dx.types.CBufRet.f32 %6730, 2
  %6734 = extractvalue %dx.types.CBufRet.f32 %6730, 3
  %6735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6736 = extractvalue %dx.types.CBufRet.f32 %6735, 3
  %6737 = call float @dx.op.binary.f32(i32 36, float %6723, float %6736)  ; FMin(a,b)
  %6738 = fmul fast float %6734, %6725
  %6739 = call float @dx.op.unary.f32(i32 7, float %6738)  ; Saturate(value)
  %6740 = fsub fast float %6731, %6727
  %6741 = fsub fast float %6732, %6728
  %6742 = fsub fast float %6733, %6729
  %6743 = fmul fast float %6739, %6740
  %6744 = fmul fast float %6739, %6741
  %6745 = fmul fast float %6739, %6742
  %6746 = fadd fast float %6743, %6727
  %6747 = fadd fast float %6744, %6728
  %6748 = fadd fast float %6745, %6729
  %6749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6750 = extractvalue %dx.types.CBufRet.f32 %6749, 0
  %6751 = extractvalue %dx.types.CBufRet.f32 %6749, 1
  %6752 = fadd fast float %6751, %6750
  %6753 = call float @dx.op.unary.f32(i32 7, float %6752)  ; Saturate(value)
  %6754 = extractvalue %dx.types.CBufRet.f32 %6749, 2
  %6755 = extractvalue %dx.types.CBufRet.f32 %6749, 3
  %6756 = fadd fast float %6755, %6754
  %6757 = call float @dx.op.unary.f32(i32 7, float %6756)  ; Saturate(value)
  %6758 = fmul fast float %6753, %6737
  %6759 = fmul fast float %6758, %6757
  br label %6760

; <label>:6760                                    ; preds = %6721, %6640, %6475, %6457, %6455
  %6761 = phi float [ %6484, %6475 ], [ %6643, %6640 ], [ %6725, %6721 ], [ 0.000000e+00, %6455 ], [ 0.000000e+00, %6457 ]
  %6762 = phi float [ %6518, %6475 ], [ %6677, %6640 ], [ %6759, %6721 ], [ 0.000000e+00, %6455 ], [ 0.000000e+00, %6457 ]
  %6763 = phi float [ %6505, %6475 ], [ %6664, %6640 ], [ %6746, %6721 ], [ 0.000000e+00, %6455 ], [ 0.000000e+00, %6457 ]
  %6764 = phi float [ %6506, %6475 ], [ %6665, %6640 ], [ %6747, %6721 ], [ 0.000000e+00, %6455 ], [ 0.000000e+00, %6457 ]
  %6765 = phi float [ %6507, %6475 ], [ %6666, %6640 ], [ %6748, %6721 ], [ 0.000000e+00, %6455 ], [ 0.000000e+00, %6457 ]
  %6766 = fmul fast float %6398, %6762
  %6767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6768 = extractvalue %dx.types.CBufRet.f32 %6767, 2
  %6769 = fsub fast float %6405, %6768
  %6770 = fcmp fast olt float %6766, -2.000000e+01
  %6771 = call float @dx.op.unary.f32(i32 21, float %6766)  ; Exp(value)
  %6772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6773 = extractvalue %dx.types.CBufRet.f32 %6772, 2
  %6774 = extractvalue %dx.types.CBufRet.f32 %6772, 3
  %6775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6776 = extractvalue %dx.types.CBufRet.f32 %6775, 2
  %6777 = fmul fast float %6774, %6769
  %6778 = call float @dx.op.unary.f32(i32 7, float %6777)  ; Saturate(value)
  %6779 = fsub fast float 1.000000e+00, %6778
  %6780 = fmul fast float %1436, 5.000000e-01
  %6781 = fadd fast float %6780, 5.000000e-01
  %6782 = call float @dx.op.unary.f32(i32 7, float %6781)  ; Saturate(value)
  %6783 = fsub fast float 1.000000e+00, %6782
  %6784 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6779)  ; FMax(a,b)
  %6785 = fdiv fast float %6783, %6784
  %6786 = fsub fast float %6769, %145
  %6787 = call float @dx.op.unary.f32(i32 6, float %6786)  ; FAbs(value)
  %6788 = fmul fast float %6787, %6773
  %6789 = call float @dx.op.unary.f32(i32 7, float %6785)  ; Saturate(value)
  %6790 = fsub fast float 1.000000e+00, %6788
  %6791 = fmul fast float %6790, %6789
  %6792 = fadd fast float %6791, %6788
  %6793 = fmul fast float %6776, %6769
  %6794 = call float @dx.op.unary.f32(i32 7, float %6793)  ; Saturate(value)
  %6795 = fsub fast float 1.000000e+00, %6792
  %6796 = fmul fast float %6795, %6794
  %6797 = fadd fast float %6796, %6792
  %6798 = call float @dx.op.unary.f32(i32 7, float %6797)  ; Saturate(value)
  %6799 = fadd fast float %6771, -1.000000e+00
  %6800 = select i1 %6770, float -1.000000e+00, float %6799
  %6801 = fmul fast float %6798, %6800
  %6802 = fadd fast float %6801, 1.000000e+00
  %6803 = fsub fast float -0.000000e+00, %6801
  %6804 = fmul fast float %6763, %6803
  %6805 = fmul fast float %6764, %6803
  %6806 = fmul fast float %6765, %6803
  br label %6807

; <label>:6807                                    ; preds = %6760, %6361
  %6808 = phi float [ %6761, %6760 ], [ 0.000000e+00, %6361 ]
  %6809 = phi float [ %6802, %6760 ], [ 1.000000e+00, %6361 ]
  %6810 = phi float [ %6804, %6760 ], [ 0.000000e+00, %6361 ]
  %6811 = phi float [ %6805, %6760 ], [ 0.000000e+00, %6361 ]
  %6812 = phi float [ %6806, %6760 ], [ 0.000000e+00, %6361 ]
  %6813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6814 = extractvalue %dx.types.CBufRet.f32 %6813, 1
  %6815 = fsub fast float 1.000000e+00, %6809
  %6816 = fmul fast float %6815, %6391
  %6817 = fmul fast float %6816, %6814
  %6818 = fsub fast float %6391, %6817
  br i1 %6389, label %6819, label %6848, !dx.controlflow.hints !186

; <label>:6819                                    ; preds = %6807
  %6820 = fmul fast float %6392, %6386
  %6821 = fadd fast float %6820, %6387
  %6822 = call float @dx.op.unary.f32(i32 7, float %6821)  ; Saturate(value)
  %6823 = fmul fast float %6368, %6818
  %6824 = fsub fast float -0.000000e+00, %6823
  %6825 = fmul fast float %6369, %6818
  %6826 = fsub fast float -0.000000e+00, %6825
  %6827 = call float @dx.op.unary.f32(i32 21, float %6824)  ; Exp(value)
  %6828 = call float @dx.op.unary.f32(i32 21, float %6826)  ; Exp(value)
  %6829 = call float @dx.op.binary.f32(i32 35, float %6376, float %6827)  ; FMax(a,b)
  %6830 = call float @dx.op.binary.f32(i32 35, float %6376, float %6828)  ; FMax(a,b)
  %6831 = fsub fast float %6830, %6829
  %6832 = fmul fast float %6831, %6822
  %6833 = fadd fast float %6832, %6829
  %6834 = call float @dx.op.unary.f32(i32 7, float %6833)  ; Saturate(value)
  %6835 = fsub fast float %6373, %6378
  %6836 = fsub fast float %6374, %6379
  %6837 = fsub fast float %6375, %6380
  %6838 = fmul fast float %6822, %6835
  %6839 = fmul fast float %6822, %6836
  %6840 = fmul fast float %6822, %6837
  %6841 = fadd fast float %6838, %6378
  %6842 = fadd fast float %6839, %6379
  %6843 = fadd fast float %6840, %6380
  %6844 = fsub fast float 1.000000e+00, %6834
  %6845 = fmul fast float %6844, %6841
  %6846 = fmul fast float %6844, %6842
  %6847 = fmul fast float %6844, %6843
  br label %6907

; <label>:6848                                    ; preds = %6807
  %6849 = fmul fast float %6818, %6385
  %6850 = call float @dx.op.unary.f32(i32 7, float %6849)  ; Saturate(value)
  %6851 = fsub fast float 2.000000e+00, %6850
  %6852 = fmul fast float %6850, 9.921875e-01
  %6853 = fmul fast float %6852, %6851
  %6854 = fadd fast float %6853, 3.906250e-03
  %6855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %58, float %6854, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6856 = extractvalue %dx.types.ResRet.f32 %6855, 0
  %6857 = fsub fast float %6850, %6856
  %6858 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6857)  ; FMax(a,b)
  %6859 = fmul fast float %6371, %145
  %6860 = call float @dx.op.unary.f32(i32 6, float %6859)  ; FAbs(value)
  %6861 = fcmp fast ogt float %6860, 0x3EB0C6F7A0000000
  br i1 %6861, label %6862, label %6868, !dx.controlflow.hints !187

; <label>:6862                                    ; preds = %6848
  %6863 = fmul fast float %6859, 0xBFF7154760000000
  %6864 = call float @dx.op.unary.f32(i32 21, float %6863)  ; Exp(value)
  %6865 = fsub fast float 1.000000e+00, %6864
  %6866 = fdiv fast float %6865, %6859
  %6867 = fmul fast float %6866, %6381
  br label %6868

; <label>:6868                                    ; preds = %6862, %6848
  %6869 = phi float [ %6867, %6862 ], [ %6381, %6848 ]
  %6870 = fadd fast float %6869, %6383
  %6871 = fmul fast float %6870, %6858
  %6872 = fmul fast float %6368, %6871
  %6873 = fsub fast float -0.000000e+00, %6872
  %6874 = fmul fast float %6369, %6871
  %6875 = fsub fast float -0.000000e+00, %6874
  %6876 = fmul fast float %6370, %6871
  %6877 = fsub fast float -0.000000e+00, %6876
  %6878 = call float @dx.op.unary.f32(i32 21, float %6873)  ; Exp(value)
  %6879 = call float @dx.op.unary.f32(i32 21, float %6875)  ; Exp(value)
  %6880 = call float @dx.op.unary.f32(i32 21, float %6877)  ; Exp(value)
  %6881 = fmul fast float %6392, %6392
  %6882 = fadd fast float %6881, 1.000000e+00
  %6883 = fmul fast float %6882, 0x3FAE8EC8A0000000
  %6884 = fmul fast float %6883, %6378
  %6885 = fmul fast float %6883, %6379
  %6886 = fmul fast float %6883, %6380
  %6887 = fmul fast float %6392, %6376
  %6888 = fsub fast float 1.000000e+00, %6887
  %6889 = fmul fast float %6376, %6376
  %6890 = fsub fast float 1.000000e+00, %6889
  %6891 = fmul fast float %6890, 0x3FB45F3060000000
  %6892 = fmul fast float %6888, %6888
  %6893 = fdiv fast float 1.000000e+00, %6892
  %6894 = fmul fast float %6891, %6893
  %6895 = fmul fast float %6894, %6373
  %6896 = fmul fast float %6894, %6374
  %6897 = fmul fast float %6894, %6375
  %6898 = fadd fast float %6895, %6884
  %6899 = fadd fast float %6896, %6885
  %6900 = fadd fast float %6897, %6886
  %6901 = fsub fast float 1.000000e+00, %6878
  %6902 = fsub fast float 1.000000e+00, %6879
  %6903 = fsub fast float 1.000000e+00, %6880
  %6904 = fmul fast float %6898, %6901
  %6905 = fmul fast float %6899, %6902
  %6906 = fmul fast float %6900, %6903
  br label %6907

; <label>:6907                                    ; preds = %6868, %6819
  %6908 = phi float [ %6845, %6819 ], [ %6904, %6868 ]
  %6909 = phi float [ %6846, %6819 ], [ %6905, %6868 ]
  %6910 = phi float [ %6847, %6819 ], [ %6906, %6868 ]
  %6911 = phi float [ %6834, %6819 ], [ %6878, %6868 ]
  %6912 = phi float [ %6834, %6819 ], [ %6879, %6868 ]
  %6913 = phi float [ %6834, %6819 ], [ %6880, %6868 ]
  br i1 %6400, label %6914, label %7112, !dx.controlflow.hints !188

; <label>:6914                                    ; preds = %6907
  %6915 = extractvalue %dx.types.CBufRet.f32 %6813, 0
  %6916 = fmul fast float %6915, %6815
  %6917 = fsub fast float %6810, %6908
  %6918 = fsub fast float %6811, %6909
  %6919 = fsub fast float %6812, %6910
  %6920 = fmul fast float %6916, %6917
  %6921 = fmul fast float %6916, %6918
  %6922 = fmul fast float %6916, %6919
  %6923 = fadd fast float %6920, %6908
  %6924 = fadd fast float %6921, %6909
  %6925 = fadd fast float %6922, %6910
  %6926 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6911)  ; FMax(a,b)
  %6927 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6912)  ; FMax(a,b)
  %6928 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6913)  ; FMax(a,b)
  %6929 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6809)  ; FMax(a,b)
  %6930 = call float @dx.op.binary.f32(i32 35, float %6808, float %6818)  ; FMax(a,b)
  %6931 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6930)  ; FMax(a,b)
  %6932 = fdiv fast float %6808, %6931
  %6933 = call float @dx.op.unary.f32(i32 7, float %6932)  ; Saturate(value)
  %6934 = fdiv fast float %6818, %6931
  %6935 = call float @dx.op.unary.f32(i32 7, float %6934)  ; Saturate(value)
  %6936 = fcmp fast une float %6929, 1.000000e+00
  br i1 %6936, label %6937, label %6950, !dx.controlflow.hints !189

; <label>:6937                                    ; preds = %6914
  %6938 = call float @dx.op.unary.f32(i32 23, float %6929)  ; Log(value)
  %6939 = fmul fast float %6938, 0x3FE62E4300000000
  %6940 = fmul fast float %6810, %6939
  %6941 = fsub fast float -0.000000e+00, %6940
  %6942 = fmul fast float %6811, %6939
  %6943 = fsub fast float -0.000000e+00, %6942
  %6944 = fmul fast float %6812, %6939
  %6945 = fsub fast float -0.000000e+00, %6944
  %6946 = fsub fast float 1.000000e+00, %6929
  %6947 = fdiv fast float %6941, %6946
  %6948 = fdiv fast float %6943, %6946
  %6949 = fdiv fast float %6945, %6946
  br label %6950

; <label>:6950                                    ; preds = %6937, %6914
  %6951 = phi float [ %6947, %6937 ], [ %6810, %6914 ]
  %6952 = phi float [ %6948, %6937 ], [ %6811, %6914 ]
  %6953 = phi float [ %6949, %6937 ], [ %6812, %6914 ]
  %6954 = phi float [ %6939, %6937 ], [ 0.000000e+00, %6914 ]
  %6955 = fcmp fast une float %6926, 1.000000e+00
  br i1 %6955, label %6956, label %6963, !dx.controlflow.hints !190

; <label>:6956                                    ; preds = %6950
  %6957 = call float @dx.op.unary.f32(i32 23, float %6926)  ; Log(value)
  %6958 = fmul fast float %6957, 0x3FE62E4300000000
  %6959 = fmul fast float %6923, %6958
  %6960 = fsub fast float -0.000000e+00, %6959
  %6961 = fsub fast float 1.000000e+00, %6926
  %6962 = fdiv fast float %6960, %6961
  br label %6963

; <label>:6963                                    ; preds = %6956, %6950
  %6964 = phi float [ %6962, %6956 ], [ %6923, %6950 ]
  %6965 = phi float [ %6958, %6956 ], [ 0.000000e+00, %6950 ]
  %6966 = fcmp fast une float %6927, 1.000000e+00
  br i1 %6966, label %6967, label %6974, !dx.controlflow.hints !190

; <label>:6967                                    ; preds = %6963
  %6968 = call float @dx.op.unary.f32(i32 23, float %6927)  ; Log(value)
  %6969 = fmul fast float %6968, 0x3FE62E4300000000
  %6970 = fmul fast float %6924, %6969
  %6971 = fsub fast float -0.000000e+00, %6970
  %6972 = fsub fast float 1.000000e+00, %6927
  %6973 = fdiv fast float %6971, %6972
  br label %6974

; <label>:6974                                    ; preds = %6967, %6963
  %6975 = phi float [ %6973, %6967 ], [ %6924, %6963 ]
  %6976 = phi float [ %6969, %6967 ], [ 0.000000e+00, %6963 ]
  %6977 = fcmp fast une float %6928, 1.000000e+00
  br i1 %6977, label %6978, label %6985, !dx.controlflow.hints !190

; <label>:6978                                    ; preds = %6974
  %6979 = call float @dx.op.unary.f32(i32 23, float %6928)  ; Log(value)
  %6980 = fmul fast float %6979, 0x3FE62E4300000000
  %6981 = fmul fast float %6925, %6980
  %6982 = fsub fast float -0.000000e+00, %6981
  %6983 = fsub fast float 1.000000e+00, %6928
  %6984 = fdiv fast float %6982, %6983
  br label %6985

; <label>:6985                                    ; preds = %6978, %6974
  %6986 = phi float [ %6984, %6978 ], [ %6925, %6974 ]
  %6987 = phi float [ %6980, %6978 ], [ 0.000000e+00, %6974 ]
  %6988 = fmul fast float %6951, %6935
  %6989 = fmul fast float %6952, %6935
  %6990 = fmul fast float %6953, %6935
  %6991 = fmul fast float %6954, %6935
  %6992 = fmul fast float %6964, %6933
  %6993 = fmul fast float %6975, %6933
  %6994 = fmul fast float %6986, %6933
  %6995 = fmul fast float %6965, %6933
  %6996 = fmul fast float %6976, %6933
  %6997 = fmul fast float %6987, %6933
  %6998 = fadd fast float %6992, %6988
  %6999 = fadd fast float %6993, %6989
  %7000 = fadd fast float %6994, %6990
  %7001 = fadd fast float %6995, %6991
  %7002 = fadd fast float %6996, %6991
  %7003 = fadd fast float %6997, %6991
  %7004 = fcmp fast une float %7001, 0.000000e+00
  br i1 %7004, label %7005, label %7012, !dx.controlflow.hints !191

; <label>:7005                                    ; preds = %6985
  %7006 = fmul fast float %7001, 0x3FF7154760000000
  %7007 = call float @dx.op.unary.f32(i32 21, float %7006)  ; Exp(value)
  %7008 = fsub fast float 1.000000e+00, %7007
  %7009 = fmul fast float %6998, %7008
  %7010 = fsub fast float -0.000000e+00, %7009
  %7011 = fdiv fast float %7010, %7001
  br label %7012

; <label>:7012                                    ; preds = %7005, %6985
  %7013 = phi float [ %7007, %7005 ], [ 1.000000e+00, %6985 ]
  %7014 = phi float [ %7011, %7005 ], [ %6998, %6985 ]
  %7015 = fcmp fast une float %7002, 0.000000e+00
  br i1 %7015, label %7016, label %7023, !dx.controlflow.hints !191

; <label>:7016                                    ; preds = %7012
  %7017 = fmul fast float %7002, 0x3FF7154760000000
  %7018 = call float @dx.op.unary.f32(i32 21, float %7017)  ; Exp(value)
  %7019 = fsub fast float 1.000000e+00, %7018
  %7020 = fmul fast float %6999, %7019
  %7021 = fsub fast float -0.000000e+00, %7020
  %7022 = fdiv fast float %7021, %7002
  br label %7023

; <label>:7023                                    ; preds = %7016, %7012
  %7024 = phi float [ %7018, %7016 ], [ 1.000000e+00, %7012 ]
  %7025 = phi float [ %7022, %7016 ], [ %6999, %7012 ]
  %7026 = fcmp fast une float %7003, 0.000000e+00
  br i1 %7026, label %7027, label %7034, !dx.controlflow.hints !191

; <label>:7027                                    ; preds = %7023
  %7028 = fmul fast float %7003, 0x3FF7154760000000
  %7029 = call float @dx.op.unary.f32(i32 21, float %7028)  ; Exp(value)
  %7030 = fsub fast float 1.000000e+00, %7029
  %7031 = fmul fast float %7000, %7030
  %7032 = fsub fast float -0.000000e+00, %7031
  %7033 = fdiv fast float %7032, %7003
  br label %7034

; <label>:7034                                    ; preds = %7027, %7023
  %7035 = phi float [ %7029, %7027 ], [ 1.000000e+00, %7023 ]
  %7036 = phi float [ %7033, %7027 ], [ %7000, %7023 ]
  %7037 = fcmp fast ogt float %6933, %6935
  br i1 %7037, label %7038, label %7058

; <label>:7038                                    ; preds = %7034
  %7039 = fsub fast float 1.000000e+00, %6935
  %7040 = fmul fast float %6951, %7039
  %7041 = fmul fast float %6952, %7039
  %7042 = fmul fast float %6953, %7039
  %7043 = fmul fast float %6954, %7039
  %7044 = fcmp fast une float %7043, 0.000000e+00
  br i1 %7044, label %7045, label %7096, !dx.controlflow.hints !192

; <label>:7045                                    ; preds = %7038
  %7046 = fmul fast float %7043, 0x3FF7154760000000
  %7047 = call float @dx.op.unary.f32(i32 21, float %7046)  ; Exp(value)
  %7048 = fsub fast float 1.000000e+00, %7047
  %7049 = fmul fast float %7040, %7048
  %7050 = fsub fast float -0.000000e+00, %7049
  %7051 = fmul fast float %7041, %7048
  %7052 = fsub fast float -0.000000e+00, %7051
  %7053 = fmul fast float %7042, %7048
  %7054 = fsub fast float -0.000000e+00, %7053
  %7055 = fdiv fast float %7050, %7043
  %7056 = fdiv fast float %7052, %7043
  %7057 = fdiv fast float %7054, %7043
  br label %7096

; <label>:7058                                    ; preds = %7034
  %7059 = fsub fast float 1.000000e+00, %6933
  %7060 = fmul fast float %6964, %7059
  %7061 = fmul fast float %6975, %7059
  %7062 = fmul fast float %6986, %7059
  %7063 = fmul fast float %6965, %7059
  %7064 = fmul fast float %6976, %7059
  %7065 = fmul fast float %6987, %7059
  %7066 = fcmp fast une float %7063, 0.000000e+00
  br i1 %7066, label %7067, label %7074, !dx.controlflow.hints !191

; <label>:7067                                    ; preds = %7058
  %7068 = fmul fast float %7063, 0x3FF7154760000000
  %7069 = call float @dx.op.unary.f32(i32 21, float %7068)  ; Exp(value)
  %7070 = fsub fast float 1.000000e+00, %7069
  %7071 = fmul fast float %7060, %7070
  %7072 = fsub fast float -0.000000e+00, %7071
  %7073 = fdiv fast float %7072, %7063
  br label %7074

; <label>:7074                                    ; preds = %7067, %7058
  %7075 = phi float [ %7073, %7067 ], [ %7060, %7058 ]
  %7076 = phi float [ %7069, %7067 ], [ 1.000000e+00, %7058 ]
  %7077 = fcmp fast une float %7064, 0.000000e+00
  br i1 %7077, label %7078, label %7085, !dx.controlflow.hints !191

; <label>:7078                                    ; preds = %7074
  %7079 = fmul fast float %7064, 0x3FF7154760000000
  %7080 = call float @dx.op.unary.f32(i32 21, float %7079)  ; Exp(value)
  %7081 = fsub fast float 1.000000e+00, %7080
  %7082 = fmul fast float %7061, %7081
  %7083 = fsub fast float -0.000000e+00, %7082
  %7084 = fdiv fast float %7083, %7064
  br label %7085

; <label>:7085                                    ; preds = %7078, %7074
  %7086 = phi float [ %7084, %7078 ], [ %7061, %7074 ]
  %7087 = phi float [ %7080, %7078 ], [ 1.000000e+00, %7074 ]
  %7088 = fcmp fast une float %7065, 0.000000e+00
  br i1 %7088, label %7089, label %7096, !dx.controlflow.hints !191

; <label>:7089                                    ; preds = %7085
  %7090 = fmul fast float %7065, 0x3FF7154760000000
  %7091 = call float @dx.op.unary.f32(i32 21, float %7090)  ; Exp(value)
  %7092 = fsub fast float 1.000000e+00, %7091
  %7093 = fmul fast float %7062, %7092
  %7094 = fsub fast float -0.000000e+00, %7093
  %7095 = fdiv fast float %7094, %7065
  br label %7096

; <label>:7096                                    ; preds = %7089, %7085, %7045, %7038
  %7097 = phi float [ %7095, %7089 ], [ %7057, %7045 ], [ %7042, %7038 ], [ %7062, %7085 ]
  %7098 = phi float [ %7086, %7089 ], [ %7056, %7045 ], [ %7041, %7038 ], [ %7086, %7085 ]
  %7099 = phi float [ %7075, %7089 ], [ %7055, %7045 ], [ %7040, %7038 ], [ %7075, %7085 ]
  %7100 = phi float [ %7091, %7089 ], [ %7047, %7045 ], [ 1.000000e+00, %7038 ], [ 1.000000e+00, %7085 ]
  %7101 = phi float [ %7087, %7089 ], [ %7047, %7045 ], [ 1.000000e+00, %7038 ], [ %7087, %7085 ]
  %7102 = phi float [ %7076, %7089 ], [ %7047, %7045 ], [ 1.000000e+00, %7038 ], [ %7076, %7085 ]
  %7103 = fmul fast float %7102, %7014
  %7104 = fmul fast float %7101, %7025
  %7105 = fmul fast float %7100, %7036
  %7106 = fadd fast float %7103, %7099
  %7107 = fadd fast float %7104, %7098
  %7108 = fadd fast float %7105, %7097
  %7109 = fmul fast float %7102, %7013
  %7110 = fmul fast float %7101, %7024
  %7111 = fmul fast float %7100, %7035
  br label %7112

; <label>:7112                                    ; preds = %7096, %6907
  %7113 = phi float [ %7111, %7096 ], [ %6913, %6907 ]
  %7114 = phi float [ %7110, %7096 ], [ %6912, %6907 ]
  %7115 = phi float [ %7109, %7096 ], [ %6911, %6907 ]
  %7116 = phi float [ %7108, %7096 ], [ %6910, %6907 ]
  %7117 = phi float [ %7107, %7096 ], [ %6909, %6907 ]
  %7118 = phi float [ %7106, %7096 ], [ %6908, %6907 ]
  %7119 = call float @dx.op.dot3.f32(i32 55, float %7115, float %7114, float %7113, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7120 = call float @dx.op.dot3.f32(i32 55, float %7118, float %7117, float %7116, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7121 = select i1 %1541, float %7119, float %7115
  %7122 = select i1 %1541, float %7119, float %7114
  %7123 = select i1 %1541, float 1.000000e+00, float %7113
  %7124 = select i1 %1541, float %7120, float %7118
  %7125 = select i1 %1541, float 0.000000e+00, float %7117
  %7126 = select i1 %1541, float 0.000000e+00, float %7116
  %7127 = fmul fast float %7121, %6356
  %7128 = fmul fast float %7122, %6358
  %7129 = fmul fast float %7123, %6360
  %7130 = fadd fast float %7127, %7124
  %7131 = fadd fast float %7128, %7125
  %7132 = fadd fast float %7126, %7129
  %7133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %7134 = extractvalue %dx.types.CBufRet.f32 %7133, 2
  %7135 = extractvalue %dx.types.CBufRet.f32 %7133, 3
  %7136 = fmul fast float %7134, %88
  %7137 = fmul fast float %7135, %89
  %7138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %58, float %7136, float %7137, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7139 = extractvalue %dx.types.ResRet.f32 %7138, 0
  %7140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %58, float %7136, float %7137, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7141 = extractvalue %dx.types.ResRet.f32 %7140, 0
  %7142 = extractvalue %dx.types.ResRet.f32 %7140, 1
  %7143 = extractvalue %dx.types.ResRet.f32 %7140, 2
  %7144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7145 = extractvalue %dx.types.CBufRet.f32 %7144, 1
  %7146 = fmul fast float %7145, %7141
  %7147 = fmul fast float %7145, %7142
  %7148 = fmul fast float %7145, %7143
  %7149 = fmul fast float %7139, %7115
  %7150 = call float @dx.op.dot3.f32(i32 55, float %7139, float %7139, float %7139, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7151 = call float @dx.op.dot3.f32(i32 55, float %7146, float %7147, float %7148, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7152 = select i1 %1541, float %7150, float %7139
  %7153 = select i1 %1541, float 1.000000e+00, float %7139
  %7154 = select i1 %1541, float %7151, float %7146
  %7155 = select i1 %1541, float 0.000000e+00, float %7147
  %7156 = select i1 %1541, float 0.000000e+00, float %7148
  %7157 = fmul fast float %7152, %7130
  %7158 = fmul fast float %7152, %7131
  %7159 = fmul fast float %7153, %7132
  %7160 = fadd fast float %7157, %7154
  %7161 = fadd fast float %7158, %7155
  %7162 = fadd fast float %7156, %7159
  br label %7163

; <label>:7163                                    ; preds = %7112, %6327
  %7164 = phi float [ %6356, %6327 ], [ %7160, %7112 ]
  %7165 = phi float [ %6358, %6327 ], [ %7161, %7112 ]
  %7166 = phi float [ %6360, %6327 ], [ %7162, %7112 ]
  %7167 = phi float [ 1.000000e+00, %6327 ], [ %7149, %7112 ]
  %7168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %7169 = extractvalue %dx.types.CBufRet.f32 %7168, 2
  %7170 = extractvalue %dx.types.CBufRet.f32 %7168, 3
  %7171 = fmul fast float %7169, %88
  %7172 = fmul fast float %7170, %89
  %7173 = call float @dx.op.unary.f32(i32 7, float %7171)  ; Saturate(value)
  %7174 = call float @dx.op.unary.f32(i32 7, float %7172)  ; Saturate(value)
  %7175 = select i1 %105, i32 0, i32 2
  %7176 = or i32 %7175, 1
  %7177 = uitofp i32 %7176 to float
  %7178 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %58, float %7173, float %7174, float %7177, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7179 = extractvalue %dx.types.ResRet.f32 %7178, 0
  %7180 = extractvalue %dx.types.ResRet.f32 %7178, 1
  %7181 = extractvalue %dx.types.ResRet.f32 %7178, 2
  %7182 = extractvalue %dx.types.ResRet.f32 %7178, 3
  %7183 = add nuw nsw i32 %7175, 2
  %7184 = uitofp i32 %7183 to float
  %7185 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %58, float %7173, float %7174, float %7184, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7186 = extractvalue %dx.types.ResRet.f32 %7185, 0
  %7187 = extractvalue %dx.types.ResRet.f32 %7185, 1
  %7188 = extractvalue %dx.types.ResRet.f32 %7185, 2
  %7189 = extractvalue %dx.types.ResRet.f32 %7185, 3
  %7190 = call float @dx.op.binary.f32(i32 35, float %7180, float %7181)  ; FMax(a,b)
  %7191 = call float @dx.op.binary.f32(i32 35, float %7179, float %7190)  ; FMax(a,b)
  %7192 = call float @dx.op.binary.f32(i32 35, float %7191, float %7182)  ; FMax(a,b)
  %7193 = call float @dx.op.binary.f32(i32 36, float %7187, float %7188)  ; FMin(a,b)
  %7194 = call float @dx.op.binary.f32(i32 36, float %7186, float %7193)  ; FMin(a,b)
  %7195 = call float @dx.op.binary.f32(i32 36, float %7194, float %7189)  ; FMin(a,b)
  %7196 = fmul fast float %7192, 2.550000e+02
  %7197 = fadd fast float %7196, 0x3F70101020000000
  %7198 = fptoui float %7197 to i32
  %7199 = fmul fast float %7195, 2.550000e+02
  %7200 = fadd fast float %7199, 0x3F70101020000000
  %7201 = fptoui float %7200 to i32
  %7202 = icmp ult i32 %7198, %7201
  br i1 %7202, label %7203, label %7255

; <label>:7203                                    ; preds = %7163
  %7204 = fcmp fast ogt float %77, 9.843750e-01
  %7205 = fadd fast float %78, -4.000000e+00
  %7206 = select i1 %7204, float -4.000000e+00, float %7205
  %7207 = call float @dx.op.binary.f32(i32 35, float %7206, float 0.000000e+00)  ; FMax(a,b)
  %7208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7209 = extractvalue %dx.types.CBufRet.f32 %7208, 0
  %7210 = fadd fast float %7209, %7207
  %7211 = extractvalue %dx.types.CBufRet.f32 %7208, 2
  %7212 = fmul fast float %7210, %7211
  %7213 = call float @dx.op.unary.f32(i32 23, float %7212)  ; Log(value)
  %7214 = extractvalue %dx.types.CBufRet.f32 %7208, 3
  %7215 = fmul fast float %7214, %7213
  %7216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7217 = extractvalue %dx.types.CBufRet.f32 %7216, 2
  %7218 = fmul fast float %7215, %7217
  %7219 = call float @dx.op.unary.f32(i32 7, float %7218)  ; Saturate(value)
  %7220 = uitofp i32 %7198 to float
  %7221 = uitofp i32 %7201 to float
  %7222 = fadd fast float %7220, 5.000000e-01
  %7223 = fadd fast float %7221, 5.000000e-01
  %7224 = fmul fast float %7217, %7222
  %7225 = fmul fast float %7217, %7223
  %7226 = fadd fast float %7224, 0x3F0FFB4800000000
  %7227 = fadd fast float %7225, 0xBF0FFB4800000000
  %7228 = call float @dx.op.binary.f32(i32 35, float %7219, float %7226)  ; FMax(a,b)
  %7229 = call float @dx.op.binary.f32(i32 36, float %7228, float %7227)  ; FMin(a,b)
  %7230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7231 = extractvalue %dx.types.CBufRet.f32 %7230, 1
  %7232 = extractvalue %dx.types.CBufRet.f32 %7230, 2
  %7233 = extractvalue %dx.types.CBufRet.f32 %7230, 0
  %7234 = select i1 %105, float 0.000000e+00, float %7233
  %7235 = fmul fast float %7231, %7229
  %7236 = fadd fast float %7234, %7235
  %7237 = fadd fast float %7234, %7232
  %7238 = fsub fast float %7231, %7232
  %7239 = fadd fast float %7238, %7234
  %7240 = call float @dx.op.binary.f32(i32 35, float %7236, float %7237)  ; FMax(a,b)
  %7241 = call float @dx.op.binary.f32(i32 36, float %7240, float %7239)  ; FMin(a,b)
  %7242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %56, float %7173, float %7174, float %7241, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7243 = extractvalue %dx.types.ResRet.f32 %7242, 0
  %7244 = extractvalue %dx.types.ResRet.f32 %7242, 1
  %7245 = extractvalue %dx.types.ResRet.f32 %7242, 2
  %7246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %56, float %7173, float %7174, float %7241, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7247 = extractvalue %dx.types.ResRet.f32 %7246, 0
  %7248 = extractvalue %dx.types.ResRet.f32 %7246, 1
  %7249 = extractvalue %dx.types.ResRet.f32 %7246, 2
  %7250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7251 = extractvalue %dx.types.CBufRet.f32 %7250, 1
  %7252 = fmul fast float %7251, %7247
  %7253 = fmul fast float %7251, %7248
  %7254 = fmul fast float %7251, %7249
  br label %7255

; <label>:7255                                    ; preds = %7203, %7163
  %7256 = phi float [ %7243, %7203 ], [ 1.000000e+00, %7163 ]
  %7257 = phi float [ %7244, %7203 ], [ 1.000000e+00, %7163 ]
  %7258 = phi float [ %7245, %7203 ], [ 1.000000e+00, %7163 ]
  %7259 = phi float [ %7252, %7203 ], [ 0.000000e+00, %7163 ]
  %7260 = phi float [ %7253, %7203 ], [ 0.000000e+00, %7163 ]
  %7261 = phi float [ %7254, %7203 ], [ 0.000000e+00, %7163 ]
  %7262 = fmul fast float %7256, %7167
  %7263 = call float @dx.op.dot3.f32(i32 55, float %7256, float %7257, float %7258, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7264 = call float @dx.op.dot3.f32(i32 55, float %7259, float %7260, float %7261, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7265 = select i1 %1541, float %7263, float %7256
  %7266 = select i1 %1541, float %7263, float %7257
  %7267 = select i1 %1541, float 1.000000e+00, float %7258
  %7268 = select i1 %1541, float %7264, float %7259
  %7269 = select i1 %1541, float 0.000000e+00, float %7260
  %7270 = select i1 %1541, float 0.000000e+00, float %7261
  %7271 = fmul fast float %7265, %7164
  %7272 = fmul fast float %7266, %7165
  %7273 = fmul fast float %7267, %7166
  %7274 = fadd fast float %7271, %7268
  %7275 = fadd fast float %7272, %7269
  %7276 = fadd fast float %7270, %7273
  %7277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7278 = extractvalue %dx.types.CBufRet.i32 %7277, 3
  %7279 = and i32 %7278, 3
  %7280 = icmp ne i32 %7279, 0
  %7281 = and i32 %7278, 4
  %7282 = icmp ne i32 %7281, 0
  %7283 = and i1 %7280, %7282
  %7284 = and i1 %1541, %7283
  br i1 %7284, label %7285, label %7291

; <label>:7285                                    ; preds = %7255
  %7286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7287 = extractvalue %dx.types.CBufRet.f32 %7286, 1
  %7288 = fadd fast float %7262, -1.000000e+00
  %7289 = fmul fast float %7287, %7288
  %7290 = fadd fast float %7289, 1.000000e+00
  br label %7291

; <label>:7291                                    ; preds = %7285, %7255
  %7292 = phi float [ %7290, %7285 ], [ %7262, %7255 ]
  %7293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7294 = extractvalue %dx.types.CBufRet.f32 %7293, 0
  br i1 %1541, label %7295, label %7309

; <label>:7295                                    ; preds = %7291
  %7296 = fadd fast float %7274, %7275
  %7297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7298 = extractvalue %dx.types.CBufRet.f32 %7297, 3
  %7299 = extractvalue %dx.types.CBufRet.f32 %6344, 1
  %7300 = fsub fast float %6350, %6338
  %7301 = fadd fast float %7300, %6351
  %7302 = fsub fast float %7301, %7299
  %7303 = extractvalue %dx.types.CBufRet.f32 %6344, 2
  %7304 = fmul fast float %7302, %7303
  %7305 = call float @dx.op.unary.f32(i32 7, float %7304)  ; Saturate(value)
  %7306 = fsub fast float %7305, %7298
  %7307 = fmul fast float %7306, %7292
  %7308 = fadd fast float %7307, %7298
  br label %7312

; <label>:7309                                    ; preds = %7291
  %7310 = fmul fast float %7294, %7275
  %7311 = fmul fast float %7294, %7276
  br label %7312

; <label>:7312                                    ; preds = %7309, %7295
  %7313 = phi float [ %7296, %7295 ], [ %7274, %7309 ]
  %7314 = phi float [ %7308, %7295 ], [ %7310, %7309 ]
  %7315 = phi float [ 1.000000e+00, %7295 ], [ %7311, %7309 ]
  %7316 = fmul float %7294, %7313
  %7317 = fadd fast float %893, 0x3FE3C6EF40000000
  %7318 = call float @dx.op.unary.f32(i32 22, float %7317)  ; Frc(value)
  %7319 = call float @dx.op.unary.f32(i32 23, float %7316)  ; Log(value)
  %7320 = fadd fast float %7319, -7.000000e+00
  %7321 = call float @dx.op.unary.f32(i32 21, float %7320)  ; Exp(value)
  %7322 = fmul fast float %7318, 2.000000e+00
  %7323 = fadd fast float %7322, -1.000000e+00
  %7324 = fmul fast float %7321, %7323
  %7325 = fcmp fast ogt float %7316, 0.000000e+00
  %7326 = select i1 %7325, float %7324, float 0.000000e+00
  %7327 = fadd fast float %7326, %7316
  %7328 = fadd fast float %893, 0x3FF3C6EF40000000
  %7329 = call float @dx.op.unary.f32(i32 22, float %7328)  ; Frc(value)
  %7330 = call float @dx.op.unary.f32(i32 23, float %7314)  ; Log(value)
  %7331 = fadd fast float %7330, -7.000000e+00
  %7332 = call float @dx.op.unary.f32(i32 21, float %7331)  ; Exp(value)
  %7333 = fmul fast float %7329, 2.000000e+00
  %7334 = fadd fast float %7333, -1.000000e+00
  %7335 = fmul fast float %7332, %7334
  %7336 = fcmp fast ogt float %7314, 0.000000e+00
  %7337 = select i1 %7336, float %7335, float 0.000000e+00
  %7338 = fadd fast float %7337, %7314
  %7339 = fadd fast float %893, 0x3FFDAA66E0000000
  %7340 = call float @dx.op.unary.f32(i32 22, float %7339)  ; Frc(value)
  %7341 = call float @dx.op.unary.f32(i32 23, float %7315)  ; Log(value)
  %7342 = fadd fast float %7341, -6.000000e+00
  %7343 = call float @dx.op.unary.f32(i32 21, float %7342)  ; Exp(value)
  %7344 = fmul fast float %7340, 2.000000e+00
  %7345 = fadd fast float %7344, -1.000000e+00
  %7346 = fmul fast float %7343, %7345
  %7347 = fcmp fast ogt float %7315, 0.000000e+00
  %7348 = select i1 %7347, float %7346, float 0.000000e+00
  %7349 = fadd fast float %7348, %7315
  %7350 = call float @dx.op.binary.f32(i32 36, float %7327, float 3.225500e+04)  ; FMin(a,b)
  %7351 = call float @dx.op.binary.f32(i32 36, float %7338, float 3.225500e+04)  ; FMin(a,b)
  %7352 = call float @dx.op.binary.f32(i32 36, float %7349, float 3.225500e+04)  ; FMin(a,b)
  %7353 = fmul fast float %7350, %6334
  %7354 = fmul fast float %7351, %6334
  %7355 = fmul fast float %7352, %6334
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7353)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7354)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7355)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6334)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

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

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!77}
!dx.entryPoints = !{!78}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !65, !69}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
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
!38 = !{i32 29, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!39 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!40 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!41 = !{i32 32, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!42 = !{i32 33, %"class.Texture3D<float>"* undef, !"", i32 2, i32 82, i32 1, i32 4, i32 0, !7}
!43 = !{i32 34, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!44 = !{i32 35, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!45 = !{i32 36, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!46 = !{i32 37, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!47 = !{i32 38, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!48 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !12}
!52 = !{i32 43, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!53 = !{i32 44, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!54 = !{i32 45, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!55 = !{i32 46, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!56 = !{i32 47, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!57 = !{i32 48, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!58 = !{i32 49, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!59 = !{i32 50, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!60 = !{i32 51, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!61 = !{i32 52, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!62 = !{i32 53, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!63 = !{i32 54, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!64 = !{i32 55, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 11, i32 1, i32 7, i32 0, !7}
!65 = !{!66, !67, !68}
!66 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!67 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!68 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!69 = !{!70, !71, !72, !73, !74, !75, !76}
!70 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!71 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!72 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!73 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!74 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!75 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!76 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!77 = !{[20 x i32] [i32 18, i32 4, i32 15, i32 15, i32 7, i32 15, i32 7, i32 7, i32 7, i32 7, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0]}
!78 = !{void ()* @ps_main, !"ps_main", !79, !4, !98}
!79 = !{!80, !96, null}
!80 = !{!81, !84, !86, !88, !90, !91, !92, !93, !95}
!81 = !{i32 0, !"SV_Position", i8 9, i8 3, !82, i8 4, i32 1, i8 4, i32 0, i8 0, !83}
!82 = !{i32 0}
!83 = !{i32 3, i32 15}
!84 = !{i32 1, !"NORMAL", i8 9, i8 0, !82, i8 2, i32 1, i8 3, i32 1, i8 0, !85}
!85 = !{i32 3, i32 7}
!86 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !82, i8 2, i32 1, i8 2, i32 2, i8 0, !87}
!87 = !{i32 3, i32 3}
!88 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !82, i8 2, i32 1, i8 1, i32 1, i8 3, !89}
!89 = !{i32 3, i32 1}
!90 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !82, i8 1, i32 1, i8 1, i32 3, i8 0, !89}
!91 = !{i32 5, !"SV_IsFrontFace", i8 5, i8 13, !82, i8 1, i32 1, i8 1, i32 3, i8 1, !89}
!92 = !{i32 6, !"SV_ClipDistance", i8 9, i8 6, !82, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!93 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !94, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!94 = !{i32 1}
!95 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !82, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!96 = !{!97}
!97 = !{i32 0, !"SV_Target", i8 9, i8 16, !82, i8 0, i32 1, i8 4, i32 0, i8 0, !83}
!98 = !{i32 0, i64 24}
!99 = !{!100, !100, i64 0}
!100 = !{!"float", !101, i64 0}
!101 = !{!"omnipotent char", !102, i64 0}
!102 = !{!"Simple C/C++ TBAA"}
!103 = !{!104, !106, !107}
!104 = distinct !{!104, !105, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!105 = distinct !{!105, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!106 = distinct !{!106, !105, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!107 = distinct !{!107, !105, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
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
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = !{!127, !127, i64 0}
!127 = !{!"int", !101, i64 0}
!128 = !{!129, !131, !133, !135}
!129 = distinct !{!129, !130, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!130 = distinct !{!130, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!131 = distinct !{!131, !132, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!132 = distinct !{!132, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!133 = distinct !{!133, !134, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!134 = distinct !{!134, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!135 = distinct !{!135, !136, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!136 = distinct !{!136, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !114}
!139 = distinct !{!139, !114}
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

