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
; shader hash: 13c0d15dba888113763e9d841a997785
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
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture    byte         r/o      T6     t45,space1     1
;                                   texture    byte         r/o      T7     t46,space1     1
;                                   texture    byte         r/o      T8     t47,space1     1
;                                   texture    byte         r/o      T9             t3     1
;                                   texture    byte         r/o     T10             t4     1
;                                   texture    byte         r/o     T11             t5     1
;                                   texture     f32          2d     T12             t2     1
;                                   texture     f32     2darray     T13     t16,space2     1
;                                   texture     f32          3d     T14     t15,space2     1
;                                   texture     f32          2d     T15     t13,space2     1
;                                   texture     u32          2d     T16     t17,space2     1
;                                   texture     f32          3d     T17     t18,space2     1
;                                   texture    byte         r/o     T18      t3,space1     1
;                                   texture    byte         r/o     T19      t4,space1     1
;                                   texture    byte         r/o     T20      t5,space1     1
;                                   texture    byte         r/o     T21      t6,space1     1
;                                   texture     f32          2d     T22     t37,space2     1
;                                   texture     f32          2d     T23             t6     1
;                                   texture     f32          2d     T24             t7     1
;                                   texture     f32          2d     T25     t50,space2     1
;                                   texture     f32          2d     T26             t9     1
;                                   texture     f32     2darray     T27     t35,space2     1
;                                   texture     f32          2d     T28     t34,space2     1
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
;                                   texture     f32     2darray     T54            t10     1
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
@"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim" = internal constant [8 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %63 = alloca [4 x i32], align 4
  %64 = alloca [4 x float], align 4
  %65 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = icmp ne i32 %65, 0
  %67 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = alloca [12 x float], align 4
  %79 = alloca [12 x float], align 4
  %80 = alloca [3 x float], align 4
  %81 = alloca [3 x float], align 4
  %82 = alloca [4 x float], align 4
  %83 = alloca [4 x float], align 4
  %84 = alloca [4 x float], align 4
  %85 = alloca [4 x float], align 4
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = fmul fast float %87, %74
  %89 = fmul fast float %87, %75
  %90 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %91 = call float @dx.op.unary.f32(i32 25, float %90)  ; Rsqrt(value)
  %92 = fmul fast float %91, %71
  %93 = fmul fast float %91, %72
  %94 = fmul fast float %91, %73
  %95 = xor i1 %66, true
  %96 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %97 = extractvalue %dx.types.ResRet.i32 %96, 0
  %98 = icmp eq i32 %97, 0
  %99 = and i1 %98, %95
  %100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.i32 %100, 0
  %102 = and i32 %101, 256
  %103 = icmp ne i32 %102, 0
  %104 = and i1 %99, %103
  %105 = or i1 %66, %104
  %106 = select i1 %105, float 1.000000e+00, float -1.000000e+00
  %107 = fmul fast float %92, %106
  %108 = fmul fast float %93, %106
  %109 = fmul fast float %94, %106
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %113 = fmul fast float %88, 2.000000e+00
  %114 = fmul fast float %113, %111
  %115 = fmul fast float %89, 2.000000e+00
  %116 = fmul fast float %115, %112
  %117 = fsub fast float 1.000000e+00, %114
  %118 = fsub fast float 1.000000e+00, %116
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = fmul fast float %117, %120
  %124 = fmul fast float %117, %121
  %125 = fmul fast float %117, %122
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = fmul fast float %118, %127
  %131 = fmul fast float %118, %128
  %132 = fmul fast float %118, %129
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = fadd fast float %130, %134
  %138 = fadd fast float %137, %123
  %139 = fadd fast float %131, %135
  %140 = fadd fast float %139, %124
  %141 = fadd fast float %132, %136
  %142 = fadd fast float %141, %125
  %143 = fmul fast float %138, %77
  %144 = fmul fast float %140, %77
  %145 = fmul fast float %142, %77
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %148 = call float @dx.op.unary.f32(i32 83, float %69)  ; DerivCoarseX(value)
  %149 = call float @dx.op.unary.f32(i32 83, float %70)  ; DerivCoarseX(value)
  %150 = call float @dx.op.unary.f32(i32 84, float %69)  ; DerivCoarseY(value)
  %151 = call float @dx.op.unary.f32(i32 84, float %70)  ; DerivCoarseY(value)
  %152 = fmul fast float %148, %147
  %153 = fmul fast float %149, %147
  %154 = fmul fast float %150, %147
  %155 = fmul fast float %151, %147
  %156 = call float @dx.op.dot2.f32(i32 54, float %154, float %155, float %154, float %155)  ; Dot2(ax,ay,bx,by)
  %157 = call float @dx.op.dot2.f32(i32 54, float %152, float %153, float %152, float %153)  ; Dot2(ax,ay,bx,by)
  %158 = call float @dx.op.binary.f32(i32 35, float %157, float %156)  ; FMax(a,b)
  %159 = call float @dx.op.unary.f32(i32 23, float %158)  ; Log(value)
  %160 = fmul fast float %159, 5.000000e-01
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %163 = fadd fast float %162, %160
  %164 = call float @dx.op.binary.f32(i32 35, float %163, float 0.000000e+00)  ; FMax(a,b)
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 3
  %167 = fadd fast float %166, %164
  %168 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %169 = shl i32 %168, 16
  %170 = or i32 %169, %168
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %174 = fadd fast float %172, %143
  %175 = fadd fast float %173, %144
  %176 = fmul fast float %174, 0x3F53C37960000000
  %177 = fmul fast float %175, 0x3F53C37960000000
  %178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %178, float %176, float %177, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %183 = fmul fast float %182, %180
  %184 = shl i32 %67, 3
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = and i32 %186, 16383
  %188 = shl i32 %67, 2
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
  %201 = add nuw nsw i32 %194, 48
  %202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.f32 %202, 0
  %204 = add nuw nsw i32 %194, 60
  %205 = add nuw nsw i32 %194, 104
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = add nuw nsw i32 %194, 116
  %209 = fsub fast float 1.000000e+00, %70
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %212 = fmul fast float %211, %69
  %213 = fmul fast float %211, %209
  %214 = fadd fast float %212, %197
  %215 = fadd fast float %213, %200
  %216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = add nuw nsw i32 %194, 52
  %219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.f32 %219, 0
  %221 = add nuw nsw i32 %194, 56
  %222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = add nuw nsw i32 %194, 108
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = add nuw nsw i32 %194, 112
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 0
  %234 = fmul fast float %233, %69
  %235 = fmul fast float %233, %70
  %236 = extractvalue %dx.types.CBufRet.f32 %232, 1
  %237 = fadd fast float %234, %236
  %238 = fadd fast float %235, %236
  %239 = add i32 %225, 0
  %240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %239, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %241 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %240, i32 0)  ; GetDimensions(handle,mipLevel)
  %242 = extractvalue %dx.types.Dimensions %241, 0
  %243 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %242)  ; FirstbitLo(value)
  %244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.i32 %244, 1
  %246 = sub nsw i32 %245, %243
  %247 = sitofp i32 %246 to float
  %248 = fsub fast float %167, %247
  %249 = call float @dx.op.binary.f32(i32 35, float %248, float 0.000000e+00)  ; FMax(a,b)
  %250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %240, %dx.types.Handle %55, float %237, float %238, float %217, float undef, i32 0, i32 0, i32 undef, float %249)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = extractvalue %dx.types.ResRet.f32 %250, 1
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 3
  %255 = fmul fast float %254, 2.000000e+00
  %256 = fmul fast float %255, %251
  %257 = fmul fast float %255, %252
  %258 = fsub fast float %256, %254
  %259 = fsub fast float %257, %254
  %260 = fmul fast float %258, %258
  %261 = fmul fast float %259, %259
  %262 = fadd fast float %260, %261
  %263 = call float @dx.op.unary.f32(i32 24, float %262)  ; Sqrt(value)
  %264 = add i32 %228, 0
  %265 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %264, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %266 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %265, i32 0)  ; GetDimensions(handle,mipLevel)
  %267 = extractvalue %dx.types.Dimensions %266, 0
  %268 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %267)  ; FirstbitLo(value)
  %269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.i32 %269, 1
  %271 = sub nsw i32 %270, %268
  %272 = sitofp i32 %271 to float
  %273 = fsub fast float %167, %272
  %274 = call float @dx.op.binary.f32(i32 35, float %273, float 0.000000e+00)  ; FMax(a,b)
  %275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %265, %dx.types.Handle %55, float %237, float %238, float %220, float undef, i32 0, i32 0, i32 undef, float %274)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = add i32 %231, 0
  %278 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %277, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %279 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %278, i32 0)  ; GetDimensions(handle,mipLevel)
  %280 = extractvalue %dx.types.Dimensions %279, 0
  %281 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %280)  ; FirstbitLo(value)
  %282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.i32 %282, 1
  %284 = sub nsw i32 %283, %281
  %285 = sitofp i32 %284 to float
  %286 = fsub fast float %167, %285
  %287 = call float @dx.op.binary.f32(i32 35, float %286, float 0.000000e+00)  ; FMax(a,b)
  %288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %278, %dx.types.Handle %55, float %237, float %238, float %223, float undef, i32 0, i32 0, i32 undef, float %287)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.i32 %290, 0
  %292 = call i32 @dx.op.binary.i32(i32 40, i32 %187, i32 %291)  ; UMin(a,b)
  %293 = mul i32 %292, 36
  %294 = add i32 %293, 4
  %295 = icmp eq i32 %191, 0
  br i1 %295, label %1051, label %296

; <label>:296                                     ; preds = %0
  br label %297

; <label>:297                                     ; preds = %1041, %296
  %298 = phi i32 [ %1042, %1041 ], [ %193, %296 ]
  %299 = phi float [ %1043, %1041 ], [ 0.000000e+00, %296 ]
  %300 = phi float [ %1044, %1041 ], [ 0.000000e+00, %296 ]
  %301 = phi i32 [ %310, %1041 ], [ %191, %296 ]
  %302 = phi i32 [ %1045, %1041 ], [ %170, %296 ]
  %303 = phi i32 [ %1046, %1041 ], [ %170, %296 ]
  %304 = phi i32 [ %1047, %1041 ], [ %170, %296 ]
  %305 = phi i32 [ %1048, %1041 ], [ %170, %296 ]
  %306 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %301)  ; FirstbitLo(value)
  %307 = and i32 %306, 31
  %308 = shl i32 1, %307
  %309 = xor i32 %308, -1
  %310 = and i32 %301, %309
  %311 = shl i32 %306, 2
  %312 = add i32 %204, %311
  %313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.f32 %313, 0
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 0
  %317 = fmul fast float %316, %69
  %318 = fmul fast float %316, %70
  %319 = extractvalue %dx.types.CBufRet.f32 %315, 1
  %320 = fadd fast float %317, %319
  %321 = fadd fast float %318, %319
  %322 = add i32 %208, %311
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = add i32 %324, 0
  %326 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %325, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %327 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %326, i32 0)  ; GetDimensions(handle,mipLevel)
  %328 = extractvalue %dx.types.Dimensions %327, 0
  %329 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %328)  ; FirstbitLo(value)
  %330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.i32 %330, 1
  %332 = sub nsw i32 %331, %329
  %333 = sitofp i32 %332 to float
  %334 = fsub fast float %167, %333
  %335 = call float @dx.op.binary.f32(i32 35, float %334, float 0.000000e+00)  ; FMax(a,b)
  %336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %326, %dx.types.Handle %55, float %320, float %321, float %314, float undef, i32 0, i32 0, i32 undef, float %335)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %337 = extractvalue %dx.types.ResRet.f32 %336, 0
  %338 = fcmp fast ogt float %337, 0.000000e+00
  br i1 %338, label %339, label %1041

; <label>:339                                     ; preds = %297
  %340 = add i32 %294, %311
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 32767
  %344 = mul nuw nsw i32 %343, 928
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = or i32 %344, 8
  %348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.f32 %348, 0
  %350 = or i32 %344, 12
  %351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.f32 %351, 1
  %353 = or i32 %344, 20
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = or i32 %344, 24
  %357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.f32 %357, 0
  %359 = extractvalue %dx.types.ResRet.f32 %357, 1
  %360 = extractvalue %dx.types.ResRet.f32 %357, 2
  %361 = extractvalue %dx.types.ResRet.f32 %357, 3
  %362 = add nuw nsw i32 %344, 40
  %363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 0
  %365 = add nuw nsw i32 %344, 72
  %366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.f32 %366, 0
  %368 = extractvalue %dx.types.ResRet.f32 %366, 1
  %369 = add nuw nsw i32 %344, 80
  %370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  %372 = add nuw nsw i32 %344, 228
  %373 = add nuw nsw i32 %344, 516
  %374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.f32 %374, 1
  %376 = add nuw nsw i32 %344, 528
  %377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = extractvalue %dx.types.ResRet.f32 %377, 1
  %380 = add nuw nsw i32 %344, 540
  %381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.f32 %381, 0
  %383 = extractvalue %dx.types.ResRet.f32 %381, 1
  %384 = add nuw nsw i32 %344, 548
  %385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = add nuw nsw i32 %344, 552
  %388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = extractvalue %dx.types.ResRet.f32 %388, 2
  %392 = add nuw nsw i32 %344, 596
  %393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.f32 %393, 0
  %395 = extractvalue %dx.types.ResRet.f32 %393, 1
  %396 = add nuw nsw i32 %344, 620
  %397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.f32 %397, 0
  %399 = extractvalue %dx.types.ResRet.f32 %397, 1
  %400 = add nuw nsw i32 %344, 628
  %401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 0
  %403 = extractvalue %dx.types.ResRet.f32 %401, 1
  %404 = extractvalue %dx.types.ResRet.f32 %401, 2
  %405 = extractvalue %dx.types.ResRet.f32 %401, 3
  %406 = add nuw nsw i32 %344, 648
  %407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = add nuw nsw i32 %344, 812
  %410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.f32 %410, 0
  %412 = add nuw nsw i32 %344, 816
  %413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.f32 %413, 1
  %415 = add nuw nsw i32 %344, 852
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = add nuw nsw i32 %344, 860
  %419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 2
  %421 = add nuw nsw i32 %344, 896
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = add nuw nsw i32 %344, 900
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = add nuw nsw i32 %344, 904
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = lshr i32 %298, 24
  %431 = uitofp i32 %430 to float
  %432 = fmul fast float %431, 0x3F70101020000000
  %433 = and i32 %346, 128
  %434 = icmp ne i32 %433, 0
  %435 = extractvalue %dx.types.CBufRet.i32 %330, 0
  %436 = and i32 %435, 512
  %437 = icmp ne i32 %436, 0
  %438 = and i1 %434, %437
  %439 = select i1 %438, float 0.000000e+00, float %337
  %440 = fadd fast float %439, %432
  %441 = call float @dx.op.unary.f32(i32 7, float %440)  ; Saturate(value)
  %442 = fmul fast float %441, 2.550000e+02
  %443 = fptoui float %442 to i32
  %444 = shl i32 %443, 24
  %445 = and i32 %298, 16777215
  %446 = or i32 %444, %445
  %447 = fcmp fast ole float %68, 0x3FA4B5DCC0000000
  %448 = fmul fast float %68, 0x3FB3D07220000000
  %449 = fadd fast float %68, 0x3FAC28F5C0000000
  %450 = fmul fast float %449, 0x3FEE54EDE0000000
  %451 = call float @dx.op.unary.f32(i32 23, float %450)  ; Log(value)
  %452 = fmul fast float %451, 0x4003333340000000
  %453 = call float @dx.op.unary.f32(i32 21, float %452)  ; Exp(value)
  %454 = select i1 %447, float %448, float %453
  %455 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %456 = fmul fast float %394, %276
  %457 = fadd fast float %456, %395
  %458 = call float @dx.op.unary.f32(i32 7, float %457)  ; Saturate(value)
  %459 = call float @dx.op.binary.f32(i32 35, float %455, float %458)  ; FMax(a,b)
  %460 = add i32 %426, 0
  %461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %460, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.f32 %462, 0
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 0
  %466 = extractvalue %dx.types.CBufRet.f32 %464, 1
  %467 = fadd fast float %465, %143
  %468 = fadd fast float %466, %144
  %469 = fmul fast float %143, %143
  %470 = fmul fast float %144, %144
  %471 = fadd fast float %469, %470
  %472 = fmul fast float %145, %145
  %473 = fadd fast float %471, %472
  %474 = call float @dx.op.unary.f32(i32 24, float %473)  ; Sqrt(value)
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 0
  %477 = fcmp fast ogt float %474, %476
  %478 = zext i1 %477 to i32
  %479 = extractvalue %dx.types.CBufRet.f32 %475, 1
  %480 = fcmp fast ogt float %474, %479
  %481 = zext i1 %480 to i32
  %482 = add nuw nsw i32 %481, %478
  %483 = extractvalue %dx.types.CBufRet.f32 %475, 2
  %484 = fcmp fast ogt float %474, %483
  %485 = zext i1 %484 to i32
  %486 = add nuw nsw i32 %482, %485
  %487 = icmp ult i32 %486, 3
  %488 = zext i1 %487 to i32
  %489 = shl nuw nsw i32 %486, 2
  %490 = add nuw nsw i32 %489, 48
  %491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %490)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.f32 %491, 1
  %493 = fcmp fast ogt float %474, %492
  %494 = zext i1 %493 to i32
  %495 = or i32 %489, 1
  %496 = add nuw nsw i32 %495, 48
  %497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %496)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.f32 %497, 1
  %499 = fcmp fast ogt float %474, %498
  %500 = zext i1 %499 to i32
  %501 = add nuw nsw i32 %500, %494
  %502 = or i32 %489, 2
  %503 = add nuw nsw i32 %502, 48
  %504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %503)  ; CBufferLoadLegacy(handle,regIndex)
  %505 = extractvalue %dx.types.CBufRet.f32 %504, 1
  %506 = fcmp fast ogt float %474, %505
  %507 = zext i1 %506 to i32
  %508 = add nuw nsw i32 %501, %507
  %509 = add i32 %355, -1
  %510 = call i32 @dx.op.binary.i32(i32 40, i32 %508, i32 %509)  ; UMin(a,b)
  %511 = add i32 %489, %510
  %512 = call i32 @dx.op.binary.i32(i32 40, i32 %511, i32 12)  ; UMin(a,b)
  %513 = add i32 %512, 48
  %514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %513)  ; CBufferLoadLegacy(handle,regIndex)
  %515 = extractvalue %dx.types.CBufRet.f32 %514, 0
  %516 = fcmp fast oge float %474, %515
  %517 = zext i1 %516 to i32
  %518 = call i32 @dx.op.binary.i32(i32 40, i32 %355, i32 %488)  ; UMin(a,b)
  %519 = call i32 @dx.op.binary.i32(i32 40, i32 %517, i32 %518)  ; UMin(a,b)
  %520 = add i32 %519, %355
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %700, label %522

; <label>:522                                     ; preds = %339
  br label %523

; <label>:523                                     ; preds = %523, %522
  %524 = phi float [ %696, %523 ], [ 0.000000e+00, %522 ]
  %525 = phi float [ %688, %523 ], [ 0.000000e+00, %522 ]
  %526 = phi float [ %689, %523 ], [ 0.000000e+00, %522 ]
  %527 = phi i32 [ %535, %523 ], [ %512, %522 ]
  %528 = phi i32 [ %697, %523 ], [ 0, %522 ]
  %529 = add i32 %528, %527
  %530 = and i32 %529, -4
  %531 = add i32 %530, %355
  %532 = icmp uge i32 %529, %531
  %533 = sub i32 4, %355
  %534 = select i1 %532, i32 %533, i32 0
  %535 = add i32 %534, %527
  %536 = add i32 %534, %529
  %537 = and i32 %536, 3
  %538 = lshr i32 %536, 2
  %539 = add i32 %536, 32
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %539)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 0
  %542 = extractvalue %dx.types.CBufRet.f32 %540, 1
  %543 = extractvalue %dx.types.CBufRet.f32 %540, 2
  %544 = extractvalue %dx.types.CBufRet.f32 %540, 3
  %545 = fmul fast float %541, %474
  %546 = fadd fast float %545, %542
  %547 = call float @dx.op.unary.f32(i32 7, float %546)  ; Saturate(value)
  %548 = fmul fast float %543, %474
  %549 = fadd fast float %548, %544
  %550 = call float @dx.op.unary.f32(i32 7, float %549)  ; Saturate(value)
  %551 = call float @dx.op.binary.f32(i32 36, float %547, float %550)  ; FMin(a,b)
  %552 = mul nuw nsw i32 %537, 72
  %553 = add nuw nsw i32 %372, %552
  %554 = add nuw nsw i32 %553, 16
  %555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 0
  %557 = extractvalue %dx.types.ResRet.f32 %555, 1
  %558 = extractvalue %dx.types.ResRet.f32 %555, 2
  %559 = extractvalue %dx.types.ResRet.f32 %555, 3
  %560 = add nuw nsw i32 %553, 36
  %561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.f32 %561, 0
  %563 = add nuw nsw i32 %553, 56
  %564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.f32 %564, 0
  %566 = fmul fast float %263, 3.906250e-03
  %567 = fmul fast float %566, %371
  %568 = fmul fast float %567, %562
  %569 = fmul fast float %568, %565
  %570 = extractvalue %dx.types.ResRet.f32 %564, 1
  %571 = fadd fast float %569, %570
  %572 = call float @dx.op.binary.f32(i32 35, float %571, float 0.000000e+00)  ; FMax(a,b)
  %573 = add nuw nsw i32 %553, 32
  %574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = fmul fast float %562, %258
  %577 = fmul fast float %562, %259
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 1
  %580 = add nuw nsw i32 %553, 40
  %581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.f32 %581, 0
  %583 = extractvalue %dx.types.ResRet.f32 %581, 1
  %584 = extractvalue %dx.types.ResRet.f32 %581, 2
  %585 = extractvalue %dx.types.ResRet.f32 %581, 3
  %586 = fadd fast float %579, %183
  %587 = fadd fast float %586, %584
  %588 = fmul fast float %586, %583
  %589 = call float @dx.op.unary.f32(i32 29, float %588)  ; Round_z(value)
  %590 = fmul fast float %582, %589
  %591 = fsub fast float %586, %590
  %592 = fmul fast float %587, %583
  %593 = call float @dx.op.unary.f32(i32 29, float %592)  ; Round_z(value)
  %594 = fmul fast float %593, %582
  %595 = fsub fast float %587, %594
  %596 = fmul fast float %591, %576
  %597 = fmul fast float %591, %577
  %598 = fmul fast float %595, %576
  %599 = fmul fast float %595, %577
  %600 = fsub fast float %467, %596
  %601 = fsub fast float %468, %597
  %602 = fsub fast float %467, %598
  %603 = fsub fast float %468, %599
  %604 = fsub fast float %584, %591
  %605 = call float @dx.op.unary.f32(i32 6, float %604)  ; FAbs(value)
  %606 = fmul fast float %605, %585
  %607 = call float @dx.op.unary.f32(i32 7, float %606)  ; Saturate(value)
  %608 = fmul fast float %349, 4.000000e+00
  %609 = uitofp i32 %538 to float
  %610 = fadd fast float %609, %608
  %611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.f32 %611, 0
  %613 = extractvalue %dx.types.CBufRet.f32 %611, 1
  %614 = extractvalue %dx.types.CBufRet.f32 %611, 2
  %615 = extractvalue %dx.types.CBufRet.f32 %611, 3
  %616 = getelementptr inbounds [4 x float], [4 x float]* %64, i32 0, i32 0
  store float %612, float* %616, align 4
  %617 = getelementptr inbounds [4 x float], [4 x float]* %64, i32 0, i32 1
  store float %613, float* %617, align 4
  %618 = getelementptr inbounds [4 x float], [4 x float]* %64, i32 0, i32 2
  store float %614, float* %618, align 4
  %619 = getelementptr inbounds [4 x float], [4 x float]* %64, i32 0, i32 3
  store float %615, float* %619, align 4
  %620 = getelementptr inbounds [4 x float], [4 x float]* %64, i32 0, i32 %538
  %621 = load float, float* %620, align 4, !tbaa !98, !noalias !102
  %622 = fmul fast float %621, %352
  %623 = fmul fast float %600, %556
  %624 = call float @dx.op.tertiary.f32(i32 46, float %557, float %601, float %623)  ; FMad(a,b,c)
  %625 = fmul fast float %600, %558
  %626 = call float @dx.op.tertiary.f32(i32 46, float %559, float %601, float %625)  ; FMad(a,b,c)
  %627 = add nuw nsw i32 %553, 8
  %628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.f32 %628, 0
  %630 = extractvalue %dx.types.ResRet.f32 %628, 1
  %631 = fadd fast float %629, %624
  %632 = fadd fast float %630, %626
  %633 = fmul fast float %631, %622
  %634 = fmul fast float %632, %622
  %635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.f32 %635, 0
  %637 = extractvalue %dx.types.ResRet.f32 %635, 1
  %638 = fmul fast float %633, %636
  %639 = fmul fast float %634, %637
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 2
  %642 = fadd fast float %638, %641
  %643 = fadd fast float %639, %641
  %644 = fmul fast float %602, %556
  %645 = call float @dx.op.tertiary.f32(i32 46, float %557, float %603, float %644)  ; FMad(a,b,c)
  %646 = fmul fast float %602, %558
  %647 = call float @dx.op.tertiary.f32(i32 46, float %559, float %603, float %646)  ; FMad(a,b,c)
  %648 = fadd fast float %629, %645
  %649 = fadd fast float %630, %647
  %650 = fmul fast float %648, %622
  %651 = fmul fast float %649, %622
  %652 = fmul fast float %650, %636
  %653 = fmul fast float %651, %637
  %654 = fadd fast float %652, %641
  %655 = fadd fast float %653, %641
  %656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %56, float %642, float %643, float %610, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %657 = extractvalue %dx.types.ResRet.f32 %656, 0
  %658 = extractvalue %dx.types.ResRet.f32 %656, 1
  %659 = extractvalue %dx.types.ResRet.f32 %656, 3
  %660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %56, float %654, float %655, float %610, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %661 = extractvalue %dx.types.ResRet.f32 %660, 0
  %662 = extractvalue %dx.types.ResRet.f32 %660, 1
  %663 = extractvalue %dx.types.ResRet.f32 %660, 3
  %664 = fsub fast float %661, %657
  %665 = fsub fast float %662, %658
  %666 = fsub fast float %663, %659
  %667 = fmul fast float %664, %607
  %668 = fmul fast float %665, %607
  %669 = fmul fast float %666, %607
  %670 = fadd fast float %667, %657
  %671 = fadd fast float %668, %658
  %672 = fadd fast float %669, %659
  %673 = fmul fast float %670, 2.000000e+00
  %674 = fmul fast float %671, 2.000000e+00
  %675 = fadd fast float %673, -1.000000e+00
  %676 = fadd fast float %674, -1.000000e+00
  %677 = fmul fast float %675, %556
  %678 = call float @dx.op.tertiary.f32(i32 46, float %676, float %558, float %677)  ; FMad(a,b,c)
  %679 = fmul fast float %675, %557
  %680 = call float @dx.op.tertiary.f32(i32 46, float %676, float %559, float %679)  ; FMad(a,b,c)
  %681 = fmul fast float %551, %463
  %682 = fmul fast float %681, %572
  %683 = fmul fast float %682, %575
  %684 = fmul fast float %678, %683
  %685 = fmul fast float %684, %636
  %686 = fmul fast float %680, %683
  %687 = fmul fast float %686, %637
  %688 = fadd fast float %685, %525
  %689 = fadd fast float %687, %526
  %690 = add nuw nsw i32 %553, 64
  %691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.f32 %691, 0
  %693 = fmul fast float %692, %672
  %694 = extractvalue %dx.types.ResRet.f32 %691, 1
  %695 = fadd fast float %693, %694
  %696 = call float @dx.op.binary.f32(i32 35, float %524, float %695)  ; FMax(a,b)
  %697 = add nuw i32 %528, 1
  %698 = icmp eq i32 %697, %520
  br i1 %698, label %699, label %523

; <label>:699                                     ; preds = %523
  br label %700

; <label>:700                                     ; preds = %699, %339
  %701 = phi float [ 0.000000e+00, %339 ], [ %696, %699 ]
  %702 = phi float [ 0.000000e+00, %339 ], [ %688, %699 ]
  %703 = phi float [ 0.000000e+00, %339 ], [ %689, %699 ]
  %704 = call float @dx.op.dot3.f32(i32 55, float %702, float %703, float 1.000000e+00, float %702, float %703, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %705 = call float @dx.op.unary.f32(i32 25, float %704)  ; Rsqrt(value)
  %706 = fmul fast float %701, %398
  %707 = fadd fast float %706, %399
  %708 = call float @dx.op.unary.f32(i32 7, float %707)  ; Saturate(value)
  %709 = fmul fast float %702, %337
  %710 = fmul fast float %709, %705
  %711 = fmul fast float %703, %337
  %712 = fmul fast float %711, %705
  %713 = fadd fast float %710, %299
  %714 = fadd fast float %712, %300
  %715 = fadd fast float %708, %459
  %716 = icmp ne i32 %417, 0
  %717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %718 = extractvalue %dx.types.CBufRet.f32 %717, 0
  %719 = fmul fast float %718, %77
  %720 = extractvalue %dx.types.CBufRet.f32 %717, 1
  %721 = fadd fast float %719, %720
  %722 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %723 = fmul fast float %463, %722
  %724 = select i1 %716, float %723, float 0.000000e+00
  %725 = fcmp fast ogt float %724, 0.000000e+00
  br i1 %725, label %726, label %857

; <label>:726                                     ; preds = %700
  %727 = add i32 %207, 0
  %728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %727, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %729 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %728, i32 0)  ; GetDimensions(handle,mipLevel)
  %730 = extractvalue %dx.types.Dimensions %729, 0
  %731 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %730)  ; FirstbitLo(value)
  %732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %733 = extractvalue %dx.types.CBufRet.i32 %732, 1
  %734 = sub nsw i32 %733, %731
  %735 = sitofp i32 %734 to float
  %736 = fsub fast float %391, %735
  %737 = call float @dx.op.binary.f32(i32 35, float %736, float 0.000000e+00)  ; FMax(a,b)
  %738 = fmul fast float %375, %214
  %739 = fmul fast float %375, %215
  %740 = fmul fast float %389, %69
  %741 = fmul fast float %389, %70
  %742 = call float @dx.op.unary.f32(i32 22, float %740)  ; Frc(value)
  %743 = call float @dx.op.unary.f32(i32 22, float %741)  ; Frc(value)
  %744 = fmul fast float %742, 2.000000e+00
  %745 = fmul fast float %743, 2.000000e+00
  %746 = fadd fast float %744, -1.000000e+00
  %747 = fadd fast float %745, -1.000000e+00
  %748 = call float @dx.op.unary.f32(i32 6, float %746)  ; FAbs(value)
  %749 = call float @dx.op.unary.f32(i32 6, float %747)  ; FAbs(value)
  %750 = fsub fast float 1.000000e+00, %748
  %751 = fmul fast float %750, %749
  %752 = fsub fast float %750, %751
  %753 = getelementptr [4 x float], [4 x float]* %85, i32 0, i32 0
  store float %752, float* %753, align 4, !tbaa !98, !noalias !107
  %754 = fmul fast float %749, %748
  %755 = fsub fast float %748, %754
  %756 = getelementptr [4 x float], [4 x float]* %85, i32 0, i32 1
  store float %755, float* %756, align 4, !tbaa !98, !noalias !107
  %757 = getelementptr [4 x float], [4 x float]* %85, i32 0, i32 2
  store float %751, float* %757, align 4, !tbaa !98, !noalias !107
  %758 = getelementptr [4 x float], [4 x float]* %85, i32 0, i32 3
  store float %754, float* %758, align 4, !tbaa !98, !noalias !107
  br label %759

; <label>:759                                     ; preds = %759, %726
  %760 = phi i32 [ 0, %726 ], [ %854, %759 ]
  %761 = phi float [ %713, %726 ], [ %852, %759 ]
  %762 = phi float [ %714, %726 ], [ %853, %759 ]
  %763 = mul i32 %760, 2
  %764 = add i32 0, %763
  %765 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %764
  %766 = load float, float* %765, align 4
  %767 = mul i32 %760, 2
  %768 = add i32 1, %767
  %769 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %768
  %770 = load float, float* %769, align 4
  %771 = fmul fast float %766, 5.000000e-01
  %772 = fmul fast float %770, 5.000000e-01
  %773 = fsub fast float 1.000000e+00, %766
  %774 = fsub fast float 1.000000e+00, %770
  %775 = fmul fast float %773, 5.000000e-01
  %776 = fmul fast float %774, 5.000000e-01
  %777 = fadd fast float %771, %740
  %778 = fadd fast float %772, %741
  %779 = call float @dx.op.unary.f32(i32 27, float %777)  ; Round_ni(value)
  %780 = call float @dx.op.unary.f32(i32 27, float %778)  ; Round_ni(value)
  %781 = fadd fast float %779, %775
  %782 = fadd fast float %780, %776
  %783 = fmul fast float %781, %390
  %784 = fmul fast float %782, %390
  %785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %786 = extractvalue %dx.types.CBufRet.f32 %785, 0
  %787 = fmul fast float %783, %786
  %788 = fmul fast float %784, %786
  %789 = extractvalue %dx.types.CBufRet.f32 %785, 1
  %790 = fadd fast float %787, %789
  %791 = fadd fast float %788, %789
  %792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %728, %dx.types.Handle %58, float %790, float %791, float %203, float undef, i32 0, i32 0, i32 undef, float %737)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  %794 = extractvalue %dx.types.ResRet.f32 %792, 1
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 3
  %797 = fmul fast float %796, 2.000000e+00
  %798 = fmul fast float %797, %793
  %799 = fmul fast float %797, %794
  %800 = fsub fast float %798, %796
  %801 = fsub fast float %799, %796
  %802 = fmul fast float %800, %800
  %803 = fmul fast float %801, %801
  %804 = fadd fast float %802, %803
  %805 = call float @dx.op.unary.f32(i32 24, float %804)  ; Sqrt(value)
  %806 = fcmp fast ogt float %805, 0.000000e+00
  %807 = fdiv fast float 1.000000e+00, %805
  %808 = fmul fast float %800, %807
  %809 = fmul fast float %801, %807
  %810 = select i1 %806, float %808, float 0.000000e+00
  %811 = select i1 %806, float %809, float 0.000000e+00
  %812 = add i32 %417, 0
  %813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %812, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %815 = extractvalue %dx.types.CBufRet.f32 %814, 1
  %816 = fmul fast float %386, %375
  %817 = fmul fast float %816, %805
  %818 = fsub fast float -0.000000e+00, %810
  %819 = fmul fast float %811, %738
  %820 = call float @dx.op.tertiary.f32(i32 46, float %818, float %739, float %819)  ; FMad(a,b,c)
  %821 = fmul fast float %810, %738
  %822 = call float @dx.op.tertiary.f32(i32 46, float %811, float %739, float %821)  ; FMad(a,b,c)
  %823 = fmul fast float %817, %815
  %824 = fsub fast float %822, %823
  %825 = fmul fast float %820, %378
  %826 = fmul fast float %824, %379
  %827 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %828 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %813, %dx.types.Handle %827, float %825, float %826, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %829 = extractvalue %dx.types.ResRet.f32 %828, 1
  %830 = extractvalue %dx.types.ResRet.f32 %828, 3
  %831 = fadd fast float %829, %830
  %832 = fmul fast float %831, %420
  %833 = fsub fast float %832, %420
  %834 = fsub fast float %829, %830
  %835 = fmul fast float %834, %420
  %836 = fmul fast float %833, %811
  %837 = call float @dx.op.tertiary.f32(i32 46, float %810, float %835, float %836)  ; FMad(a,b,c)
  %838 = fmul fast float %833, %818
  %839 = call float @dx.op.tertiary.f32(i32 46, float %811, float %835, float %838)  ; FMad(a,b,c)
  %840 = fmul fast float %837, %378
  %841 = fmul fast float %839, %379
  %842 = fmul fast float %382, %263
  %843 = fadd fast float %842, %383
  %844 = call float @dx.op.binary.f32(i32 35, float %843, float 0.000000e+00)  ; FMax(a,b)
  %845 = fmul fast float %724, %337
  %846 = fmul fast float %845, %844
  %847 = getelementptr [4 x float], [4 x float]* %85, i32 0, i32 %760
  %848 = load float, float* %847, align 4, !tbaa !98, !noalias !107
  %849 = fmul fast float %846, %848
  %850 = fmul fast float %840, %849
  %851 = fmul fast float %841, %849
  %852 = fadd fast float %850, %761
  %853 = fadd fast float %851, %762
  %854 = add nuw nsw i32 %760, 1
  %855 = icmp eq i32 %854, 4
  br i1 %855, label %856, label %759, !llvm.loop !110

; <label>:856                                     ; preds = %759
  br label %857

; <label>:857                                     ; preds = %856, %700
  %858 = phi float [ %713, %700 ], [ %852, %856 ]
  %859 = phi float [ %714, %700 ], [ %853, %856 ]
  %860 = and i32 %346, 16
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %928, label %862

; <label>:862                                     ; preds = %857
  %863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.f32 %863, 0
  %865 = extractvalue %dx.types.CBufRet.f32 %863, 1
  %866 = fadd fast float %864, %143
  %867 = fadd fast float %865, %144
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 0
  %870 = extractvalue %dx.types.CBufRet.f32 %868, 1
  %871 = fsub fast float %866, %869
  %872 = fsub fast float %867, %870
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 2
  %875 = fmul fast float %871, %874
  %876 = fmul fast float %872, %874
  %877 = fadd fast float %875, 5.000000e-01
  %878 = fadd fast float %876, 5.000000e-01
  %879 = fcmp fast olt float %877, 0.000000e+00
  %880 = fcmp fast olt float %878, 0.000000e+00
  %881 = or i1 %879, %880
  %882 = fcmp fast oge float %877, 1.000000e+00
  %883 = fcmp fast oge float %878, 1.000000e+00
  %884 = or i1 %882, %883
  %885 = or i1 %881, %884
  br i1 %885, label %919, label %886

; <label>:886                                     ; preds = %862
  %887 = extractvalue %dx.types.CBufRet.f32 %863, 2
  %888 = fadd fast float %887, %145
  %889 = fmul fast float %874, %866
  %890 = fmul fast float %874, %867
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %893 = fsub fast float %888, %892
  %894 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %895 = fmul fast float %893, %894
  %896 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %897 = call float @dx.op.binary.f32(i32 36, float %878, float %896)  ; FMin(a,b)
  %898 = call float @dx.op.binary.f32(i32 36, float %877, float %897)  ; FMin(a,b)
  %899 = call float @dx.op.binary.f32(i32 35, float %878, float %896)  ; FMax(a,b)
  %900 = call float @dx.op.binary.f32(i32 35, float %877, float %899)  ; FMax(a,b)
  %901 = fsub fast float 1.000000e+00, %900
  %902 = call float @dx.op.binary.f32(i32 36, float %898, float %901)  ; FMin(a,b)
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 3
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 1
  %907 = call float @dx.op.binary.f32(i32 35, float %906, float %904)  ; FMax(a,b)
  %908 = fsub fast float %907, %906
  %909 = fsub fast float %902, %906
  %910 = fdiv fast float %909, %908
  %911 = call float @dx.op.unary.f32(i32 7, float %910)  ; Saturate(value)
  %912 = fmul fast float %911, 2.000000e+00
  %913 = fsub fast float 3.000000e+00, %912
  %914 = fmul fast float %911, %911
  %915 = fmul fast float %914, %913
  %916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %56, float %889, float %890, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %917 = extractvalue %dx.types.ResRet.f32 %916, 0
  %918 = fmul fast float %915, %917
  br label %919

; <label>:919                                     ; preds = %886, %862
  %920 = phi float [ %918, %886 ], [ 0.000000e+00, %862 ]
  %921 = fmul fast float %414, %214
  %922 = fmul fast float %414, %215
  %923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %461, %dx.types.Handle %923, float %921, float %922, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %925 = extractvalue %dx.types.ResRet.f32 %924, 0
  %926 = fmul fast float %925, %920
  %927 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %926)  ; FMax(a,b)
  br label %928

; <label>:928                                     ; preds = %919, %857
  %929 = phi float [ %927, %919 ], [ 0.000000e+00, %857 ]
  %930 = and i32 %346, 8
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %948, label %932

; <label>:932                                     ; preds = %928
  %933 = fadd fast float %411, 1.000000e+00
  %934 = fmul fast float %715, %933
  %935 = fsub fast float %934, %411
  %936 = fsub fast float %933, %935
  %937 = call float @dx.op.unary.f32(i32 7, float %936)  ; Saturate(value)
  %938 = fsub fast float 1.000000e+00, %934
  %939 = call float @dx.op.unary.f32(i32 7, float %938)  ; Saturate(value)
  %940 = fsub fast float %937, %939
  %941 = fsub fast float %929, %939
  %942 = fdiv fast float %941, %940
  %943 = call float @dx.op.unary.f32(i32 7, float %942)  ; Saturate(value)
  %944 = fmul fast float %943, 2.000000e+00
  %945 = fsub fast float 3.000000e+00, %944
  %946 = fmul fast float %943, %943
  %947 = fmul fast float %946, %945
  br label %948

; <label>:948                                     ; preds = %932, %928
  %949 = phi float [ %947, %932 ], [ %929, %928 ]
  %950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %951 = extractvalue %dx.types.CBufRet.f32 %950, 3
  %952 = fmul fast float %951, %949
  %953 = and i32 %346, 32
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %971, label %955

; <label>:955                                     ; preds = %948
  %956 = add i32 %429, 0
  %957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %956, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %957, %dx.types.Handle %57, float %952, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %959 = extractvalue %dx.types.ResRet.f32 %958, 0
  %960 = extractvalue %dx.types.ResRet.f32 %958, 1
  %961 = extractvalue %dx.types.ResRet.f32 %958, 2
  %962 = extractvalue %dx.types.ResRet.f32 %958, 3
  %963 = and i32 %423, 255
  %964 = uitofp i32 %963 to float
  %965 = lshr i32 %423, 8
  %966 = and i32 %965, 255
  %967 = uitofp i32 %966 to float
  %968 = fmul fast float %962, %964
  %969 = fadd fast float %968, %967
  %970 = fmul fast float %969, 0x3F70101000000000
  br label %971

; <label>:971                                     ; preds = %955, %948
  %972 = phi float [ %959, %955 ], [ %402, %948 ]
  %973 = phi float [ %960, %955 ], [ %403, %948 ]
  %974 = phi float [ %961, %955 ], [ %404, %948 ]
  %975 = phi float [ %970, %955 ], [ %405, %948 ]
  %976 = fsub fast float %972, %358
  %977 = fsub fast float %973, %359
  %978 = fsub fast float %974, %360
  %979 = fmul fast float %976, %952
  %980 = fmul fast float %977, %952
  %981 = fmul fast float %978, %952
  %982 = fadd fast float %979, %358
  %983 = fadd fast float %980, %359
  %984 = fadd fast float %981, %360
  %985 = fsub fast float %975, %361
  %986 = fmul fast float %985, %952
  %987 = fadd fast float %986, %361
  %988 = fmul fast float %367, %289
  %989 = fadd fast float %988, %368
  %990 = and i32 %302, 65535
  %991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %990)  ; LegacyF16ToF32(value)
  %992 = lshr i32 %302, 16
  %993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %992)  ; LegacyF16ToF32(value)
  %994 = and i32 %303, 65535
  %995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %994)  ; LegacyF16ToF32(value)
  %996 = lshr i32 %303, 16
  %997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %996)  ; LegacyF16ToF32(value)
  %998 = fmul fast float %982, %337
  %999 = fmul fast float %983, %337
  %1000 = fmul fast float %984, %337
  %1001 = fmul fast float %987, %337
  %1002 = fadd fast float %991, %998
  %1003 = fadd fast float %993, %999
  %1004 = fadd fast float %995, %1000
  %1005 = fadd fast float %997, %1001
  %1006 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1002)  ; LegacyF32ToF16(value)
  %1007 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1003)  ; LegacyF32ToF16(value)
  %1008 = shl i32 %1007, 16
  %1009 = or i32 %1008, %1006
  %1010 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1004)  ; LegacyF32ToF16(value)
  %1011 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1005)  ; LegacyF32ToF16(value)
  %1012 = shl i32 %1011, 16
  %1013 = or i32 %1012, %1010
  %1014 = and i32 %305, 65535
  %1015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1014)  ; LegacyF16ToF32(value)
  %1016 = lshr i32 %305, 16
  %1017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1016)  ; LegacyF16ToF32(value)
  %1018 = fmul fast float %364, %337
  %1019 = fadd fast float %1015, %337
  %1020 = fadd fast float %1017, %1018
  %1021 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1019)  ; LegacyF32ToF16(value)
  %1022 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1020)  ; LegacyF32ToF16(value)
  %1023 = shl i32 %1022, 16
  %1024 = or i32 %1023, %1021
  %1025 = fcmp fast ogt float %989, 0.000000e+00
  %1026 = select i1 %1025, float 1.000000e+00, float 0.000000e+00
  %1027 = and i32 %304, 65535
  %1028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1027)  ; LegacyF16ToF32(value)
  %1029 = lshr i32 %304, 16
  %1030 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1029)  ; LegacyF16ToF32(value)
  %1031 = fmul fast float %989, %337
  %1032 = fmul fast float %1026, %337
  %1033 = fadd fast float %1028, %1031
  %1034 = fadd fast float %1030, %1032
  %1035 = call float @dx.op.unary.f32(i32 7, float %1033)  ; Saturate(value)
  %1036 = call float @dx.op.unary.f32(i32 7, float %1034)  ; Saturate(value)
  %1037 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1035)  ; LegacyF32ToF16(value)
  %1038 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1036)  ; LegacyF32ToF16(value)
  %1039 = shl i32 %1038, 16
  %1040 = or i32 %1039, %1037
  br label %1041

; <label>:1041                                    ; preds = %971, %297
  %1042 = phi i32 [ %446, %971 ], [ %298, %297 ]
  %1043 = phi float [ %858, %971 ], [ %299, %297 ]
  %1044 = phi float [ %859, %971 ], [ %300, %297 ]
  %1045 = phi i32 [ %1009, %971 ], [ %302, %297 ]
  %1046 = phi i32 [ %1013, %971 ], [ %303, %297 ]
  %1047 = phi i32 [ %1040, %971 ], [ %304, %297 ]
  %1048 = phi i32 [ %1024, %971 ], [ %305, %297 ]
  %1049 = icmp eq i32 %310, 0
  br i1 %1049, label %1050, label %297

; <label>:1050                                    ; preds = %1041
  br label %1051

; <label>:1051                                    ; preds = %1050, %0
  %1052 = phi i32 [ %193, %0 ], [ %1042, %1050 ]
  %1053 = phi float [ 0.000000e+00, %0 ], [ %1043, %1050 ]
  %1054 = phi float [ 0.000000e+00, %0 ], [ %1044, %1050 ]
  %1055 = phi i32 [ %170, %0 ], [ %1045, %1050 ]
  %1056 = phi i32 [ %170, %0 ], [ %1046, %1050 ]
  %1057 = phi i32 [ %170, %0 ], [ %1047, %1050 ]
  %1058 = phi i32 [ %170, %0 ], [ %1048, %1050 ]
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 2
  %1061 = fmul fast float %1060, 0x3FE3C6EF40000000
  %1062 = frem fast float %88, 2.560000e+02
  %1063 = frem fast float %89, 2.560000e+02
  %1064 = fptoui float %1062 to i32
  %1065 = fptoui float %1063 to i32
  %1066 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %33, i32 0, i32 %1064, i32 %1065, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1067 = extractvalue %dx.types.ResRet.f32 %1066, 0
  %1068 = extractvalue %dx.types.ResRet.f32 %1066, 1
  %1069 = fadd fast float %1067, %1061
  %1070 = fadd fast float %1068, %1061
  %1071 = call float @dx.op.unary.f32(i32 22, float %1069)  ; Frc(value)
  %1072 = call float @dx.op.unary.f32(i32 22, float %1070)  ; Frc(value)
  %1073 = fcmp fast ogt float %109, 0.000000e+00
  %1074 = fcmp fast olt float %109, 0.000000e+00
  %1075 = zext i1 %1073 to i32
  %1076 = zext i1 %1074 to i32
  %1077 = sub nsw i32 %1075, %1076
  %1078 = sitofp i32 %1077 to float
  %1079 = fadd fast float %1078, %109
  %1080 = fdiv fast float -1.000000e+00, %1079
  %1081 = fmul fast float %107, %108
  %1082 = fmul fast float %1081, %1080
  %1083 = fmul fast float %107, %107
  %1084 = fmul fast float %1083, %1078
  %1085 = fmul fast float %1084, %1080
  %1086 = fadd fast float %1085, 1.000000e+00
  %1087 = fmul fast float %1082, %1078
  %1088 = fmul fast float %107, %1078
  %1089 = fsub fast float -0.000000e+00, %1088
  %1090 = fmul fast float %108, %108
  %1091 = fmul fast float %1090, %1080
  %1092 = fadd fast float %1091, %1078
  %1093 = fsub fast float -0.000000e+00, %108
  %1094 = and i32 %1055, 65535
  %1095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1094)  ; LegacyF16ToF32(value)
  %1096 = lshr i32 %1055, 16
  %1097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1096)  ; LegacyF16ToF32(value)
  %1098 = and i32 %1056, 65535
  %1099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1098)  ; LegacyF16ToF32(value)
  %1100 = lshr i32 %1056, 16
  %1101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1100)  ; LegacyF16ToF32(value)
  %1102 = and i32 %1058, 65535
  %1103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1102)  ; LegacyF16ToF32(value)
  %1104 = lshr i32 %1058, 16
  %1105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1104)  ; LegacyF16ToF32(value)
  %1106 = call float @dx.op.unary.f32(i32 7, float %1105)  ; Saturate(value)
  %1107 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %1108 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %1109 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %1110 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %1111 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %1112 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %1113 = fadd fast float %1107, %143
  %1114 = fadd fast float %1108, %144
  %1115 = fadd fast float %1109, %145
  %1116 = fadd fast float %1110, %143
  %1117 = fadd fast float %1111, %144
  %1118 = fadd fast float %1112, %145
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 0
  %1121 = extractvalue %dx.types.CBufRet.f32 %1119, 1
  %1122 = extractvalue %dx.types.CBufRet.f32 %1119, 2
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 2
  %1125 = extractvalue %dx.types.CBufRet.f32 %1123, 3
  %1126 = fmul fast float %1120, %88
  %1127 = fmul fast float %1126, %1124
  %1128 = fmul fast float %1121, %89
  %1129 = fmul fast float %1128, %1125
  %1130 = fptoui float %1127 to i32
  %1131 = fptoui float %1129 to i32
  %1132 = fadd fast float %1120, -1.000000e+00
  %1133 = fadd fast float %1121, -1.000000e+00
  %1134 = fptoui float %1132 to i32
  %1135 = fptoui float %1133 to i32
  %1136 = call i32 @dx.op.binary.i32(i32 40, i32 %1130, i32 %1134)  ; UMin(a,b)
  %1137 = call i32 @dx.op.binary.i32(i32 40, i32 %1131, i32 %1135)  ; UMin(a,b)
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 2
  %1140 = extractvalue %dx.types.CBufRet.f32 %1138, 3
  %1141 = fmul fast float %1139, %77
  %1142 = fsub fast float %1141, %1140
  %1143 = fadd fast float %1122, -1.000000e+00
  %1144 = call float @dx.op.binary.f32(i32 36, float %1142, float %1143)  ; FMin(a,b)
  %1145 = fptoui float %1144 to i32
  %1146 = fptoui float %1120 to i32
  %1147 = fptoui float %1121 to i32
  %1148 = mul i32 %1145, %1147
  %1149 = add i32 %1148, %1137
  %1150 = mul i32 %1149, %1146
  %1151 = add i32 %1150, %1136
  %1152 = shl i32 %1151, 2
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = and i32 %1154, 1023
  %1156 = lshr i32 %1154, 10
  %1157 = icmp eq i32 %1155, 0
  br i1 %1157, label %1551, label %1158

; <label>:1158                                    ; preds = %1051
  %1159 = and i32 %1154, 1023
  br label %1160

; <label>:1160                                    ; preds = %1280, %1158
  %1161 = phi float [ %1281, %1280 ], [ 0.000000e+00, %1158 ]
  %1162 = phi float [ %1282, %1280 ], [ 0.000000e+00, %1158 ]
  %1163 = phi float [ %1283, %1280 ], [ 0.000000e+00, %1158 ]
  %1164 = phi float [ %1284, %1280 ], [ %1053, %1158 ]
  %1165 = phi float [ %1285, %1280 ], [ %1054, %1158 ]
  %1166 = phi float [ %1286, %1280 ], [ %1103, %1158 ]
  %1167 = phi float [ %1287, %1280 ], [ %1106, %1158 ]
  %1168 = phi float [ %1288, %1280 ], [ 0.000000e+00, %1158 ]
  %1169 = phi float [ %1289, %1280 ], [ %1101, %1158 ]
  %1170 = phi float [ %1290, %1280 ], [ %1095, %1158 ]
  %1171 = phi float [ %1291, %1280 ], [ %1097, %1158 ]
  %1172 = phi float [ %1292, %1280 ], [ %1099, %1158 ]
  %1173 = phi i32 [ %1229, %1280 ], [ 0, %1158 ]
  %1174 = add nuw nsw i32 %1173, %1156
  %1175 = shl i32 %1174, 2
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = shl i32 %1177, 8
  %1179 = or i32 %1178, 48
  %1180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1179, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.f32 %1180, 0
  %1182 = extractvalue %dx.types.ResRet.f32 %1180, 1
  %1183 = extractvalue %dx.types.ResRet.f32 %1180, 2
  %1184 = extractvalue %dx.types.ResRet.f32 %1180, 3
  %1185 = or i32 %1178, 64
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = extractvalue %dx.types.ResRet.i32 %1186, 1
  %1189 = or i32 %1178, 80
  %1190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.f32 %1190, 2
  %1192 = extractvalue %dx.types.ResRet.f32 %1190, 3
  %1193 = or i32 %1178, 96
  %1194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.ResRet.f32 %1194, 1
  %1197 = extractvalue %dx.types.ResRet.f32 %1194, 2
  %1198 = extractvalue %dx.types.ResRet.f32 %1194, 3
  %1199 = or i32 %1178, 112
  %1200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 2
  %1202 = or i32 %1178, 128
  %1203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1205 = extractvalue %dx.types.ResRet.f32 %1203, 1
  %1206 = extractvalue %dx.types.ResRet.f32 %1203, 2
  %1207 = extractvalue %dx.types.ResRet.f32 %1203, 3
  %1208 = or i32 %1178, 144
  %1209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1211 = extractvalue %dx.types.ResRet.f32 %1209, 1
  %1212 = extractvalue %dx.types.ResRet.f32 %1209, 2
  %1213 = extractvalue %dx.types.ResRet.f32 %1209, 3
  %1214 = or i32 %1178, 160
  %1215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 0
  %1217 = extractvalue %dx.types.ResRet.f32 %1215, 1
  %1218 = extractvalue %dx.types.ResRet.f32 %1215, 2
  %1219 = or i32 %1178, 192
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1219, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = or i32 %1178, 208
  %1223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = or i32 %1178, 248
  %1226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.f32 %1226, 0
  %1228 = extractvalue %dx.types.ResRet.f32 %1226, 1
  %1229 = add nuw nsw i32 %1173, 1
  %1230 = bitcast float %1184 to i32
  %1231 = and i32 %1230, 512
  %1232 = icmp ne i32 %1231, 0
  %1233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.f32 %1233, 0
  %1235 = extractvalue %dx.types.ResRet.f32 %1233, 1
  %1236 = extractvalue %dx.types.ResRet.f32 %1233, 2
  %1237 = extractvalue %dx.types.ResRet.f32 %1233, 3
  %1238 = call float @dx.op.dot4.f32(i32 56, float %1234, float %1235, float %1236, float %1237, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1239 = or i32 %1178, 16
  %1240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.f32 %1240, 0
  %1242 = extractvalue %dx.types.ResRet.f32 %1240, 1
  %1243 = extractvalue %dx.types.ResRet.f32 %1240, 2
  %1244 = extractvalue %dx.types.ResRet.f32 %1240, 3
  %1245 = call float @dx.op.dot4.f32(i32 56, float %1241, float %1242, float %1243, float %1244, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1246 = or i32 %1178, 32
  %1247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1246, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.ResRet.f32 %1247, 1
  %1250 = extractvalue %dx.types.ResRet.f32 %1247, 2
  %1251 = extractvalue %dx.types.ResRet.f32 %1247, 3
  %1252 = call float @dx.op.dot4.f32(i32 56, float %1248, float %1249, float %1250, float %1251, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1253 = call float @dx.op.unary.f32(i32 27, float %1238)  ; Round_ni(value)
  %1254 = call float @dx.op.unary.f32(i32 6, float %1253)  ; FAbs(value)
  %1255 = call float @dx.op.unary.f32(i32 27, float %1245)  ; Round_ni(value)
  %1256 = call float @dx.op.unary.f32(i32 6, float %1255)  ; FAbs(value)
  %1257 = call float @dx.op.unary.f32(i32 6, float %1252)  ; FAbs(value)
  %1258 = call float @dx.op.unary.f32(i32 27, float %1257)  ; Round_ni(value)
  %1259 = fadd fast float %1256, %1254
  %1260 = fadd fast float %1259, %1258
  %1261 = fcmp fast oeq float %1260, 0.000000e+00
  %1262 = call float @dx.op.dot4.f32(i32 56, float %1234, float %1235, float %1236, float %1237, float %1113, float %1114, float %1115, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1263 = call float @dx.op.dot4.f32(i32 56, float %1241, float %1242, float %1243, float %1244, float %1113, float %1114, float %1115, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1264 = call float @dx.op.dot4.f32(i32 56, float %1234, float %1235, float %1236, float %1237, float %1116, float %1117, float %1118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1265 = call float @dx.op.dot4.f32(i32 56, float %1241, float %1242, float %1243, float %1244, float %1116, float %1117, float %1118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1266 = fsub fast float %1262, %1238
  %1267 = fsub fast float %1264, %1238
  %1268 = fsub fast float %1263, %1245
  %1269 = fsub fast float %1265, %1245
  %1270 = call float @dx.op.dot3.f32(i32 55, float %1181, float %1182, float %1183, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 2
  %1273 = call float @dx.op.unary.f32(i32 6, float %1270)  ; FAbs(value)
  %1274 = fadd fast float %1273, %1272
  %1275 = call float @dx.op.unary.f32(i32 7, float %1274)  ; Saturate(value)
  %1276 = extractvalue %dx.types.CBufRet.f32 %1271, 0
  %1277 = fcmp fast ogt float %1275, %1276
  %1278 = and i1 %1261, %1277
  %1279 = and i1 %1232, %1278
  br i1 %1279, label %1294, label %1280

; <label>:1280                                    ; preds = %1537, %1375, %1294, %1160
  %1281 = phi float [ %1161, %1294 ], [ %1161, %1375 ], [ %1547, %1537 ], [ %1161, %1160 ]
  %1282 = phi float [ %1162, %1294 ], [ %1162, %1375 ], [ %1548, %1537 ], [ %1162, %1160 ]
  %1283 = phi float [ %1163, %1294 ], [ %1163, %1375 ], [ %1549, %1537 ], [ %1163, %1160 ]
  %1284 = phi float [ %1164, %1294 ], [ %1164, %1375 ], [ %1511, %1537 ], [ %1164, %1160 ]
  %1285 = phi float [ %1165, %1294 ], [ %1165, %1375 ], [ %1512, %1537 ], [ %1165, %1160 ]
  %1286 = phi float [ %1166, %1294 ], [ %1166, %1375 ], [ %1506, %1537 ], [ %1166, %1160 ]
  %1287 = phi float [ %1167, %1294 ], [ %1167, %1375 ], [ %1503, %1537 ], [ %1167, %1160 ]
  %1288 = phi float [ %1168, %1294 ], [ %1168, %1375 ], [ %1500, %1537 ], [ %1168, %1160 ]
  %1289 = phi float [ %1169, %1294 ], [ %1169, %1375 ], [ %1498, %1537 ], [ %1169, %1160 ]
  %1290 = phi float [ %1170, %1294 ], [ %1170, %1375 ], [ %1493, %1537 ], [ %1170, %1160 ]
  %1291 = phi float [ %1171, %1294 ], [ %1171, %1375 ], [ %1494, %1537 ], [ %1171, %1160 ]
  %1292 = phi float [ %1172, %1294 ], [ %1172, %1375 ], [ %1495, %1537 ], [ %1172, %1160 ]
  %1293 = icmp eq i32 %1229, %1159
  br i1 %1293, label %1550, label %1160

; <label>:1294                                    ; preds = %1160
  %1295 = extractvalue %dx.types.ResRet.f32 %1200, 3
  %1296 = extractvalue %dx.types.ResRet.f32 %1200, 1
  %1297 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1298 = extractvalue %dx.types.ResRet.f32 %1190, 1
  %1299 = extractvalue %dx.types.ResRet.f32 %1190, 0
  %1300 = extractvalue %dx.types.ResRet.i32 %1186, 3
  %1301 = extractvalue %dx.types.ResRet.i32 %1186, 2
  %1302 = add i32 %1300, 0
  %1303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1302, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1305 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1303, %dx.types.Handle %1304, float %1238, float %1245, float undef, float undef, i32 0, i32 0, i32 undef, float %1266, float %1268, float undef, float %1267, float %1269, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1306 = extractvalue %dx.types.ResRet.f32 %1305, 0
  %1307 = fmul fast float %1306, %1299
  %1308 = fadd fast float %1307, %1298
  %1309 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1310 = fmul fast float %1238, %1195
  %1311 = call float @dx.op.tertiary.f32(i32 46, float %1196, float %1245, float %1310)  ; FMad(a,b,c)
  %1312 = fadd fast float %1311, %1297
  %1313 = fmul fast float %1238, %1197
  %1314 = call float @dx.op.tertiary.f32(i32 46, float %1198, float %1245, float %1313)  ; FMad(a,b,c)
  %1315 = fadd fast float %1314, %1296
  %1316 = fmul fast float %1266, %1195
  %1317 = call float @dx.op.tertiary.f32(i32 46, float %1196, float %1268, float %1316)  ; FMad(a,b,c)
  %1318 = fmul fast float %1266, %1197
  %1319 = call float @dx.op.tertiary.f32(i32 46, float %1198, float %1268, float %1318)  ; FMad(a,b,c)
  %1320 = fmul fast float %1267, %1195
  %1321 = call float @dx.op.tertiary.f32(i32 46, float %1196, float %1269, float %1320)  ; FMad(a,b,c)
  %1322 = fmul fast float %1267, %1197
  %1323 = call float @dx.op.tertiary.f32(i32 46, float %1198, float %1269, float %1322)  ; FMad(a,b,c)
  %1324 = add i32 %1301, 0
  %1325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1324, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1326 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1325, %dx.types.Handle %1304, float %1312, float %1315, float undef, float undef, i32 0, i32 0, i32 undef, float %1317, float %1319, float undef, float %1321, float %1323, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1327 = extractvalue %dx.types.ResRet.f32 %1326, 0
  %1328 = and i32 %1230, 1024
  %1329 = icmp ne i32 %1328, 0
  %1330 = fcmp fast ogt float %1327, 0x3FE0101020000000
  %1331 = uitofp i1 %1330 to float
  %1332 = select i1 %1329, float %1331, float %1327
  %1333 = and i32 %1230, 8192
  %1334 = icmp ne i32 %1333, 0
  %1335 = select i1 %1334, float %1295, float 1.000000e+00
  %1336 = fmul fast float %1238, 2.000000e+00
  %1337 = fadd fast float %1336, -1.000000e+00
  %1338 = call float @dx.op.unary.f32(i32 6, float %1337)  ; FAbs(value)
  %1339 = fmul fast float %1338, %1227
  %1340 = fsub fast float %1339, %1227
  %1341 = call float @dx.op.unary.f32(i32 7, float %1340)  ; Saturate(value)
  %1342 = fmul fast float %1245, 2.000000e+00
  %1343 = fadd fast float %1342, -1.000000e+00
  %1344 = call float @dx.op.unary.f32(i32 6, float %1343)  ; FAbs(value)
  %1345 = fmul fast float %1344, %1228
  %1346 = fsub fast float %1345, %1228
  %1347 = call float @dx.op.unary.f32(i32 7, float %1346)  ; Saturate(value)
  %1348 = fmul fast float %1257, %1191
  %1349 = fsub fast float %1348, %1191
  %1350 = call float @dx.op.unary.f32(i32 7, float %1349)  ; Saturate(value)
  %1351 = fmul fast float %1309, %1335
  %1352 = fmul fast float %1351, %1306
  %1353 = fmul fast float %1352, %1341
  %1354 = fmul fast float %1353, %1332
  %1355 = fmul fast float %1354, %1347
  %1356 = fmul fast float %1355, %1350
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 1
  %1359 = extractvalue %dx.types.CBufRet.f32 %1357, 0
  %1360 = fsub fast float %1275, %1359
  %1361 = fmul fast float %1360, %1358
  %1362 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1363 = fmul fast float %1356, %1192
  %1364 = fadd fast float %1356, %1192
  %1365 = fmul fast float %1364, %1201
  %1366 = fsub fast float %1365, %1201
  %1367 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  %1368 = and i32 %1230, 128
  %1369 = icmp ne i32 %1368, 0
  %1370 = select i1 %1369, float %1367, float %1363
  %1371 = fmul fast float %1370, %1362
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 0
  %1374 = fcmp fast ugt float %1371, %1373
  br i1 %1374, label %1375, label %1280

; <label>:1375                                    ; preds = %1294
  br i1 %1334, label %1280, label %1376

; <label>:1376                                    ; preds = %1375
  %1377 = and i32 %1230, 4
  %1378 = and i32 %1230, 8
  %1379 = add i32 %1187, 0
  %1380 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1379, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1381 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1382 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1380, %dx.types.Handle %1381, float %1312, float %1315, float undef, float undef, i32 0, i32 0, i32 undef, float %1317, float %1319, float undef, float %1321, float %1323, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1383 = extractvalue %dx.types.ResRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.ResRet.f32 %1382, 1
  %1385 = extractvalue %dx.types.ResRet.f32 %1382, 2
  %1386 = extractvalue %dx.types.ResRet.f32 %1382, 3
  %1387 = bitcast float %1213 to i32
  %1388 = and i32 %1387, 255
  %1389 = uitofp i32 %1388 to float
  %1390 = lshr i32 %1387, 8
  %1391 = and i32 %1390, 255
  %1392 = uitofp i32 %1391 to float
  %1393 = fmul fast float %1386, %1389
  %1394 = fadd fast float %1393, %1392
  %1395 = fmul fast float %1394, 0x3F70101000000000
  %1396 = add i32 %1188, 0
  %1397 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1396, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1398 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1397, %dx.types.Handle %1381, float %1312, float %1315, float undef, float undef, i32 0, i32 0, i32 undef, float %1317, float %1319, float undef, float %1321, float %1323, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.ResRet.f32 %1398, 1
  %1401 = extractvalue %dx.types.ResRet.f32 %1398, 2
  %1402 = extractvalue %dx.types.ResRet.f32 %1398, 3
  %1403 = bitcast float %1207 to i32
  %1404 = and i32 %1403, 255
  %1405 = uitofp i32 %1404 to float
  %1406 = lshr i32 %1403, 8
  %1407 = and i32 %1406, 255
  %1408 = uitofp i32 %1407 to float
  %1409 = lshr i32 %1403, 16
  %1410 = and i32 %1409, 255
  %1411 = uitofp i32 %1410 to float
  %1412 = fmul fast float %1411, 0x3F70101000000000
  %1413 = fmul fast float %1399, %1405
  %1414 = fadd fast float %1413, %1408
  %1415 = fmul fast float %1414, 0x3F70101000000000
  %1416 = fadd fast float %1400, -5.000000e-01
  %1417 = fadd fast float %1402, -5.000000e-01
  %1418 = fmul fast float %1416, %1412
  %1419 = fmul fast float %1417, %1412
  %1420 = fadd fast float %1418, 5.000000e-01
  %1421 = fadd fast float %1419, 5.000000e-01
  %1422 = fmul fast float %1383, %1216
  %1423 = fmul fast float %1384, %1217
  %1424 = fmul fast float %1385, %1218
  %1425 = fmul fast float %1420, 2.000000e+00
  %1426 = fadd fast float %1425, -1.000000e+00
  %1427 = fmul fast float %1421, 2.000000e+00
  %1428 = fadd fast float %1427, -1.000000e+00
  %1429 = fadd fast float %1426, %1428
  %1430 = fmul fast float %1429, 5.000000e-01
  %1431 = fsub fast float %1426, %1428
  %1432 = fmul fast float %1431, 5.000000e-01
  %1433 = call float @dx.op.unary.f32(i32 6, float %1430)  ; FAbs(value)
  %1434 = fsub fast float 1.000000e+00, %1433
  %1435 = call float @dx.op.unary.f32(i32 6, float %1432)  ; FAbs(value)
  %1436 = fsub fast float %1434, %1435
  %1437 = call float @dx.op.dot3.f32(i32 55, float %1430, float %1432, float %1436, float %1430, float %1432, float %1436)  ; Dot3(ax,ay,az,bx,by,bz)
  %1438 = call float @dx.op.unary.f32(i32 25, float %1437)  ; Rsqrt(value)
  %1439 = fmul fast float %1430, %1438
  %1440 = fmul fast float %1432, %1438
  %1441 = fmul fast float %1438, %1436
  %1442 = fmul fast float %1441, %1181
  %1443 = fmul fast float %1441, %1182
  %1444 = fmul fast float %1441, %1183
  %1445 = fmul fast float %1439, %1204
  %1446 = fmul fast float %1439, %1205
  %1447 = fmul fast float %1439, %1206
  %1448 = fadd fast float %1445, %1442
  %1449 = fadd fast float %1446, %1443
  %1450 = fadd fast float %1447, %1444
  %1451 = fmul fast float %1440, %1210
  %1452 = fmul fast float %1440, %1211
  %1453 = fmul fast float %1440, %1212
  %1454 = fadd fast float %1448, %1451
  %1455 = fadd fast float %1449, %1452
  %1456 = fadd fast float %1450, %1453
  %1457 = call float @dx.op.dot3.f32(i32 55, float %1454, float %1455, float %1456, float %1454, float %1455, float %1456)  ; Dot3(ax,ay,az,bx,by,bz)
  %1458 = call float @dx.op.unary.f32(i32 25, float %1457)  ; Rsqrt(value)
  %1459 = fmul fast float %1454, %1458
  %1460 = fmul fast float %1455, %1458
  %1461 = fmul fast float %1456, %1458
  %1462 = fcmp fast ogt float %1270, %1276
  %1463 = fsub fast float -0.000000e+00, %1459
  %1464 = fsub fast float -0.000000e+00, %1460
  %1465 = fsub fast float -0.000000e+00, %1461
  %1466 = select i1 %1462, float %1459, float %1463
  %1467 = select i1 %1462, float %1460, float %1464
  %1468 = select i1 %1462, float %1461, float %1465
  %1469 = fmul fast float %1466, %1086
  %1470 = call float @dx.op.tertiary.f32(i32 46, float %1467, float %1087, float %1469)  ; FMad(a,b,c)
  %1471 = call float @dx.op.tertiary.f32(i32 46, float %1468, float %1089, float %1470)  ; FMad(a,b,c)
  %1472 = fmul fast float %1466, %1082
  %1473 = call float @dx.op.tertiary.f32(i32 46, float %1467, float %1092, float %1472)  ; FMad(a,b,c)
  %1474 = call float @dx.op.tertiary.f32(i32 46, float %1468, float %1093, float %1473)  ; FMad(a,b,c)
  %1475 = icmp ne i32 %1378, 0
  %1476 = select i1 %1475, float 1.000000e+00, float 0.000000e+00
  %1477 = fmul fast float %1371, %1476
  %1478 = and i32 %1230, 1
  %1479 = icmp ne i32 %1478, 0
  %1480 = fadd fast float %1471, %1164
  %1481 = fadd fast float %1474, %1165
  %1482 = select i1 %1479, float %1480, float %1471
  %1483 = select i1 %1479, float %1481, float %1474
  %1484 = icmp ne i32 %1377, 0
  %1485 = select i1 %1484, float 1.000000e+00, float 0.000000e+00
  %1486 = fmul fast float %1371, %1485
  %1487 = fsub fast float %1422, %1170
  %1488 = fsub fast float %1423, %1171
  %1489 = fsub fast float %1424, %1172
  %1490 = fmul fast float %1487, %1486
  %1491 = fmul fast float %1488, %1486
  %1492 = fmul fast float %1489, %1486
  %1493 = fadd fast float %1490, %1170
  %1494 = fadd fast float %1491, %1171
  %1495 = fadd fast float %1492, %1172
  %1496 = fsub fast float %1395, %1169
  %1497 = fmul fast float %1496, %1486
  %1498 = fadd fast float %1497, %1169
  %1499 = fadd fast float %1371, %1168
  %1500 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  %1501 = fsub fast float %1415, %1167
  %1502 = fmul fast float %1501, %1477
  %1503 = fadd fast float %1502, %1167
  %1504 = fsub fast float %1401, %1166
  %1505 = fmul fast float %1504, %1477
  %1506 = fadd fast float %1505, %1166
  %1507 = fsub fast float %1482, %1164
  %1508 = fsub fast float %1483, %1165
  %1509 = fmul fast float %1507, %1477
  %1510 = fmul fast float %1508, %1477
  %1511 = fadd fast float %1509, %1164
  %1512 = fadd fast float %1510, %1165
  %1513 = and i32 %1230, 16
  %1514 = icmp eq i32 %1513, 0
  br i1 %1514, label %1537, label %1515

; <label>:1515                                    ; preds = %1376
  %1516 = bitcast float %1224 to i32
  %1517 = add i32 %1221, 0
  %1518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1517, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1519 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1518, %dx.types.Handle %1381, float %1312, float %1315, float undef, float undef, i32 0, i32 0, i32 undef, float %1317, float %1319, float undef, float %1321, float %1323, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1520 = extractvalue %dx.types.ResRet.f32 %1519, 0
  %1521 = extractvalue %dx.types.ResRet.f32 %1519, 1
  %1522 = extractvalue %dx.types.ResRet.f32 %1519, 2
  %1523 = and i32 %1516, 65535
  %1524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1523)  ; LegacyF16ToF32(value)
  %1525 = fmul fast float %1520, %1216
  %1526 = fmul fast float %1521, %1217
  %1527 = fmul fast float %1522, %1218
  %1528 = and i32 %1230, 16384
  %1529 = icmp ne i32 %1528, 0
  %1530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1531 = extractvalue %dx.types.CBufRet.f32 %1530, 0
  %1532 = select i1 %1529, float %1531, float 1.000000e+00
  %1533 = fmul fast float %1532, %1524
  %1534 = fmul fast float %1525, %1533
  %1535 = fmul fast float %1526, %1533
  %1536 = fmul fast float %1527, %1533
  br label %1537

; <label>:1537                                    ; preds = %1515, %1376
  %1538 = phi float [ %1534, %1515 ], [ 0.000000e+00, %1376 ]
  %1539 = phi float [ %1535, %1515 ], [ 0.000000e+00, %1376 ]
  %1540 = phi float [ %1536, %1515 ], [ 0.000000e+00, %1376 ]
  %1541 = fsub fast float %1538, %1161
  %1542 = fsub fast float %1539, %1162
  %1543 = fsub fast float %1540, %1163
  %1544 = fmul fast float %1541, %1371
  %1545 = fmul fast float %1542, %1371
  %1546 = fmul fast float %1543, %1371
  %1547 = fadd fast float %1544, %1161
  %1548 = fadd fast float %1545, %1162
  %1549 = fadd fast float %1546, %1163
  br label %1280

; <label>:1550                                    ; preds = %1280
  br label %1551

; <label>:1551                                    ; preds = %1550, %1051
  %1552 = phi float [ 0.000000e+00, %1051 ], [ %1281, %1550 ]
  %1553 = phi float [ 0.000000e+00, %1051 ], [ %1282, %1550 ]
  %1554 = phi float [ 0.000000e+00, %1051 ], [ %1283, %1550 ]
  %1555 = phi float [ %1053, %1051 ], [ %1284, %1550 ]
  %1556 = phi float [ %1054, %1051 ], [ %1285, %1550 ]
  %1557 = phi float [ %1103, %1051 ], [ %1286, %1550 ]
  %1558 = phi float [ %1106, %1051 ], [ %1287, %1550 ]
  %1559 = phi float [ 0.000000e+00, %1051 ], [ %1288, %1550 ]
  %1560 = phi float [ %1101, %1051 ], [ %1289, %1550 ]
  %1561 = phi float [ %1095, %1051 ], [ %1290, %1550 ]
  %1562 = phi float [ %1097, %1051 ], [ %1291, %1550 ]
  %1563 = phi float [ %1099, %1051 ], [ %1292, %1550 ]
  %1564 = call float @dx.op.dot2.f32(i32 54, float %1555, float %1556, float %1555, float %1556)  ; Dot2(ax,ay,bx,by)
  %1565 = fmul fast float %1564, 0x3FE3333340000000
  %1566 = fsub fast float 1.000000e+00, %1565
  %1567 = call float @dx.op.dot3.f32(i32 55, float %1555, float %1556, float %1566, float %1555, float %1556, float %1566)  ; Dot3(ax,ay,az,bx,by,bz)
  %1568 = call float @dx.op.unary.f32(i32 25, float %1567)  ; Rsqrt(value)
  %1569 = fmul fast float %1568, %1555
  %1570 = fmul fast float %1568, %1556
  %1571 = fmul fast float %1566, %1568
  %1572 = fmul fast float %1571, %107
  %1573 = fmul fast float %1571, %108
  %1574 = fmul fast float %1571, %109
  %1575 = fmul fast float %1569, %1086
  %1576 = fmul fast float %1569, %1087
  %1577 = fmul fast float %1569, %1089
  %1578 = fadd fast float %1572, %1575
  %1579 = fadd fast float %1573, %1576
  %1580 = fadd fast float %1574, %1577
  %1581 = fmul fast float %1570, %1082
  %1582 = fmul fast float %1570, %1092
  %1583 = fmul fast float %1570, %1093
  %1584 = fadd fast float %1578, %1581
  %1585 = fadd fast float %1579, %1582
  %1586 = fadd fast float %1580, %1583
  %1587 = call float @dx.op.dot3.f32(i32 55, float %1584, float %1585, float %1586, float %1584, float %1585, float %1586)  ; Dot3(ax,ay,az,bx,by,bz)
  %1588 = call float @dx.op.unary.f32(i32 25, float %1587)  ; Rsqrt(value)
  %1589 = fmul fast float %1584, %1588
  %1590 = fmul fast float %1585, %1588
  %1591 = fmul fast float %1586, %1588
  %1592 = fadd fast float %1560, 0xBFB99999A0000000
  %1593 = call float @dx.op.unary.f32(i32 7, float %1592)  ; Saturate(value)
  %1594 = fmul fast float %1593, 0x3FF1C71C80000000
  %1595 = call float @dx.op.binary.f32(i32 36, float %1560, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1596 = fsub fast float 1.000000e+00, %1594
  %1597 = call float @dx.op.unary.f32(i32 7, float %1596)  ; Saturate(value)
  %1598 = fmul fast float %1597, %1561
  %1599 = fmul fast float %1597, %1562
  %1600 = fmul fast float %1597, %1563
  %1601 = call float @dx.op.unary.f32(i32 7, float %1598)  ; Saturate(value)
  %1602 = call float @dx.op.unary.f32(i32 7, float %1599)  ; Saturate(value)
  %1603 = call float @dx.op.unary.f32(i32 7, float %1600)  ; Saturate(value)
  %1604 = fmul fast float %1594, %1561
  %1605 = fmul fast float %1594, %1562
  %1606 = fmul fast float %1594, %1563
  %1607 = fadd fast float %1604, %1595
  %1608 = fadd fast float %1605, %1595
  %1609 = fadd fast float %1606, %1595
  %1610 = call float @dx.op.unary.f32(i32 7, float %1607)  ; Saturate(value)
  %1611 = call float @dx.op.unary.f32(i32 7, float %1608)  ; Saturate(value)
  %1612 = call float @dx.op.unary.f32(i32 7, float %1609)  ; Saturate(value)
  %1613 = fmul fast float %1611, 0x401CF23780000000
  %1614 = fadd fast float %1613, 0x3FF32641C0000000
  %1615 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %1616 = call float @dx.op.unary.f32(i32 25, float %1615)  ; Rsqrt(value)
  %1617 = fmul fast float %1616, %143
  %1618 = fmul fast float %1616, %144
  %1619 = fmul fast float %1616, %145
  %1620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1621 = extractvalue %dx.types.CBufRet.f32 %1620, 0
  %1622 = fdiv fast float 1.000000e+00, %1614
  %1623 = select i1 %105, float %1622, float %1614
  %1624 = fadd fast float %1623, -1.000000e+00
  %1625 = fadd fast float %1623, 1.000000e+00
  %1626 = fdiv fast float %1624, %1625
  %1627 = fmul fast float %1626, %1626
  %1628 = call float @dx.op.dot3.f32(i32 55, float %1617, float %1618, float %1619, float %1589, float %1590, float %1591)  ; Dot3(ax,ay,az,bx,by,bz)
  %1629 = select i1 %105, float 0.000000e+00, float %1621
  %1630 = fadd fast float %1628, %1629
  %1631 = call float @dx.op.binary.f32(i32 35, float %1630, float -1.000000e+00)  ; FMax(a,b)
  %1632 = call float @dx.op.binary.f32(i32 36, float %1631, float 1.000000e+00)  ; FMin(a,b)
  %1633 = fmul fast float %1623, %1623
  %1634 = fmul fast float %1632, %1632
  %1635 = fsub fast float 1.000000e+00, %1634
  %1636 = fmul fast float %1633, %1635
  %1637 = fsub fast float 1.000000e+00, %1636
  %1638 = fcmp fast olt float %1623, 1.000000e+00
  %1639 = select i1 %1638, float %1634, float %1637
  %1640 = fcmp fast ogt float %1637, 0.000000e+00
  %1641 = fsub fast float 1.000000e+00, %1627
  %1642 = call float @dx.op.unary.f32(i32 24, float %1639)  ; Sqrt(value)
  %1643 = fsub fast float 1.000000e+00, %1642
  %1644 = call float @dx.op.unary.f32(i32 23, float %1643)  ; Log(value)
  %1645 = fmul fast float %1644, 5.000000e+00
  %1646 = call float @dx.op.unary.f32(i32 21, float %1645)  ; Exp(value)
  %1647 = fmul fast float %1646, %1641
  %1648 = fadd fast float %1647, %1627
  %1649 = select i1 %1640, float %1648, float 1.000000e+00
  %1650 = select i1 %105, float %1649, float 0.000000e+00
  %1651 = lshr i32 %1052, 24
  %1652 = uitofp i32 %1651 to float
  %1653 = fmul fast float %1652, 0x3F70101020000000
  %1654 = call float @dx.op.unary.f32(i32 7, float %1653)  ; Saturate(value)
  %1655 = fmul fast float %143, %143
  %1656 = fmul fast float %144, %144
  %1657 = fadd fast float %1656, %1655
  %1658 = fmul fast float %145, %145
  %1659 = fadd fast float %1657, %1658
  %1660 = call float @dx.op.unary.f32(i32 24, float %1659)  ; Sqrt(value)
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 0
  %1663 = fmul fast float %1662, %1660
  %1664 = extractvalue %dx.types.CBufRet.f32 %1661, 1
  %1665 = fadd fast float %1663, %1664
  %1666 = call float @dx.op.unary.f32(i32 7, float %1665)  ; Saturate(value)
  %1667 = fmul fast float %1654, 2.550000e+02
  %1668 = fmul fast float %1667, %1666
  %1669 = fptoui float %1668 to i32
  %1670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1671 = extractvalue %dx.types.CBufRet.f32 %1670, 3
  %1672 = fmul fast float %1671, %1558
  %1673 = call float @dx.op.unary.f32(i32 7, float %1672)  ; Saturate(value)
  %1674 = call float @dx.op.unary.f32(i32 7, float %1557)  ; Saturate(value)
  %1675 = fsub fast float 1.000000e+00, %1559
  %1676 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1675)  ; FMin(a,b)
  %1677 = fmul fast float %69, 6.553500e+04
  %1678 = call float @dx.op.unary.f32(i32 26, float %1677)  ; Round_ne(value)
  %1679 = fptosi float %1678 to i32
  %1680 = call i32 @dx.op.binary.i32(i32 37, i32 %1679, i32 0)  ; IMax(a,b)
  %1681 = call i32 @dx.op.binary.i32(i32 38, i32 %1680, i32 65535)  ; IMin(a,b)
  %1682 = fmul fast float %70, 6.553500e+04
  %1683 = call float @dx.op.unary.f32(i32 26, float %1682)  ; Round_ne(value)
  %1684 = fptosi float %1683 to i32
  %1685 = call i32 @dx.op.binary.i32(i32 37, i32 %1684, i32 0)  ; IMax(a,b)
  %1686 = call i32 @dx.op.binary.i32(i32 38, i32 %1685, i32 65535)  ; IMin(a,b)
  %1687 = shl i32 %1686, 16
  %1688 = or i32 %1687, %1681
  %1689 = call float @dx.op.dot3.f32(i32 55, float %1610, float %1611, float %1612, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1690 = fsub fast float 1.000000e+00, %1689
  %1691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.i32 %1691, 0
  %1693 = and i32 %1692, 255
  %1694 = uitofp i32 %1693 to float
  %1695 = lshr i32 %1692, 8
  %1696 = and i32 %1695, 255
  %1697 = uitofp i32 %1696 to float
  %1698 = fmul fast float %1697, %1690
  %1699 = fadd fast float %1698, %1694
  %1700 = fmul fast float %1699, 0x3F70101020000000
  %1701 = call float @dx.op.unary.f32(i32 7, float %1700)  ; Saturate(value)
  %1702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1703 = extractvalue %dx.types.CBufRet.f32 %1702, 0
  %1704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1706 = extractvalue %dx.types.CBufRet.i32 %1705, 3
  %1707 = and i32 %1706, 3
  %1708 = icmp ne i32 %1707, 0
  %1709 = and i32 %1706, 4
  %1710 = icmp ne i32 %1709, 0
  %1711 = and i1 %1708, %1710
  br i1 %1711, label %1712, label %1723

; <label>:1712                                    ; preds = %1551
  %1713 = extractvalue %dx.types.CBufRet.f32 %1704, 3
  %1714 = fmul fast float %1713, %89
  %1715 = extractvalue %dx.types.CBufRet.f32 %1704, 2
  %1716 = fmul fast float %1715, %88
  %1717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %57, float %1716, float %1714, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1718 = extractvalue %dx.types.ResRet.f32 %1717, 0
  %1719 = fsub fast float 1.000000e+00, %1718
  %1720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1721 = extractvalue %dx.types.CBufRet.f32 %1720, 0
  %1722 = fcmp fast olt float %1719, %1721
  br label %1726

; <label>:1723                                    ; preds = %1551
  %1724 = icmp eq i32 %1709, 0
  %1725 = and i1 %1708, %1724
  br label %1726

; <label>:1726                                    ; preds = %1723, %1712
  %1727 = phi i1 [ %1722, %1712 ], [ %1725, %1723 ]
  %1728 = fsub fast float -0.000000e+00, %145
  %1729 = fsub fast float -0.000000e+00, %1617
  %1730 = fsub fast float -0.000000e+00, %1618
  %1731 = fsub fast float -0.000000e+00, %1619
  %1732 = select i1 %1727, float 0.000000e+00, float %1612
  %1733 = call float @dx.op.dot3.f32(i32 55, float %1589, float %1590, float %1591, float %1729, float %1730, float %1731)  ; Dot3(ax,ay,az,bx,by,bz)
  %1734 = call float @dx.op.unary.f32(i32 7, float %1733)  ; Saturate(value)
  %1735 = fmul fast float %1628, 2.000000e+00
  %1736 = fmul fast float %1735, %1589
  %1737 = fmul fast float %1735, %1590
  %1738 = fmul fast float %1735, %1591
  %1739 = fsub fast float %1617, %1736
  %1740 = fsub fast float %1618, %1737
  %1741 = fsub fast float %1619, %1738
  %1742 = call float @dx.op.binary.f32(i32 36, float %1674, float 1.000000e+00)  ; FMin(a,b)
  %1743 = fsub fast float 1.000000e+00, %1674
  %1744 = bitcast float %1743 to i32
  %1745 = sub nsw i32 2129859010, %1744
  %1746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1747 = extractvalue %dx.types.CBufRet.f32 %1746, 0
  %1748 = extractvalue %dx.types.CBufRet.f32 %1746, 1
  %1749 = extractvalue %dx.types.CBufRet.f32 %1746, 2
  %1750 = fadd fast float %1747, %143
  %1751 = fadd fast float %1748, %144
  %1752 = fadd fast float %1749, %145
  %1753 = fmul fast float %1589, 3.200000e+01
  %1754 = fmul fast float %1590, 3.200000e+01
  %1755 = fadd fast float %1750, %1753
  %1756 = fadd fast float %1751, %1754
  %1757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1758 = extractvalue %dx.types.CBufRet.f32 %1757, 0
  %1759 = extractvalue %dx.types.CBufRet.f32 %1757, 1
  %1760 = fsub fast float %1755, %1758
  %1761 = fsub fast float %1756, %1759
  %1762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1763 = extractvalue %dx.types.CBufRet.f32 %1762, 0
  %1764 = extractvalue %dx.types.CBufRet.f32 %1762, 1
  %1765 = fmul fast float %1760, %1763
  %1766 = fmul fast float %1761, %1764
  %1767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1768 = extractvalue %dx.types.CBufRet.f32 %1767, 0
  %1769 = fmul fast float %1765, %1768
  %1770 = extractvalue %dx.types.CBufRet.f32 %1767, 1
  %1771 = fadd fast float %1769, %1770
  %1772 = extractvalue %dx.types.CBufRet.f32 %1767, 2
  %1773 = fmul fast float %1772, %1766
  %1774 = extractvalue %dx.types.CBufRet.f32 %1767, 3
  %1775 = fadd fast float %1773, %1774
  %1776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %57, float %1771, float %1775, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1777 = extractvalue %dx.types.ResRet.f32 %1776, 0
  %1778 = extractvalue %dx.types.ResRet.f32 %1776, 1
  %1779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1780 = extractvalue %dx.types.CBufRet.f32 %1779, 1
  %1781 = extractvalue %dx.types.CBufRet.f32 %1779, 0
  %1782 = fsub fast float %1780, %1781
  %1783 = fmul fast float %1782, %1777
  %1784 = fadd fast float %1783, %1781
  %1785 = extractvalue %dx.types.CBufRet.f32 %1779, 3
  %1786 = extractvalue %dx.types.CBufRet.f32 %1779, 2
  %1787 = fsub fast float %1785, %1786
  %1788 = fmul fast float %1787, %1778
  %1789 = fadd fast float %1788, %1786
  %1790 = fsub fast float %1752, %1784
  %1791 = fsub fast float %1789, %1784
  %1792 = fdiv fast float %1790, %1791
  %1793 = call float @dx.op.unary.f32(i32 7, float %1792)  ; Saturate(value)
  %1794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1794, 0
  %1796 = fmul fast float %1795, %1793
  %1797 = extractvalue %dx.types.CBufRet.f32 %1794, 1
  %1798 = fadd fast float %1796, %1797
  %1799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %57, float %1771, float %1775, float %1798, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1800 = extractvalue %dx.types.ResRet.f32 %1799, 0
  %1801 = extractvalue %dx.types.ResRet.f32 %1799, 1
  %1802 = extractvalue %dx.types.ResRet.f32 %1799, 2
  %1803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1804 = extractvalue %dx.types.CBufRet.f32 %1803, 0
  %1805 = extractvalue %dx.types.CBufRet.f32 %1803, 1
  %1806 = extractvalue %dx.types.CBufRet.f32 %1803, 2
  %1807 = fmul fast float %1804, %1800
  %1808 = fmul fast float %1805, %1801
  %1809 = fmul fast float %1806, %1802
  %1810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1811 = extractvalue %dx.types.CBufRet.f32 %1810, 0
  %1812 = extractvalue %dx.types.CBufRet.f32 %1810, 1
  %1813 = extractvalue %dx.types.CBufRet.f32 %1810, 2
  %1814 = fadd fast float %1807, %1811
  %1815 = fadd fast float %1808, %1812
  %1816 = fadd fast float %1809, %1813
  %1817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1818 = extractvalue %dx.types.CBufRet.f32 %1817, 0
  %1819 = fmul fast float %1818, %1765
  %1820 = extractvalue %dx.types.CBufRet.f32 %1817, 1
  %1821 = fadd fast float %1819, %1820
  %1822 = extractvalue %dx.types.CBufRet.f32 %1817, 2
  %1823 = fmul fast float %1822, %1766
  %1824 = extractvalue %dx.types.CBufRet.f32 %1817, 3
  %1825 = fadd fast float %1823, %1824
  %1826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1827 = extractvalue %dx.types.CBufRet.f32 %1826, 0
  %1828 = extractvalue %dx.types.CBufRet.f32 %1826, 1
  %1829 = extractvalue %dx.types.CBufRet.f32 %1826, 2
  %1830 = extractvalue %dx.types.CBufRet.f32 %1826, 3
  %1831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1832 = extractvalue %dx.types.CBufRet.f32 %1831, 0
  %1833 = extractvalue %dx.types.CBufRet.f32 %1831, 1
  %1834 = extractvalue %dx.types.CBufRet.f32 %1831, 2
  %1835 = extractvalue %dx.types.CBufRet.f32 %1831, 3
  %1836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %57, float %1821, float %1825, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1837 = extractvalue %dx.types.ResRet.f32 %1836, 0
  %1838 = extractvalue %dx.types.ResRet.f32 %1836, 1
  %1839 = extractvalue %dx.types.ResRet.f32 %1836, 2
  %1840 = extractvalue %dx.types.ResRet.f32 %1836, 3
  %1841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %57, float %1821, float %1825, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1842 = extractvalue %dx.types.ResRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.ResRet.f32 %1841, 1
  %1844 = extractvalue %dx.types.ResRet.f32 %1841, 2
  %1845 = extractvalue %dx.types.ResRet.f32 %1841, 3
  %1846 = fmul fast float %1837, %1814
  %1847 = fmul fast float %1842, %1814
  %1848 = fmul fast float %1844, %1814
  %1849 = fmul fast float %1840, %1814
  %1850 = fadd fast float %1846, %1827
  %1851 = fadd fast float %1847, %1828
  %1852 = fadd fast float %1848, %1829
  %1853 = fadd fast float %1849, %1830
  %1854 = fmul fast float %1838, %1814
  %1855 = fmul fast float %1843, %1814
  %1856 = fadd fast float %1854, %1832
  %1857 = fadd fast float %1855, %1833
  %1858 = fmul fast float %1839, %1814
  %1859 = fmul fast float %1845, %1814
  %1860 = fadd fast float %1858, %1834
  %1861 = fadd fast float %1859, %1835
  %1862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %57, float %1821, float %1825, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1863 = extractvalue %dx.types.ResRet.f32 %1862, 0
  %1864 = extractvalue %dx.types.ResRet.f32 %1862, 1
  %1865 = extractvalue %dx.types.ResRet.f32 %1862, 2
  %1866 = extractvalue %dx.types.ResRet.f32 %1862, 3
  %1867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %57, float %1821, float %1825, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1868 = extractvalue %dx.types.ResRet.f32 %1867, 0
  %1869 = extractvalue %dx.types.ResRet.f32 %1867, 1
  %1870 = extractvalue %dx.types.ResRet.f32 %1867, 2
  %1871 = extractvalue %dx.types.ResRet.f32 %1867, 3
  %1872 = fmul fast float %1863, %1815
  %1873 = fmul fast float %1868, %1815
  %1874 = fmul fast float %1870, %1815
  %1875 = fmul fast float %1866, %1815
  %1876 = fadd fast float %1850, %1872
  %1877 = fadd fast float %1851, %1873
  %1878 = fadd fast float %1852, %1874
  %1879 = fadd fast float %1853, %1875
  %1880 = fmul fast float %1864, %1815
  %1881 = fmul fast float %1869, %1815
  %1882 = fadd fast float %1856, %1880
  %1883 = fadd fast float %1857, %1881
  %1884 = fmul fast float %1865, %1815
  %1885 = fmul fast float %1871, %1815
  %1886 = fadd fast float %1860, %1884
  %1887 = fadd fast float %1861, %1885
  %1888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %57, float %1821, float %1825, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1889 = extractvalue %dx.types.ResRet.f32 %1888, 0
  %1890 = extractvalue %dx.types.ResRet.f32 %1888, 1
  %1891 = extractvalue %dx.types.ResRet.f32 %1888, 2
  %1892 = extractvalue %dx.types.ResRet.f32 %1888, 3
  %1893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %57, float %1821, float %1825, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1894 = extractvalue %dx.types.ResRet.f32 %1893, 0
  %1895 = extractvalue %dx.types.ResRet.f32 %1893, 1
  %1896 = extractvalue %dx.types.ResRet.f32 %1893, 2
  %1897 = extractvalue %dx.types.ResRet.f32 %1893, 3
  %1898 = fmul fast float %1889, %1816
  %1899 = fmul fast float %1894, %1816
  %1900 = fmul fast float %1896, %1816
  %1901 = fmul fast float %1892, %1816
  %1902 = fadd fast float %1876, %1898
  %1903 = fadd fast float %1877, %1899
  %1904 = fadd fast float %1878, %1900
  %1905 = fadd fast float %1879, %1901
  %1906 = fmul fast float %1890, %1816
  %1907 = fmul fast float %1895, %1816
  %1908 = fadd fast float %1882, %1906
  %1909 = fadd fast float %1883, %1907
  %1910 = fmul fast float %1891, %1816
  %1911 = fmul fast float %1897, %1816
  %1912 = fadd fast float %1886, %1910
  %1913 = fadd fast float %1887, %1911
  %1914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1915 = extractvalue %dx.types.CBufRet.f32 %1914, 0
  %1916 = fsub fast float %1750, %1915
  %1917 = fsub fast float %1758, %1750
  %1918 = call float @dx.op.binary.f32(i32 35, float %1917, float %1916)  ; FMax(a,b)
  %1919 = extractvalue %dx.types.CBufRet.f32 %1914, 1
  %1920 = fsub fast float %1751, %1919
  %1921 = fsub fast float %1759, %1751
  %1922 = call float @dx.op.binary.f32(i32 35, float %1921, float %1920)  ; FMax(a,b)
  %1923 = call float @dx.op.binary.f32(i32 35, float %1918, float %1922)  ; FMax(a,b)
  %1924 = extractvalue %dx.types.CBufRet.f32 %1762, 3
  %1925 = fmul fast float %1924, %1923
  %1926 = call float @dx.op.unary.f32(i32 7, float %1925)  ; Saturate(value)
  %1927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1928 = extractvalue %dx.types.CBufRet.f32 %1927, 0
  %1929 = extractvalue %dx.types.CBufRet.f32 %1927, 1
  %1930 = extractvalue %dx.types.CBufRet.f32 %1927, 2
  %1931 = extractvalue %dx.types.CBufRet.f32 %1927, 3
  %1932 = fsub fast float %1928, %1902
  %1933 = fsub fast float %1929, %1903
  %1934 = fsub fast float %1930, %1904
  %1935 = fsub fast float %1931, %1905
  %1936 = fmul fast float %1932, %1926
  %1937 = fmul fast float %1933, %1926
  %1938 = fmul fast float %1934, %1926
  %1939 = fmul fast float %1935, %1926
  %1940 = fadd fast float %1936, %1902
  %1941 = fadd fast float %1937, %1903
  %1942 = fadd fast float %1938, %1904
  %1943 = fadd fast float %1939, %1905
  %1944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1945 = extractvalue %dx.types.CBufRet.f32 %1944, 0
  %1946 = extractvalue %dx.types.CBufRet.f32 %1944, 1
  %1947 = fsub fast float %1945, %1908
  %1948 = fsub fast float %1946, %1909
  %1949 = fmul fast float %1947, %1926
  %1950 = fmul fast float %1948, %1926
  %1951 = fadd fast float %1949, %1908
  %1952 = fadd fast float %1950, %1909
  %1953 = extractvalue %dx.types.CBufRet.f32 %1944, 2
  %1954 = extractvalue %dx.types.CBufRet.f32 %1944, 3
  %1955 = fsub fast float %1953, %1912
  %1956 = fsub fast float %1954, %1913
  %1957 = fmul fast float %1955, %1926
  %1958 = fmul fast float %1956, %1926
  %1959 = fadd fast float %1957, %1912
  %1960 = fadd fast float %1958, %1913
  %1961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1962 = extractvalue %dx.types.CBufRet.f32 %1961, 0
  %1963 = fmul fast float %1962, %1940
  %1964 = fmul fast float %1962, %1941
  %1965 = fmul fast float %1962, %1942
  %1966 = fmul fast float %1962, %1943
  %1967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1968 = extractvalue %dx.types.CBufRet.f32 %1967, 0
  %1969 = fmul fast float %1968, %1951
  %1970 = fmul fast float %1968, %1952
  %1971 = fadd fast float %1969, %1963
  %1972 = fadd fast float %1970, %1965
  %1973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1974 = extractvalue %dx.types.CBufRet.f32 %1973, 0
  %1975 = fmul fast float %1974, %1959
  %1976 = fmul fast float %1974, %1960
  %1977 = fadd fast float %1971, %1975
  %1978 = fadd fast float %1972, %1976
  %1979 = extractvalue %dx.types.CBufRet.f32 %1961, 1
  %1980 = fmul fast float %1979, %1940
  %1981 = fmul fast float %1979, %1941
  %1982 = fmul fast float %1979, %1942
  %1983 = fmul fast float %1979, %1943
  %1984 = extractvalue %dx.types.CBufRet.f32 %1967, 1
  %1985 = fmul fast float %1984, %1951
  %1986 = fmul fast float %1984, %1952
  %1987 = fadd fast float %1985, %1980
  %1988 = fadd fast float %1986, %1982
  %1989 = extractvalue %dx.types.CBufRet.f32 %1973, 1
  %1990 = fmul fast float %1989, %1959
  %1991 = fmul fast float %1989, %1960
  %1992 = fadd fast float %1987, %1990
  %1993 = fadd fast float %1988, %1991
  %1994 = extractvalue %dx.types.CBufRet.f32 %1961, 2
  %1995 = fmul fast float %1994, %1940
  %1996 = fmul fast float %1994, %1941
  %1997 = fmul fast float %1994, %1942
  %1998 = fmul fast float %1994, %1943
  %1999 = extractvalue %dx.types.CBufRet.f32 %1967, 2
  %2000 = fmul fast float %1999, %1951
  %2001 = fmul fast float %1999, %1952
  %2002 = fadd fast float %2000, %1995
  %2003 = fadd fast float %2001, %1997
  %2004 = extractvalue %dx.types.CBufRet.f32 %1973, 2
  %2005 = fmul fast float %2004, %1959
  %2006 = fmul fast float %2004, %1960
  %2007 = fadd fast float %2002, %2005
  %2008 = fadd fast float %2003, %2006
  %2009 = fmul fast float %1996, %1996
  %2010 = fmul fast float %2008, %2008
  %2011 = fmul fast float %1998, %1998
  %2012 = fadd fast float %2011, %2009
  %2013 = fadd fast float %2012, %2010
  %2014 = call float @dx.op.unary.f32(i32 24, float %2013)  ; Sqrt(value)
  %2015 = fcmp fast ugt float %2014, 0.000000e+00
  br i1 %2015, label %2016, label %2031

; <label>:2016                                    ; preds = %1726
  %2017 = fsub fast float -0.000000e+00, %1998
  %2018 = fdiv fast float %2017, %2014
  %2019 = fsub fast float -0.000000e+00, %1996
  %2020 = fdiv fast float %2019, %2014
  %2021 = fdiv fast float %2008, %2014
  %2022 = fmul fast float %2007, 0x3FE279A760000000
  %2023 = fmul fast float %2020, %1996
  %2024 = fmul fast float %2021, %2008
  %2025 = fmul fast float %2018, %1998
  %2026 = fadd fast float %2023, %2025
  %2027 = fsub fast float %2026, %2024
  %2028 = call float @dx.op.unary.f32(i32 6, float %2027)  ; FAbs(value)
  %2029 = fadd fast float %2028, 0x3DDB7CDFE0000000
  %2030 = fdiv fast float %2022, %2029
  br label %2031

; <label>:2031                                    ; preds = %2016, %1726
  %2032 = phi float [ %2030, %2016 ], [ 1.000000e+00, %1726 ]
  %2033 = fmul fast float %1981, %1981
  %2034 = fmul fast float %1993, %1993
  %2035 = fmul fast float %1983, %1983
  %2036 = fadd fast float %2035, %2033
  %2037 = fadd fast float %2036, %2034
  %2038 = call float @dx.op.unary.f32(i32 24, float %2037)  ; Sqrt(value)
  %2039 = fcmp fast ugt float %2038, 0.000000e+00
  br i1 %2039, label %2040, label %2055

; <label>:2040                                    ; preds = %2031
  %2041 = fsub fast float -0.000000e+00, %1983
  %2042 = fdiv fast float %2041, %2038
  %2043 = fsub fast float -0.000000e+00, %1981
  %2044 = fdiv fast float %2043, %2038
  %2045 = fdiv fast float %1993, %2038
  %2046 = fmul fast float %1992, 0x3FE279A760000000
  %2047 = fmul fast float %2044, %1981
  %2048 = fmul fast float %2045, %1993
  %2049 = fmul fast float %2042, %1983
  %2050 = fadd fast float %2047, %2049
  %2051 = fsub fast float %2050, %2048
  %2052 = call float @dx.op.unary.f32(i32 6, float %2051)  ; FAbs(value)
  %2053 = fadd fast float %2052, 0x3DDB7CDFE0000000
  %2054 = fdiv fast float %2046, %2053
  br label %2055

; <label>:2055                                    ; preds = %2040, %2031
  %2056 = phi float [ %2054, %2040 ], [ 1.000000e+00, %2031 ]
  %2057 = call float @dx.op.binary.f32(i32 36, float %2056, float %2032)  ; FMin(a,b)
  %2058 = fmul fast float %1964, %1964
  %2059 = fmul fast float %1978, %1978
  %2060 = fmul fast float %1966, %1966
  %2061 = fadd fast float %2060, %2058
  %2062 = fadd fast float %2061, %2059
  %2063 = call float @dx.op.unary.f32(i32 24, float %2062)  ; Sqrt(value)
  %2064 = fcmp fast ugt float %2063, 0.000000e+00
  br i1 %2064, label %2065, label %2080

; <label>:2065                                    ; preds = %2055
  %2066 = fsub fast float -0.000000e+00, %1966
  %2067 = fdiv fast float %2066, %2063
  %2068 = fsub fast float -0.000000e+00, %1964
  %2069 = fdiv fast float %2068, %2063
  %2070 = fdiv fast float %1978, %2063
  %2071 = fmul fast float %1977, 0x3FE279A760000000
  %2072 = fmul fast float %2069, %1964
  %2073 = fmul fast float %2070, %1978
  %2074 = fmul fast float %2067, %1966
  %2075 = fadd fast float %2072, %2074
  %2076 = fsub fast float %2075, %2073
  %2077 = call float @dx.op.unary.f32(i32 6, float %2076)  ; FAbs(value)
  %2078 = fadd fast float %2077, 0x3DDB7CDFE0000000
  %2079 = fdiv fast float %2071, %2078
  br label %2080

; <label>:2080                                    ; preds = %2065, %2055
  %2081 = phi float [ %2079, %2065 ], [ 1.000000e+00, %2055 ]
  %2082 = call float @dx.op.binary.f32(i32 36, float %2081, float %2057)  ; FMin(a,b)
  %2083 = call float @dx.op.unary.f32(i32 7, float %2082)  ; Saturate(value)
  %2084 = fcmp fast olt float %2083, 1.000000e+00
  br i1 %2084, label %2085, label %2095

; <label>:2085                                    ; preds = %2080
  %2086 = fmul fast float %2083, %1964
  %2087 = fmul fast float %2083, %1978
  %2088 = fmul fast float %2083, %1966
  %2089 = fmul fast float %2083, %1981
  %2090 = fmul fast float %2083, %1993
  %2091 = fmul fast float %2083, %1983
  %2092 = fmul fast float %2083, %1996
  %2093 = fmul fast float %2083, %2008
  %2094 = fmul fast float %2083, %1998
  br label %2095

; <label>:2095                                    ; preds = %2085, %2080
  %2096 = phi float [ %2092, %2085 ], [ %1996, %2080 ]
  %2097 = phi float [ %2093, %2085 ], [ %2008, %2080 ]
  %2098 = phi float [ %2094, %2085 ], [ %1998, %2080 ]
  %2099 = phi float [ %2089, %2085 ], [ %1981, %2080 ]
  %2100 = phi float [ %2090, %2085 ], [ %1993, %2080 ]
  %2101 = phi float [ %2091, %2085 ], [ %1983, %2080 ]
  %2102 = phi float [ %2086, %2085 ], [ %1964, %2080 ]
  %2103 = phi float [ %2087, %2085 ], [ %1978, %2080 ]
  %2104 = phi float [ %2088, %2085 ], [ %1966, %2080 ]
  %2105 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1977)  ; FMax(a,b)
  %2106 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1992)  ; FMax(a,b)
  %2107 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2007)  ; FMax(a,b)
  %2108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2109 = extractvalue %dx.types.CBufRet.f32 %2108, 0
  %2110 = fcmp fast ogt float %2109, 0.000000e+00
  %2111 = fcmp fast oge float %1765, 0.000000e+00
  %2112 = and i1 %2111, %2110
  %2113 = fcmp fast ole float %1765, 1.000000e+00
  %2114 = and i1 %2113, %2112
  %2115 = fcmp fast oge float %1766, 0.000000e+00
  %2116 = and i1 %2115, %2114
  %2117 = fcmp fast ole float %1766, 1.000000e+00
  %2118 = and i1 %2117, %2116
  br i1 %2118, label %2119, label %2259, !dx.controlflow.hints !112

; <label>:2119                                    ; preds = %2095
  %2120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2121 = extractvalue %dx.types.CBufRet.f32 %2120, 2
  %2122 = extractvalue %dx.types.CBufRet.f32 %2120, 3
  %2123 = fmul fast float %2121, %1765
  %2124 = fmul fast float %2122, %1766
  %2125 = call float @dx.op.unary.f32(i32 27, float %2123)  ; Round_ni(value)
  %2126 = call float @dx.op.unary.f32(i32 27, float %2124)  ; Round_ni(value)
  %2127 = fptosi float %2125 to i32
  %2128 = fptosi float %2126 to i32
  %2129 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %39, i32 0, i32 %2127, i32 %2128, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2130 = extractvalue %dx.types.ResRet.i32 %2129, 0
  %2131 = and i32 %2130, 65535
  %2132 = lshr i32 %2130, 16
  %2133 = icmp eq i32 %2131, 65535
  br i1 %2133, label %2170, label %2134

; <label>:2134                                    ; preds = %2119
  %2135 = extractvalue %dx.types.CBufRet.f32 %2108, 1
  %2136 = extractvalue %dx.types.CBufRet.f32 %2120, 0
  %2137 = extractvalue %dx.types.CBufRet.f32 %2120, 1
  %2138 = fmul fast float %2136, %1765
  %2139 = fmul fast float %2137, %1766
  %2140 = fmul fast float %2138, 1.250000e-01
  %2141 = fmul fast float %2139, 1.250000e-01
  %2142 = call float @dx.op.unary.f32(i32 27, float %2140)  ; Round_ni(value)
  %2143 = call float @dx.op.unary.f32(i32 27, float %2141)  ; Round_ni(value)
  %2144 = fmul fast float %2142, 8.000000e+00
  %2145 = fmul fast float %2143, 8.000000e+00
  %2146 = and i32 %2130, 255
  %2147 = lshr i32 %2130, 8
  %2148 = and i32 %2147, 255
  %2149 = mul nuw nsw i32 %2146, 9
  %2150 = uitofp i32 %2149 to float
  %2151 = mul nuw nsw i32 %2148, 9
  %2152 = uitofp i32 %2151 to float
  %2153 = fadd fast float %2150, 5.000000e-01
  %2154 = fadd fast float %2153, %2138
  %2155 = fsub fast float %2154, %2144
  %2156 = fadd fast float %2152, 5.000000e-01
  %2157 = fadd fast float %2156, %2139
  %2158 = fsub fast float %2157, %2145
  %2159 = fdiv fast float %2155, %2109
  %2160 = fdiv fast float %2158, %2135
  %2161 = fmul fast float %1793, 4.375000e-01
  %2162 = fadd fast float %2161, 3.125000e-02
  %2163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %57, float %2159, float %2160, float %2162, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2164 = extractvalue %dx.types.ResRet.f32 %2163, 0
  %2165 = extractvalue %dx.types.ResRet.f32 %2163, 1
  %2166 = extractvalue %dx.types.ResRet.f32 %2163, 2
  %2167 = fadd fast float %2164, %2105
  %2168 = fadd fast float %2165, %2106
  %2169 = fadd fast float %2166, %2107
  br label %2170

; <label>:2170                                    ; preds = %2134, %2119
  %2171 = phi float [ %2169, %2134 ], [ %2107, %2119 ]
  %2172 = phi float [ %2168, %2134 ], [ %2106, %2119 ]
  %2173 = phi float [ %2167, %2134 ], [ %2105, %2119 ]
  %2174 = icmp eq i32 %2132, 65535
  br i1 %2174, label %2259, label %2175

; <label>:2175                                    ; preds = %2170
  %2176 = extractvalue %dx.types.CBufRet.f32 %2108, 1
  %2177 = extractvalue %dx.types.CBufRet.f32 %2120, 0
  %2178 = extractvalue %dx.types.CBufRet.f32 %2120, 1
  %2179 = fmul fast float %2177, %1765
  %2180 = fmul fast float %2178, %1766
  %2181 = fmul fast float %2179, 1.250000e-01
  %2182 = fmul fast float %2180, 1.250000e-01
  %2183 = call float @dx.op.unary.f32(i32 27, float %2181)  ; Round_ni(value)
  %2184 = call float @dx.op.unary.f32(i32 27, float %2182)  ; Round_ni(value)
  %2185 = fmul fast float %2183, 8.000000e+00
  %2186 = fmul fast float %2184, 8.000000e+00
  %2187 = fsub fast float %2179, %2185
  %2188 = fsub fast float %2180, %2186
  %2189 = fadd fast float %2187, 5.000000e-01
  %2190 = fadd fast float %2188, 5.000000e-01
  %2191 = and i32 %2132, 255
  %2192 = lshr i32 %2130, 24
  %2193 = mul nuw nsw i32 %2191, 9
  %2194 = uitofp i32 %2193 to float
  %2195 = mul nuw nsw i32 %2192, 9
  %2196 = uitofp i32 %2195 to float
  %2197 = fadd fast float %2189, %2194
  %2198 = fadd fast float %2190, %2196
  %2199 = fdiv fast float %2197, %2109
  %2200 = fdiv fast float %2198, %2176
  %2201 = fmul fast float %1793, 4.375000e-01
  %2202 = fadd fast float %2201, 3.125000e-02
  %2203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %57, float %2199, float %2200, float %2202, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2204 = extractvalue %dx.types.ResRet.f32 %2203, 0
  %2205 = extractvalue %dx.types.ResRet.f32 %2203, 1
  %2206 = extractvalue %dx.types.ResRet.f32 %2203, 2
  %2207 = fadd fast float %2201, 5.312500e-01
  %2208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %57, float %2199, float %2200, float %2207, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2209 = extractvalue %dx.types.ResRet.f32 %2208, 0
  %2210 = extractvalue %dx.types.ResRet.f32 %2208, 1
  %2211 = extractvalue %dx.types.ResRet.f32 %2208, 2
  %2212 = fmul fast float %2209, 2.000000e+00
  %2213 = fmul fast float %2210, 2.000000e+00
  %2214 = fmul fast float %2211, 2.000000e+00
  %2215 = fadd fast float %2212, -1.000000e+00
  %2216 = fadd fast float %2213, -1.000000e+00
  %2217 = fadd fast float %2214, -1.000000e+00
  %2218 = fmul fast float %2215, %2215
  %2219 = fmul fast float %2216, %2216
  %2220 = fadd fast float %2218, %2219
  %2221 = fmul fast float %2217, %2217
  %2222 = fadd fast float %2220, %2221
  %2223 = call float @dx.op.unary.f32(i32 24, float %2222)  ; Sqrt(value)
  %2224 = fcmp fast ogt float %2223, 0.000000e+00
  br i1 %2224, label %2225, label %2229

; <label>:2225                                    ; preds = %2175
  %2226 = fdiv fast float %2215, %2223
  %2227 = fdiv fast float %2216, %2223
  %2228 = fdiv fast float %2217, %2223
  br label %2229

; <label>:2229                                    ; preds = %2225, %2175
  %2230 = phi float [ %2226, %2225 ], [ 0.000000e+00, %2175 ]
  %2231 = phi float [ %2227, %2225 ], [ 0.000000e+00, %2175 ]
  %2232 = phi float [ %2228, %2225 ], [ 0.000000e+00, %2175 ]
  %2233 = fmul fast float %143, %143
  %2234 = fmul fast float %144, %144
  %2235 = fadd fast float %2233, %2234
  %2236 = call float @dx.op.unary.f32(i32 24, float %2235)  ; Sqrt(value)
  %2237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.f32 %2237, 0
  %2239 = extractvalue %dx.types.CBufRet.f32 %2237, 1
  %2240 = fsub fast float %2236, %2238
  %2241 = fdiv fast float %2240, %2239
  %2242 = call float @dx.op.unary.f32(i32 7, float %2241)  ; Saturate(value)
  %2243 = fmul fast float %2242, 2.000000e+00
  %2244 = fsub fast float 3.000000e+00, %2243
  %2245 = fmul fast float %2242, %2242
  %2246 = fmul fast float %2245, %2244
  %2247 = call float @dx.op.dot3.f32(i32 55, float %2230, float %2231, float %2232, float %1589, float %1590, float %1591)  ; Dot3(ax,ay,az,bx,by,bz)
  %2248 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2247)  ; FMax(a,b)
  %2249 = fmul fast float %2248, 0x400C5BF8A0000000
  %2250 = fmul fast float %2246, %2204
  %2251 = fmul fast float %2250, %2249
  %2252 = fadd fast float %2251, %2173
  %2253 = fmul fast float %2246, %2205
  %2254 = fmul fast float %2253, %2249
  %2255 = fadd fast float %2254, %2172
  %2256 = fmul fast float %2246, %2206
  %2257 = fmul fast float %2256, %2249
  %2258 = fadd fast float %2257, %2171
  br label %2259

; <label>:2259                                    ; preds = %2229, %2170, %2095
  %2260 = phi float [ %2258, %2229 ], [ %2171, %2170 ], [ %2107, %2095 ]
  %2261 = phi float [ %2255, %2229 ], [ %2172, %2170 ], [ %2106, %2095 ]
  %2262 = phi float [ %2252, %2229 ], [ %2173, %2170 ], [ %2105, %2095 ]
  %2263 = fcmp fast ogt float %1752, %1789
  %2264 = and i1 %2111, %2263
  %2265 = and i1 %2113, %2264
  %2266 = and i1 %2115, %2265
  %2267 = and i1 %2117, %2266
  br i1 %2267, label %2268, label %2325, !dx.controlflow.hints !113

; <label>:2268                                    ; preds = %2259
  %2269 = fmul fast float %1791, 0x3FC24924A0000000
  %2270 = fsub fast float %1752, %1789
  %2271 = fdiv fast float %2270, %2269
  %2272 = call float @dx.op.unary.f32(i32 7, float %2271)  ; Saturate(value)
  %2273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2274 = extractvalue %dx.types.CBufRet.f32 %2273, 0
  %2275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2276 = extractvalue %dx.types.CBufRet.f32 %2275, 0
  %2277 = extractvalue %dx.types.CBufRet.f32 %2275, 1
  %2278 = extractvalue %dx.types.CBufRet.f32 %2275, 2
  %2279 = fsub fast float %2274, %2262
  %2280 = fsub fast float %2276, %2102
  %2281 = fsub fast float %2277, %2103
  %2282 = fsub fast float %2278, %2104
  %2283 = fmul fast float %2279, %2272
  %2284 = fmul fast float %2280, %2272
  %2285 = fmul fast float %2281, %2272
  %2286 = fmul fast float %2282, %2272
  %2287 = fadd fast float %2283, %2262
  %2288 = fadd fast float %2284, %2102
  %2289 = fadd fast float %2285, %2103
  %2290 = fadd fast float %2286, %2104
  %2291 = extractvalue %dx.types.CBufRet.f32 %2273, 1
  %2292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2293 = extractvalue %dx.types.CBufRet.f32 %2292, 0
  %2294 = extractvalue %dx.types.CBufRet.f32 %2292, 1
  %2295 = extractvalue %dx.types.CBufRet.f32 %2292, 2
  %2296 = fsub fast float %2291, %2261
  %2297 = fsub fast float %2293, %2099
  %2298 = fsub fast float %2294, %2100
  %2299 = fsub fast float %2295, %2101
  %2300 = fmul fast float %2296, %2272
  %2301 = fmul fast float %2297, %2272
  %2302 = fmul fast float %2298, %2272
  %2303 = fmul fast float %2299, %2272
  %2304 = fadd fast float %2300, %2261
  %2305 = fadd fast float %2301, %2099
  %2306 = fadd fast float %2302, %2100
  %2307 = fadd fast float %2303, %2101
  %2308 = extractvalue %dx.types.CBufRet.f32 %2273, 2
  %2309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2310 = extractvalue %dx.types.CBufRet.f32 %2309, 0
  %2311 = extractvalue %dx.types.CBufRet.f32 %2309, 1
  %2312 = extractvalue %dx.types.CBufRet.f32 %2309, 2
  %2313 = fsub fast float %2308, %2260
  %2314 = fsub fast float %2310, %2096
  %2315 = fsub fast float %2311, %2097
  %2316 = fsub fast float %2312, %2098
  %2317 = fmul fast float %2313, %2272
  %2318 = fmul fast float %2314, %2272
  %2319 = fmul fast float %2315, %2272
  %2320 = fmul fast float %2316, %2272
  %2321 = fadd fast float %2317, %2260
  %2322 = fadd fast float %2318, %2096
  %2323 = fadd fast float %2319, %2097
  %2324 = fadd fast float %2320, %2098
  br label %2325

; <label>:2325                                    ; preds = %2268, %2259
  %2326 = phi float [ %2321, %2268 ], [ %2260, %2259 ]
  %2327 = phi float [ %2322, %2268 ], [ %2096, %2259 ]
  %2328 = phi float [ %2323, %2268 ], [ %2097, %2259 ]
  %2329 = phi float [ %2324, %2268 ], [ %2098, %2259 ]
  %2330 = phi float [ %2304, %2268 ], [ %2261, %2259 ]
  %2331 = phi float [ %2305, %2268 ], [ %2099, %2259 ]
  %2332 = phi float [ %2306, %2268 ], [ %2100, %2259 ]
  %2333 = phi float [ %2307, %2268 ], [ %2101, %2259 ]
  %2334 = phi float [ %2287, %2268 ], [ %2262, %2259 ]
  %2335 = phi float [ %2288, %2268 ], [ %2102, %2259 ]
  %2336 = phi float [ %2289, %2268 ], [ %2103, %2259 ]
  %2337 = phi float [ %2290, %2268 ], [ %2104, %2259 ]
  %2338 = extractvalue %dx.types.CBufRet.f32 %1914, 3
  %2339 = fmul fast float %2338, %2334
  %2340 = fmul fast float %2338, %2330
  %2341 = fmul fast float %2338, %2326
  %2342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2343 = extractvalue %dx.types.CBufRet.f32 %2342, 3
  %2344 = fmul fast float %2339, %2343
  %2345 = fmul fast float %2340, %2343
  %2346 = fmul fast float %2341, %2343
  %2347 = call float @dx.op.dot3.f32(i32 55, float %2344, float %2345, float %2346, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2348 = fmul fast float %2347, 0x3FD20DD760000000
  %2349 = fmul fast float %2335, 1.500000e+00
  %2350 = fmul fast float %2349, %2338
  %2351 = fmul fast float %2350, %2343
  %2352 = fmul fast float %2336, 1.500000e+00
  %2353 = fmul fast float %2352, %2338
  %2354 = fmul fast float %2353, %2343
  %2355 = fmul fast float %2337, 1.500000e+00
  %2356 = fmul fast float %2355, %2338
  %2357 = fmul fast float %2356, %2343
  %2358 = fmul fast float %2331, 1.500000e+00
  %2359 = fmul fast float %2358, %2338
  %2360 = fmul fast float %2359, %2343
  %2361 = fmul fast float %2332, 1.500000e+00
  %2362 = fmul fast float %2361, %2338
  %2363 = fmul fast float %2362, %2343
  %2364 = fmul fast float %2333, 1.500000e+00
  %2365 = fmul fast float %2364, %2338
  %2366 = fmul fast float %2365, %2343
  %2367 = fmul fast float %2327, 1.500000e+00
  %2368 = fmul fast float %2367, %2338
  %2369 = fmul fast float %2368, %2343
  %2370 = fmul fast float %2328, 1.500000e+00
  %2371 = fmul fast float %2370, %2338
  %2372 = fmul fast float %2371, %2343
  %2373 = fmul fast float %2329, 1.500000e+00
  %2374 = fmul fast float %2373, %2338
  %2375 = fmul fast float %2374, %2343
  %2376 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2344)  ; FMax(a,b)
  %2377 = call float @dx.op.dot3.f32(i32 55, float %2351, float %2354, float %2357, float %2351, float %2354, float %2357)  ; Dot3(ax,ay,az,bx,by,bz)
  %2378 = fcmp fast oeq float %2377, 0.000000e+00
  %2379 = fcmp fast oeq float %2376, 0.000000e+00
  %2380 = or i1 %2379, %2378
  br i1 %2380, label %2410, label %2381

; <label>:2381                                    ; preds = %2325
  %2382 = fsub fast float -0.000000e+00, %2357
  %2383 = fsub fast float -0.000000e+00, %2351
  %2384 = call float @dx.op.unary.f32(i32 24, float %2377)  ; Sqrt(value)
  %2385 = fdiv fast float %2384, %2376
  %2386 = fcmp fast ogt float %2385, 0x3FFB6F8900000000
  %2387 = select i1 %2386, float 0x3FFB6F8900000000, float %2385
  %2388 = fmul fast float %2387, 0x3FE8A23460000000
  %2389 = call float @dx.op.unary.f32(i32 7, float %2388)  ; Saturate(value)
  %2390 = call float @dx.op.binary.f32(i32 35, float %2387, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2391 = fmul fast float %2389, %2376
  %2392 = fmul fast float %2390, 0x3FF279A740000000
  %2393 = fadd fast float %2392, -1.000000e+00
  %2394 = call float @dx.op.dot3.f32(i32 55, float %2382, float %2383, float %2354, float %2382, float %2383, float %2354)  ; Dot3(ax,ay,az,bx,by,bz)
  %2395 = call float @dx.op.unary.f32(i32 25, float %2394)  ; Rsqrt(value)
  %2396 = fmul fast float %2395, %2382
  %2397 = fmul fast float %2395, %2383
  %2398 = fmul fast float %2395, %2354
  %2399 = fmul fast float %2393, %2393
  %2400 = fsub fast float 1.000000e+00, %2399
  %2401 = fmul fast float %2390, 0x40005F8BE0000000
  %2402 = fsub fast float 0x400C5BF8A0000000, %2401
  %2403 = fdiv fast float %2391, %2402
  %2404 = fmul fast float %2403, 0x3FEE31C3C0000000
  %2405 = fmul fast float %2404, %2400
  %2406 = fmul fast float %2390, 0x3FDACB7480000000
  %2407 = fadd fast float %2406, 0xBFD7347680000000
  %2408 = fmul fast float %2407, %2403
  %2409 = fmul fast float %2408, %2400
  br label %2410

; <label>:2410                                    ; preds = %2381, %2325
  %2411 = phi float [ %2396, %2381 ], [ 0.000000e+00, %2325 ]
  %2412 = phi float [ %2397, %2381 ], [ 0.000000e+00, %2325 ]
  %2413 = phi float [ %2398, %2381 ], [ 0.000000e+00, %2325 ]
  %2414 = phi float [ %2405, %2381 ], [ 0.000000e+00, %2325 ]
  %2415 = phi float [ %2409, %2381 ], [ 0.000000e+00, %2325 ]
  %2416 = call float @dx.op.dot3.f32(i32 55, float %2411, float %2412, float %2413, float %1589, float %1590, float %1591)  ; Dot3(ax,ay,az,bx,by,bz)
  %2417 = fmul fast float %2416, %2416
  %2418 = fmul fast float %2417, 0x3FEE471020000000
  %2419 = fadd fast float %2418, 0xBFD42F6020000000
  %2420 = fmul fast float %2376, 0x3FD20DD760000000
  %2421 = fmul fast float %2419, %2415
  %2422 = fmul fast float %2414, 0x3FDF454380000000
  %2423 = fmul fast float %2422, %2416
  %2424 = fadd fast float %2423, %2420
  %2425 = fadd fast float %2424, %2421
  %2426 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2345)  ; FMax(a,b)
  %2427 = call float @dx.op.dot3.f32(i32 55, float %2360, float %2363, float %2366, float %2360, float %2363, float %2366)  ; Dot3(ax,ay,az,bx,by,bz)
  %2428 = fcmp fast oeq float %2427, 0.000000e+00
  %2429 = fcmp fast oeq float %2426, 0.000000e+00
  %2430 = or i1 %2429, %2428
  br i1 %2430, label %2460, label %2431

; <label>:2431                                    ; preds = %2410
  %2432 = fsub fast float -0.000000e+00, %2366
  %2433 = fsub fast float -0.000000e+00, %2360
  %2434 = call float @dx.op.unary.f32(i32 24, float %2427)  ; Sqrt(value)
  %2435 = fdiv fast float %2434, %2426
  %2436 = fcmp fast ogt float %2435, 0x3FFB6F8900000000
  %2437 = select i1 %2436, float 0x3FFB6F8900000000, float %2435
  %2438 = fmul fast float %2437, 0x3FE8A23460000000
  %2439 = call float @dx.op.unary.f32(i32 7, float %2438)  ; Saturate(value)
  %2440 = call float @dx.op.binary.f32(i32 35, float %2437, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2441 = fmul fast float %2439, %2426
  %2442 = fmul fast float %2440, 0x3FF279A740000000
  %2443 = fadd fast float %2442, -1.000000e+00
  %2444 = call float @dx.op.dot3.f32(i32 55, float %2432, float %2433, float %2363, float %2432, float %2433, float %2363)  ; Dot3(ax,ay,az,bx,by,bz)
  %2445 = call float @dx.op.unary.f32(i32 25, float %2444)  ; Rsqrt(value)
  %2446 = fmul fast float %2445, %2432
  %2447 = fmul fast float %2445, %2433
  %2448 = fmul fast float %2445, %2363
  %2449 = fmul fast float %2443, %2443
  %2450 = fsub fast float 1.000000e+00, %2449
  %2451 = fmul fast float %2440, 0x40005F8BE0000000
  %2452 = fsub fast float 0x400C5BF8A0000000, %2451
  %2453 = fdiv fast float %2441, %2452
  %2454 = fmul fast float %2453, 0x3FEE31C3C0000000
  %2455 = fmul fast float %2454, %2450
  %2456 = fmul fast float %2440, 0x3FDACB7480000000
  %2457 = fadd fast float %2456, 0xBFD7347680000000
  %2458 = fmul fast float %2457, %2453
  %2459 = fmul fast float %2458, %2450
  br label %2460

; <label>:2460                                    ; preds = %2431, %2410
  %2461 = phi float [ %2446, %2431 ], [ 0.000000e+00, %2410 ]
  %2462 = phi float [ %2447, %2431 ], [ 0.000000e+00, %2410 ]
  %2463 = phi float [ %2448, %2431 ], [ 0.000000e+00, %2410 ]
  %2464 = phi float [ %2455, %2431 ], [ 0.000000e+00, %2410 ]
  %2465 = phi float [ %2459, %2431 ], [ 0.000000e+00, %2410 ]
  %2466 = call float @dx.op.dot3.f32(i32 55, float %2461, float %2462, float %2463, float %1589, float %1590, float %1591)  ; Dot3(ax,ay,az,bx,by,bz)
  %2467 = fmul fast float %2466, %2466
  %2468 = fmul fast float %2467, 0x3FEE471020000000
  %2469 = fadd fast float %2468, 0xBFD42F6020000000
  %2470 = fmul fast float %2426, 0x3FD20DD760000000
  %2471 = fmul fast float %2469, %2465
  %2472 = fmul fast float %2464, 0x3FDF454380000000
  %2473 = fmul fast float %2472, %2466
  %2474 = fadd fast float %2473, %2470
  %2475 = fadd fast float %2474, %2471
  %2476 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2346)  ; FMax(a,b)
  %2477 = call float @dx.op.dot3.f32(i32 55, float %2369, float %2372, float %2375, float %2369, float %2372, float %2375)  ; Dot3(ax,ay,az,bx,by,bz)
  %2478 = fcmp fast oeq float %2477, 0.000000e+00
  %2479 = fcmp fast oeq float %2476, 0.000000e+00
  %2480 = or i1 %2479, %2478
  br i1 %2480, label %2510, label %2481

; <label>:2481                                    ; preds = %2460
  %2482 = fsub fast float -0.000000e+00, %2375
  %2483 = fsub fast float -0.000000e+00, %2369
  %2484 = call float @dx.op.unary.f32(i32 24, float %2477)  ; Sqrt(value)
  %2485 = fdiv fast float %2484, %2476
  %2486 = fcmp fast ogt float %2485, 0x3FFB6F8900000000
  %2487 = select i1 %2486, float 0x3FFB6F8900000000, float %2485
  %2488 = fmul fast float %2487, 0x3FE8A23460000000
  %2489 = call float @dx.op.unary.f32(i32 7, float %2488)  ; Saturate(value)
  %2490 = call float @dx.op.binary.f32(i32 35, float %2487, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2491 = fmul fast float %2489, %2476
  %2492 = fmul fast float %2490, 0x3FF279A740000000
  %2493 = fadd fast float %2492, -1.000000e+00
  %2494 = call float @dx.op.dot3.f32(i32 55, float %2482, float %2483, float %2372, float %2482, float %2483, float %2372)  ; Dot3(ax,ay,az,bx,by,bz)
  %2495 = call float @dx.op.unary.f32(i32 25, float %2494)  ; Rsqrt(value)
  %2496 = fmul fast float %2495, %2482
  %2497 = fmul fast float %2495, %2483
  %2498 = fmul fast float %2495, %2372
  %2499 = fmul fast float %2493, %2493
  %2500 = fsub fast float 1.000000e+00, %2499
  %2501 = fmul fast float %2490, 0x40005F8BE0000000
  %2502 = fsub fast float 0x400C5BF8A0000000, %2501
  %2503 = fdiv fast float %2491, %2502
  %2504 = fmul fast float %2503, 0x3FEE31C3C0000000
  %2505 = fmul fast float %2504, %2500
  %2506 = fmul fast float %2490, 0x3FDACB7480000000
  %2507 = fadd fast float %2506, 0xBFD7347680000000
  %2508 = fmul fast float %2507, %2503
  %2509 = fmul fast float %2508, %2500
  br label %2510

; <label>:2510                                    ; preds = %2481, %2460
  %2511 = phi float [ %2496, %2481 ], [ 0.000000e+00, %2460 ]
  %2512 = phi float [ %2497, %2481 ], [ 0.000000e+00, %2460 ]
  %2513 = phi float [ %2498, %2481 ], [ 0.000000e+00, %2460 ]
  %2514 = phi float [ %2505, %2481 ], [ 0.000000e+00, %2460 ]
  %2515 = phi float [ %2509, %2481 ], [ 0.000000e+00, %2460 ]
  %2516 = call float @dx.op.dot3.f32(i32 55, float %2511, float %2512, float %2513, float %1589, float %1590, float %1591)  ; Dot3(ax,ay,az,bx,by,bz)
  %2517 = fmul fast float %2516, %2516
  %2518 = fmul fast float %2517, 0x3FEE471020000000
  %2519 = fadd fast float %2518, 0xBFD42F6020000000
  %2520 = fmul fast float %2476, 0x3FD20DD760000000
  %2521 = fmul fast float %2519, %2515
  %2522 = fmul fast float %2514, 0x3FDF454380000000
  %2523 = fmul fast float %2522, %2516
  %2524 = fadd fast float %2523, %2520
  %2525 = fadd fast float %2524, %2521
  %2526 = call float @dx.op.binary.f32(i32 35, float %2425, float 0.000000e+00)  ; FMax(a,b)
  %2527 = call float @dx.op.binary.f32(i32 35, float %2475, float 0.000000e+00)  ; FMax(a,b)
  %2528 = call float @dx.op.binary.f32(i32 35, float %2525, float 0.000000e+00)  ; FMax(a,b)
  %2529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2530 = extractvalue %dx.types.CBufRet.f32 %2529, 0
  %2531 = call float @dx.op.binary.f32(i32 36, float %1601, float %2530)  ; FMin(a,b)
  %2532 = fsub fast float 1.000000e+00, %1742
  %2533 = fmul fast float %2531, %2532
  %2534 = fsub fast float 1.000000e+00, %2533
  %2535 = bitcast float %2534 to i32
  %2536 = sub nsw i32 2129859010, %2535
  %2537 = bitcast i32 %2536 to float
  %2538 = call float @dx.op.binary.f32(i32 36, float %1602, float %2530)  ; FMin(a,b)
  %2539 = fmul fast float %2538, %2532
  %2540 = fsub fast float 1.000000e+00, %2539
  %2541 = bitcast float %2540 to i32
  %2542 = sub nsw i32 2129859010, %2541
  %2543 = bitcast i32 %2542 to float
  %2544 = call float @dx.op.binary.f32(i32 36, float %1603, float %2530)  ; FMin(a,b)
  %2545 = fmul fast float %2544, %2532
  %2546 = fsub fast float 1.000000e+00, %2545
  %2547 = bitcast float %2546 to i32
  %2548 = sub nsw i32 2129859010, %2547
  %2549 = bitcast i32 %2548 to float
  %2550 = fmul fast float %2526, %1742
  %2551 = fmul fast float %2550, %2537
  %2552 = fmul fast float %2527, %1742
  %2553 = fmul fast float %2552, %2543
  %2554 = fmul fast float %2528, %1742
  %2555 = fmul fast float %2554, %2549
  %2556 = call float @dx.op.dot3.f32(i32 55, float %2551, float %2553, float %2555, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2557 = select i1 %1727, float 0.000000e+00, float %2551
  %2558 = select i1 %1727, float %2556, float %2553
  %2559 = select i1 %1727, float 0.000000e+00, float %2555
  %2560 = fsub fast float 1.000000e+00, %1610
  %2561 = fsub fast float 1.000000e+00, %1611
  %2562 = fsub fast float 1.000000e+00, %1732
  %2563 = fmul fast float %1650, %2560
  %2564 = fmul fast float %1650, %2561
  %2565 = fmul fast float %2562, %1650
  %2566 = fadd fast float %2563, %1610
  %2567 = fadd fast float %2564, %1611
  %2568 = fadd fast float %2565, %1732
  %2569 = and i32 %1057, 65535
  %2570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2569)  ; LegacyF16ToF32(value)
  %2571 = lshr i32 %1057, 16
  %2572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2571)  ; LegacyF16ToF32(value)
  %2573 = fcmp fast ogt float %2570, 0.000000e+00
  %2574 = call float @dx.op.unary.f32(i32 6, float %1734)  ; FAbs(value)
  %2575 = select i1 %2573, float %2574, float 0.000000e+00
  %2576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %57, float %2570, float %2575, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2577 = extractvalue %dx.types.ResRet.f32 %2576, 0
  %2578 = extractvalue %dx.types.ResRet.f32 %2576, 1
  %2579 = extractvalue %dx.types.ResRet.f32 %2576, 2
  %2580 = fadd fast float %2577, -5.000000e-01
  %2581 = fadd fast float %2578, -5.000000e-01
  %2582 = fadd fast float %2579, -5.000000e-01
  %2583 = fmul fast float %1610, 4.000000e+00
  %2584 = fmul fast float %2583, %2560
  %2585 = fmul fast float %2584, %2572
  %2586 = fmul fast float %2585, %2580
  %2587 = fmul fast float %1611, 4.000000e+00
  %2588 = fmul fast float %2587, %2561
  %2589 = fmul fast float %2588, %2572
  %2590 = fmul fast float %2589, %2581
  %2591 = fmul fast float %1732, 4.000000e+00
  %2592 = fmul fast float %2591, %2562
  %2593 = fmul fast float %2592, %2572
  %2594 = fmul fast float %2593, %2582
  %2595 = fadd fast float %2566, %2586
  %2596 = fadd fast float %2567, %2590
  %2597 = fadd fast float %2568, %2594
  %2598 = call float @dx.op.unary.f32(i32 7, float %2595)  ; Saturate(value)
  %2599 = call float @dx.op.unary.f32(i32 7, float %2596)  ; Saturate(value)
  %2600 = call float @dx.op.unary.f32(i32 7, float %2597)  ; Saturate(value)
  %2601 = call float @dx.op.binary.f32(i32 35, float %2599, float %2600)  ; FMax(a,b)
  %2602 = call float @dx.op.binary.f32(i32 35, float %2598, float %2601)  ; FMax(a,b)
  %2603 = fsub fast float 1.000000e+00, %2602
  %2604 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2605 = extractvalue %dx.types.CBufRet.i32 %2604, 0
  %2606 = and i32 %2605, 524288
  %2607 = icmp ne i32 %2606, 0
  %2608 = select i1 %2607, float 0.000000e+00, float 1.000000e+00
  %2609 = xor i1 %2607, true
  %2610 = zext i1 %2609 to i32
  br i1 %2607, label %2611, label %2881

; <label>:2611                                    ; preds = %2510
  %2612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %2613 = extractvalue %dx.types.CBufRet.f32 %2612, 0
  %2614 = extractvalue %dx.types.CBufRet.f32 %2612, 1
  %2615 = extractvalue %dx.types.CBufRet.f32 %2612, 2
  %2616 = extractvalue %dx.types.CBufRet.f32 %2612, 3
  %2617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %2618 = extractvalue %dx.types.CBufRet.f32 %2617, 0
  %2619 = extractvalue %dx.types.CBufRet.f32 %2617, 1
  %2620 = extractvalue %dx.types.CBufRet.f32 %2617, 2
  %2621 = extractvalue %dx.types.CBufRet.f32 %2617, 3
  %2622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %2623 = extractvalue %dx.types.CBufRet.f32 %2622, 0
  %2624 = extractvalue %dx.types.CBufRet.f32 %2622, 1
  %2625 = extractvalue %dx.types.CBufRet.f32 %2622, 2
  %2626 = extractvalue %dx.types.CBufRet.f32 %2622, 3
  %2627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %2628 = extractvalue %dx.types.CBufRet.f32 %2627, 0
  %2629 = extractvalue %dx.types.CBufRet.f32 %2627, 1
  %2630 = extractvalue %dx.types.CBufRet.f32 %2627, 2
  %2631 = extractvalue %dx.types.CBufRet.f32 %2627, 3
  %2632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %2633 = extractvalue %dx.types.CBufRet.f32 %2632, 0
  %2634 = extractvalue %dx.types.CBufRet.f32 %2632, 1
  %2635 = extractvalue %dx.types.CBufRet.f32 %2632, 2
  %2636 = extractvalue %dx.types.CBufRet.f32 %2632, 3
  %2637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %2638 = extractvalue %dx.types.CBufRet.f32 %2637, 0
  %2639 = extractvalue %dx.types.CBufRet.f32 %2637, 1
  %2640 = extractvalue %dx.types.CBufRet.f32 %2637, 2
  %2641 = extractvalue %dx.types.CBufRet.f32 %2637, 3
  %2642 = call float @dx.op.dot3.f32(i32 55, float %2638, float %2639, float %2640, float %1739, float %1740, float %1741)  ; Dot3(ax,ay,az,bx,by,bz)
  %2643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %2644 = extractvalue %dx.types.CBufRet.f32 %2643, 1
  %2645 = extractvalue %dx.types.CBufRet.f32 %2643, 0
  %2646 = select i1 %105, float %2645, float %2644
  %2647 = fmul fast float %2642, 8.000000e+00
  %2648 = fmul fast float %2647, %2646
  %2649 = call float @dx.op.unary.f32(i32 7, float %2648)  ; Saturate(value)
  %2650 = fcmp fast ogt float %2649, 0.000000e+00
  br i1 %2650, label %2651, label %2868, !dx.controlflow.hints !114

; <label>:2651                                    ; preds = %2611
  %2652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %2653 = extractvalue %dx.types.CBufRet.f32 %2652, 1
  %2654 = fmul fast float %1071, 2.000000e+00
  %2655 = fmul fast float %1072, 2.000000e+00
  %2656 = fadd fast float %2654, -1.000000e+00
  %2657 = fadd fast float %2655, -1.000000e+00
  %2658 = fmul fast float %2653, %2656
  %2659 = fmul fast float %2653, %2657
  %2660 = fadd fast float %2658, %88
  %2661 = fadd fast float %2659, %89
  %2662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2663 = extractvalue %dx.types.CBufRet.f32 %2662, 2
  %2664 = extractvalue %dx.types.CBufRet.f32 %2662, 3
  %2665 = fmul fast float %2660, %2663
  %2666 = fmul fast float %2661, %2664
  %2667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %58, float %2665, float %2666, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2668 = extractvalue %dx.types.ResRet.f32 %2667, 0
  %2669 = fcmp fast une float %2668, 0xFFF0000000000000
  %2670 = fcmp fast une float %2668, 0x7FF0000000000000
  %2671 = and i1 %2669, %2670
  %2672 = call float @dx.op.unary.f32(i32 6, float %2668)  ; FAbs(value)
  %2673 = fsub fast float 1.000000e+00, %2672
  %2674 = select i1 %2671, float 1.000000e+00, float 0.000000e+00
  %2675 = fmul fast float %2674, %2649
  %2676 = fcmp fast ogt float %2675, 0.000000e+00
  br i1 %2676, label %2677, label %2868, !dx.controlflow.hints !115

; <label>:2677                                    ; preds = %2651
  %2678 = fmul fast float %2613, %143
  %2679 = call float @dx.op.tertiary.f32(i32 46, float %144, float %2614, float %2678)  ; FMad(a,b,c)
  %2680 = call float @dx.op.tertiary.f32(i32 46, float %145, float %2615, float %2679)  ; FMad(a,b,c)
  %2681 = fadd fast float %2680, %2616
  %2682 = fmul fast float %2618, %143
  %2683 = call float @dx.op.tertiary.f32(i32 46, float %144, float %2619, float %2682)  ; FMad(a,b,c)
  %2684 = call float @dx.op.tertiary.f32(i32 46, float %145, float %2620, float %2683)  ; FMad(a,b,c)
  %2685 = fadd fast float %2684, %2621
  %2686 = fmul fast float %2623, %143
  %2687 = call float @dx.op.tertiary.f32(i32 46, float %144, float %2624, float %2686)  ; FMad(a,b,c)
  %2688 = call float @dx.op.tertiary.f32(i32 46, float %145, float %2625, float %2687)  ; FMad(a,b,c)
  %2689 = fadd fast float %2688, %2626
  %2690 = fdiv fast float 1.000000e+00, %2689
  %2691 = fmul fast float %2690, %2681
  %2692 = fmul fast float %2690, %2685
  %2693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2694 = extractvalue %dx.types.CBufRet.f32 %2693, 0
  %2695 = extractvalue %dx.types.CBufRet.f32 %2693, 1
  %2696 = fmul fast float %2691, %2694
  %2697 = fmul fast float %2692, %2695
  %2698 = extractvalue %dx.types.CBufRet.f32 %2693, 2
  %2699 = extractvalue %dx.types.CBufRet.f32 %2693, 3
  %2700 = fadd fast float %2696, %2698
  %2701 = fadd fast float %2697, %2699
  %2702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2703 = extractvalue %dx.types.CBufRet.f32 %2702, 3
  %2704 = fmul fast float %2703, %1739
  %2705 = fmul fast float %2703, %1740
  %2706 = fmul fast float %2703, %1741
  %2707 = fadd fast float %2704, %143
  %2708 = fadd fast float %2705, %144
  %2709 = fadd fast float %2706, %145
  %2710 = fmul fast float %2707, %2613
  %2711 = call float @dx.op.tertiary.f32(i32 46, float %2708, float %2614, float %2710)  ; FMad(a,b,c)
  %2712 = call float @dx.op.tertiary.f32(i32 46, float %2709, float %2615, float %2711)  ; FMad(a,b,c)
  %2713 = fadd fast float %2712, %2616
  %2714 = fmul fast float %2707, %2618
  %2715 = call float @dx.op.tertiary.f32(i32 46, float %2708, float %2619, float %2714)  ; FMad(a,b,c)
  %2716 = call float @dx.op.tertiary.f32(i32 46, float %2709, float %2620, float %2715)  ; FMad(a,b,c)
  %2717 = fadd fast float %2716, %2621
  %2718 = fmul fast float %2707, %2623
  %2719 = call float @dx.op.tertiary.f32(i32 46, float %2708, float %2624, float %2718)  ; FMad(a,b,c)
  %2720 = call float @dx.op.tertiary.f32(i32 46, float %2709, float %2625, float %2719)  ; FMad(a,b,c)
  %2721 = fadd fast float %2720, %2626
  %2722 = fdiv fast float 1.000000e+00, %2721
  %2723 = fmul fast float %2722, %2713
  %2724 = fmul fast float %2722, %2717
  %2725 = fmul fast float %2700, 2.000000e+00
  %2726 = fadd fast float %2725, -1.000000e+00
  %2727 = call float @dx.op.unary.f32(i32 6, float %2726)  ; FAbs(value)
  %2728 = fmul fast float %2727, 5.000000e+00
  %2729 = fadd fast float %2728, -4.000000e+00
  %2730 = call float @dx.op.unary.f32(i32 7, float %2729)  ; Saturate(value)
  %2731 = fsub fast float %2691, %2723
  %2732 = fmul fast float %2694, %2731
  %2733 = fmul fast float %2732, %2730
  %2734 = fsub fast float %2723, %2691
  %2735 = fmul fast float %2694, %2734
  %2736 = fadd fast float %2735, %2733
  %2737 = fsub fast float %2724, %2692
  %2738 = fmul fast float %2695, %2737
  %2739 = fmul fast float %2736, %2673
  %2740 = fmul fast float %2738, %2673
  %2741 = fadd fast float %2739, %2700
  %2742 = fadd fast float %2740, %2701
  %2743 = fsub fast float %2722, %2690
  %2744 = fmul fast float %2743, %2673
  %2745 = fadd fast float %2744, %2690
  %2746 = fdiv fast float 1.000000e+00, %2745
  %2747 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %57, float %2741, float %2742, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2748 = extractvalue %dx.types.ResRet.f32 %2747, 0
  %2749 = extractvalue %dx.types.ResRet.f32 %2747, 1
  %2750 = extractvalue %dx.types.ResRet.f32 %2747, 2
  %2751 = extractvalue %dx.types.CBufRet.f32 %2342, 1
  %2752 = fmul fast float %2751, %2748
  %2753 = fmul fast float %2751, %2749
  %2754 = fmul fast float %2751, %2750
  %2755 = call float @dx.op.binary.f32(i32 35, float %2746, float 0x3810000000000000)  ; FMax(a,b)
  %2756 = fdiv fast float %2689, %2755
  %2757 = call float @dx.op.unary.f32(i32 7, float %2756)  ; Saturate(value)
  %2758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %2759 = extractvalue %dx.types.CBufRet.f32 %2758, 0
  %2760 = extractvalue %dx.types.CBufRet.f32 %2758, 1
  %2761 = extractvalue %dx.types.CBufRet.f32 %2758, 2
  %2762 = fadd fast float %2759, %143
  %2763 = fadd fast float %2760, %144
  %2764 = fadd fast float %2761, %145
  %2765 = fmul fast float %2762, %2628
  %2766 = call float @dx.op.tertiary.f32(i32 46, float %2763, float %2629, float %2765)  ; FMad(a,b,c)
  %2767 = call float @dx.op.tertiary.f32(i32 46, float %2764, float %2630, float %2766)  ; FMad(a,b,c)
  %2768 = fadd fast float %2767, %2631
  %2769 = fmul fast float %2762, %2633
  %2770 = call float @dx.op.tertiary.f32(i32 46, float %2763, float %2634, float %2769)  ; FMad(a,b,c)
  %2771 = call float @dx.op.tertiary.f32(i32 46, float %2764, float %2635, float %2770)  ; FMad(a,b,c)
  %2772 = fadd fast float %2771, %2636
  %2773 = fmul fast float %2762, %2638
  %2774 = call float @dx.op.tertiary.f32(i32 46, float %2763, float %2639, float %2773)  ; FMad(a,b,c)
  %2775 = call float @dx.op.tertiary.f32(i32 46, float %2764, float %2640, float %2774)  ; FMad(a,b,c)
  %2776 = fadd fast float %2775, %2641
  %2777 = fdiv fast float 1.000000e+00, %2776
  %2778 = fmul fast float %2777, %2768
  %2779 = fmul fast float %2777, %2772
  %2780 = fmul fast float %2778, %2694
  %2781 = fmul fast float %2779, %2695
  %2782 = fadd fast float %2780, %2698
  %2783 = fadd fast float %2781, %2699
  %2784 = fadd fast float %2704, %2762
  %2785 = fadd fast float %2705, %2763
  %2786 = fadd fast float %2706, %2764
  %2787 = fmul fast float %2784, %2628
  %2788 = call float @dx.op.tertiary.f32(i32 46, float %2785, float %2629, float %2787)  ; FMad(a,b,c)
  %2789 = call float @dx.op.tertiary.f32(i32 46, float %2786, float %2630, float %2788)  ; FMad(a,b,c)
  %2790 = fadd fast float %2789, %2631
  %2791 = fmul fast float %2784, %2633
  %2792 = call float @dx.op.tertiary.f32(i32 46, float %2785, float %2634, float %2791)  ; FMad(a,b,c)
  %2793 = call float @dx.op.tertiary.f32(i32 46, float %2786, float %2635, float %2792)  ; FMad(a,b,c)
  %2794 = fadd fast float %2793, %2636
  %2795 = fmul fast float %2784, %2638
  %2796 = call float @dx.op.tertiary.f32(i32 46, float %2785, float %2639, float %2795)  ; FMad(a,b,c)
  %2797 = call float @dx.op.tertiary.f32(i32 46, float %2786, float %2640, float %2796)  ; FMad(a,b,c)
  %2798 = fadd fast float %2797, %2641
  %2799 = fdiv fast float 1.000000e+00, %2798
  %2800 = fmul fast float %2799, %2790
  %2801 = fmul fast float %2799, %2794
  %2802 = fmul fast float %2782, 2.000000e+00
  %2803 = fadd fast float %2802, -1.000000e+00
  %2804 = call float @dx.op.unary.f32(i32 6, float %2803)  ; FAbs(value)
  %2805 = fmul fast float %2804, 5.000000e+00
  %2806 = fadd fast float %2805, -4.000000e+00
  %2807 = call float @dx.op.unary.f32(i32 7, float %2806)  ; Saturate(value)
  %2808 = fsub fast float %2778, %2800
  %2809 = fmul fast float %2694, %2808
  %2810 = fmul fast float %2809, %2807
  %2811 = fsub fast float %2800, %2778
  %2812 = fmul fast float %2694, %2811
  %2813 = fadd fast float %2812, %2810
  %2814 = fsub fast float %2801, %2779
  %2815 = fmul fast float %2695, %2814
  %2816 = fmul fast float %2813, %2673
  %2817 = fmul fast float %2815, %2673
  %2818 = fadd fast float %2816, %2782
  %2819 = fadd fast float %2817, %2783
  %2820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %57, float %2818, float %2819, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2821 = extractvalue %dx.types.ResRet.f32 %2820, 0
  %2822 = extractvalue %dx.types.ResRet.f32 %2820, 1
  %2823 = extractvalue %dx.types.ResRet.f32 %2820, 2
  %2824 = extractvalue %dx.types.CBufRet.f32 %2342, 2
  %2825 = fmul fast float %2824, %2821
  %2826 = fmul fast float %2824, %2822
  %2827 = fmul fast float %2824, %2823
  %2828 = and i32 %1669, 255
  %2829 = uitofp i32 %2828 to float
  %2830 = fmul fast float %2829, 0x3F70101020000000
  %2831 = fmul fast float %2830, %2757
  %2832 = extractvalue %dx.types.CBufRet.f32 %2643, 2
  %2833 = fadd fast float %2832, %2831
  %2834 = call float @dx.op.unary.f32(i32 7, float %2833)  ; Saturate(value)
  %2835 = call float @dx.op.binary.f32(i32 35, float %2752, float 0x3810000000000000)  ; FMax(a,b)
  %2836 = call float @dx.op.binary.f32(i32 35, float %2753, float 0x3810000000000000)  ; FMax(a,b)
  %2837 = call float @dx.op.binary.f32(i32 35, float %2754, float 0x3810000000000000)  ; FMax(a,b)
  %2838 = call float @dx.op.unary.f32(i32 23, float %2835)  ; Log(value)
  %2839 = call float @dx.op.unary.f32(i32 23, float %2836)  ; Log(value)
  %2840 = call float @dx.op.unary.f32(i32 23, float %2837)  ; Log(value)
  %2841 = call float @dx.op.binary.f32(i32 35, float %2825, float 0x3810000000000000)  ; FMax(a,b)
  %2842 = call float @dx.op.binary.f32(i32 35, float %2826, float 0x3810000000000000)  ; FMax(a,b)
  %2843 = call float @dx.op.binary.f32(i32 35, float %2827, float 0x3810000000000000)  ; FMax(a,b)
  %2844 = call float @dx.op.unary.f32(i32 23, float %2841)  ; Log(value)
  %2845 = call float @dx.op.unary.f32(i32 23, float %2842)  ; Log(value)
  %2846 = call float @dx.op.unary.f32(i32 23, float %2843)  ; Log(value)
  %2847 = fsub fast float %2838, %2844
  %2848 = fsub fast float %2839, %2845
  %2849 = fsub fast float %2840, %2846
  %2850 = fmul fast float %2847, %2834
  %2851 = fmul fast float %2848, %2834
  %2852 = fmul fast float %2849, %2834
  %2853 = fadd fast float %2850, %2844
  %2854 = fadd fast float %2851, %2845
  %2855 = fadd fast float %2852, %2846
  %2856 = call float @dx.op.unary.f32(i32 21, float %2853)  ; Exp(value)
  %2857 = call float @dx.op.unary.f32(i32 21, float %2854)  ; Exp(value)
  %2858 = call float @dx.op.unary.f32(i32 21, float %2855)  ; Exp(value)
  %2859 = select i1 %1727, float 0.000000e+00, float %2857
  %2860 = select i1 %1727, float 0.000000e+00, float %2858
  %2861 = fmul fast float %2819, 2.000000e+00
  %2862 = fadd fast float %2861, -1.000000e+00
  %2863 = fmul fast float %2862, %2862
  %2864 = fsub fast float 1.000000e+00, %2863
  %2865 = call float @dx.op.unary.f32(i32 7, float %2864)  ; Saturate(value)
  %2866 = call float @dx.op.unary.f32(i32 7, float %2865)  ; Saturate(value)
  %2867 = fmul fast float %2866, %2675
  br label %2868

; <label>:2868                                    ; preds = %2677, %2651, %2611
  %2869 = phi float [ %2856, %2677 ], [ 0.000000e+00, %2651 ], [ 0.000000e+00, %2611 ]
  %2870 = phi float [ %2859, %2677 ], [ 0.000000e+00, %2651 ], [ 0.000000e+00, %2611 ]
  %2871 = phi float [ %2860, %2677 ], [ 0.000000e+00, %2651 ], [ 0.000000e+00, %2611 ]
  %2872 = phi float [ %2867, %2677 ], [ 0.000000e+00, %2651 ], [ 0.000000e+00, %2611 ]
  %2873 = fcmp fast olt float %2872, 1.000000e+00
  %2874 = or i1 %2873, %2609
  %2875 = zext i1 %2874 to i32
  %2876 = fmul fast float %2872, %2608
  %2877 = fsub fast float %2872, %2876
  %2878 = fmul fast float %2877, %2869
  %2879 = fmul fast float %2877, %2870
  %2880 = fmul fast float %2877, %2871
  br label %2881

; <label>:2881                                    ; preds = %2868, %2510
  %2882 = phi float [ 0.000000e+00, %2510 ], [ %2877, %2868 ]
  %2883 = phi float [ 0.000000e+00, %2510 ], [ %2878, %2868 ]
  %2884 = phi float [ 0.000000e+00, %2510 ], [ %2879, %2868 ]
  %2885 = phi float [ 0.000000e+00, %2510 ], [ %2880, %2868 ]
  %2886 = phi i32 [ %2610, %2510 ], [ %2875, %2868 ]
  %2887 = icmp eq i32 %2886, 0
  br i1 %2887, label %3326, label %2888

; <label>:2888                                    ; preds = %2881
  %2889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2890 = extractvalue %dx.types.CBufRet.f32 %2889, 2
  %2891 = extractvalue %dx.types.CBufRet.f32 %2889, 3
  %2892 = fmul fast float %2890, %88
  %2893 = fmul fast float %2891, %89
  %2894 = fptoui float %2892 to i32
  %2895 = fptoui float %2893 to i32
  %2896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2897 = extractvalue %dx.types.CBufRet.f32 %2896, 0
  %2898 = extractvalue %dx.types.CBufRet.f32 %2896, 2
  %2899 = extractvalue %dx.types.CBufRet.f32 %2896, 3
  %2900 = fadd fast float %77, -4.000000e+00
  %2901 = call float @dx.op.binary.f32(i32 35, float %2900, float 0.000000e+00)  ; FMax(a,b)
  %2902 = fadd fast float %2901, %2897
  %2903 = fmul fast float %2902, %2898
  %2904 = call float @dx.op.unary.f32(i32 23, float %2903)  ; Log(value)
  %2905 = fmul fast float %2904, %2899
  %2906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2907 = extractvalue %dx.types.CBufRet.f32 %2906, 2
  %2908 = fmul fast float %2905, %2907
  %2909 = call float @dx.op.unary.f32(i32 7, float %2908)  ; Saturate(value)
  %2910 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2911 = extractvalue %dx.types.CBufRet.i32 %2910, 1
  %2912 = add i32 %2911, -1
  %2913 = uitofp i32 %2911 to float
  %2914 = fmul fast float %2913, %2909
  %2915 = fptoui float %2914 to i32
  %2916 = call i32 @dx.op.binary.i32(i32 40, i32 %2915, i32 %2912)  ; UMin(a,b)
  %2917 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2918 = extractvalue %dx.types.CBufRet.i32 %2917, 2
  %2919 = extractvalue %dx.types.CBufRet.i32 %2917, 3
  %2920 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2895, i32 %2918, i32 %2894)  ; UMad(a,b,c)
  %2921 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2916, i32 %2919, i32 %2920)  ; UMad(a,b,c)
  %2922 = call float @dx.op.binary.f32(i32 35, float %77, float 0.000000e+00)  ; FMax(a,b)
  %2923 = fptoui float %2922 to i32
  %2924 = lshr i32 %2923, 5
  %2925 = call i32 @dx.op.binary.i32(i32 40, i32 %2924, i32 8191)  ; UMin(a,b)
  %2926 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2927 = extractvalue %dx.types.CBufRet.i32 %2926, 2
  %2928 = add nsw i32 %2927, -1
  %2929 = call i32 @dx.op.binary.i32(i32 37, i32 %2928, i32 0)  ; IMax(a,b)
  %2930 = shl i32 %2925, 2
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = lshr i32 %2932, 16
  %2934 = and i32 %2932, 65535
  %2935 = lshr i32 %2932, 21
  %2936 = lshr i32 %2934, 5
  %2937 = call i32 @dx.op.binary.i32(i32 40, i32 %2936, i32 %2929)  ; UMin(a,b)
  %2938 = icmp ugt i32 %2935, %2937
  br i1 %2938, label %3302, label %2939

; <label>:2939                                    ; preds = %2888
  br label %2940

; <label>:2940                                    ; preds = %3294, %2939
  %2941 = phi float [ %3295, %3294 ], [ 0.000000e+00, %2939 ]
  %2942 = phi float [ %3296, %3294 ], [ 0.000000e+00, %2939 ]
  %2943 = phi float [ %3297, %3294 ], [ 0.000000e+00, %2939 ]
  %2944 = phi float [ %3298, %3294 ], [ 1.000000e+00, %2939 ]
  %2945 = phi i32 [ %3299, %3294 ], [ %2935, %2939 ]
  %2946 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2947 = extractvalue %dx.types.CBufRet.i32 %2946, 2
  %2948 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2921, i32 %2947, i32 %2945)  ; UMad(a,b,c)
  %2949 = shl i32 %2948, 2
  %2950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2949, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.i32 %2950, 0
  %2952 = shl i32 %2945, 5
  %2953 = sub nsw i32 %2933, %2952
  %2954 = call i32 @dx.op.binary.i32(i32 37, i32 %2953, i32 0)  ; IMax(a,b)
  %2955 = call i32 @dx.op.binary.i32(i32 38, i32 %2954, i32 31)  ; IMin(a,b)
  %2956 = sub nsw i32 1, %2933
  %2957 = add nsw i32 %2956, %2934
  %2958 = call i32 @dx.op.binary.i32(i32 37, i32 %2957, i32 0)  ; IMax(a,b)
  %2959 = call i32 @dx.op.binary.i32(i32 38, i32 %2958, i32 32)  ; IMin(a,b)
  %2960 = and i32 %2959, 31
  %2961 = shl i32 -1, %2960
  %2962 = xor i32 %2961, -1
  %2963 = and i32 %2955, 31
  %2964 = shl i32 %2962, %2963
  %2965 = icmp eq i32 %2959, 32
  %2966 = select i1 %2965, i32 -1, i32 %2964
  %2967 = and i32 %2966, %2951
  %2968 = icmp eq i32 %2967, 0
  br i1 %2968, label %3294, label %2969

; <label>:2969                                    ; preds = %2940
  br label %2970

; <label>:2970                                    ; preds = %3077, %2969
  %2971 = phi float [ %3078, %3077 ], [ %2941, %2969 ]
  %2972 = phi float [ %3079, %3077 ], [ %2942, %2969 ]
  %2973 = phi float [ %3080, %3077 ], [ %2943, %2969 ]
  %2974 = phi float [ %3081, %3077 ], [ %2944, %2969 ]
  %2975 = phi i32 [ %2980, %3077 ], [ %2967, %2969 ]
  %2976 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2975)  ; FirstbitLo(value)
  %2977 = add i32 %2976, %2952
  %2978 = and i32 %2976, 31
  %2979 = shl i32 1, %2978
  %2980 = xor i32 %2979, %2975
  %2981 = mul i32 %2977, 72
  %2982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %2981, i32 undef)  ; BufferLoad(srv,index,wot)
  %2983 = extractvalue %dx.types.ResRet.f32 %2982, 0
  %2984 = extractvalue %dx.types.ResRet.f32 %2982, 1
  %2985 = extractvalue %dx.types.ResRet.f32 %2982, 2
  %2986 = add i32 %2981, 12
  %2987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %2986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2988 = extractvalue %dx.types.ResRet.i32 %2987, 0
  %2989 = add i32 %2981, 16
  %2990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.f32 %2990, 0
  %2992 = extractvalue %dx.types.ResRet.f32 %2990, 1
  %2993 = extractvalue %dx.types.ResRet.f32 %2990, 2
  %2994 = add i32 %2981, 28
  %2995 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %2994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.f32 %2995, 0
  %2997 = add i32 %2981, 32
  %2998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.f32 %2998, 0
  %3000 = extractvalue %dx.types.ResRet.f32 %2998, 1
  %3001 = extractvalue %dx.types.ResRet.f32 %2998, 2
  %3002 = extractvalue %dx.types.ResRet.f32 %2998, 3
  %3003 = add i32 %2981, 48
  %3004 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3003, i32 undef)  ; BufferLoad(srv,index,wot)
  %3005 = extractvalue %dx.types.ResRet.f32 %3004, 0
  %3006 = extractvalue %dx.types.ResRet.f32 %3004, 1
  %3007 = add i32 %2981, 56
  %3008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.f32 %3008, 0
  %3010 = extractvalue %dx.types.ResRet.f32 %3008, 1
  %3011 = add i32 %2981, 64
  %3012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3011, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.f32 %3012, 0
  %3014 = extractvalue %dx.types.ResRet.f32 %3012, 1
  %3015 = mul i32 %2977, 60
  %3016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %3015, i32 undef)  ; BufferLoad(srv,index,wot)
  %3017 = extractvalue %dx.types.ResRet.f32 %3016, 0
  %3018 = extractvalue %dx.types.ResRet.f32 %3016, 1
  %3019 = extractvalue %dx.types.ResRet.f32 %3016, 2
  %3020 = add i32 %3015, 12
  %3021 = add i32 %3015, 48
  %3022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %3021, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.f32 %3022, 0
  %3024 = extractvalue %dx.types.ResRet.f32 %3022, 1
  %3025 = extractvalue %dx.types.ResRet.f32 %3022, 2
  %3026 = and i32 %2988, 32767
  %3027 = bitcast float %2983 to i32
  %3028 = icmp eq i32 %3027, -1
  %3029 = bitcast float %2984 to i32
  %3030 = and i32 %2988, 32768
  %3031 = icmp ne i32 %3030, 0
  %3032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3033 = extractvalue %dx.types.CBufRet.f32 %3032, 0
  %3034 = extractvalue %dx.types.CBufRet.f32 %3032, 1
  %3035 = extractvalue %dx.types.CBufRet.f32 %3032, 2
  %3036 = fsub fast float %3017, %3033
  %3037 = fsub fast float %3018, %3034
  %3038 = fsub fast float %3019, %3035
  %3039 = fsub fast float %143, %3036
  %3040 = fsub fast float %144, %3037
  %3041 = fsub fast float %145, %3038
  %3042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %3020, i32 undef)  ; BufferLoad(srv,index,wot)
  %3043 = extractvalue %dx.types.ResRet.f32 %3042, 0
  %3044 = extractvalue %dx.types.ResRet.f32 %3042, 1
  %3045 = extractvalue %dx.types.ResRet.f32 %3042, 2
  %3046 = call float @dx.op.dot3.f32(i32 55, float %3039, float %3040, float %3041, float %3043, float %3044, float %3045)  ; Dot3(ax,ay,az,bx,by,bz)
  %3047 = add i32 %3015, 24
  %3048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %3047, i32 undef)  ; BufferLoad(srv,index,wot)
  %3049 = extractvalue %dx.types.ResRet.f32 %3048, 0
  %3050 = extractvalue %dx.types.ResRet.f32 %3048, 1
  %3051 = extractvalue %dx.types.ResRet.f32 %3048, 2
  %3052 = call float @dx.op.dot3.f32(i32 55, float %3039, float %3040, float %3041, float %3049, float %3050, float %3051)  ; Dot3(ax,ay,az,bx,by,bz)
  %3053 = add i32 %3015, 36
  %3054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %3053, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.f32 %3054, 0
  %3056 = extractvalue %dx.types.ResRet.f32 %3054, 1
  %3057 = extractvalue %dx.types.ResRet.f32 %3054, 2
  %3058 = call float @dx.op.dot3.f32(i32 55, float %3039, float %3040, float %3041, float %3055, float %3056, float %3057)  ; Dot3(ax,ay,az,bx,by,bz)
  %3059 = call float @dx.op.unary.f32(i32 6, float %3046)  ; FAbs(value)
  %3060 = call float @dx.op.unary.f32(i32 6, float %3052)  ; FAbs(value)
  %3061 = call float @dx.op.unary.f32(i32 6, float %3058)  ; FAbs(value)
  %3062 = fsub fast float %3023, %3059
  %3063 = fsub fast float %3024, %3060
  %3064 = fsub fast float %3025, %3061
  %3065 = fmul fast float %3062, %2991
  %3066 = fmul fast float %3063, %2992
  %3067 = fmul fast float %3064, %2993
  %3068 = call float @dx.op.binary.f32(i32 36, float %3066, float %3067)  ; FMin(a,b)
  %3069 = call float @dx.op.binary.f32(i32 36, float %3065, float %3068)  ; FMin(a,b)
  %3070 = call float @dx.op.unary.f32(i32 7, float %3069)  ; Saturate(value)
  %3071 = call float @dx.op.binary.f32(i32 36, float %2974, float %3070)  ; FMin(a,b)
  %3072 = uitofp i1 %3031 to float
  %3073 = select i1 %105, float 1.000000e+00, float 2.000000e+00
  %3074 = fsub fast float %3073, %3072
  %3075 = fmul fast float %3071, %3074
  %3076 = fcmp fast ogt float %3075, 0.000000e+00
  br i1 %3076, label %3083, label %3077

; <label>:3077                                    ; preds = %3225, %2970
  %3078 = phi float [ %3289, %3225 ], [ %2971, %2970 ]
  %3079 = phi float [ %3290, %3225 ], [ %2972, %2970 ]
  %3080 = phi float [ %3291, %3225 ], [ %2973, %2970 ]
  %3081 = phi float [ %3292, %3225 ], [ %2974, %2970 ]
  %3082 = icmp eq i32 %2975, %2979
  br i1 %3082, label %3293, label %2970

; <label>:3083                                    ; preds = %2970
  br i1 %3028, label %3141, label %3084

; <label>:3084                                    ; preds = %3083
  %3085 = fsub fast float -0.000000e+00, %3043
  %3086 = fsub fast float -0.000000e+00, %3044
  %3087 = fsub fast float -0.000000e+00, %3045
  %3088 = call float @dx.op.dot3.f32(i32 55, float %1739, float %1740, float %1741, float %3085, float %3086, float %3087)  ; Dot3(ax,ay,az,bx,by,bz)
  %3089 = fsub fast float -0.000000e+00, %3088
  %3090 = call float @dx.op.dot3.f32(i32 55, float %3039, float %3040, float %3041, float %3085, float %3086, float %3087)  ; Dot3(ax,ay,az,bx,by,bz)
  %3091 = fadd fast float %3090, %3006
  %3092 = fadd fast float %3005, %3090
  %3093 = fsub fast float -0.000000e+00, %3092
  %3094 = fcmp ogt float %3088, -0.000000e+00
  %3095 = select i1 %3094, float %3093, float %3091
  %3096 = call float @dx.op.unary.f32(i32 6, float %3089)  ; FAbs(value)
  %3097 = fdiv fast float 1.000000e+00, %3096
  %3098 = fmul fast float %3095, %3097
  %3099 = call float @dx.op.binary.f32(i32 35, float %3098, float 0.000000e+00)  ; FMax(a,b)
  %3100 = fsub fast float -0.000000e+00, %3049
  %3101 = fsub fast float -0.000000e+00, %3050
  %3102 = fsub fast float -0.000000e+00, %3051
  %3103 = call float @dx.op.dot3.f32(i32 55, float %1739, float %1740, float %1741, float %3100, float %3101, float %3102)  ; Dot3(ax,ay,az,bx,by,bz)
  %3104 = fsub fast float -0.000000e+00, %3103
  %3105 = call float @dx.op.dot3.f32(i32 55, float %3039, float %3040, float %3041, float %3100, float %3101, float %3102)  ; Dot3(ax,ay,az,bx,by,bz)
  %3106 = fadd fast float %3105, %3010
  %3107 = fadd fast float %3009, %3105
  %3108 = fsub fast float -0.000000e+00, %3107
  %3109 = fcmp ogt float %3103, -0.000000e+00
  %3110 = select i1 %3109, float %3108, float %3106
  %3111 = call float @dx.op.unary.f32(i32 6, float %3104)  ; FAbs(value)
  %3112 = fdiv fast float 1.000000e+00, %3111
  %3113 = fmul fast float %3110, %3112
  %3114 = call float @dx.op.binary.f32(i32 35, float %3113, float 0.000000e+00)  ; FMax(a,b)
  %3115 = fsub fast float -0.000000e+00, %3055
  %3116 = fsub fast float -0.000000e+00, %3056
  %3117 = fsub fast float -0.000000e+00, %3057
  %3118 = call float @dx.op.dot3.f32(i32 55, float %1739, float %1740, float %1741, float %3115, float %3116, float %3117)  ; Dot3(ax,ay,az,bx,by,bz)
  %3119 = fsub fast float -0.000000e+00, %3118
  %3120 = call float @dx.op.dot3.f32(i32 55, float %3039, float %3040, float %3041, float %3115, float %3116, float %3117)  ; Dot3(ax,ay,az,bx,by,bz)
  %3121 = fadd fast float %3120, %3014
  %3122 = fadd fast float %3013, %3120
  %3123 = fsub fast float -0.000000e+00, %3122
  %3124 = fcmp ogt float %3118, -0.000000e+00
  %3125 = select i1 %3124, float %3123, float %3121
  %3126 = call float @dx.op.unary.f32(i32 6, float %3119)  ; FAbs(value)
  %3127 = fdiv fast float 1.000000e+00, %3126
  %3128 = fmul fast float %3125, %3127
  %3129 = call float @dx.op.binary.f32(i32 35, float %3128, float 0.000000e+00)  ; FMax(a,b)
  %3130 = call float @dx.op.binary.f32(i32 36, float %3114, float %3129)  ; FMin(a,b)
  %3131 = call float @dx.op.binary.f32(i32 36, float %3099, float %3130)  ; FMin(a,b)
  %3132 = fmul fast float %3131, %1739
  %3133 = fmul fast float %3131, %1740
  %3134 = fmul fast float %3131, %1741
  %3135 = fadd fast float %3132, %143
  %3136 = fadd fast float %3133, %144
  %3137 = fadd fast float %3134, %145
  %3138 = fsub fast float %3135, %2983
  %3139 = fsub fast float %3136, %2984
  %3140 = fsub fast float %3137, %2985
  br label %3148

; <label>:3141                                    ; preds = %3083
  %3142 = fmul fast float %1739, 8.096000e+03
  %3143 = fmul fast float %1740, 8.096000e+03
  %3144 = fmul fast float %1741, 8.096000e+03
  %3145 = fadd fast float %3142, %143
  %3146 = fadd fast float %3143, %144
  %3147 = fadd fast float %3144, %145
  br label %3148

; <label>:3148                                    ; preds = %3141, %3084
  %3149 = phi float [ %1739, %3141 ], [ %3138, %3084 ]
  %3150 = phi float [ %1740, %3141 ], [ %3139, %3084 ]
  %3151 = phi float [ %1741, %3141 ], [ %3140, %3084 ]
  %3152 = phi float [ %3145, %3141 ], [ %3135, %3084 ]
  %3153 = phi float [ %3146, %3141 ], [ %3136, %3084 ]
  %3154 = phi float [ %3147, %3141 ], [ %3137, %3084 ]
  %3155 = fcmp fast olt float %3002, 1.000000e+00
  br i1 %3155, label %3156, label %3187, !dx.controlflow.hints !116

; <label>:3156                                    ; preds = %3148
  %3157 = fmul fast float %3151, %3000
  %3158 = fmul fast float %3150, %3001
  %3159 = fsub fast float %3157, %3158
  %3160 = fmul fast float %3149, %3001
  %3161 = fmul fast float %3151, %2999
  %3162 = fsub fast float %3160, %3161
  %3163 = fmul fast float %3150, %2999
  %3164 = fmul fast float %3149, %3000
  %3165 = fsub fast float %3163, %3164
  %3166 = fmul fast float %3159, 2.000000e+00
  %3167 = fmul fast float %3162, 2.000000e+00
  %3168 = fmul fast float %3165, 2.000000e+00
  %3169 = fmul fast float %3166, %3002
  %3170 = fmul fast float %3167, %3002
  %3171 = fmul fast float %3168, %3002
  %3172 = fmul fast float %3168, %3000
  %3173 = fmul fast float %3167, %3001
  %3174 = fmul fast float %3166, %3001
  %3175 = fmul fast float %3168, %2999
  %3176 = fmul fast float %3167, %2999
  %3177 = fmul fast float %3166, %3000
  %3178 = fadd fast float %3172, %3149
  %3179 = fadd fast float %3178, %3169
  %3180 = fsub fast float %3179, %3173
  %3181 = fsub fast float %3150, %3175
  %3182 = fadd fast float %3181, %3170
  %3183 = fadd fast float %3182, %3174
  %3184 = fadd fast float %3171, %3151
  %3185 = fsub fast float %3184, %3177
  %3186 = fadd fast float %3185, %3176
  br label %3187

; <label>:3187                                    ; preds = %3156, %3148
  %3188 = phi float [ %3180, %3156 ], [ %3149, %3148 ]
  %3189 = phi float [ %3183, %3156 ], [ %3150, %3148 ]
  %3190 = phi float [ %3186, %3156 ], [ %3151, %3148 ]
  br i1 %3028, label %3222, label %3191

; <label>:3191                                    ; preds = %3187
  %3192 = fmul fast float %1673, 0x400187C840000000
  %3193 = fadd fast float %3192, 0xC00EFC2120000000
  %3194 = fmul fast float %3193, %1673
  %3195 = fadd fast float %3194, 0x3FE5D16340000000
  %3196 = fmul fast float %3195, %1673
  %3197 = fadd fast float %3196, 1.000000e+00
  %3198 = call float @dx.op.unary.f32(i32 7, float %3197)  ; Saturate(value)
  %3199 = fsub fast float %3152, %143
  %3200 = fsub fast float %3153, %144
  %3201 = fsub fast float %3154, %145
  %3202 = fsub fast float %3152, %2983
  %3203 = fsub fast float %3153, %2984
  %3204 = fsub fast float %3154, %2985
  %3205 = call float @dx.op.dot3.f32(i32 55, float %3199, float %3200, float %3201, float %3199, float %3200, float %3201)  ; Dot3(ax,ay,az,bx,by,bz)
  %3206 = call float @dx.op.dot3.f32(i32 55, float %3202, float %3203, float %3204, float %3202, float %3203, float %3204)  ; Dot3(ax,ay,az,bx,by,bz)
  %3207 = fadd fast float %3206, 0x3EE4F8B580000000
  %3208 = fdiv fast float %3205, %3207
  %3209 = bitcast float %3208 to i32
  %3210 = ashr i32 %3209, 1
  %3211 = add nsw i32 %3210, 532487669
  %3212 = bitcast i32 %3211 to float
  %3213 = fmul fast float %3212, %3198
  %3214 = call float @dx.op.unary.f32(i32 7, float %3213)  ; Saturate(value)
  %3215 = fmul fast float %3214, 0x4009981AE0000000
  %3216 = fsub fast float 0x40111BBD80000000, %3215
  %3217 = fmul fast float %3216, %3214
  %3218 = fadd fast float %3217, 0xC0009F6020000000
  %3219 = fmul fast float %3218, %3214
  %3220 = fadd fast float %3219, 1.000000e+00
  %3221 = call float @dx.op.unary.f32(i32 7, float %3220)  ; Saturate(value)
  br label %3225

; <label>:3222                                    ; preds = %3187
  %3223 = icmp ne i32 %3029, -1
  %3224 = zext i1 %3223 to i32
  br label %3225

; <label>:3225                                    ; preds = %3222, %3191
  %3226 = phi float [ %1673, %3222 ], [ %3221, %3191 ]
  %3227 = phi i32 [ %3224, %3222 ], [ 0, %3191 ]
  %3228 = fmul float %3226, 5.000000e+00
  %3229 = fsub float 5.000000e+00, %3228
  %3230 = icmp ne i32 %3227, 0
  %3231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3232 = extractvalue %dx.types.CBufRet.f32 %3231, 3
  %3233 = fadd fast float %3232, %3229
  %3234 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3233)  ; FMax(a,b)
  %3235 = call float @dx.op.unary.f32(i32 6, float %3188)  ; FAbs(value)
  %3236 = call float @dx.op.unary.f32(i32 6, float %3189)  ; FAbs(value)
  %3237 = fadd fast float %3236, %3235
  %3238 = call float @dx.op.unary.f32(i32 6, float %3190)  ; FAbs(value)
  %3239 = fadd fast float %3237, %3238
  %3240 = fcmp fast oeq float %3239, 0.000000e+00
  %3241 = fdiv fast float 1.000000e+00, %3239
  %3242 = select i1 %3240, float 1.000000e+00, float %3241
  %3243 = fmul fast float %3242, %3188
  %3244 = fmul fast float %3242, %3189
  %3245 = call float @dx.op.unary.f32(i32 6, float %3244)  ; FAbs(value)
  %3246 = call float @dx.op.unary.f32(i32 6, float %3243)  ; FAbs(value)
  %3247 = fsub fast float 1.000000e+00, %3245
  %3248 = fsub fast float 1.000000e+00, %3246
  %3249 = fcmp fast oge float %3243, 0.000000e+00
  %3250 = fcmp fast oge float %3244, 0.000000e+00
  %3251 = select i1 %3249, float 1.000000e+00, float -1.000000e+00
  %3252 = select i1 %3250, float 1.000000e+00, float -1.000000e+00
  %3253 = fcmp fast ole float %3190, 0.000000e+00
  %3254 = fmul fast float %3251, %3247
  %3255 = fmul fast float %3252, %3248
  %3256 = select i1 %3253, float %3254, float %3243
  %3257 = select i1 %3253, float %3255, float %3244
  %3258 = fmul fast float %3256, 5.000000e-01
  %3259 = fmul fast float %3257, 5.000000e-01
  %3260 = fadd fast float %3258, 5.000000e-01
  %3261 = fadd fast float %3259, 5.000000e-01
  %3262 = uitofp i32 %3026 to float
  %3263 = call float @dx.op.binary.f32(i32 36, float %3234, float 3.000000e+00)  ; FMin(a,b)
  %3264 = fadd fast float %3263, 2.000000e+00
  %3265 = call float @dx.op.unary.f32(i32 21, float %3264)  ; Exp(value)
  %3266 = extractvalue %dx.types.CBufRet.f32 %3231, 1
  %3267 = fmul fast float %3266, %3265
  %3268 = fmul fast float %3267, 2.000000e+00
  %3269 = fsub fast float 1.000000e+00, %3268
  %3270 = fmul fast float %3260, %3269
  %3271 = fmul fast float %3261, %3269
  %3272 = fadd fast float %3270, %3267
  %3273 = fadd fast float %3271, %3267
  %3274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %55, float %3272, float %3273, float %3262, float undef, i32 0, i32 0, i32 undef, float %3234)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3275 = extractvalue %dx.types.ResRet.f32 %3274, 0
  %3276 = extractvalue %dx.types.ResRet.f32 %3274, 1
  %3277 = extractvalue %dx.types.ResRet.f32 %3274, 2
  %3278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3279 = extractvalue %dx.types.CBufRet.f32 %3278, 3
  %3280 = fmul fast float %3279, %2996
  %3281 = call float @dx.op.binary.f32(i32 36, float %2348, float %3280)  ; FMin(a,b)
  %3282 = select i1 %3230, float %3281, float %3280
  %3283 = fmul fast float %3275, %3075
  %3284 = fmul fast float %3283, %3282
  %3285 = fmul fast float %3276, %3075
  %3286 = fmul fast float %3285, %3282
  %3287 = fmul fast float %3277, %3075
  %3288 = fmul fast float %3287, %3282
  %3289 = fadd fast float %3284, %2971
  %3290 = fadd fast float %3286, %2972
  %3291 = fadd fast float %3288, %2973
  %3292 = fsub fast float %2974, %3075
  br label %3077

; <label>:3293                                    ; preds = %3077
  br label %3294

; <label>:3294                                    ; preds = %3293, %2940
  %3295 = phi float [ %2941, %2940 ], [ %3078, %3293 ]
  %3296 = phi float [ %2942, %2940 ], [ %3079, %3293 ]
  %3297 = phi float [ %2943, %2940 ], [ %3080, %3293 ]
  %3298 = phi float [ %2944, %2940 ], [ %3081, %3293 ]
  %3299 = add i32 %2945, 1
  %3300 = icmp ugt i32 %3299, %2937
  br i1 %3300, label %3301, label %2940, !llvm.loop !117

; <label>:3301                                    ; preds = %3294
  br label %3302

; <label>:3302                                    ; preds = %3301, %2888
  %3303 = phi float [ 0.000000e+00, %2888 ], [ %3295, %3301 ]
  %3304 = phi float [ 0.000000e+00, %2888 ], [ %3296, %3301 ]
  %3305 = phi float [ 0.000000e+00, %2888 ], [ %3297, %3301 ]
  %3306 = call float @dx.op.dot3.f32(i32 55, float %3303, float %3304, float %3305, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3307 = select i1 %1727, float 0.000000e+00, float %3303
  %3308 = select i1 %1727, float %3306, float %3304
  %3309 = select i1 %1727, float 0.000000e+00, float %3305
  %3310 = fcmp fast olt float %2882, 0.000000e+00
  %3311 = call float @dx.op.unary.f32(i32 6, float %2882)  ; FAbs(value)
  %3312 = fmul fast float %3311, %2883
  %3313 = fmul fast float %3311, %2884
  %3314 = fmul fast float %3311, %2885
  %3315 = select i1 %3310, float %2883, float %3312
  %3316 = select i1 %3310, float %2884, float %3313
  %3317 = select i1 %3310, float %2885, float %3314
  %3318 = fsub fast float 1.000000e+00, %3311
  %3319 = call float @dx.op.unary.f32(i32 7, float %3318)  ; Saturate(value)
  %3320 = fmul fast float %3319, %3307
  %3321 = fmul fast float %3319, %3308
  %3322 = fmul fast float %3319, %3309
  %3323 = fadd fast float %3315, %3320
  %3324 = fadd fast float %3316, %3321
  %3325 = fadd fast float %3317, %3322
  br label %3326

; <label>:3326                                    ; preds = %3302, %2881
  %3327 = phi float [ %2883, %2881 ], [ %3323, %3302 ]
  %3328 = phi float [ %2884, %2881 ], [ %3324, %3302 ]
  %3329 = phi float [ %2885, %2881 ], [ %3325, %3302 ]
  %3330 = fmul fast float %2603, %1676
  %3331 = fmul fast float %2603, %2557
  %3332 = fmul fast float %2603, %2558
  %3333 = fmul fast float %2603, %2559
  %3334 = fmul fast float %3327, %2598
  %3335 = fmul fast float %3328, %2599
  %3336 = fmul fast float %3329, %2600
  %3337 = fadd fast float %3334, %1552
  %3338 = fadd fast float %3335, %1553
  %3339 = fadd fast float %3336, %1554
  %3340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3341 = extractvalue %dx.types.CBufRet.f32 %3340, 3
  %3342 = fcmp fast oeq float %3341, 0.000000e+00
  br i1 %3342, label %5088, label %3343

; <label>:3343                                    ; preds = %3326
  %3344 = extractvalue %dx.types.CBufRet.f32 %3340, 0
  %3345 = extractvalue %dx.types.CBufRet.f32 %3340, 1
  %3346 = extractvalue %dx.types.CBufRet.f32 %3340, 2
  %3347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3348 = extractvalue %dx.types.CBufRet.f32 %3347, 0
  %3349 = extractvalue %dx.types.CBufRet.f32 %3347, 1
  %3350 = extractvalue %dx.types.CBufRet.f32 %3347, 2
  %3351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3352 = extractvalue %dx.types.CBufRet.f32 %3351, 0
  %3353 = extractvalue %dx.types.CBufRet.f32 %3351, 1
  %3354 = call float @dx.op.dot3.f32(i32 55, float %3348, float %3349, float %3350, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3355 = select i1 %1727, float %3352, float %3348
  %3356 = select i1 %1727, float %3354, float %3349
  %3357 = select i1 %1727, float %3353, float %3350
  %3358 = fcmp fast olt float %3341, 0.000000e+00
  br i1 %3358, label %4733, label %3359

; <label>:3359                                    ; preds = %3343
  %3360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3361 = extractvalue %dx.types.CBufRet.f32 %3360, 0
  %3362 = extractvalue %dx.types.CBufRet.f32 %3360, 1
  %3363 = extractvalue %dx.types.CBufRet.f32 %3360, 2
  %3364 = extractvalue %dx.types.CBufRet.f32 %3360, 3
  %3365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3366 = extractvalue %dx.types.CBufRet.f32 %3365, 0
  %3367 = extractvalue %dx.types.CBufRet.f32 %3365, 1
  %3368 = extractvalue %dx.types.CBufRet.f32 %3365, 2
  %3369 = extractvalue %dx.types.CBufRet.f32 %3365, 3
  %3370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3371 = extractvalue %dx.types.CBufRet.f32 %3370, 0
  %3372 = extractvalue %dx.types.CBufRet.f32 %3370, 1
  %3373 = extractvalue %dx.types.CBufRet.f32 %3370, 2
  %3374 = extractvalue %dx.types.CBufRet.f32 %3370, 3
  %3375 = fmul fast float %3361, %143
  %3376 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3362, float %3375)  ; FMad(a,b,c)
  %3377 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3363, float %3376)  ; FMad(a,b,c)
  %3378 = fadd fast float %3377, %3364
  %3379 = fmul fast float %3366, %143
  %3380 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3367, float %3379)  ; FMad(a,b,c)
  %3381 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3368, float %3380)  ; FMad(a,b,c)
  %3382 = fadd fast float %3381, %3369
  %3383 = fmul fast float %3371, %143
  %3384 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3372, float %3383)  ; FMad(a,b,c)
  %3385 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3373, float %3384)  ; FMad(a,b,c)
  %3386 = fadd fast float %3385, %3374
  %3387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3388 = extractvalue %dx.types.CBufRet.f32 %3387, 0
  %3389 = extractvalue %dx.types.CBufRet.f32 %3387, 1
  %3390 = extractvalue %dx.types.CBufRet.f32 %3387, 3
  %3391 = fmul fast float %3390, %3378
  %3392 = fmul fast float %3390, %3382
  %3393 = fadd fast float %3391, %3388
  %3394 = fadd fast float %3392, %3389
  %3395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3396 = extractvalue %dx.types.CBufRet.f32 %3395, 0
  %3397 = extractvalue %dx.types.CBufRet.f32 %3395, 1
  %3398 = extractvalue %dx.types.CBufRet.f32 %3395, 3
  %3399 = fmul fast float %3398, %3378
  %3400 = fmul fast float %3398, %3382
  %3401 = fadd fast float %3399, %3396
  %3402 = fadd fast float %3400, %3397
  %3403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3404 = extractvalue %dx.types.CBufRet.f32 %3403, 1
  %3405 = fsub fast float %3404, %3386
  %3406 = extractvalue %dx.types.CBufRet.f32 %3403, 2
  %3407 = fmul fast float %3405, %3406
  %3408 = fsub fast float 1.000000e+00, %3407
  %3409 = call float @dx.op.unary.f32(i32 7, float %3408)  ; Saturate(value)
  %3410 = extractvalue %dx.types.CBufRet.f32 %3395, 2
  %3411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3412 = extractvalue %dx.types.CBufRet.f32 %3411, 2
  %3413 = fadd fast float %3412, %3410
  %3414 = fcmp fast ogt float %3413, 0.000000e+00
  br i1 %3414, label %3415, label %3440

; <label>:3415                                    ; preds = %3359
  %3416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3417 = extractvalue %dx.types.CBufRet.f32 %3416, 0
  %3418 = extractvalue %dx.types.CBufRet.f32 %3416, 1
  %3419 = fsub fast float %3401, %3417
  %3420 = fsub fast float %3402, %3418
  %3421 = fcmp fast olt float %3419, 0.000000e+00
  %3422 = fcmp fast olt float %3420, 0.000000e+00
  %3423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3424 = extractvalue %dx.types.CBufRet.f32 %3423, 0
  %3425 = extractvalue %dx.types.CBufRet.f32 %3423, 1
  %3426 = extractvalue %dx.types.CBufRet.f32 %3423, 2
  %3427 = extractvalue %dx.types.CBufRet.f32 %3423, 3
  %3428 = select i1 %3421, float %3424, float %3426
  %3429 = select i1 %3422, float %3425, float %3427
  %3430 = fmul fast float %3428, %3419
  %3431 = fmul fast float %3429, %3420
  %3432 = call float @dx.op.unary.f32(i32 6, float %3430)  ; FAbs(value)
  %3433 = call float @dx.op.unary.f32(i32 6, float %3431)  ; FAbs(value)
  %3434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3435 = extractvalue %dx.types.CBufRet.f32 %3434, 0
  %3436 = call float @dx.op.binary.f32(i32 35, float %3432, float %3433)  ; FMax(a,b)
  %3437 = fsub fast float %3435, %3436
  %3438 = call float @dx.op.unary.f32(i32 7, float %3437)  ; Saturate(value)
  %3439 = fmul fast float %3438, %3409
  br label %3440

; <label>:3440                                    ; preds = %3415, %3359
  %3441 = phi float [ %3439, %3415 ], [ 0.000000e+00, %3359 ]
  %3442 = extractvalue %dx.types.CBufRet.f32 %3387, 2
  %3443 = extractvalue %dx.types.CBufRet.f32 %3411, 1
  %3444 = fadd fast float %3443, %3442
  %3445 = fcmp fast ogt float %3444, 0.000000e+00
  br i1 %3445, label %3446, label %3471

; <label>:3446                                    ; preds = %3440
  %3447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3448 = extractvalue %dx.types.CBufRet.f32 %3447, 0
  %3449 = extractvalue %dx.types.CBufRet.f32 %3447, 1
  %3450 = fsub fast float %3393, %3448
  %3451 = fsub fast float %3394, %3449
  %3452 = fcmp fast olt float %3450, 0.000000e+00
  %3453 = fcmp fast olt float %3451, 0.000000e+00
  %3454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3455 = extractvalue %dx.types.CBufRet.f32 %3454, 0
  %3456 = extractvalue %dx.types.CBufRet.f32 %3454, 1
  %3457 = extractvalue %dx.types.CBufRet.f32 %3454, 2
  %3458 = extractvalue %dx.types.CBufRet.f32 %3454, 3
  %3459 = select i1 %3452, float %3455, float %3457
  %3460 = select i1 %3453, float %3456, float %3458
  %3461 = fmul fast float %3459, %3450
  %3462 = fmul fast float %3460, %3451
  %3463 = call float @dx.op.unary.f32(i32 6, float %3461)  ; FAbs(value)
  %3464 = call float @dx.op.unary.f32(i32 6, float %3462)  ; FAbs(value)
  %3465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3466 = extractvalue %dx.types.CBufRet.f32 %3465, 0
  %3467 = call float @dx.op.binary.f32(i32 35, float %3463, float %3464)  ; FMax(a,b)
  %3468 = fsub fast float %3466, %3467
  %3469 = call float @dx.op.unary.f32(i32 7, float %3468)  ; Saturate(value)
  %3470 = fmul fast float %3469, %3409
  br label %3471

; <label>:3471                                    ; preds = %3446, %3440
  %3472 = phi float [ %3470, %3446 ], [ 0.000000e+00, %3440 ]
  %3473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3474 = extractvalue %dx.types.CBufRet.f32 %3473, 1
  %3475 = call float @dx.op.unary.f32(i32 7, float %3474)  ; Saturate(value)
  %3476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3477 = extractvalue %dx.types.CBufRet.f32 %3476, 0
  %3478 = extractvalue %dx.types.CBufRet.f32 %3476, 1
  %3479 = fsub fast float %3378, %3477
  %3480 = fsub fast float %3382, %3478
  %3481 = fcmp fast olt float %3479, 0.000000e+00
  %3482 = fcmp fast olt float %3480, 0.000000e+00
  %3483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3484 = extractvalue %dx.types.CBufRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.CBufRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.CBufRet.f32 %3483, 2
  %3487 = extractvalue %dx.types.CBufRet.f32 %3483, 3
  %3488 = select i1 %3481, float %3484, float %3486
  %3489 = select i1 %3482, float %3485, float %3487
  %3490 = fmul fast float %3488, %3479
  %3491 = fmul fast float %3489, %3480
  %3492 = call float @dx.op.unary.f32(i32 6, float %3490)  ; FAbs(value)
  %3493 = call float @dx.op.unary.f32(i32 6, float %3491)  ; FAbs(value)
  %3494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3495 = extractvalue %dx.types.CBufRet.f32 %3494, 0
  %3496 = call float @dx.op.binary.f32(i32 35, float %3492, float %3493)  ; FMax(a,b)
  %3497 = fsub fast float %3495, %3496
  %3498 = call float @dx.op.unary.f32(i32 7, float %3497)  ; Saturate(value)
  %3499 = call float @dx.op.binary.f32(i32 36, float %3498, float %3475)  ; FMin(a,b)
  %3500 = fmul fast float %3499, %3409
  %3501 = fsub fast float %3472, %3500
  %3502 = fsub fast float %3441, %3472
  %3503 = fsub fast float %3502, %3500
  %3504 = call float @dx.op.binary.f32(i32 35, float %3472, float %3441)  ; FMax(a,b)
  %3505 = call float @dx.op.binary.f32(i32 35, float %3500, float %3504)  ; FMax(a,b)
  %3506 = fcmp fast olt float %3505, 1.000000e+00
  br i1 %3506, label %3507, label %4178, !dx.controlflow.hints !118

; <label>:3507                                    ; preds = %3471
  %3508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3509 = extractvalue %dx.types.CBufRet.f32 %3508, 0
  %3510 = fcmp fast une float %3509, 0.000000e+00
  br i1 %3510, label %3511, label %4178, !dx.controlflow.hints !119

; <label>:3511                                    ; preds = %3507
  %3512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3513 = extractvalue %dx.types.CBufRet.f32 %3512, 0
  %3514 = extractvalue %dx.types.CBufRet.f32 %3512, 1
  %3515 = extractvalue %dx.types.CBufRet.f32 %3512, 2
  %3516 = extractvalue %dx.types.CBufRet.f32 %3512, 3
  %3517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3518 = extractvalue %dx.types.CBufRet.f32 %3517, 0
  %3519 = extractvalue %dx.types.CBufRet.f32 %3517, 1
  %3520 = extractvalue %dx.types.CBufRet.f32 %3517, 2
  %3521 = extractvalue %dx.types.CBufRet.f32 %3517, 3
  %3522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3523 = extractvalue %dx.types.CBufRet.f32 %3522, 0
  %3524 = extractvalue %dx.types.CBufRet.f32 %3522, 1
  %3525 = extractvalue %dx.types.CBufRet.f32 %3522, 2
  %3526 = extractvalue %dx.types.CBufRet.f32 %3522, 3
  %3527 = fmul fast float %3513, %143
  %3528 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3514, float %3527)  ; FMad(a,b,c)
  %3529 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3515, float %3528)  ; FMad(a,b,c)
  %3530 = fadd fast float %3529, %3516
  %3531 = fmul fast float %3518, %143
  %3532 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3519, float %3531)  ; FMad(a,b,c)
  %3533 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3520, float %3532)  ; FMad(a,b,c)
  %3534 = fadd fast float %3533, %3521
  %3535 = fmul fast float %3523, %143
  %3536 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3524, float %3535)  ; FMad(a,b,c)
  %3537 = call float @dx.op.tertiary.f32(i32 46, float %145, float %3525, float %3536)  ; FMad(a,b,c)
  %3538 = fadd fast float %3537, %3526
  %3539 = fcmp fast oge float %3530, 1.000000e+00
  %3540 = fcmp fast oge float %3534, 1.000000e+00
  %3541 = or i1 %3539, %3540
  %3542 = fcmp fast olt float %3530, 0.000000e+00
  %3543 = fcmp fast olt float %3534, 0.000000e+00
  %3544 = or i1 %3542, %3543
  %3545 = or i1 %3541, %3544
  br i1 %3545, label %4178, label %3546, !dx.controlflow.hints !120

; <label>:3546                                    ; preds = %3511
  %3547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3548 = extractvalue %dx.types.CBufRet.f32 %3547, 0
  %3549 = extractvalue %dx.types.CBufRet.f32 %3547, 1
  %3550 = extractvalue %dx.types.CBufRet.f32 %3547, 2
  %3551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3552 = extractvalue %dx.types.CBufRet.f32 %3551, 1
  %3553 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3554 = extractvalue %dx.types.CBufRet.i32 %3553, 2
  %3555 = uitofp i32 %3554 to float
  %3556 = extractvalue %dx.types.CBufRet.i32 %3553, 3
  %3557 = uitofp i32 %3556 to float
  %3558 = extractvalue %dx.types.CBufRet.f32 %3547, 3
  %3559 = fmul fast float %3558, 2.000000e+00
  %3560 = fsub fast float %3530, %3548
  %3561 = fsub fast float %3534, %3549
  %3562 = fmul fast float %3559, %3560
  %3563 = fmul fast float %3559, %3561
  %3564 = fdiv fast float 1.000000e+00, %3346
  %3565 = fmul fast float %3563, %3564
  %3566 = call float @dx.op.unary.f32(i32 6, float %3565)  ; FAbs(value)
  %3567 = fmul fast float %3550, %145
  %3568 = fmul fast float %3567, %3559
  %3569 = call float @dx.op.unary.f32(i32 6, float %3568)  ; FAbs(value)
  %3570 = call float @dx.op.unary.f32(i32 6, float %3562)  ; FAbs(value)
  %3571 = call float @dx.op.binary.f32(i32 35, float %3569, float %3566)  ; FMax(a,b)
  %3572 = call float @dx.op.binary.f32(i32 35, float %3570, float %3571)  ; FMax(a,b)
  %3573 = fmul fast float %3572, 2.000000e+00
  %3574 = call float @dx.op.unary.f32(i32 23, float %3573)  ; Log(value)
  %3575 = call float @dx.op.binary.f32(i32 35, float %3574, float %3555)  ; FMax(a,b)
  %3576 = call float @dx.op.unary.f32(i32 22, float %3575)  ; Frc(value)
  %3577 = fadd fast float %3576, 0xBFEA666660000000
  %3578 = fmul fast float %3577, 8.000000e+00
  %3579 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  %3580 = call float @dx.op.unary.f32(i32 27, float %3575)  ; Round_ni(value)
  %3581 = fadd fast float %3580, %3579
  %3582 = call float @dx.op.binary.f32(i32 36, float %3581, float %3557)  ; FMin(a,b)
  %3583 = call float @dx.op.unary.f32(i32 27, float %3582)  ; Round_ni(value)
  %3584 = fsub fast float -0.000000e+00, %3583
  %3585 = call float @dx.op.unary.f32(i32 21, float %3584)  ; Exp(value)
  %3586 = fmul fast float %3585, %3559
  %3587 = fmul fast float %3586, %3530
  %3588 = fmul fast float %3586, %3534
  %3589 = fmul fast float %3587, 5.000000e-01
  %3590 = fmul fast float %3588, 5.000000e-01
  %3591 = fadd fast float %3589, 5.000000e-01
  %3592 = fadd fast float %3590, 5.000000e-01
  %3593 = fmul fast float %3587, 2.500000e-01
  %3594 = fmul fast float %3588, 2.500000e-01
  %3595 = fadd fast float %3593, 5.000000e-01
  %3596 = fadd fast float %3594, 5.000000e-01
  %3597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3598 = extractvalue %dx.types.ResRet.i32 %3597, 0
  %3599 = and i32 %3598, 536870911
  %3600 = lshr i32 %3599, 9
  %3601 = uitofp i32 %3600 to float
  %3602 = fmul fast float %3601, %3530
  %3603 = fmul fast float %3601, %3534
  %3604 = call float @dx.op.unary.f32(i32 22, float %3602)  ; Frc(value)
  %3605 = call float @dx.op.unary.f32(i32 22, float %3603)  ; Frc(value)
  %3606 = call float @dx.op.unary.f32(i32 22, float %3579)  ; Frc(value)
  %3607 = fcmp fast une float %3606, 0.000000e+00
  br i1 %3607, label %3608, label %3706, !dx.controlflow.hints !121

; <label>:3608                                    ; preds = %3546
  %3609 = call float @dx.op.unary.f32(i32 21, float %3580)  ; Exp(value)
  %3610 = fmul fast float %3609, 1.953125e-03
  %3611 = fcmp fast olt float %3604, %3610
  %3612 = fcmp fast olt float %3605, %3610
  %3613 = or i1 %3611, %3612
  %3614 = fsub fast float 1.000000e+00, %3610
  %3615 = fcmp fast ogt float %3604, %3614
  %3616 = fcmp fast ogt float %3605, %3614
  %3617 = or i1 %3615, %3616
  %3618 = or i1 %3613, %3617
  br i1 %3618, label %3619, label %3785, !dx.controlflow.hints !122

; <label>:3619                                    ; preds = %3608
  %3620 = fmul fast float %3552, 5.000000e-01
  %3621 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3622 = extractvalue %dx.types.CBufRet.i32 %3621, 0
  %3623 = fmul fast float %3534, 3.530000e+02
  %3624 = uitofp i32 %3599 to float
  %3625 = fmul fast float %3623, %3624
  %3626 = fmul fast float %3530, 6.130000e+02
  %3627 = fadd fast float %3625, %3626
  %3628 = fptoui float %3627 to i32
  %3629 = add i32 %3622, %3628
  %3630 = mul i32 %3629, -63
  %3631 = lshr i32 %3630, 17
  %3632 = xor i32 %3631, %3630
  %3633 = mul i32 %3632, -511
  %3634 = mul i32 %3632, -8176
  %3635 = xor i32 %3633, %3634
  %3636 = mul i32 %3635, -7
  %3637 = mul i32 %3635, -7168
  %3638 = xor i32 %3636, %3637
  %3639 = lshr i32 %3638, 15
  %3640 = xor i32 %3639, %3636
  %3641 = and i32 %3640, 15
  %3642 = mul i32 %3641, 2
  %3643 = add i32 0, %3642
  %3644 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3643
  %3645 = load float, float* %3644, align 4
  %3646 = mul i32 %3641, 2
  %3647 = add i32 1, %3646
  %3648 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3647
  %3649 = load float, float* %3648, align 4
  %3650 = fmul fast float %3534, 2.770000e+02
  %3651 = fmul fast float %3650, %3624
  %3652 = fmul fast float %3530, 5.990000e+02
  %3653 = fadd fast float %3651, %3652
  %3654 = fptoui float %3653 to i32
  %3655 = mul i32 %3654, -63
  %3656 = lshr i32 %3655, 17
  %3657 = xor i32 %3656, %3655
  %3658 = mul i32 %3657, -511
  %3659 = mul i32 %3657, -8176
  %3660 = xor i32 %3658, %3659
  %3661 = mul i32 %3660, -7
  %3662 = mul i32 %3660, -7168
  %3663 = xor i32 %3661, %3662
  %3664 = lshr i32 %3663, 15
  %3665 = xor i32 %3664, %3661
  %3666 = and i32 %3665, 63
  %3667 = mul i32 %3666, 2
  %3668 = add i32 0, %3667
  %3669 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3668
  %3670 = load float, float* %3669, align 4
  %3671 = mul i32 %3666, 2
  %3672 = add i32 1, %3671
  %3673 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3672
  %3674 = load float, float* %3673, align 4
  %3675 = call float @dx.op.dot2.f32(i32 54, float %3645, float %3649, float %3670, float %3674)  ; Dot2(ax,ay,bx,by)
  %3676 = fsub fast float -0.000000e+00, %3670
  %3677 = call float @dx.op.dot2.f32(i32 54, float %3645, float %3649, float %3676, float %3674)  ; Dot2(ax,ay,bx,by)
  %3678 = fmul fast float %3675, %3620
  %3679 = fmul fast float %3677, %3620
  %3680 = fdiv fast float 2.000000e+00, %3586
  %3681 = fmul fast float %3609, 9.765625e-04
  %3682 = fcmp fast olt float %3604, %3681
  %3683 = fcmp fast olt float %3605, %3681
  %3684 = or i1 %3682, %3683
  %3685 = fsub fast float 1.000000e+00, %3681
  %3686 = fcmp fast ogt float %3604, %3685
  %3687 = fcmp fast ogt float %3605, %3685
  %3688 = or i1 %3686, %3687
  %3689 = or i1 %3684, %3688
  %3690 = fmul fast float %3678, 2.000000e+00
  br i1 %3689, label %3691, label %3695

; <label>:3691                                    ; preds = %3619
  %3692 = fmul fast float %3679, 2.000000e+00
  %3693 = fadd fast float %3690, %3591
  %3694 = fadd fast float %3692, %3592
  br label %3695

; <label>:3695                                    ; preds = %3691, %3619
  %3696 = phi float [ %3693, %3691 ], [ %3591, %3619 ]
  %3697 = phi float [ %3694, %3691 ], [ %3592, %3619 ]
  %3698 = phi i32 [ 3, %3691 ], [ 2, %3619 ]
  %3699 = fadd fast float %3678, %3595
  %3700 = fadd fast float %3679, %3596
  %3701 = fmul fast float %3690, %3680
  %3702 = fmul fast float %3680, 2.000000e+00
  %3703 = fmul fast float %3702, %3679
  %3704 = fadd fast float %3701, %3530
  %3705 = fadd fast float %3703, %3534
  br label %3785

; <label>:3706                                    ; preds = %3546
  %3707 = call float @dx.op.unary.f32(i32 21, float %3583)  ; Exp(value)
  %3708 = fmul fast float %3707, 9.765625e-04
  %3709 = fcmp fast olt float %3604, %3708
  %3710 = fcmp fast olt float %3605, %3708
  %3711 = or i1 %3709, %3710
  %3712 = fsub fast float 1.000000e+00, %3708
  %3713 = fcmp fast ogt float %3604, %3712
  %3714 = fcmp fast ogt float %3605, %3712
  %3715 = or i1 %3713, %3714
  %3716 = or i1 %3711, %3715
  br i1 %3716, label %3717, label %3785, !dx.controlflow.hints !123

; <label>:3717                                    ; preds = %3706
  %3718 = fmul fast float %3552, 5.000000e-01
  %3719 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3720 = extractvalue %dx.types.CBufRet.i32 %3719, 0
  %3721 = fmul fast float %3534, 3.530000e+02
  %3722 = uitofp i32 %3599 to float
  %3723 = fmul fast float %3721, %3722
  %3724 = fmul fast float %3530, 6.130000e+02
  %3725 = fadd fast float %3723, %3724
  %3726 = fptoui float %3725 to i32
  %3727 = add i32 %3720, %3726
  %3728 = mul i32 %3727, -63
  %3729 = lshr i32 %3728, 17
  %3730 = xor i32 %3729, %3728
  %3731 = mul i32 %3730, -511
  %3732 = mul i32 %3730, -8176
  %3733 = xor i32 %3731, %3732
  %3734 = mul i32 %3733, -7
  %3735 = mul i32 %3733, -7168
  %3736 = xor i32 %3734, %3735
  %3737 = lshr i32 %3736, 15
  %3738 = xor i32 %3737, %3734
  %3739 = and i32 %3738, 15
  %3740 = mul i32 %3739, 2
  %3741 = add i32 0, %3740
  %3742 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3741
  %3743 = load float, float* %3742, align 4
  %3744 = mul i32 %3739, 2
  %3745 = add i32 1, %3744
  %3746 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3745
  %3747 = load float, float* %3746, align 4
  %3748 = fmul fast float %3534, 2.770000e+02
  %3749 = fmul fast float %3748, %3722
  %3750 = fmul fast float %3530, 5.990000e+02
  %3751 = fadd fast float %3749, %3750
  %3752 = fptoui float %3751 to i32
  %3753 = mul i32 %3752, -63
  %3754 = lshr i32 %3753, 17
  %3755 = xor i32 %3754, %3753
  %3756 = mul i32 %3755, -511
  %3757 = mul i32 %3755, -8176
  %3758 = xor i32 %3756, %3757
  %3759 = mul i32 %3758, -7
  %3760 = mul i32 %3758, -7168
  %3761 = xor i32 %3759, %3760
  %3762 = lshr i32 %3761, 15
  %3763 = xor i32 %3762, %3759
  %3764 = and i32 %3763, 63
  %3765 = mul i32 %3764, 2
  %3766 = add i32 0, %3765
  %3767 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3766
  %3768 = load float, float* %3767, align 4
  %3769 = mul i32 %3764, 2
  %3770 = add i32 1, %3769
  %3771 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3770
  %3772 = load float, float* %3771, align 4
  %3773 = call float @dx.op.dot2.f32(i32 54, float %3743, float %3747, float %3768, float %3772)  ; Dot2(ax,ay,bx,by)
  %3774 = fsub fast float -0.000000e+00, %3768
  %3775 = call float @dx.op.dot2.f32(i32 54, float %3743, float %3747, float %3774, float %3772)  ; Dot2(ax,ay,bx,by)
  %3776 = fmul fast float %3773, %3718
  %3777 = fmul fast float %3775, %3718
  %3778 = fadd fast float %3776, %3591
  %3779 = fadd fast float %3777, %3592
  %3780 = fdiv fast float 2.000000e+00, %3586
  %3781 = fmul fast float %3780, %3776
  %3782 = fmul fast float %3777, %3780
  %3783 = fadd fast float %3781, %3530
  %3784 = fadd fast float %3782, %3534
  br label %3785

; <label>:3785                                    ; preds = %3717, %3706, %3695, %3608
  %3786 = phi float [ %3699, %3695 ], [ %3595, %3608 ], [ %3595, %3717 ], [ %3595, %3706 ]
  %3787 = phi float [ %3700, %3695 ], [ %3596, %3608 ], [ %3596, %3717 ], [ %3596, %3706 ]
  %3788 = phi float [ %3696, %3695 ], [ %3591, %3608 ], [ %3778, %3717 ], [ %3591, %3706 ]
  %3789 = phi float [ %3697, %3695 ], [ %3592, %3608 ], [ %3779, %3717 ], [ %3592, %3706 ]
  %3790 = phi i32 [ %3698, %3695 ], [ 0, %3608 ], [ 1, %3717 ], [ 0, %3706 ]
  %3791 = phi float [ %3704, %3695 ], [ %3530, %3608 ], [ %3783, %3717 ], [ %3530, %3706 ]
  %3792 = phi float [ %3705, %3695 ], [ %3534, %3608 ], [ %3784, %3717 ], [ %3534, %3706 ]
  %3793 = fsub fast float %3557, %3555
  %3794 = fptoui float %3793 to i32
  %3795 = add i32 %3794, 320
  %3796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 %3795)  ; CBufferLoadLegacy(handle,regIndex)
  %3797 = extractvalue %dx.types.CBufRet.f32 %3796, 0
  %3798 = extractvalue %dx.types.CBufRet.f32 %3796, 1
  %3799 = fcmp fast une float %3582, %3557
  %3800 = fsub fast float %3791, %3797
  %3801 = fsub fast float %3792, %3798
  %3802 = call float @dx.op.unary.f32(i32 6, float %3800)  ; FAbs(value)
  %3803 = call float @dx.op.unary.f32(i32 6, float %3801)  ; FAbs(value)
  %3804 = fmul fast float %3802, %3586
  %3805 = fmul fast float %3803, %3586
  %3806 = fcmp fast olt float %3804, 1.000000e+00
  %3807 = fcmp fast olt float %3805, 1.000000e+00
  %3808 = and i1 %3806, %3807
  %3809 = or i1 %3799, %3808
  br i1 %3809, label %3810, label %4178, !dx.controlflow.hints !124

; <label>:3810                                    ; preds = %3785
  %3811 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3812 = extractvalue %dx.types.CBufRet.i32 %3811, 2
  %3813 = sitofp i32 %3812 to float
  %3814 = fsub fast float %3582, %3813
  %3815 = call float @dx.op.unary.f32(i32 27, float %3814)  ; Round_ni(value)
  %3816 = call float @dx.op.unary.f32(i32 22, float %3582)  ; Frc(value)
  %3817 = icmp eq i32 %3790, 0
  %3818 = call float @dx.op.unary.f32(i32 22, float %3788)  ; Frc(value)
  %3819 = call float @dx.op.unary.f32(i32 22, float %3789)  ; Frc(value)
  br i1 %3817, label %3890, label %3820, !dx.controlflow.hints !125

; <label>:3820                                    ; preds = %3810
  %3821 = and i32 %3790, 1
  %3822 = icmp eq i32 %3821, 0
  br i1 %3822, label %3836, label %3823, !dx.controlflow.hints !126

; <label>:3823                                    ; preds = %3820
  %3824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3825 = extractvalue %dx.types.CBufRet.f32 %3824, 0
  %3826 = fmul fast float %3818, %3825
  %3827 = fmul fast float %3819, %3825
  %3828 = fptoui float %3826 to i32
  %3829 = fptoui float %3827 to i32
  %3830 = fptoui float %3815 to i32
  %3831 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %3828, i32 %3829, i32 %3830, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = extractvalue %dx.types.ResRet.f32 %3831, 1
  %3834 = extractvalue %dx.types.ResRet.f32 %3831, 2
  %3835 = extractvalue %dx.types.ResRet.f32 %3831, 3
  br label %3842

; <label>:3836                                    ; preds = %3820
  %3837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %56, float %3818, float %3819, float %3815, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3838 = extractvalue %dx.types.ResRet.f32 %3837, 0
  %3839 = extractvalue %dx.types.ResRet.f32 %3837, 1
  %3840 = extractvalue %dx.types.ResRet.f32 %3837, 2
  %3841 = extractvalue %dx.types.ResRet.f32 %3837, 3
  br label %3842

; <label>:3842                                    ; preds = %3836, %3823
  %3843 = phi float [ %3832, %3823 ], [ %3838, %3836 ]
  %3844 = phi float [ %3833, %3823 ], [ %3839, %3836 ]
  %3845 = phi float [ %3834, %3823 ], [ %3840, %3836 ]
  %3846 = phi float [ %3835, %3823 ], [ %3841, %3836 ]
  %3847 = fcmp fast ogt float %3816, 0.000000e+00
  br i1 %3847, label %3848, label %3918

; <label>:3848                                    ; preds = %3842
  %3849 = and i32 %3790, 2
  %3850 = icmp eq i32 %3849, 0
  %3851 = fadd fast float %3815, 1.000000e+00
  %3852 = call float @dx.op.unary.f32(i32 22, float %3786)  ; Frc(value)
  %3853 = call float @dx.op.unary.f32(i32 22, float %3787)  ; Frc(value)
  br i1 %3850, label %3867, label %3854, !dx.controlflow.hints !127

; <label>:3854                                    ; preds = %3848
  %3855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3856 = extractvalue %dx.types.CBufRet.f32 %3855, 0
  %3857 = fmul fast float %3852, %3856
  %3858 = fmul fast float %3853, %3856
  %3859 = fptoui float %3857 to i32
  %3860 = fptoui float %3858 to i32
  %3861 = fptoui float %3851 to i32
  %3862 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %3859, i32 %3860, i32 %3861, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3863 = extractvalue %dx.types.ResRet.f32 %3862, 0
  %3864 = extractvalue %dx.types.ResRet.f32 %3862, 1
  %3865 = extractvalue %dx.types.ResRet.f32 %3862, 2
  %3866 = extractvalue %dx.types.ResRet.f32 %3862, 3
  br label %3873

; <label>:3867                                    ; preds = %3848
  %3868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %56, float %3852, float %3853, float %3851, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3869 = extractvalue %dx.types.ResRet.f32 %3868, 0
  %3870 = extractvalue %dx.types.ResRet.f32 %3868, 1
  %3871 = extractvalue %dx.types.ResRet.f32 %3868, 2
  %3872 = extractvalue %dx.types.ResRet.f32 %3868, 3
  br label %3873

; <label>:3873                                    ; preds = %3867, %3854
  %3874 = phi float [ %3863, %3854 ], [ %3869, %3867 ]
  %3875 = phi float [ %3864, %3854 ], [ %3870, %3867 ]
  %3876 = phi float [ %3865, %3854 ], [ %3871, %3867 ]
  %3877 = phi float [ %3866, %3854 ], [ %3872, %3867 ]
  %3878 = fsub fast float %3874, %3843
  %3879 = fsub fast float %3875, %3844
  %3880 = fsub fast float %3876, %3845
  %3881 = fsub fast float %3877, %3846
  %3882 = fmul fast float %3878, %3816
  %3883 = fmul fast float %3879, %3816
  %3884 = fmul fast float %3880, %3816
  %3885 = fmul fast float %3881, %3816
  %3886 = fadd fast float %3882, %3843
  %3887 = fadd fast float %3883, %3844
  %3888 = fadd fast float %3884, %3845
  %3889 = fadd fast float %3885, %3846
  br label %3918

; <label>:3890                                    ; preds = %3810
  %3891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %56, float %3818, float %3819, float %3815, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3892 = extractvalue %dx.types.ResRet.f32 %3891, 0
  %3893 = extractvalue %dx.types.ResRet.f32 %3891, 1
  %3894 = extractvalue %dx.types.ResRet.f32 %3891, 2
  %3895 = extractvalue %dx.types.ResRet.f32 %3891, 3
  %3896 = fcmp fast ogt float %3816, 0.000000e+00
  br i1 %3896, label %3897, label %3918, !dx.controlflow.hints !128

; <label>:3897                                    ; preds = %3890
  %3898 = fadd fast float %3815, 1.000000e+00
  %3899 = call float @dx.op.unary.f32(i32 22, float %3786)  ; Frc(value)
  %3900 = call float @dx.op.unary.f32(i32 22, float %3787)  ; Frc(value)
  %3901 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %56, float %3899, float %3900, float %3898, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3902 = extractvalue %dx.types.ResRet.f32 %3901, 0
  %3903 = extractvalue %dx.types.ResRet.f32 %3901, 1
  %3904 = extractvalue %dx.types.ResRet.f32 %3901, 2
  %3905 = extractvalue %dx.types.ResRet.f32 %3901, 3
  %3906 = fsub fast float %3902, %3892
  %3907 = fsub fast float %3903, %3893
  %3908 = fsub fast float %3904, %3894
  %3909 = fsub fast float %3905, %3895
  %3910 = fmul fast float %3906, %3816
  %3911 = fmul fast float %3907, %3816
  %3912 = fmul fast float %3908, %3816
  %3913 = fmul fast float %3909, %3816
  %3914 = fadd fast float %3910, %3892
  %3915 = fadd fast float %3911, %3893
  %3916 = fadd fast float %3912, %3894
  %3917 = fadd fast float %3913, %3895
  br label %3918

; <label>:3918                                    ; preds = %3897, %3890, %3873, %3842
  %3919 = phi float [ %3886, %3873 ], [ %3843, %3842 ], [ %3914, %3897 ], [ %3892, %3890 ]
  %3920 = phi float [ %3887, %3873 ], [ %3844, %3842 ], [ %3915, %3897 ], [ %3893, %3890 ]
  %3921 = phi float [ %3888, %3873 ], [ %3845, %3842 ], [ %3916, %3897 ], [ %3894, %3890 ]
  %3922 = phi float [ %3889, %3873 ], [ %3846, %3842 ], [ %3917, %3897 ], [ %3895, %3890 ]
  %3923 = fadd fast float %3919, -5.000000e-01
  %3924 = fadd fast float %3921, -5.000000e-01
  %3925 = fmul fast float %3923, 0xBFD5555560000000
  %3926 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3924, float %3925)  ; FMad(a,b,c)
  %3927 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3920, float 0.000000e+00)  ; FMad(a,b,c)
  %3928 = fadd fast float %3927, %3922
  %3929 = fmul fast float %3923, -7.500000e-01
  %3930 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3924, float %3929)  ; FMad(a,b,c)
  %3931 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3920, float 0.000000e+00)  ; FMad(a,b,c)
  %3932 = fadd fast float %3931, %3922
  %3933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3934 = extractvalue %dx.types.CBufRet.f32 %3933, 0
  %3935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3936 = extractvalue %dx.types.CBufRet.f32 %3935, 0
  %3937 = extractvalue %dx.types.CBufRet.f32 %3935, 1
  %3938 = extractvalue %dx.types.CBufRet.f32 %3935, 2
  %3939 = extractvalue %dx.types.CBufRet.f32 %3935, 3
  %3940 = fsub fast float %3936, %3926
  %3941 = fsub fast float %3937, %3928
  %3942 = fsub fast float %3938, %3930
  %3943 = fsub fast float %3939, %3932
  %3944 = fmul fast float %3940, %3934
  %3945 = fmul fast float %3941, %3934
  %3946 = fmul fast float %3942, %3934
  %3947 = fmul fast float %3943, %3934
  %3948 = fadd fast float %3944, %3926
  %3949 = fadd fast float %3945, %3928
  %3950 = fadd fast float %3946, %3930
  %3951 = fadd fast float %3947, %3932
  %3952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3953 = extractvalue %dx.types.ResRet.i32 %3952, 0
  %3954 = and i32 %3953, 536870911
  %3955 = uitofp i32 %3954 to float
  %3956 = fmul fast float %3955, %3791
  %3957 = fmul fast float %3955, %3792
  %3958 = fptoui float %3956 to i32
  %3959 = fptoui float %3957 to i32
  %3960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3961 = extractvalue %dx.types.ResRet.i32 %3960, 0
  %3962 = and i32 %3961, 31
  %3963 = lshr i32 %3958, %3962
  %3964 = lshr i32 %3959, %3962
  %3965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3966 = extractvalue %dx.types.ResRet.i32 %3965, 0
  %3967 = and i32 %3966, 31
  %3968 = shl i32 1, %3967
  %3969 = call i32 @dx.op.binary.i32(i32 40, i32 %3968, i32 4)  ; UMin(a,b)
  %3970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3971 = extractvalue %dx.types.ResRet.i32 %3970, 0
  %3972 = extractvalue %dx.types.ResRet.i32 %3970, 1
  %3973 = icmp eq i32 %3969, 0
  br i1 %3973, label %4015, label %3974

; <label>:3974                                    ; preds = %3918
  br label %3975

; <label>:3975                                    ; preds = %4003, %3974
  %3976 = phi i32 [ %4006, %4003 ], [ 0, %3974 ]
  %3977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3978 = extractvalue %dx.types.ResRet.i32 %3977, 0
  %3979 = lshr i32 %3978, 16
  %3980 = and i32 %3979, 31
  %3981 = shl i32 %3964, %3980
  %3982 = add i32 %3981, %3963
  %3983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3984 = extractvalue %dx.types.ResRet.i32 %3983, 0
  %3985 = and i32 %3984, 31
  %3986 = shl i32 %3982, %3985
  %3987 = add i32 %3986, %3976
  %3988 = shl i32 %3987, 2
  %3989 = add i32 %3988, 32
  %3990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3989, i32 undef)  ; BufferLoad(srv,index,wot)
  %3991 = extractvalue %dx.types.ResRet.i32 %3990, 0
  %3992 = icmp slt i32 %3991, 0
  %3993 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %3976
  %3994 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %3976
  %3995 = bitcast float* %3993 to i32*
  %3996 = bitcast float* %3994 to i32*
  br i1 %3992, label %3997, label %4003

; <label>:3997                                    ; preds = %3975
  %3998 = and i32 %3991, 1073741823
  %3999 = add nuw nsw i32 %3998, 20
  %4000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3999, i32 undef)  ; BufferLoad(srv,index,wot)
  %4001 = extractvalue %dx.types.ResRet.i32 %4000, 0
  %4002 = extractvalue %dx.types.ResRet.i32 %4000, 1
  br label %4003

; <label>:4003                                    ; preds = %3997, %3975
  %4004 = phi i32 [ %4001, %3997 ], [ %3971, %3975 ]
  %4005 = phi i32 [ %4002, %3997 ], [ %3972, %3975 ]
  store i32 %4004, i32* %3995, align 4
  store i32 %4005, i32* %3996, align 4
  %4006 = add nuw i32 %3976, 1
  %4007 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4008 = extractvalue %dx.types.CBufRet.i32 %4007, 2
  %4009 = icmp eq i32 %4008, 0
  %4010 = icmp ugt i32 %3991, -1073741825
  %4011 = and i1 %4010, %4009
  %4012 = icmp ult i32 %4006, %3969
  %4013 = and i1 %4011, %4012
  br i1 %4013, label %3975, label %4014

; <label>:4014                                    ; preds = %4003
  br label %4015

; <label>:4015                                    ; preds = %4014, %3918
  %4016 = phi i32 [ 0, %3918 ], [ %4006, %4014 ]
  %4017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4018 = extractvalue %dx.types.CBufRet.f32 %4017, 2
  %4019 = fptoui float %4018 to i32
  %4020 = icmp eq i32 %4019, 0
  br i1 %4020, label %4072, label %4021

; <label>:4021                                    ; preds = %4015
  br label %4022

; <label>:4022                                    ; preds = %4067, %4021
  %4023 = phi i32 [ %4068, %4067 ], [ %4016, %4021 ]
  %4024 = phi i32 [ %4069, %4067 ], [ 0, %4021 ]
  %4025 = lshr i32 %4024, 2
  %4026 = and i32 %4024, 3
  %4027 = add nuw nsw i32 %4025, 83
  %4028 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 %4027)  ; CBufferLoadLegacy(handle,regIndex)
  %4029 = extractvalue %dx.types.CBufRet.i32 %4028, 0
  %4030 = extractvalue %dx.types.CBufRet.i32 %4028, 1
  %4031 = extractvalue %dx.types.CBufRet.i32 %4028, 2
  %4032 = extractvalue %dx.types.CBufRet.i32 %4028, 3
  %4033 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 0
  store i32 %4029, i32* %4033, align 4
  %4034 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 1
  store i32 %4030, i32* %4034, align 4
  %4035 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 2
  store i32 %4031, i32* %4035, align 4
  %4036 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 3
  store i32 %4032, i32* %4036, align 4
  %4037 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 %4026
  %4038 = load i32, i32* %4037, align 4, !tbaa !129, !noalias !131
  %4039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4040 = extractvalue %dx.types.ResRet.i32 %4039, 0
  %4041 = lshr i32 %4040, 16
  %4042 = and i32 %4041, 31
  %4043 = shl i32 %3964, %4042
  %4044 = add i32 %4043, %3963
  %4045 = shl i32 %4044, 2
  %4046 = add i32 %4045, %4038
  %4047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4046, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.i32 %4047, 0
  %4049 = icmp eq i32 %4048, 0
  br i1 %4049, label %4067, label %4050

; <label>:4050                                    ; preds = %4022
  %4051 = icmp slt i32 %4048, 0
  %4052 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %4023
  %4053 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %4023
  %4054 = bitcast float* %4052 to i32*
  %4055 = bitcast float* %4053 to i32*
  br i1 %4051, label %4056, label %4063

; <label>:4056                                    ; preds = %4050
  %4057 = and i32 %4048, 1073741823
  %4058 = add i32 %4038, 20
  %4059 = add i32 %4058, %4057
  %4060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4059, i32 undef)  ; BufferLoad(srv,index,wot)
  %4061 = extractvalue %dx.types.ResRet.i32 %4060, 0
  %4062 = extractvalue %dx.types.ResRet.i32 %4060, 1
  br label %4063

; <label>:4063                                    ; preds = %4056, %4050
  %4064 = phi i32 [ %4061, %4056 ], [ %3971, %4050 ]
  %4065 = phi i32 [ %4062, %4056 ], [ %3972, %4050 ]
  store i32 %4064, i32* %4054, align 4
  store i32 %4065, i32* %4055, align 4
  %4066 = add i32 %4023, 1
  br label %4067

; <label>:4067                                    ; preds = %4063, %4022
  %4068 = phi i32 [ %4023, %4022 ], [ %4066, %4063 ]
  %4069 = add nuw i32 %4024, 1
  %4070 = icmp eq i32 %4069, %4019
  br i1 %4070, label %4071, label %4022

; <label>:4071                                    ; preds = %4067
  br label %4072

; <label>:4072                                    ; preds = %4071, %4015
  %4073 = phi i32 [ %4016, %4015 ], [ %4068, %4071 ]
  %4074 = icmp eq i32 %4073, 1
  %4075 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 0
  %4076 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 0
  br i1 %4074, label %4077, label %4080

; <label>:4077                                    ; preds = %4072
  %4078 = load float, float* %4075, align 4
  %4079 = load float, float* %4076, align 4
  br label %4107

; <label>:4080                                    ; preds = %4072
  %4081 = load float, float* %4075, align 4
  %4082 = load float, float* %4076, align 4
  %4083 = fdiv fast float 1.000000e+00, %4082
  %4084 = fsub fast float %4081, %4083
  %4085 = icmp ugt i32 %4073, 1
  br i1 %4085, label %4086, label %4102

; <label>:4086                                    ; preds = %4080
  br label %4087

; <label>:4087                                    ; preds = %4087, %4086
  %4088 = phi float [ %4097, %4087 ], [ %4084, %4086 ]
  %4089 = phi float [ %4098, %4087 ], [ %4081, %4086 ]
  %4090 = phi i32 [ %4099, %4087 ], [ 1, %4086 ]
  %4091 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %4090
  %4092 = load float, float* %4091, align 4
  %4093 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %4090
  %4094 = load float, float* %4093, align 4
  %4095 = fdiv fast float 1.000000e+00, %4094
  %4096 = fsub fast float %4092, %4095
  %4097 = call float @dx.op.binary.f32(i32 36, float %4088, float %4096)  ; FMin(a,b)
  %4098 = call float @dx.op.binary.f32(i32 35, float %4089, float %4092)  ; FMax(a,b)
  %4099 = add nuw i32 %4090, 1
  %4100 = icmp eq i32 %4099, %4073
  br i1 %4100, label %4101, label %4087

; <label>:4101                                    ; preds = %4087
  br label %4102

; <label>:4102                                    ; preds = %4101, %4080
  %4103 = phi float [ %4084, %4080 ], [ %4097, %4101 ]
  %4104 = phi float [ %4081, %4080 ], [ %4098, %4101 ]
  %4105 = fsub fast float %4104, %4103
  %4106 = fdiv fast float 1.000000e+00, %4105
  br label %4107

; <label>:4107                                    ; preds = %4102, %4077
  %4108 = phi float [ %4078, %4077 ], [ %4104, %4102 ]
  %4109 = phi float [ %4079, %4077 ], [ %4106, %4102 ]
  %4110 = fadd fast float %3538, %4108
  %4111 = fmul fast float %4110, %4109
  %4112 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4113 = fmul fast float %4112, 2.000000e+00
  %4114 = fsub fast float 1.000000e+00, %4113
  %4115 = fmul fast float %3948, %3948
  %4116 = fsub fast float %3949, %4115
  %4117 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4116)  ; FMax(a,b)
  %4118 = fdiv fast float 1.000000e+00, %4117
  %4119 = fmul fast float %3949, %3948
  %4120 = fsub fast float %3950, %4119
  %4121 = fsub fast float %4114, %3948
  %4122 = fmul fast float %4114, %4114
  %4123 = fsub fast float %4122, %3949
  %4124 = fmul fast float %4118, %4120
  %4125 = fmul fast float %4124, %4121
  %4126 = fsub fast float %4123, %4125
  %4127 = fmul fast float %3949, %3949
  %4128 = fsub fast float %3951, %4127
  %4129 = fmul fast float %4120, %4120
  %4130 = fmul fast float %4129, %4118
  %4131 = fsub fast float %4128, %4130
  %4132 = fdiv fast float %4126, %4131
  %4133 = fmul fast float %4132, %4120
  %4134 = fsub fast float %4121, %4133
  %4135 = fmul fast float %4134, %4118
  %4136 = fmul fast float %4135, %3948
  %4137 = fsub fast float 1.000000e+00, %4136
  %4138 = fmul fast float %4132, %3949
  %4139 = fsub fast float %4137, %4138
  %4140 = fmul fast float %4135, %4135
  %4141 = fmul fast float %4132, 4.000000e+00
  %4142 = fmul fast float %4141, %4139
  %4143 = fsub fast float %4140, %4142
  %4144 = call float @dx.op.unary.f32(i32 24, float %4143)  ; Sqrt(value)
  %4145 = fcmp fast oge float %4135, 0.000000e+00
  %4146 = fsub fast float -0.000000e+00, %4144
  %4147 = select i1 %4145, float %4146, float %4144
  %4148 = fsub fast float %4147, %4135
  %4149 = fdiv fast float %4148, %4132
  %4150 = fdiv fast float %4139, %4148
  %4151 = fmul fast float %4149, 5.000000e-01
  %4152 = fmul fast float %4150, 2.000000e+00
  %4153 = select i1 %4145, float %4151, float %4152
  %4154 = select i1 %4145, float %4152, float %4151
  %4155 = call float @dx.op.binary.f32(i32 35, float %4153, float %4154)  ; FMax(a,b)
  %4156 = call float @dx.op.binary.f32(i32 36, float %4153, float %4154)  ; FMin(a,b)
  %4157 = fcmp fast ogt float %4114, %4155
  %4158 = fsub fast float %4114, %4156
  %4159 = fsub fast float %4114, %4155
  %4160 = fsub fast float %4155, %4156
  %4161 = select i1 %4157, float %4159, float %4160
  %4162 = fmul float %4158, %4161
  %4163 = select i1 %4157, float %4156, float %4114
  %4164 = fcmp fast ogt float %4114, %4156
  %4165 = fmul fast float %4163, %4155
  %4166 = fadd fast float %4163, %4155
  %4167 = fmul fast float %4166, %3948
  %4168 = fadd fast float %4165, %3949
  %4169 = fsub fast float %4168, %4167
  %4170 = fdiv fast float %4169, %4162
  %4171 = select i1 %4164, float %4170, float 0.000000e+00
  %4172 = fsub fast float 1.000000e+00, %4171
  %4173 = select i1 %4157, float %4172, float %4171
  %4174 = call float @dx.op.unary.f32(i32 7, float %4173)  ; Saturate(value)
  %4175 = extractvalue %dx.types.CBufRet.f32 %3933, 3
  %4176 = fmul fast float %4175, %4174
  %4177 = fsub fast float 1.000000e+00, %4176
  br label %4178

; <label>:4178                                    ; preds = %4107, %3785, %3511, %3507, %3471
  %4179 = phi float [ 1.000000e+00, %3471 ], [ %4177, %4107 ], [ 1.000000e+00, %3511 ], [ 1.000000e+00, %3785 ], [ 1.000000e+00, %3507 ]
  %4180 = fcmp fast ogt float %3503, 0.000000e+00
  br i1 %4180, label %4181, label %4345, !dx.controlflow.hints !140

; <label>:4181                                    ; preds = %4178
  %4182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4183 = extractvalue %dx.types.CBufRet.f32 %4182, 2
  %4184 = fadd fast float %4183, %3386
  %4185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4186 = extractvalue %dx.types.CBufRet.f32 %4185, 2
  %4187 = extractvalue %dx.types.CBufRet.f32 %4185, 3
  %4188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.f32 %4188, 2
  %4190 = call float @dx.op.binary.f32(i32 35, float %4184, float 0.000000e+00)  ; FMax(a,b)
  %4191 = fadd fast float %4190, 0x3F10000000000000
  %4192 = fcmp fast oeq float %4189, 0.000000e+00
  br i1 %4192, label %4193, label %4260

; <label>:4193                                    ; preds = %4181
  %4194 = extractvalue %dx.types.CBufRet.f32 %4185, 1
  %4195 = extractvalue %dx.types.CBufRet.f32 %4185, 0
  %4196 = fmul fast float %4195, %3401
  %4197 = fmul fast float %4194, %3402
  %4198 = fadd fast float %4196, 5.000000e-01
  %4199 = call float @dx.op.unary.f32(i32 27, float %4198)  ; Round_ni(value)
  %4200 = fadd fast float %4197, 5.000000e-01
  %4201 = call float @dx.op.unary.f32(i32 27, float %4200)  ; Round_ni(value)
  %4202 = fsub fast float %4198, %4199
  %4203 = fsub fast float %4200, %4201
  %4204 = fadd fast float %4199, -5.000000e-01
  %4205 = fadd fast float %4201, -5.000000e-01
  %4206 = fmul fast float %4202, 2.000000e+00
  %4207 = fsub fast float 3.000000e+00, %4206
  %4208 = fadd fast float %4206, 1.000000e+00
  %4209 = fsub fast float 2.000000e+00, %4202
  %4210 = bitcast float %4207 to i32
  %4211 = sub nsw i32 2129859010, %4210
  %4212 = bitcast i32 %4211 to float
  %4213 = fmul fast float %4212, %4209
  %4214 = fadd fast float %4213, -1.000000e+00
  %4215 = bitcast float %4208 to i32
  %4216 = sub nsw i32 2129859010, %4215
  %4217 = bitcast i32 %4216 to float
  %4218 = fmul fast float %4217, %4202
  %4219 = fadd fast float %4218, 1.000000e+00
  %4220 = fmul fast float %4203, 2.000000e+00
  %4221 = fsub fast float 3.000000e+00, %4220
  %4222 = fadd fast float %4220, 1.000000e+00
  %4223 = fsub fast float 2.000000e+00, %4203
  %4224 = bitcast float %4221 to i32
  %4225 = sub nsw i32 2129859010, %4224
  %4226 = bitcast i32 %4225 to float
  %4227 = fmul fast float %4226, %4223
  %4228 = fadd fast float %4227, -1.000000e+00
  %4229 = bitcast float %4222 to i32
  %4230 = sub nsw i32 2129859010, %4229
  %4231 = bitcast i32 %4230 to float
  %4232 = fmul fast float %4231, %4203
  %4233 = fadd fast float %4232, 1.000000e+00
  %4234 = fadd fast float %4214, %4204
  %4235 = fmul fast float %4234, %4186
  %4236 = fadd fast float %4228, %4205
  %4237 = fmul fast float %4236, %4187
  %4238 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %59, float %4235, float %4237, float undef, float undef, i32 0, i32 0, i32 undef, float %4191)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4239 = extractvalue %dx.types.ResRet.f32 %4238, 0
  %4240 = fmul fast float %4239, %4207
  %4241 = fadd fast float %4219, %4204
  %4242 = fmul fast float %4241, %4186
  %4243 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %59, float %4242, float %4237, float undef, float undef, i32 0, i32 0, i32 undef, float %4191)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4244 = extractvalue %dx.types.ResRet.f32 %4243, 0
  %4245 = fmul fast float %4244, %4208
  %4246 = fadd fast float %4233, %4205
  %4247 = fmul fast float %4246, %4187
  %4248 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %59, float %4235, float %4247, float undef, float undef, i32 0, i32 0, i32 undef, float %4191)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4249 = extractvalue %dx.types.ResRet.f32 %4248, 0
  %4250 = fmul fast float %4249, %4207
  %4251 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %59, float %4242, float %4247, float undef, float undef, i32 0, i32 0, i32 undef, float %4191)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4252 = extractvalue %dx.types.ResRet.f32 %4251, 0
  %4253 = fmul fast float %4252, %4208
  %4254 = fadd fast float %4253, %4250
  %4255 = fmul fast float %4254, %4222
  %4256 = fadd fast float %4245, %4240
  %4257 = fmul fast float %4256, %4221
  %4258 = fadd fast float %4257, %4255
  %4259 = fmul fast float %4258, 6.250000e-02
  br label %4345

; <label>:4260                                    ; preds = %4181
  %4261 = fmul fast float %1071, 0x401921FB60000000
  %4262 = call float @dx.op.unary.f32(i32 13, float %4261)  ; Sin(value)
  %4263 = call float @dx.op.unary.f32(i32 12, float %4261)  ; Cos(value)
  %4264 = fsub fast float -0.000000e+00, %4262
  br label %4265

; <label>:4265                                    ; preds = %4314, %4260
  %4266 = phi float [ 0.000000e+00, %4260 ], [ %4309, %4314 ]
  %4267 = phi float [ 0.000000e+00, %4260 ], [ %4311, %4314 ]
  %4268 = phi i32 [ 0, %4260 ], [ %4315, %4314 ]
  %4269 = mul i32 %4268, 2
  %4270 = add i32 0, %4269
  %4271 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4270
  %4272 = load float, float* %4271, align 4
  %4273 = mul i32 %4268, 2
  %4274 = add i32 1, %4273
  %4275 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4274
  %4276 = load float, float* %4275, align 4
  %4277 = fmul fast float %4272, %4263
  %4278 = call float @dx.op.tertiary.f32(i32 46, float %4276, float %4264, float %4277)  ; FMad(a,b,c)
  %4279 = fmul fast float %4272, %4262
  %4280 = call float @dx.op.tertiary.f32(i32 46, float %4276, float %4263, float %4279)  ; FMad(a,b,c)
  %4281 = fmul fast float %4278, %4189
  %4282 = fmul fast float %4280, %4189
  %4283 = fadd fast float %4281, %3401
  %4284 = fadd fast float %4282, %3402
  %4285 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %58, float %4283, float %4284, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = extractvalue %dx.types.ResRet.f32 %4285, 1
  %4288 = extractvalue %dx.types.ResRet.f32 %4285, 2
  %4289 = extractvalue %dx.types.ResRet.f32 %4285, 3
  %4290 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 0
  store float %4286, float* %4290, align 4
  %4291 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 1
  store float %4287, float* %4291, align 4
  %4292 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 2
  store float %4288, float* %4292, align 4
  %4293 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 3
  store float %4289, float* %4293, align 4
  %4294 = fsub fast float %4286, %4191
  %4295 = fcmp fast olt float %4294, 0.000000e+00
  %4296 = select i1 %4295, float 0.000000e+00, float 1.000000e+00
  %4297 = fadd fast float %4296, %4266
  %4298 = fmul fast float %4296, %4294
  %4299 = fadd fast float %4298, %4267
  br label %4300

; <label>:4300                                    ; preds = %4300, %4265
  %4301 = phi i32 [ 1, %4265 ], [ %4312, %4300 ]
  %4302 = phi float [ %4299, %4265 ], [ %4311, %4300 ]
  %4303 = phi float [ %4297, %4265 ], [ %4309, %4300 ]
  %4304 = getelementptr [4 x float], [4 x float]* %84, i32 0, i32 %4301
  %4305 = load float, float* %4304, align 4, !tbaa !98, !noalias !131
  %4306 = fsub fast float %4305, %4191
  %4307 = fcmp fast olt float %4306, 0.000000e+00
  %4308 = select i1 %4307, float 0.000000e+00, float 1.000000e+00
  %4309 = fadd fast float %4308, %4303
  %4310 = fmul fast float %4308, %4306
  %4311 = fadd fast float %4310, %4302
  %4312 = add nuw nsw i32 %4301, 1
  %4313 = icmp eq i32 %4312, 4
  br i1 %4313, label %4314, label %4300, !llvm.loop !141

; <label>:4314                                    ; preds = %4300
  %4315 = add nuw nsw i32 %4268, 1
  %4316 = icmp eq i32 %4315, 8
  br i1 %4316, label %4317, label %4265, !llvm.loop !142

; <label>:4317                                    ; preds = %4314
  %4318 = fdiv fast float 1.000000e+00, %4309
  %4319 = fmul fast float %4318, %4311
  %4320 = fdiv fast float 1.000000e+00, %4191
  %4321 = fmul fast float %4319, %4320
  %4322 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4323 = call float @dx.op.binary.f32(i32 35, float %4322, float 0.000000e+00)  ; FMax(a,b)
  %4324 = fmul fast float %4309, 3.125000e-02
  %4325 = call float @dx.op.unary.f32(i32 7, float %4324)  ; Saturate(value)
  %4326 = fmul fast float %4325, 2.000000e+00
  %4327 = fadd fast float %4326, -1.000000e+00
  %4328 = fcmp fast ogt float %4327, 0.000000e+00
  %4329 = fcmp fast olt float %4327, 0.000000e+00
  %4330 = zext i1 %4328 to i32
  %4331 = zext i1 %4329 to i32
  %4332 = sub nsw i32 %4330, %4331
  %4333 = sitofp i32 %4332 to float
  %4334 = fmul fast float %4333, %4327
  %4335 = fsub fast float 1.000000e+00, %4334
  %4336 = fmul fast float %4335, %4335
  %4337 = fmul fast float %4336, %4335
  %4338 = fsub fast float %4335, %4337
  %4339 = fmul fast float %4338, %4323
  %4340 = fsub fast float 1.000000e+00, %4337
  %4341 = fsub fast float %4340, %4339
  %4342 = fmul fast float %4333, 5.000000e-01
  %4343 = fmul fast float %4342, %4341
  %4344 = fsub fast float 5.000000e-01, %4343
  br label %4345

; <label>:4345                                    ; preds = %4317, %4193, %4178
  %4346 = phi float [ 1.000000e+00, %4178 ], [ %4259, %4193 ], [ %4344, %4317 ]
  %4347 = fcmp fast ogt float %3501, 0.000000e+00
  br i1 %4347, label %4348, label %4512, !dx.controlflow.hints !143

; <label>:4348                                    ; preds = %4345
  %4349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4350 = extractvalue %dx.types.CBufRet.f32 %4349, 1
  %4351 = fadd fast float %4350, %3386
  %4352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4353 = extractvalue %dx.types.CBufRet.f32 %4352, 2
  %4354 = extractvalue %dx.types.CBufRet.f32 %4352, 3
  %4355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.f32 %4355, 1
  %4357 = call float @dx.op.binary.f32(i32 35, float %4351, float 0.000000e+00)  ; FMax(a,b)
  %4358 = fadd fast float %4357, 0x3F10000000000000
  %4359 = fcmp fast oeq float %4356, 0.000000e+00
  br i1 %4359, label %4360, label %4427

; <label>:4360                                    ; preds = %4348
  %4361 = extractvalue %dx.types.CBufRet.f32 %4352, 1
  %4362 = extractvalue %dx.types.CBufRet.f32 %4352, 0
  %4363 = fmul fast float %4362, %3393
  %4364 = fmul fast float %4361, %3394
  %4365 = fadd fast float %4363, 5.000000e-01
  %4366 = call float @dx.op.unary.f32(i32 27, float %4365)  ; Round_ni(value)
  %4367 = fadd fast float %4364, 5.000000e-01
  %4368 = call float @dx.op.unary.f32(i32 27, float %4367)  ; Round_ni(value)
  %4369 = fsub fast float %4365, %4366
  %4370 = fsub fast float %4367, %4368
  %4371 = fadd fast float %4366, -5.000000e-01
  %4372 = fadd fast float %4368, -5.000000e-01
  %4373 = fmul fast float %4369, 2.000000e+00
  %4374 = fsub fast float 3.000000e+00, %4373
  %4375 = fadd fast float %4373, 1.000000e+00
  %4376 = fsub fast float 2.000000e+00, %4369
  %4377 = bitcast float %4374 to i32
  %4378 = sub nsw i32 2129859010, %4377
  %4379 = bitcast i32 %4378 to float
  %4380 = fmul fast float %4379, %4376
  %4381 = fadd fast float %4380, -1.000000e+00
  %4382 = bitcast float %4375 to i32
  %4383 = sub nsw i32 2129859010, %4382
  %4384 = bitcast i32 %4383 to float
  %4385 = fmul fast float %4384, %4369
  %4386 = fadd fast float %4385, 1.000000e+00
  %4387 = fmul fast float %4370, 2.000000e+00
  %4388 = fsub fast float 3.000000e+00, %4387
  %4389 = fadd fast float %4387, 1.000000e+00
  %4390 = fsub fast float 2.000000e+00, %4370
  %4391 = bitcast float %4388 to i32
  %4392 = sub nsw i32 2129859010, %4391
  %4393 = bitcast i32 %4392 to float
  %4394 = fmul fast float %4393, %4390
  %4395 = fadd fast float %4394, -1.000000e+00
  %4396 = bitcast float %4389 to i32
  %4397 = sub nsw i32 2129859010, %4396
  %4398 = bitcast i32 %4397 to float
  %4399 = fmul fast float %4398, %4370
  %4400 = fadd fast float %4399, 1.000000e+00
  %4401 = fadd fast float %4381, %4371
  %4402 = fmul fast float %4401, %4353
  %4403 = fadd fast float %4395, %4372
  %4404 = fmul fast float %4403, %4354
  %4405 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %59, float %4402, float %4404, float undef, float undef, i32 0, i32 0, i32 undef, float %4358)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4406 = extractvalue %dx.types.ResRet.f32 %4405, 0
  %4407 = fmul fast float %4406, %4374
  %4408 = fadd fast float %4386, %4371
  %4409 = fmul fast float %4408, %4353
  %4410 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %59, float %4409, float %4404, float undef, float undef, i32 0, i32 0, i32 undef, float %4358)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4411 = extractvalue %dx.types.ResRet.f32 %4410, 0
  %4412 = fmul fast float %4411, %4375
  %4413 = fadd fast float %4400, %4372
  %4414 = fmul fast float %4413, %4354
  %4415 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %59, float %4402, float %4414, float undef, float undef, i32 0, i32 0, i32 undef, float %4358)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4416 = extractvalue %dx.types.ResRet.f32 %4415, 0
  %4417 = fmul fast float %4416, %4374
  %4418 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %59, float %4409, float %4414, float undef, float undef, i32 0, i32 0, i32 undef, float %4358)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4419 = extractvalue %dx.types.ResRet.f32 %4418, 0
  %4420 = fmul fast float %4419, %4375
  %4421 = fadd fast float %4420, %4417
  %4422 = fmul fast float %4421, %4389
  %4423 = fadd fast float %4412, %4407
  %4424 = fmul fast float %4423, %4388
  %4425 = fadd fast float %4424, %4422
  %4426 = fmul fast float %4425, 6.250000e-02
  br label %4512

; <label>:4427                                    ; preds = %4348
  %4428 = fmul fast float %1071, 0x401921FB60000000
  %4429 = call float @dx.op.unary.f32(i32 13, float %4428)  ; Sin(value)
  %4430 = call float @dx.op.unary.f32(i32 12, float %4428)  ; Cos(value)
  %4431 = fsub fast float -0.000000e+00, %4429
  br label %4432

; <label>:4432                                    ; preds = %4481, %4427
  %4433 = phi float [ 0.000000e+00, %4427 ], [ %4476, %4481 ]
  %4434 = phi float [ 0.000000e+00, %4427 ], [ %4478, %4481 ]
  %4435 = phi i32 [ 0, %4427 ], [ %4482, %4481 ]
  %4436 = mul i32 %4435, 2
  %4437 = add i32 0, %4436
  %4438 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4437
  %4439 = load float, float* %4438, align 4
  %4440 = mul i32 %4435, 2
  %4441 = add i32 1, %4440
  %4442 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4441
  %4443 = load float, float* %4442, align 4
  %4444 = fmul fast float %4439, %4430
  %4445 = call float @dx.op.tertiary.f32(i32 46, float %4443, float %4431, float %4444)  ; FMad(a,b,c)
  %4446 = fmul fast float %4439, %4429
  %4447 = call float @dx.op.tertiary.f32(i32 46, float %4443, float %4430, float %4446)  ; FMad(a,b,c)
  %4448 = fmul fast float %4445, %4356
  %4449 = fmul fast float %4447, %4356
  %4450 = fadd fast float %4448, %3393
  %4451 = fadd fast float %4449, %3394
  %4452 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %58, float %4450, float %4451, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4453 = extractvalue %dx.types.ResRet.f32 %4452, 0
  %4454 = extractvalue %dx.types.ResRet.f32 %4452, 1
  %4455 = extractvalue %dx.types.ResRet.f32 %4452, 2
  %4456 = extractvalue %dx.types.ResRet.f32 %4452, 3
  %4457 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 0
  store float %4453, float* %4457, align 4
  %4458 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 1
  store float %4454, float* %4458, align 4
  %4459 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 2
  store float %4455, float* %4459, align 4
  %4460 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 3
  store float %4456, float* %4460, align 4
  %4461 = fsub fast float %4453, %4358
  %4462 = fcmp fast olt float %4461, 0.000000e+00
  %4463 = select i1 %4462, float 0.000000e+00, float 1.000000e+00
  %4464 = fadd fast float %4463, %4433
  %4465 = fmul fast float %4463, %4461
  %4466 = fadd fast float %4465, %4434
  br label %4467

; <label>:4467                                    ; preds = %4467, %4432
  %4468 = phi i32 [ 1, %4432 ], [ %4479, %4467 ]
  %4469 = phi float [ %4466, %4432 ], [ %4478, %4467 ]
  %4470 = phi float [ %4464, %4432 ], [ %4476, %4467 ]
  %4471 = getelementptr [4 x float], [4 x float]* %83, i32 0, i32 %4468
  %4472 = load float, float* %4471, align 4, !tbaa !98, !noalias !131
  %4473 = fsub fast float %4472, %4358
  %4474 = fcmp fast olt float %4473, 0.000000e+00
  %4475 = select i1 %4474, float 0.000000e+00, float 1.000000e+00
  %4476 = fadd fast float %4475, %4470
  %4477 = fmul fast float %4475, %4473
  %4478 = fadd fast float %4477, %4469
  %4479 = add nuw nsw i32 %4468, 1
  %4480 = icmp eq i32 %4479, 4
  br i1 %4480, label %4481, label %4467, !llvm.loop !141

; <label>:4481                                    ; preds = %4467
  %4482 = add nuw nsw i32 %4435, 1
  %4483 = icmp eq i32 %4482, 8
  br i1 %4483, label %4484, label %4432, !llvm.loop !142

; <label>:4484                                    ; preds = %4481
  %4485 = fdiv fast float 1.000000e+00, %4476
  %4486 = fmul fast float %4485, %4478
  %4487 = fdiv fast float 1.000000e+00, %4358
  %4488 = fmul fast float %4486, %4487
  %4489 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4490 = call float @dx.op.binary.f32(i32 35, float %4489, float 0.000000e+00)  ; FMax(a,b)
  %4491 = fmul fast float %4476, 3.125000e-02
  %4492 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4493 = fmul fast float %4492, 2.000000e+00
  %4494 = fadd fast float %4493, -1.000000e+00
  %4495 = fcmp fast ogt float %4494, 0.000000e+00
  %4496 = fcmp fast olt float %4494, 0.000000e+00
  %4497 = zext i1 %4495 to i32
  %4498 = zext i1 %4496 to i32
  %4499 = sub nsw i32 %4497, %4498
  %4500 = sitofp i32 %4499 to float
  %4501 = fmul fast float %4500, %4494
  %4502 = fsub fast float 1.000000e+00, %4501
  %4503 = fmul fast float %4502, %4502
  %4504 = fmul fast float %4503, %4502
  %4505 = fsub fast float %4502, %4504
  %4506 = fmul fast float %4505, %4490
  %4507 = fsub fast float 1.000000e+00, %4504
  %4508 = fsub fast float %4507, %4506
  %4509 = fmul fast float %4500, 5.000000e-01
  %4510 = fmul fast float %4509, %4508
  %4511 = fsub fast float 5.000000e-01, %4510
  br label %4512

; <label>:4512                                    ; preds = %4484, %4360, %4345
  %4513 = phi float [ 1.000000e+00, %4345 ], [ %4426, %4360 ], [ %4511, %4484 ]
  %4514 = fcmp fast ogt float %3500, 0.000000e+00
  br i1 %4514, label %4515, label %4679, !dx.controlflow.hints !144

; <label>:4515                                    ; preds = %4512
  %4516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4517 = extractvalue %dx.types.CBufRet.f32 %4516, 0
  %4518 = fadd fast float %4517, %3386
  %4519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4520 = extractvalue %dx.types.CBufRet.f32 %4519, 2
  %4521 = extractvalue %dx.types.CBufRet.f32 %4519, 3
  %4522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4523 = extractvalue %dx.types.CBufRet.f32 %4522, 0
  %4524 = call float @dx.op.binary.f32(i32 35, float %4518, float 0.000000e+00)  ; FMax(a,b)
  %4525 = fadd fast float %4524, 0x3F10000000000000
  %4526 = fcmp fast oeq float %4523, 0.000000e+00
  br i1 %4526, label %4527, label %4594

; <label>:4527                                    ; preds = %4515
  %4528 = extractvalue %dx.types.CBufRet.f32 %4519, 1
  %4529 = extractvalue %dx.types.CBufRet.f32 %4519, 0
  %4530 = fmul fast float %4529, %3378
  %4531 = fmul fast float %4528, %3382
  %4532 = fadd fast float %4530, 5.000000e-01
  %4533 = call float @dx.op.unary.f32(i32 27, float %4532)  ; Round_ni(value)
  %4534 = fadd fast float %4531, 5.000000e-01
  %4535 = call float @dx.op.unary.f32(i32 27, float %4534)  ; Round_ni(value)
  %4536 = fsub fast float %4532, %4533
  %4537 = fsub fast float %4534, %4535
  %4538 = fadd fast float %4533, -5.000000e-01
  %4539 = fadd fast float %4535, -5.000000e-01
  %4540 = fmul fast float %4536, 2.000000e+00
  %4541 = fsub fast float 3.000000e+00, %4540
  %4542 = fadd fast float %4540, 1.000000e+00
  %4543 = fsub fast float 2.000000e+00, %4536
  %4544 = bitcast float %4541 to i32
  %4545 = sub nsw i32 2129859010, %4544
  %4546 = bitcast i32 %4545 to float
  %4547 = fmul fast float %4546, %4543
  %4548 = fadd fast float %4547, -1.000000e+00
  %4549 = bitcast float %4542 to i32
  %4550 = sub nsw i32 2129859010, %4549
  %4551 = bitcast i32 %4550 to float
  %4552 = fmul fast float %4551, %4536
  %4553 = fadd fast float %4552, 1.000000e+00
  %4554 = fmul fast float %4537, 2.000000e+00
  %4555 = fsub fast float 3.000000e+00, %4554
  %4556 = fadd fast float %4554, 1.000000e+00
  %4557 = fsub fast float 2.000000e+00, %4537
  %4558 = bitcast float %4555 to i32
  %4559 = sub nsw i32 2129859010, %4558
  %4560 = bitcast i32 %4559 to float
  %4561 = fmul fast float %4560, %4557
  %4562 = fadd fast float %4561, -1.000000e+00
  %4563 = bitcast float %4556 to i32
  %4564 = sub nsw i32 2129859010, %4563
  %4565 = bitcast i32 %4564 to float
  %4566 = fmul fast float %4565, %4537
  %4567 = fadd fast float %4566, 1.000000e+00
  %4568 = fadd fast float %4548, %4538
  %4569 = fmul fast float %4568, %4520
  %4570 = fadd fast float %4562, %4539
  %4571 = fmul fast float %4570, %4521
  %4572 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %59, float %4569, float %4571, float undef, float undef, i32 0, i32 0, i32 undef, float %4525)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4573 = extractvalue %dx.types.ResRet.f32 %4572, 0
  %4574 = fmul fast float %4573, %4541
  %4575 = fadd fast float %4553, %4538
  %4576 = fmul fast float %4575, %4520
  %4577 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %59, float %4576, float %4571, float undef, float undef, i32 0, i32 0, i32 undef, float %4525)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4578 = extractvalue %dx.types.ResRet.f32 %4577, 0
  %4579 = fmul fast float %4578, %4542
  %4580 = fadd fast float %4567, %4539
  %4581 = fmul fast float %4580, %4521
  %4582 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %59, float %4569, float %4581, float undef, float undef, i32 0, i32 0, i32 undef, float %4525)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4584 = fmul fast float %4583, %4541
  %4585 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %59, float %4576, float %4581, float undef, float undef, i32 0, i32 0, i32 undef, float %4525)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4586 = extractvalue %dx.types.ResRet.f32 %4585, 0
  %4587 = fmul fast float %4586, %4542
  %4588 = fadd fast float %4587, %4584
  %4589 = fmul fast float %4588, %4556
  %4590 = fadd fast float %4579, %4574
  %4591 = fmul fast float %4590, %4555
  %4592 = fadd fast float %4591, %4589
  %4593 = fmul fast float %4592, 6.250000e-02
  br label %4679

; <label>:4594                                    ; preds = %4515
  %4595 = fmul fast float %1071, 0x401921FB60000000
  %4596 = call float @dx.op.unary.f32(i32 13, float %4595)  ; Sin(value)
  %4597 = call float @dx.op.unary.f32(i32 12, float %4595)  ; Cos(value)
  %4598 = fsub fast float -0.000000e+00, %4596
  br label %4599

; <label>:4599                                    ; preds = %4648, %4594
  %4600 = phi float [ 0.000000e+00, %4594 ], [ %4643, %4648 ]
  %4601 = phi float [ 0.000000e+00, %4594 ], [ %4645, %4648 ]
  %4602 = phi i32 [ 0, %4594 ], [ %4649, %4648 ]
  %4603 = mul i32 %4602, 2
  %4604 = add i32 0, %4603
  %4605 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4604
  %4606 = load float, float* %4605, align 4
  %4607 = mul i32 %4602, 2
  %4608 = add i32 1, %4607
  %4609 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4608
  %4610 = load float, float* %4609, align 4
  %4611 = fmul fast float %4606, %4597
  %4612 = call float @dx.op.tertiary.f32(i32 46, float %4610, float %4598, float %4611)  ; FMad(a,b,c)
  %4613 = fmul fast float %4606, %4596
  %4614 = call float @dx.op.tertiary.f32(i32 46, float %4610, float %4597, float %4613)  ; FMad(a,b,c)
  %4615 = fmul fast float %4612, %4523
  %4616 = fmul fast float %4614, %4523
  %4617 = fadd fast float %4615, %3378
  %4618 = fadd fast float %4616, %3382
  %4619 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %58, float %4617, float %4618, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4620 = extractvalue %dx.types.ResRet.f32 %4619, 0
  %4621 = extractvalue %dx.types.ResRet.f32 %4619, 1
  %4622 = extractvalue %dx.types.ResRet.f32 %4619, 2
  %4623 = extractvalue %dx.types.ResRet.f32 %4619, 3
  %4624 = getelementptr inbounds [4 x float], [4 x float]* %82, i32 0, i32 0
  store float %4620, float* %4624, align 4
  %4625 = getelementptr inbounds [4 x float], [4 x float]* %82, i32 0, i32 1
  store float %4621, float* %4625, align 4
  %4626 = getelementptr inbounds [4 x float], [4 x float]* %82, i32 0, i32 2
  store float %4622, float* %4626, align 4
  %4627 = getelementptr inbounds [4 x float], [4 x float]* %82, i32 0, i32 3
  store float %4623, float* %4627, align 4
  %4628 = fsub fast float %4620, %4525
  %4629 = fcmp fast olt float %4628, 0.000000e+00
  %4630 = select i1 %4629, float 0.000000e+00, float 1.000000e+00
  %4631 = fadd fast float %4630, %4600
  %4632 = fmul fast float %4630, %4628
  %4633 = fadd fast float %4632, %4601
  br label %4634

; <label>:4634                                    ; preds = %4634, %4599
  %4635 = phi i32 [ 1, %4599 ], [ %4646, %4634 ]
  %4636 = phi float [ %4633, %4599 ], [ %4645, %4634 ]
  %4637 = phi float [ %4631, %4599 ], [ %4643, %4634 ]
  %4638 = getelementptr [4 x float], [4 x float]* %82, i32 0, i32 %4635
  %4639 = load float, float* %4638, align 4, !tbaa !98, !noalias !131
  %4640 = fsub fast float %4639, %4525
  %4641 = fcmp fast olt float %4640, 0.000000e+00
  %4642 = select i1 %4641, float 0.000000e+00, float 1.000000e+00
  %4643 = fadd fast float %4642, %4637
  %4644 = fmul fast float %4642, %4640
  %4645 = fadd fast float %4644, %4636
  %4646 = add nuw nsw i32 %4635, 1
  %4647 = icmp eq i32 %4646, 4
  br i1 %4647, label %4648, label %4634, !llvm.loop !141

; <label>:4648                                    ; preds = %4634
  %4649 = add nuw nsw i32 %4602, 1
  %4650 = icmp eq i32 %4649, 8
  br i1 %4650, label %4651, label %4599, !llvm.loop !142

; <label>:4651                                    ; preds = %4648
  %4652 = fdiv fast float 1.000000e+00, %4643
  %4653 = fmul fast float %4652, %4645
  %4654 = fdiv fast float 1.000000e+00, %4525
  %4655 = fmul fast float %4653, %4654
  %4656 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4657 = call float @dx.op.binary.f32(i32 35, float %4656, float 0.000000e+00)  ; FMax(a,b)
  %4658 = fmul fast float %4643, 3.125000e-02
  %4659 = call float @dx.op.unary.f32(i32 7, float %4658)  ; Saturate(value)
  %4660 = fmul fast float %4659, 2.000000e+00
  %4661 = fadd fast float %4660, -1.000000e+00
  %4662 = fcmp fast ogt float %4661, 0.000000e+00
  %4663 = fcmp fast olt float %4661, 0.000000e+00
  %4664 = zext i1 %4662 to i32
  %4665 = zext i1 %4663 to i32
  %4666 = sub nsw i32 %4664, %4665
  %4667 = sitofp i32 %4666 to float
  %4668 = fmul fast float %4667, %4661
  %4669 = fsub fast float 1.000000e+00, %4668
  %4670 = fmul fast float %4669, %4669
  %4671 = fmul fast float %4670, %4669
  %4672 = fsub fast float %4669, %4671
  %4673 = fmul fast float %4672, %4657
  %4674 = fsub fast float 1.000000e+00, %4671
  %4675 = fsub fast float %4674, %4673
  %4676 = fmul fast float %4667, 5.000000e-01
  %4677 = fmul fast float %4676, %4675
  %4678 = fsub fast float 5.000000e-01, %4677
  br label %4679

; <label>:4679                                    ; preds = %4651, %4527, %4512
  %4680 = phi float [ 1.000000e+00, %4512 ], [ %4593, %4527 ], [ %4678, %4651 ]
  %4681 = fsub fast float %4346, %4179
  %4682 = fmul fast float %4681, %3441
  %4683 = fadd fast float %4682, %4179
  %4684 = fsub fast float %4513, %4683
  %4685 = fmul fast float %4684, %3472
  %4686 = fadd fast float %4685, %4683
  %4687 = fsub fast float %4680, %4686
  %4688 = fmul fast float %4687, %3500
  %4689 = fadd fast float %4688, %4686
  %4690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4691 = extractvalue %dx.types.CBufRet.f32 %4690, 2
  %4692 = fcmp fast ogt float %4691, 0.000000e+00
  br i1 %4692, label %4693, label %4733, !dx.controlflow.hints !145

; <label>:4693                                    ; preds = %4679
  %4694 = fcmp fast ugt float %4691, 0.000000e+00
  br i1 %4694, label %4695, label %4730

; <label>:4695                                    ; preds = %4693
  %4696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4697 = extractvalue %dx.types.CBufRet.f32 %4696, 0
  %4698 = extractvalue %dx.types.CBufRet.f32 %4696, 1
  %4699 = extractvalue %dx.types.CBufRet.f32 %4696, 2
  %4700 = extractvalue %dx.types.CBufRet.f32 %4696, 3
  %4701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4702 = extractvalue %dx.types.CBufRet.f32 %4701, 0
  %4703 = extractvalue %dx.types.CBufRet.f32 %4701, 1
  %4704 = extractvalue %dx.types.CBufRet.f32 %4701, 2
  %4705 = extractvalue %dx.types.CBufRet.f32 %4701, 3
  %4706 = extractvalue %dx.types.CBufRet.f32 %4690, 0
  %4707 = extractvalue %dx.types.CBufRet.f32 %4690, 1
  %4708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4709 = extractvalue %dx.types.CBufRet.f32 %4708, 0
  %4710 = extractvalue %dx.types.CBufRet.f32 %4708, 1
  %4711 = extractvalue %dx.types.CBufRet.f32 %4708, 2
  %4712 = fadd fast float %4709, %143
  %4713 = fadd fast float %4710, %144
  %4714 = fadd fast float %4711, %145
  %4715 = fmul fast float %4712, %4697
  %4716 = call float @dx.op.tertiary.f32(i32 46, float %4698, float %4713, float %4715)  ; FMad(a,b,c)
  %4717 = call float @dx.op.tertiary.f32(i32 46, float %4699, float %4714, float %4716)  ; FMad(a,b,c)
  %4718 = fadd fast float %4717, %4700
  %4719 = fmul fast float %4712, %4702
  %4720 = call float @dx.op.tertiary.f32(i32 46, float %4703, float %4713, float %4719)  ; FMad(a,b,c)
  %4721 = call float @dx.op.tertiary.f32(i32 46, float %4704, float %4714, float %4720)  ; FMad(a,b,c)
  %4722 = fadd fast float %4721, %4705
  %4723 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %12, %dx.types.Handle %54, float %4718, float %4722, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4724 = extractvalue %dx.types.ResRet.f32 %4723, 0
  %4725 = fmul fast float %4724, %4707
  %4726 = fadd fast float %4725, %4706
  %4727 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4728 = fmul fast float %4727, %4691
  %4729 = fsub fast float 1.000000e+00, %4728
  br label %4730

; <label>:4730                                    ; preds = %4695, %4693
  %4731 = phi float [ %4729, %4695 ], [ 1.000000e+00, %4693 ]
  %4732 = fmul fast float %4731, %4689
  br label %4733

; <label>:4733                                    ; preds = %4730, %4679, %3343
  %4734 = phi float [ 1.000000e+00, %3343 ], [ %4732, %4730 ], [ %4689, %4679 ]
  %4735 = call float @dx.op.binary.f32(i32 36, float %4734, float %4734)  ; FMin(a,b)
  %4736 = call float @dx.op.binary.f32(i32 36, float %4734, float %4735)  ; FMin(a,b)
  %4737 = fcmp fast ogt float %4736, 0.000000e+00
  br i1 %4737, label %4738, label %4903, !dx.controlflow.hints !146

; <label>:4738                                    ; preds = %4733
  %4739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4740 = extractvalue %dx.types.CBufRet.f32 %4739, 0
  %4741 = extractvalue %dx.types.CBufRet.f32 %4739, 1
  %4742 = extractvalue %dx.types.CBufRet.f32 %4739, 2
  %4743 = extractvalue %dx.types.CBufRet.f32 %4739, 3
  %4744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4745 = extractvalue %dx.types.CBufRet.f32 %4744, 0
  %4746 = extractvalue %dx.types.CBufRet.f32 %4744, 1
  %4747 = extractvalue %dx.types.CBufRet.f32 %4744, 2
  %4748 = extractvalue %dx.types.CBufRet.f32 %4744, 3
  %4749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4750 = extractvalue %dx.types.CBufRet.f32 %4749, 0
  %4751 = extractvalue %dx.types.CBufRet.f32 %4749, 1
  %4752 = extractvalue %dx.types.CBufRet.f32 %4749, 2
  %4753 = extractvalue %dx.types.CBufRet.f32 %4749, 3
  %4754 = fmul fast float %4740, %143
  %4755 = call float @dx.op.tertiary.f32(i32 46, float %144, float %4741, float %4754)  ; FMad(a,b,c)
  %4756 = call float @dx.op.tertiary.f32(i32 46, float %145, float %4742, float %4755)  ; FMad(a,b,c)
  %4757 = fadd fast float %4756, %4743
  %4758 = fmul fast float %4745, %143
  %4759 = call float @dx.op.tertiary.f32(i32 46, float %144, float %4746, float %4758)  ; FMad(a,b,c)
  %4760 = call float @dx.op.tertiary.f32(i32 46, float %145, float %4747, float %4759)  ; FMad(a,b,c)
  %4761 = fadd fast float %4760, %4748
  %4762 = fmul fast float %4750, %143
  %4763 = call float @dx.op.tertiary.f32(i32 46, float %144, float %4751, float %4762)  ; FMad(a,b,c)
  %4764 = call float @dx.op.tertiary.f32(i32 46, float %145, float %4752, float %4763)  ; FMad(a,b,c)
  %4765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4766 = extractvalue %dx.types.CBufRet.f32 %4765, 0
  %4767 = extractvalue %dx.types.CBufRet.f32 %4765, 1
  %4768 = extractvalue %dx.types.CBufRet.f32 %4765, 3
  %4769 = fmul fast float %4768, %4757
  %4770 = fmul fast float %4768, %4761
  %4771 = fadd fast float %4769, %4766
  %4772 = fadd fast float %4770, %4767
  %4773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.f32 %4773, 0
  %4775 = extractvalue %dx.types.CBufRet.f32 %4773, 1
  %4776 = fsub fast float %4771, %4774
  %4777 = fsub fast float %4772, %4775
  %4778 = fcmp fast olt float %4776, 0.000000e+00
  %4779 = fcmp fast olt float %4777, 0.000000e+00
  %4780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4781 = extractvalue %dx.types.CBufRet.f32 %4780, 0
  %4782 = extractvalue %dx.types.CBufRet.f32 %4780, 1
  %4783 = extractvalue %dx.types.CBufRet.f32 %4780, 2
  %4784 = extractvalue %dx.types.CBufRet.f32 %4780, 3
  %4785 = select i1 %4778, float %4781, float %4783
  %4786 = select i1 %4779, float %4782, float %4784
  %4787 = fmul fast float %4785, %4776
  %4788 = fmul fast float %4786, %4777
  %4789 = call float @dx.op.unary.f32(i32 6, float %4787)  ; FAbs(value)
  %4790 = call float @dx.op.unary.f32(i32 6, float %4788)  ; FAbs(value)
  %4791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4792 = extractvalue %dx.types.CBufRet.f32 %4791, 0
  %4793 = call float @dx.op.binary.f32(i32 35, float %4789, float %4790)  ; FMax(a,b)
  %4794 = fsub fast float %4792, %4793
  %4795 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  %4796 = fcmp fast ogt float %4795, 0.000000e+00
  br i1 %4796, label %4797, label %4838, !dx.controlflow.hints !147

; <label>:4797                                    ; preds = %4738
  %4798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %57, float %4771, float %4772, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4799 = extractvalue %dx.types.ResRet.f32 %4798, 1
  %4800 = fcmp fast ogt float %4799, 0.000000e+00
  br i1 %4800, label %4801, label %4833

; <label>:4801                                    ; preds = %4797
  %4802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %57, float %4771, float %4772, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4803 = extractvalue %dx.types.ResRet.f32 %4802, 0
  %4804 = extractvalue %dx.types.ResRet.f32 %4802, 1
  %4805 = extractvalue %dx.types.ResRet.f32 %4802, 2
  %4806 = extractvalue %dx.types.ResRet.f32 %4802, 3
  %4807 = fsub fast float 1.000000e+00, %4753
  %4808 = fsub fast float %4807, %4764
  %4809 = fmul fast float %4808, 0x400921FB60000000
  %4810 = fadd fast float %4809, 0x3FF921FB60000000
  %4811 = call float @dx.op.unary.f32(i32 13, float %4810)  ; Sin(value)
  %4812 = fadd fast float %4811, -1.000000e+00
  %4813 = fmul fast float %4812, 0x3FD45F3060000000
  %4814 = fmul fast float %4808, 0x401921FB60000000
  %4815 = fadd fast float %4814, 0x400921FB60000000
  %4816 = call float @dx.op.unary.f32(i32 13, float %4815)  ; Sin(value)
  %4817 = fadd fast float %4816, 0x3E7777A5C0000000
  %4818 = fmul fast float %4817, 0x3FC45F3060000000
  %4819 = fmul fast float %4808, 0x4022D97C80000000
  %4820 = fadd fast float %4819, 0x4012D97C80000000
  %4821 = call float @dx.op.unary.f32(i32 13, float %4820)  ; Sin(value)
  %4822 = fadd fast float %4821, 1.000000e+00
  %4823 = fmul fast float %4822, 0x3FBB2995E0000000
  %4824 = fmul fast float %4808, 0x402921FB60000000
  %4825 = fadd fast float %4824, 0x401921FB60000000
  %4826 = call float @dx.op.unary.f32(i32 13, float %4825)  ; Sin(value)
  %4827 = fadd fast float %4826, 0xBE8777A5C0000000
  %4828 = fmul fast float %4827, 0x3FB45F3060000000
  %4829 = call float @dx.op.dot4.f32(i32 56, float %4803, float %4804, float %4805, float %4806, float %4813, float %4818, float %4823, float %4828)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4830 = fmul fast float %4829, 0xBFF7154760000000
  %4831 = call float @dx.op.unary.f32(i32 21, float %4830)  ; Exp(value)
  %4832 = call float @dx.op.unary.f32(i32 7, float %4831)  ; Saturate(value)
  br label %4833

; <label>:4833                                    ; preds = %4801, %4797
  %4834 = phi float [ %4832, %4801 ], [ 1.000000e+00, %4797 ]
  %4835 = fadd fast float %4834, -1.000000e+00
  %4836 = fmul fast float %4835, %4795
  %4837 = fadd fast float %4836, 1.000000e+00
  br label %4838

; <label>:4838                                    ; preds = %4833, %4738
  %4839 = phi float [ %4837, %4833 ], [ 1.000000e+00, %4738 ]
  %4840 = fmul fast float %4839, %4734
  %4841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4842 = extractvalue %dx.types.CBufRet.f32 %4841, 0
  %4843 = extractvalue %dx.types.CBufRet.f32 %4841, 1
  %4844 = extractvalue %dx.types.CBufRet.f32 %4841, 2
  %4845 = fadd fast float %4842, %143
  %4846 = fadd fast float %4843, %144
  %4847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.f32 %4847, 1
  %4849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4850 = extractvalue %dx.types.CBufRet.f32 %4849, 0
  %4851 = extractvalue %dx.types.CBufRet.f32 %4849, 1
  %4852 = extractvalue %dx.types.CBufRet.f32 %4849, 2
  %4853 = fsub fast float -0.000000e+00, %4845
  %4854 = fsub fast float -0.000000e+00, %4846
  %4855 = fsub fast float %1728, %4844
  %4856 = fadd fast float %4855, %4848
  %4857 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4853, float %4854, float %4856)  ; Dot3(ax,ay,az,bx,by,bz)
  %4858 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4850, float %4851, float %4852)  ; Dot3(ax,ay,az,bx,by,bz)
  %4859 = fdiv fast float 1.000000e+00, %4858
  %4860 = fmul fast float %4859, %4857
  %4861 = fmul fast float %4850, %4860
  %4862 = fmul fast float %4851, %4860
  %4863 = fadd fast float %4861, %4845
  %4864 = fadd fast float %4862, %4846
  %4865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4866 = extractvalue %dx.types.CBufRet.f32 %4865, 0
  %4867 = extractvalue %dx.types.CBufRet.f32 %4865, 1
  %4868 = fsub fast float %4863, %4866
  %4869 = fsub fast float %4864, %4867
  %4870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4871 = extractvalue %dx.types.CBufRet.f32 %4870, 2
  %4872 = extractvalue %dx.types.CBufRet.f32 %4870, 3
  %4873 = fmul fast float %4868, %4871
  %4874 = fmul fast float %4869, %4872
  %4875 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4876 = extractvalue %dx.types.CBufRet.i32 %4875, 3
  %4877 = icmp eq i32 %4876, 0
  br i1 %4877, label %4883, label %4878

; <label>:4878                                    ; preds = %4838
  %4879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %56, float %4873, float %4874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4880 = extractvalue %dx.types.ResRet.f32 %4879, 0
  %4881 = extractvalue %dx.types.ResRet.f32 %4879, 1
  %4882 = extractvalue %dx.types.ResRet.f32 %4879, 2
  br label %4888

; <label>:4883                                    ; preds = %4838
  %4884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %57, float %4873, float %4874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4885 = extractvalue %dx.types.ResRet.f32 %4884, 0
  %4886 = extractvalue %dx.types.ResRet.f32 %4884, 1
  %4887 = extractvalue %dx.types.ResRet.f32 %4884, 2
  br label %4888

; <label>:4888                                    ; preds = %4883, %4878
  %4889 = phi float [ %4880, %4878 ], [ %4885, %4883 ]
  %4890 = phi float [ %4881, %4878 ], [ %4886, %4883 ]
  %4891 = phi float [ %4882, %4878 ], [ %4887, %4883 ]
  %4892 = extractvalue %dx.types.CBufRet.f32 %4847, 2
  %4893 = fmul fast float %4892, %4889
  %4894 = extractvalue %dx.types.CBufRet.f32 %4847, 0
  %4895 = fsub fast float %4860, %4894
  %4896 = fsub fast float %4895, %4893
  %4897 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4896)  ; FMax(a,b)
  %4898 = fmul fast float %4897, %4890
  %4899 = call float @dx.op.binary.f32(i32 36, float %4891, float %4898)  ; FMin(a,b)
  %4900 = fmul fast float %4899, 0xBFF7154760000000
  %4901 = call float @dx.op.unary.f32(i32 21, float %4900)  ; Exp(value)
  %4902 = fmul fast float %4840, %4901
  br label %4903

; <label>:4903                                    ; preds = %4888, %4733
  %4904 = phi float [ %4902, %4888 ], [ %4734, %4733 ]
  %4905 = call float @dx.op.binary.f32(i32 36, float %4904, float %4904)  ; FMin(a,b)
  %4906 = call float @dx.op.binary.f32(i32 36, float %4904, float %4905)  ; FMin(a,b)
  %4907 = fcmp fast ogt float %4906, 0.000000e+00
  br i1 %4907, label %4908, label %5088, !dx.controlflow.hints !148

; <label>:4908                                    ; preds = %4903
  %4909 = bitcast i32 %1745 to float
  %4910 = fmul fast float %4904, %3355
  %4911 = fmul fast float %4904, %3356
  %4912 = fmul fast float %4904, %3357
  %4913 = fsub fast float %3344, %1617
  %4914 = fsub fast float %3345, %1618
  %4915 = fsub fast float %3346, %1619
  %4916 = call float @dx.op.dot3.f32(i32 55, float %4913, float %4914, float %4915, float %4913, float %4914, float %4915)  ; Dot3(ax,ay,az,bx,by,bz)
  %4917 = call float @dx.op.unary.f32(i32 25, float %4916)  ; Rsqrt(value)
  %4918 = fmul fast float %4917, %4913
  %4919 = fmul fast float %4917, %4914
  %4920 = fmul fast float %4917, %4915
  %4921 = call float @dx.op.dot3.f32(i32 55, float %3344, float %3345, float %3346, float %1589, float %1590, float %1591)  ; Dot3(ax,ay,az,bx,by,bz)
  %4922 = call float @dx.op.dot3.f32(i32 55, float %1729, float %1730, float %1731, float %4918, float %4919, float %4920)  ; Dot3(ax,ay,az,bx,by,bz)
  %4923 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4924 = fmul fast float %4923, %4923
  %4925 = fmul fast float %4924, %4909
  %4926 = call float @dx.op.unary.f32(i32 7, float %4925)  ; Saturate(value)
  %4927 = fmul fast float %4926, %4923
  %4928 = call float @dx.op.dot3.f32(i32 55, float %1589, float %1590, float %1591, float %4918, float %4919, float %4920)  ; Dot3(ax,ay,az,bx,by,bz)
  %4929 = fmul fast float %4928, %4928
  %4930 = call float @dx.op.unary.f32(i32 6, float %4921)  ; FAbs(value)
  %4931 = fsub fast float 1.000000e+00, %1673
  %4932 = call float @dx.op.binary.f32(i32 35, float %4931, float 0x3F847AE140000000)  ; FMax(a,b)
  %4933 = fmul fast float %4932, %4932
  %4934 = fmul fast float %4933, %4933
  %4935 = fsub fast float 1.000000e+00, %4934
  %4936 = fmul fast float %1734, %1734
  %4937 = fmul fast float %4936, %4935
  %4938 = fadd fast float %4937, %4934
  %4939 = bitcast float %4938 to i32
  %4940 = ashr i32 %4939, 1
  %4941 = add nsw i32 %4940, 532487669
  %4942 = bitcast i32 %4941 to float
  %4943 = fadd fast float %4942, %1734
  %4944 = fmul fast float %4934, %4929
  %4945 = fsub fast float 1.000000e+00, %4929
  %4946 = fadd fast float %4945, %4944
  %4947 = fmul fast float %4930, %4930
  %4948 = fmul fast float %4947, %4935
  %4949 = fadd fast float %4948, %4934
  %4950 = bitcast float %4949 to i32
  %4951 = ashr i32 %4950, 1
  %4952 = add nsw i32 %4951, 532487669
  %4953 = bitcast i32 %4952 to float
  %4954 = fadd fast float %4953, %4930
  %4955 = fmul fast float %4946, %4946
  %4956 = fmul fast float %4955, %4943
  %4957 = fmul fast float %4956, %4954
  %4958 = fdiv fast float 0x3FF0A00000000000, %4957
  %4959 = fmul fast float %4958, %4934
  %4960 = call float @dx.op.unary.f32(i32 6, float %4922)  ; FAbs(value)
  %4961 = fsub fast float 1.000000e+00, %4960
  %4962 = bitcast float %4961 to i32
  %4963 = sitofp i32 %4962 to float
  %4964 = fmul fast float %4963, 5.000000e+00
  %4965 = fadd fast float %4964, 0xC1EFBF8940000000
  %4966 = fptosi float %4965 to i32
  %4967 = bitcast i32 %4966 to float
  %4968 = fmul fast float %4967, %2560
  %4969 = fmul fast float %4967, %2561
  %4970 = fmul fast float %4967, %2562
  %4971 = fadd fast float %4968, %1610
  %4972 = fadd fast float %4969, %1611
  %4973 = fadd fast float %4970, %1732
  %4974 = select i1 %2573, float %4960, float 0.000000e+00
  %4975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %57, float %2570, float %4974, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4976 = extractvalue %dx.types.ResRet.f32 %4975, 0
  %4977 = extractvalue %dx.types.ResRet.f32 %4975, 1
  %4978 = extractvalue %dx.types.ResRet.f32 %4975, 2
  %4979 = fadd fast float %4976, -5.000000e-01
  %4980 = fadd fast float %4977, -5.000000e-01
  %4981 = fadd fast float %4978, -5.000000e-01
  %4982 = fmul fast float %2585, %4979
  %4983 = fmul fast float %2589, %4980
  %4984 = fmul fast float %2593, %4981
  %4985 = fadd fast float %4971, %4982
  %4986 = fadd fast float %4972, %4983
  %4987 = fadd fast float %4973, %4984
  %4988 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4989 = call float @dx.op.unary.f32(i32 7, float %4986)  ; Saturate(value)
  %4990 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4991 = fmul fast float %4921, 9.843750e-01
  %4992 = fmul fast float %1673, 9.843750e-01
  %4993 = fadd fast float %4991, 7.812500e-03
  %4994 = fadd fast float %4992, 7.812500e-03
  %4995 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %57, float %4993, float %4994, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4996 = extractvalue %dx.types.ResRet.f32 %4995, 2
  %4997 = extractvalue %dx.types.ResRet.f32 %4995, 3
  %4998 = select i1 %2573, float %4921, float 0.000000e+00
  %4999 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %57, float %2570, float %4998, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5000 = extractvalue %dx.types.ResRet.f32 %4999, 0
  %5001 = extractvalue %dx.types.ResRet.f32 %4999, 1
  %5002 = extractvalue %dx.types.ResRet.f32 %4999, 2
  %5003 = fadd fast float %5000, -5.000000e-01
  %5004 = fadd fast float %5001, -5.000000e-01
  %5005 = fadd fast float %5002, -5.000000e-01
  %5006 = fmul fast float %2560, 4.000000e+00
  %5007 = fmul fast float %5006, %2572
  %5008 = fmul fast float %5007, %5003
  %5009 = fmul fast float %2561, 4.000000e+00
  %5010 = fmul fast float %5009, %2572
  %5011 = fmul fast float %5010, %5004
  %5012 = fmul fast float %2562, 4.000000e+00
  %5013 = fmul fast float %5012, %2572
  %5014 = fmul fast float %5013, %5005
  %5015 = fadd fast float %5008, %4996
  %5016 = fmul fast float %5015, %1610
  %5017 = fadd fast float %5016, %4997
  %5018 = fadd fast float %5011, %4996
  %5019 = fmul fast float %5018, %1611
  %5020 = fadd fast float %5019, %4997
  %5021 = fadd fast float %5014, %4996
  %5022 = fmul fast float %5021, %1732
  %5023 = fadd fast float %5022, %4997
  %5024 = call float @dx.op.unary.f32(i32 7, float %5017)  ; Saturate(value)
  %5025 = call float @dx.op.unary.f32(i32 7, float %5020)  ; Saturate(value)
  %5026 = call float @dx.op.unary.f32(i32 7, float %5023)  ; Saturate(value)
  %5027 = call float @dx.op.binary.f32(i32 35, float %5025, float %5026)  ; FMax(a,b)
  %5028 = call float @dx.op.binary.f32(i32 35, float %5024, float %5027)  ; FMax(a,b)
  %5029 = fsub fast float 1.000000e+00, %5028
  %5030 = fsub fast float -0.000000e+00, %1589
  %5031 = fsub fast float -0.000000e+00, %1590
  %5032 = fsub fast float -0.000000e+00, %1591
  %5033 = call float @dx.op.dot3.f32(i32 55, float %3344, float %3345, float %3346, float %5030, float %5031, float %5032)  ; Dot3(ax,ay,az,bx,by,bz)
  %5034 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5035 = fmul fast float %5034, 9.843750e-01
  %5036 = fadd fast float %5035, 7.812500e-03
  %5037 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %57, float %5036, float %4994, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5038 = extractvalue %dx.types.ResRet.f32 %5037, 2
  %5039 = extractvalue %dx.types.ResRet.f32 %5037, 3
  %5040 = select i1 %2573, float %5034, float 0.000000e+00
  %5041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %57, float %2570, float %5040, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5042 = extractvalue %dx.types.ResRet.f32 %5041, 0
  %5043 = extractvalue %dx.types.ResRet.f32 %5041, 1
  %5044 = extractvalue %dx.types.ResRet.f32 %5041, 2
  %5045 = fadd fast float %5042, -5.000000e-01
  %5046 = fadd fast float %5043, -5.000000e-01
  %5047 = fadd fast float %5044, -5.000000e-01
  %5048 = fmul fast float %5007, %5045
  %5049 = fmul fast float %5010, %5046
  %5050 = fmul fast float %5013, %5047
  %5051 = fadd fast float %5048, %5038
  %5052 = fmul fast float %5051, %1610
  %5053 = fadd fast float %5052, %5039
  %5054 = fadd fast float %5049, %5038
  %5055 = fmul fast float %5054, %1611
  %5056 = fadd fast float %5055, %5039
  %5057 = fadd fast float %5050, %5038
  %5058 = fmul fast float %5057, %1732
  %5059 = fadd fast float %5058, %5039
  %5060 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  %5061 = call float @dx.op.unary.f32(i32 7, float %5056)  ; Saturate(value)
  %5062 = call float @dx.op.unary.f32(i32 7, float %5059)  ; Saturate(value)
  %5063 = call float @dx.op.binary.f32(i32 35, float %5061, float %5062)  ; FMax(a,b)
  %5064 = call float @dx.op.binary.f32(i32 35, float %5060, float %5063)  ; FMax(a,b)
  %5065 = fsub fast float 1.000000e+00, %5064
  %5066 = fmul fast float %5065, %5034
  %5067 = fmul fast float %5066, %1676
  %5068 = fmul fast float %5029, %4927
  %5069 = fadd fast float %5067, %5068
  %5070 = fmul fast float %5069, %4910
  %5071 = fmul fast float %5069, %4911
  %5072 = fmul fast float %5069, %4912
  %5073 = fadd fast float %5070, %3331
  %5074 = fadd fast float %5071, %3332
  %5075 = fadd fast float %5072, %3333
  %5076 = fmul fast float %4927, %4910
  %5077 = fmul fast float %5076, %4959
  %5078 = fmul fast float %5077, %4988
  %5079 = fmul fast float %4927, %4911
  %5080 = fmul fast float %5079, %4959
  %5081 = fmul fast float %5080, %4989
  %5082 = fmul fast float %4927, %4912
  %5083 = fmul fast float %5082, %4959
  %5084 = fmul fast float %5083, %4990
  %5085 = fadd fast float %5078, %3337
  %5086 = fadd fast float %5081, %3338
  %5087 = fadd fast float %5084, %3339
  br label %5088

; <label>:5088                                    ; preds = %4908, %4903, %3326
  %5089 = phi float [ %4904, %4908 ], [ 0.000000e+00, %3326 ], [ 0.000000e+00, %4903 ]
  %5090 = phi float [ %5085, %4908 ], [ %3337, %3326 ], [ %3337, %4903 ]
  %5091 = phi float [ %5086, %4908 ], [ %3338, %3326 ], [ %3338, %4903 ]
  %5092 = phi float [ %5087, %4908 ], [ %3339, %3326 ], [ %3339, %4903 ]
  %5093 = phi float [ %5073, %4908 ], [ %3331, %3326 ], [ %3331, %4903 ]
  %5094 = phi float [ %5074, %4908 ], [ %3332, %3326 ], [ %3332, %4903 ]
  %5095 = phi float [ %5075, %4908 ], [ %3333, %3326 ], [ %3333, %4903 ]
  %5096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5097 = extractvalue %dx.types.CBufRet.i32 %5096, 0
  %5098 = icmp eq i32 %5097, 0
  br i1 %5098, label %5812, label %5099

; <label>:5099                                    ; preds = %5088
  %5100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5101 = extractvalue %dx.types.CBufRet.f32 %5100, 2
  %5102 = extractvalue %dx.types.CBufRet.f32 %5100, 3
  %5103 = fmul fast float %5101, %88
  %5104 = fmul fast float %5102, %89
  %5105 = fptoui float %5103 to i32
  %5106 = fptoui float %5104 to i32
  %5107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5108 = extractvalue %dx.types.CBufRet.f32 %5107, 0
  %5109 = extractvalue %dx.types.CBufRet.f32 %5107, 2
  %5110 = extractvalue %dx.types.CBufRet.f32 %5107, 3
  %5111 = fadd fast float %77, -4.000000e+00
  %5112 = call float @dx.op.binary.f32(i32 35, float %5111, float 0.000000e+00)  ; FMax(a,b)
  %5113 = fadd fast float %5112, %5108
  %5114 = fmul fast float %5113, %5109
  %5115 = call float @dx.op.unary.f32(i32 23, float %5114)  ; Log(value)
  %5116 = fmul fast float %5115, %5110
  %5117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5118 = extractvalue %dx.types.CBufRet.f32 %5117, 2
  %5119 = fmul fast float %5116, %5118
  %5120 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5122 = extractvalue %dx.types.CBufRet.i32 %5121, 1
  %5123 = add i32 %5122, -1
  %5124 = uitofp i32 %5122 to float
  %5125 = fmul fast float %5124, %5120
  %5126 = fptoui float %5125 to i32
  %5127 = call i32 @dx.op.binary.i32(i32 40, i32 %5126, i32 %5123)  ; UMin(a,b)
  %5128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5129 = extractvalue %dx.types.CBufRet.i32 %5128, 2
  %5130 = extractvalue %dx.types.CBufRet.i32 %5128, 3
  %5131 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5106, i32 %5129, i32 %5105)  ; UMad(a,b,c)
  %5132 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5127, i32 %5130, i32 %5131)  ; UMad(a,b,c)
  %5133 = add nsw i32 %5097, -1
  %5134 = call i32 @dx.op.binary.i32(i32 37, i32 %5133, i32 0)  ; IMax(a,b)
  %5135 = call float @dx.op.binary.f32(i32 35, float %77, float 0.000000e+00)  ; FMax(a,b)
  %5136 = fptoui float %5135 to i32
  %5137 = lshr i32 %5136, 5
  %5138 = call i32 @dx.op.binary.i32(i32 40, i32 %5137, i32 8191)  ; UMin(a,b)
  %5139 = shl i32 %5138, 2
  %5140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5139, i32 undef)  ; BufferLoad(srv,index,wot)
  %5141 = extractvalue %dx.types.ResRet.i32 %5140, 0
  %5142 = lshr i32 %5141, 16
  %5143 = and i32 %5141, 65535
  %5144 = lshr i32 %5141, 21
  %5145 = lshr i32 %5143, 5
  %5146 = call i32 @dx.op.binary.i32(i32 40, i32 %5145, i32 %5134)  ; UMin(a,b)
  %5147 = icmp ugt i32 %5144, %5146
  br i1 %5147, label %5812, label %5148

; <label>:5148                                    ; preds = %5099
  br label %5149

; <label>:5149                                    ; preds = %5802, %5148
  %5150 = phi i32 [ %5809, %5802 ], [ %5144, %5148 ]
  %5151 = phi float [ %5803, %5802 ], [ %5090, %5148 ]
  %5152 = phi float [ %5804, %5802 ], [ %5091, %5148 ]
  %5153 = phi float [ %5805, %5802 ], [ %5092, %5148 ]
  %5154 = phi float [ %5806, %5802 ], [ %5093, %5148 ]
  %5155 = phi float [ %5807, %5802 ], [ %5094, %5148 ]
  %5156 = phi float [ %5808, %5802 ], [ %5095, %5148 ]
  %5157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5158 = extractvalue %dx.types.CBufRet.i32 %5157, 0
  %5159 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5132, i32 %5158, i32 %5150)  ; UMad(a,b,c)
  %5160 = shl i32 %5159, 2
  %5161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5160, i32 undef)  ; BufferLoad(srv,index,wot)
  %5162 = extractvalue %dx.types.ResRet.i32 %5161, 0
  %5163 = shl i32 %5150, 5
  %5164 = sub nsw i32 %5142, %5163
  %5165 = call i32 @dx.op.binary.i32(i32 37, i32 %5164, i32 0)  ; IMax(a,b)
  %5166 = call i32 @dx.op.binary.i32(i32 38, i32 %5165, i32 31)  ; IMin(a,b)
  %5167 = sub nsw i32 1, %5142
  %5168 = add nsw i32 %5167, %5143
  %5169 = call i32 @dx.op.binary.i32(i32 37, i32 %5168, i32 0)  ; IMax(a,b)
  %5170 = call i32 @dx.op.binary.i32(i32 38, i32 %5169, i32 32)  ; IMin(a,b)
  %5171 = and i32 %5170, 31
  %5172 = shl i32 -1, %5171
  %5173 = xor i32 %5172, -1
  %5174 = and i32 %5166, 31
  %5175 = shl i32 %5173, %5174
  %5176 = icmp eq i32 %5170, 32
  %5177 = select i1 %5176, i32 -1, i32 %5175
  %5178 = and i32 %5177, %5162
  %5179 = icmp eq i32 %5178, 0
  br i1 %5179, label %5802, label %5180

; <label>:5180                                    ; preds = %5149
  br label %5181

; <label>:5181                                    ; preds = %5337, %5180
  %5182 = phi i32 [ %5193, %5337 ], [ %5178, %5180 ]
  %5183 = phi float [ %5338, %5337 ], [ %5151, %5180 ]
  %5184 = phi float [ %5339, %5337 ], [ %5152, %5180 ]
  %5185 = phi float [ %5340, %5337 ], [ %5153, %5180 ]
  %5186 = phi float [ %5341, %5337 ], [ %5154, %5180 ]
  %5187 = phi float [ %5342, %5337 ], [ %5155, %5180 ]
  %5188 = phi float [ %5343, %5337 ], [ %5156, %5180 ]
  %5189 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5182)  ; FirstbitLo(value)
  %5190 = add i32 %5189, %5163
  %5191 = and i32 %5189, 31
  %5192 = shl i32 1, %5191
  %5193 = xor i32 %5192, %5182
  %5194 = mul i32 %5190, 112
  %5195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5194, i32 undef)  ; BufferLoad(srv,index,wot)
  %5196 = extractvalue %dx.types.ResRet.f32 %5195, 0
  %5197 = extractvalue %dx.types.ResRet.f32 %5195, 1
  %5198 = extractvalue %dx.types.ResRet.f32 %5195, 2
  %5199 = or i32 %5194, 12
  %5200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5199, i32 undef)  ; BufferLoad(srv,index,wot)
  %5201 = extractvalue %dx.types.ResRet.f32 %5200, 0
  %5202 = add i32 %5194, 16
  %5203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5202, i32 undef)  ; BufferLoad(srv,index,wot)
  %5204 = extractvalue %dx.types.ResRet.f32 %5203, 0
  %5205 = extractvalue %dx.types.ResRet.f32 %5203, 1
  %5206 = extractvalue %dx.types.ResRet.f32 %5203, 2
  %5207 = add i32 %5194, 28
  %5208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5207, i32 undef)  ; BufferLoad(srv,index,wot)
  %5209 = extractvalue %dx.types.ResRet.i32 %5208, 0
  %5210 = add i32 %5194, 32
  %5211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5210, i32 undef)  ; BufferLoad(srv,index,wot)
  %5212 = extractvalue %dx.types.ResRet.f32 %5211, 0
  %5213 = extractvalue %dx.types.ResRet.f32 %5211, 1
  %5214 = extractvalue %dx.types.ResRet.f32 %5211, 2
  %5215 = add i32 %5194, 44
  %5216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5215, i32 undef)  ; BufferLoad(srv,index,wot)
  %5217 = extractvalue %dx.types.ResRet.f32 %5216, 0
  %5218 = add i32 %5194, 48
  %5219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5218, i32 undef)  ; BufferLoad(srv,index,wot)
  %5220 = extractvalue %dx.types.ResRet.f32 %5219, 0
  %5221 = extractvalue %dx.types.ResRet.f32 %5219, 1
  %5222 = extractvalue %dx.types.ResRet.f32 %5219, 2
  %5223 = extractvalue %dx.types.ResRet.f32 %5219, 3
  %5224 = add i32 %5194, 64
  %5225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5224, i32 undef)  ; BufferLoad(srv,index,wot)
  %5226 = extractvalue %dx.types.ResRet.f32 %5225, 0
  %5227 = extractvalue %dx.types.ResRet.f32 %5225, 1
  %5228 = extractvalue %dx.types.ResRet.f32 %5225, 2
  %5229 = extractvalue %dx.types.ResRet.f32 %5225, 3
  %5230 = add i32 %5194, 80
  %5231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5230, i32 undef)  ; BufferLoad(srv,index,wot)
  %5232 = extractvalue %dx.types.ResRet.f32 %5231, 1
  %5233 = extractvalue %dx.types.ResRet.f32 %5231, 2
  %5234 = add i32 %5194, 92
  %5235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5234, i32 undef)  ; BufferLoad(srv,index,wot)
  %5236 = extractvalue %dx.types.ResRet.i32 %5235, 0
  %5237 = call float @dx.op.dot3.f32(i32 55, float %5196, float %5197, float %5198, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5238 = select i1 %1727, float %5232, float %5196
  %5239 = select i1 %1727, float %5237, float %5197
  %5240 = select i1 %1727, float %5233, float %5198
  %5241 = and i32 %5236, 65535
  %5242 = uitofp i32 %5241 to float
  %5243 = lshr i32 %5236, 16
  %5244 = uitofp i32 %5243 to float
  %5245 = and i32 %5209, 65535
  %5246 = and i32 %5209, 50331648
  %5247 = icmp eq i32 %5246, 33554432
  %5248 = call float @dx.op.dot3.f32(i32 55, float %5212, float %5213, float %5214, float %5212, float %5213, float %5214)  ; Dot3(ax,ay,az,bx,by,bz)
  %5249 = fsub fast float %143, %5220
  %5250 = fsub fast float %144, %5221
  %5251 = fsub fast float %145, %5222
  %5252 = call float @dx.op.dot3.f32(i32 55, float %5249, float %5250, float %5251, float %5212, float %5213, float %5214)  ; Dot3(ax,ay,az,bx,by,bz)
  %5253 = fdiv fast float %5252, %5248
  %5254 = call float @dx.op.binary.f32(i32 35, float %5253, float -1.000000e+00)  ; FMax(a,b)
  %5255 = call float @dx.op.binary.f32(i32 36, float %5254, float 1.000000e+00)  ; FMin(a,b)
  %5256 = fmul fast float %5255, %5212
  %5257 = fmul fast float %5255, %5213
  %5258 = fmul fast float %5255, %5214
  %5259 = fadd fast float %5256, %5220
  %5260 = fadd fast float %5257, %5221
  %5261 = fadd fast float %5258, %5222
  %5262 = fsub fast float %5259, %143
  %5263 = fsub fast float %5260, %144
  %5264 = fsub fast float %5261, %145
  %5265 = call float @dx.op.dot3.f32(i32 55, float %5262, float %5263, float %5264, float %5262, float %5263, float %5264)  ; Dot3(ax,ay,az,bx,by,bz)
  %5266 = call float @dx.op.unary.f32(i32 24, float %5265)  ; Sqrt(value)
  %5267 = fdiv fast float 1.000000e+00, %5266
  %5268 = fmul fast float %5262, %5267
  %5269 = fmul fast float %5263, %5267
  %5270 = fmul fast float %5264, %5267
  %5271 = fadd fast float %5266, %5201
  %5272 = fdiv fast float 1.000000e+00, %5271
  %5273 = fmul float %5217, %5272
  %5274 = fmul float %5273, %5273
  %5275 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  br i1 %5247, label %5276, label %5300

; <label>:5276                                    ; preds = %5181
  %5277 = fmul fast float %5228, %5204
  %5278 = fmul fast float %5228, %5205
  %5279 = fmul fast float %5228, %5206
  %5280 = fsub fast float %5277, %143
  %5281 = fadd fast float %5280, %5259
  %5282 = fsub fast float %5278, %144
  %5283 = fadd fast float %5282, %5260
  %5284 = fsub fast float %5279, %145
  %5285 = fadd fast float %5284, %5261
  %5286 = call float @dx.op.dot3.f32(i32 55, float %5281, float %5283, float %5285, float %5281, float %5283, float %5285)  ; Dot3(ax,ay,az,bx,by,bz)
  %5287 = call float @dx.op.unary.f32(i32 25, float %5286)  ; Rsqrt(value)
  %5288 = fmul fast float %5287, %5281
  %5289 = fmul fast float %5287, %5283
  %5290 = fmul fast float %5287, %5285
  %5291 = fsub fast float %143, %5259
  %5292 = fsub fast float %144, %5260
  %5293 = fsub fast float %145, %5261
  %5294 = fsub fast float -0.000000e+00, %5291
  %5295 = fsub fast float -0.000000e+00, %5292
  %5296 = fsub fast float -0.000000e+00, %5293
  %5297 = call float @dx.op.dot3.f32(i32 55, float %5294, float %5295, float %5296, float %5204, float %5205, float %5206)  ; Dot3(ax,ay,az,bx,by,bz)
  %5298 = fcmp fast ogt float %5297, 0.000000e+00
  %5299 = uitofp i1 %5298 to float
  br label %5300

; <label>:5300                                    ; preds = %5276, %5181
  %5301 = phi float [ %5299, %5276 ], [ 1.000000e+00, %5181 ]
  %5302 = phi float [ %5288, %5276 ], [ %5268, %5181 ]
  %5303 = phi float [ %5289, %5276 ], [ %5269, %5181 ]
  %5304 = phi float [ %5290, %5276 ], [ %5270, %5181 ]
  %5305 = call float @dx.op.dot3.f32(i32 55, float %5204, float %5205, float %5206, float %5302, float %5303, float %5304)  ; Dot3(ax,ay,az,bx,by,bz)
  %5306 = fmul fast float %5305, %5305
  %5307 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  %5308 = fsub fast float 1.000000e+00, %5307
  %5309 = fmul fast float %5308, 5.000000e-01
  %5310 = fcmp fast ogt float %5305, 0.000000e+00
  %5311 = fsub fast float 1.000000e+00, %5309
  %5312 = select i1 %5310, float %5309, float %5311
  %5313 = fmul fast float %5312, %5244
  %5314 = fadd fast float %5313, %5242
  %5315 = fmul fast float %5314, 0x3EF0001000000000
  %5316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %57, float %5315, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5317 = extractvalue %dx.types.ResRet.f32 %5316, 0
  %5318 = fmul fast float %5305, %5226
  %5319 = fadd fast float %5318, %5227
  %5320 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  %5321 = select i1 %5247, float 1.000000e+00, float %5320
  %5322 = select i1 %5247, float %5320, float 1.000000e+00
  %5323 = fmul fast float %5266, %5223
  %5324 = fsub fast float 1.000000e+00, %5323
  %5325 = fmul fast float %5324, %5229
  %5326 = call float @dx.op.unary.f32(i32 7, float %5325)  ; Saturate(value)
  %5327 = fmul fast float %5326, %5322
  %5328 = fmul fast float %5327, 2.000000e+00
  %5329 = fsub fast float 3.000000e+00, %5328
  %5330 = fmul fast float %5317, %5301
  %5331 = fmul fast float %5327, %5327
  %5332 = fmul fast float %5331, %5330
  %5333 = fmul fast float %5332, %5329
  %5334 = call float @dx.op.binary.f32(i32 36, float %5333, float %5333)  ; FMin(a,b)
  %5335 = call float @dx.op.binary.f32(i32 36, float %5333, float %5334)  ; FMin(a,b)
  %5336 = fcmp fast ogt float %5335, 0.000000e+00
  br i1 %5336, label %5345, label %5337, !dx.controlflow.hints !149

; <label>:5337                                    ; preds = %5489, %5484, %5300
  %5338 = phi float [ %5183, %5484 ], [ %5183, %5300 ], [ %5798, %5489 ]
  %5339 = phi float [ %5184, %5484 ], [ %5184, %5300 ], [ %5799, %5489 ]
  %5340 = phi float [ %5185, %5484 ], [ %5185, %5300 ], [ %5800, %5489 ]
  %5341 = phi float [ %5186, %5484 ], [ %5186, %5300 ], [ %5786, %5489 ]
  %5342 = phi float [ %5187, %5484 ], [ %5187, %5300 ], [ %5787, %5489 ]
  %5343 = phi float [ %5188, %5484 ], [ %5188, %5300 ], [ %5788, %5489 ]
  %5344 = icmp eq i32 %5182, %5192
  br i1 %5344, label %5801, label %5181

; <label>:5345                                    ; preds = %5300
  %5346 = icmp eq i32 %5245, 255
  br i1 %5346, label %5484, label %5347, !dx.controlflow.hints !150

; <label>:5347                                    ; preds = %5345
  %5348 = mul nuw nsw i32 %5245, 176
  %5349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5348, i32 undef)  ; BufferLoad(srv,index,wot)
  %5350 = extractvalue %dx.types.ResRet.f32 %5349, 0
  %5351 = extractvalue %dx.types.ResRet.f32 %5349, 1
  %5352 = extractvalue %dx.types.ResRet.f32 %5349, 2
  %5353 = extractvalue %dx.types.ResRet.f32 %5349, 3
  %5354 = add nuw nsw i32 %5348, 16
  %5355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5354, i32 undef)  ; BufferLoad(srv,index,wot)
  %5356 = extractvalue %dx.types.ResRet.f32 %5355, 0
  %5357 = extractvalue %dx.types.ResRet.f32 %5355, 1
  %5358 = add nuw nsw i32 %5348, 32
  %5359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5358, i32 undef)  ; BufferLoad(srv,index,wot)
  %5360 = extractvalue %dx.types.ResRet.f32 %5359, 0
  %5361 = extractvalue %dx.types.ResRet.f32 %5359, 1
  %5362 = add nuw nsw i32 %5348, 48
  %5363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5362, i32 undef)  ; BufferLoad(srv,index,wot)
  %5364 = extractvalue %dx.types.ResRet.f32 %5363, 0
  %5365 = extractvalue %dx.types.ResRet.f32 %5363, 1
  %5366 = extractvalue %dx.types.ResRet.f32 %5363, 2
  %5367 = extractvalue %dx.types.ResRet.f32 %5363, 3
  %5368 = add nuw nsw i32 %5348, 64
  %5369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5368, i32 undef)  ; BufferLoad(srv,index,wot)
  %5370 = extractvalue %dx.types.ResRet.f32 %5369, 0
  %5371 = extractvalue %dx.types.ResRet.f32 %5369, 1
  %5372 = extractvalue %dx.types.ResRet.f32 %5369, 2
  %5373 = extractvalue %dx.types.ResRet.f32 %5369, 3
  %5374 = add nuw nsw i32 %5348, 80
  %5375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5374, i32 undef)  ; BufferLoad(srv,index,wot)
  %5376 = extractvalue %dx.types.ResRet.f32 %5375, 0
  %5377 = extractvalue %dx.types.ResRet.f32 %5375, 1
  %5378 = extractvalue %dx.types.ResRet.f32 %5375, 2
  %5379 = extractvalue %dx.types.ResRet.f32 %5375, 3
  %5380 = add nuw nsw i32 %5348, 96
  %5381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5380, i32 undef)  ; BufferLoad(srv,index,wot)
  %5382 = extractvalue %dx.types.ResRet.f32 %5381, 0
  %5383 = extractvalue %dx.types.ResRet.f32 %5381, 1
  %5384 = extractvalue %dx.types.ResRet.f32 %5381, 2
  %5385 = extractvalue %dx.types.ResRet.f32 %5381, 3
  %5386 = bitcast float %5357 to i32
  %5387 = fmul fast float %5364, %143
  %5388 = call float @dx.op.tertiary.f32(i32 46, float %144, float %5370, float %5387)  ; FMad(a,b,c)
  %5389 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5376, float %5388)  ; FMad(a,b,c)
  %5390 = fadd fast float %5389, %5382
  %5391 = fmul fast float %5365, %143
  %5392 = call float @dx.op.tertiary.f32(i32 46, float %144, float %5371, float %5391)  ; FMad(a,b,c)
  %5393 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5377, float %5392)  ; FMad(a,b,c)
  %5394 = fadd fast float %5393, %5383
  %5395 = fmul fast float %5366, %143
  %5396 = call float @dx.op.tertiary.f32(i32 46, float %144, float %5372, float %5395)  ; FMad(a,b,c)
  %5397 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5378, float %5396)  ; FMad(a,b,c)
  %5398 = fadd fast float %5397, %5384
  %5399 = fmul fast float %5367, %143
  %5400 = call float @dx.op.tertiary.f32(i32 46, float %144, float %5373, float %5399)  ; FMad(a,b,c)
  %5401 = call float @dx.op.tertiary.f32(i32 46, float %145, float %5379, float %5400)  ; FMad(a,b,c)
  %5402 = fadd fast float %5401, %5385
  %5403 = fdiv fast float %5390, %5402
  %5404 = fdiv fast float %5394, %5402
  %5405 = fdiv fast float %5398, %5402
  %5406 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5405)  ; FMax(a,b)
  %5407 = fmul fast float %1071, 0x401921FB60000000
  %5408 = call float @dx.op.unary.f32(i32 13, float %5407)  ; Sin(value)
  %5409 = call float @dx.op.unary.f32(i32 12, float %5407)  ; Cos(value)
  %5410 = fmul fast float %5409, %5361
  %5411 = call float @dx.op.tertiary.f32(i32 46, float %5408, float %5361, float 0.000000e+00)  ; FMad(a,b,c)
  %5412 = fmul fast float %5361, %5408
  %5413 = fsub fast float -0.000000e+00, %5412
  %5414 = call float @dx.op.tertiary.f32(i32 46, float %5409, float %5361, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5415

; <label>:5415                                    ; preds = %5415, %5347
  %5416 = phi float [ 0.000000e+00, %5347 ], [ %5448, %5415 ]
  %5417 = phi float [ 0.000000e+00, %5347 ], [ %5450, %5415 ]
  %5418 = phi i32 [ 0, %5347 ], [ %5451, %5415 ]
  %5419 = mul i32 %5418, 2
  %5420 = add i32 0, %5419
  %5421 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5420
  %5422 = load float, float* %5421, align 4
  %5423 = mul i32 %5418, 2
  %5424 = add i32 1, %5423
  %5425 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5424
  %5426 = load float, float* %5425, align 4
  %5427 = fmul fast float %5410, %5422
  %5428 = call float @dx.op.tertiary.f32(i32 46, float %5426, float %5413, float %5427)  ; FMad(a,b,c)
  %5429 = fmul fast float %5422, %5411
  %5430 = call float @dx.op.tertiary.f32(i32 46, float %5426, float %5414, float %5429)  ; FMad(a,b,c)
  %5431 = fadd fast float %5428, %5403
  %5432 = fadd fast float %5430, %5404
  %5433 = fmul fast float %5431, %5356
  %5434 = fmul fast float %5432, %5356
  %5435 = call float @dx.op.binary.f32(i32 35, float %5433, float %5352)  ; FMax(a,b)
  %5436 = call float @dx.op.binary.f32(i32 35, float %5434, float %5352)  ; FMax(a,b)
  %5437 = call float @dx.op.binary.f32(i32 36, float %5435, float %5353)  ; FMin(a,b)
  %5438 = call float @dx.op.binary.f32(i32 36, float %5436, float %5353)  ; FMin(a,b)
  %5439 = fadd fast float %5437, %5350
  %5440 = fadd fast float %5438, %5351
  %5441 = uitofp i32 %5386 to float
  %5442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %58, float %5439, float %5440, float %5441, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5443 = extractvalue %dx.types.ResRet.f32 %5442, 0
  %5444 = fsub fast float %5443, %5406
  %5445 = fsub fast float %5444, %5360
  %5446 = fcmp fast ogt float %5445, 0.000000e+00
  %5447 = select i1 %5446, float 1.000000e+00, float 0.000000e+00
  %5448 = fadd fast float %5447, %5416
  %5449 = select i1 %5446, float %5445, float 0.000000e+00
  %5450 = fadd fast float %5449, %5417
  %5451 = add nuw nsw i32 %5418, 1
  %5452 = icmp eq i32 %5451, 8
  br i1 %5452, label %5453, label %5415

; <label>:5453                                    ; preds = %5415
  %5454 = fdiv fast float 1.000000e+00, %5448
  %5455 = fmul fast float %5454, %5450
  %5456 = fdiv fast float 1.000000e+00, %5406
  %5457 = fmul fast float %5455, %5456
  %5458 = call float @dx.op.unary.f32(i32 7, float %5457)  ; Saturate(value)
  %5459 = call float @dx.op.binary.f32(i32 35, float %5458, float 0.000000e+00)  ; FMax(a,b)
  %5460 = fmul fast float %5448, 1.250000e-01
  %5461 = call float @dx.op.unary.f32(i32 7, float %5460)  ; Saturate(value)
  %5462 = fmul fast float %5461, 2.000000e+00
  %5463 = fadd fast float %5462, -1.000000e+00
  %5464 = fcmp fast ogt float %5463, 0.000000e+00
  %5465 = fcmp fast olt float %5463, 0.000000e+00
  %5466 = zext i1 %5464 to i32
  %5467 = zext i1 %5465 to i32
  %5468 = sub nsw i32 %5466, %5467
  %5469 = sitofp i32 %5468 to float
  %5470 = fmul fast float %5469, %5463
  %5471 = fsub fast float 1.000000e+00, %5470
  %5472 = fmul fast float %5471, %5471
  %5473 = fmul fast float %5472, %5471
  %5474 = fsub fast float %5471, %5473
  %5475 = fmul fast float %5474, %5459
  %5476 = fsub fast float 1.000000e+00, %5473
  %5477 = fsub fast float %5476, %5475
  %5478 = fmul fast float %5469, 5.000000e-01
  %5479 = fmul fast float %5478, %5477
  %5480 = fsub fast float -5.000000e-01, %5479
  %5481 = fmul fast float %5480, %5321
  %5482 = fadd fast float %5481, 1.000000e+00
  %5483 = fmul fast float %5482, %5333
  br label %5484

; <label>:5484                                    ; preds = %5453, %5345
  %5485 = phi float [ %5483, %5453 ], [ %5333, %5345 ]
  %5486 = call float @dx.op.binary.f32(i32 36, float %5485, float %5485)  ; FMin(a,b)
  %5487 = call float @dx.op.binary.f32(i32 36, float %5485, float %5486)  ; FMin(a,b)
  %5488 = fcmp fast ogt float %5487, 0.000000e+00
  br i1 %5488, label %5489, label %5337, !dx.controlflow.hints !151

; <label>:5489                                    ; preds = %5484
  %5490 = bitcast i32 %1745 to float
  %5491 = fmul fast float %5485, %5238
  %5492 = fmul fast float %5485, %5239
  %5493 = fmul fast float %5485, %5240
  %5494 = fadd fast float %5268, %1589
  %5495 = fadd fast float %5269, %1590
  %5496 = fadd fast float %5270, %1591
  %5497 = call float @dx.op.dot3.f32(i32 55, float %5268, float %5269, float %5270, float %5262, float %5263, float %5264)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = call float @dx.op.dot3.f32(i32 55, float %5268, float %5269, float %5270, float %5494, float %5495, float %5496)  ; Dot3(ax,ay,az,bx,by,bz)
  %5499 = fdiv fast float 1.000000e+00, %5498
  %5500 = fmul fast float %5499, %5497
  %5501 = fmul fast float %5500, %5494
  %5502 = fmul fast float %5500, %5495
  %5503 = fmul fast float %5500, %5496
  %5504 = fadd fast float %5249, %5501
  %5505 = fadd fast float %5250, %5502
  %5506 = fadd fast float %5251, %5503
  %5507 = call float @dx.op.dot3.f32(i32 55, float %5504, float %5505, float %5506, float %5212, float %5213, float %5214)  ; Dot3(ax,ay,az,bx,by,bz)
  %5508 = fdiv fast float %5507, %5248
  %5509 = call float @dx.op.binary.f32(i32 35, float %5508, float -1.000000e+00)  ; FMax(a,b)
  %5510 = call float @dx.op.binary.f32(i32 36, float %5509, float 1.000000e+00)  ; FMin(a,b)
  %5511 = fmul fast float %5510, %5212
  %5512 = fmul fast float %5510, %5213
  %5513 = fmul fast float %5510, %5214
  %5514 = fsub fast float %5220, %143
  %5515 = fadd fast float %5514, %5511
  %5516 = fsub fast float %5221, %144
  %5517 = fadd fast float %5516, %5512
  %5518 = fsub fast float %5222, %145
  %5519 = fadd fast float %5518, %5513
  %5520 = call float @dx.op.dot3.f32(i32 55, float %5515, float %5517, float %5519, float %5515, float %5517, float %5519)  ; Dot3(ax,ay,az,bx,by,bz)
  %5521 = call float @dx.op.unary.f32(i32 25, float %5520)  ; Rsqrt(value)
  %5522 = fmul fast float %5515, %5521
  %5523 = fmul fast float %5517, %5521
  %5524 = fmul fast float %5519, %5521
  %5525 = fsub fast float %5522, %1617
  %5526 = fsub fast float %5523, %1618
  %5527 = fsub fast float %5524, %1619
  %5528 = call float @dx.op.dot3.f32(i32 55, float %5525, float %5526, float %5527, float %5525, float %5526, float %5527)  ; Dot3(ax,ay,az,bx,by,bz)
  %5529 = call float @dx.op.unary.f32(i32 25, float %5528)  ; Rsqrt(value)
  %5530 = fmul fast float %5525, %5529
  %5531 = fmul fast float %5526, %5529
  %5532 = fmul fast float %5527, %5529
  %5533 = call float @dx.op.dot3.f32(i32 55, float %5522, float %5523, float %5524, float %1589, float %1590, float %1591)  ; Dot3(ax,ay,az,bx,by,bz)
  %5534 = call float @dx.op.dot3.f32(i32 55, float %1729, float %1730, float %1731, float %5530, float %5531, float %5532)  ; Dot3(ax,ay,az,bx,by,bz)
  %5535 = fmul fast float %5521, %5217
  %5536 = fmul fast float %5535, %5535
  %5537 = bitcast float %5536 to i32
  %5538 = ashr i32 %5537, 1
  %5539 = sub nsw i32 1597463007, %5538
  %5540 = bitcast i32 %5539 to float
  %5541 = fmul fast float %5540, %5533
  %5542 = fmul fast float %5541, %5541
  %5543 = fsub fast float 1.000000e+00, %5542
  %5544 = fmul fast float %5533, %5536
  %5545 = call float @dx.op.unary.f32(i32 7, float %5544)  ; Saturate(value)
  %5546 = fmul fast float %5541, 5.000000e-01
  %5547 = fadd fast float %5546, 5.000000e-01
  %5548 = fmul fast float %5547, %5536
  %5549 = call float @dx.op.unary.f32(i32 7, float %5548)  ; Saturate(value)
  %5550 = bitcast float %5549 to i32
  %5551 = ashr i32 %5550, 1
  %5552 = add nsw i32 %5551, 532487669
  %5553 = bitcast i32 %5552 to float
  %5554 = fmul fast float %5553, %5549
  %5555 = fcmp fast ogt float %5543, 0.000000e+00
  %5556 = select i1 %5555, float %5554, float %5545
  %5557 = call float @dx.op.unary.f32(i32 7, float %5533)  ; Saturate(value)
  %5558 = fmul fast float %5557, %5557
  %5559 = fmul fast float %5558, %5490
  %5560 = call float @dx.op.unary.f32(i32 7, float %5559)  ; Saturate(value)
  %5561 = fmul fast float %5556, %5560
  %5562 = call float @dx.op.dot3.f32(i32 55, float %5212, float %5213, float %5214, float %1739, float %1740, float %1741)  ; Dot3(ax,ay,az,bx,by,bz)
  %5563 = call float @dx.op.dot3.f32(i32 55, float %5212, float %5213, float %5214, float %5262, float %5263, float %5264)  ; Dot3(ax,ay,az,bx,by,bz)
  %5564 = call float @dx.op.dot3.f32(i32 55, float %1739, float %1740, float %1741, float %5262, float %5263, float %5264)  ; Dot3(ax,ay,az,bx,by,bz)
  %5565 = fmul fast float %5562, %5562
  %5566 = fsub fast float %5248, %5565
  %5567 = fmul fast float %5564, %5562
  %5568 = fsub fast float %5567, %5563
  %5569 = fdiv fast float %5568, %5566
  %5570 = call float @dx.op.binary.f32(i32 35, float %5569, float -1.500000e+00)  ; FMax(a,b)
  %5571 = call float @dx.op.binary.f32(i32 36, float %5570, float 1.500000e+00)  ; FMin(a,b)
  %5572 = fmul fast float %5571, %5571
  %5573 = fmul fast float %5572, 0x3FC2F68380000000
  %5574 = fmul fast float %5573, %5571
  %5575 = fsub fast float %5571, %5574
  %5576 = fmul fast float %5575, %5212
  %5577 = fmul fast float %5575, %5213
  %5578 = fmul fast float %5575, %5214
  %5579 = fadd fast float %5576, %5259
  %5580 = fadd fast float %5577, %5260
  %5581 = fadd fast float %5578, %5261
  %5582 = fsub fast float %5579, %143
  %5583 = fsub fast float %5580, %144
  %5584 = fsub fast float %5581, %145
  %5585 = call float @dx.op.dot3.f32(i32 55, float %5582, float %5583, float %5584, float %1739, float %1740, float %1741)  ; Dot3(ax,ay,az,bx,by,bz)
  %5586 = fmul fast float %5585, %1739
  %5587 = fmul fast float %5585, %1740
  %5588 = fmul fast float %5585, %1741
  %5589 = fsub fast float %5586, %5582
  %5590 = fsub fast float %5587, %5583
  %5591 = fsub fast float %5588, %5584
  %5592 = call float @dx.op.dot3.f32(i32 55, float %5589, float %5590, float %5591, float %5589, float %5590, float %5591)  ; Dot3(ax,ay,az,bx,by,bz)
  %5593 = bitcast float %5592 to i32
  %5594 = ashr i32 %5593, 1
  %5595 = sub nsw i32 1597463007, %5594
  %5596 = bitcast i32 %5595 to float
  %5597 = fmul fast float %5596, %5217
  %5598 = call float @dx.op.dot3.f32(i32 55, float %5582, float %5583, float %5584, float %5582, float %5583, float %5584)  ; Dot3(ax,ay,az,bx,by,bz)
  %5599 = bitcast float %5598 to i32
  %5600 = ashr i32 %5599, 1
  %5601 = sub nsw i32 1597463007, %5600
  %5602 = bitcast i32 %5601 to float
  %5603 = fmul fast float %5597, %5597
  %5604 = fadd fast float %5603, 1.250000e-01
  %5605 = call float @dx.op.unary.f32(i32 25, float %5604)  ; Rsqrt(value)
  %5606 = fmul fast float %5597, %5605
  %5607 = fmul fast float %5589, %5606
  %5608 = fmul fast float %5590, %5606
  %5609 = fmul fast float %5591, %5606
  %5610 = fadd fast float %5582, %5607
  %5611 = fadd fast float %5583, %5608
  %5612 = fadd fast float %5584, %5609
  %5613 = call float @dx.op.dot3.f32(i32 55, float %5610, float %5611, float %5612, float %5610, float %5611, float %5612)  ; Dot3(ax,ay,az,bx,by,bz)
  %5614 = call float @dx.op.unary.f32(i32 25, float %5613)  ; Rsqrt(value)
  %5615 = fmul fast float %5610, %5614
  %5616 = fmul fast float %5611, %5614
  %5617 = fmul fast float %5612, %5614
  %5618 = fsub fast float %5615, %1617
  %5619 = fsub fast float %5616, %1618
  %5620 = fsub fast float %5617, %1619
  %5621 = call float @dx.op.dot3.f32(i32 55, float %5618, float %5619, float %5620, float %5618, float %5619, float %5620)  ; Dot3(ax,ay,az,bx,by,bz)
  %5622 = call float @dx.op.unary.f32(i32 25, float %5621)  ; Rsqrt(value)
  %5623 = fmul fast float %5618, %5622
  %5624 = fmul fast float %5619, %5622
  %5625 = fmul fast float %5620, %5622
  %5626 = call float @dx.op.dot3.f32(i32 55, float %1589, float %1590, float %1591, float %5623, float %5624, float %5625)  ; Dot3(ax,ay,az,bx,by,bz)
  %5627 = fmul fast float %5626, %5626
  %5628 = call float @dx.op.unary.f32(i32 6, float %5533)  ; FAbs(value)
  %5629 = fsub fast float 1.000000e+00, %1673
  %5630 = call float @dx.op.binary.f32(i32 35, float %5629, float 0x3F847AE140000000)  ; FMax(a,b)
  %5631 = fmul fast float %5630, %5630
  %5632 = fmul fast float %5631, %5631
  %5633 = fsub fast float 1.000000e+00, %5632
  %5634 = fmul fast float %1734, %1734
  %5635 = fmul fast float %5634, %5633
  %5636 = fadd fast float %5635, %5632
  %5637 = bitcast float %5636 to i32
  %5638 = ashr i32 %5637, 1
  %5639 = add nsw i32 %5638, 532487669
  %5640 = bitcast i32 %5639 to float
  %5641 = fadd fast float %5640, %1734
  %5642 = fmul fast float %5632, %5627
  %5643 = fsub fast float 1.000000e+00, %5627
  %5644 = fadd fast float %5643, %5642
  %5645 = fmul fast float %5628, %5628
  %5646 = fmul fast float %5645, %5633
  %5647 = fadd fast float %5646, %5632
  %5648 = bitcast float %5647 to i32
  %5649 = ashr i32 %5648, 1
  %5650 = add nsw i32 %5649, 532487669
  %5651 = bitcast i32 %5650 to float
  %5652 = fadd fast float %5651, %5628
  %5653 = fmul fast float %5644, %5644
  %5654 = fmul fast float %5653, %5641
  %5655 = fmul fast float %5654, %5652
  %5656 = fdiv fast float 1.000000e+00, %5655
  %5657 = bitcast float %5632 to i32
  %5658 = sitofp i32 %5657 to float
  %5659 = fmul fast float %5658, 0x3FE7F73180000000
  %5660 = fadd fast float %5659, 0x41AFE27C40000000
  %5661 = fptosi float %5660 to i32
  %5662 = bitcast i32 %5661 to float
  %5663 = fmul fast float %5217, 0x3FD80E9D60000000
  %5664 = fmul fast float %5663, %5602
  %5665 = fadd fast float %5662, %5664
  %5666 = bitcast float %5665 to i32
  %5667 = sub nsw i32 2129859010, %5666
  %5668 = bitcast i32 %5667 to float
  %5669 = fmul fast float %5632, %5656
  %5670 = fmul fast float %5669, %5662
  %5671 = fmul fast float %5670, %5668
  %5672 = call float @dx.op.unary.f32(i32 6, float %5534)  ; FAbs(value)
  %5673 = fsub fast float 1.000000e+00, %5672
  %5674 = bitcast float %5673 to i32
  %5675 = sitofp i32 %5674 to float
  %5676 = fmul fast float %5675, 5.000000e+00
  %5677 = fadd fast float %5676, 0xC1EFBF8940000000
  %5678 = fptosi float %5677 to i32
  %5679 = bitcast i32 %5678 to float
  %5680 = fmul fast float %5679, %2560
  %5681 = fmul fast float %5679, %2561
  %5682 = fmul fast float %5679, %2562
  %5683 = fadd fast float %5680, %1610
  %5684 = fadd fast float %5681, %1611
  %5685 = fadd fast float %5682, %1732
  %5686 = select i1 %2573, float %5672, float 0.000000e+00
  %5687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %57, float %2570, float %5686, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5688 = extractvalue %dx.types.ResRet.f32 %5687, 0
  %5689 = extractvalue %dx.types.ResRet.f32 %5687, 1
  %5690 = extractvalue %dx.types.ResRet.f32 %5687, 2
  %5691 = fadd fast float %5688, -5.000000e-01
  %5692 = fadd fast float %5689, -5.000000e-01
  %5693 = fadd fast float %5690, -5.000000e-01
  %5694 = fmul fast float %2585, %5691
  %5695 = fmul fast float %2589, %5692
  %5696 = fmul fast float %2593, %5693
  %5697 = fadd fast float %5683, %5694
  %5698 = fadd fast float %5684, %5695
  %5699 = fadd fast float %5685, %5696
  %5700 = call float @dx.op.unary.f32(i32 7, float %5697)  ; Saturate(value)
  %5701 = call float @dx.op.unary.f32(i32 7, float %5698)  ; Saturate(value)
  %5702 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  %5703 = fmul fast float %5533, 9.843750e-01
  %5704 = fmul fast float %1673, 9.843750e-01
  %5705 = fadd fast float %5703, 7.812500e-03
  %5706 = fadd fast float %5704, 7.812500e-03
  %5707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %57, float %5705, float %5706, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5708 = extractvalue %dx.types.ResRet.f32 %5707, 2
  %5709 = extractvalue %dx.types.ResRet.f32 %5707, 3
  %5710 = select i1 %2573, float %5533, float 0.000000e+00
  %5711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %57, float %2570, float %5710, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5712 = extractvalue %dx.types.ResRet.f32 %5711, 0
  %5713 = extractvalue %dx.types.ResRet.f32 %5711, 1
  %5714 = extractvalue %dx.types.ResRet.f32 %5711, 2
  %5715 = fadd fast float %5712, -5.000000e-01
  %5716 = fadd fast float %5713, -5.000000e-01
  %5717 = fadd fast float %5714, -5.000000e-01
  %5718 = fmul fast float %2560, 4.000000e+00
  %5719 = fmul fast float %5718, %2572
  %5720 = fmul fast float %5719, %5715
  %5721 = fmul fast float %2561, 4.000000e+00
  %5722 = fmul fast float %5721, %2572
  %5723 = fmul fast float %5722, %5716
  %5724 = fmul fast float %2562, 4.000000e+00
  %5725 = fmul fast float %5724, %2572
  %5726 = fmul fast float %5725, %5717
  %5727 = fadd fast float %5720, %5708
  %5728 = fmul fast float %5727, %1610
  %5729 = fadd fast float %5728, %5709
  %5730 = fadd fast float %5723, %5708
  %5731 = fmul fast float %5730, %1611
  %5732 = fadd fast float %5731, %5709
  %5733 = fadd fast float %5726, %5708
  %5734 = fmul fast float %5733, %1732
  %5735 = fadd fast float %5734, %5709
  %5736 = call float @dx.op.unary.f32(i32 7, float %5729)  ; Saturate(value)
  %5737 = call float @dx.op.unary.f32(i32 7, float %5732)  ; Saturate(value)
  %5738 = call float @dx.op.unary.f32(i32 7, float %5735)  ; Saturate(value)
  %5739 = call float @dx.op.binary.f32(i32 35, float %5737, float %5738)  ; FMax(a,b)
  %5740 = call float @dx.op.binary.f32(i32 35, float %5736, float %5739)  ; FMax(a,b)
  %5741 = fsub fast float 1.000000e+00, %5740
  %5742 = fsub fast float -0.000000e+00, %1589
  %5743 = fsub fast float -0.000000e+00, %1590
  %5744 = fsub fast float -0.000000e+00, %1591
  %5745 = call float @dx.op.dot3.f32(i32 55, float %5268, float %5269, float %5270, float %5742, float %5743, float %5744)  ; Dot3(ax,ay,az,bx,by,bz)
  %5746 = call float @dx.op.unary.f32(i32 7, float %5745)  ; Saturate(value)
  %5747 = fmul fast float %5746, %5275
  %5748 = fmul fast float %5746, 9.843750e-01
  %5749 = fadd fast float %5748, 7.812500e-03
  %5750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %57, float %5749, float %5706, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5751 = extractvalue %dx.types.ResRet.f32 %5750, 2
  %5752 = extractvalue %dx.types.ResRet.f32 %5750, 3
  %5753 = select i1 %2573, float %5746, float 0.000000e+00
  %5754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %57, float %2570, float %5753, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5755 = extractvalue %dx.types.ResRet.f32 %5754, 0
  %5756 = extractvalue %dx.types.ResRet.f32 %5754, 1
  %5757 = extractvalue %dx.types.ResRet.f32 %5754, 2
  %5758 = fadd fast float %5755, -5.000000e-01
  %5759 = fadd fast float %5756, -5.000000e-01
  %5760 = fadd fast float %5757, -5.000000e-01
  %5761 = fmul fast float %5719, %5758
  %5762 = fmul fast float %5722, %5759
  %5763 = fmul fast float %5725, %5760
  %5764 = fadd fast float %5761, %5751
  %5765 = fmul fast float %5764, %1610
  %5766 = fadd fast float %5765, %5752
  %5767 = fadd fast float %5762, %5751
  %5768 = fmul fast float %5767, %1611
  %5769 = fadd fast float %5768, %5752
  %5770 = fadd fast float %5763, %5751
  %5771 = fmul fast float %5770, %1732
  %5772 = fadd fast float %5771, %5752
  %5773 = call float @dx.op.unary.f32(i32 7, float %5766)  ; Saturate(value)
  %5774 = call float @dx.op.unary.f32(i32 7, float %5769)  ; Saturate(value)
  %5775 = call float @dx.op.unary.f32(i32 7, float %5772)  ; Saturate(value)
  %5776 = call float @dx.op.binary.f32(i32 35, float %5774, float %5775)  ; FMax(a,b)
  %5777 = call float @dx.op.binary.f32(i32 35, float %5773, float %5776)  ; FMax(a,b)
  %5778 = fsub fast float 1.000000e+00, %5777
  %5779 = fmul fast float %5747, %5778
  %5780 = fmul fast float %5779, %1676
  %5781 = fmul fast float %5741, %5561
  %5782 = fadd fast float %5780, %5781
  %5783 = fmul fast float %5782, %5491
  %5784 = fmul fast float %5782, %5492
  %5785 = fmul fast float %5782, %5493
  %5786 = fadd fast float %5783, %5186
  %5787 = fadd fast float %5784, %5187
  %5788 = fadd fast float %5785, %5188
  %5789 = fmul fast float %5561, %5491
  %5790 = fmul fast float %5789, %5700
  %5791 = fmul fast float %5790, %5671
  %5792 = fmul fast float %5561, %5492
  %5793 = fmul fast float %5792, %5701
  %5794 = fmul fast float %5793, %5671
  %5795 = fmul fast float %5561, %5493
  %5796 = fmul fast float %5795, %5702
  %5797 = fmul fast float %5796, %5671
  %5798 = fadd fast float %5791, %5183
  %5799 = fadd fast float %5794, %5184
  %5800 = fadd fast float %5797, %5185
  br label %5337

; <label>:5801                                    ; preds = %5337
  br label %5802

; <label>:5802                                    ; preds = %5801, %5149
  %5803 = phi float [ %5151, %5149 ], [ %5338, %5801 ]
  %5804 = phi float [ %5152, %5149 ], [ %5339, %5801 ]
  %5805 = phi float [ %5153, %5149 ], [ %5340, %5801 ]
  %5806 = phi float [ %5154, %5149 ], [ %5341, %5801 ]
  %5807 = phi float [ %5155, %5149 ], [ %5342, %5801 ]
  %5808 = phi float [ %5156, %5149 ], [ %5343, %5801 ]
  %5809 = add i32 %5150, 1
  %5810 = icmp ugt i32 %5809, %5146
  br i1 %5810, label %5811, label %5149

; <label>:5811                                    ; preds = %5802
  br label %5812

; <label>:5812                                    ; preds = %5811, %5099, %5088
  %5813 = phi float [ %5090, %5088 ], [ %5090, %5099 ], [ %5803, %5811 ]
  %5814 = phi float [ %5091, %5088 ], [ %5091, %5099 ], [ %5804, %5811 ]
  %5815 = phi float [ %5092, %5088 ], [ %5092, %5099 ], [ %5805, %5811 ]
  %5816 = phi float [ %5093, %5088 ], [ %5093, %5099 ], [ %5806, %5811 ]
  %5817 = phi float [ %5094, %5088 ], [ %5094, %5099 ], [ %5807, %5811 ]
  %5818 = phi float [ %5095, %5088 ], [ %5095, %5099 ], [ %5808, %5811 ]
  %5819 = and i32 %1669, 255
  %5820 = uitofp i32 %5819 to float
  %5821 = fmul fast float %5820, 0x3F70101020000000
  %5822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5823 = extractvalue %dx.types.CBufRet.f32 %5822, 2
  %5824 = extractvalue %dx.types.CBufRet.f32 %5822, 3
  %5825 = fmul fast float %5823, %88
  %5826 = fmul fast float %5824, %89
  %5827 = fptoui float %88 to i32
  %5828 = fptoui float %89 to i32
  %5829 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %43, i32 0, i32 %5827, i32 %5828, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5830 = extractvalue %dx.types.ResRet.f32 %5829, 0
  %5831 = fcmp fast ogt float %5830, -1.000000e+00
  %5832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5833 = extractvalue %dx.types.CBufRet.f32 %5832, 1
  %5834 = select i1 %5831, float %5833, float 1.000000e+00
  %5835 = fadd fast float %5830, 1.000000e+00
  %5836 = fmul fast float %5834, %5835
  %5837 = call float @dx.op.unary.f32(i32 6, float %5836)  ; FAbs(value)
  br i1 %105, label %5838, label %6351

; <label>:5838                                    ; preds = %5812
  %5839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %5840 = extractvalue %dx.types.CBufRet.f32 %5839, 0
  %5841 = extractvalue %dx.types.CBufRet.f32 %5839, 1
  %5842 = extractvalue %dx.types.CBufRet.f32 %5839, 2
  %5843 = fcmp fast oge float %5841, %77
  %5844 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5845 = extractvalue %dx.types.CBufRet.i32 %5844, 0
  %5846 = and i32 %5845, 65536
  %5847 = icmp ne i32 %5846, 0
  %5848 = and i1 %5843, %5847
  br i1 %5848, label %5849, label %5933

; <label>:5849                                    ; preds = %5838
  %5850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5851 = extractvalue %dx.types.CBufRet.f32 %5850, 0
  %5852 = extractvalue %dx.types.CBufRet.f32 %5850, 1
  %5853 = fmul fast float %5851, %5825
  %5854 = fmul fast float %5852, %5826
  %5855 = extractvalue %dx.types.CBufRet.f32 %5850, 2
  %5856 = extractvalue %dx.types.CBufRet.f32 %5850, 3
  %5857 = fmul fast float %5853, %5855
  %5858 = fmul fast float %5854, %5856
  %5859 = call float @dx.op.unary.f32(i32 7, float %5857)  ; Saturate(value)
  %5860 = call float @dx.op.unary.f32(i32 7, float %5858)  ; Saturate(value)
  %5861 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %57, float %5859, float %5860, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5862 = extractvalue %dx.types.ResRet.f32 %5861, 0
  %5863 = extractvalue %dx.types.ResRet.f32 %5861, 1
  %5864 = extractvalue %dx.types.ResRet.f32 %5861, 2
  %5865 = extractvalue %dx.types.ResRet.f32 %5861, 3
  %5866 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %57, float %5859, float %5860, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5867 = extractvalue %dx.types.ResRet.f32 %5866, 0
  %5868 = extractvalue %dx.types.ResRet.f32 %5866, 1
  %5869 = extractvalue %dx.types.ResRet.f32 %5866, 2
  %5870 = extractvalue %dx.types.ResRet.f32 %5866, 3
  %5871 = call float @dx.op.binary.f32(i32 35, float %5863, float %5864)  ; FMax(a,b)
  %5872 = call float @dx.op.binary.f32(i32 35, float %5862, float %5871)  ; FMax(a,b)
  %5873 = call float @dx.op.binary.f32(i32 35, float %5872, float %5865)  ; FMax(a,b)
  %5874 = call float @dx.op.binary.f32(i32 36, float %5868, float %5869)  ; FMin(a,b)
  %5875 = call float @dx.op.binary.f32(i32 36, float %5867, float %5874)  ; FMin(a,b)
  %5876 = call float @dx.op.binary.f32(i32 36, float %5875, float %5870)  ; FMin(a,b)
  %5877 = fmul fast float %5873, 2.550000e+02
  %5878 = fadd fast float %5877, 0x3F70101020000000
  %5879 = fptoui float %5878 to i32
  %5880 = fmul fast float %5876, 2.550000e+02
  %5881 = fadd fast float %5880, 0x3F70101020000000
  %5882 = fptoui float %5881 to i32
  %5883 = icmp ult i32 %5879, %5882
  br i1 %5883, label %5884, label %5933

; <label>:5884                                    ; preds = %5849
  %5885 = fadd fast float %5837, -4.000000e+00
  %5886 = call float @dx.op.binary.f32(i32 35, float %5885, float 0.000000e+00)  ; FMax(a,b)
  %5887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5888 = extractvalue %dx.types.CBufRet.f32 %5887, 0
  %5889 = fadd fast float %5888, %5886
  %5890 = extractvalue %dx.types.CBufRet.f32 %5887, 2
  %5891 = fmul fast float %5889, %5890
  %5892 = call float @dx.op.unary.f32(i32 23, float %5891)  ; Log(value)
  %5893 = extractvalue %dx.types.CBufRet.f32 %5887, 3
  %5894 = fmul fast float %5893, %5892
  %5895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5896 = extractvalue %dx.types.CBufRet.f32 %5895, 2
  %5897 = fmul fast float %5894, %5896
  %5898 = call float @dx.op.unary.f32(i32 7, float %5897)  ; Saturate(value)
  %5899 = uitofp i32 %5879 to float
  %5900 = uitofp i32 %5882 to float
  %5901 = fadd fast float %5899, 5.000000e-01
  %5902 = fadd fast float %5900, 5.000000e-01
  %5903 = fmul fast float %5896, %5901
  %5904 = fmul fast float %5896, %5902
  %5905 = fadd fast float %5903, 0x3F0FFB4800000000
  %5906 = fadd fast float %5904, 0xBF0FFB4800000000
  %5907 = call float @dx.op.binary.f32(i32 35, float %5898, float %5905)  ; FMax(a,b)
  %5908 = call float @dx.op.binary.f32(i32 36, float %5907, float %5906)  ; FMin(a,b)
  %5909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5910 = extractvalue %dx.types.CBufRet.f32 %5909, 1
  %5911 = extractvalue %dx.types.CBufRet.f32 %5909, 2
  %5912 = extractvalue %dx.types.CBufRet.f32 %5909, 0
  %5913 = fmul fast float %5910, %5908
  %5914 = fadd fast float %5912, %5913
  %5915 = fadd fast float %5912, %5911
  %5916 = fsub fast float %5910, %5911
  %5917 = fadd fast float %5916, %5912
  %5918 = call float @dx.op.binary.f32(i32 35, float %5914, float %5915)  ; FMax(a,b)
  %5919 = call float @dx.op.binary.f32(i32 36, float %5918, float %5917)  ; FMin(a,b)
  %5920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %5859, float %5860, float %5919, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5921 = extractvalue %dx.types.ResRet.f32 %5920, 0
  %5922 = extractvalue %dx.types.ResRet.f32 %5920, 1
  %5923 = extractvalue %dx.types.ResRet.f32 %5920, 2
  %5924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %55, float %5859, float %5860, float %5919, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5925 = extractvalue %dx.types.ResRet.f32 %5924, 0
  %5926 = extractvalue %dx.types.ResRet.f32 %5924, 1
  %5927 = extractvalue %dx.types.ResRet.f32 %5924, 2
  %5928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5929 = extractvalue %dx.types.CBufRet.f32 %5928, 1
  %5930 = fmul fast float %5929, %5925
  %5931 = fmul fast float %5929, %5926
  %5932 = fmul fast float %5929, %5927
  br label %5933

; <label>:5933                                    ; preds = %5884, %5849, %5838
  %5934 = phi float [ 0.000000e+00, %5838 ], [ %5930, %5884 ], [ 0.000000e+00, %5849 ]
  %5935 = phi float [ 0.000000e+00, %5838 ], [ %5931, %5884 ], [ 0.000000e+00, %5849 ]
  %5936 = phi float [ 0.000000e+00, %5838 ], [ %5932, %5884 ], [ 0.000000e+00, %5849 ]
  %5937 = phi float [ 1.000000e+00, %5838 ], [ %5921, %5884 ], [ 1.000000e+00, %5849 ]
  %5938 = phi float [ 1.000000e+00, %5838 ], [ %5922, %5884 ], [ 1.000000e+00, %5849 ]
  %5939 = phi float [ 1.000000e+00, %5838 ], [ %5923, %5884 ], [ 1.000000e+00, %5849 ]
  %5940 = fcmp fast olt float %5821, 1.000000e+00
  %5941 = fcmp fast olt float %5840, %5837
  %5942 = or i1 %5940, %5941
  br i1 %5942, label %5943, label %6107

; <label>:5943                                    ; preds = %5933
  %5944 = lshr i32 %1688, 16
  %5945 = uitofp i32 %5944 to float
  %5946 = fmul fast float %5945, 0x3EF0001000000000
  %5947 = and i32 %1681, 65535
  %5948 = uitofp i32 %5947 to float
  %5949 = fmul fast float %5948, 0x3EF0001000000000
  %5950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5951 = extractvalue %dx.types.CBufRet.f32 %5950, 3
  %5952 = fadd fast float %5951, 3.000000e+00
  %5953 = and i32 %1052, 16383
  %5954 = lshr i32 %1052, 16
  %5955 = and i32 %5954, 255
  %5956 = mul nuw nsw i32 %5953, 148
  %5957 = add nuw nsw i32 %5956, 60
  %5958 = add nuw nsw i32 %5956, 116
  %5959 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5960 = extractvalue %dx.types.CBufRet.i32 %5959, 0
  %5961 = call i32 @dx.op.binary.i32(i32 40, i32 %5953, i32 %5960)  ; UMin(a,b)
  %5962 = mul i32 %5961, 36
  %5963 = add i32 %5962, 4
  %5964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5965 = extractvalue %dx.types.CBufRet.f32 %5964, 0
  %5966 = fmul fast float %5949, %5965
  %5967 = fmul fast float %5946, %5965
  %5968 = extractvalue %dx.types.CBufRet.f32 %5964, 1
  %5969 = fadd fast float %5966, %5968
  %5970 = fadd fast float %5967, %5968
  %5971 = icmp eq i32 %5955, 0
  br i1 %5971, label %6032, label %5972

; <label>:5972                                    ; preds = %5943
  br label %5973

; <label>:5973                                    ; preds = %5973, %5972
  %5974 = phi float [ %6017, %5973 ], [ 0.000000e+00, %5972 ]
  %5975 = phi float [ %6027, %5973 ], [ 0.000000e+00, %5972 ]
  %5976 = phi float [ %6028, %5973 ], [ 0.000000e+00, %5972 ]
  %5977 = phi float [ %6029, %5973 ], [ 0.000000e+00, %5972 ]
  %5978 = phi float [ %6021, %5973 ], [ 0.000000e+00, %5972 ]
  %5979 = phi float [ %6022, %5973 ], [ 0.000000e+00, %5972 ]
  %5980 = phi float [ %6023, %5973 ], [ 0.000000e+00, %5972 ]
  %5981 = phi i32 [ %5986, %5973 ], [ %5955, %5972 ]
  %5982 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5981)  ; FirstbitLo(value)
  %5983 = and i32 %5982, 31
  %5984 = shl i32 1, %5983
  %5985 = xor i32 %5984, -1
  %5986 = and i32 %5981, %5985
  %5987 = shl i32 %5982, 2
  %5988 = add i32 %5963, %5987
  %5989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5988, i32 undef)  ; BufferLoad(srv,index,wot)
  %5990 = extractvalue %dx.types.ResRet.i32 %5989, 0
  %5991 = and i32 %5990, 32767
  %5992 = add i32 %5957, %5987
  %5993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5992, i32 undef)  ; BufferLoad(srv,index,wot)
  %5994 = extractvalue %dx.types.ResRet.f32 %5993, 0
  %5995 = add i32 %5958, %5987
  %5996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5995, i32 undef)  ; BufferLoad(srv,index,wot)
  %5997 = extractvalue %dx.types.ResRet.i32 %5996, 0
  %5998 = add i32 %5997, 0
  %5999 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5998, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6000 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5999, %dx.types.Handle %55, float %5969, float %5970, float %5994, float undef, i32 0, i32 0, i32 undef, float %5952)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6001 = extractvalue %dx.types.ResRet.f32 %6000, 0
  %6002 = mul nuw nsw i32 %5991, 928
  %6003 = add nuw nsw i32 %6002, 44
  %6004 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6003, i32 undef)  ; BufferLoad(srv,index,wot)
  %6005 = extractvalue %dx.types.ResRet.f32 %6004, 0
  %6006 = add nuw nsw i32 %6002, 48
  %6007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6006, i32 undef)  ; BufferLoad(srv,index,wot)
  %6008 = extractvalue %dx.types.ResRet.f32 %6007, 0
  %6009 = extractvalue %dx.types.ResRet.f32 %6007, 1
  %6010 = extractvalue %dx.types.ResRet.f32 %6007, 2
  %6011 = add nuw nsw i32 %6002, 60
  %6012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6011, i32 undef)  ; BufferLoad(srv,index,wot)
  %6013 = extractvalue %dx.types.ResRet.f32 %6012, 0
  %6014 = extractvalue %dx.types.ResRet.f32 %6012, 1
  %6015 = extractvalue %dx.types.ResRet.f32 %6012, 2
  %6016 = fmul fast float %6005, %6001
  %6017 = fadd fast float %6016, %5974
  %6018 = fmul fast float %6008, %6001
  %6019 = fmul fast float %6009, %6001
  %6020 = fmul fast float %6010, %6001
  %6021 = fadd fast float %6018, %5978
  %6022 = fadd fast float %6019, %5979
  %6023 = fadd fast float %6020, %5980
  %6024 = fmul fast float %6013, %6001
  %6025 = fmul fast float %6014, %6001
  %6026 = fmul fast float %6015, %6001
  %6027 = fadd fast float %6024, %5975
  %6028 = fadd fast float %6025, %5976
  %6029 = fadd fast float %6026, %5977
  %6030 = icmp eq i32 %5986, 0
  br i1 %6030, label %6031, label %5973

; <label>:6031                                    ; preds = %5973
  br label %6032

; <label>:6032                                    ; preds = %6031, %5943
  %6033 = phi float [ 0.000000e+00, %5943 ], [ %6017, %6031 ]
  %6034 = phi float [ 0.000000e+00, %5943 ], [ %6027, %6031 ]
  %6035 = phi float [ 0.000000e+00, %5943 ], [ %6028, %6031 ]
  %6036 = phi float [ 0.000000e+00, %5943 ], [ %6029, %6031 ]
  %6037 = phi float [ 0.000000e+00, %5943 ], [ %6021, %6031 ]
  %6038 = phi float [ 0.000000e+00, %5943 ], [ %6022, %6031 ]
  %6039 = phi float [ 0.000000e+00, %5943 ], [ %6023, %6031 ]
  %6040 = fmul fast float %6037, 0x3F847AE140000000
  %6041 = fmul fast float %6038, 0x3F847AE140000000
  %6042 = fmul fast float %6039, 0x3F847AE140000000
  %6043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6044 = extractvalue %dx.types.CBufRet.f32 %6043, 0
  %6045 = extractvalue %dx.types.CBufRet.f32 %6043, 1
  %6046 = extractvalue %dx.types.CBufRet.f32 %6043, 2
  %6047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6048 = extractvalue %dx.types.CBufRet.f32 %6047, 0
  %6049 = extractvalue %dx.types.CBufRet.f32 %6047, 1
  %6050 = call float @dx.op.dot3.f32(i32 55, float %6044, float %6045, float %6046, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6051 = select i1 %1727, float %6048, float %6044
  %6052 = select i1 %1727, float %6050, float %6045
  %6053 = select i1 %1727, float %6049, float %6046
  %6054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6055 = extractvalue %dx.types.CBufRet.f32 %6054, 0
  %6056 = extractvalue %dx.types.CBufRet.f32 %6054, 1
  %6057 = extractvalue %dx.types.CBufRet.f32 %6054, 2
  %6058 = fadd fast float %6037, %6034
  %6059 = fmul fast float %6058, 0x3F847AE140000000
  %6060 = fadd fast float %6038, %6035
  %6061 = fmul fast float %6060, 0x3F847AE140000000
  %6062 = fadd fast float %6039, %6036
  %6063 = fmul fast float %6062, 0x3F847AE140000000
  %6064 = call float @dx.op.dot3.f32(i32 55, float %6055, float %6056, float %6057, float %1617, float %1618, float %1619)  ; Dot3(ax,ay,az,bx,by,bz)
  %6065 = fcmp fast ogt float %6033, 0.000000e+00
  %6066 = select i1 %6065, float 1.000000e+00, float -1.000000e+00
  %6067 = fmul fast float %6066, 5.000000e-01
  %6068 = fmul fast float %6067, %6064
  %6069 = fmul fast float %6066, %6033
  %6070 = fadd fast float %6068, 4.921875e-01
  %6071 = fadd fast float %6069, -3.125000e-02
  %6072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %57, float %6070, float 0x3FB25F3060000000, float %6071, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6073 = extractvalue %dx.types.ResRet.f32 %6072, 0
  %6074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %6075 = extractvalue %dx.types.CBufRet.f32 %6074, 0
  %6076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %6077 = extractvalue %dx.types.CBufRet.f32 %6076, 0
  %6078 = fmul fast float %6077, %6075
  %6079 = extractvalue %dx.types.CBufRet.f32 %6076, 1
  %6080 = fadd fast float %6078, %6079
  %6081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %6082 = extractvalue %dx.types.CBufRet.f32 %6081, 0
  %6083 = fmul fast float %6082, %5089
  %6084 = extractvalue %dx.types.CBufRet.f32 %6081, 1
  %6085 = fadd fast float %6083, %6084
  %6086 = call float @dx.op.unary.f32(i32 7, float %6085)  ; Saturate(value)
  %6087 = extractvalue %dx.types.CBufRet.f32 %6074, 3
  %6088 = extractvalue %dx.types.CBufRet.f32 %6076, 2
  %6089 = fmul fast float %6088, %6087
  %6090 = extractvalue %dx.types.CBufRet.f32 %6076, 3
  %6091 = fadd fast float %6089, %6090
  %6092 = fmul fast float %6073, 0x400921FB60000000
  %6093 = fmul fast float %6092, %6080
  %6094 = fmul fast float %6093, %6086
  %6095 = fmul fast float %6051, %6040
  %6096 = fmul fast float %6095, %6094
  %6097 = fmul fast float %6052, %6041
  %6098 = fmul fast float %6097, %6094
  %6099 = fmul fast float %6053, %6042
  %6100 = fmul fast float %6099, %6094
  %6101 = fmul fast float %6040, %2557
  %6102 = fmul fast float %6101, %6091
  %6103 = fmul fast float %6041, %2558
  %6104 = fmul fast float %6103, %6091
  %6105 = fmul fast float %6042, %2559
  %6106 = fmul fast float %6105, %6091
  br label %6107

; <label>:6107                                    ; preds = %6032, %5933
  %6108 = phi float [ %6059, %6032 ], [ 0.000000e+00, %5933 ]
  %6109 = phi float [ %6061, %6032 ], [ 0.000000e+00, %5933 ]
  %6110 = phi float [ %6063, %6032 ], [ 0.000000e+00, %5933 ]
  %6111 = phi float [ %6096, %6032 ], [ 0.000000e+00, %5933 ]
  %6112 = phi float [ %6098, %6032 ], [ 0.000000e+00, %5933 ]
  %6113 = phi float [ %6100, %6032 ], [ 0.000000e+00, %5933 ]
  %6114 = phi float [ %6102, %6032 ], [ 0.000000e+00, %5933 ]
  %6115 = phi float [ %6104, %6032 ], [ 0.000000e+00, %5933 ]
  %6116 = phi float [ %6106, %6032 ], [ 0.000000e+00, %5933 ]
  %6117 = call float @dx.op.binary.f32(i32 35, float %6108, float 0x3F10000000000000)  ; FMax(a,b)
  %6118 = call float @dx.op.binary.f32(i32 35, float %6109, float 0x3F10000000000000)  ; FMax(a,b)
  %6119 = call float @dx.op.binary.f32(i32 35, float %6110, float 0x3F10000000000000)  ; FMax(a,b)
  %6120 = fdiv fast float 1.000000e+00, %6117
  %6121 = fdiv fast float 1.000000e+00, %6118
  %6122 = fdiv fast float 1.000000e+00, %6119
  %6123 = fmul fast float %6108, 0xBFF7154760000000
  %6124 = fmul fast float %6109, 0xBFF7154760000000
  %6125 = fmul fast float %6110, 0xBFF7154760000000
  %6126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %6127 = extractvalue %dx.types.CBufRet.f32 %6126, 3
  %6128 = call float @dx.op.dot3.f32(i32 55, float %6120, float %6121, float %6122, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6129 = fmul fast float %6127, %6128
  %6130 = call float @dx.op.binary.f32(i32 35, float %5841, float %77)  ; FMax(a,b)
  %6131 = fsub fast float %5837, %6130
  %6132 = call float @dx.op.binary.f32(i32 35, float %6131, float 0.000000e+00)  ; FMax(a,b)
  %6133 = fsub fast float %5837, %77
  %6134 = call float @dx.op.binary.f32(i32 35, float %6133, float 0.000000e+00)  ; FMax(a,b)
  %6135 = call float @dx.op.binary.f32(i32 36, float %6134, float %6129)  ; FMin(a,b)
  %6136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %6137 = extractvalue %dx.types.CBufRet.f32 %6136, 0
  %6138 = fmul fast float %6137, %6135
  %6139 = fmul fast float %6138, %6123
  %6140 = fmul fast float %6138, %6124
  %6141 = fmul fast float %6138, %6125
  %6142 = call float @dx.op.unary.f32(i32 21, float %6139)  ; Exp(value)
  %6143 = call float @dx.op.unary.f32(i32 21, float %6140)  ; Exp(value)
  %6144 = call float @dx.op.unary.f32(i32 21, float %6141)  ; Exp(value)
  %6145 = fmul fast float %6142, %6111
  %6146 = fmul fast float %6143, %6112
  %6147 = fmul fast float %6144, %6113
  %6148 = extractvalue %dx.types.CBufRet.f32 %6136, 1
  %6149 = fmul fast float %6148, %6135
  %6150 = fmul fast float %6149, %6123
  %6151 = fmul fast float %6149, %6124
  %6152 = fmul fast float %6149, %6125
  %6153 = call float @dx.op.unary.f32(i32 21, float %6150)  ; Exp(value)
  %6154 = call float @dx.op.unary.f32(i32 21, float %6151)  ; Exp(value)
  %6155 = call float @dx.op.unary.f32(i32 21, float %6152)  ; Exp(value)
  %6156 = fmul fast float %6153, %6114
  %6157 = fmul fast float %6154, %6115
  %6158 = fmul fast float %6155, %6116
  %6159 = fadd fast float %6156, %6145
  %6160 = fadd fast float %6157, %6146
  %6161 = fadd fast float %6158, %6147
  %6162 = fmul fast float %6132, %6123
  %6163 = fmul fast float %6132, %6124
  %6164 = fmul fast float %6132, %6125
  %6165 = call float @dx.op.unary.f32(i32 21, float %6162)  ; Exp(value)
  %6166 = call float @dx.op.unary.f32(i32 21, float %6163)  ; Exp(value)
  %6167 = call float @dx.op.unary.f32(i32 21, float %6164)  ; Exp(value)
  %6168 = call float @dx.op.unary.f32(i32 7, float %6165)  ; Saturate(value)
  %6169 = call float @dx.op.unary.f32(i32 7, float %6166)  ; Saturate(value)
  %6170 = call float @dx.op.unary.f32(i32 7, float %6167)  ; Saturate(value)
  %6171 = fmul fast float %6168, %6159
  %6172 = fmul fast float %6169, %6160
  %6173 = fmul fast float %6170, %6161
  %6174 = fsub fast float %6159, %6171
  %6175 = fsub fast float %6160, %6172
  %6176 = fsub fast float %6161, %6173
  %6177 = fmul fast float %6120, %5937
  %6178 = fmul fast float %6177, %6174
  %6179 = fmul fast float %6121, %5938
  %6180 = fmul fast float %6179, %6175
  %6181 = fmul fast float %6122, %5939
  %6182 = fmul fast float %6181, %6176
  %6183 = fadd fast float %6178, %5934
  %6184 = fadd fast float %6180, %5935
  %6185 = fadd fast float %6182, %5936
  %6186 = fmul fast float %6168, %5937
  %6187 = fmul fast float %6169, %5938
  %6188 = fmul fast float %6170, %5939
  %6189 = fmul fast float %6134, %6123
  %6190 = fmul fast float %6134, %6124
  %6191 = fmul fast float %6134, %6125
  %6192 = call float @dx.op.unary.f32(i32 21, float %6189)  ; Exp(value)
  %6193 = call float @dx.op.unary.f32(i32 21, float %6190)  ; Exp(value)
  %6194 = call float @dx.op.unary.f32(i32 21, float %6191)  ; Exp(value)
  %6195 = call float @dx.op.unary.f32(i32 7, float %6192)  ; Saturate(value)
  %6196 = call float @dx.op.unary.f32(i32 7, float %6193)  ; Saturate(value)
  %6197 = call float @dx.op.unary.f32(i32 7, float %6194)  ; Saturate(value)
  %6198 = fmul fast float %6195, %6159
  %6199 = fmul fast float %6196, %6160
  %6200 = fmul fast float %6197, %6161
  %6201 = fsub fast float %6159, %6198
  %6202 = fsub fast float %6160, %6199
  %6203 = fsub fast float %6161, %6200
  %6204 = fmul fast float %6201, %6120
  %6205 = fmul fast float %6202, %6121
  %6206 = fmul fast float %6203, %6122
  %6207 = fsub fast float %77, %5840
  %6208 = fmul fast float %5842, %6207
  %6209 = call float @dx.op.unary.f32(i32 7, float %6208)  ; Saturate(value)
  %6210 = fmul fast float %6209, %6209
  %6211 = fmul fast float %6209, 2.000000e+00
  %6212 = fsub fast float 3.000000e+00, %6211
  %6213 = fmul fast float %6210, %6212
  %6214 = fsub fast float %6204, %6183
  %6215 = fsub fast float %6205, %6184
  %6216 = fsub fast float %6206, %6185
  %6217 = fmul fast float %6213, %6214
  %6218 = fmul fast float %6213, %6215
  %6219 = fmul fast float %6213, %6216
  %6220 = fadd fast float %6217, %6183
  %6221 = fadd fast float %6218, %6184
  %6222 = fadd fast float %6219, %6185
  %6223 = fsub fast float %6195, %6186
  %6224 = fsub fast float %6196, %6187
  %6225 = fsub fast float %6197, %6188
  %6226 = fmul fast float %6213, %6223
  %6227 = fmul fast float %6213, %6224
  %6228 = fmul fast float %6213, %6225
  %6229 = fadd fast float %6226, %6186
  %6230 = fadd fast float %6227, %6187
  %6231 = fadd fast float %6228, %6188
  br i1 %5940, label %6232, label %6300

; <label>:6232                                    ; preds = %6107
  %6233 = extractvalue %dx.types.CBufRet.f32 %6136, 3
  %6234 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6233)  ; Dot3(ax,ay,az,bx,by,bz)
  %6235 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1729, float %1730, float %1731)  ; Dot3(ax,ay,az,bx,by,bz)
  %6236 = fdiv fast float 1.000000e+00, %6235
  %6237 = fmul fast float %6236, %6234
  %6238 = fcmp ogt float %1619, -0.000000e+00
  %6239 = select i1 %6238, float %6233, float %6237
  %6240 = call float @dx.op.binary.f32(i32 36, float %6239, float %6129)  ; FMin(a,b)
  %6241 = fmul fast float %6137, %6240
  %6242 = fmul fast float %6241, %6123
  %6243 = fmul fast float %6241, %6124
  %6244 = fmul fast float %6241, %6125
  %6245 = call float @dx.op.unary.f32(i32 21, float %6242)  ; Exp(value)
  %6246 = call float @dx.op.unary.f32(i32 21, float %6243)  ; Exp(value)
  %6247 = call float @dx.op.unary.f32(i32 21, float %6244)  ; Exp(value)
  %6248 = fmul fast float %6245, %6111
  %6249 = fmul fast float %6246, %6112
  %6250 = fmul fast float %6247, %6113
  %6251 = fmul fast float %6148, %6240
  %6252 = fmul fast float %6251, %6123
  %6253 = fmul fast float %6251, %6124
  %6254 = fmul fast float %6251, %6125
  %6255 = call float @dx.op.unary.f32(i32 21, float %6252)  ; Exp(value)
  %6256 = call float @dx.op.unary.f32(i32 21, float %6253)  ; Exp(value)
  %6257 = call float @dx.op.unary.f32(i32 21, float %6254)  ; Exp(value)
  %6258 = fmul fast float %6255, %6114
  %6259 = fmul fast float %6256, %6115
  %6260 = fmul fast float %6257, %6116
  %6261 = fadd fast float %6258, %6248
  %6262 = fadd fast float %6259, %6249
  %6263 = fadd fast float %6260, %6250
  %6264 = fmul fast float %6239, %6123
  %6265 = fmul fast float %6239, %6124
  %6266 = fmul fast float %6239, %6125
  %6267 = call float @dx.op.unary.f32(i32 21, float %6264)  ; Exp(value)
  %6268 = call float @dx.op.unary.f32(i32 21, float %6265)  ; Exp(value)
  %6269 = call float @dx.op.unary.f32(i32 21, float %6266)  ; Exp(value)
  %6270 = call float @dx.op.unary.f32(i32 7, float %6267)  ; Saturate(value)
  %6271 = call float @dx.op.unary.f32(i32 7, float %6268)  ; Saturate(value)
  %6272 = call float @dx.op.unary.f32(i32 7, float %6269)  ; Saturate(value)
  %6273 = fmul fast float %6270, %6261
  %6274 = fmul fast float %6271, %6262
  %6275 = fmul fast float %6272, %6263
  %6276 = fsub fast float %6261, %6273
  %6277 = fsub fast float %6262, %6274
  %6278 = fsub fast float %6263, %6275
  %6279 = fmul fast float %6276, %6120
  %6280 = fmul fast float %6277, %6121
  %6281 = fmul fast float %6278, %6122
  %6282 = fsub fast float %6220, %6279
  %6283 = fsub fast float %6221, %6280
  %6284 = fsub fast float %6222, %6281
  %6285 = fmul fast float %6282, %5821
  %6286 = fmul fast float %6283, %5821
  %6287 = fmul fast float %6284, %5821
  %6288 = fadd fast float %6285, %6279
  %6289 = fadd fast float %6286, %6280
  %6290 = fadd fast float %6287, %6281
  %6291 = fsub fast float %6229, %6270
  %6292 = fsub fast float %6230, %6271
  %6293 = fsub fast float %6231, %6272
  %6294 = fmul fast float %6291, %5821
  %6295 = fmul fast float %6292, %5821
  %6296 = fmul fast float %6293, %5821
  %6297 = fadd fast float %6294, %6270
  %6298 = fadd fast float %6295, %6271
  %6299 = fadd fast float %6296, %6272
  br label %6300

; <label>:6300                                    ; preds = %6232, %6107
  %6301 = phi float [ %6288, %6232 ], [ %6220, %6107 ]
  %6302 = phi float [ %6289, %6232 ], [ %6221, %6107 ]
  %6303 = phi float [ %6290, %6232 ], [ %6222, %6107 ]
  %6304 = phi float [ %6297, %6232 ], [ %6229, %6107 ]
  %6305 = phi float [ %6298, %6232 ], [ %6230, %6107 ]
  %6306 = phi float [ %6299, %6232 ], [ %6231, %6107 ]
  %6307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6308 = extractvalue %dx.types.CBufRet.i32 %6307, 3
  %6309 = and i32 %6308, 3
  %6310 = icmp ne i32 %6309, 0
  %6311 = and i32 %6308, 4
  %6312 = icmp ne i32 %6311, 0
  %6313 = and i1 %6310, %6312
  br i1 %6313, label %6314, label %6321

; <label>:6314                                    ; preds = %6300
  %6315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %57, float %5825, float %5826, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6316 = extractvalue %dx.types.ResRet.f32 %6315, 0
  %6317 = fsub fast float 1.000000e+00, %6316
  %6318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %6319 = extractvalue %dx.types.CBufRet.f32 %6318, 0
  %6320 = fcmp fast olt float %6317, %6319
  br label %6324

; <label>:6321                                    ; preds = %6300
  %6322 = icmp eq i32 %6311, 0
  %6323 = and i1 %6310, %6322
  br label %6324

; <label>:6324                                    ; preds = %6321, %6314
  %6325 = phi i1 [ %6320, %6314 ], [ %6323, %6321 ]
  %6326 = xor i1 %1727, %6325
  %6327 = select i1 %6326, float 0.000000e+00, float %5821
  %6328 = fcmp fast ogt float %6327, 0.000000e+00
  %6329 = select i1 %6328, float %5825, float 0.000000e+00
  %6330 = select i1 %6328, float %5826, float 0.000000e+00
  %6331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %57, float %6329, float %6330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6332 = extractvalue %dx.types.ResRet.f32 %6331, 0
  %6333 = extractvalue %dx.types.ResRet.f32 %6331, 1
  %6334 = extractvalue %dx.types.ResRet.f32 %6331, 2
  %6335 = fmul fast float %6333, %6327
  %6336 = fmul fast float %6334, %6327
  %6337 = select i1 %1727, float 0.000000e+00, float %6335
  %6338 = select i1 %1727, float 0.000000e+00, float %6336
  %6339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6340 = extractvalue %dx.types.CBufRet.f32 %6339, 1
  %6341 = fmul fast float %6327, %6304
  %6342 = fmul fast float %6341, %6332
  %6343 = fmul fast float %6342, %6340
  %6344 = fmul fast float %6340, %6305
  %6345 = fmul fast float %6344, %6337
  %6346 = fmul fast float %6340, %6306
  %6347 = fmul fast float %6346, %6338
  %6348 = fadd fast float %6343, %6301
  %6349 = fadd fast float %6345, %6302
  %6350 = fadd fast float %6347, %6303
  br label %6390

; <label>:6351                                    ; preds = %5812
  %6352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6353 = extractvalue %dx.types.CBufRet.i32 %6352, 3
  %6354 = and i32 %6353, 3
  %6355 = icmp ne i32 %6354, 0
  %6356 = and i32 %6353, 4
  %6357 = icmp ne i32 %6356, 0
  %6358 = and i1 %6355, %6357
  br i1 %6358, label %6359, label %6366

; <label>:6359                                    ; preds = %6351
  %6360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %57, float %5825, float %5826, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6361 = extractvalue %dx.types.ResRet.f32 %6360, 0
  %6362 = fsub fast float 1.000000e+00, %6361
  %6363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %6364 = extractvalue %dx.types.CBufRet.f32 %6363, 0
  %6365 = fcmp fast olt float %6362, %6364
  br label %6369

; <label>:6366                                    ; preds = %6351
  %6367 = icmp eq i32 %6356, 0
  %6368 = and i1 %6355, %6367
  br label %6369

; <label>:6369                                    ; preds = %6366, %6359
  %6370 = phi i1 [ %6365, %6359 ], [ %6368, %6366 ]
  %6371 = xor i1 %1727, %6370
  %6372 = select i1 %6371, float 0.000000e+00, float %5821
  %6373 = fcmp fast ogt float %6372, 0.000000e+00
  %6374 = select i1 %6373, float %5825, float 0.000000e+00
  %6375 = select i1 %6373, float %5826, float 0.000000e+00
  %6376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %57, float %6374, float %6375, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6377 = extractvalue %dx.types.ResRet.f32 %6376, 0
  %6378 = extractvalue %dx.types.ResRet.f32 %6376, 1
  %6379 = extractvalue %dx.types.ResRet.f32 %6376, 2
  %6380 = fmul fast float %6377, %6372
  %6381 = fmul fast float %6378, %6372
  %6382 = fmul fast float %6379, %6372
  %6383 = select i1 %1727, float 0.000000e+00, float %6381
  %6384 = select i1 %1727, float 0.000000e+00, float %6382
  %6385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6386 = extractvalue %dx.types.CBufRet.f32 %6385, 1
  %6387 = fmul fast float %6380, %6386
  %6388 = fmul fast float %6383, %6386
  %6389 = fmul fast float %6384, %6386
  br label %6390

; <label>:6390                                    ; preds = %6369, %6324
  %6391 = phi float [ %6387, %6369 ], [ %6348, %6324 ]
  %6392 = phi float [ %6388, %6369 ], [ %6349, %6324 ]
  %6393 = phi float [ %6389, %6369 ], [ %6350, %6324 ]
  %6394 = fmul fast float %3330, %6391
  %6395 = fmul fast float %3330, %6392
  %6396 = fmul fast float %3330, %6393
  %6397 = fsub fast float 1.000000e+00, %1734
  %6398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6399 = extractvalue %dx.types.CBufRet.f32 %6398, 0
  %6400 = fmul fast float %6399, %6397
  %6401 = fmul fast float %1591, 2.000000e+00
  %6402 = fmul fast float %6401, %1628
  %6403 = fsub fast float %1619, %6402
  %6404 = call float @dx.op.unary.f32(i32 7, float %6403)  ; Saturate(value)
  %6405 = fsub fast float 1.000000e+00, %6404
  %6406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6407 = extractvalue %dx.types.CBufRet.f32 %6406, 3
  %6408 = fmul fast float %6407, %6405
  %6409 = fsub fast float 1.000000e+00, %1701
  %6410 = call float @dx.op.unary.f32(i32 7, float %6409)  ; Saturate(value)
  %6411 = fadd fast float %5818, %1703
  %6412 = fmul fast float %6411, %1701
  %6413 = fmul fast float %6408, %6410
  %6414 = fmul fast float %5816, %1601
  %6415 = fmul fast float %5817, %1602
  %6416 = fmul fast float %5818, %1603
  %6417 = fadd fast float %6414, %5813
  %6418 = fadd fast float %6417, %6394
  %6419 = fadd fast float %6415, %5814
  %6420 = fadd fast float %6419, %6395
  %6421 = fadd fast float %6416, %5815
  %6422 = fadd fast float %6421, %6396
  br i1 %105, label %6423, label %7225

; <label>:6423                                    ; preds = %6390
  %6424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6425 = extractvalue %dx.types.CBufRet.f32 %6424, 0
  %6426 = extractvalue %dx.types.CBufRet.f32 %6424, 1
  %6427 = extractvalue %dx.types.CBufRet.f32 %6424, 2
  %6428 = extractvalue %dx.types.CBufRet.f32 %6424, 3
  %6429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6430 = extractvalue %dx.types.CBufRet.f32 %6429, 0
  %6431 = extractvalue %dx.types.CBufRet.f32 %6429, 1
  %6432 = extractvalue %dx.types.CBufRet.f32 %6429, 2
  %6433 = extractvalue %dx.types.CBufRet.f32 %6429, 3
  %6434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6435 = extractvalue %dx.types.CBufRet.f32 %6434, 0
  %6436 = extractvalue %dx.types.CBufRet.f32 %6434, 1
  %6437 = extractvalue %dx.types.CBufRet.f32 %6434, 2
  %6438 = extractvalue %dx.types.CBufRet.f32 %6434, 3
  %6439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6440 = extractvalue %dx.types.CBufRet.f32 %6439, 0
  %6441 = extractvalue %dx.types.CBufRet.f32 %6439, 1
  %6442 = extractvalue %dx.types.CBufRet.f32 %6439, 2
  %6443 = extractvalue %dx.types.CBufRet.f32 %6439, 3
  %6444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6445 = extractvalue %dx.types.CBufRet.f32 %6444, 3
  %6446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6447 = extractvalue %dx.types.CBufRet.f32 %6446, 3
  %6448 = extractvalue %dx.types.CBufRet.f32 %6446, 0
  %6449 = extractvalue %dx.types.CBufRet.f32 %6446, 1
  %6450 = extractvalue %dx.types.CBufRet.f32 %6446, 2
  %6451 = fcmp fast olt float %6450, -5.000000e-01
  %6452 = fmul fast float %1616, %1615
  %6453 = fadd fast float %6452, %6428
  %6454 = call float @dx.op.dot3.f32(i32 55, float %1617, float %1618, float %1619, float %6425, float %6426, float %6427)  ; Dot3(ax,ay,az,bx,by,bz)
  %6455 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6456 = extractvalue %dx.types.CBufRet.i32 %6455, 1
  %6457 = and i32 %6456, 1
  %6458 = icmp ne i32 %6457, 0
  %6459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6460 = extractvalue %dx.types.CBufRet.f32 %6459, 2
  %6461 = fcmp fast ogt float %6460, 0.000000e+00
  %6462 = and i1 %6458, %6461
  br i1 %6462, label %6463, label %6869, !dx.controlflow.hints !152

; <label>:6463                                    ; preds = %6423
  %6464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6465 = extractvalue %dx.types.CBufRet.f32 %6464, 3
  %6466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6467 = extractvalue %dx.types.CBufRet.f32 %6466, 2
  %6468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6469 = extractvalue %dx.types.CBufRet.f32 %6468, 2
  %6470 = fsub fast float %6467, %6469
  %6471 = and i32 %6456, 2
  %6472 = extractvalue %dx.types.CBufRet.i32 %6455, 0
  %6473 = call i32 @dx.op.binary.i32(i32 40, i32 %6472, i32 3)  ; UMin(a,b)
  %6474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6475 = extractvalue %dx.types.CBufRet.f32 %6474, 0
  %6476 = extractvalue %dx.types.CBufRet.f32 %6474, 1
  %6477 = extractvalue %dx.types.CBufRet.f32 %6468, 0
  %6478 = extractvalue %dx.types.CBufRet.f32 %6468, 1
  %6479 = fsub fast float %6475, %6477
  %6480 = fsub fast float %6476, %6478
  %6481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6482 = extractvalue %dx.types.CBufRet.f32 %6481, 0
  %6483 = fcmp fast ogt float %6482, 0.000000e+00
  %6484 = fsub fast float -0.000000e+00, %6479
  %6485 = fsub fast float -0.000000e+00, %6480
  %6486 = call float @dx.op.dot2.f32(i32 54, float %1617, float %1618, float %1617, float %1618)  ; Dot2(ax,ay,bx,by)
  %6487 = call float @dx.op.dot2.f32(i32 54, float %1617, float %1618, float %6484, float %6485)  ; Dot2(ax,ay,bx,by)
  %6488 = fmul fast float %6487, 2.000000e+00
  %6489 = call float @dx.op.dot2.f32(i32 54, float %6484, float %6485, float %6484, float %6485)  ; Dot2(ax,ay,bx,by)
  %6490 = fmul fast float %6482, %6482
  %6491 = fsub fast float %6489, %6490
  %6492 = fmul fast float %6488, %6488
  %6493 = fmul fast float %6486, 4.000000e+00
  %6494 = fmul fast float %6493, %6491
  %6495 = fsub fast float %6492, %6494
  %6496 = fcmp fast ogt float %6495, 0.000000e+00
  br i1 %6496, label %6497, label %6512

; <label>:6497                                    ; preds = %6463
  %6498 = fcmp fast ogt float %6488, 0.000000e+00
  %6499 = call float @dx.op.unary.f32(i32 24, float %6495)  ; Sqrt(value)
  %6500 = fsub fast float -0.000000e+00, %6499
  %6501 = select i1 %6498, float %6499, float %6500
  %6502 = fadd fast float %6501, %6488
  %6503 = fmul float %6502, -5.000000e-01
  %6504 = fdiv fast float %6503, %6486
  %6505 = call float @dx.op.binary.f32(i32 35, float %6504, float 0.000000e+00)  ; FMax(a,b)
  %6506 = call float @dx.op.binary.f32(i32 36, float %6452, float %6505)  ; FMin(a,b)
  %6507 = fdiv fast float %6491, %6503
  %6508 = call float @dx.op.binary.f32(i32 35, float %6507, float 0.000000e+00)  ; FMax(a,b)
  %6509 = call float @dx.op.binary.f32(i32 36, float %6452, float %6508)  ; FMin(a,b)
  %6510 = call float @dx.op.binary.f32(i32 36, float %6506, float %6509)  ; FMin(a,b)
  %6511 = call float @dx.op.binary.f32(i32 35, float %6506, float %6509)  ; FMax(a,b)
  br label %6512

; <label>:6512                                    ; preds = %6497, %6463
  %6513 = phi float [ %6511, %6497 ], [ -1.000000e+00, %6463 ]
  %6514 = phi float [ %6510, %6497 ], [ -1.000000e+00, %6463 ]
  %6515 = phi i1 [ true, %6497 ], [ false, %6463 ]
  %6516 = and i1 %6483, %6515
  br i1 %6516, label %6517, label %6519

; <label>:6517                                    ; preds = %6512
  %6518 = fcmp fast oeq float %6514, %6513
  br i1 %6518, label %6822, label %6520

; <label>:6519                                    ; preds = %6512
  br i1 %6483, label %6822, label %6520

; <label>:6520                                    ; preds = %6519, %6517
  %6521 = phi float [ %6452, %6519 ], [ %6513, %6517 ]
  %6522 = phi float [ 0.000000e+00, %6519 ], [ %6514, %6517 ]
  %6523 = icmp ne i32 %6471, 0
  %6524 = fmul fast float %6521, %1619
  %6525 = fadd fast float %6524, %6465
  %6526 = fmul fast float %6525, %6521
  %6527 = select i1 %6523, float 0.000000e+00, float %6526
  %6528 = fcmp fast oeq float %1619, 0.000000e+00
  %6529 = fdiv fast float %6470, %1619
  %6530 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6529)  ; FMax(a,b)
  %6531 = select i1 %6528, float %6521, float %6530
  %6532 = call float @dx.op.binary.f32(i32 36, float %6521, float %6531)  ; FMin(a,b)
  %6533 = fcmp fast ogt float %1619, 0.000000e+00
  %6534 = fcmp fast olt float %6470, 0.000000e+00
  br i1 %6533, label %6535, label %6592

; <label>:6535                                    ; preds = %6520
  %6536 = icmp eq i32 %6471, 0
  br i1 %6534, label %6537, label %6581

; <label>:6537                                    ; preds = %6535
  %6538 = select i1 %6536, float %6521, float 0.000000e+00
  %6539 = fsub fast float -0.000000e+00, %6538
  %6540 = call float @dx.op.unary.f32(i32 6, float %6539)  ; FAbs(value)
  %6541 = fmul fast float %6538, %1619
  %6542 = fadd fast float %6541, %6465
  %6543 = fmul fast float %6540, %6542
  %6544 = fsub fast float %6527, %6543
  %6545 = fsub fast float %6521, %6540
  %6546 = select i1 %6536, float %6545, float 0.000000e+00
  %6547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6548 = extractvalue %dx.types.CBufRet.f32 %6547, 0
  %6549 = extractvalue %dx.types.CBufRet.f32 %6547, 1
  %6550 = extractvalue %dx.types.CBufRet.f32 %6547, 2
  %6551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6552 = extractvalue %dx.types.CBufRet.f32 %6551, 0
  %6553 = extractvalue %dx.types.CBufRet.f32 %6551, 1
  %6554 = extractvalue %dx.types.CBufRet.f32 %6551, 2
  %6555 = extractvalue %dx.types.CBufRet.f32 %6551, 3
  %6556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6557 = extractvalue %dx.types.CBufRet.f32 %6556, 3
  %6558 = call float @dx.op.binary.f32(i32 36, float %6544, float %6557)  ; FMin(a,b)
  %6559 = fmul fast float %6555, %6546
  %6560 = call float @dx.op.unary.f32(i32 7, float %6559)  ; Saturate(value)
  %6561 = fsub fast float %6552, %6548
  %6562 = fsub fast float %6553, %6549
  %6563 = fsub fast float %6554, %6550
  %6564 = fmul fast float %6560, %6561
  %6565 = fmul fast float %6560, %6562
  %6566 = fmul fast float %6560, %6563
  %6567 = fadd fast float %6564, %6548
  %6568 = fadd fast float %6565, %6549
  %6569 = fadd fast float %6566, %6550
  %6570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6571 = extractvalue %dx.types.CBufRet.f32 %6570, 0
  %6572 = extractvalue %dx.types.CBufRet.f32 %6570, 1
  %6573 = fadd fast float %6572, %6571
  %6574 = call float @dx.op.unary.f32(i32 7, float %6573)  ; Saturate(value)
  %6575 = extractvalue %dx.types.CBufRet.f32 %6570, 2
  %6576 = extractvalue %dx.types.CBufRet.f32 %6570, 3
  %6577 = fadd fast float %6576, %6575
  %6578 = call float @dx.op.unary.f32(i32 7, float %6577)  ; Saturate(value)
  %6579 = fmul fast float %6574, %6558
  %6580 = fmul fast float %6579, %6578
  br label %6822

; <label>:6581                                    ; preds = %6535
  br i1 %6536, label %6582, label %6603

; <label>:6582                                    ; preds = %6581
  %6583 = call float @dx.op.binary.f32(i32 36, float %6532, float %6522)  ; FMin(a,b)
  %6584 = fsub fast float %6532, %6583
  %6585 = fsub fast float %6584, %6521
  %6586 = call float @dx.op.unary.f32(i32 6, float %6585)  ; FAbs(value)
  %6587 = fadd fast float %6584, %6521
  %6588 = fmul fast float %6587, %1619
  %6589 = fadd fast float %6588, %6465
  %6590 = fmul fast float %6589, %6586
  %6591 = fsub fast float %6527, %6590
  br label %6603

; <label>:6592                                    ; preds = %6520
  br i1 %6534, label %6593, label %6603

; <label>:6593                                    ; preds = %6592
  %6594 = call float @dx.op.binary.f32(i32 35, float %6522, float %6532)  ; FMax(a,b)
  %6595 = icmp eq i32 %6471, 0
  %6596 = select i1 %6595, float %6532, float 0.000000e+00
  %6597 = fsub fast float -0.000000e+00, %6596
  %6598 = call float @dx.op.unary.f32(i32 6, float %6597)  ; FAbs(value)
  %6599 = fmul fast float %6596, %1619
  %6600 = fadd fast float %6599, %6465
  %6601 = fmul fast float %6598, %6600
  %6602 = fsub fast float %6527, %6601
  br label %6603

; <label>:6603                                    ; preds = %6593, %6592, %6582, %6581
  %6604 = phi float [ %6522, %6581 ], [ %6522, %6582 ], [ %6594, %6593 ], [ %6522, %6592 ]
  %6605 = phi float [ 0.000000e+00, %6581 ], [ %6586, %6582 ], [ %6598, %6593 ], [ 0.000000e+00, %6592 ]
  %6606 = phi float [ %6527, %6581 ], [ %6591, %6582 ], [ %6602, %6593 ], [ %6527, %6592 ]
  %6607 = phi float [ %6532, %6581 ], [ %6532, %6582 ], [ %6521, %6593 ], [ %6521, %6592 ]
  %6608 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 0
  store float -1.000000e+00, float* %6608, align 4, !tbaa !98, !noalias !153
  %6609 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 1
  store float -1.000000e+00, float* %6609, align 4, !tbaa !98, !noalias !153
  %6610 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 2
  store float -1.000000e+00, float* %6610, align 4, !tbaa !98, !noalias !153
  %6611 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 0
  store float -1.000000e+00, float* %6611, align 4, !tbaa !98, !noalias !153
  %6612 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 1
  store float -1.000000e+00, float* %6612, align 4, !tbaa !98, !noalias !153
  %6613 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 2
  store float -1.000000e+00, float* %6613, align 4, !tbaa !98, !noalias !153
  %6614 = icmp sgt i32 %6473, 0
  br i1 %6614, label %6615, label %6676

; <label>:6615                                    ; preds = %6603
  br label %6616

; <label>:6616                                    ; preds = %6665, %6615
  %6617 = phi i32 [ %6666, %6665 ], [ 0, %6615 ]
  %6618 = phi i32 [ %6667, %6665 ], [ 0, %6615 ]
  %6619 = add nuw i32 %6618, 171
  %6620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 %6619)  ; CBufferLoadLegacy(handle,regIndex)
  %6621 = extractvalue %dx.types.CBufRet.f32 %6620, 0
  %6622 = extractvalue %dx.types.CBufRet.f32 %6620, 1
  %6623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6624 = extractvalue %dx.types.CBufRet.f32 %6623, 0
  %6625 = extractvalue %dx.types.CBufRet.f32 %6623, 1
  %6626 = fsub fast float %6621, %6624
  %6627 = fsub fast float %6622, %6625
  %6628 = extractvalue %dx.types.CBufRet.f32 %6620, 2
  %6629 = fsub fast float -0.000000e+00, %6626
  %6630 = fsub fast float -0.000000e+00, %6627
  %6631 = call float @dx.op.dot2.f32(i32 54, float %1617, float %1618, float %6629, float %6630)  ; Dot2(ax,ay,bx,by)
  %6632 = fmul fast float %6631, 2.000000e+00
  %6633 = call float @dx.op.dot2.f32(i32 54, float %6629, float %6630, float %6629, float %6630)  ; Dot2(ax,ay,bx,by)
  %6634 = fmul fast float %6628, %6628
  %6635 = fsub fast float %6633, %6634
  %6636 = fmul fast float %6632, %6632
  %6637 = fmul fast float %6493, %6635
  %6638 = fsub fast float %6636, %6637
  %6639 = fcmp fast ogt float %6638, 0.000000e+00
  br i1 %6639, label %6640, label %6655

; <label>:6640                                    ; preds = %6616
  %6641 = fcmp fast ogt float %6632, 0.000000e+00
  %6642 = call float @dx.op.unary.f32(i32 24, float %6638)  ; Sqrt(value)
  %6643 = fsub fast float -0.000000e+00, %6642
  %6644 = select i1 %6641, float %6642, float %6643
  %6645 = fadd fast float %6644, %6632
  %6646 = fmul float %6645, -5.000000e-01
  %6647 = fdiv fast float %6646, %6486
  %6648 = call float @dx.op.binary.f32(i32 35, float %6647, float 0.000000e+00)  ; FMax(a,b)
  %6649 = call float @dx.op.binary.f32(i32 36, float %6521, float %6648)  ; FMin(a,b)
  %6650 = fdiv fast float %6635, %6646
  %6651 = call float @dx.op.binary.f32(i32 35, float %6650, float 0.000000e+00)  ; FMax(a,b)
  %6652 = call float @dx.op.binary.f32(i32 36, float %6521, float %6651)  ; FMin(a,b)
  %6653 = call float @dx.op.binary.f32(i32 36, float %6649, float %6652)  ; FMin(a,b)
  %6654 = call float @dx.op.binary.f32(i32 35, float %6649, float %6652)  ; FMax(a,b)
  br label %6655

; <label>:6655                                    ; preds = %6640, %6616
  %6656 = phi float [ %6654, %6640 ], [ -1.000000e+00, %6616 ]
  %6657 = phi float [ %6653, %6640 ], [ -1.000000e+00, %6616 ]
  %6658 = phi i1 [ true, %6640 ], [ false, %6616 ]
  br i1 %6658, label %6659, label %6665

; <label>:6659                                    ; preds = %6655
  %6660 = call float @dx.op.binary.f32(i32 35, float %6604, float %6657)  ; FMax(a,b)
  %6661 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 %6618
  store float %6660, float* %6661, align 4, !tbaa !98, !noalias !153
  %6662 = call float @dx.op.binary.f32(i32 35, float %6604, float %6656)  ; FMax(a,b)
  %6663 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %6618
  store float %6662, float* %6663, align 4, !tbaa !98, !noalias !153
  %6664 = add nsw i32 %6617, 1
  br label %6665

; <label>:6665                                    ; preds = %6659, %6655
  %6666 = phi i32 [ %6664, %6659 ], [ %6617, %6655 ]
  %6667 = add nuw nsw i32 %6618, 1
  %6668 = icmp eq i32 %6667, %6473
  br i1 %6668, label %6669, label %6616

; <label>:6669                                    ; preds = %6665
  %6670 = load float, float* %6610, align 4, !tbaa !98, !alias.scope !169, !noalias !172
  %6671 = load float, float* %6609, align 4, !tbaa !98, !alias.scope !175, !noalias !176
  %6672 = load float, float* %6608, align 4, !tbaa !98, !alias.scope !177, !noalias !178
  %6673 = load float, float* %6613, align 4, !tbaa !98, !alias.scope !179, !noalias !182
  %6674 = load float, float* %6612, align 4, !tbaa !98, !alias.scope !185, !noalias !186
  %6675 = load float, float* %6611, align 4, !tbaa !98, !alias.scope !187, !noalias !188
  br label %6676

; <label>:6676                                    ; preds = %6669, %6603
  %6677 = phi float [ -1.000000e+00, %6603 ], [ %6675, %6669 ]
  %6678 = phi float [ -1.000000e+00, %6603 ], [ %6674, %6669 ]
  %6679 = phi float [ -1.000000e+00, %6603 ], [ %6673, %6669 ]
  %6680 = phi float [ -1.000000e+00, %6603 ], [ %6672, %6669 ]
  %6681 = phi float [ -1.000000e+00, %6603 ], [ %6671, %6669 ]
  %6682 = phi float [ -1.000000e+00, %6603 ], [ %6670, %6669 ]
  %6683 = phi i32 [ 0, %6603 ], [ %6666, %6669 ]
  %6684 = call float @dx.op.binary.f32(i32 36, float %6681, float %6682)  ; FMin(a,b)
  %6685 = call float @dx.op.binary.f32(i32 36, float %6680, float %6684)  ; FMin(a,b)
  %6686 = call float @dx.op.binary.f32(i32 35, float %6680, float %6681)  ; FMax(a,b)
  %6687 = call float @dx.op.binary.f32(i32 36, float %6686, float %6682)  ; FMin(a,b)
  %6688 = call float @dx.op.binary.f32(i32 36, float %6680, float %6681)  ; FMin(a,b)
  %6689 = call float @dx.op.binary.f32(i32 35, float %6688, float %6687)  ; FMax(a,b)
  %6690 = call float @dx.op.binary.f32(i32 35, float %6681, float %6682)  ; FMax(a,b)
  %6691 = call float @dx.op.binary.f32(i32 35, float %6680, float %6690)  ; FMax(a,b)
  store float %6685, float* %6608, align 4, !tbaa !98, !alias.scope !177, !noalias !178
  store float %6689, float* %6609, align 4, !tbaa !98, !alias.scope !175, !noalias !176
  store float %6691, float* %6610, align 4, !tbaa !98, !alias.scope !169, !noalias !172
  %6692 = call float @dx.op.binary.f32(i32 36, float %6678, float %6679)  ; FMin(a,b)
  %6693 = call float @dx.op.binary.f32(i32 36, float %6677, float %6692)  ; FMin(a,b)
  %6694 = call float @dx.op.binary.f32(i32 35, float %6677, float %6678)  ; FMax(a,b)
  %6695 = call float @dx.op.binary.f32(i32 36, float %6694, float %6679)  ; FMin(a,b)
  %6696 = call float @dx.op.binary.f32(i32 36, float %6677, float %6678)  ; FMin(a,b)
  %6697 = call float @dx.op.binary.f32(i32 35, float %6696, float %6695)  ; FMax(a,b)
  %6698 = call float @dx.op.binary.f32(i32 35, float %6678, float %6679)  ; FMax(a,b)
  %6699 = call float @dx.op.binary.f32(i32 35, float %6677, float %6698)  ; FMax(a,b)
  store float %6693, float* %6611, align 4, !tbaa !98, !alias.scope !187, !noalias !188
  store float %6697, float* %6612, align 4, !tbaa !98, !alias.scope !185, !noalias !186
  store float %6699, float* %6613, align 4, !tbaa !98, !alias.scope !179, !noalias !182
  %6700 = sub nsw i32 3, %6683
  %6701 = icmp sgt i32 %6700, 2
  br i1 %6701, label %6702, label %6740

; <label>:6702                                    ; preds = %6676
  %6703 = icmp eq i32 %6471, 0
  %6704 = fsub fast float %6521, %6605
  %6705 = select i1 %6703, float %6704, float %6605
  %6706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6707 = extractvalue %dx.types.CBufRet.f32 %6706, 0
  %6708 = extractvalue %dx.types.CBufRet.f32 %6706, 1
  %6709 = extractvalue %dx.types.CBufRet.f32 %6706, 2
  %6710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6711 = extractvalue %dx.types.CBufRet.f32 %6710, 0
  %6712 = extractvalue %dx.types.CBufRet.f32 %6710, 1
  %6713 = extractvalue %dx.types.CBufRet.f32 %6710, 2
  %6714 = extractvalue %dx.types.CBufRet.f32 %6710, 3
  %6715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6716 = extractvalue %dx.types.CBufRet.f32 %6715, 3
  %6717 = call float @dx.op.binary.f32(i32 36, float %6606, float %6716)  ; FMin(a,b)
  %6718 = fmul fast float %6714, %6705
  %6719 = call float @dx.op.unary.f32(i32 7, float %6718)  ; Saturate(value)
  %6720 = fsub fast float %6711, %6707
  %6721 = fsub fast float %6712, %6708
  %6722 = fsub fast float %6713, %6709
  %6723 = fmul fast float %6719, %6720
  %6724 = fmul fast float %6719, %6721
  %6725 = fmul fast float %6719, %6722
  %6726 = fadd fast float %6723, %6707
  %6727 = fadd fast float %6724, %6708
  %6728 = fadd fast float %6725, %6709
  %6729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6730 = extractvalue %dx.types.CBufRet.f32 %6729, 0
  %6731 = extractvalue %dx.types.CBufRet.f32 %6729, 1
  %6732 = fadd fast float %6731, %6730
  %6733 = call float @dx.op.unary.f32(i32 7, float %6732)  ; Saturate(value)
  %6734 = extractvalue %dx.types.CBufRet.f32 %6729, 2
  %6735 = extractvalue %dx.types.CBufRet.f32 %6729, 3
  %6736 = fadd fast float %6735, %6734
  %6737 = call float @dx.op.unary.f32(i32 7, float %6736)  ; Saturate(value)
  %6738 = fmul fast float %6733, %6717
  %6739 = fmul fast float %6738, %6737
  br label %6822

; <label>:6740                                    ; preds = %6676
  %6741 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 %6700
  %6742 = load float, float* %6741, align 4, !tbaa !98, !noalias !153
  %6743 = fcmp fast olt float %6742, %6607
  %6744 = icmp sgt i32 %6683, 0
  %6745 = and i1 %6744, %6743
  br i1 %6745, label %6746, label %6783

; <label>:6746                                    ; preds = %6740
  br label %6747

; <label>:6747                                    ; preds = %6776, %6746
  %6748 = phi float [ %6777, %6776 ], [ %6605, %6746 ]
  %6749 = phi float [ %6778, %6776 ], [ %6606, %6746 ]
  %6750 = phi float [ %6758, %6776 ], [ %6742, %6746 ]
  %6751 = phi i32 [ %6755, %6776 ], [ %6700, %6746 ]
  %6752 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %6751
  %6753 = load float, float* %6752, align 4, !tbaa !98, !noalias !153
  %6754 = icmp slt i32 %6751, 2
  %6755 = add nsw i32 %6751, 1
  %6756 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 %6755
  %6757 = load float, float* %6756, align 4, !tbaa !98, !noalias !153
  %6758 = select i1 %6754, float %6757, float %6521
  %6759 = call float @dx.op.binary.f32(i32 36, float %6758, float %6753)  ; FMin(a,b)
  %6760 = call float @dx.op.binary.f32(i32 36, float %6607, float %6759)  ; FMin(a,b)
  %6761 = icmp eq i32 %6471, 0
  %6762 = fadd fast float %6760, %6750
  %6763 = fmul fast float %6762, %1619
  %6764 = fadd fast float %6763, %6465
  br i1 %6761, label %6770, label %6765

; <label>:6765                                    ; preds = %6747
  %6766 = fsub fast float %6760, %6750
  %6767 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6766)  ; FMax(a,b)
  %6768 = fmul fast float %6767, %6764
  %6769 = fadd fast float %6768, %6749
  br label %6776

; <label>:6770                                    ; preds = %6747
  %6771 = fsub fast float %6750, %6760
  %6772 = call float @dx.op.unary.f32(i32 6, float %6771)  ; FAbs(value)
  %6773 = fadd fast float %6772, %6748
  %6774 = fmul fast float %6772, %6764
  %6775 = fsub fast float %6749, %6774
  br label %6776

; <label>:6776                                    ; preds = %6770, %6765
  %6777 = phi float [ %6767, %6765 ], [ %6773, %6770 ]
  %6778 = phi float [ %6769, %6765 ], [ %6775, %6770 ]
  %6779 = fcmp fast olt float %6758, %6607
  %6780 = icmp slt i32 %6755, 3
  %6781 = and i1 %6780, %6779
  br i1 %6781, label %6747, label %6782

; <label>:6782                                    ; preds = %6776
  br label %6783

; <label>:6783                                    ; preds = %6782, %6740
  %6784 = phi float [ %6605, %6740 ], [ %6777, %6782 ]
  %6785 = phi float [ %6606, %6740 ], [ %6778, %6782 ]
  %6786 = fsub fast float %6521, %6784
  %6787 = select i1 %6523, float %6784, float %6786
  %6788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6789 = extractvalue %dx.types.CBufRet.f32 %6788, 0
  %6790 = extractvalue %dx.types.CBufRet.f32 %6788, 1
  %6791 = extractvalue %dx.types.CBufRet.f32 %6788, 2
  %6792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6793 = extractvalue %dx.types.CBufRet.f32 %6792, 0
  %6794 = extractvalue %dx.types.CBufRet.f32 %6792, 1
  %6795 = extractvalue %dx.types.CBufRet.f32 %6792, 2
  %6796 = extractvalue %dx.types.CBufRet.f32 %6792, 3
  %6797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6798 = extractvalue %dx.types.CBufRet.f32 %6797, 3
  %6799 = call float @dx.op.binary.f32(i32 36, float %6785, float %6798)  ; FMin(a,b)
  %6800 = fmul fast float %6796, %6787
  %6801 = call float @dx.op.unary.f32(i32 7, float %6800)  ; Saturate(value)
  %6802 = fsub fast float %6793, %6789
  %6803 = fsub fast float %6794, %6790
  %6804 = fsub fast float %6795, %6791
  %6805 = fmul fast float %6801, %6802
  %6806 = fmul fast float %6801, %6803
  %6807 = fmul fast float %6801, %6804
  %6808 = fadd fast float %6805, %6789
  %6809 = fadd fast float %6806, %6790
  %6810 = fadd fast float %6807, %6791
  %6811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6812 = extractvalue %dx.types.CBufRet.f32 %6811, 0
  %6813 = extractvalue %dx.types.CBufRet.f32 %6811, 1
  %6814 = fadd fast float %6813, %6812
  %6815 = call float @dx.op.unary.f32(i32 7, float %6814)  ; Saturate(value)
  %6816 = extractvalue %dx.types.CBufRet.f32 %6811, 2
  %6817 = extractvalue %dx.types.CBufRet.f32 %6811, 3
  %6818 = fadd fast float %6817, %6816
  %6819 = call float @dx.op.unary.f32(i32 7, float %6818)  ; Saturate(value)
  %6820 = fmul fast float %6815, %6799
  %6821 = fmul fast float %6820, %6819
  br label %6822

; <label>:6822                                    ; preds = %6783, %6702, %6537, %6519, %6517
  %6823 = phi float [ %6546, %6537 ], [ %6705, %6702 ], [ %6787, %6783 ], [ 0.000000e+00, %6517 ], [ 0.000000e+00, %6519 ]
  %6824 = phi float [ %6580, %6537 ], [ %6739, %6702 ], [ %6821, %6783 ], [ 0.000000e+00, %6517 ], [ 0.000000e+00, %6519 ]
  %6825 = phi float [ %6567, %6537 ], [ %6726, %6702 ], [ %6808, %6783 ], [ 0.000000e+00, %6517 ], [ 0.000000e+00, %6519 ]
  %6826 = phi float [ %6568, %6537 ], [ %6727, %6702 ], [ %6809, %6783 ], [ 0.000000e+00, %6517 ], [ 0.000000e+00, %6519 ]
  %6827 = phi float [ %6569, %6537 ], [ %6728, %6702 ], [ %6810, %6783 ], [ 0.000000e+00, %6517 ], [ 0.000000e+00, %6519 ]
  %6828 = fmul fast float %6460, %6824
  %6829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6830 = extractvalue %dx.types.CBufRet.f32 %6829, 2
  %6831 = fsub fast float %6467, %6830
  %6832 = fcmp fast olt float %6828, -2.000000e+01
  %6833 = call float @dx.op.unary.f32(i32 21, float %6828)  ; Exp(value)
  %6834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6835 = extractvalue %dx.types.CBufRet.f32 %6834, 2
  %6836 = extractvalue %dx.types.CBufRet.f32 %6834, 3
  %6837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6838 = extractvalue %dx.types.CBufRet.f32 %6837, 2
  %6839 = fmul fast float %6836, %6831
  %6840 = call float @dx.op.unary.f32(i32 7, float %6839)  ; Saturate(value)
  %6841 = fsub fast float 1.000000e+00, %6840
  %6842 = fmul fast float %1619, 5.000000e-01
  %6843 = fadd fast float %6842, 5.000000e-01
  %6844 = call float @dx.op.unary.f32(i32 7, float %6843)  ; Saturate(value)
  %6845 = fsub fast float 1.000000e+00, %6844
  %6846 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6841)  ; FMax(a,b)
  %6847 = fdiv fast float %6845, %6846
  %6848 = fsub fast float %6831, %145
  %6849 = call float @dx.op.unary.f32(i32 6, float %6848)  ; FAbs(value)
  %6850 = fmul fast float %6849, %6835
  %6851 = call float @dx.op.unary.f32(i32 7, float %6847)  ; Saturate(value)
  %6852 = fsub fast float 1.000000e+00, %6850
  %6853 = fmul fast float %6852, %6851
  %6854 = fadd fast float %6853, %6850
  %6855 = fmul fast float %6838, %6831
  %6856 = call float @dx.op.unary.f32(i32 7, float %6855)  ; Saturate(value)
  %6857 = fsub fast float 1.000000e+00, %6854
  %6858 = fmul fast float %6857, %6856
  %6859 = fadd fast float %6858, %6854
  %6860 = call float @dx.op.unary.f32(i32 7, float %6859)  ; Saturate(value)
  %6861 = fadd fast float %6833, -1.000000e+00
  %6862 = select i1 %6832, float -1.000000e+00, float %6861
  %6863 = fmul fast float %6860, %6862
  %6864 = fadd fast float %6863, 1.000000e+00
  %6865 = fsub fast float -0.000000e+00, %6863
  %6866 = fmul fast float %6825, %6865
  %6867 = fmul fast float %6826, %6865
  %6868 = fmul fast float %6827, %6865
  br label %6869

; <label>:6869                                    ; preds = %6822, %6423
  %6870 = phi float [ %6823, %6822 ], [ 0.000000e+00, %6423 ]
  %6871 = phi float [ %6864, %6822 ], [ 1.000000e+00, %6423 ]
  %6872 = phi float [ %6866, %6822 ], [ 0.000000e+00, %6423 ]
  %6873 = phi float [ %6867, %6822 ], [ 0.000000e+00, %6423 ]
  %6874 = phi float [ %6868, %6822 ], [ 0.000000e+00, %6423 ]
  %6875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6876 = extractvalue %dx.types.CBufRet.f32 %6875, 1
  %6877 = fsub fast float 1.000000e+00, %6871
  %6878 = fmul fast float %6877, %6453
  %6879 = fmul fast float %6878, %6876
  %6880 = fsub fast float %6453, %6879
  br i1 %6451, label %6881, label %6910, !dx.controlflow.hints !189

; <label>:6881                                    ; preds = %6869
  %6882 = fmul fast float %6454, %6448
  %6883 = fadd fast float %6882, %6449
  %6884 = call float @dx.op.unary.f32(i32 7, float %6883)  ; Saturate(value)
  %6885 = fmul fast float %6430, %6880
  %6886 = fsub fast float -0.000000e+00, %6885
  %6887 = fmul fast float %6431, %6880
  %6888 = fsub fast float -0.000000e+00, %6887
  %6889 = call float @dx.op.unary.f32(i32 21, float %6886)  ; Exp(value)
  %6890 = call float @dx.op.unary.f32(i32 21, float %6888)  ; Exp(value)
  %6891 = call float @dx.op.binary.f32(i32 35, float %6438, float %6889)  ; FMax(a,b)
  %6892 = call float @dx.op.binary.f32(i32 35, float %6438, float %6890)  ; FMax(a,b)
  %6893 = fsub fast float %6892, %6891
  %6894 = fmul fast float %6893, %6884
  %6895 = fadd fast float %6894, %6891
  %6896 = call float @dx.op.unary.f32(i32 7, float %6895)  ; Saturate(value)
  %6897 = fsub fast float %6435, %6440
  %6898 = fsub fast float %6436, %6441
  %6899 = fsub fast float %6437, %6442
  %6900 = fmul fast float %6884, %6897
  %6901 = fmul fast float %6884, %6898
  %6902 = fmul fast float %6884, %6899
  %6903 = fadd fast float %6900, %6440
  %6904 = fadd fast float %6901, %6441
  %6905 = fadd fast float %6902, %6442
  %6906 = fsub fast float 1.000000e+00, %6896
  %6907 = fmul fast float %6906, %6903
  %6908 = fmul fast float %6906, %6904
  %6909 = fmul fast float %6906, %6905
  br label %6969

; <label>:6910                                    ; preds = %6869
  %6911 = fmul fast float %6880, %6447
  %6912 = call float @dx.op.unary.f32(i32 7, float %6911)  ; Saturate(value)
  %6913 = fsub fast float 2.000000e+00, %6912
  %6914 = fmul fast float %6912, 9.921875e-01
  %6915 = fmul fast float %6914, %6913
  %6916 = fadd fast float %6915, 3.906250e-03
  %6917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %57, float %6916, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6918 = extractvalue %dx.types.ResRet.f32 %6917, 0
  %6919 = fsub fast float %6912, %6918
  %6920 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6919)  ; FMax(a,b)
  %6921 = fmul fast float %6433, %145
  %6922 = call float @dx.op.unary.f32(i32 6, float %6921)  ; FAbs(value)
  %6923 = fcmp fast ogt float %6922, 0x3EB0C6F7A0000000
  br i1 %6923, label %6924, label %6930, !dx.controlflow.hints !190

; <label>:6924                                    ; preds = %6910
  %6925 = fmul fast float %6921, 0xBFF7154760000000
  %6926 = call float @dx.op.unary.f32(i32 21, float %6925)  ; Exp(value)
  %6927 = fsub fast float 1.000000e+00, %6926
  %6928 = fdiv fast float %6927, %6921
  %6929 = fmul fast float %6928, %6443
  br label %6930

; <label>:6930                                    ; preds = %6924, %6910
  %6931 = phi float [ %6929, %6924 ], [ %6443, %6910 ]
  %6932 = fadd fast float %6931, %6445
  %6933 = fmul fast float %6932, %6920
  %6934 = fmul fast float %6430, %6933
  %6935 = fsub fast float -0.000000e+00, %6934
  %6936 = fmul fast float %6431, %6933
  %6937 = fsub fast float -0.000000e+00, %6936
  %6938 = fmul fast float %6432, %6933
  %6939 = fsub fast float -0.000000e+00, %6938
  %6940 = call float @dx.op.unary.f32(i32 21, float %6935)  ; Exp(value)
  %6941 = call float @dx.op.unary.f32(i32 21, float %6937)  ; Exp(value)
  %6942 = call float @dx.op.unary.f32(i32 21, float %6939)  ; Exp(value)
  %6943 = fmul fast float %6454, %6454
  %6944 = fadd fast float %6943, 1.000000e+00
  %6945 = fmul fast float %6944, 0x3FAE8EC8A0000000
  %6946 = fmul fast float %6945, %6440
  %6947 = fmul fast float %6945, %6441
  %6948 = fmul fast float %6945, %6442
  %6949 = fmul fast float %6454, %6438
  %6950 = fsub fast float 1.000000e+00, %6949
  %6951 = fmul fast float %6438, %6438
  %6952 = fsub fast float 1.000000e+00, %6951
  %6953 = fmul fast float %6952, 0x3FB45F3060000000
  %6954 = fmul fast float %6950, %6950
  %6955 = fdiv fast float 1.000000e+00, %6954
  %6956 = fmul fast float %6953, %6955
  %6957 = fmul fast float %6956, %6435
  %6958 = fmul fast float %6956, %6436
  %6959 = fmul fast float %6956, %6437
  %6960 = fadd fast float %6957, %6946
  %6961 = fadd fast float %6958, %6947
  %6962 = fadd fast float %6959, %6948
  %6963 = fsub fast float 1.000000e+00, %6940
  %6964 = fsub fast float 1.000000e+00, %6941
  %6965 = fsub fast float 1.000000e+00, %6942
  %6966 = fmul fast float %6960, %6963
  %6967 = fmul fast float %6961, %6964
  %6968 = fmul fast float %6962, %6965
  br label %6969

; <label>:6969                                    ; preds = %6930, %6881
  %6970 = phi float [ %6907, %6881 ], [ %6966, %6930 ]
  %6971 = phi float [ %6908, %6881 ], [ %6967, %6930 ]
  %6972 = phi float [ %6909, %6881 ], [ %6968, %6930 ]
  %6973 = phi float [ %6896, %6881 ], [ %6940, %6930 ]
  %6974 = phi float [ %6896, %6881 ], [ %6941, %6930 ]
  %6975 = phi float [ %6896, %6881 ], [ %6942, %6930 ]
  br i1 %6462, label %6976, label %7174, !dx.controlflow.hints !191

; <label>:6976                                    ; preds = %6969
  %6977 = extractvalue %dx.types.CBufRet.f32 %6875, 0
  %6978 = fmul fast float %6977, %6877
  %6979 = fsub fast float %6872, %6970
  %6980 = fsub fast float %6873, %6971
  %6981 = fsub fast float %6874, %6972
  %6982 = fmul fast float %6978, %6979
  %6983 = fmul fast float %6978, %6980
  %6984 = fmul fast float %6978, %6981
  %6985 = fadd fast float %6982, %6970
  %6986 = fadd fast float %6983, %6971
  %6987 = fadd fast float %6984, %6972
  %6988 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6973)  ; FMax(a,b)
  %6989 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6974)  ; FMax(a,b)
  %6990 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6975)  ; FMax(a,b)
  %6991 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6871)  ; FMax(a,b)
  %6992 = call float @dx.op.binary.f32(i32 35, float %6870, float %6880)  ; FMax(a,b)
  %6993 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6992)  ; FMax(a,b)
  %6994 = fdiv fast float %6870, %6993
  %6995 = call float @dx.op.unary.f32(i32 7, float %6994)  ; Saturate(value)
  %6996 = fdiv fast float %6880, %6993
  %6997 = call float @dx.op.unary.f32(i32 7, float %6996)  ; Saturate(value)
  %6998 = fcmp fast une float %6991, 1.000000e+00
  br i1 %6998, label %6999, label %7012, !dx.controlflow.hints !192

; <label>:6999                                    ; preds = %6976
  %7000 = call float @dx.op.unary.f32(i32 23, float %6991)  ; Log(value)
  %7001 = fmul fast float %7000, 0x3FE62E4300000000
  %7002 = fmul fast float %6872, %7001
  %7003 = fsub fast float -0.000000e+00, %7002
  %7004 = fmul fast float %6873, %7001
  %7005 = fsub fast float -0.000000e+00, %7004
  %7006 = fmul fast float %6874, %7001
  %7007 = fsub fast float -0.000000e+00, %7006
  %7008 = fsub fast float 1.000000e+00, %6991
  %7009 = fdiv fast float %7003, %7008
  %7010 = fdiv fast float %7005, %7008
  %7011 = fdiv fast float %7007, %7008
  br label %7012

; <label>:7012                                    ; preds = %6999, %6976
  %7013 = phi float [ %7009, %6999 ], [ %6872, %6976 ]
  %7014 = phi float [ %7010, %6999 ], [ %6873, %6976 ]
  %7015 = phi float [ %7011, %6999 ], [ %6874, %6976 ]
  %7016 = phi float [ %7001, %6999 ], [ 0.000000e+00, %6976 ]
  %7017 = fcmp fast une float %6988, 1.000000e+00
  br i1 %7017, label %7018, label %7025, !dx.controlflow.hints !193

; <label>:7018                                    ; preds = %7012
  %7019 = call float @dx.op.unary.f32(i32 23, float %6988)  ; Log(value)
  %7020 = fmul fast float %7019, 0x3FE62E4300000000
  %7021 = fmul fast float %6985, %7020
  %7022 = fsub fast float -0.000000e+00, %7021
  %7023 = fsub fast float 1.000000e+00, %6988
  %7024 = fdiv fast float %7022, %7023
  br label %7025

; <label>:7025                                    ; preds = %7018, %7012
  %7026 = phi float [ %7024, %7018 ], [ %6985, %7012 ]
  %7027 = phi float [ %7020, %7018 ], [ 0.000000e+00, %7012 ]
  %7028 = fcmp fast une float %6989, 1.000000e+00
  br i1 %7028, label %7029, label %7036, !dx.controlflow.hints !193

; <label>:7029                                    ; preds = %7025
  %7030 = call float @dx.op.unary.f32(i32 23, float %6989)  ; Log(value)
  %7031 = fmul fast float %7030, 0x3FE62E4300000000
  %7032 = fmul fast float %6986, %7031
  %7033 = fsub fast float -0.000000e+00, %7032
  %7034 = fsub fast float 1.000000e+00, %6989
  %7035 = fdiv fast float %7033, %7034
  br label %7036

; <label>:7036                                    ; preds = %7029, %7025
  %7037 = phi float [ %7035, %7029 ], [ %6986, %7025 ]
  %7038 = phi float [ %7031, %7029 ], [ 0.000000e+00, %7025 ]
  %7039 = fcmp fast une float %6990, 1.000000e+00
  br i1 %7039, label %7040, label %7047, !dx.controlflow.hints !193

; <label>:7040                                    ; preds = %7036
  %7041 = call float @dx.op.unary.f32(i32 23, float %6990)  ; Log(value)
  %7042 = fmul fast float %7041, 0x3FE62E4300000000
  %7043 = fmul fast float %6987, %7042
  %7044 = fsub fast float -0.000000e+00, %7043
  %7045 = fsub fast float 1.000000e+00, %6990
  %7046 = fdiv fast float %7044, %7045
  br label %7047

; <label>:7047                                    ; preds = %7040, %7036
  %7048 = phi float [ %7046, %7040 ], [ %6987, %7036 ]
  %7049 = phi float [ %7042, %7040 ], [ 0.000000e+00, %7036 ]
  %7050 = fmul fast float %7013, %6997
  %7051 = fmul fast float %7014, %6997
  %7052 = fmul fast float %7015, %6997
  %7053 = fmul fast float %7016, %6997
  %7054 = fmul fast float %7026, %6995
  %7055 = fmul fast float %7037, %6995
  %7056 = fmul fast float %7048, %6995
  %7057 = fmul fast float %7027, %6995
  %7058 = fmul fast float %7038, %6995
  %7059 = fmul fast float %7049, %6995
  %7060 = fadd fast float %7054, %7050
  %7061 = fadd fast float %7055, %7051
  %7062 = fadd fast float %7056, %7052
  %7063 = fadd fast float %7057, %7053
  %7064 = fadd fast float %7058, %7053
  %7065 = fadd fast float %7059, %7053
  %7066 = fcmp fast une float %7063, 0.000000e+00
  br i1 %7066, label %7067, label %7074, !dx.controlflow.hints !194

; <label>:7067                                    ; preds = %7047
  %7068 = fmul fast float %7063, 0x3FF7154760000000
  %7069 = call float @dx.op.unary.f32(i32 21, float %7068)  ; Exp(value)
  %7070 = fsub fast float 1.000000e+00, %7069
  %7071 = fmul fast float %7060, %7070
  %7072 = fsub fast float -0.000000e+00, %7071
  %7073 = fdiv fast float %7072, %7063
  br label %7074

; <label>:7074                                    ; preds = %7067, %7047
  %7075 = phi float [ %7069, %7067 ], [ 1.000000e+00, %7047 ]
  %7076 = phi float [ %7073, %7067 ], [ %7060, %7047 ]
  %7077 = fcmp fast une float %7064, 0.000000e+00
  br i1 %7077, label %7078, label %7085, !dx.controlflow.hints !194

; <label>:7078                                    ; preds = %7074
  %7079 = fmul fast float %7064, 0x3FF7154760000000
  %7080 = call float @dx.op.unary.f32(i32 21, float %7079)  ; Exp(value)
  %7081 = fsub fast float 1.000000e+00, %7080
  %7082 = fmul fast float %7061, %7081
  %7083 = fsub fast float -0.000000e+00, %7082
  %7084 = fdiv fast float %7083, %7064
  br label %7085

; <label>:7085                                    ; preds = %7078, %7074
  %7086 = phi float [ %7080, %7078 ], [ 1.000000e+00, %7074 ]
  %7087 = phi float [ %7084, %7078 ], [ %7061, %7074 ]
  %7088 = fcmp fast une float %7065, 0.000000e+00
  br i1 %7088, label %7089, label %7096, !dx.controlflow.hints !194

; <label>:7089                                    ; preds = %7085
  %7090 = fmul fast float %7065, 0x3FF7154760000000
  %7091 = call float @dx.op.unary.f32(i32 21, float %7090)  ; Exp(value)
  %7092 = fsub fast float 1.000000e+00, %7091
  %7093 = fmul fast float %7062, %7092
  %7094 = fsub fast float -0.000000e+00, %7093
  %7095 = fdiv fast float %7094, %7065
  br label %7096

; <label>:7096                                    ; preds = %7089, %7085
  %7097 = phi float [ %7091, %7089 ], [ 1.000000e+00, %7085 ]
  %7098 = phi float [ %7095, %7089 ], [ %7062, %7085 ]
  %7099 = fcmp fast ogt float %6995, %6997
  br i1 %7099, label %7100, label %7120

; <label>:7100                                    ; preds = %7096
  %7101 = fsub fast float 1.000000e+00, %6997
  %7102 = fmul fast float %7013, %7101
  %7103 = fmul fast float %7014, %7101
  %7104 = fmul fast float %7015, %7101
  %7105 = fmul fast float %7016, %7101
  %7106 = fcmp fast une float %7105, 0.000000e+00
  br i1 %7106, label %7107, label %7158, !dx.controlflow.hints !195

; <label>:7107                                    ; preds = %7100
  %7108 = fmul fast float %7105, 0x3FF7154760000000
  %7109 = call float @dx.op.unary.f32(i32 21, float %7108)  ; Exp(value)
  %7110 = fsub fast float 1.000000e+00, %7109
  %7111 = fmul fast float %7102, %7110
  %7112 = fsub fast float -0.000000e+00, %7111
  %7113 = fmul fast float %7103, %7110
  %7114 = fsub fast float -0.000000e+00, %7113
  %7115 = fmul fast float %7104, %7110
  %7116 = fsub fast float -0.000000e+00, %7115
  %7117 = fdiv fast float %7112, %7105
  %7118 = fdiv fast float %7114, %7105
  %7119 = fdiv fast float %7116, %7105
  br label %7158

; <label>:7120                                    ; preds = %7096
  %7121 = fsub fast float 1.000000e+00, %6995
  %7122 = fmul fast float %7026, %7121
  %7123 = fmul fast float %7037, %7121
  %7124 = fmul fast float %7048, %7121
  %7125 = fmul fast float %7027, %7121
  %7126 = fmul fast float %7038, %7121
  %7127 = fmul fast float %7049, %7121
  %7128 = fcmp fast une float %7125, 0.000000e+00
  br i1 %7128, label %7129, label %7136, !dx.controlflow.hints !194

; <label>:7129                                    ; preds = %7120
  %7130 = fmul fast float %7125, 0x3FF7154760000000
  %7131 = call float @dx.op.unary.f32(i32 21, float %7130)  ; Exp(value)
  %7132 = fsub fast float 1.000000e+00, %7131
  %7133 = fmul fast float %7122, %7132
  %7134 = fsub fast float -0.000000e+00, %7133
  %7135 = fdiv fast float %7134, %7125
  br label %7136

; <label>:7136                                    ; preds = %7129, %7120
  %7137 = phi float [ %7135, %7129 ], [ %7122, %7120 ]
  %7138 = phi float [ %7131, %7129 ], [ 1.000000e+00, %7120 ]
  %7139 = fcmp fast une float %7126, 0.000000e+00
  br i1 %7139, label %7140, label %7147, !dx.controlflow.hints !194

; <label>:7140                                    ; preds = %7136
  %7141 = fmul fast float %7126, 0x3FF7154760000000
  %7142 = call float @dx.op.unary.f32(i32 21, float %7141)  ; Exp(value)
  %7143 = fsub fast float 1.000000e+00, %7142
  %7144 = fmul fast float %7123, %7143
  %7145 = fsub fast float -0.000000e+00, %7144
  %7146 = fdiv fast float %7145, %7126
  br label %7147

; <label>:7147                                    ; preds = %7140, %7136
  %7148 = phi float [ %7146, %7140 ], [ %7123, %7136 ]
  %7149 = phi float [ %7142, %7140 ], [ 1.000000e+00, %7136 ]
  %7150 = fcmp fast une float %7127, 0.000000e+00
  br i1 %7150, label %7151, label %7158, !dx.controlflow.hints !194

; <label>:7151                                    ; preds = %7147
  %7152 = fmul fast float %7127, 0x3FF7154760000000
  %7153 = call float @dx.op.unary.f32(i32 21, float %7152)  ; Exp(value)
  %7154 = fsub fast float 1.000000e+00, %7153
  %7155 = fmul fast float %7124, %7154
  %7156 = fsub fast float -0.000000e+00, %7155
  %7157 = fdiv fast float %7156, %7127
  br label %7158

; <label>:7158                                    ; preds = %7151, %7147, %7107, %7100
  %7159 = phi float [ %7157, %7151 ], [ %7119, %7107 ], [ %7104, %7100 ], [ %7124, %7147 ]
  %7160 = phi float [ %7148, %7151 ], [ %7118, %7107 ], [ %7103, %7100 ], [ %7148, %7147 ]
  %7161 = phi float [ %7137, %7151 ], [ %7117, %7107 ], [ %7102, %7100 ], [ %7137, %7147 ]
  %7162 = phi float [ %7153, %7151 ], [ %7109, %7107 ], [ 1.000000e+00, %7100 ], [ 1.000000e+00, %7147 ]
  %7163 = phi float [ %7149, %7151 ], [ %7109, %7107 ], [ 1.000000e+00, %7100 ], [ %7149, %7147 ]
  %7164 = phi float [ %7138, %7151 ], [ %7109, %7107 ], [ 1.000000e+00, %7100 ], [ %7138, %7147 ]
  %7165 = fmul fast float %7164, %7076
  %7166 = fmul fast float %7163, %7087
  %7167 = fmul fast float %7162, %7098
  %7168 = fadd fast float %7165, %7161
  %7169 = fadd fast float %7166, %7160
  %7170 = fadd fast float %7167, %7159
  %7171 = fmul fast float %7164, %7075
  %7172 = fmul fast float %7163, %7086
  %7173 = fmul fast float %7162, %7097
  br label %7174

; <label>:7174                                    ; preds = %7158, %6969
  %7175 = phi float [ %7173, %7158 ], [ %6975, %6969 ]
  %7176 = phi float [ %7172, %7158 ], [ %6974, %6969 ]
  %7177 = phi float [ %7171, %7158 ], [ %6973, %6969 ]
  %7178 = phi float [ %7170, %7158 ], [ %6972, %6969 ]
  %7179 = phi float [ %7169, %7158 ], [ %6971, %6969 ]
  %7180 = phi float [ %7168, %7158 ], [ %6970, %6969 ]
  %7181 = call float @dx.op.dot3.f32(i32 55, float %7177, float %7176, float %7175, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7182 = call float @dx.op.dot3.f32(i32 55, float %7180, float %7179, float %7178, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7183 = select i1 %1727, float %7181, float %7177
  %7184 = select i1 %1727, float %7181, float %7176
  %7185 = select i1 %1727, float 1.000000e+00, float %7175
  %7186 = select i1 %1727, float %7182, float %7180
  %7187 = select i1 %1727, float 0.000000e+00, float %7179
  %7188 = select i1 %1727, float 0.000000e+00, float %7178
  %7189 = fmul fast float %7183, %6418
  %7190 = fmul fast float %7184, %6420
  %7191 = fmul fast float %7185, %6422
  %7192 = fadd fast float %7189, %7186
  %7193 = fadd fast float %7190, %7187
  %7194 = fadd fast float %7188, %7191
  %7195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %7196 = extractvalue %dx.types.CBufRet.f32 %7195, 2
  %7197 = extractvalue %dx.types.CBufRet.f32 %7195, 3
  %7198 = fmul fast float %7196, %88
  %7199 = fmul fast float %7197, %89
  %7200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %57, float %7198, float %7199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7201 = extractvalue %dx.types.ResRet.f32 %7200, 0
  %7202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %57, float %7198, float %7199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7203 = extractvalue %dx.types.ResRet.f32 %7202, 0
  %7204 = extractvalue %dx.types.ResRet.f32 %7202, 1
  %7205 = extractvalue %dx.types.ResRet.f32 %7202, 2
  %7206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7207 = extractvalue %dx.types.CBufRet.f32 %7206, 1
  %7208 = fmul fast float %7207, %7203
  %7209 = fmul fast float %7207, %7204
  %7210 = fmul fast float %7207, %7205
  %7211 = fmul fast float %7201, %7177
  %7212 = call float @dx.op.dot3.f32(i32 55, float %7201, float %7201, float %7201, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7213 = call float @dx.op.dot3.f32(i32 55, float %7208, float %7209, float %7210, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7214 = select i1 %1727, float %7212, float %7201
  %7215 = select i1 %1727, float 1.000000e+00, float %7201
  %7216 = select i1 %1727, float %7213, float %7208
  %7217 = select i1 %1727, float 0.000000e+00, float %7209
  %7218 = select i1 %1727, float 0.000000e+00, float %7210
  %7219 = fmul fast float %7214, %7192
  %7220 = fmul fast float %7214, %7193
  %7221 = fmul fast float %7215, %7194
  %7222 = fadd fast float %7219, %7216
  %7223 = fadd fast float %7220, %7217
  %7224 = fadd fast float %7218, %7221
  br label %7225

; <label>:7225                                    ; preds = %7174, %6390
  %7226 = phi float [ %6418, %6390 ], [ %7222, %7174 ]
  %7227 = phi float [ %6420, %6390 ], [ %7223, %7174 ]
  %7228 = phi float [ %6422, %6390 ], [ %7224, %7174 ]
  %7229 = phi float [ 1.000000e+00, %6390 ], [ %7211, %7174 ]
  %7230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %7231 = extractvalue %dx.types.CBufRet.f32 %7230, 2
  %7232 = extractvalue %dx.types.CBufRet.f32 %7230, 3
  %7233 = fmul fast float %7231, %88
  %7234 = fmul fast float %7232, %89
  %7235 = call float @dx.op.unary.f32(i32 7, float %7233)  ; Saturate(value)
  %7236 = call float @dx.op.unary.f32(i32 7, float %7234)  ; Saturate(value)
  %7237 = select i1 %105, i32 0, i32 2
  %7238 = or i32 %7237, 1
  %7239 = uitofp i32 %7238 to float
  %7240 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %57, float %7235, float %7236, float %7239, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7241 = extractvalue %dx.types.ResRet.f32 %7240, 0
  %7242 = extractvalue %dx.types.ResRet.f32 %7240, 1
  %7243 = extractvalue %dx.types.ResRet.f32 %7240, 2
  %7244 = extractvalue %dx.types.ResRet.f32 %7240, 3
  %7245 = add nuw nsw i32 %7237, 2
  %7246 = uitofp i32 %7245 to float
  %7247 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %57, float %7235, float %7236, float %7246, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7248 = extractvalue %dx.types.ResRet.f32 %7247, 0
  %7249 = extractvalue %dx.types.ResRet.f32 %7247, 1
  %7250 = extractvalue %dx.types.ResRet.f32 %7247, 2
  %7251 = extractvalue %dx.types.ResRet.f32 %7247, 3
  %7252 = call float @dx.op.binary.f32(i32 35, float %7242, float %7243)  ; FMax(a,b)
  %7253 = call float @dx.op.binary.f32(i32 35, float %7241, float %7252)  ; FMax(a,b)
  %7254 = call float @dx.op.binary.f32(i32 35, float %7253, float %7244)  ; FMax(a,b)
  %7255 = call float @dx.op.binary.f32(i32 36, float %7249, float %7250)  ; FMin(a,b)
  %7256 = call float @dx.op.binary.f32(i32 36, float %7248, float %7255)  ; FMin(a,b)
  %7257 = call float @dx.op.binary.f32(i32 36, float %7256, float %7251)  ; FMin(a,b)
  %7258 = fmul fast float %7254, 2.550000e+02
  %7259 = fadd fast float %7258, 0x3F70101020000000
  %7260 = fptoui float %7259 to i32
  %7261 = fmul fast float %7257, 2.550000e+02
  %7262 = fadd fast float %7261, 0x3F70101020000000
  %7263 = fptoui float %7262 to i32
  %7264 = icmp ult i32 %7260, %7263
  br i1 %7264, label %7265, label %7317

; <label>:7265                                    ; preds = %7225
  %7266 = fcmp fast ogt float %76, 9.843750e-01
  %7267 = fadd fast float %77, -4.000000e+00
  %7268 = select i1 %7266, float -4.000000e+00, float %7267
  %7269 = call float @dx.op.binary.f32(i32 35, float %7268, float 0.000000e+00)  ; FMax(a,b)
  %7270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7271 = extractvalue %dx.types.CBufRet.f32 %7270, 0
  %7272 = fadd fast float %7271, %7269
  %7273 = extractvalue %dx.types.CBufRet.f32 %7270, 2
  %7274 = fmul fast float %7272, %7273
  %7275 = call float @dx.op.unary.f32(i32 23, float %7274)  ; Log(value)
  %7276 = extractvalue %dx.types.CBufRet.f32 %7270, 3
  %7277 = fmul fast float %7276, %7275
  %7278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7279 = extractvalue %dx.types.CBufRet.f32 %7278, 2
  %7280 = fmul fast float %7277, %7279
  %7281 = call float @dx.op.unary.f32(i32 7, float %7280)  ; Saturate(value)
  %7282 = uitofp i32 %7260 to float
  %7283 = uitofp i32 %7263 to float
  %7284 = fadd fast float %7282, 5.000000e-01
  %7285 = fadd fast float %7283, 5.000000e-01
  %7286 = fmul fast float %7279, %7284
  %7287 = fmul fast float %7279, %7285
  %7288 = fadd fast float %7286, 0x3F0FFB4800000000
  %7289 = fadd fast float %7287, 0xBF0FFB4800000000
  %7290 = call float @dx.op.binary.f32(i32 35, float %7281, float %7288)  ; FMax(a,b)
  %7291 = call float @dx.op.binary.f32(i32 36, float %7290, float %7289)  ; FMin(a,b)
  %7292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7293 = extractvalue %dx.types.CBufRet.f32 %7292, 1
  %7294 = extractvalue %dx.types.CBufRet.f32 %7292, 2
  %7295 = extractvalue %dx.types.CBufRet.f32 %7292, 0
  %7296 = select i1 %105, float 0.000000e+00, float %7295
  %7297 = fmul fast float %7293, %7291
  %7298 = fadd fast float %7296, %7297
  %7299 = fadd fast float %7296, %7294
  %7300 = fsub fast float %7293, %7294
  %7301 = fadd fast float %7300, %7296
  %7302 = call float @dx.op.binary.f32(i32 35, float %7298, float %7299)  ; FMax(a,b)
  %7303 = call float @dx.op.binary.f32(i32 36, float %7302, float %7301)  ; FMin(a,b)
  %7304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %7235, float %7236, float %7303, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7305 = extractvalue %dx.types.ResRet.f32 %7304, 0
  %7306 = extractvalue %dx.types.ResRet.f32 %7304, 1
  %7307 = extractvalue %dx.types.ResRet.f32 %7304, 2
  %7308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %55, float %7235, float %7236, float %7303, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7309 = extractvalue %dx.types.ResRet.f32 %7308, 0
  %7310 = extractvalue %dx.types.ResRet.f32 %7308, 1
  %7311 = extractvalue %dx.types.ResRet.f32 %7308, 2
  %7312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7313 = extractvalue %dx.types.CBufRet.f32 %7312, 1
  %7314 = fmul fast float %7313, %7309
  %7315 = fmul fast float %7313, %7310
  %7316 = fmul fast float %7313, %7311
  br label %7317

; <label>:7317                                    ; preds = %7265, %7225
  %7318 = phi float [ %7305, %7265 ], [ 1.000000e+00, %7225 ]
  %7319 = phi float [ %7306, %7265 ], [ 1.000000e+00, %7225 ]
  %7320 = phi float [ %7307, %7265 ], [ 1.000000e+00, %7225 ]
  %7321 = phi float [ %7314, %7265 ], [ 0.000000e+00, %7225 ]
  %7322 = phi float [ %7315, %7265 ], [ 0.000000e+00, %7225 ]
  %7323 = phi float [ %7316, %7265 ], [ 0.000000e+00, %7225 ]
  %7324 = fmul fast float %7318, %7229
  %7325 = call float @dx.op.dot3.f32(i32 55, float %7318, float %7319, float %7320, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7326 = call float @dx.op.dot3.f32(i32 55, float %7321, float %7322, float %7323, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7327 = select i1 %1727, float %7325, float %7318
  %7328 = select i1 %1727, float %7325, float %7319
  %7329 = select i1 %1727, float 1.000000e+00, float %7320
  %7330 = select i1 %1727, float %7326, float %7321
  %7331 = select i1 %1727, float 0.000000e+00, float %7322
  %7332 = select i1 %1727, float 0.000000e+00, float %7323
  %7333 = fmul fast float %7327, %7226
  %7334 = fmul fast float %7328, %7227
  %7335 = fmul fast float %7329, %7228
  %7336 = fadd fast float %7333, %7330
  %7337 = fadd fast float %7334, %7331
  %7338 = fadd fast float %7332, %7335
  %7339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7340 = extractvalue %dx.types.CBufRet.i32 %7339, 3
  %7341 = and i32 %7340, 3
  %7342 = icmp ne i32 %7341, 0
  %7343 = and i32 %7340, 4
  %7344 = icmp ne i32 %7343, 0
  %7345 = and i1 %7342, %7344
  %7346 = and i1 %1727, %7345
  br i1 %7346, label %7347, label %7353

; <label>:7347                                    ; preds = %7317
  %7348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7349 = extractvalue %dx.types.CBufRet.f32 %7348, 1
  %7350 = fadd fast float %7324, -1.000000e+00
  %7351 = fmul fast float %7349, %7350
  %7352 = fadd fast float %7351, 1.000000e+00
  br label %7353

; <label>:7353                                    ; preds = %7347, %7317
  %7354 = phi float [ %7352, %7347 ], [ %7324, %7317 ]
  %7355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7356 = extractvalue %dx.types.CBufRet.f32 %7355, 0
  br i1 %1727, label %7357, label %7371

; <label>:7357                                    ; preds = %7353
  %7358 = fadd fast float %7336, %7337
  %7359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7360 = extractvalue %dx.types.CBufRet.f32 %7359, 3
  %7361 = extractvalue %dx.types.CBufRet.f32 %6406, 1
  %7362 = fsub fast float %6412, %6400
  %7363 = fadd fast float %7362, %6413
  %7364 = fsub fast float %7363, %7361
  %7365 = extractvalue %dx.types.CBufRet.f32 %6406, 2
  %7366 = fmul fast float %7364, %7365
  %7367 = call float @dx.op.unary.f32(i32 7, float %7366)  ; Saturate(value)
  %7368 = fsub fast float %7367, %7360
  %7369 = fmul fast float %7368, %7354
  %7370 = fadd fast float %7369, %7360
  br label %7374

; <label>:7371                                    ; preds = %7353
  %7372 = fmul fast float %7356, %7337
  %7373 = fmul fast float %7356, %7338
  br label %7374

; <label>:7374                                    ; preds = %7371, %7357
  %7375 = phi float [ %7358, %7357 ], [ %7336, %7371 ]
  %7376 = phi float [ %7370, %7357 ], [ %7372, %7371 ]
  %7377 = phi float [ 1.000000e+00, %7357 ], [ %7373, %7371 ]
  %7378 = fmul float %7356, %7375
  %7379 = fadd fast float %1071, 0x3FE3C6EF40000000
  %7380 = call float @dx.op.unary.f32(i32 22, float %7379)  ; Frc(value)
  %7381 = call float @dx.op.unary.f32(i32 23, float %7378)  ; Log(value)
  %7382 = fadd fast float %7381, -7.000000e+00
  %7383 = call float @dx.op.unary.f32(i32 21, float %7382)  ; Exp(value)
  %7384 = fmul fast float %7380, 2.000000e+00
  %7385 = fadd fast float %7384, -1.000000e+00
  %7386 = fmul fast float %7383, %7385
  %7387 = fcmp fast ogt float %7378, 0.000000e+00
  %7388 = select i1 %7387, float %7386, float 0.000000e+00
  %7389 = fadd fast float %7388, %7378
  %7390 = fadd fast float %1071, 0x3FF3C6EF40000000
  %7391 = call float @dx.op.unary.f32(i32 22, float %7390)  ; Frc(value)
  %7392 = call float @dx.op.unary.f32(i32 23, float %7376)  ; Log(value)
  %7393 = fadd fast float %7392, -7.000000e+00
  %7394 = call float @dx.op.unary.f32(i32 21, float %7393)  ; Exp(value)
  %7395 = fmul fast float %7391, 2.000000e+00
  %7396 = fadd fast float %7395, -1.000000e+00
  %7397 = fmul fast float %7394, %7396
  %7398 = fcmp fast ogt float %7376, 0.000000e+00
  %7399 = select i1 %7398, float %7397, float 0.000000e+00
  %7400 = fadd fast float %7399, %7376
  %7401 = fadd fast float %1071, 0x3FFDAA66E0000000
  %7402 = call float @dx.op.unary.f32(i32 22, float %7401)  ; Frc(value)
  %7403 = call float @dx.op.unary.f32(i32 23, float %7377)  ; Log(value)
  %7404 = fadd fast float %7403, -6.000000e+00
  %7405 = call float @dx.op.unary.f32(i32 21, float %7404)  ; Exp(value)
  %7406 = fmul fast float %7402, 2.000000e+00
  %7407 = fadd fast float %7406, -1.000000e+00
  %7408 = fmul fast float %7405, %7407
  %7409 = fcmp fast ogt float %7377, 0.000000e+00
  %7410 = select i1 %7409, float %7408, float 0.000000e+00
  %7411 = fadd fast float %7410, %7377
  %7412 = call float @dx.op.binary.f32(i32 36, float %7389, float 3.225500e+04)  ; FMin(a,b)
  %7413 = call float @dx.op.binary.f32(i32 36, float %7400, float 3.225500e+04)  ; FMin(a,b)
  %7414 = call float @dx.op.binary.f32(i32 36, float %7411, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7412)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7413)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7414)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

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

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!76}
!dx.entryPoints = !{!77}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !64, !68}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !12}
!12 = !{i32 0, i32 14}
!13 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!15 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!16 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!22 = !{i32 14, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !25}
!25 = !{i32 0, i32 5}
!26 = !{i32 17, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!27 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!28 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!29 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!30 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!31 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!32 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!33 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
!34 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 50, i32 1, i32 2, i32 0, !7}
!35 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!36 = !{i32 27, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!37 = !{i32 28, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
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
!63 = !{i32 54, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 7, i32 0, !7}
!64 = !{!65, !66, !67}
!65 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!66 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!67 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!68 = !{!69, !70, !71, !72, !73, !74, !75}
!69 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!70 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!71 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!72 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!73 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!74 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!75 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!76 = !{[20 x i32] [i32 18, i32 4, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0]}
!77 = !{void ()* @ps_main, !"ps_main", !78, !4, !97}
!78 = !{!79, !95, null}
!79 = !{!80, !83, !85, !87, !89, !90, !91, !92, !94}
!80 = !{i32 0, !"SV_Position", i8 9, i8 3, !81, i8 4, i32 1, i8 4, i32 0, i8 0, !82}
!81 = !{i32 0}
!82 = !{i32 3, i32 15}
!83 = !{i32 1, !"NORMAL", i8 9, i8 0, !81, i8 2, i32 1, i8 3, i32 1, i8 0, !84}
!84 = !{i32 3, i32 7}
!85 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !81, i8 2, i32 1, i8 2, i32 2, i8 0, !86}
!86 = !{i32 3, i32 3}
!87 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !81, i8 2, i32 1, i8 1, i32 1, i8 3, !88}
!88 = !{i32 3, i32 1}
!89 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !81, i8 1, i32 1, i8 1, i32 3, i8 0, !88}
!90 = !{i32 5, !"SV_IsFrontFace", i8 5, i8 13, !81, i8 1, i32 1, i8 1, i32 3, i8 1, !88}
!91 = !{i32 6, !"SV_ClipDistance", i8 9, i8 6, !81, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!92 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !93, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!93 = !{i32 1}
!94 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !81, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!95 = !{!96}
!96 = !{i32 0, !"SV_Target", i8 9, i8 16, !81, i8 0, i32 1, i8 4, i32 0, i8 0, !82}
!97 = !{i32 0, i64 24}
!98 = !{!99, !99, i64 0}
!99 = !{!"float", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !{!103, !105, !106}
!103 = distinct !{!103, !104, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!104 = distinct !{!104, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!105 = distinct !{!105, !104, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!106 = distinct !{!106, !104, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %normalOffsets"}
!109 = distinct !{!109, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z"}
!110 = distinct !{!110, !111}
!111 = !{!"llvm.loop.unroll.disable"}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !111}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = !{!130, !130, i64 0}
!130 = !{!"int", !100, i64 0}
!131 = !{!132, !134, !136, !138}
!132 = distinct !{!132, !133, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!133 = distinct !{!133, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!134 = distinct !{!134, !135, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!135 = distinct !{!135, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!136 = distinct !{!136, !137, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!137 = distinct !{!137, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!138 = distinct !{!138, !139, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!139 = distinct !{!139, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !111}
!142 = distinct !{!142, !111}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 1}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}
!153 = !{!154, !156, !158, !159, !161, !162, !163, !165, !166, !167}
!154 = distinct !{!154, !155, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!155 = distinct !{!155, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!156 = distinct !{!156, !157, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!157 = distinct !{!157, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!158 = distinct !{!158, !157, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!159 = distinct !{!159, !160, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!160 = distinct !{!160, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!161 = distinct !{!161, !160, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!162 = distinct !{!162, !160, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!163 = distinct !{!163, !164, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!164 = distinct !{!164, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!165 = distinct !{!165, !164, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!166 = distinct !{!166, !164, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!167 = distinct !{!167, !168, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!168 = distinct !{!168, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!169 = !{!170}
!170 = distinct !{!170, !171, !"\01?sort@@YAXAIAM00@Z: %c"}
!171 = distinct !{!171, !"\01?sort@@YAXAIAM00@Z"}
!172 = !{!173, !174, !154, !156, !158, !159, !161, !162, !163, !165, !166, !167}
!173 = distinct !{!173, !171, !"\01?sort@@YAXAIAM00@Z: %a"}
!174 = distinct !{!174, !171, !"\01?sort@@YAXAIAM00@Z: %b"}
!175 = !{!174}
!176 = !{!173, !170, !154, !156, !158, !159, !161, !162, !163, !165, !166, !167}
!177 = !{!173}
!178 = !{!174, !170, !154, !156, !158, !159, !161, !162, !163, !165, !166, !167}
!179 = !{!180}
!180 = distinct !{!180, !181, !"\01?sort@@YAXAIAM00@Z: %c"}
!181 = distinct !{!181, !"\01?sort@@YAXAIAM00@Z"}
!182 = !{!183, !184, !154, !156, !158, !159, !161, !162, !163, !165, !166, !167}
!183 = distinct !{!183, !181, !"\01?sort@@YAXAIAM00@Z: %a"}
!184 = distinct !{!184, !181, !"\01?sort@@YAXAIAM00@Z: %b"}
!185 = !{!184}
!186 = !{!183, !180, !154, !156, !158, !159, !161, !162, !163, !165, !166, !167}
!187 = !{!183}
!188 = !{!184, !180, !154, !156, !158, !159, !161, !162, !163, !165, !166, !167}
!189 = distinct !{!189, !"dx.controlflow.hints", i32 1}
!190 = distinct !{!190, !"dx.controlflow.hints", i32 2}
!191 = distinct !{!191, !"dx.controlflow.hints", i32 1}
!192 = distinct !{!192, !"dx.controlflow.hints", i32 1}
!193 = distinct !{!193, !"dx.controlflow.hints", i32 1}
!194 = distinct !{!194, !"dx.controlflow.hints", i32 1}
!195 = distinct !{!195, !"dx.controlflow.hints", i32 1}

