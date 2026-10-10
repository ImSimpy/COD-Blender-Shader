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
; shader hash: 0bcb90cac14d2e087c451bb88bfe6b84
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
;                                   texture     f32          2d     T19     t37,space2     1
;                                   texture     f32          2d     T20             t7     1
;                                   texture     f32          2d     T21             t9     1
;                                   texture     f32          2d     T22     t34,space2     1
;                                   texture    byte         r/o     T23     t10,space1     1
;                                   texture    byte         r/o     T24      t1,space1     1
;                                   texture     f32          1d     T25     t32,space2     1
;                                   texture     f32          3d     T26     t82,space2     1
;                                   texture     f32          1d     T27     t30,space2     1
;                                   texture     f32          3d     T28     t44,space2     1
;                                   texture     f32          3d     T29     t45,space2     1
;                                   texture     f32     2darray     T30     t47,space2     1
;                                   texture     f32     2darray     T31      t8,space2     1
;                                   texture     f32          2d     T32      t2,space2     1
;                                   texture     f32          2d     T33      t3,space2     1
;                                   texture     f32          2d     T34      t4,space2     1
;                                   textureunorm_f32     2darray     T35     t80,space2     1
;                                   texture    byte         r/o     T36     t67,space1     1
;                                   texture     f32          2d     T37      t7,space2     1
;                                   texture     f32          2d     T38      t6,space2     1
;                                   texture     f32          2d     T39      t5,space2     1
;                                   texture     f32          2d     T40     t38,space2     1
;                                   texture    byte         r/o     T41     t12,space1     1
;                                   texture    byte         r/o     T42     t13,space1     1
;                                   texture     f32          2d     T43     t83,space2     1
;                                   texture     f32          2d     T44     t86,space2     1
;                                   texture    byte         r/o     T45     t16,space1     1
;                                   texture    byte         r/o     T46     t17,space1     1
;                                   texture     f32          2d     T47             t8     1
;                                   texture     f32     2darray     T48            t10     1
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = alloca [4 x i32], align 4
  %58 = alloca [4 x float], align 4
  %59 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = icmp ne i32 %59, 0
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = alloca [12 x float], align 4
  %73 = alloca [12 x float], align 4
  %74 = alloca [3 x float], align 4
  %75 = alloca [3 x float], align 4
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = fmul fast float %77, %68
  %79 = fmul fast float %77, %69
  %80 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float %65, float %66, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %81 = call float @dx.op.unary.f32(i32 25, float %80)  ; Rsqrt(value)
  %82 = fmul fast float %81, %65
  %83 = fmul fast float %81, %66
  %84 = fmul fast float %81, %67
  %85 = xor i1 %60, true
  %86 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %87 = extractvalue %dx.types.ResRet.i32 %86, 0
  %88 = icmp eq i32 %87, 0
  %89 = and i1 %88, %85
  %90 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.i32 %90, 0
  %92 = and i32 %91, 256
  %93 = icmp ne i32 %92, 0
  %94 = and i1 %89, %93
  %95 = or i1 %60, %94
  %96 = select i1 %95, float 1.000000e+00, float -1.000000e+00
  %97 = fmul fast float %82, %96
  %98 = fmul fast float %83, %96
  %99 = fmul fast float %84, %96
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 3
  %103 = fmul fast float %78, 2.000000e+00
  %104 = fmul fast float %103, %101
  %105 = fmul fast float %79, 2.000000e+00
  %106 = fmul fast float %105, %102
  %107 = fsub fast float 1.000000e+00, %104
  %108 = fsub fast float 1.000000e+00, %106
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 1
  %112 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %113 = fmul fast float %107, %110
  %114 = fmul fast float %107, %111
  %115 = fmul fast float %107, %112
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %120 = fmul fast float %108, %117
  %121 = fmul fast float %108, %118
  %122 = fmul fast float %108, %119
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = fadd fast float %120, %124
  %128 = fadd fast float %127, %113
  %129 = fadd fast float %121, %125
  %130 = fadd fast float %129, %114
  %131 = fadd fast float %122, %126
  %132 = fadd fast float %131, %115
  %133 = fmul fast float %128, %71
  %134 = fmul fast float %130, %71
  %135 = fmul fast float %132, %71
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %139 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %140 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %141 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %142 = fmul fast float %138, %137
  %143 = fmul fast float %139, %137
  %144 = fmul fast float %140, %137
  %145 = fmul fast float %141, %137
  %146 = call float @dx.op.dot2.f32(i32 54, float %144, float %145, float %144, float %145)  ; Dot2(ax,ay,bx,by)
  %147 = call float @dx.op.dot2.f32(i32 54, float %142, float %143, float %142, float %143)  ; Dot2(ax,ay,bx,by)
  %148 = call float @dx.op.binary.f32(i32 35, float %147, float %146)  ; FMax(a,b)
  %149 = call float @dx.op.unary.f32(i32 23, float %148)  ; Log(value)
  %150 = fmul fast float %149, 5.000000e-01
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %153 = fadd fast float %152, %150
  %154 = call float @dx.op.binary.f32(i32 35, float %153, float 0.000000e+00)  ; FMax(a,b)
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 3
  %157 = fadd fast float %156, %154
  %158 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %159 = shl i32 %158, 16
  %160 = or i32 %159, %158
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = fadd fast float %162, %133
  %165 = fadd fast float %163, %134
  %166 = fmul fast float %164, 0x3F53C37960000000
  %167 = fmul fast float %165, 0x3F53C37960000000
  %168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %168, float %166, float %167, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %173 = fmul fast float %172, %170
  %174 = shl i32 %61, 3
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = and i32 %176, 16383
  %178 = shl i32 %61, 2
  %179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %178, i32 undef)  ; BufferLoad(srv,index,wot)
  %180 = extractvalue %dx.types.ResRet.i32 %179, 0
  %181 = and i32 %180, 255
  %182 = shl nuw nsw i32 %181, 16
  %183 = or i32 %182, %177
  %184 = mul nuw nsw i32 %177, 148
  %185 = add nuw nsw i32 %184, 4
  %186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = add nuw nsw i32 %184, 8
  %189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = add nuw nsw i32 %184, 60
  %192 = add nuw nsw i32 %184, 116
  %193 = fsub fast float 1.000000e+00, %64
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %196 = fmul fast float %195, %63
  %197 = fmul fast float %195, %193
  %198 = fadd fast float %196, %187
  %199 = fadd fast float %197, %190
  %200 = add nuw nsw i32 %184, 48
  %201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = add nuw nsw i32 %184, 52
  %204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = add nuw nsw i32 %184, 56
  %207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = add nuw nsw i32 %184, 104
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = add nuw nsw i32 %184, 108
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = add nuw nsw i32 %184, 112
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %220 = fmul fast float %219, %63
  %221 = fmul fast float %219, %64
  %222 = extractvalue %dx.types.CBufRet.f32 %218, 1
  %223 = fadd fast float %220, %222
  %224 = fadd fast float %221, %222
  %225 = add i32 %211, 0
  %226 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %225, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %227 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %226, i32 0)  ; GetDimensions(handle,mipLevel)
  %228 = extractvalue %dx.types.Dimensions %227, 0
  %229 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %228)  ; FirstbitLo(value)
  %230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.i32 %230, 1
  %232 = sub nsw i32 %231, %229
  %233 = sitofp i32 %232 to float
  %234 = fsub fast float %157, %233
  %235 = call float @dx.op.binary.f32(i32 35, float %234, float 0.000000e+00)  ; FMax(a,b)
  %236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %226, %dx.types.Handle %49, float %223, float %224, float %202, float undef, i32 0, i32 0, i32 undef, float %235)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = extractvalue %dx.types.ResRet.f32 %236, 1
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 3
  %241 = fmul fast float %240, 2.000000e+00
  %242 = fmul fast float %241, %237
  %243 = fmul fast float %241, %238
  %244 = fsub fast float %242, %240
  %245 = fsub fast float %243, %240
  %246 = fmul fast float %244, %244
  %247 = fmul fast float %245, %245
  %248 = fadd fast float %246, %247
  %249 = call float @dx.op.unary.f32(i32 24, float %248)  ; Sqrt(value)
  %250 = add i32 %214, 0
  %251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %250, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %252 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %251, i32 0)  ; GetDimensions(handle,mipLevel)
  %253 = extractvalue %dx.types.Dimensions %252, 0
  %254 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %253)  ; FirstbitLo(value)
  %255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.i32 %255, 1
  %257 = sub nsw i32 %256, %254
  %258 = sitofp i32 %257 to float
  %259 = fsub fast float %157, %258
  %260 = call float @dx.op.binary.f32(i32 35, float %259, float 0.000000e+00)  ; FMax(a,b)
  %261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %251, %dx.types.Handle %49, float %223, float %224, float %205, float undef, i32 0, i32 0, i32 undef, float %260)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = add i32 %217, 0
  %264 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %263, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %265 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %264, i32 0)  ; GetDimensions(handle,mipLevel)
  %266 = extractvalue %dx.types.Dimensions %265, 0
  %267 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %266)  ; FirstbitLo(value)
  %268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.i32 %268, 1
  %270 = sub nsw i32 %269, %267
  %271 = sitofp i32 %270 to float
  %272 = fsub fast float %157, %271
  %273 = call float @dx.op.binary.f32(i32 35, float %272, float 0.000000e+00)  ; FMax(a,b)
  %274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %264, %dx.types.Handle %49, float %223, float %224, float %208, float undef, i32 0, i32 0, i32 undef, float %273)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.i32 %276, 0
  %278 = call i32 @dx.op.binary.i32(i32 40, i32 %177, i32 %277)  ; UMin(a,b)
  %279 = mul i32 %278, 36
  %280 = add i32 %279, 4
  %281 = icmp eq i32 %181, 0
  br i1 %281, label %863, label %282

; <label>:282                                     ; preds = %0
  br label %283

; <label>:283                                     ; preds = %853, %282
  %284 = phi i32 [ %854, %853 ], [ %183, %282 ]
  %285 = phi float [ %855, %853 ], [ 0.000000e+00, %282 ]
  %286 = phi float [ %856, %853 ], [ 0.000000e+00, %282 ]
  %287 = phi i32 [ %296, %853 ], [ %181, %282 ]
  %288 = phi i32 [ %857, %853 ], [ %160, %282 ]
  %289 = phi i32 [ %858, %853 ], [ %160, %282 ]
  %290 = phi i32 [ %859, %853 ], [ %160, %282 ]
  %291 = phi i32 [ %860, %853 ], [ %160, %282 ]
  %292 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %287)  ; FirstbitLo(value)
  %293 = and i32 %292, 31
  %294 = shl i32 1, %293
  %295 = xor i32 %294, -1
  %296 = and i32 %287, %295
  %297 = shl i32 %292, 2
  %298 = add i32 %191, %297
  %299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.f32 %299, 0
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %303 = fmul fast float %302, %63
  %304 = fmul fast float %302, %64
  %305 = extractvalue %dx.types.CBufRet.f32 %301, 1
  %306 = fadd fast float %303, %305
  %307 = fadd fast float %304, %305
  %308 = add i32 %192, %297
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = add i32 %310, 0
  %312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %311, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %313 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %312, i32 0)  ; GetDimensions(handle,mipLevel)
  %314 = extractvalue %dx.types.Dimensions %313, 0
  %315 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %314)  ; FirstbitLo(value)
  %316 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.i32 %316, 1
  %318 = sub nsw i32 %317, %315
  %319 = sitofp i32 %318 to float
  %320 = fsub fast float %157, %319
  %321 = call float @dx.op.binary.f32(i32 35, float %320, float 0.000000e+00)  ; FMax(a,b)
  %322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %312, %dx.types.Handle %49, float %306, float %307, float %300, float undef, i32 0, i32 0, i32 undef, float %321)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %323 = extractvalue %dx.types.ResRet.f32 %322, 0
  %324 = fcmp fast ogt float %323, 0.000000e+00
  br i1 %324, label %325, label %853

; <label>:325                                     ; preds = %283
  %326 = add i32 %280, %297
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, 32767
  %330 = mul nuw nsw i32 %329, 928
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = or i32 %330, 8
  %334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 0
  %336 = or i32 %330, 12
  %337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 1
  %339 = or i32 %330, 20
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = or i32 %330, 24
  %343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.f32 %343, 0
  %345 = extractvalue %dx.types.ResRet.f32 %343, 1
  %346 = extractvalue %dx.types.ResRet.f32 %343, 2
  %347 = extractvalue %dx.types.ResRet.f32 %343, 3
  %348 = add nuw nsw i32 %330, 40
  %349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 0
  %351 = add nuw nsw i32 %330, 72
  %352 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.f32 %352, 0
  %354 = extractvalue %dx.types.ResRet.f32 %352, 1
  %355 = add nuw nsw i32 %330, 80
  %356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = add nuw nsw i32 %330, 228
  %359 = add nuw nsw i32 %330, 596
  %360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = extractvalue %dx.types.ResRet.f32 %360, 1
  %363 = add nuw nsw i32 %330, 620
  %364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = extractvalue %dx.types.ResRet.f32 %364, 1
  %367 = add nuw nsw i32 %330, 628
  %368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = extractvalue %dx.types.ResRet.f32 %368, 1
  %371 = extractvalue %dx.types.ResRet.f32 %368, 2
  %372 = extractvalue %dx.types.ResRet.f32 %368, 3
  %373 = add nuw nsw i32 %330, 648
  %374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.f32 %374, 0
  %376 = add nuw nsw i32 %330, 812
  %377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = add nuw nsw i32 %330, 816
  %380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.f32 %380, 1
  %382 = add nuw nsw i32 %330, 896
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = add nuw nsw i32 %330, 900
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = add nuw nsw i32 %330, 904
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = lshr i32 %284, 24
  %392 = uitofp i32 %391 to float
  %393 = fmul fast float %392, 0x3F70101020000000
  %394 = and i32 %332, 128
  %395 = icmp ne i32 %394, 0
  %396 = extractvalue %dx.types.CBufRet.i32 %316, 0
  %397 = and i32 %396, 512
  %398 = icmp ne i32 %397, 0
  %399 = and i1 %395, %398
  %400 = select i1 %399, float 0.000000e+00, float %323
  %401 = fadd fast float %400, %393
  %402 = call float @dx.op.unary.f32(i32 7, float %401)  ; Saturate(value)
  %403 = fmul fast float %402, 2.550000e+02
  %404 = fptoui float %403 to i32
  %405 = shl i32 %404, 24
  %406 = and i32 %284, 16777215
  %407 = or i32 %405, %406
  %408 = fcmp fast ole float %62, 0x3FA4B5DCC0000000
  %409 = fmul fast float %62, 0x3FB3D07220000000
  %410 = fadd fast float %62, 0x3FAC28F5C0000000
  %411 = fmul fast float %410, 0x3FEE54EDE0000000
  %412 = call float @dx.op.unary.f32(i32 23, float %411)  ; Log(value)
  %413 = fmul fast float %412, 0x4003333340000000
  %414 = call float @dx.op.unary.f32(i32 21, float %413)  ; Exp(value)
  %415 = select i1 %408, float %409, float %414
  %416 = call float @dx.op.unary.f32(i32 7, float %415)  ; Saturate(value)
  %417 = fmul fast float %361, %262
  %418 = fadd fast float %417, %362
  %419 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %420 = call float @dx.op.binary.f32(i32 35, float %416, float %419)  ; FMax(a,b)
  %421 = add i32 %387, 0
  %422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %421, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %424 = extractvalue %dx.types.CBufRet.f32 %423, 0
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 0
  %427 = extractvalue %dx.types.CBufRet.f32 %425, 1
  %428 = extractvalue %dx.types.CBufRet.f32 %425, 2
  %429 = fadd fast float %426, %133
  %430 = fadd fast float %427, %134
  %431 = fadd fast float %428, %135
  %432 = fmul fast float %133, %133
  %433 = fmul fast float %134, %134
  %434 = fadd fast float %432, %433
  %435 = fmul fast float %135, %135
  %436 = fadd fast float %434, %435
  %437 = call float @dx.op.unary.f32(i32 24, float %436)  ; Sqrt(value)
  %438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %439 = extractvalue %dx.types.CBufRet.f32 %438, 0
  %440 = fcmp fast ogt float %437, %439
  %441 = zext i1 %440 to i32
  %442 = extractvalue %dx.types.CBufRet.f32 %438, 1
  %443 = fcmp fast ogt float %437, %442
  %444 = zext i1 %443 to i32
  %445 = add nuw nsw i32 %444, %441
  %446 = extractvalue %dx.types.CBufRet.f32 %438, 2
  %447 = fcmp fast ogt float %437, %446
  %448 = zext i1 %447 to i32
  %449 = add nuw nsw i32 %445, %448
  %450 = icmp ult i32 %449, 3
  %451 = zext i1 %450 to i32
  %452 = shl nuw nsw i32 %449, 2
  %453 = add nuw nsw i32 %452, 48
  %454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 %453)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.f32 %454, 1
  %456 = fcmp fast ogt float %437, %455
  %457 = zext i1 %456 to i32
  %458 = or i32 %452, 1
  %459 = add nuw nsw i32 %458, 48
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 %459)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 1
  %462 = fcmp fast ogt float %437, %461
  %463 = zext i1 %462 to i32
  %464 = add nuw nsw i32 %463, %457
  %465 = or i32 %452, 2
  %466 = add nuw nsw i32 %465, 48
  %467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 %466)  ; CBufferLoadLegacy(handle,regIndex)
  %468 = extractvalue %dx.types.CBufRet.f32 %467, 1
  %469 = fcmp fast ogt float %437, %468
  %470 = zext i1 %469 to i32
  %471 = add nuw nsw i32 %464, %470
  %472 = add i32 %341, -1
  %473 = call i32 @dx.op.binary.i32(i32 40, i32 %471, i32 %472)  ; UMin(a,b)
  %474 = add i32 %452, %473
  %475 = call i32 @dx.op.binary.i32(i32 40, i32 %474, i32 12)  ; UMin(a,b)
  %476 = add i32 %475, 48
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 %476)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 0
  %479 = fcmp fast oge float %437, %478
  %480 = zext i1 %479 to i32
  %481 = call i32 @dx.op.binary.i32(i32 40, i32 %341, i32 %451)  ; UMin(a,b)
  %482 = call i32 @dx.op.binary.i32(i32 40, i32 %480, i32 %481)  ; UMin(a,b)
  %483 = add i32 %482, %341
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %663, label %485

; <label>:485                                     ; preds = %325
  br label %486

; <label>:486                                     ; preds = %486, %485
  %487 = phi float [ %659, %486 ], [ 0.000000e+00, %485 ]
  %488 = phi float [ %651, %486 ], [ 0.000000e+00, %485 ]
  %489 = phi float [ %652, %486 ], [ 0.000000e+00, %485 ]
  %490 = phi i32 [ %498, %486 ], [ %475, %485 ]
  %491 = phi i32 [ %660, %486 ], [ 0, %485 ]
  %492 = add i32 %491, %490
  %493 = and i32 %492, -4
  %494 = add i32 %493, %341
  %495 = icmp uge i32 %492, %494
  %496 = sub i32 4, %341
  %497 = select i1 %495, i32 %496, i32 0
  %498 = add i32 %497, %490
  %499 = add i32 %497, %492
  %500 = and i32 %499, 3
  %501 = lshr i32 %499, 2
  %502 = add i32 %499, 32
  %503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 %502)  ; CBufferLoadLegacy(handle,regIndex)
  %504 = extractvalue %dx.types.CBufRet.f32 %503, 0
  %505 = extractvalue %dx.types.CBufRet.f32 %503, 1
  %506 = extractvalue %dx.types.CBufRet.f32 %503, 2
  %507 = extractvalue %dx.types.CBufRet.f32 %503, 3
  %508 = fmul fast float %504, %437
  %509 = fadd fast float %508, %505
  %510 = call float @dx.op.unary.f32(i32 7, float %509)  ; Saturate(value)
  %511 = fmul fast float %506, %437
  %512 = fadd fast float %511, %507
  %513 = call float @dx.op.unary.f32(i32 7, float %512)  ; Saturate(value)
  %514 = call float @dx.op.binary.f32(i32 36, float %510, float %513)  ; FMin(a,b)
  %515 = mul nuw nsw i32 %500, 72
  %516 = add nuw nsw i32 %358, %515
  %517 = add nuw nsw i32 %516, 16
  %518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 0
  %520 = extractvalue %dx.types.ResRet.f32 %518, 1
  %521 = extractvalue %dx.types.ResRet.f32 %518, 2
  %522 = extractvalue %dx.types.ResRet.f32 %518, 3
  %523 = add nuw nsw i32 %516, 36
  %524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.f32 %524, 0
  %526 = add nuw nsw i32 %516, 56
  %527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = fmul fast float %249, 3.906250e-03
  %530 = fmul fast float %529, %357
  %531 = fmul fast float %530, %525
  %532 = fmul fast float %531, %528
  %533 = extractvalue %dx.types.ResRet.f32 %527, 1
  %534 = fadd fast float %532, %533
  %535 = call float @dx.op.binary.f32(i32 35, float %534, float 0.000000e+00)  ; FMax(a,b)
  %536 = add nuw nsw i32 %516, 32
  %537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 0
  %539 = fmul fast float %525, %244
  %540 = fmul fast float %525, %245
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 1
  %543 = add nuw nsw i32 %516, 40
  %544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = extractvalue %dx.types.ResRet.f32 %544, 1
  %547 = extractvalue %dx.types.ResRet.f32 %544, 2
  %548 = extractvalue %dx.types.ResRet.f32 %544, 3
  %549 = fadd fast float %542, %173
  %550 = fadd fast float %549, %547
  %551 = fmul fast float %549, %546
  %552 = call float @dx.op.unary.f32(i32 29, float %551)  ; Round_z(value)
  %553 = fmul fast float %545, %552
  %554 = fsub fast float %549, %553
  %555 = fmul fast float %550, %546
  %556 = call float @dx.op.unary.f32(i32 29, float %555)  ; Round_z(value)
  %557 = fmul fast float %556, %545
  %558 = fsub fast float %550, %557
  %559 = fmul fast float %554, %539
  %560 = fmul fast float %554, %540
  %561 = fmul fast float %558, %539
  %562 = fmul fast float %558, %540
  %563 = fsub fast float %429, %559
  %564 = fsub fast float %430, %560
  %565 = fsub fast float %429, %561
  %566 = fsub fast float %430, %562
  %567 = fsub fast float %547, %554
  %568 = call float @dx.op.unary.f32(i32 6, float %567)  ; FAbs(value)
  %569 = fmul fast float %568, %548
  %570 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  %571 = fmul fast float %335, 4.000000e+00
  %572 = uitofp i32 %501 to float
  %573 = fadd fast float %572, %571
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 0
  %576 = extractvalue %dx.types.CBufRet.f32 %574, 1
  %577 = extractvalue %dx.types.CBufRet.f32 %574, 2
  %578 = extractvalue %dx.types.CBufRet.f32 %574, 3
  %579 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 0
  store float %575, float* %579, align 4
  %580 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 1
  store float %576, float* %580, align 4
  %581 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 2
  store float %577, float* %581, align 4
  %582 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 3
  store float %578, float* %582, align 4
  %583 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 %501
  %584 = load float, float* %583, align 4, !tbaa !92, !noalias !96
  %585 = fmul fast float %584, %338
  %586 = fmul fast float %563, %519
  %587 = call float @dx.op.tertiary.f32(i32 46, float %520, float %564, float %586)  ; FMad(a,b,c)
  %588 = fmul fast float %563, %521
  %589 = call float @dx.op.tertiary.f32(i32 46, float %522, float %564, float %588)  ; FMad(a,b,c)
  %590 = add nuw nsw i32 %516, 8
  %591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 0
  %593 = extractvalue %dx.types.ResRet.f32 %591, 1
  %594 = fadd fast float %592, %587
  %595 = fadd fast float %593, %589
  %596 = fmul fast float %594, %585
  %597 = fmul fast float %595, %585
  %598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 0
  %600 = extractvalue %dx.types.ResRet.f32 %598, 1
  %601 = fmul fast float %596, %599
  %602 = fmul fast float %597, %600
  %603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.f32 %603, 2
  %605 = fadd fast float %601, %604
  %606 = fadd fast float %602, %604
  %607 = fmul fast float %565, %519
  %608 = call float @dx.op.tertiary.f32(i32 46, float %520, float %566, float %607)  ; FMad(a,b,c)
  %609 = fmul fast float %565, %521
  %610 = call float @dx.op.tertiary.f32(i32 46, float %522, float %566, float %609)  ; FMad(a,b,c)
  %611 = fadd fast float %592, %608
  %612 = fadd fast float %593, %610
  %613 = fmul fast float %611, %585
  %614 = fmul fast float %612, %585
  %615 = fmul fast float %613, %599
  %616 = fmul fast float %614, %600
  %617 = fadd fast float %615, %604
  %618 = fadd fast float %616, %604
  %619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %605, float %606, float %573, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %620 = extractvalue %dx.types.ResRet.f32 %619, 0
  %621 = extractvalue %dx.types.ResRet.f32 %619, 1
  %622 = extractvalue %dx.types.ResRet.f32 %619, 3
  %623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %617, float %618, float %573, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %624 = extractvalue %dx.types.ResRet.f32 %623, 0
  %625 = extractvalue %dx.types.ResRet.f32 %623, 1
  %626 = extractvalue %dx.types.ResRet.f32 %623, 3
  %627 = fsub fast float %624, %620
  %628 = fsub fast float %625, %621
  %629 = fsub fast float %626, %622
  %630 = fmul fast float %627, %570
  %631 = fmul fast float %628, %570
  %632 = fmul fast float %629, %570
  %633 = fadd fast float %630, %620
  %634 = fadd fast float %631, %621
  %635 = fadd fast float %632, %622
  %636 = fmul fast float %633, 2.000000e+00
  %637 = fmul fast float %634, 2.000000e+00
  %638 = fadd fast float %636, -1.000000e+00
  %639 = fadd fast float %637, -1.000000e+00
  %640 = fmul fast float %638, %519
  %641 = call float @dx.op.tertiary.f32(i32 46, float %639, float %521, float %640)  ; FMad(a,b,c)
  %642 = fmul fast float %638, %520
  %643 = call float @dx.op.tertiary.f32(i32 46, float %639, float %522, float %642)  ; FMad(a,b,c)
  %644 = fmul fast float %514, %424
  %645 = fmul fast float %644, %535
  %646 = fmul fast float %645, %538
  %647 = fmul fast float %641, %646
  %648 = fmul fast float %647, %599
  %649 = fmul fast float %643, %646
  %650 = fmul fast float %649, %600
  %651 = fadd fast float %648, %488
  %652 = fadd fast float %650, %489
  %653 = add nuw nsw i32 %516, 64
  %654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %653, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.f32 %654, 0
  %656 = fmul fast float %655, %635
  %657 = extractvalue %dx.types.ResRet.f32 %654, 1
  %658 = fadd fast float %656, %657
  %659 = call float @dx.op.binary.f32(i32 35, float %487, float %658)  ; FMax(a,b)
  %660 = add nuw i32 %491, 1
  %661 = icmp eq i32 %660, %483
  br i1 %661, label %662, label %486

; <label>:662                                     ; preds = %486
  br label %663

; <label>:663                                     ; preds = %662, %325
  %664 = phi float [ 0.000000e+00, %325 ], [ %659, %662 ]
  %665 = phi float [ 0.000000e+00, %325 ], [ %651, %662 ]
  %666 = phi float [ 0.000000e+00, %325 ], [ %652, %662 ]
  %667 = call float @dx.op.dot3.f32(i32 55, float %665, float %666, float 1.000000e+00, float %665, float %666, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %668 = call float @dx.op.unary.f32(i32 25, float %667)  ; Rsqrt(value)
  %669 = fmul fast float %664, %365
  %670 = fadd fast float %669, %366
  %671 = call float @dx.op.unary.f32(i32 7, float %670)  ; Saturate(value)
  %672 = fmul fast float %665, %323
  %673 = fmul fast float %672, %668
  %674 = fmul fast float %666, %323
  %675 = fmul fast float %674, %668
  %676 = fadd fast float %673, %285
  %677 = fadd fast float %675, %286
  %678 = fadd fast float %671, %420
  %679 = and i32 %332, 16
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %740, label %681

; <label>:681                                     ; preds = %663
  %682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.f32 %682, 0
  %684 = extractvalue %dx.types.CBufRet.f32 %682, 1
  %685 = fsub fast float %429, %683
  %686 = fsub fast float %430, %684
  %687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %688 = extractvalue %dx.types.CBufRet.f32 %687, 2
  %689 = fmul fast float %685, %688
  %690 = fmul fast float %686, %688
  %691 = fadd fast float %689, 5.000000e-01
  %692 = fadd fast float %690, 5.000000e-01
  %693 = fcmp fast olt float %691, 0.000000e+00
  %694 = fcmp fast olt float %692, 0.000000e+00
  %695 = or i1 %693, %694
  %696 = fcmp fast oge float %691, 1.000000e+00
  %697 = fcmp fast oge float %692, 1.000000e+00
  %698 = or i1 %696, %697
  %699 = or i1 %695, %698
  br i1 %699, label %731, label %700

; <label>:700                                     ; preds = %681
  %701 = fmul fast float %688, %429
  %702 = fmul fast float %688, %430
  %703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %704 = extractvalue %dx.types.CBufRet.f32 %703, 2
  %705 = fsub fast float %431, %704
  %706 = extractvalue %dx.types.CBufRet.f32 %703, 1
  %707 = fmul fast float %705, %706
  %708 = call float @dx.op.unary.f32(i32 7, float %707)  ; Saturate(value)
  %709 = call float @dx.op.binary.f32(i32 36, float %692, float %708)  ; FMin(a,b)
  %710 = call float @dx.op.binary.f32(i32 36, float %691, float %709)  ; FMin(a,b)
  %711 = call float @dx.op.binary.f32(i32 35, float %692, float %708)  ; FMax(a,b)
  %712 = call float @dx.op.binary.f32(i32 35, float %691, float %711)  ; FMax(a,b)
  %713 = fsub fast float 1.000000e+00, %712
  %714 = call float @dx.op.binary.f32(i32 36, float %710, float %713)  ; FMin(a,b)
  %715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %716 = extractvalue %dx.types.CBufRet.f32 %715, 3
  %717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %718 = extractvalue %dx.types.CBufRet.f32 %717, 1
  %719 = call float @dx.op.binary.f32(i32 35, float %718, float %716)  ; FMax(a,b)
  %720 = fsub fast float %719, %718
  %721 = fsub fast float %714, %718
  %722 = fdiv fast float %721, %720
  %723 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  %724 = fmul fast float %723, 2.000000e+00
  %725 = fsub fast float 3.000000e+00, %724
  %726 = fmul fast float %723, %723
  %727 = fmul fast float %726, %725
  %728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %701, float %702, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %729 = extractvalue %dx.types.ResRet.f32 %728, 0
  %730 = fmul fast float %727, %729
  br label %731

; <label>:731                                     ; preds = %700, %681
  %732 = phi float [ %730, %700 ], [ 0.000000e+00, %681 ]
  %733 = fmul fast float %381, %198
  %734 = fmul fast float %381, %199
  %735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %736 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %422, %dx.types.Handle %735, float %733, float %734, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %737 = extractvalue %dx.types.ResRet.f32 %736, 0
  %738 = fmul fast float %737, %732
  %739 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %738)  ; FMax(a,b)
  br label %740

; <label>:740                                     ; preds = %731, %663
  %741 = phi float [ %739, %731 ], [ 0.000000e+00, %663 ]
  %742 = and i32 %332, 8
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %760, label %744

; <label>:744                                     ; preds = %740
  %745 = fadd fast float %378, 1.000000e+00
  %746 = fmul fast float %678, %745
  %747 = fsub fast float %746, %378
  %748 = fsub fast float %745, %747
  %749 = call float @dx.op.unary.f32(i32 7, float %748)  ; Saturate(value)
  %750 = fsub fast float 1.000000e+00, %746
  %751 = call float @dx.op.unary.f32(i32 7, float %750)  ; Saturate(value)
  %752 = fsub fast float %749, %751
  %753 = fsub fast float %741, %751
  %754 = fdiv fast float %753, %752
  %755 = call float @dx.op.unary.f32(i32 7, float %754)  ; Saturate(value)
  %756 = fmul fast float %755, 2.000000e+00
  %757 = fsub fast float 3.000000e+00, %756
  %758 = fmul fast float %755, %755
  %759 = fmul fast float %758, %757
  br label %760

; <label>:760                                     ; preds = %744, %740
  %761 = phi float [ %759, %744 ], [ %741, %740 ]
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 3
  %764 = fmul fast float %763, %761
  %765 = and i32 %332, 32
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %783, label %767

; <label>:767                                     ; preds = %760
  %768 = add i32 %390, 0
  %769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %768, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %769, %dx.types.Handle %51, float %764, float %375, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %771 = extractvalue %dx.types.ResRet.f32 %770, 0
  %772 = extractvalue %dx.types.ResRet.f32 %770, 1
  %773 = extractvalue %dx.types.ResRet.f32 %770, 2
  %774 = extractvalue %dx.types.ResRet.f32 %770, 3
  %775 = and i32 %384, 255
  %776 = uitofp i32 %775 to float
  %777 = lshr i32 %384, 8
  %778 = and i32 %777, 255
  %779 = uitofp i32 %778 to float
  %780 = fmul fast float %774, %776
  %781 = fadd fast float %780, %779
  %782 = fmul fast float %781, 0x3F70101000000000
  br label %783

; <label>:783                                     ; preds = %767, %760
  %784 = phi float [ %771, %767 ], [ %369, %760 ]
  %785 = phi float [ %772, %767 ], [ %370, %760 ]
  %786 = phi float [ %773, %767 ], [ %371, %760 ]
  %787 = phi float [ %782, %767 ], [ %372, %760 ]
  %788 = fsub fast float %784, %344
  %789 = fsub fast float %785, %345
  %790 = fsub fast float %786, %346
  %791 = fmul fast float %788, %764
  %792 = fmul fast float %789, %764
  %793 = fmul fast float %790, %764
  %794 = fadd fast float %791, %344
  %795 = fadd fast float %792, %345
  %796 = fadd fast float %793, %346
  %797 = fsub fast float %787, %347
  %798 = fmul fast float %797, %764
  %799 = fadd fast float %798, %347
  %800 = fmul fast float %353, %275
  %801 = fadd fast float %800, %354
  %802 = and i32 %288, 65535
  %803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %802)  ; LegacyF16ToF32(value)
  %804 = lshr i32 %288, 16
  %805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %804)  ; LegacyF16ToF32(value)
  %806 = and i32 %289, 65535
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = lshr i32 %289, 16
  %809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %808)  ; LegacyF16ToF32(value)
  %810 = fmul fast float %794, %323
  %811 = fmul fast float %795, %323
  %812 = fmul fast float %796, %323
  %813 = fmul fast float %799, %323
  %814 = fadd fast float %803, %810
  %815 = fadd fast float %805, %811
  %816 = fadd fast float %807, %812
  %817 = fadd fast float %809, %813
  %818 = call i32 @dx.op.legacyF32ToF16(i32 130, float %814)  ; LegacyF32ToF16(value)
  %819 = call i32 @dx.op.legacyF32ToF16(i32 130, float %815)  ; LegacyF32ToF16(value)
  %820 = shl i32 %819, 16
  %821 = or i32 %820, %818
  %822 = call i32 @dx.op.legacyF32ToF16(i32 130, float %816)  ; LegacyF32ToF16(value)
  %823 = call i32 @dx.op.legacyF32ToF16(i32 130, float %817)  ; LegacyF32ToF16(value)
  %824 = shl i32 %823, 16
  %825 = or i32 %824, %822
  %826 = and i32 %291, 65535
  %827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %826)  ; LegacyF16ToF32(value)
  %828 = lshr i32 %291, 16
  %829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %828)  ; LegacyF16ToF32(value)
  %830 = fmul fast float %350, %323
  %831 = fadd fast float %827, %323
  %832 = fadd fast float %829, %830
  %833 = call i32 @dx.op.legacyF32ToF16(i32 130, float %831)  ; LegacyF32ToF16(value)
  %834 = call i32 @dx.op.legacyF32ToF16(i32 130, float %832)  ; LegacyF32ToF16(value)
  %835 = shl i32 %834, 16
  %836 = or i32 %835, %833
  %837 = fcmp fast ogt float %801, 0.000000e+00
  %838 = select i1 %837, float 1.000000e+00, float 0.000000e+00
  %839 = and i32 %290, 65535
  %840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %839)  ; LegacyF16ToF32(value)
  %841 = lshr i32 %290, 16
  %842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %841)  ; LegacyF16ToF32(value)
  %843 = fmul fast float %801, %323
  %844 = fmul fast float %838, %323
  %845 = fadd fast float %840, %843
  %846 = fadd fast float %842, %844
  %847 = call float @dx.op.unary.f32(i32 7, float %845)  ; Saturate(value)
  %848 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  %849 = call i32 @dx.op.legacyF32ToF16(i32 130, float %847)  ; LegacyF32ToF16(value)
  %850 = call i32 @dx.op.legacyF32ToF16(i32 130, float %848)  ; LegacyF32ToF16(value)
  %851 = shl i32 %850, 16
  %852 = or i32 %851, %849
  br label %853

; <label>:853                                     ; preds = %783, %283
  %854 = phi i32 [ %407, %783 ], [ %284, %283 ]
  %855 = phi float [ %676, %783 ], [ %285, %283 ]
  %856 = phi float [ %677, %783 ], [ %286, %283 ]
  %857 = phi i32 [ %821, %783 ], [ %288, %283 ]
  %858 = phi i32 [ %825, %783 ], [ %289, %283 ]
  %859 = phi i32 [ %852, %783 ], [ %290, %283 ]
  %860 = phi i32 [ %836, %783 ], [ %291, %283 ]
  %861 = icmp eq i32 %296, 0
  br i1 %861, label %862, label %283

; <label>:862                                     ; preds = %853
  br label %863

; <label>:863                                     ; preds = %862, %0
  %864 = phi i32 [ %183, %0 ], [ %854, %862 ]
  %865 = phi float [ 0.000000e+00, %0 ], [ %855, %862 ]
  %866 = phi float [ 0.000000e+00, %0 ], [ %856, %862 ]
  %867 = phi i32 [ %160, %0 ], [ %857, %862 ]
  %868 = phi i32 [ %160, %0 ], [ %858, %862 ]
  %869 = phi i32 [ %160, %0 ], [ %859, %862 ]
  %870 = phi i32 [ %160, %0 ], [ %860, %862 ]
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 2
  %873 = fmul fast float %872, 0x3FE3C6EF40000000
  %874 = frem fast float %78, 2.560000e+02
  %875 = frem fast float %79, 2.560000e+02
  %876 = fptoui float %874 to i32
  %877 = fptoui float %875 to i32
  %878 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %30, i32 0, i32 %876, i32 %877, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %879 = extractvalue %dx.types.ResRet.f32 %878, 0
  %880 = fadd fast float %879, %873
  %881 = call float @dx.op.unary.f32(i32 22, float %880)  ; Frc(value)
  %882 = fcmp fast ogt float %99, 0.000000e+00
  %883 = fcmp fast olt float %99, 0.000000e+00
  %884 = zext i1 %882 to i32
  %885 = zext i1 %883 to i32
  %886 = sub nsw i32 %884, %885
  %887 = sitofp i32 %886 to float
  %888 = fadd fast float %887, %99
  %889 = fdiv fast float -1.000000e+00, %888
  %890 = fmul fast float %97, %98
  %891 = fmul fast float %890, %889
  %892 = fmul fast float %97, %97
  %893 = fmul fast float %892, %887
  %894 = fmul fast float %893, %889
  %895 = fadd fast float %894, 1.000000e+00
  %896 = fmul fast float %891, %887
  %897 = fmul fast float %97, %887
  %898 = fsub fast float -0.000000e+00, %897
  %899 = fmul fast float %98, %98
  %900 = fmul fast float %899, %889
  %901 = fadd fast float %900, %887
  %902 = fsub fast float -0.000000e+00, %98
  %903 = and i32 %867, 65535
  %904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %903)  ; LegacyF16ToF32(value)
  %905 = lshr i32 %867, 16
  %906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %905)  ; LegacyF16ToF32(value)
  %907 = and i32 %868, 65535
  %908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %907)  ; LegacyF16ToF32(value)
  %909 = lshr i32 %868, 16
  %910 = call float @dx.op.legacyF16ToF32(i32 131, i32 %909)  ; LegacyF16ToF32(value)
  %911 = and i32 %870, 65535
  %912 = call float @dx.op.legacyF16ToF32(i32 131, i32 %911)  ; LegacyF16ToF32(value)
  %913 = lshr i32 %870, 16
  %914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %913)  ; LegacyF16ToF32(value)
  %915 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %916 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %917 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %918 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %919 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %920 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %921 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %922 = fadd fast float %916, %133
  %923 = fadd fast float %917, %134
  %924 = fadd fast float %918, %135
  %925 = fadd fast float %919, %133
  %926 = fadd fast float %920, %134
  %927 = fadd fast float %921, %135
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 0
  %930 = extractvalue %dx.types.CBufRet.f32 %928, 1
  %931 = extractvalue %dx.types.CBufRet.f32 %928, 2
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 2
  %934 = extractvalue %dx.types.CBufRet.f32 %932, 3
  %935 = fmul fast float %929, %78
  %936 = fmul fast float %935, %933
  %937 = fmul fast float %930, %79
  %938 = fmul fast float %937, %934
  %939 = fptoui float %936 to i32
  %940 = fptoui float %938 to i32
  %941 = fadd fast float %929, -1.000000e+00
  %942 = fadd fast float %930, -1.000000e+00
  %943 = fptoui float %941 to i32
  %944 = fptoui float %942 to i32
  %945 = call i32 @dx.op.binary.i32(i32 40, i32 %939, i32 %943)  ; UMin(a,b)
  %946 = call i32 @dx.op.binary.i32(i32 40, i32 %940, i32 %944)  ; UMin(a,b)
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 2
  %949 = extractvalue %dx.types.CBufRet.f32 %947, 3
  %950 = fmul fast float %948, %71
  %951 = fsub fast float %950, %949
  %952 = fadd fast float %931, -1.000000e+00
  %953 = call float @dx.op.binary.f32(i32 36, float %951, float %952)  ; FMin(a,b)
  %954 = fptoui float %953 to i32
  %955 = fptoui float %929 to i32
  %956 = fptoui float %930 to i32
  %957 = mul i32 %954, %956
  %958 = add i32 %957, %946
  %959 = mul i32 %958, %955
  %960 = add i32 %959, %945
  %961 = shl i32 %960, 2
  %962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.i32 %962, 0
  %964 = and i32 %963, 1023
  %965 = lshr i32 %963, 10
  %966 = icmp eq i32 %964, 0
  br i1 %966, label %1356, label %967

; <label>:967                                     ; preds = %863
  %968 = and i32 %963, 1023
  br label %969

; <label>:969                                     ; preds = %1088, %967
  %970 = phi float [ %1089, %1088 ], [ 0.000000e+00, %967 ]
  %971 = phi float [ %1090, %1088 ], [ 0.000000e+00, %967 ]
  %972 = phi float [ %1091, %1088 ], [ 0.000000e+00, %967 ]
  %973 = phi float [ %1092, %1088 ], [ %865, %967 ]
  %974 = phi float [ %1093, %1088 ], [ %866, %967 ]
  %975 = phi float [ %1094, %1088 ], [ %912, %967 ]
  %976 = phi float [ %1095, %1088 ], [ %915, %967 ]
  %977 = phi float [ %1096, %1088 ], [ %910, %967 ]
  %978 = phi float [ %1097, %1088 ], [ %904, %967 ]
  %979 = phi float [ %1098, %1088 ], [ %906, %967 ]
  %980 = phi float [ %1099, %1088 ], [ %908, %967 ]
  %981 = phi i32 [ %1037, %1088 ], [ 0, %967 ]
  %982 = add nuw nsw i32 %981, %965
  %983 = shl i32 %982, 2
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = shl i32 %985, 8
  %987 = or i32 %986, 48
  %988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.f32 %988, 0
  %990 = extractvalue %dx.types.ResRet.f32 %988, 1
  %991 = extractvalue %dx.types.ResRet.f32 %988, 2
  %992 = extractvalue %dx.types.ResRet.f32 %988, 3
  %993 = or i32 %986, 64
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = extractvalue %dx.types.ResRet.i32 %994, 1
  %997 = or i32 %986, 80
  %998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %997, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.f32 %998, 2
  %1000 = extractvalue %dx.types.ResRet.f32 %998, 3
  %1001 = or i32 %986, 96
  %1002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1001, i32 undef)  ; BufferLoad(srv,index,wot)
  %1003 = extractvalue %dx.types.ResRet.f32 %1002, 0
  %1004 = extractvalue %dx.types.ResRet.f32 %1002, 1
  %1005 = extractvalue %dx.types.ResRet.f32 %1002, 2
  %1006 = extractvalue %dx.types.ResRet.f32 %1002, 3
  %1007 = or i32 %986, 112
  %1008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1007, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.f32 %1008, 2
  %1010 = or i32 %986, 128
  %1011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.ResRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.ResRet.f32 %1011, 2
  %1015 = extractvalue %dx.types.ResRet.f32 %1011, 3
  %1016 = or i32 %986, 144
  %1017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.f32 %1017, 0
  %1019 = extractvalue %dx.types.ResRet.f32 %1017, 1
  %1020 = extractvalue %dx.types.ResRet.f32 %1017, 2
  %1021 = extractvalue %dx.types.ResRet.f32 %1017, 3
  %1022 = or i32 %986, 160
  %1023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.f32 %1023, 0
  %1025 = extractvalue %dx.types.ResRet.f32 %1023, 1
  %1026 = extractvalue %dx.types.ResRet.f32 %1023, 2
  %1027 = or i32 %986, 192
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = or i32 %986, 208
  %1031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1030, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.f32 %1031, 0
  %1033 = or i32 %986, 248
  %1034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.ResRet.f32 %1034, 1
  %1037 = add nuw nsw i32 %981, 1
  %1038 = bitcast float %992 to i32
  %1039 = and i32 %1038, 512
  %1040 = icmp ne i32 %1039, 0
  %1041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.ResRet.f32 %1041, 1
  %1044 = extractvalue %dx.types.ResRet.f32 %1041, 2
  %1045 = extractvalue %dx.types.ResRet.f32 %1041, 3
  %1046 = call float @dx.op.dot4.f32(i32 56, float %1042, float %1043, float %1044, float %1045, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1047 = or i32 %986, 16
  %1048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = extractvalue %dx.types.ResRet.f32 %1048, 3
  %1053 = call float @dx.op.dot4.f32(i32 56, float %1049, float %1050, float %1051, float %1052, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1054 = or i32 %986, 32
  %1055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.ResRet.f32 %1055, 1
  %1058 = extractvalue %dx.types.ResRet.f32 %1055, 2
  %1059 = extractvalue %dx.types.ResRet.f32 %1055, 3
  %1060 = call float @dx.op.dot4.f32(i32 56, float %1056, float %1057, float %1058, float %1059, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1061 = call float @dx.op.unary.f32(i32 27, float %1046)  ; Round_ni(value)
  %1062 = call float @dx.op.unary.f32(i32 6, float %1061)  ; FAbs(value)
  %1063 = call float @dx.op.unary.f32(i32 27, float %1053)  ; Round_ni(value)
  %1064 = call float @dx.op.unary.f32(i32 6, float %1063)  ; FAbs(value)
  %1065 = call float @dx.op.unary.f32(i32 6, float %1060)  ; FAbs(value)
  %1066 = call float @dx.op.unary.f32(i32 27, float %1065)  ; Round_ni(value)
  %1067 = fadd fast float %1064, %1062
  %1068 = fadd fast float %1067, %1066
  %1069 = fcmp fast oeq float %1068, 0.000000e+00
  %1070 = call float @dx.op.dot4.f32(i32 56, float %1042, float %1043, float %1044, float %1045, float %922, float %923, float %924, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1071 = call float @dx.op.dot4.f32(i32 56, float %1049, float %1050, float %1051, float %1052, float %922, float %923, float %924, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1072 = call float @dx.op.dot4.f32(i32 56, float %1042, float %1043, float %1044, float %1045, float %925, float %926, float %927, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1073 = call float @dx.op.dot4.f32(i32 56, float %1049, float %1050, float %1051, float %1052, float %925, float %926, float %927, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1074 = fsub fast float %1070, %1046
  %1075 = fsub fast float %1072, %1046
  %1076 = fsub fast float %1071, %1053
  %1077 = fsub fast float %1073, %1053
  %1078 = call float @dx.op.dot3.f32(i32 55, float %989, float %990, float %991, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 2
  %1081 = call float @dx.op.unary.f32(i32 6, float %1078)  ; FAbs(value)
  %1082 = fadd fast float %1081, %1080
  %1083 = call float @dx.op.unary.f32(i32 7, float %1082)  ; Saturate(value)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1079, 0
  %1085 = fcmp fast ogt float %1083, %1084
  %1086 = and i1 %1069, %1085
  %1087 = and i1 %1040, %1086
  br i1 %1087, label %1101, label %1088

; <label>:1088                                    ; preds = %1342, %1182, %1101, %969
  %1089 = phi float [ %970, %1101 ], [ %970, %1182 ], [ %1352, %1342 ], [ %970, %969 ]
  %1090 = phi float [ %971, %1101 ], [ %971, %1182 ], [ %1353, %1342 ], [ %971, %969 ]
  %1091 = phi float [ %972, %1101 ], [ %972, %1182 ], [ %1354, %1342 ], [ %972, %969 ]
  %1092 = phi float [ %973, %1101 ], [ %973, %1182 ], [ %1316, %1342 ], [ %973, %969 ]
  %1093 = phi float [ %974, %1101 ], [ %974, %1182 ], [ %1317, %1342 ], [ %974, %969 ]
  %1094 = phi float [ %975, %1101 ], [ %975, %1182 ], [ %1311, %1342 ], [ %975, %969 ]
  %1095 = phi float [ %976, %1101 ], [ %976, %1182 ], [ %1308, %1342 ], [ %976, %969 ]
  %1096 = phi float [ %977, %1101 ], [ %977, %1182 ], [ %1305, %1342 ], [ %977, %969 ]
  %1097 = phi float [ %978, %1101 ], [ %978, %1182 ], [ %1300, %1342 ], [ %978, %969 ]
  %1098 = phi float [ %979, %1101 ], [ %979, %1182 ], [ %1301, %1342 ], [ %979, %969 ]
  %1099 = phi float [ %980, %1101 ], [ %980, %1182 ], [ %1302, %1342 ], [ %980, %969 ]
  %1100 = icmp eq i32 %1037, %968
  br i1 %1100, label %1355, label %969

; <label>:1101                                    ; preds = %969
  %1102 = extractvalue %dx.types.ResRet.f32 %1008, 3
  %1103 = extractvalue %dx.types.ResRet.f32 %1008, 1
  %1104 = extractvalue %dx.types.ResRet.f32 %1008, 0
  %1105 = extractvalue %dx.types.ResRet.f32 %998, 1
  %1106 = extractvalue %dx.types.ResRet.f32 %998, 0
  %1107 = extractvalue %dx.types.ResRet.i32 %994, 3
  %1108 = extractvalue %dx.types.ResRet.i32 %994, 2
  %1109 = add i32 %1107, 0
  %1110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1109, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1112 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1110, %dx.types.Handle %1111, float %1046, float %1053, float undef, float undef, i32 0, i32 0, i32 undef, float %1074, float %1076, float undef, float %1075, float %1077, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1113 = extractvalue %dx.types.ResRet.f32 %1112, 0
  %1114 = fmul fast float %1113, %1106
  %1115 = fadd fast float %1114, %1105
  %1116 = call float @dx.op.unary.f32(i32 7, float %1115)  ; Saturate(value)
  %1117 = fmul fast float %1046, %1003
  %1118 = call float @dx.op.tertiary.f32(i32 46, float %1004, float %1053, float %1117)  ; FMad(a,b,c)
  %1119 = fadd fast float %1118, %1104
  %1120 = fmul fast float %1046, %1005
  %1121 = call float @dx.op.tertiary.f32(i32 46, float %1006, float %1053, float %1120)  ; FMad(a,b,c)
  %1122 = fadd fast float %1121, %1103
  %1123 = fmul fast float %1074, %1003
  %1124 = call float @dx.op.tertiary.f32(i32 46, float %1004, float %1076, float %1123)  ; FMad(a,b,c)
  %1125 = fmul fast float %1074, %1005
  %1126 = call float @dx.op.tertiary.f32(i32 46, float %1006, float %1076, float %1125)  ; FMad(a,b,c)
  %1127 = fmul fast float %1075, %1003
  %1128 = call float @dx.op.tertiary.f32(i32 46, float %1004, float %1077, float %1127)  ; FMad(a,b,c)
  %1129 = fmul fast float %1075, %1005
  %1130 = call float @dx.op.tertiary.f32(i32 46, float %1006, float %1077, float %1129)  ; FMad(a,b,c)
  %1131 = add i32 %1108, 0
  %1132 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1131, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1133 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1132, %dx.types.Handle %1111, float %1119, float %1122, float undef, float undef, i32 0, i32 0, i32 undef, float %1124, float %1126, float undef, float %1128, float %1130, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1134 = extractvalue %dx.types.ResRet.f32 %1133, 0
  %1135 = and i32 %1038, 1024
  %1136 = icmp ne i32 %1135, 0
  %1137 = fcmp fast ogt float %1134, 0x3FE0101020000000
  %1138 = uitofp i1 %1137 to float
  %1139 = select i1 %1136, float %1138, float %1134
  %1140 = and i32 %1038, 8192
  %1141 = icmp ne i32 %1140, 0
  %1142 = select i1 %1141, float %1102, float 1.000000e+00
  %1143 = fmul fast float %1046, 2.000000e+00
  %1144 = fadd fast float %1143, -1.000000e+00
  %1145 = call float @dx.op.unary.f32(i32 6, float %1144)  ; FAbs(value)
  %1146 = fmul fast float %1145, %1035
  %1147 = fsub fast float %1146, %1035
  %1148 = call float @dx.op.unary.f32(i32 7, float %1147)  ; Saturate(value)
  %1149 = fmul fast float %1053, 2.000000e+00
  %1150 = fadd fast float %1149, -1.000000e+00
  %1151 = call float @dx.op.unary.f32(i32 6, float %1150)  ; FAbs(value)
  %1152 = fmul fast float %1151, %1036
  %1153 = fsub fast float %1152, %1036
  %1154 = call float @dx.op.unary.f32(i32 7, float %1153)  ; Saturate(value)
  %1155 = fmul fast float %1065, %999
  %1156 = fsub fast float %1155, %999
  %1157 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  %1158 = fmul fast float %1116, %1142
  %1159 = fmul fast float %1158, %1113
  %1160 = fmul fast float %1159, %1148
  %1161 = fmul fast float %1160, %1139
  %1162 = fmul fast float %1161, %1154
  %1163 = fmul fast float %1162, %1157
  %1164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1165 = extractvalue %dx.types.CBufRet.f32 %1164, 1
  %1166 = extractvalue %dx.types.CBufRet.f32 %1164, 0
  %1167 = fsub fast float %1083, %1166
  %1168 = fmul fast float %1167, %1165
  %1169 = call float @dx.op.unary.f32(i32 7, float %1168)  ; Saturate(value)
  %1170 = fmul fast float %1163, %1000
  %1171 = fadd fast float %1163, %1000
  %1172 = fmul fast float %1171, %1009
  %1173 = fsub fast float %1172, %1009
  %1174 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  %1175 = and i32 %1038, 128
  %1176 = icmp ne i32 %1175, 0
  %1177 = select i1 %1176, float %1174, float %1170
  %1178 = fmul fast float %1177, %1169
  %1179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1180 = extractvalue %dx.types.CBufRet.f32 %1179, 0
  %1181 = fcmp fast ugt float %1178, %1180
  br i1 %1181, label %1182, label %1088

; <label>:1182                                    ; preds = %1101
  br i1 %1141, label %1088, label %1183

; <label>:1183                                    ; preds = %1182
  %1184 = and i32 %1038, 4
  %1185 = and i32 %1038, 8
  %1186 = add i32 %995, 0
  %1187 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1186, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1189 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1187, %dx.types.Handle %1188, float %1119, float %1122, float undef, float undef, i32 0, i32 0, i32 undef, float %1124, float %1126, float undef, float %1128, float %1130, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 0
  %1191 = extractvalue %dx.types.ResRet.f32 %1189, 1
  %1192 = extractvalue %dx.types.ResRet.f32 %1189, 2
  %1193 = extractvalue %dx.types.ResRet.f32 %1189, 3
  %1194 = bitcast float %1021 to i32
  %1195 = and i32 %1194, 255
  %1196 = uitofp i32 %1195 to float
  %1197 = lshr i32 %1194, 8
  %1198 = and i32 %1197, 255
  %1199 = uitofp i32 %1198 to float
  %1200 = fmul fast float %1193, %1196
  %1201 = fadd fast float %1200, %1199
  %1202 = fmul fast float %1201, 0x3F70101000000000
  %1203 = add i32 %996, 0
  %1204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1203, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1205 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1204, %dx.types.Handle %1188, float %1119, float %1122, float undef, float undef, i32 0, i32 0, i32 undef, float %1124, float %1126, float undef, float %1128, float %1130, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = extractvalue %dx.types.ResRet.f32 %1205, 1
  %1208 = extractvalue %dx.types.ResRet.f32 %1205, 2
  %1209 = extractvalue %dx.types.ResRet.f32 %1205, 3
  %1210 = bitcast float %1015 to i32
  %1211 = and i32 %1210, 255
  %1212 = uitofp i32 %1211 to float
  %1213 = lshr i32 %1210, 8
  %1214 = and i32 %1213, 255
  %1215 = uitofp i32 %1214 to float
  %1216 = lshr i32 %1210, 16
  %1217 = and i32 %1216, 255
  %1218 = uitofp i32 %1217 to float
  %1219 = fmul fast float %1218, 0x3F70101000000000
  %1220 = fmul fast float %1206, %1212
  %1221 = fadd fast float %1220, %1215
  %1222 = fmul fast float %1221, 0x3F70101000000000
  %1223 = fadd fast float %1207, -5.000000e-01
  %1224 = fadd fast float %1209, -5.000000e-01
  %1225 = fmul fast float %1223, %1219
  %1226 = fmul fast float %1224, %1219
  %1227 = fadd fast float %1225, 5.000000e-01
  %1228 = fadd fast float %1226, 5.000000e-01
  %1229 = fmul fast float %1190, %1024
  %1230 = fmul fast float %1191, %1025
  %1231 = fmul fast float %1192, %1026
  %1232 = fmul fast float %1227, 2.000000e+00
  %1233 = fadd fast float %1232, -1.000000e+00
  %1234 = fmul fast float %1228, 2.000000e+00
  %1235 = fadd fast float %1234, -1.000000e+00
  %1236 = fadd fast float %1233, %1235
  %1237 = fmul fast float %1236, 5.000000e-01
  %1238 = fsub fast float %1233, %1235
  %1239 = fmul fast float %1238, 5.000000e-01
  %1240 = call float @dx.op.unary.f32(i32 6, float %1237)  ; FAbs(value)
  %1241 = fsub fast float 1.000000e+00, %1240
  %1242 = call float @dx.op.unary.f32(i32 6, float %1239)  ; FAbs(value)
  %1243 = fsub fast float %1241, %1242
  %1244 = call float @dx.op.dot3.f32(i32 55, float %1237, float %1239, float %1243, float %1237, float %1239, float %1243)  ; Dot3(ax,ay,az,bx,by,bz)
  %1245 = call float @dx.op.unary.f32(i32 25, float %1244)  ; Rsqrt(value)
  %1246 = fmul fast float %1237, %1245
  %1247 = fmul fast float %1239, %1245
  %1248 = fmul fast float %1245, %1243
  %1249 = fmul fast float %1248, %989
  %1250 = fmul fast float %1248, %990
  %1251 = fmul fast float %1248, %991
  %1252 = fmul fast float %1246, %1012
  %1253 = fmul fast float %1246, %1013
  %1254 = fmul fast float %1246, %1014
  %1255 = fadd fast float %1252, %1249
  %1256 = fadd fast float %1253, %1250
  %1257 = fadd fast float %1254, %1251
  %1258 = fmul fast float %1247, %1018
  %1259 = fmul fast float %1247, %1019
  %1260 = fmul fast float %1247, %1020
  %1261 = fadd fast float %1255, %1258
  %1262 = fadd fast float %1256, %1259
  %1263 = fadd fast float %1257, %1260
  %1264 = call float @dx.op.dot3.f32(i32 55, float %1261, float %1262, float %1263, float %1261, float %1262, float %1263)  ; Dot3(ax,ay,az,bx,by,bz)
  %1265 = call float @dx.op.unary.f32(i32 25, float %1264)  ; Rsqrt(value)
  %1266 = fmul fast float %1261, %1265
  %1267 = fmul fast float %1262, %1265
  %1268 = fmul fast float %1263, %1265
  %1269 = fcmp fast ogt float %1078, %1084
  %1270 = fsub fast float -0.000000e+00, %1266
  %1271 = fsub fast float -0.000000e+00, %1267
  %1272 = fsub fast float -0.000000e+00, %1268
  %1273 = select i1 %1269, float %1266, float %1270
  %1274 = select i1 %1269, float %1267, float %1271
  %1275 = select i1 %1269, float %1268, float %1272
  %1276 = fmul fast float %1273, %895
  %1277 = call float @dx.op.tertiary.f32(i32 46, float %1274, float %896, float %1276)  ; FMad(a,b,c)
  %1278 = call float @dx.op.tertiary.f32(i32 46, float %1275, float %898, float %1277)  ; FMad(a,b,c)
  %1279 = fmul fast float %1273, %891
  %1280 = call float @dx.op.tertiary.f32(i32 46, float %1274, float %901, float %1279)  ; FMad(a,b,c)
  %1281 = call float @dx.op.tertiary.f32(i32 46, float %1275, float %902, float %1280)  ; FMad(a,b,c)
  %1282 = icmp ne i32 %1185, 0
  %1283 = select i1 %1282, float 1.000000e+00, float 0.000000e+00
  %1284 = fmul fast float %1178, %1283
  %1285 = and i32 %1038, 1
  %1286 = icmp ne i32 %1285, 0
  %1287 = fadd fast float %1278, %973
  %1288 = fadd fast float %1281, %974
  %1289 = select i1 %1286, float %1287, float %1278
  %1290 = select i1 %1286, float %1288, float %1281
  %1291 = icmp ne i32 %1184, 0
  %1292 = select i1 %1291, float 1.000000e+00, float 0.000000e+00
  %1293 = fmul fast float %1178, %1292
  %1294 = fsub fast float %1229, %978
  %1295 = fsub fast float %1230, %979
  %1296 = fsub fast float %1231, %980
  %1297 = fmul fast float %1294, %1293
  %1298 = fmul fast float %1295, %1293
  %1299 = fmul fast float %1296, %1293
  %1300 = fadd fast float %1297, %978
  %1301 = fadd fast float %1298, %979
  %1302 = fadd fast float %1299, %980
  %1303 = fsub fast float %1202, %977
  %1304 = fmul fast float %1303, %1293
  %1305 = fadd fast float %1304, %977
  %1306 = fsub fast float %1222, %976
  %1307 = fmul fast float %1306, %1284
  %1308 = fadd fast float %1307, %976
  %1309 = fsub fast float %1208, %975
  %1310 = fmul fast float %1309, %1284
  %1311 = fadd fast float %1310, %975
  %1312 = fsub fast float %1289, %973
  %1313 = fsub fast float %1290, %974
  %1314 = fmul fast float %1312, %1284
  %1315 = fmul fast float %1313, %1284
  %1316 = fadd fast float %1314, %973
  %1317 = fadd fast float %1315, %974
  %1318 = and i32 %1038, 16
  %1319 = icmp eq i32 %1318, 0
  br i1 %1319, label %1342, label %1320

; <label>:1320                                    ; preds = %1183
  %1321 = bitcast float %1032 to i32
  %1322 = add i32 %1029, 0
  %1323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1322, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1324 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1323, %dx.types.Handle %1188, float %1119, float %1122, float undef, float undef, i32 0, i32 0, i32 undef, float %1124, float %1126, float undef, float %1128, float %1130, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1325 = extractvalue %dx.types.ResRet.f32 %1324, 0
  %1326 = extractvalue %dx.types.ResRet.f32 %1324, 1
  %1327 = extractvalue %dx.types.ResRet.f32 %1324, 2
  %1328 = and i32 %1321, 65535
  %1329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1328)  ; LegacyF16ToF32(value)
  %1330 = fmul fast float %1325, %1024
  %1331 = fmul fast float %1326, %1025
  %1332 = fmul fast float %1327, %1026
  %1333 = and i32 %1038, 16384
  %1334 = icmp ne i32 %1333, 0
  %1335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1335, 0
  %1337 = select i1 %1334, float %1336, float 1.000000e+00
  %1338 = fmul fast float %1337, %1329
  %1339 = fmul fast float %1330, %1338
  %1340 = fmul fast float %1331, %1338
  %1341 = fmul fast float %1332, %1338
  br label %1342

; <label>:1342                                    ; preds = %1320, %1183
  %1343 = phi float [ %1339, %1320 ], [ 0.000000e+00, %1183 ]
  %1344 = phi float [ %1340, %1320 ], [ 0.000000e+00, %1183 ]
  %1345 = phi float [ %1341, %1320 ], [ 0.000000e+00, %1183 ]
  %1346 = fsub fast float %1343, %970
  %1347 = fsub fast float %1344, %971
  %1348 = fsub fast float %1345, %972
  %1349 = fmul fast float %1346, %1178
  %1350 = fmul fast float %1347, %1178
  %1351 = fmul fast float %1348, %1178
  %1352 = fadd fast float %1349, %970
  %1353 = fadd fast float %1350, %971
  %1354 = fadd fast float %1351, %972
  br label %1088

; <label>:1355                                    ; preds = %1088
  br label %1356

; <label>:1356                                    ; preds = %1355, %863
  %1357 = phi float [ 0.000000e+00, %863 ], [ %1089, %1355 ]
  %1358 = phi float [ 0.000000e+00, %863 ], [ %1090, %1355 ]
  %1359 = phi float [ 0.000000e+00, %863 ], [ %1091, %1355 ]
  %1360 = phi float [ %865, %863 ], [ %1092, %1355 ]
  %1361 = phi float [ %866, %863 ], [ %1093, %1355 ]
  %1362 = phi float [ %912, %863 ], [ %1094, %1355 ]
  %1363 = phi float [ %915, %863 ], [ %1095, %1355 ]
  %1364 = phi float [ %910, %863 ], [ %1096, %1355 ]
  %1365 = phi float [ %904, %863 ], [ %1097, %1355 ]
  %1366 = phi float [ %906, %863 ], [ %1098, %1355 ]
  %1367 = phi float [ %908, %863 ], [ %1099, %1355 ]
  %1368 = call float @dx.op.dot2.f32(i32 54, float %1360, float %1361, float %1360, float %1361)  ; Dot2(ax,ay,bx,by)
  %1369 = fmul fast float %1368, 0x3FE3333340000000
  %1370 = fsub fast float 1.000000e+00, %1369
  %1371 = call float @dx.op.dot3.f32(i32 55, float %1360, float %1361, float %1370, float %1360, float %1361, float %1370)  ; Dot3(ax,ay,az,bx,by,bz)
  %1372 = call float @dx.op.unary.f32(i32 25, float %1371)  ; Rsqrt(value)
  %1373 = fmul fast float %1372, %1360
  %1374 = fmul fast float %1372, %1361
  %1375 = fmul fast float %1370, %1372
  %1376 = fmul fast float %1375, %97
  %1377 = fmul fast float %1375, %98
  %1378 = fmul fast float %1375, %99
  %1379 = fmul fast float %1373, %895
  %1380 = fmul fast float %1373, %896
  %1381 = fmul fast float %1373, %898
  %1382 = fadd fast float %1376, %1379
  %1383 = fadd fast float %1377, %1380
  %1384 = fadd fast float %1378, %1381
  %1385 = fmul fast float %1374, %891
  %1386 = fmul fast float %1374, %901
  %1387 = fmul fast float %1374, %902
  %1388 = fadd fast float %1382, %1385
  %1389 = fadd fast float %1383, %1386
  %1390 = fadd fast float %1384, %1387
  %1391 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float %1388, float %1389, float %1390)  ; Dot3(ax,ay,az,bx,by,bz)
  %1392 = call float @dx.op.unary.f32(i32 25, float %1391)  ; Rsqrt(value)
  %1393 = fmul fast float %1388, %1392
  %1394 = fmul fast float %1389, %1392
  %1395 = fmul fast float %1390, %1392
  %1396 = fadd fast float %1364, 0xBFB99999A0000000
  %1397 = call float @dx.op.unary.f32(i32 7, float %1396)  ; Saturate(value)
  %1398 = fmul fast float %1397, 0x3FF1C71C80000000
  %1399 = call float @dx.op.binary.f32(i32 36, float %1364, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1400 = fsub fast float 1.000000e+00, %1398
  %1401 = call float @dx.op.unary.f32(i32 7, float %1400)  ; Saturate(value)
  %1402 = fmul fast float %1401, %1365
  %1403 = fmul fast float %1401, %1366
  %1404 = fmul fast float %1401, %1367
  %1405 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  %1406 = call float @dx.op.unary.f32(i32 7, float %1403)  ; Saturate(value)
  %1407 = call float @dx.op.unary.f32(i32 7, float %1404)  ; Saturate(value)
  %1408 = fmul fast float %1398, %1365
  %1409 = fmul fast float %1398, %1366
  %1410 = fmul fast float %1398, %1367
  %1411 = fadd fast float %1408, %1399
  %1412 = fadd fast float %1409, %1399
  %1413 = fadd fast float %1410, %1399
  %1414 = call float @dx.op.unary.f32(i32 7, float %1411)  ; Saturate(value)
  %1415 = call float @dx.op.unary.f32(i32 7, float %1412)  ; Saturate(value)
  %1416 = call float @dx.op.unary.f32(i32 7, float %1413)  ; Saturate(value)
  %1417 = fmul fast float %1415, 0x401CF23780000000
  %1418 = fadd fast float %1417, 0x3FF32641C0000000
  %1419 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %1420 = call float @dx.op.unary.f32(i32 25, float %1419)  ; Rsqrt(value)
  %1421 = fmul fast float %1420, %133
  %1422 = fmul fast float %1420, %134
  %1423 = fmul fast float %1420, %135
  %1424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1425 = extractvalue %dx.types.CBufRet.f32 %1424, 0
  %1426 = fdiv fast float 1.000000e+00, %1418
  %1427 = select i1 %95, float %1426, float %1418
  %1428 = fadd fast float %1427, -1.000000e+00
  %1429 = fadd fast float %1427, 1.000000e+00
  %1430 = fdiv fast float %1428, %1429
  %1431 = fmul fast float %1430, %1430
  %1432 = call float @dx.op.dot3.f32(i32 55, float %1421, float %1422, float %1423, float %1393, float %1394, float %1395)  ; Dot3(ax,ay,az,bx,by,bz)
  %1433 = select i1 %95, float 0.000000e+00, float %1425
  %1434 = fadd fast float %1432, %1433
  %1435 = call float @dx.op.binary.f32(i32 35, float %1434, float -1.000000e+00)  ; FMax(a,b)
  %1436 = call float @dx.op.binary.f32(i32 36, float %1435, float 1.000000e+00)  ; FMin(a,b)
  %1437 = fmul fast float %1427, %1427
  %1438 = fmul fast float %1436, %1436
  %1439 = fsub fast float 1.000000e+00, %1438
  %1440 = fmul fast float %1437, %1439
  %1441 = fsub fast float 1.000000e+00, %1440
  %1442 = fcmp fast olt float %1427, 1.000000e+00
  %1443 = select i1 %1442, float %1438, float %1441
  %1444 = fcmp fast ogt float %1441, 0.000000e+00
  %1445 = fsub fast float 1.000000e+00, %1431
  %1446 = call float @dx.op.unary.f32(i32 24, float %1443)  ; Sqrt(value)
  %1447 = fsub fast float 1.000000e+00, %1446
  %1448 = call float @dx.op.unary.f32(i32 23, float %1447)  ; Log(value)
  %1449 = fmul fast float %1448, 5.000000e+00
  %1450 = call float @dx.op.unary.f32(i32 21, float %1449)  ; Exp(value)
  %1451 = fmul fast float %1450, %1445
  %1452 = fadd fast float %1451, %1431
  %1453 = select i1 %1444, float %1452, float 1.000000e+00
  %1454 = lshr i32 %864, 24
  %1455 = uitofp i32 %1454 to float
  %1456 = fmul fast float %1455, 0x3F70101020000000
  %1457 = call float @dx.op.unary.f32(i32 7, float %1456)  ; Saturate(value)
  %1458 = fmul fast float %133, %133
  %1459 = fmul fast float %134, %134
  %1460 = fadd fast float %1459, %1458
  %1461 = fmul fast float %135, %135
  %1462 = fadd fast float %1460, %1461
  %1463 = call float @dx.op.unary.f32(i32 24, float %1462)  ; Sqrt(value)
  %1464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %1465 = extractvalue %dx.types.CBufRet.f32 %1464, 0
  %1466 = fmul fast float %1465, %1463
  %1467 = extractvalue %dx.types.CBufRet.f32 %1464, 1
  %1468 = fadd fast float %1466, %1467
  %1469 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  %1470 = fmul fast float %1457, 2.550000e+02
  %1471 = fmul fast float %1470, %1469
  %1472 = fptoui float %1471 to i32
  %1473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1474 = extractvalue %dx.types.CBufRet.f32 %1473, 3
  %1475 = fmul fast float %1474, %1363
  %1476 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  %1477 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1478 = fmul fast float %63, 6.553500e+04
  %1479 = call float @dx.op.unary.f32(i32 26, float %1478)  ; Round_ne(value)
  %1480 = fptosi float %1479 to i32
  %1481 = call i32 @dx.op.binary.i32(i32 37, i32 %1480, i32 0)  ; IMax(a,b)
  %1482 = call i32 @dx.op.binary.i32(i32 38, i32 %1481, i32 65535)  ; IMin(a,b)
  %1483 = fmul fast float %64, 6.553500e+04
  %1484 = call float @dx.op.unary.f32(i32 26, float %1483)  ; Round_ne(value)
  %1485 = fptosi float %1484 to i32
  %1486 = call i32 @dx.op.binary.i32(i32 37, i32 %1485, i32 0)  ; IMax(a,b)
  %1487 = call i32 @dx.op.binary.i32(i32 38, i32 %1486, i32 65535)  ; IMin(a,b)
  %1488 = shl i32 %1487, 16
  %1489 = or i32 %1488, %1482
  %1490 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1491 = fsub fast float 1.000000e+00, %1490
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = and i32 %1493, 255
  %1495 = uitofp i32 %1494 to float
  %1496 = lshr i32 %1493, 8
  %1497 = and i32 %1496, 255
  %1498 = uitofp i32 %1497 to float
  %1499 = fmul fast float %1498, %1491
  %1500 = fadd fast float %1499, %1495
  %1501 = fmul fast float %1500, 0x3F70101020000000
  %1502 = call float @dx.op.unary.f32(i32 7, float %1501)  ; Saturate(value)
  %1503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1504 = extractvalue %dx.types.CBufRet.f32 %1503, 0
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1507 = extractvalue %dx.types.CBufRet.i32 %1506, 3
  %1508 = and i32 %1507, 3
  %1509 = icmp ne i32 %1508, 0
  %1510 = and i32 %1507, 4
  %1511 = icmp ne i32 %1510, 0
  %1512 = and i1 %1509, %1511
  br i1 %1512, label %1513, label %1524

; <label>:1513                                    ; preds = %1356
  %1514 = extractvalue %dx.types.CBufRet.f32 %1505, 3
  %1515 = fmul fast float %1514, %79
  %1516 = extractvalue %dx.types.CBufRet.f32 %1505, 2
  %1517 = fmul fast float %1516, %78
  %1518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %51, float %1517, float %1515, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1519 = extractvalue %dx.types.ResRet.f32 %1518, 0
  %1520 = fsub fast float 1.000000e+00, %1519
  %1521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1522 = extractvalue %dx.types.CBufRet.f32 %1521, 0
  %1523 = fcmp fast olt float %1520, %1522
  br label %1527

; <label>:1524                                    ; preds = %1356
  %1525 = icmp eq i32 %1510, 0
  %1526 = and i1 %1509, %1525
  br label %1527

; <label>:1527                                    ; preds = %1524, %1513
  %1528 = phi i1 [ %1523, %1513 ], [ %1526, %1524 ]
  %1529 = fsub fast float -0.000000e+00, %135
  %1530 = fsub fast float -0.000000e+00, %1421
  %1531 = fsub fast float -0.000000e+00, %1422
  %1532 = fsub fast float -0.000000e+00, %1423
  %1533 = select i1 %1528, float 0.000000e+00, float %1416
  %1534 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float %1530, float %1531, float %1532)  ; Dot3(ax,ay,az,bx,by,bz)
  %1535 = call float @dx.op.unary.f32(i32 7, float %1534)  ; Saturate(value)
  %1536 = fmul fast float %1432, 2.000000e+00
  %1537 = fmul fast float %1536, %1393
  %1538 = fmul fast float %1536, %1394
  %1539 = fmul fast float %1536, %1395
  %1540 = fsub fast float %1421, %1537
  %1541 = fsub fast float %1422, %1538
  %1542 = fsub fast float %1423, %1539
  %1543 = call float @dx.op.binary.f32(i32 36, float %1477, float 1.000000e+00)  ; FMin(a,b)
  %1544 = fsub fast float 1.000000e+00, %1477
  %1545 = bitcast float %1544 to i32
  %1546 = sub nsw i32 2129859010, %1545
  %1547 = bitcast i32 %1546 to float
  %1548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1549 = extractvalue %dx.types.CBufRet.f32 %1548, 0
  %1550 = extractvalue %dx.types.CBufRet.f32 %1548, 1
  %1551 = extractvalue %dx.types.CBufRet.f32 %1548, 2
  %1552 = fadd fast float %1549, %133
  %1553 = fadd fast float %1550, %134
  %1554 = fadd fast float %1551, %135
  %1555 = fmul fast float %1393, 3.200000e+01
  %1556 = fmul fast float %1394, 3.200000e+01
  %1557 = fadd fast float %1552, %1555
  %1558 = fadd fast float %1553, %1556
  %1559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1560 = extractvalue %dx.types.CBufRet.f32 %1559, 0
  %1561 = extractvalue %dx.types.CBufRet.f32 %1559, 1
  %1562 = fsub fast float %1557, %1560
  %1563 = fsub fast float %1558, %1561
  %1564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1565 = extractvalue %dx.types.CBufRet.f32 %1564, 0
  %1566 = extractvalue %dx.types.CBufRet.f32 %1564, 1
  %1567 = fmul fast float %1562, %1565
  %1568 = fmul fast float %1563, %1566
  %1569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.f32 %1569, 0
  %1571 = fmul fast float %1567, %1570
  %1572 = extractvalue %dx.types.CBufRet.f32 %1569, 1
  %1573 = fadd fast float %1571, %1572
  %1574 = extractvalue %dx.types.CBufRet.f32 %1569, 2
  %1575 = fmul fast float %1574, %1568
  %1576 = extractvalue %dx.types.CBufRet.f32 %1569, 3
  %1577 = fadd fast float %1575, %1576
  %1578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %51, float %1573, float %1577, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1579 = extractvalue %dx.types.ResRet.f32 %1578, 0
  %1580 = extractvalue %dx.types.ResRet.f32 %1578, 1
  %1581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1582 = extractvalue %dx.types.CBufRet.f32 %1581, 1
  %1583 = extractvalue %dx.types.CBufRet.f32 %1581, 0
  %1584 = fsub fast float %1582, %1583
  %1585 = fmul fast float %1584, %1579
  %1586 = fadd fast float %1585, %1583
  %1587 = extractvalue %dx.types.CBufRet.f32 %1581, 3
  %1588 = extractvalue %dx.types.CBufRet.f32 %1581, 2
  %1589 = fsub fast float %1587, %1588
  %1590 = fmul fast float %1589, %1580
  %1591 = fadd fast float %1590, %1588
  %1592 = fsub fast float %1554, %1586
  %1593 = fsub fast float %1591, %1586
  %1594 = fdiv fast float %1592, %1593
  %1595 = call float @dx.op.unary.f32(i32 7, float %1594)  ; Saturate(value)
  %1596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1597 = extractvalue %dx.types.CBufRet.f32 %1596, 0
  %1598 = fmul fast float %1597, %1595
  %1599 = extractvalue %dx.types.CBufRet.f32 %1596, 1
  %1600 = fadd fast float %1598, %1599
  %1601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %51, float %1573, float %1577, float %1600, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1602 = extractvalue %dx.types.ResRet.f32 %1601, 0
  %1603 = extractvalue %dx.types.ResRet.f32 %1601, 1
  %1604 = extractvalue %dx.types.ResRet.f32 %1601, 2
  %1605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1606 = extractvalue %dx.types.CBufRet.f32 %1605, 0
  %1607 = extractvalue %dx.types.CBufRet.f32 %1605, 1
  %1608 = extractvalue %dx.types.CBufRet.f32 %1605, 2
  %1609 = fmul fast float %1606, %1602
  %1610 = fmul fast float %1607, %1603
  %1611 = fmul fast float %1608, %1604
  %1612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1613 = extractvalue %dx.types.CBufRet.f32 %1612, 0
  %1614 = extractvalue %dx.types.CBufRet.f32 %1612, 1
  %1615 = extractvalue %dx.types.CBufRet.f32 %1612, 2
  %1616 = fadd fast float %1609, %1613
  %1617 = fadd fast float %1610, %1614
  %1618 = fadd fast float %1611, %1615
  %1619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1620 = extractvalue %dx.types.CBufRet.f32 %1619, 0
  %1621 = fmul fast float %1620, %1567
  %1622 = extractvalue %dx.types.CBufRet.f32 %1619, 1
  %1623 = fadd fast float %1621, %1622
  %1624 = extractvalue %dx.types.CBufRet.f32 %1619, 2
  %1625 = fmul fast float %1624, %1568
  %1626 = extractvalue %dx.types.CBufRet.f32 %1619, 3
  %1627 = fadd fast float %1625, %1626
  %1628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1629 = extractvalue %dx.types.CBufRet.f32 %1628, 0
  %1630 = extractvalue %dx.types.CBufRet.f32 %1628, 1
  %1631 = extractvalue %dx.types.CBufRet.f32 %1628, 2
  %1632 = extractvalue %dx.types.CBufRet.f32 %1628, 3
  %1633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1634 = extractvalue %dx.types.CBufRet.f32 %1633, 0
  %1635 = extractvalue %dx.types.CBufRet.f32 %1633, 1
  %1636 = extractvalue %dx.types.CBufRet.f32 %1633, 2
  %1637 = extractvalue %dx.types.CBufRet.f32 %1633, 3
  %1638 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %1623, float %1627, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1639 = extractvalue %dx.types.ResRet.f32 %1638, 0
  %1640 = extractvalue %dx.types.ResRet.f32 %1638, 1
  %1641 = extractvalue %dx.types.ResRet.f32 %1638, 2
  %1642 = extractvalue %dx.types.ResRet.f32 %1638, 3
  %1643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %1623, float %1627, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1644 = extractvalue %dx.types.ResRet.f32 %1643, 0
  %1645 = extractvalue %dx.types.ResRet.f32 %1643, 1
  %1646 = extractvalue %dx.types.ResRet.f32 %1643, 2
  %1647 = extractvalue %dx.types.ResRet.f32 %1643, 3
  %1648 = fmul fast float %1639, %1616
  %1649 = fmul fast float %1644, %1616
  %1650 = fmul fast float %1646, %1616
  %1651 = fmul fast float %1642, %1616
  %1652 = fadd fast float %1648, %1629
  %1653 = fadd fast float %1649, %1630
  %1654 = fadd fast float %1650, %1631
  %1655 = fadd fast float %1651, %1632
  %1656 = fmul fast float %1640, %1616
  %1657 = fmul fast float %1645, %1616
  %1658 = fadd fast float %1656, %1634
  %1659 = fadd fast float %1657, %1635
  %1660 = fmul fast float %1641, %1616
  %1661 = fmul fast float %1647, %1616
  %1662 = fadd fast float %1660, %1636
  %1663 = fadd fast float %1661, %1637
  %1664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %1623, float %1627, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1665 = extractvalue %dx.types.ResRet.f32 %1664, 0
  %1666 = extractvalue %dx.types.ResRet.f32 %1664, 1
  %1667 = extractvalue %dx.types.ResRet.f32 %1664, 2
  %1668 = extractvalue %dx.types.ResRet.f32 %1664, 3
  %1669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %1623, float %1627, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1670 = extractvalue %dx.types.ResRet.f32 %1669, 0
  %1671 = extractvalue %dx.types.ResRet.f32 %1669, 1
  %1672 = extractvalue %dx.types.ResRet.f32 %1669, 2
  %1673 = extractvalue %dx.types.ResRet.f32 %1669, 3
  %1674 = fmul fast float %1665, %1617
  %1675 = fmul fast float %1670, %1617
  %1676 = fmul fast float %1672, %1617
  %1677 = fmul fast float %1668, %1617
  %1678 = fadd fast float %1652, %1674
  %1679 = fadd fast float %1653, %1675
  %1680 = fadd fast float %1654, %1676
  %1681 = fadd fast float %1655, %1677
  %1682 = fmul fast float %1666, %1617
  %1683 = fmul fast float %1671, %1617
  %1684 = fadd fast float %1658, %1682
  %1685 = fadd fast float %1659, %1683
  %1686 = fmul fast float %1667, %1617
  %1687 = fmul fast float %1673, %1617
  %1688 = fadd fast float %1662, %1686
  %1689 = fadd fast float %1663, %1687
  %1690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %1623, float %1627, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1691 = extractvalue %dx.types.ResRet.f32 %1690, 0
  %1692 = extractvalue %dx.types.ResRet.f32 %1690, 1
  %1693 = extractvalue %dx.types.ResRet.f32 %1690, 2
  %1694 = extractvalue %dx.types.ResRet.f32 %1690, 3
  %1695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %1623, float %1627, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1696 = extractvalue %dx.types.ResRet.f32 %1695, 0
  %1697 = extractvalue %dx.types.ResRet.f32 %1695, 1
  %1698 = extractvalue %dx.types.ResRet.f32 %1695, 2
  %1699 = extractvalue %dx.types.ResRet.f32 %1695, 3
  %1700 = fmul fast float %1691, %1618
  %1701 = fmul fast float %1696, %1618
  %1702 = fmul fast float %1698, %1618
  %1703 = fmul fast float %1694, %1618
  %1704 = fadd fast float %1678, %1700
  %1705 = fadd fast float %1679, %1701
  %1706 = fadd fast float %1680, %1702
  %1707 = fadd fast float %1681, %1703
  %1708 = fmul fast float %1692, %1618
  %1709 = fmul fast float %1697, %1618
  %1710 = fadd fast float %1684, %1708
  %1711 = fadd fast float %1685, %1709
  %1712 = fmul fast float %1693, %1618
  %1713 = fmul fast float %1699, %1618
  %1714 = fadd fast float %1688, %1712
  %1715 = fadd fast float %1689, %1713
  %1716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1717 = extractvalue %dx.types.CBufRet.f32 %1716, 0
  %1718 = fsub fast float %1552, %1717
  %1719 = fsub fast float %1560, %1552
  %1720 = call float @dx.op.binary.f32(i32 35, float %1719, float %1718)  ; FMax(a,b)
  %1721 = extractvalue %dx.types.CBufRet.f32 %1716, 1
  %1722 = fsub fast float %1553, %1721
  %1723 = fsub fast float %1561, %1553
  %1724 = call float @dx.op.binary.f32(i32 35, float %1723, float %1722)  ; FMax(a,b)
  %1725 = call float @dx.op.binary.f32(i32 35, float %1720, float %1724)  ; FMax(a,b)
  %1726 = extractvalue %dx.types.CBufRet.f32 %1564, 3
  %1727 = fmul fast float %1726, %1725
  %1728 = call float @dx.op.unary.f32(i32 7, float %1727)  ; Saturate(value)
  %1729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1730 = extractvalue %dx.types.CBufRet.f32 %1729, 0
  %1731 = extractvalue %dx.types.CBufRet.f32 %1729, 1
  %1732 = extractvalue %dx.types.CBufRet.f32 %1729, 2
  %1733 = extractvalue %dx.types.CBufRet.f32 %1729, 3
  %1734 = fsub fast float %1730, %1704
  %1735 = fsub fast float %1731, %1705
  %1736 = fsub fast float %1732, %1706
  %1737 = fsub fast float %1733, %1707
  %1738 = fmul fast float %1734, %1728
  %1739 = fmul fast float %1735, %1728
  %1740 = fmul fast float %1736, %1728
  %1741 = fmul fast float %1737, %1728
  %1742 = fadd fast float %1738, %1704
  %1743 = fadd fast float %1739, %1705
  %1744 = fadd fast float %1740, %1706
  %1745 = fadd fast float %1741, %1707
  %1746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1747 = extractvalue %dx.types.CBufRet.f32 %1746, 0
  %1748 = extractvalue %dx.types.CBufRet.f32 %1746, 1
  %1749 = fsub fast float %1747, %1710
  %1750 = fsub fast float %1748, %1711
  %1751 = fmul fast float %1749, %1728
  %1752 = fmul fast float %1750, %1728
  %1753 = fadd fast float %1751, %1710
  %1754 = fadd fast float %1752, %1711
  %1755 = extractvalue %dx.types.CBufRet.f32 %1746, 2
  %1756 = extractvalue %dx.types.CBufRet.f32 %1746, 3
  %1757 = fsub fast float %1755, %1714
  %1758 = fsub fast float %1756, %1715
  %1759 = fmul fast float %1757, %1728
  %1760 = fmul fast float %1758, %1728
  %1761 = fadd fast float %1759, %1714
  %1762 = fadd fast float %1760, %1715
  %1763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1764 = extractvalue %dx.types.CBufRet.f32 %1763, 0
  %1765 = fmul fast float %1764, %1742
  %1766 = fmul fast float %1764, %1743
  %1767 = fmul fast float %1764, %1744
  %1768 = fmul fast float %1764, %1745
  %1769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1770 = extractvalue %dx.types.CBufRet.f32 %1769, 0
  %1771 = fmul fast float %1770, %1753
  %1772 = fmul fast float %1770, %1754
  %1773 = fadd fast float %1771, %1765
  %1774 = fadd fast float %1772, %1767
  %1775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1776 = extractvalue %dx.types.CBufRet.f32 %1775, 0
  %1777 = fmul fast float %1776, %1761
  %1778 = fmul fast float %1776, %1762
  %1779 = fadd fast float %1773, %1777
  %1780 = fadd fast float %1774, %1778
  %1781 = extractvalue %dx.types.CBufRet.f32 %1763, 1
  %1782 = fmul fast float %1781, %1742
  %1783 = fmul fast float %1781, %1743
  %1784 = fmul fast float %1781, %1744
  %1785 = fmul fast float %1781, %1745
  %1786 = extractvalue %dx.types.CBufRet.f32 %1769, 1
  %1787 = fmul fast float %1786, %1753
  %1788 = fmul fast float %1786, %1754
  %1789 = fadd fast float %1787, %1782
  %1790 = fadd fast float %1788, %1784
  %1791 = extractvalue %dx.types.CBufRet.f32 %1775, 1
  %1792 = fmul fast float %1791, %1761
  %1793 = fmul fast float %1791, %1762
  %1794 = fadd fast float %1789, %1792
  %1795 = fadd fast float %1790, %1793
  %1796 = extractvalue %dx.types.CBufRet.f32 %1763, 2
  %1797 = fmul fast float %1796, %1742
  %1798 = fmul fast float %1796, %1743
  %1799 = fmul fast float %1796, %1744
  %1800 = fmul fast float %1796, %1745
  %1801 = extractvalue %dx.types.CBufRet.f32 %1769, 2
  %1802 = fmul fast float %1801, %1753
  %1803 = fmul fast float %1801, %1754
  %1804 = fadd fast float %1802, %1797
  %1805 = fadd fast float %1803, %1799
  %1806 = extractvalue %dx.types.CBufRet.f32 %1775, 2
  %1807 = fmul fast float %1806, %1761
  %1808 = fmul fast float %1806, %1762
  %1809 = fadd fast float %1804, %1807
  %1810 = fadd fast float %1805, %1808
  %1811 = fmul fast float %1798, %1798
  %1812 = fmul fast float %1810, %1810
  %1813 = fmul fast float %1800, %1800
  %1814 = fadd fast float %1813, %1811
  %1815 = fadd fast float %1814, %1812
  %1816 = call float @dx.op.unary.f32(i32 24, float %1815)  ; Sqrt(value)
  %1817 = fcmp fast ugt float %1816, 0.000000e+00
  br i1 %1817, label %1818, label %1833

; <label>:1818                                    ; preds = %1527
  %1819 = fsub fast float -0.000000e+00, %1800
  %1820 = fdiv fast float %1819, %1816
  %1821 = fsub fast float -0.000000e+00, %1798
  %1822 = fdiv fast float %1821, %1816
  %1823 = fdiv fast float %1810, %1816
  %1824 = fmul fast float %1809, 0x3FE279A760000000
  %1825 = fmul fast float %1822, %1798
  %1826 = fmul fast float %1823, %1810
  %1827 = fmul fast float %1820, %1800
  %1828 = fadd fast float %1825, %1827
  %1829 = fsub fast float %1828, %1826
  %1830 = call float @dx.op.unary.f32(i32 6, float %1829)  ; FAbs(value)
  %1831 = fadd fast float %1830, 0x3DDB7CDFE0000000
  %1832 = fdiv fast float %1824, %1831
  br label %1833

; <label>:1833                                    ; preds = %1818, %1527
  %1834 = phi float [ %1832, %1818 ], [ 1.000000e+00, %1527 ]
  %1835 = fmul fast float %1783, %1783
  %1836 = fmul fast float %1795, %1795
  %1837 = fmul fast float %1785, %1785
  %1838 = fadd fast float %1837, %1835
  %1839 = fadd fast float %1838, %1836
  %1840 = call float @dx.op.unary.f32(i32 24, float %1839)  ; Sqrt(value)
  %1841 = fcmp fast ugt float %1840, 0.000000e+00
  br i1 %1841, label %1842, label %1857

; <label>:1842                                    ; preds = %1833
  %1843 = fsub fast float -0.000000e+00, %1785
  %1844 = fdiv fast float %1843, %1840
  %1845 = fsub fast float -0.000000e+00, %1783
  %1846 = fdiv fast float %1845, %1840
  %1847 = fdiv fast float %1795, %1840
  %1848 = fmul fast float %1794, 0x3FE279A760000000
  %1849 = fmul fast float %1846, %1783
  %1850 = fmul fast float %1847, %1795
  %1851 = fmul fast float %1844, %1785
  %1852 = fadd fast float %1849, %1851
  %1853 = fsub fast float %1852, %1850
  %1854 = call float @dx.op.unary.f32(i32 6, float %1853)  ; FAbs(value)
  %1855 = fadd fast float %1854, 0x3DDB7CDFE0000000
  %1856 = fdiv fast float %1848, %1855
  br label %1857

; <label>:1857                                    ; preds = %1842, %1833
  %1858 = phi float [ %1856, %1842 ], [ 1.000000e+00, %1833 ]
  %1859 = call float @dx.op.binary.f32(i32 36, float %1858, float %1834)  ; FMin(a,b)
  %1860 = fmul fast float %1766, %1766
  %1861 = fmul fast float %1780, %1780
  %1862 = fmul fast float %1768, %1768
  %1863 = fadd fast float %1862, %1860
  %1864 = fadd fast float %1863, %1861
  %1865 = call float @dx.op.unary.f32(i32 24, float %1864)  ; Sqrt(value)
  %1866 = fcmp fast ugt float %1865, 0.000000e+00
  br i1 %1866, label %1867, label %1882

; <label>:1867                                    ; preds = %1857
  %1868 = fsub fast float -0.000000e+00, %1768
  %1869 = fdiv fast float %1868, %1865
  %1870 = fsub fast float -0.000000e+00, %1766
  %1871 = fdiv fast float %1870, %1865
  %1872 = fdiv fast float %1780, %1865
  %1873 = fmul fast float %1779, 0x3FE279A760000000
  %1874 = fmul fast float %1871, %1766
  %1875 = fmul fast float %1872, %1780
  %1876 = fmul fast float %1869, %1768
  %1877 = fadd fast float %1874, %1876
  %1878 = fsub fast float %1877, %1875
  %1879 = call float @dx.op.unary.f32(i32 6, float %1878)  ; FAbs(value)
  %1880 = fadd fast float %1879, 0x3DDB7CDFE0000000
  %1881 = fdiv fast float %1873, %1880
  br label %1882

; <label>:1882                                    ; preds = %1867, %1857
  %1883 = phi float [ %1881, %1867 ], [ 1.000000e+00, %1857 ]
  %1884 = call float @dx.op.binary.f32(i32 36, float %1883, float %1859)  ; FMin(a,b)
  %1885 = call float @dx.op.unary.f32(i32 7, float %1884)  ; Saturate(value)
  %1886 = fcmp fast olt float %1885, 1.000000e+00
  br i1 %1886, label %1887, label %1897

; <label>:1887                                    ; preds = %1882
  %1888 = fmul fast float %1885, %1766
  %1889 = fmul fast float %1885, %1780
  %1890 = fmul fast float %1885, %1768
  %1891 = fmul fast float %1885, %1783
  %1892 = fmul fast float %1885, %1795
  %1893 = fmul fast float %1885, %1785
  %1894 = fmul fast float %1885, %1798
  %1895 = fmul fast float %1885, %1810
  %1896 = fmul fast float %1885, %1800
  br label %1897

; <label>:1897                                    ; preds = %1887, %1882
  %1898 = phi float [ %1894, %1887 ], [ %1798, %1882 ]
  %1899 = phi float [ %1895, %1887 ], [ %1810, %1882 ]
  %1900 = phi float [ %1896, %1887 ], [ %1800, %1882 ]
  %1901 = phi float [ %1891, %1887 ], [ %1783, %1882 ]
  %1902 = phi float [ %1892, %1887 ], [ %1795, %1882 ]
  %1903 = phi float [ %1893, %1887 ], [ %1785, %1882 ]
  %1904 = phi float [ %1888, %1887 ], [ %1766, %1882 ]
  %1905 = phi float [ %1889, %1887 ], [ %1780, %1882 ]
  %1906 = phi float [ %1890, %1887 ], [ %1768, %1882 ]
  %1907 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1779)  ; FMax(a,b)
  %1908 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1794)  ; FMax(a,b)
  %1909 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1809)  ; FMax(a,b)
  %1910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.f32 %1910, 0
  %1912 = fcmp fast ogt float %1911, 0.000000e+00
  %1913 = fcmp fast oge float %1567, 0.000000e+00
  %1914 = and i1 %1913, %1912
  %1915 = fcmp fast ole float %1567, 1.000000e+00
  %1916 = and i1 %1915, %1914
  %1917 = fcmp fast oge float %1568, 0.000000e+00
  %1918 = and i1 %1917, %1916
  %1919 = fcmp fast ole float %1568, 1.000000e+00
  %1920 = and i1 %1919, %1918
  br i1 %1920, label %1921, label %2061, !dx.controlflow.hints !101

; <label>:1921                                    ; preds = %1897
  %1922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1923 = extractvalue %dx.types.CBufRet.f32 %1922, 2
  %1924 = extractvalue %dx.types.CBufRet.f32 %1922, 3
  %1925 = fmul fast float %1923, %1567
  %1926 = fmul fast float %1924, %1568
  %1927 = call float @dx.op.unary.f32(i32 27, float %1925)  ; Round_ni(value)
  %1928 = call float @dx.op.unary.f32(i32 27, float %1926)  ; Round_ni(value)
  %1929 = fptosi float %1927 to i32
  %1930 = fptosi float %1928 to i32
  %1931 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %32, i32 0, i32 %1929, i32 %1930, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1932 = extractvalue %dx.types.ResRet.i32 %1931, 0
  %1933 = and i32 %1932, 65535
  %1934 = lshr i32 %1932, 16
  %1935 = icmp eq i32 %1933, 65535
  br i1 %1935, label %1972, label %1936

; <label>:1936                                    ; preds = %1921
  %1937 = extractvalue %dx.types.CBufRet.f32 %1910, 1
  %1938 = extractvalue %dx.types.CBufRet.f32 %1922, 0
  %1939 = extractvalue %dx.types.CBufRet.f32 %1922, 1
  %1940 = fmul fast float %1938, %1567
  %1941 = fmul fast float %1939, %1568
  %1942 = fmul fast float %1940, 1.250000e-01
  %1943 = fmul fast float %1941, 1.250000e-01
  %1944 = call float @dx.op.unary.f32(i32 27, float %1942)  ; Round_ni(value)
  %1945 = call float @dx.op.unary.f32(i32 27, float %1943)  ; Round_ni(value)
  %1946 = fmul fast float %1944, 8.000000e+00
  %1947 = fmul fast float %1945, 8.000000e+00
  %1948 = and i32 %1932, 255
  %1949 = lshr i32 %1932, 8
  %1950 = and i32 %1949, 255
  %1951 = mul nuw nsw i32 %1948, 9
  %1952 = uitofp i32 %1951 to float
  %1953 = mul nuw nsw i32 %1950, 9
  %1954 = uitofp i32 %1953 to float
  %1955 = fadd fast float %1952, 5.000000e-01
  %1956 = fadd fast float %1955, %1940
  %1957 = fsub fast float %1956, %1946
  %1958 = fadd fast float %1954, 5.000000e-01
  %1959 = fadd fast float %1958, %1941
  %1960 = fsub fast float %1959, %1947
  %1961 = fdiv fast float %1957, %1911
  %1962 = fdiv fast float %1960, %1937
  %1963 = fmul fast float %1595, 4.375000e-01
  %1964 = fadd fast float %1963, 3.125000e-02
  %1965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %51, float %1961, float %1962, float %1964, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1966 = extractvalue %dx.types.ResRet.f32 %1965, 0
  %1967 = extractvalue %dx.types.ResRet.f32 %1965, 1
  %1968 = extractvalue %dx.types.ResRet.f32 %1965, 2
  %1969 = fadd fast float %1966, %1907
  %1970 = fadd fast float %1967, %1908
  %1971 = fadd fast float %1968, %1909
  br label %1972

; <label>:1972                                    ; preds = %1936, %1921
  %1973 = phi float [ %1971, %1936 ], [ %1909, %1921 ]
  %1974 = phi float [ %1970, %1936 ], [ %1908, %1921 ]
  %1975 = phi float [ %1969, %1936 ], [ %1907, %1921 ]
  %1976 = icmp eq i32 %1934, 65535
  br i1 %1976, label %2061, label %1977

; <label>:1977                                    ; preds = %1972
  %1978 = extractvalue %dx.types.CBufRet.f32 %1910, 1
  %1979 = extractvalue %dx.types.CBufRet.f32 %1922, 0
  %1980 = extractvalue %dx.types.CBufRet.f32 %1922, 1
  %1981 = fmul fast float %1979, %1567
  %1982 = fmul fast float %1980, %1568
  %1983 = fmul fast float %1981, 1.250000e-01
  %1984 = fmul fast float %1982, 1.250000e-01
  %1985 = call float @dx.op.unary.f32(i32 27, float %1983)  ; Round_ni(value)
  %1986 = call float @dx.op.unary.f32(i32 27, float %1984)  ; Round_ni(value)
  %1987 = fmul fast float %1985, 8.000000e+00
  %1988 = fmul fast float %1986, 8.000000e+00
  %1989 = fsub fast float %1981, %1987
  %1990 = fsub fast float %1982, %1988
  %1991 = fadd fast float %1989, 5.000000e-01
  %1992 = fadd fast float %1990, 5.000000e-01
  %1993 = and i32 %1934, 255
  %1994 = lshr i32 %1932, 24
  %1995 = mul nuw nsw i32 %1993, 9
  %1996 = uitofp i32 %1995 to float
  %1997 = mul nuw nsw i32 %1994, 9
  %1998 = uitofp i32 %1997 to float
  %1999 = fadd fast float %1991, %1996
  %2000 = fadd fast float %1992, %1998
  %2001 = fdiv fast float %1999, %1911
  %2002 = fdiv fast float %2000, %1978
  %2003 = fmul fast float %1595, 4.375000e-01
  %2004 = fadd fast float %2003, 3.125000e-02
  %2005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %51, float %2001, float %2002, float %2004, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2006 = extractvalue %dx.types.ResRet.f32 %2005, 0
  %2007 = extractvalue %dx.types.ResRet.f32 %2005, 1
  %2008 = extractvalue %dx.types.ResRet.f32 %2005, 2
  %2009 = fadd fast float %2003, 5.312500e-01
  %2010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %51, float %2001, float %2002, float %2009, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2011 = extractvalue %dx.types.ResRet.f32 %2010, 0
  %2012 = extractvalue %dx.types.ResRet.f32 %2010, 1
  %2013 = extractvalue %dx.types.ResRet.f32 %2010, 2
  %2014 = fmul fast float %2011, 2.000000e+00
  %2015 = fmul fast float %2012, 2.000000e+00
  %2016 = fmul fast float %2013, 2.000000e+00
  %2017 = fadd fast float %2014, -1.000000e+00
  %2018 = fadd fast float %2015, -1.000000e+00
  %2019 = fadd fast float %2016, -1.000000e+00
  %2020 = fmul fast float %2017, %2017
  %2021 = fmul fast float %2018, %2018
  %2022 = fadd fast float %2020, %2021
  %2023 = fmul fast float %2019, %2019
  %2024 = fadd fast float %2022, %2023
  %2025 = call float @dx.op.unary.f32(i32 24, float %2024)  ; Sqrt(value)
  %2026 = fcmp fast ogt float %2025, 0.000000e+00
  br i1 %2026, label %2027, label %2031

; <label>:2027                                    ; preds = %1977
  %2028 = fdiv fast float %2017, %2025
  %2029 = fdiv fast float %2018, %2025
  %2030 = fdiv fast float %2019, %2025
  br label %2031

; <label>:2031                                    ; preds = %2027, %1977
  %2032 = phi float [ %2028, %2027 ], [ 0.000000e+00, %1977 ]
  %2033 = phi float [ %2029, %2027 ], [ 0.000000e+00, %1977 ]
  %2034 = phi float [ %2030, %2027 ], [ 0.000000e+00, %1977 ]
  %2035 = fmul fast float %133, %133
  %2036 = fmul fast float %134, %134
  %2037 = fadd fast float %2035, %2036
  %2038 = call float @dx.op.unary.f32(i32 24, float %2037)  ; Sqrt(value)
  %2039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2040 = extractvalue %dx.types.CBufRet.f32 %2039, 0
  %2041 = extractvalue %dx.types.CBufRet.f32 %2039, 1
  %2042 = fsub fast float %2038, %2040
  %2043 = fdiv fast float %2042, %2041
  %2044 = call float @dx.op.unary.f32(i32 7, float %2043)  ; Saturate(value)
  %2045 = fmul fast float %2044, 2.000000e+00
  %2046 = fsub fast float 3.000000e+00, %2045
  %2047 = fmul fast float %2044, %2044
  %2048 = fmul fast float %2047, %2046
  %2049 = call float @dx.op.dot3.f32(i32 55, float %2032, float %2033, float %2034, float %1393, float %1394, float %1395)  ; Dot3(ax,ay,az,bx,by,bz)
  %2050 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2049)  ; FMax(a,b)
  %2051 = fmul fast float %2050, 0x400C5BF8A0000000
  %2052 = fmul fast float %2048, %2006
  %2053 = fmul fast float %2052, %2051
  %2054 = fadd fast float %2053, %1975
  %2055 = fmul fast float %2048, %2007
  %2056 = fmul fast float %2055, %2051
  %2057 = fadd fast float %2056, %1974
  %2058 = fmul fast float %2048, %2008
  %2059 = fmul fast float %2058, %2051
  %2060 = fadd fast float %2059, %1973
  br label %2061

; <label>:2061                                    ; preds = %2031, %1972, %1897
  %2062 = phi float [ %2060, %2031 ], [ %1973, %1972 ], [ %1909, %1897 ]
  %2063 = phi float [ %2057, %2031 ], [ %1974, %1972 ], [ %1908, %1897 ]
  %2064 = phi float [ %2054, %2031 ], [ %1975, %1972 ], [ %1907, %1897 ]
  %2065 = fcmp fast ogt float %1554, %1591
  %2066 = and i1 %1913, %2065
  %2067 = and i1 %1915, %2066
  %2068 = and i1 %1917, %2067
  %2069 = and i1 %1919, %2068
  br i1 %2069, label %2070, label %2127, !dx.controlflow.hints !102

; <label>:2070                                    ; preds = %2061
  %2071 = fmul fast float %1593, 0x3FC24924A0000000
  %2072 = fsub fast float %1554, %1591
  %2073 = fdiv fast float %2072, %2071
  %2074 = call float @dx.op.unary.f32(i32 7, float %2073)  ; Saturate(value)
  %2075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2076 = extractvalue %dx.types.CBufRet.f32 %2075, 0
  %2077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2078 = extractvalue %dx.types.CBufRet.f32 %2077, 0
  %2079 = extractvalue %dx.types.CBufRet.f32 %2077, 1
  %2080 = extractvalue %dx.types.CBufRet.f32 %2077, 2
  %2081 = fsub fast float %2076, %2064
  %2082 = fsub fast float %2078, %1904
  %2083 = fsub fast float %2079, %1905
  %2084 = fsub fast float %2080, %1906
  %2085 = fmul fast float %2081, %2074
  %2086 = fmul fast float %2082, %2074
  %2087 = fmul fast float %2083, %2074
  %2088 = fmul fast float %2084, %2074
  %2089 = fadd fast float %2085, %2064
  %2090 = fadd fast float %2086, %1904
  %2091 = fadd fast float %2087, %1905
  %2092 = fadd fast float %2088, %1906
  %2093 = extractvalue %dx.types.CBufRet.f32 %2075, 1
  %2094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2095 = extractvalue %dx.types.CBufRet.f32 %2094, 0
  %2096 = extractvalue %dx.types.CBufRet.f32 %2094, 1
  %2097 = extractvalue %dx.types.CBufRet.f32 %2094, 2
  %2098 = fsub fast float %2093, %2063
  %2099 = fsub fast float %2095, %1901
  %2100 = fsub fast float %2096, %1902
  %2101 = fsub fast float %2097, %1903
  %2102 = fmul fast float %2098, %2074
  %2103 = fmul fast float %2099, %2074
  %2104 = fmul fast float %2100, %2074
  %2105 = fmul fast float %2101, %2074
  %2106 = fadd fast float %2102, %2063
  %2107 = fadd fast float %2103, %1901
  %2108 = fadd fast float %2104, %1902
  %2109 = fadd fast float %2105, %1903
  %2110 = extractvalue %dx.types.CBufRet.f32 %2075, 2
  %2111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2112 = extractvalue %dx.types.CBufRet.f32 %2111, 0
  %2113 = extractvalue %dx.types.CBufRet.f32 %2111, 1
  %2114 = extractvalue %dx.types.CBufRet.f32 %2111, 2
  %2115 = fsub fast float %2110, %2062
  %2116 = fsub fast float %2112, %1898
  %2117 = fsub fast float %2113, %1899
  %2118 = fsub fast float %2114, %1900
  %2119 = fmul fast float %2115, %2074
  %2120 = fmul fast float %2116, %2074
  %2121 = fmul fast float %2117, %2074
  %2122 = fmul fast float %2118, %2074
  %2123 = fadd fast float %2119, %2062
  %2124 = fadd fast float %2120, %1898
  %2125 = fadd fast float %2121, %1899
  %2126 = fadd fast float %2122, %1900
  br label %2127

; <label>:2127                                    ; preds = %2070, %2061
  %2128 = phi float [ %2123, %2070 ], [ %2062, %2061 ]
  %2129 = phi float [ %2124, %2070 ], [ %1898, %2061 ]
  %2130 = phi float [ %2125, %2070 ], [ %1899, %2061 ]
  %2131 = phi float [ %2126, %2070 ], [ %1900, %2061 ]
  %2132 = phi float [ %2106, %2070 ], [ %2063, %2061 ]
  %2133 = phi float [ %2107, %2070 ], [ %1901, %2061 ]
  %2134 = phi float [ %2108, %2070 ], [ %1902, %2061 ]
  %2135 = phi float [ %2109, %2070 ], [ %1903, %2061 ]
  %2136 = phi float [ %2089, %2070 ], [ %2064, %2061 ]
  %2137 = phi float [ %2090, %2070 ], [ %1904, %2061 ]
  %2138 = phi float [ %2091, %2070 ], [ %1905, %2061 ]
  %2139 = phi float [ %2092, %2070 ], [ %1906, %2061 ]
  %2140 = extractvalue %dx.types.CBufRet.f32 %1716, 3
  %2141 = fmul fast float %2140, %2136
  %2142 = fmul fast float %2140, %2132
  %2143 = fmul fast float %2140, %2128
  %2144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2145 = extractvalue %dx.types.CBufRet.f32 %2144, 3
  %2146 = fmul fast float %2141, %2145
  %2147 = fmul fast float %2142, %2145
  %2148 = fmul fast float %2143, %2145
  %2149 = fmul fast float %2137, 1.500000e+00
  %2150 = fmul fast float %2149, %2140
  %2151 = fmul fast float %2150, %2145
  %2152 = fmul fast float %2138, 1.500000e+00
  %2153 = fmul fast float %2152, %2140
  %2154 = fmul fast float %2153, %2145
  %2155 = fmul fast float %2139, 1.500000e+00
  %2156 = fmul fast float %2155, %2140
  %2157 = fmul fast float %2156, %2145
  %2158 = fmul fast float %2133, 1.500000e+00
  %2159 = fmul fast float %2158, %2140
  %2160 = fmul fast float %2159, %2145
  %2161 = fmul fast float %2134, 1.500000e+00
  %2162 = fmul fast float %2161, %2140
  %2163 = fmul fast float %2162, %2145
  %2164 = fmul fast float %2135, 1.500000e+00
  %2165 = fmul fast float %2164, %2140
  %2166 = fmul fast float %2165, %2145
  %2167 = fmul fast float %2129, 1.500000e+00
  %2168 = fmul fast float %2167, %2140
  %2169 = fmul fast float %2168, %2145
  %2170 = fmul fast float %2130, 1.500000e+00
  %2171 = fmul fast float %2170, %2140
  %2172 = fmul fast float %2171, %2145
  %2173 = fmul fast float %2131, 1.500000e+00
  %2174 = fmul fast float %2173, %2140
  %2175 = fmul fast float %2174, %2145
  %2176 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2146)  ; FMax(a,b)
  %2177 = call float @dx.op.dot3.f32(i32 55, float %2151, float %2154, float %2157, float %2151, float %2154, float %2157)  ; Dot3(ax,ay,az,bx,by,bz)
  %2178 = fcmp fast oeq float %2177, 0.000000e+00
  %2179 = fcmp fast oeq float %2176, 0.000000e+00
  %2180 = or i1 %2179, %2178
  br i1 %2180, label %2210, label %2181

; <label>:2181                                    ; preds = %2127
  %2182 = fsub fast float -0.000000e+00, %2157
  %2183 = fsub fast float -0.000000e+00, %2151
  %2184 = call float @dx.op.unary.f32(i32 24, float %2177)  ; Sqrt(value)
  %2185 = fdiv fast float %2184, %2176
  %2186 = fcmp fast ogt float %2185, 0x3FFB6F8900000000
  %2187 = select i1 %2186, float 0x3FFB6F8900000000, float %2185
  %2188 = fmul fast float %2187, 0x3FE8A23460000000
  %2189 = call float @dx.op.unary.f32(i32 7, float %2188)  ; Saturate(value)
  %2190 = call float @dx.op.binary.f32(i32 35, float %2187, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2191 = fmul fast float %2189, %2176
  %2192 = fmul fast float %2190, 0x3FF279A740000000
  %2193 = fadd fast float %2192, -1.000000e+00
  %2194 = call float @dx.op.dot3.f32(i32 55, float %2182, float %2183, float %2154, float %2182, float %2183, float %2154)  ; Dot3(ax,ay,az,bx,by,bz)
  %2195 = call float @dx.op.unary.f32(i32 25, float %2194)  ; Rsqrt(value)
  %2196 = fmul fast float %2195, %2182
  %2197 = fmul fast float %2195, %2183
  %2198 = fmul fast float %2195, %2154
  %2199 = fmul fast float %2193, %2193
  %2200 = fsub fast float 1.000000e+00, %2199
  %2201 = fmul fast float %2190, 0x40005F8BE0000000
  %2202 = fsub fast float 0x400C5BF8A0000000, %2201
  %2203 = fdiv fast float %2191, %2202
  %2204 = fmul fast float %2203, 0x3FEE31C3C0000000
  %2205 = fmul fast float %2204, %2200
  %2206 = fmul fast float %2190, 0x3FDACB7480000000
  %2207 = fadd fast float %2206, 0xBFD7347680000000
  %2208 = fmul fast float %2207, %2203
  %2209 = fmul fast float %2208, %2200
  br label %2210

; <label>:2210                                    ; preds = %2181, %2127
  %2211 = phi float [ %2196, %2181 ], [ 0.000000e+00, %2127 ]
  %2212 = phi float [ %2197, %2181 ], [ 0.000000e+00, %2127 ]
  %2213 = phi float [ %2198, %2181 ], [ 0.000000e+00, %2127 ]
  %2214 = phi float [ %2205, %2181 ], [ 0.000000e+00, %2127 ]
  %2215 = phi float [ %2209, %2181 ], [ 0.000000e+00, %2127 ]
  %2216 = call float @dx.op.dot3.f32(i32 55, float %2211, float %2212, float %2213, float %1393, float %1394, float %1395)  ; Dot3(ax,ay,az,bx,by,bz)
  %2217 = fmul fast float %2216, %2216
  %2218 = fmul fast float %2217, 0x3FEE471020000000
  %2219 = fadd fast float %2218, 0xBFD42F6020000000
  %2220 = fmul fast float %2176, 0x3FD20DD760000000
  %2221 = fmul fast float %2219, %2215
  %2222 = fmul fast float %2214, 0x3FDF454380000000
  %2223 = fmul fast float %2222, %2216
  %2224 = fadd fast float %2223, %2220
  %2225 = fadd fast float %2224, %2221
  %2226 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2147)  ; FMax(a,b)
  %2227 = call float @dx.op.dot3.f32(i32 55, float %2160, float %2163, float %2166, float %2160, float %2163, float %2166)  ; Dot3(ax,ay,az,bx,by,bz)
  %2228 = fcmp fast oeq float %2227, 0.000000e+00
  %2229 = fcmp fast oeq float %2226, 0.000000e+00
  %2230 = or i1 %2229, %2228
  br i1 %2230, label %2260, label %2231

; <label>:2231                                    ; preds = %2210
  %2232 = fsub fast float -0.000000e+00, %2166
  %2233 = fsub fast float -0.000000e+00, %2160
  %2234 = call float @dx.op.unary.f32(i32 24, float %2227)  ; Sqrt(value)
  %2235 = fdiv fast float %2234, %2226
  %2236 = fcmp fast ogt float %2235, 0x3FFB6F8900000000
  %2237 = select i1 %2236, float 0x3FFB6F8900000000, float %2235
  %2238 = fmul fast float %2237, 0x3FE8A23460000000
  %2239 = call float @dx.op.unary.f32(i32 7, float %2238)  ; Saturate(value)
  %2240 = call float @dx.op.binary.f32(i32 35, float %2237, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2241 = fmul fast float %2239, %2226
  %2242 = fmul fast float %2240, 0x3FF279A740000000
  %2243 = fadd fast float %2242, -1.000000e+00
  %2244 = call float @dx.op.dot3.f32(i32 55, float %2232, float %2233, float %2163, float %2232, float %2233, float %2163)  ; Dot3(ax,ay,az,bx,by,bz)
  %2245 = call float @dx.op.unary.f32(i32 25, float %2244)  ; Rsqrt(value)
  %2246 = fmul fast float %2245, %2232
  %2247 = fmul fast float %2245, %2233
  %2248 = fmul fast float %2245, %2163
  %2249 = fmul fast float %2243, %2243
  %2250 = fsub fast float 1.000000e+00, %2249
  %2251 = fmul fast float %2240, 0x40005F8BE0000000
  %2252 = fsub fast float 0x400C5BF8A0000000, %2251
  %2253 = fdiv fast float %2241, %2252
  %2254 = fmul fast float %2253, 0x3FEE31C3C0000000
  %2255 = fmul fast float %2254, %2250
  %2256 = fmul fast float %2240, 0x3FDACB7480000000
  %2257 = fadd fast float %2256, 0xBFD7347680000000
  %2258 = fmul fast float %2257, %2253
  %2259 = fmul fast float %2258, %2250
  br label %2260

; <label>:2260                                    ; preds = %2231, %2210
  %2261 = phi float [ %2246, %2231 ], [ 0.000000e+00, %2210 ]
  %2262 = phi float [ %2247, %2231 ], [ 0.000000e+00, %2210 ]
  %2263 = phi float [ %2248, %2231 ], [ 0.000000e+00, %2210 ]
  %2264 = phi float [ %2255, %2231 ], [ 0.000000e+00, %2210 ]
  %2265 = phi float [ %2259, %2231 ], [ 0.000000e+00, %2210 ]
  %2266 = call float @dx.op.dot3.f32(i32 55, float %2261, float %2262, float %2263, float %1393, float %1394, float %1395)  ; Dot3(ax,ay,az,bx,by,bz)
  %2267 = fmul fast float %2266, %2266
  %2268 = fmul fast float %2267, 0x3FEE471020000000
  %2269 = fadd fast float %2268, 0xBFD42F6020000000
  %2270 = fmul fast float %2226, 0x3FD20DD760000000
  %2271 = fmul fast float %2269, %2265
  %2272 = fmul fast float %2264, 0x3FDF454380000000
  %2273 = fmul fast float %2272, %2266
  %2274 = fadd fast float %2273, %2270
  %2275 = fadd fast float %2274, %2271
  %2276 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2148)  ; FMax(a,b)
  %2277 = call float @dx.op.dot3.f32(i32 55, float %2169, float %2172, float %2175, float %2169, float %2172, float %2175)  ; Dot3(ax,ay,az,bx,by,bz)
  %2278 = fcmp fast oeq float %2277, 0.000000e+00
  %2279 = fcmp fast oeq float %2276, 0.000000e+00
  %2280 = or i1 %2279, %2278
  br i1 %2280, label %2310, label %2281

; <label>:2281                                    ; preds = %2260
  %2282 = fsub fast float -0.000000e+00, %2175
  %2283 = fsub fast float -0.000000e+00, %2169
  %2284 = call float @dx.op.unary.f32(i32 24, float %2277)  ; Sqrt(value)
  %2285 = fdiv fast float %2284, %2276
  %2286 = fcmp fast ogt float %2285, 0x3FFB6F8900000000
  %2287 = select i1 %2286, float 0x3FFB6F8900000000, float %2285
  %2288 = fmul fast float %2287, 0x3FE8A23460000000
  %2289 = call float @dx.op.unary.f32(i32 7, float %2288)  ; Saturate(value)
  %2290 = call float @dx.op.binary.f32(i32 35, float %2287, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2291 = fmul fast float %2289, %2276
  %2292 = fmul fast float %2290, 0x3FF279A740000000
  %2293 = fadd fast float %2292, -1.000000e+00
  %2294 = call float @dx.op.dot3.f32(i32 55, float %2282, float %2283, float %2172, float %2282, float %2283, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %2295 = call float @dx.op.unary.f32(i32 25, float %2294)  ; Rsqrt(value)
  %2296 = fmul fast float %2295, %2282
  %2297 = fmul fast float %2295, %2283
  %2298 = fmul fast float %2295, %2172
  %2299 = fmul fast float %2293, %2293
  %2300 = fsub fast float 1.000000e+00, %2299
  %2301 = fmul fast float %2290, 0x40005F8BE0000000
  %2302 = fsub fast float 0x400C5BF8A0000000, %2301
  %2303 = fdiv fast float %2291, %2302
  %2304 = fmul fast float %2303, 0x3FEE31C3C0000000
  %2305 = fmul fast float %2304, %2300
  %2306 = fmul fast float %2290, 0x3FDACB7480000000
  %2307 = fadd fast float %2306, 0xBFD7347680000000
  %2308 = fmul fast float %2307, %2303
  %2309 = fmul fast float %2308, %2300
  br label %2310

; <label>:2310                                    ; preds = %2281, %2260
  %2311 = phi float [ %2296, %2281 ], [ 0.000000e+00, %2260 ]
  %2312 = phi float [ %2297, %2281 ], [ 0.000000e+00, %2260 ]
  %2313 = phi float [ %2298, %2281 ], [ 0.000000e+00, %2260 ]
  %2314 = phi float [ %2305, %2281 ], [ 0.000000e+00, %2260 ]
  %2315 = phi float [ %2309, %2281 ], [ 0.000000e+00, %2260 ]
  %2316 = call float @dx.op.dot3.f32(i32 55, float %2311, float %2312, float %2313, float %1393, float %1394, float %1395)  ; Dot3(ax,ay,az,bx,by,bz)
  %2317 = fmul fast float %2316, %2316
  %2318 = fmul fast float %2317, 0x3FEE471020000000
  %2319 = fadd fast float %2318, 0xBFD42F6020000000
  %2320 = fmul fast float %2276, 0x3FD20DD760000000
  %2321 = fmul fast float %2319, %2315
  %2322 = fmul fast float %2314, 0x3FDF454380000000
  %2323 = fmul fast float %2322, %2316
  %2324 = fadd fast float %2323, %2320
  %2325 = fadd fast float %2324, %2321
  %2326 = call float @dx.op.binary.f32(i32 35, float %2225, float 0.000000e+00)  ; FMax(a,b)
  %2327 = call float @dx.op.binary.f32(i32 35, float %2275, float 0.000000e+00)  ; FMax(a,b)
  %2328 = call float @dx.op.binary.f32(i32 35, float %2325, float 0.000000e+00)  ; FMax(a,b)
  %2329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2330 = extractvalue %dx.types.CBufRet.f32 %2329, 0
  %2331 = call float @dx.op.binary.f32(i32 36, float %1405, float %2330)  ; FMin(a,b)
  %2332 = fsub fast float 1.000000e+00, %1543
  %2333 = fmul fast float %2331, %2332
  %2334 = fsub fast float 1.000000e+00, %2333
  %2335 = bitcast float %2334 to i32
  %2336 = sub nsw i32 2129859010, %2335
  %2337 = bitcast i32 %2336 to float
  %2338 = call float @dx.op.binary.f32(i32 36, float %1406, float %2330)  ; FMin(a,b)
  %2339 = fmul fast float %2338, %2332
  %2340 = fsub fast float 1.000000e+00, %2339
  %2341 = bitcast float %2340 to i32
  %2342 = sub nsw i32 2129859010, %2341
  %2343 = bitcast i32 %2342 to float
  %2344 = call float @dx.op.binary.f32(i32 36, float %1407, float %2330)  ; FMin(a,b)
  %2345 = fmul fast float %2344, %2332
  %2346 = fsub fast float 1.000000e+00, %2345
  %2347 = bitcast float %2346 to i32
  %2348 = sub nsw i32 2129859010, %2347
  %2349 = bitcast i32 %2348 to float
  %2350 = fmul fast float %2326, %1543
  %2351 = fmul fast float %2350, %2337
  %2352 = fmul fast float %2327, %1543
  %2353 = fmul fast float %2352, %2343
  %2354 = fmul fast float %2328, %1543
  %2355 = fmul fast float %2354, %2349
  %2356 = call float @dx.op.dot3.f32(i32 55, float %2351, float %2353, float %2355, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2357 = select i1 %1528, float 0.000000e+00, float %2351
  %2358 = select i1 %1528, float %2356, float %2353
  %2359 = select i1 %1528, float 0.000000e+00, float %2355
  %2360 = fsub fast float 1.000000e+00, %1414
  %2361 = fsub fast float 1.000000e+00, %1415
  %2362 = fsub fast float 1.000000e+00, %1533
  %2363 = fmul fast float %1453, %2360
  %2364 = fmul fast float %1453, %2361
  %2365 = fmul fast float %2362, %1453
  %2366 = fadd fast float %2363, %1414
  %2367 = fadd fast float %2364, %1415
  %2368 = fadd fast float %2365, %1533
  %2369 = and i32 %869, 65535
  %2370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2369)  ; LegacyF16ToF32(value)
  %2371 = lshr i32 %869, 16
  %2372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2371)  ; LegacyF16ToF32(value)
  %2373 = fcmp fast ogt float %2370, 0.000000e+00
  %2374 = call float @dx.op.unary.f32(i32 6, float %1535)  ; FAbs(value)
  %2375 = select i1 %2373, float %2374, float 0.000000e+00
  %2376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %51, float %2370, float %2375, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2377 = extractvalue %dx.types.ResRet.f32 %2376, 0
  %2378 = extractvalue %dx.types.ResRet.f32 %2376, 1
  %2379 = extractvalue %dx.types.ResRet.f32 %2376, 2
  %2380 = fadd fast float %2377, -5.000000e-01
  %2381 = fadd fast float %2378, -5.000000e-01
  %2382 = fadd fast float %2379, -5.000000e-01
  %2383 = fmul fast float %1414, 4.000000e+00
  %2384 = fmul fast float %2383, %2360
  %2385 = fmul fast float %2384, %2372
  %2386 = fmul fast float %2385, %2380
  %2387 = fmul fast float %1415, 4.000000e+00
  %2388 = fmul fast float %2387, %2361
  %2389 = fmul fast float %2388, %2372
  %2390 = fmul fast float %2389, %2381
  %2391 = fmul fast float %1533, 4.000000e+00
  %2392 = fmul fast float %2391, %2362
  %2393 = fmul fast float %2392, %2372
  %2394 = fmul fast float %2393, %2382
  %2395 = fadd fast float %2366, %2386
  %2396 = fadd fast float %2367, %2390
  %2397 = fadd fast float %2368, %2394
  %2398 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  %2399 = call float @dx.op.unary.f32(i32 7, float %2396)  ; Saturate(value)
  %2400 = call float @dx.op.unary.f32(i32 7, float %2397)  ; Saturate(value)
  %2401 = call float @dx.op.binary.f32(i32 35, float %2399, float %2400)  ; FMax(a,b)
  %2402 = call float @dx.op.binary.f32(i32 35, float %2398, float %2401)  ; FMax(a,b)
  %2403 = fsub fast float 1.000000e+00, %2402
  %2404 = fmul fast float %2403, %2357
  %2405 = fmul fast float %2403, %2358
  %2406 = fmul fast float %2403, %2359
  %2407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2408 = extractvalue %dx.types.CBufRet.f32 %2407, 3
  %2409 = fcmp fast oeq float %2408, 0.000000e+00
  br i1 %2409, label %3730, label %2410

; <label>:2410                                    ; preds = %2310
  %2411 = extractvalue %dx.types.CBufRet.f32 %2407, 0
  %2412 = extractvalue %dx.types.CBufRet.f32 %2407, 1
  %2413 = extractvalue %dx.types.CBufRet.f32 %2407, 2
  %2414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2415 = extractvalue %dx.types.CBufRet.f32 %2414, 0
  %2416 = extractvalue %dx.types.CBufRet.f32 %2414, 1
  %2417 = extractvalue %dx.types.CBufRet.f32 %2414, 2
  %2418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2419 = extractvalue %dx.types.CBufRet.f32 %2418, 0
  %2420 = extractvalue %dx.types.CBufRet.f32 %2418, 1
  %2421 = call float @dx.op.dot3.f32(i32 55, float %2415, float %2416, float %2417, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2422 = select i1 %1528, float %2419, float %2415
  %2423 = select i1 %1528, float %2421, float %2416
  %2424 = select i1 %1528, float %2420, float %2417
  %2425 = fcmp fast olt float %2408, 0.000000e+00
  br i1 %2425, label %3332, label %2426

; <label>:2426                                    ; preds = %2410
  %2427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2428 = extractvalue %dx.types.CBufRet.f32 %2427, 0
  %2429 = extractvalue %dx.types.CBufRet.f32 %2427, 1
  %2430 = extractvalue %dx.types.CBufRet.f32 %2427, 2
  %2431 = extractvalue %dx.types.CBufRet.f32 %2427, 3
  %2432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2433 = extractvalue %dx.types.CBufRet.f32 %2432, 0
  %2434 = extractvalue %dx.types.CBufRet.f32 %2432, 1
  %2435 = extractvalue %dx.types.CBufRet.f32 %2432, 2
  %2436 = extractvalue %dx.types.CBufRet.f32 %2432, 3
  %2437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2438 = extractvalue %dx.types.CBufRet.f32 %2437, 0
  %2439 = extractvalue %dx.types.CBufRet.f32 %2437, 1
  %2440 = extractvalue %dx.types.CBufRet.f32 %2437, 2
  %2441 = extractvalue %dx.types.CBufRet.f32 %2437, 3
  %2442 = fmul fast float %2428, %133
  %2443 = call float @dx.op.tertiary.f32(i32 46, float %134, float %2429, float %2442)  ; FMad(a,b,c)
  %2444 = call float @dx.op.tertiary.f32(i32 46, float %135, float %2430, float %2443)  ; FMad(a,b,c)
  %2445 = fadd fast float %2444, %2431
  %2446 = fmul fast float %2433, %133
  %2447 = call float @dx.op.tertiary.f32(i32 46, float %134, float %2434, float %2446)  ; FMad(a,b,c)
  %2448 = call float @dx.op.tertiary.f32(i32 46, float %135, float %2435, float %2447)  ; FMad(a,b,c)
  %2449 = fadd fast float %2448, %2436
  %2450 = fmul fast float %2438, %133
  %2451 = call float @dx.op.tertiary.f32(i32 46, float %134, float %2439, float %2450)  ; FMad(a,b,c)
  %2452 = call float @dx.op.tertiary.f32(i32 46, float %135, float %2440, float %2451)  ; FMad(a,b,c)
  %2453 = fadd fast float %2452, %2441
  %2454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2455 = extractvalue %dx.types.CBufRet.f32 %2454, 0
  %2456 = extractvalue %dx.types.CBufRet.f32 %2454, 1
  %2457 = extractvalue %dx.types.CBufRet.f32 %2454, 3
  %2458 = fmul fast float %2457, %2445
  %2459 = fmul fast float %2457, %2449
  %2460 = fadd fast float %2458, %2455
  %2461 = fadd fast float %2459, %2456
  %2462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2463 = extractvalue %dx.types.CBufRet.f32 %2462, 0
  %2464 = extractvalue %dx.types.CBufRet.f32 %2462, 1
  %2465 = extractvalue %dx.types.CBufRet.f32 %2462, 3
  %2466 = fmul fast float %2465, %2445
  %2467 = fmul fast float %2465, %2449
  %2468 = fadd fast float %2466, %2463
  %2469 = fadd fast float %2467, %2464
  %2470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2471 = extractvalue %dx.types.CBufRet.f32 %2470, 1
  %2472 = fsub fast float %2471, %2453
  %2473 = extractvalue %dx.types.CBufRet.f32 %2470, 2
  %2474 = fmul fast float %2472, %2473
  %2475 = fsub fast float 1.000000e+00, %2474
  %2476 = call float @dx.op.unary.f32(i32 7, float %2475)  ; Saturate(value)
  %2477 = extractvalue %dx.types.CBufRet.f32 %2462, 2
  %2478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2479 = extractvalue %dx.types.CBufRet.f32 %2478, 2
  %2480 = fadd fast float %2479, %2477
  %2481 = fcmp fast ogt float %2480, 0.000000e+00
  br i1 %2481, label %2482, label %2507

; <label>:2482                                    ; preds = %2426
  %2483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2484 = extractvalue %dx.types.CBufRet.f32 %2483, 0
  %2485 = extractvalue %dx.types.CBufRet.f32 %2483, 1
  %2486 = fsub fast float %2468, %2484
  %2487 = fsub fast float %2469, %2485
  %2488 = fcmp fast olt float %2486, 0.000000e+00
  %2489 = fcmp fast olt float %2487, 0.000000e+00
  %2490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2491 = extractvalue %dx.types.CBufRet.f32 %2490, 0
  %2492 = extractvalue %dx.types.CBufRet.f32 %2490, 1
  %2493 = extractvalue %dx.types.CBufRet.f32 %2490, 2
  %2494 = extractvalue %dx.types.CBufRet.f32 %2490, 3
  %2495 = select i1 %2488, float %2491, float %2493
  %2496 = select i1 %2489, float %2492, float %2494
  %2497 = fmul fast float %2495, %2486
  %2498 = fmul fast float %2496, %2487
  %2499 = call float @dx.op.unary.f32(i32 6, float %2497)  ; FAbs(value)
  %2500 = call float @dx.op.unary.f32(i32 6, float %2498)  ; FAbs(value)
  %2501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2502 = extractvalue %dx.types.CBufRet.f32 %2501, 0
  %2503 = call float @dx.op.binary.f32(i32 35, float %2499, float %2500)  ; FMax(a,b)
  %2504 = fsub fast float %2502, %2503
  %2505 = call float @dx.op.unary.f32(i32 7, float %2504)  ; Saturate(value)
  %2506 = fmul fast float %2505, %2476
  br label %2507

; <label>:2507                                    ; preds = %2482, %2426
  %2508 = phi float [ %2506, %2482 ], [ 0.000000e+00, %2426 ]
  %2509 = extractvalue %dx.types.CBufRet.f32 %2454, 2
  %2510 = extractvalue %dx.types.CBufRet.f32 %2478, 1
  %2511 = fadd fast float %2510, %2509
  %2512 = fcmp fast ogt float %2511, 0.000000e+00
  br i1 %2512, label %2513, label %2538

; <label>:2513                                    ; preds = %2507
  %2514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2515 = extractvalue %dx.types.CBufRet.f32 %2514, 0
  %2516 = extractvalue %dx.types.CBufRet.f32 %2514, 1
  %2517 = fsub fast float %2460, %2515
  %2518 = fsub fast float %2461, %2516
  %2519 = fcmp fast olt float %2517, 0.000000e+00
  %2520 = fcmp fast olt float %2518, 0.000000e+00
  %2521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2522 = extractvalue %dx.types.CBufRet.f32 %2521, 0
  %2523 = extractvalue %dx.types.CBufRet.f32 %2521, 1
  %2524 = extractvalue %dx.types.CBufRet.f32 %2521, 2
  %2525 = extractvalue %dx.types.CBufRet.f32 %2521, 3
  %2526 = select i1 %2519, float %2522, float %2524
  %2527 = select i1 %2520, float %2523, float %2525
  %2528 = fmul fast float %2526, %2517
  %2529 = fmul fast float %2527, %2518
  %2530 = call float @dx.op.unary.f32(i32 6, float %2528)  ; FAbs(value)
  %2531 = call float @dx.op.unary.f32(i32 6, float %2529)  ; FAbs(value)
  %2532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2533 = extractvalue %dx.types.CBufRet.f32 %2532, 0
  %2534 = call float @dx.op.binary.f32(i32 35, float %2530, float %2531)  ; FMax(a,b)
  %2535 = fsub fast float %2533, %2534
  %2536 = call float @dx.op.unary.f32(i32 7, float %2535)  ; Saturate(value)
  %2537 = fmul fast float %2536, %2476
  br label %2538

; <label>:2538                                    ; preds = %2513, %2507
  %2539 = phi float [ %2537, %2513 ], [ 0.000000e+00, %2507 ]
  %2540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2541 = extractvalue %dx.types.CBufRet.f32 %2540, 1
  %2542 = call float @dx.op.unary.f32(i32 7, float %2541)  ; Saturate(value)
  %2543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2544 = extractvalue %dx.types.CBufRet.f32 %2543, 0
  %2545 = extractvalue %dx.types.CBufRet.f32 %2543, 1
  %2546 = fsub fast float %2445, %2544
  %2547 = fsub fast float %2449, %2545
  %2548 = fcmp fast olt float %2546, 0.000000e+00
  %2549 = fcmp fast olt float %2547, 0.000000e+00
  %2550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2551 = extractvalue %dx.types.CBufRet.f32 %2550, 0
  %2552 = extractvalue %dx.types.CBufRet.f32 %2550, 1
  %2553 = extractvalue %dx.types.CBufRet.f32 %2550, 2
  %2554 = extractvalue %dx.types.CBufRet.f32 %2550, 3
  %2555 = select i1 %2548, float %2551, float %2553
  %2556 = select i1 %2549, float %2552, float %2554
  %2557 = fmul fast float %2555, %2546
  %2558 = fmul fast float %2556, %2547
  %2559 = call float @dx.op.unary.f32(i32 6, float %2557)  ; FAbs(value)
  %2560 = call float @dx.op.unary.f32(i32 6, float %2558)  ; FAbs(value)
  %2561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2562 = extractvalue %dx.types.CBufRet.f32 %2561, 0
  %2563 = call float @dx.op.binary.f32(i32 35, float %2559, float %2560)  ; FMax(a,b)
  %2564 = fsub fast float %2562, %2563
  %2565 = call float @dx.op.unary.f32(i32 7, float %2564)  ; Saturate(value)
  %2566 = call float @dx.op.binary.f32(i32 36, float %2565, float %2542)  ; FMin(a,b)
  %2567 = fmul fast float %2566, %2476
  %2568 = fsub fast float %2539, %2567
  %2569 = fsub fast float %2508, %2539
  %2570 = fsub fast float %2569, %2567
  %2571 = call float @dx.op.binary.f32(i32 35, float %2539, float %2508)  ; FMax(a,b)
  %2572 = call float @dx.op.binary.f32(i32 35, float %2567, float %2571)  ; FMax(a,b)
  %2573 = fcmp fast olt float %2572, 1.000000e+00
  br i1 %2573, label %2574, label %3245, !dx.controlflow.hints !103

; <label>:2574                                    ; preds = %2538
  %2575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2576 = extractvalue %dx.types.CBufRet.f32 %2575, 0
  %2577 = fcmp fast une float %2576, 0.000000e+00
  br i1 %2577, label %2578, label %3245, !dx.controlflow.hints !104

; <label>:2578                                    ; preds = %2574
  %2579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2580 = extractvalue %dx.types.CBufRet.f32 %2579, 0
  %2581 = extractvalue %dx.types.CBufRet.f32 %2579, 1
  %2582 = extractvalue %dx.types.CBufRet.f32 %2579, 2
  %2583 = extractvalue %dx.types.CBufRet.f32 %2579, 3
  %2584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2585 = extractvalue %dx.types.CBufRet.f32 %2584, 0
  %2586 = extractvalue %dx.types.CBufRet.f32 %2584, 1
  %2587 = extractvalue %dx.types.CBufRet.f32 %2584, 2
  %2588 = extractvalue %dx.types.CBufRet.f32 %2584, 3
  %2589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2590 = extractvalue %dx.types.CBufRet.f32 %2589, 0
  %2591 = extractvalue %dx.types.CBufRet.f32 %2589, 1
  %2592 = extractvalue %dx.types.CBufRet.f32 %2589, 2
  %2593 = extractvalue %dx.types.CBufRet.f32 %2589, 3
  %2594 = fmul fast float %2580, %133
  %2595 = call float @dx.op.tertiary.f32(i32 46, float %134, float %2581, float %2594)  ; FMad(a,b,c)
  %2596 = call float @dx.op.tertiary.f32(i32 46, float %135, float %2582, float %2595)  ; FMad(a,b,c)
  %2597 = fadd fast float %2596, %2583
  %2598 = fmul fast float %2585, %133
  %2599 = call float @dx.op.tertiary.f32(i32 46, float %134, float %2586, float %2598)  ; FMad(a,b,c)
  %2600 = call float @dx.op.tertiary.f32(i32 46, float %135, float %2587, float %2599)  ; FMad(a,b,c)
  %2601 = fadd fast float %2600, %2588
  %2602 = fmul fast float %2590, %133
  %2603 = call float @dx.op.tertiary.f32(i32 46, float %134, float %2591, float %2602)  ; FMad(a,b,c)
  %2604 = call float @dx.op.tertiary.f32(i32 46, float %135, float %2592, float %2603)  ; FMad(a,b,c)
  %2605 = fadd fast float %2604, %2593
  %2606 = fcmp fast oge float %2597, 1.000000e+00
  %2607 = fcmp fast oge float %2601, 1.000000e+00
  %2608 = or i1 %2606, %2607
  %2609 = fcmp fast olt float %2597, 0.000000e+00
  %2610 = fcmp fast olt float %2601, 0.000000e+00
  %2611 = or i1 %2609, %2610
  %2612 = or i1 %2608, %2611
  br i1 %2612, label %3245, label %2613, !dx.controlflow.hints !105

; <label>:2613                                    ; preds = %2578
  %2614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2615 = extractvalue %dx.types.CBufRet.f32 %2614, 0
  %2616 = extractvalue %dx.types.CBufRet.f32 %2614, 1
  %2617 = extractvalue %dx.types.CBufRet.f32 %2614, 2
  %2618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2619 = extractvalue %dx.types.CBufRet.f32 %2618, 1
  %2620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2621 = extractvalue %dx.types.CBufRet.i32 %2620, 2
  %2622 = uitofp i32 %2621 to float
  %2623 = extractvalue %dx.types.CBufRet.i32 %2620, 3
  %2624 = uitofp i32 %2623 to float
  %2625 = extractvalue %dx.types.CBufRet.f32 %2614, 3
  %2626 = fmul fast float %2625, 2.000000e+00
  %2627 = fsub fast float %2597, %2615
  %2628 = fsub fast float %2601, %2616
  %2629 = fmul fast float %2626, %2627
  %2630 = fmul fast float %2626, %2628
  %2631 = fdiv fast float 1.000000e+00, %2413
  %2632 = fmul fast float %2630, %2631
  %2633 = call float @dx.op.unary.f32(i32 6, float %2632)  ; FAbs(value)
  %2634 = fmul fast float %2617, %135
  %2635 = fmul fast float %2634, %2626
  %2636 = call float @dx.op.unary.f32(i32 6, float %2635)  ; FAbs(value)
  %2637 = call float @dx.op.unary.f32(i32 6, float %2629)  ; FAbs(value)
  %2638 = call float @dx.op.binary.f32(i32 35, float %2636, float %2633)  ; FMax(a,b)
  %2639 = call float @dx.op.binary.f32(i32 35, float %2637, float %2638)  ; FMax(a,b)
  %2640 = fmul fast float %2639, 2.000000e+00
  %2641 = call float @dx.op.unary.f32(i32 23, float %2640)  ; Log(value)
  %2642 = call float @dx.op.binary.f32(i32 35, float %2641, float %2622)  ; FMax(a,b)
  %2643 = call float @dx.op.unary.f32(i32 22, float %2642)  ; Frc(value)
  %2644 = fadd fast float %2643, 0xBFEA666660000000
  %2645 = fmul fast float %2644, 8.000000e+00
  %2646 = call float @dx.op.unary.f32(i32 7, float %2645)  ; Saturate(value)
  %2647 = call float @dx.op.unary.f32(i32 27, float %2642)  ; Round_ni(value)
  %2648 = fadd fast float %2647, %2646
  %2649 = call float @dx.op.binary.f32(i32 36, float %2648, float %2624)  ; FMin(a,b)
  %2650 = call float @dx.op.unary.f32(i32 27, float %2649)  ; Round_ni(value)
  %2651 = fsub fast float -0.000000e+00, %2650
  %2652 = call float @dx.op.unary.f32(i32 21, float %2651)  ; Exp(value)
  %2653 = fmul fast float %2652, %2626
  %2654 = fmul fast float %2653, %2597
  %2655 = fmul fast float %2653, %2601
  %2656 = fmul fast float %2654, 5.000000e-01
  %2657 = fmul fast float %2655, 5.000000e-01
  %2658 = fadd fast float %2656, 5.000000e-01
  %2659 = fadd fast float %2657, 5.000000e-01
  %2660 = fmul fast float %2654, 2.500000e-01
  %2661 = fmul fast float %2655, 2.500000e-01
  %2662 = fadd fast float %2660, 5.000000e-01
  %2663 = fadd fast float %2661, 5.000000e-01
  %2664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = and i32 %2665, 536870911
  %2667 = lshr i32 %2666, 9
  %2668 = uitofp i32 %2667 to float
  %2669 = fmul fast float %2668, %2597
  %2670 = fmul fast float %2668, %2601
  %2671 = call float @dx.op.unary.f32(i32 22, float %2669)  ; Frc(value)
  %2672 = call float @dx.op.unary.f32(i32 22, float %2670)  ; Frc(value)
  %2673 = call float @dx.op.unary.f32(i32 22, float %2646)  ; Frc(value)
  %2674 = fcmp fast une float %2673, 0.000000e+00
  br i1 %2674, label %2675, label %2773, !dx.controlflow.hints !106

; <label>:2675                                    ; preds = %2613
  %2676 = call float @dx.op.unary.f32(i32 21, float %2647)  ; Exp(value)
  %2677 = fmul fast float %2676, 1.953125e-03
  %2678 = fcmp fast olt float %2671, %2677
  %2679 = fcmp fast olt float %2672, %2677
  %2680 = or i1 %2678, %2679
  %2681 = fsub fast float 1.000000e+00, %2677
  %2682 = fcmp fast ogt float %2671, %2681
  %2683 = fcmp fast ogt float %2672, %2681
  %2684 = or i1 %2682, %2683
  %2685 = or i1 %2680, %2684
  br i1 %2685, label %2686, label %2852, !dx.controlflow.hints !107

; <label>:2686                                    ; preds = %2675
  %2687 = fmul fast float %2619, 5.000000e-01
  %2688 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2689 = extractvalue %dx.types.CBufRet.i32 %2688, 0
  %2690 = fmul fast float %2601, 3.530000e+02
  %2691 = uitofp i32 %2666 to float
  %2692 = fmul fast float %2690, %2691
  %2693 = fmul fast float %2597, 6.130000e+02
  %2694 = fadd fast float %2692, %2693
  %2695 = fptoui float %2694 to i32
  %2696 = add i32 %2689, %2695
  %2697 = mul i32 %2696, -63
  %2698 = lshr i32 %2697, 17
  %2699 = xor i32 %2698, %2697
  %2700 = mul i32 %2699, -511
  %2701 = mul i32 %2699, -8176
  %2702 = xor i32 %2700, %2701
  %2703 = mul i32 %2702, -7
  %2704 = mul i32 %2702, -7168
  %2705 = xor i32 %2703, %2704
  %2706 = lshr i32 %2705, 15
  %2707 = xor i32 %2706, %2703
  %2708 = and i32 %2707, 15
  %2709 = mul i32 %2708, 2
  %2710 = add i32 0, %2709
  %2711 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2710
  %2712 = load float, float* %2711, align 4
  %2713 = mul i32 %2708, 2
  %2714 = add i32 1, %2713
  %2715 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2714
  %2716 = load float, float* %2715, align 4
  %2717 = fmul fast float %2601, 2.770000e+02
  %2718 = fmul fast float %2717, %2691
  %2719 = fmul fast float %2597, 5.990000e+02
  %2720 = fadd fast float %2718, %2719
  %2721 = fptoui float %2720 to i32
  %2722 = mul i32 %2721, -63
  %2723 = lshr i32 %2722, 17
  %2724 = xor i32 %2723, %2722
  %2725 = mul i32 %2724, -511
  %2726 = mul i32 %2724, -8176
  %2727 = xor i32 %2725, %2726
  %2728 = mul i32 %2727, -7
  %2729 = mul i32 %2727, -7168
  %2730 = xor i32 %2728, %2729
  %2731 = lshr i32 %2730, 15
  %2732 = xor i32 %2731, %2728
  %2733 = and i32 %2732, 63
  %2734 = mul i32 %2733, 2
  %2735 = add i32 0, %2734
  %2736 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2735
  %2737 = load float, float* %2736, align 4
  %2738 = mul i32 %2733, 2
  %2739 = add i32 1, %2738
  %2740 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2739
  %2741 = load float, float* %2740, align 4
  %2742 = call float @dx.op.dot2.f32(i32 54, float %2712, float %2716, float %2737, float %2741)  ; Dot2(ax,ay,bx,by)
  %2743 = fsub fast float -0.000000e+00, %2737
  %2744 = call float @dx.op.dot2.f32(i32 54, float %2712, float %2716, float %2743, float %2741)  ; Dot2(ax,ay,bx,by)
  %2745 = fmul fast float %2742, %2687
  %2746 = fmul fast float %2744, %2687
  %2747 = fdiv fast float 2.000000e+00, %2653
  %2748 = fmul fast float %2676, 9.765625e-04
  %2749 = fcmp fast olt float %2671, %2748
  %2750 = fcmp fast olt float %2672, %2748
  %2751 = or i1 %2749, %2750
  %2752 = fsub fast float 1.000000e+00, %2748
  %2753 = fcmp fast ogt float %2671, %2752
  %2754 = fcmp fast ogt float %2672, %2752
  %2755 = or i1 %2753, %2754
  %2756 = or i1 %2751, %2755
  %2757 = fmul fast float %2745, 2.000000e+00
  br i1 %2756, label %2758, label %2762

; <label>:2758                                    ; preds = %2686
  %2759 = fmul fast float %2746, 2.000000e+00
  %2760 = fadd fast float %2757, %2658
  %2761 = fadd fast float %2759, %2659
  br label %2762

; <label>:2762                                    ; preds = %2758, %2686
  %2763 = phi float [ %2760, %2758 ], [ %2658, %2686 ]
  %2764 = phi float [ %2761, %2758 ], [ %2659, %2686 ]
  %2765 = phi i32 [ 3, %2758 ], [ 2, %2686 ]
  %2766 = fadd fast float %2745, %2662
  %2767 = fadd fast float %2746, %2663
  %2768 = fmul fast float %2757, %2747
  %2769 = fmul fast float %2747, 2.000000e+00
  %2770 = fmul fast float %2769, %2746
  %2771 = fadd fast float %2768, %2597
  %2772 = fadd fast float %2770, %2601
  br label %2852

; <label>:2773                                    ; preds = %2613
  %2774 = call float @dx.op.unary.f32(i32 21, float %2650)  ; Exp(value)
  %2775 = fmul fast float %2774, 9.765625e-04
  %2776 = fcmp fast olt float %2671, %2775
  %2777 = fcmp fast olt float %2672, %2775
  %2778 = or i1 %2776, %2777
  %2779 = fsub fast float 1.000000e+00, %2775
  %2780 = fcmp fast ogt float %2671, %2779
  %2781 = fcmp fast ogt float %2672, %2779
  %2782 = or i1 %2780, %2781
  %2783 = or i1 %2778, %2782
  br i1 %2783, label %2784, label %2852, !dx.controlflow.hints !108

; <label>:2784                                    ; preds = %2773
  %2785 = fmul fast float %2619, 5.000000e-01
  %2786 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2787 = extractvalue %dx.types.CBufRet.i32 %2786, 0
  %2788 = fmul fast float %2601, 3.530000e+02
  %2789 = uitofp i32 %2666 to float
  %2790 = fmul fast float %2788, %2789
  %2791 = fmul fast float %2597, 6.130000e+02
  %2792 = fadd fast float %2790, %2791
  %2793 = fptoui float %2792 to i32
  %2794 = add i32 %2787, %2793
  %2795 = mul i32 %2794, -63
  %2796 = lshr i32 %2795, 17
  %2797 = xor i32 %2796, %2795
  %2798 = mul i32 %2797, -511
  %2799 = mul i32 %2797, -8176
  %2800 = xor i32 %2798, %2799
  %2801 = mul i32 %2800, -7
  %2802 = mul i32 %2800, -7168
  %2803 = xor i32 %2801, %2802
  %2804 = lshr i32 %2803, 15
  %2805 = xor i32 %2804, %2801
  %2806 = and i32 %2805, 15
  %2807 = mul i32 %2806, 2
  %2808 = add i32 0, %2807
  %2809 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2808
  %2810 = load float, float* %2809, align 4
  %2811 = mul i32 %2806, 2
  %2812 = add i32 1, %2811
  %2813 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2812
  %2814 = load float, float* %2813, align 4
  %2815 = fmul fast float %2601, 2.770000e+02
  %2816 = fmul fast float %2815, %2789
  %2817 = fmul fast float %2597, 5.990000e+02
  %2818 = fadd fast float %2816, %2817
  %2819 = fptoui float %2818 to i32
  %2820 = mul i32 %2819, -63
  %2821 = lshr i32 %2820, 17
  %2822 = xor i32 %2821, %2820
  %2823 = mul i32 %2822, -511
  %2824 = mul i32 %2822, -8176
  %2825 = xor i32 %2823, %2824
  %2826 = mul i32 %2825, -7
  %2827 = mul i32 %2825, -7168
  %2828 = xor i32 %2826, %2827
  %2829 = lshr i32 %2828, 15
  %2830 = xor i32 %2829, %2826
  %2831 = and i32 %2830, 63
  %2832 = mul i32 %2831, 2
  %2833 = add i32 0, %2832
  %2834 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2833
  %2835 = load float, float* %2834, align 4
  %2836 = mul i32 %2831, 2
  %2837 = add i32 1, %2836
  %2838 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2837
  %2839 = load float, float* %2838, align 4
  %2840 = call float @dx.op.dot2.f32(i32 54, float %2810, float %2814, float %2835, float %2839)  ; Dot2(ax,ay,bx,by)
  %2841 = fsub fast float -0.000000e+00, %2835
  %2842 = call float @dx.op.dot2.f32(i32 54, float %2810, float %2814, float %2841, float %2839)  ; Dot2(ax,ay,bx,by)
  %2843 = fmul fast float %2840, %2785
  %2844 = fmul fast float %2842, %2785
  %2845 = fadd fast float %2843, %2658
  %2846 = fadd fast float %2844, %2659
  %2847 = fdiv fast float 2.000000e+00, %2653
  %2848 = fmul fast float %2847, %2843
  %2849 = fmul fast float %2844, %2847
  %2850 = fadd fast float %2848, %2597
  %2851 = fadd fast float %2849, %2601
  br label %2852

; <label>:2852                                    ; preds = %2784, %2773, %2762, %2675
  %2853 = phi float [ %2766, %2762 ], [ %2662, %2675 ], [ %2662, %2784 ], [ %2662, %2773 ]
  %2854 = phi float [ %2767, %2762 ], [ %2663, %2675 ], [ %2663, %2784 ], [ %2663, %2773 ]
  %2855 = phi float [ %2763, %2762 ], [ %2658, %2675 ], [ %2845, %2784 ], [ %2658, %2773 ]
  %2856 = phi float [ %2764, %2762 ], [ %2659, %2675 ], [ %2846, %2784 ], [ %2659, %2773 ]
  %2857 = phi i32 [ %2765, %2762 ], [ 0, %2675 ], [ 1, %2784 ], [ 0, %2773 ]
  %2858 = phi float [ %2771, %2762 ], [ %2597, %2675 ], [ %2850, %2784 ], [ %2597, %2773 ]
  %2859 = phi float [ %2772, %2762 ], [ %2601, %2675 ], [ %2851, %2784 ], [ %2601, %2773 ]
  %2860 = fsub fast float %2624, %2622
  %2861 = fptoui float %2860 to i32
  %2862 = add i32 %2861, 320
  %2863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %2862)  ; CBufferLoadLegacy(handle,regIndex)
  %2864 = extractvalue %dx.types.CBufRet.f32 %2863, 0
  %2865 = extractvalue %dx.types.CBufRet.f32 %2863, 1
  %2866 = fcmp fast une float %2649, %2624
  %2867 = fsub fast float %2858, %2864
  %2868 = fsub fast float %2859, %2865
  %2869 = call float @dx.op.unary.f32(i32 6, float %2867)  ; FAbs(value)
  %2870 = call float @dx.op.unary.f32(i32 6, float %2868)  ; FAbs(value)
  %2871 = fmul fast float %2869, %2653
  %2872 = fmul fast float %2870, %2653
  %2873 = fcmp fast olt float %2871, 1.000000e+00
  %2874 = fcmp fast olt float %2872, 1.000000e+00
  %2875 = and i1 %2873, %2874
  %2876 = or i1 %2866, %2875
  br i1 %2876, label %2877, label %3245, !dx.controlflow.hints !109

; <label>:2877                                    ; preds = %2852
  %2878 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2879 = extractvalue %dx.types.CBufRet.i32 %2878, 2
  %2880 = sitofp i32 %2879 to float
  %2881 = fsub fast float %2649, %2880
  %2882 = call float @dx.op.unary.f32(i32 27, float %2881)  ; Round_ni(value)
  %2883 = call float @dx.op.unary.f32(i32 22, float %2649)  ; Frc(value)
  %2884 = icmp eq i32 %2857, 0
  %2885 = call float @dx.op.unary.f32(i32 22, float %2855)  ; Frc(value)
  %2886 = call float @dx.op.unary.f32(i32 22, float %2856)  ; Frc(value)
  br i1 %2884, label %2957, label %2887, !dx.controlflow.hints !110

; <label>:2887                                    ; preds = %2877
  %2888 = and i32 %2857, 1
  %2889 = icmp eq i32 %2888, 0
  br i1 %2889, label %2903, label %2890, !dx.controlflow.hints !111

; <label>:2890                                    ; preds = %2887
  %2891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2892 = extractvalue %dx.types.CBufRet.f32 %2891, 0
  %2893 = fmul fast float %2885, %2892
  %2894 = fmul fast float %2886, %2892
  %2895 = fptoui float %2893 to i32
  %2896 = fptoui float %2894 to i32
  %2897 = fptoui float %2882 to i32
  %2898 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %2895, i32 %2896, i32 %2897, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2899 = extractvalue %dx.types.ResRet.f32 %2898, 0
  %2900 = extractvalue %dx.types.ResRet.f32 %2898, 1
  %2901 = extractvalue %dx.types.ResRet.f32 %2898, 2
  %2902 = extractvalue %dx.types.ResRet.f32 %2898, 3
  br label %2909

; <label>:2903                                    ; preds = %2887
  %2904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %50, float %2885, float %2886, float %2882, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2905 = extractvalue %dx.types.ResRet.f32 %2904, 0
  %2906 = extractvalue %dx.types.ResRet.f32 %2904, 1
  %2907 = extractvalue %dx.types.ResRet.f32 %2904, 2
  %2908 = extractvalue %dx.types.ResRet.f32 %2904, 3
  br label %2909

; <label>:2909                                    ; preds = %2903, %2890
  %2910 = phi float [ %2899, %2890 ], [ %2905, %2903 ]
  %2911 = phi float [ %2900, %2890 ], [ %2906, %2903 ]
  %2912 = phi float [ %2901, %2890 ], [ %2907, %2903 ]
  %2913 = phi float [ %2902, %2890 ], [ %2908, %2903 ]
  %2914 = fcmp fast ogt float %2883, 0.000000e+00
  br i1 %2914, label %2915, label %2985

; <label>:2915                                    ; preds = %2909
  %2916 = and i32 %2857, 2
  %2917 = icmp eq i32 %2916, 0
  %2918 = fadd fast float %2882, 1.000000e+00
  %2919 = call float @dx.op.unary.f32(i32 22, float %2853)  ; Frc(value)
  %2920 = call float @dx.op.unary.f32(i32 22, float %2854)  ; Frc(value)
  br i1 %2917, label %2934, label %2921, !dx.controlflow.hints !112

; <label>:2921                                    ; preds = %2915
  %2922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2923 = extractvalue %dx.types.CBufRet.f32 %2922, 0
  %2924 = fmul fast float %2919, %2923
  %2925 = fmul fast float %2920, %2923
  %2926 = fptoui float %2924 to i32
  %2927 = fptoui float %2925 to i32
  %2928 = fptoui float %2918 to i32
  %2929 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %2926, i32 %2927, i32 %2928, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2930 = extractvalue %dx.types.ResRet.f32 %2929, 0
  %2931 = extractvalue %dx.types.ResRet.f32 %2929, 1
  %2932 = extractvalue %dx.types.ResRet.f32 %2929, 2
  %2933 = extractvalue %dx.types.ResRet.f32 %2929, 3
  br label %2940

; <label>:2934                                    ; preds = %2915
  %2935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %50, float %2919, float %2920, float %2918, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2936 = extractvalue %dx.types.ResRet.f32 %2935, 0
  %2937 = extractvalue %dx.types.ResRet.f32 %2935, 1
  %2938 = extractvalue %dx.types.ResRet.f32 %2935, 2
  %2939 = extractvalue %dx.types.ResRet.f32 %2935, 3
  br label %2940

; <label>:2940                                    ; preds = %2934, %2921
  %2941 = phi float [ %2930, %2921 ], [ %2936, %2934 ]
  %2942 = phi float [ %2931, %2921 ], [ %2937, %2934 ]
  %2943 = phi float [ %2932, %2921 ], [ %2938, %2934 ]
  %2944 = phi float [ %2933, %2921 ], [ %2939, %2934 ]
  %2945 = fsub fast float %2941, %2910
  %2946 = fsub fast float %2942, %2911
  %2947 = fsub fast float %2943, %2912
  %2948 = fsub fast float %2944, %2913
  %2949 = fmul fast float %2945, %2883
  %2950 = fmul fast float %2946, %2883
  %2951 = fmul fast float %2947, %2883
  %2952 = fmul fast float %2948, %2883
  %2953 = fadd fast float %2949, %2910
  %2954 = fadd fast float %2950, %2911
  %2955 = fadd fast float %2951, %2912
  %2956 = fadd fast float %2952, %2913
  br label %2985

; <label>:2957                                    ; preds = %2877
  %2958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %50, float %2885, float %2886, float %2882, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2959 = extractvalue %dx.types.ResRet.f32 %2958, 0
  %2960 = extractvalue %dx.types.ResRet.f32 %2958, 1
  %2961 = extractvalue %dx.types.ResRet.f32 %2958, 2
  %2962 = extractvalue %dx.types.ResRet.f32 %2958, 3
  %2963 = fcmp fast ogt float %2883, 0.000000e+00
  br i1 %2963, label %2964, label %2985, !dx.controlflow.hints !113

; <label>:2964                                    ; preds = %2957
  %2965 = fadd fast float %2882, 1.000000e+00
  %2966 = call float @dx.op.unary.f32(i32 22, float %2853)  ; Frc(value)
  %2967 = call float @dx.op.unary.f32(i32 22, float %2854)  ; Frc(value)
  %2968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %50, float %2966, float %2967, float %2965, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2969 = extractvalue %dx.types.ResRet.f32 %2968, 0
  %2970 = extractvalue %dx.types.ResRet.f32 %2968, 1
  %2971 = extractvalue %dx.types.ResRet.f32 %2968, 2
  %2972 = extractvalue %dx.types.ResRet.f32 %2968, 3
  %2973 = fsub fast float %2969, %2959
  %2974 = fsub fast float %2970, %2960
  %2975 = fsub fast float %2971, %2961
  %2976 = fsub fast float %2972, %2962
  %2977 = fmul fast float %2973, %2883
  %2978 = fmul fast float %2974, %2883
  %2979 = fmul fast float %2975, %2883
  %2980 = fmul fast float %2976, %2883
  %2981 = fadd fast float %2977, %2959
  %2982 = fadd fast float %2978, %2960
  %2983 = fadd fast float %2979, %2961
  %2984 = fadd fast float %2980, %2962
  br label %2985

; <label>:2985                                    ; preds = %2964, %2957, %2940, %2909
  %2986 = phi float [ %2953, %2940 ], [ %2910, %2909 ], [ %2981, %2964 ], [ %2959, %2957 ]
  %2987 = phi float [ %2954, %2940 ], [ %2911, %2909 ], [ %2982, %2964 ], [ %2960, %2957 ]
  %2988 = phi float [ %2955, %2940 ], [ %2912, %2909 ], [ %2983, %2964 ], [ %2961, %2957 ]
  %2989 = phi float [ %2956, %2940 ], [ %2913, %2909 ], [ %2984, %2964 ], [ %2962, %2957 ]
  %2990 = fadd fast float %2986, -5.000000e-01
  %2991 = fadd fast float %2988, -5.000000e-01
  %2992 = fmul fast float %2990, 0xBFD5555560000000
  %2993 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2991, float %2992)  ; FMad(a,b,c)
  %2994 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2987, float 0.000000e+00)  ; FMad(a,b,c)
  %2995 = fadd fast float %2994, %2989
  %2996 = fmul fast float %2990, -7.500000e-01
  %2997 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2991, float %2996)  ; FMad(a,b,c)
  %2998 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2987, float 0.000000e+00)  ; FMad(a,b,c)
  %2999 = fadd fast float %2998, %2989
  %3000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3001 = extractvalue %dx.types.CBufRet.f32 %3000, 0
  %3002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3003 = extractvalue %dx.types.CBufRet.f32 %3002, 0
  %3004 = extractvalue %dx.types.CBufRet.f32 %3002, 1
  %3005 = extractvalue %dx.types.CBufRet.f32 %3002, 2
  %3006 = extractvalue %dx.types.CBufRet.f32 %3002, 3
  %3007 = fsub fast float %3003, %2993
  %3008 = fsub fast float %3004, %2995
  %3009 = fsub fast float %3005, %2997
  %3010 = fsub fast float %3006, %2999
  %3011 = fmul fast float %3007, %3001
  %3012 = fmul fast float %3008, %3001
  %3013 = fmul fast float %3009, %3001
  %3014 = fmul fast float %3010, %3001
  %3015 = fadd fast float %3011, %2993
  %3016 = fadd fast float %3012, %2995
  %3017 = fadd fast float %3013, %2997
  %3018 = fadd fast float %3014, %2999
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = and i32 %3020, 536870911
  %3022 = uitofp i32 %3021 to float
  %3023 = fmul fast float %3022, %2858
  %3024 = fmul fast float %3022, %2859
  %3025 = fptoui float %3023 to i32
  %3026 = fptoui float %3024 to i32
  %3027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3028 = extractvalue %dx.types.ResRet.i32 %3027, 0
  %3029 = and i32 %3028, 31
  %3030 = lshr i32 %3025, %3029
  %3031 = lshr i32 %3026, %3029
  %3032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3033 = extractvalue %dx.types.ResRet.i32 %3032, 0
  %3034 = and i32 %3033, 31
  %3035 = shl i32 1, %3034
  %3036 = call i32 @dx.op.binary.i32(i32 40, i32 %3035, i32 4)  ; UMin(a,b)
  %3037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3038 = extractvalue %dx.types.ResRet.i32 %3037, 0
  %3039 = extractvalue %dx.types.ResRet.i32 %3037, 1
  %3040 = icmp eq i32 %3036, 0
  br i1 %3040, label %3082, label %3041

; <label>:3041                                    ; preds = %2985
  br label %3042

; <label>:3042                                    ; preds = %3070, %3041
  %3043 = phi i32 [ %3073, %3070 ], [ 0, %3041 ]
  %3044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.i32 %3044, 0
  %3046 = lshr i32 %3045, 16
  %3047 = and i32 %3046, 31
  %3048 = shl i32 %3031, %3047
  %3049 = add i32 %3048, %3030
  %3050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3051 = extractvalue %dx.types.ResRet.i32 %3050, 0
  %3052 = and i32 %3051, 31
  %3053 = shl i32 %3049, %3052
  %3054 = add i32 %3053, %3043
  %3055 = shl i32 %3054, 2
  %3056 = add i32 %3055, 32
  %3057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3056, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.i32 %3057, 0
  %3059 = icmp slt i32 %3058, 0
  %3060 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %3043
  %3061 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 %3043
  %3062 = bitcast float* %3060 to i32*
  %3063 = bitcast float* %3061 to i32*
  br i1 %3059, label %3064, label %3070

; <label>:3064                                    ; preds = %3042
  %3065 = and i32 %3058, 1073741823
  %3066 = add nuw nsw i32 %3065, 20
  %3067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3066, i32 undef)  ; BufferLoad(srv,index,wot)
  %3068 = extractvalue %dx.types.ResRet.i32 %3067, 0
  %3069 = extractvalue %dx.types.ResRet.i32 %3067, 1
  br label %3070

; <label>:3070                                    ; preds = %3064, %3042
  %3071 = phi i32 [ %3068, %3064 ], [ %3038, %3042 ]
  %3072 = phi i32 [ %3069, %3064 ], [ %3039, %3042 ]
  store i32 %3071, i32* %3062, align 4
  store i32 %3072, i32* %3063, align 4
  %3073 = add nuw i32 %3043, 1
  %3074 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3075 = extractvalue %dx.types.CBufRet.i32 %3074, 2
  %3076 = icmp eq i32 %3075, 0
  %3077 = icmp ugt i32 %3058, -1073741825
  %3078 = and i1 %3077, %3076
  %3079 = icmp ult i32 %3073, %3036
  %3080 = and i1 %3078, %3079
  br i1 %3080, label %3042, label %3081

; <label>:3081                                    ; preds = %3070
  br label %3082

; <label>:3082                                    ; preds = %3081, %2985
  %3083 = phi i32 [ 0, %2985 ], [ %3073, %3081 ]
  %3084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3085 = extractvalue %dx.types.CBufRet.f32 %3084, 2
  %3086 = fptoui float %3085 to i32
  %3087 = icmp eq i32 %3086, 0
  br i1 %3087, label %3139, label %3088

; <label>:3088                                    ; preds = %3082
  br label %3089

; <label>:3089                                    ; preds = %3134, %3088
  %3090 = phi i32 [ %3135, %3134 ], [ %3083, %3088 ]
  %3091 = phi i32 [ %3136, %3134 ], [ 0, %3088 ]
  %3092 = lshr i32 %3091, 2
  %3093 = and i32 %3091, 3
  %3094 = add nuw nsw i32 %3092, 83
  %3095 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 %3094)  ; CBufferLoadLegacy(handle,regIndex)
  %3096 = extractvalue %dx.types.CBufRet.i32 %3095, 0
  %3097 = extractvalue %dx.types.CBufRet.i32 %3095, 1
  %3098 = extractvalue %dx.types.CBufRet.i32 %3095, 2
  %3099 = extractvalue %dx.types.CBufRet.i32 %3095, 3
  %3100 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 0
  store i32 %3096, i32* %3100, align 4
  %3101 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 1
  store i32 %3097, i32* %3101, align 4
  %3102 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 2
  store i32 %3098, i32* %3102, align 4
  %3103 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 3
  store i32 %3099, i32* %3103, align 4
  %3104 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 %3093
  %3105 = load i32, i32* %3104, align 4, !tbaa !114, !noalias !116
  %3106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3107 = extractvalue %dx.types.ResRet.i32 %3106, 0
  %3108 = lshr i32 %3107, 16
  %3109 = and i32 %3108, 31
  %3110 = shl i32 %3031, %3109
  %3111 = add i32 %3110, %3030
  %3112 = shl i32 %3111, 2
  %3113 = add i32 %3112, %3105
  %3114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3115 = extractvalue %dx.types.ResRet.i32 %3114, 0
  %3116 = icmp eq i32 %3115, 0
  br i1 %3116, label %3134, label %3117

; <label>:3117                                    ; preds = %3089
  %3118 = icmp slt i32 %3115, 0
  %3119 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %3090
  %3120 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 %3090
  %3121 = bitcast float* %3119 to i32*
  %3122 = bitcast float* %3120 to i32*
  br i1 %3118, label %3123, label %3130

; <label>:3123                                    ; preds = %3117
  %3124 = and i32 %3115, 1073741823
  %3125 = add i32 %3105, 20
  %3126 = add i32 %3125, %3124
  %3127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3126, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = extractvalue %dx.types.ResRet.i32 %3127, 1
  br label %3130

; <label>:3130                                    ; preds = %3123, %3117
  %3131 = phi i32 [ %3128, %3123 ], [ %3038, %3117 ]
  %3132 = phi i32 [ %3129, %3123 ], [ %3039, %3117 ]
  store i32 %3131, i32* %3121, align 4
  store i32 %3132, i32* %3122, align 4
  %3133 = add i32 %3090, 1
  br label %3134

; <label>:3134                                    ; preds = %3130, %3089
  %3135 = phi i32 [ %3090, %3089 ], [ %3133, %3130 ]
  %3136 = add nuw i32 %3091, 1
  %3137 = icmp eq i32 %3136, %3086
  br i1 %3137, label %3138, label %3089

; <label>:3138                                    ; preds = %3134
  br label %3139

; <label>:3139                                    ; preds = %3138, %3082
  %3140 = phi i32 [ %3083, %3082 ], [ %3135, %3138 ]
  %3141 = icmp eq i32 %3140, 1
  %3142 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 0
  %3143 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 0
  br i1 %3141, label %3144, label %3147

; <label>:3144                                    ; preds = %3139
  %3145 = load float, float* %3142, align 4
  %3146 = load float, float* %3143, align 4
  br label %3174

; <label>:3147                                    ; preds = %3139
  %3148 = load float, float* %3142, align 4
  %3149 = load float, float* %3143, align 4
  %3150 = fdiv fast float 1.000000e+00, %3149
  %3151 = fsub fast float %3148, %3150
  %3152 = icmp ugt i32 %3140, 1
  br i1 %3152, label %3153, label %3169

; <label>:3153                                    ; preds = %3147
  br label %3154

; <label>:3154                                    ; preds = %3154, %3153
  %3155 = phi float [ %3164, %3154 ], [ %3151, %3153 ]
  %3156 = phi float [ %3165, %3154 ], [ %3148, %3153 ]
  %3157 = phi i32 [ %3166, %3154 ], [ 1, %3153 ]
  %3158 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %3157
  %3159 = load float, float* %3158, align 4
  %3160 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 %3157
  %3161 = load float, float* %3160, align 4
  %3162 = fdiv fast float 1.000000e+00, %3161
  %3163 = fsub fast float %3159, %3162
  %3164 = call float @dx.op.binary.f32(i32 36, float %3155, float %3163)  ; FMin(a,b)
  %3165 = call float @dx.op.binary.f32(i32 35, float %3156, float %3159)  ; FMax(a,b)
  %3166 = add nuw i32 %3157, 1
  %3167 = icmp eq i32 %3166, %3140
  br i1 %3167, label %3168, label %3154

; <label>:3168                                    ; preds = %3154
  br label %3169

; <label>:3169                                    ; preds = %3168, %3147
  %3170 = phi float [ %3151, %3147 ], [ %3164, %3168 ]
  %3171 = phi float [ %3148, %3147 ], [ %3165, %3168 ]
  %3172 = fsub fast float %3171, %3170
  %3173 = fdiv fast float 1.000000e+00, %3172
  br label %3174

; <label>:3174                                    ; preds = %3169, %3144
  %3175 = phi float [ %3145, %3144 ], [ %3171, %3169 ]
  %3176 = phi float [ %3146, %3144 ], [ %3173, %3169 ]
  %3177 = fadd fast float %2605, %3175
  %3178 = fmul fast float %3177, %3176
  %3179 = call float @dx.op.unary.f32(i32 7, float %3178)  ; Saturate(value)
  %3180 = fmul fast float %3179, 2.000000e+00
  %3181 = fsub fast float 1.000000e+00, %3180
  %3182 = fmul fast float %3015, %3015
  %3183 = fsub fast float %3016, %3182
  %3184 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3183)  ; FMax(a,b)
  %3185 = fdiv fast float 1.000000e+00, %3184
  %3186 = fmul fast float %3016, %3015
  %3187 = fsub fast float %3017, %3186
  %3188 = fsub fast float %3181, %3015
  %3189 = fmul fast float %3181, %3181
  %3190 = fsub fast float %3189, %3016
  %3191 = fmul fast float %3185, %3187
  %3192 = fmul fast float %3191, %3188
  %3193 = fsub fast float %3190, %3192
  %3194 = fmul fast float %3016, %3016
  %3195 = fsub fast float %3018, %3194
  %3196 = fmul fast float %3187, %3187
  %3197 = fmul fast float %3196, %3185
  %3198 = fsub fast float %3195, %3197
  %3199 = fdiv fast float %3193, %3198
  %3200 = fmul fast float %3199, %3187
  %3201 = fsub fast float %3188, %3200
  %3202 = fmul fast float %3201, %3185
  %3203 = fmul fast float %3202, %3015
  %3204 = fsub fast float 1.000000e+00, %3203
  %3205 = fmul fast float %3199, %3016
  %3206 = fsub fast float %3204, %3205
  %3207 = fmul fast float %3202, %3202
  %3208 = fmul fast float %3199, 4.000000e+00
  %3209 = fmul fast float %3208, %3206
  %3210 = fsub fast float %3207, %3209
  %3211 = call float @dx.op.unary.f32(i32 24, float %3210)  ; Sqrt(value)
  %3212 = fcmp fast oge float %3202, 0.000000e+00
  %3213 = fsub fast float -0.000000e+00, %3211
  %3214 = select i1 %3212, float %3213, float %3211
  %3215 = fsub fast float %3214, %3202
  %3216 = fdiv fast float %3215, %3199
  %3217 = fdiv fast float %3206, %3215
  %3218 = fmul fast float %3216, 5.000000e-01
  %3219 = fmul fast float %3217, 2.000000e+00
  %3220 = select i1 %3212, float %3218, float %3219
  %3221 = select i1 %3212, float %3219, float %3218
  %3222 = call float @dx.op.binary.f32(i32 35, float %3220, float %3221)  ; FMax(a,b)
  %3223 = call float @dx.op.binary.f32(i32 36, float %3220, float %3221)  ; FMin(a,b)
  %3224 = fcmp fast ogt float %3181, %3222
  %3225 = fsub fast float %3181, %3223
  %3226 = fsub fast float %3181, %3222
  %3227 = fsub fast float %3222, %3223
  %3228 = select i1 %3224, float %3226, float %3227
  %3229 = fmul float %3225, %3228
  %3230 = select i1 %3224, float %3223, float %3181
  %3231 = fcmp fast ogt float %3181, %3223
  %3232 = fmul fast float %3230, %3222
  %3233 = fadd fast float %3230, %3222
  %3234 = fmul fast float %3233, %3015
  %3235 = fadd fast float %3232, %3016
  %3236 = fsub fast float %3235, %3234
  %3237 = fdiv fast float %3236, %3229
  %3238 = select i1 %3231, float %3237, float 0.000000e+00
  %3239 = fsub fast float 1.000000e+00, %3238
  %3240 = select i1 %3224, float %3239, float %3238
  %3241 = call float @dx.op.unary.f32(i32 7, float %3240)  ; Saturate(value)
  %3242 = extractvalue %dx.types.CBufRet.f32 %3000, 3
  %3243 = fmul fast float %3242, %3241
  %3244 = fsub fast float 1.000000e+00, %3243
  br label %3245

; <label>:3245                                    ; preds = %3174, %2852, %2578, %2574, %2538
  %3246 = phi float [ 1.000000e+00, %2538 ], [ %3244, %3174 ], [ 1.000000e+00, %2578 ], [ 1.000000e+00, %2852 ], [ 1.000000e+00, %2574 ]
  %3247 = fcmp fast ogt float %2570, 0.000000e+00
  br i1 %3247, label %3248, label %3256, !dx.controlflow.hints !125

; <label>:3248                                    ; preds = %3245
  %3249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3250 = extractvalue %dx.types.CBufRet.f32 %3249, 2
  %3251 = fadd fast float %3250, %2453
  %3252 = call float @dx.op.binary.f32(i32 35, float %3251, float 0.000000e+00)  ; FMax(a,b)
  %3253 = fadd fast float %3252, 0x3F10000000000000
  %3254 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %53, float %2468, float %2469, float undef, float undef, i32 0, i32 0, i32 undef, float %3253)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3255 = extractvalue %dx.types.ResRet.f32 %3254, 0
  br label %3256

; <label>:3256                                    ; preds = %3248, %3245
  %3257 = phi float [ %3255, %3248 ], [ 1.000000e+00, %3245 ]
  %3258 = fcmp fast ogt float %2568, 0.000000e+00
  br i1 %3258, label %3259, label %3267, !dx.controlflow.hints !126

; <label>:3259                                    ; preds = %3256
  %3260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3261 = extractvalue %dx.types.CBufRet.f32 %3260, 1
  %3262 = fadd fast float %3261, %2453
  %3263 = call float @dx.op.binary.f32(i32 35, float %3262, float 0.000000e+00)  ; FMax(a,b)
  %3264 = fadd fast float %3263, 0x3F10000000000000
  %3265 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %2460, float %2461, float undef, float undef, i32 0, i32 0, i32 undef, float %3264)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3266 = extractvalue %dx.types.ResRet.f32 %3265, 0
  br label %3267

; <label>:3267                                    ; preds = %3259, %3256
  %3268 = phi float [ %3266, %3259 ], [ 1.000000e+00, %3256 ]
  %3269 = fcmp fast ogt float %2567, 0.000000e+00
  br i1 %3269, label %3270, label %3278, !dx.controlflow.hints !127

; <label>:3270                                    ; preds = %3267
  %3271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3272 = extractvalue %dx.types.CBufRet.f32 %3271, 0
  %3273 = fadd fast float %3272, %2453
  %3274 = call float @dx.op.binary.f32(i32 35, float %3273, float 0.000000e+00)  ; FMax(a,b)
  %3275 = fadd fast float %3274, 0x3F10000000000000
  %3276 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %2445, float %2449, float undef, float undef, i32 0, i32 0, i32 undef, float %3275)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3277 = extractvalue %dx.types.ResRet.f32 %3276, 0
  br label %3278

; <label>:3278                                    ; preds = %3270, %3267
  %3279 = phi float [ %3277, %3270 ], [ 1.000000e+00, %3267 ]
  %3280 = fsub fast float %3257, %3246
  %3281 = fmul fast float %3280, %2508
  %3282 = fadd fast float %3281, %3246
  %3283 = fsub fast float %3268, %3282
  %3284 = fmul fast float %3283, %2539
  %3285 = fadd fast float %3284, %3282
  %3286 = fsub fast float %3279, %3285
  %3287 = fmul fast float %3286, %2567
  %3288 = fadd fast float %3287, %3285
  %3289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3290 = extractvalue %dx.types.CBufRet.f32 %3289, 2
  %3291 = fcmp fast ogt float %3290, 0.000000e+00
  br i1 %3291, label %3292, label %3332, !dx.controlflow.hints !128

; <label>:3292                                    ; preds = %3278
  %3293 = fcmp fast ugt float %3290, 0.000000e+00
  br i1 %3293, label %3294, label %3329

; <label>:3294                                    ; preds = %3292
  %3295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3296 = extractvalue %dx.types.CBufRet.f32 %3295, 0
  %3297 = extractvalue %dx.types.CBufRet.f32 %3295, 1
  %3298 = extractvalue %dx.types.CBufRet.f32 %3295, 2
  %3299 = extractvalue %dx.types.CBufRet.f32 %3295, 3
  %3300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3301 = extractvalue %dx.types.CBufRet.f32 %3300, 0
  %3302 = extractvalue %dx.types.CBufRet.f32 %3300, 1
  %3303 = extractvalue %dx.types.CBufRet.f32 %3300, 2
  %3304 = extractvalue %dx.types.CBufRet.f32 %3300, 3
  %3305 = extractvalue %dx.types.CBufRet.f32 %3289, 0
  %3306 = extractvalue %dx.types.CBufRet.f32 %3289, 1
  %3307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3308 = extractvalue %dx.types.CBufRet.f32 %3307, 0
  %3309 = extractvalue %dx.types.CBufRet.f32 %3307, 1
  %3310 = extractvalue %dx.types.CBufRet.f32 %3307, 2
  %3311 = fadd fast float %3308, %133
  %3312 = fadd fast float %3309, %134
  %3313 = fadd fast float %3310, %135
  %3314 = fmul fast float %3311, %3296
  %3315 = call float @dx.op.tertiary.f32(i32 46, float %3297, float %3312, float %3314)  ; FMad(a,b,c)
  %3316 = call float @dx.op.tertiary.f32(i32 46, float %3298, float %3313, float %3315)  ; FMad(a,b,c)
  %3317 = fadd fast float %3316, %3299
  %3318 = fmul fast float %3311, %3301
  %3319 = call float @dx.op.tertiary.f32(i32 46, float %3302, float %3312, float %3318)  ; FMad(a,b,c)
  %3320 = call float @dx.op.tertiary.f32(i32 46, float %3303, float %3313, float %3319)  ; FMad(a,b,c)
  %3321 = fadd fast float %3320, %3304
  %3322 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %12, %dx.types.Handle %48, float %3317, float %3321, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3323 = extractvalue %dx.types.ResRet.f32 %3322, 0
  %3324 = fmul fast float %3323, %3306
  %3325 = fadd fast float %3324, %3305
  %3326 = call float @dx.op.unary.f32(i32 7, float %3325)  ; Saturate(value)
  %3327 = fmul fast float %3326, %3290
  %3328 = fsub fast float 1.000000e+00, %3327
  br label %3329

; <label>:3329                                    ; preds = %3294, %3292
  %3330 = phi float [ %3328, %3294 ], [ 1.000000e+00, %3292 ]
  %3331 = fmul fast float %3330, %3288
  br label %3332

; <label>:3332                                    ; preds = %3329, %3278, %2410
  %3333 = phi float [ 1.000000e+00, %2410 ], [ %3331, %3329 ], [ %3288, %3278 ]
  %3334 = call float @dx.op.binary.f32(i32 36, float %3333, float %3333)  ; FMin(a,b)
  %3335 = call float @dx.op.binary.f32(i32 36, float %3333, float %3334)  ; FMin(a,b)
  %3336 = fcmp fast ogt float %3335, 0.000000e+00
  br i1 %3336, label %3337, label %3502, !dx.controlflow.hints !129

; <label>:3337                                    ; preds = %3332
  %3338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3339 = extractvalue %dx.types.CBufRet.f32 %3338, 0
  %3340 = extractvalue %dx.types.CBufRet.f32 %3338, 1
  %3341 = extractvalue %dx.types.CBufRet.f32 %3338, 2
  %3342 = extractvalue %dx.types.CBufRet.f32 %3338, 3
  %3343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3344 = extractvalue %dx.types.CBufRet.f32 %3343, 0
  %3345 = extractvalue %dx.types.CBufRet.f32 %3343, 1
  %3346 = extractvalue %dx.types.CBufRet.f32 %3343, 2
  %3347 = extractvalue %dx.types.CBufRet.f32 %3343, 3
  %3348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3349 = extractvalue %dx.types.CBufRet.f32 %3348, 0
  %3350 = extractvalue %dx.types.CBufRet.f32 %3348, 1
  %3351 = extractvalue %dx.types.CBufRet.f32 %3348, 2
  %3352 = extractvalue %dx.types.CBufRet.f32 %3348, 3
  %3353 = fmul fast float %3339, %133
  %3354 = call float @dx.op.tertiary.f32(i32 46, float %134, float %3340, float %3353)  ; FMad(a,b,c)
  %3355 = call float @dx.op.tertiary.f32(i32 46, float %135, float %3341, float %3354)  ; FMad(a,b,c)
  %3356 = fadd fast float %3355, %3342
  %3357 = fmul fast float %3344, %133
  %3358 = call float @dx.op.tertiary.f32(i32 46, float %134, float %3345, float %3357)  ; FMad(a,b,c)
  %3359 = call float @dx.op.tertiary.f32(i32 46, float %135, float %3346, float %3358)  ; FMad(a,b,c)
  %3360 = fadd fast float %3359, %3347
  %3361 = fmul fast float %3349, %133
  %3362 = call float @dx.op.tertiary.f32(i32 46, float %134, float %3350, float %3361)  ; FMad(a,b,c)
  %3363 = call float @dx.op.tertiary.f32(i32 46, float %135, float %3351, float %3362)  ; FMad(a,b,c)
  %3364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3365 = extractvalue %dx.types.CBufRet.f32 %3364, 0
  %3366 = extractvalue %dx.types.CBufRet.f32 %3364, 1
  %3367 = extractvalue %dx.types.CBufRet.f32 %3364, 3
  %3368 = fmul fast float %3367, %3356
  %3369 = fmul fast float %3367, %3360
  %3370 = fadd fast float %3368, %3365
  %3371 = fadd fast float %3369, %3366
  %3372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3373 = extractvalue %dx.types.CBufRet.f32 %3372, 0
  %3374 = extractvalue %dx.types.CBufRet.f32 %3372, 1
  %3375 = fsub fast float %3370, %3373
  %3376 = fsub fast float %3371, %3374
  %3377 = fcmp fast olt float %3375, 0.000000e+00
  %3378 = fcmp fast olt float %3376, 0.000000e+00
  %3379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3380 = extractvalue %dx.types.CBufRet.f32 %3379, 0
  %3381 = extractvalue %dx.types.CBufRet.f32 %3379, 1
  %3382 = extractvalue %dx.types.CBufRet.f32 %3379, 2
  %3383 = extractvalue %dx.types.CBufRet.f32 %3379, 3
  %3384 = select i1 %3377, float %3380, float %3382
  %3385 = select i1 %3378, float %3381, float %3383
  %3386 = fmul fast float %3384, %3375
  %3387 = fmul fast float %3385, %3376
  %3388 = call float @dx.op.unary.f32(i32 6, float %3386)  ; FAbs(value)
  %3389 = call float @dx.op.unary.f32(i32 6, float %3387)  ; FAbs(value)
  %3390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3391 = extractvalue %dx.types.CBufRet.f32 %3390, 0
  %3392 = call float @dx.op.binary.f32(i32 35, float %3388, float %3389)  ; FMax(a,b)
  %3393 = fsub fast float %3391, %3392
  %3394 = call float @dx.op.unary.f32(i32 7, float %3393)  ; Saturate(value)
  %3395 = fcmp fast ogt float %3394, 0.000000e+00
  br i1 %3395, label %3396, label %3437, !dx.controlflow.hints !130

; <label>:3396                                    ; preds = %3337
  %3397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %51, float %3370, float %3371, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3398 = extractvalue %dx.types.ResRet.f32 %3397, 1
  %3399 = fcmp fast ogt float %3398, 0.000000e+00
  br i1 %3399, label %3400, label %3432

; <label>:3400                                    ; preds = %3396
  %3401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %51, float %3370, float %3371, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3402 = extractvalue %dx.types.ResRet.f32 %3401, 0
  %3403 = extractvalue %dx.types.ResRet.f32 %3401, 1
  %3404 = extractvalue %dx.types.ResRet.f32 %3401, 2
  %3405 = extractvalue %dx.types.ResRet.f32 %3401, 3
  %3406 = fsub fast float 1.000000e+00, %3352
  %3407 = fsub fast float %3406, %3363
  %3408 = fmul fast float %3407, 0x400921FB60000000
  %3409 = fadd fast float %3408, 0x3FF921FB60000000
  %3410 = call float @dx.op.unary.f32(i32 13, float %3409)  ; Sin(value)
  %3411 = fadd fast float %3410, -1.000000e+00
  %3412 = fmul fast float %3411, 0x3FD45F3060000000
  %3413 = fmul fast float %3407, 0x401921FB60000000
  %3414 = fadd fast float %3413, 0x400921FB60000000
  %3415 = call float @dx.op.unary.f32(i32 13, float %3414)  ; Sin(value)
  %3416 = fadd fast float %3415, 0x3E7777A5C0000000
  %3417 = fmul fast float %3416, 0x3FC45F3060000000
  %3418 = fmul fast float %3407, 0x4022D97C80000000
  %3419 = fadd fast float %3418, 0x4012D97C80000000
  %3420 = call float @dx.op.unary.f32(i32 13, float %3419)  ; Sin(value)
  %3421 = fadd fast float %3420, 1.000000e+00
  %3422 = fmul fast float %3421, 0x3FBB2995E0000000
  %3423 = fmul fast float %3407, 0x402921FB60000000
  %3424 = fadd fast float %3423, 0x401921FB60000000
  %3425 = call float @dx.op.unary.f32(i32 13, float %3424)  ; Sin(value)
  %3426 = fadd fast float %3425, 0xBE8777A5C0000000
  %3427 = fmul fast float %3426, 0x3FB45F3060000000
  %3428 = call float @dx.op.dot4.f32(i32 56, float %3402, float %3403, float %3404, float %3405, float %3412, float %3417, float %3422, float %3427)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3429 = fmul fast float %3428, 0xBFF7154760000000
  %3430 = call float @dx.op.unary.f32(i32 21, float %3429)  ; Exp(value)
  %3431 = call float @dx.op.unary.f32(i32 7, float %3430)  ; Saturate(value)
  br label %3432

; <label>:3432                                    ; preds = %3400, %3396
  %3433 = phi float [ %3431, %3400 ], [ 1.000000e+00, %3396 ]
  %3434 = fadd fast float %3433, -1.000000e+00
  %3435 = fmul fast float %3434, %3394
  %3436 = fadd fast float %3435, 1.000000e+00
  br label %3437

; <label>:3437                                    ; preds = %3432, %3337
  %3438 = phi float [ %3436, %3432 ], [ 1.000000e+00, %3337 ]
  %3439 = fmul fast float %3438, %3333
  %3440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3441 = extractvalue %dx.types.CBufRet.f32 %3440, 0
  %3442 = extractvalue %dx.types.CBufRet.f32 %3440, 1
  %3443 = extractvalue %dx.types.CBufRet.f32 %3440, 2
  %3444 = fadd fast float %3441, %133
  %3445 = fadd fast float %3442, %134
  %3446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3447 = extractvalue %dx.types.CBufRet.f32 %3446, 1
  %3448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3449 = extractvalue %dx.types.CBufRet.f32 %3448, 0
  %3450 = extractvalue %dx.types.CBufRet.f32 %3448, 1
  %3451 = extractvalue %dx.types.CBufRet.f32 %3448, 2
  %3452 = fsub fast float -0.000000e+00, %3444
  %3453 = fsub fast float -0.000000e+00, %3445
  %3454 = fsub fast float %1529, %3443
  %3455 = fadd fast float %3454, %3447
  %3456 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3452, float %3453, float %3455)  ; Dot3(ax,ay,az,bx,by,bz)
  %3457 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3449, float %3450, float %3451)  ; Dot3(ax,ay,az,bx,by,bz)
  %3458 = fdiv fast float 1.000000e+00, %3457
  %3459 = fmul fast float %3458, %3456
  %3460 = fmul fast float %3449, %3459
  %3461 = fmul fast float %3450, %3459
  %3462 = fadd fast float %3460, %3444
  %3463 = fadd fast float %3461, %3445
  %3464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3465 = extractvalue %dx.types.CBufRet.f32 %3464, 0
  %3466 = extractvalue %dx.types.CBufRet.f32 %3464, 1
  %3467 = fsub fast float %3462, %3465
  %3468 = fsub fast float %3463, %3466
  %3469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3470 = extractvalue %dx.types.CBufRet.f32 %3469, 2
  %3471 = extractvalue %dx.types.CBufRet.f32 %3469, 3
  %3472 = fmul fast float %3467, %3470
  %3473 = fmul fast float %3468, %3471
  %3474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3475 = extractvalue %dx.types.CBufRet.i32 %3474, 3
  %3476 = icmp eq i32 %3475, 0
  br i1 %3476, label %3482, label %3477

; <label>:3477                                    ; preds = %3437
  %3478 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %50, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3479 = extractvalue %dx.types.ResRet.f32 %3478, 0
  %3480 = extractvalue %dx.types.ResRet.f32 %3478, 1
  %3481 = extractvalue %dx.types.ResRet.f32 %3478, 2
  br label %3487

; <label>:3482                                    ; preds = %3437
  %3483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %51, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3484 = extractvalue %dx.types.ResRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.ResRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.ResRet.f32 %3483, 2
  br label %3487

; <label>:3487                                    ; preds = %3482, %3477
  %3488 = phi float [ %3479, %3477 ], [ %3484, %3482 ]
  %3489 = phi float [ %3480, %3477 ], [ %3485, %3482 ]
  %3490 = phi float [ %3481, %3477 ], [ %3486, %3482 ]
  %3491 = extractvalue %dx.types.CBufRet.f32 %3446, 2
  %3492 = fmul fast float %3491, %3488
  %3493 = extractvalue %dx.types.CBufRet.f32 %3446, 0
  %3494 = fsub fast float %3459, %3493
  %3495 = fsub fast float %3494, %3492
  %3496 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3495)  ; FMax(a,b)
  %3497 = fmul fast float %3496, %3489
  %3498 = call float @dx.op.binary.f32(i32 36, float %3490, float %3497)  ; FMin(a,b)
  %3499 = fmul fast float %3498, 0xBFF7154760000000
  %3500 = call float @dx.op.unary.f32(i32 21, float %3499)  ; Exp(value)
  %3501 = fmul fast float %3439, %3500
  br label %3502

; <label>:3502                                    ; preds = %3487, %3332
  %3503 = phi float [ %3501, %3487 ], [ %3333, %3332 ]
  %3504 = call float @dx.op.binary.f32(i32 36, float %3503, float %3503)  ; FMin(a,b)
  %3505 = call float @dx.op.binary.f32(i32 36, float %3503, float %3504)  ; FMin(a,b)
  %3506 = fcmp fast ogt float %3505, 0.000000e+00
  br i1 %3506, label %3507, label %3730, !dx.controlflow.hints !131

; <label>:3507                                    ; preds = %3502
  %3508 = fmul fast float %3503, %2422
  %3509 = fmul fast float %3503, %2423
  %3510 = fmul fast float %3503, %2424
  %3511 = fsub fast float %2411, %1421
  %3512 = fsub fast float %2412, %1422
  %3513 = fsub fast float %2413, %1423
  %3514 = call float @dx.op.dot3.f32(i32 55, float %3511, float %3512, float %3513, float %3511, float %3512, float %3513)  ; Dot3(ax,ay,az,bx,by,bz)
  %3515 = call float @dx.op.unary.f32(i32 25, float %3514)  ; Rsqrt(value)
  %3516 = fmul fast float %3515, %3511
  %3517 = fmul fast float %3515, %3512
  %3518 = fmul fast float %3515, %3513
  %3519 = call float @dx.op.dot3.f32(i32 55, float %2411, float %2412, float %2413, float %1393, float %1394, float %1395)  ; Dot3(ax,ay,az,bx,by,bz)
  %3520 = call float @dx.op.dot3.f32(i32 55, float %1530, float %1531, float %1532, float %3516, float %3517, float %3518)  ; Dot3(ax,ay,az,bx,by,bz)
  %3521 = call float @dx.op.unary.f32(i32 7, float %3519)  ; Saturate(value)
  %3522 = fmul fast float %3521, %3521
  %3523 = fmul fast float %3522, %1547
  %3524 = call float @dx.op.unary.f32(i32 7, float %3523)  ; Saturate(value)
  %3525 = fmul fast float %3524, %3521
  %3526 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float %3516, float %3517, float %3518)  ; Dot3(ax,ay,az,bx,by,bz)
  %3527 = fmul fast float %3526, %3526
  %3528 = call float @dx.op.unary.f32(i32 6, float %3519)  ; FAbs(value)
  %3529 = fsub fast float 1.000000e+00, %1476
  %3530 = call float @dx.op.binary.f32(i32 35, float %3529, float 0x3F847AE140000000)  ; FMax(a,b)
  %3531 = fmul fast float %3530, %3530
  %3532 = fmul fast float %3531, %3531
  %3533 = fsub fast float 1.000000e+00, %3532
  %3534 = fmul fast float %1535, %1535
  %3535 = fmul fast float %3534, %3533
  %3536 = fadd fast float %3535, %3532
  %3537 = bitcast float %3536 to i32
  %3538 = ashr i32 %3537, 1
  %3539 = add nsw i32 %3538, 532487669
  %3540 = bitcast i32 %3539 to float
  %3541 = fadd fast float %3540, %1535
  %3542 = fmul fast float %3532, %3527
  %3543 = fsub fast float 1.000000e+00, %3527
  %3544 = fadd fast float %3543, %3542
  %3545 = fmul fast float %3528, %3528
  %3546 = fmul fast float %3545, %3533
  %3547 = fadd fast float %3546, %3532
  %3548 = bitcast float %3547 to i32
  %3549 = ashr i32 %3548, 1
  %3550 = add nsw i32 %3549, 532487669
  %3551 = bitcast i32 %3550 to float
  %3552 = fadd fast float %3551, %3528
  %3553 = fmul fast float %3544, %3544
  %3554 = fmul fast float %3553, %3541
  %3555 = fmul fast float %3554, %3552
  %3556 = fdiv fast float 0x3FF0A00000000000, %3555
  %3557 = fmul fast float %3556, %3532
  %3558 = call float @dx.op.unary.f32(i32 6, float %3520)  ; FAbs(value)
  %3559 = fsub fast float 1.000000e+00, %3558
  %3560 = bitcast float %3559 to i32
  %3561 = sitofp i32 %3560 to float
  %3562 = fmul fast float %3561, 5.000000e+00
  %3563 = fadd fast float %3562, 0xC1EFBF8940000000
  %3564 = fptosi float %3563 to i32
  %3565 = bitcast i32 %3564 to float
  %3566 = fmul fast float %3565, %2360
  %3567 = fmul fast float %3565, %2361
  %3568 = fmul fast float %3565, %2362
  %3569 = fadd fast float %3566, %1414
  %3570 = fadd fast float %3567, %1415
  %3571 = fadd fast float %3568, %1533
  %3572 = select i1 %2373, float %3558, float 0.000000e+00
  %3573 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %51, float %2370, float %3572, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3574 = extractvalue %dx.types.ResRet.f32 %3573, 0
  %3575 = extractvalue %dx.types.ResRet.f32 %3573, 1
  %3576 = extractvalue %dx.types.ResRet.f32 %3573, 2
  %3577 = fadd fast float %3574, -5.000000e-01
  %3578 = fadd fast float %3575, -5.000000e-01
  %3579 = fadd fast float %3576, -5.000000e-01
  %3580 = fmul fast float %2385, %3577
  %3581 = fmul fast float %2389, %3578
  %3582 = fmul fast float %2393, %3579
  %3583 = fadd fast float %3569, %3580
  %3584 = fadd fast float %3570, %3581
  %3585 = fadd fast float %3571, %3582
  %3586 = call float @dx.op.unary.f32(i32 7, float %3583)  ; Saturate(value)
  %3587 = call float @dx.op.unary.f32(i32 7, float %3584)  ; Saturate(value)
  %3588 = call float @dx.op.unary.f32(i32 7, float %3585)  ; Saturate(value)
  %3589 = fmul fast float %3519, 9.843750e-01
  %3590 = fmul fast float %1476, 9.843750e-01
  %3591 = fadd fast float %3589, 7.812500e-03
  %3592 = fadd fast float %3590, 7.812500e-03
  %3593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %3591, float %3592, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3594 = extractvalue %dx.types.ResRet.f32 %3593, 2
  %3595 = extractvalue %dx.types.ResRet.f32 %3593, 3
  %3596 = select i1 %2373, float %3519, float 0.000000e+00
  %3597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %51, float %2370, float %3596, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3598 = extractvalue %dx.types.ResRet.f32 %3597, 0
  %3599 = extractvalue %dx.types.ResRet.f32 %3597, 1
  %3600 = extractvalue %dx.types.ResRet.f32 %3597, 2
  %3601 = fadd fast float %3598, -5.000000e-01
  %3602 = fadd fast float %3599, -5.000000e-01
  %3603 = fadd fast float %3600, -5.000000e-01
  %3604 = fmul fast float %2360, 4.000000e+00
  %3605 = fmul fast float %3604, %2372
  %3606 = fmul fast float %3605, %3601
  %3607 = fmul fast float %2361, 4.000000e+00
  %3608 = fmul fast float %3607, %2372
  %3609 = fmul fast float %3608, %3602
  %3610 = fmul fast float %2362, 4.000000e+00
  %3611 = fmul fast float %3610, %2372
  %3612 = fmul fast float %3611, %3603
  %3613 = fadd fast float %3606, %3594
  %3614 = fmul fast float %3613, %1414
  %3615 = fadd fast float %3614, %3595
  %3616 = fadd fast float %3609, %3594
  %3617 = fmul fast float %3616, %1415
  %3618 = fadd fast float %3617, %3595
  %3619 = fadd fast float %3612, %3594
  %3620 = fmul fast float %3619, %1533
  %3621 = fadd fast float %3620, %3595
  %3622 = call float @dx.op.unary.f32(i32 7, float %3615)  ; Saturate(value)
  %3623 = call float @dx.op.unary.f32(i32 7, float %3618)  ; Saturate(value)
  %3624 = call float @dx.op.unary.f32(i32 7, float %3621)  ; Saturate(value)
  %3625 = call float @dx.op.binary.f32(i32 35, float %3623, float %3624)  ; FMax(a,b)
  %3626 = call float @dx.op.binary.f32(i32 35, float %3622, float %3625)  ; FMax(a,b)
  %3627 = fsub fast float 1.000000e+00, %3626
  %3628 = fsub fast float -0.000000e+00, %1393
  %3629 = fsub fast float -0.000000e+00, %1394
  %3630 = fsub fast float -0.000000e+00, %1395
  %3631 = call float @dx.op.dot3.f32(i32 55, float %2411, float %2412, float %2413, float %3628, float %3629, float %3630)  ; Dot3(ax,ay,az,bx,by,bz)
  %3632 = call float @dx.op.unary.f32(i32 7, float %3631)  ; Saturate(value)
  %3633 = fmul fast float %3632, 9.843750e-01
  %3634 = fadd fast float %3633, 7.812500e-03
  %3635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %3634, float %3592, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3636 = extractvalue %dx.types.ResRet.f32 %3635, 2
  %3637 = extractvalue %dx.types.ResRet.f32 %3635, 3
  %3638 = select i1 %2373, float %3632, float 0.000000e+00
  %3639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %51, float %2370, float %3638, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3641 = extractvalue %dx.types.ResRet.f32 %3639, 1
  %3642 = extractvalue %dx.types.ResRet.f32 %3639, 2
  %3643 = fadd fast float %3640, -5.000000e-01
  %3644 = fadd fast float %3641, -5.000000e-01
  %3645 = fadd fast float %3642, -5.000000e-01
  %3646 = fmul fast float %3605, %3643
  %3647 = fmul fast float %3608, %3644
  %3648 = fmul fast float %3611, %3645
  %3649 = fadd fast float %3646, %3636
  %3650 = fmul fast float %3649, %1414
  %3651 = fadd fast float %3650, %3637
  %3652 = fadd fast float %3647, %3636
  %3653 = fmul fast float %3652, %1415
  %3654 = fadd fast float %3653, %3637
  %3655 = fadd fast float %3648, %3636
  %3656 = fmul fast float %3655, %1533
  %3657 = fadd fast float %3656, %3637
  %3658 = call float @dx.op.unary.f32(i32 7, float %3651)  ; Saturate(value)
  %3659 = call float @dx.op.unary.f32(i32 7, float %3654)  ; Saturate(value)
  %3660 = call float @dx.op.unary.f32(i32 7, float %3657)  ; Saturate(value)
  %3661 = call float @dx.op.binary.f32(i32 35, float %3659, float %3660)  ; FMax(a,b)
  %3662 = call float @dx.op.binary.f32(i32 35, float %3658, float %3661)  ; FMax(a,b)
  %3663 = fsub fast float 1.000000e+00, %3662
  %3664 = fmul fast float %1415, 0x4012D0A400000000
  %3665 = fadd fast float %3664, 0x3FDB6377A0000000
  %3666 = fmul fast float %3529, %3665
  %3667 = call float @dx.op.unary.f32(i32 7, float %3666)  ; Saturate(value)
  %3668 = fsub fast float %2411, %1540
  %3669 = fsub fast float %2412, %1541
  %3670 = fsub fast float %2413, %1542
  %3671 = call float @dx.op.dot3.f32(i32 55, float %3668, float %3669, float %3670, float %3668, float %3669, float %3670)  ; Dot3(ax,ay,az,bx,by,bz)
  %3672 = call float @dx.op.unary.f32(i32 25, float %3671)  ; Rsqrt(value)
  %3673 = fmul fast float %3672, %3668
  %3674 = fmul fast float %3672, %3669
  %3675 = fmul fast float %3672, %3670
  %3676 = call float @dx.op.dot3.f32(i32 55, float %3628, float %3629, float %3630, float %3673, float %3674, float %3675)  ; Dot3(ax,ay,az,bx,by,bz)
  %3677 = fmul fast float %3676, %3676
  %3678 = call float @dx.op.unary.f32(i32 6, float %3632)  ; FAbs(value)
  %3679 = call float @dx.op.binary.f32(i32 35, float %3667, float 0x3F847AE140000000)  ; FMax(a,b)
  %3680 = fmul fast float %3679, %3679
  %3681 = fmul fast float %3680, %3680
  %3682 = fsub fast float 1.000000e+00, %3681
  %3683 = fmul fast float %3534, %3682
  %3684 = fadd fast float %3683, %3681
  %3685 = bitcast float %3684 to i32
  %3686 = ashr i32 %3685, 1
  %3687 = add nsw i32 %3686, 532487669
  %3688 = bitcast i32 %3687 to float
  %3689 = fadd fast float %3688, %1535
  %3690 = fmul fast float %3681, %3677
  %3691 = fsub fast float 1.000000e+00, %3677
  %3692 = fadd fast float %3691, %3690
  %3693 = fmul fast float %3678, %3678
  %3694 = fmul fast float %3693, %3682
  %3695 = fadd fast float %3694, %3681
  %3696 = bitcast float %3695 to i32
  %3697 = ashr i32 %3696, 1
  %3698 = add nsw i32 %3697, 532487669
  %3699 = bitcast i32 %3698 to float
  %3700 = fadd fast float %3699, %3678
  %3701 = fmul fast float %3692, %3692
  %3702 = fmul fast float %3701, %3689
  %3703 = fmul fast float %3702, %3700
  %3704 = fdiv fast float 0x3FF0A00000000000, %3703
  %3705 = fmul fast float %3704, %3681
  %3706 = fmul fast float %3663, %3632
  %3707 = fmul fast float %3706, %3705
  %3708 = fmul fast float %3557, %3525
  %3709 = fmul fast float %3708, %3586
  %3710 = fmul fast float %3708, %3587
  %3711 = fmul fast float %3708, %3588
  %3712 = fadd fast float %3707, %3709
  %3713 = fadd fast float %3707, %3710
  %3714 = fadd fast float %3707, %3711
  %3715 = fmul fast float %3525, %3508
  %3716 = fmul fast float %3715, %3627
  %3717 = fmul fast float %3525, %3509
  %3718 = fmul fast float %3717, %3627
  %3719 = fmul fast float %3525, %3510
  %3720 = fmul fast float %3719, %3627
  %3721 = fadd fast float %3716, %2404
  %3722 = fadd fast float %3718, %2405
  %3723 = fadd fast float %3720, %2406
  %3724 = fmul fast float %3712, %3508
  %3725 = fmul fast float %3713, %3509
  %3726 = fmul fast float %3714, %3510
  %3727 = fadd fast float %3724, %1357
  %3728 = fadd fast float %3725, %1358
  %3729 = fadd fast float %3726, %1359
  br label %3730

; <label>:3730                                    ; preds = %3507, %3502, %2310
  %3731 = phi float [ %3503, %3507 ], [ 0.000000e+00, %2310 ], [ 0.000000e+00, %3502 ]
  %3732 = phi float [ %3727, %3507 ], [ %1357, %2310 ], [ %1357, %3502 ]
  %3733 = phi float [ %3728, %3507 ], [ %1358, %2310 ], [ %1358, %3502 ]
  %3734 = phi float [ %3729, %3507 ], [ %1359, %2310 ], [ %1359, %3502 ]
  %3735 = phi float [ %3721, %3507 ], [ %2404, %2310 ], [ %2404, %3502 ]
  %3736 = phi float [ %3722, %3507 ], [ %2405, %2310 ], [ %2405, %3502 ]
  %3737 = phi float [ %3723, %3507 ], [ %2406, %2310 ], [ %2406, %3502 ]
  %3738 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3739 = extractvalue %dx.types.CBufRet.i32 %3738, 0
  %3740 = icmp eq i32 %3739, 0
  br i1 %3740, label %4392, label %3741

; <label>:3741                                    ; preds = %3730
  %3742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3743 = extractvalue %dx.types.CBufRet.f32 %3742, 2
  %3744 = extractvalue %dx.types.CBufRet.f32 %3742, 3
  %3745 = fmul fast float %3743, %78
  %3746 = fmul fast float %3744, %79
  %3747 = fptoui float %3745 to i32
  %3748 = fptoui float %3746 to i32
  %3749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3750 = extractvalue %dx.types.CBufRet.f32 %3749, 0
  %3751 = extractvalue %dx.types.CBufRet.f32 %3749, 2
  %3752 = extractvalue %dx.types.CBufRet.f32 %3749, 3
  %3753 = fadd fast float %71, -4.000000e+00
  %3754 = call float @dx.op.binary.f32(i32 35, float %3753, float 0.000000e+00)  ; FMax(a,b)
  %3755 = fadd fast float %3754, %3750
  %3756 = fmul fast float %3755, %3751
  %3757 = call float @dx.op.unary.f32(i32 23, float %3756)  ; Log(value)
  %3758 = fmul fast float %3757, %3752
  %3759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3760 = extractvalue %dx.types.CBufRet.f32 %3759, 2
  %3761 = fmul fast float %3758, %3760
  %3762 = call float @dx.op.unary.f32(i32 7, float %3761)  ; Saturate(value)
  %3763 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3764 = extractvalue %dx.types.CBufRet.i32 %3763, 1
  %3765 = add i32 %3764, -1
  %3766 = uitofp i32 %3764 to float
  %3767 = fmul fast float %3766, %3762
  %3768 = fptoui float %3767 to i32
  %3769 = call i32 @dx.op.binary.i32(i32 40, i32 %3768, i32 %3765)  ; UMin(a,b)
  %3770 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3771 = extractvalue %dx.types.CBufRet.i32 %3770, 2
  %3772 = extractvalue %dx.types.CBufRet.i32 %3770, 3
  %3773 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3748, i32 %3771, i32 %3747)  ; UMad(a,b,c)
  %3774 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3769, i32 %3772, i32 %3773)  ; UMad(a,b,c)
  %3775 = add nsw i32 %3739, -1
  %3776 = call i32 @dx.op.binary.i32(i32 37, i32 %3775, i32 0)  ; IMax(a,b)
  %3777 = call float @dx.op.binary.f32(i32 35, float %71, float 0.000000e+00)  ; FMax(a,b)
  %3778 = fptoui float %3777 to i32
  %3779 = lshr i32 %3778, 5
  %3780 = call i32 @dx.op.binary.i32(i32 40, i32 %3779, i32 8191)  ; UMin(a,b)
  %3781 = shl i32 %3780, 2
  %3782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3781, i32 undef)  ; BufferLoad(srv,index,wot)
  %3783 = extractvalue %dx.types.ResRet.i32 %3782, 0
  %3784 = lshr i32 %3783, 16
  %3785 = and i32 %3783, 65535
  %3786 = lshr i32 %3783, 21
  %3787 = lshr i32 %3785, 5
  %3788 = call i32 @dx.op.binary.i32(i32 40, i32 %3787, i32 %3776)  ; UMin(a,b)
  %3789 = icmp ugt i32 %3786, %3788
  br i1 %3789, label %4392, label %3790

; <label>:3790                                    ; preds = %3741
  br label %3791

; <label>:3791                                    ; preds = %4382, %3790
  %3792 = phi i32 [ %4389, %4382 ], [ %3786, %3790 ]
  %3793 = phi float [ %4383, %4382 ], [ %3732, %3790 ]
  %3794 = phi float [ %4384, %4382 ], [ %3733, %3790 ]
  %3795 = phi float [ %4385, %4382 ], [ %3734, %3790 ]
  %3796 = phi float [ %4386, %4382 ], [ %3735, %3790 ]
  %3797 = phi float [ %4387, %4382 ], [ %3736, %3790 ]
  %3798 = phi float [ %4388, %4382 ], [ %3737, %3790 ]
  %3799 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3800 = extractvalue %dx.types.CBufRet.i32 %3799, 0
  %3801 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3774, i32 %3800, i32 %3792)  ; UMad(a,b,c)
  %3802 = shl i32 %3801, 2
  %3803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3804 = extractvalue %dx.types.ResRet.i32 %3803, 0
  %3805 = shl i32 %3792, 5
  %3806 = sub nsw i32 %3784, %3805
  %3807 = call i32 @dx.op.binary.i32(i32 37, i32 %3806, i32 0)  ; IMax(a,b)
  %3808 = call i32 @dx.op.binary.i32(i32 38, i32 %3807, i32 31)  ; IMin(a,b)
  %3809 = sub nsw i32 1, %3784
  %3810 = add nsw i32 %3809, %3785
  %3811 = call i32 @dx.op.binary.i32(i32 37, i32 %3810, i32 0)  ; IMax(a,b)
  %3812 = call i32 @dx.op.binary.i32(i32 38, i32 %3811, i32 32)  ; IMin(a,b)
  %3813 = and i32 %3812, 31
  %3814 = shl i32 -1, %3813
  %3815 = xor i32 %3814, -1
  %3816 = and i32 %3808, 31
  %3817 = shl i32 %3815, %3816
  %3818 = icmp eq i32 %3812, 32
  %3819 = select i1 %3818, i32 -1, i32 %3817
  %3820 = and i32 %3819, %3804
  %3821 = icmp eq i32 %3820, 0
  br i1 %3821, label %4382, label %3822

; <label>:3822                                    ; preds = %3791
  br label %3823

; <label>:3823                                    ; preds = %3958, %3822
  %3824 = phi i32 [ %3835, %3958 ], [ %3820, %3822 ]
  %3825 = phi float [ %3959, %3958 ], [ %3793, %3822 ]
  %3826 = phi float [ %3960, %3958 ], [ %3794, %3822 ]
  %3827 = phi float [ %3961, %3958 ], [ %3795, %3822 ]
  %3828 = phi float [ %3962, %3958 ], [ %3796, %3822 ]
  %3829 = phi float [ %3963, %3958 ], [ %3797, %3822 ]
  %3830 = phi float [ %3964, %3958 ], [ %3798, %3822 ]
  %3831 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3824)  ; FirstbitLo(value)
  %3832 = add i32 %3831, %3805
  %3833 = and i32 %3831, 31
  %3834 = shl i32 1, %3833
  %3835 = xor i32 %3834, %3824
  %3836 = mul i32 %3832, 112
  %3837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %3836, i32 undef)  ; BufferLoad(srv,index,wot)
  %3838 = extractvalue %dx.types.ResRet.f32 %3837, 0
  %3839 = extractvalue %dx.types.ResRet.f32 %3837, 1
  %3840 = extractvalue %dx.types.ResRet.f32 %3837, 2
  %3841 = or i32 %3836, 12
  %3842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %3841, i32 undef)  ; BufferLoad(srv,index,wot)
  %3843 = extractvalue %dx.types.ResRet.f32 %3842, 0
  %3844 = add i32 %3836, 16
  %3845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %3844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3846 = extractvalue %dx.types.ResRet.f32 %3845, 0
  %3847 = extractvalue %dx.types.ResRet.f32 %3845, 1
  %3848 = extractvalue %dx.types.ResRet.f32 %3845, 2
  %3849 = add i32 %3836, 28
  %3850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3849, i32 undef)  ; BufferLoad(srv,index,wot)
  %3851 = extractvalue %dx.types.ResRet.i32 %3850, 0
  %3852 = add i32 %3836, 44
  %3853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %3852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3854 = extractvalue %dx.types.ResRet.f32 %3853, 0
  %3855 = add i32 %3836, 48
  %3856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %3855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3857 = extractvalue %dx.types.ResRet.f32 %3856, 0
  %3858 = extractvalue %dx.types.ResRet.f32 %3856, 1
  %3859 = extractvalue %dx.types.ResRet.f32 %3856, 2
  %3860 = extractvalue %dx.types.ResRet.f32 %3856, 3
  %3861 = add i32 %3836, 64
  %3862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %3861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = extractvalue %dx.types.ResRet.f32 %3862, 0
  %3864 = extractvalue %dx.types.ResRet.f32 %3862, 1
  %3865 = extractvalue %dx.types.ResRet.f32 %3862, 2
  %3866 = extractvalue %dx.types.ResRet.f32 %3862, 3
  %3867 = add i32 %3836, 80
  %3868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %3867, i32 undef)  ; BufferLoad(srv,index,wot)
  %3869 = extractvalue %dx.types.ResRet.f32 %3868, 1
  %3870 = extractvalue %dx.types.ResRet.f32 %3868, 2
  %3871 = add i32 %3836, 92
  %3872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3871, i32 undef)  ; BufferLoad(srv,index,wot)
  %3873 = extractvalue %dx.types.ResRet.i32 %3872, 0
  %3874 = call float @dx.op.dot3.f32(i32 55, float %3838, float %3839, float %3840, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3875 = select i1 %1528, float %3869, float %3838
  %3876 = select i1 %1528, float %3874, float %3839
  %3877 = select i1 %1528, float %3870, float %3840
  %3878 = and i32 %3873, 65535
  %3879 = uitofp i32 %3878 to float
  %3880 = lshr i32 %3873, 16
  %3881 = uitofp i32 %3880 to float
  %3882 = and i32 %3851, 65535
  %3883 = and i32 %3851, 50331648
  %3884 = icmp slt i32 %3851, 0
  %3885 = icmp eq i32 %3883, 33554432
  %3886 = fsub fast float %3857, %133
  %3887 = fsub fast float %3858, %134
  %3888 = fsub fast float %3859, %135
  %3889 = call float @dx.op.dot3.f32(i32 55, float %3886, float %3887, float %3888, float %3886, float %3887, float %3888)  ; Dot3(ax,ay,az,bx,by,bz)
  %3890 = call float @dx.op.unary.f32(i32 24, float %3889)  ; Sqrt(value)
  %3891 = fdiv fast float 1.000000e+00, %3890
  %3892 = fmul fast float %3891, %3886
  %3893 = fmul fast float %3891, %3887
  %3894 = fmul fast float %3891, %3888
  %3895 = fadd fast float %3890, %3843
  %3896 = fdiv fast float 1.000000e+00, %3895
  %3897 = fmul float %3854, %3896
  %3898 = fmul float %3897, %3897
  %3899 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  br i1 %3885, label %3900, label %3921

; <label>:3900                                    ; preds = %3823
  %3901 = fmul fast float %3865, %3846
  %3902 = fmul fast float %3865, %3847
  %3903 = fmul fast float %3865, %3848
  %3904 = fadd fast float %3886, %3901
  %3905 = fadd fast float %3887, %3902
  %3906 = fadd fast float %3888, %3903
  %3907 = call float @dx.op.dot3.f32(i32 55, float %3904, float %3905, float %3906, float %3904, float %3905, float %3906)  ; Dot3(ax,ay,az,bx,by,bz)
  %3908 = call float @dx.op.unary.f32(i32 25, float %3907)  ; Rsqrt(value)
  %3909 = fmul fast float %3908, %3904
  %3910 = fmul fast float %3908, %3905
  %3911 = fmul fast float %3908, %3906
  %3912 = fsub fast float %133, %3857
  %3913 = fsub fast float %134, %3858
  %3914 = fsub fast float %135, %3859
  %3915 = fsub fast float -0.000000e+00, %3912
  %3916 = fsub fast float -0.000000e+00, %3913
  %3917 = fsub fast float -0.000000e+00, %3914
  %3918 = call float @dx.op.dot3.f32(i32 55, float %3915, float %3916, float %3917, float %3846, float %3847, float %3848)  ; Dot3(ax,ay,az,bx,by,bz)
  %3919 = fcmp fast ogt float %3918, 0.000000e+00
  %3920 = uitofp i1 %3919 to float
  br label %3921

; <label>:3921                                    ; preds = %3900, %3823
  %3922 = phi float [ %3920, %3900 ], [ 1.000000e+00, %3823 ]
  %3923 = phi float [ %3909, %3900 ], [ %3892, %3823 ]
  %3924 = phi float [ %3910, %3900 ], [ %3893, %3823 ]
  %3925 = phi float [ %3911, %3900 ], [ %3894, %3823 ]
  %3926 = call float @dx.op.dot3.f32(i32 55, float %3846, float %3847, float %3848, float %3923, float %3924, float %3925)  ; Dot3(ax,ay,az,bx,by,bz)
  %3927 = fmul fast float %3926, %3926
  %3928 = call float @dx.op.unary.f32(i32 7, float %3927)  ; Saturate(value)
  %3929 = fsub fast float 1.000000e+00, %3928
  %3930 = fmul fast float %3929, 5.000000e-01
  %3931 = fcmp fast ogt float %3926, 0.000000e+00
  %3932 = fsub fast float 1.000000e+00, %3930
  %3933 = select i1 %3931, float %3930, float %3932
  %3934 = fmul fast float %3933, %3881
  %3935 = fadd fast float %3934, %3879
  %3936 = fmul fast float %3935, 0x3EF0001000000000
  %3937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %3936, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3938 = extractvalue %dx.types.ResRet.f32 %3937, 0
  %3939 = fmul fast float %3926, %3863
  %3940 = fadd fast float %3939, %3864
  %3941 = call float @dx.op.unary.f32(i32 7, float %3940)  ; Saturate(value)
  %3942 = select i1 %3885, float 1.000000e+00, float %3941
  %3943 = select i1 %3885, float %3941, float 1.000000e+00
  %3944 = fmul fast float %3890, %3860
  %3945 = fsub fast float 1.000000e+00, %3944
  %3946 = fmul fast float %3945, %3866
  %3947 = call float @dx.op.unary.f32(i32 7, float %3946)  ; Saturate(value)
  %3948 = fmul fast float %3947, %3943
  %3949 = fmul fast float %3948, 2.000000e+00
  %3950 = fsub fast float 3.000000e+00, %3949
  %3951 = fmul fast float %3938, %3922
  %3952 = fmul fast float %3948, %3948
  %3953 = fmul fast float %3952, %3951
  %3954 = fmul fast float %3953, %3950
  %3955 = call float @dx.op.binary.f32(i32 36, float %3954, float %3954)  ; FMin(a,b)
  %3956 = call float @dx.op.binary.f32(i32 36, float %3954, float %3955)  ; FMin(a,b)
  %3957 = fcmp fast ogt float %3956, 0.000000e+00
  br i1 %3957, label %3966, label %3958, !dx.controlflow.hints !132

; <label>:3958                                    ; preds = %4355, %4105, %3921
  %3959 = phi float [ %3825, %4105 ], [ %3825, %3921 ], [ %4378, %4355 ]
  %3960 = phi float [ %3826, %4105 ], [ %3826, %3921 ], [ %4379, %4355 ]
  %3961 = phi float [ %3827, %4105 ], [ %3827, %3921 ], [ %4380, %4355 ]
  %3962 = phi float [ %3828, %4105 ], [ %3828, %3921 ], [ %4372, %4355 ]
  %3963 = phi float [ %3829, %4105 ], [ %3829, %3921 ], [ %4373, %4355 ]
  %3964 = phi float [ %3830, %4105 ], [ %3830, %3921 ], [ %4374, %4355 ]
  %3965 = icmp eq i32 %3824, %3834
  br i1 %3965, label %4381, label %3823

; <label>:3966                                    ; preds = %3921
  %3967 = icmp eq i32 %3882, 255
  br i1 %3967, label %4105, label %3968, !dx.controlflow.hints !133

; <label>:3968                                    ; preds = %3966
  %3969 = mul nuw nsw i32 %3882, 176
  %3970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3969, i32 undef)  ; BufferLoad(srv,index,wot)
  %3971 = extractvalue %dx.types.ResRet.f32 %3970, 0
  %3972 = extractvalue %dx.types.ResRet.f32 %3970, 1
  %3973 = extractvalue %dx.types.ResRet.f32 %3970, 2
  %3974 = extractvalue %dx.types.ResRet.f32 %3970, 3
  %3975 = add nuw nsw i32 %3969, 16
  %3976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3975, i32 undef)  ; BufferLoad(srv,index,wot)
  %3977 = extractvalue %dx.types.ResRet.f32 %3976, 0
  %3978 = extractvalue %dx.types.ResRet.f32 %3976, 1
  %3979 = add nuw nsw i32 %3969, 32
  %3980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3979, i32 undef)  ; BufferLoad(srv,index,wot)
  %3981 = extractvalue %dx.types.ResRet.f32 %3980, 0
  %3982 = extractvalue %dx.types.ResRet.f32 %3980, 1
  %3983 = add nuw nsw i32 %3969, 48
  %3984 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3985 = extractvalue %dx.types.ResRet.f32 %3984, 0
  %3986 = extractvalue %dx.types.ResRet.f32 %3984, 1
  %3987 = extractvalue %dx.types.ResRet.f32 %3984, 2
  %3988 = extractvalue %dx.types.ResRet.f32 %3984, 3
  %3989 = add nuw nsw i32 %3969, 64
  %3990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3989, i32 undef)  ; BufferLoad(srv,index,wot)
  %3991 = extractvalue %dx.types.ResRet.f32 %3990, 0
  %3992 = extractvalue %dx.types.ResRet.f32 %3990, 1
  %3993 = extractvalue %dx.types.ResRet.f32 %3990, 2
  %3994 = extractvalue %dx.types.ResRet.f32 %3990, 3
  %3995 = add nuw nsw i32 %3969, 80
  %3996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3995, i32 undef)  ; BufferLoad(srv,index,wot)
  %3997 = extractvalue %dx.types.ResRet.f32 %3996, 0
  %3998 = extractvalue %dx.types.ResRet.f32 %3996, 1
  %3999 = extractvalue %dx.types.ResRet.f32 %3996, 2
  %4000 = extractvalue %dx.types.ResRet.f32 %3996, 3
  %4001 = add nuw nsw i32 %3969, 96
  %4002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4001, i32 undef)  ; BufferLoad(srv,index,wot)
  %4003 = extractvalue %dx.types.ResRet.f32 %4002, 0
  %4004 = extractvalue %dx.types.ResRet.f32 %4002, 1
  %4005 = extractvalue %dx.types.ResRet.f32 %4002, 2
  %4006 = extractvalue %dx.types.ResRet.f32 %4002, 3
  %4007 = bitcast float %3978 to i32
  %4008 = fmul fast float %3985, %133
  %4009 = call float @dx.op.tertiary.f32(i32 46, float %134, float %3991, float %4008)  ; FMad(a,b,c)
  %4010 = call float @dx.op.tertiary.f32(i32 46, float %135, float %3997, float %4009)  ; FMad(a,b,c)
  %4011 = fadd fast float %4010, %4003
  %4012 = fmul fast float %3986, %133
  %4013 = call float @dx.op.tertiary.f32(i32 46, float %134, float %3992, float %4012)  ; FMad(a,b,c)
  %4014 = call float @dx.op.tertiary.f32(i32 46, float %135, float %3998, float %4013)  ; FMad(a,b,c)
  %4015 = fadd fast float %4014, %4004
  %4016 = fmul fast float %3987, %133
  %4017 = call float @dx.op.tertiary.f32(i32 46, float %134, float %3993, float %4016)  ; FMad(a,b,c)
  %4018 = call float @dx.op.tertiary.f32(i32 46, float %135, float %3999, float %4017)  ; FMad(a,b,c)
  %4019 = fadd fast float %4018, %4005
  %4020 = fmul fast float %3988, %133
  %4021 = call float @dx.op.tertiary.f32(i32 46, float %134, float %3994, float %4020)  ; FMad(a,b,c)
  %4022 = call float @dx.op.tertiary.f32(i32 46, float %135, float %4000, float %4021)  ; FMad(a,b,c)
  %4023 = fadd fast float %4022, %4006
  %4024 = fdiv fast float %4011, %4023
  %4025 = fdiv fast float %4015, %4023
  %4026 = fdiv fast float %4019, %4023
  %4027 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4026)  ; FMax(a,b)
  %4028 = fmul fast float %881, 0x401921FB60000000
  %4029 = call float @dx.op.unary.f32(i32 13, float %4028)  ; Sin(value)
  %4030 = call float @dx.op.unary.f32(i32 12, float %4028)  ; Cos(value)
  %4031 = fmul fast float %4030, %3982
  %4032 = call float @dx.op.tertiary.f32(i32 46, float %4029, float %3982, float 0.000000e+00)  ; FMad(a,b,c)
  %4033 = fmul fast float %3982, %4029
  %4034 = fsub fast float -0.000000e+00, %4033
  %4035 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %3982, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4036

; <label>:4036                                    ; preds = %4036, %3968
  %4037 = phi float [ 0.000000e+00, %3968 ], [ %4069, %4036 ]
  %4038 = phi float [ 0.000000e+00, %3968 ], [ %4071, %4036 ]
  %4039 = phi i32 [ 0, %3968 ], [ %4072, %4036 ]
  %4040 = mul i32 %4039, 2
  %4041 = add i32 0, %4040
  %4042 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4041
  %4043 = load float, float* %4042, align 4
  %4044 = mul i32 %4039, 2
  %4045 = add i32 1, %4044
  %4046 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4045
  %4047 = load float, float* %4046, align 4
  %4048 = fmul fast float %4031, %4043
  %4049 = call float @dx.op.tertiary.f32(i32 46, float %4047, float %4034, float %4048)  ; FMad(a,b,c)
  %4050 = fmul fast float %4043, %4032
  %4051 = call float @dx.op.tertiary.f32(i32 46, float %4047, float %4035, float %4050)  ; FMad(a,b,c)
  %4052 = fadd fast float %4049, %4024
  %4053 = fadd fast float %4051, %4025
  %4054 = fmul fast float %4052, %3977
  %4055 = fmul fast float %4053, %3977
  %4056 = call float @dx.op.binary.f32(i32 35, float %4054, float %3973)  ; FMax(a,b)
  %4057 = call float @dx.op.binary.f32(i32 35, float %4055, float %3973)  ; FMax(a,b)
  %4058 = call float @dx.op.binary.f32(i32 36, float %4056, float %3974)  ; FMin(a,b)
  %4059 = call float @dx.op.binary.f32(i32 36, float %4057, float %3974)  ; FMin(a,b)
  %4060 = fadd fast float %4058, %3971
  %4061 = fadd fast float %4059, %3972
  %4062 = uitofp i32 %4007 to float
  %4063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %52, float %4060, float %4061, float %4062, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4064 = extractvalue %dx.types.ResRet.f32 %4063, 0
  %4065 = fsub fast float %4064, %4027
  %4066 = fsub fast float %4065, %3981
  %4067 = fcmp fast ogt float %4066, 0.000000e+00
  %4068 = select i1 %4067, float 1.000000e+00, float 0.000000e+00
  %4069 = fadd fast float %4068, %4037
  %4070 = select i1 %4067, float %4066, float 0.000000e+00
  %4071 = fadd fast float %4070, %4038
  %4072 = add nuw nsw i32 %4039, 1
  %4073 = icmp eq i32 %4072, 8
  br i1 %4073, label %4074, label %4036

; <label>:4074                                    ; preds = %4036
  %4075 = fdiv fast float 1.000000e+00, %4069
  %4076 = fmul fast float %4075, %4071
  %4077 = fdiv fast float 1.000000e+00, %4027
  %4078 = fmul fast float %4076, %4077
  %4079 = call float @dx.op.unary.f32(i32 7, float %4078)  ; Saturate(value)
  %4080 = call float @dx.op.binary.f32(i32 35, float %4079, float 0.000000e+00)  ; FMax(a,b)
  %4081 = fmul fast float %4069, 1.250000e-01
  %4082 = call float @dx.op.unary.f32(i32 7, float %4081)  ; Saturate(value)
  %4083 = fmul fast float %4082, 2.000000e+00
  %4084 = fadd fast float %4083, -1.000000e+00
  %4085 = fcmp fast ogt float %4084, 0.000000e+00
  %4086 = fcmp fast olt float %4084, 0.000000e+00
  %4087 = zext i1 %4085 to i32
  %4088 = zext i1 %4086 to i32
  %4089 = sub nsw i32 %4087, %4088
  %4090 = sitofp i32 %4089 to float
  %4091 = fmul fast float %4090, %4084
  %4092 = fsub fast float 1.000000e+00, %4091
  %4093 = fmul fast float %4092, %4092
  %4094 = fmul fast float %4093, %4092
  %4095 = fsub fast float %4092, %4094
  %4096 = fmul fast float %4095, %4080
  %4097 = fsub fast float 1.000000e+00, %4094
  %4098 = fsub fast float %4097, %4096
  %4099 = fmul fast float %4090, 5.000000e-01
  %4100 = fmul fast float %4099, %4098
  %4101 = fsub fast float -5.000000e-01, %4100
  %4102 = fmul fast float %4101, %3942
  %4103 = fadd fast float %4102, 1.000000e+00
  %4104 = fmul fast float %4103, %3954
  br label %4105

; <label>:4105                                    ; preds = %4074, %3966
  %4106 = phi float [ %4104, %4074 ], [ %3954, %3966 ]
  %4107 = call float @dx.op.binary.f32(i32 36, float %4106, float %4106)  ; FMin(a,b)
  %4108 = call float @dx.op.binary.f32(i32 36, float %4106, float %4107)  ; FMin(a,b)
  %4109 = fcmp fast ogt float %4108, 0.000000e+00
  br i1 %4109, label %4110, label %3958, !dx.controlflow.hints !134

; <label>:4110                                    ; preds = %4105
  %4111 = fmul fast float %4106, %3875
  %4112 = fmul fast float %4106, %3876
  %4113 = fmul fast float %4106, %3877
  %4114 = fsub fast float %3892, %1421
  %4115 = fsub fast float %3893, %1422
  %4116 = fsub fast float %3894, %1423
  %4117 = call float @dx.op.dot3.f32(i32 55, float %4114, float %4115, float %4116, float %4114, float %4115, float %4116)  ; Dot3(ax,ay,az,bx,by,bz)
  %4118 = call float @dx.op.unary.f32(i32 25, float %4117)  ; Rsqrt(value)
  %4119 = fmul fast float %4118, %4114
  %4120 = fmul fast float %4118, %4115
  %4121 = fmul fast float %4118, %4116
  %4122 = call float @dx.op.dot3.f32(i32 55, float %3892, float %3893, float %3894, float %1393, float %1394, float %1395)  ; Dot3(ax,ay,az,bx,by,bz)
  %4123 = call float @dx.op.dot3.f32(i32 55, float %1530, float %1531, float %1532, float %4119, float %4120, float %4121)  ; Dot3(ax,ay,az,bx,by,bz)
  %4124 = call float @dx.op.unary.f32(i32 7, float %4122)  ; Saturate(value)
  %4125 = fmul fast float %4124, %3899
  %4126 = fmul fast float %4124, %4124
  %4127 = fmul fast float %4126, %1547
  %4128 = call float @dx.op.unary.f32(i32 7, float %4127)  ; Saturate(value)
  %4129 = fmul fast float %4125, %4128
  %4130 = bitcast float %3889 to i32
  %4131 = ashr i32 %4130, 1
  %4132 = sub nsw i32 1597463007, %4131
  %4133 = bitcast i32 %4132 to float
  %4134 = fmul fast float %4133, %3886
  %4135 = fmul fast float %4133, %3887
  %4136 = fmul fast float %4133, %3888
  %4137 = fsub fast float %4134, %1421
  %4138 = fsub fast float %4135, %1422
  %4139 = fsub fast float %4136, %1423
  %4140 = call float @dx.op.dot3.f32(i32 55, float %4137, float %4138, float %4139, float %4137, float %4138, float %4139)  ; Dot3(ax,ay,az,bx,by,bz)
  %4141 = call float @dx.op.unary.f32(i32 25, float %4140)  ; Rsqrt(value)
  %4142 = fmul fast float %4137, %4141
  %4143 = fmul fast float %4138, %4141
  %4144 = fmul fast float %4139, %4141
  %4145 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float %4142, float %4143, float %4144)  ; Dot3(ax,ay,az,bx,by,bz)
  %4146 = fmul fast float %4145, %4145
  %4147 = call float @dx.op.unary.f32(i32 6, float %4122)  ; FAbs(value)
  %4148 = fsub fast float 1.000000e+00, %1476
  %4149 = call float @dx.op.binary.f32(i32 35, float %4148, float 0x3F847AE140000000)  ; FMax(a,b)
  %4150 = fmul fast float %4149, %4149
  %4151 = fmul fast float %4150, %4150
  %4152 = fsub fast float 1.000000e+00, %4151
  %4153 = fmul fast float %1535, %1535
  %4154 = fmul fast float %4153, %4152
  %4155 = fadd fast float %4154, %4151
  %4156 = bitcast float %4155 to i32
  %4157 = ashr i32 %4156, 1
  %4158 = add nsw i32 %4157, 532487669
  %4159 = bitcast i32 %4158 to float
  %4160 = fadd fast float %4159, %1535
  %4161 = fmul fast float %4151, %4146
  %4162 = fsub fast float 1.000000e+00, %4146
  %4163 = fadd fast float %4162, %4161
  %4164 = fmul fast float %4147, %4147
  %4165 = fmul fast float %4164, %4152
  %4166 = fadd fast float %4165, %4151
  %4167 = bitcast float %4166 to i32
  %4168 = ashr i32 %4167, 1
  %4169 = add nsw i32 %4168, 532487669
  %4170 = bitcast i32 %4169 to float
  %4171 = fadd fast float %4170, %4147
  %4172 = fmul fast float %4163, %4163
  %4173 = fmul fast float %4172, %4160
  %4174 = fmul fast float %4173, %4171
  %4175 = fdiv fast float 1.000000e+00, %4174
  %4176 = bitcast float %4151 to i32
  %4177 = sitofp i32 %4176 to float
  %4178 = fmul fast float %4177, 0x3FE7F73180000000
  %4179 = fadd fast float %4178, 0x41AFE27C40000000
  %4180 = fptosi float %4179 to i32
  %4181 = bitcast i32 %4180 to float
  %4182 = fmul fast float %3854, 0x3FD80E9D60000000
  %4183 = fmul fast float %4182, %4133
  %4184 = fadd fast float %4181, %4183
  %4185 = bitcast float %4184 to i32
  %4186 = sub nsw i32 2129859010, %4185
  %4187 = bitcast i32 %4186 to float
  %4188 = fmul fast float %4151, %4175
  %4189 = fmul fast float %4188, %4181
  %4190 = fmul fast float %4189, %4187
  %4191 = call float @dx.op.unary.f32(i32 6, float %4123)  ; FAbs(value)
  %4192 = fsub fast float 1.000000e+00, %4191
  %4193 = bitcast float %4192 to i32
  %4194 = sitofp i32 %4193 to float
  %4195 = fmul fast float %4194, 5.000000e+00
  %4196 = fadd fast float %4195, 0xC1EFBF8940000000
  %4197 = fptosi float %4196 to i32
  %4198 = bitcast i32 %4197 to float
  %4199 = fmul fast float %4198, %2360
  %4200 = fmul fast float %4198, %2361
  %4201 = fmul fast float %4198, %2362
  %4202 = fadd fast float %4199, %1414
  %4203 = fadd fast float %4200, %1415
  %4204 = fadd fast float %4201, %1533
  %4205 = select i1 %2373, float %4191, float 0.000000e+00
  %4206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %51, float %2370, float %4205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4207 = extractvalue %dx.types.ResRet.f32 %4206, 0
  %4208 = extractvalue %dx.types.ResRet.f32 %4206, 1
  %4209 = extractvalue %dx.types.ResRet.f32 %4206, 2
  %4210 = fadd fast float %4207, -5.000000e-01
  %4211 = fadd fast float %4208, -5.000000e-01
  %4212 = fadd fast float %4209, -5.000000e-01
  %4213 = fmul fast float %2385, %4210
  %4214 = fmul fast float %2389, %4211
  %4215 = fmul fast float %2393, %4212
  %4216 = fadd fast float %4202, %4213
  %4217 = fadd fast float %4203, %4214
  %4218 = fadd fast float %4204, %4215
  %4219 = call float @dx.op.unary.f32(i32 7, float %4216)  ; Saturate(value)
  %4220 = call float @dx.op.unary.f32(i32 7, float %4217)  ; Saturate(value)
  %4221 = call float @dx.op.unary.f32(i32 7, float %4218)  ; Saturate(value)
  %4222 = fmul fast float %4122, 9.843750e-01
  %4223 = fmul fast float %1476, 9.843750e-01
  %4224 = fadd fast float %4222, 7.812500e-03
  %4225 = fadd fast float %4223, 7.812500e-03
  %4226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %4224, float %4225, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4227 = extractvalue %dx.types.ResRet.f32 %4226, 2
  %4228 = extractvalue %dx.types.ResRet.f32 %4226, 3
  %4229 = select i1 %2373, float %4122, float 0.000000e+00
  %4230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %51, float %2370, float %4229, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4231 = extractvalue %dx.types.ResRet.f32 %4230, 0
  %4232 = extractvalue %dx.types.ResRet.f32 %4230, 1
  %4233 = extractvalue %dx.types.ResRet.f32 %4230, 2
  %4234 = fadd fast float %4231, -5.000000e-01
  %4235 = fadd fast float %4232, -5.000000e-01
  %4236 = fadd fast float %4233, -5.000000e-01
  %4237 = fmul fast float %2360, 4.000000e+00
  %4238 = fmul fast float %4237, %2372
  %4239 = fmul fast float %4238, %4234
  %4240 = fmul fast float %2361, 4.000000e+00
  %4241 = fmul fast float %4240, %2372
  %4242 = fmul fast float %4241, %4235
  %4243 = fmul fast float %2362, 4.000000e+00
  %4244 = fmul fast float %4243, %2372
  %4245 = fmul fast float %4244, %4236
  %4246 = fadd fast float %4239, %4227
  %4247 = fmul fast float %4246, %1414
  %4248 = fadd fast float %4247, %4228
  %4249 = fadd fast float %4242, %4227
  %4250 = fmul fast float %4249, %1415
  %4251 = fadd fast float %4250, %4228
  %4252 = fadd fast float %4245, %4227
  %4253 = fmul fast float %4252, %1533
  %4254 = fadd fast float %4253, %4228
  %4255 = call float @dx.op.unary.f32(i32 7, float %4248)  ; Saturate(value)
  %4256 = call float @dx.op.unary.f32(i32 7, float %4251)  ; Saturate(value)
  %4257 = call float @dx.op.unary.f32(i32 7, float %4254)  ; Saturate(value)
  %4258 = call float @dx.op.binary.f32(i32 35, float %4256, float %4257)  ; FMax(a,b)
  %4259 = call float @dx.op.binary.f32(i32 35, float %4255, float %4258)  ; FMax(a,b)
  %4260 = fsub fast float 1.000000e+00, %4259
  %4261 = fsub fast float -0.000000e+00, %1393
  %4262 = fsub fast float -0.000000e+00, %1394
  %4263 = fsub fast float -0.000000e+00, %1395
  %4264 = call float @dx.op.dot3.f32(i32 55, float %3892, float %3893, float %3894, float %4261, float %4262, float %4263)  ; Dot3(ax,ay,az,bx,by,bz)
  %4265 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4266 = fmul fast float %4265, 9.843750e-01
  %4267 = fadd fast float %4266, 7.812500e-03
  %4268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %4267, float %4225, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4269 = extractvalue %dx.types.ResRet.f32 %4268, 2
  %4270 = extractvalue %dx.types.ResRet.f32 %4268, 3
  %4271 = select i1 %2373, float %4265, float 0.000000e+00
  %4272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %51, float %2370, float %4271, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4273 = fmul fast float %1415, 0x4012D0A400000000
  %4274 = fadd fast float %4273, 0x3FDB6377A0000000
  %4275 = fmul fast float %4148, %4274
  %4276 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4277 = fsub fast float %4134, %1540
  %4278 = fsub fast float %4135, %1541
  %4279 = fsub fast float %4136, %1542
  %4280 = call float @dx.op.dot3.f32(i32 55, float %4277, float %4278, float %4279, float %4277, float %4278, float %4279)  ; Dot3(ax,ay,az,bx,by,bz)
  %4281 = call float @dx.op.unary.f32(i32 25, float %4280)  ; Rsqrt(value)
  %4282 = fmul fast float %4277, %4281
  %4283 = fmul fast float %4278, %4281
  %4284 = fmul fast float %4279, %4281
  %4285 = call float @dx.op.dot3.f32(i32 55, float %4261, float %4262, float %4263, float %4282, float %4283, float %4284)  ; Dot3(ax,ay,az,bx,by,bz)
  %4286 = fmul fast float %4285, %4285
  %4287 = call float @dx.op.unary.f32(i32 6, float %4265)  ; FAbs(value)
  %4288 = call float @dx.op.binary.f32(i32 35, float %4276, float 0x3F847AE140000000)  ; FMax(a,b)
  %4289 = fmul fast float %4288, %4288
  %4290 = fmul fast float %4289, %4289
  %4291 = fsub fast float 1.000000e+00, %4290
  %4292 = fmul fast float %4290, %4286
  %4293 = fsub fast float 1.000000e+00, %4286
  %4294 = fadd fast float %4293, %4292
  %4295 = bitcast float %4290 to i32
  %4296 = sitofp i32 %4295 to float
  %4297 = fmul fast float %4296, 0x3FE7F73180000000
  %4298 = fadd fast float %4297, 0x41AFE27C40000000
  %4299 = fptosi float %4298 to i32
  %4300 = bitcast i32 %4299 to float
  br i1 %3884, label %4301, label %4355

; <label>:4301                                    ; preds = %4110
  %4302 = fmul fast float %4294, %4294
  %4303 = fmul fast float %4153, %4291
  %4304 = fadd fast float %4303, %4290
  %4305 = bitcast float %4304 to i32
  %4306 = ashr i32 %4305, 1
  %4307 = add nsw i32 %4306, 532487669
  %4308 = bitcast i32 %4307 to float
  %4309 = fadd fast float %4308, %1535
  %4310 = fmul fast float %4302, %4309
  %4311 = fmul fast float %4287, %4287
  %4312 = fmul fast float %4311, %4291
  %4313 = fadd fast float %4312, %4290
  %4314 = bitcast float %4313 to i32
  %4315 = ashr i32 %4314, 1
  %4316 = add nsw i32 %4315, 532487669
  %4317 = bitcast i32 %4316 to float
  %4318 = fadd fast float %4317, %4287
  %4319 = fmul fast float %4310, %4318
  %4320 = fdiv fast float 1.000000e+00, %4319
  %4321 = fmul fast float %4290, %4320
  %4322 = fmul fast float %4321, %4300
  %4323 = fadd fast float %4300, %4183
  %4324 = bitcast float %4323 to i32
  %4325 = sub nsw i32 2129859010, %4324
  %4326 = bitcast i32 %4325 to float
  %4327 = fmul fast float %4322, %4326
  %4328 = extractvalue %dx.types.ResRet.f32 %4272, 0
  %4329 = fadd fast float %4328, -5.000000e-01
  %4330 = fmul fast float %4238, %4329
  %4331 = fadd fast float %4330, %4269
  %4332 = fmul fast float %4331, %1414
  %4333 = fadd fast float %4332, %4270
  %4334 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4335 = extractvalue %dx.types.ResRet.f32 %4272, 1
  %4336 = fadd fast float %4335, -5.000000e-01
  %4337 = fmul fast float %4241, %4336
  %4338 = fadd fast float %4337, %4269
  %4339 = fmul fast float %4338, %1415
  %4340 = fadd fast float %4339, %4270
  %4341 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4342 = extractvalue %dx.types.ResRet.f32 %4272, 2
  %4343 = fadd fast float %4342, -5.000000e-01
  %4344 = fmul fast float %4244, %4343
  %4345 = fadd fast float %4344, %4269
  %4346 = fmul fast float %4345, %1533
  %4347 = fadd fast float %4346, %4270
  %4348 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4349 = call float @dx.op.binary.f32(i32 35, float %4341, float %4348)  ; FMax(a,b)
  %4350 = call float @dx.op.binary.f32(i32 35, float %4334, float %4349)  ; FMax(a,b)
  %4351 = fsub fast float 1.000000e+00, %4350
  %4352 = fmul fast float %4265, %3899
  %4353 = fmul fast float %4352, %4351
  %4354 = fmul fast float %4353, %4327
  br label %4355

; <label>:4355                                    ; preds = %4301, %4110
  %4356 = phi float [ %4354, %4301 ], [ 0.000000e+00, %4110 ]
  %4357 = fmul fast float %4219, %4129
  %4358 = fmul fast float %4357, %4190
  %4359 = fmul fast float %4220, %4129
  %4360 = fmul fast float %4359, %4190
  %4361 = fmul fast float %4221, %4129
  %4362 = fmul fast float %4361, %4190
  %4363 = fadd fast float %4356, %4358
  %4364 = fadd fast float %4356, %4360
  %4365 = fadd fast float %4356, %4362
  %4366 = fmul fast float %4129, %4111
  %4367 = fmul fast float %4366, %4260
  %4368 = fmul fast float %4129, %4112
  %4369 = fmul fast float %4368, %4260
  %4370 = fmul fast float %4129, %4113
  %4371 = fmul fast float %4370, %4260
  %4372 = fadd fast float %4367, %3828
  %4373 = fadd fast float %4369, %3829
  %4374 = fadd fast float %4371, %3830
  %4375 = fmul fast float %4363, %4111
  %4376 = fmul fast float %4364, %4112
  %4377 = fmul fast float %4365, %4113
  %4378 = fadd fast float %4375, %3825
  %4379 = fadd fast float %4376, %3826
  %4380 = fadd fast float %4377, %3827
  br label %3958

; <label>:4381                                    ; preds = %3958
  br label %4382

; <label>:4382                                    ; preds = %4381, %3791
  %4383 = phi float [ %3793, %3791 ], [ %3959, %4381 ]
  %4384 = phi float [ %3794, %3791 ], [ %3960, %4381 ]
  %4385 = phi float [ %3795, %3791 ], [ %3961, %4381 ]
  %4386 = phi float [ %3796, %3791 ], [ %3962, %4381 ]
  %4387 = phi float [ %3797, %3791 ], [ %3963, %4381 ]
  %4388 = phi float [ %3798, %3791 ], [ %3964, %4381 ]
  %4389 = add i32 %3792, 1
  %4390 = icmp ugt i32 %4389, %3788
  br i1 %4390, label %4391, label %3791

; <label>:4391                                    ; preds = %4382
  br label %4392

; <label>:4392                                    ; preds = %4391, %3741, %3730
  %4393 = phi float [ %3732, %3730 ], [ %3732, %3741 ], [ %4383, %4391 ]
  %4394 = phi float [ %3733, %3730 ], [ %3733, %3741 ], [ %4384, %4391 ]
  %4395 = phi float [ %3734, %3730 ], [ %3734, %3741 ], [ %4385, %4391 ]
  %4396 = phi float [ %3735, %3730 ], [ %3735, %3741 ], [ %4386, %4391 ]
  %4397 = phi float [ %3736, %3730 ], [ %3736, %3741 ], [ %4387, %4391 ]
  %4398 = phi float [ %3737, %3730 ], [ %3737, %3741 ], [ %4388, %4391 ]
  %4399 = and i32 %1472, 255
  %4400 = uitofp i32 %4399 to float
  %4401 = fmul fast float %4400, 0x3F70101020000000
  %4402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.f32 %4402, 2
  %4404 = extractvalue %dx.types.CBufRet.f32 %4402, 3
  %4405 = fmul fast float %103, %4403
  %4406 = fmul fast float %105, %4404
  %4407 = fsub fast float 1.000000e+00, %4405
  %4408 = fsub fast float 1.000000e+00, %4406
  %4409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4410 = extractvalue %dx.types.CBufRet.f32 %4409, 0
  %4411 = extractvalue %dx.types.CBufRet.f32 %4409, 1
  %4412 = extractvalue %dx.types.CBufRet.f32 %4409, 2
  %4413 = fmul fast float %4407, %4410
  %4414 = fmul fast float %4407, %4411
  %4415 = fmul fast float %4407, %4412
  %4416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4417 = extractvalue %dx.types.CBufRet.f32 %4416, 0
  %4418 = extractvalue %dx.types.CBufRet.f32 %4416, 1
  %4419 = extractvalue %dx.types.CBufRet.f32 %4416, 2
  %4420 = fmul fast float %4408, %4417
  %4421 = fmul fast float %4408, %4418
  %4422 = fmul fast float %4408, %4419
  %4423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4424 = extractvalue %dx.types.CBufRet.f32 %4423, 0
  %4425 = extractvalue %dx.types.CBufRet.f32 %4423, 1
  %4426 = extractvalue %dx.types.CBufRet.f32 %4423, 2
  %4427 = fadd fast float %4420, %4424
  %4428 = fadd fast float %4427, %4413
  %4429 = fadd fast float %4421, %4425
  %4430 = fadd fast float %4429, %4414
  %4431 = fadd fast float %4422, %4426
  %4432 = fadd fast float %4431, %4415
  %4433 = fmul fast float %4428, %71
  %4434 = fmul fast float %4430, %71
  %4435 = fmul fast float %4432, %71
  %4436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4437 = extractvalue %dx.types.CBufRet.f32 %4436, 2
  %4438 = extractvalue %dx.types.CBufRet.f32 %4436, 3
  %4439 = fmul fast float %4437, %78
  %4440 = fmul fast float %4438, %79
  %4441 = fptoui float %78 to i32
  %4442 = fptoui float %79 to i32
  %4443 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4441, i32 %4442, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4444 = extractvalue %dx.types.ResRet.f32 %4443, 0
  %4445 = fcmp fast olt float %4444, -1.000000e+00
  %4446 = fcmp fast ogt float %4444, -1.000000e+00
  %4447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4448 = extractvalue %dx.types.CBufRet.f32 %4447, 1
  %4449 = select i1 %4446, float %4448, float 1.000000e+00
  %4450 = fadd fast float %4444, 1.000000e+00
  %4451 = fmul fast float %4449, %4450
  %4452 = call float @dx.op.unary.f32(i32 6, float %4451)  ; FAbs(value)
  %4453 = fsub fast float %4452, %71
  %4454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %4455 = extractvalue %dx.types.CBufRet.f32 %4454, 2
  %4456 = fsub fast float %4453, %4455
  %4457 = extractvalue %dx.types.CBufRet.f32 %4454, 3
  %4458 = fmul fast float %4457, %4401
  %4459 = fmul fast float %4458, %4456
  %4460 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 356)  ; CBufferLoadLegacy(handle,regIndex)
  %4462 = extractvalue %dx.types.CBufRet.f32 %4461, 1
  %4463 = extractvalue %dx.types.CBufRet.f32 %4461, 0
  %4464 = extractvalue %dx.types.CBufRet.f32 %4461, 3
  %4465 = extractvalue %dx.types.CBufRet.f32 %4461, 2
  %4466 = select i1 %4445, float %4462, float %4464
  %4467 = select i1 %4445, float %4463, float %4465
  %4468 = fsub fast float %4453, %4467
  %4469 = fmul fast float %4468, %4466
  %4470 = fsub fast float 1.000000e+00, %4401
  %4471 = fadd fast float %4470, %4469
  %4472 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %4474 = extractvalue %dx.types.CBufRet.f32 %4473, 1
  %4475 = extractvalue %dx.types.CBufRet.f32 %4473, 2
  %4476 = fsub fast float 1.000000e+00, %4440
  %4477 = fsub fast float 1.000000e+00, %4439
  %4478 = fmul fast float %4440, %4439
  %4479 = fmul fast float %4478, %4476
  %4480 = fmul fast float %4479, %4477
  %4481 = fmul fast float %4480, %4474
  %4482 = call float @dx.op.unary.f32(i32 23, float %4481)  ; Log(value)
  %4483 = fmul fast float %4482, %4475
  %4484 = call float @dx.op.unary.f32(i32 21, float %4483)  ; Exp(value)
  %4485 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 66)  ; CBufferLoadLegacy(handle,regIndex)
  %4487 = extractvalue %dx.types.CBufRet.f32 %4486, 2
  %4488 = extractvalue %dx.types.CBufRet.f32 %4486, 3
  %4489 = extractvalue %dx.types.CBufRet.f32 %4486, 0
  %4490 = fsub fast float %71, %4489
  %4491 = extractvalue %dx.types.CBufRet.f32 %4473, 0
  %4492 = fmul fast float %4490, %4491
  %4493 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4494 = fsub fast float %4488, %4487
  %4495 = fmul fast float %4493, %4494
  %4496 = fadd fast float %4495, %4487
  %4497 = fmul fast float %4496, %4460
  %4498 = fmul fast float %4497, %1393
  %4499 = fmul fast float %4497, %1394
  %4500 = fadd fast float %4498, %4433
  %4501 = fadd fast float %4499, %4434
  %4502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4503 = extractvalue %dx.types.CBufRet.f32 %4502, 0
  %4504 = extractvalue %dx.types.CBufRet.f32 %4502, 1
  %4505 = extractvalue %dx.types.CBufRet.f32 %4502, 2
  %4506 = extractvalue %dx.types.CBufRet.f32 %4502, 3
  %4507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4508 = extractvalue %dx.types.CBufRet.f32 %4507, 0
  %4509 = extractvalue %dx.types.CBufRet.f32 %4507, 1
  %4510 = extractvalue %dx.types.CBufRet.f32 %4507, 2
  %4511 = extractvalue %dx.types.CBufRet.f32 %4507, 3
  %4512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4513 = extractvalue %dx.types.CBufRet.f32 %4512, 0
  %4514 = extractvalue %dx.types.CBufRet.f32 %4512, 1
  %4515 = extractvalue %dx.types.CBufRet.f32 %4512, 2
  %4516 = extractvalue %dx.types.CBufRet.f32 %4512, 3
  %4517 = fmul fast float %4500, %4503
  %4518 = call float @dx.op.tertiary.f32(i32 46, float %4501, float %4504, float %4517)  ; FMad(a,b,c)
  %4519 = call float @dx.op.tertiary.f32(i32 46, float %4435, float %4505, float %4518)  ; FMad(a,b,c)
  %4520 = fadd fast float %4519, %4506
  %4521 = fmul fast float %4500, %4508
  %4522 = call float @dx.op.tertiary.f32(i32 46, float %4501, float %4509, float %4521)  ; FMad(a,b,c)
  %4523 = call float @dx.op.tertiary.f32(i32 46, float %4435, float %4510, float %4522)  ; FMad(a,b,c)
  %4524 = fadd fast float %4523, %4511
  %4525 = fmul fast float %4500, %4513
  %4526 = call float @dx.op.tertiary.f32(i32 46, float %4501, float %4514, float %4525)  ; FMad(a,b,c)
  %4527 = call float @dx.op.tertiary.f32(i32 46, float %4435, float %4515, float %4526)  ; FMad(a,b,c)
  %4528 = fadd fast float %4527, %4516
  %4529 = fdiv fast float %4520, %4528
  %4530 = fdiv fast float %4524, %4528
  %4531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4532 = extractvalue %dx.types.CBufRet.f32 %4531, 0
  %4533 = extractvalue %dx.types.CBufRet.f32 %4531, 1
  %4534 = fmul fast float %4532, %4529
  %4535 = fmul fast float %4533, %4530
  %4536 = extractvalue %dx.types.CBufRet.f32 %4531, 2
  %4537 = extractvalue %dx.types.CBufRet.f32 %4531, 3
  %4538 = fadd fast float %4534, %4536
  %4539 = fadd fast float %4535, %4537
  %4540 = call float @dx.op.unary.f32(i32 7, float %4538)  ; Saturate(value)
  %4541 = call float @dx.op.unary.f32(i32 7, float %4539)  ; Saturate(value)
  %4542 = fsub fast float %4540, %4439
  %4543 = fsub fast float %4541, %4440
  %4544 = fmul fast float %4542, %4485
  %4545 = fmul fast float %4543, %4485
  %4546 = fadd fast float %4544, %4439
  %4547 = fadd fast float %4545, %4440
  %4548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %52, float %4546, float %4547, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4549 = extractvalue %dx.types.ResRet.f32 %4548, 0
  %4550 = fcmp fast ogt float %4549, -1.000000e+00
  %4551 = select i1 %4550, float %4448, float 1.000000e+00
  %4552 = fadd fast float %4549, 1.000000e+00
  %4553 = fmul fast float %4551, %4552
  %4554 = call float @dx.op.unary.f32(i32 6, float %4553)  ; FAbs(value)
  %4555 = fcmp fast ugt float %4554, %4528
  br i1 %4555, label %4557, label %4556

; <label>:4556                                    ; preds = %4392
  br label %4557

; <label>:4557                                    ; preds = %4556, %4392
  %4558 = phi float [ %4439, %4556 ], [ %4546, %4392 ]
  %4559 = phi float [ %4440, %4556 ], [ %4547, %4392 ]
  %4560 = phi float [ %71, %4556 ], [ %4528, %4392 ]
  %4561 = phi float [ %4452, %4556 ], [ %4554, %4392 ]
  br i1 %95, label %4562, label %5072

; <label>:4562                                    ; preds = %4557
  %4563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %4564 = extractvalue %dx.types.CBufRet.f32 %4563, 0
  %4565 = extractvalue %dx.types.CBufRet.f32 %4563, 1
  %4566 = extractvalue %dx.types.CBufRet.f32 %4563, 2
  %4567 = fcmp fast oge float %4565, %4560
  %4568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4569 = extractvalue %dx.types.CBufRet.i32 %4568, 0
  %4570 = and i32 %4569, 65536
  %4571 = icmp ne i32 %4570, 0
  %4572 = and i1 %4567, %4571
  br i1 %4572, label %4573, label %4654

; <label>:4573                                    ; preds = %4562
  %4574 = extractvalue %dx.types.CBufRet.f32 %4402, 0
  %4575 = extractvalue %dx.types.CBufRet.f32 %4402, 1
  %4576 = fmul fast float %4574, %4558
  %4577 = fmul fast float %4575, %4559
  %4578 = fmul fast float %4576, %4403
  %4579 = fmul fast float %4577, %4404
  %4580 = call float @dx.op.unary.f32(i32 7, float %4578)  ; Saturate(value)
  %4581 = call float @dx.op.unary.f32(i32 7, float %4579)  ; Saturate(value)
  %4582 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %51, float %4580, float %4581, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4584 = extractvalue %dx.types.ResRet.f32 %4582, 1
  %4585 = extractvalue %dx.types.ResRet.f32 %4582, 2
  %4586 = extractvalue %dx.types.ResRet.f32 %4582, 3
  %4587 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %51, float %4580, float %4581, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4588 = extractvalue %dx.types.ResRet.f32 %4587, 0
  %4589 = extractvalue %dx.types.ResRet.f32 %4587, 1
  %4590 = extractvalue %dx.types.ResRet.f32 %4587, 2
  %4591 = extractvalue %dx.types.ResRet.f32 %4587, 3
  %4592 = call float @dx.op.binary.f32(i32 35, float %4584, float %4585)  ; FMax(a,b)
  %4593 = call float @dx.op.binary.f32(i32 35, float %4583, float %4592)  ; FMax(a,b)
  %4594 = call float @dx.op.binary.f32(i32 35, float %4593, float %4586)  ; FMax(a,b)
  %4595 = call float @dx.op.binary.f32(i32 36, float %4589, float %4590)  ; FMin(a,b)
  %4596 = call float @dx.op.binary.f32(i32 36, float %4588, float %4595)  ; FMin(a,b)
  %4597 = call float @dx.op.binary.f32(i32 36, float %4596, float %4591)  ; FMin(a,b)
  %4598 = fmul fast float %4594, 2.550000e+02
  %4599 = fadd fast float %4598, 0x3F70101020000000
  %4600 = fptoui float %4599 to i32
  %4601 = fmul fast float %4597, 2.550000e+02
  %4602 = fadd fast float %4601, 0x3F70101020000000
  %4603 = fptoui float %4602 to i32
  %4604 = icmp ult i32 %4600, %4603
  br i1 %4604, label %4605, label %4654

; <label>:4605                                    ; preds = %4573
  %4606 = fadd fast float %4561, -4.000000e+00
  %4607 = call float @dx.op.binary.f32(i32 35, float %4606, float 0.000000e+00)  ; FMax(a,b)
  %4608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4609 = extractvalue %dx.types.CBufRet.f32 %4608, 0
  %4610 = fadd fast float %4609, %4607
  %4611 = extractvalue %dx.types.CBufRet.f32 %4608, 2
  %4612 = fmul fast float %4610, %4611
  %4613 = call float @dx.op.unary.f32(i32 23, float %4612)  ; Log(value)
  %4614 = extractvalue %dx.types.CBufRet.f32 %4608, 3
  %4615 = fmul fast float %4614, %4613
  %4616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4617 = extractvalue %dx.types.CBufRet.f32 %4616, 2
  %4618 = fmul fast float %4615, %4617
  %4619 = call float @dx.op.unary.f32(i32 7, float %4618)  ; Saturate(value)
  %4620 = uitofp i32 %4600 to float
  %4621 = uitofp i32 %4603 to float
  %4622 = fadd fast float %4620, 5.000000e-01
  %4623 = fadd fast float %4621, 5.000000e-01
  %4624 = fmul fast float %4617, %4622
  %4625 = fmul fast float %4617, %4623
  %4626 = fadd fast float %4624, 0x3F0FFB4800000000
  %4627 = fadd fast float %4625, 0xBF0FFB4800000000
  %4628 = call float @dx.op.binary.f32(i32 35, float %4619, float %4626)  ; FMax(a,b)
  %4629 = call float @dx.op.binary.f32(i32 36, float %4628, float %4627)  ; FMin(a,b)
  %4630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4631 = extractvalue %dx.types.CBufRet.f32 %4630, 1
  %4632 = extractvalue %dx.types.CBufRet.f32 %4630, 2
  %4633 = extractvalue %dx.types.CBufRet.f32 %4630, 0
  %4634 = fmul fast float %4631, %4629
  %4635 = fadd fast float %4633, %4634
  %4636 = fadd fast float %4633, %4632
  %4637 = fsub fast float %4631, %4632
  %4638 = fadd fast float %4637, %4633
  %4639 = call float @dx.op.binary.f32(i32 35, float %4635, float %4636)  ; FMax(a,b)
  %4640 = call float @dx.op.binary.f32(i32 36, float %4639, float %4638)  ; FMin(a,b)
  %4641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %49, float %4580, float %4581, float %4640, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4642 = extractvalue %dx.types.ResRet.f32 %4641, 0
  %4643 = extractvalue %dx.types.ResRet.f32 %4641, 1
  %4644 = extractvalue %dx.types.ResRet.f32 %4641, 2
  %4645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %4580, float %4581, float %4640, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4646 = extractvalue %dx.types.ResRet.f32 %4645, 0
  %4647 = extractvalue %dx.types.ResRet.f32 %4645, 1
  %4648 = extractvalue %dx.types.ResRet.f32 %4645, 2
  %4649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4650 = extractvalue %dx.types.CBufRet.f32 %4649, 1
  %4651 = fmul fast float %4650, %4646
  %4652 = fmul fast float %4650, %4647
  %4653 = fmul fast float %4650, %4648
  br label %4654

; <label>:4654                                    ; preds = %4605, %4573, %4562
  %4655 = phi float [ 0.000000e+00, %4562 ], [ %4651, %4605 ], [ 0.000000e+00, %4573 ]
  %4656 = phi float [ 0.000000e+00, %4562 ], [ %4652, %4605 ], [ 0.000000e+00, %4573 ]
  %4657 = phi float [ 0.000000e+00, %4562 ], [ %4653, %4605 ], [ 0.000000e+00, %4573 ]
  %4658 = phi float [ 1.000000e+00, %4562 ], [ %4642, %4605 ], [ 1.000000e+00, %4573 ]
  %4659 = phi float [ 1.000000e+00, %4562 ], [ %4643, %4605 ], [ 1.000000e+00, %4573 ]
  %4660 = phi float [ 1.000000e+00, %4562 ], [ %4644, %4605 ], [ 1.000000e+00, %4573 ]
  %4661 = fcmp fast olt float %4401, 1.000000e+00
  %4662 = fcmp fast olt float %4564, %4561
  %4663 = or i1 %4661, %4662
  br i1 %4663, label %4664, label %4828

; <label>:4664                                    ; preds = %4654
  %4665 = lshr i32 %1489, 16
  %4666 = uitofp i32 %4665 to float
  %4667 = fmul fast float %4666, 0x3EF0001000000000
  %4668 = and i32 %1482, 65535
  %4669 = uitofp i32 %4668 to float
  %4670 = fmul fast float %4669, 0x3EF0001000000000
  %4671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4672 = extractvalue %dx.types.CBufRet.f32 %4671, 3
  %4673 = fadd fast float %4672, 3.000000e+00
  %4674 = and i32 %864, 16383
  %4675 = lshr i32 %864, 16
  %4676 = and i32 %4675, 255
  %4677 = mul nuw nsw i32 %4674, 148
  %4678 = add nuw nsw i32 %4677, 60
  %4679 = add nuw nsw i32 %4677, 116
  %4680 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4681 = extractvalue %dx.types.CBufRet.i32 %4680, 0
  %4682 = call i32 @dx.op.binary.i32(i32 40, i32 %4674, i32 %4681)  ; UMin(a,b)
  %4683 = mul i32 %4682, 36
  %4684 = add i32 %4683, 4
  %4685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4686 = extractvalue %dx.types.CBufRet.f32 %4685, 0
  %4687 = fmul fast float %4670, %4686
  %4688 = fmul fast float %4667, %4686
  %4689 = extractvalue %dx.types.CBufRet.f32 %4685, 1
  %4690 = fadd fast float %4687, %4689
  %4691 = fadd fast float %4688, %4689
  %4692 = icmp eq i32 %4676, 0
  br i1 %4692, label %4753, label %4693

; <label>:4693                                    ; preds = %4664
  br label %4694

; <label>:4694                                    ; preds = %4694, %4693
  %4695 = phi float [ %4738, %4694 ], [ 0.000000e+00, %4693 ]
  %4696 = phi float [ %4748, %4694 ], [ 0.000000e+00, %4693 ]
  %4697 = phi float [ %4749, %4694 ], [ 0.000000e+00, %4693 ]
  %4698 = phi float [ %4750, %4694 ], [ 0.000000e+00, %4693 ]
  %4699 = phi float [ %4742, %4694 ], [ 0.000000e+00, %4693 ]
  %4700 = phi float [ %4743, %4694 ], [ 0.000000e+00, %4693 ]
  %4701 = phi float [ %4744, %4694 ], [ 0.000000e+00, %4693 ]
  %4702 = phi i32 [ %4707, %4694 ], [ %4676, %4693 ]
  %4703 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4702)  ; FirstbitLo(value)
  %4704 = and i32 %4703, 31
  %4705 = shl i32 1, %4704
  %4706 = xor i32 %4705, -1
  %4707 = and i32 %4702, %4706
  %4708 = shl i32 %4703, 2
  %4709 = add i32 %4684, %4708
  %4710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4709, i32 undef)  ; BufferLoad(srv,index,wot)
  %4711 = extractvalue %dx.types.ResRet.i32 %4710, 0
  %4712 = and i32 %4711, 32767
  %4713 = add i32 %4678, %4708
  %4714 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4713, i32 undef)  ; BufferLoad(srv,index,wot)
  %4715 = extractvalue %dx.types.ResRet.f32 %4714, 0
  %4716 = add i32 %4679, %4708
  %4717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4716, i32 undef)  ; BufferLoad(srv,index,wot)
  %4718 = extractvalue %dx.types.ResRet.i32 %4717, 0
  %4719 = add i32 %4718, 0
  %4720 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4719, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4720, %dx.types.Handle %49, float %4690, float %4691, float %4715, float undef, i32 0, i32 0, i32 undef, float %4673)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4722 = extractvalue %dx.types.ResRet.f32 %4721, 0
  %4723 = mul nuw nsw i32 %4712, 928
  %4724 = add nuw nsw i32 %4723, 44
  %4725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %4724, i32 undef)  ; BufferLoad(srv,index,wot)
  %4726 = extractvalue %dx.types.ResRet.f32 %4725, 0
  %4727 = add nuw nsw i32 %4723, 48
  %4728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %4727, i32 undef)  ; BufferLoad(srv,index,wot)
  %4729 = extractvalue %dx.types.ResRet.f32 %4728, 0
  %4730 = extractvalue %dx.types.ResRet.f32 %4728, 1
  %4731 = extractvalue %dx.types.ResRet.f32 %4728, 2
  %4732 = add nuw nsw i32 %4723, 60
  %4733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %4732, i32 undef)  ; BufferLoad(srv,index,wot)
  %4734 = extractvalue %dx.types.ResRet.f32 %4733, 0
  %4735 = extractvalue %dx.types.ResRet.f32 %4733, 1
  %4736 = extractvalue %dx.types.ResRet.f32 %4733, 2
  %4737 = fmul fast float %4726, %4722
  %4738 = fadd fast float %4737, %4695
  %4739 = fmul fast float %4729, %4722
  %4740 = fmul fast float %4730, %4722
  %4741 = fmul fast float %4731, %4722
  %4742 = fadd fast float %4739, %4699
  %4743 = fadd fast float %4740, %4700
  %4744 = fadd fast float %4741, %4701
  %4745 = fmul fast float %4734, %4722
  %4746 = fmul fast float %4735, %4722
  %4747 = fmul fast float %4736, %4722
  %4748 = fadd fast float %4745, %4696
  %4749 = fadd fast float %4746, %4697
  %4750 = fadd fast float %4747, %4698
  %4751 = icmp eq i32 %4707, 0
  br i1 %4751, label %4752, label %4694

; <label>:4752                                    ; preds = %4694
  br label %4753

; <label>:4753                                    ; preds = %4752, %4664
  %4754 = phi float [ 0.000000e+00, %4664 ], [ %4738, %4752 ]
  %4755 = phi float [ 0.000000e+00, %4664 ], [ %4748, %4752 ]
  %4756 = phi float [ 0.000000e+00, %4664 ], [ %4749, %4752 ]
  %4757 = phi float [ 0.000000e+00, %4664 ], [ %4750, %4752 ]
  %4758 = phi float [ 0.000000e+00, %4664 ], [ %4742, %4752 ]
  %4759 = phi float [ 0.000000e+00, %4664 ], [ %4743, %4752 ]
  %4760 = phi float [ 0.000000e+00, %4664 ], [ %4744, %4752 ]
  %4761 = fmul fast float %4758, 0x3F847AE140000000
  %4762 = fmul fast float %4759, 0x3F847AE140000000
  %4763 = fmul fast float %4760, 0x3F847AE140000000
  %4764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4765 = extractvalue %dx.types.CBufRet.f32 %4764, 0
  %4766 = extractvalue %dx.types.CBufRet.f32 %4764, 1
  %4767 = extractvalue %dx.types.CBufRet.f32 %4764, 2
  %4768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4769 = extractvalue %dx.types.CBufRet.f32 %4768, 0
  %4770 = extractvalue %dx.types.CBufRet.f32 %4768, 1
  %4771 = call float @dx.op.dot3.f32(i32 55, float %4765, float %4766, float %4767, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4772 = select i1 %1528, float %4769, float %4765
  %4773 = select i1 %1528, float %4771, float %4766
  %4774 = select i1 %1528, float %4770, float %4767
  %4775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4776 = extractvalue %dx.types.CBufRet.f32 %4775, 0
  %4777 = extractvalue %dx.types.CBufRet.f32 %4775, 1
  %4778 = extractvalue %dx.types.CBufRet.f32 %4775, 2
  %4779 = fadd fast float %4758, %4755
  %4780 = fmul fast float %4779, 0x3F847AE140000000
  %4781 = fadd fast float %4759, %4756
  %4782 = fmul fast float %4781, 0x3F847AE140000000
  %4783 = fadd fast float %4760, %4757
  %4784 = fmul fast float %4783, 0x3F847AE140000000
  %4785 = call float @dx.op.dot3.f32(i32 55, float %4776, float %4777, float %4778, float %1421, float %1422, float %1423)  ; Dot3(ax,ay,az,bx,by,bz)
  %4786 = fcmp fast ogt float %4754, 0.000000e+00
  %4787 = select i1 %4786, float 1.000000e+00, float -1.000000e+00
  %4788 = fmul fast float %4787, 5.000000e-01
  %4789 = fmul fast float %4788, %4785
  %4790 = fmul fast float %4787, %4754
  %4791 = fadd fast float %4789, 4.921875e-01
  %4792 = fadd fast float %4790, -3.125000e-02
  %4793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %51, float %4791, float 0x3FB25F3060000000, float %4792, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4794 = extractvalue %dx.types.ResRet.f32 %4793, 0
  %4795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %4796 = extractvalue %dx.types.CBufRet.f32 %4795, 0
  %4797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %4798 = extractvalue %dx.types.CBufRet.f32 %4797, 0
  %4799 = fmul fast float %4798, %4796
  %4800 = extractvalue %dx.types.CBufRet.f32 %4797, 1
  %4801 = fadd fast float %4799, %4800
  %4802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %4803 = extractvalue %dx.types.CBufRet.f32 %4802, 0
  %4804 = fmul fast float %4803, %3731
  %4805 = extractvalue %dx.types.CBufRet.f32 %4802, 1
  %4806 = fadd fast float %4804, %4805
  %4807 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4808 = extractvalue %dx.types.CBufRet.f32 %4795, 3
  %4809 = extractvalue %dx.types.CBufRet.f32 %4797, 2
  %4810 = fmul fast float %4809, %4808
  %4811 = extractvalue %dx.types.CBufRet.f32 %4797, 3
  %4812 = fadd fast float %4810, %4811
  %4813 = fmul fast float %4794, 0x400921FB60000000
  %4814 = fmul fast float %4813, %4801
  %4815 = fmul fast float %4814, %4807
  %4816 = fmul fast float %4772, %4761
  %4817 = fmul fast float %4816, %4815
  %4818 = fmul fast float %4773, %4762
  %4819 = fmul fast float %4818, %4815
  %4820 = fmul fast float %4774, %4763
  %4821 = fmul fast float %4820, %4815
  %4822 = fmul fast float %4761, %2357
  %4823 = fmul fast float %4822, %4812
  %4824 = fmul fast float %4762, %2358
  %4825 = fmul fast float %4824, %4812
  %4826 = fmul fast float %4763, %2359
  %4827 = fmul fast float %4826, %4812
  br label %4828

; <label>:4828                                    ; preds = %4753, %4654
  %4829 = phi float [ %4780, %4753 ], [ 0.000000e+00, %4654 ]
  %4830 = phi float [ %4782, %4753 ], [ 0.000000e+00, %4654 ]
  %4831 = phi float [ %4784, %4753 ], [ 0.000000e+00, %4654 ]
  %4832 = phi float [ %4817, %4753 ], [ 0.000000e+00, %4654 ]
  %4833 = phi float [ %4819, %4753 ], [ 0.000000e+00, %4654 ]
  %4834 = phi float [ %4821, %4753 ], [ 0.000000e+00, %4654 ]
  %4835 = phi float [ %4823, %4753 ], [ 0.000000e+00, %4654 ]
  %4836 = phi float [ %4825, %4753 ], [ 0.000000e+00, %4654 ]
  %4837 = phi float [ %4827, %4753 ], [ 0.000000e+00, %4654 ]
  %4838 = call float @dx.op.binary.f32(i32 35, float %4829, float 0x3F10000000000000)  ; FMax(a,b)
  %4839 = call float @dx.op.binary.f32(i32 35, float %4830, float 0x3F10000000000000)  ; FMax(a,b)
  %4840 = call float @dx.op.binary.f32(i32 35, float %4831, float 0x3F10000000000000)  ; FMax(a,b)
  %4841 = fdiv fast float 1.000000e+00, %4838
  %4842 = fdiv fast float 1.000000e+00, %4839
  %4843 = fdiv fast float 1.000000e+00, %4840
  %4844 = fmul fast float %4829, 0xBFF7154760000000
  %4845 = fmul fast float %4830, 0xBFF7154760000000
  %4846 = fmul fast float %4831, 0xBFF7154760000000
  %4847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.f32 %4847, 3
  %4849 = call float @dx.op.dot3.f32(i32 55, float %4841, float %4842, float %4843, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4850 = fmul fast float %4848, %4849
  %4851 = call float @dx.op.binary.f32(i32 35, float %4565, float %4560)  ; FMax(a,b)
  %4852 = fsub fast float %4561, %4851
  %4853 = call float @dx.op.binary.f32(i32 35, float %4852, float 0.000000e+00)  ; FMax(a,b)
  %4854 = fsub fast float %4561, %4560
  %4855 = call float @dx.op.binary.f32(i32 35, float %4854, float 0.000000e+00)  ; FMax(a,b)
  %4856 = call float @dx.op.binary.f32(i32 36, float %4855, float %4850)  ; FMin(a,b)
  %4857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %4858 = extractvalue %dx.types.CBufRet.f32 %4857, 0
  %4859 = fmul fast float %4858, %4856
  %4860 = fmul fast float %4859, %4844
  %4861 = fmul fast float %4859, %4845
  %4862 = fmul fast float %4859, %4846
  %4863 = call float @dx.op.unary.f32(i32 21, float %4860)  ; Exp(value)
  %4864 = call float @dx.op.unary.f32(i32 21, float %4861)  ; Exp(value)
  %4865 = call float @dx.op.unary.f32(i32 21, float %4862)  ; Exp(value)
  %4866 = fmul fast float %4863, %4832
  %4867 = fmul fast float %4864, %4833
  %4868 = fmul fast float %4865, %4834
  %4869 = extractvalue %dx.types.CBufRet.f32 %4857, 1
  %4870 = fmul fast float %4869, %4856
  %4871 = fmul fast float %4870, %4844
  %4872 = fmul fast float %4870, %4845
  %4873 = fmul fast float %4870, %4846
  %4874 = call float @dx.op.unary.f32(i32 21, float %4871)  ; Exp(value)
  %4875 = call float @dx.op.unary.f32(i32 21, float %4872)  ; Exp(value)
  %4876 = call float @dx.op.unary.f32(i32 21, float %4873)  ; Exp(value)
  %4877 = fmul fast float %4874, %4835
  %4878 = fmul fast float %4875, %4836
  %4879 = fmul fast float %4876, %4837
  %4880 = fadd fast float %4877, %4866
  %4881 = fadd fast float %4878, %4867
  %4882 = fadd fast float %4879, %4868
  %4883 = fmul fast float %4853, %4844
  %4884 = fmul fast float %4853, %4845
  %4885 = fmul fast float %4853, %4846
  %4886 = call float @dx.op.unary.f32(i32 21, float %4883)  ; Exp(value)
  %4887 = call float @dx.op.unary.f32(i32 21, float %4884)  ; Exp(value)
  %4888 = call float @dx.op.unary.f32(i32 21, float %4885)  ; Exp(value)
  %4889 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4890 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4891 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4892 = fmul fast float %4889, %4880
  %4893 = fmul fast float %4890, %4881
  %4894 = fmul fast float %4891, %4882
  %4895 = fsub fast float %4880, %4892
  %4896 = fsub fast float %4881, %4893
  %4897 = fsub fast float %4882, %4894
  %4898 = fmul fast float %4841, %4658
  %4899 = fmul fast float %4898, %4895
  %4900 = fmul fast float %4842, %4659
  %4901 = fmul fast float %4900, %4896
  %4902 = fmul fast float %4843, %4660
  %4903 = fmul fast float %4902, %4897
  %4904 = fadd fast float %4899, %4655
  %4905 = fadd fast float %4901, %4656
  %4906 = fadd fast float %4903, %4657
  %4907 = fmul fast float %4889, %4658
  %4908 = fmul fast float %4890, %4659
  %4909 = fmul fast float %4891, %4660
  %4910 = fmul fast float %4855, %4844
  %4911 = fmul fast float %4855, %4845
  %4912 = fmul fast float %4855, %4846
  %4913 = call float @dx.op.unary.f32(i32 21, float %4910)  ; Exp(value)
  %4914 = call float @dx.op.unary.f32(i32 21, float %4911)  ; Exp(value)
  %4915 = call float @dx.op.unary.f32(i32 21, float %4912)  ; Exp(value)
  %4916 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  %4917 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4918 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  %4919 = fmul fast float %4916, %4880
  %4920 = fmul fast float %4917, %4881
  %4921 = fmul fast float %4918, %4882
  %4922 = fsub fast float %4880, %4919
  %4923 = fsub fast float %4881, %4920
  %4924 = fsub fast float %4882, %4921
  %4925 = fmul fast float %4922, %4841
  %4926 = fmul fast float %4923, %4842
  %4927 = fmul fast float %4924, %4843
  %4928 = fsub fast float %4560, %4564
  %4929 = fmul fast float %4566, %4928
  %4930 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4931 = fmul fast float %4930, %4930
  %4932 = fmul fast float %4930, 2.000000e+00
  %4933 = fsub fast float 3.000000e+00, %4932
  %4934 = fmul fast float %4931, %4933
  %4935 = fsub fast float %4925, %4904
  %4936 = fsub fast float %4926, %4905
  %4937 = fsub fast float %4927, %4906
  %4938 = fmul fast float %4934, %4935
  %4939 = fmul fast float %4934, %4936
  %4940 = fmul fast float %4934, %4937
  %4941 = fadd fast float %4938, %4904
  %4942 = fadd fast float %4939, %4905
  %4943 = fadd fast float %4940, %4906
  %4944 = fsub fast float %4916, %4907
  %4945 = fsub fast float %4917, %4908
  %4946 = fsub fast float %4918, %4909
  %4947 = fmul fast float %4934, %4944
  %4948 = fmul fast float %4934, %4945
  %4949 = fmul fast float %4934, %4946
  %4950 = fadd fast float %4947, %4907
  %4951 = fadd fast float %4948, %4908
  %4952 = fadd fast float %4949, %4909
  br i1 %4661, label %4953, label %5021

; <label>:4953                                    ; preds = %4828
  %4954 = extractvalue %dx.types.CBufRet.f32 %4857, 3
  %4955 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4954)  ; Dot3(ax,ay,az,bx,by,bz)
  %4956 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1530, float %1531, float %1532)  ; Dot3(ax,ay,az,bx,by,bz)
  %4957 = fdiv fast float 1.000000e+00, %4956
  %4958 = fmul fast float %4957, %4955
  %4959 = fcmp ogt float %1423, -0.000000e+00
  %4960 = select i1 %4959, float %4954, float %4958
  %4961 = call float @dx.op.binary.f32(i32 36, float %4960, float %4850)  ; FMin(a,b)
  %4962 = fmul fast float %4858, %4961
  %4963 = fmul fast float %4962, %4844
  %4964 = fmul fast float %4962, %4845
  %4965 = fmul fast float %4962, %4846
  %4966 = call float @dx.op.unary.f32(i32 21, float %4963)  ; Exp(value)
  %4967 = call float @dx.op.unary.f32(i32 21, float %4964)  ; Exp(value)
  %4968 = call float @dx.op.unary.f32(i32 21, float %4965)  ; Exp(value)
  %4969 = fmul fast float %4966, %4832
  %4970 = fmul fast float %4967, %4833
  %4971 = fmul fast float %4968, %4834
  %4972 = fmul fast float %4869, %4961
  %4973 = fmul fast float %4972, %4844
  %4974 = fmul fast float %4972, %4845
  %4975 = fmul fast float %4972, %4846
  %4976 = call float @dx.op.unary.f32(i32 21, float %4973)  ; Exp(value)
  %4977 = call float @dx.op.unary.f32(i32 21, float %4974)  ; Exp(value)
  %4978 = call float @dx.op.unary.f32(i32 21, float %4975)  ; Exp(value)
  %4979 = fmul fast float %4976, %4835
  %4980 = fmul fast float %4977, %4836
  %4981 = fmul fast float %4978, %4837
  %4982 = fadd fast float %4979, %4969
  %4983 = fadd fast float %4980, %4970
  %4984 = fadd fast float %4981, %4971
  %4985 = fmul fast float %4960, %4844
  %4986 = fmul fast float %4960, %4845
  %4987 = fmul fast float %4960, %4846
  %4988 = call float @dx.op.unary.f32(i32 21, float %4985)  ; Exp(value)
  %4989 = call float @dx.op.unary.f32(i32 21, float %4986)  ; Exp(value)
  %4990 = call float @dx.op.unary.f32(i32 21, float %4987)  ; Exp(value)
  %4991 = call float @dx.op.unary.f32(i32 7, float %4988)  ; Saturate(value)
  %4992 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4993 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4994 = fmul fast float %4991, %4982
  %4995 = fmul fast float %4992, %4983
  %4996 = fmul fast float %4993, %4984
  %4997 = fsub fast float %4982, %4994
  %4998 = fsub fast float %4983, %4995
  %4999 = fsub fast float %4984, %4996
  %5000 = fmul fast float %4997, %4841
  %5001 = fmul fast float %4998, %4842
  %5002 = fmul fast float %4999, %4843
  %5003 = fsub fast float %4941, %5000
  %5004 = fsub fast float %4942, %5001
  %5005 = fsub fast float %4943, %5002
  %5006 = fmul fast float %5003, %4401
  %5007 = fmul fast float %5004, %4401
  %5008 = fmul fast float %5005, %4401
  %5009 = fadd fast float %5006, %5000
  %5010 = fadd fast float %5007, %5001
  %5011 = fadd fast float %5008, %5002
  %5012 = fsub fast float %4950, %4991
  %5013 = fsub fast float %4951, %4992
  %5014 = fsub fast float %4952, %4993
  %5015 = fmul fast float %5012, %4401
  %5016 = fmul fast float %5013, %4401
  %5017 = fmul fast float %5014, %4401
  %5018 = fadd fast float %5015, %4991
  %5019 = fadd fast float %5016, %4992
  %5020 = fadd fast float %5017, %4993
  br label %5021

; <label>:5021                                    ; preds = %4953, %4828
  %5022 = phi float [ %5009, %4953 ], [ %4941, %4828 ]
  %5023 = phi float [ %5010, %4953 ], [ %4942, %4828 ]
  %5024 = phi float [ %5011, %4953 ], [ %4943, %4828 ]
  %5025 = phi float [ %5018, %4953 ], [ %4950, %4828 ]
  %5026 = phi float [ %5019, %4953 ], [ %4951, %4828 ]
  %5027 = phi float [ %5020, %4953 ], [ %4952, %4828 ]
  %5028 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5029 = extractvalue %dx.types.CBufRet.i32 %5028, 3
  %5030 = and i32 %5029, 3
  %5031 = icmp ne i32 %5030, 0
  %5032 = and i32 %5029, 4
  %5033 = icmp ne i32 %5032, 0
  %5034 = and i1 %5031, %5033
  br i1 %5034, label %5035, label %5042

; <label>:5035                                    ; preds = %5021
  %5036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %51, float %4558, float %4559, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5037 = extractvalue %dx.types.ResRet.f32 %5036, 0
  %5038 = fsub fast float 1.000000e+00, %5037
  %5039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %5040 = extractvalue %dx.types.CBufRet.f32 %5039, 0
  %5041 = fcmp fast olt float %5038, %5040
  br label %5045

; <label>:5042                                    ; preds = %5021
  %5043 = icmp eq i32 %5032, 0
  %5044 = and i1 %5031, %5043
  br label %5045

; <label>:5045                                    ; preds = %5042, %5035
  %5046 = phi i1 [ %5041, %5035 ], [ %5044, %5042 ]
  %5047 = xor i1 %1528, %5046
  %5048 = select i1 %5047, float 0.000000e+00, float %4401
  %5049 = fcmp fast ogt float %5048, 0.000000e+00
  %5050 = select i1 %5049, float %4558, float 0.000000e+00
  %5051 = select i1 %5049, float %4559, float 0.000000e+00
  %5052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %51, float %5050, float %5051, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5053 = extractvalue %dx.types.ResRet.f32 %5052, 0
  %5054 = extractvalue %dx.types.ResRet.f32 %5052, 1
  %5055 = extractvalue %dx.types.ResRet.f32 %5052, 2
  %5056 = fmul fast float %5054, %5048
  %5057 = fmul fast float %5055, %5048
  %5058 = select i1 %1528, float 0.000000e+00, float %5056
  %5059 = select i1 %1528, float 0.000000e+00, float %5057
  %5060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5061 = extractvalue %dx.types.CBufRet.f32 %5060, 1
  %5062 = fmul fast float %5048, %5025
  %5063 = fmul fast float %5062, %5053
  %5064 = fmul fast float %5063, %5061
  %5065 = fmul fast float %5061, %5026
  %5066 = fmul fast float %5065, %5058
  %5067 = fmul fast float %5061, %5027
  %5068 = fmul fast float %5067, %5059
  %5069 = fadd fast float %5064, %5022
  %5070 = fadd fast float %5066, %5023
  %5071 = fadd fast float %5068, %5024
  br label %5111

; <label>:5072                                    ; preds = %4557
  %5073 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5074 = extractvalue %dx.types.CBufRet.i32 %5073, 3
  %5075 = and i32 %5074, 3
  %5076 = icmp ne i32 %5075, 0
  %5077 = and i32 %5074, 4
  %5078 = icmp ne i32 %5077, 0
  %5079 = and i1 %5076, %5078
  br i1 %5079, label %5080, label %5087

; <label>:5080                                    ; preds = %5072
  %5081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %51, float %4558, float %4559, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5082 = extractvalue %dx.types.ResRet.f32 %5081, 0
  %5083 = fsub fast float 1.000000e+00, %5082
  %5084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.f32 %5084, 0
  %5086 = fcmp fast olt float %5083, %5085
  br label %5090

; <label>:5087                                    ; preds = %5072
  %5088 = icmp eq i32 %5077, 0
  %5089 = and i1 %5076, %5088
  br label %5090

; <label>:5090                                    ; preds = %5087, %5080
  %5091 = phi i1 [ %5086, %5080 ], [ %5089, %5087 ]
  %5092 = xor i1 %1528, %5091
  %5093 = select i1 %5092, float 0.000000e+00, float %4401
  %5094 = fcmp fast ogt float %5093, 0.000000e+00
  %5095 = select i1 %5094, float %4558, float 0.000000e+00
  %5096 = select i1 %5094, float %4559, float 0.000000e+00
  %5097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %51, float %5095, float %5096, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5098 = extractvalue %dx.types.ResRet.f32 %5097, 0
  %5099 = extractvalue %dx.types.ResRet.f32 %5097, 1
  %5100 = extractvalue %dx.types.ResRet.f32 %5097, 2
  %5101 = fmul fast float %5098, %5093
  %5102 = fmul fast float %5099, %5093
  %5103 = fmul fast float %5100, %5093
  %5104 = select i1 %1528, float 0.000000e+00, float %5102
  %5105 = select i1 %1528, float 0.000000e+00, float %5103
  %5106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5107 = extractvalue %dx.types.CBufRet.f32 %5106, 1
  %5108 = fmul fast float %5101, %5107
  %5109 = fmul fast float %5104, %5107
  %5110 = fmul fast float %5105, %5107
  br label %5111

; <label>:5111                                    ; preds = %5090, %5045
  %5112 = phi float [ %5108, %5090 ], [ %5069, %5045 ]
  %5113 = phi float [ %5109, %5090 ], [ %5070, %5045 ]
  %5114 = phi float [ %5110, %5090 ], [ %5071, %5045 ]
  %5115 = fmul fast float %5112, %2403
  %5116 = fmul fast float %5113, %2403
  %5117 = fmul fast float %5114, %2403
  %5118 = select i1 %95, float %4472, float 1.000000e+00
  %5119 = fsub fast float 1.000000e+00, %1535
  %5120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5121 = extractvalue %dx.types.CBufRet.f32 %5120, 0
  %5122 = fmul fast float %5121, %5119
  %5123 = fmul fast float %1395, 2.000000e+00
  %5124 = fmul fast float %5123, %1432
  %5125 = fsub fast float %1423, %5124
  %5126 = call float @dx.op.unary.f32(i32 7, float %5125)  ; Saturate(value)
  %5127 = fsub fast float 1.000000e+00, %5126
  %5128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5129 = extractvalue %dx.types.CBufRet.f32 %5128, 3
  %5130 = fmul fast float %5129, %5127
  %5131 = fsub fast float 1.000000e+00, %1502
  %5132 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5133 = fadd fast float %4398, %1504
  %5134 = fmul fast float %5133, %1502
  %5135 = fmul fast float %5130, %5132
  %5136 = fmul fast float %4396, %1405
  %5137 = fmul fast float %4397, %1406
  %5138 = fmul fast float %4398, %1407
  %5139 = fadd fast float %5136, %4393
  %5140 = fadd fast float %5139, %5115
  %5141 = fadd fast float %5137, %4394
  %5142 = fadd fast float %5141, %5116
  %5143 = fadd fast float %5138, %4395
  %5144 = fadd fast float %5143, %5117
  br i1 %95, label %5145, label %5947

; <label>:5145                                    ; preds = %5111
  %5146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5147 = extractvalue %dx.types.CBufRet.f32 %5146, 0
  %5148 = extractvalue %dx.types.CBufRet.f32 %5146, 1
  %5149 = extractvalue %dx.types.CBufRet.f32 %5146, 2
  %5150 = extractvalue %dx.types.CBufRet.f32 %5146, 3
  %5151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.f32 %5151, 0
  %5153 = extractvalue %dx.types.CBufRet.f32 %5151, 1
  %5154 = extractvalue %dx.types.CBufRet.f32 %5151, 2
  %5155 = extractvalue %dx.types.CBufRet.f32 %5151, 3
  %5156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5157 = extractvalue %dx.types.CBufRet.f32 %5156, 0
  %5158 = extractvalue %dx.types.CBufRet.f32 %5156, 1
  %5159 = extractvalue %dx.types.CBufRet.f32 %5156, 2
  %5160 = extractvalue %dx.types.CBufRet.f32 %5156, 3
  %5161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5162 = extractvalue %dx.types.CBufRet.f32 %5161, 0
  %5163 = extractvalue %dx.types.CBufRet.f32 %5161, 1
  %5164 = extractvalue %dx.types.CBufRet.f32 %5161, 2
  %5165 = extractvalue %dx.types.CBufRet.f32 %5161, 3
  %5166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5167 = extractvalue %dx.types.CBufRet.f32 %5166, 3
  %5168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5169 = extractvalue %dx.types.CBufRet.f32 %5168, 3
  %5170 = extractvalue %dx.types.CBufRet.f32 %5168, 0
  %5171 = extractvalue %dx.types.CBufRet.f32 %5168, 1
  %5172 = extractvalue %dx.types.CBufRet.f32 %5168, 2
  %5173 = fcmp fast olt float %5172, -5.000000e-01
  %5174 = fmul fast float %1420, %1419
  %5175 = fadd fast float %5174, %5150
  %5176 = call float @dx.op.dot3.f32(i32 55, float %1421, float %1422, float %1423, float %5147, float %5148, float %5149)  ; Dot3(ax,ay,az,bx,by,bz)
  %5177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5178 = extractvalue %dx.types.CBufRet.i32 %5177, 1
  %5179 = and i32 %5178, 1
  %5180 = icmp ne i32 %5179, 0
  %5181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5182 = extractvalue %dx.types.CBufRet.f32 %5181, 2
  %5183 = fcmp fast ogt float %5182, 0.000000e+00
  %5184 = and i1 %5180, %5183
  br i1 %5184, label %5185, label %5591, !dx.controlflow.hints !135

; <label>:5185                                    ; preds = %5145
  %5186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5187 = extractvalue %dx.types.CBufRet.f32 %5186, 3
  %5188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5189 = extractvalue %dx.types.CBufRet.f32 %5188, 2
  %5190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5191 = extractvalue %dx.types.CBufRet.f32 %5190, 2
  %5192 = fsub fast float %5189, %5191
  %5193 = and i32 %5178, 2
  %5194 = extractvalue %dx.types.CBufRet.i32 %5177, 0
  %5195 = call i32 @dx.op.binary.i32(i32 40, i32 %5194, i32 3)  ; UMin(a,b)
  %5196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5197 = extractvalue %dx.types.CBufRet.f32 %5196, 0
  %5198 = extractvalue %dx.types.CBufRet.f32 %5196, 1
  %5199 = extractvalue %dx.types.CBufRet.f32 %5190, 0
  %5200 = extractvalue %dx.types.CBufRet.f32 %5190, 1
  %5201 = fsub fast float %5197, %5199
  %5202 = fsub fast float %5198, %5200
  %5203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5204 = extractvalue %dx.types.CBufRet.f32 %5203, 0
  %5205 = fcmp fast ogt float %5204, 0.000000e+00
  %5206 = fsub fast float -0.000000e+00, %5201
  %5207 = fsub fast float -0.000000e+00, %5202
  %5208 = call float @dx.op.dot2.f32(i32 54, float %1421, float %1422, float %1421, float %1422)  ; Dot2(ax,ay,bx,by)
  %5209 = call float @dx.op.dot2.f32(i32 54, float %1421, float %1422, float %5206, float %5207)  ; Dot2(ax,ay,bx,by)
  %5210 = fmul fast float %5209, 2.000000e+00
  %5211 = call float @dx.op.dot2.f32(i32 54, float %5206, float %5207, float %5206, float %5207)  ; Dot2(ax,ay,bx,by)
  %5212 = fmul fast float %5204, %5204
  %5213 = fsub fast float %5211, %5212
  %5214 = fmul fast float %5210, %5210
  %5215 = fmul fast float %5208, 4.000000e+00
  %5216 = fmul fast float %5215, %5213
  %5217 = fsub fast float %5214, %5216
  %5218 = fcmp fast ogt float %5217, 0.000000e+00
  br i1 %5218, label %5219, label %5234

; <label>:5219                                    ; preds = %5185
  %5220 = fcmp fast ogt float %5210, 0.000000e+00
  %5221 = call float @dx.op.unary.f32(i32 24, float %5217)  ; Sqrt(value)
  %5222 = fsub fast float -0.000000e+00, %5221
  %5223 = select i1 %5220, float %5221, float %5222
  %5224 = fadd fast float %5223, %5210
  %5225 = fmul float %5224, -5.000000e-01
  %5226 = fdiv fast float %5225, %5208
  %5227 = call float @dx.op.binary.f32(i32 35, float %5226, float 0.000000e+00)  ; FMax(a,b)
  %5228 = call float @dx.op.binary.f32(i32 36, float %5174, float %5227)  ; FMin(a,b)
  %5229 = fdiv fast float %5213, %5225
  %5230 = call float @dx.op.binary.f32(i32 35, float %5229, float 0.000000e+00)  ; FMax(a,b)
  %5231 = call float @dx.op.binary.f32(i32 36, float %5174, float %5230)  ; FMin(a,b)
  %5232 = call float @dx.op.binary.f32(i32 36, float %5228, float %5231)  ; FMin(a,b)
  %5233 = call float @dx.op.binary.f32(i32 35, float %5228, float %5231)  ; FMax(a,b)
  br label %5234

; <label>:5234                                    ; preds = %5219, %5185
  %5235 = phi float [ %5233, %5219 ], [ -1.000000e+00, %5185 ]
  %5236 = phi float [ %5232, %5219 ], [ -1.000000e+00, %5185 ]
  %5237 = phi i1 [ true, %5219 ], [ false, %5185 ]
  %5238 = and i1 %5205, %5237
  br i1 %5238, label %5239, label %5241

; <label>:5239                                    ; preds = %5234
  %5240 = fcmp fast oeq float %5236, %5235
  br i1 %5240, label %5544, label %5242

; <label>:5241                                    ; preds = %5234
  br i1 %5205, label %5544, label %5242

; <label>:5242                                    ; preds = %5241, %5239
  %5243 = phi float [ %5174, %5241 ], [ %5235, %5239 ]
  %5244 = phi float [ 0.000000e+00, %5241 ], [ %5236, %5239 ]
  %5245 = icmp ne i32 %5193, 0
  %5246 = fmul fast float %5243, %1423
  %5247 = fadd fast float %5246, %5187
  %5248 = fmul fast float %5247, %5243
  %5249 = select i1 %5245, float 0.000000e+00, float %5248
  %5250 = fcmp fast oeq float %1423, 0.000000e+00
  %5251 = fdiv fast float %5192, %1423
  %5252 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5251)  ; FMax(a,b)
  %5253 = select i1 %5250, float %5243, float %5252
  %5254 = call float @dx.op.binary.f32(i32 36, float %5243, float %5253)  ; FMin(a,b)
  %5255 = fcmp fast ogt float %1423, 0.000000e+00
  %5256 = fcmp fast olt float %5192, 0.000000e+00
  br i1 %5255, label %5257, label %5314

; <label>:5257                                    ; preds = %5242
  %5258 = icmp eq i32 %5193, 0
  br i1 %5256, label %5259, label %5303

; <label>:5259                                    ; preds = %5257
  %5260 = select i1 %5258, float %5243, float 0.000000e+00
  %5261 = fsub fast float -0.000000e+00, %5260
  %5262 = call float @dx.op.unary.f32(i32 6, float %5261)  ; FAbs(value)
  %5263 = fmul fast float %5260, %1423
  %5264 = fadd fast float %5263, %5187
  %5265 = fmul fast float %5262, %5264
  %5266 = fsub fast float %5249, %5265
  %5267 = fsub fast float %5243, %5262
  %5268 = select i1 %5258, float %5267, float 0.000000e+00
  %5269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5270 = extractvalue %dx.types.CBufRet.f32 %5269, 0
  %5271 = extractvalue %dx.types.CBufRet.f32 %5269, 1
  %5272 = extractvalue %dx.types.CBufRet.f32 %5269, 2
  %5273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5274 = extractvalue %dx.types.CBufRet.f32 %5273, 0
  %5275 = extractvalue %dx.types.CBufRet.f32 %5273, 1
  %5276 = extractvalue %dx.types.CBufRet.f32 %5273, 2
  %5277 = extractvalue %dx.types.CBufRet.f32 %5273, 3
  %5278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5279 = extractvalue %dx.types.CBufRet.f32 %5278, 3
  %5280 = call float @dx.op.binary.f32(i32 36, float %5266, float %5279)  ; FMin(a,b)
  %5281 = fmul fast float %5277, %5268
  %5282 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5283 = fsub fast float %5274, %5270
  %5284 = fsub fast float %5275, %5271
  %5285 = fsub fast float %5276, %5272
  %5286 = fmul fast float %5282, %5283
  %5287 = fmul fast float %5282, %5284
  %5288 = fmul fast float %5282, %5285
  %5289 = fadd fast float %5286, %5270
  %5290 = fadd fast float %5287, %5271
  %5291 = fadd fast float %5288, %5272
  %5292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5293 = extractvalue %dx.types.CBufRet.f32 %5292, 0
  %5294 = extractvalue %dx.types.CBufRet.f32 %5292, 1
  %5295 = fadd fast float %5294, %5293
  %5296 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5297 = extractvalue %dx.types.CBufRet.f32 %5292, 2
  %5298 = extractvalue %dx.types.CBufRet.f32 %5292, 3
  %5299 = fadd fast float %5298, %5297
  %5300 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5301 = fmul fast float %5296, %5280
  %5302 = fmul fast float %5301, %5300
  br label %5544

; <label>:5303                                    ; preds = %5257
  br i1 %5258, label %5304, label %5325

; <label>:5304                                    ; preds = %5303
  %5305 = call float @dx.op.binary.f32(i32 36, float %5254, float %5244)  ; FMin(a,b)
  %5306 = fsub fast float %5254, %5305
  %5307 = fsub fast float %5306, %5243
  %5308 = call float @dx.op.unary.f32(i32 6, float %5307)  ; FAbs(value)
  %5309 = fadd fast float %5306, %5243
  %5310 = fmul fast float %5309, %1423
  %5311 = fadd fast float %5310, %5187
  %5312 = fmul fast float %5311, %5308
  %5313 = fsub fast float %5249, %5312
  br label %5325

; <label>:5314                                    ; preds = %5242
  br i1 %5256, label %5315, label %5325

; <label>:5315                                    ; preds = %5314
  %5316 = call float @dx.op.binary.f32(i32 35, float %5244, float %5254)  ; FMax(a,b)
  %5317 = icmp eq i32 %5193, 0
  %5318 = select i1 %5317, float %5254, float 0.000000e+00
  %5319 = fsub fast float -0.000000e+00, %5318
  %5320 = call float @dx.op.unary.f32(i32 6, float %5319)  ; FAbs(value)
  %5321 = fmul fast float %5318, %1423
  %5322 = fadd fast float %5321, %5187
  %5323 = fmul fast float %5320, %5322
  %5324 = fsub fast float %5249, %5323
  br label %5325

; <label>:5325                                    ; preds = %5315, %5314, %5304, %5303
  %5326 = phi float [ %5244, %5303 ], [ %5244, %5304 ], [ %5316, %5315 ], [ %5244, %5314 ]
  %5327 = phi float [ 0.000000e+00, %5303 ], [ %5308, %5304 ], [ %5320, %5315 ], [ 0.000000e+00, %5314 ]
  %5328 = phi float [ %5249, %5303 ], [ %5313, %5304 ], [ %5324, %5315 ], [ %5249, %5314 ]
  %5329 = phi float [ %5254, %5303 ], [ %5254, %5304 ], [ %5243, %5315 ], [ %5243, %5314 ]
  %5330 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 0
  store float -1.000000e+00, float* %5330, align 4, !tbaa !92, !noalias !136
  %5331 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 1
  store float -1.000000e+00, float* %5331, align 4, !tbaa !92, !noalias !136
  %5332 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 2
  store float -1.000000e+00, float* %5332, align 4, !tbaa !92, !noalias !136
  %5333 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 0
  store float -1.000000e+00, float* %5333, align 4, !tbaa !92, !noalias !136
  %5334 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 1
  store float -1.000000e+00, float* %5334, align 4, !tbaa !92, !noalias !136
  %5335 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 2
  store float -1.000000e+00, float* %5335, align 4, !tbaa !92, !noalias !136
  %5336 = icmp sgt i32 %5195, 0
  br i1 %5336, label %5337, label %5398

; <label>:5337                                    ; preds = %5325
  br label %5338

; <label>:5338                                    ; preds = %5387, %5337
  %5339 = phi i32 [ %5388, %5387 ], [ 0, %5337 ]
  %5340 = phi i32 [ %5389, %5387 ], [ 0, %5337 ]
  %5341 = add nuw i32 %5340, 171
  %5342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %5341)  ; CBufferLoadLegacy(handle,regIndex)
  %5343 = extractvalue %dx.types.CBufRet.f32 %5342, 0
  %5344 = extractvalue %dx.types.CBufRet.f32 %5342, 1
  %5345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5346 = extractvalue %dx.types.CBufRet.f32 %5345, 0
  %5347 = extractvalue %dx.types.CBufRet.f32 %5345, 1
  %5348 = fsub fast float %5343, %5346
  %5349 = fsub fast float %5344, %5347
  %5350 = extractvalue %dx.types.CBufRet.f32 %5342, 2
  %5351 = fsub fast float -0.000000e+00, %5348
  %5352 = fsub fast float -0.000000e+00, %5349
  %5353 = call float @dx.op.dot2.f32(i32 54, float %1421, float %1422, float %5351, float %5352)  ; Dot2(ax,ay,bx,by)
  %5354 = fmul fast float %5353, 2.000000e+00
  %5355 = call float @dx.op.dot2.f32(i32 54, float %5351, float %5352, float %5351, float %5352)  ; Dot2(ax,ay,bx,by)
  %5356 = fmul fast float %5350, %5350
  %5357 = fsub fast float %5355, %5356
  %5358 = fmul fast float %5354, %5354
  %5359 = fmul fast float %5215, %5357
  %5360 = fsub fast float %5358, %5359
  %5361 = fcmp fast ogt float %5360, 0.000000e+00
  br i1 %5361, label %5362, label %5377

; <label>:5362                                    ; preds = %5338
  %5363 = fcmp fast ogt float %5354, 0.000000e+00
  %5364 = call float @dx.op.unary.f32(i32 24, float %5360)  ; Sqrt(value)
  %5365 = fsub fast float -0.000000e+00, %5364
  %5366 = select i1 %5363, float %5364, float %5365
  %5367 = fadd fast float %5366, %5354
  %5368 = fmul float %5367, -5.000000e-01
  %5369 = fdiv fast float %5368, %5208
  %5370 = call float @dx.op.binary.f32(i32 35, float %5369, float 0.000000e+00)  ; FMax(a,b)
  %5371 = call float @dx.op.binary.f32(i32 36, float %5243, float %5370)  ; FMin(a,b)
  %5372 = fdiv fast float %5357, %5368
  %5373 = call float @dx.op.binary.f32(i32 35, float %5372, float 0.000000e+00)  ; FMax(a,b)
  %5374 = call float @dx.op.binary.f32(i32 36, float %5243, float %5373)  ; FMin(a,b)
  %5375 = call float @dx.op.binary.f32(i32 36, float %5371, float %5374)  ; FMin(a,b)
  %5376 = call float @dx.op.binary.f32(i32 35, float %5371, float %5374)  ; FMax(a,b)
  br label %5377

; <label>:5377                                    ; preds = %5362, %5338
  %5378 = phi float [ %5376, %5362 ], [ -1.000000e+00, %5338 ]
  %5379 = phi float [ %5375, %5362 ], [ -1.000000e+00, %5338 ]
  %5380 = phi i1 [ true, %5362 ], [ false, %5338 ]
  br i1 %5380, label %5381, label %5387

; <label>:5381                                    ; preds = %5377
  %5382 = call float @dx.op.binary.f32(i32 35, float %5326, float %5379)  ; FMax(a,b)
  %5383 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 %5340
  store float %5382, float* %5383, align 4, !tbaa !92, !noalias !136
  %5384 = call float @dx.op.binary.f32(i32 35, float %5326, float %5378)  ; FMax(a,b)
  %5385 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 %5340
  store float %5384, float* %5385, align 4, !tbaa !92, !noalias !136
  %5386 = add nsw i32 %5339, 1
  br label %5387

; <label>:5387                                    ; preds = %5381, %5377
  %5388 = phi i32 [ %5386, %5381 ], [ %5339, %5377 ]
  %5389 = add nuw nsw i32 %5340, 1
  %5390 = icmp eq i32 %5389, %5195
  br i1 %5390, label %5391, label %5338

; <label>:5391                                    ; preds = %5387
  %5392 = load float, float* %5332, align 4, !tbaa !92, !alias.scope !152, !noalias !155
  %5393 = load float, float* %5331, align 4, !tbaa !92, !alias.scope !158, !noalias !159
  %5394 = load float, float* %5330, align 4, !tbaa !92, !alias.scope !160, !noalias !161
  %5395 = load float, float* %5335, align 4, !tbaa !92, !alias.scope !162, !noalias !165
  %5396 = load float, float* %5334, align 4, !tbaa !92, !alias.scope !168, !noalias !169
  %5397 = load float, float* %5333, align 4, !tbaa !92, !alias.scope !170, !noalias !171
  br label %5398

; <label>:5398                                    ; preds = %5391, %5325
  %5399 = phi float [ -1.000000e+00, %5325 ], [ %5397, %5391 ]
  %5400 = phi float [ -1.000000e+00, %5325 ], [ %5396, %5391 ]
  %5401 = phi float [ -1.000000e+00, %5325 ], [ %5395, %5391 ]
  %5402 = phi float [ -1.000000e+00, %5325 ], [ %5394, %5391 ]
  %5403 = phi float [ -1.000000e+00, %5325 ], [ %5393, %5391 ]
  %5404 = phi float [ -1.000000e+00, %5325 ], [ %5392, %5391 ]
  %5405 = phi i32 [ 0, %5325 ], [ %5388, %5391 ]
  %5406 = call float @dx.op.binary.f32(i32 36, float %5403, float %5404)  ; FMin(a,b)
  %5407 = call float @dx.op.binary.f32(i32 36, float %5402, float %5406)  ; FMin(a,b)
  %5408 = call float @dx.op.binary.f32(i32 35, float %5402, float %5403)  ; FMax(a,b)
  %5409 = call float @dx.op.binary.f32(i32 36, float %5408, float %5404)  ; FMin(a,b)
  %5410 = call float @dx.op.binary.f32(i32 36, float %5402, float %5403)  ; FMin(a,b)
  %5411 = call float @dx.op.binary.f32(i32 35, float %5410, float %5409)  ; FMax(a,b)
  %5412 = call float @dx.op.binary.f32(i32 35, float %5403, float %5404)  ; FMax(a,b)
  %5413 = call float @dx.op.binary.f32(i32 35, float %5402, float %5412)  ; FMax(a,b)
  store float %5407, float* %5330, align 4, !tbaa !92, !alias.scope !160, !noalias !161
  store float %5411, float* %5331, align 4, !tbaa !92, !alias.scope !158, !noalias !159
  store float %5413, float* %5332, align 4, !tbaa !92, !alias.scope !152, !noalias !155
  %5414 = call float @dx.op.binary.f32(i32 36, float %5400, float %5401)  ; FMin(a,b)
  %5415 = call float @dx.op.binary.f32(i32 36, float %5399, float %5414)  ; FMin(a,b)
  %5416 = call float @dx.op.binary.f32(i32 35, float %5399, float %5400)  ; FMax(a,b)
  %5417 = call float @dx.op.binary.f32(i32 36, float %5416, float %5401)  ; FMin(a,b)
  %5418 = call float @dx.op.binary.f32(i32 36, float %5399, float %5400)  ; FMin(a,b)
  %5419 = call float @dx.op.binary.f32(i32 35, float %5418, float %5417)  ; FMax(a,b)
  %5420 = call float @dx.op.binary.f32(i32 35, float %5400, float %5401)  ; FMax(a,b)
  %5421 = call float @dx.op.binary.f32(i32 35, float %5399, float %5420)  ; FMax(a,b)
  store float %5415, float* %5333, align 4, !tbaa !92, !alias.scope !170, !noalias !171
  store float %5419, float* %5334, align 4, !tbaa !92, !alias.scope !168, !noalias !169
  store float %5421, float* %5335, align 4, !tbaa !92, !alias.scope !162, !noalias !165
  %5422 = sub nsw i32 3, %5405
  %5423 = icmp sgt i32 %5422, 2
  br i1 %5423, label %5424, label %5462

; <label>:5424                                    ; preds = %5398
  %5425 = icmp eq i32 %5193, 0
  %5426 = fsub fast float %5243, %5327
  %5427 = select i1 %5425, float %5426, float %5327
  %5428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5429 = extractvalue %dx.types.CBufRet.f32 %5428, 0
  %5430 = extractvalue %dx.types.CBufRet.f32 %5428, 1
  %5431 = extractvalue %dx.types.CBufRet.f32 %5428, 2
  %5432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5433 = extractvalue %dx.types.CBufRet.f32 %5432, 0
  %5434 = extractvalue %dx.types.CBufRet.f32 %5432, 1
  %5435 = extractvalue %dx.types.CBufRet.f32 %5432, 2
  %5436 = extractvalue %dx.types.CBufRet.f32 %5432, 3
  %5437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5438 = extractvalue %dx.types.CBufRet.f32 %5437, 3
  %5439 = call float @dx.op.binary.f32(i32 36, float %5328, float %5438)  ; FMin(a,b)
  %5440 = fmul fast float %5436, %5427
  %5441 = call float @dx.op.unary.f32(i32 7, float %5440)  ; Saturate(value)
  %5442 = fsub fast float %5433, %5429
  %5443 = fsub fast float %5434, %5430
  %5444 = fsub fast float %5435, %5431
  %5445 = fmul fast float %5441, %5442
  %5446 = fmul fast float %5441, %5443
  %5447 = fmul fast float %5441, %5444
  %5448 = fadd fast float %5445, %5429
  %5449 = fadd fast float %5446, %5430
  %5450 = fadd fast float %5447, %5431
  %5451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5452 = extractvalue %dx.types.CBufRet.f32 %5451, 0
  %5453 = extractvalue %dx.types.CBufRet.f32 %5451, 1
  %5454 = fadd fast float %5453, %5452
  %5455 = call float @dx.op.unary.f32(i32 7, float %5454)  ; Saturate(value)
  %5456 = extractvalue %dx.types.CBufRet.f32 %5451, 2
  %5457 = extractvalue %dx.types.CBufRet.f32 %5451, 3
  %5458 = fadd fast float %5457, %5456
  %5459 = call float @dx.op.unary.f32(i32 7, float %5458)  ; Saturate(value)
  %5460 = fmul fast float %5455, %5439
  %5461 = fmul fast float %5460, %5459
  br label %5544

; <label>:5462                                    ; preds = %5398
  %5463 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 %5422
  %5464 = load float, float* %5463, align 4, !tbaa !92, !noalias !136
  %5465 = fcmp fast olt float %5464, %5329
  %5466 = icmp sgt i32 %5405, 0
  %5467 = and i1 %5466, %5465
  br i1 %5467, label %5468, label %5505

; <label>:5468                                    ; preds = %5462
  br label %5469

; <label>:5469                                    ; preds = %5498, %5468
  %5470 = phi float [ %5499, %5498 ], [ %5327, %5468 ]
  %5471 = phi float [ %5500, %5498 ], [ %5328, %5468 ]
  %5472 = phi float [ %5480, %5498 ], [ %5464, %5468 ]
  %5473 = phi i32 [ %5477, %5498 ], [ %5422, %5468 ]
  %5474 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 %5473
  %5475 = load float, float* %5474, align 4, !tbaa !92, !noalias !136
  %5476 = icmp slt i32 %5473, 2
  %5477 = add nsw i32 %5473, 1
  %5478 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 %5477
  %5479 = load float, float* %5478, align 4, !tbaa !92, !noalias !136
  %5480 = select i1 %5476, float %5479, float %5243
  %5481 = call float @dx.op.binary.f32(i32 36, float %5480, float %5475)  ; FMin(a,b)
  %5482 = call float @dx.op.binary.f32(i32 36, float %5329, float %5481)  ; FMin(a,b)
  %5483 = icmp eq i32 %5193, 0
  %5484 = fadd fast float %5482, %5472
  %5485 = fmul fast float %5484, %1423
  %5486 = fadd fast float %5485, %5187
  br i1 %5483, label %5492, label %5487

; <label>:5487                                    ; preds = %5469
  %5488 = fsub fast float %5482, %5472
  %5489 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5488)  ; FMax(a,b)
  %5490 = fmul fast float %5489, %5486
  %5491 = fadd fast float %5490, %5471
  br label %5498

; <label>:5492                                    ; preds = %5469
  %5493 = fsub fast float %5472, %5482
  %5494 = call float @dx.op.unary.f32(i32 6, float %5493)  ; FAbs(value)
  %5495 = fadd fast float %5494, %5470
  %5496 = fmul fast float %5494, %5486
  %5497 = fsub fast float %5471, %5496
  br label %5498

; <label>:5498                                    ; preds = %5492, %5487
  %5499 = phi float [ %5489, %5487 ], [ %5495, %5492 ]
  %5500 = phi float [ %5491, %5487 ], [ %5497, %5492 ]
  %5501 = fcmp fast olt float %5480, %5329
  %5502 = icmp slt i32 %5477, 3
  %5503 = and i1 %5502, %5501
  br i1 %5503, label %5469, label %5504

; <label>:5504                                    ; preds = %5498
  br label %5505

; <label>:5505                                    ; preds = %5504, %5462
  %5506 = phi float [ %5327, %5462 ], [ %5499, %5504 ]
  %5507 = phi float [ %5328, %5462 ], [ %5500, %5504 ]
  %5508 = fsub fast float %5243, %5506
  %5509 = select i1 %5245, float %5506, float %5508
  %5510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5511 = extractvalue %dx.types.CBufRet.f32 %5510, 0
  %5512 = extractvalue %dx.types.CBufRet.f32 %5510, 1
  %5513 = extractvalue %dx.types.CBufRet.f32 %5510, 2
  %5514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5515 = extractvalue %dx.types.CBufRet.f32 %5514, 0
  %5516 = extractvalue %dx.types.CBufRet.f32 %5514, 1
  %5517 = extractvalue %dx.types.CBufRet.f32 %5514, 2
  %5518 = extractvalue %dx.types.CBufRet.f32 %5514, 3
  %5519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5520 = extractvalue %dx.types.CBufRet.f32 %5519, 3
  %5521 = call float @dx.op.binary.f32(i32 36, float %5507, float %5520)  ; FMin(a,b)
  %5522 = fmul fast float %5518, %5509
  %5523 = call float @dx.op.unary.f32(i32 7, float %5522)  ; Saturate(value)
  %5524 = fsub fast float %5515, %5511
  %5525 = fsub fast float %5516, %5512
  %5526 = fsub fast float %5517, %5513
  %5527 = fmul fast float %5523, %5524
  %5528 = fmul fast float %5523, %5525
  %5529 = fmul fast float %5523, %5526
  %5530 = fadd fast float %5527, %5511
  %5531 = fadd fast float %5528, %5512
  %5532 = fadd fast float %5529, %5513
  %5533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5534 = extractvalue %dx.types.CBufRet.f32 %5533, 0
  %5535 = extractvalue %dx.types.CBufRet.f32 %5533, 1
  %5536 = fadd fast float %5535, %5534
  %5537 = call float @dx.op.unary.f32(i32 7, float %5536)  ; Saturate(value)
  %5538 = extractvalue %dx.types.CBufRet.f32 %5533, 2
  %5539 = extractvalue %dx.types.CBufRet.f32 %5533, 3
  %5540 = fadd fast float %5539, %5538
  %5541 = call float @dx.op.unary.f32(i32 7, float %5540)  ; Saturate(value)
  %5542 = fmul fast float %5537, %5521
  %5543 = fmul fast float %5542, %5541
  br label %5544

; <label>:5544                                    ; preds = %5505, %5424, %5259, %5241, %5239
  %5545 = phi float [ %5268, %5259 ], [ %5427, %5424 ], [ %5509, %5505 ], [ 0.000000e+00, %5239 ], [ 0.000000e+00, %5241 ]
  %5546 = phi float [ %5302, %5259 ], [ %5461, %5424 ], [ %5543, %5505 ], [ 0.000000e+00, %5239 ], [ 0.000000e+00, %5241 ]
  %5547 = phi float [ %5289, %5259 ], [ %5448, %5424 ], [ %5530, %5505 ], [ 0.000000e+00, %5239 ], [ 0.000000e+00, %5241 ]
  %5548 = phi float [ %5290, %5259 ], [ %5449, %5424 ], [ %5531, %5505 ], [ 0.000000e+00, %5239 ], [ 0.000000e+00, %5241 ]
  %5549 = phi float [ %5291, %5259 ], [ %5450, %5424 ], [ %5532, %5505 ], [ 0.000000e+00, %5239 ], [ 0.000000e+00, %5241 ]
  %5550 = fmul fast float %5182, %5546
  %5551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5552 = extractvalue %dx.types.CBufRet.f32 %5551, 2
  %5553 = fsub fast float %5189, %5552
  %5554 = fcmp fast olt float %5550, -2.000000e+01
  %5555 = call float @dx.op.unary.f32(i32 21, float %5550)  ; Exp(value)
  %5556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5557 = extractvalue %dx.types.CBufRet.f32 %5556, 2
  %5558 = extractvalue %dx.types.CBufRet.f32 %5556, 3
  %5559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5560 = extractvalue %dx.types.CBufRet.f32 %5559, 2
  %5561 = fmul fast float %5558, %5553
  %5562 = call float @dx.op.unary.f32(i32 7, float %5561)  ; Saturate(value)
  %5563 = fsub fast float 1.000000e+00, %5562
  %5564 = fmul fast float %1423, 5.000000e-01
  %5565 = fadd fast float %5564, 5.000000e-01
  %5566 = call float @dx.op.unary.f32(i32 7, float %5565)  ; Saturate(value)
  %5567 = fsub fast float 1.000000e+00, %5566
  %5568 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5563)  ; FMax(a,b)
  %5569 = fdiv fast float %5567, %5568
  %5570 = fsub fast float %5553, %135
  %5571 = call float @dx.op.unary.f32(i32 6, float %5570)  ; FAbs(value)
  %5572 = fmul fast float %5571, %5557
  %5573 = call float @dx.op.unary.f32(i32 7, float %5569)  ; Saturate(value)
  %5574 = fsub fast float 1.000000e+00, %5572
  %5575 = fmul fast float %5574, %5573
  %5576 = fadd fast float %5575, %5572
  %5577 = fmul fast float %5560, %5553
  %5578 = call float @dx.op.unary.f32(i32 7, float %5577)  ; Saturate(value)
  %5579 = fsub fast float 1.000000e+00, %5576
  %5580 = fmul fast float %5579, %5578
  %5581 = fadd fast float %5580, %5576
  %5582 = call float @dx.op.unary.f32(i32 7, float %5581)  ; Saturate(value)
  %5583 = fadd fast float %5555, -1.000000e+00
  %5584 = select i1 %5554, float -1.000000e+00, float %5583
  %5585 = fmul fast float %5582, %5584
  %5586 = fadd fast float %5585, 1.000000e+00
  %5587 = fsub fast float -0.000000e+00, %5585
  %5588 = fmul fast float %5547, %5587
  %5589 = fmul fast float %5548, %5587
  %5590 = fmul fast float %5549, %5587
  br label %5591

; <label>:5591                                    ; preds = %5544, %5145
  %5592 = phi float [ %5545, %5544 ], [ 0.000000e+00, %5145 ]
  %5593 = phi float [ %5586, %5544 ], [ 1.000000e+00, %5145 ]
  %5594 = phi float [ %5588, %5544 ], [ 0.000000e+00, %5145 ]
  %5595 = phi float [ %5589, %5544 ], [ 0.000000e+00, %5145 ]
  %5596 = phi float [ %5590, %5544 ], [ 0.000000e+00, %5145 ]
  %5597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5598 = extractvalue %dx.types.CBufRet.f32 %5597, 1
  %5599 = fsub fast float 1.000000e+00, %5593
  %5600 = fmul fast float %5599, %5175
  %5601 = fmul fast float %5600, %5598
  %5602 = fsub fast float %5175, %5601
  br i1 %5173, label %5603, label %5632, !dx.controlflow.hints !172

; <label>:5603                                    ; preds = %5591
  %5604 = fmul fast float %5176, %5170
  %5605 = fadd fast float %5604, %5171
  %5606 = call float @dx.op.unary.f32(i32 7, float %5605)  ; Saturate(value)
  %5607 = fmul fast float %5152, %5602
  %5608 = fsub fast float -0.000000e+00, %5607
  %5609 = fmul fast float %5153, %5602
  %5610 = fsub fast float -0.000000e+00, %5609
  %5611 = call float @dx.op.unary.f32(i32 21, float %5608)  ; Exp(value)
  %5612 = call float @dx.op.unary.f32(i32 21, float %5610)  ; Exp(value)
  %5613 = call float @dx.op.binary.f32(i32 35, float %5160, float %5611)  ; FMax(a,b)
  %5614 = call float @dx.op.binary.f32(i32 35, float %5160, float %5612)  ; FMax(a,b)
  %5615 = fsub fast float %5614, %5613
  %5616 = fmul fast float %5615, %5606
  %5617 = fadd fast float %5616, %5613
  %5618 = call float @dx.op.unary.f32(i32 7, float %5617)  ; Saturate(value)
  %5619 = fsub fast float %5157, %5162
  %5620 = fsub fast float %5158, %5163
  %5621 = fsub fast float %5159, %5164
  %5622 = fmul fast float %5606, %5619
  %5623 = fmul fast float %5606, %5620
  %5624 = fmul fast float %5606, %5621
  %5625 = fadd fast float %5622, %5162
  %5626 = fadd fast float %5623, %5163
  %5627 = fadd fast float %5624, %5164
  %5628 = fsub fast float 1.000000e+00, %5618
  %5629 = fmul fast float %5628, %5625
  %5630 = fmul fast float %5628, %5626
  %5631 = fmul fast float %5628, %5627
  br label %5691

; <label>:5632                                    ; preds = %5591
  %5633 = fmul fast float %5602, %5169
  %5634 = call float @dx.op.unary.f32(i32 7, float %5633)  ; Saturate(value)
  %5635 = fsub fast float 2.000000e+00, %5634
  %5636 = fmul fast float %5634, 9.921875e-01
  %5637 = fmul fast float %5636, %5635
  %5638 = fadd fast float %5637, 3.906250e-03
  %5639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %51, float %5638, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5640 = extractvalue %dx.types.ResRet.f32 %5639, 0
  %5641 = fsub fast float %5634, %5640
  %5642 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5641)  ; FMax(a,b)
  %5643 = fmul fast float %5155, %135
  %5644 = call float @dx.op.unary.f32(i32 6, float %5643)  ; FAbs(value)
  %5645 = fcmp fast ogt float %5644, 0x3EB0C6F7A0000000
  br i1 %5645, label %5646, label %5652, !dx.controlflow.hints !173

; <label>:5646                                    ; preds = %5632
  %5647 = fmul fast float %5643, 0xBFF7154760000000
  %5648 = call float @dx.op.unary.f32(i32 21, float %5647)  ; Exp(value)
  %5649 = fsub fast float 1.000000e+00, %5648
  %5650 = fdiv fast float %5649, %5643
  %5651 = fmul fast float %5650, %5165
  br label %5652

; <label>:5652                                    ; preds = %5646, %5632
  %5653 = phi float [ %5651, %5646 ], [ %5165, %5632 ]
  %5654 = fadd fast float %5653, %5167
  %5655 = fmul fast float %5654, %5642
  %5656 = fmul fast float %5152, %5655
  %5657 = fsub fast float -0.000000e+00, %5656
  %5658 = fmul fast float %5153, %5655
  %5659 = fsub fast float -0.000000e+00, %5658
  %5660 = fmul fast float %5154, %5655
  %5661 = fsub fast float -0.000000e+00, %5660
  %5662 = call float @dx.op.unary.f32(i32 21, float %5657)  ; Exp(value)
  %5663 = call float @dx.op.unary.f32(i32 21, float %5659)  ; Exp(value)
  %5664 = call float @dx.op.unary.f32(i32 21, float %5661)  ; Exp(value)
  %5665 = fmul fast float %5176, %5176
  %5666 = fadd fast float %5665, 1.000000e+00
  %5667 = fmul fast float %5666, 0x3FAE8EC8A0000000
  %5668 = fmul fast float %5667, %5162
  %5669 = fmul fast float %5667, %5163
  %5670 = fmul fast float %5667, %5164
  %5671 = fmul fast float %5176, %5160
  %5672 = fsub fast float 1.000000e+00, %5671
  %5673 = fmul fast float %5160, %5160
  %5674 = fsub fast float 1.000000e+00, %5673
  %5675 = fmul fast float %5674, 0x3FB45F3060000000
  %5676 = fmul fast float %5672, %5672
  %5677 = fdiv fast float 1.000000e+00, %5676
  %5678 = fmul fast float %5675, %5677
  %5679 = fmul fast float %5678, %5157
  %5680 = fmul fast float %5678, %5158
  %5681 = fmul fast float %5678, %5159
  %5682 = fadd fast float %5679, %5668
  %5683 = fadd fast float %5680, %5669
  %5684 = fadd fast float %5681, %5670
  %5685 = fsub fast float 1.000000e+00, %5662
  %5686 = fsub fast float 1.000000e+00, %5663
  %5687 = fsub fast float 1.000000e+00, %5664
  %5688 = fmul fast float %5682, %5685
  %5689 = fmul fast float %5683, %5686
  %5690 = fmul fast float %5684, %5687
  br label %5691

; <label>:5691                                    ; preds = %5652, %5603
  %5692 = phi float [ %5629, %5603 ], [ %5688, %5652 ]
  %5693 = phi float [ %5630, %5603 ], [ %5689, %5652 ]
  %5694 = phi float [ %5631, %5603 ], [ %5690, %5652 ]
  %5695 = phi float [ %5618, %5603 ], [ %5662, %5652 ]
  %5696 = phi float [ %5618, %5603 ], [ %5663, %5652 ]
  %5697 = phi float [ %5618, %5603 ], [ %5664, %5652 ]
  br i1 %5184, label %5698, label %5896, !dx.controlflow.hints !174

; <label>:5698                                    ; preds = %5691
  %5699 = extractvalue %dx.types.CBufRet.f32 %5597, 0
  %5700 = fmul fast float %5699, %5599
  %5701 = fsub fast float %5594, %5692
  %5702 = fsub fast float %5595, %5693
  %5703 = fsub fast float %5596, %5694
  %5704 = fmul fast float %5700, %5701
  %5705 = fmul fast float %5700, %5702
  %5706 = fmul fast float %5700, %5703
  %5707 = fadd fast float %5704, %5692
  %5708 = fadd fast float %5705, %5693
  %5709 = fadd fast float %5706, %5694
  %5710 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5695)  ; FMax(a,b)
  %5711 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5696)  ; FMax(a,b)
  %5712 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5697)  ; FMax(a,b)
  %5713 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5593)  ; FMax(a,b)
  %5714 = call float @dx.op.binary.f32(i32 35, float %5592, float %5602)  ; FMax(a,b)
  %5715 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5714)  ; FMax(a,b)
  %5716 = fdiv fast float %5592, %5715
  %5717 = call float @dx.op.unary.f32(i32 7, float %5716)  ; Saturate(value)
  %5718 = fdiv fast float %5602, %5715
  %5719 = call float @dx.op.unary.f32(i32 7, float %5718)  ; Saturate(value)
  %5720 = fcmp fast une float %5713, 1.000000e+00
  br i1 %5720, label %5721, label %5734, !dx.controlflow.hints !175

; <label>:5721                                    ; preds = %5698
  %5722 = call float @dx.op.unary.f32(i32 23, float %5713)  ; Log(value)
  %5723 = fmul fast float %5722, 0x3FE62E4300000000
  %5724 = fmul fast float %5594, %5723
  %5725 = fsub fast float -0.000000e+00, %5724
  %5726 = fmul fast float %5595, %5723
  %5727 = fsub fast float -0.000000e+00, %5726
  %5728 = fmul fast float %5596, %5723
  %5729 = fsub fast float -0.000000e+00, %5728
  %5730 = fsub fast float 1.000000e+00, %5713
  %5731 = fdiv fast float %5725, %5730
  %5732 = fdiv fast float %5727, %5730
  %5733 = fdiv fast float %5729, %5730
  br label %5734

; <label>:5734                                    ; preds = %5721, %5698
  %5735 = phi float [ %5731, %5721 ], [ %5594, %5698 ]
  %5736 = phi float [ %5732, %5721 ], [ %5595, %5698 ]
  %5737 = phi float [ %5733, %5721 ], [ %5596, %5698 ]
  %5738 = phi float [ %5723, %5721 ], [ 0.000000e+00, %5698 ]
  %5739 = fcmp fast une float %5710, 1.000000e+00
  br i1 %5739, label %5740, label %5747, !dx.controlflow.hints !176

; <label>:5740                                    ; preds = %5734
  %5741 = call float @dx.op.unary.f32(i32 23, float %5710)  ; Log(value)
  %5742 = fmul fast float %5741, 0x3FE62E4300000000
  %5743 = fmul fast float %5707, %5742
  %5744 = fsub fast float -0.000000e+00, %5743
  %5745 = fsub fast float 1.000000e+00, %5710
  %5746 = fdiv fast float %5744, %5745
  br label %5747

; <label>:5747                                    ; preds = %5740, %5734
  %5748 = phi float [ %5746, %5740 ], [ %5707, %5734 ]
  %5749 = phi float [ %5742, %5740 ], [ 0.000000e+00, %5734 ]
  %5750 = fcmp fast une float %5711, 1.000000e+00
  br i1 %5750, label %5751, label %5758, !dx.controlflow.hints !176

; <label>:5751                                    ; preds = %5747
  %5752 = call float @dx.op.unary.f32(i32 23, float %5711)  ; Log(value)
  %5753 = fmul fast float %5752, 0x3FE62E4300000000
  %5754 = fmul fast float %5708, %5753
  %5755 = fsub fast float -0.000000e+00, %5754
  %5756 = fsub fast float 1.000000e+00, %5711
  %5757 = fdiv fast float %5755, %5756
  br label %5758

; <label>:5758                                    ; preds = %5751, %5747
  %5759 = phi float [ %5757, %5751 ], [ %5708, %5747 ]
  %5760 = phi float [ %5753, %5751 ], [ 0.000000e+00, %5747 ]
  %5761 = fcmp fast une float %5712, 1.000000e+00
  br i1 %5761, label %5762, label %5769, !dx.controlflow.hints !176

; <label>:5762                                    ; preds = %5758
  %5763 = call float @dx.op.unary.f32(i32 23, float %5712)  ; Log(value)
  %5764 = fmul fast float %5763, 0x3FE62E4300000000
  %5765 = fmul fast float %5709, %5764
  %5766 = fsub fast float -0.000000e+00, %5765
  %5767 = fsub fast float 1.000000e+00, %5712
  %5768 = fdiv fast float %5766, %5767
  br label %5769

; <label>:5769                                    ; preds = %5762, %5758
  %5770 = phi float [ %5768, %5762 ], [ %5709, %5758 ]
  %5771 = phi float [ %5764, %5762 ], [ 0.000000e+00, %5758 ]
  %5772 = fmul fast float %5735, %5719
  %5773 = fmul fast float %5736, %5719
  %5774 = fmul fast float %5737, %5719
  %5775 = fmul fast float %5738, %5719
  %5776 = fmul fast float %5748, %5717
  %5777 = fmul fast float %5759, %5717
  %5778 = fmul fast float %5770, %5717
  %5779 = fmul fast float %5749, %5717
  %5780 = fmul fast float %5760, %5717
  %5781 = fmul fast float %5771, %5717
  %5782 = fadd fast float %5776, %5772
  %5783 = fadd fast float %5777, %5773
  %5784 = fadd fast float %5778, %5774
  %5785 = fadd fast float %5779, %5775
  %5786 = fadd fast float %5780, %5775
  %5787 = fadd fast float %5781, %5775
  %5788 = fcmp fast une float %5785, 0.000000e+00
  br i1 %5788, label %5789, label %5796, !dx.controlflow.hints !177

; <label>:5789                                    ; preds = %5769
  %5790 = fmul fast float %5785, 0x3FF7154760000000
  %5791 = call float @dx.op.unary.f32(i32 21, float %5790)  ; Exp(value)
  %5792 = fsub fast float 1.000000e+00, %5791
  %5793 = fmul fast float %5782, %5792
  %5794 = fsub fast float -0.000000e+00, %5793
  %5795 = fdiv fast float %5794, %5785
  br label %5796

; <label>:5796                                    ; preds = %5789, %5769
  %5797 = phi float [ %5791, %5789 ], [ 1.000000e+00, %5769 ]
  %5798 = phi float [ %5795, %5789 ], [ %5782, %5769 ]
  %5799 = fcmp fast une float %5786, 0.000000e+00
  br i1 %5799, label %5800, label %5807, !dx.controlflow.hints !177

; <label>:5800                                    ; preds = %5796
  %5801 = fmul fast float %5786, 0x3FF7154760000000
  %5802 = call float @dx.op.unary.f32(i32 21, float %5801)  ; Exp(value)
  %5803 = fsub fast float 1.000000e+00, %5802
  %5804 = fmul fast float %5783, %5803
  %5805 = fsub fast float -0.000000e+00, %5804
  %5806 = fdiv fast float %5805, %5786
  br label %5807

; <label>:5807                                    ; preds = %5800, %5796
  %5808 = phi float [ %5802, %5800 ], [ 1.000000e+00, %5796 ]
  %5809 = phi float [ %5806, %5800 ], [ %5783, %5796 ]
  %5810 = fcmp fast une float %5787, 0.000000e+00
  br i1 %5810, label %5811, label %5818, !dx.controlflow.hints !177

; <label>:5811                                    ; preds = %5807
  %5812 = fmul fast float %5787, 0x3FF7154760000000
  %5813 = call float @dx.op.unary.f32(i32 21, float %5812)  ; Exp(value)
  %5814 = fsub fast float 1.000000e+00, %5813
  %5815 = fmul fast float %5784, %5814
  %5816 = fsub fast float -0.000000e+00, %5815
  %5817 = fdiv fast float %5816, %5787
  br label %5818

; <label>:5818                                    ; preds = %5811, %5807
  %5819 = phi float [ %5813, %5811 ], [ 1.000000e+00, %5807 ]
  %5820 = phi float [ %5817, %5811 ], [ %5784, %5807 ]
  %5821 = fcmp fast ogt float %5717, %5719
  br i1 %5821, label %5822, label %5842

; <label>:5822                                    ; preds = %5818
  %5823 = fsub fast float 1.000000e+00, %5719
  %5824 = fmul fast float %5735, %5823
  %5825 = fmul fast float %5736, %5823
  %5826 = fmul fast float %5737, %5823
  %5827 = fmul fast float %5738, %5823
  %5828 = fcmp fast une float %5827, 0.000000e+00
  br i1 %5828, label %5829, label %5880, !dx.controlflow.hints !178

; <label>:5829                                    ; preds = %5822
  %5830 = fmul fast float %5827, 0x3FF7154760000000
  %5831 = call float @dx.op.unary.f32(i32 21, float %5830)  ; Exp(value)
  %5832 = fsub fast float 1.000000e+00, %5831
  %5833 = fmul fast float %5824, %5832
  %5834 = fsub fast float -0.000000e+00, %5833
  %5835 = fmul fast float %5825, %5832
  %5836 = fsub fast float -0.000000e+00, %5835
  %5837 = fmul fast float %5826, %5832
  %5838 = fsub fast float -0.000000e+00, %5837
  %5839 = fdiv fast float %5834, %5827
  %5840 = fdiv fast float %5836, %5827
  %5841 = fdiv fast float %5838, %5827
  br label %5880

; <label>:5842                                    ; preds = %5818
  %5843 = fsub fast float 1.000000e+00, %5717
  %5844 = fmul fast float %5748, %5843
  %5845 = fmul fast float %5759, %5843
  %5846 = fmul fast float %5770, %5843
  %5847 = fmul fast float %5749, %5843
  %5848 = fmul fast float %5760, %5843
  %5849 = fmul fast float %5771, %5843
  %5850 = fcmp fast une float %5847, 0.000000e+00
  br i1 %5850, label %5851, label %5858, !dx.controlflow.hints !177

; <label>:5851                                    ; preds = %5842
  %5852 = fmul fast float %5847, 0x3FF7154760000000
  %5853 = call float @dx.op.unary.f32(i32 21, float %5852)  ; Exp(value)
  %5854 = fsub fast float 1.000000e+00, %5853
  %5855 = fmul fast float %5844, %5854
  %5856 = fsub fast float -0.000000e+00, %5855
  %5857 = fdiv fast float %5856, %5847
  br label %5858

; <label>:5858                                    ; preds = %5851, %5842
  %5859 = phi float [ %5857, %5851 ], [ %5844, %5842 ]
  %5860 = phi float [ %5853, %5851 ], [ 1.000000e+00, %5842 ]
  %5861 = fcmp fast une float %5848, 0.000000e+00
  br i1 %5861, label %5862, label %5869, !dx.controlflow.hints !177

; <label>:5862                                    ; preds = %5858
  %5863 = fmul fast float %5848, 0x3FF7154760000000
  %5864 = call float @dx.op.unary.f32(i32 21, float %5863)  ; Exp(value)
  %5865 = fsub fast float 1.000000e+00, %5864
  %5866 = fmul fast float %5845, %5865
  %5867 = fsub fast float -0.000000e+00, %5866
  %5868 = fdiv fast float %5867, %5848
  br label %5869

; <label>:5869                                    ; preds = %5862, %5858
  %5870 = phi float [ %5868, %5862 ], [ %5845, %5858 ]
  %5871 = phi float [ %5864, %5862 ], [ 1.000000e+00, %5858 ]
  %5872 = fcmp fast une float %5849, 0.000000e+00
  br i1 %5872, label %5873, label %5880, !dx.controlflow.hints !177

; <label>:5873                                    ; preds = %5869
  %5874 = fmul fast float %5849, 0x3FF7154760000000
  %5875 = call float @dx.op.unary.f32(i32 21, float %5874)  ; Exp(value)
  %5876 = fsub fast float 1.000000e+00, %5875
  %5877 = fmul fast float %5846, %5876
  %5878 = fsub fast float -0.000000e+00, %5877
  %5879 = fdiv fast float %5878, %5849
  br label %5880

; <label>:5880                                    ; preds = %5873, %5869, %5829, %5822
  %5881 = phi float [ %5879, %5873 ], [ %5841, %5829 ], [ %5826, %5822 ], [ %5846, %5869 ]
  %5882 = phi float [ %5870, %5873 ], [ %5840, %5829 ], [ %5825, %5822 ], [ %5870, %5869 ]
  %5883 = phi float [ %5859, %5873 ], [ %5839, %5829 ], [ %5824, %5822 ], [ %5859, %5869 ]
  %5884 = phi float [ %5875, %5873 ], [ %5831, %5829 ], [ 1.000000e+00, %5822 ], [ 1.000000e+00, %5869 ]
  %5885 = phi float [ %5871, %5873 ], [ %5831, %5829 ], [ 1.000000e+00, %5822 ], [ %5871, %5869 ]
  %5886 = phi float [ %5860, %5873 ], [ %5831, %5829 ], [ 1.000000e+00, %5822 ], [ %5860, %5869 ]
  %5887 = fmul fast float %5886, %5798
  %5888 = fmul fast float %5885, %5809
  %5889 = fmul fast float %5884, %5820
  %5890 = fadd fast float %5887, %5883
  %5891 = fadd fast float %5888, %5882
  %5892 = fadd fast float %5889, %5881
  %5893 = fmul fast float %5886, %5797
  %5894 = fmul fast float %5885, %5808
  %5895 = fmul fast float %5884, %5819
  br label %5896

; <label>:5896                                    ; preds = %5880, %5691
  %5897 = phi float [ %5895, %5880 ], [ %5697, %5691 ]
  %5898 = phi float [ %5894, %5880 ], [ %5696, %5691 ]
  %5899 = phi float [ %5893, %5880 ], [ %5695, %5691 ]
  %5900 = phi float [ %5892, %5880 ], [ %5694, %5691 ]
  %5901 = phi float [ %5891, %5880 ], [ %5693, %5691 ]
  %5902 = phi float [ %5890, %5880 ], [ %5692, %5691 ]
  %5903 = call float @dx.op.dot3.f32(i32 55, float %5899, float %5898, float %5897, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5904 = call float @dx.op.dot3.f32(i32 55, float %5902, float %5901, float %5900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5905 = select i1 %1528, float %5903, float %5899
  %5906 = select i1 %1528, float %5903, float %5898
  %5907 = select i1 %1528, float 1.000000e+00, float %5897
  %5908 = select i1 %1528, float %5904, float %5902
  %5909 = select i1 %1528, float 0.000000e+00, float %5901
  %5910 = select i1 %1528, float 0.000000e+00, float %5900
  %5911 = fmul fast float %5905, %5140
  %5912 = fmul fast float %5906, %5142
  %5913 = fmul fast float %5907, %5144
  %5914 = fadd fast float %5911, %5908
  %5915 = fadd fast float %5912, %5909
  %5916 = fadd fast float %5910, %5913
  %5917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5918 = extractvalue %dx.types.CBufRet.f32 %5917, 2
  %5919 = extractvalue %dx.types.CBufRet.f32 %5917, 3
  %5920 = fmul fast float %5918, %78
  %5921 = fmul fast float %5919, %79
  %5922 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %51, float %5920, float %5921, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5923 = extractvalue %dx.types.ResRet.f32 %5922, 0
  %5924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %51, float %5920, float %5921, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5925 = extractvalue %dx.types.ResRet.f32 %5924, 0
  %5926 = extractvalue %dx.types.ResRet.f32 %5924, 1
  %5927 = extractvalue %dx.types.ResRet.f32 %5924, 2
  %5928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5929 = extractvalue %dx.types.CBufRet.f32 %5928, 1
  %5930 = fmul fast float %5929, %5925
  %5931 = fmul fast float %5929, %5926
  %5932 = fmul fast float %5929, %5927
  %5933 = fmul fast float %5923, %5899
  %5934 = call float @dx.op.dot3.f32(i32 55, float %5923, float %5923, float %5923, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5935 = call float @dx.op.dot3.f32(i32 55, float %5930, float %5931, float %5932, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5936 = select i1 %1528, float %5934, float %5923
  %5937 = select i1 %1528, float 1.000000e+00, float %5923
  %5938 = select i1 %1528, float %5935, float %5930
  %5939 = select i1 %1528, float 0.000000e+00, float %5931
  %5940 = select i1 %1528, float 0.000000e+00, float %5932
  %5941 = fmul fast float %5936, %5914
  %5942 = fmul fast float %5936, %5915
  %5943 = fmul fast float %5937, %5916
  %5944 = fadd fast float %5941, %5938
  %5945 = fadd fast float %5942, %5939
  %5946 = fadd fast float %5940, %5943
  br label %5947

; <label>:5947                                    ; preds = %5896, %5111
  %5948 = phi float [ %5140, %5111 ], [ %5944, %5896 ]
  %5949 = phi float [ %5142, %5111 ], [ %5945, %5896 ]
  %5950 = phi float [ %5144, %5111 ], [ %5946, %5896 ]
  %5951 = phi float [ 1.000000e+00, %5111 ], [ %5933, %5896 ]
  %5952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5953 = extractvalue %dx.types.CBufRet.f32 %5952, 2
  %5954 = extractvalue %dx.types.CBufRet.f32 %5952, 3
  %5955 = fmul fast float %5953, %78
  %5956 = fmul fast float %5954, %79
  %5957 = call float @dx.op.unary.f32(i32 7, float %5955)  ; Saturate(value)
  %5958 = call float @dx.op.unary.f32(i32 7, float %5956)  ; Saturate(value)
  %5959 = select i1 %95, i32 0, i32 2
  %5960 = or i32 %5959, 1
  %5961 = uitofp i32 %5960 to float
  %5962 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %51, float %5957, float %5958, float %5961, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5963 = extractvalue %dx.types.ResRet.f32 %5962, 0
  %5964 = extractvalue %dx.types.ResRet.f32 %5962, 1
  %5965 = extractvalue %dx.types.ResRet.f32 %5962, 2
  %5966 = extractvalue %dx.types.ResRet.f32 %5962, 3
  %5967 = add nuw nsw i32 %5959, 2
  %5968 = uitofp i32 %5967 to float
  %5969 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %51, float %5957, float %5958, float %5968, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5970 = extractvalue %dx.types.ResRet.f32 %5969, 0
  %5971 = extractvalue %dx.types.ResRet.f32 %5969, 1
  %5972 = extractvalue %dx.types.ResRet.f32 %5969, 2
  %5973 = extractvalue %dx.types.ResRet.f32 %5969, 3
  %5974 = call float @dx.op.binary.f32(i32 35, float %5964, float %5965)  ; FMax(a,b)
  %5975 = call float @dx.op.binary.f32(i32 35, float %5963, float %5974)  ; FMax(a,b)
  %5976 = call float @dx.op.binary.f32(i32 35, float %5975, float %5966)  ; FMax(a,b)
  %5977 = call float @dx.op.binary.f32(i32 36, float %5971, float %5972)  ; FMin(a,b)
  %5978 = call float @dx.op.binary.f32(i32 36, float %5970, float %5977)  ; FMin(a,b)
  %5979 = call float @dx.op.binary.f32(i32 36, float %5978, float %5973)  ; FMin(a,b)
  %5980 = fmul fast float %5976, 2.550000e+02
  %5981 = fadd fast float %5980, 0x3F70101020000000
  %5982 = fptoui float %5981 to i32
  %5983 = fmul fast float %5979, 2.550000e+02
  %5984 = fadd fast float %5983, 0x3F70101020000000
  %5985 = fptoui float %5984 to i32
  %5986 = icmp ult i32 %5982, %5985
  br i1 %5986, label %5987, label %6039

; <label>:5987                                    ; preds = %5947
  %5988 = fcmp fast ogt float %70, 9.843750e-01
  %5989 = fadd fast float %71, -4.000000e+00
  %5990 = select i1 %5988, float -4.000000e+00, float %5989
  %5991 = call float @dx.op.binary.f32(i32 35, float %5990, float 0.000000e+00)  ; FMax(a,b)
  %5992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5993 = extractvalue %dx.types.CBufRet.f32 %5992, 0
  %5994 = fadd fast float %5993, %5991
  %5995 = extractvalue %dx.types.CBufRet.f32 %5992, 2
  %5996 = fmul fast float %5994, %5995
  %5997 = call float @dx.op.unary.f32(i32 23, float %5996)  ; Log(value)
  %5998 = extractvalue %dx.types.CBufRet.f32 %5992, 3
  %5999 = fmul fast float %5998, %5997
  %6000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.f32 %6000, 2
  %6002 = fmul fast float %5999, %6001
  %6003 = call float @dx.op.unary.f32(i32 7, float %6002)  ; Saturate(value)
  %6004 = uitofp i32 %5982 to float
  %6005 = uitofp i32 %5985 to float
  %6006 = fadd fast float %6004, 5.000000e-01
  %6007 = fadd fast float %6005, 5.000000e-01
  %6008 = fmul fast float %6001, %6006
  %6009 = fmul fast float %6001, %6007
  %6010 = fadd fast float %6008, 0x3F0FFB4800000000
  %6011 = fadd fast float %6009, 0xBF0FFB4800000000
  %6012 = call float @dx.op.binary.f32(i32 35, float %6003, float %6010)  ; FMax(a,b)
  %6013 = call float @dx.op.binary.f32(i32 36, float %6012, float %6011)  ; FMin(a,b)
  %6014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6015 = extractvalue %dx.types.CBufRet.f32 %6014, 1
  %6016 = extractvalue %dx.types.CBufRet.f32 %6014, 2
  %6017 = extractvalue %dx.types.CBufRet.f32 %6014, 0
  %6018 = select i1 %95, float 0.000000e+00, float %6017
  %6019 = fmul fast float %6015, %6013
  %6020 = fadd fast float %6018, %6019
  %6021 = fadd fast float %6018, %6016
  %6022 = fsub fast float %6015, %6016
  %6023 = fadd fast float %6022, %6018
  %6024 = call float @dx.op.binary.f32(i32 35, float %6020, float %6021)  ; FMax(a,b)
  %6025 = call float @dx.op.binary.f32(i32 36, float %6024, float %6023)  ; FMin(a,b)
  %6026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %49, float %5957, float %5958, float %6025, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6027 = extractvalue %dx.types.ResRet.f32 %6026, 0
  %6028 = extractvalue %dx.types.ResRet.f32 %6026, 1
  %6029 = extractvalue %dx.types.ResRet.f32 %6026, 2
  %6030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %5957, float %5958, float %6025, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6031 = extractvalue %dx.types.ResRet.f32 %6030, 0
  %6032 = extractvalue %dx.types.ResRet.f32 %6030, 1
  %6033 = extractvalue %dx.types.ResRet.f32 %6030, 2
  %6034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6035 = extractvalue %dx.types.CBufRet.f32 %6034, 1
  %6036 = fmul fast float %6035, %6031
  %6037 = fmul fast float %6035, %6032
  %6038 = fmul fast float %6035, %6033
  br label %6039

; <label>:6039                                    ; preds = %5987, %5947
  %6040 = phi float [ %6027, %5987 ], [ 1.000000e+00, %5947 ]
  %6041 = phi float [ %6028, %5987 ], [ 1.000000e+00, %5947 ]
  %6042 = phi float [ %6029, %5987 ], [ 1.000000e+00, %5947 ]
  %6043 = phi float [ %6036, %5987 ], [ 0.000000e+00, %5947 ]
  %6044 = phi float [ %6037, %5987 ], [ 0.000000e+00, %5947 ]
  %6045 = phi float [ %6038, %5987 ], [ 0.000000e+00, %5947 ]
  %6046 = fmul fast float %6040, %5951
  %6047 = call float @dx.op.dot3.f32(i32 55, float %6040, float %6041, float %6042, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6048 = call float @dx.op.dot3.f32(i32 55, float %6043, float %6044, float %6045, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6049 = select i1 %1528, float %6047, float %6040
  %6050 = select i1 %1528, float %6047, float %6041
  %6051 = select i1 %1528, float 1.000000e+00, float %6042
  %6052 = select i1 %1528, float %6048, float %6043
  %6053 = select i1 %1528, float 0.000000e+00, float %6044
  %6054 = select i1 %1528, float 0.000000e+00, float %6045
  %6055 = fmul fast float %6049, %5948
  %6056 = fmul fast float %6050, %5949
  %6057 = fmul fast float %6051, %5950
  %6058 = fadd fast float %6055, %6052
  %6059 = fadd fast float %6056, %6053
  %6060 = fadd fast float %6054, %6057
  %6061 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6062 = extractvalue %dx.types.CBufRet.i32 %6061, 3
  %6063 = and i32 %6062, 3
  %6064 = icmp ne i32 %6063, 0
  %6065 = and i32 %6062, 4
  %6066 = icmp ne i32 %6065, 0
  %6067 = and i1 %6064, %6066
  %6068 = and i1 %1528, %6067
  br i1 %6068, label %6069, label %6075

; <label>:6069                                    ; preds = %6039
  %6070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6071 = extractvalue %dx.types.CBufRet.f32 %6070, 1
  %6072 = fadd fast float %6046, -1.000000e+00
  %6073 = fmul fast float %6071, %6072
  %6074 = fadd fast float %6073, 1.000000e+00
  br label %6075

; <label>:6075                                    ; preds = %6069, %6039
  %6076 = phi float [ %6074, %6069 ], [ %6046, %6039 ]
  %6077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6078 = extractvalue %dx.types.CBufRet.f32 %6077, 0
  br i1 %1528, label %6079, label %6093

; <label>:6079                                    ; preds = %6075
  %6080 = fadd fast float %6058, %6059
  %6081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6082 = extractvalue %dx.types.CBufRet.f32 %6081, 3
  %6083 = extractvalue %dx.types.CBufRet.f32 %5128, 1
  %6084 = fsub fast float %5134, %5122
  %6085 = fadd fast float %6084, %5135
  %6086 = fsub fast float %6085, %6083
  %6087 = extractvalue %dx.types.CBufRet.f32 %5128, 2
  %6088 = fmul fast float %6086, %6087
  %6089 = call float @dx.op.unary.f32(i32 7, float %6088)  ; Saturate(value)
  %6090 = fsub fast float %6089, %6082
  %6091 = fmul fast float %6090, %6076
  %6092 = fadd fast float %6091, %6082
  br label %6096

; <label>:6093                                    ; preds = %6075
  %6094 = fmul fast float %6078, %6059
  %6095 = fmul fast float %6078, %6060
  br label %6096

; <label>:6096                                    ; preds = %6093, %6079
  %6097 = phi float [ %6080, %6079 ], [ %6058, %6093 ]
  %6098 = phi float [ %6092, %6079 ], [ %6094, %6093 ]
  %6099 = phi float [ 1.000000e+00, %6079 ], [ %6095, %6093 ]
  %6100 = fmul float %6078, %6097
  %6101 = fadd fast float %881, 0x3FE3C6EF40000000
  %6102 = call float @dx.op.unary.f32(i32 22, float %6101)  ; Frc(value)
  %6103 = call float @dx.op.unary.f32(i32 23, float %6100)  ; Log(value)
  %6104 = fadd fast float %6103, -7.000000e+00
  %6105 = call float @dx.op.unary.f32(i32 21, float %6104)  ; Exp(value)
  %6106 = fmul fast float %6102, 2.000000e+00
  %6107 = fadd fast float %6106, -1.000000e+00
  %6108 = fmul fast float %6105, %6107
  %6109 = fcmp fast ogt float %6100, 0.000000e+00
  %6110 = select i1 %6109, float %6108, float 0.000000e+00
  %6111 = fadd fast float %6110, %6100
  %6112 = fadd fast float %881, 0x3FF3C6EF40000000
  %6113 = call float @dx.op.unary.f32(i32 22, float %6112)  ; Frc(value)
  %6114 = call float @dx.op.unary.f32(i32 23, float %6098)  ; Log(value)
  %6115 = fadd fast float %6114, -7.000000e+00
  %6116 = call float @dx.op.unary.f32(i32 21, float %6115)  ; Exp(value)
  %6117 = fmul fast float %6113, 2.000000e+00
  %6118 = fadd fast float %6117, -1.000000e+00
  %6119 = fmul fast float %6116, %6118
  %6120 = fcmp fast ogt float %6098, 0.000000e+00
  %6121 = select i1 %6120, float %6119, float 0.000000e+00
  %6122 = fadd fast float %6121, %6098
  %6123 = fadd fast float %881, 0x3FFDAA66E0000000
  %6124 = call float @dx.op.unary.f32(i32 22, float %6123)  ; Frc(value)
  %6125 = call float @dx.op.unary.f32(i32 23, float %6099)  ; Log(value)
  %6126 = fadd fast float %6125, -6.000000e+00
  %6127 = call float @dx.op.unary.f32(i32 21, float %6126)  ; Exp(value)
  %6128 = fmul fast float %6124, 2.000000e+00
  %6129 = fadd fast float %6128, -1.000000e+00
  %6130 = fmul fast float %6127, %6129
  %6131 = fcmp fast ogt float %6099, 0.000000e+00
  %6132 = select i1 %6131, float %6130, float 0.000000e+00
  %6133 = fadd fast float %6132, %6099
  %6134 = call float @dx.op.binary.f32(i32 36, float %6111, float 3.225500e+04)  ; FMin(a,b)
  %6135 = call float @dx.op.binary.f32(i32 36, float %6122, float 3.225500e+04)  ; FMin(a,b)
  %6136 = call float @dx.op.binary.f32(i32 36, float %6133, float 3.225500e+04)  ; FMin(a,b)
  %6137 = fmul fast float %6134, %5118
  %6138 = fmul fast float %6135, %5118
  %6139 = fmul fast float %6136, %5118
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6137)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6138)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6139)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %5118)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!70}
!dx.entryPoints = !{!71}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !58, !62}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
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
!28 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!29 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
!30 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!31 = !{i32 22, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!32 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!33 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!34 = !{i32 25, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!35 = !{i32 26, %"class.Texture3D<float>"* undef, !"", i32 2, i32 82, i32 1, i32 4, i32 0, !7}
!36 = !{i32 27, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!37 = !{i32 28, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!38 = !{i32 29, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!39 = !{i32 30, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!40 = !{i32 31, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!41 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!43 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !12}
!45 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!46 = !{i32 37, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!51 = !{i32 42, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!52 = !{i32 43, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!54 = !{i32 45, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!55 = !{i32 46, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!56 = !{i32 47, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!57 = !{i32 48, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 7, i32 0, !7}
!58 = !{!59, !60, !61}
!59 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!60 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!61 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!62 = !{!63, !64, !65, !66, !67, !68, !69}
!63 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!64 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!65 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!66 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!67 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!68 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!69 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!70 = !{[20 x i32] [i32 18, i32 4, i32 15, i32 15, i32 7, i32 15, i32 7, i32 7, i32 7, i32 7, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0]}
!71 = !{void ()* @ps_main, !"ps_main", !72, !4, !91}
!72 = !{!73, !89, null}
!73 = !{!74, !77, !79, !81, !83, !84, !85, !86, !88}
!74 = !{i32 0, !"SV_Position", i8 9, i8 3, !75, i8 4, i32 1, i8 4, i32 0, i8 0, !76}
!75 = !{i32 0}
!76 = !{i32 3, i32 15}
!77 = !{i32 1, !"NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 3, i32 1, i8 0, !78}
!78 = !{i32 3, i32 7}
!79 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !75, i8 2, i32 1, i8 2, i32 2, i8 0, !80}
!80 = !{i32 3, i32 3}
!81 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !75, i8 2, i32 1, i8 1, i32 1, i8 3, !82}
!82 = !{i32 3, i32 1}
!83 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !75, i8 1, i32 1, i8 1, i32 3, i8 0, !82}
!84 = !{i32 5, !"SV_IsFrontFace", i8 5, i8 13, !75, i8 1, i32 1, i8 1, i32 3, i8 1, !82}
!85 = !{i32 6, !"SV_ClipDistance", i8 9, i8 6, !75, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!86 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !87, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!87 = !{i32 1}
!88 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !75, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!89 = !{!90}
!90 = !{i32 0, !"SV_Target", i8 9, i8 16, !75, i8 0, i32 1, i8 4, i32 0, i8 0, !76}
!91 = !{i32 0, i64 24}
!92 = !{!93, !93, i64 0}
!93 = !{!"float", !94, i64 0}
!94 = !{!"omnipotent char", !95, i64 0}
!95 = !{!"Simple C/C++ TBAA"}
!96 = !{!97, !99, !100}
!97 = distinct !{!97, !98, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!98 = distinct !{!98, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!99 = distinct !{!99, !98, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!100 = distinct !{!100, !98, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = !{!115, !115, i64 0}
!115 = !{!"int", !94, i64 0}
!116 = !{!117, !119, !121, !123}
!117 = distinct !{!117, !118, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!118 = distinct !{!118, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!119 = distinct !{!119, !120, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!120 = distinct !{!120, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!121 = distinct !{!121, !122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!122 = distinct !{!122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!123 = distinct !{!123, !124, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!124 = distinct !{!124, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
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
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = !{!137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!137 = distinct !{!137, !138, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!138 = distinct !{!138, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!139 = distinct !{!139, !140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!140 = distinct !{!140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!141 = distinct !{!141, !140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!142 = distinct !{!142, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!143 = distinct !{!143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!144 = distinct !{!144, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!145 = distinct !{!145, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!146 = distinct !{!146, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!147 = distinct !{!147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!148 = distinct !{!148, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!149 = distinct !{!149, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!150 = distinct !{!150, !151, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!151 = distinct !{!151, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"\01?sort@@YAXAIAM00@Z: %c"}
!154 = distinct !{!154, !"\01?sort@@YAXAIAM00@Z"}
!155 = !{!156, !157, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!156 = distinct !{!156, !154, !"\01?sort@@YAXAIAM00@Z: %a"}
!157 = distinct !{!157, !154, !"\01?sort@@YAXAIAM00@Z: %b"}
!158 = !{!157}
!159 = !{!156, !153, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!160 = !{!156}
!161 = !{!157, !153, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!162 = !{!163}
!163 = distinct !{!163, !164, !"\01?sort@@YAXAIAM00@Z: %c"}
!164 = distinct !{!164, !"\01?sort@@YAXAIAM00@Z"}
!165 = !{!166, !167, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!166 = distinct !{!166, !164, !"\01?sort@@YAXAIAM00@Z: %a"}
!167 = distinct !{!167, !164, !"\01?sort@@YAXAIAM00@Z: %b"}
!168 = !{!167}
!169 = !{!166, !163, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!170 = !{!166}
!171 = !{!167, !163, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 2}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}

