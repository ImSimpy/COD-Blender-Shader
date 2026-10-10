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
; shader hash: 93d2010ab25530925e05d05fd6a6cdcf
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
;                                   texture    byte         r/o     T22     t10,space1     1
;                                   texture    byte         r/o     T23      t1,space1     1
;                                   texture     f32          1d     T24     t32,space2     1
;                                   texture     f32          3d     T25     t82,space2     1
;                                   texture     f32          1d     T26     t30,space2     1
;                                   texture     f32          3d     T27     t44,space2     1
;                                   texture     f32          3d     T28     t45,space2     1
;                                   texture     f32     2darray     T29     t47,space2     1
;                                   texture     f32     2darray     T30      t8,space2     1
;                                   texture     f32          2d     T31      t2,space2     1
;                                   texture     f32          2d     T32      t3,space2     1
;                                   texture     f32          2d     T33      t4,space2     1
;                                   textureunorm_f32     2darray     T34     t80,space2     1
;                                   texture    byte         r/o     T35     t67,space1     1
;                                   texture     f32          2d     T36      t7,space2     1
;                                   texture     f32          2d     T37      t6,space2     1
;                                   texture     f32          2d     T38      t5,space2     1
;                                   texture     f32          2d     T39     t38,space2     1
;                                   texture    byte         r/o     T40     t12,space1     1
;                                   texture    byte         r/o     T41     t13,space1     1
;                                   texture     f32          2d     T42     t83,space2     1
;                                   texture     f32          2d     T43     t86,space2     1
;                                   texture    byte         r/o     T44     t16,space1     1
;                                   texture    byte         r/o     T45     t17,space1     1
;                                   texture     f32          2d     T46             t8     1
;                                   texture     f32     2darray     T47            t10     1
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = alloca [4 x i32], align 4
  %57 = alloca [4 x float], align 4
  %58 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = icmp ne i32 %58, 0
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = alloca [12 x float], align 4
  %72 = alloca [12 x float], align 4
  %73 = alloca [3 x float], align 4
  %74 = alloca [3 x float], align 4
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = fmul fast float %76, %67
  %78 = fmul fast float %76, %68
  %79 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %80 = call float @dx.op.unary.f32(i32 25, float %79)  ; Rsqrt(value)
  %81 = fmul fast float %80, %64
  %82 = fmul fast float %80, %65
  %83 = fmul fast float %80, %66
  %84 = xor i1 %59, true
  %85 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %86 = extractvalue %dx.types.ResRet.i32 %85, 0
  %87 = icmp eq i32 %86, 0
  %88 = and i1 %87, %84
  %89 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.i32 %89, 0
  %91 = and i32 %90, 256
  %92 = icmp ne i32 %91, 0
  %93 = and i1 %88, %92
  %94 = or i1 %59, %93
  %95 = select i1 %94, float 1.000000e+00, float -1.000000e+00
  %96 = fmul fast float %81, %95
  %97 = fmul fast float %82, %95
  %98 = fmul fast float %83, %95
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 3
  %102 = fmul fast float %77, 2.000000e+00
  %103 = fmul fast float %102, %100
  %104 = fmul fast float %78, 2.000000e+00
  %105 = fmul fast float %104, %101
  %106 = fsub fast float 1.000000e+00, %103
  %107 = fsub fast float 1.000000e+00, %105
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %111 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %112 = fmul fast float %106, %109
  %113 = fmul fast float %106, %110
  %114 = fmul fast float %106, %111
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %118 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %119 = fmul fast float %107, %116
  %120 = fmul fast float %107, %117
  %121 = fmul fast float %107, %118
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %125 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %126 = fadd fast float %119, %123
  %127 = fadd fast float %126, %112
  %128 = fadd fast float %120, %124
  %129 = fadd fast float %128, %113
  %130 = fadd fast float %121, %125
  %131 = fadd fast float %130, %114
  %132 = fmul fast float %127, %70
  %133 = fmul fast float %129, %70
  %134 = fmul fast float %131, %70
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %137 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %138 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %139 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %140 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %141 = fmul fast float %137, %136
  %142 = fmul fast float %138, %136
  %143 = fmul fast float %139, %136
  %144 = fmul fast float %140, %136
  %145 = call float @dx.op.dot2.f32(i32 54, float %143, float %144, float %143, float %144)  ; Dot2(ax,ay,bx,by)
  %146 = call float @dx.op.dot2.f32(i32 54, float %141, float %142, float %141, float %142)  ; Dot2(ax,ay,bx,by)
  %147 = call float @dx.op.binary.f32(i32 35, float %146, float %145)  ; FMax(a,b)
  %148 = call float @dx.op.unary.f32(i32 23, float %147)  ; Log(value)
  %149 = fmul fast float %148, 5.000000e-01
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %152 = fadd fast float %151, %149
  %153 = call float @dx.op.binary.f32(i32 35, float %152, float 0.000000e+00)  ; FMax(a,b)
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 3
  %156 = fadd fast float %155, %153
  %157 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %158 = shl i32 %157, 16
  %159 = or i32 %158, %157
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = fadd fast float %161, %132
  %164 = fadd fast float %162, %133
  %165 = fmul fast float %163, 0x3F53C37960000000
  %166 = fmul fast float %164, 0x3F53C37960000000
  %167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %167, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %169 = extractvalue %dx.types.ResRet.f32 %168, 0
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %172 = fmul fast float %171, %169
  %173 = shl i32 %60, 3
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = and i32 %175, 16383
  %177 = shl i32 %60, 2
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = and i32 %179, 255
  %181 = mul nuw nsw i32 %176, 148
  %182 = add nuw nsw i32 %181, 4
  %183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = add nuw nsw i32 %181, 8
  %186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = fsub fast float 1.000000e+00, %63
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %191 = fmul fast float %190, %62
  %192 = fmul fast float %190, %188
  %193 = fadd fast float %191, %184
  %194 = fadd fast float %192, %187
  %195 = add nuw nsw i32 %181, 48
  %196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.f32 %196, 0
  %198 = add nuw nsw i32 %181, 52
  %199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = add nuw nsw i32 %181, 104
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = add nuw nsw i32 %181, 108
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 0
  %209 = fmul fast float %208, %62
  %210 = fmul fast float %208, %63
  %211 = extractvalue %dx.types.CBufRet.f32 %207, 1
  %212 = fadd fast float %209, %211
  %213 = fadd fast float %210, %211
  %214 = add i32 %203, 0
  %215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %214, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %216 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %215, i32 0)  ; GetDimensions(handle,mipLevel)
  %217 = extractvalue %dx.types.Dimensions %216, 0
  %218 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %217)  ; FirstbitLo(value)
  %219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.i32 %219, 1
  %221 = sub nsw i32 %220, %218
  %222 = sitofp i32 %221 to float
  %223 = fsub fast float %156, %222
  %224 = call float @dx.op.binary.f32(i32 35, float %223, float 0.000000e+00)  ; FMax(a,b)
  %225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %215, %dx.types.Handle %48, float %212, float %213, float %197, float undef, i32 0, i32 0, i32 undef, float %224)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = extractvalue %dx.types.ResRet.f32 %225, 1
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 3
  %230 = fmul fast float %229, 2.000000e+00
  %231 = fmul fast float %230, %226
  %232 = fmul fast float %230, %227
  %233 = fsub fast float %231, %229
  %234 = fsub fast float %232, %229
  %235 = fmul fast float %233, %233
  %236 = fmul fast float %234, %234
  %237 = fadd fast float %235, %236
  %238 = call float @dx.op.unary.f32(i32 24, float %237)  ; Sqrt(value)
  %239 = add i32 %206, 0
  %240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %239, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %241 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %240, i32 0)  ; GetDimensions(handle,mipLevel)
  %242 = extractvalue %dx.types.Dimensions %241, 0
  %243 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %242)  ; FirstbitLo(value)
  %244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.i32 %244, 1
  %246 = sub nsw i32 %245, %243
  %247 = sitofp i32 %246 to float
  %248 = fsub fast float %156, %247
  %249 = call float @dx.op.binary.f32(i32 35, float %248, float 0.000000e+00)  ; FMax(a,b)
  %250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %240, %dx.types.Handle %48, float %212, float %213, float %200, float undef, i32 0, i32 0, i32 undef, float %249)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.i32 %252, 0
  %254 = call i32 @dx.op.binary.i32(i32 40, i32 %176, i32 %253)  ; UMin(a,b)
  %255 = mul i32 %254, 36
  %256 = add i32 %255, 4
  %257 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %180)  ; FirstbitLo(value)
  %258 = shl i32 %257, 2
  %259 = add i32 %256, %258
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = and i32 %261, 32767
  %263 = mul nuw nsw i32 %262, 928
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = or i32 %263, 8
  %267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = or i32 %263, 12
  %270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 1
  %272 = or i32 %263, 20
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = or i32 %263, 24
  %276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = extractvalue %dx.types.ResRet.f32 %276, 1
  %279 = extractvalue %dx.types.ResRet.f32 %276, 2
  %280 = extractvalue %dx.types.ResRet.f32 %276, 3
  %281 = add nuw nsw i32 %263, 40
  %282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = add nuw nsw i32 %263, 80
  %285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = add nuw nsw i32 %263, 228
  %288 = add nuw nsw i32 %263, 596
  %289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  %291 = extractvalue %dx.types.ResRet.f32 %289, 1
  %292 = add nuw nsw i32 %263, 620
  %293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.f32 %293, 0
  %295 = extractvalue %dx.types.ResRet.f32 %293, 1
  %296 = add nuw nsw i32 %263, 628
  %297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 0
  %299 = extractvalue %dx.types.ResRet.f32 %297, 1
  %300 = extractvalue %dx.types.ResRet.f32 %297, 2
  %301 = extractvalue %dx.types.ResRet.f32 %297, 3
  %302 = add nuw nsw i32 %263, 648
  %303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 0
  %305 = add nuw nsw i32 %263, 812
  %306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = add nuw nsw i32 %263, 816
  %309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.f32 %309, 1
  %311 = add nuw nsw i32 %263, 896
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = add nuw nsw i32 %263, 900
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = add nuw nsw i32 %263, 904
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %265, 128
  %321 = icmp ne i32 %320, 0
  %322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.i32 %322, 0
  %324 = and i32 %323, 512
  %325 = icmp ne i32 %324, 0
  %326 = and i1 %321, %325
  %327 = select i1 %326, float 0.000000e+00, float 1.000000e+00
  %328 = call float @dx.op.unary.f32(i32 7, float %327)  ; Saturate(value)
  %329 = fmul fast float %328, 2.550000e+02
  %330 = fptoui float %329 to i32
  %331 = fcmp fast ole float %61, 0x3FA4B5DCC0000000
  %332 = fmul fast float %61, 0x3FB3D07220000000
  %333 = fadd fast float %61, 0x3FAC28F5C0000000
  %334 = fmul fast float %333, 0x3FEE54EDE0000000
  %335 = call float @dx.op.unary.f32(i32 23, float %334)  ; Log(value)
  %336 = fmul fast float %335, 0x4003333340000000
  %337 = call float @dx.op.unary.f32(i32 21, float %336)  ; Exp(value)
  %338 = select i1 %331, float %332, float %337
  %339 = call float @dx.op.unary.f32(i32 7, float %338)  ; Saturate(value)
  %340 = fmul fast float %290, %251
  %341 = fadd fast float %340, %291
  %342 = call float @dx.op.unary.f32(i32 7, float %341)  ; Saturate(value)
  %343 = call float @dx.op.binary.f32(i32 35, float %339, float %342)  ; FMax(a,b)
  %344 = add i32 %316, 0
  %345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %344, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 0
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 0
  %350 = extractvalue %dx.types.CBufRet.f32 %348, 1
  %351 = extractvalue %dx.types.CBufRet.f32 %348, 2
  %352 = fadd fast float %349, %132
  %353 = fadd fast float %350, %133
  %354 = fadd fast float %351, %134
  %355 = fmul fast float %132, %132
  %356 = fmul fast float %133, %133
  %357 = fadd fast float %355, %356
  %358 = fmul fast float %134, %134
  %359 = fadd fast float %357, %358
  %360 = call float @dx.op.unary.f32(i32 24, float %359)  ; Sqrt(value)
  %361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.f32 %361, 0
  %363 = fcmp fast ogt float %360, %362
  %364 = zext i1 %363 to i32
  %365 = extractvalue %dx.types.CBufRet.f32 %361, 1
  %366 = fcmp fast ogt float %360, %365
  %367 = zext i1 %366 to i32
  %368 = add nuw nsw i32 %367, %364
  %369 = extractvalue %dx.types.CBufRet.f32 %361, 2
  %370 = fcmp fast ogt float %360, %369
  %371 = zext i1 %370 to i32
  %372 = add nuw nsw i32 %368, %371
  %373 = icmp ult i32 %372, 3
  %374 = zext i1 %373 to i32
  %375 = shl nuw nsw i32 %372, 2
  %376 = add nuw nsw i32 %375, 48
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %376)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 1
  %379 = fcmp fast ogt float %360, %378
  %380 = zext i1 %379 to i32
  %381 = or i32 %375, 1
  %382 = add nuw nsw i32 %381, 48
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %382)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 1
  %385 = fcmp fast ogt float %360, %384
  %386 = zext i1 %385 to i32
  %387 = add nuw nsw i32 %386, %380
  %388 = or i32 %375, 2
  %389 = add nuw nsw i32 %388, 48
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %389)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 1
  %392 = fcmp fast ogt float %360, %391
  %393 = zext i1 %392 to i32
  %394 = add nuw nsw i32 %387, %393
  %395 = add i32 %274, -1
  %396 = call i32 @dx.op.binary.i32(i32 40, i32 %394, i32 %395)  ; UMin(a,b)
  %397 = add i32 %375, %396
  %398 = call i32 @dx.op.binary.i32(i32 40, i32 %397, i32 12)  ; UMin(a,b)
  %399 = add i32 %398, 48
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %399)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %402 = fcmp fast oge float %360, %401
  %403 = zext i1 %402 to i32
  %404 = call i32 @dx.op.binary.i32(i32 40, i32 %274, i32 %374)  ; UMin(a,b)
  %405 = call i32 @dx.op.binary.i32(i32 40, i32 %403, i32 %404)  ; UMin(a,b)
  %406 = add i32 %405, %274
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %586, label %408

; <label>:408                                     ; preds = %0
  br label %409

; <label>:409                                     ; preds = %409, %408
  %410 = phi float [ %582, %409 ], [ 0.000000e+00, %408 ]
  %411 = phi float [ %574, %409 ], [ 0.000000e+00, %408 ]
  %412 = phi float [ %575, %409 ], [ 0.000000e+00, %408 ]
  %413 = phi i32 [ %421, %409 ], [ %398, %408 ]
  %414 = phi i32 [ %583, %409 ], [ 0, %408 ]
  %415 = add i32 %414, %413
  %416 = and i32 %415, -4
  %417 = add i32 %416, %274
  %418 = icmp uge i32 %415, %417
  %419 = sub i32 4, %274
  %420 = select i1 %418, i32 %419, i32 0
  %421 = add i32 %420, %413
  %422 = add i32 %420, %415
  %423 = and i32 %422, 3
  %424 = lshr i32 %422, 2
  %425 = add i32 %422, 32
  %426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %425)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.f32 %426, 0
  %428 = extractvalue %dx.types.CBufRet.f32 %426, 1
  %429 = extractvalue %dx.types.CBufRet.f32 %426, 2
  %430 = extractvalue %dx.types.CBufRet.f32 %426, 3
  %431 = fmul fast float %427, %360
  %432 = fadd fast float %431, %428
  %433 = call float @dx.op.unary.f32(i32 7, float %432)  ; Saturate(value)
  %434 = fmul fast float %429, %360
  %435 = fadd fast float %434, %430
  %436 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  %437 = call float @dx.op.binary.f32(i32 36, float %433, float %436)  ; FMin(a,b)
  %438 = mul nuw nsw i32 %423, 72
  %439 = add nuw nsw i32 %287, %438
  %440 = add nuw nsw i32 %439, 16
  %441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = extractvalue %dx.types.ResRet.f32 %441, 1
  %444 = extractvalue %dx.types.ResRet.f32 %441, 2
  %445 = extractvalue %dx.types.ResRet.f32 %441, 3
  %446 = add nuw nsw i32 %439, 36
  %447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.f32 %447, 0
  %449 = add nuw nsw i32 %439, 56
  %450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = fmul fast float %238, 3.906250e-03
  %453 = fmul fast float %452, %286
  %454 = fmul fast float %453, %448
  %455 = fmul fast float %454, %451
  %456 = extractvalue %dx.types.ResRet.f32 %450, 1
  %457 = fadd fast float %455, %456
  %458 = call float @dx.op.binary.f32(i32 35, float %457, float 0.000000e+00)  ; FMax(a,b)
  %459 = add nuw nsw i32 %439, 32
  %460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = fmul fast float %448, %233
  %463 = fmul fast float %448, %234
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 1
  %466 = add nuw nsw i32 %439, 40
  %467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  %471 = extractvalue %dx.types.ResRet.f32 %467, 3
  %472 = fadd fast float %465, %172
  %473 = fadd fast float %472, %470
  %474 = fmul fast float %472, %469
  %475 = call float @dx.op.unary.f32(i32 29, float %474)  ; Round_z(value)
  %476 = fmul fast float %468, %475
  %477 = fsub fast float %472, %476
  %478 = fmul fast float %473, %469
  %479 = call float @dx.op.unary.f32(i32 29, float %478)  ; Round_z(value)
  %480 = fmul fast float %479, %468
  %481 = fsub fast float %473, %480
  %482 = fmul fast float %477, %462
  %483 = fmul fast float %477, %463
  %484 = fmul fast float %481, %462
  %485 = fmul fast float %481, %463
  %486 = fsub fast float %352, %482
  %487 = fsub fast float %353, %483
  %488 = fsub fast float %352, %484
  %489 = fsub fast float %353, %485
  %490 = fsub fast float %470, %477
  %491 = call float @dx.op.unary.f32(i32 6, float %490)  ; FAbs(value)
  %492 = fmul fast float %491, %471
  %493 = call float @dx.op.unary.f32(i32 7, float %492)  ; Saturate(value)
  %494 = fmul fast float %268, 4.000000e+00
  %495 = uitofp i32 %424 to float
  %496 = fadd fast float %495, %494
  %497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.f32 %497, 0
  %499 = extractvalue %dx.types.CBufRet.f32 %497, 1
  %500 = extractvalue %dx.types.CBufRet.f32 %497, 2
  %501 = extractvalue %dx.types.CBufRet.f32 %497, 3
  %502 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 0
  store float %498, float* %502, align 4
  %503 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 1
  store float %499, float* %503, align 4
  %504 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 2
  store float %500, float* %504, align 4
  %505 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 3
  store float %501, float* %505, align 4
  %506 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 %424
  %507 = load float, float* %506, align 4, !tbaa !91, !noalias !95
  %508 = fmul fast float %507, %271
  %509 = fmul fast float %486, %442
  %510 = call float @dx.op.tertiary.f32(i32 46, float %443, float %487, float %509)  ; FMad(a,b,c)
  %511 = fmul fast float %486, %444
  %512 = call float @dx.op.tertiary.f32(i32 46, float %445, float %487, float %511)  ; FMad(a,b,c)
  %513 = add nuw nsw i32 %439, 8
  %514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = extractvalue %dx.types.ResRet.f32 %514, 1
  %517 = fadd fast float %515, %510
  %518 = fadd fast float %516, %512
  %519 = fmul fast float %517, %508
  %520 = fmul fast float %518, %508
  %521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 0
  %523 = extractvalue %dx.types.ResRet.f32 %521, 1
  %524 = fmul fast float %519, %522
  %525 = fmul fast float %520, %523
  %526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %527 = extractvalue %dx.types.CBufRet.f32 %526, 2
  %528 = fadd fast float %524, %527
  %529 = fadd fast float %525, %527
  %530 = fmul fast float %488, %442
  %531 = call float @dx.op.tertiary.f32(i32 46, float %443, float %489, float %530)  ; FMad(a,b,c)
  %532 = fmul fast float %488, %444
  %533 = call float @dx.op.tertiary.f32(i32 46, float %445, float %489, float %532)  ; FMad(a,b,c)
  %534 = fadd fast float %515, %531
  %535 = fadd fast float %516, %533
  %536 = fmul fast float %534, %508
  %537 = fmul fast float %535, %508
  %538 = fmul fast float %536, %522
  %539 = fmul fast float %537, %523
  %540 = fadd fast float %538, %527
  %541 = fadd fast float %539, %527
  %542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %49, float %528, float %529, float %496, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 0
  %544 = extractvalue %dx.types.ResRet.f32 %542, 1
  %545 = extractvalue %dx.types.ResRet.f32 %542, 3
  %546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %49, float %540, float %541, float %496, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = extractvalue %dx.types.ResRet.f32 %546, 1
  %549 = extractvalue %dx.types.ResRet.f32 %546, 3
  %550 = fsub fast float %547, %543
  %551 = fsub fast float %548, %544
  %552 = fsub fast float %549, %545
  %553 = fmul fast float %550, %493
  %554 = fmul fast float %551, %493
  %555 = fmul fast float %552, %493
  %556 = fadd fast float %553, %543
  %557 = fadd fast float %554, %544
  %558 = fadd fast float %555, %545
  %559 = fmul fast float %556, 2.000000e+00
  %560 = fmul fast float %557, 2.000000e+00
  %561 = fadd fast float %559, -1.000000e+00
  %562 = fadd fast float %560, -1.000000e+00
  %563 = fmul fast float %561, %442
  %564 = call float @dx.op.tertiary.f32(i32 46, float %562, float %444, float %563)  ; FMad(a,b,c)
  %565 = fmul fast float %561, %443
  %566 = call float @dx.op.tertiary.f32(i32 46, float %562, float %445, float %565)  ; FMad(a,b,c)
  %567 = fmul fast float %437, %347
  %568 = fmul fast float %567, %458
  %569 = fmul fast float %568, %461
  %570 = fmul fast float %564, %569
  %571 = fmul fast float %570, %522
  %572 = fmul fast float %566, %569
  %573 = fmul fast float %572, %523
  %574 = fadd fast float %571, %411
  %575 = fadd fast float %573, %412
  %576 = add nuw nsw i32 %439, 64
  %577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.f32 %577, 0
  %579 = fmul fast float %578, %558
  %580 = extractvalue %dx.types.ResRet.f32 %577, 1
  %581 = fadd fast float %579, %580
  %582 = call float @dx.op.binary.f32(i32 35, float %410, float %581)  ; FMax(a,b)
  %583 = add nuw i32 %414, 1
  %584 = icmp eq i32 %583, %406
  br i1 %584, label %585, label %409

; <label>:585                                     ; preds = %409
  br label %586

; <label>:586                                     ; preds = %585, %0
  %587 = phi float [ 0.000000e+00, %0 ], [ %582, %585 ]
  %588 = phi float [ 0.000000e+00, %0 ], [ %574, %585 ]
  %589 = phi float [ 0.000000e+00, %0 ], [ %575, %585 ]
  %590 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float 1.000000e+00, float %588, float %589, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %591 = call float @dx.op.unary.f32(i32 25, float %590)  ; Rsqrt(value)
  %592 = fmul fast float %591, %588
  %593 = fmul fast float %591, %589
  %594 = fmul fast float %587, %294
  %595 = fadd fast float %594, %295
  %596 = call float @dx.op.unary.f32(i32 7, float %595)  ; Saturate(value)
  %597 = fadd fast float %596, %343
  %598 = and i32 %265, 16
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %659, label %600

; <label>:600                                     ; preds = %586
  %601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.f32 %601, 0
  %603 = extractvalue %dx.types.CBufRet.f32 %601, 1
  %604 = fsub fast float %352, %602
  %605 = fsub fast float %353, %603
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 2
  %608 = fmul fast float %604, %607
  %609 = fmul fast float %605, %607
  %610 = fadd fast float %608, 5.000000e-01
  %611 = fadd fast float %609, 5.000000e-01
  %612 = fcmp fast olt float %610, 0.000000e+00
  %613 = fcmp fast olt float %611, 0.000000e+00
  %614 = or i1 %612, %613
  %615 = fcmp fast oge float %610, 1.000000e+00
  %616 = fcmp fast oge float %611, 1.000000e+00
  %617 = or i1 %615, %616
  %618 = or i1 %614, %617
  br i1 %618, label %650, label %619

; <label>:619                                     ; preds = %600
  %620 = fmul fast float %607, %352
  %621 = fmul fast float %607, %353
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 2
  %624 = fsub fast float %354, %623
  %625 = extractvalue %dx.types.CBufRet.f32 %622, 1
  %626 = fmul fast float %624, %625
  %627 = call float @dx.op.unary.f32(i32 7, float %626)  ; Saturate(value)
  %628 = call float @dx.op.binary.f32(i32 36, float %611, float %627)  ; FMin(a,b)
  %629 = call float @dx.op.binary.f32(i32 36, float %610, float %628)  ; FMin(a,b)
  %630 = call float @dx.op.binary.f32(i32 35, float %611, float %627)  ; FMax(a,b)
  %631 = call float @dx.op.binary.f32(i32 35, float %610, float %630)  ; FMax(a,b)
  %632 = fsub fast float 1.000000e+00, %631
  %633 = call float @dx.op.binary.f32(i32 36, float %629, float %632)  ; FMin(a,b)
  %634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.f32 %634, 3
  %636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %637 = extractvalue %dx.types.CBufRet.f32 %636, 1
  %638 = call float @dx.op.binary.f32(i32 35, float %637, float %635)  ; FMax(a,b)
  %639 = fsub fast float %638, %637
  %640 = fsub fast float %633, %637
  %641 = fdiv fast float %640, %639
  %642 = call float @dx.op.unary.f32(i32 7, float %641)  ; Saturate(value)
  %643 = fmul fast float %642, 2.000000e+00
  %644 = fsub fast float 3.000000e+00, %643
  %645 = fmul fast float %642, %642
  %646 = fmul fast float %645, %644
  %647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %49, float %620, float %621, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = fmul fast float %646, %648
  br label %650

; <label>:650                                     ; preds = %619, %600
  %651 = phi float [ %649, %619 ], [ 0.000000e+00, %600 ]
  %652 = fmul fast float %310, %193
  %653 = fmul fast float %310, %194
  %654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %655 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %345, %dx.types.Handle %654, float %652, float %653, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %656 = extractvalue %dx.types.ResRet.f32 %655, 0
  %657 = fmul fast float %656, %651
  %658 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %657)  ; FMax(a,b)
  br label %659

; <label>:659                                     ; preds = %650, %586
  %660 = phi float [ %658, %650 ], [ 0.000000e+00, %586 ]
  %661 = and i32 %265, 8
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %679, label %663

; <label>:663                                     ; preds = %659
  %664 = fadd fast float %307, 1.000000e+00
  %665 = fmul fast float %597, %664
  %666 = fsub fast float %665, %307
  %667 = fsub fast float %664, %666
  %668 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  %669 = fsub fast float 1.000000e+00, %665
  %670 = call float @dx.op.unary.f32(i32 7, float %669)  ; Saturate(value)
  %671 = fsub fast float %668, %670
  %672 = fsub fast float %660, %670
  %673 = fdiv fast float %672, %671
  %674 = call float @dx.op.unary.f32(i32 7, float %673)  ; Saturate(value)
  %675 = fmul fast float %674, 2.000000e+00
  %676 = fsub fast float 3.000000e+00, %675
  %677 = fmul fast float %674, %674
  %678 = fmul fast float %677, %676
  br label %679

; <label>:679                                     ; preds = %663, %659
  %680 = phi float [ %678, %663 ], [ %660, %659 ]
  %681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %682 = extractvalue %dx.types.CBufRet.f32 %681, 3
  %683 = fmul fast float %682, %680
  %684 = and i32 %265, 32
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %702, label %686

; <label>:686                                     ; preds = %679
  %687 = add i32 %319, 0
  %688 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %687, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %689 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %688, %dx.types.Handle %50, float %683, float %304, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %690 = extractvalue %dx.types.ResRet.f32 %689, 0
  %691 = extractvalue %dx.types.ResRet.f32 %689, 1
  %692 = extractvalue %dx.types.ResRet.f32 %689, 2
  %693 = extractvalue %dx.types.ResRet.f32 %689, 3
  %694 = and i32 %313, 255
  %695 = uitofp i32 %694 to float
  %696 = lshr i32 %313, 8
  %697 = and i32 %696, 255
  %698 = uitofp i32 %697 to float
  %699 = fmul fast float %693, %695
  %700 = fadd fast float %699, %698
  %701 = fmul fast float %700, 0x3F70101000000000
  br label %702

; <label>:702                                     ; preds = %686, %679
  %703 = phi float [ %690, %686 ], [ %298, %679 ]
  %704 = phi float [ %691, %686 ], [ %299, %679 ]
  %705 = phi float [ %692, %686 ], [ %300, %679 ]
  %706 = phi float [ %701, %686 ], [ %301, %679 ]
  %707 = fsub fast float %703, %277
  %708 = fsub fast float %704, %278
  %709 = fsub fast float %705, %279
  %710 = fmul fast float %707, %683
  %711 = fmul fast float %708, %683
  %712 = fmul fast float %709, %683
  %713 = fadd fast float %710, %277
  %714 = fadd fast float %711, %278
  %715 = fadd fast float %712, %279
  %716 = fsub fast float %706, %280
  %717 = fmul fast float %716, %683
  %718 = fadd fast float %717, %280
  %719 = and i32 %157, 65535
  %720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %719)  ; LegacyF16ToF32(value)
  %721 = lshr i32 %159, 16
  %722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %721)  ; LegacyF16ToF32(value)
  %723 = fadd fast float %713, %720
  %724 = fadd fast float %714, %722
  %725 = fadd fast float %715, %720
  %726 = fadd fast float %718, %722
  %727 = call i32 @dx.op.legacyF32ToF16(i32 130, float %723)  ; LegacyF32ToF16(value)
  %728 = call i32 @dx.op.legacyF32ToF16(i32 130, float %724)  ; LegacyF32ToF16(value)
  %729 = shl i32 %728, 16
  %730 = or i32 %729, %727
  %731 = call i32 @dx.op.legacyF32ToF16(i32 130, float %725)  ; LegacyF32ToF16(value)
  %732 = call i32 @dx.op.legacyF32ToF16(i32 130, float %726)  ; LegacyF32ToF16(value)
  %733 = shl i32 %732, 16
  %734 = or i32 %733, %731
  %735 = fadd fast float %720, 1.000000e+00
  %736 = fadd fast float %722, %283
  %737 = call i32 @dx.op.legacyF32ToF16(i32 130, float %735)  ; LegacyF32ToF16(value)
  %738 = call i32 @dx.op.legacyF32ToF16(i32 130, float %736)  ; LegacyF32ToF16(value)
  %739 = shl i32 %738, 16
  %740 = or i32 %739, %737
  %741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.f32 %741, 2
  %743 = fmul fast float %742, 0x3FE3C6EF40000000
  %744 = frem fast float %77, 2.560000e+02
  %745 = frem fast float %78, 2.560000e+02
  %746 = fptoui float %744 to i32
  %747 = fptoui float %745 to i32
  %748 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %746, i32 %747, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %749 = extractvalue %dx.types.ResRet.f32 %748, 0
  %750 = fadd fast float %749, %743
  %751 = call float @dx.op.unary.f32(i32 22, float %750)  ; Frc(value)
  %752 = fcmp fast ogt float %98, 0.000000e+00
  %753 = fcmp fast olt float %98, 0.000000e+00
  %754 = zext i1 %752 to i32
  %755 = zext i1 %753 to i32
  %756 = sub nsw i32 %754, %755
  %757 = sitofp i32 %756 to float
  %758 = fadd fast float %757, %98
  %759 = fdiv fast float -1.000000e+00, %758
  %760 = fmul fast float %96, %97
  %761 = fmul fast float %760, %759
  %762 = fmul fast float %96, %96
  %763 = fmul fast float %762, %757
  %764 = fmul fast float %763, %759
  %765 = fadd fast float %764, 1.000000e+00
  %766 = fmul fast float %761, %757
  %767 = fmul fast float %96, %757
  %768 = fsub fast float -0.000000e+00, %767
  %769 = fmul fast float %97, %97
  %770 = fmul fast float %769, %759
  %771 = fadd fast float %770, %757
  %772 = fsub fast float -0.000000e+00, %97
  %773 = and i32 %727, 65535
  %774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %773)  ; LegacyF16ToF32(value)
  %775 = lshr i32 %730, 16
  %776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %775)  ; LegacyF16ToF32(value)
  %777 = and i32 %731, 65535
  %778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %777)  ; LegacyF16ToF32(value)
  %779 = lshr i32 %734, 16
  %780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %779)  ; LegacyF16ToF32(value)
  %781 = and i32 %737, 65535
  %782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %781)  ; LegacyF16ToF32(value)
  %783 = lshr i32 %740, 16
  %784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %783)  ; LegacyF16ToF32(value)
  %785 = call float @dx.op.unary.f32(i32 7, float %784)  ; Saturate(value)
  %786 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %787 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %788 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %789 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %790 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %791 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %792 = fadd fast float %786, %132
  %793 = fadd fast float %787, %133
  %794 = fadd fast float %788, %134
  %795 = fadd fast float %789, %132
  %796 = fadd fast float %790, %133
  %797 = fadd fast float %791, %134
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 0
  %800 = extractvalue %dx.types.CBufRet.f32 %798, 1
  %801 = extractvalue %dx.types.CBufRet.f32 %798, 2
  %802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.f32 %802, 2
  %804 = extractvalue %dx.types.CBufRet.f32 %802, 3
  %805 = fmul fast float %799, %77
  %806 = fmul fast float %805, %803
  %807 = fmul fast float %800, %78
  %808 = fmul fast float %807, %804
  %809 = fptoui float %806 to i32
  %810 = fptoui float %808 to i32
  %811 = fadd fast float %799, -1.000000e+00
  %812 = fadd fast float %800, -1.000000e+00
  %813 = fptoui float %811 to i32
  %814 = fptoui float %812 to i32
  %815 = call i32 @dx.op.binary.i32(i32 40, i32 %809, i32 %813)  ; UMin(a,b)
  %816 = call i32 @dx.op.binary.i32(i32 40, i32 %810, i32 %814)  ; UMin(a,b)
  %817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.f32 %817, 2
  %819 = extractvalue %dx.types.CBufRet.f32 %817, 3
  %820 = fmul fast float %818, %70
  %821 = fsub fast float %820, %819
  %822 = fadd fast float %801, -1.000000e+00
  %823 = call float @dx.op.binary.f32(i32 36, float %821, float %822)  ; FMin(a,b)
  %824 = fptoui float %823 to i32
  %825 = fptoui float %799 to i32
  %826 = fptoui float %800 to i32
  %827 = mul i32 %824, %826
  %828 = add i32 %827, %816
  %829 = mul i32 %828, %825
  %830 = add i32 %829, %815
  %831 = shl i32 %830, 2
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %831, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = and i32 %833, 1023
  %835 = lshr i32 %833, 10
  %836 = icmp eq i32 %834, 0
  br i1 %836, label %1226, label %837

; <label>:837                                     ; preds = %702
  %838 = and i32 %833, 1023
  br label %839

; <label>:839                                     ; preds = %958, %837
  %840 = phi float [ %959, %958 ], [ 0.000000e+00, %837 ]
  %841 = phi float [ %960, %958 ], [ 0.000000e+00, %837 ]
  %842 = phi float [ %961, %958 ], [ 0.000000e+00, %837 ]
  %843 = phi float [ %962, %958 ], [ %592, %837 ]
  %844 = phi float [ %963, %958 ], [ %593, %837 ]
  %845 = phi float [ %964, %958 ], [ %782, %837 ]
  %846 = phi float [ %965, %958 ], [ %785, %837 ]
  %847 = phi float [ %966, %958 ], [ %780, %837 ]
  %848 = phi float [ %967, %958 ], [ %774, %837 ]
  %849 = phi float [ %968, %958 ], [ %776, %837 ]
  %850 = phi float [ %969, %958 ], [ %778, %837 ]
  %851 = phi i32 [ %907, %958 ], [ 0, %837 ]
  %852 = add nuw nsw i32 %851, %835
  %853 = shl i32 %852, 2
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = shl i32 %855, 8
  %857 = or i32 %856, 48
  %858 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.f32 %858, 0
  %860 = extractvalue %dx.types.ResRet.f32 %858, 1
  %861 = extractvalue %dx.types.ResRet.f32 %858, 2
  %862 = extractvalue %dx.types.ResRet.f32 %858, 3
  %863 = or i32 %856, 64
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %863, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = extractvalue %dx.types.ResRet.i32 %864, 1
  %867 = or i32 %856, 80
  %868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 2
  %870 = extractvalue %dx.types.ResRet.f32 %868, 3
  %871 = or i32 %856, 96
  %872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.f32 %872, 0
  %874 = extractvalue %dx.types.ResRet.f32 %872, 1
  %875 = extractvalue %dx.types.ResRet.f32 %872, 2
  %876 = extractvalue %dx.types.ResRet.f32 %872, 3
  %877 = or i32 %856, 112
  %878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.f32 %878, 2
  %880 = or i32 %856, 128
  %881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %880, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.f32 %881, 0
  %883 = extractvalue %dx.types.ResRet.f32 %881, 1
  %884 = extractvalue %dx.types.ResRet.f32 %881, 2
  %885 = extractvalue %dx.types.ResRet.f32 %881, 3
  %886 = or i32 %856, 144
  %887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.f32 %887, 0
  %889 = extractvalue %dx.types.ResRet.f32 %887, 1
  %890 = extractvalue %dx.types.ResRet.f32 %887, 2
  %891 = extractvalue %dx.types.ResRet.f32 %887, 3
  %892 = or i32 %856, 160
  %893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.f32 %893, 0
  %895 = extractvalue %dx.types.ResRet.f32 %893, 1
  %896 = extractvalue %dx.types.ResRet.f32 %893, 2
  %897 = or i32 %856, 192
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = or i32 %856, 208
  %901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.f32 %901, 0
  %903 = or i32 %856, 248
  %904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %903, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.f32 %904, 0
  %906 = extractvalue %dx.types.ResRet.f32 %904, 1
  %907 = add nuw nsw i32 %851, 1
  %908 = bitcast float %862 to i32
  %909 = and i32 %908, 512
  %910 = icmp ne i32 %909, 0
  %911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.f32 %911, 0
  %913 = extractvalue %dx.types.ResRet.f32 %911, 1
  %914 = extractvalue %dx.types.ResRet.f32 %911, 2
  %915 = extractvalue %dx.types.ResRet.f32 %911, 3
  %916 = call float @dx.op.dot4.f32(i32 56, float %912, float %913, float %914, float %915, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %917 = or i32 %856, 16
  %918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.f32 %918, 0
  %920 = extractvalue %dx.types.ResRet.f32 %918, 1
  %921 = extractvalue %dx.types.ResRet.f32 %918, 2
  %922 = extractvalue %dx.types.ResRet.f32 %918, 3
  %923 = call float @dx.op.dot4.f32(i32 56, float %919, float %920, float %921, float %922, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %924 = or i32 %856, 32
  %925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.f32 %925, 0
  %927 = extractvalue %dx.types.ResRet.f32 %925, 1
  %928 = extractvalue %dx.types.ResRet.f32 %925, 2
  %929 = extractvalue %dx.types.ResRet.f32 %925, 3
  %930 = call float @dx.op.dot4.f32(i32 56, float %926, float %927, float %928, float %929, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %931 = call float @dx.op.unary.f32(i32 27, float %916)  ; Round_ni(value)
  %932 = call float @dx.op.unary.f32(i32 6, float %931)  ; FAbs(value)
  %933 = call float @dx.op.unary.f32(i32 27, float %923)  ; Round_ni(value)
  %934 = call float @dx.op.unary.f32(i32 6, float %933)  ; FAbs(value)
  %935 = call float @dx.op.unary.f32(i32 6, float %930)  ; FAbs(value)
  %936 = call float @dx.op.unary.f32(i32 27, float %935)  ; Round_ni(value)
  %937 = fadd fast float %934, %932
  %938 = fadd fast float %937, %936
  %939 = fcmp fast oeq float %938, 0.000000e+00
  %940 = call float @dx.op.dot4.f32(i32 56, float %912, float %913, float %914, float %915, float %792, float %793, float %794, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %941 = call float @dx.op.dot4.f32(i32 56, float %919, float %920, float %921, float %922, float %792, float %793, float %794, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %942 = call float @dx.op.dot4.f32(i32 56, float %912, float %913, float %914, float %915, float %795, float %796, float %797, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %943 = call float @dx.op.dot4.f32(i32 56, float %919, float %920, float %921, float %922, float %795, float %796, float %797, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %944 = fsub fast float %940, %916
  %945 = fsub fast float %942, %916
  %946 = fsub fast float %941, %923
  %947 = fsub fast float %943, %923
  %948 = call float @dx.op.dot3.f32(i32 55, float %859, float %860, float %861, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 2
  %951 = call float @dx.op.unary.f32(i32 6, float %948)  ; FAbs(value)
  %952 = fadd fast float %951, %950
  %953 = call float @dx.op.unary.f32(i32 7, float %952)  ; Saturate(value)
  %954 = extractvalue %dx.types.CBufRet.f32 %949, 0
  %955 = fcmp fast ogt float %953, %954
  %956 = and i1 %939, %955
  %957 = and i1 %910, %956
  br i1 %957, label %971, label %958

; <label>:958                                     ; preds = %1212, %1052, %971, %839
  %959 = phi float [ %840, %971 ], [ %840, %1052 ], [ %1222, %1212 ], [ %840, %839 ]
  %960 = phi float [ %841, %971 ], [ %841, %1052 ], [ %1223, %1212 ], [ %841, %839 ]
  %961 = phi float [ %842, %971 ], [ %842, %1052 ], [ %1224, %1212 ], [ %842, %839 ]
  %962 = phi float [ %843, %971 ], [ %843, %1052 ], [ %1186, %1212 ], [ %843, %839 ]
  %963 = phi float [ %844, %971 ], [ %844, %1052 ], [ %1187, %1212 ], [ %844, %839 ]
  %964 = phi float [ %845, %971 ], [ %845, %1052 ], [ %1181, %1212 ], [ %845, %839 ]
  %965 = phi float [ %846, %971 ], [ %846, %1052 ], [ %1178, %1212 ], [ %846, %839 ]
  %966 = phi float [ %847, %971 ], [ %847, %1052 ], [ %1175, %1212 ], [ %847, %839 ]
  %967 = phi float [ %848, %971 ], [ %848, %1052 ], [ %1170, %1212 ], [ %848, %839 ]
  %968 = phi float [ %849, %971 ], [ %849, %1052 ], [ %1171, %1212 ], [ %849, %839 ]
  %969 = phi float [ %850, %971 ], [ %850, %1052 ], [ %1172, %1212 ], [ %850, %839 ]
  %970 = icmp eq i32 %907, %838
  br i1 %970, label %1225, label %839

; <label>:971                                     ; preds = %839
  %972 = extractvalue %dx.types.ResRet.f32 %878, 3
  %973 = extractvalue %dx.types.ResRet.f32 %878, 1
  %974 = extractvalue %dx.types.ResRet.f32 %878, 0
  %975 = extractvalue %dx.types.ResRet.f32 %868, 1
  %976 = extractvalue %dx.types.ResRet.f32 %868, 0
  %977 = extractvalue %dx.types.ResRet.i32 %864, 3
  %978 = extractvalue %dx.types.ResRet.i32 %864, 2
  %979 = add i32 %977, 0
  %980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %979, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %982 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %980, %dx.types.Handle %981, float %916, float %923, float undef, float undef, i32 0, i32 0, i32 undef, float %944, float %946, float undef, float %945, float %947, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %983 = extractvalue %dx.types.ResRet.f32 %982, 0
  %984 = fmul fast float %983, %976
  %985 = fadd fast float %984, %975
  %986 = call float @dx.op.unary.f32(i32 7, float %985)  ; Saturate(value)
  %987 = fmul fast float %916, %873
  %988 = call float @dx.op.tertiary.f32(i32 46, float %874, float %923, float %987)  ; FMad(a,b,c)
  %989 = fadd fast float %988, %974
  %990 = fmul fast float %916, %875
  %991 = call float @dx.op.tertiary.f32(i32 46, float %876, float %923, float %990)  ; FMad(a,b,c)
  %992 = fadd fast float %991, %973
  %993 = fmul fast float %944, %873
  %994 = call float @dx.op.tertiary.f32(i32 46, float %874, float %946, float %993)  ; FMad(a,b,c)
  %995 = fmul fast float %944, %875
  %996 = call float @dx.op.tertiary.f32(i32 46, float %876, float %946, float %995)  ; FMad(a,b,c)
  %997 = fmul fast float %945, %873
  %998 = call float @dx.op.tertiary.f32(i32 46, float %874, float %947, float %997)  ; FMad(a,b,c)
  %999 = fmul fast float %945, %875
  %1000 = call float @dx.op.tertiary.f32(i32 46, float %876, float %947, float %999)  ; FMad(a,b,c)
  %1001 = add i32 %978, 0
  %1002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1001, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1003 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1002, %dx.types.Handle %981, float %989, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float %994, float %996, float undef, float %998, float %1000, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1004 = extractvalue %dx.types.ResRet.f32 %1003, 0
  %1005 = and i32 %908, 1024
  %1006 = icmp ne i32 %1005, 0
  %1007 = fcmp fast ogt float %1004, 0x3FE0101020000000
  %1008 = uitofp i1 %1007 to float
  %1009 = select i1 %1006, float %1008, float %1004
  %1010 = and i32 %908, 8192
  %1011 = icmp ne i32 %1010, 0
  %1012 = select i1 %1011, float %972, float 1.000000e+00
  %1013 = fmul fast float %916, 2.000000e+00
  %1014 = fadd fast float %1013, -1.000000e+00
  %1015 = call float @dx.op.unary.f32(i32 6, float %1014)  ; FAbs(value)
  %1016 = fmul fast float %1015, %905
  %1017 = fsub fast float %1016, %905
  %1018 = call float @dx.op.unary.f32(i32 7, float %1017)  ; Saturate(value)
  %1019 = fmul fast float %923, 2.000000e+00
  %1020 = fadd fast float %1019, -1.000000e+00
  %1021 = call float @dx.op.unary.f32(i32 6, float %1020)  ; FAbs(value)
  %1022 = fmul fast float %1021, %906
  %1023 = fsub fast float %1022, %906
  %1024 = call float @dx.op.unary.f32(i32 7, float %1023)  ; Saturate(value)
  %1025 = fmul fast float %935, %869
  %1026 = fsub fast float %1025, %869
  %1027 = call float @dx.op.unary.f32(i32 7, float %1026)  ; Saturate(value)
  %1028 = fmul fast float %986, %1012
  %1029 = fmul fast float %1028, %983
  %1030 = fmul fast float %1029, %1018
  %1031 = fmul fast float %1030, %1009
  %1032 = fmul fast float %1031, %1024
  %1033 = fmul fast float %1032, %1027
  %1034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.f32 %1034, 1
  %1036 = extractvalue %dx.types.CBufRet.f32 %1034, 0
  %1037 = fsub fast float %953, %1036
  %1038 = fmul fast float %1037, %1035
  %1039 = call float @dx.op.unary.f32(i32 7, float %1038)  ; Saturate(value)
  %1040 = fmul fast float %1033, %870
  %1041 = fadd fast float %1033, %870
  %1042 = fmul fast float %1041, %879
  %1043 = fsub fast float %1042, %879
  %1044 = call float @dx.op.unary.f32(i32 7, float %1043)  ; Saturate(value)
  %1045 = and i32 %908, 128
  %1046 = icmp ne i32 %1045, 0
  %1047 = select i1 %1046, float %1044, float %1040
  %1048 = fmul fast float %1047, %1039
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 0
  %1051 = fcmp fast ugt float %1048, %1050
  br i1 %1051, label %1052, label %958

; <label>:1052                                    ; preds = %971
  br i1 %1011, label %958, label %1053

; <label>:1053                                    ; preds = %1052
  %1054 = and i32 %908, 4
  %1055 = and i32 %908, 8
  %1056 = add i32 %865, 0
  %1057 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1056, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1059 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1057, %dx.types.Handle %1058, float %989, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float %994, float %996, float undef, float %998, float %1000, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.ResRet.f32 %1059, 1
  %1062 = extractvalue %dx.types.ResRet.f32 %1059, 2
  %1063 = extractvalue %dx.types.ResRet.f32 %1059, 3
  %1064 = bitcast float %891 to i32
  %1065 = and i32 %1064, 255
  %1066 = uitofp i32 %1065 to float
  %1067 = lshr i32 %1064, 8
  %1068 = and i32 %1067, 255
  %1069 = uitofp i32 %1068 to float
  %1070 = fmul fast float %1063, %1066
  %1071 = fadd fast float %1070, %1069
  %1072 = fmul fast float %1071, 0x3F70101000000000
  %1073 = add i32 %866, 0
  %1074 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1073, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1075 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1074, %dx.types.Handle %1058, float %989, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float %994, float %996, float undef, float %998, float %1000, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1076 = extractvalue %dx.types.ResRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.ResRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.ResRet.f32 %1075, 2
  %1079 = extractvalue %dx.types.ResRet.f32 %1075, 3
  %1080 = bitcast float %885 to i32
  %1081 = and i32 %1080, 255
  %1082 = uitofp i32 %1081 to float
  %1083 = lshr i32 %1080, 8
  %1084 = and i32 %1083, 255
  %1085 = uitofp i32 %1084 to float
  %1086 = lshr i32 %1080, 16
  %1087 = and i32 %1086, 255
  %1088 = uitofp i32 %1087 to float
  %1089 = fmul fast float %1088, 0x3F70101000000000
  %1090 = fmul fast float %1076, %1082
  %1091 = fadd fast float %1090, %1085
  %1092 = fmul fast float %1091, 0x3F70101000000000
  %1093 = fadd fast float %1077, -5.000000e-01
  %1094 = fadd fast float %1079, -5.000000e-01
  %1095 = fmul fast float %1093, %1089
  %1096 = fmul fast float %1094, %1089
  %1097 = fadd fast float %1095, 5.000000e-01
  %1098 = fadd fast float %1096, 5.000000e-01
  %1099 = fmul fast float %1060, %894
  %1100 = fmul fast float %1061, %895
  %1101 = fmul fast float %1062, %896
  %1102 = fmul fast float %1097, 2.000000e+00
  %1103 = fadd fast float %1102, -1.000000e+00
  %1104 = fmul fast float %1098, 2.000000e+00
  %1105 = fadd fast float %1104, -1.000000e+00
  %1106 = fadd fast float %1103, %1105
  %1107 = fmul fast float %1106, 5.000000e-01
  %1108 = fsub fast float %1103, %1105
  %1109 = fmul fast float %1108, 5.000000e-01
  %1110 = call float @dx.op.unary.f32(i32 6, float %1107)  ; FAbs(value)
  %1111 = fsub fast float 1.000000e+00, %1110
  %1112 = call float @dx.op.unary.f32(i32 6, float %1109)  ; FAbs(value)
  %1113 = fsub fast float %1111, %1112
  %1114 = call float @dx.op.dot3.f32(i32 55, float %1107, float %1109, float %1113, float %1107, float %1109, float %1113)  ; Dot3(ax,ay,az,bx,by,bz)
  %1115 = call float @dx.op.unary.f32(i32 25, float %1114)  ; Rsqrt(value)
  %1116 = fmul fast float %1107, %1115
  %1117 = fmul fast float %1109, %1115
  %1118 = fmul fast float %1115, %1113
  %1119 = fmul fast float %1118, %859
  %1120 = fmul fast float %1118, %860
  %1121 = fmul fast float %1118, %861
  %1122 = fmul fast float %1116, %882
  %1123 = fmul fast float %1116, %883
  %1124 = fmul fast float %1116, %884
  %1125 = fadd fast float %1122, %1119
  %1126 = fadd fast float %1123, %1120
  %1127 = fadd fast float %1124, %1121
  %1128 = fmul fast float %1117, %888
  %1129 = fmul fast float %1117, %889
  %1130 = fmul fast float %1117, %890
  %1131 = fadd fast float %1125, %1128
  %1132 = fadd fast float %1126, %1129
  %1133 = fadd fast float %1127, %1130
  %1134 = call float @dx.op.dot3.f32(i32 55, float %1131, float %1132, float %1133, float %1131, float %1132, float %1133)  ; Dot3(ax,ay,az,bx,by,bz)
  %1135 = call float @dx.op.unary.f32(i32 25, float %1134)  ; Rsqrt(value)
  %1136 = fmul fast float %1131, %1135
  %1137 = fmul fast float %1132, %1135
  %1138 = fmul fast float %1133, %1135
  %1139 = fcmp fast ogt float %948, %954
  %1140 = fsub fast float -0.000000e+00, %1136
  %1141 = fsub fast float -0.000000e+00, %1137
  %1142 = fsub fast float -0.000000e+00, %1138
  %1143 = select i1 %1139, float %1136, float %1140
  %1144 = select i1 %1139, float %1137, float %1141
  %1145 = select i1 %1139, float %1138, float %1142
  %1146 = fmul fast float %1143, %765
  %1147 = call float @dx.op.tertiary.f32(i32 46, float %1144, float %766, float %1146)  ; FMad(a,b,c)
  %1148 = call float @dx.op.tertiary.f32(i32 46, float %1145, float %768, float %1147)  ; FMad(a,b,c)
  %1149 = fmul fast float %1143, %761
  %1150 = call float @dx.op.tertiary.f32(i32 46, float %1144, float %771, float %1149)  ; FMad(a,b,c)
  %1151 = call float @dx.op.tertiary.f32(i32 46, float %1145, float %772, float %1150)  ; FMad(a,b,c)
  %1152 = icmp ne i32 %1055, 0
  %1153 = select i1 %1152, float 1.000000e+00, float 0.000000e+00
  %1154 = fmul fast float %1048, %1153
  %1155 = and i32 %908, 1
  %1156 = icmp ne i32 %1155, 0
  %1157 = fadd fast float %1148, %843
  %1158 = fadd fast float %1151, %844
  %1159 = select i1 %1156, float %1157, float %1148
  %1160 = select i1 %1156, float %1158, float %1151
  %1161 = icmp ne i32 %1054, 0
  %1162 = select i1 %1161, float 1.000000e+00, float 0.000000e+00
  %1163 = fmul fast float %1048, %1162
  %1164 = fsub fast float %1099, %848
  %1165 = fsub fast float %1100, %849
  %1166 = fsub fast float %1101, %850
  %1167 = fmul fast float %1164, %1163
  %1168 = fmul fast float %1165, %1163
  %1169 = fmul fast float %1166, %1163
  %1170 = fadd fast float %1167, %848
  %1171 = fadd fast float %1168, %849
  %1172 = fadd fast float %1169, %850
  %1173 = fsub fast float %1072, %847
  %1174 = fmul fast float %1173, %1163
  %1175 = fadd fast float %1174, %847
  %1176 = fsub fast float %1092, %846
  %1177 = fmul fast float %1176, %1154
  %1178 = fadd fast float %1177, %846
  %1179 = fsub fast float %1078, %845
  %1180 = fmul fast float %1179, %1154
  %1181 = fadd fast float %1180, %845
  %1182 = fsub fast float %1159, %843
  %1183 = fsub fast float %1160, %844
  %1184 = fmul fast float %1182, %1154
  %1185 = fmul fast float %1183, %1154
  %1186 = fadd fast float %1184, %843
  %1187 = fadd fast float %1185, %844
  %1188 = and i32 %908, 16
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %1212, label %1190

; <label>:1190                                    ; preds = %1053
  %1191 = bitcast float %902 to i32
  %1192 = add i32 %899, 0
  %1193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1192, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1194 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1193, %dx.types.Handle %1058, float %989, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float %994, float %996, float undef, float %998, float %1000, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1195 = extractvalue %dx.types.ResRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.ResRet.f32 %1194, 1
  %1197 = extractvalue %dx.types.ResRet.f32 %1194, 2
  %1198 = and i32 %1191, 65535
  %1199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1198)  ; LegacyF16ToF32(value)
  %1200 = fmul fast float %1195, %894
  %1201 = fmul fast float %1196, %895
  %1202 = fmul fast float %1197, %896
  %1203 = and i32 %908, 16384
  %1204 = icmp ne i32 %1203, 0
  %1205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1206 = extractvalue %dx.types.CBufRet.f32 %1205, 0
  %1207 = select i1 %1204, float %1206, float 1.000000e+00
  %1208 = fmul fast float %1207, %1199
  %1209 = fmul fast float %1200, %1208
  %1210 = fmul fast float %1201, %1208
  %1211 = fmul fast float %1202, %1208
  br label %1212

; <label>:1212                                    ; preds = %1190, %1053
  %1213 = phi float [ %1209, %1190 ], [ 0.000000e+00, %1053 ]
  %1214 = phi float [ %1210, %1190 ], [ 0.000000e+00, %1053 ]
  %1215 = phi float [ %1211, %1190 ], [ 0.000000e+00, %1053 ]
  %1216 = fsub fast float %1213, %840
  %1217 = fsub fast float %1214, %841
  %1218 = fsub fast float %1215, %842
  %1219 = fmul fast float %1216, %1048
  %1220 = fmul fast float %1217, %1048
  %1221 = fmul fast float %1218, %1048
  %1222 = fadd fast float %1219, %840
  %1223 = fadd fast float %1220, %841
  %1224 = fadd fast float %1221, %842
  br label %958

; <label>:1225                                    ; preds = %958
  br label %1226

; <label>:1226                                    ; preds = %1225, %702
  %1227 = phi float [ 0.000000e+00, %702 ], [ %959, %1225 ]
  %1228 = phi float [ 0.000000e+00, %702 ], [ %960, %1225 ]
  %1229 = phi float [ 0.000000e+00, %702 ], [ %961, %1225 ]
  %1230 = phi float [ %592, %702 ], [ %962, %1225 ]
  %1231 = phi float [ %593, %702 ], [ %963, %1225 ]
  %1232 = phi float [ %782, %702 ], [ %964, %1225 ]
  %1233 = phi float [ %785, %702 ], [ %965, %1225 ]
  %1234 = phi float [ %780, %702 ], [ %966, %1225 ]
  %1235 = phi float [ %774, %702 ], [ %967, %1225 ]
  %1236 = phi float [ %776, %702 ], [ %968, %1225 ]
  %1237 = phi float [ %778, %702 ], [ %969, %1225 ]
  %1238 = call float @dx.op.dot2.f32(i32 54, float %1230, float %1231, float %1230, float %1231)  ; Dot2(ax,ay,bx,by)
  %1239 = fmul fast float %1238, 0x3FE3333340000000
  %1240 = fsub fast float 1.000000e+00, %1239
  %1241 = call float @dx.op.dot3.f32(i32 55, float %1230, float %1231, float %1240, float %1230, float %1231, float %1240)  ; Dot3(ax,ay,az,bx,by,bz)
  %1242 = call float @dx.op.unary.f32(i32 25, float %1241)  ; Rsqrt(value)
  %1243 = fmul fast float %1242, %1230
  %1244 = fmul fast float %1242, %1231
  %1245 = fmul fast float %1240, %1242
  %1246 = fmul fast float %1245, %96
  %1247 = fmul fast float %1245, %97
  %1248 = fmul fast float %1245, %98
  %1249 = fmul fast float %1243, %765
  %1250 = fmul fast float %1243, %766
  %1251 = fmul fast float %1243, %768
  %1252 = fadd fast float %1246, %1249
  %1253 = fadd fast float %1247, %1250
  %1254 = fadd fast float %1248, %1251
  %1255 = fmul fast float %1244, %761
  %1256 = fmul fast float %1244, %771
  %1257 = fmul fast float %1244, %772
  %1258 = fadd fast float %1252, %1255
  %1259 = fadd fast float %1253, %1256
  %1260 = fadd fast float %1254, %1257
  %1261 = call float @dx.op.dot3.f32(i32 55, float %1258, float %1259, float %1260, float %1258, float %1259, float %1260)  ; Dot3(ax,ay,az,bx,by,bz)
  %1262 = call float @dx.op.unary.f32(i32 25, float %1261)  ; Rsqrt(value)
  %1263 = fmul fast float %1258, %1262
  %1264 = fmul fast float %1259, %1262
  %1265 = fmul fast float %1260, %1262
  %1266 = fadd fast float %1234, 0xBFB99999A0000000
  %1267 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1268 = fmul fast float %1267, 0x3FF1C71C80000000
  %1269 = call float @dx.op.binary.f32(i32 36, float %1234, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1270 = fsub fast float 1.000000e+00, %1268
  %1271 = call float @dx.op.unary.f32(i32 7, float %1270)  ; Saturate(value)
  %1272 = fmul fast float %1271, %1235
  %1273 = fmul fast float %1271, %1236
  %1274 = fmul fast float %1271, %1237
  %1275 = call float @dx.op.unary.f32(i32 7, float %1272)  ; Saturate(value)
  %1276 = call float @dx.op.unary.f32(i32 7, float %1273)  ; Saturate(value)
  %1277 = call float @dx.op.unary.f32(i32 7, float %1274)  ; Saturate(value)
  %1278 = fmul fast float %1268, %1235
  %1279 = fmul fast float %1268, %1236
  %1280 = fmul fast float %1268, %1237
  %1281 = fadd fast float %1278, %1269
  %1282 = fadd fast float %1279, %1269
  %1283 = fadd fast float %1280, %1269
  %1284 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  %1285 = call float @dx.op.unary.f32(i32 7, float %1282)  ; Saturate(value)
  %1286 = call float @dx.op.unary.f32(i32 7, float %1283)  ; Saturate(value)
  %1287 = fmul fast float %1285, 0x401CF23780000000
  %1288 = fadd fast float %1287, 0x3FF32641C0000000
  %1289 = call float @dx.op.dot3.f32(i32 55, float %132, float %133, float %134, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %1290 = call float @dx.op.unary.f32(i32 25, float %1289)  ; Rsqrt(value)
  %1291 = fmul fast float %1290, %132
  %1292 = fmul fast float %1290, %133
  %1293 = fmul fast float %1290, %134
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 0
  %1296 = fdiv fast float 1.000000e+00, %1288
  %1297 = select i1 %94, float %1296, float %1288
  %1298 = fadd fast float %1297, -1.000000e+00
  %1299 = fadd fast float %1297, 1.000000e+00
  %1300 = fdiv fast float %1298, %1299
  %1301 = fmul fast float %1300, %1300
  %1302 = call float @dx.op.dot3.f32(i32 55, float %1291, float %1292, float %1293, float %1263, float %1264, float %1265)  ; Dot3(ax,ay,az,bx,by,bz)
  %1303 = select i1 %94, float 0.000000e+00, float %1295
  %1304 = fadd fast float %1302, %1303
  %1305 = call float @dx.op.binary.f32(i32 35, float %1304, float -1.000000e+00)  ; FMax(a,b)
  %1306 = call float @dx.op.binary.f32(i32 36, float %1305, float 1.000000e+00)  ; FMin(a,b)
  %1307 = fmul fast float %1297, %1297
  %1308 = fmul fast float %1306, %1306
  %1309 = fsub fast float 1.000000e+00, %1308
  %1310 = fmul fast float %1307, %1309
  %1311 = fsub fast float 1.000000e+00, %1310
  %1312 = fcmp fast olt float %1297, 1.000000e+00
  %1313 = select i1 %1312, float %1308, float %1311
  %1314 = fcmp fast ogt float %1311, 0.000000e+00
  %1315 = fsub fast float 1.000000e+00, %1301
  %1316 = call float @dx.op.unary.f32(i32 24, float %1313)  ; Sqrt(value)
  %1317 = fsub fast float 1.000000e+00, %1316
  %1318 = call float @dx.op.unary.f32(i32 23, float %1317)  ; Log(value)
  %1319 = fmul fast float %1318, 5.000000e+00
  %1320 = call float @dx.op.unary.f32(i32 21, float %1319)  ; Exp(value)
  %1321 = fmul fast float %1320, %1315
  %1322 = fadd fast float %1321, %1301
  %1323 = select i1 %1314, float %1322, float 1.000000e+00
  %1324 = and i32 %330, 255
  %1325 = uitofp i32 %1324 to float
  %1326 = fmul fast float %1325, 0x3F70101020000000
  %1327 = call float @dx.op.unary.f32(i32 7, float %1326)  ; Saturate(value)
  %1328 = fmul fast float %132, %132
  %1329 = fmul fast float %133, %133
  %1330 = fadd fast float %1329, %1328
  %1331 = fmul fast float %134, %134
  %1332 = fadd fast float %1330, %1331
  %1333 = call float @dx.op.unary.f32(i32 24, float %1332)  ; Sqrt(value)
  %1334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %1335 = extractvalue %dx.types.CBufRet.f32 %1334, 0
  %1336 = fmul fast float %1335, %1333
  %1337 = extractvalue %dx.types.CBufRet.f32 %1334, 1
  %1338 = fadd fast float %1336, %1337
  %1339 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  %1340 = fmul fast float %1327, 2.550000e+02
  %1341 = fmul fast float %1340, %1339
  %1342 = fptoui float %1341 to i32
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 3
  %1345 = fmul fast float %1344, %1233
  %1346 = call float @dx.op.unary.f32(i32 7, float %1345)  ; Saturate(value)
  %1347 = call float @dx.op.unary.f32(i32 7, float %1232)  ; Saturate(value)
  %1348 = call float @dx.op.dot3.f32(i32 55, float %1284, float %1285, float %1286, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1349 = fsub fast float 1.000000e+00, %1348
  %1350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.i32 %1350, 0
  %1352 = and i32 %1351, 255
  %1353 = uitofp i32 %1352 to float
  %1354 = lshr i32 %1351, 8
  %1355 = and i32 %1354, 255
  %1356 = uitofp i32 %1355 to float
  %1357 = fmul fast float %1356, %1349
  %1358 = fadd fast float %1357, %1353
  %1359 = fmul fast float %1358, 0x3F70101020000000
  %1360 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  %1361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1361, 0
  %1363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1365 = extractvalue %dx.types.CBufRet.i32 %1364, 3
  %1366 = and i32 %1365, 3
  %1367 = icmp ne i32 %1366, 0
  %1368 = and i32 %1365, 4
  %1369 = icmp ne i32 %1368, 0
  %1370 = and i1 %1367, %1369
  br i1 %1370, label %1371, label %1382

; <label>:1371                                    ; preds = %1226
  %1372 = extractvalue %dx.types.CBufRet.f32 %1363, 3
  %1373 = fmul fast float %1372, %78
  %1374 = extractvalue %dx.types.CBufRet.f32 %1363, 2
  %1375 = fmul fast float %1374, %77
  %1376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %50, float %1375, float %1373, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1377 = extractvalue %dx.types.ResRet.f32 %1376, 0
  %1378 = fsub fast float 1.000000e+00, %1377
  %1379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1380 = extractvalue %dx.types.CBufRet.f32 %1379, 0
  %1381 = fcmp fast olt float %1378, %1380
  br label %1385

; <label>:1382                                    ; preds = %1226
  %1383 = icmp eq i32 %1368, 0
  %1384 = and i1 %1367, %1383
  br label %1385

; <label>:1385                                    ; preds = %1382, %1371
  %1386 = phi i1 [ %1381, %1371 ], [ %1384, %1382 ]
  %1387 = fsub fast float -0.000000e+00, %134
  %1388 = fsub fast float -0.000000e+00, %1291
  %1389 = fsub fast float -0.000000e+00, %1292
  %1390 = fsub fast float -0.000000e+00, %1293
  %1391 = select i1 %1386, float 0.000000e+00, float %1286
  %1392 = call float @dx.op.dot3.f32(i32 55, float %1263, float %1264, float %1265, float %1388, float %1389, float %1390)  ; Dot3(ax,ay,az,bx,by,bz)
  %1393 = call float @dx.op.unary.f32(i32 7, float %1392)  ; Saturate(value)
  %1394 = fmul fast float %1302, 2.000000e+00
  %1395 = fmul fast float %1394, %1263
  %1396 = fmul fast float %1394, %1264
  %1397 = fmul fast float %1394, %1265
  %1398 = fsub fast float %1291, %1395
  %1399 = fsub fast float %1292, %1396
  %1400 = fsub fast float %1293, %1397
  %1401 = call float @dx.op.binary.f32(i32 36, float %1347, float 1.000000e+00)  ; FMin(a,b)
  %1402 = fsub fast float 1.000000e+00, %1347
  %1403 = bitcast float %1402 to i32
  %1404 = sub nsw i32 2129859010, %1403
  %1405 = bitcast i32 %1404 to float
  %1406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1407 = extractvalue %dx.types.CBufRet.f32 %1406, 0
  %1408 = extractvalue %dx.types.CBufRet.f32 %1406, 1
  %1409 = extractvalue %dx.types.CBufRet.f32 %1406, 2
  %1410 = fadd fast float %1407, %132
  %1411 = fadd fast float %1408, %133
  %1412 = fadd fast float %1409, %134
  %1413 = fmul fast float %1263, 3.200000e+01
  %1414 = fmul fast float %1264, 3.200000e+01
  %1415 = fadd fast float %1410, %1413
  %1416 = fadd fast float %1411, %1414
  %1417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1418 = extractvalue %dx.types.CBufRet.f32 %1417, 0
  %1419 = extractvalue %dx.types.CBufRet.f32 %1417, 1
  %1420 = fsub fast float %1415, %1418
  %1421 = fsub fast float %1416, %1419
  %1422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.f32 %1422, 0
  %1424 = extractvalue %dx.types.CBufRet.f32 %1422, 1
  %1425 = fmul fast float %1420, %1423
  %1426 = fmul fast float %1421, %1424
  %1427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1428 = extractvalue %dx.types.CBufRet.f32 %1427, 0
  %1429 = fmul fast float %1425, %1428
  %1430 = extractvalue %dx.types.CBufRet.f32 %1427, 1
  %1431 = fadd fast float %1429, %1430
  %1432 = extractvalue %dx.types.CBufRet.f32 %1427, 2
  %1433 = fmul fast float %1432, %1426
  %1434 = extractvalue %dx.types.CBufRet.f32 %1427, 3
  %1435 = fadd fast float %1433, %1434
  %1436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %1431, float %1435, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1437 = extractvalue %dx.types.ResRet.f32 %1436, 0
  %1438 = extractvalue %dx.types.ResRet.f32 %1436, 1
  %1439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1440 = extractvalue %dx.types.CBufRet.f32 %1439, 1
  %1441 = extractvalue %dx.types.CBufRet.f32 %1439, 0
  %1442 = fsub fast float %1440, %1441
  %1443 = fmul fast float %1442, %1437
  %1444 = fadd fast float %1443, %1441
  %1445 = extractvalue %dx.types.CBufRet.f32 %1439, 3
  %1446 = extractvalue %dx.types.CBufRet.f32 %1439, 2
  %1447 = fsub fast float %1445, %1446
  %1448 = fmul fast float %1447, %1438
  %1449 = fadd fast float %1448, %1446
  %1450 = fsub fast float %1412, %1444
  %1451 = fsub fast float %1449, %1444
  %1452 = fdiv fast float %1450, %1451
  %1453 = call float @dx.op.unary.f32(i32 7, float %1452)  ; Saturate(value)
  %1454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1455 = extractvalue %dx.types.CBufRet.f32 %1454, 0
  %1456 = fmul fast float %1455, %1453
  %1457 = extractvalue %dx.types.CBufRet.f32 %1454, 1
  %1458 = fadd fast float %1456, %1457
  %1459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %1431, float %1435, float %1458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1460 = extractvalue %dx.types.ResRet.f32 %1459, 0
  %1461 = extractvalue %dx.types.ResRet.f32 %1459, 1
  %1462 = extractvalue %dx.types.ResRet.f32 %1459, 2
  %1463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1464 = extractvalue %dx.types.CBufRet.f32 %1463, 0
  %1465 = extractvalue %dx.types.CBufRet.f32 %1463, 1
  %1466 = extractvalue %dx.types.CBufRet.f32 %1463, 2
  %1467 = fmul fast float %1464, %1460
  %1468 = fmul fast float %1465, %1461
  %1469 = fmul fast float %1466, %1462
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 0
  %1472 = extractvalue %dx.types.CBufRet.f32 %1470, 1
  %1473 = extractvalue %dx.types.CBufRet.f32 %1470, 2
  %1474 = fadd fast float %1467, %1471
  %1475 = fadd fast float %1468, %1472
  %1476 = fadd fast float %1469, %1473
  %1477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1478 = extractvalue %dx.types.CBufRet.f32 %1477, 0
  %1479 = fmul fast float %1478, %1425
  %1480 = extractvalue %dx.types.CBufRet.f32 %1477, 1
  %1481 = fadd fast float %1479, %1480
  %1482 = extractvalue %dx.types.CBufRet.f32 %1477, 2
  %1483 = fmul fast float %1482, %1426
  %1484 = extractvalue %dx.types.CBufRet.f32 %1477, 3
  %1485 = fadd fast float %1483, %1484
  %1486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1487 = extractvalue %dx.types.CBufRet.f32 %1486, 0
  %1488 = extractvalue %dx.types.CBufRet.f32 %1486, 1
  %1489 = extractvalue %dx.types.CBufRet.f32 %1486, 2
  %1490 = extractvalue %dx.types.CBufRet.f32 %1486, 3
  %1491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1492 = extractvalue %dx.types.CBufRet.f32 %1491, 0
  %1493 = extractvalue %dx.types.CBufRet.f32 %1491, 1
  %1494 = extractvalue %dx.types.CBufRet.f32 %1491, 2
  %1495 = extractvalue %dx.types.CBufRet.f32 %1491, 3
  %1496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %1481, float %1485, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1497 = extractvalue %dx.types.ResRet.f32 %1496, 0
  %1498 = extractvalue %dx.types.ResRet.f32 %1496, 1
  %1499 = extractvalue %dx.types.ResRet.f32 %1496, 2
  %1500 = extractvalue %dx.types.ResRet.f32 %1496, 3
  %1501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %1481, float %1485, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1502 = extractvalue %dx.types.ResRet.f32 %1501, 0
  %1503 = extractvalue %dx.types.ResRet.f32 %1501, 1
  %1504 = extractvalue %dx.types.ResRet.f32 %1501, 2
  %1505 = extractvalue %dx.types.ResRet.f32 %1501, 3
  %1506 = fmul fast float %1497, %1474
  %1507 = fmul fast float %1502, %1474
  %1508 = fmul fast float %1504, %1474
  %1509 = fmul fast float %1500, %1474
  %1510 = fadd fast float %1506, %1487
  %1511 = fadd fast float %1507, %1488
  %1512 = fadd fast float %1508, %1489
  %1513 = fadd fast float %1509, %1490
  %1514 = fmul fast float %1498, %1474
  %1515 = fmul fast float %1503, %1474
  %1516 = fadd fast float %1514, %1492
  %1517 = fadd fast float %1515, %1493
  %1518 = fmul fast float %1499, %1474
  %1519 = fmul fast float %1505, %1474
  %1520 = fadd fast float %1518, %1494
  %1521 = fadd fast float %1519, %1495
  %1522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %1481, float %1485, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1523 = extractvalue %dx.types.ResRet.f32 %1522, 0
  %1524 = extractvalue %dx.types.ResRet.f32 %1522, 1
  %1525 = extractvalue %dx.types.ResRet.f32 %1522, 2
  %1526 = extractvalue %dx.types.ResRet.f32 %1522, 3
  %1527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %1481, float %1485, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1528 = extractvalue %dx.types.ResRet.f32 %1527, 0
  %1529 = extractvalue %dx.types.ResRet.f32 %1527, 1
  %1530 = extractvalue %dx.types.ResRet.f32 %1527, 2
  %1531 = extractvalue %dx.types.ResRet.f32 %1527, 3
  %1532 = fmul fast float %1523, %1475
  %1533 = fmul fast float %1528, %1475
  %1534 = fmul fast float %1530, %1475
  %1535 = fmul fast float %1526, %1475
  %1536 = fadd fast float %1510, %1532
  %1537 = fadd fast float %1511, %1533
  %1538 = fadd fast float %1512, %1534
  %1539 = fadd fast float %1513, %1535
  %1540 = fmul fast float %1524, %1475
  %1541 = fmul fast float %1529, %1475
  %1542 = fadd fast float %1516, %1540
  %1543 = fadd fast float %1517, %1541
  %1544 = fmul fast float %1525, %1475
  %1545 = fmul fast float %1531, %1475
  %1546 = fadd fast float %1520, %1544
  %1547 = fadd fast float %1521, %1545
  %1548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %1481, float %1485, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1549 = extractvalue %dx.types.ResRet.f32 %1548, 0
  %1550 = extractvalue %dx.types.ResRet.f32 %1548, 1
  %1551 = extractvalue %dx.types.ResRet.f32 %1548, 2
  %1552 = extractvalue %dx.types.ResRet.f32 %1548, 3
  %1553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %1481, float %1485, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1554 = extractvalue %dx.types.ResRet.f32 %1553, 0
  %1555 = extractvalue %dx.types.ResRet.f32 %1553, 1
  %1556 = extractvalue %dx.types.ResRet.f32 %1553, 2
  %1557 = extractvalue %dx.types.ResRet.f32 %1553, 3
  %1558 = fmul fast float %1549, %1476
  %1559 = fmul fast float %1554, %1476
  %1560 = fmul fast float %1556, %1476
  %1561 = fmul fast float %1552, %1476
  %1562 = fadd fast float %1536, %1558
  %1563 = fadd fast float %1537, %1559
  %1564 = fadd fast float %1538, %1560
  %1565 = fadd fast float %1539, %1561
  %1566 = fmul fast float %1550, %1476
  %1567 = fmul fast float %1555, %1476
  %1568 = fadd fast float %1542, %1566
  %1569 = fadd fast float %1543, %1567
  %1570 = fmul fast float %1551, %1476
  %1571 = fmul fast float %1557, %1476
  %1572 = fadd fast float %1546, %1570
  %1573 = fadd fast float %1547, %1571
  %1574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1575 = extractvalue %dx.types.CBufRet.f32 %1574, 0
  %1576 = fsub fast float %1410, %1575
  %1577 = fsub fast float %1418, %1410
  %1578 = call float @dx.op.binary.f32(i32 35, float %1577, float %1576)  ; FMax(a,b)
  %1579 = extractvalue %dx.types.CBufRet.f32 %1574, 1
  %1580 = fsub fast float %1411, %1579
  %1581 = fsub fast float %1419, %1411
  %1582 = call float @dx.op.binary.f32(i32 35, float %1581, float %1580)  ; FMax(a,b)
  %1583 = call float @dx.op.binary.f32(i32 35, float %1578, float %1582)  ; FMax(a,b)
  %1584 = extractvalue %dx.types.CBufRet.f32 %1422, 3
  %1585 = fmul fast float %1584, %1583
  %1586 = call float @dx.op.unary.f32(i32 7, float %1585)  ; Saturate(value)
  %1587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1588 = extractvalue %dx.types.CBufRet.f32 %1587, 0
  %1589 = extractvalue %dx.types.CBufRet.f32 %1587, 1
  %1590 = extractvalue %dx.types.CBufRet.f32 %1587, 2
  %1591 = extractvalue %dx.types.CBufRet.f32 %1587, 3
  %1592 = fsub fast float %1588, %1562
  %1593 = fsub fast float %1589, %1563
  %1594 = fsub fast float %1590, %1564
  %1595 = fsub fast float %1591, %1565
  %1596 = fmul fast float %1592, %1586
  %1597 = fmul fast float %1593, %1586
  %1598 = fmul fast float %1594, %1586
  %1599 = fmul fast float %1595, %1586
  %1600 = fadd fast float %1596, %1562
  %1601 = fadd fast float %1597, %1563
  %1602 = fadd fast float %1598, %1564
  %1603 = fadd fast float %1599, %1565
  %1604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1605 = extractvalue %dx.types.CBufRet.f32 %1604, 0
  %1606 = extractvalue %dx.types.CBufRet.f32 %1604, 1
  %1607 = fsub fast float %1605, %1568
  %1608 = fsub fast float %1606, %1569
  %1609 = fmul fast float %1607, %1586
  %1610 = fmul fast float %1608, %1586
  %1611 = fadd fast float %1609, %1568
  %1612 = fadd fast float %1610, %1569
  %1613 = extractvalue %dx.types.CBufRet.f32 %1604, 2
  %1614 = extractvalue %dx.types.CBufRet.f32 %1604, 3
  %1615 = fsub fast float %1613, %1572
  %1616 = fsub fast float %1614, %1573
  %1617 = fmul fast float %1615, %1586
  %1618 = fmul fast float %1616, %1586
  %1619 = fadd fast float %1617, %1572
  %1620 = fadd fast float %1618, %1573
  %1621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1622 = extractvalue %dx.types.CBufRet.f32 %1621, 0
  %1623 = fmul fast float %1622, %1600
  %1624 = fmul fast float %1622, %1601
  %1625 = fmul fast float %1622, %1602
  %1626 = fmul fast float %1622, %1603
  %1627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1628 = extractvalue %dx.types.CBufRet.f32 %1627, 0
  %1629 = fmul fast float %1628, %1611
  %1630 = fmul fast float %1628, %1612
  %1631 = fadd fast float %1629, %1623
  %1632 = fadd fast float %1630, %1625
  %1633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1634 = extractvalue %dx.types.CBufRet.f32 %1633, 0
  %1635 = fmul fast float %1634, %1619
  %1636 = fmul fast float %1634, %1620
  %1637 = fadd fast float %1631, %1635
  %1638 = fadd fast float %1632, %1636
  %1639 = extractvalue %dx.types.CBufRet.f32 %1621, 1
  %1640 = fmul fast float %1639, %1600
  %1641 = fmul fast float %1639, %1601
  %1642 = fmul fast float %1639, %1602
  %1643 = fmul fast float %1639, %1603
  %1644 = extractvalue %dx.types.CBufRet.f32 %1627, 1
  %1645 = fmul fast float %1644, %1611
  %1646 = fmul fast float %1644, %1612
  %1647 = fadd fast float %1645, %1640
  %1648 = fadd fast float %1646, %1642
  %1649 = extractvalue %dx.types.CBufRet.f32 %1633, 1
  %1650 = fmul fast float %1649, %1619
  %1651 = fmul fast float %1649, %1620
  %1652 = fadd fast float %1647, %1650
  %1653 = fadd fast float %1648, %1651
  %1654 = extractvalue %dx.types.CBufRet.f32 %1621, 2
  %1655 = fmul fast float %1654, %1600
  %1656 = fmul fast float %1654, %1601
  %1657 = fmul fast float %1654, %1602
  %1658 = fmul fast float %1654, %1603
  %1659 = extractvalue %dx.types.CBufRet.f32 %1627, 2
  %1660 = fmul fast float %1659, %1611
  %1661 = fmul fast float %1659, %1612
  %1662 = fadd fast float %1660, %1655
  %1663 = fadd fast float %1661, %1657
  %1664 = extractvalue %dx.types.CBufRet.f32 %1633, 2
  %1665 = fmul fast float %1664, %1619
  %1666 = fmul fast float %1664, %1620
  %1667 = fadd fast float %1662, %1665
  %1668 = fadd fast float %1663, %1666
  %1669 = fmul fast float %1656, %1656
  %1670 = fmul fast float %1668, %1668
  %1671 = fmul fast float %1658, %1658
  %1672 = fadd fast float %1671, %1669
  %1673 = fadd fast float %1672, %1670
  %1674 = call float @dx.op.unary.f32(i32 24, float %1673)  ; Sqrt(value)
  %1675 = fcmp fast ugt float %1674, 0.000000e+00
  br i1 %1675, label %1676, label %1691

; <label>:1676                                    ; preds = %1385
  %1677 = fsub fast float -0.000000e+00, %1658
  %1678 = fdiv fast float %1677, %1674
  %1679 = fsub fast float -0.000000e+00, %1656
  %1680 = fdiv fast float %1679, %1674
  %1681 = fdiv fast float %1668, %1674
  %1682 = fmul fast float %1667, 0x3FE279A760000000
  %1683 = fmul fast float %1680, %1656
  %1684 = fmul fast float %1681, %1668
  %1685 = fmul fast float %1678, %1658
  %1686 = fadd fast float %1683, %1685
  %1687 = fsub fast float %1686, %1684
  %1688 = call float @dx.op.unary.f32(i32 6, float %1687)  ; FAbs(value)
  %1689 = fadd fast float %1688, 0x3DDB7CDFE0000000
  %1690 = fdiv fast float %1682, %1689
  br label %1691

; <label>:1691                                    ; preds = %1676, %1385
  %1692 = phi float [ %1690, %1676 ], [ 1.000000e+00, %1385 ]
  %1693 = fmul fast float %1641, %1641
  %1694 = fmul fast float %1653, %1653
  %1695 = fmul fast float %1643, %1643
  %1696 = fadd fast float %1695, %1693
  %1697 = fadd fast float %1696, %1694
  %1698 = call float @dx.op.unary.f32(i32 24, float %1697)  ; Sqrt(value)
  %1699 = fcmp fast ugt float %1698, 0.000000e+00
  br i1 %1699, label %1700, label %1715

; <label>:1700                                    ; preds = %1691
  %1701 = fsub fast float -0.000000e+00, %1643
  %1702 = fdiv fast float %1701, %1698
  %1703 = fsub fast float -0.000000e+00, %1641
  %1704 = fdiv fast float %1703, %1698
  %1705 = fdiv fast float %1653, %1698
  %1706 = fmul fast float %1652, 0x3FE279A760000000
  %1707 = fmul fast float %1704, %1641
  %1708 = fmul fast float %1705, %1653
  %1709 = fmul fast float %1702, %1643
  %1710 = fadd fast float %1707, %1709
  %1711 = fsub fast float %1710, %1708
  %1712 = call float @dx.op.unary.f32(i32 6, float %1711)  ; FAbs(value)
  %1713 = fadd fast float %1712, 0x3DDB7CDFE0000000
  %1714 = fdiv fast float %1706, %1713
  br label %1715

; <label>:1715                                    ; preds = %1700, %1691
  %1716 = phi float [ %1714, %1700 ], [ 1.000000e+00, %1691 ]
  %1717 = call float @dx.op.binary.f32(i32 36, float %1716, float %1692)  ; FMin(a,b)
  %1718 = fmul fast float %1624, %1624
  %1719 = fmul fast float %1638, %1638
  %1720 = fmul fast float %1626, %1626
  %1721 = fadd fast float %1720, %1718
  %1722 = fadd fast float %1721, %1719
  %1723 = call float @dx.op.unary.f32(i32 24, float %1722)  ; Sqrt(value)
  %1724 = fcmp fast ugt float %1723, 0.000000e+00
  br i1 %1724, label %1725, label %1740

; <label>:1725                                    ; preds = %1715
  %1726 = fsub fast float -0.000000e+00, %1626
  %1727 = fdiv fast float %1726, %1723
  %1728 = fsub fast float -0.000000e+00, %1624
  %1729 = fdiv fast float %1728, %1723
  %1730 = fdiv fast float %1638, %1723
  %1731 = fmul fast float %1637, 0x3FE279A760000000
  %1732 = fmul fast float %1729, %1624
  %1733 = fmul fast float %1730, %1638
  %1734 = fmul fast float %1727, %1626
  %1735 = fadd fast float %1732, %1734
  %1736 = fsub fast float %1735, %1733
  %1737 = call float @dx.op.unary.f32(i32 6, float %1736)  ; FAbs(value)
  %1738 = fadd fast float %1737, 0x3DDB7CDFE0000000
  %1739 = fdiv fast float %1731, %1738
  br label %1740

; <label>:1740                                    ; preds = %1725, %1715
  %1741 = phi float [ %1739, %1725 ], [ 1.000000e+00, %1715 ]
  %1742 = call float @dx.op.binary.f32(i32 36, float %1741, float %1717)  ; FMin(a,b)
  %1743 = call float @dx.op.unary.f32(i32 7, float %1742)  ; Saturate(value)
  %1744 = fcmp fast olt float %1743, 1.000000e+00
  br i1 %1744, label %1745, label %1755

; <label>:1745                                    ; preds = %1740
  %1746 = fmul fast float %1743, %1624
  %1747 = fmul fast float %1743, %1638
  %1748 = fmul fast float %1743, %1626
  %1749 = fmul fast float %1743, %1641
  %1750 = fmul fast float %1743, %1653
  %1751 = fmul fast float %1743, %1643
  %1752 = fmul fast float %1743, %1656
  %1753 = fmul fast float %1743, %1668
  %1754 = fmul fast float %1743, %1658
  br label %1755

; <label>:1755                                    ; preds = %1745, %1740
  %1756 = phi float [ %1752, %1745 ], [ %1656, %1740 ]
  %1757 = phi float [ %1753, %1745 ], [ %1668, %1740 ]
  %1758 = phi float [ %1754, %1745 ], [ %1658, %1740 ]
  %1759 = phi float [ %1749, %1745 ], [ %1641, %1740 ]
  %1760 = phi float [ %1750, %1745 ], [ %1653, %1740 ]
  %1761 = phi float [ %1751, %1745 ], [ %1643, %1740 ]
  %1762 = phi float [ %1746, %1745 ], [ %1624, %1740 ]
  %1763 = phi float [ %1747, %1745 ], [ %1638, %1740 ]
  %1764 = phi float [ %1748, %1745 ], [ %1626, %1740 ]
  %1765 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1637)  ; FMax(a,b)
  %1766 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1652)  ; FMax(a,b)
  %1767 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1667)  ; FMax(a,b)
  %1768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1769 = extractvalue %dx.types.CBufRet.f32 %1768, 0
  %1770 = fcmp fast ogt float %1769, 0.000000e+00
  %1771 = fcmp fast oge float %1425, 0.000000e+00
  %1772 = and i1 %1771, %1770
  %1773 = fcmp fast ole float %1425, 1.000000e+00
  %1774 = and i1 %1773, %1772
  %1775 = fcmp fast oge float %1426, 0.000000e+00
  %1776 = and i1 %1775, %1774
  %1777 = fcmp fast ole float %1426, 1.000000e+00
  %1778 = and i1 %1777, %1776
  br i1 %1778, label %1779, label %1919, !dx.controlflow.hints !100

; <label>:1779                                    ; preds = %1755
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 2
  %1782 = extractvalue %dx.types.CBufRet.f32 %1780, 3
  %1783 = fmul fast float %1781, %1425
  %1784 = fmul fast float %1782, %1426
  %1785 = call float @dx.op.unary.f32(i32 27, float %1783)  ; Round_ni(value)
  %1786 = call float @dx.op.unary.f32(i32 27, float %1784)  ; Round_ni(value)
  %1787 = fptosi float %1785 to i32
  %1788 = fptosi float %1786 to i32
  %1789 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %31, i32 0, i32 %1787, i32 %1788, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1790 = extractvalue %dx.types.ResRet.i32 %1789, 0
  %1791 = and i32 %1790, 65535
  %1792 = lshr i32 %1790, 16
  %1793 = icmp eq i32 %1791, 65535
  br i1 %1793, label %1830, label %1794

; <label>:1794                                    ; preds = %1779
  %1795 = extractvalue %dx.types.CBufRet.f32 %1768, 1
  %1796 = extractvalue %dx.types.CBufRet.f32 %1780, 0
  %1797 = extractvalue %dx.types.CBufRet.f32 %1780, 1
  %1798 = fmul fast float %1796, %1425
  %1799 = fmul fast float %1797, %1426
  %1800 = fmul fast float %1798, 1.250000e-01
  %1801 = fmul fast float %1799, 1.250000e-01
  %1802 = call float @dx.op.unary.f32(i32 27, float %1800)  ; Round_ni(value)
  %1803 = call float @dx.op.unary.f32(i32 27, float %1801)  ; Round_ni(value)
  %1804 = fmul fast float %1802, 8.000000e+00
  %1805 = fmul fast float %1803, 8.000000e+00
  %1806 = and i32 %1790, 255
  %1807 = lshr i32 %1790, 8
  %1808 = and i32 %1807, 255
  %1809 = mul nuw nsw i32 %1806, 9
  %1810 = uitofp i32 %1809 to float
  %1811 = mul nuw nsw i32 %1808, 9
  %1812 = uitofp i32 %1811 to float
  %1813 = fadd fast float %1810, 5.000000e-01
  %1814 = fadd fast float %1813, %1798
  %1815 = fsub fast float %1814, %1804
  %1816 = fadd fast float %1812, 5.000000e-01
  %1817 = fadd fast float %1816, %1799
  %1818 = fsub fast float %1817, %1805
  %1819 = fdiv fast float %1815, %1769
  %1820 = fdiv fast float %1818, %1795
  %1821 = fmul fast float %1453, 4.375000e-01
  %1822 = fadd fast float %1821, 3.125000e-02
  %1823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %50, float %1819, float %1820, float %1822, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1824 = extractvalue %dx.types.ResRet.f32 %1823, 0
  %1825 = extractvalue %dx.types.ResRet.f32 %1823, 1
  %1826 = extractvalue %dx.types.ResRet.f32 %1823, 2
  %1827 = fadd fast float %1824, %1765
  %1828 = fadd fast float %1825, %1766
  %1829 = fadd fast float %1826, %1767
  br label %1830

; <label>:1830                                    ; preds = %1794, %1779
  %1831 = phi float [ %1829, %1794 ], [ %1767, %1779 ]
  %1832 = phi float [ %1828, %1794 ], [ %1766, %1779 ]
  %1833 = phi float [ %1827, %1794 ], [ %1765, %1779 ]
  %1834 = icmp eq i32 %1792, 65535
  br i1 %1834, label %1919, label %1835

; <label>:1835                                    ; preds = %1830
  %1836 = extractvalue %dx.types.CBufRet.f32 %1768, 1
  %1837 = extractvalue %dx.types.CBufRet.f32 %1780, 0
  %1838 = extractvalue %dx.types.CBufRet.f32 %1780, 1
  %1839 = fmul fast float %1837, %1425
  %1840 = fmul fast float %1838, %1426
  %1841 = fmul fast float %1839, 1.250000e-01
  %1842 = fmul fast float %1840, 1.250000e-01
  %1843 = call float @dx.op.unary.f32(i32 27, float %1841)  ; Round_ni(value)
  %1844 = call float @dx.op.unary.f32(i32 27, float %1842)  ; Round_ni(value)
  %1845 = fmul fast float %1843, 8.000000e+00
  %1846 = fmul fast float %1844, 8.000000e+00
  %1847 = fsub fast float %1839, %1845
  %1848 = fsub fast float %1840, %1846
  %1849 = fadd fast float %1847, 5.000000e-01
  %1850 = fadd fast float %1848, 5.000000e-01
  %1851 = and i32 %1792, 255
  %1852 = lshr i32 %1790, 24
  %1853 = mul nuw nsw i32 %1851, 9
  %1854 = uitofp i32 %1853 to float
  %1855 = mul nuw nsw i32 %1852, 9
  %1856 = uitofp i32 %1855 to float
  %1857 = fadd fast float %1849, %1854
  %1858 = fadd fast float %1850, %1856
  %1859 = fdiv fast float %1857, %1769
  %1860 = fdiv fast float %1858, %1836
  %1861 = fmul fast float %1453, 4.375000e-01
  %1862 = fadd fast float %1861, 3.125000e-02
  %1863 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %50, float %1859, float %1860, float %1862, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1864 = extractvalue %dx.types.ResRet.f32 %1863, 0
  %1865 = extractvalue %dx.types.ResRet.f32 %1863, 1
  %1866 = extractvalue %dx.types.ResRet.f32 %1863, 2
  %1867 = fadd fast float %1861, 5.312500e-01
  %1868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %50, float %1859, float %1860, float %1867, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1869 = extractvalue %dx.types.ResRet.f32 %1868, 0
  %1870 = extractvalue %dx.types.ResRet.f32 %1868, 1
  %1871 = extractvalue %dx.types.ResRet.f32 %1868, 2
  %1872 = fmul fast float %1869, 2.000000e+00
  %1873 = fmul fast float %1870, 2.000000e+00
  %1874 = fmul fast float %1871, 2.000000e+00
  %1875 = fadd fast float %1872, -1.000000e+00
  %1876 = fadd fast float %1873, -1.000000e+00
  %1877 = fadd fast float %1874, -1.000000e+00
  %1878 = fmul fast float %1875, %1875
  %1879 = fmul fast float %1876, %1876
  %1880 = fadd fast float %1878, %1879
  %1881 = fmul fast float %1877, %1877
  %1882 = fadd fast float %1880, %1881
  %1883 = call float @dx.op.unary.f32(i32 24, float %1882)  ; Sqrt(value)
  %1884 = fcmp fast ogt float %1883, 0.000000e+00
  br i1 %1884, label %1885, label %1889

; <label>:1885                                    ; preds = %1835
  %1886 = fdiv fast float %1875, %1883
  %1887 = fdiv fast float %1876, %1883
  %1888 = fdiv fast float %1877, %1883
  br label %1889

; <label>:1889                                    ; preds = %1885, %1835
  %1890 = phi float [ %1886, %1885 ], [ 0.000000e+00, %1835 ]
  %1891 = phi float [ %1887, %1885 ], [ 0.000000e+00, %1835 ]
  %1892 = phi float [ %1888, %1885 ], [ 0.000000e+00, %1835 ]
  %1893 = fmul fast float %132, %132
  %1894 = fmul fast float %133, %133
  %1895 = fadd fast float %1893, %1894
  %1896 = call float @dx.op.unary.f32(i32 24, float %1895)  ; Sqrt(value)
  %1897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1898 = extractvalue %dx.types.CBufRet.f32 %1897, 0
  %1899 = extractvalue %dx.types.CBufRet.f32 %1897, 1
  %1900 = fsub fast float %1896, %1898
  %1901 = fdiv fast float %1900, %1899
  %1902 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  %1903 = fmul fast float %1902, 2.000000e+00
  %1904 = fsub fast float 3.000000e+00, %1903
  %1905 = fmul fast float %1902, %1902
  %1906 = fmul fast float %1905, %1904
  %1907 = call float @dx.op.dot3.f32(i32 55, float %1890, float %1891, float %1892, float %1263, float %1264, float %1265)  ; Dot3(ax,ay,az,bx,by,bz)
  %1908 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1907)  ; FMax(a,b)
  %1909 = fmul fast float %1908, 0x400C5BF8A0000000
  %1910 = fmul fast float %1906, %1864
  %1911 = fmul fast float %1910, %1909
  %1912 = fadd fast float %1911, %1833
  %1913 = fmul fast float %1906, %1865
  %1914 = fmul fast float %1913, %1909
  %1915 = fadd fast float %1914, %1832
  %1916 = fmul fast float %1906, %1866
  %1917 = fmul fast float %1916, %1909
  %1918 = fadd fast float %1917, %1831
  br label %1919

; <label>:1919                                    ; preds = %1889, %1830, %1755
  %1920 = phi float [ %1918, %1889 ], [ %1831, %1830 ], [ %1767, %1755 ]
  %1921 = phi float [ %1915, %1889 ], [ %1832, %1830 ], [ %1766, %1755 ]
  %1922 = phi float [ %1912, %1889 ], [ %1833, %1830 ], [ %1765, %1755 ]
  %1923 = fcmp fast ogt float %1412, %1449
  %1924 = and i1 %1771, %1923
  %1925 = and i1 %1773, %1924
  %1926 = and i1 %1775, %1925
  %1927 = and i1 %1777, %1926
  br i1 %1927, label %1928, label %1985, !dx.controlflow.hints !101

; <label>:1928                                    ; preds = %1919
  %1929 = fmul fast float %1451, 0x3FC24924A0000000
  %1930 = fsub fast float %1412, %1449
  %1931 = fdiv fast float %1930, %1929
  %1932 = call float @dx.op.unary.f32(i32 7, float %1931)  ; Saturate(value)
  %1933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1934 = extractvalue %dx.types.CBufRet.f32 %1933, 0
  %1935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1936 = extractvalue %dx.types.CBufRet.f32 %1935, 0
  %1937 = extractvalue %dx.types.CBufRet.f32 %1935, 1
  %1938 = extractvalue %dx.types.CBufRet.f32 %1935, 2
  %1939 = fsub fast float %1934, %1922
  %1940 = fsub fast float %1936, %1762
  %1941 = fsub fast float %1937, %1763
  %1942 = fsub fast float %1938, %1764
  %1943 = fmul fast float %1939, %1932
  %1944 = fmul fast float %1940, %1932
  %1945 = fmul fast float %1941, %1932
  %1946 = fmul fast float %1942, %1932
  %1947 = fadd fast float %1943, %1922
  %1948 = fadd fast float %1944, %1762
  %1949 = fadd fast float %1945, %1763
  %1950 = fadd fast float %1946, %1764
  %1951 = extractvalue %dx.types.CBufRet.f32 %1933, 1
  %1952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1953 = extractvalue %dx.types.CBufRet.f32 %1952, 0
  %1954 = extractvalue %dx.types.CBufRet.f32 %1952, 1
  %1955 = extractvalue %dx.types.CBufRet.f32 %1952, 2
  %1956 = fsub fast float %1951, %1921
  %1957 = fsub fast float %1953, %1759
  %1958 = fsub fast float %1954, %1760
  %1959 = fsub fast float %1955, %1761
  %1960 = fmul fast float %1956, %1932
  %1961 = fmul fast float %1957, %1932
  %1962 = fmul fast float %1958, %1932
  %1963 = fmul fast float %1959, %1932
  %1964 = fadd fast float %1960, %1921
  %1965 = fadd fast float %1961, %1759
  %1966 = fadd fast float %1962, %1760
  %1967 = fadd fast float %1963, %1761
  %1968 = extractvalue %dx.types.CBufRet.f32 %1933, 2
  %1969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1970 = extractvalue %dx.types.CBufRet.f32 %1969, 0
  %1971 = extractvalue %dx.types.CBufRet.f32 %1969, 1
  %1972 = extractvalue %dx.types.CBufRet.f32 %1969, 2
  %1973 = fsub fast float %1968, %1920
  %1974 = fsub fast float %1970, %1756
  %1975 = fsub fast float %1971, %1757
  %1976 = fsub fast float %1972, %1758
  %1977 = fmul fast float %1973, %1932
  %1978 = fmul fast float %1974, %1932
  %1979 = fmul fast float %1975, %1932
  %1980 = fmul fast float %1976, %1932
  %1981 = fadd fast float %1977, %1920
  %1982 = fadd fast float %1978, %1756
  %1983 = fadd fast float %1979, %1757
  %1984 = fadd fast float %1980, %1758
  br label %1985

; <label>:1985                                    ; preds = %1928, %1919
  %1986 = phi float [ %1981, %1928 ], [ %1920, %1919 ]
  %1987 = phi float [ %1982, %1928 ], [ %1756, %1919 ]
  %1988 = phi float [ %1983, %1928 ], [ %1757, %1919 ]
  %1989 = phi float [ %1984, %1928 ], [ %1758, %1919 ]
  %1990 = phi float [ %1964, %1928 ], [ %1921, %1919 ]
  %1991 = phi float [ %1965, %1928 ], [ %1759, %1919 ]
  %1992 = phi float [ %1966, %1928 ], [ %1760, %1919 ]
  %1993 = phi float [ %1967, %1928 ], [ %1761, %1919 ]
  %1994 = phi float [ %1947, %1928 ], [ %1922, %1919 ]
  %1995 = phi float [ %1948, %1928 ], [ %1762, %1919 ]
  %1996 = phi float [ %1949, %1928 ], [ %1763, %1919 ]
  %1997 = phi float [ %1950, %1928 ], [ %1764, %1919 ]
  %1998 = extractvalue %dx.types.CBufRet.f32 %1574, 3
  %1999 = fmul fast float %1998, %1994
  %2000 = fmul fast float %1998, %1990
  %2001 = fmul fast float %1998, %1986
  %2002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2003 = extractvalue %dx.types.CBufRet.f32 %2002, 3
  %2004 = fmul fast float %1999, %2003
  %2005 = fmul fast float %2000, %2003
  %2006 = fmul fast float %2001, %2003
  %2007 = fmul fast float %1995, 1.500000e+00
  %2008 = fmul fast float %2007, %1998
  %2009 = fmul fast float %2008, %2003
  %2010 = fmul fast float %1996, 1.500000e+00
  %2011 = fmul fast float %2010, %1998
  %2012 = fmul fast float %2011, %2003
  %2013 = fmul fast float %1997, 1.500000e+00
  %2014 = fmul fast float %2013, %1998
  %2015 = fmul fast float %2014, %2003
  %2016 = fmul fast float %1991, 1.500000e+00
  %2017 = fmul fast float %2016, %1998
  %2018 = fmul fast float %2017, %2003
  %2019 = fmul fast float %1992, 1.500000e+00
  %2020 = fmul fast float %2019, %1998
  %2021 = fmul fast float %2020, %2003
  %2022 = fmul fast float %1993, 1.500000e+00
  %2023 = fmul fast float %2022, %1998
  %2024 = fmul fast float %2023, %2003
  %2025 = fmul fast float %1987, 1.500000e+00
  %2026 = fmul fast float %2025, %1998
  %2027 = fmul fast float %2026, %2003
  %2028 = fmul fast float %1988, 1.500000e+00
  %2029 = fmul fast float %2028, %1998
  %2030 = fmul fast float %2029, %2003
  %2031 = fmul fast float %1989, 1.500000e+00
  %2032 = fmul fast float %2031, %1998
  %2033 = fmul fast float %2032, %2003
  %2034 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2004)  ; FMax(a,b)
  %2035 = call float @dx.op.dot3.f32(i32 55, float %2009, float %2012, float %2015, float %2009, float %2012, float %2015)  ; Dot3(ax,ay,az,bx,by,bz)
  %2036 = fcmp fast oeq float %2035, 0.000000e+00
  %2037 = fcmp fast oeq float %2034, 0.000000e+00
  %2038 = or i1 %2037, %2036
  br i1 %2038, label %2068, label %2039

; <label>:2039                                    ; preds = %1985
  %2040 = fsub fast float -0.000000e+00, %2015
  %2041 = fsub fast float -0.000000e+00, %2009
  %2042 = call float @dx.op.unary.f32(i32 24, float %2035)  ; Sqrt(value)
  %2043 = fdiv fast float %2042, %2034
  %2044 = fcmp fast ogt float %2043, 0x3FFB6F8900000000
  %2045 = select i1 %2044, float 0x3FFB6F8900000000, float %2043
  %2046 = fmul fast float %2045, 0x3FE8A23460000000
  %2047 = call float @dx.op.unary.f32(i32 7, float %2046)  ; Saturate(value)
  %2048 = call float @dx.op.binary.f32(i32 35, float %2045, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2049 = fmul fast float %2047, %2034
  %2050 = fmul fast float %2048, 0x3FF279A740000000
  %2051 = fadd fast float %2050, -1.000000e+00
  %2052 = call float @dx.op.dot3.f32(i32 55, float %2040, float %2041, float %2012, float %2040, float %2041, float %2012)  ; Dot3(ax,ay,az,bx,by,bz)
  %2053 = call float @dx.op.unary.f32(i32 25, float %2052)  ; Rsqrt(value)
  %2054 = fmul fast float %2053, %2040
  %2055 = fmul fast float %2053, %2041
  %2056 = fmul fast float %2053, %2012
  %2057 = fmul fast float %2051, %2051
  %2058 = fsub fast float 1.000000e+00, %2057
  %2059 = fmul fast float %2048, 0x40005F8BE0000000
  %2060 = fsub fast float 0x400C5BF8A0000000, %2059
  %2061 = fdiv fast float %2049, %2060
  %2062 = fmul fast float %2061, 0x3FEE31C3C0000000
  %2063 = fmul fast float %2062, %2058
  %2064 = fmul fast float %2048, 0x3FDACB7480000000
  %2065 = fadd fast float %2064, 0xBFD7347680000000
  %2066 = fmul fast float %2065, %2061
  %2067 = fmul fast float %2066, %2058
  br label %2068

; <label>:2068                                    ; preds = %2039, %1985
  %2069 = phi float [ %2054, %2039 ], [ 0.000000e+00, %1985 ]
  %2070 = phi float [ %2055, %2039 ], [ 0.000000e+00, %1985 ]
  %2071 = phi float [ %2056, %2039 ], [ 0.000000e+00, %1985 ]
  %2072 = phi float [ %2063, %2039 ], [ 0.000000e+00, %1985 ]
  %2073 = phi float [ %2067, %2039 ], [ 0.000000e+00, %1985 ]
  %2074 = call float @dx.op.dot3.f32(i32 55, float %2069, float %2070, float %2071, float %1263, float %1264, float %1265)  ; Dot3(ax,ay,az,bx,by,bz)
  %2075 = fmul fast float %2074, %2074
  %2076 = fmul fast float %2075, 0x3FEE471020000000
  %2077 = fadd fast float %2076, 0xBFD42F6020000000
  %2078 = fmul fast float %2034, 0x3FD20DD760000000
  %2079 = fmul fast float %2077, %2073
  %2080 = fmul fast float %2072, 0x3FDF454380000000
  %2081 = fmul fast float %2080, %2074
  %2082 = fadd fast float %2081, %2078
  %2083 = fadd fast float %2082, %2079
  %2084 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2005)  ; FMax(a,b)
  %2085 = call float @dx.op.dot3.f32(i32 55, float %2018, float %2021, float %2024, float %2018, float %2021, float %2024)  ; Dot3(ax,ay,az,bx,by,bz)
  %2086 = fcmp fast oeq float %2085, 0.000000e+00
  %2087 = fcmp fast oeq float %2084, 0.000000e+00
  %2088 = or i1 %2087, %2086
  br i1 %2088, label %2118, label %2089

; <label>:2089                                    ; preds = %2068
  %2090 = fsub fast float -0.000000e+00, %2024
  %2091 = fsub fast float -0.000000e+00, %2018
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
  %2102 = call float @dx.op.dot3.f32(i32 55, float %2090, float %2091, float %2021, float %2090, float %2091, float %2021)  ; Dot3(ax,ay,az,bx,by,bz)
  %2103 = call float @dx.op.unary.f32(i32 25, float %2102)  ; Rsqrt(value)
  %2104 = fmul fast float %2103, %2090
  %2105 = fmul fast float %2103, %2091
  %2106 = fmul fast float %2103, %2021
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

; <label>:2118                                    ; preds = %2089, %2068
  %2119 = phi float [ %2104, %2089 ], [ 0.000000e+00, %2068 ]
  %2120 = phi float [ %2105, %2089 ], [ 0.000000e+00, %2068 ]
  %2121 = phi float [ %2106, %2089 ], [ 0.000000e+00, %2068 ]
  %2122 = phi float [ %2113, %2089 ], [ 0.000000e+00, %2068 ]
  %2123 = phi float [ %2117, %2089 ], [ 0.000000e+00, %2068 ]
  %2124 = call float @dx.op.dot3.f32(i32 55, float %2119, float %2120, float %2121, float %1263, float %1264, float %1265)  ; Dot3(ax,ay,az,bx,by,bz)
  %2125 = fmul fast float %2124, %2124
  %2126 = fmul fast float %2125, 0x3FEE471020000000
  %2127 = fadd fast float %2126, 0xBFD42F6020000000
  %2128 = fmul fast float %2084, 0x3FD20DD760000000
  %2129 = fmul fast float %2127, %2123
  %2130 = fmul fast float %2122, 0x3FDF454380000000
  %2131 = fmul fast float %2130, %2124
  %2132 = fadd fast float %2131, %2128
  %2133 = fadd fast float %2132, %2129
  %2134 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2006)  ; FMax(a,b)
  %2135 = call float @dx.op.dot3.f32(i32 55, float %2027, float %2030, float %2033, float %2027, float %2030, float %2033)  ; Dot3(ax,ay,az,bx,by,bz)
  %2136 = fcmp fast oeq float %2135, 0.000000e+00
  %2137 = fcmp fast oeq float %2134, 0.000000e+00
  %2138 = or i1 %2137, %2136
  br i1 %2138, label %2168, label %2139

; <label>:2139                                    ; preds = %2118
  %2140 = fsub fast float -0.000000e+00, %2033
  %2141 = fsub fast float -0.000000e+00, %2027
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
  %2152 = call float @dx.op.dot3.f32(i32 55, float %2140, float %2141, float %2030, float %2140, float %2141, float %2030)  ; Dot3(ax,ay,az,bx,by,bz)
  %2153 = call float @dx.op.unary.f32(i32 25, float %2152)  ; Rsqrt(value)
  %2154 = fmul fast float %2153, %2140
  %2155 = fmul fast float %2153, %2141
  %2156 = fmul fast float %2153, %2030
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
  %2174 = call float @dx.op.dot3.f32(i32 55, float %2169, float %2170, float %2171, float %1263, float %1264, float %1265)  ; Dot3(ax,ay,az,bx,by,bz)
  %2175 = fmul fast float %2174, %2174
  %2176 = fmul fast float %2175, 0x3FEE471020000000
  %2177 = fadd fast float %2176, 0xBFD42F6020000000
  %2178 = fmul fast float %2134, 0x3FD20DD760000000
  %2179 = fmul fast float %2177, %2173
  %2180 = fmul fast float %2172, 0x3FDF454380000000
  %2181 = fmul fast float %2180, %2174
  %2182 = fadd fast float %2181, %2178
  %2183 = fadd fast float %2182, %2179
  %2184 = call float @dx.op.binary.f32(i32 35, float %2083, float 0.000000e+00)  ; FMax(a,b)
  %2185 = call float @dx.op.binary.f32(i32 35, float %2133, float 0.000000e+00)  ; FMax(a,b)
  %2186 = call float @dx.op.binary.f32(i32 35, float %2183, float 0.000000e+00)  ; FMax(a,b)
  %2187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2188 = extractvalue %dx.types.CBufRet.f32 %2187, 0
  %2189 = call float @dx.op.binary.f32(i32 36, float %1275, float %2188)  ; FMin(a,b)
  %2190 = fsub fast float 1.000000e+00, %1401
  %2191 = fmul fast float %2189, %2190
  %2192 = fsub fast float 1.000000e+00, %2191
  %2193 = bitcast float %2192 to i32
  %2194 = sub nsw i32 2129859010, %2193
  %2195 = bitcast i32 %2194 to float
  %2196 = call float @dx.op.binary.f32(i32 36, float %1276, float %2188)  ; FMin(a,b)
  %2197 = fmul fast float %2196, %2190
  %2198 = fsub fast float 1.000000e+00, %2197
  %2199 = bitcast float %2198 to i32
  %2200 = sub nsw i32 2129859010, %2199
  %2201 = bitcast i32 %2200 to float
  %2202 = call float @dx.op.binary.f32(i32 36, float %1277, float %2188)  ; FMin(a,b)
  %2203 = fmul fast float %2202, %2190
  %2204 = fsub fast float 1.000000e+00, %2203
  %2205 = bitcast float %2204 to i32
  %2206 = sub nsw i32 2129859010, %2205
  %2207 = bitcast i32 %2206 to float
  %2208 = fmul fast float %2184, %1401
  %2209 = fmul fast float %2208, %2195
  %2210 = fmul fast float %2185, %1401
  %2211 = fmul fast float %2210, %2201
  %2212 = fmul fast float %2186, %1401
  %2213 = fmul fast float %2212, %2207
  %2214 = call float @dx.op.dot3.f32(i32 55, float %2209, float %2211, float %2213, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2215 = select i1 %1386, float 0.000000e+00, float %2209
  %2216 = select i1 %1386, float %2214, float %2211
  %2217 = select i1 %1386, float 0.000000e+00, float %2213
  %2218 = fsub fast float 1.000000e+00, %1284
  %2219 = fsub fast float 1.000000e+00, %1285
  %2220 = fsub fast float 1.000000e+00, %1391
  %2221 = fmul fast float %1323, %2218
  %2222 = fmul fast float %1323, %2219
  %2223 = fmul fast float %2220, %1323
  %2224 = fadd fast float %2221, %1284
  %2225 = fadd fast float %2222, %1285
  %2226 = fadd fast float %2223, %1391
  %2227 = call float @dx.op.binary.f32(i32 35, float %2225, float %2226)  ; FMax(a,b)
  %2228 = call float @dx.op.binary.f32(i32 35, float %2224, float %2227)  ; FMax(a,b)
  %2229 = fsub fast float 1.000000e+00, %2228
  %2230 = fmul fast float %2215, %2229
  %2231 = fmul fast float %2216, %2229
  %2232 = fmul fast float %2217, %2229
  %2233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2234 = extractvalue %dx.types.CBufRet.f32 %2233, 3
  %2235 = fcmp fast oeq float %2234, 0.000000e+00
  br i1 %2235, label %3499, label %2236

; <label>:2236                                    ; preds = %2168
  %2237 = extractvalue %dx.types.CBufRet.f32 %2233, 0
  %2238 = extractvalue %dx.types.CBufRet.f32 %2233, 1
  %2239 = extractvalue %dx.types.CBufRet.f32 %2233, 2
  %2240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2241 = extractvalue %dx.types.CBufRet.f32 %2240, 0
  %2242 = extractvalue %dx.types.CBufRet.f32 %2240, 1
  %2243 = extractvalue %dx.types.CBufRet.f32 %2240, 2
  %2244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2245 = extractvalue %dx.types.CBufRet.f32 %2244, 0
  %2246 = extractvalue %dx.types.CBufRet.f32 %2244, 1
  %2247 = call float @dx.op.dot3.f32(i32 55, float %2241, float %2242, float %2243, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2248 = select i1 %1386, float %2245, float %2241
  %2249 = select i1 %1386, float %2247, float %2242
  %2250 = select i1 %1386, float %2246, float %2243
  %2251 = fcmp fast olt float %2234, 0.000000e+00
  br i1 %2251, label %3158, label %2252

; <label>:2252                                    ; preds = %2236
  %2253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2254 = extractvalue %dx.types.CBufRet.f32 %2253, 0
  %2255 = extractvalue %dx.types.CBufRet.f32 %2253, 1
  %2256 = extractvalue %dx.types.CBufRet.f32 %2253, 2
  %2257 = extractvalue %dx.types.CBufRet.f32 %2253, 3
  %2258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2259 = extractvalue %dx.types.CBufRet.f32 %2258, 0
  %2260 = extractvalue %dx.types.CBufRet.f32 %2258, 1
  %2261 = extractvalue %dx.types.CBufRet.f32 %2258, 2
  %2262 = extractvalue %dx.types.CBufRet.f32 %2258, 3
  %2263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2264 = extractvalue %dx.types.CBufRet.f32 %2263, 0
  %2265 = extractvalue %dx.types.CBufRet.f32 %2263, 1
  %2266 = extractvalue %dx.types.CBufRet.f32 %2263, 2
  %2267 = extractvalue %dx.types.CBufRet.f32 %2263, 3
  %2268 = fmul fast float %2254, %132
  %2269 = call float @dx.op.tertiary.f32(i32 46, float %133, float %2255, float %2268)  ; FMad(a,b,c)
  %2270 = call float @dx.op.tertiary.f32(i32 46, float %134, float %2256, float %2269)  ; FMad(a,b,c)
  %2271 = fadd fast float %2270, %2257
  %2272 = fmul fast float %2259, %132
  %2273 = call float @dx.op.tertiary.f32(i32 46, float %133, float %2260, float %2272)  ; FMad(a,b,c)
  %2274 = call float @dx.op.tertiary.f32(i32 46, float %134, float %2261, float %2273)  ; FMad(a,b,c)
  %2275 = fadd fast float %2274, %2262
  %2276 = fmul fast float %2264, %132
  %2277 = call float @dx.op.tertiary.f32(i32 46, float %133, float %2265, float %2276)  ; FMad(a,b,c)
  %2278 = call float @dx.op.tertiary.f32(i32 46, float %134, float %2266, float %2277)  ; FMad(a,b,c)
  %2279 = fadd fast float %2278, %2267
  %2280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2281 = extractvalue %dx.types.CBufRet.f32 %2280, 0
  %2282 = extractvalue %dx.types.CBufRet.f32 %2280, 1
  %2283 = extractvalue %dx.types.CBufRet.f32 %2280, 3
  %2284 = fmul fast float %2283, %2271
  %2285 = fmul fast float %2283, %2275
  %2286 = fadd fast float %2284, %2281
  %2287 = fadd fast float %2285, %2282
  %2288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2289 = extractvalue %dx.types.CBufRet.f32 %2288, 0
  %2290 = extractvalue %dx.types.CBufRet.f32 %2288, 1
  %2291 = extractvalue %dx.types.CBufRet.f32 %2288, 3
  %2292 = fmul fast float %2291, %2271
  %2293 = fmul fast float %2291, %2275
  %2294 = fadd fast float %2292, %2289
  %2295 = fadd fast float %2293, %2290
  %2296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2297 = extractvalue %dx.types.CBufRet.f32 %2296, 1
  %2298 = fsub fast float %2297, %2279
  %2299 = extractvalue %dx.types.CBufRet.f32 %2296, 2
  %2300 = fmul fast float %2298, %2299
  %2301 = fsub fast float 1.000000e+00, %2300
  %2302 = call float @dx.op.unary.f32(i32 7, float %2301)  ; Saturate(value)
  %2303 = extractvalue %dx.types.CBufRet.f32 %2288, 2
  %2304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2305 = extractvalue %dx.types.CBufRet.f32 %2304, 2
  %2306 = fadd fast float %2305, %2303
  %2307 = fcmp fast ogt float %2306, 0.000000e+00
  br i1 %2307, label %2308, label %2333

; <label>:2308                                    ; preds = %2252
  %2309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2310 = extractvalue %dx.types.CBufRet.f32 %2309, 0
  %2311 = extractvalue %dx.types.CBufRet.f32 %2309, 1
  %2312 = fsub fast float %2294, %2310
  %2313 = fsub fast float %2295, %2311
  %2314 = fcmp fast olt float %2312, 0.000000e+00
  %2315 = fcmp fast olt float %2313, 0.000000e+00
  %2316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2317 = extractvalue %dx.types.CBufRet.f32 %2316, 0
  %2318 = extractvalue %dx.types.CBufRet.f32 %2316, 1
  %2319 = extractvalue %dx.types.CBufRet.f32 %2316, 2
  %2320 = extractvalue %dx.types.CBufRet.f32 %2316, 3
  %2321 = select i1 %2314, float %2317, float %2319
  %2322 = select i1 %2315, float %2318, float %2320
  %2323 = fmul fast float %2321, %2312
  %2324 = fmul fast float %2322, %2313
  %2325 = call float @dx.op.unary.f32(i32 6, float %2323)  ; FAbs(value)
  %2326 = call float @dx.op.unary.f32(i32 6, float %2324)  ; FAbs(value)
  %2327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2328 = extractvalue %dx.types.CBufRet.f32 %2327, 0
  %2329 = call float @dx.op.binary.f32(i32 35, float %2325, float %2326)  ; FMax(a,b)
  %2330 = fsub fast float %2328, %2329
  %2331 = call float @dx.op.unary.f32(i32 7, float %2330)  ; Saturate(value)
  %2332 = fmul fast float %2331, %2302
  br label %2333

; <label>:2333                                    ; preds = %2308, %2252
  %2334 = phi float [ %2332, %2308 ], [ 0.000000e+00, %2252 ]
  %2335 = extractvalue %dx.types.CBufRet.f32 %2280, 2
  %2336 = extractvalue %dx.types.CBufRet.f32 %2304, 1
  %2337 = fadd fast float %2336, %2335
  %2338 = fcmp fast ogt float %2337, 0.000000e+00
  br i1 %2338, label %2339, label %2364

; <label>:2339                                    ; preds = %2333
  %2340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2341 = extractvalue %dx.types.CBufRet.f32 %2340, 0
  %2342 = extractvalue %dx.types.CBufRet.f32 %2340, 1
  %2343 = fsub fast float %2286, %2341
  %2344 = fsub fast float %2287, %2342
  %2345 = fcmp fast olt float %2343, 0.000000e+00
  %2346 = fcmp fast olt float %2344, 0.000000e+00
  %2347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2348 = extractvalue %dx.types.CBufRet.f32 %2347, 0
  %2349 = extractvalue %dx.types.CBufRet.f32 %2347, 1
  %2350 = extractvalue %dx.types.CBufRet.f32 %2347, 2
  %2351 = extractvalue %dx.types.CBufRet.f32 %2347, 3
  %2352 = select i1 %2345, float %2348, float %2350
  %2353 = select i1 %2346, float %2349, float %2351
  %2354 = fmul fast float %2352, %2343
  %2355 = fmul fast float %2353, %2344
  %2356 = call float @dx.op.unary.f32(i32 6, float %2354)  ; FAbs(value)
  %2357 = call float @dx.op.unary.f32(i32 6, float %2355)  ; FAbs(value)
  %2358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2359 = extractvalue %dx.types.CBufRet.f32 %2358, 0
  %2360 = call float @dx.op.binary.f32(i32 35, float %2356, float %2357)  ; FMax(a,b)
  %2361 = fsub fast float %2359, %2360
  %2362 = call float @dx.op.unary.f32(i32 7, float %2361)  ; Saturate(value)
  %2363 = fmul fast float %2362, %2302
  br label %2364

; <label>:2364                                    ; preds = %2339, %2333
  %2365 = phi float [ %2363, %2339 ], [ 0.000000e+00, %2333 ]
  %2366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2367 = extractvalue %dx.types.CBufRet.f32 %2366, 1
  %2368 = call float @dx.op.unary.f32(i32 7, float %2367)  ; Saturate(value)
  %2369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2369, 0
  %2371 = extractvalue %dx.types.CBufRet.f32 %2369, 1
  %2372 = fsub fast float %2271, %2370
  %2373 = fsub fast float %2275, %2371
  %2374 = fcmp fast olt float %2372, 0.000000e+00
  %2375 = fcmp fast olt float %2373, 0.000000e+00
  %2376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2377 = extractvalue %dx.types.CBufRet.f32 %2376, 0
  %2378 = extractvalue %dx.types.CBufRet.f32 %2376, 1
  %2379 = extractvalue %dx.types.CBufRet.f32 %2376, 2
  %2380 = extractvalue %dx.types.CBufRet.f32 %2376, 3
  %2381 = select i1 %2374, float %2377, float %2379
  %2382 = select i1 %2375, float %2378, float %2380
  %2383 = fmul fast float %2381, %2372
  %2384 = fmul fast float %2382, %2373
  %2385 = call float @dx.op.unary.f32(i32 6, float %2383)  ; FAbs(value)
  %2386 = call float @dx.op.unary.f32(i32 6, float %2384)  ; FAbs(value)
  %2387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2388 = extractvalue %dx.types.CBufRet.f32 %2387, 0
  %2389 = call float @dx.op.binary.f32(i32 35, float %2385, float %2386)  ; FMax(a,b)
  %2390 = fsub fast float %2388, %2389
  %2391 = call float @dx.op.unary.f32(i32 7, float %2390)  ; Saturate(value)
  %2392 = call float @dx.op.binary.f32(i32 36, float %2391, float %2368)  ; FMin(a,b)
  %2393 = fmul fast float %2392, %2302
  %2394 = fsub fast float %2365, %2393
  %2395 = fsub fast float %2334, %2365
  %2396 = fsub fast float %2395, %2393
  %2397 = call float @dx.op.binary.f32(i32 35, float %2365, float %2334)  ; FMax(a,b)
  %2398 = call float @dx.op.binary.f32(i32 35, float %2393, float %2397)  ; FMax(a,b)
  %2399 = fcmp fast olt float %2398, 1.000000e+00
  br i1 %2399, label %2400, label %3071, !dx.controlflow.hints !102

; <label>:2400                                    ; preds = %2364
  %2401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2402 = extractvalue %dx.types.CBufRet.f32 %2401, 0
  %2403 = fcmp fast une float %2402, 0.000000e+00
  br i1 %2403, label %2404, label %3071, !dx.controlflow.hints !103

; <label>:2404                                    ; preds = %2400
  %2405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2406 = extractvalue %dx.types.CBufRet.f32 %2405, 0
  %2407 = extractvalue %dx.types.CBufRet.f32 %2405, 1
  %2408 = extractvalue %dx.types.CBufRet.f32 %2405, 2
  %2409 = extractvalue %dx.types.CBufRet.f32 %2405, 3
  %2410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2411 = extractvalue %dx.types.CBufRet.f32 %2410, 0
  %2412 = extractvalue %dx.types.CBufRet.f32 %2410, 1
  %2413 = extractvalue %dx.types.CBufRet.f32 %2410, 2
  %2414 = extractvalue %dx.types.CBufRet.f32 %2410, 3
  %2415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2416 = extractvalue %dx.types.CBufRet.f32 %2415, 0
  %2417 = extractvalue %dx.types.CBufRet.f32 %2415, 1
  %2418 = extractvalue %dx.types.CBufRet.f32 %2415, 2
  %2419 = extractvalue %dx.types.CBufRet.f32 %2415, 3
  %2420 = fmul fast float %2406, %132
  %2421 = call float @dx.op.tertiary.f32(i32 46, float %133, float %2407, float %2420)  ; FMad(a,b,c)
  %2422 = call float @dx.op.tertiary.f32(i32 46, float %134, float %2408, float %2421)  ; FMad(a,b,c)
  %2423 = fadd fast float %2422, %2409
  %2424 = fmul fast float %2411, %132
  %2425 = call float @dx.op.tertiary.f32(i32 46, float %133, float %2412, float %2424)  ; FMad(a,b,c)
  %2426 = call float @dx.op.tertiary.f32(i32 46, float %134, float %2413, float %2425)  ; FMad(a,b,c)
  %2427 = fadd fast float %2426, %2414
  %2428 = fmul fast float %2416, %132
  %2429 = call float @dx.op.tertiary.f32(i32 46, float %133, float %2417, float %2428)  ; FMad(a,b,c)
  %2430 = call float @dx.op.tertiary.f32(i32 46, float %134, float %2418, float %2429)  ; FMad(a,b,c)
  %2431 = fadd fast float %2430, %2419
  %2432 = fcmp fast oge float %2423, 1.000000e+00
  %2433 = fcmp fast oge float %2427, 1.000000e+00
  %2434 = or i1 %2432, %2433
  %2435 = fcmp fast olt float %2423, 0.000000e+00
  %2436 = fcmp fast olt float %2427, 0.000000e+00
  %2437 = or i1 %2435, %2436
  %2438 = or i1 %2434, %2437
  br i1 %2438, label %3071, label %2439, !dx.controlflow.hints !104

; <label>:2439                                    ; preds = %2404
  %2440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2441 = extractvalue %dx.types.CBufRet.f32 %2440, 0
  %2442 = extractvalue %dx.types.CBufRet.f32 %2440, 1
  %2443 = extractvalue %dx.types.CBufRet.f32 %2440, 2
  %2444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2445 = extractvalue %dx.types.CBufRet.f32 %2444, 1
  %2446 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2447 = extractvalue %dx.types.CBufRet.i32 %2446, 2
  %2448 = uitofp i32 %2447 to float
  %2449 = extractvalue %dx.types.CBufRet.i32 %2446, 3
  %2450 = uitofp i32 %2449 to float
  %2451 = extractvalue %dx.types.CBufRet.f32 %2440, 3
  %2452 = fmul fast float %2451, 2.000000e+00
  %2453 = fsub fast float %2423, %2441
  %2454 = fsub fast float %2427, %2442
  %2455 = fmul fast float %2452, %2453
  %2456 = fmul fast float %2452, %2454
  %2457 = fdiv fast float 1.000000e+00, %2239
  %2458 = fmul fast float %2456, %2457
  %2459 = call float @dx.op.unary.f32(i32 6, float %2458)  ; FAbs(value)
  %2460 = fmul fast float %2443, %134
  %2461 = fmul fast float %2460, %2452
  %2462 = call float @dx.op.unary.f32(i32 6, float %2461)  ; FAbs(value)
  %2463 = call float @dx.op.unary.f32(i32 6, float %2455)  ; FAbs(value)
  %2464 = call float @dx.op.binary.f32(i32 35, float %2462, float %2459)  ; FMax(a,b)
  %2465 = call float @dx.op.binary.f32(i32 35, float %2463, float %2464)  ; FMax(a,b)
  %2466 = fmul fast float %2465, 2.000000e+00
  %2467 = call float @dx.op.unary.f32(i32 23, float %2466)  ; Log(value)
  %2468 = call float @dx.op.binary.f32(i32 35, float %2467, float %2448)  ; FMax(a,b)
  %2469 = call float @dx.op.unary.f32(i32 22, float %2468)  ; Frc(value)
  %2470 = fadd fast float %2469, 0xBFEA666660000000
  %2471 = fmul fast float %2470, 8.000000e+00
  %2472 = call float @dx.op.unary.f32(i32 7, float %2471)  ; Saturate(value)
  %2473 = call float @dx.op.unary.f32(i32 27, float %2468)  ; Round_ni(value)
  %2474 = fadd fast float %2473, %2472
  %2475 = call float @dx.op.binary.f32(i32 36, float %2474, float %2450)  ; FMin(a,b)
  %2476 = call float @dx.op.unary.f32(i32 27, float %2475)  ; Round_ni(value)
  %2477 = fsub fast float -0.000000e+00, %2476
  %2478 = call float @dx.op.unary.f32(i32 21, float %2477)  ; Exp(value)
  %2479 = fmul fast float %2478, %2452
  %2480 = fmul fast float %2479, %2423
  %2481 = fmul fast float %2479, %2427
  %2482 = fmul fast float %2480, 5.000000e-01
  %2483 = fmul fast float %2481, 5.000000e-01
  %2484 = fadd fast float %2482, 5.000000e-01
  %2485 = fadd fast float %2483, 5.000000e-01
  %2486 = fmul fast float %2480, 2.500000e-01
  %2487 = fmul fast float %2481, 2.500000e-01
  %2488 = fadd fast float %2486, 5.000000e-01
  %2489 = fadd fast float %2487, 5.000000e-01
  %2490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.i32 %2490, 0
  %2492 = and i32 %2491, 536870911
  %2493 = lshr i32 %2492, 9
  %2494 = uitofp i32 %2493 to float
  %2495 = fmul fast float %2494, %2423
  %2496 = fmul fast float %2494, %2427
  %2497 = call float @dx.op.unary.f32(i32 22, float %2495)  ; Frc(value)
  %2498 = call float @dx.op.unary.f32(i32 22, float %2496)  ; Frc(value)
  %2499 = call float @dx.op.unary.f32(i32 22, float %2472)  ; Frc(value)
  %2500 = fcmp fast une float %2499, 0.000000e+00
  br i1 %2500, label %2501, label %2599, !dx.controlflow.hints !105

; <label>:2501                                    ; preds = %2439
  %2502 = call float @dx.op.unary.f32(i32 21, float %2473)  ; Exp(value)
  %2503 = fmul fast float %2502, 1.953125e-03
  %2504 = fcmp fast olt float %2497, %2503
  %2505 = fcmp fast olt float %2498, %2503
  %2506 = or i1 %2504, %2505
  %2507 = fsub fast float 1.000000e+00, %2503
  %2508 = fcmp fast ogt float %2497, %2507
  %2509 = fcmp fast ogt float %2498, %2507
  %2510 = or i1 %2508, %2509
  %2511 = or i1 %2506, %2510
  br i1 %2511, label %2512, label %2678, !dx.controlflow.hints !106

; <label>:2512                                    ; preds = %2501
  %2513 = fmul fast float %2445, 5.000000e-01
  %2514 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2515 = extractvalue %dx.types.CBufRet.i32 %2514, 0
  %2516 = fmul fast float %2427, 3.530000e+02
  %2517 = uitofp i32 %2492 to float
  %2518 = fmul fast float %2516, %2517
  %2519 = fmul fast float %2423, 6.130000e+02
  %2520 = fadd fast float %2518, %2519
  %2521 = fptoui float %2520 to i32
  %2522 = add i32 %2515, %2521
  %2523 = mul i32 %2522, -63
  %2524 = lshr i32 %2523, 17
  %2525 = xor i32 %2524, %2523
  %2526 = mul i32 %2525, -511
  %2527 = mul i32 %2525, -8176
  %2528 = xor i32 %2526, %2527
  %2529 = mul i32 %2528, -7
  %2530 = mul i32 %2528, -7168
  %2531 = xor i32 %2529, %2530
  %2532 = lshr i32 %2531, 15
  %2533 = xor i32 %2532, %2529
  %2534 = and i32 %2533, 15
  %2535 = mul i32 %2534, 2
  %2536 = add i32 0, %2535
  %2537 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2536
  %2538 = load float, float* %2537, align 4
  %2539 = mul i32 %2534, 2
  %2540 = add i32 1, %2539
  %2541 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2540
  %2542 = load float, float* %2541, align 4
  %2543 = fmul fast float %2427, 2.770000e+02
  %2544 = fmul fast float %2543, %2517
  %2545 = fmul fast float %2423, 5.990000e+02
  %2546 = fadd fast float %2544, %2545
  %2547 = fptoui float %2546 to i32
  %2548 = mul i32 %2547, -63
  %2549 = lshr i32 %2548, 17
  %2550 = xor i32 %2549, %2548
  %2551 = mul i32 %2550, -511
  %2552 = mul i32 %2550, -8176
  %2553 = xor i32 %2551, %2552
  %2554 = mul i32 %2553, -7
  %2555 = mul i32 %2553, -7168
  %2556 = xor i32 %2554, %2555
  %2557 = lshr i32 %2556, 15
  %2558 = xor i32 %2557, %2554
  %2559 = and i32 %2558, 63
  %2560 = mul i32 %2559, 2
  %2561 = add i32 0, %2560
  %2562 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2561
  %2563 = load float, float* %2562, align 4
  %2564 = mul i32 %2559, 2
  %2565 = add i32 1, %2564
  %2566 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2565
  %2567 = load float, float* %2566, align 4
  %2568 = call float @dx.op.dot2.f32(i32 54, float %2538, float %2542, float %2563, float %2567)  ; Dot2(ax,ay,bx,by)
  %2569 = fsub fast float -0.000000e+00, %2563
  %2570 = call float @dx.op.dot2.f32(i32 54, float %2538, float %2542, float %2569, float %2567)  ; Dot2(ax,ay,bx,by)
  %2571 = fmul fast float %2568, %2513
  %2572 = fmul fast float %2570, %2513
  %2573 = fdiv fast float 2.000000e+00, %2479
  %2574 = fmul fast float %2502, 9.765625e-04
  %2575 = fcmp fast olt float %2497, %2574
  %2576 = fcmp fast olt float %2498, %2574
  %2577 = or i1 %2575, %2576
  %2578 = fsub fast float 1.000000e+00, %2574
  %2579 = fcmp fast ogt float %2497, %2578
  %2580 = fcmp fast ogt float %2498, %2578
  %2581 = or i1 %2579, %2580
  %2582 = or i1 %2577, %2581
  %2583 = fmul fast float %2571, 2.000000e+00
  br i1 %2582, label %2584, label %2588

; <label>:2584                                    ; preds = %2512
  %2585 = fmul fast float %2572, 2.000000e+00
  %2586 = fadd fast float %2583, %2484
  %2587 = fadd fast float %2585, %2485
  br label %2588

; <label>:2588                                    ; preds = %2584, %2512
  %2589 = phi float [ %2586, %2584 ], [ %2484, %2512 ]
  %2590 = phi float [ %2587, %2584 ], [ %2485, %2512 ]
  %2591 = phi i32 [ 3, %2584 ], [ 2, %2512 ]
  %2592 = fadd fast float %2571, %2488
  %2593 = fadd fast float %2572, %2489
  %2594 = fmul fast float %2583, %2573
  %2595 = fmul fast float %2573, 2.000000e+00
  %2596 = fmul fast float %2595, %2572
  %2597 = fadd fast float %2594, %2423
  %2598 = fadd fast float %2596, %2427
  br label %2678

; <label>:2599                                    ; preds = %2439
  %2600 = call float @dx.op.unary.f32(i32 21, float %2476)  ; Exp(value)
  %2601 = fmul fast float %2600, 9.765625e-04
  %2602 = fcmp fast olt float %2497, %2601
  %2603 = fcmp fast olt float %2498, %2601
  %2604 = or i1 %2602, %2603
  %2605 = fsub fast float 1.000000e+00, %2601
  %2606 = fcmp fast ogt float %2497, %2605
  %2607 = fcmp fast ogt float %2498, %2605
  %2608 = or i1 %2606, %2607
  %2609 = or i1 %2604, %2608
  br i1 %2609, label %2610, label %2678, !dx.controlflow.hints !107

; <label>:2610                                    ; preds = %2599
  %2611 = fmul fast float %2445, 5.000000e-01
  %2612 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2613 = extractvalue %dx.types.CBufRet.i32 %2612, 0
  %2614 = fmul fast float %2427, 3.530000e+02
  %2615 = uitofp i32 %2492 to float
  %2616 = fmul fast float %2614, %2615
  %2617 = fmul fast float %2423, 6.130000e+02
  %2618 = fadd fast float %2616, %2617
  %2619 = fptoui float %2618 to i32
  %2620 = add i32 %2613, %2619
  %2621 = mul i32 %2620, -63
  %2622 = lshr i32 %2621, 17
  %2623 = xor i32 %2622, %2621
  %2624 = mul i32 %2623, -511
  %2625 = mul i32 %2623, -8176
  %2626 = xor i32 %2624, %2625
  %2627 = mul i32 %2626, -7
  %2628 = mul i32 %2626, -7168
  %2629 = xor i32 %2627, %2628
  %2630 = lshr i32 %2629, 15
  %2631 = xor i32 %2630, %2627
  %2632 = and i32 %2631, 15
  %2633 = mul i32 %2632, 2
  %2634 = add i32 0, %2633
  %2635 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2634
  %2636 = load float, float* %2635, align 4
  %2637 = mul i32 %2632, 2
  %2638 = add i32 1, %2637
  %2639 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2638
  %2640 = load float, float* %2639, align 4
  %2641 = fmul fast float %2427, 2.770000e+02
  %2642 = fmul fast float %2641, %2615
  %2643 = fmul fast float %2423, 5.990000e+02
  %2644 = fadd fast float %2642, %2643
  %2645 = fptoui float %2644 to i32
  %2646 = mul i32 %2645, -63
  %2647 = lshr i32 %2646, 17
  %2648 = xor i32 %2647, %2646
  %2649 = mul i32 %2648, -511
  %2650 = mul i32 %2648, -8176
  %2651 = xor i32 %2649, %2650
  %2652 = mul i32 %2651, -7
  %2653 = mul i32 %2651, -7168
  %2654 = xor i32 %2652, %2653
  %2655 = lshr i32 %2654, 15
  %2656 = xor i32 %2655, %2652
  %2657 = and i32 %2656, 63
  %2658 = mul i32 %2657, 2
  %2659 = add i32 0, %2658
  %2660 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2659
  %2661 = load float, float* %2660, align 4
  %2662 = mul i32 %2657, 2
  %2663 = add i32 1, %2662
  %2664 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2663
  %2665 = load float, float* %2664, align 4
  %2666 = call float @dx.op.dot2.f32(i32 54, float %2636, float %2640, float %2661, float %2665)  ; Dot2(ax,ay,bx,by)
  %2667 = fsub fast float -0.000000e+00, %2661
  %2668 = call float @dx.op.dot2.f32(i32 54, float %2636, float %2640, float %2667, float %2665)  ; Dot2(ax,ay,bx,by)
  %2669 = fmul fast float %2666, %2611
  %2670 = fmul fast float %2668, %2611
  %2671 = fadd fast float %2669, %2484
  %2672 = fadd fast float %2670, %2485
  %2673 = fdiv fast float 2.000000e+00, %2479
  %2674 = fmul fast float %2673, %2669
  %2675 = fmul fast float %2670, %2673
  %2676 = fadd fast float %2674, %2423
  %2677 = fadd fast float %2675, %2427
  br label %2678

; <label>:2678                                    ; preds = %2610, %2599, %2588, %2501
  %2679 = phi float [ %2592, %2588 ], [ %2488, %2501 ], [ %2488, %2610 ], [ %2488, %2599 ]
  %2680 = phi float [ %2593, %2588 ], [ %2489, %2501 ], [ %2489, %2610 ], [ %2489, %2599 ]
  %2681 = phi float [ %2589, %2588 ], [ %2484, %2501 ], [ %2671, %2610 ], [ %2484, %2599 ]
  %2682 = phi float [ %2590, %2588 ], [ %2485, %2501 ], [ %2672, %2610 ], [ %2485, %2599 ]
  %2683 = phi i32 [ %2591, %2588 ], [ 0, %2501 ], [ 1, %2610 ], [ 0, %2599 ]
  %2684 = phi float [ %2597, %2588 ], [ %2423, %2501 ], [ %2676, %2610 ], [ %2423, %2599 ]
  %2685 = phi float [ %2598, %2588 ], [ %2427, %2501 ], [ %2677, %2610 ], [ %2427, %2599 ]
  %2686 = fsub fast float %2450, %2448
  %2687 = fptoui float %2686 to i32
  %2688 = add i32 %2687, 320
  %2689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %2688)  ; CBufferLoadLegacy(handle,regIndex)
  %2690 = extractvalue %dx.types.CBufRet.f32 %2689, 0
  %2691 = extractvalue %dx.types.CBufRet.f32 %2689, 1
  %2692 = fcmp fast une float %2475, %2450
  %2693 = fsub fast float %2684, %2690
  %2694 = fsub fast float %2685, %2691
  %2695 = call float @dx.op.unary.f32(i32 6, float %2693)  ; FAbs(value)
  %2696 = call float @dx.op.unary.f32(i32 6, float %2694)  ; FAbs(value)
  %2697 = fmul fast float %2695, %2479
  %2698 = fmul fast float %2696, %2479
  %2699 = fcmp fast olt float %2697, 1.000000e+00
  %2700 = fcmp fast olt float %2698, 1.000000e+00
  %2701 = and i1 %2699, %2700
  %2702 = or i1 %2692, %2701
  br i1 %2702, label %2703, label %3071, !dx.controlflow.hints !108

; <label>:2703                                    ; preds = %2678
  %2704 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2705 = extractvalue %dx.types.CBufRet.i32 %2704, 2
  %2706 = sitofp i32 %2705 to float
  %2707 = fsub fast float %2475, %2706
  %2708 = call float @dx.op.unary.f32(i32 27, float %2707)  ; Round_ni(value)
  %2709 = call float @dx.op.unary.f32(i32 22, float %2475)  ; Frc(value)
  %2710 = icmp eq i32 %2683, 0
  %2711 = call float @dx.op.unary.f32(i32 22, float %2681)  ; Frc(value)
  %2712 = call float @dx.op.unary.f32(i32 22, float %2682)  ; Frc(value)
  br i1 %2710, label %2783, label %2713, !dx.controlflow.hints !109

; <label>:2713                                    ; preds = %2703
  %2714 = and i32 %2683, 1
  %2715 = icmp eq i32 %2714, 0
  br i1 %2715, label %2729, label %2716, !dx.controlflow.hints !110

; <label>:2716                                    ; preds = %2713
  %2717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2718 = extractvalue %dx.types.CBufRet.f32 %2717, 0
  %2719 = fmul fast float %2711, %2718
  %2720 = fmul fast float %2712, %2718
  %2721 = fptoui float %2719 to i32
  %2722 = fptoui float %2720 to i32
  %2723 = fptoui float %2708 to i32
  %2724 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %2721, i32 %2722, i32 %2723, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2725 = extractvalue %dx.types.ResRet.f32 %2724, 0
  %2726 = extractvalue %dx.types.ResRet.f32 %2724, 1
  %2727 = extractvalue %dx.types.ResRet.f32 %2724, 2
  %2728 = extractvalue %dx.types.ResRet.f32 %2724, 3
  br label %2735

; <label>:2729                                    ; preds = %2713
  %2730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %49, float %2711, float %2712, float %2708, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2731 = extractvalue %dx.types.ResRet.f32 %2730, 0
  %2732 = extractvalue %dx.types.ResRet.f32 %2730, 1
  %2733 = extractvalue %dx.types.ResRet.f32 %2730, 2
  %2734 = extractvalue %dx.types.ResRet.f32 %2730, 3
  br label %2735

; <label>:2735                                    ; preds = %2729, %2716
  %2736 = phi float [ %2725, %2716 ], [ %2731, %2729 ]
  %2737 = phi float [ %2726, %2716 ], [ %2732, %2729 ]
  %2738 = phi float [ %2727, %2716 ], [ %2733, %2729 ]
  %2739 = phi float [ %2728, %2716 ], [ %2734, %2729 ]
  %2740 = fcmp fast ogt float %2709, 0.000000e+00
  br i1 %2740, label %2741, label %2811

; <label>:2741                                    ; preds = %2735
  %2742 = and i32 %2683, 2
  %2743 = icmp eq i32 %2742, 0
  %2744 = fadd fast float %2708, 1.000000e+00
  %2745 = call float @dx.op.unary.f32(i32 22, float %2679)  ; Frc(value)
  %2746 = call float @dx.op.unary.f32(i32 22, float %2680)  ; Frc(value)
  br i1 %2743, label %2760, label %2747, !dx.controlflow.hints !111

; <label>:2747                                    ; preds = %2741
  %2748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2749 = extractvalue %dx.types.CBufRet.f32 %2748, 0
  %2750 = fmul fast float %2745, %2749
  %2751 = fmul fast float %2746, %2749
  %2752 = fptoui float %2750 to i32
  %2753 = fptoui float %2751 to i32
  %2754 = fptoui float %2744 to i32
  %2755 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %2752, i32 %2753, i32 %2754, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2756 = extractvalue %dx.types.ResRet.f32 %2755, 0
  %2757 = extractvalue %dx.types.ResRet.f32 %2755, 1
  %2758 = extractvalue %dx.types.ResRet.f32 %2755, 2
  %2759 = extractvalue %dx.types.ResRet.f32 %2755, 3
  br label %2766

; <label>:2760                                    ; preds = %2741
  %2761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %49, float %2745, float %2746, float %2744, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2762 = extractvalue %dx.types.ResRet.f32 %2761, 0
  %2763 = extractvalue %dx.types.ResRet.f32 %2761, 1
  %2764 = extractvalue %dx.types.ResRet.f32 %2761, 2
  %2765 = extractvalue %dx.types.ResRet.f32 %2761, 3
  br label %2766

; <label>:2766                                    ; preds = %2760, %2747
  %2767 = phi float [ %2756, %2747 ], [ %2762, %2760 ]
  %2768 = phi float [ %2757, %2747 ], [ %2763, %2760 ]
  %2769 = phi float [ %2758, %2747 ], [ %2764, %2760 ]
  %2770 = phi float [ %2759, %2747 ], [ %2765, %2760 ]
  %2771 = fsub fast float %2767, %2736
  %2772 = fsub fast float %2768, %2737
  %2773 = fsub fast float %2769, %2738
  %2774 = fsub fast float %2770, %2739
  %2775 = fmul fast float %2771, %2709
  %2776 = fmul fast float %2772, %2709
  %2777 = fmul fast float %2773, %2709
  %2778 = fmul fast float %2774, %2709
  %2779 = fadd fast float %2775, %2736
  %2780 = fadd fast float %2776, %2737
  %2781 = fadd fast float %2777, %2738
  %2782 = fadd fast float %2778, %2739
  br label %2811

; <label>:2783                                    ; preds = %2703
  %2784 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %49, float %2711, float %2712, float %2708, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2785 = extractvalue %dx.types.ResRet.f32 %2784, 0
  %2786 = extractvalue %dx.types.ResRet.f32 %2784, 1
  %2787 = extractvalue %dx.types.ResRet.f32 %2784, 2
  %2788 = extractvalue %dx.types.ResRet.f32 %2784, 3
  %2789 = fcmp fast ogt float %2709, 0.000000e+00
  br i1 %2789, label %2790, label %2811, !dx.controlflow.hints !112

; <label>:2790                                    ; preds = %2783
  %2791 = fadd fast float %2708, 1.000000e+00
  %2792 = call float @dx.op.unary.f32(i32 22, float %2679)  ; Frc(value)
  %2793 = call float @dx.op.unary.f32(i32 22, float %2680)  ; Frc(value)
  %2794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %49, float %2792, float %2793, float %2791, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2795 = extractvalue %dx.types.ResRet.f32 %2794, 0
  %2796 = extractvalue %dx.types.ResRet.f32 %2794, 1
  %2797 = extractvalue %dx.types.ResRet.f32 %2794, 2
  %2798 = extractvalue %dx.types.ResRet.f32 %2794, 3
  %2799 = fsub fast float %2795, %2785
  %2800 = fsub fast float %2796, %2786
  %2801 = fsub fast float %2797, %2787
  %2802 = fsub fast float %2798, %2788
  %2803 = fmul fast float %2799, %2709
  %2804 = fmul fast float %2800, %2709
  %2805 = fmul fast float %2801, %2709
  %2806 = fmul fast float %2802, %2709
  %2807 = fadd fast float %2803, %2785
  %2808 = fadd fast float %2804, %2786
  %2809 = fadd fast float %2805, %2787
  %2810 = fadd fast float %2806, %2788
  br label %2811

; <label>:2811                                    ; preds = %2790, %2783, %2766, %2735
  %2812 = phi float [ %2779, %2766 ], [ %2736, %2735 ], [ %2807, %2790 ], [ %2785, %2783 ]
  %2813 = phi float [ %2780, %2766 ], [ %2737, %2735 ], [ %2808, %2790 ], [ %2786, %2783 ]
  %2814 = phi float [ %2781, %2766 ], [ %2738, %2735 ], [ %2809, %2790 ], [ %2787, %2783 ]
  %2815 = phi float [ %2782, %2766 ], [ %2739, %2735 ], [ %2810, %2790 ], [ %2788, %2783 ]
  %2816 = fadd fast float %2812, -5.000000e-01
  %2817 = fadd fast float %2814, -5.000000e-01
  %2818 = fmul fast float %2816, 0xBFD5555560000000
  %2819 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2817, float %2818)  ; FMad(a,b,c)
  %2820 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2813, float 0.000000e+00)  ; FMad(a,b,c)
  %2821 = fadd fast float %2820, %2815
  %2822 = fmul fast float %2816, -7.500000e-01
  %2823 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2817, float %2822)  ; FMad(a,b,c)
  %2824 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2813, float 0.000000e+00)  ; FMad(a,b,c)
  %2825 = fadd fast float %2824, %2815
  %2826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2827 = extractvalue %dx.types.CBufRet.f32 %2826, 0
  %2828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2829 = extractvalue %dx.types.CBufRet.f32 %2828, 0
  %2830 = extractvalue %dx.types.CBufRet.f32 %2828, 1
  %2831 = extractvalue %dx.types.CBufRet.f32 %2828, 2
  %2832 = extractvalue %dx.types.CBufRet.f32 %2828, 3
  %2833 = fsub fast float %2829, %2819
  %2834 = fsub fast float %2830, %2821
  %2835 = fsub fast float %2831, %2823
  %2836 = fsub fast float %2832, %2825
  %2837 = fmul fast float %2833, %2827
  %2838 = fmul fast float %2834, %2827
  %2839 = fmul fast float %2835, %2827
  %2840 = fmul fast float %2836, %2827
  %2841 = fadd fast float %2837, %2819
  %2842 = fadd fast float %2838, %2821
  %2843 = fadd fast float %2839, %2823
  %2844 = fadd fast float %2840, %2825
  %2845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2846 = extractvalue %dx.types.ResRet.i32 %2845, 0
  %2847 = and i32 %2846, 536870911
  %2848 = uitofp i32 %2847 to float
  %2849 = fmul fast float %2848, %2684
  %2850 = fmul fast float %2848, %2685
  %2851 = fptoui float %2849 to i32
  %2852 = fptoui float %2850 to i32
  %2853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2854 = extractvalue %dx.types.ResRet.i32 %2853, 0
  %2855 = and i32 %2854, 31
  %2856 = lshr i32 %2851, %2855
  %2857 = lshr i32 %2852, %2855
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = and i32 %2859, 31
  %2861 = shl i32 1, %2860
  %2862 = call i32 @dx.op.binary.i32(i32 40, i32 %2861, i32 4)  ; UMin(a,b)
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = extractvalue %dx.types.ResRet.i32 %2863, 1
  %2866 = icmp eq i32 %2862, 0
  br i1 %2866, label %2908, label %2867

; <label>:2867                                    ; preds = %2811
  br label %2868

; <label>:2868                                    ; preds = %2896, %2867
  %2869 = phi i32 [ %2899, %2896 ], [ 0, %2867 ]
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = lshr i32 %2871, 16
  %2873 = and i32 %2872, 31
  %2874 = shl i32 %2857, %2873
  %2875 = add i32 %2874, %2856
  %2876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2877 = extractvalue %dx.types.ResRet.i32 %2876, 0
  %2878 = and i32 %2877, 31
  %2879 = shl i32 %2875, %2878
  %2880 = add i32 %2879, %2869
  %2881 = shl i32 %2880, 2
  %2882 = add i32 %2881, 32
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = icmp slt i32 %2884, 0
  %2886 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %2869
  %2887 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %2869
  %2888 = bitcast float* %2886 to i32*
  %2889 = bitcast float* %2887 to i32*
  br i1 %2885, label %2890, label %2896

; <label>:2890                                    ; preds = %2868
  %2891 = and i32 %2884, 1073741823
  %2892 = add nuw nsw i32 %2891, 20
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %2892, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = extractvalue %dx.types.ResRet.i32 %2893, 1
  br label %2896

; <label>:2896                                    ; preds = %2890, %2868
  %2897 = phi i32 [ %2894, %2890 ], [ %2864, %2868 ]
  %2898 = phi i32 [ %2895, %2890 ], [ %2865, %2868 ]
  store i32 %2897, i32* %2888, align 4
  store i32 %2898, i32* %2889, align 4
  %2899 = add nuw i32 %2869, 1
  %2900 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2901 = extractvalue %dx.types.CBufRet.i32 %2900, 2
  %2902 = icmp eq i32 %2901, 0
  %2903 = icmp ugt i32 %2884, -1073741825
  %2904 = and i1 %2903, %2902
  %2905 = icmp ult i32 %2899, %2862
  %2906 = and i1 %2904, %2905
  br i1 %2906, label %2868, label %2907

; <label>:2907                                    ; preds = %2896
  br label %2908

; <label>:2908                                    ; preds = %2907, %2811
  %2909 = phi i32 [ 0, %2811 ], [ %2899, %2907 ]
  %2910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2911 = extractvalue %dx.types.CBufRet.f32 %2910, 2
  %2912 = fptoui float %2911 to i32
  %2913 = icmp eq i32 %2912, 0
  br i1 %2913, label %2965, label %2914

; <label>:2914                                    ; preds = %2908
  br label %2915

; <label>:2915                                    ; preds = %2960, %2914
  %2916 = phi i32 [ %2961, %2960 ], [ %2909, %2914 ]
  %2917 = phi i32 [ %2962, %2960 ], [ 0, %2914 ]
  %2918 = lshr i32 %2917, 2
  %2919 = and i32 %2917, 3
  %2920 = add nuw nsw i32 %2918, 83
  %2921 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %2920)  ; CBufferLoadLegacy(handle,regIndex)
  %2922 = extractvalue %dx.types.CBufRet.i32 %2921, 0
  %2923 = extractvalue %dx.types.CBufRet.i32 %2921, 1
  %2924 = extractvalue %dx.types.CBufRet.i32 %2921, 2
  %2925 = extractvalue %dx.types.CBufRet.i32 %2921, 3
  %2926 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 0
  store i32 %2922, i32* %2926, align 4
  %2927 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 1
  store i32 %2923, i32* %2927, align 4
  %2928 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 2
  store i32 %2924, i32* %2928, align 4
  %2929 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 3
  store i32 %2925, i32* %2929, align 4
  %2930 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 %2919
  %2931 = load i32, i32* %2930, align 4, !tbaa !113, !noalias !115
  %2932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2933 = extractvalue %dx.types.ResRet.i32 %2932, 0
  %2934 = lshr i32 %2933, 16
  %2935 = and i32 %2934, 31
  %2936 = shl i32 %2857, %2935
  %2937 = add i32 %2936, %2856
  %2938 = shl i32 %2937, 2
  %2939 = add i32 %2938, %2931
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = icmp eq i32 %2941, 0
  br i1 %2942, label %2960, label %2943

; <label>:2943                                    ; preds = %2915
  %2944 = icmp slt i32 %2941, 0
  %2945 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %2916
  %2946 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %2916
  %2947 = bitcast float* %2945 to i32*
  %2948 = bitcast float* %2946 to i32*
  br i1 %2944, label %2949, label %2956

; <label>:2949                                    ; preds = %2943
  %2950 = and i32 %2941, 1073741823
  %2951 = add i32 %2931, 20
  %2952 = add i32 %2951, %2950
  %2953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %2952, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.i32 %2953, 0
  %2955 = extractvalue %dx.types.ResRet.i32 %2953, 1
  br label %2956

; <label>:2956                                    ; preds = %2949, %2943
  %2957 = phi i32 [ %2954, %2949 ], [ %2864, %2943 ]
  %2958 = phi i32 [ %2955, %2949 ], [ %2865, %2943 ]
  store i32 %2957, i32* %2947, align 4
  store i32 %2958, i32* %2948, align 4
  %2959 = add i32 %2916, 1
  br label %2960

; <label>:2960                                    ; preds = %2956, %2915
  %2961 = phi i32 [ %2916, %2915 ], [ %2959, %2956 ]
  %2962 = add nuw i32 %2917, 1
  %2963 = icmp eq i32 %2962, %2912
  br i1 %2963, label %2964, label %2915

; <label>:2964                                    ; preds = %2960
  br label %2965

; <label>:2965                                    ; preds = %2964, %2908
  %2966 = phi i32 [ %2909, %2908 ], [ %2961, %2964 ]
  %2967 = icmp eq i32 %2966, 1
  %2968 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 0
  %2969 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 0
  br i1 %2967, label %2970, label %2973

; <label>:2970                                    ; preds = %2965
  %2971 = load float, float* %2968, align 4
  %2972 = load float, float* %2969, align 4
  br label %3000

; <label>:2973                                    ; preds = %2965
  %2974 = load float, float* %2968, align 4
  %2975 = load float, float* %2969, align 4
  %2976 = fdiv fast float 1.000000e+00, %2975
  %2977 = fsub fast float %2974, %2976
  %2978 = icmp ugt i32 %2966, 1
  br i1 %2978, label %2979, label %2995

; <label>:2979                                    ; preds = %2973
  br label %2980

; <label>:2980                                    ; preds = %2980, %2979
  %2981 = phi float [ %2990, %2980 ], [ %2977, %2979 ]
  %2982 = phi float [ %2991, %2980 ], [ %2974, %2979 ]
  %2983 = phi i32 [ %2992, %2980 ], [ 1, %2979 ]
  %2984 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %2983
  %2985 = load float, float* %2984, align 4
  %2986 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %2983
  %2987 = load float, float* %2986, align 4
  %2988 = fdiv fast float 1.000000e+00, %2987
  %2989 = fsub fast float %2985, %2988
  %2990 = call float @dx.op.binary.f32(i32 36, float %2981, float %2989)  ; FMin(a,b)
  %2991 = call float @dx.op.binary.f32(i32 35, float %2982, float %2985)  ; FMax(a,b)
  %2992 = add nuw i32 %2983, 1
  %2993 = icmp eq i32 %2992, %2966
  br i1 %2993, label %2994, label %2980

; <label>:2994                                    ; preds = %2980
  br label %2995

; <label>:2995                                    ; preds = %2994, %2973
  %2996 = phi float [ %2977, %2973 ], [ %2990, %2994 ]
  %2997 = phi float [ %2974, %2973 ], [ %2991, %2994 ]
  %2998 = fsub fast float %2997, %2996
  %2999 = fdiv fast float 1.000000e+00, %2998
  br label %3000

; <label>:3000                                    ; preds = %2995, %2970
  %3001 = phi float [ %2971, %2970 ], [ %2997, %2995 ]
  %3002 = phi float [ %2972, %2970 ], [ %2999, %2995 ]
  %3003 = fadd fast float %2431, %3001
  %3004 = fmul fast float %3003, %3002
  %3005 = call float @dx.op.unary.f32(i32 7, float %3004)  ; Saturate(value)
  %3006 = fmul fast float %3005, 2.000000e+00
  %3007 = fsub fast float 1.000000e+00, %3006
  %3008 = fmul fast float %2841, %2841
  %3009 = fsub fast float %2842, %3008
  %3010 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3009)  ; FMax(a,b)
  %3011 = fdiv fast float 1.000000e+00, %3010
  %3012 = fmul fast float %2842, %2841
  %3013 = fsub fast float %2843, %3012
  %3014 = fsub fast float %3007, %2841
  %3015 = fmul fast float %3007, %3007
  %3016 = fsub fast float %3015, %2842
  %3017 = fmul fast float %3011, %3013
  %3018 = fmul fast float %3017, %3014
  %3019 = fsub fast float %3016, %3018
  %3020 = fmul fast float %2842, %2842
  %3021 = fsub fast float %2844, %3020
  %3022 = fmul fast float %3013, %3013
  %3023 = fmul fast float %3022, %3011
  %3024 = fsub fast float %3021, %3023
  %3025 = fdiv fast float %3019, %3024
  %3026 = fmul fast float %3025, %3013
  %3027 = fsub fast float %3014, %3026
  %3028 = fmul fast float %3027, %3011
  %3029 = fmul fast float %3028, %2841
  %3030 = fsub fast float 1.000000e+00, %3029
  %3031 = fmul fast float %3025, %2842
  %3032 = fsub fast float %3030, %3031
  %3033 = fmul fast float %3028, %3028
  %3034 = fmul fast float %3025, 4.000000e+00
  %3035 = fmul fast float %3034, %3032
  %3036 = fsub fast float %3033, %3035
  %3037 = call float @dx.op.unary.f32(i32 24, float %3036)  ; Sqrt(value)
  %3038 = fcmp fast oge float %3028, 0.000000e+00
  %3039 = fsub fast float -0.000000e+00, %3037
  %3040 = select i1 %3038, float %3039, float %3037
  %3041 = fsub fast float %3040, %3028
  %3042 = fdiv fast float %3041, %3025
  %3043 = fdiv fast float %3032, %3041
  %3044 = fmul fast float %3042, 5.000000e-01
  %3045 = fmul fast float %3043, 2.000000e+00
  %3046 = select i1 %3038, float %3044, float %3045
  %3047 = select i1 %3038, float %3045, float %3044
  %3048 = call float @dx.op.binary.f32(i32 35, float %3046, float %3047)  ; FMax(a,b)
  %3049 = call float @dx.op.binary.f32(i32 36, float %3046, float %3047)  ; FMin(a,b)
  %3050 = fcmp fast ogt float %3007, %3048
  %3051 = fsub fast float %3007, %3049
  %3052 = fsub fast float %3007, %3048
  %3053 = fsub fast float %3048, %3049
  %3054 = select i1 %3050, float %3052, float %3053
  %3055 = fmul float %3051, %3054
  %3056 = select i1 %3050, float %3049, float %3007
  %3057 = fcmp fast ogt float %3007, %3049
  %3058 = fmul fast float %3056, %3048
  %3059 = fadd fast float %3056, %3048
  %3060 = fmul fast float %3059, %2841
  %3061 = fadd fast float %3058, %2842
  %3062 = fsub fast float %3061, %3060
  %3063 = fdiv fast float %3062, %3055
  %3064 = select i1 %3057, float %3063, float 0.000000e+00
  %3065 = fsub fast float 1.000000e+00, %3064
  %3066 = select i1 %3050, float %3065, float %3064
  %3067 = call float @dx.op.unary.f32(i32 7, float %3066)  ; Saturate(value)
  %3068 = extractvalue %dx.types.CBufRet.f32 %2826, 3
  %3069 = fmul fast float %3068, %3067
  %3070 = fsub fast float 1.000000e+00, %3069
  br label %3071

; <label>:3071                                    ; preds = %3000, %2678, %2404, %2400, %2364
  %3072 = phi float [ 1.000000e+00, %2364 ], [ %3070, %3000 ], [ 1.000000e+00, %2404 ], [ 1.000000e+00, %2678 ], [ 1.000000e+00, %2400 ]
  %3073 = fcmp fast ogt float %2396, 0.000000e+00
  br i1 %3073, label %3074, label %3082, !dx.controlflow.hints !124

; <label>:3074                                    ; preds = %3071
  %3075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3076 = extractvalue %dx.types.CBufRet.f32 %3075, 2
  %3077 = fadd fast float %3076, %2279
  %3078 = call float @dx.op.binary.f32(i32 35, float %3077, float 0.000000e+00)  ; FMax(a,b)
  %3079 = fadd fast float %3078, 0x3F10000000000000
  %3080 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %52, float %2294, float %2295, float undef, float undef, i32 0, i32 0, i32 undef, float %3079)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3081 = extractvalue %dx.types.ResRet.f32 %3080, 0
  br label %3082

; <label>:3082                                    ; preds = %3074, %3071
  %3083 = phi float [ %3081, %3074 ], [ 1.000000e+00, %3071 ]
  %3084 = fcmp fast ogt float %2394, 0.000000e+00
  br i1 %3084, label %3085, label %3093, !dx.controlflow.hints !125

; <label>:3085                                    ; preds = %3082
  %3086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3087 = extractvalue %dx.types.CBufRet.f32 %3086, 1
  %3088 = fadd fast float %3087, %2279
  %3089 = call float @dx.op.binary.f32(i32 35, float %3088, float 0.000000e+00)  ; FMax(a,b)
  %3090 = fadd fast float %3089, 0x3F10000000000000
  %3091 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %2286, float %2287, float undef, float undef, i32 0, i32 0, i32 undef, float %3090)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3092 = extractvalue %dx.types.ResRet.f32 %3091, 0
  br label %3093

; <label>:3093                                    ; preds = %3085, %3082
  %3094 = phi float [ %3092, %3085 ], [ 1.000000e+00, %3082 ]
  %3095 = fcmp fast ogt float %2393, 0.000000e+00
  br i1 %3095, label %3096, label %3104, !dx.controlflow.hints !126

; <label>:3096                                    ; preds = %3093
  %3097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3098 = extractvalue %dx.types.CBufRet.f32 %3097, 0
  %3099 = fadd fast float %3098, %2279
  %3100 = call float @dx.op.binary.f32(i32 35, float %3099, float 0.000000e+00)  ; FMax(a,b)
  %3101 = fadd fast float %3100, 0x3F10000000000000
  %3102 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %2271, float %2275, float undef, float undef, i32 0, i32 0, i32 undef, float %3101)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3103 = extractvalue %dx.types.ResRet.f32 %3102, 0
  br label %3104

; <label>:3104                                    ; preds = %3096, %3093
  %3105 = phi float [ %3103, %3096 ], [ 1.000000e+00, %3093 ]
  %3106 = fsub fast float %3083, %3072
  %3107 = fmul fast float %3106, %2334
  %3108 = fadd fast float %3107, %3072
  %3109 = fsub fast float %3094, %3108
  %3110 = fmul fast float %3109, %2365
  %3111 = fadd fast float %3110, %3108
  %3112 = fsub fast float %3105, %3111
  %3113 = fmul fast float %3112, %2393
  %3114 = fadd fast float %3113, %3111
  %3115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3116 = extractvalue %dx.types.CBufRet.f32 %3115, 2
  %3117 = fcmp fast ogt float %3116, 0.000000e+00
  br i1 %3117, label %3118, label %3158, !dx.controlflow.hints !127

; <label>:3118                                    ; preds = %3104
  %3119 = fcmp fast ugt float %3116, 0.000000e+00
  br i1 %3119, label %3120, label %3155

; <label>:3120                                    ; preds = %3118
  %3121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3122 = extractvalue %dx.types.CBufRet.f32 %3121, 0
  %3123 = extractvalue %dx.types.CBufRet.f32 %3121, 1
  %3124 = extractvalue %dx.types.CBufRet.f32 %3121, 2
  %3125 = extractvalue %dx.types.CBufRet.f32 %3121, 3
  %3126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3127 = extractvalue %dx.types.CBufRet.f32 %3126, 0
  %3128 = extractvalue %dx.types.CBufRet.f32 %3126, 1
  %3129 = extractvalue %dx.types.CBufRet.f32 %3126, 2
  %3130 = extractvalue %dx.types.CBufRet.f32 %3126, 3
  %3131 = extractvalue %dx.types.CBufRet.f32 %3115, 0
  %3132 = extractvalue %dx.types.CBufRet.f32 %3115, 1
  %3133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3134 = extractvalue %dx.types.CBufRet.f32 %3133, 0
  %3135 = extractvalue %dx.types.CBufRet.f32 %3133, 1
  %3136 = extractvalue %dx.types.CBufRet.f32 %3133, 2
  %3137 = fadd fast float %3134, %132
  %3138 = fadd fast float %3135, %133
  %3139 = fadd fast float %3136, %134
  %3140 = fmul fast float %3137, %3122
  %3141 = call float @dx.op.tertiary.f32(i32 46, float %3123, float %3138, float %3140)  ; FMad(a,b,c)
  %3142 = call float @dx.op.tertiary.f32(i32 46, float %3124, float %3139, float %3141)  ; FMad(a,b,c)
  %3143 = fadd fast float %3142, %3125
  %3144 = fmul fast float %3137, %3127
  %3145 = call float @dx.op.tertiary.f32(i32 46, float %3128, float %3138, float %3144)  ; FMad(a,b,c)
  %3146 = call float @dx.op.tertiary.f32(i32 46, float %3129, float %3139, float %3145)  ; FMad(a,b,c)
  %3147 = fadd fast float %3146, %3130
  %3148 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %12, %dx.types.Handle %47, float %3143, float %3147, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3149 = extractvalue %dx.types.ResRet.f32 %3148, 0
  %3150 = fmul fast float %3149, %3132
  %3151 = fadd fast float %3150, %3131
  %3152 = call float @dx.op.unary.f32(i32 7, float %3151)  ; Saturate(value)
  %3153 = fmul fast float %3152, %3116
  %3154 = fsub fast float 1.000000e+00, %3153
  br label %3155

; <label>:3155                                    ; preds = %3120, %3118
  %3156 = phi float [ %3154, %3120 ], [ 1.000000e+00, %3118 ]
  %3157 = fmul fast float %3156, %3114
  br label %3158

; <label>:3158                                    ; preds = %3155, %3104, %2236
  %3159 = phi float [ 1.000000e+00, %2236 ], [ %3157, %3155 ], [ %3114, %3104 ]
  %3160 = call float @dx.op.binary.f32(i32 36, float %3159, float %3159)  ; FMin(a,b)
  %3161 = call float @dx.op.binary.f32(i32 36, float %3159, float %3160)  ; FMin(a,b)
  %3162 = fcmp fast ogt float %3161, 0.000000e+00
  br i1 %3162, label %3163, label %3328, !dx.controlflow.hints !128

; <label>:3163                                    ; preds = %3158
  %3164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3165 = extractvalue %dx.types.CBufRet.f32 %3164, 0
  %3166 = extractvalue %dx.types.CBufRet.f32 %3164, 1
  %3167 = extractvalue %dx.types.CBufRet.f32 %3164, 2
  %3168 = extractvalue %dx.types.CBufRet.f32 %3164, 3
  %3169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3170 = extractvalue %dx.types.CBufRet.f32 %3169, 0
  %3171 = extractvalue %dx.types.CBufRet.f32 %3169, 1
  %3172 = extractvalue %dx.types.CBufRet.f32 %3169, 2
  %3173 = extractvalue %dx.types.CBufRet.f32 %3169, 3
  %3174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3175 = extractvalue %dx.types.CBufRet.f32 %3174, 0
  %3176 = extractvalue %dx.types.CBufRet.f32 %3174, 1
  %3177 = extractvalue %dx.types.CBufRet.f32 %3174, 2
  %3178 = extractvalue %dx.types.CBufRet.f32 %3174, 3
  %3179 = fmul fast float %3165, %132
  %3180 = call float @dx.op.tertiary.f32(i32 46, float %133, float %3166, float %3179)  ; FMad(a,b,c)
  %3181 = call float @dx.op.tertiary.f32(i32 46, float %134, float %3167, float %3180)  ; FMad(a,b,c)
  %3182 = fadd fast float %3181, %3168
  %3183 = fmul fast float %3170, %132
  %3184 = call float @dx.op.tertiary.f32(i32 46, float %133, float %3171, float %3183)  ; FMad(a,b,c)
  %3185 = call float @dx.op.tertiary.f32(i32 46, float %134, float %3172, float %3184)  ; FMad(a,b,c)
  %3186 = fadd fast float %3185, %3173
  %3187 = fmul fast float %3175, %132
  %3188 = call float @dx.op.tertiary.f32(i32 46, float %133, float %3176, float %3187)  ; FMad(a,b,c)
  %3189 = call float @dx.op.tertiary.f32(i32 46, float %134, float %3177, float %3188)  ; FMad(a,b,c)
  %3190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3191 = extractvalue %dx.types.CBufRet.f32 %3190, 0
  %3192 = extractvalue %dx.types.CBufRet.f32 %3190, 1
  %3193 = extractvalue %dx.types.CBufRet.f32 %3190, 3
  %3194 = fmul fast float %3193, %3182
  %3195 = fmul fast float %3193, %3186
  %3196 = fadd fast float %3194, %3191
  %3197 = fadd fast float %3195, %3192
  %3198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3199 = extractvalue %dx.types.CBufRet.f32 %3198, 0
  %3200 = extractvalue %dx.types.CBufRet.f32 %3198, 1
  %3201 = fsub fast float %3196, %3199
  %3202 = fsub fast float %3197, %3200
  %3203 = fcmp fast olt float %3201, 0.000000e+00
  %3204 = fcmp fast olt float %3202, 0.000000e+00
  %3205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3206 = extractvalue %dx.types.CBufRet.f32 %3205, 0
  %3207 = extractvalue %dx.types.CBufRet.f32 %3205, 1
  %3208 = extractvalue %dx.types.CBufRet.f32 %3205, 2
  %3209 = extractvalue %dx.types.CBufRet.f32 %3205, 3
  %3210 = select i1 %3203, float %3206, float %3208
  %3211 = select i1 %3204, float %3207, float %3209
  %3212 = fmul fast float %3210, %3201
  %3213 = fmul fast float %3211, %3202
  %3214 = call float @dx.op.unary.f32(i32 6, float %3212)  ; FAbs(value)
  %3215 = call float @dx.op.unary.f32(i32 6, float %3213)  ; FAbs(value)
  %3216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3217 = extractvalue %dx.types.CBufRet.f32 %3216, 0
  %3218 = call float @dx.op.binary.f32(i32 35, float %3214, float %3215)  ; FMax(a,b)
  %3219 = fsub fast float %3217, %3218
  %3220 = call float @dx.op.unary.f32(i32 7, float %3219)  ; Saturate(value)
  %3221 = fcmp fast ogt float %3220, 0.000000e+00
  br i1 %3221, label %3222, label %3263, !dx.controlflow.hints !129

; <label>:3222                                    ; preds = %3163
  %3223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %3196, float %3197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3224 = extractvalue %dx.types.ResRet.f32 %3223, 1
  %3225 = fcmp fast ogt float %3224, 0.000000e+00
  br i1 %3225, label %3226, label %3258

; <label>:3226                                    ; preds = %3222
  %3227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %3196, float %3197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3228 = extractvalue %dx.types.ResRet.f32 %3227, 0
  %3229 = extractvalue %dx.types.ResRet.f32 %3227, 1
  %3230 = extractvalue %dx.types.ResRet.f32 %3227, 2
  %3231 = extractvalue %dx.types.ResRet.f32 %3227, 3
  %3232 = fsub fast float 1.000000e+00, %3178
  %3233 = fsub fast float %3232, %3189
  %3234 = fmul fast float %3233, 0x400921FB60000000
  %3235 = fadd fast float %3234, 0x3FF921FB60000000
  %3236 = call float @dx.op.unary.f32(i32 13, float %3235)  ; Sin(value)
  %3237 = fadd fast float %3236, -1.000000e+00
  %3238 = fmul fast float %3237, 0x3FD45F3060000000
  %3239 = fmul fast float %3233, 0x401921FB60000000
  %3240 = fadd fast float %3239, 0x400921FB60000000
  %3241 = call float @dx.op.unary.f32(i32 13, float %3240)  ; Sin(value)
  %3242 = fadd fast float %3241, 0x3E7777A5C0000000
  %3243 = fmul fast float %3242, 0x3FC45F3060000000
  %3244 = fmul fast float %3233, 0x4022D97C80000000
  %3245 = fadd fast float %3244, 0x4012D97C80000000
  %3246 = call float @dx.op.unary.f32(i32 13, float %3245)  ; Sin(value)
  %3247 = fadd fast float %3246, 1.000000e+00
  %3248 = fmul fast float %3247, 0x3FBB2995E0000000
  %3249 = fmul fast float %3233, 0x402921FB60000000
  %3250 = fadd fast float %3249, 0x401921FB60000000
  %3251 = call float @dx.op.unary.f32(i32 13, float %3250)  ; Sin(value)
  %3252 = fadd fast float %3251, 0xBE8777A5C0000000
  %3253 = fmul fast float %3252, 0x3FB45F3060000000
  %3254 = call float @dx.op.dot4.f32(i32 56, float %3228, float %3229, float %3230, float %3231, float %3238, float %3243, float %3248, float %3253)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3255 = fmul fast float %3254, 0xBFF7154760000000
  %3256 = call float @dx.op.unary.f32(i32 21, float %3255)  ; Exp(value)
  %3257 = call float @dx.op.unary.f32(i32 7, float %3256)  ; Saturate(value)
  br label %3258

; <label>:3258                                    ; preds = %3226, %3222
  %3259 = phi float [ %3257, %3226 ], [ 1.000000e+00, %3222 ]
  %3260 = fadd fast float %3259, -1.000000e+00
  %3261 = fmul fast float %3260, %3220
  %3262 = fadd fast float %3261, 1.000000e+00
  br label %3263

; <label>:3263                                    ; preds = %3258, %3163
  %3264 = phi float [ %3262, %3258 ], [ 1.000000e+00, %3163 ]
  %3265 = fmul fast float %3264, %3159
  %3266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3267 = extractvalue %dx.types.CBufRet.f32 %3266, 0
  %3268 = extractvalue %dx.types.CBufRet.f32 %3266, 1
  %3269 = extractvalue %dx.types.CBufRet.f32 %3266, 2
  %3270 = fadd fast float %3267, %132
  %3271 = fadd fast float %3268, %133
  %3272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3273 = extractvalue %dx.types.CBufRet.f32 %3272, 1
  %3274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3275 = extractvalue %dx.types.CBufRet.f32 %3274, 0
  %3276 = extractvalue %dx.types.CBufRet.f32 %3274, 1
  %3277 = extractvalue %dx.types.CBufRet.f32 %3274, 2
  %3278 = fsub fast float -0.000000e+00, %3270
  %3279 = fsub fast float -0.000000e+00, %3271
  %3280 = fsub fast float %1387, %3269
  %3281 = fadd fast float %3280, %3273
  %3282 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3278, float %3279, float %3281)  ; Dot3(ax,ay,az,bx,by,bz)
  %3283 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3275, float %3276, float %3277)  ; Dot3(ax,ay,az,bx,by,bz)
  %3284 = fdiv fast float 1.000000e+00, %3283
  %3285 = fmul fast float %3284, %3282
  %3286 = fmul fast float %3275, %3285
  %3287 = fmul fast float %3276, %3285
  %3288 = fadd fast float %3286, %3270
  %3289 = fadd fast float %3287, %3271
  %3290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3291 = extractvalue %dx.types.CBufRet.f32 %3290, 0
  %3292 = extractvalue %dx.types.CBufRet.f32 %3290, 1
  %3293 = fsub fast float %3288, %3291
  %3294 = fsub fast float %3289, %3292
  %3295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3296 = extractvalue %dx.types.CBufRet.f32 %3295, 2
  %3297 = extractvalue %dx.types.CBufRet.f32 %3295, 3
  %3298 = fmul fast float %3293, %3296
  %3299 = fmul fast float %3294, %3297
  %3300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3301 = extractvalue %dx.types.CBufRet.i32 %3300, 3
  %3302 = icmp eq i32 %3301, 0
  br i1 %3302, label %3308, label %3303

; <label>:3303                                    ; preds = %3263
  %3304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %49, float %3298, float %3299, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3305 = extractvalue %dx.types.ResRet.f32 %3304, 0
  %3306 = extractvalue %dx.types.ResRet.f32 %3304, 1
  %3307 = extractvalue %dx.types.ResRet.f32 %3304, 2
  br label %3313

; <label>:3308                                    ; preds = %3263
  %3309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %50, float %3298, float %3299, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3310 = extractvalue %dx.types.ResRet.f32 %3309, 0
  %3311 = extractvalue %dx.types.ResRet.f32 %3309, 1
  %3312 = extractvalue %dx.types.ResRet.f32 %3309, 2
  br label %3313

; <label>:3313                                    ; preds = %3308, %3303
  %3314 = phi float [ %3305, %3303 ], [ %3310, %3308 ]
  %3315 = phi float [ %3306, %3303 ], [ %3311, %3308 ]
  %3316 = phi float [ %3307, %3303 ], [ %3312, %3308 ]
  %3317 = extractvalue %dx.types.CBufRet.f32 %3272, 2
  %3318 = fmul fast float %3317, %3314
  %3319 = extractvalue %dx.types.CBufRet.f32 %3272, 0
  %3320 = fsub fast float %3285, %3319
  %3321 = fsub fast float %3320, %3318
  %3322 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3321)  ; FMax(a,b)
  %3323 = fmul fast float %3322, %3315
  %3324 = call float @dx.op.binary.f32(i32 36, float %3316, float %3323)  ; FMin(a,b)
  %3325 = fmul fast float %3324, 0xBFF7154760000000
  %3326 = call float @dx.op.unary.f32(i32 21, float %3325)  ; Exp(value)
  %3327 = fmul fast float %3265, %3326
  br label %3328

; <label>:3328                                    ; preds = %3313, %3158
  %3329 = phi float [ %3327, %3313 ], [ %3159, %3158 ]
  %3330 = call float @dx.op.binary.f32(i32 36, float %3329, float %3329)  ; FMin(a,b)
  %3331 = call float @dx.op.binary.f32(i32 36, float %3329, float %3330)  ; FMin(a,b)
  %3332 = fcmp fast ogt float %3331, 0.000000e+00
  br i1 %3332, label %3333, label %3499, !dx.controlflow.hints !130

; <label>:3333                                    ; preds = %3328
  %3334 = fmul fast float %3329, %2248
  %3335 = fmul fast float %3329, %2249
  %3336 = fmul fast float %3329, %2250
  %3337 = fsub fast float %2237, %1291
  %3338 = fsub fast float %2238, %1292
  %3339 = fsub fast float %2239, %1293
  %3340 = call float @dx.op.dot3.f32(i32 55, float %3337, float %3338, float %3339, float %3337, float %3338, float %3339)  ; Dot3(ax,ay,az,bx,by,bz)
  %3341 = call float @dx.op.unary.f32(i32 25, float %3340)  ; Rsqrt(value)
  %3342 = fmul fast float %3341, %3337
  %3343 = fmul fast float %3341, %3338
  %3344 = fmul fast float %3341, %3339
  %3345 = call float @dx.op.dot3.f32(i32 55, float %2237, float %2238, float %2239, float %1263, float %1264, float %1265)  ; Dot3(ax,ay,az,bx,by,bz)
  %3346 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float %3342, float %3343, float %3344)  ; Dot3(ax,ay,az,bx,by,bz)
  %3347 = call float @dx.op.unary.f32(i32 7, float %3345)  ; Saturate(value)
  %3348 = fmul fast float %3347, %3347
  %3349 = fmul fast float %3348, %1405
  %3350 = call float @dx.op.unary.f32(i32 7, float %3349)  ; Saturate(value)
  %3351 = fmul fast float %3350, %3347
  %3352 = call float @dx.op.dot3.f32(i32 55, float %1263, float %1264, float %1265, float %3342, float %3343, float %3344)  ; Dot3(ax,ay,az,bx,by,bz)
  %3353 = fmul fast float %3352, %3352
  %3354 = call float @dx.op.unary.f32(i32 6, float %3345)  ; FAbs(value)
  %3355 = fsub fast float 1.000000e+00, %1346
  %3356 = call float @dx.op.binary.f32(i32 35, float %3355, float 0x3F847AE140000000)  ; FMax(a,b)
  %3357 = fmul fast float %3356, %3356
  %3358 = fmul fast float %3357, %3357
  %3359 = fsub fast float 1.000000e+00, %3358
  %3360 = fmul fast float %1393, %1393
  %3361 = fmul fast float %3360, %3359
  %3362 = fadd fast float %3361, %3358
  %3363 = bitcast float %3362 to i32
  %3364 = ashr i32 %3363, 1
  %3365 = add nsw i32 %3364, 532487669
  %3366 = bitcast i32 %3365 to float
  %3367 = fadd fast float %3366, %1393
  %3368 = fmul fast float %3358, %3353
  %3369 = fsub fast float 1.000000e+00, %3353
  %3370 = fadd fast float %3369, %3368
  %3371 = fmul fast float %3354, %3354
  %3372 = fmul fast float %3371, %3359
  %3373 = fadd fast float %3372, %3358
  %3374 = bitcast float %3373 to i32
  %3375 = ashr i32 %3374, 1
  %3376 = add nsw i32 %3375, 532487669
  %3377 = bitcast i32 %3376 to float
  %3378 = fadd fast float %3377, %3354
  %3379 = fmul fast float %3370, %3370
  %3380 = fmul fast float %3379, %3367
  %3381 = fmul fast float %3380, %3378
  %3382 = fdiv fast float 0x3FF0A00000000000, %3381
  %3383 = fmul fast float %3382, %3358
  %3384 = call float @dx.op.unary.f32(i32 6, float %3346)  ; FAbs(value)
  %3385 = fsub fast float 1.000000e+00, %3384
  %3386 = bitcast float %3385 to i32
  %3387 = sitofp i32 %3386 to float
  %3388 = fmul fast float %3387, 5.000000e+00
  %3389 = fadd fast float %3388, 0xC1EFBF8940000000
  %3390 = fptosi float %3389 to i32
  %3391 = bitcast i32 %3390 to float
  %3392 = fmul fast float %3391, %2218
  %3393 = fmul fast float %3391, %2219
  %3394 = fmul fast float %3391, %2220
  %3395 = fadd fast float %3392, %1284
  %3396 = fadd fast float %3393, %1285
  %3397 = fadd fast float %3394, %1391
  %3398 = fmul fast float %3345, 9.843750e-01
  %3399 = fmul fast float %1346, 9.843750e-01
  %3400 = fadd fast float %3398, 7.812500e-03
  %3401 = fadd fast float %3399, 7.812500e-03
  %3402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %3400, float %3401, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3403 = extractvalue %dx.types.ResRet.f32 %3402, 2
  %3404 = extractvalue %dx.types.ResRet.f32 %3402, 3
  %3405 = fmul fast float %3403, %1284
  %3406 = fmul fast float %3403, %1285
  %3407 = fmul fast float %3403, %1391
  %3408 = fadd fast float %3405, %3404
  %3409 = fadd fast float %3406, %3404
  %3410 = fadd fast float %3407, %3404
  %3411 = call float @dx.op.binary.f32(i32 35, float %3409, float %3410)  ; FMax(a,b)
  %3412 = call float @dx.op.binary.f32(i32 35, float %3408, float %3411)  ; FMax(a,b)
  %3413 = fsub fast float 1.000000e+00, %3412
  %3414 = fsub fast float -0.000000e+00, %1263
  %3415 = fsub fast float -0.000000e+00, %1264
  %3416 = fsub fast float -0.000000e+00, %1265
  %3417 = call float @dx.op.dot3.f32(i32 55, float %2237, float %2238, float %2239, float %3414, float %3415, float %3416)  ; Dot3(ax,ay,az,bx,by,bz)
  %3418 = call float @dx.op.unary.f32(i32 7, float %3417)  ; Saturate(value)
  %3419 = fmul fast float %3418, 9.843750e-01
  %3420 = fadd fast float %3419, 7.812500e-03
  %3421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %3420, float %3401, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3422 = extractvalue %dx.types.ResRet.f32 %3421, 2
  %3423 = extractvalue %dx.types.ResRet.f32 %3421, 3
  %3424 = fmul fast float %3422, %1284
  %3425 = fmul fast float %3422, %1285
  %3426 = fmul fast float %3422, %1391
  %3427 = fadd fast float %3424, %3423
  %3428 = fadd fast float %3425, %3423
  %3429 = fadd fast float %3426, %3423
  %3430 = call float @dx.op.binary.f32(i32 35, float %3428, float %3429)  ; FMax(a,b)
  %3431 = call float @dx.op.binary.f32(i32 35, float %3427, float %3430)  ; FMax(a,b)
  %3432 = fsub fast float 1.000000e+00, %3431
  %3433 = fmul fast float %1285, 0x4012D0A400000000
  %3434 = fadd fast float %3433, 0x3FDB6377A0000000
  %3435 = fmul fast float %3355, %3434
  %3436 = call float @dx.op.unary.f32(i32 7, float %3435)  ; Saturate(value)
  %3437 = fsub fast float %2237, %1398
  %3438 = fsub fast float %2238, %1399
  %3439 = fsub fast float %2239, %1400
  %3440 = call float @dx.op.dot3.f32(i32 55, float %3437, float %3438, float %3439, float %3437, float %3438, float %3439)  ; Dot3(ax,ay,az,bx,by,bz)
  %3441 = call float @dx.op.unary.f32(i32 25, float %3440)  ; Rsqrt(value)
  %3442 = fmul fast float %3441, %3437
  %3443 = fmul fast float %3441, %3438
  %3444 = fmul fast float %3441, %3439
  %3445 = call float @dx.op.dot3.f32(i32 55, float %3414, float %3415, float %3416, float %3442, float %3443, float %3444)  ; Dot3(ax,ay,az,bx,by,bz)
  %3446 = fmul fast float %3445, %3445
  %3447 = call float @dx.op.unary.f32(i32 6, float %3418)  ; FAbs(value)
  %3448 = call float @dx.op.binary.f32(i32 35, float %3436, float 0x3F847AE140000000)  ; FMax(a,b)
  %3449 = fmul fast float %3448, %3448
  %3450 = fmul fast float %3449, %3449
  %3451 = fsub fast float 1.000000e+00, %3450
  %3452 = fmul fast float %3360, %3451
  %3453 = fadd fast float %3452, %3450
  %3454 = bitcast float %3453 to i32
  %3455 = ashr i32 %3454, 1
  %3456 = add nsw i32 %3455, 532487669
  %3457 = bitcast i32 %3456 to float
  %3458 = fadd fast float %3457, %1393
  %3459 = fmul fast float %3450, %3446
  %3460 = fsub fast float 1.000000e+00, %3446
  %3461 = fadd fast float %3460, %3459
  %3462 = fmul fast float %3447, %3447
  %3463 = fmul fast float %3462, %3451
  %3464 = fadd fast float %3463, %3450
  %3465 = bitcast float %3464 to i32
  %3466 = ashr i32 %3465, 1
  %3467 = add nsw i32 %3466, 532487669
  %3468 = bitcast i32 %3467 to float
  %3469 = fadd fast float %3468, %3447
  %3470 = fmul fast float %3461, %3461
  %3471 = fmul fast float %3470, %3458
  %3472 = fmul fast float %3471, %3469
  %3473 = fdiv fast float 0x3FF0A00000000000, %3472
  %3474 = fmul fast float %3473, %3450
  %3475 = fmul fast float %3432, %3418
  %3476 = fmul fast float %3475, %3474
  %3477 = fmul fast float %3383, %3351
  %3478 = fmul fast float %3477, %3395
  %3479 = fmul fast float %3477, %3396
  %3480 = fmul fast float %3477, %3397
  %3481 = fadd fast float %3476, %3478
  %3482 = fadd fast float %3476, %3479
  %3483 = fadd fast float %3476, %3480
  %3484 = fmul fast float %3351, %3334
  %3485 = fmul fast float %3484, %3413
  %3486 = fmul fast float %3351, %3335
  %3487 = fmul fast float %3486, %3413
  %3488 = fmul fast float %3351, %3336
  %3489 = fmul fast float %3488, %3413
  %3490 = fadd fast float %3485, %2230
  %3491 = fadd fast float %3487, %2231
  %3492 = fadd fast float %3489, %2232
  %3493 = fmul fast float %3481, %3334
  %3494 = fmul fast float %3482, %3335
  %3495 = fmul fast float %3483, %3336
  %3496 = fadd fast float %3493, %1227
  %3497 = fadd fast float %3494, %1228
  %3498 = fadd fast float %3495, %1229
  br label %3499

; <label>:3499                                    ; preds = %3333, %3328, %2168
  %3500 = phi float [ %3329, %3333 ], [ 0.000000e+00, %2168 ], [ 0.000000e+00, %3328 ]
  %3501 = phi float [ %3496, %3333 ], [ %1227, %2168 ], [ %1227, %3328 ]
  %3502 = phi float [ %3497, %3333 ], [ %1228, %2168 ], [ %1228, %3328 ]
  %3503 = phi float [ %3498, %3333 ], [ %1229, %2168 ], [ %1229, %3328 ]
  %3504 = phi float [ %3490, %3333 ], [ %2230, %2168 ], [ %2230, %3328 ]
  %3505 = phi float [ %3491, %3333 ], [ %2231, %2168 ], [ %2231, %3328 ]
  %3506 = phi float [ %3492, %3333 ], [ %2232, %2168 ], [ %2232, %3328 ]
  %3507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3508 = extractvalue %dx.types.CBufRet.i32 %3507, 0
  %3509 = icmp eq i32 %3508, 0
  br i1 %3509, label %4104, label %3510

; <label>:3510                                    ; preds = %3499
  %3511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3512 = extractvalue %dx.types.CBufRet.f32 %3511, 2
  %3513 = extractvalue %dx.types.CBufRet.f32 %3511, 3
  %3514 = fmul fast float %3512, %77
  %3515 = fmul fast float %3513, %78
  %3516 = fptoui float %3514 to i32
  %3517 = fptoui float %3515 to i32
  %3518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3519 = extractvalue %dx.types.CBufRet.f32 %3518, 0
  %3520 = extractvalue %dx.types.CBufRet.f32 %3518, 2
  %3521 = extractvalue %dx.types.CBufRet.f32 %3518, 3
  %3522 = fadd fast float %70, -4.000000e+00
  %3523 = call float @dx.op.binary.f32(i32 35, float %3522, float 0.000000e+00)  ; FMax(a,b)
  %3524 = fadd fast float %3523, %3519
  %3525 = fmul fast float %3524, %3520
  %3526 = call float @dx.op.unary.f32(i32 23, float %3525)  ; Log(value)
  %3527 = fmul fast float %3526, %3521
  %3528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3529 = extractvalue %dx.types.CBufRet.f32 %3528, 2
  %3530 = fmul fast float %3527, %3529
  %3531 = call float @dx.op.unary.f32(i32 7, float %3530)  ; Saturate(value)
  %3532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3533 = extractvalue %dx.types.CBufRet.i32 %3532, 1
  %3534 = add i32 %3533, -1
  %3535 = uitofp i32 %3533 to float
  %3536 = fmul fast float %3535, %3531
  %3537 = fptoui float %3536 to i32
  %3538 = call i32 @dx.op.binary.i32(i32 40, i32 %3537, i32 %3534)  ; UMin(a,b)
  %3539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3540 = extractvalue %dx.types.CBufRet.i32 %3539, 2
  %3541 = extractvalue %dx.types.CBufRet.i32 %3539, 3
  %3542 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3517, i32 %3540, i32 %3516)  ; UMad(a,b,c)
  %3543 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3538, i32 %3541, i32 %3542)  ; UMad(a,b,c)
  %3544 = add nsw i32 %3508, -1
  %3545 = call i32 @dx.op.binary.i32(i32 37, i32 %3544, i32 0)  ; IMax(a,b)
  %3546 = call float @dx.op.binary.f32(i32 35, float %70, float 0.000000e+00)  ; FMax(a,b)
  %3547 = fptoui float %3546 to i32
  %3548 = lshr i32 %3547, 5
  %3549 = call i32 @dx.op.binary.i32(i32 40, i32 %3548, i32 8191)  ; UMin(a,b)
  %3550 = shl i32 %3549, 2
  %3551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3550, i32 undef)  ; BufferLoad(srv,index,wot)
  %3552 = extractvalue %dx.types.ResRet.i32 %3551, 0
  %3553 = lshr i32 %3552, 16
  %3554 = and i32 %3552, 65535
  %3555 = lshr i32 %3552, 21
  %3556 = lshr i32 %3554, 5
  %3557 = call i32 @dx.op.binary.i32(i32 40, i32 %3556, i32 %3545)  ; UMin(a,b)
  %3558 = icmp ugt i32 %3555, %3557
  br i1 %3558, label %4104, label %3559

; <label>:3559                                    ; preds = %3510
  br label %3560

; <label>:3560                                    ; preds = %4094, %3559
  %3561 = phi i32 [ %4101, %4094 ], [ %3555, %3559 ]
  %3562 = phi float [ %4095, %4094 ], [ %3501, %3559 ]
  %3563 = phi float [ %4096, %4094 ], [ %3502, %3559 ]
  %3564 = phi float [ %4097, %4094 ], [ %3503, %3559 ]
  %3565 = phi float [ %4098, %4094 ], [ %3504, %3559 ]
  %3566 = phi float [ %4099, %4094 ], [ %3505, %3559 ]
  %3567 = phi float [ %4100, %4094 ], [ %3506, %3559 ]
  %3568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3569 = extractvalue %dx.types.CBufRet.i32 %3568, 0
  %3570 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3543, i32 %3569, i32 %3561)  ; UMad(a,b,c)
  %3571 = shl i32 %3570, 2
  %3572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.i32 %3572, 0
  %3574 = shl i32 %3561, 5
  %3575 = sub nsw i32 %3553, %3574
  %3576 = call i32 @dx.op.binary.i32(i32 37, i32 %3575, i32 0)  ; IMax(a,b)
  %3577 = call i32 @dx.op.binary.i32(i32 38, i32 %3576, i32 31)  ; IMin(a,b)
  %3578 = sub nsw i32 1, %3553
  %3579 = add nsw i32 %3578, %3554
  %3580 = call i32 @dx.op.binary.i32(i32 37, i32 %3579, i32 0)  ; IMax(a,b)
  %3581 = call i32 @dx.op.binary.i32(i32 38, i32 %3580, i32 32)  ; IMin(a,b)
  %3582 = and i32 %3581, 31
  %3583 = shl i32 -1, %3582
  %3584 = xor i32 %3583, -1
  %3585 = and i32 %3577, 31
  %3586 = shl i32 %3584, %3585
  %3587 = icmp eq i32 %3581, 32
  %3588 = select i1 %3587, i32 -1, i32 %3586
  %3589 = and i32 %3588, %3573
  %3590 = icmp eq i32 %3589, 0
  br i1 %3590, label %4094, label %3591

; <label>:3591                                    ; preds = %3560
  br label %3592

; <label>:3592                                    ; preds = %3727, %3591
  %3593 = phi i32 [ %3604, %3727 ], [ %3589, %3591 ]
  %3594 = phi float [ %3728, %3727 ], [ %3562, %3591 ]
  %3595 = phi float [ %3729, %3727 ], [ %3563, %3591 ]
  %3596 = phi float [ %3730, %3727 ], [ %3564, %3591 ]
  %3597 = phi float [ %3731, %3727 ], [ %3565, %3591 ]
  %3598 = phi float [ %3732, %3727 ], [ %3566, %3591 ]
  %3599 = phi float [ %3733, %3727 ], [ %3567, %3591 ]
  %3600 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3593)  ; FirstbitLo(value)
  %3601 = add i32 %3600, %3574
  %3602 = and i32 %3600, 31
  %3603 = shl i32 1, %3602
  %3604 = xor i32 %3603, %3593
  %3605 = mul i32 %3601, 112
  %3606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %3605, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.ResRet.f32 %3606, 2
  %3610 = or i32 %3605, 12
  %3611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.f32 %3611, 0
  %3613 = add i32 %3605, 16
  %3614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %3613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.f32 %3614, 0
  %3616 = extractvalue %dx.types.ResRet.f32 %3614, 1
  %3617 = extractvalue %dx.types.ResRet.f32 %3614, 2
  %3618 = add i32 %3605, 28
  %3619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.i32 %3619, 0
  %3621 = add i32 %3605, 44
  %3622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %3621, i32 undef)  ; BufferLoad(srv,index,wot)
  %3623 = extractvalue %dx.types.ResRet.f32 %3622, 0
  %3624 = add i32 %3605, 48
  %3625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %3624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.f32 %3625, 0
  %3627 = extractvalue %dx.types.ResRet.f32 %3625, 1
  %3628 = extractvalue %dx.types.ResRet.f32 %3625, 2
  %3629 = extractvalue %dx.types.ResRet.f32 %3625, 3
  %3630 = add i32 %3605, 64
  %3631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %3630, i32 undef)  ; BufferLoad(srv,index,wot)
  %3632 = extractvalue %dx.types.ResRet.f32 %3631, 0
  %3633 = extractvalue %dx.types.ResRet.f32 %3631, 1
  %3634 = extractvalue %dx.types.ResRet.f32 %3631, 2
  %3635 = extractvalue %dx.types.ResRet.f32 %3631, 3
  %3636 = add i32 %3605, 80
  %3637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %3636, i32 undef)  ; BufferLoad(srv,index,wot)
  %3638 = extractvalue %dx.types.ResRet.f32 %3637, 1
  %3639 = extractvalue %dx.types.ResRet.f32 %3637, 2
  %3640 = add i32 %3605, 92
  %3641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3640, i32 undef)  ; BufferLoad(srv,index,wot)
  %3642 = extractvalue %dx.types.ResRet.i32 %3641, 0
  %3643 = call float @dx.op.dot3.f32(i32 55, float %3607, float %3608, float %3609, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3644 = select i1 %1386, float %3638, float %3607
  %3645 = select i1 %1386, float %3643, float %3608
  %3646 = select i1 %1386, float %3639, float %3609
  %3647 = and i32 %3642, 65535
  %3648 = uitofp i32 %3647 to float
  %3649 = lshr i32 %3642, 16
  %3650 = uitofp i32 %3649 to float
  %3651 = and i32 %3620, 65535
  %3652 = and i32 %3620, 50331648
  %3653 = icmp slt i32 %3620, 0
  %3654 = icmp eq i32 %3652, 33554432
  %3655 = fsub fast float %3626, %132
  %3656 = fsub fast float %3627, %133
  %3657 = fsub fast float %3628, %134
  %3658 = call float @dx.op.dot3.f32(i32 55, float %3655, float %3656, float %3657, float %3655, float %3656, float %3657)  ; Dot3(ax,ay,az,bx,by,bz)
  %3659 = call float @dx.op.unary.f32(i32 24, float %3658)  ; Sqrt(value)
  %3660 = fdiv fast float 1.000000e+00, %3659
  %3661 = fmul fast float %3660, %3655
  %3662 = fmul fast float %3660, %3656
  %3663 = fmul fast float %3660, %3657
  %3664 = fadd fast float %3659, %3612
  %3665 = fdiv fast float 1.000000e+00, %3664
  %3666 = fmul float %3623, %3665
  %3667 = fmul float %3666, %3666
  %3668 = call float @dx.op.unary.f32(i32 7, float %3667)  ; Saturate(value)
  br i1 %3654, label %3669, label %3690

; <label>:3669                                    ; preds = %3592
  %3670 = fmul fast float %3634, %3615
  %3671 = fmul fast float %3634, %3616
  %3672 = fmul fast float %3634, %3617
  %3673 = fadd fast float %3655, %3670
  %3674 = fadd fast float %3656, %3671
  %3675 = fadd fast float %3657, %3672
  %3676 = call float @dx.op.dot3.f32(i32 55, float %3673, float %3674, float %3675, float %3673, float %3674, float %3675)  ; Dot3(ax,ay,az,bx,by,bz)
  %3677 = call float @dx.op.unary.f32(i32 25, float %3676)  ; Rsqrt(value)
  %3678 = fmul fast float %3677, %3673
  %3679 = fmul fast float %3677, %3674
  %3680 = fmul fast float %3677, %3675
  %3681 = fsub fast float %132, %3626
  %3682 = fsub fast float %133, %3627
  %3683 = fsub fast float %134, %3628
  %3684 = fsub fast float -0.000000e+00, %3681
  %3685 = fsub fast float -0.000000e+00, %3682
  %3686 = fsub fast float -0.000000e+00, %3683
  %3687 = call float @dx.op.dot3.f32(i32 55, float %3684, float %3685, float %3686, float %3615, float %3616, float %3617)  ; Dot3(ax,ay,az,bx,by,bz)
  %3688 = fcmp fast ogt float %3687, 0.000000e+00
  %3689 = uitofp i1 %3688 to float
  br label %3690

; <label>:3690                                    ; preds = %3669, %3592
  %3691 = phi float [ %3689, %3669 ], [ 1.000000e+00, %3592 ]
  %3692 = phi float [ %3678, %3669 ], [ %3661, %3592 ]
  %3693 = phi float [ %3679, %3669 ], [ %3662, %3592 ]
  %3694 = phi float [ %3680, %3669 ], [ %3663, %3592 ]
  %3695 = call float @dx.op.dot3.f32(i32 55, float %3615, float %3616, float %3617, float %3692, float %3693, float %3694)  ; Dot3(ax,ay,az,bx,by,bz)
  %3696 = fmul fast float %3695, %3695
  %3697 = call float @dx.op.unary.f32(i32 7, float %3696)  ; Saturate(value)
  %3698 = fsub fast float 1.000000e+00, %3697
  %3699 = fmul fast float %3698, 5.000000e-01
  %3700 = fcmp fast ogt float %3695, 0.000000e+00
  %3701 = fsub fast float 1.000000e+00, %3699
  %3702 = select i1 %3700, float %3699, float %3701
  %3703 = fmul fast float %3702, %3650
  %3704 = fadd fast float %3703, %3648
  %3705 = fmul fast float %3704, 0x3EF0001000000000
  %3706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %3705, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3707 = extractvalue %dx.types.ResRet.f32 %3706, 0
  %3708 = fmul fast float %3695, %3632
  %3709 = fadd fast float %3708, %3633
  %3710 = call float @dx.op.unary.f32(i32 7, float %3709)  ; Saturate(value)
  %3711 = select i1 %3654, float 1.000000e+00, float %3710
  %3712 = select i1 %3654, float %3710, float 1.000000e+00
  %3713 = fmul fast float %3659, %3629
  %3714 = fsub fast float 1.000000e+00, %3713
  %3715 = fmul fast float %3714, %3635
  %3716 = call float @dx.op.unary.f32(i32 7, float %3715)  ; Saturate(value)
  %3717 = fmul fast float %3716, %3712
  %3718 = fmul fast float %3717, 2.000000e+00
  %3719 = fsub fast float 3.000000e+00, %3718
  %3720 = fmul fast float %3707, %3691
  %3721 = fmul fast float %3717, %3717
  %3722 = fmul fast float %3721, %3720
  %3723 = fmul fast float %3722, %3719
  %3724 = call float @dx.op.binary.f32(i32 36, float %3723, float %3723)  ; FMin(a,b)
  %3725 = call float @dx.op.binary.f32(i32 36, float %3723, float %3724)  ; FMin(a,b)
  %3726 = fcmp fast ogt float %3725, 0.000000e+00
  br i1 %3726, label %3735, label %3727, !dx.controlflow.hints !131

; <label>:3727                                    ; preds = %4067, %3874, %3690
  %3728 = phi float [ %3594, %3874 ], [ %3594, %3690 ], [ %4090, %4067 ]
  %3729 = phi float [ %3595, %3874 ], [ %3595, %3690 ], [ %4091, %4067 ]
  %3730 = phi float [ %3596, %3874 ], [ %3596, %3690 ], [ %4092, %4067 ]
  %3731 = phi float [ %3597, %3874 ], [ %3597, %3690 ], [ %4084, %4067 ]
  %3732 = phi float [ %3598, %3874 ], [ %3598, %3690 ], [ %4085, %4067 ]
  %3733 = phi float [ %3599, %3874 ], [ %3599, %3690 ], [ %4086, %4067 ]
  %3734 = icmp eq i32 %3593, %3603
  br i1 %3734, label %4093, label %3592

; <label>:3735                                    ; preds = %3690
  %3736 = icmp eq i32 %3651, 255
  br i1 %3736, label %3874, label %3737, !dx.controlflow.hints !132

; <label>:3737                                    ; preds = %3735
  %3738 = mul nuw nsw i32 %3651, 176
  %3739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3738, i32 undef)  ; BufferLoad(srv,index,wot)
  %3740 = extractvalue %dx.types.ResRet.f32 %3739, 0
  %3741 = extractvalue %dx.types.ResRet.f32 %3739, 1
  %3742 = extractvalue %dx.types.ResRet.f32 %3739, 2
  %3743 = extractvalue %dx.types.ResRet.f32 %3739, 3
  %3744 = add nuw nsw i32 %3738, 16
  %3745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3746 = extractvalue %dx.types.ResRet.f32 %3745, 0
  %3747 = extractvalue %dx.types.ResRet.f32 %3745, 1
  %3748 = add nuw nsw i32 %3738, 32
  %3749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3748, i32 undef)  ; BufferLoad(srv,index,wot)
  %3750 = extractvalue %dx.types.ResRet.f32 %3749, 0
  %3751 = extractvalue %dx.types.ResRet.f32 %3749, 1
  %3752 = add nuw nsw i32 %3738, 48
  %3753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3754 = extractvalue %dx.types.ResRet.f32 %3753, 0
  %3755 = extractvalue %dx.types.ResRet.f32 %3753, 1
  %3756 = extractvalue %dx.types.ResRet.f32 %3753, 2
  %3757 = extractvalue %dx.types.ResRet.f32 %3753, 3
  %3758 = add nuw nsw i32 %3738, 64
  %3759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3758, i32 undef)  ; BufferLoad(srv,index,wot)
  %3760 = extractvalue %dx.types.ResRet.f32 %3759, 0
  %3761 = extractvalue %dx.types.ResRet.f32 %3759, 1
  %3762 = extractvalue %dx.types.ResRet.f32 %3759, 2
  %3763 = extractvalue %dx.types.ResRet.f32 %3759, 3
  %3764 = add nuw nsw i32 %3738, 80
  %3765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3764, i32 undef)  ; BufferLoad(srv,index,wot)
  %3766 = extractvalue %dx.types.ResRet.f32 %3765, 0
  %3767 = extractvalue %dx.types.ResRet.f32 %3765, 1
  %3768 = extractvalue %dx.types.ResRet.f32 %3765, 2
  %3769 = extractvalue %dx.types.ResRet.f32 %3765, 3
  %3770 = add nuw nsw i32 %3738, 96
  %3771 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3770, i32 undef)  ; BufferLoad(srv,index,wot)
  %3772 = extractvalue %dx.types.ResRet.f32 %3771, 0
  %3773 = extractvalue %dx.types.ResRet.f32 %3771, 1
  %3774 = extractvalue %dx.types.ResRet.f32 %3771, 2
  %3775 = extractvalue %dx.types.ResRet.f32 %3771, 3
  %3776 = bitcast float %3747 to i32
  %3777 = fmul fast float %3754, %132
  %3778 = call float @dx.op.tertiary.f32(i32 46, float %133, float %3760, float %3777)  ; FMad(a,b,c)
  %3779 = call float @dx.op.tertiary.f32(i32 46, float %134, float %3766, float %3778)  ; FMad(a,b,c)
  %3780 = fadd fast float %3779, %3772
  %3781 = fmul fast float %3755, %132
  %3782 = call float @dx.op.tertiary.f32(i32 46, float %133, float %3761, float %3781)  ; FMad(a,b,c)
  %3783 = call float @dx.op.tertiary.f32(i32 46, float %134, float %3767, float %3782)  ; FMad(a,b,c)
  %3784 = fadd fast float %3783, %3773
  %3785 = fmul fast float %3756, %132
  %3786 = call float @dx.op.tertiary.f32(i32 46, float %133, float %3762, float %3785)  ; FMad(a,b,c)
  %3787 = call float @dx.op.tertiary.f32(i32 46, float %134, float %3768, float %3786)  ; FMad(a,b,c)
  %3788 = fadd fast float %3787, %3774
  %3789 = fmul fast float %3757, %132
  %3790 = call float @dx.op.tertiary.f32(i32 46, float %133, float %3763, float %3789)  ; FMad(a,b,c)
  %3791 = call float @dx.op.tertiary.f32(i32 46, float %134, float %3769, float %3790)  ; FMad(a,b,c)
  %3792 = fadd fast float %3791, %3775
  %3793 = fdiv fast float %3780, %3792
  %3794 = fdiv fast float %3784, %3792
  %3795 = fdiv fast float %3788, %3792
  %3796 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %3795)  ; FMax(a,b)
  %3797 = fmul fast float %751, 0x401921FB60000000
  %3798 = call float @dx.op.unary.f32(i32 13, float %3797)  ; Sin(value)
  %3799 = call float @dx.op.unary.f32(i32 12, float %3797)  ; Cos(value)
  %3800 = fmul fast float %3799, %3751
  %3801 = call float @dx.op.tertiary.f32(i32 46, float %3798, float %3751, float 0.000000e+00)  ; FMad(a,b,c)
  %3802 = fmul fast float %3751, %3798
  %3803 = fsub fast float -0.000000e+00, %3802
  %3804 = call float @dx.op.tertiary.f32(i32 46, float %3799, float %3751, float 0.000000e+00)  ; FMad(a,b,c)
  br label %3805

; <label>:3805                                    ; preds = %3805, %3737
  %3806 = phi float [ 0.000000e+00, %3737 ], [ %3838, %3805 ]
  %3807 = phi float [ 0.000000e+00, %3737 ], [ %3840, %3805 ]
  %3808 = phi i32 [ 0, %3737 ], [ %3841, %3805 ]
  %3809 = mul i32 %3808, 2
  %3810 = add i32 0, %3809
  %3811 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3810
  %3812 = load float, float* %3811, align 4
  %3813 = mul i32 %3808, 2
  %3814 = add i32 1, %3813
  %3815 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3814
  %3816 = load float, float* %3815, align 4
  %3817 = fmul fast float %3800, %3812
  %3818 = call float @dx.op.tertiary.f32(i32 46, float %3816, float %3803, float %3817)  ; FMad(a,b,c)
  %3819 = fmul fast float %3812, %3801
  %3820 = call float @dx.op.tertiary.f32(i32 46, float %3816, float %3804, float %3819)  ; FMad(a,b,c)
  %3821 = fadd fast float %3818, %3793
  %3822 = fadd fast float %3820, %3794
  %3823 = fmul fast float %3821, %3746
  %3824 = fmul fast float %3822, %3746
  %3825 = call float @dx.op.binary.f32(i32 35, float %3823, float %3742)  ; FMax(a,b)
  %3826 = call float @dx.op.binary.f32(i32 35, float %3824, float %3742)  ; FMax(a,b)
  %3827 = call float @dx.op.binary.f32(i32 36, float %3825, float %3743)  ; FMin(a,b)
  %3828 = call float @dx.op.binary.f32(i32 36, float %3826, float %3743)  ; FMin(a,b)
  %3829 = fadd fast float %3827, %3740
  %3830 = fadd fast float %3828, %3741
  %3831 = uitofp i32 %3776 to float
  %3832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %51, float %3829, float %3830, float %3831, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3833 = extractvalue %dx.types.ResRet.f32 %3832, 0
  %3834 = fsub fast float %3833, %3796
  %3835 = fsub fast float %3834, %3750
  %3836 = fcmp fast ogt float %3835, 0.000000e+00
  %3837 = select i1 %3836, float 1.000000e+00, float 0.000000e+00
  %3838 = fadd fast float %3837, %3806
  %3839 = select i1 %3836, float %3835, float 0.000000e+00
  %3840 = fadd fast float %3839, %3807
  %3841 = add nuw nsw i32 %3808, 1
  %3842 = icmp eq i32 %3841, 8
  br i1 %3842, label %3843, label %3805

; <label>:3843                                    ; preds = %3805
  %3844 = fdiv fast float 1.000000e+00, %3838
  %3845 = fmul fast float %3844, %3840
  %3846 = fdiv fast float 1.000000e+00, %3796
  %3847 = fmul fast float %3845, %3846
  %3848 = call float @dx.op.unary.f32(i32 7, float %3847)  ; Saturate(value)
  %3849 = call float @dx.op.binary.f32(i32 35, float %3848, float 0.000000e+00)  ; FMax(a,b)
  %3850 = fmul fast float %3838, 1.250000e-01
  %3851 = call float @dx.op.unary.f32(i32 7, float %3850)  ; Saturate(value)
  %3852 = fmul fast float %3851, 2.000000e+00
  %3853 = fadd fast float %3852, -1.000000e+00
  %3854 = fcmp fast ogt float %3853, 0.000000e+00
  %3855 = fcmp fast olt float %3853, 0.000000e+00
  %3856 = zext i1 %3854 to i32
  %3857 = zext i1 %3855 to i32
  %3858 = sub nsw i32 %3856, %3857
  %3859 = sitofp i32 %3858 to float
  %3860 = fmul fast float %3859, %3853
  %3861 = fsub fast float 1.000000e+00, %3860
  %3862 = fmul fast float %3861, %3861
  %3863 = fmul fast float %3862, %3861
  %3864 = fsub fast float %3861, %3863
  %3865 = fmul fast float %3864, %3849
  %3866 = fsub fast float 1.000000e+00, %3863
  %3867 = fsub fast float %3866, %3865
  %3868 = fmul fast float %3859, 5.000000e-01
  %3869 = fmul fast float %3868, %3867
  %3870 = fsub fast float -5.000000e-01, %3869
  %3871 = fmul fast float %3870, %3711
  %3872 = fadd fast float %3871, 1.000000e+00
  %3873 = fmul fast float %3872, %3723
  br label %3874

; <label>:3874                                    ; preds = %3843, %3735
  %3875 = phi float [ %3873, %3843 ], [ %3723, %3735 ]
  %3876 = call float @dx.op.binary.f32(i32 36, float %3875, float %3875)  ; FMin(a,b)
  %3877 = call float @dx.op.binary.f32(i32 36, float %3875, float %3876)  ; FMin(a,b)
  %3878 = fcmp fast ogt float %3877, 0.000000e+00
  br i1 %3878, label %3879, label %3727, !dx.controlflow.hints !133

; <label>:3879                                    ; preds = %3874
  %3880 = fmul fast float %3875, %3644
  %3881 = fmul fast float %3875, %3645
  %3882 = fmul fast float %3875, %3646
  %3883 = fsub fast float %3661, %1291
  %3884 = fsub fast float %3662, %1292
  %3885 = fsub fast float %3663, %1293
  %3886 = call float @dx.op.dot3.f32(i32 55, float %3883, float %3884, float %3885, float %3883, float %3884, float %3885)  ; Dot3(ax,ay,az,bx,by,bz)
  %3887 = call float @dx.op.unary.f32(i32 25, float %3886)  ; Rsqrt(value)
  %3888 = fmul fast float %3887, %3883
  %3889 = fmul fast float %3887, %3884
  %3890 = fmul fast float %3887, %3885
  %3891 = call float @dx.op.dot3.f32(i32 55, float %3661, float %3662, float %3663, float %1263, float %1264, float %1265)  ; Dot3(ax,ay,az,bx,by,bz)
  %3892 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float %3888, float %3889, float %3890)  ; Dot3(ax,ay,az,bx,by,bz)
  %3893 = call float @dx.op.unary.f32(i32 7, float %3891)  ; Saturate(value)
  %3894 = fmul fast float %3893, %3668
  %3895 = fmul fast float %3893, %3893
  %3896 = fmul fast float %3895, %1405
  %3897 = call float @dx.op.unary.f32(i32 7, float %3896)  ; Saturate(value)
  %3898 = fmul fast float %3894, %3897
  %3899 = bitcast float %3658 to i32
  %3900 = ashr i32 %3899, 1
  %3901 = sub nsw i32 1597463007, %3900
  %3902 = bitcast i32 %3901 to float
  %3903 = fmul fast float %3902, %3655
  %3904 = fmul fast float %3902, %3656
  %3905 = fmul fast float %3902, %3657
  %3906 = fsub fast float %3903, %1291
  %3907 = fsub fast float %3904, %1292
  %3908 = fsub fast float %3905, %1293
  %3909 = call float @dx.op.dot3.f32(i32 55, float %3906, float %3907, float %3908, float %3906, float %3907, float %3908)  ; Dot3(ax,ay,az,bx,by,bz)
  %3910 = call float @dx.op.unary.f32(i32 25, float %3909)  ; Rsqrt(value)
  %3911 = fmul fast float %3906, %3910
  %3912 = fmul fast float %3907, %3910
  %3913 = fmul fast float %3908, %3910
  %3914 = call float @dx.op.dot3.f32(i32 55, float %1263, float %1264, float %1265, float %3911, float %3912, float %3913)  ; Dot3(ax,ay,az,bx,by,bz)
  %3915 = fmul fast float %3914, %3914
  %3916 = call float @dx.op.unary.f32(i32 6, float %3891)  ; FAbs(value)
  %3917 = fsub fast float 1.000000e+00, %1346
  %3918 = call float @dx.op.binary.f32(i32 35, float %3917, float 0x3F847AE140000000)  ; FMax(a,b)
  %3919 = fmul fast float %3918, %3918
  %3920 = fmul fast float %3919, %3919
  %3921 = fsub fast float 1.000000e+00, %3920
  %3922 = fmul fast float %1393, %1393
  %3923 = fmul fast float %3922, %3921
  %3924 = fadd fast float %3923, %3920
  %3925 = bitcast float %3924 to i32
  %3926 = ashr i32 %3925, 1
  %3927 = add nsw i32 %3926, 532487669
  %3928 = bitcast i32 %3927 to float
  %3929 = fadd fast float %3928, %1393
  %3930 = fmul fast float %3920, %3915
  %3931 = fsub fast float 1.000000e+00, %3915
  %3932 = fadd fast float %3931, %3930
  %3933 = fmul fast float %3916, %3916
  %3934 = fmul fast float %3933, %3921
  %3935 = fadd fast float %3934, %3920
  %3936 = bitcast float %3935 to i32
  %3937 = ashr i32 %3936, 1
  %3938 = add nsw i32 %3937, 532487669
  %3939 = bitcast i32 %3938 to float
  %3940 = fadd fast float %3939, %3916
  %3941 = fmul fast float %3932, %3932
  %3942 = fmul fast float %3941, %3929
  %3943 = fmul fast float %3942, %3940
  %3944 = fdiv fast float 1.000000e+00, %3943
  %3945 = bitcast float %3920 to i32
  %3946 = sitofp i32 %3945 to float
  %3947 = fmul fast float %3946, 0x3FE7F73180000000
  %3948 = fadd fast float %3947, 0x41AFE27C40000000
  %3949 = fptosi float %3948 to i32
  %3950 = bitcast i32 %3949 to float
  %3951 = fmul fast float %3623, 0x3FD80E9D60000000
  %3952 = fmul fast float %3951, %3902
  %3953 = fadd fast float %3950, %3952
  %3954 = bitcast float %3953 to i32
  %3955 = sub nsw i32 2129859010, %3954
  %3956 = bitcast i32 %3955 to float
  %3957 = fmul fast float %3920, %3944
  %3958 = fmul fast float %3957, %3950
  %3959 = fmul fast float %3958, %3956
  %3960 = call float @dx.op.unary.f32(i32 6, float %3892)  ; FAbs(value)
  %3961 = fsub fast float 1.000000e+00, %3960
  %3962 = bitcast float %3961 to i32
  %3963 = sitofp i32 %3962 to float
  %3964 = fmul fast float %3963, 5.000000e+00
  %3965 = fadd fast float %3964, 0xC1EFBF8940000000
  %3966 = fptosi float %3965 to i32
  %3967 = bitcast i32 %3966 to float
  %3968 = fmul fast float %3967, %2218
  %3969 = fmul fast float %3967, %2219
  %3970 = fmul fast float %3967, %2220
  %3971 = fadd fast float %3968, %1284
  %3972 = fadd fast float %3969, %1285
  %3973 = fadd fast float %3970, %1391
  %3974 = fmul fast float %3891, 9.843750e-01
  %3975 = fmul fast float %1346, 9.843750e-01
  %3976 = fadd fast float %3974, 7.812500e-03
  %3977 = fadd fast float %3975, 7.812500e-03
  %3978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %3976, float %3977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3979 = extractvalue %dx.types.ResRet.f32 %3978, 2
  %3980 = extractvalue %dx.types.ResRet.f32 %3978, 3
  %3981 = fmul fast float %3979, %1284
  %3982 = fmul fast float %3979, %1285
  %3983 = fmul fast float %3979, %1391
  %3984 = fadd fast float %3981, %3980
  %3985 = fadd fast float %3982, %3980
  %3986 = fadd fast float %3983, %3980
  %3987 = call float @dx.op.binary.f32(i32 35, float %3985, float %3986)  ; FMax(a,b)
  %3988 = call float @dx.op.binary.f32(i32 35, float %3984, float %3987)  ; FMax(a,b)
  %3989 = fsub fast float 1.000000e+00, %3988
  %3990 = fsub fast float -0.000000e+00, %1263
  %3991 = fsub fast float -0.000000e+00, %1264
  %3992 = fsub fast float -0.000000e+00, %1265
  %3993 = call float @dx.op.dot3.f32(i32 55, float %3661, float %3662, float %3663, float %3990, float %3991, float %3992)  ; Dot3(ax,ay,az,bx,by,bz)
  %3994 = call float @dx.op.unary.f32(i32 7, float %3993)  ; Saturate(value)
  %3995 = fmul fast float %3994, 9.843750e-01
  %3996 = fadd fast float %3995, 7.812500e-03
  %3997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %3996, float %3977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3998 = extractvalue %dx.types.ResRet.f32 %3997, 2
  %3999 = extractvalue %dx.types.ResRet.f32 %3997, 3
  %4000 = fmul fast float %1285, 0x4012D0A400000000
  %4001 = fadd fast float %4000, 0x3FDB6377A0000000
  %4002 = fmul fast float %3917, %4001
  %4003 = call float @dx.op.unary.f32(i32 7, float %4002)  ; Saturate(value)
  %4004 = fsub fast float %3903, %1398
  %4005 = fsub fast float %3904, %1399
  %4006 = fsub fast float %3905, %1400
  %4007 = call float @dx.op.dot3.f32(i32 55, float %4004, float %4005, float %4006, float %4004, float %4005, float %4006)  ; Dot3(ax,ay,az,bx,by,bz)
  %4008 = call float @dx.op.unary.f32(i32 25, float %4007)  ; Rsqrt(value)
  %4009 = fmul fast float %4004, %4008
  %4010 = fmul fast float %4005, %4008
  %4011 = fmul fast float %4006, %4008
  %4012 = call float @dx.op.dot3.f32(i32 55, float %3990, float %3991, float %3992, float %4009, float %4010, float %4011)  ; Dot3(ax,ay,az,bx,by,bz)
  %4013 = fmul fast float %4012, %4012
  %4014 = call float @dx.op.unary.f32(i32 6, float %3994)  ; FAbs(value)
  %4015 = call float @dx.op.binary.f32(i32 35, float %4003, float 0x3F847AE140000000)  ; FMax(a,b)
  %4016 = fmul fast float %4015, %4015
  %4017 = fmul fast float %4016, %4016
  %4018 = fsub fast float 1.000000e+00, %4017
  %4019 = fmul fast float %4017, %4013
  %4020 = fsub fast float 1.000000e+00, %4013
  %4021 = fadd fast float %4020, %4019
  %4022 = bitcast float %4017 to i32
  %4023 = sitofp i32 %4022 to float
  %4024 = fmul fast float %4023, 0x3FE7F73180000000
  %4025 = fadd fast float %4024, 0x41AFE27C40000000
  %4026 = fptosi float %4025 to i32
  %4027 = bitcast i32 %4026 to float
  br i1 %3653, label %4028, label %4067

; <label>:4028                                    ; preds = %3879
  %4029 = fmul fast float %4021, %4021
  %4030 = fmul fast float %3922, %4018
  %4031 = fadd fast float %4030, %4017
  %4032 = bitcast float %4031 to i32
  %4033 = ashr i32 %4032, 1
  %4034 = add nsw i32 %4033, 532487669
  %4035 = bitcast i32 %4034 to float
  %4036 = fadd fast float %4035, %1393
  %4037 = fmul fast float %4029, %4036
  %4038 = fmul fast float %4014, %4014
  %4039 = fmul fast float %4038, %4018
  %4040 = fadd fast float %4039, %4017
  %4041 = bitcast float %4040 to i32
  %4042 = ashr i32 %4041, 1
  %4043 = add nsw i32 %4042, 532487669
  %4044 = bitcast i32 %4043 to float
  %4045 = fadd fast float %4044, %4014
  %4046 = fmul fast float %4037, %4045
  %4047 = fdiv fast float 1.000000e+00, %4046
  %4048 = fmul fast float %4017, %4047
  %4049 = fmul fast float %4048, %4027
  %4050 = fadd fast float %4027, %3952
  %4051 = bitcast float %4050 to i32
  %4052 = sub nsw i32 2129859010, %4051
  %4053 = bitcast i32 %4052 to float
  %4054 = fmul fast float %4049, %4053
  %4055 = fmul fast float %3998, %1284
  %4056 = fadd fast float %4055, %3999
  %4057 = fmul fast float %3998, %1285
  %4058 = fadd fast float %4057, %3999
  %4059 = fmul fast float %3998, %1391
  %4060 = fadd fast float %4059, %3999
  %4061 = call float @dx.op.binary.f32(i32 35, float %4058, float %4060)  ; FMax(a,b)
  %4062 = call float @dx.op.binary.f32(i32 35, float %4056, float %4061)  ; FMax(a,b)
  %4063 = fsub fast float 1.000000e+00, %4062
  %4064 = fmul fast float %3994, %3668
  %4065 = fmul fast float %4064, %4063
  %4066 = fmul fast float %4065, %4054
  br label %4067

; <label>:4067                                    ; preds = %4028, %3879
  %4068 = phi float [ %4066, %4028 ], [ 0.000000e+00, %3879 ]
  %4069 = fmul fast float %3971, %3898
  %4070 = fmul fast float %4069, %3959
  %4071 = fmul fast float %3972, %3898
  %4072 = fmul fast float %4071, %3959
  %4073 = fmul fast float %3973, %3898
  %4074 = fmul fast float %4073, %3959
  %4075 = fadd fast float %4068, %4070
  %4076 = fadd fast float %4068, %4072
  %4077 = fadd fast float %4068, %4074
  %4078 = fmul fast float %3898, %3880
  %4079 = fmul fast float %4078, %3989
  %4080 = fmul fast float %3898, %3881
  %4081 = fmul fast float %4080, %3989
  %4082 = fmul fast float %3898, %3882
  %4083 = fmul fast float %4082, %3989
  %4084 = fadd fast float %4079, %3597
  %4085 = fadd fast float %4081, %3598
  %4086 = fadd fast float %4083, %3599
  %4087 = fmul fast float %4075, %3880
  %4088 = fmul fast float %4076, %3881
  %4089 = fmul fast float %4077, %3882
  %4090 = fadd fast float %4087, %3594
  %4091 = fadd fast float %4088, %3595
  %4092 = fadd fast float %4089, %3596
  br label %3727

; <label>:4093                                    ; preds = %3727
  br label %4094

; <label>:4094                                    ; preds = %4093, %3560
  %4095 = phi float [ %3562, %3560 ], [ %3728, %4093 ]
  %4096 = phi float [ %3563, %3560 ], [ %3729, %4093 ]
  %4097 = phi float [ %3564, %3560 ], [ %3730, %4093 ]
  %4098 = phi float [ %3565, %3560 ], [ %3731, %4093 ]
  %4099 = phi float [ %3566, %3560 ], [ %3732, %4093 ]
  %4100 = phi float [ %3567, %3560 ], [ %3733, %4093 ]
  %4101 = add i32 %3561, 1
  %4102 = icmp ugt i32 %4101, %3557
  br i1 %4102, label %4103, label %3560

; <label>:4103                                    ; preds = %4094
  br label %4104

; <label>:4104                                    ; preds = %4103, %3510, %3499
  %4105 = phi float [ %3501, %3499 ], [ %3501, %3510 ], [ %4095, %4103 ]
  %4106 = phi float [ %3502, %3499 ], [ %3502, %3510 ], [ %4096, %4103 ]
  %4107 = phi float [ %3503, %3499 ], [ %3503, %3510 ], [ %4097, %4103 ]
  %4108 = phi float [ %3504, %3499 ], [ %3504, %3510 ], [ %4098, %4103 ]
  %4109 = phi float [ %3505, %3499 ], [ %3505, %3510 ], [ %4099, %4103 ]
  %4110 = phi float [ %3506, %3499 ], [ %3506, %3510 ], [ %4100, %4103 ]
  %4111 = and i32 %1342, 255
  %4112 = uitofp i32 %4111 to float
  %4113 = fmul fast float %4112, 0x3F70101020000000
  %4114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4115 = extractvalue %dx.types.CBufRet.f32 %4114, 2
  %4116 = extractvalue %dx.types.CBufRet.f32 %4114, 3
  %4117 = fmul fast float %102, %4115
  %4118 = fmul fast float %104, %4116
  %4119 = fsub fast float 1.000000e+00, %4117
  %4120 = fsub fast float 1.000000e+00, %4118
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 0
  %4123 = extractvalue %dx.types.CBufRet.f32 %4121, 1
  %4124 = extractvalue %dx.types.CBufRet.f32 %4121, 2
  %4125 = fmul fast float %4119, %4122
  %4126 = fmul fast float %4119, %4123
  %4127 = fmul fast float %4119, %4124
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 0
  %4130 = extractvalue %dx.types.CBufRet.f32 %4128, 1
  %4131 = extractvalue %dx.types.CBufRet.f32 %4128, 2
  %4132 = fmul fast float %4120, %4129
  %4133 = fmul fast float %4120, %4130
  %4134 = fmul fast float %4120, %4131
  %4135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.f32 %4135, 0
  %4137 = extractvalue %dx.types.CBufRet.f32 %4135, 1
  %4138 = extractvalue %dx.types.CBufRet.f32 %4135, 2
  %4139 = fadd fast float %4132, %4136
  %4140 = fadd fast float %4139, %4125
  %4141 = fadd fast float %4133, %4137
  %4142 = fadd fast float %4141, %4126
  %4143 = fadd fast float %4134, %4138
  %4144 = fadd fast float %4143, %4127
  %4145 = fmul fast float %4140, %70
  %4146 = fmul fast float %4142, %70
  %4147 = fmul fast float %4144, %70
  %4148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4149 = extractvalue %dx.types.CBufRet.f32 %4148, 2
  %4150 = extractvalue %dx.types.CBufRet.f32 %4148, 3
  %4151 = fmul fast float %4149, %77
  %4152 = fmul fast float %4150, %78
  %4153 = fptoui float %77 to i32
  %4154 = fptoui float %78 to i32
  %4155 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %4153, i32 %4154, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4156 = extractvalue %dx.types.ResRet.f32 %4155, 0
  %4157 = fcmp fast olt float %4156, -1.000000e+00
  %4158 = fcmp fast ogt float %4156, -1.000000e+00
  %4159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4160 = extractvalue %dx.types.CBufRet.f32 %4159, 1
  %4161 = select i1 %4158, float %4160, float 1.000000e+00
  %4162 = fadd fast float %4156, 1.000000e+00
  %4163 = fmul fast float %4161, %4162
  %4164 = call float @dx.op.unary.f32(i32 6, float %4163)  ; FAbs(value)
  %4165 = fsub fast float %4164, %70
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 2
  %4168 = fsub fast float %4165, %4167
  %4169 = extractvalue %dx.types.CBufRet.f32 %4166, 3
  %4170 = fmul fast float %4169, %4113
  %4171 = fmul fast float %4170, %4168
  %4172 = call float @dx.op.unary.f32(i32 7, float %4171)  ; Saturate(value)
  %4173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 356)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.f32 %4173, 1
  %4175 = extractvalue %dx.types.CBufRet.f32 %4173, 0
  %4176 = extractvalue %dx.types.CBufRet.f32 %4173, 3
  %4177 = extractvalue %dx.types.CBufRet.f32 %4173, 2
  %4178 = select i1 %4157, float %4174, float %4176
  %4179 = select i1 %4157, float %4175, float %4177
  %4180 = fsub fast float %4165, %4179
  %4181 = fmul fast float %4180, %4178
  %4182 = fsub fast float 1.000000e+00, %4113
  %4183 = fadd fast float %4182, %4181
  %4184 = call float @dx.op.unary.f32(i32 7, float %4183)  ; Saturate(value)
  %4185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %4186 = extractvalue %dx.types.CBufRet.f32 %4185, 1
  %4187 = extractvalue %dx.types.CBufRet.f32 %4185, 2
  %4188 = fsub fast float 1.000000e+00, %4152
  %4189 = fsub fast float 1.000000e+00, %4151
  %4190 = fmul fast float %4152, %4151
  %4191 = fmul fast float %4190, %4188
  %4192 = fmul fast float %4191, %4189
  %4193 = fmul fast float %4192, %4186
  %4194 = call float @dx.op.unary.f32(i32 23, float %4193)  ; Log(value)
  %4195 = fmul fast float %4194, %4187
  %4196 = call float @dx.op.unary.f32(i32 21, float %4195)  ; Exp(value)
  %4197 = call float @dx.op.unary.f32(i32 7, float %4196)  ; Saturate(value)
  %4198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 66)  ; CBufferLoadLegacy(handle,regIndex)
  %4199 = extractvalue %dx.types.CBufRet.f32 %4198, 2
  %4200 = extractvalue %dx.types.CBufRet.f32 %4198, 3
  %4201 = extractvalue %dx.types.CBufRet.f32 %4198, 0
  %4202 = fsub fast float %70, %4201
  %4203 = extractvalue %dx.types.CBufRet.f32 %4185, 0
  %4204 = fmul fast float %4202, %4203
  %4205 = call float @dx.op.unary.f32(i32 7, float %4204)  ; Saturate(value)
  %4206 = fsub fast float %4200, %4199
  %4207 = fmul fast float %4205, %4206
  %4208 = fadd fast float %4207, %4199
  %4209 = fmul fast float %4208, %4172
  %4210 = fmul fast float %4209, %1263
  %4211 = fmul fast float %4209, %1264
  %4212 = fadd fast float %4210, %4145
  %4213 = fadd fast float %4211, %4146
  %4214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4215 = extractvalue %dx.types.CBufRet.f32 %4214, 0
  %4216 = extractvalue %dx.types.CBufRet.f32 %4214, 1
  %4217 = extractvalue %dx.types.CBufRet.f32 %4214, 2
  %4218 = extractvalue %dx.types.CBufRet.f32 %4214, 3
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 0
  %4221 = extractvalue %dx.types.CBufRet.f32 %4219, 1
  %4222 = extractvalue %dx.types.CBufRet.f32 %4219, 2
  %4223 = extractvalue %dx.types.CBufRet.f32 %4219, 3
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 0
  %4226 = extractvalue %dx.types.CBufRet.f32 %4224, 1
  %4227 = extractvalue %dx.types.CBufRet.f32 %4224, 2
  %4228 = extractvalue %dx.types.CBufRet.f32 %4224, 3
  %4229 = fmul fast float %4212, %4215
  %4230 = call float @dx.op.tertiary.f32(i32 46, float %4213, float %4216, float %4229)  ; FMad(a,b,c)
  %4231 = call float @dx.op.tertiary.f32(i32 46, float %4147, float %4217, float %4230)  ; FMad(a,b,c)
  %4232 = fadd fast float %4231, %4218
  %4233 = fmul fast float %4212, %4220
  %4234 = call float @dx.op.tertiary.f32(i32 46, float %4213, float %4221, float %4233)  ; FMad(a,b,c)
  %4235 = call float @dx.op.tertiary.f32(i32 46, float %4147, float %4222, float %4234)  ; FMad(a,b,c)
  %4236 = fadd fast float %4235, %4223
  %4237 = fmul fast float %4212, %4225
  %4238 = call float @dx.op.tertiary.f32(i32 46, float %4213, float %4226, float %4237)  ; FMad(a,b,c)
  %4239 = call float @dx.op.tertiary.f32(i32 46, float %4147, float %4227, float %4238)  ; FMad(a,b,c)
  %4240 = fadd fast float %4239, %4228
  %4241 = fdiv fast float %4232, %4240
  %4242 = fdiv fast float %4236, %4240
  %4243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.f32 %4243, 0
  %4245 = extractvalue %dx.types.CBufRet.f32 %4243, 1
  %4246 = fmul fast float %4244, %4241
  %4247 = fmul fast float %4245, %4242
  %4248 = extractvalue %dx.types.CBufRet.f32 %4243, 2
  %4249 = extractvalue %dx.types.CBufRet.f32 %4243, 3
  %4250 = fadd fast float %4246, %4248
  %4251 = fadd fast float %4247, %4249
  %4252 = call float @dx.op.unary.f32(i32 7, float %4250)  ; Saturate(value)
  %4253 = call float @dx.op.unary.f32(i32 7, float %4251)  ; Saturate(value)
  %4254 = fsub fast float %4252, %4151
  %4255 = fsub fast float %4253, %4152
  %4256 = fmul fast float %4254, %4197
  %4257 = fmul fast float %4255, %4197
  %4258 = fadd fast float %4256, %4151
  %4259 = fadd fast float %4257, %4152
  %4260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %4258, float %4259, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4261 = extractvalue %dx.types.ResRet.f32 %4260, 0
  %4262 = fcmp fast ogt float %4261, -1.000000e+00
  %4263 = select i1 %4262, float %4160, float 1.000000e+00
  %4264 = fadd fast float %4261, 1.000000e+00
  %4265 = fmul fast float %4263, %4264
  %4266 = call float @dx.op.unary.f32(i32 6, float %4265)  ; FAbs(value)
  %4267 = fcmp fast ugt float %4266, %4240
  br i1 %4267, label %4269, label %4268

; <label>:4268                                    ; preds = %4104
  br label %4269

; <label>:4269                                    ; preds = %4268, %4104
  %4270 = phi float [ %4151, %4268 ], [ %4258, %4104 ]
  %4271 = phi float [ %4152, %4268 ], [ %4259, %4104 ]
  %4272 = phi float [ %70, %4268 ], [ %4240, %4104 ]
  %4273 = phi float [ %4164, %4268 ], [ %4266, %4104 ]
  br i1 %94, label %4274, label %4710

; <label>:4274                                    ; preds = %4269
  %4275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %4276 = extractvalue %dx.types.CBufRet.f32 %4275, 0
  %4277 = extractvalue %dx.types.CBufRet.f32 %4275, 1
  %4278 = extractvalue %dx.types.CBufRet.f32 %4275, 2
  %4279 = fcmp fast oge float %4277, %4272
  %4280 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4281 = extractvalue %dx.types.CBufRet.i32 %4280, 0
  %4282 = and i32 %4281, 65536
  %4283 = icmp ne i32 %4282, 0
  %4284 = and i1 %4279, %4283
  br i1 %4284, label %4285, label %4366

; <label>:4285                                    ; preds = %4274
  %4286 = extractvalue %dx.types.CBufRet.f32 %4114, 0
  %4287 = extractvalue %dx.types.CBufRet.f32 %4114, 1
  %4288 = fmul fast float %4286, %4270
  %4289 = fmul fast float %4287, %4271
  %4290 = fmul fast float %4288, %4115
  %4291 = fmul fast float %4289, %4116
  %4292 = call float @dx.op.unary.f32(i32 7, float %4290)  ; Saturate(value)
  %4293 = call float @dx.op.unary.f32(i32 7, float %4291)  ; Saturate(value)
  %4294 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %50, float %4292, float %4293, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4295 = extractvalue %dx.types.ResRet.f32 %4294, 0
  %4296 = extractvalue %dx.types.ResRet.f32 %4294, 1
  %4297 = extractvalue %dx.types.ResRet.f32 %4294, 2
  %4298 = extractvalue %dx.types.ResRet.f32 %4294, 3
  %4299 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %50, float %4292, float %4293, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4300 = extractvalue %dx.types.ResRet.f32 %4299, 0
  %4301 = extractvalue %dx.types.ResRet.f32 %4299, 1
  %4302 = extractvalue %dx.types.ResRet.f32 %4299, 2
  %4303 = extractvalue %dx.types.ResRet.f32 %4299, 3
  %4304 = call float @dx.op.binary.f32(i32 35, float %4296, float %4297)  ; FMax(a,b)
  %4305 = call float @dx.op.binary.f32(i32 35, float %4295, float %4304)  ; FMax(a,b)
  %4306 = call float @dx.op.binary.f32(i32 35, float %4305, float %4298)  ; FMax(a,b)
  %4307 = call float @dx.op.binary.f32(i32 36, float %4301, float %4302)  ; FMin(a,b)
  %4308 = call float @dx.op.binary.f32(i32 36, float %4300, float %4307)  ; FMin(a,b)
  %4309 = call float @dx.op.binary.f32(i32 36, float %4308, float %4303)  ; FMin(a,b)
  %4310 = fmul fast float %4306, 2.550000e+02
  %4311 = fadd fast float %4310, 0x3F70101020000000
  %4312 = fptoui float %4311 to i32
  %4313 = fmul fast float %4309, 2.550000e+02
  %4314 = fadd fast float %4313, 0x3F70101020000000
  %4315 = fptoui float %4314 to i32
  %4316 = icmp ult i32 %4312, %4315
  br i1 %4316, label %4317, label %4366

; <label>:4317                                    ; preds = %4285
  %4318 = fadd fast float %4273, -4.000000e+00
  %4319 = call float @dx.op.binary.f32(i32 35, float %4318, float 0.000000e+00)  ; FMax(a,b)
  %4320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4321 = extractvalue %dx.types.CBufRet.f32 %4320, 0
  %4322 = fadd fast float %4321, %4319
  %4323 = extractvalue %dx.types.CBufRet.f32 %4320, 2
  %4324 = fmul fast float %4322, %4323
  %4325 = call float @dx.op.unary.f32(i32 23, float %4324)  ; Log(value)
  %4326 = extractvalue %dx.types.CBufRet.f32 %4320, 3
  %4327 = fmul fast float %4326, %4325
  %4328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4329 = extractvalue %dx.types.CBufRet.f32 %4328, 2
  %4330 = fmul fast float %4327, %4329
  %4331 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4332 = uitofp i32 %4312 to float
  %4333 = uitofp i32 %4315 to float
  %4334 = fadd fast float %4332, 5.000000e-01
  %4335 = fadd fast float %4333, 5.000000e-01
  %4336 = fmul fast float %4329, %4334
  %4337 = fmul fast float %4329, %4335
  %4338 = fadd fast float %4336, 0x3F0FFB4800000000
  %4339 = fadd fast float %4337, 0xBF0FFB4800000000
  %4340 = call float @dx.op.binary.f32(i32 35, float %4331, float %4338)  ; FMax(a,b)
  %4341 = call float @dx.op.binary.f32(i32 36, float %4340, float %4339)  ; FMin(a,b)
  %4342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4343 = extractvalue %dx.types.CBufRet.f32 %4342, 1
  %4344 = extractvalue %dx.types.CBufRet.f32 %4342, 2
  %4345 = extractvalue %dx.types.CBufRet.f32 %4342, 0
  %4346 = fmul fast float %4343, %4341
  %4347 = fadd fast float %4345, %4346
  %4348 = fadd fast float %4345, %4344
  %4349 = fsub fast float %4343, %4344
  %4350 = fadd fast float %4349, %4345
  %4351 = call float @dx.op.binary.f32(i32 35, float %4347, float %4348)  ; FMax(a,b)
  %4352 = call float @dx.op.binary.f32(i32 36, float %4351, float %4350)  ; FMin(a,b)
  %4353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %4292, float %4293, float %4352, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4354 = extractvalue %dx.types.ResRet.f32 %4353, 0
  %4355 = extractvalue %dx.types.ResRet.f32 %4353, 1
  %4356 = extractvalue %dx.types.ResRet.f32 %4353, 2
  %4357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %48, float %4292, float %4293, float %4352, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4358 = extractvalue %dx.types.ResRet.f32 %4357, 0
  %4359 = extractvalue %dx.types.ResRet.f32 %4357, 1
  %4360 = extractvalue %dx.types.ResRet.f32 %4357, 2
  %4361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4362 = extractvalue %dx.types.CBufRet.f32 %4361, 1
  %4363 = fmul fast float %4362, %4358
  %4364 = fmul fast float %4362, %4359
  %4365 = fmul fast float %4362, %4360
  br label %4366

; <label>:4366                                    ; preds = %4317, %4285, %4274
  %4367 = phi float [ 0.000000e+00, %4274 ], [ %4363, %4317 ], [ 0.000000e+00, %4285 ]
  %4368 = phi float [ 0.000000e+00, %4274 ], [ %4364, %4317 ], [ 0.000000e+00, %4285 ]
  %4369 = phi float [ 0.000000e+00, %4274 ], [ %4365, %4317 ], [ 0.000000e+00, %4285 ]
  %4370 = phi float [ 1.000000e+00, %4274 ], [ %4354, %4317 ], [ 1.000000e+00, %4285 ]
  %4371 = phi float [ 1.000000e+00, %4274 ], [ %4355, %4317 ], [ 1.000000e+00, %4285 ]
  %4372 = phi float [ 1.000000e+00, %4274 ], [ %4356, %4317 ], [ 1.000000e+00, %4285 ]
  %4373 = fcmp fast olt float %4113, 1.000000e+00
  %4374 = fcmp fast olt float %4276, %4273
  %4375 = or i1 %4373, %4374
  br i1 %4375, label %4376, label %4467

; <label>:4376                                    ; preds = %4366
  %4377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.i32 %4377, 0
  %4379 = call i32 @dx.op.binary.i32(i32 40, i32 %176, i32 %4378)  ; UMin(a,b)
  %4380 = mul i32 %4379, 36
  %4381 = add i32 %4380, 4
  %4382 = add i32 %4381, %258
  %4383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4382, i32 undef)  ; BufferLoad(srv,index,wot)
  %4384 = extractvalue %dx.types.ResRet.i32 %4383, 0
  %4385 = and i32 %4384, 32767
  %4386 = mul nuw nsw i32 %4385, 928
  %4387 = add nuw nsw i32 %4386, 44
  %4388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4387, i32 undef)  ; BufferLoad(srv,index,wot)
  %4389 = extractvalue %dx.types.ResRet.f32 %4388, 0
  %4390 = add nuw nsw i32 %4386, 48
  %4391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4390, i32 undef)  ; BufferLoad(srv,index,wot)
  %4392 = extractvalue %dx.types.ResRet.f32 %4391, 0
  %4393 = extractvalue %dx.types.ResRet.f32 %4391, 1
  %4394 = extractvalue %dx.types.ResRet.f32 %4391, 2
  %4395 = add nuw nsw i32 %4386, 60
  %4396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4395, i32 undef)  ; BufferLoad(srv,index,wot)
  %4397 = extractvalue %dx.types.ResRet.f32 %4396, 0
  %4398 = extractvalue %dx.types.ResRet.f32 %4396, 1
  %4399 = extractvalue %dx.types.ResRet.f32 %4396, 2
  %4400 = fmul fast float %4392, 0x3F847AE140000000
  %4401 = fmul fast float %4393, 0x3F847AE140000000
  %4402 = fmul fast float %4394, 0x3F847AE140000000
  %4403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.f32 %4403, 0
  %4405 = extractvalue %dx.types.CBufRet.f32 %4403, 1
  %4406 = extractvalue %dx.types.CBufRet.f32 %4403, 2
  %4407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4408 = extractvalue %dx.types.CBufRet.f32 %4407, 0
  %4409 = extractvalue %dx.types.CBufRet.f32 %4407, 1
  %4410 = call float @dx.op.dot3.f32(i32 55, float %4404, float %4405, float %4406, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4411 = select i1 %1386, float %4408, float %4404
  %4412 = select i1 %1386, float %4410, float %4405
  %4413 = select i1 %1386, float %4409, float %4406
  %4414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.f32 %4414, 0
  %4416 = extractvalue %dx.types.CBufRet.f32 %4414, 1
  %4417 = extractvalue %dx.types.CBufRet.f32 %4414, 2
  %4418 = fadd fast float %4397, %4392
  %4419 = fmul fast float %4418, 0x3F847AE140000000
  %4420 = fadd fast float %4398, %4393
  %4421 = fmul fast float %4420, 0x3F847AE140000000
  %4422 = fadd fast float %4399, %4394
  %4423 = fmul fast float %4422, 0x3F847AE140000000
  %4424 = call float @dx.op.dot3.f32(i32 55, float %4415, float %4416, float %4417, float %1291, float %1292, float %1293)  ; Dot3(ax,ay,az,bx,by,bz)
  %4425 = fcmp fast ogt float %4389, 0.000000e+00
  %4426 = select i1 %4425, float 1.000000e+00, float -1.000000e+00
  %4427 = fmul fast float %4426, 5.000000e-01
  %4428 = fmul fast float %4427, %4424
  %4429 = fmul fast float %4426, %4389
  %4430 = fadd fast float %4428, 4.921875e-01
  %4431 = fadd fast float %4429, -3.125000e-02
  %4432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %4430, float 0x3FB25F3060000000, float %4431, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4433 = extractvalue %dx.types.ResRet.f32 %4432, 0
  %4434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %4435 = extractvalue %dx.types.CBufRet.f32 %4434, 0
  %4436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %4437 = extractvalue %dx.types.CBufRet.f32 %4436, 0
  %4438 = fmul fast float %4437, %4435
  %4439 = extractvalue %dx.types.CBufRet.f32 %4436, 1
  %4440 = fadd fast float %4438, %4439
  %4441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %4442 = extractvalue %dx.types.CBufRet.f32 %4441, 0
  %4443 = fmul fast float %4442, %3500
  %4444 = extractvalue %dx.types.CBufRet.f32 %4441, 1
  %4445 = fadd fast float %4443, %4444
  %4446 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4447 = extractvalue %dx.types.CBufRet.f32 %4434, 3
  %4448 = extractvalue %dx.types.CBufRet.f32 %4436, 2
  %4449 = fmul fast float %4448, %4447
  %4450 = extractvalue %dx.types.CBufRet.f32 %4436, 3
  %4451 = fadd fast float %4449, %4450
  %4452 = fmul fast float %4433, 0x400921FB60000000
  %4453 = fmul fast float %4452, %4440
  %4454 = fmul fast float %4453, %4446
  %4455 = fmul fast float %4411, %4400
  %4456 = fmul fast float %4455, %4454
  %4457 = fmul fast float %4412, %4401
  %4458 = fmul fast float %4457, %4454
  %4459 = fmul fast float %4413, %4402
  %4460 = fmul fast float %4459, %4454
  %4461 = fmul fast float %4400, %2215
  %4462 = fmul fast float %4461, %4451
  %4463 = fmul fast float %4401, %2216
  %4464 = fmul fast float %4463, %4451
  %4465 = fmul fast float %4402, %2217
  %4466 = fmul fast float %4465, %4451
  br label %4467

; <label>:4467                                    ; preds = %4376, %4366
  %4468 = phi float [ %4419, %4376 ], [ 0.000000e+00, %4366 ]
  %4469 = phi float [ %4421, %4376 ], [ 0.000000e+00, %4366 ]
  %4470 = phi float [ %4423, %4376 ], [ 0.000000e+00, %4366 ]
  %4471 = phi float [ %4456, %4376 ], [ 0.000000e+00, %4366 ]
  %4472 = phi float [ %4458, %4376 ], [ 0.000000e+00, %4366 ]
  %4473 = phi float [ %4460, %4376 ], [ 0.000000e+00, %4366 ]
  %4474 = phi float [ %4462, %4376 ], [ 0.000000e+00, %4366 ]
  %4475 = phi float [ %4464, %4376 ], [ 0.000000e+00, %4366 ]
  %4476 = phi float [ %4466, %4376 ], [ 0.000000e+00, %4366 ]
  %4477 = call float @dx.op.binary.f32(i32 35, float %4468, float 0x3F10000000000000)  ; FMax(a,b)
  %4478 = call float @dx.op.binary.f32(i32 35, float %4469, float 0x3F10000000000000)  ; FMax(a,b)
  %4479 = call float @dx.op.binary.f32(i32 35, float %4470, float 0x3F10000000000000)  ; FMax(a,b)
  %4480 = fdiv fast float 1.000000e+00, %4477
  %4481 = fdiv fast float 1.000000e+00, %4478
  %4482 = fdiv fast float 1.000000e+00, %4479
  %4483 = fmul fast float %4468, 0xBFF7154760000000
  %4484 = fmul fast float %4469, 0xBFF7154760000000
  %4485 = fmul fast float %4470, 0xBFF7154760000000
  %4486 = extractvalue %dx.types.CBufRet.f32 %4275, 3
  %4487 = call float @dx.op.dot3.f32(i32 55, float %4480, float %4481, float %4482, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4488 = fmul fast float %4486, %4487
  %4489 = call float @dx.op.binary.f32(i32 35, float %4277, float %4272)  ; FMax(a,b)
  %4490 = fsub fast float %4273, %4489
  %4491 = call float @dx.op.binary.f32(i32 35, float %4490, float 0.000000e+00)  ; FMax(a,b)
  %4492 = fsub fast float %4273, %4272
  %4493 = call float @dx.op.binary.f32(i32 35, float %4492, float 0.000000e+00)  ; FMax(a,b)
  %4494 = call float @dx.op.binary.f32(i32 36, float %4493, float %4488)  ; FMin(a,b)
  %4495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %4496 = extractvalue %dx.types.CBufRet.f32 %4495, 0
  %4497 = fmul fast float %4496, %4494
  %4498 = fmul fast float %4497, %4483
  %4499 = fmul fast float %4497, %4484
  %4500 = fmul fast float %4497, %4485
  %4501 = call float @dx.op.unary.f32(i32 21, float %4498)  ; Exp(value)
  %4502 = call float @dx.op.unary.f32(i32 21, float %4499)  ; Exp(value)
  %4503 = call float @dx.op.unary.f32(i32 21, float %4500)  ; Exp(value)
  %4504 = fmul fast float %4501, %4471
  %4505 = fmul fast float %4502, %4472
  %4506 = fmul fast float %4503, %4473
  %4507 = extractvalue %dx.types.CBufRet.f32 %4495, 1
  %4508 = fmul fast float %4507, %4494
  %4509 = fmul fast float %4508, %4483
  %4510 = fmul fast float %4508, %4484
  %4511 = fmul fast float %4508, %4485
  %4512 = call float @dx.op.unary.f32(i32 21, float %4509)  ; Exp(value)
  %4513 = call float @dx.op.unary.f32(i32 21, float %4510)  ; Exp(value)
  %4514 = call float @dx.op.unary.f32(i32 21, float %4511)  ; Exp(value)
  %4515 = fmul fast float %4512, %4474
  %4516 = fmul fast float %4513, %4475
  %4517 = fmul fast float %4514, %4476
  %4518 = fadd fast float %4515, %4504
  %4519 = fadd fast float %4516, %4505
  %4520 = fadd fast float %4517, %4506
  %4521 = fmul fast float %4491, %4483
  %4522 = fmul fast float %4491, %4484
  %4523 = fmul fast float %4491, %4485
  %4524 = call float @dx.op.unary.f32(i32 21, float %4521)  ; Exp(value)
  %4525 = call float @dx.op.unary.f32(i32 21, float %4522)  ; Exp(value)
  %4526 = call float @dx.op.unary.f32(i32 21, float %4523)  ; Exp(value)
  %4527 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4528 = call float @dx.op.unary.f32(i32 7, float %4525)  ; Saturate(value)
  %4529 = call float @dx.op.unary.f32(i32 7, float %4526)  ; Saturate(value)
  %4530 = fmul fast float %4527, %4518
  %4531 = fmul fast float %4528, %4519
  %4532 = fmul fast float %4529, %4520
  %4533 = fsub fast float %4518, %4530
  %4534 = fsub fast float %4519, %4531
  %4535 = fsub fast float %4520, %4532
  %4536 = fmul fast float %4480, %4370
  %4537 = fmul fast float %4536, %4533
  %4538 = fmul fast float %4481, %4371
  %4539 = fmul fast float %4538, %4534
  %4540 = fmul fast float %4482, %4372
  %4541 = fmul fast float %4540, %4535
  %4542 = fadd fast float %4537, %4367
  %4543 = fadd fast float %4539, %4368
  %4544 = fadd fast float %4541, %4369
  %4545 = fmul fast float %4527, %4370
  %4546 = fmul fast float %4528, %4371
  %4547 = fmul fast float %4529, %4372
  %4548 = fmul fast float %4493, %4483
  %4549 = fmul fast float %4493, %4484
  %4550 = fmul fast float %4493, %4485
  %4551 = call float @dx.op.unary.f32(i32 21, float %4548)  ; Exp(value)
  %4552 = call float @dx.op.unary.f32(i32 21, float %4549)  ; Exp(value)
  %4553 = call float @dx.op.unary.f32(i32 21, float %4550)  ; Exp(value)
  %4554 = call float @dx.op.unary.f32(i32 7, float %4551)  ; Saturate(value)
  %4555 = call float @dx.op.unary.f32(i32 7, float %4552)  ; Saturate(value)
  %4556 = call float @dx.op.unary.f32(i32 7, float %4553)  ; Saturate(value)
  %4557 = fmul fast float %4554, %4518
  %4558 = fmul fast float %4555, %4519
  %4559 = fmul fast float %4556, %4520
  %4560 = fsub fast float %4518, %4557
  %4561 = fsub fast float %4519, %4558
  %4562 = fsub fast float %4520, %4559
  %4563 = fmul fast float %4560, %4480
  %4564 = fmul fast float %4561, %4481
  %4565 = fmul fast float %4562, %4482
  %4566 = fsub fast float %4272, %4276
  %4567 = fmul fast float %4278, %4566
  %4568 = call float @dx.op.unary.f32(i32 7, float %4567)  ; Saturate(value)
  %4569 = fmul fast float %4568, %4568
  %4570 = fmul fast float %4568, 2.000000e+00
  %4571 = fsub fast float 3.000000e+00, %4570
  %4572 = fmul fast float %4569, %4571
  %4573 = fsub fast float %4563, %4542
  %4574 = fsub fast float %4564, %4543
  %4575 = fsub fast float %4565, %4544
  %4576 = fmul fast float %4572, %4573
  %4577 = fmul fast float %4572, %4574
  %4578 = fmul fast float %4572, %4575
  %4579 = fadd fast float %4576, %4542
  %4580 = fadd fast float %4577, %4543
  %4581 = fadd fast float %4578, %4544
  %4582 = fsub fast float %4554, %4545
  %4583 = fsub fast float %4555, %4546
  %4584 = fsub fast float %4556, %4547
  %4585 = fmul fast float %4572, %4582
  %4586 = fmul fast float %4572, %4583
  %4587 = fmul fast float %4572, %4584
  %4588 = fadd fast float %4585, %4545
  %4589 = fadd fast float %4586, %4546
  %4590 = fadd fast float %4587, %4547
  br i1 %4373, label %4591, label %4659

; <label>:4591                                    ; preds = %4467
  %4592 = extractvalue %dx.types.CBufRet.f32 %4495, 3
  %4593 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4592)  ; Dot3(ax,ay,az,bx,by,bz)
  %4594 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1388, float %1389, float %1390)  ; Dot3(ax,ay,az,bx,by,bz)
  %4595 = fdiv fast float 1.000000e+00, %4594
  %4596 = fmul fast float %4595, %4593
  %4597 = fcmp ogt float %1293, -0.000000e+00
  %4598 = select i1 %4597, float %4592, float %4596
  %4599 = call float @dx.op.binary.f32(i32 36, float %4598, float %4488)  ; FMin(a,b)
  %4600 = fmul fast float %4496, %4599
  %4601 = fmul fast float %4600, %4483
  %4602 = fmul fast float %4600, %4484
  %4603 = fmul fast float %4600, %4485
  %4604 = call float @dx.op.unary.f32(i32 21, float %4601)  ; Exp(value)
  %4605 = call float @dx.op.unary.f32(i32 21, float %4602)  ; Exp(value)
  %4606 = call float @dx.op.unary.f32(i32 21, float %4603)  ; Exp(value)
  %4607 = fmul fast float %4604, %4471
  %4608 = fmul fast float %4605, %4472
  %4609 = fmul fast float %4606, %4473
  %4610 = fmul fast float %4507, %4599
  %4611 = fmul fast float %4610, %4483
  %4612 = fmul fast float %4610, %4484
  %4613 = fmul fast float %4610, %4485
  %4614 = call float @dx.op.unary.f32(i32 21, float %4611)  ; Exp(value)
  %4615 = call float @dx.op.unary.f32(i32 21, float %4612)  ; Exp(value)
  %4616 = call float @dx.op.unary.f32(i32 21, float %4613)  ; Exp(value)
  %4617 = fmul fast float %4614, %4474
  %4618 = fmul fast float %4615, %4475
  %4619 = fmul fast float %4616, %4476
  %4620 = fadd fast float %4617, %4607
  %4621 = fadd fast float %4618, %4608
  %4622 = fadd fast float %4619, %4609
  %4623 = fmul fast float %4598, %4483
  %4624 = fmul fast float %4598, %4484
  %4625 = fmul fast float %4598, %4485
  %4626 = call float @dx.op.unary.f32(i32 21, float %4623)  ; Exp(value)
  %4627 = call float @dx.op.unary.f32(i32 21, float %4624)  ; Exp(value)
  %4628 = call float @dx.op.unary.f32(i32 21, float %4625)  ; Exp(value)
  %4629 = call float @dx.op.unary.f32(i32 7, float %4626)  ; Saturate(value)
  %4630 = call float @dx.op.unary.f32(i32 7, float %4627)  ; Saturate(value)
  %4631 = call float @dx.op.unary.f32(i32 7, float %4628)  ; Saturate(value)
  %4632 = fmul fast float %4629, %4620
  %4633 = fmul fast float %4630, %4621
  %4634 = fmul fast float %4631, %4622
  %4635 = fsub fast float %4620, %4632
  %4636 = fsub fast float %4621, %4633
  %4637 = fsub fast float %4622, %4634
  %4638 = fmul fast float %4635, %4480
  %4639 = fmul fast float %4636, %4481
  %4640 = fmul fast float %4637, %4482
  %4641 = fsub fast float %4579, %4638
  %4642 = fsub fast float %4580, %4639
  %4643 = fsub fast float %4581, %4640
  %4644 = fmul fast float %4641, %4113
  %4645 = fmul fast float %4642, %4113
  %4646 = fmul fast float %4643, %4113
  %4647 = fadd fast float %4644, %4638
  %4648 = fadd fast float %4645, %4639
  %4649 = fadd fast float %4646, %4640
  %4650 = fsub fast float %4588, %4629
  %4651 = fsub fast float %4589, %4630
  %4652 = fsub fast float %4590, %4631
  %4653 = fmul fast float %4650, %4113
  %4654 = fmul fast float %4651, %4113
  %4655 = fmul fast float %4652, %4113
  %4656 = fadd fast float %4653, %4629
  %4657 = fadd fast float %4654, %4630
  %4658 = fadd fast float %4655, %4631
  br label %4659

; <label>:4659                                    ; preds = %4591, %4467
  %4660 = phi float [ %4647, %4591 ], [ %4579, %4467 ]
  %4661 = phi float [ %4648, %4591 ], [ %4580, %4467 ]
  %4662 = phi float [ %4649, %4591 ], [ %4581, %4467 ]
  %4663 = phi float [ %4656, %4591 ], [ %4588, %4467 ]
  %4664 = phi float [ %4657, %4591 ], [ %4589, %4467 ]
  %4665 = phi float [ %4658, %4591 ], [ %4590, %4467 ]
  %4666 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4667 = extractvalue %dx.types.CBufRet.i32 %4666, 3
  %4668 = and i32 %4667, 3
  %4669 = icmp ne i32 %4668, 0
  %4670 = and i32 %4667, 4
  %4671 = icmp ne i32 %4670, 0
  %4672 = and i1 %4669, %4671
  br i1 %4672, label %4673, label %4680

; <label>:4673                                    ; preds = %4659
  %4674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %50, float %4270, float %4271, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4675 = extractvalue %dx.types.ResRet.f32 %4674, 0
  %4676 = fsub fast float 1.000000e+00, %4675
  %4677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %4678 = extractvalue %dx.types.CBufRet.f32 %4677, 0
  %4679 = fcmp fast olt float %4676, %4678
  br label %4683

; <label>:4680                                    ; preds = %4659
  %4681 = icmp eq i32 %4670, 0
  %4682 = and i1 %4669, %4681
  br label %4683

; <label>:4683                                    ; preds = %4680, %4673
  %4684 = phi i1 [ %4679, %4673 ], [ %4682, %4680 ]
  %4685 = xor i1 %1386, %4684
  %4686 = select i1 %4685, float 0.000000e+00, float %4113
  %4687 = fcmp fast ogt float %4686, 0.000000e+00
  %4688 = select i1 %4687, float %4270, float 0.000000e+00
  %4689 = select i1 %4687, float %4271, float 0.000000e+00
  %4690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %50, float %4688, float %4689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4691 = extractvalue %dx.types.ResRet.f32 %4690, 0
  %4692 = extractvalue %dx.types.ResRet.f32 %4690, 1
  %4693 = extractvalue %dx.types.ResRet.f32 %4690, 2
  %4694 = fmul fast float %4692, %4686
  %4695 = fmul fast float %4693, %4686
  %4696 = select i1 %1386, float 0.000000e+00, float %4694
  %4697 = select i1 %1386, float 0.000000e+00, float %4695
  %4698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.f32 %4698, 1
  %4700 = fmul fast float %4686, %4663
  %4701 = fmul fast float %4700, %4691
  %4702 = fmul fast float %4701, %4699
  %4703 = fmul fast float %4699, %4664
  %4704 = fmul fast float %4703, %4696
  %4705 = fmul fast float %4699, %4665
  %4706 = fmul fast float %4705, %4697
  %4707 = fadd fast float %4702, %4660
  %4708 = fadd fast float %4704, %4661
  %4709 = fadd fast float %4706, %4662
  br label %4749

; <label>:4710                                    ; preds = %4269
  %4711 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4712 = extractvalue %dx.types.CBufRet.i32 %4711, 3
  %4713 = and i32 %4712, 3
  %4714 = icmp ne i32 %4713, 0
  %4715 = and i32 %4712, 4
  %4716 = icmp ne i32 %4715, 0
  %4717 = and i1 %4714, %4716
  br i1 %4717, label %4718, label %4725

; <label>:4718                                    ; preds = %4710
  %4719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %50, float %4270, float %4271, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4720 = extractvalue %dx.types.ResRet.f32 %4719, 0
  %4721 = fsub fast float 1.000000e+00, %4720
  %4722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %4723 = extractvalue %dx.types.CBufRet.f32 %4722, 0
  %4724 = fcmp fast olt float %4721, %4723
  br label %4728

; <label>:4725                                    ; preds = %4710
  %4726 = icmp eq i32 %4715, 0
  %4727 = and i1 %4714, %4726
  br label %4728

; <label>:4728                                    ; preds = %4725, %4718
  %4729 = phi i1 [ %4724, %4718 ], [ %4727, %4725 ]
  %4730 = xor i1 %1386, %4729
  %4731 = select i1 %4730, float 0.000000e+00, float %4113
  %4732 = fcmp fast ogt float %4731, 0.000000e+00
  %4733 = select i1 %4732, float %4270, float 0.000000e+00
  %4734 = select i1 %4732, float %4271, float 0.000000e+00
  %4735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %50, float %4733, float %4734, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4736 = extractvalue %dx.types.ResRet.f32 %4735, 0
  %4737 = extractvalue %dx.types.ResRet.f32 %4735, 1
  %4738 = extractvalue %dx.types.ResRet.f32 %4735, 2
  %4739 = fmul fast float %4736, %4731
  %4740 = fmul fast float %4737, %4731
  %4741 = fmul fast float %4738, %4731
  %4742 = select i1 %1386, float 0.000000e+00, float %4740
  %4743 = select i1 %1386, float 0.000000e+00, float %4741
  %4744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4745 = extractvalue %dx.types.CBufRet.f32 %4744, 1
  %4746 = fmul fast float %4739, %4745
  %4747 = fmul fast float %4742, %4745
  %4748 = fmul fast float %4743, %4745
  br label %4749

; <label>:4749                                    ; preds = %4728, %4683
  %4750 = phi float [ %4746, %4728 ], [ %4707, %4683 ]
  %4751 = phi float [ %4747, %4728 ], [ %4708, %4683 ]
  %4752 = phi float [ %4748, %4728 ], [ %4709, %4683 ]
  %4753 = fmul fast float %4750, %2229
  %4754 = fmul fast float %4751, %2229
  %4755 = fmul fast float %4752, %2229
  %4756 = select i1 %94, float %4184, float 1.000000e+00
  %4757 = fsub fast float 1.000000e+00, %1393
  %4758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4759 = extractvalue %dx.types.CBufRet.f32 %4758, 0
  %4760 = fmul fast float %4759, %4757
  %4761 = fmul fast float %1265, 2.000000e+00
  %4762 = fmul fast float %4761, %1302
  %4763 = fsub fast float %1293, %4762
  %4764 = call float @dx.op.unary.f32(i32 7, float %4763)  ; Saturate(value)
  %4765 = fsub fast float 1.000000e+00, %4764
  %4766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4767 = extractvalue %dx.types.CBufRet.f32 %4766, 3
  %4768 = fmul fast float %4767, %4765
  %4769 = fsub fast float 1.000000e+00, %1360
  %4770 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4771 = fadd fast float %4110, %1362
  %4772 = fmul fast float %4771, %1360
  %4773 = fmul fast float %4768, %4770
  %4774 = fmul fast float %4108, %1275
  %4775 = fmul fast float %4109, %1276
  %4776 = fmul fast float %4110, %1277
  %4777 = fadd fast float %4774, %4105
  %4778 = fadd fast float %4777, %4753
  %4779 = fadd fast float %4775, %4106
  %4780 = fadd fast float %4779, %4754
  %4781 = fadd fast float %4776, %4107
  %4782 = fadd fast float %4781, %4755
  br i1 %94, label %4786, label %4783

; <label>:4783                                    ; preds = %4749
  %4784 = fmul fast float %4115, %77
  %4785 = fmul fast float %4116, %78
  br label %5585

; <label>:4786                                    ; preds = %4749
  %4787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %4788 = extractvalue %dx.types.CBufRet.f32 %4787, 0
  %4789 = extractvalue %dx.types.CBufRet.f32 %4787, 1
  %4790 = extractvalue %dx.types.CBufRet.f32 %4787, 2
  %4791 = extractvalue %dx.types.CBufRet.f32 %4787, 3
  %4792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %4793 = extractvalue %dx.types.CBufRet.f32 %4792, 0
  %4794 = extractvalue %dx.types.CBufRet.f32 %4792, 1
  %4795 = extractvalue %dx.types.CBufRet.f32 %4792, 2
  %4796 = extractvalue %dx.types.CBufRet.f32 %4792, 3
  %4797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %4798 = extractvalue %dx.types.CBufRet.f32 %4797, 0
  %4799 = extractvalue %dx.types.CBufRet.f32 %4797, 1
  %4800 = extractvalue %dx.types.CBufRet.f32 %4797, 2
  %4801 = extractvalue %dx.types.CBufRet.f32 %4797, 3
  %4802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %4803 = extractvalue %dx.types.CBufRet.f32 %4802, 0
  %4804 = extractvalue %dx.types.CBufRet.f32 %4802, 1
  %4805 = extractvalue %dx.types.CBufRet.f32 %4802, 2
  %4806 = extractvalue %dx.types.CBufRet.f32 %4802, 3
  %4807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %4808 = extractvalue %dx.types.CBufRet.f32 %4807, 3
  %4809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %4810 = extractvalue %dx.types.CBufRet.f32 %4809, 3
  %4811 = extractvalue %dx.types.CBufRet.f32 %4809, 0
  %4812 = extractvalue %dx.types.CBufRet.f32 %4809, 1
  %4813 = extractvalue %dx.types.CBufRet.f32 %4809, 2
  %4814 = fcmp fast olt float %4813, -5.000000e-01
  %4815 = fmul fast float %1290, %1289
  %4816 = fadd fast float %4815, %4791
  %4817 = call float @dx.op.dot3.f32(i32 55, float %1291, float %1292, float %1293, float %4788, float %4789, float %4790)  ; Dot3(ax,ay,az,bx,by,bz)
  %4818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4819 = extractvalue %dx.types.CBufRet.i32 %4818, 1
  %4820 = and i32 %4819, 1
  %4821 = icmp ne i32 %4820, 0
  %4822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %4823 = extractvalue %dx.types.CBufRet.f32 %4822, 2
  %4824 = fcmp fast ogt float %4823, 0.000000e+00
  %4825 = and i1 %4821, %4824
  br i1 %4825, label %4826, label %5232, !dx.controlflow.hints !134

; <label>:4826                                    ; preds = %4786
  %4827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %4828 = extractvalue %dx.types.CBufRet.f32 %4827, 3
  %4829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4830 = extractvalue %dx.types.CBufRet.f32 %4829, 2
  %4831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4832 = extractvalue %dx.types.CBufRet.f32 %4831, 2
  %4833 = fsub fast float %4830, %4832
  %4834 = and i32 %4819, 2
  %4835 = extractvalue %dx.types.CBufRet.i32 %4818, 0
  %4836 = call i32 @dx.op.binary.i32(i32 40, i32 %4835, i32 3)  ; UMin(a,b)
  %4837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %4838 = extractvalue %dx.types.CBufRet.f32 %4837, 0
  %4839 = extractvalue %dx.types.CBufRet.f32 %4837, 1
  %4840 = extractvalue %dx.types.CBufRet.f32 %4831, 0
  %4841 = extractvalue %dx.types.CBufRet.f32 %4831, 1
  %4842 = fsub fast float %4838, %4840
  %4843 = fsub fast float %4839, %4841
  %4844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %4845 = extractvalue %dx.types.CBufRet.f32 %4844, 0
  %4846 = fcmp fast ogt float %4845, 0.000000e+00
  %4847 = fsub fast float -0.000000e+00, %4842
  %4848 = fsub fast float -0.000000e+00, %4843
  %4849 = call float @dx.op.dot2.f32(i32 54, float %1291, float %1292, float %1291, float %1292)  ; Dot2(ax,ay,bx,by)
  %4850 = call float @dx.op.dot2.f32(i32 54, float %1291, float %1292, float %4847, float %4848)  ; Dot2(ax,ay,bx,by)
  %4851 = fmul fast float %4850, 2.000000e+00
  %4852 = call float @dx.op.dot2.f32(i32 54, float %4847, float %4848, float %4847, float %4848)  ; Dot2(ax,ay,bx,by)
  %4853 = fmul fast float %4845, %4845
  %4854 = fsub fast float %4852, %4853
  %4855 = fmul fast float %4851, %4851
  %4856 = fmul fast float %4849, 4.000000e+00
  %4857 = fmul fast float %4856, %4854
  %4858 = fsub fast float %4855, %4857
  %4859 = fcmp fast ogt float %4858, 0.000000e+00
  br i1 %4859, label %4860, label %4875

; <label>:4860                                    ; preds = %4826
  %4861 = fcmp fast ogt float %4851, 0.000000e+00
  %4862 = call float @dx.op.unary.f32(i32 24, float %4858)  ; Sqrt(value)
  %4863 = fsub fast float -0.000000e+00, %4862
  %4864 = select i1 %4861, float %4862, float %4863
  %4865 = fadd fast float %4864, %4851
  %4866 = fmul float %4865, -5.000000e-01
  %4867 = fdiv fast float %4866, %4849
  %4868 = call float @dx.op.binary.f32(i32 35, float %4867, float 0.000000e+00)  ; FMax(a,b)
  %4869 = call float @dx.op.binary.f32(i32 36, float %4815, float %4868)  ; FMin(a,b)
  %4870 = fdiv fast float %4854, %4866
  %4871 = call float @dx.op.binary.f32(i32 35, float %4870, float 0.000000e+00)  ; FMax(a,b)
  %4872 = call float @dx.op.binary.f32(i32 36, float %4815, float %4871)  ; FMin(a,b)
  %4873 = call float @dx.op.binary.f32(i32 36, float %4869, float %4872)  ; FMin(a,b)
  %4874 = call float @dx.op.binary.f32(i32 35, float %4869, float %4872)  ; FMax(a,b)
  br label %4875

; <label>:4875                                    ; preds = %4860, %4826
  %4876 = phi float [ %4874, %4860 ], [ -1.000000e+00, %4826 ]
  %4877 = phi float [ %4873, %4860 ], [ -1.000000e+00, %4826 ]
  %4878 = phi i1 [ true, %4860 ], [ false, %4826 ]
  %4879 = and i1 %4846, %4878
  br i1 %4879, label %4880, label %4882

; <label>:4880                                    ; preds = %4875
  %4881 = fcmp fast oeq float %4877, %4876
  br i1 %4881, label %5185, label %4883

; <label>:4882                                    ; preds = %4875
  br i1 %4846, label %5185, label %4883

; <label>:4883                                    ; preds = %4882, %4880
  %4884 = phi float [ %4815, %4882 ], [ %4876, %4880 ]
  %4885 = phi float [ 0.000000e+00, %4882 ], [ %4877, %4880 ]
  %4886 = icmp ne i32 %4834, 0
  %4887 = fmul fast float %4884, %1293
  %4888 = fadd fast float %4887, %4828
  %4889 = fmul fast float %4888, %4884
  %4890 = select i1 %4886, float 0.000000e+00, float %4889
  %4891 = fcmp fast oeq float %1293, 0.000000e+00
  %4892 = fdiv fast float %4833, %1293
  %4893 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4892)  ; FMax(a,b)
  %4894 = select i1 %4891, float %4884, float %4893
  %4895 = call float @dx.op.binary.f32(i32 36, float %4884, float %4894)  ; FMin(a,b)
  %4896 = fcmp fast ogt float %1293, 0.000000e+00
  %4897 = fcmp fast olt float %4833, 0.000000e+00
  br i1 %4896, label %4898, label %4955

; <label>:4898                                    ; preds = %4883
  %4899 = icmp eq i32 %4834, 0
  br i1 %4897, label %4900, label %4944

; <label>:4900                                    ; preds = %4898
  %4901 = select i1 %4899, float %4884, float 0.000000e+00
  %4902 = fsub fast float -0.000000e+00, %4901
  %4903 = call float @dx.op.unary.f32(i32 6, float %4902)  ; FAbs(value)
  %4904 = fmul fast float %4901, %1293
  %4905 = fadd fast float %4904, %4828
  %4906 = fmul fast float %4903, %4905
  %4907 = fsub fast float %4890, %4906
  %4908 = fsub fast float %4884, %4903
  %4909 = select i1 %4899, float %4908, float 0.000000e+00
  %4910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4911 = extractvalue %dx.types.CBufRet.f32 %4910, 0
  %4912 = extractvalue %dx.types.CBufRet.f32 %4910, 1
  %4913 = extractvalue %dx.types.CBufRet.f32 %4910, 2
  %4914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4915 = extractvalue %dx.types.CBufRet.f32 %4914, 0
  %4916 = extractvalue %dx.types.CBufRet.f32 %4914, 1
  %4917 = extractvalue %dx.types.CBufRet.f32 %4914, 2
  %4918 = extractvalue %dx.types.CBufRet.f32 %4914, 3
  %4919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4920 = extractvalue %dx.types.CBufRet.f32 %4919, 3
  %4921 = call float @dx.op.binary.f32(i32 36, float %4907, float %4920)  ; FMin(a,b)
  %4922 = fmul fast float %4918, %4909
  %4923 = call float @dx.op.unary.f32(i32 7, float %4922)  ; Saturate(value)
  %4924 = fsub fast float %4915, %4911
  %4925 = fsub fast float %4916, %4912
  %4926 = fsub fast float %4917, %4913
  %4927 = fmul fast float %4923, %4924
  %4928 = fmul fast float %4923, %4925
  %4929 = fmul fast float %4923, %4926
  %4930 = fadd fast float %4927, %4911
  %4931 = fadd fast float %4928, %4912
  %4932 = fadd fast float %4929, %4913
  %4933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4934 = extractvalue %dx.types.CBufRet.f32 %4933, 0
  %4935 = extractvalue %dx.types.CBufRet.f32 %4933, 1
  %4936 = fadd fast float %4935, %4934
  %4937 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4938 = extractvalue %dx.types.CBufRet.f32 %4933, 2
  %4939 = extractvalue %dx.types.CBufRet.f32 %4933, 3
  %4940 = fadd fast float %4939, %4938
  %4941 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4942 = fmul fast float %4937, %4921
  %4943 = fmul fast float %4942, %4941
  br label %5185

; <label>:4944                                    ; preds = %4898
  br i1 %4899, label %4945, label %4966

; <label>:4945                                    ; preds = %4944
  %4946 = call float @dx.op.binary.f32(i32 36, float %4895, float %4885)  ; FMin(a,b)
  %4947 = fsub fast float %4895, %4946
  %4948 = fsub fast float %4947, %4884
  %4949 = call float @dx.op.unary.f32(i32 6, float %4948)  ; FAbs(value)
  %4950 = fadd fast float %4947, %4884
  %4951 = fmul fast float %4950, %1293
  %4952 = fadd fast float %4951, %4828
  %4953 = fmul fast float %4952, %4949
  %4954 = fsub fast float %4890, %4953
  br label %4966

; <label>:4955                                    ; preds = %4883
  br i1 %4897, label %4956, label %4966

; <label>:4956                                    ; preds = %4955
  %4957 = call float @dx.op.binary.f32(i32 35, float %4885, float %4895)  ; FMax(a,b)
  %4958 = icmp eq i32 %4834, 0
  %4959 = select i1 %4958, float %4895, float 0.000000e+00
  %4960 = fsub fast float -0.000000e+00, %4959
  %4961 = call float @dx.op.unary.f32(i32 6, float %4960)  ; FAbs(value)
  %4962 = fmul fast float %4959, %1293
  %4963 = fadd fast float %4962, %4828
  %4964 = fmul fast float %4961, %4963
  %4965 = fsub fast float %4890, %4964
  br label %4966

; <label>:4966                                    ; preds = %4956, %4955, %4945, %4944
  %4967 = phi float [ %4885, %4944 ], [ %4885, %4945 ], [ %4957, %4956 ], [ %4885, %4955 ]
  %4968 = phi float [ 0.000000e+00, %4944 ], [ %4949, %4945 ], [ %4961, %4956 ], [ 0.000000e+00, %4955 ]
  %4969 = phi float [ %4890, %4944 ], [ %4954, %4945 ], [ %4965, %4956 ], [ %4890, %4955 ]
  %4970 = phi float [ %4895, %4944 ], [ %4895, %4945 ], [ %4884, %4956 ], [ %4884, %4955 ]
  %4971 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 0
  store float -1.000000e+00, float* %4971, align 4, !tbaa !91, !noalias !135
  %4972 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 1
  store float -1.000000e+00, float* %4972, align 4, !tbaa !91, !noalias !135
  %4973 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 2
  store float -1.000000e+00, float* %4973, align 4, !tbaa !91, !noalias !135
  %4974 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 0
  store float -1.000000e+00, float* %4974, align 4, !tbaa !91, !noalias !135
  %4975 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 1
  store float -1.000000e+00, float* %4975, align 4, !tbaa !91, !noalias !135
  %4976 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 2
  store float -1.000000e+00, float* %4976, align 4, !tbaa !91, !noalias !135
  %4977 = icmp sgt i32 %4836, 0
  br i1 %4977, label %4978, label %5039

; <label>:4978                                    ; preds = %4966
  br label %4979

; <label>:4979                                    ; preds = %5028, %4978
  %4980 = phi i32 [ %5029, %5028 ], [ 0, %4978 ]
  %4981 = phi i32 [ %5030, %5028 ], [ 0, %4978 ]
  %4982 = add nuw i32 %4981, 171
  %4983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %4982)  ; CBufferLoadLegacy(handle,regIndex)
  %4984 = extractvalue %dx.types.CBufRet.f32 %4983, 0
  %4985 = extractvalue %dx.types.CBufRet.f32 %4983, 1
  %4986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4987 = extractvalue %dx.types.CBufRet.f32 %4986, 0
  %4988 = extractvalue %dx.types.CBufRet.f32 %4986, 1
  %4989 = fsub fast float %4984, %4987
  %4990 = fsub fast float %4985, %4988
  %4991 = extractvalue %dx.types.CBufRet.f32 %4983, 2
  %4992 = fsub fast float -0.000000e+00, %4989
  %4993 = fsub fast float -0.000000e+00, %4990
  %4994 = call float @dx.op.dot2.f32(i32 54, float %1291, float %1292, float %4992, float %4993)  ; Dot2(ax,ay,bx,by)
  %4995 = fmul fast float %4994, 2.000000e+00
  %4996 = call float @dx.op.dot2.f32(i32 54, float %4992, float %4993, float %4992, float %4993)  ; Dot2(ax,ay,bx,by)
  %4997 = fmul fast float %4991, %4991
  %4998 = fsub fast float %4996, %4997
  %4999 = fmul fast float %4995, %4995
  %5000 = fmul fast float %4856, %4998
  %5001 = fsub fast float %4999, %5000
  %5002 = fcmp fast ogt float %5001, 0.000000e+00
  br i1 %5002, label %5003, label %5018

; <label>:5003                                    ; preds = %4979
  %5004 = fcmp fast ogt float %4995, 0.000000e+00
  %5005 = call float @dx.op.unary.f32(i32 24, float %5001)  ; Sqrt(value)
  %5006 = fsub fast float -0.000000e+00, %5005
  %5007 = select i1 %5004, float %5005, float %5006
  %5008 = fadd fast float %5007, %4995
  %5009 = fmul float %5008, -5.000000e-01
  %5010 = fdiv fast float %5009, %4849
  %5011 = call float @dx.op.binary.f32(i32 35, float %5010, float 0.000000e+00)  ; FMax(a,b)
  %5012 = call float @dx.op.binary.f32(i32 36, float %4884, float %5011)  ; FMin(a,b)
  %5013 = fdiv fast float %4998, %5009
  %5014 = call float @dx.op.binary.f32(i32 35, float %5013, float 0.000000e+00)  ; FMax(a,b)
  %5015 = call float @dx.op.binary.f32(i32 36, float %4884, float %5014)  ; FMin(a,b)
  %5016 = call float @dx.op.binary.f32(i32 36, float %5012, float %5015)  ; FMin(a,b)
  %5017 = call float @dx.op.binary.f32(i32 35, float %5012, float %5015)  ; FMax(a,b)
  br label %5018

; <label>:5018                                    ; preds = %5003, %4979
  %5019 = phi float [ %5017, %5003 ], [ -1.000000e+00, %4979 ]
  %5020 = phi float [ %5016, %5003 ], [ -1.000000e+00, %4979 ]
  %5021 = phi i1 [ true, %5003 ], [ false, %4979 ]
  br i1 %5021, label %5022, label %5028

; <label>:5022                                    ; preds = %5018
  %5023 = call float @dx.op.binary.f32(i32 35, float %4967, float %5020)  ; FMax(a,b)
  %5024 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 %4981
  store float %5023, float* %5024, align 4, !tbaa !91, !noalias !135
  %5025 = call float @dx.op.binary.f32(i32 35, float %4967, float %5019)  ; FMax(a,b)
  %5026 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 %4981
  store float %5025, float* %5026, align 4, !tbaa !91, !noalias !135
  %5027 = add nsw i32 %4980, 1
  br label %5028

; <label>:5028                                    ; preds = %5022, %5018
  %5029 = phi i32 [ %5027, %5022 ], [ %4980, %5018 ]
  %5030 = add nuw nsw i32 %4981, 1
  %5031 = icmp eq i32 %5030, %4836
  br i1 %5031, label %5032, label %4979

; <label>:5032                                    ; preds = %5028
  %5033 = load float, float* %4973, align 4, !tbaa !91, !alias.scope !151, !noalias !154
  %5034 = load float, float* %4972, align 4, !tbaa !91, !alias.scope !157, !noalias !158
  %5035 = load float, float* %4971, align 4, !tbaa !91, !alias.scope !159, !noalias !160
  %5036 = load float, float* %4976, align 4, !tbaa !91, !alias.scope !161, !noalias !164
  %5037 = load float, float* %4975, align 4, !tbaa !91, !alias.scope !167, !noalias !168
  %5038 = load float, float* %4974, align 4, !tbaa !91, !alias.scope !169, !noalias !170
  br label %5039

; <label>:5039                                    ; preds = %5032, %4966
  %5040 = phi float [ -1.000000e+00, %4966 ], [ %5038, %5032 ]
  %5041 = phi float [ -1.000000e+00, %4966 ], [ %5037, %5032 ]
  %5042 = phi float [ -1.000000e+00, %4966 ], [ %5036, %5032 ]
  %5043 = phi float [ -1.000000e+00, %4966 ], [ %5035, %5032 ]
  %5044 = phi float [ -1.000000e+00, %4966 ], [ %5034, %5032 ]
  %5045 = phi float [ -1.000000e+00, %4966 ], [ %5033, %5032 ]
  %5046 = phi i32 [ 0, %4966 ], [ %5029, %5032 ]
  %5047 = call float @dx.op.binary.f32(i32 36, float %5044, float %5045)  ; FMin(a,b)
  %5048 = call float @dx.op.binary.f32(i32 36, float %5043, float %5047)  ; FMin(a,b)
  %5049 = call float @dx.op.binary.f32(i32 35, float %5043, float %5044)  ; FMax(a,b)
  %5050 = call float @dx.op.binary.f32(i32 36, float %5049, float %5045)  ; FMin(a,b)
  %5051 = call float @dx.op.binary.f32(i32 36, float %5043, float %5044)  ; FMin(a,b)
  %5052 = call float @dx.op.binary.f32(i32 35, float %5051, float %5050)  ; FMax(a,b)
  %5053 = call float @dx.op.binary.f32(i32 35, float %5044, float %5045)  ; FMax(a,b)
  %5054 = call float @dx.op.binary.f32(i32 35, float %5043, float %5053)  ; FMax(a,b)
  store float %5048, float* %4971, align 4, !tbaa !91, !alias.scope !159, !noalias !160
  store float %5052, float* %4972, align 4, !tbaa !91, !alias.scope !157, !noalias !158
  store float %5054, float* %4973, align 4, !tbaa !91, !alias.scope !151, !noalias !154
  %5055 = call float @dx.op.binary.f32(i32 36, float %5041, float %5042)  ; FMin(a,b)
  %5056 = call float @dx.op.binary.f32(i32 36, float %5040, float %5055)  ; FMin(a,b)
  %5057 = call float @dx.op.binary.f32(i32 35, float %5040, float %5041)  ; FMax(a,b)
  %5058 = call float @dx.op.binary.f32(i32 36, float %5057, float %5042)  ; FMin(a,b)
  %5059 = call float @dx.op.binary.f32(i32 36, float %5040, float %5041)  ; FMin(a,b)
  %5060 = call float @dx.op.binary.f32(i32 35, float %5059, float %5058)  ; FMax(a,b)
  %5061 = call float @dx.op.binary.f32(i32 35, float %5041, float %5042)  ; FMax(a,b)
  %5062 = call float @dx.op.binary.f32(i32 35, float %5040, float %5061)  ; FMax(a,b)
  store float %5056, float* %4974, align 4, !tbaa !91, !alias.scope !169, !noalias !170
  store float %5060, float* %4975, align 4, !tbaa !91, !alias.scope !167, !noalias !168
  store float %5062, float* %4976, align 4, !tbaa !91, !alias.scope !161, !noalias !164
  %5063 = sub nsw i32 3, %5046
  %5064 = icmp sgt i32 %5063, 2
  br i1 %5064, label %5065, label %5103

; <label>:5065                                    ; preds = %5039
  %5066 = icmp eq i32 %4834, 0
  %5067 = fsub fast float %4884, %4968
  %5068 = select i1 %5066, float %5067, float %4968
  %5069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5070 = extractvalue %dx.types.CBufRet.f32 %5069, 0
  %5071 = extractvalue %dx.types.CBufRet.f32 %5069, 1
  %5072 = extractvalue %dx.types.CBufRet.f32 %5069, 2
  %5073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5074 = extractvalue %dx.types.CBufRet.f32 %5073, 0
  %5075 = extractvalue %dx.types.CBufRet.f32 %5073, 1
  %5076 = extractvalue %dx.types.CBufRet.f32 %5073, 2
  %5077 = extractvalue %dx.types.CBufRet.f32 %5073, 3
  %5078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5079 = extractvalue %dx.types.CBufRet.f32 %5078, 3
  %5080 = call float @dx.op.binary.f32(i32 36, float %4969, float %5079)  ; FMin(a,b)
  %5081 = fmul fast float %5077, %5068
  %5082 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5083 = fsub fast float %5074, %5070
  %5084 = fsub fast float %5075, %5071
  %5085 = fsub fast float %5076, %5072
  %5086 = fmul fast float %5082, %5083
  %5087 = fmul fast float %5082, %5084
  %5088 = fmul fast float %5082, %5085
  %5089 = fadd fast float %5086, %5070
  %5090 = fadd fast float %5087, %5071
  %5091 = fadd fast float %5088, %5072
  %5092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5093 = extractvalue %dx.types.CBufRet.f32 %5092, 0
  %5094 = extractvalue %dx.types.CBufRet.f32 %5092, 1
  %5095 = fadd fast float %5094, %5093
  %5096 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5097 = extractvalue %dx.types.CBufRet.f32 %5092, 2
  %5098 = extractvalue %dx.types.CBufRet.f32 %5092, 3
  %5099 = fadd fast float %5098, %5097
  %5100 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5101 = fmul fast float %5096, %5080
  %5102 = fmul fast float %5101, %5100
  br label %5185

; <label>:5103                                    ; preds = %5039
  %5104 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 %5063
  %5105 = load float, float* %5104, align 4, !tbaa !91, !noalias !135
  %5106 = fcmp fast olt float %5105, %4970
  %5107 = icmp sgt i32 %5046, 0
  %5108 = and i1 %5107, %5106
  br i1 %5108, label %5109, label %5146

; <label>:5109                                    ; preds = %5103
  br label %5110

; <label>:5110                                    ; preds = %5139, %5109
  %5111 = phi float [ %5140, %5139 ], [ %4968, %5109 ]
  %5112 = phi float [ %5141, %5139 ], [ %4969, %5109 ]
  %5113 = phi float [ %5121, %5139 ], [ %5105, %5109 ]
  %5114 = phi i32 [ %5118, %5139 ], [ %5063, %5109 ]
  %5115 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 %5114
  %5116 = load float, float* %5115, align 4, !tbaa !91, !noalias !135
  %5117 = icmp slt i32 %5114, 2
  %5118 = add nsw i32 %5114, 1
  %5119 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 %5118
  %5120 = load float, float* %5119, align 4, !tbaa !91, !noalias !135
  %5121 = select i1 %5117, float %5120, float %4884
  %5122 = call float @dx.op.binary.f32(i32 36, float %5121, float %5116)  ; FMin(a,b)
  %5123 = call float @dx.op.binary.f32(i32 36, float %4970, float %5122)  ; FMin(a,b)
  %5124 = icmp eq i32 %4834, 0
  %5125 = fadd fast float %5123, %5113
  %5126 = fmul fast float %5125, %1293
  %5127 = fadd fast float %5126, %4828
  br i1 %5124, label %5133, label %5128

; <label>:5128                                    ; preds = %5110
  %5129 = fsub fast float %5123, %5113
  %5130 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5129)  ; FMax(a,b)
  %5131 = fmul fast float %5130, %5127
  %5132 = fadd fast float %5131, %5112
  br label %5139

; <label>:5133                                    ; preds = %5110
  %5134 = fsub fast float %5113, %5123
  %5135 = call float @dx.op.unary.f32(i32 6, float %5134)  ; FAbs(value)
  %5136 = fadd fast float %5135, %5111
  %5137 = fmul fast float %5135, %5127
  %5138 = fsub fast float %5112, %5137
  br label %5139

; <label>:5139                                    ; preds = %5133, %5128
  %5140 = phi float [ %5130, %5128 ], [ %5136, %5133 ]
  %5141 = phi float [ %5132, %5128 ], [ %5138, %5133 ]
  %5142 = fcmp fast olt float %5121, %4970
  %5143 = icmp slt i32 %5118, 3
  %5144 = and i1 %5143, %5142
  br i1 %5144, label %5110, label %5145

; <label>:5145                                    ; preds = %5139
  br label %5146

; <label>:5146                                    ; preds = %5145, %5103
  %5147 = phi float [ %4968, %5103 ], [ %5140, %5145 ]
  %5148 = phi float [ %4969, %5103 ], [ %5141, %5145 ]
  %5149 = fsub fast float %4884, %5147
  %5150 = select i1 %4886, float %5147, float %5149
  %5151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.f32 %5151, 0
  %5153 = extractvalue %dx.types.CBufRet.f32 %5151, 1
  %5154 = extractvalue %dx.types.CBufRet.f32 %5151, 2
  %5155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5156 = extractvalue %dx.types.CBufRet.f32 %5155, 0
  %5157 = extractvalue %dx.types.CBufRet.f32 %5155, 1
  %5158 = extractvalue %dx.types.CBufRet.f32 %5155, 2
  %5159 = extractvalue %dx.types.CBufRet.f32 %5155, 3
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 3
  %5162 = call float @dx.op.binary.f32(i32 36, float %5148, float %5161)  ; FMin(a,b)
  %5163 = fmul fast float %5159, %5150
  %5164 = call float @dx.op.unary.f32(i32 7, float %5163)  ; Saturate(value)
  %5165 = fsub fast float %5156, %5152
  %5166 = fsub fast float %5157, %5153
  %5167 = fsub fast float %5158, %5154
  %5168 = fmul fast float %5164, %5165
  %5169 = fmul fast float %5164, %5166
  %5170 = fmul fast float %5164, %5167
  %5171 = fadd fast float %5168, %5152
  %5172 = fadd fast float %5169, %5153
  %5173 = fadd fast float %5170, %5154
  %5174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5175 = extractvalue %dx.types.CBufRet.f32 %5174, 0
  %5176 = extractvalue %dx.types.CBufRet.f32 %5174, 1
  %5177 = fadd fast float %5176, %5175
  %5178 = call float @dx.op.unary.f32(i32 7, float %5177)  ; Saturate(value)
  %5179 = extractvalue %dx.types.CBufRet.f32 %5174, 2
  %5180 = extractvalue %dx.types.CBufRet.f32 %5174, 3
  %5181 = fadd fast float %5180, %5179
  %5182 = call float @dx.op.unary.f32(i32 7, float %5181)  ; Saturate(value)
  %5183 = fmul fast float %5178, %5162
  %5184 = fmul fast float %5183, %5182
  br label %5185

; <label>:5185                                    ; preds = %5146, %5065, %4900, %4882, %4880
  %5186 = phi float [ %4909, %4900 ], [ %5068, %5065 ], [ %5150, %5146 ], [ 0.000000e+00, %4880 ], [ 0.000000e+00, %4882 ]
  %5187 = phi float [ %4943, %4900 ], [ %5102, %5065 ], [ %5184, %5146 ], [ 0.000000e+00, %4880 ], [ 0.000000e+00, %4882 ]
  %5188 = phi float [ %4930, %4900 ], [ %5089, %5065 ], [ %5171, %5146 ], [ 0.000000e+00, %4880 ], [ 0.000000e+00, %4882 ]
  %5189 = phi float [ %4931, %4900 ], [ %5090, %5065 ], [ %5172, %5146 ], [ 0.000000e+00, %4880 ], [ 0.000000e+00, %4882 ]
  %5190 = phi float [ %4932, %4900 ], [ %5091, %5065 ], [ %5173, %5146 ], [ 0.000000e+00, %4880 ], [ 0.000000e+00, %4882 ]
  %5191 = fmul fast float %4823, %5187
  %5192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5193 = extractvalue %dx.types.CBufRet.f32 %5192, 2
  %5194 = fsub fast float %4830, %5193
  %5195 = fcmp fast olt float %5191, -2.000000e+01
  %5196 = call float @dx.op.unary.f32(i32 21, float %5191)  ; Exp(value)
  %5197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5198 = extractvalue %dx.types.CBufRet.f32 %5197, 2
  %5199 = extractvalue %dx.types.CBufRet.f32 %5197, 3
  %5200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5201 = extractvalue %dx.types.CBufRet.f32 %5200, 2
  %5202 = fmul fast float %5199, %5194
  %5203 = call float @dx.op.unary.f32(i32 7, float %5202)  ; Saturate(value)
  %5204 = fsub fast float 1.000000e+00, %5203
  %5205 = fmul fast float %1293, 5.000000e-01
  %5206 = fadd fast float %5205, 5.000000e-01
  %5207 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5208 = fsub fast float 1.000000e+00, %5207
  %5209 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5204)  ; FMax(a,b)
  %5210 = fdiv fast float %5208, %5209
  %5211 = fsub fast float %5194, %134
  %5212 = call float @dx.op.unary.f32(i32 6, float %5211)  ; FAbs(value)
  %5213 = fmul fast float %5212, %5198
  %5214 = call float @dx.op.unary.f32(i32 7, float %5210)  ; Saturate(value)
  %5215 = fsub fast float 1.000000e+00, %5213
  %5216 = fmul fast float %5215, %5214
  %5217 = fadd fast float %5216, %5213
  %5218 = fmul fast float %5201, %5194
  %5219 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5220 = fsub fast float 1.000000e+00, %5217
  %5221 = fmul fast float %5220, %5219
  %5222 = fadd fast float %5221, %5217
  %5223 = call float @dx.op.unary.f32(i32 7, float %5222)  ; Saturate(value)
  %5224 = fadd fast float %5196, -1.000000e+00
  %5225 = select i1 %5195, float -1.000000e+00, float %5224
  %5226 = fmul fast float %5223, %5225
  %5227 = fadd fast float %5226, 1.000000e+00
  %5228 = fsub fast float -0.000000e+00, %5226
  %5229 = fmul fast float %5188, %5228
  %5230 = fmul fast float %5189, %5228
  %5231 = fmul fast float %5190, %5228
  br label %5232

; <label>:5232                                    ; preds = %5185, %4786
  %5233 = phi float [ %5186, %5185 ], [ 0.000000e+00, %4786 ]
  %5234 = phi float [ %5227, %5185 ], [ 1.000000e+00, %4786 ]
  %5235 = phi float [ %5229, %5185 ], [ 0.000000e+00, %4786 ]
  %5236 = phi float [ %5230, %5185 ], [ 0.000000e+00, %4786 ]
  %5237 = phi float [ %5231, %5185 ], [ 0.000000e+00, %4786 ]
  %5238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5239 = extractvalue %dx.types.CBufRet.f32 %5238, 1
  %5240 = fsub fast float 1.000000e+00, %5234
  %5241 = fmul fast float %5240, %4816
  %5242 = fmul fast float %5241, %5239
  %5243 = fsub fast float %4816, %5242
  br i1 %4814, label %5244, label %5273, !dx.controlflow.hints !171

; <label>:5244                                    ; preds = %5232
  %5245 = fmul fast float %4817, %4811
  %5246 = fadd fast float %5245, %4812
  %5247 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5248 = fmul fast float %4793, %5243
  %5249 = fsub fast float -0.000000e+00, %5248
  %5250 = fmul fast float %4794, %5243
  %5251 = fsub fast float -0.000000e+00, %5250
  %5252 = call float @dx.op.unary.f32(i32 21, float %5249)  ; Exp(value)
  %5253 = call float @dx.op.unary.f32(i32 21, float %5251)  ; Exp(value)
  %5254 = call float @dx.op.binary.f32(i32 35, float %4801, float %5252)  ; FMax(a,b)
  %5255 = call float @dx.op.binary.f32(i32 35, float %4801, float %5253)  ; FMax(a,b)
  %5256 = fsub fast float %5255, %5254
  %5257 = fmul fast float %5256, %5247
  %5258 = fadd fast float %5257, %5254
  %5259 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5260 = fsub fast float %4798, %4803
  %5261 = fsub fast float %4799, %4804
  %5262 = fsub fast float %4800, %4805
  %5263 = fmul fast float %5247, %5260
  %5264 = fmul fast float %5247, %5261
  %5265 = fmul fast float %5247, %5262
  %5266 = fadd fast float %5263, %4803
  %5267 = fadd fast float %5264, %4804
  %5268 = fadd fast float %5265, %4805
  %5269 = fsub fast float 1.000000e+00, %5259
  %5270 = fmul fast float %5269, %5266
  %5271 = fmul fast float %5269, %5267
  %5272 = fmul fast float %5269, %5268
  br label %5332

; <label>:5273                                    ; preds = %5232
  %5274 = fmul fast float %5243, %4810
  %5275 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5276 = fsub fast float 2.000000e+00, %5275
  %5277 = fmul fast float %5275, 9.921875e-01
  %5278 = fmul fast float %5277, %5276
  %5279 = fadd fast float %5278, 3.906250e-03
  %5280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %50, float %5279, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5281 = extractvalue %dx.types.ResRet.f32 %5280, 0
  %5282 = fsub fast float %5275, %5281
  %5283 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5282)  ; FMax(a,b)
  %5284 = fmul fast float %4796, %134
  %5285 = call float @dx.op.unary.f32(i32 6, float %5284)  ; FAbs(value)
  %5286 = fcmp fast ogt float %5285, 0x3EB0C6F7A0000000
  br i1 %5286, label %5287, label %5293, !dx.controlflow.hints !172

; <label>:5287                                    ; preds = %5273
  %5288 = fmul fast float %5284, 0xBFF7154760000000
  %5289 = call float @dx.op.unary.f32(i32 21, float %5288)  ; Exp(value)
  %5290 = fsub fast float 1.000000e+00, %5289
  %5291 = fdiv fast float %5290, %5284
  %5292 = fmul fast float %5291, %4806
  br label %5293

; <label>:5293                                    ; preds = %5287, %5273
  %5294 = phi float [ %5292, %5287 ], [ %4806, %5273 ]
  %5295 = fadd fast float %5294, %4808
  %5296 = fmul fast float %5295, %5283
  %5297 = fmul fast float %4793, %5296
  %5298 = fsub fast float -0.000000e+00, %5297
  %5299 = fmul fast float %4794, %5296
  %5300 = fsub fast float -0.000000e+00, %5299
  %5301 = fmul fast float %4795, %5296
  %5302 = fsub fast float -0.000000e+00, %5301
  %5303 = call float @dx.op.unary.f32(i32 21, float %5298)  ; Exp(value)
  %5304 = call float @dx.op.unary.f32(i32 21, float %5300)  ; Exp(value)
  %5305 = call float @dx.op.unary.f32(i32 21, float %5302)  ; Exp(value)
  %5306 = fmul fast float %4817, %4817
  %5307 = fadd fast float %5306, 1.000000e+00
  %5308 = fmul fast float %5307, 0x3FAE8EC8A0000000
  %5309 = fmul fast float %5308, %4803
  %5310 = fmul fast float %5308, %4804
  %5311 = fmul fast float %5308, %4805
  %5312 = fmul fast float %4817, %4801
  %5313 = fsub fast float 1.000000e+00, %5312
  %5314 = fmul fast float %4801, %4801
  %5315 = fsub fast float 1.000000e+00, %5314
  %5316 = fmul fast float %5315, 0x3FB45F3060000000
  %5317 = fmul fast float %5313, %5313
  %5318 = fdiv fast float 1.000000e+00, %5317
  %5319 = fmul fast float %5316, %5318
  %5320 = fmul fast float %5319, %4798
  %5321 = fmul fast float %5319, %4799
  %5322 = fmul fast float %5319, %4800
  %5323 = fadd fast float %5320, %5309
  %5324 = fadd fast float %5321, %5310
  %5325 = fadd fast float %5322, %5311
  %5326 = fsub fast float 1.000000e+00, %5303
  %5327 = fsub fast float 1.000000e+00, %5304
  %5328 = fsub fast float 1.000000e+00, %5305
  %5329 = fmul fast float %5323, %5326
  %5330 = fmul fast float %5324, %5327
  %5331 = fmul fast float %5325, %5328
  br label %5332

; <label>:5332                                    ; preds = %5293, %5244
  %5333 = phi float [ %5270, %5244 ], [ %5329, %5293 ]
  %5334 = phi float [ %5271, %5244 ], [ %5330, %5293 ]
  %5335 = phi float [ %5272, %5244 ], [ %5331, %5293 ]
  %5336 = phi float [ %5259, %5244 ], [ %5303, %5293 ]
  %5337 = phi float [ %5259, %5244 ], [ %5304, %5293 ]
  %5338 = phi float [ %5259, %5244 ], [ %5305, %5293 ]
  br i1 %4825, label %5339, label %5537, !dx.controlflow.hints !173

; <label>:5339                                    ; preds = %5332
  %5340 = extractvalue %dx.types.CBufRet.f32 %5238, 0
  %5341 = fmul fast float %5340, %5240
  %5342 = fsub fast float %5235, %5333
  %5343 = fsub fast float %5236, %5334
  %5344 = fsub fast float %5237, %5335
  %5345 = fmul fast float %5341, %5342
  %5346 = fmul fast float %5341, %5343
  %5347 = fmul fast float %5341, %5344
  %5348 = fadd fast float %5345, %5333
  %5349 = fadd fast float %5346, %5334
  %5350 = fadd fast float %5347, %5335
  %5351 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5336)  ; FMax(a,b)
  %5352 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5337)  ; FMax(a,b)
  %5353 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5338)  ; FMax(a,b)
  %5354 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5234)  ; FMax(a,b)
  %5355 = call float @dx.op.binary.f32(i32 35, float %5233, float %5243)  ; FMax(a,b)
  %5356 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5355)  ; FMax(a,b)
  %5357 = fdiv fast float %5233, %5356
  %5358 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  %5359 = fdiv fast float %5243, %5356
  %5360 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5361 = fcmp fast une float %5354, 1.000000e+00
  br i1 %5361, label %5362, label %5375, !dx.controlflow.hints !174

; <label>:5362                                    ; preds = %5339
  %5363 = call float @dx.op.unary.f32(i32 23, float %5354)  ; Log(value)
  %5364 = fmul fast float %5363, 0x3FE62E4300000000
  %5365 = fmul fast float %5235, %5364
  %5366 = fsub fast float -0.000000e+00, %5365
  %5367 = fmul fast float %5236, %5364
  %5368 = fsub fast float -0.000000e+00, %5367
  %5369 = fmul fast float %5237, %5364
  %5370 = fsub fast float -0.000000e+00, %5369
  %5371 = fsub fast float 1.000000e+00, %5354
  %5372 = fdiv fast float %5366, %5371
  %5373 = fdiv fast float %5368, %5371
  %5374 = fdiv fast float %5370, %5371
  br label %5375

; <label>:5375                                    ; preds = %5362, %5339
  %5376 = phi float [ %5372, %5362 ], [ %5235, %5339 ]
  %5377 = phi float [ %5373, %5362 ], [ %5236, %5339 ]
  %5378 = phi float [ %5374, %5362 ], [ %5237, %5339 ]
  %5379 = phi float [ %5364, %5362 ], [ 0.000000e+00, %5339 ]
  %5380 = fcmp fast une float %5351, 1.000000e+00
  br i1 %5380, label %5381, label %5388, !dx.controlflow.hints !175

; <label>:5381                                    ; preds = %5375
  %5382 = call float @dx.op.unary.f32(i32 23, float %5351)  ; Log(value)
  %5383 = fmul fast float %5382, 0x3FE62E4300000000
  %5384 = fmul fast float %5348, %5383
  %5385 = fsub fast float -0.000000e+00, %5384
  %5386 = fsub fast float 1.000000e+00, %5351
  %5387 = fdiv fast float %5385, %5386
  br label %5388

; <label>:5388                                    ; preds = %5381, %5375
  %5389 = phi float [ %5387, %5381 ], [ %5348, %5375 ]
  %5390 = phi float [ %5383, %5381 ], [ 0.000000e+00, %5375 ]
  %5391 = fcmp fast une float %5352, 1.000000e+00
  br i1 %5391, label %5392, label %5399, !dx.controlflow.hints !175

; <label>:5392                                    ; preds = %5388
  %5393 = call float @dx.op.unary.f32(i32 23, float %5352)  ; Log(value)
  %5394 = fmul fast float %5393, 0x3FE62E4300000000
  %5395 = fmul fast float %5349, %5394
  %5396 = fsub fast float -0.000000e+00, %5395
  %5397 = fsub fast float 1.000000e+00, %5352
  %5398 = fdiv fast float %5396, %5397
  br label %5399

; <label>:5399                                    ; preds = %5392, %5388
  %5400 = phi float [ %5398, %5392 ], [ %5349, %5388 ]
  %5401 = phi float [ %5394, %5392 ], [ 0.000000e+00, %5388 ]
  %5402 = fcmp fast une float %5353, 1.000000e+00
  br i1 %5402, label %5403, label %5410, !dx.controlflow.hints !175

; <label>:5403                                    ; preds = %5399
  %5404 = call float @dx.op.unary.f32(i32 23, float %5353)  ; Log(value)
  %5405 = fmul fast float %5404, 0x3FE62E4300000000
  %5406 = fmul fast float %5350, %5405
  %5407 = fsub fast float -0.000000e+00, %5406
  %5408 = fsub fast float 1.000000e+00, %5353
  %5409 = fdiv fast float %5407, %5408
  br label %5410

; <label>:5410                                    ; preds = %5403, %5399
  %5411 = phi float [ %5409, %5403 ], [ %5350, %5399 ]
  %5412 = phi float [ %5405, %5403 ], [ 0.000000e+00, %5399 ]
  %5413 = fmul fast float %5376, %5360
  %5414 = fmul fast float %5377, %5360
  %5415 = fmul fast float %5378, %5360
  %5416 = fmul fast float %5379, %5360
  %5417 = fmul fast float %5389, %5358
  %5418 = fmul fast float %5400, %5358
  %5419 = fmul fast float %5411, %5358
  %5420 = fmul fast float %5390, %5358
  %5421 = fmul fast float %5401, %5358
  %5422 = fmul fast float %5412, %5358
  %5423 = fadd fast float %5417, %5413
  %5424 = fadd fast float %5418, %5414
  %5425 = fadd fast float %5419, %5415
  %5426 = fadd fast float %5420, %5416
  %5427 = fadd fast float %5421, %5416
  %5428 = fadd fast float %5422, %5416
  %5429 = fcmp fast une float %5426, 0.000000e+00
  br i1 %5429, label %5430, label %5437, !dx.controlflow.hints !176

; <label>:5430                                    ; preds = %5410
  %5431 = fmul fast float %5426, 0x3FF7154760000000
  %5432 = call float @dx.op.unary.f32(i32 21, float %5431)  ; Exp(value)
  %5433 = fsub fast float 1.000000e+00, %5432
  %5434 = fmul fast float %5423, %5433
  %5435 = fsub fast float -0.000000e+00, %5434
  %5436 = fdiv fast float %5435, %5426
  br label %5437

; <label>:5437                                    ; preds = %5430, %5410
  %5438 = phi float [ %5432, %5430 ], [ 1.000000e+00, %5410 ]
  %5439 = phi float [ %5436, %5430 ], [ %5423, %5410 ]
  %5440 = fcmp fast une float %5427, 0.000000e+00
  br i1 %5440, label %5441, label %5448, !dx.controlflow.hints !176

; <label>:5441                                    ; preds = %5437
  %5442 = fmul fast float %5427, 0x3FF7154760000000
  %5443 = call float @dx.op.unary.f32(i32 21, float %5442)  ; Exp(value)
  %5444 = fsub fast float 1.000000e+00, %5443
  %5445 = fmul fast float %5424, %5444
  %5446 = fsub fast float -0.000000e+00, %5445
  %5447 = fdiv fast float %5446, %5427
  br label %5448

; <label>:5448                                    ; preds = %5441, %5437
  %5449 = phi float [ %5443, %5441 ], [ 1.000000e+00, %5437 ]
  %5450 = phi float [ %5447, %5441 ], [ %5424, %5437 ]
  %5451 = fcmp fast une float %5428, 0.000000e+00
  br i1 %5451, label %5452, label %5459, !dx.controlflow.hints !176

; <label>:5452                                    ; preds = %5448
  %5453 = fmul fast float %5428, 0x3FF7154760000000
  %5454 = call float @dx.op.unary.f32(i32 21, float %5453)  ; Exp(value)
  %5455 = fsub fast float 1.000000e+00, %5454
  %5456 = fmul fast float %5425, %5455
  %5457 = fsub fast float -0.000000e+00, %5456
  %5458 = fdiv fast float %5457, %5428
  br label %5459

; <label>:5459                                    ; preds = %5452, %5448
  %5460 = phi float [ %5454, %5452 ], [ 1.000000e+00, %5448 ]
  %5461 = phi float [ %5458, %5452 ], [ %5425, %5448 ]
  %5462 = fcmp fast ogt float %5358, %5360
  br i1 %5462, label %5463, label %5483

; <label>:5463                                    ; preds = %5459
  %5464 = fsub fast float 1.000000e+00, %5360
  %5465 = fmul fast float %5376, %5464
  %5466 = fmul fast float %5377, %5464
  %5467 = fmul fast float %5378, %5464
  %5468 = fmul fast float %5379, %5464
  %5469 = fcmp fast une float %5468, 0.000000e+00
  br i1 %5469, label %5470, label %5521, !dx.controlflow.hints !177

; <label>:5470                                    ; preds = %5463
  %5471 = fmul fast float %5468, 0x3FF7154760000000
  %5472 = call float @dx.op.unary.f32(i32 21, float %5471)  ; Exp(value)
  %5473 = fsub fast float 1.000000e+00, %5472
  %5474 = fmul fast float %5465, %5473
  %5475 = fsub fast float -0.000000e+00, %5474
  %5476 = fmul fast float %5466, %5473
  %5477 = fsub fast float -0.000000e+00, %5476
  %5478 = fmul fast float %5467, %5473
  %5479 = fsub fast float -0.000000e+00, %5478
  %5480 = fdiv fast float %5475, %5468
  %5481 = fdiv fast float %5477, %5468
  %5482 = fdiv fast float %5479, %5468
  br label %5521

; <label>:5483                                    ; preds = %5459
  %5484 = fsub fast float 1.000000e+00, %5358
  %5485 = fmul fast float %5389, %5484
  %5486 = fmul fast float %5400, %5484
  %5487 = fmul fast float %5411, %5484
  %5488 = fmul fast float %5390, %5484
  %5489 = fmul fast float %5401, %5484
  %5490 = fmul fast float %5412, %5484
  %5491 = fcmp fast une float %5488, 0.000000e+00
  br i1 %5491, label %5492, label %5499, !dx.controlflow.hints !176

; <label>:5492                                    ; preds = %5483
  %5493 = fmul fast float %5488, 0x3FF7154760000000
  %5494 = call float @dx.op.unary.f32(i32 21, float %5493)  ; Exp(value)
  %5495 = fsub fast float 1.000000e+00, %5494
  %5496 = fmul fast float %5485, %5495
  %5497 = fsub fast float -0.000000e+00, %5496
  %5498 = fdiv fast float %5497, %5488
  br label %5499

; <label>:5499                                    ; preds = %5492, %5483
  %5500 = phi float [ %5498, %5492 ], [ %5485, %5483 ]
  %5501 = phi float [ %5494, %5492 ], [ 1.000000e+00, %5483 ]
  %5502 = fcmp fast une float %5489, 0.000000e+00
  br i1 %5502, label %5503, label %5510, !dx.controlflow.hints !176

; <label>:5503                                    ; preds = %5499
  %5504 = fmul fast float %5489, 0x3FF7154760000000
  %5505 = call float @dx.op.unary.f32(i32 21, float %5504)  ; Exp(value)
  %5506 = fsub fast float 1.000000e+00, %5505
  %5507 = fmul fast float %5486, %5506
  %5508 = fsub fast float -0.000000e+00, %5507
  %5509 = fdiv fast float %5508, %5489
  br label %5510

; <label>:5510                                    ; preds = %5503, %5499
  %5511 = phi float [ %5509, %5503 ], [ %5486, %5499 ]
  %5512 = phi float [ %5505, %5503 ], [ 1.000000e+00, %5499 ]
  %5513 = fcmp fast une float %5490, 0.000000e+00
  br i1 %5513, label %5514, label %5521, !dx.controlflow.hints !176

; <label>:5514                                    ; preds = %5510
  %5515 = fmul fast float %5490, 0x3FF7154760000000
  %5516 = call float @dx.op.unary.f32(i32 21, float %5515)  ; Exp(value)
  %5517 = fsub fast float 1.000000e+00, %5516
  %5518 = fmul fast float %5487, %5517
  %5519 = fsub fast float -0.000000e+00, %5518
  %5520 = fdiv fast float %5519, %5490
  br label %5521

; <label>:5521                                    ; preds = %5514, %5510, %5470, %5463
  %5522 = phi float [ %5520, %5514 ], [ %5482, %5470 ], [ %5467, %5463 ], [ %5487, %5510 ]
  %5523 = phi float [ %5511, %5514 ], [ %5481, %5470 ], [ %5466, %5463 ], [ %5511, %5510 ]
  %5524 = phi float [ %5500, %5514 ], [ %5480, %5470 ], [ %5465, %5463 ], [ %5500, %5510 ]
  %5525 = phi float [ %5516, %5514 ], [ %5472, %5470 ], [ 1.000000e+00, %5463 ], [ 1.000000e+00, %5510 ]
  %5526 = phi float [ %5512, %5514 ], [ %5472, %5470 ], [ 1.000000e+00, %5463 ], [ %5512, %5510 ]
  %5527 = phi float [ %5501, %5514 ], [ %5472, %5470 ], [ 1.000000e+00, %5463 ], [ %5501, %5510 ]
  %5528 = fmul fast float %5527, %5439
  %5529 = fmul fast float %5526, %5450
  %5530 = fmul fast float %5525, %5461
  %5531 = fadd fast float %5528, %5524
  %5532 = fadd fast float %5529, %5523
  %5533 = fadd fast float %5530, %5522
  %5534 = fmul fast float %5527, %5438
  %5535 = fmul fast float %5526, %5449
  %5536 = fmul fast float %5525, %5460
  br label %5537

; <label>:5537                                    ; preds = %5521, %5332
  %5538 = phi float [ %5536, %5521 ], [ %5338, %5332 ]
  %5539 = phi float [ %5535, %5521 ], [ %5337, %5332 ]
  %5540 = phi float [ %5534, %5521 ], [ %5336, %5332 ]
  %5541 = phi float [ %5533, %5521 ], [ %5335, %5332 ]
  %5542 = phi float [ %5532, %5521 ], [ %5334, %5332 ]
  %5543 = phi float [ %5531, %5521 ], [ %5333, %5332 ]
  %5544 = call float @dx.op.dot3.f32(i32 55, float %5540, float %5539, float %5538, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5545 = call float @dx.op.dot3.f32(i32 55, float %5543, float %5542, float %5541, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5546 = select i1 %1386, float %5544, float %5540
  %5547 = select i1 %1386, float %5544, float %5539
  %5548 = select i1 %1386, float 1.000000e+00, float %5538
  %5549 = select i1 %1386, float %5545, float %5543
  %5550 = select i1 %1386, float 0.000000e+00, float %5542
  %5551 = select i1 %1386, float 0.000000e+00, float %5541
  %5552 = fmul fast float %5546, %4778
  %5553 = fmul fast float %5547, %4780
  %5554 = fmul fast float %5548, %4782
  %5555 = fadd fast float %5552, %5549
  %5556 = fadd fast float %5553, %5550
  %5557 = fadd fast float %5551, %5554
  %5558 = fmul fast float %4115, %77
  %5559 = fmul fast float %4116, %78
  %5560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %5558, float %5559, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5561 = extractvalue %dx.types.ResRet.f32 %5560, 0
  %5562 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %50, float %5558, float %5559, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5563 = extractvalue %dx.types.ResRet.f32 %5562, 0
  %5564 = extractvalue %dx.types.ResRet.f32 %5562, 1
  %5565 = extractvalue %dx.types.ResRet.f32 %5562, 2
  %5566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5567 = extractvalue %dx.types.CBufRet.f32 %5566, 1
  %5568 = fmul fast float %5567, %5563
  %5569 = fmul fast float %5567, %5564
  %5570 = fmul fast float %5567, %5565
  %5571 = fmul fast float %5561, %5540
  %5572 = call float @dx.op.dot3.f32(i32 55, float %5561, float %5561, float %5561, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5573 = call float @dx.op.dot3.f32(i32 55, float %5568, float %5569, float %5570, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5574 = select i1 %1386, float %5572, float %5561
  %5575 = select i1 %1386, float 1.000000e+00, float %5561
  %5576 = select i1 %1386, float %5573, float %5568
  %5577 = select i1 %1386, float 0.000000e+00, float %5569
  %5578 = select i1 %1386, float 0.000000e+00, float %5570
  %5579 = fmul fast float %5574, %5555
  %5580 = fmul fast float %5574, %5556
  %5581 = fmul fast float %5575, %5557
  %5582 = fadd fast float %5579, %5576
  %5583 = fadd fast float %5580, %5577
  %5584 = fadd fast float %5578, %5581
  br label %5585

; <label>:5585                                    ; preds = %5537, %4783
  %5586 = phi float [ %4785, %4783 ], [ %5559, %5537 ]
  %5587 = phi float [ %4784, %4783 ], [ %5558, %5537 ]
  %5588 = phi float [ %4778, %4783 ], [ %5582, %5537 ]
  %5589 = phi float [ %4780, %4783 ], [ %5583, %5537 ]
  %5590 = phi float [ %4782, %4783 ], [ %5584, %5537 ]
  %5591 = phi float [ 1.000000e+00, %4783 ], [ %5571, %5537 ]
  %5592 = call float @dx.op.unary.f32(i32 7, float %5587)  ; Saturate(value)
  %5593 = call float @dx.op.unary.f32(i32 7, float %5586)  ; Saturate(value)
  %5594 = select i1 %94, i32 0, i32 2
  %5595 = or i32 %5594, 1
  %5596 = uitofp i32 %5595 to float
  %5597 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %50, float %5592, float %5593, float %5596, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5598 = extractvalue %dx.types.ResRet.f32 %5597, 0
  %5599 = extractvalue %dx.types.ResRet.f32 %5597, 1
  %5600 = extractvalue %dx.types.ResRet.f32 %5597, 2
  %5601 = extractvalue %dx.types.ResRet.f32 %5597, 3
  %5602 = add nuw nsw i32 %5594, 2
  %5603 = uitofp i32 %5602 to float
  %5604 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %50, float %5592, float %5593, float %5603, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5605 = extractvalue %dx.types.ResRet.f32 %5604, 0
  %5606 = extractvalue %dx.types.ResRet.f32 %5604, 1
  %5607 = extractvalue %dx.types.ResRet.f32 %5604, 2
  %5608 = extractvalue %dx.types.ResRet.f32 %5604, 3
  %5609 = call float @dx.op.binary.f32(i32 35, float %5599, float %5600)  ; FMax(a,b)
  %5610 = call float @dx.op.binary.f32(i32 35, float %5598, float %5609)  ; FMax(a,b)
  %5611 = call float @dx.op.binary.f32(i32 35, float %5610, float %5601)  ; FMax(a,b)
  %5612 = call float @dx.op.binary.f32(i32 36, float %5606, float %5607)  ; FMin(a,b)
  %5613 = call float @dx.op.binary.f32(i32 36, float %5605, float %5612)  ; FMin(a,b)
  %5614 = call float @dx.op.binary.f32(i32 36, float %5613, float %5608)  ; FMin(a,b)
  %5615 = fmul fast float %5611, 2.550000e+02
  %5616 = fadd fast float %5615, 0x3F70101020000000
  %5617 = fptoui float %5616 to i32
  %5618 = fmul fast float %5614, 2.550000e+02
  %5619 = fadd fast float %5618, 0x3F70101020000000
  %5620 = fptoui float %5619 to i32
  %5621 = icmp ult i32 %5617, %5620
  br i1 %5621, label %5622, label %5674

; <label>:5622                                    ; preds = %5585
  %5623 = fcmp fast ogt float %69, 9.843750e-01
  %5624 = fadd fast float %70, -4.000000e+00
  %5625 = select i1 %5623, float -4.000000e+00, float %5624
  %5626 = call float @dx.op.binary.f32(i32 35, float %5625, float 0.000000e+00)  ; FMax(a,b)
  %5627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5628 = extractvalue %dx.types.CBufRet.f32 %5627, 0
  %5629 = fadd fast float %5628, %5626
  %5630 = extractvalue %dx.types.CBufRet.f32 %5627, 2
  %5631 = fmul fast float %5629, %5630
  %5632 = call float @dx.op.unary.f32(i32 23, float %5631)  ; Log(value)
  %5633 = extractvalue %dx.types.CBufRet.f32 %5627, 3
  %5634 = fmul fast float %5633, %5632
  %5635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5636 = extractvalue %dx.types.CBufRet.f32 %5635, 2
  %5637 = fmul fast float %5634, %5636
  %5638 = call float @dx.op.unary.f32(i32 7, float %5637)  ; Saturate(value)
  %5639 = uitofp i32 %5617 to float
  %5640 = uitofp i32 %5620 to float
  %5641 = fadd fast float %5639, 5.000000e-01
  %5642 = fadd fast float %5640, 5.000000e-01
  %5643 = fmul fast float %5636, %5641
  %5644 = fmul fast float %5636, %5642
  %5645 = fadd fast float %5643, 0x3F0FFB4800000000
  %5646 = fadd fast float %5644, 0xBF0FFB4800000000
  %5647 = call float @dx.op.binary.f32(i32 35, float %5638, float %5645)  ; FMax(a,b)
  %5648 = call float @dx.op.binary.f32(i32 36, float %5647, float %5646)  ; FMin(a,b)
  %5649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5650 = extractvalue %dx.types.CBufRet.f32 %5649, 1
  %5651 = extractvalue %dx.types.CBufRet.f32 %5649, 2
  %5652 = extractvalue %dx.types.CBufRet.f32 %5649, 0
  %5653 = select i1 %94, float 0.000000e+00, float %5652
  %5654 = fmul fast float %5650, %5648
  %5655 = fadd fast float %5653, %5654
  %5656 = fadd fast float %5653, %5651
  %5657 = fsub fast float %5650, %5651
  %5658 = fadd fast float %5657, %5653
  %5659 = call float @dx.op.binary.f32(i32 35, float %5655, float %5656)  ; FMax(a,b)
  %5660 = call float @dx.op.binary.f32(i32 36, float %5659, float %5658)  ; FMin(a,b)
  %5661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %5592, float %5593, float %5660, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5662 = extractvalue %dx.types.ResRet.f32 %5661, 0
  %5663 = extractvalue %dx.types.ResRet.f32 %5661, 1
  %5664 = extractvalue %dx.types.ResRet.f32 %5661, 2
  %5665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %48, float %5592, float %5593, float %5660, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5666 = extractvalue %dx.types.ResRet.f32 %5665, 0
  %5667 = extractvalue %dx.types.ResRet.f32 %5665, 1
  %5668 = extractvalue %dx.types.ResRet.f32 %5665, 2
  %5669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5670 = extractvalue %dx.types.CBufRet.f32 %5669, 1
  %5671 = fmul fast float %5670, %5666
  %5672 = fmul fast float %5670, %5667
  %5673 = fmul fast float %5670, %5668
  br label %5674

; <label>:5674                                    ; preds = %5622, %5585
  %5675 = phi float [ %5662, %5622 ], [ 1.000000e+00, %5585 ]
  %5676 = phi float [ %5663, %5622 ], [ 1.000000e+00, %5585 ]
  %5677 = phi float [ %5664, %5622 ], [ 1.000000e+00, %5585 ]
  %5678 = phi float [ %5671, %5622 ], [ 0.000000e+00, %5585 ]
  %5679 = phi float [ %5672, %5622 ], [ 0.000000e+00, %5585 ]
  %5680 = phi float [ %5673, %5622 ], [ 0.000000e+00, %5585 ]
  %5681 = fmul fast float %5675, %5591
  %5682 = call float @dx.op.dot3.f32(i32 55, float %5675, float %5676, float %5677, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5683 = call float @dx.op.dot3.f32(i32 55, float %5678, float %5679, float %5680, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5684 = select i1 %1386, float %5682, float %5675
  %5685 = select i1 %1386, float %5682, float %5676
  %5686 = select i1 %1386, float 1.000000e+00, float %5677
  %5687 = select i1 %1386, float %5683, float %5678
  %5688 = select i1 %1386, float 0.000000e+00, float %5679
  %5689 = select i1 %1386, float 0.000000e+00, float %5680
  %5690 = fmul fast float %5684, %5588
  %5691 = fmul fast float %5685, %5589
  %5692 = fmul fast float %5686, %5590
  %5693 = fadd fast float %5690, %5687
  %5694 = fadd fast float %5691, %5688
  %5695 = fadd fast float %5689, %5692
  %5696 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5697 = extractvalue %dx.types.CBufRet.i32 %5696, 3
  %5698 = and i32 %5697, 3
  %5699 = icmp ne i32 %5698, 0
  %5700 = and i32 %5697, 4
  %5701 = icmp ne i32 %5700, 0
  %5702 = and i1 %5699, %5701
  %5703 = and i1 %1386, %5702
  br i1 %5703, label %5704, label %5710

; <label>:5704                                    ; preds = %5674
  %5705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5706 = extractvalue %dx.types.CBufRet.f32 %5705, 1
  %5707 = fadd fast float %5681, -1.000000e+00
  %5708 = fmul fast float %5706, %5707
  %5709 = fadd fast float %5708, 1.000000e+00
  br label %5710

; <label>:5710                                    ; preds = %5704, %5674
  %5711 = phi float [ %5709, %5704 ], [ %5681, %5674 ]
  %5712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5713 = extractvalue %dx.types.CBufRet.f32 %5712, 0
  br i1 %1386, label %5714, label %5728

; <label>:5714                                    ; preds = %5710
  %5715 = fadd fast float %5693, %5694
  %5716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %5717 = extractvalue %dx.types.CBufRet.f32 %5716, 3
  %5718 = extractvalue %dx.types.CBufRet.f32 %4766, 1
  %5719 = fsub fast float %4772, %4760
  %5720 = fadd fast float %5719, %4773
  %5721 = fsub fast float %5720, %5718
  %5722 = extractvalue %dx.types.CBufRet.f32 %4766, 2
  %5723 = fmul fast float %5721, %5722
  %5724 = call float @dx.op.unary.f32(i32 7, float %5723)  ; Saturate(value)
  %5725 = fsub fast float %5724, %5717
  %5726 = fmul fast float %5725, %5711
  %5727 = fadd fast float %5726, %5717
  br label %5731

; <label>:5728                                    ; preds = %5710
  %5729 = fmul fast float %5713, %5694
  %5730 = fmul fast float %5713, %5695
  br label %5731

; <label>:5731                                    ; preds = %5728, %5714
  %5732 = phi float [ %5715, %5714 ], [ %5693, %5728 ]
  %5733 = phi float [ %5727, %5714 ], [ %5729, %5728 ]
  %5734 = phi float [ 1.000000e+00, %5714 ], [ %5730, %5728 ]
  %5735 = fmul float %5713, %5732
  %5736 = fadd fast float %751, 0x3FE3C6EF40000000
  %5737 = call float @dx.op.unary.f32(i32 22, float %5736)  ; Frc(value)
  %5738 = call float @dx.op.unary.f32(i32 23, float %5735)  ; Log(value)
  %5739 = fadd fast float %5738, -7.000000e+00
  %5740 = call float @dx.op.unary.f32(i32 21, float %5739)  ; Exp(value)
  %5741 = fmul fast float %5737, 2.000000e+00
  %5742 = fadd fast float %5741, -1.000000e+00
  %5743 = fmul fast float %5740, %5742
  %5744 = fcmp fast ogt float %5735, 0.000000e+00
  %5745 = select i1 %5744, float %5743, float 0.000000e+00
  %5746 = fadd fast float %5745, %5735
  %5747 = fadd fast float %751, 0x3FF3C6EF40000000
  %5748 = call float @dx.op.unary.f32(i32 22, float %5747)  ; Frc(value)
  %5749 = call float @dx.op.unary.f32(i32 23, float %5733)  ; Log(value)
  %5750 = fadd fast float %5749, -7.000000e+00
  %5751 = call float @dx.op.unary.f32(i32 21, float %5750)  ; Exp(value)
  %5752 = fmul fast float %5748, 2.000000e+00
  %5753 = fadd fast float %5752, -1.000000e+00
  %5754 = fmul fast float %5751, %5753
  %5755 = fcmp fast ogt float %5733, 0.000000e+00
  %5756 = select i1 %5755, float %5754, float 0.000000e+00
  %5757 = fadd fast float %5756, %5733
  %5758 = fadd fast float %751, 0x3FFDAA66E0000000
  %5759 = call float @dx.op.unary.f32(i32 22, float %5758)  ; Frc(value)
  %5760 = call float @dx.op.unary.f32(i32 23, float %5734)  ; Log(value)
  %5761 = fadd fast float %5760, -6.000000e+00
  %5762 = call float @dx.op.unary.f32(i32 21, float %5761)  ; Exp(value)
  %5763 = fmul fast float %5759, 2.000000e+00
  %5764 = fadd fast float %5763, -1.000000e+00
  %5765 = fmul fast float %5762, %5764
  %5766 = fcmp fast ogt float %5734, 0.000000e+00
  %5767 = select i1 %5766, float %5765, float 0.000000e+00
  %5768 = fadd fast float %5767, %5734
  %5769 = call float @dx.op.binary.f32(i32 36, float %5746, float 3.225500e+04)  ; FMin(a,b)
  %5770 = call float @dx.op.binary.f32(i32 36, float %5757, float 3.225500e+04)  ; FMin(a,b)
  %5771 = call float @dx.op.binary.f32(i32 36, float %5768, float 3.225500e+04)  ; FMin(a,b)
  %5772 = fmul fast float %5769, %4756
  %5773 = fmul fast float %5770, %4756
  %5774 = fmul fast float %5771, %4756
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5772)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5773)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5774)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %4756)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!dx.viewIdState = !{!69}
!dx.entryPoints = !{!70}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !57, !61}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
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
!31 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!32 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!33 = !{i32 24, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!34 = !{i32 25, %"class.Texture3D<float>"* undef, !"", i32 2, i32 82, i32 1, i32 4, i32 0, !7}
!35 = !{i32 26, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!36 = !{i32 27, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!37 = !{i32 28, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!38 = !{i32 29, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!39 = !{i32 30, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!40 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!41 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!43 = !{i32 34, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !12}
!44 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!45 = !{i32 36, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!51 = !{i32 42, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!54 = !{i32 45, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!55 = !{i32 46, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!56 = !{i32 47, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 7, i32 0, !7}
!57 = !{!58, !59, !60}
!58 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!59 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!60 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!61 = !{!62, !63, !64, !65, !66, !67, !68}
!62 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!63 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!64 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!65 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!66 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!67 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!68 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!69 = !{[20 x i32] [i32 18, i32 4, i32 15, i32 15, i32 7, i32 15, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0]}
!70 = !{void ()* @ps_main, !"ps_main", !71, !4, !90}
!71 = !{!72, !88, null}
!72 = !{!73, !76, !78, !80, !82, !83, !84, !85, !87}
!73 = !{i32 0, !"SV_Position", i8 9, i8 3, !74, i8 4, i32 1, i8 4, i32 0, i8 0, !75}
!74 = !{i32 0}
!75 = !{i32 3, i32 15}
!76 = !{i32 1, !"NORMAL", i8 9, i8 0, !74, i8 2, i32 1, i8 3, i32 1, i8 0, !77}
!77 = !{i32 3, i32 7}
!78 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !74, i8 2, i32 1, i8 2, i32 2, i8 0, !79}
!79 = !{i32 3, i32 3}
!80 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !74, i8 2, i32 1, i8 1, i32 1, i8 3, !81}
!81 = !{i32 3, i32 1}
!82 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !74, i8 1, i32 1, i8 1, i32 3, i8 0, !81}
!83 = !{i32 5, !"SV_IsFrontFace", i8 5, i8 13, !74, i8 1, i32 1, i8 1, i32 3, i8 1, !81}
!84 = !{i32 6, !"SV_ClipDistance", i8 9, i8 6, !74, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!85 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !86, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!86 = !{i32 1}
!87 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !74, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!88 = !{!89}
!89 = !{i32 0, !"SV_Target", i8 9, i8 16, !74, i8 0, i32 1, i8 4, i32 0, i8 0, !75}
!90 = !{i32 0, i64 24}
!91 = !{!92, !92, i64 0}
!92 = !{!"float", !93, i64 0}
!93 = !{!"omnipotent char", !94, i64 0}
!94 = !{!"Simple C/C++ TBAA"}
!95 = !{!96, !98, !99}
!96 = distinct !{!96, !97, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!97 = distinct !{!97, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!98 = distinct !{!98, !97, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!99 = distinct !{!99, !97, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
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
!113 = !{!114, !114, i64 0}
!114 = !{!"int", !93, i64 0}
!115 = !{!116, !118, !120, !122}
!116 = distinct !{!116, !117, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!117 = distinct !{!117, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!118 = distinct !{!118, !119, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!119 = distinct !{!119, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!120 = distinct !{!120, !121, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!121 = distinct !{!121, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!122 = distinct !{!122, !123, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!123 = distinct !{!123, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
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
!135 = !{!136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!136 = distinct !{!136, !137, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!137 = distinct !{!137, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!138 = distinct !{!138, !139, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!139 = distinct !{!139, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!140 = distinct !{!140, !139, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!141 = distinct !{!141, !142, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!142 = distinct !{!142, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!143 = distinct !{!143, !142, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!144 = distinct !{!144, !142, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!145 = distinct !{!145, !146, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!146 = distinct !{!146, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!147 = distinct !{!147, !146, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!148 = distinct !{!148, !146, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!149 = distinct !{!149, !150, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!150 = distinct !{!150, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"\01?sort@@YAXAIAM00@Z: %c"}
!153 = distinct !{!153, !"\01?sort@@YAXAIAM00@Z"}
!154 = !{!155, !156, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!155 = distinct !{!155, !153, !"\01?sort@@YAXAIAM00@Z: %a"}
!156 = distinct !{!156, !153, !"\01?sort@@YAXAIAM00@Z: %b"}
!157 = !{!156}
!158 = !{!155, !152, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!159 = !{!155}
!160 = !{!156, !152, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!161 = !{!162}
!162 = distinct !{!162, !163, !"\01?sort@@YAXAIAM00@Z: %c"}
!163 = distinct !{!163, !"\01?sort@@YAXAIAM00@Z"}
!164 = !{!165, !166, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!165 = distinct !{!165, !163, !"\01?sort@@YAXAIAM00@Z: %a"}
!166 = distinct !{!166, !163, !"\01?sort@@YAXAIAM00@Z: %b"}
!167 = !{!166}
!168 = !{!165, !162, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!169 = !{!165}
!170 = !{!166, !162, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 2}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}

