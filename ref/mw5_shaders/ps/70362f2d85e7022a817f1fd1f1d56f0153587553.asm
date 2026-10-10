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
; shader hash: 89aa1b5948652362adc917f7d852dd34
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
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %76 = alloca [4 x float], align 4
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 0
  %79 = fmul fast float %78, %68
  %80 = fmul fast float %78, %69
  %81 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float %65, float %66, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %82 = call float @dx.op.unary.f32(i32 25, float %81)  ; Rsqrt(value)
  %83 = fmul fast float %82, %65
  %84 = fmul fast float %82, %66
  %85 = fmul fast float %82, %67
  %86 = xor i1 %60, true
  %87 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %88 = extractvalue %dx.types.ResRet.i32 %87, 0
  %89 = icmp eq i32 %88, 0
  %90 = and i1 %89, %86
  %91 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.i32 %91, 0
  %93 = and i32 %92, 256
  %94 = icmp ne i32 %93, 0
  %95 = and i1 %90, %94
  %96 = or i1 %60, %95
  %97 = select i1 %96, float 1.000000e+00, float -1.000000e+00
  %98 = fmul fast float %83, %97
  %99 = fmul fast float %84, %97
  %100 = fmul fast float %85, %97
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %104 = fmul fast float %79, 2.000000e+00
  %105 = fmul fast float %104, %102
  %106 = fmul fast float %80, 2.000000e+00
  %107 = fmul fast float %106, %103
  %108 = fsub fast float 1.000000e+00, %105
  %109 = fsub fast float 1.000000e+00, %107
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %114 = fmul fast float %108, %111
  %115 = fmul fast float %108, %112
  %116 = fmul fast float %108, %113
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = fmul fast float %109, %118
  %122 = fmul fast float %109, %119
  %123 = fmul fast float %109, %120
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = fadd fast float %121, %125
  %129 = fadd fast float %128, %114
  %130 = fadd fast float %122, %126
  %131 = fadd fast float %130, %115
  %132 = fadd fast float %123, %127
  %133 = fadd fast float %132, %116
  %134 = fmul fast float %129, %71
  %135 = fmul fast float %131, %71
  %136 = fmul fast float %133, %71
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %140 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %141 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %142 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %143 = fmul fast float %139, %138
  %144 = fmul fast float %140, %138
  %145 = fmul fast float %141, %138
  %146 = fmul fast float %142, %138
  %147 = call float @dx.op.dot2.f32(i32 54, float %145, float %146, float %145, float %146)  ; Dot2(ax,ay,bx,by)
  %148 = call float @dx.op.dot2.f32(i32 54, float %143, float %144, float %143, float %144)  ; Dot2(ax,ay,bx,by)
  %149 = call float @dx.op.binary.f32(i32 35, float %148, float %147)  ; FMax(a,b)
  %150 = call float @dx.op.unary.f32(i32 23, float %149)  ; Log(value)
  %151 = fmul fast float %150, 5.000000e-01
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %154 = fadd fast float %153, %151
  %155 = call float @dx.op.binary.f32(i32 35, float %154, float 0.000000e+00)  ; FMax(a,b)
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 3
  %158 = fadd fast float %157, %155
  %159 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %160 = shl i32 %159, 16
  %161 = or i32 %160, %159
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = fadd fast float %163, %134
  %166 = fadd fast float %164, %135
  %167 = fmul fast float %165, 0x3F53C37960000000
  %168 = fmul fast float %166, 0x3F53C37960000000
  %169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %169, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %171 = extractvalue %dx.types.ResRet.f32 %170, 0
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %174 = fmul fast float %173, %171
  %175 = shl i32 %61, 3
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = and i32 %177, 16383
  %179 = shl i32 %61, 2
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = and i32 %181, 255
  %183 = shl nuw nsw i32 %182, 16
  %184 = or i32 %183, %178
  %185 = mul nuw nsw i32 %178, 148
  %186 = add nuw nsw i32 %185, 4
  %187 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %186, i32 undef)  ; BufferLoad(srv,index,wot)
  %188 = extractvalue %dx.types.ResRet.f32 %187, 0
  %189 = add nuw nsw i32 %185, 8
  %190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = add nuw nsw i32 %185, 48
  %193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = add nuw nsw i32 %185, 60
  %196 = add nuw nsw i32 %185, 104
  %197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = add nuw nsw i32 %185, 116
  %200 = fsub fast float 1.000000e+00, %64
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 2
  %203 = fmul fast float %202, %63
  %204 = fmul fast float %202, %200
  %205 = fadd fast float %203, %188
  %206 = fadd fast float %204, %191
  %207 = add nuw nsw i32 %185, 20
  %208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = add nuw nsw i32 %185, 24
  %211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = add nuw nsw i32 %185, 40
  %214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = add nuw nsw i32 %185, 52
  %219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.f32 %219, 0
  %221 = add nuw nsw i32 %185, 96
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = add nuw nsw i32 %185, 108
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %231 = fmul fast float %230, %63
  %232 = fmul fast float %230, %64
  %233 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %234 = fadd fast float %231, %233
  %235 = fadd fast float %232, %233
  %236 = extractvalue %dx.types.CBufRet.f32 %229, 0
  %237 = fmul fast float %236, %63
  %238 = fmul fast float %236, %64
  %239 = extractvalue %dx.types.CBufRet.f32 %229, 1
  %240 = fadd fast float %237, %239
  %241 = fadd fast float %238, %239
  %242 = add i32 %223, 0
  %243 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %242, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %244 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %243, i32 0)  ; GetDimensions(handle,mipLevel)
  %245 = extractvalue %dx.types.Dimensions %244, 0
  %246 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %245)  ; FirstbitLo(value)
  %247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.i32 %247, 1
  %249 = sub nsw i32 %248, %246
  %250 = sitofp i32 %249 to float
  %251 = fsub fast float %158, %250
  %252 = call float @dx.op.binary.f32(i32 35, float %251, float 0.000000e+00)  ; FMax(a,b)
  %253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %243, %dx.types.Handle %49, float %234, float %235, float %215, float undef, i32 0, i32 0, i32 undef, float %252)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = fmul fast float %254, %209
  %256 = add i32 %225, 0
  %257 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %256, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %258 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %257, i32 0)  ; GetDimensions(handle,mipLevel)
  %259 = extractvalue %dx.types.Dimensions %258, 0
  %260 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %259)  ; FirstbitLo(value)
  %261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.i32 %261, 1
  %263 = sub nsw i32 %262, %260
  %264 = sitofp i32 %263 to float
  %265 = fsub fast float %158, %264
  %266 = call float @dx.op.binary.f32(i32 35, float %265, float 0.000000e+00)  ; FMax(a,b)
  %267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %257, %dx.types.Handle %49, float %240, float %241, float %217, float undef, i32 0, i32 0, i32 undef, float %266)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = extractvalue %dx.types.ResRet.f32 %267, 1
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 3
  %272 = fmul fast float %271, 2.000000e+00
  %273 = fmul fast float %272, %268
  %274 = fmul fast float %272, %269
  %275 = fsub fast float %273, %271
  %276 = fsub fast float %274, %271
  %277 = fmul fast float %275, %275
  %278 = fmul fast float %276, %276
  %279 = fadd fast float %277, %278
  %280 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %281 = add i32 %228, 0
  %282 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %281, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %283 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %282, i32 0)  ; GetDimensions(handle,mipLevel)
  %284 = extractvalue %dx.types.Dimensions %283, 0
  %285 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %284)  ; FirstbitLo(value)
  %286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.i32 %286, 1
  %288 = sub nsw i32 %287, %285
  %289 = sitofp i32 %288 to float
  %290 = fsub fast float %158, %289
  %291 = call float @dx.op.binary.f32(i32 35, float %290, float 0.000000e+00)  ; FMax(a,b)
  %292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %282, %dx.types.Handle %49, float %240, float %241, float %220, float undef, i32 0, i32 0, i32 undef, float %291)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  %294 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.i32 %294, 0
  %296 = call i32 @dx.op.binary.i32(i32 40, i32 %178, i32 %295)  ; UMin(a,b)
  %297 = mul i32 %296, 36
  %298 = add i32 %297, 4
  %299 = icmp eq i32 %182, 0
  br i1 %299, label %1528, label %300

; <label>:300                                     ; preds = %0
  br label %301

; <label>:301                                     ; preds = %1516, %300
  %302 = phi i32 [ %1517, %1516 ], [ %184, %300 ]
  %303 = phi i32 [ %1518, %1516 ], [ %161, %300 ]
  %304 = phi i32 [ %1519, %1516 ], [ %161, %300 ]
  %305 = phi float [ %1520, %1516 ], [ 0.000000e+00, %300 ]
  %306 = phi float [ %1521, %1516 ], [ 0.000000e+00, %300 ]
  %307 = phi float [ %1522, %1516 ], [ 0.000000e+00, %300 ]
  %308 = phi i32 [ %1523, %1516 ], [ -1, %300 ]
  %309 = phi float [ %1524, %1516 ], [ 0.000000e+00, %300 ]
  %310 = phi i32 [ %316, %1516 ], [ %182, %300 ]
  %311 = phi i32 [ %1525, %1516 ], [ %161, %300 ]
  %312 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %310)  ; FirstbitLo(value)
  %313 = and i32 %312, 31
  %314 = shl i32 1, %313
  %315 = xor i32 %314, -1
  %316 = and i32 %310, %315
  %317 = shl i32 %312, 2
  %318 = add i32 %298, %317
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 32767
  %322 = add i32 %195, %317
  %323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.f32 %323, 0
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 0
  %327 = fmul fast float %326, %63
  %328 = fmul fast float %326, %64
  %329 = extractvalue %dx.types.CBufRet.f32 %325, 1
  %330 = fadd fast float %327, %329
  %331 = fadd fast float %328, %329
  %332 = add i32 %199, %317
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = add i32 %334, 0
  %336 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %335, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %337 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %336, i32 0)  ; GetDimensions(handle,mipLevel)
  %338 = extractvalue %dx.types.Dimensions %337, 0
  %339 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %338)  ; FirstbitLo(value)
  %340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.i32 %340, 1
  %342 = sub nsw i32 %341, %339
  %343 = sitofp i32 %342 to float
  %344 = fsub fast float %158, %343
  %345 = call float @dx.op.binary.f32(i32 35, float %344, float 0.000000e+00)  ; FMax(a,b)
  %346 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %336, %dx.types.Handle %49, float %330, float %331, float %324, float undef, i32 0, i32 0, i32 undef, float %345)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %347 = extractvalue %dx.types.ResRet.f32 %346, 0
  %348 = fcmp fast ogt float %347, 0.000000e+00
  br i1 %348, label %349, label %1516

; <label>:349                                     ; preds = %301
  %350 = mul nuw nsw i32 %321, 928
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = or i32 %350, 8
  %354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = or i32 %350, 12
  %357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.f32 %357, 1
  %359 = or i32 %350, 20
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = or i32 %350, 24
  %363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 0
  %365 = extractvalue %dx.types.ResRet.f32 %363, 1
  %366 = extractvalue %dx.types.ResRet.f32 %363, 2
  %367 = extractvalue %dx.types.ResRet.f32 %363, 3
  %368 = add nuw nsw i32 %350, 40
  %369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.f32 %369, 0
  %371 = add nuw nsw i32 %350, 80
  %372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.f32 %372, 0
  %374 = add nuw nsw i32 %350, 228
  %375 = add nuw nsw i32 %350, 516
  %376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 1
  %378 = add nuw nsw i32 %350, 552
  %379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.f32 %379, 0
  %381 = extractvalue %dx.types.ResRet.f32 %379, 1
  %382 = extractvalue %dx.types.ResRet.f32 %379, 2
  %383 = add nuw nsw i32 %350, 596
  %384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.f32 %384, 0
  %386 = extractvalue %dx.types.ResRet.f32 %384, 1
  %387 = add nuw nsw i32 %350, 620
  %388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = add nuw nsw i32 %350, 628
  %392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  %394 = extractvalue %dx.types.ResRet.f32 %392, 1
  %395 = extractvalue %dx.types.ResRet.f32 %392, 2
  %396 = extractvalue %dx.types.ResRet.f32 %392, 3
  %397 = add nuw nsw i32 %350, 644
  %398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.f32 %398, 0
  %400 = add nuw nsw i32 %350, 648
  %401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 0
  %403 = add nuw nsw i32 %350, 652
  %404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.f32 %404, 0
  %406 = add nuw nsw i32 %350, 656
  %407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = add nuw nsw i32 %350, 660
  %410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.f32 %410, 0
  %412 = add nuw nsw i32 %350, 664
  %413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.f32 %413, 0
  %415 = extractvalue %dx.types.ResRet.f32 %413, 1
  %416 = add nuw nsw i32 %350, 676
  %417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.f32 %417, 0
  %419 = extractvalue %dx.types.ResRet.f32 %417, 1
  %420 = add nuw nsw i32 %350, 696
  %421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 0
  %423 = extractvalue %dx.types.ResRet.f32 %421, 1
  %424 = add nuw nsw i32 %350, 704
  %425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.f32 %425, 0
  %427 = add nuw nsw i32 %350, 708
  %428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.f32 %428, 0
  %430 = extractvalue %dx.types.ResRet.f32 %428, 1
  %431 = add nuw nsw i32 %350, 716
  %432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  %434 = add nuw nsw i32 %350, 720
  %435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = extractvalue %dx.types.ResRet.f32 %435, 1
  %438 = add nuw nsw i32 %350, 732
  %439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.f32 %439, 1
  %441 = add nuw nsw i32 %350, 744
  %442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = add nuw nsw i32 %350, 748
  %445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.f32 %445, 0
  %447 = add nuw nsw i32 %350, 752
  %448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  %450 = add nuw nsw i32 %350, 756
  %451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = extractvalue %dx.types.ResRet.f32 %451, 1
  %454 = extractvalue %dx.types.ResRet.f32 %451, 2
  %455 = extractvalue %dx.types.ResRet.f32 %451, 3
  %456 = add nuw nsw i32 %350, 780
  %457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.f32 %457, 0
  %459 = extractvalue %dx.types.ResRet.f32 %457, 1
  %460 = add nuw nsw i32 %350, 792
  %461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  %463 = extractvalue %dx.types.ResRet.f32 %461, 1
  %464 = add nuw nsw i32 %350, 800
  %465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.f32 %465, 0
  %467 = extractvalue %dx.types.ResRet.f32 %465, 1
  %468 = add nuw nsw i32 %350, 812
  %469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.f32 %469, 0
  %471 = add nuw nsw i32 %350, 816
  %472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 1
  %474 = add nuw nsw i32 %350, 884
  %475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = extractvalue %dx.types.ResRet.f32 %475, 1
  %478 = extractvalue %dx.types.ResRet.f32 %475, 2
  %479 = add nuw nsw i32 %350, 896
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = add nuw nsw i32 %350, 900
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = add nuw nsw i32 %350, 904
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = add nuw nsw i32 %350, 908
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = add nuw nsw i32 %350, 912
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = add nuw nsw i32 %350, 916
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = lshr i32 %302, 24
  %498 = uitofp i32 %497 to float
  %499 = fmul fast float %498, 0x3F70101020000000
  %500 = and i32 %352, 128
  %501 = icmp ne i32 %500, 0
  %502 = extractvalue %dx.types.CBufRet.i32 %340, 0
  %503 = and i32 %502, 512
  %504 = icmp ne i32 %503, 0
  %505 = and i1 %501, %504
  %506 = select i1 %505, float 0.000000e+00, float %347
  %507 = fadd fast float %506, %499
  %508 = call float @dx.op.unary.f32(i32 7, float %507)  ; Saturate(value)
  %509 = fmul fast float %508, 2.550000e+02
  %510 = fptoui float %509 to i32
  %511 = shl i32 %510, 24
  %512 = and i32 %302, 16777215
  %513 = or i32 %511, %512
  %514 = fcmp fast ogt float %347, %309
  %515 = select i1 %514, i32 %321, i32 %308
  %516 = select i1 %514, float %347, float %309
  %517 = fcmp fast ole float %62, 0x3FA4B5DCC0000000
  %518 = fmul fast float %62, 0x3FB3D07220000000
  %519 = fadd fast float %62, 0x3FAC28F5C0000000
  %520 = fmul fast float %519, 0x3FEE54EDE0000000
  %521 = call float @dx.op.unary.f32(i32 23, float %520)  ; Log(value)
  %522 = fmul fast float %521, 0x4003333340000000
  %523 = call float @dx.op.unary.f32(i32 21, float %522)  ; Exp(value)
  %524 = select i1 %517, float %518, float %523
  %525 = call float @dx.op.unary.f32(i32 7, float %524)  ; Saturate(value)
  %526 = fmul fast float %385, %293
  %527 = fadd fast float %526, %386
  %528 = call float @dx.op.unary.f32(i32 7, float %527)  ; Saturate(value)
  %529 = call float @dx.op.binary.f32(i32 35, float %525, float %528)  ; FMax(a,b)
  %530 = add i32 %484, 0
  %531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %530, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 0
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 0
  %536 = extractvalue %dx.types.CBufRet.f32 %534, 1
  %537 = fadd fast float %535, %134
  %538 = fadd fast float %536, %135
  %539 = fmul fast float %134, %134
  %540 = fmul fast float %135, %135
  %541 = fadd fast float %539, %540
  %542 = fmul fast float %136, %136
  %543 = fadd fast float %541, %542
  %544 = call float @dx.op.unary.f32(i32 24, float %543)  ; Sqrt(value)
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 0
  %547 = fcmp fast ogt float %544, %546
  %548 = zext i1 %547 to i32
  %549 = extractvalue %dx.types.CBufRet.f32 %545, 1
  %550 = fcmp fast ogt float %544, %549
  %551 = zext i1 %550 to i32
  %552 = add nuw nsw i32 %551, %548
  %553 = extractvalue %dx.types.CBufRet.f32 %545, 2
  %554 = fcmp fast ogt float %544, %553
  %555 = zext i1 %554 to i32
  %556 = add nuw nsw i32 %552, %555
  %557 = icmp ult i32 %556, 3
  %558 = zext i1 %557 to i32
  %559 = shl nuw nsw i32 %556, 2
  %560 = add nuw nsw i32 %559, 48
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 %560)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 1
  %563 = fcmp fast ogt float %544, %562
  %564 = zext i1 %563 to i32
  %565 = or i32 %559, 1
  %566 = add nuw nsw i32 %565, 48
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 %566)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 1
  %569 = fcmp fast ogt float %544, %568
  %570 = zext i1 %569 to i32
  %571 = add nuw nsw i32 %570, %564
  %572 = or i32 %559, 2
  %573 = add nuw nsw i32 %572, 48
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 %573)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 1
  %576 = fcmp fast ogt float %544, %575
  %577 = zext i1 %576 to i32
  %578 = add nuw nsw i32 %571, %577
  %579 = add i32 %361, -1
  %580 = call i32 @dx.op.binary.i32(i32 40, i32 %578, i32 %579)  ; UMin(a,b)
  %581 = add i32 %559, %580
  %582 = call i32 @dx.op.binary.i32(i32 40, i32 %581, i32 12)  ; UMin(a,b)
  %583 = add i32 %582, 48
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 %583)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = fcmp fast oge float %544, %585
  %587 = zext i1 %586 to i32
  %588 = call i32 @dx.op.binary.i32(i32 40, i32 %361, i32 %558)  ; UMin(a,b)
  %589 = call i32 @dx.op.binary.i32(i32 40, i32 %587, i32 %588)  ; UMin(a,b)
  %590 = add i32 %589, %361
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %770, label %592

; <label>:592                                     ; preds = %349
  br label %593

; <label>:593                                     ; preds = %593, %592
  %594 = phi float [ %766, %593 ], [ 0.000000e+00, %592 ]
  %595 = phi float [ %758, %593 ], [ 0.000000e+00, %592 ]
  %596 = phi float [ %759, %593 ], [ 0.000000e+00, %592 ]
  %597 = phi i32 [ %605, %593 ], [ %582, %592 ]
  %598 = phi i32 [ %767, %593 ], [ 0, %592 ]
  %599 = add i32 %598, %597
  %600 = and i32 %599, -4
  %601 = add i32 %600, %361
  %602 = icmp uge i32 %599, %601
  %603 = sub i32 4, %361
  %604 = select i1 %602, i32 %603, i32 0
  %605 = add i32 %604, %597
  %606 = add i32 %604, %599
  %607 = and i32 %606, 3
  %608 = lshr i32 %606, 2
  %609 = add i32 %606, 32
  %610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 %609)  ; CBufferLoadLegacy(handle,regIndex)
  %611 = extractvalue %dx.types.CBufRet.f32 %610, 0
  %612 = extractvalue %dx.types.CBufRet.f32 %610, 1
  %613 = extractvalue %dx.types.CBufRet.f32 %610, 2
  %614 = extractvalue %dx.types.CBufRet.f32 %610, 3
  %615 = fmul fast float %611, %544
  %616 = fadd fast float %615, %612
  %617 = call float @dx.op.unary.f32(i32 7, float %616)  ; Saturate(value)
  %618 = fmul fast float %613, %544
  %619 = fadd fast float %618, %614
  %620 = call float @dx.op.unary.f32(i32 7, float %619)  ; Saturate(value)
  %621 = call float @dx.op.binary.f32(i32 36, float %617, float %620)  ; FMin(a,b)
  %622 = mul nuw nsw i32 %607, 72
  %623 = add nuw nsw i32 %374, %622
  %624 = add nuw nsw i32 %623, 16
  %625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  %627 = extractvalue %dx.types.ResRet.f32 %625, 1
  %628 = extractvalue %dx.types.ResRet.f32 %625, 2
  %629 = extractvalue %dx.types.ResRet.f32 %625, 3
  %630 = add nuw nsw i32 %623, 36
  %631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.f32 %631, 0
  %633 = add nuw nsw i32 %623, 56
  %634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.f32 %634, 0
  %636 = fmul fast float %280, 3.906250e-03
  %637 = fmul fast float %636, %373
  %638 = fmul fast float %637, %632
  %639 = fmul fast float %638, %635
  %640 = extractvalue %dx.types.ResRet.f32 %634, 1
  %641 = fadd fast float %639, %640
  %642 = call float @dx.op.binary.f32(i32 35, float %641, float 0.000000e+00)  ; FMax(a,b)
  %643 = add nuw nsw i32 %623, 32
  %644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.f32 %644, 0
  %646 = fmul fast float %632, %275
  %647 = fmul fast float %632, %276
  %648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %649 = extractvalue %dx.types.CBufRet.f32 %648, 1
  %650 = add nuw nsw i32 %623, 40
  %651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %650, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.f32 %651, 0
  %653 = extractvalue %dx.types.ResRet.f32 %651, 1
  %654 = extractvalue %dx.types.ResRet.f32 %651, 2
  %655 = extractvalue %dx.types.ResRet.f32 %651, 3
  %656 = fadd fast float %649, %174
  %657 = fadd fast float %656, %654
  %658 = fmul fast float %656, %653
  %659 = call float @dx.op.unary.f32(i32 29, float %658)  ; Round_z(value)
  %660 = fmul fast float %652, %659
  %661 = fsub fast float %656, %660
  %662 = fmul fast float %657, %653
  %663 = call float @dx.op.unary.f32(i32 29, float %662)  ; Round_z(value)
  %664 = fmul fast float %663, %652
  %665 = fsub fast float %657, %664
  %666 = fmul fast float %661, %646
  %667 = fmul fast float %661, %647
  %668 = fmul fast float %665, %646
  %669 = fmul fast float %665, %647
  %670 = fsub fast float %537, %666
  %671 = fsub fast float %538, %667
  %672 = fsub fast float %537, %668
  %673 = fsub fast float %538, %669
  %674 = fsub fast float %654, %661
  %675 = call float @dx.op.unary.f32(i32 6, float %674)  ; FAbs(value)
  %676 = fmul fast float %675, %655
  %677 = call float @dx.op.unary.f32(i32 7, float %676)  ; Saturate(value)
  %678 = fmul fast float %355, 4.000000e+00
  %679 = uitofp i32 %608 to float
  %680 = fadd fast float %679, %678
  %681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %682 = extractvalue %dx.types.CBufRet.f32 %681, 0
  %683 = extractvalue %dx.types.CBufRet.f32 %681, 1
  %684 = extractvalue %dx.types.CBufRet.f32 %681, 2
  %685 = extractvalue %dx.types.CBufRet.f32 %681, 3
  %686 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 0
  store float %682, float* %686, align 4
  %687 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 1
  store float %683, float* %687, align 4
  %688 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 2
  store float %684, float* %688, align 4
  %689 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 3
  store float %685, float* %689, align 4
  %690 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 %608
  %691 = load float, float* %690, align 4, !tbaa !94, !noalias !98
  %692 = fmul fast float %691, %358
  %693 = fmul fast float %670, %626
  %694 = call float @dx.op.tertiary.f32(i32 46, float %627, float %671, float %693)  ; FMad(a,b,c)
  %695 = fmul fast float %670, %628
  %696 = call float @dx.op.tertiary.f32(i32 46, float %629, float %671, float %695)  ; FMad(a,b,c)
  %697 = add nuw nsw i32 %623, 8
  %698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = extractvalue %dx.types.ResRet.f32 %698, 1
  %701 = fadd fast float %699, %694
  %702 = fadd fast float %700, %696
  %703 = fmul fast float %701, %692
  %704 = fmul fast float %702, %692
  %705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.f32 %705, 0
  %707 = extractvalue %dx.types.ResRet.f32 %705, 1
  %708 = fmul fast float %703, %706
  %709 = fmul fast float %704, %707
  %710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.f32 %710, 2
  %712 = fadd fast float %708, %711
  %713 = fadd fast float %709, %711
  %714 = fmul fast float %672, %626
  %715 = call float @dx.op.tertiary.f32(i32 46, float %627, float %673, float %714)  ; FMad(a,b,c)
  %716 = fmul fast float %672, %628
  %717 = call float @dx.op.tertiary.f32(i32 46, float %629, float %673, float %716)  ; FMad(a,b,c)
  %718 = fadd fast float %699, %715
  %719 = fadd fast float %700, %717
  %720 = fmul fast float %718, %692
  %721 = fmul fast float %719, %692
  %722 = fmul fast float %720, %706
  %723 = fmul fast float %721, %707
  %724 = fadd fast float %722, %711
  %725 = fadd fast float %723, %711
  %726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %712, float %713, float %680, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %727 = extractvalue %dx.types.ResRet.f32 %726, 0
  %728 = extractvalue %dx.types.ResRet.f32 %726, 1
  %729 = extractvalue %dx.types.ResRet.f32 %726, 3
  %730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %724, float %725, float %680, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %731 = extractvalue %dx.types.ResRet.f32 %730, 0
  %732 = extractvalue %dx.types.ResRet.f32 %730, 1
  %733 = extractvalue %dx.types.ResRet.f32 %730, 3
  %734 = fsub fast float %731, %727
  %735 = fsub fast float %732, %728
  %736 = fsub fast float %733, %729
  %737 = fmul fast float %734, %677
  %738 = fmul fast float %735, %677
  %739 = fmul fast float %736, %677
  %740 = fadd fast float %737, %727
  %741 = fadd fast float %738, %728
  %742 = fadd fast float %739, %729
  %743 = fmul fast float %740, 2.000000e+00
  %744 = fmul fast float %741, 2.000000e+00
  %745 = fadd fast float %743, -1.000000e+00
  %746 = fadd fast float %744, -1.000000e+00
  %747 = fmul fast float %745, %626
  %748 = call float @dx.op.tertiary.f32(i32 46, float %746, float %628, float %747)  ; FMad(a,b,c)
  %749 = fmul fast float %745, %627
  %750 = call float @dx.op.tertiary.f32(i32 46, float %746, float %629, float %749)  ; FMad(a,b,c)
  %751 = fmul fast float %621, %533
  %752 = fmul fast float %751, %642
  %753 = fmul fast float %752, %645
  %754 = fmul fast float %748, %753
  %755 = fmul fast float %754, %706
  %756 = fmul fast float %750, %753
  %757 = fmul fast float %756, %707
  %758 = fadd fast float %755, %595
  %759 = fadd fast float %757, %596
  %760 = add nuw nsw i32 %623, 64
  %761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %760, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.f32 %761, 0
  %763 = fmul fast float %762, %742
  %764 = extractvalue %dx.types.ResRet.f32 %761, 1
  %765 = fadd fast float %763, %764
  %766 = call float @dx.op.binary.f32(i32 35, float %594, float %765)  ; FMax(a,b)
  %767 = add nuw i32 %598, 1
  %768 = icmp eq i32 %767, %590
  br i1 %768, label %769, label %593

; <label>:769                                     ; preds = %593
  br label %770

; <label>:770                                     ; preds = %769, %349
  %771 = phi float [ 0.000000e+00, %349 ], [ %766, %769 ]
  %772 = phi float [ 0.000000e+00, %349 ], [ %758, %769 ]
  %773 = phi float [ 0.000000e+00, %349 ], [ %759, %769 ]
  %774 = call float @dx.op.dot3.f32(i32 55, float %772, float %773, float 1.000000e+00, float %772, float %773, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %775 = call float @dx.op.unary.f32(i32 25, float %774)  ; Rsqrt(value)
  %776 = fmul fast float %771, %389
  %777 = fadd fast float %776, %390
  %778 = call float @dx.op.unary.f32(i32 7, float %777)  ; Saturate(value)
  %779 = fmul fast float %772, %347
  %780 = fmul fast float %779, %775
  %781 = fmul fast float %773, %347
  %782 = fmul fast float %781, %775
  %783 = fadd fast float %780, %305
  %784 = fadd fast float %782, %306
  %785 = fadd fast float %778, %529
  %786 = fmul fast float %429, %280
  %787 = fadd fast float %786, %430
  %788 = call float @dx.op.binary.f32(i32 35, float %787, float 0.000000e+00)  ; FMax(a,b)
  %789 = fmul fast float %788, %422
  %790 = fadd fast float %789, %423
  %791 = call float @dx.op.unary.f32(i32 7, float %790)  ; Saturate(value)
  %792 = fmul fast float %791, %785
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 1
  %795 = fcmp fast oge float %792, %794
  %796 = and i32 %352, 2
  %797 = icmp ne i32 %796, 0
  %798 = and i1 %797, %795
  br i1 %798, label %799, label %1026

; <label>:799                                     ; preds = %770
  %800 = add i32 %198, 0
  %801 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %800, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %802 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %801, i32 0)  ; GetDimensions(handle,mipLevel)
  %803 = extractvalue %dx.types.Dimensions %802, 0
  %804 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %803)  ; FirstbitLo(value)
  %805 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %806 = extractvalue %dx.types.CBufRet.i32 %805, 1
  %807 = sub nsw i32 %806, %804
  %808 = sitofp i32 %807 to float
  %809 = fsub fast float %382, %808
  %810 = call float @dx.op.binary.f32(i32 35, float %809, float 0.000000e+00)  ; FMax(a,b)
  %811 = fmul fast float %377, %205
  %812 = fmul fast float %377, %206
  %813 = fmul fast float %380, %63
  %814 = fmul fast float %380, %64
  %815 = call float @dx.op.unary.f32(i32 22, float %813)  ; Frc(value)
  %816 = call float @dx.op.unary.f32(i32 22, float %814)  ; Frc(value)
  %817 = fmul fast float %815, 2.000000e+00
  %818 = fmul fast float %816, 2.000000e+00
  %819 = fadd fast float %817, -1.000000e+00
  %820 = fadd fast float %818, -1.000000e+00
  %821 = call float @dx.op.unary.f32(i32 6, float %819)  ; FAbs(value)
  %822 = call float @dx.op.unary.f32(i32 6, float %820)  ; FAbs(value)
  %823 = fsub fast float 1.000000e+00, %821
  %824 = fmul fast float %823, %822
  %825 = fsub fast float %823, %824
  %826 = getelementptr [4 x float], [4 x float]* %76, i32 0, i32 0
  store float %825, float* %826, align 4, !tbaa !94, !noalias !103
  %827 = fmul fast float %822, %821
  %828 = fsub fast float %821, %827
  %829 = getelementptr [4 x float], [4 x float]* %76, i32 0, i32 1
  store float %828, float* %829, align 4, !tbaa !94, !noalias !103
  %830 = getelementptr [4 x float], [4 x float]* %76, i32 0, i32 2
  store float %824, float* %830, align 4, !tbaa !94, !noalias !103
  %831 = getelementptr [4 x float], [4 x float]* %76, i32 0, i32 3
  store float %827, float* %831, align 4, !tbaa !94, !noalias !103
  br label %832

; <label>:832                                     ; preds = %1007, %799
  %833 = phi float [ 0.000000e+00, %799 ], [ %1008, %1007 ]
  %834 = phi float [ 0.000000e+00, %799 ], [ %1009, %1007 ]
  %835 = phi float [ 0.000000e+00, %799 ], [ %1010, %1007 ]
  %836 = phi float [ 0.000000e+00, %799 ], [ %1011, %1007 ]
  %837 = phi float [ 0.000000e+00, %799 ], [ %1012, %1007 ]
  %838 = phi i32 [ 0, %799 ], [ %1013, %1007 ]
  %839 = mul i32 %838, 2
  %840 = add i32 0, %839
  %841 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %840
  %842 = load float, float* %841, align 4
  %843 = mul i32 %838, 2
  %844 = add i32 1, %843
  %845 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %844
  %846 = load float, float* %845, align 4
  %847 = fmul fast float %842, 5.000000e-01
  %848 = fmul fast float %846, 5.000000e-01
  %849 = fsub fast float 1.000000e+00, %842
  %850 = fsub fast float 1.000000e+00, %846
  %851 = fmul fast float %849, 5.000000e-01
  %852 = fmul fast float %850, 5.000000e-01
  %853 = fadd fast float %847, %813
  %854 = fadd fast float %848, %814
  %855 = call float @dx.op.unary.f32(i32 27, float %853)  ; Round_ni(value)
  %856 = call float @dx.op.unary.f32(i32 27, float %854)  ; Round_ni(value)
  %857 = fadd fast float %855, %851
  %858 = fadd fast float %856, %852
  %859 = fmul fast float %857, %381
  %860 = fmul fast float %858, %381
  %861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %862 = extractvalue %dx.types.CBufRet.f32 %861, 0
  %863 = fmul fast float %859, %862
  %864 = fmul fast float %860, %862
  %865 = extractvalue %dx.types.CBufRet.f32 %861, 1
  %866 = fadd fast float %863, %865
  %867 = fadd fast float %864, %865
  %868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %801, %dx.types.Handle %52, float %866, float %867, float %194, float undef, i32 0, i32 0, i32 undef, float %810)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 0
  %870 = extractvalue %dx.types.ResRet.f32 %868, 1
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 3
  %873 = fmul fast float %872, 2.000000e+00
  %874 = fmul fast float %873, %869
  %875 = fmul fast float %873, %870
  %876 = fsub fast float %874, %872
  %877 = fsub fast float %875, %872
  %878 = fmul fast float %876, %876
  %879 = fmul fast float %877, %877
  %880 = fadd fast float %878, %879
  %881 = call float @dx.op.unary.f32(i32 24, float %880)  ; Sqrt(value)
  %882 = fcmp fast ogt float %881, 0.000000e+00
  %883 = fdiv fast float 1.000000e+00, %881
  %884 = fmul fast float %876, %883
  %885 = fmul fast float %877, %883
  %886 = select i1 %882, float %884, float 0.000000e+00
  %887 = select i1 %882, float %885, float 0.000000e+00
  %888 = fcmp fast ogt float %785, 0.000000e+00
  br i1 %888, label %889, label %1007

; <label>:889                                     ; preds = %832
  %890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %891 = extractvalue %dx.types.CBufRet.f32 %890, 1
  %892 = fmul fast float %426, %377
  %893 = fmul fast float %881, %892
  %894 = fsub fast float -0.000000e+00, %886
  %895 = fmul fast float %887, %811
  %896 = call float @dx.op.tertiary.f32(i32 46, float %894, float %812, float %895)  ; FMad(a,b,c)
  %897 = fmul fast float %886, %811
  %898 = call float @dx.op.tertiary.f32(i32 46, float %887, float %812, float %897)  ; FMad(a,b,c)
  %899 = fmul fast float %893, %891
  %900 = fsub fast float %898, %899
  %901 = fmul fast float %896, %414
  %902 = fmul fast float %900, %415
  %903 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %904 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %531, %dx.types.Handle %903, float %901, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %905 = extractvalue %dx.types.ResRet.f32 %904, 0
  %906 = fmul fast float %789, %905
  %907 = fadd fast float %906, %423
  %908 = call float @dx.op.unary.f32(i32 7, float %907)  ; Saturate(value)
  %909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %910 = extractvalue %dx.types.CBufRet.f32 %909, 2
  %911 = fmul fast float %910, %71
  %912 = extractvalue %dx.types.CBufRet.f32 %909, 3
  %913 = fadd fast float %911, %912
  %914 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  %915 = fcmp fast ogt float %908, 0.000000e+00
  %916 = fcmp fast ogt float %914, 0.000000e+00
  %917 = and i1 %915, %916
  %918 = and i32 %352, 64
  %919 = icmp ne i32 %918, 0
  %920 = and i1 %919, %917
  br i1 %920, label %921, label %989

; <label>:921                                     ; preds = %889
  %922 = add i32 %490, 0
  %923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %922, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %924 = add i32 %493, 0
  %925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %924, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %926 = fmul fast float %896, %418
  %927 = fmul fast float %900, %419
  %928 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %923, %dx.types.Handle %903, float %926, float %927, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %929 = extractvalue %dx.types.ResRet.f32 %928, 0
  %930 = extractvalue %dx.types.ResRet.f32 %928, 1
  %931 = extractvalue %dx.types.ResRet.f32 %928, 2
  %932 = extractvalue %dx.types.ResRet.f32 %928, 3
  %933 = fmul fast float %929, %476
  %934 = fadd fast float %933, %477
  %935 = call float @dx.op.unary.f32(i32 7, float %934)  ; Saturate(value)
  %936 = fadd fast float %930, %932
  %937 = fmul fast float %936, %478
  %938 = fsub fast float %937, %478
  %939 = fsub fast float %930, %932
  %940 = fmul fast float %939, %478
  %941 = fmul fast float %938, %887
  %942 = call float @dx.op.tertiary.f32(i32 46, float %886, float %940, float %941)  ; FMad(a,b,c)
  %943 = fmul fast float %938, %894
  %944 = call float @dx.op.tertiary.f32(i32 46, float %887, float %940, float %943)  ; FMad(a,b,c)
  %945 = fmul fast float %942, %418
  %946 = fmul fast float %944, %419
  %947 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %925, %dx.types.Handle %903, float %926, float %927, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %948 = extractvalue %dx.types.ResRet.f32 %947, 0
  %949 = fsub fast float 1.000000e+00, %908
  %950 = bitcast float %908 to i32
  %951 = sitofp i32 %950 to float
  %952 = fadd fast float %951, 0xC1CFBF8940000000
  %953 = fmul fast float %952, %411
  %954 = fadd fast float %953, 0x41CFBF8940000000
  %955 = fptosi float %954 to i32
  %956 = bitcast i32 %955 to float
  %957 = bitcast float %949 to i32
  %958 = sitofp i32 %957 to float
  %959 = fadd fast float %958, 0xC1CFBF8940000000
  %960 = fmul fast float %959, %411
  %961 = fadd fast float %960, 0x41CFBF8940000000
  %962 = fptosi float %961 to i32
  %963 = bitcast i32 %962 to float
  %964 = fmul fast float %956, %408
  %965 = fmul fast float %963, %408
  %966 = fsub fast float %949, %964
  %967 = fadd fast float %965, %949
  %968 = call float @dx.op.unary.f32(i32 7, float %966)  ; Saturate(value)
  %969 = call float @dx.op.unary.f32(i32 7, float %967)  ; Saturate(value)
  %970 = fsub fast float %948, %968
  %971 = fsub fast float %969, %968
  %972 = bitcast float %971 to i32
  %973 = sub nsw i32 2129859010, %972
  %974 = bitcast i32 %973 to float
  %975 = fmul fast float %974, %970
  %976 = call float @dx.op.unary.f32(i32 7, float %975)  ; Saturate(value)
  %977 = fmul fast float %914, %405
  %978 = fmul fast float %977, %976
  %979 = fmul fast float %945, %978
  %980 = fmul fast float %946, %978
  %981 = fadd fast float %931, -1.000000e+00
  %982 = fmul fast float %978, %981
  %983 = fadd fast float %982, 1.000000e+00
  %984 = fsub fast float %935, %399
  %985 = fmul fast float %978, %984
  %986 = fadd fast float %985, %399
  %987 = fmul fast float %978, %949
  %988 = fadd fast float %987, %908
  br label %989

; <label>:989                                     ; preds = %921, %889
  %990 = phi float [ %988, %921 ], [ %908, %889 ]
  %991 = phi float [ %986, %921 ], [ %399, %889 ]
  %992 = phi float [ %983, %921 ], [ 1.000000e+00, %889 ]
  %993 = phi float [ %979, %921 ], [ 0.000000e+00, %889 ]
  %994 = phi float [ %980, %921 ], [ 0.000000e+00, %889 ]
  %995 = getelementptr [4 x float], [4 x float]* %76, i32 0, i32 %838
  %996 = load float, float* %995, align 4, !tbaa !94, !noalias !103
  %997 = fmul fast float %996, %990
  %998 = fmul fast float %997, %993
  %999 = fmul fast float %997, %994
  %1000 = fadd fast float %998, %833
  %1001 = fadd fast float %999, %834
  %1002 = fmul fast float %997, %992
  %1003 = fadd fast float %1002, %835
  %1004 = fmul fast float %997, %991
  %1005 = fadd fast float %1004, %836
  %1006 = fadd fast float %997, %837
  br label %1007

; <label>:1007                                    ; preds = %989, %832
  %1008 = phi float [ %1000, %989 ], [ %833, %832 ]
  %1009 = phi float [ %1001, %989 ], [ %834, %832 ]
  %1010 = phi float [ %1003, %989 ], [ %835, %832 ]
  %1011 = phi float [ %1005, %989 ], [ %836, %832 ]
  %1012 = phi float [ %1006, %989 ], [ %837, %832 ]
  %1013 = add nuw nsw i32 %838, 1
  %1014 = icmp eq i32 %1013, 4
  br i1 %1014, label %1015, label %832, !llvm.loop !109

; <label>:1015                                    ; preds = %1007
  %1016 = fmul fast float %1012, %785
  %1017 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1016)  ; FMax(a,b)
  %1018 = fmul fast float %1012, %1008
  %1019 = fmul fast float %1012, %1009
  %1020 = fadd fast float %1010, -1.000000e+00
  %1021 = fmul fast float %1012, %1020
  %1022 = fadd fast float %1021, 1.000000e+00
  %1023 = fsub fast float %1011, %370
  %1024 = fmul fast float %1012, %1023
  %1025 = fadd fast float %1024, %370
  br label %1026

; <label>:1026                                    ; preds = %1015, %770
  %1027 = phi float [ %1017, %1015 ], [ 0.000000e+00, %770 ]
  %1028 = phi float [ %1018, %1015 ], [ 0.000000e+00, %770 ]
  %1029 = phi float [ %1019, %1015 ], [ 0.000000e+00, %770 ]
  %1030 = phi float [ %1022, %1015 ], [ 1.000000e+00, %770 ]
  %1031 = phi float [ %1025, %1015 ], [ %370, %770 ]
  %1032 = fmul fast float %462, %280
  %1033 = fadd fast float %1032, %463
  %1034 = call float @dx.op.binary.f32(i32 35, float %1033, float 0.000000e+00)  ; FMax(a,b)
  %1035 = fmul fast float %1034, %458
  %1036 = fadd fast float %1035, %459
  %1037 = call float @dx.op.unary.f32(i32 7, float %1036)  ; Saturate(value)
  %1038 = fmul fast float %1037, %785
  %1039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.f32 %1039, 1
  %1041 = fcmp fast oge float %1038, %1040
  %1042 = and i32 %352, 4
  %1043 = icmp ne i32 %1042, 0
  %1044 = and i1 %1043, %1041
  br i1 %1044, label %1045, label %1333

; <label>:1045                                    ; preds = %1026
  %1046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.f32 %1046, 0
  %1048 = extractvalue %dx.types.CBufRet.f32 %1046, 1
  %1049 = fsub fast float %134, %205
  %1050 = fadd fast float %1049, %1047
  %1051 = fsub fast float %135, %206
  %1052 = fadd fast float %1051, %1048
  %1053 = fmul fast float %1050, %433
  %1054 = fmul fast float %1052, %433
  %1055 = fadd fast float %1053, %205
  %1056 = fadd fast float %1054, %206
  %1057 = add i32 %496, 0
  %1058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1057, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1059 = fmul fast float %1055, %440
  %1060 = fmul fast float %1056, %440
  %1061 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1062 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1058, %dx.types.Handle %1061, float %1059, float %1060, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1063 = extractvalue %dx.types.ResRet.f32 %1062, 0
  %1064 = extractvalue %dx.types.ResRet.f32 %1062, 1
  %1065 = extractvalue %dx.types.ResRet.f32 %1062, 2
  %1066 = fmul fast float %1063, 2.000000e+00
  %1067 = fmul fast float %1064, 2.000000e+00
  %1068 = fadd fast float %1066, -1.000000e+00
  %1069 = fadd fast float %1067, -1.000000e+00
  %1070 = fmul fast float %1065, %436
  %1071 = fmul fast float %1070, %449
  %1072 = fmul fast float %1071, %1068
  %1073 = fmul fast float %1071, %1069
  %1074 = fsub fast float %275, %1072
  %1075 = fsub fast float %276, %1073
  %1076 = fmul fast float %1074, %446
  %1077 = fmul fast float %1075, %446
  %1078 = fadd fast float %1076, %1072
  %1079 = fadd fast float %1077, %1073
  %1080 = fmul fast float %1078, %449
  %1081 = fmul fast float %1079, %449
  %1082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.f32 %1082, 1
  %1084 = fmul fast float %449, %174
  %1085 = fadd fast float %1083, %1084
  %1086 = fadd fast float %1085, %454
  %1087 = fmul fast float %1085, %453
  %1088 = call float @dx.op.unary.f32(i32 29, float %1087)  ; Round_z(value)
  %1089 = fmul fast float %1088, %452
  %1090 = fsub fast float %1085, %1089
  %1091 = fmul fast float %1086, %453
  %1092 = call float @dx.op.unary.f32(i32 29, float %1091)  ; Round_z(value)
  %1093 = fmul fast float %1092, %452
  %1094 = fsub fast float %1086, %1093
  %1095 = fmul fast float %1080, %1090
  %1096 = fmul fast float %1081, %1090
  %1097 = fmul fast float %1080, %1094
  %1098 = fmul fast float %1081, %1094
  %1099 = fsub fast float %1055, %1095
  %1100 = fsub fast float %1056, %1096
  %1101 = fsub fast float %1055, %1097
  %1102 = fsub fast float %1056, %1098
  %1103 = fsub fast float %454, %1090
  %1104 = call float @dx.op.unary.f32(i32 6, float %1103)  ; FAbs(value)
  %1105 = fmul fast float %1104, %455
  %1106 = call float @dx.op.unary.f32(i32 7, float %1105)  ; Saturate(value)
  %1107 = fmul fast float %1099, %437
  %1108 = fmul fast float %1100, %437
  %1109 = fmul fast float %1101, %437
  %1110 = fmul fast float %1102, %437
  %1111 = fcmp fast ogt float %443, 0.000000e+00
  br i1 %1111, label %1112, label %1199

; <label>:1112                                    ; preds = %1045
  %1113 = fmul fast float %443, %174
  %1114 = fmul fast float %1113, 5.000000e-01
  %1115 = fadd fast float %1114, 5.000000e-01
  %1116 = call float @dx.op.unary.f32(i32 22, float %1115)  ; Frc(value)
  %1117 = call float @dx.op.unary.f32(i32 22, float %1114)  ; Frc(value)
  %1118 = call float @dx.op.unary.f32(i32 27, float %1115)  ; Round_ni(value)
  %1119 = call float @dx.op.unary.f32(i32 27, float %1114)  ; Round_ni(value)
  %1120 = fmul fast float %1118, 2.000000e+00
  %1121 = fmul fast float %1119, 2.000000e+00
  %1122 = fadd fast float %1121, 1.000000e+00
  %1123 = fsub fast float 1.000000e+00, %1116
  %1124 = fsub fast float 1.000000e+00, %1117
  %1125 = call float @dx.op.binary.f32(i32 36, float %1116, float %1123)  ; FMin(a,b)
  %1126 = call float @dx.op.binary.f32(i32 36, float %1117, float %1124)  ; FMin(a,b)
  %1127 = fmul fast float %1125, 2.000000e+00
  %1128 = fmul fast float %1126, 2.000000e+00
  %1129 = call float @dx.op.dot3.f32(i32 55, float %1120, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1130 = call float @dx.op.dot3.f32(i32 55, float %1120, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1131 = call float @dx.op.dot3.f32(i32 55, float %1120, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1132 = call float @dx.op.unary.f32(i32 13, float %1129)  ; Sin(value)
  %1133 = call float @dx.op.unary.f32(i32 13, float %1130)  ; Sin(value)
  %1134 = call float @dx.op.unary.f32(i32 13, float %1131)  ; Sin(value)
  %1135 = fmul fast float %1132, 0x40E55DD180000000
  %1136 = fmul fast float %1133, 0x40E55DD180000000
  %1137 = fmul fast float %1134, 0x40E55DD180000000
  %1138 = call float @dx.op.unary.f32(i32 22, float %1135)  ; Frc(value)
  %1139 = call float @dx.op.unary.f32(i32 22, float %1136)  ; Frc(value)
  %1140 = call float @dx.op.unary.f32(i32 22, float %1137)  ; Frc(value)
  %1141 = fmul fast float %1138, 0x401921FB60000000
  %1142 = call float @dx.op.unary.f32(i32 12, float %1141)  ; Cos(value)
  %1143 = call float @dx.op.unary.f32(i32 13, float %1141)  ; Sin(value)
  %1144 = fsub fast float -0.000000e+00, %1143
  %1145 = call float @dx.op.dot3.f32(i32 55, float %1122, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1146 = call float @dx.op.dot3.f32(i32 55, float %1122, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1147 = call float @dx.op.dot3.f32(i32 55, float %1122, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1148 = call float @dx.op.unary.f32(i32 13, float %1145)  ; Sin(value)
  %1149 = call float @dx.op.unary.f32(i32 13, float %1146)  ; Sin(value)
  %1150 = call float @dx.op.unary.f32(i32 13, float %1147)  ; Sin(value)
  %1151 = fmul fast float %1148, 0x40E55DD180000000
  %1152 = fmul fast float %1149, 0x40E55DD180000000
  %1153 = fmul fast float %1150, 0x40E55DD180000000
  %1154 = call float @dx.op.unary.f32(i32 22, float %1151)  ; Frc(value)
  %1155 = call float @dx.op.unary.f32(i32 22, float %1152)  ; Frc(value)
  %1156 = call float @dx.op.unary.f32(i32 22, float %1153)  ; Frc(value)
  %1157 = fmul fast float %1154, 0x401921FB60000000
  %1158 = call float @dx.op.unary.f32(i32 12, float %1157)  ; Cos(value)
  %1159 = call float @dx.op.unary.f32(i32 13, float %1157)  ; Sin(value)
  %1160 = fsub fast float -0.000000e+00, %1159
  %1161 = fmul fast float %1142, %1107
  %1162 = call float @dx.op.tertiary.f32(i32 46, float %1108, float %1144, float %1161)  ; FMad(a,b,c)
  %1163 = fmul fast float %1143, %1107
  %1164 = call float @dx.op.tertiary.f32(i32 46, float %1108, float %1142, float %1163)  ; FMad(a,b,c)
  %1165 = fadd fast float %1162, %1139
  %1166 = fadd fast float %1164, %1140
  %1167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %531, %dx.types.Handle %1061, float %1165, float %1166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1168 = extractvalue %dx.types.ResRet.f32 %1167, 0
  %1169 = fmul fast float %1168, %1127
  %1170 = fmul fast float %1158, %1107
  %1171 = call float @dx.op.tertiary.f32(i32 46, float %1108, float %1160, float %1170)  ; FMad(a,b,c)
  %1172 = fmul fast float %1159, %1107
  %1173 = call float @dx.op.tertiary.f32(i32 46, float %1108, float %1158, float %1172)  ; FMad(a,b,c)
  %1174 = fadd fast float %1171, %1155
  %1175 = fadd fast float %1173, %1156
  %1176 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %531, %dx.types.Handle %1061, float %1174, float %1175, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1177 = extractvalue %dx.types.ResRet.f32 %1176, 0
  %1178 = fmul fast float %1177, %1128
  %1179 = fadd fast float %1178, %1169
  %1180 = fmul fast float %1142, %1109
  %1181 = call float @dx.op.tertiary.f32(i32 46, float %1110, float %1144, float %1180)  ; FMad(a,b,c)
  %1182 = fmul fast float %1143, %1109
  %1183 = call float @dx.op.tertiary.f32(i32 46, float %1110, float %1142, float %1182)  ; FMad(a,b,c)
  %1184 = fadd fast float %1181, %1139
  %1185 = fadd fast float %1183, %1140
  %1186 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %531, %dx.types.Handle %1061, float %1184, float %1185, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1187 = extractvalue %dx.types.ResRet.f32 %1186, 0
  %1188 = fmul fast float %1187, %1127
  %1189 = fmul fast float %1158, %1109
  %1190 = call float @dx.op.tertiary.f32(i32 46, float %1110, float %1160, float %1189)  ; FMad(a,b,c)
  %1191 = fmul fast float %1159, %1109
  %1192 = call float @dx.op.tertiary.f32(i32 46, float %1110, float %1158, float %1191)  ; FMad(a,b,c)
  %1193 = fadd fast float %1190, %1155
  %1194 = fadd fast float %1192, %1156
  %1195 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %531, %dx.types.Handle %1061, float %1193, float %1194, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = fmul fast float %1196, %1128
  %1198 = fadd fast float %1197, %1188
  br label %1204

; <label>:1199                                    ; preds = %1045
  %1200 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %531, %dx.types.Handle %1061, float %1107, float %1108, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %531, %dx.types.Handle %1061, float %1109, float %1110, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  br label %1204

; <label>:1204                                    ; preds = %1199, %1112
  %1205 = phi float [ %1179, %1112 ], [ %1201, %1199 ]
  %1206 = phi float [ %1198, %1112 ], [ %1203, %1199 ]
  %1207 = fsub fast float %1206, %1205
  %1208 = fmul fast float %1207, %1106
  %1209 = fadd fast float %1208, %1205
  %1210 = fmul fast float %1035, %1209
  %1211 = fadd fast float %1210, %459
  %1212 = call float @dx.op.unary.f32(i32 7, float %1211)  ; Saturate(value)
  %1213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.f32 %1213, 2
  %1215 = fmul fast float %1214, %71
  %1216 = extractvalue %dx.types.CBufRet.f32 %1213, 3
  %1217 = fadd fast float %1215, %1216
  %1218 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1219 = fcmp fast ogt float %1212, 0.000000e+00
  %1220 = fcmp fast ogt float %1218, 0.000000e+00
  %1221 = and i1 %1219, %1220
  %1222 = and i32 %352, 64
  %1223 = icmp ne i32 %1222, 0
  %1224 = and i1 %1223, %1221
  br i1 %1224, label %1225, label %1313

; <label>:1225                                    ; preds = %1204
  %1226 = add i32 %490, 0
  %1227 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1226, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1228 = fmul fast float %1107, %466
  %1229 = fmul fast float %1108, %467
  %1230 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1227, %dx.types.Handle %1061, float %1228, float %1229, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = extractvalue %dx.types.ResRet.f32 %1230, 1
  %1233 = extractvalue %dx.types.ResRet.f32 %1230, 2
  %1234 = extractvalue %dx.types.ResRet.f32 %1230, 3
  %1235 = fmul fast float %1231, %476
  %1236 = fadd fast float %1235, %477
  %1237 = call float @dx.op.unary.f32(i32 7, float %1236)  ; Saturate(value)
  %1238 = fadd fast float %1232, %1234
  %1239 = fmul fast float %1238, %478
  %1240 = fsub fast float %1239, %478
  %1241 = fsub fast float %1232, %1234
  %1242 = fmul fast float %1241, %478
  %1243 = fmul fast float %1109, %466
  %1244 = fmul fast float %1110, %467
  %1245 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1227, %dx.types.Handle %1061, float %1243, float %1244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1246 = extractvalue %dx.types.ResRet.f32 %1245, 0
  %1247 = extractvalue %dx.types.ResRet.f32 %1245, 1
  %1248 = extractvalue %dx.types.ResRet.f32 %1245, 2
  %1249 = extractvalue %dx.types.ResRet.f32 %1245, 3
  %1250 = fmul fast float %1246, %476
  %1251 = fadd fast float %1250, %477
  %1252 = call float @dx.op.unary.f32(i32 7, float %1251)  ; Saturate(value)
  %1253 = fadd fast float %1247, %1249
  %1254 = fsub fast float %1247, %1249
  %1255 = fsub fast float %1253, %1238
  %1256 = fsub fast float %1254, %1241
  %1257 = fmul fast float %1106, %478
  %1258 = fmul fast float %1257, %1255
  %1259 = fmul fast float %1257, %1256
  %1260 = fadd fast float %1258, %1240
  %1261 = fmul fast float %466, %1260
  %1262 = fadd fast float %1259, %1242
  %1263 = fmul fast float %467, %1262
  %1264 = fsub fast float %1248, %1233
  %1265 = fmul fast float %1264, %1106
  %1266 = fsub fast float %1252, %1237
  %1267 = fmul fast float %1266, %1106
  %1268 = fsub fast float %1246, %1231
  %1269 = fmul fast float %1268, %1106
  %1270 = fsub fast float 1.000000e+00, %1212
  %1271 = bitcast float %1212 to i32
  %1272 = sitofp i32 %1271 to float
  %1273 = fadd fast float %1272, 0xC1CFBF8940000000
  %1274 = fmul fast float %1273, %411
  %1275 = fadd fast float %1274, 0x41CFBF8940000000
  %1276 = fptosi float %1275 to i32
  %1277 = bitcast i32 %1276 to float
  %1278 = bitcast float %1270 to i32
  %1279 = sitofp i32 %1278 to float
  %1280 = fadd fast float %1279, 0xC1CFBF8940000000
  %1281 = fmul fast float %1280, %411
  %1282 = fadd fast float %1281, 0x41CFBF8940000000
  %1283 = fptosi float %1282 to i32
  %1284 = bitcast i32 %1283 to float
  %1285 = fmul fast float %1277, %408
  %1286 = fmul fast float %1284, %408
  %1287 = fsub fast float %1270, %1285
  %1288 = fadd fast float %1286, %1270
  %1289 = call float @dx.op.unary.f32(i32 7, float %1287)  ; Saturate(value)
  %1290 = call float @dx.op.unary.f32(i32 7, float %1288)  ; Saturate(value)
  %1291 = fsub fast float %1231, %1289
  %1292 = fadd fast float %1291, %1269
  %1293 = fsub fast float %1290, %1289
  %1294 = bitcast float %1293 to i32
  %1295 = sub nsw i32 2129859010, %1294
  %1296 = bitcast i32 %1295 to float
  %1297 = fmul fast float %1296, %1292
  %1298 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1299 = fmul fast float %1218, %405
  %1300 = fmul fast float %1299, %1298
  %1301 = fmul fast float %1261, %1300
  %1302 = fmul fast float %1263, %1300
  %1303 = fadd fast float %1233, -1.000000e+00
  %1304 = fadd fast float %1303, %1265
  %1305 = fmul fast float %1300, %1304
  %1306 = fadd fast float %1305, 1.000000e+00
  %1307 = fsub fast float %1237, %399
  %1308 = fadd fast float %1307, %1267
  %1309 = fmul fast float %1300, %1308
  %1310 = fadd fast float %1309, %399
  %1311 = fmul fast float %1300, %1270
  %1312 = fadd fast float %1311, %1212
  br label %1313

; <label>:1313                                    ; preds = %1225, %1204
  %1314 = phi float [ %1312, %1225 ], [ %1212, %1204 ]
  %1315 = phi float [ %1301, %1225 ], [ 0.000000e+00, %1204 ]
  %1316 = phi float [ %1302, %1225 ], [ 0.000000e+00, %1204 ]
  %1317 = phi float [ %1306, %1225 ], [ 1.000000e+00, %1204 ]
  %1318 = phi float [ %1310, %1225 ], [ %399, %1204 ]
  %1319 = fsub fast float %1315, %1028
  %1320 = fsub fast float %1316, %1029
  %1321 = fmul fast float %1319, %1314
  %1322 = fmul fast float %1320, %1314
  %1323 = fadd fast float %1321, %1028
  %1324 = fadd fast float %1322, %1029
  %1325 = fsub fast float %1317, %1030
  %1326 = fmul fast float %1325, %1314
  %1327 = fadd fast float %1326, %1030
  %1328 = fsub fast float %1318, %1031
  %1329 = fmul fast float %1328, %1314
  %1330 = fadd fast float %1329, %1031
  %1331 = fmul fast float %1314, %785
  %1332 = call float @dx.op.binary.f32(i32 35, float %1027, float %1331)  ; FMax(a,b)
  br label %1333

; <label>:1333                                    ; preds = %1313, %1026
  %1334 = phi float [ %1332, %1313 ], [ %1027, %1026 ]
  %1335 = phi float [ %1323, %1313 ], [ %1028, %1026 ]
  %1336 = phi float [ %1324, %1313 ], [ %1029, %1026 ]
  %1337 = phi float [ %1327, %1313 ], [ %1030, %1026 ]
  %1338 = phi float [ %1330, %1313 ], [ %1031, %1026 ]
  %1339 = and i32 %352, 16
  %1340 = icmp eq i32 %1339, 0
  br i1 %1340, label %1407, label %1341

; <label>:1341                                    ; preds = %1333
  %1342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1343 = extractvalue %dx.types.CBufRet.f32 %1342, 0
  %1344 = extractvalue %dx.types.CBufRet.f32 %1342, 1
  %1345 = fadd fast float %1343, %134
  %1346 = fadd fast float %1344, %135
  %1347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1348 = extractvalue %dx.types.CBufRet.f32 %1347, 0
  %1349 = extractvalue %dx.types.CBufRet.f32 %1347, 1
  %1350 = fsub fast float %1345, %1348
  %1351 = fsub fast float %1346, %1349
  %1352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.f32 %1352, 2
  %1354 = fmul fast float %1350, %1353
  %1355 = fmul fast float %1351, %1353
  %1356 = fadd fast float %1354, 5.000000e-01
  %1357 = fadd fast float %1355, 5.000000e-01
  %1358 = fcmp fast olt float %1356, 0.000000e+00
  %1359 = fcmp fast olt float %1357, 0.000000e+00
  %1360 = or i1 %1358, %1359
  %1361 = fcmp fast oge float %1356, 1.000000e+00
  %1362 = fcmp fast oge float %1357, 1.000000e+00
  %1363 = or i1 %1361, %1362
  %1364 = or i1 %1360, %1363
  br i1 %1364, label %1398, label %1365

; <label>:1365                                    ; preds = %1341
  %1366 = extractvalue %dx.types.CBufRet.f32 %1342, 2
  %1367 = fadd fast float %1366, %136
  %1368 = fmul fast float %1353, %1345
  %1369 = fmul fast float %1353, %1346
  %1370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.f32 %1370, 2
  %1372 = fsub fast float %1367, %1371
  %1373 = extractvalue %dx.types.CBufRet.f32 %1370, 1
  %1374 = fmul fast float %1372, %1373
  %1375 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  %1376 = call float @dx.op.binary.f32(i32 36, float %1357, float %1375)  ; FMin(a,b)
  %1377 = call float @dx.op.binary.f32(i32 36, float %1356, float %1376)  ; FMin(a,b)
  %1378 = call float @dx.op.binary.f32(i32 35, float %1357, float %1375)  ; FMax(a,b)
  %1379 = call float @dx.op.binary.f32(i32 35, float %1356, float %1378)  ; FMax(a,b)
  %1380 = fsub fast float 1.000000e+00, %1379
  %1381 = call float @dx.op.binary.f32(i32 36, float %1377, float %1380)  ; FMin(a,b)
  %1382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %1383 = extractvalue %dx.types.CBufRet.f32 %1382, 3
  %1384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %1385 = extractvalue %dx.types.CBufRet.f32 %1384, 1
  %1386 = call float @dx.op.binary.f32(i32 35, float %1385, float %1383)  ; FMax(a,b)
  %1387 = fsub fast float %1386, %1385
  %1388 = fsub fast float %1381, %1385
  %1389 = fdiv fast float %1388, %1387
  %1390 = call float @dx.op.unary.f32(i32 7, float %1389)  ; Saturate(value)
  %1391 = fmul fast float %1390, 2.000000e+00
  %1392 = fsub fast float 3.000000e+00, %1391
  %1393 = fmul fast float %1390, %1390
  %1394 = fmul fast float %1393, %1392
  %1395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %1368, float %1369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1396 = extractvalue %dx.types.ResRet.f32 %1395, 0
  %1397 = fmul fast float %1394, %1396
  br label %1398

; <label>:1398                                    ; preds = %1365, %1341
  %1399 = phi float [ %1397, %1365 ], [ 0.000000e+00, %1341 ]
  %1400 = fmul fast float %473, %205
  %1401 = fmul fast float %473, %206
  %1402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1403 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %531, %dx.types.Handle %1402, float %1400, float %1401, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1404 = extractvalue %dx.types.ResRet.f32 %1403, 0
  %1405 = fmul fast float %1404, %1399
  %1406 = call float @dx.op.binary.f32(i32 35, float %1334, float %1405)  ; FMax(a,b)
  br label %1407

; <label>:1407                                    ; preds = %1398, %1333
  %1408 = phi float [ %1406, %1398 ], [ %1334, %1333 ]
  %1409 = and i32 %352, 8
  %1410 = icmp eq i32 %1409, 0
  br i1 %1410, label %1427, label %1411

; <label>:1411                                    ; preds = %1407
  %1412 = fadd fast float %470, 1.000000e+00
  %1413 = fmul fast float %785, %1412
  %1414 = fsub fast float %1413, %470
  %1415 = fsub fast float %1412, %1414
  %1416 = call float @dx.op.unary.f32(i32 7, float %1415)  ; Saturate(value)
  %1417 = fsub fast float 1.000000e+00, %1413
  %1418 = call float @dx.op.unary.f32(i32 7, float %1417)  ; Saturate(value)
  %1419 = fsub fast float %1416, %1418
  %1420 = fsub fast float %1408, %1418
  %1421 = fdiv fast float %1420, %1419
  %1422 = call float @dx.op.unary.f32(i32 7, float %1421)  ; Saturate(value)
  %1423 = fmul fast float %1422, 2.000000e+00
  %1424 = fsub fast float 3.000000e+00, %1423
  %1425 = fmul fast float %1422, %1422
  %1426 = fmul fast float %1425, %1424
  br label %1427

; <label>:1427                                    ; preds = %1411, %1407
  %1428 = phi float [ %1426, %1411 ], [ %1408, %1407 ]
  %1429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1430 = extractvalue %dx.types.CBufRet.f32 %1429, 3
  %1431 = fmul fast float %1430, %1428
  %1432 = fmul fast float %1431, %347
  %1433 = fadd fast float %1432, %307
  %1434 = call float @dx.op.unary.f32(i32 7, float %1433)  ; Saturate(value)
  %1435 = and i32 %352, 32
  %1436 = icmp eq i32 %1435, 0
  br i1 %1436, label %1453, label %1437

; <label>:1437                                    ; preds = %1427
  %1438 = add i32 %487, 0
  %1439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1438, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1440 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1439, %dx.types.Handle %51, float %1431, float %402, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1441 = extractvalue %dx.types.ResRet.f32 %1440, 0
  %1442 = extractvalue %dx.types.ResRet.f32 %1440, 1
  %1443 = extractvalue %dx.types.ResRet.f32 %1440, 2
  %1444 = extractvalue %dx.types.ResRet.f32 %1440, 3
  %1445 = and i32 %481, 255
  %1446 = uitofp i32 %1445 to float
  %1447 = lshr i32 %481, 8
  %1448 = and i32 %1447, 255
  %1449 = uitofp i32 %1448 to float
  %1450 = fmul fast float %1444, %1446
  %1451 = fadd fast float %1450, %1449
  %1452 = fmul fast float %1451, 0x3F70101000000000
  br label %1453

; <label>:1453                                    ; preds = %1437, %1427
  %1454 = phi float [ %1441, %1437 ], [ %393, %1427 ]
  %1455 = phi float [ %1442, %1437 ], [ %394, %1427 ]
  %1456 = phi float [ %1443, %1437 ], [ %395, %1427 ]
  %1457 = phi float [ %1452, %1437 ], [ %396, %1427 ]
  %1458 = fsub fast float %1454, %364
  %1459 = fsub fast float %1455, %365
  %1460 = fsub fast float %1456, %366
  %1461 = fmul fast float %1458, %1431
  %1462 = fmul fast float %1459, %1431
  %1463 = fmul fast float %1460, %1431
  %1464 = fadd fast float %1461, %364
  %1465 = fadd fast float %1462, %365
  %1466 = fadd fast float %1463, %366
  %1467 = fsub fast float %1457, %367
  %1468 = fmul fast float %1467, %1431
  %1469 = fadd fast float %1468, %367
  %1470 = fsub fast float %1338, %370
  %1471 = fmul fast float %1431, %1470
  %1472 = fadd fast float %1471, %370
  %1473 = fadd fast float %1337, -1.000000e+00
  %1474 = fmul fast float %1431, %1473
  %1475 = fadd fast float %1474, 1.000000e+00
  %1476 = fmul fast float %1432, %1335
  %1477 = fmul fast float %1432, %1336
  %1478 = fadd fast float %783, %1476
  %1479 = fadd fast float %784, %1477
  %1480 = and i32 %303, 65535
  %1481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1480)  ; LegacyF16ToF32(value)
  %1482 = lshr i32 %303, 16
  %1483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1482)  ; LegacyF16ToF32(value)
  %1484 = and i32 %304, 65535
  %1485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1484)  ; LegacyF16ToF32(value)
  %1486 = lshr i32 %304, 16
  %1487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1486)  ; LegacyF16ToF32(value)
  %1488 = fmul fast float %1464, %347
  %1489 = fmul fast float %1465, %347
  %1490 = fmul fast float %1466, %347
  %1491 = fmul fast float %1469, %347
  %1492 = fadd fast float %1481, %1488
  %1493 = fadd fast float %1483, %1489
  %1494 = fadd fast float %1485, %1490
  %1495 = fadd fast float %1487, %1491
  %1496 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1492)  ; LegacyF32ToF16(value)
  %1497 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1493)  ; LegacyF32ToF16(value)
  %1498 = shl i32 %1497, 16
  %1499 = or i32 %1498, %1496
  %1500 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1494)  ; LegacyF32ToF16(value)
  %1501 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1495)  ; LegacyF32ToF16(value)
  %1502 = shl i32 %1501, 16
  %1503 = or i32 %1502, %1500
  %1504 = and i32 %311, 65535
  %1505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1504)  ; LegacyF16ToF32(value)
  %1506 = lshr i32 %311, 16
  %1507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1506)  ; LegacyF16ToF32(value)
  %1508 = fmul fast float %1475, %347
  %1509 = fmul fast float %1472, %347
  %1510 = fadd fast float %1505, %1508
  %1511 = fadd fast float %1507, %1509
  %1512 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1510)  ; LegacyF32ToF16(value)
  %1513 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1511)  ; LegacyF32ToF16(value)
  %1514 = shl i32 %1513, 16
  %1515 = or i32 %1514, %1512
  br label %1516

; <label>:1516                                    ; preds = %1453, %301
  %1517 = phi i32 [ %513, %1453 ], [ %302, %301 ]
  %1518 = phi i32 [ %1499, %1453 ], [ %303, %301 ]
  %1519 = phi i32 [ %1503, %1453 ], [ %304, %301 ]
  %1520 = phi float [ %1478, %1453 ], [ %305, %301 ]
  %1521 = phi float [ %1479, %1453 ], [ %306, %301 ]
  %1522 = phi float [ %1434, %1453 ], [ %307, %301 ]
  %1523 = phi i32 [ %515, %1453 ], [ %308, %301 ]
  %1524 = phi float [ %516, %1453 ], [ %309, %301 ]
  %1525 = phi i32 [ %1515, %1453 ], [ %311, %301 ]
  %1526 = icmp eq i32 %316, 0
  br i1 %1526, label %1527, label %301

; <label>:1527                                    ; preds = %1516
  br label %1528

; <label>:1528                                    ; preds = %1527, %0
  %1529 = phi i32 [ %184, %0 ], [ %1517, %1527 ]
  %1530 = phi i32 [ %161, %0 ], [ %1518, %1527 ]
  %1531 = phi i32 [ %161, %0 ], [ %1519, %1527 ]
  %1532 = phi float [ 0.000000e+00, %0 ], [ %1520, %1527 ]
  %1533 = phi float [ 0.000000e+00, %0 ], [ %1521, %1527 ]
  %1534 = phi float [ 0.000000e+00, %0 ], [ %1522, %1527 ]
  %1535 = phi i32 [ -1, %0 ], [ %1523, %1527 ]
  %1536 = phi i32 [ %161, %0 ], [ %1525, %1527 ]
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 0
  %1539 = extractvalue %dx.types.CBufRet.f32 %1537, 1
  %1540 = extractvalue %dx.types.CBufRet.f32 %1537, 2
  %1541 = fadd fast float %1538, %134
  %1542 = fadd fast float %1539, %135
  %1543 = fadd fast float %1540, %136
  %1544 = call float @dx.op.unary.f32(i32 83, float %1541)  ; DerivCoarseX(value)
  %1545 = call float @dx.op.unary.f32(i32 83, float %1542)  ; DerivCoarseX(value)
  %1546 = call float @dx.op.unary.f32(i32 83, float %1543)  ; DerivCoarseX(value)
  %1547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1548 = extractvalue %dx.types.CBufRet.f32 %1547, 2
  %1549 = fmul fast float %1548, %1544
  %1550 = fmul fast float %1548, %1545
  %1551 = fmul fast float %1548, %1546
  %1552 = call float @dx.op.unary.f32(i32 84, float %1541)  ; DerivCoarseY(value)
  %1553 = call float @dx.op.unary.f32(i32 84, float %1542)  ; DerivCoarseY(value)
  %1554 = call float @dx.op.unary.f32(i32 84, float %1543)  ; DerivCoarseY(value)
  %1555 = fmul fast float %1548, %1552
  %1556 = fmul fast float %1548, %1553
  %1557 = fmul fast float %1548, %1554
  %1558 = fmul fast float %1557, %1550
  %1559 = fmul fast float %1556, %1551
  %1560 = fsub fast float %1558, %1559
  %1561 = fmul fast float %1555, %1551
  %1562 = fmul fast float %1557, %1549
  %1563 = fsub fast float %1561, %1562
  %1564 = fmul fast float %1556, %1549
  %1565 = fmul fast float %1555, %1550
  %1566 = fsub fast float %1564, %1565
  %1567 = fmul fast float %1560, %1560
  %1568 = fmul fast float %1563, %1563
  %1569 = fadd fast float %1567, %1568
  %1570 = fmul fast float %1566, %1566
  %1571 = fadd fast float %1569, %1570
  %1572 = call float @dx.op.unary.f32(i32 24, float %1571)  ; Sqrt(value)
  %1573 = icmp eq i32 %1535, -1
  br i1 %1573, label %1664, label %1574

; <label>:1574                                    ; preds = %1528
  %1575 = mul i32 %1535, 928
  %1576 = add i32 %1575, 832
  %1577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1576, i32 undef)  ; BufferLoad(srv,index,wot)
  %1578 = extractvalue %dx.types.ResRet.f32 %1577, 0
  %1579 = add i32 %1575, 836
  %1580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1579, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.f32 %1580, 0
  %1582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1583 = extractvalue %dx.types.CBufRet.f32 %1582, 0
  %1584 = fmul fast float %1583, %1581
  %1585 = extractvalue %dx.types.CBufRet.f32 %1582, 1
  %1586 = fadd fast float %1584, %1585
  %1587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 210)  ; CBufferLoadLegacy(handle,regIndex)
  %1588 = extractvalue %dx.types.CBufRet.f32 %1587, 0
  %1589 = fadd fast float %1588, %1578
  %1590 = fcmp fast ogt float %1586, 0.000000e+00
  %1591 = fcmp fast ogt float %1534, %1589
  %1592 = and i1 %1590, %1591
  br i1 %1592, label %1593, label %1664

; <label>:1593                                    ; preds = %1574
  %1594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1595 = extractvalue %dx.types.CBufRet.f32 %1594, 3
  %1596 = fmul fast float %1541, 7.000000e+00
  %1597 = fadd fast float %1596, 9.175040e+05
  %1598 = fmul fast float %1542, 9.000000e+00
  %1599 = fadd fast float %1598, 1.179648e+06
  %1600 = fmul fast float %1595, 1.370000e+02
  %1601 = bitcast float %1597 to i32
  %1602 = bitcast float %1599 to i32
  %1603 = bitcast float %1600 to i32
  %1604 = shl i32 %1602, 17
  %1605 = xor i32 %1604, %1601
  %1606 = xor i32 %1605, %1603
  %1607 = xor i32 %1606, 61
  %1608 = lshr i32 %1606, 16
  %1609 = xor i32 %1607, %1608
  %1610 = mul i32 %1609, 9
  %1611 = lshr i32 %1610, 4
  %1612 = xor i32 %1611, %1610
  %1613 = mul i32 %1612, 668265261
  %1614 = lshr i32 %1613, 15
  %1615 = xor i32 %1614, %1613
  %1616 = uitofp i32 %1615 to float
  %1617 = fmul fast float %1616, 0x3DF0000000000000
  %1618 = fmul fast float %1586, %1572
  %1619 = fcmp fast ugt float %1617, %1618
  br i1 %1619, label %1664, label %1620

; <label>:1620                                    ; preds = %1593
  %1621 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 0, i32 undef, i32 6)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1622 = add i32 %1621, 6
  %1623 = icmp ugt i32 %1622, 4095
  br i1 %1623, label %1624, label %1627

; <label>:1624                                    ; preds = %1620
  %1625 = icmp ult i32 %1621, 4096
  br i1 %1625, label %1626, label %1627

; <label>:1626                                    ; preds = %1624
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1621, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1627

; <label>:1627                                    ; preds = %1626, %1624, %1620
  %1628 = phi i32 [ %1621, %1620 ], [ 0, %1626 ], [ 0, %1624 ]
  %1629 = icmp eq i32 %1628, 0
  br i1 %1629, label %1664, label %1630

; <label>:1630                                    ; preds = %1627
  %1631 = fsub fast float -0.000000e+00, %212
  %1632 = fsub fast float %1631, %255
  %1633 = fadd fast float %1632, %1543
  %1634 = shl i32 %1535, 16
  %1635 = or i32 %1634, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1628, i32 0, i32 %1635, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1636 = bitcast float %1633 to i32
  %1637 = add i32 %1628, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1637, i32 0, i32 %1636, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1638 = bitcast float %1541 to i32
  %1639 = add i32 %1628, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1639, i32 0, i32 %1638, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1640 = bitcast float %1542 to i32
  %1641 = add i32 %1628, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1641, i32 0, i32 %1640, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1642 = bitcast float %1543 to i32
  %1643 = add i32 %1628, 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1643, i32 0, i32 %1642, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1644 = fadd fast float %98, 1.000000e+00
  %1645 = fadd fast float %99, 1.000000e+00
  %1646 = fadd fast float %100, 1.000000e+00
  %1647 = fmul fast float %1644, 5.000000e-01
  %1648 = fmul fast float %1645, 5.000000e-01
  %1649 = fmul fast float %1646, 5.000000e-01
  %1650 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1651 = call float @dx.op.unary.f32(i32 7, float %1648)  ; Saturate(value)
  %1652 = call float @dx.op.unary.f32(i32 7, float %1649)  ; Saturate(value)
  %1653 = fmul fast float %1650, 1.023000e+03
  %1654 = fmul fast float %1651, 1.023000e+03
  %1655 = fmul fast float %1652, 1.023000e+03
  %1656 = fptoui float %1653 to i32
  %1657 = fptoui float %1654 to i32
  %1658 = fptoui float %1655 to i32
  %1659 = shl i32 %1657, 10
  %1660 = or i32 %1659, %1656
  %1661 = shl i32 %1658, 20
  %1662 = or i32 %1660, %1661
  %1663 = add i32 %1628, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1663, i32 0, i32 %1662, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1664

; <label>:1664                                    ; preds = %1630, %1627, %1593, %1574, %1528
  %1665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1666 = extractvalue %dx.types.CBufRet.f32 %1665, 2
  %1667 = fmul fast float %1666, 0x3FE3C6EF40000000
  %1668 = frem fast float %79, 2.560000e+02
  %1669 = frem fast float %80, 2.560000e+02
  %1670 = fptoui float %1668 to i32
  %1671 = fptoui float %1669 to i32
  %1672 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %30, i32 0, i32 %1670, i32 %1671, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1673 = extractvalue %dx.types.ResRet.f32 %1672, 0
  %1674 = fadd fast float %1673, %1667
  %1675 = call float @dx.op.unary.f32(i32 22, float %1674)  ; Frc(value)
  %1676 = fcmp fast ogt float %100, 0.000000e+00
  %1677 = fcmp fast olt float %100, 0.000000e+00
  %1678 = zext i1 %1676 to i32
  %1679 = zext i1 %1677 to i32
  %1680 = sub nsw i32 %1678, %1679
  %1681 = sitofp i32 %1680 to float
  %1682 = fadd fast float %1681, %100
  %1683 = fdiv fast float -1.000000e+00, %1682
  %1684 = fmul fast float %98, %99
  %1685 = fmul fast float %1684, %1683
  %1686 = fmul fast float %98, %98
  %1687 = fmul fast float %1686, %1681
  %1688 = fmul fast float %1687, %1683
  %1689 = fadd fast float %1688, 1.000000e+00
  %1690 = fmul fast float %1685, %1681
  %1691 = fmul fast float %98, %1681
  %1692 = fsub fast float -0.000000e+00, %1691
  %1693 = fmul fast float %99, %99
  %1694 = fmul fast float %1693, %1683
  %1695 = fadd fast float %1694, %1681
  %1696 = fsub fast float -0.000000e+00, %99
  %1697 = and i32 %1530, 65535
  %1698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1697)  ; LegacyF16ToF32(value)
  %1699 = lshr i32 %1530, 16
  %1700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1699)  ; LegacyF16ToF32(value)
  %1701 = and i32 %1531, 65535
  %1702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1701)  ; LegacyF16ToF32(value)
  %1703 = lshr i32 %1531, 16
  %1704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1703)  ; LegacyF16ToF32(value)
  %1705 = and i32 %1536, 65535
  %1706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1705)  ; LegacyF16ToF32(value)
  %1707 = lshr i32 %1536, 16
  %1708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1707)  ; LegacyF16ToF32(value)
  %1709 = call float @dx.op.unary.f32(i32 7, float %1708)  ; Saturate(value)
  %1710 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %1711 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %1712 = call float @dx.op.unary.f32(i32 83, float %136)  ; DerivCoarseX(value)
  %1713 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %1714 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %1715 = call float @dx.op.unary.f32(i32 84, float %136)  ; DerivCoarseY(value)
  %1716 = fadd fast float %1710, %134
  %1717 = fadd fast float %1711, %135
  %1718 = fadd fast float %1712, %136
  %1719 = fadd fast float %1713, %134
  %1720 = fadd fast float %1714, %135
  %1721 = fadd fast float %1715, %136
  %1722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1723 = extractvalue %dx.types.CBufRet.f32 %1722, 0
  %1724 = extractvalue %dx.types.CBufRet.f32 %1722, 1
  %1725 = extractvalue %dx.types.CBufRet.f32 %1722, 2
  %1726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1727 = extractvalue %dx.types.CBufRet.f32 %1726, 2
  %1728 = extractvalue %dx.types.CBufRet.f32 %1726, 3
  %1729 = fmul fast float %1723, %79
  %1730 = fmul fast float %1729, %1727
  %1731 = fmul fast float %1724, %80
  %1732 = fmul fast float %1731, %1728
  %1733 = fptoui float %1730 to i32
  %1734 = fptoui float %1732 to i32
  %1735 = fadd fast float %1723, -1.000000e+00
  %1736 = fadd fast float %1724, -1.000000e+00
  %1737 = fptoui float %1735 to i32
  %1738 = fptoui float %1736 to i32
  %1739 = call i32 @dx.op.binary.i32(i32 40, i32 %1733, i32 %1737)  ; UMin(a,b)
  %1740 = call i32 @dx.op.binary.i32(i32 40, i32 %1734, i32 %1738)  ; UMin(a,b)
  %1741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1742 = extractvalue %dx.types.CBufRet.f32 %1741, 2
  %1743 = extractvalue %dx.types.CBufRet.f32 %1741, 3
  %1744 = fmul fast float %1742, %71
  %1745 = fsub fast float %1744, %1743
  %1746 = fadd fast float %1725, -1.000000e+00
  %1747 = call float @dx.op.binary.f32(i32 36, float %1745, float %1746)  ; FMin(a,b)
  %1748 = fptoui float %1747 to i32
  %1749 = fptoui float %1723 to i32
  %1750 = fptoui float %1724 to i32
  %1751 = mul i32 %1748, %1750
  %1752 = add i32 %1751, %1740
  %1753 = mul i32 %1752, %1749
  %1754 = add i32 %1753, %1739
  %1755 = shl i32 %1754, 2
  %1756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.i32 %1756, 0
  %1758 = and i32 %1757, 1023
  %1759 = lshr i32 %1757, 10
  %1760 = icmp eq i32 %1758, 0
  br i1 %1760, label %2150, label %1761

; <label>:1761                                    ; preds = %1664
  %1762 = and i32 %1757, 1023
  br label %1763

; <label>:1763                                    ; preds = %1882, %1761
  %1764 = phi float [ %1883, %1882 ], [ 0.000000e+00, %1761 ]
  %1765 = phi float [ %1884, %1882 ], [ 0.000000e+00, %1761 ]
  %1766 = phi float [ %1885, %1882 ], [ 0.000000e+00, %1761 ]
  %1767 = phi float [ %1886, %1882 ], [ %1532, %1761 ]
  %1768 = phi float [ %1887, %1882 ], [ %1533, %1761 ]
  %1769 = phi float [ %1888, %1882 ], [ %1706, %1761 ]
  %1770 = phi float [ %1889, %1882 ], [ %1709, %1761 ]
  %1771 = phi float [ %1890, %1882 ], [ %1704, %1761 ]
  %1772 = phi float [ %1891, %1882 ], [ %1698, %1761 ]
  %1773 = phi float [ %1892, %1882 ], [ %1700, %1761 ]
  %1774 = phi float [ %1893, %1882 ], [ %1702, %1761 ]
  %1775 = phi i32 [ %1831, %1882 ], [ 0, %1761 ]
  %1776 = add nuw nsw i32 %1775, %1759
  %1777 = shl i32 %1776, 2
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = shl i32 %1779, 8
  %1781 = or i32 %1780, 48
  %1782 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.f32 %1782, 0
  %1784 = extractvalue %dx.types.ResRet.f32 %1782, 1
  %1785 = extractvalue %dx.types.ResRet.f32 %1782, 2
  %1786 = extractvalue %dx.types.ResRet.f32 %1782, 3
  %1787 = or i32 %1780, 64
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1787, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = extractvalue %dx.types.ResRet.i32 %1788, 1
  %1791 = or i32 %1780, 80
  %1792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1791, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.f32 %1792, 2
  %1794 = extractvalue %dx.types.ResRet.f32 %1792, 3
  %1795 = or i32 %1780, 96
  %1796 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.f32 %1796, 0
  %1798 = extractvalue %dx.types.ResRet.f32 %1796, 1
  %1799 = extractvalue %dx.types.ResRet.f32 %1796, 2
  %1800 = extractvalue %dx.types.ResRet.f32 %1796, 3
  %1801 = or i32 %1780, 112
  %1802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.f32 %1802, 2
  %1804 = or i32 %1780, 128
  %1805 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1804, i32 undef)  ; BufferLoad(srv,index,wot)
  %1806 = extractvalue %dx.types.ResRet.f32 %1805, 0
  %1807 = extractvalue %dx.types.ResRet.f32 %1805, 1
  %1808 = extractvalue %dx.types.ResRet.f32 %1805, 2
  %1809 = extractvalue %dx.types.ResRet.f32 %1805, 3
  %1810 = or i32 %1780, 144
  %1811 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %1812 = extractvalue %dx.types.ResRet.f32 %1811, 0
  %1813 = extractvalue %dx.types.ResRet.f32 %1811, 1
  %1814 = extractvalue %dx.types.ResRet.f32 %1811, 2
  %1815 = extractvalue %dx.types.ResRet.f32 %1811, 3
  %1816 = or i32 %1780, 160
  %1817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1818 = extractvalue %dx.types.ResRet.f32 %1817, 0
  %1819 = extractvalue %dx.types.ResRet.f32 %1817, 1
  %1820 = extractvalue %dx.types.ResRet.f32 %1817, 2
  %1821 = or i32 %1780, 192
  %1822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.i32 %1822, 0
  %1824 = or i32 %1780, 208
  %1825 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1824, i32 undef)  ; BufferLoad(srv,index,wot)
  %1826 = extractvalue %dx.types.ResRet.f32 %1825, 0
  %1827 = or i32 %1780, 248
  %1828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1827, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.f32 %1828, 0
  %1830 = extractvalue %dx.types.ResRet.f32 %1828, 1
  %1831 = add nuw nsw i32 %1775, 1
  %1832 = bitcast float %1786 to i32
  %1833 = and i32 %1832, 512
  %1834 = icmp ne i32 %1833, 0
  %1835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.f32 %1835, 0
  %1837 = extractvalue %dx.types.ResRet.f32 %1835, 1
  %1838 = extractvalue %dx.types.ResRet.f32 %1835, 2
  %1839 = extractvalue %dx.types.ResRet.f32 %1835, 3
  %1840 = call float @dx.op.dot4.f32(i32 56, float %1836, float %1837, float %1838, float %1839, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1841 = or i32 %1780, 16
  %1842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1841, i32 undef)  ; BufferLoad(srv,index,wot)
  %1843 = extractvalue %dx.types.ResRet.f32 %1842, 0
  %1844 = extractvalue %dx.types.ResRet.f32 %1842, 1
  %1845 = extractvalue %dx.types.ResRet.f32 %1842, 2
  %1846 = extractvalue %dx.types.ResRet.f32 %1842, 3
  %1847 = call float @dx.op.dot4.f32(i32 56, float %1843, float %1844, float %1845, float %1846, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1848 = or i32 %1780, 32
  %1849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.f32 %1849, 0
  %1851 = extractvalue %dx.types.ResRet.f32 %1849, 1
  %1852 = extractvalue %dx.types.ResRet.f32 %1849, 2
  %1853 = extractvalue %dx.types.ResRet.f32 %1849, 3
  %1854 = call float @dx.op.dot4.f32(i32 56, float %1850, float %1851, float %1852, float %1853, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1855 = call float @dx.op.unary.f32(i32 27, float %1840)  ; Round_ni(value)
  %1856 = call float @dx.op.unary.f32(i32 6, float %1855)  ; FAbs(value)
  %1857 = call float @dx.op.unary.f32(i32 27, float %1847)  ; Round_ni(value)
  %1858 = call float @dx.op.unary.f32(i32 6, float %1857)  ; FAbs(value)
  %1859 = call float @dx.op.unary.f32(i32 6, float %1854)  ; FAbs(value)
  %1860 = call float @dx.op.unary.f32(i32 27, float %1859)  ; Round_ni(value)
  %1861 = fadd fast float %1858, %1856
  %1862 = fadd fast float %1861, %1860
  %1863 = fcmp fast oeq float %1862, 0.000000e+00
  %1864 = call float @dx.op.dot4.f32(i32 56, float %1836, float %1837, float %1838, float %1839, float %1716, float %1717, float %1718, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1865 = call float @dx.op.dot4.f32(i32 56, float %1843, float %1844, float %1845, float %1846, float %1716, float %1717, float %1718, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1866 = call float @dx.op.dot4.f32(i32 56, float %1836, float %1837, float %1838, float %1839, float %1719, float %1720, float %1721, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1867 = call float @dx.op.dot4.f32(i32 56, float %1843, float %1844, float %1845, float %1846, float %1719, float %1720, float %1721, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1868 = fsub fast float %1864, %1840
  %1869 = fsub fast float %1866, %1840
  %1870 = fsub fast float %1865, %1847
  %1871 = fsub fast float %1867, %1847
  %1872 = call float @dx.op.dot3.f32(i32 55, float %1783, float %1784, float %1785, float %98, float %99, float %100)  ; Dot3(ax,ay,az,bx,by,bz)
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 2
  %1875 = call float @dx.op.unary.f32(i32 6, float %1872)  ; FAbs(value)
  %1876 = fadd fast float %1875, %1874
  %1877 = call float @dx.op.unary.f32(i32 7, float %1876)  ; Saturate(value)
  %1878 = extractvalue %dx.types.CBufRet.f32 %1873, 0
  %1879 = fcmp fast ogt float %1877, %1878
  %1880 = and i1 %1863, %1879
  %1881 = and i1 %1834, %1880
  br i1 %1881, label %1895, label %1882

; <label>:1882                                    ; preds = %2136, %1976, %1895, %1763
  %1883 = phi float [ %1764, %1895 ], [ %1764, %1976 ], [ %2146, %2136 ], [ %1764, %1763 ]
  %1884 = phi float [ %1765, %1895 ], [ %1765, %1976 ], [ %2147, %2136 ], [ %1765, %1763 ]
  %1885 = phi float [ %1766, %1895 ], [ %1766, %1976 ], [ %2148, %2136 ], [ %1766, %1763 ]
  %1886 = phi float [ %1767, %1895 ], [ %1767, %1976 ], [ %2110, %2136 ], [ %1767, %1763 ]
  %1887 = phi float [ %1768, %1895 ], [ %1768, %1976 ], [ %2111, %2136 ], [ %1768, %1763 ]
  %1888 = phi float [ %1769, %1895 ], [ %1769, %1976 ], [ %2105, %2136 ], [ %1769, %1763 ]
  %1889 = phi float [ %1770, %1895 ], [ %1770, %1976 ], [ %2102, %2136 ], [ %1770, %1763 ]
  %1890 = phi float [ %1771, %1895 ], [ %1771, %1976 ], [ %2099, %2136 ], [ %1771, %1763 ]
  %1891 = phi float [ %1772, %1895 ], [ %1772, %1976 ], [ %2094, %2136 ], [ %1772, %1763 ]
  %1892 = phi float [ %1773, %1895 ], [ %1773, %1976 ], [ %2095, %2136 ], [ %1773, %1763 ]
  %1893 = phi float [ %1774, %1895 ], [ %1774, %1976 ], [ %2096, %2136 ], [ %1774, %1763 ]
  %1894 = icmp eq i32 %1831, %1762
  br i1 %1894, label %2149, label %1763

; <label>:1895                                    ; preds = %1763
  %1896 = extractvalue %dx.types.ResRet.f32 %1802, 3
  %1897 = extractvalue %dx.types.ResRet.f32 %1802, 1
  %1898 = extractvalue %dx.types.ResRet.f32 %1802, 0
  %1899 = extractvalue %dx.types.ResRet.f32 %1792, 1
  %1900 = extractvalue %dx.types.ResRet.f32 %1792, 0
  %1901 = extractvalue %dx.types.ResRet.i32 %1788, 3
  %1902 = extractvalue %dx.types.ResRet.i32 %1788, 2
  %1903 = add i32 %1901, 0
  %1904 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1903, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1905 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1906 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1904, %dx.types.Handle %1905, float %1840, float %1847, float undef, float undef, i32 0, i32 0, i32 undef, float %1868, float %1870, float undef, float %1869, float %1871, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1907 = extractvalue %dx.types.ResRet.f32 %1906, 0
  %1908 = fmul fast float %1907, %1900
  %1909 = fadd fast float %1908, %1899
  %1910 = call float @dx.op.unary.f32(i32 7, float %1909)  ; Saturate(value)
  %1911 = fmul fast float %1840, %1797
  %1912 = call float @dx.op.tertiary.f32(i32 46, float %1798, float %1847, float %1911)  ; FMad(a,b,c)
  %1913 = fadd fast float %1912, %1898
  %1914 = fmul fast float %1840, %1799
  %1915 = call float @dx.op.tertiary.f32(i32 46, float %1800, float %1847, float %1914)  ; FMad(a,b,c)
  %1916 = fadd fast float %1915, %1897
  %1917 = fmul fast float %1868, %1797
  %1918 = call float @dx.op.tertiary.f32(i32 46, float %1798, float %1870, float %1917)  ; FMad(a,b,c)
  %1919 = fmul fast float %1868, %1799
  %1920 = call float @dx.op.tertiary.f32(i32 46, float %1800, float %1870, float %1919)  ; FMad(a,b,c)
  %1921 = fmul fast float %1869, %1797
  %1922 = call float @dx.op.tertiary.f32(i32 46, float %1798, float %1871, float %1921)  ; FMad(a,b,c)
  %1923 = fmul fast float %1869, %1799
  %1924 = call float @dx.op.tertiary.f32(i32 46, float %1800, float %1871, float %1923)  ; FMad(a,b,c)
  %1925 = add i32 %1902, 0
  %1926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1925, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1927 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1926, %dx.types.Handle %1905, float %1913, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float %1918, float %1920, float undef, float %1922, float %1924, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1928 = extractvalue %dx.types.ResRet.f32 %1927, 0
  %1929 = and i32 %1832, 1024
  %1930 = icmp ne i32 %1929, 0
  %1931 = fcmp fast ogt float %1928, 0x3FE0101020000000
  %1932 = uitofp i1 %1931 to float
  %1933 = select i1 %1930, float %1932, float %1928
  %1934 = and i32 %1832, 8192
  %1935 = icmp ne i32 %1934, 0
  %1936 = select i1 %1935, float %1896, float 1.000000e+00
  %1937 = fmul fast float %1840, 2.000000e+00
  %1938 = fadd fast float %1937, -1.000000e+00
  %1939 = call float @dx.op.unary.f32(i32 6, float %1938)  ; FAbs(value)
  %1940 = fmul fast float %1939, %1829
  %1941 = fsub fast float %1940, %1829
  %1942 = call float @dx.op.unary.f32(i32 7, float %1941)  ; Saturate(value)
  %1943 = fmul fast float %1847, 2.000000e+00
  %1944 = fadd fast float %1943, -1.000000e+00
  %1945 = call float @dx.op.unary.f32(i32 6, float %1944)  ; FAbs(value)
  %1946 = fmul fast float %1945, %1830
  %1947 = fsub fast float %1946, %1830
  %1948 = call float @dx.op.unary.f32(i32 7, float %1947)  ; Saturate(value)
  %1949 = fmul fast float %1859, %1793
  %1950 = fsub fast float %1949, %1793
  %1951 = call float @dx.op.unary.f32(i32 7, float %1950)  ; Saturate(value)
  %1952 = fmul fast float %1910, %1936
  %1953 = fmul fast float %1952, %1907
  %1954 = fmul fast float %1953, %1942
  %1955 = fmul fast float %1954, %1933
  %1956 = fmul fast float %1955, %1948
  %1957 = fmul fast float %1956, %1951
  %1958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1959 = extractvalue %dx.types.CBufRet.f32 %1958, 1
  %1960 = extractvalue %dx.types.CBufRet.f32 %1958, 0
  %1961 = fsub fast float %1877, %1960
  %1962 = fmul fast float %1961, %1959
  %1963 = call float @dx.op.unary.f32(i32 7, float %1962)  ; Saturate(value)
  %1964 = fmul fast float %1957, %1794
  %1965 = fadd fast float %1957, %1794
  %1966 = fmul fast float %1965, %1803
  %1967 = fsub fast float %1966, %1803
  %1968 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1969 = and i32 %1832, 128
  %1970 = icmp ne i32 %1969, 0
  %1971 = select i1 %1970, float %1968, float %1964
  %1972 = fmul fast float %1971, %1963
  %1973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1974 = extractvalue %dx.types.CBufRet.f32 %1973, 0
  %1975 = fcmp fast ugt float %1972, %1974
  br i1 %1975, label %1976, label %1882

; <label>:1976                                    ; preds = %1895
  br i1 %1935, label %1882, label %1977

; <label>:1977                                    ; preds = %1976
  %1978 = and i32 %1832, 4
  %1979 = and i32 %1832, 8
  %1980 = add i32 %1789, 0
  %1981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1980, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1982 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1983 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1981, %dx.types.Handle %1982, float %1913, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float %1918, float %1920, float undef, float %1922, float %1924, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1984 = extractvalue %dx.types.ResRet.f32 %1983, 0
  %1985 = extractvalue %dx.types.ResRet.f32 %1983, 1
  %1986 = extractvalue %dx.types.ResRet.f32 %1983, 2
  %1987 = extractvalue %dx.types.ResRet.f32 %1983, 3
  %1988 = bitcast float %1815 to i32
  %1989 = and i32 %1988, 255
  %1990 = uitofp i32 %1989 to float
  %1991 = lshr i32 %1988, 8
  %1992 = and i32 %1991, 255
  %1993 = uitofp i32 %1992 to float
  %1994 = fmul fast float %1987, %1990
  %1995 = fadd fast float %1994, %1993
  %1996 = fmul fast float %1995, 0x3F70101000000000
  %1997 = add i32 %1790, 0
  %1998 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1997, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1999 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1998, %dx.types.Handle %1982, float %1913, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float %1918, float %1920, float undef, float %1922, float %1924, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2000 = extractvalue %dx.types.ResRet.f32 %1999, 0
  %2001 = extractvalue %dx.types.ResRet.f32 %1999, 1
  %2002 = extractvalue %dx.types.ResRet.f32 %1999, 2
  %2003 = extractvalue %dx.types.ResRet.f32 %1999, 3
  %2004 = bitcast float %1809 to i32
  %2005 = and i32 %2004, 255
  %2006 = uitofp i32 %2005 to float
  %2007 = lshr i32 %2004, 8
  %2008 = and i32 %2007, 255
  %2009 = uitofp i32 %2008 to float
  %2010 = lshr i32 %2004, 16
  %2011 = and i32 %2010, 255
  %2012 = uitofp i32 %2011 to float
  %2013 = fmul fast float %2012, 0x3F70101000000000
  %2014 = fmul fast float %2000, %2006
  %2015 = fadd fast float %2014, %2009
  %2016 = fmul fast float %2015, 0x3F70101000000000
  %2017 = fadd fast float %2001, -5.000000e-01
  %2018 = fadd fast float %2003, -5.000000e-01
  %2019 = fmul fast float %2017, %2013
  %2020 = fmul fast float %2018, %2013
  %2021 = fadd fast float %2019, 5.000000e-01
  %2022 = fadd fast float %2020, 5.000000e-01
  %2023 = fmul fast float %1984, %1818
  %2024 = fmul fast float %1985, %1819
  %2025 = fmul fast float %1986, %1820
  %2026 = fmul fast float %2021, 2.000000e+00
  %2027 = fadd fast float %2026, -1.000000e+00
  %2028 = fmul fast float %2022, 2.000000e+00
  %2029 = fadd fast float %2028, -1.000000e+00
  %2030 = fadd fast float %2027, %2029
  %2031 = fmul fast float %2030, 5.000000e-01
  %2032 = fsub fast float %2027, %2029
  %2033 = fmul fast float %2032, 5.000000e-01
  %2034 = call float @dx.op.unary.f32(i32 6, float %2031)  ; FAbs(value)
  %2035 = fsub fast float 1.000000e+00, %2034
  %2036 = call float @dx.op.unary.f32(i32 6, float %2033)  ; FAbs(value)
  %2037 = fsub fast float %2035, %2036
  %2038 = call float @dx.op.dot3.f32(i32 55, float %2031, float %2033, float %2037, float %2031, float %2033, float %2037)  ; Dot3(ax,ay,az,bx,by,bz)
  %2039 = call float @dx.op.unary.f32(i32 25, float %2038)  ; Rsqrt(value)
  %2040 = fmul fast float %2031, %2039
  %2041 = fmul fast float %2033, %2039
  %2042 = fmul fast float %2039, %2037
  %2043 = fmul fast float %2042, %1783
  %2044 = fmul fast float %2042, %1784
  %2045 = fmul fast float %2042, %1785
  %2046 = fmul fast float %2040, %1806
  %2047 = fmul fast float %2040, %1807
  %2048 = fmul fast float %2040, %1808
  %2049 = fadd fast float %2046, %2043
  %2050 = fadd fast float %2047, %2044
  %2051 = fadd fast float %2048, %2045
  %2052 = fmul fast float %2041, %1812
  %2053 = fmul fast float %2041, %1813
  %2054 = fmul fast float %2041, %1814
  %2055 = fadd fast float %2049, %2052
  %2056 = fadd fast float %2050, %2053
  %2057 = fadd fast float %2051, %2054
  %2058 = call float @dx.op.dot3.f32(i32 55, float %2055, float %2056, float %2057, float %2055, float %2056, float %2057)  ; Dot3(ax,ay,az,bx,by,bz)
  %2059 = call float @dx.op.unary.f32(i32 25, float %2058)  ; Rsqrt(value)
  %2060 = fmul fast float %2055, %2059
  %2061 = fmul fast float %2056, %2059
  %2062 = fmul fast float %2057, %2059
  %2063 = fcmp fast ogt float %1872, %1878
  %2064 = fsub fast float -0.000000e+00, %2060
  %2065 = fsub fast float -0.000000e+00, %2061
  %2066 = fsub fast float -0.000000e+00, %2062
  %2067 = select i1 %2063, float %2060, float %2064
  %2068 = select i1 %2063, float %2061, float %2065
  %2069 = select i1 %2063, float %2062, float %2066
  %2070 = fmul fast float %2067, %1689
  %2071 = call float @dx.op.tertiary.f32(i32 46, float %2068, float %1690, float %2070)  ; FMad(a,b,c)
  %2072 = call float @dx.op.tertiary.f32(i32 46, float %2069, float %1692, float %2071)  ; FMad(a,b,c)
  %2073 = fmul fast float %2067, %1685
  %2074 = call float @dx.op.tertiary.f32(i32 46, float %2068, float %1695, float %2073)  ; FMad(a,b,c)
  %2075 = call float @dx.op.tertiary.f32(i32 46, float %2069, float %1696, float %2074)  ; FMad(a,b,c)
  %2076 = icmp ne i32 %1979, 0
  %2077 = select i1 %2076, float 1.000000e+00, float 0.000000e+00
  %2078 = fmul fast float %1972, %2077
  %2079 = and i32 %1832, 1
  %2080 = icmp ne i32 %2079, 0
  %2081 = fadd fast float %2072, %1767
  %2082 = fadd fast float %2075, %1768
  %2083 = select i1 %2080, float %2081, float %2072
  %2084 = select i1 %2080, float %2082, float %2075
  %2085 = icmp ne i32 %1978, 0
  %2086 = select i1 %2085, float 1.000000e+00, float 0.000000e+00
  %2087 = fmul fast float %1972, %2086
  %2088 = fsub fast float %2023, %1772
  %2089 = fsub fast float %2024, %1773
  %2090 = fsub fast float %2025, %1774
  %2091 = fmul fast float %2088, %2087
  %2092 = fmul fast float %2089, %2087
  %2093 = fmul fast float %2090, %2087
  %2094 = fadd fast float %2091, %1772
  %2095 = fadd fast float %2092, %1773
  %2096 = fadd fast float %2093, %1774
  %2097 = fsub fast float %1996, %1771
  %2098 = fmul fast float %2097, %2087
  %2099 = fadd fast float %2098, %1771
  %2100 = fsub fast float %2016, %1770
  %2101 = fmul fast float %2100, %2078
  %2102 = fadd fast float %2101, %1770
  %2103 = fsub fast float %2002, %1769
  %2104 = fmul fast float %2103, %2078
  %2105 = fadd fast float %2104, %1769
  %2106 = fsub fast float %2083, %1767
  %2107 = fsub fast float %2084, %1768
  %2108 = fmul fast float %2106, %2078
  %2109 = fmul fast float %2107, %2078
  %2110 = fadd fast float %2108, %1767
  %2111 = fadd fast float %2109, %1768
  %2112 = and i32 %1832, 16
  %2113 = icmp eq i32 %2112, 0
  br i1 %2113, label %2136, label %2114

; <label>:2114                                    ; preds = %1977
  %2115 = bitcast float %1826 to i32
  %2116 = add i32 %1823, 0
  %2117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2116, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2118 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2117, %dx.types.Handle %1982, float %1913, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float %1918, float %1920, float undef, float %1922, float %1924, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2119 = extractvalue %dx.types.ResRet.f32 %2118, 0
  %2120 = extractvalue %dx.types.ResRet.f32 %2118, 1
  %2121 = extractvalue %dx.types.ResRet.f32 %2118, 2
  %2122 = and i32 %2115, 65535
  %2123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2122)  ; LegacyF16ToF32(value)
  %2124 = fmul fast float %2119, %1818
  %2125 = fmul fast float %2120, %1819
  %2126 = fmul fast float %2121, %1820
  %2127 = and i32 %1832, 16384
  %2128 = icmp ne i32 %2127, 0
  %2129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2130 = extractvalue %dx.types.CBufRet.f32 %2129, 0
  %2131 = select i1 %2128, float %2130, float 1.000000e+00
  %2132 = fmul fast float %2131, %2123
  %2133 = fmul fast float %2124, %2132
  %2134 = fmul fast float %2125, %2132
  %2135 = fmul fast float %2126, %2132
  br label %2136

; <label>:2136                                    ; preds = %2114, %1977
  %2137 = phi float [ %2133, %2114 ], [ 0.000000e+00, %1977 ]
  %2138 = phi float [ %2134, %2114 ], [ 0.000000e+00, %1977 ]
  %2139 = phi float [ %2135, %2114 ], [ 0.000000e+00, %1977 ]
  %2140 = fsub fast float %2137, %1764
  %2141 = fsub fast float %2138, %1765
  %2142 = fsub fast float %2139, %1766
  %2143 = fmul fast float %2140, %1972
  %2144 = fmul fast float %2141, %1972
  %2145 = fmul fast float %2142, %1972
  %2146 = fadd fast float %2143, %1764
  %2147 = fadd fast float %2144, %1765
  %2148 = fadd fast float %2145, %1766
  br label %1882

; <label>:2149                                    ; preds = %1882
  br label %2150

; <label>:2150                                    ; preds = %2149, %1664
  %2151 = phi float [ 0.000000e+00, %1664 ], [ %1883, %2149 ]
  %2152 = phi float [ 0.000000e+00, %1664 ], [ %1884, %2149 ]
  %2153 = phi float [ 0.000000e+00, %1664 ], [ %1885, %2149 ]
  %2154 = phi float [ %1532, %1664 ], [ %1886, %2149 ]
  %2155 = phi float [ %1533, %1664 ], [ %1887, %2149 ]
  %2156 = phi float [ %1706, %1664 ], [ %1888, %2149 ]
  %2157 = phi float [ %1709, %1664 ], [ %1889, %2149 ]
  %2158 = phi float [ %1704, %1664 ], [ %1890, %2149 ]
  %2159 = phi float [ %1698, %1664 ], [ %1891, %2149 ]
  %2160 = phi float [ %1700, %1664 ], [ %1892, %2149 ]
  %2161 = phi float [ %1702, %1664 ], [ %1893, %2149 ]
  %2162 = call float @dx.op.dot2.f32(i32 54, float %2154, float %2155, float %2154, float %2155)  ; Dot2(ax,ay,bx,by)
  %2163 = fmul fast float %2162, 0x3FE3333340000000
  %2164 = fsub fast float 1.000000e+00, %2163
  %2165 = call float @dx.op.dot3.f32(i32 55, float %2154, float %2155, float %2164, float %2154, float %2155, float %2164)  ; Dot3(ax,ay,az,bx,by,bz)
  %2166 = call float @dx.op.unary.f32(i32 25, float %2165)  ; Rsqrt(value)
  %2167 = fmul fast float %2166, %2154
  %2168 = fmul fast float %2166, %2155
  %2169 = fmul fast float %2164, %2166
  %2170 = fmul fast float %2169, %98
  %2171 = fmul fast float %2169, %99
  %2172 = fmul fast float %2169, %100
  %2173 = fmul fast float %2167, %1689
  %2174 = fmul fast float %2167, %1690
  %2175 = fmul fast float %2167, %1692
  %2176 = fadd fast float %2170, %2173
  %2177 = fadd fast float %2171, %2174
  %2178 = fadd fast float %2172, %2175
  %2179 = fmul fast float %2168, %1685
  %2180 = fmul fast float %2168, %1695
  %2181 = fmul fast float %2168, %1696
  %2182 = fadd fast float %2176, %2179
  %2183 = fadd fast float %2177, %2180
  %2184 = fadd fast float %2178, %2181
  %2185 = call float @dx.op.dot3.f32(i32 55, float %2182, float %2183, float %2184, float %2182, float %2183, float %2184)  ; Dot3(ax,ay,az,bx,by,bz)
  %2186 = call float @dx.op.unary.f32(i32 25, float %2185)  ; Rsqrt(value)
  %2187 = fmul fast float %2182, %2186
  %2188 = fmul fast float %2183, %2186
  %2189 = fmul fast float %2184, %2186
  %2190 = fadd fast float %2158, 0xBFB99999A0000000
  %2191 = call float @dx.op.unary.f32(i32 7, float %2190)  ; Saturate(value)
  %2192 = fmul fast float %2191, 0x3FF1C71C80000000
  %2193 = call float @dx.op.binary.f32(i32 36, float %2158, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2194 = fsub fast float 1.000000e+00, %2192
  %2195 = call float @dx.op.unary.f32(i32 7, float %2194)  ; Saturate(value)
  %2196 = fmul fast float %2195, %2159
  %2197 = fmul fast float %2195, %2160
  %2198 = fmul fast float %2195, %2161
  %2199 = call float @dx.op.unary.f32(i32 7, float %2196)  ; Saturate(value)
  %2200 = call float @dx.op.unary.f32(i32 7, float %2197)  ; Saturate(value)
  %2201 = call float @dx.op.unary.f32(i32 7, float %2198)  ; Saturate(value)
  %2202 = fmul fast float %2192, %2159
  %2203 = fmul fast float %2192, %2160
  %2204 = fmul fast float %2192, %2161
  %2205 = fadd fast float %2202, %2193
  %2206 = fadd fast float %2203, %2193
  %2207 = fadd fast float %2204, %2193
  %2208 = call float @dx.op.unary.f32(i32 7, float %2205)  ; Saturate(value)
  %2209 = call float @dx.op.unary.f32(i32 7, float %2206)  ; Saturate(value)
  %2210 = call float @dx.op.unary.f32(i32 7, float %2207)  ; Saturate(value)
  %2211 = fmul fast float %2209, 0x401CF23780000000
  %2212 = fadd fast float %2211, 0x3FF32641C0000000
  %2213 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %134, float %135, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %2214 = call float @dx.op.unary.f32(i32 25, float %2213)  ; Rsqrt(value)
  %2215 = fmul fast float %2214, %134
  %2216 = fmul fast float %2214, %135
  %2217 = fmul fast float %2214, %136
  %2218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2219 = extractvalue %dx.types.CBufRet.f32 %2218, 0
  %2220 = fdiv fast float 1.000000e+00, %2212
  %2221 = select i1 %96, float %2220, float %2212
  %2222 = fadd fast float %2221, -1.000000e+00
  %2223 = fadd fast float %2221, 1.000000e+00
  %2224 = fdiv fast float %2222, %2223
  %2225 = fmul fast float %2224, %2224
  %2226 = call float @dx.op.dot3.f32(i32 55, float %2215, float %2216, float %2217, float %2187, float %2188, float %2189)  ; Dot3(ax,ay,az,bx,by,bz)
  %2227 = select i1 %96, float 0.000000e+00, float %2219
  %2228 = fadd fast float %2226, %2227
  %2229 = call float @dx.op.binary.f32(i32 35, float %2228, float -1.000000e+00)  ; FMax(a,b)
  %2230 = call float @dx.op.binary.f32(i32 36, float %2229, float 1.000000e+00)  ; FMin(a,b)
  %2231 = fmul fast float %2221, %2221
  %2232 = fmul fast float %2230, %2230
  %2233 = fsub fast float 1.000000e+00, %2232
  %2234 = fmul fast float %2231, %2233
  %2235 = fsub fast float 1.000000e+00, %2234
  %2236 = fcmp fast olt float %2221, 1.000000e+00
  %2237 = select i1 %2236, float %2232, float %2235
  %2238 = fcmp fast ogt float %2235, 0.000000e+00
  %2239 = fsub fast float 1.000000e+00, %2225
  %2240 = call float @dx.op.unary.f32(i32 24, float %2237)  ; Sqrt(value)
  %2241 = fsub fast float 1.000000e+00, %2240
  %2242 = call float @dx.op.unary.f32(i32 23, float %2241)  ; Log(value)
  %2243 = fmul fast float %2242, 5.000000e+00
  %2244 = call float @dx.op.unary.f32(i32 21, float %2243)  ; Exp(value)
  %2245 = fmul fast float %2244, %2239
  %2246 = fadd fast float %2245, %2225
  %2247 = select i1 %2238, float %2246, float 1.000000e+00
  %2248 = lshr i32 %1529, 24
  %2249 = uitofp i32 %2248 to float
  %2250 = fmul fast float %2249, 0x3F70101020000000
  %2251 = call float @dx.op.unary.f32(i32 7, float %2250)  ; Saturate(value)
  %2252 = fmul fast float %134, %134
  %2253 = fmul fast float %135, %135
  %2254 = fadd fast float %2253, %2252
  %2255 = fmul fast float %136, %136
  %2256 = fadd fast float %2254, %2255
  %2257 = call float @dx.op.unary.f32(i32 24, float %2256)  ; Sqrt(value)
  %2258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %2259 = extractvalue %dx.types.CBufRet.f32 %2258, 0
  %2260 = fmul fast float %2259, %2257
  %2261 = extractvalue %dx.types.CBufRet.f32 %2258, 1
  %2262 = fadd fast float %2260, %2261
  %2263 = call float @dx.op.unary.f32(i32 7, float %2262)  ; Saturate(value)
  %2264 = fmul fast float %2251, 2.550000e+02
  %2265 = fmul fast float %2264, %2263
  %2266 = fptoui float %2265 to i32
  %2267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2268 = extractvalue %dx.types.CBufRet.f32 %2267, 3
  %2269 = fmul fast float %2268, %2157
  %2270 = call float @dx.op.unary.f32(i32 7, float %2269)  ; Saturate(value)
  %2271 = call float @dx.op.unary.f32(i32 7, float %2156)  ; Saturate(value)
  %2272 = fmul fast float %63, 6.553500e+04
  %2273 = call float @dx.op.unary.f32(i32 26, float %2272)  ; Round_ne(value)
  %2274 = fptosi float %2273 to i32
  %2275 = call i32 @dx.op.binary.i32(i32 37, i32 %2274, i32 0)  ; IMax(a,b)
  %2276 = call i32 @dx.op.binary.i32(i32 38, i32 %2275, i32 65535)  ; IMin(a,b)
  %2277 = fmul fast float %64, 6.553500e+04
  %2278 = call float @dx.op.unary.f32(i32 26, float %2277)  ; Round_ne(value)
  %2279 = fptosi float %2278 to i32
  %2280 = call i32 @dx.op.binary.i32(i32 37, i32 %2279, i32 0)  ; IMax(a,b)
  %2281 = call i32 @dx.op.binary.i32(i32 38, i32 %2280, i32 65535)  ; IMin(a,b)
  %2282 = shl i32 %2281, 16
  %2283 = or i32 %2282, %2276
  %2284 = call float @dx.op.dot3.f32(i32 55, float %2208, float %2209, float %2210, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2285 = fsub fast float 1.000000e+00, %2284
  %2286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.i32 %2286, 0
  %2288 = and i32 %2287, 255
  %2289 = uitofp i32 %2288 to float
  %2290 = lshr i32 %2287, 8
  %2291 = and i32 %2290, 255
  %2292 = uitofp i32 %2291 to float
  %2293 = fmul fast float %2292, %2285
  %2294 = fadd fast float %2293, %2289
  %2295 = fmul fast float %2294, 0x3F70101020000000
  %2296 = call float @dx.op.unary.f32(i32 7, float %2295)  ; Saturate(value)
  %2297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2298 = extractvalue %dx.types.CBufRet.f32 %2297, 0
  %2299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2301 = extractvalue %dx.types.CBufRet.i32 %2300, 3
  %2302 = and i32 %2301, 3
  %2303 = icmp ne i32 %2302, 0
  %2304 = and i32 %2301, 4
  %2305 = icmp ne i32 %2304, 0
  %2306 = and i1 %2303, %2305
  br i1 %2306, label %2307, label %2318

; <label>:2307                                    ; preds = %2150
  %2308 = extractvalue %dx.types.CBufRet.f32 %2299, 3
  %2309 = fmul fast float %2308, %80
  %2310 = extractvalue %dx.types.CBufRet.f32 %2299, 2
  %2311 = fmul fast float %2310, %79
  %2312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %51, float %2311, float %2309, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2313 = extractvalue %dx.types.ResRet.f32 %2312, 0
  %2314 = fsub fast float 1.000000e+00, %2313
  %2315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %2316 = extractvalue %dx.types.CBufRet.f32 %2315, 0
  %2317 = fcmp fast olt float %2314, %2316
  br label %2321

; <label>:2318                                    ; preds = %2150
  %2319 = icmp eq i32 %2304, 0
  %2320 = and i1 %2303, %2319
  br label %2321

; <label>:2321                                    ; preds = %2318, %2307
  %2322 = phi i1 [ %2317, %2307 ], [ %2320, %2318 ]
  %2323 = fsub fast float -0.000000e+00, %136
  %2324 = fsub fast float -0.000000e+00, %2215
  %2325 = fsub fast float -0.000000e+00, %2216
  %2326 = fsub fast float -0.000000e+00, %2217
  %2327 = select i1 %2322, float 0.000000e+00, float %2210
  %2328 = call float @dx.op.dot3.f32(i32 55, float %2187, float %2188, float %2189, float %2324, float %2325, float %2326)  ; Dot3(ax,ay,az,bx,by,bz)
  %2329 = call float @dx.op.unary.f32(i32 7, float %2328)  ; Saturate(value)
  %2330 = fmul fast float %2226, 2.000000e+00
  %2331 = fmul fast float %2330, %2187
  %2332 = fmul fast float %2330, %2188
  %2333 = fmul fast float %2330, %2189
  %2334 = fsub fast float %2215, %2331
  %2335 = fsub fast float %2216, %2332
  %2336 = fsub fast float %2217, %2333
  %2337 = call float @dx.op.binary.f32(i32 36, float %2271, float 1.000000e+00)  ; FMin(a,b)
  %2338 = fsub fast float 1.000000e+00, %2271
  %2339 = bitcast float %2338 to i32
  %2340 = sub nsw i32 2129859010, %2339
  %2341 = bitcast i32 %2340 to float
  %2342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2343 = extractvalue %dx.types.CBufRet.f32 %2342, 0
  %2344 = extractvalue %dx.types.CBufRet.f32 %2342, 1
  %2345 = extractvalue %dx.types.CBufRet.f32 %2342, 2
  %2346 = fadd fast float %2343, %134
  %2347 = fadd fast float %2344, %135
  %2348 = fadd fast float %2345, %136
  %2349 = fmul fast float %2187, 3.200000e+01
  %2350 = fmul fast float %2188, 3.200000e+01
  %2351 = fadd fast float %2346, %2349
  %2352 = fadd fast float %2347, %2350
  %2353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2354 = extractvalue %dx.types.CBufRet.f32 %2353, 0
  %2355 = extractvalue %dx.types.CBufRet.f32 %2353, 1
  %2356 = fsub fast float %2351, %2354
  %2357 = fsub fast float %2352, %2355
  %2358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2359 = extractvalue %dx.types.CBufRet.f32 %2358, 0
  %2360 = extractvalue %dx.types.CBufRet.f32 %2358, 1
  %2361 = fmul fast float %2356, %2359
  %2362 = fmul fast float %2357, %2360
  %2363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2364 = extractvalue %dx.types.CBufRet.f32 %2363, 0
  %2365 = fmul fast float %2361, %2364
  %2366 = extractvalue %dx.types.CBufRet.f32 %2363, 1
  %2367 = fadd fast float %2365, %2366
  %2368 = extractvalue %dx.types.CBufRet.f32 %2363, 2
  %2369 = fmul fast float %2368, %2362
  %2370 = extractvalue %dx.types.CBufRet.f32 %2363, 3
  %2371 = fadd fast float %2369, %2370
  %2372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %51, float %2367, float %2371, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2373 = extractvalue %dx.types.ResRet.f32 %2372, 0
  %2374 = extractvalue %dx.types.ResRet.f32 %2372, 1
  %2375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2376 = extractvalue %dx.types.CBufRet.f32 %2375, 1
  %2377 = extractvalue %dx.types.CBufRet.f32 %2375, 0
  %2378 = fsub fast float %2376, %2377
  %2379 = fmul fast float %2378, %2373
  %2380 = fadd fast float %2379, %2377
  %2381 = extractvalue %dx.types.CBufRet.f32 %2375, 3
  %2382 = extractvalue %dx.types.CBufRet.f32 %2375, 2
  %2383 = fsub fast float %2381, %2382
  %2384 = fmul fast float %2383, %2374
  %2385 = fadd fast float %2384, %2382
  %2386 = fsub fast float %2348, %2380
  %2387 = fsub fast float %2385, %2380
  %2388 = fdiv fast float %2386, %2387
  %2389 = call float @dx.op.unary.f32(i32 7, float %2388)  ; Saturate(value)
  %2390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2391 = extractvalue %dx.types.CBufRet.f32 %2390, 0
  %2392 = fmul fast float %2391, %2389
  %2393 = extractvalue %dx.types.CBufRet.f32 %2390, 1
  %2394 = fadd fast float %2392, %2393
  %2395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %51, float %2367, float %2371, float %2394, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2396 = extractvalue %dx.types.ResRet.f32 %2395, 0
  %2397 = extractvalue %dx.types.ResRet.f32 %2395, 1
  %2398 = extractvalue %dx.types.ResRet.f32 %2395, 2
  %2399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2400 = extractvalue %dx.types.CBufRet.f32 %2399, 0
  %2401 = extractvalue %dx.types.CBufRet.f32 %2399, 1
  %2402 = extractvalue %dx.types.CBufRet.f32 %2399, 2
  %2403 = fmul fast float %2400, %2396
  %2404 = fmul fast float %2401, %2397
  %2405 = fmul fast float %2402, %2398
  %2406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2407 = extractvalue %dx.types.CBufRet.f32 %2406, 0
  %2408 = extractvalue %dx.types.CBufRet.f32 %2406, 1
  %2409 = extractvalue %dx.types.CBufRet.f32 %2406, 2
  %2410 = fadd fast float %2403, %2407
  %2411 = fadd fast float %2404, %2408
  %2412 = fadd fast float %2405, %2409
  %2413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2414 = extractvalue %dx.types.CBufRet.f32 %2413, 0
  %2415 = fmul fast float %2414, %2361
  %2416 = extractvalue %dx.types.CBufRet.f32 %2413, 1
  %2417 = fadd fast float %2415, %2416
  %2418 = extractvalue %dx.types.CBufRet.f32 %2413, 2
  %2419 = fmul fast float %2418, %2362
  %2420 = extractvalue %dx.types.CBufRet.f32 %2413, 3
  %2421 = fadd fast float %2419, %2420
  %2422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2423 = extractvalue %dx.types.CBufRet.f32 %2422, 0
  %2424 = extractvalue %dx.types.CBufRet.f32 %2422, 1
  %2425 = extractvalue %dx.types.CBufRet.f32 %2422, 2
  %2426 = extractvalue %dx.types.CBufRet.f32 %2422, 3
  %2427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2428 = extractvalue %dx.types.CBufRet.f32 %2427, 0
  %2429 = extractvalue %dx.types.CBufRet.f32 %2427, 1
  %2430 = extractvalue %dx.types.CBufRet.f32 %2427, 2
  %2431 = extractvalue %dx.types.CBufRet.f32 %2427, 3
  %2432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %2417, float %2421, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2433 = extractvalue %dx.types.ResRet.f32 %2432, 0
  %2434 = extractvalue %dx.types.ResRet.f32 %2432, 1
  %2435 = extractvalue %dx.types.ResRet.f32 %2432, 2
  %2436 = extractvalue %dx.types.ResRet.f32 %2432, 3
  %2437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %2417, float %2421, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2438 = extractvalue %dx.types.ResRet.f32 %2437, 0
  %2439 = extractvalue %dx.types.ResRet.f32 %2437, 1
  %2440 = extractvalue %dx.types.ResRet.f32 %2437, 2
  %2441 = extractvalue %dx.types.ResRet.f32 %2437, 3
  %2442 = fmul fast float %2433, %2410
  %2443 = fmul fast float %2438, %2410
  %2444 = fmul fast float %2440, %2410
  %2445 = fmul fast float %2436, %2410
  %2446 = fadd fast float %2442, %2423
  %2447 = fadd fast float %2443, %2424
  %2448 = fadd fast float %2444, %2425
  %2449 = fadd fast float %2445, %2426
  %2450 = fmul fast float %2434, %2410
  %2451 = fmul fast float %2439, %2410
  %2452 = fadd fast float %2450, %2428
  %2453 = fadd fast float %2451, %2429
  %2454 = fmul fast float %2435, %2410
  %2455 = fmul fast float %2441, %2410
  %2456 = fadd fast float %2454, %2430
  %2457 = fadd fast float %2455, %2431
  %2458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %2417, float %2421, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2459 = extractvalue %dx.types.ResRet.f32 %2458, 0
  %2460 = extractvalue %dx.types.ResRet.f32 %2458, 1
  %2461 = extractvalue %dx.types.ResRet.f32 %2458, 2
  %2462 = extractvalue %dx.types.ResRet.f32 %2458, 3
  %2463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %2417, float %2421, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2464 = extractvalue %dx.types.ResRet.f32 %2463, 0
  %2465 = extractvalue %dx.types.ResRet.f32 %2463, 1
  %2466 = extractvalue %dx.types.ResRet.f32 %2463, 2
  %2467 = extractvalue %dx.types.ResRet.f32 %2463, 3
  %2468 = fmul fast float %2459, %2411
  %2469 = fmul fast float %2464, %2411
  %2470 = fmul fast float %2466, %2411
  %2471 = fmul fast float %2462, %2411
  %2472 = fadd fast float %2446, %2468
  %2473 = fadd fast float %2447, %2469
  %2474 = fadd fast float %2448, %2470
  %2475 = fadd fast float %2449, %2471
  %2476 = fmul fast float %2460, %2411
  %2477 = fmul fast float %2465, %2411
  %2478 = fadd fast float %2452, %2476
  %2479 = fadd fast float %2453, %2477
  %2480 = fmul fast float %2461, %2411
  %2481 = fmul fast float %2467, %2411
  %2482 = fadd fast float %2456, %2480
  %2483 = fadd fast float %2457, %2481
  %2484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %2417, float %2421, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2485 = extractvalue %dx.types.ResRet.f32 %2484, 0
  %2486 = extractvalue %dx.types.ResRet.f32 %2484, 1
  %2487 = extractvalue %dx.types.ResRet.f32 %2484, 2
  %2488 = extractvalue %dx.types.ResRet.f32 %2484, 3
  %2489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %2417, float %2421, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2490 = extractvalue %dx.types.ResRet.f32 %2489, 0
  %2491 = extractvalue %dx.types.ResRet.f32 %2489, 1
  %2492 = extractvalue %dx.types.ResRet.f32 %2489, 2
  %2493 = extractvalue %dx.types.ResRet.f32 %2489, 3
  %2494 = fmul fast float %2485, %2412
  %2495 = fmul fast float %2490, %2412
  %2496 = fmul fast float %2492, %2412
  %2497 = fmul fast float %2488, %2412
  %2498 = fadd fast float %2472, %2494
  %2499 = fadd fast float %2473, %2495
  %2500 = fadd fast float %2474, %2496
  %2501 = fadd fast float %2475, %2497
  %2502 = fmul fast float %2486, %2412
  %2503 = fmul fast float %2491, %2412
  %2504 = fadd fast float %2478, %2502
  %2505 = fadd fast float %2479, %2503
  %2506 = fmul fast float %2487, %2412
  %2507 = fmul fast float %2493, %2412
  %2508 = fadd fast float %2482, %2506
  %2509 = fadd fast float %2483, %2507
  %2510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2511 = extractvalue %dx.types.CBufRet.f32 %2510, 0
  %2512 = fsub fast float %2346, %2511
  %2513 = fsub fast float %2354, %2346
  %2514 = call float @dx.op.binary.f32(i32 35, float %2513, float %2512)  ; FMax(a,b)
  %2515 = extractvalue %dx.types.CBufRet.f32 %2510, 1
  %2516 = fsub fast float %2347, %2515
  %2517 = fsub fast float %2355, %2347
  %2518 = call float @dx.op.binary.f32(i32 35, float %2517, float %2516)  ; FMax(a,b)
  %2519 = call float @dx.op.binary.f32(i32 35, float %2514, float %2518)  ; FMax(a,b)
  %2520 = extractvalue %dx.types.CBufRet.f32 %2358, 3
  %2521 = fmul fast float %2520, %2519
  %2522 = call float @dx.op.unary.f32(i32 7, float %2521)  ; Saturate(value)
  %2523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2524 = extractvalue %dx.types.CBufRet.f32 %2523, 0
  %2525 = extractvalue %dx.types.CBufRet.f32 %2523, 1
  %2526 = extractvalue %dx.types.CBufRet.f32 %2523, 2
  %2527 = extractvalue %dx.types.CBufRet.f32 %2523, 3
  %2528 = fsub fast float %2524, %2498
  %2529 = fsub fast float %2525, %2499
  %2530 = fsub fast float %2526, %2500
  %2531 = fsub fast float %2527, %2501
  %2532 = fmul fast float %2528, %2522
  %2533 = fmul fast float %2529, %2522
  %2534 = fmul fast float %2530, %2522
  %2535 = fmul fast float %2531, %2522
  %2536 = fadd fast float %2532, %2498
  %2537 = fadd fast float %2533, %2499
  %2538 = fadd fast float %2534, %2500
  %2539 = fadd fast float %2535, %2501
  %2540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2541 = extractvalue %dx.types.CBufRet.f32 %2540, 0
  %2542 = extractvalue %dx.types.CBufRet.f32 %2540, 1
  %2543 = fsub fast float %2541, %2504
  %2544 = fsub fast float %2542, %2505
  %2545 = fmul fast float %2543, %2522
  %2546 = fmul fast float %2544, %2522
  %2547 = fadd fast float %2545, %2504
  %2548 = fadd fast float %2546, %2505
  %2549 = extractvalue %dx.types.CBufRet.f32 %2540, 2
  %2550 = extractvalue %dx.types.CBufRet.f32 %2540, 3
  %2551 = fsub fast float %2549, %2508
  %2552 = fsub fast float %2550, %2509
  %2553 = fmul fast float %2551, %2522
  %2554 = fmul fast float %2552, %2522
  %2555 = fadd fast float %2553, %2508
  %2556 = fadd fast float %2554, %2509
  %2557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2558 = extractvalue %dx.types.CBufRet.f32 %2557, 0
  %2559 = fmul fast float %2558, %2536
  %2560 = fmul fast float %2558, %2537
  %2561 = fmul fast float %2558, %2538
  %2562 = fmul fast float %2558, %2539
  %2563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2564 = extractvalue %dx.types.CBufRet.f32 %2563, 0
  %2565 = fmul fast float %2564, %2547
  %2566 = fmul fast float %2564, %2548
  %2567 = fadd fast float %2565, %2559
  %2568 = fadd fast float %2566, %2561
  %2569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2570 = extractvalue %dx.types.CBufRet.f32 %2569, 0
  %2571 = fmul fast float %2570, %2555
  %2572 = fmul fast float %2570, %2556
  %2573 = fadd fast float %2567, %2571
  %2574 = fadd fast float %2568, %2572
  %2575 = extractvalue %dx.types.CBufRet.f32 %2557, 1
  %2576 = fmul fast float %2575, %2536
  %2577 = fmul fast float %2575, %2537
  %2578 = fmul fast float %2575, %2538
  %2579 = fmul fast float %2575, %2539
  %2580 = extractvalue %dx.types.CBufRet.f32 %2563, 1
  %2581 = fmul fast float %2580, %2547
  %2582 = fmul fast float %2580, %2548
  %2583 = fadd fast float %2581, %2576
  %2584 = fadd fast float %2582, %2578
  %2585 = extractvalue %dx.types.CBufRet.f32 %2569, 1
  %2586 = fmul fast float %2585, %2555
  %2587 = fmul fast float %2585, %2556
  %2588 = fadd fast float %2583, %2586
  %2589 = fadd fast float %2584, %2587
  %2590 = extractvalue %dx.types.CBufRet.f32 %2557, 2
  %2591 = fmul fast float %2590, %2536
  %2592 = fmul fast float %2590, %2537
  %2593 = fmul fast float %2590, %2538
  %2594 = fmul fast float %2590, %2539
  %2595 = extractvalue %dx.types.CBufRet.f32 %2563, 2
  %2596 = fmul fast float %2595, %2547
  %2597 = fmul fast float %2595, %2548
  %2598 = fadd fast float %2596, %2591
  %2599 = fadd fast float %2597, %2593
  %2600 = extractvalue %dx.types.CBufRet.f32 %2569, 2
  %2601 = fmul fast float %2600, %2555
  %2602 = fmul fast float %2600, %2556
  %2603 = fadd fast float %2598, %2601
  %2604 = fadd fast float %2599, %2602
  %2605 = fmul fast float %2592, %2592
  %2606 = fmul fast float %2604, %2604
  %2607 = fmul fast float %2594, %2594
  %2608 = fadd fast float %2607, %2605
  %2609 = fadd fast float %2608, %2606
  %2610 = call float @dx.op.unary.f32(i32 24, float %2609)  ; Sqrt(value)
  %2611 = fcmp fast ugt float %2610, 0.000000e+00
  br i1 %2611, label %2612, label %2627

; <label>:2612                                    ; preds = %2321
  %2613 = fsub fast float -0.000000e+00, %2594
  %2614 = fdiv fast float %2613, %2610
  %2615 = fsub fast float -0.000000e+00, %2592
  %2616 = fdiv fast float %2615, %2610
  %2617 = fdiv fast float %2604, %2610
  %2618 = fmul fast float %2603, 0x3FE279A760000000
  %2619 = fmul fast float %2616, %2592
  %2620 = fmul fast float %2617, %2604
  %2621 = fmul fast float %2614, %2594
  %2622 = fadd fast float %2619, %2621
  %2623 = fsub fast float %2622, %2620
  %2624 = call float @dx.op.unary.f32(i32 6, float %2623)  ; FAbs(value)
  %2625 = fadd fast float %2624, 0x3DDB7CDFE0000000
  %2626 = fdiv fast float %2618, %2625
  br label %2627

; <label>:2627                                    ; preds = %2612, %2321
  %2628 = phi float [ %2626, %2612 ], [ 1.000000e+00, %2321 ]
  %2629 = fmul fast float %2577, %2577
  %2630 = fmul fast float %2589, %2589
  %2631 = fmul fast float %2579, %2579
  %2632 = fadd fast float %2631, %2629
  %2633 = fadd fast float %2632, %2630
  %2634 = call float @dx.op.unary.f32(i32 24, float %2633)  ; Sqrt(value)
  %2635 = fcmp fast ugt float %2634, 0.000000e+00
  br i1 %2635, label %2636, label %2651

; <label>:2636                                    ; preds = %2627
  %2637 = fsub fast float -0.000000e+00, %2579
  %2638 = fdiv fast float %2637, %2634
  %2639 = fsub fast float -0.000000e+00, %2577
  %2640 = fdiv fast float %2639, %2634
  %2641 = fdiv fast float %2589, %2634
  %2642 = fmul fast float %2588, 0x3FE279A760000000
  %2643 = fmul fast float %2640, %2577
  %2644 = fmul fast float %2641, %2589
  %2645 = fmul fast float %2638, %2579
  %2646 = fadd fast float %2643, %2645
  %2647 = fsub fast float %2646, %2644
  %2648 = call float @dx.op.unary.f32(i32 6, float %2647)  ; FAbs(value)
  %2649 = fadd fast float %2648, 0x3DDB7CDFE0000000
  %2650 = fdiv fast float %2642, %2649
  br label %2651

; <label>:2651                                    ; preds = %2636, %2627
  %2652 = phi float [ %2650, %2636 ], [ 1.000000e+00, %2627 ]
  %2653 = call float @dx.op.binary.f32(i32 36, float %2652, float %2628)  ; FMin(a,b)
  %2654 = fmul fast float %2560, %2560
  %2655 = fmul fast float %2574, %2574
  %2656 = fmul fast float %2562, %2562
  %2657 = fadd fast float %2656, %2654
  %2658 = fadd fast float %2657, %2655
  %2659 = call float @dx.op.unary.f32(i32 24, float %2658)  ; Sqrt(value)
  %2660 = fcmp fast ugt float %2659, 0.000000e+00
  br i1 %2660, label %2661, label %2676

; <label>:2661                                    ; preds = %2651
  %2662 = fsub fast float -0.000000e+00, %2562
  %2663 = fdiv fast float %2662, %2659
  %2664 = fsub fast float -0.000000e+00, %2560
  %2665 = fdiv fast float %2664, %2659
  %2666 = fdiv fast float %2574, %2659
  %2667 = fmul fast float %2573, 0x3FE279A760000000
  %2668 = fmul fast float %2665, %2560
  %2669 = fmul fast float %2666, %2574
  %2670 = fmul fast float %2663, %2562
  %2671 = fadd fast float %2668, %2670
  %2672 = fsub fast float %2671, %2669
  %2673 = call float @dx.op.unary.f32(i32 6, float %2672)  ; FAbs(value)
  %2674 = fadd fast float %2673, 0x3DDB7CDFE0000000
  %2675 = fdiv fast float %2667, %2674
  br label %2676

; <label>:2676                                    ; preds = %2661, %2651
  %2677 = phi float [ %2675, %2661 ], [ 1.000000e+00, %2651 ]
  %2678 = call float @dx.op.binary.f32(i32 36, float %2677, float %2653)  ; FMin(a,b)
  %2679 = call float @dx.op.unary.f32(i32 7, float %2678)  ; Saturate(value)
  %2680 = fcmp fast olt float %2679, 1.000000e+00
  br i1 %2680, label %2681, label %2691

; <label>:2681                                    ; preds = %2676
  %2682 = fmul fast float %2679, %2560
  %2683 = fmul fast float %2679, %2574
  %2684 = fmul fast float %2679, %2562
  %2685 = fmul fast float %2679, %2577
  %2686 = fmul fast float %2679, %2589
  %2687 = fmul fast float %2679, %2579
  %2688 = fmul fast float %2679, %2592
  %2689 = fmul fast float %2679, %2604
  %2690 = fmul fast float %2679, %2594
  br label %2691

; <label>:2691                                    ; preds = %2681, %2676
  %2692 = phi float [ %2688, %2681 ], [ %2592, %2676 ]
  %2693 = phi float [ %2689, %2681 ], [ %2604, %2676 ]
  %2694 = phi float [ %2690, %2681 ], [ %2594, %2676 ]
  %2695 = phi float [ %2685, %2681 ], [ %2577, %2676 ]
  %2696 = phi float [ %2686, %2681 ], [ %2589, %2676 ]
  %2697 = phi float [ %2687, %2681 ], [ %2579, %2676 ]
  %2698 = phi float [ %2682, %2681 ], [ %2560, %2676 ]
  %2699 = phi float [ %2683, %2681 ], [ %2574, %2676 ]
  %2700 = phi float [ %2684, %2681 ], [ %2562, %2676 ]
  %2701 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2573)  ; FMax(a,b)
  %2702 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2588)  ; FMax(a,b)
  %2703 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2603)  ; FMax(a,b)
  %2704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2705 = extractvalue %dx.types.CBufRet.f32 %2704, 0
  %2706 = fcmp fast ogt float %2705, 0.000000e+00
  %2707 = fcmp fast oge float %2361, 0.000000e+00
  %2708 = and i1 %2707, %2706
  %2709 = fcmp fast ole float %2361, 1.000000e+00
  %2710 = and i1 %2709, %2708
  %2711 = fcmp fast oge float %2362, 0.000000e+00
  %2712 = and i1 %2711, %2710
  %2713 = fcmp fast ole float %2362, 1.000000e+00
  %2714 = and i1 %2713, %2712
  br i1 %2714, label %2715, label %2855, !dx.controlflow.hints !111

; <label>:2715                                    ; preds = %2691
  %2716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2717 = extractvalue %dx.types.CBufRet.f32 %2716, 2
  %2718 = extractvalue %dx.types.CBufRet.f32 %2716, 3
  %2719 = fmul fast float %2717, %2361
  %2720 = fmul fast float %2718, %2362
  %2721 = call float @dx.op.unary.f32(i32 27, float %2719)  ; Round_ni(value)
  %2722 = call float @dx.op.unary.f32(i32 27, float %2720)  ; Round_ni(value)
  %2723 = fptosi float %2721 to i32
  %2724 = fptosi float %2722 to i32
  %2725 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %32, i32 0, i32 %2723, i32 %2724, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = and i32 %2726, 65535
  %2728 = lshr i32 %2726, 16
  %2729 = icmp eq i32 %2727, 65535
  br i1 %2729, label %2766, label %2730

; <label>:2730                                    ; preds = %2715
  %2731 = extractvalue %dx.types.CBufRet.f32 %2704, 1
  %2732 = extractvalue %dx.types.CBufRet.f32 %2716, 0
  %2733 = extractvalue %dx.types.CBufRet.f32 %2716, 1
  %2734 = fmul fast float %2732, %2361
  %2735 = fmul fast float %2733, %2362
  %2736 = fmul fast float %2734, 1.250000e-01
  %2737 = fmul fast float %2735, 1.250000e-01
  %2738 = call float @dx.op.unary.f32(i32 27, float %2736)  ; Round_ni(value)
  %2739 = call float @dx.op.unary.f32(i32 27, float %2737)  ; Round_ni(value)
  %2740 = fmul fast float %2738, 8.000000e+00
  %2741 = fmul fast float %2739, 8.000000e+00
  %2742 = and i32 %2726, 255
  %2743 = lshr i32 %2726, 8
  %2744 = and i32 %2743, 255
  %2745 = mul nuw nsw i32 %2742, 9
  %2746 = uitofp i32 %2745 to float
  %2747 = mul nuw nsw i32 %2744, 9
  %2748 = uitofp i32 %2747 to float
  %2749 = fadd fast float %2746, 5.000000e-01
  %2750 = fadd fast float %2749, %2734
  %2751 = fsub fast float %2750, %2740
  %2752 = fadd fast float %2748, 5.000000e-01
  %2753 = fadd fast float %2752, %2735
  %2754 = fsub fast float %2753, %2741
  %2755 = fdiv fast float %2751, %2705
  %2756 = fdiv fast float %2754, %2731
  %2757 = fmul fast float %2389, 4.375000e-01
  %2758 = fadd fast float %2757, 3.125000e-02
  %2759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %51, float %2755, float %2756, float %2758, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2760 = extractvalue %dx.types.ResRet.f32 %2759, 0
  %2761 = extractvalue %dx.types.ResRet.f32 %2759, 1
  %2762 = extractvalue %dx.types.ResRet.f32 %2759, 2
  %2763 = fadd fast float %2760, %2701
  %2764 = fadd fast float %2761, %2702
  %2765 = fadd fast float %2762, %2703
  br label %2766

; <label>:2766                                    ; preds = %2730, %2715
  %2767 = phi float [ %2765, %2730 ], [ %2703, %2715 ]
  %2768 = phi float [ %2764, %2730 ], [ %2702, %2715 ]
  %2769 = phi float [ %2763, %2730 ], [ %2701, %2715 ]
  %2770 = icmp eq i32 %2728, 65535
  br i1 %2770, label %2855, label %2771

; <label>:2771                                    ; preds = %2766
  %2772 = extractvalue %dx.types.CBufRet.f32 %2704, 1
  %2773 = extractvalue %dx.types.CBufRet.f32 %2716, 0
  %2774 = extractvalue %dx.types.CBufRet.f32 %2716, 1
  %2775 = fmul fast float %2773, %2361
  %2776 = fmul fast float %2774, %2362
  %2777 = fmul fast float %2775, 1.250000e-01
  %2778 = fmul fast float %2776, 1.250000e-01
  %2779 = call float @dx.op.unary.f32(i32 27, float %2777)  ; Round_ni(value)
  %2780 = call float @dx.op.unary.f32(i32 27, float %2778)  ; Round_ni(value)
  %2781 = fmul fast float %2779, 8.000000e+00
  %2782 = fmul fast float %2780, 8.000000e+00
  %2783 = fsub fast float %2775, %2781
  %2784 = fsub fast float %2776, %2782
  %2785 = fadd fast float %2783, 5.000000e-01
  %2786 = fadd fast float %2784, 5.000000e-01
  %2787 = and i32 %2728, 255
  %2788 = lshr i32 %2726, 24
  %2789 = mul nuw nsw i32 %2787, 9
  %2790 = uitofp i32 %2789 to float
  %2791 = mul nuw nsw i32 %2788, 9
  %2792 = uitofp i32 %2791 to float
  %2793 = fadd fast float %2785, %2790
  %2794 = fadd fast float %2786, %2792
  %2795 = fdiv fast float %2793, %2705
  %2796 = fdiv fast float %2794, %2772
  %2797 = fmul fast float %2389, 4.375000e-01
  %2798 = fadd fast float %2797, 3.125000e-02
  %2799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %51, float %2795, float %2796, float %2798, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2800 = extractvalue %dx.types.ResRet.f32 %2799, 0
  %2801 = extractvalue %dx.types.ResRet.f32 %2799, 1
  %2802 = extractvalue %dx.types.ResRet.f32 %2799, 2
  %2803 = fadd fast float %2797, 5.312500e-01
  %2804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %51, float %2795, float %2796, float %2803, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2805 = extractvalue %dx.types.ResRet.f32 %2804, 0
  %2806 = extractvalue %dx.types.ResRet.f32 %2804, 1
  %2807 = extractvalue %dx.types.ResRet.f32 %2804, 2
  %2808 = fmul fast float %2805, 2.000000e+00
  %2809 = fmul fast float %2806, 2.000000e+00
  %2810 = fmul fast float %2807, 2.000000e+00
  %2811 = fadd fast float %2808, -1.000000e+00
  %2812 = fadd fast float %2809, -1.000000e+00
  %2813 = fadd fast float %2810, -1.000000e+00
  %2814 = fmul fast float %2811, %2811
  %2815 = fmul fast float %2812, %2812
  %2816 = fadd fast float %2814, %2815
  %2817 = fmul fast float %2813, %2813
  %2818 = fadd fast float %2816, %2817
  %2819 = call float @dx.op.unary.f32(i32 24, float %2818)  ; Sqrt(value)
  %2820 = fcmp fast ogt float %2819, 0.000000e+00
  br i1 %2820, label %2821, label %2825

; <label>:2821                                    ; preds = %2771
  %2822 = fdiv fast float %2811, %2819
  %2823 = fdiv fast float %2812, %2819
  %2824 = fdiv fast float %2813, %2819
  br label %2825

; <label>:2825                                    ; preds = %2821, %2771
  %2826 = phi float [ %2822, %2821 ], [ 0.000000e+00, %2771 ]
  %2827 = phi float [ %2823, %2821 ], [ 0.000000e+00, %2771 ]
  %2828 = phi float [ %2824, %2821 ], [ 0.000000e+00, %2771 ]
  %2829 = fmul fast float %134, %134
  %2830 = fmul fast float %135, %135
  %2831 = fadd fast float %2829, %2830
  %2832 = call float @dx.op.unary.f32(i32 24, float %2831)  ; Sqrt(value)
  %2833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2834 = extractvalue %dx.types.CBufRet.f32 %2833, 0
  %2835 = extractvalue %dx.types.CBufRet.f32 %2833, 1
  %2836 = fsub fast float %2832, %2834
  %2837 = fdiv fast float %2836, %2835
  %2838 = call float @dx.op.unary.f32(i32 7, float %2837)  ; Saturate(value)
  %2839 = fmul fast float %2838, 2.000000e+00
  %2840 = fsub fast float 3.000000e+00, %2839
  %2841 = fmul fast float %2838, %2838
  %2842 = fmul fast float %2841, %2840
  %2843 = call float @dx.op.dot3.f32(i32 55, float %2826, float %2827, float %2828, float %2187, float %2188, float %2189)  ; Dot3(ax,ay,az,bx,by,bz)
  %2844 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2843)  ; FMax(a,b)
  %2845 = fmul fast float %2844, 0x400C5BF8A0000000
  %2846 = fmul fast float %2842, %2800
  %2847 = fmul fast float %2846, %2845
  %2848 = fadd fast float %2847, %2769
  %2849 = fmul fast float %2842, %2801
  %2850 = fmul fast float %2849, %2845
  %2851 = fadd fast float %2850, %2768
  %2852 = fmul fast float %2842, %2802
  %2853 = fmul fast float %2852, %2845
  %2854 = fadd fast float %2853, %2767
  br label %2855

; <label>:2855                                    ; preds = %2825, %2766, %2691
  %2856 = phi float [ %2854, %2825 ], [ %2767, %2766 ], [ %2703, %2691 ]
  %2857 = phi float [ %2851, %2825 ], [ %2768, %2766 ], [ %2702, %2691 ]
  %2858 = phi float [ %2848, %2825 ], [ %2769, %2766 ], [ %2701, %2691 ]
  %2859 = fcmp fast ogt float %2348, %2385
  %2860 = and i1 %2707, %2859
  %2861 = and i1 %2709, %2860
  %2862 = and i1 %2711, %2861
  %2863 = and i1 %2713, %2862
  br i1 %2863, label %2864, label %2921, !dx.controlflow.hints !112

; <label>:2864                                    ; preds = %2855
  %2865 = fmul fast float %2387, 0x3FC24924A0000000
  %2866 = fsub fast float %2348, %2385
  %2867 = fdiv fast float %2866, %2865
  %2868 = call float @dx.op.unary.f32(i32 7, float %2867)  ; Saturate(value)
  %2869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2870 = extractvalue %dx.types.CBufRet.f32 %2869, 0
  %2871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2872 = extractvalue %dx.types.CBufRet.f32 %2871, 0
  %2873 = extractvalue %dx.types.CBufRet.f32 %2871, 1
  %2874 = extractvalue %dx.types.CBufRet.f32 %2871, 2
  %2875 = fsub fast float %2870, %2858
  %2876 = fsub fast float %2872, %2698
  %2877 = fsub fast float %2873, %2699
  %2878 = fsub fast float %2874, %2700
  %2879 = fmul fast float %2875, %2868
  %2880 = fmul fast float %2876, %2868
  %2881 = fmul fast float %2877, %2868
  %2882 = fmul fast float %2878, %2868
  %2883 = fadd fast float %2879, %2858
  %2884 = fadd fast float %2880, %2698
  %2885 = fadd fast float %2881, %2699
  %2886 = fadd fast float %2882, %2700
  %2887 = extractvalue %dx.types.CBufRet.f32 %2869, 1
  %2888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2889 = extractvalue %dx.types.CBufRet.f32 %2888, 0
  %2890 = extractvalue %dx.types.CBufRet.f32 %2888, 1
  %2891 = extractvalue %dx.types.CBufRet.f32 %2888, 2
  %2892 = fsub fast float %2887, %2857
  %2893 = fsub fast float %2889, %2695
  %2894 = fsub fast float %2890, %2696
  %2895 = fsub fast float %2891, %2697
  %2896 = fmul fast float %2892, %2868
  %2897 = fmul fast float %2893, %2868
  %2898 = fmul fast float %2894, %2868
  %2899 = fmul fast float %2895, %2868
  %2900 = fadd fast float %2896, %2857
  %2901 = fadd fast float %2897, %2695
  %2902 = fadd fast float %2898, %2696
  %2903 = fadd fast float %2899, %2697
  %2904 = extractvalue %dx.types.CBufRet.f32 %2869, 2
  %2905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2906 = extractvalue %dx.types.CBufRet.f32 %2905, 0
  %2907 = extractvalue %dx.types.CBufRet.f32 %2905, 1
  %2908 = extractvalue %dx.types.CBufRet.f32 %2905, 2
  %2909 = fsub fast float %2904, %2856
  %2910 = fsub fast float %2906, %2692
  %2911 = fsub fast float %2907, %2693
  %2912 = fsub fast float %2908, %2694
  %2913 = fmul fast float %2909, %2868
  %2914 = fmul fast float %2910, %2868
  %2915 = fmul fast float %2911, %2868
  %2916 = fmul fast float %2912, %2868
  %2917 = fadd fast float %2913, %2856
  %2918 = fadd fast float %2914, %2692
  %2919 = fadd fast float %2915, %2693
  %2920 = fadd fast float %2916, %2694
  br label %2921

; <label>:2921                                    ; preds = %2864, %2855
  %2922 = phi float [ %2917, %2864 ], [ %2856, %2855 ]
  %2923 = phi float [ %2918, %2864 ], [ %2692, %2855 ]
  %2924 = phi float [ %2919, %2864 ], [ %2693, %2855 ]
  %2925 = phi float [ %2920, %2864 ], [ %2694, %2855 ]
  %2926 = phi float [ %2900, %2864 ], [ %2857, %2855 ]
  %2927 = phi float [ %2901, %2864 ], [ %2695, %2855 ]
  %2928 = phi float [ %2902, %2864 ], [ %2696, %2855 ]
  %2929 = phi float [ %2903, %2864 ], [ %2697, %2855 ]
  %2930 = phi float [ %2883, %2864 ], [ %2858, %2855 ]
  %2931 = phi float [ %2884, %2864 ], [ %2698, %2855 ]
  %2932 = phi float [ %2885, %2864 ], [ %2699, %2855 ]
  %2933 = phi float [ %2886, %2864 ], [ %2700, %2855 ]
  %2934 = extractvalue %dx.types.CBufRet.f32 %2510, 3
  %2935 = fmul fast float %2934, %2930
  %2936 = fmul fast float %2934, %2926
  %2937 = fmul fast float %2934, %2922
  %2938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2939 = extractvalue %dx.types.CBufRet.f32 %2938, 3
  %2940 = fmul fast float %2935, %2939
  %2941 = fmul fast float %2936, %2939
  %2942 = fmul fast float %2937, %2939
  %2943 = fmul fast float %2931, 1.500000e+00
  %2944 = fmul fast float %2943, %2934
  %2945 = fmul fast float %2944, %2939
  %2946 = fmul fast float %2932, 1.500000e+00
  %2947 = fmul fast float %2946, %2934
  %2948 = fmul fast float %2947, %2939
  %2949 = fmul fast float %2933, 1.500000e+00
  %2950 = fmul fast float %2949, %2934
  %2951 = fmul fast float %2950, %2939
  %2952 = fmul fast float %2927, 1.500000e+00
  %2953 = fmul fast float %2952, %2934
  %2954 = fmul fast float %2953, %2939
  %2955 = fmul fast float %2928, 1.500000e+00
  %2956 = fmul fast float %2955, %2934
  %2957 = fmul fast float %2956, %2939
  %2958 = fmul fast float %2929, 1.500000e+00
  %2959 = fmul fast float %2958, %2934
  %2960 = fmul fast float %2959, %2939
  %2961 = fmul fast float %2923, 1.500000e+00
  %2962 = fmul fast float %2961, %2934
  %2963 = fmul fast float %2962, %2939
  %2964 = fmul fast float %2924, 1.500000e+00
  %2965 = fmul fast float %2964, %2934
  %2966 = fmul fast float %2965, %2939
  %2967 = fmul fast float %2925, 1.500000e+00
  %2968 = fmul fast float %2967, %2934
  %2969 = fmul fast float %2968, %2939
  %2970 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2940)  ; FMax(a,b)
  %2971 = call float @dx.op.dot3.f32(i32 55, float %2945, float %2948, float %2951, float %2945, float %2948, float %2951)  ; Dot3(ax,ay,az,bx,by,bz)
  %2972 = fcmp fast oeq float %2971, 0.000000e+00
  %2973 = fcmp fast oeq float %2970, 0.000000e+00
  %2974 = or i1 %2973, %2972
  br i1 %2974, label %3004, label %2975

; <label>:2975                                    ; preds = %2921
  %2976 = fsub fast float -0.000000e+00, %2951
  %2977 = fsub fast float -0.000000e+00, %2945
  %2978 = call float @dx.op.unary.f32(i32 24, float %2971)  ; Sqrt(value)
  %2979 = fdiv fast float %2978, %2970
  %2980 = fcmp fast ogt float %2979, 0x3FFB6F8900000000
  %2981 = select i1 %2980, float 0x3FFB6F8900000000, float %2979
  %2982 = fmul fast float %2981, 0x3FE8A23460000000
  %2983 = call float @dx.op.unary.f32(i32 7, float %2982)  ; Saturate(value)
  %2984 = call float @dx.op.binary.f32(i32 35, float %2981, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2985 = fmul fast float %2983, %2970
  %2986 = fmul fast float %2984, 0x3FF279A740000000
  %2987 = fadd fast float %2986, -1.000000e+00
  %2988 = call float @dx.op.dot3.f32(i32 55, float %2976, float %2977, float %2948, float %2976, float %2977, float %2948)  ; Dot3(ax,ay,az,bx,by,bz)
  %2989 = call float @dx.op.unary.f32(i32 25, float %2988)  ; Rsqrt(value)
  %2990 = fmul fast float %2989, %2976
  %2991 = fmul fast float %2989, %2977
  %2992 = fmul fast float %2989, %2948
  %2993 = fmul fast float %2987, %2987
  %2994 = fsub fast float 1.000000e+00, %2993
  %2995 = fmul fast float %2984, 0x40005F8BE0000000
  %2996 = fsub fast float 0x400C5BF8A0000000, %2995
  %2997 = fdiv fast float %2985, %2996
  %2998 = fmul fast float %2997, 0x3FEE31C3C0000000
  %2999 = fmul fast float %2998, %2994
  %3000 = fmul fast float %2984, 0x3FDACB7480000000
  %3001 = fadd fast float %3000, 0xBFD7347680000000
  %3002 = fmul fast float %3001, %2997
  %3003 = fmul fast float %3002, %2994
  br label %3004

; <label>:3004                                    ; preds = %2975, %2921
  %3005 = phi float [ %2990, %2975 ], [ 0.000000e+00, %2921 ]
  %3006 = phi float [ %2991, %2975 ], [ 0.000000e+00, %2921 ]
  %3007 = phi float [ %2992, %2975 ], [ 0.000000e+00, %2921 ]
  %3008 = phi float [ %2999, %2975 ], [ 0.000000e+00, %2921 ]
  %3009 = phi float [ %3003, %2975 ], [ 0.000000e+00, %2921 ]
  %3010 = call float @dx.op.dot3.f32(i32 55, float %3005, float %3006, float %3007, float %2187, float %2188, float %2189)  ; Dot3(ax,ay,az,bx,by,bz)
  %3011 = fmul fast float %3010, %3010
  %3012 = fmul fast float %3011, 0x3FEE471020000000
  %3013 = fadd fast float %3012, 0xBFD42F6020000000
  %3014 = fmul fast float %2970, 0x3FD20DD760000000
  %3015 = fmul fast float %3013, %3009
  %3016 = fmul fast float %3008, 0x3FDF454380000000
  %3017 = fmul fast float %3016, %3010
  %3018 = fadd fast float %3017, %3014
  %3019 = fadd fast float %3018, %3015
  %3020 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2941)  ; FMax(a,b)
  %3021 = call float @dx.op.dot3.f32(i32 55, float %2954, float %2957, float %2960, float %2954, float %2957, float %2960)  ; Dot3(ax,ay,az,bx,by,bz)
  %3022 = fcmp fast oeq float %3021, 0.000000e+00
  %3023 = fcmp fast oeq float %3020, 0.000000e+00
  %3024 = or i1 %3023, %3022
  br i1 %3024, label %3054, label %3025

; <label>:3025                                    ; preds = %3004
  %3026 = fsub fast float -0.000000e+00, %2960
  %3027 = fsub fast float -0.000000e+00, %2954
  %3028 = call float @dx.op.unary.f32(i32 24, float %3021)  ; Sqrt(value)
  %3029 = fdiv fast float %3028, %3020
  %3030 = fcmp fast ogt float %3029, 0x3FFB6F8900000000
  %3031 = select i1 %3030, float 0x3FFB6F8900000000, float %3029
  %3032 = fmul fast float %3031, 0x3FE8A23460000000
  %3033 = call float @dx.op.unary.f32(i32 7, float %3032)  ; Saturate(value)
  %3034 = call float @dx.op.binary.f32(i32 35, float %3031, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3035 = fmul fast float %3033, %3020
  %3036 = fmul fast float %3034, 0x3FF279A740000000
  %3037 = fadd fast float %3036, -1.000000e+00
  %3038 = call float @dx.op.dot3.f32(i32 55, float %3026, float %3027, float %2957, float %3026, float %3027, float %2957)  ; Dot3(ax,ay,az,bx,by,bz)
  %3039 = call float @dx.op.unary.f32(i32 25, float %3038)  ; Rsqrt(value)
  %3040 = fmul fast float %3039, %3026
  %3041 = fmul fast float %3039, %3027
  %3042 = fmul fast float %3039, %2957
  %3043 = fmul fast float %3037, %3037
  %3044 = fsub fast float 1.000000e+00, %3043
  %3045 = fmul fast float %3034, 0x40005F8BE0000000
  %3046 = fsub fast float 0x400C5BF8A0000000, %3045
  %3047 = fdiv fast float %3035, %3046
  %3048 = fmul fast float %3047, 0x3FEE31C3C0000000
  %3049 = fmul fast float %3048, %3044
  %3050 = fmul fast float %3034, 0x3FDACB7480000000
  %3051 = fadd fast float %3050, 0xBFD7347680000000
  %3052 = fmul fast float %3051, %3047
  %3053 = fmul fast float %3052, %3044
  br label %3054

; <label>:3054                                    ; preds = %3025, %3004
  %3055 = phi float [ %3040, %3025 ], [ 0.000000e+00, %3004 ]
  %3056 = phi float [ %3041, %3025 ], [ 0.000000e+00, %3004 ]
  %3057 = phi float [ %3042, %3025 ], [ 0.000000e+00, %3004 ]
  %3058 = phi float [ %3049, %3025 ], [ 0.000000e+00, %3004 ]
  %3059 = phi float [ %3053, %3025 ], [ 0.000000e+00, %3004 ]
  %3060 = call float @dx.op.dot3.f32(i32 55, float %3055, float %3056, float %3057, float %2187, float %2188, float %2189)  ; Dot3(ax,ay,az,bx,by,bz)
  %3061 = fmul fast float %3060, %3060
  %3062 = fmul fast float %3061, 0x3FEE471020000000
  %3063 = fadd fast float %3062, 0xBFD42F6020000000
  %3064 = fmul fast float %3020, 0x3FD20DD760000000
  %3065 = fmul fast float %3063, %3059
  %3066 = fmul fast float %3058, 0x3FDF454380000000
  %3067 = fmul fast float %3066, %3060
  %3068 = fadd fast float %3067, %3064
  %3069 = fadd fast float %3068, %3065
  %3070 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2942)  ; FMax(a,b)
  %3071 = call float @dx.op.dot3.f32(i32 55, float %2963, float %2966, float %2969, float %2963, float %2966, float %2969)  ; Dot3(ax,ay,az,bx,by,bz)
  %3072 = fcmp fast oeq float %3071, 0.000000e+00
  %3073 = fcmp fast oeq float %3070, 0.000000e+00
  %3074 = or i1 %3073, %3072
  br i1 %3074, label %3104, label %3075

; <label>:3075                                    ; preds = %3054
  %3076 = fsub fast float -0.000000e+00, %2969
  %3077 = fsub fast float -0.000000e+00, %2963
  %3078 = call float @dx.op.unary.f32(i32 24, float %3071)  ; Sqrt(value)
  %3079 = fdiv fast float %3078, %3070
  %3080 = fcmp fast ogt float %3079, 0x3FFB6F8900000000
  %3081 = select i1 %3080, float 0x3FFB6F8900000000, float %3079
  %3082 = fmul fast float %3081, 0x3FE8A23460000000
  %3083 = call float @dx.op.unary.f32(i32 7, float %3082)  ; Saturate(value)
  %3084 = call float @dx.op.binary.f32(i32 35, float %3081, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3085 = fmul fast float %3083, %3070
  %3086 = fmul fast float %3084, 0x3FF279A740000000
  %3087 = fadd fast float %3086, -1.000000e+00
  %3088 = call float @dx.op.dot3.f32(i32 55, float %3076, float %3077, float %2966, float %3076, float %3077, float %2966)  ; Dot3(ax,ay,az,bx,by,bz)
  %3089 = call float @dx.op.unary.f32(i32 25, float %3088)  ; Rsqrt(value)
  %3090 = fmul fast float %3089, %3076
  %3091 = fmul fast float %3089, %3077
  %3092 = fmul fast float %3089, %2966
  %3093 = fmul fast float %3087, %3087
  %3094 = fsub fast float 1.000000e+00, %3093
  %3095 = fmul fast float %3084, 0x40005F8BE0000000
  %3096 = fsub fast float 0x400C5BF8A0000000, %3095
  %3097 = fdiv fast float %3085, %3096
  %3098 = fmul fast float %3097, 0x3FEE31C3C0000000
  %3099 = fmul fast float %3098, %3094
  %3100 = fmul fast float %3084, 0x3FDACB7480000000
  %3101 = fadd fast float %3100, 0xBFD7347680000000
  %3102 = fmul fast float %3101, %3097
  %3103 = fmul fast float %3102, %3094
  br label %3104

; <label>:3104                                    ; preds = %3075, %3054
  %3105 = phi float [ %3090, %3075 ], [ 0.000000e+00, %3054 ]
  %3106 = phi float [ %3091, %3075 ], [ 0.000000e+00, %3054 ]
  %3107 = phi float [ %3092, %3075 ], [ 0.000000e+00, %3054 ]
  %3108 = phi float [ %3099, %3075 ], [ 0.000000e+00, %3054 ]
  %3109 = phi float [ %3103, %3075 ], [ 0.000000e+00, %3054 ]
  %3110 = call float @dx.op.dot3.f32(i32 55, float %3105, float %3106, float %3107, float %2187, float %2188, float %2189)  ; Dot3(ax,ay,az,bx,by,bz)
  %3111 = fmul fast float %3110, %3110
  %3112 = fmul fast float %3111, 0x3FEE471020000000
  %3113 = fadd fast float %3112, 0xBFD42F6020000000
  %3114 = fmul fast float %3070, 0x3FD20DD760000000
  %3115 = fmul fast float %3113, %3109
  %3116 = fmul fast float %3108, 0x3FDF454380000000
  %3117 = fmul fast float %3116, %3110
  %3118 = fadd fast float %3117, %3114
  %3119 = fadd fast float %3118, %3115
  %3120 = call float @dx.op.binary.f32(i32 35, float %3019, float 0.000000e+00)  ; FMax(a,b)
  %3121 = call float @dx.op.binary.f32(i32 35, float %3069, float 0.000000e+00)  ; FMax(a,b)
  %3122 = call float @dx.op.binary.f32(i32 35, float %3119, float 0.000000e+00)  ; FMax(a,b)
  %3123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3124 = extractvalue %dx.types.CBufRet.f32 %3123, 0
  %3125 = call float @dx.op.binary.f32(i32 36, float %2199, float %3124)  ; FMin(a,b)
  %3126 = fsub fast float 1.000000e+00, %2337
  %3127 = fmul fast float %3125, %3126
  %3128 = fsub fast float 1.000000e+00, %3127
  %3129 = bitcast float %3128 to i32
  %3130 = sub nsw i32 2129859010, %3129
  %3131 = bitcast i32 %3130 to float
  %3132 = call float @dx.op.binary.f32(i32 36, float %2200, float %3124)  ; FMin(a,b)
  %3133 = fmul fast float %3132, %3126
  %3134 = fsub fast float 1.000000e+00, %3133
  %3135 = bitcast float %3134 to i32
  %3136 = sub nsw i32 2129859010, %3135
  %3137 = bitcast i32 %3136 to float
  %3138 = call float @dx.op.binary.f32(i32 36, float %2201, float %3124)  ; FMin(a,b)
  %3139 = fmul fast float %3138, %3126
  %3140 = fsub fast float 1.000000e+00, %3139
  %3141 = bitcast float %3140 to i32
  %3142 = sub nsw i32 2129859010, %3141
  %3143 = bitcast i32 %3142 to float
  %3144 = fmul fast float %3120, %2337
  %3145 = fmul fast float %3144, %3131
  %3146 = fmul fast float %3121, %2337
  %3147 = fmul fast float %3146, %3137
  %3148 = fmul fast float %3122, %2337
  %3149 = fmul fast float %3148, %3143
  %3150 = call float @dx.op.dot3.f32(i32 55, float %3145, float %3147, float %3149, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3151 = select i1 %2322, float 0.000000e+00, float %3145
  %3152 = select i1 %2322, float %3150, float %3147
  %3153 = select i1 %2322, float 0.000000e+00, float %3149
  %3154 = fsub fast float 1.000000e+00, %2208
  %3155 = fsub fast float 1.000000e+00, %2209
  %3156 = fsub fast float 1.000000e+00, %2327
  %3157 = fmul fast float %2247, %3154
  %3158 = fmul fast float %2247, %3155
  %3159 = fmul fast float %3156, %2247
  %3160 = fadd fast float %3157, %2208
  %3161 = fadd fast float %3158, %2209
  %3162 = fadd fast float %3159, %2327
  %3163 = call float @dx.op.binary.f32(i32 35, float %3161, float %3162)  ; FMax(a,b)
  %3164 = call float @dx.op.binary.f32(i32 35, float %3160, float %3163)  ; FMax(a,b)
  %3165 = fsub fast float 1.000000e+00, %3164
  %3166 = fmul fast float %3151, %3165
  %3167 = fmul fast float %3152, %3165
  %3168 = fmul fast float %3153, %3165
  %3169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3170 = extractvalue %dx.types.CBufRet.f32 %3169, 3
  %3171 = fcmp fast oeq float %3170, 0.000000e+00
  br i1 %3171, label %4435, label %3172

; <label>:3172                                    ; preds = %3104
  %3173 = extractvalue %dx.types.CBufRet.f32 %3169, 0
  %3174 = extractvalue %dx.types.CBufRet.f32 %3169, 1
  %3175 = extractvalue %dx.types.CBufRet.f32 %3169, 2
  %3176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3177 = extractvalue %dx.types.CBufRet.f32 %3176, 0
  %3178 = extractvalue %dx.types.CBufRet.f32 %3176, 1
  %3179 = extractvalue %dx.types.CBufRet.f32 %3176, 2
  %3180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3181 = extractvalue %dx.types.CBufRet.f32 %3180, 0
  %3182 = extractvalue %dx.types.CBufRet.f32 %3180, 1
  %3183 = call float @dx.op.dot3.f32(i32 55, float %3177, float %3178, float %3179, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3184 = select i1 %2322, float %3181, float %3177
  %3185 = select i1 %2322, float %3183, float %3178
  %3186 = select i1 %2322, float %3182, float %3179
  %3187 = fcmp fast olt float %3170, 0.000000e+00
  br i1 %3187, label %4094, label %3188

; <label>:3188                                    ; preds = %3172
  %3189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3190 = extractvalue %dx.types.CBufRet.f32 %3189, 0
  %3191 = extractvalue %dx.types.CBufRet.f32 %3189, 1
  %3192 = extractvalue %dx.types.CBufRet.f32 %3189, 2
  %3193 = extractvalue %dx.types.CBufRet.f32 %3189, 3
  %3194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3195 = extractvalue %dx.types.CBufRet.f32 %3194, 0
  %3196 = extractvalue %dx.types.CBufRet.f32 %3194, 1
  %3197 = extractvalue %dx.types.CBufRet.f32 %3194, 2
  %3198 = extractvalue %dx.types.CBufRet.f32 %3194, 3
  %3199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3200 = extractvalue %dx.types.CBufRet.f32 %3199, 0
  %3201 = extractvalue %dx.types.CBufRet.f32 %3199, 1
  %3202 = extractvalue %dx.types.CBufRet.f32 %3199, 2
  %3203 = extractvalue %dx.types.CBufRet.f32 %3199, 3
  %3204 = fmul fast float %3190, %134
  %3205 = call float @dx.op.tertiary.f32(i32 46, float %135, float %3191, float %3204)  ; FMad(a,b,c)
  %3206 = call float @dx.op.tertiary.f32(i32 46, float %136, float %3192, float %3205)  ; FMad(a,b,c)
  %3207 = fadd fast float %3206, %3193
  %3208 = fmul fast float %3195, %134
  %3209 = call float @dx.op.tertiary.f32(i32 46, float %135, float %3196, float %3208)  ; FMad(a,b,c)
  %3210 = call float @dx.op.tertiary.f32(i32 46, float %136, float %3197, float %3209)  ; FMad(a,b,c)
  %3211 = fadd fast float %3210, %3198
  %3212 = fmul fast float %3200, %134
  %3213 = call float @dx.op.tertiary.f32(i32 46, float %135, float %3201, float %3212)  ; FMad(a,b,c)
  %3214 = call float @dx.op.tertiary.f32(i32 46, float %136, float %3202, float %3213)  ; FMad(a,b,c)
  %3215 = fadd fast float %3214, %3203
  %3216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3217 = extractvalue %dx.types.CBufRet.f32 %3216, 0
  %3218 = extractvalue %dx.types.CBufRet.f32 %3216, 1
  %3219 = extractvalue %dx.types.CBufRet.f32 %3216, 3
  %3220 = fmul fast float %3219, %3207
  %3221 = fmul fast float %3219, %3211
  %3222 = fadd fast float %3220, %3217
  %3223 = fadd fast float %3221, %3218
  %3224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3225 = extractvalue %dx.types.CBufRet.f32 %3224, 0
  %3226 = extractvalue %dx.types.CBufRet.f32 %3224, 1
  %3227 = extractvalue %dx.types.CBufRet.f32 %3224, 3
  %3228 = fmul fast float %3227, %3207
  %3229 = fmul fast float %3227, %3211
  %3230 = fadd fast float %3228, %3225
  %3231 = fadd fast float %3229, %3226
  %3232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3233 = extractvalue %dx.types.CBufRet.f32 %3232, 1
  %3234 = fsub fast float %3233, %3215
  %3235 = extractvalue %dx.types.CBufRet.f32 %3232, 2
  %3236 = fmul fast float %3234, %3235
  %3237 = fsub fast float 1.000000e+00, %3236
  %3238 = call float @dx.op.unary.f32(i32 7, float %3237)  ; Saturate(value)
  %3239 = extractvalue %dx.types.CBufRet.f32 %3224, 2
  %3240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3241 = extractvalue %dx.types.CBufRet.f32 %3240, 2
  %3242 = fadd fast float %3241, %3239
  %3243 = fcmp fast ogt float %3242, 0.000000e+00
  br i1 %3243, label %3244, label %3269

; <label>:3244                                    ; preds = %3188
  %3245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3246 = extractvalue %dx.types.CBufRet.f32 %3245, 0
  %3247 = extractvalue %dx.types.CBufRet.f32 %3245, 1
  %3248 = fsub fast float %3230, %3246
  %3249 = fsub fast float %3231, %3247
  %3250 = fcmp fast olt float %3248, 0.000000e+00
  %3251 = fcmp fast olt float %3249, 0.000000e+00
  %3252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3253 = extractvalue %dx.types.CBufRet.f32 %3252, 0
  %3254 = extractvalue %dx.types.CBufRet.f32 %3252, 1
  %3255 = extractvalue %dx.types.CBufRet.f32 %3252, 2
  %3256 = extractvalue %dx.types.CBufRet.f32 %3252, 3
  %3257 = select i1 %3250, float %3253, float %3255
  %3258 = select i1 %3251, float %3254, float %3256
  %3259 = fmul fast float %3257, %3248
  %3260 = fmul fast float %3258, %3249
  %3261 = call float @dx.op.unary.f32(i32 6, float %3259)  ; FAbs(value)
  %3262 = call float @dx.op.unary.f32(i32 6, float %3260)  ; FAbs(value)
  %3263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3264 = extractvalue %dx.types.CBufRet.f32 %3263, 0
  %3265 = call float @dx.op.binary.f32(i32 35, float %3261, float %3262)  ; FMax(a,b)
  %3266 = fsub fast float %3264, %3265
  %3267 = call float @dx.op.unary.f32(i32 7, float %3266)  ; Saturate(value)
  %3268 = fmul fast float %3267, %3238
  br label %3269

; <label>:3269                                    ; preds = %3244, %3188
  %3270 = phi float [ %3268, %3244 ], [ 0.000000e+00, %3188 ]
  %3271 = extractvalue %dx.types.CBufRet.f32 %3216, 2
  %3272 = extractvalue %dx.types.CBufRet.f32 %3240, 1
  %3273 = fadd fast float %3272, %3271
  %3274 = fcmp fast ogt float %3273, 0.000000e+00
  br i1 %3274, label %3275, label %3300

; <label>:3275                                    ; preds = %3269
  %3276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3277 = extractvalue %dx.types.CBufRet.f32 %3276, 0
  %3278 = extractvalue %dx.types.CBufRet.f32 %3276, 1
  %3279 = fsub fast float %3222, %3277
  %3280 = fsub fast float %3223, %3278
  %3281 = fcmp fast olt float %3279, 0.000000e+00
  %3282 = fcmp fast olt float %3280, 0.000000e+00
  %3283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3284 = extractvalue %dx.types.CBufRet.f32 %3283, 0
  %3285 = extractvalue %dx.types.CBufRet.f32 %3283, 1
  %3286 = extractvalue %dx.types.CBufRet.f32 %3283, 2
  %3287 = extractvalue %dx.types.CBufRet.f32 %3283, 3
  %3288 = select i1 %3281, float %3284, float %3286
  %3289 = select i1 %3282, float %3285, float %3287
  %3290 = fmul fast float %3288, %3279
  %3291 = fmul fast float %3289, %3280
  %3292 = call float @dx.op.unary.f32(i32 6, float %3290)  ; FAbs(value)
  %3293 = call float @dx.op.unary.f32(i32 6, float %3291)  ; FAbs(value)
  %3294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3295 = extractvalue %dx.types.CBufRet.f32 %3294, 0
  %3296 = call float @dx.op.binary.f32(i32 35, float %3292, float %3293)  ; FMax(a,b)
  %3297 = fsub fast float %3295, %3296
  %3298 = call float @dx.op.unary.f32(i32 7, float %3297)  ; Saturate(value)
  %3299 = fmul fast float %3298, %3238
  br label %3300

; <label>:3300                                    ; preds = %3275, %3269
  %3301 = phi float [ %3299, %3275 ], [ 0.000000e+00, %3269 ]
  %3302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3303 = extractvalue %dx.types.CBufRet.f32 %3302, 1
  %3304 = call float @dx.op.unary.f32(i32 7, float %3303)  ; Saturate(value)
  %3305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3306 = extractvalue %dx.types.CBufRet.f32 %3305, 0
  %3307 = extractvalue %dx.types.CBufRet.f32 %3305, 1
  %3308 = fsub fast float %3207, %3306
  %3309 = fsub fast float %3211, %3307
  %3310 = fcmp fast olt float %3308, 0.000000e+00
  %3311 = fcmp fast olt float %3309, 0.000000e+00
  %3312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3313 = extractvalue %dx.types.CBufRet.f32 %3312, 0
  %3314 = extractvalue %dx.types.CBufRet.f32 %3312, 1
  %3315 = extractvalue %dx.types.CBufRet.f32 %3312, 2
  %3316 = extractvalue %dx.types.CBufRet.f32 %3312, 3
  %3317 = select i1 %3310, float %3313, float %3315
  %3318 = select i1 %3311, float %3314, float %3316
  %3319 = fmul fast float %3317, %3308
  %3320 = fmul fast float %3318, %3309
  %3321 = call float @dx.op.unary.f32(i32 6, float %3319)  ; FAbs(value)
  %3322 = call float @dx.op.unary.f32(i32 6, float %3320)  ; FAbs(value)
  %3323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3324 = extractvalue %dx.types.CBufRet.f32 %3323, 0
  %3325 = call float @dx.op.binary.f32(i32 35, float %3321, float %3322)  ; FMax(a,b)
  %3326 = fsub fast float %3324, %3325
  %3327 = call float @dx.op.unary.f32(i32 7, float %3326)  ; Saturate(value)
  %3328 = call float @dx.op.binary.f32(i32 36, float %3327, float %3304)  ; FMin(a,b)
  %3329 = fmul fast float %3328, %3238
  %3330 = fsub fast float %3301, %3329
  %3331 = fsub fast float %3270, %3301
  %3332 = fsub fast float %3331, %3329
  %3333 = call float @dx.op.binary.f32(i32 35, float %3301, float %3270)  ; FMax(a,b)
  %3334 = call float @dx.op.binary.f32(i32 35, float %3329, float %3333)  ; FMax(a,b)
  %3335 = fcmp fast olt float %3334, 1.000000e+00
  br i1 %3335, label %3336, label %4007, !dx.controlflow.hints !113

; <label>:3336                                    ; preds = %3300
  %3337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3338 = extractvalue %dx.types.CBufRet.f32 %3337, 0
  %3339 = fcmp fast une float %3338, 0.000000e+00
  br i1 %3339, label %3340, label %4007, !dx.controlflow.hints !114

; <label>:3340                                    ; preds = %3336
  %3341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3342 = extractvalue %dx.types.CBufRet.f32 %3341, 0
  %3343 = extractvalue %dx.types.CBufRet.f32 %3341, 1
  %3344 = extractvalue %dx.types.CBufRet.f32 %3341, 2
  %3345 = extractvalue %dx.types.CBufRet.f32 %3341, 3
  %3346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3347 = extractvalue %dx.types.CBufRet.f32 %3346, 0
  %3348 = extractvalue %dx.types.CBufRet.f32 %3346, 1
  %3349 = extractvalue %dx.types.CBufRet.f32 %3346, 2
  %3350 = extractvalue %dx.types.CBufRet.f32 %3346, 3
  %3351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3352 = extractvalue %dx.types.CBufRet.f32 %3351, 0
  %3353 = extractvalue %dx.types.CBufRet.f32 %3351, 1
  %3354 = extractvalue %dx.types.CBufRet.f32 %3351, 2
  %3355 = extractvalue %dx.types.CBufRet.f32 %3351, 3
  %3356 = fmul fast float %3342, %134
  %3357 = call float @dx.op.tertiary.f32(i32 46, float %135, float %3343, float %3356)  ; FMad(a,b,c)
  %3358 = call float @dx.op.tertiary.f32(i32 46, float %136, float %3344, float %3357)  ; FMad(a,b,c)
  %3359 = fadd fast float %3358, %3345
  %3360 = fmul fast float %3347, %134
  %3361 = call float @dx.op.tertiary.f32(i32 46, float %135, float %3348, float %3360)  ; FMad(a,b,c)
  %3362 = call float @dx.op.tertiary.f32(i32 46, float %136, float %3349, float %3361)  ; FMad(a,b,c)
  %3363 = fadd fast float %3362, %3350
  %3364 = fmul fast float %3352, %134
  %3365 = call float @dx.op.tertiary.f32(i32 46, float %135, float %3353, float %3364)  ; FMad(a,b,c)
  %3366 = call float @dx.op.tertiary.f32(i32 46, float %136, float %3354, float %3365)  ; FMad(a,b,c)
  %3367 = fadd fast float %3366, %3355
  %3368 = fcmp fast oge float %3359, 1.000000e+00
  %3369 = fcmp fast oge float %3363, 1.000000e+00
  %3370 = or i1 %3368, %3369
  %3371 = fcmp fast olt float %3359, 0.000000e+00
  %3372 = fcmp fast olt float %3363, 0.000000e+00
  %3373 = or i1 %3371, %3372
  %3374 = or i1 %3370, %3373
  br i1 %3374, label %4007, label %3375, !dx.controlflow.hints !115

; <label>:3375                                    ; preds = %3340
  %3376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3377 = extractvalue %dx.types.CBufRet.f32 %3376, 0
  %3378 = extractvalue %dx.types.CBufRet.f32 %3376, 1
  %3379 = extractvalue %dx.types.CBufRet.f32 %3376, 2
  %3380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3381 = extractvalue %dx.types.CBufRet.f32 %3380, 1
  %3382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3383 = extractvalue %dx.types.CBufRet.i32 %3382, 2
  %3384 = uitofp i32 %3383 to float
  %3385 = extractvalue %dx.types.CBufRet.i32 %3382, 3
  %3386 = uitofp i32 %3385 to float
  %3387 = extractvalue %dx.types.CBufRet.f32 %3376, 3
  %3388 = fmul fast float %3387, 2.000000e+00
  %3389 = fsub fast float %3359, %3377
  %3390 = fsub fast float %3363, %3378
  %3391 = fmul fast float %3388, %3389
  %3392 = fmul fast float %3388, %3390
  %3393 = fdiv fast float 1.000000e+00, %3175
  %3394 = fmul fast float %3392, %3393
  %3395 = call float @dx.op.unary.f32(i32 6, float %3394)  ; FAbs(value)
  %3396 = fmul fast float %3379, %136
  %3397 = fmul fast float %3396, %3388
  %3398 = call float @dx.op.unary.f32(i32 6, float %3397)  ; FAbs(value)
  %3399 = call float @dx.op.unary.f32(i32 6, float %3391)  ; FAbs(value)
  %3400 = call float @dx.op.binary.f32(i32 35, float %3398, float %3395)  ; FMax(a,b)
  %3401 = call float @dx.op.binary.f32(i32 35, float %3399, float %3400)  ; FMax(a,b)
  %3402 = fmul fast float %3401, 2.000000e+00
  %3403 = call float @dx.op.unary.f32(i32 23, float %3402)  ; Log(value)
  %3404 = call float @dx.op.binary.f32(i32 35, float %3403, float %3384)  ; FMax(a,b)
  %3405 = call float @dx.op.unary.f32(i32 22, float %3404)  ; Frc(value)
  %3406 = fadd fast float %3405, 0xBFEA666660000000
  %3407 = fmul fast float %3406, 8.000000e+00
  %3408 = call float @dx.op.unary.f32(i32 7, float %3407)  ; Saturate(value)
  %3409 = call float @dx.op.unary.f32(i32 27, float %3404)  ; Round_ni(value)
  %3410 = fadd fast float %3409, %3408
  %3411 = call float @dx.op.binary.f32(i32 36, float %3410, float %3386)  ; FMin(a,b)
  %3412 = call float @dx.op.unary.f32(i32 27, float %3411)  ; Round_ni(value)
  %3413 = fsub fast float -0.000000e+00, %3412
  %3414 = call float @dx.op.unary.f32(i32 21, float %3413)  ; Exp(value)
  %3415 = fmul fast float %3414, %3388
  %3416 = fmul fast float %3415, %3359
  %3417 = fmul fast float %3415, %3363
  %3418 = fmul fast float %3416, 5.000000e-01
  %3419 = fmul fast float %3417, 5.000000e-01
  %3420 = fadd fast float %3418, 5.000000e-01
  %3421 = fadd fast float %3419, 5.000000e-01
  %3422 = fmul fast float %3416, 2.500000e-01
  %3423 = fmul fast float %3417, 2.500000e-01
  %3424 = fadd fast float %3422, 5.000000e-01
  %3425 = fadd fast float %3423, 5.000000e-01
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = and i32 %3427, 536870911
  %3429 = lshr i32 %3428, 9
  %3430 = uitofp i32 %3429 to float
  %3431 = fmul fast float %3430, %3359
  %3432 = fmul fast float %3430, %3363
  %3433 = call float @dx.op.unary.f32(i32 22, float %3431)  ; Frc(value)
  %3434 = call float @dx.op.unary.f32(i32 22, float %3432)  ; Frc(value)
  %3435 = call float @dx.op.unary.f32(i32 22, float %3408)  ; Frc(value)
  %3436 = fcmp fast une float %3435, 0.000000e+00
  br i1 %3436, label %3437, label %3535, !dx.controlflow.hints !116

; <label>:3437                                    ; preds = %3375
  %3438 = call float @dx.op.unary.f32(i32 21, float %3409)  ; Exp(value)
  %3439 = fmul fast float %3438, 1.953125e-03
  %3440 = fcmp fast olt float %3433, %3439
  %3441 = fcmp fast olt float %3434, %3439
  %3442 = or i1 %3440, %3441
  %3443 = fsub fast float 1.000000e+00, %3439
  %3444 = fcmp fast ogt float %3433, %3443
  %3445 = fcmp fast ogt float %3434, %3443
  %3446 = or i1 %3444, %3445
  %3447 = or i1 %3442, %3446
  br i1 %3447, label %3448, label %3614, !dx.controlflow.hints !117

; <label>:3448                                    ; preds = %3437
  %3449 = fmul fast float %3381, 5.000000e-01
  %3450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3451 = extractvalue %dx.types.CBufRet.i32 %3450, 0
  %3452 = fmul fast float %3363, 3.530000e+02
  %3453 = uitofp i32 %3428 to float
  %3454 = fmul fast float %3452, %3453
  %3455 = fmul fast float %3359, 6.130000e+02
  %3456 = fadd fast float %3454, %3455
  %3457 = fptoui float %3456 to i32
  %3458 = add i32 %3451, %3457
  %3459 = mul i32 %3458, -63
  %3460 = lshr i32 %3459, 17
  %3461 = xor i32 %3460, %3459
  %3462 = mul i32 %3461, -511
  %3463 = mul i32 %3461, -8176
  %3464 = xor i32 %3462, %3463
  %3465 = mul i32 %3464, -7
  %3466 = mul i32 %3464, -7168
  %3467 = xor i32 %3465, %3466
  %3468 = lshr i32 %3467, 15
  %3469 = xor i32 %3468, %3465
  %3470 = and i32 %3469, 15
  %3471 = mul i32 %3470, 2
  %3472 = add i32 0, %3471
  %3473 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3472
  %3474 = load float, float* %3473, align 4
  %3475 = mul i32 %3470, 2
  %3476 = add i32 1, %3475
  %3477 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3476
  %3478 = load float, float* %3477, align 4
  %3479 = fmul fast float %3363, 2.770000e+02
  %3480 = fmul fast float %3479, %3453
  %3481 = fmul fast float %3359, 5.990000e+02
  %3482 = fadd fast float %3480, %3481
  %3483 = fptoui float %3482 to i32
  %3484 = mul i32 %3483, -63
  %3485 = lshr i32 %3484, 17
  %3486 = xor i32 %3485, %3484
  %3487 = mul i32 %3486, -511
  %3488 = mul i32 %3486, -8176
  %3489 = xor i32 %3487, %3488
  %3490 = mul i32 %3489, -7
  %3491 = mul i32 %3489, -7168
  %3492 = xor i32 %3490, %3491
  %3493 = lshr i32 %3492, 15
  %3494 = xor i32 %3493, %3490
  %3495 = and i32 %3494, 63
  %3496 = mul i32 %3495, 2
  %3497 = add i32 0, %3496
  %3498 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3497
  %3499 = load float, float* %3498, align 4
  %3500 = mul i32 %3495, 2
  %3501 = add i32 1, %3500
  %3502 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3501
  %3503 = load float, float* %3502, align 4
  %3504 = call float @dx.op.dot2.f32(i32 54, float %3474, float %3478, float %3499, float %3503)  ; Dot2(ax,ay,bx,by)
  %3505 = fsub fast float -0.000000e+00, %3499
  %3506 = call float @dx.op.dot2.f32(i32 54, float %3474, float %3478, float %3505, float %3503)  ; Dot2(ax,ay,bx,by)
  %3507 = fmul fast float %3504, %3449
  %3508 = fmul fast float %3506, %3449
  %3509 = fdiv fast float 2.000000e+00, %3415
  %3510 = fmul fast float %3438, 9.765625e-04
  %3511 = fcmp fast olt float %3433, %3510
  %3512 = fcmp fast olt float %3434, %3510
  %3513 = or i1 %3511, %3512
  %3514 = fsub fast float 1.000000e+00, %3510
  %3515 = fcmp fast ogt float %3433, %3514
  %3516 = fcmp fast ogt float %3434, %3514
  %3517 = or i1 %3515, %3516
  %3518 = or i1 %3513, %3517
  %3519 = fmul fast float %3507, 2.000000e+00
  br i1 %3518, label %3520, label %3524

; <label>:3520                                    ; preds = %3448
  %3521 = fmul fast float %3508, 2.000000e+00
  %3522 = fadd fast float %3519, %3420
  %3523 = fadd fast float %3521, %3421
  br label %3524

; <label>:3524                                    ; preds = %3520, %3448
  %3525 = phi float [ %3522, %3520 ], [ %3420, %3448 ]
  %3526 = phi float [ %3523, %3520 ], [ %3421, %3448 ]
  %3527 = phi i32 [ 3, %3520 ], [ 2, %3448 ]
  %3528 = fadd fast float %3507, %3424
  %3529 = fadd fast float %3508, %3425
  %3530 = fmul fast float %3519, %3509
  %3531 = fmul fast float %3509, 2.000000e+00
  %3532 = fmul fast float %3531, %3508
  %3533 = fadd fast float %3530, %3359
  %3534 = fadd fast float %3532, %3363
  br label %3614

; <label>:3535                                    ; preds = %3375
  %3536 = call float @dx.op.unary.f32(i32 21, float %3412)  ; Exp(value)
  %3537 = fmul fast float %3536, 9.765625e-04
  %3538 = fcmp fast olt float %3433, %3537
  %3539 = fcmp fast olt float %3434, %3537
  %3540 = or i1 %3538, %3539
  %3541 = fsub fast float 1.000000e+00, %3537
  %3542 = fcmp fast ogt float %3433, %3541
  %3543 = fcmp fast ogt float %3434, %3541
  %3544 = or i1 %3542, %3543
  %3545 = or i1 %3540, %3544
  br i1 %3545, label %3546, label %3614, !dx.controlflow.hints !118

; <label>:3546                                    ; preds = %3535
  %3547 = fmul fast float %3381, 5.000000e-01
  %3548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3549 = extractvalue %dx.types.CBufRet.i32 %3548, 0
  %3550 = fmul fast float %3363, 3.530000e+02
  %3551 = uitofp i32 %3428 to float
  %3552 = fmul fast float %3550, %3551
  %3553 = fmul fast float %3359, 6.130000e+02
  %3554 = fadd fast float %3552, %3553
  %3555 = fptoui float %3554 to i32
  %3556 = add i32 %3549, %3555
  %3557 = mul i32 %3556, -63
  %3558 = lshr i32 %3557, 17
  %3559 = xor i32 %3558, %3557
  %3560 = mul i32 %3559, -511
  %3561 = mul i32 %3559, -8176
  %3562 = xor i32 %3560, %3561
  %3563 = mul i32 %3562, -7
  %3564 = mul i32 %3562, -7168
  %3565 = xor i32 %3563, %3564
  %3566 = lshr i32 %3565, 15
  %3567 = xor i32 %3566, %3563
  %3568 = and i32 %3567, 15
  %3569 = mul i32 %3568, 2
  %3570 = add i32 0, %3569
  %3571 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3570
  %3572 = load float, float* %3571, align 4
  %3573 = mul i32 %3568, 2
  %3574 = add i32 1, %3573
  %3575 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3574
  %3576 = load float, float* %3575, align 4
  %3577 = fmul fast float %3363, 2.770000e+02
  %3578 = fmul fast float %3577, %3551
  %3579 = fmul fast float %3359, 5.990000e+02
  %3580 = fadd fast float %3578, %3579
  %3581 = fptoui float %3580 to i32
  %3582 = mul i32 %3581, -63
  %3583 = lshr i32 %3582, 17
  %3584 = xor i32 %3583, %3582
  %3585 = mul i32 %3584, -511
  %3586 = mul i32 %3584, -8176
  %3587 = xor i32 %3585, %3586
  %3588 = mul i32 %3587, -7
  %3589 = mul i32 %3587, -7168
  %3590 = xor i32 %3588, %3589
  %3591 = lshr i32 %3590, 15
  %3592 = xor i32 %3591, %3588
  %3593 = and i32 %3592, 63
  %3594 = mul i32 %3593, 2
  %3595 = add i32 0, %3594
  %3596 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3595
  %3597 = load float, float* %3596, align 4
  %3598 = mul i32 %3593, 2
  %3599 = add i32 1, %3598
  %3600 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3599
  %3601 = load float, float* %3600, align 4
  %3602 = call float @dx.op.dot2.f32(i32 54, float %3572, float %3576, float %3597, float %3601)  ; Dot2(ax,ay,bx,by)
  %3603 = fsub fast float -0.000000e+00, %3597
  %3604 = call float @dx.op.dot2.f32(i32 54, float %3572, float %3576, float %3603, float %3601)  ; Dot2(ax,ay,bx,by)
  %3605 = fmul fast float %3602, %3547
  %3606 = fmul fast float %3604, %3547
  %3607 = fadd fast float %3605, %3420
  %3608 = fadd fast float %3606, %3421
  %3609 = fdiv fast float 2.000000e+00, %3415
  %3610 = fmul fast float %3609, %3605
  %3611 = fmul fast float %3606, %3609
  %3612 = fadd fast float %3610, %3359
  %3613 = fadd fast float %3611, %3363
  br label %3614

; <label>:3614                                    ; preds = %3546, %3535, %3524, %3437
  %3615 = phi float [ %3528, %3524 ], [ %3424, %3437 ], [ %3424, %3546 ], [ %3424, %3535 ]
  %3616 = phi float [ %3529, %3524 ], [ %3425, %3437 ], [ %3425, %3546 ], [ %3425, %3535 ]
  %3617 = phi float [ %3525, %3524 ], [ %3420, %3437 ], [ %3607, %3546 ], [ %3420, %3535 ]
  %3618 = phi float [ %3526, %3524 ], [ %3421, %3437 ], [ %3608, %3546 ], [ %3421, %3535 ]
  %3619 = phi i32 [ %3527, %3524 ], [ 0, %3437 ], [ 1, %3546 ], [ 0, %3535 ]
  %3620 = phi float [ %3533, %3524 ], [ %3359, %3437 ], [ %3612, %3546 ], [ %3359, %3535 ]
  %3621 = phi float [ %3534, %3524 ], [ %3363, %3437 ], [ %3613, %3546 ], [ %3363, %3535 ]
  %3622 = fsub fast float %3386, %3384
  %3623 = fptoui float %3622 to i32
  %3624 = add i32 %3623, 320
  %3625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %3624)  ; CBufferLoadLegacy(handle,regIndex)
  %3626 = extractvalue %dx.types.CBufRet.f32 %3625, 0
  %3627 = extractvalue %dx.types.CBufRet.f32 %3625, 1
  %3628 = fcmp fast une float %3411, %3386
  %3629 = fsub fast float %3620, %3626
  %3630 = fsub fast float %3621, %3627
  %3631 = call float @dx.op.unary.f32(i32 6, float %3629)  ; FAbs(value)
  %3632 = call float @dx.op.unary.f32(i32 6, float %3630)  ; FAbs(value)
  %3633 = fmul fast float %3631, %3415
  %3634 = fmul fast float %3632, %3415
  %3635 = fcmp fast olt float %3633, 1.000000e+00
  %3636 = fcmp fast olt float %3634, 1.000000e+00
  %3637 = and i1 %3635, %3636
  %3638 = or i1 %3628, %3637
  br i1 %3638, label %3639, label %4007, !dx.controlflow.hints !119

; <label>:3639                                    ; preds = %3614
  %3640 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3641 = extractvalue %dx.types.CBufRet.i32 %3640, 2
  %3642 = sitofp i32 %3641 to float
  %3643 = fsub fast float %3411, %3642
  %3644 = call float @dx.op.unary.f32(i32 27, float %3643)  ; Round_ni(value)
  %3645 = call float @dx.op.unary.f32(i32 22, float %3411)  ; Frc(value)
  %3646 = icmp eq i32 %3619, 0
  %3647 = call float @dx.op.unary.f32(i32 22, float %3617)  ; Frc(value)
  %3648 = call float @dx.op.unary.f32(i32 22, float %3618)  ; Frc(value)
  br i1 %3646, label %3719, label %3649, !dx.controlflow.hints !120

; <label>:3649                                    ; preds = %3639
  %3650 = and i32 %3619, 1
  %3651 = icmp eq i32 %3650, 0
  br i1 %3651, label %3665, label %3652, !dx.controlflow.hints !121

; <label>:3652                                    ; preds = %3649
  %3653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3654 = extractvalue %dx.types.CBufRet.f32 %3653, 0
  %3655 = fmul fast float %3647, %3654
  %3656 = fmul fast float %3648, %3654
  %3657 = fptoui float %3655 to i32
  %3658 = fptoui float %3656 to i32
  %3659 = fptoui float %3644 to i32
  %3660 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %3657, i32 %3658, i32 %3659, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3661 = extractvalue %dx.types.ResRet.f32 %3660, 0
  %3662 = extractvalue %dx.types.ResRet.f32 %3660, 1
  %3663 = extractvalue %dx.types.ResRet.f32 %3660, 2
  %3664 = extractvalue %dx.types.ResRet.f32 %3660, 3
  br label %3671

; <label>:3665                                    ; preds = %3649
  %3666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %50, float %3647, float %3648, float %3644, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3667 = extractvalue %dx.types.ResRet.f32 %3666, 0
  %3668 = extractvalue %dx.types.ResRet.f32 %3666, 1
  %3669 = extractvalue %dx.types.ResRet.f32 %3666, 2
  %3670 = extractvalue %dx.types.ResRet.f32 %3666, 3
  br label %3671

; <label>:3671                                    ; preds = %3665, %3652
  %3672 = phi float [ %3661, %3652 ], [ %3667, %3665 ]
  %3673 = phi float [ %3662, %3652 ], [ %3668, %3665 ]
  %3674 = phi float [ %3663, %3652 ], [ %3669, %3665 ]
  %3675 = phi float [ %3664, %3652 ], [ %3670, %3665 ]
  %3676 = fcmp fast ogt float %3645, 0.000000e+00
  br i1 %3676, label %3677, label %3747

; <label>:3677                                    ; preds = %3671
  %3678 = and i32 %3619, 2
  %3679 = icmp eq i32 %3678, 0
  %3680 = fadd fast float %3644, 1.000000e+00
  %3681 = call float @dx.op.unary.f32(i32 22, float %3615)  ; Frc(value)
  %3682 = call float @dx.op.unary.f32(i32 22, float %3616)  ; Frc(value)
  br i1 %3679, label %3696, label %3683, !dx.controlflow.hints !122

; <label>:3683                                    ; preds = %3677
  %3684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3685 = extractvalue %dx.types.CBufRet.f32 %3684, 0
  %3686 = fmul fast float %3681, %3685
  %3687 = fmul fast float %3682, %3685
  %3688 = fptoui float %3686 to i32
  %3689 = fptoui float %3687 to i32
  %3690 = fptoui float %3680 to i32
  %3691 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %3688, i32 %3689, i32 %3690, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3692 = extractvalue %dx.types.ResRet.f32 %3691, 0
  %3693 = extractvalue %dx.types.ResRet.f32 %3691, 1
  %3694 = extractvalue %dx.types.ResRet.f32 %3691, 2
  %3695 = extractvalue %dx.types.ResRet.f32 %3691, 3
  br label %3702

; <label>:3696                                    ; preds = %3677
  %3697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %50, float %3681, float %3682, float %3680, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3698 = extractvalue %dx.types.ResRet.f32 %3697, 0
  %3699 = extractvalue %dx.types.ResRet.f32 %3697, 1
  %3700 = extractvalue %dx.types.ResRet.f32 %3697, 2
  %3701 = extractvalue %dx.types.ResRet.f32 %3697, 3
  br label %3702

; <label>:3702                                    ; preds = %3696, %3683
  %3703 = phi float [ %3692, %3683 ], [ %3698, %3696 ]
  %3704 = phi float [ %3693, %3683 ], [ %3699, %3696 ]
  %3705 = phi float [ %3694, %3683 ], [ %3700, %3696 ]
  %3706 = phi float [ %3695, %3683 ], [ %3701, %3696 ]
  %3707 = fsub fast float %3703, %3672
  %3708 = fsub fast float %3704, %3673
  %3709 = fsub fast float %3705, %3674
  %3710 = fsub fast float %3706, %3675
  %3711 = fmul fast float %3707, %3645
  %3712 = fmul fast float %3708, %3645
  %3713 = fmul fast float %3709, %3645
  %3714 = fmul fast float %3710, %3645
  %3715 = fadd fast float %3711, %3672
  %3716 = fadd fast float %3712, %3673
  %3717 = fadd fast float %3713, %3674
  %3718 = fadd fast float %3714, %3675
  br label %3747

; <label>:3719                                    ; preds = %3639
  %3720 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %50, float %3647, float %3648, float %3644, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3721 = extractvalue %dx.types.ResRet.f32 %3720, 0
  %3722 = extractvalue %dx.types.ResRet.f32 %3720, 1
  %3723 = extractvalue %dx.types.ResRet.f32 %3720, 2
  %3724 = extractvalue %dx.types.ResRet.f32 %3720, 3
  %3725 = fcmp fast ogt float %3645, 0.000000e+00
  br i1 %3725, label %3726, label %3747, !dx.controlflow.hints !123

; <label>:3726                                    ; preds = %3719
  %3727 = fadd fast float %3644, 1.000000e+00
  %3728 = call float @dx.op.unary.f32(i32 22, float %3615)  ; Frc(value)
  %3729 = call float @dx.op.unary.f32(i32 22, float %3616)  ; Frc(value)
  %3730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %50, float %3728, float %3729, float %3727, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3731 = extractvalue %dx.types.ResRet.f32 %3730, 0
  %3732 = extractvalue %dx.types.ResRet.f32 %3730, 1
  %3733 = extractvalue %dx.types.ResRet.f32 %3730, 2
  %3734 = extractvalue %dx.types.ResRet.f32 %3730, 3
  %3735 = fsub fast float %3731, %3721
  %3736 = fsub fast float %3732, %3722
  %3737 = fsub fast float %3733, %3723
  %3738 = fsub fast float %3734, %3724
  %3739 = fmul fast float %3735, %3645
  %3740 = fmul fast float %3736, %3645
  %3741 = fmul fast float %3737, %3645
  %3742 = fmul fast float %3738, %3645
  %3743 = fadd fast float %3739, %3721
  %3744 = fadd fast float %3740, %3722
  %3745 = fadd fast float %3741, %3723
  %3746 = fadd fast float %3742, %3724
  br label %3747

; <label>:3747                                    ; preds = %3726, %3719, %3702, %3671
  %3748 = phi float [ %3715, %3702 ], [ %3672, %3671 ], [ %3743, %3726 ], [ %3721, %3719 ]
  %3749 = phi float [ %3716, %3702 ], [ %3673, %3671 ], [ %3744, %3726 ], [ %3722, %3719 ]
  %3750 = phi float [ %3717, %3702 ], [ %3674, %3671 ], [ %3745, %3726 ], [ %3723, %3719 ]
  %3751 = phi float [ %3718, %3702 ], [ %3675, %3671 ], [ %3746, %3726 ], [ %3724, %3719 ]
  %3752 = fadd fast float %3748, -5.000000e-01
  %3753 = fadd fast float %3750, -5.000000e-01
  %3754 = fmul fast float %3752, 0xBFD5555560000000
  %3755 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3753, float %3754)  ; FMad(a,b,c)
  %3756 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3749, float 0.000000e+00)  ; FMad(a,b,c)
  %3757 = fadd fast float %3756, %3751
  %3758 = fmul fast float %3752, -7.500000e-01
  %3759 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3753, float %3758)  ; FMad(a,b,c)
  %3760 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3749, float 0.000000e+00)  ; FMad(a,b,c)
  %3761 = fadd fast float %3760, %3751
  %3762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3763 = extractvalue %dx.types.CBufRet.f32 %3762, 0
  %3764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3765 = extractvalue %dx.types.CBufRet.f32 %3764, 0
  %3766 = extractvalue %dx.types.CBufRet.f32 %3764, 1
  %3767 = extractvalue %dx.types.CBufRet.f32 %3764, 2
  %3768 = extractvalue %dx.types.CBufRet.f32 %3764, 3
  %3769 = fsub fast float %3765, %3755
  %3770 = fsub fast float %3766, %3757
  %3771 = fsub fast float %3767, %3759
  %3772 = fsub fast float %3768, %3761
  %3773 = fmul fast float %3769, %3763
  %3774 = fmul fast float %3770, %3763
  %3775 = fmul fast float %3771, %3763
  %3776 = fmul fast float %3772, %3763
  %3777 = fadd fast float %3773, %3755
  %3778 = fadd fast float %3774, %3757
  %3779 = fadd fast float %3775, %3759
  %3780 = fadd fast float %3776, %3761
  %3781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3782 = extractvalue %dx.types.ResRet.i32 %3781, 0
  %3783 = and i32 %3782, 536870911
  %3784 = uitofp i32 %3783 to float
  %3785 = fmul fast float %3784, %3620
  %3786 = fmul fast float %3784, %3621
  %3787 = fptoui float %3785 to i32
  %3788 = fptoui float %3786 to i32
  %3789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3790 = extractvalue %dx.types.ResRet.i32 %3789, 0
  %3791 = and i32 %3790, 31
  %3792 = lshr i32 %3787, %3791
  %3793 = lshr i32 %3788, %3791
  %3794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3795 = extractvalue %dx.types.ResRet.i32 %3794, 0
  %3796 = and i32 %3795, 31
  %3797 = shl i32 1, %3796
  %3798 = call i32 @dx.op.binary.i32(i32 40, i32 %3797, i32 4)  ; UMin(a,b)
  %3799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3800 = extractvalue %dx.types.ResRet.i32 %3799, 0
  %3801 = extractvalue %dx.types.ResRet.i32 %3799, 1
  %3802 = icmp eq i32 %3798, 0
  br i1 %3802, label %3844, label %3803

; <label>:3803                                    ; preds = %3747
  br label %3804

; <label>:3804                                    ; preds = %3832, %3803
  %3805 = phi i32 [ %3835, %3832 ], [ 0, %3803 ]
  %3806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3807 = extractvalue %dx.types.ResRet.i32 %3806, 0
  %3808 = lshr i32 %3807, 16
  %3809 = and i32 %3808, 31
  %3810 = shl i32 %3793, %3809
  %3811 = add i32 %3810, %3792
  %3812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3813 = extractvalue %dx.types.ResRet.i32 %3812, 0
  %3814 = and i32 %3813, 31
  %3815 = shl i32 %3811, %3814
  %3816 = add i32 %3815, %3805
  %3817 = shl i32 %3816, 2
  %3818 = add i32 %3817, 32
  %3819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3818, i32 undef)  ; BufferLoad(srv,index,wot)
  %3820 = extractvalue %dx.types.ResRet.i32 %3819, 0
  %3821 = icmp slt i32 %3820, 0
  %3822 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %3805
  %3823 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 %3805
  %3824 = bitcast float* %3822 to i32*
  %3825 = bitcast float* %3823 to i32*
  br i1 %3821, label %3826, label %3832

; <label>:3826                                    ; preds = %3804
  %3827 = and i32 %3820, 1073741823
  %3828 = add nuw nsw i32 %3827, 20
  %3829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3830 = extractvalue %dx.types.ResRet.i32 %3829, 0
  %3831 = extractvalue %dx.types.ResRet.i32 %3829, 1
  br label %3832

; <label>:3832                                    ; preds = %3826, %3804
  %3833 = phi i32 [ %3830, %3826 ], [ %3800, %3804 ]
  %3834 = phi i32 [ %3831, %3826 ], [ %3801, %3804 ]
  store i32 %3833, i32* %3824, align 4
  store i32 %3834, i32* %3825, align 4
  %3835 = add nuw i32 %3805, 1
  %3836 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3837 = extractvalue %dx.types.CBufRet.i32 %3836, 2
  %3838 = icmp eq i32 %3837, 0
  %3839 = icmp ugt i32 %3820, -1073741825
  %3840 = and i1 %3839, %3838
  %3841 = icmp ult i32 %3835, %3798
  %3842 = and i1 %3840, %3841
  br i1 %3842, label %3804, label %3843

; <label>:3843                                    ; preds = %3832
  br label %3844

; <label>:3844                                    ; preds = %3843, %3747
  %3845 = phi i32 [ 0, %3747 ], [ %3835, %3843 ]
  %3846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3847 = extractvalue %dx.types.CBufRet.f32 %3846, 2
  %3848 = fptoui float %3847 to i32
  %3849 = icmp eq i32 %3848, 0
  br i1 %3849, label %3901, label %3850

; <label>:3850                                    ; preds = %3844
  br label %3851

; <label>:3851                                    ; preds = %3896, %3850
  %3852 = phi i32 [ %3897, %3896 ], [ %3845, %3850 ]
  %3853 = phi i32 [ %3898, %3896 ], [ 0, %3850 ]
  %3854 = lshr i32 %3853, 2
  %3855 = and i32 %3853, 3
  %3856 = add nuw nsw i32 %3854, 83
  %3857 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 %3856)  ; CBufferLoadLegacy(handle,regIndex)
  %3858 = extractvalue %dx.types.CBufRet.i32 %3857, 0
  %3859 = extractvalue %dx.types.CBufRet.i32 %3857, 1
  %3860 = extractvalue %dx.types.CBufRet.i32 %3857, 2
  %3861 = extractvalue %dx.types.CBufRet.i32 %3857, 3
  %3862 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 0
  store i32 %3858, i32* %3862, align 4
  %3863 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 1
  store i32 %3859, i32* %3863, align 4
  %3864 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 2
  store i32 %3860, i32* %3864, align 4
  %3865 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 3
  store i32 %3861, i32* %3865, align 4
  %3866 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 %3855
  %3867 = load i32, i32* %3866, align 4, !tbaa !124, !noalias !126
  %3868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3869 = extractvalue %dx.types.ResRet.i32 %3868, 0
  %3870 = lshr i32 %3869, 16
  %3871 = and i32 %3870, 31
  %3872 = shl i32 %3793, %3871
  %3873 = add i32 %3872, %3792
  %3874 = shl i32 %3873, 2
  %3875 = add i32 %3874, %3867
  %3876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3875, i32 undef)  ; BufferLoad(srv,index,wot)
  %3877 = extractvalue %dx.types.ResRet.i32 %3876, 0
  %3878 = icmp eq i32 %3877, 0
  br i1 %3878, label %3896, label %3879

; <label>:3879                                    ; preds = %3851
  %3880 = icmp slt i32 %3877, 0
  %3881 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %3852
  %3882 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 %3852
  %3883 = bitcast float* %3881 to i32*
  %3884 = bitcast float* %3882 to i32*
  br i1 %3880, label %3885, label %3892

; <label>:3885                                    ; preds = %3879
  %3886 = and i32 %3877, 1073741823
  %3887 = add i32 %3867, 20
  %3888 = add i32 %3887, %3886
  %3889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3890 = extractvalue %dx.types.ResRet.i32 %3889, 0
  %3891 = extractvalue %dx.types.ResRet.i32 %3889, 1
  br label %3892

; <label>:3892                                    ; preds = %3885, %3879
  %3893 = phi i32 [ %3890, %3885 ], [ %3800, %3879 ]
  %3894 = phi i32 [ %3891, %3885 ], [ %3801, %3879 ]
  store i32 %3893, i32* %3883, align 4
  store i32 %3894, i32* %3884, align 4
  %3895 = add i32 %3852, 1
  br label %3896

; <label>:3896                                    ; preds = %3892, %3851
  %3897 = phi i32 [ %3852, %3851 ], [ %3895, %3892 ]
  %3898 = add nuw i32 %3853, 1
  %3899 = icmp eq i32 %3898, %3848
  br i1 %3899, label %3900, label %3851

; <label>:3900                                    ; preds = %3896
  br label %3901

; <label>:3901                                    ; preds = %3900, %3844
  %3902 = phi i32 [ %3845, %3844 ], [ %3897, %3900 ]
  %3903 = icmp eq i32 %3902, 1
  %3904 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 0
  %3905 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 0
  br i1 %3903, label %3906, label %3909

; <label>:3906                                    ; preds = %3901
  %3907 = load float, float* %3904, align 4
  %3908 = load float, float* %3905, align 4
  br label %3936

; <label>:3909                                    ; preds = %3901
  %3910 = load float, float* %3904, align 4
  %3911 = load float, float* %3905, align 4
  %3912 = fdiv fast float 1.000000e+00, %3911
  %3913 = fsub fast float %3910, %3912
  %3914 = icmp ugt i32 %3902, 1
  br i1 %3914, label %3915, label %3931

; <label>:3915                                    ; preds = %3909
  br label %3916

; <label>:3916                                    ; preds = %3916, %3915
  %3917 = phi float [ %3926, %3916 ], [ %3913, %3915 ]
  %3918 = phi float [ %3927, %3916 ], [ %3910, %3915 ]
  %3919 = phi i32 [ %3928, %3916 ], [ 1, %3915 ]
  %3920 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %3919
  %3921 = load float, float* %3920, align 4
  %3922 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 %3919
  %3923 = load float, float* %3922, align 4
  %3924 = fdiv fast float 1.000000e+00, %3923
  %3925 = fsub fast float %3921, %3924
  %3926 = call float @dx.op.binary.f32(i32 36, float %3917, float %3925)  ; FMin(a,b)
  %3927 = call float @dx.op.binary.f32(i32 35, float %3918, float %3921)  ; FMax(a,b)
  %3928 = add nuw i32 %3919, 1
  %3929 = icmp eq i32 %3928, %3902
  br i1 %3929, label %3930, label %3916

; <label>:3930                                    ; preds = %3916
  br label %3931

; <label>:3931                                    ; preds = %3930, %3909
  %3932 = phi float [ %3913, %3909 ], [ %3926, %3930 ]
  %3933 = phi float [ %3910, %3909 ], [ %3927, %3930 ]
  %3934 = fsub fast float %3933, %3932
  %3935 = fdiv fast float 1.000000e+00, %3934
  br label %3936

; <label>:3936                                    ; preds = %3931, %3906
  %3937 = phi float [ %3907, %3906 ], [ %3933, %3931 ]
  %3938 = phi float [ %3908, %3906 ], [ %3935, %3931 ]
  %3939 = fadd fast float %3367, %3937
  %3940 = fmul fast float %3939, %3938
  %3941 = call float @dx.op.unary.f32(i32 7, float %3940)  ; Saturate(value)
  %3942 = fmul fast float %3941, 2.000000e+00
  %3943 = fsub fast float 1.000000e+00, %3942
  %3944 = fmul fast float %3777, %3777
  %3945 = fsub fast float %3778, %3944
  %3946 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3945)  ; FMax(a,b)
  %3947 = fdiv fast float 1.000000e+00, %3946
  %3948 = fmul fast float %3778, %3777
  %3949 = fsub fast float %3779, %3948
  %3950 = fsub fast float %3943, %3777
  %3951 = fmul fast float %3943, %3943
  %3952 = fsub fast float %3951, %3778
  %3953 = fmul fast float %3947, %3949
  %3954 = fmul fast float %3953, %3950
  %3955 = fsub fast float %3952, %3954
  %3956 = fmul fast float %3778, %3778
  %3957 = fsub fast float %3780, %3956
  %3958 = fmul fast float %3949, %3949
  %3959 = fmul fast float %3958, %3947
  %3960 = fsub fast float %3957, %3959
  %3961 = fdiv fast float %3955, %3960
  %3962 = fmul fast float %3961, %3949
  %3963 = fsub fast float %3950, %3962
  %3964 = fmul fast float %3963, %3947
  %3965 = fmul fast float %3964, %3777
  %3966 = fsub fast float 1.000000e+00, %3965
  %3967 = fmul fast float %3961, %3778
  %3968 = fsub fast float %3966, %3967
  %3969 = fmul fast float %3964, %3964
  %3970 = fmul fast float %3961, 4.000000e+00
  %3971 = fmul fast float %3970, %3968
  %3972 = fsub fast float %3969, %3971
  %3973 = call float @dx.op.unary.f32(i32 24, float %3972)  ; Sqrt(value)
  %3974 = fcmp fast oge float %3964, 0.000000e+00
  %3975 = fsub fast float -0.000000e+00, %3973
  %3976 = select i1 %3974, float %3975, float %3973
  %3977 = fsub fast float %3976, %3964
  %3978 = fdiv fast float %3977, %3961
  %3979 = fdiv fast float %3968, %3977
  %3980 = fmul fast float %3978, 5.000000e-01
  %3981 = fmul fast float %3979, 2.000000e+00
  %3982 = select i1 %3974, float %3980, float %3981
  %3983 = select i1 %3974, float %3981, float %3980
  %3984 = call float @dx.op.binary.f32(i32 35, float %3982, float %3983)  ; FMax(a,b)
  %3985 = call float @dx.op.binary.f32(i32 36, float %3982, float %3983)  ; FMin(a,b)
  %3986 = fcmp fast ogt float %3943, %3984
  %3987 = fsub fast float %3943, %3985
  %3988 = fsub fast float %3943, %3984
  %3989 = fsub fast float %3984, %3985
  %3990 = select i1 %3986, float %3988, float %3989
  %3991 = fmul float %3987, %3990
  %3992 = select i1 %3986, float %3985, float %3943
  %3993 = fcmp fast ogt float %3943, %3985
  %3994 = fmul fast float %3992, %3984
  %3995 = fadd fast float %3992, %3984
  %3996 = fmul fast float %3995, %3777
  %3997 = fadd fast float %3994, %3778
  %3998 = fsub fast float %3997, %3996
  %3999 = fdiv fast float %3998, %3991
  %4000 = select i1 %3993, float %3999, float 0.000000e+00
  %4001 = fsub fast float 1.000000e+00, %4000
  %4002 = select i1 %3986, float %4001, float %4000
  %4003 = call float @dx.op.unary.f32(i32 7, float %4002)  ; Saturate(value)
  %4004 = extractvalue %dx.types.CBufRet.f32 %3762, 3
  %4005 = fmul fast float %4004, %4003
  %4006 = fsub fast float 1.000000e+00, %4005
  br label %4007

; <label>:4007                                    ; preds = %3936, %3614, %3340, %3336, %3300
  %4008 = phi float [ 1.000000e+00, %3300 ], [ %4006, %3936 ], [ 1.000000e+00, %3340 ], [ 1.000000e+00, %3614 ], [ 1.000000e+00, %3336 ]
  %4009 = fcmp fast ogt float %3332, 0.000000e+00
  br i1 %4009, label %4010, label %4018, !dx.controlflow.hints !135

; <label>:4010                                    ; preds = %4007
  %4011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4012 = extractvalue %dx.types.CBufRet.f32 %4011, 2
  %4013 = fadd fast float %4012, %3215
  %4014 = call float @dx.op.binary.f32(i32 35, float %4013, float 0.000000e+00)  ; FMax(a,b)
  %4015 = fadd fast float %4014, 0x3F10000000000000
  %4016 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %3230, float %3231, float undef, float undef, i32 0, i32 0, i32 undef, float %4015)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4017 = extractvalue %dx.types.ResRet.f32 %4016, 0
  br label %4018

; <label>:4018                                    ; preds = %4010, %4007
  %4019 = phi float [ %4017, %4010 ], [ 1.000000e+00, %4007 ]
  %4020 = fcmp fast ogt float %3330, 0.000000e+00
  br i1 %4020, label %4021, label %4029, !dx.controlflow.hints !136

; <label>:4021                                    ; preds = %4018
  %4022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4023 = extractvalue %dx.types.CBufRet.f32 %4022, 1
  %4024 = fadd fast float %4023, %3215
  %4025 = call float @dx.op.binary.f32(i32 35, float %4024, float 0.000000e+00)  ; FMax(a,b)
  %4026 = fadd fast float %4025, 0x3F10000000000000
  %4027 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %3222, float %3223, float undef, float undef, i32 0, i32 0, i32 undef, float %4026)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4028 = extractvalue %dx.types.ResRet.f32 %4027, 0
  br label %4029

; <label>:4029                                    ; preds = %4021, %4018
  %4030 = phi float [ %4028, %4021 ], [ 1.000000e+00, %4018 ]
  %4031 = fcmp fast ogt float %3329, 0.000000e+00
  br i1 %4031, label %4032, label %4040, !dx.controlflow.hints !137

; <label>:4032                                    ; preds = %4029
  %4033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4034 = extractvalue %dx.types.CBufRet.f32 %4033, 0
  %4035 = fadd fast float %4034, %3215
  %4036 = call float @dx.op.binary.f32(i32 35, float %4035, float 0.000000e+00)  ; FMax(a,b)
  %4037 = fadd fast float %4036, 0x3F10000000000000
  %4038 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %3207, float %3211, float undef, float undef, i32 0, i32 0, i32 undef, float %4037)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4039 = extractvalue %dx.types.ResRet.f32 %4038, 0
  br label %4040

; <label>:4040                                    ; preds = %4032, %4029
  %4041 = phi float [ %4039, %4032 ], [ 1.000000e+00, %4029 ]
  %4042 = fsub fast float %4019, %4008
  %4043 = fmul fast float %4042, %3270
  %4044 = fadd fast float %4043, %4008
  %4045 = fsub fast float %4030, %4044
  %4046 = fmul fast float %4045, %3301
  %4047 = fadd fast float %4046, %4044
  %4048 = fsub fast float %4041, %4047
  %4049 = fmul fast float %4048, %3329
  %4050 = fadd fast float %4049, %4047
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 2
  %4053 = fcmp fast ogt float %4052, 0.000000e+00
  br i1 %4053, label %4054, label %4094, !dx.controlflow.hints !138

; <label>:4054                                    ; preds = %4040
  %4055 = fcmp fast ugt float %4052, 0.000000e+00
  br i1 %4055, label %4056, label %4091

; <label>:4056                                    ; preds = %4054
  %4057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4058 = extractvalue %dx.types.CBufRet.f32 %4057, 0
  %4059 = extractvalue %dx.types.CBufRet.f32 %4057, 1
  %4060 = extractvalue %dx.types.CBufRet.f32 %4057, 2
  %4061 = extractvalue %dx.types.CBufRet.f32 %4057, 3
  %4062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4063 = extractvalue %dx.types.CBufRet.f32 %4062, 0
  %4064 = extractvalue %dx.types.CBufRet.f32 %4062, 1
  %4065 = extractvalue %dx.types.CBufRet.f32 %4062, 2
  %4066 = extractvalue %dx.types.CBufRet.f32 %4062, 3
  %4067 = extractvalue %dx.types.CBufRet.f32 %4051, 0
  %4068 = extractvalue %dx.types.CBufRet.f32 %4051, 1
  %4069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4070 = extractvalue %dx.types.CBufRet.f32 %4069, 0
  %4071 = extractvalue %dx.types.CBufRet.f32 %4069, 1
  %4072 = extractvalue %dx.types.CBufRet.f32 %4069, 2
  %4073 = fadd fast float %4070, %134
  %4074 = fadd fast float %4071, %135
  %4075 = fadd fast float %4072, %136
  %4076 = fmul fast float %4073, %4058
  %4077 = call float @dx.op.tertiary.f32(i32 46, float %4059, float %4074, float %4076)  ; FMad(a,b,c)
  %4078 = call float @dx.op.tertiary.f32(i32 46, float %4060, float %4075, float %4077)  ; FMad(a,b,c)
  %4079 = fadd fast float %4078, %4061
  %4080 = fmul fast float %4073, %4063
  %4081 = call float @dx.op.tertiary.f32(i32 46, float %4064, float %4074, float %4080)  ; FMad(a,b,c)
  %4082 = call float @dx.op.tertiary.f32(i32 46, float %4065, float %4075, float %4081)  ; FMad(a,b,c)
  %4083 = fadd fast float %4082, %4066
  %4084 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %48, float %4079, float %4083, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4085 = extractvalue %dx.types.ResRet.f32 %4084, 0
  %4086 = fmul fast float %4085, %4068
  %4087 = fadd fast float %4086, %4067
  %4088 = call float @dx.op.unary.f32(i32 7, float %4087)  ; Saturate(value)
  %4089 = fmul fast float %4088, %4052
  %4090 = fsub fast float 1.000000e+00, %4089
  br label %4091

; <label>:4091                                    ; preds = %4056, %4054
  %4092 = phi float [ %4090, %4056 ], [ 1.000000e+00, %4054 ]
  %4093 = fmul fast float %4092, %4050
  br label %4094

; <label>:4094                                    ; preds = %4091, %4040, %3172
  %4095 = phi float [ 1.000000e+00, %3172 ], [ %4093, %4091 ], [ %4050, %4040 ]
  %4096 = call float @dx.op.binary.f32(i32 36, float %4095, float %4095)  ; FMin(a,b)
  %4097 = call float @dx.op.binary.f32(i32 36, float %4095, float %4096)  ; FMin(a,b)
  %4098 = fcmp fast ogt float %4097, 0.000000e+00
  br i1 %4098, label %4099, label %4264, !dx.controlflow.hints !139

; <label>:4099                                    ; preds = %4094
  %4100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4101 = extractvalue %dx.types.CBufRet.f32 %4100, 0
  %4102 = extractvalue %dx.types.CBufRet.f32 %4100, 1
  %4103 = extractvalue %dx.types.CBufRet.f32 %4100, 2
  %4104 = extractvalue %dx.types.CBufRet.f32 %4100, 3
  %4105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4106 = extractvalue %dx.types.CBufRet.f32 %4105, 0
  %4107 = extractvalue %dx.types.CBufRet.f32 %4105, 1
  %4108 = extractvalue %dx.types.CBufRet.f32 %4105, 2
  %4109 = extractvalue %dx.types.CBufRet.f32 %4105, 3
  %4110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4111 = extractvalue %dx.types.CBufRet.f32 %4110, 0
  %4112 = extractvalue %dx.types.CBufRet.f32 %4110, 1
  %4113 = extractvalue %dx.types.CBufRet.f32 %4110, 2
  %4114 = extractvalue %dx.types.CBufRet.f32 %4110, 3
  %4115 = fmul fast float %4101, %134
  %4116 = call float @dx.op.tertiary.f32(i32 46, float %135, float %4102, float %4115)  ; FMad(a,b,c)
  %4117 = call float @dx.op.tertiary.f32(i32 46, float %136, float %4103, float %4116)  ; FMad(a,b,c)
  %4118 = fadd fast float %4117, %4104
  %4119 = fmul fast float %4106, %134
  %4120 = call float @dx.op.tertiary.f32(i32 46, float %135, float %4107, float %4119)  ; FMad(a,b,c)
  %4121 = call float @dx.op.tertiary.f32(i32 46, float %136, float %4108, float %4120)  ; FMad(a,b,c)
  %4122 = fadd fast float %4121, %4109
  %4123 = fmul fast float %4111, %134
  %4124 = call float @dx.op.tertiary.f32(i32 46, float %135, float %4112, float %4123)  ; FMad(a,b,c)
  %4125 = call float @dx.op.tertiary.f32(i32 46, float %136, float %4113, float %4124)  ; FMad(a,b,c)
  %4126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4127 = extractvalue %dx.types.CBufRet.f32 %4126, 0
  %4128 = extractvalue %dx.types.CBufRet.f32 %4126, 1
  %4129 = extractvalue %dx.types.CBufRet.f32 %4126, 3
  %4130 = fmul fast float %4129, %4118
  %4131 = fmul fast float %4129, %4122
  %4132 = fadd fast float %4130, %4127
  %4133 = fadd fast float %4131, %4128
  %4134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4135 = extractvalue %dx.types.CBufRet.f32 %4134, 0
  %4136 = extractvalue %dx.types.CBufRet.f32 %4134, 1
  %4137 = fsub fast float %4132, %4135
  %4138 = fsub fast float %4133, %4136
  %4139 = fcmp fast olt float %4137, 0.000000e+00
  %4140 = fcmp fast olt float %4138, 0.000000e+00
  %4141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4142 = extractvalue %dx.types.CBufRet.f32 %4141, 0
  %4143 = extractvalue %dx.types.CBufRet.f32 %4141, 1
  %4144 = extractvalue %dx.types.CBufRet.f32 %4141, 2
  %4145 = extractvalue %dx.types.CBufRet.f32 %4141, 3
  %4146 = select i1 %4139, float %4142, float %4144
  %4147 = select i1 %4140, float %4143, float %4145
  %4148 = fmul fast float %4146, %4137
  %4149 = fmul fast float %4147, %4138
  %4150 = call float @dx.op.unary.f32(i32 6, float %4148)  ; FAbs(value)
  %4151 = call float @dx.op.unary.f32(i32 6, float %4149)  ; FAbs(value)
  %4152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.f32 %4152, 0
  %4154 = call float @dx.op.binary.f32(i32 35, float %4150, float %4151)  ; FMax(a,b)
  %4155 = fsub fast float %4153, %4154
  %4156 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4157 = fcmp fast ogt float %4156, 0.000000e+00
  br i1 %4157, label %4158, label %4199, !dx.controlflow.hints !140

; <label>:4158                                    ; preds = %4099
  %4159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %51, float %4132, float %4133, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4160 = extractvalue %dx.types.ResRet.f32 %4159, 1
  %4161 = fcmp fast ogt float %4160, 0.000000e+00
  br i1 %4161, label %4162, label %4194

; <label>:4162                                    ; preds = %4158
  %4163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %51, float %4132, float %4133, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4164 = extractvalue %dx.types.ResRet.f32 %4163, 0
  %4165 = extractvalue %dx.types.ResRet.f32 %4163, 1
  %4166 = extractvalue %dx.types.ResRet.f32 %4163, 2
  %4167 = extractvalue %dx.types.ResRet.f32 %4163, 3
  %4168 = fsub fast float 1.000000e+00, %4114
  %4169 = fsub fast float %4168, %4125
  %4170 = fmul fast float %4169, 0x400921FB60000000
  %4171 = fadd fast float %4170, 0x3FF921FB60000000
  %4172 = call float @dx.op.unary.f32(i32 13, float %4171)  ; Sin(value)
  %4173 = fadd fast float %4172, -1.000000e+00
  %4174 = fmul fast float %4173, 0x3FD45F3060000000
  %4175 = fmul fast float %4169, 0x401921FB60000000
  %4176 = fadd fast float %4175, 0x400921FB60000000
  %4177 = call float @dx.op.unary.f32(i32 13, float %4176)  ; Sin(value)
  %4178 = fadd fast float %4177, 0x3E7777A5C0000000
  %4179 = fmul fast float %4178, 0x3FC45F3060000000
  %4180 = fmul fast float %4169, 0x4022D97C80000000
  %4181 = fadd fast float %4180, 0x4012D97C80000000
  %4182 = call float @dx.op.unary.f32(i32 13, float %4181)  ; Sin(value)
  %4183 = fadd fast float %4182, 1.000000e+00
  %4184 = fmul fast float %4183, 0x3FBB2995E0000000
  %4185 = fmul fast float %4169, 0x402921FB60000000
  %4186 = fadd fast float %4185, 0x401921FB60000000
  %4187 = call float @dx.op.unary.f32(i32 13, float %4186)  ; Sin(value)
  %4188 = fadd fast float %4187, 0xBE8777A5C0000000
  %4189 = fmul fast float %4188, 0x3FB45F3060000000
  %4190 = call float @dx.op.dot4.f32(i32 56, float %4164, float %4165, float %4166, float %4167, float %4174, float %4179, float %4184, float %4189)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4191 = fmul fast float %4190, 0xBFF7154760000000
  %4192 = call float @dx.op.unary.f32(i32 21, float %4191)  ; Exp(value)
  %4193 = call float @dx.op.unary.f32(i32 7, float %4192)  ; Saturate(value)
  br label %4194

; <label>:4194                                    ; preds = %4162, %4158
  %4195 = phi float [ %4193, %4162 ], [ 1.000000e+00, %4158 ]
  %4196 = fadd fast float %4195, -1.000000e+00
  %4197 = fmul fast float %4196, %4156
  %4198 = fadd fast float %4197, 1.000000e+00
  br label %4199

; <label>:4199                                    ; preds = %4194, %4099
  %4200 = phi float [ %4198, %4194 ], [ 1.000000e+00, %4099 ]
  %4201 = fmul fast float %4200, %4095
  %4202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4203 = extractvalue %dx.types.CBufRet.f32 %4202, 0
  %4204 = extractvalue %dx.types.CBufRet.f32 %4202, 1
  %4205 = extractvalue %dx.types.CBufRet.f32 %4202, 2
  %4206 = fadd fast float %4203, %134
  %4207 = fadd fast float %4204, %135
  %4208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4209 = extractvalue %dx.types.CBufRet.f32 %4208, 1
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 0
  %4212 = extractvalue %dx.types.CBufRet.f32 %4210, 1
  %4213 = extractvalue %dx.types.CBufRet.f32 %4210, 2
  %4214 = fsub fast float -0.000000e+00, %4206
  %4215 = fsub fast float -0.000000e+00, %4207
  %4216 = fsub fast float %2323, %4205
  %4217 = fadd fast float %4216, %4209
  %4218 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4214, float %4215, float %4217)  ; Dot3(ax,ay,az,bx,by,bz)
  %4219 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4211, float %4212, float %4213)  ; Dot3(ax,ay,az,bx,by,bz)
  %4220 = fdiv fast float 1.000000e+00, %4219
  %4221 = fmul fast float %4220, %4218
  %4222 = fmul fast float %4211, %4221
  %4223 = fmul fast float %4212, %4221
  %4224 = fadd fast float %4222, %4206
  %4225 = fadd fast float %4223, %4207
  %4226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4227 = extractvalue %dx.types.CBufRet.f32 %4226, 0
  %4228 = extractvalue %dx.types.CBufRet.f32 %4226, 1
  %4229 = fsub fast float %4224, %4227
  %4230 = fsub fast float %4225, %4228
  %4231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4232 = extractvalue %dx.types.CBufRet.f32 %4231, 2
  %4233 = extractvalue %dx.types.CBufRet.f32 %4231, 3
  %4234 = fmul fast float %4229, %4232
  %4235 = fmul fast float %4230, %4233
  %4236 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4237 = extractvalue %dx.types.CBufRet.i32 %4236, 3
  %4238 = icmp eq i32 %4237, 0
  br i1 %4238, label %4244, label %4239

; <label>:4239                                    ; preds = %4199
  %4240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %4234, float %4235, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4241 = extractvalue %dx.types.ResRet.f32 %4240, 0
  %4242 = extractvalue %dx.types.ResRet.f32 %4240, 1
  %4243 = extractvalue %dx.types.ResRet.f32 %4240, 2
  br label %4249

; <label>:4244                                    ; preds = %4199
  %4245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %51, float %4234, float %4235, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4246 = extractvalue %dx.types.ResRet.f32 %4245, 0
  %4247 = extractvalue %dx.types.ResRet.f32 %4245, 1
  %4248 = extractvalue %dx.types.ResRet.f32 %4245, 2
  br label %4249

; <label>:4249                                    ; preds = %4244, %4239
  %4250 = phi float [ %4241, %4239 ], [ %4246, %4244 ]
  %4251 = phi float [ %4242, %4239 ], [ %4247, %4244 ]
  %4252 = phi float [ %4243, %4239 ], [ %4248, %4244 ]
  %4253 = extractvalue %dx.types.CBufRet.f32 %4208, 2
  %4254 = fmul fast float %4253, %4250
  %4255 = extractvalue %dx.types.CBufRet.f32 %4208, 0
  %4256 = fsub fast float %4221, %4255
  %4257 = fsub fast float %4256, %4254
  %4258 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4257)  ; FMax(a,b)
  %4259 = fmul fast float %4258, %4251
  %4260 = call float @dx.op.binary.f32(i32 36, float %4252, float %4259)  ; FMin(a,b)
  %4261 = fmul fast float %4260, 0xBFF7154760000000
  %4262 = call float @dx.op.unary.f32(i32 21, float %4261)  ; Exp(value)
  %4263 = fmul fast float %4201, %4262
  br label %4264

; <label>:4264                                    ; preds = %4249, %4094
  %4265 = phi float [ %4263, %4249 ], [ %4095, %4094 ]
  %4266 = call float @dx.op.binary.f32(i32 36, float %4265, float %4265)  ; FMin(a,b)
  %4267 = call float @dx.op.binary.f32(i32 36, float %4265, float %4266)  ; FMin(a,b)
  %4268 = fcmp fast ogt float %4267, 0.000000e+00
  br i1 %4268, label %4269, label %4435, !dx.controlflow.hints !141

; <label>:4269                                    ; preds = %4264
  %4270 = fmul fast float %4265, %3184
  %4271 = fmul fast float %4265, %3185
  %4272 = fmul fast float %4265, %3186
  %4273 = fsub fast float %3173, %2215
  %4274 = fsub fast float %3174, %2216
  %4275 = fsub fast float %3175, %2217
  %4276 = call float @dx.op.dot3.f32(i32 55, float %4273, float %4274, float %4275, float %4273, float %4274, float %4275)  ; Dot3(ax,ay,az,bx,by,bz)
  %4277 = call float @dx.op.unary.f32(i32 25, float %4276)  ; Rsqrt(value)
  %4278 = fmul fast float %4277, %4273
  %4279 = fmul fast float %4277, %4274
  %4280 = fmul fast float %4277, %4275
  %4281 = call float @dx.op.dot3.f32(i32 55, float %3173, float %3174, float %3175, float %2187, float %2188, float %2189)  ; Dot3(ax,ay,az,bx,by,bz)
  %4282 = call float @dx.op.dot3.f32(i32 55, float %2324, float %2325, float %2326, float %4278, float %4279, float %4280)  ; Dot3(ax,ay,az,bx,by,bz)
  %4283 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4284 = fmul fast float %4283, %4283
  %4285 = fmul fast float %4284, %2341
  %4286 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4287 = fmul fast float %4286, %4283
  %4288 = call float @dx.op.dot3.f32(i32 55, float %2187, float %2188, float %2189, float %4278, float %4279, float %4280)  ; Dot3(ax,ay,az,bx,by,bz)
  %4289 = fmul fast float %4288, %4288
  %4290 = call float @dx.op.unary.f32(i32 6, float %4281)  ; FAbs(value)
  %4291 = fsub fast float 1.000000e+00, %2270
  %4292 = call float @dx.op.binary.f32(i32 35, float %4291, float 0x3F847AE140000000)  ; FMax(a,b)
  %4293 = fmul fast float %4292, %4292
  %4294 = fmul fast float %4293, %4293
  %4295 = fsub fast float 1.000000e+00, %4294
  %4296 = fmul fast float %2329, %2329
  %4297 = fmul fast float %4296, %4295
  %4298 = fadd fast float %4297, %4294
  %4299 = bitcast float %4298 to i32
  %4300 = ashr i32 %4299, 1
  %4301 = add nsw i32 %4300, 532487669
  %4302 = bitcast i32 %4301 to float
  %4303 = fadd fast float %4302, %2329
  %4304 = fmul fast float %4294, %4289
  %4305 = fsub fast float 1.000000e+00, %4289
  %4306 = fadd fast float %4305, %4304
  %4307 = fmul fast float %4290, %4290
  %4308 = fmul fast float %4307, %4295
  %4309 = fadd fast float %4308, %4294
  %4310 = bitcast float %4309 to i32
  %4311 = ashr i32 %4310, 1
  %4312 = add nsw i32 %4311, 532487669
  %4313 = bitcast i32 %4312 to float
  %4314 = fadd fast float %4313, %4290
  %4315 = fmul fast float %4306, %4306
  %4316 = fmul fast float %4315, %4303
  %4317 = fmul fast float %4316, %4314
  %4318 = fdiv fast float 0x3FF0A00000000000, %4317
  %4319 = fmul fast float %4318, %4294
  %4320 = call float @dx.op.unary.f32(i32 6, float %4282)  ; FAbs(value)
  %4321 = fsub fast float 1.000000e+00, %4320
  %4322 = bitcast float %4321 to i32
  %4323 = sitofp i32 %4322 to float
  %4324 = fmul fast float %4323, 5.000000e+00
  %4325 = fadd fast float %4324, 0xC1EFBF8940000000
  %4326 = fptosi float %4325 to i32
  %4327 = bitcast i32 %4326 to float
  %4328 = fmul fast float %4327, %3154
  %4329 = fmul fast float %4327, %3155
  %4330 = fmul fast float %4327, %3156
  %4331 = fadd fast float %4328, %2208
  %4332 = fadd fast float %4329, %2209
  %4333 = fadd fast float %4330, %2327
  %4334 = fmul fast float %4281, 9.843750e-01
  %4335 = fmul fast float %2270, 9.843750e-01
  %4336 = fadd fast float %4334, 7.812500e-03
  %4337 = fadd fast float %4335, 7.812500e-03
  %4338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %4336, float %4337, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4339 = extractvalue %dx.types.ResRet.f32 %4338, 2
  %4340 = extractvalue %dx.types.ResRet.f32 %4338, 3
  %4341 = fmul fast float %4339, %2208
  %4342 = fmul fast float %4339, %2209
  %4343 = fmul fast float %4339, %2327
  %4344 = fadd fast float %4341, %4340
  %4345 = fadd fast float %4342, %4340
  %4346 = fadd fast float %4343, %4340
  %4347 = call float @dx.op.binary.f32(i32 35, float %4345, float %4346)  ; FMax(a,b)
  %4348 = call float @dx.op.binary.f32(i32 35, float %4344, float %4347)  ; FMax(a,b)
  %4349 = fsub fast float 1.000000e+00, %4348
  %4350 = fsub fast float -0.000000e+00, %2187
  %4351 = fsub fast float -0.000000e+00, %2188
  %4352 = fsub fast float -0.000000e+00, %2189
  %4353 = call float @dx.op.dot3.f32(i32 55, float %3173, float %3174, float %3175, float %4350, float %4351, float %4352)  ; Dot3(ax,ay,az,bx,by,bz)
  %4354 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4355 = fmul fast float %4354, 9.843750e-01
  %4356 = fadd fast float %4355, 7.812500e-03
  %4357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %4356, float %4337, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4358 = extractvalue %dx.types.ResRet.f32 %4357, 2
  %4359 = extractvalue %dx.types.ResRet.f32 %4357, 3
  %4360 = fmul fast float %4358, %2208
  %4361 = fmul fast float %4358, %2209
  %4362 = fmul fast float %4358, %2327
  %4363 = fadd fast float %4360, %4359
  %4364 = fadd fast float %4361, %4359
  %4365 = fadd fast float %4362, %4359
  %4366 = call float @dx.op.binary.f32(i32 35, float %4364, float %4365)  ; FMax(a,b)
  %4367 = call float @dx.op.binary.f32(i32 35, float %4363, float %4366)  ; FMax(a,b)
  %4368 = fsub fast float 1.000000e+00, %4367
  %4369 = fmul fast float %2209, 0x4012D0A400000000
  %4370 = fadd fast float %4369, 0x3FDB6377A0000000
  %4371 = fmul fast float %4291, %4370
  %4372 = call float @dx.op.unary.f32(i32 7, float %4371)  ; Saturate(value)
  %4373 = fsub fast float %3173, %2334
  %4374 = fsub fast float %3174, %2335
  %4375 = fsub fast float %3175, %2336
  %4376 = call float @dx.op.dot3.f32(i32 55, float %4373, float %4374, float %4375, float %4373, float %4374, float %4375)  ; Dot3(ax,ay,az,bx,by,bz)
  %4377 = call float @dx.op.unary.f32(i32 25, float %4376)  ; Rsqrt(value)
  %4378 = fmul fast float %4377, %4373
  %4379 = fmul fast float %4377, %4374
  %4380 = fmul fast float %4377, %4375
  %4381 = call float @dx.op.dot3.f32(i32 55, float %4350, float %4351, float %4352, float %4378, float %4379, float %4380)  ; Dot3(ax,ay,az,bx,by,bz)
  %4382 = fmul fast float %4381, %4381
  %4383 = call float @dx.op.unary.f32(i32 6, float %4354)  ; FAbs(value)
  %4384 = call float @dx.op.binary.f32(i32 35, float %4372, float 0x3F847AE140000000)  ; FMax(a,b)
  %4385 = fmul fast float %4384, %4384
  %4386 = fmul fast float %4385, %4385
  %4387 = fsub fast float 1.000000e+00, %4386
  %4388 = fmul fast float %4296, %4387
  %4389 = fadd fast float %4388, %4386
  %4390 = bitcast float %4389 to i32
  %4391 = ashr i32 %4390, 1
  %4392 = add nsw i32 %4391, 532487669
  %4393 = bitcast i32 %4392 to float
  %4394 = fadd fast float %4393, %2329
  %4395 = fmul fast float %4386, %4382
  %4396 = fsub fast float 1.000000e+00, %4382
  %4397 = fadd fast float %4396, %4395
  %4398 = fmul fast float %4383, %4383
  %4399 = fmul fast float %4398, %4387
  %4400 = fadd fast float %4399, %4386
  %4401 = bitcast float %4400 to i32
  %4402 = ashr i32 %4401, 1
  %4403 = add nsw i32 %4402, 532487669
  %4404 = bitcast i32 %4403 to float
  %4405 = fadd fast float %4404, %4383
  %4406 = fmul fast float %4397, %4397
  %4407 = fmul fast float %4406, %4394
  %4408 = fmul fast float %4407, %4405
  %4409 = fdiv fast float 0x3FF0A00000000000, %4408
  %4410 = fmul fast float %4409, %4386
  %4411 = fmul fast float %4368, %4354
  %4412 = fmul fast float %4411, %4410
  %4413 = fmul fast float %4319, %4287
  %4414 = fmul fast float %4413, %4331
  %4415 = fmul fast float %4413, %4332
  %4416 = fmul fast float %4413, %4333
  %4417 = fadd fast float %4412, %4414
  %4418 = fadd fast float %4412, %4415
  %4419 = fadd fast float %4412, %4416
  %4420 = fmul fast float %4287, %4270
  %4421 = fmul fast float %4420, %4349
  %4422 = fmul fast float %4287, %4271
  %4423 = fmul fast float %4422, %4349
  %4424 = fmul fast float %4287, %4272
  %4425 = fmul fast float %4424, %4349
  %4426 = fadd fast float %4421, %3166
  %4427 = fadd fast float %4423, %3167
  %4428 = fadd fast float %4425, %3168
  %4429 = fmul fast float %4417, %4270
  %4430 = fmul fast float %4418, %4271
  %4431 = fmul fast float %4419, %4272
  %4432 = fadd fast float %4429, %2151
  %4433 = fadd fast float %4430, %2152
  %4434 = fadd fast float %4431, %2153
  br label %4435

; <label>:4435                                    ; preds = %4269, %4264, %3104
  %4436 = phi float [ %4265, %4269 ], [ 0.000000e+00, %3104 ], [ 0.000000e+00, %4264 ]
  %4437 = phi float [ %4432, %4269 ], [ %2151, %3104 ], [ %2151, %4264 ]
  %4438 = phi float [ %4433, %4269 ], [ %2152, %3104 ], [ %2152, %4264 ]
  %4439 = phi float [ %4434, %4269 ], [ %2153, %3104 ], [ %2153, %4264 ]
  %4440 = phi float [ %4426, %4269 ], [ %3166, %3104 ], [ %3166, %4264 ]
  %4441 = phi float [ %4427, %4269 ], [ %3167, %3104 ], [ %3167, %4264 ]
  %4442 = phi float [ %4428, %4269 ], [ %3168, %3104 ], [ %3168, %4264 ]
  %4443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4444 = extractvalue %dx.types.CBufRet.i32 %4443, 0
  %4445 = icmp eq i32 %4444, 0
  br i1 %4445, label %5040, label %4446

; <label>:4446                                    ; preds = %4435
  %4447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4448 = extractvalue %dx.types.CBufRet.f32 %4447, 2
  %4449 = extractvalue %dx.types.CBufRet.f32 %4447, 3
  %4450 = fmul fast float %4448, %79
  %4451 = fmul fast float %4449, %80
  %4452 = fptoui float %4450 to i32
  %4453 = fptoui float %4451 to i32
  %4454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4455 = extractvalue %dx.types.CBufRet.f32 %4454, 0
  %4456 = extractvalue %dx.types.CBufRet.f32 %4454, 2
  %4457 = extractvalue %dx.types.CBufRet.f32 %4454, 3
  %4458 = fadd fast float %71, -4.000000e+00
  %4459 = call float @dx.op.binary.f32(i32 35, float %4458, float 0.000000e+00)  ; FMax(a,b)
  %4460 = fadd fast float %4459, %4455
  %4461 = fmul fast float %4460, %4456
  %4462 = call float @dx.op.unary.f32(i32 23, float %4461)  ; Log(value)
  %4463 = fmul fast float %4462, %4457
  %4464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4465 = extractvalue %dx.types.CBufRet.f32 %4464, 2
  %4466 = fmul fast float %4463, %4465
  %4467 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4469 = extractvalue %dx.types.CBufRet.i32 %4468, 1
  %4470 = add i32 %4469, -1
  %4471 = uitofp i32 %4469 to float
  %4472 = fmul fast float %4471, %4467
  %4473 = fptoui float %4472 to i32
  %4474 = call i32 @dx.op.binary.i32(i32 40, i32 %4473, i32 %4470)  ; UMin(a,b)
  %4475 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4476 = extractvalue %dx.types.CBufRet.i32 %4475, 2
  %4477 = extractvalue %dx.types.CBufRet.i32 %4475, 3
  %4478 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4453, i32 %4476, i32 %4452)  ; UMad(a,b,c)
  %4479 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4474, i32 %4477, i32 %4478)  ; UMad(a,b,c)
  %4480 = add nsw i32 %4444, -1
  %4481 = call i32 @dx.op.binary.i32(i32 37, i32 %4480, i32 0)  ; IMax(a,b)
  %4482 = call float @dx.op.binary.f32(i32 35, float %71, float 0.000000e+00)  ; FMax(a,b)
  %4483 = fptoui float %4482 to i32
  %4484 = lshr i32 %4483, 5
  %4485 = call i32 @dx.op.binary.i32(i32 40, i32 %4484, i32 8191)  ; UMin(a,b)
  %4486 = shl i32 %4485, 2
  %4487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4486, i32 undef)  ; BufferLoad(srv,index,wot)
  %4488 = extractvalue %dx.types.ResRet.i32 %4487, 0
  %4489 = lshr i32 %4488, 16
  %4490 = and i32 %4488, 65535
  %4491 = lshr i32 %4488, 21
  %4492 = lshr i32 %4490, 5
  %4493 = call i32 @dx.op.binary.i32(i32 40, i32 %4492, i32 %4481)  ; UMin(a,b)
  %4494 = icmp ugt i32 %4491, %4493
  br i1 %4494, label %5040, label %4495

; <label>:4495                                    ; preds = %4446
  br label %4496

; <label>:4496                                    ; preds = %5030, %4495
  %4497 = phi i32 [ %5037, %5030 ], [ %4491, %4495 ]
  %4498 = phi float [ %5031, %5030 ], [ %4437, %4495 ]
  %4499 = phi float [ %5032, %5030 ], [ %4438, %4495 ]
  %4500 = phi float [ %5033, %5030 ], [ %4439, %4495 ]
  %4501 = phi float [ %5034, %5030 ], [ %4440, %4495 ]
  %4502 = phi float [ %5035, %5030 ], [ %4441, %4495 ]
  %4503 = phi float [ %5036, %5030 ], [ %4442, %4495 ]
  %4504 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4505 = extractvalue %dx.types.CBufRet.i32 %4504, 0
  %4506 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4479, i32 %4505, i32 %4497)  ; UMad(a,b,c)
  %4507 = shl i32 %4506, 2
  %4508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4507, i32 undef)  ; BufferLoad(srv,index,wot)
  %4509 = extractvalue %dx.types.ResRet.i32 %4508, 0
  %4510 = shl i32 %4497, 5
  %4511 = sub nsw i32 %4489, %4510
  %4512 = call i32 @dx.op.binary.i32(i32 37, i32 %4511, i32 0)  ; IMax(a,b)
  %4513 = call i32 @dx.op.binary.i32(i32 38, i32 %4512, i32 31)  ; IMin(a,b)
  %4514 = sub nsw i32 1, %4489
  %4515 = add nsw i32 %4514, %4490
  %4516 = call i32 @dx.op.binary.i32(i32 37, i32 %4515, i32 0)  ; IMax(a,b)
  %4517 = call i32 @dx.op.binary.i32(i32 38, i32 %4516, i32 32)  ; IMin(a,b)
  %4518 = and i32 %4517, 31
  %4519 = shl i32 -1, %4518
  %4520 = xor i32 %4519, -1
  %4521 = and i32 %4513, 31
  %4522 = shl i32 %4520, %4521
  %4523 = icmp eq i32 %4517, 32
  %4524 = select i1 %4523, i32 -1, i32 %4522
  %4525 = and i32 %4524, %4509
  %4526 = icmp eq i32 %4525, 0
  br i1 %4526, label %5030, label %4527

; <label>:4527                                    ; preds = %4496
  br label %4528

; <label>:4528                                    ; preds = %4663, %4527
  %4529 = phi i32 [ %4540, %4663 ], [ %4525, %4527 ]
  %4530 = phi float [ %4664, %4663 ], [ %4498, %4527 ]
  %4531 = phi float [ %4665, %4663 ], [ %4499, %4527 ]
  %4532 = phi float [ %4666, %4663 ], [ %4500, %4527 ]
  %4533 = phi float [ %4667, %4663 ], [ %4501, %4527 ]
  %4534 = phi float [ %4668, %4663 ], [ %4502, %4527 ]
  %4535 = phi float [ %4669, %4663 ], [ %4503, %4527 ]
  %4536 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4529)  ; FirstbitLo(value)
  %4537 = add i32 %4536, %4510
  %4538 = and i32 %4536, 31
  %4539 = shl i32 1, %4538
  %4540 = xor i32 %4539, %4529
  %4541 = mul i32 %4537, 112
  %4542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4541, i32 undef)  ; BufferLoad(srv,index,wot)
  %4543 = extractvalue %dx.types.ResRet.f32 %4542, 0
  %4544 = extractvalue %dx.types.ResRet.f32 %4542, 1
  %4545 = extractvalue %dx.types.ResRet.f32 %4542, 2
  %4546 = or i32 %4541, 12
  %4547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4546, i32 undef)  ; BufferLoad(srv,index,wot)
  %4548 = extractvalue %dx.types.ResRet.f32 %4547, 0
  %4549 = add i32 %4541, 16
  %4550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4549, i32 undef)  ; BufferLoad(srv,index,wot)
  %4551 = extractvalue %dx.types.ResRet.f32 %4550, 0
  %4552 = extractvalue %dx.types.ResRet.f32 %4550, 1
  %4553 = extractvalue %dx.types.ResRet.f32 %4550, 2
  %4554 = add i32 %4541, 28
  %4555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4554, i32 undef)  ; BufferLoad(srv,index,wot)
  %4556 = extractvalue %dx.types.ResRet.i32 %4555, 0
  %4557 = add i32 %4541, 44
  %4558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4557, i32 undef)  ; BufferLoad(srv,index,wot)
  %4559 = extractvalue %dx.types.ResRet.f32 %4558, 0
  %4560 = add i32 %4541, 48
  %4561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4560, i32 undef)  ; BufferLoad(srv,index,wot)
  %4562 = extractvalue %dx.types.ResRet.f32 %4561, 0
  %4563 = extractvalue %dx.types.ResRet.f32 %4561, 1
  %4564 = extractvalue %dx.types.ResRet.f32 %4561, 2
  %4565 = extractvalue %dx.types.ResRet.f32 %4561, 3
  %4566 = add i32 %4541, 64
  %4567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4566, i32 undef)  ; BufferLoad(srv,index,wot)
  %4568 = extractvalue %dx.types.ResRet.f32 %4567, 0
  %4569 = extractvalue %dx.types.ResRet.f32 %4567, 1
  %4570 = extractvalue %dx.types.ResRet.f32 %4567, 2
  %4571 = extractvalue %dx.types.ResRet.f32 %4567, 3
  %4572 = add i32 %4541, 80
  %4573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4572, i32 undef)  ; BufferLoad(srv,index,wot)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 1
  %4575 = extractvalue %dx.types.ResRet.f32 %4573, 2
  %4576 = add i32 %4541, 92
  %4577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4576, i32 undef)  ; BufferLoad(srv,index,wot)
  %4578 = extractvalue %dx.types.ResRet.i32 %4577, 0
  %4579 = call float @dx.op.dot3.f32(i32 55, float %4543, float %4544, float %4545, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4580 = select i1 %2322, float %4574, float %4543
  %4581 = select i1 %2322, float %4579, float %4544
  %4582 = select i1 %2322, float %4575, float %4545
  %4583 = and i32 %4578, 65535
  %4584 = uitofp i32 %4583 to float
  %4585 = lshr i32 %4578, 16
  %4586 = uitofp i32 %4585 to float
  %4587 = and i32 %4556, 65535
  %4588 = and i32 %4556, 50331648
  %4589 = icmp slt i32 %4556, 0
  %4590 = icmp eq i32 %4588, 33554432
  %4591 = fsub fast float %4562, %134
  %4592 = fsub fast float %4563, %135
  %4593 = fsub fast float %4564, %136
  %4594 = call float @dx.op.dot3.f32(i32 55, float %4591, float %4592, float %4593, float %4591, float %4592, float %4593)  ; Dot3(ax,ay,az,bx,by,bz)
  %4595 = call float @dx.op.unary.f32(i32 24, float %4594)  ; Sqrt(value)
  %4596 = fdiv fast float 1.000000e+00, %4595
  %4597 = fmul fast float %4596, %4591
  %4598 = fmul fast float %4596, %4592
  %4599 = fmul fast float %4596, %4593
  %4600 = fadd fast float %4595, %4548
  %4601 = fdiv fast float 1.000000e+00, %4600
  %4602 = fmul float %4559, %4601
  %4603 = fmul float %4602, %4602
  %4604 = call float @dx.op.unary.f32(i32 7, float %4603)  ; Saturate(value)
  br i1 %4590, label %4605, label %4626

; <label>:4605                                    ; preds = %4528
  %4606 = fmul fast float %4570, %4551
  %4607 = fmul fast float %4570, %4552
  %4608 = fmul fast float %4570, %4553
  %4609 = fadd fast float %4591, %4606
  %4610 = fadd fast float %4592, %4607
  %4611 = fadd fast float %4593, %4608
  %4612 = call float @dx.op.dot3.f32(i32 55, float %4609, float %4610, float %4611, float %4609, float %4610, float %4611)  ; Dot3(ax,ay,az,bx,by,bz)
  %4613 = call float @dx.op.unary.f32(i32 25, float %4612)  ; Rsqrt(value)
  %4614 = fmul fast float %4613, %4609
  %4615 = fmul fast float %4613, %4610
  %4616 = fmul fast float %4613, %4611
  %4617 = fsub fast float %134, %4562
  %4618 = fsub fast float %135, %4563
  %4619 = fsub fast float %136, %4564
  %4620 = fsub fast float -0.000000e+00, %4617
  %4621 = fsub fast float -0.000000e+00, %4618
  %4622 = fsub fast float -0.000000e+00, %4619
  %4623 = call float @dx.op.dot3.f32(i32 55, float %4620, float %4621, float %4622, float %4551, float %4552, float %4553)  ; Dot3(ax,ay,az,bx,by,bz)
  %4624 = fcmp fast ogt float %4623, 0.000000e+00
  %4625 = uitofp i1 %4624 to float
  br label %4626

; <label>:4626                                    ; preds = %4605, %4528
  %4627 = phi float [ %4625, %4605 ], [ 1.000000e+00, %4528 ]
  %4628 = phi float [ %4614, %4605 ], [ %4597, %4528 ]
  %4629 = phi float [ %4615, %4605 ], [ %4598, %4528 ]
  %4630 = phi float [ %4616, %4605 ], [ %4599, %4528 ]
  %4631 = call float @dx.op.dot3.f32(i32 55, float %4551, float %4552, float %4553, float %4628, float %4629, float %4630)  ; Dot3(ax,ay,az,bx,by,bz)
  %4632 = fmul fast float %4631, %4631
  %4633 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4634 = fsub fast float 1.000000e+00, %4633
  %4635 = fmul fast float %4634, 5.000000e-01
  %4636 = fcmp fast ogt float %4631, 0.000000e+00
  %4637 = fsub fast float 1.000000e+00, %4635
  %4638 = select i1 %4636, float %4635, float %4637
  %4639 = fmul fast float %4638, %4586
  %4640 = fadd fast float %4639, %4584
  %4641 = fmul fast float %4640, 0x3EF0001000000000
  %4642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %51, float %4641, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4643 = extractvalue %dx.types.ResRet.f32 %4642, 0
  %4644 = fmul fast float %4631, %4568
  %4645 = fadd fast float %4644, %4569
  %4646 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4647 = select i1 %4590, float 1.000000e+00, float %4646
  %4648 = select i1 %4590, float %4646, float 1.000000e+00
  %4649 = fmul fast float %4595, %4565
  %4650 = fsub fast float 1.000000e+00, %4649
  %4651 = fmul fast float %4650, %4571
  %4652 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4653 = fmul fast float %4652, %4648
  %4654 = fmul fast float %4653, 2.000000e+00
  %4655 = fsub fast float 3.000000e+00, %4654
  %4656 = fmul fast float %4643, %4627
  %4657 = fmul fast float %4653, %4653
  %4658 = fmul fast float %4657, %4656
  %4659 = fmul fast float %4658, %4655
  %4660 = call float @dx.op.binary.f32(i32 36, float %4659, float %4659)  ; FMin(a,b)
  %4661 = call float @dx.op.binary.f32(i32 36, float %4659, float %4660)  ; FMin(a,b)
  %4662 = fcmp fast ogt float %4661, 0.000000e+00
  br i1 %4662, label %4671, label %4663, !dx.controlflow.hints !142

; <label>:4663                                    ; preds = %5003, %4810, %4626
  %4664 = phi float [ %4530, %4810 ], [ %4530, %4626 ], [ %5026, %5003 ]
  %4665 = phi float [ %4531, %4810 ], [ %4531, %4626 ], [ %5027, %5003 ]
  %4666 = phi float [ %4532, %4810 ], [ %4532, %4626 ], [ %5028, %5003 ]
  %4667 = phi float [ %4533, %4810 ], [ %4533, %4626 ], [ %5020, %5003 ]
  %4668 = phi float [ %4534, %4810 ], [ %4534, %4626 ], [ %5021, %5003 ]
  %4669 = phi float [ %4535, %4810 ], [ %4535, %4626 ], [ %5022, %5003 ]
  %4670 = icmp eq i32 %4529, %4539
  br i1 %4670, label %5029, label %4528

; <label>:4671                                    ; preds = %4626
  %4672 = icmp eq i32 %4587, 255
  br i1 %4672, label %4810, label %4673, !dx.controlflow.hints !143

; <label>:4673                                    ; preds = %4671
  %4674 = mul nuw nsw i32 %4587, 176
  %4675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4674, i32 undef)  ; BufferLoad(srv,index,wot)
  %4676 = extractvalue %dx.types.ResRet.f32 %4675, 0
  %4677 = extractvalue %dx.types.ResRet.f32 %4675, 1
  %4678 = extractvalue %dx.types.ResRet.f32 %4675, 2
  %4679 = extractvalue %dx.types.ResRet.f32 %4675, 3
  %4680 = add nuw nsw i32 %4674, 16
  %4681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4680, i32 undef)  ; BufferLoad(srv,index,wot)
  %4682 = extractvalue %dx.types.ResRet.f32 %4681, 0
  %4683 = extractvalue %dx.types.ResRet.f32 %4681, 1
  %4684 = add nuw nsw i32 %4674, 32
  %4685 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4684, i32 undef)  ; BufferLoad(srv,index,wot)
  %4686 = extractvalue %dx.types.ResRet.f32 %4685, 0
  %4687 = extractvalue %dx.types.ResRet.f32 %4685, 1
  %4688 = add nuw nsw i32 %4674, 48
  %4689 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4688, i32 undef)  ; BufferLoad(srv,index,wot)
  %4690 = extractvalue %dx.types.ResRet.f32 %4689, 0
  %4691 = extractvalue %dx.types.ResRet.f32 %4689, 1
  %4692 = extractvalue %dx.types.ResRet.f32 %4689, 2
  %4693 = extractvalue %dx.types.ResRet.f32 %4689, 3
  %4694 = add nuw nsw i32 %4674, 64
  %4695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4694, i32 undef)  ; BufferLoad(srv,index,wot)
  %4696 = extractvalue %dx.types.ResRet.f32 %4695, 0
  %4697 = extractvalue %dx.types.ResRet.f32 %4695, 1
  %4698 = extractvalue %dx.types.ResRet.f32 %4695, 2
  %4699 = extractvalue %dx.types.ResRet.f32 %4695, 3
  %4700 = add nuw nsw i32 %4674, 80
  %4701 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4700, i32 undef)  ; BufferLoad(srv,index,wot)
  %4702 = extractvalue %dx.types.ResRet.f32 %4701, 0
  %4703 = extractvalue %dx.types.ResRet.f32 %4701, 1
  %4704 = extractvalue %dx.types.ResRet.f32 %4701, 2
  %4705 = extractvalue %dx.types.ResRet.f32 %4701, 3
  %4706 = add nuw nsw i32 %4674, 96
  %4707 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4706, i32 undef)  ; BufferLoad(srv,index,wot)
  %4708 = extractvalue %dx.types.ResRet.f32 %4707, 0
  %4709 = extractvalue %dx.types.ResRet.f32 %4707, 1
  %4710 = extractvalue %dx.types.ResRet.f32 %4707, 2
  %4711 = extractvalue %dx.types.ResRet.f32 %4707, 3
  %4712 = bitcast float %4683 to i32
  %4713 = fmul fast float %4690, %134
  %4714 = call float @dx.op.tertiary.f32(i32 46, float %135, float %4696, float %4713)  ; FMad(a,b,c)
  %4715 = call float @dx.op.tertiary.f32(i32 46, float %136, float %4702, float %4714)  ; FMad(a,b,c)
  %4716 = fadd fast float %4715, %4708
  %4717 = fmul fast float %4691, %134
  %4718 = call float @dx.op.tertiary.f32(i32 46, float %135, float %4697, float %4717)  ; FMad(a,b,c)
  %4719 = call float @dx.op.tertiary.f32(i32 46, float %136, float %4703, float %4718)  ; FMad(a,b,c)
  %4720 = fadd fast float %4719, %4709
  %4721 = fmul fast float %4692, %134
  %4722 = call float @dx.op.tertiary.f32(i32 46, float %135, float %4698, float %4721)  ; FMad(a,b,c)
  %4723 = call float @dx.op.tertiary.f32(i32 46, float %136, float %4704, float %4722)  ; FMad(a,b,c)
  %4724 = fadd fast float %4723, %4710
  %4725 = fmul fast float %4693, %134
  %4726 = call float @dx.op.tertiary.f32(i32 46, float %135, float %4699, float %4725)  ; FMad(a,b,c)
  %4727 = call float @dx.op.tertiary.f32(i32 46, float %136, float %4705, float %4726)  ; FMad(a,b,c)
  %4728 = fadd fast float %4727, %4711
  %4729 = fdiv fast float %4716, %4728
  %4730 = fdiv fast float %4720, %4728
  %4731 = fdiv fast float %4724, %4728
  %4732 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4731)  ; FMax(a,b)
  %4733 = fmul fast float %1675, 0x401921FB60000000
  %4734 = call float @dx.op.unary.f32(i32 13, float %4733)  ; Sin(value)
  %4735 = call float @dx.op.unary.f32(i32 12, float %4733)  ; Cos(value)
  %4736 = fmul fast float %4735, %4687
  %4737 = call float @dx.op.tertiary.f32(i32 46, float %4734, float %4687, float 0.000000e+00)  ; FMad(a,b,c)
  %4738 = fmul fast float %4687, %4734
  %4739 = fsub fast float -0.000000e+00, %4738
  %4740 = call float @dx.op.tertiary.f32(i32 46, float %4735, float %4687, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4741

; <label>:4741                                    ; preds = %4741, %4673
  %4742 = phi float [ 0.000000e+00, %4673 ], [ %4774, %4741 ]
  %4743 = phi float [ 0.000000e+00, %4673 ], [ %4776, %4741 ]
  %4744 = phi i32 [ 0, %4673 ], [ %4777, %4741 ]
  %4745 = mul i32 %4744, 2
  %4746 = add i32 0, %4745
  %4747 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4746
  %4748 = load float, float* %4747, align 4
  %4749 = mul i32 %4744, 2
  %4750 = add i32 1, %4749
  %4751 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4750
  %4752 = load float, float* %4751, align 4
  %4753 = fmul fast float %4736, %4748
  %4754 = call float @dx.op.tertiary.f32(i32 46, float %4752, float %4739, float %4753)  ; FMad(a,b,c)
  %4755 = fmul fast float %4748, %4737
  %4756 = call float @dx.op.tertiary.f32(i32 46, float %4752, float %4740, float %4755)  ; FMad(a,b,c)
  %4757 = fadd fast float %4754, %4729
  %4758 = fadd fast float %4756, %4730
  %4759 = fmul fast float %4757, %4682
  %4760 = fmul fast float %4758, %4682
  %4761 = call float @dx.op.binary.f32(i32 35, float %4759, float %4678)  ; FMax(a,b)
  %4762 = call float @dx.op.binary.f32(i32 35, float %4760, float %4678)  ; FMax(a,b)
  %4763 = call float @dx.op.binary.f32(i32 36, float %4761, float %4679)  ; FMin(a,b)
  %4764 = call float @dx.op.binary.f32(i32 36, float %4762, float %4679)  ; FMin(a,b)
  %4765 = fadd fast float %4763, %4676
  %4766 = fadd fast float %4764, %4677
  %4767 = uitofp i32 %4712 to float
  %4768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %52, float %4765, float %4766, float %4767, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4769 = extractvalue %dx.types.ResRet.f32 %4768, 0
  %4770 = fsub fast float %4769, %4732
  %4771 = fsub fast float %4770, %4686
  %4772 = fcmp fast ogt float %4771, 0.000000e+00
  %4773 = select i1 %4772, float 1.000000e+00, float 0.000000e+00
  %4774 = fadd fast float %4773, %4742
  %4775 = select i1 %4772, float %4771, float 0.000000e+00
  %4776 = fadd fast float %4775, %4743
  %4777 = add nuw nsw i32 %4744, 1
  %4778 = icmp eq i32 %4777, 8
  br i1 %4778, label %4779, label %4741

; <label>:4779                                    ; preds = %4741
  %4780 = fdiv fast float 1.000000e+00, %4774
  %4781 = fmul fast float %4780, %4776
  %4782 = fdiv fast float 1.000000e+00, %4732
  %4783 = fmul fast float %4781, %4782
  %4784 = call float @dx.op.unary.f32(i32 7, float %4783)  ; Saturate(value)
  %4785 = call float @dx.op.binary.f32(i32 35, float %4784, float 0.000000e+00)  ; FMax(a,b)
  %4786 = fmul fast float %4774, 1.250000e-01
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
  %4806 = fsub fast float -5.000000e-01, %4805
  %4807 = fmul fast float %4806, %4647
  %4808 = fadd fast float %4807, 1.000000e+00
  %4809 = fmul fast float %4808, %4659
  br label %4810

; <label>:4810                                    ; preds = %4779, %4671
  %4811 = phi float [ %4809, %4779 ], [ %4659, %4671 ]
  %4812 = call float @dx.op.binary.f32(i32 36, float %4811, float %4811)  ; FMin(a,b)
  %4813 = call float @dx.op.binary.f32(i32 36, float %4811, float %4812)  ; FMin(a,b)
  %4814 = fcmp fast ogt float %4813, 0.000000e+00
  br i1 %4814, label %4815, label %4663, !dx.controlflow.hints !144

; <label>:4815                                    ; preds = %4810
  %4816 = fmul fast float %4811, %4580
  %4817 = fmul fast float %4811, %4581
  %4818 = fmul fast float %4811, %4582
  %4819 = fsub fast float %4597, %2215
  %4820 = fsub fast float %4598, %2216
  %4821 = fsub fast float %4599, %2217
  %4822 = call float @dx.op.dot3.f32(i32 55, float %4819, float %4820, float %4821, float %4819, float %4820, float %4821)  ; Dot3(ax,ay,az,bx,by,bz)
  %4823 = call float @dx.op.unary.f32(i32 25, float %4822)  ; Rsqrt(value)
  %4824 = fmul fast float %4823, %4819
  %4825 = fmul fast float %4823, %4820
  %4826 = fmul fast float %4823, %4821
  %4827 = call float @dx.op.dot3.f32(i32 55, float %4597, float %4598, float %4599, float %2187, float %2188, float %2189)  ; Dot3(ax,ay,az,bx,by,bz)
  %4828 = call float @dx.op.dot3.f32(i32 55, float %2324, float %2325, float %2326, float %4824, float %4825, float %4826)  ; Dot3(ax,ay,az,bx,by,bz)
  %4829 = call float @dx.op.unary.f32(i32 7, float %4827)  ; Saturate(value)
  %4830 = fmul fast float %4829, %4604
  %4831 = fmul fast float %4829, %4829
  %4832 = fmul fast float %4831, %2341
  %4833 = call float @dx.op.unary.f32(i32 7, float %4832)  ; Saturate(value)
  %4834 = fmul fast float %4830, %4833
  %4835 = bitcast float %4594 to i32
  %4836 = ashr i32 %4835, 1
  %4837 = sub nsw i32 1597463007, %4836
  %4838 = bitcast i32 %4837 to float
  %4839 = fmul fast float %4838, %4591
  %4840 = fmul fast float %4838, %4592
  %4841 = fmul fast float %4838, %4593
  %4842 = fsub fast float %4839, %2215
  %4843 = fsub fast float %4840, %2216
  %4844 = fsub fast float %4841, %2217
  %4845 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4843, float %4844, float %4842, float %4843, float %4844)  ; Dot3(ax,ay,az,bx,by,bz)
  %4846 = call float @dx.op.unary.f32(i32 25, float %4845)  ; Rsqrt(value)
  %4847 = fmul fast float %4842, %4846
  %4848 = fmul fast float %4843, %4846
  %4849 = fmul fast float %4844, %4846
  %4850 = call float @dx.op.dot3.f32(i32 55, float %2187, float %2188, float %2189, float %4847, float %4848, float %4849)  ; Dot3(ax,ay,az,bx,by,bz)
  %4851 = fmul fast float %4850, %4850
  %4852 = call float @dx.op.unary.f32(i32 6, float %4827)  ; FAbs(value)
  %4853 = fsub fast float 1.000000e+00, %2270
  %4854 = call float @dx.op.binary.f32(i32 35, float %4853, float 0x3F847AE140000000)  ; FMax(a,b)
  %4855 = fmul fast float %4854, %4854
  %4856 = fmul fast float %4855, %4855
  %4857 = fsub fast float 1.000000e+00, %4856
  %4858 = fmul fast float %2329, %2329
  %4859 = fmul fast float %4858, %4857
  %4860 = fadd fast float %4859, %4856
  %4861 = bitcast float %4860 to i32
  %4862 = ashr i32 %4861, 1
  %4863 = add nsw i32 %4862, 532487669
  %4864 = bitcast i32 %4863 to float
  %4865 = fadd fast float %4864, %2329
  %4866 = fmul fast float %4856, %4851
  %4867 = fsub fast float 1.000000e+00, %4851
  %4868 = fadd fast float %4867, %4866
  %4869 = fmul fast float %4852, %4852
  %4870 = fmul fast float %4869, %4857
  %4871 = fadd fast float %4870, %4856
  %4872 = bitcast float %4871 to i32
  %4873 = ashr i32 %4872, 1
  %4874 = add nsw i32 %4873, 532487669
  %4875 = bitcast i32 %4874 to float
  %4876 = fadd fast float %4875, %4852
  %4877 = fmul fast float %4868, %4868
  %4878 = fmul fast float %4877, %4865
  %4879 = fmul fast float %4878, %4876
  %4880 = fdiv fast float 1.000000e+00, %4879
  %4881 = bitcast float %4856 to i32
  %4882 = sitofp i32 %4881 to float
  %4883 = fmul fast float %4882, 0x3FE7F73180000000
  %4884 = fadd fast float %4883, 0x41AFE27C40000000
  %4885 = fptosi float %4884 to i32
  %4886 = bitcast i32 %4885 to float
  %4887 = fmul fast float %4559, 0x3FD80E9D60000000
  %4888 = fmul fast float %4887, %4838
  %4889 = fadd fast float %4886, %4888
  %4890 = bitcast float %4889 to i32
  %4891 = sub nsw i32 2129859010, %4890
  %4892 = bitcast i32 %4891 to float
  %4893 = fmul fast float %4856, %4880
  %4894 = fmul fast float %4893, %4886
  %4895 = fmul fast float %4894, %4892
  %4896 = call float @dx.op.unary.f32(i32 6, float %4828)  ; FAbs(value)
  %4897 = fsub fast float 1.000000e+00, %4896
  %4898 = bitcast float %4897 to i32
  %4899 = sitofp i32 %4898 to float
  %4900 = fmul fast float %4899, 5.000000e+00
  %4901 = fadd fast float %4900, 0xC1EFBF8940000000
  %4902 = fptosi float %4901 to i32
  %4903 = bitcast i32 %4902 to float
  %4904 = fmul fast float %4903, %3154
  %4905 = fmul fast float %4903, %3155
  %4906 = fmul fast float %4903, %3156
  %4907 = fadd fast float %4904, %2208
  %4908 = fadd fast float %4905, %2209
  %4909 = fadd fast float %4906, %2327
  %4910 = fmul fast float %4827, 9.843750e-01
  %4911 = fmul fast float %2270, 9.843750e-01
  %4912 = fadd fast float %4910, 7.812500e-03
  %4913 = fadd fast float %4911, 7.812500e-03
  %4914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %4912, float %4913, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4915 = extractvalue %dx.types.ResRet.f32 %4914, 2
  %4916 = extractvalue %dx.types.ResRet.f32 %4914, 3
  %4917 = fmul fast float %4915, %2208
  %4918 = fmul fast float %4915, %2209
  %4919 = fmul fast float %4915, %2327
  %4920 = fadd fast float %4917, %4916
  %4921 = fadd fast float %4918, %4916
  %4922 = fadd fast float %4919, %4916
  %4923 = call float @dx.op.binary.f32(i32 35, float %4921, float %4922)  ; FMax(a,b)
  %4924 = call float @dx.op.binary.f32(i32 35, float %4920, float %4923)  ; FMax(a,b)
  %4925 = fsub fast float 1.000000e+00, %4924
  %4926 = fsub fast float -0.000000e+00, %2187
  %4927 = fsub fast float -0.000000e+00, %2188
  %4928 = fsub fast float -0.000000e+00, %2189
  %4929 = call float @dx.op.dot3.f32(i32 55, float %4597, float %4598, float %4599, float %4926, float %4927, float %4928)  ; Dot3(ax,ay,az,bx,by,bz)
  %4930 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4931 = fmul fast float %4930, 9.843750e-01
  %4932 = fadd fast float %4931, 7.812500e-03
  %4933 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %4932, float %4913, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4934 = extractvalue %dx.types.ResRet.f32 %4933, 2
  %4935 = extractvalue %dx.types.ResRet.f32 %4933, 3
  %4936 = fmul fast float %2209, 0x4012D0A400000000
  %4937 = fadd fast float %4936, 0x3FDB6377A0000000
  %4938 = fmul fast float %4853, %4937
  %4939 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4940 = fsub fast float %4839, %2334
  %4941 = fsub fast float %4840, %2335
  %4942 = fsub fast float %4841, %2336
  %4943 = call float @dx.op.dot3.f32(i32 55, float %4940, float %4941, float %4942, float %4940, float %4941, float %4942)  ; Dot3(ax,ay,az,bx,by,bz)
  %4944 = call float @dx.op.unary.f32(i32 25, float %4943)  ; Rsqrt(value)
  %4945 = fmul fast float %4940, %4944
  %4946 = fmul fast float %4941, %4944
  %4947 = fmul fast float %4942, %4944
  %4948 = call float @dx.op.dot3.f32(i32 55, float %4926, float %4927, float %4928, float %4945, float %4946, float %4947)  ; Dot3(ax,ay,az,bx,by,bz)
  %4949 = fmul fast float %4948, %4948
  %4950 = call float @dx.op.unary.f32(i32 6, float %4930)  ; FAbs(value)
  %4951 = call float @dx.op.binary.f32(i32 35, float %4939, float 0x3F847AE140000000)  ; FMax(a,b)
  %4952 = fmul fast float %4951, %4951
  %4953 = fmul fast float %4952, %4952
  %4954 = fsub fast float 1.000000e+00, %4953
  %4955 = fmul fast float %4953, %4949
  %4956 = fsub fast float 1.000000e+00, %4949
  %4957 = fadd fast float %4956, %4955
  %4958 = bitcast float %4953 to i32
  %4959 = sitofp i32 %4958 to float
  %4960 = fmul fast float %4959, 0x3FE7F73180000000
  %4961 = fadd fast float %4960, 0x41AFE27C40000000
  %4962 = fptosi float %4961 to i32
  %4963 = bitcast i32 %4962 to float
  br i1 %4589, label %4964, label %5003

; <label>:4964                                    ; preds = %4815
  %4965 = fmul fast float %4957, %4957
  %4966 = fmul fast float %4858, %4954
  %4967 = fadd fast float %4966, %4953
  %4968 = bitcast float %4967 to i32
  %4969 = ashr i32 %4968, 1
  %4970 = add nsw i32 %4969, 532487669
  %4971 = bitcast i32 %4970 to float
  %4972 = fadd fast float %4971, %2329
  %4973 = fmul fast float %4965, %4972
  %4974 = fmul fast float %4950, %4950
  %4975 = fmul fast float %4974, %4954
  %4976 = fadd fast float %4975, %4953
  %4977 = bitcast float %4976 to i32
  %4978 = ashr i32 %4977, 1
  %4979 = add nsw i32 %4978, 532487669
  %4980 = bitcast i32 %4979 to float
  %4981 = fadd fast float %4980, %4950
  %4982 = fmul fast float %4973, %4981
  %4983 = fdiv fast float 1.000000e+00, %4982
  %4984 = fmul fast float %4953, %4983
  %4985 = fmul fast float %4984, %4963
  %4986 = fadd fast float %4963, %4888
  %4987 = bitcast float %4986 to i32
  %4988 = sub nsw i32 2129859010, %4987
  %4989 = bitcast i32 %4988 to float
  %4990 = fmul fast float %4985, %4989
  %4991 = fmul fast float %4934, %2208
  %4992 = fadd fast float %4991, %4935
  %4993 = fmul fast float %4934, %2209
  %4994 = fadd fast float %4993, %4935
  %4995 = fmul fast float %4934, %2327
  %4996 = fadd fast float %4995, %4935
  %4997 = call float @dx.op.binary.f32(i32 35, float %4994, float %4996)  ; FMax(a,b)
  %4998 = call float @dx.op.binary.f32(i32 35, float %4992, float %4997)  ; FMax(a,b)
  %4999 = fsub fast float 1.000000e+00, %4998
  %5000 = fmul fast float %4930, %4604
  %5001 = fmul fast float %5000, %4999
  %5002 = fmul fast float %5001, %4990
  br label %5003

; <label>:5003                                    ; preds = %4964, %4815
  %5004 = phi float [ %5002, %4964 ], [ 0.000000e+00, %4815 ]
  %5005 = fmul fast float %4907, %4834
  %5006 = fmul fast float %5005, %4895
  %5007 = fmul fast float %4908, %4834
  %5008 = fmul fast float %5007, %4895
  %5009 = fmul fast float %4909, %4834
  %5010 = fmul fast float %5009, %4895
  %5011 = fadd fast float %5004, %5006
  %5012 = fadd fast float %5004, %5008
  %5013 = fadd fast float %5004, %5010
  %5014 = fmul fast float %4834, %4816
  %5015 = fmul fast float %5014, %4925
  %5016 = fmul fast float %4834, %4817
  %5017 = fmul fast float %5016, %4925
  %5018 = fmul fast float %4834, %4818
  %5019 = fmul fast float %5018, %4925
  %5020 = fadd fast float %5015, %4533
  %5021 = fadd fast float %5017, %4534
  %5022 = fadd fast float %5019, %4535
  %5023 = fmul fast float %5011, %4816
  %5024 = fmul fast float %5012, %4817
  %5025 = fmul fast float %5013, %4818
  %5026 = fadd fast float %5023, %4530
  %5027 = fadd fast float %5024, %4531
  %5028 = fadd fast float %5025, %4532
  br label %4663

; <label>:5029                                    ; preds = %4663
  br label %5030

; <label>:5030                                    ; preds = %5029, %4496
  %5031 = phi float [ %4498, %4496 ], [ %4664, %5029 ]
  %5032 = phi float [ %4499, %4496 ], [ %4665, %5029 ]
  %5033 = phi float [ %4500, %4496 ], [ %4666, %5029 ]
  %5034 = phi float [ %4501, %4496 ], [ %4667, %5029 ]
  %5035 = phi float [ %4502, %4496 ], [ %4668, %5029 ]
  %5036 = phi float [ %4503, %4496 ], [ %4669, %5029 ]
  %5037 = add i32 %4497, 1
  %5038 = icmp ugt i32 %5037, %4493
  br i1 %5038, label %5039, label %4496

; <label>:5039                                    ; preds = %5030
  br label %5040

; <label>:5040                                    ; preds = %5039, %4446, %4435
  %5041 = phi float [ %4437, %4435 ], [ %4437, %4446 ], [ %5031, %5039 ]
  %5042 = phi float [ %4438, %4435 ], [ %4438, %4446 ], [ %5032, %5039 ]
  %5043 = phi float [ %4439, %4435 ], [ %4439, %4446 ], [ %5033, %5039 ]
  %5044 = phi float [ %4440, %4435 ], [ %4440, %4446 ], [ %5034, %5039 ]
  %5045 = phi float [ %4441, %4435 ], [ %4441, %4446 ], [ %5035, %5039 ]
  %5046 = phi float [ %4442, %4435 ], [ %4442, %4446 ], [ %5036, %5039 ]
  %5047 = and i32 %2266, 255
  %5048 = uitofp i32 %5047 to float
  %5049 = fmul fast float %5048, 0x3F70101020000000
  %5050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5051 = extractvalue %dx.types.CBufRet.f32 %5050, 2
  %5052 = extractvalue %dx.types.CBufRet.f32 %5050, 3
  %5053 = fmul fast float %104, %5051
  %5054 = fmul fast float %106, %5052
  %5055 = fsub fast float 1.000000e+00, %5053
  %5056 = fsub fast float 1.000000e+00, %5054
  %5057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5058 = extractvalue %dx.types.CBufRet.f32 %5057, 0
  %5059 = extractvalue %dx.types.CBufRet.f32 %5057, 1
  %5060 = extractvalue %dx.types.CBufRet.f32 %5057, 2
  %5061 = fmul fast float %5055, %5058
  %5062 = fmul fast float %5055, %5059
  %5063 = fmul fast float %5055, %5060
  %5064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.f32 %5064, 0
  %5066 = extractvalue %dx.types.CBufRet.f32 %5064, 1
  %5067 = extractvalue %dx.types.CBufRet.f32 %5064, 2
  %5068 = fmul fast float %5056, %5065
  %5069 = fmul fast float %5056, %5066
  %5070 = fmul fast float %5056, %5067
  %5071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5072 = extractvalue %dx.types.CBufRet.f32 %5071, 0
  %5073 = extractvalue %dx.types.CBufRet.f32 %5071, 1
  %5074 = extractvalue %dx.types.CBufRet.f32 %5071, 2
  %5075 = fadd fast float %5068, %5072
  %5076 = fadd fast float %5075, %5061
  %5077 = fadd fast float %5069, %5073
  %5078 = fadd fast float %5077, %5062
  %5079 = fadd fast float %5070, %5074
  %5080 = fadd fast float %5079, %5063
  %5081 = fmul fast float %5076, %71
  %5082 = fmul fast float %5078, %71
  %5083 = fmul fast float %5080, %71
  %5084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.f32 %5084, 2
  %5086 = extractvalue %dx.types.CBufRet.f32 %5084, 3
  %5087 = fmul fast float %5085, %79
  %5088 = fmul fast float %5086, %80
  %5089 = fptoui float %79 to i32
  %5090 = fptoui float %80 to i32
  %5091 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5089, i32 %5090, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5092 = extractvalue %dx.types.ResRet.f32 %5091, 0
  %5093 = fcmp fast olt float %5092, -1.000000e+00
  %5094 = fcmp fast ogt float %5092, -1.000000e+00
  %5095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5096 = extractvalue %dx.types.CBufRet.f32 %5095, 1
  %5097 = select i1 %5094, float %5096, float 1.000000e+00
  %5098 = fadd fast float %5092, 1.000000e+00
  %5099 = fmul fast float %5097, %5098
  %5100 = call float @dx.op.unary.f32(i32 6, float %5099)  ; FAbs(value)
  %5101 = fsub fast float %5100, %71
  %5102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %5103 = extractvalue %dx.types.CBufRet.f32 %5102, 2
  %5104 = fsub fast float %5101, %5103
  %5105 = extractvalue %dx.types.CBufRet.f32 %5102, 3
  %5106 = fmul fast float %5105, %5049
  %5107 = fmul fast float %5106, %5104
  %5108 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 356)  ; CBufferLoadLegacy(handle,regIndex)
  %5110 = extractvalue %dx.types.CBufRet.f32 %5109, 1
  %5111 = extractvalue %dx.types.CBufRet.f32 %5109, 0
  %5112 = extractvalue %dx.types.CBufRet.f32 %5109, 3
  %5113 = extractvalue %dx.types.CBufRet.f32 %5109, 2
  %5114 = select i1 %5093, float %5110, float %5112
  %5115 = select i1 %5093, float %5111, float %5113
  %5116 = fsub fast float %5101, %5115
  %5117 = fmul fast float %5116, %5114
  %5118 = fsub fast float 1.000000e+00, %5049
  %5119 = fadd fast float %5118, %5117
  %5120 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %5122 = extractvalue %dx.types.CBufRet.f32 %5121, 1
  %5123 = extractvalue %dx.types.CBufRet.f32 %5121, 2
  %5124 = fsub fast float 1.000000e+00, %5088
  %5125 = fsub fast float 1.000000e+00, %5087
  %5126 = fmul fast float %5088, %5087
  %5127 = fmul fast float %5126, %5124
  %5128 = fmul fast float %5127, %5125
  %5129 = fmul fast float %5128, %5122
  %5130 = call float @dx.op.unary.f32(i32 23, float %5129)  ; Log(value)
  %5131 = fmul fast float %5130, %5123
  %5132 = call float @dx.op.unary.f32(i32 21, float %5131)  ; Exp(value)
  %5133 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 66)  ; CBufferLoadLegacy(handle,regIndex)
  %5135 = extractvalue %dx.types.CBufRet.f32 %5134, 2
  %5136 = extractvalue %dx.types.CBufRet.f32 %5134, 3
  %5137 = extractvalue %dx.types.CBufRet.f32 %5134, 0
  %5138 = fsub fast float %71, %5137
  %5139 = extractvalue %dx.types.CBufRet.f32 %5121, 0
  %5140 = fmul fast float %5138, %5139
  %5141 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5142 = fsub fast float %5136, %5135
  %5143 = fmul fast float %5141, %5142
  %5144 = fadd fast float %5143, %5135
  %5145 = fmul fast float %5144, %5108
  %5146 = fmul fast float %5145, %2187
  %5147 = fmul fast float %5145, %2188
  %5148 = fadd fast float %5146, %5081
  %5149 = fadd fast float %5147, %5082
  %5150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5151 = extractvalue %dx.types.CBufRet.f32 %5150, 0
  %5152 = extractvalue %dx.types.CBufRet.f32 %5150, 1
  %5153 = extractvalue %dx.types.CBufRet.f32 %5150, 2
  %5154 = extractvalue %dx.types.CBufRet.f32 %5150, 3
  %5155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5156 = extractvalue %dx.types.CBufRet.f32 %5155, 0
  %5157 = extractvalue %dx.types.CBufRet.f32 %5155, 1
  %5158 = extractvalue %dx.types.CBufRet.f32 %5155, 2
  %5159 = extractvalue %dx.types.CBufRet.f32 %5155, 3
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5162 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5163 = extractvalue %dx.types.CBufRet.f32 %5160, 2
  %5164 = extractvalue %dx.types.CBufRet.f32 %5160, 3
  %5165 = fmul fast float %5148, %5151
  %5166 = call float @dx.op.tertiary.f32(i32 46, float %5149, float %5152, float %5165)  ; FMad(a,b,c)
  %5167 = call float @dx.op.tertiary.f32(i32 46, float %5083, float %5153, float %5166)  ; FMad(a,b,c)
  %5168 = fadd fast float %5167, %5154
  %5169 = fmul fast float %5148, %5156
  %5170 = call float @dx.op.tertiary.f32(i32 46, float %5149, float %5157, float %5169)  ; FMad(a,b,c)
  %5171 = call float @dx.op.tertiary.f32(i32 46, float %5083, float %5158, float %5170)  ; FMad(a,b,c)
  %5172 = fadd fast float %5171, %5159
  %5173 = fmul fast float %5148, %5161
  %5174 = call float @dx.op.tertiary.f32(i32 46, float %5149, float %5162, float %5173)  ; FMad(a,b,c)
  %5175 = call float @dx.op.tertiary.f32(i32 46, float %5083, float %5163, float %5174)  ; FMad(a,b,c)
  %5176 = fadd fast float %5175, %5164
  %5177 = fdiv fast float %5168, %5176
  %5178 = fdiv fast float %5172, %5176
  %5179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5180 = extractvalue %dx.types.CBufRet.f32 %5179, 0
  %5181 = extractvalue %dx.types.CBufRet.f32 %5179, 1
  %5182 = fmul fast float %5180, %5177
  %5183 = fmul fast float %5181, %5178
  %5184 = extractvalue %dx.types.CBufRet.f32 %5179, 2
  %5185 = extractvalue %dx.types.CBufRet.f32 %5179, 3
  %5186 = fadd fast float %5182, %5184
  %5187 = fadd fast float %5183, %5185
  %5188 = call float @dx.op.unary.f32(i32 7, float %5186)  ; Saturate(value)
  %5189 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5190 = fsub fast float %5188, %5087
  %5191 = fsub fast float %5189, %5088
  %5192 = fmul fast float %5190, %5133
  %5193 = fmul fast float %5191, %5133
  %5194 = fadd fast float %5192, %5087
  %5195 = fadd fast float %5193, %5088
  %5196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %52, float %5194, float %5195, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5197 = extractvalue %dx.types.ResRet.f32 %5196, 0
  %5198 = fcmp fast ogt float %5197, -1.000000e+00
  %5199 = select i1 %5198, float %5096, float 1.000000e+00
  %5200 = fadd fast float %5197, 1.000000e+00
  %5201 = fmul fast float %5199, %5200
  %5202 = call float @dx.op.unary.f32(i32 6, float %5201)  ; FAbs(value)
  %5203 = fcmp fast ugt float %5202, %5176
  br i1 %5203, label %5205, label %5204

; <label>:5204                                    ; preds = %5040
  br label %5205

; <label>:5205                                    ; preds = %5204, %5040
  %5206 = phi float [ %5087, %5204 ], [ %5194, %5040 ]
  %5207 = phi float [ %5088, %5204 ], [ %5195, %5040 ]
  %5208 = phi float [ %71, %5204 ], [ %5176, %5040 ]
  %5209 = phi float [ %5100, %5204 ], [ %5202, %5040 ]
  br i1 %96, label %5210, label %5720

; <label>:5210                                    ; preds = %5205
  %5211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %5212 = extractvalue %dx.types.CBufRet.f32 %5211, 0
  %5213 = extractvalue %dx.types.CBufRet.f32 %5211, 1
  %5214 = extractvalue %dx.types.CBufRet.f32 %5211, 2
  %5215 = fcmp fast oge float %5213, %5208
  %5216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5217 = extractvalue %dx.types.CBufRet.i32 %5216, 0
  %5218 = and i32 %5217, 65536
  %5219 = icmp ne i32 %5218, 0
  %5220 = and i1 %5215, %5219
  br i1 %5220, label %5221, label %5302

; <label>:5221                                    ; preds = %5210
  %5222 = extractvalue %dx.types.CBufRet.f32 %5050, 0
  %5223 = extractvalue %dx.types.CBufRet.f32 %5050, 1
  %5224 = fmul fast float %5222, %5206
  %5225 = fmul fast float %5223, %5207
  %5226 = fmul fast float %5224, %5051
  %5227 = fmul fast float %5225, %5052
  %5228 = call float @dx.op.unary.f32(i32 7, float %5226)  ; Saturate(value)
  %5229 = call float @dx.op.unary.f32(i32 7, float %5227)  ; Saturate(value)
  %5230 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %51, float %5228, float %5229, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5231 = extractvalue %dx.types.ResRet.f32 %5230, 0
  %5232 = extractvalue %dx.types.ResRet.f32 %5230, 1
  %5233 = extractvalue %dx.types.ResRet.f32 %5230, 2
  %5234 = extractvalue %dx.types.ResRet.f32 %5230, 3
  %5235 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %51, float %5228, float %5229, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5236 = extractvalue %dx.types.ResRet.f32 %5235, 0
  %5237 = extractvalue %dx.types.ResRet.f32 %5235, 1
  %5238 = extractvalue %dx.types.ResRet.f32 %5235, 2
  %5239 = extractvalue %dx.types.ResRet.f32 %5235, 3
  %5240 = call float @dx.op.binary.f32(i32 35, float %5232, float %5233)  ; FMax(a,b)
  %5241 = call float @dx.op.binary.f32(i32 35, float %5231, float %5240)  ; FMax(a,b)
  %5242 = call float @dx.op.binary.f32(i32 35, float %5241, float %5234)  ; FMax(a,b)
  %5243 = call float @dx.op.binary.f32(i32 36, float %5237, float %5238)  ; FMin(a,b)
  %5244 = call float @dx.op.binary.f32(i32 36, float %5236, float %5243)  ; FMin(a,b)
  %5245 = call float @dx.op.binary.f32(i32 36, float %5244, float %5239)  ; FMin(a,b)
  %5246 = fmul fast float %5242, 2.550000e+02
  %5247 = fadd fast float %5246, 0x3F70101020000000
  %5248 = fptoui float %5247 to i32
  %5249 = fmul fast float %5245, 2.550000e+02
  %5250 = fadd fast float %5249, 0x3F70101020000000
  %5251 = fptoui float %5250 to i32
  %5252 = icmp ult i32 %5248, %5251
  br i1 %5252, label %5253, label %5302

; <label>:5253                                    ; preds = %5221
  %5254 = fadd fast float %5209, -4.000000e+00
  %5255 = call float @dx.op.binary.f32(i32 35, float %5254, float 0.000000e+00)  ; FMax(a,b)
  %5256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.f32 %5256, 0
  %5258 = fadd fast float %5257, %5255
  %5259 = extractvalue %dx.types.CBufRet.f32 %5256, 2
  %5260 = fmul fast float %5258, %5259
  %5261 = call float @dx.op.unary.f32(i32 23, float %5260)  ; Log(value)
  %5262 = extractvalue %dx.types.CBufRet.f32 %5256, 3
  %5263 = fmul fast float %5262, %5261
  %5264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5265 = extractvalue %dx.types.CBufRet.f32 %5264, 2
  %5266 = fmul fast float %5263, %5265
  %5267 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5268 = uitofp i32 %5248 to float
  %5269 = uitofp i32 %5251 to float
  %5270 = fadd fast float %5268, 5.000000e-01
  %5271 = fadd fast float %5269, 5.000000e-01
  %5272 = fmul fast float %5265, %5270
  %5273 = fmul fast float %5265, %5271
  %5274 = fadd fast float %5272, 0x3F0FFB4800000000
  %5275 = fadd fast float %5273, 0xBF0FFB4800000000
  %5276 = call float @dx.op.binary.f32(i32 35, float %5267, float %5274)  ; FMax(a,b)
  %5277 = call float @dx.op.binary.f32(i32 36, float %5276, float %5275)  ; FMin(a,b)
  %5278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5279 = extractvalue %dx.types.CBufRet.f32 %5278, 1
  %5280 = extractvalue %dx.types.CBufRet.f32 %5278, 2
  %5281 = extractvalue %dx.types.CBufRet.f32 %5278, 0
  %5282 = fmul fast float %5279, %5277
  %5283 = fadd fast float %5281, %5282
  %5284 = fadd fast float %5281, %5280
  %5285 = fsub fast float %5279, %5280
  %5286 = fadd fast float %5285, %5281
  %5287 = call float @dx.op.binary.f32(i32 35, float %5283, float %5284)  ; FMax(a,b)
  %5288 = call float @dx.op.binary.f32(i32 36, float %5287, float %5286)  ; FMin(a,b)
  %5289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %5228, float %5229, float %5288, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5290 = extractvalue %dx.types.ResRet.f32 %5289, 0
  %5291 = extractvalue %dx.types.ResRet.f32 %5289, 1
  %5292 = extractvalue %dx.types.ResRet.f32 %5289, 2
  %5293 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %49, float %5228, float %5229, float %5288, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5294 = extractvalue %dx.types.ResRet.f32 %5293, 0
  %5295 = extractvalue %dx.types.ResRet.f32 %5293, 1
  %5296 = extractvalue %dx.types.ResRet.f32 %5293, 2
  %5297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5298 = extractvalue %dx.types.CBufRet.f32 %5297, 1
  %5299 = fmul fast float %5298, %5294
  %5300 = fmul fast float %5298, %5295
  %5301 = fmul fast float %5298, %5296
  br label %5302

; <label>:5302                                    ; preds = %5253, %5221, %5210
  %5303 = phi float [ 0.000000e+00, %5210 ], [ %5299, %5253 ], [ 0.000000e+00, %5221 ]
  %5304 = phi float [ 0.000000e+00, %5210 ], [ %5300, %5253 ], [ 0.000000e+00, %5221 ]
  %5305 = phi float [ 0.000000e+00, %5210 ], [ %5301, %5253 ], [ 0.000000e+00, %5221 ]
  %5306 = phi float [ 1.000000e+00, %5210 ], [ %5290, %5253 ], [ 1.000000e+00, %5221 ]
  %5307 = phi float [ 1.000000e+00, %5210 ], [ %5291, %5253 ], [ 1.000000e+00, %5221 ]
  %5308 = phi float [ 1.000000e+00, %5210 ], [ %5292, %5253 ], [ 1.000000e+00, %5221 ]
  %5309 = fcmp fast olt float %5049, 1.000000e+00
  %5310 = fcmp fast olt float %5212, %5209
  %5311 = or i1 %5309, %5310
  br i1 %5311, label %5312, label %5476

; <label>:5312                                    ; preds = %5302
  %5313 = lshr i32 %2283, 16
  %5314 = uitofp i32 %5313 to float
  %5315 = fmul fast float %5314, 0x3EF0001000000000
  %5316 = and i32 %2276, 65535
  %5317 = uitofp i32 %5316 to float
  %5318 = fmul fast float %5317, 0x3EF0001000000000
  %5319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5320 = extractvalue %dx.types.CBufRet.f32 %5319, 3
  %5321 = fadd fast float %5320, 3.000000e+00
  %5322 = and i32 %1529, 16383
  %5323 = lshr i32 %1529, 16
  %5324 = and i32 %5323, 255
  %5325 = mul nuw nsw i32 %5322, 148
  %5326 = add nuw nsw i32 %5325, 60
  %5327 = add nuw nsw i32 %5325, 116
  %5328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5329 = extractvalue %dx.types.CBufRet.i32 %5328, 0
  %5330 = call i32 @dx.op.binary.i32(i32 40, i32 %5322, i32 %5329)  ; UMin(a,b)
  %5331 = mul i32 %5330, 36
  %5332 = add i32 %5331, 4
  %5333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5334 = extractvalue %dx.types.CBufRet.f32 %5333, 0
  %5335 = fmul fast float %5318, %5334
  %5336 = fmul fast float %5315, %5334
  %5337 = extractvalue %dx.types.CBufRet.f32 %5333, 1
  %5338 = fadd fast float %5335, %5337
  %5339 = fadd fast float %5336, %5337
  %5340 = icmp eq i32 %5324, 0
  br i1 %5340, label %5401, label %5341

; <label>:5341                                    ; preds = %5312
  br label %5342

; <label>:5342                                    ; preds = %5342, %5341
  %5343 = phi float [ %5386, %5342 ], [ 0.000000e+00, %5341 ]
  %5344 = phi float [ %5396, %5342 ], [ 0.000000e+00, %5341 ]
  %5345 = phi float [ %5397, %5342 ], [ 0.000000e+00, %5341 ]
  %5346 = phi float [ %5398, %5342 ], [ 0.000000e+00, %5341 ]
  %5347 = phi float [ %5390, %5342 ], [ 0.000000e+00, %5341 ]
  %5348 = phi float [ %5391, %5342 ], [ 0.000000e+00, %5341 ]
  %5349 = phi float [ %5392, %5342 ], [ 0.000000e+00, %5341 ]
  %5350 = phi i32 [ %5355, %5342 ], [ %5324, %5341 ]
  %5351 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5350)  ; FirstbitLo(value)
  %5352 = and i32 %5351, 31
  %5353 = shl i32 1, %5352
  %5354 = xor i32 %5353, -1
  %5355 = and i32 %5350, %5354
  %5356 = shl i32 %5351, 2
  %5357 = add i32 %5332, %5356
  %5358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %5357, i32 undef)  ; BufferLoad(srv,index,wot)
  %5359 = extractvalue %dx.types.ResRet.i32 %5358, 0
  %5360 = and i32 %5359, 32767
  %5361 = add i32 %5326, %5356
  %5362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5361, i32 undef)  ; BufferLoad(srv,index,wot)
  %5363 = extractvalue %dx.types.ResRet.f32 %5362, 0
  %5364 = add i32 %5327, %5356
  %5365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %5364, i32 undef)  ; BufferLoad(srv,index,wot)
  %5366 = extractvalue %dx.types.ResRet.i32 %5365, 0
  %5367 = add i32 %5366, 0
  %5368 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5367, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5368, %dx.types.Handle %49, float %5338, float %5339, float %5363, float undef, i32 0, i32 0, i32 undef, float %5321)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5370 = extractvalue %dx.types.ResRet.f32 %5369, 0
  %5371 = mul nuw nsw i32 %5360, 928
  %5372 = add nuw nsw i32 %5371, 44
  %5373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5372, i32 undef)  ; BufferLoad(srv,index,wot)
  %5374 = extractvalue %dx.types.ResRet.f32 %5373, 0
  %5375 = add nuw nsw i32 %5371, 48
  %5376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5375, i32 undef)  ; BufferLoad(srv,index,wot)
  %5377 = extractvalue %dx.types.ResRet.f32 %5376, 0
  %5378 = extractvalue %dx.types.ResRet.f32 %5376, 1
  %5379 = extractvalue %dx.types.ResRet.f32 %5376, 2
  %5380 = add nuw nsw i32 %5371, 60
  %5381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5380, i32 undef)  ; BufferLoad(srv,index,wot)
  %5382 = extractvalue %dx.types.ResRet.f32 %5381, 0
  %5383 = extractvalue %dx.types.ResRet.f32 %5381, 1
  %5384 = extractvalue %dx.types.ResRet.f32 %5381, 2
  %5385 = fmul fast float %5374, %5370
  %5386 = fadd fast float %5385, %5343
  %5387 = fmul fast float %5377, %5370
  %5388 = fmul fast float %5378, %5370
  %5389 = fmul fast float %5379, %5370
  %5390 = fadd fast float %5387, %5347
  %5391 = fadd fast float %5388, %5348
  %5392 = fadd fast float %5389, %5349
  %5393 = fmul fast float %5382, %5370
  %5394 = fmul fast float %5383, %5370
  %5395 = fmul fast float %5384, %5370
  %5396 = fadd fast float %5393, %5344
  %5397 = fadd fast float %5394, %5345
  %5398 = fadd fast float %5395, %5346
  %5399 = icmp eq i32 %5355, 0
  br i1 %5399, label %5400, label %5342

; <label>:5400                                    ; preds = %5342
  br label %5401

; <label>:5401                                    ; preds = %5400, %5312
  %5402 = phi float [ 0.000000e+00, %5312 ], [ %5386, %5400 ]
  %5403 = phi float [ 0.000000e+00, %5312 ], [ %5396, %5400 ]
  %5404 = phi float [ 0.000000e+00, %5312 ], [ %5397, %5400 ]
  %5405 = phi float [ 0.000000e+00, %5312 ], [ %5398, %5400 ]
  %5406 = phi float [ 0.000000e+00, %5312 ], [ %5390, %5400 ]
  %5407 = phi float [ 0.000000e+00, %5312 ], [ %5391, %5400 ]
  %5408 = phi float [ 0.000000e+00, %5312 ], [ %5392, %5400 ]
  %5409 = fmul fast float %5406, 0x3F847AE140000000
  %5410 = fmul fast float %5407, 0x3F847AE140000000
  %5411 = fmul fast float %5408, 0x3F847AE140000000
  %5412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5413 = extractvalue %dx.types.CBufRet.f32 %5412, 0
  %5414 = extractvalue %dx.types.CBufRet.f32 %5412, 1
  %5415 = extractvalue %dx.types.CBufRet.f32 %5412, 2
  %5416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5417 = extractvalue %dx.types.CBufRet.f32 %5416, 0
  %5418 = extractvalue %dx.types.CBufRet.f32 %5416, 1
  %5419 = call float @dx.op.dot3.f32(i32 55, float %5413, float %5414, float %5415, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5420 = select i1 %2322, float %5417, float %5413
  %5421 = select i1 %2322, float %5419, float %5414
  %5422 = select i1 %2322, float %5418, float %5415
  %5423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5424 = extractvalue %dx.types.CBufRet.f32 %5423, 0
  %5425 = extractvalue %dx.types.CBufRet.f32 %5423, 1
  %5426 = extractvalue %dx.types.CBufRet.f32 %5423, 2
  %5427 = fadd fast float %5406, %5403
  %5428 = fmul fast float %5427, 0x3F847AE140000000
  %5429 = fadd fast float %5407, %5404
  %5430 = fmul fast float %5429, 0x3F847AE140000000
  %5431 = fadd fast float %5408, %5405
  %5432 = fmul fast float %5431, 0x3F847AE140000000
  %5433 = call float @dx.op.dot3.f32(i32 55, float %5424, float %5425, float %5426, float %2215, float %2216, float %2217)  ; Dot3(ax,ay,az,bx,by,bz)
  %5434 = fcmp fast ogt float %5402, 0.000000e+00
  %5435 = select i1 %5434, float 1.000000e+00, float -1.000000e+00
  %5436 = fmul fast float %5435, 5.000000e-01
  %5437 = fmul fast float %5436, %5433
  %5438 = fmul fast float %5435, %5402
  %5439 = fadd fast float %5437, 4.921875e-01
  %5440 = fadd fast float %5438, -3.125000e-02
  %5441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %5439, float 0x3FB25F3060000000, float %5440, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5442 = extractvalue %dx.types.ResRet.f32 %5441, 0
  %5443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %5444 = extractvalue %dx.types.CBufRet.f32 %5443, 0
  %5445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.f32 %5445, 0
  %5447 = fmul fast float %5446, %5444
  %5448 = extractvalue %dx.types.CBufRet.f32 %5445, 1
  %5449 = fadd fast float %5447, %5448
  %5450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %5451 = extractvalue %dx.types.CBufRet.f32 %5450, 0
  %5452 = fmul fast float %5451, %4436
  %5453 = extractvalue %dx.types.CBufRet.f32 %5450, 1
  %5454 = fadd fast float %5452, %5453
  %5455 = call float @dx.op.unary.f32(i32 7, float %5454)  ; Saturate(value)
  %5456 = extractvalue %dx.types.CBufRet.f32 %5443, 3
  %5457 = extractvalue %dx.types.CBufRet.f32 %5445, 2
  %5458 = fmul fast float %5457, %5456
  %5459 = extractvalue %dx.types.CBufRet.f32 %5445, 3
  %5460 = fadd fast float %5458, %5459
  %5461 = fmul fast float %5442, 0x400921FB60000000
  %5462 = fmul fast float %5461, %5449
  %5463 = fmul fast float %5462, %5455
  %5464 = fmul fast float %5420, %5409
  %5465 = fmul fast float %5464, %5463
  %5466 = fmul fast float %5421, %5410
  %5467 = fmul fast float %5466, %5463
  %5468 = fmul fast float %5422, %5411
  %5469 = fmul fast float %5468, %5463
  %5470 = fmul fast float %5409, %3151
  %5471 = fmul fast float %5470, %5460
  %5472 = fmul fast float %5410, %3152
  %5473 = fmul fast float %5472, %5460
  %5474 = fmul fast float %5411, %3153
  %5475 = fmul fast float %5474, %5460
  br label %5476

; <label>:5476                                    ; preds = %5401, %5302
  %5477 = phi float [ %5428, %5401 ], [ 0.000000e+00, %5302 ]
  %5478 = phi float [ %5430, %5401 ], [ 0.000000e+00, %5302 ]
  %5479 = phi float [ %5432, %5401 ], [ 0.000000e+00, %5302 ]
  %5480 = phi float [ %5465, %5401 ], [ 0.000000e+00, %5302 ]
  %5481 = phi float [ %5467, %5401 ], [ 0.000000e+00, %5302 ]
  %5482 = phi float [ %5469, %5401 ], [ 0.000000e+00, %5302 ]
  %5483 = phi float [ %5471, %5401 ], [ 0.000000e+00, %5302 ]
  %5484 = phi float [ %5473, %5401 ], [ 0.000000e+00, %5302 ]
  %5485 = phi float [ %5475, %5401 ], [ 0.000000e+00, %5302 ]
  %5486 = call float @dx.op.binary.f32(i32 35, float %5477, float 0x3F10000000000000)  ; FMax(a,b)
  %5487 = call float @dx.op.binary.f32(i32 35, float %5478, float 0x3F10000000000000)  ; FMax(a,b)
  %5488 = call float @dx.op.binary.f32(i32 35, float %5479, float 0x3F10000000000000)  ; FMax(a,b)
  %5489 = fdiv fast float 1.000000e+00, %5486
  %5490 = fdiv fast float 1.000000e+00, %5487
  %5491 = fdiv fast float 1.000000e+00, %5488
  %5492 = fmul fast float %5477, 0xBFF7154760000000
  %5493 = fmul fast float %5478, 0xBFF7154760000000
  %5494 = fmul fast float %5479, 0xBFF7154760000000
  %5495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %5496 = extractvalue %dx.types.CBufRet.f32 %5495, 3
  %5497 = call float @dx.op.dot3.f32(i32 55, float %5489, float %5490, float %5491, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = fmul fast float %5496, %5497
  %5499 = call float @dx.op.binary.f32(i32 35, float %5213, float %5208)  ; FMax(a,b)
  %5500 = fsub fast float %5209, %5499
  %5501 = call float @dx.op.binary.f32(i32 35, float %5500, float 0.000000e+00)  ; FMax(a,b)
  %5502 = fsub fast float %5209, %5208
  %5503 = call float @dx.op.binary.f32(i32 35, float %5502, float 0.000000e+00)  ; FMax(a,b)
  %5504 = call float @dx.op.binary.f32(i32 36, float %5503, float %5498)  ; FMin(a,b)
  %5505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %5506 = extractvalue %dx.types.CBufRet.f32 %5505, 0
  %5507 = fmul fast float %5506, %5504
  %5508 = fmul fast float %5507, %5492
  %5509 = fmul fast float %5507, %5493
  %5510 = fmul fast float %5507, %5494
  %5511 = call float @dx.op.unary.f32(i32 21, float %5508)  ; Exp(value)
  %5512 = call float @dx.op.unary.f32(i32 21, float %5509)  ; Exp(value)
  %5513 = call float @dx.op.unary.f32(i32 21, float %5510)  ; Exp(value)
  %5514 = fmul fast float %5511, %5480
  %5515 = fmul fast float %5512, %5481
  %5516 = fmul fast float %5513, %5482
  %5517 = extractvalue %dx.types.CBufRet.f32 %5505, 1
  %5518 = fmul fast float %5517, %5504
  %5519 = fmul fast float %5518, %5492
  %5520 = fmul fast float %5518, %5493
  %5521 = fmul fast float %5518, %5494
  %5522 = call float @dx.op.unary.f32(i32 21, float %5519)  ; Exp(value)
  %5523 = call float @dx.op.unary.f32(i32 21, float %5520)  ; Exp(value)
  %5524 = call float @dx.op.unary.f32(i32 21, float %5521)  ; Exp(value)
  %5525 = fmul fast float %5522, %5483
  %5526 = fmul fast float %5523, %5484
  %5527 = fmul fast float %5524, %5485
  %5528 = fadd fast float %5525, %5514
  %5529 = fadd fast float %5526, %5515
  %5530 = fadd fast float %5527, %5516
  %5531 = fmul fast float %5501, %5492
  %5532 = fmul fast float %5501, %5493
  %5533 = fmul fast float %5501, %5494
  %5534 = call float @dx.op.unary.f32(i32 21, float %5531)  ; Exp(value)
  %5535 = call float @dx.op.unary.f32(i32 21, float %5532)  ; Exp(value)
  %5536 = call float @dx.op.unary.f32(i32 21, float %5533)  ; Exp(value)
  %5537 = call float @dx.op.unary.f32(i32 7, float %5534)  ; Saturate(value)
  %5538 = call float @dx.op.unary.f32(i32 7, float %5535)  ; Saturate(value)
  %5539 = call float @dx.op.unary.f32(i32 7, float %5536)  ; Saturate(value)
  %5540 = fmul fast float %5537, %5528
  %5541 = fmul fast float %5538, %5529
  %5542 = fmul fast float %5539, %5530
  %5543 = fsub fast float %5528, %5540
  %5544 = fsub fast float %5529, %5541
  %5545 = fsub fast float %5530, %5542
  %5546 = fmul fast float %5489, %5306
  %5547 = fmul fast float %5546, %5543
  %5548 = fmul fast float %5490, %5307
  %5549 = fmul fast float %5548, %5544
  %5550 = fmul fast float %5491, %5308
  %5551 = fmul fast float %5550, %5545
  %5552 = fadd fast float %5547, %5303
  %5553 = fadd fast float %5549, %5304
  %5554 = fadd fast float %5551, %5305
  %5555 = fmul fast float %5537, %5306
  %5556 = fmul fast float %5538, %5307
  %5557 = fmul fast float %5539, %5308
  %5558 = fmul fast float %5503, %5492
  %5559 = fmul fast float %5503, %5493
  %5560 = fmul fast float %5503, %5494
  %5561 = call float @dx.op.unary.f32(i32 21, float %5558)  ; Exp(value)
  %5562 = call float @dx.op.unary.f32(i32 21, float %5559)  ; Exp(value)
  %5563 = call float @dx.op.unary.f32(i32 21, float %5560)  ; Exp(value)
  %5564 = call float @dx.op.unary.f32(i32 7, float %5561)  ; Saturate(value)
  %5565 = call float @dx.op.unary.f32(i32 7, float %5562)  ; Saturate(value)
  %5566 = call float @dx.op.unary.f32(i32 7, float %5563)  ; Saturate(value)
  %5567 = fmul fast float %5564, %5528
  %5568 = fmul fast float %5565, %5529
  %5569 = fmul fast float %5566, %5530
  %5570 = fsub fast float %5528, %5567
  %5571 = fsub fast float %5529, %5568
  %5572 = fsub fast float %5530, %5569
  %5573 = fmul fast float %5570, %5489
  %5574 = fmul fast float %5571, %5490
  %5575 = fmul fast float %5572, %5491
  %5576 = fsub fast float %5208, %5212
  %5577 = fmul fast float %5214, %5576
  %5578 = call float @dx.op.unary.f32(i32 7, float %5577)  ; Saturate(value)
  %5579 = fmul fast float %5578, %5578
  %5580 = fmul fast float %5578, 2.000000e+00
  %5581 = fsub fast float 3.000000e+00, %5580
  %5582 = fmul fast float %5579, %5581
  %5583 = fsub fast float %5573, %5552
  %5584 = fsub fast float %5574, %5553
  %5585 = fsub fast float %5575, %5554
  %5586 = fmul fast float %5582, %5583
  %5587 = fmul fast float %5582, %5584
  %5588 = fmul fast float %5582, %5585
  %5589 = fadd fast float %5586, %5552
  %5590 = fadd fast float %5587, %5553
  %5591 = fadd fast float %5588, %5554
  %5592 = fsub fast float %5564, %5555
  %5593 = fsub fast float %5565, %5556
  %5594 = fsub fast float %5566, %5557
  %5595 = fmul fast float %5582, %5592
  %5596 = fmul fast float %5582, %5593
  %5597 = fmul fast float %5582, %5594
  %5598 = fadd fast float %5595, %5555
  %5599 = fadd fast float %5596, %5556
  %5600 = fadd fast float %5597, %5557
  br i1 %5309, label %5601, label %5669

; <label>:5601                                    ; preds = %5476
  %5602 = extractvalue %dx.types.CBufRet.f32 %5505, 3
  %5603 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5602)  ; Dot3(ax,ay,az,bx,by,bz)
  %5604 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2324, float %2325, float %2326)  ; Dot3(ax,ay,az,bx,by,bz)
  %5605 = fdiv fast float 1.000000e+00, %5604
  %5606 = fmul fast float %5605, %5603
  %5607 = fcmp ogt float %2217, -0.000000e+00
  %5608 = select i1 %5607, float %5602, float %5606
  %5609 = call float @dx.op.binary.f32(i32 36, float %5608, float %5498)  ; FMin(a,b)
  %5610 = fmul fast float %5506, %5609
  %5611 = fmul fast float %5610, %5492
  %5612 = fmul fast float %5610, %5493
  %5613 = fmul fast float %5610, %5494
  %5614 = call float @dx.op.unary.f32(i32 21, float %5611)  ; Exp(value)
  %5615 = call float @dx.op.unary.f32(i32 21, float %5612)  ; Exp(value)
  %5616 = call float @dx.op.unary.f32(i32 21, float %5613)  ; Exp(value)
  %5617 = fmul fast float %5614, %5480
  %5618 = fmul fast float %5615, %5481
  %5619 = fmul fast float %5616, %5482
  %5620 = fmul fast float %5517, %5609
  %5621 = fmul fast float %5620, %5492
  %5622 = fmul fast float %5620, %5493
  %5623 = fmul fast float %5620, %5494
  %5624 = call float @dx.op.unary.f32(i32 21, float %5621)  ; Exp(value)
  %5625 = call float @dx.op.unary.f32(i32 21, float %5622)  ; Exp(value)
  %5626 = call float @dx.op.unary.f32(i32 21, float %5623)  ; Exp(value)
  %5627 = fmul fast float %5624, %5483
  %5628 = fmul fast float %5625, %5484
  %5629 = fmul fast float %5626, %5485
  %5630 = fadd fast float %5627, %5617
  %5631 = fadd fast float %5628, %5618
  %5632 = fadd fast float %5629, %5619
  %5633 = fmul fast float %5608, %5492
  %5634 = fmul fast float %5608, %5493
  %5635 = fmul fast float %5608, %5494
  %5636 = call float @dx.op.unary.f32(i32 21, float %5633)  ; Exp(value)
  %5637 = call float @dx.op.unary.f32(i32 21, float %5634)  ; Exp(value)
  %5638 = call float @dx.op.unary.f32(i32 21, float %5635)  ; Exp(value)
  %5639 = call float @dx.op.unary.f32(i32 7, float %5636)  ; Saturate(value)
  %5640 = call float @dx.op.unary.f32(i32 7, float %5637)  ; Saturate(value)
  %5641 = call float @dx.op.unary.f32(i32 7, float %5638)  ; Saturate(value)
  %5642 = fmul fast float %5639, %5630
  %5643 = fmul fast float %5640, %5631
  %5644 = fmul fast float %5641, %5632
  %5645 = fsub fast float %5630, %5642
  %5646 = fsub fast float %5631, %5643
  %5647 = fsub fast float %5632, %5644
  %5648 = fmul fast float %5645, %5489
  %5649 = fmul fast float %5646, %5490
  %5650 = fmul fast float %5647, %5491
  %5651 = fsub fast float %5589, %5648
  %5652 = fsub fast float %5590, %5649
  %5653 = fsub fast float %5591, %5650
  %5654 = fmul fast float %5651, %5049
  %5655 = fmul fast float %5652, %5049
  %5656 = fmul fast float %5653, %5049
  %5657 = fadd fast float %5654, %5648
  %5658 = fadd fast float %5655, %5649
  %5659 = fadd fast float %5656, %5650
  %5660 = fsub fast float %5598, %5639
  %5661 = fsub fast float %5599, %5640
  %5662 = fsub fast float %5600, %5641
  %5663 = fmul fast float %5660, %5049
  %5664 = fmul fast float %5661, %5049
  %5665 = fmul fast float %5662, %5049
  %5666 = fadd fast float %5663, %5639
  %5667 = fadd fast float %5664, %5640
  %5668 = fadd fast float %5665, %5641
  br label %5669

; <label>:5669                                    ; preds = %5601, %5476
  %5670 = phi float [ %5657, %5601 ], [ %5589, %5476 ]
  %5671 = phi float [ %5658, %5601 ], [ %5590, %5476 ]
  %5672 = phi float [ %5659, %5601 ], [ %5591, %5476 ]
  %5673 = phi float [ %5666, %5601 ], [ %5598, %5476 ]
  %5674 = phi float [ %5667, %5601 ], [ %5599, %5476 ]
  %5675 = phi float [ %5668, %5601 ], [ %5600, %5476 ]
  %5676 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5677 = extractvalue %dx.types.CBufRet.i32 %5676, 3
  %5678 = and i32 %5677, 3
  %5679 = icmp ne i32 %5678, 0
  %5680 = and i32 %5677, 4
  %5681 = icmp ne i32 %5680, 0
  %5682 = and i1 %5679, %5681
  br i1 %5682, label %5683, label %5690

; <label>:5683                                    ; preds = %5669
  %5684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %51, float %5206, float %5207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5685 = extractvalue %dx.types.ResRet.f32 %5684, 0
  %5686 = fsub fast float 1.000000e+00, %5685
  %5687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %5688 = extractvalue %dx.types.CBufRet.f32 %5687, 0
  %5689 = fcmp fast olt float %5686, %5688
  br label %5693

; <label>:5690                                    ; preds = %5669
  %5691 = icmp eq i32 %5680, 0
  %5692 = and i1 %5679, %5691
  br label %5693

; <label>:5693                                    ; preds = %5690, %5683
  %5694 = phi i1 [ %5689, %5683 ], [ %5692, %5690 ]
  %5695 = xor i1 %2322, %5694
  %5696 = select i1 %5695, float 0.000000e+00, float %5049
  %5697 = fcmp fast ogt float %5696, 0.000000e+00
  %5698 = select i1 %5697, float %5206, float 0.000000e+00
  %5699 = select i1 %5697, float %5207, float 0.000000e+00
  %5700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %51, float %5698, float %5699, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5701 = extractvalue %dx.types.ResRet.f32 %5700, 0
  %5702 = extractvalue %dx.types.ResRet.f32 %5700, 1
  %5703 = extractvalue %dx.types.ResRet.f32 %5700, 2
  %5704 = fmul fast float %5702, %5696
  %5705 = fmul fast float %5703, %5696
  %5706 = select i1 %2322, float 0.000000e+00, float %5704
  %5707 = select i1 %2322, float 0.000000e+00, float %5705
  %5708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5709 = extractvalue %dx.types.CBufRet.f32 %5708, 1
  %5710 = fmul fast float %5696, %5673
  %5711 = fmul fast float %5710, %5701
  %5712 = fmul fast float %5711, %5709
  %5713 = fmul fast float %5709, %5674
  %5714 = fmul fast float %5713, %5706
  %5715 = fmul fast float %5709, %5675
  %5716 = fmul fast float %5715, %5707
  %5717 = fadd fast float %5712, %5670
  %5718 = fadd fast float %5714, %5671
  %5719 = fadd fast float %5716, %5672
  br label %5759

; <label>:5720                                    ; preds = %5205
  %5721 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5722 = extractvalue %dx.types.CBufRet.i32 %5721, 3
  %5723 = and i32 %5722, 3
  %5724 = icmp ne i32 %5723, 0
  %5725 = and i32 %5722, 4
  %5726 = icmp ne i32 %5725, 0
  %5727 = and i1 %5724, %5726
  br i1 %5727, label %5728, label %5735

; <label>:5728                                    ; preds = %5720
  %5729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %51, float %5206, float %5207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5730 = extractvalue %dx.types.ResRet.f32 %5729, 0
  %5731 = fsub fast float 1.000000e+00, %5730
  %5732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %5733 = extractvalue %dx.types.CBufRet.f32 %5732, 0
  %5734 = fcmp fast olt float %5731, %5733
  br label %5738

; <label>:5735                                    ; preds = %5720
  %5736 = icmp eq i32 %5725, 0
  %5737 = and i1 %5724, %5736
  br label %5738

; <label>:5738                                    ; preds = %5735, %5728
  %5739 = phi i1 [ %5734, %5728 ], [ %5737, %5735 ]
  %5740 = xor i1 %2322, %5739
  %5741 = select i1 %5740, float 0.000000e+00, float %5049
  %5742 = fcmp fast ogt float %5741, 0.000000e+00
  %5743 = select i1 %5742, float %5206, float 0.000000e+00
  %5744 = select i1 %5742, float %5207, float 0.000000e+00
  %5745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %51, float %5743, float %5744, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5746 = extractvalue %dx.types.ResRet.f32 %5745, 0
  %5747 = extractvalue %dx.types.ResRet.f32 %5745, 1
  %5748 = extractvalue %dx.types.ResRet.f32 %5745, 2
  %5749 = fmul fast float %5746, %5741
  %5750 = fmul fast float %5747, %5741
  %5751 = fmul fast float %5748, %5741
  %5752 = select i1 %2322, float 0.000000e+00, float %5750
  %5753 = select i1 %2322, float 0.000000e+00, float %5751
  %5754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5755 = extractvalue %dx.types.CBufRet.f32 %5754, 1
  %5756 = fmul fast float %5749, %5755
  %5757 = fmul fast float %5752, %5755
  %5758 = fmul fast float %5753, %5755
  br label %5759

; <label>:5759                                    ; preds = %5738, %5693
  %5760 = phi float [ %5756, %5738 ], [ %5717, %5693 ]
  %5761 = phi float [ %5757, %5738 ], [ %5718, %5693 ]
  %5762 = phi float [ %5758, %5738 ], [ %5719, %5693 ]
  %5763 = fmul fast float %5760, %3165
  %5764 = fmul fast float %5761, %3165
  %5765 = fmul fast float %5762, %3165
  %5766 = select i1 %96, float %5120, float 1.000000e+00
  %5767 = fsub fast float 1.000000e+00, %2329
  %5768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5769 = extractvalue %dx.types.CBufRet.f32 %5768, 0
  %5770 = fmul fast float %5769, %5767
  %5771 = fmul fast float %2189, 2.000000e+00
  %5772 = fmul fast float %5771, %2226
  %5773 = fsub fast float %2217, %5772
  %5774 = call float @dx.op.unary.f32(i32 7, float %5773)  ; Saturate(value)
  %5775 = fsub fast float 1.000000e+00, %5774
  %5776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5777 = extractvalue %dx.types.CBufRet.f32 %5776, 3
  %5778 = fmul fast float %5777, %5775
  %5779 = fsub fast float 1.000000e+00, %2296
  %5780 = call float @dx.op.unary.f32(i32 7, float %5779)  ; Saturate(value)
  %5781 = fadd fast float %5046, %2298
  %5782 = fmul fast float %5781, %2296
  %5783 = fmul fast float %5778, %5780
  %5784 = fmul fast float %5044, %2199
  %5785 = fmul fast float %5045, %2200
  %5786 = fmul fast float %5046, %2201
  %5787 = fadd fast float %5784, %5041
  %5788 = fadd fast float %5787, %5763
  %5789 = fadd fast float %5785, %5042
  %5790 = fadd fast float %5789, %5764
  %5791 = fadd fast float %5786, %5043
  %5792 = fadd fast float %5791, %5765
  br i1 %96, label %5793, label %6595

; <label>:5793                                    ; preds = %5759
  %5794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5795 = extractvalue %dx.types.CBufRet.f32 %5794, 0
  %5796 = extractvalue %dx.types.CBufRet.f32 %5794, 1
  %5797 = extractvalue %dx.types.CBufRet.f32 %5794, 2
  %5798 = extractvalue %dx.types.CBufRet.f32 %5794, 3
  %5799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5800 = extractvalue %dx.types.CBufRet.f32 %5799, 0
  %5801 = extractvalue %dx.types.CBufRet.f32 %5799, 1
  %5802 = extractvalue %dx.types.CBufRet.f32 %5799, 2
  %5803 = extractvalue %dx.types.CBufRet.f32 %5799, 3
  %5804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5805 = extractvalue %dx.types.CBufRet.f32 %5804, 0
  %5806 = extractvalue %dx.types.CBufRet.f32 %5804, 1
  %5807 = extractvalue %dx.types.CBufRet.f32 %5804, 2
  %5808 = extractvalue %dx.types.CBufRet.f32 %5804, 3
  %5809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5810 = extractvalue %dx.types.CBufRet.f32 %5809, 0
  %5811 = extractvalue %dx.types.CBufRet.f32 %5809, 1
  %5812 = extractvalue %dx.types.CBufRet.f32 %5809, 2
  %5813 = extractvalue %dx.types.CBufRet.f32 %5809, 3
  %5814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5815 = extractvalue %dx.types.CBufRet.f32 %5814, 3
  %5816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5817 = extractvalue %dx.types.CBufRet.f32 %5816, 3
  %5818 = extractvalue %dx.types.CBufRet.f32 %5816, 0
  %5819 = extractvalue %dx.types.CBufRet.f32 %5816, 1
  %5820 = extractvalue %dx.types.CBufRet.f32 %5816, 2
  %5821 = fcmp fast olt float %5820, -5.000000e-01
  %5822 = fmul fast float %2214, %2213
  %5823 = fadd fast float %5822, %5798
  %5824 = call float @dx.op.dot3.f32(i32 55, float %2215, float %2216, float %2217, float %5795, float %5796, float %5797)  ; Dot3(ax,ay,az,bx,by,bz)
  %5825 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5826 = extractvalue %dx.types.CBufRet.i32 %5825, 1
  %5827 = and i32 %5826, 1
  %5828 = icmp ne i32 %5827, 0
  %5829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5830 = extractvalue %dx.types.CBufRet.f32 %5829, 2
  %5831 = fcmp fast ogt float %5830, 0.000000e+00
  %5832 = and i1 %5828, %5831
  br i1 %5832, label %5833, label %6239, !dx.controlflow.hints !145

; <label>:5833                                    ; preds = %5793
  %5834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5835 = extractvalue %dx.types.CBufRet.f32 %5834, 3
  %5836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.f32 %5836, 2
  %5838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5839 = extractvalue %dx.types.CBufRet.f32 %5838, 2
  %5840 = fsub fast float %5837, %5839
  %5841 = and i32 %5826, 2
  %5842 = extractvalue %dx.types.CBufRet.i32 %5825, 0
  %5843 = call i32 @dx.op.binary.i32(i32 40, i32 %5842, i32 3)  ; UMin(a,b)
  %5844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5845 = extractvalue %dx.types.CBufRet.f32 %5844, 0
  %5846 = extractvalue %dx.types.CBufRet.f32 %5844, 1
  %5847 = extractvalue %dx.types.CBufRet.f32 %5838, 0
  %5848 = extractvalue %dx.types.CBufRet.f32 %5838, 1
  %5849 = fsub fast float %5845, %5847
  %5850 = fsub fast float %5846, %5848
  %5851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5852 = extractvalue %dx.types.CBufRet.f32 %5851, 0
  %5853 = fcmp fast ogt float %5852, 0.000000e+00
  %5854 = fsub fast float -0.000000e+00, %5849
  %5855 = fsub fast float -0.000000e+00, %5850
  %5856 = call float @dx.op.dot2.f32(i32 54, float %2215, float %2216, float %2215, float %2216)  ; Dot2(ax,ay,bx,by)
  %5857 = call float @dx.op.dot2.f32(i32 54, float %2215, float %2216, float %5854, float %5855)  ; Dot2(ax,ay,bx,by)
  %5858 = fmul fast float %5857, 2.000000e+00
  %5859 = call float @dx.op.dot2.f32(i32 54, float %5854, float %5855, float %5854, float %5855)  ; Dot2(ax,ay,bx,by)
  %5860 = fmul fast float %5852, %5852
  %5861 = fsub fast float %5859, %5860
  %5862 = fmul fast float %5858, %5858
  %5863 = fmul fast float %5856, 4.000000e+00
  %5864 = fmul fast float %5863, %5861
  %5865 = fsub fast float %5862, %5864
  %5866 = fcmp fast ogt float %5865, 0.000000e+00
  br i1 %5866, label %5867, label %5882

; <label>:5867                                    ; preds = %5833
  %5868 = fcmp fast ogt float %5858, 0.000000e+00
  %5869 = call float @dx.op.unary.f32(i32 24, float %5865)  ; Sqrt(value)
  %5870 = fsub fast float -0.000000e+00, %5869
  %5871 = select i1 %5868, float %5869, float %5870
  %5872 = fadd fast float %5871, %5858
  %5873 = fmul float %5872, -5.000000e-01
  %5874 = fdiv fast float %5873, %5856
  %5875 = call float @dx.op.binary.f32(i32 35, float %5874, float 0.000000e+00)  ; FMax(a,b)
  %5876 = call float @dx.op.binary.f32(i32 36, float %5822, float %5875)  ; FMin(a,b)
  %5877 = fdiv fast float %5861, %5873
  %5878 = call float @dx.op.binary.f32(i32 35, float %5877, float 0.000000e+00)  ; FMax(a,b)
  %5879 = call float @dx.op.binary.f32(i32 36, float %5822, float %5878)  ; FMin(a,b)
  %5880 = call float @dx.op.binary.f32(i32 36, float %5876, float %5879)  ; FMin(a,b)
  %5881 = call float @dx.op.binary.f32(i32 35, float %5876, float %5879)  ; FMax(a,b)
  br label %5882

; <label>:5882                                    ; preds = %5867, %5833
  %5883 = phi float [ %5881, %5867 ], [ -1.000000e+00, %5833 ]
  %5884 = phi float [ %5880, %5867 ], [ -1.000000e+00, %5833 ]
  %5885 = phi i1 [ true, %5867 ], [ false, %5833 ]
  %5886 = and i1 %5853, %5885
  br i1 %5886, label %5887, label %5889

; <label>:5887                                    ; preds = %5882
  %5888 = fcmp fast oeq float %5884, %5883
  br i1 %5888, label %6192, label %5890

; <label>:5889                                    ; preds = %5882
  br i1 %5853, label %6192, label %5890

; <label>:5890                                    ; preds = %5889, %5887
  %5891 = phi float [ %5822, %5889 ], [ %5883, %5887 ]
  %5892 = phi float [ 0.000000e+00, %5889 ], [ %5884, %5887 ]
  %5893 = icmp ne i32 %5841, 0
  %5894 = fmul fast float %5891, %2217
  %5895 = fadd fast float %5894, %5835
  %5896 = fmul fast float %5895, %5891
  %5897 = select i1 %5893, float 0.000000e+00, float %5896
  %5898 = fcmp fast oeq float %2217, 0.000000e+00
  %5899 = fdiv fast float %5840, %2217
  %5900 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5899)  ; FMax(a,b)
  %5901 = select i1 %5898, float %5891, float %5900
  %5902 = call float @dx.op.binary.f32(i32 36, float %5891, float %5901)  ; FMin(a,b)
  %5903 = fcmp fast ogt float %2217, 0.000000e+00
  %5904 = fcmp fast olt float %5840, 0.000000e+00
  br i1 %5903, label %5905, label %5962

; <label>:5905                                    ; preds = %5890
  %5906 = icmp eq i32 %5841, 0
  br i1 %5904, label %5907, label %5951

; <label>:5907                                    ; preds = %5905
  %5908 = select i1 %5906, float %5891, float 0.000000e+00
  %5909 = fsub fast float -0.000000e+00, %5908
  %5910 = call float @dx.op.unary.f32(i32 6, float %5909)  ; FAbs(value)
  %5911 = fmul fast float %5908, %2217
  %5912 = fadd fast float %5911, %5835
  %5913 = fmul fast float %5910, %5912
  %5914 = fsub fast float %5897, %5913
  %5915 = fsub fast float %5891, %5910
  %5916 = select i1 %5906, float %5915, float 0.000000e+00
  %5917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5918 = extractvalue %dx.types.CBufRet.f32 %5917, 0
  %5919 = extractvalue %dx.types.CBufRet.f32 %5917, 1
  %5920 = extractvalue %dx.types.CBufRet.f32 %5917, 2
  %5921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5922 = extractvalue %dx.types.CBufRet.f32 %5921, 0
  %5923 = extractvalue %dx.types.CBufRet.f32 %5921, 1
  %5924 = extractvalue %dx.types.CBufRet.f32 %5921, 2
  %5925 = extractvalue %dx.types.CBufRet.f32 %5921, 3
  %5926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5927 = extractvalue %dx.types.CBufRet.f32 %5926, 3
  %5928 = call float @dx.op.binary.f32(i32 36, float %5914, float %5927)  ; FMin(a,b)
  %5929 = fmul fast float %5925, %5916
  %5930 = call float @dx.op.unary.f32(i32 7, float %5929)  ; Saturate(value)
  %5931 = fsub fast float %5922, %5918
  %5932 = fsub fast float %5923, %5919
  %5933 = fsub fast float %5924, %5920
  %5934 = fmul fast float %5930, %5931
  %5935 = fmul fast float %5930, %5932
  %5936 = fmul fast float %5930, %5933
  %5937 = fadd fast float %5934, %5918
  %5938 = fadd fast float %5935, %5919
  %5939 = fadd fast float %5936, %5920
  %5940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5941 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %5942 = extractvalue %dx.types.CBufRet.f32 %5940, 1
  %5943 = fadd fast float %5942, %5941
  %5944 = call float @dx.op.unary.f32(i32 7, float %5943)  ; Saturate(value)
  %5945 = extractvalue %dx.types.CBufRet.f32 %5940, 2
  %5946 = extractvalue %dx.types.CBufRet.f32 %5940, 3
  %5947 = fadd fast float %5946, %5945
  %5948 = call float @dx.op.unary.f32(i32 7, float %5947)  ; Saturate(value)
  %5949 = fmul fast float %5944, %5928
  %5950 = fmul fast float %5949, %5948
  br label %6192

; <label>:5951                                    ; preds = %5905
  br i1 %5906, label %5952, label %5973

; <label>:5952                                    ; preds = %5951
  %5953 = call float @dx.op.binary.f32(i32 36, float %5902, float %5892)  ; FMin(a,b)
  %5954 = fsub fast float %5902, %5953
  %5955 = fsub fast float %5954, %5891
  %5956 = call float @dx.op.unary.f32(i32 6, float %5955)  ; FAbs(value)
  %5957 = fadd fast float %5954, %5891
  %5958 = fmul fast float %5957, %2217
  %5959 = fadd fast float %5958, %5835
  %5960 = fmul fast float %5959, %5956
  %5961 = fsub fast float %5897, %5960
  br label %5973

; <label>:5962                                    ; preds = %5890
  br i1 %5904, label %5963, label %5973

; <label>:5963                                    ; preds = %5962
  %5964 = call float @dx.op.binary.f32(i32 35, float %5892, float %5902)  ; FMax(a,b)
  %5965 = icmp eq i32 %5841, 0
  %5966 = select i1 %5965, float %5902, float 0.000000e+00
  %5967 = fsub fast float -0.000000e+00, %5966
  %5968 = call float @dx.op.unary.f32(i32 6, float %5967)  ; FAbs(value)
  %5969 = fmul fast float %5966, %2217
  %5970 = fadd fast float %5969, %5835
  %5971 = fmul fast float %5968, %5970
  %5972 = fsub fast float %5897, %5971
  br label %5973

; <label>:5973                                    ; preds = %5963, %5962, %5952, %5951
  %5974 = phi float [ %5892, %5951 ], [ %5892, %5952 ], [ %5964, %5963 ], [ %5892, %5962 ]
  %5975 = phi float [ 0.000000e+00, %5951 ], [ %5956, %5952 ], [ %5968, %5963 ], [ 0.000000e+00, %5962 ]
  %5976 = phi float [ %5897, %5951 ], [ %5961, %5952 ], [ %5972, %5963 ], [ %5897, %5962 ]
  %5977 = phi float [ %5902, %5951 ], [ %5902, %5952 ], [ %5891, %5963 ], [ %5891, %5962 ]
  %5978 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 0
  store float -1.000000e+00, float* %5978, align 4, !tbaa !94, !noalias !146
  %5979 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 1
  store float -1.000000e+00, float* %5979, align 4, !tbaa !94, !noalias !146
  %5980 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 2
  store float -1.000000e+00, float* %5980, align 4, !tbaa !94, !noalias !146
  %5981 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 0
  store float -1.000000e+00, float* %5981, align 4, !tbaa !94, !noalias !146
  %5982 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 1
  store float -1.000000e+00, float* %5982, align 4, !tbaa !94, !noalias !146
  %5983 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 2
  store float -1.000000e+00, float* %5983, align 4, !tbaa !94, !noalias !146
  %5984 = icmp sgt i32 %5843, 0
  br i1 %5984, label %5985, label %6046

; <label>:5985                                    ; preds = %5973
  br label %5986

; <label>:5986                                    ; preds = %6035, %5985
  %5987 = phi i32 [ %6036, %6035 ], [ 0, %5985 ]
  %5988 = phi i32 [ %6037, %6035 ], [ 0, %5985 ]
  %5989 = add nuw i32 %5988, 171
  %5990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %5989)  ; CBufferLoadLegacy(handle,regIndex)
  %5991 = extractvalue %dx.types.CBufRet.f32 %5990, 0
  %5992 = extractvalue %dx.types.CBufRet.f32 %5990, 1
  %5993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5994 = extractvalue %dx.types.CBufRet.f32 %5993, 0
  %5995 = extractvalue %dx.types.CBufRet.f32 %5993, 1
  %5996 = fsub fast float %5991, %5994
  %5997 = fsub fast float %5992, %5995
  %5998 = extractvalue %dx.types.CBufRet.f32 %5990, 2
  %5999 = fsub fast float -0.000000e+00, %5996
  %6000 = fsub fast float -0.000000e+00, %5997
  %6001 = call float @dx.op.dot2.f32(i32 54, float %2215, float %2216, float %5999, float %6000)  ; Dot2(ax,ay,bx,by)
  %6002 = fmul fast float %6001, 2.000000e+00
  %6003 = call float @dx.op.dot2.f32(i32 54, float %5999, float %6000, float %5999, float %6000)  ; Dot2(ax,ay,bx,by)
  %6004 = fmul fast float %5998, %5998
  %6005 = fsub fast float %6003, %6004
  %6006 = fmul fast float %6002, %6002
  %6007 = fmul fast float %5863, %6005
  %6008 = fsub fast float %6006, %6007
  %6009 = fcmp fast ogt float %6008, 0.000000e+00
  br i1 %6009, label %6010, label %6025

; <label>:6010                                    ; preds = %5986
  %6011 = fcmp fast ogt float %6002, 0.000000e+00
  %6012 = call float @dx.op.unary.f32(i32 24, float %6008)  ; Sqrt(value)
  %6013 = fsub fast float -0.000000e+00, %6012
  %6014 = select i1 %6011, float %6012, float %6013
  %6015 = fadd fast float %6014, %6002
  %6016 = fmul float %6015, -5.000000e-01
  %6017 = fdiv fast float %6016, %5856
  %6018 = call float @dx.op.binary.f32(i32 35, float %6017, float 0.000000e+00)  ; FMax(a,b)
  %6019 = call float @dx.op.binary.f32(i32 36, float %5891, float %6018)  ; FMin(a,b)
  %6020 = fdiv fast float %6005, %6016
  %6021 = call float @dx.op.binary.f32(i32 35, float %6020, float 0.000000e+00)  ; FMax(a,b)
  %6022 = call float @dx.op.binary.f32(i32 36, float %5891, float %6021)  ; FMin(a,b)
  %6023 = call float @dx.op.binary.f32(i32 36, float %6019, float %6022)  ; FMin(a,b)
  %6024 = call float @dx.op.binary.f32(i32 35, float %6019, float %6022)  ; FMax(a,b)
  br label %6025

; <label>:6025                                    ; preds = %6010, %5986
  %6026 = phi float [ %6024, %6010 ], [ -1.000000e+00, %5986 ]
  %6027 = phi float [ %6023, %6010 ], [ -1.000000e+00, %5986 ]
  %6028 = phi i1 [ true, %6010 ], [ false, %5986 ]
  br i1 %6028, label %6029, label %6035

; <label>:6029                                    ; preds = %6025
  %6030 = call float @dx.op.binary.f32(i32 35, float %5974, float %6027)  ; FMax(a,b)
  %6031 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 %5988
  store float %6030, float* %6031, align 4, !tbaa !94, !noalias !146
  %6032 = call float @dx.op.binary.f32(i32 35, float %5974, float %6026)  ; FMax(a,b)
  %6033 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 %5988
  store float %6032, float* %6033, align 4, !tbaa !94, !noalias !146
  %6034 = add nsw i32 %5987, 1
  br label %6035

; <label>:6035                                    ; preds = %6029, %6025
  %6036 = phi i32 [ %6034, %6029 ], [ %5987, %6025 ]
  %6037 = add nuw nsw i32 %5988, 1
  %6038 = icmp eq i32 %6037, %5843
  br i1 %6038, label %6039, label %5986

; <label>:6039                                    ; preds = %6035
  %6040 = load float, float* %5980, align 4, !tbaa !94, !alias.scope !162, !noalias !165
  %6041 = load float, float* %5979, align 4, !tbaa !94, !alias.scope !168, !noalias !169
  %6042 = load float, float* %5978, align 4, !tbaa !94, !alias.scope !170, !noalias !171
  %6043 = load float, float* %5983, align 4, !tbaa !94, !alias.scope !172, !noalias !175
  %6044 = load float, float* %5982, align 4, !tbaa !94, !alias.scope !178, !noalias !179
  %6045 = load float, float* %5981, align 4, !tbaa !94, !alias.scope !180, !noalias !181
  br label %6046

; <label>:6046                                    ; preds = %6039, %5973
  %6047 = phi float [ -1.000000e+00, %5973 ], [ %6045, %6039 ]
  %6048 = phi float [ -1.000000e+00, %5973 ], [ %6044, %6039 ]
  %6049 = phi float [ -1.000000e+00, %5973 ], [ %6043, %6039 ]
  %6050 = phi float [ -1.000000e+00, %5973 ], [ %6042, %6039 ]
  %6051 = phi float [ -1.000000e+00, %5973 ], [ %6041, %6039 ]
  %6052 = phi float [ -1.000000e+00, %5973 ], [ %6040, %6039 ]
  %6053 = phi i32 [ 0, %5973 ], [ %6036, %6039 ]
  %6054 = call float @dx.op.binary.f32(i32 36, float %6051, float %6052)  ; FMin(a,b)
  %6055 = call float @dx.op.binary.f32(i32 36, float %6050, float %6054)  ; FMin(a,b)
  %6056 = call float @dx.op.binary.f32(i32 35, float %6050, float %6051)  ; FMax(a,b)
  %6057 = call float @dx.op.binary.f32(i32 36, float %6056, float %6052)  ; FMin(a,b)
  %6058 = call float @dx.op.binary.f32(i32 36, float %6050, float %6051)  ; FMin(a,b)
  %6059 = call float @dx.op.binary.f32(i32 35, float %6058, float %6057)  ; FMax(a,b)
  %6060 = call float @dx.op.binary.f32(i32 35, float %6051, float %6052)  ; FMax(a,b)
  %6061 = call float @dx.op.binary.f32(i32 35, float %6050, float %6060)  ; FMax(a,b)
  store float %6055, float* %5978, align 4, !tbaa !94, !alias.scope !170, !noalias !171
  store float %6059, float* %5979, align 4, !tbaa !94, !alias.scope !168, !noalias !169
  store float %6061, float* %5980, align 4, !tbaa !94, !alias.scope !162, !noalias !165
  %6062 = call float @dx.op.binary.f32(i32 36, float %6048, float %6049)  ; FMin(a,b)
  %6063 = call float @dx.op.binary.f32(i32 36, float %6047, float %6062)  ; FMin(a,b)
  %6064 = call float @dx.op.binary.f32(i32 35, float %6047, float %6048)  ; FMax(a,b)
  %6065 = call float @dx.op.binary.f32(i32 36, float %6064, float %6049)  ; FMin(a,b)
  %6066 = call float @dx.op.binary.f32(i32 36, float %6047, float %6048)  ; FMin(a,b)
  %6067 = call float @dx.op.binary.f32(i32 35, float %6066, float %6065)  ; FMax(a,b)
  %6068 = call float @dx.op.binary.f32(i32 35, float %6048, float %6049)  ; FMax(a,b)
  %6069 = call float @dx.op.binary.f32(i32 35, float %6047, float %6068)  ; FMax(a,b)
  store float %6063, float* %5981, align 4, !tbaa !94, !alias.scope !180, !noalias !181
  store float %6067, float* %5982, align 4, !tbaa !94, !alias.scope !178, !noalias !179
  store float %6069, float* %5983, align 4, !tbaa !94, !alias.scope !172, !noalias !175
  %6070 = sub nsw i32 3, %6053
  %6071 = icmp sgt i32 %6070, 2
  br i1 %6071, label %6072, label %6110

; <label>:6072                                    ; preds = %6046
  %6073 = icmp eq i32 %5841, 0
  %6074 = fsub fast float %5891, %5975
  %6075 = select i1 %6073, float %6074, float %5975
  %6076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6077 = extractvalue %dx.types.CBufRet.f32 %6076, 0
  %6078 = extractvalue %dx.types.CBufRet.f32 %6076, 1
  %6079 = extractvalue %dx.types.CBufRet.f32 %6076, 2
  %6080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6081 = extractvalue %dx.types.CBufRet.f32 %6080, 0
  %6082 = extractvalue %dx.types.CBufRet.f32 %6080, 1
  %6083 = extractvalue %dx.types.CBufRet.f32 %6080, 2
  %6084 = extractvalue %dx.types.CBufRet.f32 %6080, 3
  %6085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6086 = extractvalue %dx.types.CBufRet.f32 %6085, 3
  %6087 = call float @dx.op.binary.f32(i32 36, float %5976, float %6086)  ; FMin(a,b)
  %6088 = fmul fast float %6084, %6075
  %6089 = call float @dx.op.unary.f32(i32 7, float %6088)  ; Saturate(value)
  %6090 = fsub fast float %6081, %6077
  %6091 = fsub fast float %6082, %6078
  %6092 = fsub fast float %6083, %6079
  %6093 = fmul fast float %6089, %6090
  %6094 = fmul fast float %6089, %6091
  %6095 = fmul fast float %6089, %6092
  %6096 = fadd fast float %6093, %6077
  %6097 = fadd fast float %6094, %6078
  %6098 = fadd fast float %6095, %6079
  %6099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6100 = extractvalue %dx.types.CBufRet.f32 %6099, 0
  %6101 = extractvalue %dx.types.CBufRet.f32 %6099, 1
  %6102 = fadd fast float %6101, %6100
  %6103 = call float @dx.op.unary.f32(i32 7, float %6102)  ; Saturate(value)
  %6104 = extractvalue %dx.types.CBufRet.f32 %6099, 2
  %6105 = extractvalue %dx.types.CBufRet.f32 %6099, 3
  %6106 = fadd fast float %6105, %6104
  %6107 = call float @dx.op.unary.f32(i32 7, float %6106)  ; Saturate(value)
  %6108 = fmul fast float %6103, %6087
  %6109 = fmul fast float %6108, %6107
  br label %6192

; <label>:6110                                    ; preds = %6046
  %6111 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 %6070
  %6112 = load float, float* %6111, align 4, !tbaa !94, !noalias !146
  %6113 = fcmp fast olt float %6112, %5977
  %6114 = icmp sgt i32 %6053, 0
  %6115 = and i1 %6114, %6113
  br i1 %6115, label %6116, label %6153

; <label>:6116                                    ; preds = %6110
  br label %6117

; <label>:6117                                    ; preds = %6146, %6116
  %6118 = phi float [ %6147, %6146 ], [ %5975, %6116 ]
  %6119 = phi float [ %6148, %6146 ], [ %5976, %6116 ]
  %6120 = phi float [ %6128, %6146 ], [ %6112, %6116 ]
  %6121 = phi i32 [ %6125, %6146 ], [ %6070, %6116 ]
  %6122 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 %6121
  %6123 = load float, float* %6122, align 4, !tbaa !94, !noalias !146
  %6124 = icmp slt i32 %6121, 2
  %6125 = add nsw i32 %6121, 1
  %6126 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 %6125
  %6127 = load float, float* %6126, align 4, !tbaa !94, !noalias !146
  %6128 = select i1 %6124, float %6127, float %5891
  %6129 = call float @dx.op.binary.f32(i32 36, float %6128, float %6123)  ; FMin(a,b)
  %6130 = call float @dx.op.binary.f32(i32 36, float %5977, float %6129)  ; FMin(a,b)
  %6131 = icmp eq i32 %5841, 0
  %6132 = fadd fast float %6130, %6120
  %6133 = fmul fast float %6132, %2217
  %6134 = fadd fast float %6133, %5835
  br i1 %6131, label %6140, label %6135

; <label>:6135                                    ; preds = %6117
  %6136 = fsub fast float %6130, %6120
  %6137 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6136)  ; FMax(a,b)
  %6138 = fmul fast float %6137, %6134
  %6139 = fadd fast float %6138, %6119
  br label %6146

; <label>:6140                                    ; preds = %6117
  %6141 = fsub fast float %6120, %6130
  %6142 = call float @dx.op.unary.f32(i32 6, float %6141)  ; FAbs(value)
  %6143 = fadd fast float %6142, %6118
  %6144 = fmul fast float %6142, %6134
  %6145 = fsub fast float %6119, %6144
  br label %6146

; <label>:6146                                    ; preds = %6140, %6135
  %6147 = phi float [ %6137, %6135 ], [ %6143, %6140 ]
  %6148 = phi float [ %6139, %6135 ], [ %6145, %6140 ]
  %6149 = fcmp fast olt float %6128, %5977
  %6150 = icmp slt i32 %6125, 3
  %6151 = and i1 %6150, %6149
  br i1 %6151, label %6117, label %6152

; <label>:6152                                    ; preds = %6146
  br label %6153

; <label>:6153                                    ; preds = %6152, %6110
  %6154 = phi float [ %5975, %6110 ], [ %6147, %6152 ]
  %6155 = phi float [ %5976, %6110 ], [ %6148, %6152 ]
  %6156 = fsub fast float %5891, %6154
  %6157 = select i1 %5893, float %6154, float %6156
  %6158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6159 = extractvalue %dx.types.CBufRet.f32 %6158, 0
  %6160 = extractvalue %dx.types.CBufRet.f32 %6158, 1
  %6161 = extractvalue %dx.types.CBufRet.f32 %6158, 2
  %6162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6163 = extractvalue %dx.types.CBufRet.f32 %6162, 0
  %6164 = extractvalue %dx.types.CBufRet.f32 %6162, 1
  %6165 = extractvalue %dx.types.CBufRet.f32 %6162, 2
  %6166 = extractvalue %dx.types.CBufRet.f32 %6162, 3
  %6167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6168 = extractvalue %dx.types.CBufRet.f32 %6167, 3
  %6169 = call float @dx.op.binary.f32(i32 36, float %6155, float %6168)  ; FMin(a,b)
  %6170 = fmul fast float %6166, %6157
  %6171 = call float @dx.op.unary.f32(i32 7, float %6170)  ; Saturate(value)
  %6172 = fsub fast float %6163, %6159
  %6173 = fsub fast float %6164, %6160
  %6174 = fsub fast float %6165, %6161
  %6175 = fmul fast float %6171, %6172
  %6176 = fmul fast float %6171, %6173
  %6177 = fmul fast float %6171, %6174
  %6178 = fadd fast float %6175, %6159
  %6179 = fadd fast float %6176, %6160
  %6180 = fadd fast float %6177, %6161
  %6181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6182 = extractvalue %dx.types.CBufRet.f32 %6181, 0
  %6183 = extractvalue %dx.types.CBufRet.f32 %6181, 1
  %6184 = fadd fast float %6183, %6182
  %6185 = call float @dx.op.unary.f32(i32 7, float %6184)  ; Saturate(value)
  %6186 = extractvalue %dx.types.CBufRet.f32 %6181, 2
  %6187 = extractvalue %dx.types.CBufRet.f32 %6181, 3
  %6188 = fadd fast float %6187, %6186
  %6189 = call float @dx.op.unary.f32(i32 7, float %6188)  ; Saturate(value)
  %6190 = fmul fast float %6185, %6169
  %6191 = fmul fast float %6190, %6189
  br label %6192

; <label>:6192                                    ; preds = %6153, %6072, %5907, %5889, %5887
  %6193 = phi float [ %5916, %5907 ], [ %6075, %6072 ], [ %6157, %6153 ], [ 0.000000e+00, %5887 ], [ 0.000000e+00, %5889 ]
  %6194 = phi float [ %5950, %5907 ], [ %6109, %6072 ], [ %6191, %6153 ], [ 0.000000e+00, %5887 ], [ 0.000000e+00, %5889 ]
  %6195 = phi float [ %5937, %5907 ], [ %6096, %6072 ], [ %6178, %6153 ], [ 0.000000e+00, %5887 ], [ 0.000000e+00, %5889 ]
  %6196 = phi float [ %5938, %5907 ], [ %6097, %6072 ], [ %6179, %6153 ], [ 0.000000e+00, %5887 ], [ 0.000000e+00, %5889 ]
  %6197 = phi float [ %5939, %5907 ], [ %6098, %6072 ], [ %6180, %6153 ], [ 0.000000e+00, %5887 ], [ 0.000000e+00, %5889 ]
  %6198 = fmul fast float %5830, %6194
  %6199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6200 = extractvalue %dx.types.CBufRet.f32 %6199, 2
  %6201 = fsub fast float %5837, %6200
  %6202 = fcmp fast olt float %6198, -2.000000e+01
  %6203 = call float @dx.op.unary.f32(i32 21, float %6198)  ; Exp(value)
  %6204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6205 = extractvalue %dx.types.CBufRet.f32 %6204, 2
  %6206 = extractvalue %dx.types.CBufRet.f32 %6204, 3
  %6207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6208 = extractvalue %dx.types.CBufRet.f32 %6207, 2
  %6209 = fmul fast float %6206, %6201
  %6210 = call float @dx.op.unary.f32(i32 7, float %6209)  ; Saturate(value)
  %6211 = fsub fast float 1.000000e+00, %6210
  %6212 = fmul fast float %2217, 5.000000e-01
  %6213 = fadd fast float %6212, 5.000000e-01
  %6214 = call float @dx.op.unary.f32(i32 7, float %6213)  ; Saturate(value)
  %6215 = fsub fast float 1.000000e+00, %6214
  %6216 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6211)  ; FMax(a,b)
  %6217 = fdiv fast float %6215, %6216
  %6218 = fsub fast float %6201, %136
  %6219 = call float @dx.op.unary.f32(i32 6, float %6218)  ; FAbs(value)
  %6220 = fmul fast float %6219, %6205
  %6221 = call float @dx.op.unary.f32(i32 7, float %6217)  ; Saturate(value)
  %6222 = fsub fast float 1.000000e+00, %6220
  %6223 = fmul fast float %6222, %6221
  %6224 = fadd fast float %6223, %6220
  %6225 = fmul fast float %6208, %6201
  %6226 = call float @dx.op.unary.f32(i32 7, float %6225)  ; Saturate(value)
  %6227 = fsub fast float 1.000000e+00, %6224
  %6228 = fmul fast float %6227, %6226
  %6229 = fadd fast float %6228, %6224
  %6230 = call float @dx.op.unary.f32(i32 7, float %6229)  ; Saturate(value)
  %6231 = fadd fast float %6203, -1.000000e+00
  %6232 = select i1 %6202, float -1.000000e+00, float %6231
  %6233 = fmul fast float %6230, %6232
  %6234 = fadd fast float %6233, 1.000000e+00
  %6235 = fsub fast float -0.000000e+00, %6233
  %6236 = fmul fast float %6195, %6235
  %6237 = fmul fast float %6196, %6235
  %6238 = fmul fast float %6197, %6235
  br label %6239

; <label>:6239                                    ; preds = %6192, %5793
  %6240 = phi float [ %6193, %6192 ], [ 0.000000e+00, %5793 ]
  %6241 = phi float [ %6234, %6192 ], [ 1.000000e+00, %5793 ]
  %6242 = phi float [ %6236, %6192 ], [ 0.000000e+00, %5793 ]
  %6243 = phi float [ %6237, %6192 ], [ 0.000000e+00, %5793 ]
  %6244 = phi float [ %6238, %6192 ], [ 0.000000e+00, %5793 ]
  %6245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6246 = extractvalue %dx.types.CBufRet.f32 %6245, 1
  %6247 = fsub fast float 1.000000e+00, %6241
  %6248 = fmul fast float %6247, %5823
  %6249 = fmul fast float %6248, %6246
  %6250 = fsub fast float %5823, %6249
  br i1 %5821, label %6251, label %6280, !dx.controlflow.hints !182

; <label>:6251                                    ; preds = %6239
  %6252 = fmul fast float %5824, %5818
  %6253 = fadd fast float %6252, %5819
  %6254 = call float @dx.op.unary.f32(i32 7, float %6253)  ; Saturate(value)
  %6255 = fmul fast float %5800, %6250
  %6256 = fsub fast float -0.000000e+00, %6255
  %6257 = fmul fast float %5801, %6250
  %6258 = fsub fast float -0.000000e+00, %6257
  %6259 = call float @dx.op.unary.f32(i32 21, float %6256)  ; Exp(value)
  %6260 = call float @dx.op.unary.f32(i32 21, float %6258)  ; Exp(value)
  %6261 = call float @dx.op.binary.f32(i32 35, float %5808, float %6259)  ; FMax(a,b)
  %6262 = call float @dx.op.binary.f32(i32 35, float %5808, float %6260)  ; FMax(a,b)
  %6263 = fsub fast float %6262, %6261
  %6264 = fmul fast float %6263, %6254
  %6265 = fadd fast float %6264, %6261
  %6266 = call float @dx.op.unary.f32(i32 7, float %6265)  ; Saturate(value)
  %6267 = fsub fast float %5805, %5810
  %6268 = fsub fast float %5806, %5811
  %6269 = fsub fast float %5807, %5812
  %6270 = fmul fast float %6254, %6267
  %6271 = fmul fast float %6254, %6268
  %6272 = fmul fast float %6254, %6269
  %6273 = fadd fast float %6270, %5810
  %6274 = fadd fast float %6271, %5811
  %6275 = fadd fast float %6272, %5812
  %6276 = fsub fast float 1.000000e+00, %6266
  %6277 = fmul fast float %6276, %6273
  %6278 = fmul fast float %6276, %6274
  %6279 = fmul fast float %6276, %6275
  br label %6339

; <label>:6280                                    ; preds = %6239
  %6281 = fmul fast float %6250, %5817
  %6282 = call float @dx.op.unary.f32(i32 7, float %6281)  ; Saturate(value)
  %6283 = fsub fast float 2.000000e+00, %6282
  %6284 = fmul fast float %6282, 9.921875e-01
  %6285 = fmul fast float %6284, %6283
  %6286 = fadd fast float %6285, 3.906250e-03
  %6287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %51, float %6286, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6288 = extractvalue %dx.types.ResRet.f32 %6287, 0
  %6289 = fsub fast float %6282, %6288
  %6290 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6289)  ; FMax(a,b)
  %6291 = fmul fast float %5803, %136
  %6292 = call float @dx.op.unary.f32(i32 6, float %6291)  ; FAbs(value)
  %6293 = fcmp fast ogt float %6292, 0x3EB0C6F7A0000000
  br i1 %6293, label %6294, label %6300, !dx.controlflow.hints !183

; <label>:6294                                    ; preds = %6280
  %6295 = fmul fast float %6291, 0xBFF7154760000000
  %6296 = call float @dx.op.unary.f32(i32 21, float %6295)  ; Exp(value)
  %6297 = fsub fast float 1.000000e+00, %6296
  %6298 = fdiv fast float %6297, %6291
  %6299 = fmul fast float %6298, %5813
  br label %6300

; <label>:6300                                    ; preds = %6294, %6280
  %6301 = phi float [ %6299, %6294 ], [ %5813, %6280 ]
  %6302 = fadd fast float %6301, %5815
  %6303 = fmul fast float %6302, %6290
  %6304 = fmul fast float %5800, %6303
  %6305 = fsub fast float -0.000000e+00, %6304
  %6306 = fmul fast float %5801, %6303
  %6307 = fsub fast float -0.000000e+00, %6306
  %6308 = fmul fast float %5802, %6303
  %6309 = fsub fast float -0.000000e+00, %6308
  %6310 = call float @dx.op.unary.f32(i32 21, float %6305)  ; Exp(value)
  %6311 = call float @dx.op.unary.f32(i32 21, float %6307)  ; Exp(value)
  %6312 = call float @dx.op.unary.f32(i32 21, float %6309)  ; Exp(value)
  %6313 = fmul fast float %5824, %5824
  %6314 = fadd fast float %6313, 1.000000e+00
  %6315 = fmul fast float %6314, 0x3FAE8EC8A0000000
  %6316 = fmul fast float %6315, %5810
  %6317 = fmul fast float %6315, %5811
  %6318 = fmul fast float %6315, %5812
  %6319 = fmul fast float %5824, %5808
  %6320 = fsub fast float 1.000000e+00, %6319
  %6321 = fmul fast float %5808, %5808
  %6322 = fsub fast float 1.000000e+00, %6321
  %6323 = fmul fast float %6322, 0x3FB45F3060000000
  %6324 = fmul fast float %6320, %6320
  %6325 = fdiv fast float 1.000000e+00, %6324
  %6326 = fmul fast float %6323, %6325
  %6327 = fmul fast float %6326, %5805
  %6328 = fmul fast float %6326, %5806
  %6329 = fmul fast float %6326, %5807
  %6330 = fadd fast float %6327, %6316
  %6331 = fadd fast float %6328, %6317
  %6332 = fadd fast float %6329, %6318
  %6333 = fsub fast float 1.000000e+00, %6310
  %6334 = fsub fast float 1.000000e+00, %6311
  %6335 = fsub fast float 1.000000e+00, %6312
  %6336 = fmul fast float %6330, %6333
  %6337 = fmul fast float %6331, %6334
  %6338 = fmul fast float %6332, %6335
  br label %6339

; <label>:6339                                    ; preds = %6300, %6251
  %6340 = phi float [ %6277, %6251 ], [ %6336, %6300 ]
  %6341 = phi float [ %6278, %6251 ], [ %6337, %6300 ]
  %6342 = phi float [ %6279, %6251 ], [ %6338, %6300 ]
  %6343 = phi float [ %6266, %6251 ], [ %6310, %6300 ]
  %6344 = phi float [ %6266, %6251 ], [ %6311, %6300 ]
  %6345 = phi float [ %6266, %6251 ], [ %6312, %6300 ]
  br i1 %5832, label %6346, label %6544, !dx.controlflow.hints !184

; <label>:6346                                    ; preds = %6339
  %6347 = extractvalue %dx.types.CBufRet.f32 %6245, 0
  %6348 = fmul fast float %6347, %6247
  %6349 = fsub fast float %6242, %6340
  %6350 = fsub fast float %6243, %6341
  %6351 = fsub fast float %6244, %6342
  %6352 = fmul fast float %6348, %6349
  %6353 = fmul fast float %6348, %6350
  %6354 = fmul fast float %6348, %6351
  %6355 = fadd fast float %6352, %6340
  %6356 = fadd fast float %6353, %6341
  %6357 = fadd fast float %6354, %6342
  %6358 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6343)  ; FMax(a,b)
  %6359 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6344)  ; FMax(a,b)
  %6360 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6345)  ; FMax(a,b)
  %6361 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6241)  ; FMax(a,b)
  %6362 = call float @dx.op.binary.f32(i32 35, float %6240, float %6250)  ; FMax(a,b)
  %6363 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6362)  ; FMax(a,b)
  %6364 = fdiv fast float %6240, %6363
  %6365 = call float @dx.op.unary.f32(i32 7, float %6364)  ; Saturate(value)
  %6366 = fdiv fast float %6250, %6363
  %6367 = call float @dx.op.unary.f32(i32 7, float %6366)  ; Saturate(value)
  %6368 = fcmp fast une float %6361, 1.000000e+00
  br i1 %6368, label %6369, label %6382, !dx.controlflow.hints !185

; <label>:6369                                    ; preds = %6346
  %6370 = call float @dx.op.unary.f32(i32 23, float %6361)  ; Log(value)
  %6371 = fmul fast float %6370, 0x3FE62E4300000000
  %6372 = fmul fast float %6242, %6371
  %6373 = fsub fast float -0.000000e+00, %6372
  %6374 = fmul fast float %6243, %6371
  %6375 = fsub fast float -0.000000e+00, %6374
  %6376 = fmul fast float %6244, %6371
  %6377 = fsub fast float -0.000000e+00, %6376
  %6378 = fsub fast float 1.000000e+00, %6361
  %6379 = fdiv fast float %6373, %6378
  %6380 = fdiv fast float %6375, %6378
  %6381 = fdiv fast float %6377, %6378
  br label %6382

; <label>:6382                                    ; preds = %6369, %6346
  %6383 = phi float [ %6379, %6369 ], [ %6242, %6346 ]
  %6384 = phi float [ %6380, %6369 ], [ %6243, %6346 ]
  %6385 = phi float [ %6381, %6369 ], [ %6244, %6346 ]
  %6386 = phi float [ %6371, %6369 ], [ 0.000000e+00, %6346 ]
  %6387 = fcmp fast une float %6358, 1.000000e+00
  br i1 %6387, label %6388, label %6395, !dx.controlflow.hints !186

; <label>:6388                                    ; preds = %6382
  %6389 = call float @dx.op.unary.f32(i32 23, float %6358)  ; Log(value)
  %6390 = fmul fast float %6389, 0x3FE62E4300000000
  %6391 = fmul fast float %6355, %6390
  %6392 = fsub fast float -0.000000e+00, %6391
  %6393 = fsub fast float 1.000000e+00, %6358
  %6394 = fdiv fast float %6392, %6393
  br label %6395

; <label>:6395                                    ; preds = %6388, %6382
  %6396 = phi float [ %6394, %6388 ], [ %6355, %6382 ]
  %6397 = phi float [ %6390, %6388 ], [ 0.000000e+00, %6382 ]
  %6398 = fcmp fast une float %6359, 1.000000e+00
  br i1 %6398, label %6399, label %6406, !dx.controlflow.hints !186

; <label>:6399                                    ; preds = %6395
  %6400 = call float @dx.op.unary.f32(i32 23, float %6359)  ; Log(value)
  %6401 = fmul fast float %6400, 0x3FE62E4300000000
  %6402 = fmul fast float %6356, %6401
  %6403 = fsub fast float -0.000000e+00, %6402
  %6404 = fsub fast float 1.000000e+00, %6359
  %6405 = fdiv fast float %6403, %6404
  br label %6406

; <label>:6406                                    ; preds = %6399, %6395
  %6407 = phi float [ %6405, %6399 ], [ %6356, %6395 ]
  %6408 = phi float [ %6401, %6399 ], [ 0.000000e+00, %6395 ]
  %6409 = fcmp fast une float %6360, 1.000000e+00
  br i1 %6409, label %6410, label %6417, !dx.controlflow.hints !186

; <label>:6410                                    ; preds = %6406
  %6411 = call float @dx.op.unary.f32(i32 23, float %6360)  ; Log(value)
  %6412 = fmul fast float %6411, 0x3FE62E4300000000
  %6413 = fmul fast float %6357, %6412
  %6414 = fsub fast float -0.000000e+00, %6413
  %6415 = fsub fast float 1.000000e+00, %6360
  %6416 = fdiv fast float %6414, %6415
  br label %6417

; <label>:6417                                    ; preds = %6410, %6406
  %6418 = phi float [ %6416, %6410 ], [ %6357, %6406 ]
  %6419 = phi float [ %6412, %6410 ], [ 0.000000e+00, %6406 ]
  %6420 = fmul fast float %6383, %6367
  %6421 = fmul fast float %6384, %6367
  %6422 = fmul fast float %6385, %6367
  %6423 = fmul fast float %6386, %6367
  %6424 = fmul fast float %6396, %6365
  %6425 = fmul fast float %6407, %6365
  %6426 = fmul fast float %6418, %6365
  %6427 = fmul fast float %6397, %6365
  %6428 = fmul fast float %6408, %6365
  %6429 = fmul fast float %6419, %6365
  %6430 = fadd fast float %6424, %6420
  %6431 = fadd fast float %6425, %6421
  %6432 = fadd fast float %6426, %6422
  %6433 = fadd fast float %6427, %6423
  %6434 = fadd fast float %6428, %6423
  %6435 = fadd fast float %6429, %6423
  %6436 = fcmp fast une float %6433, 0.000000e+00
  br i1 %6436, label %6437, label %6444, !dx.controlflow.hints !187

; <label>:6437                                    ; preds = %6417
  %6438 = fmul fast float %6433, 0x3FF7154760000000
  %6439 = call float @dx.op.unary.f32(i32 21, float %6438)  ; Exp(value)
  %6440 = fsub fast float 1.000000e+00, %6439
  %6441 = fmul fast float %6430, %6440
  %6442 = fsub fast float -0.000000e+00, %6441
  %6443 = fdiv fast float %6442, %6433
  br label %6444

; <label>:6444                                    ; preds = %6437, %6417
  %6445 = phi float [ %6439, %6437 ], [ 1.000000e+00, %6417 ]
  %6446 = phi float [ %6443, %6437 ], [ %6430, %6417 ]
  %6447 = fcmp fast une float %6434, 0.000000e+00
  br i1 %6447, label %6448, label %6455, !dx.controlflow.hints !187

; <label>:6448                                    ; preds = %6444
  %6449 = fmul fast float %6434, 0x3FF7154760000000
  %6450 = call float @dx.op.unary.f32(i32 21, float %6449)  ; Exp(value)
  %6451 = fsub fast float 1.000000e+00, %6450
  %6452 = fmul fast float %6431, %6451
  %6453 = fsub fast float -0.000000e+00, %6452
  %6454 = fdiv fast float %6453, %6434
  br label %6455

; <label>:6455                                    ; preds = %6448, %6444
  %6456 = phi float [ %6450, %6448 ], [ 1.000000e+00, %6444 ]
  %6457 = phi float [ %6454, %6448 ], [ %6431, %6444 ]
  %6458 = fcmp fast une float %6435, 0.000000e+00
  br i1 %6458, label %6459, label %6466, !dx.controlflow.hints !187

; <label>:6459                                    ; preds = %6455
  %6460 = fmul fast float %6435, 0x3FF7154760000000
  %6461 = call float @dx.op.unary.f32(i32 21, float %6460)  ; Exp(value)
  %6462 = fsub fast float 1.000000e+00, %6461
  %6463 = fmul fast float %6432, %6462
  %6464 = fsub fast float -0.000000e+00, %6463
  %6465 = fdiv fast float %6464, %6435
  br label %6466

; <label>:6466                                    ; preds = %6459, %6455
  %6467 = phi float [ %6461, %6459 ], [ 1.000000e+00, %6455 ]
  %6468 = phi float [ %6465, %6459 ], [ %6432, %6455 ]
  %6469 = fcmp fast ogt float %6365, %6367
  br i1 %6469, label %6470, label %6490

; <label>:6470                                    ; preds = %6466
  %6471 = fsub fast float 1.000000e+00, %6367
  %6472 = fmul fast float %6383, %6471
  %6473 = fmul fast float %6384, %6471
  %6474 = fmul fast float %6385, %6471
  %6475 = fmul fast float %6386, %6471
  %6476 = fcmp fast une float %6475, 0.000000e+00
  br i1 %6476, label %6477, label %6528, !dx.controlflow.hints !188

; <label>:6477                                    ; preds = %6470
  %6478 = fmul fast float %6475, 0x3FF7154760000000
  %6479 = call float @dx.op.unary.f32(i32 21, float %6478)  ; Exp(value)
  %6480 = fsub fast float 1.000000e+00, %6479
  %6481 = fmul fast float %6472, %6480
  %6482 = fsub fast float -0.000000e+00, %6481
  %6483 = fmul fast float %6473, %6480
  %6484 = fsub fast float -0.000000e+00, %6483
  %6485 = fmul fast float %6474, %6480
  %6486 = fsub fast float -0.000000e+00, %6485
  %6487 = fdiv fast float %6482, %6475
  %6488 = fdiv fast float %6484, %6475
  %6489 = fdiv fast float %6486, %6475
  br label %6528

; <label>:6490                                    ; preds = %6466
  %6491 = fsub fast float 1.000000e+00, %6365
  %6492 = fmul fast float %6396, %6491
  %6493 = fmul fast float %6407, %6491
  %6494 = fmul fast float %6418, %6491
  %6495 = fmul fast float %6397, %6491
  %6496 = fmul fast float %6408, %6491
  %6497 = fmul fast float %6419, %6491
  %6498 = fcmp fast une float %6495, 0.000000e+00
  br i1 %6498, label %6499, label %6506, !dx.controlflow.hints !187

; <label>:6499                                    ; preds = %6490
  %6500 = fmul fast float %6495, 0x3FF7154760000000
  %6501 = call float @dx.op.unary.f32(i32 21, float %6500)  ; Exp(value)
  %6502 = fsub fast float 1.000000e+00, %6501
  %6503 = fmul fast float %6492, %6502
  %6504 = fsub fast float -0.000000e+00, %6503
  %6505 = fdiv fast float %6504, %6495
  br label %6506

; <label>:6506                                    ; preds = %6499, %6490
  %6507 = phi float [ %6505, %6499 ], [ %6492, %6490 ]
  %6508 = phi float [ %6501, %6499 ], [ 1.000000e+00, %6490 ]
  %6509 = fcmp fast une float %6496, 0.000000e+00
  br i1 %6509, label %6510, label %6517, !dx.controlflow.hints !187

; <label>:6510                                    ; preds = %6506
  %6511 = fmul fast float %6496, 0x3FF7154760000000
  %6512 = call float @dx.op.unary.f32(i32 21, float %6511)  ; Exp(value)
  %6513 = fsub fast float 1.000000e+00, %6512
  %6514 = fmul fast float %6493, %6513
  %6515 = fsub fast float -0.000000e+00, %6514
  %6516 = fdiv fast float %6515, %6496
  br label %6517

; <label>:6517                                    ; preds = %6510, %6506
  %6518 = phi float [ %6516, %6510 ], [ %6493, %6506 ]
  %6519 = phi float [ %6512, %6510 ], [ 1.000000e+00, %6506 ]
  %6520 = fcmp fast une float %6497, 0.000000e+00
  br i1 %6520, label %6521, label %6528, !dx.controlflow.hints !187

; <label>:6521                                    ; preds = %6517
  %6522 = fmul fast float %6497, 0x3FF7154760000000
  %6523 = call float @dx.op.unary.f32(i32 21, float %6522)  ; Exp(value)
  %6524 = fsub fast float 1.000000e+00, %6523
  %6525 = fmul fast float %6494, %6524
  %6526 = fsub fast float -0.000000e+00, %6525
  %6527 = fdiv fast float %6526, %6497
  br label %6528

; <label>:6528                                    ; preds = %6521, %6517, %6477, %6470
  %6529 = phi float [ %6527, %6521 ], [ %6489, %6477 ], [ %6474, %6470 ], [ %6494, %6517 ]
  %6530 = phi float [ %6518, %6521 ], [ %6488, %6477 ], [ %6473, %6470 ], [ %6518, %6517 ]
  %6531 = phi float [ %6507, %6521 ], [ %6487, %6477 ], [ %6472, %6470 ], [ %6507, %6517 ]
  %6532 = phi float [ %6523, %6521 ], [ %6479, %6477 ], [ 1.000000e+00, %6470 ], [ 1.000000e+00, %6517 ]
  %6533 = phi float [ %6519, %6521 ], [ %6479, %6477 ], [ 1.000000e+00, %6470 ], [ %6519, %6517 ]
  %6534 = phi float [ %6508, %6521 ], [ %6479, %6477 ], [ 1.000000e+00, %6470 ], [ %6508, %6517 ]
  %6535 = fmul fast float %6534, %6446
  %6536 = fmul fast float %6533, %6457
  %6537 = fmul fast float %6532, %6468
  %6538 = fadd fast float %6535, %6531
  %6539 = fadd fast float %6536, %6530
  %6540 = fadd fast float %6537, %6529
  %6541 = fmul fast float %6534, %6445
  %6542 = fmul fast float %6533, %6456
  %6543 = fmul fast float %6532, %6467
  br label %6544

; <label>:6544                                    ; preds = %6528, %6339
  %6545 = phi float [ %6543, %6528 ], [ %6345, %6339 ]
  %6546 = phi float [ %6542, %6528 ], [ %6344, %6339 ]
  %6547 = phi float [ %6541, %6528 ], [ %6343, %6339 ]
  %6548 = phi float [ %6540, %6528 ], [ %6342, %6339 ]
  %6549 = phi float [ %6539, %6528 ], [ %6341, %6339 ]
  %6550 = phi float [ %6538, %6528 ], [ %6340, %6339 ]
  %6551 = call float @dx.op.dot3.f32(i32 55, float %6547, float %6546, float %6545, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6552 = call float @dx.op.dot3.f32(i32 55, float %6550, float %6549, float %6548, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6553 = select i1 %2322, float %6551, float %6547
  %6554 = select i1 %2322, float %6551, float %6546
  %6555 = select i1 %2322, float 1.000000e+00, float %6545
  %6556 = select i1 %2322, float %6552, float %6550
  %6557 = select i1 %2322, float 0.000000e+00, float %6549
  %6558 = select i1 %2322, float 0.000000e+00, float %6548
  %6559 = fmul fast float %6553, %5788
  %6560 = fmul fast float %6554, %5790
  %6561 = fmul fast float %6555, %5792
  %6562 = fadd fast float %6559, %6556
  %6563 = fadd fast float %6560, %6557
  %6564 = fadd fast float %6558, %6561
  %6565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6566 = extractvalue %dx.types.CBufRet.f32 %6565, 2
  %6567 = extractvalue %dx.types.CBufRet.f32 %6565, 3
  %6568 = fmul fast float %6566, %79
  %6569 = fmul fast float %6567, %80
  %6570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %51, float %6568, float %6569, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6571 = extractvalue %dx.types.ResRet.f32 %6570, 0
  %6572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %51, float %6568, float %6569, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6573 = extractvalue %dx.types.ResRet.f32 %6572, 0
  %6574 = extractvalue %dx.types.ResRet.f32 %6572, 1
  %6575 = extractvalue %dx.types.ResRet.f32 %6572, 2
  %6576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6577 = extractvalue %dx.types.CBufRet.f32 %6576, 1
  %6578 = fmul fast float %6577, %6573
  %6579 = fmul fast float %6577, %6574
  %6580 = fmul fast float %6577, %6575
  %6581 = fmul fast float %6571, %6547
  %6582 = call float @dx.op.dot3.f32(i32 55, float %6571, float %6571, float %6571, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6583 = call float @dx.op.dot3.f32(i32 55, float %6578, float %6579, float %6580, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6584 = select i1 %2322, float %6582, float %6571
  %6585 = select i1 %2322, float 1.000000e+00, float %6571
  %6586 = select i1 %2322, float %6583, float %6578
  %6587 = select i1 %2322, float 0.000000e+00, float %6579
  %6588 = select i1 %2322, float 0.000000e+00, float %6580
  %6589 = fmul fast float %6584, %6562
  %6590 = fmul fast float %6584, %6563
  %6591 = fmul fast float %6585, %6564
  %6592 = fadd fast float %6589, %6586
  %6593 = fadd fast float %6590, %6587
  %6594 = fadd fast float %6588, %6591
  br label %6595

; <label>:6595                                    ; preds = %6544, %5759
  %6596 = phi float [ %5788, %5759 ], [ %6592, %6544 ]
  %6597 = phi float [ %5790, %5759 ], [ %6593, %6544 ]
  %6598 = phi float [ %5792, %5759 ], [ %6594, %6544 ]
  %6599 = phi float [ 1.000000e+00, %5759 ], [ %6581, %6544 ]
  %6600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6601 = extractvalue %dx.types.CBufRet.f32 %6600, 2
  %6602 = extractvalue %dx.types.CBufRet.f32 %6600, 3
  %6603 = fmul fast float %6601, %79
  %6604 = fmul fast float %6602, %80
  %6605 = call float @dx.op.unary.f32(i32 7, float %6603)  ; Saturate(value)
  %6606 = call float @dx.op.unary.f32(i32 7, float %6604)  ; Saturate(value)
  %6607 = select i1 %96, i32 0, i32 2
  %6608 = or i32 %6607, 1
  %6609 = uitofp i32 %6608 to float
  %6610 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %51, float %6605, float %6606, float %6609, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6611 = extractvalue %dx.types.ResRet.f32 %6610, 0
  %6612 = extractvalue %dx.types.ResRet.f32 %6610, 1
  %6613 = extractvalue %dx.types.ResRet.f32 %6610, 2
  %6614 = extractvalue %dx.types.ResRet.f32 %6610, 3
  %6615 = add nuw nsw i32 %6607, 2
  %6616 = uitofp i32 %6615 to float
  %6617 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %51, float %6605, float %6606, float %6616, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6618 = extractvalue %dx.types.ResRet.f32 %6617, 0
  %6619 = extractvalue %dx.types.ResRet.f32 %6617, 1
  %6620 = extractvalue %dx.types.ResRet.f32 %6617, 2
  %6621 = extractvalue %dx.types.ResRet.f32 %6617, 3
  %6622 = call float @dx.op.binary.f32(i32 35, float %6612, float %6613)  ; FMax(a,b)
  %6623 = call float @dx.op.binary.f32(i32 35, float %6611, float %6622)  ; FMax(a,b)
  %6624 = call float @dx.op.binary.f32(i32 35, float %6623, float %6614)  ; FMax(a,b)
  %6625 = call float @dx.op.binary.f32(i32 36, float %6619, float %6620)  ; FMin(a,b)
  %6626 = call float @dx.op.binary.f32(i32 36, float %6618, float %6625)  ; FMin(a,b)
  %6627 = call float @dx.op.binary.f32(i32 36, float %6626, float %6621)  ; FMin(a,b)
  %6628 = fmul fast float %6624, 2.550000e+02
  %6629 = fadd fast float %6628, 0x3F70101020000000
  %6630 = fptoui float %6629 to i32
  %6631 = fmul fast float %6627, 2.550000e+02
  %6632 = fadd fast float %6631, 0x3F70101020000000
  %6633 = fptoui float %6632 to i32
  %6634 = icmp ult i32 %6630, %6633
  br i1 %6634, label %6635, label %6687

; <label>:6635                                    ; preds = %6595
  %6636 = fcmp fast ogt float %70, 9.843750e-01
  %6637 = fadd fast float %71, -4.000000e+00
  %6638 = select i1 %6636, float -4.000000e+00, float %6637
  %6639 = call float @dx.op.binary.f32(i32 35, float %6638, float 0.000000e+00)  ; FMax(a,b)
  %6640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6641 = extractvalue %dx.types.CBufRet.f32 %6640, 0
  %6642 = fadd fast float %6641, %6639
  %6643 = extractvalue %dx.types.CBufRet.f32 %6640, 2
  %6644 = fmul fast float %6642, %6643
  %6645 = call float @dx.op.unary.f32(i32 23, float %6644)  ; Log(value)
  %6646 = extractvalue %dx.types.CBufRet.f32 %6640, 3
  %6647 = fmul fast float %6646, %6645
  %6648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6649 = extractvalue %dx.types.CBufRet.f32 %6648, 2
  %6650 = fmul fast float %6647, %6649
  %6651 = call float @dx.op.unary.f32(i32 7, float %6650)  ; Saturate(value)
  %6652 = uitofp i32 %6630 to float
  %6653 = uitofp i32 %6633 to float
  %6654 = fadd fast float %6652, 5.000000e-01
  %6655 = fadd fast float %6653, 5.000000e-01
  %6656 = fmul fast float %6649, %6654
  %6657 = fmul fast float %6649, %6655
  %6658 = fadd fast float %6656, 0x3F0FFB4800000000
  %6659 = fadd fast float %6657, 0xBF0FFB4800000000
  %6660 = call float @dx.op.binary.f32(i32 35, float %6651, float %6658)  ; FMax(a,b)
  %6661 = call float @dx.op.binary.f32(i32 36, float %6660, float %6659)  ; FMin(a,b)
  %6662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6663 = extractvalue %dx.types.CBufRet.f32 %6662, 1
  %6664 = extractvalue %dx.types.CBufRet.f32 %6662, 2
  %6665 = extractvalue %dx.types.CBufRet.f32 %6662, 0
  %6666 = select i1 %96, float 0.000000e+00, float %6665
  %6667 = fmul fast float %6663, %6661
  %6668 = fadd fast float %6666, %6667
  %6669 = fadd fast float %6666, %6664
  %6670 = fsub fast float %6663, %6664
  %6671 = fadd fast float %6670, %6666
  %6672 = call float @dx.op.binary.f32(i32 35, float %6668, float %6669)  ; FMax(a,b)
  %6673 = call float @dx.op.binary.f32(i32 36, float %6672, float %6671)  ; FMin(a,b)
  %6674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %6605, float %6606, float %6673, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6675 = extractvalue %dx.types.ResRet.f32 %6674, 0
  %6676 = extractvalue %dx.types.ResRet.f32 %6674, 1
  %6677 = extractvalue %dx.types.ResRet.f32 %6674, 2
  %6678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %49, float %6605, float %6606, float %6673, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6679 = extractvalue %dx.types.ResRet.f32 %6678, 0
  %6680 = extractvalue %dx.types.ResRet.f32 %6678, 1
  %6681 = extractvalue %dx.types.ResRet.f32 %6678, 2
  %6682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6683 = extractvalue %dx.types.CBufRet.f32 %6682, 1
  %6684 = fmul fast float %6683, %6679
  %6685 = fmul fast float %6683, %6680
  %6686 = fmul fast float %6683, %6681
  br label %6687

; <label>:6687                                    ; preds = %6635, %6595
  %6688 = phi float [ %6675, %6635 ], [ 1.000000e+00, %6595 ]
  %6689 = phi float [ %6676, %6635 ], [ 1.000000e+00, %6595 ]
  %6690 = phi float [ %6677, %6635 ], [ 1.000000e+00, %6595 ]
  %6691 = phi float [ %6684, %6635 ], [ 0.000000e+00, %6595 ]
  %6692 = phi float [ %6685, %6635 ], [ 0.000000e+00, %6595 ]
  %6693 = phi float [ %6686, %6635 ], [ 0.000000e+00, %6595 ]
  %6694 = fmul fast float %6688, %6599
  %6695 = call float @dx.op.dot3.f32(i32 55, float %6688, float %6689, float %6690, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6696 = call float @dx.op.dot3.f32(i32 55, float %6691, float %6692, float %6693, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6697 = select i1 %2322, float %6695, float %6688
  %6698 = select i1 %2322, float %6695, float %6689
  %6699 = select i1 %2322, float 1.000000e+00, float %6690
  %6700 = select i1 %2322, float %6696, float %6691
  %6701 = select i1 %2322, float 0.000000e+00, float %6692
  %6702 = select i1 %2322, float 0.000000e+00, float %6693
  %6703 = fmul fast float %6697, %6596
  %6704 = fmul fast float %6698, %6597
  %6705 = fmul fast float %6699, %6598
  %6706 = fadd fast float %6703, %6700
  %6707 = fadd fast float %6704, %6701
  %6708 = fadd fast float %6702, %6705
  %6709 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6710 = extractvalue %dx.types.CBufRet.i32 %6709, 3
  %6711 = and i32 %6710, 3
  %6712 = icmp ne i32 %6711, 0
  %6713 = and i32 %6710, 4
  %6714 = icmp ne i32 %6713, 0
  %6715 = and i1 %6712, %6714
  %6716 = and i1 %2322, %6715
  br i1 %6716, label %6717, label %6723

; <label>:6717                                    ; preds = %6687
  %6718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6719 = extractvalue %dx.types.CBufRet.f32 %6718, 1
  %6720 = fadd fast float %6694, -1.000000e+00
  %6721 = fmul fast float %6719, %6720
  %6722 = fadd fast float %6721, 1.000000e+00
  br label %6723

; <label>:6723                                    ; preds = %6717, %6687
  %6724 = phi float [ %6722, %6717 ], [ %6694, %6687 ]
  %6725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6726 = extractvalue %dx.types.CBufRet.f32 %6725, 0
  br i1 %2322, label %6727, label %6741

; <label>:6727                                    ; preds = %6723
  %6728 = fadd fast float %6706, %6707
  %6729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6730 = extractvalue %dx.types.CBufRet.f32 %6729, 3
  %6731 = extractvalue %dx.types.CBufRet.f32 %5776, 1
  %6732 = fsub fast float %5782, %5770
  %6733 = fadd fast float %6732, %5783
  %6734 = fsub fast float %6733, %6731
  %6735 = extractvalue %dx.types.CBufRet.f32 %5776, 2
  %6736 = fmul fast float %6734, %6735
  %6737 = call float @dx.op.unary.f32(i32 7, float %6736)  ; Saturate(value)
  %6738 = fsub fast float %6737, %6730
  %6739 = fmul fast float %6738, %6724
  %6740 = fadd fast float %6739, %6730
  br label %6744

; <label>:6741                                    ; preds = %6723
  %6742 = fmul fast float %6726, %6707
  %6743 = fmul fast float %6726, %6708
  br label %6744

; <label>:6744                                    ; preds = %6741, %6727
  %6745 = phi float [ %6728, %6727 ], [ %6706, %6741 ]
  %6746 = phi float [ %6740, %6727 ], [ %6742, %6741 ]
  %6747 = phi float [ 1.000000e+00, %6727 ], [ %6743, %6741 ]
  %6748 = fmul float %6726, %6745
  %6749 = fadd fast float %1675, 0x3FE3C6EF40000000
  %6750 = call float @dx.op.unary.f32(i32 22, float %6749)  ; Frc(value)
  %6751 = call float @dx.op.unary.f32(i32 23, float %6748)  ; Log(value)
  %6752 = fadd fast float %6751, -7.000000e+00
  %6753 = call float @dx.op.unary.f32(i32 21, float %6752)  ; Exp(value)
  %6754 = fmul fast float %6750, 2.000000e+00
  %6755 = fadd fast float %6754, -1.000000e+00
  %6756 = fmul fast float %6753, %6755
  %6757 = fcmp fast ogt float %6748, 0.000000e+00
  %6758 = select i1 %6757, float %6756, float 0.000000e+00
  %6759 = fadd fast float %6758, %6748
  %6760 = fadd fast float %1675, 0x3FF3C6EF40000000
  %6761 = call float @dx.op.unary.f32(i32 22, float %6760)  ; Frc(value)
  %6762 = call float @dx.op.unary.f32(i32 23, float %6746)  ; Log(value)
  %6763 = fadd fast float %6762, -7.000000e+00
  %6764 = call float @dx.op.unary.f32(i32 21, float %6763)  ; Exp(value)
  %6765 = fmul fast float %6761, 2.000000e+00
  %6766 = fadd fast float %6765, -1.000000e+00
  %6767 = fmul fast float %6764, %6766
  %6768 = fcmp fast ogt float %6746, 0.000000e+00
  %6769 = select i1 %6768, float %6767, float 0.000000e+00
  %6770 = fadd fast float %6769, %6746
  %6771 = fadd fast float %1675, 0x3FFDAA66E0000000
  %6772 = call float @dx.op.unary.f32(i32 22, float %6771)  ; Frc(value)
  %6773 = call float @dx.op.unary.f32(i32 23, float %6747)  ; Log(value)
  %6774 = fadd fast float %6773, -6.000000e+00
  %6775 = call float @dx.op.unary.f32(i32 21, float %6774)  ; Exp(value)
  %6776 = fmul fast float %6772, 2.000000e+00
  %6777 = fadd fast float %6776, -1.000000e+00
  %6778 = fmul fast float %6775, %6777
  %6779 = fcmp fast ogt float %6747, 0.000000e+00
  %6780 = select i1 %6779, float %6778, float 0.000000e+00
  %6781 = fadd fast float %6780, %6747
  %6782 = call float @dx.op.binary.f32(i32 36, float %6759, float 3.225500e+04)  ; FMin(a,b)
  %6783 = call float @dx.op.binary.f32(i32 36, float %6770, float 3.225500e+04)  ; FMin(a,b)
  %6784 = call float @dx.op.binary.f32(i32 36, float %6781, float 3.225500e+04)  ; FMin(a,b)
  %6785 = fmul fast float %6782, %5766
  %6786 = fmul fast float %6783, %5766
  %6787 = fmul fast float %6784, %5766
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6785)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6786)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6787)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %5766)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!72}
!dx.entryPoints = !{!73}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !57, !60, !64}
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
!57 = !{!58}
!58 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i1 false, i1 false, i1 false, !59}
!59 = !{i32 1, i32 4}
!60 = !{!61, !62, !63}
!61 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!62 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!63 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!64 = !{!65, !66, !67, !68, !69, !70, !71}
!65 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!66 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!67 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!68 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!69 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!70 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!71 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!72 = !{[20 x i32] [i32 18, i32 4, i32 15, i32 15, i32 7, i32 15, i32 7, i32 7, i32 7, i32 7, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0]}
!73 = !{void ()* @ps_main, !"ps_main", !74, !4, !93}
!74 = !{!75, !91, null}
!75 = !{!76, !79, !81, !83, !85, !86, !87, !88, !90}
!76 = !{i32 0, !"SV_Position", i8 9, i8 3, !77, i8 4, i32 1, i8 4, i32 0, i8 0, !78}
!77 = !{i32 0}
!78 = !{i32 3, i32 15}
!79 = !{i32 1, !"NORMAL", i8 9, i8 0, !77, i8 2, i32 1, i8 3, i32 1, i8 0, !80}
!80 = !{i32 3, i32 7}
!81 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !77, i8 2, i32 1, i8 2, i32 2, i8 0, !82}
!82 = !{i32 3, i32 3}
!83 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !77, i8 2, i32 1, i8 1, i32 1, i8 3, !84}
!84 = !{i32 3, i32 1}
!85 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !77, i8 1, i32 1, i8 1, i32 3, i8 0, !84}
!86 = !{i32 5, !"SV_IsFrontFace", i8 5, i8 13, !77, i8 1, i32 1, i8 1, i32 3, i8 1, !84}
!87 = !{i32 6, !"SV_ClipDistance", i8 9, i8 6, !77, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!88 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !89, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!89 = !{i32 1}
!90 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !77, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!91 = !{!92}
!92 = !{i32 0, !"SV_Target", i8 9, i8 16, !77, i8 0, i32 1, i8 4, i32 0, i8 0, !78}
!93 = !{i32 0, i64 24}
!94 = !{!95, !95, i64 0}
!95 = !{!"float", !96, i64 0}
!96 = !{!"omnipotent char", !97, i64 0}
!97 = !{!"Simple C/C++ TBAA"}
!98 = !{!99, !101, !102}
!99 = distinct !{!99, !100, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!100 = distinct !{!100, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!101 = distinct !{!101, !100, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!102 = distinct !{!102, !100, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!103 = !{!104, !106, !107, !108}
!104 = distinct !{!104, !105, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoam"}
!105 = distinct !{!105, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z"}
!106 = distinct !{!106, !105, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamNormalOffsets"}
!107 = distinct !{!107, !105, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamOcclusion"}
!108 = distinct !{!108, !105, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamGloss"}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.unroll.disable"}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = !{!125, !125, i64 0}
!125 = !{!"int", !96, i64 0}
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
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = !{!147, !149, !151, !152, !154, !155, !156, !158, !159, !160}
!147 = distinct !{!147, !148, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!148 = distinct !{!148, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!149 = distinct !{!149, !150, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!150 = distinct !{!150, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!151 = distinct !{!151, !150, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!152 = distinct !{!152, !153, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!153 = distinct !{!153, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!154 = distinct !{!154, !153, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!155 = distinct !{!155, !153, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!156 = distinct !{!156, !157, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!157 = distinct !{!157, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!158 = distinct !{!158, !157, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!159 = distinct !{!159, !157, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!160 = distinct !{!160, !161, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!161 = distinct !{!161, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!162 = !{!163}
!163 = distinct !{!163, !164, !"\01?sort@@YAXAIAM00@Z: %c"}
!164 = distinct !{!164, !"\01?sort@@YAXAIAM00@Z"}
!165 = !{!166, !167, !147, !149, !151, !152, !154, !155, !156, !158, !159, !160}
!166 = distinct !{!166, !164, !"\01?sort@@YAXAIAM00@Z: %a"}
!167 = distinct !{!167, !164, !"\01?sort@@YAXAIAM00@Z: %b"}
!168 = !{!167}
!169 = !{!166, !163, !147, !149, !151, !152, !154, !155, !156, !158, !159, !160}
!170 = !{!166}
!171 = !{!167, !163, !147, !149, !151, !152, !154, !155, !156, !158, !159, !160}
!172 = !{!173}
!173 = distinct !{!173, !174, !"\01?sort@@YAXAIAM00@Z: %c"}
!174 = distinct !{!174, !"\01?sort@@YAXAIAM00@Z"}
!175 = !{!176, !177, !147, !149, !151, !152, !154, !155, !156, !158, !159, !160}
!176 = distinct !{!176, !174, !"\01?sort@@YAXAIAM00@Z: %a"}
!177 = distinct !{!177, !174, !"\01?sort@@YAXAIAM00@Z: %b"}
!178 = !{!177}
!179 = !{!176, !173, !147, !149, !151, !152, !154, !155, !156, !158, !159, !160}
!180 = !{!176}
!181 = !{!177, !173, !147, !149, !151, !152, !154, !155, !156, !158, !159, !160}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 2}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 1}
!186 = distinct !{!186, !"dx.controlflow.hints", i32 1}
!187 = distinct !{!187, !"dx.controlflow.hints", i32 1}
!188 = distinct !{!188, !"dx.controlflow.hints", i32 1}

