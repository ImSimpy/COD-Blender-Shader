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
; shader hash: c66de2c6fc99f2252b377081ece27615
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
;                                   texture    byte         r/o     T28     t10,space1     1
;                                   texture    byte         r/o     T29      t1,space1     1
;                                   texture     f32          1d     T30     t32,space2     1
;                                   texture     f32          3d     T31     t82,space2     1
;                                   texture     f32          1d     T32     t30,space2     1
;                                   texture     f32          3d     T33     t44,space2     1
;                                   texture     f32          3d     T34     t45,space2     1
;                                   texture     f32     2darray     T35     t47,space2     1
;                                   texture     f32     2darray     T36      t8,space2     1
;                                   texture     f32          2d     T37      t2,space2     1
;                                   texture     f32          2d     T38      t3,space2     1
;                                   texture     f32          2d     T39      t4,space2     1
;                                   textureunorm_f32     2darray     T40     t80,space2     1
;                                   texture    byte         r/o     T41     t67,space1     1
;                                   texture     f32          2d     T42      t7,space2     1
;                                   texture     f32          2d     T43      t6,space2     1
;                                   texture     f32          2d     T44      t5,space2     1
;                                   texture     f32          2d     T45     t38,space2     1
;                                   texture    byte         r/o     T46     t12,space1     1
;                                   texture    byte         r/o     T47     t13,space1     1
;                                   texture     f32          2d     T48     t83,space2     1
;                                   texture     f32          2d     T49     t86,space2     1
;                                   texture    byte         r/o     T50     t16,space1     1
;                                   texture    byte         r/o     T51     t17,space1     1
;                                   texture     f32          2d     T52             t8     1
;                                   texture     f32     2darray     T53            t10     1
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
@"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim" = internal constant [8 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = alloca [4 x i32], align 4
  %63 = alloca [4 x float], align 4
  %64 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = icmp ne i32 %64, 0
  %66 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = alloca [12 x float], align 4
  %78 = alloca [12 x float], align 4
  %79 = alloca [3 x float], align 4
  %80 = alloca [3 x float], align 4
  %81 = alloca [4 x float], align 4
  %82 = alloca [4 x float], align 4
  %83 = alloca [4 x float], align 4
  %84 = alloca [4 x float], align 4
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = fmul fast float %86, %73
  %88 = fmul fast float %86, %74
  %89 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %90 = call float @dx.op.unary.f32(i32 25, float %89)  ; Rsqrt(value)
  %91 = fmul fast float %90, %70
  %92 = fmul fast float %90, %71
  %93 = fmul fast float %90, %72
  %94 = xor i1 %65, true
  %95 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.i32 %95, 0
  %97 = icmp eq i32 %96, 0
  %98 = and i1 %97, %94
  %99 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.i32 %99, 0
  %101 = and i32 %100, 256
  %102 = icmp ne i32 %101, 0
  %103 = and i1 %98, %102
  %104 = or i1 %65, %103
  %105 = select i1 %104, float 1.000000e+00, float -1.000000e+00
  %106 = fmul fast float %91, %105
  %107 = fmul fast float %92, %105
  %108 = fmul fast float %93, %105
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 3
  %112 = fmul fast float %87, 2.000000e+00
  %113 = fmul fast float %112, %110
  %114 = fmul fast float %88, 2.000000e+00
  %115 = fmul fast float %114, %111
  %116 = fsub fast float 1.000000e+00, %113
  %117 = fsub fast float 1.000000e+00, %115
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = fmul fast float %116, %119
  %123 = fmul fast float %116, %120
  %124 = fmul fast float %116, %121
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %129 = fmul fast float %117, %126
  %130 = fmul fast float %117, %127
  %131 = fmul fast float %117, %128
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %136 = fadd fast float %129, %133
  %137 = fadd fast float %136, %122
  %138 = fadd fast float %130, %134
  %139 = fadd fast float %138, %123
  %140 = fadd fast float %131, %135
  %141 = fadd fast float %140, %124
  %142 = fmul fast float %137, %76
  %143 = fmul fast float %139, %76
  %144 = fmul fast float %141, %76
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %147 = call float @dx.op.unary.f32(i32 83, float %68)  ; DerivCoarseX(value)
  %148 = call float @dx.op.unary.f32(i32 83, float %69)  ; DerivCoarseX(value)
  %149 = call float @dx.op.unary.f32(i32 84, float %68)  ; DerivCoarseY(value)
  %150 = call float @dx.op.unary.f32(i32 84, float %69)  ; DerivCoarseY(value)
  %151 = fmul fast float %147, %146
  %152 = fmul fast float %148, %146
  %153 = fmul fast float %149, %146
  %154 = fmul fast float %150, %146
  %155 = call float @dx.op.dot2.f32(i32 54, float %153, float %154, float %153, float %154)  ; Dot2(ax,ay,bx,by)
  %156 = call float @dx.op.dot2.f32(i32 54, float %151, float %152, float %151, float %152)  ; Dot2(ax,ay,bx,by)
  %157 = call float @dx.op.binary.f32(i32 35, float %156, float %155)  ; FMax(a,b)
  %158 = call float @dx.op.unary.f32(i32 23, float %157)  ; Log(value)
  %159 = fmul fast float %158, 5.000000e-01
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %162 = fadd fast float %161, %159
  %163 = call float @dx.op.binary.f32(i32 35, float %162, float 0.000000e+00)  ; FMax(a,b)
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 3
  %166 = fadd fast float %165, %163
  %167 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %168 = shl i32 %167, 16
  %169 = or i32 %168, %167
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 0
  %172 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %173 = fadd fast float %171, %142
  %174 = fadd fast float %172, %143
  %175 = fmul fast float %173, 0x3F53C37960000000
  %176 = fmul fast float %174, 0x3F53C37960000000
  %177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %177, float %175, float %176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %179 = extractvalue %dx.types.ResRet.f32 %178, 0
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %182 = fmul fast float %181, %179
  %183 = shl i32 %66, 3
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = and i32 %185, 16383
  %187 = shl i32 %66, 2
  %188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %187, i32 undef)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.i32 %188, 0
  %190 = and i32 %189, 255
  %191 = shl nuw nsw i32 %190, 16
  %192 = or i32 %191, %186
  %193 = mul nuw nsw i32 %186, 148
  %194 = add nuw nsw i32 %193, 4
  %195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = add nuw nsw i32 %193, 8
  %198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.f32 %198, 0
  %200 = add nuw nsw i32 %193, 48
  %201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = add nuw nsw i32 %193, 60
  %204 = add nuw nsw i32 %193, 104
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = add nuw nsw i32 %193, 116
  %208 = fsub fast float 1.000000e+00, %69
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %211 = fmul fast float %210, %68
  %212 = fmul fast float %210, %208
  %213 = fadd fast float %211, %196
  %214 = fadd fast float %212, %199
  %215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = add nuw nsw i32 %193, 52
  %218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = add nuw nsw i32 %193, 108
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 0
  %227 = fmul fast float %226, %68
  %228 = fmul fast float %226, %69
  %229 = extractvalue %dx.types.CBufRet.f32 %225, 1
  %230 = fadd fast float %227, %229
  %231 = fadd fast float %228, %229
  %232 = add i32 %221, 0
  %233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %232, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %234 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %233, i32 0)  ; GetDimensions(handle,mipLevel)
  %235 = extractvalue %dx.types.Dimensions %234, 0
  %236 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %235)  ; FirstbitLo(value)
  %237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.i32 %237, 1
  %239 = sub nsw i32 %238, %236
  %240 = sitofp i32 %239 to float
  %241 = fsub fast float %166, %240
  %242 = call float @dx.op.binary.f32(i32 35, float %241, float 0.000000e+00)  ; FMax(a,b)
  %243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %233, %dx.types.Handle %54, float %230, float %231, float %216, float undef, i32 0, i32 0, i32 undef, float %242)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = extractvalue %dx.types.ResRet.f32 %243, 1
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 3
  %248 = fmul fast float %247, 2.000000e+00
  %249 = fmul fast float %248, %244
  %250 = fmul fast float %248, %245
  %251 = fsub fast float %249, %247
  %252 = fsub fast float %250, %247
  %253 = fmul fast float %251, %251
  %254 = fmul fast float %252, %252
  %255 = fadd fast float %253, %254
  %256 = call float @dx.op.unary.f32(i32 24, float %255)  ; Sqrt(value)
  %257 = add i32 %224, 0
  %258 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %257, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %259 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %258, i32 0)  ; GetDimensions(handle,mipLevel)
  %260 = extractvalue %dx.types.Dimensions %259, 0
  %261 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %260)  ; FirstbitLo(value)
  %262 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.i32 %262, 1
  %264 = sub nsw i32 %263, %261
  %265 = sitofp i32 %264 to float
  %266 = fsub fast float %166, %265
  %267 = call float @dx.op.binary.f32(i32 35, float %266, float 0.000000e+00)  ; FMax(a,b)
  %268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %258, %dx.types.Handle %54, float %230, float %231, float %219, float undef, i32 0, i32 0, i32 undef, float %267)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.i32 %270, 0
  %272 = call i32 @dx.op.binary.i32(i32 40, i32 %186, i32 %271)  ; UMin(a,b)
  %273 = mul i32 %272, 36
  %274 = add i32 %273, 4
  %275 = icmp eq i32 %190, 0
  br i1 %275, label %1007, label %276

; <label>:276                                     ; preds = %0
  br label %277

; <label>:277                                     ; preds = %998, %276
  %278 = phi i32 [ %999, %998 ], [ %192, %276 ]
  %279 = phi float [ %1000, %998 ], [ 0.000000e+00, %276 ]
  %280 = phi float [ %1001, %998 ], [ 0.000000e+00, %276 ]
  %281 = phi i32 [ %289, %998 ], [ %190, %276 ]
  %282 = phi i32 [ %1002, %998 ], [ %169, %276 ]
  %283 = phi i32 [ %1003, %998 ], [ %169, %276 ]
  %284 = phi i32 [ %1004, %998 ], [ %169, %276 ]
  %285 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %281)  ; FirstbitLo(value)
  %286 = and i32 %285, 31
  %287 = shl i32 1, %286
  %288 = xor i32 %287, -1
  %289 = and i32 %281, %288
  %290 = shl i32 %285, 2
  %291 = add i32 %203, %290
  %292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 0
  %296 = fmul fast float %295, %68
  %297 = fmul fast float %295, %69
  %298 = extractvalue %dx.types.CBufRet.f32 %294, 1
  %299 = fadd fast float %296, %298
  %300 = fadd fast float %297, %298
  %301 = add i32 %207, %290
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = add i32 %303, 0
  %305 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %304, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %306 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %305, i32 0)  ; GetDimensions(handle,mipLevel)
  %307 = extractvalue %dx.types.Dimensions %306, 0
  %308 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %307)  ; FirstbitLo(value)
  %309 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.i32 %309, 1
  %311 = sub nsw i32 %310, %308
  %312 = sitofp i32 %311 to float
  %313 = fsub fast float %166, %312
  %314 = call float @dx.op.binary.f32(i32 35, float %313, float 0.000000e+00)  ; FMax(a,b)
  %315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %305, %dx.types.Handle %54, float %299, float %300, float %293, float undef, i32 0, i32 0, i32 undef, float %314)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = fcmp fast ogt float %316, 0.000000e+00
  br i1 %317, label %318, label %998

; <label>:318                                     ; preds = %277
  %319 = add i32 %274, %290
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 32767
  %323 = mul nuw nsw i32 %322, 928
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = or i32 %323, 8
  %327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = or i32 %323, 12
  %330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.f32 %330, 1
  %332 = or i32 %323, 20
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = or i32 %323, 24
  %336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.f32 %336, 0
  %338 = extractvalue %dx.types.ResRet.f32 %336, 1
  %339 = extractvalue %dx.types.ResRet.f32 %336, 2
  %340 = extractvalue %dx.types.ResRet.f32 %336, 3
  %341 = add nuw nsw i32 %323, 40
  %342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.f32 %342, 0
  %344 = add nuw nsw i32 %323, 80
  %345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.f32 %345, 0
  %347 = add nuw nsw i32 %323, 228
  %348 = add nuw nsw i32 %323, 516
  %349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 1
  %351 = add nuw nsw i32 %323, 528
  %352 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.f32 %352, 0
  %354 = extractvalue %dx.types.ResRet.f32 %352, 1
  %355 = add nuw nsw i32 %323, 540
  %356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = extractvalue %dx.types.ResRet.f32 %356, 1
  %359 = add nuw nsw i32 %323, 548
  %360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = add nuw nsw i32 %323, 552
  %363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 0
  %365 = extractvalue %dx.types.ResRet.f32 %363, 1
  %366 = extractvalue %dx.types.ResRet.f32 %363, 2
  %367 = add nuw nsw i32 %323, 596
  %368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = extractvalue %dx.types.ResRet.f32 %368, 1
  %371 = add nuw nsw i32 %323, 620
  %372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.f32 %372, 0
  %374 = extractvalue %dx.types.ResRet.f32 %372, 1
  %375 = add nuw nsw i32 %323, 628
  %376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = extractvalue %dx.types.ResRet.f32 %376, 1
  %379 = extractvalue %dx.types.ResRet.f32 %376, 2
  %380 = extractvalue %dx.types.ResRet.f32 %376, 3
  %381 = add nuw nsw i32 %323, 648
  %382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.f32 %382, 0
  %384 = add nuw nsw i32 %323, 812
  %385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = add nuw nsw i32 %323, 816
  %388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 1
  %390 = add nuw nsw i32 %323, 852
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = add nuw nsw i32 %323, 860
  %394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.f32 %394, 2
  %396 = add nuw nsw i32 %323, 896
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = add nuw nsw i32 %323, 900
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = add nuw nsw i32 %323, 904
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = lshr i32 %278, 24
  %406 = uitofp i32 %405 to float
  %407 = fmul fast float %406, 0x3F70101020000000
  %408 = and i32 %325, 128
  %409 = icmp ne i32 %408, 0
  %410 = extractvalue %dx.types.CBufRet.i32 %309, 0
  %411 = and i32 %410, 512
  %412 = icmp ne i32 %411, 0
  %413 = and i1 %409, %412
  %414 = select i1 %413, float 0.000000e+00, float %316
  %415 = fadd fast float %414, %407
  %416 = call float @dx.op.unary.f32(i32 7, float %415)  ; Saturate(value)
  %417 = fmul fast float %416, 2.550000e+02
  %418 = fptoui float %417 to i32
  %419 = shl i32 %418, 24
  %420 = and i32 %278, 16777215
  %421 = or i32 %419, %420
  %422 = fcmp fast ole float %67, 0x3FA4B5DCC0000000
  %423 = fmul fast float %67, 0x3FB3D07220000000
  %424 = fadd fast float %67, 0x3FAC28F5C0000000
  %425 = fmul fast float %424, 0x3FEE54EDE0000000
  %426 = call float @dx.op.unary.f32(i32 23, float %425)  ; Log(value)
  %427 = fmul fast float %426, 0x4003333340000000
  %428 = call float @dx.op.unary.f32(i32 21, float %427)  ; Exp(value)
  %429 = select i1 %422, float %423, float %428
  %430 = call float @dx.op.unary.f32(i32 7, float %429)  ; Saturate(value)
  %431 = fmul fast float %369, %269
  %432 = fadd fast float %431, %370
  %433 = call float @dx.op.unary.f32(i32 7, float %432)  ; Saturate(value)
  %434 = call float @dx.op.binary.f32(i32 35, float %430, float %433)  ; FMax(a,b)
  %435 = add i32 %401, 0
  %436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %435, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.f32 %437, 0
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 0
  %441 = extractvalue %dx.types.CBufRet.f32 %439, 1
  %442 = fadd fast float %440, %142
  %443 = fadd fast float %441, %143
  %444 = fmul fast float %142, %142
  %445 = fmul fast float %143, %143
  %446 = fadd fast float %444, %445
  %447 = fmul fast float %144, %144
  %448 = fadd fast float %446, %447
  %449 = call float @dx.op.unary.f32(i32 24, float %448)  ; Sqrt(value)
  %450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.f32 %450, 0
  %452 = fcmp fast ogt float %449, %451
  %453 = zext i1 %452 to i32
  %454 = extractvalue %dx.types.CBufRet.f32 %450, 1
  %455 = fcmp fast ogt float %449, %454
  %456 = zext i1 %455 to i32
  %457 = add nuw nsw i32 %456, %453
  %458 = extractvalue %dx.types.CBufRet.f32 %450, 2
  %459 = fcmp fast ogt float %449, %458
  %460 = zext i1 %459 to i32
  %461 = add nuw nsw i32 %457, %460
  %462 = icmp ult i32 %461, 3
  %463 = zext i1 %462 to i32
  %464 = shl nuw nsw i32 %461, 2
  %465 = add nuw nsw i32 %464, 48
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 %465)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 1
  %468 = fcmp fast ogt float %449, %467
  %469 = zext i1 %468 to i32
  %470 = or i32 %464, 1
  %471 = add nuw nsw i32 %470, 48
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 %471)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 1
  %474 = fcmp fast ogt float %449, %473
  %475 = zext i1 %474 to i32
  %476 = add nuw nsw i32 %475, %469
  %477 = or i32 %464, 2
  %478 = add nuw nsw i32 %477, 48
  %479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 %478)  ; CBufferLoadLegacy(handle,regIndex)
  %480 = extractvalue %dx.types.CBufRet.f32 %479, 1
  %481 = fcmp fast ogt float %449, %480
  %482 = zext i1 %481 to i32
  %483 = add nuw nsw i32 %476, %482
  %484 = add i32 %334, -1
  %485 = call i32 @dx.op.binary.i32(i32 40, i32 %483, i32 %484)  ; UMin(a,b)
  %486 = add i32 %464, %485
  %487 = call i32 @dx.op.binary.i32(i32 40, i32 %486, i32 12)  ; UMin(a,b)
  %488 = add i32 %487, 48
  %489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 %488)  ; CBufferLoadLegacy(handle,regIndex)
  %490 = extractvalue %dx.types.CBufRet.f32 %489, 0
  %491 = fcmp fast oge float %449, %490
  %492 = zext i1 %491 to i32
  %493 = call i32 @dx.op.binary.i32(i32 40, i32 %334, i32 %463)  ; UMin(a,b)
  %494 = call i32 @dx.op.binary.i32(i32 40, i32 %492, i32 %493)  ; UMin(a,b)
  %495 = add i32 %494, %334
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %675, label %497

; <label>:497                                     ; preds = %318
  br label %498

; <label>:498                                     ; preds = %498, %497
  %499 = phi float [ %671, %498 ], [ 0.000000e+00, %497 ]
  %500 = phi float [ %663, %498 ], [ 0.000000e+00, %497 ]
  %501 = phi float [ %664, %498 ], [ 0.000000e+00, %497 ]
  %502 = phi i32 [ %510, %498 ], [ %487, %497 ]
  %503 = phi i32 [ %672, %498 ], [ 0, %497 ]
  %504 = add i32 %503, %502
  %505 = and i32 %504, -4
  %506 = add i32 %505, %334
  %507 = icmp uge i32 %504, %506
  %508 = sub i32 4, %334
  %509 = select i1 %507, i32 %508, i32 0
  %510 = add i32 %509, %502
  %511 = add i32 %509, %504
  %512 = and i32 %511, 3
  %513 = lshr i32 %511, 2
  %514 = add i32 %511, 32
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 %514)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 0
  %517 = extractvalue %dx.types.CBufRet.f32 %515, 1
  %518 = extractvalue %dx.types.CBufRet.f32 %515, 2
  %519 = extractvalue %dx.types.CBufRet.f32 %515, 3
  %520 = fmul fast float %516, %449
  %521 = fadd fast float %520, %517
  %522 = call float @dx.op.unary.f32(i32 7, float %521)  ; Saturate(value)
  %523 = fmul fast float %518, %449
  %524 = fadd fast float %523, %519
  %525 = call float @dx.op.unary.f32(i32 7, float %524)  ; Saturate(value)
  %526 = call float @dx.op.binary.f32(i32 36, float %522, float %525)  ; FMin(a,b)
  %527 = mul nuw nsw i32 %512, 72
  %528 = add nuw nsw i32 %347, %527
  %529 = add nuw nsw i32 %528, 16
  %530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = extractvalue %dx.types.ResRet.f32 %530, 1
  %533 = extractvalue %dx.types.ResRet.f32 %530, 2
  %534 = extractvalue %dx.types.ResRet.f32 %530, 3
  %535 = add nuw nsw i32 %528, 36
  %536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = add nuw nsw i32 %528, 56
  %539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.f32 %539, 0
  %541 = fmul fast float %256, 3.906250e-03
  %542 = fmul fast float %541, %346
  %543 = fmul fast float %542, %537
  %544 = fmul fast float %543, %540
  %545 = extractvalue %dx.types.ResRet.f32 %539, 1
  %546 = fadd fast float %544, %545
  %547 = call float @dx.op.binary.f32(i32 35, float %546, float 0.000000e+00)  ; FMax(a,b)
  %548 = add nuw nsw i32 %528, 32
  %549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = fmul fast float %537, %251
  %552 = fmul fast float %537, %252
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 1
  %555 = add nuw nsw i32 %528, 40
  %556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.f32 %556, 0
  %558 = extractvalue %dx.types.ResRet.f32 %556, 1
  %559 = extractvalue %dx.types.ResRet.f32 %556, 2
  %560 = extractvalue %dx.types.ResRet.f32 %556, 3
  %561 = fadd fast float %554, %182
  %562 = fadd fast float %561, %559
  %563 = fmul fast float %561, %558
  %564 = call float @dx.op.unary.f32(i32 29, float %563)  ; Round_z(value)
  %565 = fmul fast float %557, %564
  %566 = fsub fast float %561, %565
  %567 = fmul fast float %562, %558
  %568 = call float @dx.op.unary.f32(i32 29, float %567)  ; Round_z(value)
  %569 = fmul fast float %568, %557
  %570 = fsub fast float %562, %569
  %571 = fmul fast float %566, %551
  %572 = fmul fast float %566, %552
  %573 = fmul fast float %570, %551
  %574 = fmul fast float %570, %552
  %575 = fsub fast float %442, %571
  %576 = fsub fast float %443, %572
  %577 = fsub fast float %442, %573
  %578 = fsub fast float %443, %574
  %579 = fsub fast float %559, %566
  %580 = call float @dx.op.unary.f32(i32 6, float %579)  ; FAbs(value)
  %581 = fmul fast float %580, %560
  %582 = call float @dx.op.unary.f32(i32 7, float %581)  ; Saturate(value)
  %583 = fmul fast float %328, 4.000000e+00
  %584 = uitofp i32 %513 to float
  %585 = fadd fast float %584, %583
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 0
  %588 = extractvalue %dx.types.CBufRet.f32 %586, 1
  %589 = extractvalue %dx.types.CBufRet.f32 %586, 2
  %590 = extractvalue %dx.types.CBufRet.f32 %586, 3
  %591 = getelementptr inbounds [4 x float], [4 x float]* %63, i32 0, i32 0
  store float %587, float* %591, align 4
  %592 = getelementptr inbounds [4 x float], [4 x float]* %63, i32 0, i32 1
  store float %588, float* %592, align 4
  %593 = getelementptr inbounds [4 x float], [4 x float]* %63, i32 0, i32 2
  store float %589, float* %593, align 4
  %594 = getelementptr inbounds [4 x float], [4 x float]* %63, i32 0, i32 3
  store float %590, float* %594, align 4
  %595 = getelementptr inbounds [4 x float], [4 x float]* %63, i32 0, i32 %513
  %596 = load float, float* %595, align 4, !tbaa !97, !noalias !101
  %597 = fmul fast float %596, %331
  %598 = fmul fast float %575, %531
  %599 = call float @dx.op.tertiary.f32(i32 46, float %532, float %576, float %598)  ; FMad(a,b,c)
  %600 = fmul fast float %575, %533
  %601 = call float @dx.op.tertiary.f32(i32 46, float %534, float %576, float %600)  ; FMad(a,b,c)
  %602 = add nuw nsw i32 %528, 8
  %603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = extractvalue %dx.types.ResRet.f32 %603, 1
  %606 = fadd fast float %604, %599
  %607 = fadd fast float %605, %601
  %608 = fmul fast float %606, %597
  %609 = fmul fast float %607, %597
  %610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = extractvalue %dx.types.ResRet.f32 %610, 1
  %613 = fmul fast float %608, %611
  %614 = fmul fast float %609, %612
  %615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %616 = extractvalue %dx.types.CBufRet.f32 %615, 2
  %617 = fadd fast float %613, %616
  %618 = fadd fast float %614, %616
  %619 = fmul fast float %577, %531
  %620 = call float @dx.op.tertiary.f32(i32 46, float %532, float %578, float %619)  ; FMad(a,b,c)
  %621 = fmul fast float %577, %533
  %622 = call float @dx.op.tertiary.f32(i32 46, float %534, float %578, float %621)  ; FMad(a,b,c)
  %623 = fadd fast float %604, %620
  %624 = fadd fast float %605, %622
  %625 = fmul fast float %623, %597
  %626 = fmul fast float %624, %597
  %627 = fmul fast float %625, %611
  %628 = fmul fast float %626, %612
  %629 = fadd fast float %627, %616
  %630 = fadd fast float %628, %616
  %631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %55, float %617, float %618, float %585, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %632 = extractvalue %dx.types.ResRet.f32 %631, 0
  %633 = extractvalue %dx.types.ResRet.f32 %631, 1
  %634 = extractvalue %dx.types.ResRet.f32 %631, 3
  %635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %55, float %629, float %630, float %585, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %636 = extractvalue %dx.types.ResRet.f32 %635, 0
  %637 = extractvalue %dx.types.ResRet.f32 %635, 1
  %638 = extractvalue %dx.types.ResRet.f32 %635, 3
  %639 = fsub fast float %636, %632
  %640 = fsub fast float %637, %633
  %641 = fsub fast float %638, %634
  %642 = fmul fast float %639, %582
  %643 = fmul fast float %640, %582
  %644 = fmul fast float %641, %582
  %645 = fadd fast float %642, %632
  %646 = fadd fast float %643, %633
  %647 = fadd fast float %644, %634
  %648 = fmul fast float %645, 2.000000e+00
  %649 = fmul fast float %646, 2.000000e+00
  %650 = fadd fast float %648, -1.000000e+00
  %651 = fadd fast float %649, -1.000000e+00
  %652 = fmul fast float %650, %531
  %653 = call float @dx.op.tertiary.f32(i32 46, float %651, float %533, float %652)  ; FMad(a,b,c)
  %654 = fmul fast float %650, %532
  %655 = call float @dx.op.tertiary.f32(i32 46, float %651, float %534, float %654)  ; FMad(a,b,c)
  %656 = fmul fast float %526, %438
  %657 = fmul fast float %656, %547
  %658 = fmul fast float %657, %550
  %659 = fmul fast float %653, %658
  %660 = fmul fast float %659, %611
  %661 = fmul fast float %655, %658
  %662 = fmul fast float %661, %612
  %663 = fadd fast float %660, %500
  %664 = fadd fast float %662, %501
  %665 = add nuw nsw i32 %528, 64
  %666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.f32 %666, 0
  %668 = fmul fast float %667, %647
  %669 = extractvalue %dx.types.ResRet.f32 %666, 1
  %670 = fadd fast float %668, %669
  %671 = call float @dx.op.binary.f32(i32 35, float %499, float %670)  ; FMax(a,b)
  %672 = add nuw i32 %503, 1
  %673 = icmp eq i32 %672, %495
  br i1 %673, label %674, label %498

; <label>:674                                     ; preds = %498
  br label %675

; <label>:675                                     ; preds = %674, %318
  %676 = phi float [ 0.000000e+00, %318 ], [ %671, %674 ]
  %677 = phi float [ 0.000000e+00, %318 ], [ %663, %674 ]
  %678 = phi float [ 0.000000e+00, %318 ], [ %664, %674 ]
  %679 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float 1.000000e+00, float %677, float %678, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %680 = call float @dx.op.unary.f32(i32 25, float %679)  ; Rsqrt(value)
  %681 = fmul fast float %676, %373
  %682 = fadd fast float %681, %374
  %683 = call float @dx.op.unary.f32(i32 7, float %682)  ; Saturate(value)
  %684 = fmul fast float %677, %316
  %685 = fmul fast float %684, %680
  %686 = fmul fast float %678, %316
  %687 = fmul fast float %686, %680
  %688 = fadd fast float %685, %279
  %689 = fadd fast float %687, %280
  %690 = fadd fast float %683, %434
  %691 = icmp ne i32 %392, 0
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 0
  %694 = fmul fast float %693, %76
  %695 = extractvalue %dx.types.CBufRet.f32 %692, 1
  %696 = fadd fast float %694, %695
  %697 = call float @dx.op.unary.f32(i32 7, float %696)  ; Saturate(value)
  %698 = fmul fast float %438, %697
  %699 = select i1 %691, float %698, float 0.000000e+00
  %700 = fcmp fast ogt float %699, 0.000000e+00
  br i1 %700, label %701, label %832

; <label>:701                                     ; preds = %675
  %702 = add i32 %206, 0
  %703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %702, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %704 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %703, i32 0)  ; GetDimensions(handle,mipLevel)
  %705 = extractvalue %dx.types.Dimensions %704, 0
  %706 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %705)  ; FirstbitLo(value)
  %707 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.i32 %707, 1
  %709 = sub nsw i32 %708, %706
  %710 = sitofp i32 %709 to float
  %711 = fsub fast float %366, %710
  %712 = call float @dx.op.binary.f32(i32 35, float %711, float 0.000000e+00)  ; FMax(a,b)
  %713 = fmul fast float %350, %213
  %714 = fmul fast float %350, %214
  %715 = fmul fast float %364, %68
  %716 = fmul fast float %364, %69
  %717 = call float @dx.op.unary.f32(i32 22, float %715)  ; Frc(value)
  %718 = call float @dx.op.unary.f32(i32 22, float %716)  ; Frc(value)
  %719 = fmul fast float %717, 2.000000e+00
  %720 = fmul fast float %718, 2.000000e+00
  %721 = fadd fast float %719, -1.000000e+00
  %722 = fadd fast float %720, -1.000000e+00
  %723 = call float @dx.op.unary.f32(i32 6, float %721)  ; FAbs(value)
  %724 = call float @dx.op.unary.f32(i32 6, float %722)  ; FAbs(value)
  %725 = fsub fast float 1.000000e+00, %723
  %726 = fmul fast float %725, %724
  %727 = fsub fast float %725, %726
  %728 = getelementptr [4 x float], [4 x float]* %84, i32 0, i32 0
  store float %727, float* %728, align 4, !tbaa !97, !noalias !106
  %729 = fmul fast float %724, %723
  %730 = fsub fast float %723, %729
  %731 = getelementptr [4 x float], [4 x float]* %84, i32 0, i32 1
  store float %730, float* %731, align 4, !tbaa !97, !noalias !106
  %732 = getelementptr [4 x float], [4 x float]* %84, i32 0, i32 2
  store float %726, float* %732, align 4, !tbaa !97, !noalias !106
  %733 = getelementptr [4 x float], [4 x float]* %84, i32 0, i32 3
  store float %729, float* %733, align 4, !tbaa !97, !noalias !106
  br label %734

; <label>:734                                     ; preds = %734, %701
  %735 = phi i32 [ 0, %701 ], [ %829, %734 ]
  %736 = phi float [ %688, %701 ], [ %827, %734 ]
  %737 = phi float [ %689, %701 ], [ %828, %734 ]
  %738 = mul i32 %735, 2
  %739 = add i32 0, %738
  %740 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %739
  %741 = load float, float* %740, align 4
  %742 = mul i32 %735, 2
  %743 = add i32 1, %742
  %744 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %743
  %745 = load float, float* %744, align 4
  %746 = fmul fast float %741, 5.000000e-01
  %747 = fmul fast float %745, 5.000000e-01
  %748 = fsub fast float 1.000000e+00, %741
  %749 = fsub fast float 1.000000e+00, %745
  %750 = fmul fast float %748, 5.000000e-01
  %751 = fmul fast float %749, 5.000000e-01
  %752 = fadd fast float %746, %715
  %753 = fadd fast float %747, %716
  %754 = call float @dx.op.unary.f32(i32 27, float %752)  ; Round_ni(value)
  %755 = call float @dx.op.unary.f32(i32 27, float %753)  ; Round_ni(value)
  %756 = fadd fast float %754, %750
  %757 = fadd fast float %755, %751
  %758 = fmul fast float %756, %365
  %759 = fmul fast float %757, %365
  %760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.f32 %760, 0
  %762 = fmul fast float %758, %761
  %763 = fmul fast float %759, %761
  %764 = extractvalue %dx.types.CBufRet.f32 %760, 1
  %765 = fadd fast float %762, %764
  %766 = fadd fast float %763, %764
  %767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %703, %dx.types.Handle %57, float %765, float %766, float %202, float undef, i32 0, i32 0, i32 undef, float %712)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %768 = extractvalue %dx.types.ResRet.f32 %767, 0
  %769 = extractvalue %dx.types.ResRet.f32 %767, 1
  %770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.f32 %770, 3
  %772 = fmul fast float %771, 2.000000e+00
  %773 = fmul fast float %772, %768
  %774 = fmul fast float %772, %769
  %775 = fsub fast float %773, %771
  %776 = fsub fast float %774, %771
  %777 = fmul fast float %775, %775
  %778 = fmul fast float %776, %776
  %779 = fadd fast float %777, %778
  %780 = call float @dx.op.unary.f32(i32 24, float %779)  ; Sqrt(value)
  %781 = fcmp fast ogt float %780, 0.000000e+00
  %782 = fdiv fast float 1.000000e+00, %780
  %783 = fmul fast float %775, %782
  %784 = fmul fast float %776, %782
  %785 = select i1 %781, float %783, float 0.000000e+00
  %786 = select i1 %781, float %784, float 0.000000e+00
  %787 = add i32 %392, 0
  %788 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %787, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %790 = extractvalue %dx.types.CBufRet.f32 %789, 1
  %791 = fmul fast float %361, %350
  %792 = fmul fast float %791, %780
  %793 = fsub fast float -0.000000e+00, %785
  %794 = fmul fast float %786, %713
  %795 = call float @dx.op.tertiary.f32(i32 46, float %793, float %714, float %794)  ; FMad(a,b,c)
  %796 = fmul fast float %785, %713
  %797 = call float @dx.op.tertiary.f32(i32 46, float %786, float %714, float %796)  ; FMad(a,b,c)
  %798 = fmul fast float %792, %790
  %799 = fsub fast float %797, %798
  %800 = fmul fast float %795, %353
  %801 = fmul fast float %799, %354
  %802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %803 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %788, %dx.types.Handle %802, float %800, float %801, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %804 = extractvalue %dx.types.ResRet.f32 %803, 1
  %805 = extractvalue %dx.types.ResRet.f32 %803, 3
  %806 = fadd fast float %804, %805
  %807 = fmul fast float %806, %395
  %808 = fsub fast float %807, %395
  %809 = fsub fast float %804, %805
  %810 = fmul fast float %809, %395
  %811 = fmul fast float %808, %786
  %812 = call float @dx.op.tertiary.f32(i32 46, float %785, float %810, float %811)  ; FMad(a,b,c)
  %813 = fmul fast float %808, %793
  %814 = call float @dx.op.tertiary.f32(i32 46, float %786, float %810, float %813)  ; FMad(a,b,c)
  %815 = fmul fast float %812, %353
  %816 = fmul fast float %814, %354
  %817 = fmul fast float %357, %256
  %818 = fadd fast float %817, %358
  %819 = call float @dx.op.binary.f32(i32 35, float %818, float 0.000000e+00)  ; FMax(a,b)
  %820 = fmul fast float %699, %316
  %821 = fmul fast float %820, %819
  %822 = getelementptr [4 x float], [4 x float]* %84, i32 0, i32 %735
  %823 = load float, float* %822, align 4, !tbaa !97, !noalias !106
  %824 = fmul fast float %821, %823
  %825 = fmul fast float %815, %824
  %826 = fmul fast float %816, %824
  %827 = fadd fast float %825, %736
  %828 = fadd fast float %826, %737
  %829 = add nuw nsw i32 %735, 1
  %830 = icmp eq i32 %829, 4
  br i1 %830, label %831, label %734, !llvm.loop !109

; <label>:831                                     ; preds = %734
  br label %832

; <label>:832                                     ; preds = %831, %675
  %833 = phi float [ %688, %675 ], [ %827, %831 ]
  %834 = phi float [ %689, %675 ], [ %828, %831 ]
  %835 = and i32 %325, 16
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %903, label %837

; <label>:837                                     ; preds = %832
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 0
  %840 = extractvalue %dx.types.CBufRet.f32 %838, 1
  %841 = fadd fast float %839, %142
  %842 = fadd fast float %840, %143
  %843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %844 = extractvalue %dx.types.CBufRet.f32 %843, 0
  %845 = extractvalue %dx.types.CBufRet.f32 %843, 1
  %846 = fsub fast float %841, %844
  %847 = fsub fast float %842, %845
  %848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.f32 %848, 2
  %850 = fmul fast float %846, %849
  %851 = fmul fast float %847, %849
  %852 = fadd fast float %850, 5.000000e-01
  %853 = fadd fast float %851, 5.000000e-01
  %854 = fcmp fast olt float %852, 0.000000e+00
  %855 = fcmp fast olt float %853, 0.000000e+00
  %856 = or i1 %854, %855
  %857 = fcmp fast oge float %852, 1.000000e+00
  %858 = fcmp fast oge float %853, 1.000000e+00
  %859 = or i1 %857, %858
  %860 = or i1 %856, %859
  br i1 %860, label %894, label %861

; <label>:861                                     ; preds = %837
  %862 = extractvalue %dx.types.CBufRet.f32 %838, 2
  %863 = fadd fast float %862, %144
  %864 = fmul fast float %849, %841
  %865 = fmul fast float %849, %842
  %866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %867 = extractvalue %dx.types.CBufRet.f32 %866, 2
  %868 = fsub fast float %863, %867
  %869 = extractvalue %dx.types.CBufRet.f32 %866, 1
  %870 = fmul fast float %868, %869
  %871 = call float @dx.op.unary.f32(i32 7, float %870)  ; Saturate(value)
  %872 = call float @dx.op.binary.f32(i32 36, float %853, float %871)  ; FMin(a,b)
  %873 = call float @dx.op.binary.f32(i32 36, float %852, float %872)  ; FMin(a,b)
  %874 = call float @dx.op.binary.f32(i32 35, float %853, float %871)  ; FMax(a,b)
  %875 = call float @dx.op.binary.f32(i32 35, float %852, float %874)  ; FMax(a,b)
  %876 = fsub fast float 1.000000e+00, %875
  %877 = call float @dx.op.binary.f32(i32 36, float %873, float %876)  ; FMin(a,b)
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 3
  %880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %881 = extractvalue %dx.types.CBufRet.f32 %880, 1
  %882 = call float @dx.op.binary.f32(i32 35, float %881, float %879)  ; FMax(a,b)
  %883 = fsub fast float %882, %881
  %884 = fsub fast float %877, %881
  %885 = fdiv fast float %884, %883
  %886 = call float @dx.op.unary.f32(i32 7, float %885)  ; Saturate(value)
  %887 = fmul fast float %886, 2.000000e+00
  %888 = fsub fast float 3.000000e+00, %887
  %889 = fmul fast float %886, %886
  %890 = fmul fast float %889, %888
  %891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %55, float %864, float %865, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %892 = extractvalue %dx.types.ResRet.f32 %891, 0
  %893 = fmul fast float %890, %892
  br label %894

; <label>:894                                     ; preds = %861, %837
  %895 = phi float [ %893, %861 ], [ 0.000000e+00, %837 ]
  %896 = fmul fast float %389, %213
  %897 = fmul fast float %389, %214
  %898 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %899 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %436, %dx.types.Handle %898, float %896, float %897, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %900 = extractvalue %dx.types.ResRet.f32 %899, 0
  %901 = fmul fast float %900, %895
  %902 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %901)  ; FMax(a,b)
  br label %903

; <label>:903                                     ; preds = %894, %832
  %904 = phi float [ %902, %894 ], [ 0.000000e+00, %832 ]
  %905 = and i32 %325, 8
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %923, label %907

; <label>:907                                     ; preds = %903
  %908 = fadd fast float %386, 1.000000e+00
  %909 = fmul fast float %690, %908
  %910 = fsub fast float %909, %386
  %911 = fsub fast float %908, %910
  %912 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  %913 = fsub fast float 1.000000e+00, %909
  %914 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  %915 = fsub fast float %912, %914
  %916 = fsub fast float %904, %914
  %917 = fdiv fast float %916, %915
  %918 = call float @dx.op.unary.f32(i32 7, float %917)  ; Saturate(value)
  %919 = fmul fast float %918, 2.000000e+00
  %920 = fsub fast float 3.000000e+00, %919
  %921 = fmul fast float %918, %918
  %922 = fmul fast float %921, %920
  br label %923

; <label>:923                                     ; preds = %907, %903
  %924 = phi float [ %922, %907 ], [ %904, %903 ]
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 3
  %927 = fmul fast float %926, %924
  %928 = and i32 %325, 32
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %946, label %930

; <label>:930                                     ; preds = %923
  %931 = add i32 %404, 0
  %932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %931, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %933 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %932, %dx.types.Handle %56, float %927, float %383, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %934 = extractvalue %dx.types.ResRet.f32 %933, 0
  %935 = extractvalue %dx.types.ResRet.f32 %933, 1
  %936 = extractvalue %dx.types.ResRet.f32 %933, 2
  %937 = extractvalue %dx.types.ResRet.f32 %933, 3
  %938 = and i32 %398, 255
  %939 = uitofp i32 %938 to float
  %940 = lshr i32 %398, 8
  %941 = and i32 %940, 255
  %942 = uitofp i32 %941 to float
  %943 = fmul fast float %937, %939
  %944 = fadd fast float %943, %942
  %945 = fmul fast float %944, 0x3F70101000000000
  br label %946

; <label>:946                                     ; preds = %930, %923
  %947 = phi float [ %934, %930 ], [ %377, %923 ]
  %948 = phi float [ %935, %930 ], [ %378, %923 ]
  %949 = phi float [ %936, %930 ], [ %379, %923 ]
  %950 = phi float [ %945, %930 ], [ %380, %923 ]
  %951 = fsub fast float %947, %337
  %952 = fsub fast float %948, %338
  %953 = fsub fast float %949, %339
  %954 = fmul fast float %951, %927
  %955 = fmul fast float %952, %927
  %956 = fmul fast float %953, %927
  %957 = fadd fast float %954, %337
  %958 = fadd fast float %955, %338
  %959 = fadd fast float %956, %339
  %960 = fsub fast float %950, %340
  %961 = fmul fast float %960, %927
  %962 = fadd fast float %961, %340
  %963 = and i32 %282, 65535
  %964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %963)  ; LegacyF16ToF32(value)
  %965 = lshr i32 %282, 16
  %966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %965)  ; LegacyF16ToF32(value)
  %967 = and i32 %283, 65535
  %968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %967)  ; LegacyF16ToF32(value)
  %969 = lshr i32 %283, 16
  %970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %969)  ; LegacyF16ToF32(value)
  %971 = fmul fast float %957, %316
  %972 = fmul fast float %958, %316
  %973 = fmul fast float %959, %316
  %974 = fmul fast float %962, %316
  %975 = fadd fast float %964, %971
  %976 = fadd fast float %966, %972
  %977 = fadd fast float %968, %973
  %978 = fadd fast float %970, %974
  %979 = call i32 @dx.op.legacyF32ToF16(i32 130, float %975)  ; LegacyF32ToF16(value)
  %980 = call i32 @dx.op.legacyF32ToF16(i32 130, float %976)  ; LegacyF32ToF16(value)
  %981 = shl i32 %980, 16
  %982 = or i32 %981, %979
  %983 = call i32 @dx.op.legacyF32ToF16(i32 130, float %977)  ; LegacyF32ToF16(value)
  %984 = call i32 @dx.op.legacyF32ToF16(i32 130, float %978)  ; LegacyF32ToF16(value)
  %985 = shl i32 %984, 16
  %986 = or i32 %985, %983
  %987 = and i32 %284, 65535
  %988 = call float @dx.op.legacyF16ToF32(i32 131, i32 %987)  ; LegacyF16ToF32(value)
  %989 = lshr i32 %284, 16
  %990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %989)  ; LegacyF16ToF32(value)
  %991 = fmul fast float %343, %316
  %992 = fadd fast float %988, %316
  %993 = fadd fast float %990, %991
  %994 = call i32 @dx.op.legacyF32ToF16(i32 130, float %992)  ; LegacyF32ToF16(value)
  %995 = call i32 @dx.op.legacyF32ToF16(i32 130, float %993)  ; LegacyF32ToF16(value)
  %996 = shl i32 %995, 16
  %997 = or i32 %996, %994
  br label %998

; <label>:998                                     ; preds = %946, %277
  %999 = phi i32 [ %421, %946 ], [ %278, %277 ]
  %1000 = phi float [ %833, %946 ], [ %279, %277 ]
  %1001 = phi float [ %834, %946 ], [ %280, %277 ]
  %1002 = phi i32 [ %982, %946 ], [ %282, %277 ]
  %1003 = phi i32 [ %986, %946 ], [ %283, %277 ]
  %1004 = phi i32 [ %997, %946 ], [ %284, %277 ]
  %1005 = icmp eq i32 %289, 0
  br i1 %1005, label %1006, label %277

; <label>:1006                                    ; preds = %998
  br label %1007

; <label>:1007                                    ; preds = %1006, %0
  %1008 = phi i32 [ %192, %0 ], [ %999, %1006 ]
  %1009 = phi float [ 0.000000e+00, %0 ], [ %1000, %1006 ]
  %1010 = phi float [ 0.000000e+00, %0 ], [ %1001, %1006 ]
  %1011 = phi i32 [ %169, %0 ], [ %1002, %1006 ]
  %1012 = phi i32 [ %169, %0 ], [ %1003, %1006 ]
  %1013 = phi i32 [ %169, %0 ], [ %1004, %1006 ]
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 2
  %1016 = fmul fast float %1015, 0x3FE3C6EF40000000
  %1017 = frem fast float %87, 2.560000e+02
  %1018 = frem fast float %88, 2.560000e+02
  %1019 = fptoui float %1017 to i32
  %1020 = fptoui float %1018 to i32
  %1021 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %32, i32 0, i32 %1019, i32 %1020, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 0
  %1023 = extractvalue %dx.types.ResRet.f32 %1021, 1
  %1024 = fadd fast float %1022, %1016
  %1025 = fadd fast float %1023, %1016
  %1026 = call float @dx.op.unary.f32(i32 22, float %1024)  ; Frc(value)
  %1027 = call float @dx.op.unary.f32(i32 22, float %1025)  ; Frc(value)
  %1028 = fcmp fast ogt float %108, 0.000000e+00
  %1029 = fcmp fast olt float %108, 0.000000e+00
  %1030 = zext i1 %1028 to i32
  %1031 = zext i1 %1029 to i32
  %1032 = sub nsw i32 %1030, %1031
  %1033 = sitofp i32 %1032 to float
  %1034 = fadd fast float %1033, %108
  %1035 = fdiv fast float -1.000000e+00, %1034
  %1036 = fmul fast float %106, %107
  %1037 = fmul fast float %1036, %1035
  %1038 = fmul fast float %106, %106
  %1039 = fmul fast float %1038, %1033
  %1040 = fmul fast float %1039, %1035
  %1041 = fadd fast float %1040, 1.000000e+00
  %1042 = fmul fast float %1037, %1033
  %1043 = fmul fast float %106, %1033
  %1044 = fsub fast float -0.000000e+00, %1043
  %1045 = fmul fast float %107, %107
  %1046 = fmul fast float %1045, %1035
  %1047 = fadd fast float %1046, %1033
  %1048 = fsub fast float -0.000000e+00, %107
  %1049 = and i32 %1011, 65535
  %1050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1049)  ; LegacyF16ToF32(value)
  %1051 = lshr i32 %1011, 16
  %1052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1051)  ; LegacyF16ToF32(value)
  %1053 = and i32 %1012, 65535
  %1054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1053)  ; LegacyF16ToF32(value)
  %1055 = lshr i32 %1012, 16
  %1056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1055)  ; LegacyF16ToF32(value)
  %1057 = and i32 %1013, 65535
  %1058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1057)  ; LegacyF16ToF32(value)
  %1059 = lshr i32 %1013, 16
  %1060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1059)  ; LegacyF16ToF32(value)
  %1061 = call float @dx.op.unary.f32(i32 7, float %1060)  ; Saturate(value)
  %1062 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %1063 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %1064 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %1065 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %1066 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %1067 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %1068 = fadd fast float %1062, %142
  %1069 = fadd fast float %1063, %143
  %1070 = fadd fast float %1064, %144
  %1071 = fadd fast float %1065, %142
  %1072 = fadd fast float %1066, %143
  %1073 = fadd fast float %1067, %144
  %1074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1075 = extractvalue %dx.types.CBufRet.f32 %1074, 0
  %1076 = extractvalue %dx.types.CBufRet.f32 %1074, 1
  %1077 = extractvalue %dx.types.CBufRet.f32 %1074, 2
  %1078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1079 = extractvalue %dx.types.CBufRet.f32 %1078, 2
  %1080 = extractvalue %dx.types.CBufRet.f32 %1078, 3
  %1081 = fmul fast float %1075, %87
  %1082 = fmul fast float %1081, %1079
  %1083 = fmul fast float %1076, %88
  %1084 = fmul fast float %1083, %1080
  %1085 = fptoui float %1082 to i32
  %1086 = fptoui float %1084 to i32
  %1087 = fadd fast float %1075, -1.000000e+00
  %1088 = fadd fast float %1076, -1.000000e+00
  %1089 = fptoui float %1087 to i32
  %1090 = fptoui float %1088 to i32
  %1091 = call i32 @dx.op.binary.i32(i32 40, i32 %1085, i32 %1089)  ; UMin(a,b)
  %1092 = call i32 @dx.op.binary.i32(i32 40, i32 %1086, i32 %1090)  ; UMin(a,b)
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 2
  %1095 = extractvalue %dx.types.CBufRet.f32 %1093, 3
  %1096 = fmul fast float %1094, %76
  %1097 = fsub fast float %1096, %1095
  %1098 = fadd fast float %1077, -1.000000e+00
  %1099 = call float @dx.op.binary.f32(i32 36, float %1097, float %1098)  ; FMin(a,b)
  %1100 = fptoui float %1099 to i32
  %1101 = fptoui float %1075 to i32
  %1102 = fptoui float %1076 to i32
  %1103 = mul i32 %1100, %1102
  %1104 = add i32 %1103, %1092
  %1105 = mul i32 %1104, %1101
  %1106 = add i32 %1105, %1091
  %1107 = shl i32 %1106, 2
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1107, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = and i32 %1109, 1023
  %1111 = lshr i32 %1109, 10
  %1112 = icmp eq i32 %1110, 0
  br i1 %1112, label %1506, label %1113

; <label>:1113                                    ; preds = %1007
  %1114 = and i32 %1109, 1023
  br label %1115

; <label>:1115                                    ; preds = %1235, %1113
  %1116 = phi float [ %1236, %1235 ], [ 0.000000e+00, %1113 ]
  %1117 = phi float [ %1237, %1235 ], [ 0.000000e+00, %1113 ]
  %1118 = phi float [ %1238, %1235 ], [ 0.000000e+00, %1113 ]
  %1119 = phi float [ %1239, %1235 ], [ %1009, %1113 ]
  %1120 = phi float [ %1240, %1235 ], [ %1010, %1113 ]
  %1121 = phi float [ %1241, %1235 ], [ %1058, %1113 ]
  %1122 = phi float [ %1242, %1235 ], [ %1061, %1113 ]
  %1123 = phi float [ %1243, %1235 ], [ 0.000000e+00, %1113 ]
  %1124 = phi float [ %1244, %1235 ], [ %1056, %1113 ]
  %1125 = phi float [ %1245, %1235 ], [ %1050, %1113 ]
  %1126 = phi float [ %1246, %1235 ], [ %1052, %1113 ]
  %1127 = phi float [ %1247, %1235 ], [ %1054, %1113 ]
  %1128 = phi i32 [ %1184, %1235 ], [ 0, %1113 ]
  %1129 = add nuw nsw i32 %1128, %1111
  %1130 = shl i32 %1129, 2
  %1131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1130, i32 undef)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.i32 %1131, 0
  %1133 = shl i32 %1132, 8
  %1134 = or i32 %1133, 48
  %1135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.ResRet.f32 %1135, 1
  %1138 = extractvalue %dx.types.ResRet.f32 %1135, 2
  %1139 = extractvalue %dx.types.ResRet.f32 %1135, 3
  %1140 = or i32 %1133, 64
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = extractvalue %dx.types.ResRet.i32 %1141, 1
  %1144 = or i32 %1133, 80
  %1145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.f32 %1145, 2
  %1147 = extractvalue %dx.types.ResRet.f32 %1145, 3
  %1148 = or i32 %1133, 96
  %1149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.ResRet.f32 %1149, 1
  %1152 = extractvalue %dx.types.ResRet.f32 %1149, 2
  %1153 = extractvalue %dx.types.ResRet.f32 %1149, 3
  %1154 = or i32 %1133, 112
  %1155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.f32 %1155, 2
  %1157 = or i32 %1133, 128
  %1158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.f32 %1158, 0
  %1160 = extractvalue %dx.types.ResRet.f32 %1158, 1
  %1161 = extractvalue %dx.types.ResRet.f32 %1158, 2
  %1162 = extractvalue %dx.types.ResRet.f32 %1158, 3
  %1163 = or i32 %1133, 144
  %1164 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  %1166 = extractvalue %dx.types.ResRet.f32 %1164, 1
  %1167 = extractvalue %dx.types.ResRet.f32 %1164, 2
  %1168 = extractvalue %dx.types.ResRet.f32 %1164, 3
  %1169 = or i32 %1133, 160
  %1170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.ResRet.f32 %1170, 1
  %1173 = extractvalue %dx.types.ResRet.f32 %1170, 2
  %1174 = or i32 %1133, 192
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = or i32 %1133, 208
  %1178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 0
  %1180 = or i32 %1133, 248
  %1181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.f32 %1181, 0
  %1183 = extractvalue %dx.types.ResRet.f32 %1181, 1
  %1184 = add nuw nsw i32 %1128, 1
  %1185 = bitcast float %1139 to i32
  %1186 = and i32 %1185, 512
  %1187 = icmp ne i32 %1186, 0
  %1188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.f32 %1188, 0
  %1190 = extractvalue %dx.types.ResRet.f32 %1188, 1
  %1191 = extractvalue %dx.types.ResRet.f32 %1188, 2
  %1192 = extractvalue %dx.types.ResRet.f32 %1188, 3
  %1193 = call float @dx.op.dot4.f32(i32 56, float %1189, float %1190, float %1191, float %1192, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1194 = or i32 %1133, 16
  %1195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.ResRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.ResRet.f32 %1195, 2
  %1199 = extractvalue %dx.types.ResRet.f32 %1195, 3
  %1200 = call float @dx.op.dot4.f32(i32 56, float %1196, float %1197, float %1198, float %1199, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1201 = or i32 %1133, 32
  %1202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.ResRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.ResRet.f32 %1202, 2
  %1206 = extractvalue %dx.types.ResRet.f32 %1202, 3
  %1207 = call float @dx.op.dot4.f32(i32 56, float %1203, float %1204, float %1205, float %1206, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1208 = call float @dx.op.unary.f32(i32 27, float %1193)  ; Round_ni(value)
  %1209 = call float @dx.op.unary.f32(i32 6, float %1208)  ; FAbs(value)
  %1210 = call float @dx.op.unary.f32(i32 27, float %1200)  ; Round_ni(value)
  %1211 = call float @dx.op.unary.f32(i32 6, float %1210)  ; FAbs(value)
  %1212 = call float @dx.op.unary.f32(i32 6, float %1207)  ; FAbs(value)
  %1213 = call float @dx.op.unary.f32(i32 27, float %1212)  ; Round_ni(value)
  %1214 = fadd fast float %1211, %1209
  %1215 = fadd fast float %1214, %1213
  %1216 = fcmp fast oeq float %1215, 0.000000e+00
  %1217 = call float @dx.op.dot4.f32(i32 56, float %1189, float %1190, float %1191, float %1192, float %1068, float %1069, float %1070, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1218 = call float @dx.op.dot4.f32(i32 56, float %1196, float %1197, float %1198, float %1199, float %1068, float %1069, float %1070, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1219 = call float @dx.op.dot4.f32(i32 56, float %1189, float %1190, float %1191, float %1192, float %1071, float %1072, float %1073, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1220 = call float @dx.op.dot4.f32(i32 56, float %1196, float %1197, float %1198, float %1199, float %1071, float %1072, float %1073, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1221 = fsub fast float %1217, %1193
  %1222 = fsub fast float %1219, %1193
  %1223 = fsub fast float %1218, %1200
  %1224 = fsub fast float %1220, %1200
  %1225 = call float @dx.op.dot3.f32(i32 55, float %1136, float %1137, float %1138, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %1226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1226, 2
  %1228 = call float @dx.op.unary.f32(i32 6, float %1225)  ; FAbs(value)
  %1229 = fadd fast float %1228, %1227
  %1230 = call float @dx.op.unary.f32(i32 7, float %1229)  ; Saturate(value)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1226, 0
  %1232 = fcmp fast ogt float %1230, %1231
  %1233 = and i1 %1216, %1232
  %1234 = and i1 %1187, %1233
  br i1 %1234, label %1249, label %1235

; <label>:1235                                    ; preds = %1492, %1330, %1249, %1115
  %1236 = phi float [ %1116, %1249 ], [ %1116, %1330 ], [ %1502, %1492 ], [ %1116, %1115 ]
  %1237 = phi float [ %1117, %1249 ], [ %1117, %1330 ], [ %1503, %1492 ], [ %1117, %1115 ]
  %1238 = phi float [ %1118, %1249 ], [ %1118, %1330 ], [ %1504, %1492 ], [ %1118, %1115 ]
  %1239 = phi float [ %1119, %1249 ], [ %1119, %1330 ], [ %1466, %1492 ], [ %1119, %1115 ]
  %1240 = phi float [ %1120, %1249 ], [ %1120, %1330 ], [ %1467, %1492 ], [ %1120, %1115 ]
  %1241 = phi float [ %1121, %1249 ], [ %1121, %1330 ], [ %1461, %1492 ], [ %1121, %1115 ]
  %1242 = phi float [ %1122, %1249 ], [ %1122, %1330 ], [ %1458, %1492 ], [ %1122, %1115 ]
  %1243 = phi float [ %1123, %1249 ], [ %1123, %1330 ], [ %1455, %1492 ], [ %1123, %1115 ]
  %1244 = phi float [ %1124, %1249 ], [ %1124, %1330 ], [ %1453, %1492 ], [ %1124, %1115 ]
  %1245 = phi float [ %1125, %1249 ], [ %1125, %1330 ], [ %1448, %1492 ], [ %1125, %1115 ]
  %1246 = phi float [ %1126, %1249 ], [ %1126, %1330 ], [ %1449, %1492 ], [ %1126, %1115 ]
  %1247 = phi float [ %1127, %1249 ], [ %1127, %1330 ], [ %1450, %1492 ], [ %1127, %1115 ]
  %1248 = icmp eq i32 %1184, %1114
  br i1 %1248, label %1505, label %1115

; <label>:1249                                    ; preds = %1115
  %1250 = extractvalue %dx.types.ResRet.f32 %1155, 3
  %1251 = extractvalue %dx.types.ResRet.f32 %1155, 1
  %1252 = extractvalue %dx.types.ResRet.f32 %1155, 0
  %1253 = extractvalue %dx.types.ResRet.f32 %1145, 1
  %1254 = extractvalue %dx.types.ResRet.f32 %1145, 0
  %1255 = extractvalue %dx.types.ResRet.i32 %1141, 3
  %1256 = extractvalue %dx.types.ResRet.i32 %1141, 2
  %1257 = add i32 %1255, 0
  %1258 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1257, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1260 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1258, %dx.types.Handle %1259, float %1193, float %1200, float undef, float undef, i32 0, i32 0, i32 undef, float %1221, float %1223, float undef, float %1222, float %1224, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1261 = extractvalue %dx.types.ResRet.f32 %1260, 0
  %1262 = fmul fast float %1261, %1254
  %1263 = fadd fast float %1262, %1253
  %1264 = call float @dx.op.unary.f32(i32 7, float %1263)  ; Saturate(value)
  %1265 = fmul fast float %1193, %1150
  %1266 = call float @dx.op.tertiary.f32(i32 46, float %1151, float %1200, float %1265)  ; FMad(a,b,c)
  %1267 = fadd fast float %1266, %1252
  %1268 = fmul fast float %1193, %1152
  %1269 = call float @dx.op.tertiary.f32(i32 46, float %1153, float %1200, float %1268)  ; FMad(a,b,c)
  %1270 = fadd fast float %1269, %1251
  %1271 = fmul fast float %1221, %1150
  %1272 = call float @dx.op.tertiary.f32(i32 46, float %1151, float %1223, float %1271)  ; FMad(a,b,c)
  %1273 = fmul fast float %1221, %1152
  %1274 = call float @dx.op.tertiary.f32(i32 46, float %1153, float %1223, float %1273)  ; FMad(a,b,c)
  %1275 = fmul fast float %1222, %1150
  %1276 = call float @dx.op.tertiary.f32(i32 46, float %1151, float %1224, float %1275)  ; FMad(a,b,c)
  %1277 = fmul fast float %1222, %1152
  %1278 = call float @dx.op.tertiary.f32(i32 46, float %1153, float %1224, float %1277)  ; FMad(a,b,c)
  %1279 = add i32 %1256, 0
  %1280 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1279, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1281 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1280, %dx.types.Handle %1259, float %1267, float %1270, float undef, float undef, i32 0, i32 0, i32 undef, float %1272, float %1274, float undef, float %1276, float %1278, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1282 = extractvalue %dx.types.ResRet.f32 %1281, 0
  %1283 = and i32 %1185, 1024
  %1284 = icmp ne i32 %1283, 0
  %1285 = fcmp fast ogt float %1282, 0x3FE0101020000000
  %1286 = uitofp i1 %1285 to float
  %1287 = select i1 %1284, float %1286, float %1282
  %1288 = and i32 %1185, 8192
  %1289 = icmp ne i32 %1288, 0
  %1290 = select i1 %1289, float %1250, float 1.000000e+00
  %1291 = fmul fast float %1193, 2.000000e+00
  %1292 = fadd fast float %1291, -1.000000e+00
  %1293 = call float @dx.op.unary.f32(i32 6, float %1292)  ; FAbs(value)
  %1294 = fmul fast float %1293, %1182
  %1295 = fsub fast float %1294, %1182
  %1296 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  %1297 = fmul fast float %1200, 2.000000e+00
  %1298 = fadd fast float %1297, -1.000000e+00
  %1299 = call float @dx.op.unary.f32(i32 6, float %1298)  ; FAbs(value)
  %1300 = fmul fast float %1299, %1183
  %1301 = fsub fast float %1300, %1183
  %1302 = call float @dx.op.unary.f32(i32 7, float %1301)  ; Saturate(value)
  %1303 = fmul fast float %1212, %1146
  %1304 = fsub fast float %1303, %1146
  %1305 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  %1306 = fmul fast float %1264, %1290
  %1307 = fmul fast float %1306, %1261
  %1308 = fmul fast float %1307, %1296
  %1309 = fmul fast float %1308, %1287
  %1310 = fmul fast float %1309, %1302
  %1311 = fmul fast float %1310, %1305
  %1312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1313 = extractvalue %dx.types.CBufRet.f32 %1312, 1
  %1314 = extractvalue %dx.types.CBufRet.f32 %1312, 0
  %1315 = fsub fast float %1230, %1314
  %1316 = fmul fast float %1315, %1313
  %1317 = call float @dx.op.unary.f32(i32 7, float %1316)  ; Saturate(value)
  %1318 = fmul fast float %1311, %1147
  %1319 = fadd fast float %1311, %1147
  %1320 = fmul fast float %1319, %1156
  %1321 = fsub fast float %1320, %1156
  %1322 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1323 = and i32 %1185, 128
  %1324 = icmp ne i32 %1323, 0
  %1325 = select i1 %1324, float %1322, float %1318
  %1326 = fmul fast float %1325, %1317
  %1327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1328 = extractvalue %dx.types.CBufRet.f32 %1327, 0
  %1329 = fcmp fast ugt float %1326, %1328
  br i1 %1329, label %1330, label %1235

; <label>:1330                                    ; preds = %1249
  br i1 %1289, label %1235, label %1331

; <label>:1331                                    ; preds = %1330
  %1332 = and i32 %1185, 4
  %1333 = and i32 %1185, 8
  %1334 = add i32 %1142, 0
  %1335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1334, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1336 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1337 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1335, %dx.types.Handle %1336, float %1267, float %1270, float undef, float undef, i32 0, i32 0, i32 undef, float %1272, float %1274, float undef, float %1276, float %1278, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1338 = extractvalue %dx.types.ResRet.f32 %1337, 0
  %1339 = extractvalue %dx.types.ResRet.f32 %1337, 1
  %1340 = extractvalue %dx.types.ResRet.f32 %1337, 2
  %1341 = extractvalue %dx.types.ResRet.f32 %1337, 3
  %1342 = bitcast float %1168 to i32
  %1343 = and i32 %1342, 255
  %1344 = uitofp i32 %1343 to float
  %1345 = lshr i32 %1342, 8
  %1346 = and i32 %1345, 255
  %1347 = uitofp i32 %1346 to float
  %1348 = fmul fast float %1341, %1344
  %1349 = fadd fast float %1348, %1347
  %1350 = fmul fast float %1349, 0x3F70101000000000
  %1351 = add i32 %1143, 0
  %1352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1351, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1353 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1352, %dx.types.Handle %1336, float %1267, float %1270, float undef, float undef, i32 0, i32 0, i32 undef, float %1272, float %1274, float undef, float %1276, float %1278, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1354 = extractvalue %dx.types.ResRet.f32 %1353, 0
  %1355 = extractvalue %dx.types.ResRet.f32 %1353, 1
  %1356 = extractvalue %dx.types.ResRet.f32 %1353, 2
  %1357 = extractvalue %dx.types.ResRet.f32 %1353, 3
  %1358 = bitcast float %1162 to i32
  %1359 = and i32 %1358, 255
  %1360 = uitofp i32 %1359 to float
  %1361 = lshr i32 %1358, 8
  %1362 = and i32 %1361, 255
  %1363 = uitofp i32 %1362 to float
  %1364 = lshr i32 %1358, 16
  %1365 = and i32 %1364, 255
  %1366 = uitofp i32 %1365 to float
  %1367 = fmul fast float %1366, 0x3F70101000000000
  %1368 = fmul fast float %1354, %1360
  %1369 = fadd fast float %1368, %1363
  %1370 = fmul fast float %1369, 0x3F70101000000000
  %1371 = fadd fast float %1355, -5.000000e-01
  %1372 = fadd fast float %1357, -5.000000e-01
  %1373 = fmul fast float %1371, %1367
  %1374 = fmul fast float %1372, %1367
  %1375 = fadd fast float %1373, 5.000000e-01
  %1376 = fadd fast float %1374, 5.000000e-01
  %1377 = fmul fast float %1338, %1171
  %1378 = fmul fast float %1339, %1172
  %1379 = fmul fast float %1340, %1173
  %1380 = fmul fast float %1375, 2.000000e+00
  %1381 = fadd fast float %1380, -1.000000e+00
  %1382 = fmul fast float %1376, 2.000000e+00
  %1383 = fadd fast float %1382, -1.000000e+00
  %1384 = fadd fast float %1381, %1383
  %1385 = fmul fast float %1384, 5.000000e-01
  %1386 = fsub fast float %1381, %1383
  %1387 = fmul fast float %1386, 5.000000e-01
  %1388 = call float @dx.op.unary.f32(i32 6, float %1385)  ; FAbs(value)
  %1389 = fsub fast float 1.000000e+00, %1388
  %1390 = call float @dx.op.unary.f32(i32 6, float %1387)  ; FAbs(value)
  %1391 = fsub fast float %1389, %1390
  %1392 = call float @dx.op.dot3.f32(i32 55, float %1385, float %1387, float %1391, float %1385, float %1387, float %1391)  ; Dot3(ax,ay,az,bx,by,bz)
  %1393 = call float @dx.op.unary.f32(i32 25, float %1392)  ; Rsqrt(value)
  %1394 = fmul fast float %1385, %1393
  %1395 = fmul fast float %1387, %1393
  %1396 = fmul fast float %1393, %1391
  %1397 = fmul fast float %1396, %1136
  %1398 = fmul fast float %1396, %1137
  %1399 = fmul fast float %1396, %1138
  %1400 = fmul fast float %1394, %1159
  %1401 = fmul fast float %1394, %1160
  %1402 = fmul fast float %1394, %1161
  %1403 = fadd fast float %1400, %1397
  %1404 = fadd fast float %1401, %1398
  %1405 = fadd fast float %1402, %1399
  %1406 = fmul fast float %1395, %1165
  %1407 = fmul fast float %1395, %1166
  %1408 = fmul fast float %1395, %1167
  %1409 = fadd fast float %1403, %1406
  %1410 = fadd fast float %1404, %1407
  %1411 = fadd fast float %1405, %1408
  %1412 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1410, float %1411, float %1409, float %1410, float %1411)  ; Dot3(ax,ay,az,bx,by,bz)
  %1413 = call float @dx.op.unary.f32(i32 25, float %1412)  ; Rsqrt(value)
  %1414 = fmul fast float %1409, %1413
  %1415 = fmul fast float %1410, %1413
  %1416 = fmul fast float %1411, %1413
  %1417 = fcmp fast ogt float %1225, %1231
  %1418 = fsub fast float -0.000000e+00, %1414
  %1419 = fsub fast float -0.000000e+00, %1415
  %1420 = fsub fast float -0.000000e+00, %1416
  %1421 = select i1 %1417, float %1414, float %1418
  %1422 = select i1 %1417, float %1415, float %1419
  %1423 = select i1 %1417, float %1416, float %1420
  %1424 = fmul fast float %1421, %1041
  %1425 = call float @dx.op.tertiary.f32(i32 46, float %1422, float %1042, float %1424)  ; FMad(a,b,c)
  %1426 = call float @dx.op.tertiary.f32(i32 46, float %1423, float %1044, float %1425)  ; FMad(a,b,c)
  %1427 = fmul fast float %1421, %1037
  %1428 = call float @dx.op.tertiary.f32(i32 46, float %1422, float %1047, float %1427)  ; FMad(a,b,c)
  %1429 = call float @dx.op.tertiary.f32(i32 46, float %1423, float %1048, float %1428)  ; FMad(a,b,c)
  %1430 = icmp ne i32 %1333, 0
  %1431 = select i1 %1430, float 1.000000e+00, float 0.000000e+00
  %1432 = fmul fast float %1326, %1431
  %1433 = and i32 %1185, 1
  %1434 = icmp ne i32 %1433, 0
  %1435 = fadd fast float %1426, %1119
  %1436 = fadd fast float %1429, %1120
  %1437 = select i1 %1434, float %1435, float %1426
  %1438 = select i1 %1434, float %1436, float %1429
  %1439 = icmp ne i32 %1332, 0
  %1440 = select i1 %1439, float 1.000000e+00, float 0.000000e+00
  %1441 = fmul fast float %1326, %1440
  %1442 = fsub fast float %1377, %1125
  %1443 = fsub fast float %1378, %1126
  %1444 = fsub fast float %1379, %1127
  %1445 = fmul fast float %1442, %1441
  %1446 = fmul fast float %1443, %1441
  %1447 = fmul fast float %1444, %1441
  %1448 = fadd fast float %1445, %1125
  %1449 = fadd fast float %1446, %1126
  %1450 = fadd fast float %1447, %1127
  %1451 = fsub fast float %1350, %1124
  %1452 = fmul fast float %1451, %1441
  %1453 = fadd fast float %1452, %1124
  %1454 = fadd fast float %1326, %1123
  %1455 = call float @dx.op.unary.f32(i32 7, float %1454)  ; Saturate(value)
  %1456 = fsub fast float %1370, %1122
  %1457 = fmul fast float %1456, %1432
  %1458 = fadd fast float %1457, %1122
  %1459 = fsub fast float %1356, %1121
  %1460 = fmul fast float %1459, %1432
  %1461 = fadd fast float %1460, %1121
  %1462 = fsub fast float %1437, %1119
  %1463 = fsub fast float %1438, %1120
  %1464 = fmul fast float %1462, %1432
  %1465 = fmul fast float %1463, %1432
  %1466 = fadd fast float %1464, %1119
  %1467 = fadd fast float %1465, %1120
  %1468 = and i32 %1185, 16
  %1469 = icmp eq i32 %1468, 0
  br i1 %1469, label %1492, label %1470

; <label>:1470                                    ; preds = %1331
  %1471 = bitcast float %1179 to i32
  %1472 = add i32 %1176, 0
  %1473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1472, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1474 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1473, %dx.types.Handle %1336, float %1267, float %1270, float undef, float undef, i32 0, i32 0, i32 undef, float %1272, float %1274, float undef, float %1276, float %1278, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1475 = extractvalue %dx.types.ResRet.f32 %1474, 0
  %1476 = extractvalue %dx.types.ResRet.f32 %1474, 1
  %1477 = extractvalue %dx.types.ResRet.f32 %1474, 2
  %1478 = and i32 %1471, 65535
  %1479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1478)  ; LegacyF16ToF32(value)
  %1480 = fmul fast float %1475, %1171
  %1481 = fmul fast float %1476, %1172
  %1482 = fmul fast float %1477, %1173
  %1483 = and i32 %1185, 16384
  %1484 = icmp ne i32 %1483, 0
  %1485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1486 = extractvalue %dx.types.CBufRet.f32 %1485, 0
  %1487 = select i1 %1484, float %1486, float 1.000000e+00
  %1488 = fmul fast float %1487, %1479
  %1489 = fmul fast float %1480, %1488
  %1490 = fmul fast float %1481, %1488
  %1491 = fmul fast float %1482, %1488
  br label %1492

; <label>:1492                                    ; preds = %1470, %1331
  %1493 = phi float [ %1489, %1470 ], [ 0.000000e+00, %1331 ]
  %1494 = phi float [ %1490, %1470 ], [ 0.000000e+00, %1331 ]
  %1495 = phi float [ %1491, %1470 ], [ 0.000000e+00, %1331 ]
  %1496 = fsub fast float %1493, %1116
  %1497 = fsub fast float %1494, %1117
  %1498 = fsub fast float %1495, %1118
  %1499 = fmul fast float %1496, %1326
  %1500 = fmul fast float %1497, %1326
  %1501 = fmul fast float %1498, %1326
  %1502 = fadd fast float %1499, %1116
  %1503 = fadd fast float %1500, %1117
  %1504 = fadd fast float %1501, %1118
  br label %1235

; <label>:1505                                    ; preds = %1235
  br label %1506

; <label>:1506                                    ; preds = %1505, %1007
  %1507 = phi float [ 0.000000e+00, %1007 ], [ %1236, %1505 ]
  %1508 = phi float [ 0.000000e+00, %1007 ], [ %1237, %1505 ]
  %1509 = phi float [ 0.000000e+00, %1007 ], [ %1238, %1505 ]
  %1510 = phi float [ %1009, %1007 ], [ %1239, %1505 ]
  %1511 = phi float [ %1010, %1007 ], [ %1240, %1505 ]
  %1512 = phi float [ %1058, %1007 ], [ %1241, %1505 ]
  %1513 = phi float [ %1061, %1007 ], [ %1242, %1505 ]
  %1514 = phi float [ 0.000000e+00, %1007 ], [ %1243, %1505 ]
  %1515 = phi float [ %1056, %1007 ], [ %1244, %1505 ]
  %1516 = phi float [ %1050, %1007 ], [ %1245, %1505 ]
  %1517 = phi float [ %1052, %1007 ], [ %1246, %1505 ]
  %1518 = phi float [ %1054, %1007 ], [ %1247, %1505 ]
  %1519 = call float @dx.op.dot2.f32(i32 54, float %1510, float %1511, float %1510, float %1511)  ; Dot2(ax,ay,bx,by)
  %1520 = fmul fast float %1519, 0x3FE3333340000000
  %1521 = fsub fast float 1.000000e+00, %1520
  %1522 = call float @dx.op.dot3.f32(i32 55, float %1510, float %1511, float %1521, float %1510, float %1511, float %1521)  ; Dot3(ax,ay,az,bx,by,bz)
  %1523 = call float @dx.op.unary.f32(i32 25, float %1522)  ; Rsqrt(value)
  %1524 = fmul fast float %1523, %1510
  %1525 = fmul fast float %1523, %1511
  %1526 = fmul fast float %1521, %1523
  %1527 = fmul fast float %1526, %106
  %1528 = fmul fast float %1526, %107
  %1529 = fmul fast float %1526, %108
  %1530 = fmul fast float %1524, %1041
  %1531 = fmul fast float %1524, %1042
  %1532 = fmul fast float %1524, %1044
  %1533 = fadd fast float %1527, %1530
  %1534 = fadd fast float %1528, %1531
  %1535 = fadd fast float %1529, %1532
  %1536 = fmul fast float %1525, %1037
  %1537 = fmul fast float %1525, %1047
  %1538 = fmul fast float %1525, %1048
  %1539 = fadd fast float %1533, %1536
  %1540 = fadd fast float %1534, %1537
  %1541 = fadd fast float %1535, %1538
  %1542 = call float @dx.op.dot3.f32(i32 55, float %1539, float %1540, float %1541, float %1539, float %1540, float %1541)  ; Dot3(ax,ay,az,bx,by,bz)
  %1543 = call float @dx.op.unary.f32(i32 25, float %1542)  ; Rsqrt(value)
  %1544 = fmul fast float %1539, %1543
  %1545 = fmul fast float %1540, %1543
  %1546 = fmul fast float %1541, %1543
  %1547 = fadd fast float %1515, 0xBFB99999A0000000
  %1548 = call float @dx.op.unary.f32(i32 7, float %1547)  ; Saturate(value)
  %1549 = fmul fast float %1548, 0x3FF1C71C80000000
  %1550 = call float @dx.op.binary.f32(i32 36, float %1515, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1551 = fsub fast float 1.000000e+00, %1549
  %1552 = call float @dx.op.unary.f32(i32 7, float %1551)  ; Saturate(value)
  %1553 = fmul fast float %1552, %1516
  %1554 = fmul fast float %1552, %1517
  %1555 = fmul fast float %1552, %1518
  %1556 = call float @dx.op.unary.f32(i32 7, float %1553)  ; Saturate(value)
  %1557 = call float @dx.op.unary.f32(i32 7, float %1554)  ; Saturate(value)
  %1558 = call float @dx.op.unary.f32(i32 7, float %1555)  ; Saturate(value)
  %1559 = fmul fast float %1549, %1516
  %1560 = fmul fast float %1549, %1517
  %1561 = fmul fast float %1549, %1518
  %1562 = fadd fast float %1559, %1550
  %1563 = fadd fast float %1560, %1550
  %1564 = fadd fast float %1561, %1550
  %1565 = call float @dx.op.unary.f32(i32 7, float %1562)  ; Saturate(value)
  %1566 = call float @dx.op.unary.f32(i32 7, float %1563)  ; Saturate(value)
  %1567 = call float @dx.op.unary.f32(i32 7, float %1564)  ; Saturate(value)
  %1568 = fmul fast float %1566, 0x401CF23780000000
  %1569 = fadd fast float %1568, 0x3FF32641C0000000
  %1570 = call float @dx.op.dot3.f32(i32 55, float %142, float %143, float %144, float %142, float %143, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %1571 = call float @dx.op.unary.f32(i32 25, float %1570)  ; Rsqrt(value)
  %1572 = fmul fast float %1571, %142
  %1573 = fmul fast float %1571, %143
  %1574 = fmul fast float %1571, %144
  %1575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1576 = extractvalue %dx.types.CBufRet.f32 %1575, 0
  %1577 = fdiv fast float 1.000000e+00, %1569
  %1578 = select i1 %104, float %1577, float %1569
  %1579 = fadd fast float %1578, -1.000000e+00
  %1580 = fadd fast float %1578, 1.000000e+00
  %1581 = fdiv fast float %1579, %1580
  %1582 = fmul fast float %1581, %1581
  %1583 = call float @dx.op.dot3.f32(i32 55, float %1572, float %1573, float %1574, float %1544, float %1545, float %1546)  ; Dot3(ax,ay,az,bx,by,bz)
  %1584 = select i1 %104, float 0.000000e+00, float %1576
  %1585 = fadd fast float %1583, %1584
  %1586 = call float @dx.op.binary.f32(i32 35, float %1585, float -1.000000e+00)  ; FMax(a,b)
  %1587 = call float @dx.op.binary.f32(i32 36, float %1586, float 1.000000e+00)  ; FMin(a,b)
  %1588 = fmul fast float %1578, %1578
  %1589 = fmul fast float %1587, %1587
  %1590 = fsub fast float 1.000000e+00, %1589
  %1591 = fmul fast float %1588, %1590
  %1592 = fsub fast float 1.000000e+00, %1591
  %1593 = fcmp fast olt float %1578, 1.000000e+00
  %1594 = select i1 %1593, float %1589, float %1592
  %1595 = fcmp fast ogt float %1592, 0.000000e+00
  %1596 = fsub fast float 1.000000e+00, %1582
  %1597 = call float @dx.op.unary.f32(i32 24, float %1594)  ; Sqrt(value)
  %1598 = fsub fast float 1.000000e+00, %1597
  %1599 = call float @dx.op.unary.f32(i32 23, float %1598)  ; Log(value)
  %1600 = fmul fast float %1599, 5.000000e+00
  %1601 = call float @dx.op.unary.f32(i32 21, float %1600)  ; Exp(value)
  %1602 = fmul fast float %1601, %1596
  %1603 = fadd fast float %1602, %1582
  %1604 = select i1 %1595, float %1603, float 1.000000e+00
  %1605 = select i1 %104, float %1604, float 0.000000e+00
  %1606 = lshr i32 %1008, 24
  %1607 = uitofp i32 %1606 to float
  %1608 = fmul fast float %1607, 0x3F70101020000000
  %1609 = call float @dx.op.unary.f32(i32 7, float %1608)  ; Saturate(value)
  %1610 = fmul fast float %142, %142
  %1611 = fmul fast float %143, %143
  %1612 = fadd fast float %1611, %1610
  %1613 = fmul fast float %144, %144
  %1614 = fadd fast float %1612, %1613
  %1615 = call float @dx.op.unary.f32(i32 24, float %1614)  ; Sqrt(value)
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 0
  %1618 = fmul fast float %1617, %1615
  %1619 = extractvalue %dx.types.CBufRet.f32 %1616, 1
  %1620 = fadd fast float %1618, %1619
  %1621 = call float @dx.op.unary.f32(i32 7, float %1620)  ; Saturate(value)
  %1622 = fmul fast float %1609, 2.550000e+02
  %1623 = fmul fast float %1622, %1621
  %1624 = fptoui float %1623 to i32
  %1625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1626 = extractvalue %dx.types.CBufRet.f32 %1625, 3
  %1627 = fmul fast float %1626, %1513
  %1628 = call float @dx.op.unary.f32(i32 7, float %1627)  ; Saturate(value)
  %1629 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  %1630 = fsub fast float 1.000000e+00, %1514
  %1631 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1630)  ; FMin(a,b)
  %1632 = fmul fast float %68, 6.553500e+04
  %1633 = call float @dx.op.unary.f32(i32 26, float %1632)  ; Round_ne(value)
  %1634 = fptosi float %1633 to i32
  %1635 = call i32 @dx.op.binary.i32(i32 37, i32 %1634, i32 0)  ; IMax(a,b)
  %1636 = call i32 @dx.op.binary.i32(i32 38, i32 %1635, i32 65535)  ; IMin(a,b)
  %1637 = fmul fast float %69, 6.553500e+04
  %1638 = call float @dx.op.unary.f32(i32 26, float %1637)  ; Round_ne(value)
  %1639 = fptosi float %1638 to i32
  %1640 = call i32 @dx.op.binary.i32(i32 37, i32 %1639, i32 0)  ; IMax(a,b)
  %1641 = call i32 @dx.op.binary.i32(i32 38, i32 %1640, i32 65535)  ; IMin(a,b)
  %1642 = shl i32 %1641, 16
  %1643 = or i32 %1642, %1636
  %1644 = call float @dx.op.dot3.f32(i32 55, float %1565, float %1566, float %1567, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1645 = fsub fast float 1.000000e+00, %1644
  %1646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1647 = extractvalue %dx.types.ResRet.i32 %1646, 0
  %1648 = and i32 %1647, 255
  %1649 = uitofp i32 %1648 to float
  %1650 = lshr i32 %1647, 8
  %1651 = and i32 %1650, 255
  %1652 = uitofp i32 %1651 to float
  %1653 = fmul fast float %1652, %1645
  %1654 = fadd fast float %1653, %1649
  %1655 = fmul fast float %1654, 0x3F70101020000000
  %1656 = call float @dx.op.unary.f32(i32 7, float %1655)  ; Saturate(value)
  %1657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1658 = extractvalue %dx.types.CBufRet.f32 %1657, 0
  %1659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1660 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1661 = extractvalue %dx.types.CBufRet.i32 %1660, 3
  %1662 = and i32 %1661, 3
  %1663 = icmp ne i32 %1662, 0
  %1664 = and i32 %1661, 4
  %1665 = icmp ne i32 %1664, 0
  %1666 = and i1 %1663, %1665
  br i1 %1666, label %1667, label %1678

; <label>:1667                                    ; preds = %1506
  %1668 = extractvalue %dx.types.CBufRet.f32 %1659, 3
  %1669 = fmul fast float %1668, %88
  %1670 = extractvalue %dx.types.CBufRet.f32 %1659, 2
  %1671 = fmul fast float %1670, %87
  %1672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %56, float %1671, float %1669, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1673 = extractvalue %dx.types.ResRet.f32 %1672, 0
  %1674 = fsub fast float 1.000000e+00, %1673
  %1675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1676 = extractvalue %dx.types.CBufRet.f32 %1675, 0
  %1677 = fcmp fast olt float %1674, %1676
  br label %1681

; <label>:1678                                    ; preds = %1506
  %1679 = icmp eq i32 %1664, 0
  %1680 = and i1 %1663, %1679
  br label %1681

; <label>:1681                                    ; preds = %1678, %1667
  %1682 = phi i1 [ %1677, %1667 ], [ %1680, %1678 ]
  %1683 = fsub fast float -0.000000e+00, %144
  %1684 = fsub fast float -0.000000e+00, %1572
  %1685 = fsub fast float -0.000000e+00, %1573
  %1686 = fsub fast float -0.000000e+00, %1574
  %1687 = select i1 %1682, float 0.000000e+00, float %1567
  %1688 = call float @dx.op.dot3.f32(i32 55, float %1544, float %1545, float %1546, float %1684, float %1685, float %1686)  ; Dot3(ax,ay,az,bx,by,bz)
  %1689 = call float @dx.op.unary.f32(i32 7, float %1688)  ; Saturate(value)
  %1690 = fmul fast float %1583, 2.000000e+00
  %1691 = fmul fast float %1690, %1544
  %1692 = fmul fast float %1690, %1545
  %1693 = fmul fast float %1690, %1546
  %1694 = fsub fast float %1572, %1691
  %1695 = fsub fast float %1573, %1692
  %1696 = fsub fast float %1574, %1693
  %1697 = call float @dx.op.binary.f32(i32 36, float %1629, float 1.000000e+00)  ; FMin(a,b)
  %1698 = fsub fast float 1.000000e+00, %1629
  %1699 = bitcast float %1698 to i32
  %1700 = sub nsw i32 2129859010, %1699
  %1701 = bitcast i32 %1700 to float
  %1702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1703 = extractvalue %dx.types.CBufRet.f32 %1702, 0
  %1704 = extractvalue %dx.types.CBufRet.f32 %1702, 1
  %1705 = extractvalue %dx.types.CBufRet.f32 %1702, 2
  %1706 = fadd fast float %1703, %142
  %1707 = fadd fast float %1704, %143
  %1708 = fadd fast float %1705, %144
  %1709 = fmul fast float %1544, 3.200000e+01
  %1710 = fmul fast float %1545, 3.200000e+01
  %1711 = fadd fast float %1706, %1709
  %1712 = fadd fast float %1707, %1710
  %1713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1714 = extractvalue %dx.types.CBufRet.f32 %1713, 0
  %1715 = extractvalue %dx.types.CBufRet.f32 %1713, 1
  %1716 = fsub fast float %1711, %1714
  %1717 = fsub fast float %1712, %1715
  %1718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1719 = extractvalue %dx.types.CBufRet.f32 %1718, 0
  %1720 = extractvalue %dx.types.CBufRet.f32 %1718, 1
  %1721 = fmul fast float %1716, %1719
  %1722 = fmul fast float %1717, %1720
  %1723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1724 = extractvalue %dx.types.CBufRet.f32 %1723, 0
  %1725 = fmul fast float %1721, %1724
  %1726 = extractvalue %dx.types.CBufRet.f32 %1723, 1
  %1727 = fadd fast float %1725, %1726
  %1728 = extractvalue %dx.types.CBufRet.f32 %1723, 2
  %1729 = fmul fast float %1728, %1722
  %1730 = extractvalue %dx.types.CBufRet.f32 %1723, 3
  %1731 = fadd fast float %1729, %1730
  %1732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %56, float %1727, float %1731, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1733 = extractvalue %dx.types.ResRet.f32 %1732, 0
  %1734 = extractvalue %dx.types.ResRet.f32 %1732, 1
  %1735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1736 = extractvalue %dx.types.CBufRet.f32 %1735, 1
  %1737 = extractvalue %dx.types.CBufRet.f32 %1735, 0
  %1738 = fsub fast float %1736, %1737
  %1739 = fmul fast float %1738, %1733
  %1740 = fadd fast float %1739, %1737
  %1741 = extractvalue %dx.types.CBufRet.f32 %1735, 3
  %1742 = extractvalue %dx.types.CBufRet.f32 %1735, 2
  %1743 = fsub fast float %1741, %1742
  %1744 = fmul fast float %1743, %1734
  %1745 = fadd fast float %1744, %1742
  %1746 = fsub fast float %1708, %1740
  %1747 = fsub fast float %1745, %1740
  %1748 = fdiv fast float %1746, %1747
  %1749 = call float @dx.op.unary.f32(i32 7, float %1748)  ; Saturate(value)
  %1750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1751 = extractvalue %dx.types.CBufRet.f32 %1750, 0
  %1752 = fmul fast float %1751, %1749
  %1753 = extractvalue %dx.types.CBufRet.f32 %1750, 1
  %1754 = fadd fast float %1752, %1753
  %1755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %56, float %1727, float %1731, float %1754, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1756 = extractvalue %dx.types.ResRet.f32 %1755, 0
  %1757 = extractvalue %dx.types.ResRet.f32 %1755, 1
  %1758 = extractvalue %dx.types.ResRet.f32 %1755, 2
  %1759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1760 = extractvalue %dx.types.CBufRet.f32 %1759, 0
  %1761 = extractvalue %dx.types.CBufRet.f32 %1759, 1
  %1762 = extractvalue %dx.types.CBufRet.f32 %1759, 2
  %1763 = fmul fast float %1760, %1756
  %1764 = fmul fast float %1761, %1757
  %1765 = fmul fast float %1762, %1758
  %1766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1767 = extractvalue %dx.types.CBufRet.f32 %1766, 0
  %1768 = extractvalue %dx.types.CBufRet.f32 %1766, 1
  %1769 = extractvalue %dx.types.CBufRet.f32 %1766, 2
  %1770 = fadd fast float %1763, %1767
  %1771 = fadd fast float %1764, %1768
  %1772 = fadd fast float %1765, %1769
  %1773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1774 = extractvalue %dx.types.CBufRet.f32 %1773, 0
  %1775 = fmul fast float %1774, %1721
  %1776 = extractvalue %dx.types.CBufRet.f32 %1773, 1
  %1777 = fadd fast float %1775, %1776
  %1778 = extractvalue %dx.types.CBufRet.f32 %1773, 2
  %1779 = fmul fast float %1778, %1722
  %1780 = extractvalue %dx.types.CBufRet.f32 %1773, 3
  %1781 = fadd fast float %1779, %1780
  %1782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.f32 %1782, 0
  %1784 = extractvalue %dx.types.CBufRet.f32 %1782, 1
  %1785 = extractvalue %dx.types.CBufRet.f32 %1782, 2
  %1786 = extractvalue %dx.types.CBufRet.f32 %1782, 3
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 0
  %1789 = extractvalue %dx.types.CBufRet.f32 %1787, 1
  %1790 = extractvalue %dx.types.CBufRet.f32 %1787, 2
  %1791 = extractvalue %dx.types.CBufRet.f32 %1787, 3
  %1792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %56, float %1777, float %1781, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1793 = extractvalue %dx.types.ResRet.f32 %1792, 0
  %1794 = extractvalue %dx.types.ResRet.f32 %1792, 1
  %1795 = extractvalue %dx.types.ResRet.f32 %1792, 2
  %1796 = extractvalue %dx.types.ResRet.f32 %1792, 3
  %1797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %56, float %1777, float %1781, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1798 = extractvalue %dx.types.ResRet.f32 %1797, 0
  %1799 = extractvalue %dx.types.ResRet.f32 %1797, 1
  %1800 = extractvalue %dx.types.ResRet.f32 %1797, 2
  %1801 = extractvalue %dx.types.ResRet.f32 %1797, 3
  %1802 = fmul fast float %1793, %1770
  %1803 = fmul fast float %1798, %1770
  %1804 = fmul fast float %1800, %1770
  %1805 = fmul fast float %1796, %1770
  %1806 = fadd fast float %1802, %1783
  %1807 = fadd fast float %1803, %1784
  %1808 = fadd fast float %1804, %1785
  %1809 = fadd fast float %1805, %1786
  %1810 = fmul fast float %1794, %1770
  %1811 = fmul fast float %1799, %1770
  %1812 = fadd fast float %1810, %1788
  %1813 = fadd fast float %1811, %1789
  %1814 = fmul fast float %1795, %1770
  %1815 = fmul fast float %1801, %1770
  %1816 = fadd fast float %1814, %1790
  %1817 = fadd fast float %1815, %1791
  %1818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %56, float %1777, float %1781, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1819 = extractvalue %dx.types.ResRet.f32 %1818, 0
  %1820 = extractvalue %dx.types.ResRet.f32 %1818, 1
  %1821 = extractvalue %dx.types.ResRet.f32 %1818, 2
  %1822 = extractvalue %dx.types.ResRet.f32 %1818, 3
  %1823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %56, float %1777, float %1781, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1824 = extractvalue %dx.types.ResRet.f32 %1823, 0
  %1825 = extractvalue %dx.types.ResRet.f32 %1823, 1
  %1826 = extractvalue %dx.types.ResRet.f32 %1823, 2
  %1827 = extractvalue %dx.types.ResRet.f32 %1823, 3
  %1828 = fmul fast float %1819, %1771
  %1829 = fmul fast float %1824, %1771
  %1830 = fmul fast float %1826, %1771
  %1831 = fmul fast float %1822, %1771
  %1832 = fadd fast float %1806, %1828
  %1833 = fadd fast float %1807, %1829
  %1834 = fadd fast float %1808, %1830
  %1835 = fadd fast float %1809, %1831
  %1836 = fmul fast float %1820, %1771
  %1837 = fmul fast float %1825, %1771
  %1838 = fadd fast float %1812, %1836
  %1839 = fadd fast float %1813, %1837
  %1840 = fmul fast float %1821, %1771
  %1841 = fmul fast float %1827, %1771
  %1842 = fadd fast float %1816, %1840
  %1843 = fadd fast float %1817, %1841
  %1844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %56, float %1777, float %1781, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1845 = extractvalue %dx.types.ResRet.f32 %1844, 0
  %1846 = extractvalue %dx.types.ResRet.f32 %1844, 1
  %1847 = extractvalue %dx.types.ResRet.f32 %1844, 2
  %1848 = extractvalue %dx.types.ResRet.f32 %1844, 3
  %1849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %56, float %1777, float %1781, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1850 = extractvalue %dx.types.ResRet.f32 %1849, 0
  %1851 = extractvalue %dx.types.ResRet.f32 %1849, 1
  %1852 = extractvalue %dx.types.ResRet.f32 %1849, 2
  %1853 = extractvalue %dx.types.ResRet.f32 %1849, 3
  %1854 = fmul fast float %1845, %1772
  %1855 = fmul fast float %1850, %1772
  %1856 = fmul fast float %1852, %1772
  %1857 = fmul fast float %1848, %1772
  %1858 = fadd fast float %1832, %1854
  %1859 = fadd fast float %1833, %1855
  %1860 = fadd fast float %1834, %1856
  %1861 = fadd fast float %1835, %1857
  %1862 = fmul fast float %1846, %1772
  %1863 = fmul fast float %1851, %1772
  %1864 = fadd fast float %1838, %1862
  %1865 = fadd fast float %1839, %1863
  %1866 = fmul fast float %1847, %1772
  %1867 = fmul fast float %1853, %1772
  %1868 = fadd fast float %1842, %1866
  %1869 = fadd fast float %1843, %1867
  %1870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1871 = extractvalue %dx.types.CBufRet.f32 %1870, 0
  %1872 = fsub fast float %1706, %1871
  %1873 = fsub fast float %1714, %1706
  %1874 = call float @dx.op.binary.f32(i32 35, float %1873, float %1872)  ; FMax(a,b)
  %1875 = extractvalue %dx.types.CBufRet.f32 %1870, 1
  %1876 = fsub fast float %1707, %1875
  %1877 = fsub fast float %1715, %1707
  %1878 = call float @dx.op.binary.f32(i32 35, float %1877, float %1876)  ; FMax(a,b)
  %1879 = call float @dx.op.binary.f32(i32 35, float %1874, float %1878)  ; FMax(a,b)
  %1880 = extractvalue %dx.types.CBufRet.f32 %1718, 3
  %1881 = fmul fast float %1880, %1879
  %1882 = call float @dx.op.unary.f32(i32 7, float %1881)  ; Saturate(value)
  %1883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.f32 %1883, 0
  %1885 = extractvalue %dx.types.CBufRet.f32 %1883, 1
  %1886 = extractvalue %dx.types.CBufRet.f32 %1883, 2
  %1887 = extractvalue %dx.types.CBufRet.f32 %1883, 3
  %1888 = fsub fast float %1884, %1858
  %1889 = fsub fast float %1885, %1859
  %1890 = fsub fast float %1886, %1860
  %1891 = fsub fast float %1887, %1861
  %1892 = fmul fast float %1888, %1882
  %1893 = fmul fast float %1889, %1882
  %1894 = fmul fast float %1890, %1882
  %1895 = fmul fast float %1891, %1882
  %1896 = fadd fast float %1892, %1858
  %1897 = fadd fast float %1893, %1859
  %1898 = fadd fast float %1894, %1860
  %1899 = fadd fast float %1895, %1861
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.CBufRet.f32 %1900, 1
  %1903 = fsub fast float %1901, %1864
  %1904 = fsub fast float %1902, %1865
  %1905 = fmul fast float %1903, %1882
  %1906 = fmul fast float %1904, %1882
  %1907 = fadd fast float %1905, %1864
  %1908 = fadd fast float %1906, %1865
  %1909 = extractvalue %dx.types.CBufRet.f32 %1900, 2
  %1910 = extractvalue %dx.types.CBufRet.f32 %1900, 3
  %1911 = fsub fast float %1909, %1868
  %1912 = fsub fast float %1910, %1869
  %1913 = fmul fast float %1911, %1882
  %1914 = fmul fast float %1912, %1882
  %1915 = fadd fast float %1913, %1868
  %1916 = fadd fast float %1914, %1869
  %1917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1918 = extractvalue %dx.types.CBufRet.f32 %1917, 0
  %1919 = fmul fast float %1918, %1896
  %1920 = fmul fast float %1918, %1897
  %1921 = fmul fast float %1918, %1898
  %1922 = fmul fast float %1918, %1899
  %1923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1924 = extractvalue %dx.types.CBufRet.f32 %1923, 0
  %1925 = fmul fast float %1924, %1907
  %1926 = fmul fast float %1924, %1908
  %1927 = fadd fast float %1925, %1919
  %1928 = fadd fast float %1926, %1921
  %1929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1930 = extractvalue %dx.types.CBufRet.f32 %1929, 0
  %1931 = fmul fast float %1930, %1915
  %1932 = fmul fast float %1930, %1916
  %1933 = fadd fast float %1927, %1931
  %1934 = fadd fast float %1928, %1932
  %1935 = extractvalue %dx.types.CBufRet.f32 %1917, 1
  %1936 = fmul fast float %1935, %1896
  %1937 = fmul fast float %1935, %1897
  %1938 = fmul fast float %1935, %1898
  %1939 = fmul fast float %1935, %1899
  %1940 = extractvalue %dx.types.CBufRet.f32 %1923, 1
  %1941 = fmul fast float %1940, %1907
  %1942 = fmul fast float %1940, %1908
  %1943 = fadd fast float %1941, %1936
  %1944 = fadd fast float %1942, %1938
  %1945 = extractvalue %dx.types.CBufRet.f32 %1929, 1
  %1946 = fmul fast float %1945, %1915
  %1947 = fmul fast float %1945, %1916
  %1948 = fadd fast float %1943, %1946
  %1949 = fadd fast float %1944, %1947
  %1950 = extractvalue %dx.types.CBufRet.f32 %1917, 2
  %1951 = fmul fast float %1950, %1896
  %1952 = fmul fast float %1950, %1897
  %1953 = fmul fast float %1950, %1898
  %1954 = fmul fast float %1950, %1899
  %1955 = extractvalue %dx.types.CBufRet.f32 %1923, 2
  %1956 = fmul fast float %1955, %1907
  %1957 = fmul fast float %1955, %1908
  %1958 = fadd fast float %1956, %1951
  %1959 = fadd fast float %1957, %1953
  %1960 = extractvalue %dx.types.CBufRet.f32 %1929, 2
  %1961 = fmul fast float %1960, %1915
  %1962 = fmul fast float %1960, %1916
  %1963 = fadd fast float %1958, %1961
  %1964 = fadd fast float %1959, %1962
  %1965 = fmul fast float %1952, %1952
  %1966 = fmul fast float %1964, %1964
  %1967 = fmul fast float %1954, %1954
  %1968 = fadd fast float %1967, %1965
  %1969 = fadd fast float %1968, %1966
  %1970 = call float @dx.op.unary.f32(i32 24, float %1969)  ; Sqrt(value)
  %1971 = fcmp fast ugt float %1970, 0.000000e+00
  br i1 %1971, label %1972, label %1987

; <label>:1972                                    ; preds = %1681
  %1973 = fsub fast float -0.000000e+00, %1954
  %1974 = fdiv fast float %1973, %1970
  %1975 = fsub fast float -0.000000e+00, %1952
  %1976 = fdiv fast float %1975, %1970
  %1977 = fdiv fast float %1964, %1970
  %1978 = fmul fast float %1963, 0x3FE279A760000000
  %1979 = fmul fast float %1976, %1952
  %1980 = fmul fast float %1977, %1964
  %1981 = fmul fast float %1974, %1954
  %1982 = fadd fast float %1979, %1981
  %1983 = fsub fast float %1982, %1980
  %1984 = call float @dx.op.unary.f32(i32 6, float %1983)  ; FAbs(value)
  %1985 = fadd fast float %1984, 0x3DDB7CDFE0000000
  %1986 = fdiv fast float %1978, %1985
  br label %1987

; <label>:1987                                    ; preds = %1972, %1681
  %1988 = phi float [ %1986, %1972 ], [ 1.000000e+00, %1681 ]
  %1989 = fmul fast float %1937, %1937
  %1990 = fmul fast float %1949, %1949
  %1991 = fmul fast float %1939, %1939
  %1992 = fadd fast float %1991, %1989
  %1993 = fadd fast float %1992, %1990
  %1994 = call float @dx.op.unary.f32(i32 24, float %1993)  ; Sqrt(value)
  %1995 = fcmp fast ugt float %1994, 0.000000e+00
  br i1 %1995, label %1996, label %2011

; <label>:1996                                    ; preds = %1987
  %1997 = fsub fast float -0.000000e+00, %1939
  %1998 = fdiv fast float %1997, %1994
  %1999 = fsub fast float -0.000000e+00, %1937
  %2000 = fdiv fast float %1999, %1994
  %2001 = fdiv fast float %1949, %1994
  %2002 = fmul fast float %1948, 0x3FE279A760000000
  %2003 = fmul fast float %2000, %1937
  %2004 = fmul fast float %2001, %1949
  %2005 = fmul fast float %1998, %1939
  %2006 = fadd fast float %2003, %2005
  %2007 = fsub fast float %2006, %2004
  %2008 = call float @dx.op.unary.f32(i32 6, float %2007)  ; FAbs(value)
  %2009 = fadd fast float %2008, 0x3DDB7CDFE0000000
  %2010 = fdiv fast float %2002, %2009
  br label %2011

; <label>:2011                                    ; preds = %1996, %1987
  %2012 = phi float [ %2010, %1996 ], [ 1.000000e+00, %1987 ]
  %2013 = call float @dx.op.binary.f32(i32 36, float %2012, float %1988)  ; FMin(a,b)
  %2014 = fmul fast float %1920, %1920
  %2015 = fmul fast float %1934, %1934
  %2016 = fmul fast float %1922, %1922
  %2017 = fadd fast float %2016, %2014
  %2018 = fadd fast float %2017, %2015
  %2019 = call float @dx.op.unary.f32(i32 24, float %2018)  ; Sqrt(value)
  %2020 = fcmp fast ugt float %2019, 0.000000e+00
  br i1 %2020, label %2021, label %2036

; <label>:2021                                    ; preds = %2011
  %2022 = fsub fast float -0.000000e+00, %1922
  %2023 = fdiv fast float %2022, %2019
  %2024 = fsub fast float -0.000000e+00, %1920
  %2025 = fdiv fast float %2024, %2019
  %2026 = fdiv fast float %1934, %2019
  %2027 = fmul fast float %1933, 0x3FE279A760000000
  %2028 = fmul fast float %2025, %1920
  %2029 = fmul fast float %2026, %1934
  %2030 = fmul fast float %2023, %1922
  %2031 = fadd fast float %2028, %2030
  %2032 = fsub fast float %2031, %2029
  %2033 = call float @dx.op.unary.f32(i32 6, float %2032)  ; FAbs(value)
  %2034 = fadd fast float %2033, 0x3DDB7CDFE0000000
  %2035 = fdiv fast float %2027, %2034
  br label %2036

; <label>:2036                                    ; preds = %2021, %2011
  %2037 = phi float [ %2035, %2021 ], [ 1.000000e+00, %2011 ]
  %2038 = call float @dx.op.binary.f32(i32 36, float %2037, float %2013)  ; FMin(a,b)
  %2039 = call float @dx.op.unary.f32(i32 7, float %2038)  ; Saturate(value)
  %2040 = fcmp fast olt float %2039, 1.000000e+00
  br i1 %2040, label %2041, label %2051

; <label>:2041                                    ; preds = %2036
  %2042 = fmul fast float %2039, %1920
  %2043 = fmul fast float %2039, %1934
  %2044 = fmul fast float %2039, %1922
  %2045 = fmul fast float %2039, %1937
  %2046 = fmul fast float %2039, %1949
  %2047 = fmul fast float %2039, %1939
  %2048 = fmul fast float %2039, %1952
  %2049 = fmul fast float %2039, %1964
  %2050 = fmul fast float %2039, %1954
  br label %2051

; <label>:2051                                    ; preds = %2041, %2036
  %2052 = phi float [ %2048, %2041 ], [ %1952, %2036 ]
  %2053 = phi float [ %2049, %2041 ], [ %1964, %2036 ]
  %2054 = phi float [ %2050, %2041 ], [ %1954, %2036 ]
  %2055 = phi float [ %2045, %2041 ], [ %1937, %2036 ]
  %2056 = phi float [ %2046, %2041 ], [ %1949, %2036 ]
  %2057 = phi float [ %2047, %2041 ], [ %1939, %2036 ]
  %2058 = phi float [ %2042, %2041 ], [ %1920, %2036 ]
  %2059 = phi float [ %2043, %2041 ], [ %1934, %2036 ]
  %2060 = phi float [ %2044, %2041 ], [ %1922, %2036 ]
  %2061 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1933)  ; FMax(a,b)
  %2062 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1948)  ; FMax(a,b)
  %2063 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1963)  ; FMax(a,b)
  %2064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2065 = extractvalue %dx.types.CBufRet.f32 %2064, 0
  %2066 = fcmp fast ogt float %2065, 0.000000e+00
  %2067 = fcmp fast oge float %1721, 0.000000e+00
  %2068 = and i1 %2067, %2066
  %2069 = fcmp fast ole float %1721, 1.000000e+00
  %2070 = and i1 %2069, %2068
  %2071 = fcmp fast oge float %1722, 0.000000e+00
  %2072 = and i1 %2071, %2070
  %2073 = fcmp fast ole float %1722, 1.000000e+00
  %2074 = and i1 %2073, %2072
  br i1 %2074, label %2075, label %2215, !dx.controlflow.hints !111

; <label>:2075                                    ; preds = %2051
  %2076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2077 = extractvalue %dx.types.CBufRet.f32 %2076, 2
  %2078 = extractvalue %dx.types.CBufRet.f32 %2076, 3
  %2079 = fmul fast float %2077, %1721
  %2080 = fmul fast float %2078, %1722
  %2081 = call float @dx.op.unary.f32(i32 27, float %2079)  ; Round_ni(value)
  %2082 = call float @dx.op.unary.f32(i32 27, float %2080)  ; Round_ni(value)
  %2083 = fptosi float %2081 to i32
  %2084 = fptosi float %2082 to i32
  %2085 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %38, i32 0, i32 %2083, i32 %2084, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2086 = extractvalue %dx.types.ResRet.i32 %2085, 0
  %2087 = and i32 %2086, 65535
  %2088 = lshr i32 %2086, 16
  %2089 = icmp eq i32 %2087, 65535
  br i1 %2089, label %2126, label %2090

; <label>:2090                                    ; preds = %2075
  %2091 = extractvalue %dx.types.CBufRet.f32 %2064, 1
  %2092 = extractvalue %dx.types.CBufRet.f32 %2076, 0
  %2093 = extractvalue %dx.types.CBufRet.f32 %2076, 1
  %2094 = fmul fast float %2092, %1721
  %2095 = fmul fast float %2093, %1722
  %2096 = fmul fast float %2094, 1.250000e-01
  %2097 = fmul fast float %2095, 1.250000e-01
  %2098 = call float @dx.op.unary.f32(i32 27, float %2096)  ; Round_ni(value)
  %2099 = call float @dx.op.unary.f32(i32 27, float %2097)  ; Round_ni(value)
  %2100 = fmul fast float %2098, 8.000000e+00
  %2101 = fmul fast float %2099, 8.000000e+00
  %2102 = and i32 %2086, 255
  %2103 = lshr i32 %2086, 8
  %2104 = and i32 %2103, 255
  %2105 = mul nuw nsw i32 %2102, 9
  %2106 = uitofp i32 %2105 to float
  %2107 = mul nuw nsw i32 %2104, 9
  %2108 = uitofp i32 %2107 to float
  %2109 = fadd fast float %2106, 5.000000e-01
  %2110 = fadd fast float %2109, %2094
  %2111 = fsub fast float %2110, %2100
  %2112 = fadd fast float %2108, 5.000000e-01
  %2113 = fadd fast float %2112, %2095
  %2114 = fsub fast float %2113, %2101
  %2115 = fdiv fast float %2111, %2065
  %2116 = fdiv fast float %2114, %2091
  %2117 = fmul fast float %1749, 4.375000e-01
  %2118 = fadd fast float %2117, 3.125000e-02
  %2119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %56, float %2115, float %2116, float %2118, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2120 = extractvalue %dx.types.ResRet.f32 %2119, 0
  %2121 = extractvalue %dx.types.ResRet.f32 %2119, 1
  %2122 = extractvalue %dx.types.ResRet.f32 %2119, 2
  %2123 = fadd fast float %2120, %2061
  %2124 = fadd fast float %2121, %2062
  %2125 = fadd fast float %2122, %2063
  br label %2126

; <label>:2126                                    ; preds = %2090, %2075
  %2127 = phi float [ %2125, %2090 ], [ %2063, %2075 ]
  %2128 = phi float [ %2124, %2090 ], [ %2062, %2075 ]
  %2129 = phi float [ %2123, %2090 ], [ %2061, %2075 ]
  %2130 = icmp eq i32 %2088, 65535
  br i1 %2130, label %2215, label %2131

; <label>:2131                                    ; preds = %2126
  %2132 = extractvalue %dx.types.CBufRet.f32 %2064, 1
  %2133 = extractvalue %dx.types.CBufRet.f32 %2076, 0
  %2134 = extractvalue %dx.types.CBufRet.f32 %2076, 1
  %2135 = fmul fast float %2133, %1721
  %2136 = fmul fast float %2134, %1722
  %2137 = fmul fast float %2135, 1.250000e-01
  %2138 = fmul fast float %2136, 1.250000e-01
  %2139 = call float @dx.op.unary.f32(i32 27, float %2137)  ; Round_ni(value)
  %2140 = call float @dx.op.unary.f32(i32 27, float %2138)  ; Round_ni(value)
  %2141 = fmul fast float %2139, 8.000000e+00
  %2142 = fmul fast float %2140, 8.000000e+00
  %2143 = fsub fast float %2135, %2141
  %2144 = fsub fast float %2136, %2142
  %2145 = fadd fast float %2143, 5.000000e-01
  %2146 = fadd fast float %2144, 5.000000e-01
  %2147 = and i32 %2088, 255
  %2148 = lshr i32 %2086, 24
  %2149 = mul nuw nsw i32 %2147, 9
  %2150 = uitofp i32 %2149 to float
  %2151 = mul nuw nsw i32 %2148, 9
  %2152 = uitofp i32 %2151 to float
  %2153 = fadd fast float %2145, %2150
  %2154 = fadd fast float %2146, %2152
  %2155 = fdiv fast float %2153, %2065
  %2156 = fdiv fast float %2154, %2132
  %2157 = fmul fast float %1749, 4.375000e-01
  %2158 = fadd fast float %2157, 3.125000e-02
  %2159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %56, float %2155, float %2156, float %2158, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2160 = extractvalue %dx.types.ResRet.f32 %2159, 0
  %2161 = extractvalue %dx.types.ResRet.f32 %2159, 1
  %2162 = extractvalue %dx.types.ResRet.f32 %2159, 2
  %2163 = fadd fast float %2157, 5.312500e-01
  %2164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %56, float %2155, float %2156, float %2163, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2165 = extractvalue %dx.types.ResRet.f32 %2164, 0
  %2166 = extractvalue %dx.types.ResRet.f32 %2164, 1
  %2167 = extractvalue %dx.types.ResRet.f32 %2164, 2
  %2168 = fmul fast float %2165, 2.000000e+00
  %2169 = fmul fast float %2166, 2.000000e+00
  %2170 = fmul fast float %2167, 2.000000e+00
  %2171 = fadd fast float %2168, -1.000000e+00
  %2172 = fadd fast float %2169, -1.000000e+00
  %2173 = fadd fast float %2170, -1.000000e+00
  %2174 = fmul fast float %2171, %2171
  %2175 = fmul fast float %2172, %2172
  %2176 = fadd fast float %2174, %2175
  %2177 = fmul fast float %2173, %2173
  %2178 = fadd fast float %2176, %2177
  %2179 = call float @dx.op.unary.f32(i32 24, float %2178)  ; Sqrt(value)
  %2180 = fcmp fast ogt float %2179, 0.000000e+00
  br i1 %2180, label %2181, label %2185

; <label>:2181                                    ; preds = %2131
  %2182 = fdiv fast float %2171, %2179
  %2183 = fdiv fast float %2172, %2179
  %2184 = fdiv fast float %2173, %2179
  br label %2185

; <label>:2185                                    ; preds = %2181, %2131
  %2186 = phi float [ %2182, %2181 ], [ 0.000000e+00, %2131 ]
  %2187 = phi float [ %2183, %2181 ], [ 0.000000e+00, %2131 ]
  %2188 = phi float [ %2184, %2181 ], [ 0.000000e+00, %2131 ]
  %2189 = fmul fast float %142, %142
  %2190 = fmul fast float %143, %143
  %2191 = fadd fast float %2189, %2190
  %2192 = call float @dx.op.unary.f32(i32 24, float %2191)  ; Sqrt(value)
  %2193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2194 = extractvalue %dx.types.CBufRet.f32 %2193, 0
  %2195 = extractvalue %dx.types.CBufRet.f32 %2193, 1
  %2196 = fsub fast float %2192, %2194
  %2197 = fdiv fast float %2196, %2195
  %2198 = call float @dx.op.unary.f32(i32 7, float %2197)  ; Saturate(value)
  %2199 = fmul fast float %2198, 2.000000e+00
  %2200 = fsub fast float 3.000000e+00, %2199
  %2201 = fmul fast float %2198, %2198
  %2202 = fmul fast float %2201, %2200
  %2203 = call float @dx.op.dot3.f32(i32 55, float %2186, float %2187, float %2188, float %1544, float %1545, float %1546)  ; Dot3(ax,ay,az,bx,by,bz)
  %2204 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2203)  ; FMax(a,b)
  %2205 = fmul fast float %2204, 0x400C5BF8A0000000
  %2206 = fmul fast float %2202, %2160
  %2207 = fmul fast float %2206, %2205
  %2208 = fadd fast float %2207, %2129
  %2209 = fmul fast float %2202, %2161
  %2210 = fmul fast float %2209, %2205
  %2211 = fadd fast float %2210, %2128
  %2212 = fmul fast float %2202, %2162
  %2213 = fmul fast float %2212, %2205
  %2214 = fadd fast float %2213, %2127
  br label %2215

; <label>:2215                                    ; preds = %2185, %2126, %2051
  %2216 = phi float [ %2214, %2185 ], [ %2127, %2126 ], [ %2063, %2051 ]
  %2217 = phi float [ %2211, %2185 ], [ %2128, %2126 ], [ %2062, %2051 ]
  %2218 = phi float [ %2208, %2185 ], [ %2129, %2126 ], [ %2061, %2051 ]
  %2219 = fcmp fast ogt float %1708, %1745
  %2220 = and i1 %2067, %2219
  %2221 = and i1 %2069, %2220
  %2222 = and i1 %2071, %2221
  %2223 = and i1 %2073, %2222
  br i1 %2223, label %2224, label %2281, !dx.controlflow.hints !112

; <label>:2224                                    ; preds = %2215
  %2225 = fmul fast float %1747, 0x3FC24924A0000000
  %2226 = fsub fast float %1708, %1745
  %2227 = fdiv fast float %2226, %2225
  %2228 = call float @dx.op.unary.f32(i32 7, float %2227)  ; Saturate(value)
  %2229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2230 = extractvalue %dx.types.CBufRet.f32 %2229, 0
  %2231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2232 = extractvalue %dx.types.CBufRet.f32 %2231, 0
  %2233 = extractvalue %dx.types.CBufRet.f32 %2231, 1
  %2234 = extractvalue %dx.types.CBufRet.f32 %2231, 2
  %2235 = fsub fast float %2230, %2218
  %2236 = fsub fast float %2232, %2058
  %2237 = fsub fast float %2233, %2059
  %2238 = fsub fast float %2234, %2060
  %2239 = fmul fast float %2235, %2228
  %2240 = fmul fast float %2236, %2228
  %2241 = fmul fast float %2237, %2228
  %2242 = fmul fast float %2238, %2228
  %2243 = fadd fast float %2239, %2218
  %2244 = fadd fast float %2240, %2058
  %2245 = fadd fast float %2241, %2059
  %2246 = fadd fast float %2242, %2060
  %2247 = extractvalue %dx.types.CBufRet.f32 %2229, 1
  %2248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2249 = extractvalue %dx.types.CBufRet.f32 %2248, 0
  %2250 = extractvalue %dx.types.CBufRet.f32 %2248, 1
  %2251 = extractvalue %dx.types.CBufRet.f32 %2248, 2
  %2252 = fsub fast float %2247, %2217
  %2253 = fsub fast float %2249, %2055
  %2254 = fsub fast float %2250, %2056
  %2255 = fsub fast float %2251, %2057
  %2256 = fmul fast float %2252, %2228
  %2257 = fmul fast float %2253, %2228
  %2258 = fmul fast float %2254, %2228
  %2259 = fmul fast float %2255, %2228
  %2260 = fadd fast float %2256, %2217
  %2261 = fadd fast float %2257, %2055
  %2262 = fadd fast float %2258, %2056
  %2263 = fadd fast float %2259, %2057
  %2264 = extractvalue %dx.types.CBufRet.f32 %2229, 2
  %2265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2266 = extractvalue %dx.types.CBufRet.f32 %2265, 0
  %2267 = extractvalue %dx.types.CBufRet.f32 %2265, 1
  %2268 = extractvalue %dx.types.CBufRet.f32 %2265, 2
  %2269 = fsub fast float %2264, %2216
  %2270 = fsub fast float %2266, %2052
  %2271 = fsub fast float %2267, %2053
  %2272 = fsub fast float %2268, %2054
  %2273 = fmul fast float %2269, %2228
  %2274 = fmul fast float %2270, %2228
  %2275 = fmul fast float %2271, %2228
  %2276 = fmul fast float %2272, %2228
  %2277 = fadd fast float %2273, %2216
  %2278 = fadd fast float %2274, %2052
  %2279 = fadd fast float %2275, %2053
  %2280 = fadd fast float %2276, %2054
  br label %2281

; <label>:2281                                    ; preds = %2224, %2215
  %2282 = phi float [ %2277, %2224 ], [ %2216, %2215 ]
  %2283 = phi float [ %2278, %2224 ], [ %2052, %2215 ]
  %2284 = phi float [ %2279, %2224 ], [ %2053, %2215 ]
  %2285 = phi float [ %2280, %2224 ], [ %2054, %2215 ]
  %2286 = phi float [ %2260, %2224 ], [ %2217, %2215 ]
  %2287 = phi float [ %2261, %2224 ], [ %2055, %2215 ]
  %2288 = phi float [ %2262, %2224 ], [ %2056, %2215 ]
  %2289 = phi float [ %2263, %2224 ], [ %2057, %2215 ]
  %2290 = phi float [ %2243, %2224 ], [ %2218, %2215 ]
  %2291 = phi float [ %2244, %2224 ], [ %2058, %2215 ]
  %2292 = phi float [ %2245, %2224 ], [ %2059, %2215 ]
  %2293 = phi float [ %2246, %2224 ], [ %2060, %2215 ]
  %2294 = extractvalue %dx.types.CBufRet.f32 %1870, 3
  %2295 = fmul fast float %2294, %2290
  %2296 = fmul fast float %2294, %2286
  %2297 = fmul fast float %2294, %2282
  %2298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2299 = extractvalue %dx.types.CBufRet.f32 %2298, 3
  %2300 = fmul fast float %2295, %2299
  %2301 = fmul fast float %2296, %2299
  %2302 = fmul fast float %2297, %2299
  %2303 = call float @dx.op.dot3.f32(i32 55, float %2300, float %2301, float %2302, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2304 = fmul fast float %2303, 0x3FD20DD760000000
  %2305 = fmul fast float %2291, 1.500000e+00
  %2306 = fmul fast float %2305, %2294
  %2307 = fmul fast float %2306, %2299
  %2308 = fmul fast float %2292, 1.500000e+00
  %2309 = fmul fast float %2308, %2294
  %2310 = fmul fast float %2309, %2299
  %2311 = fmul fast float %2293, 1.500000e+00
  %2312 = fmul fast float %2311, %2294
  %2313 = fmul fast float %2312, %2299
  %2314 = fmul fast float %2287, 1.500000e+00
  %2315 = fmul fast float %2314, %2294
  %2316 = fmul fast float %2315, %2299
  %2317 = fmul fast float %2288, 1.500000e+00
  %2318 = fmul fast float %2317, %2294
  %2319 = fmul fast float %2318, %2299
  %2320 = fmul fast float %2289, 1.500000e+00
  %2321 = fmul fast float %2320, %2294
  %2322 = fmul fast float %2321, %2299
  %2323 = fmul fast float %2283, 1.500000e+00
  %2324 = fmul fast float %2323, %2294
  %2325 = fmul fast float %2324, %2299
  %2326 = fmul fast float %2284, 1.500000e+00
  %2327 = fmul fast float %2326, %2294
  %2328 = fmul fast float %2327, %2299
  %2329 = fmul fast float %2285, 1.500000e+00
  %2330 = fmul fast float %2329, %2294
  %2331 = fmul fast float %2330, %2299
  %2332 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2300)  ; FMax(a,b)
  %2333 = call float @dx.op.dot3.f32(i32 55, float %2307, float %2310, float %2313, float %2307, float %2310, float %2313)  ; Dot3(ax,ay,az,bx,by,bz)
  %2334 = fcmp fast oeq float %2333, 0.000000e+00
  %2335 = fcmp fast oeq float %2332, 0.000000e+00
  %2336 = or i1 %2335, %2334
  br i1 %2336, label %2366, label %2337

; <label>:2337                                    ; preds = %2281
  %2338 = fsub fast float -0.000000e+00, %2313
  %2339 = fsub fast float -0.000000e+00, %2307
  %2340 = call float @dx.op.unary.f32(i32 24, float %2333)  ; Sqrt(value)
  %2341 = fdiv fast float %2340, %2332
  %2342 = fcmp fast ogt float %2341, 0x3FFB6F8900000000
  %2343 = select i1 %2342, float 0x3FFB6F8900000000, float %2341
  %2344 = fmul fast float %2343, 0x3FE8A23460000000
  %2345 = call float @dx.op.unary.f32(i32 7, float %2344)  ; Saturate(value)
  %2346 = call float @dx.op.binary.f32(i32 35, float %2343, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2347 = fmul fast float %2345, %2332
  %2348 = fmul fast float %2346, 0x3FF279A740000000
  %2349 = fadd fast float %2348, -1.000000e+00
  %2350 = call float @dx.op.dot3.f32(i32 55, float %2338, float %2339, float %2310, float %2338, float %2339, float %2310)  ; Dot3(ax,ay,az,bx,by,bz)
  %2351 = call float @dx.op.unary.f32(i32 25, float %2350)  ; Rsqrt(value)
  %2352 = fmul fast float %2351, %2338
  %2353 = fmul fast float %2351, %2339
  %2354 = fmul fast float %2351, %2310
  %2355 = fmul fast float %2349, %2349
  %2356 = fsub fast float 1.000000e+00, %2355
  %2357 = fmul fast float %2346, 0x40005F8BE0000000
  %2358 = fsub fast float 0x400C5BF8A0000000, %2357
  %2359 = fdiv fast float %2347, %2358
  %2360 = fmul fast float %2359, 0x3FEE31C3C0000000
  %2361 = fmul fast float %2360, %2356
  %2362 = fmul fast float %2346, 0x3FDACB7480000000
  %2363 = fadd fast float %2362, 0xBFD7347680000000
  %2364 = fmul fast float %2363, %2359
  %2365 = fmul fast float %2364, %2356
  br label %2366

; <label>:2366                                    ; preds = %2337, %2281
  %2367 = phi float [ %2352, %2337 ], [ 0.000000e+00, %2281 ]
  %2368 = phi float [ %2353, %2337 ], [ 0.000000e+00, %2281 ]
  %2369 = phi float [ %2354, %2337 ], [ 0.000000e+00, %2281 ]
  %2370 = phi float [ %2361, %2337 ], [ 0.000000e+00, %2281 ]
  %2371 = phi float [ %2365, %2337 ], [ 0.000000e+00, %2281 ]
  %2372 = call float @dx.op.dot3.f32(i32 55, float %2367, float %2368, float %2369, float %1544, float %1545, float %1546)  ; Dot3(ax,ay,az,bx,by,bz)
  %2373 = fmul fast float %2372, %2372
  %2374 = fmul fast float %2373, 0x3FEE471020000000
  %2375 = fadd fast float %2374, 0xBFD42F6020000000
  %2376 = fmul fast float %2332, 0x3FD20DD760000000
  %2377 = fmul fast float %2375, %2371
  %2378 = fmul fast float %2370, 0x3FDF454380000000
  %2379 = fmul fast float %2378, %2372
  %2380 = fadd fast float %2379, %2376
  %2381 = fadd fast float %2380, %2377
  %2382 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2301)  ; FMax(a,b)
  %2383 = call float @dx.op.dot3.f32(i32 55, float %2316, float %2319, float %2322, float %2316, float %2319, float %2322)  ; Dot3(ax,ay,az,bx,by,bz)
  %2384 = fcmp fast oeq float %2383, 0.000000e+00
  %2385 = fcmp fast oeq float %2382, 0.000000e+00
  %2386 = or i1 %2385, %2384
  br i1 %2386, label %2416, label %2387

; <label>:2387                                    ; preds = %2366
  %2388 = fsub fast float -0.000000e+00, %2322
  %2389 = fsub fast float -0.000000e+00, %2316
  %2390 = call float @dx.op.unary.f32(i32 24, float %2383)  ; Sqrt(value)
  %2391 = fdiv fast float %2390, %2382
  %2392 = fcmp fast ogt float %2391, 0x3FFB6F8900000000
  %2393 = select i1 %2392, float 0x3FFB6F8900000000, float %2391
  %2394 = fmul fast float %2393, 0x3FE8A23460000000
  %2395 = call float @dx.op.unary.f32(i32 7, float %2394)  ; Saturate(value)
  %2396 = call float @dx.op.binary.f32(i32 35, float %2393, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2397 = fmul fast float %2395, %2382
  %2398 = fmul fast float %2396, 0x3FF279A740000000
  %2399 = fadd fast float %2398, -1.000000e+00
  %2400 = call float @dx.op.dot3.f32(i32 55, float %2388, float %2389, float %2319, float %2388, float %2389, float %2319)  ; Dot3(ax,ay,az,bx,by,bz)
  %2401 = call float @dx.op.unary.f32(i32 25, float %2400)  ; Rsqrt(value)
  %2402 = fmul fast float %2401, %2388
  %2403 = fmul fast float %2401, %2389
  %2404 = fmul fast float %2401, %2319
  %2405 = fmul fast float %2399, %2399
  %2406 = fsub fast float 1.000000e+00, %2405
  %2407 = fmul fast float %2396, 0x40005F8BE0000000
  %2408 = fsub fast float 0x400C5BF8A0000000, %2407
  %2409 = fdiv fast float %2397, %2408
  %2410 = fmul fast float %2409, 0x3FEE31C3C0000000
  %2411 = fmul fast float %2410, %2406
  %2412 = fmul fast float %2396, 0x3FDACB7480000000
  %2413 = fadd fast float %2412, 0xBFD7347680000000
  %2414 = fmul fast float %2413, %2409
  %2415 = fmul fast float %2414, %2406
  br label %2416

; <label>:2416                                    ; preds = %2387, %2366
  %2417 = phi float [ %2402, %2387 ], [ 0.000000e+00, %2366 ]
  %2418 = phi float [ %2403, %2387 ], [ 0.000000e+00, %2366 ]
  %2419 = phi float [ %2404, %2387 ], [ 0.000000e+00, %2366 ]
  %2420 = phi float [ %2411, %2387 ], [ 0.000000e+00, %2366 ]
  %2421 = phi float [ %2415, %2387 ], [ 0.000000e+00, %2366 ]
  %2422 = call float @dx.op.dot3.f32(i32 55, float %2417, float %2418, float %2419, float %1544, float %1545, float %1546)  ; Dot3(ax,ay,az,bx,by,bz)
  %2423 = fmul fast float %2422, %2422
  %2424 = fmul fast float %2423, 0x3FEE471020000000
  %2425 = fadd fast float %2424, 0xBFD42F6020000000
  %2426 = fmul fast float %2382, 0x3FD20DD760000000
  %2427 = fmul fast float %2425, %2421
  %2428 = fmul fast float %2420, 0x3FDF454380000000
  %2429 = fmul fast float %2428, %2422
  %2430 = fadd fast float %2429, %2426
  %2431 = fadd fast float %2430, %2427
  %2432 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2302)  ; FMax(a,b)
  %2433 = call float @dx.op.dot3.f32(i32 55, float %2325, float %2328, float %2331, float %2325, float %2328, float %2331)  ; Dot3(ax,ay,az,bx,by,bz)
  %2434 = fcmp fast oeq float %2433, 0.000000e+00
  %2435 = fcmp fast oeq float %2432, 0.000000e+00
  %2436 = or i1 %2435, %2434
  br i1 %2436, label %2466, label %2437

; <label>:2437                                    ; preds = %2416
  %2438 = fsub fast float -0.000000e+00, %2331
  %2439 = fsub fast float -0.000000e+00, %2325
  %2440 = call float @dx.op.unary.f32(i32 24, float %2433)  ; Sqrt(value)
  %2441 = fdiv fast float %2440, %2432
  %2442 = fcmp fast ogt float %2441, 0x3FFB6F8900000000
  %2443 = select i1 %2442, float 0x3FFB6F8900000000, float %2441
  %2444 = fmul fast float %2443, 0x3FE8A23460000000
  %2445 = call float @dx.op.unary.f32(i32 7, float %2444)  ; Saturate(value)
  %2446 = call float @dx.op.binary.f32(i32 35, float %2443, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2447 = fmul fast float %2445, %2432
  %2448 = fmul fast float %2446, 0x3FF279A740000000
  %2449 = fadd fast float %2448, -1.000000e+00
  %2450 = call float @dx.op.dot3.f32(i32 55, float %2438, float %2439, float %2328, float %2438, float %2439, float %2328)  ; Dot3(ax,ay,az,bx,by,bz)
  %2451 = call float @dx.op.unary.f32(i32 25, float %2450)  ; Rsqrt(value)
  %2452 = fmul fast float %2451, %2438
  %2453 = fmul fast float %2451, %2439
  %2454 = fmul fast float %2451, %2328
  %2455 = fmul fast float %2449, %2449
  %2456 = fsub fast float 1.000000e+00, %2455
  %2457 = fmul fast float %2446, 0x40005F8BE0000000
  %2458 = fsub fast float 0x400C5BF8A0000000, %2457
  %2459 = fdiv fast float %2447, %2458
  %2460 = fmul fast float %2459, 0x3FEE31C3C0000000
  %2461 = fmul fast float %2460, %2456
  %2462 = fmul fast float %2446, 0x3FDACB7480000000
  %2463 = fadd fast float %2462, 0xBFD7347680000000
  %2464 = fmul fast float %2463, %2459
  %2465 = fmul fast float %2464, %2456
  br label %2466

; <label>:2466                                    ; preds = %2437, %2416
  %2467 = phi float [ %2452, %2437 ], [ 0.000000e+00, %2416 ]
  %2468 = phi float [ %2453, %2437 ], [ 0.000000e+00, %2416 ]
  %2469 = phi float [ %2454, %2437 ], [ 0.000000e+00, %2416 ]
  %2470 = phi float [ %2461, %2437 ], [ 0.000000e+00, %2416 ]
  %2471 = phi float [ %2465, %2437 ], [ 0.000000e+00, %2416 ]
  %2472 = call float @dx.op.dot3.f32(i32 55, float %2467, float %2468, float %2469, float %1544, float %1545, float %1546)  ; Dot3(ax,ay,az,bx,by,bz)
  %2473 = fmul fast float %2472, %2472
  %2474 = fmul fast float %2473, 0x3FEE471020000000
  %2475 = fadd fast float %2474, 0xBFD42F6020000000
  %2476 = fmul fast float %2432, 0x3FD20DD760000000
  %2477 = fmul fast float %2475, %2471
  %2478 = fmul fast float %2470, 0x3FDF454380000000
  %2479 = fmul fast float %2478, %2472
  %2480 = fadd fast float %2479, %2476
  %2481 = fadd fast float %2480, %2477
  %2482 = call float @dx.op.binary.f32(i32 35, float %2381, float 0.000000e+00)  ; FMax(a,b)
  %2483 = call float @dx.op.binary.f32(i32 35, float %2431, float 0.000000e+00)  ; FMax(a,b)
  %2484 = call float @dx.op.binary.f32(i32 35, float %2481, float 0.000000e+00)  ; FMax(a,b)
  %2485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2486 = extractvalue %dx.types.CBufRet.f32 %2485, 0
  %2487 = call float @dx.op.binary.f32(i32 36, float %1556, float %2486)  ; FMin(a,b)
  %2488 = fsub fast float 1.000000e+00, %1697
  %2489 = fmul fast float %2487, %2488
  %2490 = fsub fast float 1.000000e+00, %2489
  %2491 = bitcast float %2490 to i32
  %2492 = sub nsw i32 2129859010, %2491
  %2493 = bitcast i32 %2492 to float
  %2494 = call float @dx.op.binary.f32(i32 36, float %1557, float %2486)  ; FMin(a,b)
  %2495 = fmul fast float %2494, %2488
  %2496 = fsub fast float 1.000000e+00, %2495
  %2497 = bitcast float %2496 to i32
  %2498 = sub nsw i32 2129859010, %2497
  %2499 = bitcast i32 %2498 to float
  %2500 = call float @dx.op.binary.f32(i32 36, float %1558, float %2486)  ; FMin(a,b)
  %2501 = fmul fast float %2500, %2488
  %2502 = fsub fast float 1.000000e+00, %2501
  %2503 = bitcast float %2502 to i32
  %2504 = sub nsw i32 2129859010, %2503
  %2505 = bitcast i32 %2504 to float
  %2506 = fmul fast float %2482, %1697
  %2507 = fmul fast float %2506, %2493
  %2508 = fmul fast float %2483, %1697
  %2509 = fmul fast float %2508, %2499
  %2510 = fmul fast float %2484, %1697
  %2511 = fmul fast float %2510, %2505
  %2512 = call float @dx.op.dot3.f32(i32 55, float %2507, float %2509, float %2511, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2513 = select i1 %1682, float 0.000000e+00, float %2507
  %2514 = select i1 %1682, float %2512, float %2509
  %2515 = select i1 %1682, float 0.000000e+00, float %2511
  %2516 = fsub fast float 1.000000e+00, %1565
  %2517 = fsub fast float 1.000000e+00, %1566
  %2518 = fsub fast float 1.000000e+00, %1687
  %2519 = fmul fast float %1605, %2516
  %2520 = fmul fast float %1605, %2517
  %2521 = fmul fast float %2518, %1605
  %2522 = fadd fast float %2519, %1565
  %2523 = fadd fast float %2520, %1566
  %2524 = fadd fast float %2521, %1687
  %2525 = call float @dx.op.binary.f32(i32 35, float %2523, float %2524)  ; FMax(a,b)
  %2526 = call float @dx.op.binary.f32(i32 35, float %2522, float %2525)  ; FMax(a,b)
  %2527 = fsub fast float 1.000000e+00, %2526
  %2528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2529 = extractvalue %dx.types.CBufRet.i32 %2528, 0
  %2530 = and i32 %2529, 524288
  %2531 = icmp ne i32 %2530, 0
  %2532 = select i1 %2531, float 0.000000e+00, float 1.000000e+00
  %2533 = xor i1 %2531, true
  %2534 = zext i1 %2533 to i32
  br i1 %2531, label %2535, label %2805

; <label>:2535                                    ; preds = %2466
  %2536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %2537 = extractvalue %dx.types.CBufRet.f32 %2536, 0
  %2538 = extractvalue %dx.types.CBufRet.f32 %2536, 1
  %2539 = extractvalue %dx.types.CBufRet.f32 %2536, 2
  %2540 = extractvalue %dx.types.CBufRet.f32 %2536, 3
  %2541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %2542 = extractvalue %dx.types.CBufRet.f32 %2541, 0
  %2543 = extractvalue %dx.types.CBufRet.f32 %2541, 1
  %2544 = extractvalue %dx.types.CBufRet.f32 %2541, 2
  %2545 = extractvalue %dx.types.CBufRet.f32 %2541, 3
  %2546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %2547 = extractvalue %dx.types.CBufRet.f32 %2546, 0
  %2548 = extractvalue %dx.types.CBufRet.f32 %2546, 1
  %2549 = extractvalue %dx.types.CBufRet.f32 %2546, 2
  %2550 = extractvalue %dx.types.CBufRet.f32 %2546, 3
  %2551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %2552 = extractvalue %dx.types.CBufRet.f32 %2551, 0
  %2553 = extractvalue %dx.types.CBufRet.f32 %2551, 1
  %2554 = extractvalue %dx.types.CBufRet.f32 %2551, 2
  %2555 = extractvalue %dx.types.CBufRet.f32 %2551, 3
  %2556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %2557 = extractvalue %dx.types.CBufRet.f32 %2556, 0
  %2558 = extractvalue %dx.types.CBufRet.f32 %2556, 1
  %2559 = extractvalue %dx.types.CBufRet.f32 %2556, 2
  %2560 = extractvalue %dx.types.CBufRet.f32 %2556, 3
  %2561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %2562 = extractvalue %dx.types.CBufRet.f32 %2561, 0
  %2563 = extractvalue %dx.types.CBufRet.f32 %2561, 1
  %2564 = extractvalue %dx.types.CBufRet.f32 %2561, 2
  %2565 = extractvalue %dx.types.CBufRet.f32 %2561, 3
  %2566 = call float @dx.op.dot3.f32(i32 55, float %2562, float %2563, float %2564, float %1694, float %1695, float %1696)  ; Dot3(ax,ay,az,bx,by,bz)
  %2567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %2568 = extractvalue %dx.types.CBufRet.f32 %2567, 1
  %2569 = extractvalue %dx.types.CBufRet.f32 %2567, 0
  %2570 = select i1 %104, float %2569, float %2568
  %2571 = fmul fast float %2566, 8.000000e+00
  %2572 = fmul fast float %2571, %2570
  %2573 = call float @dx.op.unary.f32(i32 7, float %2572)  ; Saturate(value)
  %2574 = fcmp fast ogt float %2573, 0.000000e+00
  br i1 %2574, label %2575, label %2792, !dx.controlflow.hints !113

; <label>:2575                                    ; preds = %2535
  %2576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %2577 = extractvalue %dx.types.CBufRet.f32 %2576, 1
  %2578 = fmul fast float %1026, 2.000000e+00
  %2579 = fmul fast float %1027, 2.000000e+00
  %2580 = fadd fast float %2578, -1.000000e+00
  %2581 = fadd fast float %2579, -1.000000e+00
  %2582 = fmul fast float %2577, %2580
  %2583 = fmul fast float %2577, %2581
  %2584 = fadd fast float %2582, %87
  %2585 = fadd fast float %2583, %88
  %2586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2587 = extractvalue %dx.types.CBufRet.f32 %2586, 2
  %2588 = extractvalue %dx.types.CBufRet.f32 %2586, 3
  %2589 = fmul fast float %2584, %2587
  %2590 = fmul fast float %2585, %2588
  %2591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %57, float %2589, float %2590, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2592 = extractvalue %dx.types.ResRet.f32 %2591, 0
  %2593 = fcmp fast une float %2592, 0xFFF0000000000000
  %2594 = fcmp fast une float %2592, 0x7FF0000000000000
  %2595 = and i1 %2593, %2594
  %2596 = call float @dx.op.unary.f32(i32 6, float %2592)  ; FAbs(value)
  %2597 = fsub fast float 1.000000e+00, %2596
  %2598 = select i1 %2595, float 1.000000e+00, float 0.000000e+00
  %2599 = fmul fast float %2598, %2573
  %2600 = fcmp fast ogt float %2599, 0.000000e+00
  br i1 %2600, label %2601, label %2792, !dx.controlflow.hints !114

; <label>:2601                                    ; preds = %2575
  %2602 = fmul fast float %2537, %142
  %2603 = call float @dx.op.tertiary.f32(i32 46, float %143, float %2538, float %2602)  ; FMad(a,b,c)
  %2604 = call float @dx.op.tertiary.f32(i32 46, float %144, float %2539, float %2603)  ; FMad(a,b,c)
  %2605 = fadd fast float %2604, %2540
  %2606 = fmul fast float %2542, %142
  %2607 = call float @dx.op.tertiary.f32(i32 46, float %143, float %2543, float %2606)  ; FMad(a,b,c)
  %2608 = call float @dx.op.tertiary.f32(i32 46, float %144, float %2544, float %2607)  ; FMad(a,b,c)
  %2609 = fadd fast float %2608, %2545
  %2610 = fmul fast float %2547, %142
  %2611 = call float @dx.op.tertiary.f32(i32 46, float %143, float %2548, float %2610)  ; FMad(a,b,c)
  %2612 = call float @dx.op.tertiary.f32(i32 46, float %144, float %2549, float %2611)  ; FMad(a,b,c)
  %2613 = fadd fast float %2612, %2550
  %2614 = fdiv fast float 1.000000e+00, %2613
  %2615 = fmul fast float %2614, %2605
  %2616 = fmul fast float %2614, %2609
  %2617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2618 = extractvalue %dx.types.CBufRet.f32 %2617, 0
  %2619 = extractvalue %dx.types.CBufRet.f32 %2617, 1
  %2620 = fmul fast float %2615, %2618
  %2621 = fmul fast float %2616, %2619
  %2622 = extractvalue %dx.types.CBufRet.f32 %2617, 2
  %2623 = extractvalue %dx.types.CBufRet.f32 %2617, 3
  %2624 = fadd fast float %2620, %2622
  %2625 = fadd fast float %2621, %2623
  %2626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2627 = extractvalue %dx.types.CBufRet.f32 %2626, 3
  %2628 = fmul fast float %2627, %1694
  %2629 = fmul fast float %2627, %1695
  %2630 = fmul fast float %2627, %1696
  %2631 = fadd fast float %2628, %142
  %2632 = fadd fast float %2629, %143
  %2633 = fadd fast float %2630, %144
  %2634 = fmul fast float %2631, %2537
  %2635 = call float @dx.op.tertiary.f32(i32 46, float %2632, float %2538, float %2634)  ; FMad(a,b,c)
  %2636 = call float @dx.op.tertiary.f32(i32 46, float %2633, float %2539, float %2635)  ; FMad(a,b,c)
  %2637 = fadd fast float %2636, %2540
  %2638 = fmul fast float %2631, %2542
  %2639 = call float @dx.op.tertiary.f32(i32 46, float %2632, float %2543, float %2638)  ; FMad(a,b,c)
  %2640 = call float @dx.op.tertiary.f32(i32 46, float %2633, float %2544, float %2639)  ; FMad(a,b,c)
  %2641 = fadd fast float %2640, %2545
  %2642 = fmul fast float %2631, %2547
  %2643 = call float @dx.op.tertiary.f32(i32 46, float %2632, float %2548, float %2642)  ; FMad(a,b,c)
  %2644 = call float @dx.op.tertiary.f32(i32 46, float %2633, float %2549, float %2643)  ; FMad(a,b,c)
  %2645 = fadd fast float %2644, %2550
  %2646 = fdiv fast float 1.000000e+00, %2645
  %2647 = fmul fast float %2646, %2637
  %2648 = fmul fast float %2646, %2641
  %2649 = fmul fast float %2624, 2.000000e+00
  %2650 = fadd fast float %2649, -1.000000e+00
  %2651 = call float @dx.op.unary.f32(i32 6, float %2650)  ; FAbs(value)
  %2652 = fmul fast float %2651, 5.000000e+00
  %2653 = fadd fast float %2652, -4.000000e+00
  %2654 = call float @dx.op.unary.f32(i32 7, float %2653)  ; Saturate(value)
  %2655 = fsub fast float %2615, %2647
  %2656 = fmul fast float %2618, %2655
  %2657 = fmul fast float %2656, %2654
  %2658 = fsub fast float %2647, %2615
  %2659 = fmul fast float %2618, %2658
  %2660 = fadd fast float %2659, %2657
  %2661 = fsub fast float %2648, %2616
  %2662 = fmul fast float %2619, %2661
  %2663 = fmul fast float %2660, %2597
  %2664 = fmul fast float %2662, %2597
  %2665 = fadd fast float %2663, %2624
  %2666 = fadd fast float %2664, %2625
  %2667 = fsub fast float %2646, %2614
  %2668 = fmul fast float %2667, %2597
  %2669 = fadd fast float %2668, %2614
  %2670 = fdiv fast float 1.000000e+00, %2669
  %2671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %56, float %2665, float %2666, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2672 = extractvalue %dx.types.ResRet.f32 %2671, 0
  %2673 = extractvalue %dx.types.ResRet.f32 %2671, 1
  %2674 = extractvalue %dx.types.ResRet.f32 %2671, 2
  %2675 = extractvalue %dx.types.CBufRet.f32 %2298, 1
  %2676 = fmul fast float %2675, %2672
  %2677 = fmul fast float %2675, %2673
  %2678 = fmul fast float %2675, %2674
  %2679 = call float @dx.op.binary.f32(i32 35, float %2670, float 0x3810000000000000)  ; FMax(a,b)
  %2680 = fdiv fast float %2613, %2679
  %2681 = call float @dx.op.unary.f32(i32 7, float %2680)  ; Saturate(value)
  %2682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %2683 = extractvalue %dx.types.CBufRet.f32 %2682, 0
  %2684 = extractvalue %dx.types.CBufRet.f32 %2682, 1
  %2685 = extractvalue %dx.types.CBufRet.f32 %2682, 2
  %2686 = fadd fast float %2683, %142
  %2687 = fadd fast float %2684, %143
  %2688 = fadd fast float %2685, %144
  %2689 = fmul fast float %2686, %2552
  %2690 = call float @dx.op.tertiary.f32(i32 46, float %2687, float %2553, float %2689)  ; FMad(a,b,c)
  %2691 = call float @dx.op.tertiary.f32(i32 46, float %2688, float %2554, float %2690)  ; FMad(a,b,c)
  %2692 = fadd fast float %2691, %2555
  %2693 = fmul fast float %2686, %2557
  %2694 = call float @dx.op.tertiary.f32(i32 46, float %2687, float %2558, float %2693)  ; FMad(a,b,c)
  %2695 = call float @dx.op.tertiary.f32(i32 46, float %2688, float %2559, float %2694)  ; FMad(a,b,c)
  %2696 = fadd fast float %2695, %2560
  %2697 = fmul fast float %2686, %2562
  %2698 = call float @dx.op.tertiary.f32(i32 46, float %2687, float %2563, float %2697)  ; FMad(a,b,c)
  %2699 = call float @dx.op.tertiary.f32(i32 46, float %2688, float %2564, float %2698)  ; FMad(a,b,c)
  %2700 = fadd fast float %2699, %2565
  %2701 = fdiv fast float 1.000000e+00, %2700
  %2702 = fmul fast float %2701, %2692
  %2703 = fmul fast float %2701, %2696
  %2704 = fmul fast float %2702, %2618
  %2705 = fmul fast float %2703, %2619
  %2706 = fadd fast float %2704, %2622
  %2707 = fadd fast float %2705, %2623
  %2708 = fadd fast float %2628, %2686
  %2709 = fadd fast float %2629, %2687
  %2710 = fadd fast float %2630, %2688
  %2711 = fmul fast float %2708, %2552
  %2712 = call float @dx.op.tertiary.f32(i32 46, float %2709, float %2553, float %2711)  ; FMad(a,b,c)
  %2713 = call float @dx.op.tertiary.f32(i32 46, float %2710, float %2554, float %2712)  ; FMad(a,b,c)
  %2714 = fadd fast float %2713, %2555
  %2715 = fmul fast float %2708, %2557
  %2716 = call float @dx.op.tertiary.f32(i32 46, float %2709, float %2558, float %2715)  ; FMad(a,b,c)
  %2717 = call float @dx.op.tertiary.f32(i32 46, float %2710, float %2559, float %2716)  ; FMad(a,b,c)
  %2718 = fadd fast float %2717, %2560
  %2719 = fmul fast float %2708, %2562
  %2720 = call float @dx.op.tertiary.f32(i32 46, float %2709, float %2563, float %2719)  ; FMad(a,b,c)
  %2721 = call float @dx.op.tertiary.f32(i32 46, float %2710, float %2564, float %2720)  ; FMad(a,b,c)
  %2722 = fadd fast float %2721, %2565
  %2723 = fdiv fast float 1.000000e+00, %2722
  %2724 = fmul fast float %2723, %2714
  %2725 = fmul fast float %2723, %2718
  %2726 = fmul fast float %2706, 2.000000e+00
  %2727 = fadd fast float %2726, -1.000000e+00
  %2728 = call float @dx.op.unary.f32(i32 6, float %2727)  ; FAbs(value)
  %2729 = fmul fast float %2728, 5.000000e+00
  %2730 = fadd fast float %2729, -4.000000e+00
  %2731 = call float @dx.op.unary.f32(i32 7, float %2730)  ; Saturate(value)
  %2732 = fsub fast float %2702, %2724
  %2733 = fmul fast float %2618, %2732
  %2734 = fmul fast float %2733, %2731
  %2735 = fsub fast float %2724, %2702
  %2736 = fmul fast float %2618, %2735
  %2737 = fadd fast float %2736, %2734
  %2738 = fsub fast float %2725, %2703
  %2739 = fmul fast float %2619, %2738
  %2740 = fmul fast float %2737, %2597
  %2741 = fmul fast float %2739, %2597
  %2742 = fadd fast float %2740, %2706
  %2743 = fadd fast float %2741, %2707
  %2744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %56, float %2742, float %2743, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2745 = extractvalue %dx.types.ResRet.f32 %2744, 0
  %2746 = extractvalue %dx.types.ResRet.f32 %2744, 1
  %2747 = extractvalue %dx.types.ResRet.f32 %2744, 2
  %2748 = extractvalue %dx.types.CBufRet.f32 %2298, 2
  %2749 = fmul fast float %2748, %2745
  %2750 = fmul fast float %2748, %2746
  %2751 = fmul fast float %2748, %2747
  %2752 = and i32 %1624, 255
  %2753 = uitofp i32 %2752 to float
  %2754 = fmul fast float %2753, 0x3F70101020000000
  %2755 = fmul fast float %2754, %2681
  %2756 = extractvalue %dx.types.CBufRet.f32 %2567, 2
  %2757 = fadd fast float %2756, %2755
  %2758 = call float @dx.op.unary.f32(i32 7, float %2757)  ; Saturate(value)
  %2759 = call float @dx.op.binary.f32(i32 35, float %2676, float 0x3810000000000000)  ; FMax(a,b)
  %2760 = call float @dx.op.binary.f32(i32 35, float %2677, float 0x3810000000000000)  ; FMax(a,b)
  %2761 = call float @dx.op.binary.f32(i32 35, float %2678, float 0x3810000000000000)  ; FMax(a,b)
  %2762 = call float @dx.op.unary.f32(i32 23, float %2759)  ; Log(value)
  %2763 = call float @dx.op.unary.f32(i32 23, float %2760)  ; Log(value)
  %2764 = call float @dx.op.unary.f32(i32 23, float %2761)  ; Log(value)
  %2765 = call float @dx.op.binary.f32(i32 35, float %2749, float 0x3810000000000000)  ; FMax(a,b)
  %2766 = call float @dx.op.binary.f32(i32 35, float %2750, float 0x3810000000000000)  ; FMax(a,b)
  %2767 = call float @dx.op.binary.f32(i32 35, float %2751, float 0x3810000000000000)  ; FMax(a,b)
  %2768 = call float @dx.op.unary.f32(i32 23, float %2765)  ; Log(value)
  %2769 = call float @dx.op.unary.f32(i32 23, float %2766)  ; Log(value)
  %2770 = call float @dx.op.unary.f32(i32 23, float %2767)  ; Log(value)
  %2771 = fsub fast float %2762, %2768
  %2772 = fsub fast float %2763, %2769
  %2773 = fsub fast float %2764, %2770
  %2774 = fmul fast float %2771, %2758
  %2775 = fmul fast float %2772, %2758
  %2776 = fmul fast float %2773, %2758
  %2777 = fadd fast float %2774, %2768
  %2778 = fadd fast float %2775, %2769
  %2779 = fadd fast float %2776, %2770
  %2780 = call float @dx.op.unary.f32(i32 21, float %2777)  ; Exp(value)
  %2781 = call float @dx.op.unary.f32(i32 21, float %2778)  ; Exp(value)
  %2782 = call float @dx.op.unary.f32(i32 21, float %2779)  ; Exp(value)
  %2783 = select i1 %1682, float 0.000000e+00, float %2781
  %2784 = select i1 %1682, float 0.000000e+00, float %2782
  %2785 = fmul fast float %2743, 2.000000e+00
  %2786 = fadd fast float %2785, -1.000000e+00
  %2787 = fmul fast float %2786, %2786
  %2788 = fsub fast float 1.000000e+00, %2787
  %2789 = call float @dx.op.unary.f32(i32 7, float %2788)  ; Saturate(value)
  %2790 = call float @dx.op.unary.f32(i32 7, float %2789)  ; Saturate(value)
  %2791 = fmul fast float %2790, %2599
  br label %2792

; <label>:2792                                    ; preds = %2601, %2575, %2535
  %2793 = phi float [ %2780, %2601 ], [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2535 ]
  %2794 = phi float [ %2783, %2601 ], [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2535 ]
  %2795 = phi float [ %2784, %2601 ], [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2535 ]
  %2796 = phi float [ %2791, %2601 ], [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2535 ]
  %2797 = fcmp fast olt float %2796, 1.000000e+00
  %2798 = or i1 %2797, %2533
  %2799 = zext i1 %2798 to i32
  %2800 = fmul fast float %2796, %2532
  %2801 = fsub fast float %2796, %2800
  %2802 = fmul fast float %2801, %2793
  %2803 = fmul fast float %2801, %2794
  %2804 = fmul fast float %2801, %2795
  br label %2805

; <label>:2805                                    ; preds = %2792, %2466
  %2806 = phi float [ 0.000000e+00, %2466 ], [ %2801, %2792 ]
  %2807 = phi float [ 0.000000e+00, %2466 ], [ %2802, %2792 ]
  %2808 = phi float [ 0.000000e+00, %2466 ], [ %2803, %2792 ]
  %2809 = phi float [ 0.000000e+00, %2466 ], [ %2804, %2792 ]
  %2810 = phi i32 [ %2534, %2466 ], [ %2799, %2792 ]
  %2811 = icmp eq i32 %2810, 0
  br i1 %2811, label %3250, label %2812

; <label>:2812                                    ; preds = %2805
  %2813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2814 = extractvalue %dx.types.CBufRet.f32 %2813, 2
  %2815 = extractvalue %dx.types.CBufRet.f32 %2813, 3
  %2816 = fmul fast float %2814, %87
  %2817 = fmul fast float %2815, %88
  %2818 = fptoui float %2816 to i32
  %2819 = fptoui float %2817 to i32
  %2820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2821 = extractvalue %dx.types.CBufRet.f32 %2820, 0
  %2822 = extractvalue %dx.types.CBufRet.f32 %2820, 2
  %2823 = extractvalue %dx.types.CBufRet.f32 %2820, 3
  %2824 = fadd fast float %76, -4.000000e+00
  %2825 = call float @dx.op.binary.f32(i32 35, float %2824, float 0.000000e+00)  ; FMax(a,b)
  %2826 = fadd fast float %2825, %2821
  %2827 = fmul fast float %2826, %2822
  %2828 = call float @dx.op.unary.f32(i32 23, float %2827)  ; Log(value)
  %2829 = fmul fast float %2828, %2823
  %2830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2831 = extractvalue %dx.types.CBufRet.f32 %2830, 2
  %2832 = fmul fast float %2829, %2831
  %2833 = call float @dx.op.unary.f32(i32 7, float %2832)  ; Saturate(value)
  %2834 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2835 = extractvalue %dx.types.CBufRet.i32 %2834, 1
  %2836 = add i32 %2835, -1
  %2837 = uitofp i32 %2835 to float
  %2838 = fmul fast float %2837, %2833
  %2839 = fptoui float %2838 to i32
  %2840 = call i32 @dx.op.binary.i32(i32 40, i32 %2839, i32 %2836)  ; UMin(a,b)
  %2841 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2842 = extractvalue %dx.types.CBufRet.i32 %2841, 2
  %2843 = extractvalue %dx.types.CBufRet.i32 %2841, 3
  %2844 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2819, i32 %2842, i32 %2818)  ; UMad(a,b,c)
  %2845 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2840, i32 %2843, i32 %2844)  ; UMad(a,b,c)
  %2846 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %2847 = fptoui float %2846 to i32
  %2848 = lshr i32 %2847, 5
  %2849 = call i32 @dx.op.binary.i32(i32 40, i32 %2848, i32 8191)  ; UMin(a,b)
  %2850 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2851 = extractvalue %dx.types.CBufRet.i32 %2850, 2
  %2852 = add nsw i32 %2851, -1
  %2853 = call i32 @dx.op.binary.i32(i32 37, i32 %2852, i32 0)  ; IMax(a,b)
  %2854 = shl i32 %2849, 2
  %2855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2856 = extractvalue %dx.types.ResRet.i32 %2855, 0
  %2857 = lshr i32 %2856, 16
  %2858 = and i32 %2856, 65535
  %2859 = lshr i32 %2856, 21
  %2860 = lshr i32 %2858, 5
  %2861 = call i32 @dx.op.binary.i32(i32 40, i32 %2860, i32 %2853)  ; UMin(a,b)
  %2862 = icmp ugt i32 %2859, %2861
  br i1 %2862, label %3226, label %2863

; <label>:2863                                    ; preds = %2812
  br label %2864

; <label>:2864                                    ; preds = %3218, %2863
  %2865 = phi float [ %3219, %3218 ], [ 0.000000e+00, %2863 ]
  %2866 = phi float [ %3220, %3218 ], [ 0.000000e+00, %2863 ]
  %2867 = phi float [ %3221, %3218 ], [ 0.000000e+00, %2863 ]
  %2868 = phi float [ %3222, %3218 ], [ 1.000000e+00, %2863 ]
  %2869 = phi i32 [ %3223, %3218 ], [ %2859, %2863 ]
  %2870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2871 = extractvalue %dx.types.CBufRet.i32 %2870, 2
  %2872 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2845, i32 %2871, i32 %2869)  ; UMad(a,b,c)
  %2873 = shl i32 %2872, 2
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = shl i32 %2869, 5
  %2877 = sub nsw i32 %2857, %2876
  %2878 = call i32 @dx.op.binary.i32(i32 37, i32 %2877, i32 0)  ; IMax(a,b)
  %2879 = call i32 @dx.op.binary.i32(i32 38, i32 %2878, i32 31)  ; IMin(a,b)
  %2880 = sub nsw i32 1, %2857
  %2881 = add nsw i32 %2880, %2858
  %2882 = call i32 @dx.op.binary.i32(i32 37, i32 %2881, i32 0)  ; IMax(a,b)
  %2883 = call i32 @dx.op.binary.i32(i32 38, i32 %2882, i32 32)  ; IMin(a,b)
  %2884 = and i32 %2883, 31
  %2885 = shl i32 -1, %2884
  %2886 = xor i32 %2885, -1
  %2887 = and i32 %2879, 31
  %2888 = shl i32 %2886, %2887
  %2889 = icmp eq i32 %2883, 32
  %2890 = select i1 %2889, i32 -1, i32 %2888
  %2891 = and i32 %2890, %2875
  %2892 = icmp eq i32 %2891, 0
  br i1 %2892, label %3218, label %2893

; <label>:2893                                    ; preds = %2864
  br label %2894

; <label>:2894                                    ; preds = %3001, %2893
  %2895 = phi float [ %3002, %3001 ], [ %2865, %2893 ]
  %2896 = phi float [ %3003, %3001 ], [ %2866, %2893 ]
  %2897 = phi float [ %3004, %3001 ], [ %2867, %2893 ]
  %2898 = phi float [ %3005, %3001 ], [ %2868, %2893 ]
  %2899 = phi i32 [ %2904, %3001 ], [ %2891, %2893 ]
  %2900 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2899)  ; FirstbitLo(value)
  %2901 = add i32 %2900, %2876
  %2902 = and i32 %2900, 31
  %2903 = shl i32 1, %2902
  %2904 = xor i32 %2903, %2899
  %2905 = mul i32 %2901, 72
  %2906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2907 = extractvalue %dx.types.ResRet.f32 %2906, 0
  %2908 = extractvalue %dx.types.ResRet.f32 %2906, 1
  %2909 = extractvalue %dx.types.ResRet.f32 %2906, 2
  %2910 = add i32 %2905, 12
  %2911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.i32 %2911, 0
  %2913 = add i32 %2905, 16
  %2914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %2913, i32 undef)  ; BufferLoad(srv,index,wot)
  %2915 = extractvalue %dx.types.ResRet.f32 %2914, 0
  %2916 = extractvalue %dx.types.ResRet.f32 %2914, 1
  %2917 = extractvalue %dx.types.ResRet.f32 %2914, 2
  %2918 = add i32 %2905, 28
  %2919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %2918, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.f32 %2919, 0
  %2921 = add i32 %2905, 32
  %2922 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %2921, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.f32 %2922, 0
  %2924 = extractvalue %dx.types.ResRet.f32 %2922, 1
  %2925 = extractvalue %dx.types.ResRet.f32 %2922, 2
  %2926 = extractvalue %dx.types.ResRet.f32 %2922, 3
  %2927 = add i32 %2905, 48
  %2928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %2929 = extractvalue %dx.types.ResRet.f32 %2928, 0
  %2930 = extractvalue %dx.types.ResRet.f32 %2928, 1
  %2931 = add i32 %2905, 56
  %2932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %2931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2933 = extractvalue %dx.types.ResRet.f32 %2932, 0
  %2934 = extractvalue %dx.types.ResRet.f32 %2932, 1
  %2935 = add i32 %2905, 64
  %2936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %2935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.f32 %2936, 0
  %2938 = extractvalue %dx.types.ResRet.f32 %2936, 1
  %2939 = mul i32 %2901, 60
  %2940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.f32 %2940, 0
  %2942 = extractvalue %dx.types.ResRet.f32 %2940, 1
  %2943 = extractvalue %dx.types.ResRet.f32 %2940, 2
  %2944 = add i32 %2939, 12
  %2945 = add i32 %2939, 48
  %2946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.f32 %2946, 0
  %2948 = extractvalue %dx.types.ResRet.f32 %2946, 1
  %2949 = extractvalue %dx.types.ResRet.f32 %2946, 2
  %2950 = and i32 %2912, 32767
  %2951 = bitcast float %2907 to i32
  %2952 = icmp eq i32 %2951, -1
  %2953 = bitcast float %2908 to i32
  %2954 = and i32 %2912, 32768
  %2955 = icmp ne i32 %2954, 0
  %2956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2957 = extractvalue %dx.types.CBufRet.f32 %2956, 0
  %2958 = extractvalue %dx.types.CBufRet.f32 %2956, 1
  %2959 = extractvalue %dx.types.CBufRet.f32 %2956, 2
  %2960 = fsub fast float %2941, %2957
  %2961 = fsub fast float %2942, %2958
  %2962 = fsub fast float %2943, %2959
  %2963 = fsub fast float %142, %2960
  %2964 = fsub fast float %143, %2961
  %2965 = fsub fast float %144, %2962
  %2966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.f32 %2966, 0
  %2968 = extractvalue %dx.types.ResRet.f32 %2966, 1
  %2969 = extractvalue %dx.types.ResRet.f32 %2966, 2
  %2970 = call float @dx.op.dot3.f32(i32 55, float %2963, float %2964, float %2965, float %2967, float %2968, float %2969)  ; Dot3(ax,ay,az,bx,by,bz)
  %2971 = add i32 %2939, 24
  %2972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2971, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.f32 %2972, 0
  %2974 = extractvalue %dx.types.ResRet.f32 %2972, 1
  %2975 = extractvalue %dx.types.ResRet.f32 %2972, 2
  %2976 = call float @dx.op.dot3.f32(i32 55, float %2963, float %2964, float %2965, float %2973, float %2974, float %2975)  ; Dot3(ax,ay,az,bx,by,bz)
  %2977 = add i32 %2939, 36
  %2978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.f32 %2978, 0
  %2980 = extractvalue %dx.types.ResRet.f32 %2978, 1
  %2981 = extractvalue %dx.types.ResRet.f32 %2978, 2
  %2982 = call float @dx.op.dot3.f32(i32 55, float %2963, float %2964, float %2965, float %2979, float %2980, float %2981)  ; Dot3(ax,ay,az,bx,by,bz)
  %2983 = call float @dx.op.unary.f32(i32 6, float %2970)  ; FAbs(value)
  %2984 = call float @dx.op.unary.f32(i32 6, float %2976)  ; FAbs(value)
  %2985 = call float @dx.op.unary.f32(i32 6, float %2982)  ; FAbs(value)
  %2986 = fsub fast float %2947, %2983
  %2987 = fsub fast float %2948, %2984
  %2988 = fsub fast float %2949, %2985
  %2989 = fmul fast float %2986, %2915
  %2990 = fmul fast float %2987, %2916
  %2991 = fmul fast float %2988, %2917
  %2992 = call float @dx.op.binary.f32(i32 36, float %2990, float %2991)  ; FMin(a,b)
  %2993 = call float @dx.op.binary.f32(i32 36, float %2989, float %2992)  ; FMin(a,b)
  %2994 = call float @dx.op.unary.f32(i32 7, float %2993)  ; Saturate(value)
  %2995 = call float @dx.op.binary.f32(i32 36, float %2898, float %2994)  ; FMin(a,b)
  %2996 = uitofp i1 %2955 to float
  %2997 = select i1 %104, float 1.000000e+00, float 2.000000e+00
  %2998 = fsub fast float %2997, %2996
  %2999 = fmul fast float %2995, %2998
  %3000 = fcmp fast ogt float %2999, 0.000000e+00
  br i1 %3000, label %3007, label %3001

; <label>:3001                                    ; preds = %3149, %2894
  %3002 = phi float [ %3213, %3149 ], [ %2895, %2894 ]
  %3003 = phi float [ %3214, %3149 ], [ %2896, %2894 ]
  %3004 = phi float [ %3215, %3149 ], [ %2897, %2894 ]
  %3005 = phi float [ %3216, %3149 ], [ %2898, %2894 ]
  %3006 = icmp eq i32 %2899, %2903
  br i1 %3006, label %3217, label %2894

; <label>:3007                                    ; preds = %2894
  br i1 %2952, label %3065, label %3008

; <label>:3008                                    ; preds = %3007
  %3009 = fsub fast float -0.000000e+00, %2967
  %3010 = fsub fast float -0.000000e+00, %2968
  %3011 = fsub fast float -0.000000e+00, %2969
  %3012 = call float @dx.op.dot3.f32(i32 55, float %1694, float %1695, float %1696, float %3009, float %3010, float %3011)  ; Dot3(ax,ay,az,bx,by,bz)
  %3013 = fsub fast float -0.000000e+00, %3012
  %3014 = call float @dx.op.dot3.f32(i32 55, float %2963, float %2964, float %2965, float %3009, float %3010, float %3011)  ; Dot3(ax,ay,az,bx,by,bz)
  %3015 = fadd fast float %3014, %2930
  %3016 = fadd fast float %2929, %3014
  %3017 = fsub fast float -0.000000e+00, %3016
  %3018 = fcmp ogt float %3012, -0.000000e+00
  %3019 = select i1 %3018, float %3017, float %3015
  %3020 = call float @dx.op.unary.f32(i32 6, float %3013)  ; FAbs(value)
  %3021 = fdiv fast float 1.000000e+00, %3020
  %3022 = fmul fast float %3019, %3021
  %3023 = call float @dx.op.binary.f32(i32 35, float %3022, float 0.000000e+00)  ; FMax(a,b)
  %3024 = fsub fast float -0.000000e+00, %2973
  %3025 = fsub fast float -0.000000e+00, %2974
  %3026 = fsub fast float -0.000000e+00, %2975
  %3027 = call float @dx.op.dot3.f32(i32 55, float %1694, float %1695, float %1696, float %3024, float %3025, float %3026)  ; Dot3(ax,ay,az,bx,by,bz)
  %3028 = fsub fast float -0.000000e+00, %3027
  %3029 = call float @dx.op.dot3.f32(i32 55, float %2963, float %2964, float %2965, float %3024, float %3025, float %3026)  ; Dot3(ax,ay,az,bx,by,bz)
  %3030 = fadd fast float %3029, %2934
  %3031 = fadd fast float %2933, %3029
  %3032 = fsub fast float -0.000000e+00, %3031
  %3033 = fcmp ogt float %3027, -0.000000e+00
  %3034 = select i1 %3033, float %3032, float %3030
  %3035 = call float @dx.op.unary.f32(i32 6, float %3028)  ; FAbs(value)
  %3036 = fdiv fast float 1.000000e+00, %3035
  %3037 = fmul fast float %3034, %3036
  %3038 = call float @dx.op.binary.f32(i32 35, float %3037, float 0.000000e+00)  ; FMax(a,b)
  %3039 = fsub fast float -0.000000e+00, %2979
  %3040 = fsub fast float -0.000000e+00, %2980
  %3041 = fsub fast float -0.000000e+00, %2981
  %3042 = call float @dx.op.dot3.f32(i32 55, float %1694, float %1695, float %1696, float %3039, float %3040, float %3041)  ; Dot3(ax,ay,az,bx,by,bz)
  %3043 = fsub fast float -0.000000e+00, %3042
  %3044 = call float @dx.op.dot3.f32(i32 55, float %2963, float %2964, float %2965, float %3039, float %3040, float %3041)  ; Dot3(ax,ay,az,bx,by,bz)
  %3045 = fadd fast float %3044, %2938
  %3046 = fadd fast float %2937, %3044
  %3047 = fsub fast float -0.000000e+00, %3046
  %3048 = fcmp ogt float %3042, -0.000000e+00
  %3049 = select i1 %3048, float %3047, float %3045
  %3050 = call float @dx.op.unary.f32(i32 6, float %3043)  ; FAbs(value)
  %3051 = fdiv fast float 1.000000e+00, %3050
  %3052 = fmul fast float %3049, %3051
  %3053 = call float @dx.op.binary.f32(i32 35, float %3052, float 0.000000e+00)  ; FMax(a,b)
  %3054 = call float @dx.op.binary.f32(i32 36, float %3038, float %3053)  ; FMin(a,b)
  %3055 = call float @dx.op.binary.f32(i32 36, float %3023, float %3054)  ; FMin(a,b)
  %3056 = fmul fast float %3055, %1694
  %3057 = fmul fast float %3055, %1695
  %3058 = fmul fast float %3055, %1696
  %3059 = fadd fast float %3056, %142
  %3060 = fadd fast float %3057, %143
  %3061 = fadd fast float %3058, %144
  %3062 = fsub fast float %3059, %2907
  %3063 = fsub fast float %3060, %2908
  %3064 = fsub fast float %3061, %2909
  br label %3072

; <label>:3065                                    ; preds = %3007
  %3066 = fmul fast float %1694, 8.096000e+03
  %3067 = fmul fast float %1695, 8.096000e+03
  %3068 = fmul fast float %1696, 8.096000e+03
  %3069 = fadd fast float %3066, %142
  %3070 = fadd fast float %3067, %143
  %3071 = fadd fast float %3068, %144
  br label %3072

; <label>:3072                                    ; preds = %3065, %3008
  %3073 = phi float [ %1694, %3065 ], [ %3062, %3008 ]
  %3074 = phi float [ %1695, %3065 ], [ %3063, %3008 ]
  %3075 = phi float [ %1696, %3065 ], [ %3064, %3008 ]
  %3076 = phi float [ %3069, %3065 ], [ %3059, %3008 ]
  %3077 = phi float [ %3070, %3065 ], [ %3060, %3008 ]
  %3078 = phi float [ %3071, %3065 ], [ %3061, %3008 ]
  %3079 = fcmp fast olt float %2926, 1.000000e+00
  br i1 %3079, label %3080, label %3111, !dx.controlflow.hints !115

; <label>:3080                                    ; preds = %3072
  %3081 = fmul fast float %3075, %2924
  %3082 = fmul fast float %3074, %2925
  %3083 = fsub fast float %3081, %3082
  %3084 = fmul fast float %3073, %2925
  %3085 = fmul fast float %3075, %2923
  %3086 = fsub fast float %3084, %3085
  %3087 = fmul fast float %3074, %2923
  %3088 = fmul fast float %3073, %2924
  %3089 = fsub fast float %3087, %3088
  %3090 = fmul fast float %3083, 2.000000e+00
  %3091 = fmul fast float %3086, 2.000000e+00
  %3092 = fmul fast float %3089, 2.000000e+00
  %3093 = fmul fast float %3090, %2926
  %3094 = fmul fast float %3091, %2926
  %3095 = fmul fast float %3092, %2926
  %3096 = fmul fast float %3092, %2924
  %3097 = fmul fast float %3091, %2925
  %3098 = fmul fast float %3090, %2925
  %3099 = fmul fast float %3092, %2923
  %3100 = fmul fast float %3091, %2923
  %3101 = fmul fast float %3090, %2924
  %3102 = fadd fast float %3096, %3073
  %3103 = fadd fast float %3102, %3093
  %3104 = fsub fast float %3103, %3097
  %3105 = fsub fast float %3074, %3099
  %3106 = fadd fast float %3105, %3094
  %3107 = fadd fast float %3106, %3098
  %3108 = fadd fast float %3095, %3075
  %3109 = fsub fast float %3108, %3101
  %3110 = fadd fast float %3109, %3100
  br label %3111

; <label>:3111                                    ; preds = %3080, %3072
  %3112 = phi float [ %3104, %3080 ], [ %3073, %3072 ]
  %3113 = phi float [ %3107, %3080 ], [ %3074, %3072 ]
  %3114 = phi float [ %3110, %3080 ], [ %3075, %3072 ]
  br i1 %2952, label %3146, label %3115

; <label>:3115                                    ; preds = %3111
  %3116 = fmul fast float %1628, 0x400187C840000000
  %3117 = fadd fast float %3116, 0xC00EFC2120000000
  %3118 = fmul fast float %3117, %1628
  %3119 = fadd fast float %3118, 0x3FE5D16340000000
  %3120 = fmul fast float %3119, %1628
  %3121 = fadd fast float %3120, 1.000000e+00
  %3122 = call float @dx.op.unary.f32(i32 7, float %3121)  ; Saturate(value)
  %3123 = fsub fast float %3076, %142
  %3124 = fsub fast float %3077, %143
  %3125 = fsub fast float %3078, %144
  %3126 = fsub fast float %3076, %2907
  %3127 = fsub fast float %3077, %2908
  %3128 = fsub fast float %3078, %2909
  %3129 = call float @dx.op.dot3.f32(i32 55, float %3123, float %3124, float %3125, float %3123, float %3124, float %3125)  ; Dot3(ax,ay,az,bx,by,bz)
  %3130 = call float @dx.op.dot3.f32(i32 55, float %3126, float %3127, float %3128, float %3126, float %3127, float %3128)  ; Dot3(ax,ay,az,bx,by,bz)
  %3131 = fadd fast float %3130, 0x3EE4F8B580000000
  %3132 = fdiv fast float %3129, %3131
  %3133 = bitcast float %3132 to i32
  %3134 = ashr i32 %3133, 1
  %3135 = add nsw i32 %3134, 532487669
  %3136 = bitcast i32 %3135 to float
  %3137 = fmul fast float %3136, %3122
  %3138 = call float @dx.op.unary.f32(i32 7, float %3137)  ; Saturate(value)
  %3139 = fmul fast float %3138, 0x4009981AE0000000
  %3140 = fsub fast float 0x40111BBD80000000, %3139
  %3141 = fmul fast float %3140, %3138
  %3142 = fadd fast float %3141, 0xC0009F6020000000
  %3143 = fmul fast float %3142, %3138
  %3144 = fadd fast float %3143, 1.000000e+00
  %3145 = call float @dx.op.unary.f32(i32 7, float %3144)  ; Saturate(value)
  br label %3149

; <label>:3146                                    ; preds = %3111
  %3147 = icmp ne i32 %2953, -1
  %3148 = zext i1 %3147 to i32
  br label %3149

; <label>:3149                                    ; preds = %3146, %3115
  %3150 = phi float [ %1628, %3146 ], [ %3145, %3115 ]
  %3151 = phi i32 [ %3148, %3146 ], [ 0, %3115 ]
  %3152 = fmul float %3150, 5.000000e+00
  %3153 = fsub float 5.000000e+00, %3152
  %3154 = icmp ne i32 %3151, 0
  %3155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3156 = extractvalue %dx.types.CBufRet.f32 %3155, 3
  %3157 = fadd fast float %3156, %3153
  %3158 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3157)  ; FMax(a,b)
  %3159 = call float @dx.op.unary.f32(i32 6, float %3112)  ; FAbs(value)
  %3160 = call float @dx.op.unary.f32(i32 6, float %3113)  ; FAbs(value)
  %3161 = fadd fast float %3160, %3159
  %3162 = call float @dx.op.unary.f32(i32 6, float %3114)  ; FAbs(value)
  %3163 = fadd fast float %3161, %3162
  %3164 = fcmp fast oeq float %3163, 0.000000e+00
  %3165 = fdiv fast float 1.000000e+00, %3163
  %3166 = select i1 %3164, float 1.000000e+00, float %3165
  %3167 = fmul fast float %3166, %3112
  %3168 = fmul fast float %3166, %3113
  %3169 = call float @dx.op.unary.f32(i32 6, float %3168)  ; FAbs(value)
  %3170 = call float @dx.op.unary.f32(i32 6, float %3167)  ; FAbs(value)
  %3171 = fsub fast float 1.000000e+00, %3169
  %3172 = fsub fast float 1.000000e+00, %3170
  %3173 = fcmp fast oge float %3167, 0.000000e+00
  %3174 = fcmp fast oge float %3168, 0.000000e+00
  %3175 = select i1 %3173, float 1.000000e+00, float -1.000000e+00
  %3176 = select i1 %3174, float 1.000000e+00, float -1.000000e+00
  %3177 = fcmp fast ole float %3114, 0.000000e+00
  %3178 = fmul fast float %3175, %3171
  %3179 = fmul fast float %3176, %3172
  %3180 = select i1 %3177, float %3178, float %3167
  %3181 = select i1 %3177, float %3179, float %3168
  %3182 = fmul fast float %3180, 5.000000e-01
  %3183 = fmul fast float %3181, 5.000000e-01
  %3184 = fadd fast float %3182, 5.000000e-01
  %3185 = fadd fast float %3183, 5.000000e-01
  %3186 = uitofp i32 %2950 to float
  %3187 = call float @dx.op.binary.f32(i32 36, float %3158, float 3.000000e+00)  ; FMin(a,b)
  %3188 = fadd fast float %3187, 2.000000e+00
  %3189 = call float @dx.op.unary.f32(i32 21, float %3188)  ; Exp(value)
  %3190 = extractvalue %dx.types.CBufRet.f32 %3155, 1
  %3191 = fmul fast float %3190, %3189
  %3192 = fmul fast float %3191, 2.000000e+00
  %3193 = fsub fast float 1.000000e+00, %3192
  %3194 = fmul fast float %3184, %3193
  %3195 = fmul fast float %3185, %3193
  %3196 = fadd fast float %3194, %3191
  %3197 = fadd fast float %3195, %3191
  %3198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %54, float %3196, float %3197, float %3186, float undef, i32 0, i32 0, i32 undef, float %3158)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3199 = extractvalue %dx.types.ResRet.f32 %3198, 0
  %3200 = extractvalue %dx.types.ResRet.f32 %3198, 1
  %3201 = extractvalue %dx.types.ResRet.f32 %3198, 2
  %3202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3203 = extractvalue %dx.types.CBufRet.f32 %3202, 3
  %3204 = fmul fast float %3203, %2920
  %3205 = call float @dx.op.binary.f32(i32 36, float %2304, float %3204)  ; FMin(a,b)
  %3206 = select i1 %3154, float %3205, float %3204
  %3207 = fmul fast float %3199, %2999
  %3208 = fmul fast float %3207, %3206
  %3209 = fmul fast float %3200, %2999
  %3210 = fmul fast float %3209, %3206
  %3211 = fmul fast float %3201, %2999
  %3212 = fmul fast float %3211, %3206
  %3213 = fadd fast float %3208, %2895
  %3214 = fadd fast float %3210, %2896
  %3215 = fadd fast float %3212, %2897
  %3216 = fsub fast float %2898, %2999
  br label %3001

; <label>:3217                                    ; preds = %3001
  br label %3218

; <label>:3218                                    ; preds = %3217, %2864
  %3219 = phi float [ %2865, %2864 ], [ %3002, %3217 ]
  %3220 = phi float [ %2866, %2864 ], [ %3003, %3217 ]
  %3221 = phi float [ %2867, %2864 ], [ %3004, %3217 ]
  %3222 = phi float [ %2868, %2864 ], [ %3005, %3217 ]
  %3223 = add i32 %2869, 1
  %3224 = icmp ugt i32 %3223, %2861
  br i1 %3224, label %3225, label %2864, !llvm.loop !116

; <label>:3225                                    ; preds = %3218
  br label %3226

; <label>:3226                                    ; preds = %3225, %2812
  %3227 = phi float [ 0.000000e+00, %2812 ], [ %3219, %3225 ]
  %3228 = phi float [ 0.000000e+00, %2812 ], [ %3220, %3225 ]
  %3229 = phi float [ 0.000000e+00, %2812 ], [ %3221, %3225 ]
  %3230 = call float @dx.op.dot3.f32(i32 55, float %3227, float %3228, float %3229, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3231 = select i1 %1682, float 0.000000e+00, float %3227
  %3232 = select i1 %1682, float %3230, float %3228
  %3233 = select i1 %1682, float 0.000000e+00, float %3229
  %3234 = fcmp fast olt float %2806, 0.000000e+00
  %3235 = call float @dx.op.unary.f32(i32 6, float %2806)  ; FAbs(value)
  %3236 = fmul fast float %3235, %2807
  %3237 = fmul fast float %3235, %2808
  %3238 = fmul fast float %3235, %2809
  %3239 = select i1 %3234, float %2807, float %3236
  %3240 = select i1 %3234, float %2808, float %3237
  %3241 = select i1 %3234, float %2809, float %3238
  %3242 = fsub fast float 1.000000e+00, %3235
  %3243 = call float @dx.op.unary.f32(i32 7, float %3242)  ; Saturate(value)
  %3244 = fmul fast float %3243, %3231
  %3245 = fmul fast float %3243, %3232
  %3246 = fmul fast float %3243, %3233
  %3247 = fadd fast float %3239, %3244
  %3248 = fadd fast float %3240, %3245
  %3249 = fadd fast float %3241, %3246
  br label %3250

; <label>:3250                                    ; preds = %3226, %2805
  %3251 = phi float [ %2807, %2805 ], [ %3247, %3226 ]
  %3252 = phi float [ %2808, %2805 ], [ %3248, %3226 ]
  %3253 = phi float [ %2809, %2805 ], [ %3249, %3226 ]
  %3254 = fmul fast float %2527, %1631
  %3255 = fmul fast float %2513, %2527
  %3256 = fmul fast float %2514, %2527
  %3257 = fmul fast float %2515, %2527
  %3258 = fmul fast float %3251, %2522
  %3259 = fmul fast float %3252, %2523
  %3260 = fmul fast float %3253, %2524
  %3261 = fadd fast float %3258, %1507
  %3262 = fadd fast float %3259, %1508
  %3263 = fadd fast float %3260, %1509
  %3264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3265 = extractvalue %dx.types.CBufRet.f32 %3264, 3
  %3266 = fcmp fast oeq float %3265, 0.000000e+00
  br i1 %3266, label %4954, label %3267

; <label>:3267                                    ; preds = %3250
  %3268 = extractvalue %dx.types.CBufRet.f32 %3264, 0
  %3269 = extractvalue %dx.types.CBufRet.f32 %3264, 1
  %3270 = extractvalue %dx.types.CBufRet.f32 %3264, 2
  %3271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3272 = extractvalue %dx.types.CBufRet.f32 %3271, 0
  %3273 = extractvalue %dx.types.CBufRet.f32 %3271, 1
  %3274 = extractvalue %dx.types.CBufRet.f32 %3271, 2
  %3275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3276 = extractvalue %dx.types.CBufRet.f32 %3275, 0
  %3277 = extractvalue %dx.types.CBufRet.f32 %3275, 1
  %3278 = call float @dx.op.dot3.f32(i32 55, float %3272, float %3273, float %3274, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3279 = select i1 %1682, float %3276, float %3272
  %3280 = select i1 %1682, float %3278, float %3273
  %3281 = select i1 %1682, float %3277, float %3274
  %3282 = fcmp fast olt float %3265, 0.000000e+00
  br i1 %3282, label %4657, label %3283

; <label>:3283                                    ; preds = %3267
  %3284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3285 = extractvalue %dx.types.CBufRet.f32 %3284, 0
  %3286 = extractvalue %dx.types.CBufRet.f32 %3284, 1
  %3287 = extractvalue %dx.types.CBufRet.f32 %3284, 2
  %3288 = extractvalue %dx.types.CBufRet.f32 %3284, 3
  %3289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3290 = extractvalue %dx.types.CBufRet.f32 %3289, 0
  %3291 = extractvalue %dx.types.CBufRet.f32 %3289, 1
  %3292 = extractvalue %dx.types.CBufRet.f32 %3289, 2
  %3293 = extractvalue %dx.types.CBufRet.f32 %3289, 3
  %3294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3295 = extractvalue %dx.types.CBufRet.f32 %3294, 0
  %3296 = extractvalue %dx.types.CBufRet.f32 %3294, 1
  %3297 = extractvalue %dx.types.CBufRet.f32 %3294, 2
  %3298 = extractvalue %dx.types.CBufRet.f32 %3294, 3
  %3299 = fmul fast float %3285, %142
  %3300 = call float @dx.op.tertiary.f32(i32 46, float %143, float %3286, float %3299)  ; FMad(a,b,c)
  %3301 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3287, float %3300)  ; FMad(a,b,c)
  %3302 = fadd fast float %3301, %3288
  %3303 = fmul fast float %3290, %142
  %3304 = call float @dx.op.tertiary.f32(i32 46, float %143, float %3291, float %3303)  ; FMad(a,b,c)
  %3305 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3292, float %3304)  ; FMad(a,b,c)
  %3306 = fadd fast float %3305, %3293
  %3307 = fmul fast float %3295, %142
  %3308 = call float @dx.op.tertiary.f32(i32 46, float %143, float %3296, float %3307)  ; FMad(a,b,c)
  %3309 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3297, float %3308)  ; FMad(a,b,c)
  %3310 = fadd fast float %3309, %3298
  %3311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3312 = extractvalue %dx.types.CBufRet.f32 %3311, 0
  %3313 = extractvalue %dx.types.CBufRet.f32 %3311, 1
  %3314 = extractvalue %dx.types.CBufRet.f32 %3311, 3
  %3315 = fmul fast float %3314, %3302
  %3316 = fmul fast float %3314, %3306
  %3317 = fadd fast float %3315, %3312
  %3318 = fadd fast float %3316, %3313
  %3319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3320 = extractvalue %dx.types.CBufRet.f32 %3319, 0
  %3321 = extractvalue %dx.types.CBufRet.f32 %3319, 1
  %3322 = extractvalue %dx.types.CBufRet.f32 %3319, 3
  %3323 = fmul fast float %3322, %3302
  %3324 = fmul fast float %3322, %3306
  %3325 = fadd fast float %3323, %3320
  %3326 = fadd fast float %3324, %3321
  %3327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3328 = extractvalue %dx.types.CBufRet.f32 %3327, 1
  %3329 = fsub fast float %3328, %3310
  %3330 = extractvalue %dx.types.CBufRet.f32 %3327, 2
  %3331 = fmul fast float %3329, %3330
  %3332 = fsub fast float 1.000000e+00, %3331
  %3333 = call float @dx.op.unary.f32(i32 7, float %3332)  ; Saturate(value)
  %3334 = extractvalue %dx.types.CBufRet.f32 %3319, 2
  %3335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3336 = extractvalue %dx.types.CBufRet.f32 %3335, 2
  %3337 = fadd fast float %3336, %3334
  %3338 = fcmp fast ogt float %3337, 0.000000e+00
  br i1 %3338, label %3339, label %3364

; <label>:3339                                    ; preds = %3283
  %3340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3341 = extractvalue %dx.types.CBufRet.f32 %3340, 0
  %3342 = extractvalue %dx.types.CBufRet.f32 %3340, 1
  %3343 = fsub fast float %3325, %3341
  %3344 = fsub fast float %3326, %3342
  %3345 = fcmp fast olt float %3343, 0.000000e+00
  %3346 = fcmp fast olt float %3344, 0.000000e+00
  %3347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3348 = extractvalue %dx.types.CBufRet.f32 %3347, 0
  %3349 = extractvalue %dx.types.CBufRet.f32 %3347, 1
  %3350 = extractvalue %dx.types.CBufRet.f32 %3347, 2
  %3351 = extractvalue %dx.types.CBufRet.f32 %3347, 3
  %3352 = select i1 %3345, float %3348, float %3350
  %3353 = select i1 %3346, float %3349, float %3351
  %3354 = fmul fast float %3352, %3343
  %3355 = fmul fast float %3353, %3344
  %3356 = call float @dx.op.unary.f32(i32 6, float %3354)  ; FAbs(value)
  %3357 = call float @dx.op.unary.f32(i32 6, float %3355)  ; FAbs(value)
  %3358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3359 = extractvalue %dx.types.CBufRet.f32 %3358, 0
  %3360 = call float @dx.op.binary.f32(i32 35, float %3356, float %3357)  ; FMax(a,b)
  %3361 = fsub fast float %3359, %3360
  %3362 = call float @dx.op.unary.f32(i32 7, float %3361)  ; Saturate(value)
  %3363 = fmul fast float %3362, %3333
  br label %3364

; <label>:3364                                    ; preds = %3339, %3283
  %3365 = phi float [ %3363, %3339 ], [ 0.000000e+00, %3283 ]
  %3366 = extractvalue %dx.types.CBufRet.f32 %3311, 2
  %3367 = extractvalue %dx.types.CBufRet.f32 %3335, 1
  %3368 = fadd fast float %3367, %3366
  %3369 = fcmp fast ogt float %3368, 0.000000e+00
  br i1 %3369, label %3370, label %3395

; <label>:3370                                    ; preds = %3364
  %3371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3372 = extractvalue %dx.types.CBufRet.f32 %3371, 0
  %3373 = extractvalue %dx.types.CBufRet.f32 %3371, 1
  %3374 = fsub fast float %3317, %3372
  %3375 = fsub fast float %3318, %3373
  %3376 = fcmp fast olt float %3374, 0.000000e+00
  %3377 = fcmp fast olt float %3375, 0.000000e+00
  %3378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3379 = extractvalue %dx.types.CBufRet.f32 %3378, 0
  %3380 = extractvalue %dx.types.CBufRet.f32 %3378, 1
  %3381 = extractvalue %dx.types.CBufRet.f32 %3378, 2
  %3382 = extractvalue %dx.types.CBufRet.f32 %3378, 3
  %3383 = select i1 %3376, float %3379, float %3381
  %3384 = select i1 %3377, float %3380, float %3382
  %3385 = fmul fast float %3383, %3374
  %3386 = fmul fast float %3384, %3375
  %3387 = call float @dx.op.unary.f32(i32 6, float %3385)  ; FAbs(value)
  %3388 = call float @dx.op.unary.f32(i32 6, float %3386)  ; FAbs(value)
  %3389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3390 = extractvalue %dx.types.CBufRet.f32 %3389, 0
  %3391 = call float @dx.op.binary.f32(i32 35, float %3387, float %3388)  ; FMax(a,b)
  %3392 = fsub fast float %3390, %3391
  %3393 = call float @dx.op.unary.f32(i32 7, float %3392)  ; Saturate(value)
  %3394 = fmul fast float %3393, %3333
  br label %3395

; <label>:3395                                    ; preds = %3370, %3364
  %3396 = phi float [ %3394, %3370 ], [ 0.000000e+00, %3364 ]
  %3397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3398 = extractvalue %dx.types.CBufRet.f32 %3397, 1
  %3399 = call float @dx.op.unary.f32(i32 7, float %3398)  ; Saturate(value)
  %3400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3401 = extractvalue %dx.types.CBufRet.f32 %3400, 0
  %3402 = extractvalue %dx.types.CBufRet.f32 %3400, 1
  %3403 = fsub fast float %3302, %3401
  %3404 = fsub fast float %3306, %3402
  %3405 = fcmp fast olt float %3403, 0.000000e+00
  %3406 = fcmp fast olt float %3404, 0.000000e+00
  %3407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3408 = extractvalue %dx.types.CBufRet.f32 %3407, 0
  %3409 = extractvalue %dx.types.CBufRet.f32 %3407, 1
  %3410 = extractvalue %dx.types.CBufRet.f32 %3407, 2
  %3411 = extractvalue %dx.types.CBufRet.f32 %3407, 3
  %3412 = select i1 %3405, float %3408, float %3410
  %3413 = select i1 %3406, float %3409, float %3411
  %3414 = fmul fast float %3412, %3403
  %3415 = fmul fast float %3413, %3404
  %3416 = call float @dx.op.unary.f32(i32 6, float %3414)  ; FAbs(value)
  %3417 = call float @dx.op.unary.f32(i32 6, float %3415)  ; FAbs(value)
  %3418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3419 = extractvalue %dx.types.CBufRet.f32 %3418, 0
  %3420 = call float @dx.op.binary.f32(i32 35, float %3416, float %3417)  ; FMax(a,b)
  %3421 = fsub fast float %3419, %3420
  %3422 = call float @dx.op.unary.f32(i32 7, float %3421)  ; Saturate(value)
  %3423 = call float @dx.op.binary.f32(i32 36, float %3422, float %3399)  ; FMin(a,b)
  %3424 = fmul fast float %3423, %3333
  %3425 = fsub fast float %3396, %3424
  %3426 = fsub fast float %3365, %3396
  %3427 = fsub fast float %3426, %3424
  %3428 = call float @dx.op.binary.f32(i32 35, float %3396, float %3365)  ; FMax(a,b)
  %3429 = call float @dx.op.binary.f32(i32 35, float %3424, float %3428)  ; FMax(a,b)
  %3430 = fcmp fast olt float %3429, 1.000000e+00
  br i1 %3430, label %3431, label %4102, !dx.controlflow.hints !117

; <label>:3431                                    ; preds = %3395
  %3432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3433 = extractvalue %dx.types.CBufRet.f32 %3432, 0
  %3434 = fcmp fast une float %3433, 0.000000e+00
  br i1 %3434, label %3435, label %4102, !dx.controlflow.hints !118

; <label>:3435                                    ; preds = %3431
  %3436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3437 = extractvalue %dx.types.CBufRet.f32 %3436, 0
  %3438 = extractvalue %dx.types.CBufRet.f32 %3436, 1
  %3439 = extractvalue %dx.types.CBufRet.f32 %3436, 2
  %3440 = extractvalue %dx.types.CBufRet.f32 %3436, 3
  %3441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3442 = extractvalue %dx.types.CBufRet.f32 %3441, 0
  %3443 = extractvalue %dx.types.CBufRet.f32 %3441, 1
  %3444 = extractvalue %dx.types.CBufRet.f32 %3441, 2
  %3445 = extractvalue %dx.types.CBufRet.f32 %3441, 3
  %3446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3447 = extractvalue %dx.types.CBufRet.f32 %3446, 0
  %3448 = extractvalue %dx.types.CBufRet.f32 %3446, 1
  %3449 = extractvalue %dx.types.CBufRet.f32 %3446, 2
  %3450 = extractvalue %dx.types.CBufRet.f32 %3446, 3
  %3451 = fmul fast float %3437, %142
  %3452 = call float @dx.op.tertiary.f32(i32 46, float %143, float %3438, float %3451)  ; FMad(a,b,c)
  %3453 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3439, float %3452)  ; FMad(a,b,c)
  %3454 = fadd fast float %3453, %3440
  %3455 = fmul fast float %3442, %142
  %3456 = call float @dx.op.tertiary.f32(i32 46, float %143, float %3443, float %3455)  ; FMad(a,b,c)
  %3457 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3444, float %3456)  ; FMad(a,b,c)
  %3458 = fadd fast float %3457, %3445
  %3459 = fmul fast float %3447, %142
  %3460 = call float @dx.op.tertiary.f32(i32 46, float %143, float %3448, float %3459)  ; FMad(a,b,c)
  %3461 = call float @dx.op.tertiary.f32(i32 46, float %144, float %3449, float %3460)  ; FMad(a,b,c)
  %3462 = fadd fast float %3461, %3450
  %3463 = fcmp fast oge float %3454, 1.000000e+00
  %3464 = fcmp fast oge float %3458, 1.000000e+00
  %3465 = or i1 %3463, %3464
  %3466 = fcmp fast olt float %3454, 0.000000e+00
  %3467 = fcmp fast olt float %3458, 0.000000e+00
  %3468 = or i1 %3466, %3467
  %3469 = or i1 %3465, %3468
  br i1 %3469, label %4102, label %3470, !dx.controlflow.hints !119

; <label>:3470                                    ; preds = %3435
  %3471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3472 = extractvalue %dx.types.CBufRet.f32 %3471, 0
  %3473 = extractvalue %dx.types.CBufRet.f32 %3471, 1
  %3474 = extractvalue %dx.types.CBufRet.f32 %3471, 2
  %3475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3476 = extractvalue %dx.types.CBufRet.f32 %3475, 1
  %3477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3478 = extractvalue %dx.types.CBufRet.i32 %3477, 2
  %3479 = uitofp i32 %3478 to float
  %3480 = extractvalue %dx.types.CBufRet.i32 %3477, 3
  %3481 = uitofp i32 %3480 to float
  %3482 = extractvalue %dx.types.CBufRet.f32 %3471, 3
  %3483 = fmul fast float %3482, 2.000000e+00
  %3484 = fsub fast float %3454, %3472
  %3485 = fsub fast float %3458, %3473
  %3486 = fmul fast float %3483, %3484
  %3487 = fmul fast float %3483, %3485
  %3488 = fdiv fast float 1.000000e+00, %3270
  %3489 = fmul fast float %3487, %3488
  %3490 = call float @dx.op.unary.f32(i32 6, float %3489)  ; FAbs(value)
  %3491 = fmul fast float %3474, %144
  %3492 = fmul fast float %3491, %3483
  %3493 = call float @dx.op.unary.f32(i32 6, float %3492)  ; FAbs(value)
  %3494 = call float @dx.op.unary.f32(i32 6, float %3486)  ; FAbs(value)
  %3495 = call float @dx.op.binary.f32(i32 35, float %3493, float %3490)  ; FMax(a,b)
  %3496 = call float @dx.op.binary.f32(i32 35, float %3494, float %3495)  ; FMax(a,b)
  %3497 = fmul fast float %3496, 2.000000e+00
  %3498 = call float @dx.op.unary.f32(i32 23, float %3497)  ; Log(value)
  %3499 = call float @dx.op.binary.f32(i32 35, float %3498, float %3479)  ; FMax(a,b)
  %3500 = call float @dx.op.unary.f32(i32 22, float %3499)  ; Frc(value)
  %3501 = fadd fast float %3500, 0xBFEA666660000000
  %3502 = fmul fast float %3501, 8.000000e+00
  %3503 = call float @dx.op.unary.f32(i32 7, float %3502)  ; Saturate(value)
  %3504 = call float @dx.op.unary.f32(i32 27, float %3499)  ; Round_ni(value)
  %3505 = fadd fast float %3504, %3503
  %3506 = call float @dx.op.binary.f32(i32 36, float %3505, float %3481)  ; FMin(a,b)
  %3507 = call float @dx.op.unary.f32(i32 27, float %3506)  ; Round_ni(value)
  %3508 = fsub fast float -0.000000e+00, %3507
  %3509 = call float @dx.op.unary.f32(i32 21, float %3508)  ; Exp(value)
  %3510 = fmul fast float %3509, %3483
  %3511 = fmul fast float %3510, %3454
  %3512 = fmul fast float %3510, %3458
  %3513 = fmul fast float %3511, 5.000000e-01
  %3514 = fmul fast float %3512, 5.000000e-01
  %3515 = fadd fast float %3513, 5.000000e-01
  %3516 = fadd fast float %3514, 5.000000e-01
  %3517 = fmul fast float %3511, 2.500000e-01
  %3518 = fmul fast float %3512, 2.500000e-01
  %3519 = fadd fast float %3517, 5.000000e-01
  %3520 = fadd fast float %3518, 5.000000e-01
  %3521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.i32 %3521, 0
  %3523 = and i32 %3522, 536870911
  %3524 = lshr i32 %3523, 9
  %3525 = uitofp i32 %3524 to float
  %3526 = fmul fast float %3525, %3454
  %3527 = fmul fast float %3525, %3458
  %3528 = call float @dx.op.unary.f32(i32 22, float %3526)  ; Frc(value)
  %3529 = call float @dx.op.unary.f32(i32 22, float %3527)  ; Frc(value)
  %3530 = call float @dx.op.unary.f32(i32 22, float %3503)  ; Frc(value)
  %3531 = fcmp fast une float %3530, 0.000000e+00
  br i1 %3531, label %3532, label %3630, !dx.controlflow.hints !120

; <label>:3532                                    ; preds = %3470
  %3533 = call float @dx.op.unary.f32(i32 21, float %3504)  ; Exp(value)
  %3534 = fmul fast float %3533, 1.953125e-03
  %3535 = fcmp fast olt float %3528, %3534
  %3536 = fcmp fast olt float %3529, %3534
  %3537 = or i1 %3535, %3536
  %3538 = fsub fast float 1.000000e+00, %3534
  %3539 = fcmp fast ogt float %3528, %3538
  %3540 = fcmp fast ogt float %3529, %3538
  %3541 = or i1 %3539, %3540
  %3542 = or i1 %3537, %3541
  br i1 %3542, label %3543, label %3709, !dx.controlflow.hints !121

; <label>:3543                                    ; preds = %3532
  %3544 = fmul fast float %3476, 5.000000e-01
  %3545 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3546 = extractvalue %dx.types.CBufRet.i32 %3545, 0
  %3547 = fmul fast float %3458, 3.530000e+02
  %3548 = uitofp i32 %3523 to float
  %3549 = fmul fast float %3547, %3548
  %3550 = fmul fast float %3454, 6.130000e+02
  %3551 = fadd fast float %3549, %3550
  %3552 = fptoui float %3551 to i32
  %3553 = add i32 %3546, %3552
  %3554 = mul i32 %3553, -63
  %3555 = lshr i32 %3554, 17
  %3556 = xor i32 %3555, %3554
  %3557 = mul i32 %3556, -511
  %3558 = mul i32 %3556, -8176
  %3559 = xor i32 %3557, %3558
  %3560 = mul i32 %3559, -7
  %3561 = mul i32 %3559, -7168
  %3562 = xor i32 %3560, %3561
  %3563 = lshr i32 %3562, 15
  %3564 = xor i32 %3563, %3560
  %3565 = and i32 %3564, 15
  %3566 = mul i32 %3565, 2
  %3567 = add i32 0, %3566
  %3568 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3567
  %3569 = load float, float* %3568, align 4
  %3570 = mul i32 %3565, 2
  %3571 = add i32 1, %3570
  %3572 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3571
  %3573 = load float, float* %3572, align 4
  %3574 = fmul fast float %3458, 2.770000e+02
  %3575 = fmul fast float %3574, %3548
  %3576 = fmul fast float %3454, 5.990000e+02
  %3577 = fadd fast float %3575, %3576
  %3578 = fptoui float %3577 to i32
  %3579 = mul i32 %3578, -63
  %3580 = lshr i32 %3579, 17
  %3581 = xor i32 %3580, %3579
  %3582 = mul i32 %3581, -511
  %3583 = mul i32 %3581, -8176
  %3584 = xor i32 %3582, %3583
  %3585 = mul i32 %3584, -7
  %3586 = mul i32 %3584, -7168
  %3587 = xor i32 %3585, %3586
  %3588 = lshr i32 %3587, 15
  %3589 = xor i32 %3588, %3585
  %3590 = and i32 %3589, 63
  %3591 = mul i32 %3590, 2
  %3592 = add i32 0, %3591
  %3593 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3592
  %3594 = load float, float* %3593, align 4
  %3595 = mul i32 %3590, 2
  %3596 = add i32 1, %3595
  %3597 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3596
  %3598 = load float, float* %3597, align 4
  %3599 = call float @dx.op.dot2.f32(i32 54, float %3569, float %3573, float %3594, float %3598)  ; Dot2(ax,ay,bx,by)
  %3600 = fsub fast float -0.000000e+00, %3594
  %3601 = call float @dx.op.dot2.f32(i32 54, float %3569, float %3573, float %3600, float %3598)  ; Dot2(ax,ay,bx,by)
  %3602 = fmul fast float %3599, %3544
  %3603 = fmul fast float %3601, %3544
  %3604 = fdiv fast float 2.000000e+00, %3510
  %3605 = fmul fast float %3533, 9.765625e-04
  %3606 = fcmp fast olt float %3528, %3605
  %3607 = fcmp fast olt float %3529, %3605
  %3608 = or i1 %3606, %3607
  %3609 = fsub fast float 1.000000e+00, %3605
  %3610 = fcmp fast ogt float %3528, %3609
  %3611 = fcmp fast ogt float %3529, %3609
  %3612 = or i1 %3610, %3611
  %3613 = or i1 %3608, %3612
  %3614 = fmul fast float %3602, 2.000000e+00
  br i1 %3613, label %3615, label %3619

; <label>:3615                                    ; preds = %3543
  %3616 = fmul fast float %3603, 2.000000e+00
  %3617 = fadd fast float %3614, %3515
  %3618 = fadd fast float %3616, %3516
  br label %3619

; <label>:3619                                    ; preds = %3615, %3543
  %3620 = phi float [ %3617, %3615 ], [ %3515, %3543 ]
  %3621 = phi float [ %3618, %3615 ], [ %3516, %3543 ]
  %3622 = phi i32 [ 3, %3615 ], [ 2, %3543 ]
  %3623 = fadd fast float %3602, %3519
  %3624 = fadd fast float %3603, %3520
  %3625 = fmul fast float %3614, %3604
  %3626 = fmul fast float %3604, 2.000000e+00
  %3627 = fmul fast float %3626, %3603
  %3628 = fadd fast float %3625, %3454
  %3629 = fadd fast float %3627, %3458
  br label %3709

; <label>:3630                                    ; preds = %3470
  %3631 = call float @dx.op.unary.f32(i32 21, float %3507)  ; Exp(value)
  %3632 = fmul fast float %3631, 9.765625e-04
  %3633 = fcmp fast olt float %3528, %3632
  %3634 = fcmp fast olt float %3529, %3632
  %3635 = or i1 %3633, %3634
  %3636 = fsub fast float 1.000000e+00, %3632
  %3637 = fcmp fast ogt float %3528, %3636
  %3638 = fcmp fast ogt float %3529, %3636
  %3639 = or i1 %3637, %3638
  %3640 = or i1 %3635, %3639
  br i1 %3640, label %3641, label %3709, !dx.controlflow.hints !122

; <label>:3641                                    ; preds = %3630
  %3642 = fmul fast float %3476, 5.000000e-01
  %3643 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3644 = extractvalue %dx.types.CBufRet.i32 %3643, 0
  %3645 = fmul fast float %3458, 3.530000e+02
  %3646 = uitofp i32 %3523 to float
  %3647 = fmul fast float %3645, %3646
  %3648 = fmul fast float %3454, 6.130000e+02
  %3649 = fadd fast float %3647, %3648
  %3650 = fptoui float %3649 to i32
  %3651 = add i32 %3644, %3650
  %3652 = mul i32 %3651, -63
  %3653 = lshr i32 %3652, 17
  %3654 = xor i32 %3653, %3652
  %3655 = mul i32 %3654, -511
  %3656 = mul i32 %3654, -8176
  %3657 = xor i32 %3655, %3656
  %3658 = mul i32 %3657, -7
  %3659 = mul i32 %3657, -7168
  %3660 = xor i32 %3658, %3659
  %3661 = lshr i32 %3660, 15
  %3662 = xor i32 %3661, %3658
  %3663 = and i32 %3662, 15
  %3664 = mul i32 %3663, 2
  %3665 = add i32 0, %3664
  %3666 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3665
  %3667 = load float, float* %3666, align 4
  %3668 = mul i32 %3663, 2
  %3669 = add i32 1, %3668
  %3670 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3669
  %3671 = load float, float* %3670, align 4
  %3672 = fmul fast float %3458, 2.770000e+02
  %3673 = fmul fast float %3672, %3646
  %3674 = fmul fast float %3454, 5.990000e+02
  %3675 = fadd fast float %3673, %3674
  %3676 = fptoui float %3675 to i32
  %3677 = mul i32 %3676, -63
  %3678 = lshr i32 %3677, 17
  %3679 = xor i32 %3678, %3677
  %3680 = mul i32 %3679, -511
  %3681 = mul i32 %3679, -8176
  %3682 = xor i32 %3680, %3681
  %3683 = mul i32 %3682, -7
  %3684 = mul i32 %3682, -7168
  %3685 = xor i32 %3683, %3684
  %3686 = lshr i32 %3685, 15
  %3687 = xor i32 %3686, %3683
  %3688 = and i32 %3687, 63
  %3689 = mul i32 %3688, 2
  %3690 = add i32 0, %3689
  %3691 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3690
  %3692 = load float, float* %3691, align 4
  %3693 = mul i32 %3688, 2
  %3694 = add i32 1, %3693
  %3695 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3694
  %3696 = load float, float* %3695, align 4
  %3697 = call float @dx.op.dot2.f32(i32 54, float %3667, float %3671, float %3692, float %3696)  ; Dot2(ax,ay,bx,by)
  %3698 = fsub fast float -0.000000e+00, %3692
  %3699 = call float @dx.op.dot2.f32(i32 54, float %3667, float %3671, float %3698, float %3696)  ; Dot2(ax,ay,bx,by)
  %3700 = fmul fast float %3697, %3642
  %3701 = fmul fast float %3699, %3642
  %3702 = fadd fast float %3700, %3515
  %3703 = fadd fast float %3701, %3516
  %3704 = fdiv fast float 2.000000e+00, %3510
  %3705 = fmul fast float %3704, %3700
  %3706 = fmul fast float %3701, %3704
  %3707 = fadd fast float %3705, %3454
  %3708 = fadd fast float %3706, %3458
  br label %3709

; <label>:3709                                    ; preds = %3641, %3630, %3619, %3532
  %3710 = phi float [ %3623, %3619 ], [ %3519, %3532 ], [ %3519, %3641 ], [ %3519, %3630 ]
  %3711 = phi float [ %3624, %3619 ], [ %3520, %3532 ], [ %3520, %3641 ], [ %3520, %3630 ]
  %3712 = phi float [ %3620, %3619 ], [ %3515, %3532 ], [ %3702, %3641 ], [ %3515, %3630 ]
  %3713 = phi float [ %3621, %3619 ], [ %3516, %3532 ], [ %3703, %3641 ], [ %3516, %3630 ]
  %3714 = phi i32 [ %3622, %3619 ], [ 0, %3532 ], [ 1, %3641 ], [ 0, %3630 ]
  %3715 = phi float [ %3628, %3619 ], [ %3454, %3532 ], [ %3707, %3641 ], [ %3454, %3630 ]
  %3716 = phi float [ %3629, %3619 ], [ %3458, %3532 ], [ %3708, %3641 ], [ %3458, %3630 ]
  %3717 = fsub fast float %3481, %3479
  %3718 = fptoui float %3717 to i32
  %3719 = add i32 %3718, 320
  %3720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %3719)  ; CBufferLoadLegacy(handle,regIndex)
  %3721 = extractvalue %dx.types.CBufRet.f32 %3720, 0
  %3722 = extractvalue %dx.types.CBufRet.f32 %3720, 1
  %3723 = fcmp fast une float %3506, %3481
  %3724 = fsub fast float %3715, %3721
  %3725 = fsub fast float %3716, %3722
  %3726 = call float @dx.op.unary.f32(i32 6, float %3724)  ; FAbs(value)
  %3727 = call float @dx.op.unary.f32(i32 6, float %3725)  ; FAbs(value)
  %3728 = fmul fast float %3726, %3510
  %3729 = fmul fast float %3727, %3510
  %3730 = fcmp fast olt float %3728, 1.000000e+00
  %3731 = fcmp fast olt float %3729, 1.000000e+00
  %3732 = and i1 %3730, %3731
  %3733 = or i1 %3723, %3732
  br i1 %3733, label %3734, label %4102, !dx.controlflow.hints !123

; <label>:3734                                    ; preds = %3709
  %3735 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3736 = extractvalue %dx.types.CBufRet.i32 %3735, 2
  %3737 = sitofp i32 %3736 to float
  %3738 = fsub fast float %3506, %3737
  %3739 = call float @dx.op.unary.f32(i32 27, float %3738)  ; Round_ni(value)
  %3740 = call float @dx.op.unary.f32(i32 22, float %3506)  ; Frc(value)
  %3741 = icmp eq i32 %3714, 0
  %3742 = call float @dx.op.unary.f32(i32 22, float %3712)  ; Frc(value)
  %3743 = call float @dx.op.unary.f32(i32 22, float %3713)  ; Frc(value)
  br i1 %3741, label %3814, label %3744, !dx.controlflow.hints !124

; <label>:3744                                    ; preds = %3734
  %3745 = and i32 %3714, 1
  %3746 = icmp eq i32 %3745, 0
  br i1 %3746, label %3760, label %3747, !dx.controlflow.hints !125

; <label>:3747                                    ; preds = %3744
  %3748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3749 = extractvalue %dx.types.CBufRet.f32 %3748, 0
  %3750 = fmul fast float %3742, %3749
  %3751 = fmul fast float %3743, %3749
  %3752 = fptoui float %3750 to i32
  %3753 = fptoui float %3751 to i32
  %3754 = fptoui float %3739 to i32
  %3755 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %3752, i32 %3753, i32 %3754, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3756 = extractvalue %dx.types.ResRet.f32 %3755, 0
  %3757 = extractvalue %dx.types.ResRet.f32 %3755, 1
  %3758 = extractvalue %dx.types.ResRet.f32 %3755, 2
  %3759 = extractvalue %dx.types.ResRet.f32 %3755, 3
  br label %3766

; <label>:3760                                    ; preds = %3744
  %3761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %55, float %3742, float %3743, float %3739, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3762 = extractvalue %dx.types.ResRet.f32 %3761, 0
  %3763 = extractvalue %dx.types.ResRet.f32 %3761, 1
  %3764 = extractvalue %dx.types.ResRet.f32 %3761, 2
  %3765 = extractvalue %dx.types.ResRet.f32 %3761, 3
  br label %3766

; <label>:3766                                    ; preds = %3760, %3747
  %3767 = phi float [ %3756, %3747 ], [ %3762, %3760 ]
  %3768 = phi float [ %3757, %3747 ], [ %3763, %3760 ]
  %3769 = phi float [ %3758, %3747 ], [ %3764, %3760 ]
  %3770 = phi float [ %3759, %3747 ], [ %3765, %3760 ]
  %3771 = fcmp fast ogt float %3740, 0.000000e+00
  br i1 %3771, label %3772, label %3842

; <label>:3772                                    ; preds = %3766
  %3773 = and i32 %3714, 2
  %3774 = icmp eq i32 %3773, 0
  %3775 = fadd fast float %3739, 1.000000e+00
  %3776 = call float @dx.op.unary.f32(i32 22, float %3710)  ; Frc(value)
  %3777 = call float @dx.op.unary.f32(i32 22, float %3711)  ; Frc(value)
  br i1 %3774, label %3791, label %3778, !dx.controlflow.hints !126

; <label>:3778                                    ; preds = %3772
  %3779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3780 = extractvalue %dx.types.CBufRet.f32 %3779, 0
  %3781 = fmul fast float %3776, %3780
  %3782 = fmul fast float %3777, %3780
  %3783 = fptoui float %3781 to i32
  %3784 = fptoui float %3782 to i32
  %3785 = fptoui float %3775 to i32
  %3786 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %3783, i32 %3784, i32 %3785, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3787 = extractvalue %dx.types.ResRet.f32 %3786, 0
  %3788 = extractvalue %dx.types.ResRet.f32 %3786, 1
  %3789 = extractvalue %dx.types.ResRet.f32 %3786, 2
  %3790 = extractvalue %dx.types.ResRet.f32 %3786, 3
  br label %3797

; <label>:3791                                    ; preds = %3772
  %3792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %55, float %3776, float %3777, float %3775, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3793 = extractvalue %dx.types.ResRet.f32 %3792, 0
  %3794 = extractvalue %dx.types.ResRet.f32 %3792, 1
  %3795 = extractvalue %dx.types.ResRet.f32 %3792, 2
  %3796 = extractvalue %dx.types.ResRet.f32 %3792, 3
  br label %3797

; <label>:3797                                    ; preds = %3791, %3778
  %3798 = phi float [ %3787, %3778 ], [ %3793, %3791 ]
  %3799 = phi float [ %3788, %3778 ], [ %3794, %3791 ]
  %3800 = phi float [ %3789, %3778 ], [ %3795, %3791 ]
  %3801 = phi float [ %3790, %3778 ], [ %3796, %3791 ]
  %3802 = fsub fast float %3798, %3767
  %3803 = fsub fast float %3799, %3768
  %3804 = fsub fast float %3800, %3769
  %3805 = fsub fast float %3801, %3770
  %3806 = fmul fast float %3802, %3740
  %3807 = fmul fast float %3803, %3740
  %3808 = fmul fast float %3804, %3740
  %3809 = fmul fast float %3805, %3740
  %3810 = fadd fast float %3806, %3767
  %3811 = fadd fast float %3807, %3768
  %3812 = fadd fast float %3808, %3769
  %3813 = fadd fast float %3809, %3770
  br label %3842

; <label>:3814                                    ; preds = %3734
  %3815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %55, float %3742, float %3743, float %3739, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3816 = extractvalue %dx.types.ResRet.f32 %3815, 0
  %3817 = extractvalue %dx.types.ResRet.f32 %3815, 1
  %3818 = extractvalue %dx.types.ResRet.f32 %3815, 2
  %3819 = extractvalue %dx.types.ResRet.f32 %3815, 3
  %3820 = fcmp fast ogt float %3740, 0.000000e+00
  br i1 %3820, label %3821, label %3842, !dx.controlflow.hints !127

; <label>:3821                                    ; preds = %3814
  %3822 = fadd fast float %3739, 1.000000e+00
  %3823 = call float @dx.op.unary.f32(i32 22, float %3710)  ; Frc(value)
  %3824 = call float @dx.op.unary.f32(i32 22, float %3711)  ; Frc(value)
  %3825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %55, float %3823, float %3824, float %3822, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3826 = extractvalue %dx.types.ResRet.f32 %3825, 0
  %3827 = extractvalue %dx.types.ResRet.f32 %3825, 1
  %3828 = extractvalue %dx.types.ResRet.f32 %3825, 2
  %3829 = extractvalue %dx.types.ResRet.f32 %3825, 3
  %3830 = fsub fast float %3826, %3816
  %3831 = fsub fast float %3827, %3817
  %3832 = fsub fast float %3828, %3818
  %3833 = fsub fast float %3829, %3819
  %3834 = fmul fast float %3830, %3740
  %3835 = fmul fast float %3831, %3740
  %3836 = fmul fast float %3832, %3740
  %3837 = fmul fast float %3833, %3740
  %3838 = fadd fast float %3834, %3816
  %3839 = fadd fast float %3835, %3817
  %3840 = fadd fast float %3836, %3818
  %3841 = fadd fast float %3837, %3819
  br label %3842

; <label>:3842                                    ; preds = %3821, %3814, %3797, %3766
  %3843 = phi float [ %3810, %3797 ], [ %3767, %3766 ], [ %3838, %3821 ], [ %3816, %3814 ]
  %3844 = phi float [ %3811, %3797 ], [ %3768, %3766 ], [ %3839, %3821 ], [ %3817, %3814 ]
  %3845 = phi float [ %3812, %3797 ], [ %3769, %3766 ], [ %3840, %3821 ], [ %3818, %3814 ]
  %3846 = phi float [ %3813, %3797 ], [ %3770, %3766 ], [ %3841, %3821 ], [ %3819, %3814 ]
  %3847 = fadd fast float %3843, -5.000000e-01
  %3848 = fadd fast float %3845, -5.000000e-01
  %3849 = fmul fast float %3847, 0xBFD5555560000000
  %3850 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3848, float %3849)  ; FMad(a,b,c)
  %3851 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3844, float 0.000000e+00)  ; FMad(a,b,c)
  %3852 = fadd fast float %3851, %3846
  %3853 = fmul fast float %3847, -7.500000e-01
  %3854 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3848, float %3853)  ; FMad(a,b,c)
  %3855 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3844, float 0.000000e+00)  ; FMad(a,b,c)
  %3856 = fadd fast float %3855, %3846
  %3857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3858 = extractvalue %dx.types.CBufRet.f32 %3857, 0
  %3859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3860 = extractvalue %dx.types.CBufRet.f32 %3859, 0
  %3861 = extractvalue %dx.types.CBufRet.f32 %3859, 1
  %3862 = extractvalue %dx.types.CBufRet.f32 %3859, 2
  %3863 = extractvalue %dx.types.CBufRet.f32 %3859, 3
  %3864 = fsub fast float %3860, %3850
  %3865 = fsub fast float %3861, %3852
  %3866 = fsub fast float %3862, %3854
  %3867 = fsub fast float %3863, %3856
  %3868 = fmul fast float %3864, %3858
  %3869 = fmul fast float %3865, %3858
  %3870 = fmul fast float %3866, %3858
  %3871 = fmul fast float %3867, %3858
  %3872 = fadd fast float %3868, %3850
  %3873 = fadd fast float %3869, %3852
  %3874 = fadd fast float %3870, %3854
  %3875 = fadd fast float %3871, %3856
  %3876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3877 = extractvalue %dx.types.ResRet.i32 %3876, 0
  %3878 = and i32 %3877, 536870911
  %3879 = uitofp i32 %3878 to float
  %3880 = fmul fast float %3879, %3715
  %3881 = fmul fast float %3879, %3716
  %3882 = fptoui float %3880 to i32
  %3883 = fptoui float %3881 to i32
  %3884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3885 = extractvalue %dx.types.ResRet.i32 %3884, 0
  %3886 = and i32 %3885, 31
  %3887 = lshr i32 %3882, %3886
  %3888 = lshr i32 %3883, %3886
  %3889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3890 = extractvalue %dx.types.ResRet.i32 %3889, 0
  %3891 = and i32 %3890, 31
  %3892 = shl i32 1, %3891
  %3893 = call i32 @dx.op.binary.i32(i32 40, i32 %3892, i32 4)  ; UMin(a,b)
  %3894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.i32 %3894, 0
  %3896 = extractvalue %dx.types.ResRet.i32 %3894, 1
  %3897 = icmp eq i32 %3893, 0
  br i1 %3897, label %3939, label %3898

; <label>:3898                                    ; preds = %3842
  br label %3899

; <label>:3899                                    ; preds = %3927, %3898
  %3900 = phi i32 [ %3930, %3927 ], [ 0, %3898 ]
  %3901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3902 = extractvalue %dx.types.ResRet.i32 %3901, 0
  %3903 = lshr i32 %3902, 16
  %3904 = and i32 %3903, 31
  %3905 = shl i32 %3888, %3904
  %3906 = add i32 %3905, %3887
  %3907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3908 = extractvalue %dx.types.ResRet.i32 %3907, 0
  %3909 = and i32 %3908, 31
  %3910 = shl i32 %3906, %3909
  %3911 = add i32 %3910, %3900
  %3912 = shl i32 %3911, 2
  %3913 = add i32 %3912, 32
  %3914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3915 = extractvalue %dx.types.ResRet.i32 %3914, 0
  %3916 = icmp slt i32 %3915, 0
  %3917 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %3900
  %3918 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %3900
  %3919 = bitcast float* %3917 to i32*
  %3920 = bitcast float* %3918 to i32*
  br i1 %3916, label %3921, label %3927

; <label>:3921                                    ; preds = %3899
  %3922 = and i32 %3915, 1073741823
  %3923 = add nuw nsw i32 %3922, 20
  %3924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3925 = extractvalue %dx.types.ResRet.i32 %3924, 0
  %3926 = extractvalue %dx.types.ResRet.i32 %3924, 1
  br label %3927

; <label>:3927                                    ; preds = %3921, %3899
  %3928 = phi i32 [ %3925, %3921 ], [ %3895, %3899 ]
  %3929 = phi i32 [ %3926, %3921 ], [ %3896, %3899 ]
  store i32 %3928, i32* %3919, align 4
  store i32 %3929, i32* %3920, align 4
  %3930 = add nuw i32 %3900, 1
  %3931 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3932 = extractvalue %dx.types.CBufRet.i32 %3931, 2
  %3933 = icmp eq i32 %3932, 0
  %3934 = icmp ugt i32 %3915, -1073741825
  %3935 = and i1 %3934, %3933
  %3936 = icmp ult i32 %3930, %3893
  %3937 = and i1 %3935, %3936
  br i1 %3937, label %3899, label %3938

; <label>:3938                                    ; preds = %3927
  br label %3939

; <label>:3939                                    ; preds = %3938, %3842
  %3940 = phi i32 [ 0, %3842 ], [ %3930, %3938 ]
  %3941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.f32 %3941, 2
  %3943 = fptoui float %3942 to i32
  %3944 = icmp eq i32 %3943, 0
  br i1 %3944, label %3996, label %3945

; <label>:3945                                    ; preds = %3939
  br label %3946

; <label>:3946                                    ; preds = %3991, %3945
  %3947 = phi i32 [ %3992, %3991 ], [ %3940, %3945 ]
  %3948 = phi i32 [ %3993, %3991 ], [ 0, %3945 ]
  %3949 = lshr i32 %3948, 2
  %3950 = and i32 %3948, 3
  %3951 = add nuw nsw i32 %3949, 83
  %3952 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 %3951)  ; CBufferLoadLegacy(handle,regIndex)
  %3953 = extractvalue %dx.types.CBufRet.i32 %3952, 0
  %3954 = extractvalue %dx.types.CBufRet.i32 %3952, 1
  %3955 = extractvalue %dx.types.CBufRet.i32 %3952, 2
  %3956 = extractvalue %dx.types.CBufRet.i32 %3952, 3
  %3957 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i32 0, i32 0
  store i32 %3953, i32* %3957, align 4
  %3958 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i32 0, i32 1
  store i32 %3954, i32* %3958, align 4
  %3959 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i32 0, i32 2
  store i32 %3955, i32* %3959, align 4
  %3960 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i32 0, i32 3
  store i32 %3956, i32* %3960, align 4
  %3961 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i32 0, i32 %3950
  %3962 = load i32, i32* %3961, align 4, !tbaa !128, !noalias !130
  %3963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3964 = extractvalue %dx.types.ResRet.i32 %3963, 0
  %3965 = lshr i32 %3964, 16
  %3966 = and i32 %3965, 31
  %3967 = shl i32 %3888, %3966
  %3968 = add i32 %3967, %3887
  %3969 = shl i32 %3968, 2
  %3970 = add i32 %3969, %3962
  %3971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3970, i32 undef)  ; BufferLoad(srv,index,wot)
  %3972 = extractvalue %dx.types.ResRet.i32 %3971, 0
  %3973 = icmp eq i32 %3972, 0
  br i1 %3973, label %3991, label %3974

; <label>:3974                                    ; preds = %3946
  %3975 = icmp slt i32 %3972, 0
  %3976 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %3947
  %3977 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %3947
  %3978 = bitcast float* %3976 to i32*
  %3979 = bitcast float* %3977 to i32*
  br i1 %3975, label %3980, label %3987

; <label>:3980                                    ; preds = %3974
  %3981 = and i32 %3972, 1073741823
  %3982 = add i32 %3962, 20
  %3983 = add i32 %3982, %3981
  %3984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3985 = extractvalue %dx.types.ResRet.i32 %3984, 0
  %3986 = extractvalue %dx.types.ResRet.i32 %3984, 1
  br label %3987

; <label>:3987                                    ; preds = %3980, %3974
  %3988 = phi i32 [ %3985, %3980 ], [ %3895, %3974 ]
  %3989 = phi i32 [ %3986, %3980 ], [ %3896, %3974 ]
  store i32 %3988, i32* %3978, align 4
  store i32 %3989, i32* %3979, align 4
  %3990 = add i32 %3947, 1
  br label %3991

; <label>:3991                                    ; preds = %3987, %3946
  %3992 = phi i32 [ %3947, %3946 ], [ %3990, %3987 ]
  %3993 = add nuw i32 %3948, 1
  %3994 = icmp eq i32 %3993, %3943
  br i1 %3994, label %3995, label %3946

; <label>:3995                                    ; preds = %3991
  br label %3996

; <label>:3996                                    ; preds = %3995, %3939
  %3997 = phi i32 [ %3940, %3939 ], [ %3992, %3995 ]
  %3998 = icmp eq i32 %3997, 1
  %3999 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 0
  %4000 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 0
  br i1 %3998, label %4001, label %4004

; <label>:4001                                    ; preds = %3996
  %4002 = load float, float* %3999, align 4
  %4003 = load float, float* %4000, align 4
  br label %4031

; <label>:4004                                    ; preds = %3996
  %4005 = load float, float* %3999, align 4
  %4006 = load float, float* %4000, align 4
  %4007 = fdiv fast float 1.000000e+00, %4006
  %4008 = fsub fast float %4005, %4007
  %4009 = icmp ugt i32 %3997, 1
  br i1 %4009, label %4010, label %4026

; <label>:4010                                    ; preds = %4004
  br label %4011

; <label>:4011                                    ; preds = %4011, %4010
  %4012 = phi float [ %4021, %4011 ], [ %4008, %4010 ]
  %4013 = phi float [ %4022, %4011 ], [ %4005, %4010 ]
  %4014 = phi i32 [ %4023, %4011 ], [ 1, %4010 ]
  %4015 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %4014
  %4016 = load float, float* %4015, align 4
  %4017 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %4014
  %4018 = load float, float* %4017, align 4
  %4019 = fdiv fast float 1.000000e+00, %4018
  %4020 = fsub fast float %4016, %4019
  %4021 = call float @dx.op.binary.f32(i32 36, float %4012, float %4020)  ; FMin(a,b)
  %4022 = call float @dx.op.binary.f32(i32 35, float %4013, float %4016)  ; FMax(a,b)
  %4023 = add nuw i32 %4014, 1
  %4024 = icmp eq i32 %4023, %3997
  br i1 %4024, label %4025, label %4011

; <label>:4025                                    ; preds = %4011
  br label %4026

; <label>:4026                                    ; preds = %4025, %4004
  %4027 = phi float [ %4008, %4004 ], [ %4021, %4025 ]
  %4028 = phi float [ %4005, %4004 ], [ %4022, %4025 ]
  %4029 = fsub fast float %4028, %4027
  %4030 = fdiv fast float 1.000000e+00, %4029
  br label %4031

; <label>:4031                                    ; preds = %4026, %4001
  %4032 = phi float [ %4002, %4001 ], [ %4028, %4026 ]
  %4033 = phi float [ %4003, %4001 ], [ %4030, %4026 ]
  %4034 = fadd fast float %3462, %4032
  %4035 = fmul fast float %4034, %4033
  %4036 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4037 = fmul fast float %4036, 2.000000e+00
  %4038 = fsub fast float 1.000000e+00, %4037
  %4039 = fmul fast float %3872, %3872
  %4040 = fsub fast float %3873, %4039
  %4041 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4040)  ; FMax(a,b)
  %4042 = fdiv fast float 1.000000e+00, %4041
  %4043 = fmul fast float %3873, %3872
  %4044 = fsub fast float %3874, %4043
  %4045 = fsub fast float %4038, %3872
  %4046 = fmul fast float %4038, %4038
  %4047 = fsub fast float %4046, %3873
  %4048 = fmul fast float %4042, %4044
  %4049 = fmul fast float %4048, %4045
  %4050 = fsub fast float %4047, %4049
  %4051 = fmul fast float %3873, %3873
  %4052 = fsub fast float %3875, %4051
  %4053 = fmul fast float %4044, %4044
  %4054 = fmul fast float %4053, %4042
  %4055 = fsub fast float %4052, %4054
  %4056 = fdiv fast float %4050, %4055
  %4057 = fmul fast float %4056, %4044
  %4058 = fsub fast float %4045, %4057
  %4059 = fmul fast float %4058, %4042
  %4060 = fmul fast float %4059, %3872
  %4061 = fsub fast float 1.000000e+00, %4060
  %4062 = fmul fast float %4056, %3873
  %4063 = fsub fast float %4061, %4062
  %4064 = fmul fast float %4059, %4059
  %4065 = fmul fast float %4056, 4.000000e+00
  %4066 = fmul fast float %4065, %4063
  %4067 = fsub fast float %4064, %4066
  %4068 = call float @dx.op.unary.f32(i32 24, float %4067)  ; Sqrt(value)
  %4069 = fcmp fast oge float %4059, 0.000000e+00
  %4070 = fsub fast float -0.000000e+00, %4068
  %4071 = select i1 %4069, float %4070, float %4068
  %4072 = fsub fast float %4071, %4059
  %4073 = fdiv fast float %4072, %4056
  %4074 = fdiv fast float %4063, %4072
  %4075 = fmul fast float %4073, 5.000000e-01
  %4076 = fmul fast float %4074, 2.000000e+00
  %4077 = select i1 %4069, float %4075, float %4076
  %4078 = select i1 %4069, float %4076, float %4075
  %4079 = call float @dx.op.binary.f32(i32 35, float %4077, float %4078)  ; FMax(a,b)
  %4080 = call float @dx.op.binary.f32(i32 36, float %4077, float %4078)  ; FMin(a,b)
  %4081 = fcmp fast ogt float %4038, %4079
  %4082 = fsub fast float %4038, %4080
  %4083 = fsub fast float %4038, %4079
  %4084 = fsub fast float %4079, %4080
  %4085 = select i1 %4081, float %4083, float %4084
  %4086 = fmul float %4082, %4085
  %4087 = select i1 %4081, float %4080, float %4038
  %4088 = fcmp fast ogt float %4038, %4080
  %4089 = fmul fast float %4087, %4079
  %4090 = fadd fast float %4087, %4079
  %4091 = fmul fast float %4090, %3872
  %4092 = fadd fast float %4089, %3873
  %4093 = fsub fast float %4092, %4091
  %4094 = fdiv fast float %4093, %4086
  %4095 = select i1 %4088, float %4094, float 0.000000e+00
  %4096 = fsub fast float 1.000000e+00, %4095
  %4097 = select i1 %4081, float %4096, float %4095
  %4098 = call float @dx.op.unary.f32(i32 7, float %4097)  ; Saturate(value)
  %4099 = extractvalue %dx.types.CBufRet.f32 %3857, 3
  %4100 = fmul fast float %4099, %4098
  %4101 = fsub fast float 1.000000e+00, %4100
  br label %4102

; <label>:4102                                    ; preds = %4031, %3709, %3435, %3431, %3395
  %4103 = phi float [ 1.000000e+00, %3395 ], [ %4101, %4031 ], [ 1.000000e+00, %3435 ], [ 1.000000e+00, %3709 ], [ 1.000000e+00, %3431 ]
  %4104 = fcmp fast ogt float %3427, 0.000000e+00
  br i1 %4104, label %4105, label %4269, !dx.controlflow.hints !139

; <label>:4105                                    ; preds = %4102
  %4106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.f32 %4106, 2
  %4108 = fadd fast float %4107, %3310
  %4109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4110 = extractvalue %dx.types.CBufRet.f32 %4109, 2
  %4111 = extractvalue %dx.types.CBufRet.f32 %4109, 3
  %4112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4113 = extractvalue %dx.types.CBufRet.f32 %4112, 2
  %4114 = call float @dx.op.binary.f32(i32 35, float %4108, float 0.000000e+00)  ; FMax(a,b)
  %4115 = fadd fast float %4114, 0x3F10000000000000
  %4116 = fcmp fast oeq float %4113, 0.000000e+00
  br i1 %4116, label %4117, label %4184

; <label>:4117                                    ; preds = %4105
  %4118 = extractvalue %dx.types.CBufRet.f32 %4109, 1
  %4119 = extractvalue %dx.types.CBufRet.f32 %4109, 0
  %4120 = fmul fast float %4119, %3325
  %4121 = fmul fast float %4118, %3326
  %4122 = fadd fast float %4120, 5.000000e-01
  %4123 = call float @dx.op.unary.f32(i32 27, float %4122)  ; Round_ni(value)
  %4124 = fadd fast float %4121, 5.000000e-01
  %4125 = call float @dx.op.unary.f32(i32 27, float %4124)  ; Round_ni(value)
  %4126 = fsub fast float %4122, %4123
  %4127 = fsub fast float %4124, %4125
  %4128 = fadd fast float %4123, -5.000000e-01
  %4129 = fadd fast float %4125, -5.000000e-01
  %4130 = fmul fast float %4126, 2.000000e+00
  %4131 = fsub fast float 3.000000e+00, %4130
  %4132 = fadd fast float %4130, 1.000000e+00
  %4133 = fsub fast float 2.000000e+00, %4126
  %4134 = bitcast float %4131 to i32
  %4135 = sub nsw i32 2129859010, %4134
  %4136 = bitcast i32 %4135 to float
  %4137 = fmul fast float %4136, %4133
  %4138 = fadd fast float %4137, -1.000000e+00
  %4139 = bitcast float %4132 to i32
  %4140 = sub nsw i32 2129859010, %4139
  %4141 = bitcast i32 %4140 to float
  %4142 = fmul fast float %4141, %4126
  %4143 = fadd fast float %4142, 1.000000e+00
  %4144 = fmul fast float %4127, 2.000000e+00
  %4145 = fsub fast float 3.000000e+00, %4144
  %4146 = fadd fast float %4144, 1.000000e+00
  %4147 = fsub fast float 2.000000e+00, %4127
  %4148 = bitcast float %4145 to i32
  %4149 = sub nsw i32 2129859010, %4148
  %4150 = bitcast i32 %4149 to float
  %4151 = fmul fast float %4150, %4147
  %4152 = fadd fast float %4151, -1.000000e+00
  %4153 = bitcast float %4146 to i32
  %4154 = sub nsw i32 2129859010, %4153
  %4155 = bitcast i32 %4154 to float
  %4156 = fmul fast float %4155, %4127
  %4157 = fadd fast float %4156, 1.000000e+00
  %4158 = fadd fast float %4138, %4128
  %4159 = fmul fast float %4158, %4110
  %4160 = fadd fast float %4152, %4129
  %4161 = fmul fast float %4160, %4111
  %4162 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %58, float %4159, float %4161, float undef, float undef, i32 0, i32 0, i32 undef, float %4115)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4163 = extractvalue %dx.types.ResRet.f32 %4162, 0
  %4164 = fmul fast float %4163, %4131
  %4165 = fadd fast float %4143, %4128
  %4166 = fmul fast float %4165, %4110
  %4167 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %58, float %4166, float %4161, float undef, float undef, i32 0, i32 0, i32 undef, float %4115)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4168 = extractvalue %dx.types.ResRet.f32 %4167, 0
  %4169 = fmul fast float %4168, %4132
  %4170 = fadd fast float %4157, %4129
  %4171 = fmul fast float %4170, %4111
  %4172 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %58, float %4159, float %4171, float undef, float undef, i32 0, i32 0, i32 undef, float %4115)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4173 = extractvalue %dx.types.ResRet.f32 %4172, 0
  %4174 = fmul fast float %4173, %4131
  %4175 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %58, float %4166, float %4171, float undef, float undef, i32 0, i32 0, i32 undef, float %4115)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4176 = extractvalue %dx.types.ResRet.f32 %4175, 0
  %4177 = fmul fast float %4176, %4132
  %4178 = fadd fast float %4177, %4174
  %4179 = fmul fast float %4178, %4146
  %4180 = fadd fast float %4169, %4164
  %4181 = fmul fast float %4180, %4145
  %4182 = fadd fast float %4181, %4179
  %4183 = fmul fast float %4182, 6.250000e-02
  br label %4269

; <label>:4184                                    ; preds = %4105
  %4185 = fmul fast float %1026, 0x401921FB60000000
  %4186 = call float @dx.op.unary.f32(i32 13, float %4185)  ; Sin(value)
  %4187 = call float @dx.op.unary.f32(i32 12, float %4185)  ; Cos(value)
  %4188 = fsub fast float -0.000000e+00, %4186
  br label %4189

; <label>:4189                                    ; preds = %4238, %4184
  %4190 = phi float [ 0.000000e+00, %4184 ], [ %4233, %4238 ]
  %4191 = phi float [ 0.000000e+00, %4184 ], [ %4235, %4238 ]
  %4192 = phi i32 [ 0, %4184 ], [ %4239, %4238 ]
  %4193 = mul i32 %4192, 2
  %4194 = add i32 0, %4193
  %4195 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4194
  %4196 = load float, float* %4195, align 4
  %4197 = mul i32 %4192, 2
  %4198 = add i32 1, %4197
  %4199 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4198
  %4200 = load float, float* %4199, align 4
  %4201 = fmul fast float %4196, %4187
  %4202 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4188, float %4201)  ; FMad(a,b,c)
  %4203 = fmul fast float %4196, %4186
  %4204 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4187, float %4203)  ; FMad(a,b,c)
  %4205 = fmul fast float %4202, %4113
  %4206 = fmul fast float %4204, %4113
  %4207 = fadd fast float %4205, %3325
  %4208 = fadd fast float %4206, %3326
  %4209 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %57, float %4207, float %4208, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4210 = extractvalue %dx.types.ResRet.f32 %4209, 0
  %4211 = extractvalue %dx.types.ResRet.f32 %4209, 1
  %4212 = extractvalue %dx.types.ResRet.f32 %4209, 2
  %4213 = extractvalue %dx.types.ResRet.f32 %4209, 3
  %4214 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 0
  store float %4210, float* %4214, align 4
  %4215 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 1
  store float %4211, float* %4215, align 4
  %4216 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 2
  store float %4212, float* %4216, align 4
  %4217 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 3
  store float %4213, float* %4217, align 4
  %4218 = fsub fast float %4210, %4115
  %4219 = fcmp fast olt float %4218, 0.000000e+00
  %4220 = select i1 %4219, float 0.000000e+00, float 1.000000e+00
  %4221 = fadd fast float %4220, %4190
  %4222 = fmul fast float %4220, %4218
  %4223 = fadd fast float %4222, %4191
  br label %4224

; <label>:4224                                    ; preds = %4224, %4189
  %4225 = phi i32 [ 1, %4189 ], [ %4236, %4224 ]
  %4226 = phi float [ %4223, %4189 ], [ %4235, %4224 ]
  %4227 = phi float [ %4221, %4189 ], [ %4233, %4224 ]
  %4228 = getelementptr [4 x float], [4 x float]* %83, i32 0, i32 %4225
  %4229 = load float, float* %4228, align 4, !tbaa !97, !noalias !130
  %4230 = fsub fast float %4229, %4115
  %4231 = fcmp fast olt float %4230, 0.000000e+00
  %4232 = select i1 %4231, float 0.000000e+00, float 1.000000e+00
  %4233 = fadd fast float %4232, %4227
  %4234 = fmul fast float %4232, %4230
  %4235 = fadd fast float %4234, %4226
  %4236 = add nuw nsw i32 %4225, 1
  %4237 = icmp eq i32 %4236, 4
  br i1 %4237, label %4238, label %4224, !llvm.loop !140

; <label>:4238                                    ; preds = %4224
  %4239 = add nuw nsw i32 %4192, 1
  %4240 = icmp eq i32 %4239, 8
  br i1 %4240, label %4241, label %4189, !llvm.loop !141

; <label>:4241                                    ; preds = %4238
  %4242 = fdiv fast float 1.000000e+00, %4233
  %4243 = fmul fast float %4242, %4235
  %4244 = fdiv fast float 1.000000e+00, %4115
  %4245 = fmul fast float %4243, %4244
  %4246 = call float @dx.op.unary.f32(i32 7, float %4245)  ; Saturate(value)
  %4247 = call float @dx.op.binary.f32(i32 35, float %4246, float 0.000000e+00)  ; FMax(a,b)
  %4248 = fmul fast float %4233, 3.125000e-02
  %4249 = call float @dx.op.unary.f32(i32 7, float %4248)  ; Saturate(value)
  %4250 = fmul fast float %4249, 2.000000e+00
  %4251 = fadd fast float %4250, -1.000000e+00
  %4252 = fcmp fast ogt float %4251, 0.000000e+00
  %4253 = fcmp fast olt float %4251, 0.000000e+00
  %4254 = zext i1 %4252 to i32
  %4255 = zext i1 %4253 to i32
  %4256 = sub nsw i32 %4254, %4255
  %4257 = sitofp i32 %4256 to float
  %4258 = fmul fast float %4257, %4251
  %4259 = fsub fast float 1.000000e+00, %4258
  %4260 = fmul fast float %4259, %4259
  %4261 = fmul fast float %4260, %4259
  %4262 = fsub fast float %4259, %4261
  %4263 = fmul fast float %4262, %4247
  %4264 = fsub fast float 1.000000e+00, %4261
  %4265 = fsub fast float %4264, %4263
  %4266 = fmul fast float %4257, 5.000000e-01
  %4267 = fmul fast float %4266, %4265
  %4268 = fsub fast float 5.000000e-01, %4267
  br label %4269

; <label>:4269                                    ; preds = %4241, %4117, %4102
  %4270 = phi float [ 1.000000e+00, %4102 ], [ %4183, %4117 ], [ %4268, %4241 ]
  %4271 = fcmp fast ogt float %3425, 0.000000e+00
  br i1 %4271, label %4272, label %4436, !dx.controlflow.hints !142

; <label>:4272                                    ; preds = %4269
  %4273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.f32 %4273, 1
  %4275 = fadd fast float %4274, %3310
  %4276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4277 = extractvalue %dx.types.CBufRet.f32 %4276, 2
  %4278 = extractvalue %dx.types.CBufRet.f32 %4276, 3
  %4279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.f32 %4279, 1
  %4281 = call float @dx.op.binary.f32(i32 35, float %4275, float 0.000000e+00)  ; FMax(a,b)
  %4282 = fadd fast float %4281, 0x3F10000000000000
  %4283 = fcmp fast oeq float %4280, 0.000000e+00
  br i1 %4283, label %4284, label %4351

; <label>:4284                                    ; preds = %4272
  %4285 = extractvalue %dx.types.CBufRet.f32 %4276, 1
  %4286 = extractvalue %dx.types.CBufRet.f32 %4276, 0
  %4287 = fmul fast float %4286, %3317
  %4288 = fmul fast float %4285, %3318
  %4289 = fadd fast float %4287, 5.000000e-01
  %4290 = call float @dx.op.unary.f32(i32 27, float %4289)  ; Round_ni(value)
  %4291 = fadd fast float %4288, 5.000000e-01
  %4292 = call float @dx.op.unary.f32(i32 27, float %4291)  ; Round_ni(value)
  %4293 = fsub fast float %4289, %4290
  %4294 = fsub fast float %4291, %4292
  %4295 = fadd fast float %4290, -5.000000e-01
  %4296 = fadd fast float %4292, -5.000000e-01
  %4297 = fmul fast float %4293, 2.000000e+00
  %4298 = fsub fast float 3.000000e+00, %4297
  %4299 = fadd fast float %4297, 1.000000e+00
  %4300 = fsub fast float 2.000000e+00, %4293
  %4301 = bitcast float %4298 to i32
  %4302 = sub nsw i32 2129859010, %4301
  %4303 = bitcast i32 %4302 to float
  %4304 = fmul fast float %4303, %4300
  %4305 = fadd fast float %4304, -1.000000e+00
  %4306 = bitcast float %4299 to i32
  %4307 = sub nsw i32 2129859010, %4306
  %4308 = bitcast i32 %4307 to float
  %4309 = fmul fast float %4308, %4293
  %4310 = fadd fast float %4309, 1.000000e+00
  %4311 = fmul fast float %4294, 2.000000e+00
  %4312 = fsub fast float 3.000000e+00, %4311
  %4313 = fadd fast float %4311, 1.000000e+00
  %4314 = fsub fast float 2.000000e+00, %4294
  %4315 = bitcast float %4312 to i32
  %4316 = sub nsw i32 2129859010, %4315
  %4317 = bitcast i32 %4316 to float
  %4318 = fmul fast float %4317, %4314
  %4319 = fadd fast float %4318, -1.000000e+00
  %4320 = bitcast float %4313 to i32
  %4321 = sub nsw i32 2129859010, %4320
  %4322 = bitcast i32 %4321 to float
  %4323 = fmul fast float %4322, %4294
  %4324 = fadd fast float %4323, 1.000000e+00
  %4325 = fadd fast float %4305, %4295
  %4326 = fmul fast float %4325, %4277
  %4327 = fadd fast float %4319, %4296
  %4328 = fmul fast float %4327, %4278
  %4329 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %4326, float %4328, float undef, float undef, i32 0, i32 0, i32 undef, float %4282)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4330 = extractvalue %dx.types.ResRet.f32 %4329, 0
  %4331 = fmul fast float %4330, %4298
  %4332 = fadd fast float %4310, %4295
  %4333 = fmul fast float %4332, %4277
  %4334 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %4333, float %4328, float undef, float undef, i32 0, i32 0, i32 undef, float %4282)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4335 = extractvalue %dx.types.ResRet.f32 %4334, 0
  %4336 = fmul fast float %4335, %4299
  %4337 = fadd fast float %4324, %4296
  %4338 = fmul fast float %4337, %4278
  %4339 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %4326, float %4338, float undef, float undef, i32 0, i32 0, i32 undef, float %4282)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4340 = extractvalue %dx.types.ResRet.f32 %4339, 0
  %4341 = fmul fast float %4340, %4298
  %4342 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %4333, float %4338, float undef, float undef, i32 0, i32 0, i32 undef, float %4282)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4343 = extractvalue %dx.types.ResRet.f32 %4342, 0
  %4344 = fmul fast float %4343, %4299
  %4345 = fadd fast float %4344, %4341
  %4346 = fmul fast float %4345, %4313
  %4347 = fadd fast float %4336, %4331
  %4348 = fmul fast float %4347, %4312
  %4349 = fadd fast float %4348, %4346
  %4350 = fmul fast float %4349, 6.250000e-02
  br label %4436

; <label>:4351                                    ; preds = %4272
  %4352 = fmul fast float %1026, 0x401921FB60000000
  %4353 = call float @dx.op.unary.f32(i32 13, float %4352)  ; Sin(value)
  %4354 = call float @dx.op.unary.f32(i32 12, float %4352)  ; Cos(value)
  %4355 = fsub fast float -0.000000e+00, %4353
  br label %4356

; <label>:4356                                    ; preds = %4405, %4351
  %4357 = phi float [ 0.000000e+00, %4351 ], [ %4400, %4405 ]
  %4358 = phi float [ 0.000000e+00, %4351 ], [ %4402, %4405 ]
  %4359 = phi i32 [ 0, %4351 ], [ %4406, %4405 ]
  %4360 = mul i32 %4359, 2
  %4361 = add i32 0, %4360
  %4362 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4361
  %4363 = load float, float* %4362, align 4
  %4364 = mul i32 %4359, 2
  %4365 = add i32 1, %4364
  %4366 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4365
  %4367 = load float, float* %4366, align 4
  %4368 = fmul fast float %4363, %4354
  %4369 = call float @dx.op.tertiary.f32(i32 46, float %4367, float %4355, float %4368)  ; FMad(a,b,c)
  %4370 = fmul fast float %4363, %4353
  %4371 = call float @dx.op.tertiary.f32(i32 46, float %4367, float %4354, float %4370)  ; FMad(a,b,c)
  %4372 = fmul fast float %4369, %4280
  %4373 = fmul fast float %4371, %4280
  %4374 = fadd fast float %4372, %3317
  %4375 = fadd fast float %4373, %3318
  %4376 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %57, float %4374, float %4375, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4377 = extractvalue %dx.types.ResRet.f32 %4376, 0
  %4378 = extractvalue %dx.types.ResRet.f32 %4376, 1
  %4379 = extractvalue %dx.types.ResRet.f32 %4376, 2
  %4380 = extractvalue %dx.types.ResRet.f32 %4376, 3
  %4381 = getelementptr inbounds [4 x float], [4 x float]* %82, i32 0, i32 0
  store float %4377, float* %4381, align 4
  %4382 = getelementptr inbounds [4 x float], [4 x float]* %82, i32 0, i32 1
  store float %4378, float* %4382, align 4
  %4383 = getelementptr inbounds [4 x float], [4 x float]* %82, i32 0, i32 2
  store float %4379, float* %4383, align 4
  %4384 = getelementptr inbounds [4 x float], [4 x float]* %82, i32 0, i32 3
  store float %4380, float* %4384, align 4
  %4385 = fsub fast float %4377, %4282
  %4386 = fcmp fast olt float %4385, 0.000000e+00
  %4387 = select i1 %4386, float 0.000000e+00, float 1.000000e+00
  %4388 = fadd fast float %4387, %4357
  %4389 = fmul fast float %4387, %4385
  %4390 = fadd fast float %4389, %4358
  br label %4391

; <label>:4391                                    ; preds = %4391, %4356
  %4392 = phi i32 [ 1, %4356 ], [ %4403, %4391 ]
  %4393 = phi float [ %4390, %4356 ], [ %4402, %4391 ]
  %4394 = phi float [ %4388, %4356 ], [ %4400, %4391 ]
  %4395 = getelementptr [4 x float], [4 x float]* %82, i32 0, i32 %4392
  %4396 = load float, float* %4395, align 4, !tbaa !97, !noalias !130
  %4397 = fsub fast float %4396, %4282
  %4398 = fcmp fast olt float %4397, 0.000000e+00
  %4399 = select i1 %4398, float 0.000000e+00, float 1.000000e+00
  %4400 = fadd fast float %4399, %4394
  %4401 = fmul fast float %4399, %4397
  %4402 = fadd fast float %4401, %4393
  %4403 = add nuw nsw i32 %4392, 1
  %4404 = icmp eq i32 %4403, 4
  br i1 %4404, label %4405, label %4391, !llvm.loop !140

; <label>:4405                                    ; preds = %4391
  %4406 = add nuw nsw i32 %4359, 1
  %4407 = icmp eq i32 %4406, 8
  br i1 %4407, label %4408, label %4356, !llvm.loop !141

; <label>:4408                                    ; preds = %4405
  %4409 = fdiv fast float 1.000000e+00, %4400
  %4410 = fmul fast float %4409, %4402
  %4411 = fdiv fast float 1.000000e+00, %4282
  %4412 = fmul fast float %4410, %4411
  %4413 = call float @dx.op.unary.f32(i32 7, float %4412)  ; Saturate(value)
  %4414 = call float @dx.op.binary.f32(i32 35, float %4413, float 0.000000e+00)  ; FMax(a,b)
  %4415 = fmul fast float %4400, 3.125000e-02
  %4416 = call float @dx.op.unary.f32(i32 7, float %4415)  ; Saturate(value)
  %4417 = fmul fast float %4416, 2.000000e+00
  %4418 = fadd fast float %4417, -1.000000e+00
  %4419 = fcmp fast ogt float %4418, 0.000000e+00
  %4420 = fcmp fast olt float %4418, 0.000000e+00
  %4421 = zext i1 %4419 to i32
  %4422 = zext i1 %4420 to i32
  %4423 = sub nsw i32 %4421, %4422
  %4424 = sitofp i32 %4423 to float
  %4425 = fmul fast float %4424, %4418
  %4426 = fsub fast float 1.000000e+00, %4425
  %4427 = fmul fast float %4426, %4426
  %4428 = fmul fast float %4427, %4426
  %4429 = fsub fast float %4426, %4428
  %4430 = fmul fast float %4429, %4414
  %4431 = fsub fast float 1.000000e+00, %4428
  %4432 = fsub fast float %4431, %4430
  %4433 = fmul fast float %4424, 5.000000e-01
  %4434 = fmul fast float %4433, %4432
  %4435 = fsub fast float 5.000000e-01, %4434
  br label %4436

; <label>:4436                                    ; preds = %4408, %4284, %4269
  %4437 = phi float [ 1.000000e+00, %4269 ], [ %4350, %4284 ], [ %4435, %4408 ]
  %4438 = fcmp fast ogt float %3424, 0.000000e+00
  br i1 %4438, label %4439, label %4603, !dx.controlflow.hints !143

; <label>:4439                                    ; preds = %4436
  %4440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4441 = extractvalue %dx.types.CBufRet.f32 %4440, 0
  %4442 = fadd fast float %4441, %3310
  %4443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4444 = extractvalue %dx.types.CBufRet.f32 %4443, 2
  %4445 = extractvalue %dx.types.CBufRet.f32 %4443, 3
  %4446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4447 = extractvalue %dx.types.CBufRet.f32 %4446, 0
  %4448 = call float @dx.op.binary.f32(i32 35, float %4442, float 0.000000e+00)  ; FMax(a,b)
  %4449 = fadd fast float %4448, 0x3F10000000000000
  %4450 = fcmp fast oeq float %4447, 0.000000e+00
  br i1 %4450, label %4451, label %4518

; <label>:4451                                    ; preds = %4439
  %4452 = extractvalue %dx.types.CBufRet.f32 %4443, 1
  %4453 = extractvalue %dx.types.CBufRet.f32 %4443, 0
  %4454 = fmul fast float %4453, %3302
  %4455 = fmul fast float %4452, %3306
  %4456 = fadd fast float %4454, 5.000000e-01
  %4457 = call float @dx.op.unary.f32(i32 27, float %4456)  ; Round_ni(value)
  %4458 = fadd fast float %4455, 5.000000e-01
  %4459 = call float @dx.op.unary.f32(i32 27, float %4458)  ; Round_ni(value)
  %4460 = fsub fast float %4456, %4457
  %4461 = fsub fast float %4458, %4459
  %4462 = fadd fast float %4457, -5.000000e-01
  %4463 = fadd fast float %4459, -5.000000e-01
  %4464 = fmul fast float %4460, 2.000000e+00
  %4465 = fsub fast float 3.000000e+00, %4464
  %4466 = fadd fast float %4464, 1.000000e+00
  %4467 = fsub fast float 2.000000e+00, %4460
  %4468 = bitcast float %4465 to i32
  %4469 = sub nsw i32 2129859010, %4468
  %4470 = bitcast i32 %4469 to float
  %4471 = fmul fast float %4470, %4467
  %4472 = fadd fast float %4471, -1.000000e+00
  %4473 = bitcast float %4466 to i32
  %4474 = sub nsw i32 2129859010, %4473
  %4475 = bitcast i32 %4474 to float
  %4476 = fmul fast float %4475, %4460
  %4477 = fadd fast float %4476, 1.000000e+00
  %4478 = fmul fast float %4461, 2.000000e+00
  %4479 = fsub fast float 3.000000e+00, %4478
  %4480 = fadd fast float %4478, 1.000000e+00
  %4481 = fsub fast float 2.000000e+00, %4461
  %4482 = bitcast float %4479 to i32
  %4483 = sub nsw i32 2129859010, %4482
  %4484 = bitcast i32 %4483 to float
  %4485 = fmul fast float %4484, %4481
  %4486 = fadd fast float %4485, -1.000000e+00
  %4487 = bitcast float %4480 to i32
  %4488 = sub nsw i32 2129859010, %4487
  %4489 = bitcast i32 %4488 to float
  %4490 = fmul fast float %4489, %4461
  %4491 = fadd fast float %4490, 1.000000e+00
  %4492 = fadd fast float %4472, %4462
  %4493 = fmul fast float %4492, %4444
  %4494 = fadd fast float %4486, %4463
  %4495 = fmul fast float %4494, %4445
  %4496 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %4493, float %4495, float undef, float undef, i32 0, i32 0, i32 undef, float %4449)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4497 = extractvalue %dx.types.ResRet.f32 %4496, 0
  %4498 = fmul fast float %4497, %4465
  %4499 = fadd fast float %4477, %4462
  %4500 = fmul fast float %4499, %4444
  %4501 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %4500, float %4495, float undef, float undef, i32 0, i32 0, i32 undef, float %4449)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4502 = extractvalue %dx.types.ResRet.f32 %4501, 0
  %4503 = fmul fast float %4502, %4466
  %4504 = fadd fast float %4491, %4463
  %4505 = fmul fast float %4504, %4445
  %4506 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %4493, float %4505, float undef, float undef, i32 0, i32 0, i32 undef, float %4449)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4507 = extractvalue %dx.types.ResRet.f32 %4506, 0
  %4508 = fmul fast float %4507, %4465
  %4509 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %4500, float %4505, float undef, float undef, i32 0, i32 0, i32 undef, float %4449)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4510 = extractvalue %dx.types.ResRet.f32 %4509, 0
  %4511 = fmul fast float %4510, %4466
  %4512 = fadd fast float %4511, %4508
  %4513 = fmul fast float %4512, %4480
  %4514 = fadd fast float %4503, %4498
  %4515 = fmul fast float %4514, %4479
  %4516 = fadd fast float %4515, %4513
  %4517 = fmul fast float %4516, 6.250000e-02
  br label %4603

; <label>:4518                                    ; preds = %4439
  %4519 = fmul fast float %1026, 0x401921FB60000000
  %4520 = call float @dx.op.unary.f32(i32 13, float %4519)  ; Sin(value)
  %4521 = call float @dx.op.unary.f32(i32 12, float %4519)  ; Cos(value)
  %4522 = fsub fast float -0.000000e+00, %4520
  br label %4523

; <label>:4523                                    ; preds = %4572, %4518
  %4524 = phi float [ 0.000000e+00, %4518 ], [ %4567, %4572 ]
  %4525 = phi float [ 0.000000e+00, %4518 ], [ %4569, %4572 ]
  %4526 = phi i32 [ 0, %4518 ], [ %4573, %4572 ]
  %4527 = mul i32 %4526, 2
  %4528 = add i32 0, %4527
  %4529 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4528
  %4530 = load float, float* %4529, align 4
  %4531 = mul i32 %4526, 2
  %4532 = add i32 1, %4531
  %4533 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4532
  %4534 = load float, float* %4533, align 4
  %4535 = fmul fast float %4530, %4521
  %4536 = call float @dx.op.tertiary.f32(i32 46, float %4534, float %4522, float %4535)  ; FMad(a,b,c)
  %4537 = fmul fast float %4530, %4520
  %4538 = call float @dx.op.tertiary.f32(i32 46, float %4534, float %4521, float %4537)  ; FMad(a,b,c)
  %4539 = fmul fast float %4536, %4447
  %4540 = fmul fast float %4538, %4447
  %4541 = fadd fast float %4539, %3302
  %4542 = fadd fast float %4540, %3306
  %4543 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %57, float %4541, float %4542, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4544 = extractvalue %dx.types.ResRet.f32 %4543, 0
  %4545 = extractvalue %dx.types.ResRet.f32 %4543, 1
  %4546 = extractvalue %dx.types.ResRet.f32 %4543, 2
  %4547 = extractvalue %dx.types.ResRet.f32 %4543, 3
  %4548 = getelementptr inbounds [4 x float], [4 x float]* %81, i32 0, i32 0
  store float %4544, float* %4548, align 4
  %4549 = getelementptr inbounds [4 x float], [4 x float]* %81, i32 0, i32 1
  store float %4545, float* %4549, align 4
  %4550 = getelementptr inbounds [4 x float], [4 x float]* %81, i32 0, i32 2
  store float %4546, float* %4550, align 4
  %4551 = getelementptr inbounds [4 x float], [4 x float]* %81, i32 0, i32 3
  store float %4547, float* %4551, align 4
  %4552 = fsub fast float %4544, %4449
  %4553 = fcmp fast olt float %4552, 0.000000e+00
  %4554 = select i1 %4553, float 0.000000e+00, float 1.000000e+00
  %4555 = fadd fast float %4554, %4524
  %4556 = fmul fast float %4554, %4552
  %4557 = fadd fast float %4556, %4525
  br label %4558

; <label>:4558                                    ; preds = %4558, %4523
  %4559 = phi i32 [ 1, %4523 ], [ %4570, %4558 ]
  %4560 = phi float [ %4557, %4523 ], [ %4569, %4558 ]
  %4561 = phi float [ %4555, %4523 ], [ %4567, %4558 ]
  %4562 = getelementptr [4 x float], [4 x float]* %81, i32 0, i32 %4559
  %4563 = load float, float* %4562, align 4, !tbaa !97, !noalias !130
  %4564 = fsub fast float %4563, %4449
  %4565 = fcmp fast olt float %4564, 0.000000e+00
  %4566 = select i1 %4565, float 0.000000e+00, float 1.000000e+00
  %4567 = fadd fast float %4566, %4561
  %4568 = fmul fast float %4566, %4564
  %4569 = fadd fast float %4568, %4560
  %4570 = add nuw nsw i32 %4559, 1
  %4571 = icmp eq i32 %4570, 4
  br i1 %4571, label %4572, label %4558, !llvm.loop !140

; <label>:4572                                    ; preds = %4558
  %4573 = add nuw nsw i32 %4526, 1
  %4574 = icmp eq i32 %4573, 8
  br i1 %4574, label %4575, label %4523, !llvm.loop !141

; <label>:4575                                    ; preds = %4572
  %4576 = fdiv fast float 1.000000e+00, %4567
  %4577 = fmul fast float %4576, %4569
  %4578 = fdiv fast float 1.000000e+00, %4449
  %4579 = fmul fast float %4577, %4578
  %4580 = call float @dx.op.unary.f32(i32 7, float %4579)  ; Saturate(value)
  %4581 = call float @dx.op.binary.f32(i32 35, float %4580, float 0.000000e+00)  ; FMax(a,b)
  %4582 = fmul fast float %4567, 3.125000e-02
  %4583 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4584 = fmul fast float %4583, 2.000000e+00
  %4585 = fadd fast float %4584, -1.000000e+00
  %4586 = fcmp fast ogt float %4585, 0.000000e+00
  %4587 = fcmp fast olt float %4585, 0.000000e+00
  %4588 = zext i1 %4586 to i32
  %4589 = zext i1 %4587 to i32
  %4590 = sub nsw i32 %4588, %4589
  %4591 = sitofp i32 %4590 to float
  %4592 = fmul fast float %4591, %4585
  %4593 = fsub fast float 1.000000e+00, %4592
  %4594 = fmul fast float %4593, %4593
  %4595 = fmul fast float %4594, %4593
  %4596 = fsub fast float %4593, %4595
  %4597 = fmul fast float %4596, %4581
  %4598 = fsub fast float 1.000000e+00, %4595
  %4599 = fsub fast float %4598, %4597
  %4600 = fmul fast float %4591, 5.000000e-01
  %4601 = fmul fast float %4600, %4599
  %4602 = fsub fast float 5.000000e-01, %4601
  br label %4603

; <label>:4603                                    ; preds = %4575, %4451, %4436
  %4604 = phi float [ 1.000000e+00, %4436 ], [ %4517, %4451 ], [ %4602, %4575 ]
  %4605 = fsub fast float %4270, %4103
  %4606 = fmul fast float %4605, %3365
  %4607 = fadd fast float %4606, %4103
  %4608 = fsub fast float %4437, %4607
  %4609 = fmul fast float %4608, %3396
  %4610 = fadd fast float %4609, %4607
  %4611 = fsub fast float %4604, %4610
  %4612 = fmul fast float %4611, %3424
  %4613 = fadd fast float %4612, %4610
  %4614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4615 = extractvalue %dx.types.CBufRet.f32 %4614, 2
  %4616 = fcmp fast ogt float %4615, 0.000000e+00
  br i1 %4616, label %4617, label %4657, !dx.controlflow.hints !144

; <label>:4617                                    ; preds = %4603
  %4618 = fcmp fast ugt float %4615, 0.000000e+00
  br i1 %4618, label %4619, label %4654

; <label>:4619                                    ; preds = %4617
  %4620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.f32 %4620, 0
  %4622 = extractvalue %dx.types.CBufRet.f32 %4620, 1
  %4623 = extractvalue %dx.types.CBufRet.f32 %4620, 2
  %4624 = extractvalue %dx.types.CBufRet.f32 %4620, 3
  %4625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.f32 %4625, 0
  %4627 = extractvalue %dx.types.CBufRet.f32 %4625, 1
  %4628 = extractvalue %dx.types.CBufRet.f32 %4625, 2
  %4629 = extractvalue %dx.types.CBufRet.f32 %4625, 3
  %4630 = extractvalue %dx.types.CBufRet.f32 %4614, 0
  %4631 = extractvalue %dx.types.CBufRet.f32 %4614, 1
  %4632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4633 = extractvalue %dx.types.CBufRet.f32 %4632, 0
  %4634 = extractvalue %dx.types.CBufRet.f32 %4632, 1
  %4635 = extractvalue %dx.types.CBufRet.f32 %4632, 2
  %4636 = fadd fast float %4633, %142
  %4637 = fadd fast float %4634, %143
  %4638 = fadd fast float %4635, %144
  %4639 = fmul fast float %4636, %4621
  %4640 = call float @dx.op.tertiary.f32(i32 46, float %4622, float %4637, float %4639)  ; FMad(a,b,c)
  %4641 = call float @dx.op.tertiary.f32(i32 46, float %4623, float %4638, float %4640)  ; FMad(a,b,c)
  %4642 = fadd fast float %4641, %4624
  %4643 = fmul fast float %4636, %4626
  %4644 = call float @dx.op.tertiary.f32(i32 46, float %4627, float %4637, float %4643)  ; FMad(a,b,c)
  %4645 = call float @dx.op.tertiary.f32(i32 46, float %4628, float %4638, float %4644)  ; FMad(a,b,c)
  %4646 = fadd fast float %4645, %4629
  %4647 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %12, %dx.types.Handle %53, float %4642, float %4646, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4648 = extractvalue %dx.types.ResRet.f32 %4647, 0
  %4649 = fmul fast float %4648, %4631
  %4650 = fadd fast float %4649, %4630
  %4651 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4652 = fmul fast float %4651, %4615
  %4653 = fsub fast float 1.000000e+00, %4652
  br label %4654

; <label>:4654                                    ; preds = %4619, %4617
  %4655 = phi float [ %4653, %4619 ], [ 1.000000e+00, %4617 ]
  %4656 = fmul fast float %4655, %4613
  br label %4657

; <label>:4657                                    ; preds = %4654, %4603, %3267
  %4658 = phi float [ 1.000000e+00, %3267 ], [ %4656, %4654 ], [ %4613, %4603 ]
  %4659 = call float @dx.op.binary.f32(i32 36, float %4658, float %4658)  ; FMin(a,b)
  %4660 = call float @dx.op.binary.f32(i32 36, float %4658, float %4659)  ; FMin(a,b)
  %4661 = fcmp fast ogt float %4660, 0.000000e+00
  br i1 %4661, label %4662, label %4827, !dx.controlflow.hints !145

; <label>:4662                                    ; preds = %4657
  %4663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4664 = extractvalue %dx.types.CBufRet.f32 %4663, 0
  %4665 = extractvalue %dx.types.CBufRet.f32 %4663, 1
  %4666 = extractvalue %dx.types.CBufRet.f32 %4663, 2
  %4667 = extractvalue %dx.types.CBufRet.f32 %4663, 3
  %4668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4669 = extractvalue %dx.types.CBufRet.f32 %4668, 0
  %4670 = extractvalue %dx.types.CBufRet.f32 %4668, 1
  %4671 = extractvalue %dx.types.CBufRet.f32 %4668, 2
  %4672 = extractvalue %dx.types.CBufRet.f32 %4668, 3
  %4673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4674 = extractvalue %dx.types.CBufRet.f32 %4673, 0
  %4675 = extractvalue %dx.types.CBufRet.f32 %4673, 1
  %4676 = extractvalue %dx.types.CBufRet.f32 %4673, 2
  %4677 = extractvalue %dx.types.CBufRet.f32 %4673, 3
  %4678 = fmul fast float %4664, %142
  %4679 = call float @dx.op.tertiary.f32(i32 46, float %143, float %4665, float %4678)  ; FMad(a,b,c)
  %4680 = call float @dx.op.tertiary.f32(i32 46, float %144, float %4666, float %4679)  ; FMad(a,b,c)
  %4681 = fadd fast float %4680, %4667
  %4682 = fmul fast float %4669, %142
  %4683 = call float @dx.op.tertiary.f32(i32 46, float %143, float %4670, float %4682)  ; FMad(a,b,c)
  %4684 = call float @dx.op.tertiary.f32(i32 46, float %144, float %4671, float %4683)  ; FMad(a,b,c)
  %4685 = fadd fast float %4684, %4672
  %4686 = fmul fast float %4674, %142
  %4687 = call float @dx.op.tertiary.f32(i32 46, float %143, float %4675, float %4686)  ; FMad(a,b,c)
  %4688 = call float @dx.op.tertiary.f32(i32 46, float %144, float %4676, float %4687)  ; FMad(a,b,c)
  %4689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4690 = extractvalue %dx.types.CBufRet.f32 %4689, 0
  %4691 = extractvalue %dx.types.CBufRet.f32 %4689, 1
  %4692 = extractvalue %dx.types.CBufRet.f32 %4689, 3
  %4693 = fmul fast float %4692, %4681
  %4694 = fmul fast float %4692, %4685
  %4695 = fadd fast float %4693, %4690
  %4696 = fadd fast float %4694, %4691
  %4697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4698 = extractvalue %dx.types.CBufRet.f32 %4697, 0
  %4699 = extractvalue %dx.types.CBufRet.f32 %4697, 1
  %4700 = fsub fast float %4695, %4698
  %4701 = fsub fast float %4696, %4699
  %4702 = fcmp fast olt float %4700, 0.000000e+00
  %4703 = fcmp fast olt float %4701, 0.000000e+00
  %4704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4705 = extractvalue %dx.types.CBufRet.f32 %4704, 0
  %4706 = extractvalue %dx.types.CBufRet.f32 %4704, 1
  %4707 = extractvalue %dx.types.CBufRet.f32 %4704, 2
  %4708 = extractvalue %dx.types.CBufRet.f32 %4704, 3
  %4709 = select i1 %4702, float %4705, float %4707
  %4710 = select i1 %4703, float %4706, float %4708
  %4711 = fmul fast float %4709, %4700
  %4712 = fmul fast float %4710, %4701
  %4713 = call float @dx.op.unary.f32(i32 6, float %4711)  ; FAbs(value)
  %4714 = call float @dx.op.unary.f32(i32 6, float %4712)  ; FAbs(value)
  %4715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4716 = extractvalue %dx.types.CBufRet.f32 %4715, 0
  %4717 = call float @dx.op.binary.f32(i32 35, float %4713, float %4714)  ; FMax(a,b)
  %4718 = fsub fast float %4716, %4717
  %4719 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4720 = fcmp fast ogt float %4719, 0.000000e+00
  br i1 %4720, label %4721, label %4762, !dx.controlflow.hints !146

; <label>:4721                                    ; preds = %4662
  %4722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %56, float %4695, float %4696, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4723 = extractvalue %dx.types.ResRet.f32 %4722, 1
  %4724 = fcmp fast ogt float %4723, 0.000000e+00
  br i1 %4724, label %4725, label %4757

; <label>:4725                                    ; preds = %4721
  %4726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %56, float %4695, float %4696, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4727 = extractvalue %dx.types.ResRet.f32 %4726, 0
  %4728 = extractvalue %dx.types.ResRet.f32 %4726, 1
  %4729 = extractvalue %dx.types.ResRet.f32 %4726, 2
  %4730 = extractvalue %dx.types.ResRet.f32 %4726, 3
  %4731 = fsub fast float 1.000000e+00, %4677
  %4732 = fsub fast float %4731, %4688
  %4733 = fmul fast float %4732, 0x400921FB60000000
  %4734 = fadd fast float %4733, 0x3FF921FB60000000
  %4735 = call float @dx.op.unary.f32(i32 13, float %4734)  ; Sin(value)
  %4736 = fadd fast float %4735, -1.000000e+00
  %4737 = fmul fast float %4736, 0x3FD45F3060000000
  %4738 = fmul fast float %4732, 0x401921FB60000000
  %4739 = fadd fast float %4738, 0x400921FB60000000
  %4740 = call float @dx.op.unary.f32(i32 13, float %4739)  ; Sin(value)
  %4741 = fadd fast float %4740, 0x3E7777A5C0000000
  %4742 = fmul fast float %4741, 0x3FC45F3060000000
  %4743 = fmul fast float %4732, 0x4022D97C80000000
  %4744 = fadd fast float %4743, 0x4012D97C80000000
  %4745 = call float @dx.op.unary.f32(i32 13, float %4744)  ; Sin(value)
  %4746 = fadd fast float %4745, 1.000000e+00
  %4747 = fmul fast float %4746, 0x3FBB2995E0000000
  %4748 = fmul fast float %4732, 0x402921FB60000000
  %4749 = fadd fast float %4748, 0x401921FB60000000
  %4750 = call float @dx.op.unary.f32(i32 13, float %4749)  ; Sin(value)
  %4751 = fadd fast float %4750, 0xBE8777A5C0000000
  %4752 = fmul fast float %4751, 0x3FB45F3060000000
  %4753 = call float @dx.op.dot4.f32(i32 56, float %4727, float %4728, float %4729, float %4730, float %4737, float %4742, float %4747, float %4752)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4754 = fmul fast float %4753, 0xBFF7154760000000
  %4755 = call float @dx.op.unary.f32(i32 21, float %4754)  ; Exp(value)
  %4756 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  br label %4757

; <label>:4757                                    ; preds = %4725, %4721
  %4758 = phi float [ %4756, %4725 ], [ 1.000000e+00, %4721 ]
  %4759 = fadd fast float %4758, -1.000000e+00
  %4760 = fmul fast float %4759, %4719
  %4761 = fadd fast float %4760, 1.000000e+00
  br label %4762

; <label>:4762                                    ; preds = %4757, %4662
  %4763 = phi float [ %4761, %4757 ], [ 1.000000e+00, %4662 ]
  %4764 = fmul fast float %4763, %4658
  %4765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4766 = extractvalue %dx.types.CBufRet.f32 %4765, 0
  %4767 = extractvalue %dx.types.CBufRet.f32 %4765, 1
  %4768 = extractvalue %dx.types.CBufRet.f32 %4765, 2
  %4769 = fadd fast float %4766, %142
  %4770 = fadd fast float %4767, %143
  %4771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4772 = extractvalue %dx.types.CBufRet.f32 %4771, 1
  %4773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.f32 %4773, 0
  %4775 = extractvalue %dx.types.CBufRet.f32 %4773, 1
  %4776 = extractvalue %dx.types.CBufRet.f32 %4773, 2
  %4777 = fsub fast float -0.000000e+00, %4769
  %4778 = fsub fast float -0.000000e+00, %4770
  %4779 = fsub fast float %1683, %4768
  %4780 = fadd fast float %4779, %4772
  %4781 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4777, float %4778, float %4780)  ; Dot3(ax,ay,az,bx,by,bz)
  %4782 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4774, float %4775, float %4776)  ; Dot3(ax,ay,az,bx,by,bz)
  %4783 = fdiv fast float 1.000000e+00, %4782
  %4784 = fmul fast float %4783, %4781
  %4785 = fmul fast float %4774, %4784
  %4786 = fmul fast float %4775, %4784
  %4787 = fadd fast float %4785, %4769
  %4788 = fadd fast float %4786, %4770
  %4789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.f32 %4789, 0
  %4791 = extractvalue %dx.types.CBufRet.f32 %4789, 1
  %4792 = fsub fast float %4787, %4790
  %4793 = fsub fast float %4788, %4791
  %4794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4795 = extractvalue %dx.types.CBufRet.f32 %4794, 2
  %4796 = extractvalue %dx.types.CBufRet.f32 %4794, 3
  %4797 = fmul fast float %4792, %4795
  %4798 = fmul fast float %4793, %4796
  %4799 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4800 = extractvalue %dx.types.CBufRet.i32 %4799, 3
  %4801 = icmp eq i32 %4800, 0
  br i1 %4801, label %4807, label %4802

; <label>:4802                                    ; preds = %4762
  %4803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %55, float %4797, float %4798, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4804 = extractvalue %dx.types.ResRet.f32 %4803, 0
  %4805 = extractvalue %dx.types.ResRet.f32 %4803, 1
  %4806 = extractvalue %dx.types.ResRet.f32 %4803, 2
  br label %4812

; <label>:4807                                    ; preds = %4762
  %4808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %56, float %4797, float %4798, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4809 = extractvalue %dx.types.ResRet.f32 %4808, 0
  %4810 = extractvalue %dx.types.ResRet.f32 %4808, 1
  %4811 = extractvalue %dx.types.ResRet.f32 %4808, 2
  br label %4812

; <label>:4812                                    ; preds = %4807, %4802
  %4813 = phi float [ %4804, %4802 ], [ %4809, %4807 ]
  %4814 = phi float [ %4805, %4802 ], [ %4810, %4807 ]
  %4815 = phi float [ %4806, %4802 ], [ %4811, %4807 ]
  %4816 = extractvalue %dx.types.CBufRet.f32 %4771, 2
  %4817 = fmul fast float %4816, %4813
  %4818 = extractvalue %dx.types.CBufRet.f32 %4771, 0
  %4819 = fsub fast float %4784, %4818
  %4820 = fsub fast float %4819, %4817
  %4821 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4820)  ; FMax(a,b)
  %4822 = fmul fast float %4821, %4814
  %4823 = call float @dx.op.binary.f32(i32 36, float %4815, float %4822)  ; FMin(a,b)
  %4824 = fmul fast float %4823, 0xBFF7154760000000
  %4825 = call float @dx.op.unary.f32(i32 21, float %4824)  ; Exp(value)
  %4826 = fmul fast float %4764, %4825
  br label %4827

; <label>:4827                                    ; preds = %4812, %4657
  %4828 = phi float [ %4826, %4812 ], [ %4658, %4657 ]
  %4829 = call float @dx.op.binary.f32(i32 36, float %4828, float %4828)  ; FMin(a,b)
  %4830 = call float @dx.op.binary.f32(i32 36, float %4828, float %4829)  ; FMin(a,b)
  %4831 = fcmp fast ogt float %4830, 0.000000e+00
  br i1 %4831, label %4832, label %4954, !dx.controlflow.hints !147

; <label>:4832                                    ; preds = %4827
  %4833 = fmul fast float %4828, %3279
  %4834 = fmul fast float %4828, %3280
  %4835 = fmul fast float %4828, %3281
  %4836 = fsub fast float %3268, %1572
  %4837 = fsub fast float %3269, %1573
  %4838 = fsub fast float %3270, %1574
  %4839 = call float @dx.op.dot3.f32(i32 55, float %4836, float %4837, float %4838, float %4836, float %4837, float %4838)  ; Dot3(ax,ay,az,bx,by,bz)
  %4840 = call float @dx.op.unary.f32(i32 25, float %4839)  ; Rsqrt(value)
  %4841 = fmul fast float %4840, %4836
  %4842 = fmul fast float %4840, %4837
  %4843 = fmul fast float %4840, %4838
  %4844 = call float @dx.op.dot3.f32(i32 55, float %3268, float %3269, float %3270, float %1544, float %1545, float %1546)  ; Dot3(ax,ay,az,bx,by,bz)
  %4845 = call float @dx.op.dot3.f32(i32 55, float %1684, float %1685, float %1686, float %4841, float %4842, float %4843)  ; Dot3(ax,ay,az,bx,by,bz)
  %4846 = call float @dx.op.unary.f32(i32 7, float %4844)  ; Saturate(value)
  %4847 = fmul fast float %4846, %4846
  %4848 = fmul fast float %4847, %1701
  %4849 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4850 = fmul fast float %4849, %4846
  %4851 = call float @dx.op.dot3.f32(i32 55, float %1544, float %1545, float %1546, float %4841, float %4842, float %4843)  ; Dot3(ax,ay,az,bx,by,bz)
  %4852 = fmul fast float %4851, %4851
  %4853 = call float @dx.op.unary.f32(i32 6, float %4844)  ; FAbs(value)
  %4854 = fsub fast float 1.000000e+00, %1628
  %4855 = call float @dx.op.binary.f32(i32 35, float %4854, float 0x3F847AE140000000)  ; FMax(a,b)
  %4856 = fmul fast float %4855, %4855
  %4857 = fmul fast float %4856, %4856
  %4858 = fsub fast float 1.000000e+00, %4857
  %4859 = fmul fast float %1689, %1689
  %4860 = fmul fast float %4859, %4858
  %4861 = fadd fast float %4860, %4857
  %4862 = bitcast float %4861 to i32
  %4863 = ashr i32 %4862, 1
  %4864 = add nsw i32 %4863, 532487669
  %4865 = bitcast i32 %4864 to float
  %4866 = fadd fast float %4865, %1689
  %4867 = fmul fast float %4857, %4852
  %4868 = fsub fast float 1.000000e+00, %4852
  %4869 = fadd fast float %4868, %4867
  %4870 = fmul fast float %4853, %4853
  %4871 = fmul fast float %4870, %4858
  %4872 = fadd fast float %4871, %4857
  %4873 = bitcast float %4872 to i32
  %4874 = ashr i32 %4873, 1
  %4875 = add nsw i32 %4874, 532487669
  %4876 = bitcast i32 %4875 to float
  %4877 = fadd fast float %4876, %4853
  %4878 = fmul fast float %4869, %4869
  %4879 = fmul fast float %4878, %4866
  %4880 = fmul fast float %4879, %4877
  %4881 = fdiv fast float 0x3FF0A00000000000, %4880
  %4882 = fmul fast float %4881, %4857
  %4883 = call float @dx.op.unary.f32(i32 6, float %4845)  ; FAbs(value)
  %4884 = fsub fast float 1.000000e+00, %4883
  %4885 = bitcast float %4884 to i32
  %4886 = sitofp i32 %4885 to float
  %4887 = fmul fast float %4886, 5.000000e+00
  %4888 = fadd fast float %4887, 0xC1EFBF8940000000
  %4889 = fptosi float %4888 to i32
  %4890 = bitcast i32 %4889 to float
  %4891 = fmul fast float %4890, %2516
  %4892 = fmul fast float %4890, %2517
  %4893 = fmul fast float %4890, %2518
  %4894 = fadd fast float %4891, %1565
  %4895 = fadd fast float %4892, %1566
  %4896 = fadd fast float %4893, %1687
  %4897 = fmul fast float %4844, 9.843750e-01
  %4898 = fmul fast float %1628, 9.843750e-01
  %4899 = fadd fast float %4897, 7.812500e-03
  %4900 = fadd fast float %4898, 7.812500e-03
  %4901 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %56, float %4899, float %4900, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4902 = extractvalue %dx.types.ResRet.f32 %4901, 2
  %4903 = extractvalue %dx.types.ResRet.f32 %4901, 3
  %4904 = fmul fast float %4902, %1565
  %4905 = fmul fast float %4902, %1566
  %4906 = fmul fast float %4902, %1687
  %4907 = fadd fast float %4904, %4903
  %4908 = fadd fast float %4905, %4903
  %4909 = fadd fast float %4906, %4903
  %4910 = call float @dx.op.binary.f32(i32 35, float %4908, float %4909)  ; FMax(a,b)
  %4911 = call float @dx.op.binary.f32(i32 35, float %4907, float %4910)  ; FMax(a,b)
  %4912 = fsub fast float 1.000000e+00, %4911
  %4913 = fsub fast float -0.000000e+00, %1544
  %4914 = fsub fast float -0.000000e+00, %1545
  %4915 = fsub fast float -0.000000e+00, %1546
  %4916 = call float @dx.op.dot3.f32(i32 55, float %3268, float %3269, float %3270, float %4913, float %4914, float %4915)  ; Dot3(ax,ay,az,bx,by,bz)
  %4917 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4918 = fmul fast float %4917, 9.843750e-01
  %4919 = fadd fast float %4918, 7.812500e-03
  %4920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %56, float %4919, float %4900, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4921 = extractvalue %dx.types.ResRet.f32 %4920, 2
  %4922 = extractvalue %dx.types.ResRet.f32 %4920, 3
  %4923 = fmul fast float %4921, %1565
  %4924 = fmul fast float %4921, %1566
  %4925 = fmul fast float %4921, %1687
  %4926 = fadd fast float %4923, %4922
  %4927 = fadd fast float %4924, %4922
  %4928 = fadd fast float %4925, %4922
  %4929 = call float @dx.op.binary.f32(i32 35, float %4927, float %4928)  ; FMax(a,b)
  %4930 = call float @dx.op.binary.f32(i32 35, float %4926, float %4929)  ; FMax(a,b)
  %4931 = fsub fast float 1.000000e+00, %4930
  %4932 = fmul fast float %4931, %4917
  %4933 = fmul fast float %4932, %1631
  %4934 = fmul fast float %4912, %4850
  %4935 = fadd fast float %4933, %4934
  %4936 = fmul fast float %4935, %4833
  %4937 = fmul fast float %4935, %4834
  %4938 = fmul fast float %4935, %4835
  %4939 = fadd fast float %4936, %3255
  %4940 = fadd fast float %4937, %3256
  %4941 = fadd fast float %4938, %3257
  %4942 = fmul fast float %4850, %4833
  %4943 = fmul fast float %4942, %4882
  %4944 = fmul fast float %4943, %4894
  %4945 = fmul fast float %4850, %4834
  %4946 = fmul fast float %4945, %4882
  %4947 = fmul fast float %4946, %4895
  %4948 = fmul fast float %4850, %4835
  %4949 = fmul fast float %4948, %4882
  %4950 = fmul fast float %4949, %4896
  %4951 = fadd fast float %4944, %3261
  %4952 = fadd fast float %4947, %3262
  %4953 = fadd fast float %4950, %3263
  br label %4954

; <label>:4954                                    ; preds = %4832, %4827, %3250
  %4955 = phi float [ %4828, %4832 ], [ 0.000000e+00, %3250 ], [ 0.000000e+00, %4827 ]
  %4956 = phi float [ %4951, %4832 ], [ %3261, %3250 ], [ %3261, %4827 ]
  %4957 = phi float [ %4952, %4832 ], [ %3262, %3250 ], [ %3262, %4827 ]
  %4958 = phi float [ %4953, %4832 ], [ %3263, %3250 ], [ %3263, %4827 ]
  %4959 = phi float [ %4939, %4832 ], [ %3255, %3250 ], [ %3255, %4827 ]
  %4960 = phi float [ %4940, %4832 ], [ %3256, %3250 ], [ %3256, %4827 ]
  %4961 = phi float [ %4941, %4832 ], [ %3257, %3250 ], [ %3257, %4827 ]
  %4962 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4963 = extractvalue %dx.types.CBufRet.i32 %4962, 0
  %4964 = icmp eq i32 %4963, 0
  br i1 %4964, label %5620, label %4965

; <label>:4965                                    ; preds = %4954
  %4966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4967 = extractvalue %dx.types.CBufRet.f32 %4966, 2
  %4968 = extractvalue %dx.types.CBufRet.f32 %4966, 3
  %4969 = fmul fast float %4967, %87
  %4970 = fmul fast float %4968, %88
  %4971 = fptoui float %4969 to i32
  %4972 = fptoui float %4970 to i32
  %4973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4974 = extractvalue %dx.types.CBufRet.f32 %4973, 0
  %4975 = extractvalue %dx.types.CBufRet.f32 %4973, 2
  %4976 = extractvalue %dx.types.CBufRet.f32 %4973, 3
  %4977 = fadd fast float %76, -4.000000e+00
  %4978 = call float @dx.op.binary.f32(i32 35, float %4977, float 0.000000e+00)  ; FMax(a,b)
  %4979 = fadd fast float %4978, %4974
  %4980 = fmul fast float %4979, %4975
  %4981 = call float @dx.op.unary.f32(i32 23, float %4980)  ; Log(value)
  %4982 = fmul fast float %4981, %4976
  %4983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4984 = extractvalue %dx.types.CBufRet.f32 %4983, 2
  %4985 = fmul fast float %4982, %4984
  %4986 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4987 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4988 = extractvalue %dx.types.CBufRet.i32 %4987, 1
  %4989 = add i32 %4988, -1
  %4990 = uitofp i32 %4988 to float
  %4991 = fmul fast float %4990, %4986
  %4992 = fptoui float %4991 to i32
  %4993 = call i32 @dx.op.binary.i32(i32 40, i32 %4992, i32 %4989)  ; UMin(a,b)
  %4994 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4995 = extractvalue %dx.types.CBufRet.i32 %4994, 2
  %4996 = extractvalue %dx.types.CBufRet.i32 %4994, 3
  %4997 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4972, i32 %4995, i32 %4971)  ; UMad(a,b,c)
  %4998 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4993, i32 %4996, i32 %4997)  ; UMad(a,b,c)
  %4999 = add nsw i32 %4963, -1
  %5000 = call i32 @dx.op.binary.i32(i32 37, i32 %4999, i32 0)  ; IMax(a,b)
  %5001 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %5002 = fptoui float %5001 to i32
  %5003 = lshr i32 %5002, 5
  %5004 = call i32 @dx.op.binary.i32(i32 40, i32 %5003, i32 8191)  ; UMin(a,b)
  %5005 = shl i32 %5004, 2
  %5006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5005, i32 undef)  ; BufferLoad(srv,index,wot)
  %5007 = extractvalue %dx.types.ResRet.i32 %5006, 0
  %5008 = lshr i32 %5007, 16
  %5009 = and i32 %5007, 65535
  %5010 = lshr i32 %5007, 21
  %5011 = lshr i32 %5009, 5
  %5012 = call i32 @dx.op.binary.i32(i32 40, i32 %5011, i32 %5000)  ; UMin(a,b)
  %5013 = icmp ugt i32 %5010, %5012
  br i1 %5013, label %5620, label %5014

; <label>:5014                                    ; preds = %4965
  br label %5015

; <label>:5015                                    ; preds = %5610, %5014
  %5016 = phi i32 [ %5617, %5610 ], [ %5010, %5014 ]
  %5017 = phi float [ %5611, %5610 ], [ %4956, %5014 ]
  %5018 = phi float [ %5612, %5610 ], [ %4957, %5014 ]
  %5019 = phi float [ %5613, %5610 ], [ %4958, %5014 ]
  %5020 = phi float [ %5614, %5610 ], [ %4959, %5014 ]
  %5021 = phi float [ %5615, %5610 ], [ %4960, %5014 ]
  %5022 = phi float [ %5616, %5610 ], [ %4961, %5014 ]
  %5023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5024 = extractvalue %dx.types.CBufRet.i32 %5023, 0
  %5025 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4998, i32 %5024, i32 %5016)  ; UMad(a,b,c)
  %5026 = shl i32 %5025, 2
  %5027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5026, i32 undef)  ; BufferLoad(srv,index,wot)
  %5028 = extractvalue %dx.types.ResRet.i32 %5027, 0
  %5029 = shl i32 %5016, 5
  %5030 = sub nsw i32 %5008, %5029
  %5031 = call i32 @dx.op.binary.i32(i32 37, i32 %5030, i32 0)  ; IMax(a,b)
  %5032 = call i32 @dx.op.binary.i32(i32 38, i32 %5031, i32 31)  ; IMin(a,b)
  %5033 = sub nsw i32 1, %5008
  %5034 = add nsw i32 %5033, %5009
  %5035 = call i32 @dx.op.binary.i32(i32 37, i32 %5034, i32 0)  ; IMax(a,b)
  %5036 = call i32 @dx.op.binary.i32(i32 38, i32 %5035, i32 32)  ; IMin(a,b)
  %5037 = and i32 %5036, 31
  %5038 = shl i32 -1, %5037
  %5039 = xor i32 %5038, -1
  %5040 = and i32 %5032, 31
  %5041 = shl i32 %5039, %5040
  %5042 = icmp eq i32 %5036, 32
  %5043 = select i1 %5042, i32 -1, i32 %5041
  %5044 = and i32 %5043, %5028
  %5045 = icmp eq i32 %5044, 0
  br i1 %5045, label %5610, label %5046

; <label>:5046                                    ; preds = %5015
  br label %5047

; <label>:5047                                    ; preds = %5203, %5046
  %5048 = phi i32 [ %5059, %5203 ], [ %5044, %5046 ]
  %5049 = phi float [ %5204, %5203 ], [ %5017, %5046 ]
  %5050 = phi float [ %5205, %5203 ], [ %5018, %5046 ]
  %5051 = phi float [ %5206, %5203 ], [ %5019, %5046 ]
  %5052 = phi float [ %5207, %5203 ], [ %5020, %5046 ]
  %5053 = phi float [ %5208, %5203 ], [ %5021, %5046 ]
  %5054 = phi float [ %5209, %5203 ], [ %5022, %5046 ]
  %5055 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5048)  ; FirstbitLo(value)
  %5056 = add i32 %5055, %5029
  %5057 = and i32 %5055, 31
  %5058 = shl i32 1, %5057
  %5059 = xor i32 %5058, %5048
  %5060 = mul i32 %5056, 112
  %5061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5060, i32 undef)  ; BufferLoad(srv,index,wot)
  %5062 = extractvalue %dx.types.ResRet.f32 %5061, 0
  %5063 = extractvalue %dx.types.ResRet.f32 %5061, 1
  %5064 = extractvalue %dx.types.ResRet.f32 %5061, 2
  %5065 = or i32 %5060, 12
  %5066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5065, i32 undef)  ; BufferLoad(srv,index,wot)
  %5067 = extractvalue %dx.types.ResRet.f32 %5066, 0
  %5068 = add i32 %5060, 16
  %5069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5068, i32 undef)  ; BufferLoad(srv,index,wot)
  %5070 = extractvalue %dx.types.ResRet.f32 %5069, 0
  %5071 = extractvalue %dx.types.ResRet.f32 %5069, 1
  %5072 = extractvalue %dx.types.ResRet.f32 %5069, 2
  %5073 = add i32 %5060, 28
  %5074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5073, i32 undef)  ; BufferLoad(srv,index,wot)
  %5075 = extractvalue %dx.types.ResRet.i32 %5074, 0
  %5076 = add i32 %5060, 32
  %5077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5076, i32 undef)  ; BufferLoad(srv,index,wot)
  %5078 = extractvalue %dx.types.ResRet.f32 %5077, 0
  %5079 = extractvalue %dx.types.ResRet.f32 %5077, 1
  %5080 = extractvalue %dx.types.ResRet.f32 %5077, 2
  %5081 = add i32 %5060, 44
  %5082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5081, i32 undef)  ; BufferLoad(srv,index,wot)
  %5083 = extractvalue %dx.types.ResRet.f32 %5082, 0
  %5084 = add i32 %5060, 48
  %5085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5084, i32 undef)  ; BufferLoad(srv,index,wot)
  %5086 = extractvalue %dx.types.ResRet.f32 %5085, 0
  %5087 = extractvalue %dx.types.ResRet.f32 %5085, 1
  %5088 = extractvalue %dx.types.ResRet.f32 %5085, 2
  %5089 = extractvalue %dx.types.ResRet.f32 %5085, 3
  %5090 = add i32 %5060, 64
  %5091 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5090, i32 undef)  ; BufferLoad(srv,index,wot)
  %5092 = extractvalue %dx.types.ResRet.f32 %5091, 0
  %5093 = extractvalue %dx.types.ResRet.f32 %5091, 1
  %5094 = extractvalue %dx.types.ResRet.f32 %5091, 2
  %5095 = extractvalue %dx.types.ResRet.f32 %5091, 3
  %5096 = add i32 %5060, 80
  %5097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %5096, i32 undef)  ; BufferLoad(srv,index,wot)
  %5098 = extractvalue %dx.types.ResRet.f32 %5097, 1
  %5099 = extractvalue %dx.types.ResRet.f32 %5097, 2
  %5100 = add i32 %5060, 92
  %5101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5100, i32 undef)  ; BufferLoad(srv,index,wot)
  %5102 = extractvalue %dx.types.ResRet.i32 %5101, 0
  %5103 = call float @dx.op.dot3.f32(i32 55, float %5062, float %5063, float %5064, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5104 = select i1 %1682, float %5098, float %5062
  %5105 = select i1 %1682, float %5103, float %5063
  %5106 = select i1 %1682, float %5099, float %5064
  %5107 = and i32 %5102, 65535
  %5108 = uitofp i32 %5107 to float
  %5109 = lshr i32 %5102, 16
  %5110 = uitofp i32 %5109 to float
  %5111 = and i32 %5075, 65535
  %5112 = and i32 %5075, 50331648
  %5113 = icmp eq i32 %5112, 33554432
  %5114 = call float @dx.op.dot3.f32(i32 55, float %5078, float %5079, float %5080, float %5078, float %5079, float %5080)  ; Dot3(ax,ay,az,bx,by,bz)
  %5115 = fsub fast float %142, %5086
  %5116 = fsub fast float %143, %5087
  %5117 = fsub fast float %144, %5088
  %5118 = call float @dx.op.dot3.f32(i32 55, float %5115, float %5116, float %5117, float %5078, float %5079, float %5080)  ; Dot3(ax,ay,az,bx,by,bz)
  %5119 = fdiv fast float %5118, %5114
  %5120 = call float @dx.op.binary.f32(i32 35, float %5119, float -1.000000e+00)  ; FMax(a,b)
  %5121 = call float @dx.op.binary.f32(i32 36, float %5120, float 1.000000e+00)  ; FMin(a,b)
  %5122 = fmul fast float %5121, %5078
  %5123 = fmul fast float %5121, %5079
  %5124 = fmul fast float %5121, %5080
  %5125 = fadd fast float %5122, %5086
  %5126 = fadd fast float %5123, %5087
  %5127 = fadd fast float %5124, %5088
  %5128 = fsub fast float %5125, %142
  %5129 = fsub fast float %5126, %143
  %5130 = fsub fast float %5127, %144
  %5131 = call float @dx.op.dot3.f32(i32 55, float %5128, float %5129, float %5130, float %5128, float %5129, float %5130)  ; Dot3(ax,ay,az,bx,by,bz)
  %5132 = call float @dx.op.unary.f32(i32 24, float %5131)  ; Sqrt(value)
  %5133 = fdiv fast float 1.000000e+00, %5132
  %5134 = fmul fast float %5128, %5133
  %5135 = fmul fast float %5129, %5133
  %5136 = fmul fast float %5130, %5133
  %5137 = fadd fast float %5132, %5067
  %5138 = fdiv fast float 1.000000e+00, %5137
  %5139 = fmul float %5083, %5138
  %5140 = fmul float %5139, %5139
  %5141 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  br i1 %5113, label %5142, label %5166

; <label>:5142                                    ; preds = %5047
  %5143 = fmul fast float %5094, %5070
  %5144 = fmul fast float %5094, %5071
  %5145 = fmul fast float %5094, %5072
  %5146 = fsub fast float %5143, %142
  %5147 = fadd fast float %5146, %5125
  %5148 = fsub fast float %5144, %143
  %5149 = fadd fast float %5148, %5126
  %5150 = fsub fast float %5145, %144
  %5151 = fadd fast float %5150, %5127
  %5152 = call float @dx.op.dot3.f32(i32 55, float %5147, float %5149, float %5151, float %5147, float %5149, float %5151)  ; Dot3(ax,ay,az,bx,by,bz)
  %5153 = call float @dx.op.unary.f32(i32 25, float %5152)  ; Rsqrt(value)
  %5154 = fmul fast float %5153, %5147
  %5155 = fmul fast float %5153, %5149
  %5156 = fmul fast float %5153, %5151
  %5157 = fsub fast float %142, %5125
  %5158 = fsub fast float %143, %5126
  %5159 = fsub fast float %144, %5127
  %5160 = fsub fast float -0.000000e+00, %5157
  %5161 = fsub fast float -0.000000e+00, %5158
  %5162 = fsub fast float -0.000000e+00, %5159
  %5163 = call float @dx.op.dot3.f32(i32 55, float %5160, float %5161, float %5162, float %5070, float %5071, float %5072)  ; Dot3(ax,ay,az,bx,by,bz)
  %5164 = fcmp fast ogt float %5163, 0.000000e+00
  %5165 = uitofp i1 %5164 to float
  br label %5166

; <label>:5166                                    ; preds = %5142, %5047
  %5167 = phi float [ %5165, %5142 ], [ 1.000000e+00, %5047 ]
  %5168 = phi float [ %5154, %5142 ], [ %5134, %5047 ]
  %5169 = phi float [ %5155, %5142 ], [ %5135, %5047 ]
  %5170 = phi float [ %5156, %5142 ], [ %5136, %5047 ]
  %5171 = call float @dx.op.dot3.f32(i32 55, float %5070, float %5071, float %5072, float %5168, float %5169, float %5170)  ; Dot3(ax,ay,az,bx,by,bz)
  %5172 = fmul fast float %5171, %5171
  %5173 = call float @dx.op.unary.f32(i32 7, float %5172)  ; Saturate(value)
  %5174 = fsub fast float 1.000000e+00, %5173
  %5175 = fmul fast float %5174, 5.000000e-01
  %5176 = fcmp fast ogt float %5171, 0.000000e+00
  %5177 = fsub fast float 1.000000e+00, %5175
  %5178 = select i1 %5176, float %5175, float %5177
  %5179 = fmul fast float %5178, %5110
  %5180 = fadd fast float %5179, %5108
  %5181 = fmul fast float %5180, 0x3EF0001000000000
  %5182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5181, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5183 = extractvalue %dx.types.ResRet.f32 %5182, 0
  %5184 = fmul fast float %5171, %5092
  %5185 = fadd fast float %5184, %5093
  %5186 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  %5187 = select i1 %5113, float 1.000000e+00, float %5186
  %5188 = select i1 %5113, float %5186, float 1.000000e+00
  %5189 = fmul fast float %5132, %5089
  %5190 = fsub fast float 1.000000e+00, %5189
  %5191 = fmul fast float %5190, %5095
  %5192 = call float @dx.op.unary.f32(i32 7, float %5191)  ; Saturate(value)
  %5193 = fmul fast float %5192, %5188
  %5194 = fmul fast float %5193, 2.000000e+00
  %5195 = fsub fast float 3.000000e+00, %5194
  %5196 = fmul fast float %5183, %5167
  %5197 = fmul fast float %5193, %5193
  %5198 = fmul fast float %5197, %5196
  %5199 = fmul fast float %5198, %5195
  %5200 = call float @dx.op.binary.f32(i32 36, float %5199, float %5199)  ; FMin(a,b)
  %5201 = call float @dx.op.binary.f32(i32 36, float %5199, float %5200)  ; FMin(a,b)
  %5202 = fcmp fast ogt float %5201, 0.000000e+00
  br i1 %5202, label %5211, label %5203, !dx.controlflow.hints !148

; <label>:5203                                    ; preds = %5355, %5350, %5166
  %5204 = phi float [ %5049, %5350 ], [ %5049, %5166 ], [ %5606, %5355 ]
  %5205 = phi float [ %5050, %5350 ], [ %5050, %5166 ], [ %5607, %5355 ]
  %5206 = phi float [ %5051, %5350 ], [ %5051, %5166 ], [ %5608, %5355 ]
  %5207 = phi float [ %5052, %5350 ], [ %5052, %5166 ], [ %5594, %5355 ]
  %5208 = phi float [ %5053, %5350 ], [ %5053, %5166 ], [ %5595, %5355 ]
  %5209 = phi float [ %5054, %5350 ], [ %5054, %5166 ], [ %5596, %5355 ]
  %5210 = icmp eq i32 %5048, %5058
  br i1 %5210, label %5609, label %5047

; <label>:5211                                    ; preds = %5166
  %5212 = icmp eq i32 %5111, 255
  br i1 %5212, label %5350, label %5213, !dx.controlflow.hints !149

; <label>:5213                                    ; preds = %5211
  %5214 = mul nuw nsw i32 %5111, 176
  %5215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5214, i32 undef)  ; BufferLoad(srv,index,wot)
  %5216 = extractvalue %dx.types.ResRet.f32 %5215, 0
  %5217 = extractvalue %dx.types.ResRet.f32 %5215, 1
  %5218 = extractvalue %dx.types.ResRet.f32 %5215, 2
  %5219 = extractvalue %dx.types.ResRet.f32 %5215, 3
  %5220 = add nuw nsw i32 %5214, 16
  %5221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5220, i32 undef)  ; BufferLoad(srv,index,wot)
  %5222 = extractvalue %dx.types.ResRet.f32 %5221, 0
  %5223 = extractvalue %dx.types.ResRet.f32 %5221, 1
  %5224 = add nuw nsw i32 %5214, 32
  %5225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5224, i32 undef)  ; BufferLoad(srv,index,wot)
  %5226 = extractvalue %dx.types.ResRet.f32 %5225, 0
  %5227 = extractvalue %dx.types.ResRet.f32 %5225, 1
  %5228 = add nuw nsw i32 %5214, 48
  %5229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5228, i32 undef)  ; BufferLoad(srv,index,wot)
  %5230 = extractvalue %dx.types.ResRet.f32 %5229, 0
  %5231 = extractvalue %dx.types.ResRet.f32 %5229, 1
  %5232 = extractvalue %dx.types.ResRet.f32 %5229, 2
  %5233 = extractvalue %dx.types.ResRet.f32 %5229, 3
  %5234 = add nuw nsw i32 %5214, 64
  %5235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5234, i32 undef)  ; BufferLoad(srv,index,wot)
  %5236 = extractvalue %dx.types.ResRet.f32 %5235, 0
  %5237 = extractvalue %dx.types.ResRet.f32 %5235, 1
  %5238 = extractvalue %dx.types.ResRet.f32 %5235, 2
  %5239 = extractvalue %dx.types.ResRet.f32 %5235, 3
  %5240 = add nuw nsw i32 %5214, 80
  %5241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5240, i32 undef)  ; BufferLoad(srv,index,wot)
  %5242 = extractvalue %dx.types.ResRet.f32 %5241, 0
  %5243 = extractvalue %dx.types.ResRet.f32 %5241, 1
  %5244 = extractvalue %dx.types.ResRet.f32 %5241, 2
  %5245 = extractvalue %dx.types.ResRet.f32 %5241, 3
  %5246 = add nuw nsw i32 %5214, 96
  %5247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %5246, i32 undef)  ; BufferLoad(srv,index,wot)
  %5248 = extractvalue %dx.types.ResRet.f32 %5247, 0
  %5249 = extractvalue %dx.types.ResRet.f32 %5247, 1
  %5250 = extractvalue %dx.types.ResRet.f32 %5247, 2
  %5251 = extractvalue %dx.types.ResRet.f32 %5247, 3
  %5252 = bitcast float %5223 to i32
  %5253 = fmul fast float %5230, %142
  %5254 = call float @dx.op.tertiary.f32(i32 46, float %143, float %5236, float %5253)  ; FMad(a,b,c)
  %5255 = call float @dx.op.tertiary.f32(i32 46, float %144, float %5242, float %5254)  ; FMad(a,b,c)
  %5256 = fadd fast float %5255, %5248
  %5257 = fmul fast float %5231, %142
  %5258 = call float @dx.op.tertiary.f32(i32 46, float %143, float %5237, float %5257)  ; FMad(a,b,c)
  %5259 = call float @dx.op.tertiary.f32(i32 46, float %144, float %5243, float %5258)  ; FMad(a,b,c)
  %5260 = fadd fast float %5259, %5249
  %5261 = fmul fast float %5232, %142
  %5262 = call float @dx.op.tertiary.f32(i32 46, float %143, float %5238, float %5261)  ; FMad(a,b,c)
  %5263 = call float @dx.op.tertiary.f32(i32 46, float %144, float %5244, float %5262)  ; FMad(a,b,c)
  %5264 = fadd fast float %5263, %5250
  %5265 = fmul fast float %5233, %142
  %5266 = call float @dx.op.tertiary.f32(i32 46, float %143, float %5239, float %5265)  ; FMad(a,b,c)
  %5267 = call float @dx.op.tertiary.f32(i32 46, float %144, float %5245, float %5266)  ; FMad(a,b,c)
  %5268 = fadd fast float %5267, %5251
  %5269 = fdiv fast float %5256, %5268
  %5270 = fdiv fast float %5260, %5268
  %5271 = fdiv fast float %5264, %5268
  %5272 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5271)  ; FMax(a,b)
  %5273 = fmul fast float %1026, 0x401921FB60000000
  %5274 = call float @dx.op.unary.f32(i32 13, float %5273)  ; Sin(value)
  %5275 = call float @dx.op.unary.f32(i32 12, float %5273)  ; Cos(value)
  %5276 = fmul fast float %5275, %5227
  %5277 = call float @dx.op.tertiary.f32(i32 46, float %5274, float %5227, float 0.000000e+00)  ; FMad(a,b,c)
  %5278 = fmul fast float %5227, %5274
  %5279 = fsub fast float -0.000000e+00, %5278
  %5280 = call float @dx.op.tertiary.f32(i32 46, float %5275, float %5227, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5281

; <label>:5281                                    ; preds = %5281, %5213
  %5282 = phi float [ 0.000000e+00, %5213 ], [ %5314, %5281 ]
  %5283 = phi float [ 0.000000e+00, %5213 ], [ %5316, %5281 ]
  %5284 = phi i32 [ 0, %5213 ], [ %5317, %5281 ]
  %5285 = mul i32 %5284, 2
  %5286 = add i32 0, %5285
  %5287 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5286
  %5288 = load float, float* %5287, align 4
  %5289 = mul i32 %5284, 2
  %5290 = add i32 1, %5289
  %5291 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5290
  %5292 = load float, float* %5291, align 4
  %5293 = fmul fast float %5276, %5288
  %5294 = call float @dx.op.tertiary.f32(i32 46, float %5292, float %5279, float %5293)  ; FMad(a,b,c)
  %5295 = fmul fast float %5288, %5277
  %5296 = call float @dx.op.tertiary.f32(i32 46, float %5292, float %5280, float %5295)  ; FMad(a,b,c)
  %5297 = fadd fast float %5294, %5269
  %5298 = fadd fast float %5296, %5270
  %5299 = fmul fast float %5297, %5222
  %5300 = fmul fast float %5298, %5222
  %5301 = call float @dx.op.binary.f32(i32 35, float %5299, float %5218)  ; FMax(a,b)
  %5302 = call float @dx.op.binary.f32(i32 35, float %5300, float %5218)  ; FMax(a,b)
  %5303 = call float @dx.op.binary.f32(i32 36, float %5301, float %5219)  ; FMin(a,b)
  %5304 = call float @dx.op.binary.f32(i32 36, float %5302, float %5219)  ; FMin(a,b)
  %5305 = fadd fast float %5303, %5216
  %5306 = fadd fast float %5304, %5217
  %5307 = uitofp i32 %5252 to float
  %5308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %57, float %5305, float %5306, float %5307, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5309 = extractvalue %dx.types.ResRet.f32 %5308, 0
  %5310 = fsub fast float %5309, %5272
  %5311 = fsub fast float %5310, %5226
  %5312 = fcmp fast ogt float %5311, 0.000000e+00
  %5313 = select i1 %5312, float 1.000000e+00, float 0.000000e+00
  %5314 = fadd fast float %5313, %5282
  %5315 = select i1 %5312, float %5311, float 0.000000e+00
  %5316 = fadd fast float %5315, %5283
  %5317 = add nuw nsw i32 %5284, 1
  %5318 = icmp eq i32 %5317, 8
  br i1 %5318, label %5319, label %5281

; <label>:5319                                    ; preds = %5281
  %5320 = fdiv fast float 1.000000e+00, %5314
  %5321 = fmul fast float %5320, %5316
  %5322 = fdiv fast float 1.000000e+00, %5272
  %5323 = fmul fast float %5321, %5322
  %5324 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5325 = call float @dx.op.binary.f32(i32 35, float %5324, float 0.000000e+00)  ; FMax(a,b)
  %5326 = fmul fast float %5314, 1.250000e-01
  %5327 = call float @dx.op.unary.f32(i32 7, float %5326)  ; Saturate(value)
  %5328 = fmul fast float %5327, 2.000000e+00
  %5329 = fadd fast float %5328, -1.000000e+00
  %5330 = fcmp fast ogt float %5329, 0.000000e+00
  %5331 = fcmp fast olt float %5329, 0.000000e+00
  %5332 = zext i1 %5330 to i32
  %5333 = zext i1 %5331 to i32
  %5334 = sub nsw i32 %5332, %5333
  %5335 = sitofp i32 %5334 to float
  %5336 = fmul fast float %5335, %5329
  %5337 = fsub fast float 1.000000e+00, %5336
  %5338 = fmul fast float %5337, %5337
  %5339 = fmul fast float %5338, %5337
  %5340 = fsub fast float %5337, %5339
  %5341 = fmul fast float %5340, %5325
  %5342 = fsub fast float 1.000000e+00, %5339
  %5343 = fsub fast float %5342, %5341
  %5344 = fmul fast float %5335, 5.000000e-01
  %5345 = fmul fast float %5344, %5343
  %5346 = fsub fast float -5.000000e-01, %5345
  %5347 = fmul fast float %5346, %5187
  %5348 = fadd fast float %5347, 1.000000e+00
  %5349 = fmul fast float %5348, %5199
  br label %5350

; <label>:5350                                    ; preds = %5319, %5211
  %5351 = phi float [ %5349, %5319 ], [ %5199, %5211 ]
  %5352 = call float @dx.op.binary.f32(i32 36, float %5351, float %5351)  ; FMin(a,b)
  %5353 = call float @dx.op.binary.f32(i32 36, float %5351, float %5352)  ; FMin(a,b)
  %5354 = fcmp fast ogt float %5353, 0.000000e+00
  br i1 %5354, label %5355, label %5203, !dx.controlflow.hints !150

; <label>:5355                                    ; preds = %5350
  %5356 = fmul fast float %5351, %5104
  %5357 = fmul fast float %5351, %5105
  %5358 = fmul fast float %5351, %5106
  %5359 = fadd fast float %5134, %1544
  %5360 = fadd fast float %5135, %1545
  %5361 = fadd fast float %5136, %1546
  %5362 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float %5128, float %5129, float %5130)  ; Dot3(ax,ay,az,bx,by,bz)
  %5363 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float %5359, float %5360, float %5361)  ; Dot3(ax,ay,az,bx,by,bz)
  %5364 = fdiv fast float 1.000000e+00, %5363
  %5365 = fmul fast float %5364, %5362
  %5366 = fmul fast float %5365, %5359
  %5367 = fmul fast float %5365, %5360
  %5368 = fmul fast float %5365, %5361
  %5369 = fadd fast float %5115, %5366
  %5370 = fadd fast float %5116, %5367
  %5371 = fadd fast float %5117, %5368
  %5372 = call float @dx.op.dot3.f32(i32 55, float %5369, float %5370, float %5371, float %5078, float %5079, float %5080)  ; Dot3(ax,ay,az,bx,by,bz)
  %5373 = fdiv fast float %5372, %5114
  %5374 = call float @dx.op.binary.f32(i32 35, float %5373, float -1.000000e+00)  ; FMax(a,b)
  %5375 = call float @dx.op.binary.f32(i32 36, float %5374, float 1.000000e+00)  ; FMin(a,b)
  %5376 = fmul fast float %5375, %5078
  %5377 = fmul fast float %5375, %5079
  %5378 = fmul fast float %5375, %5080
  %5379 = fsub fast float %5086, %142
  %5380 = fadd fast float %5379, %5376
  %5381 = fsub fast float %5087, %143
  %5382 = fadd fast float %5381, %5377
  %5383 = fsub fast float %5088, %144
  %5384 = fadd fast float %5383, %5378
  %5385 = call float @dx.op.dot3.f32(i32 55, float %5380, float %5382, float %5384, float %5380, float %5382, float %5384)  ; Dot3(ax,ay,az,bx,by,bz)
  %5386 = call float @dx.op.unary.f32(i32 25, float %5385)  ; Rsqrt(value)
  %5387 = fmul fast float %5380, %5386
  %5388 = fmul fast float %5382, %5386
  %5389 = fmul fast float %5384, %5386
  %5390 = fsub fast float %5387, %1572
  %5391 = fsub fast float %5388, %1573
  %5392 = fsub fast float %5389, %1574
  %5393 = call float @dx.op.dot3.f32(i32 55, float %5390, float %5391, float %5392, float %5390, float %5391, float %5392)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = call float @dx.op.unary.f32(i32 25, float %5393)  ; Rsqrt(value)
  %5395 = fmul fast float %5390, %5394
  %5396 = fmul fast float %5391, %5394
  %5397 = fmul fast float %5392, %5394
  %5398 = call float @dx.op.dot3.f32(i32 55, float %5387, float %5388, float %5389, float %1544, float %1545, float %1546)  ; Dot3(ax,ay,az,bx,by,bz)
  %5399 = call float @dx.op.dot3.f32(i32 55, float %1684, float %1685, float %1686, float %5395, float %5396, float %5397)  ; Dot3(ax,ay,az,bx,by,bz)
  %5400 = fmul fast float %5386, %5083
  %5401 = fmul fast float %5400, %5400
  %5402 = bitcast float %5401 to i32
  %5403 = ashr i32 %5402, 1
  %5404 = sub nsw i32 1597463007, %5403
  %5405 = bitcast i32 %5404 to float
  %5406 = fmul fast float %5405, %5398
  %5407 = fmul fast float %5406, %5406
  %5408 = fsub fast float 1.000000e+00, %5407
  %5409 = fmul fast float %5398, %5401
  %5410 = call float @dx.op.unary.f32(i32 7, float %5409)  ; Saturate(value)
  %5411 = fmul fast float %5406, 5.000000e-01
  %5412 = fadd fast float %5411, 5.000000e-01
  %5413 = fmul fast float %5412, %5401
  %5414 = call float @dx.op.unary.f32(i32 7, float %5413)  ; Saturate(value)
  %5415 = bitcast float %5414 to i32
  %5416 = ashr i32 %5415, 1
  %5417 = add nsw i32 %5416, 532487669
  %5418 = bitcast i32 %5417 to float
  %5419 = fmul fast float %5418, %5414
  %5420 = fcmp fast ogt float %5408, 0.000000e+00
  %5421 = select i1 %5420, float %5419, float %5410
  %5422 = call float @dx.op.unary.f32(i32 7, float %5398)  ; Saturate(value)
  %5423 = fmul fast float %5422, %5422
  %5424 = fmul fast float %5423, %1701
  %5425 = call float @dx.op.unary.f32(i32 7, float %5424)  ; Saturate(value)
  %5426 = fmul fast float %5421, %5425
  %5427 = call float @dx.op.dot3.f32(i32 55, float %5078, float %5079, float %5080, float %1694, float %1695, float %1696)  ; Dot3(ax,ay,az,bx,by,bz)
  %5428 = call float @dx.op.dot3.f32(i32 55, float %5078, float %5079, float %5080, float %5128, float %5129, float %5130)  ; Dot3(ax,ay,az,bx,by,bz)
  %5429 = call float @dx.op.dot3.f32(i32 55, float %1694, float %1695, float %1696, float %5128, float %5129, float %5130)  ; Dot3(ax,ay,az,bx,by,bz)
  %5430 = fmul fast float %5427, %5427
  %5431 = fsub fast float %5114, %5430
  %5432 = fmul fast float %5429, %5427
  %5433 = fsub fast float %5432, %5428
  %5434 = fdiv fast float %5433, %5431
  %5435 = call float @dx.op.binary.f32(i32 35, float %5434, float -1.500000e+00)  ; FMax(a,b)
  %5436 = call float @dx.op.binary.f32(i32 36, float %5435, float 1.500000e+00)  ; FMin(a,b)
  %5437 = fmul fast float %5436, %5436
  %5438 = fmul fast float %5437, 0x3FC2F68380000000
  %5439 = fmul fast float %5438, %5436
  %5440 = fsub fast float %5436, %5439
  %5441 = fmul fast float %5440, %5078
  %5442 = fmul fast float %5440, %5079
  %5443 = fmul fast float %5440, %5080
  %5444 = fadd fast float %5441, %5125
  %5445 = fadd fast float %5442, %5126
  %5446 = fadd fast float %5443, %5127
  %5447 = fsub fast float %5444, %142
  %5448 = fsub fast float %5445, %143
  %5449 = fsub fast float %5446, %144
  %5450 = call float @dx.op.dot3.f32(i32 55, float %5447, float %5448, float %5449, float %1694, float %1695, float %1696)  ; Dot3(ax,ay,az,bx,by,bz)
  %5451 = fmul fast float %5450, %1694
  %5452 = fmul fast float %5450, %1695
  %5453 = fmul fast float %5450, %1696
  %5454 = fsub fast float %5451, %5447
  %5455 = fsub fast float %5452, %5448
  %5456 = fsub fast float %5453, %5449
  %5457 = call float @dx.op.dot3.f32(i32 55, float %5454, float %5455, float %5456, float %5454, float %5455, float %5456)  ; Dot3(ax,ay,az,bx,by,bz)
  %5458 = bitcast float %5457 to i32
  %5459 = ashr i32 %5458, 1
  %5460 = sub nsw i32 1597463007, %5459
  %5461 = bitcast i32 %5460 to float
  %5462 = fmul fast float %5461, %5083
  %5463 = call float @dx.op.dot3.f32(i32 55, float %5447, float %5448, float %5449, float %5447, float %5448, float %5449)  ; Dot3(ax,ay,az,bx,by,bz)
  %5464 = bitcast float %5463 to i32
  %5465 = ashr i32 %5464, 1
  %5466 = sub nsw i32 1597463007, %5465
  %5467 = bitcast i32 %5466 to float
  %5468 = fmul fast float %5462, %5462
  %5469 = fadd fast float %5468, 1.250000e-01
  %5470 = call float @dx.op.unary.f32(i32 25, float %5469)  ; Rsqrt(value)
  %5471 = fmul fast float %5462, %5470
  %5472 = fmul fast float %5454, %5471
  %5473 = fmul fast float %5455, %5471
  %5474 = fmul fast float %5456, %5471
  %5475 = fadd fast float %5447, %5472
  %5476 = fadd fast float %5448, %5473
  %5477 = fadd fast float %5449, %5474
  %5478 = call float @dx.op.dot3.f32(i32 55, float %5475, float %5476, float %5477, float %5475, float %5476, float %5477)  ; Dot3(ax,ay,az,bx,by,bz)
  %5479 = call float @dx.op.unary.f32(i32 25, float %5478)  ; Rsqrt(value)
  %5480 = fmul fast float %5475, %5479
  %5481 = fmul fast float %5476, %5479
  %5482 = fmul fast float %5477, %5479
  %5483 = fsub fast float %5480, %1572
  %5484 = fsub fast float %5481, %1573
  %5485 = fsub fast float %5482, %1574
  %5486 = call float @dx.op.dot3.f32(i32 55, float %5483, float %5484, float %5485, float %5483, float %5484, float %5485)  ; Dot3(ax,ay,az,bx,by,bz)
  %5487 = call float @dx.op.unary.f32(i32 25, float %5486)  ; Rsqrt(value)
  %5488 = fmul fast float %5483, %5487
  %5489 = fmul fast float %5484, %5487
  %5490 = fmul fast float %5485, %5487
  %5491 = call float @dx.op.dot3.f32(i32 55, float %1544, float %1545, float %1546, float %5488, float %5489, float %5490)  ; Dot3(ax,ay,az,bx,by,bz)
  %5492 = fmul fast float %5491, %5491
  %5493 = call float @dx.op.unary.f32(i32 6, float %5398)  ; FAbs(value)
  %5494 = fsub fast float 1.000000e+00, %1628
  %5495 = call float @dx.op.binary.f32(i32 35, float %5494, float 0x3F847AE140000000)  ; FMax(a,b)
  %5496 = fmul fast float %5495, %5495
  %5497 = fmul fast float %5496, %5496
  %5498 = fsub fast float 1.000000e+00, %5497
  %5499 = fmul fast float %1689, %1689
  %5500 = fmul fast float %5499, %5498
  %5501 = fadd fast float %5500, %5497
  %5502 = bitcast float %5501 to i32
  %5503 = ashr i32 %5502, 1
  %5504 = add nsw i32 %5503, 532487669
  %5505 = bitcast i32 %5504 to float
  %5506 = fadd fast float %5505, %1689
  %5507 = fmul fast float %5497, %5492
  %5508 = fsub fast float 1.000000e+00, %5492
  %5509 = fadd fast float %5508, %5507
  %5510 = fmul fast float %5493, %5493
  %5511 = fmul fast float %5510, %5498
  %5512 = fadd fast float %5511, %5497
  %5513 = bitcast float %5512 to i32
  %5514 = ashr i32 %5513, 1
  %5515 = add nsw i32 %5514, 532487669
  %5516 = bitcast i32 %5515 to float
  %5517 = fadd fast float %5516, %5493
  %5518 = fmul fast float %5509, %5509
  %5519 = fmul fast float %5518, %5506
  %5520 = fmul fast float %5519, %5517
  %5521 = fdiv fast float 1.000000e+00, %5520
  %5522 = bitcast float %5497 to i32
  %5523 = sitofp i32 %5522 to float
  %5524 = fmul fast float %5523, 0x3FE7F73180000000
  %5525 = fadd fast float %5524, 0x41AFE27C40000000
  %5526 = fptosi float %5525 to i32
  %5527 = bitcast i32 %5526 to float
  %5528 = fmul fast float %5083, 0x3FD80E9D60000000
  %5529 = fmul fast float %5528, %5467
  %5530 = fadd fast float %5527, %5529
  %5531 = bitcast float %5530 to i32
  %5532 = sub nsw i32 2129859010, %5531
  %5533 = bitcast i32 %5532 to float
  %5534 = fmul fast float %5497, %5521
  %5535 = fmul fast float %5534, %5527
  %5536 = fmul fast float %5535, %5533
  %5537 = call float @dx.op.unary.f32(i32 6, float %5399)  ; FAbs(value)
  %5538 = fsub fast float 1.000000e+00, %5537
  %5539 = bitcast float %5538 to i32
  %5540 = sitofp i32 %5539 to float
  %5541 = fmul fast float %5540, 5.000000e+00
  %5542 = fadd fast float %5541, 0xC1EFBF8940000000
  %5543 = fptosi float %5542 to i32
  %5544 = bitcast i32 %5543 to float
  %5545 = fmul fast float %5544, %2516
  %5546 = fmul fast float %5544, %2517
  %5547 = fmul fast float %5544, %2518
  %5548 = fadd fast float %5545, %1565
  %5549 = fadd fast float %5546, %1566
  %5550 = fadd fast float %5547, %1687
  %5551 = fmul fast float %5398, 9.843750e-01
  %5552 = fmul fast float %1628, 9.843750e-01
  %5553 = fadd fast float %5551, 7.812500e-03
  %5554 = fadd fast float %5552, 7.812500e-03
  %5555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %56, float %5553, float %5554, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5556 = extractvalue %dx.types.ResRet.f32 %5555, 2
  %5557 = extractvalue %dx.types.ResRet.f32 %5555, 3
  %5558 = fmul fast float %5556, %1565
  %5559 = fmul fast float %5556, %1566
  %5560 = fmul fast float %5556, %1687
  %5561 = fadd fast float %5558, %5557
  %5562 = fadd fast float %5559, %5557
  %5563 = fadd fast float %5560, %5557
  %5564 = call float @dx.op.binary.f32(i32 35, float %5562, float %5563)  ; FMax(a,b)
  %5565 = call float @dx.op.binary.f32(i32 35, float %5561, float %5564)  ; FMax(a,b)
  %5566 = fsub fast float 1.000000e+00, %5565
  %5567 = fsub fast float -0.000000e+00, %1544
  %5568 = fsub fast float -0.000000e+00, %1545
  %5569 = fsub fast float -0.000000e+00, %1546
  %5570 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float %5567, float %5568, float %5569)  ; Dot3(ax,ay,az,bx,by,bz)
  %5571 = call float @dx.op.unary.f32(i32 7, float %5570)  ; Saturate(value)
  %5572 = fmul fast float %5571, %5141
  %5573 = fmul fast float %5571, 9.843750e-01
  %5574 = fadd fast float %5573, 7.812500e-03
  %5575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %56, float %5574, float %5554, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5576 = extractvalue %dx.types.ResRet.f32 %5575, 2
  %5577 = extractvalue %dx.types.ResRet.f32 %5575, 3
  %5578 = fmul fast float %5576, %1565
  %5579 = fmul fast float %5576, %1566
  %5580 = fmul fast float %5576, %1687
  %5581 = fadd fast float %5578, %5577
  %5582 = fadd fast float %5579, %5577
  %5583 = fadd fast float %5580, %5577
  %5584 = call float @dx.op.binary.f32(i32 35, float %5582, float %5583)  ; FMax(a,b)
  %5585 = call float @dx.op.binary.f32(i32 35, float %5581, float %5584)  ; FMax(a,b)
  %5586 = fsub fast float 1.000000e+00, %5585
  %5587 = fmul fast float %5572, %5586
  %5588 = fmul fast float %5587, %1631
  %5589 = fmul fast float %5566, %5426
  %5590 = fadd fast float %5588, %5589
  %5591 = fmul fast float %5590, %5356
  %5592 = fmul fast float %5590, %5357
  %5593 = fmul fast float %5590, %5358
  %5594 = fadd fast float %5591, %5052
  %5595 = fadd fast float %5592, %5053
  %5596 = fadd fast float %5593, %5054
  %5597 = fmul fast float %5426, %5356
  %5598 = fmul fast float %5597, %5548
  %5599 = fmul fast float %5598, %5536
  %5600 = fmul fast float %5426, %5357
  %5601 = fmul fast float %5600, %5549
  %5602 = fmul fast float %5601, %5536
  %5603 = fmul fast float %5426, %5358
  %5604 = fmul fast float %5603, %5550
  %5605 = fmul fast float %5604, %5536
  %5606 = fadd fast float %5599, %5049
  %5607 = fadd fast float %5602, %5050
  %5608 = fadd fast float %5605, %5051
  br label %5203

; <label>:5609                                    ; preds = %5203
  br label %5610

; <label>:5610                                    ; preds = %5609, %5015
  %5611 = phi float [ %5017, %5015 ], [ %5204, %5609 ]
  %5612 = phi float [ %5018, %5015 ], [ %5205, %5609 ]
  %5613 = phi float [ %5019, %5015 ], [ %5206, %5609 ]
  %5614 = phi float [ %5020, %5015 ], [ %5207, %5609 ]
  %5615 = phi float [ %5021, %5015 ], [ %5208, %5609 ]
  %5616 = phi float [ %5022, %5015 ], [ %5209, %5609 ]
  %5617 = add i32 %5016, 1
  %5618 = icmp ugt i32 %5617, %5012
  br i1 %5618, label %5619, label %5015

; <label>:5619                                    ; preds = %5610
  br label %5620

; <label>:5620                                    ; preds = %5619, %4965, %4954
  %5621 = phi float [ %4956, %4954 ], [ %4956, %4965 ], [ %5611, %5619 ]
  %5622 = phi float [ %4957, %4954 ], [ %4957, %4965 ], [ %5612, %5619 ]
  %5623 = phi float [ %4958, %4954 ], [ %4958, %4965 ], [ %5613, %5619 ]
  %5624 = phi float [ %4959, %4954 ], [ %4959, %4965 ], [ %5614, %5619 ]
  %5625 = phi float [ %4960, %4954 ], [ %4960, %4965 ], [ %5615, %5619 ]
  %5626 = phi float [ %4961, %4954 ], [ %4961, %4965 ], [ %5616, %5619 ]
  %5627 = and i32 %1624, 255
  %5628 = uitofp i32 %5627 to float
  %5629 = fmul fast float %5628, 0x3F70101020000000
  %5630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5631 = extractvalue %dx.types.CBufRet.f32 %5630, 2
  %5632 = extractvalue %dx.types.CBufRet.f32 %5630, 3
  %5633 = fmul fast float %5631, %87
  %5634 = fmul fast float %5632, %88
  %5635 = fptoui float %87 to i32
  %5636 = fptoui float %88 to i32
  %5637 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %42, i32 0, i32 %5635, i32 %5636, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5638 = extractvalue %dx.types.ResRet.f32 %5637, 0
  %5639 = fcmp fast ogt float %5638, -1.000000e+00
  %5640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5641 = extractvalue %dx.types.CBufRet.f32 %5640, 1
  %5642 = select i1 %5639, float %5641, float 1.000000e+00
  %5643 = fadd fast float %5638, 1.000000e+00
  %5644 = fmul fast float %5642, %5643
  %5645 = call float @dx.op.unary.f32(i32 6, float %5644)  ; FAbs(value)
  br i1 %104, label %5646, label %6159

; <label>:5646                                    ; preds = %5620
  %5647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %5648 = extractvalue %dx.types.CBufRet.f32 %5647, 0
  %5649 = extractvalue %dx.types.CBufRet.f32 %5647, 1
  %5650 = extractvalue %dx.types.CBufRet.f32 %5647, 2
  %5651 = fcmp fast oge float %5649, %76
  %5652 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5653 = extractvalue %dx.types.CBufRet.i32 %5652, 0
  %5654 = and i32 %5653, 65536
  %5655 = icmp ne i32 %5654, 0
  %5656 = and i1 %5651, %5655
  br i1 %5656, label %5657, label %5741

; <label>:5657                                    ; preds = %5646
  %5658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5659 = extractvalue %dx.types.CBufRet.f32 %5658, 0
  %5660 = extractvalue %dx.types.CBufRet.f32 %5658, 1
  %5661 = fmul fast float %5659, %5633
  %5662 = fmul fast float %5660, %5634
  %5663 = extractvalue %dx.types.CBufRet.f32 %5658, 2
  %5664 = extractvalue %dx.types.CBufRet.f32 %5658, 3
  %5665 = fmul fast float %5661, %5663
  %5666 = fmul fast float %5662, %5664
  %5667 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  %5668 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5669 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %56, float %5667, float %5668, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5670 = extractvalue %dx.types.ResRet.f32 %5669, 0
  %5671 = extractvalue %dx.types.ResRet.f32 %5669, 1
  %5672 = extractvalue %dx.types.ResRet.f32 %5669, 2
  %5673 = extractvalue %dx.types.ResRet.f32 %5669, 3
  %5674 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %56, float %5667, float %5668, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5675 = extractvalue %dx.types.ResRet.f32 %5674, 0
  %5676 = extractvalue %dx.types.ResRet.f32 %5674, 1
  %5677 = extractvalue %dx.types.ResRet.f32 %5674, 2
  %5678 = extractvalue %dx.types.ResRet.f32 %5674, 3
  %5679 = call float @dx.op.binary.f32(i32 35, float %5671, float %5672)  ; FMax(a,b)
  %5680 = call float @dx.op.binary.f32(i32 35, float %5670, float %5679)  ; FMax(a,b)
  %5681 = call float @dx.op.binary.f32(i32 35, float %5680, float %5673)  ; FMax(a,b)
  %5682 = call float @dx.op.binary.f32(i32 36, float %5676, float %5677)  ; FMin(a,b)
  %5683 = call float @dx.op.binary.f32(i32 36, float %5675, float %5682)  ; FMin(a,b)
  %5684 = call float @dx.op.binary.f32(i32 36, float %5683, float %5678)  ; FMin(a,b)
  %5685 = fmul fast float %5681, 2.550000e+02
  %5686 = fadd fast float %5685, 0x3F70101020000000
  %5687 = fptoui float %5686 to i32
  %5688 = fmul fast float %5684, 2.550000e+02
  %5689 = fadd fast float %5688, 0x3F70101020000000
  %5690 = fptoui float %5689 to i32
  %5691 = icmp ult i32 %5687, %5690
  br i1 %5691, label %5692, label %5741

; <label>:5692                                    ; preds = %5657
  %5693 = fadd fast float %5645, -4.000000e+00
  %5694 = call float @dx.op.binary.f32(i32 35, float %5693, float 0.000000e+00)  ; FMax(a,b)
  %5695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5696 = extractvalue %dx.types.CBufRet.f32 %5695, 0
  %5697 = fadd fast float %5696, %5694
  %5698 = extractvalue %dx.types.CBufRet.f32 %5695, 2
  %5699 = fmul fast float %5697, %5698
  %5700 = call float @dx.op.unary.f32(i32 23, float %5699)  ; Log(value)
  %5701 = extractvalue %dx.types.CBufRet.f32 %5695, 3
  %5702 = fmul fast float %5701, %5700
  %5703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5704 = extractvalue %dx.types.CBufRet.f32 %5703, 2
  %5705 = fmul fast float %5702, %5704
  %5706 = call float @dx.op.unary.f32(i32 7, float %5705)  ; Saturate(value)
  %5707 = uitofp i32 %5687 to float
  %5708 = uitofp i32 %5690 to float
  %5709 = fadd fast float %5707, 5.000000e-01
  %5710 = fadd fast float %5708, 5.000000e-01
  %5711 = fmul fast float %5704, %5709
  %5712 = fmul fast float %5704, %5710
  %5713 = fadd fast float %5711, 0x3F0FFB4800000000
  %5714 = fadd fast float %5712, 0xBF0FFB4800000000
  %5715 = call float @dx.op.binary.f32(i32 35, float %5706, float %5713)  ; FMax(a,b)
  %5716 = call float @dx.op.binary.f32(i32 36, float %5715, float %5714)  ; FMin(a,b)
  %5717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5718 = extractvalue %dx.types.CBufRet.f32 %5717, 1
  %5719 = extractvalue %dx.types.CBufRet.f32 %5717, 2
  %5720 = extractvalue %dx.types.CBufRet.f32 %5717, 0
  %5721 = fmul fast float %5718, %5716
  %5722 = fadd fast float %5720, %5721
  %5723 = fadd fast float %5720, %5719
  %5724 = fsub fast float %5718, %5719
  %5725 = fadd fast float %5724, %5720
  %5726 = call float @dx.op.binary.f32(i32 35, float %5722, float %5723)  ; FMax(a,b)
  %5727 = call float @dx.op.binary.f32(i32 36, float %5726, float %5725)  ; FMin(a,b)
  %5728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %5667, float %5668, float %5727, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5729 = extractvalue %dx.types.ResRet.f32 %5728, 0
  %5730 = extractvalue %dx.types.ResRet.f32 %5728, 1
  %5731 = extractvalue %dx.types.ResRet.f32 %5728, 2
  %5732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %54, float %5667, float %5668, float %5727, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5733 = extractvalue %dx.types.ResRet.f32 %5732, 0
  %5734 = extractvalue %dx.types.ResRet.f32 %5732, 1
  %5735 = extractvalue %dx.types.ResRet.f32 %5732, 2
  %5736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5737 = extractvalue %dx.types.CBufRet.f32 %5736, 1
  %5738 = fmul fast float %5737, %5733
  %5739 = fmul fast float %5737, %5734
  %5740 = fmul fast float %5737, %5735
  br label %5741

; <label>:5741                                    ; preds = %5692, %5657, %5646
  %5742 = phi float [ 0.000000e+00, %5646 ], [ %5738, %5692 ], [ 0.000000e+00, %5657 ]
  %5743 = phi float [ 0.000000e+00, %5646 ], [ %5739, %5692 ], [ 0.000000e+00, %5657 ]
  %5744 = phi float [ 0.000000e+00, %5646 ], [ %5740, %5692 ], [ 0.000000e+00, %5657 ]
  %5745 = phi float [ 1.000000e+00, %5646 ], [ %5729, %5692 ], [ 1.000000e+00, %5657 ]
  %5746 = phi float [ 1.000000e+00, %5646 ], [ %5730, %5692 ], [ 1.000000e+00, %5657 ]
  %5747 = phi float [ 1.000000e+00, %5646 ], [ %5731, %5692 ], [ 1.000000e+00, %5657 ]
  %5748 = fcmp fast olt float %5629, 1.000000e+00
  %5749 = fcmp fast olt float %5648, %5645
  %5750 = or i1 %5748, %5749
  br i1 %5750, label %5751, label %5915

; <label>:5751                                    ; preds = %5741
  %5752 = lshr i32 %1643, 16
  %5753 = uitofp i32 %5752 to float
  %5754 = fmul fast float %5753, 0x3EF0001000000000
  %5755 = and i32 %1636, 65535
  %5756 = uitofp i32 %5755 to float
  %5757 = fmul fast float %5756, 0x3EF0001000000000
  %5758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5759 = extractvalue %dx.types.CBufRet.f32 %5758, 3
  %5760 = fadd fast float %5759, 3.000000e+00
  %5761 = and i32 %1008, 16383
  %5762 = lshr i32 %1008, 16
  %5763 = and i32 %5762, 255
  %5764 = mul nuw nsw i32 %5761, 148
  %5765 = add nuw nsw i32 %5764, 60
  %5766 = add nuw nsw i32 %5764, 116
  %5767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5768 = extractvalue %dx.types.CBufRet.i32 %5767, 0
  %5769 = call i32 @dx.op.binary.i32(i32 40, i32 %5761, i32 %5768)  ; UMin(a,b)
  %5770 = mul i32 %5769, 36
  %5771 = add i32 %5770, 4
  %5772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5773 = extractvalue %dx.types.CBufRet.f32 %5772, 0
  %5774 = fmul fast float %5757, %5773
  %5775 = fmul fast float %5754, %5773
  %5776 = extractvalue %dx.types.CBufRet.f32 %5772, 1
  %5777 = fadd fast float %5774, %5776
  %5778 = fadd fast float %5775, %5776
  %5779 = icmp eq i32 %5763, 0
  br i1 %5779, label %5840, label %5780

; <label>:5780                                    ; preds = %5751
  br label %5781

; <label>:5781                                    ; preds = %5781, %5780
  %5782 = phi float [ %5825, %5781 ], [ 0.000000e+00, %5780 ]
  %5783 = phi float [ %5835, %5781 ], [ 0.000000e+00, %5780 ]
  %5784 = phi float [ %5836, %5781 ], [ 0.000000e+00, %5780 ]
  %5785 = phi float [ %5837, %5781 ], [ 0.000000e+00, %5780 ]
  %5786 = phi float [ %5829, %5781 ], [ 0.000000e+00, %5780 ]
  %5787 = phi float [ %5830, %5781 ], [ 0.000000e+00, %5780 ]
  %5788 = phi float [ %5831, %5781 ], [ 0.000000e+00, %5780 ]
  %5789 = phi i32 [ %5794, %5781 ], [ %5763, %5780 ]
  %5790 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5789)  ; FirstbitLo(value)
  %5791 = and i32 %5790, 31
  %5792 = shl i32 1, %5791
  %5793 = xor i32 %5792, -1
  %5794 = and i32 %5789, %5793
  %5795 = shl i32 %5790, 2
  %5796 = add i32 %5771, %5795
  %5797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5796, i32 undef)  ; BufferLoad(srv,index,wot)
  %5798 = extractvalue %dx.types.ResRet.i32 %5797, 0
  %5799 = and i32 %5798, 32767
  %5800 = add i32 %5765, %5795
  %5801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5800, i32 undef)  ; BufferLoad(srv,index,wot)
  %5802 = extractvalue %dx.types.ResRet.f32 %5801, 0
  %5803 = add i32 %5766, %5795
  %5804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5803, i32 undef)  ; BufferLoad(srv,index,wot)
  %5805 = extractvalue %dx.types.ResRet.i32 %5804, 0
  %5806 = add i32 %5805, 0
  %5807 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5806, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5807, %dx.types.Handle %54, float %5777, float %5778, float %5802, float undef, i32 0, i32 0, i32 undef, float %5760)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5809 = extractvalue %dx.types.ResRet.f32 %5808, 0
  %5810 = mul nuw nsw i32 %5799, 928
  %5811 = add nuw nsw i32 %5810, 44
  %5812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5811, i32 undef)  ; BufferLoad(srv,index,wot)
  %5813 = extractvalue %dx.types.ResRet.f32 %5812, 0
  %5814 = add nuw nsw i32 %5810, 48
  %5815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5814, i32 undef)  ; BufferLoad(srv,index,wot)
  %5816 = extractvalue %dx.types.ResRet.f32 %5815, 0
  %5817 = extractvalue %dx.types.ResRet.f32 %5815, 1
  %5818 = extractvalue %dx.types.ResRet.f32 %5815, 2
  %5819 = add nuw nsw i32 %5810, 60
  %5820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5819, i32 undef)  ; BufferLoad(srv,index,wot)
  %5821 = extractvalue %dx.types.ResRet.f32 %5820, 0
  %5822 = extractvalue %dx.types.ResRet.f32 %5820, 1
  %5823 = extractvalue %dx.types.ResRet.f32 %5820, 2
  %5824 = fmul fast float %5813, %5809
  %5825 = fadd fast float %5824, %5782
  %5826 = fmul fast float %5816, %5809
  %5827 = fmul fast float %5817, %5809
  %5828 = fmul fast float %5818, %5809
  %5829 = fadd fast float %5826, %5786
  %5830 = fadd fast float %5827, %5787
  %5831 = fadd fast float %5828, %5788
  %5832 = fmul fast float %5821, %5809
  %5833 = fmul fast float %5822, %5809
  %5834 = fmul fast float %5823, %5809
  %5835 = fadd fast float %5832, %5783
  %5836 = fadd fast float %5833, %5784
  %5837 = fadd fast float %5834, %5785
  %5838 = icmp eq i32 %5794, 0
  br i1 %5838, label %5839, label %5781

; <label>:5839                                    ; preds = %5781
  br label %5840

; <label>:5840                                    ; preds = %5839, %5751
  %5841 = phi float [ 0.000000e+00, %5751 ], [ %5825, %5839 ]
  %5842 = phi float [ 0.000000e+00, %5751 ], [ %5835, %5839 ]
  %5843 = phi float [ 0.000000e+00, %5751 ], [ %5836, %5839 ]
  %5844 = phi float [ 0.000000e+00, %5751 ], [ %5837, %5839 ]
  %5845 = phi float [ 0.000000e+00, %5751 ], [ %5829, %5839 ]
  %5846 = phi float [ 0.000000e+00, %5751 ], [ %5830, %5839 ]
  %5847 = phi float [ 0.000000e+00, %5751 ], [ %5831, %5839 ]
  %5848 = fmul fast float %5845, 0x3F847AE140000000
  %5849 = fmul fast float %5846, 0x3F847AE140000000
  %5850 = fmul fast float %5847, 0x3F847AE140000000
  %5851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5852 = extractvalue %dx.types.CBufRet.f32 %5851, 0
  %5853 = extractvalue %dx.types.CBufRet.f32 %5851, 1
  %5854 = extractvalue %dx.types.CBufRet.f32 %5851, 2
  %5855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5856 = extractvalue %dx.types.CBufRet.f32 %5855, 0
  %5857 = extractvalue %dx.types.CBufRet.f32 %5855, 1
  %5858 = call float @dx.op.dot3.f32(i32 55, float %5852, float %5853, float %5854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5859 = select i1 %1682, float %5856, float %5852
  %5860 = select i1 %1682, float %5858, float %5853
  %5861 = select i1 %1682, float %5857, float %5854
  %5862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5863 = extractvalue %dx.types.CBufRet.f32 %5862, 0
  %5864 = extractvalue %dx.types.CBufRet.f32 %5862, 1
  %5865 = extractvalue %dx.types.CBufRet.f32 %5862, 2
  %5866 = fadd fast float %5845, %5842
  %5867 = fmul fast float %5866, 0x3F847AE140000000
  %5868 = fadd fast float %5846, %5843
  %5869 = fmul fast float %5868, 0x3F847AE140000000
  %5870 = fadd fast float %5847, %5844
  %5871 = fmul fast float %5870, 0x3F847AE140000000
  %5872 = call float @dx.op.dot3.f32(i32 55, float %5863, float %5864, float %5865, float %1572, float %1573, float %1574)  ; Dot3(ax,ay,az,bx,by,bz)
  %5873 = fcmp fast ogt float %5841, 0.000000e+00
  %5874 = select i1 %5873, float 1.000000e+00, float -1.000000e+00
  %5875 = fmul fast float %5874, 5.000000e-01
  %5876 = fmul fast float %5875, %5872
  %5877 = fmul fast float %5874, %5841
  %5878 = fadd fast float %5876, 4.921875e-01
  %5879 = fadd fast float %5877, -3.125000e-02
  %5880 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %56, float %5878, float 0x3FB25F3060000000, float %5879, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5881 = extractvalue %dx.types.ResRet.f32 %5880, 0
  %5882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %5883 = extractvalue %dx.types.CBufRet.f32 %5882, 0
  %5884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %5885 = extractvalue %dx.types.CBufRet.f32 %5884, 0
  %5886 = fmul fast float %5885, %5883
  %5887 = extractvalue %dx.types.CBufRet.f32 %5884, 1
  %5888 = fadd fast float %5886, %5887
  %5889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %5890 = extractvalue %dx.types.CBufRet.f32 %5889, 0
  %5891 = fmul fast float %5890, %4955
  %5892 = extractvalue %dx.types.CBufRet.f32 %5889, 1
  %5893 = fadd fast float %5891, %5892
  %5894 = call float @dx.op.unary.f32(i32 7, float %5893)  ; Saturate(value)
  %5895 = extractvalue %dx.types.CBufRet.f32 %5882, 3
  %5896 = extractvalue %dx.types.CBufRet.f32 %5884, 2
  %5897 = fmul fast float %5896, %5895
  %5898 = extractvalue %dx.types.CBufRet.f32 %5884, 3
  %5899 = fadd fast float %5897, %5898
  %5900 = fmul fast float %5881, 0x400921FB60000000
  %5901 = fmul fast float %5900, %5888
  %5902 = fmul fast float %5901, %5894
  %5903 = fmul fast float %5859, %5848
  %5904 = fmul fast float %5903, %5902
  %5905 = fmul fast float %5860, %5849
  %5906 = fmul fast float %5905, %5902
  %5907 = fmul fast float %5861, %5850
  %5908 = fmul fast float %5907, %5902
  %5909 = fmul fast float %5848, %2513
  %5910 = fmul fast float %5909, %5899
  %5911 = fmul fast float %5849, %2514
  %5912 = fmul fast float %5911, %5899
  %5913 = fmul fast float %5850, %2515
  %5914 = fmul fast float %5913, %5899
  br label %5915

; <label>:5915                                    ; preds = %5840, %5741
  %5916 = phi float [ %5867, %5840 ], [ 0.000000e+00, %5741 ]
  %5917 = phi float [ %5869, %5840 ], [ 0.000000e+00, %5741 ]
  %5918 = phi float [ %5871, %5840 ], [ 0.000000e+00, %5741 ]
  %5919 = phi float [ %5904, %5840 ], [ 0.000000e+00, %5741 ]
  %5920 = phi float [ %5906, %5840 ], [ 0.000000e+00, %5741 ]
  %5921 = phi float [ %5908, %5840 ], [ 0.000000e+00, %5741 ]
  %5922 = phi float [ %5910, %5840 ], [ 0.000000e+00, %5741 ]
  %5923 = phi float [ %5912, %5840 ], [ 0.000000e+00, %5741 ]
  %5924 = phi float [ %5914, %5840 ], [ 0.000000e+00, %5741 ]
  %5925 = call float @dx.op.binary.f32(i32 35, float %5916, float 0x3F10000000000000)  ; FMax(a,b)
  %5926 = call float @dx.op.binary.f32(i32 35, float %5917, float 0x3F10000000000000)  ; FMax(a,b)
  %5927 = call float @dx.op.binary.f32(i32 35, float %5918, float 0x3F10000000000000)  ; FMax(a,b)
  %5928 = fdiv fast float 1.000000e+00, %5925
  %5929 = fdiv fast float 1.000000e+00, %5926
  %5930 = fdiv fast float 1.000000e+00, %5927
  %5931 = fmul fast float %5916, 0xBFF7154760000000
  %5932 = fmul fast float %5917, 0xBFF7154760000000
  %5933 = fmul fast float %5918, 0xBFF7154760000000
  %5934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %5935 = extractvalue %dx.types.CBufRet.f32 %5934, 3
  %5936 = call float @dx.op.dot3.f32(i32 55, float %5928, float %5929, float %5930, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5937 = fmul fast float %5935, %5936
  %5938 = call float @dx.op.binary.f32(i32 35, float %5649, float %76)  ; FMax(a,b)
  %5939 = fsub fast float %5645, %5938
  %5940 = call float @dx.op.binary.f32(i32 35, float %5939, float 0.000000e+00)  ; FMax(a,b)
  %5941 = fsub fast float %5645, %76
  %5942 = call float @dx.op.binary.f32(i32 35, float %5941, float 0.000000e+00)  ; FMax(a,b)
  %5943 = call float @dx.op.binary.f32(i32 36, float %5942, float %5937)  ; FMin(a,b)
  %5944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %5945 = extractvalue %dx.types.CBufRet.f32 %5944, 0
  %5946 = fmul fast float %5945, %5943
  %5947 = fmul fast float %5946, %5931
  %5948 = fmul fast float %5946, %5932
  %5949 = fmul fast float %5946, %5933
  %5950 = call float @dx.op.unary.f32(i32 21, float %5947)  ; Exp(value)
  %5951 = call float @dx.op.unary.f32(i32 21, float %5948)  ; Exp(value)
  %5952 = call float @dx.op.unary.f32(i32 21, float %5949)  ; Exp(value)
  %5953 = fmul fast float %5950, %5919
  %5954 = fmul fast float %5951, %5920
  %5955 = fmul fast float %5952, %5921
  %5956 = extractvalue %dx.types.CBufRet.f32 %5944, 1
  %5957 = fmul fast float %5956, %5943
  %5958 = fmul fast float %5957, %5931
  %5959 = fmul fast float %5957, %5932
  %5960 = fmul fast float %5957, %5933
  %5961 = call float @dx.op.unary.f32(i32 21, float %5958)  ; Exp(value)
  %5962 = call float @dx.op.unary.f32(i32 21, float %5959)  ; Exp(value)
  %5963 = call float @dx.op.unary.f32(i32 21, float %5960)  ; Exp(value)
  %5964 = fmul fast float %5961, %5922
  %5965 = fmul fast float %5962, %5923
  %5966 = fmul fast float %5963, %5924
  %5967 = fadd fast float %5964, %5953
  %5968 = fadd fast float %5965, %5954
  %5969 = fadd fast float %5966, %5955
  %5970 = fmul fast float %5940, %5931
  %5971 = fmul fast float %5940, %5932
  %5972 = fmul fast float %5940, %5933
  %5973 = call float @dx.op.unary.f32(i32 21, float %5970)  ; Exp(value)
  %5974 = call float @dx.op.unary.f32(i32 21, float %5971)  ; Exp(value)
  %5975 = call float @dx.op.unary.f32(i32 21, float %5972)  ; Exp(value)
  %5976 = call float @dx.op.unary.f32(i32 7, float %5973)  ; Saturate(value)
  %5977 = call float @dx.op.unary.f32(i32 7, float %5974)  ; Saturate(value)
  %5978 = call float @dx.op.unary.f32(i32 7, float %5975)  ; Saturate(value)
  %5979 = fmul fast float %5976, %5967
  %5980 = fmul fast float %5977, %5968
  %5981 = fmul fast float %5978, %5969
  %5982 = fsub fast float %5967, %5979
  %5983 = fsub fast float %5968, %5980
  %5984 = fsub fast float %5969, %5981
  %5985 = fmul fast float %5928, %5745
  %5986 = fmul fast float %5985, %5982
  %5987 = fmul fast float %5929, %5746
  %5988 = fmul fast float %5987, %5983
  %5989 = fmul fast float %5930, %5747
  %5990 = fmul fast float %5989, %5984
  %5991 = fadd fast float %5986, %5742
  %5992 = fadd fast float %5988, %5743
  %5993 = fadd fast float %5990, %5744
  %5994 = fmul fast float %5976, %5745
  %5995 = fmul fast float %5977, %5746
  %5996 = fmul fast float %5978, %5747
  %5997 = fmul fast float %5942, %5931
  %5998 = fmul fast float %5942, %5932
  %5999 = fmul fast float %5942, %5933
  %6000 = call float @dx.op.unary.f32(i32 21, float %5997)  ; Exp(value)
  %6001 = call float @dx.op.unary.f32(i32 21, float %5998)  ; Exp(value)
  %6002 = call float @dx.op.unary.f32(i32 21, float %5999)  ; Exp(value)
  %6003 = call float @dx.op.unary.f32(i32 7, float %6000)  ; Saturate(value)
  %6004 = call float @dx.op.unary.f32(i32 7, float %6001)  ; Saturate(value)
  %6005 = call float @dx.op.unary.f32(i32 7, float %6002)  ; Saturate(value)
  %6006 = fmul fast float %6003, %5967
  %6007 = fmul fast float %6004, %5968
  %6008 = fmul fast float %6005, %5969
  %6009 = fsub fast float %5967, %6006
  %6010 = fsub fast float %5968, %6007
  %6011 = fsub fast float %5969, %6008
  %6012 = fmul fast float %6009, %5928
  %6013 = fmul fast float %6010, %5929
  %6014 = fmul fast float %6011, %5930
  %6015 = fsub fast float %76, %5648
  %6016 = fmul fast float %5650, %6015
  %6017 = call float @dx.op.unary.f32(i32 7, float %6016)  ; Saturate(value)
  %6018 = fmul fast float %6017, %6017
  %6019 = fmul fast float %6017, 2.000000e+00
  %6020 = fsub fast float 3.000000e+00, %6019
  %6021 = fmul fast float %6018, %6020
  %6022 = fsub fast float %6012, %5991
  %6023 = fsub fast float %6013, %5992
  %6024 = fsub fast float %6014, %5993
  %6025 = fmul fast float %6021, %6022
  %6026 = fmul fast float %6021, %6023
  %6027 = fmul fast float %6021, %6024
  %6028 = fadd fast float %6025, %5991
  %6029 = fadd fast float %6026, %5992
  %6030 = fadd fast float %6027, %5993
  %6031 = fsub fast float %6003, %5994
  %6032 = fsub fast float %6004, %5995
  %6033 = fsub fast float %6005, %5996
  %6034 = fmul fast float %6021, %6031
  %6035 = fmul fast float %6021, %6032
  %6036 = fmul fast float %6021, %6033
  %6037 = fadd fast float %6034, %5994
  %6038 = fadd fast float %6035, %5995
  %6039 = fadd fast float %6036, %5996
  br i1 %5748, label %6040, label %6108

; <label>:6040                                    ; preds = %5915
  %6041 = extractvalue %dx.types.CBufRet.f32 %5944, 3
  %6042 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6041)  ; Dot3(ax,ay,az,bx,by,bz)
  %6043 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1684, float %1685, float %1686)  ; Dot3(ax,ay,az,bx,by,bz)
  %6044 = fdiv fast float 1.000000e+00, %6043
  %6045 = fmul fast float %6044, %6042
  %6046 = fcmp ogt float %1574, -0.000000e+00
  %6047 = select i1 %6046, float %6041, float %6045
  %6048 = call float @dx.op.binary.f32(i32 36, float %6047, float %5937)  ; FMin(a,b)
  %6049 = fmul fast float %5945, %6048
  %6050 = fmul fast float %6049, %5931
  %6051 = fmul fast float %6049, %5932
  %6052 = fmul fast float %6049, %5933
  %6053 = call float @dx.op.unary.f32(i32 21, float %6050)  ; Exp(value)
  %6054 = call float @dx.op.unary.f32(i32 21, float %6051)  ; Exp(value)
  %6055 = call float @dx.op.unary.f32(i32 21, float %6052)  ; Exp(value)
  %6056 = fmul fast float %6053, %5919
  %6057 = fmul fast float %6054, %5920
  %6058 = fmul fast float %6055, %5921
  %6059 = fmul fast float %5956, %6048
  %6060 = fmul fast float %6059, %5931
  %6061 = fmul fast float %6059, %5932
  %6062 = fmul fast float %6059, %5933
  %6063 = call float @dx.op.unary.f32(i32 21, float %6060)  ; Exp(value)
  %6064 = call float @dx.op.unary.f32(i32 21, float %6061)  ; Exp(value)
  %6065 = call float @dx.op.unary.f32(i32 21, float %6062)  ; Exp(value)
  %6066 = fmul fast float %6063, %5922
  %6067 = fmul fast float %6064, %5923
  %6068 = fmul fast float %6065, %5924
  %6069 = fadd fast float %6066, %6056
  %6070 = fadd fast float %6067, %6057
  %6071 = fadd fast float %6068, %6058
  %6072 = fmul fast float %6047, %5931
  %6073 = fmul fast float %6047, %5932
  %6074 = fmul fast float %6047, %5933
  %6075 = call float @dx.op.unary.f32(i32 21, float %6072)  ; Exp(value)
  %6076 = call float @dx.op.unary.f32(i32 21, float %6073)  ; Exp(value)
  %6077 = call float @dx.op.unary.f32(i32 21, float %6074)  ; Exp(value)
  %6078 = call float @dx.op.unary.f32(i32 7, float %6075)  ; Saturate(value)
  %6079 = call float @dx.op.unary.f32(i32 7, float %6076)  ; Saturate(value)
  %6080 = call float @dx.op.unary.f32(i32 7, float %6077)  ; Saturate(value)
  %6081 = fmul fast float %6078, %6069
  %6082 = fmul fast float %6079, %6070
  %6083 = fmul fast float %6080, %6071
  %6084 = fsub fast float %6069, %6081
  %6085 = fsub fast float %6070, %6082
  %6086 = fsub fast float %6071, %6083
  %6087 = fmul fast float %6084, %5928
  %6088 = fmul fast float %6085, %5929
  %6089 = fmul fast float %6086, %5930
  %6090 = fsub fast float %6028, %6087
  %6091 = fsub fast float %6029, %6088
  %6092 = fsub fast float %6030, %6089
  %6093 = fmul fast float %6090, %5629
  %6094 = fmul fast float %6091, %5629
  %6095 = fmul fast float %6092, %5629
  %6096 = fadd fast float %6093, %6087
  %6097 = fadd fast float %6094, %6088
  %6098 = fadd fast float %6095, %6089
  %6099 = fsub fast float %6037, %6078
  %6100 = fsub fast float %6038, %6079
  %6101 = fsub fast float %6039, %6080
  %6102 = fmul fast float %6099, %5629
  %6103 = fmul fast float %6100, %5629
  %6104 = fmul fast float %6101, %5629
  %6105 = fadd fast float %6102, %6078
  %6106 = fadd fast float %6103, %6079
  %6107 = fadd fast float %6104, %6080
  br label %6108

; <label>:6108                                    ; preds = %6040, %5915
  %6109 = phi float [ %6096, %6040 ], [ %6028, %5915 ]
  %6110 = phi float [ %6097, %6040 ], [ %6029, %5915 ]
  %6111 = phi float [ %6098, %6040 ], [ %6030, %5915 ]
  %6112 = phi float [ %6105, %6040 ], [ %6037, %5915 ]
  %6113 = phi float [ %6106, %6040 ], [ %6038, %5915 ]
  %6114 = phi float [ %6107, %6040 ], [ %6039, %5915 ]
  %6115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6116 = extractvalue %dx.types.CBufRet.i32 %6115, 3
  %6117 = and i32 %6116, 3
  %6118 = icmp ne i32 %6117, 0
  %6119 = and i32 %6116, 4
  %6120 = icmp ne i32 %6119, 0
  %6121 = and i1 %6118, %6120
  br i1 %6121, label %6122, label %6129

; <label>:6122                                    ; preds = %6108
  %6123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %56, float %5633, float %5634, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6124 = extractvalue %dx.types.ResRet.f32 %6123, 0
  %6125 = fsub fast float 1.000000e+00, %6124
  %6126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %6127 = extractvalue %dx.types.CBufRet.f32 %6126, 0
  %6128 = fcmp fast olt float %6125, %6127
  br label %6132

; <label>:6129                                    ; preds = %6108
  %6130 = icmp eq i32 %6119, 0
  %6131 = and i1 %6118, %6130
  br label %6132

; <label>:6132                                    ; preds = %6129, %6122
  %6133 = phi i1 [ %6128, %6122 ], [ %6131, %6129 ]
  %6134 = xor i1 %1682, %6133
  %6135 = select i1 %6134, float 0.000000e+00, float %5629
  %6136 = fcmp fast ogt float %6135, 0.000000e+00
  %6137 = select i1 %6136, float %5633, float 0.000000e+00
  %6138 = select i1 %6136, float %5634, float 0.000000e+00
  %6139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %56, float %6137, float %6138, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6140 = extractvalue %dx.types.ResRet.f32 %6139, 0
  %6141 = extractvalue %dx.types.ResRet.f32 %6139, 1
  %6142 = extractvalue %dx.types.ResRet.f32 %6139, 2
  %6143 = fmul fast float %6141, %6135
  %6144 = fmul fast float %6142, %6135
  %6145 = select i1 %1682, float 0.000000e+00, float %6143
  %6146 = select i1 %1682, float 0.000000e+00, float %6144
  %6147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6148 = extractvalue %dx.types.CBufRet.f32 %6147, 1
  %6149 = fmul fast float %6135, %6112
  %6150 = fmul fast float %6149, %6140
  %6151 = fmul fast float %6150, %6148
  %6152 = fmul fast float %6148, %6113
  %6153 = fmul fast float %6152, %6145
  %6154 = fmul fast float %6148, %6114
  %6155 = fmul fast float %6154, %6146
  %6156 = fadd fast float %6151, %6109
  %6157 = fadd fast float %6153, %6110
  %6158 = fadd fast float %6155, %6111
  br label %6198

; <label>:6159                                    ; preds = %5620
  %6160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6161 = extractvalue %dx.types.CBufRet.i32 %6160, 3
  %6162 = and i32 %6161, 3
  %6163 = icmp ne i32 %6162, 0
  %6164 = and i32 %6161, 4
  %6165 = icmp ne i32 %6164, 0
  %6166 = and i1 %6163, %6165
  br i1 %6166, label %6167, label %6174

; <label>:6167                                    ; preds = %6159
  %6168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %56, float %5633, float %5634, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6169 = extractvalue %dx.types.ResRet.f32 %6168, 0
  %6170 = fsub fast float 1.000000e+00, %6169
  %6171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %6172 = extractvalue %dx.types.CBufRet.f32 %6171, 0
  %6173 = fcmp fast olt float %6170, %6172
  br label %6177

; <label>:6174                                    ; preds = %6159
  %6175 = icmp eq i32 %6164, 0
  %6176 = and i1 %6163, %6175
  br label %6177

; <label>:6177                                    ; preds = %6174, %6167
  %6178 = phi i1 [ %6173, %6167 ], [ %6176, %6174 ]
  %6179 = xor i1 %1682, %6178
  %6180 = select i1 %6179, float 0.000000e+00, float %5629
  %6181 = fcmp fast ogt float %6180, 0.000000e+00
  %6182 = select i1 %6181, float %5633, float 0.000000e+00
  %6183 = select i1 %6181, float %5634, float 0.000000e+00
  %6184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %56, float %6182, float %6183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6185 = extractvalue %dx.types.ResRet.f32 %6184, 0
  %6186 = extractvalue %dx.types.ResRet.f32 %6184, 1
  %6187 = extractvalue %dx.types.ResRet.f32 %6184, 2
  %6188 = fmul fast float %6185, %6180
  %6189 = fmul fast float %6186, %6180
  %6190 = fmul fast float %6187, %6180
  %6191 = select i1 %1682, float 0.000000e+00, float %6189
  %6192 = select i1 %1682, float 0.000000e+00, float %6190
  %6193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6194 = extractvalue %dx.types.CBufRet.f32 %6193, 1
  %6195 = fmul fast float %6188, %6194
  %6196 = fmul fast float %6191, %6194
  %6197 = fmul fast float %6192, %6194
  br label %6198

; <label>:6198                                    ; preds = %6177, %6132
  %6199 = phi float [ %6195, %6177 ], [ %6156, %6132 ]
  %6200 = phi float [ %6196, %6177 ], [ %6157, %6132 ]
  %6201 = phi float [ %6197, %6177 ], [ %6158, %6132 ]
  %6202 = fmul fast float %3254, %6199
  %6203 = fmul fast float %3254, %6200
  %6204 = fmul fast float %3254, %6201
  %6205 = fsub fast float 1.000000e+00, %1689
  %6206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6207 = extractvalue %dx.types.CBufRet.f32 %6206, 0
  %6208 = fmul fast float %6207, %6205
  %6209 = fmul fast float %1546, 2.000000e+00
  %6210 = fmul fast float %6209, %1583
  %6211 = fsub fast float %1574, %6210
  %6212 = call float @dx.op.unary.f32(i32 7, float %6211)  ; Saturate(value)
  %6213 = fsub fast float 1.000000e+00, %6212
  %6214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6215 = extractvalue %dx.types.CBufRet.f32 %6214, 3
  %6216 = fmul fast float %6215, %6213
  %6217 = fsub fast float 1.000000e+00, %1656
  %6218 = call float @dx.op.unary.f32(i32 7, float %6217)  ; Saturate(value)
  %6219 = fadd fast float %5626, %1658
  %6220 = fmul fast float %6219, %1656
  %6221 = fmul fast float %6216, %6218
  %6222 = fmul fast float %5624, %1556
  %6223 = fmul fast float %5625, %1557
  %6224 = fmul fast float %5626, %1558
  %6225 = fadd fast float %6222, %5621
  %6226 = fadd fast float %6225, %6202
  %6227 = fadd fast float %6223, %5622
  %6228 = fadd fast float %6227, %6203
  %6229 = fadd fast float %6224, %5623
  %6230 = fadd fast float %6229, %6204
  br i1 %104, label %6231, label %7033

; <label>:6231                                    ; preds = %6198
  %6232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6233 = extractvalue %dx.types.CBufRet.f32 %6232, 0
  %6234 = extractvalue %dx.types.CBufRet.f32 %6232, 1
  %6235 = extractvalue %dx.types.CBufRet.f32 %6232, 2
  %6236 = extractvalue %dx.types.CBufRet.f32 %6232, 3
  %6237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6238 = extractvalue %dx.types.CBufRet.f32 %6237, 0
  %6239 = extractvalue %dx.types.CBufRet.f32 %6237, 1
  %6240 = extractvalue %dx.types.CBufRet.f32 %6237, 2
  %6241 = extractvalue %dx.types.CBufRet.f32 %6237, 3
  %6242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6243 = extractvalue %dx.types.CBufRet.f32 %6242, 0
  %6244 = extractvalue %dx.types.CBufRet.f32 %6242, 1
  %6245 = extractvalue %dx.types.CBufRet.f32 %6242, 2
  %6246 = extractvalue %dx.types.CBufRet.f32 %6242, 3
  %6247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6248 = extractvalue %dx.types.CBufRet.f32 %6247, 0
  %6249 = extractvalue %dx.types.CBufRet.f32 %6247, 1
  %6250 = extractvalue %dx.types.CBufRet.f32 %6247, 2
  %6251 = extractvalue %dx.types.CBufRet.f32 %6247, 3
  %6252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6253 = extractvalue %dx.types.CBufRet.f32 %6252, 3
  %6254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6255 = extractvalue %dx.types.CBufRet.f32 %6254, 3
  %6256 = extractvalue %dx.types.CBufRet.f32 %6254, 0
  %6257 = extractvalue %dx.types.CBufRet.f32 %6254, 1
  %6258 = extractvalue %dx.types.CBufRet.f32 %6254, 2
  %6259 = fcmp fast olt float %6258, -5.000000e-01
  %6260 = fmul fast float %1571, %1570
  %6261 = fadd fast float %6260, %6236
  %6262 = call float @dx.op.dot3.f32(i32 55, float %1572, float %1573, float %1574, float %6233, float %6234, float %6235)  ; Dot3(ax,ay,az,bx,by,bz)
  %6263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6264 = extractvalue %dx.types.CBufRet.i32 %6263, 1
  %6265 = and i32 %6264, 1
  %6266 = icmp ne i32 %6265, 0
  %6267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6268 = extractvalue %dx.types.CBufRet.f32 %6267, 2
  %6269 = fcmp fast ogt float %6268, 0.000000e+00
  %6270 = and i1 %6266, %6269
  br i1 %6270, label %6271, label %6677, !dx.controlflow.hints !151

; <label>:6271                                    ; preds = %6231
  %6272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6273 = extractvalue %dx.types.CBufRet.f32 %6272, 3
  %6274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6275 = extractvalue %dx.types.CBufRet.f32 %6274, 2
  %6276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6277 = extractvalue %dx.types.CBufRet.f32 %6276, 2
  %6278 = fsub fast float %6275, %6277
  %6279 = and i32 %6264, 2
  %6280 = extractvalue %dx.types.CBufRet.i32 %6263, 0
  %6281 = call i32 @dx.op.binary.i32(i32 40, i32 %6280, i32 3)  ; UMin(a,b)
  %6282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6283 = extractvalue %dx.types.CBufRet.f32 %6282, 0
  %6284 = extractvalue %dx.types.CBufRet.f32 %6282, 1
  %6285 = extractvalue %dx.types.CBufRet.f32 %6276, 0
  %6286 = extractvalue %dx.types.CBufRet.f32 %6276, 1
  %6287 = fsub fast float %6283, %6285
  %6288 = fsub fast float %6284, %6286
  %6289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6290 = extractvalue %dx.types.CBufRet.f32 %6289, 0
  %6291 = fcmp fast ogt float %6290, 0.000000e+00
  %6292 = fsub fast float -0.000000e+00, %6287
  %6293 = fsub fast float -0.000000e+00, %6288
  %6294 = call float @dx.op.dot2.f32(i32 54, float %1572, float %1573, float %1572, float %1573)  ; Dot2(ax,ay,bx,by)
  %6295 = call float @dx.op.dot2.f32(i32 54, float %1572, float %1573, float %6292, float %6293)  ; Dot2(ax,ay,bx,by)
  %6296 = fmul fast float %6295, 2.000000e+00
  %6297 = call float @dx.op.dot2.f32(i32 54, float %6292, float %6293, float %6292, float %6293)  ; Dot2(ax,ay,bx,by)
  %6298 = fmul fast float %6290, %6290
  %6299 = fsub fast float %6297, %6298
  %6300 = fmul fast float %6296, %6296
  %6301 = fmul fast float %6294, 4.000000e+00
  %6302 = fmul fast float %6301, %6299
  %6303 = fsub fast float %6300, %6302
  %6304 = fcmp fast ogt float %6303, 0.000000e+00
  br i1 %6304, label %6305, label %6320

; <label>:6305                                    ; preds = %6271
  %6306 = fcmp fast ogt float %6296, 0.000000e+00
  %6307 = call float @dx.op.unary.f32(i32 24, float %6303)  ; Sqrt(value)
  %6308 = fsub fast float -0.000000e+00, %6307
  %6309 = select i1 %6306, float %6307, float %6308
  %6310 = fadd fast float %6309, %6296
  %6311 = fmul float %6310, -5.000000e-01
  %6312 = fdiv fast float %6311, %6294
  %6313 = call float @dx.op.binary.f32(i32 35, float %6312, float 0.000000e+00)  ; FMax(a,b)
  %6314 = call float @dx.op.binary.f32(i32 36, float %6260, float %6313)  ; FMin(a,b)
  %6315 = fdiv fast float %6299, %6311
  %6316 = call float @dx.op.binary.f32(i32 35, float %6315, float 0.000000e+00)  ; FMax(a,b)
  %6317 = call float @dx.op.binary.f32(i32 36, float %6260, float %6316)  ; FMin(a,b)
  %6318 = call float @dx.op.binary.f32(i32 36, float %6314, float %6317)  ; FMin(a,b)
  %6319 = call float @dx.op.binary.f32(i32 35, float %6314, float %6317)  ; FMax(a,b)
  br label %6320

; <label>:6320                                    ; preds = %6305, %6271
  %6321 = phi float [ %6319, %6305 ], [ -1.000000e+00, %6271 ]
  %6322 = phi float [ %6318, %6305 ], [ -1.000000e+00, %6271 ]
  %6323 = phi i1 [ true, %6305 ], [ false, %6271 ]
  %6324 = and i1 %6291, %6323
  br i1 %6324, label %6325, label %6327

; <label>:6325                                    ; preds = %6320
  %6326 = fcmp fast oeq float %6322, %6321
  br i1 %6326, label %6630, label %6328

; <label>:6327                                    ; preds = %6320
  br i1 %6291, label %6630, label %6328

; <label>:6328                                    ; preds = %6327, %6325
  %6329 = phi float [ %6260, %6327 ], [ %6321, %6325 ]
  %6330 = phi float [ 0.000000e+00, %6327 ], [ %6322, %6325 ]
  %6331 = icmp ne i32 %6279, 0
  %6332 = fmul fast float %6329, %1574
  %6333 = fadd fast float %6332, %6273
  %6334 = fmul fast float %6333, %6329
  %6335 = select i1 %6331, float 0.000000e+00, float %6334
  %6336 = fcmp fast oeq float %1574, 0.000000e+00
  %6337 = fdiv fast float %6278, %1574
  %6338 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6337)  ; FMax(a,b)
  %6339 = select i1 %6336, float %6329, float %6338
  %6340 = call float @dx.op.binary.f32(i32 36, float %6329, float %6339)  ; FMin(a,b)
  %6341 = fcmp fast ogt float %1574, 0.000000e+00
  %6342 = fcmp fast olt float %6278, 0.000000e+00
  br i1 %6341, label %6343, label %6400

; <label>:6343                                    ; preds = %6328
  %6344 = icmp eq i32 %6279, 0
  br i1 %6342, label %6345, label %6389

; <label>:6345                                    ; preds = %6343
  %6346 = select i1 %6344, float %6329, float 0.000000e+00
  %6347 = fsub fast float -0.000000e+00, %6346
  %6348 = call float @dx.op.unary.f32(i32 6, float %6347)  ; FAbs(value)
  %6349 = fmul fast float %6346, %1574
  %6350 = fadd fast float %6349, %6273
  %6351 = fmul fast float %6348, %6350
  %6352 = fsub fast float %6335, %6351
  %6353 = fsub fast float %6329, %6348
  %6354 = select i1 %6344, float %6353, float 0.000000e+00
  %6355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6356 = extractvalue %dx.types.CBufRet.f32 %6355, 0
  %6357 = extractvalue %dx.types.CBufRet.f32 %6355, 1
  %6358 = extractvalue %dx.types.CBufRet.f32 %6355, 2
  %6359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6360 = extractvalue %dx.types.CBufRet.f32 %6359, 0
  %6361 = extractvalue %dx.types.CBufRet.f32 %6359, 1
  %6362 = extractvalue %dx.types.CBufRet.f32 %6359, 2
  %6363 = extractvalue %dx.types.CBufRet.f32 %6359, 3
  %6364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6365 = extractvalue %dx.types.CBufRet.f32 %6364, 3
  %6366 = call float @dx.op.binary.f32(i32 36, float %6352, float %6365)  ; FMin(a,b)
  %6367 = fmul fast float %6363, %6354
  %6368 = call float @dx.op.unary.f32(i32 7, float %6367)  ; Saturate(value)
  %6369 = fsub fast float %6360, %6356
  %6370 = fsub fast float %6361, %6357
  %6371 = fsub fast float %6362, %6358
  %6372 = fmul fast float %6368, %6369
  %6373 = fmul fast float %6368, %6370
  %6374 = fmul fast float %6368, %6371
  %6375 = fadd fast float %6372, %6356
  %6376 = fadd fast float %6373, %6357
  %6377 = fadd fast float %6374, %6358
  %6378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6379 = extractvalue %dx.types.CBufRet.f32 %6378, 0
  %6380 = extractvalue %dx.types.CBufRet.f32 %6378, 1
  %6381 = fadd fast float %6380, %6379
  %6382 = call float @dx.op.unary.f32(i32 7, float %6381)  ; Saturate(value)
  %6383 = extractvalue %dx.types.CBufRet.f32 %6378, 2
  %6384 = extractvalue %dx.types.CBufRet.f32 %6378, 3
  %6385 = fadd fast float %6384, %6383
  %6386 = call float @dx.op.unary.f32(i32 7, float %6385)  ; Saturate(value)
  %6387 = fmul fast float %6382, %6366
  %6388 = fmul fast float %6387, %6386
  br label %6630

; <label>:6389                                    ; preds = %6343
  br i1 %6344, label %6390, label %6411

; <label>:6390                                    ; preds = %6389
  %6391 = call float @dx.op.binary.f32(i32 36, float %6340, float %6330)  ; FMin(a,b)
  %6392 = fsub fast float %6340, %6391
  %6393 = fsub fast float %6392, %6329
  %6394 = call float @dx.op.unary.f32(i32 6, float %6393)  ; FAbs(value)
  %6395 = fadd fast float %6392, %6329
  %6396 = fmul fast float %6395, %1574
  %6397 = fadd fast float %6396, %6273
  %6398 = fmul fast float %6397, %6394
  %6399 = fsub fast float %6335, %6398
  br label %6411

; <label>:6400                                    ; preds = %6328
  br i1 %6342, label %6401, label %6411

; <label>:6401                                    ; preds = %6400
  %6402 = call float @dx.op.binary.f32(i32 35, float %6330, float %6340)  ; FMax(a,b)
  %6403 = icmp eq i32 %6279, 0
  %6404 = select i1 %6403, float %6340, float 0.000000e+00
  %6405 = fsub fast float -0.000000e+00, %6404
  %6406 = call float @dx.op.unary.f32(i32 6, float %6405)  ; FAbs(value)
  %6407 = fmul fast float %6404, %1574
  %6408 = fadd fast float %6407, %6273
  %6409 = fmul fast float %6406, %6408
  %6410 = fsub fast float %6335, %6409
  br label %6411

; <label>:6411                                    ; preds = %6401, %6400, %6390, %6389
  %6412 = phi float [ %6330, %6389 ], [ %6330, %6390 ], [ %6402, %6401 ], [ %6330, %6400 ]
  %6413 = phi float [ 0.000000e+00, %6389 ], [ %6394, %6390 ], [ %6406, %6401 ], [ 0.000000e+00, %6400 ]
  %6414 = phi float [ %6335, %6389 ], [ %6399, %6390 ], [ %6410, %6401 ], [ %6335, %6400 ]
  %6415 = phi float [ %6340, %6389 ], [ %6340, %6390 ], [ %6329, %6401 ], [ %6329, %6400 ]
  %6416 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 0
  store float -1.000000e+00, float* %6416, align 4, !tbaa !97, !noalias !152
  %6417 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 1
  store float -1.000000e+00, float* %6417, align 4, !tbaa !97, !noalias !152
  %6418 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 2
  store float -1.000000e+00, float* %6418, align 4, !tbaa !97, !noalias !152
  %6419 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 0
  store float -1.000000e+00, float* %6419, align 4, !tbaa !97, !noalias !152
  %6420 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 1
  store float -1.000000e+00, float* %6420, align 4, !tbaa !97, !noalias !152
  %6421 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 2
  store float -1.000000e+00, float* %6421, align 4, !tbaa !97, !noalias !152
  %6422 = icmp sgt i32 %6281, 0
  br i1 %6422, label %6423, label %6484

; <label>:6423                                    ; preds = %6411
  br label %6424

; <label>:6424                                    ; preds = %6473, %6423
  %6425 = phi i32 [ %6474, %6473 ], [ 0, %6423 ]
  %6426 = phi i32 [ %6475, %6473 ], [ 0, %6423 ]
  %6427 = add nuw i32 %6426, 171
  %6428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %6427)  ; CBufferLoadLegacy(handle,regIndex)
  %6429 = extractvalue %dx.types.CBufRet.f32 %6428, 0
  %6430 = extractvalue %dx.types.CBufRet.f32 %6428, 1
  %6431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6432 = extractvalue %dx.types.CBufRet.f32 %6431, 0
  %6433 = extractvalue %dx.types.CBufRet.f32 %6431, 1
  %6434 = fsub fast float %6429, %6432
  %6435 = fsub fast float %6430, %6433
  %6436 = extractvalue %dx.types.CBufRet.f32 %6428, 2
  %6437 = fsub fast float -0.000000e+00, %6434
  %6438 = fsub fast float -0.000000e+00, %6435
  %6439 = call float @dx.op.dot2.f32(i32 54, float %1572, float %1573, float %6437, float %6438)  ; Dot2(ax,ay,bx,by)
  %6440 = fmul fast float %6439, 2.000000e+00
  %6441 = call float @dx.op.dot2.f32(i32 54, float %6437, float %6438, float %6437, float %6438)  ; Dot2(ax,ay,bx,by)
  %6442 = fmul fast float %6436, %6436
  %6443 = fsub fast float %6441, %6442
  %6444 = fmul fast float %6440, %6440
  %6445 = fmul fast float %6301, %6443
  %6446 = fsub fast float %6444, %6445
  %6447 = fcmp fast ogt float %6446, 0.000000e+00
  br i1 %6447, label %6448, label %6463

; <label>:6448                                    ; preds = %6424
  %6449 = fcmp fast ogt float %6440, 0.000000e+00
  %6450 = call float @dx.op.unary.f32(i32 24, float %6446)  ; Sqrt(value)
  %6451 = fsub fast float -0.000000e+00, %6450
  %6452 = select i1 %6449, float %6450, float %6451
  %6453 = fadd fast float %6452, %6440
  %6454 = fmul float %6453, -5.000000e-01
  %6455 = fdiv fast float %6454, %6294
  %6456 = call float @dx.op.binary.f32(i32 35, float %6455, float 0.000000e+00)  ; FMax(a,b)
  %6457 = call float @dx.op.binary.f32(i32 36, float %6329, float %6456)  ; FMin(a,b)
  %6458 = fdiv fast float %6443, %6454
  %6459 = call float @dx.op.binary.f32(i32 35, float %6458, float 0.000000e+00)  ; FMax(a,b)
  %6460 = call float @dx.op.binary.f32(i32 36, float %6329, float %6459)  ; FMin(a,b)
  %6461 = call float @dx.op.binary.f32(i32 36, float %6457, float %6460)  ; FMin(a,b)
  %6462 = call float @dx.op.binary.f32(i32 35, float %6457, float %6460)  ; FMax(a,b)
  br label %6463

; <label>:6463                                    ; preds = %6448, %6424
  %6464 = phi float [ %6462, %6448 ], [ -1.000000e+00, %6424 ]
  %6465 = phi float [ %6461, %6448 ], [ -1.000000e+00, %6424 ]
  %6466 = phi i1 [ true, %6448 ], [ false, %6424 ]
  br i1 %6466, label %6467, label %6473

; <label>:6467                                    ; preds = %6463
  %6468 = call float @dx.op.binary.f32(i32 35, float %6412, float %6465)  ; FMax(a,b)
  %6469 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %6426
  store float %6468, float* %6469, align 4, !tbaa !97, !noalias !152
  %6470 = call float @dx.op.binary.f32(i32 35, float %6412, float %6464)  ; FMax(a,b)
  %6471 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 %6426
  store float %6470, float* %6471, align 4, !tbaa !97, !noalias !152
  %6472 = add nsw i32 %6425, 1
  br label %6473

; <label>:6473                                    ; preds = %6467, %6463
  %6474 = phi i32 [ %6472, %6467 ], [ %6425, %6463 ]
  %6475 = add nuw nsw i32 %6426, 1
  %6476 = icmp eq i32 %6475, %6281
  br i1 %6476, label %6477, label %6424

; <label>:6477                                    ; preds = %6473
  %6478 = load float, float* %6418, align 4, !tbaa !97, !alias.scope !168, !noalias !171
  %6479 = load float, float* %6417, align 4, !tbaa !97, !alias.scope !174, !noalias !175
  %6480 = load float, float* %6416, align 4, !tbaa !97, !alias.scope !176, !noalias !177
  %6481 = load float, float* %6421, align 4, !tbaa !97, !alias.scope !178, !noalias !181
  %6482 = load float, float* %6420, align 4, !tbaa !97, !alias.scope !184, !noalias !185
  %6483 = load float, float* %6419, align 4, !tbaa !97, !alias.scope !186, !noalias !187
  br label %6484

; <label>:6484                                    ; preds = %6477, %6411
  %6485 = phi float [ -1.000000e+00, %6411 ], [ %6483, %6477 ]
  %6486 = phi float [ -1.000000e+00, %6411 ], [ %6482, %6477 ]
  %6487 = phi float [ -1.000000e+00, %6411 ], [ %6481, %6477 ]
  %6488 = phi float [ -1.000000e+00, %6411 ], [ %6480, %6477 ]
  %6489 = phi float [ -1.000000e+00, %6411 ], [ %6479, %6477 ]
  %6490 = phi float [ -1.000000e+00, %6411 ], [ %6478, %6477 ]
  %6491 = phi i32 [ 0, %6411 ], [ %6474, %6477 ]
  %6492 = call float @dx.op.binary.f32(i32 36, float %6489, float %6490)  ; FMin(a,b)
  %6493 = call float @dx.op.binary.f32(i32 36, float %6488, float %6492)  ; FMin(a,b)
  %6494 = call float @dx.op.binary.f32(i32 35, float %6488, float %6489)  ; FMax(a,b)
  %6495 = call float @dx.op.binary.f32(i32 36, float %6494, float %6490)  ; FMin(a,b)
  %6496 = call float @dx.op.binary.f32(i32 36, float %6488, float %6489)  ; FMin(a,b)
  %6497 = call float @dx.op.binary.f32(i32 35, float %6496, float %6495)  ; FMax(a,b)
  %6498 = call float @dx.op.binary.f32(i32 35, float %6489, float %6490)  ; FMax(a,b)
  %6499 = call float @dx.op.binary.f32(i32 35, float %6488, float %6498)  ; FMax(a,b)
  store float %6493, float* %6416, align 4, !tbaa !97, !alias.scope !176, !noalias !177
  store float %6497, float* %6417, align 4, !tbaa !97, !alias.scope !174, !noalias !175
  store float %6499, float* %6418, align 4, !tbaa !97, !alias.scope !168, !noalias !171
  %6500 = call float @dx.op.binary.f32(i32 36, float %6486, float %6487)  ; FMin(a,b)
  %6501 = call float @dx.op.binary.f32(i32 36, float %6485, float %6500)  ; FMin(a,b)
  %6502 = call float @dx.op.binary.f32(i32 35, float %6485, float %6486)  ; FMax(a,b)
  %6503 = call float @dx.op.binary.f32(i32 36, float %6502, float %6487)  ; FMin(a,b)
  %6504 = call float @dx.op.binary.f32(i32 36, float %6485, float %6486)  ; FMin(a,b)
  %6505 = call float @dx.op.binary.f32(i32 35, float %6504, float %6503)  ; FMax(a,b)
  %6506 = call float @dx.op.binary.f32(i32 35, float %6486, float %6487)  ; FMax(a,b)
  %6507 = call float @dx.op.binary.f32(i32 35, float %6485, float %6506)  ; FMax(a,b)
  store float %6501, float* %6419, align 4, !tbaa !97, !alias.scope !186, !noalias !187
  store float %6505, float* %6420, align 4, !tbaa !97, !alias.scope !184, !noalias !185
  store float %6507, float* %6421, align 4, !tbaa !97, !alias.scope !178, !noalias !181
  %6508 = sub nsw i32 3, %6491
  %6509 = icmp sgt i32 %6508, 2
  br i1 %6509, label %6510, label %6548

; <label>:6510                                    ; preds = %6484
  %6511 = icmp eq i32 %6279, 0
  %6512 = fsub fast float %6329, %6413
  %6513 = select i1 %6511, float %6512, float %6413
  %6514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6515 = extractvalue %dx.types.CBufRet.f32 %6514, 0
  %6516 = extractvalue %dx.types.CBufRet.f32 %6514, 1
  %6517 = extractvalue %dx.types.CBufRet.f32 %6514, 2
  %6518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6519 = extractvalue %dx.types.CBufRet.f32 %6518, 0
  %6520 = extractvalue %dx.types.CBufRet.f32 %6518, 1
  %6521 = extractvalue %dx.types.CBufRet.f32 %6518, 2
  %6522 = extractvalue %dx.types.CBufRet.f32 %6518, 3
  %6523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6524 = extractvalue %dx.types.CBufRet.f32 %6523, 3
  %6525 = call float @dx.op.binary.f32(i32 36, float %6414, float %6524)  ; FMin(a,b)
  %6526 = fmul fast float %6522, %6513
  %6527 = call float @dx.op.unary.f32(i32 7, float %6526)  ; Saturate(value)
  %6528 = fsub fast float %6519, %6515
  %6529 = fsub fast float %6520, %6516
  %6530 = fsub fast float %6521, %6517
  %6531 = fmul fast float %6527, %6528
  %6532 = fmul fast float %6527, %6529
  %6533 = fmul fast float %6527, %6530
  %6534 = fadd fast float %6531, %6515
  %6535 = fadd fast float %6532, %6516
  %6536 = fadd fast float %6533, %6517
  %6537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6538 = extractvalue %dx.types.CBufRet.f32 %6537, 0
  %6539 = extractvalue %dx.types.CBufRet.f32 %6537, 1
  %6540 = fadd fast float %6539, %6538
  %6541 = call float @dx.op.unary.f32(i32 7, float %6540)  ; Saturate(value)
  %6542 = extractvalue %dx.types.CBufRet.f32 %6537, 2
  %6543 = extractvalue %dx.types.CBufRet.f32 %6537, 3
  %6544 = fadd fast float %6543, %6542
  %6545 = call float @dx.op.unary.f32(i32 7, float %6544)  ; Saturate(value)
  %6546 = fmul fast float %6541, %6525
  %6547 = fmul fast float %6546, %6545
  br label %6630

; <label>:6548                                    ; preds = %6484
  %6549 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %6508
  %6550 = load float, float* %6549, align 4, !tbaa !97, !noalias !152
  %6551 = fcmp fast olt float %6550, %6415
  %6552 = icmp sgt i32 %6491, 0
  %6553 = and i1 %6552, %6551
  br i1 %6553, label %6554, label %6591

; <label>:6554                                    ; preds = %6548
  br label %6555

; <label>:6555                                    ; preds = %6584, %6554
  %6556 = phi float [ %6585, %6584 ], [ %6413, %6554 ]
  %6557 = phi float [ %6586, %6584 ], [ %6414, %6554 ]
  %6558 = phi float [ %6566, %6584 ], [ %6550, %6554 ]
  %6559 = phi i32 [ %6563, %6584 ], [ %6508, %6554 ]
  %6560 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 %6559
  %6561 = load float, float* %6560, align 4, !tbaa !97, !noalias !152
  %6562 = icmp slt i32 %6559, 2
  %6563 = add nsw i32 %6559, 1
  %6564 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %6563
  %6565 = load float, float* %6564, align 4, !tbaa !97, !noalias !152
  %6566 = select i1 %6562, float %6565, float %6329
  %6567 = call float @dx.op.binary.f32(i32 36, float %6566, float %6561)  ; FMin(a,b)
  %6568 = call float @dx.op.binary.f32(i32 36, float %6415, float %6567)  ; FMin(a,b)
  %6569 = icmp eq i32 %6279, 0
  %6570 = fadd fast float %6568, %6558
  %6571 = fmul fast float %6570, %1574
  %6572 = fadd fast float %6571, %6273
  br i1 %6569, label %6578, label %6573

; <label>:6573                                    ; preds = %6555
  %6574 = fsub fast float %6568, %6558
  %6575 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6574)  ; FMax(a,b)
  %6576 = fmul fast float %6575, %6572
  %6577 = fadd fast float %6576, %6557
  br label %6584

; <label>:6578                                    ; preds = %6555
  %6579 = fsub fast float %6558, %6568
  %6580 = call float @dx.op.unary.f32(i32 6, float %6579)  ; FAbs(value)
  %6581 = fadd fast float %6580, %6556
  %6582 = fmul fast float %6580, %6572
  %6583 = fsub fast float %6557, %6582
  br label %6584

; <label>:6584                                    ; preds = %6578, %6573
  %6585 = phi float [ %6575, %6573 ], [ %6581, %6578 ]
  %6586 = phi float [ %6577, %6573 ], [ %6583, %6578 ]
  %6587 = fcmp fast olt float %6566, %6415
  %6588 = icmp slt i32 %6563, 3
  %6589 = and i1 %6588, %6587
  br i1 %6589, label %6555, label %6590

; <label>:6590                                    ; preds = %6584
  br label %6591

; <label>:6591                                    ; preds = %6590, %6548
  %6592 = phi float [ %6413, %6548 ], [ %6585, %6590 ]
  %6593 = phi float [ %6414, %6548 ], [ %6586, %6590 ]
  %6594 = fsub fast float %6329, %6592
  %6595 = select i1 %6331, float %6592, float %6594
  %6596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6597 = extractvalue %dx.types.CBufRet.f32 %6596, 0
  %6598 = extractvalue %dx.types.CBufRet.f32 %6596, 1
  %6599 = extractvalue %dx.types.CBufRet.f32 %6596, 2
  %6600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6601 = extractvalue %dx.types.CBufRet.f32 %6600, 0
  %6602 = extractvalue %dx.types.CBufRet.f32 %6600, 1
  %6603 = extractvalue %dx.types.CBufRet.f32 %6600, 2
  %6604 = extractvalue %dx.types.CBufRet.f32 %6600, 3
  %6605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6606 = extractvalue %dx.types.CBufRet.f32 %6605, 3
  %6607 = call float @dx.op.binary.f32(i32 36, float %6593, float %6606)  ; FMin(a,b)
  %6608 = fmul fast float %6604, %6595
  %6609 = call float @dx.op.unary.f32(i32 7, float %6608)  ; Saturate(value)
  %6610 = fsub fast float %6601, %6597
  %6611 = fsub fast float %6602, %6598
  %6612 = fsub fast float %6603, %6599
  %6613 = fmul fast float %6609, %6610
  %6614 = fmul fast float %6609, %6611
  %6615 = fmul fast float %6609, %6612
  %6616 = fadd fast float %6613, %6597
  %6617 = fadd fast float %6614, %6598
  %6618 = fadd fast float %6615, %6599
  %6619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6620 = extractvalue %dx.types.CBufRet.f32 %6619, 0
  %6621 = extractvalue %dx.types.CBufRet.f32 %6619, 1
  %6622 = fadd fast float %6621, %6620
  %6623 = call float @dx.op.unary.f32(i32 7, float %6622)  ; Saturate(value)
  %6624 = extractvalue %dx.types.CBufRet.f32 %6619, 2
  %6625 = extractvalue %dx.types.CBufRet.f32 %6619, 3
  %6626 = fadd fast float %6625, %6624
  %6627 = call float @dx.op.unary.f32(i32 7, float %6626)  ; Saturate(value)
  %6628 = fmul fast float %6623, %6607
  %6629 = fmul fast float %6628, %6627
  br label %6630

; <label>:6630                                    ; preds = %6591, %6510, %6345, %6327, %6325
  %6631 = phi float [ %6354, %6345 ], [ %6513, %6510 ], [ %6595, %6591 ], [ 0.000000e+00, %6325 ], [ 0.000000e+00, %6327 ]
  %6632 = phi float [ %6388, %6345 ], [ %6547, %6510 ], [ %6629, %6591 ], [ 0.000000e+00, %6325 ], [ 0.000000e+00, %6327 ]
  %6633 = phi float [ %6375, %6345 ], [ %6534, %6510 ], [ %6616, %6591 ], [ 0.000000e+00, %6325 ], [ 0.000000e+00, %6327 ]
  %6634 = phi float [ %6376, %6345 ], [ %6535, %6510 ], [ %6617, %6591 ], [ 0.000000e+00, %6325 ], [ 0.000000e+00, %6327 ]
  %6635 = phi float [ %6377, %6345 ], [ %6536, %6510 ], [ %6618, %6591 ], [ 0.000000e+00, %6325 ], [ 0.000000e+00, %6327 ]
  %6636 = fmul fast float %6268, %6632
  %6637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6638 = extractvalue %dx.types.CBufRet.f32 %6637, 2
  %6639 = fsub fast float %6275, %6638
  %6640 = fcmp fast olt float %6636, -2.000000e+01
  %6641 = call float @dx.op.unary.f32(i32 21, float %6636)  ; Exp(value)
  %6642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6643 = extractvalue %dx.types.CBufRet.f32 %6642, 2
  %6644 = extractvalue %dx.types.CBufRet.f32 %6642, 3
  %6645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6646 = extractvalue %dx.types.CBufRet.f32 %6645, 2
  %6647 = fmul fast float %6644, %6639
  %6648 = call float @dx.op.unary.f32(i32 7, float %6647)  ; Saturate(value)
  %6649 = fsub fast float 1.000000e+00, %6648
  %6650 = fmul fast float %1574, 5.000000e-01
  %6651 = fadd fast float %6650, 5.000000e-01
  %6652 = call float @dx.op.unary.f32(i32 7, float %6651)  ; Saturate(value)
  %6653 = fsub fast float 1.000000e+00, %6652
  %6654 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6649)  ; FMax(a,b)
  %6655 = fdiv fast float %6653, %6654
  %6656 = fsub fast float %6639, %144
  %6657 = call float @dx.op.unary.f32(i32 6, float %6656)  ; FAbs(value)
  %6658 = fmul fast float %6657, %6643
  %6659 = call float @dx.op.unary.f32(i32 7, float %6655)  ; Saturate(value)
  %6660 = fsub fast float 1.000000e+00, %6658
  %6661 = fmul fast float %6660, %6659
  %6662 = fadd fast float %6661, %6658
  %6663 = fmul fast float %6646, %6639
  %6664 = call float @dx.op.unary.f32(i32 7, float %6663)  ; Saturate(value)
  %6665 = fsub fast float 1.000000e+00, %6662
  %6666 = fmul fast float %6665, %6664
  %6667 = fadd fast float %6666, %6662
  %6668 = call float @dx.op.unary.f32(i32 7, float %6667)  ; Saturate(value)
  %6669 = fadd fast float %6641, -1.000000e+00
  %6670 = select i1 %6640, float -1.000000e+00, float %6669
  %6671 = fmul fast float %6668, %6670
  %6672 = fadd fast float %6671, 1.000000e+00
  %6673 = fsub fast float -0.000000e+00, %6671
  %6674 = fmul fast float %6633, %6673
  %6675 = fmul fast float %6634, %6673
  %6676 = fmul fast float %6635, %6673
  br label %6677

; <label>:6677                                    ; preds = %6630, %6231
  %6678 = phi float [ %6631, %6630 ], [ 0.000000e+00, %6231 ]
  %6679 = phi float [ %6672, %6630 ], [ 1.000000e+00, %6231 ]
  %6680 = phi float [ %6674, %6630 ], [ 0.000000e+00, %6231 ]
  %6681 = phi float [ %6675, %6630 ], [ 0.000000e+00, %6231 ]
  %6682 = phi float [ %6676, %6630 ], [ 0.000000e+00, %6231 ]
  %6683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6684 = extractvalue %dx.types.CBufRet.f32 %6683, 1
  %6685 = fsub fast float 1.000000e+00, %6679
  %6686 = fmul fast float %6685, %6261
  %6687 = fmul fast float %6686, %6684
  %6688 = fsub fast float %6261, %6687
  br i1 %6259, label %6689, label %6718, !dx.controlflow.hints !188

; <label>:6689                                    ; preds = %6677
  %6690 = fmul fast float %6262, %6256
  %6691 = fadd fast float %6690, %6257
  %6692 = call float @dx.op.unary.f32(i32 7, float %6691)  ; Saturate(value)
  %6693 = fmul fast float %6238, %6688
  %6694 = fsub fast float -0.000000e+00, %6693
  %6695 = fmul fast float %6239, %6688
  %6696 = fsub fast float -0.000000e+00, %6695
  %6697 = call float @dx.op.unary.f32(i32 21, float %6694)  ; Exp(value)
  %6698 = call float @dx.op.unary.f32(i32 21, float %6696)  ; Exp(value)
  %6699 = call float @dx.op.binary.f32(i32 35, float %6246, float %6697)  ; FMax(a,b)
  %6700 = call float @dx.op.binary.f32(i32 35, float %6246, float %6698)  ; FMax(a,b)
  %6701 = fsub fast float %6700, %6699
  %6702 = fmul fast float %6701, %6692
  %6703 = fadd fast float %6702, %6699
  %6704 = call float @dx.op.unary.f32(i32 7, float %6703)  ; Saturate(value)
  %6705 = fsub fast float %6243, %6248
  %6706 = fsub fast float %6244, %6249
  %6707 = fsub fast float %6245, %6250
  %6708 = fmul fast float %6692, %6705
  %6709 = fmul fast float %6692, %6706
  %6710 = fmul fast float %6692, %6707
  %6711 = fadd fast float %6708, %6248
  %6712 = fadd fast float %6709, %6249
  %6713 = fadd fast float %6710, %6250
  %6714 = fsub fast float 1.000000e+00, %6704
  %6715 = fmul fast float %6714, %6711
  %6716 = fmul fast float %6714, %6712
  %6717 = fmul fast float %6714, %6713
  br label %6777

; <label>:6718                                    ; preds = %6677
  %6719 = fmul fast float %6688, %6255
  %6720 = call float @dx.op.unary.f32(i32 7, float %6719)  ; Saturate(value)
  %6721 = fsub fast float 2.000000e+00, %6720
  %6722 = fmul fast float %6720, 9.921875e-01
  %6723 = fmul fast float %6722, %6721
  %6724 = fadd fast float %6723, 3.906250e-03
  %6725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %56, float %6724, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6726 = extractvalue %dx.types.ResRet.f32 %6725, 0
  %6727 = fsub fast float %6720, %6726
  %6728 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6727)  ; FMax(a,b)
  %6729 = fmul fast float %6241, %144
  %6730 = call float @dx.op.unary.f32(i32 6, float %6729)  ; FAbs(value)
  %6731 = fcmp fast ogt float %6730, 0x3EB0C6F7A0000000
  br i1 %6731, label %6732, label %6738, !dx.controlflow.hints !189

; <label>:6732                                    ; preds = %6718
  %6733 = fmul fast float %6729, 0xBFF7154760000000
  %6734 = call float @dx.op.unary.f32(i32 21, float %6733)  ; Exp(value)
  %6735 = fsub fast float 1.000000e+00, %6734
  %6736 = fdiv fast float %6735, %6729
  %6737 = fmul fast float %6736, %6251
  br label %6738

; <label>:6738                                    ; preds = %6732, %6718
  %6739 = phi float [ %6737, %6732 ], [ %6251, %6718 ]
  %6740 = fadd fast float %6739, %6253
  %6741 = fmul fast float %6740, %6728
  %6742 = fmul fast float %6238, %6741
  %6743 = fsub fast float -0.000000e+00, %6742
  %6744 = fmul fast float %6239, %6741
  %6745 = fsub fast float -0.000000e+00, %6744
  %6746 = fmul fast float %6240, %6741
  %6747 = fsub fast float -0.000000e+00, %6746
  %6748 = call float @dx.op.unary.f32(i32 21, float %6743)  ; Exp(value)
  %6749 = call float @dx.op.unary.f32(i32 21, float %6745)  ; Exp(value)
  %6750 = call float @dx.op.unary.f32(i32 21, float %6747)  ; Exp(value)
  %6751 = fmul fast float %6262, %6262
  %6752 = fadd fast float %6751, 1.000000e+00
  %6753 = fmul fast float %6752, 0x3FAE8EC8A0000000
  %6754 = fmul fast float %6753, %6248
  %6755 = fmul fast float %6753, %6249
  %6756 = fmul fast float %6753, %6250
  %6757 = fmul fast float %6262, %6246
  %6758 = fsub fast float 1.000000e+00, %6757
  %6759 = fmul fast float %6246, %6246
  %6760 = fsub fast float 1.000000e+00, %6759
  %6761 = fmul fast float %6760, 0x3FB45F3060000000
  %6762 = fmul fast float %6758, %6758
  %6763 = fdiv fast float 1.000000e+00, %6762
  %6764 = fmul fast float %6761, %6763
  %6765 = fmul fast float %6764, %6243
  %6766 = fmul fast float %6764, %6244
  %6767 = fmul fast float %6764, %6245
  %6768 = fadd fast float %6765, %6754
  %6769 = fadd fast float %6766, %6755
  %6770 = fadd fast float %6767, %6756
  %6771 = fsub fast float 1.000000e+00, %6748
  %6772 = fsub fast float 1.000000e+00, %6749
  %6773 = fsub fast float 1.000000e+00, %6750
  %6774 = fmul fast float %6768, %6771
  %6775 = fmul fast float %6769, %6772
  %6776 = fmul fast float %6770, %6773
  br label %6777

; <label>:6777                                    ; preds = %6738, %6689
  %6778 = phi float [ %6715, %6689 ], [ %6774, %6738 ]
  %6779 = phi float [ %6716, %6689 ], [ %6775, %6738 ]
  %6780 = phi float [ %6717, %6689 ], [ %6776, %6738 ]
  %6781 = phi float [ %6704, %6689 ], [ %6748, %6738 ]
  %6782 = phi float [ %6704, %6689 ], [ %6749, %6738 ]
  %6783 = phi float [ %6704, %6689 ], [ %6750, %6738 ]
  br i1 %6270, label %6784, label %6982, !dx.controlflow.hints !190

; <label>:6784                                    ; preds = %6777
  %6785 = extractvalue %dx.types.CBufRet.f32 %6683, 0
  %6786 = fmul fast float %6785, %6685
  %6787 = fsub fast float %6680, %6778
  %6788 = fsub fast float %6681, %6779
  %6789 = fsub fast float %6682, %6780
  %6790 = fmul fast float %6786, %6787
  %6791 = fmul fast float %6786, %6788
  %6792 = fmul fast float %6786, %6789
  %6793 = fadd fast float %6790, %6778
  %6794 = fadd fast float %6791, %6779
  %6795 = fadd fast float %6792, %6780
  %6796 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6781)  ; FMax(a,b)
  %6797 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6782)  ; FMax(a,b)
  %6798 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6783)  ; FMax(a,b)
  %6799 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6679)  ; FMax(a,b)
  %6800 = call float @dx.op.binary.f32(i32 35, float %6678, float %6688)  ; FMax(a,b)
  %6801 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6800)  ; FMax(a,b)
  %6802 = fdiv fast float %6678, %6801
  %6803 = call float @dx.op.unary.f32(i32 7, float %6802)  ; Saturate(value)
  %6804 = fdiv fast float %6688, %6801
  %6805 = call float @dx.op.unary.f32(i32 7, float %6804)  ; Saturate(value)
  %6806 = fcmp fast une float %6799, 1.000000e+00
  br i1 %6806, label %6807, label %6820, !dx.controlflow.hints !191

; <label>:6807                                    ; preds = %6784
  %6808 = call float @dx.op.unary.f32(i32 23, float %6799)  ; Log(value)
  %6809 = fmul fast float %6808, 0x3FE62E4300000000
  %6810 = fmul fast float %6680, %6809
  %6811 = fsub fast float -0.000000e+00, %6810
  %6812 = fmul fast float %6681, %6809
  %6813 = fsub fast float -0.000000e+00, %6812
  %6814 = fmul fast float %6682, %6809
  %6815 = fsub fast float -0.000000e+00, %6814
  %6816 = fsub fast float 1.000000e+00, %6799
  %6817 = fdiv fast float %6811, %6816
  %6818 = fdiv fast float %6813, %6816
  %6819 = fdiv fast float %6815, %6816
  br label %6820

; <label>:6820                                    ; preds = %6807, %6784
  %6821 = phi float [ %6817, %6807 ], [ %6680, %6784 ]
  %6822 = phi float [ %6818, %6807 ], [ %6681, %6784 ]
  %6823 = phi float [ %6819, %6807 ], [ %6682, %6784 ]
  %6824 = phi float [ %6809, %6807 ], [ 0.000000e+00, %6784 ]
  %6825 = fcmp fast une float %6796, 1.000000e+00
  br i1 %6825, label %6826, label %6833, !dx.controlflow.hints !192

; <label>:6826                                    ; preds = %6820
  %6827 = call float @dx.op.unary.f32(i32 23, float %6796)  ; Log(value)
  %6828 = fmul fast float %6827, 0x3FE62E4300000000
  %6829 = fmul fast float %6793, %6828
  %6830 = fsub fast float -0.000000e+00, %6829
  %6831 = fsub fast float 1.000000e+00, %6796
  %6832 = fdiv fast float %6830, %6831
  br label %6833

; <label>:6833                                    ; preds = %6826, %6820
  %6834 = phi float [ %6832, %6826 ], [ %6793, %6820 ]
  %6835 = phi float [ %6828, %6826 ], [ 0.000000e+00, %6820 ]
  %6836 = fcmp fast une float %6797, 1.000000e+00
  br i1 %6836, label %6837, label %6844, !dx.controlflow.hints !192

; <label>:6837                                    ; preds = %6833
  %6838 = call float @dx.op.unary.f32(i32 23, float %6797)  ; Log(value)
  %6839 = fmul fast float %6838, 0x3FE62E4300000000
  %6840 = fmul fast float %6794, %6839
  %6841 = fsub fast float -0.000000e+00, %6840
  %6842 = fsub fast float 1.000000e+00, %6797
  %6843 = fdiv fast float %6841, %6842
  br label %6844

; <label>:6844                                    ; preds = %6837, %6833
  %6845 = phi float [ %6843, %6837 ], [ %6794, %6833 ]
  %6846 = phi float [ %6839, %6837 ], [ 0.000000e+00, %6833 ]
  %6847 = fcmp fast une float %6798, 1.000000e+00
  br i1 %6847, label %6848, label %6855, !dx.controlflow.hints !192

; <label>:6848                                    ; preds = %6844
  %6849 = call float @dx.op.unary.f32(i32 23, float %6798)  ; Log(value)
  %6850 = fmul fast float %6849, 0x3FE62E4300000000
  %6851 = fmul fast float %6795, %6850
  %6852 = fsub fast float -0.000000e+00, %6851
  %6853 = fsub fast float 1.000000e+00, %6798
  %6854 = fdiv fast float %6852, %6853
  br label %6855

; <label>:6855                                    ; preds = %6848, %6844
  %6856 = phi float [ %6854, %6848 ], [ %6795, %6844 ]
  %6857 = phi float [ %6850, %6848 ], [ 0.000000e+00, %6844 ]
  %6858 = fmul fast float %6821, %6805
  %6859 = fmul fast float %6822, %6805
  %6860 = fmul fast float %6823, %6805
  %6861 = fmul fast float %6824, %6805
  %6862 = fmul fast float %6834, %6803
  %6863 = fmul fast float %6845, %6803
  %6864 = fmul fast float %6856, %6803
  %6865 = fmul fast float %6835, %6803
  %6866 = fmul fast float %6846, %6803
  %6867 = fmul fast float %6857, %6803
  %6868 = fadd fast float %6862, %6858
  %6869 = fadd fast float %6863, %6859
  %6870 = fadd fast float %6864, %6860
  %6871 = fadd fast float %6865, %6861
  %6872 = fadd fast float %6866, %6861
  %6873 = fadd fast float %6867, %6861
  %6874 = fcmp fast une float %6871, 0.000000e+00
  br i1 %6874, label %6875, label %6882, !dx.controlflow.hints !193

; <label>:6875                                    ; preds = %6855
  %6876 = fmul fast float %6871, 0x3FF7154760000000
  %6877 = call float @dx.op.unary.f32(i32 21, float %6876)  ; Exp(value)
  %6878 = fsub fast float 1.000000e+00, %6877
  %6879 = fmul fast float %6868, %6878
  %6880 = fsub fast float -0.000000e+00, %6879
  %6881 = fdiv fast float %6880, %6871
  br label %6882

; <label>:6882                                    ; preds = %6875, %6855
  %6883 = phi float [ %6877, %6875 ], [ 1.000000e+00, %6855 ]
  %6884 = phi float [ %6881, %6875 ], [ %6868, %6855 ]
  %6885 = fcmp fast une float %6872, 0.000000e+00
  br i1 %6885, label %6886, label %6893, !dx.controlflow.hints !193

; <label>:6886                                    ; preds = %6882
  %6887 = fmul fast float %6872, 0x3FF7154760000000
  %6888 = call float @dx.op.unary.f32(i32 21, float %6887)  ; Exp(value)
  %6889 = fsub fast float 1.000000e+00, %6888
  %6890 = fmul fast float %6869, %6889
  %6891 = fsub fast float -0.000000e+00, %6890
  %6892 = fdiv fast float %6891, %6872
  br label %6893

; <label>:6893                                    ; preds = %6886, %6882
  %6894 = phi float [ %6888, %6886 ], [ 1.000000e+00, %6882 ]
  %6895 = phi float [ %6892, %6886 ], [ %6869, %6882 ]
  %6896 = fcmp fast une float %6873, 0.000000e+00
  br i1 %6896, label %6897, label %6904, !dx.controlflow.hints !193

; <label>:6897                                    ; preds = %6893
  %6898 = fmul fast float %6873, 0x3FF7154760000000
  %6899 = call float @dx.op.unary.f32(i32 21, float %6898)  ; Exp(value)
  %6900 = fsub fast float 1.000000e+00, %6899
  %6901 = fmul fast float %6870, %6900
  %6902 = fsub fast float -0.000000e+00, %6901
  %6903 = fdiv fast float %6902, %6873
  br label %6904

; <label>:6904                                    ; preds = %6897, %6893
  %6905 = phi float [ %6899, %6897 ], [ 1.000000e+00, %6893 ]
  %6906 = phi float [ %6903, %6897 ], [ %6870, %6893 ]
  %6907 = fcmp fast ogt float %6803, %6805
  br i1 %6907, label %6908, label %6928

; <label>:6908                                    ; preds = %6904
  %6909 = fsub fast float 1.000000e+00, %6805
  %6910 = fmul fast float %6821, %6909
  %6911 = fmul fast float %6822, %6909
  %6912 = fmul fast float %6823, %6909
  %6913 = fmul fast float %6824, %6909
  %6914 = fcmp fast une float %6913, 0.000000e+00
  br i1 %6914, label %6915, label %6966, !dx.controlflow.hints !194

; <label>:6915                                    ; preds = %6908
  %6916 = fmul fast float %6913, 0x3FF7154760000000
  %6917 = call float @dx.op.unary.f32(i32 21, float %6916)  ; Exp(value)
  %6918 = fsub fast float 1.000000e+00, %6917
  %6919 = fmul fast float %6910, %6918
  %6920 = fsub fast float -0.000000e+00, %6919
  %6921 = fmul fast float %6911, %6918
  %6922 = fsub fast float -0.000000e+00, %6921
  %6923 = fmul fast float %6912, %6918
  %6924 = fsub fast float -0.000000e+00, %6923
  %6925 = fdiv fast float %6920, %6913
  %6926 = fdiv fast float %6922, %6913
  %6927 = fdiv fast float %6924, %6913
  br label %6966

; <label>:6928                                    ; preds = %6904
  %6929 = fsub fast float 1.000000e+00, %6803
  %6930 = fmul fast float %6834, %6929
  %6931 = fmul fast float %6845, %6929
  %6932 = fmul fast float %6856, %6929
  %6933 = fmul fast float %6835, %6929
  %6934 = fmul fast float %6846, %6929
  %6935 = fmul fast float %6857, %6929
  %6936 = fcmp fast une float %6933, 0.000000e+00
  br i1 %6936, label %6937, label %6944, !dx.controlflow.hints !193

; <label>:6937                                    ; preds = %6928
  %6938 = fmul fast float %6933, 0x3FF7154760000000
  %6939 = call float @dx.op.unary.f32(i32 21, float %6938)  ; Exp(value)
  %6940 = fsub fast float 1.000000e+00, %6939
  %6941 = fmul fast float %6930, %6940
  %6942 = fsub fast float -0.000000e+00, %6941
  %6943 = fdiv fast float %6942, %6933
  br label %6944

; <label>:6944                                    ; preds = %6937, %6928
  %6945 = phi float [ %6943, %6937 ], [ %6930, %6928 ]
  %6946 = phi float [ %6939, %6937 ], [ 1.000000e+00, %6928 ]
  %6947 = fcmp fast une float %6934, 0.000000e+00
  br i1 %6947, label %6948, label %6955, !dx.controlflow.hints !193

; <label>:6948                                    ; preds = %6944
  %6949 = fmul fast float %6934, 0x3FF7154760000000
  %6950 = call float @dx.op.unary.f32(i32 21, float %6949)  ; Exp(value)
  %6951 = fsub fast float 1.000000e+00, %6950
  %6952 = fmul fast float %6931, %6951
  %6953 = fsub fast float -0.000000e+00, %6952
  %6954 = fdiv fast float %6953, %6934
  br label %6955

; <label>:6955                                    ; preds = %6948, %6944
  %6956 = phi float [ %6954, %6948 ], [ %6931, %6944 ]
  %6957 = phi float [ %6950, %6948 ], [ 1.000000e+00, %6944 ]
  %6958 = fcmp fast une float %6935, 0.000000e+00
  br i1 %6958, label %6959, label %6966, !dx.controlflow.hints !193

; <label>:6959                                    ; preds = %6955
  %6960 = fmul fast float %6935, 0x3FF7154760000000
  %6961 = call float @dx.op.unary.f32(i32 21, float %6960)  ; Exp(value)
  %6962 = fsub fast float 1.000000e+00, %6961
  %6963 = fmul fast float %6932, %6962
  %6964 = fsub fast float -0.000000e+00, %6963
  %6965 = fdiv fast float %6964, %6935
  br label %6966

; <label>:6966                                    ; preds = %6959, %6955, %6915, %6908
  %6967 = phi float [ %6965, %6959 ], [ %6927, %6915 ], [ %6912, %6908 ], [ %6932, %6955 ]
  %6968 = phi float [ %6956, %6959 ], [ %6926, %6915 ], [ %6911, %6908 ], [ %6956, %6955 ]
  %6969 = phi float [ %6945, %6959 ], [ %6925, %6915 ], [ %6910, %6908 ], [ %6945, %6955 ]
  %6970 = phi float [ %6961, %6959 ], [ %6917, %6915 ], [ 1.000000e+00, %6908 ], [ 1.000000e+00, %6955 ]
  %6971 = phi float [ %6957, %6959 ], [ %6917, %6915 ], [ 1.000000e+00, %6908 ], [ %6957, %6955 ]
  %6972 = phi float [ %6946, %6959 ], [ %6917, %6915 ], [ 1.000000e+00, %6908 ], [ %6946, %6955 ]
  %6973 = fmul fast float %6972, %6884
  %6974 = fmul fast float %6971, %6895
  %6975 = fmul fast float %6970, %6906
  %6976 = fadd fast float %6973, %6969
  %6977 = fadd fast float %6974, %6968
  %6978 = fadd fast float %6975, %6967
  %6979 = fmul fast float %6972, %6883
  %6980 = fmul fast float %6971, %6894
  %6981 = fmul fast float %6970, %6905
  br label %6982

; <label>:6982                                    ; preds = %6966, %6777
  %6983 = phi float [ %6981, %6966 ], [ %6783, %6777 ]
  %6984 = phi float [ %6980, %6966 ], [ %6782, %6777 ]
  %6985 = phi float [ %6979, %6966 ], [ %6781, %6777 ]
  %6986 = phi float [ %6978, %6966 ], [ %6780, %6777 ]
  %6987 = phi float [ %6977, %6966 ], [ %6779, %6777 ]
  %6988 = phi float [ %6976, %6966 ], [ %6778, %6777 ]
  %6989 = call float @dx.op.dot3.f32(i32 55, float %6985, float %6984, float %6983, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6990 = call float @dx.op.dot3.f32(i32 55, float %6988, float %6987, float %6986, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6991 = select i1 %1682, float %6989, float %6985
  %6992 = select i1 %1682, float %6989, float %6984
  %6993 = select i1 %1682, float 1.000000e+00, float %6983
  %6994 = select i1 %1682, float %6990, float %6988
  %6995 = select i1 %1682, float 0.000000e+00, float %6987
  %6996 = select i1 %1682, float 0.000000e+00, float %6986
  %6997 = fmul fast float %6991, %6226
  %6998 = fmul fast float %6992, %6228
  %6999 = fmul fast float %6993, %6230
  %7000 = fadd fast float %6997, %6994
  %7001 = fadd fast float %6998, %6995
  %7002 = fadd fast float %6996, %6999
  %7003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %7004 = extractvalue %dx.types.CBufRet.f32 %7003, 2
  %7005 = extractvalue %dx.types.CBufRet.f32 %7003, 3
  %7006 = fmul fast float %7004, %87
  %7007 = fmul fast float %7005, %88
  %7008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7006, float %7007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7009 = extractvalue %dx.types.ResRet.f32 %7008, 0
  %7010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %7006, float %7007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7011 = extractvalue %dx.types.ResRet.f32 %7010, 0
  %7012 = extractvalue %dx.types.ResRet.f32 %7010, 1
  %7013 = extractvalue %dx.types.ResRet.f32 %7010, 2
  %7014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7015 = extractvalue %dx.types.CBufRet.f32 %7014, 1
  %7016 = fmul fast float %7015, %7011
  %7017 = fmul fast float %7015, %7012
  %7018 = fmul fast float %7015, %7013
  %7019 = fmul fast float %7009, %6985
  %7020 = call float @dx.op.dot3.f32(i32 55, float %7009, float %7009, float %7009, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7021 = call float @dx.op.dot3.f32(i32 55, float %7016, float %7017, float %7018, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7022 = select i1 %1682, float %7020, float %7009
  %7023 = select i1 %1682, float 1.000000e+00, float %7009
  %7024 = select i1 %1682, float %7021, float %7016
  %7025 = select i1 %1682, float 0.000000e+00, float %7017
  %7026 = select i1 %1682, float 0.000000e+00, float %7018
  %7027 = fmul fast float %7022, %7000
  %7028 = fmul fast float %7022, %7001
  %7029 = fmul fast float %7023, %7002
  %7030 = fadd fast float %7027, %7024
  %7031 = fadd fast float %7028, %7025
  %7032 = fadd fast float %7026, %7029
  br label %7033

; <label>:7033                                    ; preds = %6982, %6198
  %7034 = phi float [ %6226, %6198 ], [ %7030, %6982 ]
  %7035 = phi float [ %6228, %6198 ], [ %7031, %6982 ]
  %7036 = phi float [ %6230, %6198 ], [ %7032, %6982 ]
  %7037 = phi float [ 1.000000e+00, %6198 ], [ %7019, %6982 ]
  %7038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %7039 = extractvalue %dx.types.CBufRet.f32 %7038, 2
  %7040 = extractvalue %dx.types.CBufRet.f32 %7038, 3
  %7041 = fmul fast float %7039, %87
  %7042 = fmul fast float %7040, %88
  %7043 = call float @dx.op.unary.f32(i32 7, float %7041)  ; Saturate(value)
  %7044 = call float @dx.op.unary.f32(i32 7, float %7042)  ; Saturate(value)
  %7045 = select i1 %104, i32 0, i32 2
  %7046 = or i32 %7045, 1
  %7047 = uitofp i32 %7046 to float
  %7048 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %56, float %7043, float %7044, float %7047, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7049 = extractvalue %dx.types.ResRet.f32 %7048, 0
  %7050 = extractvalue %dx.types.ResRet.f32 %7048, 1
  %7051 = extractvalue %dx.types.ResRet.f32 %7048, 2
  %7052 = extractvalue %dx.types.ResRet.f32 %7048, 3
  %7053 = add nuw nsw i32 %7045, 2
  %7054 = uitofp i32 %7053 to float
  %7055 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %56, float %7043, float %7044, float %7054, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7056 = extractvalue %dx.types.ResRet.f32 %7055, 0
  %7057 = extractvalue %dx.types.ResRet.f32 %7055, 1
  %7058 = extractvalue %dx.types.ResRet.f32 %7055, 2
  %7059 = extractvalue %dx.types.ResRet.f32 %7055, 3
  %7060 = call float @dx.op.binary.f32(i32 35, float %7050, float %7051)  ; FMax(a,b)
  %7061 = call float @dx.op.binary.f32(i32 35, float %7049, float %7060)  ; FMax(a,b)
  %7062 = call float @dx.op.binary.f32(i32 35, float %7061, float %7052)  ; FMax(a,b)
  %7063 = call float @dx.op.binary.f32(i32 36, float %7057, float %7058)  ; FMin(a,b)
  %7064 = call float @dx.op.binary.f32(i32 36, float %7056, float %7063)  ; FMin(a,b)
  %7065 = call float @dx.op.binary.f32(i32 36, float %7064, float %7059)  ; FMin(a,b)
  %7066 = fmul fast float %7062, 2.550000e+02
  %7067 = fadd fast float %7066, 0x3F70101020000000
  %7068 = fptoui float %7067 to i32
  %7069 = fmul fast float %7065, 2.550000e+02
  %7070 = fadd fast float %7069, 0x3F70101020000000
  %7071 = fptoui float %7070 to i32
  %7072 = icmp ult i32 %7068, %7071
  br i1 %7072, label %7073, label %7125

; <label>:7073                                    ; preds = %7033
  %7074 = fcmp fast ogt float %75, 9.843750e-01
  %7075 = fadd fast float %76, -4.000000e+00
  %7076 = select i1 %7074, float -4.000000e+00, float %7075
  %7077 = call float @dx.op.binary.f32(i32 35, float %7076, float 0.000000e+00)  ; FMax(a,b)
  %7078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7079 = extractvalue %dx.types.CBufRet.f32 %7078, 0
  %7080 = fadd fast float %7079, %7077
  %7081 = extractvalue %dx.types.CBufRet.f32 %7078, 2
  %7082 = fmul fast float %7080, %7081
  %7083 = call float @dx.op.unary.f32(i32 23, float %7082)  ; Log(value)
  %7084 = extractvalue %dx.types.CBufRet.f32 %7078, 3
  %7085 = fmul fast float %7084, %7083
  %7086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7087 = extractvalue %dx.types.CBufRet.f32 %7086, 2
  %7088 = fmul fast float %7085, %7087
  %7089 = call float @dx.op.unary.f32(i32 7, float %7088)  ; Saturate(value)
  %7090 = uitofp i32 %7068 to float
  %7091 = uitofp i32 %7071 to float
  %7092 = fadd fast float %7090, 5.000000e-01
  %7093 = fadd fast float %7091, 5.000000e-01
  %7094 = fmul fast float %7087, %7092
  %7095 = fmul fast float %7087, %7093
  %7096 = fadd fast float %7094, 0x3F0FFB4800000000
  %7097 = fadd fast float %7095, 0xBF0FFB4800000000
  %7098 = call float @dx.op.binary.f32(i32 35, float %7089, float %7096)  ; FMax(a,b)
  %7099 = call float @dx.op.binary.f32(i32 36, float %7098, float %7097)  ; FMin(a,b)
  %7100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7101 = extractvalue %dx.types.CBufRet.f32 %7100, 1
  %7102 = extractvalue %dx.types.CBufRet.f32 %7100, 2
  %7103 = extractvalue %dx.types.CBufRet.f32 %7100, 0
  %7104 = select i1 %104, float 0.000000e+00, float %7103
  %7105 = fmul fast float %7101, %7099
  %7106 = fadd fast float %7104, %7105
  %7107 = fadd fast float %7104, %7102
  %7108 = fsub fast float %7101, %7102
  %7109 = fadd fast float %7108, %7104
  %7110 = call float @dx.op.binary.f32(i32 35, float %7106, float %7107)  ; FMax(a,b)
  %7111 = call float @dx.op.binary.f32(i32 36, float %7110, float %7109)  ; FMin(a,b)
  %7112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %7043, float %7044, float %7111, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7113 = extractvalue %dx.types.ResRet.f32 %7112, 0
  %7114 = extractvalue %dx.types.ResRet.f32 %7112, 1
  %7115 = extractvalue %dx.types.ResRet.f32 %7112, 2
  %7116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %54, float %7043, float %7044, float %7111, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7117 = extractvalue %dx.types.ResRet.f32 %7116, 0
  %7118 = extractvalue %dx.types.ResRet.f32 %7116, 1
  %7119 = extractvalue %dx.types.ResRet.f32 %7116, 2
  %7120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7121 = extractvalue %dx.types.CBufRet.f32 %7120, 1
  %7122 = fmul fast float %7121, %7117
  %7123 = fmul fast float %7121, %7118
  %7124 = fmul fast float %7121, %7119
  br label %7125

; <label>:7125                                    ; preds = %7073, %7033
  %7126 = phi float [ %7113, %7073 ], [ 1.000000e+00, %7033 ]
  %7127 = phi float [ %7114, %7073 ], [ 1.000000e+00, %7033 ]
  %7128 = phi float [ %7115, %7073 ], [ 1.000000e+00, %7033 ]
  %7129 = phi float [ %7122, %7073 ], [ 0.000000e+00, %7033 ]
  %7130 = phi float [ %7123, %7073 ], [ 0.000000e+00, %7033 ]
  %7131 = phi float [ %7124, %7073 ], [ 0.000000e+00, %7033 ]
  %7132 = fmul fast float %7126, %7037
  %7133 = call float @dx.op.dot3.f32(i32 55, float %7126, float %7127, float %7128, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7134 = call float @dx.op.dot3.f32(i32 55, float %7129, float %7130, float %7131, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7135 = select i1 %1682, float %7133, float %7126
  %7136 = select i1 %1682, float %7133, float %7127
  %7137 = select i1 %1682, float 1.000000e+00, float %7128
  %7138 = select i1 %1682, float %7134, float %7129
  %7139 = select i1 %1682, float 0.000000e+00, float %7130
  %7140 = select i1 %1682, float 0.000000e+00, float %7131
  %7141 = fmul fast float %7135, %7034
  %7142 = fmul fast float %7136, %7035
  %7143 = fmul fast float %7137, %7036
  %7144 = fadd fast float %7141, %7138
  %7145 = fadd fast float %7142, %7139
  %7146 = fadd fast float %7140, %7143
  %7147 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7148 = extractvalue %dx.types.CBufRet.i32 %7147, 3
  %7149 = and i32 %7148, 3
  %7150 = icmp ne i32 %7149, 0
  %7151 = and i32 %7148, 4
  %7152 = icmp ne i32 %7151, 0
  %7153 = and i1 %7150, %7152
  %7154 = and i1 %1682, %7153
  br i1 %7154, label %7155, label %7161

; <label>:7155                                    ; preds = %7125
  %7156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7157 = extractvalue %dx.types.CBufRet.f32 %7156, 1
  %7158 = fadd fast float %7132, -1.000000e+00
  %7159 = fmul fast float %7157, %7158
  %7160 = fadd fast float %7159, 1.000000e+00
  br label %7161

; <label>:7161                                    ; preds = %7155, %7125
  %7162 = phi float [ %7160, %7155 ], [ %7132, %7125 ]
  %7163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7164 = extractvalue %dx.types.CBufRet.f32 %7163, 0
  br i1 %1682, label %7165, label %7179

; <label>:7165                                    ; preds = %7161
  %7166 = fadd fast float %7144, %7145
  %7167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7168 = extractvalue %dx.types.CBufRet.f32 %7167, 3
  %7169 = extractvalue %dx.types.CBufRet.f32 %6214, 1
  %7170 = fsub fast float %6220, %6208
  %7171 = fadd fast float %7170, %6221
  %7172 = fsub fast float %7171, %7169
  %7173 = extractvalue %dx.types.CBufRet.f32 %6214, 2
  %7174 = fmul fast float %7172, %7173
  %7175 = call float @dx.op.unary.f32(i32 7, float %7174)  ; Saturate(value)
  %7176 = fsub fast float %7175, %7168
  %7177 = fmul fast float %7176, %7162
  %7178 = fadd fast float %7177, %7168
  br label %7182

; <label>:7179                                    ; preds = %7161
  %7180 = fmul fast float %7164, %7145
  %7181 = fmul fast float %7164, %7146
  br label %7182

; <label>:7182                                    ; preds = %7179, %7165
  %7183 = phi float [ %7166, %7165 ], [ %7144, %7179 ]
  %7184 = phi float [ %7178, %7165 ], [ %7180, %7179 ]
  %7185 = phi float [ 1.000000e+00, %7165 ], [ %7181, %7179 ]
  %7186 = fmul float %7164, %7183
  %7187 = fadd fast float %1026, 0x3FE3C6EF40000000
  %7188 = call float @dx.op.unary.f32(i32 22, float %7187)  ; Frc(value)
  %7189 = call float @dx.op.unary.f32(i32 23, float %7186)  ; Log(value)
  %7190 = fadd fast float %7189, -7.000000e+00
  %7191 = call float @dx.op.unary.f32(i32 21, float %7190)  ; Exp(value)
  %7192 = fmul fast float %7188, 2.000000e+00
  %7193 = fadd fast float %7192, -1.000000e+00
  %7194 = fmul fast float %7191, %7193
  %7195 = fcmp fast ogt float %7186, 0.000000e+00
  %7196 = select i1 %7195, float %7194, float 0.000000e+00
  %7197 = fadd fast float %7196, %7186
  %7198 = fadd fast float %1026, 0x3FF3C6EF40000000
  %7199 = call float @dx.op.unary.f32(i32 22, float %7198)  ; Frc(value)
  %7200 = call float @dx.op.unary.f32(i32 23, float %7184)  ; Log(value)
  %7201 = fadd fast float %7200, -7.000000e+00
  %7202 = call float @dx.op.unary.f32(i32 21, float %7201)  ; Exp(value)
  %7203 = fmul fast float %7199, 2.000000e+00
  %7204 = fadd fast float %7203, -1.000000e+00
  %7205 = fmul fast float %7202, %7204
  %7206 = fcmp fast ogt float %7184, 0.000000e+00
  %7207 = select i1 %7206, float %7205, float 0.000000e+00
  %7208 = fadd fast float %7207, %7184
  %7209 = fadd fast float %1026, 0x3FFDAA66E0000000
  %7210 = call float @dx.op.unary.f32(i32 22, float %7209)  ; Frc(value)
  %7211 = call float @dx.op.unary.f32(i32 23, float %7185)  ; Log(value)
  %7212 = fadd fast float %7211, -6.000000e+00
  %7213 = call float @dx.op.unary.f32(i32 21, float %7212)  ; Exp(value)
  %7214 = fmul fast float %7210, 2.000000e+00
  %7215 = fadd fast float %7214, -1.000000e+00
  %7216 = fmul fast float %7213, %7215
  %7217 = fcmp fast ogt float %7185, 0.000000e+00
  %7218 = select i1 %7217, float %7216, float 0.000000e+00
  %7219 = fadd fast float %7218, %7185
  %7220 = call float @dx.op.binary.f32(i32 36, float %7197, float 3.225500e+04)  ; FMin(a,b)
  %7221 = call float @dx.op.binary.f32(i32 36, float %7208, float 3.225500e+04)  ; FMin(a,b)
  %7222 = call float @dx.op.binary.f32(i32 36, float %7219, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7220)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7221)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7222)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!dx.viewIdState = !{!75}
!dx.entryPoints = !{!76}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !63, !67}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
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
!37 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!38 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!39 = !{i32 30, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!40 = !{i32 31, %"class.Texture3D<float>"* undef, !"", i32 2, i32 82, i32 1, i32 4, i32 0, !7}
!41 = !{i32 32, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!42 = !{i32 33, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!43 = !{i32 34, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!44 = !{i32 35, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!45 = !{i32 36, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !12}
!50 = !{i32 41, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!51 = !{i32 42, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!54 = !{i32 45, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!55 = !{i32 46, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!56 = !{i32 47, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!57 = !{i32 48, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!58 = !{i32 49, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!59 = !{i32 50, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!60 = !{i32 51, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!61 = !{i32 52, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!62 = !{i32 53, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 7, i32 0, !7}
!63 = !{!64, !65, !66}
!64 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!65 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!66 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!67 = !{!68, !69, !70, !71, !72, !73, !74}
!68 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!69 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!70 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!71 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!72 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!73 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!74 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!75 = !{[20 x i32] [i32 18, i32 4, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0]}
!76 = !{void ()* @ps_main, !"ps_main", !77, !4, !96}
!77 = !{!78, !94, null}
!78 = !{!79, !82, !84, !86, !88, !89, !90, !91, !93}
!79 = !{i32 0, !"SV_Position", i8 9, i8 3, !80, i8 4, i32 1, i8 4, i32 0, i8 0, !81}
!80 = !{i32 0}
!81 = !{i32 3, i32 15}
!82 = !{i32 1, !"NORMAL", i8 9, i8 0, !80, i8 2, i32 1, i8 3, i32 1, i8 0, !83}
!83 = !{i32 3, i32 7}
!84 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !80, i8 2, i32 1, i8 2, i32 2, i8 0, !85}
!85 = !{i32 3, i32 3}
!86 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !80, i8 2, i32 1, i8 1, i32 1, i8 3, !87}
!87 = !{i32 3, i32 1}
!88 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !80, i8 1, i32 1, i8 1, i32 3, i8 0, !87}
!89 = !{i32 5, !"SV_IsFrontFace", i8 5, i8 13, !80, i8 1, i32 1, i8 1, i32 3, i8 1, !87}
!90 = !{i32 6, !"SV_ClipDistance", i8 9, i8 6, !80, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!91 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !92, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!92 = !{i32 1}
!93 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !80, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!94 = !{!95}
!95 = !{i32 0, !"SV_Target", i8 9, i8 16, !80, i8 0, i32 1, i8 4, i32 0, i8 0, !81}
!96 = !{i32 0, i64 24}
!97 = !{!98, !98, i64 0}
!98 = !{!"float", !99, i64 0}
!99 = !{!"omnipotent char", !100, i64 0}
!100 = !{!"Simple C/C++ TBAA"}
!101 = !{!102, !104, !105}
!102 = distinct !{!102, !103, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!103 = distinct !{!103, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!104 = distinct !{!104, !103, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!105 = distinct !{!105, !103, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %normalOffsets"}
!108 = distinct !{!108, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z"}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.unroll.disable"}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !110}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
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
!128 = !{!129, !129, i64 0}
!129 = !{!"int", !99, i64 0}
!130 = !{!131, !133, !135, !137}
!131 = distinct !{!131, !132, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!132 = distinct !{!132, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!133 = distinct !{!133, !134, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!134 = distinct !{!134, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!135 = distinct !{!135, !136, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!136 = distinct !{!136, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!137 = distinct !{!137, !138, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!138 = distinct !{!138, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !110}
!141 = distinct !{!141, !110}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 1}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = !{!153, !155, !157, !158, !160, !161, !162, !164, !165, !166}
!153 = distinct !{!153, !154, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!154 = distinct !{!154, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!155 = distinct !{!155, !156, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!156 = distinct !{!156, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!157 = distinct !{!157, !156, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!158 = distinct !{!158, !159, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!159 = distinct !{!159, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!160 = distinct !{!160, !159, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!161 = distinct !{!161, !159, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!162 = distinct !{!162, !163, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!163 = distinct !{!163, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!164 = distinct !{!164, !163, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!165 = distinct !{!165, !163, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!166 = distinct !{!166, !167, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!167 = distinct !{!167, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!168 = !{!169}
!169 = distinct !{!169, !170, !"\01?sort@@YAXAIAM00@Z: %c"}
!170 = distinct !{!170, !"\01?sort@@YAXAIAM00@Z"}
!171 = !{!172, !173, !153, !155, !157, !158, !160, !161, !162, !164, !165, !166}
!172 = distinct !{!172, !170, !"\01?sort@@YAXAIAM00@Z: %a"}
!173 = distinct !{!173, !170, !"\01?sort@@YAXAIAM00@Z: %b"}
!174 = !{!173}
!175 = !{!172, !169, !153, !155, !157, !158, !160, !161, !162, !164, !165, !166}
!176 = !{!172}
!177 = !{!173, !169, !153, !155, !157, !158, !160, !161, !162, !164, !165, !166}
!178 = !{!179}
!179 = distinct !{!179, !180, !"\01?sort@@YAXAIAM00@Z: %c"}
!180 = distinct !{!180, !"\01?sort@@YAXAIAM00@Z"}
!181 = !{!182, !183, !153, !155, !157, !158, !160, !161, !162, !164, !165, !166}
!182 = distinct !{!182, !180, !"\01?sort@@YAXAIAM00@Z: %a"}
!183 = distinct !{!183, !180, !"\01?sort@@YAXAIAM00@Z: %b"}
!184 = !{!183}
!185 = !{!182, !179, !153, !155, !157, !158, !160, !161, !162, !164, !165, !166}
!186 = !{!182}
!187 = !{!183, !179, !153, !155, !157, !158, !160, !161, !162, !164, !165, !166}
!188 = distinct !{!188, !"dx.controlflow.hints", i32 1}
!189 = distinct !{!189, !"dx.controlflow.hints", i32 2}
!190 = distinct !{!190, !"dx.controlflow.hints", i32 1}
!191 = distinct !{!191, !"dx.controlflow.hints", i32 1}
!192 = distinct !{!192, !"dx.controlflow.hints", i32 1}
!193 = distinct !{!193, !"dx.controlflow.hints", i32 1}
!194 = distinct !{!194, !"dx.controlflow.hints", i32 1}

