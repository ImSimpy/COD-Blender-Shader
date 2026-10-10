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
; shader hash: 8a67a21b4fe530c21320a39e9322bd08
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
  %193 = shl nuw nsw i32 %192, 16
  %194 = or i32 %193, %188
  %195 = mul nuw nsw i32 %188, 148
  %196 = add nuw nsw i32 %195, 4
  %197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.f32 %197, 0
  %199 = add nuw nsw i32 %195, 8
  %200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.f32 %200, 0
  %202 = add nuw nsw i32 %195, 48
  %203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.f32 %203, 0
  %205 = add nuw nsw i32 %195, 60
  %206 = add nuw nsw i32 %195, 104
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = add nuw nsw i32 %195, 116
  %210 = fsub fast float 1.000000e+00, %71
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 2
  %213 = fmul fast float %212, %70
  %214 = fmul fast float %212, %210
  %215 = fadd fast float %213, %198
  %216 = fadd fast float %214, %201
  %217 = add nuw nsw i32 %195, 20
  %218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = add nuw nsw i32 %195, 24
  %221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 0
  %223 = add nuw nsw i32 %195, 40
  %224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.f32 %224, 0
  %226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.f32 %226, 0
  %228 = add nuw nsw i32 %195, 52
  %229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.f32 %229, 0
  %231 = add nuw nsw i32 %195, 96
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = add nuw nsw i32 %195, 108
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %241 = fmul fast float %240, %70
  %242 = fmul fast float %240, %71
  %243 = extractvalue %dx.types.CBufRet.f32 %239, 3
  %244 = fadd fast float %241, %243
  %245 = fadd fast float %242, %243
  %246 = extractvalue %dx.types.CBufRet.f32 %239, 0
  %247 = fmul fast float %246, %70
  %248 = fmul fast float %246, %71
  %249 = extractvalue %dx.types.CBufRet.f32 %239, 1
  %250 = fadd fast float %247, %249
  %251 = fadd fast float %248, %249
  %252 = add i32 %233, 0
  %253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %252, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %254 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %253, i32 0)  ; GetDimensions(handle,mipLevel)
  %255 = extractvalue %dx.types.Dimensions %254, 0
  %256 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %255)  ; FirstbitLo(value)
  %257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.i32 %257, 1
  %259 = sub nsw i32 %258, %256
  %260 = sitofp i32 %259 to float
  %261 = fsub fast float %168, %260
  %262 = call float @dx.op.binary.f32(i32 35, float %261, float 0.000000e+00)  ; FMax(a,b)
  %263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %253, %dx.types.Handle %56, float %244, float %245, float %225, float undef, i32 0, i32 0, i32 undef, float %262)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = fmul fast float %264, %219
  %266 = add i32 %235, 0
  %267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %266, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %268 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %267, i32 0)  ; GetDimensions(handle,mipLevel)
  %269 = extractvalue %dx.types.Dimensions %268, 0
  %270 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %269)  ; FirstbitLo(value)
  %271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.i32 %271, 1
  %273 = sub nsw i32 %272, %270
  %274 = sitofp i32 %273 to float
  %275 = fsub fast float %168, %274
  %276 = call float @dx.op.binary.f32(i32 35, float %275, float 0.000000e+00)  ; FMax(a,b)
  %277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %267, %dx.types.Handle %56, float %250, float %251, float %227, float undef, i32 0, i32 0, i32 undef, float %276)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = extractvalue %dx.types.ResRet.f32 %277, 1
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 3
  %282 = fmul fast float %281, 2.000000e+00
  %283 = fmul fast float %282, %278
  %284 = fmul fast float %282, %279
  %285 = fsub fast float %283, %281
  %286 = fsub fast float %284, %281
  %287 = fmul fast float %285, %285
  %288 = fmul fast float %286, %286
  %289 = fadd fast float %287, %288
  %290 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %291 = add i32 %238, 0
  %292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %291, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %293 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %292, i32 0)  ; GetDimensions(handle,mipLevel)
  %294 = extractvalue %dx.types.Dimensions %293, 0
  %295 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %294)  ; FirstbitLo(value)
  %296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.i32 %296, 1
  %298 = sub nsw i32 %297, %295
  %299 = sitofp i32 %298 to float
  %300 = fsub fast float %168, %299
  %301 = call float @dx.op.binary.f32(i32 35, float %300, float 0.000000e+00)  ; FMax(a,b)
  %302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %292, %dx.types.Handle %56, float %250, float %251, float %230, float undef, i32 0, i32 0, i32 undef, float %301)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %303 = extractvalue %dx.types.ResRet.f32 %302, 0
  %304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.i32 %304, 0
  %306 = call i32 @dx.op.binary.i32(i32 40, i32 %188, i32 %305)  ; UMin(a,b)
  %307 = mul i32 %306, 36
  %308 = add i32 %307, 4
  %309 = icmp eq i32 %192, 0
  br i1 %309, label %1538, label %310

; <label>:310                                     ; preds = %0
  br label %311

; <label>:311                                     ; preds = %1526, %310
  %312 = phi i32 [ %1527, %1526 ], [ %194, %310 ]
  %313 = phi i32 [ %1528, %1526 ], [ %171, %310 ]
  %314 = phi i32 [ %1529, %1526 ], [ %171, %310 ]
  %315 = phi float [ %1530, %1526 ], [ 0.000000e+00, %310 ]
  %316 = phi float [ %1531, %1526 ], [ 0.000000e+00, %310 ]
  %317 = phi float [ %1532, %1526 ], [ 0.000000e+00, %310 ]
  %318 = phi i32 [ %1533, %1526 ], [ -1, %310 ]
  %319 = phi float [ %1534, %1526 ], [ 0.000000e+00, %310 ]
  %320 = phi i32 [ %326, %1526 ], [ %192, %310 ]
  %321 = phi i32 [ %1535, %1526 ], [ %171, %310 ]
  %322 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %320)  ; FirstbitLo(value)
  %323 = and i32 %322, 31
  %324 = shl i32 1, %323
  %325 = xor i32 %324, -1
  %326 = and i32 %320, %325
  %327 = shl i32 %322, 2
  %328 = add i32 %308, %327
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = and i32 %330, 32767
  %332 = add i32 %205, %327
  %333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 0
  %337 = fmul fast float %336, %70
  %338 = fmul fast float %336, %71
  %339 = extractvalue %dx.types.CBufRet.f32 %335, 1
  %340 = fadd fast float %337, %339
  %341 = fadd fast float %338, %339
  %342 = add i32 %209, %327
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = add i32 %344, 0
  %346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %345, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %347 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %346, i32 0)  ; GetDimensions(handle,mipLevel)
  %348 = extractvalue %dx.types.Dimensions %347, 0
  %349 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %348)  ; FirstbitLo(value)
  %350 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.i32 %350, 1
  %352 = sub nsw i32 %351, %349
  %353 = sitofp i32 %352 to float
  %354 = fsub fast float %168, %353
  %355 = call float @dx.op.binary.f32(i32 35, float %354, float 0.000000e+00)  ; FMax(a,b)
  %356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %346, %dx.types.Handle %56, float %340, float %341, float %334, float undef, i32 0, i32 0, i32 undef, float %355)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = fcmp fast ogt float %357, 0.000000e+00
  br i1 %358, label %359, label %1526

; <label>:359                                     ; preds = %311
  %360 = mul nuw nsw i32 %331, 928
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = or i32 %360, 8
  %364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = or i32 %360, 12
  %367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.f32 %367, 1
  %369 = or i32 %360, 20
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = or i32 %360, 24
  %373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.f32 %373, 0
  %375 = extractvalue %dx.types.ResRet.f32 %373, 1
  %376 = extractvalue %dx.types.ResRet.f32 %373, 2
  %377 = extractvalue %dx.types.ResRet.f32 %373, 3
  %378 = add nuw nsw i32 %360, 40
  %379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.f32 %379, 0
  %381 = add nuw nsw i32 %360, 80
  %382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.f32 %382, 0
  %384 = add nuw nsw i32 %360, 228
  %385 = add nuw nsw i32 %360, 516
  %386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.f32 %386, 1
  %388 = add nuw nsw i32 %360, 552
  %389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = extractvalue %dx.types.ResRet.f32 %389, 1
  %392 = extractvalue %dx.types.ResRet.f32 %389, 2
  %393 = add nuw nsw i32 %360, 596
  %394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.f32 %394, 0
  %396 = extractvalue %dx.types.ResRet.f32 %394, 1
  %397 = add nuw nsw i32 %360, 620
  %398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.f32 %398, 0
  %400 = extractvalue %dx.types.ResRet.f32 %398, 1
  %401 = add nuw nsw i32 %360, 628
  %402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = extractvalue %dx.types.ResRet.f32 %402, 1
  %405 = extractvalue %dx.types.ResRet.f32 %402, 2
  %406 = extractvalue %dx.types.ResRet.f32 %402, 3
  %407 = add nuw nsw i32 %360, 644
  %408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.f32 %408, 0
  %410 = add nuw nsw i32 %360, 648
  %411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.f32 %411, 0
  %413 = add nuw nsw i32 %360, 652
  %414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = add nuw nsw i32 %360, 656
  %417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.f32 %417, 0
  %419 = add nuw nsw i32 %360, 660
  %420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  %422 = add nuw nsw i32 %360, 664
  %423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.f32 %423, 0
  %425 = extractvalue %dx.types.ResRet.f32 %423, 1
  %426 = add nuw nsw i32 %360, 676
  %427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 0
  %429 = extractvalue %dx.types.ResRet.f32 %427, 1
  %430 = add nuw nsw i32 %360, 696
  %431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.f32 %431, 0
  %433 = extractvalue %dx.types.ResRet.f32 %431, 1
  %434 = add nuw nsw i32 %360, 704
  %435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = add nuw nsw i32 %360, 708
  %438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = add nuw nsw i32 %360, 716
  %442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = add nuw nsw i32 %360, 720
  %445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.f32 %445, 0
  %447 = extractvalue %dx.types.ResRet.f32 %445, 1
  %448 = add nuw nsw i32 %360, 732
  %449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 1
  %451 = add nuw nsw i32 %360, 744
  %452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  %454 = add nuw nsw i32 %360, 748
  %455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.f32 %455, 0
  %457 = add nuw nsw i32 %360, 752
  %458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.f32 %458, 0
  %460 = add nuw nsw i32 %360, 756
  %461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  %463 = extractvalue %dx.types.ResRet.f32 %461, 1
  %464 = extractvalue %dx.types.ResRet.f32 %461, 2
  %465 = extractvalue %dx.types.ResRet.f32 %461, 3
  %466 = add nuw nsw i32 %360, 780
  %467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = add nuw nsw i32 %360, 792
  %471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.f32 %471, 0
  %473 = extractvalue %dx.types.ResRet.f32 %471, 1
  %474 = add nuw nsw i32 %360, 800
  %475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = extractvalue %dx.types.ResRet.f32 %475, 1
  %478 = add nuw nsw i32 %360, 812
  %479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.f32 %479, 0
  %481 = add nuw nsw i32 %360, 816
  %482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.f32 %482, 1
  %484 = add nuw nsw i32 %360, 884
  %485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = extractvalue %dx.types.ResRet.f32 %485, 1
  %488 = extractvalue %dx.types.ResRet.f32 %485, 2
  %489 = add nuw nsw i32 %360, 896
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = add nuw nsw i32 %360, 900
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = add nuw nsw i32 %360, 904
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = add nuw nsw i32 %360, 908
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = add nuw nsw i32 %360, 912
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = add nuw nsw i32 %360, 916
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = lshr i32 %312, 24
  %508 = uitofp i32 %507 to float
  %509 = fmul fast float %508, 0x3F70101020000000
  %510 = and i32 %362, 128
  %511 = icmp ne i32 %510, 0
  %512 = extractvalue %dx.types.CBufRet.i32 %350, 0
  %513 = and i32 %512, 512
  %514 = icmp ne i32 %513, 0
  %515 = and i1 %511, %514
  %516 = select i1 %515, float 0.000000e+00, float %357
  %517 = fadd fast float %516, %509
  %518 = call float @dx.op.unary.f32(i32 7, float %517)  ; Saturate(value)
  %519 = fmul fast float %518, 2.550000e+02
  %520 = fptoui float %519 to i32
  %521 = shl i32 %520, 24
  %522 = and i32 %312, 16777215
  %523 = or i32 %521, %522
  %524 = fcmp fast ogt float %357, %319
  %525 = select i1 %524, i32 %331, i32 %318
  %526 = select i1 %524, float %357, float %319
  %527 = fcmp fast ole float %69, 0x3FA4B5DCC0000000
  %528 = fmul fast float %69, 0x3FB3D07220000000
  %529 = fadd fast float %69, 0x3FAC28F5C0000000
  %530 = fmul fast float %529, 0x3FEE54EDE0000000
  %531 = call float @dx.op.unary.f32(i32 23, float %530)  ; Log(value)
  %532 = fmul fast float %531, 0x4003333340000000
  %533 = call float @dx.op.unary.f32(i32 21, float %532)  ; Exp(value)
  %534 = select i1 %527, float %528, float %533
  %535 = call float @dx.op.unary.f32(i32 7, float %534)  ; Saturate(value)
  %536 = fmul fast float %395, %303
  %537 = fadd fast float %536, %396
  %538 = call float @dx.op.unary.f32(i32 7, float %537)  ; Saturate(value)
  %539 = call float @dx.op.binary.f32(i32 35, float %535, float %538)  ; FMax(a,b)
  %540 = add i32 %494, 0
  %541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %540, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 0
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 0
  %546 = extractvalue %dx.types.CBufRet.f32 %544, 1
  %547 = fadd fast float %545, %144
  %548 = fadd fast float %546, %145
  %549 = fmul fast float %144, %144
  %550 = fmul fast float %145, %145
  %551 = fadd fast float %549, %550
  %552 = fmul fast float %146, %146
  %553 = fadd fast float %551, %552
  %554 = call float @dx.op.unary.f32(i32 24, float %553)  ; Sqrt(value)
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 0
  %557 = fcmp fast ogt float %554, %556
  %558 = zext i1 %557 to i32
  %559 = extractvalue %dx.types.CBufRet.f32 %555, 1
  %560 = fcmp fast ogt float %554, %559
  %561 = zext i1 %560 to i32
  %562 = add nuw nsw i32 %561, %558
  %563 = extractvalue %dx.types.CBufRet.f32 %555, 2
  %564 = fcmp fast ogt float %554, %563
  %565 = zext i1 %564 to i32
  %566 = add nuw nsw i32 %562, %565
  %567 = icmp ult i32 %566, 3
  %568 = zext i1 %567 to i32
  %569 = shl nuw nsw i32 %566, 2
  %570 = add nuw nsw i32 %569, 48
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 %570)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 1
  %573 = fcmp fast ogt float %554, %572
  %574 = zext i1 %573 to i32
  %575 = or i32 %569, 1
  %576 = add nuw nsw i32 %575, 48
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 %576)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 1
  %579 = fcmp fast ogt float %554, %578
  %580 = zext i1 %579 to i32
  %581 = add nuw nsw i32 %580, %574
  %582 = or i32 %569, 2
  %583 = add nuw nsw i32 %582, 48
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 %583)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %586 = fcmp fast ogt float %554, %585
  %587 = zext i1 %586 to i32
  %588 = add nuw nsw i32 %581, %587
  %589 = add i32 %371, -1
  %590 = call i32 @dx.op.binary.i32(i32 40, i32 %588, i32 %589)  ; UMin(a,b)
  %591 = add i32 %569, %590
  %592 = call i32 @dx.op.binary.i32(i32 40, i32 %591, i32 12)  ; UMin(a,b)
  %593 = add i32 %592, 48
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 %593)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 0
  %596 = fcmp fast oge float %554, %595
  %597 = zext i1 %596 to i32
  %598 = call i32 @dx.op.binary.i32(i32 40, i32 %371, i32 %568)  ; UMin(a,b)
  %599 = call i32 @dx.op.binary.i32(i32 40, i32 %597, i32 %598)  ; UMin(a,b)
  %600 = add i32 %599, %371
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %780, label %602

; <label>:602                                     ; preds = %359
  br label %603

; <label>:603                                     ; preds = %603, %602
  %604 = phi float [ %776, %603 ], [ 0.000000e+00, %602 ]
  %605 = phi float [ %768, %603 ], [ 0.000000e+00, %602 ]
  %606 = phi float [ %769, %603 ], [ 0.000000e+00, %602 ]
  %607 = phi i32 [ %615, %603 ], [ %592, %602 ]
  %608 = phi i32 [ %777, %603 ], [ 0, %602 ]
  %609 = add i32 %608, %607
  %610 = and i32 %609, -4
  %611 = add i32 %610, %371
  %612 = icmp uge i32 %609, %611
  %613 = sub i32 4, %371
  %614 = select i1 %612, i32 %613, i32 0
  %615 = add i32 %614, %607
  %616 = add i32 %614, %609
  %617 = and i32 %616, 3
  %618 = lshr i32 %616, 2
  %619 = add i32 %616, 32
  %620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 %619)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.f32 %620, 0
  %622 = extractvalue %dx.types.CBufRet.f32 %620, 1
  %623 = extractvalue %dx.types.CBufRet.f32 %620, 2
  %624 = extractvalue %dx.types.CBufRet.f32 %620, 3
  %625 = fmul fast float %621, %554
  %626 = fadd fast float %625, %622
  %627 = call float @dx.op.unary.f32(i32 7, float %626)  ; Saturate(value)
  %628 = fmul fast float %623, %554
  %629 = fadd fast float %628, %624
  %630 = call float @dx.op.unary.f32(i32 7, float %629)  ; Saturate(value)
  %631 = call float @dx.op.binary.f32(i32 36, float %627, float %630)  ; FMin(a,b)
  %632 = mul nuw nsw i32 %617, 72
  %633 = add nuw nsw i32 %384, %632
  %634 = add nuw nsw i32 %633, 16
  %635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.f32 %635, 0
  %637 = extractvalue %dx.types.ResRet.f32 %635, 1
  %638 = extractvalue %dx.types.ResRet.f32 %635, 2
  %639 = extractvalue %dx.types.ResRet.f32 %635, 3
  %640 = add nuw nsw i32 %633, 36
  %641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  %643 = add nuw nsw i32 %633, 56
  %644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.f32 %644, 0
  %646 = fmul fast float %290, 3.906250e-03
  %647 = fmul fast float %646, %383
  %648 = fmul fast float %647, %642
  %649 = fmul fast float %648, %645
  %650 = extractvalue %dx.types.ResRet.f32 %644, 1
  %651 = fadd fast float %649, %650
  %652 = call float @dx.op.binary.f32(i32 35, float %651, float 0.000000e+00)  ; FMax(a,b)
  %653 = add nuw nsw i32 %633, 32
  %654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %653, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.f32 %654, 0
  %656 = fmul fast float %642, %285
  %657 = fmul fast float %642, %286
  %658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %659 = extractvalue %dx.types.CBufRet.f32 %658, 1
  %660 = add nuw nsw i32 %633, 40
  %661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %660, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.f32 %661, 0
  %663 = extractvalue %dx.types.ResRet.f32 %661, 1
  %664 = extractvalue %dx.types.ResRet.f32 %661, 2
  %665 = extractvalue %dx.types.ResRet.f32 %661, 3
  %666 = fadd fast float %659, %184
  %667 = fadd fast float %666, %664
  %668 = fmul fast float %666, %663
  %669 = call float @dx.op.unary.f32(i32 29, float %668)  ; Round_z(value)
  %670 = fmul fast float %662, %669
  %671 = fsub fast float %666, %670
  %672 = fmul fast float %667, %663
  %673 = call float @dx.op.unary.f32(i32 29, float %672)  ; Round_z(value)
  %674 = fmul fast float %673, %662
  %675 = fsub fast float %667, %674
  %676 = fmul fast float %671, %656
  %677 = fmul fast float %671, %657
  %678 = fmul fast float %675, %656
  %679 = fmul fast float %675, %657
  %680 = fsub fast float %547, %676
  %681 = fsub fast float %548, %677
  %682 = fsub fast float %547, %678
  %683 = fsub fast float %548, %679
  %684 = fsub fast float %664, %671
  %685 = call float @dx.op.unary.f32(i32 6, float %684)  ; FAbs(value)
  %686 = fmul fast float %685, %665
  %687 = call float @dx.op.unary.f32(i32 7, float %686)  ; Saturate(value)
  %688 = fmul fast float %365, 4.000000e+00
  %689 = uitofp i32 %618 to float
  %690 = fadd fast float %689, %688
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 0
  %693 = extractvalue %dx.types.CBufRet.f32 %691, 1
  %694 = extractvalue %dx.types.CBufRet.f32 %691, 2
  %695 = extractvalue %dx.types.CBufRet.f32 %691, 3
  %696 = getelementptr inbounds [4 x float], [4 x float]* %65, i32 0, i32 0
  store float %692, float* %696, align 4
  %697 = getelementptr inbounds [4 x float], [4 x float]* %65, i32 0, i32 1
  store float %693, float* %697, align 4
  %698 = getelementptr inbounds [4 x float], [4 x float]* %65, i32 0, i32 2
  store float %694, float* %698, align 4
  %699 = getelementptr inbounds [4 x float], [4 x float]* %65, i32 0, i32 3
  store float %695, float* %699, align 4
  %700 = getelementptr inbounds [4 x float], [4 x float]* %65, i32 0, i32 %618
  %701 = load float, float* %700, align 4, !tbaa !101, !noalias !105
  %702 = fmul fast float %701, %368
  %703 = fmul fast float %680, %636
  %704 = call float @dx.op.tertiary.f32(i32 46, float %637, float %681, float %703)  ; FMad(a,b,c)
  %705 = fmul fast float %680, %638
  %706 = call float @dx.op.tertiary.f32(i32 46, float %639, float %681, float %705)  ; FMad(a,b,c)
  %707 = add nuw nsw i32 %633, 8
  %708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  %710 = extractvalue %dx.types.ResRet.f32 %708, 1
  %711 = fadd fast float %709, %704
  %712 = fadd fast float %710, %706
  %713 = fmul fast float %711, %702
  %714 = fmul fast float %712, %702
  %715 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.f32 %715, 0
  %717 = extractvalue %dx.types.ResRet.f32 %715, 1
  %718 = fmul fast float %713, %716
  %719 = fmul fast float %714, %717
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 2
  %722 = fadd fast float %718, %721
  %723 = fadd fast float %719, %721
  %724 = fmul fast float %682, %636
  %725 = call float @dx.op.tertiary.f32(i32 46, float %637, float %683, float %724)  ; FMad(a,b,c)
  %726 = fmul fast float %682, %638
  %727 = call float @dx.op.tertiary.f32(i32 46, float %639, float %683, float %726)  ; FMad(a,b,c)
  %728 = fadd fast float %709, %725
  %729 = fadd fast float %710, %727
  %730 = fmul fast float %728, %702
  %731 = fmul fast float %729, %702
  %732 = fmul fast float %730, %716
  %733 = fmul fast float %731, %717
  %734 = fadd fast float %732, %721
  %735 = fadd fast float %733, %721
  %736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %57, float %722, float %723, float %690, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %737 = extractvalue %dx.types.ResRet.f32 %736, 0
  %738 = extractvalue %dx.types.ResRet.f32 %736, 1
  %739 = extractvalue %dx.types.ResRet.f32 %736, 3
  %740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %57, float %734, float %735, float %690, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = extractvalue %dx.types.ResRet.f32 %740, 1
  %743 = extractvalue %dx.types.ResRet.f32 %740, 3
  %744 = fsub fast float %741, %737
  %745 = fsub fast float %742, %738
  %746 = fsub fast float %743, %739
  %747 = fmul fast float %744, %687
  %748 = fmul fast float %745, %687
  %749 = fmul fast float %746, %687
  %750 = fadd fast float %747, %737
  %751 = fadd fast float %748, %738
  %752 = fadd fast float %749, %739
  %753 = fmul fast float %750, 2.000000e+00
  %754 = fmul fast float %751, 2.000000e+00
  %755 = fadd fast float %753, -1.000000e+00
  %756 = fadd fast float %754, -1.000000e+00
  %757 = fmul fast float %755, %636
  %758 = call float @dx.op.tertiary.f32(i32 46, float %756, float %638, float %757)  ; FMad(a,b,c)
  %759 = fmul fast float %755, %637
  %760 = call float @dx.op.tertiary.f32(i32 46, float %756, float %639, float %759)  ; FMad(a,b,c)
  %761 = fmul fast float %631, %543
  %762 = fmul fast float %761, %652
  %763 = fmul fast float %762, %655
  %764 = fmul fast float %758, %763
  %765 = fmul fast float %764, %716
  %766 = fmul fast float %760, %763
  %767 = fmul fast float %766, %717
  %768 = fadd fast float %765, %605
  %769 = fadd fast float %767, %606
  %770 = add nuw nsw i32 %633, 64
  %771 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %770, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = fmul fast float %772, %752
  %774 = extractvalue %dx.types.ResRet.f32 %771, 1
  %775 = fadd fast float %773, %774
  %776 = call float @dx.op.binary.f32(i32 35, float %604, float %775)  ; FMax(a,b)
  %777 = add nuw i32 %608, 1
  %778 = icmp eq i32 %777, %600
  br i1 %778, label %779, label %603

; <label>:779                                     ; preds = %603
  br label %780

; <label>:780                                     ; preds = %779, %359
  %781 = phi float [ 0.000000e+00, %359 ], [ %776, %779 ]
  %782 = phi float [ 0.000000e+00, %359 ], [ %768, %779 ]
  %783 = phi float [ 0.000000e+00, %359 ], [ %769, %779 ]
  %784 = call float @dx.op.dot3.f32(i32 55, float %782, float %783, float 1.000000e+00, float %782, float %783, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %785 = call float @dx.op.unary.f32(i32 25, float %784)  ; Rsqrt(value)
  %786 = fmul fast float %781, %399
  %787 = fadd fast float %786, %400
  %788 = call float @dx.op.unary.f32(i32 7, float %787)  ; Saturate(value)
  %789 = fmul fast float %782, %357
  %790 = fmul fast float %789, %785
  %791 = fmul fast float %783, %357
  %792 = fmul fast float %791, %785
  %793 = fadd fast float %790, %315
  %794 = fadd fast float %792, %316
  %795 = fadd fast float %788, %539
  %796 = fmul fast float %439, %290
  %797 = fadd fast float %796, %440
  %798 = call float @dx.op.binary.f32(i32 35, float %797, float 0.000000e+00)  ; FMax(a,b)
  %799 = fmul fast float %798, %432
  %800 = fadd fast float %799, %433
  %801 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  %802 = fmul fast float %801, %795
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 1
  %805 = fcmp fast oge float %802, %804
  %806 = and i32 %362, 2
  %807 = icmp ne i32 %806, 0
  %808 = and i1 %807, %805
  br i1 %808, label %809, label %1036

; <label>:809                                     ; preds = %780
  %810 = add i32 %208, 0
  %811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %810, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %812 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %811, i32 0)  ; GetDimensions(handle,mipLevel)
  %813 = extractvalue %dx.types.Dimensions %812, 0
  %814 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %813)  ; FirstbitLo(value)
  %815 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %816 = extractvalue %dx.types.CBufRet.i32 %815, 1
  %817 = sub nsw i32 %816, %814
  %818 = sitofp i32 %817 to float
  %819 = fsub fast float %392, %818
  %820 = call float @dx.op.binary.f32(i32 35, float %819, float 0.000000e+00)  ; FMax(a,b)
  %821 = fmul fast float %387, %215
  %822 = fmul fast float %387, %216
  %823 = fmul fast float %390, %70
  %824 = fmul fast float %390, %71
  %825 = call float @dx.op.unary.f32(i32 22, float %823)  ; Frc(value)
  %826 = call float @dx.op.unary.f32(i32 22, float %824)  ; Frc(value)
  %827 = fmul fast float %825, 2.000000e+00
  %828 = fmul fast float %826, 2.000000e+00
  %829 = fadd fast float %827, -1.000000e+00
  %830 = fadd fast float %828, -1.000000e+00
  %831 = call float @dx.op.unary.f32(i32 6, float %829)  ; FAbs(value)
  %832 = call float @dx.op.unary.f32(i32 6, float %830)  ; FAbs(value)
  %833 = fsub fast float 1.000000e+00, %831
  %834 = fmul fast float %833, %832
  %835 = fsub fast float %833, %834
  %836 = getelementptr [4 x float], [4 x float]* %86, i32 0, i32 0
  store float %835, float* %836, align 4, !tbaa !101, !noalias !110
  %837 = fmul fast float %832, %831
  %838 = fsub fast float %831, %837
  %839 = getelementptr [4 x float], [4 x float]* %86, i32 0, i32 1
  store float %838, float* %839, align 4, !tbaa !101, !noalias !110
  %840 = getelementptr [4 x float], [4 x float]* %86, i32 0, i32 2
  store float %834, float* %840, align 4, !tbaa !101, !noalias !110
  %841 = getelementptr [4 x float], [4 x float]* %86, i32 0, i32 3
  store float %837, float* %841, align 4, !tbaa !101, !noalias !110
  br label %842

; <label>:842                                     ; preds = %1017, %809
  %843 = phi float [ 0.000000e+00, %809 ], [ %1018, %1017 ]
  %844 = phi float [ 0.000000e+00, %809 ], [ %1019, %1017 ]
  %845 = phi float [ 0.000000e+00, %809 ], [ %1020, %1017 ]
  %846 = phi float [ 0.000000e+00, %809 ], [ %1021, %1017 ]
  %847 = phi float [ 0.000000e+00, %809 ], [ %1022, %1017 ]
  %848 = phi i32 [ 0, %809 ], [ %1023, %1017 ]
  %849 = mul i32 %848, 2
  %850 = add i32 0, %849
  %851 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %850
  %852 = load float, float* %851, align 4
  %853 = mul i32 %848, 2
  %854 = add i32 1, %853
  %855 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %854
  %856 = load float, float* %855, align 4
  %857 = fmul fast float %852, 5.000000e-01
  %858 = fmul fast float %856, 5.000000e-01
  %859 = fsub fast float 1.000000e+00, %852
  %860 = fsub fast float 1.000000e+00, %856
  %861 = fmul fast float %859, 5.000000e-01
  %862 = fmul fast float %860, 5.000000e-01
  %863 = fadd fast float %857, %823
  %864 = fadd fast float %858, %824
  %865 = call float @dx.op.unary.f32(i32 27, float %863)  ; Round_ni(value)
  %866 = call float @dx.op.unary.f32(i32 27, float %864)  ; Round_ni(value)
  %867 = fadd fast float %865, %861
  %868 = fadd fast float %866, %862
  %869 = fmul fast float %867, %391
  %870 = fmul fast float %868, %391
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 0
  %873 = fmul fast float %869, %872
  %874 = fmul fast float %870, %872
  %875 = extractvalue %dx.types.CBufRet.f32 %871, 1
  %876 = fadd fast float %873, %875
  %877 = fadd fast float %874, %875
  %878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %811, %dx.types.Handle %59, float %876, float %877, float %204, float undef, i32 0, i32 0, i32 undef, float %820)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %879 = extractvalue %dx.types.ResRet.f32 %878, 0
  %880 = extractvalue %dx.types.ResRet.f32 %878, 1
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 3
  %883 = fmul fast float %882, 2.000000e+00
  %884 = fmul fast float %883, %879
  %885 = fmul fast float %883, %880
  %886 = fsub fast float %884, %882
  %887 = fsub fast float %885, %882
  %888 = fmul fast float %886, %886
  %889 = fmul fast float %887, %887
  %890 = fadd fast float %888, %889
  %891 = call float @dx.op.unary.f32(i32 24, float %890)  ; Sqrt(value)
  %892 = fcmp fast ogt float %891, 0.000000e+00
  %893 = fdiv fast float 1.000000e+00, %891
  %894 = fmul fast float %886, %893
  %895 = fmul fast float %887, %893
  %896 = select i1 %892, float %894, float 0.000000e+00
  %897 = select i1 %892, float %895, float 0.000000e+00
  %898 = fcmp fast ogt float %795, 0.000000e+00
  br i1 %898, label %899, label %1017

; <label>:899                                     ; preds = %842
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 1
  %902 = fmul fast float %436, %387
  %903 = fmul fast float %891, %902
  %904 = fsub fast float -0.000000e+00, %896
  %905 = fmul fast float %897, %821
  %906 = call float @dx.op.tertiary.f32(i32 46, float %904, float %822, float %905)  ; FMad(a,b,c)
  %907 = fmul fast float %896, %821
  %908 = call float @dx.op.tertiary.f32(i32 46, float %897, float %822, float %907)  ; FMad(a,b,c)
  %909 = fmul fast float %903, %901
  %910 = fsub fast float %908, %909
  %911 = fmul fast float %906, %424
  %912 = fmul fast float %910, %425
  %913 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %914 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %541, %dx.types.Handle %913, float %911, float %912, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %915 = extractvalue %dx.types.ResRet.f32 %914, 0
  %916 = fmul fast float %799, %915
  %917 = fadd fast float %916, %433
  %918 = call float @dx.op.unary.f32(i32 7, float %917)  ; Saturate(value)
  %919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.f32 %919, 2
  %921 = fmul fast float %920, %78
  %922 = extractvalue %dx.types.CBufRet.f32 %919, 3
  %923 = fadd fast float %921, %922
  %924 = call float @dx.op.unary.f32(i32 7, float %923)  ; Saturate(value)
  %925 = fcmp fast ogt float %918, 0.000000e+00
  %926 = fcmp fast ogt float %924, 0.000000e+00
  %927 = and i1 %925, %926
  %928 = and i32 %362, 64
  %929 = icmp ne i32 %928, 0
  %930 = and i1 %929, %927
  br i1 %930, label %931, label %999

; <label>:931                                     ; preds = %899
  %932 = add i32 %500, 0
  %933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %932, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %934 = add i32 %503, 0
  %935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %934, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %936 = fmul fast float %906, %428
  %937 = fmul fast float %910, %429
  %938 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %933, %dx.types.Handle %913, float %936, float %937, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %939 = extractvalue %dx.types.ResRet.f32 %938, 0
  %940 = extractvalue %dx.types.ResRet.f32 %938, 1
  %941 = extractvalue %dx.types.ResRet.f32 %938, 2
  %942 = extractvalue %dx.types.ResRet.f32 %938, 3
  %943 = fmul fast float %939, %486
  %944 = fadd fast float %943, %487
  %945 = call float @dx.op.unary.f32(i32 7, float %944)  ; Saturate(value)
  %946 = fadd fast float %940, %942
  %947 = fmul fast float %946, %488
  %948 = fsub fast float %947, %488
  %949 = fsub fast float %940, %942
  %950 = fmul fast float %949, %488
  %951 = fmul fast float %948, %897
  %952 = call float @dx.op.tertiary.f32(i32 46, float %896, float %950, float %951)  ; FMad(a,b,c)
  %953 = fmul fast float %948, %904
  %954 = call float @dx.op.tertiary.f32(i32 46, float %897, float %950, float %953)  ; FMad(a,b,c)
  %955 = fmul fast float %952, %428
  %956 = fmul fast float %954, %429
  %957 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %935, %dx.types.Handle %913, float %936, float %937, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %958 = extractvalue %dx.types.ResRet.f32 %957, 0
  %959 = fsub fast float 1.000000e+00, %918
  %960 = bitcast float %918 to i32
  %961 = sitofp i32 %960 to float
  %962 = fadd fast float %961, 0xC1CFBF8940000000
  %963 = fmul fast float %962, %421
  %964 = fadd fast float %963, 0x41CFBF8940000000
  %965 = fptosi float %964 to i32
  %966 = bitcast i32 %965 to float
  %967 = bitcast float %959 to i32
  %968 = sitofp i32 %967 to float
  %969 = fadd fast float %968, 0xC1CFBF8940000000
  %970 = fmul fast float %969, %421
  %971 = fadd fast float %970, 0x41CFBF8940000000
  %972 = fptosi float %971 to i32
  %973 = bitcast i32 %972 to float
  %974 = fmul fast float %966, %418
  %975 = fmul fast float %973, %418
  %976 = fsub fast float %959, %974
  %977 = fadd fast float %975, %959
  %978 = call float @dx.op.unary.f32(i32 7, float %976)  ; Saturate(value)
  %979 = call float @dx.op.unary.f32(i32 7, float %977)  ; Saturate(value)
  %980 = fsub fast float %958, %978
  %981 = fsub fast float %979, %978
  %982 = bitcast float %981 to i32
  %983 = sub nsw i32 2129859010, %982
  %984 = bitcast i32 %983 to float
  %985 = fmul fast float %984, %980
  %986 = call float @dx.op.unary.f32(i32 7, float %985)  ; Saturate(value)
  %987 = fmul fast float %924, %415
  %988 = fmul fast float %987, %986
  %989 = fmul fast float %955, %988
  %990 = fmul fast float %956, %988
  %991 = fadd fast float %941, -1.000000e+00
  %992 = fmul fast float %988, %991
  %993 = fadd fast float %992, 1.000000e+00
  %994 = fsub fast float %945, %409
  %995 = fmul fast float %988, %994
  %996 = fadd fast float %995, %409
  %997 = fmul fast float %988, %959
  %998 = fadd fast float %997, %918
  br label %999

; <label>:999                                     ; preds = %931, %899
  %1000 = phi float [ %998, %931 ], [ %918, %899 ]
  %1001 = phi float [ %996, %931 ], [ %409, %899 ]
  %1002 = phi float [ %993, %931 ], [ 1.000000e+00, %899 ]
  %1003 = phi float [ %989, %931 ], [ 0.000000e+00, %899 ]
  %1004 = phi float [ %990, %931 ], [ 0.000000e+00, %899 ]
  %1005 = getelementptr [4 x float], [4 x float]* %86, i32 0, i32 %848
  %1006 = load float, float* %1005, align 4, !tbaa !101, !noalias !110
  %1007 = fmul fast float %1006, %1000
  %1008 = fmul fast float %1007, %1003
  %1009 = fmul fast float %1007, %1004
  %1010 = fadd fast float %1008, %843
  %1011 = fadd fast float %1009, %844
  %1012 = fmul fast float %1007, %1002
  %1013 = fadd fast float %1012, %845
  %1014 = fmul fast float %1007, %1001
  %1015 = fadd fast float %1014, %846
  %1016 = fadd fast float %1007, %847
  br label %1017

; <label>:1017                                    ; preds = %999, %842
  %1018 = phi float [ %1010, %999 ], [ %843, %842 ]
  %1019 = phi float [ %1011, %999 ], [ %844, %842 ]
  %1020 = phi float [ %1013, %999 ], [ %845, %842 ]
  %1021 = phi float [ %1015, %999 ], [ %846, %842 ]
  %1022 = phi float [ %1016, %999 ], [ %847, %842 ]
  %1023 = add nuw nsw i32 %848, 1
  %1024 = icmp eq i32 %1023, 4
  br i1 %1024, label %1025, label %842, !llvm.loop !116

; <label>:1025                                    ; preds = %1017
  %1026 = fmul fast float %1022, %795
  %1027 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1026)  ; FMax(a,b)
  %1028 = fmul fast float %1022, %1018
  %1029 = fmul fast float %1022, %1019
  %1030 = fadd fast float %1020, -1.000000e+00
  %1031 = fmul fast float %1022, %1030
  %1032 = fadd fast float %1031, 1.000000e+00
  %1033 = fsub fast float %1021, %380
  %1034 = fmul fast float %1022, %1033
  %1035 = fadd fast float %1034, %380
  br label %1036

; <label>:1036                                    ; preds = %1025, %780
  %1037 = phi float [ %1027, %1025 ], [ 0.000000e+00, %780 ]
  %1038 = phi float [ %1028, %1025 ], [ 0.000000e+00, %780 ]
  %1039 = phi float [ %1029, %1025 ], [ 0.000000e+00, %780 ]
  %1040 = phi float [ %1032, %1025 ], [ 1.000000e+00, %780 ]
  %1041 = phi float [ %1035, %1025 ], [ %380, %780 ]
  %1042 = fmul fast float %472, %290
  %1043 = fadd fast float %1042, %473
  %1044 = call float @dx.op.binary.f32(i32 35, float %1043, float 0.000000e+00)  ; FMax(a,b)
  %1045 = fmul fast float %1044, %468
  %1046 = fadd fast float %1045, %469
  %1047 = call float @dx.op.unary.f32(i32 7, float %1046)  ; Saturate(value)
  %1048 = fmul fast float %1047, %795
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 1
  %1051 = fcmp fast oge float %1048, %1050
  %1052 = and i32 %362, 4
  %1053 = icmp ne i32 %1052, 0
  %1054 = and i1 %1053, %1051
  br i1 %1054, label %1055, label %1343

; <label>:1055                                    ; preds = %1036
  %1056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1057 = extractvalue %dx.types.CBufRet.f32 %1056, 0
  %1058 = extractvalue %dx.types.CBufRet.f32 %1056, 1
  %1059 = fsub fast float %144, %215
  %1060 = fadd fast float %1059, %1057
  %1061 = fsub fast float %145, %216
  %1062 = fadd fast float %1061, %1058
  %1063 = fmul fast float %1060, %443
  %1064 = fmul fast float %1062, %443
  %1065 = fadd fast float %1063, %215
  %1066 = fadd fast float %1064, %216
  %1067 = add i32 %506, 0
  %1068 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1067, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1069 = fmul fast float %1065, %450
  %1070 = fmul fast float %1066, %450
  %1071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1072 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1068, %dx.types.Handle %1071, float %1069, float %1070, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1073 = extractvalue %dx.types.ResRet.f32 %1072, 0
  %1074 = extractvalue %dx.types.ResRet.f32 %1072, 1
  %1075 = extractvalue %dx.types.ResRet.f32 %1072, 2
  %1076 = fmul fast float %1073, 2.000000e+00
  %1077 = fmul fast float %1074, 2.000000e+00
  %1078 = fadd fast float %1076, -1.000000e+00
  %1079 = fadd fast float %1077, -1.000000e+00
  %1080 = fmul fast float %1075, %446
  %1081 = fmul fast float %1080, %459
  %1082 = fmul fast float %1081, %1078
  %1083 = fmul fast float %1081, %1079
  %1084 = fsub fast float %285, %1082
  %1085 = fsub fast float %286, %1083
  %1086 = fmul fast float %1084, %456
  %1087 = fmul fast float %1085, %456
  %1088 = fadd fast float %1086, %1082
  %1089 = fadd fast float %1087, %1083
  %1090 = fmul fast float %1088, %459
  %1091 = fmul fast float %1089, %459
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 1
  %1094 = fmul fast float %459, %184
  %1095 = fadd fast float %1093, %1094
  %1096 = fadd fast float %1095, %464
  %1097 = fmul fast float %1095, %463
  %1098 = call float @dx.op.unary.f32(i32 29, float %1097)  ; Round_z(value)
  %1099 = fmul fast float %1098, %462
  %1100 = fsub fast float %1095, %1099
  %1101 = fmul fast float %1096, %463
  %1102 = call float @dx.op.unary.f32(i32 29, float %1101)  ; Round_z(value)
  %1103 = fmul fast float %1102, %462
  %1104 = fsub fast float %1096, %1103
  %1105 = fmul fast float %1090, %1100
  %1106 = fmul fast float %1091, %1100
  %1107 = fmul fast float %1090, %1104
  %1108 = fmul fast float %1091, %1104
  %1109 = fsub fast float %1065, %1105
  %1110 = fsub fast float %1066, %1106
  %1111 = fsub fast float %1065, %1107
  %1112 = fsub fast float %1066, %1108
  %1113 = fsub fast float %464, %1100
  %1114 = call float @dx.op.unary.f32(i32 6, float %1113)  ; FAbs(value)
  %1115 = fmul fast float %1114, %465
  %1116 = call float @dx.op.unary.f32(i32 7, float %1115)  ; Saturate(value)
  %1117 = fmul fast float %1109, %447
  %1118 = fmul fast float %1110, %447
  %1119 = fmul fast float %1111, %447
  %1120 = fmul fast float %1112, %447
  %1121 = fcmp fast ogt float %453, 0.000000e+00
  br i1 %1121, label %1122, label %1209

; <label>:1122                                    ; preds = %1055
  %1123 = fmul fast float %453, %184
  %1124 = fmul fast float %1123, 5.000000e-01
  %1125 = fadd fast float %1124, 5.000000e-01
  %1126 = call float @dx.op.unary.f32(i32 22, float %1125)  ; Frc(value)
  %1127 = call float @dx.op.unary.f32(i32 22, float %1124)  ; Frc(value)
  %1128 = call float @dx.op.unary.f32(i32 27, float %1125)  ; Round_ni(value)
  %1129 = call float @dx.op.unary.f32(i32 27, float %1124)  ; Round_ni(value)
  %1130 = fmul fast float %1128, 2.000000e+00
  %1131 = fmul fast float %1129, 2.000000e+00
  %1132 = fadd fast float %1131, 1.000000e+00
  %1133 = fsub fast float 1.000000e+00, %1126
  %1134 = fsub fast float 1.000000e+00, %1127
  %1135 = call float @dx.op.binary.f32(i32 36, float %1126, float %1133)  ; FMin(a,b)
  %1136 = call float @dx.op.binary.f32(i32 36, float %1127, float %1134)  ; FMin(a,b)
  %1137 = fmul fast float %1135, 2.000000e+00
  %1138 = fmul fast float %1136, 2.000000e+00
  %1139 = call float @dx.op.dot3.f32(i32 55, float %1130, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1140 = call float @dx.op.dot3.f32(i32 55, float %1130, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1141 = call float @dx.op.dot3.f32(i32 55, float %1130, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1142 = call float @dx.op.unary.f32(i32 13, float %1139)  ; Sin(value)
  %1143 = call float @dx.op.unary.f32(i32 13, float %1140)  ; Sin(value)
  %1144 = call float @dx.op.unary.f32(i32 13, float %1141)  ; Sin(value)
  %1145 = fmul fast float %1142, 0x40E55DD180000000
  %1146 = fmul fast float %1143, 0x40E55DD180000000
  %1147 = fmul fast float %1144, 0x40E55DD180000000
  %1148 = call float @dx.op.unary.f32(i32 22, float %1145)  ; Frc(value)
  %1149 = call float @dx.op.unary.f32(i32 22, float %1146)  ; Frc(value)
  %1150 = call float @dx.op.unary.f32(i32 22, float %1147)  ; Frc(value)
  %1151 = fmul fast float %1148, 0x401921FB60000000
  %1152 = call float @dx.op.unary.f32(i32 12, float %1151)  ; Cos(value)
  %1153 = call float @dx.op.unary.f32(i32 13, float %1151)  ; Sin(value)
  %1154 = fsub fast float -0.000000e+00, %1153
  %1155 = call float @dx.op.dot3.f32(i32 55, float %1132, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1156 = call float @dx.op.dot3.f32(i32 55, float %1132, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1157 = call float @dx.op.dot3.f32(i32 55, float %1132, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1158 = call float @dx.op.unary.f32(i32 13, float %1155)  ; Sin(value)
  %1159 = call float @dx.op.unary.f32(i32 13, float %1156)  ; Sin(value)
  %1160 = call float @dx.op.unary.f32(i32 13, float %1157)  ; Sin(value)
  %1161 = fmul fast float %1158, 0x40E55DD180000000
  %1162 = fmul fast float %1159, 0x40E55DD180000000
  %1163 = fmul fast float %1160, 0x40E55DD180000000
  %1164 = call float @dx.op.unary.f32(i32 22, float %1161)  ; Frc(value)
  %1165 = call float @dx.op.unary.f32(i32 22, float %1162)  ; Frc(value)
  %1166 = call float @dx.op.unary.f32(i32 22, float %1163)  ; Frc(value)
  %1167 = fmul fast float %1164, 0x401921FB60000000
  %1168 = call float @dx.op.unary.f32(i32 12, float %1167)  ; Cos(value)
  %1169 = call float @dx.op.unary.f32(i32 13, float %1167)  ; Sin(value)
  %1170 = fsub fast float -0.000000e+00, %1169
  %1171 = fmul fast float %1152, %1117
  %1172 = call float @dx.op.tertiary.f32(i32 46, float %1118, float %1154, float %1171)  ; FMad(a,b,c)
  %1173 = fmul fast float %1153, %1117
  %1174 = call float @dx.op.tertiary.f32(i32 46, float %1118, float %1152, float %1173)  ; FMad(a,b,c)
  %1175 = fadd fast float %1172, %1149
  %1176 = fadd fast float %1174, %1150
  %1177 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %541, %dx.types.Handle %1071, float %1175, float %1176, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1178 = extractvalue %dx.types.ResRet.f32 %1177, 0
  %1179 = fmul fast float %1178, %1137
  %1180 = fmul fast float %1168, %1117
  %1181 = call float @dx.op.tertiary.f32(i32 46, float %1118, float %1170, float %1180)  ; FMad(a,b,c)
  %1182 = fmul fast float %1169, %1117
  %1183 = call float @dx.op.tertiary.f32(i32 46, float %1118, float %1168, float %1182)  ; FMad(a,b,c)
  %1184 = fadd fast float %1181, %1165
  %1185 = fadd fast float %1183, %1166
  %1186 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %541, %dx.types.Handle %1071, float %1184, float %1185, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1187 = extractvalue %dx.types.ResRet.f32 %1186, 0
  %1188 = fmul fast float %1187, %1138
  %1189 = fadd fast float %1188, %1179
  %1190 = fmul fast float %1152, %1119
  %1191 = call float @dx.op.tertiary.f32(i32 46, float %1120, float %1154, float %1190)  ; FMad(a,b,c)
  %1192 = fmul fast float %1153, %1119
  %1193 = call float @dx.op.tertiary.f32(i32 46, float %1120, float %1152, float %1192)  ; FMad(a,b,c)
  %1194 = fadd fast float %1191, %1149
  %1195 = fadd fast float %1193, %1150
  %1196 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %541, %dx.types.Handle %1071, float %1194, float %1195, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1197 = extractvalue %dx.types.ResRet.f32 %1196, 0
  %1198 = fmul fast float %1197, %1137
  %1199 = fmul fast float %1168, %1119
  %1200 = call float @dx.op.tertiary.f32(i32 46, float %1120, float %1170, float %1199)  ; FMad(a,b,c)
  %1201 = fmul fast float %1169, %1119
  %1202 = call float @dx.op.tertiary.f32(i32 46, float %1120, float %1168, float %1201)  ; FMad(a,b,c)
  %1203 = fadd fast float %1200, %1165
  %1204 = fadd fast float %1202, %1166
  %1205 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %541, %dx.types.Handle %1071, float %1203, float %1204, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = fmul fast float %1206, %1138
  %1208 = fadd fast float %1207, %1198
  br label %1214

; <label>:1209                                    ; preds = %1055
  %1210 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %541, %dx.types.Handle %1071, float %1117, float %1118, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %541, %dx.types.Handle %1071, float %1119, float %1120, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  br label %1214

; <label>:1214                                    ; preds = %1209, %1122
  %1215 = phi float [ %1189, %1122 ], [ %1211, %1209 ]
  %1216 = phi float [ %1208, %1122 ], [ %1213, %1209 ]
  %1217 = fsub fast float %1216, %1215
  %1218 = fmul fast float %1217, %1116
  %1219 = fadd fast float %1218, %1215
  %1220 = fmul fast float %1045, %1219
  %1221 = fadd fast float %1220, %469
  %1222 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 2
  %1225 = fmul fast float %1224, %78
  %1226 = extractvalue %dx.types.CBufRet.f32 %1223, 3
  %1227 = fadd fast float %1225, %1226
  %1228 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  %1229 = fcmp fast ogt float %1222, 0.000000e+00
  %1230 = fcmp fast ogt float %1228, 0.000000e+00
  %1231 = and i1 %1229, %1230
  %1232 = and i32 %362, 64
  %1233 = icmp ne i32 %1232, 0
  %1234 = and i1 %1233, %1231
  br i1 %1234, label %1235, label %1323

; <label>:1235                                    ; preds = %1214
  %1236 = add i32 %500, 0
  %1237 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1236, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1238 = fmul fast float %1117, %476
  %1239 = fmul fast float %1118, %477
  %1240 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1237, %dx.types.Handle %1071, float %1238, float %1239, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1241 = extractvalue %dx.types.ResRet.f32 %1240, 0
  %1242 = extractvalue %dx.types.ResRet.f32 %1240, 1
  %1243 = extractvalue %dx.types.ResRet.f32 %1240, 2
  %1244 = extractvalue %dx.types.ResRet.f32 %1240, 3
  %1245 = fmul fast float %1241, %486
  %1246 = fadd fast float %1245, %487
  %1247 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  %1248 = fadd fast float %1242, %1244
  %1249 = fmul fast float %1248, %488
  %1250 = fsub fast float %1249, %488
  %1251 = fsub fast float %1242, %1244
  %1252 = fmul fast float %1251, %488
  %1253 = fmul fast float %1119, %476
  %1254 = fmul fast float %1120, %477
  %1255 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1237, %dx.types.Handle %1071, float %1253, float %1254, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1256 = extractvalue %dx.types.ResRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.ResRet.f32 %1255, 1
  %1258 = extractvalue %dx.types.ResRet.f32 %1255, 2
  %1259 = extractvalue %dx.types.ResRet.f32 %1255, 3
  %1260 = fmul fast float %1256, %486
  %1261 = fadd fast float %1260, %487
  %1262 = call float @dx.op.unary.f32(i32 7, float %1261)  ; Saturate(value)
  %1263 = fadd fast float %1257, %1259
  %1264 = fsub fast float %1257, %1259
  %1265 = fsub fast float %1263, %1248
  %1266 = fsub fast float %1264, %1251
  %1267 = fmul fast float %1116, %488
  %1268 = fmul fast float %1267, %1265
  %1269 = fmul fast float %1267, %1266
  %1270 = fadd fast float %1268, %1250
  %1271 = fmul fast float %476, %1270
  %1272 = fadd fast float %1269, %1252
  %1273 = fmul fast float %477, %1272
  %1274 = fsub fast float %1258, %1243
  %1275 = fmul fast float %1274, %1116
  %1276 = fsub fast float %1262, %1247
  %1277 = fmul fast float %1276, %1116
  %1278 = fsub fast float %1256, %1241
  %1279 = fmul fast float %1278, %1116
  %1280 = fsub fast float 1.000000e+00, %1222
  %1281 = bitcast float %1222 to i32
  %1282 = sitofp i32 %1281 to float
  %1283 = fadd fast float %1282, 0xC1CFBF8940000000
  %1284 = fmul fast float %1283, %421
  %1285 = fadd fast float %1284, 0x41CFBF8940000000
  %1286 = fptosi float %1285 to i32
  %1287 = bitcast i32 %1286 to float
  %1288 = bitcast float %1280 to i32
  %1289 = sitofp i32 %1288 to float
  %1290 = fadd fast float %1289, 0xC1CFBF8940000000
  %1291 = fmul fast float %1290, %421
  %1292 = fadd fast float %1291, 0x41CFBF8940000000
  %1293 = fptosi float %1292 to i32
  %1294 = bitcast i32 %1293 to float
  %1295 = fmul fast float %1287, %418
  %1296 = fmul fast float %1294, %418
  %1297 = fsub fast float %1280, %1295
  %1298 = fadd fast float %1296, %1280
  %1299 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1300 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1301 = fsub fast float %1241, %1299
  %1302 = fadd fast float %1301, %1279
  %1303 = fsub fast float %1300, %1299
  %1304 = bitcast float %1303 to i32
  %1305 = sub nsw i32 2129859010, %1304
  %1306 = bitcast i32 %1305 to float
  %1307 = fmul fast float %1306, %1302
  %1308 = call float @dx.op.unary.f32(i32 7, float %1307)  ; Saturate(value)
  %1309 = fmul fast float %1228, %415
  %1310 = fmul fast float %1309, %1308
  %1311 = fmul fast float %1271, %1310
  %1312 = fmul fast float %1273, %1310
  %1313 = fadd fast float %1243, -1.000000e+00
  %1314 = fadd fast float %1313, %1275
  %1315 = fmul fast float %1310, %1314
  %1316 = fadd fast float %1315, 1.000000e+00
  %1317 = fsub fast float %1247, %409
  %1318 = fadd fast float %1317, %1277
  %1319 = fmul fast float %1310, %1318
  %1320 = fadd fast float %1319, %409
  %1321 = fmul fast float %1310, %1280
  %1322 = fadd fast float %1321, %1222
  br label %1323

; <label>:1323                                    ; preds = %1235, %1214
  %1324 = phi float [ %1322, %1235 ], [ %1222, %1214 ]
  %1325 = phi float [ %1311, %1235 ], [ 0.000000e+00, %1214 ]
  %1326 = phi float [ %1312, %1235 ], [ 0.000000e+00, %1214 ]
  %1327 = phi float [ %1316, %1235 ], [ 1.000000e+00, %1214 ]
  %1328 = phi float [ %1320, %1235 ], [ %409, %1214 ]
  %1329 = fsub fast float %1325, %1038
  %1330 = fsub fast float %1326, %1039
  %1331 = fmul fast float %1329, %1324
  %1332 = fmul fast float %1330, %1324
  %1333 = fadd fast float %1331, %1038
  %1334 = fadd fast float %1332, %1039
  %1335 = fsub fast float %1327, %1040
  %1336 = fmul fast float %1335, %1324
  %1337 = fadd fast float %1336, %1040
  %1338 = fsub fast float %1328, %1041
  %1339 = fmul fast float %1338, %1324
  %1340 = fadd fast float %1339, %1041
  %1341 = fmul fast float %1324, %795
  %1342 = call float @dx.op.binary.f32(i32 35, float %1037, float %1341)  ; FMax(a,b)
  br label %1343

; <label>:1343                                    ; preds = %1323, %1036
  %1344 = phi float [ %1342, %1323 ], [ %1037, %1036 ]
  %1345 = phi float [ %1333, %1323 ], [ %1038, %1036 ]
  %1346 = phi float [ %1334, %1323 ], [ %1039, %1036 ]
  %1347 = phi float [ %1337, %1323 ], [ %1040, %1036 ]
  %1348 = phi float [ %1340, %1323 ], [ %1041, %1036 ]
  %1349 = and i32 %362, 16
  %1350 = icmp eq i32 %1349, 0
  br i1 %1350, label %1417, label %1351

; <label>:1351                                    ; preds = %1343
  %1352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.f32 %1352, 0
  %1354 = extractvalue %dx.types.CBufRet.f32 %1352, 1
  %1355 = fadd fast float %1353, %144
  %1356 = fadd fast float %1354, %145
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 0
  %1359 = extractvalue %dx.types.CBufRet.f32 %1357, 1
  %1360 = fsub fast float %1355, %1358
  %1361 = fsub fast float %1356, %1359
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 2
  %1364 = fmul fast float %1360, %1363
  %1365 = fmul fast float %1361, %1363
  %1366 = fadd fast float %1364, 5.000000e-01
  %1367 = fadd fast float %1365, 5.000000e-01
  %1368 = fcmp fast olt float %1366, 0.000000e+00
  %1369 = fcmp fast olt float %1367, 0.000000e+00
  %1370 = or i1 %1368, %1369
  %1371 = fcmp fast oge float %1366, 1.000000e+00
  %1372 = fcmp fast oge float %1367, 1.000000e+00
  %1373 = or i1 %1371, %1372
  %1374 = or i1 %1370, %1373
  br i1 %1374, label %1408, label %1375

; <label>:1375                                    ; preds = %1351
  %1376 = extractvalue %dx.types.CBufRet.f32 %1352, 2
  %1377 = fadd fast float %1376, %146
  %1378 = fmul fast float %1363, %1355
  %1379 = fmul fast float %1363, %1356
  %1380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %1381 = extractvalue %dx.types.CBufRet.f32 %1380, 2
  %1382 = fsub fast float %1377, %1381
  %1383 = extractvalue %dx.types.CBufRet.f32 %1380, 1
  %1384 = fmul fast float %1382, %1383
  %1385 = call float @dx.op.unary.f32(i32 7, float %1384)  ; Saturate(value)
  %1386 = call float @dx.op.binary.f32(i32 36, float %1367, float %1385)  ; FMin(a,b)
  %1387 = call float @dx.op.binary.f32(i32 36, float %1366, float %1386)  ; FMin(a,b)
  %1388 = call float @dx.op.binary.f32(i32 35, float %1367, float %1385)  ; FMax(a,b)
  %1389 = call float @dx.op.binary.f32(i32 35, float %1366, float %1388)  ; FMax(a,b)
  %1390 = fsub fast float 1.000000e+00, %1389
  %1391 = call float @dx.op.binary.f32(i32 36, float %1387, float %1390)  ; FMin(a,b)
  %1392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %1393 = extractvalue %dx.types.CBufRet.f32 %1392, 3
  %1394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %1395 = extractvalue %dx.types.CBufRet.f32 %1394, 1
  %1396 = call float @dx.op.binary.f32(i32 35, float %1395, float %1393)  ; FMax(a,b)
  %1397 = fsub fast float %1396, %1395
  %1398 = fsub fast float %1391, %1395
  %1399 = fdiv fast float %1398, %1397
  %1400 = call float @dx.op.unary.f32(i32 7, float %1399)  ; Saturate(value)
  %1401 = fmul fast float %1400, 2.000000e+00
  %1402 = fsub fast float 3.000000e+00, %1401
  %1403 = fmul fast float %1400, %1400
  %1404 = fmul fast float %1403, %1402
  %1405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %57, float %1378, float %1379, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1406 = extractvalue %dx.types.ResRet.f32 %1405, 0
  %1407 = fmul fast float %1404, %1406
  br label %1408

; <label>:1408                                    ; preds = %1375, %1351
  %1409 = phi float [ %1407, %1375 ], [ 0.000000e+00, %1351 ]
  %1410 = fmul fast float %483, %215
  %1411 = fmul fast float %483, %216
  %1412 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1413 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %541, %dx.types.Handle %1412, float %1410, float %1411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1414 = extractvalue %dx.types.ResRet.f32 %1413, 0
  %1415 = fmul fast float %1414, %1409
  %1416 = call float @dx.op.binary.f32(i32 35, float %1344, float %1415)  ; FMax(a,b)
  br label %1417

; <label>:1417                                    ; preds = %1408, %1343
  %1418 = phi float [ %1416, %1408 ], [ %1344, %1343 ]
  %1419 = and i32 %362, 8
  %1420 = icmp eq i32 %1419, 0
  br i1 %1420, label %1437, label %1421

; <label>:1421                                    ; preds = %1417
  %1422 = fadd fast float %480, 1.000000e+00
  %1423 = fmul fast float %795, %1422
  %1424 = fsub fast float %1423, %480
  %1425 = fsub fast float %1422, %1424
  %1426 = call float @dx.op.unary.f32(i32 7, float %1425)  ; Saturate(value)
  %1427 = fsub fast float 1.000000e+00, %1423
  %1428 = call float @dx.op.unary.f32(i32 7, float %1427)  ; Saturate(value)
  %1429 = fsub fast float %1426, %1428
  %1430 = fsub fast float %1418, %1428
  %1431 = fdiv fast float %1430, %1429
  %1432 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  %1433 = fmul fast float %1432, 2.000000e+00
  %1434 = fsub fast float 3.000000e+00, %1433
  %1435 = fmul fast float %1432, %1432
  %1436 = fmul fast float %1435, %1434
  br label %1437

; <label>:1437                                    ; preds = %1421, %1417
  %1438 = phi float [ %1436, %1421 ], [ %1418, %1417 ]
  %1439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1440 = extractvalue %dx.types.CBufRet.f32 %1439, 3
  %1441 = fmul fast float %1440, %1438
  %1442 = fmul fast float %1441, %357
  %1443 = fadd fast float %1442, %317
  %1444 = call float @dx.op.unary.f32(i32 7, float %1443)  ; Saturate(value)
  %1445 = and i32 %362, 32
  %1446 = icmp eq i32 %1445, 0
  br i1 %1446, label %1463, label %1447

; <label>:1447                                    ; preds = %1437
  %1448 = add i32 %497, 0
  %1449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1448, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1449, %dx.types.Handle %58, float %1441, float %412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1451 = extractvalue %dx.types.ResRet.f32 %1450, 0
  %1452 = extractvalue %dx.types.ResRet.f32 %1450, 1
  %1453 = extractvalue %dx.types.ResRet.f32 %1450, 2
  %1454 = extractvalue %dx.types.ResRet.f32 %1450, 3
  %1455 = and i32 %491, 255
  %1456 = uitofp i32 %1455 to float
  %1457 = lshr i32 %491, 8
  %1458 = and i32 %1457, 255
  %1459 = uitofp i32 %1458 to float
  %1460 = fmul fast float %1454, %1456
  %1461 = fadd fast float %1460, %1459
  %1462 = fmul fast float %1461, 0x3F70101000000000
  br label %1463

; <label>:1463                                    ; preds = %1447, %1437
  %1464 = phi float [ %1451, %1447 ], [ %403, %1437 ]
  %1465 = phi float [ %1452, %1447 ], [ %404, %1437 ]
  %1466 = phi float [ %1453, %1447 ], [ %405, %1437 ]
  %1467 = phi float [ %1462, %1447 ], [ %406, %1437 ]
  %1468 = fsub fast float %1464, %374
  %1469 = fsub fast float %1465, %375
  %1470 = fsub fast float %1466, %376
  %1471 = fmul fast float %1468, %1441
  %1472 = fmul fast float %1469, %1441
  %1473 = fmul fast float %1470, %1441
  %1474 = fadd fast float %1471, %374
  %1475 = fadd fast float %1472, %375
  %1476 = fadd fast float %1473, %376
  %1477 = fsub fast float %1467, %377
  %1478 = fmul fast float %1477, %1441
  %1479 = fadd fast float %1478, %377
  %1480 = fsub fast float %1348, %380
  %1481 = fmul fast float %1441, %1480
  %1482 = fadd fast float %1481, %380
  %1483 = fadd fast float %1347, -1.000000e+00
  %1484 = fmul fast float %1441, %1483
  %1485 = fadd fast float %1484, 1.000000e+00
  %1486 = fmul fast float %1442, %1345
  %1487 = fmul fast float %1442, %1346
  %1488 = fadd fast float %793, %1486
  %1489 = fadd fast float %794, %1487
  %1490 = and i32 %313, 65535
  %1491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1490)  ; LegacyF16ToF32(value)
  %1492 = lshr i32 %313, 16
  %1493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1492)  ; LegacyF16ToF32(value)
  %1494 = and i32 %314, 65535
  %1495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1494)  ; LegacyF16ToF32(value)
  %1496 = lshr i32 %314, 16
  %1497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1496)  ; LegacyF16ToF32(value)
  %1498 = fmul fast float %1474, %357
  %1499 = fmul fast float %1475, %357
  %1500 = fmul fast float %1476, %357
  %1501 = fmul fast float %1479, %357
  %1502 = fadd fast float %1491, %1498
  %1503 = fadd fast float %1493, %1499
  %1504 = fadd fast float %1495, %1500
  %1505 = fadd fast float %1497, %1501
  %1506 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1502)  ; LegacyF32ToF16(value)
  %1507 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1503)  ; LegacyF32ToF16(value)
  %1508 = shl i32 %1507, 16
  %1509 = or i32 %1508, %1506
  %1510 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1504)  ; LegacyF32ToF16(value)
  %1511 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1505)  ; LegacyF32ToF16(value)
  %1512 = shl i32 %1511, 16
  %1513 = or i32 %1512, %1510
  %1514 = and i32 %321, 65535
  %1515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1514)  ; LegacyF16ToF32(value)
  %1516 = lshr i32 %321, 16
  %1517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1516)  ; LegacyF16ToF32(value)
  %1518 = fmul fast float %1485, %357
  %1519 = fmul fast float %1482, %357
  %1520 = fadd fast float %1515, %1518
  %1521 = fadd fast float %1517, %1519
  %1522 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1520)  ; LegacyF32ToF16(value)
  %1523 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1521)  ; LegacyF32ToF16(value)
  %1524 = shl i32 %1523, 16
  %1525 = or i32 %1524, %1522
  br label %1526

; <label>:1526                                    ; preds = %1463, %311
  %1527 = phi i32 [ %523, %1463 ], [ %312, %311 ]
  %1528 = phi i32 [ %1509, %1463 ], [ %313, %311 ]
  %1529 = phi i32 [ %1513, %1463 ], [ %314, %311 ]
  %1530 = phi float [ %1488, %1463 ], [ %315, %311 ]
  %1531 = phi float [ %1489, %1463 ], [ %316, %311 ]
  %1532 = phi float [ %1444, %1463 ], [ %317, %311 ]
  %1533 = phi i32 [ %525, %1463 ], [ %318, %311 ]
  %1534 = phi float [ %526, %1463 ], [ %319, %311 ]
  %1535 = phi i32 [ %1525, %1463 ], [ %321, %311 ]
  %1536 = icmp eq i32 %326, 0
  br i1 %1536, label %1537, label %311

; <label>:1537                                    ; preds = %1526
  br label %1538

; <label>:1538                                    ; preds = %1537, %0
  %1539 = phi i32 [ %194, %0 ], [ %1527, %1537 ]
  %1540 = phi i32 [ %171, %0 ], [ %1528, %1537 ]
  %1541 = phi i32 [ %171, %0 ], [ %1529, %1537 ]
  %1542 = phi float [ 0.000000e+00, %0 ], [ %1530, %1537 ]
  %1543 = phi float [ 0.000000e+00, %0 ], [ %1531, %1537 ]
  %1544 = phi float [ 0.000000e+00, %0 ], [ %1532, %1537 ]
  %1545 = phi i32 [ -1, %0 ], [ %1533, %1537 ]
  %1546 = phi i32 [ %171, %0 ], [ %1535, %1537 ]
  %1547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1548 = extractvalue %dx.types.CBufRet.f32 %1547, 0
  %1549 = extractvalue %dx.types.CBufRet.f32 %1547, 1
  %1550 = extractvalue %dx.types.CBufRet.f32 %1547, 2
  %1551 = fadd fast float %1548, %144
  %1552 = fadd fast float %1549, %145
  %1553 = fadd fast float %1550, %146
  %1554 = call float @dx.op.unary.f32(i32 83, float %1551)  ; DerivCoarseX(value)
  %1555 = call float @dx.op.unary.f32(i32 83, float %1552)  ; DerivCoarseX(value)
  %1556 = call float @dx.op.unary.f32(i32 83, float %1553)  ; DerivCoarseX(value)
  %1557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1558 = extractvalue %dx.types.CBufRet.f32 %1557, 2
  %1559 = fmul fast float %1558, %1554
  %1560 = fmul fast float %1558, %1555
  %1561 = fmul fast float %1558, %1556
  %1562 = call float @dx.op.unary.f32(i32 84, float %1551)  ; DerivCoarseY(value)
  %1563 = call float @dx.op.unary.f32(i32 84, float %1552)  ; DerivCoarseY(value)
  %1564 = call float @dx.op.unary.f32(i32 84, float %1553)  ; DerivCoarseY(value)
  %1565 = fmul fast float %1558, %1562
  %1566 = fmul fast float %1558, %1563
  %1567 = fmul fast float %1558, %1564
  %1568 = fmul fast float %1567, %1560
  %1569 = fmul fast float %1566, %1561
  %1570 = fsub fast float %1568, %1569
  %1571 = fmul fast float %1565, %1561
  %1572 = fmul fast float %1567, %1559
  %1573 = fsub fast float %1571, %1572
  %1574 = fmul fast float %1566, %1559
  %1575 = fmul fast float %1565, %1560
  %1576 = fsub fast float %1574, %1575
  %1577 = fmul fast float %1570, %1570
  %1578 = fmul fast float %1573, %1573
  %1579 = fadd fast float %1577, %1578
  %1580 = fmul fast float %1576, %1576
  %1581 = fadd fast float %1579, %1580
  %1582 = call float @dx.op.unary.f32(i32 24, float %1581)  ; Sqrt(value)
  %1583 = icmp eq i32 %1545, -1
  br i1 %1583, label %1674, label %1584

; <label>:1584                                    ; preds = %1538
  %1585 = mul i32 %1545, 928
  %1586 = add i32 %1585, 832
  %1587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1586, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.f32 %1587, 0
  %1589 = add i32 %1585, 836
  %1590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.f32 %1590, 0
  %1592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1593 = extractvalue %dx.types.CBufRet.f32 %1592, 0
  %1594 = fmul fast float %1593, %1591
  %1595 = extractvalue %dx.types.CBufRet.f32 %1592, 1
  %1596 = fadd fast float %1594, %1595
  %1597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 210)  ; CBufferLoadLegacy(handle,regIndex)
  %1598 = extractvalue %dx.types.CBufRet.f32 %1597, 0
  %1599 = fadd fast float %1598, %1588
  %1600 = fcmp fast ogt float %1596, 0.000000e+00
  %1601 = fcmp fast ogt float %1544, %1599
  %1602 = and i1 %1600, %1601
  br i1 %1602, label %1603, label %1674

; <label>:1603                                    ; preds = %1584
  %1604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1605 = extractvalue %dx.types.CBufRet.f32 %1604, 3
  %1606 = fmul fast float %1551, 7.000000e+00
  %1607 = fadd fast float %1606, 9.175040e+05
  %1608 = fmul fast float %1552, 9.000000e+00
  %1609 = fadd fast float %1608, 1.179648e+06
  %1610 = fmul fast float %1605, 1.370000e+02
  %1611 = bitcast float %1607 to i32
  %1612 = bitcast float %1609 to i32
  %1613 = bitcast float %1610 to i32
  %1614 = shl i32 %1612, 17
  %1615 = xor i32 %1614, %1611
  %1616 = xor i32 %1615, %1613
  %1617 = xor i32 %1616, 61
  %1618 = lshr i32 %1616, 16
  %1619 = xor i32 %1617, %1618
  %1620 = mul i32 %1619, 9
  %1621 = lshr i32 %1620, 4
  %1622 = xor i32 %1621, %1620
  %1623 = mul i32 %1622, 668265261
  %1624 = lshr i32 %1623, 15
  %1625 = xor i32 %1624, %1623
  %1626 = uitofp i32 %1625 to float
  %1627 = fmul fast float %1626, 0x3DF0000000000000
  %1628 = fmul fast float %1596, %1582
  %1629 = fcmp fast ugt float %1627, %1628
  br i1 %1629, label %1674, label %1630

; <label>:1630                                    ; preds = %1603
  %1631 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 0, i32 undef, i32 6)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1632 = add i32 %1631, 6
  %1633 = icmp ugt i32 %1632, 4095
  br i1 %1633, label %1634, label %1637

; <label>:1634                                    ; preds = %1630
  %1635 = icmp ult i32 %1631, 4096
  br i1 %1635, label %1636, label %1637

; <label>:1636                                    ; preds = %1634
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1631, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1637

; <label>:1637                                    ; preds = %1636, %1634, %1630
  %1638 = phi i32 [ %1631, %1630 ], [ 0, %1636 ], [ 0, %1634 ]
  %1639 = icmp eq i32 %1638, 0
  br i1 %1639, label %1674, label %1640

; <label>:1640                                    ; preds = %1637
  %1641 = fsub fast float -0.000000e+00, %222
  %1642 = fsub fast float %1641, %265
  %1643 = fadd fast float %1642, %1553
  %1644 = shl i32 %1545, 16
  %1645 = or i32 %1644, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1638, i32 0, i32 %1645, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1646 = bitcast float %1643 to i32
  %1647 = add i32 %1638, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1647, i32 0, i32 %1646, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1648 = bitcast float %1551 to i32
  %1649 = add i32 %1638, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1649, i32 0, i32 %1648, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1650 = bitcast float %1552 to i32
  %1651 = add i32 %1638, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1651, i32 0, i32 %1650, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1652 = bitcast float %1553 to i32
  %1653 = add i32 %1638, 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1653, i32 0, i32 %1652, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1654 = fadd fast float %108, 1.000000e+00
  %1655 = fadd fast float %109, 1.000000e+00
  %1656 = fadd fast float %110, 1.000000e+00
  %1657 = fmul fast float %1654, 5.000000e-01
  %1658 = fmul fast float %1655, 5.000000e-01
  %1659 = fmul fast float %1656, 5.000000e-01
  %1660 = call float @dx.op.unary.f32(i32 7, float %1657)  ; Saturate(value)
  %1661 = call float @dx.op.unary.f32(i32 7, float %1658)  ; Saturate(value)
  %1662 = call float @dx.op.unary.f32(i32 7, float %1659)  ; Saturate(value)
  %1663 = fmul fast float %1660, 1.023000e+03
  %1664 = fmul fast float %1661, 1.023000e+03
  %1665 = fmul fast float %1662, 1.023000e+03
  %1666 = fptoui float %1663 to i32
  %1667 = fptoui float %1664 to i32
  %1668 = fptoui float %1665 to i32
  %1669 = shl i32 %1667, 10
  %1670 = or i32 %1669, %1666
  %1671 = shl i32 %1668, 20
  %1672 = or i32 %1670, %1671
  %1673 = add i32 %1638, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1673, i32 0, i32 %1672, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1674

; <label>:1674                                    ; preds = %1640, %1637, %1603, %1584, %1538
  %1675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1676 = extractvalue %dx.types.CBufRet.f32 %1675, 2
  %1677 = fmul fast float %1676, 0x3FE3C6EF40000000
  %1678 = frem fast float %89, 2.560000e+02
  %1679 = frem fast float %90, 2.560000e+02
  %1680 = fptoui float %1678 to i32
  %1681 = fptoui float %1679 to i32
  %1682 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %33, i32 0, i32 %1680, i32 %1681, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1683 = extractvalue %dx.types.ResRet.f32 %1682, 0
  %1684 = extractvalue %dx.types.ResRet.f32 %1682, 1
  %1685 = fadd fast float %1683, %1677
  %1686 = fadd fast float %1684, %1677
  %1687 = call float @dx.op.unary.f32(i32 22, float %1685)  ; Frc(value)
  %1688 = call float @dx.op.unary.f32(i32 22, float %1686)  ; Frc(value)
  %1689 = fcmp fast ogt float %110, 0.000000e+00
  %1690 = fcmp fast olt float %110, 0.000000e+00
  %1691 = zext i1 %1689 to i32
  %1692 = zext i1 %1690 to i32
  %1693 = sub nsw i32 %1691, %1692
  %1694 = sitofp i32 %1693 to float
  %1695 = fadd fast float %1694, %110
  %1696 = fdiv fast float -1.000000e+00, %1695
  %1697 = fmul fast float %108, %109
  %1698 = fmul fast float %1697, %1696
  %1699 = fmul fast float %108, %108
  %1700 = fmul fast float %1699, %1694
  %1701 = fmul fast float %1700, %1696
  %1702 = fadd fast float %1701, 1.000000e+00
  %1703 = fmul fast float %1698, %1694
  %1704 = fmul fast float %108, %1694
  %1705 = fsub fast float -0.000000e+00, %1704
  %1706 = fmul fast float %109, %109
  %1707 = fmul fast float %1706, %1696
  %1708 = fadd fast float %1707, %1694
  %1709 = fsub fast float -0.000000e+00, %109
  %1710 = and i32 %1540, 65535
  %1711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1710)  ; LegacyF16ToF32(value)
  %1712 = lshr i32 %1540, 16
  %1713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1712)  ; LegacyF16ToF32(value)
  %1714 = and i32 %1541, 65535
  %1715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1714)  ; LegacyF16ToF32(value)
  %1716 = lshr i32 %1541, 16
  %1717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1716)  ; LegacyF16ToF32(value)
  %1718 = and i32 %1546, 65535
  %1719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1718)  ; LegacyF16ToF32(value)
  %1720 = lshr i32 %1546, 16
  %1721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1720)  ; LegacyF16ToF32(value)
  %1722 = call float @dx.op.unary.f32(i32 7, float %1721)  ; Saturate(value)
  %1723 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %1724 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %1725 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %1726 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %1727 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %1728 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %1729 = fadd fast float %1723, %144
  %1730 = fadd fast float %1724, %145
  %1731 = fadd fast float %1725, %146
  %1732 = fadd fast float %1726, %144
  %1733 = fadd fast float %1727, %145
  %1734 = fadd fast float %1728, %146
  %1735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1736 = extractvalue %dx.types.CBufRet.f32 %1735, 0
  %1737 = extractvalue %dx.types.CBufRet.f32 %1735, 1
  %1738 = extractvalue %dx.types.CBufRet.f32 %1735, 2
  %1739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1740 = extractvalue %dx.types.CBufRet.f32 %1739, 2
  %1741 = extractvalue %dx.types.CBufRet.f32 %1739, 3
  %1742 = fmul fast float %1736, %89
  %1743 = fmul fast float %1742, %1740
  %1744 = fmul fast float %1737, %90
  %1745 = fmul fast float %1744, %1741
  %1746 = fptoui float %1743 to i32
  %1747 = fptoui float %1745 to i32
  %1748 = fadd fast float %1736, -1.000000e+00
  %1749 = fadd fast float %1737, -1.000000e+00
  %1750 = fptoui float %1748 to i32
  %1751 = fptoui float %1749 to i32
  %1752 = call i32 @dx.op.binary.i32(i32 40, i32 %1746, i32 %1750)  ; UMin(a,b)
  %1753 = call i32 @dx.op.binary.i32(i32 40, i32 %1747, i32 %1751)  ; UMin(a,b)
  %1754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1755 = extractvalue %dx.types.CBufRet.f32 %1754, 2
  %1756 = extractvalue %dx.types.CBufRet.f32 %1754, 3
  %1757 = fmul fast float %1755, %78
  %1758 = fsub fast float %1757, %1756
  %1759 = fadd fast float %1738, -1.000000e+00
  %1760 = call float @dx.op.binary.f32(i32 36, float %1758, float %1759)  ; FMin(a,b)
  %1761 = fptoui float %1760 to i32
  %1762 = fptoui float %1736 to i32
  %1763 = fptoui float %1737 to i32
  %1764 = mul i32 %1761, %1763
  %1765 = add i32 %1764, %1753
  %1766 = mul i32 %1765, %1762
  %1767 = add i32 %1766, %1752
  %1768 = shl i32 %1767, 2
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1768, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = and i32 %1770, 1023
  %1772 = lshr i32 %1770, 10
  %1773 = icmp eq i32 %1771, 0
  br i1 %1773, label %2163, label %1774

; <label>:1774                                    ; preds = %1674
  %1775 = and i32 %1770, 1023
  br label %1776

; <label>:1776                                    ; preds = %1895, %1774
  %1777 = phi float [ %1896, %1895 ], [ 0.000000e+00, %1774 ]
  %1778 = phi float [ %1897, %1895 ], [ 0.000000e+00, %1774 ]
  %1779 = phi float [ %1898, %1895 ], [ 0.000000e+00, %1774 ]
  %1780 = phi float [ %1899, %1895 ], [ %1542, %1774 ]
  %1781 = phi float [ %1900, %1895 ], [ %1543, %1774 ]
  %1782 = phi float [ %1901, %1895 ], [ %1719, %1774 ]
  %1783 = phi float [ %1902, %1895 ], [ %1722, %1774 ]
  %1784 = phi float [ %1903, %1895 ], [ %1717, %1774 ]
  %1785 = phi float [ %1904, %1895 ], [ %1711, %1774 ]
  %1786 = phi float [ %1905, %1895 ], [ %1713, %1774 ]
  %1787 = phi float [ %1906, %1895 ], [ %1715, %1774 ]
  %1788 = phi i32 [ %1844, %1895 ], [ 0, %1774 ]
  %1789 = add nuw nsw i32 %1788, %1772
  %1790 = shl i32 %1789, 2
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = shl i32 %1792, 8
  %1794 = or i32 %1793, 48
  %1795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %1796 = extractvalue %dx.types.ResRet.f32 %1795, 0
  %1797 = extractvalue %dx.types.ResRet.f32 %1795, 1
  %1798 = extractvalue %dx.types.ResRet.f32 %1795, 2
  %1799 = extractvalue %dx.types.ResRet.f32 %1795, 3
  %1800 = or i32 %1793, 64
  %1801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1802 = extractvalue %dx.types.ResRet.i32 %1801, 0
  %1803 = extractvalue %dx.types.ResRet.i32 %1801, 1
  %1804 = or i32 %1793, 80
  %1805 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1804, i32 undef)  ; BufferLoad(srv,index,wot)
  %1806 = extractvalue %dx.types.ResRet.f32 %1805, 2
  %1807 = extractvalue %dx.types.ResRet.f32 %1805, 3
  %1808 = or i32 %1793, 96
  %1809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.f32 %1809, 0
  %1811 = extractvalue %dx.types.ResRet.f32 %1809, 1
  %1812 = extractvalue %dx.types.ResRet.f32 %1809, 2
  %1813 = extractvalue %dx.types.ResRet.f32 %1809, 3
  %1814 = or i32 %1793, 112
  %1815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.f32 %1815, 2
  %1817 = or i32 %1793, 128
  %1818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %1819 = extractvalue %dx.types.ResRet.f32 %1818, 0
  %1820 = extractvalue %dx.types.ResRet.f32 %1818, 1
  %1821 = extractvalue %dx.types.ResRet.f32 %1818, 2
  %1822 = extractvalue %dx.types.ResRet.f32 %1818, 3
  %1823 = or i32 %1793, 144
  %1824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.f32 %1824, 0
  %1826 = extractvalue %dx.types.ResRet.f32 %1824, 1
  %1827 = extractvalue %dx.types.ResRet.f32 %1824, 2
  %1828 = extractvalue %dx.types.ResRet.f32 %1824, 3
  %1829 = or i32 %1793, 160
  %1830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1829, i32 undef)  ; BufferLoad(srv,index,wot)
  %1831 = extractvalue %dx.types.ResRet.f32 %1830, 0
  %1832 = extractvalue %dx.types.ResRet.f32 %1830, 1
  %1833 = extractvalue %dx.types.ResRet.f32 %1830, 2
  %1834 = or i32 %1793, 192
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = or i32 %1793, 208
  %1838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.f32 %1838, 0
  %1840 = or i32 %1793, 248
  %1841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.ResRet.f32 %1841, 1
  %1844 = add nuw nsw i32 %1788, 1
  %1845 = bitcast float %1799 to i32
  %1846 = and i32 %1845, 512
  %1847 = icmp ne i32 %1846, 0
  %1848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.f32 %1848, 0
  %1850 = extractvalue %dx.types.ResRet.f32 %1848, 1
  %1851 = extractvalue %dx.types.ResRet.f32 %1848, 2
  %1852 = extractvalue %dx.types.ResRet.f32 %1848, 3
  %1853 = call float @dx.op.dot4.f32(i32 56, float %1849, float %1850, float %1851, float %1852, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1854 = or i32 %1793, 16
  %1855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %1856 = extractvalue %dx.types.ResRet.f32 %1855, 0
  %1857 = extractvalue %dx.types.ResRet.f32 %1855, 1
  %1858 = extractvalue %dx.types.ResRet.f32 %1855, 2
  %1859 = extractvalue %dx.types.ResRet.f32 %1855, 3
  %1860 = call float @dx.op.dot4.f32(i32 56, float %1856, float %1857, float %1858, float %1859, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1861 = or i32 %1793, 32
  %1862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.f32 %1862, 0
  %1864 = extractvalue %dx.types.ResRet.f32 %1862, 1
  %1865 = extractvalue %dx.types.ResRet.f32 %1862, 2
  %1866 = extractvalue %dx.types.ResRet.f32 %1862, 3
  %1867 = call float @dx.op.dot4.f32(i32 56, float %1863, float %1864, float %1865, float %1866, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1868 = call float @dx.op.unary.f32(i32 27, float %1853)  ; Round_ni(value)
  %1869 = call float @dx.op.unary.f32(i32 6, float %1868)  ; FAbs(value)
  %1870 = call float @dx.op.unary.f32(i32 27, float %1860)  ; Round_ni(value)
  %1871 = call float @dx.op.unary.f32(i32 6, float %1870)  ; FAbs(value)
  %1872 = call float @dx.op.unary.f32(i32 6, float %1867)  ; FAbs(value)
  %1873 = call float @dx.op.unary.f32(i32 27, float %1872)  ; Round_ni(value)
  %1874 = fadd fast float %1871, %1869
  %1875 = fadd fast float %1874, %1873
  %1876 = fcmp fast oeq float %1875, 0.000000e+00
  %1877 = call float @dx.op.dot4.f32(i32 56, float %1849, float %1850, float %1851, float %1852, float %1729, float %1730, float %1731, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1878 = call float @dx.op.dot4.f32(i32 56, float %1856, float %1857, float %1858, float %1859, float %1729, float %1730, float %1731, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1879 = call float @dx.op.dot4.f32(i32 56, float %1849, float %1850, float %1851, float %1852, float %1732, float %1733, float %1734, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1880 = call float @dx.op.dot4.f32(i32 56, float %1856, float %1857, float %1858, float %1859, float %1732, float %1733, float %1734, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1881 = fsub fast float %1877, %1853
  %1882 = fsub fast float %1879, %1853
  %1883 = fsub fast float %1878, %1860
  %1884 = fsub fast float %1880, %1860
  %1885 = call float @dx.op.dot3.f32(i32 55, float %1796, float %1797, float %1798, float %108, float %109, float %110)  ; Dot3(ax,ay,az,bx,by,bz)
  %1886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1887 = extractvalue %dx.types.CBufRet.f32 %1886, 2
  %1888 = call float @dx.op.unary.f32(i32 6, float %1885)  ; FAbs(value)
  %1889 = fadd fast float %1888, %1887
  %1890 = call float @dx.op.unary.f32(i32 7, float %1889)  ; Saturate(value)
  %1891 = extractvalue %dx.types.CBufRet.f32 %1886, 0
  %1892 = fcmp fast ogt float %1890, %1891
  %1893 = and i1 %1876, %1892
  %1894 = and i1 %1847, %1893
  br i1 %1894, label %1908, label %1895

; <label>:1895                                    ; preds = %2149, %1989, %1908, %1776
  %1896 = phi float [ %1777, %1908 ], [ %1777, %1989 ], [ %2159, %2149 ], [ %1777, %1776 ]
  %1897 = phi float [ %1778, %1908 ], [ %1778, %1989 ], [ %2160, %2149 ], [ %1778, %1776 ]
  %1898 = phi float [ %1779, %1908 ], [ %1779, %1989 ], [ %2161, %2149 ], [ %1779, %1776 ]
  %1899 = phi float [ %1780, %1908 ], [ %1780, %1989 ], [ %2123, %2149 ], [ %1780, %1776 ]
  %1900 = phi float [ %1781, %1908 ], [ %1781, %1989 ], [ %2124, %2149 ], [ %1781, %1776 ]
  %1901 = phi float [ %1782, %1908 ], [ %1782, %1989 ], [ %2118, %2149 ], [ %1782, %1776 ]
  %1902 = phi float [ %1783, %1908 ], [ %1783, %1989 ], [ %2115, %2149 ], [ %1783, %1776 ]
  %1903 = phi float [ %1784, %1908 ], [ %1784, %1989 ], [ %2112, %2149 ], [ %1784, %1776 ]
  %1904 = phi float [ %1785, %1908 ], [ %1785, %1989 ], [ %2107, %2149 ], [ %1785, %1776 ]
  %1905 = phi float [ %1786, %1908 ], [ %1786, %1989 ], [ %2108, %2149 ], [ %1786, %1776 ]
  %1906 = phi float [ %1787, %1908 ], [ %1787, %1989 ], [ %2109, %2149 ], [ %1787, %1776 ]
  %1907 = icmp eq i32 %1844, %1775
  br i1 %1907, label %2162, label %1776

; <label>:1908                                    ; preds = %1776
  %1909 = extractvalue %dx.types.ResRet.f32 %1815, 3
  %1910 = extractvalue %dx.types.ResRet.f32 %1815, 1
  %1911 = extractvalue %dx.types.ResRet.f32 %1815, 0
  %1912 = extractvalue %dx.types.ResRet.f32 %1805, 1
  %1913 = extractvalue %dx.types.ResRet.f32 %1805, 0
  %1914 = extractvalue %dx.types.ResRet.i32 %1801, 3
  %1915 = extractvalue %dx.types.ResRet.i32 %1801, 2
  %1916 = add i32 %1914, 0
  %1917 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1916, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1919 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1917, %dx.types.Handle %1918, float %1853, float %1860, float undef, float undef, i32 0, i32 0, i32 undef, float %1881, float %1883, float undef, float %1882, float %1884, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1920 = extractvalue %dx.types.ResRet.f32 %1919, 0
  %1921 = fmul fast float %1920, %1913
  %1922 = fadd fast float %1921, %1912
  %1923 = call float @dx.op.unary.f32(i32 7, float %1922)  ; Saturate(value)
  %1924 = fmul fast float %1853, %1810
  %1925 = call float @dx.op.tertiary.f32(i32 46, float %1811, float %1860, float %1924)  ; FMad(a,b,c)
  %1926 = fadd fast float %1925, %1911
  %1927 = fmul fast float %1853, %1812
  %1928 = call float @dx.op.tertiary.f32(i32 46, float %1813, float %1860, float %1927)  ; FMad(a,b,c)
  %1929 = fadd fast float %1928, %1910
  %1930 = fmul fast float %1881, %1810
  %1931 = call float @dx.op.tertiary.f32(i32 46, float %1811, float %1883, float %1930)  ; FMad(a,b,c)
  %1932 = fmul fast float %1881, %1812
  %1933 = call float @dx.op.tertiary.f32(i32 46, float %1813, float %1883, float %1932)  ; FMad(a,b,c)
  %1934 = fmul fast float %1882, %1810
  %1935 = call float @dx.op.tertiary.f32(i32 46, float %1811, float %1884, float %1934)  ; FMad(a,b,c)
  %1936 = fmul fast float %1882, %1812
  %1937 = call float @dx.op.tertiary.f32(i32 46, float %1813, float %1884, float %1936)  ; FMad(a,b,c)
  %1938 = add i32 %1915, 0
  %1939 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1938, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1940 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1939, %dx.types.Handle %1918, float %1926, float %1929, float undef, float undef, i32 0, i32 0, i32 undef, float %1931, float %1933, float undef, float %1935, float %1937, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1941 = extractvalue %dx.types.ResRet.f32 %1940, 0
  %1942 = and i32 %1845, 1024
  %1943 = icmp ne i32 %1942, 0
  %1944 = fcmp fast ogt float %1941, 0x3FE0101020000000
  %1945 = uitofp i1 %1944 to float
  %1946 = select i1 %1943, float %1945, float %1941
  %1947 = and i32 %1845, 8192
  %1948 = icmp ne i32 %1947, 0
  %1949 = select i1 %1948, float %1909, float 1.000000e+00
  %1950 = fmul fast float %1853, 2.000000e+00
  %1951 = fadd fast float %1950, -1.000000e+00
  %1952 = call float @dx.op.unary.f32(i32 6, float %1951)  ; FAbs(value)
  %1953 = fmul fast float %1952, %1842
  %1954 = fsub fast float %1953, %1842
  %1955 = call float @dx.op.unary.f32(i32 7, float %1954)  ; Saturate(value)
  %1956 = fmul fast float %1860, 2.000000e+00
  %1957 = fadd fast float %1956, -1.000000e+00
  %1958 = call float @dx.op.unary.f32(i32 6, float %1957)  ; FAbs(value)
  %1959 = fmul fast float %1958, %1843
  %1960 = fsub fast float %1959, %1843
  %1961 = call float @dx.op.unary.f32(i32 7, float %1960)  ; Saturate(value)
  %1962 = fmul fast float %1872, %1806
  %1963 = fsub fast float %1962, %1806
  %1964 = call float @dx.op.unary.f32(i32 7, float %1963)  ; Saturate(value)
  %1965 = fmul fast float %1923, %1949
  %1966 = fmul fast float %1965, %1920
  %1967 = fmul fast float %1966, %1955
  %1968 = fmul fast float %1967, %1946
  %1969 = fmul fast float %1968, %1961
  %1970 = fmul fast float %1969, %1964
  %1971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1972 = extractvalue %dx.types.CBufRet.f32 %1971, 1
  %1973 = extractvalue %dx.types.CBufRet.f32 %1971, 0
  %1974 = fsub fast float %1890, %1973
  %1975 = fmul fast float %1974, %1972
  %1976 = call float @dx.op.unary.f32(i32 7, float %1975)  ; Saturate(value)
  %1977 = fmul fast float %1970, %1807
  %1978 = fadd fast float %1970, %1807
  %1979 = fmul fast float %1978, %1816
  %1980 = fsub fast float %1979, %1816
  %1981 = call float @dx.op.unary.f32(i32 7, float %1980)  ; Saturate(value)
  %1982 = and i32 %1845, 128
  %1983 = icmp ne i32 %1982, 0
  %1984 = select i1 %1983, float %1981, float %1977
  %1985 = fmul fast float %1984, %1976
  %1986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1987 = extractvalue %dx.types.CBufRet.f32 %1986, 0
  %1988 = fcmp fast ugt float %1985, %1987
  br i1 %1988, label %1989, label %1895

; <label>:1989                                    ; preds = %1908
  br i1 %1948, label %1895, label %1990

; <label>:1990                                    ; preds = %1989
  %1991 = and i32 %1845, 4
  %1992 = and i32 %1845, 8
  %1993 = add i32 %1802, 0
  %1994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1993, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1995 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1996 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1994, %dx.types.Handle %1995, float %1926, float %1929, float undef, float undef, i32 0, i32 0, i32 undef, float %1931, float %1933, float undef, float %1935, float %1937, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1997 = extractvalue %dx.types.ResRet.f32 %1996, 0
  %1998 = extractvalue %dx.types.ResRet.f32 %1996, 1
  %1999 = extractvalue %dx.types.ResRet.f32 %1996, 2
  %2000 = extractvalue %dx.types.ResRet.f32 %1996, 3
  %2001 = bitcast float %1828 to i32
  %2002 = and i32 %2001, 255
  %2003 = uitofp i32 %2002 to float
  %2004 = lshr i32 %2001, 8
  %2005 = and i32 %2004, 255
  %2006 = uitofp i32 %2005 to float
  %2007 = fmul fast float %2000, %2003
  %2008 = fadd fast float %2007, %2006
  %2009 = fmul fast float %2008, 0x3F70101000000000
  %2010 = add i32 %1803, 0
  %2011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2010, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2012 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2011, %dx.types.Handle %1995, float %1926, float %1929, float undef, float undef, i32 0, i32 0, i32 undef, float %1931, float %1933, float undef, float %1935, float %1937, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2013 = extractvalue %dx.types.ResRet.f32 %2012, 0
  %2014 = extractvalue %dx.types.ResRet.f32 %2012, 1
  %2015 = extractvalue %dx.types.ResRet.f32 %2012, 2
  %2016 = extractvalue %dx.types.ResRet.f32 %2012, 3
  %2017 = bitcast float %1822 to i32
  %2018 = and i32 %2017, 255
  %2019 = uitofp i32 %2018 to float
  %2020 = lshr i32 %2017, 8
  %2021 = and i32 %2020, 255
  %2022 = uitofp i32 %2021 to float
  %2023 = lshr i32 %2017, 16
  %2024 = and i32 %2023, 255
  %2025 = uitofp i32 %2024 to float
  %2026 = fmul fast float %2025, 0x3F70101000000000
  %2027 = fmul fast float %2013, %2019
  %2028 = fadd fast float %2027, %2022
  %2029 = fmul fast float %2028, 0x3F70101000000000
  %2030 = fadd fast float %2014, -5.000000e-01
  %2031 = fadd fast float %2016, -5.000000e-01
  %2032 = fmul fast float %2030, %2026
  %2033 = fmul fast float %2031, %2026
  %2034 = fadd fast float %2032, 5.000000e-01
  %2035 = fadd fast float %2033, 5.000000e-01
  %2036 = fmul fast float %1997, %1831
  %2037 = fmul fast float %1998, %1832
  %2038 = fmul fast float %1999, %1833
  %2039 = fmul fast float %2034, 2.000000e+00
  %2040 = fadd fast float %2039, -1.000000e+00
  %2041 = fmul fast float %2035, 2.000000e+00
  %2042 = fadd fast float %2041, -1.000000e+00
  %2043 = fadd fast float %2040, %2042
  %2044 = fmul fast float %2043, 5.000000e-01
  %2045 = fsub fast float %2040, %2042
  %2046 = fmul fast float %2045, 5.000000e-01
  %2047 = call float @dx.op.unary.f32(i32 6, float %2044)  ; FAbs(value)
  %2048 = fsub fast float 1.000000e+00, %2047
  %2049 = call float @dx.op.unary.f32(i32 6, float %2046)  ; FAbs(value)
  %2050 = fsub fast float %2048, %2049
  %2051 = call float @dx.op.dot3.f32(i32 55, float %2044, float %2046, float %2050, float %2044, float %2046, float %2050)  ; Dot3(ax,ay,az,bx,by,bz)
  %2052 = call float @dx.op.unary.f32(i32 25, float %2051)  ; Rsqrt(value)
  %2053 = fmul fast float %2044, %2052
  %2054 = fmul fast float %2046, %2052
  %2055 = fmul fast float %2052, %2050
  %2056 = fmul fast float %2055, %1796
  %2057 = fmul fast float %2055, %1797
  %2058 = fmul fast float %2055, %1798
  %2059 = fmul fast float %2053, %1819
  %2060 = fmul fast float %2053, %1820
  %2061 = fmul fast float %2053, %1821
  %2062 = fadd fast float %2059, %2056
  %2063 = fadd fast float %2060, %2057
  %2064 = fadd fast float %2061, %2058
  %2065 = fmul fast float %2054, %1825
  %2066 = fmul fast float %2054, %1826
  %2067 = fmul fast float %2054, %1827
  %2068 = fadd fast float %2062, %2065
  %2069 = fadd fast float %2063, %2066
  %2070 = fadd fast float %2064, %2067
  %2071 = call float @dx.op.dot3.f32(i32 55, float %2068, float %2069, float %2070, float %2068, float %2069, float %2070)  ; Dot3(ax,ay,az,bx,by,bz)
  %2072 = call float @dx.op.unary.f32(i32 25, float %2071)  ; Rsqrt(value)
  %2073 = fmul fast float %2068, %2072
  %2074 = fmul fast float %2069, %2072
  %2075 = fmul fast float %2070, %2072
  %2076 = fcmp fast ogt float %1885, %1891
  %2077 = fsub fast float -0.000000e+00, %2073
  %2078 = fsub fast float -0.000000e+00, %2074
  %2079 = fsub fast float -0.000000e+00, %2075
  %2080 = select i1 %2076, float %2073, float %2077
  %2081 = select i1 %2076, float %2074, float %2078
  %2082 = select i1 %2076, float %2075, float %2079
  %2083 = fmul fast float %2080, %1702
  %2084 = call float @dx.op.tertiary.f32(i32 46, float %2081, float %1703, float %2083)  ; FMad(a,b,c)
  %2085 = call float @dx.op.tertiary.f32(i32 46, float %2082, float %1705, float %2084)  ; FMad(a,b,c)
  %2086 = fmul fast float %2080, %1698
  %2087 = call float @dx.op.tertiary.f32(i32 46, float %2081, float %1708, float %2086)  ; FMad(a,b,c)
  %2088 = call float @dx.op.tertiary.f32(i32 46, float %2082, float %1709, float %2087)  ; FMad(a,b,c)
  %2089 = icmp ne i32 %1992, 0
  %2090 = select i1 %2089, float 1.000000e+00, float 0.000000e+00
  %2091 = fmul fast float %1985, %2090
  %2092 = and i32 %1845, 1
  %2093 = icmp ne i32 %2092, 0
  %2094 = fadd fast float %2085, %1780
  %2095 = fadd fast float %2088, %1781
  %2096 = select i1 %2093, float %2094, float %2085
  %2097 = select i1 %2093, float %2095, float %2088
  %2098 = icmp ne i32 %1991, 0
  %2099 = select i1 %2098, float 1.000000e+00, float 0.000000e+00
  %2100 = fmul fast float %1985, %2099
  %2101 = fsub fast float %2036, %1785
  %2102 = fsub fast float %2037, %1786
  %2103 = fsub fast float %2038, %1787
  %2104 = fmul fast float %2101, %2100
  %2105 = fmul fast float %2102, %2100
  %2106 = fmul fast float %2103, %2100
  %2107 = fadd fast float %2104, %1785
  %2108 = fadd fast float %2105, %1786
  %2109 = fadd fast float %2106, %1787
  %2110 = fsub fast float %2009, %1784
  %2111 = fmul fast float %2110, %2100
  %2112 = fadd fast float %2111, %1784
  %2113 = fsub fast float %2029, %1783
  %2114 = fmul fast float %2113, %2091
  %2115 = fadd fast float %2114, %1783
  %2116 = fsub fast float %2015, %1782
  %2117 = fmul fast float %2116, %2091
  %2118 = fadd fast float %2117, %1782
  %2119 = fsub fast float %2096, %1780
  %2120 = fsub fast float %2097, %1781
  %2121 = fmul fast float %2119, %2091
  %2122 = fmul fast float %2120, %2091
  %2123 = fadd fast float %2121, %1780
  %2124 = fadd fast float %2122, %1781
  %2125 = and i32 %1845, 16
  %2126 = icmp eq i32 %2125, 0
  br i1 %2126, label %2149, label %2127

; <label>:2127                                    ; preds = %1990
  %2128 = bitcast float %1839 to i32
  %2129 = add i32 %1836, 0
  %2130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2129, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2131 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2130, %dx.types.Handle %1995, float %1926, float %1929, float undef, float undef, i32 0, i32 0, i32 undef, float %1931, float %1933, float undef, float %1935, float %1937, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2132 = extractvalue %dx.types.ResRet.f32 %2131, 0
  %2133 = extractvalue %dx.types.ResRet.f32 %2131, 1
  %2134 = extractvalue %dx.types.ResRet.f32 %2131, 2
  %2135 = and i32 %2128, 65535
  %2136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2135)  ; LegacyF16ToF32(value)
  %2137 = fmul fast float %2132, %1831
  %2138 = fmul fast float %2133, %1832
  %2139 = fmul fast float %2134, %1833
  %2140 = and i32 %1845, 16384
  %2141 = icmp ne i32 %2140, 0
  %2142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2143 = extractvalue %dx.types.CBufRet.f32 %2142, 0
  %2144 = select i1 %2141, float %2143, float 1.000000e+00
  %2145 = fmul fast float %2144, %2136
  %2146 = fmul fast float %2137, %2145
  %2147 = fmul fast float %2138, %2145
  %2148 = fmul fast float %2139, %2145
  br label %2149

; <label>:2149                                    ; preds = %2127, %1990
  %2150 = phi float [ %2146, %2127 ], [ 0.000000e+00, %1990 ]
  %2151 = phi float [ %2147, %2127 ], [ 0.000000e+00, %1990 ]
  %2152 = phi float [ %2148, %2127 ], [ 0.000000e+00, %1990 ]
  %2153 = fsub fast float %2150, %1777
  %2154 = fsub fast float %2151, %1778
  %2155 = fsub fast float %2152, %1779
  %2156 = fmul fast float %2153, %1985
  %2157 = fmul fast float %2154, %1985
  %2158 = fmul fast float %2155, %1985
  %2159 = fadd fast float %2156, %1777
  %2160 = fadd fast float %2157, %1778
  %2161 = fadd fast float %2158, %1779
  br label %1895

; <label>:2162                                    ; preds = %1895
  br label %2163

; <label>:2163                                    ; preds = %2162, %1674
  %2164 = phi float [ 0.000000e+00, %1674 ], [ %1896, %2162 ]
  %2165 = phi float [ 0.000000e+00, %1674 ], [ %1897, %2162 ]
  %2166 = phi float [ 0.000000e+00, %1674 ], [ %1898, %2162 ]
  %2167 = phi float [ %1542, %1674 ], [ %1899, %2162 ]
  %2168 = phi float [ %1543, %1674 ], [ %1900, %2162 ]
  %2169 = phi float [ %1719, %1674 ], [ %1901, %2162 ]
  %2170 = phi float [ %1722, %1674 ], [ %1902, %2162 ]
  %2171 = phi float [ %1717, %1674 ], [ %1903, %2162 ]
  %2172 = phi float [ %1711, %1674 ], [ %1904, %2162 ]
  %2173 = phi float [ %1713, %1674 ], [ %1905, %2162 ]
  %2174 = phi float [ %1715, %1674 ], [ %1906, %2162 ]
  %2175 = call float @dx.op.dot2.f32(i32 54, float %2167, float %2168, float %2167, float %2168)  ; Dot2(ax,ay,bx,by)
  %2176 = fmul fast float %2175, 0x3FE3333340000000
  %2177 = fsub fast float 1.000000e+00, %2176
  %2178 = call float @dx.op.dot3.f32(i32 55, float %2167, float %2168, float %2177, float %2167, float %2168, float %2177)  ; Dot3(ax,ay,az,bx,by,bz)
  %2179 = call float @dx.op.unary.f32(i32 25, float %2178)  ; Rsqrt(value)
  %2180 = fmul fast float %2179, %2167
  %2181 = fmul fast float %2179, %2168
  %2182 = fmul fast float %2177, %2179
  %2183 = fmul fast float %2182, %108
  %2184 = fmul fast float %2182, %109
  %2185 = fmul fast float %2182, %110
  %2186 = fmul fast float %2180, %1702
  %2187 = fmul fast float %2180, %1703
  %2188 = fmul fast float %2180, %1705
  %2189 = fadd fast float %2183, %2186
  %2190 = fadd fast float %2184, %2187
  %2191 = fadd fast float %2185, %2188
  %2192 = fmul fast float %2181, %1698
  %2193 = fmul fast float %2181, %1708
  %2194 = fmul fast float %2181, %1709
  %2195 = fadd fast float %2189, %2192
  %2196 = fadd fast float %2190, %2193
  %2197 = fadd fast float %2191, %2194
  %2198 = call float @dx.op.dot3.f32(i32 55, float %2195, float %2196, float %2197, float %2195, float %2196, float %2197)  ; Dot3(ax,ay,az,bx,by,bz)
  %2199 = call float @dx.op.unary.f32(i32 25, float %2198)  ; Rsqrt(value)
  %2200 = fmul fast float %2195, %2199
  %2201 = fmul fast float %2196, %2199
  %2202 = fmul fast float %2197, %2199
  %2203 = fadd fast float %2171, 0xBFB99999A0000000
  %2204 = call float @dx.op.unary.f32(i32 7, float %2203)  ; Saturate(value)
  %2205 = fmul fast float %2204, 0x3FF1C71C80000000
  %2206 = call float @dx.op.binary.f32(i32 36, float %2171, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2207 = fsub fast float 1.000000e+00, %2205
  %2208 = call float @dx.op.unary.f32(i32 7, float %2207)  ; Saturate(value)
  %2209 = fmul fast float %2208, %2172
  %2210 = fmul fast float %2208, %2173
  %2211 = fmul fast float %2208, %2174
  %2212 = call float @dx.op.unary.f32(i32 7, float %2209)  ; Saturate(value)
  %2213 = call float @dx.op.unary.f32(i32 7, float %2210)  ; Saturate(value)
  %2214 = call float @dx.op.unary.f32(i32 7, float %2211)  ; Saturate(value)
  %2215 = fmul fast float %2205, %2172
  %2216 = fmul fast float %2205, %2173
  %2217 = fmul fast float %2205, %2174
  %2218 = fadd fast float %2215, %2206
  %2219 = fadd fast float %2216, %2206
  %2220 = fadd fast float %2217, %2206
  %2221 = call float @dx.op.unary.f32(i32 7, float %2218)  ; Saturate(value)
  %2222 = call float @dx.op.unary.f32(i32 7, float %2219)  ; Saturate(value)
  %2223 = call float @dx.op.unary.f32(i32 7, float %2220)  ; Saturate(value)
  %2224 = fmul fast float %2222, 0x401CF23780000000
  %2225 = fadd fast float %2224, 0x3FF32641C0000000
  %2226 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %144, float %145, float %146)  ; Dot3(ax,ay,az,bx,by,bz)
  %2227 = call float @dx.op.unary.f32(i32 25, float %2226)  ; Rsqrt(value)
  %2228 = fmul fast float %2227, %144
  %2229 = fmul fast float %2227, %145
  %2230 = fmul fast float %2227, %146
  %2231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2232 = extractvalue %dx.types.CBufRet.f32 %2231, 0
  %2233 = fdiv fast float 1.000000e+00, %2225
  %2234 = select i1 %106, float %2233, float %2225
  %2235 = fadd fast float %2234, -1.000000e+00
  %2236 = fadd fast float %2234, 1.000000e+00
  %2237 = fdiv fast float %2235, %2236
  %2238 = fmul fast float %2237, %2237
  %2239 = call float @dx.op.dot3.f32(i32 55, float %2228, float %2229, float %2230, float %2200, float %2201, float %2202)  ; Dot3(ax,ay,az,bx,by,bz)
  %2240 = select i1 %106, float 0.000000e+00, float %2232
  %2241 = fadd fast float %2239, %2240
  %2242 = call float @dx.op.binary.f32(i32 35, float %2241, float -1.000000e+00)  ; FMax(a,b)
  %2243 = call float @dx.op.binary.f32(i32 36, float %2242, float 1.000000e+00)  ; FMin(a,b)
  %2244 = fmul fast float %2234, %2234
  %2245 = fmul fast float %2243, %2243
  %2246 = fsub fast float 1.000000e+00, %2245
  %2247 = fmul fast float %2244, %2246
  %2248 = fsub fast float 1.000000e+00, %2247
  %2249 = fcmp fast olt float %2234, 1.000000e+00
  %2250 = select i1 %2249, float %2245, float %2248
  %2251 = fcmp fast ogt float %2248, 0.000000e+00
  %2252 = fsub fast float 1.000000e+00, %2238
  %2253 = call float @dx.op.unary.f32(i32 24, float %2250)  ; Sqrt(value)
  %2254 = fsub fast float 1.000000e+00, %2253
  %2255 = call float @dx.op.unary.f32(i32 23, float %2254)  ; Log(value)
  %2256 = fmul fast float %2255, 5.000000e+00
  %2257 = call float @dx.op.unary.f32(i32 21, float %2256)  ; Exp(value)
  %2258 = fmul fast float %2257, %2252
  %2259 = fadd fast float %2258, %2238
  %2260 = select i1 %2251, float %2259, float 1.000000e+00
  %2261 = lshr i32 %1539, 24
  %2262 = uitofp i32 %2261 to float
  %2263 = fmul fast float %2262, 0x3F70101020000000
  %2264 = call float @dx.op.unary.f32(i32 7, float %2263)  ; Saturate(value)
  %2265 = fmul fast float %144, %144
  %2266 = fmul fast float %145, %145
  %2267 = fadd fast float %2266, %2265
  %2268 = fmul fast float %146, %146
  %2269 = fadd fast float %2267, %2268
  %2270 = call float @dx.op.unary.f32(i32 24, float %2269)  ; Sqrt(value)
  %2271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %2272 = extractvalue %dx.types.CBufRet.f32 %2271, 0
  %2273 = fmul fast float %2272, %2270
  %2274 = extractvalue %dx.types.CBufRet.f32 %2271, 1
  %2275 = fadd fast float %2273, %2274
  %2276 = call float @dx.op.unary.f32(i32 7, float %2275)  ; Saturate(value)
  %2277 = fmul fast float %2264, 2.550000e+02
  %2278 = fmul fast float %2277, %2276
  %2279 = fptoui float %2278 to i32
  %2280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2281 = extractvalue %dx.types.CBufRet.f32 %2280, 3
  %2282 = fmul fast float %2281, %2170
  %2283 = call float @dx.op.unary.f32(i32 7, float %2282)  ; Saturate(value)
  %2284 = call float @dx.op.unary.f32(i32 7, float %2169)  ; Saturate(value)
  %2285 = fmul fast float %70, 6.553500e+04
  %2286 = call float @dx.op.unary.f32(i32 26, float %2285)  ; Round_ne(value)
  %2287 = fptosi float %2286 to i32
  %2288 = call i32 @dx.op.binary.i32(i32 37, i32 %2287, i32 0)  ; IMax(a,b)
  %2289 = call i32 @dx.op.binary.i32(i32 38, i32 %2288, i32 65535)  ; IMin(a,b)
  %2290 = fmul fast float %71, 6.553500e+04
  %2291 = call float @dx.op.unary.f32(i32 26, float %2290)  ; Round_ne(value)
  %2292 = fptosi float %2291 to i32
  %2293 = call i32 @dx.op.binary.i32(i32 37, i32 %2292, i32 0)  ; IMax(a,b)
  %2294 = call i32 @dx.op.binary.i32(i32 38, i32 %2293, i32 65535)  ; IMin(a,b)
  %2295 = shl i32 %2294, 16
  %2296 = or i32 %2295, %2289
  %2297 = call float @dx.op.dot3.f32(i32 55, float %2221, float %2222, float %2223, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2298 = fsub fast float 1.000000e+00, %2297
  %2299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.i32 %2299, 0
  %2301 = and i32 %2300, 255
  %2302 = uitofp i32 %2301 to float
  %2303 = lshr i32 %2300, 8
  %2304 = and i32 %2303, 255
  %2305 = uitofp i32 %2304 to float
  %2306 = fmul fast float %2305, %2298
  %2307 = fadd fast float %2306, %2302
  %2308 = fmul fast float %2307, 0x3F70101020000000
  %2309 = call float @dx.op.unary.f32(i32 7, float %2308)  ; Saturate(value)
  %2310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2311 = extractvalue %dx.types.CBufRet.f32 %2310, 0
  %2312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2313 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2314 = extractvalue %dx.types.CBufRet.i32 %2313, 3
  %2315 = and i32 %2314, 3
  %2316 = icmp ne i32 %2315, 0
  %2317 = and i32 %2314, 4
  %2318 = icmp ne i32 %2317, 0
  %2319 = and i1 %2316, %2318
  br i1 %2319, label %2320, label %2331

; <label>:2320                                    ; preds = %2163
  %2321 = extractvalue %dx.types.CBufRet.f32 %2312, 3
  %2322 = fmul fast float %2321, %90
  %2323 = extractvalue %dx.types.CBufRet.f32 %2312, 2
  %2324 = fmul fast float %2323, %89
  %2325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %58, float %2324, float %2322, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2326 = extractvalue %dx.types.ResRet.f32 %2325, 0
  %2327 = fsub fast float 1.000000e+00, %2326
  %2328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %2329 = extractvalue %dx.types.CBufRet.f32 %2328, 0
  %2330 = fcmp fast olt float %2327, %2329
  br label %2334

; <label>:2331                                    ; preds = %2163
  %2332 = icmp eq i32 %2317, 0
  %2333 = and i1 %2316, %2332
  br label %2334

; <label>:2334                                    ; preds = %2331, %2320
  %2335 = phi i1 [ %2330, %2320 ], [ %2333, %2331 ]
  %2336 = fsub fast float -0.000000e+00, %146
  %2337 = fsub fast float -0.000000e+00, %2228
  %2338 = fsub fast float -0.000000e+00, %2229
  %2339 = fsub fast float -0.000000e+00, %2230
  %2340 = select i1 %2335, float 0.000000e+00, float %2223
  %2341 = call float @dx.op.dot3.f32(i32 55, float %2200, float %2201, float %2202, float %2337, float %2338, float %2339)  ; Dot3(ax,ay,az,bx,by,bz)
  %2342 = call float @dx.op.unary.f32(i32 7, float %2341)  ; Saturate(value)
  %2343 = fmul fast float %2239, 2.000000e+00
  %2344 = fmul fast float %2343, %2200
  %2345 = fmul fast float %2343, %2201
  %2346 = fmul fast float %2343, %2202
  %2347 = fsub fast float %2228, %2344
  %2348 = fsub fast float %2229, %2345
  %2349 = fsub fast float %2230, %2346
  %2350 = call float @dx.op.binary.f32(i32 36, float %2284, float 1.000000e+00)  ; FMin(a,b)
  %2351 = fsub fast float 1.000000e+00, %2284
  %2352 = bitcast float %2351 to i32
  %2353 = sub nsw i32 2129859010, %2352
  %2354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2355 = extractvalue %dx.types.CBufRet.f32 %2354, 0
  %2356 = extractvalue %dx.types.CBufRet.f32 %2354, 1
  %2357 = extractvalue %dx.types.CBufRet.f32 %2354, 2
  %2358 = fadd fast float %2355, %144
  %2359 = fadd fast float %2356, %145
  %2360 = fadd fast float %2357, %146
  %2361 = fmul fast float %2200, 3.200000e+01
  %2362 = fmul fast float %2201, 3.200000e+01
  %2363 = fadd fast float %2358, %2361
  %2364 = fadd fast float %2359, %2362
  %2365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2366 = extractvalue %dx.types.CBufRet.f32 %2365, 0
  %2367 = extractvalue %dx.types.CBufRet.f32 %2365, 1
  %2368 = fsub fast float %2363, %2366
  %2369 = fsub fast float %2364, %2367
  %2370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2371 = extractvalue %dx.types.CBufRet.f32 %2370, 0
  %2372 = extractvalue %dx.types.CBufRet.f32 %2370, 1
  %2373 = fmul fast float %2368, %2371
  %2374 = fmul fast float %2369, %2372
  %2375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2376 = extractvalue %dx.types.CBufRet.f32 %2375, 0
  %2377 = fmul fast float %2373, %2376
  %2378 = extractvalue %dx.types.CBufRet.f32 %2375, 1
  %2379 = fadd fast float %2377, %2378
  %2380 = extractvalue %dx.types.CBufRet.f32 %2375, 2
  %2381 = fmul fast float %2380, %2374
  %2382 = extractvalue %dx.types.CBufRet.f32 %2375, 3
  %2383 = fadd fast float %2381, %2382
  %2384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %58, float %2379, float %2383, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2385 = extractvalue %dx.types.ResRet.f32 %2384, 0
  %2386 = extractvalue %dx.types.ResRet.f32 %2384, 1
  %2387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
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
  %2398 = fsub fast float %2360, %2392
  %2399 = fsub fast float %2397, %2392
  %2400 = fdiv fast float %2398, %2399
  %2401 = call float @dx.op.unary.f32(i32 7, float %2400)  ; Saturate(value)
  %2402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2403 = extractvalue %dx.types.CBufRet.f32 %2402, 0
  %2404 = fmul fast float %2403, %2401
  %2405 = extractvalue %dx.types.CBufRet.f32 %2402, 1
  %2406 = fadd fast float %2404, %2405
  %2407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %58, float %2379, float %2383, float %2406, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2408 = extractvalue %dx.types.ResRet.f32 %2407, 0
  %2409 = extractvalue %dx.types.ResRet.f32 %2407, 1
  %2410 = extractvalue %dx.types.ResRet.f32 %2407, 2
  %2411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2412 = extractvalue %dx.types.CBufRet.f32 %2411, 0
  %2413 = extractvalue %dx.types.CBufRet.f32 %2411, 1
  %2414 = extractvalue %dx.types.CBufRet.f32 %2411, 2
  %2415 = fmul fast float %2412, %2408
  %2416 = fmul fast float %2413, %2409
  %2417 = fmul fast float %2414, %2410
  %2418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2419 = extractvalue %dx.types.CBufRet.f32 %2418, 0
  %2420 = extractvalue %dx.types.CBufRet.f32 %2418, 1
  %2421 = extractvalue %dx.types.CBufRet.f32 %2418, 2
  %2422 = fadd fast float %2415, %2419
  %2423 = fadd fast float %2416, %2420
  %2424 = fadd fast float %2417, %2421
  %2425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2426 = extractvalue %dx.types.CBufRet.f32 %2425, 0
  %2427 = fmul fast float %2426, %2373
  %2428 = extractvalue %dx.types.CBufRet.f32 %2425, 1
  %2429 = fadd fast float %2427, %2428
  %2430 = extractvalue %dx.types.CBufRet.f32 %2425, 2
  %2431 = fmul fast float %2430, %2374
  %2432 = extractvalue %dx.types.CBufRet.f32 %2425, 3
  %2433 = fadd fast float %2431, %2432
  %2434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2435 = extractvalue %dx.types.CBufRet.f32 %2434, 0
  %2436 = extractvalue %dx.types.CBufRet.f32 %2434, 1
  %2437 = extractvalue %dx.types.CBufRet.f32 %2434, 2
  %2438 = extractvalue %dx.types.CBufRet.f32 %2434, 3
  %2439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2440 = extractvalue %dx.types.CBufRet.f32 %2439, 0
  %2441 = extractvalue %dx.types.CBufRet.f32 %2439, 1
  %2442 = extractvalue %dx.types.CBufRet.f32 %2439, 2
  %2443 = extractvalue %dx.types.CBufRet.f32 %2439, 3
  %2444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %2429, float %2433, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2445 = extractvalue %dx.types.ResRet.f32 %2444, 0
  %2446 = extractvalue %dx.types.ResRet.f32 %2444, 1
  %2447 = extractvalue %dx.types.ResRet.f32 %2444, 2
  %2448 = extractvalue %dx.types.ResRet.f32 %2444, 3
  %2449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %2429, float %2433, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2450 = extractvalue %dx.types.ResRet.f32 %2449, 0
  %2451 = extractvalue %dx.types.ResRet.f32 %2449, 1
  %2452 = extractvalue %dx.types.ResRet.f32 %2449, 2
  %2453 = extractvalue %dx.types.ResRet.f32 %2449, 3
  %2454 = fmul fast float %2445, %2422
  %2455 = fmul fast float %2450, %2422
  %2456 = fmul fast float %2452, %2422
  %2457 = fmul fast float %2448, %2422
  %2458 = fadd fast float %2454, %2435
  %2459 = fadd fast float %2455, %2436
  %2460 = fadd fast float %2456, %2437
  %2461 = fadd fast float %2457, %2438
  %2462 = fmul fast float %2446, %2422
  %2463 = fmul fast float %2451, %2422
  %2464 = fadd fast float %2462, %2440
  %2465 = fadd fast float %2463, %2441
  %2466 = fmul fast float %2447, %2422
  %2467 = fmul fast float %2453, %2422
  %2468 = fadd fast float %2466, %2442
  %2469 = fadd fast float %2467, %2443
  %2470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %2429, float %2433, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2471 = extractvalue %dx.types.ResRet.f32 %2470, 0
  %2472 = extractvalue %dx.types.ResRet.f32 %2470, 1
  %2473 = extractvalue %dx.types.ResRet.f32 %2470, 2
  %2474 = extractvalue %dx.types.ResRet.f32 %2470, 3
  %2475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %2429, float %2433, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2476 = extractvalue %dx.types.ResRet.f32 %2475, 0
  %2477 = extractvalue %dx.types.ResRet.f32 %2475, 1
  %2478 = extractvalue %dx.types.ResRet.f32 %2475, 2
  %2479 = extractvalue %dx.types.ResRet.f32 %2475, 3
  %2480 = fmul fast float %2471, %2423
  %2481 = fmul fast float %2476, %2423
  %2482 = fmul fast float %2478, %2423
  %2483 = fmul fast float %2474, %2423
  %2484 = fadd fast float %2458, %2480
  %2485 = fadd fast float %2459, %2481
  %2486 = fadd fast float %2460, %2482
  %2487 = fadd fast float %2461, %2483
  %2488 = fmul fast float %2472, %2423
  %2489 = fmul fast float %2477, %2423
  %2490 = fadd fast float %2464, %2488
  %2491 = fadd fast float %2465, %2489
  %2492 = fmul fast float %2473, %2423
  %2493 = fmul fast float %2479, %2423
  %2494 = fadd fast float %2468, %2492
  %2495 = fadd fast float %2469, %2493
  %2496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %2429, float %2433, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2497 = extractvalue %dx.types.ResRet.f32 %2496, 0
  %2498 = extractvalue %dx.types.ResRet.f32 %2496, 1
  %2499 = extractvalue %dx.types.ResRet.f32 %2496, 2
  %2500 = extractvalue %dx.types.ResRet.f32 %2496, 3
  %2501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %58, float %2429, float %2433, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2502 = extractvalue %dx.types.ResRet.f32 %2501, 0
  %2503 = extractvalue %dx.types.ResRet.f32 %2501, 1
  %2504 = extractvalue %dx.types.ResRet.f32 %2501, 2
  %2505 = extractvalue %dx.types.ResRet.f32 %2501, 3
  %2506 = fmul fast float %2497, %2424
  %2507 = fmul fast float %2502, %2424
  %2508 = fmul fast float %2504, %2424
  %2509 = fmul fast float %2500, %2424
  %2510 = fadd fast float %2484, %2506
  %2511 = fadd fast float %2485, %2507
  %2512 = fadd fast float %2486, %2508
  %2513 = fadd fast float %2487, %2509
  %2514 = fmul fast float %2498, %2424
  %2515 = fmul fast float %2503, %2424
  %2516 = fadd fast float %2490, %2514
  %2517 = fadd fast float %2491, %2515
  %2518 = fmul fast float %2499, %2424
  %2519 = fmul fast float %2505, %2424
  %2520 = fadd fast float %2494, %2518
  %2521 = fadd fast float %2495, %2519
  %2522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2523 = extractvalue %dx.types.CBufRet.f32 %2522, 0
  %2524 = fsub fast float %2358, %2523
  %2525 = fsub fast float %2366, %2358
  %2526 = call float @dx.op.binary.f32(i32 35, float %2525, float %2524)  ; FMax(a,b)
  %2527 = extractvalue %dx.types.CBufRet.f32 %2522, 1
  %2528 = fsub fast float %2359, %2527
  %2529 = fsub fast float %2367, %2359
  %2530 = call float @dx.op.binary.f32(i32 35, float %2529, float %2528)  ; FMax(a,b)
  %2531 = call float @dx.op.binary.f32(i32 35, float %2526, float %2530)  ; FMax(a,b)
  %2532 = extractvalue %dx.types.CBufRet.f32 %2370, 3
  %2533 = fmul fast float %2532, %2531
  %2534 = call float @dx.op.unary.f32(i32 7, float %2533)  ; Saturate(value)
  %2535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2536 = extractvalue %dx.types.CBufRet.f32 %2535, 0
  %2537 = extractvalue %dx.types.CBufRet.f32 %2535, 1
  %2538 = extractvalue %dx.types.CBufRet.f32 %2535, 2
  %2539 = extractvalue %dx.types.CBufRet.f32 %2535, 3
  %2540 = fsub fast float %2536, %2510
  %2541 = fsub fast float %2537, %2511
  %2542 = fsub fast float %2538, %2512
  %2543 = fsub fast float %2539, %2513
  %2544 = fmul fast float %2540, %2534
  %2545 = fmul fast float %2541, %2534
  %2546 = fmul fast float %2542, %2534
  %2547 = fmul fast float %2543, %2534
  %2548 = fadd fast float %2544, %2510
  %2549 = fadd fast float %2545, %2511
  %2550 = fadd fast float %2546, %2512
  %2551 = fadd fast float %2547, %2513
  %2552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2553 = extractvalue %dx.types.CBufRet.f32 %2552, 0
  %2554 = extractvalue %dx.types.CBufRet.f32 %2552, 1
  %2555 = fsub fast float %2553, %2516
  %2556 = fsub fast float %2554, %2517
  %2557 = fmul fast float %2555, %2534
  %2558 = fmul fast float %2556, %2534
  %2559 = fadd fast float %2557, %2516
  %2560 = fadd fast float %2558, %2517
  %2561 = extractvalue %dx.types.CBufRet.f32 %2552, 2
  %2562 = extractvalue %dx.types.CBufRet.f32 %2552, 3
  %2563 = fsub fast float %2561, %2520
  %2564 = fsub fast float %2562, %2521
  %2565 = fmul fast float %2563, %2534
  %2566 = fmul fast float %2564, %2534
  %2567 = fadd fast float %2565, %2520
  %2568 = fadd fast float %2566, %2521
  %2569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2570 = extractvalue %dx.types.CBufRet.f32 %2569, 0
  %2571 = fmul fast float %2570, %2548
  %2572 = fmul fast float %2570, %2549
  %2573 = fmul fast float %2570, %2550
  %2574 = fmul fast float %2570, %2551
  %2575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2576 = extractvalue %dx.types.CBufRet.f32 %2575, 0
  %2577 = fmul fast float %2576, %2559
  %2578 = fmul fast float %2576, %2560
  %2579 = fadd fast float %2577, %2571
  %2580 = fadd fast float %2578, %2573
  %2581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2582 = extractvalue %dx.types.CBufRet.f32 %2581, 0
  %2583 = fmul fast float %2582, %2567
  %2584 = fmul fast float %2582, %2568
  %2585 = fadd fast float %2579, %2583
  %2586 = fadd fast float %2580, %2584
  %2587 = extractvalue %dx.types.CBufRet.f32 %2569, 1
  %2588 = fmul fast float %2587, %2548
  %2589 = fmul fast float %2587, %2549
  %2590 = fmul fast float %2587, %2550
  %2591 = fmul fast float %2587, %2551
  %2592 = extractvalue %dx.types.CBufRet.f32 %2575, 1
  %2593 = fmul fast float %2592, %2559
  %2594 = fmul fast float %2592, %2560
  %2595 = fadd fast float %2593, %2588
  %2596 = fadd fast float %2594, %2590
  %2597 = extractvalue %dx.types.CBufRet.f32 %2581, 1
  %2598 = fmul fast float %2597, %2567
  %2599 = fmul fast float %2597, %2568
  %2600 = fadd fast float %2595, %2598
  %2601 = fadd fast float %2596, %2599
  %2602 = extractvalue %dx.types.CBufRet.f32 %2569, 2
  %2603 = fmul fast float %2602, %2548
  %2604 = fmul fast float %2602, %2549
  %2605 = fmul fast float %2602, %2550
  %2606 = fmul fast float %2602, %2551
  %2607 = extractvalue %dx.types.CBufRet.f32 %2575, 2
  %2608 = fmul fast float %2607, %2559
  %2609 = fmul fast float %2607, %2560
  %2610 = fadd fast float %2608, %2603
  %2611 = fadd fast float %2609, %2605
  %2612 = extractvalue %dx.types.CBufRet.f32 %2581, 2
  %2613 = fmul fast float %2612, %2567
  %2614 = fmul fast float %2612, %2568
  %2615 = fadd fast float %2610, %2613
  %2616 = fadd fast float %2611, %2614
  %2617 = fmul fast float %2604, %2604
  %2618 = fmul fast float %2616, %2616
  %2619 = fmul fast float %2606, %2606
  %2620 = fadd fast float %2619, %2617
  %2621 = fadd fast float %2620, %2618
  %2622 = call float @dx.op.unary.f32(i32 24, float %2621)  ; Sqrt(value)
  %2623 = fcmp fast ugt float %2622, 0.000000e+00
  br i1 %2623, label %2624, label %2639

; <label>:2624                                    ; preds = %2334
  %2625 = fsub fast float -0.000000e+00, %2606
  %2626 = fdiv fast float %2625, %2622
  %2627 = fsub fast float -0.000000e+00, %2604
  %2628 = fdiv fast float %2627, %2622
  %2629 = fdiv fast float %2616, %2622
  %2630 = fmul fast float %2615, 0x3FE279A760000000
  %2631 = fmul fast float %2628, %2604
  %2632 = fmul fast float %2629, %2616
  %2633 = fmul fast float %2626, %2606
  %2634 = fadd fast float %2631, %2633
  %2635 = fsub fast float %2634, %2632
  %2636 = call float @dx.op.unary.f32(i32 6, float %2635)  ; FAbs(value)
  %2637 = fadd fast float %2636, 0x3DDB7CDFE0000000
  %2638 = fdiv fast float %2630, %2637
  br label %2639

; <label>:2639                                    ; preds = %2624, %2334
  %2640 = phi float [ %2638, %2624 ], [ 1.000000e+00, %2334 ]
  %2641 = fmul fast float %2589, %2589
  %2642 = fmul fast float %2601, %2601
  %2643 = fmul fast float %2591, %2591
  %2644 = fadd fast float %2643, %2641
  %2645 = fadd fast float %2644, %2642
  %2646 = call float @dx.op.unary.f32(i32 24, float %2645)  ; Sqrt(value)
  %2647 = fcmp fast ugt float %2646, 0.000000e+00
  br i1 %2647, label %2648, label %2663

; <label>:2648                                    ; preds = %2639
  %2649 = fsub fast float -0.000000e+00, %2591
  %2650 = fdiv fast float %2649, %2646
  %2651 = fsub fast float -0.000000e+00, %2589
  %2652 = fdiv fast float %2651, %2646
  %2653 = fdiv fast float %2601, %2646
  %2654 = fmul fast float %2600, 0x3FE279A760000000
  %2655 = fmul fast float %2652, %2589
  %2656 = fmul fast float %2653, %2601
  %2657 = fmul fast float %2650, %2591
  %2658 = fadd fast float %2655, %2657
  %2659 = fsub fast float %2658, %2656
  %2660 = call float @dx.op.unary.f32(i32 6, float %2659)  ; FAbs(value)
  %2661 = fadd fast float %2660, 0x3DDB7CDFE0000000
  %2662 = fdiv fast float %2654, %2661
  br label %2663

; <label>:2663                                    ; preds = %2648, %2639
  %2664 = phi float [ %2662, %2648 ], [ 1.000000e+00, %2639 ]
  %2665 = call float @dx.op.binary.f32(i32 36, float %2664, float %2640)  ; FMin(a,b)
  %2666 = fmul fast float %2572, %2572
  %2667 = fmul fast float %2586, %2586
  %2668 = fmul fast float %2574, %2574
  %2669 = fadd fast float %2668, %2666
  %2670 = fadd fast float %2669, %2667
  %2671 = call float @dx.op.unary.f32(i32 24, float %2670)  ; Sqrt(value)
  %2672 = fcmp fast ugt float %2671, 0.000000e+00
  br i1 %2672, label %2673, label %2688

; <label>:2673                                    ; preds = %2663
  %2674 = fsub fast float -0.000000e+00, %2574
  %2675 = fdiv fast float %2674, %2671
  %2676 = fsub fast float -0.000000e+00, %2572
  %2677 = fdiv fast float %2676, %2671
  %2678 = fdiv fast float %2586, %2671
  %2679 = fmul fast float %2585, 0x3FE279A760000000
  %2680 = fmul fast float %2677, %2572
  %2681 = fmul fast float %2678, %2586
  %2682 = fmul fast float %2675, %2574
  %2683 = fadd fast float %2680, %2682
  %2684 = fsub fast float %2683, %2681
  %2685 = call float @dx.op.unary.f32(i32 6, float %2684)  ; FAbs(value)
  %2686 = fadd fast float %2685, 0x3DDB7CDFE0000000
  %2687 = fdiv fast float %2679, %2686
  br label %2688

; <label>:2688                                    ; preds = %2673, %2663
  %2689 = phi float [ %2687, %2673 ], [ 1.000000e+00, %2663 ]
  %2690 = call float @dx.op.binary.f32(i32 36, float %2689, float %2665)  ; FMin(a,b)
  %2691 = call float @dx.op.unary.f32(i32 7, float %2690)  ; Saturate(value)
  %2692 = fcmp fast olt float %2691, 1.000000e+00
  br i1 %2692, label %2693, label %2703

; <label>:2693                                    ; preds = %2688
  %2694 = fmul fast float %2691, %2572
  %2695 = fmul fast float %2691, %2586
  %2696 = fmul fast float %2691, %2574
  %2697 = fmul fast float %2691, %2589
  %2698 = fmul fast float %2691, %2601
  %2699 = fmul fast float %2691, %2591
  %2700 = fmul fast float %2691, %2604
  %2701 = fmul fast float %2691, %2616
  %2702 = fmul fast float %2691, %2606
  br label %2703

; <label>:2703                                    ; preds = %2693, %2688
  %2704 = phi float [ %2700, %2693 ], [ %2604, %2688 ]
  %2705 = phi float [ %2701, %2693 ], [ %2616, %2688 ]
  %2706 = phi float [ %2702, %2693 ], [ %2606, %2688 ]
  %2707 = phi float [ %2697, %2693 ], [ %2589, %2688 ]
  %2708 = phi float [ %2698, %2693 ], [ %2601, %2688 ]
  %2709 = phi float [ %2699, %2693 ], [ %2591, %2688 ]
  %2710 = phi float [ %2694, %2693 ], [ %2572, %2688 ]
  %2711 = phi float [ %2695, %2693 ], [ %2586, %2688 ]
  %2712 = phi float [ %2696, %2693 ], [ %2574, %2688 ]
  %2713 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2585)  ; FMax(a,b)
  %2714 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2600)  ; FMax(a,b)
  %2715 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2615)  ; FMax(a,b)
  %2716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2717 = extractvalue %dx.types.CBufRet.f32 %2716, 0
  %2718 = fcmp fast ogt float %2717, 0.000000e+00
  %2719 = fcmp fast oge float %2373, 0.000000e+00
  %2720 = and i1 %2719, %2718
  %2721 = fcmp fast ole float %2373, 1.000000e+00
  %2722 = and i1 %2721, %2720
  %2723 = fcmp fast oge float %2374, 0.000000e+00
  %2724 = and i1 %2723, %2722
  %2725 = fcmp fast ole float %2374, 1.000000e+00
  %2726 = and i1 %2725, %2724
  br i1 %2726, label %2727, label %2867, !dx.controlflow.hints !118

; <label>:2727                                    ; preds = %2703
  %2728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2729 = extractvalue %dx.types.CBufRet.f32 %2728, 2
  %2730 = extractvalue %dx.types.CBufRet.f32 %2728, 3
  %2731 = fmul fast float %2729, %2373
  %2732 = fmul fast float %2730, %2374
  %2733 = call float @dx.op.unary.f32(i32 27, float %2731)  ; Round_ni(value)
  %2734 = call float @dx.op.unary.f32(i32 27, float %2732)  ; Round_ni(value)
  %2735 = fptosi float %2733 to i32
  %2736 = fptosi float %2734 to i32
  %2737 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %39, i32 0, i32 %2735, i32 %2736, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = and i32 %2738, 65535
  %2740 = lshr i32 %2738, 16
  %2741 = icmp eq i32 %2739, 65535
  br i1 %2741, label %2778, label %2742

; <label>:2742                                    ; preds = %2727
  %2743 = extractvalue %dx.types.CBufRet.f32 %2716, 1
  %2744 = extractvalue %dx.types.CBufRet.f32 %2728, 0
  %2745 = extractvalue %dx.types.CBufRet.f32 %2728, 1
  %2746 = fmul fast float %2744, %2373
  %2747 = fmul fast float %2745, %2374
  %2748 = fmul fast float %2746, 1.250000e-01
  %2749 = fmul fast float %2747, 1.250000e-01
  %2750 = call float @dx.op.unary.f32(i32 27, float %2748)  ; Round_ni(value)
  %2751 = call float @dx.op.unary.f32(i32 27, float %2749)  ; Round_ni(value)
  %2752 = fmul fast float %2750, 8.000000e+00
  %2753 = fmul fast float %2751, 8.000000e+00
  %2754 = and i32 %2738, 255
  %2755 = lshr i32 %2738, 8
  %2756 = and i32 %2755, 255
  %2757 = mul nuw nsw i32 %2754, 9
  %2758 = uitofp i32 %2757 to float
  %2759 = mul nuw nsw i32 %2756, 9
  %2760 = uitofp i32 %2759 to float
  %2761 = fadd fast float %2758, 5.000000e-01
  %2762 = fadd fast float %2761, %2746
  %2763 = fsub fast float %2762, %2752
  %2764 = fadd fast float %2760, 5.000000e-01
  %2765 = fadd fast float %2764, %2747
  %2766 = fsub fast float %2765, %2753
  %2767 = fdiv fast float %2763, %2717
  %2768 = fdiv fast float %2766, %2743
  %2769 = fmul fast float %2401, 4.375000e-01
  %2770 = fadd fast float %2769, 3.125000e-02
  %2771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %58, float %2767, float %2768, float %2770, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2772 = extractvalue %dx.types.ResRet.f32 %2771, 0
  %2773 = extractvalue %dx.types.ResRet.f32 %2771, 1
  %2774 = extractvalue %dx.types.ResRet.f32 %2771, 2
  %2775 = fadd fast float %2772, %2713
  %2776 = fadd fast float %2773, %2714
  %2777 = fadd fast float %2774, %2715
  br label %2778

; <label>:2778                                    ; preds = %2742, %2727
  %2779 = phi float [ %2777, %2742 ], [ %2715, %2727 ]
  %2780 = phi float [ %2776, %2742 ], [ %2714, %2727 ]
  %2781 = phi float [ %2775, %2742 ], [ %2713, %2727 ]
  %2782 = icmp eq i32 %2740, 65535
  br i1 %2782, label %2867, label %2783

; <label>:2783                                    ; preds = %2778
  %2784 = extractvalue %dx.types.CBufRet.f32 %2716, 1
  %2785 = extractvalue %dx.types.CBufRet.f32 %2728, 0
  %2786 = extractvalue %dx.types.CBufRet.f32 %2728, 1
  %2787 = fmul fast float %2785, %2373
  %2788 = fmul fast float %2786, %2374
  %2789 = fmul fast float %2787, 1.250000e-01
  %2790 = fmul fast float %2788, 1.250000e-01
  %2791 = call float @dx.op.unary.f32(i32 27, float %2789)  ; Round_ni(value)
  %2792 = call float @dx.op.unary.f32(i32 27, float %2790)  ; Round_ni(value)
  %2793 = fmul fast float %2791, 8.000000e+00
  %2794 = fmul fast float %2792, 8.000000e+00
  %2795 = fsub fast float %2787, %2793
  %2796 = fsub fast float %2788, %2794
  %2797 = fadd fast float %2795, 5.000000e-01
  %2798 = fadd fast float %2796, 5.000000e-01
  %2799 = and i32 %2740, 255
  %2800 = lshr i32 %2738, 24
  %2801 = mul nuw nsw i32 %2799, 9
  %2802 = uitofp i32 %2801 to float
  %2803 = mul nuw nsw i32 %2800, 9
  %2804 = uitofp i32 %2803 to float
  %2805 = fadd fast float %2797, %2802
  %2806 = fadd fast float %2798, %2804
  %2807 = fdiv fast float %2805, %2717
  %2808 = fdiv fast float %2806, %2784
  %2809 = fmul fast float %2401, 4.375000e-01
  %2810 = fadd fast float %2809, 3.125000e-02
  %2811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %58, float %2807, float %2808, float %2810, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2812 = extractvalue %dx.types.ResRet.f32 %2811, 0
  %2813 = extractvalue %dx.types.ResRet.f32 %2811, 1
  %2814 = extractvalue %dx.types.ResRet.f32 %2811, 2
  %2815 = fadd fast float %2809, 5.312500e-01
  %2816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %58, float %2807, float %2808, float %2815, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2817 = extractvalue %dx.types.ResRet.f32 %2816, 0
  %2818 = extractvalue %dx.types.ResRet.f32 %2816, 1
  %2819 = extractvalue %dx.types.ResRet.f32 %2816, 2
  %2820 = fmul fast float %2817, 2.000000e+00
  %2821 = fmul fast float %2818, 2.000000e+00
  %2822 = fmul fast float %2819, 2.000000e+00
  %2823 = fadd fast float %2820, -1.000000e+00
  %2824 = fadd fast float %2821, -1.000000e+00
  %2825 = fadd fast float %2822, -1.000000e+00
  %2826 = fmul fast float %2823, %2823
  %2827 = fmul fast float %2824, %2824
  %2828 = fadd fast float %2826, %2827
  %2829 = fmul fast float %2825, %2825
  %2830 = fadd fast float %2828, %2829
  %2831 = call float @dx.op.unary.f32(i32 24, float %2830)  ; Sqrt(value)
  %2832 = fcmp fast ogt float %2831, 0.000000e+00
  br i1 %2832, label %2833, label %2837

; <label>:2833                                    ; preds = %2783
  %2834 = fdiv fast float %2823, %2831
  %2835 = fdiv fast float %2824, %2831
  %2836 = fdiv fast float %2825, %2831
  br label %2837

; <label>:2837                                    ; preds = %2833, %2783
  %2838 = phi float [ %2834, %2833 ], [ 0.000000e+00, %2783 ]
  %2839 = phi float [ %2835, %2833 ], [ 0.000000e+00, %2783 ]
  %2840 = phi float [ %2836, %2833 ], [ 0.000000e+00, %2783 ]
  %2841 = fmul fast float %144, %144
  %2842 = fmul fast float %145, %145
  %2843 = fadd fast float %2841, %2842
  %2844 = call float @dx.op.unary.f32(i32 24, float %2843)  ; Sqrt(value)
  %2845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2846 = extractvalue %dx.types.CBufRet.f32 %2845, 0
  %2847 = extractvalue %dx.types.CBufRet.f32 %2845, 1
  %2848 = fsub fast float %2844, %2846
  %2849 = fdiv fast float %2848, %2847
  %2850 = call float @dx.op.unary.f32(i32 7, float %2849)  ; Saturate(value)
  %2851 = fmul fast float %2850, 2.000000e+00
  %2852 = fsub fast float 3.000000e+00, %2851
  %2853 = fmul fast float %2850, %2850
  %2854 = fmul fast float %2853, %2852
  %2855 = call float @dx.op.dot3.f32(i32 55, float %2838, float %2839, float %2840, float %2200, float %2201, float %2202)  ; Dot3(ax,ay,az,bx,by,bz)
  %2856 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2855)  ; FMax(a,b)
  %2857 = fmul fast float %2856, 0x400C5BF8A0000000
  %2858 = fmul fast float %2854, %2812
  %2859 = fmul fast float %2858, %2857
  %2860 = fadd fast float %2859, %2781
  %2861 = fmul fast float %2854, %2813
  %2862 = fmul fast float %2861, %2857
  %2863 = fadd fast float %2862, %2780
  %2864 = fmul fast float %2854, %2814
  %2865 = fmul fast float %2864, %2857
  %2866 = fadd fast float %2865, %2779
  br label %2867

; <label>:2867                                    ; preds = %2837, %2778, %2703
  %2868 = phi float [ %2866, %2837 ], [ %2779, %2778 ], [ %2715, %2703 ]
  %2869 = phi float [ %2863, %2837 ], [ %2780, %2778 ], [ %2714, %2703 ]
  %2870 = phi float [ %2860, %2837 ], [ %2781, %2778 ], [ %2713, %2703 ]
  %2871 = fcmp fast ogt float %2360, %2397
  %2872 = and i1 %2719, %2871
  %2873 = and i1 %2721, %2872
  %2874 = and i1 %2723, %2873
  %2875 = and i1 %2725, %2874
  br i1 %2875, label %2876, label %2933, !dx.controlflow.hints !119

; <label>:2876                                    ; preds = %2867
  %2877 = fmul fast float %2399, 0x3FC24924A0000000
  %2878 = fsub fast float %2360, %2397
  %2879 = fdiv fast float %2878, %2877
  %2880 = call float @dx.op.unary.f32(i32 7, float %2879)  ; Saturate(value)
  %2881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2882 = extractvalue %dx.types.CBufRet.f32 %2881, 0
  %2883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2884 = extractvalue %dx.types.CBufRet.f32 %2883, 0
  %2885 = extractvalue %dx.types.CBufRet.f32 %2883, 1
  %2886 = extractvalue %dx.types.CBufRet.f32 %2883, 2
  %2887 = fsub fast float %2882, %2870
  %2888 = fsub fast float %2884, %2710
  %2889 = fsub fast float %2885, %2711
  %2890 = fsub fast float %2886, %2712
  %2891 = fmul fast float %2887, %2880
  %2892 = fmul fast float %2888, %2880
  %2893 = fmul fast float %2889, %2880
  %2894 = fmul fast float %2890, %2880
  %2895 = fadd fast float %2891, %2870
  %2896 = fadd fast float %2892, %2710
  %2897 = fadd fast float %2893, %2711
  %2898 = fadd fast float %2894, %2712
  %2899 = extractvalue %dx.types.CBufRet.f32 %2881, 1
  %2900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2901 = extractvalue %dx.types.CBufRet.f32 %2900, 0
  %2902 = extractvalue %dx.types.CBufRet.f32 %2900, 1
  %2903 = extractvalue %dx.types.CBufRet.f32 %2900, 2
  %2904 = fsub fast float %2899, %2869
  %2905 = fsub fast float %2901, %2707
  %2906 = fsub fast float %2902, %2708
  %2907 = fsub fast float %2903, %2709
  %2908 = fmul fast float %2904, %2880
  %2909 = fmul fast float %2905, %2880
  %2910 = fmul fast float %2906, %2880
  %2911 = fmul fast float %2907, %2880
  %2912 = fadd fast float %2908, %2869
  %2913 = fadd fast float %2909, %2707
  %2914 = fadd fast float %2910, %2708
  %2915 = fadd fast float %2911, %2709
  %2916 = extractvalue %dx.types.CBufRet.f32 %2881, 2
  %2917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2918 = extractvalue %dx.types.CBufRet.f32 %2917, 0
  %2919 = extractvalue %dx.types.CBufRet.f32 %2917, 1
  %2920 = extractvalue %dx.types.CBufRet.f32 %2917, 2
  %2921 = fsub fast float %2916, %2868
  %2922 = fsub fast float %2918, %2704
  %2923 = fsub fast float %2919, %2705
  %2924 = fsub fast float %2920, %2706
  %2925 = fmul fast float %2921, %2880
  %2926 = fmul fast float %2922, %2880
  %2927 = fmul fast float %2923, %2880
  %2928 = fmul fast float %2924, %2880
  %2929 = fadd fast float %2925, %2868
  %2930 = fadd fast float %2926, %2704
  %2931 = fadd fast float %2927, %2705
  %2932 = fadd fast float %2928, %2706
  br label %2933

; <label>:2933                                    ; preds = %2876, %2867
  %2934 = phi float [ %2929, %2876 ], [ %2868, %2867 ]
  %2935 = phi float [ %2930, %2876 ], [ %2704, %2867 ]
  %2936 = phi float [ %2931, %2876 ], [ %2705, %2867 ]
  %2937 = phi float [ %2932, %2876 ], [ %2706, %2867 ]
  %2938 = phi float [ %2912, %2876 ], [ %2869, %2867 ]
  %2939 = phi float [ %2913, %2876 ], [ %2707, %2867 ]
  %2940 = phi float [ %2914, %2876 ], [ %2708, %2867 ]
  %2941 = phi float [ %2915, %2876 ], [ %2709, %2867 ]
  %2942 = phi float [ %2895, %2876 ], [ %2870, %2867 ]
  %2943 = phi float [ %2896, %2876 ], [ %2710, %2867 ]
  %2944 = phi float [ %2897, %2876 ], [ %2711, %2867 ]
  %2945 = phi float [ %2898, %2876 ], [ %2712, %2867 ]
  %2946 = extractvalue %dx.types.CBufRet.f32 %2522, 3
  %2947 = fmul fast float %2946, %2942
  %2948 = fmul fast float %2946, %2938
  %2949 = fmul fast float %2946, %2934
  %2950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2951 = extractvalue %dx.types.CBufRet.f32 %2950, 3
  %2952 = fmul fast float %2947, %2951
  %2953 = fmul fast float %2948, %2951
  %2954 = fmul fast float %2949, %2951
  %2955 = call float @dx.op.dot3.f32(i32 55, float %2952, float %2953, float %2954, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2956 = fmul fast float %2955, 0x3FD20DD760000000
  %2957 = fmul fast float %2943, 1.500000e+00
  %2958 = fmul fast float %2957, %2946
  %2959 = fmul fast float %2958, %2951
  %2960 = fmul fast float %2944, 1.500000e+00
  %2961 = fmul fast float %2960, %2946
  %2962 = fmul fast float %2961, %2951
  %2963 = fmul fast float %2945, 1.500000e+00
  %2964 = fmul fast float %2963, %2946
  %2965 = fmul fast float %2964, %2951
  %2966 = fmul fast float %2939, 1.500000e+00
  %2967 = fmul fast float %2966, %2946
  %2968 = fmul fast float %2967, %2951
  %2969 = fmul fast float %2940, 1.500000e+00
  %2970 = fmul fast float %2969, %2946
  %2971 = fmul fast float %2970, %2951
  %2972 = fmul fast float %2941, 1.500000e+00
  %2973 = fmul fast float %2972, %2946
  %2974 = fmul fast float %2973, %2951
  %2975 = fmul fast float %2935, 1.500000e+00
  %2976 = fmul fast float %2975, %2946
  %2977 = fmul fast float %2976, %2951
  %2978 = fmul fast float %2936, 1.500000e+00
  %2979 = fmul fast float %2978, %2946
  %2980 = fmul fast float %2979, %2951
  %2981 = fmul fast float %2937, 1.500000e+00
  %2982 = fmul fast float %2981, %2946
  %2983 = fmul fast float %2982, %2951
  %2984 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2952)  ; FMax(a,b)
  %2985 = call float @dx.op.dot3.f32(i32 55, float %2959, float %2962, float %2965, float %2959, float %2962, float %2965)  ; Dot3(ax,ay,az,bx,by,bz)
  %2986 = fcmp fast oeq float %2985, 0.000000e+00
  %2987 = fcmp fast oeq float %2984, 0.000000e+00
  %2988 = or i1 %2987, %2986
  br i1 %2988, label %3018, label %2989

; <label>:2989                                    ; preds = %2933
  %2990 = fsub fast float -0.000000e+00, %2965
  %2991 = fsub fast float -0.000000e+00, %2959
  %2992 = call float @dx.op.unary.f32(i32 24, float %2985)  ; Sqrt(value)
  %2993 = fdiv fast float %2992, %2984
  %2994 = fcmp fast ogt float %2993, 0x3FFB6F8900000000
  %2995 = select i1 %2994, float 0x3FFB6F8900000000, float %2993
  %2996 = fmul fast float %2995, 0x3FE8A23460000000
  %2997 = call float @dx.op.unary.f32(i32 7, float %2996)  ; Saturate(value)
  %2998 = call float @dx.op.binary.f32(i32 35, float %2995, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2999 = fmul fast float %2997, %2984
  %3000 = fmul fast float %2998, 0x3FF279A740000000
  %3001 = fadd fast float %3000, -1.000000e+00
  %3002 = call float @dx.op.dot3.f32(i32 55, float %2990, float %2991, float %2962, float %2990, float %2991, float %2962)  ; Dot3(ax,ay,az,bx,by,bz)
  %3003 = call float @dx.op.unary.f32(i32 25, float %3002)  ; Rsqrt(value)
  %3004 = fmul fast float %3003, %2990
  %3005 = fmul fast float %3003, %2991
  %3006 = fmul fast float %3003, %2962
  %3007 = fmul fast float %3001, %3001
  %3008 = fsub fast float 1.000000e+00, %3007
  %3009 = fmul fast float %2998, 0x40005F8BE0000000
  %3010 = fsub fast float 0x400C5BF8A0000000, %3009
  %3011 = fdiv fast float %2999, %3010
  %3012 = fmul fast float %3011, 0x3FEE31C3C0000000
  %3013 = fmul fast float %3012, %3008
  %3014 = fmul fast float %2998, 0x3FDACB7480000000
  %3015 = fadd fast float %3014, 0xBFD7347680000000
  %3016 = fmul fast float %3015, %3011
  %3017 = fmul fast float %3016, %3008
  br label %3018

; <label>:3018                                    ; preds = %2989, %2933
  %3019 = phi float [ %3004, %2989 ], [ 0.000000e+00, %2933 ]
  %3020 = phi float [ %3005, %2989 ], [ 0.000000e+00, %2933 ]
  %3021 = phi float [ %3006, %2989 ], [ 0.000000e+00, %2933 ]
  %3022 = phi float [ %3013, %2989 ], [ 0.000000e+00, %2933 ]
  %3023 = phi float [ %3017, %2989 ], [ 0.000000e+00, %2933 ]
  %3024 = call float @dx.op.dot3.f32(i32 55, float %3019, float %3020, float %3021, float %2200, float %2201, float %2202)  ; Dot3(ax,ay,az,bx,by,bz)
  %3025 = fmul fast float %3024, %3024
  %3026 = fmul fast float %3025, 0x3FEE471020000000
  %3027 = fadd fast float %3026, 0xBFD42F6020000000
  %3028 = fmul fast float %2984, 0x3FD20DD760000000
  %3029 = fmul fast float %3027, %3023
  %3030 = fmul fast float %3022, 0x3FDF454380000000
  %3031 = fmul fast float %3030, %3024
  %3032 = fadd fast float %3031, %3028
  %3033 = fadd fast float %3032, %3029
  %3034 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2953)  ; FMax(a,b)
  %3035 = call float @dx.op.dot3.f32(i32 55, float %2968, float %2971, float %2974, float %2968, float %2971, float %2974)  ; Dot3(ax,ay,az,bx,by,bz)
  %3036 = fcmp fast oeq float %3035, 0.000000e+00
  %3037 = fcmp fast oeq float %3034, 0.000000e+00
  %3038 = or i1 %3037, %3036
  br i1 %3038, label %3068, label %3039

; <label>:3039                                    ; preds = %3018
  %3040 = fsub fast float -0.000000e+00, %2974
  %3041 = fsub fast float -0.000000e+00, %2968
  %3042 = call float @dx.op.unary.f32(i32 24, float %3035)  ; Sqrt(value)
  %3043 = fdiv fast float %3042, %3034
  %3044 = fcmp fast ogt float %3043, 0x3FFB6F8900000000
  %3045 = select i1 %3044, float 0x3FFB6F8900000000, float %3043
  %3046 = fmul fast float %3045, 0x3FE8A23460000000
  %3047 = call float @dx.op.unary.f32(i32 7, float %3046)  ; Saturate(value)
  %3048 = call float @dx.op.binary.f32(i32 35, float %3045, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3049 = fmul fast float %3047, %3034
  %3050 = fmul fast float %3048, 0x3FF279A740000000
  %3051 = fadd fast float %3050, -1.000000e+00
  %3052 = call float @dx.op.dot3.f32(i32 55, float %3040, float %3041, float %2971, float %3040, float %3041, float %2971)  ; Dot3(ax,ay,az,bx,by,bz)
  %3053 = call float @dx.op.unary.f32(i32 25, float %3052)  ; Rsqrt(value)
  %3054 = fmul fast float %3053, %3040
  %3055 = fmul fast float %3053, %3041
  %3056 = fmul fast float %3053, %2971
  %3057 = fmul fast float %3051, %3051
  %3058 = fsub fast float 1.000000e+00, %3057
  %3059 = fmul fast float %3048, 0x40005F8BE0000000
  %3060 = fsub fast float 0x400C5BF8A0000000, %3059
  %3061 = fdiv fast float %3049, %3060
  %3062 = fmul fast float %3061, 0x3FEE31C3C0000000
  %3063 = fmul fast float %3062, %3058
  %3064 = fmul fast float %3048, 0x3FDACB7480000000
  %3065 = fadd fast float %3064, 0xBFD7347680000000
  %3066 = fmul fast float %3065, %3061
  %3067 = fmul fast float %3066, %3058
  br label %3068

; <label>:3068                                    ; preds = %3039, %3018
  %3069 = phi float [ %3054, %3039 ], [ 0.000000e+00, %3018 ]
  %3070 = phi float [ %3055, %3039 ], [ 0.000000e+00, %3018 ]
  %3071 = phi float [ %3056, %3039 ], [ 0.000000e+00, %3018 ]
  %3072 = phi float [ %3063, %3039 ], [ 0.000000e+00, %3018 ]
  %3073 = phi float [ %3067, %3039 ], [ 0.000000e+00, %3018 ]
  %3074 = call float @dx.op.dot3.f32(i32 55, float %3069, float %3070, float %3071, float %2200, float %2201, float %2202)  ; Dot3(ax,ay,az,bx,by,bz)
  %3075 = fmul fast float %3074, %3074
  %3076 = fmul fast float %3075, 0x3FEE471020000000
  %3077 = fadd fast float %3076, 0xBFD42F6020000000
  %3078 = fmul fast float %3034, 0x3FD20DD760000000
  %3079 = fmul fast float %3077, %3073
  %3080 = fmul fast float %3072, 0x3FDF454380000000
  %3081 = fmul fast float %3080, %3074
  %3082 = fadd fast float %3081, %3078
  %3083 = fadd fast float %3082, %3079
  %3084 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2954)  ; FMax(a,b)
  %3085 = call float @dx.op.dot3.f32(i32 55, float %2977, float %2980, float %2983, float %2977, float %2980, float %2983)  ; Dot3(ax,ay,az,bx,by,bz)
  %3086 = fcmp fast oeq float %3085, 0.000000e+00
  %3087 = fcmp fast oeq float %3084, 0.000000e+00
  %3088 = or i1 %3087, %3086
  br i1 %3088, label %3118, label %3089

; <label>:3089                                    ; preds = %3068
  %3090 = fsub fast float -0.000000e+00, %2983
  %3091 = fsub fast float -0.000000e+00, %2977
  %3092 = call float @dx.op.unary.f32(i32 24, float %3085)  ; Sqrt(value)
  %3093 = fdiv fast float %3092, %3084
  %3094 = fcmp fast ogt float %3093, 0x3FFB6F8900000000
  %3095 = select i1 %3094, float 0x3FFB6F8900000000, float %3093
  %3096 = fmul fast float %3095, 0x3FE8A23460000000
  %3097 = call float @dx.op.unary.f32(i32 7, float %3096)  ; Saturate(value)
  %3098 = call float @dx.op.binary.f32(i32 35, float %3095, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3099 = fmul fast float %3097, %3084
  %3100 = fmul fast float %3098, 0x3FF279A740000000
  %3101 = fadd fast float %3100, -1.000000e+00
  %3102 = call float @dx.op.dot3.f32(i32 55, float %3090, float %3091, float %2980, float %3090, float %3091, float %2980)  ; Dot3(ax,ay,az,bx,by,bz)
  %3103 = call float @dx.op.unary.f32(i32 25, float %3102)  ; Rsqrt(value)
  %3104 = fmul fast float %3103, %3090
  %3105 = fmul fast float %3103, %3091
  %3106 = fmul fast float %3103, %2980
  %3107 = fmul fast float %3101, %3101
  %3108 = fsub fast float 1.000000e+00, %3107
  %3109 = fmul fast float %3098, 0x40005F8BE0000000
  %3110 = fsub fast float 0x400C5BF8A0000000, %3109
  %3111 = fdiv fast float %3099, %3110
  %3112 = fmul fast float %3111, 0x3FEE31C3C0000000
  %3113 = fmul fast float %3112, %3108
  %3114 = fmul fast float %3098, 0x3FDACB7480000000
  %3115 = fadd fast float %3114, 0xBFD7347680000000
  %3116 = fmul fast float %3115, %3111
  %3117 = fmul fast float %3116, %3108
  br label %3118

; <label>:3118                                    ; preds = %3089, %3068
  %3119 = phi float [ %3104, %3089 ], [ 0.000000e+00, %3068 ]
  %3120 = phi float [ %3105, %3089 ], [ 0.000000e+00, %3068 ]
  %3121 = phi float [ %3106, %3089 ], [ 0.000000e+00, %3068 ]
  %3122 = phi float [ %3113, %3089 ], [ 0.000000e+00, %3068 ]
  %3123 = phi float [ %3117, %3089 ], [ 0.000000e+00, %3068 ]
  %3124 = call float @dx.op.dot3.f32(i32 55, float %3119, float %3120, float %3121, float %2200, float %2201, float %2202)  ; Dot3(ax,ay,az,bx,by,bz)
  %3125 = fmul fast float %3124, %3124
  %3126 = fmul fast float %3125, 0x3FEE471020000000
  %3127 = fadd fast float %3126, 0xBFD42F6020000000
  %3128 = fmul fast float %3084, 0x3FD20DD760000000
  %3129 = fmul fast float %3127, %3123
  %3130 = fmul fast float %3122, 0x3FDF454380000000
  %3131 = fmul fast float %3130, %3124
  %3132 = fadd fast float %3131, %3128
  %3133 = fadd fast float %3132, %3129
  %3134 = call float @dx.op.binary.f32(i32 35, float %3033, float 0.000000e+00)  ; FMax(a,b)
  %3135 = call float @dx.op.binary.f32(i32 35, float %3083, float 0.000000e+00)  ; FMax(a,b)
  %3136 = call float @dx.op.binary.f32(i32 35, float %3133, float 0.000000e+00)  ; FMax(a,b)
  %3137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3138 = extractvalue %dx.types.CBufRet.f32 %3137, 0
  %3139 = call float @dx.op.binary.f32(i32 36, float %2212, float %3138)  ; FMin(a,b)
  %3140 = fsub fast float 1.000000e+00, %2350
  %3141 = fmul fast float %3139, %3140
  %3142 = fsub fast float 1.000000e+00, %3141
  %3143 = bitcast float %3142 to i32
  %3144 = sub nsw i32 2129859010, %3143
  %3145 = bitcast i32 %3144 to float
  %3146 = call float @dx.op.binary.f32(i32 36, float %2213, float %3138)  ; FMin(a,b)
  %3147 = fmul fast float %3146, %3140
  %3148 = fsub fast float 1.000000e+00, %3147
  %3149 = bitcast float %3148 to i32
  %3150 = sub nsw i32 2129859010, %3149
  %3151 = bitcast i32 %3150 to float
  %3152 = call float @dx.op.binary.f32(i32 36, float %2214, float %3138)  ; FMin(a,b)
  %3153 = fmul fast float %3152, %3140
  %3154 = fsub fast float 1.000000e+00, %3153
  %3155 = bitcast float %3154 to i32
  %3156 = sub nsw i32 2129859010, %3155
  %3157 = bitcast i32 %3156 to float
  %3158 = fmul fast float %3134, %2350
  %3159 = fmul fast float %3158, %3145
  %3160 = fmul fast float %3135, %2350
  %3161 = fmul fast float %3160, %3151
  %3162 = fmul fast float %3136, %2350
  %3163 = fmul fast float %3162, %3157
  %3164 = call float @dx.op.dot3.f32(i32 55, float %3159, float %3161, float %3163, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3165 = select i1 %2335, float 0.000000e+00, float %3159
  %3166 = select i1 %2335, float %3164, float %3161
  %3167 = select i1 %2335, float 0.000000e+00, float %3163
  %3168 = fsub fast float 1.000000e+00, %2221
  %3169 = fsub fast float 1.000000e+00, %2222
  %3170 = fsub fast float 1.000000e+00, %2340
  %3171 = fmul fast float %2260, %3168
  %3172 = fmul fast float %2260, %3169
  %3173 = fmul fast float %3170, %2260
  %3174 = fadd fast float %3171, %2221
  %3175 = fadd fast float %3172, %2222
  %3176 = fadd fast float %3173, %2340
  %3177 = call float @dx.op.binary.f32(i32 35, float %3175, float %3176)  ; FMax(a,b)
  %3178 = call float @dx.op.binary.f32(i32 35, float %3174, float %3177)  ; FMax(a,b)
  %3179 = fsub fast float 1.000000e+00, %3178
  %3180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3181 = extractvalue %dx.types.CBufRet.i32 %3180, 0
  %3182 = and i32 %3181, 524288
  %3183 = icmp ne i32 %3182, 0
  %3184 = select i1 %3183, float 0.000000e+00, float 1.000000e+00
  %3185 = xor i1 %3183, true
  %3186 = zext i1 %3185 to i32
  br i1 %3183, label %3187, label %3457

; <label>:3187                                    ; preds = %3118
  %3188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %3189 = extractvalue %dx.types.CBufRet.f32 %3188, 0
  %3190 = extractvalue %dx.types.CBufRet.f32 %3188, 1
  %3191 = extractvalue %dx.types.CBufRet.f32 %3188, 2
  %3192 = extractvalue %dx.types.CBufRet.f32 %3188, 3
  %3193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %3194 = extractvalue %dx.types.CBufRet.f32 %3193, 0
  %3195 = extractvalue %dx.types.CBufRet.f32 %3193, 1
  %3196 = extractvalue %dx.types.CBufRet.f32 %3193, 2
  %3197 = extractvalue %dx.types.CBufRet.f32 %3193, 3
  %3198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %3199 = extractvalue %dx.types.CBufRet.f32 %3198, 0
  %3200 = extractvalue %dx.types.CBufRet.f32 %3198, 1
  %3201 = extractvalue %dx.types.CBufRet.f32 %3198, 2
  %3202 = extractvalue %dx.types.CBufRet.f32 %3198, 3
  %3203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %3204 = extractvalue %dx.types.CBufRet.f32 %3203, 0
  %3205 = extractvalue %dx.types.CBufRet.f32 %3203, 1
  %3206 = extractvalue %dx.types.CBufRet.f32 %3203, 2
  %3207 = extractvalue %dx.types.CBufRet.f32 %3203, 3
  %3208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %3209 = extractvalue %dx.types.CBufRet.f32 %3208, 0
  %3210 = extractvalue %dx.types.CBufRet.f32 %3208, 1
  %3211 = extractvalue %dx.types.CBufRet.f32 %3208, 2
  %3212 = extractvalue %dx.types.CBufRet.f32 %3208, 3
  %3213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %3214 = extractvalue %dx.types.CBufRet.f32 %3213, 0
  %3215 = extractvalue %dx.types.CBufRet.f32 %3213, 1
  %3216 = extractvalue %dx.types.CBufRet.f32 %3213, 2
  %3217 = extractvalue %dx.types.CBufRet.f32 %3213, 3
  %3218 = call float @dx.op.dot3.f32(i32 55, float %3214, float %3215, float %3216, float %2347, float %2348, float %2349)  ; Dot3(ax,ay,az,bx,by,bz)
  %3219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %3220 = extractvalue %dx.types.CBufRet.f32 %3219, 1
  %3221 = extractvalue %dx.types.CBufRet.f32 %3219, 0
  %3222 = select i1 %106, float %3221, float %3220
  %3223 = fmul fast float %3218, 8.000000e+00
  %3224 = fmul fast float %3223, %3222
  %3225 = call float @dx.op.unary.f32(i32 7, float %3224)  ; Saturate(value)
  %3226 = fcmp fast ogt float %3225, 0.000000e+00
  br i1 %3226, label %3227, label %3444, !dx.controlflow.hints !120

; <label>:3227                                    ; preds = %3187
  %3228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %3229 = extractvalue %dx.types.CBufRet.f32 %3228, 1
  %3230 = fmul fast float %1687, 2.000000e+00
  %3231 = fmul fast float %1688, 2.000000e+00
  %3232 = fadd fast float %3230, -1.000000e+00
  %3233 = fadd fast float %3231, -1.000000e+00
  %3234 = fmul fast float %3229, %3232
  %3235 = fmul fast float %3229, %3233
  %3236 = fadd fast float %3234, %89
  %3237 = fadd fast float %3235, %90
  %3238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3239 = extractvalue %dx.types.CBufRet.f32 %3238, 2
  %3240 = extractvalue %dx.types.CBufRet.f32 %3238, 3
  %3241 = fmul fast float %3236, %3239
  %3242 = fmul fast float %3237, %3240
  %3243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %59, float %3241, float %3242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3244 = extractvalue %dx.types.ResRet.f32 %3243, 0
  %3245 = fcmp fast une float %3244, 0xFFF0000000000000
  %3246 = fcmp fast une float %3244, 0x7FF0000000000000
  %3247 = and i1 %3245, %3246
  %3248 = call float @dx.op.unary.f32(i32 6, float %3244)  ; FAbs(value)
  %3249 = fsub fast float 1.000000e+00, %3248
  %3250 = select i1 %3247, float 1.000000e+00, float 0.000000e+00
  %3251 = fmul fast float %3250, %3225
  %3252 = fcmp fast ogt float %3251, 0.000000e+00
  br i1 %3252, label %3253, label %3444, !dx.controlflow.hints !121

; <label>:3253                                    ; preds = %3227
  %3254 = fmul fast float %3189, %144
  %3255 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3190, float %3254)  ; FMad(a,b,c)
  %3256 = call float @dx.op.tertiary.f32(i32 46, float %146, float %3191, float %3255)  ; FMad(a,b,c)
  %3257 = fadd fast float %3256, %3192
  %3258 = fmul fast float %3194, %144
  %3259 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3195, float %3258)  ; FMad(a,b,c)
  %3260 = call float @dx.op.tertiary.f32(i32 46, float %146, float %3196, float %3259)  ; FMad(a,b,c)
  %3261 = fadd fast float %3260, %3197
  %3262 = fmul fast float %3199, %144
  %3263 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3200, float %3262)  ; FMad(a,b,c)
  %3264 = call float @dx.op.tertiary.f32(i32 46, float %146, float %3201, float %3263)  ; FMad(a,b,c)
  %3265 = fadd fast float %3264, %3202
  %3266 = fdiv fast float 1.000000e+00, %3265
  %3267 = fmul fast float %3266, %3257
  %3268 = fmul fast float %3266, %3261
  %3269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3270 = extractvalue %dx.types.CBufRet.f32 %3269, 0
  %3271 = extractvalue %dx.types.CBufRet.f32 %3269, 1
  %3272 = fmul fast float %3267, %3270
  %3273 = fmul fast float %3268, %3271
  %3274 = extractvalue %dx.types.CBufRet.f32 %3269, 2
  %3275 = extractvalue %dx.types.CBufRet.f32 %3269, 3
  %3276 = fadd fast float %3272, %3274
  %3277 = fadd fast float %3273, %3275
  %3278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3279 = extractvalue %dx.types.CBufRet.f32 %3278, 3
  %3280 = fmul fast float %3279, %2347
  %3281 = fmul fast float %3279, %2348
  %3282 = fmul fast float %3279, %2349
  %3283 = fadd fast float %3280, %144
  %3284 = fadd fast float %3281, %145
  %3285 = fadd fast float %3282, %146
  %3286 = fmul fast float %3283, %3189
  %3287 = call float @dx.op.tertiary.f32(i32 46, float %3284, float %3190, float %3286)  ; FMad(a,b,c)
  %3288 = call float @dx.op.tertiary.f32(i32 46, float %3285, float %3191, float %3287)  ; FMad(a,b,c)
  %3289 = fadd fast float %3288, %3192
  %3290 = fmul fast float %3283, %3194
  %3291 = call float @dx.op.tertiary.f32(i32 46, float %3284, float %3195, float %3290)  ; FMad(a,b,c)
  %3292 = call float @dx.op.tertiary.f32(i32 46, float %3285, float %3196, float %3291)  ; FMad(a,b,c)
  %3293 = fadd fast float %3292, %3197
  %3294 = fmul fast float %3283, %3199
  %3295 = call float @dx.op.tertiary.f32(i32 46, float %3284, float %3200, float %3294)  ; FMad(a,b,c)
  %3296 = call float @dx.op.tertiary.f32(i32 46, float %3285, float %3201, float %3295)  ; FMad(a,b,c)
  %3297 = fadd fast float %3296, %3202
  %3298 = fdiv fast float 1.000000e+00, %3297
  %3299 = fmul fast float %3298, %3289
  %3300 = fmul fast float %3298, %3293
  %3301 = fmul fast float %3276, 2.000000e+00
  %3302 = fadd fast float %3301, -1.000000e+00
  %3303 = call float @dx.op.unary.f32(i32 6, float %3302)  ; FAbs(value)
  %3304 = fmul fast float %3303, 5.000000e+00
  %3305 = fadd fast float %3304, -4.000000e+00
  %3306 = call float @dx.op.unary.f32(i32 7, float %3305)  ; Saturate(value)
  %3307 = fsub fast float %3267, %3299
  %3308 = fmul fast float %3270, %3307
  %3309 = fmul fast float %3308, %3306
  %3310 = fsub fast float %3299, %3267
  %3311 = fmul fast float %3270, %3310
  %3312 = fadd fast float %3311, %3309
  %3313 = fsub fast float %3300, %3268
  %3314 = fmul fast float %3271, %3313
  %3315 = fmul fast float %3312, %3249
  %3316 = fmul fast float %3314, %3249
  %3317 = fadd fast float %3315, %3276
  %3318 = fadd fast float %3316, %3277
  %3319 = fsub fast float %3298, %3266
  %3320 = fmul fast float %3319, %3249
  %3321 = fadd fast float %3320, %3266
  %3322 = fdiv fast float 1.000000e+00, %3321
  %3323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %58, float %3317, float %3318, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3324 = extractvalue %dx.types.ResRet.f32 %3323, 0
  %3325 = extractvalue %dx.types.ResRet.f32 %3323, 1
  %3326 = extractvalue %dx.types.ResRet.f32 %3323, 2
  %3327 = extractvalue %dx.types.CBufRet.f32 %2950, 1
  %3328 = fmul fast float %3327, %3324
  %3329 = fmul fast float %3327, %3325
  %3330 = fmul fast float %3327, %3326
  %3331 = call float @dx.op.binary.f32(i32 35, float %3322, float 0x3810000000000000)  ; FMax(a,b)
  %3332 = fdiv fast float %3265, %3331
  %3333 = call float @dx.op.unary.f32(i32 7, float %3332)  ; Saturate(value)
  %3334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %3335 = extractvalue %dx.types.CBufRet.f32 %3334, 0
  %3336 = extractvalue %dx.types.CBufRet.f32 %3334, 1
  %3337 = extractvalue %dx.types.CBufRet.f32 %3334, 2
  %3338 = fadd fast float %3335, %144
  %3339 = fadd fast float %3336, %145
  %3340 = fadd fast float %3337, %146
  %3341 = fmul fast float %3338, %3204
  %3342 = call float @dx.op.tertiary.f32(i32 46, float %3339, float %3205, float %3341)  ; FMad(a,b,c)
  %3343 = call float @dx.op.tertiary.f32(i32 46, float %3340, float %3206, float %3342)  ; FMad(a,b,c)
  %3344 = fadd fast float %3343, %3207
  %3345 = fmul fast float %3338, %3209
  %3346 = call float @dx.op.tertiary.f32(i32 46, float %3339, float %3210, float %3345)  ; FMad(a,b,c)
  %3347 = call float @dx.op.tertiary.f32(i32 46, float %3340, float %3211, float %3346)  ; FMad(a,b,c)
  %3348 = fadd fast float %3347, %3212
  %3349 = fmul fast float %3338, %3214
  %3350 = call float @dx.op.tertiary.f32(i32 46, float %3339, float %3215, float %3349)  ; FMad(a,b,c)
  %3351 = call float @dx.op.tertiary.f32(i32 46, float %3340, float %3216, float %3350)  ; FMad(a,b,c)
  %3352 = fadd fast float %3351, %3217
  %3353 = fdiv fast float 1.000000e+00, %3352
  %3354 = fmul fast float %3353, %3344
  %3355 = fmul fast float %3353, %3348
  %3356 = fmul fast float %3354, %3270
  %3357 = fmul fast float %3355, %3271
  %3358 = fadd fast float %3356, %3274
  %3359 = fadd fast float %3357, %3275
  %3360 = fadd fast float %3280, %3338
  %3361 = fadd fast float %3281, %3339
  %3362 = fadd fast float %3282, %3340
  %3363 = fmul fast float %3360, %3204
  %3364 = call float @dx.op.tertiary.f32(i32 46, float %3361, float %3205, float %3363)  ; FMad(a,b,c)
  %3365 = call float @dx.op.tertiary.f32(i32 46, float %3362, float %3206, float %3364)  ; FMad(a,b,c)
  %3366 = fadd fast float %3365, %3207
  %3367 = fmul fast float %3360, %3209
  %3368 = call float @dx.op.tertiary.f32(i32 46, float %3361, float %3210, float %3367)  ; FMad(a,b,c)
  %3369 = call float @dx.op.tertiary.f32(i32 46, float %3362, float %3211, float %3368)  ; FMad(a,b,c)
  %3370 = fadd fast float %3369, %3212
  %3371 = fmul fast float %3360, %3214
  %3372 = call float @dx.op.tertiary.f32(i32 46, float %3361, float %3215, float %3371)  ; FMad(a,b,c)
  %3373 = call float @dx.op.tertiary.f32(i32 46, float %3362, float %3216, float %3372)  ; FMad(a,b,c)
  %3374 = fadd fast float %3373, %3217
  %3375 = fdiv fast float 1.000000e+00, %3374
  %3376 = fmul fast float %3375, %3366
  %3377 = fmul fast float %3375, %3370
  %3378 = fmul fast float %3358, 2.000000e+00
  %3379 = fadd fast float %3378, -1.000000e+00
  %3380 = call float @dx.op.unary.f32(i32 6, float %3379)  ; FAbs(value)
  %3381 = fmul fast float %3380, 5.000000e+00
  %3382 = fadd fast float %3381, -4.000000e+00
  %3383 = call float @dx.op.unary.f32(i32 7, float %3382)  ; Saturate(value)
  %3384 = fsub fast float %3354, %3376
  %3385 = fmul fast float %3270, %3384
  %3386 = fmul fast float %3385, %3383
  %3387 = fsub fast float %3376, %3354
  %3388 = fmul fast float %3270, %3387
  %3389 = fadd fast float %3388, %3386
  %3390 = fsub fast float %3377, %3355
  %3391 = fmul fast float %3271, %3390
  %3392 = fmul fast float %3389, %3249
  %3393 = fmul fast float %3391, %3249
  %3394 = fadd fast float %3392, %3358
  %3395 = fadd fast float %3393, %3359
  %3396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %58, float %3394, float %3395, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3397 = extractvalue %dx.types.ResRet.f32 %3396, 0
  %3398 = extractvalue %dx.types.ResRet.f32 %3396, 1
  %3399 = extractvalue %dx.types.ResRet.f32 %3396, 2
  %3400 = extractvalue %dx.types.CBufRet.f32 %2950, 2
  %3401 = fmul fast float %3400, %3397
  %3402 = fmul fast float %3400, %3398
  %3403 = fmul fast float %3400, %3399
  %3404 = and i32 %2279, 255
  %3405 = uitofp i32 %3404 to float
  %3406 = fmul fast float %3405, 0x3F70101020000000
  %3407 = fmul fast float %3406, %3333
  %3408 = extractvalue %dx.types.CBufRet.f32 %3219, 2
  %3409 = fadd fast float %3408, %3407
  %3410 = call float @dx.op.unary.f32(i32 7, float %3409)  ; Saturate(value)
  %3411 = call float @dx.op.binary.f32(i32 35, float %3328, float 0x3810000000000000)  ; FMax(a,b)
  %3412 = call float @dx.op.binary.f32(i32 35, float %3329, float 0x3810000000000000)  ; FMax(a,b)
  %3413 = call float @dx.op.binary.f32(i32 35, float %3330, float 0x3810000000000000)  ; FMax(a,b)
  %3414 = call float @dx.op.unary.f32(i32 23, float %3411)  ; Log(value)
  %3415 = call float @dx.op.unary.f32(i32 23, float %3412)  ; Log(value)
  %3416 = call float @dx.op.unary.f32(i32 23, float %3413)  ; Log(value)
  %3417 = call float @dx.op.binary.f32(i32 35, float %3401, float 0x3810000000000000)  ; FMax(a,b)
  %3418 = call float @dx.op.binary.f32(i32 35, float %3402, float 0x3810000000000000)  ; FMax(a,b)
  %3419 = call float @dx.op.binary.f32(i32 35, float %3403, float 0x3810000000000000)  ; FMax(a,b)
  %3420 = call float @dx.op.unary.f32(i32 23, float %3417)  ; Log(value)
  %3421 = call float @dx.op.unary.f32(i32 23, float %3418)  ; Log(value)
  %3422 = call float @dx.op.unary.f32(i32 23, float %3419)  ; Log(value)
  %3423 = fsub fast float %3414, %3420
  %3424 = fsub fast float %3415, %3421
  %3425 = fsub fast float %3416, %3422
  %3426 = fmul fast float %3423, %3410
  %3427 = fmul fast float %3424, %3410
  %3428 = fmul fast float %3425, %3410
  %3429 = fadd fast float %3426, %3420
  %3430 = fadd fast float %3427, %3421
  %3431 = fadd fast float %3428, %3422
  %3432 = call float @dx.op.unary.f32(i32 21, float %3429)  ; Exp(value)
  %3433 = call float @dx.op.unary.f32(i32 21, float %3430)  ; Exp(value)
  %3434 = call float @dx.op.unary.f32(i32 21, float %3431)  ; Exp(value)
  %3435 = select i1 %2335, float 0.000000e+00, float %3433
  %3436 = select i1 %2335, float 0.000000e+00, float %3434
  %3437 = fmul fast float %3395, 2.000000e+00
  %3438 = fadd fast float %3437, -1.000000e+00
  %3439 = fmul fast float %3438, %3438
  %3440 = fsub fast float 1.000000e+00, %3439
  %3441 = call float @dx.op.unary.f32(i32 7, float %3440)  ; Saturate(value)
  %3442 = call float @dx.op.unary.f32(i32 7, float %3441)  ; Saturate(value)
  %3443 = fmul fast float %3442, %3251
  br label %3444

; <label>:3444                                    ; preds = %3253, %3227, %3187
  %3445 = phi float [ %3432, %3253 ], [ 0.000000e+00, %3227 ], [ 0.000000e+00, %3187 ]
  %3446 = phi float [ %3435, %3253 ], [ 0.000000e+00, %3227 ], [ 0.000000e+00, %3187 ]
  %3447 = phi float [ %3436, %3253 ], [ 0.000000e+00, %3227 ], [ 0.000000e+00, %3187 ]
  %3448 = phi float [ %3443, %3253 ], [ 0.000000e+00, %3227 ], [ 0.000000e+00, %3187 ]
  %3449 = fcmp fast olt float %3448, 1.000000e+00
  %3450 = or i1 %3449, %3185
  %3451 = zext i1 %3450 to i32
  %3452 = fmul fast float %3448, %3184
  %3453 = fsub fast float %3448, %3452
  %3454 = fmul fast float %3453, %3445
  %3455 = fmul fast float %3453, %3446
  %3456 = fmul fast float %3453, %3447
  br label %3457

; <label>:3457                                    ; preds = %3444, %3118
  %3458 = phi float [ 0.000000e+00, %3118 ], [ %3453, %3444 ]
  %3459 = phi float [ 0.000000e+00, %3118 ], [ %3454, %3444 ]
  %3460 = phi float [ 0.000000e+00, %3118 ], [ %3455, %3444 ]
  %3461 = phi float [ 0.000000e+00, %3118 ], [ %3456, %3444 ]
  %3462 = phi i32 [ %3186, %3118 ], [ %3451, %3444 ]
  %3463 = icmp eq i32 %3462, 0
  br i1 %3463, label %3902, label %3464

; <label>:3464                                    ; preds = %3457
  %3465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3466 = extractvalue %dx.types.CBufRet.f32 %3465, 2
  %3467 = extractvalue %dx.types.CBufRet.f32 %3465, 3
  %3468 = fmul fast float %3466, %89
  %3469 = fmul fast float %3467, %90
  %3470 = fptoui float %3468 to i32
  %3471 = fptoui float %3469 to i32
  %3472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3473 = extractvalue %dx.types.CBufRet.f32 %3472, 0
  %3474 = extractvalue %dx.types.CBufRet.f32 %3472, 2
  %3475 = extractvalue %dx.types.CBufRet.f32 %3472, 3
  %3476 = fadd fast float %78, -4.000000e+00
  %3477 = call float @dx.op.binary.f32(i32 35, float %3476, float 0.000000e+00)  ; FMax(a,b)
  %3478 = fadd fast float %3477, %3473
  %3479 = fmul fast float %3478, %3474
  %3480 = call float @dx.op.unary.f32(i32 23, float %3479)  ; Log(value)
  %3481 = fmul fast float %3480, %3475
  %3482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3483 = extractvalue %dx.types.CBufRet.f32 %3482, 2
  %3484 = fmul fast float %3481, %3483
  %3485 = call float @dx.op.unary.f32(i32 7, float %3484)  ; Saturate(value)
  %3486 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3487 = extractvalue %dx.types.CBufRet.i32 %3486, 1
  %3488 = add i32 %3487, -1
  %3489 = uitofp i32 %3487 to float
  %3490 = fmul fast float %3489, %3485
  %3491 = fptoui float %3490 to i32
  %3492 = call i32 @dx.op.binary.i32(i32 40, i32 %3491, i32 %3488)  ; UMin(a,b)
  %3493 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3494 = extractvalue %dx.types.CBufRet.i32 %3493, 2
  %3495 = extractvalue %dx.types.CBufRet.i32 %3493, 3
  %3496 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3471, i32 %3494, i32 %3470)  ; UMad(a,b,c)
  %3497 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3492, i32 %3495, i32 %3496)  ; UMad(a,b,c)
  %3498 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %3499 = fptoui float %3498 to i32
  %3500 = lshr i32 %3499, 5
  %3501 = call i32 @dx.op.binary.i32(i32 40, i32 %3500, i32 8191)  ; UMin(a,b)
  %3502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3503 = extractvalue %dx.types.CBufRet.i32 %3502, 2
  %3504 = add nsw i32 %3503, -1
  %3505 = call i32 @dx.op.binary.i32(i32 37, i32 %3504, i32 0)  ; IMax(a,b)
  %3506 = shl i32 %3501, 2
  %3507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3506, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.i32 %3507, 0
  %3509 = lshr i32 %3508, 16
  %3510 = and i32 %3508, 65535
  %3511 = lshr i32 %3508, 21
  %3512 = lshr i32 %3510, 5
  %3513 = call i32 @dx.op.binary.i32(i32 40, i32 %3512, i32 %3505)  ; UMin(a,b)
  %3514 = icmp ugt i32 %3511, %3513
  br i1 %3514, label %3878, label %3515

; <label>:3515                                    ; preds = %3464
  br label %3516

; <label>:3516                                    ; preds = %3870, %3515
  %3517 = phi float [ %3871, %3870 ], [ 0.000000e+00, %3515 ]
  %3518 = phi float [ %3872, %3870 ], [ 0.000000e+00, %3515 ]
  %3519 = phi float [ %3873, %3870 ], [ 0.000000e+00, %3515 ]
  %3520 = phi float [ %3874, %3870 ], [ 1.000000e+00, %3515 ]
  %3521 = phi i32 [ %3875, %3870 ], [ %3511, %3515 ]
  %3522 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3523 = extractvalue %dx.types.CBufRet.i32 %3522, 2
  %3524 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3497, i32 %3523, i32 %3521)  ; UMad(a,b,c)
  %3525 = shl i32 %3524, 2
  %3526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %3525, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.i32 %3526, 0
  %3528 = shl i32 %3521, 5
  %3529 = sub nsw i32 %3509, %3528
  %3530 = call i32 @dx.op.binary.i32(i32 37, i32 %3529, i32 0)  ; IMax(a,b)
  %3531 = call i32 @dx.op.binary.i32(i32 38, i32 %3530, i32 31)  ; IMin(a,b)
  %3532 = sub nsw i32 1, %3509
  %3533 = add nsw i32 %3532, %3510
  %3534 = call i32 @dx.op.binary.i32(i32 37, i32 %3533, i32 0)  ; IMax(a,b)
  %3535 = call i32 @dx.op.binary.i32(i32 38, i32 %3534, i32 32)  ; IMin(a,b)
  %3536 = and i32 %3535, 31
  %3537 = shl i32 -1, %3536
  %3538 = xor i32 %3537, -1
  %3539 = and i32 %3531, 31
  %3540 = shl i32 %3538, %3539
  %3541 = icmp eq i32 %3535, 32
  %3542 = select i1 %3541, i32 -1, i32 %3540
  %3543 = and i32 %3542, %3527
  %3544 = icmp eq i32 %3543, 0
  br i1 %3544, label %3870, label %3545

; <label>:3545                                    ; preds = %3516
  br label %3546

; <label>:3546                                    ; preds = %3653, %3545
  %3547 = phi float [ %3654, %3653 ], [ %3517, %3545 ]
  %3548 = phi float [ %3655, %3653 ], [ %3518, %3545 ]
  %3549 = phi float [ %3656, %3653 ], [ %3519, %3545 ]
  %3550 = phi float [ %3657, %3653 ], [ %3520, %3545 ]
  %3551 = phi i32 [ %3556, %3653 ], [ %3543, %3545 ]
  %3552 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3551)  ; FirstbitLo(value)
  %3553 = add i32 %3552, %3528
  %3554 = and i32 %3552, 31
  %3555 = shl i32 1, %3554
  %3556 = xor i32 %3555, %3551
  %3557 = mul i32 %3553, 72
  %3558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3559 = extractvalue %dx.types.ResRet.f32 %3558, 0
  %3560 = extractvalue %dx.types.ResRet.f32 %3558, 1
  %3561 = extractvalue %dx.types.ResRet.f32 %3558, 2
  %3562 = add i32 %3557, 12
  %3563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3562, i32 undef)  ; BufferLoad(srv,index,wot)
  %3564 = extractvalue %dx.types.ResRet.i32 %3563, 0
  %3565 = add i32 %3557, 16
  %3566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3565, i32 undef)  ; BufferLoad(srv,index,wot)
  %3567 = extractvalue %dx.types.ResRet.f32 %3566, 0
  %3568 = extractvalue %dx.types.ResRet.f32 %3566, 1
  %3569 = extractvalue %dx.types.ResRet.f32 %3566, 2
  %3570 = add i32 %3557, 28
  %3571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3570, i32 undef)  ; BufferLoad(srv,index,wot)
  %3572 = extractvalue %dx.types.ResRet.f32 %3571, 0
  %3573 = add i32 %3557, 32
  %3574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3573, i32 undef)  ; BufferLoad(srv,index,wot)
  %3575 = extractvalue %dx.types.ResRet.f32 %3574, 0
  %3576 = extractvalue %dx.types.ResRet.f32 %3574, 1
  %3577 = extractvalue %dx.types.ResRet.f32 %3574, 2
  %3578 = extractvalue %dx.types.ResRet.f32 %3574, 3
  %3579 = add i32 %3557, 48
  %3580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3579, i32 undef)  ; BufferLoad(srv,index,wot)
  %3581 = extractvalue %dx.types.ResRet.f32 %3580, 0
  %3582 = extractvalue %dx.types.ResRet.f32 %3580, 1
  %3583 = add i32 %3557, 56
  %3584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.f32 %3584, 0
  %3586 = extractvalue %dx.types.ResRet.f32 %3584, 1
  %3587 = add i32 %3557, 64
  %3588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3587, i32 undef)  ; BufferLoad(srv,index,wot)
  %3589 = extractvalue %dx.types.ResRet.f32 %3588, 0
  %3590 = extractvalue %dx.types.ResRet.f32 %3588, 1
  %3591 = mul i32 %3553, 60
  %3592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.f32 %3592, 0
  %3594 = extractvalue %dx.types.ResRet.f32 %3592, 1
  %3595 = extractvalue %dx.types.ResRet.f32 %3592, 2
  %3596 = add i32 %3591, 12
  %3597 = add i32 %3591, 48
  %3598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.f32 %3598, 0
  %3600 = extractvalue %dx.types.ResRet.f32 %3598, 1
  %3601 = extractvalue %dx.types.ResRet.f32 %3598, 2
  %3602 = and i32 %3564, 32767
  %3603 = bitcast float %3559 to i32
  %3604 = icmp eq i32 %3603, -1
  %3605 = bitcast float %3560 to i32
  %3606 = and i32 %3564, 32768
  %3607 = icmp ne i32 %3606, 0
  %3608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3609 = extractvalue %dx.types.CBufRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.CBufRet.f32 %3608, 1
  %3611 = extractvalue %dx.types.CBufRet.f32 %3608, 2
  %3612 = fsub fast float %3593, %3609
  %3613 = fsub fast float %3594, %3610
  %3614 = fsub fast float %3595, %3611
  %3615 = fsub fast float %144, %3612
  %3616 = fsub fast float %145, %3613
  %3617 = fsub fast float %146, %3614
  %3618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %3596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3621 = extractvalue %dx.types.ResRet.f32 %3618, 2
  %3622 = call float @dx.op.dot3.f32(i32 55, float %3615, float %3616, float %3617, float %3619, float %3620, float %3621)  ; Dot3(ax,ay,az,bx,by,bz)
  %3623 = add i32 %3591, 24
  %3624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %3623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.f32 %3624, 0
  %3626 = extractvalue %dx.types.ResRet.f32 %3624, 1
  %3627 = extractvalue %dx.types.ResRet.f32 %3624, 2
  %3628 = call float @dx.op.dot3.f32(i32 55, float %3615, float %3616, float %3617, float %3625, float %3626, float %3627)  ; Dot3(ax,ay,az,bx,by,bz)
  %3629 = add i32 %3591, 36
  %3630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %3629, i32 undef)  ; BufferLoad(srv,index,wot)
  %3631 = extractvalue %dx.types.ResRet.f32 %3630, 0
  %3632 = extractvalue %dx.types.ResRet.f32 %3630, 1
  %3633 = extractvalue %dx.types.ResRet.f32 %3630, 2
  %3634 = call float @dx.op.dot3.f32(i32 55, float %3615, float %3616, float %3617, float %3631, float %3632, float %3633)  ; Dot3(ax,ay,az,bx,by,bz)
  %3635 = call float @dx.op.unary.f32(i32 6, float %3622)  ; FAbs(value)
  %3636 = call float @dx.op.unary.f32(i32 6, float %3628)  ; FAbs(value)
  %3637 = call float @dx.op.unary.f32(i32 6, float %3634)  ; FAbs(value)
  %3638 = fsub fast float %3599, %3635
  %3639 = fsub fast float %3600, %3636
  %3640 = fsub fast float %3601, %3637
  %3641 = fmul fast float %3638, %3567
  %3642 = fmul fast float %3639, %3568
  %3643 = fmul fast float %3640, %3569
  %3644 = call float @dx.op.binary.f32(i32 36, float %3642, float %3643)  ; FMin(a,b)
  %3645 = call float @dx.op.binary.f32(i32 36, float %3641, float %3644)  ; FMin(a,b)
  %3646 = call float @dx.op.unary.f32(i32 7, float %3645)  ; Saturate(value)
  %3647 = call float @dx.op.binary.f32(i32 36, float %3550, float %3646)  ; FMin(a,b)
  %3648 = uitofp i1 %3607 to float
  %3649 = select i1 %106, float 1.000000e+00, float 2.000000e+00
  %3650 = fsub fast float %3649, %3648
  %3651 = fmul fast float %3647, %3650
  %3652 = fcmp fast ogt float %3651, 0.000000e+00
  br i1 %3652, label %3659, label %3653

; <label>:3653                                    ; preds = %3801, %3546
  %3654 = phi float [ %3865, %3801 ], [ %3547, %3546 ]
  %3655 = phi float [ %3866, %3801 ], [ %3548, %3546 ]
  %3656 = phi float [ %3867, %3801 ], [ %3549, %3546 ]
  %3657 = phi float [ %3868, %3801 ], [ %3550, %3546 ]
  %3658 = icmp eq i32 %3551, %3555
  br i1 %3658, label %3869, label %3546

; <label>:3659                                    ; preds = %3546
  br i1 %3604, label %3717, label %3660

; <label>:3660                                    ; preds = %3659
  %3661 = fsub fast float -0.000000e+00, %3619
  %3662 = fsub fast float -0.000000e+00, %3620
  %3663 = fsub fast float -0.000000e+00, %3621
  %3664 = call float @dx.op.dot3.f32(i32 55, float %2347, float %2348, float %2349, float %3661, float %3662, float %3663)  ; Dot3(ax,ay,az,bx,by,bz)
  %3665 = fsub fast float -0.000000e+00, %3664
  %3666 = call float @dx.op.dot3.f32(i32 55, float %3615, float %3616, float %3617, float %3661, float %3662, float %3663)  ; Dot3(ax,ay,az,bx,by,bz)
  %3667 = fadd fast float %3666, %3582
  %3668 = fadd fast float %3581, %3666
  %3669 = fsub fast float -0.000000e+00, %3668
  %3670 = fcmp ogt float %3664, -0.000000e+00
  %3671 = select i1 %3670, float %3669, float %3667
  %3672 = call float @dx.op.unary.f32(i32 6, float %3665)  ; FAbs(value)
  %3673 = fdiv fast float 1.000000e+00, %3672
  %3674 = fmul fast float %3671, %3673
  %3675 = call float @dx.op.binary.f32(i32 35, float %3674, float 0.000000e+00)  ; FMax(a,b)
  %3676 = fsub fast float -0.000000e+00, %3625
  %3677 = fsub fast float -0.000000e+00, %3626
  %3678 = fsub fast float -0.000000e+00, %3627
  %3679 = call float @dx.op.dot3.f32(i32 55, float %2347, float %2348, float %2349, float %3676, float %3677, float %3678)  ; Dot3(ax,ay,az,bx,by,bz)
  %3680 = fsub fast float -0.000000e+00, %3679
  %3681 = call float @dx.op.dot3.f32(i32 55, float %3615, float %3616, float %3617, float %3676, float %3677, float %3678)  ; Dot3(ax,ay,az,bx,by,bz)
  %3682 = fadd fast float %3681, %3586
  %3683 = fadd fast float %3585, %3681
  %3684 = fsub fast float -0.000000e+00, %3683
  %3685 = fcmp ogt float %3679, -0.000000e+00
  %3686 = select i1 %3685, float %3684, float %3682
  %3687 = call float @dx.op.unary.f32(i32 6, float %3680)  ; FAbs(value)
  %3688 = fdiv fast float 1.000000e+00, %3687
  %3689 = fmul fast float %3686, %3688
  %3690 = call float @dx.op.binary.f32(i32 35, float %3689, float 0.000000e+00)  ; FMax(a,b)
  %3691 = fsub fast float -0.000000e+00, %3631
  %3692 = fsub fast float -0.000000e+00, %3632
  %3693 = fsub fast float -0.000000e+00, %3633
  %3694 = call float @dx.op.dot3.f32(i32 55, float %2347, float %2348, float %2349, float %3691, float %3692, float %3693)  ; Dot3(ax,ay,az,bx,by,bz)
  %3695 = fsub fast float -0.000000e+00, %3694
  %3696 = call float @dx.op.dot3.f32(i32 55, float %3615, float %3616, float %3617, float %3691, float %3692, float %3693)  ; Dot3(ax,ay,az,bx,by,bz)
  %3697 = fadd fast float %3696, %3590
  %3698 = fadd fast float %3589, %3696
  %3699 = fsub fast float -0.000000e+00, %3698
  %3700 = fcmp ogt float %3694, -0.000000e+00
  %3701 = select i1 %3700, float %3699, float %3697
  %3702 = call float @dx.op.unary.f32(i32 6, float %3695)  ; FAbs(value)
  %3703 = fdiv fast float 1.000000e+00, %3702
  %3704 = fmul fast float %3701, %3703
  %3705 = call float @dx.op.binary.f32(i32 35, float %3704, float 0.000000e+00)  ; FMax(a,b)
  %3706 = call float @dx.op.binary.f32(i32 36, float %3690, float %3705)  ; FMin(a,b)
  %3707 = call float @dx.op.binary.f32(i32 36, float %3675, float %3706)  ; FMin(a,b)
  %3708 = fmul fast float %3707, %2347
  %3709 = fmul fast float %3707, %2348
  %3710 = fmul fast float %3707, %2349
  %3711 = fadd fast float %3708, %144
  %3712 = fadd fast float %3709, %145
  %3713 = fadd fast float %3710, %146
  %3714 = fsub fast float %3711, %3559
  %3715 = fsub fast float %3712, %3560
  %3716 = fsub fast float %3713, %3561
  br label %3724

; <label>:3717                                    ; preds = %3659
  %3718 = fmul fast float %2347, 8.096000e+03
  %3719 = fmul fast float %2348, 8.096000e+03
  %3720 = fmul fast float %2349, 8.096000e+03
  %3721 = fadd fast float %3718, %144
  %3722 = fadd fast float %3719, %145
  %3723 = fadd fast float %3720, %146
  br label %3724

; <label>:3724                                    ; preds = %3717, %3660
  %3725 = phi float [ %2347, %3717 ], [ %3714, %3660 ]
  %3726 = phi float [ %2348, %3717 ], [ %3715, %3660 ]
  %3727 = phi float [ %2349, %3717 ], [ %3716, %3660 ]
  %3728 = phi float [ %3721, %3717 ], [ %3711, %3660 ]
  %3729 = phi float [ %3722, %3717 ], [ %3712, %3660 ]
  %3730 = phi float [ %3723, %3717 ], [ %3713, %3660 ]
  %3731 = fcmp fast olt float %3578, 1.000000e+00
  br i1 %3731, label %3732, label %3763, !dx.controlflow.hints !122

; <label>:3732                                    ; preds = %3724
  %3733 = fmul fast float %3727, %3576
  %3734 = fmul fast float %3726, %3577
  %3735 = fsub fast float %3733, %3734
  %3736 = fmul fast float %3725, %3577
  %3737 = fmul fast float %3727, %3575
  %3738 = fsub fast float %3736, %3737
  %3739 = fmul fast float %3726, %3575
  %3740 = fmul fast float %3725, %3576
  %3741 = fsub fast float %3739, %3740
  %3742 = fmul fast float %3735, 2.000000e+00
  %3743 = fmul fast float %3738, 2.000000e+00
  %3744 = fmul fast float %3741, 2.000000e+00
  %3745 = fmul fast float %3742, %3578
  %3746 = fmul fast float %3743, %3578
  %3747 = fmul fast float %3744, %3578
  %3748 = fmul fast float %3744, %3576
  %3749 = fmul fast float %3743, %3577
  %3750 = fmul fast float %3742, %3577
  %3751 = fmul fast float %3744, %3575
  %3752 = fmul fast float %3743, %3575
  %3753 = fmul fast float %3742, %3576
  %3754 = fadd fast float %3748, %3725
  %3755 = fadd fast float %3754, %3745
  %3756 = fsub fast float %3755, %3749
  %3757 = fsub fast float %3726, %3751
  %3758 = fadd fast float %3757, %3746
  %3759 = fadd fast float %3758, %3750
  %3760 = fadd fast float %3747, %3727
  %3761 = fsub fast float %3760, %3753
  %3762 = fadd fast float %3761, %3752
  br label %3763

; <label>:3763                                    ; preds = %3732, %3724
  %3764 = phi float [ %3756, %3732 ], [ %3725, %3724 ]
  %3765 = phi float [ %3759, %3732 ], [ %3726, %3724 ]
  %3766 = phi float [ %3762, %3732 ], [ %3727, %3724 ]
  br i1 %3604, label %3798, label %3767

; <label>:3767                                    ; preds = %3763
  %3768 = fmul fast float %2283, 0x400187C840000000
  %3769 = fadd fast float %3768, 0xC00EFC2120000000
  %3770 = fmul fast float %3769, %2283
  %3771 = fadd fast float %3770, 0x3FE5D16340000000
  %3772 = fmul fast float %3771, %2283
  %3773 = fadd fast float %3772, 1.000000e+00
  %3774 = call float @dx.op.unary.f32(i32 7, float %3773)  ; Saturate(value)
  %3775 = fsub fast float %3728, %144
  %3776 = fsub fast float %3729, %145
  %3777 = fsub fast float %3730, %146
  %3778 = fsub fast float %3728, %3559
  %3779 = fsub fast float %3729, %3560
  %3780 = fsub fast float %3730, %3561
  %3781 = call float @dx.op.dot3.f32(i32 55, float %3775, float %3776, float %3777, float %3775, float %3776, float %3777)  ; Dot3(ax,ay,az,bx,by,bz)
  %3782 = call float @dx.op.dot3.f32(i32 55, float %3778, float %3779, float %3780, float %3778, float %3779, float %3780)  ; Dot3(ax,ay,az,bx,by,bz)
  %3783 = fadd fast float %3782, 0x3EE4F8B580000000
  %3784 = fdiv fast float %3781, %3783
  %3785 = bitcast float %3784 to i32
  %3786 = ashr i32 %3785, 1
  %3787 = add nsw i32 %3786, 532487669
  %3788 = bitcast i32 %3787 to float
  %3789 = fmul fast float %3788, %3774
  %3790 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  %3791 = fmul fast float %3790, 0x4009981AE0000000
  %3792 = fsub fast float 0x40111BBD80000000, %3791
  %3793 = fmul fast float %3792, %3790
  %3794 = fadd fast float %3793, 0xC0009F6020000000
  %3795 = fmul fast float %3794, %3790
  %3796 = fadd fast float %3795, 1.000000e+00
  %3797 = call float @dx.op.unary.f32(i32 7, float %3796)  ; Saturate(value)
  br label %3801

; <label>:3798                                    ; preds = %3763
  %3799 = icmp ne i32 %3605, -1
  %3800 = zext i1 %3799 to i32
  br label %3801

; <label>:3801                                    ; preds = %3798, %3767
  %3802 = phi float [ %2283, %3798 ], [ %3797, %3767 ]
  %3803 = phi i32 [ %3800, %3798 ], [ 0, %3767 ]
  %3804 = fmul float %3802, 5.000000e+00
  %3805 = fsub float 5.000000e+00, %3804
  %3806 = icmp ne i32 %3803, 0
  %3807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3808 = extractvalue %dx.types.CBufRet.f32 %3807, 3
  %3809 = fadd fast float %3808, %3805
  %3810 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3809)  ; FMax(a,b)
  %3811 = call float @dx.op.unary.f32(i32 6, float %3764)  ; FAbs(value)
  %3812 = call float @dx.op.unary.f32(i32 6, float %3765)  ; FAbs(value)
  %3813 = fadd fast float %3812, %3811
  %3814 = call float @dx.op.unary.f32(i32 6, float %3766)  ; FAbs(value)
  %3815 = fadd fast float %3813, %3814
  %3816 = fcmp fast oeq float %3815, 0.000000e+00
  %3817 = fdiv fast float 1.000000e+00, %3815
  %3818 = select i1 %3816, float 1.000000e+00, float %3817
  %3819 = fmul fast float %3818, %3764
  %3820 = fmul fast float %3818, %3765
  %3821 = call float @dx.op.unary.f32(i32 6, float %3820)  ; FAbs(value)
  %3822 = call float @dx.op.unary.f32(i32 6, float %3819)  ; FAbs(value)
  %3823 = fsub fast float 1.000000e+00, %3821
  %3824 = fsub fast float 1.000000e+00, %3822
  %3825 = fcmp fast oge float %3819, 0.000000e+00
  %3826 = fcmp fast oge float %3820, 0.000000e+00
  %3827 = select i1 %3825, float 1.000000e+00, float -1.000000e+00
  %3828 = select i1 %3826, float 1.000000e+00, float -1.000000e+00
  %3829 = fcmp fast ole float %3766, 0.000000e+00
  %3830 = fmul fast float %3827, %3823
  %3831 = fmul fast float %3828, %3824
  %3832 = select i1 %3829, float %3830, float %3819
  %3833 = select i1 %3829, float %3831, float %3820
  %3834 = fmul fast float %3832, 5.000000e-01
  %3835 = fmul fast float %3833, 5.000000e-01
  %3836 = fadd fast float %3834, 5.000000e-01
  %3837 = fadd fast float %3835, 5.000000e-01
  %3838 = uitofp i32 %3602 to float
  %3839 = call float @dx.op.binary.f32(i32 36, float %3810, float 3.000000e+00)  ; FMin(a,b)
  %3840 = fadd fast float %3839, 2.000000e+00
  %3841 = call float @dx.op.unary.f32(i32 21, float %3840)  ; Exp(value)
  %3842 = extractvalue %dx.types.CBufRet.f32 %3807, 1
  %3843 = fmul fast float %3842, %3841
  %3844 = fmul fast float %3843, 2.000000e+00
  %3845 = fsub fast float 1.000000e+00, %3844
  %3846 = fmul fast float %3836, %3845
  %3847 = fmul fast float %3837, %3845
  %3848 = fadd fast float %3846, %3843
  %3849 = fadd fast float %3847, %3843
  %3850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %56, float %3848, float %3849, float %3838, float undef, i32 0, i32 0, i32 undef, float %3810)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3851 = extractvalue %dx.types.ResRet.f32 %3850, 0
  %3852 = extractvalue %dx.types.ResRet.f32 %3850, 1
  %3853 = extractvalue %dx.types.ResRet.f32 %3850, 2
  %3854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3855 = extractvalue %dx.types.CBufRet.f32 %3854, 3
  %3856 = fmul fast float %3855, %3572
  %3857 = call float @dx.op.binary.f32(i32 36, float %2956, float %3856)  ; FMin(a,b)
  %3858 = select i1 %3806, float %3857, float %3856
  %3859 = fmul fast float %3851, %3651
  %3860 = fmul fast float %3859, %3858
  %3861 = fmul fast float %3852, %3651
  %3862 = fmul fast float %3861, %3858
  %3863 = fmul fast float %3853, %3651
  %3864 = fmul fast float %3863, %3858
  %3865 = fadd fast float %3860, %3547
  %3866 = fadd fast float %3862, %3548
  %3867 = fadd fast float %3864, %3549
  %3868 = fsub fast float %3550, %3651
  br label %3653

; <label>:3869                                    ; preds = %3653
  br label %3870

; <label>:3870                                    ; preds = %3869, %3516
  %3871 = phi float [ %3517, %3516 ], [ %3654, %3869 ]
  %3872 = phi float [ %3518, %3516 ], [ %3655, %3869 ]
  %3873 = phi float [ %3519, %3516 ], [ %3656, %3869 ]
  %3874 = phi float [ %3520, %3516 ], [ %3657, %3869 ]
  %3875 = add i32 %3521, 1
  %3876 = icmp ugt i32 %3875, %3513
  br i1 %3876, label %3877, label %3516, !llvm.loop !123

; <label>:3877                                    ; preds = %3870
  br label %3878

; <label>:3878                                    ; preds = %3877, %3464
  %3879 = phi float [ 0.000000e+00, %3464 ], [ %3871, %3877 ]
  %3880 = phi float [ 0.000000e+00, %3464 ], [ %3872, %3877 ]
  %3881 = phi float [ 0.000000e+00, %3464 ], [ %3873, %3877 ]
  %3882 = call float @dx.op.dot3.f32(i32 55, float %3879, float %3880, float %3881, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3883 = select i1 %2335, float 0.000000e+00, float %3879
  %3884 = select i1 %2335, float %3882, float %3880
  %3885 = select i1 %2335, float 0.000000e+00, float %3881
  %3886 = fcmp fast olt float %3458, 0.000000e+00
  %3887 = call float @dx.op.unary.f32(i32 6, float %3458)  ; FAbs(value)
  %3888 = fmul fast float %3887, %3459
  %3889 = fmul fast float %3887, %3460
  %3890 = fmul fast float %3887, %3461
  %3891 = select i1 %3886, float %3459, float %3888
  %3892 = select i1 %3886, float %3460, float %3889
  %3893 = select i1 %3886, float %3461, float %3890
  %3894 = fsub fast float 1.000000e+00, %3887
  %3895 = call float @dx.op.unary.f32(i32 7, float %3894)  ; Saturate(value)
  %3896 = fmul fast float %3895, %3883
  %3897 = fmul fast float %3895, %3884
  %3898 = fmul fast float %3895, %3885
  %3899 = fadd fast float %3891, %3896
  %3900 = fadd fast float %3892, %3897
  %3901 = fadd fast float %3893, %3898
  br label %3902

; <label>:3902                                    ; preds = %3878, %3457
  %3903 = phi float [ %3459, %3457 ], [ %3899, %3878 ]
  %3904 = phi float [ %3460, %3457 ], [ %3900, %3878 ]
  %3905 = phi float [ %3461, %3457 ], [ %3901, %3878 ]
  %3906 = fmul fast float %3165, %3179
  %3907 = fmul fast float %3166, %3179
  %3908 = fmul fast float %3167, %3179
  %3909 = fmul fast float %3903, %3174
  %3910 = fmul fast float %3904, %3175
  %3911 = fmul fast float %3905, %3176
  %3912 = fadd fast float %3909, %2164
  %3913 = fadd fast float %3910, %2165
  %3914 = fadd fast float %3911, %2166
  %3915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3916 = extractvalue %dx.types.CBufRet.f32 %3915, 3
  %3917 = fcmp fast oeq float %3916, 0.000000e+00
  br i1 %3917, label %5650, label %3918

; <label>:3918                                    ; preds = %3902
  %3919 = extractvalue %dx.types.CBufRet.f32 %3915, 0
  %3920 = extractvalue %dx.types.CBufRet.f32 %3915, 1
  %3921 = extractvalue %dx.types.CBufRet.f32 %3915, 2
  %3922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3923 = extractvalue %dx.types.CBufRet.f32 %3922, 0
  %3924 = extractvalue %dx.types.CBufRet.f32 %3922, 1
  %3925 = extractvalue %dx.types.CBufRet.f32 %3922, 2
  %3926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3927 = extractvalue %dx.types.CBufRet.f32 %3926, 0
  %3928 = extractvalue %dx.types.CBufRet.f32 %3926, 1
  %3929 = call float @dx.op.dot3.f32(i32 55, float %3923, float %3924, float %3925, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3930 = select i1 %2335, float %3927, float %3923
  %3931 = select i1 %2335, float %3929, float %3924
  %3932 = select i1 %2335, float %3928, float %3925
  %3933 = fcmp fast olt float %3916, 0.000000e+00
  br i1 %3933, label %5308, label %3934

; <label>:3934                                    ; preds = %3918
  %3935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3936 = extractvalue %dx.types.CBufRet.f32 %3935, 0
  %3937 = extractvalue %dx.types.CBufRet.f32 %3935, 1
  %3938 = extractvalue %dx.types.CBufRet.f32 %3935, 2
  %3939 = extractvalue %dx.types.CBufRet.f32 %3935, 3
  %3940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3941 = extractvalue %dx.types.CBufRet.f32 %3940, 0
  %3942 = extractvalue %dx.types.CBufRet.f32 %3940, 1
  %3943 = extractvalue %dx.types.CBufRet.f32 %3940, 2
  %3944 = extractvalue %dx.types.CBufRet.f32 %3940, 3
  %3945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3946 = extractvalue %dx.types.CBufRet.f32 %3945, 0
  %3947 = extractvalue %dx.types.CBufRet.f32 %3945, 1
  %3948 = extractvalue %dx.types.CBufRet.f32 %3945, 2
  %3949 = extractvalue %dx.types.CBufRet.f32 %3945, 3
  %3950 = fmul fast float %3936, %144
  %3951 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3937, float %3950)  ; FMad(a,b,c)
  %3952 = call float @dx.op.tertiary.f32(i32 46, float %146, float %3938, float %3951)  ; FMad(a,b,c)
  %3953 = fadd fast float %3952, %3939
  %3954 = fmul fast float %3941, %144
  %3955 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3942, float %3954)  ; FMad(a,b,c)
  %3956 = call float @dx.op.tertiary.f32(i32 46, float %146, float %3943, float %3955)  ; FMad(a,b,c)
  %3957 = fadd fast float %3956, %3944
  %3958 = fmul fast float %3946, %144
  %3959 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3947, float %3958)  ; FMad(a,b,c)
  %3960 = call float @dx.op.tertiary.f32(i32 46, float %146, float %3948, float %3959)  ; FMad(a,b,c)
  %3961 = fadd fast float %3960, %3949
  %3962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3963 = extractvalue %dx.types.CBufRet.f32 %3962, 0
  %3964 = extractvalue %dx.types.CBufRet.f32 %3962, 1
  %3965 = extractvalue %dx.types.CBufRet.f32 %3962, 3
  %3966 = fmul fast float %3965, %3953
  %3967 = fmul fast float %3965, %3957
  %3968 = fadd fast float %3966, %3963
  %3969 = fadd fast float %3967, %3964
  %3970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3971 = extractvalue %dx.types.CBufRet.f32 %3970, 0
  %3972 = extractvalue %dx.types.CBufRet.f32 %3970, 1
  %3973 = extractvalue %dx.types.CBufRet.f32 %3970, 3
  %3974 = fmul fast float %3973, %3953
  %3975 = fmul fast float %3973, %3957
  %3976 = fadd fast float %3974, %3971
  %3977 = fadd fast float %3975, %3972
  %3978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3979 = extractvalue %dx.types.CBufRet.f32 %3978, 1
  %3980 = fsub fast float %3979, %3961
  %3981 = extractvalue %dx.types.CBufRet.f32 %3978, 2
  %3982 = fmul fast float %3980, %3981
  %3983 = fsub fast float 1.000000e+00, %3982
  %3984 = call float @dx.op.unary.f32(i32 7, float %3983)  ; Saturate(value)
  %3985 = extractvalue %dx.types.CBufRet.f32 %3970, 2
  %3986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3987 = extractvalue %dx.types.CBufRet.f32 %3986, 2
  %3988 = fadd fast float %3987, %3985
  %3989 = fcmp fast ogt float %3988, 0.000000e+00
  br i1 %3989, label %3990, label %4015

; <label>:3990                                    ; preds = %3934
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 0
  %3993 = extractvalue %dx.types.CBufRet.f32 %3991, 1
  %3994 = fsub fast float %3976, %3992
  %3995 = fsub fast float %3977, %3993
  %3996 = fcmp fast olt float %3994, 0.000000e+00
  %3997 = fcmp fast olt float %3995, 0.000000e+00
  %3998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.f32 %3998, 0
  %4000 = extractvalue %dx.types.CBufRet.f32 %3998, 1
  %4001 = extractvalue %dx.types.CBufRet.f32 %3998, 2
  %4002 = extractvalue %dx.types.CBufRet.f32 %3998, 3
  %4003 = select i1 %3996, float %3999, float %4001
  %4004 = select i1 %3997, float %4000, float %4002
  %4005 = fmul fast float %4003, %3994
  %4006 = fmul fast float %4004, %3995
  %4007 = call float @dx.op.unary.f32(i32 6, float %4005)  ; FAbs(value)
  %4008 = call float @dx.op.unary.f32(i32 6, float %4006)  ; FAbs(value)
  %4009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4010 = extractvalue %dx.types.CBufRet.f32 %4009, 0
  %4011 = call float @dx.op.binary.f32(i32 35, float %4007, float %4008)  ; FMax(a,b)
  %4012 = fsub fast float %4010, %4011
  %4013 = call float @dx.op.unary.f32(i32 7, float %4012)  ; Saturate(value)
  %4014 = fmul fast float %4013, %3984
  br label %4015

; <label>:4015                                    ; preds = %3990, %3934
  %4016 = phi float [ %4014, %3990 ], [ 0.000000e+00, %3934 ]
  %4017 = extractvalue %dx.types.CBufRet.f32 %3962, 2
  %4018 = extractvalue %dx.types.CBufRet.f32 %3986, 1
  %4019 = fadd fast float %4018, %4017
  %4020 = fcmp fast ogt float %4019, 0.000000e+00
  br i1 %4020, label %4021, label %4046

; <label>:4021                                    ; preds = %4015
  %4022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4023 = extractvalue %dx.types.CBufRet.f32 %4022, 0
  %4024 = extractvalue %dx.types.CBufRet.f32 %4022, 1
  %4025 = fsub fast float %3968, %4023
  %4026 = fsub fast float %3969, %4024
  %4027 = fcmp fast olt float %4025, 0.000000e+00
  %4028 = fcmp fast olt float %4026, 0.000000e+00
  %4029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.f32 %4029, 0
  %4031 = extractvalue %dx.types.CBufRet.f32 %4029, 1
  %4032 = extractvalue %dx.types.CBufRet.f32 %4029, 2
  %4033 = extractvalue %dx.types.CBufRet.f32 %4029, 3
  %4034 = select i1 %4027, float %4030, float %4032
  %4035 = select i1 %4028, float %4031, float %4033
  %4036 = fmul fast float %4034, %4025
  %4037 = fmul fast float %4035, %4026
  %4038 = call float @dx.op.unary.f32(i32 6, float %4036)  ; FAbs(value)
  %4039 = call float @dx.op.unary.f32(i32 6, float %4037)  ; FAbs(value)
  %4040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.f32 %4040, 0
  %4042 = call float @dx.op.binary.f32(i32 35, float %4038, float %4039)  ; FMax(a,b)
  %4043 = fsub fast float %4041, %4042
  %4044 = call float @dx.op.unary.f32(i32 7, float %4043)  ; Saturate(value)
  %4045 = fmul fast float %4044, %3984
  br label %4046

; <label>:4046                                    ; preds = %4021, %4015
  %4047 = phi float [ %4045, %4021 ], [ 0.000000e+00, %4015 ]
  %4048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4049 = extractvalue %dx.types.CBufRet.f32 %4048, 1
  %4050 = call float @dx.op.unary.f32(i32 7, float %4049)  ; Saturate(value)
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 0
  %4053 = extractvalue %dx.types.CBufRet.f32 %4051, 1
  %4054 = fsub fast float %3953, %4052
  %4055 = fsub fast float %3957, %4053
  %4056 = fcmp fast olt float %4054, 0.000000e+00
  %4057 = fcmp fast olt float %4055, 0.000000e+00
  %4058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4059 = extractvalue %dx.types.CBufRet.f32 %4058, 0
  %4060 = extractvalue %dx.types.CBufRet.f32 %4058, 1
  %4061 = extractvalue %dx.types.CBufRet.f32 %4058, 2
  %4062 = extractvalue %dx.types.CBufRet.f32 %4058, 3
  %4063 = select i1 %4056, float %4059, float %4061
  %4064 = select i1 %4057, float %4060, float %4062
  %4065 = fmul fast float %4063, %4054
  %4066 = fmul fast float %4064, %4055
  %4067 = call float @dx.op.unary.f32(i32 6, float %4065)  ; FAbs(value)
  %4068 = call float @dx.op.unary.f32(i32 6, float %4066)  ; FAbs(value)
  %4069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4070 = extractvalue %dx.types.CBufRet.f32 %4069, 0
  %4071 = call float @dx.op.binary.f32(i32 35, float %4067, float %4068)  ; FMax(a,b)
  %4072 = fsub fast float %4070, %4071
  %4073 = call float @dx.op.unary.f32(i32 7, float %4072)  ; Saturate(value)
  %4074 = call float @dx.op.binary.f32(i32 36, float %4073, float %4050)  ; FMin(a,b)
  %4075 = fmul fast float %4074, %3984
  %4076 = fsub fast float %4047, %4075
  %4077 = fsub fast float %4016, %4047
  %4078 = fsub fast float %4077, %4075
  %4079 = call float @dx.op.binary.f32(i32 35, float %4047, float %4016)  ; FMax(a,b)
  %4080 = call float @dx.op.binary.f32(i32 35, float %4075, float %4079)  ; FMax(a,b)
  %4081 = fcmp fast olt float %4080, 1.000000e+00
  br i1 %4081, label %4082, label %4753, !dx.controlflow.hints !124

; <label>:4082                                    ; preds = %4046
  %4083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4084 = extractvalue %dx.types.CBufRet.f32 %4083, 0
  %4085 = fcmp fast une float %4084, 0.000000e+00
  br i1 %4085, label %4086, label %4753, !dx.controlflow.hints !125

; <label>:4086                                    ; preds = %4082
  %4087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4088 = extractvalue %dx.types.CBufRet.f32 %4087, 0
  %4089 = extractvalue %dx.types.CBufRet.f32 %4087, 1
  %4090 = extractvalue %dx.types.CBufRet.f32 %4087, 2
  %4091 = extractvalue %dx.types.CBufRet.f32 %4087, 3
  %4092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4093 = extractvalue %dx.types.CBufRet.f32 %4092, 0
  %4094 = extractvalue %dx.types.CBufRet.f32 %4092, 1
  %4095 = extractvalue %dx.types.CBufRet.f32 %4092, 2
  %4096 = extractvalue %dx.types.CBufRet.f32 %4092, 3
  %4097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.f32 %4097, 0
  %4099 = extractvalue %dx.types.CBufRet.f32 %4097, 1
  %4100 = extractvalue %dx.types.CBufRet.f32 %4097, 2
  %4101 = extractvalue %dx.types.CBufRet.f32 %4097, 3
  %4102 = fmul fast float %4088, %144
  %4103 = call float @dx.op.tertiary.f32(i32 46, float %145, float %4089, float %4102)  ; FMad(a,b,c)
  %4104 = call float @dx.op.tertiary.f32(i32 46, float %146, float %4090, float %4103)  ; FMad(a,b,c)
  %4105 = fadd fast float %4104, %4091
  %4106 = fmul fast float %4093, %144
  %4107 = call float @dx.op.tertiary.f32(i32 46, float %145, float %4094, float %4106)  ; FMad(a,b,c)
  %4108 = call float @dx.op.tertiary.f32(i32 46, float %146, float %4095, float %4107)  ; FMad(a,b,c)
  %4109 = fadd fast float %4108, %4096
  %4110 = fmul fast float %4098, %144
  %4111 = call float @dx.op.tertiary.f32(i32 46, float %145, float %4099, float %4110)  ; FMad(a,b,c)
  %4112 = call float @dx.op.tertiary.f32(i32 46, float %146, float %4100, float %4111)  ; FMad(a,b,c)
  %4113 = fadd fast float %4112, %4101
  %4114 = fcmp fast oge float %4105, 1.000000e+00
  %4115 = fcmp fast oge float %4109, 1.000000e+00
  %4116 = or i1 %4114, %4115
  %4117 = fcmp fast olt float %4105, 0.000000e+00
  %4118 = fcmp fast olt float %4109, 0.000000e+00
  %4119 = or i1 %4117, %4118
  %4120 = or i1 %4116, %4119
  br i1 %4120, label %4753, label %4121, !dx.controlflow.hints !126

; <label>:4121                                    ; preds = %4086
  %4122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4122, 0
  %4124 = extractvalue %dx.types.CBufRet.f32 %4122, 1
  %4125 = extractvalue %dx.types.CBufRet.f32 %4122, 2
  %4126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4127 = extractvalue %dx.types.CBufRet.f32 %4126, 1
  %4128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.i32 %4128, 2
  %4130 = uitofp i32 %4129 to float
  %4131 = extractvalue %dx.types.CBufRet.i32 %4128, 3
  %4132 = uitofp i32 %4131 to float
  %4133 = extractvalue %dx.types.CBufRet.f32 %4122, 3
  %4134 = fmul fast float %4133, 2.000000e+00
  %4135 = fsub fast float %4105, %4123
  %4136 = fsub fast float %4109, %4124
  %4137 = fmul fast float %4134, %4135
  %4138 = fmul fast float %4134, %4136
  %4139 = fdiv fast float 1.000000e+00, %3921
  %4140 = fmul fast float %4138, %4139
  %4141 = call float @dx.op.unary.f32(i32 6, float %4140)  ; FAbs(value)
  %4142 = fmul fast float %4125, %146
  %4143 = fmul fast float %4142, %4134
  %4144 = call float @dx.op.unary.f32(i32 6, float %4143)  ; FAbs(value)
  %4145 = call float @dx.op.unary.f32(i32 6, float %4137)  ; FAbs(value)
  %4146 = call float @dx.op.binary.f32(i32 35, float %4144, float %4141)  ; FMax(a,b)
  %4147 = call float @dx.op.binary.f32(i32 35, float %4145, float %4146)  ; FMax(a,b)
  %4148 = fmul fast float %4147, 2.000000e+00
  %4149 = call float @dx.op.unary.f32(i32 23, float %4148)  ; Log(value)
  %4150 = call float @dx.op.binary.f32(i32 35, float %4149, float %4130)  ; FMax(a,b)
  %4151 = call float @dx.op.unary.f32(i32 22, float %4150)  ; Frc(value)
  %4152 = fadd fast float %4151, 0xBFEA666660000000
  %4153 = fmul fast float %4152, 8.000000e+00
  %4154 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4155 = call float @dx.op.unary.f32(i32 27, float %4150)  ; Round_ni(value)
  %4156 = fadd fast float %4155, %4154
  %4157 = call float @dx.op.binary.f32(i32 36, float %4156, float %4132)  ; FMin(a,b)
  %4158 = call float @dx.op.unary.f32(i32 27, float %4157)  ; Round_ni(value)
  %4159 = fsub fast float -0.000000e+00, %4158
  %4160 = call float @dx.op.unary.f32(i32 21, float %4159)  ; Exp(value)
  %4161 = fmul fast float %4160, %4134
  %4162 = fmul fast float %4161, %4105
  %4163 = fmul fast float %4161, %4109
  %4164 = fmul fast float %4162, 5.000000e-01
  %4165 = fmul fast float %4163, 5.000000e-01
  %4166 = fadd fast float %4164, 5.000000e-01
  %4167 = fadd fast float %4165, 5.000000e-01
  %4168 = fmul fast float %4162, 2.500000e-01
  %4169 = fmul fast float %4163, 2.500000e-01
  %4170 = fadd fast float %4168, 5.000000e-01
  %4171 = fadd fast float %4169, 5.000000e-01
  %4172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4173 = extractvalue %dx.types.ResRet.i32 %4172, 0
  %4174 = and i32 %4173, 536870911
  %4175 = lshr i32 %4174, 9
  %4176 = uitofp i32 %4175 to float
  %4177 = fmul fast float %4176, %4105
  %4178 = fmul fast float %4176, %4109
  %4179 = call float @dx.op.unary.f32(i32 22, float %4177)  ; Frc(value)
  %4180 = call float @dx.op.unary.f32(i32 22, float %4178)  ; Frc(value)
  %4181 = call float @dx.op.unary.f32(i32 22, float %4154)  ; Frc(value)
  %4182 = fcmp fast une float %4181, 0.000000e+00
  br i1 %4182, label %4183, label %4281, !dx.controlflow.hints !127

; <label>:4183                                    ; preds = %4121
  %4184 = call float @dx.op.unary.f32(i32 21, float %4155)  ; Exp(value)
  %4185 = fmul fast float %4184, 1.953125e-03
  %4186 = fcmp fast olt float %4179, %4185
  %4187 = fcmp fast olt float %4180, %4185
  %4188 = or i1 %4186, %4187
  %4189 = fsub fast float 1.000000e+00, %4185
  %4190 = fcmp fast ogt float %4179, %4189
  %4191 = fcmp fast ogt float %4180, %4189
  %4192 = or i1 %4190, %4191
  %4193 = or i1 %4188, %4192
  br i1 %4193, label %4194, label %4360, !dx.controlflow.hints !128

; <label>:4194                                    ; preds = %4183
  %4195 = fmul fast float %4127, 5.000000e-01
  %4196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.i32 %4196, 0
  %4198 = fmul fast float %4109, 3.530000e+02
  %4199 = uitofp i32 %4174 to float
  %4200 = fmul fast float %4198, %4199
  %4201 = fmul fast float %4105, 6.130000e+02
  %4202 = fadd fast float %4200, %4201
  %4203 = fptoui float %4202 to i32
  %4204 = add i32 %4197, %4203
  %4205 = mul i32 %4204, -63
  %4206 = lshr i32 %4205, 17
  %4207 = xor i32 %4206, %4205
  %4208 = mul i32 %4207, -511
  %4209 = mul i32 %4207, -8176
  %4210 = xor i32 %4208, %4209
  %4211 = mul i32 %4210, -7
  %4212 = mul i32 %4210, -7168
  %4213 = xor i32 %4211, %4212
  %4214 = lshr i32 %4213, 15
  %4215 = xor i32 %4214, %4211
  %4216 = and i32 %4215, 15
  %4217 = mul i32 %4216, 2
  %4218 = add i32 0, %4217
  %4219 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %4218
  %4220 = load float, float* %4219, align 4
  %4221 = mul i32 %4216, 2
  %4222 = add i32 1, %4221
  %4223 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %4222
  %4224 = load float, float* %4223, align 4
  %4225 = fmul fast float %4109, 2.770000e+02
  %4226 = fmul fast float %4225, %4199
  %4227 = fmul fast float %4105, 5.990000e+02
  %4228 = fadd fast float %4226, %4227
  %4229 = fptoui float %4228 to i32
  %4230 = mul i32 %4229, -63
  %4231 = lshr i32 %4230, 17
  %4232 = xor i32 %4231, %4230
  %4233 = mul i32 %4232, -511
  %4234 = mul i32 %4232, -8176
  %4235 = xor i32 %4233, %4234
  %4236 = mul i32 %4235, -7
  %4237 = mul i32 %4235, -7168
  %4238 = xor i32 %4236, %4237
  %4239 = lshr i32 %4238, 15
  %4240 = xor i32 %4239, %4236
  %4241 = and i32 %4240, 63
  %4242 = mul i32 %4241, 2
  %4243 = add i32 0, %4242
  %4244 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %4243
  %4245 = load float, float* %4244, align 4
  %4246 = mul i32 %4241, 2
  %4247 = add i32 1, %4246
  %4248 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %4247
  %4249 = load float, float* %4248, align 4
  %4250 = call float @dx.op.dot2.f32(i32 54, float %4220, float %4224, float %4245, float %4249)  ; Dot2(ax,ay,bx,by)
  %4251 = fsub fast float -0.000000e+00, %4245
  %4252 = call float @dx.op.dot2.f32(i32 54, float %4220, float %4224, float %4251, float %4249)  ; Dot2(ax,ay,bx,by)
  %4253 = fmul fast float %4250, %4195
  %4254 = fmul fast float %4252, %4195
  %4255 = fdiv fast float 2.000000e+00, %4161
  %4256 = fmul fast float %4184, 9.765625e-04
  %4257 = fcmp fast olt float %4179, %4256
  %4258 = fcmp fast olt float %4180, %4256
  %4259 = or i1 %4257, %4258
  %4260 = fsub fast float 1.000000e+00, %4256
  %4261 = fcmp fast ogt float %4179, %4260
  %4262 = fcmp fast ogt float %4180, %4260
  %4263 = or i1 %4261, %4262
  %4264 = or i1 %4259, %4263
  %4265 = fmul fast float %4253, 2.000000e+00
  br i1 %4264, label %4266, label %4270

; <label>:4266                                    ; preds = %4194
  %4267 = fmul fast float %4254, 2.000000e+00
  %4268 = fadd fast float %4265, %4166
  %4269 = fadd fast float %4267, %4167
  br label %4270

; <label>:4270                                    ; preds = %4266, %4194
  %4271 = phi float [ %4268, %4266 ], [ %4166, %4194 ]
  %4272 = phi float [ %4269, %4266 ], [ %4167, %4194 ]
  %4273 = phi i32 [ 3, %4266 ], [ 2, %4194 ]
  %4274 = fadd fast float %4253, %4170
  %4275 = fadd fast float %4254, %4171
  %4276 = fmul fast float %4265, %4255
  %4277 = fmul fast float %4255, 2.000000e+00
  %4278 = fmul fast float %4277, %4254
  %4279 = fadd fast float %4276, %4105
  %4280 = fadd fast float %4278, %4109
  br label %4360

; <label>:4281                                    ; preds = %4121
  %4282 = call float @dx.op.unary.f32(i32 21, float %4158)  ; Exp(value)
  %4283 = fmul fast float %4282, 9.765625e-04
  %4284 = fcmp fast olt float %4179, %4283
  %4285 = fcmp fast olt float %4180, %4283
  %4286 = or i1 %4284, %4285
  %4287 = fsub fast float 1.000000e+00, %4283
  %4288 = fcmp fast ogt float %4179, %4287
  %4289 = fcmp fast ogt float %4180, %4287
  %4290 = or i1 %4288, %4289
  %4291 = or i1 %4286, %4290
  br i1 %4291, label %4292, label %4360, !dx.controlflow.hints !129

; <label>:4292                                    ; preds = %4281
  %4293 = fmul fast float %4127, 5.000000e-01
  %4294 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4295 = extractvalue %dx.types.CBufRet.i32 %4294, 0
  %4296 = fmul fast float %4109, 3.530000e+02
  %4297 = uitofp i32 %4174 to float
  %4298 = fmul fast float %4296, %4297
  %4299 = fmul fast float %4105, 6.130000e+02
  %4300 = fadd fast float %4298, %4299
  %4301 = fptoui float %4300 to i32
  %4302 = add i32 %4295, %4301
  %4303 = mul i32 %4302, -63
  %4304 = lshr i32 %4303, 17
  %4305 = xor i32 %4304, %4303
  %4306 = mul i32 %4305, -511
  %4307 = mul i32 %4305, -8176
  %4308 = xor i32 %4306, %4307
  %4309 = mul i32 %4308, -7
  %4310 = mul i32 %4308, -7168
  %4311 = xor i32 %4309, %4310
  %4312 = lshr i32 %4311, 15
  %4313 = xor i32 %4312, %4309
  %4314 = and i32 %4313, 15
  %4315 = mul i32 %4314, 2
  %4316 = add i32 0, %4315
  %4317 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %4316
  %4318 = load float, float* %4317, align 4
  %4319 = mul i32 %4314, 2
  %4320 = add i32 1, %4319
  %4321 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %4320
  %4322 = load float, float* %4321, align 4
  %4323 = fmul fast float %4109, 2.770000e+02
  %4324 = fmul fast float %4323, %4297
  %4325 = fmul fast float %4105, 5.990000e+02
  %4326 = fadd fast float %4324, %4325
  %4327 = fptoui float %4326 to i32
  %4328 = mul i32 %4327, -63
  %4329 = lshr i32 %4328, 17
  %4330 = xor i32 %4329, %4328
  %4331 = mul i32 %4330, -511
  %4332 = mul i32 %4330, -8176
  %4333 = xor i32 %4331, %4332
  %4334 = mul i32 %4333, -7
  %4335 = mul i32 %4333, -7168
  %4336 = xor i32 %4334, %4335
  %4337 = lshr i32 %4336, 15
  %4338 = xor i32 %4337, %4334
  %4339 = and i32 %4338, 63
  %4340 = mul i32 %4339, 2
  %4341 = add i32 0, %4340
  %4342 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %4341
  %4343 = load float, float* %4342, align 4
  %4344 = mul i32 %4339, 2
  %4345 = add i32 1, %4344
  %4346 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %4345
  %4347 = load float, float* %4346, align 4
  %4348 = call float @dx.op.dot2.f32(i32 54, float %4318, float %4322, float %4343, float %4347)  ; Dot2(ax,ay,bx,by)
  %4349 = fsub fast float -0.000000e+00, %4343
  %4350 = call float @dx.op.dot2.f32(i32 54, float %4318, float %4322, float %4349, float %4347)  ; Dot2(ax,ay,bx,by)
  %4351 = fmul fast float %4348, %4293
  %4352 = fmul fast float %4350, %4293
  %4353 = fadd fast float %4351, %4166
  %4354 = fadd fast float %4352, %4167
  %4355 = fdiv fast float 2.000000e+00, %4161
  %4356 = fmul fast float %4355, %4351
  %4357 = fmul fast float %4352, %4355
  %4358 = fadd fast float %4356, %4105
  %4359 = fadd fast float %4357, %4109
  br label %4360

; <label>:4360                                    ; preds = %4292, %4281, %4270, %4183
  %4361 = phi float [ %4274, %4270 ], [ %4170, %4183 ], [ %4170, %4292 ], [ %4170, %4281 ]
  %4362 = phi float [ %4275, %4270 ], [ %4171, %4183 ], [ %4171, %4292 ], [ %4171, %4281 ]
  %4363 = phi float [ %4271, %4270 ], [ %4166, %4183 ], [ %4353, %4292 ], [ %4166, %4281 ]
  %4364 = phi float [ %4272, %4270 ], [ %4167, %4183 ], [ %4354, %4292 ], [ %4167, %4281 ]
  %4365 = phi i32 [ %4273, %4270 ], [ 0, %4183 ], [ 1, %4292 ], [ 0, %4281 ]
  %4366 = phi float [ %4279, %4270 ], [ %4105, %4183 ], [ %4358, %4292 ], [ %4105, %4281 ]
  %4367 = phi float [ %4280, %4270 ], [ %4109, %4183 ], [ %4359, %4292 ], [ %4109, %4281 ]
  %4368 = fsub fast float %4132, %4130
  %4369 = fptoui float %4368 to i32
  %4370 = add i32 %4369, 320
  %4371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %4370)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.f32 %4371, 0
  %4373 = extractvalue %dx.types.CBufRet.f32 %4371, 1
  %4374 = fcmp fast une float %4157, %4132
  %4375 = fsub fast float %4366, %4372
  %4376 = fsub fast float %4367, %4373
  %4377 = call float @dx.op.unary.f32(i32 6, float %4375)  ; FAbs(value)
  %4378 = call float @dx.op.unary.f32(i32 6, float %4376)  ; FAbs(value)
  %4379 = fmul fast float %4377, %4161
  %4380 = fmul fast float %4378, %4161
  %4381 = fcmp fast olt float %4379, 1.000000e+00
  %4382 = fcmp fast olt float %4380, 1.000000e+00
  %4383 = and i1 %4381, %4382
  %4384 = or i1 %4374, %4383
  br i1 %4384, label %4385, label %4753, !dx.controlflow.hints !130

; <label>:4385                                    ; preds = %4360
  %4386 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4387 = extractvalue %dx.types.CBufRet.i32 %4386, 2
  %4388 = sitofp i32 %4387 to float
  %4389 = fsub fast float %4157, %4388
  %4390 = call float @dx.op.unary.f32(i32 27, float %4389)  ; Round_ni(value)
  %4391 = call float @dx.op.unary.f32(i32 22, float %4157)  ; Frc(value)
  %4392 = icmp eq i32 %4365, 0
  %4393 = call float @dx.op.unary.f32(i32 22, float %4363)  ; Frc(value)
  %4394 = call float @dx.op.unary.f32(i32 22, float %4364)  ; Frc(value)
  br i1 %4392, label %4465, label %4395, !dx.controlflow.hints !131

; <label>:4395                                    ; preds = %4385
  %4396 = and i32 %4365, 1
  %4397 = icmp eq i32 %4396, 0
  br i1 %4397, label %4411, label %4398, !dx.controlflow.hints !132

; <label>:4398                                    ; preds = %4395
  %4399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4400 = extractvalue %dx.types.CBufRet.f32 %4399, 0
  %4401 = fmul fast float %4393, %4400
  %4402 = fmul fast float %4394, %4400
  %4403 = fptoui float %4401 to i32
  %4404 = fptoui float %4402 to i32
  %4405 = fptoui float %4390 to i32
  %4406 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %4403, i32 %4404, i32 %4405, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4407 = extractvalue %dx.types.ResRet.f32 %4406, 0
  %4408 = extractvalue %dx.types.ResRet.f32 %4406, 1
  %4409 = extractvalue %dx.types.ResRet.f32 %4406, 2
  %4410 = extractvalue %dx.types.ResRet.f32 %4406, 3
  br label %4417

; <label>:4411                                    ; preds = %4395
  %4412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %4393, float %4394, float %4390, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4413 = extractvalue %dx.types.ResRet.f32 %4412, 0
  %4414 = extractvalue %dx.types.ResRet.f32 %4412, 1
  %4415 = extractvalue %dx.types.ResRet.f32 %4412, 2
  %4416 = extractvalue %dx.types.ResRet.f32 %4412, 3
  br label %4417

; <label>:4417                                    ; preds = %4411, %4398
  %4418 = phi float [ %4407, %4398 ], [ %4413, %4411 ]
  %4419 = phi float [ %4408, %4398 ], [ %4414, %4411 ]
  %4420 = phi float [ %4409, %4398 ], [ %4415, %4411 ]
  %4421 = phi float [ %4410, %4398 ], [ %4416, %4411 ]
  %4422 = fcmp fast ogt float %4391, 0.000000e+00
  br i1 %4422, label %4423, label %4493

; <label>:4423                                    ; preds = %4417
  %4424 = and i32 %4365, 2
  %4425 = icmp eq i32 %4424, 0
  %4426 = fadd fast float %4390, 1.000000e+00
  %4427 = call float @dx.op.unary.f32(i32 22, float %4361)  ; Frc(value)
  %4428 = call float @dx.op.unary.f32(i32 22, float %4362)  ; Frc(value)
  br i1 %4425, label %4442, label %4429, !dx.controlflow.hints !133

; <label>:4429                                    ; preds = %4423
  %4430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4431 = extractvalue %dx.types.CBufRet.f32 %4430, 0
  %4432 = fmul fast float %4427, %4431
  %4433 = fmul fast float %4428, %4431
  %4434 = fptoui float %4432 to i32
  %4435 = fptoui float %4433 to i32
  %4436 = fptoui float %4426 to i32
  %4437 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %4434, i32 %4435, i32 %4436, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4438 = extractvalue %dx.types.ResRet.f32 %4437, 0
  %4439 = extractvalue %dx.types.ResRet.f32 %4437, 1
  %4440 = extractvalue %dx.types.ResRet.f32 %4437, 2
  %4441 = extractvalue %dx.types.ResRet.f32 %4437, 3
  br label %4448

; <label>:4442                                    ; preds = %4423
  %4443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %4427, float %4428, float %4426, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4444 = extractvalue %dx.types.ResRet.f32 %4443, 0
  %4445 = extractvalue %dx.types.ResRet.f32 %4443, 1
  %4446 = extractvalue %dx.types.ResRet.f32 %4443, 2
  %4447 = extractvalue %dx.types.ResRet.f32 %4443, 3
  br label %4448

; <label>:4448                                    ; preds = %4442, %4429
  %4449 = phi float [ %4438, %4429 ], [ %4444, %4442 ]
  %4450 = phi float [ %4439, %4429 ], [ %4445, %4442 ]
  %4451 = phi float [ %4440, %4429 ], [ %4446, %4442 ]
  %4452 = phi float [ %4441, %4429 ], [ %4447, %4442 ]
  %4453 = fsub fast float %4449, %4418
  %4454 = fsub fast float %4450, %4419
  %4455 = fsub fast float %4451, %4420
  %4456 = fsub fast float %4452, %4421
  %4457 = fmul fast float %4453, %4391
  %4458 = fmul fast float %4454, %4391
  %4459 = fmul fast float %4455, %4391
  %4460 = fmul fast float %4456, %4391
  %4461 = fadd fast float %4457, %4418
  %4462 = fadd fast float %4458, %4419
  %4463 = fadd fast float %4459, %4420
  %4464 = fadd fast float %4460, %4421
  br label %4493

; <label>:4465                                    ; preds = %4385
  %4466 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %4393, float %4394, float %4390, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4467 = extractvalue %dx.types.ResRet.f32 %4466, 0
  %4468 = extractvalue %dx.types.ResRet.f32 %4466, 1
  %4469 = extractvalue %dx.types.ResRet.f32 %4466, 2
  %4470 = extractvalue %dx.types.ResRet.f32 %4466, 3
  %4471 = fcmp fast ogt float %4391, 0.000000e+00
  br i1 %4471, label %4472, label %4493, !dx.controlflow.hints !134

; <label>:4472                                    ; preds = %4465
  %4473 = fadd fast float %4390, 1.000000e+00
  %4474 = call float @dx.op.unary.f32(i32 22, float %4361)  ; Frc(value)
  %4475 = call float @dx.op.unary.f32(i32 22, float %4362)  ; Frc(value)
  %4476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %4474, float %4475, float %4473, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4477 = extractvalue %dx.types.ResRet.f32 %4476, 0
  %4478 = extractvalue %dx.types.ResRet.f32 %4476, 1
  %4479 = extractvalue %dx.types.ResRet.f32 %4476, 2
  %4480 = extractvalue %dx.types.ResRet.f32 %4476, 3
  %4481 = fsub fast float %4477, %4467
  %4482 = fsub fast float %4478, %4468
  %4483 = fsub fast float %4479, %4469
  %4484 = fsub fast float %4480, %4470
  %4485 = fmul fast float %4481, %4391
  %4486 = fmul fast float %4482, %4391
  %4487 = fmul fast float %4483, %4391
  %4488 = fmul fast float %4484, %4391
  %4489 = fadd fast float %4485, %4467
  %4490 = fadd fast float %4486, %4468
  %4491 = fadd fast float %4487, %4469
  %4492 = fadd fast float %4488, %4470
  br label %4493

; <label>:4493                                    ; preds = %4472, %4465, %4448, %4417
  %4494 = phi float [ %4461, %4448 ], [ %4418, %4417 ], [ %4489, %4472 ], [ %4467, %4465 ]
  %4495 = phi float [ %4462, %4448 ], [ %4419, %4417 ], [ %4490, %4472 ], [ %4468, %4465 ]
  %4496 = phi float [ %4463, %4448 ], [ %4420, %4417 ], [ %4491, %4472 ], [ %4469, %4465 ]
  %4497 = phi float [ %4464, %4448 ], [ %4421, %4417 ], [ %4492, %4472 ], [ %4470, %4465 ]
  %4498 = fadd fast float %4494, -5.000000e-01
  %4499 = fadd fast float %4496, -5.000000e-01
  %4500 = fmul fast float %4498, 0xBFD5555560000000
  %4501 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4499, float %4500)  ; FMad(a,b,c)
  %4502 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4495, float 0.000000e+00)  ; FMad(a,b,c)
  %4503 = fadd fast float %4502, %4497
  %4504 = fmul fast float %4498, -7.500000e-01
  %4505 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4499, float %4504)  ; FMad(a,b,c)
  %4506 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4495, float 0.000000e+00)  ; FMad(a,b,c)
  %4507 = fadd fast float %4506, %4497
  %4508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4509 = extractvalue %dx.types.CBufRet.f32 %4508, 0
  %4510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4511 = extractvalue %dx.types.CBufRet.f32 %4510, 0
  %4512 = extractvalue %dx.types.CBufRet.f32 %4510, 1
  %4513 = extractvalue %dx.types.CBufRet.f32 %4510, 2
  %4514 = extractvalue %dx.types.CBufRet.f32 %4510, 3
  %4515 = fsub fast float %4511, %4501
  %4516 = fsub fast float %4512, %4503
  %4517 = fsub fast float %4513, %4505
  %4518 = fsub fast float %4514, %4507
  %4519 = fmul fast float %4515, %4509
  %4520 = fmul fast float %4516, %4509
  %4521 = fmul fast float %4517, %4509
  %4522 = fmul fast float %4518, %4509
  %4523 = fadd fast float %4519, %4501
  %4524 = fadd fast float %4520, %4503
  %4525 = fadd fast float %4521, %4505
  %4526 = fadd fast float %4522, %4507
  %4527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4528 = extractvalue %dx.types.ResRet.i32 %4527, 0
  %4529 = and i32 %4528, 536870911
  %4530 = uitofp i32 %4529 to float
  %4531 = fmul fast float %4530, %4366
  %4532 = fmul fast float %4530, %4367
  %4533 = fptoui float %4531 to i32
  %4534 = fptoui float %4532 to i32
  %4535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4536 = extractvalue %dx.types.ResRet.i32 %4535, 0
  %4537 = and i32 %4536, 31
  %4538 = lshr i32 %4533, %4537
  %4539 = lshr i32 %4534, %4537
  %4540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4541 = extractvalue %dx.types.ResRet.i32 %4540, 0
  %4542 = and i32 %4541, 31
  %4543 = shl i32 1, %4542
  %4544 = call i32 @dx.op.binary.i32(i32 40, i32 %4543, i32 4)  ; UMin(a,b)
  %4545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4546 = extractvalue %dx.types.ResRet.i32 %4545, 0
  %4547 = extractvalue %dx.types.ResRet.i32 %4545, 1
  %4548 = icmp eq i32 %4544, 0
  br i1 %4548, label %4590, label %4549

; <label>:4549                                    ; preds = %4493
  br label %4550

; <label>:4550                                    ; preds = %4578, %4549
  %4551 = phi i32 [ %4581, %4578 ], [ 0, %4549 ]
  %4552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4553 = extractvalue %dx.types.ResRet.i32 %4552, 0
  %4554 = lshr i32 %4553, 16
  %4555 = and i32 %4554, 31
  %4556 = shl i32 %4539, %4555
  %4557 = add i32 %4556, %4538
  %4558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4559 = extractvalue %dx.types.ResRet.i32 %4558, 0
  %4560 = and i32 %4559, 31
  %4561 = shl i32 %4557, %4560
  %4562 = add i32 %4561, %4551
  %4563 = shl i32 %4562, 2
  %4564 = add i32 %4563, 32
  %4565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4564, i32 undef)  ; BufferLoad(srv,index,wot)
  %4566 = extractvalue %dx.types.ResRet.i32 %4565, 0
  %4567 = icmp slt i32 %4566, 0
  %4568 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %4551
  %4569 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %4551
  %4570 = bitcast float* %4568 to i32*
  %4571 = bitcast float* %4569 to i32*
  br i1 %4567, label %4572, label %4578

; <label>:4572                                    ; preds = %4550
  %4573 = and i32 %4566, 1073741823
  %4574 = add nuw nsw i32 %4573, 20
  %4575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4574, i32 undef)  ; BufferLoad(srv,index,wot)
  %4576 = extractvalue %dx.types.ResRet.i32 %4575, 0
  %4577 = extractvalue %dx.types.ResRet.i32 %4575, 1
  br label %4578

; <label>:4578                                    ; preds = %4572, %4550
  %4579 = phi i32 [ %4576, %4572 ], [ %4546, %4550 ]
  %4580 = phi i32 [ %4577, %4572 ], [ %4547, %4550 ]
  store i32 %4579, i32* %4570, align 4
  store i32 %4580, i32* %4571, align 4
  %4581 = add nuw i32 %4551, 1
  %4582 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4583 = extractvalue %dx.types.CBufRet.i32 %4582, 2
  %4584 = icmp eq i32 %4583, 0
  %4585 = icmp ugt i32 %4566, -1073741825
  %4586 = and i1 %4585, %4584
  %4587 = icmp ult i32 %4581, %4544
  %4588 = and i1 %4586, %4587
  br i1 %4588, label %4550, label %4589

; <label>:4589                                    ; preds = %4578
  br label %4590

; <label>:4590                                    ; preds = %4589, %4493
  %4591 = phi i32 [ 0, %4493 ], [ %4581, %4589 ]
  %4592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4593 = extractvalue %dx.types.CBufRet.f32 %4592, 2
  %4594 = fptoui float %4593 to i32
  %4595 = icmp eq i32 %4594, 0
  br i1 %4595, label %4647, label %4596

; <label>:4596                                    ; preds = %4590
  br label %4597

; <label>:4597                                    ; preds = %4642, %4596
  %4598 = phi i32 [ %4643, %4642 ], [ %4591, %4596 ]
  %4599 = phi i32 [ %4644, %4642 ], [ 0, %4596 ]
  %4600 = lshr i32 %4599, 2
  %4601 = and i32 %4599, 3
  %4602 = add nuw nsw i32 %4600, 83
  %4603 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 %4602)  ; CBufferLoadLegacy(handle,regIndex)
  %4604 = extractvalue %dx.types.CBufRet.i32 %4603, 0
  %4605 = extractvalue %dx.types.CBufRet.i32 %4603, 1
  %4606 = extractvalue %dx.types.CBufRet.i32 %4603, 2
  %4607 = extractvalue %dx.types.CBufRet.i32 %4603, 3
  %4608 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i32 0, i32 0
  store i32 %4604, i32* %4608, align 4
  %4609 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i32 0, i32 1
  store i32 %4605, i32* %4609, align 4
  %4610 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i32 0, i32 2
  store i32 %4606, i32* %4610, align 4
  %4611 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i32 0, i32 3
  store i32 %4607, i32* %4611, align 4
  %4612 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i32 0, i32 %4601
  %4613 = load i32, i32* %4612, align 4, !tbaa !135, !noalias !137
  %4614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4615 = extractvalue %dx.types.ResRet.i32 %4614, 0
  %4616 = lshr i32 %4615, 16
  %4617 = and i32 %4616, 31
  %4618 = shl i32 %4539, %4617
  %4619 = add i32 %4618, %4538
  %4620 = shl i32 %4619, 2
  %4621 = add i32 %4620, %4613
  %4622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4621, i32 undef)  ; BufferLoad(srv,index,wot)
  %4623 = extractvalue %dx.types.ResRet.i32 %4622, 0
  %4624 = icmp eq i32 %4623, 0
  br i1 %4624, label %4642, label %4625

; <label>:4625                                    ; preds = %4597
  %4626 = icmp slt i32 %4623, 0
  %4627 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %4598
  %4628 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %4598
  %4629 = bitcast float* %4627 to i32*
  %4630 = bitcast float* %4628 to i32*
  br i1 %4626, label %4631, label %4638

; <label>:4631                                    ; preds = %4625
  %4632 = and i32 %4623, 1073741823
  %4633 = add i32 %4613, 20
  %4634 = add i32 %4633, %4632
  %4635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4634, i32 undef)  ; BufferLoad(srv,index,wot)
  %4636 = extractvalue %dx.types.ResRet.i32 %4635, 0
  %4637 = extractvalue %dx.types.ResRet.i32 %4635, 1
  br label %4638

; <label>:4638                                    ; preds = %4631, %4625
  %4639 = phi i32 [ %4636, %4631 ], [ %4546, %4625 ]
  %4640 = phi i32 [ %4637, %4631 ], [ %4547, %4625 ]
  store i32 %4639, i32* %4629, align 4
  store i32 %4640, i32* %4630, align 4
  %4641 = add i32 %4598, 1
  br label %4642

; <label>:4642                                    ; preds = %4638, %4597
  %4643 = phi i32 [ %4598, %4597 ], [ %4641, %4638 ]
  %4644 = add nuw i32 %4599, 1
  %4645 = icmp eq i32 %4644, %4594
  br i1 %4645, label %4646, label %4597

; <label>:4646                                    ; preds = %4642
  br label %4647

; <label>:4647                                    ; preds = %4646, %4590
  %4648 = phi i32 [ %4591, %4590 ], [ %4643, %4646 ]
  %4649 = icmp eq i32 %4648, 1
  %4650 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 0
  %4651 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 0
  br i1 %4649, label %4652, label %4655

; <label>:4652                                    ; preds = %4647
  %4653 = load float, float* %4650, align 4
  %4654 = load float, float* %4651, align 4
  br label %4682

; <label>:4655                                    ; preds = %4647
  %4656 = load float, float* %4650, align 4
  %4657 = load float, float* %4651, align 4
  %4658 = fdiv fast float 1.000000e+00, %4657
  %4659 = fsub fast float %4656, %4658
  %4660 = icmp ugt i32 %4648, 1
  br i1 %4660, label %4661, label %4677

; <label>:4661                                    ; preds = %4655
  br label %4662

; <label>:4662                                    ; preds = %4662, %4661
  %4663 = phi float [ %4672, %4662 ], [ %4659, %4661 ]
  %4664 = phi float [ %4673, %4662 ], [ %4656, %4661 ]
  %4665 = phi i32 [ %4674, %4662 ], [ 1, %4661 ]
  %4666 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %4665
  %4667 = load float, float* %4666, align 4
  %4668 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %4665
  %4669 = load float, float* %4668, align 4
  %4670 = fdiv fast float 1.000000e+00, %4669
  %4671 = fsub fast float %4667, %4670
  %4672 = call float @dx.op.binary.f32(i32 36, float %4663, float %4671)  ; FMin(a,b)
  %4673 = call float @dx.op.binary.f32(i32 35, float %4664, float %4667)  ; FMax(a,b)
  %4674 = add nuw i32 %4665, 1
  %4675 = icmp eq i32 %4674, %4648
  br i1 %4675, label %4676, label %4662

; <label>:4676                                    ; preds = %4662
  br label %4677

; <label>:4677                                    ; preds = %4676, %4655
  %4678 = phi float [ %4659, %4655 ], [ %4672, %4676 ]
  %4679 = phi float [ %4656, %4655 ], [ %4673, %4676 ]
  %4680 = fsub fast float %4679, %4678
  %4681 = fdiv fast float 1.000000e+00, %4680
  br label %4682

; <label>:4682                                    ; preds = %4677, %4652
  %4683 = phi float [ %4653, %4652 ], [ %4679, %4677 ]
  %4684 = phi float [ %4654, %4652 ], [ %4681, %4677 ]
  %4685 = fadd fast float %4113, %4683
  %4686 = fmul fast float %4685, %4684
  %4687 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4688 = fmul fast float %4687, 2.000000e+00
  %4689 = fsub fast float 1.000000e+00, %4688
  %4690 = fmul fast float %4523, %4523
  %4691 = fsub fast float %4524, %4690
  %4692 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4691)  ; FMax(a,b)
  %4693 = fdiv fast float 1.000000e+00, %4692
  %4694 = fmul fast float %4524, %4523
  %4695 = fsub fast float %4525, %4694
  %4696 = fsub fast float %4689, %4523
  %4697 = fmul fast float %4689, %4689
  %4698 = fsub fast float %4697, %4524
  %4699 = fmul fast float %4693, %4695
  %4700 = fmul fast float %4699, %4696
  %4701 = fsub fast float %4698, %4700
  %4702 = fmul fast float %4524, %4524
  %4703 = fsub fast float %4526, %4702
  %4704 = fmul fast float %4695, %4695
  %4705 = fmul fast float %4704, %4693
  %4706 = fsub fast float %4703, %4705
  %4707 = fdiv fast float %4701, %4706
  %4708 = fmul fast float %4707, %4695
  %4709 = fsub fast float %4696, %4708
  %4710 = fmul fast float %4709, %4693
  %4711 = fmul fast float %4710, %4523
  %4712 = fsub fast float 1.000000e+00, %4711
  %4713 = fmul fast float %4707, %4524
  %4714 = fsub fast float %4712, %4713
  %4715 = fmul fast float %4710, %4710
  %4716 = fmul fast float %4707, 4.000000e+00
  %4717 = fmul fast float %4716, %4714
  %4718 = fsub fast float %4715, %4717
  %4719 = call float @dx.op.unary.f32(i32 24, float %4718)  ; Sqrt(value)
  %4720 = fcmp fast oge float %4710, 0.000000e+00
  %4721 = fsub fast float -0.000000e+00, %4719
  %4722 = select i1 %4720, float %4721, float %4719
  %4723 = fsub fast float %4722, %4710
  %4724 = fdiv fast float %4723, %4707
  %4725 = fdiv fast float %4714, %4723
  %4726 = fmul fast float %4724, 5.000000e-01
  %4727 = fmul fast float %4725, 2.000000e+00
  %4728 = select i1 %4720, float %4726, float %4727
  %4729 = select i1 %4720, float %4727, float %4726
  %4730 = call float @dx.op.binary.f32(i32 35, float %4728, float %4729)  ; FMax(a,b)
  %4731 = call float @dx.op.binary.f32(i32 36, float %4728, float %4729)  ; FMin(a,b)
  %4732 = fcmp fast ogt float %4689, %4730
  %4733 = fsub fast float %4689, %4731
  %4734 = fsub fast float %4689, %4730
  %4735 = fsub fast float %4730, %4731
  %4736 = select i1 %4732, float %4734, float %4735
  %4737 = fmul float %4733, %4736
  %4738 = select i1 %4732, float %4731, float %4689
  %4739 = fcmp fast ogt float %4689, %4731
  %4740 = fmul fast float %4738, %4730
  %4741 = fadd fast float %4738, %4730
  %4742 = fmul fast float %4741, %4523
  %4743 = fadd fast float %4740, %4524
  %4744 = fsub fast float %4743, %4742
  %4745 = fdiv fast float %4744, %4737
  %4746 = select i1 %4739, float %4745, float 0.000000e+00
  %4747 = fsub fast float 1.000000e+00, %4746
  %4748 = select i1 %4732, float %4747, float %4746
  %4749 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4750 = extractvalue %dx.types.CBufRet.f32 %4508, 3
  %4751 = fmul fast float %4750, %4749
  %4752 = fsub fast float 1.000000e+00, %4751
  br label %4753

; <label>:4753                                    ; preds = %4682, %4360, %4086, %4082, %4046
  %4754 = phi float [ 1.000000e+00, %4046 ], [ %4752, %4682 ], [ 1.000000e+00, %4086 ], [ 1.000000e+00, %4360 ], [ 1.000000e+00, %4082 ]
  %4755 = fcmp fast ogt float %4078, 0.000000e+00
  br i1 %4755, label %4756, label %4920, !dx.controlflow.hints !146

; <label>:4756                                    ; preds = %4753
  %4757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.f32 %4757, 2
  %4759 = fadd fast float %4758, %3961
  %4760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4761 = extractvalue %dx.types.CBufRet.f32 %4760, 2
  %4762 = extractvalue %dx.types.CBufRet.f32 %4760, 3
  %4763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4764 = extractvalue %dx.types.CBufRet.f32 %4763, 2
  %4765 = call float @dx.op.binary.f32(i32 35, float %4759, float 0.000000e+00)  ; FMax(a,b)
  %4766 = fadd fast float %4765, 0x3F10000000000000
  %4767 = fcmp fast oeq float %4764, 0.000000e+00
  br i1 %4767, label %4768, label %4835

; <label>:4768                                    ; preds = %4756
  %4769 = extractvalue %dx.types.CBufRet.f32 %4760, 1
  %4770 = extractvalue %dx.types.CBufRet.f32 %4760, 0
  %4771 = fmul fast float %4770, %3976
  %4772 = fmul fast float %4769, %3977
  %4773 = fadd fast float %4771, 5.000000e-01
  %4774 = call float @dx.op.unary.f32(i32 27, float %4773)  ; Round_ni(value)
  %4775 = fadd fast float %4772, 5.000000e-01
  %4776 = call float @dx.op.unary.f32(i32 27, float %4775)  ; Round_ni(value)
  %4777 = fsub fast float %4773, %4774
  %4778 = fsub fast float %4775, %4776
  %4779 = fadd fast float %4774, -5.000000e-01
  %4780 = fadd fast float %4776, -5.000000e-01
  %4781 = fmul fast float %4777, 2.000000e+00
  %4782 = fsub fast float 3.000000e+00, %4781
  %4783 = fadd fast float %4781, 1.000000e+00
  %4784 = fsub fast float 2.000000e+00, %4777
  %4785 = bitcast float %4782 to i32
  %4786 = sub nsw i32 2129859010, %4785
  %4787 = bitcast i32 %4786 to float
  %4788 = fmul fast float %4787, %4784
  %4789 = fadd fast float %4788, -1.000000e+00
  %4790 = bitcast float %4783 to i32
  %4791 = sub nsw i32 2129859010, %4790
  %4792 = bitcast i32 %4791 to float
  %4793 = fmul fast float %4792, %4777
  %4794 = fadd fast float %4793, 1.000000e+00
  %4795 = fmul fast float %4778, 2.000000e+00
  %4796 = fsub fast float 3.000000e+00, %4795
  %4797 = fadd fast float %4795, 1.000000e+00
  %4798 = fsub fast float 2.000000e+00, %4778
  %4799 = bitcast float %4796 to i32
  %4800 = sub nsw i32 2129859010, %4799
  %4801 = bitcast i32 %4800 to float
  %4802 = fmul fast float %4801, %4798
  %4803 = fadd fast float %4802, -1.000000e+00
  %4804 = bitcast float %4797 to i32
  %4805 = sub nsw i32 2129859010, %4804
  %4806 = bitcast i32 %4805 to float
  %4807 = fmul fast float %4806, %4778
  %4808 = fadd fast float %4807, 1.000000e+00
  %4809 = fadd fast float %4789, %4779
  %4810 = fmul fast float %4809, %4761
  %4811 = fadd fast float %4803, %4780
  %4812 = fmul fast float %4811, %4762
  %4813 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %4810, float %4812, float undef, float undef, i32 0, i32 0, i32 undef, float %4766)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4814 = extractvalue %dx.types.ResRet.f32 %4813, 0
  %4815 = fmul fast float %4814, %4782
  %4816 = fadd fast float %4794, %4779
  %4817 = fmul fast float %4816, %4761
  %4818 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %4817, float %4812, float undef, float undef, i32 0, i32 0, i32 undef, float %4766)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4819 = extractvalue %dx.types.ResRet.f32 %4818, 0
  %4820 = fmul fast float %4819, %4783
  %4821 = fadd fast float %4808, %4780
  %4822 = fmul fast float %4821, %4762
  %4823 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %4810, float %4822, float undef, float undef, i32 0, i32 0, i32 undef, float %4766)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4824 = extractvalue %dx.types.ResRet.f32 %4823, 0
  %4825 = fmul fast float %4824, %4782
  %4826 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %4817, float %4822, float undef, float undef, i32 0, i32 0, i32 undef, float %4766)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4827 = extractvalue %dx.types.ResRet.f32 %4826, 0
  %4828 = fmul fast float %4827, %4783
  %4829 = fadd fast float %4828, %4825
  %4830 = fmul fast float %4829, %4797
  %4831 = fadd fast float %4820, %4815
  %4832 = fmul fast float %4831, %4796
  %4833 = fadd fast float %4832, %4830
  %4834 = fmul fast float %4833, 6.250000e-02
  br label %4920

; <label>:4835                                    ; preds = %4756
  %4836 = fmul fast float %1687, 0x401921FB60000000
  %4837 = call float @dx.op.unary.f32(i32 13, float %4836)  ; Sin(value)
  %4838 = call float @dx.op.unary.f32(i32 12, float %4836)  ; Cos(value)
  %4839 = fsub fast float -0.000000e+00, %4837
  br label %4840

; <label>:4840                                    ; preds = %4889, %4835
  %4841 = phi float [ 0.000000e+00, %4835 ], [ %4884, %4889 ]
  %4842 = phi float [ 0.000000e+00, %4835 ], [ %4886, %4889 ]
  %4843 = phi i32 [ 0, %4835 ], [ %4890, %4889 ]
  %4844 = mul i32 %4843, 2
  %4845 = add i32 0, %4844
  %4846 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4845
  %4847 = load float, float* %4846, align 4
  %4848 = mul i32 %4843, 2
  %4849 = add i32 1, %4848
  %4850 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4849
  %4851 = load float, float* %4850, align 4
  %4852 = fmul fast float %4847, %4838
  %4853 = call float @dx.op.tertiary.f32(i32 46, float %4851, float %4839, float %4852)  ; FMad(a,b,c)
  %4854 = fmul fast float %4847, %4837
  %4855 = call float @dx.op.tertiary.f32(i32 46, float %4851, float %4838, float %4854)  ; FMad(a,b,c)
  %4856 = fmul fast float %4853, %4764
  %4857 = fmul fast float %4855, %4764
  %4858 = fadd fast float %4856, %3976
  %4859 = fadd fast float %4857, %3977
  %4860 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %59, float %4858, float %4859, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4861 = extractvalue %dx.types.ResRet.f32 %4860, 0
  %4862 = extractvalue %dx.types.ResRet.f32 %4860, 1
  %4863 = extractvalue %dx.types.ResRet.f32 %4860, 2
  %4864 = extractvalue %dx.types.ResRet.f32 %4860, 3
  %4865 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 0
  store float %4861, float* %4865, align 4
  %4866 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 1
  store float %4862, float* %4866, align 4
  %4867 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 2
  store float %4863, float* %4867, align 4
  %4868 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 3
  store float %4864, float* %4868, align 4
  %4869 = fsub fast float %4861, %4766
  %4870 = fcmp fast olt float %4869, 0.000000e+00
  %4871 = select i1 %4870, float 0.000000e+00, float 1.000000e+00
  %4872 = fadd fast float %4871, %4841
  %4873 = fmul fast float %4871, %4869
  %4874 = fadd fast float %4873, %4842
  br label %4875

; <label>:4875                                    ; preds = %4875, %4840
  %4876 = phi i32 [ 1, %4840 ], [ %4887, %4875 ]
  %4877 = phi float [ %4874, %4840 ], [ %4886, %4875 ]
  %4878 = phi float [ %4872, %4840 ], [ %4884, %4875 ]
  %4879 = getelementptr [4 x float], [4 x float]* %85, i32 0, i32 %4876
  %4880 = load float, float* %4879, align 4, !tbaa !101, !noalias !137
  %4881 = fsub fast float %4880, %4766
  %4882 = fcmp fast olt float %4881, 0.000000e+00
  %4883 = select i1 %4882, float 0.000000e+00, float 1.000000e+00
  %4884 = fadd fast float %4883, %4878
  %4885 = fmul fast float %4883, %4881
  %4886 = fadd fast float %4885, %4877
  %4887 = add nuw nsw i32 %4876, 1
  %4888 = icmp eq i32 %4887, 4
  br i1 %4888, label %4889, label %4875, !llvm.loop !147

; <label>:4889                                    ; preds = %4875
  %4890 = add nuw nsw i32 %4843, 1
  %4891 = icmp eq i32 %4890, 8
  br i1 %4891, label %4892, label %4840, !llvm.loop !148

; <label>:4892                                    ; preds = %4889
  %4893 = fdiv fast float 1.000000e+00, %4884
  %4894 = fmul fast float %4893, %4886
  %4895 = fdiv fast float 1.000000e+00, %4766
  %4896 = fmul fast float %4894, %4895
  %4897 = call float @dx.op.unary.f32(i32 7, float %4896)  ; Saturate(value)
  %4898 = call float @dx.op.binary.f32(i32 35, float %4897, float 0.000000e+00)  ; FMax(a,b)
  %4899 = fmul fast float %4884, 3.125000e-02
  %4900 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4901 = fmul fast float %4900, 2.000000e+00
  %4902 = fadd fast float %4901, -1.000000e+00
  %4903 = fcmp fast ogt float %4902, 0.000000e+00
  %4904 = fcmp fast olt float %4902, 0.000000e+00
  %4905 = zext i1 %4903 to i32
  %4906 = zext i1 %4904 to i32
  %4907 = sub nsw i32 %4905, %4906
  %4908 = sitofp i32 %4907 to float
  %4909 = fmul fast float %4908, %4902
  %4910 = fsub fast float 1.000000e+00, %4909
  %4911 = fmul fast float %4910, %4910
  %4912 = fmul fast float %4911, %4910
  %4913 = fsub fast float %4910, %4912
  %4914 = fmul fast float %4913, %4898
  %4915 = fsub fast float 1.000000e+00, %4912
  %4916 = fsub fast float %4915, %4914
  %4917 = fmul fast float %4908, 5.000000e-01
  %4918 = fmul fast float %4917, %4916
  %4919 = fsub fast float 5.000000e-01, %4918
  br label %4920

; <label>:4920                                    ; preds = %4892, %4768, %4753
  %4921 = phi float [ 1.000000e+00, %4753 ], [ %4834, %4768 ], [ %4919, %4892 ]
  %4922 = fcmp fast ogt float %4076, 0.000000e+00
  br i1 %4922, label %4923, label %5087, !dx.controlflow.hints !149

; <label>:4923                                    ; preds = %4920
  %4924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4925 = extractvalue %dx.types.CBufRet.f32 %4924, 1
  %4926 = fadd fast float %4925, %3961
  %4927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4928 = extractvalue %dx.types.CBufRet.f32 %4927, 2
  %4929 = extractvalue %dx.types.CBufRet.f32 %4927, 3
  %4930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4931 = extractvalue %dx.types.CBufRet.f32 %4930, 1
  %4932 = call float @dx.op.binary.f32(i32 35, float %4926, float 0.000000e+00)  ; FMax(a,b)
  %4933 = fadd fast float %4932, 0x3F10000000000000
  %4934 = fcmp fast oeq float %4931, 0.000000e+00
  br i1 %4934, label %4935, label %5002

; <label>:4935                                    ; preds = %4923
  %4936 = extractvalue %dx.types.CBufRet.f32 %4927, 1
  %4937 = extractvalue %dx.types.CBufRet.f32 %4927, 0
  %4938 = fmul fast float %4937, %3968
  %4939 = fmul fast float %4936, %3969
  %4940 = fadd fast float %4938, 5.000000e-01
  %4941 = call float @dx.op.unary.f32(i32 27, float %4940)  ; Round_ni(value)
  %4942 = fadd fast float %4939, 5.000000e-01
  %4943 = call float @dx.op.unary.f32(i32 27, float %4942)  ; Round_ni(value)
  %4944 = fsub fast float %4940, %4941
  %4945 = fsub fast float %4942, %4943
  %4946 = fadd fast float %4941, -5.000000e-01
  %4947 = fadd fast float %4943, -5.000000e-01
  %4948 = fmul fast float %4944, 2.000000e+00
  %4949 = fsub fast float 3.000000e+00, %4948
  %4950 = fadd fast float %4948, 1.000000e+00
  %4951 = fsub fast float 2.000000e+00, %4944
  %4952 = bitcast float %4949 to i32
  %4953 = sub nsw i32 2129859010, %4952
  %4954 = bitcast i32 %4953 to float
  %4955 = fmul fast float %4954, %4951
  %4956 = fadd fast float %4955, -1.000000e+00
  %4957 = bitcast float %4950 to i32
  %4958 = sub nsw i32 2129859010, %4957
  %4959 = bitcast i32 %4958 to float
  %4960 = fmul fast float %4959, %4944
  %4961 = fadd fast float %4960, 1.000000e+00
  %4962 = fmul fast float %4945, 2.000000e+00
  %4963 = fsub fast float 3.000000e+00, %4962
  %4964 = fadd fast float %4962, 1.000000e+00
  %4965 = fsub fast float 2.000000e+00, %4945
  %4966 = bitcast float %4963 to i32
  %4967 = sub nsw i32 2129859010, %4966
  %4968 = bitcast i32 %4967 to float
  %4969 = fmul fast float %4968, %4965
  %4970 = fadd fast float %4969, -1.000000e+00
  %4971 = bitcast float %4964 to i32
  %4972 = sub nsw i32 2129859010, %4971
  %4973 = bitcast i32 %4972 to float
  %4974 = fmul fast float %4973, %4945
  %4975 = fadd fast float %4974, 1.000000e+00
  %4976 = fadd fast float %4956, %4946
  %4977 = fmul fast float %4976, %4928
  %4978 = fadd fast float %4970, %4947
  %4979 = fmul fast float %4978, %4929
  %4980 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %4977, float %4979, float undef, float undef, i32 0, i32 0, i32 undef, float %4933)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4981 = extractvalue %dx.types.ResRet.f32 %4980, 0
  %4982 = fmul fast float %4981, %4949
  %4983 = fadd fast float %4961, %4946
  %4984 = fmul fast float %4983, %4928
  %4985 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %4984, float %4979, float undef, float undef, i32 0, i32 0, i32 undef, float %4933)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4986 = extractvalue %dx.types.ResRet.f32 %4985, 0
  %4987 = fmul fast float %4986, %4950
  %4988 = fadd fast float %4975, %4947
  %4989 = fmul fast float %4988, %4929
  %4990 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %4977, float %4989, float undef, float undef, i32 0, i32 0, i32 undef, float %4933)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4991 = extractvalue %dx.types.ResRet.f32 %4990, 0
  %4992 = fmul fast float %4991, %4949
  %4993 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %4984, float %4989, float undef, float undef, i32 0, i32 0, i32 undef, float %4933)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4994 = extractvalue %dx.types.ResRet.f32 %4993, 0
  %4995 = fmul fast float %4994, %4950
  %4996 = fadd fast float %4995, %4992
  %4997 = fmul fast float %4996, %4964
  %4998 = fadd fast float %4987, %4982
  %4999 = fmul fast float %4998, %4963
  %5000 = fadd fast float %4999, %4997
  %5001 = fmul fast float %5000, 6.250000e-02
  br label %5087

; <label>:5002                                    ; preds = %4923
  %5003 = fmul fast float %1687, 0x401921FB60000000
  %5004 = call float @dx.op.unary.f32(i32 13, float %5003)  ; Sin(value)
  %5005 = call float @dx.op.unary.f32(i32 12, float %5003)  ; Cos(value)
  %5006 = fsub fast float -0.000000e+00, %5004
  br label %5007

; <label>:5007                                    ; preds = %5056, %5002
  %5008 = phi float [ 0.000000e+00, %5002 ], [ %5051, %5056 ]
  %5009 = phi float [ 0.000000e+00, %5002 ], [ %5053, %5056 ]
  %5010 = phi i32 [ 0, %5002 ], [ %5057, %5056 ]
  %5011 = mul i32 %5010, 2
  %5012 = add i32 0, %5011
  %5013 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5012
  %5014 = load float, float* %5013, align 4
  %5015 = mul i32 %5010, 2
  %5016 = add i32 1, %5015
  %5017 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5016
  %5018 = load float, float* %5017, align 4
  %5019 = fmul fast float %5014, %5005
  %5020 = call float @dx.op.tertiary.f32(i32 46, float %5018, float %5006, float %5019)  ; FMad(a,b,c)
  %5021 = fmul fast float %5014, %5004
  %5022 = call float @dx.op.tertiary.f32(i32 46, float %5018, float %5005, float %5021)  ; FMad(a,b,c)
  %5023 = fmul fast float %5020, %4931
  %5024 = fmul fast float %5022, %4931
  %5025 = fadd fast float %5023, %3968
  %5026 = fadd fast float %5024, %3969
  %5027 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %59, float %5025, float %5026, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5028 = extractvalue %dx.types.ResRet.f32 %5027, 0
  %5029 = extractvalue %dx.types.ResRet.f32 %5027, 1
  %5030 = extractvalue %dx.types.ResRet.f32 %5027, 2
  %5031 = extractvalue %dx.types.ResRet.f32 %5027, 3
  %5032 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 0
  store float %5028, float* %5032, align 4
  %5033 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 1
  store float %5029, float* %5033, align 4
  %5034 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 2
  store float %5030, float* %5034, align 4
  %5035 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 3
  store float %5031, float* %5035, align 4
  %5036 = fsub fast float %5028, %4933
  %5037 = fcmp fast olt float %5036, 0.000000e+00
  %5038 = select i1 %5037, float 0.000000e+00, float 1.000000e+00
  %5039 = fadd fast float %5038, %5008
  %5040 = fmul fast float %5038, %5036
  %5041 = fadd fast float %5040, %5009
  br label %5042

; <label>:5042                                    ; preds = %5042, %5007
  %5043 = phi i32 [ 1, %5007 ], [ %5054, %5042 ]
  %5044 = phi float [ %5041, %5007 ], [ %5053, %5042 ]
  %5045 = phi float [ %5039, %5007 ], [ %5051, %5042 ]
  %5046 = getelementptr [4 x float], [4 x float]* %84, i32 0, i32 %5043
  %5047 = load float, float* %5046, align 4, !tbaa !101, !noalias !137
  %5048 = fsub fast float %5047, %4933
  %5049 = fcmp fast olt float %5048, 0.000000e+00
  %5050 = select i1 %5049, float 0.000000e+00, float 1.000000e+00
  %5051 = fadd fast float %5050, %5045
  %5052 = fmul fast float %5050, %5048
  %5053 = fadd fast float %5052, %5044
  %5054 = add nuw nsw i32 %5043, 1
  %5055 = icmp eq i32 %5054, 4
  br i1 %5055, label %5056, label %5042, !llvm.loop !147

; <label>:5056                                    ; preds = %5042
  %5057 = add nuw nsw i32 %5010, 1
  %5058 = icmp eq i32 %5057, 8
  br i1 %5058, label %5059, label %5007, !llvm.loop !148

; <label>:5059                                    ; preds = %5056
  %5060 = fdiv fast float 1.000000e+00, %5051
  %5061 = fmul fast float %5060, %5053
  %5062 = fdiv fast float 1.000000e+00, %4933
  %5063 = fmul fast float %5061, %5062
  %5064 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5065 = call float @dx.op.binary.f32(i32 35, float %5064, float 0.000000e+00)  ; FMax(a,b)
  %5066 = fmul fast float %5051, 3.125000e-02
  %5067 = call float @dx.op.unary.f32(i32 7, float %5066)  ; Saturate(value)
  %5068 = fmul fast float %5067, 2.000000e+00
  %5069 = fadd fast float %5068, -1.000000e+00
  %5070 = fcmp fast ogt float %5069, 0.000000e+00
  %5071 = fcmp fast olt float %5069, 0.000000e+00
  %5072 = zext i1 %5070 to i32
  %5073 = zext i1 %5071 to i32
  %5074 = sub nsw i32 %5072, %5073
  %5075 = sitofp i32 %5074 to float
  %5076 = fmul fast float %5075, %5069
  %5077 = fsub fast float 1.000000e+00, %5076
  %5078 = fmul fast float %5077, %5077
  %5079 = fmul fast float %5078, %5077
  %5080 = fsub fast float %5077, %5079
  %5081 = fmul fast float %5080, %5065
  %5082 = fsub fast float 1.000000e+00, %5079
  %5083 = fsub fast float %5082, %5081
  %5084 = fmul fast float %5075, 5.000000e-01
  %5085 = fmul fast float %5084, %5083
  %5086 = fsub fast float 5.000000e-01, %5085
  br label %5087

; <label>:5087                                    ; preds = %5059, %4935, %4920
  %5088 = phi float [ 1.000000e+00, %4920 ], [ %5001, %4935 ], [ %5086, %5059 ]
  %5089 = fcmp fast ogt float %4075, 0.000000e+00
  br i1 %5089, label %5090, label %5254, !dx.controlflow.hints !150

; <label>:5090                                    ; preds = %5087
  %5091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5092 = extractvalue %dx.types.CBufRet.f32 %5091, 0
  %5093 = fadd fast float %5092, %3961
  %5094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5095 = extractvalue %dx.types.CBufRet.f32 %5094, 2
  %5096 = extractvalue %dx.types.CBufRet.f32 %5094, 3
  %5097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5098 = extractvalue %dx.types.CBufRet.f32 %5097, 0
  %5099 = call float @dx.op.binary.f32(i32 35, float %5093, float 0.000000e+00)  ; FMax(a,b)
  %5100 = fadd fast float %5099, 0x3F10000000000000
  %5101 = fcmp fast oeq float %5098, 0.000000e+00
  br i1 %5101, label %5102, label %5169

; <label>:5102                                    ; preds = %5090
  %5103 = extractvalue %dx.types.CBufRet.f32 %5094, 1
  %5104 = extractvalue %dx.types.CBufRet.f32 %5094, 0
  %5105 = fmul fast float %5104, %3953
  %5106 = fmul fast float %5103, %3957
  %5107 = fadd fast float %5105, 5.000000e-01
  %5108 = call float @dx.op.unary.f32(i32 27, float %5107)  ; Round_ni(value)
  %5109 = fadd fast float %5106, 5.000000e-01
  %5110 = call float @dx.op.unary.f32(i32 27, float %5109)  ; Round_ni(value)
  %5111 = fsub fast float %5107, %5108
  %5112 = fsub fast float %5109, %5110
  %5113 = fadd fast float %5108, -5.000000e-01
  %5114 = fadd fast float %5110, -5.000000e-01
  %5115 = fmul fast float %5111, 2.000000e+00
  %5116 = fsub fast float 3.000000e+00, %5115
  %5117 = fadd fast float %5115, 1.000000e+00
  %5118 = fsub fast float 2.000000e+00, %5111
  %5119 = bitcast float %5116 to i32
  %5120 = sub nsw i32 2129859010, %5119
  %5121 = bitcast i32 %5120 to float
  %5122 = fmul fast float %5121, %5118
  %5123 = fadd fast float %5122, -1.000000e+00
  %5124 = bitcast float %5117 to i32
  %5125 = sub nsw i32 2129859010, %5124
  %5126 = bitcast i32 %5125 to float
  %5127 = fmul fast float %5126, %5111
  %5128 = fadd fast float %5127, 1.000000e+00
  %5129 = fmul fast float %5112, 2.000000e+00
  %5130 = fsub fast float 3.000000e+00, %5129
  %5131 = fadd fast float %5129, 1.000000e+00
  %5132 = fsub fast float 2.000000e+00, %5112
  %5133 = bitcast float %5130 to i32
  %5134 = sub nsw i32 2129859010, %5133
  %5135 = bitcast i32 %5134 to float
  %5136 = fmul fast float %5135, %5132
  %5137 = fadd fast float %5136, -1.000000e+00
  %5138 = bitcast float %5131 to i32
  %5139 = sub nsw i32 2129859010, %5138
  %5140 = bitcast i32 %5139 to float
  %5141 = fmul fast float %5140, %5112
  %5142 = fadd fast float %5141, 1.000000e+00
  %5143 = fadd fast float %5123, %5113
  %5144 = fmul fast float %5143, %5095
  %5145 = fadd fast float %5137, %5114
  %5146 = fmul fast float %5145, %5096
  %5147 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %5144, float %5146, float undef, float undef, i32 0, i32 0, i32 undef, float %5100)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5148 = extractvalue %dx.types.ResRet.f32 %5147, 0
  %5149 = fmul fast float %5148, %5116
  %5150 = fadd fast float %5128, %5113
  %5151 = fmul fast float %5150, %5095
  %5152 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %5151, float %5146, float undef, float undef, i32 0, i32 0, i32 undef, float %5100)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5153 = extractvalue %dx.types.ResRet.f32 %5152, 0
  %5154 = fmul fast float %5153, %5117
  %5155 = fadd fast float %5142, %5114
  %5156 = fmul fast float %5155, %5096
  %5157 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %5144, float %5156, float undef, float undef, i32 0, i32 0, i32 undef, float %5100)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5158 = extractvalue %dx.types.ResRet.f32 %5157, 0
  %5159 = fmul fast float %5158, %5116
  %5160 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %5151, float %5156, float undef, float undef, i32 0, i32 0, i32 undef, float %5100)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5161 = extractvalue %dx.types.ResRet.f32 %5160, 0
  %5162 = fmul fast float %5161, %5117
  %5163 = fadd fast float %5162, %5159
  %5164 = fmul fast float %5163, %5131
  %5165 = fadd fast float %5154, %5149
  %5166 = fmul fast float %5165, %5130
  %5167 = fadd fast float %5166, %5164
  %5168 = fmul fast float %5167, 6.250000e-02
  br label %5254

; <label>:5169                                    ; preds = %5090
  %5170 = fmul fast float %1687, 0x401921FB60000000
  %5171 = call float @dx.op.unary.f32(i32 13, float %5170)  ; Sin(value)
  %5172 = call float @dx.op.unary.f32(i32 12, float %5170)  ; Cos(value)
  %5173 = fsub fast float -0.000000e+00, %5171
  br label %5174

; <label>:5174                                    ; preds = %5223, %5169
  %5175 = phi float [ 0.000000e+00, %5169 ], [ %5218, %5223 ]
  %5176 = phi float [ 0.000000e+00, %5169 ], [ %5220, %5223 ]
  %5177 = phi i32 [ 0, %5169 ], [ %5224, %5223 ]
  %5178 = mul i32 %5177, 2
  %5179 = add i32 0, %5178
  %5180 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5179
  %5181 = load float, float* %5180, align 4
  %5182 = mul i32 %5177, 2
  %5183 = add i32 1, %5182
  %5184 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5183
  %5185 = load float, float* %5184, align 4
  %5186 = fmul fast float %5181, %5172
  %5187 = call float @dx.op.tertiary.f32(i32 46, float %5185, float %5173, float %5186)  ; FMad(a,b,c)
  %5188 = fmul fast float %5181, %5171
  %5189 = call float @dx.op.tertiary.f32(i32 46, float %5185, float %5172, float %5188)  ; FMad(a,b,c)
  %5190 = fmul fast float %5187, %5098
  %5191 = fmul fast float %5189, %5098
  %5192 = fadd fast float %5190, %3953
  %5193 = fadd fast float %5191, %3957
  %5194 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %59, float %5192, float %5193, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5195 = extractvalue %dx.types.ResRet.f32 %5194, 0
  %5196 = extractvalue %dx.types.ResRet.f32 %5194, 1
  %5197 = extractvalue %dx.types.ResRet.f32 %5194, 2
  %5198 = extractvalue %dx.types.ResRet.f32 %5194, 3
  %5199 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 0
  store float %5195, float* %5199, align 4
  %5200 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 1
  store float %5196, float* %5200, align 4
  %5201 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 2
  store float %5197, float* %5201, align 4
  %5202 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 3
  store float %5198, float* %5202, align 4
  %5203 = fsub fast float %5195, %5100
  %5204 = fcmp fast olt float %5203, 0.000000e+00
  %5205 = select i1 %5204, float 0.000000e+00, float 1.000000e+00
  %5206 = fadd fast float %5205, %5175
  %5207 = fmul fast float %5205, %5203
  %5208 = fadd fast float %5207, %5176
  br label %5209

; <label>:5209                                    ; preds = %5209, %5174
  %5210 = phi i32 [ 1, %5174 ], [ %5221, %5209 ]
  %5211 = phi float [ %5208, %5174 ], [ %5220, %5209 ]
  %5212 = phi float [ %5206, %5174 ], [ %5218, %5209 ]
  %5213 = getelementptr [4 x float], [4 x float]* %83, i32 0, i32 %5210
  %5214 = load float, float* %5213, align 4, !tbaa !101, !noalias !137
  %5215 = fsub fast float %5214, %5100
  %5216 = fcmp fast olt float %5215, 0.000000e+00
  %5217 = select i1 %5216, float 0.000000e+00, float 1.000000e+00
  %5218 = fadd fast float %5217, %5212
  %5219 = fmul fast float %5217, %5215
  %5220 = fadd fast float %5219, %5211
  %5221 = add nuw nsw i32 %5210, 1
  %5222 = icmp eq i32 %5221, 4
  br i1 %5222, label %5223, label %5209, !llvm.loop !147

; <label>:5223                                    ; preds = %5209
  %5224 = add nuw nsw i32 %5177, 1
  %5225 = icmp eq i32 %5224, 8
  br i1 %5225, label %5226, label %5174, !llvm.loop !148

; <label>:5226                                    ; preds = %5223
  %5227 = fdiv fast float 1.000000e+00, %5218
  %5228 = fmul fast float %5227, %5220
  %5229 = fdiv fast float 1.000000e+00, %5100
  %5230 = fmul fast float %5228, %5229
  %5231 = call float @dx.op.unary.f32(i32 7, float %5230)  ; Saturate(value)
  %5232 = call float @dx.op.binary.f32(i32 35, float %5231, float 0.000000e+00)  ; FMax(a,b)
  %5233 = fmul fast float %5218, 3.125000e-02
  %5234 = call float @dx.op.unary.f32(i32 7, float %5233)  ; Saturate(value)
  %5235 = fmul fast float %5234, 2.000000e+00
  %5236 = fadd fast float %5235, -1.000000e+00
  %5237 = fcmp fast ogt float %5236, 0.000000e+00
  %5238 = fcmp fast olt float %5236, 0.000000e+00
  %5239 = zext i1 %5237 to i32
  %5240 = zext i1 %5238 to i32
  %5241 = sub nsw i32 %5239, %5240
  %5242 = sitofp i32 %5241 to float
  %5243 = fmul fast float %5242, %5236
  %5244 = fsub fast float 1.000000e+00, %5243
  %5245 = fmul fast float %5244, %5244
  %5246 = fmul fast float %5245, %5244
  %5247 = fsub fast float %5244, %5246
  %5248 = fmul fast float %5247, %5232
  %5249 = fsub fast float 1.000000e+00, %5246
  %5250 = fsub fast float %5249, %5248
  %5251 = fmul fast float %5242, 5.000000e-01
  %5252 = fmul fast float %5251, %5250
  %5253 = fsub fast float 5.000000e-01, %5252
  br label %5254

; <label>:5254                                    ; preds = %5226, %5102, %5087
  %5255 = phi float [ 1.000000e+00, %5087 ], [ %5168, %5102 ], [ %5253, %5226 ]
  %5256 = fsub fast float %4921, %4754
  %5257 = fmul fast float %5256, %4016
  %5258 = fadd fast float %5257, %4754
  %5259 = fsub fast float %5088, %5258
  %5260 = fmul fast float %5259, %4047
  %5261 = fadd fast float %5260, %5258
  %5262 = fsub fast float %5255, %5261
  %5263 = fmul fast float %5262, %4075
  %5264 = fadd fast float %5263, %5261
  %5265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5266 = extractvalue %dx.types.CBufRet.f32 %5265, 2
  %5267 = fcmp fast ogt float %5266, 0.000000e+00
  br i1 %5267, label %5268, label %5308, !dx.controlflow.hints !151

; <label>:5268                                    ; preds = %5254
  %5269 = fcmp fast ugt float %5266, 0.000000e+00
  br i1 %5269, label %5270, label %5305

; <label>:5270                                    ; preds = %5268
  %5271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.f32 %5271, 0
  %5273 = extractvalue %dx.types.CBufRet.f32 %5271, 1
  %5274 = extractvalue %dx.types.CBufRet.f32 %5271, 2
  %5275 = extractvalue %dx.types.CBufRet.f32 %5271, 3
  %5276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5277 = extractvalue %dx.types.CBufRet.f32 %5276, 0
  %5278 = extractvalue %dx.types.CBufRet.f32 %5276, 1
  %5279 = extractvalue %dx.types.CBufRet.f32 %5276, 2
  %5280 = extractvalue %dx.types.CBufRet.f32 %5276, 3
  %5281 = extractvalue %dx.types.CBufRet.f32 %5265, 0
  %5282 = extractvalue %dx.types.CBufRet.f32 %5265, 1
  %5283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5284 = extractvalue %dx.types.CBufRet.f32 %5283, 0
  %5285 = extractvalue %dx.types.CBufRet.f32 %5283, 1
  %5286 = extractvalue %dx.types.CBufRet.f32 %5283, 2
  %5287 = fadd fast float %5284, %144
  %5288 = fadd fast float %5285, %145
  %5289 = fadd fast float %5286, %146
  %5290 = fmul fast float %5287, %5272
  %5291 = call float @dx.op.tertiary.f32(i32 46, float %5273, float %5288, float %5290)  ; FMad(a,b,c)
  %5292 = call float @dx.op.tertiary.f32(i32 46, float %5274, float %5289, float %5291)  ; FMad(a,b,c)
  %5293 = fadd fast float %5292, %5275
  %5294 = fmul fast float %5287, %5277
  %5295 = call float @dx.op.tertiary.f32(i32 46, float %5278, float %5288, float %5294)  ; FMad(a,b,c)
  %5296 = call float @dx.op.tertiary.f32(i32 46, float %5279, float %5289, float %5295)  ; FMad(a,b,c)
  %5297 = fadd fast float %5296, %5280
  %5298 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %55, float %5293, float %5297, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5299 = extractvalue %dx.types.ResRet.f32 %5298, 0
  %5300 = fmul fast float %5299, %5282
  %5301 = fadd fast float %5300, %5281
  %5302 = call float @dx.op.unary.f32(i32 7, float %5301)  ; Saturate(value)
  %5303 = fmul fast float %5302, %5266
  %5304 = fsub fast float 1.000000e+00, %5303
  br label %5305

; <label>:5305                                    ; preds = %5270, %5268
  %5306 = phi float [ %5304, %5270 ], [ 1.000000e+00, %5268 ]
  %5307 = fmul fast float %5306, %5264
  br label %5308

; <label>:5308                                    ; preds = %5305, %5254, %3918
  %5309 = phi float [ 1.000000e+00, %3918 ], [ %5307, %5305 ], [ %5264, %5254 ]
  %5310 = call float @dx.op.binary.f32(i32 36, float %5309, float %5309)  ; FMin(a,b)
  %5311 = call float @dx.op.binary.f32(i32 36, float %5309, float %5310)  ; FMin(a,b)
  %5312 = fcmp fast ogt float %5311, 0.000000e+00
  br i1 %5312, label %5313, label %5478, !dx.controlflow.hints !152

; <label>:5313                                    ; preds = %5308
  %5314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5315 = extractvalue %dx.types.CBufRet.f32 %5314, 0
  %5316 = extractvalue %dx.types.CBufRet.f32 %5314, 1
  %5317 = extractvalue %dx.types.CBufRet.f32 %5314, 2
  %5318 = extractvalue %dx.types.CBufRet.f32 %5314, 3
  %5319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5320 = extractvalue %dx.types.CBufRet.f32 %5319, 0
  %5321 = extractvalue %dx.types.CBufRet.f32 %5319, 1
  %5322 = extractvalue %dx.types.CBufRet.f32 %5319, 2
  %5323 = extractvalue %dx.types.CBufRet.f32 %5319, 3
  %5324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5325 = extractvalue %dx.types.CBufRet.f32 %5324, 0
  %5326 = extractvalue %dx.types.CBufRet.f32 %5324, 1
  %5327 = extractvalue %dx.types.CBufRet.f32 %5324, 2
  %5328 = extractvalue %dx.types.CBufRet.f32 %5324, 3
  %5329 = fmul fast float %5315, %144
  %5330 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5316, float %5329)  ; FMad(a,b,c)
  %5331 = call float @dx.op.tertiary.f32(i32 46, float %146, float %5317, float %5330)  ; FMad(a,b,c)
  %5332 = fadd fast float %5331, %5318
  %5333 = fmul fast float %5320, %144
  %5334 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5321, float %5333)  ; FMad(a,b,c)
  %5335 = call float @dx.op.tertiary.f32(i32 46, float %146, float %5322, float %5334)  ; FMad(a,b,c)
  %5336 = fadd fast float %5335, %5323
  %5337 = fmul fast float %5325, %144
  %5338 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5326, float %5337)  ; FMad(a,b,c)
  %5339 = call float @dx.op.tertiary.f32(i32 46, float %146, float %5327, float %5338)  ; FMad(a,b,c)
  %5340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5341 = extractvalue %dx.types.CBufRet.f32 %5340, 0
  %5342 = extractvalue %dx.types.CBufRet.f32 %5340, 1
  %5343 = extractvalue %dx.types.CBufRet.f32 %5340, 3
  %5344 = fmul fast float %5343, %5332
  %5345 = fmul fast float %5343, %5336
  %5346 = fadd fast float %5344, %5341
  %5347 = fadd fast float %5345, %5342
  %5348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5349 = extractvalue %dx.types.CBufRet.f32 %5348, 0
  %5350 = extractvalue %dx.types.CBufRet.f32 %5348, 1
  %5351 = fsub fast float %5346, %5349
  %5352 = fsub fast float %5347, %5350
  %5353 = fcmp fast olt float %5351, 0.000000e+00
  %5354 = fcmp fast olt float %5352, 0.000000e+00
  %5355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5356 = extractvalue %dx.types.CBufRet.f32 %5355, 0
  %5357 = extractvalue %dx.types.CBufRet.f32 %5355, 1
  %5358 = extractvalue %dx.types.CBufRet.f32 %5355, 2
  %5359 = extractvalue %dx.types.CBufRet.f32 %5355, 3
  %5360 = select i1 %5353, float %5356, float %5358
  %5361 = select i1 %5354, float %5357, float %5359
  %5362 = fmul fast float %5360, %5351
  %5363 = fmul fast float %5361, %5352
  %5364 = call float @dx.op.unary.f32(i32 6, float %5362)  ; FAbs(value)
  %5365 = call float @dx.op.unary.f32(i32 6, float %5363)  ; FAbs(value)
  %5366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5367 = extractvalue %dx.types.CBufRet.f32 %5366, 0
  %5368 = call float @dx.op.binary.f32(i32 35, float %5364, float %5365)  ; FMax(a,b)
  %5369 = fsub fast float %5367, %5368
  %5370 = call float @dx.op.unary.f32(i32 7, float %5369)  ; Saturate(value)
  %5371 = fcmp fast ogt float %5370, 0.000000e+00
  br i1 %5371, label %5372, label %5413, !dx.controlflow.hints !153

; <label>:5372                                    ; preds = %5313
  %5373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %58, float %5346, float %5347, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5374 = extractvalue %dx.types.ResRet.f32 %5373, 1
  %5375 = fcmp fast ogt float %5374, 0.000000e+00
  br i1 %5375, label %5376, label %5408

; <label>:5376                                    ; preds = %5372
  %5377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %58, float %5346, float %5347, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5378 = extractvalue %dx.types.ResRet.f32 %5377, 0
  %5379 = extractvalue %dx.types.ResRet.f32 %5377, 1
  %5380 = extractvalue %dx.types.ResRet.f32 %5377, 2
  %5381 = extractvalue %dx.types.ResRet.f32 %5377, 3
  %5382 = fsub fast float 1.000000e+00, %5328
  %5383 = fsub fast float %5382, %5339
  %5384 = fmul fast float %5383, 0x400921FB60000000
  %5385 = fadd fast float %5384, 0x3FF921FB60000000
  %5386 = call float @dx.op.unary.f32(i32 13, float %5385)  ; Sin(value)
  %5387 = fadd fast float %5386, -1.000000e+00
  %5388 = fmul fast float %5387, 0x3FD45F3060000000
  %5389 = fmul fast float %5383, 0x401921FB60000000
  %5390 = fadd fast float %5389, 0x400921FB60000000
  %5391 = call float @dx.op.unary.f32(i32 13, float %5390)  ; Sin(value)
  %5392 = fadd fast float %5391, 0x3E7777A5C0000000
  %5393 = fmul fast float %5392, 0x3FC45F3060000000
  %5394 = fmul fast float %5383, 0x4022D97C80000000
  %5395 = fadd fast float %5394, 0x4012D97C80000000
  %5396 = call float @dx.op.unary.f32(i32 13, float %5395)  ; Sin(value)
  %5397 = fadd fast float %5396, 1.000000e+00
  %5398 = fmul fast float %5397, 0x3FBB2995E0000000
  %5399 = fmul fast float %5383, 0x402921FB60000000
  %5400 = fadd fast float %5399, 0x401921FB60000000
  %5401 = call float @dx.op.unary.f32(i32 13, float %5400)  ; Sin(value)
  %5402 = fadd fast float %5401, 0xBE8777A5C0000000
  %5403 = fmul fast float %5402, 0x3FB45F3060000000
  %5404 = call float @dx.op.dot4.f32(i32 56, float %5378, float %5379, float %5380, float %5381, float %5388, float %5393, float %5398, float %5403)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5405 = fmul fast float %5404, 0xBFF7154760000000
  %5406 = call float @dx.op.unary.f32(i32 21, float %5405)  ; Exp(value)
  %5407 = call float @dx.op.unary.f32(i32 7, float %5406)  ; Saturate(value)
  br label %5408

; <label>:5408                                    ; preds = %5376, %5372
  %5409 = phi float [ %5407, %5376 ], [ 1.000000e+00, %5372 ]
  %5410 = fadd fast float %5409, -1.000000e+00
  %5411 = fmul fast float %5410, %5370
  %5412 = fadd fast float %5411, 1.000000e+00
  br label %5413

; <label>:5413                                    ; preds = %5408, %5313
  %5414 = phi float [ %5412, %5408 ], [ 1.000000e+00, %5313 ]
  %5415 = fmul fast float %5414, %5309
  %5416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5417 = extractvalue %dx.types.CBufRet.f32 %5416, 0
  %5418 = extractvalue %dx.types.CBufRet.f32 %5416, 1
  %5419 = extractvalue %dx.types.CBufRet.f32 %5416, 2
  %5420 = fadd fast float %5417, %144
  %5421 = fadd fast float %5418, %145
  %5422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5423 = extractvalue %dx.types.CBufRet.f32 %5422, 1
  %5424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5425 = extractvalue %dx.types.CBufRet.f32 %5424, 0
  %5426 = extractvalue %dx.types.CBufRet.f32 %5424, 1
  %5427 = extractvalue %dx.types.CBufRet.f32 %5424, 2
  %5428 = fsub fast float -0.000000e+00, %5420
  %5429 = fsub fast float -0.000000e+00, %5421
  %5430 = fsub fast float %2336, %5419
  %5431 = fadd fast float %5430, %5423
  %5432 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5428, float %5429, float %5431)  ; Dot3(ax,ay,az,bx,by,bz)
  %5433 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5425, float %5426, float %5427)  ; Dot3(ax,ay,az,bx,by,bz)
  %5434 = fdiv fast float 1.000000e+00, %5433
  %5435 = fmul fast float %5434, %5432
  %5436 = fmul fast float %5425, %5435
  %5437 = fmul fast float %5426, %5435
  %5438 = fadd fast float %5436, %5420
  %5439 = fadd fast float %5437, %5421
  %5440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5441 = extractvalue %dx.types.CBufRet.f32 %5440, 0
  %5442 = extractvalue %dx.types.CBufRet.f32 %5440, 1
  %5443 = fsub fast float %5438, %5441
  %5444 = fsub fast float %5439, %5442
  %5445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.f32 %5445, 2
  %5447 = extractvalue %dx.types.CBufRet.f32 %5445, 3
  %5448 = fmul fast float %5443, %5446
  %5449 = fmul fast float %5444, %5447
  %5450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5451 = extractvalue %dx.types.CBufRet.i32 %5450, 3
  %5452 = icmp eq i32 %5451, 0
  br i1 %5452, label %5458, label %5453

; <label>:5453                                    ; preds = %5413
  %5454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %57, float %5448, float %5449, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5455 = extractvalue %dx.types.ResRet.f32 %5454, 0
  %5456 = extractvalue %dx.types.ResRet.f32 %5454, 1
  %5457 = extractvalue %dx.types.ResRet.f32 %5454, 2
  br label %5463

; <label>:5458                                    ; preds = %5413
  %5459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %58, float %5448, float %5449, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5460 = extractvalue %dx.types.ResRet.f32 %5459, 0
  %5461 = extractvalue %dx.types.ResRet.f32 %5459, 1
  %5462 = extractvalue %dx.types.ResRet.f32 %5459, 2
  br label %5463

; <label>:5463                                    ; preds = %5458, %5453
  %5464 = phi float [ %5455, %5453 ], [ %5460, %5458 ]
  %5465 = phi float [ %5456, %5453 ], [ %5461, %5458 ]
  %5466 = phi float [ %5457, %5453 ], [ %5462, %5458 ]
  %5467 = extractvalue %dx.types.CBufRet.f32 %5422, 2
  %5468 = fmul fast float %5467, %5464
  %5469 = extractvalue %dx.types.CBufRet.f32 %5422, 0
  %5470 = fsub fast float %5435, %5469
  %5471 = fsub fast float %5470, %5468
  %5472 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5471)  ; FMax(a,b)
  %5473 = fmul fast float %5472, %5465
  %5474 = call float @dx.op.binary.f32(i32 36, float %5466, float %5473)  ; FMin(a,b)
  %5475 = fmul fast float %5474, 0xBFF7154760000000
  %5476 = call float @dx.op.unary.f32(i32 21, float %5475)  ; Exp(value)
  %5477 = fmul fast float %5415, %5476
  br label %5478

; <label>:5478                                    ; preds = %5463, %5308
  %5479 = phi float [ %5477, %5463 ], [ %5309, %5308 ]
  %5480 = call float @dx.op.binary.f32(i32 36, float %5479, float %5479)  ; FMin(a,b)
  %5481 = call float @dx.op.binary.f32(i32 36, float %5479, float %5480)  ; FMin(a,b)
  %5482 = fcmp fast ogt float %5481, 0.000000e+00
  br i1 %5482, label %5483, label %5650, !dx.controlflow.hints !154

; <label>:5483                                    ; preds = %5478
  %5484 = bitcast i32 %2353 to float
  %5485 = fmul fast float %5479, %3930
  %5486 = fmul fast float %5479, %3931
  %5487 = fmul fast float %5479, %3932
  %5488 = fsub fast float %3919, %2228
  %5489 = fsub fast float %3920, %2229
  %5490 = fsub fast float %3921, %2230
  %5491 = call float @dx.op.dot3.f32(i32 55, float %5488, float %5489, float %5490, float %5488, float %5489, float %5490)  ; Dot3(ax,ay,az,bx,by,bz)
  %5492 = call float @dx.op.unary.f32(i32 25, float %5491)  ; Rsqrt(value)
  %5493 = fmul fast float %5492, %5488
  %5494 = fmul fast float %5492, %5489
  %5495 = fmul fast float %5492, %5490
  %5496 = call float @dx.op.dot3.f32(i32 55, float %3919, float %3920, float %3921, float %2200, float %2201, float %2202)  ; Dot3(ax,ay,az,bx,by,bz)
  %5497 = call float @dx.op.dot3.f32(i32 55, float %2337, float %2338, float %2339, float %5493, float %5494, float %5495)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = call float @dx.op.unary.f32(i32 7, float %5496)  ; Saturate(value)
  %5499 = fmul fast float %5498, %5498
  %5500 = fmul fast float %5499, %5484
  %5501 = call float @dx.op.unary.f32(i32 7, float %5500)  ; Saturate(value)
  %5502 = fmul fast float %5501, %5498
  %5503 = call float @dx.op.dot3.f32(i32 55, float %2200, float %2201, float %2202, float %5493, float %5494, float %5495)  ; Dot3(ax,ay,az,bx,by,bz)
  %5504 = fmul fast float %5503, %5503
  %5505 = call float @dx.op.unary.f32(i32 6, float %5496)  ; FAbs(value)
  %5506 = fsub fast float 1.000000e+00, %2283
  %5507 = call float @dx.op.binary.f32(i32 35, float %5506, float 0x3F847AE140000000)  ; FMax(a,b)
  %5508 = fmul fast float %5507, %5507
  %5509 = fmul fast float %5508, %5508
  %5510 = fsub fast float 1.000000e+00, %5509
  %5511 = fmul fast float %2342, %2342
  %5512 = fmul fast float %5511, %5510
  %5513 = fadd fast float %5512, %5509
  %5514 = bitcast float %5513 to i32
  %5515 = ashr i32 %5514, 1
  %5516 = add nsw i32 %5515, 532487669
  %5517 = bitcast i32 %5516 to float
  %5518 = fadd fast float %5517, %2342
  %5519 = fmul fast float %5509, %5504
  %5520 = fsub fast float 1.000000e+00, %5504
  %5521 = fadd fast float %5520, %5519
  %5522 = fmul fast float %5505, %5505
  %5523 = fmul fast float %5522, %5510
  %5524 = fadd fast float %5523, %5509
  %5525 = bitcast float %5524 to i32
  %5526 = ashr i32 %5525, 1
  %5527 = add nsw i32 %5526, 532487669
  %5528 = bitcast i32 %5527 to float
  %5529 = fadd fast float %5528, %5505
  %5530 = fmul fast float %5521, %5521
  %5531 = fmul fast float %5530, %5518
  %5532 = fmul fast float %5531, %5529
  %5533 = fdiv fast float 0x3FF0A00000000000, %5532
  %5534 = fmul fast float %5533, %5509
  %5535 = call float @dx.op.unary.f32(i32 6, float %5497)  ; FAbs(value)
  %5536 = fsub fast float 1.000000e+00, %5535
  %5537 = bitcast float %5536 to i32
  %5538 = sitofp i32 %5537 to float
  %5539 = fmul fast float %5538, 5.000000e+00
  %5540 = fadd fast float %5539, 0xC1EFBF8940000000
  %5541 = fptosi float %5540 to i32
  %5542 = bitcast i32 %5541 to float
  %5543 = fmul fast float %5542, %3168
  %5544 = fmul fast float %5542, %3169
  %5545 = fmul fast float %5542, %3170
  %5546 = fadd fast float %5543, %2221
  %5547 = fadd fast float %5544, %2222
  %5548 = fadd fast float %5545, %2340
  %5549 = fmul fast float %5496, 9.843750e-01
  %5550 = fmul fast float %2283, 9.843750e-01
  %5551 = fadd fast float %5549, 7.812500e-03
  %5552 = fadd fast float %5550, 7.812500e-03
  %5553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %5551, float %5552, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5554 = extractvalue %dx.types.ResRet.f32 %5553, 2
  %5555 = extractvalue %dx.types.ResRet.f32 %5553, 3
  %5556 = fmul fast float %5554, %2221
  %5557 = fmul fast float %5554, %2222
  %5558 = fmul fast float %5554, %2340
  %5559 = fadd fast float %5556, %5555
  %5560 = fadd fast float %5557, %5555
  %5561 = fadd fast float %5558, %5555
  %5562 = call float @dx.op.binary.f32(i32 35, float %5560, float %5561)  ; FMax(a,b)
  %5563 = call float @dx.op.binary.f32(i32 35, float %5559, float %5562)  ; FMax(a,b)
  %5564 = fsub fast float 1.000000e+00, %5563
  %5565 = fsub fast float -0.000000e+00, %2200
  %5566 = fsub fast float -0.000000e+00, %2201
  %5567 = fsub fast float -0.000000e+00, %2202
  %5568 = call float @dx.op.dot3.f32(i32 55, float %3919, float %3920, float %3921, float %5565, float %5566, float %5567)  ; Dot3(ax,ay,az,bx,by,bz)
  %5569 = call float @dx.op.unary.f32(i32 7, float %5568)  ; Saturate(value)
  %5570 = fmul fast float %5569, 9.843750e-01
  %5571 = fadd fast float %5570, 7.812500e-03
  %5572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %5571, float %5552, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5573 = extractvalue %dx.types.ResRet.f32 %5572, 2
  %5574 = extractvalue %dx.types.ResRet.f32 %5572, 3
  %5575 = fmul fast float %5573, %2221
  %5576 = fmul fast float %5573, %2222
  %5577 = fmul fast float %5573, %2340
  %5578 = fadd fast float %5575, %5574
  %5579 = fadd fast float %5576, %5574
  %5580 = fadd fast float %5577, %5574
  %5581 = call float @dx.op.binary.f32(i32 35, float %5579, float %5580)  ; FMax(a,b)
  %5582 = call float @dx.op.binary.f32(i32 35, float %5578, float %5581)  ; FMax(a,b)
  %5583 = fsub fast float 1.000000e+00, %5582
  %5584 = fmul fast float %2222, 0x4012D0A400000000
  %5585 = fadd fast float %5584, 0x3FDB6377A0000000
  %5586 = fmul fast float %5506, %5585
  %5587 = call float @dx.op.unary.f32(i32 7, float %5586)  ; Saturate(value)
  %5588 = fsub fast float %3919, %2347
  %5589 = fsub fast float %3920, %2348
  %5590 = fsub fast float %3921, %2349
  %5591 = call float @dx.op.dot3.f32(i32 55, float %5588, float %5589, float %5590, float %5588, float %5589, float %5590)  ; Dot3(ax,ay,az,bx,by,bz)
  %5592 = call float @dx.op.unary.f32(i32 25, float %5591)  ; Rsqrt(value)
  %5593 = fmul fast float %5592, %5588
  %5594 = fmul fast float %5592, %5589
  %5595 = fmul fast float %5592, %5590
  %5596 = call float @dx.op.dot3.f32(i32 55, float %5565, float %5566, float %5567, float %5593, float %5594, float %5595)  ; Dot3(ax,ay,az,bx,by,bz)
  %5597 = fmul fast float %5596, %5596
  %5598 = call float @dx.op.unary.f32(i32 6, float %5569)  ; FAbs(value)
  %5599 = call float @dx.op.binary.f32(i32 35, float %5587, float 0x3F847AE140000000)  ; FMax(a,b)
  %5600 = fmul fast float %5599, %5599
  %5601 = fmul fast float %5600, %5600
  %5602 = fsub fast float 1.000000e+00, %5601
  %5603 = fmul fast float %5511, %5602
  %5604 = fadd fast float %5603, %5601
  %5605 = bitcast float %5604 to i32
  %5606 = ashr i32 %5605, 1
  %5607 = add nsw i32 %5606, 532487669
  %5608 = bitcast i32 %5607 to float
  %5609 = fadd fast float %5608, %2342
  %5610 = fmul fast float %5601, %5597
  %5611 = fsub fast float 1.000000e+00, %5597
  %5612 = fadd fast float %5611, %5610
  %5613 = fmul fast float %5598, %5598
  %5614 = fmul fast float %5613, %5602
  %5615 = fadd fast float %5614, %5601
  %5616 = bitcast float %5615 to i32
  %5617 = ashr i32 %5616, 1
  %5618 = add nsw i32 %5617, 532487669
  %5619 = bitcast i32 %5618 to float
  %5620 = fadd fast float %5619, %5598
  %5621 = fmul fast float %5612, %5612
  %5622 = fmul fast float %5621, %5609
  %5623 = fmul fast float %5622, %5620
  %5624 = fdiv fast float 0x3FF0A00000000000, %5623
  %5625 = fmul fast float %5624, %5601
  %5626 = fmul fast float %5583, %5569
  %5627 = fmul fast float %5626, %5625
  %5628 = fmul fast float %5534, %5502
  %5629 = fmul fast float %5628, %5546
  %5630 = fmul fast float %5628, %5547
  %5631 = fmul fast float %5628, %5548
  %5632 = fadd fast float %5627, %5629
  %5633 = fadd fast float %5627, %5630
  %5634 = fadd fast float %5627, %5631
  %5635 = fmul fast float %5502, %5485
  %5636 = fmul fast float %5635, %5564
  %5637 = fmul fast float %5502, %5486
  %5638 = fmul fast float %5637, %5564
  %5639 = fmul fast float %5502, %5487
  %5640 = fmul fast float %5639, %5564
  %5641 = fadd fast float %5636, %3906
  %5642 = fadd fast float %5638, %3907
  %5643 = fadd fast float %5640, %3908
  %5644 = fmul fast float %5632, %5485
  %5645 = fmul fast float %5633, %5486
  %5646 = fmul fast float %5634, %5487
  %5647 = fadd fast float %5644, %3912
  %5648 = fadd fast float %5645, %3913
  %5649 = fadd fast float %5646, %3914
  br label %5650

; <label>:5650                                    ; preds = %5483, %5478, %3902
  %5651 = phi float [ %5479, %5483 ], [ 0.000000e+00, %3902 ], [ 0.000000e+00, %5478 ]
  %5652 = phi float [ %5647, %5483 ], [ %3912, %3902 ], [ %3912, %5478 ]
  %5653 = phi float [ %5648, %5483 ], [ %3913, %3902 ], [ %3913, %5478 ]
  %5654 = phi float [ %5649, %5483 ], [ %3914, %3902 ], [ %3914, %5478 ]
  %5655 = phi float [ %5641, %5483 ], [ %3906, %3902 ], [ %3906, %5478 ]
  %5656 = phi float [ %5642, %5483 ], [ %3907, %3902 ], [ %3907, %5478 ]
  %5657 = phi float [ %5643, %5483 ], [ %3908, %3902 ], [ %3908, %5478 ]
  %5658 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5659 = extractvalue %dx.types.CBufRet.i32 %5658, 0
  %5660 = icmp eq i32 %5659, 0
  br i1 %5660, label %6256, label %5661

; <label>:5661                                    ; preds = %5650
  %5662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5663 = extractvalue %dx.types.CBufRet.f32 %5662, 2
  %5664 = extractvalue %dx.types.CBufRet.f32 %5662, 3
  %5665 = fmul fast float %5663, %89
  %5666 = fmul fast float %5664, %90
  %5667 = fptoui float %5665 to i32
  %5668 = fptoui float %5666 to i32
  %5669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5670 = extractvalue %dx.types.CBufRet.f32 %5669, 0
  %5671 = extractvalue %dx.types.CBufRet.f32 %5669, 2
  %5672 = extractvalue %dx.types.CBufRet.f32 %5669, 3
  %5673 = fadd fast float %78, -4.000000e+00
  %5674 = call float @dx.op.binary.f32(i32 35, float %5673, float 0.000000e+00)  ; FMax(a,b)
  %5675 = fadd fast float %5674, %5670
  %5676 = fmul fast float %5675, %5671
  %5677 = call float @dx.op.unary.f32(i32 23, float %5676)  ; Log(value)
  %5678 = fmul fast float %5677, %5672
  %5679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5680 = extractvalue %dx.types.CBufRet.f32 %5679, 2
  %5681 = fmul fast float %5678, %5680
  %5682 = call float @dx.op.unary.f32(i32 7, float %5681)  ; Saturate(value)
  %5683 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5684 = extractvalue %dx.types.CBufRet.i32 %5683, 1
  %5685 = add i32 %5684, -1
  %5686 = uitofp i32 %5684 to float
  %5687 = fmul fast float %5686, %5682
  %5688 = fptoui float %5687 to i32
  %5689 = call i32 @dx.op.binary.i32(i32 40, i32 %5688, i32 %5685)  ; UMin(a,b)
  %5690 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.i32 %5690, 2
  %5692 = extractvalue %dx.types.CBufRet.i32 %5690, 3
  %5693 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5668, i32 %5691, i32 %5667)  ; UMad(a,b,c)
  %5694 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5689, i32 %5692, i32 %5693)  ; UMad(a,b,c)
  %5695 = add nsw i32 %5659, -1
  %5696 = call i32 @dx.op.binary.i32(i32 37, i32 %5695, i32 0)  ; IMax(a,b)
  %5697 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %5698 = fptoui float %5697 to i32
  %5699 = lshr i32 %5698, 5
  %5700 = call i32 @dx.op.binary.i32(i32 40, i32 %5699, i32 8191)  ; UMin(a,b)
  %5701 = shl i32 %5700, 2
  %5702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5701, i32 undef)  ; BufferLoad(srv,index,wot)
  %5703 = extractvalue %dx.types.ResRet.i32 %5702, 0
  %5704 = lshr i32 %5703, 16
  %5705 = and i32 %5703, 65535
  %5706 = lshr i32 %5703, 21
  %5707 = lshr i32 %5705, 5
  %5708 = call i32 @dx.op.binary.i32(i32 40, i32 %5707, i32 %5696)  ; UMin(a,b)
  %5709 = icmp ugt i32 %5706, %5708
  br i1 %5709, label %6256, label %5710

; <label>:5710                                    ; preds = %5661
  br label %5711

; <label>:5711                                    ; preds = %6246, %5710
  %5712 = phi i32 [ %6253, %6246 ], [ %5706, %5710 ]
  %5713 = phi float [ %6247, %6246 ], [ %5652, %5710 ]
  %5714 = phi float [ %6248, %6246 ], [ %5653, %5710 ]
  %5715 = phi float [ %6249, %6246 ], [ %5654, %5710 ]
  %5716 = phi float [ %6250, %6246 ], [ %5655, %5710 ]
  %5717 = phi float [ %6251, %6246 ], [ %5656, %5710 ]
  %5718 = phi float [ %6252, %6246 ], [ %5657, %5710 ]
  %5719 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5720 = extractvalue %dx.types.CBufRet.i32 %5719, 0
  %5721 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5694, i32 %5720, i32 %5712)  ; UMad(a,b,c)
  %5722 = shl i32 %5721, 2
  %5723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5722, i32 undef)  ; BufferLoad(srv,index,wot)
  %5724 = extractvalue %dx.types.ResRet.i32 %5723, 0
  %5725 = shl i32 %5712, 5
  %5726 = sub nsw i32 %5704, %5725
  %5727 = call i32 @dx.op.binary.i32(i32 37, i32 %5726, i32 0)  ; IMax(a,b)
  %5728 = call i32 @dx.op.binary.i32(i32 38, i32 %5727, i32 31)  ; IMin(a,b)
  %5729 = sub nsw i32 1, %5704
  %5730 = add nsw i32 %5729, %5705
  %5731 = call i32 @dx.op.binary.i32(i32 37, i32 %5730, i32 0)  ; IMax(a,b)
  %5732 = call i32 @dx.op.binary.i32(i32 38, i32 %5731, i32 32)  ; IMin(a,b)
  %5733 = and i32 %5732, 31
  %5734 = shl i32 -1, %5733
  %5735 = xor i32 %5734, -1
  %5736 = and i32 %5728, 31
  %5737 = shl i32 %5735, %5736
  %5738 = icmp eq i32 %5732, 32
  %5739 = select i1 %5738, i32 -1, i32 %5737
  %5740 = and i32 %5739, %5724
  %5741 = icmp eq i32 %5740, 0
  br i1 %5741, label %6246, label %5742

; <label>:5742                                    ; preds = %5711
  br label %5743

; <label>:5743                                    ; preds = %5878, %5742
  %5744 = phi i32 [ %5755, %5878 ], [ %5740, %5742 ]
  %5745 = phi float [ %5879, %5878 ], [ %5713, %5742 ]
  %5746 = phi float [ %5880, %5878 ], [ %5714, %5742 ]
  %5747 = phi float [ %5881, %5878 ], [ %5715, %5742 ]
  %5748 = phi float [ %5882, %5878 ], [ %5716, %5742 ]
  %5749 = phi float [ %5883, %5878 ], [ %5717, %5742 ]
  %5750 = phi float [ %5884, %5878 ], [ %5718, %5742 ]
  %5751 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5744)  ; FirstbitLo(value)
  %5752 = add i32 %5751, %5725
  %5753 = and i32 %5751, 31
  %5754 = shl i32 1, %5753
  %5755 = xor i32 %5754, %5744
  %5756 = mul i32 %5752, 112
  %5757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %5756, i32 undef)  ; BufferLoad(srv,index,wot)
  %5758 = extractvalue %dx.types.ResRet.f32 %5757, 0
  %5759 = extractvalue %dx.types.ResRet.f32 %5757, 1
  %5760 = extractvalue %dx.types.ResRet.f32 %5757, 2
  %5761 = or i32 %5756, 12
  %5762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %5761, i32 undef)  ; BufferLoad(srv,index,wot)
  %5763 = extractvalue %dx.types.ResRet.f32 %5762, 0
  %5764 = add i32 %5756, 16
  %5765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %5764, i32 undef)  ; BufferLoad(srv,index,wot)
  %5766 = extractvalue %dx.types.ResRet.f32 %5765, 0
  %5767 = extractvalue %dx.types.ResRet.f32 %5765, 1
  %5768 = extractvalue %dx.types.ResRet.f32 %5765, 2
  %5769 = add i32 %5756, 28
  %5770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5769, i32 undef)  ; BufferLoad(srv,index,wot)
  %5771 = extractvalue %dx.types.ResRet.i32 %5770, 0
  %5772 = add i32 %5756, 44
  %5773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %5772, i32 undef)  ; BufferLoad(srv,index,wot)
  %5774 = extractvalue %dx.types.ResRet.f32 %5773, 0
  %5775 = add i32 %5756, 48
  %5776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %5775, i32 undef)  ; BufferLoad(srv,index,wot)
  %5777 = extractvalue %dx.types.ResRet.f32 %5776, 0
  %5778 = extractvalue %dx.types.ResRet.f32 %5776, 1
  %5779 = extractvalue %dx.types.ResRet.f32 %5776, 2
  %5780 = extractvalue %dx.types.ResRet.f32 %5776, 3
  %5781 = add i32 %5756, 64
  %5782 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %5781, i32 undef)  ; BufferLoad(srv,index,wot)
  %5783 = extractvalue %dx.types.ResRet.f32 %5782, 0
  %5784 = extractvalue %dx.types.ResRet.f32 %5782, 1
  %5785 = extractvalue %dx.types.ResRet.f32 %5782, 2
  %5786 = extractvalue %dx.types.ResRet.f32 %5782, 3
  %5787 = add i32 %5756, 80
  %5788 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %5787, i32 undef)  ; BufferLoad(srv,index,wot)
  %5789 = extractvalue %dx.types.ResRet.f32 %5788, 1
  %5790 = extractvalue %dx.types.ResRet.f32 %5788, 2
  %5791 = add i32 %5756, 92
  %5792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5791, i32 undef)  ; BufferLoad(srv,index,wot)
  %5793 = extractvalue %dx.types.ResRet.i32 %5792, 0
  %5794 = call float @dx.op.dot3.f32(i32 55, float %5758, float %5759, float %5760, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5795 = select i1 %2335, float %5789, float %5758
  %5796 = select i1 %2335, float %5794, float %5759
  %5797 = select i1 %2335, float %5790, float %5760
  %5798 = and i32 %5793, 65535
  %5799 = uitofp i32 %5798 to float
  %5800 = lshr i32 %5793, 16
  %5801 = uitofp i32 %5800 to float
  %5802 = and i32 %5771, 65535
  %5803 = and i32 %5771, 50331648
  %5804 = icmp slt i32 %5771, 0
  %5805 = icmp eq i32 %5803, 33554432
  %5806 = fsub fast float %5777, %144
  %5807 = fsub fast float %5778, %145
  %5808 = fsub fast float %5779, %146
  %5809 = call float @dx.op.dot3.f32(i32 55, float %5806, float %5807, float %5808, float %5806, float %5807, float %5808)  ; Dot3(ax,ay,az,bx,by,bz)
  %5810 = call float @dx.op.unary.f32(i32 24, float %5809)  ; Sqrt(value)
  %5811 = fdiv fast float 1.000000e+00, %5810
  %5812 = fmul fast float %5811, %5806
  %5813 = fmul fast float %5811, %5807
  %5814 = fmul fast float %5811, %5808
  %5815 = fadd fast float %5810, %5763
  %5816 = fdiv fast float 1.000000e+00, %5815
  %5817 = fmul float %5774, %5816
  %5818 = fmul float %5817, %5817
  %5819 = call float @dx.op.unary.f32(i32 7, float %5818)  ; Saturate(value)
  br i1 %5805, label %5820, label %5841

; <label>:5820                                    ; preds = %5743
  %5821 = fmul fast float %5785, %5766
  %5822 = fmul fast float %5785, %5767
  %5823 = fmul fast float %5785, %5768
  %5824 = fadd fast float %5806, %5821
  %5825 = fadd fast float %5807, %5822
  %5826 = fadd fast float %5808, %5823
  %5827 = call float @dx.op.dot3.f32(i32 55, float %5824, float %5825, float %5826, float %5824, float %5825, float %5826)  ; Dot3(ax,ay,az,bx,by,bz)
  %5828 = call float @dx.op.unary.f32(i32 25, float %5827)  ; Rsqrt(value)
  %5829 = fmul fast float %5828, %5824
  %5830 = fmul fast float %5828, %5825
  %5831 = fmul fast float %5828, %5826
  %5832 = fsub fast float %144, %5777
  %5833 = fsub fast float %145, %5778
  %5834 = fsub fast float %146, %5779
  %5835 = fsub fast float -0.000000e+00, %5832
  %5836 = fsub fast float -0.000000e+00, %5833
  %5837 = fsub fast float -0.000000e+00, %5834
  %5838 = call float @dx.op.dot3.f32(i32 55, float %5835, float %5836, float %5837, float %5766, float %5767, float %5768)  ; Dot3(ax,ay,az,bx,by,bz)
  %5839 = fcmp fast ogt float %5838, 0.000000e+00
  %5840 = uitofp i1 %5839 to float
  br label %5841

; <label>:5841                                    ; preds = %5820, %5743
  %5842 = phi float [ %5840, %5820 ], [ 1.000000e+00, %5743 ]
  %5843 = phi float [ %5829, %5820 ], [ %5812, %5743 ]
  %5844 = phi float [ %5830, %5820 ], [ %5813, %5743 ]
  %5845 = phi float [ %5831, %5820 ], [ %5814, %5743 ]
  %5846 = call float @dx.op.dot3.f32(i32 55, float %5766, float %5767, float %5768, float %5843, float %5844, float %5845)  ; Dot3(ax,ay,az,bx,by,bz)
  %5847 = fmul fast float %5846, %5846
  %5848 = call float @dx.op.unary.f32(i32 7, float %5847)  ; Saturate(value)
  %5849 = fsub fast float 1.000000e+00, %5848
  %5850 = fmul fast float %5849, 5.000000e-01
  %5851 = fcmp fast ogt float %5846, 0.000000e+00
  %5852 = fsub fast float 1.000000e+00, %5850
  %5853 = select i1 %5851, float %5850, float %5852
  %5854 = fmul fast float %5853, %5801
  %5855 = fadd fast float %5854, %5799
  %5856 = fmul fast float %5855, 0x3EF0001000000000
  %5857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %58, float %5856, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5858 = extractvalue %dx.types.ResRet.f32 %5857, 0
  %5859 = fmul fast float %5846, %5783
  %5860 = fadd fast float %5859, %5784
  %5861 = call float @dx.op.unary.f32(i32 7, float %5860)  ; Saturate(value)
  %5862 = select i1 %5805, float 1.000000e+00, float %5861
  %5863 = select i1 %5805, float %5861, float 1.000000e+00
  %5864 = fmul fast float %5810, %5780
  %5865 = fsub fast float 1.000000e+00, %5864
  %5866 = fmul fast float %5865, %5786
  %5867 = call float @dx.op.unary.f32(i32 7, float %5866)  ; Saturate(value)
  %5868 = fmul fast float %5867, %5863
  %5869 = fmul fast float %5868, 2.000000e+00
  %5870 = fsub fast float 3.000000e+00, %5869
  %5871 = fmul fast float %5858, %5842
  %5872 = fmul fast float %5868, %5868
  %5873 = fmul fast float %5872, %5871
  %5874 = fmul fast float %5873, %5870
  %5875 = call float @dx.op.binary.f32(i32 36, float %5874, float %5874)  ; FMin(a,b)
  %5876 = call float @dx.op.binary.f32(i32 36, float %5874, float %5875)  ; FMin(a,b)
  %5877 = fcmp fast ogt float %5876, 0.000000e+00
  br i1 %5877, label %5886, label %5878, !dx.controlflow.hints !155

; <label>:5878                                    ; preds = %6219, %6025, %5841
  %5879 = phi float [ %5745, %6025 ], [ %5745, %5841 ], [ %6242, %6219 ]
  %5880 = phi float [ %5746, %6025 ], [ %5746, %5841 ], [ %6243, %6219 ]
  %5881 = phi float [ %5747, %6025 ], [ %5747, %5841 ], [ %6244, %6219 ]
  %5882 = phi float [ %5748, %6025 ], [ %5748, %5841 ], [ %6236, %6219 ]
  %5883 = phi float [ %5749, %6025 ], [ %5749, %5841 ], [ %6237, %6219 ]
  %5884 = phi float [ %5750, %6025 ], [ %5750, %5841 ], [ %6238, %6219 ]
  %5885 = icmp eq i32 %5744, %5754
  br i1 %5885, label %6245, label %5743

; <label>:5886                                    ; preds = %5841
  %5887 = icmp eq i32 %5802, 255
  br i1 %5887, label %6025, label %5888, !dx.controlflow.hints !156

; <label>:5888                                    ; preds = %5886
  %5889 = mul nuw nsw i32 %5802, 176
  %5890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5889, i32 undef)  ; BufferLoad(srv,index,wot)
  %5891 = extractvalue %dx.types.ResRet.f32 %5890, 0
  %5892 = extractvalue %dx.types.ResRet.f32 %5890, 1
  %5893 = extractvalue %dx.types.ResRet.f32 %5890, 2
  %5894 = extractvalue %dx.types.ResRet.f32 %5890, 3
  %5895 = add nuw nsw i32 %5889, 16
  %5896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5895, i32 undef)  ; BufferLoad(srv,index,wot)
  %5897 = extractvalue %dx.types.ResRet.f32 %5896, 0
  %5898 = extractvalue %dx.types.ResRet.f32 %5896, 1
  %5899 = add nuw nsw i32 %5889, 32
  %5900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5899, i32 undef)  ; BufferLoad(srv,index,wot)
  %5901 = extractvalue %dx.types.ResRet.f32 %5900, 0
  %5902 = extractvalue %dx.types.ResRet.f32 %5900, 1
  %5903 = add nuw nsw i32 %5889, 48
  %5904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5903, i32 undef)  ; BufferLoad(srv,index,wot)
  %5905 = extractvalue %dx.types.ResRet.f32 %5904, 0
  %5906 = extractvalue %dx.types.ResRet.f32 %5904, 1
  %5907 = extractvalue %dx.types.ResRet.f32 %5904, 2
  %5908 = extractvalue %dx.types.ResRet.f32 %5904, 3
  %5909 = add nuw nsw i32 %5889, 64
  %5910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5909, i32 undef)  ; BufferLoad(srv,index,wot)
  %5911 = extractvalue %dx.types.ResRet.f32 %5910, 0
  %5912 = extractvalue %dx.types.ResRet.f32 %5910, 1
  %5913 = extractvalue %dx.types.ResRet.f32 %5910, 2
  %5914 = extractvalue %dx.types.ResRet.f32 %5910, 3
  %5915 = add nuw nsw i32 %5889, 80
  %5916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5915, i32 undef)  ; BufferLoad(srv,index,wot)
  %5917 = extractvalue %dx.types.ResRet.f32 %5916, 0
  %5918 = extractvalue %dx.types.ResRet.f32 %5916, 1
  %5919 = extractvalue %dx.types.ResRet.f32 %5916, 2
  %5920 = extractvalue %dx.types.ResRet.f32 %5916, 3
  %5921 = add nuw nsw i32 %5889, 96
  %5922 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5921, i32 undef)  ; BufferLoad(srv,index,wot)
  %5923 = extractvalue %dx.types.ResRet.f32 %5922, 0
  %5924 = extractvalue %dx.types.ResRet.f32 %5922, 1
  %5925 = extractvalue %dx.types.ResRet.f32 %5922, 2
  %5926 = extractvalue %dx.types.ResRet.f32 %5922, 3
  %5927 = bitcast float %5898 to i32
  %5928 = fmul fast float %5905, %144
  %5929 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5911, float %5928)  ; FMad(a,b,c)
  %5930 = call float @dx.op.tertiary.f32(i32 46, float %146, float %5917, float %5929)  ; FMad(a,b,c)
  %5931 = fadd fast float %5930, %5923
  %5932 = fmul fast float %5906, %144
  %5933 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5912, float %5932)  ; FMad(a,b,c)
  %5934 = call float @dx.op.tertiary.f32(i32 46, float %146, float %5918, float %5933)  ; FMad(a,b,c)
  %5935 = fadd fast float %5934, %5924
  %5936 = fmul fast float %5907, %144
  %5937 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5913, float %5936)  ; FMad(a,b,c)
  %5938 = call float @dx.op.tertiary.f32(i32 46, float %146, float %5919, float %5937)  ; FMad(a,b,c)
  %5939 = fadd fast float %5938, %5925
  %5940 = fmul fast float %5908, %144
  %5941 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5914, float %5940)  ; FMad(a,b,c)
  %5942 = call float @dx.op.tertiary.f32(i32 46, float %146, float %5920, float %5941)  ; FMad(a,b,c)
  %5943 = fadd fast float %5942, %5926
  %5944 = fdiv fast float %5931, %5943
  %5945 = fdiv fast float %5935, %5943
  %5946 = fdiv fast float %5939, %5943
  %5947 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5946)  ; FMax(a,b)
  %5948 = fmul fast float %1687, 0x401921FB60000000
  %5949 = call float @dx.op.unary.f32(i32 13, float %5948)  ; Sin(value)
  %5950 = call float @dx.op.unary.f32(i32 12, float %5948)  ; Cos(value)
  %5951 = fmul fast float %5950, %5902
  %5952 = call float @dx.op.tertiary.f32(i32 46, float %5949, float %5902, float 0.000000e+00)  ; FMad(a,b,c)
  %5953 = fmul fast float %5902, %5949
  %5954 = fsub fast float -0.000000e+00, %5953
  %5955 = call float @dx.op.tertiary.f32(i32 46, float %5950, float %5902, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5956

; <label>:5956                                    ; preds = %5956, %5888
  %5957 = phi float [ 0.000000e+00, %5888 ], [ %5989, %5956 ]
  %5958 = phi float [ 0.000000e+00, %5888 ], [ %5991, %5956 ]
  %5959 = phi i32 [ 0, %5888 ], [ %5992, %5956 ]
  %5960 = mul i32 %5959, 2
  %5961 = add i32 0, %5960
  %5962 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5961
  %5963 = load float, float* %5962, align 4
  %5964 = mul i32 %5959, 2
  %5965 = add i32 1, %5964
  %5966 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5965
  %5967 = load float, float* %5966, align 4
  %5968 = fmul fast float %5951, %5963
  %5969 = call float @dx.op.tertiary.f32(i32 46, float %5967, float %5954, float %5968)  ; FMad(a,b,c)
  %5970 = fmul fast float %5963, %5952
  %5971 = call float @dx.op.tertiary.f32(i32 46, float %5967, float %5955, float %5970)  ; FMad(a,b,c)
  %5972 = fadd fast float %5969, %5944
  %5973 = fadd fast float %5971, %5945
  %5974 = fmul fast float %5972, %5897
  %5975 = fmul fast float %5973, %5897
  %5976 = call float @dx.op.binary.f32(i32 35, float %5974, float %5893)  ; FMax(a,b)
  %5977 = call float @dx.op.binary.f32(i32 35, float %5975, float %5893)  ; FMax(a,b)
  %5978 = call float @dx.op.binary.f32(i32 36, float %5976, float %5894)  ; FMin(a,b)
  %5979 = call float @dx.op.binary.f32(i32 36, float %5977, float %5894)  ; FMin(a,b)
  %5980 = fadd fast float %5978, %5891
  %5981 = fadd fast float %5979, %5892
  %5982 = uitofp i32 %5927 to float
  %5983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %59, float %5980, float %5981, float %5982, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5984 = extractvalue %dx.types.ResRet.f32 %5983, 0
  %5985 = fsub fast float %5984, %5947
  %5986 = fsub fast float %5985, %5901
  %5987 = fcmp fast ogt float %5986, 0.000000e+00
  %5988 = select i1 %5987, float 1.000000e+00, float 0.000000e+00
  %5989 = fadd fast float %5988, %5957
  %5990 = select i1 %5987, float %5986, float 0.000000e+00
  %5991 = fadd fast float %5990, %5958
  %5992 = add nuw nsw i32 %5959, 1
  %5993 = icmp eq i32 %5992, 8
  br i1 %5993, label %5994, label %5956

; <label>:5994                                    ; preds = %5956
  %5995 = fdiv fast float 1.000000e+00, %5989
  %5996 = fmul fast float %5995, %5991
  %5997 = fdiv fast float 1.000000e+00, %5947
  %5998 = fmul fast float %5996, %5997
  %5999 = call float @dx.op.unary.f32(i32 7, float %5998)  ; Saturate(value)
  %6000 = call float @dx.op.binary.f32(i32 35, float %5999, float 0.000000e+00)  ; FMax(a,b)
  %6001 = fmul fast float %5989, 1.250000e-01
  %6002 = call float @dx.op.unary.f32(i32 7, float %6001)  ; Saturate(value)
  %6003 = fmul fast float %6002, 2.000000e+00
  %6004 = fadd fast float %6003, -1.000000e+00
  %6005 = fcmp fast ogt float %6004, 0.000000e+00
  %6006 = fcmp fast olt float %6004, 0.000000e+00
  %6007 = zext i1 %6005 to i32
  %6008 = zext i1 %6006 to i32
  %6009 = sub nsw i32 %6007, %6008
  %6010 = sitofp i32 %6009 to float
  %6011 = fmul fast float %6010, %6004
  %6012 = fsub fast float 1.000000e+00, %6011
  %6013 = fmul fast float %6012, %6012
  %6014 = fmul fast float %6013, %6012
  %6015 = fsub fast float %6012, %6014
  %6016 = fmul fast float %6015, %6000
  %6017 = fsub fast float 1.000000e+00, %6014
  %6018 = fsub fast float %6017, %6016
  %6019 = fmul fast float %6010, 5.000000e-01
  %6020 = fmul fast float %6019, %6018
  %6021 = fsub fast float -5.000000e-01, %6020
  %6022 = fmul fast float %6021, %5862
  %6023 = fadd fast float %6022, 1.000000e+00
  %6024 = fmul fast float %6023, %5874
  br label %6025

; <label>:6025                                    ; preds = %5994, %5886
  %6026 = phi float [ %6024, %5994 ], [ %5874, %5886 ]
  %6027 = call float @dx.op.binary.f32(i32 36, float %6026, float %6026)  ; FMin(a,b)
  %6028 = call float @dx.op.binary.f32(i32 36, float %6026, float %6027)  ; FMin(a,b)
  %6029 = fcmp fast ogt float %6028, 0.000000e+00
  br i1 %6029, label %6030, label %5878, !dx.controlflow.hints !157

; <label>:6030                                    ; preds = %6025
  %6031 = bitcast i32 %2353 to float
  %6032 = fmul fast float %6026, %5795
  %6033 = fmul fast float %6026, %5796
  %6034 = fmul fast float %6026, %5797
  %6035 = fsub fast float %5812, %2228
  %6036 = fsub fast float %5813, %2229
  %6037 = fsub fast float %5814, %2230
  %6038 = call float @dx.op.dot3.f32(i32 55, float %6035, float %6036, float %6037, float %6035, float %6036, float %6037)  ; Dot3(ax,ay,az,bx,by,bz)
  %6039 = call float @dx.op.unary.f32(i32 25, float %6038)  ; Rsqrt(value)
  %6040 = fmul fast float %6039, %6035
  %6041 = fmul fast float %6039, %6036
  %6042 = fmul fast float %6039, %6037
  %6043 = call float @dx.op.dot3.f32(i32 55, float %5812, float %5813, float %5814, float %2200, float %2201, float %2202)  ; Dot3(ax,ay,az,bx,by,bz)
  %6044 = call float @dx.op.dot3.f32(i32 55, float %2337, float %2338, float %2339, float %6040, float %6041, float %6042)  ; Dot3(ax,ay,az,bx,by,bz)
  %6045 = call float @dx.op.unary.f32(i32 7, float %6043)  ; Saturate(value)
  %6046 = fmul fast float %6045, %5819
  %6047 = fmul fast float %6045, %6045
  %6048 = fmul fast float %6047, %6031
  %6049 = call float @dx.op.unary.f32(i32 7, float %6048)  ; Saturate(value)
  %6050 = fmul fast float %6046, %6049
  %6051 = bitcast float %5809 to i32
  %6052 = ashr i32 %6051, 1
  %6053 = sub nsw i32 1597463007, %6052
  %6054 = bitcast i32 %6053 to float
  %6055 = fmul fast float %6054, %5806
  %6056 = fmul fast float %6054, %5807
  %6057 = fmul fast float %6054, %5808
  %6058 = fsub fast float %6055, %2228
  %6059 = fsub fast float %6056, %2229
  %6060 = fsub fast float %6057, %2230
  %6061 = call float @dx.op.dot3.f32(i32 55, float %6058, float %6059, float %6060, float %6058, float %6059, float %6060)  ; Dot3(ax,ay,az,bx,by,bz)
  %6062 = call float @dx.op.unary.f32(i32 25, float %6061)  ; Rsqrt(value)
  %6063 = fmul fast float %6058, %6062
  %6064 = fmul fast float %6059, %6062
  %6065 = fmul fast float %6060, %6062
  %6066 = call float @dx.op.dot3.f32(i32 55, float %2200, float %2201, float %2202, float %6063, float %6064, float %6065)  ; Dot3(ax,ay,az,bx,by,bz)
  %6067 = fmul fast float %6066, %6066
  %6068 = call float @dx.op.unary.f32(i32 6, float %6043)  ; FAbs(value)
  %6069 = fsub fast float 1.000000e+00, %2283
  %6070 = call float @dx.op.binary.f32(i32 35, float %6069, float 0x3F847AE140000000)  ; FMax(a,b)
  %6071 = fmul fast float %6070, %6070
  %6072 = fmul fast float %6071, %6071
  %6073 = fsub fast float 1.000000e+00, %6072
  %6074 = fmul fast float %2342, %2342
  %6075 = fmul fast float %6074, %6073
  %6076 = fadd fast float %6075, %6072
  %6077 = bitcast float %6076 to i32
  %6078 = ashr i32 %6077, 1
  %6079 = add nsw i32 %6078, 532487669
  %6080 = bitcast i32 %6079 to float
  %6081 = fadd fast float %6080, %2342
  %6082 = fmul fast float %6072, %6067
  %6083 = fsub fast float 1.000000e+00, %6067
  %6084 = fadd fast float %6083, %6082
  %6085 = fmul fast float %6068, %6068
  %6086 = fmul fast float %6085, %6073
  %6087 = fadd fast float %6086, %6072
  %6088 = bitcast float %6087 to i32
  %6089 = ashr i32 %6088, 1
  %6090 = add nsw i32 %6089, 532487669
  %6091 = bitcast i32 %6090 to float
  %6092 = fadd fast float %6091, %6068
  %6093 = fmul fast float %6084, %6084
  %6094 = fmul fast float %6093, %6081
  %6095 = fmul fast float %6094, %6092
  %6096 = fdiv fast float 1.000000e+00, %6095
  %6097 = bitcast float %6072 to i32
  %6098 = sitofp i32 %6097 to float
  %6099 = fmul fast float %6098, 0x3FE7F73180000000
  %6100 = fadd fast float %6099, 0x41AFE27C40000000
  %6101 = fptosi float %6100 to i32
  %6102 = bitcast i32 %6101 to float
  %6103 = fmul fast float %5774, 0x3FD80E9D60000000
  %6104 = fmul fast float %6103, %6054
  %6105 = fadd fast float %6102, %6104
  %6106 = bitcast float %6105 to i32
  %6107 = sub nsw i32 2129859010, %6106
  %6108 = bitcast i32 %6107 to float
  %6109 = fmul fast float %6072, %6096
  %6110 = fmul fast float %6109, %6102
  %6111 = fmul fast float %6110, %6108
  %6112 = call float @dx.op.unary.f32(i32 6, float %6044)  ; FAbs(value)
  %6113 = fsub fast float 1.000000e+00, %6112
  %6114 = bitcast float %6113 to i32
  %6115 = sitofp i32 %6114 to float
  %6116 = fmul fast float %6115, 5.000000e+00
  %6117 = fadd fast float %6116, 0xC1EFBF8940000000
  %6118 = fptosi float %6117 to i32
  %6119 = bitcast i32 %6118 to float
  %6120 = fmul fast float %6119, %3168
  %6121 = fmul fast float %6119, %3169
  %6122 = fmul fast float %6119, %3170
  %6123 = fadd fast float %6120, %2221
  %6124 = fadd fast float %6121, %2222
  %6125 = fadd fast float %6122, %2340
  %6126 = fmul fast float %6043, 9.843750e-01
  %6127 = fmul fast float %2283, 9.843750e-01
  %6128 = fadd fast float %6126, 7.812500e-03
  %6129 = fadd fast float %6127, 7.812500e-03
  %6130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %6128, float %6129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6131 = extractvalue %dx.types.ResRet.f32 %6130, 2
  %6132 = extractvalue %dx.types.ResRet.f32 %6130, 3
  %6133 = fmul fast float %6131, %2221
  %6134 = fmul fast float %6131, %2222
  %6135 = fmul fast float %6131, %2340
  %6136 = fadd fast float %6133, %6132
  %6137 = fadd fast float %6134, %6132
  %6138 = fadd fast float %6135, %6132
  %6139 = call float @dx.op.binary.f32(i32 35, float %6137, float %6138)  ; FMax(a,b)
  %6140 = call float @dx.op.binary.f32(i32 35, float %6136, float %6139)  ; FMax(a,b)
  %6141 = fsub fast float 1.000000e+00, %6140
  %6142 = fsub fast float -0.000000e+00, %2200
  %6143 = fsub fast float -0.000000e+00, %2201
  %6144 = fsub fast float -0.000000e+00, %2202
  %6145 = call float @dx.op.dot3.f32(i32 55, float %5812, float %5813, float %5814, float %6142, float %6143, float %6144)  ; Dot3(ax,ay,az,bx,by,bz)
  %6146 = call float @dx.op.unary.f32(i32 7, float %6145)  ; Saturate(value)
  %6147 = fmul fast float %6146, 9.843750e-01
  %6148 = fadd fast float %6147, 7.812500e-03
  %6149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %6148, float %6129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6150 = extractvalue %dx.types.ResRet.f32 %6149, 2
  %6151 = extractvalue %dx.types.ResRet.f32 %6149, 3
  %6152 = fmul fast float %2222, 0x4012D0A400000000
  %6153 = fadd fast float %6152, 0x3FDB6377A0000000
  %6154 = fmul fast float %6069, %6153
  %6155 = call float @dx.op.unary.f32(i32 7, float %6154)  ; Saturate(value)
  %6156 = fsub fast float %6055, %2347
  %6157 = fsub fast float %6056, %2348
  %6158 = fsub fast float %6057, %2349
  %6159 = call float @dx.op.dot3.f32(i32 55, float %6156, float %6157, float %6158, float %6156, float %6157, float %6158)  ; Dot3(ax,ay,az,bx,by,bz)
  %6160 = call float @dx.op.unary.f32(i32 25, float %6159)  ; Rsqrt(value)
  %6161 = fmul fast float %6156, %6160
  %6162 = fmul fast float %6157, %6160
  %6163 = fmul fast float %6158, %6160
  %6164 = call float @dx.op.dot3.f32(i32 55, float %6142, float %6143, float %6144, float %6161, float %6162, float %6163)  ; Dot3(ax,ay,az,bx,by,bz)
  %6165 = fmul fast float %6164, %6164
  %6166 = call float @dx.op.unary.f32(i32 6, float %6146)  ; FAbs(value)
  %6167 = call float @dx.op.binary.f32(i32 35, float %6155, float 0x3F847AE140000000)  ; FMax(a,b)
  %6168 = fmul fast float %6167, %6167
  %6169 = fmul fast float %6168, %6168
  %6170 = fsub fast float 1.000000e+00, %6169
  %6171 = fmul fast float %6169, %6165
  %6172 = fsub fast float 1.000000e+00, %6165
  %6173 = fadd fast float %6172, %6171
  %6174 = bitcast float %6169 to i32
  %6175 = sitofp i32 %6174 to float
  %6176 = fmul fast float %6175, 0x3FE7F73180000000
  %6177 = fadd fast float %6176, 0x41AFE27C40000000
  %6178 = fptosi float %6177 to i32
  %6179 = bitcast i32 %6178 to float
  br i1 %5804, label %6180, label %6219

; <label>:6180                                    ; preds = %6030
  %6181 = fmul fast float %6173, %6173
  %6182 = fmul fast float %6074, %6170
  %6183 = fadd fast float %6182, %6169
  %6184 = bitcast float %6183 to i32
  %6185 = ashr i32 %6184, 1
  %6186 = add nsw i32 %6185, 532487669
  %6187 = bitcast i32 %6186 to float
  %6188 = fadd fast float %6187, %2342
  %6189 = fmul fast float %6181, %6188
  %6190 = fmul fast float %6166, %6166
  %6191 = fmul fast float %6190, %6170
  %6192 = fadd fast float %6191, %6169
  %6193 = bitcast float %6192 to i32
  %6194 = ashr i32 %6193, 1
  %6195 = add nsw i32 %6194, 532487669
  %6196 = bitcast i32 %6195 to float
  %6197 = fadd fast float %6196, %6166
  %6198 = fmul fast float %6189, %6197
  %6199 = fdiv fast float 1.000000e+00, %6198
  %6200 = fmul fast float %6169, %6199
  %6201 = fmul fast float %6200, %6179
  %6202 = fadd fast float %6179, %6104
  %6203 = bitcast float %6202 to i32
  %6204 = sub nsw i32 2129859010, %6203
  %6205 = bitcast i32 %6204 to float
  %6206 = fmul fast float %6201, %6205
  %6207 = fmul fast float %6150, %2221
  %6208 = fadd fast float %6207, %6151
  %6209 = fmul fast float %6150, %2222
  %6210 = fadd fast float %6209, %6151
  %6211 = fmul fast float %6150, %2340
  %6212 = fadd fast float %6211, %6151
  %6213 = call float @dx.op.binary.f32(i32 35, float %6210, float %6212)  ; FMax(a,b)
  %6214 = call float @dx.op.binary.f32(i32 35, float %6208, float %6213)  ; FMax(a,b)
  %6215 = fsub fast float 1.000000e+00, %6214
  %6216 = fmul fast float %6146, %5819
  %6217 = fmul fast float %6216, %6215
  %6218 = fmul fast float %6217, %6206
  br label %6219

; <label>:6219                                    ; preds = %6180, %6030
  %6220 = phi float [ %6218, %6180 ], [ 0.000000e+00, %6030 ]
  %6221 = fmul fast float %6123, %6050
  %6222 = fmul fast float %6221, %6111
  %6223 = fmul fast float %6124, %6050
  %6224 = fmul fast float %6223, %6111
  %6225 = fmul fast float %6125, %6050
  %6226 = fmul fast float %6225, %6111
  %6227 = fadd fast float %6220, %6222
  %6228 = fadd fast float %6220, %6224
  %6229 = fadd fast float %6220, %6226
  %6230 = fmul fast float %6050, %6032
  %6231 = fmul fast float %6230, %6141
  %6232 = fmul fast float %6050, %6033
  %6233 = fmul fast float %6232, %6141
  %6234 = fmul fast float %6050, %6034
  %6235 = fmul fast float %6234, %6141
  %6236 = fadd fast float %6231, %5748
  %6237 = fadd fast float %6233, %5749
  %6238 = fadd fast float %6235, %5750
  %6239 = fmul fast float %6227, %6032
  %6240 = fmul fast float %6228, %6033
  %6241 = fmul fast float %6229, %6034
  %6242 = fadd fast float %6239, %5745
  %6243 = fadd fast float %6240, %5746
  %6244 = fadd fast float %6241, %5747
  br label %5878

; <label>:6245                                    ; preds = %5878
  br label %6246

; <label>:6246                                    ; preds = %6245, %5711
  %6247 = phi float [ %5713, %5711 ], [ %5879, %6245 ]
  %6248 = phi float [ %5714, %5711 ], [ %5880, %6245 ]
  %6249 = phi float [ %5715, %5711 ], [ %5881, %6245 ]
  %6250 = phi float [ %5716, %5711 ], [ %5882, %6245 ]
  %6251 = phi float [ %5717, %5711 ], [ %5883, %6245 ]
  %6252 = phi float [ %5718, %5711 ], [ %5884, %6245 ]
  %6253 = add i32 %5712, 1
  %6254 = icmp ugt i32 %6253, %5708
  br i1 %6254, label %6255, label %5711

; <label>:6255                                    ; preds = %6246
  br label %6256

; <label>:6256                                    ; preds = %6255, %5661, %5650
  %6257 = phi float [ %5652, %5650 ], [ %5652, %5661 ], [ %6247, %6255 ]
  %6258 = phi float [ %5653, %5650 ], [ %5653, %5661 ], [ %6248, %6255 ]
  %6259 = phi float [ %5654, %5650 ], [ %5654, %5661 ], [ %6249, %6255 ]
  %6260 = phi float [ %5655, %5650 ], [ %5655, %5661 ], [ %6250, %6255 ]
  %6261 = phi float [ %5656, %5650 ], [ %5656, %5661 ], [ %6251, %6255 ]
  %6262 = phi float [ %5657, %5650 ], [ %5657, %5661 ], [ %6252, %6255 ]
  %6263 = and i32 %2279, 255
  %6264 = uitofp i32 %6263 to float
  %6265 = fmul fast float %6264, 0x3F70101020000000
  %6266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6267 = extractvalue %dx.types.CBufRet.f32 %6266, 2
  %6268 = extractvalue %dx.types.CBufRet.f32 %6266, 3
  %6269 = fmul fast float %114, %6267
  %6270 = fmul fast float %116, %6268
  %6271 = fsub fast float 1.000000e+00, %6269
  %6272 = fsub fast float 1.000000e+00, %6270
  %6273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6274 = extractvalue %dx.types.CBufRet.f32 %6273, 0
  %6275 = extractvalue %dx.types.CBufRet.f32 %6273, 1
  %6276 = extractvalue %dx.types.CBufRet.f32 %6273, 2
  %6277 = fmul fast float %6271, %6274
  %6278 = fmul fast float %6271, %6275
  %6279 = fmul fast float %6271, %6276
  %6280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6281 = extractvalue %dx.types.CBufRet.f32 %6280, 0
  %6282 = extractvalue %dx.types.CBufRet.f32 %6280, 1
  %6283 = extractvalue %dx.types.CBufRet.f32 %6280, 2
  %6284 = fmul fast float %6272, %6281
  %6285 = fmul fast float %6272, %6282
  %6286 = fmul fast float %6272, %6283
  %6287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6288 = extractvalue %dx.types.CBufRet.f32 %6287, 0
  %6289 = extractvalue %dx.types.CBufRet.f32 %6287, 1
  %6290 = extractvalue %dx.types.CBufRet.f32 %6287, 2
  %6291 = fadd fast float %6284, %6288
  %6292 = fadd fast float %6291, %6277
  %6293 = fadd fast float %6285, %6289
  %6294 = fadd fast float %6293, %6278
  %6295 = fadd fast float %6286, %6290
  %6296 = fadd fast float %6295, %6279
  %6297 = fmul fast float %6292, %78
  %6298 = fmul fast float %6294, %78
  %6299 = fmul fast float %6296, %78
  %6300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6301 = extractvalue %dx.types.CBufRet.f32 %6300, 2
  %6302 = extractvalue %dx.types.CBufRet.f32 %6300, 3
  %6303 = fmul fast float %6301, %89
  %6304 = fmul fast float %6302, %90
  %6305 = fptoui float %89 to i32
  %6306 = fptoui float %90 to i32
  %6307 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %43, i32 0, i32 %6305, i32 %6306, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6308 = extractvalue %dx.types.ResRet.f32 %6307, 0
  %6309 = fcmp fast olt float %6308, -1.000000e+00
  %6310 = fcmp fast ogt float %6308, -1.000000e+00
  %6311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6312 = extractvalue %dx.types.CBufRet.f32 %6311, 1
  %6313 = select i1 %6310, float %6312, float 1.000000e+00
  %6314 = fadd fast float %6308, 1.000000e+00
  %6315 = fmul fast float %6313, %6314
  %6316 = call float @dx.op.unary.f32(i32 6, float %6315)  ; FAbs(value)
  %6317 = fsub fast float %6316, %78
  %6318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %6319 = extractvalue %dx.types.CBufRet.f32 %6318, 2
  %6320 = fsub fast float %6317, %6319
  %6321 = extractvalue %dx.types.CBufRet.f32 %6318, 3
  %6322 = fmul fast float %6321, %6265
  %6323 = fmul fast float %6322, %6320
  %6324 = call float @dx.op.unary.f32(i32 7, float %6323)  ; Saturate(value)
  %6325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 356)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.f32 %6325, 1
  %6327 = extractvalue %dx.types.CBufRet.f32 %6325, 0
  %6328 = extractvalue %dx.types.CBufRet.f32 %6325, 3
  %6329 = extractvalue %dx.types.CBufRet.f32 %6325, 2
  %6330 = select i1 %6309, float %6326, float %6328
  %6331 = select i1 %6309, float %6327, float %6329
  %6332 = fsub fast float %6317, %6331
  %6333 = fmul fast float %6332, %6330
  %6334 = fsub fast float 1.000000e+00, %6265
  %6335 = fadd fast float %6334, %6333
  %6336 = call float @dx.op.unary.f32(i32 7, float %6335)  ; Saturate(value)
  %6337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %6338 = extractvalue %dx.types.CBufRet.f32 %6337, 1
  %6339 = extractvalue %dx.types.CBufRet.f32 %6337, 2
  %6340 = fsub fast float 1.000000e+00, %6304
  %6341 = fsub fast float 1.000000e+00, %6303
  %6342 = fmul fast float %6304, %6303
  %6343 = fmul fast float %6342, %6340
  %6344 = fmul fast float %6343, %6341
  %6345 = fmul fast float %6344, %6338
  %6346 = call float @dx.op.unary.f32(i32 23, float %6345)  ; Log(value)
  %6347 = fmul fast float %6346, %6339
  %6348 = call float @dx.op.unary.f32(i32 21, float %6347)  ; Exp(value)
  %6349 = call float @dx.op.unary.f32(i32 7, float %6348)  ; Saturate(value)
  %6350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 66)  ; CBufferLoadLegacy(handle,regIndex)
  %6351 = extractvalue %dx.types.CBufRet.f32 %6350, 2
  %6352 = extractvalue %dx.types.CBufRet.f32 %6350, 3
  %6353 = extractvalue %dx.types.CBufRet.f32 %6350, 0
  %6354 = fsub fast float %78, %6353
  %6355 = extractvalue %dx.types.CBufRet.f32 %6337, 0
  %6356 = fmul fast float %6354, %6355
  %6357 = call float @dx.op.unary.f32(i32 7, float %6356)  ; Saturate(value)
  %6358 = fsub fast float %6352, %6351
  %6359 = fmul fast float %6357, %6358
  %6360 = fadd fast float %6359, %6351
  %6361 = fmul fast float %6360, %6324
  %6362 = fmul fast float %6361, %2200
  %6363 = fmul fast float %6361, %2201
  %6364 = fadd fast float %6362, %6297
  %6365 = fadd fast float %6363, %6298
  %6366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6367 = extractvalue %dx.types.CBufRet.f32 %6366, 0
  %6368 = extractvalue %dx.types.CBufRet.f32 %6366, 1
  %6369 = extractvalue %dx.types.CBufRet.f32 %6366, 2
  %6370 = extractvalue %dx.types.CBufRet.f32 %6366, 3
  %6371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6372 = extractvalue %dx.types.CBufRet.f32 %6371, 0
  %6373 = extractvalue %dx.types.CBufRet.f32 %6371, 1
  %6374 = extractvalue %dx.types.CBufRet.f32 %6371, 2
  %6375 = extractvalue %dx.types.CBufRet.f32 %6371, 3
  %6376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6377 = extractvalue %dx.types.CBufRet.f32 %6376, 0
  %6378 = extractvalue %dx.types.CBufRet.f32 %6376, 1
  %6379 = extractvalue %dx.types.CBufRet.f32 %6376, 2
  %6380 = extractvalue %dx.types.CBufRet.f32 %6376, 3
  %6381 = fmul fast float %6364, %6367
  %6382 = call float @dx.op.tertiary.f32(i32 46, float %6365, float %6368, float %6381)  ; FMad(a,b,c)
  %6383 = call float @dx.op.tertiary.f32(i32 46, float %6299, float %6369, float %6382)  ; FMad(a,b,c)
  %6384 = fadd fast float %6383, %6370
  %6385 = fmul fast float %6364, %6372
  %6386 = call float @dx.op.tertiary.f32(i32 46, float %6365, float %6373, float %6385)  ; FMad(a,b,c)
  %6387 = call float @dx.op.tertiary.f32(i32 46, float %6299, float %6374, float %6386)  ; FMad(a,b,c)
  %6388 = fadd fast float %6387, %6375
  %6389 = fmul fast float %6364, %6377
  %6390 = call float @dx.op.tertiary.f32(i32 46, float %6365, float %6378, float %6389)  ; FMad(a,b,c)
  %6391 = call float @dx.op.tertiary.f32(i32 46, float %6299, float %6379, float %6390)  ; FMad(a,b,c)
  %6392 = fadd fast float %6391, %6380
  %6393 = fdiv fast float %6384, %6392
  %6394 = fdiv fast float %6388, %6392
  %6395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6396 = extractvalue %dx.types.CBufRet.f32 %6395, 0
  %6397 = extractvalue %dx.types.CBufRet.f32 %6395, 1
  %6398 = fmul fast float %6396, %6393
  %6399 = fmul fast float %6397, %6394
  %6400 = extractvalue %dx.types.CBufRet.f32 %6395, 2
  %6401 = extractvalue %dx.types.CBufRet.f32 %6395, 3
  %6402 = fadd fast float %6398, %6400
  %6403 = fadd fast float %6399, %6401
  %6404 = call float @dx.op.unary.f32(i32 7, float %6402)  ; Saturate(value)
  %6405 = call float @dx.op.unary.f32(i32 7, float %6403)  ; Saturate(value)
  %6406 = fsub fast float %6404, %6303
  %6407 = fsub fast float %6405, %6304
  %6408 = fmul fast float %6406, %6349
  %6409 = fmul fast float %6407, %6349
  %6410 = fadd fast float %6408, %6303
  %6411 = fadd fast float %6409, %6304
  %6412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %59, float %6410, float %6411, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6413 = extractvalue %dx.types.ResRet.f32 %6412, 0
  %6414 = fcmp fast ogt float %6413, -1.000000e+00
  %6415 = select i1 %6414, float %6312, float 1.000000e+00
  %6416 = fadd fast float %6413, 1.000000e+00
  %6417 = fmul fast float %6415, %6416
  %6418 = call float @dx.op.unary.f32(i32 6, float %6417)  ; FAbs(value)
  %6419 = fcmp fast ugt float %6418, %6392
  br i1 %6419, label %6421, label %6420

; <label>:6420                                    ; preds = %6256
  br label %6421

; <label>:6421                                    ; preds = %6420, %6256
  %6422 = phi float [ %6303, %6420 ], [ %6410, %6256 ]
  %6423 = phi float [ %6304, %6420 ], [ %6411, %6256 ]
  %6424 = phi float [ %78, %6420 ], [ %6392, %6256 ]
  %6425 = phi float [ %6316, %6420 ], [ %6418, %6256 ]
  br i1 %106, label %6426, label %6936

; <label>:6426                                    ; preds = %6421
  %6427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %6428 = extractvalue %dx.types.CBufRet.f32 %6427, 0
  %6429 = extractvalue %dx.types.CBufRet.f32 %6427, 1
  %6430 = extractvalue %dx.types.CBufRet.f32 %6427, 2
  %6431 = fcmp fast oge float %6429, %6424
  %6432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %6433 = extractvalue %dx.types.CBufRet.i32 %6432, 0
  %6434 = and i32 %6433, 65536
  %6435 = icmp ne i32 %6434, 0
  %6436 = and i1 %6431, %6435
  br i1 %6436, label %6437, label %6518

; <label>:6437                                    ; preds = %6426
  %6438 = extractvalue %dx.types.CBufRet.f32 %6266, 0
  %6439 = extractvalue %dx.types.CBufRet.f32 %6266, 1
  %6440 = fmul fast float %6438, %6422
  %6441 = fmul fast float %6439, %6423
  %6442 = fmul fast float %6440, %6267
  %6443 = fmul fast float %6441, %6268
  %6444 = call float @dx.op.unary.f32(i32 7, float %6442)  ; Saturate(value)
  %6445 = call float @dx.op.unary.f32(i32 7, float %6443)  ; Saturate(value)
  %6446 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %58, float %6444, float %6445, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6447 = extractvalue %dx.types.ResRet.f32 %6446, 0
  %6448 = extractvalue %dx.types.ResRet.f32 %6446, 1
  %6449 = extractvalue %dx.types.ResRet.f32 %6446, 2
  %6450 = extractvalue %dx.types.ResRet.f32 %6446, 3
  %6451 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %58, float %6444, float %6445, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6452 = extractvalue %dx.types.ResRet.f32 %6451, 0
  %6453 = extractvalue %dx.types.ResRet.f32 %6451, 1
  %6454 = extractvalue %dx.types.ResRet.f32 %6451, 2
  %6455 = extractvalue %dx.types.ResRet.f32 %6451, 3
  %6456 = call float @dx.op.binary.f32(i32 35, float %6448, float %6449)  ; FMax(a,b)
  %6457 = call float @dx.op.binary.f32(i32 35, float %6447, float %6456)  ; FMax(a,b)
  %6458 = call float @dx.op.binary.f32(i32 35, float %6457, float %6450)  ; FMax(a,b)
  %6459 = call float @dx.op.binary.f32(i32 36, float %6453, float %6454)  ; FMin(a,b)
  %6460 = call float @dx.op.binary.f32(i32 36, float %6452, float %6459)  ; FMin(a,b)
  %6461 = call float @dx.op.binary.f32(i32 36, float %6460, float %6455)  ; FMin(a,b)
  %6462 = fmul fast float %6458, 2.550000e+02
  %6463 = fadd fast float %6462, 0x3F70101020000000
  %6464 = fptoui float %6463 to i32
  %6465 = fmul fast float %6461, 2.550000e+02
  %6466 = fadd fast float %6465, 0x3F70101020000000
  %6467 = fptoui float %6466 to i32
  %6468 = icmp ult i32 %6464, %6467
  br i1 %6468, label %6469, label %6518

; <label>:6469                                    ; preds = %6437
  %6470 = fadd fast float %6425, -4.000000e+00
  %6471 = call float @dx.op.binary.f32(i32 35, float %6470, float 0.000000e+00)  ; FMax(a,b)
  %6472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6473 = extractvalue %dx.types.CBufRet.f32 %6472, 0
  %6474 = fadd fast float %6473, %6471
  %6475 = extractvalue %dx.types.CBufRet.f32 %6472, 2
  %6476 = fmul fast float %6474, %6475
  %6477 = call float @dx.op.unary.f32(i32 23, float %6476)  ; Log(value)
  %6478 = extractvalue %dx.types.CBufRet.f32 %6472, 3
  %6479 = fmul fast float %6478, %6477
  %6480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6481 = extractvalue %dx.types.CBufRet.f32 %6480, 2
  %6482 = fmul fast float %6479, %6481
  %6483 = call float @dx.op.unary.f32(i32 7, float %6482)  ; Saturate(value)
  %6484 = uitofp i32 %6464 to float
  %6485 = uitofp i32 %6467 to float
  %6486 = fadd fast float %6484, 5.000000e-01
  %6487 = fadd fast float %6485, 5.000000e-01
  %6488 = fmul fast float %6481, %6486
  %6489 = fmul fast float %6481, %6487
  %6490 = fadd fast float %6488, 0x3F0FFB4800000000
  %6491 = fadd fast float %6489, 0xBF0FFB4800000000
  %6492 = call float @dx.op.binary.f32(i32 35, float %6483, float %6490)  ; FMax(a,b)
  %6493 = call float @dx.op.binary.f32(i32 36, float %6492, float %6491)  ; FMin(a,b)
  %6494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6495 = extractvalue %dx.types.CBufRet.f32 %6494, 1
  %6496 = extractvalue %dx.types.CBufRet.f32 %6494, 2
  %6497 = extractvalue %dx.types.CBufRet.f32 %6494, 0
  %6498 = fmul fast float %6495, %6493
  %6499 = fadd fast float %6497, %6498
  %6500 = fadd fast float %6497, %6496
  %6501 = fsub fast float %6495, %6496
  %6502 = fadd fast float %6501, %6497
  %6503 = call float @dx.op.binary.f32(i32 35, float %6499, float %6500)  ; FMax(a,b)
  %6504 = call float @dx.op.binary.f32(i32 36, float %6503, float %6502)  ; FMin(a,b)
  %6505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %56, float %6444, float %6445, float %6504, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6506 = extractvalue %dx.types.ResRet.f32 %6505, 0
  %6507 = extractvalue %dx.types.ResRet.f32 %6505, 1
  %6508 = extractvalue %dx.types.ResRet.f32 %6505, 2
  %6509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %56, float %6444, float %6445, float %6504, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6510 = extractvalue %dx.types.ResRet.f32 %6509, 0
  %6511 = extractvalue %dx.types.ResRet.f32 %6509, 1
  %6512 = extractvalue %dx.types.ResRet.f32 %6509, 2
  %6513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6514 = extractvalue %dx.types.CBufRet.f32 %6513, 1
  %6515 = fmul fast float %6514, %6510
  %6516 = fmul fast float %6514, %6511
  %6517 = fmul fast float %6514, %6512
  br label %6518

; <label>:6518                                    ; preds = %6469, %6437, %6426
  %6519 = phi float [ 0.000000e+00, %6426 ], [ %6515, %6469 ], [ 0.000000e+00, %6437 ]
  %6520 = phi float [ 0.000000e+00, %6426 ], [ %6516, %6469 ], [ 0.000000e+00, %6437 ]
  %6521 = phi float [ 0.000000e+00, %6426 ], [ %6517, %6469 ], [ 0.000000e+00, %6437 ]
  %6522 = phi float [ 1.000000e+00, %6426 ], [ %6506, %6469 ], [ 1.000000e+00, %6437 ]
  %6523 = phi float [ 1.000000e+00, %6426 ], [ %6507, %6469 ], [ 1.000000e+00, %6437 ]
  %6524 = phi float [ 1.000000e+00, %6426 ], [ %6508, %6469 ], [ 1.000000e+00, %6437 ]
  %6525 = fcmp fast olt float %6265, 1.000000e+00
  %6526 = fcmp fast olt float %6428, %6425
  %6527 = or i1 %6525, %6526
  br i1 %6527, label %6528, label %6692

; <label>:6528                                    ; preds = %6518
  %6529 = lshr i32 %2296, 16
  %6530 = uitofp i32 %6529 to float
  %6531 = fmul fast float %6530, 0x3EF0001000000000
  %6532 = and i32 %2289, 65535
  %6533 = uitofp i32 %6532 to float
  %6534 = fmul fast float %6533, 0x3EF0001000000000
  %6535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %6536 = extractvalue %dx.types.CBufRet.f32 %6535, 3
  %6537 = fadd fast float %6536, 3.000000e+00
  %6538 = and i32 %1539, 16383
  %6539 = lshr i32 %1539, 16
  %6540 = and i32 %6539, 255
  %6541 = mul nuw nsw i32 %6538, 148
  %6542 = add nuw nsw i32 %6541, 60
  %6543 = add nuw nsw i32 %6541, 116
  %6544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %6545 = extractvalue %dx.types.CBufRet.i32 %6544, 0
  %6546 = call i32 @dx.op.binary.i32(i32 40, i32 %6538, i32 %6545)  ; UMin(a,b)
  %6547 = mul i32 %6546, 36
  %6548 = add i32 %6547, 4
  %6549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %6550 = extractvalue %dx.types.CBufRet.f32 %6549, 0
  %6551 = fmul fast float %6534, %6550
  %6552 = fmul fast float %6531, %6550
  %6553 = extractvalue %dx.types.CBufRet.f32 %6549, 1
  %6554 = fadd fast float %6551, %6553
  %6555 = fadd fast float %6552, %6553
  %6556 = icmp eq i32 %6540, 0
  br i1 %6556, label %6617, label %6557

; <label>:6557                                    ; preds = %6528
  br label %6558

; <label>:6558                                    ; preds = %6558, %6557
  %6559 = phi float [ %6602, %6558 ], [ 0.000000e+00, %6557 ]
  %6560 = phi float [ %6612, %6558 ], [ 0.000000e+00, %6557 ]
  %6561 = phi float [ %6613, %6558 ], [ 0.000000e+00, %6557 ]
  %6562 = phi float [ %6614, %6558 ], [ 0.000000e+00, %6557 ]
  %6563 = phi float [ %6606, %6558 ], [ 0.000000e+00, %6557 ]
  %6564 = phi float [ %6607, %6558 ], [ 0.000000e+00, %6557 ]
  %6565 = phi float [ %6608, %6558 ], [ 0.000000e+00, %6557 ]
  %6566 = phi i32 [ %6571, %6558 ], [ %6540, %6557 ]
  %6567 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6566)  ; FirstbitLo(value)
  %6568 = and i32 %6567, 31
  %6569 = shl i32 1, %6568
  %6570 = xor i32 %6569, -1
  %6571 = and i32 %6566, %6570
  %6572 = shl i32 %6567, 2
  %6573 = add i32 %6548, %6572
  %6574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %6573, i32 undef)  ; BufferLoad(srv,index,wot)
  %6575 = extractvalue %dx.types.ResRet.i32 %6574, 0
  %6576 = and i32 %6575, 32767
  %6577 = add i32 %6542, %6572
  %6578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6577, i32 undef)  ; BufferLoad(srv,index,wot)
  %6579 = extractvalue %dx.types.ResRet.f32 %6578, 0
  %6580 = add i32 %6543, %6572
  %6581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %6580, i32 undef)  ; BufferLoad(srv,index,wot)
  %6582 = extractvalue %dx.types.ResRet.i32 %6581, 0
  %6583 = add i32 %6582, 0
  %6584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %6583, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6584, %dx.types.Handle %56, float %6554, float %6555, float %6579, float undef, i32 0, i32 0, i32 undef, float %6537)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6586 = extractvalue %dx.types.ResRet.f32 %6585, 0
  %6587 = mul nuw nsw i32 %6576, 928
  %6588 = add nuw nsw i32 %6587, 44
  %6589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6588, i32 undef)  ; BufferLoad(srv,index,wot)
  %6590 = extractvalue %dx.types.ResRet.f32 %6589, 0
  %6591 = add nuw nsw i32 %6587, 48
  %6592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6591, i32 undef)  ; BufferLoad(srv,index,wot)
  %6593 = extractvalue %dx.types.ResRet.f32 %6592, 0
  %6594 = extractvalue %dx.types.ResRet.f32 %6592, 1
  %6595 = extractvalue %dx.types.ResRet.f32 %6592, 2
  %6596 = add nuw nsw i32 %6587, 60
  %6597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6596, i32 undef)  ; BufferLoad(srv,index,wot)
  %6598 = extractvalue %dx.types.ResRet.f32 %6597, 0
  %6599 = extractvalue %dx.types.ResRet.f32 %6597, 1
  %6600 = extractvalue %dx.types.ResRet.f32 %6597, 2
  %6601 = fmul fast float %6590, %6586
  %6602 = fadd fast float %6601, %6559
  %6603 = fmul fast float %6593, %6586
  %6604 = fmul fast float %6594, %6586
  %6605 = fmul fast float %6595, %6586
  %6606 = fadd fast float %6603, %6563
  %6607 = fadd fast float %6604, %6564
  %6608 = fadd fast float %6605, %6565
  %6609 = fmul fast float %6598, %6586
  %6610 = fmul fast float %6599, %6586
  %6611 = fmul fast float %6600, %6586
  %6612 = fadd fast float %6609, %6560
  %6613 = fadd fast float %6610, %6561
  %6614 = fadd fast float %6611, %6562
  %6615 = icmp eq i32 %6571, 0
  br i1 %6615, label %6616, label %6558

; <label>:6616                                    ; preds = %6558
  br label %6617

; <label>:6617                                    ; preds = %6616, %6528
  %6618 = phi float [ 0.000000e+00, %6528 ], [ %6602, %6616 ]
  %6619 = phi float [ 0.000000e+00, %6528 ], [ %6612, %6616 ]
  %6620 = phi float [ 0.000000e+00, %6528 ], [ %6613, %6616 ]
  %6621 = phi float [ 0.000000e+00, %6528 ], [ %6614, %6616 ]
  %6622 = phi float [ 0.000000e+00, %6528 ], [ %6606, %6616 ]
  %6623 = phi float [ 0.000000e+00, %6528 ], [ %6607, %6616 ]
  %6624 = phi float [ 0.000000e+00, %6528 ], [ %6608, %6616 ]
  %6625 = fmul fast float %6622, 0x3F847AE140000000
  %6626 = fmul fast float %6623, 0x3F847AE140000000
  %6627 = fmul fast float %6624, 0x3F847AE140000000
  %6628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6629 = extractvalue %dx.types.CBufRet.f32 %6628, 0
  %6630 = extractvalue %dx.types.CBufRet.f32 %6628, 1
  %6631 = extractvalue %dx.types.CBufRet.f32 %6628, 2
  %6632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6633 = extractvalue %dx.types.CBufRet.f32 %6632, 0
  %6634 = extractvalue %dx.types.CBufRet.f32 %6632, 1
  %6635 = call float @dx.op.dot3.f32(i32 55, float %6629, float %6630, float %6631, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6636 = select i1 %2335, float %6633, float %6629
  %6637 = select i1 %2335, float %6635, float %6630
  %6638 = select i1 %2335, float %6634, float %6631
  %6639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6640 = extractvalue %dx.types.CBufRet.f32 %6639, 0
  %6641 = extractvalue %dx.types.CBufRet.f32 %6639, 1
  %6642 = extractvalue %dx.types.CBufRet.f32 %6639, 2
  %6643 = fadd fast float %6622, %6619
  %6644 = fmul fast float %6643, 0x3F847AE140000000
  %6645 = fadd fast float %6623, %6620
  %6646 = fmul fast float %6645, 0x3F847AE140000000
  %6647 = fadd fast float %6624, %6621
  %6648 = fmul fast float %6647, 0x3F847AE140000000
  %6649 = call float @dx.op.dot3.f32(i32 55, float %6640, float %6641, float %6642, float %2228, float %2229, float %2230)  ; Dot3(ax,ay,az,bx,by,bz)
  %6650 = fcmp fast ogt float %6618, 0.000000e+00
  %6651 = select i1 %6650, float 1.000000e+00, float -1.000000e+00
  %6652 = fmul fast float %6651, 5.000000e-01
  %6653 = fmul fast float %6652, %6649
  %6654 = fmul fast float %6651, %6618
  %6655 = fadd fast float %6653, 4.921875e-01
  %6656 = fadd fast float %6654, -3.125000e-02
  %6657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %58, float %6655, float 0x3FB25F3060000000, float %6656, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6658 = extractvalue %dx.types.ResRet.f32 %6657, 0
  %6659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %6660 = extractvalue %dx.types.CBufRet.f32 %6659, 0
  %6661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %6662 = extractvalue %dx.types.CBufRet.f32 %6661, 0
  %6663 = fmul fast float %6662, %6660
  %6664 = extractvalue %dx.types.CBufRet.f32 %6661, 1
  %6665 = fadd fast float %6663, %6664
  %6666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %6667 = extractvalue %dx.types.CBufRet.f32 %6666, 0
  %6668 = fmul fast float %6667, %5651
  %6669 = extractvalue %dx.types.CBufRet.f32 %6666, 1
  %6670 = fadd fast float %6668, %6669
  %6671 = call float @dx.op.unary.f32(i32 7, float %6670)  ; Saturate(value)
  %6672 = extractvalue %dx.types.CBufRet.f32 %6659, 3
  %6673 = extractvalue %dx.types.CBufRet.f32 %6661, 2
  %6674 = fmul fast float %6673, %6672
  %6675 = extractvalue %dx.types.CBufRet.f32 %6661, 3
  %6676 = fadd fast float %6674, %6675
  %6677 = fmul fast float %6658, 0x400921FB60000000
  %6678 = fmul fast float %6677, %6665
  %6679 = fmul fast float %6678, %6671
  %6680 = fmul fast float %6636, %6625
  %6681 = fmul fast float %6680, %6679
  %6682 = fmul fast float %6637, %6626
  %6683 = fmul fast float %6682, %6679
  %6684 = fmul fast float %6638, %6627
  %6685 = fmul fast float %6684, %6679
  %6686 = fmul fast float %6625, %3165
  %6687 = fmul fast float %6686, %6676
  %6688 = fmul fast float %6626, %3166
  %6689 = fmul fast float %6688, %6676
  %6690 = fmul fast float %6627, %3167
  %6691 = fmul fast float %6690, %6676
  br label %6692

; <label>:6692                                    ; preds = %6617, %6518
  %6693 = phi float [ %6644, %6617 ], [ 0.000000e+00, %6518 ]
  %6694 = phi float [ %6646, %6617 ], [ 0.000000e+00, %6518 ]
  %6695 = phi float [ %6648, %6617 ], [ 0.000000e+00, %6518 ]
  %6696 = phi float [ %6681, %6617 ], [ 0.000000e+00, %6518 ]
  %6697 = phi float [ %6683, %6617 ], [ 0.000000e+00, %6518 ]
  %6698 = phi float [ %6685, %6617 ], [ 0.000000e+00, %6518 ]
  %6699 = phi float [ %6687, %6617 ], [ 0.000000e+00, %6518 ]
  %6700 = phi float [ %6689, %6617 ], [ 0.000000e+00, %6518 ]
  %6701 = phi float [ %6691, %6617 ], [ 0.000000e+00, %6518 ]
  %6702 = call float @dx.op.binary.f32(i32 35, float %6693, float 0x3F10000000000000)  ; FMax(a,b)
  %6703 = call float @dx.op.binary.f32(i32 35, float %6694, float 0x3F10000000000000)  ; FMax(a,b)
  %6704 = call float @dx.op.binary.f32(i32 35, float %6695, float 0x3F10000000000000)  ; FMax(a,b)
  %6705 = fdiv fast float 1.000000e+00, %6702
  %6706 = fdiv fast float 1.000000e+00, %6703
  %6707 = fdiv fast float 1.000000e+00, %6704
  %6708 = fmul fast float %6693, 0xBFF7154760000000
  %6709 = fmul fast float %6694, 0xBFF7154760000000
  %6710 = fmul fast float %6695, 0xBFF7154760000000
  %6711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %6712 = extractvalue %dx.types.CBufRet.f32 %6711, 3
  %6713 = call float @dx.op.dot3.f32(i32 55, float %6705, float %6706, float %6707, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6714 = fmul fast float %6712, %6713
  %6715 = call float @dx.op.binary.f32(i32 35, float %6429, float %6424)  ; FMax(a,b)
  %6716 = fsub fast float %6425, %6715
  %6717 = call float @dx.op.binary.f32(i32 35, float %6716, float 0.000000e+00)  ; FMax(a,b)
  %6718 = fsub fast float %6425, %6424
  %6719 = call float @dx.op.binary.f32(i32 35, float %6718, float 0.000000e+00)  ; FMax(a,b)
  %6720 = call float @dx.op.binary.f32(i32 36, float %6719, float %6714)  ; FMin(a,b)
  %6721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %6722 = extractvalue %dx.types.CBufRet.f32 %6721, 0
  %6723 = fmul fast float %6722, %6720
  %6724 = fmul fast float %6723, %6708
  %6725 = fmul fast float %6723, %6709
  %6726 = fmul fast float %6723, %6710
  %6727 = call float @dx.op.unary.f32(i32 21, float %6724)  ; Exp(value)
  %6728 = call float @dx.op.unary.f32(i32 21, float %6725)  ; Exp(value)
  %6729 = call float @dx.op.unary.f32(i32 21, float %6726)  ; Exp(value)
  %6730 = fmul fast float %6727, %6696
  %6731 = fmul fast float %6728, %6697
  %6732 = fmul fast float %6729, %6698
  %6733 = extractvalue %dx.types.CBufRet.f32 %6721, 1
  %6734 = fmul fast float %6733, %6720
  %6735 = fmul fast float %6734, %6708
  %6736 = fmul fast float %6734, %6709
  %6737 = fmul fast float %6734, %6710
  %6738 = call float @dx.op.unary.f32(i32 21, float %6735)  ; Exp(value)
  %6739 = call float @dx.op.unary.f32(i32 21, float %6736)  ; Exp(value)
  %6740 = call float @dx.op.unary.f32(i32 21, float %6737)  ; Exp(value)
  %6741 = fmul fast float %6738, %6699
  %6742 = fmul fast float %6739, %6700
  %6743 = fmul fast float %6740, %6701
  %6744 = fadd fast float %6741, %6730
  %6745 = fadd fast float %6742, %6731
  %6746 = fadd fast float %6743, %6732
  %6747 = fmul fast float %6717, %6708
  %6748 = fmul fast float %6717, %6709
  %6749 = fmul fast float %6717, %6710
  %6750 = call float @dx.op.unary.f32(i32 21, float %6747)  ; Exp(value)
  %6751 = call float @dx.op.unary.f32(i32 21, float %6748)  ; Exp(value)
  %6752 = call float @dx.op.unary.f32(i32 21, float %6749)  ; Exp(value)
  %6753 = call float @dx.op.unary.f32(i32 7, float %6750)  ; Saturate(value)
  %6754 = call float @dx.op.unary.f32(i32 7, float %6751)  ; Saturate(value)
  %6755 = call float @dx.op.unary.f32(i32 7, float %6752)  ; Saturate(value)
  %6756 = fmul fast float %6753, %6744
  %6757 = fmul fast float %6754, %6745
  %6758 = fmul fast float %6755, %6746
  %6759 = fsub fast float %6744, %6756
  %6760 = fsub fast float %6745, %6757
  %6761 = fsub fast float %6746, %6758
  %6762 = fmul fast float %6705, %6522
  %6763 = fmul fast float %6762, %6759
  %6764 = fmul fast float %6706, %6523
  %6765 = fmul fast float %6764, %6760
  %6766 = fmul fast float %6707, %6524
  %6767 = fmul fast float %6766, %6761
  %6768 = fadd fast float %6763, %6519
  %6769 = fadd fast float %6765, %6520
  %6770 = fadd fast float %6767, %6521
  %6771 = fmul fast float %6753, %6522
  %6772 = fmul fast float %6754, %6523
  %6773 = fmul fast float %6755, %6524
  %6774 = fmul fast float %6719, %6708
  %6775 = fmul fast float %6719, %6709
  %6776 = fmul fast float %6719, %6710
  %6777 = call float @dx.op.unary.f32(i32 21, float %6774)  ; Exp(value)
  %6778 = call float @dx.op.unary.f32(i32 21, float %6775)  ; Exp(value)
  %6779 = call float @dx.op.unary.f32(i32 21, float %6776)  ; Exp(value)
  %6780 = call float @dx.op.unary.f32(i32 7, float %6777)  ; Saturate(value)
  %6781 = call float @dx.op.unary.f32(i32 7, float %6778)  ; Saturate(value)
  %6782 = call float @dx.op.unary.f32(i32 7, float %6779)  ; Saturate(value)
  %6783 = fmul fast float %6780, %6744
  %6784 = fmul fast float %6781, %6745
  %6785 = fmul fast float %6782, %6746
  %6786 = fsub fast float %6744, %6783
  %6787 = fsub fast float %6745, %6784
  %6788 = fsub fast float %6746, %6785
  %6789 = fmul fast float %6786, %6705
  %6790 = fmul fast float %6787, %6706
  %6791 = fmul fast float %6788, %6707
  %6792 = fsub fast float %6424, %6428
  %6793 = fmul fast float %6430, %6792
  %6794 = call float @dx.op.unary.f32(i32 7, float %6793)  ; Saturate(value)
  %6795 = fmul fast float %6794, %6794
  %6796 = fmul fast float %6794, 2.000000e+00
  %6797 = fsub fast float 3.000000e+00, %6796
  %6798 = fmul fast float %6795, %6797
  %6799 = fsub fast float %6789, %6768
  %6800 = fsub fast float %6790, %6769
  %6801 = fsub fast float %6791, %6770
  %6802 = fmul fast float %6798, %6799
  %6803 = fmul fast float %6798, %6800
  %6804 = fmul fast float %6798, %6801
  %6805 = fadd fast float %6802, %6768
  %6806 = fadd fast float %6803, %6769
  %6807 = fadd fast float %6804, %6770
  %6808 = fsub fast float %6780, %6771
  %6809 = fsub fast float %6781, %6772
  %6810 = fsub fast float %6782, %6773
  %6811 = fmul fast float %6798, %6808
  %6812 = fmul fast float %6798, %6809
  %6813 = fmul fast float %6798, %6810
  %6814 = fadd fast float %6811, %6771
  %6815 = fadd fast float %6812, %6772
  %6816 = fadd fast float %6813, %6773
  br i1 %6525, label %6817, label %6885

; <label>:6817                                    ; preds = %6692
  %6818 = extractvalue %dx.types.CBufRet.f32 %6721, 3
  %6819 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6818)  ; Dot3(ax,ay,az,bx,by,bz)
  %6820 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2337, float %2338, float %2339)  ; Dot3(ax,ay,az,bx,by,bz)
  %6821 = fdiv fast float 1.000000e+00, %6820
  %6822 = fmul fast float %6821, %6819
  %6823 = fcmp ogt float %2230, -0.000000e+00
  %6824 = select i1 %6823, float %6818, float %6822
  %6825 = call float @dx.op.binary.f32(i32 36, float %6824, float %6714)  ; FMin(a,b)
  %6826 = fmul fast float %6722, %6825
  %6827 = fmul fast float %6826, %6708
  %6828 = fmul fast float %6826, %6709
  %6829 = fmul fast float %6826, %6710
  %6830 = call float @dx.op.unary.f32(i32 21, float %6827)  ; Exp(value)
  %6831 = call float @dx.op.unary.f32(i32 21, float %6828)  ; Exp(value)
  %6832 = call float @dx.op.unary.f32(i32 21, float %6829)  ; Exp(value)
  %6833 = fmul fast float %6830, %6696
  %6834 = fmul fast float %6831, %6697
  %6835 = fmul fast float %6832, %6698
  %6836 = fmul fast float %6733, %6825
  %6837 = fmul fast float %6836, %6708
  %6838 = fmul fast float %6836, %6709
  %6839 = fmul fast float %6836, %6710
  %6840 = call float @dx.op.unary.f32(i32 21, float %6837)  ; Exp(value)
  %6841 = call float @dx.op.unary.f32(i32 21, float %6838)  ; Exp(value)
  %6842 = call float @dx.op.unary.f32(i32 21, float %6839)  ; Exp(value)
  %6843 = fmul fast float %6840, %6699
  %6844 = fmul fast float %6841, %6700
  %6845 = fmul fast float %6842, %6701
  %6846 = fadd fast float %6843, %6833
  %6847 = fadd fast float %6844, %6834
  %6848 = fadd fast float %6845, %6835
  %6849 = fmul fast float %6824, %6708
  %6850 = fmul fast float %6824, %6709
  %6851 = fmul fast float %6824, %6710
  %6852 = call float @dx.op.unary.f32(i32 21, float %6849)  ; Exp(value)
  %6853 = call float @dx.op.unary.f32(i32 21, float %6850)  ; Exp(value)
  %6854 = call float @dx.op.unary.f32(i32 21, float %6851)  ; Exp(value)
  %6855 = call float @dx.op.unary.f32(i32 7, float %6852)  ; Saturate(value)
  %6856 = call float @dx.op.unary.f32(i32 7, float %6853)  ; Saturate(value)
  %6857 = call float @dx.op.unary.f32(i32 7, float %6854)  ; Saturate(value)
  %6858 = fmul fast float %6855, %6846
  %6859 = fmul fast float %6856, %6847
  %6860 = fmul fast float %6857, %6848
  %6861 = fsub fast float %6846, %6858
  %6862 = fsub fast float %6847, %6859
  %6863 = fsub fast float %6848, %6860
  %6864 = fmul fast float %6861, %6705
  %6865 = fmul fast float %6862, %6706
  %6866 = fmul fast float %6863, %6707
  %6867 = fsub fast float %6805, %6864
  %6868 = fsub fast float %6806, %6865
  %6869 = fsub fast float %6807, %6866
  %6870 = fmul fast float %6867, %6265
  %6871 = fmul fast float %6868, %6265
  %6872 = fmul fast float %6869, %6265
  %6873 = fadd fast float %6870, %6864
  %6874 = fadd fast float %6871, %6865
  %6875 = fadd fast float %6872, %6866
  %6876 = fsub fast float %6814, %6855
  %6877 = fsub fast float %6815, %6856
  %6878 = fsub fast float %6816, %6857
  %6879 = fmul fast float %6876, %6265
  %6880 = fmul fast float %6877, %6265
  %6881 = fmul fast float %6878, %6265
  %6882 = fadd fast float %6879, %6855
  %6883 = fadd fast float %6880, %6856
  %6884 = fadd fast float %6881, %6857
  br label %6885

; <label>:6885                                    ; preds = %6817, %6692
  %6886 = phi float [ %6873, %6817 ], [ %6805, %6692 ]
  %6887 = phi float [ %6874, %6817 ], [ %6806, %6692 ]
  %6888 = phi float [ %6875, %6817 ], [ %6807, %6692 ]
  %6889 = phi float [ %6882, %6817 ], [ %6814, %6692 ]
  %6890 = phi float [ %6883, %6817 ], [ %6815, %6692 ]
  %6891 = phi float [ %6884, %6817 ], [ %6816, %6692 ]
  %6892 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6893 = extractvalue %dx.types.CBufRet.i32 %6892, 3
  %6894 = and i32 %6893, 3
  %6895 = icmp ne i32 %6894, 0
  %6896 = and i32 %6893, 4
  %6897 = icmp ne i32 %6896, 0
  %6898 = and i1 %6895, %6897
  br i1 %6898, label %6899, label %6906

; <label>:6899                                    ; preds = %6885
  %6900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %58, float %6422, float %6423, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6901 = extractvalue %dx.types.ResRet.f32 %6900, 0
  %6902 = fsub fast float 1.000000e+00, %6901
  %6903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %6904 = extractvalue %dx.types.CBufRet.f32 %6903, 0
  %6905 = fcmp fast olt float %6902, %6904
  br label %6909

; <label>:6906                                    ; preds = %6885
  %6907 = icmp eq i32 %6896, 0
  %6908 = and i1 %6895, %6907
  br label %6909

; <label>:6909                                    ; preds = %6906, %6899
  %6910 = phi i1 [ %6905, %6899 ], [ %6908, %6906 ]
  %6911 = xor i1 %2335, %6910
  %6912 = select i1 %6911, float 0.000000e+00, float %6265
  %6913 = fcmp fast ogt float %6912, 0.000000e+00
  %6914 = select i1 %6913, float %6422, float 0.000000e+00
  %6915 = select i1 %6913, float %6423, float 0.000000e+00
  %6916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %58, float %6914, float %6915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6917 = extractvalue %dx.types.ResRet.f32 %6916, 0
  %6918 = extractvalue %dx.types.ResRet.f32 %6916, 1
  %6919 = extractvalue %dx.types.ResRet.f32 %6916, 2
  %6920 = fmul fast float %6918, %6912
  %6921 = fmul fast float %6919, %6912
  %6922 = select i1 %2335, float 0.000000e+00, float %6920
  %6923 = select i1 %2335, float 0.000000e+00, float %6921
  %6924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6925 = extractvalue %dx.types.CBufRet.f32 %6924, 1
  %6926 = fmul fast float %6912, %6889
  %6927 = fmul fast float %6926, %6917
  %6928 = fmul fast float %6927, %6925
  %6929 = fmul fast float %6925, %6890
  %6930 = fmul fast float %6929, %6922
  %6931 = fmul fast float %6925, %6891
  %6932 = fmul fast float %6931, %6923
  %6933 = fadd fast float %6928, %6886
  %6934 = fadd fast float %6930, %6887
  %6935 = fadd fast float %6932, %6888
  br label %6975

; <label>:6936                                    ; preds = %6421
  %6937 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6938 = extractvalue %dx.types.CBufRet.i32 %6937, 3
  %6939 = and i32 %6938, 3
  %6940 = icmp ne i32 %6939, 0
  %6941 = and i32 %6938, 4
  %6942 = icmp ne i32 %6941, 0
  %6943 = and i1 %6940, %6942
  br i1 %6943, label %6944, label %6951

; <label>:6944                                    ; preds = %6936
  %6945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %58, float %6422, float %6423, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6946 = extractvalue %dx.types.ResRet.f32 %6945, 0
  %6947 = fsub fast float 1.000000e+00, %6946
  %6948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %6949 = extractvalue %dx.types.CBufRet.f32 %6948, 0
  %6950 = fcmp fast olt float %6947, %6949
  br label %6954

; <label>:6951                                    ; preds = %6936
  %6952 = icmp eq i32 %6941, 0
  %6953 = and i1 %6940, %6952
  br label %6954

; <label>:6954                                    ; preds = %6951, %6944
  %6955 = phi i1 [ %6950, %6944 ], [ %6953, %6951 ]
  %6956 = xor i1 %2335, %6955
  %6957 = select i1 %6956, float 0.000000e+00, float %6265
  %6958 = fcmp fast ogt float %6957, 0.000000e+00
  %6959 = select i1 %6958, float %6422, float 0.000000e+00
  %6960 = select i1 %6958, float %6423, float 0.000000e+00
  %6961 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %58, float %6959, float %6960, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6962 = extractvalue %dx.types.ResRet.f32 %6961, 0
  %6963 = extractvalue %dx.types.ResRet.f32 %6961, 1
  %6964 = extractvalue %dx.types.ResRet.f32 %6961, 2
  %6965 = fmul fast float %6962, %6957
  %6966 = fmul fast float %6963, %6957
  %6967 = fmul fast float %6964, %6957
  %6968 = select i1 %2335, float 0.000000e+00, float %6966
  %6969 = select i1 %2335, float 0.000000e+00, float %6967
  %6970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6971 = extractvalue %dx.types.CBufRet.f32 %6970, 1
  %6972 = fmul fast float %6965, %6971
  %6973 = fmul fast float %6968, %6971
  %6974 = fmul fast float %6969, %6971
  br label %6975

; <label>:6975                                    ; preds = %6954, %6909
  %6976 = phi float [ %6972, %6954 ], [ %6933, %6909 ]
  %6977 = phi float [ %6973, %6954 ], [ %6934, %6909 ]
  %6978 = phi float [ %6974, %6954 ], [ %6935, %6909 ]
  %6979 = fmul fast float %6976, %3179
  %6980 = fmul fast float %6977, %3179
  %6981 = fmul fast float %6978, %3179
  %6982 = select i1 %106, float %6336, float 1.000000e+00
  %6983 = fsub fast float 1.000000e+00, %2342
  %6984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6985 = extractvalue %dx.types.CBufRet.f32 %6984, 0
  %6986 = fmul fast float %6985, %6983
  %6987 = fmul fast float %2202, 2.000000e+00
  %6988 = fmul fast float %6987, %2239
  %6989 = fsub fast float %2230, %6988
  %6990 = call float @dx.op.unary.f32(i32 7, float %6989)  ; Saturate(value)
  %6991 = fsub fast float 1.000000e+00, %6990
  %6992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6993 = extractvalue %dx.types.CBufRet.f32 %6992, 3
  %6994 = fmul fast float %6993, %6991
  %6995 = fsub fast float 1.000000e+00, %2309
  %6996 = call float @dx.op.unary.f32(i32 7, float %6995)  ; Saturate(value)
  %6997 = fadd fast float %6262, %2311
  %6998 = fmul fast float %6997, %2309
  %6999 = fmul fast float %6994, %6996
  %7000 = fmul fast float %6260, %2212
  %7001 = fmul fast float %6261, %2213
  %7002 = fmul fast float %6262, %2214
  %7003 = fadd fast float %7000, %6257
  %7004 = fadd fast float %7003, %6979
  %7005 = fadd fast float %7001, %6258
  %7006 = fadd fast float %7005, %6980
  %7007 = fadd fast float %7002, %6259
  %7008 = fadd fast float %7007, %6981
  br i1 %106, label %7009, label %7811

; <label>:7009                                    ; preds = %6975
  %7010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7011 = extractvalue %dx.types.CBufRet.f32 %7010, 0
  %7012 = extractvalue %dx.types.CBufRet.f32 %7010, 1
  %7013 = extractvalue %dx.types.CBufRet.f32 %7010, 2
  %7014 = extractvalue %dx.types.CBufRet.f32 %7010, 3
  %7015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7016 = extractvalue %dx.types.CBufRet.f32 %7015, 0
  %7017 = extractvalue %dx.types.CBufRet.f32 %7015, 1
  %7018 = extractvalue %dx.types.CBufRet.f32 %7015, 2
  %7019 = extractvalue %dx.types.CBufRet.f32 %7015, 3
  %7020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7021 = extractvalue %dx.types.CBufRet.f32 %7020, 0
  %7022 = extractvalue %dx.types.CBufRet.f32 %7020, 1
  %7023 = extractvalue %dx.types.CBufRet.f32 %7020, 2
  %7024 = extractvalue %dx.types.CBufRet.f32 %7020, 3
  %7025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7026 = extractvalue %dx.types.CBufRet.f32 %7025, 0
  %7027 = extractvalue %dx.types.CBufRet.f32 %7025, 1
  %7028 = extractvalue %dx.types.CBufRet.f32 %7025, 2
  %7029 = extractvalue %dx.types.CBufRet.f32 %7025, 3
  %7030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7031 = extractvalue %dx.types.CBufRet.f32 %7030, 3
  %7032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7033 = extractvalue %dx.types.CBufRet.f32 %7032, 3
  %7034 = extractvalue %dx.types.CBufRet.f32 %7032, 0
  %7035 = extractvalue %dx.types.CBufRet.f32 %7032, 1
  %7036 = extractvalue %dx.types.CBufRet.f32 %7032, 2
  %7037 = fcmp fast olt float %7036, -5.000000e-01
  %7038 = fmul fast float %2227, %2226
  %7039 = fadd fast float %7038, %7014
  %7040 = call float @dx.op.dot3.f32(i32 55, float %2228, float %2229, float %2230, float %7011, float %7012, float %7013)  ; Dot3(ax,ay,az,bx,by,bz)
  %7041 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7042 = extractvalue %dx.types.CBufRet.i32 %7041, 1
  %7043 = and i32 %7042, 1
  %7044 = icmp ne i32 %7043, 0
  %7045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7046 = extractvalue %dx.types.CBufRet.f32 %7045, 2
  %7047 = fcmp fast ogt float %7046, 0.000000e+00
  %7048 = and i1 %7044, %7047
  br i1 %7048, label %7049, label %7455, !dx.controlflow.hints !158

; <label>:7049                                    ; preds = %7009
  %7050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7051 = extractvalue %dx.types.CBufRet.f32 %7050, 3
  %7052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7053 = extractvalue %dx.types.CBufRet.f32 %7052, 2
  %7054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7055 = extractvalue %dx.types.CBufRet.f32 %7054, 2
  %7056 = fsub fast float %7053, %7055
  %7057 = and i32 %7042, 2
  %7058 = extractvalue %dx.types.CBufRet.i32 %7041, 0
  %7059 = call i32 @dx.op.binary.i32(i32 40, i32 %7058, i32 3)  ; UMin(a,b)
  %7060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7061 = extractvalue %dx.types.CBufRet.f32 %7060, 0
  %7062 = extractvalue %dx.types.CBufRet.f32 %7060, 1
  %7063 = extractvalue %dx.types.CBufRet.f32 %7054, 0
  %7064 = extractvalue %dx.types.CBufRet.f32 %7054, 1
  %7065 = fsub fast float %7061, %7063
  %7066 = fsub fast float %7062, %7064
  %7067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7068 = extractvalue %dx.types.CBufRet.f32 %7067, 0
  %7069 = fcmp fast ogt float %7068, 0.000000e+00
  %7070 = fsub fast float -0.000000e+00, %7065
  %7071 = fsub fast float -0.000000e+00, %7066
  %7072 = call float @dx.op.dot2.f32(i32 54, float %2228, float %2229, float %2228, float %2229)  ; Dot2(ax,ay,bx,by)
  %7073 = call float @dx.op.dot2.f32(i32 54, float %2228, float %2229, float %7070, float %7071)  ; Dot2(ax,ay,bx,by)
  %7074 = fmul fast float %7073, 2.000000e+00
  %7075 = call float @dx.op.dot2.f32(i32 54, float %7070, float %7071, float %7070, float %7071)  ; Dot2(ax,ay,bx,by)
  %7076 = fmul fast float %7068, %7068
  %7077 = fsub fast float %7075, %7076
  %7078 = fmul fast float %7074, %7074
  %7079 = fmul fast float %7072, 4.000000e+00
  %7080 = fmul fast float %7079, %7077
  %7081 = fsub fast float %7078, %7080
  %7082 = fcmp fast ogt float %7081, 0.000000e+00
  br i1 %7082, label %7083, label %7098

; <label>:7083                                    ; preds = %7049
  %7084 = fcmp fast ogt float %7074, 0.000000e+00
  %7085 = call float @dx.op.unary.f32(i32 24, float %7081)  ; Sqrt(value)
  %7086 = fsub fast float -0.000000e+00, %7085
  %7087 = select i1 %7084, float %7085, float %7086
  %7088 = fadd fast float %7087, %7074
  %7089 = fmul float %7088, -5.000000e-01
  %7090 = fdiv fast float %7089, %7072
  %7091 = call float @dx.op.binary.f32(i32 35, float %7090, float 0.000000e+00)  ; FMax(a,b)
  %7092 = call float @dx.op.binary.f32(i32 36, float %7038, float %7091)  ; FMin(a,b)
  %7093 = fdiv fast float %7077, %7089
  %7094 = call float @dx.op.binary.f32(i32 35, float %7093, float 0.000000e+00)  ; FMax(a,b)
  %7095 = call float @dx.op.binary.f32(i32 36, float %7038, float %7094)  ; FMin(a,b)
  %7096 = call float @dx.op.binary.f32(i32 36, float %7092, float %7095)  ; FMin(a,b)
  %7097 = call float @dx.op.binary.f32(i32 35, float %7092, float %7095)  ; FMax(a,b)
  br label %7098

; <label>:7098                                    ; preds = %7083, %7049
  %7099 = phi float [ %7097, %7083 ], [ -1.000000e+00, %7049 ]
  %7100 = phi float [ %7096, %7083 ], [ -1.000000e+00, %7049 ]
  %7101 = phi i1 [ true, %7083 ], [ false, %7049 ]
  %7102 = and i1 %7069, %7101
  br i1 %7102, label %7103, label %7105

; <label>:7103                                    ; preds = %7098
  %7104 = fcmp fast oeq float %7100, %7099
  br i1 %7104, label %7408, label %7106

; <label>:7105                                    ; preds = %7098
  br i1 %7069, label %7408, label %7106

; <label>:7106                                    ; preds = %7105, %7103
  %7107 = phi float [ %7038, %7105 ], [ %7099, %7103 ]
  %7108 = phi float [ 0.000000e+00, %7105 ], [ %7100, %7103 ]
  %7109 = icmp ne i32 %7057, 0
  %7110 = fmul fast float %7107, %2230
  %7111 = fadd fast float %7110, %7051
  %7112 = fmul fast float %7111, %7107
  %7113 = select i1 %7109, float 0.000000e+00, float %7112
  %7114 = fcmp fast oeq float %2230, 0.000000e+00
  %7115 = fdiv fast float %7056, %2230
  %7116 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7115)  ; FMax(a,b)
  %7117 = select i1 %7114, float %7107, float %7116
  %7118 = call float @dx.op.binary.f32(i32 36, float %7107, float %7117)  ; FMin(a,b)
  %7119 = fcmp fast ogt float %2230, 0.000000e+00
  %7120 = fcmp fast olt float %7056, 0.000000e+00
  br i1 %7119, label %7121, label %7178

; <label>:7121                                    ; preds = %7106
  %7122 = icmp eq i32 %7057, 0
  br i1 %7120, label %7123, label %7167

; <label>:7123                                    ; preds = %7121
  %7124 = select i1 %7122, float %7107, float 0.000000e+00
  %7125 = fsub fast float -0.000000e+00, %7124
  %7126 = call float @dx.op.unary.f32(i32 6, float %7125)  ; FAbs(value)
  %7127 = fmul fast float %7124, %2230
  %7128 = fadd fast float %7127, %7051
  %7129 = fmul fast float %7126, %7128
  %7130 = fsub fast float %7113, %7129
  %7131 = fsub fast float %7107, %7126
  %7132 = select i1 %7122, float %7131, float 0.000000e+00
  %7133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7134 = extractvalue %dx.types.CBufRet.f32 %7133, 0
  %7135 = extractvalue %dx.types.CBufRet.f32 %7133, 1
  %7136 = extractvalue %dx.types.CBufRet.f32 %7133, 2
  %7137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7138 = extractvalue %dx.types.CBufRet.f32 %7137, 0
  %7139 = extractvalue %dx.types.CBufRet.f32 %7137, 1
  %7140 = extractvalue %dx.types.CBufRet.f32 %7137, 2
  %7141 = extractvalue %dx.types.CBufRet.f32 %7137, 3
  %7142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7143 = extractvalue %dx.types.CBufRet.f32 %7142, 3
  %7144 = call float @dx.op.binary.f32(i32 36, float %7130, float %7143)  ; FMin(a,b)
  %7145 = fmul fast float %7141, %7132
  %7146 = call float @dx.op.unary.f32(i32 7, float %7145)  ; Saturate(value)
  %7147 = fsub fast float %7138, %7134
  %7148 = fsub fast float %7139, %7135
  %7149 = fsub fast float %7140, %7136
  %7150 = fmul fast float %7146, %7147
  %7151 = fmul fast float %7146, %7148
  %7152 = fmul fast float %7146, %7149
  %7153 = fadd fast float %7150, %7134
  %7154 = fadd fast float %7151, %7135
  %7155 = fadd fast float %7152, %7136
  %7156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7157 = extractvalue %dx.types.CBufRet.f32 %7156, 0
  %7158 = extractvalue %dx.types.CBufRet.f32 %7156, 1
  %7159 = fadd fast float %7158, %7157
  %7160 = call float @dx.op.unary.f32(i32 7, float %7159)  ; Saturate(value)
  %7161 = extractvalue %dx.types.CBufRet.f32 %7156, 2
  %7162 = extractvalue %dx.types.CBufRet.f32 %7156, 3
  %7163 = fadd fast float %7162, %7161
  %7164 = call float @dx.op.unary.f32(i32 7, float %7163)  ; Saturate(value)
  %7165 = fmul fast float %7160, %7144
  %7166 = fmul fast float %7165, %7164
  br label %7408

; <label>:7167                                    ; preds = %7121
  br i1 %7122, label %7168, label %7189

; <label>:7168                                    ; preds = %7167
  %7169 = call float @dx.op.binary.f32(i32 36, float %7118, float %7108)  ; FMin(a,b)
  %7170 = fsub fast float %7118, %7169
  %7171 = fsub fast float %7170, %7107
  %7172 = call float @dx.op.unary.f32(i32 6, float %7171)  ; FAbs(value)
  %7173 = fadd fast float %7170, %7107
  %7174 = fmul fast float %7173, %2230
  %7175 = fadd fast float %7174, %7051
  %7176 = fmul fast float %7175, %7172
  %7177 = fsub fast float %7113, %7176
  br label %7189

; <label>:7178                                    ; preds = %7106
  br i1 %7120, label %7179, label %7189

; <label>:7179                                    ; preds = %7178
  %7180 = call float @dx.op.binary.f32(i32 35, float %7108, float %7118)  ; FMax(a,b)
  %7181 = icmp eq i32 %7057, 0
  %7182 = select i1 %7181, float %7118, float 0.000000e+00
  %7183 = fsub fast float -0.000000e+00, %7182
  %7184 = call float @dx.op.unary.f32(i32 6, float %7183)  ; FAbs(value)
  %7185 = fmul fast float %7182, %2230
  %7186 = fadd fast float %7185, %7051
  %7187 = fmul fast float %7184, %7186
  %7188 = fsub fast float %7113, %7187
  br label %7189

; <label>:7189                                    ; preds = %7179, %7178, %7168, %7167
  %7190 = phi float [ %7108, %7167 ], [ %7108, %7168 ], [ %7180, %7179 ], [ %7108, %7178 ]
  %7191 = phi float [ 0.000000e+00, %7167 ], [ %7172, %7168 ], [ %7184, %7179 ], [ 0.000000e+00, %7178 ]
  %7192 = phi float [ %7113, %7167 ], [ %7177, %7168 ], [ %7188, %7179 ], [ %7113, %7178 ]
  %7193 = phi float [ %7118, %7167 ], [ %7118, %7168 ], [ %7107, %7179 ], [ %7107, %7178 ]
  %7194 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 0
  store float -1.000000e+00, float* %7194, align 4, !tbaa !101, !noalias !159
  %7195 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 1
  store float -1.000000e+00, float* %7195, align 4, !tbaa !101, !noalias !159
  %7196 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 2
  store float -1.000000e+00, float* %7196, align 4, !tbaa !101, !noalias !159
  %7197 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 0
  store float -1.000000e+00, float* %7197, align 4, !tbaa !101, !noalias !159
  %7198 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 1
  store float -1.000000e+00, float* %7198, align 4, !tbaa !101, !noalias !159
  %7199 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 2
  store float -1.000000e+00, float* %7199, align 4, !tbaa !101, !noalias !159
  %7200 = icmp sgt i32 %7059, 0
  br i1 %7200, label %7201, label %7262

; <label>:7201                                    ; preds = %7189
  br label %7202

; <label>:7202                                    ; preds = %7251, %7201
  %7203 = phi i32 [ %7252, %7251 ], [ 0, %7201 ]
  %7204 = phi i32 [ %7253, %7251 ], [ 0, %7201 ]
  %7205 = add nuw i32 %7204, 171
  %7206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %7205)  ; CBufferLoadLegacy(handle,regIndex)
  %7207 = extractvalue %dx.types.CBufRet.f32 %7206, 0
  %7208 = extractvalue %dx.types.CBufRet.f32 %7206, 1
  %7209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7210 = extractvalue %dx.types.CBufRet.f32 %7209, 0
  %7211 = extractvalue %dx.types.CBufRet.f32 %7209, 1
  %7212 = fsub fast float %7207, %7210
  %7213 = fsub fast float %7208, %7211
  %7214 = extractvalue %dx.types.CBufRet.f32 %7206, 2
  %7215 = fsub fast float -0.000000e+00, %7212
  %7216 = fsub fast float -0.000000e+00, %7213
  %7217 = call float @dx.op.dot2.f32(i32 54, float %2228, float %2229, float %7215, float %7216)  ; Dot2(ax,ay,bx,by)
  %7218 = fmul fast float %7217, 2.000000e+00
  %7219 = call float @dx.op.dot2.f32(i32 54, float %7215, float %7216, float %7215, float %7216)  ; Dot2(ax,ay,bx,by)
  %7220 = fmul fast float %7214, %7214
  %7221 = fsub fast float %7219, %7220
  %7222 = fmul fast float %7218, %7218
  %7223 = fmul fast float %7079, %7221
  %7224 = fsub fast float %7222, %7223
  %7225 = fcmp fast ogt float %7224, 0.000000e+00
  br i1 %7225, label %7226, label %7241

; <label>:7226                                    ; preds = %7202
  %7227 = fcmp fast ogt float %7218, 0.000000e+00
  %7228 = call float @dx.op.unary.f32(i32 24, float %7224)  ; Sqrt(value)
  %7229 = fsub fast float -0.000000e+00, %7228
  %7230 = select i1 %7227, float %7228, float %7229
  %7231 = fadd fast float %7230, %7218
  %7232 = fmul float %7231, -5.000000e-01
  %7233 = fdiv fast float %7232, %7072
  %7234 = call float @dx.op.binary.f32(i32 35, float %7233, float 0.000000e+00)  ; FMax(a,b)
  %7235 = call float @dx.op.binary.f32(i32 36, float %7107, float %7234)  ; FMin(a,b)
  %7236 = fdiv fast float %7221, %7232
  %7237 = call float @dx.op.binary.f32(i32 35, float %7236, float 0.000000e+00)  ; FMax(a,b)
  %7238 = call float @dx.op.binary.f32(i32 36, float %7107, float %7237)  ; FMin(a,b)
  %7239 = call float @dx.op.binary.f32(i32 36, float %7235, float %7238)  ; FMin(a,b)
  %7240 = call float @dx.op.binary.f32(i32 35, float %7235, float %7238)  ; FMax(a,b)
  br label %7241

; <label>:7241                                    ; preds = %7226, %7202
  %7242 = phi float [ %7240, %7226 ], [ -1.000000e+00, %7202 ]
  %7243 = phi float [ %7239, %7226 ], [ -1.000000e+00, %7202 ]
  %7244 = phi i1 [ true, %7226 ], [ false, %7202 ]
  br i1 %7244, label %7245, label %7251

; <label>:7245                                    ; preds = %7241
  %7246 = call float @dx.op.binary.f32(i32 35, float %7190, float %7243)  ; FMax(a,b)
  %7247 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7204
  store float %7246, float* %7247, align 4, !tbaa !101, !noalias !159
  %7248 = call float @dx.op.binary.f32(i32 35, float %7190, float %7242)  ; FMax(a,b)
  %7249 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %7204
  store float %7248, float* %7249, align 4, !tbaa !101, !noalias !159
  %7250 = add nsw i32 %7203, 1
  br label %7251

; <label>:7251                                    ; preds = %7245, %7241
  %7252 = phi i32 [ %7250, %7245 ], [ %7203, %7241 ]
  %7253 = add nuw nsw i32 %7204, 1
  %7254 = icmp eq i32 %7253, %7059
  br i1 %7254, label %7255, label %7202

; <label>:7255                                    ; preds = %7251
  %7256 = load float, float* %7196, align 4, !tbaa !101, !alias.scope !175, !noalias !178
  %7257 = load float, float* %7195, align 4, !tbaa !101, !alias.scope !181, !noalias !182
  %7258 = load float, float* %7194, align 4, !tbaa !101, !alias.scope !183, !noalias !184
  %7259 = load float, float* %7199, align 4, !tbaa !101, !alias.scope !185, !noalias !188
  %7260 = load float, float* %7198, align 4, !tbaa !101, !alias.scope !191, !noalias !192
  %7261 = load float, float* %7197, align 4, !tbaa !101, !alias.scope !193, !noalias !194
  br label %7262

; <label>:7262                                    ; preds = %7255, %7189
  %7263 = phi float [ -1.000000e+00, %7189 ], [ %7261, %7255 ]
  %7264 = phi float [ -1.000000e+00, %7189 ], [ %7260, %7255 ]
  %7265 = phi float [ -1.000000e+00, %7189 ], [ %7259, %7255 ]
  %7266 = phi float [ -1.000000e+00, %7189 ], [ %7258, %7255 ]
  %7267 = phi float [ -1.000000e+00, %7189 ], [ %7257, %7255 ]
  %7268 = phi float [ -1.000000e+00, %7189 ], [ %7256, %7255 ]
  %7269 = phi i32 [ 0, %7189 ], [ %7252, %7255 ]
  %7270 = call float @dx.op.binary.f32(i32 36, float %7267, float %7268)  ; FMin(a,b)
  %7271 = call float @dx.op.binary.f32(i32 36, float %7266, float %7270)  ; FMin(a,b)
  %7272 = call float @dx.op.binary.f32(i32 35, float %7266, float %7267)  ; FMax(a,b)
  %7273 = call float @dx.op.binary.f32(i32 36, float %7272, float %7268)  ; FMin(a,b)
  %7274 = call float @dx.op.binary.f32(i32 36, float %7266, float %7267)  ; FMin(a,b)
  %7275 = call float @dx.op.binary.f32(i32 35, float %7274, float %7273)  ; FMax(a,b)
  %7276 = call float @dx.op.binary.f32(i32 35, float %7267, float %7268)  ; FMax(a,b)
  %7277 = call float @dx.op.binary.f32(i32 35, float %7266, float %7276)  ; FMax(a,b)
  store float %7271, float* %7194, align 4, !tbaa !101, !alias.scope !183, !noalias !184
  store float %7275, float* %7195, align 4, !tbaa !101, !alias.scope !181, !noalias !182
  store float %7277, float* %7196, align 4, !tbaa !101, !alias.scope !175, !noalias !178
  %7278 = call float @dx.op.binary.f32(i32 36, float %7264, float %7265)  ; FMin(a,b)
  %7279 = call float @dx.op.binary.f32(i32 36, float %7263, float %7278)  ; FMin(a,b)
  %7280 = call float @dx.op.binary.f32(i32 35, float %7263, float %7264)  ; FMax(a,b)
  %7281 = call float @dx.op.binary.f32(i32 36, float %7280, float %7265)  ; FMin(a,b)
  %7282 = call float @dx.op.binary.f32(i32 36, float %7263, float %7264)  ; FMin(a,b)
  %7283 = call float @dx.op.binary.f32(i32 35, float %7282, float %7281)  ; FMax(a,b)
  %7284 = call float @dx.op.binary.f32(i32 35, float %7264, float %7265)  ; FMax(a,b)
  %7285 = call float @dx.op.binary.f32(i32 35, float %7263, float %7284)  ; FMax(a,b)
  store float %7279, float* %7197, align 4, !tbaa !101, !alias.scope !193, !noalias !194
  store float %7283, float* %7198, align 4, !tbaa !101, !alias.scope !191, !noalias !192
  store float %7285, float* %7199, align 4, !tbaa !101, !alias.scope !185, !noalias !188
  %7286 = sub nsw i32 3, %7269
  %7287 = icmp sgt i32 %7286, 2
  br i1 %7287, label %7288, label %7326

; <label>:7288                                    ; preds = %7262
  %7289 = icmp eq i32 %7057, 0
  %7290 = fsub fast float %7107, %7191
  %7291 = select i1 %7289, float %7290, float %7191
  %7292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7293 = extractvalue %dx.types.CBufRet.f32 %7292, 0
  %7294 = extractvalue %dx.types.CBufRet.f32 %7292, 1
  %7295 = extractvalue %dx.types.CBufRet.f32 %7292, 2
  %7296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7297 = extractvalue %dx.types.CBufRet.f32 %7296, 0
  %7298 = extractvalue %dx.types.CBufRet.f32 %7296, 1
  %7299 = extractvalue %dx.types.CBufRet.f32 %7296, 2
  %7300 = extractvalue %dx.types.CBufRet.f32 %7296, 3
  %7301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7302 = extractvalue %dx.types.CBufRet.f32 %7301, 3
  %7303 = call float @dx.op.binary.f32(i32 36, float %7192, float %7302)  ; FMin(a,b)
  %7304 = fmul fast float %7300, %7291
  %7305 = call float @dx.op.unary.f32(i32 7, float %7304)  ; Saturate(value)
  %7306 = fsub fast float %7297, %7293
  %7307 = fsub fast float %7298, %7294
  %7308 = fsub fast float %7299, %7295
  %7309 = fmul fast float %7305, %7306
  %7310 = fmul fast float %7305, %7307
  %7311 = fmul fast float %7305, %7308
  %7312 = fadd fast float %7309, %7293
  %7313 = fadd fast float %7310, %7294
  %7314 = fadd fast float %7311, %7295
  %7315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7316 = extractvalue %dx.types.CBufRet.f32 %7315, 0
  %7317 = extractvalue %dx.types.CBufRet.f32 %7315, 1
  %7318 = fadd fast float %7317, %7316
  %7319 = call float @dx.op.unary.f32(i32 7, float %7318)  ; Saturate(value)
  %7320 = extractvalue %dx.types.CBufRet.f32 %7315, 2
  %7321 = extractvalue %dx.types.CBufRet.f32 %7315, 3
  %7322 = fadd fast float %7321, %7320
  %7323 = call float @dx.op.unary.f32(i32 7, float %7322)  ; Saturate(value)
  %7324 = fmul fast float %7319, %7303
  %7325 = fmul fast float %7324, %7323
  br label %7408

; <label>:7326                                    ; preds = %7262
  %7327 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7286
  %7328 = load float, float* %7327, align 4, !tbaa !101, !noalias !159
  %7329 = fcmp fast olt float %7328, %7193
  %7330 = icmp sgt i32 %7269, 0
  %7331 = and i1 %7330, %7329
  br i1 %7331, label %7332, label %7369

; <label>:7332                                    ; preds = %7326
  br label %7333

; <label>:7333                                    ; preds = %7362, %7332
  %7334 = phi float [ %7363, %7362 ], [ %7191, %7332 ]
  %7335 = phi float [ %7364, %7362 ], [ %7192, %7332 ]
  %7336 = phi float [ %7344, %7362 ], [ %7328, %7332 ]
  %7337 = phi i32 [ %7341, %7362 ], [ %7286, %7332 ]
  %7338 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %7337
  %7339 = load float, float* %7338, align 4, !tbaa !101, !noalias !159
  %7340 = icmp slt i32 %7337, 2
  %7341 = add nsw i32 %7337, 1
  %7342 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %7341
  %7343 = load float, float* %7342, align 4, !tbaa !101, !noalias !159
  %7344 = select i1 %7340, float %7343, float %7107
  %7345 = call float @dx.op.binary.f32(i32 36, float %7344, float %7339)  ; FMin(a,b)
  %7346 = call float @dx.op.binary.f32(i32 36, float %7193, float %7345)  ; FMin(a,b)
  %7347 = icmp eq i32 %7057, 0
  %7348 = fadd fast float %7346, %7336
  %7349 = fmul fast float %7348, %2230
  %7350 = fadd fast float %7349, %7051
  br i1 %7347, label %7356, label %7351

; <label>:7351                                    ; preds = %7333
  %7352 = fsub fast float %7346, %7336
  %7353 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7352)  ; FMax(a,b)
  %7354 = fmul fast float %7353, %7350
  %7355 = fadd fast float %7354, %7335
  br label %7362

; <label>:7356                                    ; preds = %7333
  %7357 = fsub fast float %7336, %7346
  %7358 = call float @dx.op.unary.f32(i32 6, float %7357)  ; FAbs(value)
  %7359 = fadd fast float %7358, %7334
  %7360 = fmul fast float %7358, %7350
  %7361 = fsub fast float %7335, %7360
  br label %7362

; <label>:7362                                    ; preds = %7356, %7351
  %7363 = phi float [ %7353, %7351 ], [ %7359, %7356 ]
  %7364 = phi float [ %7355, %7351 ], [ %7361, %7356 ]
  %7365 = fcmp fast olt float %7344, %7193
  %7366 = icmp slt i32 %7341, 3
  %7367 = and i1 %7366, %7365
  br i1 %7367, label %7333, label %7368

; <label>:7368                                    ; preds = %7362
  br label %7369

; <label>:7369                                    ; preds = %7368, %7326
  %7370 = phi float [ %7191, %7326 ], [ %7363, %7368 ]
  %7371 = phi float [ %7192, %7326 ], [ %7364, %7368 ]
  %7372 = fsub fast float %7107, %7370
  %7373 = select i1 %7109, float %7370, float %7372
  %7374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7375 = extractvalue %dx.types.CBufRet.f32 %7374, 0
  %7376 = extractvalue %dx.types.CBufRet.f32 %7374, 1
  %7377 = extractvalue %dx.types.CBufRet.f32 %7374, 2
  %7378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7379 = extractvalue %dx.types.CBufRet.f32 %7378, 0
  %7380 = extractvalue %dx.types.CBufRet.f32 %7378, 1
  %7381 = extractvalue %dx.types.CBufRet.f32 %7378, 2
  %7382 = extractvalue %dx.types.CBufRet.f32 %7378, 3
  %7383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7384 = extractvalue %dx.types.CBufRet.f32 %7383, 3
  %7385 = call float @dx.op.binary.f32(i32 36, float %7371, float %7384)  ; FMin(a,b)
  %7386 = fmul fast float %7382, %7373
  %7387 = call float @dx.op.unary.f32(i32 7, float %7386)  ; Saturate(value)
  %7388 = fsub fast float %7379, %7375
  %7389 = fsub fast float %7380, %7376
  %7390 = fsub fast float %7381, %7377
  %7391 = fmul fast float %7387, %7388
  %7392 = fmul fast float %7387, %7389
  %7393 = fmul fast float %7387, %7390
  %7394 = fadd fast float %7391, %7375
  %7395 = fadd fast float %7392, %7376
  %7396 = fadd fast float %7393, %7377
  %7397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7398 = extractvalue %dx.types.CBufRet.f32 %7397, 0
  %7399 = extractvalue %dx.types.CBufRet.f32 %7397, 1
  %7400 = fadd fast float %7399, %7398
  %7401 = call float @dx.op.unary.f32(i32 7, float %7400)  ; Saturate(value)
  %7402 = extractvalue %dx.types.CBufRet.f32 %7397, 2
  %7403 = extractvalue %dx.types.CBufRet.f32 %7397, 3
  %7404 = fadd fast float %7403, %7402
  %7405 = call float @dx.op.unary.f32(i32 7, float %7404)  ; Saturate(value)
  %7406 = fmul fast float %7401, %7385
  %7407 = fmul fast float %7406, %7405
  br label %7408

; <label>:7408                                    ; preds = %7369, %7288, %7123, %7105, %7103
  %7409 = phi float [ %7132, %7123 ], [ %7291, %7288 ], [ %7373, %7369 ], [ 0.000000e+00, %7103 ], [ 0.000000e+00, %7105 ]
  %7410 = phi float [ %7166, %7123 ], [ %7325, %7288 ], [ %7407, %7369 ], [ 0.000000e+00, %7103 ], [ 0.000000e+00, %7105 ]
  %7411 = phi float [ %7153, %7123 ], [ %7312, %7288 ], [ %7394, %7369 ], [ 0.000000e+00, %7103 ], [ 0.000000e+00, %7105 ]
  %7412 = phi float [ %7154, %7123 ], [ %7313, %7288 ], [ %7395, %7369 ], [ 0.000000e+00, %7103 ], [ 0.000000e+00, %7105 ]
  %7413 = phi float [ %7155, %7123 ], [ %7314, %7288 ], [ %7396, %7369 ], [ 0.000000e+00, %7103 ], [ 0.000000e+00, %7105 ]
  %7414 = fmul fast float %7046, %7410
  %7415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7416 = extractvalue %dx.types.CBufRet.f32 %7415, 2
  %7417 = fsub fast float %7053, %7416
  %7418 = fcmp fast olt float %7414, -2.000000e+01
  %7419 = call float @dx.op.unary.f32(i32 21, float %7414)  ; Exp(value)
  %7420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7421 = extractvalue %dx.types.CBufRet.f32 %7420, 2
  %7422 = extractvalue %dx.types.CBufRet.f32 %7420, 3
  %7423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7424 = extractvalue %dx.types.CBufRet.f32 %7423, 2
  %7425 = fmul fast float %7422, %7417
  %7426 = call float @dx.op.unary.f32(i32 7, float %7425)  ; Saturate(value)
  %7427 = fsub fast float 1.000000e+00, %7426
  %7428 = fmul fast float %2230, 5.000000e-01
  %7429 = fadd fast float %7428, 5.000000e-01
  %7430 = call float @dx.op.unary.f32(i32 7, float %7429)  ; Saturate(value)
  %7431 = fsub fast float 1.000000e+00, %7430
  %7432 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7427)  ; FMax(a,b)
  %7433 = fdiv fast float %7431, %7432
  %7434 = fsub fast float %7417, %146
  %7435 = call float @dx.op.unary.f32(i32 6, float %7434)  ; FAbs(value)
  %7436 = fmul fast float %7435, %7421
  %7437 = call float @dx.op.unary.f32(i32 7, float %7433)  ; Saturate(value)
  %7438 = fsub fast float 1.000000e+00, %7436
  %7439 = fmul fast float %7438, %7437
  %7440 = fadd fast float %7439, %7436
  %7441 = fmul fast float %7424, %7417
  %7442 = call float @dx.op.unary.f32(i32 7, float %7441)  ; Saturate(value)
  %7443 = fsub fast float 1.000000e+00, %7440
  %7444 = fmul fast float %7443, %7442
  %7445 = fadd fast float %7444, %7440
  %7446 = call float @dx.op.unary.f32(i32 7, float %7445)  ; Saturate(value)
  %7447 = fadd fast float %7419, -1.000000e+00
  %7448 = select i1 %7418, float -1.000000e+00, float %7447
  %7449 = fmul fast float %7446, %7448
  %7450 = fadd fast float %7449, 1.000000e+00
  %7451 = fsub fast float -0.000000e+00, %7449
  %7452 = fmul fast float %7411, %7451
  %7453 = fmul fast float %7412, %7451
  %7454 = fmul fast float %7413, %7451
  br label %7455

; <label>:7455                                    ; preds = %7408, %7009
  %7456 = phi float [ %7409, %7408 ], [ 0.000000e+00, %7009 ]
  %7457 = phi float [ %7450, %7408 ], [ 1.000000e+00, %7009 ]
  %7458 = phi float [ %7452, %7408 ], [ 0.000000e+00, %7009 ]
  %7459 = phi float [ %7453, %7408 ], [ 0.000000e+00, %7009 ]
  %7460 = phi float [ %7454, %7408 ], [ 0.000000e+00, %7009 ]
  %7461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7462 = extractvalue %dx.types.CBufRet.f32 %7461, 1
  %7463 = fsub fast float 1.000000e+00, %7457
  %7464 = fmul fast float %7463, %7039
  %7465 = fmul fast float %7464, %7462
  %7466 = fsub fast float %7039, %7465
  br i1 %7037, label %7467, label %7496, !dx.controlflow.hints !195

; <label>:7467                                    ; preds = %7455
  %7468 = fmul fast float %7040, %7034
  %7469 = fadd fast float %7468, %7035
  %7470 = call float @dx.op.unary.f32(i32 7, float %7469)  ; Saturate(value)
  %7471 = fmul fast float %7016, %7466
  %7472 = fsub fast float -0.000000e+00, %7471
  %7473 = fmul fast float %7017, %7466
  %7474 = fsub fast float -0.000000e+00, %7473
  %7475 = call float @dx.op.unary.f32(i32 21, float %7472)  ; Exp(value)
  %7476 = call float @dx.op.unary.f32(i32 21, float %7474)  ; Exp(value)
  %7477 = call float @dx.op.binary.f32(i32 35, float %7024, float %7475)  ; FMax(a,b)
  %7478 = call float @dx.op.binary.f32(i32 35, float %7024, float %7476)  ; FMax(a,b)
  %7479 = fsub fast float %7478, %7477
  %7480 = fmul fast float %7479, %7470
  %7481 = fadd fast float %7480, %7477
  %7482 = call float @dx.op.unary.f32(i32 7, float %7481)  ; Saturate(value)
  %7483 = fsub fast float %7021, %7026
  %7484 = fsub fast float %7022, %7027
  %7485 = fsub fast float %7023, %7028
  %7486 = fmul fast float %7470, %7483
  %7487 = fmul fast float %7470, %7484
  %7488 = fmul fast float %7470, %7485
  %7489 = fadd fast float %7486, %7026
  %7490 = fadd fast float %7487, %7027
  %7491 = fadd fast float %7488, %7028
  %7492 = fsub fast float 1.000000e+00, %7482
  %7493 = fmul fast float %7492, %7489
  %7494 = fmul fast float %7492, %7490
  %7495 = fmul fast float %7492, %7491
  br label %7555

; <label>:7496                                    ; preds = %7455
  %7497 = fmul fast float %7466, %7033
  %7498 = call float @dx.op.unary.f32(i32 7, float %7497)  ; Saturate(value)
  %7499 = fsub fast float 2.000000e+00, %7498
  %7500 = fmul fast float %7498, 9.921875e-01
  %7501 = fmul fast float %7500, %7499
  %7502 = fadd fast float %7501, 3.906250e-03
  %7503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %7502, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7504 = extractvalue %dx.types.ResRet.f32 %7503, 0
  %7505 = fsub fast float %7498, %7504
  %7506 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7505)  ; FMax(a,b)
  %7507 = fmul fast float %7019, %146
  %7508 = call float @dx.op.unary.f32(i32 6, float %7507)  ; FAbs(value)
  %7509 = fcmp fast ogt float %7508, 0x3EB0C6F7A0000000
  br i1 %7509, label %7510, label %7516, !dx.controlflow.hints !196

; <label>:7510                                    ; preds = %7496
  %7511 = fmul fast float %7507, 0xBFF7154760000000
  %7512 = call float @dx.op.unary.f32(i32 21, float %7511)  ; Exp(value)
  %7513 = fsub fast float 1.000000e+00, %7512
  %7514 = fdiv fast float %7513, %7507
  %7515 = fmul fast float %7514, %7029
  br label %7516

; <label>:7516                                    ; preds = %7510, %7496
  %7517 = phi float [ %7515, %7510 ], [ %7029, %7496 ]
  %7518 = fadd fast float %7517, %7031
  %7519 = fmul fast float %7518, %7506
  %7520 = fmul fast float %7016, %7519
  %7521 = fsub fast float -0.000000e+00, %7520
  %7522 = fmul fast float %7017, %7519
  %7523 = fsub fast float -0.000000e+00, %7522
  %7524 = fmul fast float %7018, %7519
  %7525 = fsub fast float -0.000000e+00, %7524
  %7526 = call float @dx.op.unary.f32(i32 21, float %7521)  ; Exp(value)
  %7527 = call float @dx.op.unary.f32(i32 21, float %7523)  ; Exp(value)
  %7528 = call float @dx.op.unary.f32(i32 21, float %7525)  ; Exp(value)
  %7529 = fmul fast float %7040, %7040
  %7530 = fadd fast float %7529, 1.000000e+00
  %7531 = fmul fast float %7530, 0x3FAE8EC8A0000000
  %7532 = fmul fast float %7531, %7026
  %7533 = fmul fast float %7531, %7027
  %7534 = fmul fast float %7531, %7028
  %7535 = fmul fast float %7040, %7024
  %7536 = fsub fast float 1.000000e+00, %7535
  %7537 = fmul fast float %7024, %7024
  %7538 = fsub fast float 1.000000e+00, %7537
  %7539 = fmul fast float %7538, 0x3FB45F3060000000
  %7540 = fmul fast float %7536, %7536
  %7541 = fdiv fast float 1.000000e+00, %7540
  %7542 = fmul fast float %7539, %7541
  %7543 = fmul fast float %7542, %7021
  %7544 = fmul fast float %7542, %7022
  %7545 = fmul fast float %7542, %7023
  %7546 = fadd fast float %7543, %7532
  %7547 = fadd fast float %7544, %7533
  %7548 = fadd fast float %7545, %7534
  %7549 = fsub fast float 1.000000e+00, %7526
  %7550 = fsub fast float 1.000000e+00, %7527
  %7551 = fsub fast float 1.000000e+00, %7528
  %7552 = fmul fast float %7546, %7549
  %7553 = fmul fast float %7547, %7550
  %7554 = fmul fast float %7548, %7551
  br label %7555

; <label>:7555                                    ; preds = %7516, %7467
  %7556 = phi float [ %7493, %7467 ], [ %7552, %7516 ]
  %7557 = phi float [ %7494, %7467 ], [ %7553, %7516 ]
  %7558 = phi float [ %7495, %7467 ], [ %7554, %7516 ]
  %7559 = phi float [ %7482, %7467 ], [ %7526, %7516 ]
  %7560 = phi float [ %7482, %7467 ], [ %7527, %7516 ]
  %7561 = phi float [ %7482, %7467 ], [ %7528, %7516 ]
  br i1 %7048, label %7562, label %7760, !dx.controlflow.hints !197

; <label>:7562                                    ; preds = %7555
  %7563 = extractvalue %dx.types.CBufRet.f32 %7461, 0
  %7564 = fmul fast float %7563, %7463
  %7565 = fsub fast float %7458, %7556
  %7566 = fsub fast float %7459, %7557
  %7567 = fsub fast float %7460, %7558
  %7568 = fmul fast float %7564, %7565
  %7569 = fmul fast float %7564, %7566
  %7570 = fmul fast float %7564, %7567
  %7571 = fadd fast float %7568, %7556
  %7572 = fadd fast float %7569, %7557
  %7573 = fadd fast float %7570, %7558
  %7574 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7559)  ; FMax(a,b)
  %7575 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7560)  ; FMax(a,b)
  %7576 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7561)  ; FMax(a,b)
  %7577 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7457)  ; FMax(a,b)
  %7578 = call float @dx.op.binary.f32(i32 35, float %7456, float %7466)  ; FMax(a,b)
  %7579 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7578)  ; FMax(a,b)
  %7580 = fdiv fast float %7456, %7579
  %7581 = call float @dx.op.unary.f32(i32 7, float %7580)  ; Saturate(value)
  %7582 = fdiv fast float %7466, %7579
  %7583 = call float @dx.op.unary.f32(i32 7, float %7582)  ; Saturate(value)
  %7584 = fcmp fast une float %7577, 1.000000e+00
  br i1 %7584, label %7585, label %7598, !dx.controlflow.hints !198

; <label>:7585                                    ; preds = %7562
  %7586 = call float @dx.op.unary.f32(i32 23, float %7577)  ; Log(value)
  %7587 = fmul fast float %7586, 0x3FE62E4300000000
  %7588 = fmul fast float %7458, %7587
  %7589 = fsub fast float -0.000000e+00, %7588
  %7590 = fmul fast float %7459, %7587
  %7591 = fsub fast float -0.000000e+00, %7590
  %7592 = fmul fast float %7460, %7587
  %7593 = fsub fast float -0.000000e+00, %7592
  %7594 = fsub fast float 1.000000e+00, %7577
  %7595 = fdiv fast float %7589, %7594
  %7596 = fdiv fast float %7591, %7594
  %7597 = fdiv fast float %7593, %7594
  br label %7598

; <label>:7598                                    ; preds = %7585, %7562
  %7599 = phi float [ %7595, %7585 ], [ %7458, %7562 ]
  %7600 = phi float [ %7596, %7585 ], [ %7459, %7562 ]
  %7601 = phi float [ %7597, %7585 ], [ %7460, %7562 ]
  %7602 = phi float [ %7587, %7585 ], [ 0.000000e+00, %7562 ]
  %7603 = fcmp fast une float %7574, 1.000000e+00
  br i1 %7603, label %7604, label %7611, !dx.controlflow.hints !199

; <label>:7604                                    ; preds = %7598
  %7605 = call float @dx.op.unary.f32(i32 23, float %7574)  ; Log(value)
  %7606 = fmul fast float %7605, 0x3FE62E4300000000
  %7607 = fmul fast float %7571, %7606
  %7608 = fsub fast float -0.000000e+00, %7607
  %7609 = fsub fast float 1.000000e+00, %7574
  %7610 = fdiv fast float %7608, %7609
  br label %7611

; <label>:7611                                    ; preds = %7604, %7598
  %7612 = phi float [ %7610, %7604 ], [ %7571, %7598 ]
  %7613 = phi float [ %7606, %7604 ], [ 0.000000e+00, %7598 ]
  %7614 = fcmp fast une float %7575, 1.000000e+00
  br i1 %7614, label %7615, label %7622, !dx.controlflow.hints !199

; <label>:7615                                    ; preds = %7611
  %7616 = call float @dx.op.unary.f32(i32 23, float %7575)  ; Log(value)
  %7617 = fmul fast float %7616, 0x3FE62E4300000000
  %7618 = fmul fast float %7572, %7617
  %7619 = fsub fast float -0.000000e+00, %7618
  %7620 = fsub fast float 1.000000e+00, %7575
  %7621 = fdiv fast float %7619, %7620
  br label %7622

; <label>:7622                                    ; preds = %7615, %7611
  %7623 = phi float [ %7621, %7615 ], [ %7572, %7611 ]
  %7624 = phi float [ %7617, %7615 ], [ 0.000000e+00, %7611 ]
  %7625 = fcmp fast une float %7576, 1.000000e+00
  br i1 %7625, label %7626, label %7633, !dx.controlflow.hints !199

; <label>:7626                                    ; preds = %7622
  %7627 = call float @dx.op.unary.f32(i32 23, float %7576)  ; Log(value)
  %7628 = fmul fast float %7627, 0x3FE62E4300000000
  %7629 = fmul fast float %7573, %7628
  %7630 = fsub fast float -0.000000e+00, %7629
  %7631 = fsub fast float 1.000000e+00, %7576
  %7632 = fdiv fast float %7630, %7631
  br label %7633

; <label>:7633                                    ; preds = %7626, %7622
  %7634 = phi float [ %7632, %7626 ], [ %7573, %7622 ]
  %7635 = phi float [ %7628, %7626 ], [ 0.000000e+00, %7622 ]
  %7636 = fmul fast float %7599, %7583
  %7637 = fmul fast float %7600, %7583
  %7638 = fmul fast float %7601, %7583
  %7639 = fmul fast float %7602, %7583
  %7640 = fmul fast float %7612, %7581
  %7641 = fmul fast float %7623, %7581
  %7642 = fmul fast float %7634, %7581
  %7643 = fmul fast float %7613, %7581
  %7644 = fmul fast float %7624, %7581
  %7645 = fmul fast float %7635, %7581
  %7646 = fadd fast float %7640, %7636
  %7647 = fadd fast float %7641, %7637
  %7648 = fadd fast float %7642, %7638
  %7649 = fadd fast float %7643, %7639
  %7650 = fadd fast float %7644, %7639
  %7651 = fadd fast float %7645, %7639
  %7652 = fcmp fast une float %7649, 0.000000e+00
  br i1 %7652, label %7653, label %7660, !dx.controlflow.hints !200

; <label>:7653                                    ; preds = %7633
  %7654 = fmul fast float %7649, 0x3FF7154760000000
  %7655 = call float @dx.op.unary.f32(i32 21, float %7654)  ; Exp(value)
  %7656 = fsub fast float 1.000000e+00, %7655
  %7657 = fmul fast float %7646, %7656
  %7658 = fsub fast float -0.000000e+00, %7657
  %7659 = fdiv fast float %7658, %7649
  br label %7660

; <label>:7660                                    ; preds = %7653, %7633
  %7661 = phi float [ %7655, %7653 ], [ 1.000000e+00, %7633 ]
  %7662 = phi float [ %7659, %7653 ], [ %7646, %7633 ]
  %7663 = fcmp fast une float %7650, 0.000000e+00
  br i1 %7663, label %7664, label %7671, !dx.controlflow.hints !200

; <label>:7664                                    ; preds = %7660
  %7665 = fmul fast float %7650, 0x3FF7154760000000
  %7666 = call float @dx.op.unary.f32(i32 21, float %7665)  ; Exp(value)
  %7667 = fsub fast float 1.000000e+00, %7666
  %7668 = fmul fast float %7647, %7667
  %7669 = fsub fast float -0.000000e+00, %7668
  %7670 = fdiv fast float %7669, %7650
  br label %7671

; <label>:7671                                    ; preds = %7664, %7660
  %7672 = phi float [ %7666, %7664 ], [ 1.000000e+00, %7660 ]
  %7673 = phi float [ %7670, %7664 ], [ %7647, %7660 ]
  %7674 = fcmp fast une float %7651, 0.000000e+00
  br i1 %7674, label %7675, label %7682, !dx.controlflow.hints !200

; <label>:7675                                    ; preds = %7671
  %7676 = fmul fast float %7651, 0x3FF7154760000000
  %7677 = call float @dx.op.unary.f32(i32 21, float %7676)  ; Exp(value)
  %7678 = fsub fast float 1.000000e+00, %7677
  %7679 = fmul fast float %7648, %7678
  %7680 = fsub fast float -0.000000e+00, %7679
  %7681 = fdiv fast float %7680, %7651
  br label %7682

; <label>:7682                                    ; preds = %7675, %7671
  %7683 = phi float [ %7677, %7675 ], [ 1.000000e+00, %7671 ]
  %7684 = phi float [ %7681, %7675 ], [ %7648, %7671 ]
  %7685 = fcmp fast ogt float %7581, %7583
  br i1 %7685, label %7686, label %7706

; <label>:7686                                    ; preds = %7682
  %7687 = fsub fast float 1.000000e+00, %7583
  %7688 = fmul fast float %7599, %7687
  %7689 = fmul fast float %7600, %7687
  %7690 = fmul fast float %7601, %7687
  %7691 = fmul fast float %7602, %7687
  %7692 = fcmp fast une float %7691, 0.000000e+00
  br i1 %7692, label %7693, label %7744, !dx.controlflow.hints !201

; <label>:7693                                    ; preds = %7686
  %7694 = fmul fast float %7691, 0x3FF7154760000000
  %7695 = call float @dx.op.unary.f32(i32 21, float %7694)  ; Exp(value)
  %7696 = fsub fast float 1.000000e+00, %7695
  %7697 = fmul fast float %7688, %7696
  %7698 = fsub fast float -0.000000e+00, %7697
  %7699 = fmul fast float %7689, %7696
  %7700 = fsub fast float -0.000000e+00, %7699
  %7701 = fmul fast float %7690, %7696
  %7702 = fsub fast float -0.000000e+00, %7701
  %7703 = fdiv fast float %7698, %7691
  %7704 = fdiv fast float %7700, %7691
  %7705 = fdiv fast float %7702, %7691
  br label %7744

; <label>:7706                                    ; preds = %7682
  %7707 = fsub fast float 1.000000e+00, %7581
  %7708 = fmul fast float %7612, %7707
  %7709 = fmul fast float %7623, %7707
  %7710 = fmul fast float %7634, %7707
  %7711 = fmul fast float %7613, %7707
  %7712 = fmul fast float %7624, %7707
  %7713 = fmul fast float %7635, %7707
  %7714 = fcmp fast une float %7711, 0.000000e+00
  br i1 %7714, label %7715, label %7722, !dx.controlflow.hints !200

; <label>:7715                                    ; preds = %7706
  %7716 = fmul fast float %7711, 0x3FF7154760000000
  %7717 = call float @dx.op.unary.f32(i32 21, float %7716)  ; Exp(value)
  %7718 = fsub fast float 1.000000e+00, %7717
  %7719 = fmul fast float %7708, %7718
  %7720 = fsub fast float -0.000000e+00, %7719
  %7721 = fdiv fast float %7720, %7711
  br label %7722

; <label>:7722                                    ; preds = %7715, %7706
  %7723 = phi float [ %7721, %7715 ], [ %7708, %7706 ]
  %7724 = phi float [ %7717, %7715 ], [ 1.000000e+00, %7706 ]
  %7725 = fcmp fast une float %7712, 0.000000e+00
  br i1 %7725, label %7726, label %7733, !dx.controlflow.hints !200

; <label>:7726                                    ; preds = %7722
  %7727 = fmul fast float %7712, 0x3FF7154760000000
  %7728 = call float @dx.op.unary.f32(i32 21, float %7727)  ; Exp(value)
  %7729 = fsub fast float 1.000000e+00, %7728
  %7730 = fmul fast float %7709, %7729
  %7731 = fsub fast float -0.000000e+00, %7730
  %7732 = fdiv fast float %7731, %7712
  br label %7733

; <label>:7733                                    ; preds = %7726, %7722
  %7734 = phi float [ %7732, %7726 ], [ %7709, %7722 ]
  %7735 = phi float [ %7728, %7726 ], [ 1.000000e+00, %7722 ]
  %7736 = fcmp fast une float %7713, 0.000000e+00
  br i1 %7736, label %7737, label %7744, !dx.controlflow.hints !200

; <label>:7737                                    ; preds = %7733
  %7738 = fmul fast float %7713, 0x3FF7154760000000
  %7739 = call float @dx.op.unary.f32(i32 21, float %7738)  ; Exp(value)
  %7740 = fsub fast float 1.000000e+00, %7739
  %7741 = fmul fast float %7710, %7740
  %7742 = fsub fast float -0.000000e+00, %7741
  %7743 = fdiv fast float %7742, %7713
  br label %7744

; <label>:7744                                    ; preds = %7737, %7733, %7693, %7686
  %7745 = phi float [ %7743, %7737 ], [ %7705, %7693 ], [ %7690, %7686 ], [ %7710, %7733 ]
  %7746 = phi float [ %7734, %7737 ], [ %7704, %7693 ], [ %7689, %7686 ], [ %7734, %7733 ]
  %7747 = phi float [ %7723, %7737 ], [ %7703, %7693 ], [ %7688, %7686 ], [ %7723, %7733 ]
  %7748 = phi float [ %7739, %7737 ], [ %7695, %7693 ], [ 1.000000e+00, %7686 ], [ 1.000000e+00, %7733 ]
  %7749 = phi float [ %7735, %7737 ], [ %7695, %7693 ], [ 1.000000e+00, %7686 ], [ %7735, %7733 ]
  %7750 = phi float [ %7724, %7737 ], [ %7695, %7693 ], [ 1.000000e+00, %7686 ], [ %7724, %7733 ]
  %7751 = fmul fast float %7750, %7662
  %7752 = fmul fast float %7749, %7673
  %7753 = fmul fast float %7748, %7684
  %7754 = fadd fast float %7751, %7747
  %7755 = fadd fast float %7752, %7746
  %7756 = fadd fast float %7753, %7745
  %7757 = fmul fast float %7750, %7661
  %7758 = fmul fast float %7749, %7672
  %7759 = fmul fast float %7748, %7683
  br label %7760

; <label>:7760                                    ; preds = %7744, %7555
  %7761 = phi float [ %7759, %7744 ], [ %7561, %7555 ]
  %7762 = phi float [ %7758, %7744 ], [ %7560, %7555 ]
  %7763 = phi float [ %7757, %7744 ], [ %7559, %7555 ]
  %7764 = phi float [ %7756, %7744 ], [ %7558, %7555 ]
  %7765 = phi float [ %7755, %7744 ], [ %7557, %7555 ]
  %7766 = phi float [ %7754, %7744 ], [ %7556, %7555 ]
  %7767 = call float @dx.op.dot3.f32(i32 55, float %7763, float %7762, float %7761, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7768 = call float @dx.op.dot3.f32(i32 55, float %7766, float %7765, float %7764, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7769 = select i1 %2335, float %7767, float %7763
  %7770 = select i1 %2335, float %7767, float %7762
  %7771 = select i1 %2335, float 1.000000e+00, float %7761
  %7772 = select i1 %2335, float %7768, float %7766
  %7773 = select i1 %2335, float 0.000000e+00, float %7765
  %7774 = select i1 %2335, float 0.000000e+00, float %7764
  %7775 = fmul fast float %7769, %7004
  %7776 = fmul fast float %7770, %7006
  %7777 = fmul fast float %7771, %7008
  %7778 = fadd fast float %7775, %7772
  %7779 = fadd fast float %7776, %7773
  %7780 = fadd fast float %7774, %7777
  %7781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %7782 = extractvalue %dx.types.CBufRet.f32 %7781, 2
  %7783 = extractvalue %dx.types.CBufRet.f32 %7781, 3
  %7784 = fmul fast float %7782, %89
  %7785 = fmul fast float %7783, %90
  %7786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %58, float %7784, float %7785, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7787 = extractvalue %dx.types.ResRet.f32 %7786, 0
  %7788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %58, float %7784, float %7785, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7789 = extractvalue %dx.types.ResRet.f32 %7788, 0
  %7790 = extractvalue %dx.types.ResRet.f32 %7788, 1
  %7791 = extractvalue %dx.types.ResRet.f32 %7788, 2
  %7792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7793 = extractvalue %dx.types.CBufRet.f32 %7792, 1
  %7794 = fmul fast float %7793, %7789
  %7795 = fmul fast float %7793, %7790
  %7796 = fmul fast float %7793, %7791
  %7797 = fmul fast float %7787, %7763
  %7798 = call float @dx.op.dot3.f32(i32 55, float %7787, float %7787, float %7787, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7799 = call float @dx.op.dot3.f32(i32 55, float %7794, float %7795, float %7796, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7800 = select i1 %2335, float %7798, float %7787
  %7801 = select i1 %2335, float 1.000000e+00, float %7787
  %7802 = select i1 %2335, float %7799, float %7794
  %7803 = select i1 %2335, float 0.000000e+00, float %7795
  %7804 = select i1 %2335, float 0.000000e+00, float %7796
  %7805 = fmul fast float %7800, %7778
  %7806 = fmul fast float %7800, %7779
  %7807 = fmul fast float %7801, %7780
  %7808 = fadd fast float %7805, %7802
  %7809 = fadd fast float %7806, %7803
  %7810 = fadd fast float %7804, %7807
  br label %7811

; <label>:7811                                    ; preds = %7760, %6975
  %7812 = phi float [ %7004, %6975 ], [ %7808, %7760 ]
  %7813 = phi float [ %7006, %6975 ], [ %7809, %7760 ]
  %7814 = phi float [ %7008, %6975 ], [ %7810, %7760 ]
  %7815 = phi float [ 1.000000e+00, %6975 ], [ %7797, %7760 ]
  %7816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %7817 = extractvalue %dx.types.CBufRet.f32 %7816, 2
  %7818 = extractvalue %dx.types.CBufRet.f32 %7816, 3
  %7819 = fmul fast float %7817, %89
  %7820 = fmul fast float %7818, %90
  %7821 = call float @dx.op.unary.f32(i32 7, float %7819)  ; Saturate(value)
  %7822 = call float @dx.op.unary.f32(i32 7, float %7820)  ; Saturate(value)
  %7823 = select i1 %106, i32 0, i32 2
  %7824 = or i32 %7823, 1
  %7825 = uitofp i32 %7824 to float
  %7826 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %58, float %7821, float %7822, float %7825, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7827 = extractvalue %dx.types.ResRet.f32 %7826, 0
  %7828 = extractvalue %dx.types.ResRet.f32 %7826, 1
  %7829 = extractvalue %dx.types.ResRet.f32 %7826, 2
  %7830 = extractvalue %dx.types.ResRet.f32 %7826, 3
  %7831 = add nuw nsw i32 %7823, 2
  %7832 = uitofp i32 %7831 to float
  %7833 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %58, float %7821, float %7822, float %7832, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7834 = extractvalue %dx.types.ResRet.f32 %7833, 0
  %7835 = extractvalue %dx.types.ResRet.f32 %7833, 1
  %7836 = extractvalue %dx.types.ResRet.f32 %7833, 2
  %7837 = extractvalue %dx.types.ResRet.f32 %7833, 3
  %7838 = call float @dx.op.binary.f32(i32 35, float %7828, float %7829)  ; FMax(a,b)
  %7839 = call float @dx.op.binary.f32(i32 35, float %7827, float %7838)  ; FMax(a,b)
  %7840 = call float @dx.op.binary.f32(i32 35, float %7839, float %7830)  ; FMax(a,b)
  %7841 = call float @dx.op.binary.f32(i32 36, float %7835, float %7836)  ; FMin(a,b)
  %7842 = call float @dx.op.binary.f32(i32 36, float %7834, float %7841)  ; FMin(a,b)
  %7843 = call float @dx.op.binary.f32(i32 36, float %7842, float %7837)  ; FMin(a,b)
  %7844 = fmul fast float %7840, 2.550000e+02
  %7845 = fadd fast float %7844, 0x3F70101020000000
  %7846 = fptoui float %7845 to i32
  %7847 = fmul fast float %7843, 2.550000e+02
  %7848 = fadd fast float %7847, 0x3F70101020000000
  %7849 = fptoui float %7848 to i32
  %7850 = icmp ult i32 %7846, %7849
  br i1 %7850, label %7851, label %7903

; <label>:7851                                    ; preds = %7811
  %7852 = fcmp fast ogt float %77, 9.843750e-01
  %7853 = fadd fast float %78, -4.000000e+00
  %7854 = select i1 %7852, float -4.000000e+00, float %7853
  %7855 = call float @dx.op.binary.f32(i32 35, float %7854, float 0.000000e+00)  ; FMax(a,b)
  %7856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7857 = extractvalue %dx.types.CBufRet.f32 %7856, 0
  %7858 = fadd fast float %7857, %7855
  %7859 = extractvalue %dx.types.CBufRet.f32 %7856, 2
  %7860 = fmul fast float %7858, %7859
  %7861 = call float @dx.op.unary.f32(i32 23, float %7860)  ; Log(value)
  %7862 = extractvalue %dx.types.CBufRet.f32 %7856, 3
  %7863 = fmul fast float %7862, %7861
  %7864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7865 = extractvalue %dx.types.CBufRet.f32 %7864, 2
  %7866 = fmul fast float %7863, %7865
  %7867 = call float @dx.op.unary.f32(i32 7, float %7866)  ; Saturate(value)
  %7868 = uitofp i32 %7846 to float
  %7869 = uitofp i32 %7849 to float
  %7870 = fadd fast float %7868, 5.000000e-01
  %7871 = fadd fast float %7869, 5.000000e-01
  %7872 = fmul fast float %7865, %7870
  %7873 = fmul fast float %7865, %7871
  %7874 = fadd fast float %7872, 0x3F0FFB4800000000
  %7875 = fadd fast float %7873, 0xBF0FFB4800000000
  %7876 = call float @dx.op.binary.f32(i32 35, float %7867, float %7874)  ; FMax(a,b)
  %7877 = call float @dx.op.binary.f32(i32 36, float %7876, float %7875)  ; FMin(a,b)
  %7878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7879 = extractvalue %dx.types.CBufRet.f32 %7878, 1
  %7880 = extractvalue %dx.types.CBufRet.f32 %7878, 2
  %7881 = extractvalue %dx.types.CBufRet.f32 %7878, 0
  %7882 = select i1 %106, float 0.000000e+00, float %7881
  %7883 = fmul fast float %7879, %7877
  %7884 = fadd fast float %7882, %7883
  %7885 = fadd fast float %7882, %7880
  %7886 = fsub fast float %7879, %7880
  %7887 = fadd fast float %7886, %7882
  %7888 = call float @dx.op.binary.f32(i32 35, float %7884, float %7885)  ; FMax(a,b)
  %7889 = call float @dx.op.binary.f32(i32 36, float %7888, float %7887)  ; FMin(a,b)
  %7890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %56, float %7821, float %7822, float %7889, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7891 = extractvalue %dx.types.ResRet.f32 %7890, 0
  %7892 = extractvalue %dx.types.ResRet.f32 %7890, 1
  %7893 = extractvalue %dx.types.ResRet.f32 %7890, 2
  %7894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %56, float %7821, float %7822, float %7889, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7895 = extractvalue %dx.types.ResRet.f32 %7894, 0
  %7896 = extractvalue %dx.types.ResRet.f32 %7894, 1
  %7897 = extractvalue %dx.types.ResRet.f32 %7894, 2
  %7898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7899 = extractvalue %dx.types.CBufRet.f32 %7898, 1
  %7900 = fmul fast float %7899, %7895
  %7901 = fmul fast float %7899, %7896
  %7902 = fmul fast float %7899, %7897
  br label %7903

; <label>:7903                                    ; preds = %7851, %7811
  %7904 = phi float [ %7891, %7851 ], [ 1.000000e+00, %7811 ]
  %7905 = phi float [ %7892, %7851 ], [ 1.000000e+00, %7811 ]
  %7906 = phi float [ %7893, %7851 ], [ 1.000000e+00, %7811 ]
  %7907 = phi float [ %7900, %7851 ], [ 0.000000e+00, %7811 ]
  %7908 = phi float [ %7901, %7851 ], [ 0.000000e+00, %7811 ]
  %7909 = phi float [ %7902, %7851 ], [ 0.000000e+00, %7811 ]
  %7910 = fmul fast float %7904, %7815
  %7911 = call float @dx.op.dot3.f32(i32 55, float %7904, float %7905, float %7906, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7912 = call float @dx.op.dot3.f32(i32 55, float %7907, float %7908, float %7909, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7913 = select i1 %2335, float %7911, float %7904
  %7914 = select i1 %2335, float %7911, float %7905
  %7915 = select i1 %2335, float 1.000000e+00, float %7906
  %7916 = select i1 %2335, float %7912, float %7907
  %7917 = select i1 %2335, float 0.000000e+00, float %7908
  %7918 = select i1 %2335, float 0.000000e+00, float %7909
  %7919 = fmul fast float %7913, %7812
  %7920 = fmul fast float %7914, %7813
  %7921 = fmul fast float %7915, %7814
  %7922 = fadd fast float %7919, %7916
  %7923 = fadd fast float %7920, %7917
  %7924 = fadd fast float %7918, %7921
  %7925 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7926 = extractvalue %dx.types.CBufRet.i32 %7925, 3
  %7927 = and i32 %7926, 3
  %7928 = icmp ne i32 %7927, 0
  %7929 = and i32 %7926, 4
  %7930 = icmp ne i32 %7929, 0
  %7931 = and i1 %7928, %7930
  %7932 = and i1 %2335, %7931
  br i1 %7932, label %7933, label %7939

; <label>:7933                                    ; preds = %7903
  %7934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7935 = extractvalue %dx.types.CBufRet.f32 %7934, 1
  %7936 = fadd fast float %7910, -1.000000e+00
  %7937 = fmul fast float %7935, %7936
  %7938 = fadd fast float %7937, 1.000000e+00
  br label %7939

; <label>:7939                                    ; preds = %7933, %7903
  %7940 = phi float [ %7938, %7933 ], [ %7910, %7903 ]
  %7941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7942 = extractvalue %dx.types.CBufRet.f32 %7941, 0
  br i1 %2335, label %7943, label %7957

; <label>:7943                                    ; preds = %7939
  %7944 = fadd fast float %7922, %7923
  %7945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7946 = extractvalue %dx.types.CBufRet.f32 %7945, 3
  %7947 = extractvalue %dx.types.CBufRet.f32 %6992, 1
  %7948 = fsub fast float %6998, %6986
  %7949 = fadd fast float %7948, %6999
  %7950 = fsub fast float %7949, %7947
  %7951 = extractvalue %dx.types.CBufRet.f32 %6992, 2
  %7952 = fmul fast float %7950, %7951
  %7953 = call float @dx.op.unary.f32(i32 7, float %7952)  ; Saturate(value)
  %7954 = fsub fast float %7953, %7946
  %7955 = fmul fast float %7954, %7940
  %7956 = fadd fast float %7955, %7946
  br label %7960

; <label>:7957                                    ; preds = %7939
  %7958 = fmul fast float %7942, %7923
  %7959 = fmul fast float %7942, %7924
  br label %7960

; <label>:7960                                    ; preds = %7957, %7943
  %7961 = phi float [ %7944, %7943 ], [ %7922, %7957 ]
  %7962 = phi float [ %7956, %7943 ], [ %7958, %7957 ]
  %7963 = phi float [ 1.000000e+00, %7943 ], [ %7959, %7957 ]
  %7964 = fmul float %7942, %7961
  %7965 = fadd fast float %1687, 0x3FE3C6EF40000000
  %7966 = call float @dx.op.unary.f32(i32 22, float %7965)  ; Frc(value)
  %7967 = call float @dx.op.unary.f32(i32 23, float %7964)  ; Log(value)
  %7968 = fadd fast float %7967, -7.000000e+00
  %7969 = call float @dx.op.unary.f32(i32 21, float %7968)  ; Exp(value)
  %7970 = fmul fast float %7966, 2.000000e+00
  %7971 = fadd fast float %7970, -1.000000e+00
  %7972 = fmul fast float %7969, %7971
  %7973 = fcmp fast ogt float %7964, 0.000000e+00
  %7974 = select i1 %7973, float %7972, float 0.000000e+00
  %7975 = fadd fast float %7974, %7964
  %7976 = fadd fast float %1687, 0x3FF3C6EF40000000
  %7977 = call float @dx.op.unary.f32(i32 22, float %7976)  ; Frc(value)
  %7978 = call float @dx.op.unary.f32(i32 23, float %7962)  ; Log(value)
  %7979 = fadd fast float %7978, -7.000000e+00
  %7980 = call float @dx.op.unary.f32(i32 21, float %7979)  ; Exp(value)
  %7981 = fmul fast float %7977, 2.000000e+00
  %7982 = fadd fast float %7981, -1.000000e+00
  %7983 = fmul fast float %7980, %7982
  %7984 = fcmp fast ogt float %7962, 0.000000e+00
  %7985 = select i1 %7984, float %7983, float 0.000000e+00
  %7986 = fadd fast float %7985, %7962
  %7987 = fadd fast float %1687, 0x3FFDAA66E0000000
  %7988 = call float @dx.op.unary.f32(i32 22, float %7987)  ; Frc(value)
  %7989 = call float @dx.op.unary.f32(i32 23, float %7963)  ; Log(value)
  %7990 = fadd fast float %7989, -6.000000e+00
  %7991 = call float @dx.op.unary.f32(i32 21, float %7990)  ; Exp(value)
  %7992 = fmul fast float %7988, 2.000000e+00
  %7993 = fadd fast float %7992, -1.000000e+00
  %7994 = fmul fast float %7991, %7993
  %7995 = fcmp fast ogt float %7963, 0.000000e+00
  %7996 = select i1 %7995, float %7994, float 0.000000e+00
  %7997 = fadd fast float %7996, %7963
  %7998 = call float @dx.op.binary.f32(i32 36, float %7975, float 3.225500e+04)  ; FMin(a,b)
  %7999 = call float @dx.op.binary.f32(i32 36, float %7986, float 3.225500e+04)  ; FMin(a,b)
  %8000 = call float @dx.op.binary.f32(i32 36, float %7997, float 3.225500e+04)  ; FMin(a,b)
  %8001 = fmul fast float %7998, %6982
  %8002 = fmul fast float %7999, %6982
  %8003 = fmul fast float %8000, %6982
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8001)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8002)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8003)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6982)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!79 = !{[20 x i32] [i32 18, i32 4, i32 15, i32 15, i32 7, i32 15, i32 7, i32 7, i32 7, i32 7, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0]}
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

