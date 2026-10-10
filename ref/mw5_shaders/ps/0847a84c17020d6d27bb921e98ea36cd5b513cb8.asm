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
; shader hash: b1a1c8f5d0c7d97cacace69b89380525
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
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
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
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = alloca [4 x i32], align 4
  %59 = alloca [4 x float], align 4
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = icmp ne i32 %60, 0
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = alloca [12 x float], align 4
  %74 = alloca [12 x float], align 4
  %75 = alloca [3 x float], align 4
  %76 = alloca [3 x float], align 4
  %77 = alloca [4 x float], align 4
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 0
  %80 = fmul fast float %79, %69
  %81 = fmul fast float %79, %70
  %82 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %83 = call float @dx.op.unary.f32(i32 25, float %82)  ; Rsqrt(value)
  %84 = fmul fast float %83, %66
  %85 = fmul fast float %83, %67
  %86 = fmul fast float %83, %68
  %87 = xor i1 %61, true
  %88 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.i32 %88, 0
  %90 = icmp eq i32 %89, 0
  %91 = and i1 %90, %87
  %92 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.i32 %92, 0
  %94 = and i32 %93, 256
  %95 = icmp ne i32 %94, 0
  %96 = and i1 %91, %95
  %97 = or i1 %61, %96
  %98 = select i1 %97, float 1.000000e+00, float -1.000000e+00
  %99 = fmul fast float %84, %98
  %100 = fmul fast float %85, %98
  %101 = fmul fast float %86, %98
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 3
  %105 = fmul fast float %80, 2.000000e+00
  %106 = fmul fast float %105, %103
  %107 = fmul fast float %81, 2.000000e+00
  %108 = fmul fast float %107, %104
  %109 = fsub fast float 1.000000e+00, %106
  %110 = fsub fast float 1.000000e+00, %108
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %114 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %115 = fmul fast float %109, %112
  %116 = fmul fast float %109, %113
  %117 = fmul fast float %109, %114
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = fmul fast float %110, %119
  %123 = fmul fast float %110, %120
  %124 = fmul fast float %110, %121
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %129 = fadd fast float %122, %126
  %130 = fadd fast float %129, %115
  %131 = fadd fast float %123, %127
  %132 = fadd fast float %131, %116
  %133 = fadd fast float %124, %128
  %134 = fadd fast float %133, %117
  %135 = fmul fast float %130, %72
  %136 = fmul fast float %132, %72
  %137 = fmul fast float %134, %72
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %140 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %141 = call float @dx.op.unary.f32(i32 83, float %65)  ; DerivCoarseX(value)
  %142 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %143 = call float @dx.op.unary.f32(i32 84, float %65)  ; DerivCoarseY(value)
  %144 = fmul fast float %140, %139
  %145 = fmul fast float %141, %139
  %146 = fmul fast float %142, %139
  %147 = fmul fast float %143, %139
  %148 = call float @dx.op.dot2.f32(i32 54, float %146, float %147, float %146, float %147)  ; Dot2(ax,ay,bx,by)
  %149 = call float @dx.op.dot2.f32(i32 54, float %144, float %145, float %144, float %145)  ; Dot2(ax,ay,bx,by)
  %150 = call float @dx.op.binary.f32(i32 35, float %149, float %148)  ; FMax(a,b)
  %151 = call float @dx.op.unary.f32(i32 23, float %150)  ; Log(value)
  %152 = fmul fast float %151, 5.000000e-01
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %155 = fadd fast float %154, %152
  %156 = call float @dx.op.binary.f32(i32 35, float %155, float 0.000000e+00)  ; FMax(a,b)
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 3
  %159 = fadd fast float %158, %156
  %160 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %161 = shl i32 %160, 16
  %162 = or i32 %161, %160
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %166 = fadd fast float %164, %135
  %167 = fadd fast float %165, %136
  %168 = fmul fast float %166, 0x3F53C37960000000
  %169 = fmul fast float %167, 0x3F53C37960000000
  %170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %170, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %172 = extractvalue %dx.types.ResRet.f32 %171, 0
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %175 = fmul fast float %174, %172
  %176 = shl i32 %62, 3
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = and i32 %178, 16383
  %180 = shl i32 %62, 2
  %181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.i32 %181, 0
  %183 = and i32 %182, 255
  %184 = mul nuw nsw i32 %179, 148
  %185 = add nuw nsw i32 %184, 4
  %186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = add nuw nsw i32 %184, 8
  %189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = add nuw nsw i32 %184, 48
  %192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %191, i32 undef)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = add nuw nsw i32 %184, 104
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = fsub fast float 1.000000e+00, %65
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 2
  %200 = fmul fast float %199, %64
  %201 = fmul fast float %199, %197
  %202 = fadd fast float %200, %187
  %203 = fadd fast float %201, %190
  %204 = add nuw nsw i32 %184, 20
  %205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = add nuw nsw i32 %184, 24
  %208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = add nuw nsw i32 %184, 40
  %211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %191, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = add nuw nsw i32 %184, 52
  %216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = add nuw nsw i32 %184, 56
  %219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.f32 %219, 0
  %221 = add nuw nsw i32 %184, 96
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = add nuw nsw i32 %184, 108
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = add nuw nsw i32 %184, 112
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %234 = fmul fast float %233, %64
  %235 = fmul fast float %233, %65
  %236 = extractvalue %dx.types.CBufRet.f32 %232, 3
  %237 = fadd fast float %234, %236
  %238 = fadd fast float %235, %236
  %239 = extractvalue %dx.types.CBufRet.f32 %232, 0
  %240 = fmul fast float %239, %64
  %241 = fmul fast float %239, %65
  %242 = extractvalue %dx.types.CBufRet.f32 %232, 1
  %243 = fadd fast float %240, %242
  %244 = fadd fast float %241, %242
  %245 = add i32 %223, 0
  %246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %245, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %247 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %246, i32 0)  ; GetDimensions(handle,mipLevel)
  %248 = extractvalue %dx.types.Dimensions %247, 0
  %249 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %248)  ; FirstbitLo(value)
  %250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.i32 %250, 1
  %252 = sub nsw i32 %251, %249
  %253 = sitofp i32 %252 to float
  %254 = fsub fast float %159, %253
  %255 = call float @dx.op.binary.f32(i32 35, float %254, float 0.000000e+00)  ; FMax(a,b)
  %256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %246, %dx.types.Handle %50, float %237, float %238, float %212, float undef, i32 0, i32 0, i32 undef, float %255)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = fmul fast float %257, %206
  %259 = add i32 %225, 0
  %260 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %259, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %261 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %260, i32 0)  ; GetDimensions(handle,mipLevel)
  %262 = extractvalue %dx.types.Dimensions %261, 0
  %263 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %262)  ; FirstbitLo(value)
  %264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.i32 %264, 1
  %266 = sub nsw i32 %265, %263
  %267 = sitofp i32 %266 to float
  %268 = fsub fast float %159, %267
  %269 = call float @dx.op.binary.f32(i32 35, float %268, float 0.000000e+00)  ; FMax(a,b)
  %270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %260, %dx.types.Handle %50, float %243, float %244, float %214, float undef, i32 0, i32 0, i32 undef, float %269)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = extractvalue %dx.types.ResRet.f32 %270, 1
  %273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.f32 %273, 3
  %275 = fmul fast float %274, 2.000000e+00
  %276 = fmul fast float %275, %271
  %277 = fmul fast float %275, %272
  %278 = fsub fast float %276, %274
  %279 = fsub fast float %277, %274
  %280 = fmul fast float %278, %278
  %281 = fmul fast float %279, %279
  %282 = fadd fast float %280, %281
  %283 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %284 = add i32 %228, 0
  %285 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %284, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %286 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %285, i32 0)  ; GetDimensions(handle,mipLevel)
  %287 = extractvalue %dx.types.Dimensions %286, 0
  %288 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %287)  ; FirstbitLo(value)
  %289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.i32 %289, 1
  %291 = sub nsw i32 %290, %288
  %292 = sitofp i32 %291 to float
  %293 = fsub fast float %159, %292
  %294 = call float @dx.op.binary.f32(i32 35, float %293, float 0.000000e+00)  ; FMax(a,b)
  %295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %285, %dx.types.Handle %50, float %243, float %244, float %217, float undef, i32 0, i32 0, i32 undef, float %294)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %296 = extractvalue %dx.types.ResRet.f32 %295, 0
  %297 = add i32 %231, 0
  %298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %297, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %299 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %298, i32 0)  ; GetDimensions(handle,mipLevel)
  %300 = extractvalue %dx.types.Dimensions %299, 0
  %301 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %300)  ; FirstbitLo(value)
  %302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.i32 %302, 1
  %304 = sub nsw i32 %303, %301
  %305 = sitofp i32 %304 to float
  %306 = fsub fast float %159, %305
  %307 = call float @dx.op.binary.f32(i32 35, float %306, float 0.000000e+00)  ; FMax(a,b)
  %308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %298, %dx.types.Handle %50, float %243, float %244, float %220, float undef, i32 0, i32 0, i32 undef, float %307)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %309 = extractvalue %dx.types.ResRet.f32 %308, 0
  %310 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.i32 %310, 0
  %312 = call i32 @dx.op.binary.i32(i32 40, i32 %179, i32 %311)  ; UMin(a,b)
  %313 = mul i32 %312, 36
  %314 = add i32 %313, 4
  %315 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %183)  ; FirstbitLo(value)
  %316 = shl i32 %315, 2
  %317 = add i32 %314, %316
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 32767
  %321 = mul nuw nsw i32 %320, 928
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = or i32 %321, 8
  %325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.f32 %325, 0
  %327 = or i32 %321, 12
  %328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 1
  %330 = or i32 %321, 20
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = or i32 %321, 24
  %334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 0
  %336 = extractvalue %dx.types.ResRet.f32 %334, 1
  %337 = extractvalue %dx.types.ResRet.f32 %334, 2
  %338 = extractvalue %dx.types.ResRet.f32 %334, 3
  %339 = add nuw nsw i32 %321, 40
  %340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.f32 %340, 0
  %342 = add nuw nsw i32 %321, 72
  %343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.f32 %343, 0
  %345 = extractvalue %dx.types.ResRet.f32 %343, 1
  %346 = add nuw nsw i32 %321, 80
  %347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.f32 %347, 0
  %349 = add nuw nsw i32 %321, 228
  %350 = add nuw nsw i32 %321, 516
  %351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.f32 %351, 1
  %353 = add nuw nsw i32 %321, 552
  %354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = extractvalue %dx.types.ResRet.f32 %354, 1
  %357 = extractvalue %dx.types.ResRet.f32 %354, 2
  %358 = add nuw nsw i32 %321, 596
  %359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = extractvalue %dx.types.ResRet.f32 %359, 1
  %362 = add nuw nsw i32 %321, 620
  %363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 0
  %365 = extractvalue %dx.types.ResRet.f32 %363, 1
  %366 = add nuw nsw i32 %321, 628
  %367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.f32 %367, 0
  %369 = extractvalue %dx.types.ResRet.f32 %367, 1
  %370 = extractvalue %dx.types.ResRet.f32 %367, 2
  %371 = extractvalue %dx.types.ResRet.f32 %367, 3
  %372 = add nuw nsw i32 %321, 644
  %373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.f32 %373, 0
  %375 = add nuw nsw i32 %321, 648
  %376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = add nuw nsw i32 %321, 652
  %379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.f32 %379, 0
  %381 = add nuw nsw i32 %321, 656
  %382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.f32 %382, 0
  %384 = add nuw nsw i32 %321, 660
  %385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = add nuw nsw i32 %321, 664
  %388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = add nuw nsw i32 %321, 676
  %392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  %394 = extractvalue %dx.types.ResRet.f32 %392, 1
  %395 = add nuw nsw i32 %321, 696
  %396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = extractvalue %dx.types.ResRet.f32 %396, 1
  %399 = add nuw nsw i32 %321, 704
  %400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.f32 %400, 0
  %402 = add nuw nsw i32 %321, 708
  %403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.f32 %403, 0
  %405 = extractvalue %dx.types.ResRet.f32 %403, 1
  %406 = add nuw nsw i32 %321, 716
  %407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = add nuw nsw i32 %321, 720
  %410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.f32 %410, 0
  %412 = extractvalue %dx.types.ResRet.f32 %410, 1
  %413 = add nuw nsw i32 %321, 732
  %414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 1
  %416 = add nuw nsw i32 %321, 744
  %417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.f32 %417, 0
  %419 = add nuw nsw i32 %321, 748
  %420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  %422 = add nuw nsw i32 %321, 752
  %423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.f32 %423, 0
  %425 = add nuw nsw i32 %321, 756
  %426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = extractvalue %dx.types.ResRet.f32 %426, 1
  %429 = extractvalue %dx.types.ResRet.f32 %426, 2
  %430 = extractvalue %dx.types.ResRet.f32 %426, 3
  %431 = add nuw nsw i32 %321, 780
  %432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  %434 = extractvalue %dx.types.ResRet.f32 %432, 1
  %435 = add nuw nsw i32 %321, 792
  %436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = add nuw nsw i32 %321, 800
  %440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = extractvalue %dx.types.ResRet.f32 %440, 1
  %443 = add nuw nsw i32 %321, 812
  %444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = add nuw nsw i32 %321, 816
  %447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.f32 %447, 1
  %449 = add nuw nsw i32 %321, 884
  %450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = extractvalue %dx.types.ResRet.f32 %450, 1
  %453 = extractvalue %dx.types.ResRet.f32 %450, 2
  %454 = add nuw nsw i32 %321, 896
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = add nuw nsw i32 %321, 900
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = add nuw nsw i32 %321, 904
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = add nuw nsw i32 %321, 908
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = add nuw nsw i32 %321, 912
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = add nuw nsw i32 %321, 916
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = and i32 %323, 128
  %473 = icmp ne i32 %472, 0
  %474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.i32 %474, 0
  %476 = and i32 %475, 512
  %477 = icmp ne i32 %476, 0
  %478 = and i1 %473, %477
  %479 = select i1 %478, float 0.000000e+00, float 1.000000e+00
  %480 = call float @dx.op.unary.f32(i32 7, float %479)  ; Saturate(value)
  %481 = fmul fast float %480, 2.550000e+02
  %482 = fptoui float %481 to i32
  %483 = fcmp fast ole float %63, 0x3FA4B5DCC0000000
  %484 = fmul fast float %63, 0x3FB3D07220000000
  %485 = fadd fast float %63, 0x3FAC28F5C0000000
  %486 = fmul fast float %485, 0x3FEE54EDE0000000
  %487 = call float @dx.op.unary.f32(i32 23, float %486)  ; Log(value)
  %488 = fmul fast float %487, 0x4003333340000000
  %489 = call float @dx.op.unary.f32(i32 21, float %488)  ; Exp(value)
  %490 = select i1 %483, float %484, float %489
  %491 = call float @dx.op.unary.f32(i32 7, float %490)  ; Saturate(value)
  %492 = fmul fast float %360, %296
  %493 = fadd fast float %492, %361
  %494 = call float @dx.op.unary.f32(i32 7, float %493)  ; Saturate(value)
  %495 = call float @dx.op.binary.f32(i32 35, float %491, float %494)  ; FMax(a,b)
  %496 = add i32 %459, 0
  %497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %496, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %498 = fmul fast float %348, %283
  %499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %500 = extractvalue %dx.types.CBufRet.f32 %499, 0
  %501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.f32 %501, 0
  %503 = extractvalue %dx.types.CBufRet.f32 %501, 1
  %504 = fadd fast float %502, %135
  %505 = fadd fast float %503, %136
  %506 = fmul fast float %135, %135
  %507 = fmul fast float %136, %136
  %508 = fadd fast float %506, %507
  %509 = fmul fast float %137, %137
  %510 = fadd fast float %508, %509
  %511 = call float @dx.op.unary.f32(i32 24, float %510)  ; Sqrt(value)
  %512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %513 = extractvalue %dx.types.CBufRet.f32 %512, 0
  %514 = fcmp fast ogt float %511, %513
  %515 = zext i1 %514 to i32
  %516 = extractvalue %dx.types.CBufRet.f32 %512, 1
  %517 = fcmp fast ogt float %511, %516
  %518 = zext i1 %517 to i32
  %519 = add nuw nsw i32 %518, %515
  %520 = extractvalue %dx.types.CBufRet.f32 %512, 2
  %521 = fcmp fast ogt float %511, %520
  %522 = zext i1 %521 to i32
  %523 = add nuw nsw i32 %519, %522
  %524 = icmp ult i32 %523, 3
  %525 = zext i1 %524 to i32
  %526 = shl nuw nsw i32 %523, 2
  %527 = add nuw nsw i32 %526, 48
  %528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 %527)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.f32 %528, 1
  %530 = fcmp fast ogt float %511, %529
  %531 = zext i1 %530 to i32
  %532 = or i32 %526, 1
  %533 = add nuw nsw i32 %532, 48
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 %533)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 1
  %536 = fcmp fast ogt float %511, %535
  %537 = zext i1 %536 to i32
  %538 = add nuw nsw i32 %537, %531
  %539 = or i32 %526, 2
  %540 = add nuw nsw i32 %539, 48
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 %540)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 1
  %543 = fcmp fast ogt float %511, %542
  %544 = zext i1 %543 to i32
  %545 = add nuw nsw i32 %538, %544
  %546 = add i32 %332, -1
  %547 = call i32 @dx.op.binary.i32(i32 40, i32 %545, i32 %546)  ; UMin(a,b)
  %548 = add i32 %526, %547
  %549 = call i32 @dx.op.binary.i32(i32 40, i32 %548, i32 12)  ; UMin(a,b)
  %550 = add i32 %549, 48
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 %550)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 0
  %553 = fcmp fast oge float %511, %552
  %554 = zext i1 %553 to i32
  %555 = call i32 @dx.op.binary.i32(i32 40, i32 %332, i32 %525)  ; UMin(a,b)
  %556 = call i32 @dx.op.binary.i32(i32 40, i32 %554, i32 %555)  ; UMin(a,b)
  %557 = fmul fast float %498, 3.906250e-03
  %558 = add i32 %556, %332
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %736, label %560

; <label>:560                                     ; preds = %0
  br label %561

; <label>:561                                     ; preds = %561, %560
  %562 = phi float [ %732, %561 ], [ 0.000000e+00, %560 ]
  %563 = phi float [ %724, %561 ], [ 0.000000e+00, %560 ]
  %564 = phi float [ %725, %561 ], [ 0.000000e+00, %560 ]
  %565 = phi i32 [ %573, %561 ], [ %549, %560 ]
  %566 = phi i32 [ %733, %561 ], [ 0, %560 ]
  %567 = add i32 %566, %565
  %568 = and i32 %567, -4
  %569 = add i32 %568, %332
  %570 = icmp uge i32 %567, %569
  %571 = sub i32 4, %332
  %572 = select i1 %570, i32 %571, i32 0
  %573 = add i32 %572, %565
  %574 = add i32 %572, %567
  %575 = and i32 %574, 3
  %576 = lshr i32 %574, 2
  %577 = add i32 %574, 32
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 %577)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 0
  %580 = extractvalue %dx.types.CBufRet.f32 %578, 1
  %581 = extractvalue %dx.types.CBufRet.f32 %578, 2
  %582 = extractvalue %dx.types.CBufRet.f32 %578, 3
  %583 = fmul fast float %579, %511
  %584 = fadd fast float %583, %580
  %585 = call float @dx.op.unary.f32(i32 7, float %584)  ; Saturate(value)
  %586 = fmul fast float %581, %511
  %587 = fadd fast float %586, %582
  %588 = call float @dx.op.unary.f32(i32 7, float %587)  ; Saturate(value)
  %589 = call float @dx.op.binary.f32(i32 36, float %585, float %588)  ; FMin(a,b)
  %590 = mul nuw nsw i32 %575, 72
  %591 = add nuw nsw i32 %349, %590
  %592 = add nuw nsw i32 %591, 16
  %593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = extractvalue %dx.types.ResRet.f32 %593, 1
  %596 = extractvalue %dx.types.ResRet.f32 %593, 2
  %597 = extractvalue %dx.types.ResRet.f32 %593, 3
  %598 = add nuw nsw i32 %591, 36
  %599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = fmul fast float %557, %600
  %602 = add nuw nsw i32 %591, 56
  %603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = fmul fast float %601, %604
  %606 = extractvalue %dx.types.ResRet.f32 %603, 1
  %607 = fadd fast float %605, %606
  %608 = call float @dx.op.binary.f32(i32 35, float %607, float 0.000000e+00)  ; FMax(a,b)
  %609 = add nuw nsw i32 %591, 32
  %610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = fmul fast float %600, %278
  %613 = fmul fast float %600, %279
  %614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %615 = extractvalue %dx.types.CBufRet.f32 %614, 1
  %616 = add nuw nsw i32 %591, 40
  %617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 0
  %619 = extractvalue %dx.types.ResRet.f32 %617, 1
  %620 = extractvalue %dx.types.ResRet.f32 %617, 2
  %621 = extractvalue %dx.types.ResRet.f32 %617, 3
  %622 = fadd fast float %615, %175
  %623 = fadd fast float %622, %620
  %624 = fmul fast float %622, %619
  %625 = call float @dx.op.unary.f32(i32 29, float %624)  ; Round_z(value)
  %626 = fmul fast float %618, %625
  %627 = fsub fast float %622, %626
  %628 = fmul fast float %623, %619
  %629 = call float @dx.op.unary.f32(i32 29, float %628)  ; Round_z(value)
  %630 = fmul fast float %629, %618
  %631 = fsub fast float %623, %630
  %632 = fmul fast float %627, %612
  %633 = fmul fast float %627, %613
  %634 = fmul fast float %631, %612
  %635 = fmul fast float %631, %613
  %636 = fsub fast float %504, %632
  %637 = fsub fast float %505, %633
  %638 = fsub fast float %504, %634
  %639 = fsub fast float %505, %635
  %640 = fsub fast float %620, %627
  %641 = call float @dx.op.unary.f32(i32 6, float %640)  ; FAbs(value)
  %642 = fmul fast float %641, %621
  %643 = call float @dx.op.unary.f32(i32 7, float %642)  ; Saturate(value)
  %644 = fmul fast float %326, 4.000000e+00
  %645 = uitofp i32 %576 to float
  %646 = fadd fast float %645, %644
  %647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %648 = extractvalue %dx.types.CBufRet.f32 %647, 0
  %649 = extractvalue %dx.types.CBufRet.f32 %647, 1
  %650 = extractvalue %dx.types.CBufRet.f32 %647, 2
  %651 = extractvalue %dx.types.CBufRet.f32 %647, 3
  %652 = getelementptr inbounds [4 x float], [4 x float]* %59, i32 0, i32 0
  store float %648, float* %652, align 4
  %653 = getelementptr inbounds [4 x float], [4 x float]* %59, i32 0, i32 1
  store float %649, float* %653, align 4
  %654 = getelementptr inbounds [4 x float], [4 x float]* %59, i32 0, i32 2
  store float %650, float* %654, align 4
  %655 = getelementptr inbounds [4 x float], [4 x float]* %59, i32 0, i32 3
  store float %651, float* %655, align 4
  %656 = getelementptr inbounds [4 x float], [4 x float]* %59, i32 0, i32 %576
  %657 = load float, float* %656, align 4, !tbaa !95, !noalias !99
  %658 = fmul fast float %657, %329
  %659 = fmul fast float %636, %594
  %660 = call float @dx.op.tertiary.f32(i32 46, float %595, float %637, float %659)  ; FMad(a,b,c)
  %661 = fmul fast float %636, %596
  %662 = call float @dx.op.tertiary.f32(i32 46, float %597, float %637, float %661)  ; FMad(a,b,c)
  %663 = add nuw nsw i32 %591, 8
  %664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %663, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.f32 %664, 0
  %666 = extractvalue %dx.types.ResRet.f32 %664, 1
  %667 = fadd fast float %665, %660
  %668 = fadd fast float %666, %662
  %669 = fmul fast float %667, %658
  %670 = fmul fast float %668, %658
  %671 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.f32 %671, 0
  %673 = extractvalue %dx.types.ResRet.f32 %671, 1
  %674 = fmul fast float %669, %672
  %675 = fmul fast float %670, %673
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 2
  %678 = fadd fast float %674, %677
  %679 = fadd fast float %675, %677
  %680 = fmul fast float %638, %594
  %681 = call float @dx.op.tertiary.f32(i32 46, float %595, float %639, float %680)  ; FMad(a,b,c)
  %682 = fmul fast float %638, %596
  %683 = call float @dx.op.tertiary.f32(i32 46, float %597, float %639, float %682)  ; FMad(a,b,c)
  %684 = fadd fast float %665, %681
  %685 = fadd fast float %666, %683
  %686 = fmul fast float %684, %658
  %687 = fmul fast float %685, %658
  %688 = fmul fast float %686, %672
  %689 = fmul fast float %687, %673
  %690 = fadd fast float %688, %677
  %691 = fadd fast float %689, %677
  %692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %51, float %678, float %679, float %646, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %693 = extractvalue %dx.types.ResRet.f32 %692, 0
  %694 = extractvalue %dx.types.ResRet.f32 %692, 1
  %695 = extractvalue %dx.types.ResRet.f32 %692, 3
  %696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %51, float %690, float %691, float %646, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %697 = extractvalue %dx.types.ResRet.f32 %696, 0
  %698 = extractvalue %dx.types.ResRet.f32 %696, 1
  %699 = extractvalue %dx.types.ResRet.f32 %696, 3
  %700 = fsub fast float %697, %693
  %701 = fsub fast float %698, %694
  %702 = fsub fast float %699, %695
  %703 = fmul fast float %700, %643
  %704 = fmul fast float %701, %643
  %705 = fmul fast float %702, %643
  %706 = fadd fast float %703, %693
  %707 = fadd fast float %704, %694
  %708 = fadd fast float %705, %695
  %709 = fmul fast float %706, 2.000000e+00
  %710 = fmul fast float %707, 2.000000e+00
  %711 = fadd fast float %709, -1.000000e+00
  %712 = fadd fast float %710, -1.000000e+00
  %713 = fmul fast float %711, %594
  %714 = call float @dx.op.tertiary.f32(i32 46, float %712, float %596, float %713)  ; FMad(a,b,c)
  %715 = fmul fast float %711, %595
  %716 = call float @dx.op.tertiary.f32(i32 46, float %712, float %597, float %715)  ; FMad(a,b,c)
  %717 = fmul fast float %589, %500
  %718 = fmul fast float %717, %608
  %719 = fmul fast float %718, %611
  %720 = fmul fast float %714, %719
  %721 = fmul fast float %720, %672
  %722 = fmul fast float %716, %719
  %723 = fmul fast float %722, %673
  %724 = fadd fast float %721, %563
  %725 = fadd fast float %723, %564
  %726 = add nuw nsw i32 %591, 64
  %727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.f32 %727, 0
  %729 = fmul fast float %728, %708
  %730 = extractvalue %dx.types.ResRet.f32 %727, 1
  %731 = fadd fast float %729, %730
  %732 = call float @dx.op.binary.f32(i32 35, float %562, float %731)  ; FMax(a,b)
  %733 = add nuw i32 %566, 1
  %734 = icmp eq i32 %733, %558
  br i1 %734, label %735, label %561

; <label>:735                                     ; preds = %561
  br label %736

; <label>:736                                     ; preds = %735, %0
  %737 = phi float [ 0.000000e+00, %0 ], [ %732, %735 ]
  %738 = phi float [ 0.000000e+00, %0 ], [ %724, %735 ]
  %739 = phi float [ 0.000000e+00, %0 ], [ %725, %735 ]
  %740 = call float @dx.op.dot3.f32(i32 55, float %738, float %739, float 1.000000e+00, float %738, float %739, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %741 = call float @dx.op.unary.f32(i32 25, float %740)  ; Rsqrt(value)
  %742 = fmul fast float %741, %738
  %743 = fmul fast float %741, %739
  %744 = fmul fast float %737, %364
  %745 = fadd fast float %744, %365
  %746 = call float @dx.op.unary.f32(i32 7, float %745)  ; Saturate(value)
  %747 = fadd fast float %746, %495
  %748 = fmul fast float %404, %283
  %749 = fadd fast float %748, %405
  %750 = call float @dx.op.binary.f32(i32 35, float %749, float 0.000000e+00)  ; FMax(a,b)
  %751 = fmul fast float %750, %397
  %752 = fadd fast float %751, %398
  %753 = call float @dx.op.unary.f32(i32 7, float %752)  ; Saturate(value)
  %754 = fmul fast float %753, %747
  %755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %756 = extractvalue %dx.types.CBufRet.f32 %755, 1
  %757 = fcmp fast oge float %754, %756
  %758 = and i32 %323, 2
  %759 = icmp ne i32 %758, 0
  %760 = and i1 %759, %757
  br i1 %760, label %761, label %988

; <label>:761                                     ; preds = %736
  %762 = add i32 %196, 0
  %763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %762, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %764 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %763, i32 0)  ; GetDimensions(handle,mipLevel)
  %765 = extractvalue %dx.types.Dimensions %764, 0
  %766 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %765)  ; FirstbitLo(value)
  %767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.i32 %767, 1
  %769 = sub nsw i32 %768, %766
  %770 = sitofp i32 %769 to float
  %771 = fsub fast float %357, %770
  %772 = call float @dx.op.binary.f32(i32 35, float %771, float 0.000000e+00)  ; FMax(a,b)
  %773 = fmul fast float %352, %202
  %774 = fmul fast float %352, %203
  %775 = fmul fast float %355, %64
  %776 = fmul fast float %355, %65
  %777 = call float @dx.op.unary.f32(i32 22, float %775)  ; Frc(value)
  %778 = call float @dx.op.unary.f32(i32 22, float %776)  ; Frc(value)
  %779 = fmul fast float %777, 2.000000e+00
  %780 = fmul fast float %778, 2.000000e+00
  %781 = fadd fast float %779, -1.000000e+00
  %782 = fadd fast float %780, -1.000000e+00
  %783 = call float @dx.op.unary.f32(i32 6, float %781)  ; FAbs(value)
  %784 = call float @dx.op.unary.f32(i32 6, float %782)  ; FAbs(value)
  %785 = fsub fast float 1.000000e+00, %783
  %786 = fmul fast float %785, %784
  %787 = fsub fast float %785, %786
  %788 = getelementptr [4 x float], [4 x float]* %77, i32 0, i32 0
  store float %787, float* %788, align 4, !tbaa !95, !noalias !104
  %789 = fmul fast float %784, %783
  %790 = fsub fast float %783, %789
  %791 = getelementptr [4 x float], [4 x float]* %77, i32 0, i32 1
  store float %790, float* %791, align 4, !tbaa !95, !noalias !104
  %792 = getelementptr [4 x float], [4 x float]* %77, i32 0, i32 2
  store float %786, float* %792, align 4, !tbaa !95, !noalias !104
  %793 = getelementptr [4 x float], [4 x float]* %77, i32 0, i32 3
  store float %789, float* %793, align 4, !tbaa !95, !noalias !104
  br label %794

; <label>:794                                     ; preds = %969, %761
  %795 = phi float [ 0.000000e+00, %761 ], [ %970, %969 ]
  %796 = phi float [ 0.000000e+00, %761 ], [ %971, %969 ]
  %797 = phi float [ 0.000000e+00, %761 ], [ %972, %969 ]
  %798 = phi float [ 0.000000e+00, %761 ], [ %973, %969 ]
  %799 = phi float [ 0.000000e+00, %761 ], [ %974, %969 ]
  %800 = phi i32 [ 0, %761 ], [ %975, %969 ]
  %801 = mul i32 %800, 2
  %802 = add i32 0, %801
  %803 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %802
  %804 = load float, float* %803, align 4
  %805 = mul i32 %800, 2
  %806 = add i32 1, %805
  %807 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %806
  %808 = load float, float* %807, align 4
  %809 = fmul fast float %804, 5.000000e-01
  %810 = fmul fast float %808, 5.000000e-01
  %811 = fsub fast float 1.000000e+00, %804
  %812 = fsub fast float 1.000000e+00, %808
  %813 = fmul fast float %811, 5.000000e-01
  %814 = fmul fast float %812, 5.000000e-01
  %815 = fadd fast float %809, %775
  %816 = fadd fast float %810, %776
  %817 = call float @dx.op.unary.f32(i32 27, float %815)  ; Round_ni(value)
  %818 = call float @dx.op.unary.f32(i32 27, float %816)  ; Round_ni(value)
  %819 = fadd fast float %817, %813
  %820 = fadd fast float %818, %814
  %821 = fmul fast float %819, %356
  %822 = fmul fast float %820, %356
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 0
  %825 = fmul fast float %821, %824
  %826 = fmul fast float %822, %824
  %827 = extractvalue %dx.types.CBufRet.f32 %823, 1
  %828 = fadd fast float %825, %827
  %829 = fadd fast float %826, %827
  %830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %763, %dx.types.Handle %53, float %828, float %829, float %193, float undef, i32 0, i32 0, i32 undef, float %772)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 0
  %832 = extractvalue %dx.types.ResRet.f32 %830, 1
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 3
  %835 = fmul fast float %834, 2.000000e+00
  %836 = fmul fast float %835, %831
  %837 = fmul fast float %835, %832
  %838 = fsub fast float %836, %834
  %839 = fsub fast float %837, %834
  %840 = fmul fast float %838, %838
  %841 = fmul fast float %839, %839
  %842 = fadd fast float %840, %841
  %843 = call float @dx.op.unary.f32(i32 24, float %842)  ; Sqrt(value)
  %844 = fcmp fast ogt float %843, 0.000000e+00
  %845 = fdiv fast float 1.000000e+00, %843
  %846 = fmul fast float %838, %845
  %847 = fmul fast float %839, %845
  %848 = select i1 %844, float %846, float 0.000000e+00
  %849 = select i1 %844, float %847, float 0.000000e+00
  %850 = fcmp fast ogt float %747, 0.000000e+00
  br i1 %850, label %851, label %969

; <label>:851                                     ; preds = %794
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 1
  %854 = fmul fast float %401, %352
  %855 = fmul fast float %843, %854
  %856 = fsub fast float -0.000000e+00, %848
  %857 = fmul fast float %849, %773
  %858 = call float @dx.op.tertiary.f32(i32 46, float %856, float %774, float %857)  ; FMad(a,b,c)
  %859 = fmul fast float %848, %773
  %860 = call float @dx.op.tertiary.f32(i32 46, float %849, float %774, float %859)  ; FMad(a,b,c)
  %861 = fmul fast float %855, %853
  %862 = fsub fast float %860, %861
  %863 = fmul fast float %858, %389
  %864 = fmul fast float %862, %390
  %865 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %866 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %497, %dx.types.Handle %865, float %863, float %864, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %867 = extractvalue %dx.types.ResRet.f32 %866, 0
  %868 = fmul fast float %751, %867
  %869 = fadd fast float %868, %398
  %870 = call float @dx.op.unary.f32(i32 7, float %869)  ; Saturate(value)
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 2
  %873 = fmul fast float %872, %72
  %874 = extractvalue %dx.types.CBufRet.f32 %871, 3
  %875 = fadd fast float %873, %874
  %876 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  %877 = fcmp fast ogt float %870, 0.000000e+00
  %878 = fcmp fast ogt float %876, 0.000000e+00
  %879 = and i1 %877, %878
  %880 = and i32 %323, 64
  %881 = icmp ne i32 %880, 0
  %882 = and i1 %881, %879
  br i1 %882, label %883, label %951

; <label>:883                                     ; preds = %851
  %884 = add i32 %465, 0
  %885 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %884, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %886 = add i32 %468, 0
  %887 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %886, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %888 = fmul fast float %858, %393
  %889 = fmul fast float %862, %394
  %890 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %885, %dx.types.Handle %865, float %888, float %889, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %891 = extractvalue %dx.types.ResRet.f32 %890, 0
  %892 = extractvalue %dx.types.ResRet.f32 %890, 1
  %893 = extractvalue %dx.types.ResRet.f32 %890, 2
  %894 = extractvalue %dx.types.ResRet.f32 %890, 3
  %895 = fmul fast float %891, %451
  %896 = fadd fast float %895, %452
  %897 = call float @dx.op.unary.f32(i32 7, float %896)  ; Saturate(value)
  %898 = fadd fast float %892, %894
  %899 = fmul fast float %898, %453
  %900 = fsub fast float %899, %453
  %901 = fsub fast float %892, %894
  %902 = fmul fast float %901, %453
  %903 = fmul fast float %900, %849
  %904 = call float @dx.op.tertiary.f32(i32 46, float %848, float %902, float %903)  ; FMad(a,b,c)
  %905 = fmul fast float %900, %856
  %906 = call float @dx.op.tertiary.f32(i32 46, float %849, float %902, float %905)  ; FMad(a,b,c)
  %907 = fmul fast float %904, %393
  %908 = fmul fast float %906, %394
  %909 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %887, %dx.types.Handle %865, float %888, float %889, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %910 = extractvalue %dx.types.ResRet.f32 %909, 0
  %911 = fsub fast float 1.000000e+00, %870
  %912 = bitcast float %870 to i32
  %913 = sitofp i32 %912 to float
  %914 = fadd fast float %913, 0xC1CFBF8940000000
  %915 = fmul fast float %914, %386
  %916 = fadd fast float %915, 0x41CFBF8940000000
  %917 = fptosi float %916 to i32
  %918 = bitcast i32 %917 to float
  %919 = bitcast float %911 to i32
  %920 = sitofp i32 %919 to float
  %921 = fadd fast float %920, 0xC1CFBF8940000000
  %922 = fmul fast float %921, %386
  %923 = fadd fast float %922, 0x41CFBF8940000000
  %924 = fptosi float %923 to i32
  %925 = bitcast i32 %924 to float
  %926 = fmul fast float %918, %383
  %927 = fmul fast float %925, %383
  %928 = fsub fast float %911, %926
  %929 = fadd fast float %927, %911
  %930 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %931 = call float @dx.op.unary.f32(i32 7, float %929)  ; Saturate(value)
  %932 = fsub fast float %910, %930
  %933 = fsub fast float %931, %930
  %934 = bitcast float %933 to i32
  %935 = sub nsw i32 2129859010, %934
  %936 = bitcast i32 %935 to float
  %937 = fmul fast float %936, %932
  %938 = call float @dx.op.unary.f32(i32 7, float %937)  ; Saturate(value)
  %939 = fmul fast float %876, %380
  %940 = fmul fast float %939, %938
  %941 = fmul fast float %907, %940
  %942 = fmul fast float %908, %940
  %943 = fadd fast float %893, -1.000000e+00
  %944 = fmul fast float %940, %943
  %945 = fadd fast float %944, 1.000000e+00
  %946 = fsub fast float %897, %374
  %947 = fmul fast float %940, %946
  %948 = fadd fast float %947, %374
  %949 = fmul fast float %940, %911
  %950 = fadd fast float %949, %870
  br label %951

; <label>:951                                     ; preds = %883, %851
  %952 = phi float [ %950, %883 ], [ %870, %851 ]
  %953 = phi float [ %948, %883 ], [ %374, %851 ]
  %954 = phi float [ %945, %883 ], [ 1.000000e+00, %851 ]
  %955 = phi float [ %941, %883 ], [ 0.000000e+00, %851 ]
  %956 = phi float [ %942, %883 ], [ 0.000000e+00, %851 ]
  %957 = getelementptr [4 x float], [4 x float]* %77, i32 0, i32 %800
  %958 = load float, float* %957, align 4, !tbaa !95, !noalias !104
  %959 = fmul fast float %958, %952
  %960 = fmul fast float %959, %955
  %961 = fmul fast float %959, %956
  %962 = fadd fast float %960, %795
  %963 = fadd fast float %961, %796
  %964 = fmul fast float %959, %954
  %965 = fadd fast float %964, %797
  %966 = fmul fast float %959, %953
  %967 = fadd fast float %966, %798
  %968 = fadd fast float %959, %799
  br label %969

; <label>:969                                     ; preds = %951, %794
  %970 = phi float [ %962, %951 ], [ %795, %794 ]
  %971 = phi float [ %963, %951 ], [ %796, %794 ]
  %972 = phi float [ %965, %951 ], [ %797, %794 ]
  %973 = phi float [ %967, %951 ], [ %798, %794 ]
  %974 = phi float [ %968, %951 ], [ %799, %794 ]
  %975 = add nuw nsw i32 %800, 1
  %976 = icmp eq i32 %975, 4
  br i1 %976, label %977, label %794, !llvm.loop !110

; <label>:977                                     ; preds = %969
  %978 = fmul fast float %974, %747
  %979 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %978)  ; FMax(a,b)
  %980 = fmul fast float %974, %970
  %981 = fmul fast float %974, %971
  %982 = fadd fast float %972, -1.000000e+00
  %983 = fmul fast float %974, %982
  %984 = fadd fast float %983, 1.000000e+00
  %985 = fsub fast float %973, %341
  %986 = fmul fast float %974, %985
  %987 = fadd fast float %986, %341
  br label %988

; <label>:988                                     ; preds = %977, %736
  %989 = phi float [ %979, %977 ], [ 0.000000e+00, %736 ]
  %990 = phi float [ %980, %977 ], [ 0.000000e+00, %736 ]
  %991 = phi float [ %981, %977 ], [ 0.000000e+00, %736 ]
  %992 = phi float [ %984, %977 ], [ 1.000000e+00, %736 ]
  %993 = phi float [ %987, %977 ], [ %341, %736 ]
  %994 = fmul fast float %437, %283
  %995 = fadd fast float %994, %438
  %996 = call float @dx.op.binary.f32(i32 35, float %995, float 0.000000e+00)  ; FMax(a,b)
  %997 = fmul fast float %996, %433
  %998 = fadd fast float %997, %434
  %999 = call float @dx.op.unary.f32(i32 7, float %998)  ; Saturate(value)
  %1000 = fmul fast float %999, %747
  %1001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1002 = extractvalue %dx.types.CBufRet.f32 %1001, 1
  %1003 = fcmp fast oge float %1000, %1002
  %1004 = and i32 %323, 4
  %1005 = icmp ne i32 %1004, 0
  %1006 = and i1 %1005, %1003
  br i1 %1006, label %1007, label %1296

; <label>:1007                                    ; preds = %988
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 0
  %1010 = extractvalue %dx.types.CBufRet.f32 %1008, 1
  %1011 = fsub fast float %135, %202
  %1012 = fadd fast float %1011, %1009
  %1013 = fsub fast float %136, %203
  %1014 = fadd fast float %1013, %1010
  %1015 = fmul fast float %1012, %408
  %1016 = fmul fast float %1014, %408
  %1017 = fadd fast float %1015, %202
  %1018 = fadd fast float %1016, %203
  %1019 = add i32 %471, 0
  %1020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1019, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1021 = fmul fast float %1017, %415
  %1022 = fmul fast float %1018, %415
  %1023 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1024 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1020, %dx.types.Handle %1023, float %1021, float %1022, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.ResRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.ResRet.f32 %1024, 2
  %1028 = fmul fast float %1025, 2.000000e+00
  %1029 = fmul fast float %1026, 2.000000e+00
  %1030 = fadd fast float %1028, -1.000000e+00
  %1031 = fadd fast float %1029, -1.000000e+00
  %1032 = fmul fast float %1027, %411
  %1033 = fmul fast float %1032, %424
  %1034 = fmul fast float %1033, %1030
  %1035 = fmul fast float %1033, %1031
  %1036 = fsub fast float %278, %1034
  %1037 = fsub fast float %279, %1035
  %1038 = fmul fast float %1036, %421
  %1039 = fmul fast float %1037, %421
  %1040 = fadd fast float %1038, %1034
  %1041 = fadd fast float %1039, %1035
  %1042 = fmul fast float %1040, %424
  %1043 = fmul fast float %1041, %424
  %1044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1045 = extractvalue %dx.types.CBufRet.f32 %1044, 1
  %1046 = fmul fast float %424, %175
  %1047 = fadd fast float %1045, %1046
  %1048 = fadd fast float %1047, %429
  %1049 = fmul fast float %1047, %428
  %1050 = call float @dx.op.unary.f32(i32 29, float %1049)  ; Round_z(value)
  %1051 = fmul fast float %1050, %427
  %1052 = fsub fast float %1047, %1051
  %1053 = fmul fast float %1048, %428
  %1054 = call float @dx.op.unary.f32(i32 29, float %1053)  ; Round_z(value)
  %1055 = fmul fast float %1054, %427
  %1056 = fsub fast float %1048, %1055
  %1057 = fmul fast float %1042, %1052
  %1058 = fmul fast float %1043, %1052
  %1059 = fmul fast float %1042, %1056
  %1060 = fmul fast float %1043, %1056
  %1061 = fsub fast float %1017, %1057
  %1062 = fsub fast float %1018, %1058
  %1063 = fsub fast float %1017, %1059
  %1064 = fsub fast float %1018, %1060
  %1065 = fsub fast float %429, %1052
  %1066 = call float @dx.op.unary.f32(i32 6, float %1065)  ; FAbs(value)
  %1067 = fmul fast float %1066, %430
  %1068 = call float @dx.op.unary.f32(i32 7, float %1067)  ; Saturate(value)
  %1069 = fmul fast float %1061, %412
  %1070 = fmul fast float %1062, %412
  %1071 = fmul fast float %1063, %412
  %1072 = fmul fast float %1064, %412
  %1073 = fcmp fast ogt float %418, 0.000000e+00
  br i1 %1073, label %1074, label %1161

; <label>:1074                                    ; preds = %1007
  %1075 = fmul fast float %418, %175
  %1076 = fmul fast float %1075, 5.000000e-01
  %1077 = fadd fast float %1076, 5.000000e-01
  %1078 = call float @dx.op.unary.f32(i32 22, float %1077)  ; Frc(value)
  %1079 = call float @dx.op.unary.f32(i32 22, float %1076)  ; Frc(value)
  %1080 = call float @dx.op.unary.f32(i32 27, float %1077)  ; Round_ni(value)
  %1081 = call float @dx.op.unary.f32(i32 27, float %1076)  ; Round_ni(value)
  %1082 = fmul fast float %1080, 2.000000e+00
  %1083 = fmul fast float %1081, 2.000000e+00
  %1084 = fadd fast float %1083, 1.000000e+00
  %1085 = fsub fast float 1.000000e+00, %1078
  %1086 = fsub fast float 1.000000e+00, %1079
  %1087 = call float @dx.op.binary.f32(i32 36, float %1078, float %1085)  ; FMin(a,b)
  %1088 = call float @dx.op.binary.f32(i32 36, float %1079, float %1086)  ; FMin(a,b)
  %1089 = fmul fast float %1087, 2.000000e+00
  %1090 = fmul fast float %1088, 2.000000e+00
  %1091 = call float @dx.op.dot3.f32(i32 55, float %1082, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1092 = call float @dx.op.dot3.f32(i32 55, float %1082, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1093 = call float @dx.op.dot3.f32(i32 55, float %1082, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1094 = call float @dx.op.unary.f32(i32 13, float %1091)  ; Sin(value)
  %1095 = call float @dx.op.unary.f32(i32 13, float %1092)  ; Sin(value)
  %1096 = call float @dx.op.unary.f32(i32 13, float %1093)  ; Sin(value)
  %1097 = fmul fast float %1094, 0x40E55DD180000000
  %1098 = fmul fast float %1095, 0x40E55DD180000000
  %1099 = fmul fast float %1096, 0x40E55DD180000000
  %1100 = call float @dx.op.unary.f32(i32 22, float %1097)  ; Frc(value)
  %1101 = call float @dx.op.unary.f32(i32 22, float %1098)  ; Frc(value)
  %1102 = call float @dx.op.unary.f32(i32 22, float %1099)  ; Frc(value)
  %1103 = fmul fast float %1100, 0x401921FB60000000
  %1104 = call float @dx.op.unary.f32(i32 12, float %1103)  ; Cos(value)
  %1105 = call float @dx.op.unary.f32(i32 13, float %1103)  ; Sin(value)
  %1106 = fsub fast float -0.000000e+00, %1105
  %1107 = call float @dx.op.dot3.f32(i32 55, float %1084, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1108 = call float @dx.op.dot3.f32(i32 55, float %1084, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1109 = call float @dx.op.dot3.f32(i32 55, float %1084, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1110 = call float @dx.op.unary.f32(i32 13, float %1107)  ; Sin(value)
  %1111 = call float @dx.op.unary.f32(i32 13, float %1108)  ; Sin(value)
  %1112 = call float @dx.op.unary.f32(i32 13, float %1109)  ; Sin(value)
  %1113 = fmul fast float %1110, 0x40E55DD180000000
  %1114 = fmul fast float %1111, 0x40E55DD180000000
  %1115 = fmul fast float %1112, 0x40E55DD180000000
  %1116 = call float @dx.op.unary.f32(i32 22, float %1113)  ; Frc(value)
  %1117 = call float @dx.op.unary.f32(i32 22, float %1114)  ; Frc(value)
  %1118 = call float @dx.op.unary.f32(i32 22, float %1115)  ; Frc(value)
  %1119 = fmul fast float %1116, 0x401921FB60000000
  %1120 = call float @dx.op.unary.f32(i32 12, float %1119)  ; Cos(value)
  %1121 = call float @dx.op.unary.f32(i32 13, float %1119)  ; Sin(value)
  %1122 = fsub fast float -0.000000e+00, %1121
  %1123 = fmul fast float %1104, %1069
  %1124 = call float @dx.op.tertiary.f32(i32 46, float %1070, float %1106, float %1123)  ; FMad(a,b,c)
  %1125 = fmul fast float %1105, %1069
  %1126 = call float @dx.op.tertiary.f32(i32 46, float %1070, float %1104, float %1125)  ; FMad(a,b,c)
  %1127 = fadd fast float %1124, %1101
  %1128 = fadd fast float %1126, %1102
  %1129 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %497, %dx.types.Handle %1023, float %1127, float %1128, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1130 = extractvalue %dx.types.ResRet.f32 %1129, 0
  %1131 = fmul fast float %1130, %1089
  %1132 = fmul fast float %1120, %1069
  %1133 = call float @dx.op.tertiary.f32(i32 46, float %1070, float %1122, float %1132)  ; FMad(a,b,c)
  %1134 = fmul fast float %1121, %1069
  %1135 = call float @dx.op.tertiary.f32(i32 46, float %1070, float %1120, float %1134)  ; FMad(a,b,c)
  %1136 = fadd fast float %1133, %1117
  %1137 = fadd fast float %1135, %1118
  %1138 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %497, %dx.types.Handle %1023, float %1136, float %1137, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = fmul fast float %1139, %1090
  %1141 = fadd fast float %1140, %1131
  %1142 = fmul fast float %1104, %1071
  %1143 = call float @dx.op.tertiary.f32(i32 46, float %1072, float %1106, float %1142)  ; FMad(a,b,c)
  %1144 = fmul fast float %1105, %1071
  %1145 = call float @dx.op.tertiary.f32(i32 46, float %1072, float %1104, float %1144)  ; FMad(a,b,c)
  %1146 = fadd fast float %1143, %1101
  %1147 = fadd fast float %1145, %1102
  %1148 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %497, %dx.types.Handle %1023, float %1146, float %1147, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1149 = extractvalue %dx.types.ResRet.f32 %1148, 0
  %1150 = fmul fast float %1149, %1089
  %1151 = fmul fast float %1120, %1071
  %1152 = call float @dx.op.tertiary.f32(i32 46, float %1072, float %1122, float %1151)  ; FMad(a,b,c)
  %1153 = fmul fast float %1121, %1071
  %1154 = call float @dx.op.tertiary.f32(i32 46, float %1072, float %1120, float %1153)  ; FMad(a,b,c)
  %1155 = fadd fast float %1152, %1117
  %1156 = fadd fast float %1154, %1118
  %1157 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %497, %dx.types.Handle %1023, float %1155, float %1156, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1158 = extractvalue %dx.types.ResRet.f32 %1157, 0
  %1159 = fmul fast float %1158, %1090
  %1160 = fadd fast float %1159, %1150
  br label %1166

; <label>:1161                                    ; preds = %1007
  %1162 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %497, %dx.types.Handle %1023, float %1069, float %1070, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1163 = extractvalue %dx.types.ResRet.f32 %1162, 0
  %1164 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %497, %dx.types.Handle %1023, float %1071, float %1072, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  br label %1166

; <label>:1166                                    ; preds = %1161, %1074
  %1167 = phi float [ %1141, %1074 ], [ %1163, %1161 ]
  %1168 = phi float [ %1160, %1074 ], [ %1165, %1161 ]
  %1169 = fsub fast float %1168, %1167
  %1170 = fmul fast float %1169, %1068
  %1171 = fadd fast float %1170, %1167
  %1172 = fmul fast float %997, %1171
  %1173 = fadd fast float %1172, %434
  %1174 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 2
  %1177 = fmul fast float %1176, %72
  %1178 = extractvalue %dx.types.CBufRet.f32 %1175, 3
  %1179 = fadd fast float %1177, %1178
  %1180 = call float @dx.op.unary.f32(i32 7, float %1179)  ; Saturate(value)
  %1181 = fcmp fast ogt float %1174, 0.000000e+00
  %1182 = fcmp fast ogt float %1180, 0.000000e+00
  %1183 = and i1 %1181, %1182
  %1184 = and i32 %323, 64
  %1185 = icmp ne i32 %1184, 0
  %1186 = and i1 %1185, %1183
  br i1 %1186, label %1187, label %1276

; <label>:1187                                    ; preds = %1166
  %1188 = add i32 %465, 0
  %1189 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1188, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1190 = fmul fast float %1069, %441
  %1191 = fmul fast float %1070, %442
  %1192 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1189, %dx.types.Handle %1023, float %1190, float %1191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  %1194 = extractvalue %dx.types.ResRet.f32 %1192, 1
  %1195 = extractvalue %dx.types.ResRet.f32 %1192, 2
  %1196 = extractvalue %dx.types.ResRet.f32 %1192, 3
  %1197 = fmul fast float %1193, %451
  %1198 = fadd fast float %1197, %452
  %1199 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1200 = fadd fast float %1194, %1196
  %1201 = fmul fast float %1200, %453
  %1202 = fsub fast float %1201, %453
  %1203 = fsub fast float %1194, %1196
  %1204 = fmul fast float %1071, %441
  %1205 = fmul fast float %1072, %442
  %1206 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1189, %dx.types.Handle %1023, float %1204, float %1205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1207 = extractvalue %dx.types.ResRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.ResRet.f32 %1206, 1
  %1209 = extractvalue %dx.types.ResRet.f32 %1206, 2
  %1210 = extractvalue %dx.types.ResRet.f32 %1206, 3
  %1211 = fmul fast float %1207, %451
  %1212 = fadd fast float %1211, %452
  %1213 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  %1214 = fsub fast float %1210, %1200
  %1215 = fadd fast float %1214, %1208
  %1216 = fsub fast float -0.000000e+00, %1203
  %1217 = fsub fast float %1216, %1210
  %1218 = fadd fast float %1217, %1208
  %1219 = fmul fast float %1068, %453
  %1220 = fmul fast float %1219, %1215
  %1221 = fmul fast float %1218, %1068
  %1222 = fadd fast float %1220, %1202
  %1223 = fmul fast float %441, %1222
  %1224 = fadd fast float %1221, %1203
  %1225 = fmul fast float %453, %1224
  %1226 = fmul fast float %442, %1225
  %1227 = fsub fast float %1209, %1195
  %1228 = fmul fast float %1227, %1068
  %1229 = fsub fast float %1213, %1199
  %1230 = fmul fast float %1229, %1068
  %1231 = fsub fast float %1207, %1193
  %1232 = fmul fast float %1231, %1068
  %1233 = fsub fast float 1.000000e+00, %1174
  %1234 = bitcast float %1174 to i32
  %1235 = sitofp i32 %1234 to float
  %1236 = fadd fast float %1235, 0xC1CFBF8940000000
  %1237 = fmul fast float %1236, %386
  %1238 = fadd fast float %1237, 0x41CFBF8940000000
  %1239 = fptosi float %1238 to i32
  %1240 = bitcast i32 %1239 to float
  %1241 = bitcast float %1233 to i32
  %1242 = sitofp i32 %1241 to float
  %1243 = fadd fast float %1242, 0xC1CFBF8940000000
  %1244 = fmul fast float %1243, %386
  %1245 = fadd fast float %1244, 0x41CFBF8940000000
  %1246 = fptosi float %1245 to i32
  %1247 = bitcast i32 %1246 to float
  %1248 = fmul fast float %1240, %383
  %1249 = fmul fast float %1247, %383
  %1250 = fsub fast float %1233, %1248
  %1251 = fadd fast float %1249, %1233
  %1252 = call float @dx.op.unary.f32(i32 7, float %1250)  ; Saturate(value)
  %1253 = call float @dx.op.unary.f32(i32 7, float %1251)  ; Saturate(value)
  %1254 = fsub fast float %1193, %1252
  %1255 = fadd fast float %1254, %1232
  %1256 = fsub fast float %1253, %1252
  %1257 = bitcast float %1256 to i32
  %1258 = sub nsw i32 2129859010, %1257
  %1259 = bitcast i32 %1258 to float
  %1260 = fmul fast float %1259, %1255
  %1261 = call float @dx.op.unary.f32(i32 7, float %1260)  ; Saturate(value)
  %1262 = fmul fast float %1180, %380
  %1263 = fmul fast float %1262, %1261
  %1264 = fmul fast float %1223, %1263
  %1265 = fmul fast float %1226, %1263
  %1266 = fadd fast float %1195, -1.000000e+00
  %1267 = fadd fast float %1266, %1228
  %1268 = fmul fast float %1263, %1267
  %1269 = fadd fast float %1268, 1.000000e+00
  %1270 = fsub fast float %1199, %374
  %1271 = fadd fast float %1270, %1230
  %1272 = fmul fast float %1263, %1271
  %1273 = fadd fast float %1272, %374
  %1274 = fmul fast float %1263, %1233
  %1275 = fadd fast float %1274, %1174
  br label %1276

; <label>:1276                                    ; preds = %1187, %1166
  %1277 = phi float [ %1275, %1187 ], [ %1174, %1166 ]
  %1278 = phi float [ %1264, %1187 ], [ 0.000000e+00, %1166 ]
  %1279 = phi float [ %1265, %1187 ], [ 0.000000e+00, %1166 ]
  %1280 = phi float [ %1269, %1187 ], [ 1.000000e+00, %1166 ]
  %1281 = phi float [ %1273, %1187 ], [ %374, %1166 ]
  %1282 = fsub fast float %1278, %990
  %1283 = fsub fast float %1279, %991
  %1284 = fmul fast float %1282, %1277
  %1285 = fmul fast float %1283, %1277
  %1286 = fadd fast float %1284, %990
  %1287 = fadd fast float %1285, %991
  %1288 = fsub fast float %1280, %992
  %1289 = fmul fast float %1288, %1277
  %1290 = fadd fast float %1289, %992
  %1291 = fsub fast float %1281, %993
  %1292 = fmul fast float %1291, %1277
  %1293 = fadd fast float %1292, %993
  %1294 = fmul fast float %1277, %747
  %1295 = call float @dx.op.binary.f32(i32 35, float %989, float %1294)  ; FMax(a,b)
  br label %1296

; <label>:1296                                    ; preds = %1276, %988
  %1297 = phi float [ %1295, %1276 ], [ %989, %988 ]
  %1298 = phi float [ %1286, %1276 ], [ %990, %988 ]
  %1299 = phi float [ %1287, %1276 ], [ %991, %988 ]
  %1300 = phi float [ %1290, %1276 ], [ %992, %988 ]
  %1301 = phi float [ %1293, %1276 ], [ %993, %988 ]
  %1302 = and i32 %323, 16
  %1303 = icmp eq i32 %1302, 0
  br i1 %1303, label %1370, label %1304

; <label>:1304                                    ; preds = %1296
  %1305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1305, 0
  %1307 = extractvalue %dx.types.CBufRet.f32 %1305, 1
  %1308 = fadd fast float %1306, %135
  %1309 = fadd fast float %1307, %136
  %1310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1311 = extractvalue %dx.types.CBufRet.f32 %1310, 0
  %1312 = extractvalue %dx.types.CBufRet.f32 %1310, 1
  %1313 = fsub fast float %1308, %1311
  %1314 = fsub fast float %1309, %1312
  %1315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1316 = extractvalue %dx.types.CBufRet.f32 %1315, 2
  %1317 = fmul fast float %1313, %1316
  %1318 = fmul fast float %1314, %1316
  %1319 = fadd fast float %1317, 5.000000e-01
  %1320 = fadd fast float %1318, 5.000000e-01
  %1321 = fcmp fast olt float %1319, 0.000000e+00
  %1322 = fcmp fast olt float %1320, 0.000000e+00
  %1323 = or i1 %1321, %1322
  %1324 = fcmp fast oge float %1319, 1.000000e+00
  %1325 = fcmp fast oge float %1320, 1.000000e+00
  %1326 = or i1 %1324, %1325
  %1327 = or i1 %1323, %1326
  br i1 %1327, label %1361, label %1328

; <label>:1328                                    ; preds = %1304
  %1329 = extractvalue %dx.types.CBufRet.f32 %1305, 2
  %1330 = fadd fast float %1329, %137
  %1331 = fmul fast float %1316, %1308
  %1332 = fmul fast float %1316, %1309
  %1333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %1334 = extractvalue %dx.types.CBufRet.f32 %1333, 2
  %1335 = fsub fast float %1330, %1334
  %1336 = extractvalue %dx.types.CBufRet.f32 %1333, 1
  %1337 = fmul fast float %1335, %1336
  %1338 = call float @dx.op.unary.f32(i32 7, float %1337)  ; Saturate(value)
  %1339 = call float @dx.op.binary.f32(i32 36, float %1320, float %1338)  ; FMin(a,b)
  %1340 = call float @dx.op.binary.f32(i32 36, float %1319, float %1339)  ; FMin(a,b)
  %1341 = call float @dx.op.binary.f32(i32 35, float %1320, float %1338)  ; FMax(a,b)
  %1342 = call float @dx.op.binary.f32(i32 35, float %1319, float %1341)  ; FMax(a,b)
  %1343 = fsub fast float 1.000000e+00, %1342
  %1344 = call float @dx.op.binary.f32(i32 36, float %1340, float %1343)  ; FMin(a,b)
  %1345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %1346 = extractvalue %dx.types.CBufRet.f32 %1345, 3
  %1347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %1348 = extractvalue %dx.types.CBufRet.f32 %1347, 1
  %1349 = call float @dx.op.binary.f32(i32 35, float %1348, float %1346)  ; FMax(a,b)
  %1350 = fsub fast float %1349, %1348
  %1351 = fsub fast float %1344, %1348
  %1352 = fdiv fast float %1351, %1350
  %1353 = call float @dx.op.unary.f32(i32 7, float %1352)  ; Saturate(value)
  %1354 = fmul fast float %1353, 2.000000e+00
  %1355 = fsub fast float 3.000000e+00, %1354
  %1356 = fmul fast float %1353, %1353
  %1357 = fmul fast float %1356, %1355
  %1358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %51, float %1331, float %1332, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 0
  %1360 = fmul fast float %1357, %1359
  br label %1361

; <label>:1361                                    ; preds = %1328, %1304
  %1362 = phi float [ %1360, %1328 ], [ 0.000000e+00, %1304 ]
  %1363 = fmul fast float %448, %202
  %1364 = fmul fast float %448, %203
  %1365 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1366 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %497, %dx.types.Handle %1365, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1367 = extractvalue %dx.types.ResRet.f32 %1366, 0
  %1368 = fmul fast float %1367, %1362
  %1369 = call float @dx.op.binary.f32(i32 35, float %1297, float %1368)  ; FMax(a,b)
  br label %1370

; <label>:1370                                    ; preds = %1361, %1296
  %1371 = phi float [ %1369, %1361 ], [ %1297, %1296 ]
  %1372 = and i32 %323, 8
  %1373 = icmp eq i32 %1372, 0
  br i1 %1373, label %1390, label %1374

; <label>:1374                                    ; preds = %1370
  %1375 = fadd fast float %445, 1.000000e+00
  %1376 = fmul fast float %747, %1375
  %1377 = fsub fast float %1376, %445
  %1378 = fsub fast float %1375, %1377
  %1379 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1380 = fsub fast float 1.000000e+00, %1376
  %1381 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1382 = fsub fast float %1379, %1381
  %1383 = fsub fast float %1371, %1381
  %1384 = fdiv fast float %1383, %1382
  %1385 = call float @dx.op.unary.f32(i32 7, float %1384)  ; Saturate(value)
  %1386 = fmul fast float %1385, 2.000000e+00
  %1387 = fsub fast float 3.000000e+00, %1386
  %1388 = fmul fast float %1385, %1385
  %1389 = fmul fast float %1388, %1387
  br label %1390

; <label>:1390                                    ; preds = %1374, %1370
  %1391 = phi float [ %1389, %1374 ], [ %1371, %1370 ]
  %1392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1393 = extractvalue %dx.types.CBufRet.f32 %1392, 3
  %1394 = fmul fast float %1393, %1391
  %1395 = call float @dx.op.unary.f32(i32 7, float %1394)  ; Saturate(value)
  %1396 = and i32 %323, 32
  %1397 = icmp eq i32 %1396, 0
  br i1 %1397, label %1414, label %1398

; <label>:1398                                    ; preds = %1390
  %1399 = add i32 %462, 0
  %1400 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1399, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1400, %dx.types.Handle %52, float %1394, float %377, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1402 = extractvalue %dx.types.ResRet.f32 %1401, 0
  %1403 = extractvalue %dx.types.ResRet.f32 %1401, 1
  %1404 = extractvalue %dx.types.ResRet.f32 %1401, 2
  %1405 = extractvalue %dx.types.ResRet.f32 %1401, 3
  %1406 = and i32 %456, 255
  %1407 = uitofp i32 %1406 to float
  %1408 = lshr i32 %456, 8
  %1409 = and i32 %1408, 255
  %1410 = uitofp i32 %1409 to float
  %1411 = fmul fast float %1405, %1407
  %1412 = fadd fast float %1411, %1410
  %1413 = fmul fast float %1412, 0x3F70101000000000
  br label %1414

; <label>:1414                                    ; preds = %1398, %1390
  %1415 = phi float [ %1402, %1398 ], [ %368, %1390 ]
  %1416 = phi float [ %1403, %1398 ], [ %369, %1390 ]
  %1417 = phi float [ %1404, %1398 ], [ %370, %1390 ]
  %1418 = phi float [ %1413, %1398 ], [ %371, %1390 ]
  %1419 = fsub fast float %1415, %335
  %1420 = fsub fast float %1416, %336
  %1421 = fsub fast float %1417, %337
  %1422 = fmul fast float %1419, %1394
  %1423 = fmul fast float %1420, %1394
  %1424 = fmul fast float %1421, %1394
  %1425 = fadd fast float %1422, %335
  %1426 = fadd fast float %1423, %336
  %1427 = fadd fast float %1424, %337
  %1428 = fsub fast float %1418, %338
  %1429 = fmul fast float %1428, %1394
  %1430 = fadd fast float %1429, %338
  %1431 = fsub fast float %1301, %341
  %1432 = fmul fast float %1394, %1431
  %1433 = fadd fast float %1432, %341
  %1434 = fadd fast float %1300, -1.000000e+00
  %1435 = fmul fast float %1394, %1434
  %1436 = fadd fast float %1435, 1.000000e+00
  %1437 = fmul fast float %1394, %1298
  %1438 = fmul fast float %1394, %1299
  %1439 = fadd fast float %1437, %742
  %1440 = fadd fast float %1438, %743
  %1441 = fmul fast float %344, %309
  %1442 = fadd fast float %1441, %345
  %1443 = and i32 %160, 65535
  %1444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1443)  ; LegacyF16ToF32(value)
  %1445 = lshr i32 %162, 16
  %1446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1445)  ; LegacyF16ToF32(value)
  %1447 = fadd fast float %1425, %1444
  %1448 = fadd fast float %1426, %1446
  %1449 = fadd fast float %1427, %1444
  %1450 = fadd fast float %1430, %1446
  %1451 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1447)  ; LegacyF32ToF16(value)
  %1452 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1448)  ; LegacyF32ToF16(value)
  %1453 = shl i32 %1452, 16
  %1454 = or i32 %1453, %1451
  %1455 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1449)  ; LegacyF32ToF16(value)
  %1456 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1450)  ; LegacyF32ToF16(value)
  %1457 = shl i32 %1456, 16
  %1458 = or i32 %1457, %1455
  %1459 = fadd fast float %1436, %1444
  %1460 = fadd fast float %1433, %1446
  %1461 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1459)  ; LegacyF32ToF16(value)
  %1462 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1460)  ; LegacyF32ToF16(value)
  %1463 = shl i32 %1462, 16
  %1464 = or i32 %1463, %1461
  %1465 = fcmp fast ogt float %1442, 0.000000e+00
  %1466 = select i1 %1465, float 1.000000e+00, float 0.000000e+00
  %1467 = fadd fast float %1444, %1442
  %1468 = fadd fast float %1446, %1466
  %1469 = call float @dx.op.unary.f32(i32 7, float %1467)  ; Saturate(value)
  %1470 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  %1471 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1469)  ; LegacyF32ToF16(value)
  %1472 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1470)  ; LegacyF32ToF16(value)
  %1473 = shl i32 %1472, 16
  %1474 = or i32 %1473, %1471
  %1475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1476 = extractvalue %dx.types.CBufRet.f32 %1475, 0
  %1477 = extractvalue %dx.types.CBufRet.f32 %1475, 1
  %1478 = extractvalue %dx.types.CBufRet.f32 %1475, 2
  %1479 = fadd fast float %1476, %135
  %1480 = fadd fast float %1477, %136
  %1481 = fadd fast float %1478, %137
  %1482 = call float @dx.op.unary.f32(i32 83, float %1479)  ; DerivCoarseX(value)
  %1483 = call float @dx.op.unary.f32(i32 83, float %1480)  ; DerivCoarseX(value)
  %1484 = call float @dx.op.unary.f32(i32 83, float %1481)  ; DerivCoarseX(value)
  %1485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1486 = extractvalue %dx.types.CBufRet.f32 %1485, 2
  %1487 = fmul fast float %1486, %1482
  %1488 = fmul fast float %1486, %1483
  %1489 = fmul fast float %1486, %1484
  %1490 = call float @dx.op.unary.f32(i32 84, float %1479)  ; DerivCoarseY(value)
  %1491 = call float @dx.op.unary.f32(i32 84, float %1480)  ; DerivCoarseY(value)
  %1492 = call float @dx.op.unary.f32(i32 84, float %1481)  ; DerivCoarseY(value)
  %1493 = fmul fast float %1486, %1490
  %1494 = fmul fast float %1486, %1491
  %1495 = fmul fast float %1486, %1492
  %1496 = fmul fast float %1495, %1488
  %1497 = fmul fast float %1494, %1489
  %1498 = fsub fast float %1496, %1497
  %1499 = fmul fast float %1493, %1489
  %1500 = fmul fast float %1495, %1487
  %1501 = fsub fast float %1499, %1500
  %1502 = fmul fast float %1494, %1487
  %1503 = fmul fast float %1493, %1488
  %1504 = fsub fast float %1502, %1503
  %1505 = add nuw nsw i32 %321, 832
  %1506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.f32 %1506, 0
  %1508 = add nuw nsw i32 %321, 836
  %1509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.f32 %1509, 0
  %1511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1512 = extractvalue %dx.types.CBufRet.f32 %1511, 0
  %1513 = fmul fast float %1512, %1510
  %1514 = extractvalue %dx.types.CBufRet.f32 %1511, 1
  %1515 = fadd fast float %1513, %1514
  %1516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 210)  ; CBufferLoadLegacy(handle,regIndex)
  %1517 = extractvalue %dx.types.CBufRet.f32 %1516, 0
  %1518 = fadd fast float %1517, %1507
  %1519 = fcmp fast ogt float %1515, 0.000000e+00
  %1520 = fcmp fast ogt float %1395, %1518
  %1521 = and i1 %1519, %1520
  br i1 %1521, label %1522, label %1599

; <label>:1522                                    ; preds = %1414
  %1523 = fmul fast float %1498, %1498
  %1524 = fmul fast float %1501, %1501
  %1525 = fadd fast float %1523, %1524
  %1526 = fmul fast float %1504, %1504
  %1527 = fadd fast float %1525, %1526
  %1528 = call float @dx.op.unary.f32(i32 24, float %1527)  ; Sqrt(value)
  %1529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1530 = extractvalue %dx.types.CBufRet.f32 %1529, 3
  %1531 = fmul fast float %1479, 7.000000e+00
  %1532 = fadd fast float %1531, 9.175040e+05
  %1533 = fmul fast float %1480, 9.000000e+00
  %1534 = fadd fast float %1533, 1.179648e+06
  %1535 = fmul fast float %1530, 1.370000e+02
  %1536 = bitcast float %1532 to i32
  %1537 = bitcast float %1534 to i32
  %1538 = bitcast float %1535 to i32
  %1539 = shl i32 %1537, 17
  %1540 = xor i32 %1539, %1536
  %1541 = xor i32 %1540, %1538
  %1542 = xor i32 %1541, 61
  %1543 = lshr i32 %1541, 16
  %1544 = xor i32 %1542, %1543
  %1545 = mul i32 %1544, 9
  %1546 = lshr i32 %1545, 4
  %1547 = xor i32 %1546, %1545
  %1548 = mul i32 %1547, 668265261
  %1549 = lshr i32 %1548, 15
  %1550 = xor i32 %1549, %1548
  %1551 = uitofp i32 %1550 to float
  %1552 = fmul fast float %1551, 0x3DF0000000000000
  %1553 = fmul fast float %1528, %1515
  %1554 = fcmp fast ugt float %1552, %1553
  br i1 %1554, label %1599, label %1555

; <label>:1555                                    ; preds = %1522
  %1556 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 0, i32 undef, i32 6)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1557 = add i32 %1556, 6
  %1558 = icmp ugt i32 %1557, 4095
  br i1 %1558, label %1559, label %1562

; <label>:1559                                    ; preds = %1555
  %1560 = icmp ult i32 %1556, 4096
  br i1 %1560, label %1561, label %1562

; <label>:1561                                    ; preds = %1559
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1556, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1562

; <label>:1562                                    ; preds = %1561, %1559, %1555
  %1563 = phi i32 [ %1556, %1555 ], [ 0, %1561 ], [ 0, %1559 ]
  %1564 = icmp eq i32 %1563, 0
  br i1 %1564, label %1599, label %1565

; <label>:1565                                    ; preds = %1562
  %1566 = fsub fast float -0.000000e+00, %209
  %1567 = fsub fast float %1566, %258
  %1568 = fadd fast float %1567, %1481
  %1569 = shl nuw nsw i32 %320, 16
  %1570 = or i32 %1569, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1563, i32 0, i32 %1570, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1571 = bitcast float %1568 to i32
  %1572 = add i32 %1563, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1572, i32 0, i32 %1571, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1573 = bitcast float %1479 to i32
  %1574 = add i32 %1563, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1574, i32 0, i32 %1573, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1575 = bitcast float %1480 to i32
  %1576 = add i32 %1563, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1576, i32 0, i32 %1575, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1577 = bitcast float %1481 to i32
  %1578 = add i32 %1563, 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1578, i32 0, i32 %1577, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1579 = fadd fast float %99, 1.000000e+00
  %1580 = fadd fast float %100, 1.000000e+00
  %1581 = fadd fast float %101, 1.000000e+00
  %1582 = fmul fast float %1579, 5.000000e-01
  %1583 = fmul fast float %1580, 5.000000e-01
  %1584 = fmul fast float %1581, 5.000000e-01
  %1585 = call float @dx.op.unary.f32(i32 7, float %1582)  ; Saturate(value)
  %1586 = call float @dx.op.unary.f32(i32 7, float %1583)  ; Saturate(value)
  %1587 = call float @dx.op.unary.f32(i32 7, float %1584)  ; Saturate(value)
  %1588 = fmul fast float %1585, 1.023000e+03
  %1589 = fmul fast float %1586, 1.023000e+03
  %1590 = fmul fast float %1587, 1.023000e+03
  %1591 = fptoui float %1588 to i32
  %1592 = fptoui float %1589 to i32
  %1593 = fptoui float %1590 to i32
  %1594 = shl i32 %1592, 10
  %1595 = or i32 %1594, %1591
  %1596 = shl i32 %1593, 20
  %1597 = or i32 %1595, %1596
  %1598 = add i32 %1563, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1598, i32 0, i32 %1597, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1599

; <label>:1599                                    ; preds = %1565, %1562, %1522, %1414
  %1600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1601 = extractvalue %dx.types.CBufRet.f32 %1600, 2
  %1602 = fmul fast float %1601, 0x3FE3C6EF40000000
  %1603 = frem fast float %80, 2.560000e+02
  %1604 = frem fast float %81, 2.560000e+02
  %1605 = fptoui float %1603 to i32
  %1606 = fptoui float %1604 to i32
  %1607 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %31, i32 0, i32 %1605, i32 %1606, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1608 = extractvalue %dx.types.ResRet.f32 %1607, 0
  %1609 = fadd fast float %1608, %1602
  %1610 = call float @dx.op.unary.f32(i32 22, float %1609)  ; Frc(value)
  %1611 = fcmp fast ogt float %101, 0.000000e+00
  %1612 = fcmp fast olt float %101, 0.000000e+00
  %1613 = zext i1 %1611 to i32
  %1614 = zext i1 %1612 to i32
  %1615 = sub nsw i32 %1613, %1614
  %1616 = sitofp i32 %1615 to float
  %1617 = fadd fast float %1616, %101
  %1618 = fdiv fast float -1.000000e+00, %1617
  %1619 = fmul fast float %99, %100
  %1620 = fmul fast float %1619, %1618
  %1621 = fmul fast float %99, %99
  %1622 = fmul fast float %1621, %1616
  %1623 = fmul fast float %1622, %1618
  %1624 = fadd fast float %1623, 1.000000e+00
  %1625 = fmul fast float %1620, %1616
  %1626 = fmul fast float %99, %1616
  %1627 = fsub fast float -0.000000e+00, %1626
  %1628 = fmul fast float %100, %100
  %1629 = fmul fast float %1628, %1618
  %1630 = fadd fast float %1629, %1616
  %1631 = fsub fast float -0.000000e+00, %100
  %1632 = and i32 %1451, 65535
  %1633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1632)  ; LegacyF16ToF32(value)
  %1634 = lshr i32 %1454, 16
  %1635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1634)  ; LegacyF16ToF32(value)
  %1636 = and i32 %1455, 65535
  %1637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1636)  ; LegacyF16ToF32(value)
  %1638 = lshr i32 %1458, 16
  %1639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1638)  ; LegacyF16ToF32(value)
  %1640 = and i32 %1461, 65535
  %1641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1640)  ; LegacyF16ToF32(value)
  %1642 = lshr i32 %1464, 16
  %1643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1642)  ; LegacyF16ToF32(value)
  %1644 = call float @dx.op.unary.f32(i32 7, float %1643)  ; Saturate(value)
  %1645 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %1646 = call float @dx.op.unary.f32(i32 83, float %136)  ; DerivCoarseX(value)
  %1647 = call float @dx.op.unary.f32(i32 83, float %137)  ; DerivCoarseX(value)
  %1648 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %1649 = call float @dx.op.unary.f32(i32 84, float %136)  ; DerivCoarseY(value)
  %1650 = call float @dx.op.unary.f32(i32 84, float %137)  ; DerivCoarseY(value)
  %1651 = fadd fast float %1645, %135
  %1652 = fadd fast float %1646, %136
  %1653 = fadd fast float %1647, %137
  %1654 = fadd fast float %1648, %135
  %1655 = fadd fast float %1649, %136
  %1656 = fadd fast float %1650, %137
  %1657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1658 = extractvalue %dx.types.CBufRet.f32 %1657, 0
  %1659 = extractvalue %dx.types.CBufRet.f32 %1657, 1
  %1660 = extractvalue %dx.types.CBufRet.f32 %1657, 2
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 2
  %1663 = extractvalue %dx.types.CBufRet.f32 %1661, 3
  %1664 = fmul fast float %1658, %80
  %1665 = fmul fast float %1664, %1662
  %1666 = fmul fast float %1659, %81
  %1667 = fmul fast float %1666, %1663
  %1668 = fptoui float %1665 to i32
  %1669 = fptoui float %1667 to i32
  %1670 = fadd fast float %1658, -1.000000e+00
  %1671 = fadd fast float %1659, -1.000000e+00
  %1672 = fptoui float %1670 to i32
  %1673 = fptoui float %1671 to i32
  %1674 = call i32 @dx.op.binary.i32(i32 40, i32 %1668, i32 %1672)  ; UMin(a,b)
  %1675 = call i32 @dx.op.binary.i32(i32 40, i32 %1669, i32 %1673)  ; UMin(a,b)
  %1676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1677 = extractvalue %dx.types.CBufRet.f32 %1676, 2
  %1678 = extractvalue %dx.types.CBufRet.f32 %1676, 3
  %1679 = fmul fast float %1677, %72
  %1680 = fsub fast float %1679, %1678
  %1681 = fadd fast float %1660, -1.000000e+00
  %1682 = call float @dx.op.binary.f32(i32 36, float %1680, float %1681)  ; FMin(a,b)
  %1683 = fptoui float %1682 to i32
  %1684 = fptoui float %1658 to i32
  %1685 = fptoui float %1659 to i32
  %1686 = mul i32 %1683, %1685
  %1687 = add i32 %1686, %1675
  %1688 = mul i32 %1687, %1684
  %1689 = add i32 %1688, %1674
  %1690 = shl i32 %1689, 2
  %1691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1690, i32 undef)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.i32 %1691, 0
  %1693 = and i32 %1692, 1023
  %1694 = lshr i32 %1692, 10
  %1695 = icmp eq i32 %1693, 0
  br i1 %1695, label %2085, label %1696

; <label>:1696                                    ; preds = %1599
  %1697 = and i32 %1692, 1023
  br label %1698

; <label>:1698                                    ; preds = %1817, %1696
  %1699 = phi float [ %1818, %1817 ], [ 0.000000e+00, %1696 ]
  %1700 = phi float [ %1819, %1817 ], [ 0.000000e+00, %1696 ]
  %1701 = phi float [ %1820, %1817 ], [ 0.000000e+00, %1696 ]
  %1702 = phi float [ %1821, %1817 ], [ %1439, %1696 ]
  %1703 = phi float [ %1822, %1817 ], [ %1440, %1696 ]
  %1704 = phi float [ %1823, %1817 ], [ %1641, %1696 ]
  %1705 = phi float [ %1824, %1817 ], [ %1644, %1696 ]
  %1706 = phi float [ %1825, %1817 ], [ %1639, %1696 ]
  %1707 = phi float [ %1826, %1817 ], [ %1633, %1696 ]
  %1708 = phi float [ %1827, %1817 ], [ %1635, %1696 ]
  %1709 = phi float [ %1828, %1817 ], [ %1637, %1696 ]
  %1710 = phi i32 [ %1766, %1817 ], [ 0, %1696 ]
  %1711 = add nuw nsw i32 %1710, %1694
  %1712 = shl i32 %1711, 2
  %1713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1714 = extractvalue %dx.types.ResRet.i32 %1713, 0
  %1715 = shl i32 %1714, 8
  %1716 = or i32 %1715, 48
  %1717 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1716, i32 undef)  ; BufferLoad(srv,index,wot)
  %1718 = extractvalue %dx.types.ResRet.f32 %1717, 0
  %1719 = extractvalue %dx.types.ResRet.f32 %1717, 1
  %1720 = extractvalue %dx.types.ResRet.f32 %1717, 2
  %1721 = extractvalue %dx.types.ResRet.f32 %1717, 3
  %1722 = or i32 %1715, 64
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = extractvalue %dx.types.ResRet.i32 %1723, 1
  %1726 = or i32 %1715, 80
  %1727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %1728 = extractvalue %dx.types.ResRet.f32 %1727, 2
  %1729 = extractvalue %dx.types.ResRet.f32 %1727, 3
  %1730 = or i32 %1715, 96
  %1731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1730, i32 undef)  ; BufferLoad(srv,index,wot)
  %1732 = extractvalue %dx.types.ResRet.f32 %1731, 0
  %1733 = extractvalue %dx.types.ResRet.f32 %1731, 1
  %1734 = extractvalue %dx.types.ResRet.f32 %1731, 2
  %1735 = extractvalue %dx.types.ResRet.f32 %1731, 3
  %1736 = or i32 %1715, 112
  %1737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.f32 %1737, 2
  %1739 = or i32 %1715, 128
  %1740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.f32 %1740, 0
  %1742 = extractvalue %dx.types.ResRet.f32 %1740, 1
  %1743 = extractvalue %dx.types.ResRet.f32 %1740, 2
  %1744 = extractvalue %dx.types.ResRet.f32 %1740, 3
  %1745 = or i32 %1715, 144
  %1746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.f32 %1746, 0
  %1748 = extractvalue %dx.types.ResRet.f32 %1746, 1
  %1749 = extractvalue %dx.types.ResRet.f32 %1746, 2
  %1750 = extractvalue %dx.types.ResRet.f32 %1746, 3
  %1751 = or i32 %1715, 160
  %1752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1751, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.f32 %1752, 0
  %1754 = extractvalue %dx.types.ResRet.f32 %1752, 1
  %1755 = extractvalue %dx.types.ResRet.f32 %1752, 2
  %1756 = or i32 %1715, 192
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = or i32 %1715, 208
  %1760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.f32 %1760, 0
  %1762 = or i32 %1715, 248
  %1763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.f32 %1763, 0
  %1765 = extractvalue %dx.types.ResRet.f32 %1763, 1
  %1766 = add nuw nsw i32 %1710, 1
  %1767 = bitcast float %1721 to i32
  %1768 = and i32 %1767, 512
  %1769 = icmp ne i32 %1768, 0
  %1770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1715, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = extractvalue %dx.types.ResRet.f32 %1770, 1
  %1773 = extractvalue %dx.types.ResRet.f32 %1770, 2
  %1774 = extractvalue %dx.types.ResRet.f32 %1770, 3
  %1775 = call float @dx.op.dot4.f32(i32 56, float %1771, float %1772, float %1773, float %1774, float %135, float %136, float %137, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1776 = or i32 %1715, 16
  %1777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1776, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.f32 %1777, 0
  %1779 = extractvalue %dx.types.ResRet.f32 %1777, 1
  %1780 = extractvalue %dx.types.ResRet.f32 %1777, 2
  %1781 = extractvalue %dx.types.ResRet.f32 %1777, 3
  %1782 = call float @dx.op.dot4.f32(i32 56, float %1778, float %1779, float %1780, float %1781, float %135, float %136, float %137, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1783 = or i32 %1715, 32
  %1784 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.f32 %1784, 0
  %1786 = extractvalue %dx.types.ResRet.f32 %1784, 1
  %1787 = extractvalue %dx.types.ResRet.f32 %1784, 2
  %1788 = extractvalue %dx.types.ResRet.f32 %1784, 3
  %1789 = call float @dx.op.dot4.f32(i32 56, float %1785, float %1786, float %1787, float %1788, float %135, float %136, float %137, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1790 = call float @dx.op.unary.f32(i32 27, float %1775)  ; Round_ni(value)
  %1791 = call float @dx.op.unary.f32(i32 6, float %1790)  ; FAbs(value)
  %1792 = call float @dx.op.unary.f32(i32 27, float %1782)  ; Round_ni(value)
  %1793 = call float @dx.op.unary.f32(i32 6, float %1792)  ; FAbs(value)
  %1794 = call float @dx.op.unary.f32(i32 6, float %1789)  ; FAbs(value)
  %1795 = call float @dx.op.unary.f32(i32 27, float %1794)  ; Round_ni(value)
  %1796 = fadd fast float %1793, %1791
  %1797 = fadd fast float %1796, %1795
  %1798 = fcmp fast oeq float %1797, 0.000000e+00
  %1799 = call float @dx.op.dot4.f32(i32 56, float %1771, float %1772, float %1773, float %1774, float %1651, float %1652, float %1653, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1800 = call float @dx.op.dot4.f32(i32 56, float %1778, float %1779, float %1780, float %1781, float %1651, float %1652, float %1653, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1801 = call float @dx.op.dot4.f32(i32 56, float %1771, float %1772, float %1773, float %1774, float %1654, float %1655, float %1656, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1802 = call float @dx.op.dot4.f32(i32 56, float %1778, float %1779, float %1780, float %1781, float %1654, float %1655, float %1656, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1803 = fsub fast float %1799, %1775
  %1804 = fsub fast float %1801, %1775
  %1805 = fsub fast float %1800, %1782
  %1806 = fsub fast float %1802, %1782
  %1807 = call float @dx.op.dot3.f32(i32 55, float %1718, float %1719, float %1720, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %1808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1809 = extractvalue %dx.types.CBufRet.f32 %1808, 2
  %1810 = call float @dx.op.unary.f32(i32 6, float %1807)  ; FAbs(value)
  %1811 = fadd fast float %1810, %1809
  %1812 = call float @dx.op.unary.f32(i32 7, float %1811)  ; Saturate(value)
  %1813 = extractvalue %dx.types.CBufRet.f32 %1808, 0
  %1814 = fcmp fast ogt float %1812, %1813
  %1815 = and i1 %1798, %1814
  %1816 = and i1 %1769, %1815
  br i1 %1816, label %1830, label %1817

; <label>:1817                                    ; preds = %2071, %1911, %1830, %1698
  %1818 = phi float [ %1699, %1830 ], [ %1699, %1911 ], [ %2081, %2071 ], [ %1699, %1698 ]
  %1819 = phi float [ %1700, %1830 ], [ %1700, %1911 ], [ %2082, %2071 ], [ %1700, %1698 ]
  %1820 = phi float [ %1701, %1830 ], [ %1701, %1911 ], [ %2083, %2071 ], [ %1701, %1698 ]
  %1821 = phi float [ %1702, %1830 ], [ %1702, %1911 ], [ %2045, %2071 ], [ %1702, %1698 ]
  %1822 = phi float [ %1703, %1830 ], [ %1703, %1911 ], [ %2046, %2071 ], [ %1703, %1698 ]
  %1823 = phi float [ %1704, %1830 ], [ %1704, %1911 ], [ %2040, %2071 ], [ %1704, %1698 ]
  %1824 = phi float [ %1705, %1830 ], [ %1705, %1911 ], [ %2037, %2071 ], [ %1705, %1698 ]
  %1825 = phi float [ %1706, %1830 ], [ %1706, %1911 ], [ %2034, %2071 ], [ %1706, %1698 ]
  %1826 = phi float [ %1707, %1830 ], [ %1707, %1911 ], [ %2029, %2071 ], [ %1707, %1698 ]
  %1827 = phi float [ %1708, %1830 ], [ %1708, %1911 ], [ %2030, %2071 ], [ %1708, %1698 ]
  %1828 = phi float [ %1709, %1830 ], [ %1709, %1911 ], [ %2031, %2071 ], [ %1709, %1698 ]
  %1829 = icmp eq i32 %1766, %1697
  br i1 %1829, label %2084, label %1698

; <label>:1830                                    ; preds = %1698
  %1831 = extractvalue %dx.types.ResRet.f32 %1737, 3
  %1832 = extractvalue %dx.types.ResRet.f32 %1737, 1
  %1833 = extractvalue %dx.types.ResRet.f32 %1737, 0
  %1834 = extractvalue %dx.types.ResRet.f32 %1727, 1
  %1835 = extractvalue %dx.types.ResRet.f32 %1727, 0
  %1836 = extractvalue %dx.types.ResRet.i32 %1723, 3
  %1837 = extractvalue %dx.types.ResRet.i32 %1723, 2
  %1838 = add i32 %1836, 0
  %1839 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1838, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1840 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1841 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1839, %dx.types.Handle %1840, float %1775, float %1782, float undef, float undef, i32 0, i32 0, i32 undef, float %1803, float %1805, float undef, float %1804, float %1806, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1842 = extractvalue %dx.types.ResRet.f32 %1841, 0
  %1843 = fmul fast float %1842, %1835
  %1844 = fadd fast float %1843, %1834
  %1845 = call float @dx.op.unary.f32(i32 7, float %1844)  ; Saturate(value)
  %1846 = fmul fast float %1775, %1732
  %1847 = call float @dx.op.tertiary.f32(i32 46, float %1733, float %1782, float %1846)  ; FMad(a,b,c)
  %1848 = fadd fast float %1847, %1833
  %1849 = fmul fast float %1775, %1734
  %1850 = call float @dx.op.tertiary.f32(i32 46, float %1735, float %1782, float %1849)  ; FMad(a,b,c)
  %1851 = fadd fast float %1850, %1832
  %1852 = fmul fast float %1803, %1732
  %1853 = call float @dx.op.tertiary.f32(i32 46, float %1733, float %1805, float %1852)  ; FMad(a,b,c)
  %1854 = fmul fast float %1803, %1734
  %1855 = call float @dx.op.tertiary.f32(i32 46, float %1735, float %1805, float %1854)  ; FMad(a,b,c)
  %1856 = fmul fast float %1804, %1732
  %1857 = call float @dx.op.tertiary.f32(i32 46, float %1733, float %1806, float %1856)  ; FMad(a,b,c)
  %1858 = fmul fast float %1804, %1734
  %1859 = call float @dx.op.tertiary.f32(i32 46, float %1735, float %1806, float %1858)  ; FMad(a,b,c)
  %1860 = add i32 %1837, 0
  %1861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1860, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1862 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1861, %dx.types.Handle %1840, float %1848, float %1851, float undef, float undef, i32 0, i32 0, i32 undef, float %1853, float %1855, float undef, float %1857, float %1859, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1863 = extractvalue %dx.types.ResRet.f32 %1862, 0
  %1864 = and i32 %1767, 1024
  %1865 = icmp ne i32 %1864, 0
  %1866 = fcmp fast ogt float %1863, 0x3FE0101020000000
  %1867 = uitofp i1 %1866 to float
  %1868 = select i1 %1865, float %1867, float %1863
  %1869 = and i32 %1767, 8192
  %1870 = icmp ne i32 %1869, 0
  %1871 = select i1 %1870, float %1831, float 1.000000e+00
  %1872 = fmul fast float %1775, 2.000000e+00
  %1873 = fadd fast float %1872, -1.000000e+00
  %1874 = call float @dx.op.unary.f32(i32 6, float %1873)  ; FAbs(value)
  %1875 = fmul fast float %1874, %1764
  %1876 = fsub fast float %1875, %1764
  %1877 = call float @dx.op.unary.f32(i32 7, float %1876)  ; Saturate(value)
  %1878 = fmul fast float %1782, 2.000000e+00
  %1879 = fadd fast float %1878, -1.000000e+00
  %1880 = call float @dx.op.unary.f32(i32 6, float %1879)  ; FAbs(value)
  %1881 = fmul fast float %1880, %1765
  %1882 = fsub fast float %1881, %1765
  %1883 = call float @dx.op.unary.f32(i32 7, float %1882)  ; Saturate(value)
  %1884 = fmul fast float %1794, %1728
  %1885 = fsub fast float %1884, %1728
  %1886 = call float @dx.op.unary.f32(i32 7, float %1885)  ; Saturate(value)
  %1887 = fmul fast float %1845, %1871
  %1888 = fmul fast float %1887, %1842
  %1889 = fmul fast float %1888, %1877
  %1890 = fmul fast float %1889, %1868
  %1891 = fmul fast float %1890, %1883
  %1892 = fmul fast float %1891, %1886
  %1893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1894 = extractvalue %dx.types.CBufRet.f32 %1893, 1
  %1895 = extractvalue %dx.types.CBufRet.f32 %1893, 0
  %1896 = fsub fast float %1812, %1895
  %1897 = fmul fast float %1896, %1894
  %1898 = call float @dx.op.unary.f32(i32 7, float %1897)  ; Saturate(value)
  %1899 = fmul fast float %1892, %1729
  %1900 = fadd fast float %1892, %1729
  %1901 = fmul fast float %1900, %1738
  %1902 = fsub fast float %1901, %1738
  %1903 = call float @dx.op.unary.f32(i32 7, float %1902)  ; Saturate(value)
  %1904 = and i32 %1767, 128
  %1905 = icmp ne i32 %1904, 0
  %1906 = select i1 %1905, float %1903, float %1899
  %1907 = fmul fast float %1906, %1898
  %1908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1909 = extractvalue %dx.types.CBufRet.f32 %1908, 0
  %1910 = fcmp fast ugt float %1907, %1909
  br i1 %1910, label %1911, label %1817

; <label>:1911                                    ; preds = %1830
  br i1 %1870, label %1817, label %1912

; <label>:1912                                    ; preds = %1911
  %1913 = and i32 %1767, 4
  %1914 = and i32 %1767, 8
  %1915 = add i32 %1724, 0
  %1916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1915, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1917 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1918 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1916, %dx.types.Handle %1917, float %1848, float %1851, float undef, float undef, i32 0, i32 0, i32 undef, float %1853, float %1855, float undef, float %1857, float %1859, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1919 = extractvalue %dx.types.ResRet.f32 %1918, 0
  %1920 = extractvalue %dx.types.ResRet.f32 %1918, 1
  %1921 = extractvalue %dx.types.ResRet.f32 %1918, 2
  %1922 = extractvalue %dx.types.ResRet.f32 %1918, 3
  %1923 = bitcast float %1750 to i32
  %1924 = and i32 %1923, 255
  %1925 = uitofp i32 %1924 to float
  %1926 = lshr i32 %1923, 8
  %1927 = and i32 %1926, 255
  %1928 = uitofp i32 %1927 to float
  %1929 = fmul fast float %1922, %1925
  %1930 = fadd fast float %1929, %1928
  %1931 = fmul fast float %1930, 0x3F70101000000000
  %1932 = add i32 %1725, 0
  %1933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1932, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1934 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1933, %dx.types.Handle %1917, float %1848, float %1851, float undef, float undef, i32 0, i32 0, i32 undef, float %1853, float %1855, float undef, float %1857, float %1859, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1935 = extractvalue %dx.types.ResRet.f32 %1934, 0
  %1936 = extractvalue %dx.types.ResRet.f32 %1934, 1
  %1937 = extractvalue %dx.types.ResRet.f32 %1934, 2
  %1938 = extractvalue %dx.types.ResRet.f32 %1934, 3
  %1939 = bitcast float %1744 to i32
  %1940 = and i32 %1939, 255
  %1941 = uitofp i32 %1940 to float
  %1942 = lshr i32 %1939, 8
  %1943 = and i32 %1942, 255
  %1944 = uitofp i32 %1943 to float
  %1945 = lshr i32 %1939, 16
  %1946 = and i32 %1945, 255
  %1947 = uitofp i32 %1946 to float
  %1948 = fmul fast float %1947, 0x3F70101000000000
  %1949 = fmul fast float %1935, %1941
  %1950 = fadd fast float %1949, %1944
  %1951 = fmul fast float %1950, 0x3F70101000000000
  %1952 = fadd fast float %1936, -5.000000e-01
  %1953 = fadd fast float %1938, -5.000000e-01
  %1954 = fmul fast float %1952, %1948
  %1955 = fmul fast float %1953, %1948
  %1956 = fadd fast float %1954, 5.000000e-01
  %1957 = fadd fast float %1955, 5.000000e-01
  %1958 = fmul fast float %1919, %1753
  %1959 = fmul fast float %1920, %1754
  %1960 = fmul fast float %1921, %1755
  %1961 = fmul fast float %1956, 2.000000e+00
  %1962 = fadd fast float %1961, -1.000000e+00
  %1963 = fmul fast float %1957, 2.000000e+00
  %1964 = fadd fast float %1963, -1.000000e+00
  %1965 = fadd fast float %1962, %1964
  %1966 = fmul fast float %1965, 5.000000e-01
  %1967 = fsub fast float %1962, %1964
  %1968 = fmul fast float %1967, 5.000000e-01
  %1969 = call float @dx.op.unary.f32(i32 6, float %1966)  ; FAbs(value)
  %1970 = fsub fast float 1.000000e+00, %1969
  %1971 = call float @dx.op.unary.f32(i32 6, float %1968)  ; FAbs(value)
  %1972 = fsub fast float %1970, %1971
  %1973 = call float @dx.op.dot3.f32(i32 55, float %1966, float %1968, float %1972, float %1966, float %1968, float %1972)  ; Dot3(ax,ay,az,bx,by,bz)
  %1974 = call float @dx.op.unary.f32(i32 25, float %1973)  ; Rsqrt(value)
  %1975 = fmul fast float %1966, %1974
  %1976 = fmul fast float %1968, %1974
  %1977 = fmul fast float %1974, %1972
  %1978 = fmul fast float %1977, %1718
  %1979 = fmul fast float %1977, %1719
  %1980 = fmul fast float %1977, %1720
  %1981 = fmul fast float %1975, %1741
  %1982 = fmul fast float %1975, %1742
  %1983 = fmul fast float %1975, %1743
  %1984 = fadd fast float %1981, %1978
  %1985 = fadd fast float %1982, %1979
  %1986 = fadd fast float %1983, %1980
  %1987 = fmul fast float %1976, %1747
  %1988 = fmul fast float %1976, %1748
  %1989 = fmul fast float %1976, %1749
  %1990 = fadd fast float %1984, %1987
  %1991 = fadd fast float %1985, %1988
  %1992 = fadd fast float %1986, %1989
  %1993 = call float @dx.op.dot3.f32(i32 55, float %1990, float %1991, float %1992, float %1990, float %1991, float %1992)  ; Dot3(ax,ay,az,bx,by,bz)
  %1994 = call float @dx.op.unary.f32(i32 25, float %1993)  ; Rsqrt(value)
  %1995 = fmul fast float %1990, %1994
  %1996 = fmul fast float %1991, %1994
  %1997 = fmul fast float %1992, %1994
  %1998 = fcmp fast ogt float %1807, %1813
  %1999 = fsub fast float -0.000000e+00, %1995
  %2000 = fsub fast float -0.000000e+00, %1996
  %2001 = fsub fast float -0.000000e+00, %1997
  %2002 = select i1 %1998, float %1995, float %1999
  %2003 = select i1 %1998, float %1996, float %2000
  %2004 = select i1 %1998, float %1997, float %2001
  %2005 = fmul fast float %2002, %1624
  %2006 = call float @dx.op.tertiary.f32(i32 46, float %2003, float %1625, float %2005)  ; FMad(a,b,c)
  %2007 = call float @dx.op.tertiary.f32(i32 46, float %2004, float %1627, float %2006)  ; FMad(a,b,c)
  %2008 = fmul fast float %2002, %1620
  %2009 = call float @dx.op.tertiary.f32(i32 46, float %2003, float %1630, float %2008)  ; FMad(a,b,c)
  %2010 = call float @dx.op.tertiary.f32(i32 46, float %2004, float %1631, float %2009)  ; FMad(a,b,c)
  %2011 = icmp ne i32 %1914, 0
  %2012 = select i1 %2011, float 1.000000e+00, float 0.000000e+00
  %2013 = fmul fast float %1907, %2012
  %2014 = and i32 %1767, 1
  %2015 = icmp ne i32 %2014, 0
  %2016 = fadd fast float %2007, %1702
  %2017 = fadd fast float %2010, %1703
  %2018 = select i1 %2015, float %2016, float %2007
  %2019 = select i1 %2015, float %2017, float %2010
  %2020 = icmp ne i32 %1913, 0
  %2021 = select i1 %2020, float 1.000000e+00, float 0.000000e+00
  %2022 = fmul fast float %1907, %2021
  %2023 = fsub fast float %1958, %1707
  %2024 = fsub fast float %1959, %1708
  %2025 = fsub fast float %1960, %1709
  %2026 = fmul fast float %2023, %2022
  %2027 = fmul fast float %2024, %2022
  %2028 = fmul fast float %2025, %2022
  %2029 = fadd fast float %2026, %1707
  %2030 = fadd fast float %2027, %1708
  %2031 = fadd fast float %2028, %1709
  %2032 = fsub fast float %1931, %1706
  %2033 = fmul fast float %2032, %2022
  %2034 = fadd fast float %2033, %1706
  %2035 = fsub fast float %1951, %1705
  %2036 = fmul fast float %2035, %2013
  %2037 = fadd fast float %2036, %1705
  %2038 = fsub fast float %1937, %1704
  %2039 = fmul fast float %2038, %2013
  %2040 = fadd fast float %2039, %1704
  %2041 = fsub fast float %2018, %1702
  %2042 = fsub fast float %2019, %1703
  %2043 = fmul fast float %2041, %2013
  %2044 = fmul fast float %2042, %2013
  %2045 = fadd fast float %2043, %1702
  %2046 = fadd fast float %2044, %1703
  %2047 = and i32 %1767, 16
  %2048 = icmp eq i32 %2047, 0
  br i1 %2048, label %2071, label %2049

; <label>:2049                                    ; preds = %1912
  %2050 = bitcast float %1761 to i32
  %2051 = add i32 %1758, 0
  %2052 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2051, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2053 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2052, %dx.types.Handle %1917, float %1848, float %1851, float undef, float undef, i32 0, i32 0, i32 undef, float %1853, float %1855, float undef, float %1857, float %1859, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2054 = extractvalue %dx.types.ResRet.f32 %2053, 0
  %2055 = extractvalue %dx.types.ResRet.f32 %2053, 1
  %2056 = extractvalue %dx.types.ResRet.f32 %2053, 2
  %2057 = and i32 %2050, 65535
  %2058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2057)  ; LegacyF16ToF32(value)
  %2059 = fmul fast float %2054, %1753
  %2060 = fmul fast float %2055, %1754
  %2061 = fmul fast float %2056, %1755
  %2062 = and i32 %1767, 16384
  %2063 = icmp ne i32 %2062, 0
  %2064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2065 = extractvalue %dx.types.CBufRet.f32 %2064, 0
  %2066 = select i1 %2063, float %2065, float 1.000000e+00
  %2067 = fmul fast float %2066, %2058
  %2068 = fmul fast float %2059, %2067
  %2069 = fmul fast float %2060, %2067
  %2070 = fmul fast float %2061, %2067
  br label %2071

; <label>:2071                                    ; preds = %2049, %1912
  %2072 = phi float [ %2068, %2049 ], [ 0.000000e+00, %1912 ]
  %2073 = phi float [ %2069, %2049 ], [ 0.000000e+00, %1912 ]
  %2074 = phi float [ %2070, %2049 ], [ 0.000000e+00, %1912 ]
  %2075 = fsub fast float %2072, %1699
  %2076 = fsub fast float %2073, %1700
  %2077 = fsub fast float %2074, %1701
  %2078 = fmul fast float %2075, %1907
  %2079 = fmul fast float %2076, %1907
  %2080 = fmul fast float %2077, %1907
  %2081 = fadd fast float %2078, %1699
  %2082 = fadd fast float %2079, %1700
  %2083 = fadd fast float %2080, %1701
  br label %1817

; <label>:2084                                    ; preds = %1817
  br label %2085

; <label>:2085                                    ; preds = %2084, %1599
  %2086 = phi float [ 0.000000e+00, %1599 ], [ %1818, %2084 ]
  %2087 = phi float [ 0.000000e+00, %1599 ], [ %1819, %2084 ]
  %2088 = phi float [ 0.000000e+00, %1599 ], [ %1820, %2084 ]
  %2089 = phi float [ %1439, %1599 ], [ %1821, %2084 ]
  %2090 = phi float [ %1440, %1599 ], [ %1822, %2084 ]
  %2091 = phi float [ %1641, %1599 ], [ %1823, %2084 ]
  %2092 = phi float [ %1644, %1599 ], [ %1824, %2084 ]
  %2093 = phi float [ %1639, %1599 ], [ %1825, %2084 ]
  %2094 = phi float [ %1633, %1599 ], [ %1826, %2084 ]
  %2095 = phi float [ %1635, %1599 ], [ %1827, %2084 ]
  %2096 = phi float [ %1637, %1599 ], [ %1828, %2084 ]
  %2097 = call float @dx.op.dot2.f32(i32 54, float %2089, float %2090, float %2089, float %2090)  ; Dot2(ax,ay,bx,by)
  %2098 = fmul fast float %2097, 0x3FE3333340000000
  %2099 = fsub fast float 1.000000e+00, %2098
  %2100 = call float @dx.op.dot3.f32(i32 55, float %2089, float %2090, float %2099, float %2089, float %2090, float %2099)  ; Dot3(ax,ay,az,bx,by,bz)
  %2101 = call float @dx.op.unary.f32(i32 25, float %2100)  ; Rsqrt(value)
  %2102 = fmul fast float %2101, %2089
  %2103 = fmul fast float %2101, %2090
  %2104 = fmul fast float %2099, %2101
  %2105 = fmul fast float %2104, %99
  %2106 = fmul fast float %2104, %100
  %2107 = fmul fast float %2104, %101
  %2108 = fmul fast float %2102, %1624
  %2109 = fmul fast float %2102, %1625
  %2110 = fmul fast float %2102, %1627
  %2111 = fadd fast float %2105, %2108
  %2112 = fadd fast float %2106, %2109
  %2113 = fadd fast float %2107, %2110
  %2114 = fmul fast float %2103, %1620
  %2115 = fmul fast float %2103, %1630
  %2116 = fmul fast float %2103, %1631
  %2117 = fadd fast float %2111, %2114
  %2118 = fadd fast float %2112, %2115
  %2119 = fadd fast float %2113, %2116
  %2120 = call float @dx.op.dot3.f32(i32 55, float %2117, float %2118, float %2119, float %2117, float %2118, float %2119)  ; Dot3(ax,ay,az,bx,by,bz)
  %2121 = call float @dx.op.unary.f32(i32 25, float %2120)  ; Rsqrt(value)
  %2122 = fmul fast float %2117, %2121
  %2123 = fmul fast float %2118, %2121
  %2124 = fmul fast float %2119, %2121
  %2125 = fadd fast float %2093, 0xBFB99999A0000000
  %2126 = call float @dx.op.unary.f32(i32 7, float %2125)  ; Saturate(value)
  %2127 = fmul fast float %2126, 0x3FF1C71C80000000
  %2128 = call float @dx.op.binary.f32(i32 36, float %2093, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2129 = fsub fast float 1.000000e+00, %2127
  %2130 = call float @dx.op.unary.f32(i32 7, float %2129)  ; Saturate(value)
  %2131 = fmul fast float %2130, %2094
  %2132 = fmul fast float %2130, %2095
  %2133 = fmul fast float %2130, %2096
  %2134 = call float @dx.op.unary.f32(i32 7, float %2131)  ; Saturate(value)
  %2135 = call float @dx.op.unary.f32(i32 7, float %2132)  ; Saturate(value)
  %2136 = call float @dx.op.unary.f32(i32 7, float %2133)  ; Saturate(value)
  %2137 = fmul fast float %2127, %2094
  %2138 = fmul fast float %2127, %2095
  %2139 = fmul fast float %2127, %2096
  %2140 = fadd fast float %2137, %2128
  %2141 = fadd fast float %2138, %2128
  %2142 = fadd fast float %2139, %2128
  %2143 = call float @dx.op.unary.f32(i32 7, float %2140)  ; Saturate(value)
  %2144 = call float @dx.op.unary.f32(i32 7, float %2141)  ; Saturate(value)
  %2145 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2146 = fmul fast float %2144, 0x401CF23780000000
  %2147 = fadd fast float %2146, 0x3FF32641C0000000
  %2148 = call float @dx.op.dot3.f32(i32 55, float %135, float %136, float %137, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %2149 = call float @dx.op.unary.f32(i32 25, float %2148)  ; Rsqrt(value)
  %2150 = fmul fast float %2149, %135
  %2151 = fmul fast float %2149, %136
  %2152 = fmul fast float %2149, %137
  %2153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2154 = extractvalue %dx.types.CBufRet.f32 %2153, 0
  %2155 = fdiv fast float 1.000000e+00, %2147
  %2156 = select i1 %97, float %2155, float %2147
  %2157 = fadd fast float %2156, -1.000000e+00
  %2158 = fadd fast float %2156, 1.000000e+00
  %2159 = fdiv fast float %2157, %2158
  %2160 = fmul fast float %2159, %2159
  %2161 = call float @dx.op.dot3.f32(i32 55, float %2150, float %2151, float %2152, float %2122, float %2123, float %2124)  ; Dot3(ax,ay,az,bx,by,bz)
  %2162 = select i1 %97, float 0.000000e+00, float %2154
  %2163 = fadd fast float %2161, %2162
  %2164 = call float @dx.op.binary.f32(i32 35, float %2163, float -1.000000e+00)  ; FMax(a,b)
  %2165 = call float @dx.op.binary.f32(i32 36, float %2164, float 1.000000e+00)  ; FMin(a,b)
  %2166 = fmul fast float %2156, %2156
  %2167 = fmul fast float %2165, %2165
  %2168 = fsub fast float 1.000000e+00, %2167
  %2169 = fmul fast float %2166, %2168
  %2170 = fsub fast float 1.000000e+00, %2169
  %2171 = fcmp fast olt float %2156, 1.000000e+00
  %2172 = select i1 %2171, float %2167, float %2170
  %2173 = fcmp fast ogt float %2170, 0.000000e+00
  %2174 = fsub fast float 1.000000e+00, %2160
  %2175 = call float @dx.op.unary.f32(i32 24, float %2172)  ; Sqrt(value)
  %2176 = fsub fast float 1.000000e+00, %2175
  %2177 = call float @dx.op.unary.f32(i32 23, float %2176)  ; Log(value)
  %2178 = fmul fast float %2177, 5.000000e+00
  %2179 = call float @dx.op.unary.f32(i32 21, float %2178)  ; Exp(value)
  %2180 = fmul fast float %2179, %2174
  %2181 = fadd fast float %2180, %2160
  %2182 = select i1 %2173, float %2181, float 1.000000e+00
  %2183 = and i32 %482, 255
  %2184 = uitofp i32 %2183 to float
  %2185 = fmul fast float %2184, 0x3F70101020000000
  %2186 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2187 = fmul fast float %135, %135
  %2188 = fmul fast float %136, %136
  %2189 = fadd fast float %2188, %2187
  %2190 = fmul fast float %137, %137
  %2191 = fadd fast float %2189, %2190
  %2192 = call float @dx.op.unary.f32(i32 24, float %2191)  ; Sqrt(value)
  %2193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %2194 = extractvalue %dx.types.CBufRet.f32 %2193, 0
  %2195 = fmul fast float %2194, %2192
  %2196 = extractvalue %dx.types.CBufRet.f32 %2193, 1
  %2197 = fadd fast float %2195, %2196
  %2198 = call float @dx.op.unary.f32(i32 7, float %2197)  ; Saturate(value)
  %2199 = fmul fast float %2186, 2.550000e+02
  %2200 = fmul fast float %2199, %2198
  %2201 = fptoui float %2200 to i32
  %2202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2203 = extractvalue %dx.types.CBufRet.f32 %2202, 3
  %2204 = fmul fast float %2203, %2092
  %2205 = call float @dx.op.unary.f32(i32 7, float %2204)  ; Saturate(value)
  %2206 = call float @dx.op.unary.f32(i32 7, float %2091)  ; Saturate(value)
  %2207 = call float @dx.op.dot3.f32(i32 55, float %2143, float %2144, float %2145, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2208 = fsub fast float 1.000000e+00, %2207
  %2209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %2210 = extractvalue %dx.types.ResRet.i32 %2209, 0
  %2211 = and i32 %2210, 255
  %2212 = uitofp i32 %2211 to float
  %2213 = lshr i32 %2210, 8
  %2214 = and i32 %2213, 255
  %2215 = uitofp i32 %2214 to float
  %2216 = fmul fast float %2215, %2208
  %2217 = fadd fast float %2216, %2212
  %2218 = fmul fast float %2217, 0x3F70101020000000
  %2219 = call float @dx.op.unary.f32(i32 7, float %2218)  ; Saturate(value)
  %2220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2221 = extractvalue %dx.types.CBufRet.f32 %2220, 0
  %2222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2224 = extractvalue %dx.types.CBufRet.i32 %2223, 3
  %2225 = and i32 %2224, 3
  %2226 = icmp ne i32 %2225, 0
  %2227 = and i32 %2224, 4
  %2228 = icmp ne i32 %2227, 0
  %2229 = and i1 %2226, %2228
  br i1 %2229, label %2230, label %2241

; <label>:2230                                    ; preds = %2085
  %2231 = extractvalue %dx.types.CBufRet.f32 %2222, 3
  %2232 = fmul fast float %2231, %81
  %2233 = extractvalue %dx.types.CBufRet.f32 %2222, 2
  %2234 = fmul fast float %2233, %80
  %2235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %52, float %2234, float %2232, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2236 = extractvalue %dx.types.ResRet.f32 %2235, 0
  %2237 = fsub fast float 1.000000e+00, %2236
  %2238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %2239 = extractvalue %dx.types.CBufRet.f32 %2238, 0
  %2240 = fcmp fast olt float %2237, %2239
  br label %2244

; <label>:2241                                    ; preds = %2085
  %2242 = icmp eq i32 %2227, 0
  %2243 = and i1 %2226, %2242
  br label %2244

; <label>:2244                                    ; preds = %2241, %2230
  %2245 = phi i1 [ %2240, %2230 ], [ %2243, %2241 ]
  %2246 = fsub fast float -0.000000e+00, %137
  %2247 = fsub fast float -0.000000e+00, %2150
  %2248 = fsub fast float -0.000000e+00, %2151
  %2249 = fsub fast float -0.000000e+00, %2152
  %2250 = select i1 %2245, float 0.000000e+00, float %2145
  %2251 = call float @dx.op.dot3.f32(i32 55, float %2122, float %2123, float %2124, float %2247, float %2248, float %2249)  ; Dot3(ax,ay,az,bx,by,bz)
  %2252 = call float @dx.op.unary.f32(i32 7, float %2251)  ; Saturate(value)
  %2253 = fmul fast float %2161, 2.000000e+00
  %2254 = fmul fast float %2253, %2122
  %2255 = fmul fast float %2253, %2123
  %2256 = fmul fast float %2253, %2124
  %2257 = fsub fast float %2150, %2254
  %2258 = fsub fast float %2151, %2255
  %2259 = fsub fast float %2152, %2256
  %2260 = call float @dx.op.binary.f32(i32 36, float %2206, float 1.000000e+00)  ; FMin(a,b)
  %2261 = fsub fast float 1.000000e+00, %2206
  %2262 = bitcast float %2261 to i32
  %2263 = sub nsw i32 2129859010, %2262
  %2264 = bitcast i32 %2263 to float
  %2265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2266 = extractvalue %dx.types.CBufRet.f32 %2265, 0
  %2267 = extractvalue %dx.types.CBufRet.f32 %2265, 1
  %2268 = extractvalue %dx.types.CBufRet.f32 %2265, 2
  %2269 = fadd fast float %2266, %135
  %2270 = fadd fast float %2267, %136
  %2271 = fadd fast float %2268, %137
  %2272 = fmul fast float %2122, 3.200000e+01
  %2273 = fmul fast float %2123, 3.200000e+01
  %2274 = fadd fast float %2269, %2272
  %2275 = fadd fast float %2270, %2273
  %2276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2277 = extractvalue %dx.types.CBufRet.f32 %2276, 0
  %2278 = extractvalue %dx.types.CBufRet.f32 %2276, 1
  %2279 = fsub fast float %2274, %2277
  %2280 = fsub fast float %2275, %2278
  %2281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2282 = extractvalue %dx.types.CBufRet.f32 %2281, 0
  %2283 = extractvalue %dx.types.CBufRet.f32 %2281, 1
  %2284 = fmul fast float %2279, %2282
  %2285 = fmul fast float %2280, %2283
  %2286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2287 = extractvalue %dx.types.CBufRet.f32 %2286, 0
  %2288 = fmul fast float %2284, %2287
  %2289 = extractvalue %dx.types.CBufRet.f32 %2286, 1
  %2290 = fadd fast float %2288, %2289
  %2291 = extractvalue %dx.types.CBufRet.f32 %2286, 2
  %2292 = fmul fast float %2291, %2285
  %2293 = extractvalue %dx.types.CBufRet.f32 %2286, 3
  %2294 = fadd fast float %2292, %2293
  %2295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %52, float %2290, float %2294, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2296 = extractvalue %dx.types.ResRet.f32 %2295, 0
  %2297 = extractvalue %dx.types.ResRet.f32 %2295, 1
  %2298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2299 = extractvalue %dx.types.CBufRet.f32 %2298, 1
  %2300 = extractvalue %dx.types.CBufRet.f32 %2298, 0
  %2301 = fsub fast float %2299, %2300
  %2302 = fmul fast float %2301, %2296
  %2303 = fadd fast float %2302, %2300
  %2304 = extractvalue %dx.types.CBufRet.f32 %2298, 3
  %2305 = extractvalue %dx.types.CBufRet.f32 %2298, 2
  %2306 = fsub fast float %2304, %2305
  %2307 = fmul fast float %2306, %2297
  %2308 = fadd fast float %2307, %2305
  %2309 = fsub fast float %2271, %2303
  %2310 = fsub fast float %2308, %2303
  %2311 = fdiv fast float %2309, %2310
  %2312 = call float @dx.op.unary.f32(i32 7, float %2311)  ; Saturate(value)
  %2313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2314 = extractvalue %dx.types.CBufRet.f32 %2313, 0
  %2315 = fmul fast float %2314, %2312
  %2316 = extractvalue %dx.types.CBufRet.f32 %2313, 1
  %2317 = fadd fast float %2315, %2316
  %2318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %52, float %2290, float %2294, float %2317, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2319 = extractvalue %dx.types.ResRet.f32 %2318, 0
  %2320 = extractvalue %dx.types.ResRet.f32 %2318, 1
  %2321 = extractvalue %dx.types.ResRet.f32 %2318, 2
  %2322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2323 = extractvalue %dx.types.CBufRet.f32 %2322, 0
  %2324 = extractvalue %dx.types.CBufRet.f32 %2322, 1
  %2325 = extractvalue %dx.types.CBufRet.f32 %2322, 2
  %2326 = fmul fast float %2323, %2319
  %2327 = fmul fast float %2324, %2320
  %2328 = fmul fast float %2325, %2321
  %2329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2330 = extractvalue %dx.types.CBufRet.f32 %2329, 0
  %2331 = extractvalue %dx.types.CBufRet.f32 %2329, 1
  %2332 = extractvalue %dx.types.CBufRet.f32 %2329, 2
  %2333 = fadd fast float %2326, %2330
  %2334 = fadd fast float %2327, %2331
  %2335 = fadd fast float %2328, %2332
  %2336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2337 = extractvalue %dx.types.CBufRet.f32 %2336, 0
  %2338 = fmul fast float %2337, %2284
  %2339 = extractvalue %dx.types.CBufRet.f32 %2336, 1
  %2340 = fadd fast float %2338, %2339
  %2341 = extractvalue %dx.types.CBufRet.f32 %2336, 2
  %2342 = fmul fast float %2341, %2285
  %2343 = extractvalue %dx.types.CBufRet.f32 %2336, 3
  %2344 = fadd fast float %2342, %2343
  %2345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2346 = extractvalue %dx.types.CBufRet.f32 %2345, 0
  %2347 = extractvalue %dx.types.CBufRet.f32 %2345, 1
  %2348 = extractvalue %dx.types.CBufRet.f32 %2345, 2
  %2349 = extractvalue %dx.types.CBufRet.f32 %2345, 3
  %2350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2351 = extractvalue %dx.types.CBufRet.f32 %2350, 0
  %2352 = extractvalue %dx.types.CBufRet.f32 %2350, 1
  %2353 = extractvalue %dx.types.CBufRet.f32 %2350, 2
  %2354 = extractvalue %dx.types.CBufRet.f32 %2350, 3
  %2355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %52, float %2340, float %2344, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2356 = extractvalue %dx.types.ResRet.f32 %2355, 0
  %2357 = extractvalue %dx.types.ResRet.f32 %2355, 1
  %2358 = extractvalue %dx.types.ResRet.f32 %2355, 2
  %2359 = extractvalue %dx.types.ResRet.f32 %2355, 3
  %2360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %52, float %2340, float %2344, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2361 = extractvalue %dx.types.ResRet.f32 %2360, 0
  %2362 = extractvalue %dx.types.ResRet.f32 %2360, 1
  %2363 = extractvalue %dx.types.ResRet.f32 %2360, 2
  %2364 = extractvalue %dx.types.ResRet.f32 %2360, 3
  %2365 = fmul fast float %2356, %2333
  %2366 = fmul fast float %2361, %2333
  %2367 = fmul fast float %2363, %2333
  %2368 = fmul fast float %2359, %2333
  %2369 = fadd fast float %2365, %2346
  %2370 = fadd fast float %2366, %2347
  %2371 = fadd fast float %2367, %2348
  %2372 = fadd fast float %2368, %2349
  %2373 = fmul fast float %2357, %2333
  %2374 = fmul fast float %2362, %2333
  %2375 = fadd fast float %2373, %2351
  %2376 = fadd fast float %2374, %2352
  %2377 = fmul fast float %2358, %2333
  %2378 = fmul fast float %2364, %2333
  %2379 = fadd fast float %2377, %2353
  %2380 = fadd fast float %2378, %2354
  %2381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %52, float %2340, float %2344, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2382 = extractvalue %dx.types.ResRet.f32 %2381, 0
  %2383 = extractvalue %dx.types.ResRet.f32 %2381, 1
  %2384 = extractvalue %dx.types.ResRet.f32 %2381, 2
  %2385 = extractvalue %dx.types.ResRet.f32 %2381, 3
  %2386 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %52, float %2340, float %2344, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2387 = extractvalue %dx.types.ResRet.f32 %2386, 0
  %2388 = extractvalue %dx.types.ResRet.f32 %2386, 1
  %2389 = extractvalue %dx.types.ResRet.f32 %2386, 2
  %2390 = extractvalue %dx.types.ResRet.f32 %2386, 3
  %2391 = fmul fast float %2382, %2334
  %2392 = fmul fast float %2387, %2334
  %2393 = fmul fast float %2389, %2334
  %2394 = fmul fast float %2385, %2334
  %2395 = fadd fast float %2369, %2391
  %2396 = fadd fast float %2370, %2392
  %2397 = fadd fast float %2371, %2393
  %2398 = fadd fast float %2372, %2394
  %2399 = fmul fast float %2383, %2334
  %2400 = fmul fast float %2388, %2334
  %2401 = fadd fast float %2375, %2399
  %2402 = fadd fast float %2376, %2400
  %2403 = fmul fast float %2384, %2334
  %2404 = fmul fast float %2390, %2334
  %2405 = fadd fast float %2379, %2403
  %2406 = fadd fast float %2380, %2404
  %2407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %52, float %2340, float %2344, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2408 = extractvalue %dx.types.ResRet.f32 %2407, 0
  %2409 = extractvalue %dx.types.ResRet.f32 %2407, 1
  %2410 = extractvalue %dx.types.ResRet.f32 %2407, 2
  %2411 = extractvalue %dx.types.ResRet.f32 %2407, 3
  %2412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %52, float %2340, float %2344, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2413 = extractvalue %dx.types.ResRet.f32 %2412, 0
  %2414 = extractvalue %dx.types.ResRet.f32 %2412, 1
  %2415 = extractvalue %dx.types.ResRet.f32 %2412, 2
  %2416 = extractvalue %dx.types.ResRet.f32 %2412, 3
  %2417 = fmul fast float %2408, %2335
  %2418 = fmul fast float %2413, %2335
  %2419 = fmul fast float %2415, %2335
  %2420 = fmul fast float %2411, %2335
  %2421 = fadd fast float %2395, %2417
  %2422 = fadd fast float %2396, %2418
  %2423 = fadd fast float %2397, %2419
  %2424 = fadd fast float %2398, %2420
  %2425 = fmul fast float %2409, %2335
  %2426 = fmul fast float %2414, %2335
  %2427 = fadd fast float %2401, %2425
  %2428 = fadd fast float %2402, %2426
  %2429 = fmul fast float %2410, %2335
  %2430 = fmul fast float %2416, %2335
  %2431 = fadd fast float %2405, %2429
  %2432 = fadd fast float %2406, %2430
  %2433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2434 = extractvalue %dx.types.CBufRet.f32 %2433, 0
  %2435 = fsub fast float %2269, %2434
  %2436 = fsub fast float %2277, %2269
  %2437 = call float @dx.op.binary.f32(i32 35, float %2436, float %2435)  ; FMax(a,b)
  %2438 = extractvalue %dx.types.CBufRet.f32 %2433, 1
  %2439 = fsub fast float %2270, %2438
  %2440 = fsub fast float %2278, %2270
  %2441 = call float @dx.op.binary.f32(i32 35, float %2440, float %2439)  ; FMax(a,b)
  %2442 = call float @dx.op.binary.f32(i32 35, float %2437, float %2441)  ; FMax(a,b)
  %2443 = extractvalue %dx.types.CBufRet.f32 %2281, 3
  %2444 = fmul fast float %2443, %2442
  %2445 = call float @dx.op.unary.f32(i32 7, float %2444)  ; Saturate(value)
  %2446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2447 = extractvalue %dx.types.CBufRet.f32 %2446, 0
  %2448 = extractvalue %dx.types.CBufRet.f32 %2446, 1
  %2449 = extractvalue %dx.types.CBufRet.f32 %2446, 2
  %2450 = extractvalue %dx.types.CBufRet.f32 %2446, 3
  %2451 = fsub fast float %2447, %2421
  %2452 = fsub fast float %2448, %2422
  %2453 = fsub fast float %2449, %2423
  %2454 = fsub fast float %2450, %2424
  %2455 = fmul fast float %2451, %2445
  %2456 = fmul fast float %2452, %2445
  %2457 = fmul fast float %2453, %2445
  %2458 = fmul fast float %2454, %2445
  %2459 = fadd fast float %2455, %2421
  %2460 = fadd fast float %2456, %2422
  %2461 = fadd fast float %2457, %2423
  %2462 = fadd fast float %2458, %2424
  %2463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2464 = extractvalue %dx.types.CBufRet.f32 %2463, 0
  %2465 = extractvalue %dx.types.CBufRet.f32 %2463, 1
  %2466 = fsub fast float %2464, %2427
  %2467 = fsub fast float %2465, %2428
  %2468 = fmul fast float %2466, %2445
  %2469 = fmul fast float %2467, %2445
  %2470 = fadd fast float %2468, %2427
  %2471 = fadd fast float %2469, %2428
  %2472 = extractvalue %dx.types.CBufRet.f32 %2463, 2
  %2473 = extractvalue %dx.types.CBufRet.f32 %2463, 3
  %2474 = fsub fast float %2472, %2431
  %2475 = fsub fast float %2473, %2432
  %2476 = fmul fast float %2474, %2445
  %2477 = fmul fast float %2475, %2445
  %2478 = fadd fast float %2476, %2431
  %2479 = fadd fast float %2477, %2432
  %2480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2481 = extractvalue %dx.types.CBufRet.f32 %2480, 0
  %2482 = fmul fast float %2481, %2459
  %2483 = fmul fast float %2481, %2460
  %2484 = fmul fast float %2481, %2461
  %2485 = fmul fast float %2481, %2462
  %2486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2487 = extractvalue %dx.types.CBufRet.f32 %2486, 0
  %2488 = fmul fast float %2487, %2470
  %2489 = fmul fast float %2487, %2471
  %2490 = fadd fast float %2488, %2482
  %2491 = fadd fast float %2489, %2484
  %2492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2493 = extractvalue %dx.types.CBufRet.f32 %2492, 0
  %2494 = fmul fast float %2493, %2478
  %2495 = fmul fast float %2493, %2479
  %2496 = fadd fast float %2490, %2494
  %2497 = fadd fast float %2491, %2495
  %2498 = extractvalue %dx.types.CBufRet.f32 %2480, 1
  %2499 = fmul fast float %2498, %2459
  %2500 = fmul fast float %2498, %2460
  %2501 = fmul fast float %2498, %2461
  %2502 = fmul fast float %2498, %2462
  %2503 = extractvalue %dx.types.CBufRet.f32 %2486, 1
  %2504 = fmul fast float %2503, %2470
  %2505 = fmul fast float %2503, %2471
  %2506 = fadd fast float %2504, %2499
  %2507 = fadd fast float %2505, %2501
  %2508 = extractvalue %dx.types.CBufRet.f32 %2492, 1
  %2509 = fmul fast float %2508, %2478
  %2510 = fmul fast float %2508, %2479
  %2511 = fadd fast float %2506, %2509
  %2512 = fadd fast float %2507, %2510
  %2513 = extractvalue %dx.types.CBufRet.f32 %2480, 2
  %2514 = fmul fast float %2513, %2459
  %2515 = fmul fast float %2513, %2460
  %2516 = fmul fast float %2513, %2461
  %2517 = fmul fast float %2513, %2462
  %2518 = extractvalue %dx.types.CBufRet.f32 %2486, 2
  %2519 = fmul fast float %2518, %2470
  %2520 = fmul fast float %2518, %2471
  %2521 = fadd fast float %2519, %2514
  %2522 = fadd fast float %2520, %2516
  %2523 = extractvalue %dx.types.CBufRet.f32 %2492, 2
  %2524 = fmul fast float %2523, %2478
  %2525 = fmul fast float %2523, %2479
  %2526 = fadd fast float %2521, %2524
  %2527 = fadd fast float %2522, %2525
  %2528 = fmul fast float %2515, %2515
  %2529 = fmul fast float %2527, %2527
  %2530 = fmul fast float %2517, %2517
  %2531 = fadd fast float %2530, %2528
  %2532 = fadd fast float %2531, %2529
  %2533 = call float @dx.op.unary.f32(i32 24, float %2532)  ; Sqrt(value)
  %2534 = fcmp fast ugt float %2533, 0.000000e+00
  br i1 %2534, label %2535, label %2550

; <label>:2535                                    ; preds = %2244
  %2536 = fsub fast float -0.000000e+00, %2517
  %2537 = fdiv fast float %2536, %2533
  %2538 = fsub fast float -0.000000e+00, %2515
  %2539 = fdiv fast float %2538, %2533
  %2540 = fdiv fast float %2527, %2533
  %2541 = fmul fast float %2526, 0x3FE279A760000000
  %2542 = fmul fast float %2539, %2515
  %2543 = fmul fast float %2540, %2527
  %2544 = fmul fast float %2537, %2517
  %2545 = fadd fast float %2542, %2544
  %2546 = fsub fast float %2545, %2543
  %2547 = call float @dx.op.unary.f32(i32 6, float %2546)  ; FAbs(value)
  %2548 = fadd fast float %2547, 0x3DDB7CDFE0000000
  %2549 = fdiv fast float %2541, %2548
  br label %2550

; <label>:2550                                    ; preds = %2535, %2244
  %2551 = phi float [ %2549, %2535 ], [ 1.000000e+00, %2244 ]
  %2552 = fmul fast float %2500, %2500
  %2553 = fmul fast float %2512, %2512
  %2554 = fmul fast float %2502, %2502
  %2555 = fadd fast float %2554, %2552
  %2556 = fadd fast float %2555, %2553
  %2557 = call float @dx.op.unary.f32(i32 24, float %2556)  ; Sqrt(value)
  %2558 = fcmp fast ugt float %2557, 0.000000e+00
  br i1 %2558, label %2559, label %2574

; <label>:2559                                    ; preds = %2550
  %2560 = fsub fast float -0.000000e+00, %2502
  %2561 = fdiv fast float %2560, %2557
  %2562 = fsub fast float -0.000000e+00, %2500
  %2563 = fdiv fast float %2562, %2557
  %2564 = fdiv fast float %2512, %2557
  %2565 = fmul fast float %2511, 0x3FE279A760000000
  %2566 = fmul fast float %2563, %2500
  %2567 = fmul fast float %2564, %2512
  %2568 = fmul fast float %2561, %2502
  %2569 = fadd fast float %2566, %2568
  %2570 = fsub fast float %2569, %2567
  %2571 = call float @dx.op.unary.f32(i32 6, float %2570)  ; FAbs(value)
  %2572 = fadd fast float %2571, 0x3DDB7CDFE0000000
  %2573 = fdiv fast float %2565, %2572
  br label %2574

; <label>:2574                                    ; preds = %2559, %2550
  %2575 = phi float [ %2573, %2559 ], [ 1.000000e+00, %2550 ]
  %2576 = call float @dx.op.binary.f32(i32 36, float %2575, float %2551)  ; FMin(a,b)
  %2577 = fmul fast float %2483, %2483
  %2578 = fmul fast float %2497, %2497
  %2579 = fmul fast float %2485, %2485
  %2580 = fadd fast float %2579, %2577
  %2581 = fadd fast float %2580, %2578
  %2582 = call float @dx.op.unary.f32(i32 24, float %2581)  ; Sqrt(value)
  %2583 = fcmp fast ugt float %2582, 0.000000e+00
  br i1 %2583, label %2584, label %2599

; <label>:2584                                    ; preds = %2574
  %2585 = fsub fast float -0.000000e+00, %2485
  %2586 = fdiv fast float %2585, %2582
  %2587 = fsub fast float -0.000000e+00, %2483
  %2588 = fdiv fast float %2587, %2582
  %2589 = fdiv fast float %2497, %2582
  %2590 = fmul fast float %2496, 0x3FE279A760000000
  %2591 = fmul fast float %2588, %2483
  %2592 = fmul fast float %2589, %2497
  %2593 = fmul fast float %2586, %2485
  %2594 = fadd fast float %2591, %2593
  %2595 = fsub fast float %2594, %2592
  %2596 = call float @dx.op.unary.f32(i32 6, float %2595)  ; FAbs(value)
  %2597 = fadd fast float %2596, 0x3DDB7CDFE0000000
  %2598 = fdiv fast float %2590, %2597
  br label %2599

; <label>:2599                                    ; preds = %2584, %2574
  %2600 = phi float [ %2598, %2584 ], [ 1.000000e+00, %2574 ]
  %2601 = call float @dx.op.binary.f32(i32 36, float %2600, float %2576)  ; FMin(a,b)
  %2602 = call float @dx.op.unary.f32(i32 7, float %2601)  ; Saturate(value)
  %2603 = fcmp fast olt float %2602, 1.000000e+00
  br i1 %2603, label %2604, label %2614

; <label>:2604                                    ; preds = %2599
  %2605 = fmul fast float %2602, %2483
  %2606 = fmul fast float %2602, %2497
  %2607 = fmul fast float %2602, %2485
  %2608 = fmul fast float %2602, %2500
  %2609 = fmul fast float %2602, %2512
  %2610 = fmul fast float %2602, %2502
  %2611 = fmul fast float %2602, %2515
  %2612 = fmul fast float %2602, %2527
  %2613 = fmul fast float %2602, %2517
  br label %2614

; <label>:2614                                    ; preds = %2604, %2599
  %2615 = phi float [ %2611, %2604 ], [ %2515, %2599 ]
  %2616 = phi float [ %2612, %2604 ], [ %2527, %2599 ]
  %2617 = phi float [ %2613, %2604 ], [ %2517, %2599 ]
  %2618 = phi float [ %2608, %2604 ], [ %2500, %2599 ]
  %2619 = phi float [ %2609, %2604 ], [ %2512, %2599 ]
  %2620 = phi float [ %2610, %2604 ], [ %2502, %2599 ]
  %2621 = phi float [ %2605, %2604 ], [ %2483, %2599 ]
  %2622 = phi float [ %2606, %2604 ], [ %2497, %2599 ]
  %2623 = phi float [ %2607, %2604 ], [ %2485, %2599 ]
  %2624 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2496)  ; FMax(a,b)
  %2625 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2511)  ; FMax(a,b)
  %2626 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2526)  ; FMax(a,b)
  %2627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2628 = extractvalue %dx.types.CBufRet.f32 %2627, 0
  %2629 = fcmp fast ogt float %2628, 0.000000e+00
  %2630 = fcmp fast oge float %2284, 0.000000e+00
  %2631 = and i1 %2630, %2629
  %2632 = fcmp fast ole float %2284, 1.000000e+00
  %2633 = and i1 %2632, %2631
  %2634 = fcmp fast oge float %2285, 0.000000e+00
  %2635 = and i1 %2634, %2633
  %2636 = fcmp fast ole float %2285, 1.000000e+00
  %2637 = and i1 %2636, %2635
  br i1 %2637, label %2638, label %2778, !dx.controlflow.hints !112

; <label>:2638                                    ; preds = %2614
  %2639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2640 = extractvalue %dx.types.CBufRet.f32 %2639, 2
  %2641 = extractvalue %dx.types.CBufRet.f32 %2639, 3
  %2642 = fmul fast float %2640, %2284
  %2643 = fmul fast float %2641, %2285
  %2644 = call float @dx.op.unary.f32(i32 27, float %2642)  ; Round_ni(value)
  %2645 = call float @dx.op.unary.f32(i32 27, float %2643)  ; Round_ni(value)
  %2646 = fptosi float %2644 to i32
  %2647 = fptosi float %2645 to i32
  %2648 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %33, i32 0, i32 %2646, i32 %2647, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2649 = extractvalue %dx.types.ResRet.i32 %2648, 0
  %2650 = and i32 %2649, 65535
  %2651 = lshr i32 %2649, 16
  %2652 = icmp eq i32 %2650, 65535
  br i1 %2652, label %2689, label %2653

; <label>:2653                                    ; preds = %2638
  %2654 = extractvalue %dx.types.CBufRet.f32 %2627, 1
  %2655 = extractvalue %dx.types.CBufRet.f32 %2639, 0
  %2656 = extractvalue %dx.types.CBufRet.f32 %2639, 1
  %2657 = fmul fast float %2655, %2284
  %2658 = fmul fast float %2656, %2285
  %2659 = fmul fast float %2657, 1.250000e-01
  %2660 = fmul fast float %2658, 1.250000e-01
  %2661 = call float @dx.op.unary.f32(i32 27, float %2659)  ; Round_ni(value)
  %2662 = call float @dx.op.unary.f32(i32 27, float %2660)  ; Round_ni(value)
  %2663 = fmul fast float %2661, 8.000000e+00
  %2664 = fmul fast float %2662, 8.000000e+00
  %2665 = and i32 %2649, 255
  %2666 = lshr i32 %2649, 8
  %2667 = and i32 %2666, 255
  %2668 = mul nuw nsw i32 %2665, 9
  %2669 = uitofp i32 %2668 to float
  %2670 = mul nuw nsw i32 %2667, 9
  %2671 = uitofp i32 %2670 to float
  %2672 = fadd fast float %2669, 5.000000e-01
  %2673 = fadd fast float %2672, %2657
  %2674 = fsub fast float %2673, %2663
  %2675 = fadd fast float %2671, 5.000000e-01
  %2676 = fadd fast float %2675, %2658
  %2677 = fsub fast float %2676, %2664
  %2678 = fdiv fast float %2674, %2628
  %2679 = fdiv fast float %2677, %2654
  %2680 = fmul fast float %2312, 4.375000e-01
  %2681 = fadd fast float %2680, 3.125000e-02
  %2682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %52, float %2678, float %2679, float %2681, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2683 = extractvalue %dx.types.ResRet.f32 %2682, 0
  %2684 = extractvalue %dx.types.ResRet.f32 %2682, 1
  %2685 = extractvalue %dx.types.ResRet.f32 %2682, 2
  %2686 = fadd fast float %2683, %2624
  %2687 = fadd fast float %2684, %2625
  %2688 = fadd fast float %2685, %2626
  br label %2689

; <label>:2689                                    ; preds = %2653, %2638
  %2690 = phi float [ %2688, %2653 ], [ %2626, %2638 ]
  %2691 = phi float [ %2687, %2653 ], [ %2625, %2638 ]
  %2692 = phi float [ %2686, %2653 ], [ %2624, %2638 ]
  %2693 = icmp eq i32 %2651, 65535
  br i1 %2693, label %2778, label %2694

; <label>:2694                                    ; preds = %2689
  %2695 = extractvalue %dx.types.CBufRet.f32 %2627, 1
  %2696 = extractvalue %dx.types.CBufRet.f32 %2639, 0
  %2697 = extractvalue %dx.types.CBufRet.f32 %2639, 1
  %2698 = fmul fast float %2696, %2284
  %2699 = fmul fast float %2697, %2285
  %2700 = fmul fast float %2698, 1.250000e-01
  %2701 = fmul fast float %2699, 1.250000e-01
  %2702 = call float @dx.op.unary.f32(i32 27, float %2700)  ; Round_ni(value)
  %2703 = call float @dx.op.unary.f32(i32 27, float %2701)  ; Round_ni(value)
  %2704 = fmul fast float %2702, 8.000000e+00
  %2705 = fmul fast float %2703, 8.000000e+00
  %2706 = fsub fast float %2698, %2704
  %2707 = fsub fast float %2699, %2705
  %2708 = fadd fast float %2706, 5.000000e-01
  %2709 = fadd fast float %2707, 5.000000e-01
  %2710 = and i32 %2651, 255
  %2711 = lshr i32 %2649, 24
  %2712 = mul nuw nsw i32 %2710, 9
  %2713 = uitofp i32 %2712 to float
  %2714 = mul nuw nsw i32 %2711, 9
  %2715 = uitofp i32 %2714 to float
  %2716 = fadd fast float %2708, %2713
  %2717 = fadd fast float %2709, %2715
  %2718 = fdiv fast float %2716, %2628
  %2719 = fdiv fast float %2717, %2695
  %2720 = fmul fast float %2312, 4.375000e-01
  %2721 = fadd fast float %2720, 3.125000e-02
  %2722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %52, float %2718, float %2719, float %2721, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2723 = extractvalue %dx.types.ResRet.f32 %2722, 0
  %2724 = extractvalue %dx.types.ResRet.f32 %2722, 1
  %2725 = extractvalue %dx.types.ResRet.f32 %2722, 2
  %2726 = fadd fast float %2720, 5.312500e-01
  %2727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %52, float %2718, float %2719, float %2726, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2728 = extractvalue %dx.types.ResRet.f32 %2727, 0
  %2729 = extractvalue %dx.types.ResRet.f32 %2727, 1
  %2730 = extractvalue %dx.types.ResRet.f32 %2727, 2
  %2731 = fmul fast float %2728, 2.000000e+00
  %2732 = fmul fast float %2729, 2.000000e+00
  %2733 = fmul fast float %2730, 2.000000e+00
  %2734 = fadd fast float %2731, -1.000000e+00
  %2735 = fadd fast float %2732, -1.000000e+00
  %2736 = fadd fast float %2733, -1.000000e+00
  %2737 = fmul fast float %2734, %2734
  %2738 = fmul fast float %2735, %2735
  %2739 = fadd fast float %2737, %2738
  %2740 = fmul fast float %2736, %2736
  %2741 = fadd fast float %2739, %2740
  %2742 = call float @dx.op.unary.f32(i32 24, float %2741)  ; Sqrt(value)
  %2743 = fcmp fast ogt float %2742, 0.000000e+00
  br i1 %2743, label %2744, label %2748

; <label>:2744                                    ; preds = %2694
  %2745 = fdiv fast float %2734, %2742
  %2746 = fdiv fast float %2735, %2742
  %2747 = fdiv fast float %2736, %2742
  br label %2748

; <label>:2748                                    ; preds = %2744, %2694
  %2749 = phi float [ %2745, %2744 ], [ 0.000000e+00, %2694 ]
  %2750 = phi float [ %2746, %2744 ], [ 0.000000e+00, %2694 ]
  %2751 = phi float [ %2747, %2744 ], [ 0.000000e+00, %2694 ]
  %2752 = fmul fast float %135, %135
  %2753 = fmul fast float %136, %136
  %2754 = fadd fast float %2752, %2753
  %2755 = call float @dx.op.unary.f32(i32 24, float %2754)  ; Sqrt(value)
  %2756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2757 = extractvalue %dx.types.CBufRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.CBufRet.f32 %2756, 1
  %2759 = fsub fast float %2755, %2757
  %2760 = fdiv fast float %2759, %2758
  %2761 = call float @dx.op.unary.f32(i32 7, float %2760)  ; Saturate(value)
  %2762 = fmul fast float %2761, 2.000000e+00
  %2763 = fsub fast float 3.000000e+00, %2762
  %2764 = fmul fast float %2761, %2761
  %2765 = fmul fast float %2764, %2763
  %2766 = call float @dx.op.dot3.f32(i32 55, float %2749, float %2750, float %2751, float %2122, float %2123, float %2124)  ; Dot3(ax,ay,az,bx,by,bz)
  %2767 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2766)  ; FMax(a,b)
  %2768 = fmul fast float %2767, 0x400C5BF8A0000000
  %2769 = fmul fast float %2765, %2723
  %2770 = fmul fast float %2769, %2768
  %2771 = fadd fast float %2770, %2692
  %2772 = fmul fast float %2765, %2724
  %2773 = fmul fast float %2772, %2768
  %2774 = fadd fast float %2773, %2691
  %2775 = fmul fast float %2765, %2725
  %2776 = fmul fast float %2775, %2768
  %2777 = fadd fast float %2776, %2690
  br label %2778

; <label>:2778                                    ; preds = %2748, %2689, %2614
  %2779 = phi float [ %2777, %2748 ], [ %2690, %2689 ], [ %2626, %2614 ]
  %2780 = phi float [ %2774, %2748 ], [ %2691, %2689 ], [ %2625, %2614 ]
  %2781 = phi float [ %2771, %2748 ], [ %2692, %2689 ], [ %2624, %2614 ]
  %2782 = fcmp fast ogt float %2271, %2308
  %2783 = and i1 %2630, %2782
  %2784 = and i1 %2632, %2783
  %2785 = and i1 %2634, %2784
  %2786 = and i1 %2636, %2785
  br i1 %2786, label %2787, label %2844, !dx.controlflow.hints !113

; <label>:2787                                    ; preds = %2778
  %2788 = fmul fast float %2310, 0x3FC24924A0000000
  %2789 = fsub fast float %2271, %2308
  %2790 = fdiv fast float %2789, %2788
  %2791 = call float @dx.op.unary.f32(i32 7, float %2790)  ; Saturate(value)
  %2792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2793 = extractvalue %dx.types.CBufRet.f32 %2792, 0
  %2794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2795 = extractvalue %dx.types.CBufRet.f32 %2794, 0
  %2796 = extractvalue %dx.types.CBufRet.f32 %2794, 1
  %2797 = extractvalue %dx.types.CBufRet.f32 %2794, 2
  %2798 = fsub fast float %2793, %2781
  %2799 = fsub fast float %2795, %2621
  %2800 = fsub fast float %2796, %2622
  %2801 = fsub fast float %2797, %2623
  %2802 = fmul fast float %2798, %2791
  %2803 = fmul fast float %2799, %2791
  %2804 = fmul fast float %2800, %2791
  %2805 = fmul fast float %2801, %2791
  %2806 = fadd fast float %2802, %2781
  %2807 = fadd fast float %2803, %2621
  %2808 = fadd fast float %2804, %2622
  %2809 = fadd fast float %2805, %2623
  %2810 = extractvalue %dx.types.CBufRet.f32 %2792, 1
  %2811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2812 = extractvalue %dx.types.CBufRet.f32 %2811, 0
  %2813 = extractvalue %dx.types.CBufRet.f32 %2811, 1
  %2814 = extractvalue %dx.types.CBufRet.f32 %2811, 2
  %2815 = fsub fast float %2810, %2780
  %2816 = fsub fast float %2812, %2618
  %2817 = fsub fast float %2813, %2619
  %2818 = fsub fast float %2814, %2620
  %2819 = fmul fast float %2815, %2791
  %2820 = fmul fast float %2816, %2791
  %2821 = fmul fast float %2817, %2791
  %2822 = fmul fast float %2818, %2791
  %2823 = fadd fast float %2819, %2780
  %2824 = fadd fast float %2820, %2618
  %2825 = fadd fast float %2821, %2619
  %2826 = fadd fast float %2822, %2620
  %2827 = extractvalue %dx.types.CBufRet.f32 %2792, 2
  %2828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2829 = extractvalue %dx.types.CBufRet.f32 %2828, 0
  %2830 = extractvalue %dx.types.CBufRet.f32 %2828, 1
  %2831 = extractvalue %dx.types.CBufRet.f32 %2828, 2
  %2832 = fsub fast float %2827, %2779
  %2833 = fsub fast float %2829, %2615
  %2834 = fsub fast float %2830, %2616
  %2835 = fsub fast float %2831, %2617
  %2836 = fmul fast float %2832, %2791
  %2837 = fmul fast float %2833, %2791
  %2838 = fmul fast float %2834, %2791
  %2839 = fmul fast float %2835, %2791
  %2840 = fadd fast float %2836, %2779
  %2841 = fadd fast float %2837, %2615
  %2842 = fadd fast float %2838, %2616
  %2843 = fadd fast float %2839, %2617
  br label %2844

; <label>:2844                                    ; preds = %2787, %2778
  %2845 = phi float [ %2840, %2787 ], [ %2779, %2778 ]
  %2846 = phi float [ %2841, %2787 ], [ %2615, %2778 ]
  %2847 = phi float [ %2842, %2787 ], [ %2616, %2778 ]
  %2848 = phi float [ %2843, %2787 ], [ %2617, %2778 ]
  %2849 = phi float [ %2823, %2787 ], [ %2780, %2778 ]
  %2850 = phi float [ %2824, %2787 ], [ %2618, %2778 ]
  %2851 = phi float [ %2825, %2787 ], [ %2619, %2778 ]
  %2852 = phi float [ %2826, %2787 ], [ %2620, %2778 ]
  %2853 = phi float [ %2806, %2787 ], [ %2781, %2778 ]
  %2854 = phi float [ %2807, %2787 ], [ %2621, %2778 ]
  %2855 = phi float [ %2808, %2787 ], [ %2622, %2778 ]
  %2856 = phi float [ %2809, %2787 ], [ %2623, %2778 ]
  %2857 = extractvalue %dx.types.CBufRet.f32 %2433, 3
  %2858 = fmul fast float %2857, %2853
  %2859 = fmul fast float %2857, %2849
  %2860 = fmul fast float %2857, %2845
  %2861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2862 = extractvalue %dx.types.CBufRet.f32 %2861, 3
  %2863 = fmul fast float %2858, %2862
  %2864 = fmul fast float %2859, %2862
  %2865 = fmul fast float %2860, %2862
  %2866 = fmul fast float %2854, 1.500000e+00
  %2867 = fmul fast float %2866, %2857
  %2868 = fmul fast float %2867, %2862
  %2869 = fmul fast float %2855, 1.500000e+00
  %2870 = fmul fast float %2869, %2857
  %2871 = fmul fast float %2870, %2862
  %2872 = fmul fast float %2856, 1.500000e+00
  %2873 = fmul fast float %2872, %2857
  %2874 = fmul fast float %2873, %2862
  %2875 = fmul fast float %2850, 1.500000e+00
  %2876 = fmul fast float %2875, %2857
  %2877 = fmul fast float %2876, %2862
  %2878 = fmul fast float %2851, 1.500000e+00
  %2879 = fmul fast float %2878, %2857
  %2880 = fmul fast float %2879, %2862
  %2881 = fmul fast float %2852, 1.500000e+00
  %2882 = fmul fast float %2881, %2857
  %2883 = fmul fast float %2882, %2862
  %2884 = fmul fast float %2846, 1.500000e+00
  %2885 = fmul fast float %2884, %2857
  %2886 = fmul fast float %2885, %2862
  %2887 = fmul fast float %2847, 1.500000e+00
  %2888 = fmul fast float %2887, %2857
  %2889 = fmul fast float %2888, %2862
  %2890 = fmul fast float %2848, 1.500000e+00
  %2891 = fmul fast float %2890, %2857
  %2892 = fmul fast float %2891, %2862
  %2893 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2863)  ; FMax(a,b)
  %2894 = call float @dx.op.dot3.f32(i32 55, float %2868, float %2871, float %2874, float %2868, float %2871, float %2874)  ; Dot3(ax,ay,az,bx,by,bz)
  %2895 = fcmp fast oeq float %2894, 0.000000e+00
  %2896 = fcmp fast oeq float %2893, 0.000000e+00
  %2897 = or i1 %2896, %2895
  br i1 %2897, label %2927, label %2898

; <label>:2898                                    ; preds = %2844
  %2899 = fsub fast float -0.000000e+00, %2874
  %2900 = fsub fast float -0.000000e+00, %2868
  %2901 = call float @dx.op.unary.f32(i32 24, float %2894)  ; Sqrt(value)
  %2902 = fdiv fast float %2901, %2893
  %2903 = fcmp fast ogt float %2902, 0x3FFB6F8900000000
  %2904 = select i1 %2903, float 0x3FFB6F8900000000, float %2902
  %2905 = fmul fast float %2904, 0x3FE8A23460000000
  %2906 = call float @dx.op.unary.f32(i32 7, float %2905)  ; Saturate(value)
  %2907 = call float @dx.op.binary.f32(i32 35, float %2904, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2908 = fmul fast float %2906, %2893
  %2909 = fmul fast float %2907, 0x3FF279A740000000
  %2910 = fadd fast float %2909, -1.000000e+00
  %2911 = call float @dx.op.dot3.f32(i32 55, float %2899, float %2900, float %2871, float %2899, float %2900, float %2871)  ; Dot3(ax,ay,az,bx,by,bz)
  %2912 = call float @dx.op.unary.f32(i32 25, float %2911)  ; Rsqrt(value)
  %2913 = fmul fast float %2912, %2899
  %2914 = fmul fast float %2912, %2900
  %2915 = fmul fast float %2912, %2871
  %2916 = fmul fast float %2910, %2910
  %2917 = fsub fast float 1.000000e+00, %2916
  %2918 = fmul fast float %2907, 0x40005F8BE0000000
  %2919 = fsub fast float 0x400C5BF8A0000000, %2918
  %2920 = fdiv fast float %2908, %2919
  %2921 = fmul fast float %2920, 0x3FEE31C3C0000000
  %2922 = fmul fast float %2921, %2917
  %2923 = fmul fast float %2907, 0x3FDACB7480000000
  %2924 = fadd fast float %2923, 0xBFD7347680000000
  %2925 = fmul fast float %2924, %2920
  %2926 = fmul fast float %2925, %2917
  br label %2927

; <label>:2927                                    ; preds = %2898, %2844
  %2928 = phi float [ %2913, %2898 ], [ 0.000000e+00, %2844 ]
  %2929 = phi float [ %2914, %2898 ], [ 0.000000e+00, %2844 ]
  %2930 = phi float [ %2915, %2898 ], [ 0.000000e+00, %2844 ]
  %2931 = phi float [ %2922, %2898 ], [ 0.000000e+00, %2844 ]
  %2932 = phi float [ %2926, %2898 ], [ 0.000000e+00, %2844 ]
  %2933 = call float @dx.op.dot3.f32(i32 55, float %2928, float %2929, float %2930, float %2122, float %2123, float %2124)  ; Dot3(ax,ay,az,bx,by,bz)
  %2934 = fmul fast float %2933, %2933
  %2935 = fmul fast float %2934, 0x3FEE471020000000
  %2936 = fadd fast float %2935, 0xBFD42F6020000000
  %2937 = fmul fast float %2893, 0x3FD20DD760000000
  %2938 = fmul fast float %2936, %2932
  %2939 = fmul fast float %2931, 0x3FDF454380000000
  %2940 = fmul fast float %2939, %2933
  %2941 = fadd fast float %2940, %2937
  %2942 = fadd fast float %2941, %2938
  %2943 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2864)  ; FMax(a,b)
  %2944 = call float @dx.op.dot3.f32(i32 55, float %2877, float %2880, float %2883, float %2877, float %2880, float %2883)  ; Dot3(ax,ay,az,bx,by,bz)
  %2945 = fcmp fast oeq float %2944, 0.000000e+00
  %2946 = fcmp fast oeq float %2943, 0.000000e+00
  %2947 = or i1 %2946, %2945
  br i1 %2947, label %2977, label %2948

; <label>:2948                                    ; preds = %2927
  %2949 = fsub fast float -0.000000e+00, %2883
  %2950 = fsub fast float -0.000000e+00, %2877
  %2951 = call float @dx.op.unary.f32(i32 24, float %2944)  ; Sqrt(value)
  %2952 = fdiv fast float %2951, %2943
  %2953 = fcmp fast ogt float %2952, 0x3FFB6F8900000000
  %2954 = select i1 %2953, float 0x3FFB6F8900000000, float %2952
  %2955 = fmul fast float %2954, 0x3FE8A23460000000
  %2956 = call float @dx.op.unary.f32(i32 7, float %2955)  ; Saturate(value)
  %2957 = call float @dx.op.binary.f32(i32 35, float %2954, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2958 = fmul fast float %2956, %2943
  %2959 = fmul fast float %2957, 0x3FF279A740000000
  %2960 = fadd fast float %2959, -1.000000e+00
  %2961 = call float @dx.op.dot3.f32(i32 55, float %2949, float %2950, float %2880, float %2949, float %2950, float %2880)  ; Dot3(ax,ay,az,bx,by,bz)
  %2962 = call float @dx.op.unary.f32(i32 25, float %2961)  ; Rsqrt(value)
  %2963 = fmul fast float %2962, %2949
  %2964 = fmul fast float %2962, %2950
  %2965 = fmul fast float %2962, %2880
  %2966 = fmul fast float %2960, %2960
  %2967 = fsub fast float 1.000000e+00, %2966
  %2968 = fmul fast float %2957, 0x40005F8BE0000000
  %2969 = fsub fast float 0x400C5BF8A0000000, %2968
  %2970 = fdiv fast float %2958, %2969
  %2971 = fmul fast float %2970, 0x3FEE31C3C0000000
  %2972 = fmul fast float %2971, %2967
  %2973 = fmul fast float %2957, 0x3FDACB7480000000
  %2974 = fadd fast float %2973, 0xBFD7347680000000
  %2975 = fmul fast float %2974, %2970
  %2976 = fmul fast float %2975, %2967
  br label %2977

; <label>:2977                                    ; preds = %2948, %2927
  %2978 = phi float [ %2963, %2948 ], [ 0.000000e+00, %2927 ]
  %2979 = phi float [ %2964, %2948 ], [ 0.000000e+00, %2927 ]
  %2980 = phi float [ %2965, %2948 ], [ 0.000000e+00, %2927 ]
  %2981 = phi float [ %2972, %2948 ], [ 0.000000e+00, %2927 ]
  %2982 = phi float [ %2976, %2948 ], [ 0.000000e+00, %2927 ]
  %2983 = call float @dx.op.dot3.f32(i32 55, float %2978, float %2979, float %2980, float %2122, float %2123, float %2124)  ; Dot3(ax,ay,az,bx,by,bz)
  %2984 = fmul fast float %2983, %2983
  %2985 = fmul fast float %2984, 0x3FEE471020000000
  %2986 = fadd fast float %2985, 0xBFD42F6020000000
  %2987 = fmul fast float %2943, 0x3FD20DD760000000
  %2988 = fmul fast float %2986, %2982
  %2989 = fmul fast float %2981, 0x3FDF454380000000
  %2990 = fmul fast float %2989, %2983
  %2991 = fadd fast float %2990, %2987
  %2992 = fadd fast float %2991, %2988
  %2993 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2865)  ; FMax(a,b)
  %2994 = call float @dx.op.dot3.f32(i32 55, float %2886, float %2889, float %2892, float %2886, float %2889, float %2892)  ; Dot3(ax,ay,az,bx,by,bz)
  %2995 = fcmp fast oeq float %2994, 0.000000e+00
  %2996 = fcmp fast oeq float %2993, 0.000000e+00
  %2997 = or i1 %2996, %2995
  br i1 %2997, label %3027, label %2998

; <label>:2998                                    ; preds = %2977
  %2999 = fsub fast float -0.000000e+00, %2892
  %3000 = fsub fast float -0.000000e+00, %2886
  %3001 = call float @dx.op.unary.f32(i32 24, float %2994)  ; Sqrt(value)
  %3002 = fdiv fast float %3001, %2993
  %3003 = fcmp fast ogt float %3002, 0x3FFB6F8900000000
  %3004 = select i1 %3003, float 0x3FFB6F8900000000, float %3002
  %3005 = fmul fast float %3004, 0x3FE8A23460000000
  %3006 = call float @dx.op.unary.f32(i32 7, float %3005)  ; Saturate(value)
  %3007 = call float @dx.op.binary.f32(i32 35, float %3004, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3008 = fmul fast float %3006, %2993
  %3009 = fmul fast float %3007, 0x3FF279A740000000
  %3010 = fadd fast float %3009, -1.000000e+00
  %3011 = call float @dx.op.dot3.f32(i32 55, float %2999, float %3000, float %2889, float %2999, float %3000, float %2889)  ; Dot3(ax,ay,az,bx,by,bz)
  %3012 = call float @dx.op.unary.f32(i32 25, float %3011)  ; Rsqrt(value)
  %3013 = fmul fast float %3012, %2999
  %3014 = fmul fast float %3012, %3000
  %3015 = fmul fast float %3012, %2889
  %3016 = fmul fast float %3010, %3010
  %3017 = fsub fast float 1.000000e+00, %3016
  %3018 = fmul fast float %3007, 0x40005F8BE0000000
  %3019 = fsub fast float 0x400C5BF8A0000000, %3018
  %3020 = fdiv fast float %3008, %3019
  %3021 = fmul fast float %3020, 0x3FEE31C3C0000000
  %3022 = fmul fast float %3021, %3017
  %3023 = fmul fast float %3007, 0x3FDACB7480000000
  %3024 = fadd fast float %3023, 0xBFD7347680000000
  %3025 = fmul fast float %3024, %3020
  %3026 = fmul fast float %3025, %3017
  br label %3027

; <label>:3027                                    ; preds = %2998, %2977
  %3028 = phi float [ %3013, %2998 ], [ 0.000000e+00, %2977 ]
  %3029 = phi float [ %3014, %2998 ], [ 0.000000e+00, %2977 ]
  %3030 = phi float [ %3015, %2998 ], [ 0.000000e+00, %2977 ]
  %3031 = phi float [ %3022, %2998 ], [ 0.000000e+00, %2977 ]
  %3032 = phi float [ %3026, %2998 ], [ 0.000000e+00, %2977 ]
  %3033 = call float @dx.op.dot3.f32(i32 55, float %3028, float %3029, float %3030, float %2122, float %2123, float %2124)  ; Dot3(ax,ay,az,bx,by,bz)
  %3034 = fmul fast float %3033, %3033
  %3035 = fmul fast float %3034, 0x3FEE471020000000
  %3036 = fadd fast float %3035, 0xBFD42F6020000000
  %3037 = fmul fast float %2993, 0x3FD20DD760000000
  %3038 = fmul fast float %3036, %3032
  %3039 = fmul fast float %3031, 0x3FDF454380000000
  %3040 = fmul fast float %3039, %3033
  %3041 = fadd fast float %3040, %3037
  %3042 = fadd fast float %3041, %3038
  %3043 = call float @dx.op.binary.f32(i32 35, float %2942, float 0.000000e+00)  ; FMax(a,b)
  %3044 = call float @dx.op.binary.f32(i32 35, float %2992, float 0.000000e+00)  ; FMax(a,b)
  %3045 = call float @dx.op.binary.f32(i32 35, float %3042, float 0.000000e+00)  ; FMax(a,b)
  %3046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3047 = extractvalue %dx.types.CBufRet.f32 %3046, 0
  %3048 = call float @dx.op.binary.f32(i32 36, float %2134, float %3047)  ; FMin(a,b)
  %3049 = fsub fast float 1.000000e+00, %2260
  %3050 = fmul fast float %3048, %3049
  %3051 = fsub fast float 1.000000e+00, %3050
  %3052 = bitcast float %3051 to i32
  %3053 = sub nsw i32 2129859010, %3052
  %3054 = bitcast i32 %3053 to float
  %3055 = call float @dx.op.binary.f32(i32 36, float %2135, float %3047)  ; FMin(a,b)
  %3056 = fmul fast float %3055, %3049
  %3057 = fsub fast float 1.000000e+00, %3056
  %3058 = bitcast float %3057 to i32
  %3059 = sub nsw i32 2129859010, %3058
  %3060 = bitcast i32 %3059 to float
  %3061 = call float @dx.op.binary.f32(i32 36, float %2136, float %3047)  ; FMin(a,b)
  %3062 = fmul fast float %3061, %3049
  %3063 = fsub fast float 1.000000e+00, %3062
  %3064 = bitcast float %3063 to i32
  %3065 = sub nsw i32 2129859010, %3064
  %3066 = bitcast i32 %3065 to float
  %3067 = fmul fast float %3043, %2260
  %3068 = fmul fast float %3067, %3054
  %3069 = fmul fast float %3044, %2260
  %3070 = fmul fast float %3069, %3060
  %3071 = fmul fast float %3045, %2260
  %3072 = fmul fast float %3071, %3066
  %3073 = call float @dx.op.dot3.f32(i32 55, float %3068, float %3070, float %3072, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3074 = select i1 %2245, float 0.000000e+00, float %3068
  %3075 = select i1 %2245, float %3073, float %3070
  %3076 = select i1 %2245, float 0.000000e+00, float %3072
  %3077 = fsub fast float 1.000000e+00, %2143
  %3078 = fsub fast float 1.000000e+00, %2144
  %3079 = fsub fast float 1.000000e+00, %2250
  %3080 = fmul fast float %2182, %3077
  %3081 = fmul fast float %2182, %3078
  %3082 = fmul fast float %3079, %2182
  %3083 = fadd fast float %3080, %2143
  %3084 = fadd fast float %3081, %2144
  %3085 = fadd fast float %3082, %2250
  %3086 = and i32 %1471, 65535
  %3087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3086)  ; LegacyF16ToF32(value)
  %3088 = lshr i32 %1474, 16
  %3089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3088)  ; LegacyF16ToF32(value)
  %3090 = fcmp fast ogt float %3087, 0.000000e+00
  %3091 = call float @dx.op.unary.f32(i32 6, float %2252)  ; FAbs(value)
  %3092 = select i1 %3090, float %3091, float 0.000000e+00
  %3093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %52, float %3087, float %3092, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3094 = extractvalue %dx.types.ResRet.f32 %3093, 0
  %3095 = extractvalue %dx.types.ResRet.f32 %3093, 1
  %3096 = extractvalue %dx.types.ResRet.f32 %3093, 2
  %3097 = fadd fast float %3094, -5.000000e-01
  %3098 = fadd fast float %3095, -5.000000e-01
  %3099 = fadd fast float %3096, -5.000000e-01
  %3100 = fmul fast float %2143, 4.000000e+00
  %3101 = fmul fast float %3100, %3077
  %3102 = fmul fast float %3101, %3089
  %3103 = fmul fast float %3102, %3097
  %3104 = fmul fast float %2144, 4.000000e+00
  %3105 = fmul fast float %3104, %3078
  %3106 = fmul fast float %3105, %3089
  %3107 = fmul fast float %3106, %3098
  %3108 = fmul fast float %2250, 4.000000e+00
  %3109 = fmul fast float %3108, %3079
  %3110 = fmul fast float %3109, %3089
  %3111 = fmul fast float %3110, %3099
  %3112 = fadd fast float %3083, %3103
  %3113 = fadd fast float %3084, %3107
  %3114 = fadd fast float %3085, %3111
  %3115 = call float @dx.op.unary.f32(i32 7, float %3112)  ; Saturate(value)
  %3116 = call float @dx.op.unary.f32(i32 7, float %3113)  ; Saturate(value)
  %3117 = call float @dx.op.unary.f32(i32 7, float %3114)  ; Saturate(value)
  %3118 = call float @dx.op.binary.f32(i32 35, float %3116, float %3117)  ; FMax(a,b)
  %3119 = call float @dx.op.binary.f32(i32 35, float %3115, float %3118)  ; FMax(a,b)
  %3120 = fsub fast float 1.000000e+00, %3119
  %3121 = fmul fast float %3120, %3074
  %3122 = fmul fast float %3120, %3075
  %3123 = fmul fast float %3120, %3076
  %3124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3125 = extractvalue %dx.types.CBufRet.f32 %3124, 3
  %3126 = fcmp fast oeq float %3125, 0.000000e+00
  br i1 %3126, label %4447, label %3127

; <label>:3127                                    ; preds = %3027
  %3128 = extractvalue %dx.types.CBufRet.f32 %3124, 0
  %3129 = extractvalue %dx.types.CBufRet.f32 %3124, 1
  %3130 = extractvalue %dx.types.CBufRet.f32 %3124, 2
  %3131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3132 = extractvalue %dx.types.CBufRet.f32 %3131, 0
  %3133 = extractvalue %dx.types.CBufRet.f32 %3131, 1
  %3134 = extractvalue %dx.types.CBufRet.f32 %3131, 2
  %3135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3136 = extractvalue %dx.types.CBufRet.f32 %3135, 0
  %3137 = extractvalue %dx.types.CBufRet.f32 %3135, 1
  %3138 = call float @dx.op.dot3.f32(i32 55, float %3132, float %3133, float %3134, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3139 = select i1 %2245, float %3136, float %3132
  %3140 = select i1 %2245, float %3138, float %3133
  %3141 = select i1 %2245, float %3137, float %3134
  %3142 = fcmp fast olt float %3125, 0.000000e+00
  br i1 %3142, label %4049, label %3143

; <label>:3143                                    ; preds = %3127
  %3144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3145 = extractvalue %dx.types.CBufRet.f32 %3144, 0
  %3146 = extractvalue %dx.types.CBufRet.f32 %3144, 1
  %3147 = extractvalue %dx.types.CBufRet.f32 %3144, 2
  %3148 = extractvalue %dx.types.CBufRet.f32 %3144, 3
  %3149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3150 = extractvalue %dx.types.CBufRet.f32 %3149, 0
  %3151 = extractvalue %dx.types.CBufRet.f32 %3149, 1
  %3152 = extractvalue %dx.types.CBufRet.f32 %3149, 2
  %3153 = extractvalue %dx.types.CBufRet.f32 %3149, 3
  %3154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3155 = extractvalue %dx.types.CBufRet.f32 %3154, 0
  %3156 = extractvalue %dx.types.CBufRet.f32 %3154, 1
  %3157 = extractvalue %dx.types.CBufRet.f32 %3154, 2
  %3158 = extractvalue %dx.types.CBufRet.f32 %3154, 3
  %3159 = fmul fast float %3145, %135
  %3160 = call float @dx.op.tertiary.f32(i32 46, float %136, float %3146, float %3159)  ; FMad(a,b,c)
  %3161 = call float @dx.op.tertiary.f32(i32 46, float %137, float %3147, float %3160)  ; FMad(a,b,c)
  %3162 = fadd fast float %3161, %3148
  %3163 = fmul fast float %3150, %135
  %3164 = call float @dx.op.tertiary.f32(i32 46, float %136, float %3151, float %3163)  ; FMad(a,b,c)
  %3165 = call float @dx.op.tertiary.f32(i32 46, float %137, float %3152, float %3164)  ; FMad(a,b,c)
  %3166 = fadd fast float %3165, %3153
  %3167 = fmul fast float %3155, %135
  %3168 = call float @dx.op.tertiary.f32(i32 46, float %136, float %3156, float %3167)  ; FMad(a,b,c)
  %3169 = call float @dx.op.tertiary.f32(i32 46, float %137, float %3157, float %3168)  ; FMad(a,b,c)
  %3170 = fadd fast float %3169, %3158
  %3171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3172 = extractvalue %dx.types.CBufRet.f32 %3171, 0
  %3173 = extractvalue %dx.types.CBufRet.f32 %3171, 1
  %3174 = extractvalue %dx.types.CBufRet.f32 %3171, 3
  %3175 = fmul fast float %3174, %3162
  %3176 = fmul fast float %3174, %3166
  %3177 = fadd fast float %3175, %3172
  %3178 = fadd fast float %3176, %3173
  %3179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3180 = extractvalue %dx.types.CBufRet.f32 %3179, 0
  %3181 = extractvalue %dx.types.CBufRet.f32 %3179, 1
  %3182 = extractvalue %dx.types.CBufRet.f32 %3179, 3
  %3183 = fmul fast float %3182, %3162
  %3184 = fmul fast float %3182, %3166
  %3185 = fadd fast float %3183, %3180
  %3186 = fadd fast float %3184, %3181
  %3187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3188 = extractvalue %dx.types.CBufRet.f32 %3187, 1
  %3189 = fsub fast float %3188, %3170
  %3190 = extractvalue %dx.types.CBufRet.f32 %3187, 2
  %3191 = fmul fast float %3189, %3190
  %3192 = fsub fast float 1.000000e+00, %3191
  %3193 = call float @dx.op.unary.f32(i32 7, float %3192)  ; Saturate(value)
  %3194 = extractvalue %dx.types.CBufRet.f32 %3179, 2
  %3195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3196 = extractvalue %dx.types.CBufRet.f32 %3195, 2
  %3197 = fadd fast float %3196, %3194
  %3198 = fcmp fast ogt float %3197, 0.000000e+00
  br i1 %3198, label %3199, label %3224

; <label>:3199                                    ; preds = %3143
  %3200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3201 = extractvalue %dx.types.CBufRet.f32 %3200, 0
  %3202 = extractvalue %dx.types.CBufRet.f32 %3200, 1
  %3203 = fsub fast float %3185, %3201
  %3204 = fsub fast float %3186, %3202
  %3205 = fcmp fast olt float %3203, 0.000000e+00
  %3206 = fcmp fast olt float %3204, 0.000000e+00
  %3207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3208 = extractvalue %dx.types.CBufRet.f32 %3207, 0
  %3209 = extractvalue %dx.types.CBufRet.f32 %3207, 1
  %3210 = extractvalue %dx.types.CBufRet.f32 %3207, 2
  %3211 = extractvalue %dx.types.CBufRet.f32 %3207, 3
  %3212 = select i1 %3205, float %3208, float %3210
  %3213 = select i1 %3206, float %3209, float %3211
  %3214 = fmul fast float %3212, %3203
  %3215 = fmul fast float %3213, %3204
  %3216 = call float @dx.op.unary.f32(i32 6, float %3214)  ; FAbs(value)
  %3217 = call float @dx.op.unary.f32(i32 6, float %3215)  ; FAbs(value)
  %3218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3219 = extractvalue %dx.types.CBufRet.f32 %3218, 0
  %3220 = call float @dx.op.binary.f32(i32 35, float %3216, float %3217)  ; FMax(a,b)
  %3221 = fsub fast float %3219, %3220
  %3222 = call float @dx.op.unary.f32(i32 7, float %3221)  ; Saturate(value)
  %3223 = fmul fast float %3222, %3193
  br label %3224

; <label>:3224                                    ; preds = %3199, %3143
  %3225 = phi float [ %3223, %3199 ], [ 0.000000e+00, %3143 ]
  %3226 = extractvalue %dx.types.CBufRet.f32 %3171, 2
  %3227 = extractvalue %dx.types.CBufRet.f32 %3195, 1
  %3228 = fadd fast float %3227, %3226
  %3229 = fcmp fast ogt float %3228, 0.000000e+00
  br i1 %3229, label %3230, label %3255

; <label>:3230                                    ; preds = %3224
  %3231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3232 = extractvalue %dx.types.CBufRet.f32 %3231, 0
  %3233 = extractvalue %dx.types.CBufRet.f32 %3231, 1
  %3234 = fsub fast float %3177, %3232
  %3235 = fsub fast float %3178, %3233
  %3236 = fcmp fast olt float %3234, 0.000000e+00
  %3237 = fcmp fast olt float %3235, 0.000000e+00
  %3238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3239 = extractvalue %dx.types.CBufRet.f32 %3238, 0
  %3240 = extractvalue %dx.types.CBufRet.f32 %3238, 1
  %3241 = extractvalue %dx.types.CBufRet.f32 %3238, 2
  %3242 = extractvalue %dx.types.CBufRet.f32 %3238, 3
  %3243 = select i1 %3236, float %3239, float %3241
  %3244 = select i1 %3237, float %3240, float %3242
  %3245 = fmul fast float %3243, %3234
  %3246 = fmul fast float %3244, %3235
  %3247 = call float @dx.op.unary.f32(i32 6, float %3245)  ; FAbs(value)
  %3248 = call float @dx.op.unary.f32(i32 6, float %3246)  ; FAbs(value)
  %3249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3250 = extractvalue %dx.types.CBufRet.f32 %3249, 0
  %3251 = call float @dx.op.binary.f32(i32 35, float %3247, float %3248)  ; FMax(a,b)
  %3252 = fsub fast float %3250, %3251
  %3253 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  %3254 = fmul fast float %3253, %3193
  br label %3255

; <label>:3255                                    ; preds = %3230, %3224
  %3256 = phi float [ %3254, %3230 ], [ 0.000000e+00, %3224 ]
  %3257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3258 = extractvalue %dx.types.CBufRet.f32 %3257, 1
  %3259 = call float @dx.op.unary.f32(i32 7, float %3258)  ; Saturate(value)
  %3260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3261 = extractvalue %dx.types.CBufRet.f32 %3260, 0
  %3262 = extractvalue %dx.types.CBufRet.f32 %3260, 1
  %3263 = fsub fast float %3162, %3261
  %3264 = fsub fast float %3166, %3262
  %3265 = fcmp fast olt float %3263, 0.000000e+00
  %3266 = fcmp fast olt float %3264, 0.000000e+00
  %3267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
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
  %3278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3279 = extractvalue %dx.types.CBufRet.f32 %3278, 0
  %3280 = call float @dx.op.binary.f32(i32 35, float %3276, float %3277)  ; FMax(a,b)
  %3281 = fsub fast float %3279, %3280
  %3282 = call float @dx.op.unary.f32(i32 7, float %3281)  ; Saturate(value)
  %3283 = call float @dx.op.binary.f32(i32 36, float %3282, float %3259)  ; FMin(a,b)
  %3284 = fmul fast float %3283, %3193
  %3285 = fsub fast float %3256, %3284
  %3286 = fsub fast float %3225, %3256
  %3287 = fsub fast float %3286, %3284
  %3288 = call float @dx.op.binary.f32(i32 35, float %3256, float %3225)  ; FMax(a,b)
  %3289 = call float @dx.op.binary.f32(i32 35, float %3284, float %3288)  ; FMax(a,b)
  %3290 = fcmp fast olt float %3289, 1.000000e+00
  br i1 %3290, label %3291, label %3962, !dx.controlflow.hints !114

; <label>:3291                                    ; preds = %3255
  %3292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3293 = extractvalue %dx.types.CBufRet.f32 %3292, 0
  %3294 = fcmp fast une float %3293, 0.000000e+00
  br i1 %3294, label %3295, label %3962, !dx.controlflow.hints !115

; <label>:3295                                    ; preds = %3291
  %3296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3297 = extractvalue %dx.types.CBufRet.f32 %3296, 0
  %3298 = extractvalue %dx.types.CBufRet.f32 %3296, 1
  %3299 = extractvalue %dx.types.CBufRet.f32 %3296, 2
  %3300 = extractvalue %dx.types.CBufRet.f32 %3296, 3
  %3301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3302 = extractvalue %dx.types.CBufRet.f32 %3301, 0
  %3303 = extractvalue %dx.types.CBufRet.f32 %3301, 1
  %3304 = extractvalue %dx.types.CBufRet.f32 %3301, 2
  %3305 = extractvalue %dx.types.CBufRet.f32 %3301, 3
  %3306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3307 = extractvalue %dx.types.CBufRet.f32 %3306, 0
  %3308 = extractvalue %dx.types.CBufRet.f32 %3306, 1
  %3309 = extractvalue %dx.types.CBufRet.f32 %3306, 2
  %3310 = extractvalue %dx.types.CBufRet.f32 %3306, 3
  %3311 = fmul fast float %3297, %135
  %3312 = call float @dx.op.tertiary.f32(i32 46, float %136, float %3298, float %3311)  ; FMad(a,b,c)
  %3313 = call float @dx.op.tertiary.f32(i32 46, float %137, float %3299, float %3312)  ; FMad(a,b,c)
  %3314 = fadd fast float %3313, %3300
  %3315 = fmul fast float %3302, %135
  %3316 = call float @dx.op.tertiary.f32(i32 46, float %136, float %3303, float %3315)  ; FMad(a,b,c)
  %3317 = call float @dx.op.tertiary.f32(i32 46, float %137, float %3304, float %3316)  ; FMad(a,b,c)
  %3318 = fadd fast float %3317, %3305
  %3319 = fmul fast float %3307, %135
  %3320 = call float @dx.op.tertiary.f32(i32 46, float %136, float %3308, float %3319)  ; FMad(a,b,c)
  %3321 = call float @dx.op.tertiary.f32(i32 46, float %137, float %3309, float %3320)  ; FMad(a,b,c)
  %3322 = fadd fast float %3321, %3310
  %3323 = fcmp fast oge float %3314, 1.000000e+00
  %3324 = fcmp fast oge float %3318, 1.000000e+00
  %3325 = or i1 %3323, %3324
  %3326 = fcmp fast olt float %3314, 0.000000e+00
  %3327 = fcmp fast olt float %3318, 0.000000e+00
  %3328 = or i1 %3326, %3327
  %3329 = or i1 %3325, %3328
  br i1 %3329, label %3962, label %3330, !dx.controlflow.hints !116

; <label>:3330                                    ; preds = %3295
  %3331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3332 = extractvalue %dx.types.CBufRet.f32 %3331, 0
  %3333 = extractvalue %dx.types.CBufRet.f32 %3331, 1
  %3334 = extractvalue %dx.types.CBufRet.f32 %3331, 2
  %3335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3336 = extractvalue %dx.types.CBufRet.f32 %3335, 1
  %3337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3338 = extractvalue %dx.types.CBufRet.i32 %3337, 2
  %3339 = uitofp i32 %3338 to float
  %3340 = extractvalue %dx.types.CBufRet.i32 %3337, 3
  %3341 = uitofp i32 %3340 to float
  %3342 = extractvalue %dx.types.CBufRet.f32 %3331, 3
  %3343 = fmul fast float %3342, 2.000000e+00
  %3344 = fsub fast float %3314, %3332
  %3345 = fsub fast float %3318, %3333
  %3346 = fmul fast float %3343, %3344
  %3347 = fmul fast float %3343, %3345
  %3348 = fdiv fast float 1.000000e+00, %3130
  %3349 = fmul fast float %3347, %3348
  %3350 = call float @dx.op.unary.f32(i32 6, float %3349)  ; FAbs(value)
  %3351 = fmul fast float %3334, %137
  %3352 = fmul fast float %3351, %3343
  %3353 = call float @dx.op.unary.f32(i32 6, float %3352)  ; FAbs(value)
  %3354 = call float @dx.op.unary.f32(i32 6, float %3346)  ; FAbs(value)
  %3355 = call float @dx.op.binary.f32(i32 35, float %3353, float %3350)  ; FMax(a,b)
  %3356 = call float @dx.op.binary.f32(i32 35, float %3354, float %3355)  ; FMax(a,b)
  %3357 = fmul fast float %3356, 2.000000e+00
  %3358 = call float @dx.op.unary.f32(i32 23, float %3357)  ; Log(value)
  %3359 = call float @dx.op.binary.f32(i32 35, float %3358, float %3339)  ; FMax(a,b)
  %3360 = call float @dx.op.unary.f32(i32 22, float %3359)  ; Frc(value)
  %3361 = fadd fast float %3360, 0xBFEA666660000000
  %3362 = fmul fast float %3361, 8.000000e+00
  %3363 = call float @dx.op.unary.f32(i32 7, float %3362)  ; Saturate(value)
  %3364 = call float @dx.op.unary.f32(i32 27, float %3359)  ; Round_ni(value)
  %3365 = fadd fast float %3364, %3363
  %3366 = call float @dx.op.binary.f32(i32 36, float %3365, float %3341)  ; FMin(a,b)
  %3367 = call float @dx.op.unary.f32(i32 27, float %3366)  ; Round_ni(value)
  %3368 = fsub fast float -0.000000e+00, %3367
  %3369 = call float @dx.op.unary.f32(i32 21, float %3368)  ; Exp(value)
  %3370 = fmul fast float %3369, %3343
  %3371 = fmul fast float %3370, %3314
  %3372 = fmul fast float %3370, %3318
  %3373 = fmul fast float %3371, 5.000000e-01
  %3374 = fmul fast float %3372, 5.000000e-01
  %3375 = fadd fast float %3373, 5.000000e-01
  %3376 = fadd fast float %3374, 5.000000e-01
  %3377 = fmul fast float %3371, 2.500000e-01
  %3378 = fmul fast float %3372, 2.500000e-01
  %3379 = fadd fast float %3377, 5.000000e-01
  %3380 = fadd fast float %3378, 5.000000e-01
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = and i32 %3382, 536870911
  %3384 = lshr i32 %3383, 9
  %3385 = uitofp i32 %3384 to float
  %3386 = fmul fast float %3385, %3314
  %3387 = fmul fast float %3385, %3318
  %3388 = call float @dx.op.unary.f32(i32 22, float %3386)  ; Frc(value)
  %3389 = call float @dx.op.unary.f32(i32 22, float %3387)  ; Frc(value)
  %3390 = call float @dx.op.unary.f32(i32 22, float %3363)  ; Frc(value)
  %3391 = fcmp fast une float %3390, 0.000000e+00
  br i1 %3391, label %3392, label %3490, !dx.controlflow.hints !117

; <label>:3392                                    ; preds = %3330
  %3393 = call float @dx.op.unary.f32(i32 21, float %3364)  ; Exp(value)
  %3394 = fmul fast float %3393, 1.953125e-03
  %3395 = fcmp fast olt float %3388, %3394
  %3396 = fcmp fast olt float %3389, %3394
  %3397 = or i1 %3395, %3396
  %3398 = fsub fast float 1.000000e+00, %3394
  %3399 = fcmp fast ogt float %3388, %3398
  %3400 = fcmp fast ogt float %3389, %3398
  %3401 = or i1 %3399, %3400
  %3402 = or i1 %3397, %3401
  br i1 %3402, label %3403, label %3569, !dx.controlflow.hints !118

; <label>:3403                                    ; preds = %3392
  %3404 = fmul fast float %3336, 5.000000e-01
  %3405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3406 = extractvalue %dx.types.CBufRet.i32 %3405, 0
  %3407 = fmul fast float %3318, 3.530000e+02
  %3408 = uitofp i32 %3383 to float
  %3409 = fmul fast float %3407, %3408
  %3410 = fmul fast float %3314, 6.130000e+02
  %3411 = fadd fast float %3409, %3410
  %3412 = fptoui float %3411 to i32
  %3413 = add i32 %3406, %3412
  %3414 = mul i32 %3413, -63
  %3415 = lshr i32 %3414, 17
  %3416 = xor i32 %3415, %3414
  %3417 = mul i32 %3416, -511
  %3418 = mul i32 %3416, -8176
  %3419 = xor i32 %3417, %3418
  %3420 = mul i32 %3419, -7
  %3421 = mul i32 %3419, -7168
  %3422 = xor i32 %3420, %3421
  %3423 = lshr i32 %3422, 15
  %3424 = xor i32 %3423, %3420
  %3425 = and i32 %3424, 15
  %3426 = mul i32 %3425, 2
  %3427 = add i32 0, %3426
  %3428 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3427
  %3429 = load float, float* %3428, align 4
  %3430 = mul i32 %3425, 2
  %3431 = add i32 1, %3430
  %3432 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3431
  %3433 = load float, float* %3432, align 4
  %3434 = fmul fast float %3318, 2.770000e+02
  %3435 = fmul fast float %3434, %3408
  %3436 = fmul fast float %3314, 5.990000e+02
  %3437 = fadd fast float %3435, %3436
  %3438 = fptoui float %3437 to i32
  %3439 = mul i32 %3438, -63
  %3440 = lshr i32 %3439, 17
  %3441 = xor i32 %3440, %3439
  %3442 = mul i32 %3441, -511
  %3443 = mul i32 %3441, -8176
  %3444 = xor i32 %3442, %3443
  %3445 = mul i32 %3444, -7
  %3446 = mul i32 %3444, -7168
  %3447 = xor i32 %3445, %3446
  %3448 = lshr i32 %3447, 15
  %3449 = xor i32 %3448, %3445
  %3450 = and i32 %3449, 63
  %3451 = mul i32 %3450, 2
  %3452 = add i32 0, %3451
  %3453 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3452
  %3454 = load float, float* %3453, align 4
  %3455 = mul i32 %3450, 2
  %3456 = add i32 1, %3455
  %3457 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3456
  %3458 = load float, float* %3457, align 4
  %3459 = call float @dx.op.dot2.f32(i32 54, float %3429, float %3433, float %3454, float %3458)  ; Dot2(ax,ay,bx,by)
  %3460 = fsub fast float -0.000000e+00, %3454
  %3461 = call float @dx.op.dot2.f32(i32 54, float %3429, float %3433, float %3460, float %3458)  ; Dot2(ax,ay,bx,by)
  %3462 = fmul fast float %3459, %3404
  %3463 = fmul fast float %3461, %3404
  %3464 = fdiv fast float 2.000000e+00, %3370
  %3465 = fmul fast float %3393, 9.765625e-04
  %3466 = fcmp fast olt float %3388, %3465
  %3467 = fcmp fast olt float %3389, %3465
  %3468 = or i1 %3466, %3467
  %3469 = fsub fast float 1.000000e+00, %3465
  %3470 = fcmp fast ogt float %3388, %3469
  %3471 = fcmp fast ogt float %3389, %3469
  %3472 = or i1 %3470, %3471
  %3473 = or i1 %3468, %3472
  %3474 = fmul fast float %3462, 2.000000e+00
  br i1 %3473, label %3475, label %3479

; <label>:3475                                    ; preds = %3403
  %3476 = fmul fast float %3463, 2.000000e+00
  %3477 = fadd fast float %3474, %3375
  %3478 = fadd fast float %3476, %3376
  br label %3479

; <label>:3479                                    ; preds = %3475, %3403
  %3480 = phi float [ %3477, %3475 ], [ %3375, %3403 ]
  %3481 = phi float [ %3478, %3475 ], [ %3376, %3403 ]
  %3482 = phi i32 [ 3, %3475 ], [ 2, %3403 ]
  %3483 = fadd fast float %3462, %3379
  %3484 = fadd fast float %3463, %3380
  %3485 = fmul fast float %3474, %3464
  %3486 = fmul fast float %3464, 2.000000e+00
  %3487 = fmul fast float %3486, %3463
  %3488 = fadd fast float %3485, %3314
  %3489 = fadd fast float %3487, %3318
  br label %3569

; <label>:3490                                    ; preds = %3330
  %3491 = call float @dx.op.unary.f32(i32 21, float %3367)  ; Exp(value)
  %3492 = fmul fast float %3491, 9.765625e-04
  %3493 = fcmp fast olt float %3388, %3492
  %3494 = fcmp fast olt float %3389, %3492
  %3495 = or i1 %3493, %3494
  %3496 = fsub fast float 1.000000e+00, %3492
  %3497 = fcmp fast ogt float %3388, %3496
  %3498 = fcmp fast ogt float %3389, %3496
  %3499 = or i1 %3497, %3498
  %3500 = or i1 %3495, %3499
  br i1 %3500, label %3501, label %3569, !dx.controlflow.hints !119

; <label>:3501                                    ; preds = %3490
  %3502 = fmul fast float %3336, 5.000000e-01
  %3503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3504 = extractvalue %dx.types.CBufRet.i32 %3503, 0
  %3505 = fmul fast float %3318, 3.530000e+02
  %3506 = uitofp i32 %3383 to float
  %3507 = fmul fast float %3505, %3506
  %3508 = fmul fast float %3314, 6.130000e+02
  %3509 = fadd fast float %3507, %3508
  %3510 = fptoui float %3509 to i32
  %3511 = add i32 %3504, %3510
  %3512 = mul i32 %3511, -63
  %3513 = lshr i32 %3512, 17
  %3514 = xor i32 %3513, %3512
  %3515 = mul i32 %3514, -511
  %3516 = mul i32 %3514, -8176
  %3517 = xor i32 %3515, %3516
  %3518 = mul i32 %3517, -7
  %3519 = mul i32 %3517, -7168
  %3520 = xor i32 %3518, %3519
  %3521 = lshr i32 %3520, 15
  %3522 = xor i32 %3521, %3518
  %3523 = and i32 %3522, 15
  %3524 = mul i32 %3523, 2
  %3525 = add i32 0, %3524
  %3526 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3525
  %3527 = load float, float* %3526, align 4
  %3528 = mul i32 %3523, 2
  %3529 = add i32 1, %3528
  %3530 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3529
  %3531 = load float, float* %3530, align 4
  %3532 = fmul fast float %3318, 2.770000e+02
  %3533 = fmul fast float %3532, %3506
  %3534 = fmul fast float %3314, 5.990000e+02
  %3535 = fadd fast float %3533, %3534
  %3536 = fptoui float %3535 to i32
  %3537 = mul i32 %3536, -63
  %3538 = lshr i32 %3537, 17
  %3539 = xor i32 %3538, %3537
  %3540 = mul i32 %3539, -511
  %3541 = mul i32 %3539, -8176
  %3542 = xor i32 %3540, %3541
  %3543 = mul i32 %3542, -7
  %3544 = mul i32 %3542, -7168
  %3545 = xor i32 %3543, %3544
  %3546 = lshr i32 %3545, 15
  %3547 = xor i32 %3546, %3543
  %3548 = and i32 %3547, 63
  %3549 = mul i32 %3548, 2
  %3550 = add i32 0, %3549
  %3551 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3550
  %3552 = load float, float* %3551, align 4
  %3553 = mul i32 %3548, 2
  %3554 = add i32 1, %3553
  %3555 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3554
  %3556 = load float, float* %3555, align 4
  %3557 = call float @dx.op.dot2.f32(i32 54, float %3527, float %3531, float %3552, float %3556)  ; Dot2(ax,ay,bx,by)
  %3558 = fsub fast float -0.000000e+00, %3552
  %3559 = call float @dx.op.dot2.f32(i32 54, float %3527, float %3531, float %3558, float %3556)  ; Dot2(ax,ay,bx,by)
  %3560 = fmul fast float %3557, %3502
  %3561 = fmul fast float %3559, %3502
  %3562 = fadd fast float %3560, %3375
  %3563 = fadd fast float %3561, %3376
  %3564 = fdiv fast float 2.000000e+00, %3370
  %3565 = fmul fast float %3564, %3560
  %3566 = fmul fast float %3561, %3564
  %3567 = fadd fast float %3565, %3314
  %3568 = fadd fast float %3566, %3318
  br label %3569

; <label>:3569                                    ; preds = %3501, %3490, %3479, %3392
  %3570 = phi float [ %3483, %3479 ], [ %3379, %3392 ], [ %3379, %3501 ], [ %3379, %3490 ]
  %3571 = phi float [ %3484, %3479 ], [ %3380, %3392 ], [ %3380, %3501 ], [ %3380, %3490 ]
  %3572 = phi float [ %3480, %3479 ], [ %3375, %3392 ], [ %3562, %3501 ], [ %3375, %3490 ]
  %3573 = phi float [ %3481, %3479 ], [ %3376, %3392 ], [ %3563, %3501 ], [ %3376, %3490 ]
  %3574 = phi i32 [ %3482, %3479 ], [ 0, %3392 ], [ 1, %3501 ], [ 0, %3490 ]
  %3575 = phi float [ %3488, %3479 ], [ %3314, %3392 ], [ %3567, %3501 ], [ %3314, %3490 ]
  %3576 = phi float [ %3489, %3479 ], [ %3318, %3392 ], [ %3568, %3501 ], [ %3318, %3490 ]
  %3577 = fsub fast float %3341, %3339
  %3578 = fptoui float %3577 to i32
  %3579 = add i32 %3578, 320
  %3580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 %3579)  ; CBufferLoadLegacy(handle,regIndex)
  %3581 = extractvalue %dx.types.CBufRet.f32 %3580, 0
  %3582 = extractvalue %dx.types.CBufRet.f32 %3580, 1
  %3583 = fcmp fast une float %3366, %3341
  %3584 = fsub fast float %3575, %3581
  %3585 = fsub fast float %3576, %3582
  %3586 = call float @dx.op.unary.f32(i32 6, float %3584)  ; FAbs(value)
  %3587 = call float @dx.op.unary.f32(i32 6, float %3585)  ; FAbs(value)
  %3588 = fmul fast float %3586, %3370
  %3589 = fmul fast float %3587, %3370
  %3590 = fcmp fast olt float %3588, 1.000000e+00
  %3591 = fcmp fast olt float %3589, 1.000000e+00
  %3592 = and i1 %3590, %3591
  %3593 = or i1 %3583, %3592
  br i1 %3593, label %3594, label %3962, !dx.controlflow.hints !120

; <label>:3594                                    ; preds = %3569
  %3595 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3596 = extractvalue %dx.types.CBufRet.i32 %3595, 2
  %3597 = sitofp i32 %3596 to float
  %3598 = fsub fast float %3366, %3597
  %3599 = call float @dx.op.unary.f32(i32 27, float %3598)  ; Round_ni(value)
  %3600 = call float @dx.op.unary.f32(i32 22, float %3366)  ; Frc(value)
  %3601 = icmp eq i32 %3574, 0
  %3602 = call float @dx.op.unary.f32(i32 22, float %3572)  ; Frc(value)
  %3603 = call float @dx.op.unary.f32(i32 22, float %3573)  ; Frc(value)
  br i1 %3601, label %3674, label %3604, !dx.controlflow.hints !121

; <label>:3604                                    ; preds = %3594
  %3605 = and i32 %3574, 1
  %3606 = icmp eq i32 %3605, 0
  br i1 %3606, label %3620, label %3607, !dx.controlflow.hints !122

; <label>:3607                                    ; preds = %3604
  %3608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3609 = extractvalue %dx.types.CBufRet.f32 %3608, 0
  %3610 = fmul fast float %3602, %3609
  %3611 = fmul fast float %3603, %3609
  %3612 = fptoui float %3610 to i32
  %3613 = fptoui float %3611 to i32
  %3614 = fptoui float %3599 to i32
  %3615 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %3612, i32 %3613, i32 %3614, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3616 = extractvalue %dx.types.ResRet.f32 %3615, 0
  %3617 = extractvalue %dx.types.ResRet.f32 %3615, 1
  %3618 = extractvalue %dx.types.ResRet.f32 %3615, 2
  %3619 = extractvalue %dx.types.ResRet.f32 %3615, 3
  br label %3626

; <label>:3620                                    ; preds = %3604
  %3621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %51, float %3602, float %3603, float %3599, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3622 = extractvalue %dx.types.ResRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.ResRet.f32 %3621, 1
  %3624 = extractvalue %dx.types.ResRet.f32 %3621, 2
  %3625 = extractvalue %dx.types.ResRet.f32 %3621, 3
  br label %3626

; <label>:3626                                    ; preds = %3620, %3607
  %3627 = phi float [ %3616, %3607 ], [ %3622, %3620 ]
  %3628 = phi float [ %3617, %3607 ], [ %3623, %3620 ]
  %3629 = phi float [ %3618, %3607 ], [ %3624, %3620 ]
  %3630 = phi float [ %3619, %3607 ], [ %3625, %3620 ]
  %3631 = fcmp fast ogt float %3600, 0.000000e+00
  br i1 %3631, label %3632, label %3702

; <label>:3632                                    ; preds = %3626
  %3633 = and i32 %3574, 2
  %3634 = icmp eq i32 %3633, 0
  %3635 = fadd fast float %3599, 1.000000e+00
  %3636 = call float @dx.op.unary.f32(i32 22, float %3570)  ; Frc(value)
  %3637 = call float @dx.op.unary.f32(i32 22, float %3571)  ; Frc(value)
  br i1 %3634, label %3651, label %3638, !dx.controlflow.hints !123

; <label>:3638                                    ; preds = %3632
  %3639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3640 = extractvalue %dx.types.CBufRet.f32 %3639, 0
  %3641 = fmul fast float %3636, %3640
  %3642 = fmul fast float %3637, %3640
  %3643 = fptoui float %3641 to i32
  %3644 = fptoui float %3642 to i32
  %3645 = fptoui float %3635 to i32
  %3646 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %3643, i32 %3644, i32 %3645, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3647 = extractvalue %dx.types.ResRet.f32 %3646, 0
  %3648 = extractvalue %dx.types.ResRet.f32 %3646, 1
  %3649 = extractvalue %dx.types.ResRet.f32 %3646, 2
  %3650 = extractvalue %dx.types.ResRet.f32 %3646, 3
  br label %3657

; <label>:3651                                    ; preds = %3632
  %3652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %51, float %3636, float %3637, float %3635, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3653 = extractvalue %dx.types.ResRet.f32 %3652, 0
  %3654 = extractvalue %dx.types.ResRet.f32 %3652, 1
  %3655 = extractvalue %dx.types.ResRet.f32 %3652, 2
  %3656 = extractvalue %dx.types.ResRet.f32 %3652, 3
  br label %3657

; <label>:3657                                    ; preds = %3651, %3638
  %3658 = phi float [ %3647, %3638 ], [ %3653, %3651 ]
  %3659 = phi float [ %3648, %3638 ], [ %3654, %3651 ]
  %3660 = phi float [ %3649, %3638 ], [ %3655, %3651 ]
  %3661 = phi float [ %3650, %3638 ], [ %3656, %3651 ]
  %3662 = fsub fast float %3658, %3627
  %3663 = fsub fast float %3659, %3628
  %3664 = fsub fast float %3660, %3629
  %3665 = fsub fast float %3661, %3630
  %3666 = fmul fast float %3662, %3600
  %3667 = fmul fast float %3663, %3600
  %3668 = fmul fast float %3664, %3600
  %3669 = fmul fast float %3665, %3600
  %3670 = fadd fast float %3666, %3627
  %3671 = fadd fast float %3667, %3628
  %3672 = fadd fast float %3668, %3629
  %3673 = fadd fast float %3669, %3630
  br label %3702

; <label>:3674                                    ; preds = %3594
  %3675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %51, float %3602, float %3603, float %3599, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3676 = extractvalue %dx.types.ResRet.f32 %3675, 0
  %3677 = extractvalue %dx.types.ResRet.f32 %3675, 1
  %3678 = extractvalue %dx.types.ResRet.f32 %3675, 2
  %3679 = extractvalue %dx.types.ResRet.f32 %3675, 3
  %3680 = fcmp fast ogt float %3600, 0.000000e+00
  br i1 %3680, label %3681, label %3702, !dx.controlflow.hints !124

; <label>:3681                                    ; preds = %3674
  %3682 = fadd fast float %3599, 1.000000e+00
  %3683 = call float @dx.op.unary.f32(i32 22, float %3570)  ; Frc(value)
  %3684 = call float @dx.op.unary.f32(i32 22, float %3571)  ; Frc(value)
  %3685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %51, float %3683, float %3684, float %3682, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3686 = extractvalue %dx.types.ResRet.f32 %3685, 0
  %3687 = extractvalue %dx.types.ResRet.f32 %3685, 1
  %3688 = extractvalue %dx.types.ResRet.f32 %3685, 2
  %3689 = extractvalue %dx.types.ResRet.f32 %3685, 3
  %3690 = fsub fast float %3686, %3676
  %3691 = fsub fast float %3687, %3677
  %3692 = fsub fast float %3688, %3678
  %3693 = fsub fast float %3689, %3679
  %3694 = fmul fast float %3690, %3600
  %3695 = fmul fast float %3691, %3600
  %3696 = fmul fast float %3692, %3600
  %3697 = fmul fast float %3693, %3600
  %3698 = fadd fast float %3694, %3676
  %3699 = fadd fast float %3695, %3677
  %3700 = fadd fast float %3696, %3678
  %3701 = fadd fast float %3697, %3679
  br label %3702

; <label>:3702                                    ; preds = %3681, %3674, %3657, %3626
  %3703 = phi float [ %3670, %3657 ], [ %3627, %3626 ], [ %3698, %3681 ], [ %3676, %3674 ]
  %3704 = phi float [ %3671, %3657 ], [ %3628, %3626 ], [ %3699, %3681 ], [ %3677, %3674 ]
  %3705 = phi float [ %3672, %3657 ], [ %3629, %3626 ], [ %3700, %3681 ], [ %3678, %3674 ]
  %3706 = phi float [ %3673, %3657 ], [ %3630, %3626 ], [ %3701, %3681 ], [ %3679, %3674 ]
  %3707 = fadd fast float %3703, -5.000000e-01
  %3708 = fadd fast float %3705, -5.000000e-01
  %3709 = fmul fast float %3707, 0xBFD5555560000000
  %3710 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3708, float %3709)  ; FMad(a,b,c)
  %3711 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3704, float 0.000000e+00)  ; FMad(a,b,c)
  %3712 = fadd fast float %3711, %3706
  %3713 = fmul fast float %3707, -7.500000e-01
  %3714 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3708, float %3713)  ; FMad(a,b,c)
  %3715 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3704, float 0.000000e+00)  ; FMad(a,b,c)
  %3716 = fadd fast float %3715, %3706
  %3717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3718 = extractvalue %dx.types.CBufRet.f32 %3717, 0
  %3719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3720 = extractvalue %dx.types.CBufRet.f32 %3719, 0
  %3721 = extractvalue %dx.types.CBufRet.f32 %3719, 1
  %3722 = extractvalue %dx.types.CBufRet.f32 %3719, 2
  %3723 = extractvalue %dx.types.CBufRet.f32 %3719, 3
  %3724 = fsub fast float %3720, %3710
  %3725 = fsub fast float %3721, %3712
  %3726 = fsub fast float %3722, %3714
  %3727 = fsub fast float %3723, %3716
  %3728 = fmul fast float %3724, %3718
  %3729 = fmul fast float %3725, %3718
  %3730 = fmul fast float %3726, %3718
  %3731 = fmul fast float %3727, %3718
  %3732 = fadd fast float %3728, %3710
  %3733 = fadd fast float %3729, %3712
  %3734 = fadd fast float %3730, %3714
  %3735 = fadd fast float %3731, %3716
  %3736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.i32 %3736, 0
  %3738 = and i32 %3737, 536870911
  %3739 = uitofp i32 %3738 to float
  %3740 = fmul fast float %3739, %3575
  %3741 = fmul fast float %3739, %3576
  %3742 = fptoui float %3740 to i32
  %3743 = fptoui float %3741 to i32
  %3744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3745 = extractvalue %dx.types.ResRet.i32 %3744, 0
  %3746 = and i32 %3745, 31
  %3747 = lshr i32 %3742, %3746
  %3748 = lshr i32 %3743, %3746
  %3749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3750 = extractvalue %dx.types.ResRet.i32 %3749, 0
  %3751 = and i32 %3750, 31
  %3752 = shl i32 1, %3751
  %3753 = call i32 @dx.op.binary.i32(i32 40, i32 %3752, i32 4)  ; UMin(a,b)
  %3754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3755 = extractvalue %dx.types.ResRet.i32 %3754, 0
  %3756 = extractvalue %dx.types.ResRet.i32 %3754, 1
  %3757 = icmp eq i32 %3753, 0
  br i1 %3757, label %3799, label %3758

; <label>:3758                                    ; preds = %3702
  br label %3759

; <label>:3759                                    ; preds = %3787, %3758
  %3760 = phi i32 [ %3790, %3787 ], [ 0, %3758 ]
  %3761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3762 = extractvalue %dx.types.ResRet.i32 %3761, 0
  %3763 = lshr i32 %3762, 16
  %3764 = and i32 %3763, 31
  %3765 = shl i32 %3748, %3764
  %3766 = add i32 %3765, %3747
  %3767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3768 = extractvalue %dx.types.ResRet.i32 %3767, 0
  %3769 = and i32 %3768, 31
  %3770 = shl i32 %3766, %3769
  %3771 = add i32 %3770, %3760
  %3772 = shl i32 %3771, 2
  %3773 = add i32 %3772, 32
  %3774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3773, i32 undef)  ; BufferLoad(srv,index,wot)
  %3775 = extractvalue %dx.types.ResRet.i32 %3774, 0
  %3776 = icmp slt i32 %3775, 0
  %3777 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 %3760
  %3778 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %3760
  %3779 = bitcast float* %3777 to i32*
  %3780 = bitcast float* %3778 to i32*
  br i1 %3776, label %3781, label %3787

; <label>:3781                                    ; preds = %3759
  %3782 = and i32 %3775, 1073741823
  %3783 = add nuw nsw i32 %3782, 20
  %3784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3783, i32 undef)  ; BufferLoad(srv,index,wot)
  %3785 = extractvalue %dx.types.ResRet.i32 %3784, 0
  %3786 = extractvalue %dx.types.ResRet.i32 %3784, 1
  br label %3787

; <label>:3787                                    ; preds = %3781, %3759
  %3788 = phi i32 [ %3785, %3781 ], [ %3755, %3759 ]
  %3789 = phi i32 [ %3786, %3781 ], [ %3756, %3759 ]
  store i32 %3788, i32* %3779, align 4
  store i32 %3789, i32* %3780, align 4
  %3790 = add nuw i32 %3760, 1
  %3791 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3792 = extractvalue %dx.types.CBufRet.i32 %3791, 2
  %3793 = icmp eq i32 %3792, 0
  %3794 = icmp ugt i32 %3775, -1073741825
  %3795 = and i1 %3794, %3793
  %3796 = icmp ult i32 %3790, %3753
  %3797 = and i1 %3795, %3796
  br i1 %3797, label %3759, label %3798

; <label>:3798                                    ; preds = %3787
  br label %3799

; <label>:3799                                    ; preds = %3798, %3702
  %3800 = phi i32 [ 0, %3702 ], [ %3790, %3798 ]
  %3801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3801, 2
  %3803 = fptoui float %3802 to i32
  %3804 = icmp eq i32 %3803, 0
  br i1 %3804, label %3856, label %3805

; <label>:3805                                    ; preds = %3799
  br label %3806

; <label>:3806                                    ; preds = %3851, %3805
  %3807 = phi i32 [ %3852, %3851 ], [ %3800, %3805 ]
  %3808 = phi i32 [ %3853, %3851 ], [ 0, %3805 ]
  %3809 = lshr i32 %3808, 2
  %3810 = and i32 %3808, 3
  %3811 = add nuw nsw i32 %3809, 83
  %3812 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 %3811)  ; CBufferLoadLegacy(handle,regIndex)
  %3813 = extractvalue %dx.types.CBufRet.i32 %3812, 0
  %3814 = extractvalue %dx.types.CBufRet.i32 %3812, 1
  %3815 = extractvalue %dx.types.CBufRet.i32 %3812, 2
  %3816 = extractvalue %dx.types.CBufRet.i32 %3812, 3
  %3817 = getelementptr inbounds [4 x i32], [4 x i32]* %58, i32 0, i32 0
  store i32 %3813, i32* %3817, align 4
  %3818 = getelementptr inbounds [4 x i32], [4 x i32]* %58, i32 0, i32 1
  store i32 %3814, i32* %3818, align 4
  %3819 = getelementptr inbounds [4 x i32], [4 x i32]* %58, i32 0, i32 2
  store i32 %3815, i32* %3819, align 4
  %3820 = getelementptr inbounds [4 x i32], [4 x i32]* %58, i32 0, i32 3
  store i32 %3816, i32* %3820, align 4
  %3821 = getelementptr inbounds [4 x i32], [4 x i32]* %58, i32 0, i32 %3810
  %3822 = load i32, i32* %3821, align 4, !tbaa !125, !noalias !127
  %3823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.i32 %3823, 0
  %3825 = lshr i32 %3824, 16
  %3826 = and i32 %3825, 31
  %3827 = shl i32 %3748, %3826
  %3828 = add i32 %3827, %3747
  %3829 = shl i32 %3828, 2
  %3830 = add i32 %3829, %3822
  %3831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3830, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.i32 %3831, 0
  %3833 = icmp eq i32 %3832, 0
  br i1 %3833, label %3851, label %3834

; <label>:3834                                    ; preds = %3806
  %3835 = icmp slt i32 %3832, 0
  %3836 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 %3807
  %3837 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %3807
  %3838 = bitcast float* %3836 to i32*
  %3839 = bitcast float* %3837 to i32*
  br i1 %3835, label %3840, label %3847

; <label>:3840                                    ; preds = %3834
  %3841 = and i32 %3832, 1073741823
  %3842 = add i32 %3822, 20
  %3843 = add i32 %3842, %3841
  %3844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3843, i32 undef)  ; BufferLoad(srv,index,wot)
  %3845 = extractvalue %dx.types.ResRet.i32 %3844, 0
  %3846 = extractvalue %dx.types.ResRet.i32 %3844, 1
  br label %3847

; <label>:3847                                    ; preds = %3840, %3834
  %3848 = phi i32 [ %3845, %3840 ], [ %3755, %3834 ]
  %3849 = phi i32 [ %3846, %3840 ], [ %3756, %3834 ]
  store i32 %3848, i32* %3838, align 4
  store i32 %3849, i32* %3839, align 4
  %3850 = add i32 %3807, 1
  br label %3851

; <label>:3851                                    ; preds = %3847, %3806
  %3852 = phi i32 [ %3807, %3806 ], [ %3850, %3847 ]
  %3853 = add nuw i32 %3808, 1
  %3854 = icmp eq i32 %3853, %3803
  br i1 %3854, label %3855, label %3806

; <label>:3855                                    ; preds = %3851
  br label %3856

; <label>:3856                                    ; preds = %3855, %3799
  %3857 = phi i32 [ %3800, %3799 ], [ %3852, %3855 ]
  %3858 = icmp eq i32 %3857, 1
  %3859 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 0
  %3860 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 0
  br i1 %3858, label %3861, label %3864

; <label>:3861                                    ; preds = %3856
  %3862 = load float, float* %3859, align 4
  %3863 = load float, float* %3860, align 4
  br label %3891

; <label>:3864                                    ; preds = %3856
  %3865 = load float, float* %3859, align 4
  %3866 = load float, float* %3860, align 4
  %3867 = fdiv fast float 1.000000e+00, %3866
  %3868 = fsub fast float %3865, %3867
  %3869 = icmp ugt i32 %3857, 1
  br i1 %3869, label %3870, label %3886

; <label>:3870                                    ; preds = %3864
  br label %3871

; <label>:3871                                    ; preds = %3871, %3870
  %3872 = phi float [ %3881, %3871 ], [ %3868, %3870 ]
  %3873 = phi float [ %3882, %3871 ], [ %3865, %3870 ]
  %3874 = phi i32 [ %3883, %3871 ], [ 1, %3870 ]
  %3875 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 %3874
  %3876 = load float, float* %3875, align 4
  %3877 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %3874
  %3878 = load float, float* %3877, align 4
  %3879 = fdiv fast float 1.000000e+00, %3878
  %3880 = fsub fast float %3876, %3879
  %3881 = call float @dx.op.binary.f32(i32 36, float %3872, float %3880)  ; FMin(a,b)
  %3882 = call float @dx.op.binary.f32(i32 35, float %3873, float %3876)  ; FMax(a,b)
  %3883 = add nuw i32 %3874, 1
  %3884 = icmp eq i32 %3883, %3857
  br i1 %3884, label %3885, label %3871

; <label>:3885                                    ; preds = %3871
  br label %3886

; <label>:3886                                    ; preds = %3885, %3864
  %3887 = phi float [ %3868, %3864 ], [ %3881, %3885 ]
  %3888 = phi float [ %3865, %3864 ], [ %3882, %3885 ]
  %3889 = fsub fast float %3888, %3887
  %3890 = fdiv fast float 1.000000e+00, %3889
  br label %3891

; <label>:3891                                    ; preds = %3886, %3861
  %3892 = phi float [ %3862, %3861 ], [ %3888, %3886 ]
  %3893 = phi float [ %3863, %3861 ], [ %3890, %3886 ]
  %3894 = fadd fast float %3322, %3892
  %3895 = fmul fast float %3894, %3893
  %3896 = call float @dx.op.unary.f32(i32 7, float %3895)  ; Saturate(value)
  %3897 = fmul fast float %3896, 2.000000e+00
  %3898 = fsub fast float 1.000000e+00, %3897
  %3899 = fmul fast float %3732, %3732
  %3900 = fsub fast float %3733, %3899
  %3901 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3900)  ; FMax(a,b)
  %3902 = fdiv fast float 1.000000e+00, %3901
  %3903 = fmul fast float %3733, %3732
  %3904 = fsub fast float %3734, %3903
  %3905 = fsub fast float %3898, %3732
  %3906 = fmul fast float %3898, %3898
  %3907 = fsub fast float %3906, %3733
  %3908 = fmul fast float %3902, %3904
  %3909 = fmul fast float %3908, %3905
  %3910 = fsub fast float %3907, %3909
  %3911 = fmul fast float %3733, %3733
  %3912 = fsub fast float %3735, %3911
  %3913 = fmul fast float %3904, %3904
  %3914 = fmul fast float %3913, %3902
  %3915 = fsub fast float %3912, %3914
  %3916 = fdiv fast float %3910, %3915
  %3917 = fmul fast float %3916, %3904
  %3918 = fsub fast float %3905, %3917
  %3919 = fmul fast float %3918, %3902
  %3920 = fmul fast float %3919, %3732
  %3921 = fsub fast float 1.000000e+00, %3920
  %3922 = fmul fast float %3916, %3733
  %3923 = fsub fast float %3921, %3922
  %3924 = fmul fast float %3919, %3919
  %3925 = fmul fast float %3916, 4.000000e+00
  %3926 = fmul fast float %3925, %3923
  %3927 = fsub fast float %3924, %3926
  %3928 = call float @dx.op.unary.f32(i32 24, float %3927)  ; Sqrt(value)
  %3929 = fcmp fast oge float %3919, 0.000000e+00
  %3930 = fsub fast float -0.000000e+00, %3928
  %3931 = select i1 %3929, float %3930, float %3928
  %3932 = fsub fast float %3931, %3919
  %3933 = fdiv fast float %3932, %3916
  %3934 = fdiv fast float %3923, %3932
  %3935 = fmul fast float %3933, 5.000000e-01
  %3936 = fmul fast float %3934, 2.000000e+00
  %3937 = select i1 %3929, float %3935, float %3936
  %3938 = select i1 %3929, float %3936, float %3935
  %3939 = call float @dx.op.binary.f32(i32 35, float %3937, float %3938)  ; FMax(a,b)
  %3940 = call float @dx.op.binary.f32(i32 36, float %3937, float %3938)  ; FMin(a,b)
  %3941 = fcmp fast ogt float %3898, %3939
  %3942 = fsub fast float %3898, %3940
  %3943 = fsub fast float %3898, %3939
  %3944 = fsub fast float %3939, %3940
  %3945 = select i1 %3941, float %3943, float %3944
  %3946 = fmul float %3942, %3945
  %3947 = select i1 %3941, float %3940, float %3898
  %3948 = fcmp fast ogt float %3898, %3940
  %3949 = fmul fast float %3947, %3939
  %3950 = fadd fast float %3947, %3939
  %3951 = fmul fast float %3950, %3732
  %3952 = fadd fast float %3949, %3733
  %3953 = fsub fast float %3952, %3951
  %3954 = fdiv fast float %3953, %3946
  %3955 = select i1 %3948, float %3954, float 0.000000e+00
  %3956 = fsub fast float 1.000000e+00, %3955
  %3957 = select i1 %3941, float %3956, float %3955
  %3958 = call float @dx.op.unary.f32(i32 7, float %3957)  ; Saturate(value)
  %3959 = extractvalue %dx.types.CBufRet.f32 %3717, 3
  %3960 = fmul fast float %3959, %3958
  %3961 = fsub fast float 1.000000e+00, %3960
  br label %3962

; <label>:3962                                    ; preds = %3891, %3569, %3295, %3291, %3255
  %3963 = phi float [ 1.000000e+00, %3255 ], [ %3961, %3891 ], [ 1.000000e+00, %3295 ], [ 1.000000e+00, %3569 ], [ 1.000000e+00, %3291 ]
  %3964 = fcmp fast ogt float %3287, 0.000000e+00
  br i1 %3964, label %3965, label %3973, !dx.controlflow.hints !136

; <label>:3965                                    ; preds = %3962
  %3966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3967 = extractvalue %dx.types.CBufRet.f32 %3966, 2
  %3968 = fadd fast float %3967, %3170
  %3969 = call float @dx.op.binary.f32(i32 35, float %3968, float 0.000000e+00)  ; FMax(a,b)
  %3970 = fadd fast float %3969, 0x3F10000000000000
  %3971 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %54, float %3185, float %3186, float undef, float undef, i32 0, i32 0, i32 undef, float %3970)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3972 = extractvalue %dx.types.ResRet.f32 %3971, 0
  br label %3973

; <label>:3973                                    ; preds = %3965, %3962
  %3974 = phi float [ %3972, %3965 ], [ 1.000000e+00, %3962 ]
  %3975 = fcmp fast ogt float %3285, 0.000000e+00
  br i1 %3975, label %3976, label %3984, !dx.controlflow.hints !137

; <label>:3976                                    ; preds = %3973
  %3977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3978 = extractvalue %dx.types.CBufRet.f32 %3977, 1
  %3979 = fadd fast float %3978, %3170
  %3980 = call float @dx.op.binary.f32(i32 35, float %3979, float 0.000000e+00)  ; FMax(a,b)
  %3981 = fadd fast float %3980, 0x3F10000000000000
  %3982 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %54, float %3177, float %3178, float undef, float undef, i32 0, i32 0, i32 undef, float %3981)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3983 = extractvalue %dx.types.ResRet.f32 %3982, 0
  br label %3984

; <label>:3984                                    ; preds = %3976, %3973
  %3985 = phi float [ %3983, %3976 ], [ 1.000000e+00, %3973 ]
  %3986 = fcmp fast ogt float %3284, 0.000000e+00
  br i1 %3986, label %3987, label %3995, !dx.controlflow.hints !138

; <label>:3987                                    ; preds = %3984
  %3988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3989 = extractvalue %dx.types.CBufRet.f32 %3988, 0
  %3990 = fadd fast float %3989, %3170
  %3991 = call float @dx.op.binary.f32(i32 35, float %3990, float 0.000000e+00)  ; FMax(a,b)
  %3992 = fadd fast float %3991, 0x3F10000000000000
  %3993 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %54, float %3162, float %3166, float undef, float undef, i32 0, i32 0, i32 undef, float %3992)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3994 = extractvalue %dx.types.ResRet.f32 %3993, 0
  br label %3995

; <label>:3995                                    ; preds = %3987, %3984
  %3996 = phi float [ %3994, %3987 ], [ 1.000000e+00, %3984 ]
  %3997 = fsub fast float %3974, %3963
  %3998 = fmul fast float %3997, %3225
  %3999 = fadd fast float %3998, %3963
  %4000 = fsub fast float %3985, %3999
  %4001 = fmul fast float %4000, %3256
  %4002 = fadd fast float %4001, %3999
  %4003 = fsub fast float %3996, %4002
  %4004 = fmul fast float %4003, %3284
  %4005 = fadd fast float %4004, %4002
  %4006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4007 = extractvalue %dx.types.CBufRet.f32 %4006, 2
  %4008 = fcmp fast ogt float %4007, 0.000000e+00
  br i1 %4008, label %4009, label %4049, !dx.controlflow.hints !139

; <label>:4009                                    ; preds = %3995
  %4010 = fcmp fast ugt float %4007, 0.000000e+00
  br i1 %4010, label %4011, label %4046

; <label>:4011                                    ; preds = %4009
  %4012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4013 = extractvalue %dx.types.CBufRet.f32 %4012, 0
  %4014 = extractvalue %dx.types.CBufRet.f32 %4012, 1
  %4015 = extractvalue %dx.types.CBufRet.f32 %4012, 2
  %4016 = extractvalue %dx.types.CBufRet.f32 %4012, 3
  %4017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4018 = extractvalue %dx.types.CBufRet.f32 %4017, 0
  %4019 = extractvalue %dx.types.CBufRet.f32 %4017, 1
  %4020 = extractvalue %dx.types.CBufRet.f32 %4017, 2
  %4021 = extractvalue %dx.types.CBufRet.f32 %4017, 3
  %4022 = extractvalue %dx.types.CBufRet.f32 %4006, 0
  %4023 = extractvalue %dx.types.CBufRet.f32 %4006, 1
  %4024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.f32 %4024, 0
  %4026 = extractvalue %dx.types.CBufRet.f32 %4024, 1
  %4027 = extractvalue %dx.types.CBufRet.f32 %4024, 2
  %4028 = fadd fast float %4025, %135
  %4029 = fadd fast float %4026, %136
  %4030 = fadd fast float %4027, %137
  %4031 = fmul fast float %4028, %4013
  %4032 = call float @dx.op.tertiary.f32(i32 46, float %4014, float %4029, float %4031)  ; FMad(a,b,c)
  %4033 = call float @dx.op.tertiary.f32(i32 46, float %4015, float %4030, float %4032)  ; FMad(a,b,c)
  %4034 = fadd fast float %4033, %4016
  %4035 = fmul fast float %4028, %4018
  %4036 = call float @dx.op.tertiary.f32(i32 46, float %4019, float %4029, float %4035)  ; FMad(a,b,c)
  %4037 = call float @dx.op.tertiary.f32(i32 46, float %4020, float %4030, float %4036)  ; FMad(a,b,c)
  %4038 = fadd fast float %4037, %4021
  %4039 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %49, float %4034, float %4038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4040 = extractvalue %dx.types.ResRet.f32 %4039, 0
  %4041 = fmul fast float %4040, %4023
  %4042 = fadd fast float %4041, %4022
  %4043 = call float @dx.op.unary.f32(i32 7, float %4042)  ; Saturate(value)
  %4044 = fmul fast float %4043, %4007
  %4045 = fsub fast float 1.000000e+00, %4044
  br label %4046

; <label>:4046                                    ; preds = %4011, %4009
  %4047 = phi float [ %4045, %4011 ], [ 1.000000e+00, %4009 ]
  %4048 = fmul fast float %4047, %4005
  br label %4049

; <label>:4049                                    ; preds = %4046, %3995, %3127
  %4050 = phi float [ 1.000000e+00, %3127 ], [ %4048, %4046 ], [ %4005, %3995 ]
  %4051 = call float @dx.op.binary.f32(i32 36, float %4050, float %4050)  ; FMin(a,b)
  %4052 = call float @dx.op.binary.f32(i32 36, float %4050, float %4051)  ; FMin(a,b)
  %4053 = fcmp fast ogt float %4052, 0.000000e+00
  br i1 %4053, label %4054, label %4219, !dx.controlflow.hints !140

; <label>:4054                                    ; preds = %4049
  %4055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4056 = extractvalue %dx.types.CBufRet.f32 %4055, 0
  %4057 = extractvalue %dx.types.CBufRet.f32 %4055, 1
  %4058 = extractvalue %dx.types.CBufRet.f32 %4055, 2
  %4059 = extractvalue %dx.types.CBufRet.f32 %4055, 3
  %4060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.f32 %4060, 0
  %4062 = extractvalue %dx.types.CBufRet.f32 %4060, 1
  %4063 = extractvalue %dx.types.CBufRet.f32 %4060, 2
  %4064 = extractvalue %dx.types.CBufRet.f32 %4060, 3
  %4065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4066 = extractvalue %dx.types.CBufRet.f32 %4065, 0
  %4067 = extractvalue %dx.types.CBufRet.f32 %4065, 1
  %4068 = extractvalue %dx.types.CBufRet.f32 %4065, 2
  %4069 = extractvalue %dx.types.CBufRet.f32 %4065, 3
  %4070 = fmul fast float %4056, %135
  %4071 = call float @dx.op.tertiary.f32(i32 46, float %136, float %4057, float %4070)  ; FMad(a,b,c)
  %4072 = call float @dx.op.tertiary.f32(i32 46, float %137, float %4058, float %4071)  ; FMad(a,b,c)
  %4073 = fadd fast float %4072, %4059
  %4074 = fmul fast float %4061, %135
  %4075 = call float @dx.op.tertiary.f32(i32 46, float %136, float %4062, float %4074)  ; FMad(a,b,c)
  %4076 = call float @dx.op.tertiary.f32(i32 46, float %137, float %4063, float %4075)  ; FMad(a,b,c)
  %4077 = fadd fast float %4076, %4064
  %4078 = fmul fast float %4066, %135
  %4079 = call float @dx.op.tertiary.f32(i32 46, float %136, float %4067, float %4078)  ; FMad(a,b,c)
  %4080 = call float @dx.op.tertiary.f32(i32 46, float %137, float %4068, float %4079)  ; FMad(a,b,c)
  %4081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4082 = extractvalue %dx.types.CBufRet.f32 %4081, 0
  %4083 = extractvalue %dx.types.CBufRet.f32 %4081, 1
  %4084 = extractvalue %dx.types.CBufRet.f32 %4081, 3
  %4085 = fmul fast float %4084, %4073
  %4086 = fmul fast float %4084, %4077
  %4087 = fadd fast float %4085, %4082
  %4088 = fadd fast float %4086, %4083
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 0
  %4091 = extractvalue %dx.types.CBufRet.f32 %4089, 1
  %4092 = fsub fast float %4087, %4090
  %4093 = fsub fast float %4088, %4091
  %4094 = fcmp fast olt float %4092, 0.000000e+00
  %4095 = fcmp fast olt float %4093, 0.000000e+00
  %4096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4097 = extractvalue %dx.types.CBufRet.f32 %4096, 0
  %4098 = extractvalue %dx.types.CBufRet.f32 %4096, 1
  %4099 = extractvalue %dx.types.CBufRet.f32 %4096, 2
  %4100 = extractvalue %dx.types.CBufRet.f32 %4096, 3
  %4101 = select i1 %4094, float %4097, float %4099
  %4102 = select i1 %4095, float %4098, float %4100
  %4103 = fmul fast float %4101, %4092
  %4104 = fmul fast float %4102, %4093
  %4105 = call float @dx.op.unary.f32(i32 6, float %4103)  ; FAbs(value)
  %4106 = call float @dx.op.unary.f32(i32 6, float %4104)  ; FAbs(value)
  %4107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4107, 0
  %4109 = call float @dx.op.binary.f32(i32 35, float %4105, float %4106)  ; FMax(a,b)
  %4110 = fsub fast float %4108, %4109
  %4111 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  %4112 = fcmp fast ogt float %4111, 0.000000e+00
  br i1 %4112, label %4113, label %4154, !dx.controlflow.hints !141

; <label>:4113                                    ; preds = %4054
  %4114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %52, float %4087, float %4088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4115 = extractvalue %dx.types.ResRet.f32 %4114, 1
  %4116 = fcmp fast ogt float %4115, 0.000000e+00
  br i1 %4116, label %4117, label %4149

; <label>:4117                                    ; preds = %4113
  %4118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %52, float %4087, float %4088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4119 = extractvalue %dx.types.ResRet.f32 %4118, 0
  %4120 = extractvalue %dx.types.ResRet.f32 %4118, 1
  %4121 = extractvalue %dx.types.ResRet.f32 %4118, 2
  %4122 = extractvalue %dx.types.ResRet.f32 %4118, 3
  %4123 = fsub fast float 1.000000e+00, %4069
  %4124 = fsub fast float %4123, %4080
  %4125 = fmul fast float %4124, 0x400921FB60000000
  %4126 = fadd fast float %4125, 0x3FF921FB60000000
  %4127 = call float @dx.op.unary.f32(i32 13, float %4126)  ; Sin(value)
  %4128 = fadd fast float %4127, -1.000000e+00
  %4129 = fmul fast float %4128, 0x3FD45F3060000000
  %4130 = fmul fast float %4124, 0x401921FB60000000
  %4131 = fadd fast float %4130, 0x400921FB60000000
  %4132 = call float @dx.op.unary.f32(i32 13, float %4131)  ; Sin(value)
  %4133 = fadd fast float %4132, 0x3E7777A5C0000000
  %4134 = fmul fast float %4133, 0x3FC45F3060000000
  %4135 = fmul fast float %4124, 0x4022D97C80000000
  %4136 = fadd fast float %4135, 0x4012D97C80000000
  %4137 = call float @dx.op.unary.f32(i32 13, float %4136)  ; Sin(value)
  %4138 = fadd fast float %4137, 1.000000e+00
  %4139 = fmul fast float %4138, 0x3FBB2995E0000000
  %4140 = fmul fast float %4124, 0x402921FB60000000
  %4141 = fadd fast float %4140, 0x401921FB60000000
  %4142 = call float @dx.op.unary.f32(i32 13, float %4141)  ; Sin(value)
  %4143 = fadd fast float %4142, 0xBE8777A5C0000000
  %4144 = fmul fast float %4143, 0x3FB45F3060000000
  %4145 = call float @dx.op.dot4.f32(i32 56, float %4119, float %4120, float %4121, float %4122, float %4129, float %4134, float %4139, float %4144)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4146 = fmul fast float %4145, 0xBFF7154760000000
  %4147 = call float @dx.op.unary.f32(i32 21, float %4146)  ; Exp(value)
  %4148 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  br label %4149

; <label>:4149                                    ; preds = %4117, %4113
  %4150 = phi float [ %4148, %4117 ], [ 1.000000e+00, %4113 ]
  %4151 = fadd fast float %4150, -1.000000e+00
  %4152 = fmul fast float %4151, %4111
  %4153 = fadd fast float %4152, 1.000000e+00
  br label %4154

; <label>:4154                                    ; preds = %4149, %4054
  %4155 = phi float [ %4153, %4149 ], [ 1.000000e+00, %4054 ]
  %4156 = fmul fast float %4155, %4050
  %4157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4157, 0
  %4159 = extractvalue %dx.types.CBufRet.f32 %4157, 1
  %4160 = extractvalue %dx.types.CBufRet.f32 %4157, 2
  %4161 = fadd fast float %4158, %135
  %4162 = fadd fast float %4159, %136
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 1
  %4165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4166 = extractvalue %dx.types.CBufRet.f32 %4165, 0
  %4167 = extractvalue %dx.types.CBufRet.f32 %4165, 1
  %4168 = extractvalue %dx.types.CBufRet.f32 %4165, 2
  %4169 = fsub fast float -0.000000e+00, %4161
  %4170 = fsub fast float -0.000000e+00, %4162
  %4171 = fsub fast float %2246, %4160
  %4172 = fadd fast float %4171, %4164
  %4173 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4169, float %4170, float %4172)  ; Dot3(ax,ay,az,bx,by,bz)
  %4174 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4166, float %4167, float %4168)  ; Dot3(ax,ay,az,bx,by,bz)
  %4175 = fdiv fast float 1.000000e+00, %4174
  %4176 = fmul fast float %4175, %4173
  %4177 = fmul fast float %4166, %4176
  %4178 = fmul fast float %4167, %4176
  %4179 = fadd fast float %4177, %4161
  %4180 = fadd fast float %4178, %4162
  %4181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.f32 %4181, 0
  %4183 = extractvalue %dx.types.CBufRet.f32 %4181, 1
  %4184 = fsub fast float %4179, %4182
  %4185 = fsub fast float %4180, %4183
  %4186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4186, 2
  %4188 = extractvalue %dx.types.CBufRet.f32 %4186, 3
  %4189 = fmul fast float %4184, %4187
  %4190 = fmul fast float %4185, %4188
  %4191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.i32 %4191, 3
  %4193 = icmp eq i32 %4192, 0
  br i1 %4193, label %4199, label %4194

; <label>:4194                                    ; preds = %4154
  %4195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %51, float %4189, float %4190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4196 = extractvalue %dx.types.ResRet.f32 %4195, 0
  %4197 = extractvalue %dx.types.ResRet.f32 %4195, 1
  %4198 = extractvalue %dx.types.ResRet.f32 %4195, 2
  br label %4204

; <label>:4199                                    ; preds = %4154
  %4200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %52, float %4189, float %4190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.ResRet.f32 %4200, 1
  %4203 = extractvalue %dx.types.ResRet.f32 %4200, 2
  br label %4204

; <label>:4204                                    ; preds = %4199, %4194
  %4205 = phi float [ %4196, %4194 ], [ %4201, %4199 ]
  %4206 = phi float [ %4197, %4194 ], [ %4202, %4199 ]
  %4207 = phi float [ %4198, %4194 ], [ %4203, %4199 ]
  %4208 = extractvalue %dx.types.CBufRet.f32 %4163, 2
  %4209 = fmul fast float %4208, %4205
  %4210 = extractvalue %dx.types.CBufRet.f32 %4163, 0
  %4211 = fsub fast float %4176, %4210
  %4212 = fsub fast float %4211, %4209
  %4213 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4212)  ; FMax(a,b)
  %4214 = fmul fast float %4213, %4206
  %4215 = call float @dx.op.binary.f32(i32 36, float %4207, float %4214)  ; FMin(a,b)
  %4216 = fmul fast float %4215, 0xBFF7154760000000
  %4217 = call float @dx.op.unary.f32(i32 21, float %4216)  ; Exp(value)
  %4218 = fmul fast float %4156, %4217
  br label %4219

; <label>:4219                                    ; preds = %4204, %4049
  %4220 = phi float [ %4218, %4204 ], [ %4050, %4049 ]
  %4221 = call float @dx.op.binary.f32(i32 36, float %4220, float %4220)  ; FMin(a,b)
  %4222 = call float @dx.op.binary.f32(i32 36, float %4220, float %4221)  ; FMin(a,b)
  %4223 = fcmp fast ogt float %4222, 0.000000e+00
  br i1 %4223, label %4224, label %4447, !dx.controlflow.hints !142

; <label>:4224                                    ; preds = %4219
  %4225 = fmul fast float %4220, %3139
  %4226 = fmul fast float %4220, %3140
  %4227 = fmul fast float %4220, %3141
  %4228 = fsub fast float %3128, %2150
  %4229 = fsub fast float %3129, %2151
  %4230 = fsub fast float %3130, %2152
  %4231 = call float @dx.op.dot3.f32(i32 55, float %4228, float %4229, float %4230, float %4228, float %4229, float %4230)  ; Dot3(ax,ay,az,bx,by,bz)
  %4232 = call float @dx.op.unary.f32(i32 25, float %4231)  ; Rsqrt(value)
  %4233 = fmul fast float %4232, %4228
  %4234 = fmul fast float %4232, %4229
  %4235 = fmul fast float %4232, %4230
  %4236 = call float @dx.op.dot3.f32(i32 55, float %3128, float %3129, float %3130, float %2122, float %2123, float %2124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4237 = call float @dx.op.dot3.f32(i32 55, float %2247, float %2248, float %2249, float %4233, float %4234, float %4235)  ; Dot3(ax,ay,az,bx,by,bz)
  %4238 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4239 = fmul fast float %4238, %4238
  %4240 = fmul fast float %4239, %2264
  %4241 = call float @dx.op.unary.f32(i32 7, float %4240)  ; Saturate(value)
  %4242 = fmul fast float %4241, %4238
  %4243 = call float @dx.op.dot3.f32(i32 55, float %2122, float %2123, float %2124, float %4233, float %4234, float %4235)  ; Dot3(ax,ay,az,bx,by,bz)
  %4244 = fmul fast float %4243, %4243
  %4245 = call float @dx.op.unary.f32(i32 6, float %4236)  ; FAbs(value)
  %4246 = fsub fast float 1.000000e+00, %2205
  %4247 = call float @dx.op.binary.f32(i32 35, float %4246, float 0x3F847AE140000000)  ; FMax(a,b)
  %4248 = fmul fast float %4247, %4247
  %4249 = fmul fast float %4248, %4248
  %4250 = fsub fast float 1.000000e+00, %4249
  %4251 = fmul fast float %2252, %2252
  %4252 = fmul fast float %4251, %4250
  %4253 = fadd fast float %4252, %4249
  %4254 = bitcast float %4253 to i32
  %4255 = ashr i32 %4254, 1
  %4256 = add nsw i32 %4255, 532487669
  %4257 = bitcast i32 %4256 to float
  %4258 = fadd fast float %4257, %2252
  %4259 = fmul fast float %4249, %4244
  %4260 = fsub fast float 1.000000e+00, %4244
  %4261 = fadd fast float %4260, %4259
  %4262 = fmul fast float %4245, %4245
  %4263 = fmul fast float %4262, %4250
  %4264 = fadd fast float %4263, %4249
  %4265 = bitcast float %4264 to i32
  %4266 = ashr i32 %4265, 1
  %4267 = add nsw i32 %4266, 532487669
  %4268 = bitcast i32 %4267 to float
  %4269 = fadd fast float %4268, %4245
  %4270 = fmul fast float %4261, %4261
  %4271 = fmul fast float %4270, %4258
  %4272 = fmul fast float %4271, %4269
  %4273 = fdiv fast float 0x3FF0A00000000000, %4272
  %4274 = fmul fast float %4273, %4249
  %4275 = call float @dx.op.unary.f32(i32 6, float %4237)  ; FAbs(value)
  %4276 = fsub fast float 1.000000e+00, %4275
  %4277 = bitcast float %4276 to i32
  %4278 = sitofp i32 %4277 to float
  %4279 = fmul fast float %4278, 5.000000e+00
  %4280 = fadd fast float %4279, 0xC1EFBF8940000000
  %4281 = fptosi float %4280 to i32
  %4282 = bitcast i32 %4281 to float
  %4283 = fmul fast float %4282, %3077
  %4284 = fmul fast float %4282, %3078
  %4285 = fmul fast float %4282, %3079
  %4286 = fadd fast float %4283, %2143
  %4287 = fadd fast float %4284, %2144
  %4288 = fadd fast float %4285, %2250
  %4289 = select i1 %3090, float %4275, float 0.000000e+00
  %4290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %52, float %3087, float %4289, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4291 = extractvalue %dx.types.ResRet.f32 %4290, 0
  %4292 = extractvalue %dx.types.ResRet.f32 %4290, 1
  %4293 = extractvalue %dx.types.ResRet.f32 %4290, 2
  %4294 = fadd fast float %4291, -5.000000e-01
  %4295 = fadd fast float %4292, -5.000000e-01
  %4296 = fadd fast float %4293, -5.000000e-01
  %4297 = fmul fast float %3102, %4294
  %4298 = fmul fast float %3106, %4295
  %4299 = fmul fast float %3110, %4296
  %4300 = fadd fast float %4286, %4297
  %4301 = fadd fast float %4287, %4298
  %4302 = fadd fast float %4288, %4299
  %4303 = call float @dx.op.unary.f32(i32 7, float %4300)  ; Saturate(value)
  %4304 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4305 = call float @dx.op.unary.f32(i32 7, float %4302)  ; Saturate(value)
  %4306 = fmul fast float %4236, 9.843750e-01
  %4307 = fmul fast float %2205, 9.843750e-01
  %4308 = fadd fast float %4306, 7.812500e-03
  %4309 = fadd fast float %4307, 7.812500e-03
  %4310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %52, float %4308, float %4309, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4311 = extractvalue %dx.types.ResRet.f32 %4310, 2
  %4312 = extractvalue %dx.types.ResRet.f32 %4310, 3
  %4313 = select i1 %3090, float %4236, float 0.000000e+00
  %4314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %52, float %3087, float %4313, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4315 = extractvalue %dx.types.ResRet.f32 %4314, 0
  %4316 = extractvalue %dx.types.ResRet.f32 %4314, 1
  %4317 = extractvalue %dx.types.ResRet.f32 %4314, 2
  %4318 = fadd fast float %4315, -5.000000e-01
  %4319 = fadd fast float %4316, -5.000000e-01
  %4320 = fadd fast float %4317, -5.000000e-01
  %4321 = fmul fast float %3077, 4.000000e+00
  %4322 = fmul fast float %4321, %3089
  %4323 = fmul fast float %4322, %4318
  %4324 = fmul fast float %3078, 4.000000e+00
  %4325 = fmul fast float %4324, %3089
  %4326 = fmul fast float %4325, %4319
  %4327 = fmul fast float %3079, 4.000000e+00
  %4328 = fmul fast float %4327, %3089
  %4329 = fmul fast float %4328, %4320
  %4330 = fadd fast float %4323, %4311
  %4331 = fmul fast float %4330, %2143
  %4332 = fadd fast float %4331, %4312
  %4333 = fadd fast float %4326, %4311
  %4334 = fmul fast float %4333, %2144
  %4335 = fadd fast float %4334, %4312
  %4336 = fadd fast float %4329, %4311
  %4337 = fmul fast float %4336, %2250
  %4338 = fadd fast float %4337, %4312
  %4339 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4340 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4341 = call float @dx.op.unary.f32(i32 7, float %4338)  ; Saturate(value)
  %4342 = call float @dx.op.binary.f32(i32 35, float %4340, float %4341)  ; FMax(a,b)
  %4343 = call float @dx.op.binary.f32(i32 35, float %4339, float %4342)  ; FMax(a,b)
  %4344 = fsub fast float 1.000000e+00, %4343
  %4345 = fsub fast float -0.000000e+00, %2122
  %4346 = fsub fast float -0.000000e+00, %2123
  %4347 = fsub fast float -0.000000e+00, %2124
  %4348 = call float @dx.op.dot3.f32(i32 55, float %3128, float %3129, float %3130, float %4345, float %4346, float %4347)  ; Dot3(ax,ay,az,bx,by,bz)
  %4349 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4350 = fmul fast float %4349, 9.843750e-01
  %4351 = fadd fast float %4350, 7.812500e-03
  %4352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %52, float %4351, float %4309, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4353 = extractvalue %dx.types.ResRet.f32 %4352, 2
  %4354 = extractvalue %dx.types.ResRet.f32 %4352, 3
  %4355 = select i1 %3090, float %4349, float 0.000000e+00
  %4356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %52, float %3087, float %4355, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4357 = extractvalue %dx.types.ResRet.f32 %4356, 0
  %4358 = extractvalue %dx.types.ResRet.f32 %4356, 1
  %4359 = extractvalue %dx.types.ResRet.f32 %4356, 2
  %4360 = fadd fast float %4357, -5.000000e-01
  %4361 = fadd fast float %4358, -5.000000e-01
  %4362 = fadd fast float %4359, -5.000000e-01
  %4363 = fmul fast float %4322, %4360
  %4364 = fmul fast float %4325, %4361
  %4365 = fmul fast float %4328, %4362
  %4366 = fadd fast float %4363, %4353
  %4367 = fmul fast float %4366, %2143
  %4368 = fadd fast float %4367, %4354
  %4369 = fadd fast float %4364, %4353
  %4370 = fmul fast float %4369, %2144
  %4371 = fadd fast float %4370, %4354
  %4372 = fadd fast float %4365, %4353
  %4373 = fmul fast float %4372, %2250
  %4374 = fadd fast float %4373, %4354
  %4375 = call float @dx.op.unary.f32(i32 7, float %4368)  ; Saturate(value)
  %4376 = call float @dx.op.unary.f32(i32 7, float %4371)  ; Saturate(value)
  %4377 = call float @dx.op.unary.f32(i32 7, float %4374)  ; Saturate(value)
  %4378 = call float @dx.op.binary.f32(i32 35, float %4376, float %4377)  ; FMax(a,b)
  %4379 = call float @dx.op.binary.f32(i32 35, float %4375, float %4378)  ; FMax(a,b)
  %4380 = fsub fast float 1.000000e+00, %4379
  %4381 = fmul fast float %2144, 0x4012D0A400000000
  %4382 = fadd fast float %4381, 0x3FDB6377A0000000
  %4383 = fmul fast float %4246, %4382
  %4384 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4385 = fsub fast float %3128, %2257
  %4386 = fsub fast float %3129, %2258
  %4387 = fsub fast float %3130, %2259
  %4388 = call float @dx.op.dot3.f32(i32 55, float %4385, float %4386, float %4387, float %4385, float %4386, float %4387)  ; Dot3(ax,ay,az,bx,by,bz)
  %4389 = call float @dx.op.unary.f32(i32 25, float %4388)  ; Rsqrt(value)
  %4390 = fmul fast float %4389, %4385
  %4391 = fmul fast float %4389, %4386
  %4392 = fmul fast float %4389, %4387
  %4393 = call float @dx.op.dot3.f32(i32 55, float %4345, float %4346, float %4347, float %4390, float %4391, float %4392)  ; Dot3(ax,ay,az,bx,by,bz)
  %4394 = fmul fast float %4393, %4393
  %4395 = call float @dx.op.unary.f32(i32 6, float %4349)  ; FAbs(value)
  %4396 = call float @dx.op.binary.f32(i32 35, float %4384, float 0x3F847AE140000000)  ; FMax(a,b)
  %4397 = fmul fast float %4396, %4396
  %4398 = fmul fast float %4397, %4397
  %4399 = fsub fast float 1.000000e+00, %4398
  %4400 = fmul fast float %4251, %4399
  %4401 = fadd fast float %4400, %4398
  %4402 = bitcast float %4401 to i32
  %4403 = ashr i32 %4402, 1
  %4404 = add nsw i32 %4403, 532487669
  %4405 = bitcast i32 %4404 to float
  %4406 = fadd fast float %4405, %2252
  %4407 = fmul fast float %4398, %4394
  %4408 = fsub fast float 1.000000e+00, %4394
  %4409 = fadd fast float %4408, %4407
  %4410 = fmul fast float %4395, %4395
  %4411 = fmul fast float %4410, %4399
  %4412 = fadd fast float %4411, %4398
  %4413 = bitcast float %4412 to i32
  %4414 = ashr i32 %4413, 1
  %4415 = add nsw i32 %4414, 532487669
  %4416 = bitcast i32 %4415 to float
  %4417 = fadd fast float %4416, %4395
  %4418 = fmul fast float %4409, %4409
  %4419 = fmul fast float %4418, %4406
  %4420 = fmul fast float %4419, %4417
  %4421 = fdiv fast float 0x3FF0A00000000000, %4420
  %4422 = fmul fast float %4421, %4398
  %4423 = fmul fast float %4380, %4349
  %4424 = fmul fast float %4423, %4422
  %4425 = fmul fast float %4274, %4242
  %4426 = fmul fast float %4425, %4303
  %4427 = fmul fast float %4425, %4304
  %4428 = fmul fast float %4425, %4305
  %4429 = fadd fast float %4424, %4426
  %4430 = fadd fast float %4424, %4427
  %4431 = fadd fast float %4424, %4428
  %4432 = fmul fast float %4242, %4225
  %4433 = fmul fast float %4432, %4344
  %4434 = fmul fast float %4242, %4226
  %4435 = fmul fast float %4434, %4344
  %4436 = fmul fast float %4242, %4227
  %4437 = fmul fast float %4436, %4344
  %4438 = fadd fast float %4433, %3121
  %4439 = fadd fast float %4435, %3122
  %4440 = fadd fast float %4437, %3123
  %4441 = fmul fast float %4429, %4225
  %4442 = fmul fast float %4430, %4226
  %4443 = fmul fast float %4431, %4227
  %4444 = fadd fast float %4441, %2086
  %4445 = fadd fast float %4442, %2087
  %4446 = fadd fast float %4443, %2088
  br label %4447

; <label>:4447                                    ; preds = %4224, %4219, %3027
  %4448 = phi float [ %4220, %4224 ], [ 0.000000e+00, %3027 ], [ 0.000000e+00, %4219 ]
  %4449 = phi float [ %4444, %4224 ], [ %2086, %3027 ], [ %2086, %4219 ]
  %4450 = phi float [ %4445, %4224 ], [ %2087, %3027 ], [ %2087, %4219 ]
  %4451 = phi float [ %4446, %4224 ], [ %2088, %3027 ], [ %2088, %4219 ]
  %4452 = phi float [ %4438, %4224 ], [ %3121, %3027 ], [ %3121, %4219 ]
  %4453 = phi float [ %4439, %4224 ], [ %3122, %3027 ], [ %3122, %4219 ]
  %4454 = phi float [ %4440, %4224 ], [ %3123, %3027 ], [ %3123, %4219 ]
  %4455 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4456 = extractvalue %dx.types.CBufRet.i32 %4455, 0
  %4457 = icmp eq i32 %4456, 0
  br i1 %4457, label %5109, label %4458

; <label>:4458                                    ; preds = %4447
  %4459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4459, 2
  %4461 = extractvalue %dx.types.CBufRet.f32 %4459, 3
  %4462 = fmul fast float %4460, %80
  %4463 = fmul fast float %4461, %81
  %4464 = fptoui float %4462 to i32
  %4465 = fptoui float %4463 to i32
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 0
  %4468 = extractvalue %dx.types.CBufRet.f32 %4466, 2
  %4469 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4470 = fadd fast float %72, -4.000000e+00
  %4471 = call float @dx.op.binary.f32(i32 35, float %4470, float 0.000000e+00)  ; FMax(a,b)
  %4472 = fadd fast float %4471, %4467
  %4473 = fmul fast float %4472, %4468
  %4474 = call float @dx.op.unary.f32(i32 23, float %4473)  ; Log(value)
  %4475 = fmul fast float %4474, %4469
  %4476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4477 = extractvalue %dx.types.CBufRet.f32 %4476, 2
  %4478 = fmul fast float %4475, %4477
  %4479 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4481 = extractvalue %dx.types.CBufRet.i32 %4480, 1
  %4482 = add i32 %4481, -1
  %4483 = uitofp i32 %4481 to float
  %4484 = fmul fast float %4483, %4479
  %4485 = fptoui float %4484 to i32
  %4486 = call i32 @dx.op.binary.i32(i32 40, i32 %4485, i32 %4482)  ; UMin(a,b)
  %4487 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.i32 %4487, 2
  %4489 = extractvalue %dx.types.CBufRet.i32 %4487, 3
  %4490 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4465, i32 %4488, i32 %4464)  ; UMad(a,b,c)
  %4491 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4486, i32 %4489, i32 %4490)  ; UMad(a,b,c)
  %4492 = add nsw i32 %4456, -1
  %4493 = call i32 @dx.op.binary.i32(i32 37, i32 %4492, i32 0)  ; IMax(a,b)
  %4494 = call float @dx.op.binary.f32(i32 35, float %72, float 0.000000e+00)  ; FMax(a,b)
  %4495 = fptoui float %4494 to i32
  %4496 = lshr i32 %4495, 5
  %4497 = call i32 @dx.op.binary.i32(i32 40, i32 %4496, i32 8191)  ; UMin(a,b)
  %4498 = shl i32 %4497, 2
  %4499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4498, i32 undef)  ; BufferLoad(srv,index,wot)
  %4500 = extractvalue %dx.types.ResRet.i32 %4499, 0
  %4501 = lshr i32 %4500, 16
  %4502 = and i32 %4500, 65535
  %4503 = lshr i32 %4500, 21
  %4504 = lshr i32 %4502, 5
  %4505 = call i32 @dx.op.binary.i32(i32 40, i32 %4504, i32 %4493)  ; UMin(a,b)
  %4506 = icmp ugt i32 %4503, %4505
  br i1 %4506, label %5109, label %4507

; <label>:4507                                    ; preds = %4458
  br label %4508

; <label>:4508                                    ; preds = %5099, %4507
  %4509 = phi i32 [ %5106, %5099 ], [ %4503, %4507 ]
  %4510 = phi float [ %5100, %5099 ], [ %4449, %4507 ]
  %4511 = phi float [ %5101, %5099 ], [ %4450, %4507 ]
  %4512 = phi float [ %5102, %5099 ], [ %4451, %4507 ]
  %4513 = phi float [ %5103, %5099 ], [ %4452, %4507 ]
  %4514 = phi float [ %5104, %5099 ], [ %4453, %4507 ]
  %4515 = phi float [ %5105, %5099 ], [ %4454, %4507 ]
  %4516 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4517 = extractvalue %dx.types.CBufRet.i32 %4516, 0
  %4518 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4491, i32 %4517, i32 %4509)  ; UMad(a,b,c)
  %4519 = shl i32 %4518, 2
  %4520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4519, i32 undef)  ; BufferLoad(srv,index,wot)
  %4521 = extractvalue %dx.types.ResRet.i32 %4520, 0
  %4522 = shl i32 %4509, 5
  %4523 = sub nsw i32 %4501, %4522
  %4524 = call i32 @dx.op.binary.i32(i32 37, i32 %4523, i32 0)  ; IMax(a,b)
  %4525 = call i32 @dx.op.binary.i32(i32 38, i32 %4524, i32 31)  ; IMin(a,b)
  %4526 = sub nsw i32 1, %4501
  %4527 = add nsw i32 %4526, %4502
  %4528 = call i32 @dx.op.binary.i32(i32 37, i32 %4527, i32 0)  ; IMax(a,b)
  %4529 = call i32 @dx.op.binary.i32(i32 38, i32 %4528, i32 32)  ; IMin(a,b)
  %4530 = and i32 %4529, 31
  %4531 = shl i32 -1, %4530
  %4532 = xor i32 %4531, -1
  %4533 = and i32 %4525, 31
  %4534 = shl i32 %4532, %4533
  %4535 = icmp eq i32 %4529, 32
  %4536 = select i1 %4535, i32 -1, i32 %4534
  %4537 = and i32 %4536, %4521
  %4538 = icmp eq i32 %4537, 0
  br i1 %4538, label %5099, label %4539

; <label>:4539                                    ; preds = %4508
  br label %4540

; <label>:4540                                    ; preds = %4675, %4539
  %4541 = phi i32 [ %4552, %4675 ], [ %4537, %4539 ]
  %4542 = phi float [ %4676, %4675 ], [ %4510, %4539 ]
  %4543 = phi float [ %4677, %4675 ], [ %4511, %4539 ]
  %4544 = phi float [ %4678, %4675 ], [ %4512, %4539 ]
  %4545 = phi float [ %4679, %4675 ], [ %4513, %4539 ]
  %4546 = phi float [ %4680, %4675 ], [ %4514, %4539 ]
  %4547 = phi float [ %4681, %4675 ], [ %4515, %4539 ]
  %4548 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4541)  ; FirstbitLo(value)
  %4549 = add i32 %4548, %4522
  %4550 = and i32 %4548, 31
  %4551 = shl i32 1, %4550
  %4552 = xor i32 %4551, %4541
  %4553 = mul i32 %4549, 112
  %4554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4553, i32 undef)  ; BufferLoad(srv,index,wot)
  %4555 = extractvalue %dx.types.ResRet.f32 %4554, 0
  %4556 = extractvalue %dx.types.ResRet.f32 %4554, 1
  %4557 = extractvalue %dx.types.ResRet.f32 %4554, 2
  %4558 = or i32 %4553, 12
  %4559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4558, i32 undef)  ; BufferLoad(srv,index,wot)
  %4560 = extractvalue %dx.types.ResRet.f32 %4559, 0
  %4561 = add i32 %4553, 16
  %4562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4561, i32 undef)  ; BufferLoad(srv,index,wot)
  %4563 = extractvalue %dx.types.ResRet.f32 %4562, 0
  %4564 = extractvalue %dx.types.ResRet.f32 %4562, 1
  %4565 = extractvalue %dx.types.ResRet.f32 %4562, 2
  %4566 = add i32 %4553, 28
  %4567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4566, i32 undef)  ; BufferLoad(srv,index,wot)
  %4568 = extractvalue %dx.types.ResRet.i32 %4567, 0
  %4569 = add i32 %4553, 44
  %4570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4569, i32 undef)  ; BufferLoad(srv,index,wot)
  %4571 = extractvalue %dx.types.ResRet.f32 %4570, 0
  %4572 = add i32 %4553, 48
  %4573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4572, i32 undef)  ; BufferLoad(srv,index,wot)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4575 = extractvalue %dx.types.ResRet.f32 %4573, 1
  %4576 = extractvalue %dx.types.ResRet.f32 %4573, 2
  %4577 = extractvalue %dx.types.ResRet.f32 %4573, 3
  %4578 = add i32 %4553, 64
  %4579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4578, i32 undef)  ; BufferLoad(srv,index,wot)
  %4580 = extractvalue %dx.types.ResRet.f32 %4579, 0
  %4581 = extractvalue %dx.types.ResRet.f32 %4579, 1
  %4582 = extractvalue %dx.types.ResRet.f32 %4579, 2
  %4583 = extractvalue %dx.types.ResRet.f32 %4579, 3
  %4584 = add i32 %4553, 80
  %4585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4584, i32 undef)  ; BufferLoad(srv,index,wot)
  %4586 = extractvalue %dx.types.ResRet.f32 %4585, 1
  %4587 = extractvalue %dx.types.ResRet.f32 %4585, 2
  %4588 = add i32 %4553, 92
  %4589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4588, i32 undef)  ; BufferLoad(srv,index,wot)
  %4590 = extractvalue %dx.types.ResRet.i32 %4589, 0
  %4591 = call float @dx.op.dot3.f32(i32 55, float %4555, float %4556, float %4557, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4592 = select i1 %2245, float %4586, float %4555
  %4593 = select i1 %2245, float %4591, float %4556
  %4594 = select i1 %2245, float %4587, float %4557
  %4595 = and i32 %4590, 65535
  %4596 = uitofp i32 %4595 to float
  %4597 = lshr i32 %4590, 16
  %4598 = uitofp i32 %4597 to float
  %4599 = and i32 %4568, 65535
  %4600 = and i32 %4568, 50331648
  %4601 = icmp slt i32 %4568, 0
  %4602 = icmp eq i32 %4600, 33554432
  %4603 = fsub fast float %4574, %135
  %4604 = fsub fast float %4575, %136
  %4605 = fsub fast float %4576, %137
  %4606 = call float @dx.op.dot3.f32(i32 55, float %4603, float %4604, float %4605, float %4603, float %4604, float %4605)  ; Dot3(ax,ay,az,bx,by,bz)
  %4607 = call float @dx.op.unary.f32(i32 24, float %4606)  ; Sqrt(value)
  %4608 = fdiv fast float 1.000000e+00, %4607
  %4609 = fmul fast float %4608, %4603
  %4610 = fmul fast float %4608, %4604
  %4611 = fmul fast float %4608, %4605
  %4612 = fadd fast float %4607, %4560
  %4613 = fdiv fast float 1.000000e+00, %4612
  %4614 = fmul float %4571, %4613
  %4615 = fmul float %4614, %4614
  %4616 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  br i1 %4602, label %4617, label %4638

; <label>:4617                                    ; preds = %4540
  %4618 = fmul fast float %4582, %4563
  %4619 = fmul fast float %4582, %4564
  %4620 = fmul fast float %4582, %4565
  %4621 = fadd fast float %4603, %4618
  %4622 = fadd fast float %4604, %4619
  %4623 = fadd fast float %4605, %4620
  %4624 = call float @dx.op.dot3.f32(i32 55, float %4621, float %4622, float %4623, float %4621, float %4622, float %4623)  ; Dot3(ax,ay,az,bx,by,bz)
  %4625 = call float @dx.op.unary.f32(i32 25, float %4624)  ; Rsqrt(value)
  %4626 = fmul fast float %4625, %4621
  %4627 = fmul fast float %4625, %4622
  %4628 = fmul fast float %4625, %4623
  %4629 = fsub fast float %135, %4574
  %4630 = fsub fast float %136, %4575
  %4631 = fsub fast float %137, %4576
  %4632 = fsub fast float -0.000000e+00, %4629
  %4633 = fsub fast float -0.000000e+00, %4630
  %4634 = fsub fast float -0.000000e+00, %4631
  %4635 = call float @dx.op.dot3.f32(i32 55, float %4632, float %4633, float %4634, float %4563, float %4564, float %4565)  ; Dot3(ax,ay,az,bx,by,bz)
  %4636 = fcmp fast ogt float %4635, 0.000000e+00
  %4637 = uitofp i1 %4636 to float
  br label %4638

; <label>:4638                                    ; preds = %4617, %4540
  %4639 = phi float [ %4637, %4617 ], [ 1.000000e+00, %4540 ]
  %4640 = phi float [ %4626, %4617 ], [ %4609, %4540 ]
  %4641 = phi float [ %4627, %4617 ], [ %4610, %4540 ]
  %4642 = phi float [ %4628, %4617 ], [ %4611, %4540 ]
  %4643 = call float @dx.op.dot3.f32(i32 55, float %4563, float %4564, float %4565, float %4640, float %4641, float %4642)  ; Dot3(ax,ay,az,bx,by,bz)
  %4644 = fmul fast float %4643, %4643
  %4645 = call float @dx.op.unary.f32(i32 7, float %4644)  ; Saturate(value)
  %4646 = fsub fast float 1.000000e+00, %4645
  %4647 = fmul fast float %4646, 5.000000e-01
  %4648 = fcmp fast ogt float %4643, 0.000000e+00
  %4649 = fsub fast float 1.000000e+00, %4647
  %4650 = select i1 %4648, float %4647, float %4649
  %4651 = fmul fast float %4650, %4598
  %4652 = fadd fast float %4651, %4596
  %4653 = fmul fast float %4652, 0x3EF0001000000000
  %4654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %4653, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4655 = extractvalue %dx.types.ResRet.f32 %4654, 0
  %4656 = fmul fast float %4643, %4580
  %4657 = fadd fast float %4656, %4581
  %4658 = call float @dx.op.unary.f32(i32 7, float %4657)  ; Saturate(value)
  %4659 = select i1 %4602, float 1.000000e+00, float %4658
  %4660 = select i1 %4602, float %4658, float 1.000000e+00
  %4661 = fmul fast float %4607, %4577
  %4662 = fsub fast float 1.000000e+00, %4661
  %4663 = fmul fast float %4662, %4583
  %4664 = call float @dx.op.unary.f32(i32 7, float %4663)  ; Saturate(value)
  %4665 = fmul fast float %4664, %4660
  %4666 = fmul fast float %4665, 2.000000e+00
  %4667 = fsub fast float 3.000000e+00, %4666
  %4668 = fmul fast float %4655, %4639
  %4669 = fmul fast float %4665, %4665
  %4670 = fmul fast float %4669, %4668
  %4671 = fmul fast float %4670, %4667
  %4672 = call float @dx.op.binary.f32(i32 36, float %4671, float %4671)  ; FMin(a,b)
  %4673 = call float @dx.op.binary.f32(i32 36, float %4671, float %4672)  ; FMin(a,b)
  %4674 = fcmp fast ogt float %4673, 0.000000e+00
  br i1 %4674, label %4683, label %4675, !dx.controlflow.hints !143

; <label>:4675                                    ; preds = %5072, %4822, %4638
  %4676 = phi float [ %4542, %4822 ], [ %4542, %4638 ], [ %5095, %5072 ]
  %4677 = phi float [ %4543, %4822 ], [ %4543, %4638 ], [ %5096, %5072 ]
  %4678 = phi float [ %4544, %4822 ], [ %4544, %4638 ], [ %5097, %5072 ]
  %4679 = phi float [ %4545, %4822 ], [ %4545, %4638 ], [ %5089, %5072 ]
  %4680 = phi float [ %4546, %4822 ], [ %4546, %4638 ], [ %5090, %5072 ]
  %4681 = phi float [ %4547, %4822 ], [ %4547, %4638 ], [ %5091, %5072 ]
  %4682 = icmp eq i32 %4541, %4551
  br i1 %4682, label %5098, label %4540

; <label>:4683                                    ; preds = %4638
  %4684 = icmp eq i32 %4599, 255
  br i1 %4684, label %4822, label %4685, !dx.controlflow.hints !144

; <label>:4685                                    ; preds = %4683
  %4686 = mul nuw nsw i32 %4599, 176
  %4687 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4686, i32 undef)  ; BufferLoad(srv,index,wot)
  %4688 = extractvalue %dx.types.ResRet.f32 %4687, 0
  %4689 = extractvalue %dx.types.ResRet.f32 %4687, 1
  %4690 = extractvalue %dx.types.ResRet.f32 %4687, 2
  %4691 = extractvalue %dx.types.ResRet.f32 %4687, 3
  %4692 = add nuw nsw i32 %4686, 16
  %4693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4692, i32 undef)  ; BufferLoad(srv,index,wot)
  %4694 = extractvalue %dx.types.ResRet.f32 %4693, 0
  %4695 = extractvalue %dx.types.ResRet.f32 %4693, 1
  %4696 = add nuw nsw i32 %4686, 32
  %4697 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4696, i32 undef)  ; BufferLoad(srv,index,wot)
  %4698 = extractvalue %dx.types.ResRet.f32 %4697, 0
  %4699 = extractvalue %dx.types.ResRet.f32 %4697, 1
  %4700 = add nuw nsw i32 %4686, 48
  %4701 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4700, i32 undef)  ; BufferLoad(srv,index,wot)
  %4702 = extractvalue %dx.types.ResRet.f32 %4701, 0
  %4703 = extractvalue %dx.types.ResRet.f32 %4701, 1
  %4704 = extractvalue %dx.types.ResRet.f32 %4701, 2
  %4705 = extractvalue %dx.types.ResRet.f32 %4701, 3
  %4706 = add nuw nsw i32 %4686, 64
  %4707 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4706, i32 undef)  ; BufferLoad(srv,index,wot)
  %4708 = extractvalue %dx.types.ResRet.f32 %4707, 0
  %4709 = extractvalue %dx.types.ResRet.f32 %4707, 1
  %4710 = extractvalue %dx.types.ResRet.f32 %4707, 2
  %4711 = extractvalue %dx.types.ResRet.f32 %4707, 3
  %4712 = add nuw nsw i32 %4686, 80
  %4713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4712, i32 undef)  ; BufferLoad(srv,index,wot)
  %4714 = extractvalue %dx.types.ResRet.f32 %4713, 0
  %4715 = extractvalue %dx.types.ResRet.f32 %4713, 1
  %4716 = extractvalue %dx.types.ResRet.f32 %4713, 2
  %4717 = extractvalue %dx.types.ResRet.f32 %4713, 3
  %4718 = add nuw nsw i32 %4686, 96
  %4719 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4718, i32 undef)  ; BufferLoad(srv,index,wot)
  %4720 = extractvalue %dx.types.ResRet.f32 %4719, 0
  %4721 = extractvalue %dx.types.ResRet.f32 %4719, 1
  %4722 = extractvalue %dx.types.ResRet.f32 %4719, 2
  %4723 = extractvalue %dx.types.ResRet.f32 %4719, 3
  %4724 = bitcast float %4695 to i32
  %4725 = fmul fast float %4702, %135
  %4726 = call float @dx.op.tertiary.f32(i32 46, float %136, float %4708, float %4725)  ; FMad(a,b,c)
  %4727 = call float @dx.op.tertiary.f32(i32 46, float %137, float %4714, float %4726)  ; FMad(a,b,c)
  %4728 = fadd fast float %4727, %4720
  %4729 = fmul fast float %4703, %135
  %4730 = call float @dx.op.tertiary.f32(i32 46, float %136, float %4709, float %4729)  ; FMad(a,b,c)
  %4731 = call float @dx.op.tertiary.f32(i32 46, float %137, float %4715, float %4730)  ; FMad(a,b,c)
  %4732 = fadd fast float %4731, %4721
  %4733 = fmul fast float %4704, %135
  %4734 = call float @dx.op.tertiary.f32(i32 46, float %136, float %4710, float %4733)  ; FMad(a,b,c)
  %4735 = call float @dx.op.tertiary.f32(i32 46, float %137, float %4716, float %4734)  ; FMad(a,b,c)
  %4736 = fadd fast float %4735, %4722
  %4737 = fmul fast float %4705, %135
  %4738 = call float @dx.op.tertiary.f32(i32 46, float %136, float %4711, float %4737)  ; FMad(a,b,c)
  %4739 = call float @dx.op.tertiary.f32(i32 46, float %137, float %4717, float %4738)  ; FMad(a,b,c)
  %4740 = fadd fast float %4739, %4723
  %4741 = fdiv fast float %4728, %4740
  %4742 = fdiv fast float %4732, %4740
  %4743 = fdiv fast float %4736, %4740
  %4744 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4743)  ; FMax(a,b)
  %4745 = fmul fast float %1610, 0x401921FB60000000
  %4746 = call float @dx.op.unary.f32(i32 13, float %4745)  ; Sin(value)
  %4747 = call float @dx.op.unary.f32(i32 12, float %4745)  ; Cos(value)
  %4748 = fmul fast float %4747, %4699
  %4749 = call float @dx.op.tertiary.f32(i32 46, float %4746, float %4699, float 0.000000e+00)  ; FMad(a,b,c)
  %4750 = fmul fast float %4699, %4746
  %4751 = fsub fast float -0.000000e+00, %4750
  %4752 = call float @dx.op.tertiary.f32(i32 46, float %4747, float %4699, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4753

; <label>:4753                                    ; preds = %4753, %4685
  %4754 = phi float [ 0.000000e+00, %4685 ], [ %4786, %4753 ]
  %4755 = phi float [ 0.000000e+00, %4685 ], [ %4788, %4753 ]
  %4756 = phi i32 [ 0, %4685 ], [ %4789, %4753 ]
  %4757 = mul i32 %4756, 2
  %4758 = add i32 0, %4757
  %4759 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4758
  %4760 = load float, float* %4759, align 4
  %4761 = mul i32 %4756, 2
  %4762 = add i32 1, %4761
  %4763 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4762
  %4764 = load float, float* %4763, align 4
  %4765 = fmul fast float %4748, %4760
  %4766 = call float @dx.op.tertiary.f32(i32 46, float %4764, float %4751, float %4765)  ; FMad(a,b,c)
  %4767 = fmul fast float %4760, %4749
  %4768 = call float @dx.op.tertiary.f32(i32 46, float %4764, float %4752, float %4767)  ; FMad(a,b,c)
  %4769 = fadd fast float %4766, %4741
  %4770 = fadd fast float %4768, %4742
  %4771 = fmul fast float %4769, %4694
  %4772 = fmul fast float %4770, %4694
  %4773 = call float @dx.op.binary.f32(i32 35, float %4771, float %4690)  ; FMax(a,b)
  %4774 = call float @dx.op.binary.f32(i32 35, float %4772, float %4690)  ; FMax(a,b)
  %4775 = call float @dx.op.binary.f32(i32 36, float %4773, float %4691)  ; FMin(a,b)
  %4776 = call float @dx.op.binary.f32(i32 36, float %4774, float %4691)  ; FMin(a,b)
  %4777 = fadd fast float %4775, %4688
  %4778 = fadd fast float %4776, %4689
  %4779 = uitofp i32 %4724 to float
  %4780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %53, float %4777, float %4778, float %4779, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4781 = extractvalue %dx.types.ResRet.f32 %4780, 0
  %4782 = fsub fast float %4781, %4744
  %4783 = fsub fast float %4782, %4698
  %4784 = fcmp fast ogt float %4783, 0.000000e+00
  %4785 = select i1 %4784, float 1.000000e+00, float 0.000000e+00
  %4786 = fadd fast float %4785, %4754
  %4787 = select i1 %4784, float %4783, float 0.000000e+00
  %4788 = fadd fast float %4787, %4755
  %4789 = add nuw nsw i32 %4756, 1
  %4790 = icmp eq i32 %4789, 8
  br i1 %4790, label %4791, label %4753

; <label>:4791                                    ; preds = %4753
  %4792 = fdiv fast float 1.000000e+00, %4786
  %4793 = fmul fast float %4792, %4788
  %4794 = fdiv fast float 1.000000e+00, %4744
  %4795 = fmul fast float %4793, %4794
  %4796 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  %4797 = call float @dx.op.binary.f32(i32 35, float %4796, float 0.000000e+00)  ; FMax(a,b)
  %4798 = fmul fast float %4786, 1.250000e-01
  %4799 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4800 = fmul fast float %4799, 2.000000e+00
  %4801 = fadd fast float %4800, -1.000000e+00
  %4802 = fcmp fast ogt float %4801, 0.000000e+00
  %4803 = fcmp fast olt float %4801, 0.000000e+00
  %4804 = zext i1 %4802 to i32
  %4805 = zext i1 %4803 to i32
  %4806 = sub nsw i32 %4804, %4805
  %4807 = sitofp i32 %4806 to float
  %4808 = fmul fast float %4807, %4801
  %4809 = fsub fast float 1.000000e+00, %4808
  %4810 = fmul fast float %4809, %4809
  %4811 = fmul fast float %4810, %4809
  %4812 = fsub fast float %4809, %4811
  %4813 = fmul fast float %4812, %4797
  %4814 = fsub fast float 1.000000e+00, %4811
  %4815 = fsub fast float %4814, %4813
  %4816 = fmul fast float %4807, 5.000000e-01
  %4817 = fmul fast float %4816, %4815
  %4818 = fsub fast float -5.000000e-01, %4817
  %4819 = fmul fast float %4818, %4659
  %4820 = fadd fast float %4819, 1.000000e+00
  %4821 = fmul fast float %4820, %4671
  br label %4822

; <label>:4822                                    ; preds = %4791, %4683
  %4823 = phi float [ %4821, %4791 ], [ %4671, %4683 ]
  %4824 = call float @dx.op.binary.f32(i32 36, float %4823, float %4823)  ; FMin(a,b)
  %4825 = call float @dx.op.binary.f32(i32 36, float %4823, float %4824)  ; FMin(a,b)
  %4826 = fcmp fast ogt float %4825, 0.000000e+00
  br i1 %4826, label %4827, label %4675, !dx.controlflow.hints !145

; <label>:4827                                    ; preds = %4822
  %4828 = fmul fast float %4823, %4592
  %4829 = fmul fast float %4823, %4593
  %4830 = fmul fast float %4823, %4594
  %4831 = fsub fast float %4609, %2150
  %4832 = fsub fast float %4610, %2151
  %4833 = fsub fast float %4611, %2152
  %4834 = call float @dx.op.dot3.f32(i32 55, float %4831, float %4832, float %4833, float %4831, float %4832, float %4833)  ; Dot3(ax,ay,az,bx,by,bz)
  %4835 = call float @dx.op.unary.f32(i32 25, float %4834)  ; Rsqrt(value)
  %4836 = fmul fast float %4835, %4831
  %4837 = fmul fast float %4835, %4832
  %4838 = fmul fast float %4835, %4833
  %4839 = call float @dx.op.dot3.f32(i32 55, float %4609, float %4610, float %4611, float %2122, float %2123, float %2124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4840 = call float @dx.op.dot3.f32(i32 55, float %2247, float %2248, float %2249, float %4836, float %4837, float %4838)  ; Dot3(ax,ay,az,bx,by,bz)
  %4841 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4842 = fmul fast float %4841, %4616
  %4843 = fmul fast float %4841, %4841
  %4844 = fmul fast float %4843, %2264
  %4845 = call float @dx.op.unary.f32(i32 7, float %4844)  ; Saturate(value)
  %4846 = fmul fast float %4842, %4845
  %4847 = bitcast float %4606 to i32
  %4848 = ashr i32 %4847, 1
  %4849 = sub nsw i32 1597463007, %4848
  %4850 = bitcast i32 %4849 to float
  %4851 = fmul fast float %4850, %4603
  %4852 = fmul fast float %4850, %4604
  %4853 = fmul fast float %4850, %4605
  %4854 = fsub fast float %4851, %2150
  %4855 = fsub fast float %4852, %2151
  %4856 = fsub fast float %4853, %2152
  %4857 = call float @dx.op.dot3.f32(i32 55, float %4854, float %4855, float %4856, float %4854, float %4855, float %4856)  ; Dot3(ax,ay,az,bx,by,bz)
  %4858 = call float @dx.op.unary.f32(i32 25, float %4857)  ; Rsqrt(value)
  %4859 = fmul fast float %4854, %4858
  %4860 = fmul fast float %4855, %4858
  %4861 = fmul fast float %4856, %4858
  %4862 = call float @dx.op.dot3.f32(i32 55, float %2122, float %2123, float %2124, float %4859, float %4860, float %4861)  ; Dot3(ax,ay,az,bx,by,bz)
  %4863 = fmul fast float %4862, %4862
  %4864 = call float @dx.op.unary.f32(i32 6, float %4839)  ; FAbs(value)
  %4865 = fsub fast float 1.000000e+00, %2205
  %4866 = call float @dx.op.binary.f32(i32 35, float %4865, float 0x3F847AE140000000)  ; FMax(a,b)
  %4867 = fmul fast float %4866, %4866
  %4868 = fmul fast float %4867, %4867
  %4869 = fsub fast float 1.000000e+00, %4868
  %4870 = fmul fast float %2252, %2252
  %4871 = fmul fast float %4870, %4869
  %4872 = fadd fast float %4871, %4868
  %4873 = bitcast float %4872 to i32
  %4874 = ashr i32 %4873, 1
  %4875 = add nsw i32 %4874, 532487669
  %4876 = bitcast i32 %4875 to float
  %4877 = fadd fast float %4876, %2252
  %4878 = fmul fast float %4868, %4863
  %4879 = fsub fast float 1.000000e+00, %4863
  %4880 = fadd fast float %4879, %4878
  %4881 = fmul fast float %4864, %4864
  %4882 = fmul fast float %4881, %4869
  %4883 = fadd fast float %4882, %4868
  %4884 = bitcast float %4883 to i32
  %4885 = ashr i32 %4884, 1
  %4886 = add nsw i32 %4885, 532487669
  %4887 = bitcast i32 %4886 to float
  %4888 = fadd fast float %4887, %4864
  %4889 = fmul fast float %4880, %4880
  %4890 = fmul fast float %4889, %4877
  %4891 = fmul fast float %4890, %4888
  %4892 = fdiv fast float 1.000000e+00, %4891
  %4893 = bitcast float %4868 to i32
  %4894 = sitofp i32 %4893 to float
  %4895 = fmul fast float %4894, 0x3FE7F73180000000
  %4896 = fadd fast float %4895, 0x41AFE27C40000000
  %4897 = fptosi float %4896 to i32
  %4898 = bitcast i32 %4897 to float
  %4899 = fmul fast float %4571, 0x3FD80E9D60000000
  %4900 = fmul fast float %4899, %4850
  %4901 = fadd fast float %4898, %4900
  %4902 = bitcast float %4901 to i32
  %4903 = sub nsw i32 2129859010, %4902
  %4904 = bitcast i32 %4903 to float
  %4905 = fmul fast float %4868, %4892
  %4906 = fmul fast float %4905, %4898
  %4907 = fmul fast float %4906, %4904
  %4908 = call float @dx.op.unary.f32(i32 6, float %4840)  ; FAbs(value)
  %4909 = fsub fast float 1.000000e+00, %4908
  %4910 = bitcast float %4909 to i32
  %4911 = sitofp i32 %4910 to float
  %4912 = fmul fast float %4911, 5.000000e+00
  %4913 = fadd fast float %4912, 0xC1EFBF8940000000
  %4914 = fptosi float %4913 to i32
  %4915 = bitcast i32 %4914 to float
  %4916 = fmul fast float %4915, %3077
  %4917 = fmul fast float %4915, %3078
  %4918 = fmul fast float %4915, %3079
  %4919 = fadd fast float %4916, %2143
  %4920 = fadd fast float %4917, %2144
  %4921 = fadd fast float %4918, %2250
  %4922 = select i1 %3090, float %4908, float 0.000000e+00
  %4923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %52, float %3087, float %4922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4924 = extractvalue %dx.types.ResRet.f32 %4923, 0
  %4925 = extractvalue %dx.types.ResRet.f32 %4923, 1
  %4926 = extractvalue %dx.types.ResRet.f32 %4923, 2
  %4927 = fadd fast float %4924, -5.000000e-01
  %4928 = fadd fast float %4925, -5.000000e-01
  %4929 = fadd fast float %4926, -5.000000e-01
  %4930 = fmul fast float %3102, %4927
  %4931 = fmul fast float %3106, %4928
  %4932 = fmul fast float %3110, %4929
  %4933 = fadd fast float %4919, %4930
  %4934 = fadd fast float %4920, %4931
  %4935 = fadd fast float %4921, %4932
  %4936 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4937 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4938 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4939 = fmul fast float %4839, 9.843750e-01
  %4940 = fmul fast float %2205, 9.843750e-01
  %4941 = fadd fast float %4939, 7.812500e-03
  %4942 = fadd fast float %4940, 7.812500e-03
  %4943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %52, float %4941, float %4942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4944 = extractvalue %dx.types.ResRet.f32 %4943, 2
  %4945 = extractvalue %dx.types.ResRet.f32 %4943, 3
  %4946 = select i1 %3090, float %4839, float 0.000000e+00
  %4947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %52, float %3087, float %4946, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4948 = extractvalue %dx.types.ResRet.f32 %4947, 0
  %4949 = extractvalue %dx.types.ResRet.f32 %4947, 1
  %4950 = extractvalue %dx.types.ResRet.f32 %4947, 2
  %4951 = fadd fast float %4948, -5.000000e-01
  %4952 = fadd fast float %4949, -5.000000e-01
  %4953 = fadd fast float %4950, -5.000000e-01
  %4954 = fmul fast float %3077, 4.000000e+00
  %4955 = fmul fast float %4954, %3089
  %4956 = fmul fast float %4955, %4951
  %4957 = fmul fast float %3078, 4.000000e+00
  %4958 = fmul fast float %4957, %3089
  %4959 = fmul fast float %4958, %4952
  %4960 = fmul fast float %3079, 4.000000e+00
  %4961 = fmul fast float %4960, %3089
  %4962 = fmul fast float %4961, %4953
  %4963 = fadd fast float %4956, %4944
  %4964 = fmul fast float %4963, %2143
  %4965 = fadd fast float %4964, %4945
  %4966 = fadd fast float %4959, %4944
  %4967 = fmul fast float %4966, %2144
  %4968 = fadd fast float %4967, %4945
  %4969 = fadd fast float %4962, %4944
  %4970 = fmul fast float %4969, %2250
  %4971 = fadd fast float %4970, %4945
  %4972 = call float @dx.op.unary.f32(i32 7, float %4965)  ; Saturate(value)
  %4973 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  %4974 = call float @dx.op.unary.f32(i32 7, float %4971)  ; Saturate(value)
  %4975 = call float @dx.op.binary.f32(i32 35, float %4973, float %4974)  ; FMax(a,b)
  %4976 = call float @dx.op.binary.f32(i32 35, float %4972, float %4975)  ; FMax(a,b)
  %4977 = fsub fast float 1.000000e+00, %4976
  %4978 = fsub fast float -0.000000e+00, %2122
  %4979 = fsub fast float -0.000000e+00, %2123
  %4980 = fsub fast float -0.000000e+00, %2124
  %4981 = call float @dx.op.dot3.f32(i32 55, float %4609, float %4610, float %4611, float %4978, float %4979, float %4980)  ; Dot3(ax,ay,az,bx,by,bz)
  %4982 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4983 = fmul fast float %4982, 9.843750e-01
  %4984 = fadd fast float %4983, 7.812500e-03
  %4985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %52, float %4984, float %4942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4986 = extractvalue %dx.types.ResRet.f32 %4985, 2
  %4987 = extractvalue %dx.types.ResRet.f32 %4985, 3
  %4988 = select i1 %3090, float %4982, float 0.000000e+00
  %4989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %52, float %3087, float %4988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4990 = fmul fast float %2144, 0x4012D0A400000000
  %4991 = fadd fast float %4990, 0x3FDB6377A0000000
  %4992 = fmul fast float %4865, %4991
  %4993 = call float @dx.op.unary.f32(i32 7, float %4992)  ; Saturate(value)
  %4994 = fsub fast float %4851, %2257
  %4995 = fsub fast float %4852, %2258
  %4996 = fsub fast float %4853, %2259
  %4997 = call float @dx.op.dot3.f32(i32 55, float %4994, float %4995, float %4996, float %4994, float %4995, float %4996)  ; Dot3(ax,ay,az,bx,by,bz)
  %4998 = call float @dx.op.unary.f32(i32 25, float %4997)  ; Rsqrt(value)
  %4999 = fmul fast float %4994, %4998
  %5000 = fmul fast float %4995, %4998
  %5001 = fmul fast float %4996, %4998
  %5002 = call float @dx.op.dot3.f32(i32 55, float %4978, float %4979, float %4980, float %4999, float %5000, float %5001)  ; Dot3(ax,ay,az,bx,by,bz)
  %5003 = fmul fast float %5002, %5002
  %5004 = call float @dx.op.unary.f32(i32 6, float %4982)  ; FAbs(value)
  %5005 = call float @dx.op.binary.f32(i32 35, float %4993, float 0x3F847AE140000000)  ; FMax(a,b)
  %5006 = fmul fast float %5005, %5005
  %5007 = fmul fast float %5006, %5006
  %5008 = fsub fast float 1.000000e+00, %5007
  %5009 = fmul fast float %5007, %5003
  %5010 = fsub fast float 1.000000e+00, %5003
  %5011 = fadd fast float %5010, %5009
  %5012 = bitcast float %5007 to i32
  %5013 = sitofp i32 %5012 to float
  %5014 = fmul fast float %5013, 0x3FE7F73180000000
  %5015 = fadd fast float %5014, 0x41AFE27C40000000
  %5016 = fptosi float %5015 to i32
  %5017 = bitcast i32 %5016 to float
  br i1 %4601, label %5018, label %5072

; <label>:5018                                    ; preds = %4827
  %5019 = fmul fast float %5011, %5011
  %5020 = fmul fast float %4870, %5008
  %5021 = fadd fast float %5020, %5007
  %5022 = bitcast float %5021 to i32
  %5023 = ashr i32 %5022, 1
  %5024 = add nsw i32 %5023, 532487669
  %5025 = bitcast i32 %5024 to float
  %5026 = fadd fast float %5025, %2252
  %5027 = fmul fast float %5019, %5026
  %5028 = fmul fast float %5004, %5004
  %5029 = fmul fast float %5028, %5008
  %5030 = fadd fast float %5029, %5007
  %5031 = bitcast float %5030 to i32
  %5032 = ashr i32 %5031, 1
  %5033 = add nsw i32 %5032, 532487669
  %5034 = bitcast i32 %5033 to float
  %5035 = fadd fast float %5034, %5004
  %5036 = fmul fast float %5027, %5035
  %5037 = fdiv fast float 1.000000e+00, %5036
  %5038 = fmul fast float %5007, %5037
  %5039 = fmul fast float %5038, %5017
  %5040 = fadd fast float %5017, %4900
  %5041 = bitcast float %5040 to i32
  %5042 = sub nsw i32 2129859010, %5041
  %5043 = bitcast i32 %5042 to float
  %5044 = fmul fast float %5039, %5043
  %5045 = extractvalue %dx.types.ResRet.f32 %4989, 0
  %5046 = fadd fast float %5045, -5.000000e-01
  %5047 = fmul fast float %4955, %5046
  %5048 = fadd fast float %5047, %4986
  %5049 = fmul fast float %5048, %2143
  %5050 = fadd fast float %5049, %4987
  %5051 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5052 = extractvalue %dx.types.ResRet.f32 %4989, 1
  %5053 = fadd fast float %5052, -5.000000e-01
  %5054 = fmul fast float %4958, %5053
  %5055 = fadd fast float %5054, %4986
  %5056 = fmul fast float %5055, %2144
  %5057 = fadd fast float %5056, %4987
  %5058 = call float @dx.op.unary.f32(i32 7, float %5057)  ; Saturate(value)
  %5059 = extractvalue %dx.types.ResRet.f32 %4989, 2
  %5060 = fadd fast float %5059, -5.000000e-01
  %5061 = fmul fast float %4961, %5060
  %5062 = fadd fast float %5061, %4986
  %5063 = fmul fast float %5062, %2250
  %5064 = fadd fast float %5063, %4987
  %5065 = call float @dx.op.unary.f32(i32 7, float %5064)  ; Saturate(value)
  %5066 = call float @dx.op.binary.f32(i32 35, float %5058, float %5065)  ; FMax(a,b)
  %5067 = call float @dx.op.binary.f32(i32 35, float %5051, float %5066)  ; FMax(a,b)
  %5068 = fsub fast float 1.000000e+00, %5067
  %5069 = fmul fast float %4982, %4616
  %5070 = fmul fast float %5069, %5068
  %5071 = fmul fast float %5070, %5044
  br label %5072

; <label>:5072                                    ; preds = %5018, %4827
  %5073 = phi float [ %5071, %5018 ], [ 0.000000e+00, %4827 ]
  %5074 = fmul fast float %4936, %4846
  %5075 = fmul fast float %5074, %4907
  %5076 = fmul fast float %4937, %4846
  %5077 = fmul fast float %5076, %4907
  %5078 = fmul fast float %4938, %4846
  %5079 = fmul fast float %5078, %4907
  %5080 = fadd fast float %5073, %5075
  %5081 = fadd fast float %5073, %5077
  %5082 = fadd fast float %5073, %5079
  %5083 = fmul fast float %4846, %4828
  %5084 = fmul fast float %5083, %4977
  %5085 = fmul fast float %4846, %4829
  %5086 = fmul fast float %5085, %4977
  %5087 = fmul fast float %4846, %4830
  %5088 = fmul fast float %5087, %4977
  %5089 = fadd fast float %5084, %4545
  %5090 = fadd fast float %5086, %4546
  %5091 = fadd fast float %5088, %4547
  %5092 = fmul fast float %5080, %4828
  %5093 = fmul fast float %5081, %4829
  %5094 = fmul fast float %5082, %4830
  %5095 = fadd fast float %5092, %4542
  %5096 = fadd fast float %5093, %4543
  %5097 = fadd fast float %5094, %4544
  br label %4675

; <label>:5098                                    ; preds = %4675
  br label %5099

; <label>:5099                                    ; preds = %5098, %4508
  %5100 = phi float [ %4510, %4508 ], [ %4676, %5098 ]
  %5101 = phi float [ %4511, %4508 ], [ %4677, %5098 ]
  %5102 = phi float [ %4512, %4508 ], [ %4678, %5098 ]
  %5103 = phi float [ %4513, %4508 ], [ %4679, %5098 ]
  %5104 = phi float [ %4514, %4508 ], [ %4680, %5098 ]
  %5105 = phi float [ %4515, %4508 ], [ %4681, %5098 ]
  %5106 = add i32 %4509, 1
  %5107 = icmp ugt i32 %5106, %4505
  br i1 %5107, label %5108, label %4508

; <label>:5108                                    ; preds = %5099
  br label %5109

; <label>:5109                                    ; preds = %5108, %4458, %4447
  %5110 = phi float [ %4449, %4447 ], [ %4449, %4458 ], [ %5100, %5108 ]
  %5111 = phi float [ %4450, %4447 ], [ %4450, %4458 ], [ %5101, %5108 ]
  %5112 = phi float [ %4451, %4447 ], [ %4451, %4458 ], [ %5102, %5108 ]
  %5113 = phi float [ %4452, %4447 ], [ %4452, %4458 ], [ %5103, %5108 ]
  %5114 = phi float [ %4453, %4447 ], [ %4453, %4458 ], [ %5104, %5108 ]
  %5115 = phi float [ %4454, %4447 ], [ %4454, %4458 ], [ %5105, %5108 ]
  %5116 = and i32 %2201, 255
  %5117 = uitofp i32 %5116 to float
  %5118 = fmul fast float %5117, 0x3F70101020000000
  %5119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5120 = extractvalue %dx.types.CBufRet.f32 %5119, 2
  %5121 = extractvalue %dx.types.CBufRet.f32 %5119, 3
  %5122 = fmul fast float %105, %5120
  %5123 = fmul fast float %107, %5121
  %5124 = fsub fast float 1.000000e+00, %5122
  %5125 = fsub fast float 1.000000e+00, %5123
  %5126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5127 = extractvalue %dx.types.CBufRet.f32 %5126, 0
  %5128 = extractvalue %dx.types.CBufRet.f32 %5126, 1
  %5129 = extractvalue %dx.types.CBufRet.f32 %5126, 2
  %5130 = fmul fast float %5124, %5127
  %5131 = fmul fast float %5124, %5128
  %5132 = fmul fast float %5124, %5129
  %5133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5134 = extractvalue %dx.types.CBufRet.f32 %5133, 0
  %5135 = extractvalue %dx.types.CBufRet.f32 %5133, 1
  %5136 = extractvalue %dx.types.CBufRet.f32 %5133, 2
  %5137 = fmul fast float %5125, %5134
  %5138 = fmul fast float %5125, %5135
  %5139 = fmul fast float %5125, %5136
  %5140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.f32 %5140, 0
  %5142 = extractvalue %dx.types.CBufRet.f32 %5140, 1
  %5143 = extractvalue %dx.types.CBufRet.f32 %5140, 2
  %5144 = fadd fast float %5137, %5141
  %5145 = fadd fast float %5144, %5130
  %5146 = fadd fast float %5138, %5142
  %5147 = fadd fast float %5146, %5131
  %5148 = fadd fast float %5139, %5143
  %5149 = fadd fast float %5148, %5132
  %5150 = fmul fast float %5145, %72
  %5151 = fmul fast float %5147, %72
  %5152 = fmul fast float %5149, %72
  %5153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.f32 %5153, 2
  %5155 = extractvalue %dx.types.CBufRet.f32 %5153, 3
  %5156 = fmul fast float %5154, %80
  %5157 = fmul fast float %5155, %81
  %5158 = fptoui float %80 to i32
  %5159 = fptoui float %81 to i32
  %5160 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %5158, i32 %5159, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5161 = extractvalue %dx.types.ResRet.f32 %5160, 0
  %5162 = fcmp fast olt float %5161, -1.000000e+00
  %5163 = fcmp fast ogt float %5161, -1.000000e+00
  %5164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5165 = extractvalue %dx.types.CBufRet.f32 %5164, 1
  %5166 = select i1 %5163, float %5165, float 1.000000e+00
  %5167 = fadd fast float %5161, 1.000000e+00
  %5168 = fmul fast float %5166, %5167
  %5169 = call float @dx.op.unary.f32(i32 6, float %5168)  ; FAbs(value)
  %5170 = fsub fast float %5169, %72
  %5171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %5172 = extractvalue %dx.types.CBufRet.f32 %5171, 2
  %5173 = fsub fast float %5170, %5172
  %5174 = extractvalue %dx.types.CBufRet.f32 %5171, 3
  %5175 = fmul fast float %5174, %5118
  %5176 = fmul fast float %5175, %5173
  %5177 = call float @dx.op.unary.f32(i32 7, float %5176)  ; Saturate(value)
  %5178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 356)  ; CBufferLoadLegacy(handle,regIndex)
  %5179 = extractvalue %dx.types.CBufRet.f32 %5178, 1
  %5180 = extractvalue %dx.types.CBufRet.f32 %5178, 0
  %5181 = extractvalue %dx.types.CBufRet.f32 %5178, 3
  %5182 = extractvalue %dx.types.CBufRet.f32 %5178, 2
  %5183 = select i1 %5162, float %5179, float %5181
  %5184 = select i1 %5162, float %5180, float %5182
  %5185 = fsub fast float %5170, %5184
  %5186 = fmul fast float %5185, %5183
  %5187 = fsub fast float 1.000000e+00, %5118
  %5188 = fadd fast float %5187, %5186
  %5189 = call float @dx.op.unary.f32(i32 7, float %5188)  ; Saturate(value)
  %5190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %5191 = extractvalue %dx.types.CBufRet.f32 %5190, 1
  %5192 = extractvalue %dx.types.CBufRet.f32 %5190, 2
  %5193 = fsub fast float 1.000000e+00, %5157
  %5194 = fsub fast float 1.000000e+00, %5156
  %5195 = fmul fast float %5157, %5156
  %5196 = fmul fast float %5195, %5193
  %5197 = fmul fast float %5196, %5194
  %5198 = fmul fast float %5197, %5191
  %5199 = call float @dx.op.unary.f32(i32 23, float %5198)  ; Log(value)
  %5200 = fmul fast float %5199, %5192
  %5201 = call float @dx.op.unary.f32(i32 21, float %5200)  ; Exp(value)
  %5202 = call float @dx.op.unary.f32(i32 7, float %5201)  ; Saturate(value)
  %5203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 66)  ; CBufferLoadLegacy(handle,regIndex)
  %5204 = extractvalue %dx.types.CBufRet.f32 %5203, 2
  %5205 = extractvalue %dx.types.CBufRet.f32 %5203, 3
  %5206 = extractvalue %dx.types.CBufRet.f32 %5203, 0
  %5207 = fsub fast float %72, %5206
  %5208 = extractvalue %dx.types.CBufRet.f32 %5190, 0
  %5209 = fmul fast float %5207, %5208
  %5210 = call float @dx.op.unary.f32(i32 7, float %5209)  ; Saturate(value)
  %5211 = fsub fast float %5205, %5204
  %5212 = fmul fast float %5210, %5211
  %5213 = fadd fast float %5212, %5204
  %5214 = fmul fast float %5213, %5177
  %5215 = fmul fast float %5214, %2122
  %5216 = fmul fast float %5214, %2123
  %5217 = fadd fast float %5215, %5150
  %5218 = fadd fast float %5216, %5151
  %5219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5220 = extractvalue %dx.types.CBufRet.f32 %5219, 0
  %5221 = extractvalue %dx.types.CBufRet.f32 %5219, 1
  %5222 = extractvalue %dx.types.CBufRet.f32 %5219, 2
  %5223 = extractvalue %dx.types.CBufRet.f32 %5219, 3
  %5224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5225 = extractvalue %dx.types.CBufRet.f32 %5224, 0
  %5226 = extractvalue %dx.types.CBufRet.f32 %5224, 1
  %5227 = extractvalue %dx.types.CBufRet.f32 %5224, 2
  %5228 = extractvalue %dx.types.CBufRet.f32 %5224, 3
  %5229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5230 = extractvalue %dx.types.CBufRet.f32 %5229, 0
  %5231 = extractvalue %dx.types.CBufRet.f32 %5229, 1
  %5232 = extractvalue %dx.types.CBufRet.f32 %5229, 2
  %5233 = extractvalue %dx.types.CBufRet.f32 %5229, 3
  %5234 = fmul fast float %5217, %5220
  %5235 = call float @dx.op.tertiary.f32(i32 46, float %5218, float %5221, float %5234)  ; FMad(a,b,c)
  %5236 = call float @dx.op.tertiary.f32(i32 46, float %5152, float %5222, float %5235)  ; FMad(a,b,c)
  %5237 = fadd fast float %5236, %5223
  %5238 = fmul fast float %5217, %5225
  %5239 = call float @dx.op.tertiary.f32(i32 46, float %5218, float %5226, float %5238)  ; FMad(a,b,c)
  %5240 = call float @dx.op.tertiary.f32(i32 46, float %5152, float %5227, float %5239)  ; FMad(a,b,c)
  %5241 = fadd fast float %5240, %5228
  %5242 = fmul fast float %5217, %5230
  %5243 = call float @dx.op.tertiary.f32(i32 46, float %5218, float %5231, float %5242)  ; FMad(a,b,c)
  %5244 = call float @dx.op.tertiary.f32(i32 46, float %5152, float %5232, float %5243)  ; FMad(a,b,c)
  %5245 = fadd fast float %5244, %5233
  %5246 = fdiv fast float %5237, %5245
  %5247 = fdiv fast float %5241, %5245
  %5248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5249 = extractvalue %dx.types.CBufRet.f32 %5248, 0
  %5250 = extractvalue %dx.types.CBufRet.f32 %5248, 1
  %5251 = fmul fast float %5249, %5246
  %5252 = fmul fast float %5250, %5247
  %5253 = extractvalue %dx.types.CBufRet.f32 %5248, 2
  %5254 = extractvalue %dx.types.CBufRet.f32 %5248, 3
  %5255 = fadd fast float %5251, %5253
  %5256 = fadd fast float %5252, %5254
  %5257 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5258 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  %5259 = fsub fast float %5257, %5156
  %5260 = fsub fast float %5258, %5157
  %5261 = fmul fast float %5259, %5202
  %5262 = fmul fast float %5260, %5202
  %5263 = fadd fast float %5261, %5156
  %5264 = fadd fast float %5262, %5157
  %5265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %53, float %5263, float %5264, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5266 = extractvalue %dx.types.ResRet.f32 %5265, 0
  %5267 = fcmp fast ogt float %5266, -1.000000e+00
  %5268 = select i1 %5267, float %5165, float 1.000000e+00
  %5269 = fadd fast float %5266, 1.000000e+00
  %5270 = fmul fast float %5268, %5269
  %5271 = call float @dx.op.unary.f32(i32 6, float %5270)  ; FAbs(value)
  %5272 = fcmp fast ugt float %5271, %5245
  br i1 %5272, label %5274, label %5273

; <label>:5273                                    ; preds = %5109
  br label %5274

; <label>:5274                                    ; preds = %5273, %5109
  %5275 = phi float [ %5156, %5273 ], [ %5263, %5109 ]
  %5276 = phi float [ %5157, %5273 ], [ %5264, %5109 ]
  %5277 = phi float [ %72, %5273 ], [ %5245, %5109 ]
  %5278 = phi float [ %5169, %5273 ], [ %5271, %5109 ]
  br i1 %97, label %5279, label %5715

; <label>:5279                                    ; preds = %5274
  %5280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %5281 = extractvalue %dx.types.CBufRet.f32 %5280, 0
  %5282 = extractvalue %dx.types.CBufRet.f32 %5280, 1
  %5283 = extractvalue %dx.types.CBufRet.f32 %5280, 2
  %5284 = fcmp fast oge float %5282, %5277
  %5285 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5286 = extractvalue %dx.types.CBufRet.i32 %5285, 0
  %5287 = and i32 %5286, 65536
  %5288 = icmp ne i32 %5287, 0
  %5289 = and i1 %5284, %5288
  br i1 %5289, label %5290, label %5371

; <label>:5290                                    ; preds = %5279
  %5291 = extractvalue %dx.types.CBufRet.f32 %5119, 0
  %5292 = extractvalue %dx.types.CBufRet.f32 %5119, 1
  %5293 = fmul fast float %5291, %5275
  %5294 = fmul fast float %5292, %5276
  %5295 = fmul fast float %5293, %5120
  %5296 = fmul fast float %5294, %5121
  %5297 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5298 = call float @dx.op.unary.f32(i32 7, float %5296)  ; Saturate(value)
  %5299 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %52, float %5297, float %5298, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5300 = extractvalue %dx.types.ResRet.f32 %5299, 0
  %5301 = extractvalue %dx.types.ResRet.f32 %5299, 1
  %5302 = extractvalue %dx.types.ResRet.f32 %5299, 2
  %5303 = extractvalue %dx.types.ResRet.f32 %5299, 3
  %5304 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %52, float %5297, float %5298, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5305 = extractvalue %dx.types.ResRet.f32 %5304, 0
  %5306 = extractvalue %dx.types.ResRet.f32 %5304, 1
  %5307 = extractvalue %dx.types.ResRet.f32 %5304, 2
  %5308 = extractvalue %dx.types.ResRet.f32 %5304, 3
  %5309 = call float @dx.op.binary.f32(i32 35, float %5301, float %5302)  ; FMax(a,b)
  %5310 = call float @dx.op.binary.f32(i32 35, float %5300, float %5309)  ; FMax(a,b)
  %5311 = call float @dx.op.binary.f32(i32 35, float %5310, float %5303)  ; FMax(a,b)
  %5312 = call float @dx.op.binary.f32(i32 36, float %5306, float %5307)  ; FMin(a,b)
  %5313 = call float @dx.op.binary.f32(i32 36, float %5305, float %5312)  ; FMin(a,b)
  %5314 = call float @dx.op.binary.f32(i32 36, float %5313, float %5308)  ; FMin(a,b)
  %5315 = fmul fast float %5311, 2.550000e+02
  %5316 = fadd fast float %5315, 0x3F70101020000000
  %5317 = fptoui float %5316 to i32
  %5318 = fmul fast float %5314, 2.550000e+02
  %5319 = fadd fast float %5318, 0x3F70101020000000
  %5320 = fptoui float %5319 to i32
  %5321 = icmp ult i32 %5317, %5320
  br i1 %5321, label %5322, label %5371

; <label>:5322                                    ; preds = %5290
  %5323 = fadd fast float %5278, -4.000000e+00
  %5324 = call float @dx.op.binary.f32(i32 35, float %5323, float 0.000000e+00)  ; FMax(a,b)
  %5325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5326 = extractvalue %dx.types.CBufRet.f32 %5325, 0
  %5327 = fadd fast float %5326, %5324
  %5328 = extractvalue %dx.types.CBufRet.f32 %5325, 2
  %5329 = fmul fast float %5327, %5328
  %5330 = call float @dx.op.unary.f32(i32 23, float %5329)  ; Log(value)
  %5331 = extractvalue %dx.types.CBufRet.f32 %5325, 3
  %5332 = fmul fast float %5331, %5330
  %5333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5334 = extractvalue %dx.types.CBufRet.f32 %5333, 2
  %5335 = fmul fast float %5332, %5334
  %5336 = call float @dx.op.unary.f32(i32 7, float %5335)  ; Saturate(value)
  %5337 = uitofp i32 %5317 to float
  %5338 = uitofp i32 %5320 to float
  %5339 = fadd fast float %5337, 5.000000e-01
  %5340 = fadd fast float %5338, 5.000000e-01
  %5341 = fmul fast float %5334, %5339
  %5342 = fmul fast float %5334, %5340
  %5343 = fadd fast float %5341, 0x3F0FFB4800000000
  %5344 = fadd fast float %5342, 0xBF0FFB4800000000
  %5345 = call float @dx.op.binary.f32(i32 35, float %5336, float %5343)  ; FMax(a,b)
  %5346 = call float @dx.op.binary.f32(i32 36, float %5345, float %5344)  ; FMin(a,b)
  %5347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5348 = extractvalue %dx.types.CBufRet.f32 %5347, 1
  %5349 = extractvalue %dx.types.CBufRet.f32 %5347, 2
  %5350 = extractvalue %dx.types.CBufRet.f32 %5347, 0
  %5351 = fmul fast float %5348, %5346
  %5352 = fadd fast float %5350, %5351
  %5353 = fadd fast float %5350, %5349
  %5354 = fsub fast float %5348, %5349
  %5355 = fadd fast float %5354, %5350
  %5356 = call float @dx.op.binary.f32(i32 35, float %5352, float %5353)  ; FMax(a,b)
  %5357 = call float @dx.op.binary.f32(i32 36, float %5356, float %5355)  ; FMin(a,b)
  %5358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %5297, float %5298, float %5357, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5359 = extractvalue %dx.types.ResRet.f32 %5358, 0
  %5360 = extractvalue %dx.types.ResRet.f32 %5358, 1
  %5361 = extractvalue %dx.types.ResRet.f32 %5358, 2
  %5362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %50, float %5297, float %5298, float %5357, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5363 = extractvalue %dx.types.ResRet.f32 %5362, 0
  %5364 = extractvalue %dx.types.ResRet.f32 %5362, 1
  %5365 = extractvalue %dx.types.ResRet.f32 %5362, 2
  %5366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5367 = extractvalue %dx.types.CBufRet.f32 %5366, 1
  %5368 = fmul fast float %5367, %5363
  %5369 = fmul fast float %5367, %5364
  %5370 = fmul fast float %5367, %5365
  br label %5371

; <label>:5371                                    ; preds = %5322, %5290, %5279
  %5372 = phi float [ 0.000000e+00, %5279 ], [ %5368, %5322 ], [ 0.000000e+00, %5290 ]
  %5373 = phi float [ 0.000000e+00, %5279 ], [ %5369, %5322 ], [ 0.000000e+00, %5290 ]
  %5374 = phi float [ 0.000000e+00, %5279 ], [ %5370, %5322 ], [ 0.000000e+00, %5290 ]
  %5375 = phi float [ 1.000000e+00, %5279 ], [ %5359, %5322 ], [ 1.000000e+00, %5290 ]
  %5376 = phi float [ 1.000000e+00, %5279 ], [ %5360, %5322 ], [ 1.000000e+00, %5290 ]
  %5377 = phi float [ 1.000000e+00, %5279 ], [ %5361, %5322 ], [ 1.000000e+00, %5290 ]
  %5378 = fcmp fast olt float %5118, 1.000000e+00
  %5379 = fcmp fast olt float %5281, %5278
  %5380 = or i1 %5378, %5379
  br i1 %5380, label %5381, label %5472

; <label>:5381                                    ; preds = %5371
  %5382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5383 = extractvalue %dx.types.CBufRet.i32 %5382, 0
  %5384 = call i32 @dx.op.binary.i32(i32 40, i32 %179, i32 %5383)  ; UMin(a,b)
  %5385 = mul i32 %5384, 36
  %5386 = add i32 %5385, 4
  %5387 = add i32 %5386, %316
  %5388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %5387, i32 undef)  ; BufferLoad(srv,index,wot)
  %5389 = extractvalue %dx.types.ResRet.i32 %5388, 0
  %5390 = and i32 %5389, 32767
  %5391 = mul nuw nsw i32 %5390, 928
  %5392 = add nuw nsw i32 %5391, 44
  %5393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %5392, i32 undef)  ; BufferLoad(srv,index,wot)
  %5394 = extractvalue %dx.types.ResRet.f32 %5393, 0
  %5395 = add nuw nsw i32 %5391, 48
  %5396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %5395, i32 undef)  ; BufferLoad(srv,index,wot)
  %5397 = extractvalue %dx.types.ResRet.f32 %5396, 0
  %5398 = extractvalue %dx.types.ResRet.f32 %5396, 1
  %5399 = extractvalue %dx.types.ResRet.f32 %5396, 2
  %5400 = add nuw nsw i32 %5391, 60
  %5401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %5400, i32 undef)  ; BufferLoad(srv,index,wot)
  %5402 = extractvalue %dx.types.ResRet.f32 %5401, 0
  %5403 = extractvalue %dx.types.ResRet.f32 %5401, 1
  %5404 = extractvalue %dx.types.ResRet.f32 %5401, 2
  %5405 = fmul fast float %5397, 0x3F847AE140000000
  %5406 = fmul fast float %5398, 0x3F847AE140000000
  %5407 = fmul fast float %5399, 0x3F847AE140000000
  %5408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5409 = extractvalue %dx.types.CBufRet.f32 %5408, 0
  %5410 = extractvalue %dx.types.CBufRet.f32 %5408, 1
  %5411 = extractvalue %dx.types.CBufRet.f32 %5408, 2
  %5412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5413 = extractvalue %dx.types.CBufRet.f32 %5412, 0
  %5414 = extractvalue %dx.types.CBufRet.f32 %5412, 1
  %5415 = call float @dx.op.dot3.f32(i32 55, float %5409, float %5410, float %5411, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5416 = select i1 %2245, float %5413, float %5409
  %5417 = select i1 %2245, float %5415, float %5410
  %5418 = select i1 %2245, float %5414, float %5411
  %5419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5420 = extractvalue %dx.types.CBufRet.f32 %5419, 0
  %5421 = extractvalue %dx.types.CBufRet.f32 %5419, 1
  %5422 = extractvalue %dx.types.CBufRet.f32 %5419, 2
  %5423 = fadd fast float %5402, %5397
  %5424 = fmul fast float %5423, 0x3F847AE140000000
  %5425 = fadd fast float %5403, %5398
  %5426 = fmul fast float %5425, 0x3F847AE140000000
  %5427 = fadd fast float %5404, %5399
  %5428 = fmul fast float %5427, 0x3F847AE140000000
  %5429 = call float @dx.op.dot3.f32(i32 55, float %5420, float %5421, float %5422, float %2150, float %2151, float %2152)  ; Dot3(ax,ay,az,bx,by,bz)
  %5430 = fcmp fast ogt float %5394, 0.000000e+00
  %5431 = select i1 %5430, float 1.000000e+00, float -1.000000e+00
  %5432 = fmul fast float %5431, 5.000000e-01
  %5433 = fmul fast float %5432, %5429
  %5434 = fmul fast float %5431, %5394
  %5435 = fadd fast float %5433, 4.921875e-01
  %5436 = fadd fast float %5434, -3.125000e-02
  %5437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %52, float %5435, float 0x3FB25F3060000000, float %5436, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5438 = extractvalue %dx.types.ResRet.f32 %5437, 0
  %5439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %5440 = extractvalue %dx.types.CBufRet.f32 %5439, 0
  %5441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = extractvalue %dx.types.CBufRet.f32 %5441, 0
  %5443 = fmul fast float %5442, %5440
  %5444 = extractvalue %dx.types.CBufRet.f32 %5441, 1
  %5445 = fadd fast float %5443, %5444
  %5446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %5447 = extractvalue %dx.types.CBufRet.f32 %5446, 0
  %5448 = fmul fast float %5447, %4448
  %5449 = extractvalue %dx.types.CBufRet.f32 %5446, 1
  %5450 = fadd fast float %5448, %5449
  %5451 = call float @dx.op.unary.f32(i32 7, float %5450)  ; Saturate(value)
  %5452 = extractvalue %dx.types.CBufRet.f32 %5439, 3
  %5453 = extractvalue %dx.types.CBufRet.f32 %5441, 2
  %5454 = fmul fast float %5453, %5452
  %5455 = extractvalue %dx.types.CBufRet.f32 %5441, 3
  %5456 = fadd fast float %5454, %5455
  %5457 = fmul fast float %5438, 0x400921FB60000000
  %5458 = fmul fast float %5457, %5445
  %5459 = fmul fast float %5458, %5451
  %5460 = fmul fast float %5416, %5405
  %5461 = fmul fast float %5460, %5459
  %5462 = fmul fast float %5417, %5406
  %5463 = fmul fast float %5462, %5459
  %5464 = fmul fast float %5418, %5407
  %5465 = fmul fast float %5464, %5459
  %5466 = fmul fast float %5405, %3074
  %5467 = fmul fast float %5466, %5456
  %5468 = fmul fast float %5406, %3075
  %5469 = fmul fast float %5468, %5456
  %5470 = fmul fast float %5407, %3076
  %5471 = fmul fast float %5470, %5456
  br label %5472

; <label>:5472                                    ; preds = %5381, %5371
  %5473 = phi float [ %5424, %5381 ], [ 0.000000e+00, %5371 ]
  %5474 = phi float [ %5426, %5381 ], [ 0.000000e+00, %5371 ]
  %5475 = phi float [ %5428, %5381 ], [ 0.000000e+00, %5371 ]
  %5476 = phi float [ %5461, %5381 ], [ 0.000000e+00, %5371 ]
  %5477 = phi float [ %5463, %5381 ], [ 0.000000e+00, %5371 ]
  %5478 = phi float [ %5465, %5381 ], [ 0.000000e+00, %5371 ]
  %5479 = phi float [ %5467, %5381 ], [ 0.000000e+00, %5371 ]
  %5480 = phi float [ %5469, %5381 ], [ 0.000000e+00, %5371 ]
  %5481 = phi float [ %5471, %5381 ], [ 0.000000e+00, %5371 ]
  %5482 = call float @dx.op.binary.f32(i32 35, float %5473, float 0x3F10000000000000)  ; FMax(a,b)
  %5483 = call float @dx.op.binary.f32(i32 35, float %5474, float 0x3F10000000000000)  ; FMax(a,b)
  %5484 = call float @dx.op.binary.f32(i32 35, float %5475, float 0x3F10000000000000)  ; FMax(a,b)
  %5485 = fdiv fast float 1.000000e+00, %5482
  %5486 = fdiv fast float 1.000000e+00, %5483
  %5487 = fdiv fast float 1.000000e+00, %5484
  %5488 = fmul fast float %5473, 0xBFF7154760000000
  %5489 = fmul fast float %5474, 0xBFF7154760000000
  %5490 = fmul fast float %5475, 0xBFF7154760000000
  %5491 = extractvalue %dx.types.CBufRet.f32 %5280, 3
  %5492 = call float @dx.op.dot3.f32(i32 55, float %5485, float %5486, float %5487, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = fmul fast float %5491, %5492
  %5494 = call float @dx.op.binary.f32(i32 35, float %5282, float %5277)  ; FMax(a,b)
  %5495 = fsub fast float %5278, %5494
  %5496 = call float @dx.op.binary.f32(i32 35, float %5495, float 0.000000e+00)  ; FMax(a,b)
  %5497 = fsub fast float %5278, %5277
  %5498 = call float @dx.op.binary.f32(i32 35, float %5497, float 0.000000e+00)  ; FMax(a,b)
  %5499 = call float @dx.op.binary.f32(i32 36, float %5498, float %5493)  ; FMin(a,b)
  %5500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %5501 = extractvalue %dx.types.CBufRet.f32 %5500, 0
  %5502 = fmul fast float %5501, %5499
  %5503 = fmul fast float %5502, %5488
  %5504 = fmul fast float %5502, %5489
  %5505 = fmul fast float %5502, %5490
  %5506 = call float @dx.op.unary.f32(i32 21, float %5503)  ; Exp(value)
  %5507 = call float @dx.op.unary.f32(i32 21, float %5504)  ; Exp(value)
  %5508 = call float @dx.op.unary.f32(i32 21, float %5505)  ; Exp(value)
  %5509 = fmul fast float %5506, %5476
  %5510 = fmul fast float %5507, %5477
  %5511 = fmul fast float %5508, %5478
  %5512 = extractvalue %dx.types.CBufRet.f32 %5500, 1
  %5513 = fmul fast float %5512, %5499
  %5514 = fmul fast float %5513, %5488
  %5515 = fmul fast float %5513, %5489
  %5516 = fmul fast float %5513, %5490
  %5517 = call float @dx.op.unary.f32(i32 21, float %5514)  ; Exp(value)
  %5518 = call float @dx.op.unary.f32(i32 21, float %5515)  ; Exp(value)
  %5519 = call float @dx.op.unary.f32(i32 21, float %5516)  ; Exp(value)
  %5520 = fmul fast float %5517, %5479
  %5521 = fmul fast float %5518, %5480
  %5522 = fmul fast float %5519, %5481
  %5523 = fadd fast float %5520, %5509
  %5524 = fadd fast float %5521, %5510
  %5525 = fadd fast float %5522, %5511
  %5526 = fmul fast float %5496, %5488
  %5527 = fmul fast float %5496, %5489
  %5528 = fmul fast float %5496, %5490
  %5529 = call float @dx.op.unary.f32(i32 21, float %5526)  ; Exp(value)
  %5530 = call float @dx.op.unary.f32(i32 21, float %5527)  ; Exp(value)
  %5531 = call float @dx.op.unary.f32(i32 21, float %5528)  ; Exp(value)
  %5532 = call float @dx.op.unary.f32(i32 7, float %5529)  ; Saturate(value)
  %5533 = call float @dx.op.unary.f32(i32 7, float %5530)  ; Saturate(value)
  %5534 = call float @dx.op.unary.f32(i32 7, float %5531)  ; Saturate(value)
  %5535 = fmul fast float %5532, %5523
  %5536 = fmul fast float %5533, %5524
  %5537 = fmul fast float %5534, %5525
  %5538 = fsub fast float %5523, %5535
  %5539 = fsub fast float %5524, %5536
  %5540 = fsub fast float %5525, %5537
  %5541 = fmul fast float %5485, %5375
  %5542 = fmul fast float %5541, %5538
  %5543 = fmul fast float %5486, %5376
  %5544 = fmul fast float %5543, %5539
  %5545 = fmul fast float %5487, %5377
  %5546 = fmul fast float %5545, %5540
  %5547 = fadd fast float %5542, %5372
  %5548 = fadd fast float %5544, %5373
  %5549 = fadd fast float %5546, %5374
  %5550 = fmul fast float %5532, %5375
  %5551 = fmul fast float %5533, %5376
  %5552 = fmul fast float %5534, %5377
  %5553 = fmul fast float %5498, %5488
  %5554 = fmul fast float %5498, %5489
  %5555 = fmul fast float %5498, %5490
  %5556 = call float @dx.op.unary.f32(i32 21, float %5553)  ; Exp(value)
  %5557 = call float @dx.op.unary.f32(i32 21, float %5554)  ; Exp(value)
  %5558 = call float @dx.op.unary.f32(i32 21, float %5555)  ; Exp(value)
  %5559 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  %5560 = call float @dx.op.unary.f32(i32 7, float %5557)  ; Saturate(value)
  %5561 = call float @dx.op.unary.f32(i32 7, float %5558)  ; Saturate(value)
  %5562 = fmul fast float %5559, %5523
  %5563 = fmul fast float %5560, %5524
  %5564 = fmul fast float %5561, %5525
  %5565 = fsub fast float %5523, %5562
  %5566 = fsub fast float %5524, %5563
  %5567 = fsub fast float %5525, %5564
  %5568 = fmul fast float %5565, %5485
  %5569 = fmul fast float %5566, %5486
  %5570 = fmul fast float %5567, %5487
  %5571 = fsub fast float %5277, %5281
  %5572 = fmul fast float %5283, %5571
  %5573 = call float @dx.op.unary.f32(i32 7, float %5572)  ; Saturate(value)
  %5574 = fmul fast float %5573, %5573
  %5575 = fmul fast float %5573, 2.000000e+00
  %5576 = fsub fast float 3.000000e+00, %5575
  %5577 = fmul fast float %5574, %5576
  %5578 = fsub fast float %5568, %5547
  %5579 = fsub fast float %5569, %5548
  %5580 = fsub fast float %5570, %5549
  %5581 = fmul fast float %5577, %5578
  %5582 = fmul fast float %5577, %5579
  %5583 = fmul fast float %5577, %5580
  %5584 = fadd fast float %5581, %5547
  %5585 = fadd fast float %5582, %5548
  %5586 = fadd fast float %5583, %5549
  %5587 = fsub fast float %5559, %5550
  %5588 = fsub fast float %5560, %5551
  %5589 = fsub fast float %5561, %5552
  %5590 = fmul fast float %5577, %5587
  %5591 = fmul fast float %5577, %5588
  %5592 = fmul fast float %5577, %5589
  %5593 = fadd fast float %5590, %5550
  %5594 = fadd fast float %5591, %5551
  %5595 = fadd fast float %5592, %5552
  br i1 %5378, label %5596, label %5664

; <label>:5596                                    ; preds = %5472
  %5597 = extractvalue %dx.types.CBufRet.f32 %5500, 3
  %5598 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5597)  ; Dot3(ax,ay,az,bx,by,bz)
  %5599 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2247, float %2248, float %2249)  ; Dot3(ax,ay,az,bx,by,bz)
  %5600 = fdiv fast float 1.000000e+00, %5599
  %5601 = fmul fast float %5600, %5598
  %5602 = fcmp ogt float %2152, -0.000000e+00
  %5603 = select i1 %5602, float %5597, float %5601
  %5604 = call float @dx.op.binary.f32(i32 36, float %5603, float %5493)  ; FMin(a,b)
  %5605 = fmul fast float %5501, %5604
  %5606 = fmul fast float %5605, %5488
  %5607 = fmul fast float %5605, %5489
  %5608 = fmul fast float %5605, %5490
  %5609 = call float @dx.op.unary.f32(i32 21, float %5606)  ; Exp(value)
  %5610 = call float @dx.op.unary.f32(i32 21, float %5607)  ; Exp(value)
  %5611 = call float @dx.op.unary.f32(i32 21, float %5608)  ; Exp(value)
  %5612 = fmul fast float %5609, %5476
  %5613 = fmul fast float %5610, %5477
  %5614 = fmul fast float %5611, %5478
  %5615 = fmul fast float %5512, %5604
  %5616 = fmul fast float %5615, %5488
  %5617 = fmul fast float %5615, %5489
  %5618 = fmul fast float %5615, %5490
  %5619 = call float @dx.op.unary.f32(i32 21, float %5616)  ; Exp(value)
  %5620 = call float @dx.op.unary.f32(i32 21, float %5617)  ; Exp(value)
  %5621 = call float @dx.op.unary.f32(i32 21, float %5618)  ; Exp(value)
  %5622 = fmul fast float %5619, %5479
  %5623 = fmul fast float %5620, %5480
  %5624 = fmul fast float %5621, %5481
  %5625 = fadd fast float %5622, %5612
  %5626 = fadd fast float %5623, %5613
  %5627 = fadd fast float %5624, %5614
  %5628 = fmul fast float %5603, %5488
  %5629 = fmul fast float %5603, %5489
  %5630 = fmul fast float %5603, %5490
  %5631 = call float @dx.op.unary.f32(i32 21, float %5628)  ; Exp(value)
  %5632 = call float @dx.op.unary.f32(i32 21, float %5629)  ; Exp(value)
  %5633 = call float @dx.op.unary.f32(i32 21, float %5630)  ; Exp(value)
  %5634 = call float @dx.op.unary.f32(i32 7, float %5631)  ; Saturate(value)
  %5635 = call float @dx.op.unary.f32(i32 7, float %5632)  ; Saturate(value)
  %5636 = call float @dx.op.unary.f32(i32 7, float %5633)  ; Saturate(value)
  %5637 = fmul fast float %5634, %5625
  %5638 = fmul fast float %5635, %5626
  %5639 = fmul fast float %5636, %5627
  %5640 = fsub fast float %5625, %5637
  %5641 = fsub fast float %5626, %5638
  %5642 = fsub fast float %5627, %5639
  %5643 = fmul fast float %5640, %5485
  %5644 = fmul fast float %5641, %5486
  %5645 = fmul fast float %5642, %5487
  %5646 = fsub fast float %5584, %5643
  %5647 = fsub fast float %5585, %5644
  %5648 = fsub fast float %5586, %5645
  %5649 = fmul fast float %5646, %5118
  %5650 = fmul fast float %5647, %5118
  %5651 = fmul fast float %5648, %5118
  %5652 = fadd fast float %5649, %5643
  %5653 = fadd fast float %5650, %5644
  %5654 = fadd fast float %5651, %5645
  %5655 = fsub fast float %5593, %5634
  %5656 = fsub fast float %5594, %5635
  %5657 = fsub fast float %5595, %5636
  %5658 = fmul fast float %5655, %5118
  %5659 = fmul fast float %5656, %5118
  %5660 = fmul fast float %5657, %5118
  %5661 = fadd fast float %5658, %5634
  %5662 = fadd fast float %5659, %5635
  %5663 = fadd fast float %5660, %5636
  br label %5664

; <label>:5664                                    ; preds = %5596, %5472
  %5665 = phi float [ %5652, %5596 ], [ %5584, %5472 ]
  %5666 = phi float [ %5653, %5596 ], [ %5585, %5472 ]
  %5667 = phi float [ %5654, %5596 ], [ %5586, %5472 ]
  %5668 = phi float [ %5661, %5596 ], [ %5593, %5472 ]
  %5669 = phi float [ %5662, %5596 ], [ %5594, %5472 ]
  %5670 = phi float [ %5663, %5596 ], [ %5595, %5472 ]
  %5671 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5672 = extractvalue %dx.types.CBufRet.i32 %5671, 3
  %5673 = and i32 %5672, 3
  %5674 = icmp ne i32 %5673, 0
  %5675 = and i32 %5672, 4
  %5676 = icmp ne i32 %5675, 0
  %5677 = and i1 %5674, %5676
  br i1 %5677, label %5678, label %5685

; <label>:5678                                    ; preds = %5664
  %5679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %52, float %5275, float %5276, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5680 = extractvalue %dx.types.ResRet.f32 %5679, 0
  %5681 = fsub fast float 1.000000e+00, %5680
  %5682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %5683 = extractvalue %dx.types.CBufRet.f32 %5682, 0
  %5684 = fcmp fast olt float %5681, %5683
  br label %5688

; <label>:5685                                    ; preds = %5664
  %5686 = icmp eq i32 %5675, 0
  %5687 = and i1 %5674, %5686
  br label %5688

; <label>:5688                                    ; preds = %5685, %5678
  %5689 = phi i1 [ %5684, %5678 ], [ %5687, %5685 ]
  %5690 = xor i1 %2245, %5689
  %5691 = select i1 %5690, float 0.000000e+00, float %5118
  %5692 = fcmp fast ogt float %5691, 0.000000e+00
  %5693 = select i1 %5692, float %5275, float 0.000000e+00
  %5694 = select i1 %5692, float %5276, float 0.000000e+00
  %5695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %52, float %5693, float %5694, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5696 = extractvalue %dx.types.ResRet.f32 %5695, 0
  %5697 = extractvalue %dx.types.ResRet.f32 %5695, 1
  %5698 = extractvalue %dx.types.ResRet.f32 %5695, 2
  %5699 = fmul fast float %5697, %5691
  %5700 = fmul fast float %5698, %5691
  %5701 = select i1 %2245, float 0.000000e+00, float %5699
  %5702 = select i1 %2245, float 0.000000e+00, float %5700
  %5703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5704 = extractvalue %dx.types.CBufRet.f32 %5703, 1
  %5705 = fmul fast float %5691, %5668
  %5706 = fmul fast float %5705, %5696
  %5707 = fmul fast float %5706, %5704
  %5708 = fmul fast float %5704, %5669
  %5709 = fmul fast float %5708, %5701
  %5710 = fmul fast float %5704, %5670
  %5711 = fmul fast float %5710, %5702
  %5712 = fadd fast float %5707, %5665
  %5713 = fadd fast float %5709, %5666
  %5714 = fadd fast float %5711, %5667
  br label %5754

; <label>:5715                                    ; preds = %5274
  %5716 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5717 = extractvalue %dx.types.CBufRet.i32 %5716, 3
  %5718 = and i32 %5717, 3
  %5719 = icmp ne i32 %5718, 0
  %5720 = and i32 %5717, 4
  %5721 = icmp ne i32 %5720, 0
  %5722 = and i1 %5719, %5721
  br i1 %5722, label %5723, label %5730

; <label>:5723                                    ; preds = %5715
  %5724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %52, float %5275, float %5276, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5725 = extractvalue %dx.types.ResRet.f32 %5724, 0
  %5726 = fsub fast float 1.000000e+00, %5725
  %5727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %5728 = extractvalue %dx.types.CBufRet.f32 %5727, 0
  %5729 = fcmp fast olt float %5726, %5728
  br label %5733

; <label>:5730                                    ; preds = %5715
  %5731 = icmp eq i32 %5720, 0
  %5732 = and i1 %5719, %5731
  br label %5733

; <label>:5733                                    ; preds = %5730, %5723
  %5734 = phi i1 [ %5729, %5723 ], [ %5732, %5730 ]
  %5735 = xor i1 %2245, %5734
  %5736 = select i1 %5735, float 0.000000e+00, float %5118
  %5737 = fcmp fast ogt float %5736, 0.000000e+00
  %5738 = select i1 %5737, float %5275, float 0.000000e+00
  %5739 = select i1 %5737, float %5276, float 0.000000e+00
  %5740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %52, float %5738, float %5739, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5741 = extractvalue %dx.types.ResRet.f32 %5740, 0
  %5742 = extractvalue %dx.types.ResRet.f32 %5740, 1
  %5743 = extractvalue %dx.types.ResRet.f32 %5740, 2
  %5744 = fmul fast float %5741, %5736
  %5745 = fmul fast float %5742, %5736
  %5746 = fmul fast float %5743, %5736
  %5747 = select i1 %2245, float 0.000000e+00, float %5745
  %5748 = select i1 %2245, float 0.000000e+00, float %5746
  %5749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5750 = extractvalue %dx.types.CBufRet.f32 %5749, 1
  %5751 = fmul fast float %5744, %5750
  %5752 = fmul fast float %5747, %5750
  %5753 = fmul fast float %5748, %5750
  br label %5754

; <label>:5754                                    ; preds = %5733, %5688
  %5755 = phi float [ %5751, %5733 ], [ %5712, %5688 ]
  %5756 = phi float [ %5752, %5733 ], [ %5713, %5688 ]
  %5757 = phi float [ %5753, %5733 ], [ %5714, %5688 ]
  %5758 = fmul fast float %5755, %3120
  %5759 = fmul fast float %5756, %3120
  %5760 = fmul fast float %5757, %3120
  %5761 = select i1 %97, float %5189, float 1.000000e+00
  %5762 = fsub fast float 1.000000e+00, %2252
  %5763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5764 = extractvalue %dx.types.CBufRet.f32 %5763, 0
  %5765 = fmul fast float %5764, %5762
  %5766 = fmul fast float %2124, 2.000000e+00
  %5767 = fmul fast float %5766, %2161
  %5768 = fsub fast float %2152, %5767
  %5769 = call float @dx.op.unary.f32(i32 7, float %5768)  ; Saturate(value)
  %5770 = fsub fast float 1.000000e+00, %5769
  %5771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5772 = extractvalue %dx.types.CBufRet.f32 %5771, 3
  %5773 = fmul fast float %5772, %5770
  %5774 = fsub fast float 1.000000e+00, %2219
  %5775 = call float @dx.op.unary.f32(i32 7, float %5774)  ; Saturate(value)
  %5776 = fadd fast float %5115, %2221
  %5777 = fmul fast float %5776, %2219
  %5778 = fmul fast float %5773, %5775
  %5779 = fmul fast float %5113, %2134
  %5780 = fmul fast float %5114, %2135
  %5781 = fmul fast float %5115, %2136
  %5782 = fadd fast float %5779, %5110
  %5783 = fadd fast float %5782, %5758
  %5784 = fadd fast float %5780, %5111
  %5785 = fadd fast float %5784, %5759
  %5786 = fadd fast float %5781, %5112
  %5787 = fadd fast float %5786, %5760
  br i1 %97, label %5791, label %5788

; <label>:5788                                    ; preds = %5754
  %5789 = fmul fast float %5120, %80
  %5790 = fmul fast float %5121, %81
  br label %6590

; <label>:5791                                    ; preds = %5754
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 0
  %5794 = extractvalue %dx.types.CBufRet.f32 %5792, 1
  %5795 = extractvalue %dx.types.CBufRet.f32 %5792, 2
  %5796 = extractvalue %dx.types.CBufRet.f32 %5792, 3
  %5797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5798 = extractvalue %dx.types.CBufRet.f32 %5797, 0
  %5799 = extractvalue %dx.types.CBufRet.f32 %5797, 1
  %5800 = extractvalue %dx.types.CBufRet.f32 %5797, 2
  %5801 = extractvalue %dx.types.CBufRet.f32 %5797, 3
  %5802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5803 = extractvalue %dx.types.CBufRet.f32 %5802, 0
  %5804 = extractvalue %dx.types.CBufRet.f32 %5802, 1
  %5805 = extractvalue %dx.types.CBufRet.f32 %5802, 2
  %5806 = extractvalue %dx.types.CBufRet.f32 %5802, 3
  %5807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5808 = extractvalue %dx.types.CBufRet.f32 %5807, 0
  %5809 = extractvalue %dx.types.CBufRet.f32 %5807, 1
  %5810 = extractvalue %dx.types.CBufRet.f32 %5807, 2
  %5811 = extractvalue %dx.types.CBufRet.f32 %5807, 3
  %5812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5813 = extractvalue %dx.types.CBufRet.f32 %5812, 3
  %5814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5815 = extractvalue %dx.types.CBufRet.f32 %5814, 3
  %5816 = extractvalue %dx.types.CBufRet.f32 %5814, 0
  %5817 = extractvalue %dx.types.CBufRet.f32 %5814, 1
  %5818 = extractvalue %dx.types.CBufRet.f32 %5814, 2
  %5819 = fcmp fast olt float %5818, -5.000000e-01
  %5820 = fmul fast float %2149, %2148
  %5821 = fadd fast float %5820, %5796
  %5822 = call float @dx.op.dot3.f32(i32 55, float %2150, float %2151, float %2152, float %5793, float %5794, float %5795)  ; Dot3(ax,ay,az,bx,by,bz)
  %5823 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.i32 %5823, 1
  %5825 = and i32 %5824, 1
  %5826 = icmp ne i32 %5825, 0
  %5827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5828 = extractvalue %dx.types.CBufRet.f32 %5827, 2
  %5829 = fcmp fast ogt float %5828, 0.000000e+00
  %5830 = and i1 %5826, %5829
  br i1 %5830, label %5831, label %6237, !dx.controlflow.hints !146

; <label>:5831                                    ; preds = %5791
  %5832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5833 = extractvalue %dx.types.CBufRet.f32 %5832, 3
  %5834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5835 = extractvalue %dx.types.CBufRet.f32 %5834, 2
  %5836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.f32 %5836, 2
  %5838 = fsub fast float %5835, %5837
  %5839 = and i32 %5824, 2
  %5840 = extractvalue %dx.types.CBufRet.i32 %5823, 0
  %5841 = call i32 @dx.op.binary.i32(i32 40, i32 %5840, i32 3)  ; UMin(a,b)
  %5842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5843 = extractvalue %dx.types.CBufRet.f32 %5842, 0
  %5844 = extractvalue %dx.types.CBufRet.f32 %5842, 1
  %5845 = extractvalue %dx.types.CBufRet.f32 %5836, 0
  %5846 = extractvalue %dx.types.CBufRet.f32 %5836, 1
  %5847 = fsub fast float %5843, %5845
  %5848 = fsub fast float %5844, %5846
  %5849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5850 = extractvalue %dx.types.CBufRet.f32 %5849, 0
  %5851 = fcmp fast ogt float %5850, 0.000000e+00
  %5852 = fsub fast float -0.000000e+00, %5847
  %5853 = fsub fast float -0.000000e+00, %5848
  %5854 = call float @dx.op.dot2.f32(i32 54, float %2150, float %2151, float %2150, float %2151)  ; Dot2(ax,ay,bx,by)
  %5855 = call float @dx.op.dot2.f32(i32 54, float %2150, float %2151, float %5852, float %5853)  ; Dot2(ax,ay,bx,by)
  %5856 = fmul fast float %5855, 2.000000e+00
  %5857 = call float @dx.op.dot2.f32(i32 54, float %5852, float %5853, float %5852, float %5853)  ; Dot2(ax,ay,bx,by)
  %5858 = fmul fast float %5850, %5850
  %5859 = fsub fast float %5857, %5858
  %5860 = fmul fast float %5856, %5856
  %5861 = fmul fast float %5854, 4.000000e+00
  %5862 = fmul fast float %5861, %5859
  %5863 = fsub fast float %5860, %5862
  %5864 = fcmp fast ogt float %5863, 0.000000e+00
  br i1 %5864, label %5865, label %5880

; <label>:5865                                    ; preds = %5831
  %5866 = fcmp fast ogt float %5856, 0.000000e+00
  %5867 = call float @dx.op.unary.f32(i32 24, float %5863)  ; Sqrt(value)
  %5868 = fsub fast float -0.000000e+00, %5867
  %5869 = select i1 %5866, float %5867, float %5868
  %5870 = fadd fast float %5869, %5856
  %5871 = fmul float %5870, -5.000000e-01
  %5872 = fdiv fast float %5871, %5854
  %5873 = call float @dx.op.binary.f32(i32 35, float %5872, float 0.000000e+00)  ; FMax(a,b)
  %5874 = call float @dx.op.binary.f32(i32 36, float %5820, float %5873)  ; FMin(a,b)
  %5875 = fdiv fast float %5859, %5871
  %5876 = call float @dx.op.binary.f32(i32 35, float %5875, float 0.000000e+00)  ; FMax(a,b)
  %5877 = call float @dx.op.binary.f32(i32 36, float %5820, float %5876)  ; FMin(a,b)
  %5878 = call float @dx.op.binary.f32(i32 36, float %5874, float %5877)  ; FMin(a,b)
  %5879 = call float @dx.op.binary.f32(i32 35, float %5874, float %5877)  ; FMax(a,b)
  br label %5880

; <label>:5880                                    ; preds = %5865, %5831
  %5881 = phi float [ %5879, %5865 ], [ -1.000000e+00, %5831 ]
  %5882 = phi float [ %5878, %5865 ], [ -1.000000e+00, %5831 ]
  %5883 = phi i1 [ true, %5865 ], [ false, %5831 ]
  %5884 = and i1 %5851, %5883
  br i1 %5884, label %5885, label %5887

; <label>:5885                                    ; preds = %5880
  %5886 = fcmp fast oeq float %5882, %5881
  br i1 %5886, label %6190, label %5888

; <label>:5887                                    ; preds = %5880
  br i1 %5851, label %6190, label %5888

; <label>:5888                                    ; preds = %5887, %5885
  %5889 = phi float [ %5820, %5887 ], [ %5881, %5885 ]
  %5890 = phi float [ 0.000000e+00, %5887 ], [ %5882, %5885 ]
  %5891 = icmp ne i32 %5839, 0
  %5892 = fmul fast float %5889, %2152
  %5893 = fadd fast float %5892, %5833
  %5894 = fmul fast float %5893, %5889
  %5895 = select i1 %5891, float 0.000000e+00, float %5894
  %5896 = fcmp fast oeq float %2152, 0.000000e+00
  %5897 = fdiv fast float %5838, %2152
  %5898 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5897)  ; FMax(a,b)
  %5899 = select i1 %5896, float %5889, float %5898
  %5900 = call float @dx.op.binary.f32(i32 36, float %5889, float %5899)  ; FMin(a,b)
  %5901 = fcmp fast ogt float %2152, 0.000000e+00
  %5902 = fcmp fast olt float %5838, 0.000000e+00
  br i1 %5901, label %5903, label %5960

; <label>:5903                                    ; preds = %5888
  %5904 = icmp eq i32 %5839, 0
  br i1 %5902, label %5905, label %5949

; <label>:5905                                    ; preds = %5903
  %5906 = select i1 %5904, float %5889, float 0.000000e+00
  %5907 = fsub fast float -0.000000e+00, %5906
  %5908 = call float @dx.op.unary.f32(i32 6, float %5907)  ; FAbs(value)
  %5909 = fmul fast float %5906, %2152
  %5910 = fadd fast float %5909, %5833
  %5911 = fmul fast float %5908, %5910
  %5912 = fsub fast float %5895, %5911
  %5913 = fsub fast float %5889, %5908
  %5914 = select i1 %5904, float %5913, float 0.000000e+00
  %5915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5916 = extractvalue %dx.types.CBufRet.f32 %5915, 0
  %5917 = extractvalue %dx.types.CBufRet.f32 %5915, 1
  %5918 = extractvalue %dx.types.CBufRet.f32 %5915, 2
  %5919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5920 = extractvalue %dx.types.CBufRet.f32 %5919, 0
  %5921 = extractvalue %dx.types.CBufRet.f32 %5919, 1
  %5922 = extractvalue %dx.types.CBufRet.f32 %5919, 2
  %5923 = extractvalue %dx.types.CBufRet.f32 %5919, 3
  %5924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5925 = extractvalue %dx.types.CBufRet.f32 %5924, 3
  %5926 = call float @dx.op.binary.f32(i32 36, float %5912, float %5925)  ; FMin(a,b)
  %5927 = fmul fast float %5923, %5914
  %5928 = call float @dx.op.unary.f32(i32 7, float %5927)  ; Saturate(value)
  %5929 = fsub fast float %5920, %5916
  %5930 = fsub fast float %5921, %5917
  %5931 = fsub fast float %5922, %5918
  %5932 = fmul fast float %5928, %5929
  %5933 = fmul fast float %5928, %5930
  %5934 = fmul fast float %5928, %5931
  %5935 = fadd fast float %5932, %5916
  %5936 = fadd fast float %5933, %5917
  %5937 = fadd fast float %5934, %5918
  %5938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5939 = extractvalue %dx.types.CBufRet.f32 %5938, 0
  %5940 = extractvalue %dx.types.CBufRet.f32 %5938, 1
  %5941 = fadd fast float %5940, %5939
  %5942 = call float @dx.op.unary.f32(i32 7, float %5941)  ; Saturate(value)
  %5943 = extractvalue %dx.types.CBufRet.f32 %5938, 2
  %5944 = extractvalue %dx.types.CBufRet.f32 %5938, 3
  %5945 = fadd fast float %5944, %5943
  %5946 = call float @dx.op.unary.f32(i32 7, float %5945)  ; Saturate(value)
  %5947 = fmul fast float %5942, %5926
  %5948 = fmul fast float %5947, %5946
  br label %6190

; <label>:5949                                    ; preds = %5903
  br i1 %5904, label %5950, label %5971

; <label>:5950                                    ; preds = %5949
  %5951 = call float @dx.op.binary.f32(i32 36, float %5900, float %5890)  ; FMin(a,b)
  %5952 = fsub fast float %5900, %5951
  %5953 = fsub fast float %5952, %5889
  %5954 = call float @dx.op.unary.f32(i32 6, float %5953)  ; FAbs(value)
  %5955 = fadd fast float %5952, %5889
  %5956 = fmul fast float %5955, %2152
  %5957 = fadd fast float %5956, %5833
  %5958 = fmul fast float %5957, %5954
  %5959 = fsub fast float %5895, %5958
  br label %5971

; <label>:5960                                    ; preds = %5888
  br i1 %5902, label %5961, label %5971

; <label>:5961                                    ; preds = %5960
  %5962 = call float @dx.op.binary.f32(i32 35, float %5890, float %5900)  ; FMax(a,b)
  %5963 = icmp eq i32 %5839, 0
  %5964 = select i1 %5963, float %5900, float 0.000000e+00
  %5965 = fsub fast float -0.000000e+00, %5964
  %5966 = call float @dx.op.unary.f32(i32 6, float %5965)  ; FAbs(value)
  %5967 = fmul fast float %5964, %2152
  %5968 = fadd fast float %5967, %5833
  %5969 = fmul fast float %5966, %5968
  %5970 = fsub fast float %5895, %5969
  br label %5971

; <label>:5971                                    ; preds = %5961, %5960, %5950, %5949
  %5972 = phi float [ %5890, %5949 ], [ %5890, %5950 ], [ %5962, %5961 ], [ %5890, %5960 ]
  %5973 = phi float [ 0.000000e+00, %5949 ], [ %5954, %5950 ], [ %5966, %5961 ], [ 0.000000e+00, %5960 ]
  %5974 = phi float [ %5895, %5949 ], [ %5959, %5950 ], [ %5970, %5961 ], [ %5895, %5960 ]
  %5975 = phi float [ %5900, %5949 ], [ %5900, %5950 ], [ %5889, %5961 ], [ %5889, %5960 ]
  %5976 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 0
  store float -1.000000e+00, float* %5976, align 4, !tbaa !95, !noalias !147
  %5977 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 1
  store float -1.000000e+00, float* %5977, align 4, !tbaa !95, !noalias !147
  %5978 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 2
  store float -1.000000e+00, float* %5978, align 4, !tbaa !95, !noalias !147
  %5979 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 0
  store float -1.000000e+00, float* %5979, align 4, !tbaa !95, !noalias !147
  %5980 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 1
  store float -1.000000e+00, float* %5980, align 4, !tbaa !95, !noalias !147
  %5981 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 2
  store float -1.000000e+00, float* %5981, align 4, !tbaa !95, !noalias !147
  %5982 = icmp sgt i32 %5841, 0
  br i1 %5982, label %5983, label %6044

; <label>:5983                                    ; preds = %5971
  br label %5984

; <label>:5984                                    ; preds = %6033, %5983
  %5985 = phi i32 [ %6034, %6033 ], [ 0, %5983 ]
  %5986 = phi i32 [ %6035, %6033 ], [ 0, %5983 ]
  %5987 = add nuw i32 %5986, 171
  %5988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 %5987)  ; CBufferLoadLegacy(handle,regIndex)
  %5989 = extractvalue %dx.types.CBufRet.f32 %5988, 0
  %5990 = extractvalue %dx.types.CBufRet.f32 %5988, 1
  %5991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5992 = extractvalue %dx.types.CBufRet.f32 %5991, 0
  %5993 = extractvalue %dx.types.CBufRet.f32 %5991, 1
  %5994 = fsub fast float %5989, %5992
  %5995 = fsub fast float %5990, %5993
  %5996 = extractvalue %dx.types.CBufRet.f32 %5988, 2
  %5997 = fsub fast float -0.000000e+00, %5994
  %5998 = fsub fast float -0.000000e+00, %5995
  %5999 = call float @dx.op.dot2.f32(i32 54, float %2150, float %2151, float %5997, float %5998)  ; Dot2(ax,ay,bx,by)
  %6000 = fmul fast float %5999, 2.000000e+00
  %6001 = call float @dx.op.dot2.f32(i32 54, float %5997, float %5998, float %5997, float %5998)  ; Dot2(ax,ay,bx,by)
  %6002 = fmul fast float %5996, %5996
  %6003 = fsub fast float %6001, %6002
  %6004 = fmul fast float %6000, %6000
  %6005 = fmul fast float %5861, %6003
  %6006 = fsub fast float %6004, %6005
  %6007 = fcmp fast ogt float %6006, 0.000000e+00
  br i1 %6007, label %6008, label %6023

; <label>:6008                                    ; preds = %5984
  %6009 = fcmp fast ogt float %6000, 0.000000e+00
  %6010 = call float @dx.op.unary.f32(i32 24, float %6006)  ; Sqrt(value)
  %6011 = fsub fast float -0.000000e+00, %6010
  %6012 = select i1 %6009, float %6010, float %6011
  %6013 = fadd fast float %6012, %6000
  %6014 = fmul float %6013, -5.000000e-01
  %6015 = fdiv fast float %6014, %5854
  %6016 = call float @dx.op.binary.f32(i32 35, float %6015, float 0.000000e+00)  ; FMax(a,b)
  %6017 = call float @dx.op.binary.f32(i32 36, float %5889, float %6016)  ; FMin(a,b)
  %6018 = fdiv fast float %6003, %6014
  %6019 = call float @dx.op.binary.f32(i32 35, float %6018, float 0.000000e+00)  ; FMax(a,b)
  %6020 = call float @dx.op.binary.f32(i32 36, float %5889, float %6019)  ; FMin(a,b)
  %6021 = call float @dx.op.binary.f32(i32 36, float %6017, float %6020)  ; FMin(a,b)
  %6022 = call float @dx.op.binary.f32(i32 35, float %6017, float %6020)  ; FMax(a,b)
  br label %6023

; <label>:6023                                    ; preds = %6008, %5984
  %6024 = phi float [ %6022, %6008 ], [ -1.000000e+00, %5984 ]
  %6025 = phi float [ %6021, %6008 ], [ -1.000000e+00, %5984 ]
  %6026 = phi i1 [ true, %6008 ], [ false, %5984 ]
  br i1 %6026, label %6027, label %6033

; <label>:6027                                    ; preds = %6023
  %6028 = call float @dx.op.binary.f32(i32 35, float %5972, float %6025)  ; FMax(a,b)
  %6029 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 %5986
  store float %6028, float* %6029, align 4, !tbaa !95, !noalias !147
  %6030 = call float @dx.op.binary.f32(i32 35, float %5972, float %6024)  ; FMax(a,b)
  %6031 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %5986
  store float %6030, float* %6031, align 4, !tbaa !95, !noalias !147
  %6032 = add nsw i32 %5985, 1
  br label %6033

; <label>:6033                                    ; preds = %6027, %6023
  %6034 = phi i32 [ %6032, %6027 ], [ %5985, %6023 ]
  %6035 = add nuw nsw i32 %5986, 1
  %6036 = icmp eq i32 %6035, %5841
  br i1 %6036, label %6037, label %5984

; <label>:6037                                    ; preds = %6033
  %6038 = load float, float* %5978, align 4, !tbaa !95, !alias.scope !163, !noalias !166
  %6039 = load float, float* %5977, align 4, !tbaa !95, !alias.scope !169, !noalias !170
  %6040 = load float, float* %5976, align 4, !tbaa !95, !alias.scope !171, !noalias !172
  %6041 = load float, float* %5981, align 4, !tbaa !95, !alias.scope !173, !noalias !176
  %6042 = load float, float* %5980, align 4, !tbaa !95, !alias.scope !179, !noalias !180
  %6043 = load float, float* %5979, align 4, !tbaa !95, !alias.scope !181, !noalias !182
  br label %6044

; <label>:6044                                    ; preds = %6037, %5971
  %6045 = phi float [ -1.000000e+00, %5971 ], [ %6043, %6037 ]
  %6046 = phi float [ -1.000000e+00, %5971 ], [ %6042, %6037 ]
  %6047 = phi float [ -1.000000e+00, %5971 ], [ %6041, %6037 ]
  %6048 = phi float [ -1.000000e+00, %5971 ], [ %6040, %6037 ]
  %6049 = phi float [ -1.000000e+00, %5971 ], [ %6039, %6037 ]
  %6050 = phi float [ -1.000000e+00, %5971 ], [ %6038, %6037 ]
  %6051 = phi i32 [ 0, %5971 ], [ %6034, %6037 ]
  %6052 = call float @dx.op.binary.f32(i32 36, float %6049, float %6050)  ; FMin(a,b)
  %6053 = call float @dx.op.binary.f32(i32 36, float %6048, float %6052)  ; FMin(a,b)
  %6054 = call float @dx.op.binary.f32(i32 35, float %6048, float %6049)  ; FMax(a,b)
  %6055 = call float @dx.op.binary.f32(i32 36, float %6054, float %6050)  ; FMin(a,b)
  %6056 = call float @dx.op.binary.f32(i32 36, float %6048, float %6049)  ; FMin(a,b)
  %6057 = call float @dx.op.binary.f32(i32 35, float %6056, float %6055)  ; FMax(a,b)
  %6058 = call float @dx.op.binary.f32(i32 35, float %6049, float %6050)  ; FMax(a,b)
  %6059 = call float @dx.op.binary.f32(i32 35, float %6048, float %6058)  ; FMax(a,b)
  store float %6053, float* %5976, align 4, !tbaa !95, !alias.scope !171, !noalias !172
  store float %6057, float* %5977, align 4, !tbaa !95, !alias.scope !169, !noalias !170
  store float %6059, float* %5978, align 4, !tbaa !95, !alias.scope !163, !noalias !166
  %6060 = call float @dx.op.binary.f32(i32 36, float %6046, float %6047)  ; FMin(a,b)
  %6061 = call float @dx.op.binary.f32(i32 36, float %6045, float %6060)  ; FMin(a,b)
  %6062 = call float @dx.op.binary.f32(i32 35, float %6045, float %6046)  ; FMax(a,b)
  %6063 = call float @dx.op.binary.f32(i32 36, float %6062, float %6047)  ; FMin(a,b)
  %6064 = call float @dx.op.binary.f32(i32 36, float %6045, float %6046)  ; FMin(a,b)
  %6065 = call float @dx.op.binary.f32(i32 35, float %6064, float %6063)  ; FMax(a,b)
  %6066 = call float @dx.op.binary.f32(i32 35, float %6046, float %6047)  ; FMax(a,b)
  %6067 = call float @dx.op.binary.f32(i32 35, float %6045, float %6066)  ; FMax(a,b)
  store float %6061, float* %5979, align 4, !tbaa !95, !alias.scope !181, !noalias !182
  store float %6065, float* %5980, align 4, !tbaa !95, !alias.scope !179, !noalias !180
  store float %6067, float* %5981, align 4, !tbaa !95, !alias.scope !173, !noalias !176
  %6068 = sub nsw i32 3, %6051
  %6069 = icmp sgt i32 %6068, 2
  br i1 %6069, label %6070, label %6108

; <label>:6070                                    ; preds = %6044
  %6071 = icmp eq i32 %5839, 0
  %6072 = fsub fast float %5889, %5973
  %6073 = select i1 %6071, float %6072, float %5973
  %6074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6075 = extractvalue %dx.types.CBufRet.f32 %6074, 0
  %6076 = extractvalue %dx.types.CBufRet.f32 %6074, 1
  %6077 = extractvalue %dx.types.CBufRet.f32 %6074, 2
  %6078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6079 = extractvalue %dx.types.CBufRet.f32 %6078, 0
  %6080 = extractvalue %dx.types.CBufRet.f32 %6078, 1
  %6081 = extractvalue %dx.types.CBufRet.f32 %6078, 2
  %6082 = extractvalue %dx.types.CBufRet.f32 %6078, 3
  %6083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6084 = extractvalue %dx.types.CBufRet.f32 %6083, 3
  %6085 = call float @dx.op.binary.f32(i32 36, float %5974, float %6084)  ; FMin(a,b)
  %6086 = fmul fast float %6082, %6073
  %6087 = call float @dx.op.unary.f32(i32 7, float %6086)  ; Saturate(value)
  %6088 = fsub fast float %6079, %6075
  %6089 = fsub fast float %6080, %6076
  %6090 = fsub fast float %6081, %6077
  %6091 = fmul fast float %6087, %6088
  %6092 = fmul fast float %6087, %6089
  %6093 = fmul fast float %6087, %6090
  %6094 = fadd fast float %6091, %6075
  %6095 = fadd fast float %6092, %6076
  %6096 = fadd fast float %6093, %6077
  %6097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6098 = extractvalue %dx.types.CBufRet.f32 %6097, 0
  %6099 = extractvalue %dx.types.CBufRet.f32 %6097, 1
  %6100 = fadd fast float %6099, %6098
  %6101 = call float @dx.op.unary.f32(i32 7, float %6100)  ; Saturate(value)
  %6102 = extractvalue %dx.types.CBufRet.f32 %6097, 2
  %6103 = extractvalue %dx.types.CBufRet.f32 %6097, 3
  %6104 = fadd fast float %6103, %6102
  %6105 = call float @dx.op.unary.f32(i32 7, float %6104)  ; Saturate(value)
  %6106 = fmul fast float %6101, %6085
  %6107 = fmul fast float %6106, %6105
  br label %6190

; <label>:6108                                    ; preds = %6044
  %6109 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 %6068
  %6110 = load float, float* %6109, align 4, !tbaa !95, !noalias !147
  %6111 = fcmp fast olt float %6110, %5975
  %6112 = icmp sgt i32 %6051, 0
  %6113 = and i1 %6112, %6111
  br i1 %6113, label %6114, label %6151

; <label>:6114                                    ; preds = %6108
  br label %6115

; <label>:6115                                    ; preds = %6144, %6114
  %6116 = phi float [ %6145, %6144 ], [ %5973, %6114 ]
  %6117 = phi float [ %6146, %6144 ], [ %5974, %6114 ]
  %6118 = phi float [ %6126, %6144 ], [ %6110, %6114 ]
  %6119 = phi i32 [ %6123, %6144 ], [ %6068, %6114 ]
  %6120 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %6119
  %6121 = load float, float* %6120, align 4, !tbaa !95, !noalias !147
  %6122 = icmp slt i32 %6119, 2
  %6123 = add nsw i32 %6119, 1
  %6124 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 %6123
  %6125 = load float, float* %6124, align 4, !tbaa !95, !noalias !147
  %6126 = select i1 %6122, float %6125, float %5889
  %6127 = call float @dx.op.binary.f32(i32 36, float %6126, float %6121)  ; FMin(a,b)
  %6128 = call float @dx.op.binary.f32(i32 36, float %5975, float %6127)  ; FMin(a,b)
  %6129 = icmp eq i32 %5839, 0
  %6130 = fadd fast float %6128, %6118
  %6131 = fmul fast float %6130, %2152
  %6132 = fadd fast float %6131, %5833
  br i1 %6129, label %6138, label %6133

; <label>:6133                                    ; preds = %6115
  %6134 = fsub fast float %6128, %6118
  %6135 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6134)  ; FMax(a,b)
  %6136 = fmul fast float %6135, %6132
  %6137 = fadd fast float %6136, %6117
  br label %6144

; <label>:6138                                    ; preds = %6115
  %6139 = fsub fast float %6118, %6128
  %6140 = call float @dx.op.unary.f32(i32 6, float %6139)  ; FAbs(value)
  %6141 = fadd fast float %6140, %6116
  %6142 = fmul fast float %6140, %6132
  %6143 = fsub fast float %6117, %6142
  br label %6144

; <label>:6144                                    ; preds = %6138, %6133
  %6145 = phi float [ %6135, %6133 ], [ %6141, %6138 ]
  %6146 = phi float [ %6137, %6133 ], [ %6143, %6138 ]
  %6147 = fcmp fast olt float %6126, %5975
  %6148 = icmp slt i32 %6123, 3
  %6149 = and i1 %6148, %6147
  br i1 %6149, label %6115, label %6150

; <label>:6150                                    ; preds = %6144
  br label %6151

; <label>:6151                                    ; preds = %6150, %6108
  %6152 = phi float [ %5973, %6108 ], [ %6145, %6150 ]
  %6153 = phi float [ %5974, %6108 ], [ %6146, %6150 ]
  %6154 = fsub fast float %5889, %6152
  %6155 = select i1 %5891, float %6152, float %6154
  %6156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6157 = extractvalue %dx.types.CBufRet.f32 %6156, 0
  %6158 = extractvalue %dx.types.CBufRet.f32 %6156, 1
  %6159 = extractvalue %dx.types.CBufRet.f32 %6156, 2
  %6160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6161 = extractvalue %dx.types.CBufRet.f32 %6160, 0
  %6162 = extractvalue %dx.types.CBufRet.f32 %6160, 1
  %6163 = extractvalue %dx.types.CBufRet.f32 %6160, 2
  %6164 = extractvalue %dx.types.CBufRet.f32 %6160, 3
  %6165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6166 = extractvalue %dx.types.CBufRet.f32 %6165, 3
  %6167 = call float @dx.op.binary.f32(i32 36, float %6153, float %6166)  ; FMin(a,b)
  %6168 = fmul fast float %6164, %6155
  %6169 = call float @dx.op.unary.f32(i32 7, float %6168)  ; Saturate(value)
  %6170 = fsub fast float %6161, %6157
  %6171 = fsub fast float %6162, %6158
  %6172 = fsub fast float %6163, %6159
  %6173 = fmul fast float %6169, %6170
  %6174 = fmul fast float %6169, %6171
  %6175 = fmul fast float %6169, %6172
  %6176 = fadd fast float %6173, %6157
  %6177 = fadd fast float %6174, %6158
  %6178 = fadd fast float %6175, %6159
  %6179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6180 = extractvalue %dx.types.CBufRet.f32 %6179, 0
  %6181 = extractvalue %dx.types.CBufRet.f32 %6179, 1
  %6182 = fadd fast float %6181, %6180
  %6183 = call float @dx.op.unary.f32(i32 7, float %6182)  ; Saturate(value)
  %6184 = extractvalue %dx.types.CBufRet.f32 %6179, 2
  %6185 = extractvalue %dx.types.CBufRet.f32 %6179, 3
  %6186 = fadd fast float %6185, %6184
  %6187 = call float @dx.op.unary.f32(i32 7, float %6186)  ; Saturate(value)
  %6188 = fmul fast float %6183, %6167
  %6189 = fmul fast float %6188, %6187
  br label %6190

; <label>:6190                                    ; preds = %6151, %6070, %5905, %5887, %5885
  %6191 = phi float [ %5914, %5905 ], [ %6073, %6070 ], [ %6155, %6151 ], [ 0.000000e+00, %5885 ], [ 0.000000e+00, %5887 ]
  %6192 = phi float [ %5948, %5905 ], [ %6107, %6070 ], [ %6189, %6151 ], [ 0.000000e+00, %5885 ], [ 0.000000e+00, %5887 ]
  %6193 = phi float [ %5935, %5905 ], [ %6094, %6070 ], [ %6176, %6151 ], [ 0.000000e+00, %5885 ], [ 0.000000e+00, %5887 ]
  %6194 = phi float [ %5936, %5905 ], [ %6095, %6070 ], [ %6177, %6151 ], [ 0.000000e+00, %5885 ], [ 0.000000e+00, %5887 ]
  %6195 = phi float [ %5937, %5905 ], [ %6096, %6070 ], [ %6178, %6151 ], [ 0.000000e+00, %5885 ], [ 0.000000e+00, %5887 ]
  %6196 = fmul fast float %5828, %6192
  %6197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6198 = extractvalue %dx.types.CBufRet.f32 %6197, 2
  %6199 = fsub fast float %5835, %6198
  %6200 = fcmp fast olt float %6196, -2.000000e+01
  %6201 = call float @dx.op.unary.f32(i32 21, float %6196)  ; Exp(value)
  %6202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6203 = extractvalue %dx.types.CBufRet.f32 %6202, 2
  %6204 = extractvalue %dx.types.CBufRet.f32 %6202, 3
  %6205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6206 = extractvalue %dx.types.CBufRet.f32 %6205, 2
  %6207 = fmul fast float %6204, %6199
  %6208 = call float @dx.op.unary.f32(i32 7, float %6207)  ; Saturate(value)
  %6209 = fsub fast float 1.000000e+00, %6208
  %6210 = fmul fast float %2152, 5.000000e-01
  %6211 = fadd fast float %6210, 5.000000e-01
  %6212 = call float @dx.op.unary.f32(i32 7, float %6211)  ; Saturate(value)
  %6213 = fsub fast float 1.000000e+00, %6212
  %6214 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6209)  ; FMax(a,b)
  %6215 = fdiv fast float %6213, %6214
  %6216 = fsub fast float %6199, %137
  %6217 = call float @dx.op.unary.f32(i32 6, float %6216)  ; FAbs(value)
  %6218 = fmul fast float %6217, %6203
  %6219 = call float @dx.op.unary.f32(i32 7, float %6215)  ; Saturate(value)
  %6220 = fsub fast float 1.000000e+00, %6218
  %6221 = fmul fast float %6220, %6219
  %6222 = fadd fast float %6221, %6218
  %6223 = fmul fast float %6206, %6199
  %6224 = call float @dx.op.unary.f32(i32 7, float %6223)  ; Saturate(value)
  %6225 = fsub fast float 1.000000e+00, %6222
  %6226 = fmul fast float %6225, %6224
  %6227 = fadd fast float %6226, %6222
  %6228 = call float @dx.op.unary.f32(i32 7, float %6227)  ; Saturate(value)
  %6229 = fadd fast float %6201, -1.000000e+00
  %6230 = select i1 %6200, float -1.000000e+00, float %6229
  %6231 = fmul fast float %6228, %6230
  %6232 = fadd fast float %6231, 1.000000e+00
  %6233 = fsub fast float -0.000000e+00, %6231
  %6234 = fmul fast float %6193, %6233
  %6235 = fmul fast float %6194, %6233
  %6236 = fmul fast float %6195, %6233
  br label %6237

; <label>:6237                                    ; preds = %6190, %5791
  %6238 = phi float [ %6191, %6190 ], [ 0.000000e+00, %5791 ]
  %6239 = phi float [ %6232, %6190 ], [ 1.000000e+00, %5791 ]
  %6240 = phi float [ %6234, %6190 ], [ 0.000000e+00, %5791 ]
  %6241 = phi float [ %6235, %6190 ], [ 0.000000e+00, %5791 ]
  %6242 = phi float [ %6236, %6190 ], [ 0.000000e+00, %5791 ]
  %6243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6244 = extractvalue %dx.types.CBufRet.f32 %6243, 1
  %6245 = fsub fast float 1.000000e+00, %6239
  %6246 = fmul fast float %6245, %5821
  %6247 = fmul fast float %6246, %6244
  %6248 = fsub fast float %5821, %6247
  br i1 %5819, label %6249, label %6278, !dx.controlflow.hints !183

; <label>:6249                                    ; preds = %6237
  %6250 = fmul fast float %5822, %5816
  %6251 = fadd fast float %6250, %5817
  %6252 = call float @dx.op.unary.f32(i32 7, float %6251)  ; Saturate(value)
  %6253 = fmul fast float %5798, %6248
  %6254 = fsub fast float -0.000000e+00, %6253
  %6255 = fmul fast float %5799, %6248
  %6256 = fsub fast float -0.000000e+00, %6255
  %6257 = call float @dx.op.unary.f32(i32 21, float %6254)  ; Exp(value)
  %6258 = call float @dx.op.unary.f32(i32 21, float %6256)  ; Exp(value)
  %6259 = call float @dx.op.binary.f32(i32 35, float %5806, float %6257)  ; FMax(a,b)
  %6260 = call float @dx.op.binary.f32(i32 35, float %5806, float %6258)  ; FMax(a,b)
  %6261 = fsub fast float %6260, %6259
  %6262 = fmul fast float %6261, %6252
  %6263 = fadd fast float %6262, %6259
  %6264 = call float @dx.op.unary.f32(i32 7, float %6263)  ; Saturate(value)
  %6265 = fsub fast float %5803, %5808
  %6266 = fsub fast float %5804, %5809
  %6267 = fsub fast float %5805, %5810
  %6268 = fmul fast float %6252, %6265
  %6269 = fmul fast float %6252, %6266
  %6270 = fmul fast float %6252, %6267
  %6271 = fadd fast float %6268, %5808
  %6272 = fadd fast float %6269, %5809
  %6273 = fadd fast float %6270, %5810
  %6274 = fsub fast float 1.000000e+00, %6264
  %6275 = fmul fast float %6274, %6271
  %6276 = fmul fast float %6274, %6272
  %6277 = fmul fast float %6274, %6273
  br label %6337

; <label>:6278                                    ; preds = %6237
  %6279 = fmul fast float %6248, %5815
  %6280 = call float @dx.op.unary.f32(i32 7, float %6279)  ; Saturate(value)
  %6281 = fsub fast float 2.000000e+00, %6280
  %6282 = fmul fast float %6280, 9.921875e-01
  %6283 = fmul fast float %6282, %6281
  %6284 = fadd fast float %6283, 3.906250e-03
  %6285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %52, float %6284, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6286 = extractvalue %dx.types.ResRet.f32 %6285, 0
  %6287 = fsub fast float %6280, %6286
  %6288 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6287)  ; FMax(a,b)
  %6289 = fmul fast float %5801, %137
  %6290 = call float @dx.op.unary.f32(i32 6, float %6289)  ; FAbs(value)
  %6291 = fcmp fast ogt float %6290, 0x3EB0C6F7A0000000
  br i1 %6291, label %6292, label %6298, !dx.controlflow.hints !184

; <label>:6292                                    ; preds = %6278
  %6293 = fmul fast float %6289, 0xBFF7154760000000
  %6294 = call float @dx.op.unary.f32(i32 21, float %6293)  ; Exp(value)
  %6295 = fsub fast float 1.000000e+00, %6294
  %6296 = fdiv fast float %6295, %6289
  %6297 = fmul fast float %6296, %5811
  br label %6298

; <label>:6298                                    ; preds = %6292, %6278
  %6299 = phi float [ %6297, %6292 ], [ %5811, %6278 ]
  %6300 = fadd fast float %6299, %5813
  %6301 = fmul fast float %6300, %6288
  %6302 = fmul fast float %5798, %6301
  %6303 = fsub fast float -0.000000e+00, %6302
  %6304 = fmul fast float %5799, %6301
  %6305 = fsub fast float -0.000000e+00, %6304
  %6306 = fmul fast float %5800, %6301
  %6307 = fsub fast float -0.000000e+00, %6306
  %6308 = call float @dx.op.unary.f32(i32 21, float %6303)  ; Exp(value)
  %6309 = call float @dx.op.unary.f32(i32 21, float %6305)  ; Exp(value)
  %6310 = call float @dx.op.unary.f32(i32 21, float %6307)  ; Exp(value)
  %6311 = fmul fast float %5822, %5822
  %6312 = fadd fast float %6311, 1.000000e+00
  %6313 = fmul fast float %6312, 0x3FAE8EC8A0000000
  %6314 = fmul fast float %6313, %5808
  %6315 = fmul fast float %6313, %5809
  %6316 = fmul fast float %6313, %5810
  %6317 = fmul fast float %5822, %5806
  %6318 = fsub fast float 1.000000e+00, %6317
  %6319 = fmul fast float %5806, %5806
  %6320 = fsub fast float 1.000000e+00, %6319
  %6321 = fmul fast float %6320, 0x3FB45F3060000000
  %6322 = fmul fast float %6318, %6318
  %6323 = fdiv fast float 1.000000e+00, %6322
  %6324 = fmul fast float %6321, %6323
  %6325 = fmul fast float %6324, %5803
  %6326 = fmul fast float %6324, %5804
  %6327 = fmul fast float %6324, %5805
  %6328 = fadd fast float %6325, %6314
  %6329 = fadd fast float %6326, %6315
  %6330 = fadd fast float %6327, %6316
  %6331 = fsub fast float 1.000000e+00, %6308
  %6332 = fsub fast float 1.000000e+00, %6309
  %6333 = fsub fast float 1.000000e+00, %6310
  %6334 = fmul fast float %6328, %6331
  %6335 = fmul fast float %6329, %6332
  %6336 = fmul fast float %6330, %6333
  br label %6337

; <label>:6337                                    ; preds = %6298, %6249
  %6338 = phi float [ %6275, %6249 ], [ %6334, %6298 ]
  %6339 = phi float [ %6276, %6249 ], [ %6335, %6298 ]
  %6340 = phi float [ %6277, %6249 ], [ %6336, %6298 ]
  %6341 = phi float [ %6264, %6249 ], [ %6308, %6298 ]
  %6342 = phi float [ %6264, %6249 ], [ %6309, %6298 ]
  %6343 = phi float [ %6264, %6249 ], [ %6310, %6298 ]
  br i1 %5830, label %6344, label %6542, !dx.controlflow.hints !185

; <label>:6344                                    ; preds = %6337
  %6345 = extractvalue %dx.types.CBufRet.f32 %6243, 0
  %6346 = fmul fast float %6345, %6245
  %6347 = fsub fast float %6240, %6338
  %6348 = fsub fast float %6241, %6339
  %6349 = fsub fast float %6242, %6340
  %6350 = fmul fast float %6346, %6347
  %6351 = fmul fast float %6346, %6348
  %6352 = fmul fast float %6346, %6349
  %6353 = fadd fast float %6350, %6338
  %6354 = fadd fast float %6351, %6339
  %6355 = fadd fast float %6352, %6340
  %6356 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6341)  ; FMax(a,b)
  %6357 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6342)  ; FMax(a,b)
  %6358 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6343)  ; FMax(a,b)
  %6359 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6239)  ; FMax(a,b)
  %6360 = call float @dx.op.binary.f32(i32 35, float %6238, float %6248)  ; FMax(a,b)
  %6361 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6360)  ; FMax(a,b)
  %6362 = fdiv fast float %6238, %6361
  %6363 = call float @dx.op.unary.f32(i32 7, float %6362)  ; Saturate(value)
  %6364 = fdiv fast float %6248, %6361
  %6365 = call float @dx.op.unary.f32(i32 7, float %6364)  ; Saturate(value)
  %6366 = fcmp fast une float %6359, 1.000000e+00
  br i1 %6366, label %6367, label %6380, !dx.controlflow.hints !186

; <label>:6367                                    ; preds = %6344
  %6368 = call float @dx.op.unary.f32(i32 23, float %6359)  ; Log(value)
  %6369 = fmul fast float %6368, 0x3FE62E4300000000
  %6370 = fmul fast float %6240, %6369
  %6371 = fsub fast float -0.000000e+00, %6370
  %6372 = fmul fast float %6241, %6369
  %6373 = fsub fast float -0.000000e+00, %6372
  %6374 = fmul fast float %6242, %6369
  %6375 = fsub fast float -0.000000e+00, %6374
  %6376 = fsub fast float 1.000000e+00, %6359
  %6377 = fdiv fast float %6371, %6376
  %6378 = fdiv fast float %6373, %6376
  %6379 = fdiv fast float %6375, %6376
  br label %6380

; <label>:6380                                    ; preds = %6367, %6344
  %6381 = phi float [ %6377, %6367 ], [ %6240, %6344 ]
  %6382 = phi float [ %6378, %6367 ], [ %6241, %6344 ]
  %6383 = phi float [ %6379, %6367 ], [ %6242, %6344 ]
  %6384 = phi float [ %6369, %6367 ], [ 0.000000e+00, %6344 ]
  %6385 = fcmp fast une float %6356, 1.000000e+00
  br i1 %6385, label %6386, label %6393, !dx.controlflow.hints !187

; <label>:6386                                    ; preds = %6380
  %6387 = call float @dx.op.unary.f32(i32 23, float %6356)  ; Log(value)
  %6388 = fmul fast float %6387, 0x3FE62E4300000000
  %6389 = fmul fast float %6353, %6388
  %6390 = fsub fast float -0.000000e+00, %6389
  %6391 = fsub fast float 1.000000e+00, %6356
  %6392 = fdiv fast float %6390, %6391
  br label %6393

; <label>:6393                                    ; preds = %6386, %6380
  %6394 = phi float [ %6392, %6386 ], [ %6353, %6380 ]
  %6395 = phi float [ %6388, %6386 ], [ 0.000000e+00, %6380 ]
  %6396 = fcmp fast une float %6357, 1.000000e+00
  br i1 %6396, label %6397, label %6404, !dx.controlflow.hints !187

; <label>:6397                                    ; preds = %6393
  %6398 = call float @dx.op.unary.f32(i32 23, float %6357)  ; Log(value)
  %6399 = fmul fast float %6398, 0x3FE62E4300000000
  %6400 = fmul fast float %6354, %6399
  %6401 = fsub fast float -0.000000e+00, %6400
  %6402 = fsub fast float 1.000000e+00, %6357
  %6403 = fdiv fast float %6401, %6402
  br label %6404

; <label>:6404                                    ; preds = %6397, %6393
  %6405 = phi float [ %6403, %6397 ], [ %6354, %6393 ]
  %6406 = phi float [ %6399, %6397 ], [ 0.000000e+00, %6393 ]
  %6407 = fcmp fast une float %6358, 1.000000e+00
  br i1 %6407, label %6408, label %6415, !dx.controlflow.hints !187

; <label>:6408                                    ; preds = %6404
  %6409 = call float @dx.op.unary.f32(i32 23, float %6358)  ; Log(value)
  %6410 = fmul fast float %6409, 0x3FE62E4300000000
  %6411 = fmul fast float %6355, %6410
  %6412 = fsub fast float -0.000000e+00, %6411
  %6413 = fsub fast float 1.000000e+00, %6358
  %6414 = fdiv fast float %6412, %6413
  br label %6415

; <label>:6415                                    ; preds = %6408, %6404
  %6416 = phi float [ %6414, %6408 ], [ %6355, %6404 ]
  %6417 = phi float [ %6410, %6408 ], [ 0.000000e+00, %6404 ]
  %6418 = fmul fast float %6381, %6365
  %6419 = fmul fast float %6382, %6365
  %6420 = fmul fast float %6383, %6365
  %6421 = fmul fast float %6384, %6365
  %6422 = fmul fast float %6394, %6363
  %6423 = fmul fast float %6405, %6363
  %6424 = fmul fast float %6416, %6363
  %6425 = fmul fast float %6395, %6363
  %6426 = fmul fast float %6406, %6363
  %6427 = fmul fast float %6417, %6363
  %6428 = fadd fast float %6422, %6418
  %6429 = fadd fast float %6423, %6419
  %6430 = fadd fast float %6424, %6420
  %6431 = fadd fast float %6425, %6421
  %6432 = fadd fast float %6426, %6421
  %6433 = fadd fast float %6427, %6421
  %6434 = fcmp fast une float %6431, 0.000000e+00
  br i1 %6434, label %6435, label %6442, !dx.controlflow.hints !188

; <label>:6435                                    ; preds = %6415
  %6436 = fmul fast float %6431, 0x3FF7154760000000
  %6437 = call float @dx.op.unary.f32(i32 21, float %6436)  ; Exp(value)
  %6438 = fsub fast float 1.000000e+00, %6437
  %6439 = fmul fast float %6428, %6438
  %6440 = fsub fast float -0.000000e+00, %6439
  %6441 = fdiv fast float %6440, %6431
  br label %6442

; <label>:6442                                    ; preds = %6435, %6415
  %6443 = phi float [ %6437, %6435 ], [ 1.000000e+00, %6415 ]
  %6444 = phi float [ %6441, %6435 ], [ %6428, %6415 ]
  %6445 = fcmp fast une float %6432, 0.000000e+00
  br i1 %6445, label %6446, label %6453, !dx.controlflow.hints !188

; <label>:6446                                    ; preds = %6442
  %6447 = fmul fast float %6432, 0x3FF7154760000000
  %6448 = call float @dx.op.unary.f32(i32 21, float %6447)  ; Exp(value)
  %6449 = fsub fast float 1.000000e+00, %6448
  %6450 = fmul fast float %6429, %6449
  %6451 = fsub fast float -0.000000e+00, %6450
  %6452 = fdiv fast float %6451, %6432
  br label %6453

; <label>:6453                                    ; preds = %6446, %6442
  %6454 = phi float [ %6448, %6446 ], [ 1.000000e+00, %6442 ]
  %6455 = phi float [ %6452, %6446 ], [ %6429, %6442 ]
  %6456 = fcmp fast une float %6433, 0.000000e+00
  br i1 %6456, label %6457, label %6464, !dx.controlflow.hints !188

; <label>:6457                                    ; preds = %6453
  %6458 = fmul fast float %6433, 0x3FF7154760000000
  %6459 = call float @dx.op.unary.f32(i32 21, float %6458)  ; Exp(value)
  %6460 = fsub fast float 1.000000e+00, %6459
  %6461 = fmul fast float %6430, %6460
  %6462 = fsub fast float -0.000000e+00, %6461
  %6463 = fdiv fast float %6462, %6433
  br label %6464

; <label>:6464                                    ; preds = %6457, %6453
  %6465 = phi float [ %6459, %6457 ], [ 1.000000e+00, %6453 ]
  %6466 = phi float [ %6463, %6457 ], [ %6430, %6453 ]
  %6467 = fcmp fast ogt float %6363, %6365
  br i1 %6467, label %6468, label %6488

; <label>:6468                                    ; preds = %6464
  %6469 = fsub fast float 1.000000e+00, %6365
  %6470 = fmul fast float %6381, %6469
  %6471 = fmul fast float %6382, %6469
  %6472 = fmul fast float %6383, %6469
  %6473 = fmul fast float %6384, %6469
  %6474 = fcmp fast une float %6473, 0.000000e+00
  br i1 %6474, label %6475, label %6526, !dx.controlflow.hints !189

; <label>:6475                                    ; preds = %6468
  %6476 = fmul fast float %6473, 0x3FF7154760000000
  %6477 = call float @dx.op.unary.f32(i32 21, float %6476)  ; Exp(value)
  %6478 = fsub fast float 1.000000e+00, %6477
  %6479 = fmul fast float %6470, %6478
  %6480 = fsub fast float -0.000000e+00, %6479
  %6481 = fmul fast float %6471, %6478
  %6482 = fsub fast float -0.000000e+00, %6481
  %6483 = fmul fast float %6472, %6478
  %6484 = fsub fast float -0.000000e+00, %6483
  %6485 = fdiv fast float %6480, %6473
  %6486 = fdiv fast float %6482, %6473
  %6487 = fdiv fast float %6484, %6473
  br label %6526

; <label>:6488                                    ; preds = %6464
  %6489 = fsub fast float 1.000000e+00, %6363
  %6490 = fmul fast float %6394, %6489
  %6491 = fmul fast float %6405, %6489
  %6492 = fmul fast float %6416, %6489
  %6493 = fmul fast float %6395, %6489
  %6494 = fmul fast float %6406, %6489
  %6495 = fmul fast float %6417, %6489
  %6496 = fcmp fast une float %6493, 0.000000e+00
  br i1 %6496, label %6497, label %6504, !dx.controlflow.hints !188

; <label>:6497                                    ; preds = %6488
  %6498 = fmul fast float %6493, 0x3FF7154760000000
  %6499 = call float @dx.op.unary.f32(i32 21, float %6498)  ; Exp(value)
  %6500 = fsub fast float 1.000000e+00, %6499
  %6501 = fmul fast float %6490, %6500
  %6502 = fsub fast float -0.000000e+00, %6501
  %6503 = fdiv fast float %6502, %6493
  br label %6504

; <label>:6504                                    ; preds = %6497, %6488
  %6505 = phi float [ %6503, %6497 ], [ %6490, %6488 ]
  %6506 = phi float [ %6499, %6497 ], [ 1.000000e+00, %6488 ]
  %6507 = fcmp fast une float %6494, 0.000000e+00
  br i1 %6507, label %6508, label %6515, !dx.controlflow.hints !188

; <label>:6508                                    ; preds = %6504
  %6509 = fmul fast float %6494, 0x3FF7154760000000
  %6510 = call float @dx.op.unary.f32(i32 21, float %6509)  ; Exp(value)
  %6511 = fsub fast float 1.000000e+00, %6510
  %6512 = fmul fast float %6491, %6511
  %6513 = fsub fast float -0.000000e+00, %6512
  %6514 = fdiv fast float %6513, %6494
  br label %6515

; <label>:6515                                    ; preds = %6508, %6504
  %6516 = phi float [ %6514, %6508 ], [ %6491, %6504 ]
  %6517 = phi float [ %6510, %6508 ], [ 1.000000e+00, %6504 ]
  %6518 = fcmp fast une float %6495, 0.000000e+00
  br i1 %6518, label %6519, label %6526, !dx.controlflow.hints !188

; <label>:6519                                    ; preds = %6515
  %6520 = fmul fast float %6495, 0x3FF7154760000000
  %6521 = call float @dx.op.unary.f32(i32 21, float %6520)  ; Exp(value)
  %6522 = fsub fast float 1.000000e+00, %6521
  %6523 = fmul fast float %6492, %6522
  %6524 = fsub fast float -0.000000e+00, %6523
  %6525 = fdiv fast float %6524, %6495
  br label %6526

; <label>:6526                                    ; preds = %6519, %6515, %6475, %6468
  %6527 = phi float [ %6525, %6519 ], [ %6487, %6475 ], [ %6472, %6468 ], [ %6492, %6515 ]
  %6528 = phi float [ %6516, %6519 ], [ %6486, %6475 ], [ %6471, %6468 ], [ %6516, %6515 ]
  %6529 = phi float [ %6505, %6519 ], [ %6485, %6475 ], [ %6470, %6468 ], [ %6505, %6515 ]
  %6530 = phi float [ %6521, %6519 ], [ %6477, %6475 ], [ 1.000000e+00, %6468 ], [ 1.000000e+00, %6515 ]
  %6531 = phi float [ %6517, %6519 ], [ %6477, %6475 ], [ 1.000000e+00, %6468 ], [ %6517, %6515 ]
  %6532 = phi float [ %6506, %6519 ], [ %6477, %6475 ], [ 1.000000e+00, %6468 ], [ %6506, %6515 ]
  %6533 = fmul fast float %6532, %6444
  %6534 = fmul fast float %6531, %6455
  %6535 = fmul fast float %6530, %6466
  %6536 = fadd fast float %6533, %6529
  %6537 = fadd fast float %6534, %6528
  %6538 = fadd fast float %6535, %6527
  %6539 = fmul fast float %6532, %6443
  %6540 = fmul fast float %6531, %6454
  %6541 = fmul fast float %6530, %6465
  br label %6542

; <label>:6542                                    ; preds = %6526, %6337
  %6543 = phi float [ %6541, %6526 ], [ %6343, %6337 ]
  %6544 = phi float [ %6540, %6526 ], [ %6342, %6337 ]
  %6545 = phi float [ %6539, %6526 ], [ %6341, %6337 ]
  %6546 = phi float [ %6538, %6526 ], [ %6340, %6337 ]
  %6547 = phi float [ %6537, %6526 ], [ %6339, %6337 ]
  %6548 = phi float [ %6536, %6526 ], [ %6338, %6337 ]
  %6549 = call float @dx.op.dot3.f32(i32 55, float %6545, float %6544, float %6543, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6550 = call float @dx.op.dot3.f32(i32 55, float %6548, float %6547, float %6546, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6551 = select i1 %2245, float %6549, float %6545
  %6552 = select i1 %2245, float %6549, float %6544
  %6553 = select i1 %2245, float 1.000000e+00, float %6543
  %6554 = select i1 %2245, float %6550, float %6548
  %6555 = select i1 %2245, float 0.000000e+00, float %6547
  %6556 = select i1 %2245, float 0.000000e+00, float %6546
  %6557 = fmul fast float %6551, %5783
  %6558 = fmul fast float %6552, %5785
  %6559 = fmul fast float %6553, %5787
  %6560 = fadd fast float %6557, %6554
  %6561 = fadd fast float %6558, %6555
  %6562 = fadd fast float %6556, %6559
  %6563 = fmul fast float %5120, %80
  %6564 = fmul fast float %5121, %81
  %6565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %52, float %6563, float %6564, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6566 = extractvalue %dx.types.ResRet.f32 %6565, 0
  %6567 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %6563, float %6564, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6568 = extractvalue %dx.types.ResRet.f32 %6567, 0
  %6569 = extractvalue %dx.types.ResRet.f32 %6567, 1
  %6570 = extractvalue %dx.types.ResRet.f32 %6567, 2
  %6571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6572 = extractvalue %dx.types.CBufRet.f32 %6571, 1
  %6573 = fmul fast float %6572, %6568
  %6574 = fmul fast float %6572, %6569
  %6575 = fmul fast float %6572, %6570
  %6576 = fmul fast float %6566, %6545
  %6577 = call float @dx.op.dot3.f32(i32 55, float %6566, float %6566, float %6566, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6578 = call float @dx.op.dot3.f32(i32 55, float %6573, float %6574, float %6575, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6579 = select i1 %2245, float %6577, float %6566
  %6580 = select i1 %2245, float 1.000000e+00, float %6566
  %6581 = select i1 %2245, float %6578, float %6573
  %6582 = select i1 %2245, float 0.000000e+00, float %6574
  %6583 = select i1 %2245, float 0.000000e+00, float %6575
  %6584 = fmul fast float %6579, %6560
  %6585 = fmul fast float %6579, %6561
  %6586 = fmul fast float %6580, %6562
  %6587 = fadd fast float %6584, %6581
  %6588 = fadd fast float %6585, %6582
  %6589 = fadd fast float %6583, %6586
  br label %6590

; <label>:6590                                    ; preds = %6542, %5788
  %6591 = phi float [ %5790, %5788 ], [ %6564, %6542 ]
  %6592 = phi float [ %5789, %5788 ], [ %6563, %6542 ]
  %6593 = phi float [ %5783, %5788 ], [ %6587, %6542 ]
  %6594 = phi float [ %5785, %5788 ], [ %6588, %6542 ]
  %6595 = phi float [ %5787, %5788 ], [ %6589, %6542 ]
  %6596 = phi float [ 1.000000e+00, %5788 ], [ %6576, %6542 ]
  %6597 = call float @dx.op.unary.f32(i32 7, float %6592)  ; Saturate(value)
  %6598 = call float @dx.op.unary.f32(i32 7, float %6591)  ; Saturate(value)
  %6599 = select i1 %97, i32 0, i32 2
  %6600 = or i32 %6599, 1
  %6601 = uitofp i32 %6600 to float
  %6602 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %52, float %6597, float %6598, float %6601, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6603 = extractvalue %dx.types.ResRet.f32 %6602, 0
  %6604 = extractvalue %dx.types.ResRet.f32 %6602, 1
  %6605 = extractvalue %dx.types.ResRet.f32 %6602, 2
  %6606 = extractvalue %dx.types.ResRet.f32 %6602, 3
  %6607 = add nuw nsw i32 %6599, 2
  %6608 = uitofp i32 %6607 to float
  %6609 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %52, float %6597, float %6598, float %6608, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6610 = extractvalue %dx.types.ResRet.f32 %6609, 0
  %6611 = extractvalue %dx.types.ResRet.f32 %6609, 1
  %6612 = extractvalue %dx.types.ResRet.f32 %6609, 2
  %6613 = extractvalue %dx.types.ResRet.f32 %6609, 3
  %6614 = call float @dx.op.binary.f32(i32 35, float %6604, float %6605)  ; FMax(a,b)
  %6615 = call float @dx.op.binary.f32(i32 35, float %6603, float %6614)  ; FMax(a,b)
  %6616 = call float @dx.op.binary.f32(i32 35, float %6615, float %6606)  ; FMax(a,b)
  %6617 = call float @dx.op.binary.f32(i32 36, float %6611, float %6612)  ; FMin(a,b)
  %6618 = call float @dx.op.binary.f32(i32 36, float %6610, float %6617)  ; FMin(a,b)
  %6619 = call float @dx.op.binary.f32(i32 36, float %6618, float %6613)  ; FMin(a,b)
  %6620 = fmul fast float %6616, 2.550000e+02
  %6621 = fadd fast float %6620, 0x3F70101020000000
  %6622 = fptoui float %6621 to i32
  %6623 = fmul fast float %6619, 2.550000e+02
  %6624 = fadd fast float %6623, 0x3F70101020000000
  %6625 = fptoui float %6624 to i32
  %6626 = icmp ult i32 %6622, %6625
  br i1 %6626, label %6627, label %6679

; <label>:6627                                    ; preds = %6590
  %6628 = fcmp fast ogt float %71, 9.843750e-01
  %6629 = fadd fast float %72, -4.000000e+00
  %6630 = select i1 %6628, float -4.000000e+00, float %6629
  %6631 = call float @dx.op.binary.f32(i32 35, float %6630, float 0.000000e+00)  ; FMax(a,b)
  %6632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6633 = extractvalue %dx.types.CBufRet.f32 %6632, 0
  %6634 = fadd fast float %6633, %6631
  %6635 = extractvalue %dx.types.CBufRet.f32 %6632, 2
  %6636 = fmul fast float %6634, %6635
  %6637 = call float @dx.op.unary.f32(i32 23, float %6636)  ; Log(value)
  %6638 = extractvalue %dx.types.CBufRet.f32 %6632, 3
  %6639 = fmul fast float %6638, %6637
  %6640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6641 = extractvalue %dx.types.CBufRet.f32 %6640, 2
  %6642 = fmul fast float %6639, %6641
  %6643 = call float @dx.op.unary.f32(i32 7, float %6642)  ; Saturate(value)
  %6644 = uitofp i32 %6622 to float
  %6645 = uitofp i32 %6625 to float
  %6646 = fadd fast float %6644, 5.000000e-01
  %6647 = fadd fast float %6645, 5.000000e-01
  %6648 = fmul fast float %6641, %6646
  %6649 = fmul fast float %6641, %6647
  %6650 = fadd fast float %6648, 0x3F0FFB4800000000
  %6651 = fadd fast float %6649, 0xBF0FFB4800000000
  %6652 = call float @dx.op.binary.f32(i32 35, float %6643, float %6650)  ; FMax(a,b)
  %6653 = call float @dx.op.binary.f32(i32 36, float %6652, float %6651)  ; FMin(a,b)
  %6654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6655 = extractvalue %dx.types.CBufRet.f32 %6654, 1
  %6656 = extractvalue %dx.types.CBufRet.f32 %6654, 2
  %6657 = extractvalue %dx.types.CBufRet.f32 %6654, 0
  %6658 = select i1 %97, float 0.000000e+00, float %6657
  %6659 = fmul fast float %6655, %6653
  %6660 = fadd fast float %6658, %6659
  %6661 = fadd fast float %6658, %6656
  %6662 = fsub fast float %6655, %6656
  %6663 = fadd fast float %6662, %6658
  %6664 = call float @dx.op.binary.f32(i32 35, float %6660, float %6661)  ; FMax(a,b)
  %6665 = call float @dx.op.binary.f32(i32 36, float %6664, float %6663)  ; FMin(a,b)
  %6666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %6597, float %6598, float %6665, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6667 = extractvalue %dx.types.ResRet.f32 %6666, 0
  %6668 = extractvalue %dx.types.ResRet.f32 %6666, 1
  %6669 = extractvalue %dx.types.ResRet.f32 %6666, 2
  %6670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %50, float %6597, float %6598, float %6665, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6671 = extractvalue %dx.types.ResRet.f32 %6670, 0
  %6672 = extractvalue %dx.types.ResRet.f32 %6670, 1
  %6673 = extractvalue %dx.types.ResRet.f32 %6670, 2
  %6674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6675 = extractvalue %dx.types.CBufRet.f32 %6674, 1
  %6676 = fmul fast float %6675, %6671
  %6677 = fmul fast float %6675, %6672
  %6678 = fmul fast float %6675, %6673
  br label %6679

; <label>:6679                                    ; preds = %6627, %6590
  %6680 = phi float [ %6667, %6627 ], [ 1.000000e+00, %6590 ]
  %6681 = phi float [ %6668, %6627 ], [ 1.000000e+00, %6590 ]
  %6682 = phi float [ %6669, %6627 ], [ 1.000000e+00, %6590 ]
  %6683 = phi float [ %6676, %6627 ], [ 0.000000e+00, %6590 ]
  %6684 = phi float [ %6677, %6627 ], [ 0.000000e+00, %6590 ]
  %6685 = phi float [ %6678, %6627 ], [ 0.000000e+00, %6590 ]
  %6686 = fmul fast float %6680, %6596
  %6687 = call float @dx.op.dot3.f32(i32 55, float %6680, float %6681, float %6682, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6688 = call float @dx.op.dot3.f32(i32 55, float %6683, float %6684, float %6685, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6689 = select i1 %2245, float %6687, float %6680
  %6690 = select i1 %2245, float %6687, float %6681
  %6691 = select i1 %2245, float 1.000000e+00, float %6682
  %6692 = select i1 %2245, float %6688, float %6683
  %6693 = select i1 %2245, float 0.000000e+00, float %6684
  %6694 = select i1 %2245, float 0.000000e+00, float %6685
  %6695 = fmul fast float %6689, %6593
  %6696 = fmul fast float %6690, %6594
  %6697 = fmul fast float %6691, %6595
  %6698 = fadd fast float %6695, %6692
  %6699 = fadd fast float %6696, %6693
  %6700 = fadd fast float %6694, %6697
  %6701 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6702 = extractvalue %dx.types.CBufRet.i32 %6701, 3
  %6703 = and i32 %6702, 3
  %6704 = icmp ne i32 %6703, 0
  %6705 = and i32 %6702, 4
  %6706 = icmp ne i32 %6705, 0
  %6707 = and i1 %6704, %6706
  %6708 = and i1 %2245, %6707
  br i1 %6708, label %6709, label %6715

; <label>:6709                                    ; preds = %6679
  %6710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6711 = extractvalue %dx.types.CBufRet.f32 %6710, 1
  %6712 = fadd fast float %6686, -1.000000e+00
  %6713 = fmul fast float %6711, %6712
  %6714 = fadd fast float %6713, 1.000000e+00
  br label %6715

; <label>:6715                                    ; preds = %6709, %6679
  %6716 = phi float [ %6714, %6709 ], [ %6686, %6679 ]
  %6717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6718 = extractvalue %dx.types.CBufRet.f32 %6717, 0
  br i1 %2245, label %6719, label %6733

; <label>:6719                                    ; preds = %6715
  %6720 = fadd fast float %6698, %6699
  %6721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6722 = extractvalue %dx.types.CBufRet.f32 %6721, 3
  %6723 = extractvalue %dx.types.CBufRet.f32 %5771, 1
  %6724 = fsub fast float %5777, %5765
  %6725 = fadd fast float %6724, %5778
  %6726 = fsub fast float %6725, %6723
  %6727 = extractvalue %dx.types.CBufRet.f32 %5771, 2
  %6728 = fmul fast float %6726, %6727
  %6729 = call float @dx.op.unary.f32(i32 7, float %6728)  ; Saturate(value)
  %6730 = fsub fast float %6729, %6722
  %6731 = fmul fast float %6730, %6716
  %6732 = fadd fast float %6731, %6722
  br label %6736

; <label>:6733                                    ; preds = %6715
  %6734 = fmul fast float %6718, %6699
  %6735 = fmul fast float %6718, %6700
  br label %6736

; <label>:6736                                    ; preds = %6733, %6719
  %6737 = phi float [ %6720, %6719 ], [ %6698, %6733 ]
  %6738 = phi float [ %6732, %6719 ], [ %6734, %6733 ]
  %6739 = phi float [ 1.000000e+00, %6719 ], [ %6735, %6733 ]
  %6740 = fmul float %6718, %6737
  %6741 = fadd fast float %1610, 0x3FE3C6EF40000000
  %6742 = call float @dx.op.unary.f32(i32 22, float %6741)  ; Frc(value)
  %6743 = call float @dx.op.unary.f32(i32 23, float %6740)  ; Log(value)
  %6744 = fadd fast float %6743, -7.000000e+00
  %6745 = call float @dx.op.unary.f32(i32 21, float %6744)  ; Exp(value)
  %6746 = fmul fast float %6742, 2.000000e+00
  %6747 = fadd fast float %6746, -1.000000e+00
  %6748 = fmul fast float %6745, %6747
  %6749 = fcmp fast ogt float %6740, 0.000000e+00
  %6750 = select i1 %6749, float %6748, float 0.000000e+00
  %6751 = fadd fast float %6750, %6740
  %6752 = fadd fast float %1610, 0x3FF3C6EF40000000
  %6753 = call float @dx.op.unary.f32(i32 22, float %6752)  ; Frc(value)
  %6754 = call float @dx.op.unary.f32(i32 23, float %6738)  ; Log(value)
  %6755 = fadd fast float %6754, -7.000000e+00
  %6756 = call float @dx.op.unary.f32(i32 21, float %6755)  ; Exp(value)
  %6757 = fmul fast float %6753, 2.000000e+00
  %6758 = fadd fast float %6757, -1.000000e+00
  %6759 = fmul fast float %6756, %6758
  %6760 = fcmp fast ogt float %6738, 0.000000e+00
  %6761 = select i1 %6760, float %6759, float 0.000000e+00
  %6762 = fadd fast float %6761, %6738
  %6763 = fadd fast float %1610, 0x3FFDAA66E0000000
  %6764 = call float @dx.op.unary.f32(i32 22, float %6763)  ; Frc(value)
  %6765 = call float @dx.op.unary.f32(i32 23, float %6739)  ; Log(value)
  %6766 = fadd fast float %6765, -6.000000e+00
  %6767 = call float @dx.op.unary.f32(i32 21, float %6766)  ; Exp(value)
  %6768 = fmul fast float %6764, 2.000000e+00
  %6769 = fadd fast float %6768, -1.000000e+00
  %6770 = fmul fast float %6767, %6769
  %6771 = fcmp fast ogt float %6739, 0.000000e+00
  %6772 = select i1 %6771, float %6770, float 0.000000e+00
  %6773 = fadd fast float %6772, %6739
  %6774 = call float @dx.op.binary.f32(i32 36, float %6751, float 3.225500e+04)  ; FMin(a,b)
  %6775 = call float @dx.op.binary.f32(i32 36, float %6762, float 3.225500e+04)  ; FMin(a,b)
  %6776 = call float @dx.op.binary.f32(i32 36, float %6773, float 3.225500e+04)  ; FMin(a,b)
  %6777 = fmul fast float %6774, %5761
  %6778 = fmul fast float %6775, %5761
  %6779 = fmul fast float %6776, %5761
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6777)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6778)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6779)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %5761)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

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
!dx.viewIdState = !{!73}
!dx.entryPoints = !{!74}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !58, !61, !65}
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
!58 = !{!59}
!59 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i1 false, i1 false, i1 false, !60}
!60 = !{i32 1, i32 4}
!61 = !{!62, !63, !64}
!62 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!63 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!64 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!65 = !{!66, !67, !68, !69, !70, !71, !72}
!66 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!67 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!68 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!69 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!70 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!71 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!72 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!73 = !{[20 x i32] [i32 18, i32 4, i32 15, i32 15, i32 7, i32 15, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0]}
!74 = !{void ()* @ps_main, !"ps_main", !75, !4, !94}
!75 = !{!76, !92, null}
!76 = !{!77, !80, !82, !84, !86, !87, !88, !89, !91}
!77 = !{i32 0, !"SV_Position", i8 9, i8 3, !78, i8 4, i32 1, i8 4, i32 0, i8 0, !79}
!78 = !{i32 0}
!79 = !{i32 3, i32 15}
!80 = !{i32 1, !"NORMAL", i8 9, i8 0, !78, i8 2, i32 1, i8 3, i32 1, i8 0, !81}
!81 = !{i32 3, i32 7}
!82 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !78, i8 2, i32 1, i8 2, i32 2, i8 0, !83}
!83 = !{i32 3, i32 3}
!84 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !78, i8 2, i32 1, i8 1, i32 1, i8 3, !85}
!85 = !{i32 3, i32 1}
!86 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !78, i8 1, i32 1, i8 1, i32 3, i8 0, !85}
!87 = !{i32 5, !"SV_IsFrontFace", i8 5, i8 13, !78, i8 1, i32 1, i8 1, i32 3, i8 1, !85}
!88 = !{i32 6, !"SV_ClipDistance", i8 9, i8 6, !78, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!89 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !90, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!90 = !{i32 1}
!91 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !78, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!92 = !{!93}
!93 = !{i32 0, !"SV_Target", i8 9, i8 16, !78, i8 0, i32 1, i8 4, i32 0, i8 0, !79}
!94 = !{i32 0, i64 24}
!95 = !{!96, !96, i64 0}
!96 = !{!"float", !97, i64 0}
!97 = !{!"omnipotent char", !98, i64 0}
!98 = !{!"Simple C/C++ TBAA"}
!99 = !{!100, !102, !103}
!100 = distinct !{!100, !101, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!101 = distinct !{!101, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!102 = distinct !{!102, !101, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!103 = distinct !{!103, !101, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!104 = !{!105, !107, !108, !109}
!105 = distinct !{!105, !106, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoam"}
!106 = distinct !{!106, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z"}
!107 = distinct !{!107, !106, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamNormalOffsets"}
!108 = distinct !{!108, !106, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamOcclusion"}
!109 = distinct !{!109, !106, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamGloss"}
!110 = distinct !{!110, !111}
!111 = !{!"llvm.loop.unroll.disable"}
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
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = !{!126, !126, i64 0}
!126 = !{!"int", !97, i64 0}
!127 = !{!128, !130, !132, !134}
!128 = distinct !{!128, !129, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!129 = distinct !{!129, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!130 = distinct !{!130, !131, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!131 = distinct !{!131, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!132 = distinct !{!132, !133, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!133 = distinct !{!133, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!134 = distinct !{!134, !135, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!135 = distinct !{!135, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
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
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = !{!148, !150, !152, !153, !155, !156, !157, !159, !160, !161}
!148 = distinct !{!148, !149, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!149 = distinct !{!149, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!150 = distinct !{!150, !151, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!151 = distinct !{!151, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!152 = distinct !{!152, !151, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!153 = distinct !{!153, !154, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!154 = distinct !{!154, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!155 = distinct !{!155, !154, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!156 = distinct !{!156, !154, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!157 = distinct !{!157, !158, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!158 = distinct !{!158, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!159 = distinct !{!159, !158, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!160 = distinct !{!160, !158, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!161 = distinct !{!161, !162, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!162 = distinct !{!162, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!163 = !{!164}
!164 = distinct !{!164, !165, !"\01?sort@@YAXAIAM00@Z: %c"}
!165 = distinct !{!165, !"\01?sort@@YAXAIAM00@Z"}
!166 = !{!167, !168, !148, !150, !152, !153, !155, !156, !157, !159, !160, !161}
!167 = distinct !{!167, !165, !"\01?sort@@YAXAIAM00@Z: %a"}
!168 = distinct !{!168, !165, !"\01?sort@@YAXAIAM00@Z: %b"}
!169 = !{!168}
!170 = !{!167, !164, !148, !150, !152, !153, !155, !156, !157, !159, !160, !161}
!171 = !{!167}
!172 = !{!168, !164, !148, !150, !152, !153, !155, !156, !157, !159, !160, !161}
!173 = !{!174}
!174 = distinct !{!174, !175, !"\01?sort@@YAXAIAM00@Z: %c"}
!175 = distinct !{!175, !"\01?sort@@YAXAIAM00@Z"}
!176 = !{!177, !178, !148, !150, !152, !153, !155, !156, !157, !159, !160, !161}
!177 = distinct !{!177, !175, !"\01?sort@@YAXAIAM00@Z: %a"}
!178 = distinct !{!178, !175, !"\01?sort@@YAXAIAM00@Z: %b"}
!179 = !{!178}
!180 = !{!177, !174, !148, !150, !152, !153, !155, !156, !157, !159, !160, !161}
!181 = !{!177}
!182 = !{!178, !174, !148, !150, !152, !153, !155, !156, !157, !159, !160, !161}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 2}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 1}
!186 = distinct !{!186, !"dx.controlflow.hints", i32 1}
!187 = distinct !{!187, !"dx.controlflow.hints", i32 1}
!188 = distinct !{!188, !"dx.controlflow.hints", i32 1}
!189 = distinct !{!189, !"dx.controlflow.hints", i32 1}

