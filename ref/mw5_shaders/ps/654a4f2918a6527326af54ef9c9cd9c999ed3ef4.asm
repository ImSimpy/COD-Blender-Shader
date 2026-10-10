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
; shader hash: 2c82570ae74df565672be4f27e446ee4
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
  %192 = mul nuw nsw i32 %187, 148
  %193 = add nuw nsw i32 %192, 4
  %194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %193, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.f32 %194, 0
  %196 = add nuw nsw i32 %192, 8
  %197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.f32 %197, 0
  %199 = fsub fast float 1.000000e+00, %71
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 2
  %202 = fmul fast float %201, %70
  %203 = fmul fast float %201, %199
  %204 = fadd fast float %202, %195
  %205 = fadd fast float %203, %198
  %206 = add nuw nsw i32 %192, 48
  %207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = add nuw nsw i32 %192, 52
  %210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = add nuw nsw i32 %192, 56
  %213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = add nuw nsw i32 %192, 104
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = add nuw nsw i32 %192, 108
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = add nuw nsw i32 %192, 112
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 0
  %226 = fmul fast float %225, %70
  %227 = fmul fast float %225, %71
  %228 = extractvalue %dx.types.CBufRet.f32 %224, 1
  %229 = fadd fast float %226, %228
  %230 = fadd fast float %227, %228
  %231 = add i32 %217, 0
  %232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %231, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %233 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %232, i32 0)  ; GetDimensions(handle,mipLevel)
  %234 = extractvalue %dx.types.Dimensions %233, 0
  %235 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %234)  ; FirstbitLo(value)
  %236 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.i32 %236, 1
  %238 = sub nsw i32 %237, %235
  %239 = sitofp i32 %238 to float
  %240 = fsub fast float %167, %239
  %241 = call float @dx.op.binary.f32(i32 35, float %240, float 0.000000e+00)  ; FMax(a,b)
  %242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %232, %dx.types.Handle %56, float %229, float %230, float %208, float undef, i32 0, i32 0, i32 undef, float %241)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 3
  %247 = fmul fast float %246, 2.000000e+00
  %248 = fmul fast float %247, %243
  %249 = fmul fast float %247, %244
  %250 = fsub fast float %248, %246
  %251 = fsub fast float %249, %246
  %252 = fmul fast float %250, %250
  %253 = fmul fast float %251, %251
  %254 = fadd fast float %252, %253
  %255 = call float @dx.op.unary.f32(i32 24, float %254)  ; Sqrt(value)
  %256 = add i32 %220, 0
  %257 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %256, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %258 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %257, i32 0)  ; GetDimensions(handle,mipLevel)
  %259 = extractvalue %dx.types.Dimensions %258, 0
  %260 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %259)  ; FirstbitLo(value)
  %261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.i32 %261, 1
  %263 = sub nsw i32 %262, %260
  %264 = sitofp i32 %263 to float
  %265 = fsub fast float %167, %264
  %266 = call float @dx.op.binary.f32(i32 35, float %265, float 0.000000e+00)  ; FMax(a,b)
  %267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %257, %dx.types.Handle %56, float %229, float %230, float %211, float undef, i32 0, i32 0, i32 undef, float %266)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = add i32 %223, 0
  %270 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %269, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %271 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %270, i32 0)  ; GetDimensions(handle,mipLevel)
  %272 = extractvalue %dx.types.Dimensions %271, 0
  %273 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %272)  ; FirstbitLo(value)
  %274 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.i32 %274, 1
  %276 = sub nsw i32 %275, %273
  %277 = sitofp i32 %276 to float
  %278 = fsub fast float %167, %277
  %279 = call float @dx.op.binary.f32(i32 35, float %278, float 0.000000e+00)  ; FMax(a,b)
  %280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %270, %dx.types.Handle %56, float %229, float %230, float %214, float undef, i32 0, i32 0, i32 undef, float %279)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 0
  %282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.i32 %282, 0
  %284 = call i32 @dx.op.binary.i32(i32 40, i32 %187, i32 %283)  ; UMin(a,b)
  %285 = mul i32 %284, 36
  %286 = add i32 %285, 4
  %287 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %191)  ; FirstbitLo(value)
  %288 = shl i32 %287, 2
  %289 = add i32 %286, %288
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 32767
  %293 = mul nuw nsw i32 %292, 928
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = or i32 %293, 8
  %297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 0
  %299 = or i32 %293, 12
  %300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 1
  %302 = or i32 %293, 20
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = or i32 %293, 24
  %306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = extractvalue %dx.types.ResRet.f32 %306, 1
  %309 = extractvalue %dx.types.ResRet.f32 %306, 2
  %310 = extractvalue %dx.types.ResRet.f32 %306, 3
  %311 = add nuw nsw i32 %293, 40
  %312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.f32 %312, 0
  %314 = add nuw nsw i32 %293, 72
  %315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = extractvalue %dx.types.ResRet.f32 %315, 1
  %318 = add nuw nsw i32 %293, 80
  %319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.f32 %319, 0
  %321 = add nuw nsw i32 %293, 228
  %322 = add nuw nsw i32 %293, 596
  %323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.f32 %323, 0
  %325 = extractvalue %dx.types.ResRet.f32 %323, 1
  %326 = add nuw nsw i32 %293, 620
  %327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = extractvalue %dx.types.ResRet.f32 %327, 1
  %330 = add nuw nsw i32 %293, 628
  %331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.f32 %331, 0
  %333 = extractvalue %dx.types.ResRet.f32 %331, 1
  %334 = extractvalue %dx.types.ResRet.f32 %331, 2
  %335 = extractvalue %dx.types.ResRet.f32 %331, 3
  %336 = add nuw nsw i32 %293, 648
  %337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  %339 = add nuw nsw i32 %293, 812
  %340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.f32 %340, 0
  %342 = add nuw nsw i32 %293, 816
  %343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.f32 %343, 1
  %345 = add nuw nsw i32 %293, 896
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = add nuw nsw i32 %293, 900
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = add nuw nsw i32 %293, 904
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %295, 128
  %355 = icmp ne i32 %354, 0
  %356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.i32 %356, 0
  %358 = and i32 %357, 512
  %359 = icmp ne i32 %358, 0
  %360 = and i1 %355, %359
  %361 = select i1 %360, float 0.000000e+00, float 1.000000e+00
  %362 = call float @dx.op.unary.f32(i32 7, float %361)  ; Saturate(value)
  %363 = fmul fast float %362, 2.550000e+02
  %364 = fptoui float %363 to i32
  %365 = fcmp fast ole float %69, 0x3FA4B5DCC0000000
  %366 = fmul fast float %69, 0x3FB3D07220000000
  %367 = fadd fast float %69, 0x3FAC28F5C0000000
  %368 = fmul fast float %367, 0x3FEE54EDE0000000
  %369 = call float @dx.op.unary.f32(i32 23, float %368)  ; Log(value)
  %370 = fmul fast float %369, 0x4003333340000000
  %371 = call float @dx.op.unary.f32(i32 21, float %370)  ; Exp(value)
  %372 = select i1 %365, float %366, float %371
  %373 = call float @dx.op.unary.f32(i32 7, float %372)  ; Saturate(value)
  %374 = fmul fast float %324, %268
  %375 = fadd fast float %374, %325
  %376 = call float @dx.op.unary.f32(i32 7, float %375)  ; Saturate(value)
  %377 = call float @dx.op.binary.f32(i32 35, float %373, float %376)  ; FMax(a,b)
  %378 = add i32 %350, 0
  %379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %378, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 0
  %382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.f32 %382, 0
  %384 = extractvalue %dx.types.CBufRet.f32 %382, 1
  %385 = extractvalue %dx.types.CBufRet.f32 %382, 2
  %386 = fadd fast float %383, %143
  %387 = fadd fast float %384, %144
  %388 = fadd fast float %385, %145
  %389 = fmul fast float %143, %143
  %390 = fmul fast float %144, %144
  %391 = fadd fast float %389, %390
  %392 = fmul fast float %145, %145
  %393 = fadd fast float %391, %392
  %394 = call float @dx.op.unary.f32(i32 24, float %393)  ; Sqrt(value)
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 0
  %397 = fcmp fast ogt float %394, %396
  %398 = zext i1 %397 to i32
  %399 = extractvalue %dx.types.CBufRet.f32 %395, 1
  %400 = fcmp fast ogt float %394, %399
  %401 = zext i1 %400 to i32
  %402 = add nuw nsw i32 %401, %398
  %403 = extractvalue %dx.types.CBufRet.f32 %395, 2
  %404 = fcmp fast ogt float %394, %403
  %405 = zext i1 %404 to i32
  %406 = add nuw nsw i32 %402, %405
  %407 = icmp ult i32 %406, 3
  %408 = zext i1 %407 to i32
  %409 = shl nuw nsw i32 %406, 2
  %410 = add nuw nsw i32 %409, 48
  %411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 %410)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.f32 %411, 1
  %413 = fcmp fast ogt float %394, %412
  %414 = zext i1 %413 to i32
  %415 = or i32 %409, 1
  %416 = add nuw nsw i32 %415, 48
  %417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 %416)  ; CBufferLoadLegacy(handle,regIndex)
  %418 = extractvalue %dx.types.CBufRet.f32 %417, 1
  %419 = fcmp fast ogt float %394, %418
  %420 = zext i1 %419 to i32
  %421 = add nuw nsw i32 %420, %414
  %422 = or i32 %409, 2
  %423 = add nuw nsw i32 %422, 48
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 %423)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 1
  %426 = fcmp fast ogt float %394, %425
  %427 = zext i1 %426 to i32
  %428 = add nuw nsw i32 %421, %427
  %429 = add i32 %304, -1
  %430 = call i32 @dx.op.binary.i32(i32 40, i32 %428, i32 %429)  ; UMin(a,b)
  %431 = add i32 %409, %430
  %432 = call i32 @dx.op.binary.i32(i32 40, i32 %431, i32 12)  ; UMin(a,b)
  %433 = add i32 %432, 48
  %434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 %433)  ; CBufferLoadLegacy(handle,regIndex)
  %435 = extractvalue %dx.types.CBufRet.f32 %434, 0
  %436 = fcmp fast oge float %394, %435
  %437 = zext i1 %436 to i32
  %438 = call i32 @dx.op.binary.i32(i32 40, i32 %304, i32 %408)  ; UMin(a,b)
  %439 = call i32 @dx.op.binary.i32(i32 40, i32 %437, i32 %438)  ; UMin(a,b)
  %440 = add i32 %439, %304
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %620, label %442

; <label>:442                                     ; preds = %0
  br label %443

; <label>:443                                     ; preds = %443, %442
  %444 = phi float [ %616, %443 ], [ 0.000000e+00, %442 ]
  %445 = phi float [ %608, %443 ], [ 0.000000e+00, %442 ]
  %446 = phi float [ %609, %443 ], [ 0.000000e+00, %442 ]
  %447 = phi i32 [ %455, %443 ], [ %432, %442 ]
  %448 = phi i32 [ %617, %443 ], [ 0, %442 ]
  %449 = add i32 %448, %447
  %450 = and i32 %449, -4
  %451 = add i32 %450, %304
  %452 = icmp uge i32 %449, %451
  %453 = sub i32 4, %304
  %454 = select i1 %452, i32 %453, i32 0
  %455 = add i32 %454, %447
  %456 = add i32 %454, %449
  %457 = and i32 %456, 3
  %458 = lshr i32 %456, 2
  %459 = add i32 %456, 32
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 %459)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 0
  %462 = extractvalue %dx.types.CBufRet.f32 %460, 1
  %463 = extractvalue %dx.types.CBufRet.f32 %460, 2
  %464 = extractvalue %dx.types.CBufRet.f32 %460, 3
  %465 = fmul fast float %461, %394
  %466 = fadd fast float %465, %462
  %467 = call float @dx.op.unary.f32(i32 7, float %466)  ; Saturate(value)
  %468 = fmul fast float %463, %394
  %469 = fadd fast float %468, %464
  %470 = call float @dx.op.unary.f32(i32 7, float %469)  ; Saturate(value)
  %471 = call float @dx.op.binary.f32(i32 36, float %467, float %470)  ; FMin(a,b)
  %472 = mul nuw nsw i32 %457, 72
  %473 = add nuw nsw i32 %321, %472
  %474 = add nuw nsw i32 %473, 16
  %475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = extractvalue %dx.types.ResRet.f32 %475, 1
  %478 = extractvalue %dx.types.ResRet.f32 %475, 2
  %479 = extractvalue %dx.types.ResRet.f32 %475, 3
  %480 = add nuw nsw i32 %473, 36
  %481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = add nuw nsw i32 %473, 56
  %484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = fmul fast float %255, 3.906250e-03
  %487 = fmul fast float %486, %320
  %488 = fmul fast float %487, %482
  %489 = fmul fast float %488, %485
  %490 = extractvalue %dx.types.ResRet.f32 %484, 1
  %491 = fadd fast float %489, %490
  %492 = call float @dx.op.binary.f32(i32 35, float %491, float 0.000000e+00)  ; FMax(a,b)
  %493 = add nuw nsw i32 %473, 32
  %494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.f32 %494, 0
  %496 = fmul fast float %482, %250
  %497 = fmul fast float %482, %251
  %498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %499 = extractvalue %dx.types.CBufRet.f32 %498, 1
  %500 = add nuw nsw i32 %473, 40
  %501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = extractvalue %dx.types.ResRet.f32 %501, 1
  %504 = extractvalue %dx.types.ResRet.f32 %501, 2
  %505 = extractvalue %dx.types.ResRet.f32 %501, 3
  %506 = fadd fast float %499, %183
  %507 = fadd fast float %506, %504
  %508 = fmul fast float %506, %503
  %509 = call float @dx.op.unary.f32(i32 29, float %508)  ; Round_z(value)
  %510 = fmul fast float %502, %509
  %511 = fsub fast float %506, %510
  %512 = fmul fast float %507, %503
  %513 = call float @dx.op.unary.f32(i32 29, float %512)  ; Round_z(value)
  %514 = fmul fast float %513, %502
  %515 = fsub fast float %507, %514
  %516 = fmul fast float %511, %496
  %517 = fmul fast float %511, %497
  %518 = fmul fast float %515, %496
  %519 = fmul fast float %515, %497
  %520 = fsub fast float %386, %516
  %521 = fsub fast float %387, %517
  %522 = fsub fast float %386, %518
  %523 = fsub fast float %387, %519
  %524 = fsub fast float %504, %511
  %525 = call float @dx.op.unary.f32(i32 6, float %524)  ; FAbs(value)
  %526 = fmul fast float %525, %505
  %527 = call float @dx.op.unary.f32(i32 7, float %526)  ; Saturate(value)
  %528 = fmul fast float %298, 4.000000e+00
  %529 = uitofp i32 %458 to float
  %530 = fadd fast float %529, %528
  %531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %532 = extractvalue %dx.types.CBufRet.f32 %531, 0
  %533 = extractvalue %dx.types.CBufRet.f32 %531, 1
  %534 = extractvalue %dx.types.CBufRet.f32 %531, 2
  %535 = extractvalue %dx.types.CBufRet.f32 %531, 3
  %536 = getelementptr inbounds [4 x float], [4 x float]* %65, i32 0, i32 0
  store float %532, float* %536, align 4
  %537 = getelementptr inbounds [4 x float], [4 x float]* %65, i32 0, i32 1
  store float %533, float* %537, align 4
  %538 = getelementptr inbounds [4 x float], [4 x float]* %65, i32 0, i32 2
  store float %534, float* %538, align 4
  %539 = getelementptr inbounds [4 x float], [4 x float]* %65, i32 0, i32 3
  store float %535, float* %539, align 4
  %540 = getelementptr inbounds [4 x float], [4 x float]* %65, i32 0, i32 %458
  %541 = load float, float* %540, align 4, !tbaa !99, !noalias !103
  %542 = fmul fast float %541, %301
  %543 = fmul fast float %520, %476
  %544 = call float @dx.op.tertiary.f32(i32 46, float %477, float %521, float %543)  ; FMad(a,b,c)
  %545 = fmul fast float %520, %478
  %546 = call float @dx.op.tertiary.f32(i32 46, float %479, float %521, float %545)  ; FMad(a,b,c)
  %547 = add nuw nsw i32 %473, 8
  %548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  %550 = extractvalue %dx.types.ResRet.f32 %548, 1
  %551 = fadd fast float %549, %544
  %552 = fadd fast float %550, %546
  %553 = fmul fast float %551, %542
  %554 = fmul fast float %552, %542
  %555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 0
  %557 = extractvalue %dx.types.ResRet.f32 %555, 1
  %558 = fmul fast float %553, %556
  %559 = fmul fast float %554, %557
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 2
  %562 = fadd fast float %558, %561
  %563 = fadd fast float %559, %561
  %564 = fmul fast float %522, %476
  %565 = call float @dx.op.tertiary.f32(i32 46, float %477, float %523, float %564)  ; FMad(a,b,c)
  %566 = fmul fast float %522, %478
  %567 = call float @dx.op.tertiary.f32(i32 46, float %479, float %523, float %566)  ; FMad(a,b,c)
  %568 = fadd fast float %549, %565
  %569 = fadd fast float %550, %567
  %570 = fmul fast float %568, %542
  %571 = fmul fast float %569, %542
  %572 = fmul fast float %570, %556
  %573 = fmul fast float %571, %557
  %574 = fadd fast float %572, %561
  %575 = fadd fast float %573, %561
  %576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %57, float %562, float %563, float %530, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 0
  %578 = extractvalue %dx.types.ResRet.f32 %576, 1
  %579 = extractvalue %dx.types.ResRet.f32 %576, 3
  %580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %57, float %574, float %575, float %530, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %581 = extractvalue %dx.types.ResRet.f32 %580, 0
  %582 = extractvalue %dx.types.ResRet.f32 %580, 1
  %583 = extractvalue %dx.types.ResRet.f32 %580, 3
  %584 = fsub fast float %581, %577
  %585 = fsub fast float %582, %578
  %586 = fsub fast float %583, %579
  %587 = fmul fast float %584, %527
  %588 = fmul fast float %585, %527
  %589 = fmul fast float %586, %527
  %590 = fadd fast float %587, %577
  %591 = fadd fast float %588, %578
  %592 = fadd fast float %589, %579
  %593 = fmul fast float %590, 2.000000e+00
  %594 = fmul fast float %591, 2.000000e+00
  %595 = fadd fast float %593, -1.000000e+00
  %596 = fadd fast float %594, -1.000000e+00
  %597 = fmul fast float %595, %476
  %598 = call float @dx.op.tertiary.f32(i32 46, float %596, float %478, float %597)  ; FMad(a,b,c)
  %599 = fmul fast float %595, %477
  %600 = call float @dx.op.tertiary.f32(i32 46, float %596, float %479, float %599)  ; FMad(a,b,c)
  %601 = fmul fast float %471, %381
  %602 = fmul fast float %601, %492
  %603 = fmul fast float %602, %495
  %604 = fmul fast float %598, %603
  %605 = fmul fast float %604, %556
  %606 = fmul fast float %600, %603
  %607 = fmul fast float %606, %557
  %608 = fadd fast float %605, %445
  %609 = fadd fast float %607, %446
  %610 = add nuw nsw i32 %473, 64
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = fmul fast float %612, %592
  %614 = extractvalue %dx.types.ResRet.f32 %611, 1
  %615 = fadd fast float %613, %614
  %616 = call float @dx.op.binary.f32(i32 35, float %444, float %615)  ; FMax(a,b)
  %617 = add nuw i32 %448, 1
  %618 = icmp eq i32 %617, %440
  br i1 %618, label %619, label %443

; <label>:619                                     ; preds = %443
  br label %620

; <label>:620                                     ; preds = %619, %0
  %621 = phi float [ 0.000000e+00, %0 ], [ %616, %619 ]
  %622 = phi float [ 0.000000e+00, %0 ], [ %608, %619 ]
  %623 = phi float [ 0.000000e+00, %0 ], [ %609, %619 ]
  %624 = call float @dx.op.dot3.f32(i32 55, float %622, float %623, float 1.000000e+00, float %622, float %623, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %625 = call float @dx.op.unary.f32(i32 25, float %624)  ; Rsqrt(value)
  %626 = fmul fast float %625, %622
  %627 = fmul fast float %625, %623
  %628 = fmul fast float %621, %328
  %629 = fadd fast float %628, %329
  %630 = call float @dx.op.unary.f32(i32 7, float %629)  ; Saturate(value)
  %631 = fadd fast float %630, %377
  %632 = and i32 %295, 16
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %693, label %634

; <label>:634                                     ; preds = %620
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %637 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %638 = fsub fast float %386, %636
  %639 = fsub fast float %387, %637
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 2
  %642 = fmul fast float %638, %641
  %643 = fmul fast float %639, %641
  %644 = fadd fast float %642, 5.000000e-01
  %645 = fadd fast float %643, 5.000000e-01
  %646 = fcmp fast olt float %644, 0.000000e+00
  %647 = fcmp fast olt float %645, 0.000000e+00
  %648 = or i1 %646, %647
  %649 = fcmp fast oge float %644, 1.000000e+00
  %650 = fcmp fast oge float %645, 1.000000e+00
  %651 = or i1 %649, %650
  %652 = or i1 %648, %651
  br i1 %652, label %684, label %653

; <label>:653                                     ; preds = %634
  %654 = fmul fast float %641, %386
  %655 = fmul fast float %641, %387
  %656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %657 = extractvalue %dx.types.CBufRet.f32 %656, 2
  %658 = fsub fast float %388, %657
  %659 = extractvalue %dx.types.CBufRet.f32 %656, 1
  %660 = fmul fast float %658, %659
  %661 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %662 = call float @dx.op.binary.f32(i32 36, float %645, float %661)  ; FMin(a,b)
  %663 = call float @dx.op.binary.f32(i32 36, float %644, float %662)  ; FMin(a,b)
  %664 = call float @dx.op.binary.f32(i32 35, float %645, float %661)  ; FMax(a,b)
  %665 = call float @dx.op.binary.f32(i32 35, float %644, float %664)  ; FMax(a,b)
  %666 = fsub fast float 1.000000e+00, %665
  %667 = call float @dx.op.binary.f32(i32 36, float %663, float %666)  ; FMin(a,b)
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 3
  %670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %671 = extractvalue %dx.types.CBufRet.f32 %670, 1
  %672 = call float @dx.op.binary.f32(i32 35, float %671, float %669)  ; FMax(a,b)
  %673 = fsub fast float %672, %671
  %674 = fsub fast float %667, %671
  %675 = fdiv fast float %674, %673
  %676 = call float @dx.op.unary.f32(i32 7, float %675)  ; Saturate(value)
  %677 = fmul fast float %676, 2.000000e+00
  %678 = fsub fast float 3.000000e+00, %677
  %679 = fmul fast float %676, %676
  %680 = fmul fast float %679, %678
  %681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %57, float %654, float %655, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %682 = extractvalue %dx.types.ResRet.f32 %681, 0
  %683 = fmul fast float %680, %682
  br label %684

; <label>:684                                     ; preds = %653, %634
  %685 = phi float [ %683, %653 ], [ 0.000000e+00, %634 ]
  %686 = fmul fast float %344, %204
  %687 = fmul fast float %344, %205
  %688 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %689 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %379, %dx.types.Handle %688, float %686, float %687, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %690 = extractvalue %dx.types.ResRet.f32 %689, 0
  %691 = fmul fast float %690, %685
  %692 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %691)  ; FMax(a,b)
  br label %693

; <label>:693                                     ; preds = %684, %620
  %694 = phi float [ %692, %684 ], [ 0.000000e+00, %620 ]
  %695 = and i32 %295, 8
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %713, label %697

; <label>:697                                     ; preds = %693
  %698 = fadd fast float %341, 1.000000e+00
  %699 = fmul fast float %631, %698
  %700 = fsub fast float %699, %341
  %701 = fsub fast float %698, %700
  %702 = call float @dx.op.unary.f32(i32 7, float %701)  ; Saturate(value)
  %703 = fsub fast float 1.000000e+00, %699
  %704 = call float @dx.op.unary.f32(i32 7, float %703)  ; Saturate(value)
  %705 = fsub fast float %702, %704
  %706 = fsub fast float %694, %704
  %707 = fdiv fast float %706, %705
  %708 = call float @dx.op.unary.f32(i32 7, float %707)  ; Saturate(value)
  %709 = fmul fast float %708, 2.000000e+00
  %710 = fsub fast float 3.000000e+00, %709
  %711 = fmul fast float %708, %708
  %712 = fmul fast float %711, %710
  br label %713

; <label>:713                                     ; preds = %697, %693
  %714 = phi float [ %712, %697 ], [ %694, %693 ]
  %715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %716 = extractvalue %dx.types.CBufRet.f32 %715, 3
  %717 = fmul fast float %716, %714
  %718 = and i32 %295, 32
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %736, label %720

; <label>:720                                     ; preds = %713
  %721 = add i32 %353, 0
  %722 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %721, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %722, %dx.types.Handle %58, float %717, float %338, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %724 = extractvalue %dx.types.ResRet.f32 %723, 0
  %725 = extractvalue %dx.types.ResRet.f32 %723, 1
  %726 = extractvalue %dx.types.ResRet.f32 %723, 2
  %727 = extractvalue %dx.types.ResRet.f32 %723, 3
  %728 = and i32 %347, 255
  %729 = uitofp i32 %728 to float
  %730 = lshr i32 %347, 8
  %731 = and i32 %730, 255
  %732 = uitofp i32 %731 to float
  %733 = fmul fast float %727, %729
  %734 = fadd fast float %733, %732
  %735 = fmul fast float %734, 0x3F70101000000000
  br label %736

; <label>:736                                     ; preds = %720, %713
  %737 = phi float [ %724, %720 ], [ %332, %713 ]
  %738 = phi float [ %725, %720 ], [ %333, %713 ]
  %739 = phi float [ %726, %720 ], [ %334, %713 ]
  %740 = phi float [ %735, %720 ], [ %335, %713 ]
  %741 = fsub fast float %737, %307
  %742 = fsub fast float %738, %308
  %743 = fsub fast float %739, %309
  %744 = fmul fast float %741, %717
  %745 = fmul fast float %742, %717
  %746 = fmul fast float %743, %717
  %747 = fadd fast float %744, %307
  %748 = fadd fast float %745, %308
  %749 = fadd fast float %746, %309
  %750 = fsub fast float %740, %310
  %751 = fmul fast float %750, %717
  %752 = fadd fast float %751, %310
  %753 = fmul fast float %316, %281
  %754 = fadd fast float %753, %317
  %755 = and i32 %168, 65535
  %756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %755)  ; LegacyF16ToF32(value)
  %757 = lshr i32 %170, 16
  %758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %757)  ; LegacyF16ToF32(value)
  %759 = fadd fast float %747, %756
  %760 = fadd fast float %748, %758
  %761 = fadd fast float %749, %756
  %762 = fadd fast float %752, %758
  %763 = call i32 @dx.op.legacyF32ToF16(i32 130, float %759)  ; LegacyF32ToF16(value)
  %764 = call i32 @dx.op.legacyF32ToF16(i32 130, float %760)  ; LegacyF32ToF16(value)
  %765 = shl i32 %764, 16
  %766 = or i32 %765, %763
  %767 = call i32 @dx.op.legacyF32ToF16(i32 130, float %761)  ; LegacyF32ToF16(value)
  %768 = call i32 @dx.op.legacyF32ToF16(i32 130, float %762)  ; LegacyF32ToF16(value)
  %769 = shl i32 %768, 16
  %770 = or i32 %769, %767
  %771 = fadd fast float %756, 1.000000e+00
  %772 = fadd fast float %758, %313
  %773 = call i32 @dx.op.legacyF32ToF16(i32 130, float %771)  ; LegacyF32ToF16(value)
  %774 = call i32 @dx.op.legacyF32ToF16(i32 130, float %772)  ; LegacyF32ToF16(value)
  %775 = shl i32 %774, 16
  %776 = or i32 %775, %773
  %777 = fcmp fast ogt float %754, 0.000000e+00
  %778 = select i1 %777, float 1.000000e+00, float 0.000000e+00
  %779 = fadd fast float %756, %754
  %780 = fadd fast float %758, %778
  %781 = call float @dx.op.unary.f32(i32 7, float %779)  ; Saturate(value)
  %782 = call float @dx.op.unary.f32(i32 7, float %780)  ; Saturate(value)
  %783 = call i32 @dx.op.legacyF32ToF16(i32 130, float %781)  ; LegacyF32ToF16(value)
  %784 = call i32 @dx.op.legacyF32ToF16(i32 130, float %782)  ; LegacyF32ToF16(value)
  %785 = shl i32 %784, 16
  %786 = or i32 %785, %783
  %787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %788 = extractvalue %dx.types.CBufRet.f32 %787, 2
  %789 = fmul fast float %788, 0x3FE3C6EF40000000
  %790 = frem fast float %88, 2.560000e+02
  %791 = frem fast float %89, 2.560000e+02
  %792 = fptoui float %790 to i32
  %793 = fptoui float %791 to i32
  %794 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %33, i32 0, i32 %792, i32 %793, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %795 = extractvalue %dx.types.ResRet.f32 %794, 0
  %796 = extractvalue %dx.types.ResRet.f32 %794, 1
  %797 = fadd fast float %795, %789
  %798 = fadd fast float %796, %789
  %799 = call float @dx.op.unary.f32(i32 22, float %797)  ; Frc(value)
  %800 = call float @dx.op.unary.f32(i32 22, float %798)  ; Frc(value)
  %801 = fcmp fast ogt float %109, 0.000000e+00
  %802 = fcmp fast olt float %109, 0.000000e+00
  %803 = zext i1 %801 to i32
  %804 = zext i1 %802 to i32
  %805 = sub nsw i32 %803, %804
  %806 = sitofp i32 %805 to float
  %807 = fadd fast float %806, %109
  %808 = fdiv fast float -1.000000e+00, %807
  %809 = fmul fast float %107, %108
  %810 = fmul fast float %809, %808
  %811 = fmul fast float %107, %107
  %812 = fmul fast float %811, %806
  %813 = fmul fast float %812, %808
  %814 = fadd fast float %813, 1.000000e+00
  %815 = fmul fast float %810, %806
  %816 = fmul fast float %107, %806
  %817 = fsub fast float -0.000000e+00, %816
  %818 = fmul fast float %108, %108
  %819 = fmul fast float %818, %808
  %820 = fadd fast float %819, %806
  %821 = fsub fast float -0.000000e+00, %108
  %822 = and i32 %763, 65535
  %823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %822)  ; LegacyF16ToF32(value)
  %824 = lshr i32 %766, 16
  %825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %824)  ; LegacyF16ToF32(value)
  %826 = and i32 %767, 65535
  %827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %826)  ; LegacyF16ToF32(value)
  %828 = lshr i32 %770, 16
  %829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %828)  ; LegacyF16ToF32(value)
  %830 = and i32 %773, 65535
  %831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %830)  ; LegacyF16ToF32(value)
  %832 = lshr i32 %776, 16
  %833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %832)  ; LegacyF16ToF32(value)
  %834 = call float @dx.op.unary.f32(i32 7, float %833)  ; Saturate(value)
  %835 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %836 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %837 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %838 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %839 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %840 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %841 = fadd fast float %835, %143
  %842 = fadd fast float %836, %144
  %843 = fadd fast float %837, %145
  %844 = fadd fast float %838, %143
  %845 = fadd fast float %839, %144
  %846 = fadd fast float %840, %145
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 0
  %849 = extractvalue %dx.types.CBufRet.f32 %847, 1
  %850 = extractvalue %dx.types.CBufRet.f32 %847, 2
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 2
  %853 = extractvalue %dx.types.CBufRet.f32 %851, 3
  %854 = fmul fast float %848, %88
  %855 = fmul fast float %854, %852
  %856 = fmul fast float %849, %89
  %857 = fmul fast float %856, %853
  %858 = fptoui float %855 to i32
  %859 = fptoui float %857 to i32
  %860 = fadd fast float %848, -1.000000e+00
  %861 = fadd fast float %849, -1.000000e+00
  %862 = fptoui float %860 to i32
  %863 = fptoui float %861 to i32
  %864 = call i32 @dx.op.binary.i32(i32 40, i32 %858, i32 %862)  ; UMin(a,b)
  %865 = call i32 @dx.op.binary.i32(i32 40, i32 %859, i32 %863)  ; UMin(a,b)
  %866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %867 = extractvalue %dx.types.CBufRet.f32 %866, 2
  %868 = extractvalue %dx.types.CBufRet.f32 %866, 3
  %869 = fmul fast float %867, %78
  %870 = fsub fast float %869, %868
  %871 = fadd fast float %850, -1.000000e+00
  %872 = call float @dx.op.binary.f32(i32 36, float %870, float %871)  ; FMin(a,b)
  %873 = fptoui float %872 to i32
  %874 = fptoui float %848 to i32
  %875 = fptoui float %849 to i32
  %876 = mul i32 %873, %875
  %877 = add i32 %876, %865
  %878 = mul i32 %877, %874
  %879 = add i32 %878, %864
  %880 = shl i32 %879, 2
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %880, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = and i32 %882, 1023
  %884 = lshr i32 %882, 10
  %885 = icmp eq i32 %883, 0
  br i1 %885, label %1275, label %886

; <label>:886                                     ; preds = %736
  %887 = and i32 %882, 1023
  br label %888

; <label>:888                                     ; preds = %1007, %886
  %889 = phi float [ %1008, %1007 ], [ 0.000000e+00, %886 ]
  %890 = phi float [ %1009, %1007 ], [ 0.000000e+00, %886 ]
  %891 = phi float [ %1010, %1007 ], [ 0.000000e+00, %886 ]
  %892 = phi float [ %1011, %1007 ], [ %626, %886 ]
  %893 = phi float [ %1012, %1007 ], [ %627, %886 ]
  %894 = phi float [ %1013, %1007 ], [ %831, %886 ]
  %895 = phi float [ %1014, %1007 ], [ %834, %886 ]
  %896 = phi float [ %1015, %1007 ], [ %829, %886 ]
  %897 = phi float [ %1016, %1007 ], [ %823, %886 ]
  %898 = phi float [ %1017, %1007 ], [ %825, %886 ]
  %899 = phi float [ %1018, %1007 ], [ %827, %886 ]
  %900 = phi i32 [ %956, %1007 ], [ 0, %886 ]
  %901 = add nuw nsw i32 %900, %884
  %902 = shl i32 %901, 2
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = shl i32 %904, 8
  %906 = or i32 %905, 48
  %907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %908 = extractvalue %dx.types.ResRet.f32 %907, 0
  %909 = extractvalue %dx.types.ResRet.f32 %907, 1
  %910 = extractvalue %dx.types.ResRet.f32 %907, 2
  %911 = extractvalue %dx.types.ResRet.f32 %907, 3
  %912 = or i32 %905, 64
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = extractvalue %dx.types.ResRet.i32 %913, 1
  %916 = or i32 %905, 80
  %917 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.f32 %917, 2
  %919 = extractvalue %dx.types.ResRet.f32 %917, 3
  %920 = or i32 %905, 96
  %921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %920, i32 undef)  ; BufferLoad(srv,index,wot)
  %922 = extractvalue %dx.types.ResRet.f32 %921, 0
  %923 = extractvalue %dx.types.ResRet.f32 %921, 1
  %924 = extractvalue %dx.types.ResRet.f32 %921, 2
  %925 = extractvalue %dx.types.ResRet.f32 %921, 3
  %926 = or i32 %905, 112
  %927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %926, i32 undef)  ; BufferLoad(srv,index,wot)
  %928 = extractvalue %dx.types.ResRet.f32 %927, 2
  %929 = or i32 %905, 128
  %930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.f32 %930, 0
  %932 = extractvalue %dx.types.ResRet.f32 %930, 1
  %933 = extractvalue %dx.types.ResRet.f32 %930, 2
  %934 = extractvalue %dx.types.ResRet.f32 %930, 3
  %935 = or i32 %905, 144
  %936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.f32 %936, 0
  %938 = extractvalue %dx.types.ResRet.f32 %936, 1
  %939 = extractvalue %dx.types.ResRet.f32 %936, 2
  %940 = extractvalue %dx.types.ResRet.f32 %936, 3
  %941 = or i32 %905, 160
  %942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.f32 %942, 0
  %944 = extractvalue %dx.types.ResRet.f32 %942, 1
  %945 = extractvalue %dx.types.ResRet.f32 %942, 2
  %946 = or i32 %905, 192
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = or i32 %905, 208
  %950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %949, i32 undef)  ; BufferLoad(srv,index,wot)
  %951 = extractvalue %dx.types.ResRet.f32 %950, 0
  %952 = or i32 %905, 248
  %953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.f32 %953, 0
  %955 = extractvalue %dx.types.ResRet.f32 %953, 1
  %956 = add nuw nsw i32 %900, 1
  %957 = bitcast float %911 to i32
  %958 = and i32 %957, 512
  %959 = icmp ne i32 %958, 0
  %960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.f32 %960, 0
  %962 = extractvalue %dx.types.ResRet.f32 %960, 1
  %963 = extractvalue %dx.types.ResRet.f32 %960, 2
  %964 = extractvalue %dx.types.ResRet.f32 %960, 3
  %965 = call float @dx.op.dot4.f32(i32 56, float %961, float %962, float %963, float %964, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %966 = or i32 %905, 16
  %967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.f32 %967, 0
  %969 = extractvalue %dx.types.ResRet.f32 %967, 1
  %970 = extractvalue %dx.types.ResRet.f32 %967, 2
  %971 = extractvalue %dx.types.ResRet.f32 %967, 3
  %972 = call float @dx.op.dot4.f32(i32 56, float %968, float %969, float %970, float %971, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %973 = or i32 %905, 32
  %974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.f32 %974, 0
  %976 = extractvalue %dx.types.ResRet.f32 %974, 1
  %977 = extractvalue %dx.types.ResRet.f32 %974, 2
  %978 = extractvalue %dx.types.ResRet.f32 %974, 3
  %979 = call float @dx.op.dot4.f32(i32 56, float %975, float %976, float %977, float %978, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %980 = call float @dx.op.unary.f32(i32 27, float %965)  ; Round_ni(value)
  %981 = call float @dx.op.unary.f32(i32 6, float %980)  ; FAbs(value)
  %982 = call float @dx.op.unary.f32(i32 27, float %972)  ; Round_ni(value)
  %983 = call float @dx.op.unary.f32(i32 6, float %982)  ; FAbs(value)
  %984 = call float @dx.op.unary.f32(i32 6, float %979)  ; FAbs(value)
  %985 = call float @dx.op.unary.f32(i32 27, float %984)  ; Round_ni(value)
  %986 = fadd fast float %983, %981
  %987 = fadd fast float %986, %985
  %988 = fcmp fast oeq float %987, 0.000000e+00
  %989 = call float @dx.op.dot4.f32(i32 56, float %961, float %962, float %963, float %964, float %841, float %842, float %843, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %990 = call float @dx.op.dot4.f32(i32 56, float %968, float %969, float %970, float %971, float %841, float %842, float %843, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %991 = call float @dx.op.dot4.f32(i32 56, float %961, float %962, float %963, float %964, float %844, float %845, float %846, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %992 = call float @dx.op.dot4.f32(i32 56, float %968, float %969, float %970, float %971, float %844, float %845, float %846, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %993 = fsub fast float %989, %965
  %994 = fsub fast float %991, %965
  %995 = fsub fast float %990, %972
  %996 = fsub fast float %992, %972
  %997 = call float @dx.op.dot3.f32(i32 55, float %908, float %909, float %910, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %999 = extractvalue %dx.types.CBufRet.f32 %998, 2
  %1000 = call float @dx.op.unary.f32(i32 6, float %997)  ; FAbs(value)
  %1001 = fadd fast float %1000, %999
  %1002 = call float @dx.op.unary.f32(i32 7, float %1001)  ; Saturate(value)
  %1003 = extractvalue %dx.types.CBufRet.f32 %998, 0
  %1004 = fcmp fast ogt float %1002, %1003
  %1005 = and i1 %988, %1004
  %1006 = and i1 %959, %1005
  br i1 %1006, label %1020, label %1007

; <label>:1007                                    ; preds = %1261, %1101, %1020, %888
  %1008 = phi float [ %889, %1020 ], [ %889, %1101 ], [ %1271, %1261 ], [ %889, %888 ]
  %1009 = phi float [ %890, %1020 ], [ %890, %1101 ], [ %1272, %1261 ], [ %890, %888 ]
  %1010 = phi float [ %891, %1020 ], [ %891, %1101 ], [ %1273, %1261 ], [ %891, %888 ]
  %1011 = phi float [ %892, %1020 ], [ %892, %1101 ], [ %1235, %1261 ], [ %892, %888 ]
  %1012 = phi float [ %893, %1020 ], [ %893, %1101 ], [ %1236, %1261 ], [ %893, %888 ]
  %1013 = phi float [ %894, %1020 ], [ %894, %1101 ], [ %1230, %1261 ], [ %894, %888 ]
  %1014 = phi float [ %895, %1020 ], [ %895, %1101 ], [ %1227, %1261 ], [ %895, %888 ]
  %1015 = phi float [ %896, %1020 ], [ %896, %1101 ], [ %1224, %1261 ], [ %896, %888 ]
  %1016 = phi float [ %897, %1020 ], [ %897, %1101 ], [ %1219, %1261 ], [ %897, %888 ]
  %1017 = phi float [ %898, %1020 ], [ %898, %1101 ], [ %1220, %1261 ], [ %898, %888 ]
  %1018 = phi float [ %899, %1020 ], [ %899, %1101 ], [ %1221, %1261 ], [ %899, %888 ]
  %1019 = icmp eq i32 %956, %887
  br i1 %1019, label %1274, label %888

; <label>:1020                                    ; preds = %888
  %1021 = extractvalue %dx.types.ResRet.f32 %927, 3
  %1022 = extractvalue %dx.types.ResRet.f32 %927, 1
  %1023 = extractvalue %dx.types.ResRet.f32 %927, 0
  %1024 = extractvalue %dx.types.ResRet.f32 %917, 1
  %1025 = extractvalue %dx.types.ResRet.f32 %917, 0
  %1026 = extractvalue %dx.types.ResRet.i32 %913, 3
  %1027 = extractvalue %dx.types.ResRet.i32 %913, 2
  %1028 = add i32 %1026, 0
  %1029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1028, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1030 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1031 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1029, %dx.types.Handle %1030, float %965, float %972, float undef, float undef, i32 0, i32 0, i32 undef, float %993, float %995, float undef, float %994, float %996, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1032 = extractvalue %dx.types.ResRet.f32 %1031, 0
  %1033 = fmul fast float %1032, %1025
  %1034 = fadd fast float %1033, %1024
  %1035 = call float @dx.op.unary.f32(i32 7, float %1034)  ; Saturate(value)
  %1036 = fmul fast float %965, %922
  %1037 = call float @dx.op.tertiary.f32(i32 46, float %923, float %972, float %1036)  ; FMad(a,b,c)
  %1038 = fadd fast float %1037, %1023
  %1039 = fmul fast float %965, %924
  %1040 = call float @dx.op.tertiary.f32(i32 46, float %925, float %972, float %1039)  ; FMad(a,b,c)
  %1041 = fadd fast float %1040, %1022
  %1042 = fmul fast float %993, %922
  %1043 = call float @dx.op.tertiary.f32(i32 46, float %923, float %995, float %1042)  ; FMad(a,b,c)
  %1044 = fmul fast float %993, %924
  %1045 = call float @dx.op.tertiary.f32(i32 46, float %925, float %995, float %1044)  ; FMad(a,b,c)
  %1046 = fmul fast float %994, %922
  %1047 = call float @dx.op.tertiary.f32(i32 46, float %923, float %996, float %1046)  ; FMad(a,b,c)
  %1048 = fmul fast float %994, %924
  %1049 = call float @dx.op.tertiary.f32(i32 46, float %925, float %996, float %1048)  ; FMad(a,b,c)
  %1050 = add i32 %1027, 0
  %1051 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1050, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1052 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1051, %dx.types.Handle %1030, float %1038, float %1041, float undef, float undef, i32 0, i32 0, i32 undef, float %1043, float %1045, float undef, float %1047, float %1049, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1053 = extractvalue %dx.types.ResRet.f32 %1052, 0
  %1054 = and i32 %957, 1024
  %1055 = icmp ne i32 %1054, 0
  %1056 = fcmp fast ogt float %1053, 0x3FE0101020000000
  %1057 = uitofp i1 %1056 to float
  %1058 = select i1 %1055, float %1057, float %1053
  %1059 = and i32 %957, 8192
  %1060 = icmp ne i32 %1059, 0
  %1061 = select i1 %1060, float %1021, float 1.000000e+00
  %1062 = fmul fast float %965, 2.000000e+00
  %1063 = fadd fast float %1062, -1.000000e+00
  %1064 = call float @dx.op.unary.f32(i32 6, float %1063)  ; FAbs(value)
  %1065 = fmul fast float %1064, %954
  %1066 = fsub fast float %1065, %954
  %1067 = call float @dx.op.unary.f32(i32 7, float %1066)  ; Saturate(value)
  %1068 = fmul fast float %972, 2.000000e+00
  %1069 = fadd fast float %1068, -1.000000e+00
  %1070 = call float @dx.op.unary.f32(i32 6, float %1069)  ; FAbs(value)
  %1071 = fmul fast float %1070, %955
  %1072 = fsub fast float %1071, %955
  %1073 = call float @dx.op.unary.f32(i32 7, float %1072)  ; Saturate(value)
  %1074 = fmul fast float %984, %918
  %1075 = fsub fast float %1074, %918
  %1076 = call float @dx.op.unary.f32(i32 7, float %1075)  ; Saturate(value)
  %1077 = fmul fast float %1035, %1061
  %1078 = fmul fast float %1077, %1032
  %1079 = fmul fast float %1078, %1067
  %1080 = fmul fast float %1079, %1058
  %1081 = fmul fast float %1080, %1073
  %1082 = fmul fast float %1081, %1076
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 1
  %1085 = extractvalue %dx.types.CBufRet.f32 %1083, 0
  %1086 = fsub fast float %1002, %1085
  %1087 = fmul fast float %1086, %1084
  %1088 = call float @dx.op.unary.f32(i32 7, float %1087)  ; Saturate(value)
  %1089 = fmul fast float %1082, %919
  %1090 = fadd fast float %1082, %919
  %1091 = fmul fast float %1090, %928
  %1092 = fsub fast float %1091, %928
  %1093 = call float @dx.op.unary.f32(i32 7, float %1092)  ; Saturate(value)
  %1094 = and i32 %957, 128
  %1095 = icmp ne i32 %1094, 0
  %1096 = select i1 %1095, float %1093, float %1089
  %1097 = fmul fast float %1096, %1088
  %1098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.f32 %1098, 0
  %1100 = fcmp fast ugt float %1097, %1099
  br i1 %1100, label %1101, label %1007

; <label>:1101                                    ; preds = %1020
  br i1 %1060, label %1007, label %1102

; <label>:1102                                    ; preds = %1101
  %1103 = and i32 %957, 4
  %1104 = and i32 %957, 8
  %1105 = add i32 %914, 0
  %1106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1105, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1108 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1106, %dx.types.Handle %1107, float %1038, float %1041, float undef, float undef, i32 0, i32 0, i32 undef, float %1043, float %1045, float undef, float %1047, float %1049, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.ResRet.f32 %1108, 1
  %1111 = extractvalue %dx.types.ResRet.f32 %1108, 2
  %1112 = extractvalue %dx.types.ResRet.f32 %1108, 3
  %1113 = bitcast float %940 to i32
  %1114 = and i32 %1113, 255
  %1115 = uitofp i32 %1114 to float
  %1116 = lshr i32 %1113, 8
  %1117 = and i32 %1116, 255
  %1118 = uitofp i32 %1117 to float
  %1119 = fmul fast float %1112, %1115
  %1120 = fadd fast float %1119, %1118
  %1121 = fmul fast float %1120, 0x3F70101000000000
  %1122 = add i32 %915, 0
  %1123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1122, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1124 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1123, %dx.types.Handle %1107, float %1038, float %1041, float undef, float undef, i32 0, i32 0, i32 undef, float %1043, float %1045, float undef, float %1047, float %1049, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1125 = extractvalue %dx.types.ResRet.f32 %1124, 0
  %1126 = extractvalue %dx.types.ResRet.f32 %1124, 1
  %1127 = extractvalue %dx.types.ResRet.f32 %1124, 2
  %1128 = extractvalue %dx.types.ResRet.f32 %1124, 3
  %1129 = bitcast float %934 to i32
  %1130 = and i32 %1129, 255
  %1131 = uitofp i32 %1130 to float
  %1132 = lshr i32 %1129, 8
  %1133 = and i32 %1132, 255
  %1134 = uitofp i32 %1133 to float
  %1135 = lshr i32 %1129, 16
  %1136 = and i32 %1135, 255
  %1137 = uitofp i32 %1136 to float
  %1138 = fmul fast float %1137, 0x3F70101000000000
  %1139 = fmul fast float %1125, %1131
  %1140 = fadd fast float %1139, %1134
  %1141 = fmul fast float %1140, 0x3F70101000000000
  %1142 = fadd fast float %1126, -5.000000e-01
  %1143 = fadd fast float %1128, -5.000000e-01
  %1144 = fmul fast float %1142, %1138
  %1145 = fmul fast float %1143, %1138
  %1146 = fadd fast float %1144, 5.000000e-01
  %1147 = fadd fast float %1145, 5.000000e-01
  %1148 = fmul fast float %1109, %943
  %1149 = fmul fast float %1110, %944
  %1150 = fmul fast float %1111, %945
  %1151 = fmul fast float %1146, 2.000000e+00
  %1152 = fadd fast float %1151, -1.000000e+00
  %1153 = fmul fast float %1147, 2.000000e+00
  %1154 = fadd fast float %1153, -1.000000e+00
  %1155 = fadd fast float %1152, %1154
  %1156 = fmul fast float %1155, 5.000000e-01
  %1157 = fsub fast float %1152, %1154
  %1158 = fmul fast float %1157, 5.000000e-01
  %1159 = call float @dx.op.unary.f32(i32 6, float %1156)  ; FAbs(value)
  %1160 = fsub fast float 1.000000e+00, %1159
  %1161 = call float @dx.op.unary.f32(i32 6, float %1158)  ; FAbs(value)
  %1162 = fsub fast float %1160, %1161
  %1163 = call float @dx.op.dot3.f32(i32 55, float %1156, float %1158, float %1162, float %1156, float %1158, float %1162)  ; Dot3(ax,ay,az,bx,by,bz)
  %1164 = call float @dx.op.unary.f32(i32 25, float %1163)  ; Rsqrt(value)
  %1165 = fmul fast float %1156, %1164
  %1166 = fmul fast float %1158, %1164
  %1167 = fmul fast float %1164, %1162
  %1168 = fmul fast float %1167, %908
  %1169 = fmul fast float %1167, %909
  %1170 = fmul fast float %1167, %910
  %1171 = fmul fast float %1165, %931
  %1172 = fmul fast float %1165, %932
  %1173 = fmul fast float %1165, %933
  %1174 = fadd fast float %1171, %1168
  %1175 = fadd fast float %1172, %1169
  %1176 = fadd fast float %1173, %1170
  %1177 = fmul fast float %1166, %937
  %1178 = fmul fast float %1166, %938
  %1179 = fmul fast float %1166, %939
  %1180 = fadd fast float %1174, %1177
  %1181 = fadd fast float %1175, %1178
  %1182 = fadd fast float %1176, %1179
  %1183 = call float @dx.op.dot3.f32(i32 55, float %1180, float %1181, float %1182, float %1180, float %1181, float %1182)  ; Dot3(ax,ay,az,bx,by,bz)
  %1184 = call float @dx.op.unary.f32(i32 25, float %1183)  ; Rsqrt(value)
  %1185 = fmul fast float %1180, %1184
  %1186 = fmul fast float %1181, %1184
  %1187 = fmul fast float %1182, %1184
  %1188 = fcmp fast ogt float %997, %1003
  %1189 = fsub fast float -0.000000e+00, %1185
  %1190 = fsub fast float -0.000000e+00, %1186
  %1191 = fsub fast float -0.000000e+00, %1187
  %1192 = select i1 %1188, float %1185, float %1189
  %1193 = select i1 %1188, float %1186, float %1190
  %1194 = select i1 %1188, float %1187, float %1191
  %1195 = fmul fast float %1192, %814
  %1196 = call float @dx.op.tertiary.f32(i32 46, float %1193, float %815, float %1195)  ; FMad(a,b,c)
  %1197 = call float @dx.op.tertiary.f32(i32 46, float %1194, float %817, float %1196)  ; FMad(a,b,c)
  %1198 = fmul fast float %1192, %810
  %1199 = call float @dx.op.tertiary.f32(i32 46, float %1193, float %820, float %1198)  ; FMad(a,b,c)
  %1200 = call float @dx.op.tertiary.f32(i32 46, float %1194, float %821, float %1199)  ; FMad(a,b,c)
  %1201 = icmp ne i32 %1104, 0
  %1202 = select i1 %1201, float 1.000000e+00, float 0.000000e+00
  %1203 = fmul fast float %1097, %1202
  %1204 = and i32 %957, 1
  %1205 = icmp ne i32 %1204, 0
  %1206 = fadd fast float %1197, %892
  %1207 = fadd fast float %1200, %893
  %1208 = select i1 %1205, float %1206, float %1197
  %1209 = select i1 %1205, float %1207, float %1200
  %1210 = icmp ne i32 %1103, 0
  %1211 = select i1 %1210, float 1.000000e+00, float 0.000000e+00
  %1212 = fmul fast float %1097, %1211
  %1213 = fsub fast float %1148, %897
  %1214 = fsub fast float %1149, %898
  %1215 = fsub fast float %1150, %899
  %1216 = fmul fast float %1213, %1212
  %1217 = fmul fast float %1214, %1212
  %1218 = fmul fast float %1215, %1212
  %1219 = fadd fast float %1216, %897
  %1220 = fadd fast float %1217, %898
  %1221 = fadd fast float %1218, %899
  %1222 = fsub fast float %1121, %896
  %1223 = fmul fast float %1222, %1212
  %1224 = fadd fast float %1223, %896
  %1225 = fsub fast float %1141, %895
  %1226 = fmul fast float %1225, %1203
  %1227 = fadd fast float %1226, %895
  %1228 = fsub fast float %1127, %894
  %1229 = fmul fast float %1228, %1203
  %1230 = fadd fast float %1229, %894
  %1231 = fsub fast float %1208, %892
  %1232 = fsub fast float %1209, %893
  %1233 = fmul fast float %1231, %1203
  %1234 = fmul fast float %1232, %1203
  %1235 = fadd fast float %1233, %892
  %1236 = fadd fast float %1234, %893
  %1237 = and i32 %957, 16
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1261, label %1239

; <label>:1239                                    ; preds = %1102
  %1240 = bitcast float %951 to i32
  %1241 = add i32 %948, 0
  %1242 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1241, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1243 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1242, %dx.types.Handle %1107, float %1038, float %1041, float undef, float undef, i32 0, i32 0, i32 undef, float %1043, float %1045, float undef, float %1047, float %1049, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1244 = extractvalue %dx.types.ResRet.f32 %1243, 0
  %1245 = extractvalue %dx.types.ResRet.f32 %1243, 1
  %1246 = extractvalue %dx.types.ResRet.f32 %1243, 2
  %1247 = and i32 %1240, 65535
  %1248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1247)  ; LegacyF16ToF32(value)
  %1249 = fmul fast float %1244, %943
  %1250 = fmul fast float %1245, %944
  %1251 = fmul fast float %1246, %945
  %1252 = and i32 %957, 16384
  %1253 = icmp ne i32 %1252, 0
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 0
  %1256 = select i1 %1253, float %1255, float 1.000000e+00
  %1257 = fmul fast float %1256, %1248
  %1258 = fmul fast float %1249, %1257
  %1259 = fmul fast float %1250, %1257
  %1260 = fmul fast float %1251, %1257
  br label %1261

; <label>:1261                                    ; preds = %1239, %1102
  %1262 = phi float [ %1258, %1239 ], [ 0.000000e+00, %1102 ]
  %1263 = phi float [ %1259, %1239 ], [ 0.000000e+00, %1102 ]
  %1264 = phi float [ %1260, %1239 ], [ 0.000000e+00, %1102 ]
  %1265 = fsub fast float %1262, %889
  %1266 = fsub fast float %1263, %890
  %1267 = fsub fast float %1264, %891
  %1268 = fmul fast float %1265, %1097
  %1269 = fmul fast float %1266, %1097
  %1270 = fmul fast float %1267, %1097
  %1271 = fadd fast float %1268, %889
  %1272 = fadd fast float %1269, %890
  %1273 = fadd fast float %1270, %891
  br label %1007

; <label>:1274                                    ; preds = %1007
  br label %1275

; <label>:1275                                    ; preds = %1274, %736
  %1276 = phi float [ 0.000000e+00, %736 ], [ %1008, %1274 ]
  %1277 = phi float [ 0.000000e+00, %736 ], [ %1009, %1274 ]
  %1278 = phi float [ 0.000000e+00, %736 ], [ %1010, %1274 ]
  %1279 = phi float [ %626, %736 ], [ %1011, %1274 ]
  %1280 = phi float [ %627, %736 ], [ %1012, %1274 ]
  %1281 = phi float [ %831, %736 ], [ %1013, %1274 ]
  %1282 = phi float [ %834, %736 ], [ %1014, %1274 ]
  %1283 = phi float [ %829, %736 ], [ %1015, %1274 ]
  %1284 = phi float [ %823, %736 ], [ %1016, %1274 ]
  %1285 = phi float [ %825, %736 ], [ %1017, %1274 ]
  %1286 = phi float [ %827, %736 ], [ %1018, %1274 ]
  %1287 = call float @dx.op.dot2.f32(i32 54, float %1279, float %1280, float %1279, float %1280)  ; Dot2(ax,ay,bx,by)
  %1288 = fmul fast float %1287, 0x3FE3333340000000
  %1289 = fsub fast float 1.000000e+00, %1288
  %1290 = call float @dx.op.dot3.f32(i32 55, float %1279, float %1280, float %1289, float %1279, float %1280, float %1289)  ; Dot3(ax,ay,az,bx,by,bz)
  %1291 = call float @dx.op.unary.f32(i32 25, float %1290)  ; Rsqrt(value)
  %1292 = fmul fast float %1291, %1279
  %1293 = fmul fast float %1291, %1280
  %1294 = fmul fast float %1289, %1291
  %1295 = fmul fast float %1294, %107
  %1296 = fmul fast float %1294, %108
  %1297 = fmul fast float %1294, %109
  %1298 = fmul fast float %1292, %814
  %1299 = fmul fast float %1292, %815
  %1300 = fmul fast float %1292, %817
  %1301 = fadd fast float %1295, %1298
  %1302 = fadd fast float %1296, %1299
  %1303 = fadd fast float %1297, %1300
  %1304 = fmul fast float %1293, %810
  %1305 = fmul fast float %1293, %820
  %1306 = fmul fast float %1293, %821
  %1307 = fadd fast float %1301, %1304
  %1308 = fadd fast float %1302, %1305
  %1309 = fadd fast float %1303, %1306
  %1310 = call float @dx.op.dot3.f32(i32 55, float %1307, float %1308, float %1309, float %1307, float %1308, float %1309)  ; Dot3(ax,ay,az,bx,by,bz)
  %1311 = call float @dx.op.unary.f32(i32 25, float %1310)  ; Rsqrt(value)
  %1312 = fmul fast float %1307, %1311
  %1313 = fmul fast float %1308, %1311
  %1314 = fmul fast float %1309, %1311
  %1315 = fadd fast float %1283, 0xBFB99999A0000000
  %1316 = call float @dx.op.unary.f32(i32 7, float %1315)  ; Saturate(value)
  %1317 = fmul fast float %1316, 0x3FF1C71C80000000
  %1318 = call float @dx.op.binary.f32(i32 36, float %1283, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1319 = fsub fast float 1.000000e+00, %1317
  %1320 = call float @dx.op.unary.f32(i32 7, float %1319)  ; Saturate(value)
  %1321 = fmul fast float %1320, %1284
  %1322 = fmul fast float %1320, %1285
  %1323 = fmul fast float %1320, %1286
  %1324 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1325 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  %1326 = call float @dx.op.unary.f32(i32 7, float %1323)  ; Saturate(value)
  %1327 = fmul fast float %1317, %1284
  %1328 = fmul fast float %1317, %1285
  %1329 = fmul fast float %1317, %1286
  %1330 = fadd fast float %1327, %1318
  %1331 = fadd fast float %1328, %1318
  %1332 = fadd fast float %1329, %1318
  %1333 = call float @dx.op.unary.f32(i32 7, float %1330)  ; Saturate(value)
  %1334 = call float @dx.op.unary.f32(i32 7, float %1331)  ; Saturate(value)
  %1335 = call float @dx.op.unary.f32(i32 7, float %1332)  ; Saturate(value)
  %1336 = fmul fast float %1334, 0x401CF23780000000
  %1337 = fadd fast float %1336, 0x3FF32641C0000000
  %1338 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %1339 = call float @dx.op.unary.f32(i32 25, float %1338)  ; Rsqrt(value)
  %1340 = fmul fast float %1339, %143
  %1341 = fmul fast float %1339, %144
  %1342 = fmul fast float %1339, %145
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 0
  %1345 = fdiv fast float 1.000000e+00, %1337
  %1346 = select i1 %105, float %1345, float %1337
  %1347 = fadd fast float %1346, -1.000000e+00
  %1348 = fadd fast float %1346, 1.000000e+00
  %1349 = fdiv fast float %1347, %1348
  %1350 = fmul fast float %1349, %1349
  %1351 = call float @dx.op.dot3.f32(i32 55, float %1340, float %1341, float %1342, float %1312, float %1313, float %1314)  ; Dot3(ax,ay,az,bx,by,bz)
  %1352 = select i1 %105, float 0.000000e+00, float %1344
  %1353 = fadd fast float %1351, %1352
  %1354 = call float @dx.op.binary.f32(i32 35, float %1353, float -1.000000e+00)  ; FMax(a,b)
  %1355 = call float @dx.op.binary.f32(i32 36, float %1354, float 1.000000e+00)  ; FMin(a,b)
  %1356 = fmul fast float %1346, %1346
  %1357 = fmul fast float %1355, %1355
  %1358 = fsub fast float 1.000000e+00, %1357
  %1359 = fmul fast float %1356, %1358
  %1360 = fsub fast float 1.000000e+00, %1359
  %1361 = fcmp fast olt float %1346, 1.000000e+00
  %1362 = select i1 %1361, float %1357, float %1360
  %1363 = fcmp fast ogt float %1360, 0.000000e+00
  %1364 = fsub fast float 1.000000e+00, %1350
  %1365 = call float @dx.op.unary.f32(i32 24, float %1362)  ; Sqrt(value)
  %1366 = fsub fast float 1.000000e+00, %1365
  %1367 = call float @dx.op.unary.f32(i32 23, float %1366)  ; Log(value)
  %1368 = fmul fast float %1367, 5.000000e+00
  %1369 = call float @dx.op.unary.f32(i32 21, float %1368)  ; Exp(value)
  %1370 = fmul fast float %1369, %1364
  %1371 = fadd fast float %1370, %1350
  %1372 = select i1 %1363, float %1371, float 1.000000e+00
  %1373 = and i32 %364, 255
  %1374 = uitofp i32 %1373 to float
  %1375 = fmul fast float %1374, 0x3F70101020000000
  %1376 = call float @dx.op.unary.f32(i32 7, float %1375)  ; Saturate(value)
  %1377 = fmul fast float %143, %143
  %1378 = fmul fast float %144, %144
  %1379 = fadd fast float %1378, %1377
  %1380 = fmul fast float %145, %145
  %1381 = fadd fast float %1379, %1380
  %1382 = call float @dx.op.unary.f32(i32 24, float %1381)  ; Sqrt(value)
  %1383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.f32 %1383, 0
  %1385 = fmul fast float %1384, %1382
  %1386 = extractvalue %dx.types.CBufRet.f32 %1383, 1
  %1387 = fadd fast float %1385, %1386
  %1388 = call float @dx.op.unary.f32(i32 7, float %1387)  ; Saturate(value)
  %1389 = fmul fast float %1376, 2.550000e+02
  %1390 = fmul fast float %1389, %1388
  %1391 = fptoui float %1390 to i32
  %1392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1393 = extractvalue %dx.types.CBufRet.f32 %1392, 3
  %1394 = fmul fast float %1393, %1282
  %1395 = call float @dx.op.unary.f32(i32 7, float %1394)  ; Saturate(value)
  %1396 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  %1397 = call float @dx.op.dot3.f32(i32 55, float %1333, float %1334, float %1335, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1398 = fsub fast float 1.000000e+00, %1397
  %1399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1400 = extractvalue %dx.types.ResRet.i32 %1399, 0
  %1401 = and i32 %1400, 255
  %1402 = uitofp i32 %1401 to float
  %1403 = lshr i32 %1400, 8
  %1404 = and i32 %1403, 255
  %1405 = uitofp i32 %1404 to float
  %1406 = fmul fast float %1405, %1398
  %1407 = fadd fast float %1406, %1402
  %1408 = fmul fast float %1407, 0x3F70101020000000
  %1409 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1411 = extractvalue %dx.types.CBufRet.f32 %1410, 0
  %1412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1414 = extractvalue %dx.types.CBufRet.i32 %1413, 3
  %1415 = and i32 %1414, 3
  %1416 = icmp ne i32 %1415, 0
  %1417 = and i32 %1414, 4
  %1418 = icmp ne i32 %1417, 0
  %1419 = and i1 %1416, %1418
  br i1 %1419, label %1420, label %1431

; <label>:1420                                    ; preds = %1275
  %1421 = extractvalue %dx.types.CBufRet.f32 %1412, 3
  %1422 = fmul fast float %1421, %89
  %1423 = extractvalue %dx.types.CBufRet.f32 %1412, 2
  %1424 = fmul fast float %1423, %88
  %1425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %58, float %1424, float %1422, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1426 = extractvalue %dx.types.ResRet.f32 %1425, 0
  %1427 = fsub fast float 1.000000e+00, %1426
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 0
  %1430 = fcmp fast olt float %1427, %1429
  br label %1434

; <label>:1431                                    ; preds = %1275
  %1432 = icmp eq i32 %1417, 0
  %1433 = and i1 %1416, %1432
  br label %1434

; <label>:1434                                    ; preds = %1431, %1420
  %1435 = phi i1 [ %1430, %1420 ], [ %1433, %1431 ]
  %1436 = fsub fast float -0.000000e+00, %145
  %1437 = fsub fast float -0.000000e+00, %1340
  %1438 = fsub fast float -0.000000e+00, %1341
  %1439 = fsub fast float -0.000000e+00, %1342
  %1440 = select i1 %1435, float 0.000000e+00, float %1335
  %1441 = call float @dx.op.dot3.f32(i32 55, float %1312, float %1313, float %1314, float %1437, float %1438, float %1439)  ; Dot3(ax,ay,az,bx,by,bz)
  %1442 = call float @dx.op.unary.f32(i32 7, float %1441)  ; Saturate(value)
  %1443 = fmul fast float %1351, 2.000000e+00
  %1444 = fmul fast float %1443, %1312
  %1445 = fmul fast float %1443, %1313
  %1446 = fmul fast float %1443, %1314
  %1447 = fsub fast float %1340, %1444
  %1448 = fsub fast float %1341, %1445
  %1449 = fsub fast float %1342, %1446
  %1450 = call float @dx.op.binary.f32(i32 36, float %1396, float 1.000000e+00)  ; FMin(a,b)
  %1451 = fsub fast float 1.000000e+00, %1396
  %1452 = bitcast float %1451 to i32
  %1453 = sub nsw i32 2129859010, %1452
  %1454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1455 = extractvalue %dx.types.CBufRet.f32 %1454, 0
  %1456 = extractvalue %dx.types.CBufRet.f32 %1454, 1
  %1457 = extractvalue %dx.types.CBufRet.f32 %1454, 2
  %1458 = fadd fast float %1455, %143
  %1459 = fadd fast float %1456, %144
  %1460 = fadd fast float %1457, %145
  %1461 = fmul fast float %1312, 3.200000e+01
  %1462 = fmul fast float %1313, 3.200000e+01
  %1463 = fadd fast float %1458, %1461
  %1464 = fadd fast float %1459, %1462
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 0
  %1467 = extractvalue %dx.types.CBufRet.f32 %1465, 1
  %1468 = fsub fast float %1463, %1466
  %1469 = fsub fast float %1464, %1467
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 0
  %1472 = extractvalue %dx.types.CBufRet.f32 %1470, 1
  %1473 = fmul fast float %1468, %1471
  %1474 = fmul fast float %1469, %1472
  %1475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1476 = extractvalue %dx.types.CBufRet.f32 %1475, 0
  %1477 = fmul fast float %1473, %1476
  %1478 = extractvalue %dx.types.CBufRet.f32 %1475, 1
  %1479 = fadd fast float %1477, %1478
  %1480 = extractvalue %dx.types.CBufRet.f32 %1475, 2
  %1481 = fmul fast float %1480, %1474
  %1482 = extractvalue %dx.types.CBufRet.f32 %1475, 3
  %1483 = fadd fast float %1481, %1482
  %1484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %58, float %1479, float %1483, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1485 = extractvalue %dx.types.ResRet.f32 %1484, 0
  %1486 = extractvalue %dx.types.ResRet.f32 %1484, 1
  %1487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1488 = extractvalue %dx.types.CBufRet.f32 %1487, 1
  %1489 = extractvalue %dx.types.CBufRet.f32 %1487, 0
  %1490 = fsub fast float %1488, %1489
  %1491 = fmul fast float %1490, %1485
  %1492 = fadd fast float %1491, %1489
  %1493 = extractvalue %dx.types.CBufRet.f32 %1487, 3
  %1494 = extractvalue %dx.types.CBufRet.f32 %1487, 2
  %1495 = fsub fast float %1493, %1494
  %1496 = fmul fast float %1495, %1486
  %1497 = fadd fast float %1496, %1494
  %1498 = fsub fast float %1460, %1492
  %1499 = fsub fast float %1497, %1492
  %1500 = fdiv fast float %1498, %1499
  %1501 = call float @dx.op.unary.f32(i32 7, float %1500)  ; Saturate(value)
  %1502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1503 = extractvalue %dx.types.CBufRet.f32 %1502, 0
  %1504 = fmul fast float %1503, %1501
  %1505 = extractvalue %dx.types.CBufRet.f32 %1502, 1
  %1506 = fadd fast float %1504, %1505
  %1507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %58, float %1479, float %1483, float %1506, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1508 = extractvalue %dx.types.ResRet.f32 %1507, 0
  %1509 = extractvalue %dx.types.ResRet.f32 %1507, 1
  %1510 = extractvalue %dx.types.ResRet.f32 %1507, 2
  %1511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1512 = extractvalue %dx.types.CBufRet.f32 %1511, 0
  %1513 = extractvalue %dx.types.CBufRet.f32 %1511, 1
  %1514 = extractvalue %dx.types.CBufRet.f32 %1511, 2
  %1515 = fmul fast float %1512, %1508
  %1516 = fmul fast float %1513, %1509
  %1517 = fmul fast float %1514, %1510
  %1518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.f32 %1518, 0
  %1520 = extractvalue %dx.types.CBufRet.f32 %1518, 1
  %1521 = extractvalue %dx.types.CBufRet.f32 %1518, 2
  %1522 = fadd fast float %1515, %1519
  %1523 = fadd fast float %1516, %1520
  %1524 = fadd fast float %1517, %1521
  %1525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.f32 %1525, 0
  %1527 = fmul fast float %1526, %1473
  %1528 = extractvalue %dx.types.CBufRet.f32 %1525, 1
  %1529 = fadd fast float %1527, %1528
  %1530 = extractvalue %dx.types.CBufRet.f32 %1525, 2
  %1531 = fmul fast float %1530, %1474
  %1532 = extractvalue %dx.types.CBufRet.f32 %1525, 3
  %1533 = fadd fast float %1531, %1532
  %1534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1535 = extractvalue %dx.types.CBufRet.f32 %1534, 0
  %1536 = extractvalue %dx.types.CBufRet.f32 %1534, 1
  %1537 = extractvalue %dx.types.CBufRet.f32 %1534, 2
  %1538 = extractvalue %dx.types.CBufRet.f32 %1534, 3
  %1539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1540 = extractvalue %dx.types.CBufRet.f32 %1539, 0
  %1541 = extractvalue %dx.types.CBufRet.f32 %1539, 1
  %1542 = extractvalue %dx.types.CBufRet.f32 %1539, 2
  %1543 = extractvalue %dx.types.CBufRet.f32 %1539, 3
  %1544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %1529, float %1533, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1545 = extractvalue %dx.types.ResRet.f32 %1544, 0
  %1546 = extractvalue %dx.types.ResRet.f32 %1544, 1
  %1547 = extractvalue %dx.types.ResRet.f32 %1544, 2
  %1548 = extractvalue %dx.types.ResRet.f32 %1544, 3
  %1549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %1529, float %1533, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1550 = extractvalue %dx.types.ResRet.f32 %1549, 0
  %1551 = extractvalue %dx.types.ResRet.f32 %1549, 1
  %1552 = extractvalue %dx.types.ResRet.f32 %1549, 2
  %1553 = extractvalue %dx.types.ResRet.f32 %1549, 3
  %1554 = fmul fast float %1545, %1522
  %1555 = fmul fast float %1550, %1522
  %1556 = fmul fast float %1552, %1522
  %1557 = fmul fast float %1548, %1522
  %1558 = fadd fast float %1554, %1535
  %1559 = fadd fast float %1555, %1536
  %1560 = fadd fast float %1556, %1537
  %1561 = fadd fast float %1557, %1538
  %1562 = fmul fast float %1546, %1522
  %1563 = fmul fast float %1551, %1522
  %1564 = fadd fast float %1562, %1540
  %1565 = fadd fast float %1563, %1541
  %1566 = fmul fast float %1547, %1522
  %1567 = fmul fast float %1553, %1522
  %1568 = fadd fast float %1566, %1542
  %1569 = fadd fast float %1567, %1543
  %1570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %1529, float %1533, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1571 = extractvalue %dx.types.ResRet.f32 %1570, 0
  %1572 = extractvalue %dx.types.ResRet.f32 %1570, 1
  %1573 = extractvalue %dx.types.ResRet.f32 %1570, 2
  %1574 = extractvalue %dx.types.ResRet.f32 %1570, 3
  %1575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %1529, float %1533, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1576 = extractvalue %dx.types.ResRet.f32 %1575, 0
  %1577 = extractvalue %dx.types.ResRet.f32 %1575, 1
  %1578 = extractvalue %dx.types.ResRet.f32 %1575, 2
  %1579 = extractvalue %dx.types.ResRet.f32 %1575, 3
  %1580 = fmul fast float %1571, %1523
  %1581 = fmul fast float %1576, %1523
  %1582 = fmul fast float %1578, %1523
  %1583 = fmul fast float %1574, %1523
  %1584 = fadd fast float %1558, %1580
  %1585 = fadd fast float %1559, %1581
  %1586 = fadd fast float %1560, %1582
  %1587 = fadd fast float %1561, %1583
  %1588 = fmul fast float %1572, %1523
  %1589 = fmul fast float %1577, %1523
  %1590 = fadd fast float %1564, %1588
  %1591 = fadd fast float %1565, %1589
  %1592 = fmul fast float %1573, %1523
  %1593 = fmul fast float %1579, %1523
  %1594 = fadd fast float %1568, %1592
  %1595 = fadd fast float %1569, %1593
  %1596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %1529, float %1533, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1597 = extractvalue %dx.types.ResRet.f32 %1596, 0
  %1598 = extractvalue %dx.types.ResRet.f32 %1596, 1
  %1599 = extractvalue %dx.types.ResRet.f32 %1596, 2
  %1600 = extractvalue %dx.types.ResRet.f32 %1596, 3
  %1601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %1529, float %1533, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1602 = extractvalue %dx.types.ResRet.f32 %1601, 0
  %1603 = extractvalue %dx.types.ResRet.f32 %1601, 1
  %1604 = extractvalue %dx.types.ResRet.f32 %1601, 2
  %1605 = extractvalue %dx.types.ResRet.f32 %1601, 3
  %1606 = fmul fast float %1597, %1524
  %1607 = fmul fast float %1602, %1524
  %1608 = fmul fast float %1604, %1524
  %1609 = fmul fast float %1600, %1524
  %1610 = fadd fast float %1584, %1606
  %1611 = fadd fast float %1585, %1607
  %1612 = fadd fast float %1586, %1608
  %1613 = fadd fast float %1587, %1609
  %1614 = fmul fast float %1598, %1524
  %1615 = fmul fast float %1603, %1524
  %1616 = fadd fast float %1590, %1614
  %1617 = fadd fast float %1591, %1615
  %1618 = fmul fast float %1599, %1524
  %1619 = fmul fast float %1605, %1524
  %1620 = fadd fast float %1594, %1618
  %1621 = fadd fast float %1595, %1619
  %1622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.f32 %1622, 0
  %1624 = fsub fast float %1458, %1623
  %1625 = fsub fast float %1466, %1458
  %1626 = call float @dx.op.binary.f32(i32 35, float %1625, float %1624)  ; FMax(a,b)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1622, 1
  %1628 = fsub fast float %1459, %1627
  %1629 = fsub fast float %1467, %1459
  %1630 = call float @dx.op.binary.f32(i32 35, float %1629, float %1628)  ; FMax(a,b)
  %1631 = call float @dx.op.binary.f32(i32 35, float %1626, float %1630)  ; FMax(a,b)
  %1632 = extractvalue %dx.types.CBufRet.f32 %1470, 3
  %1633 = fmul fast float %1632, %1631
  %1634 = call float @dx.op.unary.f32(i32 7, float %1633)  ; Saturate(value)
  %1635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1636 = extractvalue %dx.types.CBufRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.CBufRet.f32 %1635, 1
  %1638 = extractvalue %dx.types.CBufRet.f32 %1635, 2
  %1639 = extractvalue %dx.types.CBufRet.f32 %1635, 3
  %1640 = fsub fast float %1636, %1610
  %1641 = fsub fast float %1637, %1611
  %1642 = fsub fast float %1638, %1612
  %1643 = fsub fast float %1639, %1613
  %1644 = fmul fast float %1640, %1634
  %1645 = fmul fast float %1641, %1634
  %1646 = fmul fast float %1642, %1634
  %1647 = fmul fast float %1643, %1634
  %1648 = fadd fast float %1644, %1610
  %1649 = fadd fast float %1645, %1611
  %1650 = fadd fast float %1646, %1612
  %1651 = fadd fast float %1647, %1613
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 0
  %1654 = extractvalue %dx.types.CBufRet.f32 %1652, 1
  %1655 = fsub fast float %1653, %1616
  %1656 = fsub fast float %1654, %1617
  %1657 = fmul fast float %1655, %1634
  %1658 = fmul fast float %1656, %1634
  %1659 = fadd fast float %1657, %1616
  %1660 = fadd fast float %1658, %1617
  %1661 = extractvalue %dx.types.CBufRet.f32 %1652, 2
  %1662 = extractvalue %dx.types.CBufRet.f32 %1652, 3
  %1663 = fsub fast float %1661, %1620
  %1664 = fsub fast float %1662, %1621
  %1665 = fmul fast float %1663, %1634
  %1666 = fmul fast float %1664, %1634
  %1667 = fadd fast float %1665, %1620
  %1668 = fadd fast float %1666, %1621
  %1669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1670 = extractvalue %dx.types.CBufRet.f32 %1669, 0
  %1671 = fmul fast float %1670, %1648
  %1672 = fmul fast float %1670, %1649
  %1673 = fmul fast float %1670, %1650
  %1674 = fmul fast float %1670, %1651
  %1675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1676 = extractvalue %dx.types.CBufRet.f32 %1675, 0
  %1677 = fmul fast float %1676, %1659
  %1678 = fmul fast float %1676, %1660
  %1679 = fadd fast float %1677, %1671
  %1680 = fadd fast float %1678, %1673
  %1681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1682 = extractvalue %dx.types.CBufRet.f32 %1681, 0
  %1683 = fmul fast float %1682, %1667
  %1684 = fmul fast float %1682, %1668
  %1685 = fadd fast float %1679, %1683
  %1686 = fadd fast float %1680, %1684
  %1687 = extractvalue %dx.types.CBufRet.f32 %1669, 1
  %1688 = fmul fast float %1687, %1648
  %1689 = fmul fast float %1687, %1649
  %1690 = fmul fast float %1687, %1650
  %1691 = fmul fast float %1687, %1651
  %1692 = extractvalue %dx.types.CBufRet.f32 %1675, 1
  %1693 = fmul fast float %1692, %1659
  %1694 = fmul fast float %1692, %1660
  %1695 = fadd fast float %1693, %1688
  %1696 = fadd fast float %1694, %1690
  %1697 = extractvalue %dx.types.CBufRet.f32 %1681, 1
  %1698 = fmul fast float %1697, %1667
  %1699 = fmul fast float %1697, %1668
  %1700 = fadd fast float %1695, %1698
  %1701 = fadd fast float %1696, %1699
  %1702 = extractvalue %dx.types.CBufRet.f32 %1669, 2
  %1703 = fmul fast float %1702, %1648
  %1704 = fmul fast float %1702, %1649
  %1705 = fmul fast float %1702, %1650
  %1706 = fmul fast float %1702, %1651
  %1707 = extractvalue %dx.types.CBufRet.f32 %1675, 2
  %1708 = fmul fast float %1707, %1659
  %1709 = fmul fast float %1707, %1660
  %1710 = fadd fast float %1708, %1703
  %1711 = fadd fast float %1709, %1705
  %1712 = extractvalue %dx.types.CBufRet.f32 %1681, 2
  %1713 = fmul fast float %1712, %1667
  %1714 = fmul fast float %1712, %1668
  %1715 = fadd fast float %1710, %1713
  %1716 = fadd fast float %1711, %1714
  %1717 = fmul fast float %1704, %1704
  %1718 = fmul fast float %1716, %1716
  %1719 = fmul fast float %1706, %1706
  %1720 = fadd fast float %1719, %1717
  %1721 = fadd fast float %1720, %1718
  %1722 = call float @dx.op.unary.f32(i32 24, float %1721)  ; Sqrt(value)
  %1723 = fcmp fast ugt float %1722, 0.000000e+00
  br i1 %1723, label %1724, label %1739

; <label>:1724                                    ; preds = %1434
  %1725 = fsub fast float -0.000000e+00, %1706
  %1726 = fdiv fast float %1725, %1722
  %1727 = fsub fast float -0.000000e+00, %1704
  %1728 = fdiv fast float %1727, %1722
  %1729 = fdiv fast float %1716, %1722
  %1730 = fmul fast float %1715, 0x3FE279A760000000
  %1731 = fmul fast float %1728, %1704
  %1732 = fmul fast float %1729, %1716
  %1733 = fmul fast float %1726, %1706
  %1734 = fadd fast float %1731, %1733
  %1735 = fsub fast float %1734, %1732
  %1736 = call float @dx.op.unary.f32(i32 6, float %1735)  ; FAbs(value)
  %1737 = fadd fast float %1736, 0x3DDB7CDFE0000000
  %1738 = fdiv fast float %1730, %1737
  br label %1739

; <label>:1739                                    ; preds = %1724, %1434
  %1740 = phi float [ %1738, %1724 ], [ 1.000000e+00, %1434 ]
  %1741 = fmul fast float %1689, %1689
  %1742 = fmul fast float %1701, %1701
  %1743 = fmul fast float %1691, %1691
  %1744 = fadd fast float %1743, %1741
  %1745 = fadd fast float %1744, %1742
  %1746 = call float @dx.op.unary.f32(i32 24, float %1745)  ; Sqrt(value)
  %1747 = fcmp fast ugt float %1746, 0.000000e+00
  br i1 %1747, label %1748, label %1763

; <label>:1748                                    ; preds = %1739
  %1749 = fsub fast float -0.000000e+00, %1691
  %1750 = fdiv fast float %1749, %1746
  %1751 = fsub fast float -0.000000e+00, %1689
  %1752 = fdiv fast float %1751, %1746
  %1753 = fdiv fast float %1701, %1746
  %1754 = fmul fast float %1700, 0x3FE279A760000000
  %1755 = fmul fast float %1752, %1689
  %1756 = fmul fast float %1753, %1701
  %1757 = fmul fast float %1750, %1691
  %1758 = fadd fast float %1755, %1757
  %1759 = fsub fast float %1758, %1756
  %1760 = call float @dx.op.unary.f32(i32 6, float %1759)  ; FAbs(value)
  %1761 = fadd fast float %1760, 0x3DDB7CDFE0000000
  %1762 = fdiv fast float %1754, %1761
  br label %1763

; <label>:1763                                    ; preds = %1748, %1739
  %1764 = phi float [ %1762, %1748 ], [ 1.000000e+00, %1739 ]
  %1765 = call float @dx.op.binary.f32(i32 36, float %1764, float %1740)  ; FMin(a,b)
  %1766 = fmul fast float %1672, %1672
  %1767 = fmul fast float %1686, %1686
  %1768 = fmul fast float %1674, %1674
  %1769 = fadd fast float %1768, %1766
  %1770 = fadd fast float %1769, %1767
  %1771 = call float @dx.op.unary.f32(i32 24, float %1770)  ; Sqrt(value)
  %1772 = fcmp fast ugt float %1771, 0.000000e+00
  br i1 %1772, label %1773, label %1788

; <label>:1773                                    ; preds = %1763
  %1774 = fsub fast float -0.000000e+00, %1674
  %1775 = fdiv fast float %1774, %1771
  %1776 = fsub fast float -0.000000e+00, %1672
  %1777 = fdiv fast float %1776, %1771
  %1778 = fdiv fast float %1686, %1771
  %1779 = fmul fast float %1685, 0x3FE279A760000000
  %1780 = fmul fast float %1777, %1672
  %1781 = fmul fast float %1778, %1686
  %1782 = fmul fast float %1775, %1674
  %1783 = fadd fast float %1780, %1782
  %1784 = fsub fast float %1783, %1781
  %1785 = call float @dx.op.unary.f32(i32 6, float %1784)  ; FAbs(value)
  %1786 = fadd fast float %1785, 0x3DDB7CDFE0000000
  %1787 = fdiv fast float %1779, %1786
  br label %1788

; <label>:1788                                    ; preds = %1773, %1763
  %1789 = phi float [ %1787, %1773 ], [ 1.000000e+00, %1763 ]
  %1790 = call float @dx.op.binary.f32(i32 36, float %1789, float %1765)  ; FMin(a,b)
  %1791 = call float @dx.op.unary.f32(i32 7, float %1790)  ; Saturate(value)
  %1792 = fcmp fast olt float %1791, 1.000000e+00
  br i1 %1792, label %1793, label %1803

; <label>:1793                                    ; preds = %1788
  %1794 = fmul fast float %1791, %1672
  %1795 = fmul fast float %1791, %1686
  %1796 = fmul fast float %1791, %1674
  %1797 = fmul fast float %1791, %1689
  %1798 = fmul fast float %1791, %1701
  %1799 = fmul fast float %1791, %1691
  %1800 = fmul fast float %1791, %1704
  %1801 = fmul fast float %1791, %1716
  %1802 = fmul fast float %1791, %1706
  br label %1803

; <label>:1803                                    ; preds = %1793, %1788
  %1804 = phi float [ %1800, %1793 ], [ %1704, %1788 ]
  %1805 = phi float [ %1801, %1793 ], [ %1716, %1788 ]
  %1806 = phi float [ %1802, %1793 ], [ %1706, %1788 ]
  %1807 = phi float [ %1797, %1793 ], [ %1689, %1788 ]
  %1808 = phi float [ %1798, %1793 ], [ %1701, %1788 ]
  %1809 = phi float [ %1799, %1793 ], [ %1691, %1788 ]
  %1810 = phi float [ %1794, %1793 ], [ %1672, %1788 ]
  %1811 = phi float [ %1795, %1793 ], [ %1686, %1788 ]
  %1812 = phi float [ %1796, %1793 ], [ %1674, %1788 ]
  %1813 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1685)  ; FMax(a,b)
  %1814 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1700)  ; FMax(a,b)
  %1815 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1715)  ; FMax(a,b)
  %1816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1817 = extractvalue %dx.types.CBufRet.f32 %1816, 0
  %1818 = fcmp fast ogt float %1817, 0.000000e+00
  %1819 = fcmp fast oge float %1473, 0.000000e+00
  %1820 = and i1 %1819, %1818
  %1821 = fcmp fast ole float %1473, 1.000000e+00
  %1822 = and i1 %1821, %1820
  %1823 = fcmp fast oge float %1474, 0.000000e+00
  %1824 = and i1 %1823, %1822
  %1825 = fcmp fast ole float %1474, 1.000000e+00
  %1826 = and i1 %1825, %1824
  br i1 %1826, label %1827, label %1967, !dx.controlflow.hints !108

; <label>:1827                                    ; preds = %1803
  %1828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1829 = extractvalue %dx.types.CBufRet.f32 %1828, 2
  %1830 = extractvalue %dx.types.CBufRet.f32 %1828, 3
  %1831 = fmul fast float %1829, %1473
  %1832 = fmul fast float %1830, %1474
  %1833 = call float @dx.op.unary.f32(i32 27, float %1831)  ; Round_ni(value)
  %1834 = call float @dx.op.unary.f32(i32 27, float %1832)  ; Round_ni(value)
  %1835 = fptosi float %1833 to i32
  %1836 = fptosi float %1834 to i32
  %1837 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %39, i32 0, i32 %1835, i32 %1836, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = and i32 %1838, 65535
  %1840 = lshr i32 %1838, 16
  %1841 = icmp eq i32 %1839, 65535
  br i1 %1841, label %1878, label %1842

; <label>:1842                                    ; preds = %1827
  %1843 = extractvalue %dx.types.CBufRet.f32 %1816, 1
  %1844 = extractvalue %dx.types.CBufRet.f32 %1828, 0
  %1845 = extractvalue %dx.types.CBufRet.f32 %1828, 1
  %1846 = fmul fast float %1844, %1473
  %1847 = fmul fast float %1845, %1474
  %1848 = fmul fast float %1846, 1.250000e-01
  %1849 = fmul fast float %1847, 1.250000e-01
  %1850 = call float @dx.op.unary.f32(i32 27, float %1848)  ; Round_ni(value)
  %1851 = call float @dx.op.unary.f32(i32 27, float %1849)  ; Round_ni(value)
  %1852 = fmul fast float %1850, 8.000000e+00
  %1853 = fmul fast float %1851, 8.000000e+00
  %1854 = and i32 %1838, 255
  %1855 = lshr i32 %1838, 8
  %1856 = and i32 %1855, 255
  %1857 = mul nuw nsw i32 %1854, 9
  %1858 = uitofp i32 %1857 to float
  %1859 = mul nuw nsw i32 %1856, 9
  %1860 = uitofp i32 %1859 to float
  %1861 = fadd fast float %1858, 5.000000e-01
  %1862 = fadd fast float %1861, %1846
  %1863 = fsub fast float %1862, %1852
  %1864 = fadd fast float %1860, 5.000000e-01
  %1865 = fadd fast float %1864, %1847
  %1866 = fsub fast float %1865, %1853
  %1867 = fdiv fast float %1863, %1817
  %1868 = fdiv fast float %1866, %1843
  %1869 = fmul fast float %1501, 4.375000e-01
  %1870 = fadd fast float %1869, 3.125000e-02
  %1871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %58, float %1867, float %1868, float %1870, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1872 = extractvalue %dx.types.ResRet.f32 %1871, 0
  %1873 = extractvalue %dx.types.ResRet.f32 %1871, 1
  %1874 = extractvalue %dx.types.ResRet.f32 %1871, 2
  %1875 = fadd fast float %1872, %1813
  %1876 = fadd fast float %1873, %1814
  %1877 = fadd fast float %1874, %1815
  br label %1878

; <label>:1878                                    ; preds = %1842, %1827
  %1879 = phi float [ %1877, %1842 ], [ %1815, %1827 ]
  %1880 = phi float [ %1876, %1842 ], [ %1814, %1827 ]
  %1881 = phi float [ %1875, %1842 ], [ %1813, %1827 ]
  %1882 = icmp eq i32 %1840, 65535
  br i1 %1882, label %1967, label %1883

; <label>:1883                                    ; preds = %1878
  %1884 = extractvalue %dx.types.CBufRet.f32 %1816, 1
  %1885 = extractvalue %dx.types.CBufRet.f32 %1828, 0
  %1886 = extractvalue %dx.types.CBufRet.f32 %1828, 1
  %1887 = fmul fast float %1885, %1473
  %1888 = fmul fast float %1886, %1474
  %1889 = fmul fast float %1887, 1.250000e-01
  %1890 = fmul fast float %1888, 1.250000e-01
  %1891 = call float @dx.op.unary.f32(i32 27, float %1889)  ; Round_ni(value)
  %1892 = call float @dx.op.unary.f32(i32 27, float %1890)  ; Round_ni(value)
  %1893 = fmul fast float %1891, 8.000000e+00
  %1894 = fmul fast float %1892, 8.000000e+00
  %1895 = fsub fast float %1887, %1893
  %1896 = fsub fast float %1888, %1894
  %1897 = fadd fast float %1895, 5.000000e-01
  %1898 = fadd fast float %1896, 5.000000e-01
  %1899 = and i32 %1840, 255
  %1900 = lshr i32 %1838, 24
  %1901 = mul nuw nsw i32 %1899, 9
  %1902 = uitofp i32 %1901 to float
  %1903 = mul nuw nsw i32 %1900, 9
  %1904 = uitofp i32 %1903 to float
  %1905 = fadd fast float %1897, %1902
  %1906 = fadd fast float %1898, %1904
  %1907 = fdiv fast float %1905, %1817
  %1908 = fdiv fast float %1906, %1884
  %1909 = fmul fast float %1501, 4.375000e-01
  %1910 = fadd fast float %1909, 3.125000e-02
  %1911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %58, float %1907, float %1908, float %1910, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1912 = extractvalue %dx.types.ResRet.f32 %1911, 0
  %1913 = extractvalue %dx.types.ResRet.f32 %1911, 1
  %1914 = extractvalue %dx.types.ResRet.f32 %1911, 2
  %1915 = fadd fast float %1909, 5.312500e-01
  %1916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %58, float %1907, float %1908, float %1915, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1917 = extractvalue %dx.types.ResRet.f32 %1916, 0
  %1918 = extractvalue %dx.types.ResRet.f32 %1916, 1
  %1919 = extractvalue %dx.types.ResRet.f32 %1916, 2
  %1920 = fmul fast float %1917, 2.000000e+00
  %1921 = fmul fast float %1918, 2.000000e+00
  %1922 = fmul fast float %1919, 2.000000e+00
  %1923 = fadd fast float %1920, -1.000000e+00
  %1924 = fadd fast float %1921, -1.000000e+00
  %1925 = fadd fast float %1922, -1.000000e+00
  %1926 = fmul fast float %1923, %1923
  %1927 = fmul fast float %1924, %1924
  %1928 = fadd fast float %1926, %1927
  %1929 = fmul fast float %1925, %1925
  %1930 = fadd fast float %1928, %1929
  %1931 = call float @dx.op.unary.f32(i32 24, float %1930)  ; Sqrt(value)
  %1932 = fcmp fast ogt float %1931, 0.000000e+00
  br i1 %1932, label %1933, label %1937

; <label>:1933                                    ; preds = %1883
  %1934 = fdiv fast float %1923, %1931
  %1935 = fdiv fast float %1924, %1931
  %1936 = fdiv fast float %1925, %1931
  br label %1937

; <label>:1937                                    ; preds = %1933, %1883
  %1938 = phi float [ %1934, %1933 ], [ 0.000000e+00, %1883 ]
  %1939 = phi float [ %1935, %1933 ], [ 0.000000e+00, %1883 ]
  %1940 = phi float [ %1936, %1933 ], [ 0.000000e+00, %1883 ]
  %1941 = fmul fast float %143, %143
  %1942 = fmul fast float %144, %144
  %1943 = fadd fast float %1941, %1942
  %1944 = call float @dx.op.unary.f32(i32 24, float %1943)  ; Sqrt(value)
  %1945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1946 = extractvalue %dx.types.CBufRet.f32 %1945, 0
  %1947 = extractvalue %dx.types.CBufRet.f32 %1945, 1
  %1948 = fsub fast float %1944, %1946
  %1949 = fdiv fast float %1948, %1947
  %1950 = call float @dx.op.unary.f32(i32 7, float %1949)  ; Saturate(value)
  %1951 = fmul fast float %1950, 2.000000e+00
  %1952 = fsub fast float 3.000000e+00, %1951
  %1953 = fmul fast float %1950, %1950
  %1954 = fmul fast float %1953, %1952
  %1955 = call float @dx.op.dot3.f32(i32 55, float %1938, float %1939, float %1940, float %1312, float %1313, float %1314)  ; Dot3(ax,ay,az,bx,by,bz)
  %1956 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1955)  ; FMax(a,b)
  %1957 = fmul fast float %1956, 0x400C5BF8A0000000
  %1958 = fmul fast float %1954, %1912
  %1959 = fmul fast float %1958, %1957
  %1960 = fadd fast float %1959, %1881
  %1961 = fmul fast float %1954, %1913
  %1962 = fmul fast float %1961, %1957
  %1963 = fadd fast float %1962, %1880
  %1964 = fmul fast float %1954, %1914
  %1965 = fmul fast float %1964, %1957
  %1966 = fadd fast float %1965, %1879
  br label %1967

; <label>:1967                                    ; preds = %1937, %1878, %1803
  %1968 = phi float [ %1966, %1937 ], [ %1879, %1878 ], [ %1815, %1803 ]
  %1969 = phi float [ %1963, %1937 ], [ %1880, %1878 ], [ %1814, %1803 ]
  %1970 = phi float [ %1960, %1937 ], [ %1881, %1878 ], [ %1813, %1803 ]
  %1971 = fcmp fast ogt float %1460, %1497
  %1972 = and i1 %1819, %1971
  %1973 = and i1 %1821, %1972
  %1974 = and i1 %1823, %1973
  %1975 = and i1 %1825, %1974
  br i1 %1975, label %1976, label %2033, !dx.controlflow.hints !109

; <label>:1976                                    ; preds = %1967
  %1977 = fmul fast float %1499, 0x3FC24924A0000000
  %1978 = fsub fast float %1460, %1497
  %1979 = fdiv fast float %1978, %1977
  %1980 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  %1981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1982 = extractvalue %dx.types.CBufRet.f32 %1981, 0
  %1983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1984 = extractvalue %dx.types.CBufRet.f32 %1983, 0
  %1985 = extractvalue %dx.types.CBufRet.f32 %1983, 1
  %1986 = extractvalue %dx.types.CBufRet.f32 %1983, 2
  %1987 = fsub fast float %1982, %1970
  %1988 = fsub fast float %1984, %1810
  %1989 = fsub fast float %1985, %1811
  %1990 = fsub fast float %1986, %1812
  %1991 = fmul fast float %1987, %1980
  %1992 = fmul fast float %1988, %1980
  %1993 = fmul fast float %1989, %1980
  %1994 = fmul fast float %1990, %1980
  %1995 = fadd fast float %1991, %1970
  %1996 = fadd fast float %1992, %1810
  %1997 = fadd fast float %1993, %1811
  %1998 = fadd fast float %1994, %1812
  %1999 = extractvalue %dx.types.CBufRet.f32 %1981, 1
  %2000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2001 = extractvalue %dx.types.CBufRet.f32 %2000, 0
  %2002 = extractvalue %dx.types.CBufRet.f32 %2000, 1
  %2003 = extractvalue %dx.types.CBufRet.f32 %2000, 2
  %2004 = fsub fast float %1999, %1969
  %2005 = fsub fast float %2001, %1807
  %2006 = fsub fast float %2002, %1808
  %2007 = fsub fast float %2003, %1809
  %2008 = fmul fast float %2004, %1980
  %2009 = fmul fast float %2005, %1980
  %2010 = fmul fast float %2006, %1980
  %2011 = fmul fast float %2007, %1980
  %2012 = fadd fast float %2008, %1969
  %2013 = fadd fast float %2009, %1807
  %2014 = fadd fast float %2010, %1808
  %2015 = fadd fast float %2011, %1809
  %2016 = extractvalue %dx.types.CBufRet.f32 %1981, 2
  %2017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2018 = extractvalue %dx.types.CBufRet.f32 %2017, 0
  %2019 = extractvalue %dx.types.CBufRet.f32 %2017, 1
  %2020 = extractvalue %dx.types.CBufRet.f32 %2017, 2
  %2021 = fsub fast float %2016, %1968
  %2022 = fsub fast float %2018, %1804
  %2023 = fsub fast float %2019, %1805
  %2024 = fsub fast float %2020, %1806
  %2025 = fmul fast float %2021, %1980
  %2026 = fmul fast float %2022, %1980
  %2027 = fmul fast float %2023, %1980
  %2028 = fmul fast float %2024, %1980
  %2029 = fadd fast float %2025, %1968
  %2030 = fadd fast float %2026, %1804
  %2031 = fadd fast float %2027, %1805
  %2032 = fadd fast float %2028, %1806
  br label %2033

; <label>:2033                                    ; preds = %1976, %1967
  %2034 = phi float [ %2029, %1976 ], [ %1968, %1967 ]
  %2035 = phi float [ %2030, %1976 ], [ %1804, %1967 ]
  %2036 = phi float [ %2031, %1976 ], [ %1805, %1967 ]
  %2037 = phi float [ %2032, %1976 ], [ %1806, %1967 ]
  %2038 = phi float [ %2012, %1976 ], [ %1969, %1967 ]
  %2039 = phi float [ %2013, %1976 ], [ %1807, %1967 ]
  %2040 = phi float [ %2014, %1976 ], [ %1808, %1967 ]
  %2041 = phi float [ %2015, %1976 ], [ %1809, %1967 ]
  %2042 = phi float [ %1995, %1976 ], [ %1970, %1967 ]
  %2043 = phi float [ %1996, %1976 ], [ %1810, %1967 ]
  %2044 = phi float [ %1997, %1976 ], [ %1811, %1967 ]
  %2045 = phi float [ %1998, %1976 ], [ %1812, %1967 ]
  %2046 = extractvalue %dx.types.CBufRet.f32 %1622, 3
  %2047 = fmul fast float %2046, %2042
  %2048 = fmul fast float %2046, %2038
  %2049 = fmul fast float %2046, %2034
  %2050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2051 = extractvalue %dx.types.CBufRet.f32 %2050, 3
  %2052 = fmul fast float %2047, %2051
  %2053 = fmul fast float %2048, %2051
  %2054 = fmul fast float %2049, %2051
  %2055 = call float @dx.op.dot3.f32(i32 55, float %2052, float %2053, float %2054, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2056 = fmul fast float %2055, 0x3FD20DD760000000
  %2057 = fmul fast float %2043, 1.500000e+00
  %2058 = fmul fast float %2057, %2046
  %2059 = fmul fast float %2058, %2051
  %2060 = fmul fast float %2044, 1.500000e+00
  %2061 = fmul fast float %2060, %2046
  %2062 = fmul fast float %2061, %2051
  %2063 = fmul fast float %2045, 1.500000e+00
  %2064 = fmul fast float %2063, %2046
  %2065 = fmul fast float %2064, %2051
  %2066 = fmul fast float %2039, 1.500000e+00
  %2067 = fmul fast float %2066, %2046
  %2068 = fmul fast float %2067, %2051
  %2069 = fmul fast float %2040, 1.500000e+00
  %2070 = fmul fast float %2069, %2046
  %2071 = fmul fast float %2070, %2051
  %2072 = fmul fast float %2041, 1.500000e+00
  %2073 = fmul fast float %2072, %2046
  %2074 = fmul fast float %2073, %2051
  %2075 = fmul fast float %2035, 1.500000e+00
  %2076 = fmul fast float %2075, %2046
  %2077 = fmul fast float %2076, %2051
  %2078 = fmul fast float %2036, 1.500000e+00
  %2079 = fmul fast float %2078, %2046
  %2080 = fmul fast float %2079, %2051
  %2081 = fmul fast float %2037, 1.500000e+00
  %2082 = fmul fast float %2081, %2046
  %2083 = fmul fast float %2082, %2051
  %2084 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2052)  ; FMax(a,b)
  %2085 = call float @dx.op.dot3.f32(i32 55, float %2059, float %2062, float %2065, float %2059, float %2062, float %2065)  ; Dot3(ax,ay,az,bx,by,bz)
  %2086 = fcmp fast oeq float %2085, 0.000000e+00
  %2087 = fcmp fast oeq float %2084, 0.000000e+00
  %2088 = or i1 %2087, %2086
  br i1 %2088, label %2118, label %2089

; <label>:2089                                    ; preds = %2033
  %2090 = fsub fast float -0.000000e+00, %2065
  %2091 = fsub fast float -0.000000e+00, %2059
  %2092 = call float @dx.op.unary.f32(i32 24, float %2085)  ; Sqrt(value)
  %2093 = fdiv fast float %2092, %2084
  %2094 = fcmp fast ogt float %2093, 0x3FFB6F8900000000
  %2095 = select i1 %2094, float 0x3FFB6F8900000000, float %2093
  %2096 = fmul fast float %2095, 0x3FE8A23460000000
  %2097 = call float @dx.op.unary.f32(i32 7, float %2096)  ; Saturate(value)
  %2098 = call float @dx.op.binary.f32(i32 35, float %2095, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2099 = fmul fast float %2097, %2084
  %2100 = fmul fast float %2098, 0x3FF279A740000000
  %2101 = fadd fast float %2100, -1.000000e+00
  %2102 = call float @dx.op.dot3.f32(i32 55, float %2090, float %2091, float %2062, float %2090, float %2091, float %2062)  ; Dot3(ax,ay,az,bx,by,bz)
  %2103 = call float @dx.op.unary.f32(i32 25, float %2102)  ; Rsqrt(value)
  %2104 = fmul fast float %2103, %2090
  %2105 = fmul fast float %2103, %2091
  %2106 = fmul fast float %2103, %2062
  %2107 = fmul fast float %2101, %2101
  %2108 = fsub fast float 1.000000e+00, %2107
  %2109 = fmul fast float %2098, 0x40005F8BE0000000
  %2110 = fsub fast float 0x400C5BF8A0000000, %2109
  %2111 = fdiv fast float %2099, %2110
  %2112 = fmul fast float %2111, 0x3FEE31C3C0000000
  %2113 = fmul fast float %2112, %2108
  %2114 = fmul fast float %2098, 0x3FDACB7480000000
  %2115 = fadd fast float %2114, 0xBFD7347680000000
  %2116 = fmul fast float %2115, %2111
  %2117 = fmul fast float %2116, %2108
  br label %2118

; <label>:2118                                    ; preds = %2089, %2033
  %2119 = phi float [ %2104, %2089 ], [ 0.000000e+00, %2033 ]
  %2120 = phi float [ %2105, %2089 ], [ 0.000000e+00, %2033 ]
  %2121 = phi float [ %2106, %2089 ], [ 0.000000e+00, %2033 ]
  %2122 = phi float [ %2113, %2089 ], [ 0.000000e+00, %2033 ]
  %2123 = phi float [ %2117, %2089 ], [ 0.000000e+00, %2033 ]
  %2124 = call float @dx.op.dot3.f32(i32 55, float %2119, float %2120, float %2121, float %1312, float %1313, float %1314)  ; Dot3(ax,ay,az,bx,by,bz)
  %2125 = fmul fast float %2124, %2124
  %2126 = fmul fast float %2125, 0x3FEE471020000000
  %2127 = fadd fast float %2126, 0xBFD42F6020000000
  %2128 = fmul fast float %2084, 0x3FD20DD760000000
  %2129 = fmul fast float %2127, %2123
  %2130 = fmul fast float %2122, 0x3FDF454380000000
  %2131 = fmul fast float %2130, %2124
  %2132 = fadd fast float %2131, %2128
  %2133 = fadd fast float %2132, %2129
  %2134 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2053)  ; FMax(a,b)
  %2135 = call float @dx.op.dot3.f32(i32 55, float %2068, float %2071, float %2074, float %2068, float %2071, float %2074)  ; Dot3(ax,ay,az,bx,by,bz)
  %2136 = fcmp fast oeq float %2135, 0.000000e+00
  %2137 = fcmp fast oeq float %2134, 0.000000e+00
  %2138 = or i1 %2137, %2136
  br i1 %2138, label %2168, label %2139

; <label>:2139                                    ; preds = %2118
  %2140 = fsub fast float -0.000000e+00, %2074
  %2141 = fsub fast float -0.000000e+00, %2068
  %2142 = call float @dx.op.unary.f32(i32 24, float %2135)  ; Sqrt(value)
  %2143 = fdiv fast float %2142, %2134
  %2144 = fcmp fast ogt float %2143, 0x3FFB6F8900000000
  %2145 = select i1 %2144, float 0x3FFB6F8900000000, float %2143
  %2146 = fmul fast float %2145, 0x3FE8A23460000000
  %2147 = call float @dx.op.unary.f32(i32 7, float %2146)  ; Saturate(value)
  %2148 = call float @dx.op.binary.f32(i32 35, float %2145, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2149 = fmul fast float %2147, %2134
  %2150 = fmul fast float %2148, 0x3FF279A740000000
  %2151 = fadd fast float %2150, -1.000000e+00
  %2152 = call float @dx.op.dot3.f32(i32 55, float %2140, float %2141, float %2071, float %2140, float %2141, float %2071)  ; Dot3(ax,ay,az,bx,by,bz)
  %2153 = call float @dx.op.unary.f32(i32 25, float %2152)  ; Rsqrt(value)
  %2154 = fmul fast float %2153, %2140
  %2155 = fmul fast float %2153, %2141
  %2156 = fmul fast float %2153, %2071
  %2157 = fmul fast float %2151, %2151
  %2158 = fsub fast float 1.000000e+00, %2157
  %2159 = fmul fast float %2148, 0x40005F8BE0000000
  %2160 = fsub fast float 0x400C5BF8A0000000, %2159
  %2161 = fdiv fast float %2149, %2160
  %2162 = fmul fast float %2161, 0x3FEE31C3C0000000
  %2163 = fmul fast float %2162, %2158
  %2164 = fmul fast float %2148, 0x3FDACB7480000000
  %2165 = fadd fast float %2164, 0xBFD7347680000000
  %2166 = fmul fast float %2165, %2161
  %2167 = fmul fast float %2166, %2158
  br label %2168

; <label>:2168                                    ; preds = %2139, %2118
  %2169 = phi float [ %2154, %2139 ], [ 0.000000e+00, %2118 ]
  %2170 = phi float [ %2155, %2139 ], [ 0.000000e+00, %2118 ]
  %2171 = phi float [ %2156, %2139 ], [ 0.000000e+00, %2118 ]
  %2172 = phi float [ %2163, %2139 ], [ 0.000000e+00, %2118 ]
  %2173 = phi float [ %2167, %2139 ], [ 0.000000e+00, %2118 ]
  %2174 = call float @dx.op.dot3.f32(i32 55, float %2169, float %2170, float %2171, float %1312, float %1313, float %1314)  ; Dot3(ax,ay,az,bx,by,bz)
  %2175 = fmul fast float %2174, %2174
  %2176 = fmul fast float %2175, 0x3FEE471020000000
  %2177 = fadd fast float %2176, 0xBFD42F6020000000
  %2178 = fmul fast float %2134, 0x3FD20DD760000000
  %2179 = fmul fast float %2177, %2173
  %2180 = fmul fast float %2172, 0x3FDF454380000000
  %2181 = fmul fast float %2180, %2174
  %2182 = fadd fast float %2181, %2178
  %2183 = fadd fast float %2182, %2179
  %2184 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2054)  ; FMax(a,b)
  %2185 = call float @dx.op.dot3.f32(i32 55, float %2077, float %2080, float %2083, float %2077, float %2080, float %2083)  ; Dot3(ax,ay,az,bx,by,bz)
  %2186 = fcmp fast oeq float %2185, 0.000000e+00
  %2187 = fcmp fast oeq float %2184, 0.000000e+00
  %2188 = or i1 %2187, %2186
  br i1 %2188, label %2218, label %2189

; <label>:2189                                    ; preds = %2168
  %2190 = fsub fast float -0.000000e+00, %2083
  %2191 = fsub fast float -0.000000e+00, %2077
  %2192 = call float @dx.op.unary.f32(i32 24, float %2185)  ; Sqrt(value)
  %2193 = fdiv fast float %2192, %2184
  %2194 = fcmp fast ogt float %2193, 0x3FFB6F8900000000
  %2195 = select i1 %2194, float 0x3FFB6F8900000000, float %2193
  %2196 = fmul fast float %2195, 0x3FE8A23460000000
  %2197 = call float @dx.op.unary.f32(i32 7, float %2196)  ; Saturate(value)
  %2198 = call float @dx.op.binary.f32(i32 35, float %2195, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2199 = fmul fast float %2197, %2184
  %2200 = fmul fast float %2198, 0x3FF279A740000000
  %2201 = fadd fast float %2200, -1.000000e+00
  %2202 = call float @dx.op.dot3.f32(i32 55, float %2190, float %2191, float %2080, float %2190, float %2191, float %2080)  ; Dot3(ax,ay,az,bx,by,bz)
  %2203 = call float @dx.op.unary.f32(i32 25, float %2202)  ; Rsqrt(value)
  %2204 = fmul fast float %2203, %2190
  %2205 = fmul fast float %2203, %2191
  %2206 = fmul fast float %2203, %2080
  %2207 = fmul fast float %2201, %2201
  %2208 = fsub fast float 1.000000e+00, %2207
  %2209 = fmul fast float %2198, 0x40005F8BE0000000
  %2210 = fsub fast float 0x400C5BF8A0000000, %2209
  %2211 = fdiv fast float %2199, %2210
  %2212 = fmul fast float %2211, 0x3FEE31C3C0000000
  %2213 = fmul fast float %2212, %2208
  %2214 = fmul fast float %2198, 0x3FDACB7480000000
  %2215 = fadd fast float %2214, 0xBFD7347680000000
  %2216 = fmul fast float %2215, %2211
  %2217 = fmul fast float %2216, %2208
  br label %2218

; <label>:2218                                    ; preds = %2189, %2168
  %2219 = phi float [ %2204, %2189 ], [ 0.000000e+00, %2168 ]
  %2220 = phi float [ %2205, %2189 ], [ 0.000000e+00, %2168 ]
  %2221 = phi float [ %2206, %2189 ], [ 0.000000e+00, %2168 ]
  %2222 = phi float [ %2213, %2189 ], [ 0.000000e+00, %2168 ]
  %2223 = phi float [ %2217, %2189 ], [ 0.000000e+00, %2168 ]
  %2224 = call float @dx.op.dot3.f32(i32 55, float %2219, float %2220, float %2221, float %1312, float %1313, float %1314)  ; Dot3(ax,ay,az,bx,by,bz)
  %2225 = fmul fast float %2224, %2224
  %2226 = fmul fast float %2225, 0x3FEE471020000000
  %2227 = fadd fast float %2226, 0xBFD42F6020000000
  %2228 = fmul fast float %2184, 0x3FD20DD760000000
  %2229 = fmul fast float %2227, %2223
  %2230 = fmul fast float %2222, 0x3FDF454380000000
  %2231 = fmul fast float %2230, %2224
  %2232 = fadd fast float %2231, %2228
  %2233 = fadd fast float %2232, %2229
  %2234 = call float @dx.op.binary.f32(i32 35, float %2133, float 0.000000e+00)  ; FMax(a,b)
  %2235 = call float @dx.op.binary.f32(i32 35, float %2183, float 0.000000e+00)  ; FMax(a,b)
  %2236 = call float @dx.op.binary.f32(i32 35, float %2233, float 0.000000e+00)  ; FMax(a,b)
  %2237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.f32 %2237, 0
  %2239 = call float @dx.op.binary.f32(i32 36, float %1324, float %2238)  ; FMin(a,b)
  %2240 = fsub fast float 1.000000e+00, %1450
  %2241 = fmul fast float %2239, %2240
  %2242 = fsub fast float 1.000000e+00, %2241
  %2243 = bitcast float %2242 to i32
  %2244 = sub nsw i32 2129859010, %2243
  %2245 = bitcast i32 %2244 to float
  %2246 = call float @dx.op.binary.f32(i32 36, float %1325, float %2238)  ; FMin(a,b)
  %2247 = fmul fast float %2246, %2240
  %2248 = fsub fast float 1.000000e+00, %2247
  %2249 = bitcast float %2248 to i32
  %2250 = sub nsw i32 2129859010, %2249
  %2251 = bitcast i32 %2250 to float
  %2252 = call float @dx.op.binary.f32(i32 36, float %1326, float %2238)  ; FMin(a,b)
  %2253 = fmul fast float %2252, %2240
  %2254 = fsub fast float 1.000000e+00, %2253
  %2255 = bitcast float %2254 to i32
  %2256 = sub nsw i32 2129859010, %2255
  %2257 = bitcast i32 %2256 to float
  %2258 = fmul fast float %2234, %1450
  %2259 = fmul fast float %2258, %2245
  %2260 = fmul fast float %2235, %1450
  %2261 = fmul fast float %2260, %2251
  %2262 = fmul fast float %2236, %1450
  %2263 = fmul fast float %2262, %2257
  %2264 = call float @dx.op.dot3.f32(i32 55, float %2259, float %2261, float %2263, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2265 = select i1 %1435, float 0.000000e+00, float %2259
  %2266 = select i1 %1435, float %2264, float %2261
  %2267 = select i1 %1435, float 0.000000e+00, float %2263
  %2268 = fsub fast float 1.000000e+00, %1333
  %2269 = fsub fast float 1.000000e+00, %1334
  %2270 = fsub fast float 1.000000e+00, %1440
  %2271 = fmul fast float %1372, %2268
  %2272 = fmul fast float %1372, %2269
  %2273 = fmul fast float %2270, %1372
  %2274 = fadd fast float %2271, %1333
  %2275 = fadd fast float %2272, %1334
  %2276 = fadd fast float %2273, %1440
  %2277 = and i32 %783, 65535
  %2278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2277)  ; LegacyF16ToF32(value)
  %2279 = lshr i32 %786, 16
  %2280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2279)  ; LegacyF16ToF32(value)
  %2281 = fcmp fast ogt float %2278, 0.000000e+00
  %2282 = call float @dx.op.unary.f32(i32 6, float %1442)  ; FAbs(value)
  %2283 = select i1 %2281, float %2282, float 0.000000e+00
  %2284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %58, float %2278, float %2283, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2285 = extractvalue %dx.types.ResRet.f32 %2284, 0
  %2286 = extractvalue %dx.types.ResRet.f32 %2284, 1
  %2287 = extractvalue %dx.types.ResRet.f32 %2284, 2
  %2288 = fadd fast float %2285, -5.000000e-01
  %2289 = fadd fast float %2286, -5.000000e-01
  %2290 = fadd fast float %2287, -5.000000e-01
  %2291 = fmul fast float %1333, 4.000000e+00
  %2292 = fmul fast float %2291, %2268
  %2293 = fmul fast float %2292, %2280
  %2294 = fmul fast float %2293, %2288
  %2295 = fmul fast float %1334, 4.000000e+00
  %2296 = fmul fast float %2295, %2269
  %2297 = fmul fast float %2296, %2280
  %2298 = fmul fast float %2297, %2289
  %2299 = fmul fast float %1440, 4.000000e+00
  %2300 = fmul fast float %2299, %2270
  %2301 = fmul fast float %2300, %2280
  %2302 = fmul fast float %2301, %2290
  %2303 = fadd fast float %2274, %2294
  %2304 = fadd fast float %2275, %2298
  %2305 = fadd fast float %2276, %2302
  %2306 = call float @dx.op.unary.f32(i32 7, float %2303)  ; Saturate(value)
  %2307 = call float @dx.op.unary.f32(i32 7, float %2304)  ; Saturate(value)
  %2308 = call float @dx.op.unary.f32(i32 7, float %2305)  ; Saturate(value)
  %2309 = call float @dx.op.binary.f32(i32 35, float %2307, float %2308)  ; FMax(a,b)
  %2310 = call float @dx.op.binary.f32(i32 35, float %2306, float %2309)  ; FMax(a,b)
  %2311 = fsub fast float 1.000000e+00, %2310
  %2312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2313 = extractvalue %dx.types.CBufRet.i32 %2312, 0
  %2314 = and i32 %2313, 524288
  %2315 = icmp ne i32 %2314, 0
  %2316 = select i1 %2315, float 0.000000e+00, float 1.000000e+00
  %2317 = xor i1 %2315, true
  %2318 = zext i1 %2317 to i32
  br i1 %2315, label %2319, label %2589

; <label>:2319                                    ; preds = %2218
  %2320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %2321 = extractvalue %dx.types.CBufRet.f32 %2320, 0
  %2322 = extractvalue %dx.types.CBufRet.f32 %2320, 1
  %2323 = extractvalue %dx.types.CBufRet.f32 %2320, 2
  %2324 = extractvalue %dx.types.CBufRet.f32 %2320, 3
  %2325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %2326 = extractvalue %dx.types.CBufRet.f32 %2325, 0
  %2327 = extractvalue %dx.types.CBufRet.f32 %2325, 1
  %2328 = extractvalue %dx.types.CBufRet.f32 %2325, 2
  %2329 = extractvalue %dx.types.CBufRet.f32 %2325, 3
  %2330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %2331 = extractvalue %dx.types.CBufRet.f32 %2330, 0
  %2332 = extractvalue %dx.types.CBufRet.f32 %2330, 1
  %2333 = extractvalue %dx.types.CBufRet.f32 %2330, 2
  %2334 = extractvalue %dx.types.CBufRet.f32 %2330, 3
  %2335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %2336 = extractvalue %dx.types.CBufRet.f32 %2335, 0
  %2337 = extractvalue %dx.types.CBufRet.f32 %2335, 1
  %2338 = extractvalue %dx.types.CBufRet.f32 %2335, 2
  %2339 = extractvalue %dx.types.CBufRet.f32 %2335, 3
  %2340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %2341 = extractvalue %dx.types.CBufRet.f32 %2340, 0
  %2342 = extractvalue %dx.types.CBufRet.f32 %2340, 1
  %2343 = extractvalue %dx.types.CBufRet.f32 %2340, 2
  %2344 = extractvalue %dx.types.CBufRet.f32 %2340, 3
  %2345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %2346 = extractvalue %dx.types.CBufRet.f32 %2345, 0
  %2347 = extractvalue %dx.types.CBufRet.f32 %2345, 1
  %2348 = extractvalue %dx.types.CBufRet.f32 %2345, 2
  %2349 = extractvalue %dx.types.CBufRet.f32 %2345, 3
  %2350 = call float @dx.op.dot3.f32(i32 55, float %2346, float %2347, float %2348, float %1447, float %1448, float %1449)  ; Dot3(ax,ay,az,bx,by,bz)
  %2351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %2352 = extractvalue %dx.types.CBufRet.f32 %2351, 1
  %2353 = extractvalue %dx.types.CBufRet.f32 %2351, 0
  %2354 = select i1 %105, float %2353, float %2352
  %2355 = fmul fast float %2350, 8.000000e+00
  %2356 = fmul fast float %2355, %2354
  %2357 = call float @dx.op.unary.f32(i32 7, float %2356)  ; Saturate(value)
  %2358 = fcmp fast ogt float %2357, 0.000000e+00
  br i1 %2358, label %2359, label %2576, !dx.controlflow.hints !110

; <label>:2359                                    ; preds = %2319
  %2360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %2361 = extractvalue %dx.types.CBufRet.f32 %2360, 1
  %2362 = fmul fast float %799, 2.000000e+00
  %2363 = fmul fast float %800, 2.000000e+00
  %2364 = fadd fast float %2362, -1.000000e+00
  %2365 = fadd fast float %2363, -1.000000e+00
  %2366 = fmul fast float %2361, %2364
  %2367 = fmul fast float %2361, %2365
  %2368 = fadd fast float %2366, %88
  %2369 = fadd fast float %2367, %89
  %2370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2371 = extractvalue %dx.types.CBufRet.f32 %2370, 2
  %2372 = extractvalue %dx.types.CBufRet.f32 %2370, 3
  %2373 = fmul fast float %2368, %2371
  %2374 = fmul fast float %2369, %2372
  %2375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %59, float %2373, float %2374, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2376 = extractvalue %dx.types.ResRet.f32 %2375, 0
  %2377 = fcmp fast une float %2376, 0xFFF0000000000000
  %2378 = fcmp fast une float %2376, 0x7FF0000000000000
  %2379 = and i1 %2377, %2378
  %2380 = call float @dx.op.unary.f32(i32 6, float %2376)  ; FAbs(value)
  %2381 = fsub fast float 1.000000e+00, %2380
  %2382 = select i1 %2379, float 1.000000e+00, float 0.000000e+00
  %2383 = fmul fast float %2382, %2357
  %2384 = fcmp fast ogt float %2383, 0.000000e+00
  br i1 %2384, label %2385, label %2576, !dx.controlflow.hints !111

; <label>:2385                                    ; preds = %2359
  %2386 = fmul fast float %2321, %143
  %2387 = call float @dx.op.tertiary.f32(i32 46, float %144, float %2322, float %2386)  ; FMad(a,b,c)
  %2388 = call float @dx.op.tertiary.f32(i32 46, float %145, float %2323, float %2387)  ; FMad(a,b,c)
  %2389 = fadd fast float %2388, %2324
  %2390 = fmul fast float %2326, %143
  %2391 = call float @dx.op.tertiary.f32(i32 46, float %144, float %2327, float %2390)  ; FMad(a,b,c)
  %2392 = call float @dx.op.tertiary.f32(i32 46, float %145, float %2328, float %2391)  ; FMad(a,b,c)
  %2393 = fadd fast float %2392, %2329
  %2394 = fmul fast float %2331, %143
  %2395 = call float @dx.op.tertiary.f32(i32 46, float %144, float %2332, float %2394)  ; FMad(a,b,c)
  %2396 = call float @dx.op.tertiary.f32(i32 46, float %145, float %2333, float %2395)  ; FMad(a,b,c)
  %2397 = fadd fast float %2396, %2334
  %2398 = fdiv fast float 1.000000e+00, %2397
  %2399 = fmul fast float %2398, %2389
  %2400 = fmul fast float %2398, %2393
  %2401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2402 = extractvalue %dx.types.CBufRet.f32 %2401, 0
  %2403 = extractvalue %dx.types.CBufRet.f32 %2401, 1
  %2404 = fmul fast float %2399, %2402
  %2405 = fmul fast float %2400, %2403
  %2406 = extractvalue %dx.types.CBufRet.f32 %2401, 2
  %2407 = extractvalue %dx.types.CBufRet.f32 %2401, 3
  %2408 = fadd fast float %2404, %2406
  %2409 = fadd fast float %2405, %2407
  %2410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2411 = extractvalue %dx.types.CBufRet.f32 %2410, 3
  %2412 = fmul fast float %2411, %1447
  %2413 = fmul fast float %2411, %1448
  %2414 = fmul fast float %2411, %1449
  %2415 = fadd fast float %2412, %143
  %2416 = fadd fast float %2413, %144
  %2417 = fadd fast float %2414, %145
  %2418 = fmul fast float %2415, %2321
  %2419 = call float @dx.op.tertiary.f32(i32 46, float %2416, float %2322, float %2418)  ; FMad(a,b,c)
  %2420 = call float @dx.op.tertiary.f32(i32 46, float %2417, float %2323, float %2419)  ; FMad(a,b,c)
  %2421 = fadd fast float %2420, %2324
  %2422 = fmul fast float %2415, %2326
  %2423 = call float @dx.op.tertiary.f32(i32 46, float %2416, float %2327, float %2422)  ; FMad(a,b,c)
  %2424 = call float @dx.op.tertiary.f32(i32 46, float %2417, float %2328, float %2423)  ; FMad(a,b,c)
  %2425 = fadd fast float %2424, %2329
  %2426 = fmul fast float %2415, %2331
  %2427 = call float @dx.op.tertiary.f32(i32 46, float %2416, float %2332, float %2426)  ; FMad(a,b,c)
  %2428 = call float @dx.op.tertiary.f32(i32 46, float %2417, float %2333, float %2427)  ; FMad(a,b,c)
  %2429 = fadd fast float %2428, %2334
  %2430 = fdiv fast float 1.000000e+00, %2429
  %2431 = fmul fast float %2430, %2421
  %2432 = fmul fast float %2430, %2425
  %2433 = fmul fast float %2408, 2.000000e+00
  %2434 = fadd fast float %2433, -1.000000e+00
  %2435 = call float @dx.op.unary.f32(i32 6, float %2434)  ; FAbs(value)
  %2436 = fmul fast float %2435, 5.000000e+00
  %2437 = fadd fast float %2436, -4.000000e+00
  %2438 = call float @dx.op.unary.f32(i32 7, float %2437)  ; Saturate(value)
  %2439 = fsub fast float %2399, %2431
  %2440 = fmul fast float %2402, %2439
  %2441 = fmul fast float %2440, %2438
  %2442 = fsub fast float %2431, %2399
  %2443 = fmul fast float %2402, %2442
  %2444 = fadd fast float %2443, %2441
  %2445 = fsub fast float %2432, %2400
  %2446 = fmul fast float %2403, %2445
  %2447 = fmul fast float %2444, %2381
  %2448 = fmul fast float %2446, %2381
  %2449 = fadd fast float %2447, %2408
  %2450 = fadd fast float %2448, %2409
  %2451 = fsub fast float %2430, %2398
  %2452 = fmul fast float %2451, %2381
  %2453 = fadd fast float %2452, %2398
  %2454 = fdiv fast float 1.000000e+00, %2453
  %2455 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %58, float %2449, float %2450, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2456 = extractvalue %dx.types.ResRet.f32 %2455, 0
  %2457 = extractvalue %dx.types.ResRet.f32 %2455, 1
  %2458 = extractvalue %dx.types.ResRet.f32 %2455, 2
  %2459 = extractvalue %dx.types.CBufRet.f32 %2050, 1
  %2460 = fmul fast float %2459, %2456
  %2461 = fmul fast float %2459, %2457
  %2462 = fmul fast float %2459, %2458
  %2463 = call float @dx.op.binary.f32(i32 35, float %2454, float 0x3810000000000000)  ; FMax(a,b)
  %2464 = fdiv fast float %2397, %2463
  %2465 = call float @dx.op.unary.f32(i32 7, float %2464)  ; Saturate(value)
  %2466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %2467 = extractvalue %dx.types.CBufRet.f32 %2466, 0
  %2468 = extractvalue %dx.types.CBufRet.f32 %2466, 1
  %2469 = extractvalue %dx.types.CBufRet.f32 %2466, 2
  %2470 = fadd fast float %2467, %143
  %2471 = fadd fast float %2468, %144
  %2472 = fadd fast float %2469, %145
  %2473 = fmul fast float %2470, %2336
  %2474 = call float @dx.op.tertiary.f32(i32 46, float %2471, float %2337, float %2473)  ; FMad(a,b,c)
  %2475 = call float @dx.op.tertiary.f32(i32 46, float %2472, float %2338, float %2474)  ; FMad(a,b,c)
  %2476 = fadd fast float %2475, %2339
  %2477 = fmul fast float %2470, %2341
  %2478 = call float @dx.op.tertiary.f32(i32 46, float %2471, float %2342, float %2477)  ; FMad(a,b,c)
  %2479 = call float @dx.op.tertiary.f32(i32 46, float %2472, float %2343, float %2478)  ; FMad(a,b,c)
  %2480 = fadd fast float %2479, %2344
  %2481 = fmul fast float %2470, %2346
  %2482 = call float @dx.op.tertiary.f32(i32 46, float %2471, float %2347, float %2481)  ; FMad(a,b,c)
  %2483 = call float @dx.op.tertiary.f32(i32 46, float %2472, float %2348, float %2482)  ; FMad(a,b,c)
  %2484 = fadd fast float %2483, %2349
  %2485 = fdiv fast float 1.000000e+00, %2484
  %2486 = fmul fast float %2485, %2476
  %2487 = fmul fast float %2485, %2480
  %2488 = fmul fast float %2486, %2402
  %2489 = fmul fast float %2487, %2403
  %2490 = fadd fast float %2488, %2406
  %2491 = fadd fast float %2489, %2407
  %2492 = fadd fast float %2412, %2470
  %2493 = fadd fast float %2413, %2471
  %2494 = fadd fast float %2414, %2472
  %2495 = fmul fast float %2492, %2336
  %2496 = call float @dx.op.tertiary.f32(i32 46, float %2493, float %2337, float %2495)  ; FMad(a,b,c)
  %2497 = call float @dx.op.tertiary.f32(i32 46, float %2494, float %2338, float %2496)  ; FMad(a,b,c)
  %2498 = fadd fast float %2497, %2339
  %2499 = fmul fast float %2492, %2341
  %2500 = call float @dx.op.tertiary.f32(i32 46, float %2493, float %2342, float %2499)  ; FMad(a,b,c)
  %2501 = call float @dx.op.tertiary.f32(i32 46, float %2494, float %2343, float %2500)  ; FMad(a,b,c)
  %2502 = fadd fast float %2501, %2344
  %2503 = fmul fast float %2492, %2346
  %2504 = call float @dx.op.tertiary.f32(i32 46, float %2493, float %2347, float %2503)  ; FMad(a,b,c)
  %2505 = call float @dx.op.tertiary.f32(i32 46, float %2494, float %2348, float %2504)  ; FMad(a,b,c)
  %2506 = fadd fast float %2505, %2349
  %2507 = fdiv fast float 1.000000e+00, %2506
  %2508 = fmul fast float %2507, %2498
  %2509 = fmul fast float %2507, %2502
  %2510 = fmul fast float %2490, 2.000000e+00
  %2511 = fadd fast float %2510, -1.000000e+00
  %2512 = call float @dx.op.unary.f32(i32 6, float %2511)  ; FAbs(value)
  %2513 = fmul fast float %2512, 5.000000e+00
  %2514 = fadd fast float %2513, -4.000000e+00
  %2515 = call float @dx.op.unary.f32(i32 7, float %2514)  ; Saturate(value)
  %2516 = fsub fast float %2486, %2508
  %2517 = fmul fast float %2402, %2516
  %2518 = fmul fast float %2517, %2515
  %2519 = fsub fast float %2508, %2486
  %2520 = fmul fast float %2402, %2519
  %2521 = fadd fast float %2520, %2518
  %2522 = fsub fast float %2509, %2487
  %2523 = fmul fast float %2403, %2522
  %2524 = fmul fast float %2521, %2381
  %2525 = fmul fast float %2523, %2381
  %2526 = fadd fast float %2524, %2490
  %2527 = fadd fast float %2525, %2491
  %2528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %58, float %2526, float %2527, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2529 = extractvalue %dx.types.ResRet.f32 %2528, 0
  %2530 = extractvalue %dx.types.ResRet.f32 %2528, 1
  %2531 = extractvalue %dx.types.ResRet.f32 %2528, 2
  %2532 = extractvalue %dx.types.CBufRet.f32 %2050, 2
  %2533 = fmul fast float %2532, %2529
  %2534 = fmul fast float %2532, %2530
  %2535 = fmul fast float %2532, %2531
  %2536 = and i32 %1391, 255
  %2537 = uitofp i32 %2536 to float
  %2538 = fmul fast float %2537, 0x3F70101020000000
  %2539 = fmul fast float %2538, %2465
  %2540 = extractvalue %dx.types.CBufRet.f32 %2351, 2
  %2541 = fadd fast float %2540, %2539
  %2542 = call float @dx.op.unary.f32(i32 7, float %2541)  ; Saturate(value)
  %2543 = call float @dx.op.binary.f32(i32 35, float %2460, float 0x3810000000000000)  ; FMax(a,b)
  %2544 = call float @dx.op.binary.f32(i32 35, float %2461, float 0x3810000000000000)  ; FMax(a,b)
  %2545 = call float @dx.op.binary.f32(i32 35, float %2462, float 0x3810000000000000)  ; FMax(a,b)
  %2546 = call float @dx.op.unary.f32(i32 23, float %2543)  ; Log(value)
  %2547 = call float @dx.op.unary.f32(i32 23, float %2544)  ; Log(value)
  %2548 = call float @dx.op.unary.f32(i32 23, float %2545)  ; Log(value)
  %2549 = call float @dx.op.binary.f32(i32 35, float %2533, float 0x3810000000000000)  ; FMax(a,b)
  %2550 = call float @dx.op.binary.f32(i32 35, float %2534, float 0x3810000000000000)  ; FMax(a,b)
  %2551 = call float @dx.op.binary.f32(i32 35, float %2535, float 0x3810000000000000)  ; FMax(a,b)
  %2552 = call float @dx.op.unary.f32(i32 23, float %2549)  ; Log(value)
  %2553 = call float @dx.op.unary.f32(i32 23, float %2550)  ; Log(value)
  %2554 = call float @dx.op.unary.f32(i32 23, float %2551)  ; Log(value)
  %2555 = fsub fast float %2546, %2552
  %2556 = fsub fast float %2547, %2553
  %2557 = fsub fast float %2548, %2554
  %2558 = fmul fast float %2555, %2542
  %2559 = fmul fast float %2556, %2542
  %2560 = fmul fast float %2557, %2542
  %2561 = fadd fast float %2558, %2552
  %2562 = fadd fast float %2559, %2553
  %2563 = fadd fast float %2560, %2554
  %2564 = call float @dx.op.unary.f32(i32 21, float %2561)  ; Exp(value)
  %2565 = call float @dx.op.unary.f32(i32 21, float %2562)  ; Exp(value)
  %2566 = call float @dx.op.unary.f32(i32 21, float %2563)  ; Exp(value)
  %2567 = select i1 %1435, float 0.000000e+00, float %2565
  %2568 = select i1 %1435, float 0.000000e+00, float %2566
  %2569 = fmul fast float %2527, 2.000000e+00
  %2570 = fadd fast float %2569, -1.000000e+00
  %2571 = fmul fast float %2570, %2570
  %2572 = fsub fast float 1.000000e+00, %2571
  %2573 = call float @dx.op.unary.f32(i32 7, float %2572)  ; Saturate(value)
  %2574 = call float @dx.op.unary.f32(i32 7, float %2573)  ; Saturate(value)
  %2575 = fmul fast float %2574, %2383
  br label %2576

; <label>:2576                                    ; preds = %2385, %2359, %2319
  %2577 = phi float [ %2564, %2385 ], [ 0.000000e+00, %2359 ], [ 0.000000e+00, %2319 ]
  %2578 = phi float [ %2567, %2385 ], [ 0.000000e+00, %2359 ], [ 0.000000e+00, %2319 ]
  %2579 = phi float [ %2568, %2385 ], [ 0.000000e+00, %2359 ], [ 0.000000e+00, %2319 ]
  %2580 = phi float [ %2575, %2385 ], [ 0.000000e+00, %2359 ], [ 0.000000e+00, %2319 ]
  %2581 = fcmp fast olt float %2580, 1.000000e+00
  %2582 = or i1 %2581, %2317
  %2583 = zext i1 %2582 to i32
  %2584 = fmul fast float %2580, %2316
  %2585 = fsub fast float %2580, %2584
  %2586 = fmul fast float %2585, %2577
  %2587 = fmul fast float %2585, %2578
  %2588 = fmul fast float %2585, %2579
  br label %2589

; <label>:2589                                    ; preds = %2576, %2218
  %2590 = phi float [ 0.000000e+00, %2218 ], [ %2585, %2576 ]
  %2591 = phi float [ 0.000000e+00, %2218 ], [ %2586, %2576 ]
  %2592 = phi float [ 0.000000e+00, %2218 ], [ %2587, %2576 ]
  %2593 = phi float [ 0.000000e+00, %2218 ], [ %2588, %2576 ]
  %2594 = phi i32 [ %2318, %2218 ], [ %2583, %2576 ]
  %2595 = icmp eq i32 %2594, 0
  br i1 %2595, label %3034, label %2596

; <label>:2596                                    ; preds = %2589
  %2597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2598 = extractvalue %dx.types.CBufRet.f32 %2597, 2
  %2599 = extractvalue %dx.types.CBufRet.f32 %2597, 3
  %2600 = fmul fast float %2598, %88
  %2601 = fmul fast float %2599, %89
  %2602 = fptoui float %2600 to i32
  %2603 = fptoui float %2601 to i32
  %2604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2605 = extractvalue %dx.types.CBufRet.f32 %2604, 0
  %2606 = extractvalue %dx.types.CBufRet.f32 %2604, 2
  %2607 = extractvalue %dx.types.CBufRet.f32 %2604, 3
  %2608 = fadd fast float %78, -4.000000e+00
  %2609 = call float @dx.op.binary.f32(i32 35, float %2608, float 0.000000e+00)  ; FMax(a,b)
  %2610 = fadd fast float %2609, %2605
  %2611 = fmul fast float %2610, %2606
  %2612 = call float @dx.op.unary.f32(i32 23, float %2611)  ; Log(value)
  %2613 = fmul fast float %2612, %2607
  %2614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2615 = extractvalue %dx.types.CBufRet.f32 %2614, 2
  %2616 = fmul fast float %2613, %2615
  %2617 = call float @dx.op.unary.f32(i32 7, float %2616)  ; Saturate(value)
  %2618 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2619 = extractvalue %dx.types.CBufRet.i32 %2618, 1
  %2620 = add i32 %2619, -1
  %2621 = uitofp i32 %2619 to float
  %2622 = fmul fast float %2621, %2617
  %2623 = fptoui float %2622 to i32
  %2624 = call i32 @dx.op.binary.i32(i32 40, i32 %2623, i32 %2620)  ; UMin(a,b)
  %2625 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2626 = extractvalue %dx.types.CBufRet.i32 %2625, 2
  %2627 = extractvalue %dx.types.CBufRet.i32 %2625, 3
  %2628 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2603, i32 %2626, i32 %2602)  ; UMad(a,b,c)
  %2629 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2624, i32 %2627, i32 %2628)  ; UMad(a,b,c)
  %2630 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %2631 = fptoui float %2630 to i32
  %2632 = lshr i32 %2631, 5
  %2633 = call i32 @dx.op.binary.i32(i32 40, i32 %2632, i32 8191)  ; UMin(a,b)
  %2634 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2635 = extractvalue %dx.types.CBufRet.i32 %2634, 2
  %2636 = add nsw i32 %2635, -1
  %2637 = call i32 @dx.op.binary.i32(i32 37, i32 %2636, i32 0)  ; IMax(a,b)
  %2638 = shl i32 %2633, 2
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = lshr i32 %2640, 16
  %2642 = and i32 %2640, 65535
  %2643 = lshr i32 %2640, 21
  %2644 = lshr i32 %2642, 5
  %2645 = call i32 @dx.op.binary.i32(i32 40, i32 %2644, i32 %2637)  ; UMin(a,b)
  %2646 = icmp ugt i32 %2643, %2645
  br i1 %2646, label %3010, label %2647

; <label>:2647                                    ; preds = %2596
  br label %2648

; <label>:2648                                    ; preds = %3002, %2647
  %2649 = phi float [ %3003, %3002 ], [ 0.000000e+00, %2647 ]
  %2650 = phi float [ %3004, %3002 ], [ 0.000000e+00, %2647 ]
  %2651 = phi float [ %3005, %3002 ], [ 0.000000e+00, %2647 ]
  %2652 = phi float [ %3006, %3002 ], [ 1.000000e+00, %2647 ]
  %2653 = phi i32 [ %3007, %3002 ], [ %2643, %2647 ]
  %2654 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2655 = extractvalue %dx.types.CBufRet.i32 %2654, 2
  %2656 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2629, i32 %2655, i32 %2653)  ; UMad(a,b,c)
  %2657 = shl i32 %2656, 2
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = shl i32 %2653, 5
  %2661 = sub nsw i32 %2641, %2660
  %2662 = call i32 @dx.op.binary.i32(i32 37, i32 %2661, i32 0)  ; IMax(a,b)
  %2663 = call i32 @dx.op.binary.i32(i32 38, i32 %2662, i32 31)  ; IMin(a,b)
  %2664 = sub nsw i32 1, %2641
  %2665 = add nsw i32 %2664, %2642
  %2666 = call i32 @dx.op.binary.i32(i32 37, i32 %2665, i32 0)  ; IMax(a,b)
  %2667 = call i32 @dx.op.binary.i32(i32 38, i32 %2666, i32 32)  ; IMin(a,b)
  %2668 = and i32 %2667, 31
  %2669 = shl i32 -1, %2668
  %2670 = xor i32 %2669, -1
  %2671 = and i32 %2663, 31
  %2672 = shl i32 %2670, %2671
  %2673 = icmp eq i32 %2667, 32
  %2674 = select i1 %2673, i32 -1, i32 %2672
  %2675 = and i32 %2674, %2659
  %2676 = icmp eq i32 %2675, 0
  br i1 %2676, label %3002, label %2677

; <label>:2677                                    ; preds = %2648
  br label %2678

; <label>:2678                                    ; preds = %2785, %2677
  %2679 = phi float [ %2786, %2785 ], [ %2649, %2677 ]
  %2680 = phi float [ %2787, %2785 ], [ %2650, %2677 ]
  %2681 = phi float [ %2788, %2785 ], [ %2651, %2677 ]
  %2682 = phi float [ %2789, %2785 ], [ %2652, %2677 ]
  %2683 = phi i32 [ %2688, %2785 ], [ %2675, %2677 ]
  %2684 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2683)  ; FirstbitLo(value)
  %2685 = add i32 %2684, %2660
  %2686 = and i32 %2684, 31
  %2687 = shl i32 1, %2686
  %2688 = xor i32 %2687, %2683
  %2689 = mul i32 %2685, 72
  %2690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %2689, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.f32 %2690, 0
  %2692 = extractvalue %dx.types.ResRet.f32 %2690, 1
  %2693 = extractvalue %dx.types.ResRet.f32 %2690, 2
  %2694 = add i32 %2689, 12
  %2695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %2694, i32 undef)  ; BufferLoad(srv,index,wot)
  %2696 = extractvalue %dx.types.ResRet.i32 %2695, 0
  %2697 = add i32 %2689, 16
  %2698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %2697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2699 = extractvalue %dx.types.ResRet.f32 %2698, 0
  %2700 = extractvalue %dx.types.ResRet.f32 %2698, 1
  %2701 = extractvalue %dx.types.ResRet.f32 %2698, 2
  %2702 = add i32 %2689, 28
  %2703 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.f32 %2703, 0
  %2705 = add i32 %2689, 32
  %2706 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2707 = extractvalue %dx.types.ResRet.f32 %2706, 0
  %2708 = extractvalue %dx.types.ResRet.f32 %2706, 1
  %2709 = extractvalue %dx.types.ResRet.f32 %2706, 2
  %2710 = extractvalue %dx.types.ResRet.f32 %2706, 3
  %2711 = add i32 %2689, 48
  %2712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %2711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.f32 %2712, 0
  %2714 = extractvalue %dx.types.ResRet.f32 %2712, 1
  %2715 = add i32 %2689, 56
  %2716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %2715, i32 undef)  ; BufferLoad(srv,index,wot)
  %2717 = extractvalue %dx.types.ResRet.f32 %2716, 0
  %2718 = extractvalue %dx.types.ResRet.f32 %2716, 1
  %2719 = add i32 %2689, 64
  %2720 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %2719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.f32 %2720, 0
  %2722 = extractvalue %dx.types.ResRet.f32 %2720, 1
  %2723 = mul i32 %2685, 60
  %2724 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %2723, i32 undef)  ; BufferLoad(srv,index,wot)
  %2725 = extractvalue %dx.types.ResRet.f32 %2724, 0
  %2726 = extractvalue %dx.types.ResRet.f32 %2724, 1
  %2727 = extractvalue %dx.types.ResRet.f32 %2724, 2
  %2728 = add i32 %2723, 12
  %2729 = add i32 %2723, 48
  %2730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.f32 %2730, 0
  %2732 = extractvalue %dx.types.ResRet.f32 %2730, 1
  %2733 = extractvalue %dx.types.ResRet.f32 %2730, 2
  %2734 = and i32 %2696, 32767
  %2735 = bitcast float %2691 to i32
  %2736 = icmp eq i32 %2735, -1
  %2737 = bitcast float %2692 to i32
  %2738 = and i32 %2696, 32768
  %2739 = icmp ne i32 %2738, 0
  %2740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2741 = extractvalue %dx.types.CBufRet.f32 %2740, 0
  %2742 = extractvalue %dx.types.CBufRet.f32 %2740, 1
  %2743 = extractvalue %dx.types.CBufRet.f32 %2740, 2
  %2744 = fsub fast float %2725, %2741
  %2745 = fsub fast float %2726, %2742
  %2746 = fsub fast float %2727, %2743
  %2747 = fsub fast float %143, %2744
  %2748 = fsub fast float %144, %2745
  %2749 = fsub fast float %145, %2746
  %2750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.f32 %2750, 0
  %2752 = extractvalue %dx.types.ResRet.f32 %2750, 1
  %2753 = extractvalue %dx.types.ResRet.f32 %2750, 2
  %2754 = call float @dx.op.dot3.f32(i32 55, float %2747, float %2748, float %2749, float %2751, float %2752, float %2753)  ; Dot3(ax,ay,az,bx,by,bz)
  %2755 = add i32 %2723, 24
  %2756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2757 = extractvalue %dx.types.ResRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.ResRet.f32 %2756, 1
  %2759 = extractvalue %dx.types.ResRet.f32 %2756, 2
  %2760 = call float @dx.op.dot3.f32(i32 55, float %2747, float %2748, float %2749, float %2757, float %2758, float %2759)  ; Dot3(ax,ay,az,bx,by,bz)
  %2761 = add i32 %2723, 36
  %2762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %2761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2763 = extractvalue %dx.types.ResRet.f32 %2762, 0
  %2764 = extractvalue %dx.types.ResRet.f32 %2762, 1
  %2765 = extractvalue %dx.types.ResRet.f32 %2762, 2
  %2766 = call float @dx.op.dot3.f32(i32 55, float %2747, float %2748, float %2749, float %2763, float %2764, float %2765)  ; Dot3(ax,ay,az,bx,by,bz)
  %2767 = call float @dx.op.unary.f32(i32 6, float %2754)  ; FAbs(value)
  %2768 = call float @dx.op.unary.f32(i32 6, float %2760)  ; FAbs(value)
  %2769 = call float @dx.op.unary.f32(i32 6, float %2766)  ; FAbs(value)
  %2770 = fsub fast float %2731, %2767
  %2771 = fsub fast float %2732, %2768
  %2772 = fsub fast float %2733, %2769
  %2773 = fmul fast float %2770, %2699
  %2774 = fmul fast float %2771, %2700
  %2775 = fmul fast float %2772, %2701
  %2776 = call float @dx.op.binary.f32(i32 36, float %2774, float %2775)  ; FMin(a,b)
  %2777 = call float @dx.op.binary.f32(i32 36, float %2773, float %2776)  ; FMin(a,b)
  %2778 = call float @dx.op.unary.f32(i32 7, float %2777)  ; Saturate(value)
  %2779 = call float @dx.op.binary.f32(i32 36, float %2682, float %2778)  ; FMin(a,b)
  %2780 = uitofp i1 %2739 to float
  %2781 = select i1 %105, float 1.000000e+00, float 2.000000e+00
  %2782 = fsub fast float %2781, %2780
  %2783 = fmul fast float %2779, %2782
  %2784 = fcmp fast ogt float %2783, 0.000000e+00
  br i1 %2784, label %2791, label %2785

; <label>:2785                                    ; preds = %2933, %2678
  %2786 = phi float [ %2997, %2933 ], [ %2679, %2678 ]
  %2787 = phi float [ %2998, %2933 ], [ %2680, %2678 ]
  %2788 = phi float [ %2999, %2933 ], [ %2681, %2678 ]
  %2789 = phi float [ %3000, %2933 ], [ %2682, %2678 ]
  %2790 = icmp eq i32 %2683, %2687
  br i1 %2790, label %3001, label %2678

; <label>:2791                                    ; preds = %2678
  br i1 %2736, label %2849, label %2792

; <label>:2792                                    ; preds = %2791
  %2793 = fsub fast float -0.000000e+00, %2751
  %2794 = fsub fast float -0.000000e+00, %2752
  %2795 = fsub fast float -0.000000e+00, %2753
  %2796 = call float @dx.op.dot3.f32(i32 55, float %1447, float %1448, float %1449, float %2793, float %2794, float %2795)  ; Dot3(ax,ay,az,bx,by,bz)
  %2797 = fsub fast float -0.000000e+00, %2796
  %2798 = call float @dx.op.dot3.f32(i32 55, float %2747, float %2748, float %2749, float %2793, float %2794, float %2795)  ; Dot3(ax,ay,az,bx,by,bz)
  %2799 = fadd fast float %2798, %2714
  %2800 = fadd fast float %2713, %2798
  %2801 = fsub fast float -0.000000e+00, %2800
  %2802 = fcmp ogt float %2796, -0.000000e+00
  %2803 = select i1 %2802, float %2801, float %2799
  %2804 = call float @dx.op.unary.f32(i32 6, float %2797)  ; FAbs(value)
  %2805 = fdiv fast float 1.000000e+00, %2804
  %2806 = fmul fast float %2803, %2805
  %2807 = call float @dx.op.binary.f32(i32 35, float %2806, float 0.000000e+00)  ; FMax(a,b)
  %2808 = fsub fast float -0.000000e+00, %2757
  %2809 = fsub fast float -0.000000e+00, %2758
  %2810 = fsub fast float -0.000000e+00, %2759
  %2811 = call float @dx.op.dot3.f32(i32 55, float %1447, float %1448, float %1449, float %2808, float %2809, float %2810)  ; Dot3(ax,ay,az,bx,by,bz)
  %2812 = fsub fast float -0.000000e+00, %2811
  %2813 = call float @dx.op.dot3.f32(i32 55, float %2747, float %2748, float %2749, float %2808, float %2809, float %2810)  ; Dot3(ax,ay,az,bx,by,bz)
  %2814 = fadd fast float %2813, %2718
  %2815 = fadd fast float %2717, %2813
  %2816 = fsub fast float -0.000000e+00, %2815
  %2817 = fcmp ogt float %2811, -0.000000e+00
  %2818 = select i1 %2817, float %2816, float %2814
  %2819 = call float @dx.op.unary.f32(i32 6, float %2812)  ; FAbs(value)
  %2820 = fdiv fast float 1.000000e+00, %2819
  %2821 = fmul fast float %2818, %2820
  %2822 = call float @dx.op.binary.f32(i32 35, float %2821, float 0.000000e+00)  ; FMax(a,b)
  %2823 = fsub fast float -0.000000e+00, %2763
  %2824 = fsub fast float -0.000000e+00, %2764
  %2825 = fsub fast float -0.000000e+00, %2765
  %2826 = call float @dx.op.dot3.f32(i32 55, float %1447, float %1448, float %1449, float %2823, float %2824, float %2825)  ; Dot3(ax,ay,az,bx,by,bz)
  %2827 = fsub fast float -0.000000e+00, %2826
  %2828 = call float @dx.op.dot3.f32(i32 55, float %2747, float %2748, float %2749, float %2823, float %2824, float %2825)  ; Dot3(ax,ay,az,bx,by,bz)
  %2829 = fadd fast float %2828, %2722
  %2830 = fadd fast float %2721, %2828
  %2831 = fsub fast float -0.000000e+00, %2830
  %2832 = fcmp ogt float %2826, -0.000000e+00
  %2833 = select i1 %2832, float %2831, float %2829
  %2834 = call float @dx.op.unary.f32(i32 6, float %2827)  ; FAbs(value)
  %2835 = fdiv fast float 1.000000e+00, %2834
  %2836 = fmul fast float %2833, %2835
  %2837 = call float @dx.op.binary.f32(i32 35, float %2836, float 0.000000e+00)  ; FMax(a,b)
  %2838 = call float @dx.op.binary.f32(i32 36, float %2822, float %2837)  ; FMin(a,b)
  %2839 = call float @dx.op.binary.f32(i32 36, float %2807, float %2838)  ; FMin(a,b)
  %2840 = fmul fast float %2839, %1447
  %2841 = fmul fast float %2839, %1448
  %2842 = fmul fast float %2839, %1449
  %2843 = fadd fast float %2840, %143
  %2844 = fadd fast float %2841, %144
  %2845 = fadd fast float %2842, %145
  %2846 = fsub fast float %2843, %2691
  %2847 = fsub fast float %2844, %2692
  %2848 = fsub fast float %2845, %2693
  br label %2856

; <label>:2849                                    ; preds = %2791
  %2850 = fmul fast float %1447, 8.096000e+03
  %2851 = fmul fast float %1448, 8.096000e+03
  %2852 = fmul fast float %1449, 8.096000e+03
  %2853 = fadd fast float %2850, %143
  %2854 = fadd fast float %2851, %144
  %2855 = fadd fast float %2852, %145
  br label %2856

; <label>:2856                                    ; preds = %2849, %2792
  %2857 = phi float [ %1447, %2849 ], [ %2846, %2792 ]
  %2858 = phi float [ %1448, %2849 ], [ %2847, %2792 ]
  %2859 = phi float [ %1449, %2849 ], [ %2848, %2792 ]
  %2860 = phi float [ %2853, %2849 ], [ %2843, %2792 ]
  %2861 = phi float [ %2854, %2849 ], [ %2844, %2792 ]
  %2862 = phi float [ %2855, %2849 ], [ %2845, %2792 ]
  %2863 = fcmp fast olt float %2710, 1.000000e+00
  br i1 %2863, label %2864, label %2895, !dx.controlflow.hints !112

; <label>:2864                                    ; preds = %2856
  %2865 = fmul fast float %2859, %2708
  %2866 = fmul fast float %2858, %2709
  %2867 = fsub fast float %2865, %2866
  %2868 = fmul fast float %2857, %2709
  %2869 = fmul fast float %2859, %2707
  %2870 = fsub fast float %2868, %2869
  %2871 = fmul fast float %2858, %2707
  %2872 = fmul fast float %2857, %2708
  %2873 = fsub fast float %2871, %2872
  %2874 = fmul fast float %2867, 2.000000e+00
  %2875 = fmul fast float %2870, 2.000000e+00
  %2876 = fmul fast float %2873, 2.000000e+00
  %2877 = fmul fast float %2874, %2710
  %2878 = fmul fast float %2875, %2710
  %2879 = fmul fast float %2876, %2710
  %2880 = fmul fast float %2876, %2708
  %2881 = fmul fast float %2875, %2709
  %2882 = fmul fast float %2874, %2709
  %2883 = fmul fast float %2876, %2707
  %2884 = fmul fast float %2875, %2707
  %2885 = fmul fast float %2874, %2708
  %2886 = fadd fast float %2880, %2857
  %2887 = fadd fast float %2886, %2877
  %2888 = fsub fast float %2887, %2881
  %2889 = fsub fast float %2858, %2883
  %2890 = fadd fast float %2889, %2878
  %2891 = fadd fast float %2890, %2882
  %2892 = fadd fast float %2879, %2859
  %2893 = fsub fast float %2892, %2885
  %2894 = fadd fast float %2893, %2884
  br label %2895

; <label>:2895                                    ; preds = %2864, %2856
  %2896 = phi float [ %2888, %2864 ], [ %2857, %2856 ]
  %2897 = phi float [ %2891, %2864 ], [ %2858, %2856 ]
  %2898 = phi float [ %2894, %2864 ], [ %2859, %2856 ]
  br i1 %2736, label %2930, label %2899

; <label>:2899                                    ; preds = %2895
  %2900 = fmul fast float %1395, 0x400187C840000000
  %2901 = fadd fast float %2900, 0xC00EFC2120000000
  %2902 = fmul fast float %2901, %1395
  %2903 = fadd fast float %2902, 0x3FE5D16340000000
  %2904 = fmul fast float %2903, %1395
  %2905 = fadd fast float %2904, 1.000000e+00
  %2906 = call float @dx.op.unary.f32(i32 7, float %2905)  ; Saturate(value)
  %2907 = fsub fast float %2860, %143
  %2908 = fsub fast float %2861, %144
  %2909 = fsub fast float %2862, %145
  %2910 = fsub fast float %2860, %2691
  %2911 = fsub fast float %2861, %2692
  %2912 = fsub fast float %2862, %2693
  %2913 = call float @dx.op.dot3.f32(i32 55, float %2907, float %2908, float %2909, float %2907, float %2908, float %2909)  ; Dot3(ax,ay,az,bx,by,bz)
  %2914 = call float @dx.op.dot3.f32(i32 55, float %2910, float %2911, float %2912, float %2910, float %2911, float %2912)  ; Dot3(ax,ay,az,bx,by,bz)
  %2915 = fadd fast float %2914, 0x3EE4F8B580000000
  %2916 = fdiv fast float %2913, %2915
  %2917 = bitcast float %2916 to i32
  %2918 = ashr i32 %2917, 1
  %2919 = add nsw i32 %2918, 532487669
  %2920 = bitcast i32 %2919 to float
  %2921 = fmul fast float %2920, %2906
  %2922 = call float @dx.op.unary.f32(i32 7, float %2921)  ; Saturate(value)
  %2923 = fmul fast float %2922, 0x4009981AE0000000
  %2924 = fsub fast float 0x40111BBD80000000, %2923
  %2925 = fmul fast float %2924, %2922
  %2926 = fadd fast float %2925, 0xC0009F6020000000
  %2927 = fmul fast float %2926, %2922
  %2928 = fadd fast float %2927, 1.000000e+00
  %2929 = call float @dx.op.unary.f32(i32 7, float %2928)  ; Saturate(value)
  br label %2933

; <label>:2930                                    ; preds = %2895
  %2931 = icmp ne i32 %2737, -1
  %2932 = zext i1 %2931 to i32
  br label %2933

; <label>:2933                                    ; preds = %2930, %2899
  %2934 = phi float [ %1395, %2930 ], [ %2929, %2899 ]
  %2935 = phi i32 [ %2932, %2930 ], [ 0, %2899 ]
  %2936 = fmul float %2934, 5.000000e+00
  %2937 = fsub float 5.000000e+00, %2936
  %2938 = icmp ne i32 %2935, 0
  %2939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2940 = extractvalue %dx.types.CBufRet.f32 %2939, 3
  %2941 = fadd fast float %2940, %2937
  %2942 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2941)  ; FMax(a,b)
  %2943 = call float @dx.op.unary.f32(i32 6, float %2896)  ; FAbs(value)
  %2944 = call float @dx.op.unary.f32(i32 6, float %2897)  ; FAbs(value)
  %2945 = fadd fast float %2944, %2943
  %2946 = call float @dx.op.unary.f32(i32 6, float %2898)  ; FAbs(value)
  %2947 = fadd fast float %2945, %2946
  %2948 = fcmp fast oeq float %2947, 0.000000e+00
  %2949 = fdiv fast float 1.000000e+00, %2947
  %2950 = select i1 %2948, float 1.000000e+00, float %2949
  %2951 = fmul fast float %2950, %2896
  %2952 = fmul fast float %2950, %2897
  %2953 = call float @dx.op.unary.f32(i32 6, float %2952)  ; FAbs(value)
  %2954 = call float @dx.op.unary.f32(i32 6, float %2951)  ; FAbs(value)
  %2955 = fsub fast float 1.000000e+00, %2953
  %2956 = fsub fast float 1.000000e+00, %2954
  %2957 = fcmp fast oge float %2951, 0.000000e+00
  %2958 = fcmp fast oge float %2952, 0.000000e+00
  %2959 = select i1 %2957, float 1.000000e+00, float -1.000000e+00
  %2960 = select i1 %2958, float 1.000000e+00, float -1.000000e+00
  %2961 = fcmp fast ole float %2898, 0.000000e+00
  %2962 = fmul fast float %2959, %2955
  %2963 = fmul fast float %2960, %2956
  %2964 = select i1 %2961, float %2962, float %2951
  %2965 = select i1 %2961, float %2963, float %2952
  %2966 = fmul fast float %2964, 5.000000e-01
  %2967 = fmul fast float %2965, 5.000000e-01
  %2968 = fadd fast float %2966, 5.000000e-01
  %2969 = fadd fast float %2967, 5.000000e-01
  %2970 = uitofp i32 %2734 to float
  %2971 = call float @dx.op.binary.f32(i32 36, float %2942, float 3.000000e+00)  ; FMin(a,b)
  %2972 = fadd fast float %2971, 2.000000e+00
  %2973 = call float @dx.op.unary.f32(i32 21, float %2972)  ; Exp(value)
  %2974 = extractvalue %dx.types.CBufRet.f32 %2939, 1
  %2975 = fmul fast float %2974, %2973
  %2976 = fmul fast float %2975, 2.000000e+00
  %2977 = fsub fast float 1.000000e+00, %2976
  %2978 = fmul fast float %2968, %2977
  %2979 = fmul fast float %2969, %2977
  %2980 = fadd fast float %2978, %2975
  %2981 = fadd fast float %2979, %2975
  %2982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %56, float %2980, float %2981, float %2970, float undef, i32 0, i32 0, i32 undef, float %2942)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2983 = extractvalue %dx.types.ResRet.f32 %2982, 0
  %2984 = extractvalue %dx.types.ResRet.f32 %2982, 1
  %2985 = extractvalue %dx.types.ResRet.f32 %2982, 2
  %2986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2987 = extractvalue %dx.types.CBufRet.f32 %2986, 3
  %2988 = fmul fast float %2987, %2704
  %2989 = call float @dx.op.binary.f32(i32 36, float %2056, float %2988)  ; FMin(a,b)
  %2990 = select i1 %2938, float %2989, float %2988
  %2991 = fmul fast float %2983, %2783
  %2992 = fmul fast float %2991, %2990
  %2993 = fmul fast float %2984, %2783
  %2994 = fmul fast float %2993, %2990
  %2995 = fmul fast float %2985, %2783
  %2996 = fmul fast float %2995, %2990
  %2997 = fadd fast float %2992, %2679
  %2998 = fadd fast float %2994, %2680
  %2999 = fadd fast float %2996, %2681
  %3000 = fsub fast float %2682, %2783
  br label %2785

; <label>:3001                                    ; preds = %2785
  br label %3002

; <label>:3002                                    ; preds = %3001, %2648
  %3003 = phi float [ %2649, %2648 ], [ %2786, %3001 ]
  %3004 = phi float [ %2650, %2648 ], [ %2787, %3001 ]
  %3005 = phi float [ %2651, %2648 ], [ %2788, %3001 ]
  %3006 = phi float [ %2652, %2648 ], [ %2789, %3001 ]
  %3007 = add i32 %2653, 1
  %3008 = icmp ugt i32 %3007, %2645
  br i1 %3008, label %3009, label %2648, !llvm.loop !113

; <label>:3009                                    ; preds = %3002
  br label %3010

; <label>:3010                                    ; preds = %3009, %2596
  %3011 = phi float [ 0.000000e+00, %2596 ], [ %3003, %3009 ]
  %3012 = phi float [ 0.000000e+00, %2596 ], [ %3004, %3009 ]
  %3013 = phi float [ 0.000000e+00, %2596 ], [ %3005, %3009 ]
  %3014 = call float @dx.op.dot3.f32(i32 55, float %3011, float %3012, float %3013, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3015 = select i1 %1435, float 0.000000e+00, float %3011
  %3016 = select i1 %1435, float %3014, float %3012
  %3017 = select i1 %1435, float 0.000000e+00, float %3013
  %3018 = fcmp fast olt float %2590, 0.000000e+00
  %3019 = call float @dx.op.unary.f32(i32 6, float %2590)  ; FAbs(value)
  %3020 = fmul fast float %3019, %2591
  %3021 = fmul fast float %3019, %2592
  %3022 = fmul fast float %3019, %2593
  %3023 = select i1 %3018, float %2591, float %3020
  %3024 = select i1 %3018, float %2592, float %3021
  %3025 = select i1 %3018, float %2593, float %3022
  %3026 = fsub fast float 1.000000e+00, %3019
  %3027 = call float @dx.op.unary.f32(i32 7, float %3026)  ; Saturate(value)
  %3028 = fmul fast float %3027, %3015
  %3029 = fmul fast float %3027, %3016
  %3030 = fmul fast float %3027, %3017
  %3031 = fadd fast float %3023, %3028
  %3032 = fadd fast float %3024, %3029
  %3033 = fadd fast float %3025, %3030
  br label %3034

; <label>:3034                                    ; preds = %3010, %2589
  %3035 = phi float [ %2591, %2589 ], [ %3031, %3010 ]
  %3036 = phi float [ %2592, %2589 ], [ %3032, %3010 ]
  %3037 = phi float [ %2593, %2589 ], [ %3033, %3010 ]
  %3038 = fmul fast float %2311, %2265
  %3039 = fmul fast float %2311, %2266
  %3040 = fmul fast float %2311, %2267
  %3041 = fmul fast float %3035, %2306
  %3042 = fmul fast float %3036, %2307
  %3043 = fmul fast float %3037, %2308
  %3044 = fadd fast float %3041, %1276
  %3045 = fadd fast float %3042, %1277
  %3046 = fadd fast float %3043, %1278
  %3047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3048 = extractvalue %dx.types.CBufRet.f32 %3047, 3
  %3049 = fcmp fast oeq float %3048, 0.000000e+00
  br i1 %3049, label %4839, label %3050

; <label>:3050                                    ; preds = %3034
  %3051 = extractvalue %dx.types.CBufRet.f32 %3047, 0
  %3052 = extractvalue %dx.types.CBufRet.f32 %3047, 1
  %3053 = extractvalue %dx.types.CBufRet.f32 %3047, 2
  %3054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3055 = extractvalue %dx.types.CBufRet.f32 %3054, 0
  %3056 = extractvalue %dx.types.CBufRet.f32 %3054, 1
  %3057 = extractvalue %dx.types.CBufRet.f32 %3054, 2
  %3058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3059 = extractvalue %dx.types.CBufRet.f32 %3058, 0
  %3060 = extractvalue %dx.types.CBufRet.f32 %3058, 1
  %3061 = call float @dx.op.dot3.f32(i32 55, float %3055, float %3056, float %3057, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3062 = select i1 %1435, float %3059, float %3055
  %3063 = select i1 %1435, float %3061, float %3056
  %3064 = select i1 %1435, float %3060, float %3057
  %3065 = fcmp fast olt float %3048, 0.000000e+00
  br i1 %3065, label %4440, label %3066

; <label>:3066                                    ; preds = %3050
  %3067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3068 = extractvalue %dx.types.CBufRet.f32 %3067, 0
  %3069 = extractvalue %dx.types.CBufRet.f32 %3067, 1
  %3070 = extractvalue %dx.types.CBufRet.f32 %3067, 2
  %3071 = extractvalue %dx.types.CBufRet.f32 %3067, 3
  %3072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3073 = extractvalue %dx.types.CBufRet.f32 %3072, 0
  %3074 = extractvalue %dx.types.CBufRet.f32 %3072, 1
  %3075 = extractvalue %dx.types.CBufRet.f32 %3072, 2
  %3076 = extractvalue %dx.types.CBufRet.f32 %3072, 3
  %3077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3078 = extractvalue %dx.types.CBufRet.f32 %3077, 0
  %3079 = extractvalue %dx.types.CBufRet.f32 %3077, 1
  %3080 = extractvalue %dx.types.CBufRet.f32 %3077, 2
  %3081 = extractvalue %dx.types.CBufRet.f32 %3077, 3
  %3082 = fmul fast float %3068, %143
  %3083 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3069, float %3082)  ; FMad(a,b,c)
  %3084 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3070, float %3083)  ; FMad(a,b,c)
  %3085 = fadd fast float %3084, %3071
  %3086 = fmul fast float %3073, %143
  %3087 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3074, float %3086)  ; FMad(a,b,c)
  %3088 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3075, float %3087)  ; FMad(a,b,c)
  %3089 = fadd fast float %3088, %3076
  %3090 = fmul fast float %3078, %143
  %3091 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3079, float %3090)  ; FMad(a,b,c)
  %3092 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3080, float %3091)  ; FMad(a,b,c)
  %3093 = fadd fast float %3092, %3081
  %3094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3095 = extractvalue %dx.types.CBufRet.f32 %3094, 0
  %3096 = extractvalue %dx.types.CBufRet.f32 %3094, 1
  %3097 = extractvalue %dx.types.CBufRet.f32 %3094, 3
  %3098 = fmul fast float %3097, %3085
  %3099 = fmul fast float %3097, %3089
  %3100 = fadd fast float %3098, %3095
  %3101 = fadd fast float %3099, %3096
  %3102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3103 = extractvalue %dx.types.CBufRet.f32 %3102, 0
  %3104 = extractvalue %dx.types.CBufRet.f32 %3102, 1
  %3105 = extractvalue %dx.types.CBufRet.f32 %3102, 3
  %3106 = fmul fast float %3105, %3085
  %3107 = fmul fast float %3105, %3089
  %3108 = fadd fast float %3106, %3103
  %3109 = fadd fast float %3107, %3104
  %3110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3111 = extractvalue %dx.types.CBufRet.f32 %3110, 1
  %3112 = fsub fast float %3111, %3093
  %3113 = extractvalue %dx.types.CBufRet.f32 %3110, 2
  %3114 = fmul fast float %3112, %3113
  %3115 = fsub fast float 1.000000e+00, %3114
  %3116 = call float @dx.op.unary.f32(i32 7, float %3115)  ; Saturate(value)
  %3117 = extractvalue %dx.types.CBufRet.f32 %3102, 2
  %3118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3119 = extractvalue %dx.types.CBufRet.f32 %3118, 2
  %3120 = fadd fast float %3119, %3117
  %3121 = fcmp fast ogt float %3120, 0.000000e+00
  br i1 %3121, label %3122, label %3147

; <label>:3122                                    ; preds = %3066
  %3123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3124 = extractvalue %dx.types.CBufRet.f32 %3123, 0
  %3125 = extractvalue %dx.types.CBufRet.f32 %3123, 1
  %3126 = fsub fast float %3108, %3124
  %3127 = fsub fast float %3109, %3125
  %3128 = fcmp fast olt float %3126, 0.000000e+00
  %3129 = fcmp fast olt float %3127, 0.000000e+00
  %3130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3131 = extractvalue %dx.types.CBufRet.f32 %3130, 0
  %3132 = extractvalue %dx.types.CBufRet.f32 %3130, 1
  %3133 = extractvalue %dx.types.CBufRet.f32 %3130, 2
  %3134 = extractvalue %dx.types.CBufRet.f32 %3130, 3
  %3135 = select i1 %3128, float %3131, float %3133
  %3136 = select i1 %3129, float %3132, float %3134
  %3137 = fmul fast float %3135, %3126
  %3138 = fmul fast float %3136, %3127
  %3139 = call float @dx.op.unary.f32(i32 6, float %3137)  ; FAbs(value)
  %3140 = call float @dx.op.unary.f32(i32 6, float %3138)  ; FAbs(value)
  %3141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3142 = extractvalue %dx.types.CBufRet.f32 %3141, 0
  %3143 = call float @dx.op.binary.f32(i32 35, float %3139, float %3140)  ; FMax(a,b)
  %3144 = fsub fast float %3142, %3143
  %3145 = call float @dx.op.unary.f32(i32 7, float %3144)  ; Saturate(value)
  %3146 = fmul fast float %3145, %3116
  br label %3147

; <label>:3147                                    ; preds = %3122, %3066
  %3148 = phi float [ %3146, %3122 ], [ 0.000000e+00, %3066 ]
  %3149 = extractvalue %dx.types.CBufRet.f32 %3094, 2
  %3150 = extractvalue %dx.types.CBufRet.f32 %3118, 1
  %3151 = fadd fast float %3150, %3149
  %3152 = fcmp fast ogt float %3151, 0.000000e+00
  br i1 %3152, label %3153, label %3178

; <label>:3153                                    ; preds = %3147
  %3154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3155 = extractvalue %dx.types.CBufRet.f32 %3154, 0
  %3156 = extractvalue %dx.types.CBufRet.f32 %3154, 1
  %3157 = fsub fast float %3100, %3155
  %3158 = fsub fast float %3101, %3156
  %3159 = fcmp fast olt float %3157, 0.000000e+00
  %3160 = fcmp fast olt float %3158, 0.000000e+00
  %3161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3162 = extractvalue %dx.types.CBufRet.f32 %3161, 0
  %3163 = extractvalue %dx.types.CBufRet.f32 %3161, 1
  %3164 = extractvalue %dx.types.CBufRet.f32 %3161, 2
  %3165 = extractvalue %dx.types.CBufRet.f32 %3161, 3
  %3166 = select i1 %3159, float %3162, float %3164
  %3167 = select i1 %3160, float %3163, float %3165
  %3168 = fmul fast float %3166, %3157
  %3169 = fmul fast float %3167, %3158
  %3170 = call float @dx.op.unary.f32(i32 6, float %3168)  ; FAbs(value)
  %3171 = call float @dx.op.unary.f32(i32 6, float %3169)  ; FAbs(value)
  %3172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3173 = extractvalue %dx.types.CBufRet.f32 %3172, 0
  %3174 = call float @dx.op.binary.f32(i32 35, float %3170, float %3171)  ; FMax(a,b)
  %3175 = fsub fast float %3173, %3174
  %3176 = call float @dx.op.unary.f32(i32 7, float %3175)  ; Saturate(value)
  %3177 = fmul fast float %3176, %3116
  br label %3178

; <label>:3178                                    ; preds = %3153, %3147
  %3179 = phi float [ %3177, %3153 ], [ 0.000000e+00, %3147 ]
  %3180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3181 = extractvalue %dx.types.CBufRet.f32 %3180, 1
  %3182 = call float @dx.op.unary.f32(i32 7, float %3181)  ; Saturate(value)
  %3183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3184 = extractvalue %dx.types.CBufRet.f32 %3183, 0
  %3185 = extractvalue %dx.types.CBufRet.f32 %3183, 1
  %3186 = fsub fast float %3085, %3184
  %3187 = fsub fast float %3089, %3185
  %3188 = fcmp fast olt float %3186, 0.000000e+00
  %3189 = fcmp fast olt float %3187, 0.000000e+00
  %3190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3191 = extractvalue %dx.types.CBufRet.f32 %3190, 0
  %3192 = extractvalue %dx.types.CBufRet.f32 %3190, 1
  %3193 = extractvalue %dx.types.CBufRet.f32 %3190, 2
  %3194 = extractvalue %dx.types.CBufRet.f32 %3190, 3
  %3195 = select i1 %3188, float %3191, float %3193
  %3196 = select i1 %3189, float %3192, float %3194
  %3197 = fmul fast float %3195, %3186
  %3198 = fmul fast float %3196, %3187
  %3199 = call float @dx.op.unary.f32(i32 6, float %3197)  ; FAbs(value)
  %3200 = call float @dx.op.unary.f32(i32 6, float %3198)  ; FAbs(value)
  %3201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3202 = extractvalue %dx.types.CBufRet.f32 %3201, 0
  %3203 = call float @dx.op.binary.f32(i32 35, float %3199, float %3200)  ; FMax(a,b)
  %3204 = fsub fast float %3202, %3203
  %3205 = call float @dx.op.unary.f32(i32 7, float %3204)  ; Saturate(value)
  %3206 = call float @dx.op.binary.f32(i32 36, float %3205, float %3182)  ; FMin(a,b)
  %3207 = fmul fast float %3206, %3116
  %3208 = fsub fast float %3179, %3207
  %3209 = fsub fast float %3148, %3179
  %3210 = fsub fast float %3209, %3207
  %3211 = call float @dx.op.binary.f32(i32 35, float %3179, float %3148)  ; FMax(a,b)
  %3212 = call float @dx.op.binary.f32(i32 35, float %3207, float %3211)  ; FMax(a,b)
  %3213 = fcmp fast olt float %3212, 1.000000e+00
  br i1 %3213, label %3214, label %3885, !dx.controlflow.hints !115

; <label>:3214                                    ; preds = %3178
  %3215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3216 = extractvalue %dx.types.CBufRet.f32 %3215, 0
  %3217 = fcmp fast une float %3216, 0.000000e+00
  br i1 %3217, label %3218, label %3885, !dx.controlflow.hints !116

; <label>:3218                                    ; preds = %3214
  %3219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3220 = extractvalue %dx.types.CBufRet.f32 %3219, 0
  %3221 = extractvalue %dx.types.CBufRet.f32 %3219, 1
  %3222 = extractvalue %dx.types.CBufRet.f32 %3219, 2
  %3223 = extractvalue %dx.types.CBufRet.f32 %3219, 3
  %3224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3225 = extractvalue %dx.types.CBufRet.f32 %3224, 0
  %3226 = extractvalue %dx.types.CBufRet.f32 %3224, 1
  %3227 = extractvalue %dx.types.CBufRet.f32 %3224, 2
  %3228 = extractvalue %dx.types.CBufRet.f32 %3224, 3
  %3229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3230 = extractvalue %dx.types.CBufRet.f32 %3229, 0
  %3231 = extractvalue %dx.types.CBufRet.f32 %3229, 1
  %3232 = extractvalue %dx.types.CBufRet.f32 %3229, 2
  %3233 = extractvalue %dx.types.CBufRet.f32 %3229, 3
  %3234 = fmul fast float %3220, %143
  %3235 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3221, float %3234)  ; FMad(a,b,c)
  %3236 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3222, float %3235)  ; FMad(a,b,c)
  %3237 = fadd fast float %3236, %3223
  %3238 = fmul fast float %3225, %143
  %3239 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3226, float %3238)  ; FMad(a,b,c)
  %3240 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3227, float %3239)  ; FMad(a,b,c)
  %3241 = fadd fast float %3240, %3228
  %3242 = fmul fast float %3230, %143
  %3243 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3231, float %3242)  ; FMad(a,b,c)
  %3244 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3232, float %3243)  ; FMad(a,b,c)
  %3245 = fadd fast float %3244, %3233
  %3246 = fcmp fast oge float %3237, 1.000000e+00
  %3247 = fcmp fast oge float %3241, 1.000000e+00
  %3248 = or i1 %3246, %3247
  %3249 = fcmp fast olt float %3237, 0.000000e+00
  %3250 = fcmp fast olt float %3241, 0.000000e+00
  %3251 = or i1 %3249, %3250
  %3252 = or i1 %3248, %3251
  br i1 %3252, label %3885, label %3253, !dx.controlflow.hints !117

; <label>:3253                                    ; preds = %3218
  %3254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3255 = extractvalue %dx.types.CBufRet.f32 %3254, 0
  %3256 = extractvalue %dx.types.CBufRet.f32 %3254, 1
  %3257 = extractvalue %dx.types.CBufRet.f32 %3254, 2
  %3258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3259 = extractvalue %dx.types.CBufRet.f32 %3258, 1
  %3260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3261 = extractvalue %dx.types.CBufRet.i32 %3260, 2
  %3262 = uitofp i32 %3261 to float
  %3263 = extractvalue %dx.types.CBufRet.i32 %3260, 3
  %3264 = uitofp i32 %3263 to float
  %3265 = extractvalue %dx.types.CBufRet.f32 %3254, 3
  %3266 = fmul fast float %3265, 2.000000e+00
  %3267 = fsub fast float %3237, %3255
  %3268 = fsub fast float %3241, %3256
  %3269 = fmul fast float %3266, %3267
  %3270 = fmul fast float %3266, %3268
  %3271 = fdiv fast float 1.000000e+00, %3053
  %3272 = fmul fast float %3270, %3271
  %3273 = call float @dx.op.unary.f32(i32 6, float %3272)  ; FAbs(value)
  %3274 = fmul fast float %3257, %145
  %3275 = fmul fast float %3274, %3266
  %3276 = call float @dx.op.unary.f32(i32 6, float %3275)  ; FAbs(value)
  %3277 = call float @dx.op.unary.f32(i32 6, float %3269)  ; FAbs(value)
  %3278 = call float @dx.op.binary.f32(i32 35, float %3276, float %3273)  ; FMax(a,b)
  %3279 = call float @dx.op.binary.f32(i32 35, float %3277, float %3278)  ; FMax(a,b)
  %3280 = fmul fast float %3279, 2.000000e+00
  %3281 = call float @dx.op.unary.f32(i32 23, float %3280)  ; Log(value)
  %3282 = call float @dx.op.binary.f32(i32 35, float %3281, float %3262)  ; FMax(a,b)
  %3283 = call float @dx.op.unary.f32(i32 22, float %3282)  ; Frc(value)
  %3284 = fadd fast float %3283, 0xBFEA666660000000
  %3285 = fmul fast float %3284, 8.000000e+00
  %3286 = call float @dx.op.unary.f32(i32 7, float %3285)  ; Saturate(value)
  %3287 = call float @dx.op.unary.f32(i32 27, float %3282)  ; Round_ni(value)
  %3288 = fadd fast float %3287, %3286
  %3289 = call float @dx.op.binary.f32(i32 36, float %3288, float %3264)  ; FMin(a,b)
  %3290 = call float @dx.op.unary.f32(i32 27, float %3289)  ; Round_ni(value)
  %3291 = fsub fast float -0.000000e+00, %3290
  %3292 = call float @dx.op.unary.f32(i32 21, float %3291)  ; Exp(value)
  %3293 = fmul fast float %3292, %3266
  %3294 = fmul fast float %3293, %3237
  %3295 = fmul fast float %3293, %3241
  %3296 = fmul fast float %3294, 5.000000e-01
  %3297 = fmul fast float %3295, 5.000000e-01
  %3298 = fadd fast float %3296, 5.000000e-01
  %3299 = fadd fast float %3297, 5.000000e-01
  %3300 = fmul fast float %3294, 2.500000e-01
  %3301 = fmul fast float %3295, 2.500000e-01
  %3302 = fadd fast float %3300, 5.000000e-01
  %3303 = fadd fast float %3301, 5.000000e-01
  %3304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3305 = extractvalue %dx.types.ResRet.i32 %3304, 0
  %3306 = and i32 %3305, 536870911
  %3307 = lshr i32 %3306, 9
  %3308 = uitofp i32 %3307 to float
  %3309 = fmul fast float %3308, %3237
  %3310 = fmul fast float %3308, %3241
  %3311 = call float @dx.op.unary.f32(i32 22, float %3309)  ; Frc(value)
  %3312 = call float @dx.op.unary.f32(i32 22, float %3310)  ; Frc(value)
  %3313 = call float @dx.op.unary.f32(i32 22, float %3286)  ; Frc(value)
  %3314 = fcmp fast une float %3313, 0.000000e+00
  br i1 %3314, label %3315, label %3413, !dx.controlflow.hints !118

; <label>:3315                                    ; preds = %3253
  %3316 = call float @dx.op.unary.f32(i32 21, float %3287)  ; Exp(value)
  %3317 = fmul fast float %3316, 1.953125e-03
  %3318 = fcmp fast olt float %3311, %3317
  %3319 = fcmp fast olt float %3312, %3317
  %3320 = or i1 %3318, %3319
  %3321 = fsub fast float 1.000000e+00, %3317
  %3322 = fcmp fast ogt float %3311, %3321
  %3323 = fcmp fast ogt float %3312, %3321
  %3324 = or i1 %3322, %3323
  %3325 = or i1 %3320, %3324
  br i1 %3325, label %3326, label %3492, !dx.controlflow.hints !119

; <label>:3326                                    ; preds = %3315
  %3327 = fmul fast float %3259, 5.000000e-01
  %3328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3329 = extractvalue %dx.types.CBufRet.i32 %3328, 0
  %3330 = fmul fast float %3241, 3.530000e+02
  %3331 = uitofp i32 %3306 to float
  %3332 = fmul fast float %3330, %3331
  %3333 = fmul fast float %3237, 6.130000e+02
  %3334 = fadd fast float %3332, %3333
  %3335 = fptoui float %3334 to i32
  %3336 = add i32 %3329, %3335
  %3337 = mul i32 %3336, -63
  %3338 = lshr i32 %3337, 17
  %3339 = xor i32 %3338, %3337
  %3340 = mul i32 %3339, -511
  %3341 = mul i32 %3339, -8176
  %3342 = xor i32 %3340, %3341
  %3343 = mul i32 %3342, -7
  %3344 = mul i32 %3342, -7168
  %3345 = xor i32 %3343, %3344
  %3346 = lshr i32 %3345, 15
  %3347 = xor i32 %3346, %3343
  %3348 = and i32 %3347, 15
  %3349 = mul i32 %3348, 2
  %3350 = add i32 0, %3349
  %3351 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3350
  %3352 = load float, float* %3351, align 4
  %3353 = mul i32 %3348, 2
  %3354 = add i32 1, %3353
  %3355 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3354
  %3356 = load float, float* %3355, align 4
  %3357 = fmul fast float %3241, 2.770000e+02
  %3358 = fmul fast float %3357, %3331
  %3359 = fmul fast float %3237, 5.990000e+02
  %3360 = fadd fast float %3358, %3359
  %3361 = fptoui float %3360 to i32
  %3362 = mul i32 %3361, -63
  %3363 = lshr i32 %3362, 17
  %3364 = xor i32 %3363, %3362
  %3365 = mul i32 %3364, -511
  %3366 = mul i32 %3364, -8176
  %3367 = xor i32 %3365, %3366
  %3368 = mul i32 %3367, -7
  %3369 = mul i32 %3367, -7168
  %3370 = xor i32 %3368, %3369
  %3371 = lshr i32 %3370, 15
  %3372 = xor i32 %3371, %3368
  %3373 = and i32 %3372, 63
  %3374 = mul i32 %3373, 2
  %3375 = add i32 0, %3374
  %3376 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3375
  %3377 = load float, float* %3376, align 4
  %3378 = mul i32 %3373, 2
  %3379 = add i32 1, %3378
  %3380 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3379
  %3381 = load float, float* %3380, align 4
  %3382 = call float @dx.op.dot2.f32(i32 54, float %3352, float %3356, float %3377, float %3381)  ; Dot2(ax,ay,bx,by)
  %3383 = fsub fast float -0.000000e+00, %3377
  %3384 = call float @dx.op.dot2.f32(i32 54, float %3352, float %3356, float %3383, float %3381)  ; Dot2(ax,ay,bx,by)
  %3385 = fmul fast float %3382, %3327
  %3386 = fmul fast float %3384, %3327
  %3387 = fdiv fast float 2.000000e+00, %3293
  %3388 = fmul fast float %3316, 9.765625e-04
  %3389 = fcmp fast olt float %3311, %3388
  %3390 = fcmp fast olt float %3312, %3388
  %3391 = or i1 %3389, %3390
  %3392 = fsub fast float 1.000000e+00, %3388
  %3393 = fcmp fast ogt float %3311, %3392
  %3394 = fcmp fast ogt float %3312, %3392
  %3395 = or i1 %3393, %3394
  %3396 = or i1 %3391, %3395
  %3397 = fmul fast float %3385, 2.000000e+00
  br i1 %3396, label %3398, label %3402

; <label>:3398                                    ; preds = %3326
  %3399 = fmul fast float %3386, 2.000000e+00
  %3400 = fadd fast float %3397, %3298
  %3401 = fadd fast float %3399, %3299
  br label %3402

; <label>:3402                                    ; preds = %3398, %3326
  %3403 = phi float [ %3400, %3398 ], [ %3298, %3326 ]
  %3404 = phi float [ %3401, %3398 ], [ %3299, %3326 ]
  %3405 = phi i32 [ 3, %3398 ], [ 2, %3326 ]
  %3406 = fadd fast float %3385, %3302
  %3407 = fadd fast float %3386, %3303
  %3408 = fmul fast float %3397, %3387
  %3409 = fmul fast float %3387, 2.000000e+00
  %3410 = fmul fast float %3409, %3386
  %3411 = fadd fast float %3408, %3237
  %3412 = fadd fast float %3410, %3241
  br label %3492

; <label>:3413                                    ; preds = %3253
  %3414 = call float @dx.op.unary.f32(i32 21, float %3290)  ; Exp(value)
  %3415 = fmul fast float %3414, 9.765625e-04
  %3416 = fcmp fast olt float %3311, %3415
  %3417 = fcmp fast olt float %3312, %3415
  %3418 = or i1 %3416, %3417
  %3419 = fsub fast float 1.000000e+00, %3415
  %3420 = fcmp fast ogt float %3311, %3419
  %3421 = fcmp fast ogt float %3312, %3419
  %3422 = or i1 %3420, %3421
  %3423 = or i1 %3418, %3422
  br i1 %3423, label %3424, label %3492, !dx.controlflow.hints !120

; <label>:3424                                    ; preds = %3413
  %3425 = fmul fast float %3259, 5.000000e-01
  %3426 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3427 = extractvalue %dx.types.CBufRet.i32 %3426, 0
  %3428 = fmul fast float %3241, 3.530000e+02
  %3429 = uitofp i32 %3306 to float
  %3430 = fmul fast float %3428, %3429
  %3431 = fmul fast float %3237, 6.130000e+02
  %3432 = fadd fast float %3430, %3431
  %3433 = fptoui float %3432 to i32
  %3434 = add i32 %3427, %3433
  %3435 = mul i32 %3434, -63
  %3436 = lshr i32 %3435, 17
  %3437 = xor i32 %3436, %3435
  %3438 = mul i32 %3437, -511
  %3439 = mul i32 %3437, -8176
  %3440 = xor i32 %3438, %3439
  %3441 = mul i32 %3440, -7
  %3442 = mul i32 %3440, -7168
  %3443 = xor i32 %3441, %3442
  %3444 = lshr i32 %3443, 15
  %3445 = xor i32 %3444, %3441
  %3446 = and i32 %3445, 15
  %3447 = mul i32 %3446, 2
  %3448 = add i32 0, %3447
  %3449 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3448
  %3450 = load float, float* %3449, align 4
  %3451 = mul i32 %3446, 2
  %3452 = add i32 1, %3451
  %3453 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3452
  %3454 = load float, float* %3453, align 4
  %3455 = fmul fast float %3241, 2.770000e+02
  %3456 = fmul fast float %3455, %3429
  %3457 = fmul fast float %3237, 5.990000e+02
  %3458 = fadd fast float %3456, %3457
  %3459 = fptoui float %3458 to i32
  %3460 = mul i32 %3459, -63
  %3461 = lshr i32 %3460, 17
  %3462 = xor i32 %3461, %3460
  %3463 = mul i32 %3462, -511
  %3464 = mul i32 %3462, -8176
  %3465 = xor i32 %3463, %3464
  %3466 = mul i32 %3465, -7
  %3467 = mul i32 %3465, -7168
  %3468 = xor i32 %3466, %3467
  %3469 = lshr i32 %3468, 15
  %3470 = xor i32 %3469, %3466
  %3471 = and i32 %3470, 63
  %3472 = mul i32 %3471, 2
  %3473 = add i32 0, %3472
  %3474 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3473
  %3475 = load float, float* %3474, align 4
  %3476 = mul i32 %3471, 2
  %3477 = add i32 1, %3476
  %3478 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3477
  %3479 = load float, float* %3478, align 4
  %3480 = call float @dx.op.dot2.f32(i32 54, float %3450, float %3454, float %3475, float %3479)  ; Dot2(ax,ay,bx,by)
  %3481 = fsub fast float -0.000000e+00, %3475
  %3482 = call float @dx.op.dot2.f32(i32 54, float %3450, float %3454, float %3481, float %3479)  ; Dot2(ax,ay,bx,by)
  %3483 = fmul fast float %3480, %3425
  %3484 = fmul fast float %3482, %3425
  %3485 = fadd fast float %3483, %3298
  %3486 = fadd fast float %3484, %3299
  %3487 = fdiv fast float 2.000000e+00, %3293
  %3488 = fmul fast float %3487, %3483
  %3489 = fmul fast float %3484, %3487
  %3490 = fadd fast float %3488, %3237
  %3491 = fadd fast float %3489, %3241
  br label %3492

; <label>:3492                                    ; preds = %3424, %3413, %3402, %3315
  %3493 = phi float [ %3406, %3402 ], [ %3302, %3315 ], [ %3302, %3424 ], [ %3302, %3413 ]
  %3494 = phi float [ %3407, %3402 ], [ %3303, %3315 ], [ %3303, %3424 ], [ %3303, %3413 ]
  %3495 = phi float [ %3403, %3402 ], [ %3298, %3315 ], [ %3485, %3424 ], [ %3298, %3413 ]
  %3496 = phi float [ %3404, %3402 ], [ %3299, %3315 ], [ %3486, %3424 ], [ %3299, %3413 ]
  %3497 = phi i32 [ %3405, %3402 ], [ 0, %3315 ], [ 1, %3424 ], [ 0, %3413 ]
  %3498 = phi float [ %3411, %3402 ], [ %3237, %3315 ], [ %3490, %3424 ], [ %3237, %3413 ]
  %3499 = phi float [ %3412, %3402 ], [ %3241, %3315 ], [ %3491, %3424 ], [ %3241, %3413 ]
  %3500 = fsub fast float %3264, %3262
  %3501 = fptoui float %3500 to i32
  %3502 = add i32 %3501, 320
  %3503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %3502)  ; CBufferLoadLegacy(handle,regIndex)
  %3504 = extractvalue %dx.types.CBufRet.f32 %3503, 0
  %3505 = extractvalue %dx.types.CBufRet.f32 %3503, 1
  %3506 = fcmp fast une float %3289, %3264
  %3507 = fsub fast float %3498, %3504
  %3508 = fsub fast float %3499, %3505
  %3509 = call float @dx.op.unary.f32(i32 6, float %3507)  ; FAbs(value)
  %3510 = call float @dx.op.unary.f32(i32 6, float %3508)  ; FAbs(value)
  %3511 = fmul fast float %3509, %3293
  %3512 = fmul fast float %3510, %3293
  %3513 = fcmp fast olt float %3511, 1.000000e+00
  %3514 = fcmp fast olt float %3512, 1.000000e+00
  %3515 = and i1 %3513, %3514
  %3516 = or i1 %3506, %3515
  br i1 %3516, label %3517, label %3885, !dx.controlflow.hints !121

; <label>:3517                                    ; preds = %3492
  %3518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3519 = extractvalue %dx.types.CBufRet.i32 %3518, 2
  %3520 = sitofp i32 %3519 to float
  %3521 = fsub fast float %3289, %3520
  %3522 = call float @dx.op.unary.f32(i32 27, float %3521)  ; Round_ni(value)
  %3523 = call float @dx.op.unary.f32(i32 22, float %3289)  ; Frc(value)
  %3524 = icmp eq i32 %3497, 0
  %3525 = call float @dx.op.unary.f32(i32 22, float %3495)  ; Frc(value)
  %3526 = call float @dx.op.unary.f32(i32 22, float %3496)  ; Frc(value)
  br i1 %3524, label %3597, label %3527, !dx.controlflow.hints !122

; <label>:3527                                    ; preds = %3517
  %3528 = and i32 %3497, 1
  %3529 = icmp eq i32 %3528, 0
  br i1 %3529, label %3543, label %3530, !dx.controlflow.hints !123

; <label>:3530                                    ; preds = %3527
  %3531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3532 = extractvalue %dx.types.CBufRet.f32 %3531, 0
  %3533 = fmul fast float %3525, %3532
  %3534 = fmul fast float %3526, %3532
  %3535 = fptoui float %3533 to i32
  %3536 = fptoui float %3534 to i32
  %3537 = fptoui float %3522 to i32
  %3538 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %3535, i32 %3536, i32 %3537, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3539 = extractvalue %dx.types.ResRet.f32 %3538, 0
  %3540 = extractvalue %dx.types.ResRet.f32 %3538, 1
  %3541 = extractvalue %dx.types.ResRet.f32 %3538, 2
  %3542 = extractvalue %dx.types.ResRet.f32 %3538, 3
  br label %3549

; <label>:3543                                    ; preds = %3527
  %3544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %57, float %3525, float %3526, float %3522, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3545 = extractvalue %dx.types.ResRet.f32 %3544, 0
  %3546 = extractvalue %dx.types.ResRet.f32 %3544, 1
  %3547 = extractvalue %dx.types.ResRet.f32 %3544, 2
  %3548 = extractvalue %dx.types.ResRet.f32 %3544, 3
  br label %3549

; <label>:3549                                    ; preds = %3543, %3530
  %3550 = phi float [ %3539, %3530 ], [ %3545, %3543 ]
  %3551 = phi float [ %3540, %3530 ], [ %3546, %3543 ]
  %3552 = phi float [ %3541, %3530 ], [ %3547, %3543 ]
  %3553 = phi float [ %3542, %3530 ], [ %3548, %3543 ]
  %3554 = fcmp fast ogt float %3523, 0.000000e+00
  br i1 %3554, label %3555, label %3625

; <label>:3555                                    ; preds = %3549
  %3556 = and i32 %3497, 2
  %3557 = icmp eq i32 %3556, 0
  %3558 = fadd fast float %3522, 1.000000e+00
  %3559 = call float @dx.op.unary.f32(i32 22, float %3493)  ; Frc(value)
  %3560 = call float @dx.op.unary.f32(i32 22, float %3494)  ; Frc(value)
  br i1 %3557, label %3574, label %3561, !dx.controlflow.hints !124

; <label>:3561                                    ; preds = %3555
  %3562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3563 = extractvalue %dx.types.CBufRet.f32 %3562, 0
  %3564 = fmul fast float %3559, %3563
  %3565 = fmul fast float %3560, %3563
  %3566 = fptoui float %3564 to i32
  %3567 = fptoui float %3565 to i32
  %3568 = fptoui float %3558 to i32
  %3569 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %3566, i32 %3567, i32 %3568, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3570 = extractvalue %dx.types.ResRet.f32 %3569, 0
  %3571 = extractvalue %dx.types.ResRet.f32 %3569, 1
  %3572 = extractvalue %dx.types.ResRet.f32 %3569, 2
  %3573 = extractvalue %dx.types.ResRet.f32 %3569, 3
  br label %3580

; <label>:3574                                    ; preds = %3555
  %3575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %57, float %3559, float %3560, float %3558, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3576 = extractvalue %dx.types.ResRet.f32 %3575, 0
  %3577 = extractvalue %dx.types.ResRet.f32 %3575, 1
  %3578 = extractvalue %dx.types.ResRet.f32 %3575, 2
  %3579 = extractvalue %dx.types.ResRet.f32 %3575, 3
  br label %3580

; <label>:3580                                    ; preds = %3574, %3561
  %3581 = phi float [ %3570, %3561 ], [ %3576, %3574 ]
  %3582 = phi float [ %3571, %3561 ], [ %3577, %3574 ]
  %3583 = phi float [ %3572, %3561 ], [ %3578, %3574 ]
  %3584 = phi float [ %3573, %3561 ], [ %3579, %3574 ]
  %3585 = fsub fast float %3581, %3550
  %3586 = fsub fast float %3582, %3551
  %3587 = fsub fast float %3583, %3552
  %3588 = fsub fast float %3584, %3553
  %3589 = fmul fast float %3585, %3523
  %3590 = fmul fast float %3586, %3523
  %3591 = fmul fast float %3587, %3523
  %3592 = fmul fast float %3588, %3523
  %3593 = fadd fast float %3589, %3550
  %3594 = fadd fast float %3590, %3551
  %3595 = fadd fast float %3591, %3552
  %3596 = fadd fast float %3592, %3553
  br label %3625

; <label>:3597                                    ; preds = %3517
  %3598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %57, float %3525, float %3526, float %3522, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3599 = extractvalue %dx.types.ResRet.f32 %3598, 0
  %3600 = extractvalue %dx.types.ResRet.f32 %3598, 1
  %3601 = extractvalue %dx.types.ResRet.f32 %3598, 2
  %3602 = extractvalue %dx.types.ResRet.f32 %3598, 3
  %3603 = fcmp fast ogt float %3523, 0.000000e+00
  br i1 %3603, label %3604, label %3625, !dx.controlflow.hints !125

; <label>:3604                                    ; preds = %3597
  %3605 = fadd fast float %3522, 1.000000e+00
  %3606 = call float @dx.op.unary.f32(i32 22, float %3493)  ; Frc(value)
  %3607 = call float @dx.op.unary.f32(i32 22, float %3494)  ; Frc(value)
  %3608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %57, float %3606, float %3607, float %3605, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.ResRet.f32 %3608, 1
  %3611 = extractvalue %dx.types.ResRet.f32 %3608, 2
  %3612 = extractvalue %dx.types.ResRet.f32 %3608, 3
  %3613 = fsub fast float %3609, %3599
  %3614 = fsub fast float %3610, %3600
  %3615 = fsub fast float %3611, %3601
  %3616 = fsub fast float %3612, %3602
  %3617 = fmul fast float %3613, %3523
  %3618 = fmul fast float %3614, %3523
  %3619 = fmul fast float %3615, %3523
  %3620 = fmul fast float %3616, %3523
  %3621 = fadd fast float %3617, %3599
  %3622 = fadd fast float %3618, %3600
  %3623 = fadd fast float %3619, %3601
  %3624 = fadd fast float %3620, %3602
  br label %3625

; <label>:3625                                    ; preds = %3604, %3597, %3580, %3549
  %3626 = phi float [ %3593, %3580 ], [ %3550, %3549 ], [ %3621, %3604 ], [ %3599, %3597 ]
  %3627 = phi float [ %3594, %3580 ], [ %3551, %3549 ], [ %3622, %3604 ], [ %3600, %3597 ]
  %3628 = phi float [ %3595, %3580 ], [ %3552, %3549 ], [ %3623, %3604 ], [ %3601, %3597 ]
  %3629 = phi float [ %3596, %3580 ], [ %3553, %3549 ], [ %3624, %3604 ], [ %3602, %3597 ]
  %3630 = fadd fast float %3626, -5.000000e-01
  %3631 = fadd fast float %3628, -5.000000e-01
  %3632 = fmul fast float %3630, 0xBFD5555560000000
  %3633 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3631, float %3632)  ; FMad(a,b,c)
  %3634 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3627, float 0.000000e+00)  ; FMad(a,b,c)
  %3635 = fadd fast float %3634, %3629
  %3636 = fmul fast float %3630, -7.500000e-01
  %3637 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3631, float %3636)  ; FMad(a,b,c)
  %3638 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3627, float 0.000000e+00)  ; FMad(a,b,c)
  %3639 = fadd fast float %3638, %3629
  %3640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3641 = extractvalue %dx.types.CBufRet.f32 %3640, 0
  %3642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3643 = extractvalue %dx.types.CBufRet.f32 %3642, 0
  %3644 = extractvalue %dx.types.CBufRet.f32 %3642, 1
  %3645 = extractvalue %dx.types.CBufRet.f32 %3642, 2
  %3646 = extractvalue %dx.types.CBufRet.f32 %3642, 3
  %3647 = fsub fast float %3643, %3633
  %3648 = fsub fast float %3644, %3635
  %3649 = fsub fast float %3645, %3637
  %3650 = fsub fast float %3646, %3639
  %3651 = fmul fast float %3647, %3641
  %3652 = fmul fast float %3648, %3641
  %3653 = fmul fast float %3649, %3641
  %3654 = fmul fast float %3650, %3641
  %3655 = fadd fast float %3651, %3633
  %3656 = fadd fast float %3652, %3635
  %3657 = fadd fast float %3653, %3637
  %3658 = fadd fast float %3654, %3639
  %3659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.i32 %3659, 0
  %3661 = and i32 %3660, 536870911
  %3662 = uitofp i32 %3661 to float
  %3663 = fmul fast float %3662, %3498
  %3664 = fmul fast float %3662, %3499
  %3665 = fptoui float %3663 to i32
  %3666 = fptoui float %3664 to i32
  %3667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.i32 %3667, 0
  %3669 = and i32 %3668, 31
  %3670 = lshr i32 %3665, %3669
  %3671 = lshr i32 %3666, %3669
  %3672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.i32 %3672, 0
  %3674 = and i32 %3673, 31
  %3675 = shl i32 1, %3674
  %3676 = call i32 @dx.op.binary.i32(i32 40, i32 %3675, i32 4)  ; UMin(a,b)
  %3677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.i32 %3677, 0
  %3679 = extractvalue %dx.types.ResRet.i32 %3677, 1
  %3680 = icmp eq i32 %3676, 0
  br i1 %3680, label %3722, label %3681

; <label>:3681                                    ; preds = %3625
  br label %3682

; <label>:3682                                    ; preds = %3710, %3681
  %3683 = phi i32 [ %3713, %3710 ], [ 0, %3681 ]
  %3684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3685 = extractvalue %dx.types.ResRet.i32 %3684, 0
  %3686 = lshr i32 %3685, 16
  %3687 = and i32 %3686, 31
  %3688 = shl i32 %3671, %3687
  %3689 = add i32 %3688, %3670
  %3690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3691 = extractvalue %dx.types.ResRet.i32 %3690, 0
  %3692 = and i32 %3691, 31
  %3693 = shl i32 %3689, %3692
  %3694 = add i32 %3693, %3683
  %3695 = shl i32 %3694, 2
  %3696 = add i32 %3695, 32
  %3697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3696, i32 undef)  ; BufferLoad(srv,index,wot)
  %3698 = extractvalue %dx.types.ResRet.i32 %3697, 0
  %3699 = icmp slt i32 %3698, 0
  %3700 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %3683
  %3701 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %3683
  %3702 = bitcast float* %3700 to i32*
  %3703 = bitcast float* %3701 to i32*
  br i1 %3699, label %3704, label %3710

; <label>:3704                                    ; preds = %3682
  %3705 = and i32 %3698, 1073741823
  %3706 = add nuw nsw i32 %3705, 20
  %3707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3706, i32 undef)  ; BufferLoad(srv,index,wot)
  %3708 = extractvalue %dx.types.ResRet.i32 %3707, 0
  %3709 = extractvalue %dx.types.ResRet.i32 %3707, 1
  br label %3710

; <label>:3710                                    ; preds = %3704, %3682
  %3711 = phi i32 [ %3708, %3704 ], [ %3678, %3682 ]
  %3712 = phi i32 [ %3709, %3704 ], [ %3679, %3682 ]
  store i32 %3711, i32* %3702, align 4
  store i32 %3712, i32* %3703, align 4
  %3713 = add nuw i32 %3683, 1
  %3714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3715 = extractvalue %dx.types.CBufRet.i32 %3714, 2
  %3716 = icmp eq i32 %3715, 0
  %3717 = icmp ugt i32 %3698, -1073741825
  %3718 = and i1 %3717, %3716
  %3719 = icmp ult i32 %3713, %3676
  %3720 = and i1 %3718, %3719
  br i1 %3720, label %3682, label %3721

; <label>:3721                                    ; preds = %3710
  br label %3722

; <label>:3722                                    ; preds = %3721, %3625
  %3723 = phi i32 [ 0, %3625 ], [ %3713, %3721 ]
  %3724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3725 = extractvalue %dx.types.CBufRet.f32 %3724, 2
  %3726 = fptoui float %3725 to i32
  %3727 = icmp eq i32 %3726, 0
  br i1 %3727, label %3779, label %3728

; <label>:3728                                    ; preds = %3722
  br label %3729

; <label>:3729                                    ; preds = %3774, %3728
  %3730 = phi i32 [ %3775, %3774 ], [ %3723, %3728 ]
  %3731 = phi i32 [ %3776, %3774 ], [ 0, %3728 ]
  %3732 = lshr i32 %3731, 2
  %3733 = and i32 %3731, 3
  %3734 = add nuw nsw i32 %3732, 83
  %3735 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 %3734)  ; CBufferLoadLegacy(handle,regIndex)
  %3736 = extractvalue %dx.types.CBufRet.i32 %3735, 0
  %3737 = extractvalue %dx.types.CBufRet.i32 %3735, 1
  %3738 = extractvalue %dx.types.CBufRet.i32 %3735, 2
  %3739 = extractvalue %dx.types.CBufRet.i32 %3735, 3
  %3740 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i32 0, i32 0
  store i32 %3736, i32* %3740, align 4
  %3741 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i32 0, i32 1
  store i32 %3737, i32* %3741, align 4
  %3742 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i32 0, i32 2
  store i32 %3738, i32* %3742, align 4
  %3743 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i32 0, i32 3
  store i32 %3739, i32* %3743, align 4
  %3744 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i32 0, i32 %3733
  %3745 = load i32, i32* %3744, align 4, !tbaa !126, !noalias !128
  %3746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3747 = extractvalue %dx.types.ResRet.i32 %3746, 0
  %3748 = lshr i32 %3747, 16
  %3749 = and i32 %3748, 31
  %3750 = shl i32 %3671, %3749
  %3751 = add i32 %3750, %3670
  %3752 = shl i32 %3751, 2
  %3753 = add i32 %3752, %3745
  %3754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3753, i32 undef)  ; BufferLoad(srv,index,wot)
  %3755 = extractvalue %dx.types.ResRet.i32 %3754, 0
  %3756 = icmp eq i32 %3755, 0
  br i1 %3756, label %3774, label %3757

; <label>:3757                                    ; preds = %3729
  %3758 = icmp slt i32 %3755, 0
  %3759 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %3730
  %3760 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %3730
  %3761 = bitcast float* %3759 to i32*
  %3762 = bitcast float* %3760 to i32*
  br i1 %3758, label %3763, label %3770

; <label>:3763                                    ; preds = %3757
  %3764 = and i32 %3755, 1073741823
  %3765 = add i32 %3745, 20
  %3766 = add i32 %3765, %3764
  %3767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3766, i32 undef)  ; BufferLoad(srv,index,wot)
  %3768 = extractvalue %dx.types.ResRet.i32 %3767, 0
  %3769 = extractvalue %dx.types.ResRet.i32 %3767, 1
  br label %3770

; <label>:3770                                    ; preds = %3763, %3757
  %3771 = phi i32 [ %3768, %3763 ], [ %3678, %3757 ]
  %3772 = phi i32 [ %3769, %3763 ], [ %3679, %3757 ]
  store i32 %3771, i32* %3761, align 4
  store i32 %3772, i32* %3762, align 4
  %3773 = add i32 %3730, 1
  br label %3774

; <label>:3774                                    ; preds = %3770, %3729
  %3775 = phi i32 [ %3730, %3729 ], [ %3773, %3770 ]
  %3776 = add nuw i32 %3731, 1
  %3777 = icmp eq i32 %3776, %3726
  br i1 %3777, label %3778, label %3729

; <label>:3778                                    ; preds = %3774
  br label %3779

; <label>:3779                                    ; preds = %3778, %3722
  %3780 = phi i32 [ %3723, %3722 ], [ %3775, %3778 ]
  %3781 = icmp eq i32 %3780, 1
  %3782 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 0
  %3783 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 0
  br i1 %3781, label %3784, label %3787

; <label>:3784                                    ; preds = %3779
  %3785 = load float, float* %3782, align 4
  %3786 = load float, float* %3783, align 4
  br label %3814

; <label>:3787                                    ; preds = %3779
  %3788 = load float, float* %3782, align 4
  %3789 = load float, float* %3783, align 4
  %3790 = fdiv fast float 1.000000e+00, %3789
  %3791 = fsub fast float %3788, %3790
  %3792 = icmp ugt i32 %3780, 1
  br i1 %3792, label %3793, label %3809

; <label>:3793                                    ; preds = %3787
  br label %3794

; <label>:3794                                    ; preds = %3794, %3793
  %3795 = phi float [ %3804, %3794 ], [ %3791, %3793 ]
  %3796 = phi float [ %3805, %3794 ], [ %3788, %3793 ]
  %3797 = phi i32 [ %3806, %3794 ], [ 1, %3793 ]
  %3798 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %3797
  %3799 = load float, float* %3798, align 4
  %3800 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %3797
  %3801 = load float, float* %3800, align 4
  %3802 = fdiv fast float 1.000000e+00, %3801
  %3803 = fsub fast float %3799, %3802
  %3804 = call float @dx.op.binary.f32(i32 36, float %3795, float %3803)  ; FMin(a,b)
  %3805 = call float @dx.op.binary.f32(i32 35, float %3796, float %3799)  ; FMax(a,b)
  %3806 = add nuw i32 %3797, 1
  %3807 = icmp eq i32 %3806, %3780
  br i1 %3807, label %3808, label %3794

; <label>:3808                                    ; preds = %3794
  br label %3809

; <label>:3809                                    ; preds = %3808, %3787
  %3810 = phi float [ %3791, %3787 ], [ %3804, %3808 ]
  %3811 = phi float [ %3788, %3787 ], [ %3805, %3808 ]
  %3812 = fsub fast float %3811, %3810
  %3813 = fdiv fast float 1.000000e+00, %3812
  br label %3814

; <label>:3814                                    ; preds = %3809, %3784
  %3815 = phi float [ %3785, %3784 ], [ %3811, %3809 ]
  %3816 = phi float [ %3786, %3784 ], [ %3813, %3809 ]
  %3817 = fadd fast float %3245, %3815
  %3818 = fmul fast float %3817, %3816
  %3819 = call float @dx.op.unary.f32(i32 7, float %3818)  ; Saturate(value)
  %3820 = fmul fast float %3819, 2.000000e+00
  %3821 = fsub fast float 1.000000e+00, %3820
  %3822 = fmul fast float %3655, %3655
  %3823 = fsub fast float %3656, %3822
  %3824 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3823)  ; FMax(a,b)
  %3825 = fdiv fast float 1.000000e+00, %3824
  %3826 = fmul fast float %3656, %3655
  %3827 = fsub fast float %3657, %3826
  %3828 = fsub fast float %3821, %3655
  %3829 = fmul fast float %3821, %3821
  %3830 = fsub fast float %3829, %3656
  %3831 = fmul fast float %3825, %3827
  %3832 = fmul fast float %3831, %3828
  %3833 = fsub fast float %3830, %3832
  %3834 = fmul fast float %3656, %3656
  %3835 = fsub fast float %3658, %3834
  %3836 = fmul fast float %3827, %3827
  %3837 = fmul fast float %3836, %3825
  %3838 = fsub fast float %3835, %3837
  %3839 = fdiv fast float %3833, %3838
  %3840 = fmul fast float %3839, %3827
  %3841 = fsub fast float %3828, %3840
  %3842 = fmul fast float %3841, %3825
  %3843 = fmul fast float %3842, %3655
  %3844 = fsub fast float 1.000000e+00, %3843
  %3845 = fmul fast float %3839, %3656
  %3846 = fsub fast float %3844, %3845
  %3847 = fmul fast float %3842, %3842
  %3848 = fmul fast float %3839, 4.000000e+00
  %3849 = fmul fast float %3848, %3846
  %3850 = fsub fast float %3847, %3849
  %3851 = call float @dx.op.unary.f32(i32 24, float %3850)  ; Sqrt(value)
  %3852 = fcmp fast oge float %3842, 0.000000e+00
  %3853 = fsub fast float -0.000000e+00, %3851
  %3854 = select i1 %3852, float %3853, float %3851
  %3855 = fsub fast float %3854, %3842
  %3856 = fdiv fast float %3855, %3839
  %3857 = fdiv fast float %3846, %3855
  %3858 = fmul fast float %3856, 5.000000e-01
  %3859 = fmul fast float %3857, 2.000000e+00
  %3860 = select i1 %3852, float %3858, float %3859
  %3861 = select i1 %3852, float %3859, float %3858
  %3862 = call float @dx.op.binary.f32(i32 35, float %3860, float %3861)  ; FMax(a,b)
  %3863 = call float @dx.op.binary.f32(i32 36, float %3860, float %3861)  ; FMin(a,b)
  %3864 = fcmp fast ogt float %3821, %3862
  %3865 = fsub fast float %3821, %3863
  %3866 = fsub fast float %3821, %3862
  %3867 = fsub fast float %3862, %3863
  %3868 = select i1 %3864, float %3866, float %3867
  %3869 = fmul float %3865, %3868
  %3870 = select i1 %3864, float %3863, float %3821
  %3871 = fcmp fast ogt float %3821, %3863
  %3872 = fmul fast float %3870, %3862
  %3873 = fadd fast float %3870, %3862
  %3874 = fmul fast float %3873, %3655
  %3875 = fadd fast float %3872, %3656
  %3876 = fsub fast float %3875, %3874
  %3877 = fdiv fast float %3876, %3869
  %3878 = select i1 %3871, float %3877, float 0.000000e+00
  %3879 = fsub fast float 1.000000e+00, %3878
  %3880 = select i1 %3864, float %3879, float %3878
  %3881 = call float @dx.op.unary.f32(i32 7, float %3880)  ; Saturate(value)
  %3882 = extractvalue %dx.types.CBufRet.f32 %3640, 3
  %3883 = fmul fast float %3882, %3881
  %3884 = fsub fast float 1.000000e+00, %3883
  br label %3885

; <label>:3885                                    ; preds = %3814, %3492, %3218, %3214, %3178
  %3886 = phi float [ 1.000000e+00, %3178 ], [ %3884, %3814 ], [ 1.000000e+00, %3218 ], [ 1.000000e+00, %3492 ], [ 1.000000e+00, %3214 ]
  %3887 = fcmp fast ogt float %3210, 0.000000e+00
  br i1 %3887, label %3888, label %4052, !dx.controlflow.hints !137

; <label>:3888                                    ; preds = %3885
  %3889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3890 = extractvalue %dx.types.CBufRet.f32 %3889, 2
  %3891 = fadd fast float %3890, %3093
  %3892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3893 = extractvalue %dx.types.CBufRet.f32 %3892, 2
  %3894 = extractvalue %dx.types.CBufRet.f32 %3892, 3
  %3895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3896 = extractvalue %dx.types.CBufRet.f32 %3895, 2
  %3897 = call float @dx.op.binary.f32(i32 35, float %3891, float 0.000000e+00)  ; FMax(a,b)
  %3898 = fadd fast float %3897, 0x3F10000000000000
  %3899 = fcmp fast oeq float %3896, 0.000000e+00
  br i1 %3899, label %3900, label %3967

; <label>:3900                                    ; preds = %3888
  %3901 = extractvalue %dx.types.CBufRet.f32 %3892, 1
  %3902 = extractvalue %dx.types.CBufRet.f32 %3892, 0
  %3903 = fmul fast float %3902, %3108
  %3904 = fmul fast float %3901, %3109
  %3905 = fadd fast float %3903, 5.000000e-01
  %3906 = call float @dx.op.unary.f32(i32 27, float %3905)  ; Round_ni(value)
  %3907 = fadd fast float %3904, 5.000000e-01
  %3908 = call float @dx.op.unary.f32(i32 27, float %3907)  ; Round_ni(value)
  %3909 = fsub fast float %3905, %3906
  %3910 = fsub fast float %3907, %3908
  %3911 = fadd fast float %3906, -5.000000e-01
  %3912 = fadd fast float %3908, -5.000000e-01
  %3913 = fmul fast float %3909, 2.000000e+00
  %3914 = fsub fast float 3.000000e+00, %3913
  %3915 = fadd fast float %3913, 1.000000e+00
  %3916 = fsub fast float 2.000000e+00, %3909
  %3917 = bitcast float %3914 to i32
  %3918 = sub nsw i32 2129859010, %3917
  %3919 = bitcast i32 %3918 to float
  %3920 = fmul fast float %3919, %3916
  %3921 = fadd fast float %3920, -1.000000e+00
  %3922 = bitcast float %3915 to i32
  %3923 = sub nsw i32 2129859010, %3922
  %3924 = bitcast i32 %3923 to float
  %3925 = fmul fast float %3924, %3909
  %3926 = fadd fast float %3925, 1.000000e+00
  %3927 = fmul fast float %3910, 2.000000e+00
  %3928 = fsub fast float 3.000000e+00, %3927
  %3929 = fadd fast float %3927, 1.000000e+00
  %3930 = fsub fast float 2.000000e+00, %3910
  %3931 = bitcast float %3928 to i32
  %3932 = sub nsw i32 2129859010, %3931
  %3933 = bitcast i32 %3932 to float
  %3934 = fmul fast float %3933, %3930
  %3935 = fadd fast float %3934, -1.000000e+00
  %3936 = bitcast float %3929 to i32
  %3937 = sub nsw i32 2129859010, %3936
  %3938 = bitcast i32 %3937 to float
  %3939 = fmul fast float %3938, %3910
  %3940 = fadd fast float %3939, 1.000000e+00
  %3941 = fadd fast float %3921, %3911
  %3942 = fmul fast float %3941, %3893
  %3943 = fadd fast float %3935, %3912
  %3944 = fmul fast float %3943, %3894
  %3945 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %60, float %3942, float %3944, float undef, float undef, i32 0, i32 0, i32 undef, float %3898)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3946 = extractvalue %dx.types.ResRet.f32 %3945, 0
  %3947 = fmul fast float %3946, %3914
  %3948 = fadd fast float %3926, %3911
  %3949 = fmul fast float %3948, %3893
  %3950 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %60, float %3949, float %3944, float undef, float undef, i32 0, i32 0, i32 undef, float %3898)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3951 = extractvalue %dx.types.ResRet.f32 %3950, 0
  %3952 = fmul fast float %3951, %3915
  %3953 = fadd fast float %3940, %3912
  %3954 = fmul fast float %3953, %3894
  %3955 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %60, float %3942, float %3954, float undef, float undef, i32 0, i32 0, i32 undef, float %3898)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3956 = extractvalue %dx.types.ResRet.f32 %3955, 0
  %3957 = fmul fast float %3956, %3914
  %3958 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %60, float %3949, float %3954, float undef, float undef, i32 0, i32 0, i32 undef, float %3898)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3959 = extractvalue %dx.types.ResRet.f32 %3958, 0
  %3960 = fmul fast float %3959, %3915
  %3961 = fadd fast float %3960, %3957
  %3962 = fmul fast float %3961, %3929
  %3963 = fadd fast float %3952, %3947
  %3964 = fmul fast float %3963, %3928
  %3965 = fadd fast float %3964, %3962
  %3966 = fmul fast float %3965, 6.250000e-02
  br label %4052

; <label>:3967                                    ; preds = %3888
  %3968 = fmul fast float %799, 0x401921FB60000000
  %3969 = call float @dx.op.unary.f32(i32 13, float %3968)  ; Sin(value)
  %3970 = call float @dx.op.unary.f32(i32 12, float %3968)  ; Cos(value)
  %3971 = fsub fast float -0.000000e+00, %3969
  br label %3972

; <label>:3972                                    ; preds = %4021, %3967
  %3973 = phi float [ 0.000000e+00, %3967 ], [ %4016, %4021 ]
  %3974 = phi float [ 0.000000e+00, %3967 ], [ %4018, %4021 ]
  %3975 = phi i32 [ 0, %3967 ], [ %4022, %4021 ]
  %3976 = mul i32 %3975, 2
  %3977 = add i32 0, %3976
  %3978 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3977
  %3979 = load float, float* %3978, align 4
  %3980 = mul i32 %3975, 2
  %3981 = add i32 1, %3980
  %3982 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3981
  %3983 = load float, float* %3982, align 4
  %3984 = fmul fast float %3979, %3970
  %3985 = call float @dx.op.tertiary.f32(i32 46, float %3983, float %3971, float %3984)  ; FMad(a,b,c)
  %3986 = fmul fast float %3979, %3969
  %3987 = call float @dx.op.tertiary.f32(i32 46, float %3983, float %3970, float %3986)  ; FMad(a,b,c)
  %3988 = fmul fast float %3985, %3896
  %3989 = fmul fast float %3987, %3896
  %3990 = fadd fast float %3988, %3108
  %3991 = fadd fast float %3989, %3109
  %3992 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %59, float %3990, float %3991, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3993 = extractvalue %dx.types.ResRet.f32 %3992, 0
  %3994 = extractvalue %dx.types.ResRet.f32 %3992, 1
  %3995 = extractvalue %dx.types.ResRet.f32 %3992, 2
  %3996 = extractvalue %dx.types.ResRet.f32 %3992, 3
  %3997 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 0
  store float %3993, float* %3997, align 4
  %3998 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 1
  store float %3994, float* %3998, align 4
  %3999 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 2
  store float %3995, float* %3999, align 4
  %4000 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 3
  store float %3996, float* %4000, align 4
  %4001 = fsub fast float %3993, %3898
  %4002 = fcmp fast olt float %4001, 0.000000e+00
  %4003 = select i1 %4002, float 0.000000e+00, float 1.000000e+00
  %4004 = fadd fast float %4003, %3973
  %4005 = fmul fast float %4003, %4001
  %4006 = fadd fast float %4005, %3974
  br label %4007

; <label>:4007                                    ; preds = %4007, %3972
  %4008 = phi i32 [ 1, %3972 ], [ %4019, %4007 ]
  %4009 = phi float [ %4006, %3972 ], [ %4018, %4007 ]
  %4010 = phi float [ %4004, %3972 ], [ %4016, %4007 ]
  %4011 = getelementptr [4 x float], [4 x float]* %85, i32 0, i32 %4008
  %4012 = load float, float* %4011, align 4, !tbaa !99, !noalias !128
  %4013 = fsub fast float %4012, %3898
  %4014 = fcmp fast olt float %4013, 0.000000e+00
  %4015 = select i1 %4014, float 0.000000e+00, float 1.000000e+00
  %4016 = fadd fast float %4015, %4010
  %4017 = fmul fast float %4015, %4013
  %4018 = fadd fast float %4017, %4009
  %4019 = add nuw nsw i32 %4008, 1
  %4020 = icmp eq i32 %4019, 4
  br i1 %4020, label %4021, label %4007, !llvm.loop !138

; <label>:4021                                    ; preds = %4007
  %4022 = add nuw nsw i32 %3975, 1
  %4023 = icmp eq i32 %4022, 8
  br i1 %4023, label %4024, label %3972, !llvm.loop !139

; <label>:4024                                    ; preds = %4021
  %4025 = fdiv fast float 1.000000e+00, %4016
  %4026 = fmul fast float %4025, %4018
  %4027 = fdiv fast float 1.000000e+00, %3898
  %4028 = fmul fast float %4026, %4027
  %4029 = call float @dx.op.unary.f32(i32 7, float %4028)  ; Saturate(value)
  %4030 = call float @dx.op.binary.f32(i32 35, float %4029, float 0.000000e+00)  ; FMax(a,b)
  %4031 = fmul fast float %4016, 3.125000e-02
  %4032 = call float @dx.op.unary.f32(i32 7, float %4031)  ; Saturate(value)
  %4033 = fmul fast float %4032, 2.000000e+00
  %4034 = fadd fast float %4033, -1.000000e+00
  %4035 = fcmp fast ogt float %4034, 0.000000e+00
  %4036 = fcmp fast olt float %4034, 0.000000e+00
  %4037 = zext i1 %4035 to i32
  %4038 = zext i1 %4036 to i32
  %4039 = sub nsw i32 %4037, %4038
  %4040 = sitofp i32 %4039 to float
  %4041 = fmul fast float %4040, %4034
  %4042 = fsub fast float 1.000000e+00, %4041
  %4043 = fmul fast float %4042, %4042
  %4044 = fmul fast float %4043, %4042
  %4045 = fsub fast float %4042, %4044
  %4046 = fmul fast float %4045, %4030
  %4047 = fsub fast float 1.000000e+00, %4044
  %4048 = fsub fast float %4047, %4046
  %4049 = fmul fast float %4040, 5.000000e-01
  %4050 = fmul fast float %4049, %4048
  %4051 = fsub fast float 5.000000e-01, %4050
  br label %4052

; <label>:4052                                    ; preds = %4024, %3900, %3885
  %4053 = phi float [ 1.000000e+00, %3885 ], [ %3966, %3900 ], [ %4051, %4024 ]
  %4054 = fcmp fast ogt float %3208, 0.000000e+00
  br i1 %4054, label %4055, label %4219, !dx.controlflow.hints !140

; <label>:4055                                    ; preds = %4052
  %4056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4057 = extractvalue %dx.types.CBufRet.f32 %4056, 1
  %4058 = fadd fast float %4057, %3093
  %4059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4060 = extractvalue %dx.types.CBufRet.f32 %4059, 2
  %4061 = extractvalue %dx.types.CBufRet.f32 %4059, 3
  %4062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4063 = extractvalue %dx.types.CBufRet.f32 %4062, 1
  %4064 = call float @dx.op.binary.f32(i32 35, float %4058, float 0.000000e+00)  ; FMax(a,b)
  %4065 = fadd fast float %4064, 0x3F10000000000000
  %4066 = fcmp fast oeq float %4063, 0.000000e+00
  br i1 %4066, label %4067, label %4134

; <label>:4067                                    ; preds = %4055
  %4068 = extractvalue %dx.types.CBufRet.f32 %4059, 1
  %4069 = extractvalue %dx.types.CBufRet.f32 %4059, 0
  %4070 = fmul fast float %4069, %3100
  %4071 = fmul fast float %4068, %3101
  %4072 = fadd fast float %4070, 5.000000e-01
  %4073 = call float @dx.op.unary.f32(i32 27, float %4072)  ; Round_ni(value)
  %4074 = fadd fast float %4071, 5.000000e-01
  %4075 = call float @dx.op.unary.f32(i32 27, float %4074)  ; Round_ni(value)
  %4076 = fsub fast float %4072, %4073
  %4077 = fsub fast float %4074, %4075
  %4078 = fadd fast float %4073, -5.000000e-01
  %4079 = fadd fast float %4075, -5.000000e-01
  %4080 = fmul fast float %4076, 2.000000e+00
  %4081 = fsub fast float 3.000000e+00, %4080
  %4082 = fadd fast float %4080, 1.000000e+00
  %4083 = fsub fast float 2.000000e+00, %4076
  %4084 = bitcast float %4081 to i32
  %4085 = sub nsw i32 2129859010, %4084
  %4086 = bitcast i32 %4085 to float
  %4087 = fmul fast float %4086, %4083
  %4088 = fadd fast float %4087, -1.000000e+00
  %4089 = bitcast float %4082 to i32
  %4090 = sub nsw i32 2129859010, %4089
  %4091 = bitcast i32 %4090 to float
  %4092 = fmul fast float %4091, %4076
  %4093 = fadd fast float %4092, 1.000000e+00
  %4094 = fmul fast float %4077, 2.000000e+00
  %4095 = fsub fast float 3.000000e+00, %4094
  %4096 = fadd fast float %4094, 1.000000e+00
  %4097 = fsub fast float 2.000000e+00, %4077
  %4098 = bitcast float %4095 to i32
  %4099 = sub nsw i32 2129859010, %4098
  %4100 = bitcast i32 %4099 to float
  %4101 = fmul fast float %4100, %4097
  %4102 = fadd fast float %4101, -1.000000e+00
  %4103 = bitcast float %4096 to i32
  %4104 = sub nsw i32 2129859010, %4103
  %4105 = bitcast i32 %4104 to float
  %4106 = fmul fast float %4105, %4077
  %4107 = fadd fast float %4106, 1.000000e+00
  %4108 = fadd fast float %4088, %4078
  %4109 = fmul fast float %4108, %4060
  %4110 = fadd fast float %4102, %4079
  %4111 = fmul fast float %4110, %4061
  %4112 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %4109, float %4111, float undef, float undef, i32 0, i32 0, i32 undef, float %4065)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4114 = fmul fast float %4113, %4081
  %4115 = fadd fast float %4093, %4078
  %4116 = fmul fast float %4115, %4060
  %4117 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %4116, float %4111, float undef, float undef, i32 0, i32 0, i32 undef, float %4065)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4118 = extractvalue %dx.types.ResRet.f32 %4117, 0
  %4119 = fmul fast float %4118, %4082
  %4120 = fadd fast float %4107, %4079
  %4121 = fmul fast float %4120, %4061
  %4122 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %4109, float %4121, float undef, float undef, i32 0, i32 0, i32 undef, float %4065)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4123 = extractvalue %dx.types.ResRet.f32 %4122, 0
  %4124 = fmul fast float %4123, %4081
  %4125 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %4116, float %4121, float undef, float undef, i32 0, i32 0, i32 undef, float %4065)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4126 = extractvalue %dx.types.ResRet.f32 %4125, 0
  %4127 = fmul fast float %4126, %4082
  %4128 = fadd fast float %4127, %4124
  %4129 = fmul fast float %4128, %4096
  %4130 = fadd fast float %4119, %4114
  %4131 = fmul fast float %4130, %4095
  %4132 = fadd fast float %4131, %4129
  %4133 = fmul fast float %4132, 6.250000e-02
  br label %4219

; <label>:4134                                    ; preds = %4055
  %4135 = fmul fast float %799, 0x401921FB60000000
  %4136 = call float @dx.op.unary.f32(i32 13, float %4135)  ; Sin(value)
  %4137 = call float @dx.op.unary.f32(i32 12, float %4135)  ; Cos(value)
  %4138 = fsub fast float -0.000000e+00, %4136
  br label %4139

; <label>:4139                                    ; preds = %4188, %4134
  %4140 = phi float [ 0.000000e+00, %4134 ], [ %4183, %4188 ]
  %4141 = phi float [ 0.000000e+00, %4134 ], [ %4185, %4188 ]
  %4142 = phi i32 [ 0, %4134 ], [ %4189, %4188 ]
  %4143 = mul i32 %4142, 2
  %4144 = add i32 0, %4143
  %4145 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4144
  %4146 = load float, float* %4145, align 4
  %4147 = mul i32 %4142, 2
  %4148 = add i32 1, %4147
  %4149 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4148
  %4150 = load float, float* %4149, align 4
  %4151 = fmul fast float %4146, %4137
  %4152 = call float @dx.op.tertiary.f32(i32 46, float %4150, float %4138, float %4151)  ; FMad(a,b,c)
  %4153 = fmul fast float %4146, %4136
  %4154 = call float @dx.op.tertiary.f32(i32 46, float %4150, float %4137, float %4153)  ; FMad(a,b,c)
  %4155 = fmul fast float %4152, %4063
  %4156 = fmul fast float %4154, %4063
  %4157 = fadd fast float %4155, %3100
  %4158 = fadd fast float %4156, %3101
  %4159 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %59, float %4157, float %4158, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4160 = extractvalue %dx.types.ResRet.f32 %4159, 0
  %4161 = extractvalue %dx.types.ResRet.f32 %4159, 1
  %4162 = extractvalue %dx.types.ResRet.f32 %4159, 2
  %4163 = extractvalue %dx.types.ResRet.f32 %4159, 3
  %4164 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 0
  store float %4160, float* %4164, align 4
  %4165 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 1
  store float %4161, float* %4165, align 4
  %4166 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 2
  store float %4162, float* %4166, align 4
  %4167 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 3
  store float %4163, float* %4167, align 4
  %4168 = fsub fast float %4160, %4065
  %4169 = fcmp fast olt float %4168, 0.000000e+00
  %4170 = select i1 %4169, float 0.000000e+00, float 1.000000e+00
  %4171 = fadd fast float %4170, %4140
  %4172 = fmul fast float %4170, %4168
  %4173 = fadd fast float %4172, %4141
  br label %4174

; <label>:4174                                    ; preds = %4174, %4139
  %4175 = phi i32 [ 1, %4139 ], [ %4186, %4174 ]
  %4176 = phi float [ %4173, %4139 ], [ %4185, %4174 ]
  %4177 = phi float [ %4171, %4139 ], [ %4183, %4174 ]
  %4178 = getelementptr [4 x float], [4 x float]* %84, i32 0, i32 %4175
  %4179 = load float, float* %4178, align 4, !tbaa !99, !noalias !128
  %4180 = fsub fast float %4179, %4065
  %4181 = fcmp fast olt float %4180, 0.000000e+00
  %4182 = select i1 %4181, float 0.000000e+00, float 1.000000e+00
  %4183 = fadd fast float %4182, %4177
  %4184 = fmul fast float %4182, %4180
  %4185 = fadd fast float %4184, %4176
  %4186 = add nuw nsw i32 %4175, 1
  %4187 = icmp eq i32 %4186, 4
  br i1 %4187, label %4188, label %4174, !llvm.loop !138

; <label>:4188                                    ; preds = %4174
  %4189 = add nuw nsw i32 %4142, 1
  %4190 = icmp eq i32 %4189, 8
  br i1 %4190, label %4191, label %4139, !llvm.loop !139

; <label>:4191                                    ; preds = %4188
  %4192 = fdiv fast float 1.000000e+00, %4183
  %4193 = fmul fast float %4192, %4185
  %4194 = fdiv fast float 1.000000e+00, %4065
  %4195 = fmul fast float %4193, %4194
  %4196 = call float @dx.op.unary.f32(i32 7, float %4195)  ; Saturate(value)
  %4197 = call float @dx.op.binary.f32(i32 35, float %4196, float 0.000000e+00)  ; FMax(a,b)
  %4198 = fmul fast float %4183, 3.125000e-02
  %4199 = call float @dx.op.unary.f32(i32 7, float %4198)  ; Saturate(value)
  %4200 = fmul fast float %4199, 2.000000e+00
  %4201 = fadd fast float %4200, -1.000000e+00
  %4202 = fcmp fast ogt float %4201, 0.000000e+00
  %4203 = fcmp fast olt float %4201, 0.000000e+00
  %4204 = zext i1 %4202 to i32
  %4205 = zext i1 %4203 to i32
  %4206 = sub nsw i32 %4204, %4205
  %4207 = sitofp i32 %4206 to float
  %4208 = fmul fast float %4207, %4201
  %4209 = fsub fast float 1.000000e+00, %4208
  %4210 = fmul fast float %4209, %4209
  %4211 = fmul fast float %4210, %4209
  %4212 = fsub fast float %4209, %4211
  %4213 = fmul fast float %4212, %4197
  %4214 = fsub fast float 1.000000e+00, %4211
  %4215 = fsub fast float %4214, %4213
  %4216 = fmul fast float %4207, 5.000000e-01
  %4217 = fmul fast float %4216, %4215
  %4218 = fsub fast float 5.000000e-01, %4217
  br label %4219

; <label>:4219                                    ; preds = %4191, %4067, %4052
  %4220 = phi float [ 1.000000e+00, %4052 ], [ %4133, %4067 ], [ %4218, %4191 ]
  %4221 = fcmp fast ogt float %3207, 0.000000e+00
  br i1 %4221, label %4222, label %4386, !dx.controlflow.hints !141

; <label>:4222                                    ; preds = %4219
  %4223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4224 = extractvalue %dx.types.CBufRet.f32 %4223, 0
  %4225 = fadd fast float %4224, %3093
  %4226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4227 = extractvalue %dx.types.CBufRet.f32 %4226, 2
  %4228 = extractvalue %dx.types.CBufRet.f32 %4226, 3
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 0
  %4231 = call float @dx.op.binary.f32(i32 35, float %4225, float 0.000000e+00)  ; FMax(a,b)
  %4232 = fadd fast float %4231, 0x3F10000000000000
  %4233 = fcmp fast oeq float %4230, 0.000000e+00
  br i1 %4233, label %4234, label %4301

; <label>:4234                                    ; preds = %4222
  %4235 = extractvalue %dx.types.CBufRet.f32 %4226, 1
  %4236 = extractvalue %dx.types.CBufRet.f32 %4226, 0
  %4237 = fmul fast float %4236, %3085
  %4238 = fmul fast float %4235, %3089
  %4239 = fadd fast float %4237, 5.000000e-01
  %4240 = call float @dx.op.unary.f32(i32 27, float %4239)  ; Round_ni(value)
  %4241 = fadd fast float %4238, 5.000000e-01
  %4242 = call float @dx.op.unary.f32(i32 27, float %4241)  ; Round_ni(value)
  %4243 = fsub fast float %4239, %4240
  %4244 = fsub fast float %4241, %4242
  %4245 = fadd fast float %4240, -5.000000e-01
  %4246 = fadd fast float %4242, -5.000000e-01
  %4247 = fmul fast float %4243, 2.000000e+00
  %4248 = fsub fast float 3.000000e+00, %4247
  %4249 = fadd fast float %4247, 1.000000e+00
  %4250 = fsub fast float 2.000000e+00, %4243
  %4251 = bitcast float %4248 to i32
  %4252 = sub nsw i32 2129859010, %4251
  %4253 = bitcast i32 %4252 to float
  %4254 = fmul fast float %4253, %4250
  %4255 = fadd fast float %4254, -1.000000e+00
  %4256 = bitcast float %4249 to i32
  %4257 = sub nsw i32 2129859010, %4256
  %4258 = bitcast i32 %4257 to float
  %4259 = fmul fast float %4258, %4243
  %4260 = fadd fast float %4259, 1.000000e+00
  %4261 = fmul fast float %4244, 2.000000e+00
  %4262 = fsub fast float 3.000000e+00, %4261
  %4263 = fadd fast float %4261, 1.000000e+00
  %4264 = fsub fast float 2.000000e+00, %4244
  %4265 = bitcast float %4262 to i32
  %4266 = sub nsw i32 2129859010, %4265
  %4267 = bitcast i32 %4266 to float
  %4268 = fmul fast float %4267, %4264
  %4269 = fadd fast float %4268, -1.000000e+00
  %4270 = bitcast float %4263 to i32
  %4271 = sub nsw i32 2129859010, %4270
  %4272 = bitcast i32 %4271 to float
  %4273 = fmul fast float %4272, %4244
  %4274 = fadd fast float %4273, 1.000000e+00
  %4275 = fadd fast float %4255, %4245
  %4276 = fmul fast float %4275, %4227
  %4277 = fadd fast float %4269, %4246
  %4278 = fmul fast float %4277, %4228
  %4279 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %4276, float %4278, float undef, float undef, i32 0, i32 0, i32 undef, float %4232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4280 = extractvalue %dx.types.ResRet.f32 %4279, 0
  %4281 = fmul fast float %4280, %4248
  %4282 = fadd fast float %4260, %4245
  %4283 = fmul fast float %4282, %4227
  %4284 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %4283, float %4278, float undef, float undef, i32 0, i32 0, i32 undef, float %4232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4285 = extractvalue %dx.types.ResRet.f32 %4284, 0
  %4286 = fmul fast float %4285, %4249
  %4287 = fadd fast float %4274, %4246
  %4288 = fmul fast float %4287, %4228
  %4289 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %4276, float %4288, float undef, float undef, i32 0, i32 0, i32 undef, float %4232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4290 = extractvalue %dx.types.ResRet.f32 %4289, 0
  %4291 = fmul fast float %4290, %4248
  %4292 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %4283, float %4288, float undef, float undef, i32 0, i32 0, i32 undef, float %4232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4293 = extractvalue %dx.types.ResRet.f32 %4292, 0
  %4294 = fmul fast float %4293, %4249
  %4295 = fadd fast float %4294, %4291
  %4296 = fmul fast float %4295, %4263
  %4297 = fadd fast float %4286, %4281
  %4298 = fmul fast float %4297, %4262
  %4299 = fadd fast float %4298, %4296
  %4300 = fmul fast float %4299, 6.250000e-02
  br label %4386

; <label>:4301                                    ; preds = %4222
  %4302 = fmul fast float %799, 0x401921FB60000000
  %4303 = call float @dx.op.unary.f32(i32 13, float %4302)  ; Sin(value)
  %4304 = call float @dx.op.unary.f32(i32 12, float %4302)  ; Cos(value)
  %4305 = fsub fast float -0.000000e+00, %4303
  br label %4306

; <label>:4306                                    ; preds = %4355, %4301
  %4307 = phi float [ 0.000000e+00, %4301 ], [ %4350, %4355 ]
  %4308 = phi float [ 0.000000e+00, %4301 ], [ %4352, %4355 ]
  %4309 = phi i32 [ 0, %4301 ], [ %4356, %4355 ]
  %4310 = mul i32 %4309, 2
  %4311 = add i32 0, %4310
  %4312 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4311
  %4313 = load float, float* %4312, align 4
  %4314 = mul i32 %4309, 2
  %4315 = add i32 1, %4314
  %4316 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4315
  %4317 = load float, float* %4316, align 4
  %4318 = fmul fast float %4313, %4304
  %4319 = call float @dx.op.tertiary.f32(i32 46, float %4317, float %4305, float %4318)  ; FMad(a,b,c)
  %4320 = fmul fast float %4313, %4303
  %4321 = call float @dx.op.tertiary.f32(i32 46, float %4317, float %4304, float %4320)  ; FMad(a,b,c)
  %4322 = fmul fast float %4319, %4230
  %4323 = fmul fast float %4321, %4230
  %4324 = fadd fast float %4322, %3085
  %4325 = fadd fast float %4323, %3089
  %4326 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %59, float %4324, float %4325, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4327 = extractvalue %dx.types.ResRet.f32 %4326, 0
  %4328 = extractvalue %dx.types.ResRet.f32 %4326, 1
  %4329 = extractvalue %dx.types.ResRet.f32 %4326, 2
  %4330 = extractvalue %dx.types.ResRet.f32 %4326, 3
  %4331 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 0
  store float %4327, float* %4331, align 4
  %4332 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 1
  store float %4328, float* %4332, align 4
  %4333 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 2
  store float %4329, float* %4333, align 4
  %4334 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 3
  store float %4330, float* %4334, align 4
  %4335 = fsub fast float %4327, %4232
  %4336 = fcmp fast olt float %4335, 0.000000e+00
  %4337 = select i1 %4336, float 0.000000e+00, float 1.000000e+00
  %4338 = fadd fast float %4337, %4307
  %4339 = fmul fast float %4337, %4335
  %4340 = fadd fast float %4339, %4308
  br label %4341

; <label>:4341                                    ; preds = %4341, %4306
  %4342 = phi i32 [ 1, %4306 ], [ %4353, %4341 ]
  %4343 = phi float [ %4340, %4306 ], [ %4352, %4341 ]
  %4344 = phi float [ %4338, %4306 ], [ %4350, %4341 ]
  %4345 = getelementptr [4 x float], [4 x float]* %83, i32 0, i32 %4342
  %4346 = load float, float* %4345, align 4, !tbaa !99, !noalias !128
  %4347 = fsub fast float %4346, %4232
  %4348 = fcmp fast olt float %4347, 0.000000e+00
  %4349 = select i1 %4348, float 0.000000e+00, float 1.000000e+00
  %4350 = fadd fast float %4349, %4344
  %4351 = fmul fast float %4349, %4347
  %4352 = fadd fast float %4351, %4343
  %4353 = add nuw nsw i32 %4342, 1
  %4354 = icmp eq i32 %4353, 4
  br i1 %4354, label %4355, label %4341, !llvm.loop !138

; <label>:4355                                    ; preds = %4341
  %4356 = add nuw nsw i32 %4309, 1
  %4357 = icmp eq i32 %4356, 8
  br i1 %4357, label %4358, label %4306, !llvm.loop !139

; <label>:4358                                    ; preds = %4355
  %4359 = fdiv fast float 1.000000e+00, %4350
  %4360 = fmul fast float %4359, %4352
  %4361 = fdiv fast float 1.000000e+00, %4232
  %4362 = fmul fast float %4360, %4361
  %4363 = call float @dx.op.unary.f32(i32 7, float %4362)  ; Saturate(value)
  %4364 = call float @dx.op.binary.f32(i32 35, float %4363, float 0.000000e+00)  ; FMax(a,b)
  %4365 = fmul fast float %4350, 3.125000e-02
  %4366 = call float @dx.op.unary.f32(i32 7, float %4365)  ; Saturate(value)
  %4367 = fmul fast float %4366, 2.000000e+00
  %4368 = fadd fast float %4367, -1.000000e+00
  %4369 = fcmp fast ogt float %4368, 0.000000e+00
  %4370 = fcmp fast olt float %4368, 0.000000e+00
  %4371 = zext i1 %4369 to i32
  %4372 = zext i1 %4370 to i32
  %4373 = sub nsw i32 %4371, %4372
  %4374 = sitofp i32 %4373 to float
  %4375 = fmul fast float %4374, %4368
  %4376 = fsub fast float 1.000000e+00, %4375
  %4377 = fmul fast float %4376, %4376
  %4378 = fmul fast float %4377, %4376
  %4379 = fsub fast float %4376, %4378
  %4380 = fmul fast float %4379, %4364
  %4381 = fsub fast float 1.000000e+00, %4378
  %4382 = fsub fast float %4381, %4380
  %4383 = fmul fast float %4374, 5.000000e-01
  %4384 = fmul fast float %4383, %4382
  %4385 = fsub fast float 5.000000e-01, %4384
  br label %4386

; <label>:4386                                    ; preds = %4358, %4234, %4219
  %4387 = phi float [ 1.000000e+00, %4219 ], [ %4300, %4234 ], [ %4385, %4358 ]
  %4388 = fsub fast float %4053, %3886
  %4389 = fmul fast float %4388, %3148
  %4390 = fadd fast float %4389, %3886
  %4391 = fsub fast float %4220, %4390
  %4392 = fmul fast float %4391, %3179
  %4393 = fadd fast float %4392, %4390
  %4394 = fsub fast float %4387, %4393
  %4395 = fmul fast float %4394, %3207
  %4396 = fadd fast float %4395, %4393
  %4397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4398 = extractvalue %dx.types.CBufRet.f32 %4397, 2
  %4399 = fcmp fast ogt float %4398, 0.000000e+00
  br i1 %4399, label %4400, label %4440, !dx.controlflow.hints !142

; <label>:4400                                    ; preds = %4386
  %4401 = fcmp fast ugt float %4398, 0.000000e+00
  br i1 %4401, label %4402, label %4437

; <label>:4402                                    ; preds = %4400
  %4403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.f32 %4403, 0
  %4405 = extractvalue %dx.types.CBufRet.f32 %4403, 1
  %4406 = extractvalue %dx.types.CBufRet.f32 %4403, 2
  %4407 = extractvalue %dx.types.CBufRet.f32 %4403, 3
  %4408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4409 = extractvalue %dx.types.CBufRet.f32 %4408, 0
  %4410 = extractvalue %dx.types.CBufRet.f32 %4408, 1
  %4411 = extractvalue %dx.types.CBufRet.f32 %4408, 2
  %4412 = extractvalue %dx.types.CBufRet.f32 %4408, 3
  %4413 = extractvalue %dx.types.CBufRet.f32 %4397, 0
  %4414 = extractvalue %dx.types.CBufRet.f32 %4397, 1
  %4415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4416 = extractvalue %dx.types.CBufRet.f32 %4415, 0
  %4417 = extractvalue %dx.types.CBufRet.f32 %4415, 1
  %4418 = extractvalue %dx.types.CBufRet.f32 %4415, 2
  %4419 = fadd fast float %4416, %143
  %4420 = fadd fast float %4417, %144
  %4421 = fadd fast float %4418, %145
  %4422 = fmul fast float %4419, %4404
  %4423 = call float @dx.op.tertiary.f32(i32 46, float %4405, float %4420, float %4422)  ; FMad(a,b,c)
  %4424 = call float @dx.op.tertiary.f32(i32 46, float %4406, float %4421, float %4423)  ; FMad(a,b,c)
  %4425 = fadd fast float %4424, %4407
  %4426 = fmul fast float %4419, %4409
  %4427 = call float @dx.op.tertiary.f32(i32 46, float %4410, float %4420, float %4426)  ; FMad(a,b,c)
  %4428 = call float @dx.op.tertiary.f32(i32 46, float %4411, float %4421, float %4427)  ; FMad(a,b,c)
  %4429 = fadd fast float %4428, %4412
  %4430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %12, %dx.types.Handle %55, float %4425, float %4429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4431 = extractvalue %dx.types.ResRet.f32 %4430, 0
  %4432 = fmul fast float %4431, %4414
  %4433 = fadd fast float %4432, %4413
  %4434 = call float @dx.op.unary.f32(i32 7, float %4433)  ; Saturate(value)
  %4435 = fmul fast float %4434, %4398
  %4436 = fsub fast float 1.000000e+00, %4435
  br label %4437

; <label>:4437                                    ; preds = %4402, %4400
  %4438 = phi float [ %4436, %4402 ], [ 1.000000e+00, %4400 ]
  %4439 = fmul fast float %4438, %4396
  br label %4440

; <label>:4440                                    ; preds = %4437, %4386, %3050
  %4441 = phi float [ 1.000000e+00, %3050 ], [ %4439, %4437 ], [ %4396, %4386 ]
  %4442 = call float @dx.op.binary.f32(i32 36, float %4441, float %4441)  ; FMin(a,b)
  %4443 = call float @dx.op.binary.f32(i32 36, float %4441, float %4442)  ; FMin(a,b)
  %4444 = fcmp fast ogt float %4443, 0.000000e+00
  br i1 %4444, label %4445, label %4610, !dx.controlflow.hints !143

; <label>:4445                                    ; preds = %4440
  %4446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4447 = extractvalue %dx.types.CBufRet.f32 %4446, 0
  %4448 = extractvalue %dx.types.CBufRet.f32 %4446, 1
  %4449 = extractvalue %dx.types.CBufRet.f32 %4446, 2
  %4450 = extractvalue %dx.types.CBufRet.f32 %4446, 3
  %4451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4452 = extractvalue %dx.types.CBufRet.f32 %4451, 0
  %4453 = extractvalue %dx.types.CBufRet.f32 %4451, 1
  %4454 = extractvalue %dx.types.CBufRet.f32 %4451, 2
  %4455 = extractvalue %dx.types.CBufRet.f32 %4451, 3
  %4456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4457 = extractvalue %dx.types.CBufRet.f32 %4456, 0
  %4458 = extractvalue %dx.types.CBufRet.f32 %4456, 1
  %4459 = extractvalue %dx.types.CBufRet.f32 %4456, 2
  %4460 = extractvalue %dx.types.CBufRet.f32 %4456, 3
  %4461 = fmul fast float %4447, %143
  %4462 = call float @dx.op.tertiary.f32(i32 46, float %144, float %4448, float %4461)  ; FMad(a,b,c)
  %4463 = call float @dx.op.tertiary.f32(i32 46, float %145, float %4449, float %4462)  ; FMad(a,b,c)
  %4464 = fadd fast float %4463, %4450
  %4465 = fmul fast float %4452, %143
  %4466 = call float @dx.op.tertiary.f32(i32 46, float %144, float %4453, float %4465)  ; FMad(a,b,c)
  %4467 = call float @dx.op.tertiary.f32(i32 46, float %145, float %4454, float %4466)  ; FMad(a,b,c)
  %4468 = fadd fast float %4467, %4455
  %4469 = fmul fast float %4457, %143
  %4470 = call float @dx.op.tertiary.f32(i32 46, float %144, float %4458, float %4469)  ; FMad(a,b,c)
  %4471 = call float @dx.op.tertiary.f32(i32 46, float %145, float %4459, float %4470)  ; FMad(a,b,c)
  %4472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4473 = extractvalue %dx.types.CBufRet.f32 %4472, 0
  %4474 = extractvalue %dx.types.CBufRet.f32 %4472, 1
  %4475 = extractvalue %dx.types.CBufRet.f32 %4472, 3
  %4476 = fmul fast float %4475, %4464
  %4477 = fmul fast float %4475, %4468
  %4478 = fadd fast float %4476, %4473
  %4479 = fadd fast float %4477, %4474
  %4480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4481 = extractvalue %dx.types.CBufRet.f32 %4480, 0
  %4482 = extractvalue %dx.types.CBufRet.f32 %4480, 1
  %4483 = fsub fast float %4478, %4481
  %4484 = fsub fast float %4479, %4482
  %4485 = fcmp fast olt float %4483, 0.000000e+00
  %4486 = fcmp fast olt float %4484, 0.000000e+00
  %4487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.f32 %4487, 0
  %4489 = extractvalue %dx.types.CBufRet.f32 %4487, 1
  %4490 = extractvalue %dx.types.CBufRet.f32 %4487, 2
  %4491 = extractvalue %dx.types.CBufRet.f32 %4487, 3
  %4492 = select i1 %4485, float %4488, float %4490
  %4493 = select i1 %4486, float %4489, float %4491
  %4494 = fmul fast float %4492, %4483
  %4495 = fmul fast float %4493, %4484
  %4496 = call float @dx.op.unary.f32(i32 6, float %4494)  ; FAbs(value)
  %4497 = call float @dx.op.unary.f32(i32 6, float %4495)  ; FAbs(value)
  %4498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4499 = extractvalue %dx.types.CBufRet.f32 %4498, 0
  %4500 = call float @dx.op.binary.f32(i32 35, float %4496, float %4497)  ; FMax(a,b)
  %4501 = fsub fast float %4499, %4500
  %4502 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4503 = fcmp fast ogt float %4502, 0.000000e+00
  br i1 %4503, label %4504, label %4545, !dx.controlflow.hints !144

; <label>:4504                                    ; preds = %4445
  %4505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %58, float %4478, float %4479, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4506 = extractvalue %dx.types.ResRet.f32 %4505, 1
  %4507 = fcmp fast ogt float %4506, 0.000000e+00
  br i1 %4507, label %4508, label %4540

; <label>:4508                                    ; preds = %4504
  %4509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %58, float %4478, float %4479, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4510 = extractvalue %dx.types.ResRet.f32 %4509, 0
  %4511 = extractvalue %dx.types.ResRet.f32 %4509, 1
  %4512 = extractvalue %dx.types.ResRet.f32 %4509, 2
  %4513 = extractvalue %dx.types.ResRet.f32 %4509, 3
  %4514 = fsub fast float 1.000000e+00, %4460
  %4515 = fsub fast float %4514, %4471
  %4516 = fmul fast float %4515, 0x400921FB60000000
  %4517 = fadd fast float %4516, 0x3FF921FB60000000
  %4518 = call float @dx.op.unary.f32(i32 13, float %4517)  ; Sin(value)
  %4519 = fadd fast float %4518, -1.000000e+00
  %4520 = fmul fast float %4519, 0x3FD45F3060000000
  %4521 = fmul fast float %4515, 0x401921FB60000000
  %4522 = fadd fast float %4521, 0x400921FB60000000
  %4523 = call float @dx.op.unary.f32(i32 13, float %4522)  ; Sin(value)
  %4524 = fadd fast float %4523, 0x3E7777A5C0000000
  %4525 = fmul fast float %4524, 0x3FC45F3060000000
  %4526 = fmul fast float %4515, 0x4022D97C80000000
  %4527 = fadd fast float %4526, 0x4012D97C80000000
  %4528 = call float @dx.op.unary.f32(i32 13, float %4527)  ; Sin(value)
  %4529 = fadd fast float %4528, 1.000000e+00
  %4530 = fmul fast float %4529, 0x3FBB2995E0000000
  %4531 = fmul fast float %4515, 0x402921FB60000000
  %4532 = fadd fast float %4531, 0x401921FB60000000
  %4533 = call float @dx.op.unary.f32(i32 13, float %4532)  ; Sin(value)
  %4534 = fadd fast float %4533, 0xBE8777A5C0000000
  %4535 = fmul fast float %4534, 0x3FB45F3060000000
  %4536 = call float @dx.op.dot4.f32(i32 56, float %4510, float %4511, float %4512, float %4513, float %4520, float %4525, float %4530, float %4535)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4537 = fmul fast float %4536, 0xBFF7154760000000
  %4538 = call float @dx.op.unary.f32(i32 21, float %4537)  ; Exp(value)
  %4539 = call float @dx.op.unary.f32(i32 7, float %4538)  ; Saturate(value)
  br label %4540

; <label>:4540                                    ; preds = %4508, %4504
  %4541 = phi float [ %4539, %4508 ], [ 1.000000e+00, %4504 ]
  %4542 = fadd fast float %4541, -1.000000e+00
  %4543 = fmul fast float %4542, %4502
  %4544 = fadd fast float %4543, 1.000000e+00
  br label %4545

; <label>:4545                                    ; preds = %4540, %4445
  %4546 = phi float [ %4544, %4540 ], [ 1.000000e+00, %4445 ]
  %4547 = fmul fast float %4546, %4441
  %4548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4549 = extractvalue %dx.types.CBufRet.f32 %4548, 0
  %4550 = extractvalue %dx.types.CBufRet.f32 %4548, 1
  %4551 = extractvalue %dx.types.CBufRet.f32 %4548, 2
  %4552 = fadd fast float %4549, %143
  %4553 = fadd fast float %4550, %144
  %4554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4555 = extractvalue %dx.types.CBufRet.f32 %4554, 1
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 0
  %4558 = extractvalue %dx.types.CBufRet.f32 %4556, 1
  %4559 = extractvalue %dx.types.CBufRet.f32 %4556, 2
  %4560 = fsub fast float -0.000000e+00, %4552
  %4561 = fsub fast float -0.000000e+00, %4553
  %4562 = fsub fast float %1436, %4551
  %4563 = fadd fast float %4562, %4555
  %4564 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4560, float %4561, float %4563)  ; Dot3(ax,ay,az,bx,by,bz)
  %4565 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4557, float %4558, float %4559)  ; Dot3(ax,ay,az,bx,by,bz)
  %4566 = fdiv fast float 1.000000e+00, %4565
  %4567 = fmul fast float %4566, %4564
  %4568 = fmul fast float %4557, %4567
  %4569 = fmul fast float %4558, %4567
  %4570 = fadd fast float %4568, %4552
  %4571 = fadd fast float %4569, %4553
  %4572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4573 = extractvalue %dx.types.CBufRet.f32 %4572, 0
  %4574 = extractvalue %dx.types.CBufRet.f32 %4572, 1
  %4575 = fsub fast float %4570, %4573
  %4576 = fsub fast float %4571, %4574
  %4577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4578 = extractvalue %dx.types.CBufRet.f32 %4577, 2
  %4579 = extractvalue %dx.types.CBufRet.f32 %4577, 3
  %4580 = fmul fast float %4575, %4578
  %4581 = fmul fast float %4576, %4579
  %4582 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4583 = extractvalue %dx.types.CBufRet.i32 %4582, 3
  %4584 = icmp eq i32 %4583, 0
  br i1 %4584, label %4590, label %4585

; <label>:4585                                    ; preds = %4545
  %4586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %57, float %4580, float %4581, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4587 = extractvalue %dx.types.ResRet.f32 %4586, 0
  %4588 = extractvalue %dx.types.ResRet.f32 %4586, 1
  %4589 = extractvalue %dx.types.ResRet.f32 %4586, 2
  br label %4595

; <label>:4590                                    ; preds = %4545
  %4591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %58, float %4580, float %4581, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4592 = extractvalue %dx.types.ResRet.f32 %4591, 0
  %4593 = extractvalue %dx.types.ResRet.f32 %4591, 1
  %4594 = extractvalue %dx.types.ResRet.f32 %4591, 2
  br label %4595

; <label>:4595                                    ; preds = %4590, %4585
  %4596 = phi float [ %4587, %4585 ], [ %4592, %4590 ]
  %4597 = phi float [ %4588, %4585 ], [ %4593, %4590 ]
  %4598 = phi float [ %4589, %4585 ], [ %4594, %4590 ]
  %4599 = extractvalue %dx.types.CBufRet.f32 %4554, 2
  %4600 = fmul fast float %4599, %4596
  %4601 = extractvalue %dx.types.CBufRet.f32 %4554, 0
  %4602 = fsub fast float %4567, %4601
  %4603 = fsub fast float %4602, %4600
  %4604 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4603)  ; FMax(a,b)
  %4605 = fmul fast float %4604, %4597
  %4606 = call float @dx.op.binary.f32(i32 36, float %4598, float %4605)  ; FMin(a,b)
  %4607 = fmul fast float %4606, 0xBFF7154760000000
  %4608 = call float @dx.op.unary.f32(i32 21, float %4607)  ; Exp(value)
  %4609 = fmul fast float %4547, %4608
  br label %4610

; <label>:4610                                    ; preds = %4595, %4440
  %4611 = phi float [ %4609, %4595 ], [ %4441, %4440 ]
  %4612 = call float @dx.op.binary.f32(i32 36, float %4611, float %4611)  ; FMin(a,b)
  %4613 = call float @dx.op.binary.f32(i32 36, float %4611, float %4612)  ; FMin(a,b)
  %4614 = fcmp fast ogt float %4613, 0.000000e+00
  br i1 %4614, label %4615, label %4839, !dx.controlflow.hints !145

; <label>:4615                                    ; preds = %4610
  %4616 = bitcast i32 %1453 to float
  %4617 = fmul fast float %4611, %3062
  %4618 = fmul fast float %4611, %3063
  %4619 = fmul fast float %4611, %3064
  %4620 = fsub fast float %3051, %1340
  %4621 = fsub fast float %3052, %1341
  %4622 = fsub fast float %3053, %1342
  %4623 = call float @dx.op.dot3.f32(i32 55, float %4620, float %4621, float %4622, float %4620, float %4621, float %4622)  ; Dot3(ax,ay,az,bx,by,bz)
  %4624 = call float @dx.op.unary.f32(i32 25, float %4623)  ; Rsqrt(value)
  %4625 = fmul fast float %4624, %4620
  %4626 = fmul fast float %4624, %4621
  %4627 = fmul fast float %4624, %4622
  %4628 = call float @dx.op.dot3.f32(i32 55, float %3051, float %3052, float %3053, float %1312, float %1313, float %1314)  ; Dot3(ax,ay,az,bx,by,bz)
  %4629 = call float @dx.op.dot3.f32(i32 55, float %1437, float %1438, float %1439, float %4625, float %4626, float %4627)  ; Dot3(ax,ay,az,bx,by,bz)
  %4630 = call float @dx.op.unary.f32(i32 7, float %4628)  ; Saturate(value)
  %4631 = fmul fast float %4630, %4630
  %4632 = fmul fast float %4631, %4616
  %4633 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4634 = fmul fast float %4633, %4630
  %4635 = call float @dx.op.dot3.f32(i32 55, float %1312, float %1313, float %1314, float %4625, float %4626, float %4627)  ; Dot3(ax,ay,az,bx,by,bz)
  %4636 = fmul fast float %4635, %4635
  %4637 = call float @dx.op.unary.f32(i32 6, float %4628)  ; FAbs(value)
  %4638 = fsub fast float 1.000000e+00, %1395
  %4639 = call float @dx.op.binary.f32(i32 35, float %4638, float 0x3F847AE140000000)  ; FMax(a,b)
  %4640 = fmul fast float %4639, %4639
  %4641 = fmul fast float %4640, %4640
  %4642 = fsub fast float 1.000000e+00, %4641
  %4643 = fmul fast float %1442, %1442
  %4644 = fmul fast float %4643, %4642
  %4645 = fadd fast float %4644, %4641
  %4646 = bitcast float %4645 to i32
  %4647 = ashr i32 %4646, 1
  %4648 = add nsw i32 %4647, 532487669
  %4649 = bitcast i32 %4648 to float
  %4650 = fadd fast float %4649, %1442
  %4651 = fmul fast float %4641, %4636
  %4652 = fsub fast float 1.000000e+00, %4636
  %4653 = fadd fast float %4652, %4651
  %4654 = fmul fast float %4637, %4637
  %4655 = fmul fast float %4654, %4642
  %4656 = fadd fast float %4655, %4641
  %4657 = bitcast float %4656 to i32
  %4658 = ashr i32 %4657, 1
  %4659 = add nsw i32 %4658, 532487669
  %4660 = bitcast i32 %4659 to float
  %4661 = fadd fast float %4660, %4637
  %4662 = fmul fast float %4653, %4653
  %4663 = fmul fast float %4662, %4650
  %4664 = fmul fast float %4663, %4661
  %4665 = fdiv fast float 0x3FF0A00000000000, %4664
  %4666 = fmul fast float %4665, %4641
  %4667 = call float @dx.op.unary.f32(i32 6, float %4629)  ; FAbs(value)
  %4668 = fsub fast float 1.000000e+00, %4667
  %4669 = bitcast float %4668 to i32
  %4670 = sitofp i32 %4669 to float
  %4671 = fmul fast float %4670, 5.000000e+00
  %4672 = fadd fast float %4671, 0xC1EFBF8940000000
  %4673 = fptosi float %4672 to i32
  %4674 = bitcast i32 %4673 to float
  %4675 = fmul fast float %4674, %2268
  %4676 = fmul fast float %4674, %2269
  %4677 = fmul fast float %4674, %2270
  %4678 = fadd fast float %4675, %1333
  %4679 = fadd fast float %4676, %1334
  %4680 = fadd fast float %4677, %1440
  %4681 = select i1 %2281, float %4667, float 0.000000e+00
  %4682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %58, float %2278, float %4681, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4683 = extractvalue %dx.types.ResRet.f32 %4682, 0
  %4684 = extractvalue %dx.types.ResRet.f32 %4682, 1
  %4685 = extractvalue %dx.types.ResRet.f32 %4682, 2
  %4686 = fadd fast float %4683, -5.000000e-01
  %4687 = fadd fast float %4684, -5.000000e-01
  %4688 = fadd fast float %4685, -5.000000e-01
  %4689 = fmul fast float %2293, %4686
  %4690 = fmul fast float %2297, %4687
  %4691 = fmul fast float %2301, %4688
  %4692 = fadd fast float %4678, %4689
  %4693 = fadd fast float %4679, %4690
  %4694 = fadd fast float %4680, %4691
  %4695 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4696 = call float @dx.op.unary.f32(i32 7, float %4693)  ; Saturate(value)
  %4697 = call float @dx.op.unary.f32(i32 7, float %4694)  ; Saturate(value)
  %4698 = fmul fast float %4628, 9.843750e-01
  %4699 = fmul fast float %1395, 9.843750e-01
  %4700 = fadd fast float %4698, 7.812500e-03
  %4701 = fadd fast float %4699, 7.812500e-03
  %4702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %4700, float %4701, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4703 = extractvalue %dx.types.ResRet.f32 %4702, 2
  %4704 = extractvalue %dx.types.ResRet.f32 %4702, 3
  %4705 = select i1 %2281, float %4628, float 0.000000e+00
  %4706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %58, float %2278, float %4705, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4707 = extractvalue %dx.types.ResRet.f32 %4706, 0
  %4708 = extractvalue %dx.types.ResRet.f32 %4706, 1
  %4709 = extractvalue %dx.types.ResRet.f32 %4706, 2
  %4710 = fadd fast float %4707, -5.000000e-01
  %4711 = fadd fast float %4708, -5.000000e-01
  %4712 = fadd fast float %4709, -5.000000e-01
  %4713 = fmul fast float %2268, 4.000000e+00
  %4714 = fmul fast float %4713, %2280
  %4715 = fmul fast float %4714, %4710
  %4716 = fmul fast float %2269, 4.000000e+00
  %4717 = fmul fast float %4716, %2280
  %4718 = fmul fast float %4717, %4711
  %4719 = fmul fast float %2270, 4.000000e+00
  %4720 = fmul fast float %4719, %2280
  %4721 = fmul fast float %4720, %4712
  %4722 = fadd fast float %4715, %4703
  %4723 = fmul fast float %4722, %1333
  %4724 = fadd fast float %4723, %4704
  %4725 = fadd fast float %4718, %4703
  %4726 = fmul fast float %4725, %1334
  %4727 = fadd fast float %4726, %4704
  %4728 = fadd fast float %4721, %4703
  %4729 = fmul fast float %4728, %1440
  %4730 = fadd fast float %4729, %4704
  %4731 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4732 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4733 = call float @dx.op.unary.f32(i32 7, float %4730)  ; Saturate(value)
  %4734 = call float @dx.op.binary.f32(i32 35, float %4732, float %4733)  ; FMax(a,b)
  %4735 = call float @dx.op.binary.f32(i32 35, float %4731, float %4734)  ; FMax(a,b)
  %4736 = fsub fast float 1.000000e+00, %4735
  %4737 = fsub fast float -0.000000e+00, %1312
  %4738 = fsub fast float -0.000000e+00, %1313
  %4739 = fsub fast float -0.000000e+00, %1314
  %4740 = call float @dx.op.dot3.f32(i32 55, float %3051, float %3052, float %3053, float %4737, float %4738, float %4739)  ; Dot3(ax,ay,az,bx,by,bz)
  %4741 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  %4742 = fmul fast float %4741, 9.843750e-01
  %4743 = fadd fast float %4742, 7.812500e-03
  %4744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %4743, float %4701, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4745 = extractvalue %dx.types.ResRet.f32 %4744, 2
  %4746 = extractvalue %dx.types.ResRet.f32 %4744, 3
  %4747 = select i1 %2281, float %4741, float 0.000000e+00
  %4748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %58, float %2278, float %4747, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4749 = extractvalue %dx.types.ResRet.f32 %4748, 0
  %4750 = extractvalue %dx.types.ResRet.f32 %4748, 1
  %4751 = extractvalue %dx.types.ResRet.f32 %4748, 2
  %4752 = fadd fast float %4749, -5.000000e-01
  %4753 = fadd fast float %4750, -5.000000e-01
  %4754 = fadd fast float %4751, -5.000000e-01
  %4755 = fmul fast float %4714, %4752
  %4756 = fmul fast float %4717, %4753
  %4757 = fmul fast float %4720, %4754
  %4758 = fadd fast float %4755, %4745
  %4759 = fmul fast float %4758, %1333
  %4760 = fadd fast float %4759, %4746
  %4761 = fadd fast float %4756, %4745
  %4762 = fmul fast float %4761, %1334
  %4763 = fadd fast float %4762, %4746
  %4764 = fadd fast float %4757, %4745
  %4765 = fmul fast float %4764, %1440
  %4766 = fadd fast float %4765, %4746
  %4767 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4768 = call float @dx.op.unary.f32(i32 7, float %4763)  ; Saturate(value)
  %4769 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  %4770 = call float @dx.op.binary.f32(i32 35, float %4768, float %4769)  ; FMax(a,b)
  %4771 = call float @dx.op.binary.f32(i32 35, float %4767, float %4770)  ; FMax(a,b)
  %4772 = fsub fast float 1.000000e+00, %4771
  %4773 = fmul fast float %1334, 0x4012D0A400000000
  %4774 = fadd fast float %4773, 0x3FDB6377A0000000
  %4775 = fmul fast float %4638, %4774
  %4776 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4777 = fsub fast float %3051, %1447
  %4778 = fsub fast float %3052, %1448
  %4779 = fsub fast float %3053, %1449
  %4780 = call float @dx.op.dot3.f32(i32 55, float %4777, float %4778, float %4779, float %4777, float %4778, float %4779)  ; Dot3(ax,ay,az,bx,by,bz)
  %4781 = call float @dx.op.unary.f32(i32 25, float %4780)  ; Rsqrt(value)
  %4782 = fmul fast float %4781, %4777
  %4783 = fmul fast float %4781, %4778
  %4784 = fmul fast float %4781, %4779
  %4785 = call float @dx.op.dot3.f32(i32 55, float %4737, float %4738, float %4739, float %4782, float %4783, float %4784)  ; Dot3(ax,ay,az,bx,by,bz)
  %4786 = fmul fast float %4785, %4785
  %4787 = call float @dx.op.unary.f32(i32 6, float %4741)  ; FAbs(value)
  %4788 = call float @dx.op.binary.f32(i32 35, float %4776, float 0x3F847AE140000000)  ; FMax(a,b)
  %4789 = fmul fast float %4788, %4788
  %4790 = fmul fast float %4789, %4789
  %4791 = fsub fast float 1.000000e+00, %4790
  %4792 = fmul fast float %4643, %4791
  %4793 = fadd fast float %4792, %4790
  %4794 = bitcast float %4793 to i32
  %4795 = ashr i32 %4794, 1
  %4796 = add nsw i32 %4795, 532487669
  %4797 = bitcast i32 %4796 to float
  %4798 = fadd fast float %4797, %1442
  %4799 = fmul fast float %4790, %4786
  %4800 = fsub fast float 1.000000e+00, %4786
  %4801 = fadd fast float %4800, %4799
  %4802 = fmul fast float %4787, %4787
  %4803 = fmul fast float %4802, %4791
  %4804 = fadd fast float %4803, %4790
  %4805 = bitcast float %4804 to i32
  %4806 = ashr i32 %4805, 1
  %4807 = add nsw i32 %4806, 532487669
  %4808 = bitcast i32 %4807 to float
  %4809 = fadd fast float %4808, %4787
  %4810 = fmul fast float %4801, %4801
  %4811 = fmul fast float %4810, %4798
  %4812 = fmul fast float %4811, %4809
  %4813 = fdiv fast float 0x3FF0A00000000000, %4812
  %4814 = fmul fast float %4813, %4790
  %4815 = fmul fast float %4772, %4741
  %4816 = fmul fast float %4815, %4814
  %4817 = fmul fast float %4666, %4634
  %4818 = fmul fast float %4817, %4695
  %4819 = fmul fast float %4817, %4696
  %4820 = fmul fast float %4817, %4697
  %4821 = fadd fast float %4816, %4818
  %4822 = fadd fast float %4816, %4819
  %4823 = fadd fast float %4816, %4820
  %4824 = fmul fast float %4634, %4617
  %4825 = fmul fast float %4824, %4736
  %4826 = fmul fast float %4634, %4618
  %4827 = fmul fast float %4826, %4736
  %4828 = fmul fast float %4634, %4619
  %4829 = fmul fast float %4828, %4736
  %4830 = fadd fast float %4825, %3038
  %4831 = fadd fast float %4827, %3039
  %4832 = fadd fast float %4829, %3040
  %4833 = fmul fast float %4821, %4617
  %4834 = fmul fast float %4822, %4618
  %4835 = fmul fast float %4823, %4619
  %4836 = fadd fast float %4833, %3044
  %4837 = fadd fast float %4834, %3045
  %4838 = fadd fast float %4835, %3046
  br label %4839

; <label>:4839                                    ; preds = %4615, %4610, %3034
  %4840 = phi float [ %4611, %4615 ], [ 0.000000e+00, %3034 ], [ 0.000000e+00, %4610 ]
  %4841 = phi float [ %4836, %4615 ], [ %3044, %3034 ], [ %3044, %4610 ]
  %4842 = phi float [ %4837, %4615 ], [ %3045, %3034 ], [ %3045, %4610 ]
  %4843 = phi float [ %4838, %4615 ], [ %3046, %3034 ], [ %3046, %4610 ]
  %4844 = phi float [ %4830, %4615 ], [ %3038, %3034 ], [ %3038, %4610 ]
  %4845 = phi float [ %4831, %4615 ], [ %3039, %3034 ], [ %3039, %4610 ]
  %4846 = phi float [ %4832, %4615 ], [ %3040, %3034 ], [ %3040, %4610 ]
  %4847 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.i32 %4847, 0
  %4849 = icmp eq i32 %4848, 0
  br i1 %4849, label %5502, label %4850

; <label>:4850                                    ; preds = %4839
  %4851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.f32 %4851, 2
  %4853 = extractvalue %dx.types.CBufRet.f32 %4851, 3
  %4854 = fmul fast float %4852, %88
  %4855 = fmul fast float %4853, %89
  %4856 = fptoui float %4854 to i32
  %4857 = fptoui float %4855 to i32
  %4858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4859 = extractvalue %dx.types.CBufRet.f32 %4858, 0
  %4860 = extractvalue %dx.types.CBufRet.f32 %4858, 2
  %4861 = extractvalue %dx.types.CBufRet.f32 %4858, 3
  %4862 = fadd fast float %78, -4.000000e+00
  %4863 = call float @dx.op.binary.f32(i32 35, float %4862, float 0.000000e+00)  ; FMax(a,b)
  %4864 = fadd fast float %4863, %4859
  %4865 = fmul fast float %4864, %4860
  %4866 = call float @dx.op.unary.f32(i32 23, float %4865)  ; Log(value)
  %4867 = fmul fast float %4866, %4861
  %4868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4869 = extractvalue %dx.types.CBufRet.f32 %4868, 2
  %4870 = fmul fast float %4867, %4869
  %4871 = call float @dx.op.unary.f32(i32 7, float %4870)  ; Saturate(value)
  %4872 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4873 = extractvalue %dx.types.CBufRet.i32 %4872, 1
  %4874 = add i32 %4873, -1
  %4875 = uitofp i32 %4873 to float
  %4876 = fmul fast float %4875, %4871
  %4877 = fptoui float %4876 to i32
  %4878 = call i32 @dx.op.binary.i32(i32 40, i32 %4877, i32 %4874)  ; UMin(a,b)
  %4879 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = extractvalue %dx.types.CBufRet.i32 %4879, 2
  %4881 = extractvalue %dx.types.CBufRet.i32 %4879, 3
  %4882 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4857, i32 %4880, i32 %4856)  ; UMad(a,b,c)
  %4883 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4878, i32 %4881, i32 %4882)  ; UMad(a,b,c)
  %4884 = add nsw i32 %4848, -1
  %4885 = call i32 @dx.op.binary.i32(i32 37, i32 %4884, i32 0)  ; IMax(a,b)
  %4886 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %4887 = fptoui float %4886 to i32
  %4888 = lshr i32 %4887, 5
  %4889 = call i32 @dx.op.binary.i32(i32 40, i32 %4888, i32 8191)  ; UMin(a,b)
  %4890 = shl i32 %4889, 2
  %4891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4890, i32 undef)  ; BufferLoad(srv,index,wot)
  %4892 = extractvalue %dx.types.ResRet.i32 %4891, 0
  %4893 = lshr i32 %4892, 16
  %4894 = and i32 %4892, 65535
  %4895 = lshr i32 %4892, 21
  %4896 = lshr i32 %4894, 5
  %4897 = call i32 @dx.op.binary.i32(i32 40, i32 %4896, i32 %4885)  ; UMin(a,b)
  %4898 = icmp ugt i32 %4895, %4897
  br i1 %4898, label %5502, label %4899

; <label>:4899                                    ; preds = %4850
  br label %4900

; <label>:4900                                    ; preds = %5492, %4899
  %4901 = phi i32 [ %5499, %5492 ], [ %4895, %4899 ]
  %4902 = phi float [ %5493, %5492 ], [ %4841, %4899 ]
  %4903 = phi float [ %5494, %5492 ], [ %4842, %4899 ]
  %4904 = phi float [ %5495, %5492 ], [ %4843, %4899 ]
  %4905 = phi float [ %5496, %5492 ], [ %4844, %4899 ]
  %4906 = phi float [ %5497, %5492 ], [ %4845, %4899 ]
  %4907 = phi float [ %5498, %5492 ], [ %4846, %4899 ]
  %4908 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4909 = extractvalue %dx.types.CBufRet.i32 %4908, 0
  %4910 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4883, i32 %4909, i32 %4901)  ; UMad(a,b,c)
  %4911 = shl i32 %4910, 2
  %4912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4911, i32 undef)  ; BufferLoad(srv,index,wot)
  %4913 = extractvalue %dx.types.ResRet.i32 %4912, 0
  %4914 = shl i32 %4901, 5
  %4915 = sub nsw i32 %4893, %4914
  %4916 = call i32 @dx.op.binary.i32(i32 37, i32 %4915, i32 0)  ; IMax(a,b)
  %4917 = call i32 @dx.op.binary.i32(i32 38, i32 %4916, i32 31)  ; IMin(a,b)
  %4918 = sub nsw i32 1, %4893
  %4919 = add nsw i32 %4918, %4894
  %4920 = call i32 @dx.op.binary.i32(i32 37, i32 %4919, i32 0)  ; IMax(a,b)
  %4921 = call i32 @dx.op.binary.i32(i32 38, i32 %4920, i32 32)  ; IMin(a,b)
  %4922 = and i32 %4921, 31
  %4923 = shl i32 -1, %4922
  %4924 = xor i32 %4923, -1
  %4925 = and i32 %4917, 31
  %4926 = shl i32 %4924, %4925
  %4927 = icmp eq i32 %4921, 32
  %4928 = select i1 %4927, i32 -1, i32 %4926
  %4929 = and i32 %4928, %4913
  %4930 = icmp eq i32 %4929, 0
  br i1 %4930, label %5492, label %4931

; <label>:4931                                    ; preds = %4900
  br label %4932

; <label>:4932                                    ; preds = %5067, %4931
  %4933 = phi i32 [ %4944, %5067 ], [ %4929, %4931 ]
  %4934 = phi float [ %5068, %5067 ], [ %4902, %4931 ]
  %4935 = phi float [ %5069, %5067 ], [ %4903, %4931 ]
  %4936 = phi float [ %5070, %5067 ], [ %4904, %4931 ]
  %4937 = phi float [ %5071, %5067 ], [ %4905, %4931 ]
  %4938 = phi float [ %5072, %5067 ], [ %4906, %4931 ]
  %4939 = phi float [ %5073, %5067 ], [ %4907, %4931 ]
  %4940 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4933)  ; FirstbitLo(value)
  %4941 = add i32 %4940, %4914
  %4942 = and i32 %4940, 31
  %4943 = shl i32 1, %4942
  %4944 = xor i32 %4943, %4933
  %4945 = mul i32 %4941, 112
  %4946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4945, i32 undef)  ; BufferLoad(srv,index,wot)
  %4947 = extractvalue %dx.types.ResRet.f32 %4946, 0
  %4948 = extractvalue %dx.types.ResRet.f32 %4946, 1
  %4949 = extractvalue %dx.types.ResRet.f32 %4946, 2
  %4950 = or i32 %4945, 12
  %4951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4950, i32 undef)  ; BufferLoad(srv,index,wot)
  %4952 = extractvalue %dx.types.ResRet.f32 %4951, 0
  %4953 = add i32 %4945, 16
  %4954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4953, i32 undef)  ; BufferLoad(srv,index,wot)
  %4955 = extractvalue %dx.types.ResRet.f32 %4954, 0
  %4956 = extractvalue %dx.types.ResRet.f32 %4954, 1
  %4957 = extractvalue %dx.types.ResRet.f32 %4954, 2
  %4958 = add i32 %4945, 28
  %4959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4958, i32 undef)  ; BufferLoad(srv,index,wot)
  %4960 = extractvalue %dx.types.ResRet.i32 %4959, 0
  %4961 = add i32 %4945, 44
  %4962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4961, i32 undef)  ; BufferLoad(srv,index,wot)
  %4963 = extractvalue %dx.types.ResRet.f32 %4962, 0
  %4964 = add i32 %4945, 48
  %4965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4964, i32 undef)  ; BufferLoad(srv,index,wot)
  %4966 = extractvalue %dx.types.ResRet.f32 %4965, 0
  %4967 = extractvalue %dx.types.ResRet.f32 %4965, 1
  %4968 = extractvalue %dx.types.ResRet.f32 %4965, 2
  %4969 = extractvalue %dx.types.ResRet.f32 %4965, 3
  %4970 = add i32 %4945, 64
  %4971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4970, i32 undef)  ; BufferLoad(srv,index,wot)
  %4972 = extractvalue %dx.types.ResRet.f32 %4971, 0
  %4973 = extractvalue %dx.types.ResRet.f32 %4971, 1
  %4974 = extractvalue %dx.types.ResRet.f32 %4971, 2
  %4975 = extractvalue %dx.types.ResRet.f32 %4971, 3
  %4976 = add i32 %4945, 80
  %4977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4976, i32 undef)  ; BufferLoad(srv,index,wot)
  %4978 = extractvalue %dx.types.ResRet.f32 %4977, 1
  %4979 = extractvalue %dx.types.ResRet.f32 %4977, 2
  %4980 = add i32 %4945, 92
  %4981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4980, i32 undef)  ; BufferLoad(srv,index,wot)
  %4982 = extractvalue %dx.types.ResRet.i32 %4981, 0
  %4983 = call float @dx.op.dot3.f32(i32 55, float %4947, float %4948, float %4949, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4984 = select i1 %1435, float %4978, float %4947
  %4985 = select i1 %1435, float %4983, float %4948
  %4986 = select i1 %1435, float %4979, float %4949
  %4987 = and i32 %4982, 65535
  %4988 = uitofp i32 %4987 to float
  %4989 = lshr i32 %4982, 16
  %4990 = uitofp i32 %4989 to float
  %4991 = and i32 %4960, 65535
  %4992 = and i32 %4960, 50331648
  %4993 = icmp slt i32 %4960, 0
  %4994 = icmp eq i32 %4992, 33554432
  %4995 = fsub fast float %4966, %143
  %4996 = fsub fast float %4967, %144
  %4997 = fsub fast float %4968, %145
  %4998 = call float @dx.op.dot3.f32(i32 55, float %4995, float %4996, float %4997, float %4995, float %4996, float %4997)  ; Dot3(ax,ay,az,bx,by,bz)
  %4999 = call float @dx.op.unary.f32(i32 24, float %4998)  ; Sqrt(value)
  %5000 = fdiv fast float 1.000000e+00, %4999
  %5001 = fmul fast float %5000, %4995
  %5002 = fmul fast float %5000, %4996
  %5003 = fmul fast float %5000, %4997
  %5004 = fadd fast float %4999, %4952
  %5005 = fdiv fast float 1.000000e+00, %5004
  %5006 = fmul float %4963, %5005
  %5007 = fmul float %5006, %5006
  %5008 = call float @dx.op.unary.f32(i32 7, float %5007)  ; Saturate(value)
  br i1 %4994, label %5009, label %5030

; <label>:5009                                    ; preds = %4932
  %5010 = fmul fast float %4974, %4955
  %5011 = fmul fast float %4974, %4956
  %5012 = fmul fast float %4974, %4957
  %5013 = fadd fast float %4995, %5010
  %5014 = fadd fast float %4996, %5011
  %5015 = fadd fast float %4997, %5012
  %5016 = call float @dx.op.dot3.f32(i32 55, float %5013, float %5014, float %5015, float %5013, float %5014, float %5015)  ; Dot3(ax,ay,az,bx,by,bz)
  %5017 = call float @dx.op.unary.f32(i32 25, float %5016)  ; Rsqrt(value)
  %5018 = fmul fast float %5017, %5013
  %5019 = fmul fast float %5017, %5014
  %5020 = fmul fast float %5017, %5015
  %5021 = fsub fast float %143, %4966
  %5022 = fsub fast float %144, %4967
  %5023 = fsub fast float %145, %4968
  %5024 = fsub fast float -0.000000e+00, %5021
  %5025 = fsub fast float -0.000000e+00, %5022
  %5026 = fsub fast float -0.000000e+00, %5023
  %5027 = call float @dx.op.dot3.f32(i32 55, float %5024, float %5025, float %5026, float %4955, float %4956, float %4957)  ; Dot3(ax,ay,az,bx,by,bz)
  %5028 = fcmp fast ogt float %5027, 0.000000e+00
  %5029 = uitofp i1 %5028 to float
  br label %5030

; <label>:5030                                    ; preds = %5009, %4932
  %5031 = phi float [ %5029, %5009 ], [ 1.000000e+00, %4932 ]
  %5032 = phi float [ %5018, %5009 ], [ %5001, %4932 ]
  %5033 = phi float [ %5019, %5009 ], [ %5002, %4932 ]
  %5034 = phi float [ %5020, %5009 ], [ %5003, %4932 ]
  %5035 = call float @dx.op.dot3.f32(i32 55, float %4955, float %4956, float %4957, float %5032, float %5033, float %5034)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = fmul fast float %5035, %5035
  %5037 = call float @dx.op.unary.f32(i32 7, float %5036)  ; Saturate(value)
  %5038 = fsub fast float 1.000000e+00, %5037
  %5039 = fmul fast float %5038, 5.000000e-01
  %5040 = fcmp fast ogt float %5035, 0.000000e+00
  %5041 = fsub fast float 1.000000e+00, %5039
  %5042 = select i1 %5040, float %5039, float %5041
  %5043 = fmul fast float %5042, %4990
  %5044 = fadd fast float %5043, %4988
  %5045 = fmul fast float %5044, 0x3EF0001000000000
  %5046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %58, float %5045, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5047 = extractvalue %dx.types.ResRet.f32 %5046, 0
  %5048 = fmul fast float %5035, %4972
  %5049 = fadd fast float %5048, %4973
  %5050 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  %5051 = select i1 %4994, float 1.000000e+00, float %5050
  %5052 = select i1 %4994, float %5050, float 1.000000e+00
  %5053 = fmul fast float %4999, %4969
  %5054 = fsub fast float 1.000000e+00, %5053
  %5055 = fmul fast float %5054, %4975
  %5056 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  %5057 = fmul fast float %5056, %5052
  %5058 = fmul fast float %5057, 2.000000e+00
  %5059 = fsub fast float 3.000000e+00, %5058
  %5060 = fmul fast float %5047, %5031
  %5061 = fmul fast float %5057, %5057
  %5062 = fmul fast float %5061, %5060
  %5063 = fmul fast float %5062, %5059
  %5064 = call float @dx.op.binary.f32(i32 36, float %5063, float %5063)  ; FMin(a,b)
  %5065 = call float @dx.op.binary.f32(i32 36, float %5063, float %5064)  ; FMin(a,b)
  %5066 = fcmp fast ogt float %5065, 0.000000e+00
  br i1 %5066, label %5075, label %5067, !dx.controlflow.hints !146

; <label>:5067                                    ; preds = %5465, %5214, %5030
  %5068 = phi float [ %4934, %5214 ], [ %4934, %5030 ], [ %5488, %5465 ]
  %5069 = phi float [ %4935, %5214 ], [ %4935, %5030 ], [ %5489, %5465 ]
  %5070 = phi float [ %4936, %5214 ], [ %4936, %5030 ], [ %5490, %5465 ]
  %5071 = phi float [ %4937, %5214 ], [ %4937, %5030 ], [ %5482, %5465 ]
  %5072 = phi float [ %4938, %5214 ], [ %4938, %5030 ], [ %5483, %5465 ]
  %5073 = phi float [ %4939, %5214 ], [ %4939, %5030 ], [ %5484, %5465 ]
  %5074 = icmp eq i32 %4933, %4943
  br i1 %5074, label %5491, label %4932

; <label>:5075                                    ; preds = %5030
  %5076 = icmp eq i32 %4991, 255
  br i1 %5076, label %5214, label %5077, !dx.controlflow.hints !147

; <label>:5077                                    ; preds = %5075
  %5078 = mul nuw nsw i32 %4991, 176
  %5079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5078, i32 undef)  ; BufferLoad(srv,index,wot)
  %5080 = extractvalue %dx.types.ResRet.f32 %5079, 0
  %5081 = extractvalue %dx.types.ResRet.f32 %5079, 1
  %5082 = extractvalue %dx.types.ResRet.f32 %5079, 2
  %5083 = extractvalue %dx.types.ResRet.f32 %5079, 3
  %5084 = add nuw nsw i32 %5078, 16
  %5085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5084, i32 undef)  ; BufferLoad(srv,index,wot)
  %5086 = extractvalue %dx.types.ResRet.f32 %5085, 0
  %5087 = extractvalue %dx.types.ResRet.f32 %5085, 1
  %5088 = add nuw nsw i32 %5078, 32
  %5089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5088, i32 undef)  ; BufferLoad(srv,index,wot)
  %5090 = extractvalue %dx.types.ResRet.f32 %5089, 0
  %5091 = extractvalue %dx.types.ResRet.f32 %5089, 1
  %5092 = add nuw nsw i32 %5078, 48
  %5093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5092, i32 undef)  ; BufferLoad(srv,index,wot)
  %5094 = extractvalue %dx.types.ResRet.f32 %5093, 0
  %5095 = extractvalue %dx.types.ResRet.f32 %5093, 1
  %5096 = extractvalue %dx.types.ResRet.f32 %5093, 2
  %5097 = extractvalue %dx.types.ResRet.f32 %5093, 3
  %5098 = add nuw nsw i32 %5078, 64
  %5099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5098, i32 undef)  ; BufferLoad(srv,index,wot)
  %5100 = extractvalue %dx.types.ResRet.f32 %5099, 0
  %5101 = extractvalue %dx.types.ResRet.f32 %5099, 1
  %5102 = extractvalue %dx.types.ResRet.f32 %5099, 2
  %5103 = extractvalue %dx.types.ResRet.f32 %5099, 3
  %5104 = add nuw nsw i32 %5078, 80
  %5105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5104, i32 undef)  ; BufferLoad(srv,index,wot)
  %5106 = extractvalue %dx.types.ResRet.f32 %5105, 0
  %5107 = extractvalue %dx.types.ResRet.f32 %5105, 1
  %5108 = extractvalue %dx.types.ResRet.f32 %5105, 2
  %5109 = extractvalue %dx.types.ResRet.f32 %5105, 3
  %5110 = add nuw nsw i32 %5078, 96
  %5111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5110, i32 undef)  ; BufferLoad(srv,index,wot)
  %5112 = extractvalue %dx.types.ResRet.f32 %5111, 0
  %5113 = extractvalue %dx.types.ResRet.f32 %5111, 1
  %5114 = extractvalue %dx.types.ResRet.f32 %5111, 2
  %5115 = extractvalue %dx.types.ResRet.f32 %5111, 3
  %5116 = bitcast float %5087 to i32
  %5117 = fmul fast float %5094, %143
  %5118 = call float @dx.op.tertiary.f32(i32 46, float %144, float %5100, float %5117)  ; FMad(a,b,c)
  %5119 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5106, float %5118)  ; FMad(a,b,c)
  %5120 = fadd fast float %5119, %5112
  %5121 = fmul fast float %5095, %143
  %5122 = call float @dx.op.tertiary.f32(i32 46, float %144, float %5101, float %5121)  ; FMad(a,b,c)
  %5123 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5107, float %5122)  ; FMad(a,b,c)
  %5124 = fadd fast float %5123, %5113
  %5125 = fmul fast float %5096, %143
  %5126 = call float @dx.op.tertiary.f32(i32 46, float %144, float %5102, float %5125)  ; FMad(a,b,c)
  %5127 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5108, float %5126)  ; FMad(a,b,c)
  %5128 = fadd fast float %5127, %5114
  %5129 = fmul fast float %5097, %143
  %5130 = call float @dx.op.tertiary.f32(i32 46, float %144, float %5103, float %5129)  ; FMad(a,b,c)
  %5131 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5109, float %5130)  ; FMad(a,b,c)
  %5132 = fadd fast float %5131, %5115
  %5133 = fdiv fast float %5120, %5132
  %5134 = fdiv fast float %5124, %5132
  %5135 = fdiv fast float %5128, %5132
  %5136 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5135)  ; FMax(a,b)
  %5137 = fmul fast float %799, 0x401921FB60000000
  %5138 = call float @dx.op.unary.f32(i32 13, float %5137)  ; Sin(value)
  %5139 = call float @dx.op.unary.f32(i32 12, float %5137)  ; Cos(value)
  %5140 = fmul fast float %5139, %5091
  %5141 = call float @dx.op.tertiary.f32(i32 46, float %5138, float %5091, float 0.000000e+00)  ; FMad(a,b,c)
  %5142 = fmul fast float %5091, %5138
  %5143 = fsub fast float -0.000000e+00, %5142
  %5144 = call float @dx.op.tertiary.f32(i32 46, float %5139, float %5091, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5145

; <label>:5145                                    ; preds = %5145, %5077
  %5146 = phi float [ 0.000000e+00, %5077 ], [ %5178, %5145 ]
  %5147 = phi float [ 0.000000e+00, %5077 ], [ %5180, %5145 ]
  %5148 = phi i32 [ 0, %5077 ], [ %5181, %5145 ]
  %5149 = mul i32 %5148, 2
  %5150 = add i32 0, %5149
  %5151 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5150
  %5152 = load float, float* %5151, align 4
  %5153 = mul i32 %5148, 2
  %5154 = add i32 1, %5153
  %5155 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5154
  %5156 = load float, float* %5155, align 4
  %5157 = fmul fast float %5140, %5152
  %5158 = call float @dx.op.tertiary.f32(i32 46, float %5156, float %5143, float %5157)  ; FMad(a,b,c)
  %5159 = fmul fast float %5152, %5141
  %5160 = call float @dx.op.tertiary.f32(i32 46, float %5156, float %5144, float %5159)  ; FMad(a,b,c)
  %5161 = fadd fast float %5158, %5133
  %5162 = fadd fast float %5160, %5134
  %5163 = fmul fast float %5161, %5086
  %5164 = fmul fast float %5162, %5086
  %5165 = call float @dx.op.binary.f32(i32 35, float %5163, float %5082)  ; FMax(a,b)
  %5166 = call float @dx.op.binary.f32(i32 35, float %5164, float %5082)  ; FMax(a,b)
  %5167 = call float @dx.op.binary.f32(i32 36, float %5165, float %5083)  ; FMin(a,b)
  %5168 = call float @dx.op.binary.f32(i32 36, float %5166, float %5083)  ; FMin(a,b)
  %5169 = fadd fast float %5167, %5080
  %5170 = fadd fast float %5168, %5081
  %5171 = uitofp i32 %5116 to float
  %5172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %59, float %5169, float %5170, float %5171, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5173 = extractvalue %dx.types.ResRet.f32 %5172, 0
  %5174 = fsub fast float %5173, %5136
  %5175 = fsub fast float %5174, %5090
  %5176 = fcmp fast ogt float %5175, 0.000000e+00
  %5177 = select i1 %5176, float 1.000000e+00, float 0.000000e+00
  %5178 = fadd fast float %5177, %5146
  %5179 = select i1 %5176, float %5175, float 0.000000e+00
  %5180 = fadd fast float %5179, %5147
  %5181 = add nuw nsw i32 %5148, 1
  %5182 = icmp eq i32 %5181, 8
  br i1 %5182, label %5183, label %5145

; <label>:5183                                    ; preds = %5145
  %5184 = fdiv fast float 1.000000e+00, %5178
  %5185 = fmul fast float %5184, %5180
  %5186 = fdiv fast float 1.000000e+00, %5136
  %5187 = fmul fast float %5185, %5186
  %5188 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5189 = call float @dx.op.binary.f32(i32 35, float %5188, float 0.000000e+00)  ; FMax(a,b)
  %5190 = fmul fast float %5178, 1.250000e-01
  %5191 = call float @dx.op.unary.f32(i32 7, float %5190)  ; Saturate(value)
  %5192 = fmul fast float %5191, 2.000000e+00
  %5193 = fadd fast float %5192, -1.000000e+00
  %5194 = fcmp fast ogt float %5193, 0.000000e+00
  %5195 = fcmp fast olt float %5193, 0.000000e+00
  %5196 = zext i1 %5194 to i32
  %5197 = zext i1 %5195 to i32
  %5198 = sub nsw i32 %5196, %5197
  %5199 = sitofp i32 %5198 to float
  %5200 = fmul fast float %5199, %5193
  %5201 = fsub fast float 1.000000e+00, %5200
  %5202 = fmul fast float %5201, %5201
  %5203 = fmul fast float %5202, %5201
  %5204 = fsub fast float %5201, %5203
  %5205 = fmul fast float %5204, %5189
  %5206 = fsub fast float 1.000000e+00, %5203
  %5207 = fsub fast float %5206, %5205
  %5208 = fmul fast float %5199, 5.000000e-01
  %5209 = fmul fast float %5208, %5207
  %5210 = fsub fast float -5.000000e-01, %5209
  %5211 = fmul fast float %5210, %5051
  %5212 = fadd fast float %5211, 1.000000e+00
  %5213 = fmul fast float %5212, %5063
  br label %5214

; <label>:5214                                    ; preds = %5183, %5075
  %5215 = phi float [ %5213, %5183 ], [ %5063, %5075 ]
  %5216 = call float @dx.op.binary.f32(i32 36, float %5215, float %5215)  ; FMin(a,b)
  %5217 = call float @dx.op.binary.f32(i32 36, float %5215, float %5216)  ; FMin(a,b)
  %5218 = fcmp fast ogt float %5217, 0.000000e+00
  br i1 %5218, label %5219, label %5067, !dx.controlflow.hints !148

; <label>:5219                                    ; preds = %5214
  %5220 = bitcast i32 %1453 to float
  %5221 = fmul fast float %5215, %4984
  %5222 = fmul fast float %5215, %4985
  %5223 = fmul fast float %5215, %4986
  %5224 = fsub fast float %5001, %1340
  %5225 = fsub fast float %5002, %1341
  %5226 = fsub fast float %5003, %1342
  %5227 = call float @dx.op.dot3.f32(i32 55, float %5224, float %5225, float %5226, float %5224, float %5225, float %5226)  ; Dot3(ax,ay,az,bx,by,bz)
  %5228 = call float @dx.op.unary.f32(i32 25, float %5227)  ; Rsqrt(value)
  %5229 = fmul fast float %5228, %5224
  %5230 = fmul fast float %5228, %5225
  %5231 = fmul fast float %5228, %5226
  %5232 = call float @dx.op.dot3.f32(i32 55, float %5001, float %5002, float %5003, float %1312, float %1313, float %1314)  ; Dot3(ax,ay,az,bx,by,bz)
  %5233 = call float @dx.op.dot3.f32(i32 55, float %1437, float %1438, float %1439, float %5229, float %5230, float %5231)  ; Dot3(ax,ay,az,bx,by,bz)
  %5234 = call float @dx.op.unary.f32(i32 7, float %5232)  ; Saturate(value)
  %5235 = fmul fast float %5234, %5008
  %5236 = fmul fast float %5234, %5234
  %5237 = fmul fast float %5236, %5220
  %5238 = call float @dx.op.unary.f32(i32 7, float %5237)  ; Saturate(value)
  %5239 = fmul fast float %5235, %5238
  %5240 = bitcast float %4998 to i32
  %5241 = ashr i32 %5240, 1
  %5242 = sub nsw i32 1597463007, %5241
  %5243 = bitcast i32 %5242 to float
  %5244 = fmul fast float %5243, %4995
  %5245 = fmul fast float %5243, %4996
  %5246 = fmul fast float %5243, %4997
  %5247 = fsub fast float %5244, %1340
  %5248 = fsub fast float %5245, %1341
  %5249 = fsub fast float %5246, %1342
  %5250 = call float @dx.op.dot3.f32(i32 55, float %5247, float %5248, float %5249, float %5247, float %5248, float %5249)  ; Dot3(ax,ay,az,bx,by,bz)
  %5251 = call float @dx.op.unary.f32(i32 25, float %5250)  ; Rsqrt(value)
  %5252 = fmul fast float %5247, %5251
  %5253 = fmul fast float %5248, %5251
  %5254 = fmul fast float %5249, %5251
  %5255 = call float @dx.op.dot3.f32(i32 55, float %1312, float %1313, float %1314, float %5252, float %5253, float %5254)  ; Dot3(ax,ay,az,bx,by,bz)
  %5256 = fmul fast float %5255, %5255
  %5257 = call float @dx.op.unary.f32(i32 6, float %5232)  ; FAbs(value)
  %5258 = fsub fast float 1.000000e+00, %1395
  %5259 = call float @dx.op.binary.f32(i32 35, float %5258, float 0x3F847AE140000000)  ; FMax(a,b)
  %5260 = fmul fast float %5259, %5259
  %5261 = fmul fast float %5260, %5260
  %5262 = fsub fast float 1.000000e+00, %5261
  %5263 = fmul fast float %1442, %1442
  %5264 = fmul fast float %5263, %5262
  %5265 = fadd fast float %5264, %5261
  %5266 = bitcast float %5265 to i32
  %5267 = ashr i32 %5266, 1
  %5268 = add nsw i32 %5267, 532487669
  %5269 = bitcast i32 %5268 to float
  %5270 = fadd fast float %5269, %1442
  %5271 = fmul fast float %5261, %5256
  %5272 = fsub fast float 1.000000e+00, %5256
  %5273 = fadd fast float %5272, %5271
  %5274 = fmul fast float %5257, %5257
  %5275 = fmul fast float %5274, %5262
  %5276 = fadd fast float %5275, %5261
  %5277 = bitcast float %5276 to i32
  %5278 = ashr i32 %5277, 1
  %5279 = add nsw i32 %5278, 532487669
  %5280 = bitcast i32 %5279 to float
  %5281 = fadd fast float %5280, %5257
  %5282 = fmul fast float %5273, %5273
  %5283 = fmul fast float %5282, %5270
  %5284 = fmul fast float %5283, %5281
  %5285 = fdiv fast float 1.000000e+00, %5284
  %5286 = bitcast float %5261 to i32
  %5287 = sitofp i32 %5286 to float
  %5288 = fmul fast float %5287, 0x3FE7F73180000000
  %5289 = fadd fast float %5288, 0x41AFE27C40000000
  %5290 = fptosi float %5289 to i32
  %5291 = bitcast i32 %5290 to float
  %5292 = fmul fast float %4963, 0x3FD80E9D60000000
  %5293 = fmul fast float %5292, %5243
  %5294 = fadd fast float %5291, %5293
  %5295 = bitcast float %5294 to i32
  %5296 = sub nsw i32 2129859010, %5295
  %5297 = bitcast i32 %5296 to float
  %5298 = fmul fast float %5261, %5285
  %5299 = fmul fast float %5298, %5291
  %5300 = fmul fast float %5299, %5297
  %5301 = call float @dx.op.unary.f32(i32 6, float %5233)  ; FAbs(value)
  %5302 = fsub fast float 1.000000e+00, %5301
  %5303 = bitcast float %5302 to i32
  %5304 = sitofp i32 %5303 to float
  %5305 = fmul fast float %5304, 5.000000e+00
  %5306 = fadd fast float %5305, 0xC1EFBF8940000000
  %5307 = fptosi float %5306 to i32
  %5308 = bitcast i32 %5307 to float
  %5309 = fmul fast float %5308, %2268
  %5310 = fmul fast float %5308, %2269
  %5311 = fmul fast float %5308, %2270
  %5312 = fadd fast float %5309, %1333
  %5313 = fadd fast float %5310, %1334
  %5314 = fadd fast float %5311, %1440
  %5315 = select i1 %2281, float %5301, float 0.000000e+00
  %5316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %58, float %2278, float %5315, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5317 = extractvalue %dx.types.ResRet.f32 %5316, 0
  %5318 = extractvalue %dx.types.ResRet.f32 %5316, 1
  %5319 = extractvalue %dx.types.ResRet.f32 %5316, 2
  %5320 = fadd fast float %5317, -5.000000e-01
  %5321 = fadd fast float %5318, -5.000000e-01
  %5322 = fadd fast float %5319, -5.000000e-01
  %5323 = fmul fast float %2293, %5320
  %5324 = fmul fast float %2297, %5321
  %5325 = fmul fast float %2301, %5322
  %5326 = fadd fast float %5312, %5323
  %5327 = fadd fast float %5313, %5324
  %5328 = fadd fast float %5314, %5325
  %5329 = call float @dx.op.unary.f32(i32 7, float %5326)  ; Saturate(value)
  %5330 = call float @dx.op.unary.f32(i32 7, float %5327)  ; Saturate(value)
  %5331 = call float @dx.op.unary.f32(i32 7, float %5328)  ; Saturate(value)
  %5332 = fmul fast float %5232, 9.843750e-01
  %5333 = fmul fast float %1395, 9.843750e-01
  %5334 = fadd fast float %5332, 7.812500e-03
  %5335 = fadd fast float %5333, 7.812500e-03
  %5336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %5334, float %5335, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5337 = extractvalue %dx.types.ResRet.f32 %5336, 2
  %5338 = extractvalue %dx.types.ResRet.f32 %5336, 3
  %5339 = select i1 %2281, float %5232, float 0.000000e+00
  %5340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %58, float %2278, float %5339, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5341 = extractvalue %dx.types.ResRet.f32 %5340, 0
  %5342 = extractvalue %dx.types.ResRet.f32 %5340, 1
  %5343 = extractvalue %dx.types.ResRet.f32 %5340, 2
  %5344 = fadd fast float %5341, -5.000000e-01
  %5345 = fadd fast float %5342, -5.000000e-01
  %5346 = fadd fast float %5343, -5.000000e-01
  %5347 = fmul fast float %2268, 4.000000e+00
  %5348 = fmul fast float %5347, %2280
  %5349 = fmul fast float %5348, %5344
  %5350 = fmul fast float %2269, 4.000000e+00
  %5351 = fmul fast float %5350, %2280
  %5352 = fmul fast float %5351, %5345
  %5353 = fmul fast float %2270, 4.000000e+00
  %5354 = fmul fast float %5353, %2280
  %5355 = fmul fast float %5354, %5346
  %5356 = fadd fast float %5349, %5337
  %5357 = fmul fast float %5356, %1333
  %5358 = fadd fast float %5357, %5338
  %5359 = fadd fast float %5352, %5337
  %5360 = fmul fast float %5359, %1334
  %5361 = fadd fast float %5360, %5338
  %5362 = fadd fast float %5355, %5337
  %5363 = fmul fast float %5362, %1440
  %5364 = fadd fast float %5363, %5338
  %5365 = call float @dx.op.unary.f32(i32 7, float %5358)  ; Saturate(value)
  %5366 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5367 = call float @dx.op.unary.f32(i32 7, float %5364)  ; Saturate(value)
  %5368 = call float @dx.op.binary.f32(i32 35, float %5366, float %5367)  ; FMax(a,b)
  %5369 = call float @dx.op.binary.f32(i32 35, float %5365, float %5368)  ; FMax(a,b)
  %5370 = fsub fast float 1.000000e+00, %5369
  %5371 = fsub fast float -0.000000e+00, %1312
  %5372 = fsub fast float -0.000000e+00, %1313
  %5373 = fsub fast float -0.000000e+00, %1314
  %5374 = call float @dx.op.dot3.f32(i32 55, float %5001, float %5002, float %5003, float %5371, float %5372, float %5373)  ; Dot3(ax,ay,az,bx,by,bz)
  %5375 = call float @dx.op.unary.f32(i32 7, float %5374)  ; Saturate(value)
  %5376 = fmul fast float %5375, 9.843750e-01
  %5377 = fadd fast float %5376, 7.812500e-03
  %5378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %5377, float %5335, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5379 = extractvalue %dx.types.ResRet.f32 %5378, 2
  %5380 = extractvalue %dx.types.ResRet.f32 %5378, 3
  %5381 = select i1 %2281, float %5375, float 0.000000e+00
  %5382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %58, float %2278, float %5381, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5383 = fmul fast float %1334, 0x4012D0A400000000
  %5384 = fadd fast float %5383, 0x3FDB6377A0000000
  %5385 = fmul fast float %5258, %5384
  %5386 = call float @dx.op.unary.f32(i32 7, float %5385)  ; Saturate(value)
  %5387 = fsub fast float %5244, %1447
  %5388 = fsub fast float %5245, %1448
  %5389 = fsub fast float %5246, %1449
  %5390 = call float @dx.op.dot3.f32(i32 55, float %5387, float %5388, float %5389, float %5387, float %5388, float %5389)  ; Dot3(ax,ay,az,bx,by,bz)
  %5391 = call float @dx.op.unary.f32(i32 25, float %5390)  ; Rsqrt(value)
  %5392 = fmul fast float %5387, %5391
  %5393 = fmul fast float %5388, %5391
  %5394 = fmul fast float %5389, %5391
  %5395 = call float @dx.op.dot3.f32(i32 55, float %5371, float %5372, float %5373, float %5392, float %5393, float %5394)  ; Dot3(ax,ay,az,bx,by,bz)
  %5396 = fmul fast float %5395, %5395
  %5397 = call float @dx.op.unary.f32(i32 6, float %5375)  ; FAbs(value)
  %5398 = call float @dx.op.binary.f32(i32 35, float %5386, float 0x3F847AE140000000)  ; FMax(a,b)
  %5399 = fmul fast float %5398, %5398
  %5400 = fmul fast float %5399, %5399
  %5401 = fsub fast float 1.000000e+00, %5400
  %5402 = fmul fast float %5400, %5396
  %5403 = fsub fast float 1.000000e+00, %5396
  %5404 = fadd fast float %5403, %5402
  %5405 = bitcast float %5400 to i32
  %5406 = sitofp i32 %5405 to float
  %5407 = fmul fast float %5406, 0x3FE7F73180000000
  %5408 = fadd fast float %5407, 0x41AFE27C40000000
  %5409 = fptosi float %5408 to i32
  %5410 = bitcast i32 %5409 to float
  br i1 %4993, label %5411, label %5465

; <label>:5411                                    ; preds = %5219
  %5412 = fmul fast float %5404, %5404
  %5413 = fmul fast float %5263, %5401
  %5414 = fadd fast float %5413, %5400
  %5415 = bitcast float %5414 to i32
  %5416 = ashr i32 %5415, 1
  %5417 = add nsw i32 %5416, 532487669
  %5418 = bitcast i32 %5417 to float
  %5419 = fadd fast float %5418, %1442
  %5420 = fmul fast float %5412, %5419
  %5421 = fmul fast float %5397, %5397
  %5422 = fmul fast float %5421, %5401
  %5423 = fadd fast float %5422, %5400
  %5424 = bitcast float %5423 to i32
  %5425 = ashr i32 %5424, 1
  %5426 = add nsw i32 %5425, 532487669
  %5427 = bitcast i32 %5426 to float
  %5428 = fadd fast float %5427, %5397
  %5429 = fmul fast float %5420, %5428
  %5430 = fdiv fast float 1.000000e+00, %5429
  %5431 = fmul fast float %5400, %5430
  %5432 = fmul fast float %5431, %5410
  %5433 = fadd fast float %5410, %5293
  %5434 = bitcast float %5433 to i32
  %5435 = sub nsw i32 2129859010, %5434
  %5436 = bitcast i32 %5435 to float
  %5437 = fmul fast float %5432, %5436
  %5438 = extractvalue %dx.types.ResRet.f32 %5382, 0
  %5439 = fadd fast float %5438, -5.000000e-01
  %5440 = fmul fast float %5348, %5439
  %5441 = fadd fast float %5440, %5379
  %5442 = fmul fast float %5441, %1333
  %5443 = fadd fast float %5442, %5380
  %5444 = call float @dx.op.unary.f32(i32 7, float %5443)  ; Saturate(value)
  %5445 = extractvalue %dx.types.ResRet.f32 %5382, 1
  %5446 = fadd fast float %5445, -5.000000e-01
  %5447 = fmul fast float %5351, %5446
  %5448 = fadd fast float %5447, %5379
  %5449 = fmul fast float %5448, %1334
  %5450 = fadd fast float %5449, %5380
  %5451 = call float @dx.op.unary.f32(i32 7, float %5450)  ; Saturate(value)
  %5452 = extractvalue %dx.types.ResRet.f32 %5382, 2
  %5453 = fadd fast float %5452, -5.000000e-01
  %5454 = fmul fast float %5354, %5453
  %5455 = fadd fast float %5454, %5379
  %5456 = fmul fast float %5455, %1440
  %5457 = fadd fast float %5456, %5380
  %5458 = call float @dx.op.unary.f32(i32 7, float %5457)  ; Saturate(value)
  %5459 = call float @dx.op.binary.f32(i32 35, float %5451, float %5458)  ; FMax(a,b)
  %5460 = call float @dx.op.binary.f32(i32 35, float %5444, float %5459)  ; FMax(a,b)
  %5461 = fsub fast float 1.000000e+00, %5460
  %5462 = fmul fast float %5375, %5008
  %5463 = fmul fast float %5462, %5461
  %5464 = fmul fast float %5463, %5437
  br label %5465

; <label>:5465                                    ; preds = %5411, %5219
  %5466 = phi float [ %5464, %5411 ], [ 0.000000e+00, %5219 ]
  %5467 = fmul fast float %5329, %5239
  %5468 = fmul fast float %5467, %5300
  %5469 = fmul fast float %5330, %5239
  %5470 = fmul fast float %5469, %5300
  %5471 = fmul fast float %5331, %5239
  %5472 = fmul fast float %5471, %5300
  %5473 = fadd fast float %5466, %5468
  %5474 = fadd fast float %5466, %5470
  %5475 = fadd fast float %5466, %5472
  %5476 = fmul fast float %5239, %5221
  %5477 = fmul fast float %5476, %5370
  %5478 = fmul fast float %5239, %5222
  %5479 = fmul fast float %5478, %5370
  %5480 = fmul fast float %5239, %5223
  %5481 = fmul fast float %5480, %5370
  %5482 = fadd fast float %5477, %4937
  %5483 = fadd fast float %5479, %4938
  %5484 = fadd fast float %5481, %4939
  %5485 = fmul fast float %5473, %5221
  %5486 = fmul fast float %5474, %5222
  %5487 = fmul fast float %5475, %5223
  %5488 = fadd fast float %5485, %4934
  %5489 = fadd fast float %5486, %4935
  %5490 = fadd fast float %5487, %4936
  br label %5067

; <label>:5491                                    ; preds = %5067
  br label %5492

; <label>:5492                                    ; preds = %5491, %4900
  %5493 = phi float [ %4902, %4900 ], [ %5068, %5491 ]
  %5494 = phi float [ %4903, %4900 ], [ %5069, %5491 ]
  %5495 = phi float [ %4904, %4900 ], [ %5070, %5491 ]
  %5496 = phi float [ %4905, %4900 ], [ %5071, %5491 ]
  %5497 = phi float [ %4906, %4900 ], [ %5072, %5491 ]
  %5498 = phi float [ %4907, %4900 ], [ %5073, %5491 ]
  %5499 = add i32 %4901, 1
  %5500 = icmp ugt i32 %5499, %4897
  br i1 %5500, label %5501, label %4900

; <label>:5501                                    ; preds = %5492
  br label %5502

; <label>:5502                                    ; preds = %5501, %4850, %4839
  %5503 = phi float [ %4841, %4839 ], [ %4841, %4850 ], [ %5493, %5501 ]
  %5504 = phi float [ %4842, %4839 ], [ %4842, %4850 ], [ %5494, %5501 ]
  %5505 = phi float [ %4843, %4839 ], [ %4843, %4850 ], [ %5495, %5501 ]
  %5506 = phi float [ %4844, %4839 ], [ %4844, %4850 ], [ %5496, %5501 ]
  %5507 = phi float [ %4845, %4839 ], [ %4845, %4850 ], [ %5497, %5501 ]
  %5508 = phi float [ %4846, %4839 ], [ %4846, %4850 ], [ %5498, %5501 ]
  %5509 = and i32 %1391, 255
  %5510 = uitofp i32 %5509 to float
  %5511 = fmul fast float %5510, 0x3F70101020000000
  %5512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5513 = extractvalue %dx.types.CBufRet.f32 %5512, 2
  %5514 = extractvalue %dx.types.CBufRet.f32 %5512, 3
  %5515 = fmul fast float %113, %5513
  %5516 = fmul fast float %115, %5514
  %5517 = fsub fast float 1.000000e+00, %5515
  %5518 = fsub fast float 1.000000e+00, %5516
  %5519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5520 = extractvalue %dx.types.CBufRet.f32 %5519, 0
  %5521 = extractvalue %dx.types.CBufRet.f32 %5519, 1
  %5522 = extractvalue %dx.types.CBufRet.f32 %5519, 2
  %5523 = fmul fast float %5517, %5520
  %5524 = fmul fast float %5517, %5521
  %5525 = fmul fast float %5517, %5522
  %5526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5527 = extractvalue %dx.types.CBufRet.f32 %5526, 0
  %5528 = extractvalue %dx.types.CBufRet.f32 %5526, 1
  %5529 = extractvalue %dx.types.CBufRet.f32 %5526, 2
  %5530 = fmul fast float %5518, %5527
  %5531 = fmul fast float %5518, %5528
  %5532 = fmul fast float %5518, %5529
  %5533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5534 = extractvalue %dx.types.CBufRet.f32 %5533, 0
  %5535 = extractvalue %dx.types.CBufRet.f32 %5533, 1
  %5536 = extractvalue %dx.types.CBufRet.f32 %5533, 2
  %5537 = fadd fast float %5530, %5534
  %5538 = fadd fast float %5537, %5523
  %5539 = fadd fast float %5531, %5535
  %5540 = fadd fast float %5539, %5524
  %5541 = fadd fast float %5532, %5536
  %5542 = fadd fast float %5541, %5525
  %5543 = fmul fast float %5538, %78
  %5544 = fmul fast float %5540, %78
  %5545 = fmul fast float %5542, %78
  %5546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5547 = extractvalue %dx.types.CBufRet.f32 %5546, 2
  %5548 = extractvalue %dx.types.CBufRet.f32 %5546, 3
  %5549 = fmul fast float %5547, %88
  %5550 = fmul fast float %5548, %89
  %5551 = fptoui float %88 to i32
  %5552 = fptoui float %89 to i32
  %5553 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %43, i32 0, i32 %5551, i32 %5552, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5554 = extractvalue %dx.types.ResRet.f32 %5553, 0
  %5555 = fcmp fast olt float %5554, -1.000000e+00
  %5556 = fcmp fast ogt float %5554, -1.000000e+00
  %5557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5558 = extractvalue %dx.types.CBufRet.f32 %5557, 1
  %5559 = select i1 %5556, float %5558, float 1.000000e+00
  %5560 = fadd fast float %5554, 1.000000e+00
  %5561 = fmul fast float %5559, %5560
  %5562 = call float @dx.op.unary.f32(i32 6, float %5561)  ; FAbs(value)
  %5563 = fsub fast float %5562, %78
  %5564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %5565 = extractvalue %dx.types.CBufRet.f32 %5564, 2
  %5566 = fsub fast float %5563, %5565
  %5567 = extractvalue %dx.types.CBufRet.f32 %5564, 3
  %5568 = fmul fast float %5567, %5511
  %5569 = fmul fast float %5568, %5566
  %5570 = call float @dx.op.unary.f32(i32 7, float %5569)  ; Saturate(value)
  %5571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 356)  ; CBufferLoadLegacy(handle,regIndex)
  %5572 = extractvalue %dx.types.CBufRet.f32 %5571, 1
  %5573 = extractvalue %dx.types.CBufRet.f32 %5571, 0
  %5574 = extractvalue %dx.types.CBufRet.f32 %5571, 3
  %5575 = extractvalue %dx.types.CBufRet.f32 %5571, 2
  %5576 = select i1 %5555, float %5572, float %5574
  %5577 = select i1 %5555, float %5573, float %5575
  %5578 = fsub fast float %5563, %5577
  %5579 = fmul fast float %5578, %5576
  %5580 = fsub fast float 1.000000e+00, %5511
  %5581 = fadd fast float %5580, %5579
  %5582 = call float @dx.op.unary.f32(i32 7, float %5581)  ; Saturate(value)
  %5583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %5584 = extractvalue %dx.types.CBufRet.f32 %5583, 1
  %5585 = extractvalue %dx.types.CBufRet.f32 %5583, 2
  %5586 = fsub fast float 1.000000e+00, %5550
  %5587 = fsub fast float 1.000000e+00, %5549
  %5588 = fmul fast float %5550, %5549
  %5589 = fmul fast float %5588, %5586
  %5590 = fmul fast float %5589, %5587
  %5591 = fmul fast float %5590, %5584
  %5592 = call float @dx.op.unary.f32(i32 23, float %5591)  ; Log(value)
  %5593 = fmul fast float %5592, %5585
  %5594 = call float @dx.op.unary.f32(i32 21, float %5593)  ; Exp(value)
  %5595 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  %5596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 66)  ; CBufferLoadLegacy(handle,regIndex)
  %5597 = extractvalue %dx.types.CBufRet.f32 %5596, 2
  %5598 = extractvalue %dx.types.CBufRet.f32 %5596, 3
  %5599 = extractvalue %dx.types.CBufRet.f32 %5596, 0
  %5600 = fsub fast float %78, %5599
  %5601 = extractvalue %dx.types.CBufRet.f32 %5583, 0
  %5602 = fmul fast float %5600, %5601
  %5603 = call float @dx.op.unary.f32(i32 7, float %5602)  ; Saturate(value)
  %5604 = fsub fast float %5598, %5597
  %5605 = fmul fast float %5603, %5604
  %5606 = fadd fast float %5605, %5597
  %5607 = fmul fast float %5606, %5570
  %5608 = fmul fast float %5607, %1312
  %5609 = fmul fast float %5607, %1313
  %5610 = fadd fast float %5608, %5543
  %5611 = fadd fast float %5609, %5544
  %5612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5613 = extractvalue %dx.types.CBufRet.f32 %5612, 0
  %5614 = extractvalue %dx.types.CBufRet.f32 %5612, 1
  %5615 = extractvalue %dx.types.CBufRet.f32 %5612, 2
  %5616 = extractvalue %dx.types.CBufRet.f32 %5612, 3
  %5617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5618 = extractvalue %dx.types.CBufRet.f32 %5617, 0
  %5619 = extractvalue %dx.types.CBufRet.f32 %5617, 1
  %5620 = extractvalue %dx.types.CBufRet.f32 %5617, 2
  %5621 = extractvalue %dx.types.CBufRet.f32 %5617, 3
  %5622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5623 = extractvalue %dx.types.CBufRet.f32 %5622, 0
  %5624 = extractvalue %dx.types.CBufRet.f32 %5622, 1
  %5625 = extractvalue %dx.types.CBufRet.f32 %5622, 2
  %5626 = extractvalue %dx.types.CBufRet.f32 %5622, 3
  %5627 = fmul fast float %5610, %5613
  %5628 = call float @dx.op.tertiary.f32(i32 46, float %5611, float %5614, float %5627)  ; FMad(a,b,c)
  %5629 = call float @dx.op.tertiary.f32(i32 46, float %5545, float %5615, float %5628)  ; FMad(a,b,c)
  %5630 = fadd fast float %5629, %5616
  %5631 = fmul fast float %5610, %5618
  %5632 = call float @dx.op.tertiary.f32(i32 46, float %5611, float %5619, float %5631)  ; FMad(a,b,c)
  %5633 = call float @dx.op.tertiary.f32(i32 46, float %5545, float %5620, float %5632)  ; FMad(a,b,c)
  %5634 = fadd fast float %5633, %5621
  %5635 = fmul fast float %5610, %5623
  %5636 = call float @dx.op.tertiary.f32(i32 46, float %5611, float %5624, float %5635)  ; FMad(a,b,c)
  %5637 = call float @dx.op.tertiary.f32(i32 46, float %5545, float %5625, float %5636)  ; FMad(a,b,c)
  %5638 = fadd fast float %5637, %5626
  %5639 = fdiv fast float %5630, %5638
  %5640 = fdiv fast float %5634, %5638
  %5641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5642 = extractvalue %dx.types.CBufRet.f32 %5641, 0
  %5643 = extractvalue %dx.types.CBufRet.f32 %5641, 1
  %5644 = fmul fast float %5642, %5639
  %5645 = fmul fast float %5643, %5640
  %5646 = extractvalue %dx.types.CBufRet.f32 %5641, 2
  %5647 = extractvalue %dx.types.CBufRet.f32 %5641, 3
  %5648 = fadd fast float %5644, %5646
  %5649 = fadd fast float %5645, %5647
  %5650 = call float @dx.op.unary.f32(i32 7, float %5648)  ; Saturate(value)
  %5651 = call float @dx.op.unary.f32(i32 7, float %5649)  ; Saturate(value)
  %5652 = fsub fast float %5650, %5549
  %5653 = fsub fast float %5651, %5550
  %5654 = fmul fast float %5652, %5595
  %5655 = fmul fast float %5653, %5595
  %5656 = fadd fast float %5654, %5549
  %5657 = fadd fast float %5655, %5550
  %5658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %59, float %5656, float %5657, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5659 = extractvalue %dx.types.ResRet.f32 %5658, 0
  %5660 = fcmp fast ogt float %5659, -1.000000e+00
  %5661 = select i1 %5660, float %5558, float 1.000000e+00
  %5662 = fadd fast float %5659, 1.000000e+00
  %5663 = fmul fast float %5661, %5662
  %5664 = call float @dx.op.unary.f32(i32 6, float %5663)  ; FAbs(value)
  %5665 = fcmp fast ugt float %5664, %5638
  br i1 %5665, label %5667, label %5666

; <label>:5666                                    ; preds = %5502
  br label %5667

; <label>:5667                                    ; preds = %5666, %5502
  %5668 = phi float [ %5549, %5666 ], [ %5656, %5502 ]
  %5669 = phi float [ %5550, %5666 ], [ %5657, %5502 ]
  %5670 = phi float [ %78, %5666 ], [ %5638, %5502 ]
  %5671 = phi float [ %5562, %5666 ], [ %5664, %5502 ]
  br i1 %105, label %5672, label %6108

; <label>:5672                                    ; preds = %5667
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 0
  %5675 = extractvalue %dx.types.CBufRet.f32 %5673, 1
  %5676 = extractvalue %dx.types.CBufRet.f32 %5673, 2
  %5677 = fcmp fast oge float %5675, %5670
  %5678 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5679 = extractvalue %dx.types.CBufRet.i32 %5678, 0
  %5680 = and i32 %5679, 65536
  %5681 = icmp ne i32 %5680, 0
  %5682 = and i1 %5677, %5681
  br i1 %5682, label %5683, label %5764

; <label>:5683                                    ; preds = %5672
  %5684 = extractvalue %dx.types.CBufRet.f32 %5512, 0
  %5685 = extractvalue %dx.types.CBufRet.f32 %5512, 1
  %5686 = fmul fast float %5684, %5668
  %5687 = fmul fast float %5685, %5669
  %5688 = fmul fast float %5686, %5513
  %5689 = fmul fast float %5687, %5514
  %5690 = call float @dx.op.unary.f32(i32 7, float %5688)  ; Saturate(value)
  %5691 = call float @dx.op.unary.f32(i32 7, float %5689)  ; Saturate(value)
  %5692 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %58, float %5690, float %5691, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5693 = extractvalue %dx.types.ResRet.f32 %5692, 0
  %5694 = extractvalue %dx.types.ResRet.f32 %5692, 1
  %5695 = extractvalue %dx.types.ResRet.f32 %5692, 2
  %5696 = extractvalue %dx.types.ResRet.f32 %5692, 3
  %5697 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %58, float %5690, float %5691, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5698 = extractvalue %dx.types.ResRet.f32 %5697, 0
  %5699 = extractvalue %dx.types.ResRet.f32 %5697, 1
  %5700 = extractvalue %dx.types.ResRet.f32 %5697, 2
  %5701 = extractvalue %dx.types.ResRet.f32 %5697, 3
  %5702 = call float @dx.op.binary.f32(i32 35, float %5694, float %5695)  ; FMax(a,b)
  %5703 = call float @dx.op.binary.f32(i32 35, float %5693, float %5702)  ; FMax(a,b)
  %5704 = call float @dx.op.binary.f32(i32 35, float %5703, float %5696)  ; FMax(a,b)
  %5705 = call float @dx.op.binary.f32(i32 36, float %5699, float %5700)  ; FMin(a,b)
  %5706 = call float @dx.op.binary.f32(i32 36, float %5698, float %5705)  ; FMin(a,b)
  %5707 = call float @dx.op.binary.f32(i32 36, float %5706, float %5701)  ; FMin(a,b)
  %5708 = fmul fast float %5704, 2.550000e+02
  %5709 = fadd fast float %5708, 0x3F70101020000000
  %5710 = fptoui float %5709 to i32
  %5711 = fmul fast float %5707, 2.550000e+02
  %5712 = fadd fast float %5711, 0x3F70101020000000
  %5713 = fptoui float %5712 to i32
  %5714 = icmp ult i32 %5710, %5713
  br i1 %5714, label %5715, label %5764

; <label>:5715                                    ; preds = %5683
  %5716 = fadd fast float %5671, -4.000000e+00
  %5717 = call float @dx.op.binary.f32(i32 35, float %5716, float 0.000000e+00)  ; FMax(a,b)
  %5718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5719 = extractvalue %dx.types.CBufRet.f32 %5718, 0
  %5720 = fadd fast float %5719, %5717
  %5721 = extractvalue %dx.types.CBufRet.f32 %5718, 2
  %5722 = fmul fast float %5720, %5721
  %5723 = call float @dx.op.unary.f32(i32 23, float %5722)  ; Log(value)
  %5724 = extractvalue %dx.types.CBufRet.f32 %5718, 3
  %5725 = fmul fast float %5724, %5723
  %5726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5727 = extractvalue %dx.types.CBufRet.f32 %5726, 2
  %5728 = fmul fast float %5725, %5727
  %5729 = call float @dx.op.unary.f32(i32 7, float %5728)  ; Saturate(value)
  %5730 = uitofp i32 %5710 to float
  %5731 = uitofp i32 %5713 to float
  %5732 = fadd fast float %5730, 5.000000e-01
  %5733 = fadd fast float %5731, 5.000000e-01
  %5734 = fmul fast float %5727, %5732
  %5735 = fmul fast float %5727, %5733
  %5736 = fadd fast float %5734, 0x3F0FFB4800000000
  %5737 = fadd fast float %5735, 0xBF0FFB4800000000
  %5738 = call float @dx.op.binary.f32(i32 35, float %5729, float %5736)  ; FMax(a,b)
  %5739 = call float @dx.op.binary.f32(i32 36, float %5738, float %5737)  ; FMin(a,b)
  %5740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5741 = extractvalue %dx.types.CBufRet.f32 %5740, 1
  %5742 = extractvalue %dx.types.CBufRet.f32 %5740, 2
  %5743 = extractvalue %dx.types.CBufRet.f32 %5740, 0
  %5744 = fmul fast float %5741, %5739
  %5745 = fadd fast float %5743, %5744
  %5746 = fadd fast float %5743, %5742
  %5747 = fsub fast float %5741, %5742
  %5748 = fadd fast float %5747, %5743
  %5749 = call float @dx.op.binary.f32(i32 35, float %5745, float %5746)  ; FMax(a,b)
  %5750 = call float @dx.op.binary.f32(i32 36, float %5749, float %5748)  ; FMin(a,b)
  %5751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %56, float %5690, float %5691, float %5750, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5752 = extractvalue %dx.types.ResRet.f32 %5751, 0
  %5753 = extractvalue %dx.types.ResRet.f32 %5751, 1
  %5754 = extractvalue %dx.types.ResRet.f32 %5751, 2
  %5755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %56, float %5690, float %5691, float %5750, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5756 = extractvalue %dx.types.ResRet.f32 %5755, 0
  %5757 = extractvalue %dx.types.ResRet.f32 %5755, 1
  %5758 = extractvalue %dx.types.ResRet.f32 %5755, 2
  %5759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5760 = extractvalue %dx.types.CBufRet.f32 %5759, 1
  %5761 = fmul fast float %5760, %5756
  %5762 = fmul fast float %5760, %5757
  %5763 = fmul fast float %5760, %5758
  br label %5764

; <label>:5764                                    ; preds = %5715, %5683, %5672
  %5765 = phi float [ 0.000000e+00, %5672 ], [ %5761, %5715 ], [ 0.000000e+00, %5683 ]
  %5766 = phi float [ 0.000000e+00, %5672 ], [ %5762, %5715 ], [ 0.000000e+00, %5683 ]
  %5767 = phi float [ 0.000000e+00, %5672 ], [ %5763, %5715 ], [ 0.000000e+00, %5683 ]
  %5768 = phi float [ 1.000000e+00, %5672 ], [ %5752, %5715 ], [ 1.000000e+00, %5683 ]
  %5769 = phi float [ 1.000000e+00, %5672 ], [ %5753, %5715 ], [ 1.000000e+00, %5683 ]
  %5770 = phi float [ 1.000000e+00, %5672 ], [ %5754, %5715 ], [ 1.000000e+00, %5683 ]
  %5771 = fcmp fast olt float %5511, 1.000000e+00
  %5772 = fcmp fast olt float %5674, %5671
  %5773 = or i1 %5771, %5772
  br i1 %5773, label %5774, label %5865

; <label>:5774                                    ; preds = %5764
  %5775 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.i32 %5775, 0
  %5777 = call i32 @dx.op.binary.i32(i32 40, i32 %187, i32 %5776)  ; UMin(a,b)
  %5778 = mul i32 %5777, 36
  %5779 = add i32 %5778, 4
  %5780 = add i32 %5779, %288
  %5781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5780, i32 undef)  ; BufferLoad(srv,index,wot)
  %5782 = extractvalue %dx.types.ResRet.i32 %5781, 0
  %5783 = and i32 %5782, 32767
  %5784 = mul nuw nsw i32 %5783, 928
  %5785 = add nuw nsw i32 %5784, 44
  %5786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %5785, i32 undef)  ; BufferLoad(srv,index,wot)
  %5787 = extractvalue %dx.types.ResRet.f32 %5786, 0
  %5788 = add nuw nsw i32 %5784, 48
  %5789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %5788, i32 undef)  ; BufferLoad(srv,index,wot)
  %5790 = extractvalue %dx.types.ResRet.f32 %5789, 0
  %5791 = extractvalue %dx.types.ResRet.f32 %5789, 1
  %5792 = extractvalue %dx.types.ResRet.f32 %5789, 2
  %5793 = add nuw nsw i32 %5784, 60
  %5794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %5793, i32 undef)  ; BufferLoad(srv,index,wot)
  %5795 = extractvalue %dx.types.ResRet.f32 %5794, 0
  %5796 = extractvalue %dx.types.ResRet.f32 %5794, 1
  %5797 = extractvalue %dx.types.ResRet.f32 %5794, 2
  %5798 = fmul fast float %5790, 0x3F847AE140000000
  %5799 = fmul fast float %5791, 0x3F847AE140000000
  %5800 = fmul fast float %5792, 0x3F847AE140000000
  %5801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5802 = extractvalue %dx.types.CBufRet.f32 %5801, 0
  %5803 = extractvalue %dx.types.CBufRet.f32 %5801, 1
  %5804 = extractvalue %dx.types.CBufRet.f32 %5801, 2
  %5805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5806 = extractvalue %dx.types.CBufRet.f32 %5805, 0
  %5807 = extractvalue %dx.types.CBufRet.f32 %5805, 1
  %5808 = call float @dx.op.dot3.f32(i32 55, float %5802, float %5803, float %5804, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5809 = select i1 %1435, float %5806, float %5802
  %5810 = select i1 %1435, float %5808, float %5803
  %5811 = select i1 %1435, float %5807, float %5804
  %5812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5813 = extractvalue %dx.types.CBufRet.f32 %5812, 0
  %5814 = extractvalue %dx.types.CBufRet.f32 %5812, 1
  %5815 = extractvalue %dx.types.CBufRet.f32 %5812, 2
  %5816 = fadd fast float %5795, %5790
  %5817 = fmul fast float %5816, 0x3F847AE140000000
  %5818 = fadd fast float %5796, %5791
  %5819 = fmul fast float %5818, 0x3F847AE140000000
  %5820 = fadd fast float %5797, %5792
  %5821 = fmul fast float %5820, 0x3F847AE140000000
  %5822 = call float @dx.op.dot3.f32(i32 55, float %5813, float %5814, float %5815, float %1340, float %1341, float %1342)  ; Dot3(ax,ay,az,bx,by,bz)
  %5823 = fcmp fast ogt float %5787, 0.000000e+00
  %5824 = select i1 %5823, float 1.000000e+00, float -1.000000e+00
  %5825 = fmul fast float %5824, 5.000000e-01
  %5826 = fmul fast float %5825, %5822
  %5827 = fmul fast float %5824, %5787
  %5828 = fadd fast float %5826, 4.921875e-01
  %5829 = fadd fast float %5827, -3.125000e-02
  %5830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %5828, float 0x3FB25F3060000000, float %5829, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5831 = extractvalue %dx.types.ResRet.f32 %5830, 0
  %5832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %5833 = extractvalue %dx.types.CBufRet.f32 %5832, 0
  %5834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %5835 = extractvalue %dx.types.CBufRet.f32 %5834, 0
  %5836 = fmul fast float %5835, %5833
  %5837 = extractvalue %dx.types.CBufRet.f32 %5834, 1
  %5838 = fadd fast float %5836, %5837
  %5839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %5840 = extractvalue %dx.types.CBufRet.f32 %5839, 0
  %5841 = fmul fast float %5840, %4840
  %5842 = extractvalue %dx.types.CBufRet.f32 %5839, 1
  %5843 = fadd fast float %5841, %5842
  %5844 = call float @dx.op.unary.f32(i32 7, float %5843)  ; Saturate(value)
  %5845 = extractvalue %dx.types.CBufRet.f32 %5832, 3
  %5846 = extractvalue %dx.types.CBufRet.f32 %5834, 2
  %5847 = fmul fast float %5846, %5845
  %5848 = extractvalue %dx.types.CBufRet.f32 %5834, 3
  %5849 = fadd fast float %5847, %5848
  %5850 = fmul fast float %5831, 0x400921FB60000000
  %5851 = fmul fast float %5850, %5838
  %5852 = fmul fast float %5851, %5844
  %5853 = fmul fast float %5809, %5798
  %5854 = fmul fast float %5853, %5852
  %5855 = fmul fast float %5810, %5799
  %5856 = fmul fast float %5855, %5852
  %5857 = fmul fast float %5811, %5800
  %5858 = fmul fast float %5857, %5852
  %5859 = fmul fast float %5798, %2265
  %5860 = fmul fast float %5859, %5849
  %5861 = fmul fast float %5799, %2266
  %5862 = fmul fast float %5861, %5849
  %5863 = fmul fast float %5800, %2267
  %5864 = fmul fast float %5863, %5849
  br label %5865

; <label>:5865                                    ; preds = %5774, %5764
  %5866 = phi float [ %5817, %5774 ], [ 0.000000e+00, %5764 ]
  %5867 = phi float [ %5819, %5774 ], [ 0.000000e+00, %5764 ]
  %5868 = phi float [ %5821, %5774 ], [ 0.000000e+00, %5764 ]
  %5869 = phi float [ %5854, %5774 ], [ 0.000000e+00, %5764 ]
  %5870 = phi float [ %5856, %5774 ], [ 0.000000e+00, %5764 ]
  %5871 = phi float [ %5858, %5774 ], [ 0.000000e+00, %5764 ]
  %5872 = phi float [ %5860, %5774 ], [ 0.000000e+00, %5764 ]
  %5873 = phi float [ %5862, %5774 ], [ 0.000000e+00, %5764 ]
  %5874 = phi float [ %5864, %5774 ], [ 0.000000e+00, %5764 ]
  %5875 = call float @dx.op.binary.f32(i32 35, float %5866, float 0x3F10000000000000)  ; FMax(a,b)
  %5876 = call float @dx.op.binary.f32(i32 35, float %5867, float 0x3F10000000000000)  ; FMax(a,b)
  %5877 = call float @dx.op.binary.f32(i32 35, float %5868, float 0x3F10000000000000)  ; FMax(a,b)
  %5878 = fdiv fast float 1.000000e+00, %5875
  %5879 = fdiv fast float 1.000000e+00, %5876
  %5880 = fdiv fast float 1.000000e+00, %5877
  %5881 = fmul fast float %5866, 0xBFF7154760000000
  %5882 = fmul fast float %5867, 0xBFF7154760000000
  %5883 = fmul fast float %5868, 0xBFF7154760000000
  %5884 = extractvalue %dx.types.CBufRet.f32 %5673, 3
  %5885 = call float @dx.op.dot3.f32(i32 55, float %5878, float %5879, float %5880, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5886 = fmul fast float %5884, %5885
  %5887 = call float @dx.op.binary.f32(i32 35, float %5675, float %5670)  ; FMax(a,b)
  %5888 = fsub fast float %5671, %5887
  %5889 = call float @dx.op.binary.f32(i32 35, float %5888, float 0.000000e+00)  ; FMax(a,b)
  %5890 = fsub fast float %5671, %5670
  %5891 = call float @dx.op.binary.f32(i32 35, float %5890, float 0.000000e+00)  ; FMax(a,b)
  %5892 = call float @dx.op.binary.f32(i32 36, float %5891, float %5886)  ; FMin(a,b)
  %5893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %5894 = extractvalue %dx.types.CBufRet.f32 %5893, 0
  %5895 = fmul fast float %5894, %5892
  %5896 = fmul fast float %5895, %5881
  %5897 = fmul fast float %5895, %5882
  %5898 = fmul fast float %5895, %5883
  %5899 = call float @dx.op.unary.f32(i32 21, float %5896)  ; Exp(value)
  %5900 = call float @dx.op.unary.f32(i32 21, float %5897)  ; Exp(value)
  %5901 = call float @dx.op.unary.f32(i32 21, float %5898)  ; Exp(value)
  %5902 = fmul fast float %5899, %5869
  %5903 = fmul fast float %5900, %5870
  %5904 = fmul fast float %5901, %5871
  %5905 = extractvalue %dx.types.CBufRet.f32 %5893, 1
  %5906 = fmul fast float %5905, %5892
  %5907 = fmul fast float %5906, %5881
  %5908 = fmul fast float %5906, %5882
  %5909 = fmul fast float %5906, %5883
  %5910 = call float @dx.op.unary.f32(i32 21, float %5907)  ; Exp(value)
  %5911 = call float @dx.op.unary.f32(i32 21, float %5908)  ; Exp(value)
  %5912 = call float @dx.op.unary.f32(i32 21, float %5909)  ; Exp(value)
  %5913 = fmul fast float %5910, %5872
  %5914 = fmul fast float %5911, %5873
  %5915 = fmul fast float %5912, %5874
  %5916 = fadd fast float %5913, %5902
  %5917 = fadd fast float %5914, %5903
  %5918 = fadd fast float %5915, %5904
  %5919 = fmul fast float %5889, %5881
  %5920 = fmul fast float %5889, %5882
  %5921 = fmul fast float %5889, %5883
  %5922 = call float @dx.op.unary.f32(i32 21, float %5919)  ; Exp(value)
  %5923 = call float @dx.op.unary.f32(i32 21, float %5920)  ; Exp(value)
  %5924 = call float @dx.op.unary.f32(i32 21, float %5921)  ; Exp(value)
  %5925 = call float @dx.op.unary.f32(i32 7, float %5922)  ; Saturate(value)
  %5926 = call float @dx.op.unary.f32(i32 7, float %5923)  ; Saturate(value)
  %5927 = call float @dx.op.unary.f32(i32 7, float %5924)  ; Saturate(value)
  %5928 = fmul fast float %5925, %5916
  %5929 = fmul fast float %5926, %5917
  %5930 = fmul fast float %5927, %5918
  %5931 = fsub fast float %5916, %5928
  %5932 = fsub fast float %5917, %5929
  %5933 = fsub fast float %5918, %5930
  %5934 = fmul fast float %5878, %5768
  %5935 = fmul fast float %5934, %5931
  %5936 = fmul fast float %5879, %5769
  %5937 = fmul fast float %5936, %5932
  %5938 = fmul fast float %5880, %5770
  %5939 = fmul fast float %5938, %5933
  %5940 = fadd fast float %5935, %5765
  %5941 = fadd fast float %5937, %5766
  %5942 = fadd fast float %5939, %5767
  %5943 = fmul fast float %5925, %5768
  %5944 = fmul fast float %5926, %5769
  %5945 = fmul fast float %5927, %5770
  %5946 = fmul fast float %5891, %5881
  %5947 = fmul fast float %5891, %5882
  %5948 = fmul fast float %5891, %5883
  %5949 = call float @dx.op.unary.f32(i32 21, float %5946)  ; Exp(value)
  %5950 = call float @dx.op.unary.f32(i32 21, float %5947)  ; Exp(value)
  %5951 = call float @dx.op.unary.f32(i32 21, float %5948)  ; Exp(value)
  %5952 = call float @dx.op.unary.f32(i32 7, float %5949)  ; Saturate(value)
  %5953 = call float @dx.op.unary.f32(i32 7, float %5950)  ; Saturate(value)
  %5954 = call float @dx.op.unary.f32(i32 7, float %5951)  ; Saturate(value)
  %5955 = fmul fast float %5952, %5916
  %5956 = fmul fast float %5953, %5917
  %5957 = fmul fast float %5954, %5918
  %5958 = fsub fast float %5916, %5955
  %5959 = fsub fast float %5917, %5956
  %5960 = fsub fast float %5918, %5957
  %5961 = fmul fast float %5958, %5878
  %5962 = fmul fast float %5959, %5879
  %5963 = fmul fast float %5960, %5880
  %5964 = fsub fast float %5670, %5674
  %5965 = fmul fast float %5676, %5964
  %5966 = call float @dx.op.unary.f32(i32 7, float %5965)  ; Saturate(value)
  %5967 = fmul fast float %5966, %5966
  %5968 = fmul fast float %5966, 2.000000e+00
  %5969 = fsub fast float 3.000000e+00, %5968
  %5970 = fmul fast float %5967, %5969
  %5971 = fsub fast float %5961, %5940
  %5972 = fsub fast float %5962, %5941
  %5973 = fsub fast float %5963, %5942
  %5974 = fmul fast float %5970, %5971
  %5975 = fmul fast float %5970, %5972
  %5976 = fmul fast float %5970, %5973
  %5977 = fadd fast float %5974, %5940
  %5978 = fadd fast float %5975, %5941
  %5979 = fadd fast float %5976, %5942
  %5980 = fsub fast float %5952, %5943
  %5981 = fsub fast float %5953, %5944
  %5982 = fsub fast float %5954, %5945
  %5983 = fmul fast float %5970, %5980
  %5984 = fmul fast float %5970, %5981
  %5985 = fmul fast float %5970, %5982
  %5986 = fadd fast float %5983, %5943
  %5987 = fadd fast float %5984, %5944
  %5988 = fadd fast float %5985, %5945
  br i1 %5771, label %5989, label %6057

; <label>:5989                                    ; preds = %5865
  %5990 = extractvalue %dx.types.CBufRet.f32 %5893, 3
  %5991 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5990)  ; Dot3(ax,ay,az,bx,by,bz)
  %5992 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1437, float %1438, float %1439)  ; Dot3(ax,ay,az,bx,by,bz)
  %5993 = fdiv fast float 1.000000e+00, %5992
  %5994 = fmul fast float %5993, %5991
  %5995 = fcmp ogt float %1342, -0.000000e+00
  %5996 = select i1 %5995, float %5990, float %5994
  %5997 = call float @dx.op.binary.f32(i32 36, float %5996, float %5886)  ; FMin(a,b)
  %5998 = fmul fast float %5894, %5997
  %5999 = fmul fast float %5998, %5881
  %6000 = fmul fast float %5998, %5882
  %6001 = fmul fast float %5998, %5883
  %6002 = call float @dx.op.unary.f32(i32 21, float %5999)  ; Exp(value)
  %6003 = call float @dx.op.unary.f32(i32 21, float %6000)  ; Exp(value)
  %6004 = call float @dx.op.unary.f32(i32 21, float %6001)  ; Exp(value)
  %6005 = fmul fast float %6002, %5869
  %6006 = fmul fast float %6003, %5870
  %6007 = fmul fast float %6004, %5871
  %6008 = fmul fast float %5905, %5997
  %6009 = fmul fast float %6008, %5881
  %6010 = fmul fast float %6008, %5882
  %6011 = fmul fast float %6008, %5883
  %6012 = call float @dx.op.unary.f32(i32 21, float %6009)  ; Exp(value)
  %6013 = call float @dx.op.unary.f32(i32 21, float %6010)  ; Exp(value)
  %6014 = call float @dx.op.unary.f32(i32 21, float %6011)  ; Exp(value)
  %6015 = fmul fast float %6012, %5872
  %6016 = fmul fast float %6013, %5873
  %6017 = fmul fast float %6014, %5874
  %6018 = fadd fast float %6015, %6005
  %6019 = fadd fast float %6016, %6006
  %6020 = fadd fast float %6017, %6007
  %6021 = fmul fast float %5996, %5881
  %6022 = fmul fast float %5996, %5882
  %6023 = fmul fast float %5996, %5883
  %6024 = call float @dx.op.unary.f32(i32 21, float %6021)  ; Exp(value)
  %6025 = call float @dx.op.unary.f32(i32 21, float %6022)  ; Exp(value)
  %6026 = call float @dx.op.unary.f32(i32 21, float %6023)  ; Exp(value)
  %6027 = call float @dx.op.unary.f32(i32 7, float %6024)  ; Saturate(value)
  %6028 = call float @dx.op.unary.f32(i32 7, float %6025)  ; Saturate(value)
  %6029 = call float @dx.op.unary.f32(i32 7, float %6026)  ; Saturate(value)
  %6030 = fmul fast float %6027, %6018
  %6031 = fmul fast float %6028, %6019
  %6032 = fmul fast float %6029, %6020
  %6033 = fsub fast float %6018, %6030
  %6034 = fsub fast float %6019, %6031
  %6035 = fsub fast float %6020, %6032
  %6036 = fmul fast float %6033, %5878
  %6037 = fmul fast float %6034, %5879
  %6038 = fmul fast float %6035, %5880
  %6039 = fsub fast float %5977, %6036
  %6040 = fsub fast float %5978, %6037
  %6041 = fsub fast float %5979, %6038
  %6042 = fmul fast float %6039, %5511
  %6043 = fmul fast float %6040, %5511
  %6044 = fmul fast float %6041, %5511
  %6045 = fadd fast float %6042, %6036
  %6046 = fadd fast float %6043, %6037
  %6047 = fadd fast float %6044, %6038
  %6048 = fsub fast float %5986, %6027
  %6049 = fsub fast float %5987, %6028
  %6050 = fsub fast float %5988, %6029
  %6051 = fmul fast float %6048, %5511
  %6052 = fmul fast float %6049, %5511
  %6053 = fmul fast float %6050, %5511
  %6054 = fadd fast float %6051, %6027
  %6055 = fadd fast float %6052, %6028
  %6056 = fadd fast float %6053, %6029
  br label %6057

; <label>:6057                                    ; preds = %5989, %5865
  %6058 = phi float [ %6045, %5989 ], [ %5977, %5865 ]
  %6059 = phi float [ %6046, %5989 ], [ %5978, %5865 ]
  %6060 = phi float [ %6047, %5989 ], [ %5979, %5865 ]
  %6061 = phi float [ %6054, %5989 ], [ %5986, %5865 ]
  %6062 = phi float [ %6055, %5989 ], [ %5987, %5865 ]
  %6063 = phi float [ %6056, %5989 ], [ %5988, %5865 ]
  %6064 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6065 = extractvalue %dx.types.CBufRet.i32 %6064, 3
  %6066 = and i32 %6065, 3
  %6067 = icmp ne i32 %6066, 0
  %6068 = and i32 %6065, 4
  %6069 = icmp ne i32 %6068, 0
  %6070 = and i1 %6067, %6069
  br i1 %6070, label %6071, label %6078

; <label>:6071                                    ; preds = %6057
  %6072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %58, float %5668, float %5669, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6073 = extractvalue %dx.types.ResRet.f32 %6072, 0
  %6074 = fsub fast float 1.000000e+00, %6073
  %6075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %6076 = extractvalue %dx.types.CBufRet.f32 %6075, 0
  %6077 = fcmp fast olt float %6074, %6076
  br label %6081

; <label>:6078                                    ; preds = %6057
  %6079 = icmp eq i32 %6068, 0
  %6080 = and i1 %6067, %6079
  br label %6081

; <label>:6081                                    ; preds = %6078, %6071
  %6082 = phi i1 [ %6077, %6071 ], [ %6080, %6078 ]
  %6083 = xor i1 %1435, %6082
  %6084 = select i1 %6083, float 0.000000e+00, float %5511
  %6085 = fcmp fast ogt float %6084, 0.000000e+00
  %6086 = select i1 %6085, float %5668, float 0.000000e+00
  %6087 = select i1 %6085, float %5669, float 0.000000e+00
  %6088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %58, float %6086, float %6087, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6089 = extractvalue %dx.types.ResRet.f32 %6088, 0
  %6090 = extractvalue %dx.types.ResRet.f32 %6088, 1
  %6091 = extractvalue %dx.types.ResRet.f32 %6088, 2
  %6092 = fmul fast float %6090, %6084
  %6093 = fmul fast float %6091, %6084
  %6094 = select i1 %1435, float 0.000000e+00, float %6092
  %6095 = select i1 %1435, float 0.000000e+00, float %6093
  %6096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6097 = extractvalue %dx.types.CBufRet.f32 %6096, 1
  %6098 = fmul fast float %6084, %6061
  %6099 = fmul fast float %6098, %6089
  %6100 = fmul fast float %6099, %6097
  %6101 = fmul fast float %6097, %6062
  %6102 = fmul fast float %6101, %6094
  %6103 = fmul fast float %6097, %6063
  %6104 = fmul fast float %6103, %6095
  %6105 = fadd fast float %6100, %6058
  %6106 = fadd fast float %6102, %6059
  %6107 = fadd fast float %6104, %6060
  br label %6147

; <label>:6108                                    ; preds = %5667
  %6109 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6110 = extractvalue %dx.types.CBufRet.i32 %6109, 3
  %6111 = and i32 %6110, 3
  %6112 = icmp ne i32 %6111, 0
  %6113 = and i32 %6110, 4
  %6114 = icmp ne i32 %6113, 0
  %6115 = and i1 %6112, %6114
  br i1 %6115, label %6116, label %6123

; <label>:6116                                    ; preds = %6108
  %6117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %58, float %5668, float %5669, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6118 = extractvalue %dx.types.ResRet.f32 %6117, 0
  %6119 = fsub fast float 1.000000e+00, %6118
  %6120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %6121 = extractvalue %dx.types.CBufRet.f32 %6120, 0
  %6122 = fcmp fast olt float %6119, %6121
  br label %6126

; <label>:6123                                    ; preds = %6108
  %6124 = icmp eq i32 %6113, 0
  %6125 = and i1 %6112, %6124
  br label %6126

; <label>:6126                                    ; preds = %6123, %6116
  %6127 = phi i1 [ %6122, %6116 ], [ %6125, %6123 ]
  %6128 = xor i1 %1435, %6127
  %6129 = select i1 %6128, float 0.000000e+00, float %5511
  %6130 = fcmp fast ogt float %6129, 0.000000e+00
  %6131 = select i1 %6130, float %5668, float 0.000000e+00
  %6132 = select i1 %6130, float %5669, float 0.000000e+00
  %6133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %58, float %6131, float %6132, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6134 = extractvalue %dx.types.ResRet.f32 %6133, 0
  %6135 = extractvalue %dx.types.ResRet.f32 %6133, 1
  %6136 = extractvalue %dx.types.ResRet.f32 %6133, 2
  %6137 = fmul fast float %6134, %6129
  %6138 = fmul fast float %6135, %6129
  %6139 = fmul fast float %6136, %6129
  %6140 = select i1 %1435, float 0.000000e+00, float %6138
  %6141 = select i1 %1435, float 0.000000e+00, float %6139
  %6142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6143 = extractvalue %dx.types.CBufRet.f32 %6142, 1
  %6144 = fmul fast float %6137, %6143
  %6145 = fmul fast float %6140, %6143
  %6146 = fmul fast float %6141, %6143
  br label %6147

; <label>:6147                                    ; preds = %6126, %6081
  %6148 = phi float [ %6144, %6126 ], [ %6105, %6081 ]
  %6149 = phi float [ %6145, %6126 ], [ %6106, %6081 ]
  %6150 = phi float [ %6146, %6126 ], [ %6107, %6081 ]
  %6151 = fmul fast float %6148, %2311
  %6152 = fmul fast float %6149, %2311
  %6153 = fmul fast float %6150, %2311
  %6154 = select i1 %105, float %5582, float 1.000000e+00
  %6155 = fsub fast float 1.000000e+00, %1442
  %6156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6157 = extractvalue %dx.types.CBufRet.f32 %6156, 0
  %6158 = fmul fast float %6157, %6155
  %6159 = fmul fast float %1314, 2.000000e+00
  %6160 = fmul fast float %6159, %1351
  %6161 = fsub fast float %1342, %6160
  %6162 = call float @dx.op.unary.f32(i32 7, float %6161)  ; Saturate(value)
  %6163 = fsub fast float 1.000000e+00, %6162
  %6164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6165 = extractvalue %dx.types.CBufRet.f32 %6164, 3
  %6166 = fmul fast float %6165, %6163
  %6167 = fsub fast float 1.000000e+00, %1409
  %6168 = call float @dx.op.unary.f32(i32 7, float %6167)  ; Saturate(value)
  %6169 = fadd fast float %5508, %1411
  %6170 = fmul fast float %6169, %1409
  %6171 = fmul fast float %6166, %6168
  %6172 = fmul fast float %5506, %1324
  %6173 = fmul fast float %5507, %1325
  %6174 = fmul fast float %5508, %1326
  %6175 = fadd fast float %6172, %5503
  %6176 = fadd fast float %6175, %6151
  %6177 = fadd fast float %6173, %5504
  %6178 = fadd fast float %6177, %6152
  %6179 = fadd fast float %6174, %5505
  %6180 = fadd fast float %6179, %6153
  br i1 %105, label %6184, label %6181

; <label>:6181                                    ; preds = %6147
  %6182 = fmul fast float %5513, %88
  %6183 = fmul fast float %5514, %89
  br label %6983

; <label>:6184                                    ; preds = %6147
  %6185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6186 = extractvalue %dx.types.CBufRet.f32 %6185, 0
  %6187 = extractvalue %dx.types.CBufRet.f32 %6185, 1
  %6188 = extractvalue %dx.types.CBufRet.f32 %6185, 2
  %6189 = extractvalue %dx.types.CBufRet.f32 %6185, 3
  %6190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6191 = extractvalue %dx.types.CBufRet.f32 %6190, 0
  %6192 = extractvalue %dx.types.CBufRet.f32 %6190, 1
  %6193 = extractvalue %dx.types.CBufRet.f32 %6190, 2
  %6194 = extractvalue %dx.types.CBufRet.f32 %6190, 3
  %6195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6196 = extractvalue %dx.types.CBufRet.f32 %6195, 0
  %6197 = extractvalue %dx.types.CBufRet.f32 %6195, 1
  %6198 = extractvalue %dx.types.CBufRet.f32 %6195, 2
  %6199 = extractvalue %dx.types.CBufRet.f32 %6195, 3
  %6200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6201 = extractvalue %dx.types.CBufRet.f32 %6200, 0
  %6202 = extractvalue %dx.types.CBufRet.f32 %6200, 1
  %6203 = extractvalue %dx.types.CBufRet.f32 %6200, 2
  %6204 = extractvalue %dx.types.CBufRet.f32 %6200, 3
  %6205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6206 = extractvalue %dx.types.CBufRet.f32 %6205, 3
  %6207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6208 = extractvalue %dx.types.CBufRet.f32 %6207, 3
  %6209 = extractvalue %dx.types.CBufRet.f32 %6207, 0
  %6210 = extractvalue %dx.types.CBufRet.f32 %6207, 1
  %6211 = extractvalue %dx.types.CBufRet.f32 %6207, 2
  %6212 = fcmp fast olt float %6211, -5.000000e-01
  %6213 = fmul fast float %1339, %1338
  %6214 = fadd fast float %6213, %6189
  %6215 = call float @dx.op.dot3.f32(i32 55, float %1340, float %1341, float %1342, float %6186, float %6187, float %6188)  ; Dot3(ax,ay,az,bx,by,bz)
  %6216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6217 = extractvalue %dx.types.CBufRet.i32 %6216, 1
  %6218 = and i32 %6217, 1
  %6219 = icmp ne i32 %6218, 0
  %6220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6221 = extractvalue %dx.types.CBufRet.f32 %6220, 2
  %6222 = fcmp fast ogt float %6221, 0.000000e+00
  %6223 = and i1 %6219, %6222
  br i1 %6223, label %6224, label %6630, !dx.controlflow.hints !149

; <label>:6224                                    ; preds = %6184
  %6225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6226 = extractvalue %dx.types.CBufRet.f32 %6225, 3
  %6227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6228 = extractvalue %dx.types.CBufRet.f32 %6227, 2
  %6229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6230 = extractvalue %dx.types.CBufRet.f32 %6229, 2
  %6231 = fsub fast float %6228, %6230
  %6232 = and i32 %6217, 2
  %6233 = extractvalue %dx.types.CBufRet.i32 %6216, 0
  %6234 = call i32 @dx.op.binary.i32(i32 40, i32 %6233, i32 3)  ; UMin(a,b)
  %6235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6236 = extractvalue %dx.types.CBufRet.f32 %6235, 0
  %6237 = extractvalue %dx.types.CBufRet.f32 %6235, 1
  %6238 = extractvalue %dx.types.CBufRet.f32 %6229, 0
  %6239 = extractvalue %dx.types.CBufRet.f32 %6229, 1
  %6240 = fsub fast float %6236, %6238
  %6241 = fsub fast float %6237, %6239
  %6242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6243 = extractvalue %dx.types.CBufRet.f32 %6242, 0
  %6244 = fcmp fast ogt float %6243, 0.000000e+00
  %6245 = fsub fast float -0.000000e+00, %6240
  %6246 = fsub fast float -0.000000e+00, %6241
  %6247 = call float @dx.op.dot2.f32(i32 54, float %1340, float %1341, float %1340, float %1341)  ; Dot2(ax,ay,bx,by)
  %6248 = call float @dx.op.dot2.f32(i32 54, float %1340, float %1341, float %6245, float %6246)  ; Dot2(ax,ay,bx,by)
  %6249 = fmul fast float %6248, 2.000000e+00
  %6250 = call float @dx.op.dot2.f32(i32 54, float %6245, float %6246, float %6245, float %6246)  ; Dot2(ax,ay,bx,by)
  %6251 = fmul fast float %6243, %6243
  %6252 = fsub fast float %6250, %6251
  %6253 = fmul fast float %6249, %6249
  %6254 = fmul fast float %6247, 4.000000e+00
  %6255 = fmul fast float %6254, %6252
  %6256 = fsub fast float %6253, %6255
  %6257 = fcmp fast ogt float %6256, 0.000000e+00
  br i1 %6257, label %6258, label %6273

; <label>:6258                                    ; preds = %6224
  %6259 = fcmp fast ogt float %6249, 0.000000e+00
  %6260 = call float @dx.op.unary.f32(i32 24, float %6256)  ; Sqrt(value)
  %6261 = fsub fast float -0.000000e+00, %6260
  %6262 = select i1 %6259, float %6260, float %6261
  %6263 = fadd fast float %6262, %6249
  %6264 = fmul float %6263, -5.000000e-01
  %6265 = fdiv fast float %6264, %6247
  %6266 = call float @dx.op.binary.f32(i32 35, float %6265, float 0.000000e+00)  ; FMax(a,b)
  %6267 = call float @dx.op.binary.f32(i32 36, float %6213, float %6266)  ; FMin(a,b)
  %6268 = fdiv fast float %6252, %6264
  %6269 = call float @dx.op.binary.f32(i32 35, float %6268, float 0.000000e+00)  ; FMax(a,b)
  %6270 = call float @dx.op.binary.f32(i32 36, float %6213, float %6269)  ; FMin(a,b)
  %6271 = call float @dx.op.binary.f32(i32 36, float %6267, float %6270)  ; FMin(a,b)
  %6272 = call float @dx.op.binary.f32(i32 35, float %6267, float %6270)  ; FMax(a,b)
  br label %6273

; <label>:6273                                    ; preds = %6258, %6224
  %6274 = phi float [ %6272, %6258 ], [ -1.000000e+00, %6224 ]
  %6275 = phi float [ %6271, %6258 ], [ -1.000000e+00, %6224 ]
  %6276 = phi i1 [ true, %6258 ], [ false, %6224 ]
  %6277 = and i1 %6244, %6276
  br i1 %6277, label %6278, label %6280

; <label>:6278                                    ; preds = %6273
  %6279 = fcmp fast oeq float %6275, %6274
  br i1 %6279, label %6583, label %6281

; <label>:6280                                    ; preds = %6273
  br i1 %6244, label %6583, label %6281

; <label>:6281                                    ; preds = %6280, %6278
  %6282 = phi float [ %6213, %6280 ], [ %6274, %6278 ]
  %6283 = phi float [ 0.000000e+00, %6280 ], [ %6275, %6278 ]
  %6284 = icmp ne i32 %6232, 0
  %6285 = fmul fast float %6282, %1342
  %6286 = fadd fast float %6285, %6226
  %6287 = fmul fast float %6286, %6282
  %6288 = select i1 %6284, float 0.000000e+00, float %6287
  %6289 = fcmp fast oeq float %1342, 0.000000e+00
  %6290 = fdiv fast float %6231, %1342
  %6291 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6290)  ; FMax(a,b)
  %6292 = select i1 %6289, float %6282, float %6291
  %6293 = call float @dx.op.binary.f32(i32 36, float %6282, float %6292)  ; FMin(a,b)
  %6294 = fcmp fast ogt float %1342, 0.000000e+00
  %6295 = fcmp fast olt float %6231, 0.000000e+00
  br i1 %6294, label %6296, label %6353

; <label>:6296                                    ; preds = %6281
  %6297 = icmp eq i32 %6232, 0
  br i1 %6295, label %6298, label %6342

; <label>:6298                                    ; preds = %6296
  %6299 = select i1 %6297, float %6282, float 0.000000e+00
  %6300 = fsub fast float -0.000000e+00, %6299
  %6301 = call float @dx.op.unary.f32(i32 6, float %6300)  ; FAbs(value)
  %6302 = fmul fast float %6299, %1342
  %6303 = fadd fast float %6302, %6226
  %6304 = fmul fast float %6301, %6303
  %6305 = fsub fast float %6288, %6304
  %6306 = fsub fast float %6282, %6301
  %6307 = select i1 %6297, float %6306, float 0.000000e+00
  %6308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6309 = extractvalue %dx.types.CBufRet.f32 %6308, 0
  %6310 = extractvalue %dx.types.CBufRet.f32 %6308, 1
  %6311 = extractvalue %dx.types.CBufRet.f32 %6308, 2
  %6312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6313 = extractvalue %dx.types.CBufRet.f32 %6312, 0
  %6314 = extractvalue %dx.types.CBufRet.f32 %6312, 1
  %6315 = extractvalue %dx.types.CBufRet.f32 %6312, 2
  %6316 = extractvalue %dx.types.CBufRet.f32 %6312, 3
  %6317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6318 = extractvalue %dx.types.CBufRet.f32 %6317, 3
  %6319 = call float @dx.op.binary.f32(i32 36, float %6305, float %6318)  ; FMin(a,b)
  %6320 = fmul fast float %6316, %6307
  %6321 = call float @dx.op.unary.f32(i32 7, float %6320)  ; Saturate(value)
  %6322 = fsub fast float %6313, %6309
  %6323 = fsub fast float %6314, %6310
  %6324 = fsub fast float %6315, %6311
  %6325 = fmul fast float %6321, %6322
  %6326 = fmul fast float %6321, %6323
  %6327 = fmul fast float %6321, %6324
  %6328 = fadd fast float %6325, %6309
  %6329 = fadd fast float %6326, %6310
  %6330 = fadd fast float %6327, %6311
  %6331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6332 = extractvalue %dx.types.CBufRet.f32 %6331, 0
  %6333 = extractvalue %dx.types.CBufRet.f32 %6331, 1
  %6334 = fadd fast float %6333, %6332
  %6335 = call float @dx.op.unary.f32(i32 7, float %6334)  ; Saturate(value)
  %6336 = extractvalue %dx.types.CBufRet.f32 %6331, 2
  %6337 = extractvalue %dx.types.CBufRet.f32 %6331, 3
  %6338 = fadd fast float %6337, %6336
  %6339 = call float @dx.op.unary.f32(i32 7, float %6338)  ; Saturate(value)
  %6340 = fmul fast float %6335, %6319
  %6341 = fmul fast float %6340, %6339
  br label %6583

; <label>:6342                                    ; preds = %6296
  br i1 %6297, label %6343, label %6364

; <label>:6343                                    ; preds = %6342
  %6344 = call float @dx.op.binary.f32(i32 36, float %6293, float %6283)  ; FMin(a,b)
  %6345 = fsub fast float %6293, %6344
  %6346 = fsub fast float %6345, %6282
  %6347 = call float @dx.op.unary.f32(i32 6, float %6346)  ; FAbs(value)
  %6348 = fadd fast float %6345, %6282
  %6349 = fmul fast float %6348, %1342
  %6350 = fadd fast float %6349, %6226
  %6351 = fmul fast float %6350, %6347
  %6352 = fsub fast float %6288, %6351
  br label %6364

; <label>:6353                                    ; preds = %6281
  br i1 %6295, label %6354, label %6364

; <label>:6354                                    ; preds = %6353
  %6355 = call float @dx.op.binary.f32(i32 35, float %6283, float %6293)  ; FMax(a,b)
  %6356 = icmp eq i32 %6232, 0
  %6357 = select i1 %6356, float %6293, float 0.000000e+00
  %6358 = fsub fast float -0.000000e+00, %6357
  %6359 = call float @dx.op.unary.f32(i32 6, float %6358)  ; FAbs(value)
  %6360 = fmul fast float %6357, %1342
  %6361 = fadd fast float %6360, %6226
  %6362 = fmul fast float %6359, %6361
  %6363 = fsub fast float %6288, %6362
  br label %6364

; <label>:6364                                    ; preds = %6354, %6353, %6343, %6342
  %6365 = phi float [ %6283, %6342 ], [ %6283, %6343 ], [ %6355, %6354 ], [ %6283, %6353 ]
  %6366 = phi float [ 0.000000e+00, %6342 ], [ %6347, %6343 ], [ %6359, %6354 ], [ 0.000000e+00, %6353 ]
  %6367 = phi float [ %6288, %6342 ], [ %6352, %6343 ], [ %6363, %6354 ], [ %6288, %6353 ]
  %6368 = phi float [ %6293, %6342 ], [ %6293, %6343 ], [ %6282, %6354 ], [ %6282, %6353 ]
  %6369 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 0
  store float -1.000000e+00, float* %6369, align 4, !tbaa !99, !noalias !150
  %6370 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 1
  store float -1.000000e+00, float* %6370, align 4, !tbaa !99, !noalias !150
  %6371 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 2
  store float -1.000000e+00, float* %6371, align 4, !tbaa !99, !noalias !150
  %6372 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 0
  store float -1.000000e+00, float* %6372, align 4, !tbaa !99, !noalias !150
  %6373 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 1
  store float -1.000000e+00, float* %6373, align 4, !tbaa !99, !noalias !150
  %6374 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 2
  store float -1.000000e+00, float* %6374, align 4, !tbaa !99, !noalias !150
  %6375 = icmp sgt i32 %6234, 0
  br i1 %6375, label %6376, label %6437

; <label>:6376                                    ; preds = %6364
  br label %6377

; <label>:6377                                    ; preds = %6426, %6376
  %6378 = phi i32 [ %6427, %6426 ], [ 0, %6376 ]
  %6379 = phi i32 [ %6428, %6426 ], [ 0, %6376 ]
  %6380 = add nuw i32 %6379, 171
  %6381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %6380)  ; CBufferLoadLegacy(handle,regIndex)
  %6382 = extractvalue %dx.types.CBufRet.f32 %6381, 0
  %6383 = extractvalue %dx.types.CBufRet.f32 %6381, 1
  %6384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6385 = extractvalue %dx.types.CBufRet.f32 %6384, 0
  %6386 = extractvalue %dx.types.CBufRet.f32 %6384, 1
  %6387 = fsub fast float %6382, %6385
  %6388 = fsub fast float %6383, %6386
  %6389 = extractvalue %dx.types.CBufRet.f32 %6381, 2
  %6390 = fsub fast float -0.000000e+00, %6387
  %6391 = fsub fast float -0.000000e+00, %6388
  %6392 = call float @dx.op.dot2.f32(i32 54, float %1340, float %1341, float %6390, float %6391)  ; Dot2(ax,ay,bx,by)
  %6393 = fmul fast float %6392, 2.000000e+00
  %6394 = call float @dx.op.dot2.f32(i32 54, float %6390, float %6391, float %6390, float %6391)  ; Dot2(ax,ay,bx,by)
  %6395 = fmul fast float %6389, %6389
  %6396 = fsub fast float %6394, %6395
  %6397 = fmul fast float %6393, %6393
  %6398 = fmul fast float %6254, %6396
  %6399 = fsub fast float %6397, %6398
  %6400 = fcmp fast ogt float %6399, 0.000000e+00
  br i1 %6400, label %6401, label %6416

; <label>:6401                                    ; preds = %6377
  %6402 = fcmp fast ogt float %6393, 0.000000e+00
  %6403 = call float @dx.op.unary.f32(i32 24, float %6399)  ; Sqrt(value)
  %6404 = fsub fast float -0.000000e+00, %6403
  %6405 = select i1 %6402, float %6403, float %6404
  %6406 = fadd fast float %6405, %6393
  %6407 = fmul float %6406, -5.000000e-01
  %6408 = fdiv fast float %6407, %6247
  %6409 = call float @dx.op.binary.f32(i32 35, float %6408, float 0.000000e+00)  ; FMax(a,b)
  %6410 = call float @dx.op.binary.f32(i32 36, float %6282, float %6409)  ; FMin(a,b)
  %6411 = fdiv fast float %6396, %6407
  %6412 = call float @dx.op.binary.f32(i32 35, float %6411, float 0.000000e+00)  ; FMax(a,b)
  %6413 = call float @dx.op.binary.f32(i32 36, float %6282, float %6412)  ; FMin(a,b)
  %6414 = call float @dx.op.binary.f32(i32 36, float %6410, float %6413)  ; FMin(a,b)
  %6415 = call float @dx.op.binary.f32(i32 35, float %6410, float %6413)  ; FMax(a,b)
  br label %6416

; <label>:6416                                    ; preds = %6401, %6377
  %6417 = phi float [ %6415, %6401 ], [ -1.000000e+00, %6377 ]
  %6418 = phi float [ %6414, %6401 ], [ -1.000000e+00, %6377 ]
  %6419 = phi i1 [ true, %6401 ], [ false, %6377 ]
  br i1 %6419, label %6420, label %6426

; <label>:6420                                    ; preds = %6416
  %6421 = call float @dx.op.binary.f32(i32 35, float %6365, float %6418)  ; FMax(a,b)
  %6422 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %6379
  store float %6421, float* %6422, align 4, !tbaa !99, !noalias !150
  %6423 = call float @dx.op.binary.f32(i32 35, float %6365, float %6417)  ; FMax(a,b)
  %6424 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %6379
  store float %6423, float* %6424, align 4, !tbaa !99, !noalias !150
  %6425 = add nsw i32 %6378, 1
  br label %6426

; <label>:6426                                    ; preds = %6420, %6416
  %6427 = phi i32 [ %6425, %6420 ], [ %6378, %6416 ]
  %6428 = add nuw nsw i32 %6379, 1
  %6429 = icmp eq i32 %6428, %6234
  br i1 %6429, label %6430, label %6377

; <label>:6430                                    ; preds = %6426
  %6431 = load float, float* %6371, align 4, !tbaa !99, !alias.scope !166, !noalias !169
  %6432 = load float, float* %6370, align 4, !tbaa !99, !alias.scope !172, !noalias !173
  %6433 = load float, float* %6369, align 4, !tbaa !99, !alias.scope !174, !noalias !175
  %6434 = load float, float* %6374, align 4, !tbaa !99, !alias.scope !176, !noalias !179
  %6435 = load float, float* %6373, align 4, !tbaa !99, !alias.scope !182, !noalias !183
  %6436 = load float, float* %6372, align 4, !tbaa !99, !alias.scope !184, !noalias !185
  br label %6437

; <label>:6437                                    ; preds = %6430, %6364
  %6438 = phi float [ -1.000000e+00, %6364 ], [ %6436, %6430 ]
  %6439 = phi float [ -1.000000e+00, %6364 ], [ %6435, %6430 ]
  %6440 = phi float [ -1.000000e+00, %6364 ], [ %6434, %6430 ]
  %6441 = phi float [ -1.000000e+00, %6364 ], [ %6433, %6430 ]
  %6442 = phi float [ -1.000000e+00, %6364 ], [ %6432, %6430 ]
  %6443 = phi float [ -1.000000e+00, %6364 ], [ %6431, %6430 ]
  %6444 = phi i32 [ 0, %6364 ], [ %6427, %6430 ]
  %6445 = call float @dx.op.binary.f32(i32 36, float %6442, float %6443)  ; FMin(a,b)
  %6446 = call float @dx.op.binary.f32(i32 36, float %6441, float %6445)  ; FMin(a,b)
  %6447 = call float @dx.op.binary.f32(i32 35, float %6441, float %6442)  ; FMax(a,b)
  %6448 = call float @dx.op.binary.f32(i32 36, float %6447, float %6443)  ; FMin(a,b)
  %6449 = call float @dx.op.binary.f32(i32 36, float %6441, float %6442)  ; FMin(a,b)
  %6450 = call float @dx.op.binary.f32(i32 35, float %6449, float %6448)  ; FMax(a,b)
  %6451 = call float @dx.op.binary.f32(i32 35, float %6442, float %6443)  ; FMax(a,b)
  %6452 = call float @dx.op.binary.f32(i32 35, float %6441, float %6451)  ; FMax(a,b)
  store float %6446, float* %6369, align 4, !tbaa !99, !alias.scope !174, !noalias !175
  store float %6450, float* %6370, align 4, !tbaa !99, !alias.scope !172, !noalias !173
  store float %6452, float* %6371, align 4, !tbaa !99, !alias.scope !166, !noalias !169
  %6453 = call float @dx.op.binary.f32(i32 36, float %6439, float %6440)  ; FMin(a,b)
  %6454 = call float @dx.op.binary.f32(i32 36, float %6438, float %6453)  ; FMin(a,b)
  %6455 = call float @dx.op.binary.f32(i32 35, float %6438, float %6439)  ; FMax(a,b)
  %6456 = call float @dx.op.binary.f32(i32 36, float %6455, float %6440)  ; FMin(a,b)
  %6457 = call float @dx.op.binary.f32(i32 36, float %6438, float %6439)  ; FMin(a,b)
  %6458 = call float @dx.op.binary.f32(i32 35, float %6457, float %6456)  ; FMax(a,b)
  %6459 = call float @dx.op.binary.f32(i32 35, float %6439, float %6440)  ; FMax(a,b)
  %6460 = call float @dx.op.binary.f32(i32 35, float %6438, float %6459)  ; FMax(a,b)
  store float %6454, float* %6372, align 4, !tbaa !99, !alias.scope !184, !noalias !185
  store float %6458, float* %6373, align 4, !tbaa !99, !alias.scope !182, !noalias !183
  store float %6460, float* %6374, align 4, !tbaa !99, !alias.scope !176, !noalias !179
  %6461 = sub nsw i32 3, %6444
  %6462 = icmp sgt i32 %6461, 2
  br i1 %6462, label %6463, label %6501

; <label>:6463                                    ; preds = %6437
  %6464 = icmp eq i32 %6232, 0
  %6465 = fsub fast float %6282, %6366
  %6466 = select i1 %6464, float %6465, float %6366
  %6467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6468 = extractvalue %dx.types.CBufRet.f32 %6467, 0
  %6469 = extractvalue %dx.types.CBufRet.f32 %6467, 1
  %6470 = extractvalue %dx.types.CBufRet.f32 %6467, 2
  %6471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6472 = extractvalue %dx.types.CBufRet.f32 %6471, 0
  %6473 = extractvalue %dx.types.CBufRet.f32 %6471, 1
  %6474 = extractvalue %dx.types.CBufRet.f32 %6471, 2
  %6475 = extractvalue %dx.types.CBufRet.f32 %6471, 3
  %6476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6477 = extractvalue %dx.types.CBufRet.f32 %6476, 3
  %6478 = call float @dx.op.binary.f32(i32 36, float %6367, float %6477)  ; FMin(a,b)
  %6479 = fmul fast float %6475, %6466
  %6480 = call float @dx.op.unary.f32(i32 7, float %6479)  ; Saturate(value)
  %6481 = fsub fast float %6472, %6468
  %6482 = fsub fast float %6473, %6469
  %6483 = fsub fast float %6474, %6470
  %6484 = fmul fast float %6480, %6481
  %6485 = fmul fast float %6480, %6482
  %6486 = fmul fast float %6480, %6483
  %6487 = fadd fast float %6484, %6468
  %6488 = fadd fast float %6485, %6469
  %6489 = fadd fast float %6486, %6470
  %6490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6491 = extractvalue %dx.types.CBufRet.f32 %6490, 0
  %6492 = extractvalue %dx.types.CBufRet.f32 %6490, 1
  %6493 = fadd fast float %6492, %6491
  %6494 = call float @dx.op.unary.f32(i32 7, float %6493)  ; Saturate(value)
  %6495 = extractvalue %dx.types.CBufRet.f32 %6490, 2
  %6496 = extractvalue %dx.types.CBufRet.f32 %6490, 3
  %6497 = fadd fast float %6496, %6495
  %6498 = call float @dx.op.unary.f32(i32 7, float %6497)  ; Saturate(value)
  %6499 = fmul fast float %6494, %6478
  %6500 = fmul fast float %6499, %6498
  br label %6583

; <label>:6501                                    ; preds = %6437
  %6502 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %6461
  %6503 = load float, float* %6502, align 4, !tbaa !99, !noalias !150
  %6504 = fcmp fast olt float %6503, %6368
  %6505 = icmp sgt i32 %6444, 0
  %6506 = and i1 %6505, %6504
  br i1 %6506, label %6507, label %6544

; <label>:6507                                    ; preds = %6501
  br label %6508

; <label>:6508                                    ; preds = %6537, %6507
  %6509 = phi float [ %6538, %6537 ], [ %6366, %6507 ]
  %6510 = phi float [ %6539, %6537 ], [ %6367, %6507 ]
  %6511 = phi float [ %6519, %6537 ], [ %6503, %6507 ]
  %6512 = phi i32 [ %6516, %6537 ], [ %6461, %6507 ]
  %6513 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %6512
  %6514 = load float, float* %6513, align 4, !tbaa !99, !noalias !150
  %6515 = icmp slt i32 %6512, 2
  %6516 = add nsw i32 %6512, 1
  %6517 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %6516
  %6518 = load float, float* %6517, align 4, !tbaa !99, !noalias !150
  %6519 = select i1 %6515, float %6518, float %6282
  %6520 = call float @dx.op.binary.f32(i32 36, float %6519, float %6514)  ; FMin(a,b)
  %6521 = call float @dx.op.binary.f32(i32 36, float %6368, float %6520)  ; FMin(a,b)
  %6522 = icmp eq i32 %6232, 0
  %6523 = fadd fast float %6521, %6511
  %6524 = fmul fast float %6523, %1342
  %6525 = fadd fast float %6524, %6226
  br i1 %6522, label %6531, label %6526

; <label>:6526                                    ; preds = %6508
  %6527 = fsub fast float %6521, %6511
  %6528 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6527)  ; FMax(a,b)
  %6529 = fmul fast float %6528, %6525
  %6530 = fadd fast float %6529, %6510
  br label %6537

; <label>:6531                                    ; preds = %6508
  %6532 = fsub fast float %6511, %6521
  %6533 = call float @dx.op.unary.f32(i32 6, float %6532)  ; FAbs(value)
  %6534 = fadd fast float %6533, %6509
  %6535 = fmul fast float %6533, %6525
  %6536 = fsub fast float %6510, %6535
  br label %6537

; <label>:6537                                    ; preds = %6531, %6526
  %6538 = phi float [ %6528, %6526 ], [ %6534, %6531 ]
  %6539 = phi float [ %6530, %6526 ], [ %6536, %6531 ]
  %6540 = fcmp fast olt float %6519, %6368
  %6541 = icmp slt i32 %6516, 3
  %6542 = and i1 %6541, %6540
  br i1 %6542, label %6508, label %6543

; <label>:6543                                    ; preds = %6537
  br label %6544

; <label>:6544                                    ; preds = %6543, %6501
  %6545 = phi float [ %6366, %6501 ], [ %6538, %6543 ]
  %6546 = phi float [ %6367, %6501 ], [ %6539, %6543 ]
  %6547 = fsub fast float %6282, %6545
  %6548 = select i1 %6284, float %6545, float %6547
  %6549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6550 = extractvalue %dx.types.CBufRet.f32 %6549, 0
  %6551 = extractvalue %dx.types.CBufRet.f32 %6549, 1
  %6552 = extractvalue %dx.types.CBufRet.f32 %6549, 2
  %6553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6554 = extractvalue %dx.types.CBufRet.f32 %6553, 0
  %6555 = extractvalue %dx.types.CBufRet.f32 %6553, 1
  %6556 = extractvalue %dx.types.CBufRet.f32 %6553, 2
  %6557 = extractvalue %dx.types.CBufRet.f32 %6553, 3
  %6558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6559 = extractvalue %dx.types.CBufRet.f32 %6558, 3
  %6560 = call float @dx.op.binary.f32(i32 36, float %6546, float %6559)  ; FMin(a,b)
  %6561 = fmul fast float %6557, %6548
  %6562 = call float @dx.op.unary.f32(i32 7, float %6561)  ; Saturate(value)
  %6563 = fsub fast float %6554, %6550
  %6564 = fsub fast float %6555, %6551
  %6565 = fsub fast float %6556, %6552
  %6566 = fmul fast float %6562, %6563
  %6567 = fmul fast float %6562, %6564
  %6568 = fmul fast float %6562, %6565
  %6569 = fadd fast float %6566, %6550
  %6570 = fadd fast float %6567, %6551
  %6571 = fadd fast float %6568, %6552
  %6572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6573 = extractvalue %dx.types.CBufRet.f32 %6572, 0
  %6574 = extractvalue %dx.types.CBufRet.f32 %6572, 1
  %6575 = fadd fast float %6574, %6573
  %6576 = call float @dx.op.unary.f32(i32 7, float %6575)  ; Saturate(value)
  %6577 = extractvalue %dx.types.CBufRet.f32 %6572, 2
  %6578 = extractvalue %dx.types.CBufRet.f32 %6572, 3
  %6579 = fadd fast float %6578, %6577
  %6580 = call float @dx.op.unary.f32(i32 7, float %6579)  ; Saturate(value)
  %6581 = fmul fast float %6576, %6560
  %6582 = fmul fast float %6581, %6580
  br label %6583

; <label>:6583                                    ; preds = %6544, %6463, %6298, %6280, %6278
  %6584 = phi float [ %6307, %6298 ], [ %6466, %6463 ], [ %6548, %6544 ], [ 0.000000e+00, %6278 ], [ 0.000000e+00, %6280 ]
  %6585 = phi float [ %6341, %6298 ], [ %6500, %6463 ], [ %6582, %6544 ], [ 0.000000e+00, %6278 ], [ 0.000000e+00, %6280 ]
  %6586 = phi float [ %6328, %6298 ], [ %6487, %6463 ], [ %6569, %6544 ], [ 0.000000e+00, %6278 ], [ 0.000000e+00, %6280 ]
  %6587 = phi float [ %6329, %6298 ], [ %6488, %6463 ], [ %6570, %6544 ], [ 0.000000e+00, %6278 ], [ 0.000000e+00, %6280 ]
  %6588 = phi float [ %6330, %6298 ], [ %6489, %6463 ], [ %6571, %6544 ], [ 0.000000e+00, %6278 ], [ 0.000000e+00, %6280 ]
  %6589 = fmul fast float %6221, %6585
  %6590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6591 = extractvalue %dx.types.CBufRet.f32 %6590, 2
  %6592 = fsub fast float %6228, %6591
  %6593 = fcmp fast olt float %6589, -2.000000e+01
  %6594 = call float @dx.op.unary.f32(i32 21, float %6589)  ; Exp(value)
  %6595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6596 = extractvalue %dx.types.CBufRet.f32 %6595, 2
  %6597 = extractvalue %dx.types.CBufRet.f32 %6595, 3
  %6598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6599 = extractvalue %dx.types.CBufRet.f32 %6598, 2
  %6600 = fmul fast float %6597, %6592
  %6601 = call float @dx.op.unary.f32(i32 7, float %6600)  ; Saturate(value)
  %6602 = fsub fast float 1.000000e+00, %6601
  %6603 = fmul fast float %1342, 5.000000e-01
  %6604 = fadd fast float %6603, 5.000000e-01
  %6605 = call float @dx.op.unary.f32(i32 7, float %6604)  ; Saturate(value)
  %6606 = fsub fast float 1.000000e+00, %6605
  %6607 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6602)  ; FMax(a,b)
  %6608 = fdiv fast float %6606, %6607
  %6609 = fsub fast float %6592, %145
  %6610 = call float @dx.op.unary.f32(i32 6, float %6609)  ; FAbs(value)
  %6611 = fmul fast float %6610, %6596
  %6612 = call float @dx.op.unary.f32(i32 7, float %6608)  ; Saturate(value)
  %6613 = fsub fast float 1.000000e+00, %6611
  %6614 = fmul fast float %6613, %6612
  %6615 = fadd fast float %6614, %6611
  %6616 = fmul fast float %6599, %6592
  %6617 = call float @dx.op.unary.f32(i32 7, float %6616)  ; Saturate(value)
  %6618 = fsub fast float 1.000000e+00, %6615
  %6619 = fmul fast float %6618, %6617
  %6620 = fadd fast float %6619, %6615
  %6621 = call float @dx.op.unary.f32(i32 7, float %6620)  ; Saturate(value)
  %6622 = fadd fast float %6594, -1.000000e+00
  %6623 = select i1 %6593, float -1.000000e+00, float %6622
  %6624 = fmul fast float %6621, %6623
  %6625 = fadd fast float %6624, 1.000000e+00
  %6626 = fsub fast float -0.000000e+00, %6624
  %6627 = fmul fast float %6586, %6626
  %6628 = fmul fast float %6587, %6626
  %6629 = fmul fast float %6588, %6626
  br label %6630

; <label>:6630                                    ; preds = %6583, %6184
  %6631 = phi float [ %6584, %6583 ], [ 0.000000e+00, %6184 ]
  %6632 = phi float [ %6625, %6583 ], [ 1.000000e+00, %6184 ]
  %6633 = phi float [ %6627, %6583 ], [ 0.000000e+00, %6184 ]
  %6634 = phi float [ %6628, %6583 ], [ 0.000000e+00, %6184 ]
  %6635 = phi float [ %6629, %6583 ], [ 0.000000e+00, %6184 ]
  %6636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6637 = extractvalue %dx.types.CBufRet.f32 %6636, 1
  %6638 = fsub fast float 1.000000e+00, %6632
  %6639 = fmul fast float %6638, %6214
  %6640 = fmul fast float %6639, %6637
  %6641 = fsub fast float %6214, %6640
  br i1 %6212, label %6642, label %6671, !dx.controlflow.hints !186

; <label>:6642                                    ; preds = %6630
  %6643 = fmul fast float %6215, %6209
  %6644 = fadd fast float %6643, %6210
  %6645 = call float @dx.op.unary.f32(i32 7, float %6644)  ; Saturate(value)
  %6646 = fmul fast float %6191, %6641
  %6647 = fsub fast float -0.000000e+00, %6646
  %6648 = fmul fast float %6192, %6641
  %6649 = fsub fast float -0.000000e+00, %6648
  %6650 = call float @dx.op.unary.f32(i32 21, float %6647)  ; Exp(value)
  %6651 = call float @dx.op.unary.f32(i32 21, float %6649)  ; Exp(value)
  %6652 = call float @dx.op.binary.f32(i32 35, float %6199, float %6650)  ; FMax(a,b)
  %6653 = call float @dx.op.binary.f32(i32 35, float %6199, float %6651)  ; FMax(a,b)
  %6654 = fsub fast float %6653, %6652
  %6655 = fmul fast float %6654, %6645
  %6656 = fadd fast float %6655, %6652
  %6657 = call float @dx.op.unary.f32(i32 7, float %6656)  ; Saturate(value)
  %6658 = fsub fast float %6196, %6201
  %6659 = fsub fast float %6197, %6202
  %6660 = fsub fast float %6198, %6203
  %6661 = fmul fast float %6645, %6658
  %6662 = fmul fast float %6645, %6659
  %6663 = fmul fast float %6645, %6660
  %6664 = fadd fast float %6661, %6201
  %6665 = fadd fast float %6662, %6202
  %6666 = fadd fast float %6663, %6203
  %6667 = fsub fast float 1.000000e+00, %6657
  %6668 = fmul fast float %6667, %6664
  %6669 = fmul fast float %6667, %6665
  %6670 = fmul fast float %6667, %6666
  br label %6730

; <label>:6671                                    ; preds = %6630
  %6672 = fmul fast float %6641, %6208
  %6673 = call float @dx.op.unary.f32(i32 7, float %6672)  ; Saturate(value)
  %6674 = fsub fast float 2.000000e+00, %6673
  %6675 = fmul fast float %6673, 9.921875e-01
  %6676 = fmul fast float %6675, %6674
  %6677 = fadd fast float %6676, 3.906250e-03
  %6678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %58, float %6677, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6679 = extractvalue %dx.types.ResRet.f32 %6678, 0
  %6680 = fsub fast float %6673, %6679
  %6681 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6680)  ; FMax(a,b)
  %6682 = fmul fast float %6194, %145
  %6683 = call float @dx.op.unary.f32(i32 6, float %6682)  ; FAbs(value)
  %6684 = fcmp fast ogt float %6683, 0x3EB0C6F7A0000000
  br i1 %6684, label %6685, label %6691, !dx.controlflow.hints !187

; <label>:6685                                    ; preds = %6671
  %6686 = fmul fast float %6682, 0xBFF7154760000000
  %6687 = call float @dx.op.unary.f32(i32 21, float %6686)  ; Exp(value)
  %6688 = fsub fast float 1.000000e+00, %6687
  %6689 = fdiv fast float %6688, %6682
  %6690 = fmul fast float %6689, %6204
  br label %6691

; <label>:6691                                    ; preds = %6685, %6671
  %6692 = phi float [ %6690, %6685 ], [ %6204, %6671 ]
  %6693 = fadd fast float %6692, %6206
  %6694 = fmul fast float %6693, %6681
  %6695 = fmul fast float %6191, %6694
  %6696 = fsub fast float -0.000000e+00, %6695
  %6697 = fmul fast float %6192, %6694
  %6698 = fsub fast float -0.000000e+00, %6697
  %6699 = fmul fast float %6193, %6694
  %6700 = fsub fast float -0.000000e+00, %6699
  %6701 = call float @dx.op.unary.f32(i32 21, float %6696)  ; Exp(value)
  %6702 = call float @dx.op.unary.f32(i32 21, float %6698)  ; Exp(value)
  %6703 = call float @dx.op.unary.f32(i32 21, float %6700)  ; Exp(value)
  %6704 = fmul fast float %6215, %6215
  %6705 = fadd fast float %6704, 1.000000e+00
  %6706 = fmul fast float %6705, 0x3FAE8EC8A0000000
  %6707 = fmul fast float %6706, %6201
  %6708 = fmul fast float %6706, %6202
  %6709 = fmul fast float %6706, %6203
  %6710 = fmul fast float %6215, %6199
  %6711 = fsub fast float 1.000000e+00, %6710
  %6712 = fmul fast float %6199, %6199
  %6713 = fsub fast float 1.000000e+00, %6712
  %6714 = fmul fast float %6713, 0x3FB45F3060000000
  %6715 = fmul fast float %6711, %6711
  %6716 = fdiv fast float 1.000000e+00, %6715
  %6717 = fmul fast float %6714, %6716
  %6718 = fmul fast float %6717, %6196
  %6719 = fmul fast float %6717, %6197
  %6720 = fmul fast float %6717, %6198
  %6721 = fadd fast float %6718, %6707
  %6722 = fadd fast float %6719, %6708
  %6723 = fadd fast float %6720, %6709
  %6724 = fsub fast float 1.000000e+00, %6701
  %6725 = fsub fast float 1.000000e+00, %6702
  %6726 = fsub fast float 1.000000e+00, %6703
  %6727 = fmul fast float %6721, %6724
  %6728 = fmul fast float %6722, %6725
  %6729 = fmul fast float %6723, %6726
  br label %6730

; <label>:6730                                    ; preds = %6691, %6642
  %6731 = phi float [ %6668, %6642 ], [ %6727, %6691 ]
  %6732 = phi float [ %6669, %6642 ], [ %6728, %6691 ]
  %6733 = phi float [ %6670, %6642 ], [ %6729, %6691 ]
  %6734 = phi float [ %6657, %6642 ], [ %6701, %6691 ]
  %6735 = phi float [ %6657, %6642 ], [ %6702, %6691 ]
  %6736 = phi float [ %6657, %6642 ], [ %6703, %6691 ]
  br i1 %6223, label %6737, label %6935, !dx.controlflow.hints !188

; <label>:6737                                    ; preds = %6730
  %6738 = extractvalue %dx.types.CBufRet.f32 %6636, 0
  %6739 = fmul fast float %6738, %6638
  %6740 = fsub fast float %6633, %6731
  %6741 = fsub fast float %6634, %6732
  %6742 = fsub fast float %6635, %6733
  %6743 = fmul fast float %6739, %6740
  %6744 = fmul fast float %6739, %6741
  %6745 = fmul fast float %6739, %6742
  %6746 = fadd fast float %6743, %6731
  %6747 = fadd fast float %6744, %6732
  %6748 = fadd fast float %6745, %6733
  %6749 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6734)  ; FMax(a,b)
  %6750 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6735)  ; FMax(a,b)
  %6751 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6736)  ; FMax(a,b)
  %6752 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6632)  ; FMax(a,b)
  %6753 = call float @dx.op.binary.f32(i32 35, float %6631, float %6641)  ; FMax(a,b)
  %6754 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6753)  ; FMax(a,b)
  %6755 = fdiv fast float %6631, %6754
  %6756 = call float @dx.op.unary.f32(i32 7, float %6755)  ; Saturate(value)
  %6757 = fdiv fast float %6641, %6754
  %6758 = call float @dx.op.unary.f32(i32 7, float %6757)  ; Saturate(value)
  %6759 = fcmp fast une float %6752, 1.000000e+00
  br i1 %6759, label %6760, label %6773, !dx.controlflow.hints !189

; <label>:6760                                    ; preds = %6737
  %6761 = call float @dx.op.unary.f32(i32 23, float %6752)  ; Log(value)
  %6762 = fmul fast float %6761, 0x3FE62E4300000000
  %6763 = fmul fast float %6633, %6762
  %6764 = fsub fast float -0.000000e+00, %6763
  %6765 = fmul fast float %6634, %6762
  %6766 = fsub fast float -0.000000e+00, %6765
  %6767 = fmul fast float %6635, %6762
  %6768 = fsub fast float -0.000000e+00, %6767
  %6769 = fsub fast float 1.000000e+00, %6752
  %6770 = fdiv fast float %6764, %6769
  %6771 = fdiv fast float %6766, %6769
  %6772 = fdiv fast float %6768, %6769
  br label %6773

; <label>:6773                                    ; preds = %6760, %6737
  %6774 = phi float [ %6770, %6760 ], [ %6633, %6737 ]
  %6775 = phi float [ %6771, %6760 ], [ %6634, %6737 ]
  %6776 = phi float [ %6772, %6760 ], [ %6635, %6737 ]
  %6777 = phi float [ %6762, %6760 ], [ 0.000000e+00, %6737 ]
  %6778 = fcmp fast une float %6749, 1.000000e+00
  br i1 %6778, label %6779, label %6786, !dx.controlflow.hints !190

; <label>:6779                                    ; preds = %6773
  %6780 = call float @dx.op.unary.f32(i32 23, float %6749)  ; Log(value)
  %6781 = fmul fast float %6780, 0x3FE62E4300000000
  %6782 = fmul fast float %6746, %6781
  %6783 = fsub fast float -0.000000e+00, %6782
  %6784 = fsub fast float 1.000000e+00, %6749
  %6785 = fdiv fast float %6783, %6784
  br label %6786

; <label>:6786                                    ; preds = %6779, %6773
  %6787 = phi float [ %6785, %6779 ], [ %6746, %6773 ]
  %6788 = phi float [ %6781, %6779 ], [ 0.000000e+00, %6773 ]
  %6789 = fcmp fast une float %6750, 1.000000e+00
  br i1 %6789, label %6790, label %6797, !dx.controlflow.hints !190

; <label>:6790                                    ; preds = %6786
  %6791 = call float @dx.op.unary.f32(i32 23, float %6750)  ; Log(value)
  %6792 = fmul fast float %6791, 0x3FE62E4300000000
  %6793 = fmul fast float %6747, %6792
  %6794 = fsub fast float -0.000000e+00, %6793
  %6795 = fsub fast float 1.000000e+00, %6750
  %6796 = fdiv fast float %6794, %6795
  br label %6797

; <label>:6797                                    ; preds = %6790, %6786
  %6798 = phi float [ %6796, %6790 ], [ %6747, %6786 ]
  %6799 = phi float [ %6792, %6790 ], [ 0.000000e+00, %6786 ]
  %6800 = fcmp fast une float %6751, 1.000000e+00
  br i1 %6800, label %6801, label %6808, !dx.controlflow.hints !190

; <label>:6801                                    ; preds = %6797
  %6802 = call float @dx.op.unary.f32(i32 23, float %6751)  ; Log(value)
  %6803 = fmul fast float %6802, 0x3FE62E4300000000
  %6804 = fmul fast float %6748, %6803
  %6805 = fsub fast float -0.000000e+00, %6804
  %6806 = fsub fast float 1.000000e+00, %6751
  %6807 = fdiv fast float %6805, %6806
  br label %6808

; <label>:6808                                    ; preds = %6801, %6797
  %6809 = phi float [ %6807, %6801 ], [ %6748, %6797 ]
  %6810 = phi float [ %6803, %6801 ], [ 0.000000e+00, %6797 ]
  %6811 = fmul fast float %6774, %6758
  %6812 = fmul fast float %6775, %6758
  %6813 = fmul fast float %6776, %6758
  %6814 = fmul fast float %6777, %6758
  %6815 = fmul fast float %6787, %6756
  %6816 = fmul fast float %6798, %6756
  %6817 = fmul fast float %6809, %6756
  %6818 = fmul fast float %6788, %6756
  %6819 = fmul fast float %6799, %6756
  %6820 = fmul fast float %6810, %6756
  %6821 = fadd fast float %6815, %6811
  %6822 = fadd fast float %6816, %6812
  %6823 = fadd fast float %6817, %6813
  %6824 = fadd fast float %6818, %6814
  %6825 = fadd fast float %6819, %6814
  %6826 = fadd fast float %6820, %6814
  %6827 = fcmp fast une float %6824, 0.000000e+00
  br i1 %6827, label %6828, label %6835, !dx.controlflow.hints !191

; <label>:6828                                    ; preds = %6808
  %6829 = fmul fast float %6824, 0x3FF7154760000000
  %6830 = call float @dx.op.unary.f32(i32 21, float %6829)  ; Exp(value)
  %6831 = fsub fast float 1.000000e+00, %6830
  %6832 = fmul fast float %6821, %6831
  %6833 = fsub fast float -0.000000e+00, %6832
  %6834 = fdiv fast float %6833, %6824
  br label %6835

; <label>:6835                                    ; preds = %6828, %6808
  %6836 = phi float [ %6830, %6828 ], [ 1.000000e+00, %6808 ]
  %6837 = phi float [ %6834, %6828 ], [ %6821, %6808 ]
  %6838 = fcmp fast une float %6825, 0.000000e+00
  br i1 %6838, label %6839, label %6846, !dx.controlflow.hints !191

; <label>:6839                                    ; preds = %6835
  %6840 = fmul fast float %6825, 0x3FF7154760000000
  %6841 = call float @dx.op.unary.f32(i32 21, float %6840)  ; Exp(value)
  %6842 = fsub fast float 1.000000e+00, %6841
  %6843 = fmul fast float %6822, %6842
  %6844 = fsub fast float -0.000000e+00, %6843
  %6845 = fdiv fast float %6844, %6825
  br label %6846

; <label>:6846                                    ; preds = %6839, %6835
  %6847 = phi float [ %6841, %6839 ], [ 1.000000e+00, %6835 ]
  %6848 = phi float [ %6845, %6839 ], [ %6822, %6835 ]
  %6849 = fcmp fast une float %6826, 0.000000e+00
  br i1 %6849, label %6850, label %6857, !dx.controlflow.hints !191

; <label>:6850                                    ; preds = %6846
  %6851 = fmul fast float %6826, 0x3FF7154760000000
  %6852 = call float @dx.op.unary.f32(i32 21, float %6851)  ; Exp(value)
  %6853 = fsub fast float 1.000000e+00, %6852
  %6854 = fmul fast float %6823, %6853
  %6855 = fsub fast float -0.000000e+00, %6854
  %6856 = fdiv fast float %6855, %6826
  br label %6857

; <label>:6857                                    ; preds = %6850, %6846
  %6858 = phi float [ %6852, %6850 ], [ 1.000000e+00, %6846 ]
  %6859 = phi float [ %6856, %6850 ], [ %6823, %6846 ]
  %6860 = fcmp fast ogt float %6756, %6758
  br i1 %6860, label %6861, label %6881

; <label>:6861                                    ; preds = %6857
  %6862 = fsub fast float 1.000000e+00, %6758
  %6863 = fmul fast float %6774, %6862
  %6864 = fmul fast float %6775, %6862
  %6865 = fmul fast float %6776, %6862
  %6866 = fmul fast float %6777, %6862
  %6867 = fcmp fast une float %6866, 0.000000e+00
  br i1 %6867, label %6868, label %6919, !dx.controlflow.hints !192

; <label>:6868                                    ; preds = %6861
  %6869 = fmul fast float %6866, 0x3FF7154760000000
  %6870 = call float @dx.op.unary.f32(i32 21, float %6869)  ; Exp(value)
  %6871 = fsub fast float 1.000000e+00, %6870
  %6872 = fmul fast float %6863, %6871
  %6873 = fsub fast float -0.000000e+00, %6872
  %6874 = fmul fast float %6864, %6871
  %6875 = fsub fast float -0.000000e+00, %6874
  %6876 = fmul fast float %6865, %6871
  %6877 = fsub fast float -0.000000e+00, %6876
  %6878 = fdiv fast float %6873, %6866
  %6879 = fdiv fast float %6875, %6866
  %6880 = fdiv fast float %6877, %6866
  br label %6919

; <label>:6881                                    ; preds = %6857
  %6882 = fsub fast float 1.000000e+00, %6756
  %6883 = fmul fast float %6787, %6882
  %6884 = fmul fast float %6798, %6882
  %6885 = fmul fast float %6809, %6882
  %6886 = fmul fast float %6788, %6882
  %6887 = fmul fast float %6799, %6882
  %6888 = fmul fast float %6810, %6882
  %6889 = fcmp fast une float %6886, 0.000000e+00
  br i1 %6889, label %6890, label %6897, !dx.controlflow.hints !191

; <label>:6890                                    ; preds = %6881
  %6891 = fmul fast float %6886, 0x3FF7154760000000
  %6892 = call float @dx.op.unary.f32(i32 21, float %6891)  ; Exp(value)
  %6893 = fsub fast float 1.000000e+00, %6892
  %6894 = fmul fast float %6883, %6893
  %6895 = fsub fast float -0.000000e+00, %6894
  %6896 = fdiv fast float %6895, %6886
  br label %6897

; <label>:6897                                    ; preds = %6890, %6881
  %6898 = phi float [ %6896, %6890 ], [ %6883, %6881 ]
  %6899 = phi float [ %6892, %6890 ], [ 1.000000e+00, %6881 ]
  %6900 = fcmp fast une float %6887, 0.000000e+00
  br i1 %6900, label %6901, label %6908, !dx.controlflow.hints !191

; <label>:6901                                    ; preds = %6897
  %6902 = fmul fast float %6887, 0x3FF7154760000000
  %6903 = call float @dx.op.unary.f32(i32 21, float %6902)  ; Exp(value)
  %6904 = fsub fast float 1.000000e+00, %6903
  %6905 = fmul fast float %6884, %6904
  %6906 = fsub fast float -0.000000e+00, %6905
  %6907 = fdiv fast float %6906, %6887
  br label %6908

; <label>:6908                                    ; preds = %6901, %6897
  %6909 = phi float [ %6907, %6901 ], [ %6884, %6897 ]
  %6910 = phi float [ %6903, %6901 ], [ 1.000000e+00, %6897 ]
  %6911 = fcmp fast une float %6888, 0.000000e+00
  br i1 %6911, label %6912, label %6919, !dx.controlflow.hints !191

; <label>:6912                                    ; preds = %6908
  %6913 = fmul fast float %6888, 0x3FF7154760000000
  %6914 = call float @dx.op.unary.f32(i32 21, float %6913)  ; Exp(value)
  %6915 = fsub fast float 1.000000e+00, %6914
  %6916 = fmul fast float %6885, %6915
  %6917 = fsub fast float -0.000000e+00, %6916
  %6918 = fdiv fast float %6917, %6888
  br label %6919

; <label>:6919                                    ; preds = %6912, %6908, %6868, %6861
  %6920 = phi float [ %6918, %6912 ], [ %6880, %6868 ], [ %6865, %6861 ], [ %6885, %6908 ]
  %6921 = phi float [ %6909, %6912 ], [ %6879, %6868 ], [ %6864, %6861 ], [ %6909, %6908 ]
  %6922 = phi float [ %6898, %6912 ], [ %6878, %6868 ], [ %6863, %6861 ], [ %6898, %6908 ]
  %6923 = phi float [ %6914, %6912 ], [ %6870, %6868 ], [ 1.000000e+00, %6861 ], [ 1.000000e+00, %6908 ]
  %6924 = phi float [ %6910, %6912 ], [ %6870, %6868 ], [ 1.000000e+00, %6861 ], [ %6910, %6908 ]
  %6925 = phi float [ %6899, %6912 ], [ %6870, %6868 ], [ 1.000000e+00, %6861 ], [ %6899, %6908 ]
  %6926 = fmul fast float %6925, %6837
  %6927 = fmul fast float %6924, %6848
  %6928 = fmul fast float %6923, %6859
  %6929 = fadd fast float %6926, %6922
  %6930 = fadd fast float %6927, %6921
  %6931 = fadd fast float %6928, %6920
  %6932 = fmul fast float %6925, %6836
  %6933 = fmul fast float %6924, %6847
  %6934 = fmul fast float %6923, %6858
  br label %6935

; <label>:6935                                    ; preds = %6919, %6730
  %6936 = phi float [ %6934, %6919 ], [ %6736, %6730 ]
  %6937 = phi float [ %6933, %6919 ], [ %6735, %6730 ]
  %6938 = phi float [ %6932, %6919 ], [ %6734, %6730 ]
  %6939 = phi float [ %6931, %6919 ], [ %6733, %6730 ]
  %6940 = phi float [ %6930, %6919 ], [ %6732, %6730 ]
  %6941 = phi float [ %6929, %6919 ], [ %6731, %6730 ]
  %6942 = call float @dx.op.dot3.f32(i32 55, float %6938, float %6937, float %6936, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6943 = call float @dx.op.dot3.f32(i32 55, float %6941, float %6940, float %6939, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6944 = select i1 %1435, float %6942, float %6938
  %6945 = select i1 %1435, float %6942, float %6937
  %6946 = select i1 %1435, float 1.000000e+00, float %6936
  %6947 = select i1 %1435, float %6943, float %6941
  %6948 = select i1 %1435, float 0.000000e+00, float %6940
  %6949 = select i1 %1435, float 0.000000e+00, float %6939
  %6950 = fmul fast float %6944, %6176
  %6951 = fmul fast float %6945, %6178
  %6952 = fmul fast float %6946, %6180
  %6953 = fadd fast float %6950, %6947
  %6954 = fadd fast float %6951, %6948
  %6955 = fadd fast float %6949, %6952
  %6956 = fmul fast float %5513, %88
  %6957 = fmul fast float %5514, %89
  %6958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %58, float %6956, float %6957, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6959 = extractvalue %dx.types.ResRet.f32 %6958, 0
  %6960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %58, float %6956, float %6957, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6961 = extractvalue %dx.types.ResRet.f32 %6960, 0
  %6962 = extractvalue %dx.types.ResRet.f32 %6960, 1
  %6963 = extractvalue %dx.types.ResRet.f32 %6960, 2
  %6964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6965 = extractvalue %dx.types.CBufRet.f32 %6964, 1
  %6966 = fmul fast float %6965, %6961
  %6967 = fmul fast float %6965, %6962
  %6968 = fmul fast float %6965, %6963
  %6969 = fmul fast float %6959, %6938
  %6970 = call float @dx.op.dot3.f32(i32 55, float %6959, float %6959, float %6959, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6971 = call float @dx.op.dot3.f32(i32 55, float %6966, float %6967, float %6968, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6972 = select i1 %1435, float %6970, float %6959
  %6973 = select i1 %1435, float 1.000000e+00, float %6959
  %6974 = select i1 %1435, float %6971, float %6966
  %6975 = select i1 %1435, float 0.000000e+00, float %6967
  %6976 = select i1 %1435, float 0.000000e+00, float %6968
  %6977 = fmul fast float %6972, %6953
  %6978 = fmul fast float %6972, %6954
  %6979 = fmul fast float %6973, %6955
  %6980 = fadd fast float %6977, %6974
  %6981 = fadd fast float %6978, %6975
  %6982 = fadd fast float %6976, %6979
  br label %6983

; <label>:6983                                    ; preds = %6935, %6181
  %6984 = phi float [ %6183, %6181 ], [ %6957, %6935 ]
  %6985 = phi float [ %6182, %6181 ], [ %6956, %6935 ]
  %6986 = phi float [ %6176, %6181 ], [ %6980, %6935 ]
  %6987 = phi float [ %6178, %6181 ], [ %6981, %6935 ]
  %6988 = phi float [ %6180, %6181 ], [ %6982, %6935 ]
  %6989 = phi float [ 1.000000e+00, %6181 ], [ %6969, %6935 ]
  %6990 = call float @dx.op.unary.f32(i32 7, float %6985)  ; Saturate(value)
  %6991 = call float @dx.op.unary.f32(i32 7, float %6984)  ; Saturate(value)
  %6992 = select i1 %105, i32 0, i32 2
  %6993 = or i32 %6992, 1
  %6994 = uitofp i32 %6993 to float
  %6995 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %58, float %6990, float %6991, float %6994, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6996 = extractvalue %dx.types.ResRet.f32 %6995, 0
  %6997 = extractvalue %dx.types.ResRet.f32 %6995, 1
  %6998 = extractvalue %dx.types.ResRet.f32 %6995, 2
  %6999 = extractvalue %dx.types.ResRet.f32 %6995, 3
  %7000 = add nuw nsw i32 %6992, 2
  %7001 = uitofp i32 %7000 to float
  %7002 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %58, float %6990, float %6991, float %7001, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7003 = extractvalue %dx.types.ResRet.f32 %7002, 0
  %7004 = extractvalue %dx.types.ResRet.f32 %7002, 1
  %7005 = extractvalue %dx.types.ResRet.f32 %7002, 2
  %7006 = extractvalue %dx.types.ResRet.f32 %7002, 3
  %7007 = call float @dx.op.binary.f32(i32 35, float %6997, float %6998)  ; FMax(a,b)
  %7008 = call float @dx.op.binary.f32(i32 35, float %6996, float %7007)  ; FMax(a,b)
  %7009 = call float @dx.op.binary.f32(i32 35, float %7008, float %6999)  ; FMax(a,b)
  %7010 = call float @dx.op.binary.f32(i32 36, float %7004, float %7005)  ; FMin(a,b)
  %7011 = call float @dx.op.binary.f32(i32 36, float %7003, float %7010)  ; FMin(a,b)
  %7012 = call float @dx.op.binary.f32(i32 36, float %7011, float %7006)  ; FMin(a,b)
  %7013 = fmul fast float %7009, 2.550000e+02
  %7014 = fadd fast float %7013, 0x3F70101020000000
  %7015 = fptoui float %7014 to i32
  %7016 = fmul fast float %7012, 2.550000e+02
  %7017 = fadd fast float %7016, 0x3F70101020000000
  %7018 = fptoui float %7017 to i32
  %7019 = icmp ult i32 %7015, %7018
  br i1 %7019, label %7020, label %7072

; <label>:7020                                    ; preds = %6983
  %7021 = fcmp fast ogt float %77, 9.843750e-01
  %7022 = fadd fast float %78, -4.000000e+00
  %7023 = select i1 %7021, float -4.000000e+00, float %7022
  %7024 = call float @dx.op.binary.f32(i32 35, float %7023, float 0.000000e+00)  ; FMax(a,b)
  %7025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7026 = extractvalue %dx.types.CBufRet.f32 %7025, 0
  %7027 = fadd fast float %7026, %7024
  %7028 = extractvalue %dx.types.CBufRet.f32 %7025, 2
  %7029 = fmul fast float %7027, %7028
  %7030 = call float @dx.op.unary.f32(i32 23, float %7029)  ; Log(value)
  %7031 = extractvalue %dx.types.CBufRet.f32 %7025, 3
  %7032 = fmul fast float %7031, %7030
  %7033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7034 = extractvalue %dx.types.CBufRet.f32 %7033, 2
  %7035 = fmul fast float %7032, %7034
  %7036 = call float @dx.op.unary.f32(i32 7, float %7035)  ; Saturate(value)
  %7037 = uitofp i32 %7015 to float
  %7038 = uitofp i32 %7018 to float
  %7039 = fadd fast float %7037, 5.000000e-01
  %7040 = fadd fast float %7038, 5.000000e-01
  %7041 = fmul fast float %7034, %7039
  %7042 = fmul fast float %7034, %7040
  %7043 = fadd fast float %7041, 0x3F0FFB4800000000
  %7044 = fadd fast float %7042, 0xBF0FFB4800000000
  %7045 = call float @dx.op.binary.f32(i32 35, float %7036, float %7043)  ; FMax(a,b)
  %7046 = call float @dx.op.binary.f32(i32 36, float %7045, float %7044)  ; FMin(a,b)
  %7047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7048 = extractvalue %dx.types.CBufRet.f32 %7047, 1
  %7049 = extractvalue %dx.types.CBufRet.f32 %7047, 2
  %7050 = extractvalue %dx.types.CBufRet.f32 %7047, 0
  %7051 = select i1 %105, float 0.000000e+00, float %7050
  %7052 = fmul fast float %7048, %7046
  %7053 = fadd fast float %7051, %7052
  %7054 = fadd fast float %7051, %7049
  %7055 = fsub fast float %7048, %7049
  %7056 = fadd fast float %7055, %7051
  %7057 = call float @dx.op.binary.f32(i32 35, float %7053, float %7054)  ; FMax(a,b)
  %7058 = call float @dx.op.binary.f32(i32 36, float %7057, float %7056)  ; FMin(a,b)
  %7059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %56, float %6990, float %6991, float %7058, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7060 = extractvalue %dx.types.ResRet.f32 %7059, 0
  %7061 = extractvalue %dx.types.ResRet.f32 %7059, 1
  %7062 = extractvalue %dx.types.ResRet.f32 %7059, 2
  %7063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %56, float %6990, float %6991, float %7058, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7064 = extractvalue %dx.types.ResRet.f32 %7063, 0
  %7065 = extractvalue %dx.types.ResRet.f32 %7063, 1
  %7066 = extractvalue %dx.types.ResRet.f32 %7063, 2
  %7067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7068 = extractvalue %dx.types.CBufRet.f32 %7067, 1
  %7069 = fmul fast float %7068, %7064
  %7070 = fmul fast float %7068, %7065
  %7071 = fmul fast float %7068, %7066
  br label %7072

; <label>:7072                                    ; preds = %7020, %6983
  %7073 = phi float [ %7060, %7020 ], [ 1.000000e+00, %6983 ]
  %7074 = phi float [ %7061, %7020 ], [ 1.000000e+00, %6983 ]
  %7075 = phi float [ %7062, %7020 ], [ 1.000000e+00, %6983 ]
  %7076 = phi float [ %7069, %7020 ], [ 0.000000e+00, %6983 ]
  %7077 = phi float [ %7070, %7020 ], [ 0.000000e+00, %6983 ]
  %7078 = phi float [ %7071, %7020 ], [ 0.000000e+00, %6983 ]
  %7079 = fmul fast float %7073, %6989
  %7080 = call float @dx.op.dot3.f32(i32 55, float %7073, float %7074, float %7075, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7081 = call float @dx.op.dot3.f32(i32 55, float %7076, float %7077, float %7078, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7082 = select i1 %1435, float %7080, float %7073
  %7083 = select i1 %1435, float %7080, float %7074
  %7084 = select i1 %1435, float 1.000000e+00, float %7075
  %7085 = select i1 %1435, float %7081, float %7076
  %7086 = select i1 %1435, float 0.000000e+00, float %7077
  %7087 = select i1 %1435, float 0.000000e+00, float %7078
  %7088 = fmul fast float %7082, %6986
  %7089 = fmul fast float %7083, %6987
  %7090 = fmul fast float %7084, %6988
  %7091 = fadd fast float %7088, %7085
  %7092 = fadd fast float %7089, %7086
  %7093 = fadd fast float %7087, %7090
  %7094 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7095 = extractvalue %dx.types.CBufRet.i32 %7094, 3
  %7096 = and i32 %7095, 3
  %7097 = icmp ne i32 %7096, 0
  %7098 = and i32 %7095, 4
  %7099 = icmp ne i32 %7098, 0
  %7100 = and i1 %7097, %7099
  %7101 = and i1 %1435, %7100
  br i1 %7101, label %7102, label %7108

; <label>:7102                                    ; preds = %7072
  %7103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7104 = extractvalue %dx.types.CBufRet.f32 %7103, 1
  %7105 = fadd fast float %7079, -1.000000e+00
  %7106 = fmul fast float %7104, %7105
  %7107 = fadd fast float %7106, 1.000000e+00
  br label %7108

; <label>:7108                                    ; preds = %7102, %7072
  %7109 = phi float [ %7107, %7102 ], [ %7079, %7072 ]
  %7110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7111 = extractvalue %dx.types.CBufRet.f32 %7110, 0
  br i1 %1435, label %7112, label %7126

; <label>:7112                                    ; preds = %7108
  %7113 = fadd fast float %7091, %7092
  %7114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7115 = extractvalue %dx.types.CBufRet.f32 %7114, 3
  %7116 = extractvalue %dx.types.CBufRet.f32 %6164, 1
  %7117 = fsub fast float %6170, %6158
  %7118 = fadd fast float %7117, %6171
  %7119 = fsub fast float %7118, %7116
  %7120 = extractvalue %dx.types.CBufRet.f32 %6164, 2
  %7121 = fmul fast float %7119, %7120
  %7122 = call float @dx.op.unary.f32(i32 7, float %7121)  ; Saturate(value)
  %7123 = fsub fast float %7122, %7115
  %7124 = fmul fast float %7123, %7109
  %7125 = fadd fast float %7124, %7115
  br label %7129

; <label>:7126                                    ; preds = %7108
  %7127 = fmul fast float %7111, %7092
  %7128 = fmul fast float %7111, %7093
  br label %7129

; <label>:7129                                    ; preds = %7126, %7112
  %7130 = phi float [ %7113, %7112 ], [ %7091, %7126 ]
  %7131 = phi float [ %7125, %7112 ], [ %7127, %7126 ]
  %7132 = phi float [ 1.000000e+00, %7112 ], [ %7128, %7126 ]
  %7133 = fmul float %7111, %7130
  %7134 = fadd fast float %799, 0x3FE3C6EF40000000
  %7135 = call float @dx.op.unary.f32(i32 22, float %7134)  ; Frc(value)
  %7136 = call float @dx.op.unary.f32(i32 23, float %7133)  ; Log(value)
  %7137 = fadd fast float %7136, -7.000000e+00
  %7138 = call float @dx.op.unary.f32(i32 21, float %7137)  ; Exp(value)
  %7139 = fmul fast float %7135, 2.000000e+00
  %7140 = fadd fast float %7139, -1.000000e+00
  %7141 = fmul fast float %7138, %7140
  %7142 = fcmp fast ogt float %7133, 0.000000e+00
  %7143 = select i1 %7142, float %7141, float 0.000000e+00
  %7144 = fadd fast float %7143, %7133
  %7145 = fadd fast float %799, 0x3FF3C6EF40000000
  %7146 = call float @dx.op.unary.f32(i32 22, float %7145)  ; Frc(value)
  %7147 = call float @dx.op.unary.f32(i32 23, float %7131)  ; Log(value)
  %7148 = fadd fast float %7147, -7.000000e+00
  %7149 = call float @dx.op.unary.f32(i32 21, float %7148)  ; Exp(value)
  %7150 = fmul fast float %7146, 2.000000e+00
  %7151 = fadd fast float %7150, -1.000000e+00
  %7152 = fmul fast float %7149, %7151
  %7153 = fcmp fast ogt float %7131, 0.000000e+00
  %7154 = select i1 %7153, float %7152, float 0.000000e+00
  %7155 = fadd fast float %7154, %7131
  %7156 = fadd fast float %799, 0x3FFDAA66E0000000
  %7157 = call float @dx.op.unary.f32(i32 22, float %7156)  ; Frc(value)
  %7158 = call float @dx.op.unary.f32(i32 23, float %7132)  ; Log(value)
  %7159 = fadd fast float %7158, -6.000000e+00
  %7160 = call float @dx.op.unary.f32(i32 21, float %7159)  ; Exp(value)
  %7161 = fmul fast float %7157, 2.000000e+00
  %7162 = fadd fast float %7161, -1.000000e+00
  %7163 = fmul fast float %7160, %7162
  %7164 = fcmp fast ogt float %7132, 0.000000e+00
  %7165 = select i1 %7164, float %7163, float 0.000000e+00
  %7166 = fadd fast float %7165, %7132
  %7167 = call float @dx.op.binary.f32(i32 36, float %7144, float 3.225500e+04)  ; FMin(a,b)
  %7168 = call float @dx.op.binary.f32(i32 36, float %7155, float 3.225500e+04)  ; FMin(a,b)
  %7169 = call float @dx.op.binary.f32(i32 36, float %7166, float 3.225500e+04)  ; FMin(a,b)
  %7170 = fmul fast float %7167, %6154
  %7171 = fmul fast float %7168, %6154
  %7172 = fmul fast float %7169, %6154
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7170)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7171)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7172)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6154)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!77 = !{[20 x i32] [i32 18, i32 4, i32 15, i32 15, i32 7, i32 15, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0]}
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

