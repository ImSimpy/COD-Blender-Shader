;
; Note: shader requires additional functionality:
;       Wave level operations
;
;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; no parameters
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; no parameters
; shader hash: bf611361ece2f00c18ca1482671f2a74
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
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
;   [16 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [164 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [80 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   sampler      NA          NA      S0             s0     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s3     1
;                                   sampler      NA          NA      S3             s4     1
;                                   sampler      NA          NA      S4             s5     1
;                                   texture     f32          2d      T0            t11     1
;                                   texture    byte         r/o      T1            t22     1
;                                   texture     f32          2d      T2            t27     1
;                                   texture    byte         r/o      T3            t44     1
;                                   texture     f32          3d      T4            t10     1
;                                   texture     f32          2d      T5            t33     1
;                                   texture     f32          3d      T6            t38     1
;                                   texture     f32          2d      T7            t35     1
;                                   texture     f32          2d      T8            t41     1
;                                   texture     f32          3d      T9            t16     1
;                                   texture     f32          2d     T10            t24     1
;                                   texture     f32          2d     T11            t25     1
;                                   texture     f32          2d     T12            t36     1
;                                   texture     f32          2d     T13            t37     1
;                                   texture  struct         r/o     T14            t39     1
;                                   texture    byte         r/o     T15            t42     1
;                                   texture     f32          2d     T16             t0     1
;                                   textureunorm_f32     2darray     T17            t34     1
;                                   texture    byte         r/o     T18            t28     1
;                                   texture     f32          2d     T19             t1     1
;                                   texture     f32          2d     T20            t23     1
;                                   texture     f32          2d     T21             t2     1
;                                   texture     f32          2d     T22            t18     1
;                                   texture     f32          3d     T23             t5     1
;                                   texture    byte         r/o     T24            t13     1
;                                   texture  struct         r/o     T25            t14     1
;                                   texture    byte         r/o     T26            t15     1
;                                   texture  struct         r/o     T27            t29     1
;                                       UAV     f32          3d      U0             u0     1
;                                       UAV     f32          3d      U1             u1     1
;                                       UAV     f32          3d      U2             u6     1
;                                       UAV     f32          3d      U3             u8     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<VolumetricBBoxGpu>" = type { %struct.VolumetricBBoxGpu }
%struct.VolumetricBBoxGpu = type { <3 x float>, i32, <3 x float>, float, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.StructuredBuffer<VolumetricVolume>" = type { %struct.VolumetricVolume }
%struct.VolumetricVolume = type { float, float, i32, i32, <3 x float>, float, <3 x float>, float, float, float, float, i32, <3 x float>, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.RWTexture3D<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture3D<vector<float, 2> >" = type { <2 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%PerScatteringConstBuffer_decl = type { %struct.PerScatteringConstBuffer }
%struct.PerScatteringConstBuffer = type { float, i32, i32, i32 }
%struct.SamplerComparisonState = type { i32 }
%struct.SamplerState = type { i32 }

@BLUE_NOISE_SAMPLES.v.1dim = internal constant [384 x float] [float 0x3FE18FE160000000, float 0x3FE2F89540000000, float 0x3FE6E2D4C0000000, float 0x3FC15736E0000000, float 0x3FBA5540C0000000, float 0x3FD3170EC0000000, float 0x3FED0D5120000000, float 0x3FE296A0E0000000, float 0x3FC4826EA0000000, float 0x3FE8282660000000, float 0x3FAFC328C0000000, float 0x3FEC521960000000, float 0x3FE37806C0000000, float 0x3FCA6D0000000000, float 0x3FD7082D00000000, float 0x3FC5E13120000000, float 0x3FD2E650A0000000, float 0x3FEBB39F60000000, float 0x3FDC57B600000000, float 0x3FE7C97180000000, float 0x3FCBD95EA0000000, float 0x3FC9988140000000, float 0x3FEAC46E60000000, float 0x3FEAD953E0000000, float 0x3FC843F4E0000000, float 0x3FE1FA7840000000, float 0x3FDEF62560000000, float 0x3FD8DD05A0000000, float 0x3FB5C98040000000, float 0x3FE40B4F00000000, float 0x3FEC4AEE80000000, float 0x3FEB172F40000000, float 0x3FE0065C00000000, float 0x3FEA254D00000000, float 0x3FD8E6DF40000000, float 0x3FE24C96C0000000, float 0x3FDE978BA0000000, float 0x3FBA8F1180000000, float 0x3FB121A6A0000000, float 0x3FE3626000000000, float 0x3FDE58B860000000, float 0x3FB2DED7A0000000, float 0x3FD4F97900000000, float 0x3FD7645460000000, float 0x3FCE571520000000, float 0x3FE7E85200000000, float 0x3FEAFC6460000000, float 0x3FCC666220000000, float 0x3FEC4FF540000000, float 0x3FE7C8B540000000, float 0x3FEBF4AC20000000, float 0x3FD0C66640000000, float 0x3FE2F95320000000, float 0x3F915FFF00000000, float 0x3FE352C600000000, float 0x3FEBC2D0A0000000, float 0x3FE3664520000000, float 0x3FE4504660000000, float 0x3FE1D81AA0000000, float 0x3FD7A97CA0000000, float 0x3F86A53280000000, float 0x3FC1343780000000, float 0x3FE473A1A0000000, float 0x3FEC7EAE80000000, float 0x3FCE83F160000000, float 0x3FC3B66640000000, float 0x3FABB6C6C0000000, float 0x3FEC127C60000000, float 0x3FC3E70E00000000, float 0x3FDC159A60000000, float 0x3FD7AB8720000000, float 0x3FE14710E0000000, float 0x3FDE623A40000000, float 0x3FEB8A45E0000000, float 0x3FEC3C0140000000, float 0x3FD1597DE0000000, float 0x3FEAF0F9A0000000, float 0x3FE1C52360000000, float 0x3FEA622660000000, float 0x3FD760A060000000, float 0x3FEC561B20000000, float 0x3FBAF00320000000, float 0x3FE4643220000000, float 0x3FE72199C0000000, float 0x3FE2E54080000000, float 0x3FD56206C0000000, float 0x3FE8890420000000, float 0x3FEFBE55E0000000, float 0x3FD25DC400000000, float 0x3FD8BF4640000000, float 0x3FE956BCC0000000, float 0x3FE3A5DFE0000000, float 0x3FE5928420000000, float 0x3FE6754AA0000000, float 0x3FBBCDB900000000, float 0x3FE4509C40000000, float 0x3FE14E9AE0000000, float 0x3FEEE61140000000, float 0x3FD3ADB960000000, float 0x3FD3C9D440000000, float 0x3FDF30AF40000000, float 0x3FE885B760000000, float 0x3FEFC30220000000, float 0x3FB1A902E0000000, float 0x3FED532A00000000, float 0x3FBA846540000000, float 0x3FDAC4BEC0000000, float 0x3FB347E280000000, float 0x3FC77620A0000000, float 0x3FBBEF41C0000000, float 0x3FB2C764E0000000, float 0x3FC199A160000000, float 0x3FE44F4480000000, float 0x3FD01FE1E0000000, float 0x3FEC5559A0000000, float 0x3FA2E2FA40000000, float 0x3FD5AAA3C0000000, float 0x3FEDC06380000000, float 0x3FE393B900000000, float 0x3FDA23D800000000, float 0x3FC0BD6E60000000, float 0x3FD6E3CF60000000, float 0x3FE39D7140000000, float 0x3FE07677C0000000, float 0x3FBE721700000000, float 0x3FEA99EBC0000000, float 0x3FC9C1C7E0000000, float 0x3FB4545D20000000, float 0x3FE927BDC0000000, float 0x3FD2AF0880000000, float 0x3FEDDAA620000000, float 0x3FD4C3A220000000, float 0x3FE764E8C0000000, float 0x3FB5474C60000000, float 0x3FBD28BE60000000, float 0x3FDCAE7120000000, float 0x3FE65C7EC0000000, float 0x3FDFAE6DC0000000, float 0x3FEFF2D3E0000000, float 0x3FED44B380000000, float 0x3FE6676480000000, float 0x3FE59F4A80000000, float 0x3FE61D1240000000, float 0x3F80FB0B40000000, float 0x3FD57E1500000000, float 0x3FEC5C93C0000000, float 0x3FA826DF20000000, float 0x3FE939D3A0000000, float 0x3FDB702260000000, float 0x3FD0309DC0000000, float 0x3FC05BD4E0000000, float 0x3F647F5360000000, float 0x3FDFF14000000000, float 0x3FD6B472E0000000, float 0x3FC67E8AE0000000, float 0x3FD7E52D80000000, float 0x3FD9A20420000000, float 0x3FD873C2E0000000, float 0x3FEED079E0000000, float 0x3FD9280DA0000000, float 0x3FE0E70960000000, float 0x3FD7AD5C60000000, float 0x3FADC1E8A0000000, float 0x3FE9BAFE00000000, float 0x3FD6EB3FA0000000, float 0x3FE8B0FE80000000, float 0x3FEC006EA0000000, float 0x3FE7886EC0000000, float 0x3FD4E113A0000000, float 0x3FE5EB06E0000000, float 0x3FE7AE8F00000000, float 0x3FE594A1A0000000, float 0x3FE8BE5C40000000, float 0x3FDBBB7820000000, float 0x3FDC00F660000000, float 0x3FE3BEAF60000000, float 0x3FECE40A40000000, float 0x3FE476BE80000000, float 0x3FCE715760000000, float 0x3F9A66CEA0000000, float 0x3FE1E87120000000, float 0x3FD6EFB1C0000000, float 0x3FCE53C0A0000000, float 0x3FEEC44720000000, float 0x3FDE4FCA40000000, float 0x3FE71C3E60000000, float 0x3FEF2C7C20000000, float 0x3FE166A120000000, float 0x3FEE257F40000000, float 0x3FE9B56F40000000, float 0x3FECD0D600000000, float 0x3FA0FC3EC0000000, float 0x3FEC4C3DC0000000, float 0x3FD150EC60000000, float 0x3FE71F4F60000000, float 0x3FB622B360000000, float 0x3FDC8CDE60000000, float 0x3FD23942A0000000, float 0x3FE1F1FAA0000000, float 0x3FED974C60000000, float 0x3FB46602A0000000, float 0x3FE6E2E620000000, float 0x3FEFD8B280000000, float 0x3FDD9BF5C0000000, float 0x3FA674A1C0000000, float 0x3FE9B56E40000000, float 0x3FEEE67800000000, float 0x3FCDA72D80000000, float 0x3FD469FA40000000, float 0x3FDBC871E0000000, float 0x3FDD20E3E0000000, float 0x3FEF2C1DE0000000, float 0x3FDF7B00E0000000, float 0x3FD6281F00000000, float 0x3FC66B3000000000, float 0x3FEDE19700000000, float 0x3FDB2072A0000000, float 0x3FE0D7DF20000000, float 0x3FC3B1B640000000, float 0x3FDA9DE220000000, float 0x3FD04AFB60000000, float 0x3FE78D6920000000, float 0x3FEF438F00000000, float 0x3FD0DACEC0000000, float 0x3FED6152E0000000, float 0x3FE9CF90A0000000, float 0x3FD0689260000000, float 0x3FDB295100000000, float 0x3FE43A8B20000000, float 0x3FDB335EA0000000, float 0x3FE0E1EA60000000, float 0x3FEBAB00E0000000, float 0x3FDA8B1D60000000, float 0x3FB10CBD20000000, float 0x3FE78F4620000000, float 0x3FE227D0E0000000, float 0x3FEC0E76A0000000, float 0x3FEEF3F8C0000000, float 0x3FE5ADCD40000000, float 0x3FE386C040000000, float 0x3FE2FA86E0000000, float 0x3FCE803BA0000000, float 0x3FE26AEBE0000000, float 0x3FE58556A0000000, float 0x3FEB878100000000, float 0x3FEC77D980000000, float 0x3FC0793440000000, float 0x3FD134B520000000, float 0x3FC9DB4080000000, float 0x3FE83B8480000000, float 0x3FE4ECC2E0000000, float 0x3FCEA8E9A0000000, float 0x3FD60CA840000000, float 0x3FECE35B20000000, float 0x3FE746B7A0000000, float 0x3FCE074860000000, float 0x3FE81DE580000000, float 0x3FC2584AA0000000, float 0x3FD5C82E00000000, float 0x3FE0CECA40000000, float 0x3FE26646C0000000, float 0x3FC0854540000000, float 0x3FE77AA920000000, float 0x3FE0120580000000, float 0x3FEF5EE280000000, float 0x3FB39D7D80000000, float 0x3FC50B8D20000000, float 0x3FDBFF8BC0000000, float 0x3FB7077B80000000, float 0x3FCF722760000000, float 0x3FD274BA20000000, float 0x3FE7EC88A0000000, float 0x3FD8207A00000000, float 0x3FDC2B1A00000000, float 0x3FEAE81F60000000, float 0x3FD84A9200000000, float 0x3FEB3D1480000000, float 0x3F74CDAB80000000, float 0x3FE2903380000000, float 0x3FE3D88D60000000, float 0x3FE5557C00000000, float 0x3FE1B02540000000, float 0x3FCAD53680000000, float 0x3FC97E4340000000, float 0x3FE4A0C720000000, float 0x3FDE649800000000, float 0x3FE8A886A0000000, float 0x3FE77F7260000000, float 0x3FEB51B700000000, float 0x3FC2E2DE00000000, float 0x3F5888D4C0000000, float 0x3FD41984E0000000, float 0x3FD20DB1A0000000, float 0x3FB551A020000000, float 0x3FDB131880000000, float 0x3FEDC9D0C0000000, float 0x3FC7DD4AA0000000, float 0x3FD5F5F120000000, float 0x3F7F518660000000, float 0x3FEBF19260000000, float 0x3F799ADA40000000, float 0x3FDC20E100000000, float 0x3FE0E7DB40000000, float 0x3FC0BB4EE0000000, float 0x3FDECDAEE0000000, float 0x3FEA638F20000000, float 0x3FE70F2040000000, float 0x3FCA53C540000000, float 0x3FCCF95320000000, float 0x3FB324F500000000, float 0x3FE354CC40000000, float 0x3FB2C45460000000, float 0x3FE072AB00000000, float 0x3FE6B81580000000, float 0x3FAD0D1160000000, float 0x3FECCB0BE0000000, float 0x3FEB935140000000, float 0x3FD2A50CE0000000, float 0x3FE5A24D40000000, float 0x3FCB409DA0000000, float 0x3FEAFD5600000000, float 0x3FE2CA5C00000000, float 0x3FEEB0C0A0000000, float 0x3FE8201F60000000, float 0x3FAA420B00000000, float 0x3FD2EB8020000000, float 0x3FE7E3DFA0000000, float 0x3FE7E2A760000000, float 0x3FE8746C80000000, float 0x3FE31217A0000000, float 0x3FEB946480000000, float 0x3FE7B3EDC0000000, float 0x3FB74FEFA0000000, float 0x3FEE07E160000000, float 0x3FC272BDC0000000, float 0x3FDE3B38A0000000, float 0x3FE687E8E0000000, float 0x3FDD8CC5E0000000, float 0x3FE5BD32A0000000, float 0x3FC63803C0000000, float 0x3FED12DE60000000, float 0x3F99B048C0000000, float 0x3FEC98B3E0000000, float 0x3FB9C91A60000000, float 0x3FE8D6E040000000, float 0x3FD39228C0000000, float 0x3FE404F040000000, float 0x3FD00082E0000000, float 0x3FE9099100000000, float 0x3FE1A444E0000000, float 0x3FDDFDC900000000, float 0x3FD649EA00000000, float 0x3FE7F988C0000000, float 0x3FEEB362C0000000, float 0x3FBE7B5FE0000000, float 0x3FC6A55F60000000, float 0x3FE07F6B40000000, float 0x3FE0AFB880000000, float 0x3FDE87A600000000, float 0x3FEBF9DCC0000000, float 0x3FD039B760000000, float 0x3F73CF67C0000000, float 0x3FE33EED40000000, float 0x3FD43683E0000000, float 0x3FD1531020000000, float 0x3FE1D32C60000000, float 0x3FE16249C0000000, float 0x3FBCE097A0000000, float 0x3FDE6FED80000000, float 0x3FE47A3A60000000, float 0x3FE6D84580000000, float 0x3FEA3764C0000000, float 0x3FE9B3C000000000, float 0x3FCD0FDF40000000, float 0x3FE2C6AC00000000, float 0x3FCBCACA20000000, float 0x3FE02FE880000000, float 0x3FC52C7860000000, float 0x3FD5258C40000000, float 0x3FA7811BC0000000, float 0x3FAAEB5B20000000, float 0x3FE369AEC0000000, float 0x3FB38C3220000000, float 0x3FEF14BEE0000000], align 4
@"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim" = addrspace(3) global [32 x float] undef, align 4

define void @cs_volumetric_forwardplus_scatter_local() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = alloca [4 x i32], align 4
  %41 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %42 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %43 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %44 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %45 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %46 = alloca [12 x float], align 4
  %47 = alloca [12 x float], align 4
  %48 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.i32 %48, 3
  %50 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.i32 %50, 1
  %52 = mul i32 %51, %49
  %53 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.i32 %53, 1
  %55 = mul i32 %52, %54
  %56 = add i32 %55, %44
  %57 = shl i32 %56, 2
  %58 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %57, i32 undef)  ; BufferLoad(srv,index,wot)
  %59 = extractvalue %dx.types.ResRet.i32 %58, 0
  %60 = and i32 %59, 255
  %61 = lshr i32 %59, 8
  %62 = and i32 %61, 255
  %63 = lshr i32 %59, 16
  %64 = and i32 %63, 255
  %65 = shl nuw nsw i32 %60, 2
  %66 = shl nuw nsw i32 %62, 2
  %67 = shl nuw nsw i32 %64, 2
  %68 = add i32 %65, %41
  %69 = add i32 %66, %42
  %70 = add i32 %67, %43
  %71 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.i32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.i32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.i32 %71, 2
  %75 = icmp uge i32 %68, %72
  %76 = icmp uge i32 %69, %73
  %77 = icmp uge i32 %70, %74
  %78 = or i1 %75, %76
  %79 = or i1 %77, %78
  %80 = xor i1 %79, true
  %81 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.i32 %81, 3
  %83 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %69, i32 %82)  ; UMad(a,b,c)
  %84 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %68, i32 %83)  ; UMad(a,b,c)
  %85 = mul i32 %84, -63
  %86 = lshr i32 %85, 17
  %87 = xor i32 %86, %85
  %88 = mul i32 %87, -511
  %89 = mul i32 %87, -8176
  %90 = xor i32 %88, %89
  %91 = mul i32 %90, -7
  %92 = mul i32 %90, -7168
  %93 = xor i32 %91, %92
  %94 = lshr i32 %93, 15
  %95 = xor i32 %94, %91
  %96 = and i32 %95, 127
  %97 = mul i32 %96, 3
  %98 = add i32 0, %97
  %99 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %98
  %100 = load float, float* %99, align 4
  %101 = mul i32 %96, 3
  %102 = add i32 1, %101
  %103 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %102
  %104 = load float, float* %103, align 4
  %105 = mul i32 %96, 3
  %106 = add i32 2, %105
  %107 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %106
  %108 = load float, float* %107, align 4
  %109 = uitofp i32 %82 to float
  %110 = fmul fast float %109, 0x3FEA36A940000000
  %111 = fmul fast float %109, 0x3FE5793080000000
  %112 = fmul fast float %109, 0x3FE1972580000000
  %113 = fadd fast float %100, %110
  %114 = fadd fast float %104, %111
  %115 = fadd fast float %108, %112
  %116 = call float @dx.op.unary.f32(i32 22, float %113)  ; Frc(value)
  %117 = call float @dx.op.unary.f32(i32 22, float %114)  ; Frc(value)
  %118 = call float @dx.op.unary.f32(i32 22, float %115)  ; Frc(value)
  %119 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %32, i32 0, i32 %68, i32 %69, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = fcmp fast ogt float %120, -1.000000e+00
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %124 = select i1 %121, float %123, float 1.000000e+00
  %125 = fadd fast float %120, 1.000000e+00
  %126 = fmul fast float %124, %125
  %127 = uitofp i32 %68 to float
  %128 = uitofp i32 %69 to float
  %129 = uitofp i32 %70 to float
  %130 = fadd fast float %129, -5.000000e-01
  %131 = fadd fast float %130, %118
  %132 = fadd fast float %127, %116
  %133 = fadd fast float %128, %117
  %134 = fadd fast float %131, 5.000000e-01
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = fmul fast float %136, %132
  %140 = fmul fast float %137, %133
  %141 = fmul fast float %138, %134
  %142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.i32 %142, 0
  %144 = uitofp i32 %143 to float
  %145 = fmul fast float %144, %141
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = fmul fast float %145, %148
  %150 = call float @dx.op.unary.f32(i32 21, float %149)  ; Exp(value)
  %151 = fmul fast float %150, %147
  %152 = fsub fast float 4.000000e+00, %147
  %153 = fadd fast float %152, %151
  %154 = call float @dx.op.binary.f32(i32 36, float %153, float %126)  ; FMin(a,b)
  %155 = fmul fast float %139, 2.000000e+00
  %156 = fmul fast float %140, 2.000000e+00
  %157 = fsub fast float 1.000000e+00, %155
  %158 = fsub fast float 1.000000e+00, %156
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = fmul fast float %160, %157
  %164 = fmul fast float %161, %157
  %165 = fmul fast float %162, %157
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %169 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %170 = fmul fast float %167, %158
  %171 = fmul fast float %168, %158
  %172 = fmul fast float %169, %158
  %173 = fadd fast float %170, %163
  %174 = fadd fast float %171, %164
  %175 = fadd fast float %172, %165
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 1
  %179 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %180 = fadd fast float %173, %177
  %181 = fadd fast float %174, %178
  %182 = fadd fast float %175, %179
  %183 = fmul fast float %180, %154
  %184 = fmul fast float %181, %154
  %185 = fmul fast float %182, %154
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %188 = extractvalue %dx.types.CBufRet.f32 %186, 1
  %189 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %190 = fadd fast float %183, %187
  %191 = fadd fast float %184, %188
  %192 = fadd fast float %185, %189
  %193 = add i32 %70, 1
  %194 = uitofp i32 %193 to float
  %195 = fmul fast float %148, %194
  %196 = call float @dx.op.unary.f32(i32 21, float %195)  ; Exp(value)
  %197 = fmul fast float %148, %129
  %198 = call float @dx.op.unary.f32(i32 21, float %197)  ; Exp(value)
  %199 = fsub fast float %196, %198
  %200 = fmul fast float %147, %199
  %201 = call float @dx.op.dot3.f32(i32 55, float %183, float %184, float %185, float %183, float %184, float %185)  ; Dot3(ax,ay,az,bx,by,bz)
  %202 = call float @dx.op.unary.f32(i32 25, float %201)  ; Rsqrt(value)
  %203 = fmul fast float %202, %183
  %204 = fmul fast float %202, %184
  %205 = fmul fast float %202, %185
  %206 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %207 = icmp ult i32 %206, 32
  br i1 %207, label %208, label %326, !dx.controlflow.hints !56

; <label>:208                                     ; preds = %0
  %209 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %210 = fmul fast float %209, 0x3FE62E4300000000
  %211 = fmul fast float %210, %210
  %212 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %213 = add i32 %206, -1
  %214 = add i32 %206, 7
  %215 = and i32 %214, 4
  %216 = and i32 %213, %212
  %217 = xor i32 %216, %215
  %218 = and i32 %212, -4
  %219 = shl i32 %212, 1
  %220 = and i32 %219, 6
  %221 = lshr i32 177, %220
  %222 = and i32 %221, 3
  %223 = or i32 %222, %218
  %224 = udiv i32 %45, %206
  %225 = shl i32 %224, 2
  %226 = lshr i32 %212, 1
  %227 = and i32 %226, 1
  %228 = or i32 %225, %227
  %229 = lshr i32 %212, 2
  %230 = and i32 %229, 2
  %231 = or i32 %228, %230
  %232 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %210, i32 %217)  ; WaveReadLaneAt(value,lane)
  %233 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %211, i32 %217)  ; WaveReadLaneAt(value,lane)
  %234 = fadd fast float %232, %210
  %235 = fadd fast float %233, %211
  %236 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %234, i32 %223)  ; WaveReadLaneAt(value,lane)
  %237 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %235, i32 %223)  ; WaveReadLaneAt(value,lane)
  %238 = fadd fast float %236, %234
  %239 = fadd fast float %237, %235
  %240 = mul i32 %231, 2
  %241 = add i32 0, %240
  %242 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %241
  store float %238, float addrspace(3)* %242, align 4
  %243 = mul i32 %231, 2
  %244 = add i32 1, %243
  %245 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %244
  store float %239, float addrspace(3)* %245, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %246 = load float, float addrspace(3)* %242, align 4
  %247 = xor i32 %231, 4
  %248 = mul i32 %247, 2
  %249 = add i32 0, %248
  %250 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %249
  %251 = load float, float addrspace(3)* %250, align 4
  %252 = fadd fast float %251, %246
  %253 = fmul fast float %252, 1.250000e-01
  %254 = and i32 %68, 1
  %255 = and i32 %254, %69
  %256 = and i32 %255, %70
  %257 = icmp ne i32 %256, 0
  %258 = and i1 %257, %80
  br i1 %258, label %259, label %270, !dx.controlflow.hints !57

; <label>:259                                     ; preds = %208
  %260 = mul i32 %247, 2
  %261 = add i32 1, %260
  %262 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %261
  %263 = load float, float addrspace(3)* %262, align 4
  %264 = load float, float addrspace(3)* %245, align 4
  %265 = fadd fast float %263, %264
  %266 = fmul fast float %265, 1.250000e-01
  %267 = lshr i32 %68, 1
  %268 = lshr i32 %69, 1
  %269 = lshr i32 %70, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %267, i32 %268, i32 %269, float %253, float %266, float %253, float %253, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %270

; <label>:270                                     ; preds = %259, %208
  br i1 %79, label %272, label %271, !dx.controlflow.hints !58

; <label>:271                                     ; preds = %270
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %68, i32 %69, i32 %70, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %272

; <label>:272                                     ; preds = %271, %270
  %273 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %274 = add i32 %206, -1
  %275 = add i32 %206, 7
  %276 = and i32 %275, 4
  %277 = and i32 %274, %273
  %278 = xor i32 %277, %276
  %279 = and i32 %273, -4
  %280 = shl i32 %273, 1
  %281 = and i32 %280, 6
  %282 = lshr i32 177, %281
  %283 = and i32 %282, 3
  %284 = or i32 %283, %279
  %285 = udiv i32 %45, %206
  %286 = shl i32 %285, 2
  %287 = lshr i32 %273, 1
  %288 = and i32 %287, 1
  %289 = or i32 %286, %288
  %290 = lshr i32 %273, 2
  %291 = and i32 %290, 2
  %292 = or i32 %289, %291
  %293 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %278)  ; WaveReadLaneAt(value,lane)
  %294 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %278)  ; WaveReadLaneAt(value,lane)
  %295 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %293, i32 %284)  ; WaveReadLaneAt(value,lane)
  %296 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %294, i32 %284)  ; WaveReadLaneAt(value,lane)
  %297 = fadd fast float %295, %293
  %298 = fadd fast float %296, %294
  %299 = mul i32 %292, 2
  %300 = add i32 0, %299
  %301 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %300
  store float %297, float addrspace(3)* %301, align 4
  %302 = mul i32 %292, 2
  %303 = add i32 1, %302
  %304 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %303
  store float %298, float addrspace(3)* %304, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %305 = load float, float addrspace(3)* %301, align 4
  %306 = xor i32 %292, 4
  %307 = mul i32 %306, 2
  %308 = add i32 0, %307
  %309 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %308
  %310 = load float, float addrspace(3)* %309, align 4
  %311 = fadd fast float %310, %305
  %312 = fmul fast float %311, 1.250000e-01
  br i1 %258, label %313, label %324, !dx.controlflow.hints !59

; <label>:313                                     ; preds = %272
  %314 = mul i32 %306, 2
  %315 = add i32 1, %314
  %316 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %315
  %317 = load float, float addrspace(3)* %316, align 4
  %318 = load float, float addrspace(3)* %304, align 4
  %319 = fadd fast float %317, %318
  %320 = fmul fast float %319, 1.250000e-01
  %321 = lshr i32 %68, 1
  %322 = lshr i32 %69, 1
  %323 = lshr i32 %70, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %321, i32 %322, i32 %323, float %312, float %320, float %312, float %312, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %324

; <label>:324                                     ; preds = %313, %272
  br i1 %79, label %326, label %325, !dx.controlflow.hints !60

; <label>:325                                     ; preds = %324
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %68, i32 %69, i32 %70, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %326

; <label>:326                                     ; preds = %325, %324, %0
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %329 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %330 = fsub fast float %192, %328
  %331 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %330)  ; FMax(a,b)
  %332 = fmul fast float %331, 0x3FF7154760000000
  %333 = fmul fast float %332, %329
  %334 = call float @dx.op.unary.f32(i32 21, float %333)  ; Exp(value)
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 0
  %337 = extractvalue %dx.types.CBufRet.f32 %335, 1
  %338 = extractvalue %dx.types.CBufRet.f32 %335, 2
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 2
  %341 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %342 = fmul fast float %341, %334
  %343 = fmul fast float %342, %336
  %344 = fmul fast float %342, %337
  %345 = fmul fast float %342, %338
  %346 = fmul fast float %342, %340
  %347 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.i32 %347, 2
  %349 = extractvalue %dx.types.CBufRet.i32 %347, 3
  %350 = call i32 @dx.op.tertiary.i32(i32 49, i32 %62, i32 %348, i32 %60)  ; UMad(a,b,c)
  %351 = call i32 @dx.op.tertiary.i32(i32 49, i32 %64, i32 %349, i32 %350)  ; UMad(a,b,c)
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %351, i32 0)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = fadd fast float %127, 1.000000e+00
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 0
  %357 = extractvalue %dx.types.CBufRet.f32 %355, 1
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 0
  %360 = extractvalue %dx.types.CBufRet.f32 %358, 1
  %361 = fmul fast float %360, %131
  %362 = call float @dx.op.unary.f32(i32 21, float %361)  ; Exp(value)
  %363 = fmul fast float %362, %359
  %364 = fsub fast float 4.000000e+00, %359
  %365 = fadd fast float %364, %363
  %366 = fmul fast float %354, 2.000000e+00
  %367 = fmul fast float %366, %356
  %368 = fmul fast float %128, 2.000000e+00
  %369 = fmul fast float %368, %357
  %370 = fsub fast float 1.000000e+00, %367
  %371 = fsub fast float 1.000000e+00, %369
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %374 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %375 = extractvalue %dx.types.CBufRet.f32 %372, 2
  %376 = fmul fast float %373, %370
  %377 = fmul fast float %374, %370
  %378 = fmul fast float %375, %370
  %379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.f32 %379, 0
  %381 = extractvalue %dx.types.CBufRet.f32 %379, 1
  %382 = extractvalue %dx.types.CBufRet.f32 %379, 2
  %383 = fmul fast float %380, %371
  %384 = fmul fast float %381, %371
  %385 = fmul fast float %382, %371
  %386 = fadd fast float %383, %376
  %387 = fadd fast float %384, %377
  %388 = fadd fast float %385, %378
  %389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %390 = extractvalue %dx.types.CBufRet.f32 %389, 0
  %391 = extractvalue %dx.types.CBufRet.f32 %389, 1
  %392 = extractvalue %dx.types.CBufRet.f32 %389, 2
  %393 = fadd fast float %386, %390
  %394 = fadd fast float %387, %391
  %395 = fadd fast float %388, %392
  %396 = fadd fast float %128, 1.000000e+00
  %397 = fmul fast float %127, 2.000000e+00
  %398 = fmul fast float %397, %356
  %399 = fmul fast float %396, 2.000000e+00
  %400 = fmul fast float %399, %357
  %401 = fsub fast float 1.000000e+00, %398
  %402 = fsub fast float 1.000000e+00, %400
  %403 = fmul fast float %373, %401
  %404 = fmul fast float %374, %401
  %405 = fmul fast float %375, %401
  %406 = fmul fast float %380, %402
  %407 = fmul fast float %381, %402
  %408 = fmul fast float %382, %402
  %409 = fadd fast float %406, %403
  %410 = fadd fast float %407, %404
  %411 = fadd fast float %408, %405
  %412 = fadd fast float %409, %390
  %413 = fadd fast float %410, %391
  %414 = fadd fast float %411, %392
  %415 = fmul fast float %412, %365
  %416 = fmul fast float %413, %365
  %417 = fmul fast float %414, %365
  %418 = fadd fast float %412, %393
  %419 = fmul fast float %365, %418
  %420 = fadd fast float %413, %394
  %421 = fmul fast float %365, %420
  %422 = fadd fast float %414, %395
  %423 = fmul fast float %365, %422
  %424 = fmul fast float %419, 5.000000e-01
  %425 = fmul fast float %421, 5.000000e-01
  %426 = fmul fast float %423, 5.000000e-01
  %427 = fsub fast float %424, %415
  %428 = fsub fast float %425, %416
  %429 = fsub fast float %426, %417
  %430 = call float @dx.op.dot3.f32(i32 55, float %427, float %428, float %429, float %427, float %428, float %429)  ; Dot3(ax,ay,az,bx,by,bz)
  %431 = call float @dx.op.unary.f32(i32 25, float %430)  ; Rsqrt(value)
  %432 = fmul fast float %430, 2.000000e+00
  %433 = fmul fast float %432, %431
  %434 = call float @dx.op.binary.f32(i32 35, float %200, float %433)  ; FMax(a,b)
  %435 = and i32 %353, 8
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %653, label %437, !dx.controlflow.hints !61

; <label>:437                                     ; preds = %326
  %438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %439 = extractvalue %dx.types.CBufRet.f32 %438, 0
  %440 = extractvalue %dx.types.CBufRet.f32 %438, 1
  %441 = extractvalue %dx.types.CBufRet.f32 %438, 2
  %442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.f32 %442, 0
  %444 = extractvalue %dx.types.CBufRet.f32 %442, 1
  %445 = extractvalue %dx.types.CBufRet.f32 %442, 2
  %446 = fsub fast float %190, %443
  %447 = fsub fast float %191, %444
  %448 = fsub fast float %192, %445
  %449 = fmul fast float %446, %439
  %450 = fmul fast float %447, %440
  %451 = fmul fast float %448, %441
  %452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.i32 %452, 3
  %454 = icmp eq i32 %453, 0
  %455 = fcmp fast oge float %451, 0.000000e+00
  %456 = fcmp fast ole float %451, 1.000000e+00
  br i1 %454, label %459, label %457, !dx.controlflow.hints !62

; <label>:457                                     ; preds = %437
  %458 = and i1 %455, %456
  br label %469

; <label>:459                                     ; preds = %437
  %460 = fcmp fast oge float %449, 0.000000e+00
  %461 = fcmp fast oge float %450, 0.000000e+00
  %462 = and i1 %460, %461
  %463 = and i1 %455, %462
  %464 = fcmp fast ole float %449, 1.000000e+00
  %465 = fcmp fast ole float %450, 1.000000e+00
  %466 = and i1 %464, %465
  %467 = and i1 %456, %466
  %468 = and i1 %463, %467
  br label %469

; <label>:469                                     ; preds = %459, %457
  %470 = phi i1 [ %458, %457 ], [ %468, %459 ]
  br i1 %470, label %471, label %646, !dx.controlflow.hints !63

; <label>:471                                     ; preds = %469
  %472 = fcmp fast oeq float %434, 0.000000e+00
  br i1 %472, label %487, label %473, !dx.controlflow.hints !64

; <label>:473                                     ; preds = %471
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 3
  %476 = fmul fast float %475, %434
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 0
  %479 = extractvalue %dx.types.CBufRet.f32 %477, 1
  %480 = extractvalue %dx.types.CBufRet.f32 %477, 2
  %481 = fmul fast float %478, %476
  %482 = fmul fast float %479, %476
  %483 = fmul fast float %480, %476
  %484 = call float @dx.op.unary.f32(i32 23, float %481)  ; Log(value)
  %485 = call float @dx.op.unary.f32(i32 23, float %482)  ; Log(value)
  %486 = call float @dx.op.unary.f32(i32 23, float %483)  ; Log(value)
  br label %487

; <label>:487                                     ; preds = %473, %471
  %488 = phi float [ %484, %473 ], [ 0.000000e+00, %471 ]
  %489 = phi float [ %485, %473 ], [ 0.000000e+00, %471 ]
  %490 = phi float [ %486, %473 ], [ 0.000000e+00, %471 ]
  %491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.i32 %491, 0
  %493 = extractvalue %dx.types.CBufRet.i32 %491, 1
  %494 = uitofp i32 %492 to float
  %495 = uitofp i32 %493 to float
  %496 = fmul fast float %449, %494
  %497 = fmul fast float %450, %495
  %498 = fadd fast float %496, 5.000000e-01
  %499 = fadd fast float %497, 5.000000e-01
  %500 = call float @dx.op.unary.f32(i32 22, float %498)  ; Frc(value)
  %501 = call float @dx.op.unary.f32(i32 22, float %499)  ; Frc(value)
  %502 = call float @dx.op.unary.f32(i32 27, float %498)  ; Round_ni(value)
  %503 = call float @dx.op.unary.f32(i32 27, float %499)  ; Round_ni(value)
  %504 = fadd fast float %502, 1.000000e+00
  %505 = fadd fast float %503, 1.000000e+00
  %506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.f32 %506, 0
  %508 = extractvalue %dx.types.CBufRet.f32 %506, 1
  %509 = fmul fast float %507, %504
  %510 = fmul fast float %508, %505
  %511 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %22, %dx.types.Handle %35, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = extractvalue %dx.types.ResRet.f32 %511, 1
  %514 = extractvalue %dx.types.ResRet.f32 %511, 2
  %515 = extractvalue %dx.types.ResRet.f32 %511, 3
  %516 = extractvalue %dx.types.CBufRet.i32 %491, 2
  %517 = extractvalue %dx.types.CBufRet.f32 %506, 2
  %518 = uitofp i32 %516 to float
  %519 = fadd fast float %518, -1.000000e+00
  %520 = fmul fast float %519, %512
  %521 = fmul fast float %519, %513
  %522 = fmul fast float %519, %514
  %523 = fmul fast float %519, %515
  %524 = fadd fast float %520, 5.000000e-01
  %525 = fadd fast float %521, 5.000000e-01
  %526 = fadd fast float %522, 5.000000e-01
  %527 = fadd fast float %523, 5.000000e-01
  %528 = fptoui float %524 to i32
  %529 = fptoui float %525 to i32
  %530 = fptoui float %526 to i32
  %531 = fptoui float %527 to i32
  %532 = uitofp i32 %528 to float
  %533 = uitofp i32 %529 to float
  %534 = uitofp i32 %530 to float
  %535 = uitofp i32 %531 to float
  %536 = fadd fast float %532, 5.000000e-01
  %537 = fadd fast float %533, 5.000000e-01
  %538 = fadd fast float %534, 5.000000e-01
  %539 = fadd fast float %535, 5.000000e-01
  %540 = fmul fast float %536, %517
  %541 = fmul fast float %537, %517
  %542 = fmul fast float %538, %517
  %543 = fmul fast float %539, %517
  %544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %36, float %540, float %451, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %36, float %541, float %451, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %36, float %542, float %451, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  %550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %36, float %543, float %451, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = fsub fast float %549, %551
  %553 = fmul fast float %552, %500
  %554 = fadd fast float %553, %551
  %555 = fsub fast float %547, %545
  %556 = fmul fast float %555, %500
  %557 = fadd fast float %556, %545
  %558 = fsub fast float %557, %554
  %559 = fmul fast float %558, %501
  %560 = fadd fast float %559, %554
  %561 = fcmp fast ogt float %560, 0.000000e+00
  br i1 %561, label %562, label %630, !dx.controlflow.hints !65

; <label>:562                                     ; preds = %487
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 0
  %565 = extractvalue %dx.types.CBufRet.f32 %563, 1
  %566 = extractvalue %dx.types.CBufRet.f32 %563, 2
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 0
  %569 = extractvalue %dx.types.CBufRet.f32 %567, 1
  %570 = extractvalue %dx.types.CBufRet.f32 %567, 2
  %571 = fmul fast float %447, %439
  %572 = fmul fast float %448, %439
  %573 = fadd fast float %449, %568
  %574 = fadd fast float %571, %569
  %575 = fadd fast float %572, %570
  %576 = fmul fast float %573, %564
  %577 = fmul fast float %574, %564
  %578 = fmul fast float %575, %564
  %579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %33, float %576, float %577, float %578, float undef, i32 0, i32 0, i32 0, float %488)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %580 = extractvalue %dx.types.ResRet.f32 %579, 0
  %581 = fmul fast float %573, %565
  %582 = fmul fast float %574, %565
  %583 = fmul fast float %575, %565
  %584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %33, float %581, float %582, float %583, float undef, i32 0, i32 0, i32 0, float %489)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %585 = extractvalue %dx.types.ResRet.f32 %584, 1
  %586 = fmul fast float %573, %566
  %587 = fmul fast float %574, %566
  %588 = fmul fast float %575, %566
  %589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %33, float %586, float %587, float %588, float undef, i32 0, i32 0, i32 0, float %490)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %590 = extractvalue %dx.types.ResRet.f32 %589, 2
  %591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %592 = extractvalue %dx.types.CBufRet.f32 %591, 1
  %593 = fmul fast float %585, %580
  %594 = fmul fast float %593, %590
  %595 = call float @dx.op.unary.f32(i32 23, float %594)  ; Log(value)
  %596 = fmul fast float %595, %592
  %597 = call float @dx.op.unary.f32(i32 21, float %596)  ; Exp(value)
  %598 = extractvalue %dx.types.CBufRet.f32 %591, 2
  %599 = fmul fast float %560, %560
  %600 = fmul fast float %599, %597
  %601 = fmul fast float %600, %598
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 3
  %604 = fmul fast float %603, %601
  %605 = bitcast float %604 to i32
  %606 = sitofp i32 %605 to float
  %607 = fptosi float %606 to i32
  %608 = bitcast i32 %607 to float
  %609 = fsub fast float 1.000000e+00, %601
  %610 = bitcast float %609 to i32
  %611 = sitofp i32 %610 to float
  %612 = fptosi float %611 to i32
  %613 = bitcast i32 %612 to float
  %614 = fadd fast float %608, %613
  %615 = bitcast float %614 to i32
  %616 = sub nsw i32 2129859010, %615
  %617 = bitcast i32 %616 to float
  %618 = fmul fast float %617, %608
  %619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %620 = extractvalue %dx.types.CBufRet.f32 %619, 2
  %621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.f32 %621, 0
  %623 = fmul fast float %618, %622
  %624 = fadd fast float %623, 1.000000e+00
  %625 = bitcast float %624 to i32
  %626 = sub nsw i32 2129859010, %625
  %627 = bitcast i32 %626 to float
  %628 = fmul fast float %618, %620
  %629 = fmul fast float %628, %627
  br label %630

; <label>:630                                     ; preds = %562, %487
  %631 = phi float [ %629, %562 ], [ %560, %487 ]
  %632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.f32 %632, 0
  %634 = extractvalue %dx.types.CBufRet.f32 %632, 1
  %635 = extractvalue %dx.types.CBufRet.f32 %632, 2
  %636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %637 = extractvalue %dx.types.CBufRet.f32 %636, 1
  %638 = fmul fast float %633, %631
  %639 = fmul fast float %634, %631
  %640 = fmul fast float %635, %631
  %641 = fadd fast float %638, %343
  %642 = fadd fast float %639, %344
  %643 = fadd fast float %640, %345
  %644 = fmul fast float %637, %631
  %645 = fadd fast float %644, %346
  br label %646

; <label>:646                                     ; preds = %630, %469
  %647 = phi float [ %641, %630 ], [ %343, %469 ]
  %648 = phi float [ %642, %630 ], [ %344, %469 ]
  %649 = phi float [ %643, %630 ], [ %345, %469 ]
  %650 = phi float [ %645, %630 ], [ %346, %469 ]
  %651 = phi float [ %631, %630 ], [ 0.000000e+00, %469 ]
  %652 = fadd fast float %651, %342
  br label %653

; <label>:653                                     ; preds = %646, %326
  %654 = phi float [ %647, %646 ], [ %343, %326 ]
  %655 = phi float [ %648, %646 ], [ %344, %326 ]
  %656 = phi float [ %649, %646 ], [ %345, %326 ]
  %657 = phi float [ %650, %646 ], [ %346, %326 ]
  %658 = phi float [ %652, %646 ], [ %342, %326 ]
  %659 = phi float [ %651, %646 ], [ 0.000000e+00, %326 ]
  %660 = and i32 %353, 2
  %661 = icmp ne i32 %660, 0
  %662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.f32 %662, 2
  %664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.f32 %664, 2
  %666 = fadd fast float %665, %663
  %667 = fcmp fast ole float %192, %666
  %668 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.i32 %668, 3
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %671, label %690, !dx.controlflow.hints !66

; <label>:671                                     ; preds = %653
  %672 = extractvalue %dx.types.CBufRet.f32 %662, 0
  %673 = extractvalue %dx.types.CBufRet.f32 %662, 1
  %674 = fsub fast float %190, %672
  %675 = fsub fast float %191, %673
  %676 = extractvalue %dx.types.CBufRet.f32 %664, 0
  %677 = extractvalue %dx.types.CBufRet.f32 %664, 1
  %678 = fdiv fast float 1.000000e+00, %676
  %679 = fdiv fast float 1.000000e+00, %677
  %680 = fmul fast float %674, %678
  %681 = fmul fast float %679, %675
  %682 = fcmp fast oge float %680, 0.000000e+00
  %683 = fcmp fast oge float %681, 0.000000e+00
  %684 = and i1 %682, %683
  %685 = and i1 %667, %684
  %686 = fcmp fast ole float %680, 1.000000e+00
  %687 = fcmp fast ole float %681, 1.000000e+00
  %688 = and i1 %686, %687
  %689 = and i1 %688, %685
  br label %690

; <label>:690                                     ; preds = %671, %653
  %691 = phi i1 [ %689, %671 ], [ %667, %653 ]
  %692 = and i1 %661, %691
  br i1 %692, label %693, label %872, !dx.controlflow.hints !67

; <label>:693                                     ; preds = %690
  %694 = fcmp fast oeq float %434, 0.000000e+00
  br i1 %694, label %700, label %695, !dx.controlflow.hints !68

; <label>:695                                     ; preds = %693
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 3
  %698 = fmul fast float %697, %434
  %699 = call float @dx.op.unary.f32(i32 23, float %698)  ; Log(value)
  br label %700

; <label>:700                                     ; preds = %695, %693
  %701 = phi float [ %699, %695 ], [ 0.000000e+00, %693 ]
  %702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %703 = extractvalue %dx.types.CBufRet.f32 %702, 0
  %704 = extractvalue %dx.types.CBufRet.f32 %702, 1
  %705 = extractvalue %dx.types.CBufRet.f32 %702, 2
  %706 = fsub fast float %190, %703
  %707 = fsub fast float %191, %704
  %708 = fsub fast float %192, %705
  %709 = fmul fast float %706, %706
  %710 = fmul fast float %707, %707
  %711 = fadd fast float %709, %710
  %712 = fmul fast float %708, %708
  %713 = fadd fast float %711, %712
  %714 = call float @dx.op.unary.f32(i32 24, float %713)  ; Sqrt(value)
  %715 = extractvalue %dx.types.CBufRet.f32 %662, 0
  %716 = extractvalue %dx.types.CBufRet.f32 %662, 1
  %717 = fsub fast float %190, %715
  %718 = fsub fast float %191, %716
  %719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %720 = extractvalue %dx.types.CBufRet.f32 %719, 0
  %721 = extractvalue %dx.types.CBufRet.f32 %719, 1
  %722 = fmul fast float %717, %720
  %723 = fmul fast float %718, %721
  %724 = fsub fast float 1.000000e+00, %723
  br i1 %670, label %731, label %725, !dx.controlflow.hints !69

; <label>:725                                     ; preds = %700
  %726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %35, float %722, float %724, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %727 = extractvalue %dx.types.ResRet.f32 %726, 0
  %728 = extractvalue %dx.types.ResRet.f32 %726, 1
  %729 = extractvalue %dx.types.ResRet.f32 %726, 2
  %730 = extractvalue %dx.types.ResRet.f32 %726, 3
  br label %737

; <label>:731                                     ; preds = %700
  %732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %36, float %722, float %724, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %733 = extractvalue %dx.types.ResRet.f32 %732, 0
  %734 = extractvalue %dx.types.ResRet.f32 %732, 1
  %735 = extractvalue %dx.types.ResRet.f32 %732, 2
  %736 = extractvalue %dx.types.ResRet.f32 %732, 3
  br label %737

; <label>:737                                     ; preds = %731, %725
  %738 = phi float [ %727, %725 ], [ %733, %731 ]
  %739 = phi float [ %728, %725 ], [ %734, %731 ]
  %740 = phi float [ %729, %725 ], [ %735, %731 ]
  %741 = phi float [ %730, %725 ], [ %736, %731 ]
  %742 = extractvalue %dx.types.CBufRet.f32 %719, 3
  %743 = fmul fast float %742, %739
  %744 = fmul fast float %743, %738
  %745 = fsub fast float %743, %744
  %746 = fcmp fast ole float %745, 0.000000e+00
  %747 = fmul fast float %742, %740
  %748 = fadd fast float %747, %663
  %749 = fdiv fast float 1.000000e+00, %745
  %750 = select i1 %746, float 1.000000e+06, float %749
  %751 = fsub fast float %192, %663
  %752 = fsub fast float %751, %744
  %753 = fmul fast float %750, %752
  %754 = call float @dx.op.unary.f32(i32 7, float %753)  ; Saturate(value)
  %755 = extractvalue %dx.types.CBufRet.f32 %719, 2
  %756 = fmul fast float %755, %754
  %757 = fsub fast float %755, %756
  %758 = fcmp fast olt float %192, %748
  %759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.f32 %759, 3
  %761 = select i1 %758, float %760, float 1.000000e+00
  %762 = extractvalue %dx.types.CBufRet.f32 %759, 1
  %763 = fcmp fast oeq float %762, 0.000000e+00
  br i1 %763, label %846, label %764, !dx.controlflow.hints !70

; <label>:764                                     ; preds = %737
  %765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 405)  ; CBufferLoadLegacy(handle,regIndex)
  %766 = extractvalue %dx.types.CBufRet.f32 %765, 3
  %767 = fcmp fast ogt float %766, 0.000000e+00
  %768 = extractvalue %dx.types.CBufRet.f32 %759, 2
  br i1 %767, label %769, label %799, !dx.controlflow.hints !71

; <label>:769                                     ; preds = %764
  %770 = fmul fast float %722, %766
  %771 = fmul fast float %723, %766
  %772 = fsub fast float 1.000000e+00, %771
  %773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %770, float %772, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %774 = extractvalue %dx.types.ResRet.f32 %773, 0
  %775 = extractvalue %dx.types.ResRet.f32 %773, 1
  %776 = fmul fast float %774, 2.000000e+00
  %777 = fmul fast float %775, 2.000000e+00
  %778 = fadd fast float %776, -1.000000e+00
  %779 = fadd fast float %777, -1.000000e+00
  %780 = fmul fast float %762, %190
  %781 = fmul fast float %762, %191
  %782 = fmul fast float %762, %192
  %783 = call float @dx.op.unary.f32(i32 22, float %768)  ; Frc(value)
  %784 = fmul fast float %778, %783
  %785 = fmul fast float %779, %783
  %786 = fsub fast float %780, %784
  %787 = fsub fast float %781, %785
  %788 = fadd fast float %768, 5.000000e-01
  %789 = call float @dx.op.unary.f32(i32 22, float %788)  ; Frc(value)
  %790 = fmul fast float %789, %778
  %791 = fmul fast float %789, %779
  %792 = fadd fast float %780, -5.000000e-01
  %793 = fsub fast float %792, %790
  %794 = fadd fast float %781, -5.000000e-01
  %795 = fsub fast float %794, %791
  %796 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %33, float %793, float %795, float %782, float undef, i32 0, i32 0, i32 0, float %701)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %797 = extractvalue %dx.types.ResRet.f32 %796, 0
  %798 = extractvalue %dx.types.ResRet.f32 %796, 1
  br label %812

; <label>:799                                     ; preds = %764
  %800 = extractvalue %dx.types.CBufRet.f32 %765, 0
  %801 = extractvalue %dx.types.CBufRet.f32 %765, 1
  %802 = extractvalue %dx.types.CBufRet.f32 %765, 2
  %803 = fmul fast float %768, %800
  %804 = fmul fast float %768, %801
  %805 = fmul fast float %768, %802
  %806 = fsub fast float %190, %803
  %807 = fsub fast float %191, %804
  %808 = fsub fast float %192, %805
  %809 = fmul fast float %806, %762
  %810 = fmul fast float %807, %762
  %811 = fmul fast float %808, %762
  br label %812

; <label>:812                                     ; preds = %799, %769
  %813 = phi float [ %786, %769 ], [ %809, %799 ]
  %814 = phi float [ %787, %769 ], [ %810, %799 ]
  %815 = phi float [ %782, %769 ], [ %811, %799 ]
  %816 = phi float [ %797, %769 ], [ 0.000000e+00, %799 ]
  %817 = phi float [ %798, %769 ], [ 0.000000e+00, %799 ]
  %818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %33, float %813, float %814, float %815, float undef, i32 0, i32 0, i32 0, float %701)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %819 = extractvalue %dx.types.ResRet.f32 %818, 0
  %820 = extractvalue %dx.types.ResRet.f32 %818, 1
  br i1 %767, label %821, label %833, !dx.controlflow.hints !72

; <label>:821                                     ; preds = %812
  %822 = extractvalue %dx.types.CBufRet.f32 %759, 2
  %823 = call float @dx.op.unary.f32(i32 22, float %822)  ; Frc(value)
  %824 = fmul fast float %823, 2.000000e+00
  %825 = fadd fast float %824, -1.000000e+00
  %826 = call float @dx.op.unary.f32(i32 6, float %825)  ; FAbs(value)
  %827 = fsub fast float %816, %819
  %828 = fmul fast float %826, %827
  %829 = fadd fast float %828, %819
  %830 = fsub fast float %817, %820
  %831 = fmul fast float %826, %830
  %832 = fadd fast float %831, %820
  br label %833

; <label>:833                                     ; preds = %821, %812
  %834 = phi float [ %829, %821 ], [ %819, %812 ]
  %835 = phi float [ %832, %821 ], [ %820, %812 ]
  %836 = extractvalue %dx.types.CBufRet.f32 %662, 3
  %837 = fadd fast float %836, %836
  %838 = fdiv fast float 2.000000e+00, %837
  %839 = fmul fast float %836, 2.000000e+00
  %840 = fadd fast float %834, -1.000000e+00
  %841 = fadd fast float %840, %835
  %842 = fadd fast float %841, %839
  %843 = fmul fast float %842, %838
  %844 = fadd fast float %843, -1.000000e+00
  %845 = call float @dx.op.unary.f32(i32 7, float %844)  ; Saturate(value)
  br label %846

; <label>:846                                     ; preds = %833, %737
  %847 = phi float [ %845, %833 ], [ 1.000000e+00, %737 ]
  %848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.f32 %848, 0
  %850 = extractvalue %dx.types.CBufRet.f32 %848, 1
  %851 = extractvalue %dx.types.CBufRet.f32 %848, 2
  %852 = extractvalue %dx.types.CBufRet.f32 %759, 0
  %853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %854 = extractvalue %dx.types.CBufRet.f32 %853, 1
  %855 = fsub fast float %714, %854
  %856 = extractvalue %dx.types.CBufRet.f32 %853, 2
  %857 = fmul fast float %855, %856
  %858 = call float @dx.op.unary.f32(i32 7, float %857)  ; Saturate(value)
  %859 = fmul fast float %761, %741
  %860 = fmul fast float %859, %757
  %861 = fmul fast float %860, %847
  %862 = fmul fast float %861, %858
  %863 = fmul fast float %862, %849
  %864 = fmul fast float %862, %850
  %865 = fmul fast float %862, %851
  %866 = fadd fast float %863, %654
  %867 = fadd fast float %864, %655
  %868 = fadd fast float %865, %656
  %869 = fmul fast float %862, %852
  %870 = fadd fast float %869, %657
  %871 = fadd fast float %862, %658
  br label %872

; <label>:872                                     ; preds = %846, %690
  %873 = phi float [ %866, %846 ], [ %654, %690 ]
  %874 = phi float [ %867, %846 ], [ %655, %690 ]
  %875 = phi float [ %868, %846 ], [ %656, %690 ]
  %876 = phi float [ %870, %846 ], [ %657, %690 ]
  %877 = phi float [ %871, %846 ], [ %658, %690 ]
  %878 = and i32 %353, 1
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %1156, label %880, !dx.controlflow.hints !73

; <label>:880                                     ; preds = %872
  %881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.i32 %881, 1
  %883 = and i32 %882, 1
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %960, label %885, !dx.controlflow.hints !74

; <label>:885                                     ; preds = %880
  %886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 180)  ; CBufferLoadLegacy(handle,regIndex)
  %887 = extractvalue %dx.types.CBufRet.f32 %886, 3
  %888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.f32 %888, 0
  %890 = extractvalue %dx.types.CBufRet.f32 %888, 1
  %891 = extractvalue %dx.types.CBufRet.f32 %886, 0
  %892 = extractvalue %dx.types.CBufRet.f32 %886, 1
  %893 = extractvalue %dx.types.CBufRet.f32 %886, 2
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %896 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %897 = extractvalue %dx.types.CBufRet.f32 %894, 2
  %898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.f32 %898, 3
  %900 = and i32 %882, 2
  %901 = extractvalue %dx.types.CBufRet.i32 %881, 0
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %939, label %903

; <label>:903                                     ; preds = %885
  br label %904

; <label>:904                                     ; preds = %904, %903
  %905 = phi float [ %933, %904 ], [ 0.000000e+00, %903 ]
  %906 = phi float [ %932, %904 ], [ 1.000000e+06, %903 ]
  %907 = phi i32 [ %934, %904 ], [ 0, %903 ]
  %908 = add i32 %907, 171
  %909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %908)  ; CBufferLoadLegacy(handle,regIndex)
  %910 = extractvalue %dx.types.CBufRet.f32 %909, 0
  %911 = extractvalue %dx.types.CBufRet.f32 %909, 1
  %912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.f32 %912, 2
  %914 = extractvalue %dx.types.CBufRet.f32 %909, 2
  %915 = fsub fast float %190, %910
  %916 = fsub fast float %191, %911
  %917 = fmul fast float %915, %915
  %918 = fmul fast float %916, %916
  %919 = fadd fast float %917, %918
  %920 = call float @dx.op.unary.f32(i32 24, float %919)  ; Sqrt(value)
  %921 = fsub fast float %920, %914
  %922 = icmp ne i32 %900, 0
  %923 = fsub fast float -0.000000e+00, %890
  %924 = select i1 %922, float %923, float %890
  %925 = fmul fast float %921, %924
  %926 = call float @dx.op.unary.f32(i32 7, float %925)  ; Saturate(value)
  %927 = fmul fast float %926, %889
  %928 = fsub fast float %913, %192
  %929 = fmul fast float %928, %887
  %930 = call float @dx.op.unary.f32(i32 7, float %929)  ; Saturate(value)
  %931 = fmul fast float %927, %930
  %932 = call float @dx.op.binary.f32(i32 36, float %906, float %921)  ; FMin(a,b)
  %933 = call float @dx.op.binary.f32(i32 35, float %905, float %931)  ; FMax(a,b)
  %934 = add nuw nsw i32 %907, 1
  %935 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.i32 %935, 0
  %937 = icmp ult i32 %934, %936
  br i1 %937, label %904, label %938

; <label>:938                                     ; preds = %904
  br label %939

; <label>:939                                     ; preds = %938, %885
  %940 = phi float [ 0.000000e+00, %885 ], [ %933, %938 ]
  %941 = phi float [ 1.000000e+06, %885 ], [ %932, %938 ]
  %942 = fadd fast float %940, %877
  %943 = fmul fast float %941, %899
  %944 = call float @dx.op.unary.f32(i32 7, float %943)  ; Saturate(value)
  %945 = fsub fast float %895, %891
  %946 = fsub fast float %896, %892
  %947 = fsub fast float %897, %893
  %948 = fmul fast float %944, %945
  %949 = fmul fast float %944, %946
  %950 = fmul fast float %944, %947
  %951 = fadd fast float %948, %891
  %952 = fadd fast float %949, %892
  %953 = fadd fast float %950, %893
  %954 = fmul fast float %951, %940
  %955 = fmul fast float %952, %940
  %956 = fmul fast float %953, %940
  %957 = fadd fast float %954, %873
  %958 = fadd fast float %955, %874
  %959 = fadd fast float %956, %875
  br label %1156

; <label>:960                                     ; preds = %880
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 2
  %963 = extractvalue %dx.types.CBufRet.f32 %961, 3
  %964 = fmul fast float %962, %190
  %965 = fmul fast float %963, %191
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 0
  %968 = extractvalue %dx.types.CBufRet.f32 %966, 1
  %969 = fadd fast float %964, %967
  %970 = fadd fast float %965, %968
  %971 = call float @dx.op.unary.f32(i32 7, float %969)  ; Saturate(value)
  %972 = call float @dx.op.unary.f32(i32 7, float %970)  ; Saturate(value)
  %973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %36, float %971, float %972, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %974 = extractvalue %dx.types.ResRet.f32 %973, 0
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 0
  %977 = fmul fast float %976, %974
  %978 = fsub fast float %969, %971
  %979 = fsub fast float %970, %972
  %980 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %981 = extractvalue %dx.types.CBufRet.f32 %961, 1
  %982 = fmul fast float %980, %978
  %983 = fmul fast float %981, %979
  %984 = fmul fast float %982, %982
  %985 = fmul fast float %983, %983
  %986 = fadd fast float %984, %985
  %987 = call float @dx.op.unary.f32(i32 24, float %986)  ; Sqrt(value)
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 3
  %990 = fmul fast float %989, %987
  %991 = call float @dx.op.unary.f32(i32 7, float %990)  ; Saturate(value)
  %992 = extractvalue %dx.types.CBufRet.f32 %988, 2
  %993 = fsub fast float %992, %977
  %994 = fmul fast float %993, %991
  %995 = extractvalue %dx.types.CBufRet.f32 %975, 1
  %996 = fsub fast float %192, %977
  %997 = fsub fast float %996, %995
  %998 = fsub fast float %997, %994
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 2
  %1001 = fsub fast float %998, %1000
  %1002 = fcmp fast olt float %1001, 0.000000e+00
  %1003 = extractvalue %dx.types.CBufRet.i32 %881, 0
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1055, label %1005

; <label>:1005                                    ; preds = %960
  br label %1006

; <label>:1006                                    ; preds = %1044, %1005
  %1007 = phi i32 [ %1050, %1044 ], [ 1, %1005 ]
  %1008 = phi i32 [ %1051, %1044 ], [ 0, %1005 ]
  %1009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.f32 %1009, 1
  %1011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.i32 %1011, 1
  %1013 = and i32 %1012, 8
  %1014 = icmp eq i32 %1013, 0
  %1015 = fcmp fast ogt float %1010, %998
  %1016 = or i1 %1015, %1014
  %1017 = add i32 %1008, 171
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %1017)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.CBufRet.f32 %1018, 1
  %1021 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  br i1 %1016, label %1022, label %1028, !dx.controlflow.hints !75

; <label>:1022                                    ; preds = %1006
  %1023 = fsub fast float %1019, %190
  %1024 = fsub fast float %1020, %191
  %1025 = fmul fast float %1023, %1023
  %1026 = fmul fast float %1024, %1024
  %1027 = fadd fast float %1025, %1026
  br label %1044

; <label>:1028                                    ; preds = %1006
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1031 = extractvalue %dx.types.CBufRet.f32 %1009, 2
  %1032 = fmul fast float %1031, %1030
  %1033 = fsub fast float %1032, %1010
  %1034 = fdiv fast float %1021, %1033
  %1035 = fsub fast float %190, %1019
  %1036 = fsub fast float %191, %1020
  %1037 = fsub fast float %998, %1010
  %1038 = fmul fast float %1034, %1037
  %1039 = fmul fast float %1035, %1035
  %1040 = fmul fast float %1036, %1036
  %1041 = fadd fast float %1039, %1040
  %1042 = fmul fast float %1038, %1038
  %1043 = fadd fast float %1041, %1042
  br label %1044

; <label>:1044                                    ; preds = %1028, %1022
  %1045 = phi float [ %1027, %1022 ], [ %1043, %1028 ]
  %1046 = call float @dx.op.unary.f32(i32 24, float %1045)  ; Sqrt(value)
  %1047 = fsub float %1021, %1046
  %1048 = fcmp fast olt float %1047, 0.000000e+00
  %1049 = zext i1 %1048 to i32
  %1050 = and i32 %1049, %1007
  %1051 = add i32 %1008, 1
  %1052 = extractvalue %dx.types.CBufRet.i32 %1011, 0
  %1053 = icmp ult i32 %1051, %1052
  br i1 %1053, label %1006, label %1054

; <label>:1054                                    ; preds = %1044
  br label %1055

; <label>:1055                                    ; preds = %1054, %960
  %1056 = phi i32 [ 1, %960 ], [ %1050, %1054 ]
  br label %1057

; <label>:1057                                    ; preds = %1057, %1055
  %1058 = phi i32 [ %1094, %1057 ], [ %1056, %1055 ]
  %1059 = phi i32 [ %1095, %1057 ], [ 0, %1055 ]
  %1060 = add nuw nsw i32 %1059, 191
  %1061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %1060)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.f32 %1061, 0
  %1063 = extractvalue %dx.types.CBufRet.f32 %1061, 1
  %1064 = extractvalue %dx.types.CBufRet.f32 %1061, 2
  %1065 = add nuw nsw i32 %1059, 195
  %1066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %1065)  ; CBufferLoadLegacy(handle,regIndex)
  %1067 = extractvalue %dx.types.CBufRet.f32 %1066, 0
  %1068 = extractvalue %dx.types.CBufRet.f32 %1066, 1
  %1069 = extractvalue %dx.types.CBufRet.f32 %1066, 2
  %1070 = fsub fast float %190, %1062
  %1071 = fsub fast float %191, %1063
  %1072 = fsub fast float %998, %1064
  %1073 = call float @dx.op.unary.f32(i32 6, float %1070)  ; FAbs(value)
  %1074 = call float @dx.op.unary.f32(i32 6, float %1071)  ; FAbs(value)
  %1075 = call float @dx.op.unary.f32(i32 6, float %1072)  ; FAbs(value)
  %1076 = fsub fast float %1073, %1067
  %1077 = fsub fast float %1074, %1068
  %1078 = fsub fast float %1075, %1069
  %1079 = call float @dx.op.binary.f32(i32 35, float %1076, float 0.000000e+00)  ; FMax(a,b)
  %1080 = call float @dx.op.binary.f32(i32 35, float %1077, float 0.000000e+00)  ; FMax(a,b)
  %1081 = call float @dx.op.binary.f32(i32 35, float %1078, float 0.000000e+00)  ; FMax(a,b)
  %1082 = fmul fast float %1079, %1079
  %1083 = fmul fast float %1080, %1080
  %1084 = fadd fast float %1083, %1082
  %1085 = fmul fast float %1081, %1081
  %1086 = fadd fast float %1084, %1085
  %1087 = call float @dx.op.unary.f32(i32 24, float %1086)  ; Sqrt(value)
  %1088 = call float @dx.op.binary.f32(i32 35, float %1077, float %1078)  ; FMax(a,b)
  %1089 = call float @dx.op.binary.f32(i32 35, float %1076, float %1088)  ; FMax(a,b)
  %1090 = call float @dx.op.binary.f32(i32 36, float %1089, float 0.000000e+00)  ; FMin(a,b)
  %1091 = fadd fast float %1090, %1087
  %1092 = fcmp ogt float %1091, -0.000000e+00
  %1093 = zext i1 %1092 to i32
  %1094 = and i32 %1093, %1058
  %1095 = add nuw nsw i32 %1059, 1
  %1096 = icmp eq i32 %1095, 4
  br i1 %1096, label %1097, label %1057

; <label>:1097                                    ; preds = %1057
  %1098 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.i32 %1098, 1
  %1100 = lshr i32 %1099, 1
  %1101 = xor i32 %1100, %1094
  %1102 = zext i1 %1002 to i32
  %1103 = and i32 %1101, %1102
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1156, label %1105, !dx.controlflow.hints !76

; <label>:1105                                    ; preds = %1097
  %1106 = fmul fast float %183, %183
  %1107 = fmul fast float %184, %184
  %1108 = fadd fast float %1106, %1107
  %1109 = fmul fast float %185, %185
  %1110 = fadd fast float %1108, %1109
  %1111 = call float @dx.op.unary.f32(i32 24, float %1110)  ; Sqrt(value)
  %1112 = and i32 %882, 4
  %1113 = icmp ne i32 %1112, 0
  %1114 = select i1 %1113, float %1111, float 1.000000e+00
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 1
  %1117 = fsub fast float %1114, %1116
  %1118 = extractvalue %dx.types.CBufRet.f32 %1115, 3
  %1119 = fmul fast float %1117, %1118
  %1120 = call float @dx.op.unary.f32(i32 7, float %1119)  ; Saturate(value)
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 3
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 2
  %1125 = fsub fast float %1124, %998
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 3
  %1128 = fmul fast float %1125, %1127
  %1129 = call float @dx.op.unary.f32(i32 7, float %1128)  ; Saturate(value)
  %1130 = fmul fast float %1129, %1122
  %1131 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  %1132 = fsub fast float %1111, %1131
  %1133 = extractvalue %dx.types.CBufRet.f32 %1126, 1
  %1134 = fmul fast float %1132, %1133
  %1135 = call float @dx.op.unary.f32(i32 7, float %1134)  ; Saturate(value)
  %1136 = fsub fast float 1.000000e+00, %1120
  %1137 = fmul fast float %1135, %1136
  %1138 = fadd fast float %1137, %1120
  %1139 = extractvalue %dx.types.CBufRet.f32 %1115, 0
  %1140 = fsub fast float %1130, %1139
  %1141 = fmul fast float %1140, %1138
  %1142 = fadd fast float %1141, %1139
  %1143 = extractvalue %dx.types.CBufRet.f32 %1121, 0
  %1144 = extractvalue %dx.types.CBufRet.f32 %1121, 1
  %1145 = extractvalue %dx.types.CBufRet.f32 %1121, 2
  %1146 = extractvalue %dx.types.CBufRet.f32 %1126, 2
  %1147 = fadd fast float %1142, %877
  %1148 = fmul fast float %1142, %1143
  %1149 = fmul fast float %1142, %1144
  %1150 = fmul fast float %1142, %1145
  %1151 = fadd fast float %1148, %873
  %1152 = fadd fast float %1149, %874
  %1153 = fadd fast float %1150, %875
  %1154 = fmul fast float %1142, %1146
  %1155 = fadd fast float %1154, %876
  br label %1156

; <label>:1156                                    ; preds = %1105, %1097, %939, %872
  %1157 = phi float [ %873, %872 ], [ %957, %939 ], [ %1151, %1105 ], [ %873, %1097 ]
  %1158 = phi float [ %874, %872 ], [ %958, %939 ], [ %1152, %1105 ], [ %874, %1097 ]
  %1159 = phi float [ %875, %872 ], [ %959, %939 ], [ %1153, %1105 ], [ %875, %1097 ]
  %1160 = phi float [ %876, %872 ], [ %876, %939 ], [ %1155, %1105 ], [ %876, %1097 ]
  %1161 = phi float [ %877, %872 ], [ %942, %939 ], [ %1147, %1105 ], [ %877, %1097 ]
  %1162 = and i32 %353, 16
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1955, label %1164, !dx.controlflow.hints !77

; <label>:1164                                    ; preds = %1156
  %1165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1166 = extractvalue %dx.types.CBufRet.f32 %1165, 0
  %1167 = extractvalue %dx.types.CBufRet.f32 %1165, 1
  %1168 = extractvalue %dx.types.CBufRet.f32 %1165, 2
  %1169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %1170 = extractvalue %dx.types.CBufRet.f32 %1169, 3
  %1171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.f32 %1171, 3
  %1173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1174 = extractvalue %dx.types.CBufRet.f32 %1173, 3
  %1175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.i32 %1175, 0
  %1177 = icmp ne i32 %1176, 0
  %1178 = zext i1 %1177 to i32
  %1179 = extractvalue %dx.types.CBufRet.i32 %1175, 1
  %1180 = icmp ne i32 %1179, 0
  %1181 = zext i1 %1180 to i32
  %1182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1182, 0
  %1184 = bitcast float %1183 to i32
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1235, label %1186

; <label>:1186                                    ; preds = %1164
  br label %1187

; <label>:1187                                    ; preds = %1230, %1186
  %1188 = phi i32 [ %1231, %1230 ], [ 0, %1186 ]
  %1189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1190 = extractvalue %dx.types.CBufRet.f32 %1189, 0
  %1191 = bitcast float %1190 to i32
  %1192 = call i32 @dx.op.tertiary.i32(i32 49, i32 %351, i32 %1191, i32 %1188)  ; UMad(a,b,c)
  %1193 = shl i32 %1192, 2
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  br label %1196

; <label>:1196                                    ; preds = %1199, %1187
  %1197 = phi i32 [ %1195, %1187 ], [ %1204, %1199 ]
  %1198 = icmp eq i32 %1197, 0
  br i1 %1198, label %1230, label %1199

; <label>:1199                                    ; preds = %1196
  %1200 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1197)  ; FirstbitLo(value)
  %1201 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1188, i32 %1200)  ; UMad(a,b,c)
  %1202 = and i32 %1200, 31
  %1203 = shl i32 1, %1202
  %1204 = xor i32 %1203, %1197
  %1205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1201, i32 0)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = extractvalue %dx.types.ResRet.f32 %1205, 1
  %1208 = extractvalue %dx.types.ResRet.f32 %1205, 2
  %1209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1201, i32 16)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1211 = extractvalue %dx.types.ResRet.f32 %1209, 1
  %1212 = extractvalue %dx.types.ResRet.f32 %1209, 2
  %1213 = fsub fast float %1206, %1210
  %1214 = fsub fast float %1207, %1211
  %1215 = fsub fast float %1208, %1212
  %1216 = fadd fast float %1210, %1206
  %1217 = fadd fast float %1211, %1207
  %1218 = fadd fast float %1212, %1208
  %1219 = fcmp fast ogt float %190, %1213
  %1220 = fcmp fast ogt float %191, %1214
  %1221 = fcmp fast ogt float %192, %1215
  %1222 = and i1 %1219, %1220
  %1223 = and i1 %1221, %1222
  %1224 = fcmp fast olt float %190, %1216
  %1225 = fcmp fast olt float %191, %1217
  %1226 = fcmp fast olt float %192, %1218
  %1227 = and i1 %1224, %1225
  %1228 = and i1 %1226, %1227
  %1229 = and i1 %1223, %1228
  br i1 %1229, label %1233, label %1196, !dx.controlflow.hints !78

; <label>:1230                                    ; preds = %1196
  %1231 = add i32 %1188, 1
  %1232 = icmp ult i32 %1231, %1191
  br i1 %1232, label %1187, label %1234, !llvm.loop !79

; <label>:1233                                    ; preds = %1199
  br label %1235

; <label>:1234                                    ; preds = %1230
  br label %1235

; <label>:1235                                    ; preds = %1234, %1233, %1164
  %1236 = phi i32 [ 255, %1164 ], [ %1201, %1233 ], [ 255, %1234 ]
  %1237 = icmp eq i32 %1236, 255
  br i1 %1237, label %1257, label %1238, !dx.controlflow.hints !81

; <label>:1238                                    ; preds = %1235
  %1239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 32)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.f32 %1239, 0
  %1241 = extractvalue %dx.types.ResRet.f32 %1239, 1
  %1242 = extractvalue %dx.types.ResRet.f32 %1239, 2
  %1243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 132)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.f32 %1243, 0
  %1245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 136)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.f32 %1245, 0
  %1247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 152)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 0
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1236, i32 156)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1236, i32 160)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = icmp ne i32 %1250, 0
  %1254 = zext i1 %1253 to i32
  %1255 = icmp ne i32 %1252, 0
  %1256 = zext i1 %1255 to i32
  br label %1257

; <label>:1257                                    ; preds = %1238, %1235
  %1258 = phi float [ %1240, %1238 ], [ %1166, %1235 ]
  %1259 = phi float [ %1241, %1238 ], [ %1167, %1235 ]
  %1260 = phi float [ %1242, %1238 ], [ %1168, %1235 ]
  %1261 = phi float [ %1244, %1238 ], [ %1170, %1235 ]
  %1262 = phi float [ %1246, %1238 ], [ %1172, %1235 ]
  %1263 = phi float [ %1248, %1238 ], [ %1174, %1235 ]
  %1264 = phi i32 [ %1254, %1238 ], [ %1178, %1235 ]
  %1265 = phi i32 [ %1256, %1238 ], [ %1181, %1235 ]
  %1266 = extractvalue %dx.types.CBufRet.f32 %1171, 0
  %1267 = extractvalue %dx.types.CBufRet.f32 %1171, 1
  %1268 = fsub fast float %190, %1266
  %1269 = fsub fast float %191, %1267
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 2
  %1272 = extractvalue %dx.types.CBufRet.f32 %1270, 3
  %1273 = fmul fast float %1268, %1271
  %1274 = fmul fast float %1269, %1272
  %1275 = call float @dx.op.binary.f32(i32 36, float %1273, float %1274)  ; FMin(a,b)
  %1276 = fcmp fast olt float %1275, 0.000000e+00
  %1277 = call float @dx.op.binary.f32(i32 35, float %1273, float %1274)  ; FMax(a,b)
  %1278 = fcmp fast ogt float %1277, 1.000000e+00
  %1279 = or i1 %1276, %1278
  %1280 = extractvalue %dx.types.CBufRet.f32 %1171, 2
  %1281 = fcmp fast olt float %192, %1280
  %1282 = or i1 %1279, %1281
  %1283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %1284 = extractvalue %dx.types.CBufRet.f32 %1283, 3
  %1285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1285, 0
  %1287 = fadd fast float %1286, %1284
  %1288 = fcmp fast ogt float %192, %1287
  %1289 = or i1 %1282, %1288
  br i1 %1289, label %1574, label %1290, !dx.controlflow.hints !82

; <label>:1290                                    ; preds = %1257
  %1291 = fsub fast float 1.000000e+00, %1274
  %1292 = extractvalue %dx.types.CBufRet.f32 %1285, 3
  %1293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1294 = extractvalue %dx.types.CBufRet.f32 %1293, 3
  %1295 = extractvalue %dx.types.CBufRet.f32 %1293, 2
  %1296 = extractvalue %dx.types.CBufRet.f32 %1293, 1
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 0
  %1299 = extractvalue %dx.types.CBufRet.f32 %1297, 1
  %1300 = extractvalue %dx.types.CBufRet.f32 %1297, 2
  %1301 = extractvalue %dx.types.CBufRet.f32 %1293, 0
  br i1 %1237, label %1317, label %1302, !dx.controlflow.hints !83

; <label>:1302                                    ; preds = %1290
  %1303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 48)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.f32 %1303, 0
  %1305 = extractvalue %dx.types.ResRet.f32 %1303, 1
  %1306 = extractvalue %dx.types.ResRet.f32 %1303, 2
  %1307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 104)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.f32 %1307, 0
  %1309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 108)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.f32 %1309, 0
  %1311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 112)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.f32 %1311, 0
  %1313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 116)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.f32 %1313, 0
  %1315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 120)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.f32 %1315, 0
  br label %1317

; <label>:1317                                    ; preds = %1302, %1290
  %1318 = phi float [ %1310, %1302 ], [ %1292, %1290 ]
  %1319 = phi float [ %1314, %1302 ], [ %1294, %1290 ]
  %1320 = phi float [ %1316, %1302 ], [ %1295, %1290 ]
  %1321 = phi float [ %1312, %1302 ], [ %1296, %1290 ]
  %1322 = phi float [ %1304, %1302 ], [ %1298, %1290 ]
  %1323 = phi float [ %1305, %1302 ], [ %1299, %1290 ]
  %1324 = phi float [ %1306, %1302 ], [ %1300, %1290 ]
  %1325 = phi float [ %1308, %1302 ], [ %1301, %1290 ]
  %1326 = fcmp fast oeq float %1318, 0.000000e+00
  br i1 %1326, label %1442, label %1327, !dx.controlflow.hints !84

; <label>:1327                                    ; preds = %1317
  %1328 = fcmp fast ogt float %1319, 0.000000e+00
  %1329 = fcmp fast oeq float %434, 0.000000e+00
  br i1 %1329, label %1334, label %1330, !dx.controlflow.hints !68

; <label>:1330                                    ; preds = %1327
  %1331 = extractvalue %dx.types.CBufRet.f32 %1169, 1
  %1332 = fmul fast float %1331, %434
  %1333 = call float @dx.op.unary.f32(i32 23, float %1332)  ; Log(value)
  br label %1334

; <label>:1334                                    ; preds = %1330, %1327
  %1335 = phi float [ %1333, %1330 ], [ 0.000000e+00, %1327 ]
  br i1 %1329, label %1340, label %1336, !dx.controlflow.hints !68

; <label>:1336                                    ; preds = %1334
  %1337 = extractvalue %dx.types.CBufRet.f32 %1169, 0
  %1338 = fmul fast float %1337, %434
  %1339 = call float @dx.op.unary.f32(i32 23, float %1338)  ; Log(value)
  br label %1340

; <label>:1340                                    ; preds = %1336, %1334
  %1341 = phi float [ %1339, %1336 ], [ 0.000000e+00, %1334 ]
  br i1 %1328, label %1342, label %1404, !dx.controlflow.hints !85

; <label>:1342                                    ; preds = %1340
  %1343 = fcmp fast ogt float %1320, 0.000000e+00
  br i1 %1343, label %1344, label %1354, !dx.controlflow.hints !86

; <label>:1344                                    ; preds = %1342
  %1345 = fmul fast float %1320, %1273
  %1346 = fmul fast float %1320, %1291
  %1347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %1345, float %1346, float undef, float undef, i32 0, i32 0, i32 undef, float %1341)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1348 = extractvalue %dx.types.ResRet.f32 %1347, 0
  %1349 = extractvalue %dx.types.ResRet.f32 %1347, 1
  %1350 = fmul fast float %1348, 2.000000e+00
  %1351 = fmul fast float %1349, 2.000000e+00
  %1352 = fadd fast float %1350, -1.000000e+00
  %1353 = fadd fast float %1351, -1.000000e+00
  br label %1375

; <label>:1354                                    ; preds = %1342
  %1355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1356 = extractvalue %dx.types.CBufRet.f32 %1355, 3
  %1357 = fmul fast float %1356, %1273
  %1358 = fmul fast float %1356, %1291
  %1359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %35, float %1357, float %1358, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1360 = extractvalue %dx.types.ResRet.f32 %1359, 0
  %1361 = extractvalue %dx.types.ResRet.f32 %1359, 1
  %1362 = extractvalue %dx.types.ResRet.f32 %1359, 2
  %1363 = fmul fast float %1360, 2.000000e+00
  %1364 = fmul fast float %1361, 2.000000e+00
  %1365 = fmul fast float %1362, 2.000000e+00
  %1366 = fadd fast float %1363, -1.000000e+00
  %1367 = fadd fast float %1364, -1.000000e+00
  %1368 = fadd fast float %1365, -1.000000e+00
  %1369 = extractvalue %dx.types.CBufRet.f32 %1285, 1
  %1370 = fmul fast float %1366, %1369
  %1371 = fmul fast float %1367, %1369
  %1372 = extractvalue %dx.types.CBufRet.f32 %1285, 2
  %1373 = fmul fast float %1372, 5.000000e-01
  %1374 = fmul fast float %1373, %1368
  br label %1375

; <label>:1375                                    ; preds = %1354, %1344
  %1376 = phi float [ %1352, %1344 ], [ %1370, %1354 ]
  %1377 = phi float [ %1353, %1344 ], [ %1371, %1354 ]
  %1378 = phi float [ 0.000000e+00, %1344 ], [ %1374, %1354 ]
  %1379 = fmul fast float %1318, %190
  %1380 = fmul fast float %1318, %191
  %1381 = fmul fast float %1318, %192
  %1382 = call float @dx.op.unary.f32(i32 22, float %1319)  ; Frc(value)
  %1383 = fmul fast float %1382, %1376
  %1384 = fmul fast float %1382, %1377
  %1385 = fmul fast float %1382, %1378
  %1386 = fsub fast float %1379, %1383
  %1387 = fsub fast float %1380, %1384
  %1388 = fsub fast float %1381, %1385
  %1389 = fadd fast float %1319, 5.000000e-01
  %1390 = call float @dx.op.unary.f32(i32 22, float %1389)  ; Frc(value)
  %1391 = fmul fast float %1390, %1376
  %1392 = fmul fast float %1390, %1377
  %1393 = fmul fast float %1390, %1378
  %1394 = fadd fast float %1379, -5.000000e-01
  %1395 = fsub fast float %1394, %1391
  %1396 = fadd fast float %1380, -5.000000e-01
  %1397 = fsub fast float %1396, %1392
  %1398 = fadd fast float %1381, -5.000000e-01
  %1399 = fsub fast float %1398, %1393
  %1400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %33, float %1395, float %1397, float %1399, float undef, i32 0, i32 0, i32 0, float %1335)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1401 = extractvalue %dx.types.ResRet.f32 %1400, 0
  %1402 = extractvalue %dx.types.ResRet.f32 %1400, 1
  %1403 = fadd fast float %1401, %1321
  br label %1414

; <label>:1404                                    ; preds = %1340
  %1405 = fmul fast float %1325, %1322
  %1406 = fmul fast float %1325, %1323
  %1407 = fmul fast float %1325, %1324
  %1408 = fsub fast float %190, %1405
  %1409 = fsub fast float %191, %1406
  %1410 = fsub fast float %192, %1407
  %1411 = fmul fast float %1408, %1318
  %1412 = fmul fast float %1409, %1318
  %1413 = fmul fast float %1410, %1318
  br label %1414

; <label>:1414                                    ; preds = %1404, %1375
  %1415 = phi float [ %1386, %1375 ], [ %1411, %1404 ]
  %1416 = phi float [ %1387, %1375 ], [ %1412, %1404 ]
  %1417 = phi float [ %1388, %1375 ], [ %1413, %1404 ]
  %1418 = phi float [ %1403, %1375 ], [ 0.000000e+00, %1404 ]
  %1419 = phi float [ %1402, %1375 ], [ 0.000000e+00, %1404 ]
  %1420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %33, float %1415, float %1416, float %1417, float undef, i32 0, i32 0, i32 0, float %1335)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1421 = extractvalue %dx.types.ResRet.f32 %1420, 0
  %1422 = extractvalue %dx.types.ResRet.f32 %1420, 1
  %1423 = fadd fast float %1421, %1321
  br i1 %1328, label %1424, label %1435, !dx.controlflow.hints !87

; <label>:1424                                    ; preds = %1414
  %1425 = call float @dx.op.unary.f32(i32 22, float %1319)  ; Frc(value)
  %1426 = fmul fast float %1425, 2.000000e+00
  %1427 = fadd fast float %1426, -1.000000e+00
  %1428 = call float @dx.op.unary.f32(i32 6, float %1427)  ; FAbs(value)
  %1429 = fsub fast float %1418, %1423
  %1430 = fmul fast float %1428, %1429
  %1431 = fadd fast float %1430, %1423
  %1432 = fsub fast float %1419, %1422
  %1433 = fmul fast float %1428, %1432
  %1434 = fadd fast float %1433, %1422
  br label %1435

; <label>:1435                                    ; preds = %1424, %1414
  %1436 = phi float [ %1431, %1424 ], [ %1423, %1414 ]
  %1437 = phi float [ %1434, %1424 ], [ %1422, %1414 ]
  %1438 = fsub fast float %1436, %1437
  %1439 = fsub fast float 1.000000e+00, %1437
  %1440 = fdiv fast float %1438, %1439
  %1441 = call float @dx.op.unary.f32(i32 7, float %1440)  ; Saturate(value)
  br label %1442

; <label>:1442                                    ; preds = %1435, %1317
  %1443 = phi float [ %1441, %1435 ], [ 1.000000e+00, %1317 ]
  %1444 = fcmp fast oeq float %434, 0.000000e+00
  br i1 %1444, label %1449, label %1445, !dx.controlflow.hints !68

; <label>:1445                                    ; preds = %1442
  %1446 = extractvalue %dx.types.CBufRet.f32 %1169, 2
  %1447 = fmul fast float %1446, %434
  %1448 = call float @dx.op.unary.f32(i32 23, float %1447)  ; Log(value)
  br label %1449

; <label>:1449                                    ; preds = %1445, %1442
  %1450 = phi float [ %1448, %1445 ], [ 0.000000e+00, %1442 ]
  %1451 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %34, float %1273, float %1291, float undef, float undef, i32 0, i32 0, i32 undef, float %1450)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1452 = extractvalue %dx.types.ResRet.f32 %1451, 0
  %1453 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %36, float %1273, float %1291, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1454 = extractvalue %dx.types.ResRet.f32 %1453, 0
  %1455 = extractvalue %dx.types.ResRet.f32 %1453, 1
  %1456 = extractvalue %dx.types.ResRet.f32 %1453, 2
  %1457 = extractvalue %dx.types.ResRet.f32 %1453, 3
  %1458 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %36, float %1273, float %1291, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1459 = extractvalue %dx.types.ResRet.f32 %1458, 0
  %1460 = extractvalue %dx.types.ResRet.f32 %1458, 1
  %1461 = extractvalue %dx.types.ResRet.f32 %1458, 2
  %1462 = extractvalue %dx.types.ResRet.f32 %1458, 3
  %1463 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %36, float %1273, float %1291, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  %1465 = extractvalue %dx.types.ResRet.f32 %1463, 1
  %1466 = extractvalue %dx.types.ResRet.f32 %1463, 2
  %1467 = extractvalue %dx.types.ResRet.f32 %1463, 3
  %1468 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %36, float %1273, float %1291, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1469 = extractvalue %dx.types.ResRet.f32 %1468, 0
  %1470 = extractvalue %dx.types.ResRet.f32 %1468, 1
  %1471 = extractvalue %dx.types.ResRet.f32 %1468, 2
  %1472 = extractvalue %dx.types.ResRet.f32 %1468, 3
  %1473 = fadd fast float %1454, %1455
  %1474 = fadd fast float %1473, %1456
  %1475 = fadd fast float %1474, %1457
  %1476 = fmul fast float %1459, %1454
  %1477 = fmul fast float %1460, %1455
  %1478 = fadd fast float %1476, %1477
  %1479 = fmul fast float %1461, %1456
  %1480 = fadd fast float %1478, %1479
  %1481 = fmul fast float %1462, %1457
  %1482 = fadd fast float %1480, %1481
  %1483 = fmul fast float %1464, %1454
  %1484 = fmul fast float %1465, %1455
  %1485 = fadd fast float %1483, %1484
  %1486 = fmul fast float %1466, %1456
  %1487 = fadd fast float %1485, %1486
  %1488 = fmul fast float %1467, %1457
  %1489 = fadd fast float %1487, %1488
  %1490 = fmul fast float %1469, %1454
  %1491 = fmul fast float %1470, %1455
  %1492 = fadd fast float %1490, %1491
  %1493 = fmul fast float %1471, %1456
  %1494 = fadd fast float %1492, %1493
  %1495 = fmul fast float %1472, %1457
  %1496 = fadd fast float %1494, %1495
  %1497 = fcmp fast ogt float %1475, 0.000000e+00
  %1498 = fdiv fast float %1482, %1475
  %1499 = select i1 %1497, float %1498, float 0.000000e+00
  %1500 = fdiv fast float %1489, %1475
  %1501 = select i1 %1497, float %1500, float 0.000000e+00
  %1502 = fdiv fast float %1496, %1475
  %1503 = select i1 %1497, float %1502, float 0.000000e+00
  %1504 = fcmp fast ogt float %192, %1501
  %1505 = fcmp fast olt float %192, %1499
  %1506 = and i1 %1505, %1504
  br i1 %1506, label %1507, label %1574, !dx.controlflow.hints !88

; <label>:1507                                    ; preds = %1449
  %1508 = extractvalue %dx.types.CBufRet.f32 %1283, 0
  %1509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1510 = extractvalue %dx.types.CBufRet.f32 %1509, 2
  %1511 = extractvalue %dx.types.CBufRet.f32 %1509, 3
  br i1 %1237, label %1522, label %1512, !dx.controlflow.hints !89

; <label>:1512                                    ; preds = %1507
  %1513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 60)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.f32 %1513, 0
  %1515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 64)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.f32 %1515, 0
  %1517 = extractvalue %dx.types.ResRet.f32 %1515, 1
  %1518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 72)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.f32 %1518, 0
  %1520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 96)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.f32 %1520, 0
  br label %1522

; <label>:1522                                    ; preds = %1512, %1507
  %1523 = phi float [ %1514, %1512 ], [ %1286, %1507 ]
  %1524 = phi float [ %1519, %1512 ], [ %1284, %1507 ]
  %1525 = phi float [ %1521, %1512 ], [ %1508, %1507 ]
  %1526 = phi float [ %1516, %1512 ], [ %1510, %1507 ]
  %1527 = phi float [ %1517, %1512 ], [ %1511, %1507 ]
  %1528 = call float @dx.op.binary.f32(i32 35, float %1452, float 0.000000e+00)  ; FMax(a,b)
  %1529 = call float @dx.op.binary.f32(i32 36, float %1528, float 1.000000e+00)  ; FMin(a,b)
  %1530 = call float @dx.op.unary.f32(i32 24, float %1529)  ; Sqrt(value)
  %1531 = call float @dx.op.binary.f32(i32 35, float %1503, float 0x3F847AE140000000)  ; FMax(a,b)
  %1532 = fsub fast float %1499, %192
  %1533 = fsub fast float %192, %1501
  %1534 = call float @dx.op.binary.f32(i32 36, float %1533, float %1532)  ; FMin(a,b)
  %1535 = fdiv fast float %1534, %1531
  %1536 = call float @dx.op.unary.f32(i32 7, float %1535)  ; Saturate(value)
  %1537 = fsub fast float %192, %1524
  %1538 = fdiv fast float %1537, %1523
  %1539 = call float @dx.op.unary.f32(i32 7, float %1538)  ; Saturate(value)
  %1540 = fsub fast float 1.000000e+00, %1539
  %1541 = fmul float %1536, %1540
  %1542 = fmul float %1541, %1541
  %1543 = fmul fast float %1530, %1443
  %1544 = fmul fast float %1543, %1542
  %1545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1546 = extractvalue %dx.types.CBufRet.f32 %1545, 2
  %1547 = extractvalue %dx.types.CBufRet.f32 %1545, 1
  %1548 = fsub fast float %1544, %1547
  %1549 = fsub fast float %1546, %1547
  %1550 = fdiv fast float %1548, %1549
  %1551 = call float @dx.op.unary.f32(i32 7, float %1550)  ; Saturate(value)
  %1552 = fmul fast float %1551, %1525
  %1553 = fcmp fast ogt float %1527, 0.000000e+00
  br i1 %1553, label %1554, label %1574, !dx.controlflow.hints !90

; <label>:1554                                    ; preds = %1522
  %1555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1556 = extractvalue %dx.types.CBufRet.f32 %1555, 0
  %1557 = extractvalue %dx.types.CBufRet.f32 %1555, 1
  %1558 = extractvalue %dx.types.CBufRet.f32 %1555, 2
  %1559 = fsub fast float %190, %1556
  %1560 = fsub fast float %191, %1557
  %1561 = fsub fast float %192, %1558
  %1562 = fmul fast float %1559, %1559
  %1563 = fmul fast float %1560, %1560
  %1564 = fadd fast float %1562, %1563
  %1565 = fmul fast float %1561, %1561
  %1566 = fadd fast float %1564, %1565
  %1567 = call float @dx.op.unary.f32(i32 24, float %1566)  ; Sqrt(value)
  %1568 = fsub fast float %1567, %1526
  %1569 = fsub fast float %1527, %1526
  %1570 = fdiv fast float %1568, %1569
  %1571 = call float @dx.op.unary.f32(i32 7, float %1570)  ; Saturate(value)
  %1572 = fmul fast float %1571, %1571
  %1573 = fmul fast float %1572, %1552
  br label %1574

; <label>:1574                                    ; preds = %1554, %1522, %1449, %1257
  %1575 = phi float [ 0.000000e+00, %1257 ], [ 0.000000e+00, %1449 ], [ %1573, %1554 ], [ %1552, %1522 ]
  %1576 = fcmp fast oeq float %1575, 0.000000e+00
  br i1 %1576, label %1955, label %1577, !dx.controlflow.hints !91

; <label>:1577                                    ; preds = %1574
  %1578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1579 = extractvalue %dx.types.CBufRet.f32 %1578, 0
  %1580 = extractvalue %dx.types.CBufRet.f32 %1578, 1
  %1581 = extractvalue %dx.types.CBufRet.f32 %1578, 2
  %1582 = fsub fast float %190, %1579
  %1583 = fadd fast float %1582, %1581
  %1584 = fsub fast float %191, %1580
  %1585 = fadd fast float %1584, %1581
  %1586 = extractvalue %dx.types.CBufRet.f32 %1578, 3
  %1587 = fmul fast float %1583, %1586
  %1588 = fmul fast float %1585, %1586
  %1589 = call float @dx.op.unary.f32(i32 7, float %1587)  ; Saturate(value)
  %1590 = call float @dx.op.unary.f32(i32 7, float %1588)  ; Saturate(value)
  %1591 = fsub fast float 1.000000e+00, %1589
  %1592 = fsub fast float 1.000000e+00, %1590
  %1593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %1591, float %1592, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1594 = extractvalue %dx.types.ResRet.f32 %1593, 0
  %1595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1596 = extractvalue %dx.types.CBufRet.f32 %1595, 2
  %1597 = fmul fast float %1596, %1594
  %1598 = extractvalue %dx.types.CBufRet.f32 %1595, 3
  %1599 = fadd fast float %1598, %1597
  %1600 = fcmp fast ogt float %1594, 0.000000e+00
  %1601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 0
  %1603 = and i32 %1602, 32768
  %1604 = icmp ne i32 %1603, 0
  %1605 = and i1 %1600, %1604
  %1606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1607 = extractvalue %dx.types.CBufRet.f32 %1606, 3
  %1608 = fadd fast float %1607, %1599
  %1609 = fcmp fast ole float %192, %1608
  %1610 = and i1 %1605, %1609
  %1611 = xor i1 %1610, true
  %1612 = icmp ne i32 %1264, 0
  %1613 = and i1 %1612, %1611
  %1614 = icmp ne i32 %1265, 0
  %1615 = and i1 %1614, %1610
  %1616 = or i1 %1613, %1615
  br i1 %1616, label %1955, label %1617, !dx.controlflow.hints !92

; <label>:1617                                    ; preds = %1577
  %1618 = fsub fast float %192, %1599
  %1619 = call float @dx.op.unary.f32(i32 6, float %1618)  ; FAbs(value)
  %1620 = fdiv fast float %1619, %1263
  %1621 = call float @dx.op.unary.f32(i32 7, float %1620)  ; Saturate(value)
  %1622 = fmul fast float %1621, %1575
  %1623 = fcmp fast une float %1261, 0.000000e+00
  br i1 %1623, label %1624, label %1943, !dx.controlflow.hints !93

; <label>:1624                                    ; preds = %1617
  %1625 = fmul fast float %1261, %118
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 0
  %1628 = extractvalue %dx.types.CBufRet.f32 %1626, 1
  %1629 = extractvalue %dx.types.CBufRet.f32 %1626, 2
  %1630 = fmul fast float %1627, %1625
  %1631 = fmul fast float %1628, %1625
  %1632 = fmul fast float %1629, %1625
  %1633 = fadd fast float %1630, %190
  %1634 = fadd fast float %1631, %191
  %1635 = fadd fast float %1632, %192
  %1636 = fmul fast float %1261, 2.000000e+00
  %1637 = call float @dx.op.binary.f32(i32 35, float %434, float %1636)  ; FMax(a,b)
  %1638 = fsub fast float %1633, %1266
  %1639 = fsub fast float %1634, %1267
  %1640 = fmul fast float %1638, %1271
  %1641 = fmul fast float %1639, %1272
  %1642 = call float @dx.op.binary.f32(i32 36, float %1640, float %1641)  ; FMin(a,b)
  %1643 = fcmp fast olt float %1642, 0.000000e+00
  %1644 = call float @dx.op.binary.f32(i32 35, float %1640, float %1641)  ; FMax(a,b)
  %1645 = fcmp fast ogt float %1644, 1.000000e+00
  %1646 = or i1 %1643, %1645
  %1647 = fcmp fast olt float %1635, %1280
  %1648 = or i1 %1646, %1647
  %1649 = fcmp fast ogt float %1635, %1287
  %1650 = or i1 %1648, %1649
  br i1 %1650, label %1935, label %1651, !dx.controlflow.hints !82

; <label>:1651                                    ; preds = %1624
  %1652 = fsub fast float 1.000000e+00, %1641
  %1653 = extractvalue %dx.types.CBufRet.f32 %1285, 3
  %1654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1655 = extractvalue %dx.types.CBufRet.f32 %1654, 3
  %1656 = extractvalue %dx.types.CBufRet.f32 %1654, 2
  %1657 = extractvalue %dx.types.CBufRet.f32 %1654, 1
  %1658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1659 = extractvalue %dx.types.CBufRet.f32 %1658, 0
  %1660 = extractvalue %dx.types.CBufRet.f32 %1658, 1
  %1661 = extractvalue %dx.types.CBufRet.f32 %1658, 2
  %1662 = extractvalue %dx.types.CBufRet.f32 %1654, 0
  br i1 %1237, label %1678, label %1663, !dx.controlflow.hints !83

; <label>:1663                                    ; preds = %1651
  %1664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 48)  ; BufferLoad(srv,index,wot)
  %1665 = extractvalue %dx.types.ResRet.f32 %1664, 0
  %1666 = extractvalue %dx.types.ResRet.f32 %1664, 1
  %1667 = extractvalue %dx.types.ResRet.f32 %1664, 2
  %1668 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 104)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.f32 %1668, 0
  %1670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 108)  ; BufferLoad(srv,index,wot)
  %1671 = extractvalue %dx.types.ResRet.f32 %1670, 0
  %1672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 112)  ; BufferLoad(srv,index,wot)
  %1673 = extractvalue %dx.types.ResRet.f32 %1672, 0
  %1674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 116)  ; BufferLoad(srv,index,wot)
  %1675 = extractvalue %dx.types.ResRet.f32 %1674, 0
  %1676 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 120)  ; BufferLoad(srv,index,wot)
  %1677 = extractvalue %dx.types.ResRet.f32 %1676, 0
  br label %1678

; <label>:1678                                    ; preds = %1663, %1651
  %1679 = phi float [ %1671, %1663 ], [ %1653, %1651 ]
  %1680 = phi float [ %1675, %1663 ], [ %1655, %1651 ]
  %1681 = phi float [ %1677, %1663 ], [ %1656, %1651 ]
  %1682 = phi float [ %1673, %1663 ], [ %1657, %1651 ]
  %1683 = phi float [ %1665, %1663 ], [ %1659, %1651 ]
  %1684 = phi float [ %1666, %1663 ], [ %1660, %1651 ]
  %1685 = phi float [ %1667, %1663 ], [ %1661, %1651 ]
  %1686 = phi float [ %1669, %1663 ], [ %1662, %1651 ]
  %1687 = fcmp fast oeq float %1679, 0.000000e+00
  br i1 %1687, label %1803, label %1688, !dx.controlflow.hints !84

; <label>:1688                                    ; preds = %1678
  %1689 = fcmp fast ogt float %1680, 0.000000e+00
  %1690 = fcmp fast oeq float %1637, 0.000000e+00
  br i1 %1690, label %1695, label %1691, !dx.controlflow.hints !68

; <label>:1691                                    ; preds = %1688
  %1692 = extractvalue %dx.types.CBufRet.f32 %1169, 1
  %1693 = fmul fast float %1692, %1637
  %1694 = call float @dx.op.unary.f32(i32 23, float %1693)  ; Log(value)
  br label %1695

; <label>:1695                                    ; preds = %1691, %1688
  %1696 = phi float [ %1694, %1691 ], [ 0.000000e+00, %1688 ]
  br i1 %1690, label %1701, label %1697, !dx.controlflow.hints !68

; <label>:1697                                    ; preds = %1695
  %1698 = extractvalue %dx.types.CBufRet.f32 %1169, 0
  %1699 = fmul fast float %1698, %1637
  %1700 = call float @dx.op.unary.f32(i32 23, float %1699)  ; Log(value)
  br label %1701

; <label>:1701                                    ; preds = %1697, %1695
  %1702 = phi float [ %1700, %1697 ], [ 0.000000e+00, %1695 ]
  br i1 %1689, label %1703, label %1765, !dx.controlflow.hints !85

; <label>:1703                                    ; preds = %1701
  %1704 = fcmp fast ogt float %1681, 0.000000e+00
  br i1 %1704, label %1705, label %1715, !dx.controlflow.hints !86

; <label>:1705                                    ; preds = %1703
  %1706 = fmul fast float %1681, %1640
  %1707 = fmul fast float %1681, %1652
  %1708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %1706, float %1707, float undef, float undef, i32 0, i32 0, i32 undef, float %1702)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1709 = extractvalue %dx.types.ResRet.f32 %1708, 0
  %1710 = extractvalue %dx.types.ResRet.f32 %1708, 1
  %1711 = fmul fast float %1709, 2.000000e+00
  %1712 = fmul fast float %1710, 2.000000e+00
  %1713 = fadd fast float %1711, -1.000000e+00
  %1714 = fadd fast float %1712, -1.000000e+00
  br label %1736

; <label>:1715                                    ; preds = %1703
  %1716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1717 = extractvalue %dx.types.CBufRet.f32 %1716, 3
  %1718 = fmul fast float %1717, %1640
  %1719 = fmul fast float %1717, %1652
  %1720 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %35, float %1718, float %1719, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1721 = extractvalue %dx.types.ResRet.f32 %1720, 0
  %1722 = extractvalue %dx.types.ResRet.f32 %1720, 1
  %1723 = extractvalue %dx.types.ResRet.f32 %1720, 2
  %1724 = fmul fast float %1721, 2.000000e+00
  %1725 = fmul fast float %1722, 2.000000e+00
  %1726 = fmul fast float %1723, 2.000000e+00
  %1727 = fadd fast float %1724, -1.000000e+00
  %1728 = fadd fast float %1725, -1.000000e+00
  %1729 = fadd fast float %1726, -1.000000e+00
  %1730 = extractvalue %dx.types.CBufRet.f32 %1285, 1
  %1731 = fmul fast float %1727, %1730
  %1732 = fmul fast float %1728, %1730
  %1733 = extractvalue %dx.types.CBufRet.f32 %1285, 2
  %1734 = fmul fast float %1733, 5.000000e-01
  %1735 = fmul fast float %1734, %1729
  br label %1736

; <label>:1736                                    ; preds = %1715, %1705
  %1737 = phi float [ %1713, %1705 ], [ %1731, %1715 ]
  %1738 = phi float [ %1714, %1705 ], [ %1732, %1715 ]
  %1739 = phi float [ 0.000000e+00, %1705 ], [ %1735, %1715 ]
  %1740 = fmul fast float %1679, %1633
  %1741 = fmul fast float %1679, %1634
  %1742 = fmul fast float %1679, %1635
  %1743 = call float @dx.op.unary.f32(i32 22, float %1680)  ; Frc(value)
  %1744 = fmul fast float %1743, %1737
  %1745 = fmul fast float %1743, %1738
  %1746 = fmul fast float %1743, %1739
  %1747 = fsub fast float %1740, %1744
  %1748 = fsub fast float %1741, %1745
  %1749 = fsub fast float %1742, %1746
  %1750 = fadd fast float %1680, 5.000000e-01
  %1751 = call float @dx.op.unary.f32(i32 22, float %1750)  ; Frc(value)
  %1752 = fmul fast float %1751, %1737
  %1753 = fmul fast float %1751, %1738
  %1754 = fmul fast float %1751, %1739
  %1755 = fadd fast float %1740, -5.000000e-01
  %1756 = fsub fast float %1755, %1752
  %1757 = fadd fast float %1741, -5.000000e-01
  %1758 = fsub fast float %1757, %1753
  %1759 = fadd fast float %1742, -5.000000e-01
  %1760 = fsub fast float %1759, %1754
  %1761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %33, float %1756, float %1758, float %1760, float undef, i32 0, i32 0, i32 0, float %1696)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1762 = extractvalue %dx.types.ResRet.f32 %1761, 0
  %1763 = extractvalue %dx.types.ResRet.f32 %1761, 1
  %1764 = fadd fast float %1762, %1682
  br label %1775

; <label>:1765                                    ; preds = %1701
  %1766 = fmul fast float %1686, %1683
  %1767 = fmul fast float %1686, %1684
  %1768 = fmul fast float %1686, %1685
  %1769 = fsub fast float %1633, %1766
  %1770 = fsub fast float %1634, %1767
  %1771 = fsub fast float %1635, %1768
  %1772 = fmul fast float %1769, %1679
  %1773 = fmul fast float %1770, %1679
  %1774 = fmul fast float %1771, %1679
  br label %1775

; <label>:1775                                    ; preds = %1765, %1736
  %1776 = phi float [ %1747, %1736 ], [ %1772, %1765 ]
  %1777 = phi float [ %1748, %1736 ], [ %1773, %1765 ]
  %1778 = phi float [ %1749, %1736 ], [ %1774, %1765 ]
  %1779 = phi float [ %1764, %1736 ], [ 0.000000e+00, %1765 ]
  %1780 = phi float [ %1763, %1736 ], [ 0.000000e+00, %1765 ]
  %1781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %33, float %1776, float %1777, float %1778, float undef, i32 0, i32 0, i32 0, float %1696)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1782 = extractvalue %dx.types.ResRet.f32 %1781, 0
  %1783 = extractvalue %dx.types.ResRet.f32 %1781, 1
  %1784 = fadd fast float %1782, %1682
  br i1 %1689, label %1785, label %1796, !dx.controlflow.hints !87

; <label>:1785                                    ; preds = %1775
  %1786 = call float @dx.op.unary.f32(i32 22, float %1680)  ; Frc(value)
  %1787 = fmul fast float %1786, 2.000000e+00
  %1788 = fadd fast float %1787, -1.000000e+00
  %1789 = call float @dx.op.unary.f32(i32 6, float %1788)  ; FAbs(value)
  %1790 = fsub fast float %1779, %1784
  %1791 = fmul fast float %1789, %1790
  %1792 = fadd fast float %1791, %1784
  %1793 = fsub fast float %1780, %1783
  %1794 = fmul fast float %1789, %1793
  %1795 = fadd fast float %1794, %1783
  br label %1796

; <label>:1796                                    ; preds = %1785, %1775
  %1797 = phi float [ %1792, %1785 ], [ %1784, %1775 ]
  %1798 = phi float [ %1795, %1785 ], [ %1783, %1775 ]
  %1799 = fsub fast float %1797, %1798
  %1800 = fsub fast float 1.000000e+00, %1798
  %1801 = fdiv fast float %1799, %1800
  %1802 = call float @dx.op.unary.f32(i32 7, float %1801)  ; Saturate(value)
  br label %1803

; <label>:1803                                    ; preds = %1796, %1678
  %1804 = phi float [ %1802, %1796 ], [ 1.000000e+00, %1678 ]
  %1805 = fcmp fast oeq float %1637, 0.000000e+00
  br i1 %1805, label %1810, label %1806, !dx.controlflow.hints !68

; <label>:1806                                    ; preds = %1803
  %1807 = extractvalue %dx.types.CBufRet.f32 %1169, 2
  %1808 = fmul fast float %1807, %1637
  %1809 = call float @dx.op.unary.f32(i32 23, float %1808)  ; Log(value)
  br label %1810

; <label>:1810                                    ; preds = %1806, %1803
  %1811 = phi float [ %1809, %1806 ], [ 0.000000e+00, %1803 ]
  %1812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %34, float %1640, float %1652, float undef, float undef, i32 0, i32 0, i32 undef, float %1811)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1813 = extractvalue %dx.types.ResRet.f32 %1812, 0
  %1814 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %36, float %1640, float %1652, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1815 = extractvalue %dx.types.ResRet.f32 %1814, 0
  %1816 = extractvalue %dx.types.ResRet.f32 %1814, 1
  %1817 = extractvalue %dx.types.ResRet.f32 %1814, 2
  %1818 = extractvalue %dx.types.ResRet.f32 %1814, 3
  %1819 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %36, float %1640, float %1652, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1820 = extractvalue %dx.types.ResRet.f32 %1819, 0
  %1821 = extractvalue %dx.types.ResRet.f32 %1819, 1
  %1822 = extractvalue %dx.types.ResRet.f32 %1819, 2
  %1823 = extractvalue %dx.types.ResRet.f32 %1819, 3
  %1824 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %36, float %1640, float %1652, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1825 = extractvalue %dx.types.ResRet.f32 %1824, 0
  %1826 = extractvalue %dx.types.ResRet.f32 %1824, 1
  %1827 = extractvalue %dx.types.ResRet.f32 %1824, 2
  %1828 = extractvalue %dx.types.ResRet.f32 %1824, 3
  %1829 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %36, float %1640, float %1652, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1830 = extractvalue %dx.types.ResRet.f32 %1829, 0
  %1831 = extractvalue %dx.types.ResRet.f32 %1829, 1
  %1832 = extractvalue %dx.types.ResRet.f32 %1829, 2
  %1833 = extractvalue %dx.types.ResRet.f32 %1829, 3
  %1834 = fadd fast float %1815, %1816
  %1835 = fadd fast float %1834, %1817
  %1836 = fadd fast float %1835, %1818
  %1837 = fmul fast float %1820, %1815
  %1838 = fmul fast float %1821, %1816
  %1839 = fadd fast float %1837, %1838
  %1840 = fmul fast float %1822, %1817
  %1841 = fadd fast float %1839, %1840
  %1842 = fmul fast float %1823, %1818
  %1843 = fadd fast float %1841, %1842
  %1844 = fmul fast float %1825, %1815
  %1845 = fmul fast float %1826, %1816
  %1846 = fadd fast float %1844, %1845
  %1847 = fmul fast float %1827, %1817
  %1848 = fadd fast float %1846, %1847
  %1849 = fmul fast float %1828, %1818
  %1850 = fadd fast float %1848, %1849
  %1851 = fmul fast float %1830, %1815
  %1852 = fmul fast float %1831, %1816
  %1853 = fadd fast float %1851, %1852
  %1854 = fmul fast float %1832, %1817
  %1855 = fadd fast float %1853, %1854
  %1856 = fmul fast float %1833, %1818
  %1857 = fadd fast float %1855, %1856
  %1858 = fcmp fast ogt float %1836, 0.000000e+00
  %1859 = fdiv fast float %1843, %1836
  %1860 = select i1 %1858, float %1859, float 0.000000e+00
  %1861 = fdiv fast float %1850, %1836
  %1862 = select i1 %1858, float %1861, float 0.000000e+00
  %1863 = fdiv fast float %1857, %1836
  %1864 = select i1 %1858, float %1863, float 0.000000e+00
  %1865 = fcmp fast ogt float %1635, %1862
  %1866 = fcmp fast olt float %1635, %1860
  %1867 = and i1 %1866, %1865
  br i1 %1867, label %1868, label %1935, !dx.controlflow.hints !88

; <label>:1868                                    ; preds = %1810
  %1869 = extractvalue %dx.types.CBufRet.f32 %1283, 0
  %1870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1871 = extractvalue %dx.types.CBufRet.f32 %1870, 2
  %1872 = extractvalue %dx.types.CBufRet.f32 %1870, 3
  br i1 %1237, label %1883, label %1873, !dx.controlflow.hints !89

; <label>:1873                                    ; preds = %1868
  %1874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 60)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.f32 %1874, 0
  %1876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 64)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.ResRet.f32 %1876, 1
  %1879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 72)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.f32 %1879, 0
  %1881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 96)  ; BufferLoad(srv,index,wot)
  %1882 = extractvalue %dx.types.ResRet.f32 %1881, 0
  br label %1883

; <label>:1883                                    ; preds = %1873, %1868
  %1884 = phi float [ %1875, %1873 ], [ %1286, %1868 ]
  %1885 = phi float [ %1880, %1873 ], [ %1284, %1868 ]
  %1886 = phi float [ %1882, %1873 ], [ %1869, %1868 ]
  %1887 = phi float [ %1877, %1873 ], [ %1871, %1868 ]
  %1888 = phi float [ %1878, %1873 ], [ %1872, %1868 ]
  %1889 = call float @dx.op.binary.f32(i32 35, float %1813, float 0.000000e+00)  ; FMax(a,b)
  %1890 = call float @dx.op.binary.f32(i32 36, float %1889, float 1.000000e+00)  ; FMin(a,b)
  %1891 = call float @dx.op.unary.f32(i32 24, float %1890)  ; Sqrt(value)
  %1892 = call float @dx.op.binary.f32(i32 35, float %1864, float 0x3F847AE140000000)  ; FMax(a,b)
  %1893 = fsub fast float %1860, %1635
  %1894 = fsub fast float %1635, %1862
  %1895 = call float @dx.op.binary.f32(i32 36, float %1894, float %1893)  ; FMin(a,b)
  %1896 = fdiv fast float %1895, %1892
  %1897 = call float @dx.op.unary.f32(i32 7, float %1896)  ; Saturate(value)
  %1898 = fsub fast float %1635, %1885
  %1899 = fdiv fast float %1898, %1884
  %1900 = call float @dx.op.unary.f32(i32 7, float %1899)  ; Saturate(value)
  %1901 = fsub fast float 1.000000e+00, %1900
  %1902 = fmul float %1897, %1901
  %1903 = fmul float %1902, %1902
  %1904 = fmul fast float %1891, %1804
  %1905 = fmul fast float %1904, %1903
  %1906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1907 = extractvalue %dx.types.CBufRet.f32 %1906, 2
  %1908 = extractvalue %dx.types.CBufRet.f32 %1906, 1
  %1909 = fsub fast float %1905, %1908
  %1910 = fsub fast float %1907, %1908
  %1911 = fdiv fast float %1909, %1910
  %1912 = call float @dx.op.unary.f32(i32 7, float %1911)  ; Saturate(value)
  %1913 = fmul fast float %1912, %1886
  %1914 = fcmp fast ogt float %1888, 0.000000e+00
  br i1 %1914, label %1915, label %1935, !dx.controlflow.hints !90

; <label>:1915                                    ; preds = %1883
  %1916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1917 = extractvalue %dx.types.CBufRet.f32 %1916, 0
  %1918 = extractvalue %dx.types.CBufRet.f32 %1916, 1
  %1919 = extractvalue %dx.types.CBufRet.f32 %1916, 2
  %1920 = fsub fast float %1633, %1917
  %1921 = fsub fast float %1634, %1918
  %1922 = fsub fast float %1635, %1919
  %1923 = fmul fast float %1920, %1920
  %1924 = fmul fast float %1921, %1921
  %1925 = fadd fast float %1923, %1924
  %1926 = fmul fast float %1922, %1922
  %1927 = fadd fast float %1925, %1926
  %1928 = call float @dx.op.unary.f32(i32 24, float %1927)  ; Sqrt(value)
  %1929 = fsub fast float %1928, %1887
  %1930 = fsub fast float %1888, %1887
  %1931 = fdiv fast float %1929, %1930
  %1932 = call float @dx.op.unary.f32(i32 7, float %1931)  ; Saturate(value)
  %1933 = fmul fast float %1932, %1932
  %1934 = fmul fast float %1933, %1913
  br label %1935

; <label>:1935                                    ; preds = %1915, %1883, %1810, %1624
  %1936 = phi float [ 0.000000e+00, %1624 ], [ 0.000000e+00, %1810 ], [ %1934, %1915 ], [ %1913, %1883 ]
  %1937 = fsub fast float %1622, %1936
  %1938 = fdiv fast float %1937, %1622
  %1939 = call float @dx.op.unary.f32(i32 7, float %1938)  ; Saturate(value)
  %1940 = fsub fast float 1.000000e+00, %1262
  %1941 = fmul fast float %1939, %1940
  %1942 = fadd fast float %1941, %1262
  br label %1943

; <label>:1943                                    ; preds = %1935, %1617
  %1944 = phi float [ %1942, %1935 ], [ 1.000000e+00, %1617 ]
  %1945 = fadd fast float %1622, %1161
  %1946 = fmul fast float %1622, %1258
  %1947 = fmul fast float %1946, %1944
  %1948 = fmul fast float %1622, %1259
  %1949 = fmul fast float %1948, %1944
  %1950 = fmul fast float %1622, %1260
  %1951 = fmul fast float %1950, %1944
  %1952 = fadd fast float %1947, %1157
  %1953 = fadd fast float %1949, %1158
  %1954 = fadd fast float %1951, %1159
  br label %1955

; <label>:1955                                    ; preds = %1943, %1577, %1574, %1156
  %1956 = phi float [ %1157, %1156 ], [ %1157, %1574 ], [ %1157, %1577 ], [ %1952, %1943 ]
  %1957 = phi float [ %1158, %1156 ], [ %1158, %1574 ], [ %1158, %1577 ], [ %1953, %1943 ]
  %1958 = phi float [ %1159, %1156 ], [ %1159, %1574 ], [ %1159, %1577 ], [ %1954, %1943 ]
  %1959 = phi float [ %1161, %1156 ], [ %1161, %1574 ], [ %1161, %1577 ], [ %1945, %1943 ]
  %1960 = and i32 %353, 4
  %1961 = icmp eq i32 %1960, 0
  br i1 %1961, label %2132, label %1962, !dx.controlflow.hints !94

; <label>:1962                                    ; preds = %1955
  %1963 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1964 = extractvalue %dx.types.CBufRet.i32 %1963, 1
  %1965 = icmp eq i32 %1964, 0
  br i1 %1965, label %2132, label %1966

; <label>:1966                                    ; preds = %1962
  br label %1967

; <label>:1967                                    ; preds = %2123, %1966
  %1968 = phi i32 [ %2129, %2123 ], [ 0, %1966 ]
  %1969 = phi float [ %2124, %2123 ], [ %1956, %1966 ]
  %1970 = phi float [ %2125, %2123 ], [ %1957, %1966 ]
  %1971 = phi float [ %2126, %2123 ], [ %1958, %1966 ]
  %1972 = phi float [ %2127, %2123 ], [ %1160, %1966 ]
  %1973 = phi float [ %2128, %2123 ], [ %1959, %1966 ]
  %1974 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1975 = extractvalue %dx.types.CBufRet.i32 %1974, 1
  %1976 = call i32 @dx.op.tertiary.i32(i32 49, i32 %351, i32 %1975, i32 %1968)  ; UMad(a,b,c)
  %1977 = shl i32 %1976, 2
  %1978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.i32 %1978, 0
  %1980 = icmp eq i32 %1979, 0
  br i1 %1980, label %2123, label %1981

; <label>:1981                                    ; preds = %1967
  br label %1982

; <label>:1982                                    ; preds = %2109, %1981
  %1983 = phi i32 [ %1993, %2109 ], [ %1979, %1981 ]
  %1984 = phi float [ %2115, %2109 ], [ %1969, %1981 ]
  %1985 = phi float [ %2116, %2109 ], [ %1970, %1981 ]
  %1986 = phi float [ %2117, %2109 ], [ %1971, %1981 ]
  %1987 = phi float [ %2119, %2109 ], [ %1972, %1981 ]
  %1988 = phi float [ %2120, %2109 ], [ %1973, %1981 ]
  %1989 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1983)  ; FirstbitLo(value)
  %1990 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1968, i32 %1989)  ; UMad(a,b,c)
  %1991 = and i32 %1989, 31
  %1992 = shl i32 1, %1991
  %1993 = xor i32 %1992, %1983
  %1994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1990, i32 0)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.f32 %1994, 0
  %1996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1990, i32 4)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.f32 %1996, 0
  %1998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1990, i32 16)  ; BufferLoad(srv,index,wot)
  %1999 = extractvalue %dx.types.ResRet.f32 %1998, 0
  %2000 = extractvalue %dx.types.ResRet.f32 %1998, 1
  %2001 = extractvalue %dx.types.ResRet.f32 %1998, 2
  %2002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1990, i32 28)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.f32 %2002, 0
  %2004 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1990, i32 32)  ; BufferLoad(srv,index,wot)
  %2005 = extractvalue %dx.types.ResRet.f32 %2004, 0
  %2006 = extractvalue %dx.types.ResRet.f32 %2004, 1
  %2007 = extractvalue %dx.types.ResRet.f32 %2004, 2
  %2008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1990, i32 44)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.f32 %2008, 0
  %2010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1990, i32 48)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.f32 %2010, 0
  %2012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1990, i32 52)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.f32 %2012, 0
  %2014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1990, i32 56)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.f32 %2014, 0
  %2016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1990, i32 64)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.f32 %2016, 0
  %2018 = extractvalue %dx.types.ResRet.f32 %2016, 1
  %2019 = extractvalue %dx.types.ResRet.f32 %2016, 2
  %2020 = mul i32 %1990, 60
  %2021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.f32 %2021, 0
  %2023 = extractvalue %dx.types.ResRet.f32 %2021, 1
  %2024 = extractvalue %dx.types.ResRet.f32 %2021, 2
  %2025 = add i32 %2020, 12
  %2026 = add i32 %2020, 48
  %2027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2026, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.f32 %2027, 2
  %2029 = fsub fast float %190, %2022
  %2030 = fsub fast float %191, %2023
  %2031 = fsub fast float %192, %2024
  %2032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2025, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.f32 %2032, 0
  %2034 = extractvalue %dx.types.ResRet.f32 %2032, 1
  %2035 = extractvalue %dx.types.ResRet.f32 %2032, 2
  %2036 = call float @dx.op.dot3.f32(i32 55, float %2029, float %2030, float %2031, float %2033, float %2034, float %2035)  ; Dot3(ax,ay,az,bx,by,bz)
  %2037 = add i32 %2020, 24
  %2038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.f32 %2038, 0
  %2040 = extractvalue %dx.types.ResRet.f32 %2038, 1
  %2041 = extractvalue %dx.types.ResRet.f32 %2038, 2
  %2042 = call float @dx.op.dot3.f32(i32 55, float %2029, float %2030, float %2031, float %2039, float %2040, float %2041)  ; Dot3(ax,ay,az,bx,by,bz)
  %2043 = add i32 %2020, 36
  %2044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.f32 %2044, 0
  %2046 = extractvalue %dx.types.ResRet.f32 %2044, 1
  %2047 = extractvalue %dx.types.ResRet.f32 %2044, 2
  %2048 = call float @dx.op.dot3.f32(i32 55, float %2029, float %2030, float %2031, float %2045, float %2046, float %2047)  ; Dot3(ax,ay,az,bx,by,bz)
  %2049 = call float @dx.op.unary.f32(i32 6, float %2036)  ; FAbs(value)
  %2050 = call float @dx.op.unary.f32(i32 6, float %2042)  ; FAbs(value)
  %2051 = call float @dx.op.unary.f32(i32 6, float %2048)  ; FAbs(value)
  %2052 = fmul fast float %2049, %2009
  %2053 = fmul fast float %2050, %2009
  %2054 = fmul fast float %2051, %2009
  %2055 = fadd fast float %2052, %2005
  %2056 = fadd fast float %2053, %2006
  %2057 = fadd fast float %2054, %2007
  %2058 = call float @dx.op.unary.f32(i32 7, float %2055)  ; Saturate(value)
  %2059 = call float @dx.op.unary.f32(i32 7, float %2056)  ; Saturate(value)
  %2060 = call float @dx.op.unary.f32(i32 7, float %2057)  ; Saturate(value)
  %2061 = fmul fast float %2058, %2058
  %2062 = fmul fast float %2059, %2059
  %2063 = fadd fast float %2062, %2061
  %2064 = fmul fast float %2060, %2060
  %2065 = fadd fast float %2063, %2064
  %2066 = call float @dx.op.unary.f32(i32 24, float %2065)  ; Sqrt(value)
  %2067 = fsub fast float 1.000000e+00, %2066
  %2068 = call float @dx.op.unary.f32(i32 7, float %2067)  ; Saturate(value)
  %2069 = fmul fast float %2068, %1995
  %2070 = fmul fast float %2028, 2.000000e+00
  %2071 = fadd fast float %2048, %2028
  %2072 = call float @dx.op.binary.f32(i32 35, float %2071, float 0.000000e+00)  ; FMax(a,b)
  %2073 = call float @dx.op.binary.f32(i32 36, float %2072, float %2070)  ; FMin(a,b)
  %2074 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2073)  ; FMax(a,b)
  %2075 = fmul fast float %1997, 0x3FF7154760000000
  %2076 = fmul fast float %2075, %2074
  %2077 = call float @dx.op.unary.f32(i32 21, float %2076)  ; Exp(value)
  %2078 = fmul fast float %2069, %2077
  %2079 = fcmp fast oeq float %434, 0.000000e+00
  br i1 %2079, label %2085, label %2080, !dx.controlflow.hints !68

; <label>:2080                                    ; preds = %1982
  %2081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %2082 = extractvalue %dx.types.CBufRet.f32 %2081, 3
  %2083 = fmul fast float %2082, %434
  %2084 = call float @dx.op.unary.f32(i32 23, float %2083)  ; Log(value)
  br label %2085

; <label>:2085                                    ; preds = %2080, %1982
  %2086 = phi float [ %2084, %2080 ], [ 0.000000e+00, %1982 ]
  %2087 = fcmp fast oeq float %2011, 0.000000e+00
  br i1 %2087, label %2109, label %2088, !dx.controlflow.hints !95

; <label>:2088                                    ; preds = %2085
  %2089 = fmul fast float %2017, %2015
  %2090 = fmul fast float %2018, %2015
  %2091 = fmul fast float %2019, %2015
  %2092 = fsub fast float %190, %2089
  %2093 = fsub fast float %191, %2090
  %2094 = fsub fast float %192, %2091
  %2095 = fmul fast float %2092, %2011
  %2096 = fmul fast float %2093, %2011
  %2097 = fmul fast float %2094, %2011
  %2098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %33, float %2095, float %2096, float %2097, float undef, i32 0, i32 0, i32 0, float %2086)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2099 = extractvalue %dx.types.ResRet.f32 %2098, 0
  %2100 = extractvalue %dx.types.ResRet.f32 %2098, 1
  %2101 = fdiv fast float 1.000000e+00, %2013
  %2102 = fmul fast float %2013, 2.000000e+00
  %2103 = fadd fast float %2102, -1.000000e+00
  %2104 = fadd fast float %2103, %2100
  %2105 = fadd fast float %2104, %2099
  %2106 = fmul fast float %2105, %2101
  %2107 = fadd fast float %2106, -1.000000e+00
  %2108 = call float @dx.op.unary.f32(i32 7, float %2107)  ; Saturate(value)
  br label %2109

; <label>:2109                                    ; preds = %2088, %2085
  %2110 = phi float [ %2108, %2088 ], [ 1.000000e+00, %2085 ]
  %2111 = fmul fast float %2078, %2110
  %2112 = fmul fast float %2111, %1999
  %2113 = fmul fast float %2111, %2000
  %2114 = fmul fast float %2111, %2001
  %2115 = fadd fast float %2112, %1984
  %2116 = fadd fast float %2113, %1985
  %2117 = fadd fast float %2114, %1986
  %2118 = fmul fast float %2111, %2003
  %2119 = fadd fast float %2118, %1987
  %2120 = fadd fast float %2111, %1988
  %2121 = icmp eq i32 %1983, %1992
  br i1 %2121, label %2122, label %1982, !llvm.loop !96

; <label>:2122                                    ; preds = %2109
  br label %2123

; <label>:2123                                    ; preds = %2122, %1967
  %2124 = phi float [ %1969, %1967 ], [ %2115, %2122 ]
  %2125 = phi float [ %1970, %1967 ], [ %2116, %2122 ]
  %2126 = phi float [ %1971, %1967 ], [ %2117, %2122 ]
  %2127 = phi float [ %1972, %1967 ], [ %2119, %2122 ]
  %2128 = phi float [ %1973, %1967 ], [ %2120, %2122 ]
  %2129 = add i32 %1968, 1
  %2130 = icmp ult i32 %2129, %1975
  br i1 %2130, label %1967, label %2131, !llvm.loop !97

; <label>:2131                                    ; preds = %2123
  br label %2132

; <label>:2132                                    ; preds = %2131, %1962, %1955
  %2133 = phi float [ %1956, %1955 ], [ %1956, %1962 ], [ %2124, %2131 ]
  %2134 = phi float [ %1957, %1955 ], [ %1957, %1962 ], [ %2125, %2131 ]
  %2135 = phi float [ %1958, %1955 ], [ %1958, %1962 ], [ %2126, %2131 ]
  %2136 = phi float [ %1160, %1955 ], [ %1160, %1962 ], [ %2127, %2131 ]
  %2137 = phi float [ %1959, %1955 ], [ %1959, %1962 ], [ %2128, %2131 ]
  %2138 = fcmp fast ogt float %2137, 0.000000e+00
  br i1 %2138, label %2139, label %2930, !dx.controlflow.hints !98

; <label>:2139                                    ; preds = %2132
  %2140 = fdiv fast float 1.000000e+00, %2137
  %2141 = fmul fast float %2140, %2133
  %2142 = fmul fast float %2140, %2134
  %2143 = fmul fast float %2140, %2135
  %2144 = fmul fast float %2140, %2136
  %2145 = fmul fast float %2140, %659
  %2146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2147 = extractvalue %dx.types.CBufRet.f32 %2146, 0
  %2148 = fadd fast float %2147, -1.000000e+00
  %2149 = fmul fast float %2145, %2148
  %2150 = fadd fast float %2149, 1.000000e+00
  %2151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2152 = extractvalue %dx.types.CBufRet.f32 %2151, 0
  %2153 = extractvalue %dx.types.CBufRet.f32 %2151, 1
  %2154 = extractvalue %dx.types.CBufRet.f32 %2151, 2
  %2155 = fsub fast float %192, %2154
  %2156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2157 = extractvalue %dx.types.CBufRet.f32 %2156, 3
  %2158 = fcmp fast oeq float %2157, 0.000000e+00
  br i1 %2158, label %2901, label %2159, !dx.controlflow.hints !99

; <label>:2159                                    ; preds = %2139
  %2160 = fsub fast float %191, %2153
  %2161 = fsub fast float %190, %2152
  %2162 = extractvalue %dx.types.CBufRet.f32 %2156, 0
  %2163 = extractvalue %dx.types.CBufRet.f32 %2156, 1
  %2164 = extractvalue %dx.types.CBufRet.f32 %2156, 2
  %2165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2166 = extractvalue %dx.types.CBufRet.f32 %2165, 0
  %2167 = extractvalue %dx.types.CBufRet.f32 %2165, 1
  %2168 = extractvalue %dx.types.CBufRet.f32 %2165, 2
  %2169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2170 = extractvalue %dx.types.CBufRet.f32 %2169, 2
  %2171 = fmul fast float %2170, %2162
  %2172 = fmul fast float %2170, %2163
  %2173 = fmul fast float %2170, %2164
  %2174 = fsub fast float %2161, %2171
  %2175 = fsub fast float %2160, %2172
  %2176 = fsub fast float %2155, %2173
  %2177 = fcmp fast olt float %2157, 0.000000e+00
  br i1 %2177, label %2709, label %2178, !dx.controlflow.hints !100

; <label>:2178                                    ; preds = %2159
  %2179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2180 = extractvalue %dx.types.CBufRet.f32 %2179, 0
  %2181 = extractvalue %dx.types.CBufRet.f32 %2179, 1
  %2182 = extractvalue %dx.types.CBufRet.f32 %2179, 2
  %2183 = extractvalue %dx.types.CBufRet.f32 %2179, 3
  %2184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2185 = extractvalue %dx.types.CBufRet.f32 %2184, 0
  %2186 = extractvalue %dx.types.CBufRet.f32 %2184, 1
  %2187 = extractvalue %dx.types.CBufRet.f32 %2184, 2
  %2188 = extractvalue %dx.types.CBufRet.f32 %2184, 3
  %2189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2190 = extractvalue %dx.types.CBufRet.f32 %2189, 0
  %2191 = extractvalue %dx.types.CBufRet.f32 %2189, 1
  %2192 = extractvalue %dx.types.CBufRet.f32 %2189, 2
  %2193 = extractvalue %dx.types.CBufRet.f32 %2189, 3
  %2194 = fmul fast float %2180, %2174
  %2195 = call float @dx.op.tertiary.f32(i32 46, float %2175, float %2181, float %2194)  ; FMad(a,b,c)
  %2196 = call float @dx.op.tertiary.f32(i32 46, float %2176, float %2182, float %2195)  ; FMad(a,b,c)
  %2197 = fadd fast float %2196, %2183
  %2198 = fmul fast float %2185, %2174
  %2199 = call float @dx.op.tertiary.f32(i32 46, float %2175, float %2186, float %2198)  ; FMad(a,b,c)
  %2200 = call float @dx.op.tertiary.f32(i32 46, float %2176, float %2187, float %2199)  ; FMad(a,b,c)
  %2201 = fadd fast float %2200, %2188
  %2202 = fmul fast float %2190, %2174
  %2203 = call float @dx.op.tertiary.f32(i32 46, float %2175, float %2191, float %2202)  ; FMad(a,b,c)
  %2204 = call float @dx.op.tertiary.f32(i32 46, float %2176, float %2192, float %2203)  ; FMad(a,b,c)
  %2205 = fadd fast float %2204, %2193
  %2206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2207 = extractvalue %dx.types.CBufRet.f32 %2206, 0
  %2208 = extractvalue %dx.types.CBufRet.f32 %2206, 1
  %2209 = extractvalue %dx.types.CBufRet.f32 %2206, 3
  %2210 = fmul fast float %2209, %2197
  %2211 = fmul fast float %2209, %2201
  %2212 = fadd fast float %2210, %2207
  %2213 = fadd fast float %2211, %2208
  %2214 = extractvalue %dx.types.CBufRet.f32 %2206, 2
  %2215 = fcmp fast olt float %2214, 0.000000e+00
  %2216 = fsub fast float -0.000000e+00, %2214
  %2217 = select i1 %2215, float %2216, float %2214
  %2218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2219 = extractvalue %dx.types.CBufRet.f32 %2218, 1
  %2220 = fadd fast float %2217, %2219
  %2221 = fcmp fast ogt float %2220, 0.000000e+00
  br i1 %2221, label %2222, label %2253, !dx.controlflow.hints !101

; <label>:2222                                    ; preds = %2178
  %2223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2224 = extractvalue %dx.types.CBufRet.f32 %2223, 1
  %2225 = fsub fast float %2224, %2205
  %2226 = extractvalue %dx.types.CBufRet.f32 %2223, 2
  %2227 = fmul fast float %2225, %2226
  %2228 = fsub fast float 1.000000e+00, %2227
  %2229 = call float @dx.op.unary.f32(i32 7, float %2228)  ; Saturate(value)
  %2230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2231 = extractvalue %dx.types.CBufRet.f32 %2230, 0
  %2232 = extractvalue %dx.types.CBufRet.f32 %2230, 1
  %2233 = fsub fast float %2212, %2231
  %2234 = fsub fast float %2213, %2232
  %2235 = fcmp fast olt float %2233, 0.000000e+00
  %2236 = fcmp fast olt float %2234, 0.000000e+00
  %2237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.f32 %2237, 0
  %2239 = extractvalue %dx.types.CBufRet.f32 %2237, 1
  %2240 = extractvalue %dx.types.CBufRet.f32 %2237, 2
  %2241 = extractvalue %dx.types.CBufRet.f32 %2237, 3
  %2242 = select i1 %2235, float %2238, float %2240
  %2243 = select i1 %2236, float %2239, float %2241
  %2244 = fmul fast float %2242, %2233
  %2245 = fmul fast float %2243, %2234
  %2246 = call float @dx.op.unary.f32(i32 6, float %2244)  ; FAbs(value)
  %2247 = call float @dx.op.unary.f32(i32 6, float %2245)  ; FAbs(value)
  %2248 = extractvalue %dx.types.CBufRet.f32 %2169, 0
  %2249 = call float @dx.op.binary.f32(i32 35, float %2246, float %2247)  ; FMax(a,b)
  %2250 = fsub fast float %2248, %2249
  %2251 = call float @dx.op.unary.f32(i32 7, float %2250)  ; Saturate(value)
  %2252 = fmul fast float %2251, %2229
  br label %2253

; <label>:2253                                    ; preds = %2222, %2178
  %2254 = phi float [ %2252, %2222 ], [ 0.000000e+00, %2178 ]
  %2255 = call float @dx.op.binary.f32(i32 35, float %2254, float 0.000000e+00)  ; FMax(a,b)
  %2256 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2255)  ; FMax(a,b)
  %2257 = fcmp fast olt float %2256, 1.000000e+00
  br i1 %2257, label %2258, label %2656, !dx.controlflow.hints !102

; <label>:2258                                    ; preds = %2253
  %2259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2260 = extractvalue %dx.types.CBufRet.f32 %2259, 0
  %2261 = fcmp fast une float %2260, 0.000000e+00
  br i1 %2261, label %2262, label %2656, !dx.controlflow.hints !103

; <label>:2262                                    ; preds = %2258
  %2263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2264 = extractvalue %dx.types.CBufRet.f32 %2263, 0
  %2265 = extractvalue %dx.types.CBufRet.f32 %2263, 1
  %2266 = extractvalue %dx.types.CBufRet.f32 %2263, 2
  %2267 = extractvalue %dx.types.CBufRet.f32 %2263, 3
  %2268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2269 = extractvalue %dx.types.CBufRet.f32 %2268, 0
  %2270 = extractvalue %dx.types.CBufRet.f32 %2268, 1
  %2271 = extractvalue %dx.types.CBufRet.f32 %2268, 2
  %2272 = extractvalue %dx.types.CBufRet.f32 %2268, 3
  %2273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2274 = extractvalue %dx.types.CBufRet.f32 %2273, 0
  %2275 = extractvalue %dx.types.CBufRet.f32 %2273, 1
  %2276 = extractvalue %dx.types.CBufRet.f32 %2273, 2
  %2277 = extractvalue %dx.types.CBufRet.f32 %2273, 3
  %2278 = fmul fast float %2264, %2174
  %2279 = call float @dx.op.tertiary.f32(i32 46, float %2175, float %2265, float %2278)  ; FMad(a,b,c)
  %2280 = call float @dx.op.tertiary.f32(i32 46, float %2176, float %2266, float %2279)  ; FMad(a,b,c)
  %2281 = fadd fast float %2280, %2267
  %2282 = fmul fast float %2269, %2174
  %2283 = call float @dx.op.tertiary.f32(i32 46, float %2175, float %2270, float %2282)  ; FMad(a,b,c)
  %2284 = call float @dx.op.tertiary.f32(i32 46, float %2176, float %2271, float %2283)  ; FMad(a,b,c)
  %2285 = fadd fast float %2284, %2272
  %2286 = fmul fast float %2274, %2174
  %2287 = call float @dx.op.tertiary.f32(i32 46, float %2175, float %2275, float %2286)  ; FMad(a,b,c)
  %2288 = call float @dx.op.tertiary.f32(i32 46, float %2176, float %2276, float %2287)  ; FMad(a,b,c)
  %2289 = fadd fast float %2288, %2277
  %2290 = fcmp fast oge float %2281, 1.000000e+00
  %2291 = fcmp fast oge float %2285, 1.000000e+00
  %2292 = or i1 %2290, %2291
  %2293 = fcmp fast olt float %2281, 0.000000e+00
  %2294 = fcmp fast olt float %2285, 0.000000e+00
  %2295 = or i1 %2293, %2294
  %2296 = or i1 %2292, %2295
  br i1 %2296, label %2656, label %2297, !dx.controlflow.hints !104

; <label>:2297                                    ; preds = %2262
  %2298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2299 = extractvalue %dx.types.CBufRet.f32 %2298, 0
  %2300 = extractvalue %dx.types.CBufRet.f32 %2298, 1
  %2301 = extractvalue %dx.types.CBufRet.f32 %2298, 2
  %2302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2303 = extractvalue %dx.types.CBufRet.i32 %2302, 2
  %2304 = uitofp i32 %2303 to float
  %2305 = extractvalue %dx.types.CBufRet.i32 %2302, 3
  %2306 = uitofp i32 %2305 to float
  %2307 = extractvalue %dx.types.CBufRet.f32 %2298, 3
  %2308 = fmul fast float %2307, 2.000000e+00
  %2309 = fsub fast float %2281, %2299
  %2310 = fsub fast float %2285, %2300
  %2311 = fmul fast float %2308, %2309
  %2312 = fmul fast float %2308, %2310
  %2313 = fdiv fast float 1.000000e+00, %2164
  %2314 = fmul fast float %2312, %2313
  %2315 = call float @dx.op.unary.f32(i32 6, float %2314)  ; FAbs(value)
  %2316 = fmul fast float %2301, %2176
  %2317 = fmul fast float %2316, %2308
  %2318 = call float @dx.op.unary.f32(i32 6, float %2317)  ; FAbs(value)
  %2319 = call float @dx.op.unary.f32(i32 6, float %2311)  ; FAbs(value)
  %2320 = call float @dx.op.binary.f32(i32 35, float %2318, float %2315)  ; FMax(a,b)
  %2321 = call float @dx.op.binary.f32(i32 35, float %2319, float %2320)  ; FMax(a,b)
  %2322 = fmul fast float %2321, 2.000000e+00
  %2323 = call float @dx.op.unary.f32(i32 23, float %2322)  ; Log(value)
  %2324 = call float @dx.op.binary.f32(i32 35, float %2323, float %2304)  ; FMax(a,b)
  %2325 = call float @dx.op.unary.f32(i32 22, float %2324)  ; Frc(value)
  %2326 = fadd fast float %2325, 0xBFEA666660000000
  %2327 = fmul fast float %2326, 8.000000e+00
  %2328 = call float @dx.op.unary.f32(i32 7, float %2327)  ; Saturate(value)
  %2329 = call float @dx.op.unary.f32(i32 27, float %2324)  ; Round_ni(value)
  %2330 = fadd fast float %2329, %2328
  %2331 = call float @dx.op.binary.f32(i32 36, float %2330, float %2306)  ; FMin(a,b)
  %2332 = call float @dx.op.unary.f32(i32 27, float %2331)  ; Round_ni(value)
  %2333 = fsub fast float -0.000000e+00, %2332
  %2334 = call float @dx.op.unary.f32(i32 21, float %2333)  ; Exp(value)
  %2335 = fmul fast float %2334, %2308
  %2336 = fmul fast float %2335, %2281
  %2337 = fmul fast float %2335, %2285
  %2338 = fmul fast float %2336, 2.500000e-01
  %2339 = fmul fast float %2337, 2.500000e-01
  %2340 = fadd fast float %2338, 5.000000e-01
  %2341 = fadd fast float %2339, 5.000000e-01
  %2342 = fsub fast float %2306, %2304
  %2343 = fptoui float %2342 to i32
  %2344 = add i32 %2343, 320
  %2345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %2344)  ; CBufferLoadLegacy(handle,regIndex)
  %2346 = extractvalue %dx.types.CBufRet.f32 %2345, 0
  %2347 = extractvalue %dx.types.CBufRet.f32 %2345, 1
  %2348 = fcmp fast une float %2331, %2306
  %2349 = fsub fast float %2281, %2346
  %2350 = fsub fast float %2285, %2347
  %2351 = call float @dx.op.unary.f32(i32 6, float %2349)  ; FAbs(value)
  %2352 = call float @dx.op.unary.f32(i32 6, float %2350)  ; FAbs(value)
  %2353 = fmul fast float %2351, %2335
  %2354 = fmul fast float %2352, %2335
  %2355 = fcmp fast olt float %2353, 1.000000e+00
  %2356 = fcmp fast olt float %2354, 1.000000e+00
  %2357 = and i1 %2355, %2356
  %2358 = or i1 %2348, %2357
  br i1 %2358, label %2359, label %2656, !dx.controlflow.hints !105

; <label>:2359                                    ; preds = %2297
  %2360 = fmul fast float %2337, 5.000000e-01
  %2361 = fmul fast float %2336, 5.000000e-01
  %2362 = fadd fast float %2360, 5.000000e-01
  %2363 = fadd fast float %2361, 5.000000e-01
  %2364 = sitofp i32 %2303 to float
  %2365 = fsub fast float %2331, %2364
  %2366 = call float @dx.op.unary.f32(i32 27, float %2365)  ; Round_ni(value)
  %2367 = call float @dx.op.unary.f32(i32 22, float %2331)  ; Frc(value)
  %2368 = call float @dx.op.unary.f32(i32 22, float %2363)  ; Frc(value)
  %2369 = call float @dx.op.unary.f32(i32 22, float %2362)  ; Frc(value)
  %2370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %35, float %2368, float %2369, float %2366, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2371 = extractvalue %dx.types.ResRet.f32 %2370, 0
  %2372 = extractvalue %dx.types.ResRet.f32 %2370, 1
  %2373 = extractvalue %dx.types.ResRet.f32 %2370, 2
  %2374 = extractvalue %dx.types.ResRet.f32 %2370, 3
  %2375 = fcmp fast ogt float %2367, 0.000000e+00
  br i1 %2375, label %2376, label %2397, !dx.controlflow.hints !106

; <label>:2376                                    ; preds = %2359
  %2377 = fadd fast float %2366, 1.000000e+00
  %2378 = call float @dx.op.unary.f32(i32 22, float %2340)  ; Frc(value)
  %2379 = call float @dx.op.unary.f32(i32 22, float %2341)  ; Frc(value)
  %2380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %35, float %2378, float %2379, float %2377, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2381 = extractvalue %dx.types.ResRet.f32 %2380, 0
  %2382 = extractvalue %dx.types.ResRet.f32 %2380, 1
  %2383 = extractvalue %dx.types.ResRet.f32 %2380, 2
  %2384 = extractvalue %dx.types.ResRet.f32 %2380, 3
  %2385 = fsub fast float %2381, %2371
  %2386 = fsub fast float %2382, %2372
  %2387 = fsub fast float %2383, %2373
  %2388 = fsub fast float %2384, %2374
  %2389 = fmul fast float %2385, %2367
  %2390 = fmul fast float %2386, %2367
  %2391 = fmul fast float %2387, %2367
  %2392 = fmul fast float %2388, %2367
  %2393 = fadd fast float %2389, %2371
  %2394 = fadd fast float %2390, %2372
  %2395 = fadd fast float %2391, %2373
  %2396 = fadd fast float %2392, %2374
  br label %2397

; <label>:2397                                    ; preds = %2376, %2359
  %2398 = phi float [ %2393, %2376 ], [ %2371, %2359 ]
  %2399 = phi float [ %2394, %2376 ], [ %2372, %2359 ]
  %2400 = phi float [ %2395, %2376 ], [ %2373, %2359 ]
  %2401 = phi float [ %2396, %2376 ], [ %2374, %2359 ]
  %2402 = fadd fast float %2398, -5.000000e-01
  %2403 = fadd fast float %2400, -5.000000e-01
  %2404 = fmul fast float %2402, 0xBFD5555560000000
  %2405 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2403, float %2404)  ; FMad(a,b,c)
  %2406 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2399, float 0.000000e+00)  ; FMad(a,b,c)
  %2407 = fadd fast float %2406, %2401
  %2408 = fmul fast float %2402, -7.500000e-01
  %2409 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2403, float %2408)  ; FMad(a,b,c)
  %2410 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2399, float 0.000000e+00)  ; FMad(a,b,c)
  %2411 = fadd fast float %2410, %2401
  %2412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2413 = extractvalue %dx.types.CBufRet.f32 %2412, 0
  %2414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2415 = extractvalue %dx.types.CBufRet.f32 %2414, 0
  %2416 = extractvalue %dx.types.CBufRet.f32 %2414, 1
  %2417 = extractvalue %dx.types.CBufRet.f32 %2414, 2
  %2418 = extractvalue %dx.types.CBufRet.f32 %2414, 3
  %2419 = fsub fast float %2415, %2405
  %2420 = fsub fast float %2416, %2407
  %2421 = fsub fast float %2417, %2409
  %2422 = fsub fast float %2418, %2411
  %2423 = fmul fast float %2419, %2413
  %2424 = fmul fast float %2420, %2413
  %2425 = fmul fast float %2421, %2413
  %2426 = fmul fast float %2422, %2413
  %2427 = fadd fast float %2423, %2405
  %2428 = fadd fast float %2424, %2407
  %2429 = fadd fast float %2425, %2409
  %2430 = fadd fast float %2426, %2411
  %2431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2432 = extractvalue %dx.types.ResRet.i32 %2431, 0
  %2433 = and i32 %2432, 536870911
  %2434 = uitofp i32 %2433 to float
  %2435 = fmul fast float %2434, %2281
  %2436 = fmul fast float %2434, %2285
  %2437 = fptoui float %2435 to i32
  %2438 = fptoui float %2436 to i32
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = and i32 %2440, 31
  %2442 = lshr i32 %2437, %2441
  %2443 = lshr i32 %2438, %2441
  %2444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2445 = extractvalue %dx.types.ResRet.i32 %2444, 0
  %2446 = and i32 %2445, 31
  %2447 = shl i32 1, %2446
  %2448 = call i32 @dx.op.binary.i32(i32 40, i32 %2447, i32 4)  ; UMin(a,b)
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = extractvalue %dx.types.ResRet.i32 %2449, 1
  %2452 = icmp eq i32 %2448, 0
  br i1 %2452, label %2494, label %2453

; <label>:2453                                    ; preds = %2397
  br label %2454

; <label>:2454                                    ; preds = %2482, %2453
  %2455 = phi i32 [ %2485, %2482 ], [ 0, %2453 ]
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = lshr i32 %2457, 16
  %2459 = and i32 %2458, 31
  %2460 = shl i32 %2443, %2459
  %2461 = add i32 %2460, %2442
  %2462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.i32 %2462, 0
  %2464 = and i32 %2463, 31
  %2465 = shl i32 %2461, %2464
  %2466 = add i32 %2465, %2455
  %2467 = shl i32 %2466, 2
  %2468 = add i32 %2467, 32
  %2469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2468, i32 undef)  ; BufferLoad(srv,index,wot)
  %2470 = extractvalue %dx.types.ResRet.i32 %2469, 0
  %2471 = icmp slt i32 %2470, 0
  %2472 = getelementptr [12 x float], [12 x float]* %46, i32 0, i32 %2455
  %2473 = getelementptr [12 x float], [12 x float]* %47, i32 0, i32 %2455
  %2474 = bitcast float* %2472 to i32*
  %2475 = bitcast float* %2473 to i32*
  br i1 %2471, label %2476, label %2482, !dx.controlflow.hints !107

; <label>:2476                                    ; preds = %2454
  %2477 = and i32 %2470, 1073741823
  %2478 = add nuw nsw i32 %2477, 20
  %2479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2478, i32 undef)  ; BufferLoad(srv,index,wot)
  %2480 = extractvalue %dx.types.ResRet.i32 %2479, 0
  %2481 = extractvalue %dx.types.ResRet.i32 %2479, 1
  br label %2482

; <label>:2482                                    ; preds = %2476, %2454
  %2483 = phi i32 [ %2480, %2476 ], [ %2450, %2454 ]
  %2484 = phi i32 [ %2481, %2476 ], [ %2451, %2454 ]
  store i32 %2483, i32* %2474, align 4
  store i32 %2484, i32* %2475, align 4
  %2485 = add nuw i32 %2455, 1
  %2486 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2487 = extractvalue %dx.types.CBufRet.i32 %2486, 2
  %2488 = icmp eq i32 %2487, 0
  %2489 = icmp ugt i32 %2470, -1073741825
  %2490 = and i1 %2489, %2488
  %2491 = icmp ult i32 %2485, %2448
  %2492 = and i1 %2490, %2491
  br i1 %2492, label %2454, label %2493, !dx.controlflow.hints !108

; <label>:2493                                    ; preds = %2482
  br label %2494

; <label>:2494                                    ; preds = %2493, %2397
  %2495 = phi i32 [ 0, %2397 ], [ %2485, %2493 ]
  %2496 = extractvalue %dx.types.CBufRet.f32 %2259, 2
  %2497 = fptoui float %2496 to i32
  %2498 = icmp eq i32 %2497, 0
  br i1 %2498, label %2550, label %2499

; <label>:2499                                    ; preds = %2494
  br label %2500

; <label>:2500                                    ; preds = %2545, %2499
  %2501 = phi i32 [ %2546, %2545 ], [ %2495, %2499 ]
  %2502 = phi i32 [ %2547, %2545 ], [ 0, %2499 ]
  %2503 = lshr i32 %2502, 2
  %2504 = and i32 %2502, 3
  %2505 = add nuw nsw i32 %2503, 83
  %2506 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 %2505)  ; CBufferLoadLegacy(handle,regIndex)
  %2507 = extractvalue %dx.types.CBufRet.i32 %2506, 0
  %2508 = extractvalue %dx.types.CBufRet.i32 %2506, 1
  %2509 = extractvalue %dx.types.CBufRet.i32 %2506, 2
  %2510 = extractvalue %dx.types.CBufRet.i32 %2506, 3
  %2511 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 0
  store i32 %2507, i32* %2511, align 4
  %2512 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 1
  store i32 %2508, i32* %2512, align 4
  %2513 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 2
  store i32 %2509, i32* %2513, align 4
  %2514 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 3
  store i32 %2510, i32* %2514, align 4
  %2515 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 %2504
  %2516 = load i32, i32* %2515, align 4, !tbaa !109, !noalias !113
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = lshr i32 %2518, 16
  %2520 = and i32 %2519, 31
  %2521 = shl i32 %2443, %2520
  %2522 = add i32 %2521, %2442
  %2523 = shl i32 %2522, 2
  %2524 = add i32 %2523, %2516
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2524, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = icmp eq i32 %2526, 0
  br i1 %2527, label %2545, label %2528, !dx.controlflow.hints !123

; <label>:2528                                    ; preds = %2500
  %2529 = icmp slt i32 %2526, 0
  %2530 = getelementptr [12 x float], [12 x float]* %46, i32 0, i32 %2501
  %2531 = getelementptr [12 x float], [12 x float]* %47, i32 0, i32 %2501
  %2532 = bitcast float* %2530 to i32*
  %2533 = bitcast float* %2531 to i32*
  br i1 %2529, label %2534, label %2541, !dx.controlflow.hints !124

; <label>:2534                                    ; preds = %2528
  %2535 = and i32 %2526, 1073741823
  %2536 = add i32 %2516, 20
  %2537 = add i32 %2536, %2535
  %2538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2537, i32 undef)  ; BufferLoad(srv,index,wot)
  %2539 = extractvalue %dx.types.ResRet.i32 %2538, 0
  %2540 = extractvalue %dx.types.ResRet.i32 %2538, 1
  br label %2541

; <label>:2541                                    ; preds = %2534, %2528
  %2542 = phi i32 [ %2539, %2534 ], [ %2450, %2528 ]
  %2543 = phi i32 [ %2540, %2534 ], [ %2451, %2528 ]
  store i32 %2542, i32* %2532, align 4
  store i32 %2543, i32* %2533, align 4
  %2544 = add i32 %2501, 1
  br label %2545

; <label>:2545                                    ; preds = %2541, %2500
  %2546 = phi i32 [ %2501, %2500 ], [ %2544, %2541 ]
  %2547 = add nuw i32 %2502, 1
  %2548 = icmp eq i32 %2547, %2497
  br i1 %2548, label %2549, label %2500

; <label>:2549                                    ; preds = %2545
  br label %2550

; <label>:2550                                    ; preds = %2549, %2494
  %2551 = phi i32 [ %2495, %2494 ], [ %2546, %2549 ]
  %2552 = icmp eq i32 %2551, 1
  %2553 = getelementptr [12 x float], [12 x float]* %46, i32 0, i32 0
  %2554 = getelementptr [12 x float], [12 x float]* %47, i32 0, i32 0
  br i1 %2552, label %2555, label %2558, !dx.controlflow.hints !125

; <label>:2555                                    ; preds = %2550
  %2556 = load float, float* %2553, align 4
  %2557 = load float, float* %2554, align 4
  br label %2585

; <label>:2558                                    ; preds = %2550
  %2559 = load float, float* %2553, align 4
  %2560 = load float, float* %2554, align 4
  %2561 = fdiv fast float 1.000000e+00, %2560
  %2562 = fsub fast float %2559, %2561
  %2563 = icmp ugt i32 %2551, 1
  br i1 %2563, label %2564, label %2580

; <label>:2564                                    ; preds = %2558
  br label %2565

; <label>:2565                                    ; preds = %2565, %2564
  %2566 = phi float [ %2575, %2565 ], [ %2562, %2564 ]
  %2567 = phi float [ %2576, %2565 ], [ %2559, %2564 ]
  %2568 = phi i32 [ %2577, %2565 ], [ 1, %2564 ]
  %2569 = getelementptr [12 x float], [12 x float]* %46, i32 0, i32 %2568
  %2570 = load float, float* %2569, align 4
  %2571 = getelementptr [12 x float], [12 x float]* %47, i32 0, i32 %2568
  %2572 = load float, float* %2571, align 4
  %2573 = fdiv fast float 1.000000e+00, %2572
  %2574 = fsub fast float %2570, %2573
  %2575 = call float @dx.op.binary.f32(i32 36, float %2566, float %2574)  ; FMin(a,b)
  %2576 = call float @dx.op.binary.f32(i32 35, float %2567, float %2570)  ; FMax(a,b)
  %2577 = add nuw i32 %2568, 1
  %2578 = icmp eq i32 %2577, %2551
  br i1 %2578, label %2579, label %2565

; <label>:2579                                    ; preds = %2565
  br label %2580

; <label>:2580                                    ; preds = %2579, %2558
  %2581 = phi float [ %2562, %2558 ], [ %2575, %2579 ]
  %2582 = phi float [ %2559, %2558 ], [ %2576, %2579 ]
  %2583 = fsub fast float %2582, %2581
  %2584 = fdiv fast float 1.000000e+00, %2583
  br label %2585

; <label>:2585                                    ; preds = %2580, %2555
  %2586 = phi float [ %2556, %2555 ], [ %2582, %2580 ]
  %2587 = phi float [ %2557, %2555 ], [ %2584, %2580 ]
  %2588 = fadd fast float %2289, %2586
  %2589 = fmul fast float %2588, %2587
  %2590 = call float @dx.op.unary.f32(i32 7, float %2589)  ; Saturate(value)
  %2591 = fmul fast float %2590, 2.000000e+00
  %2592 = fsub fast float 1.000000e+00, %2591
  %2593 = fmul fast float %2427, %2427
  %2594 = fsub fast float %2428, %2593
  %2595 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2594)  ; FMax(a,b)
  %2596 = fdiv fast float 1.000000e+00, %2595
  %2597 = fmul fast float %2428, %2427
  %2598 = fsub fast float %2429, %2597
  %2599 = fsub fast float %2592, %2427
  %2600 = fmul fast float %2592, %2592
  %2601 = fsub fast float %2600, %2428
  %2602 = fmul fast float %2596, %2598
  %2603 = fmul fast float %2602, %2599
  %2604 = fsub fast float %2601, %2603
  %2605 = fmul fast float %2428, %2428
  %2606 = fsub fast float %2430, %2605
  %2607 = fmul fast float %2598, %2598
  %2608 = fmul fast float %2607, %2596
  %2609 = fsub fast float %2606, %2608
  %2610 = fdiv fast float %2604, %2609
  %2611 = fmul fast float %2610, %2598
  %2612 = fsub fast float %2599, %2611
  %2613 = fmul fast float %2612, %2596
  %2614 = fmul fast float %2613, %2427
  %2615 = fsub fast float 1.000000e+00, %2614
  %2616 = fmul fast float %2610, %2428
  %2617 = fsub fast float %2615, %2616
  %2618 = fmul fast float %2613, %2613
  %2619 = fmul fast float %2610, 4.000000e+00
  %2620 = fmul fast float %2619, %2617
  %2621 = fsub fast float %2618, %2620
  %2622 = call float @dx.op.unary.f32(i32 24, float %2621)  ; Sqrt(value)
  %2623 = fcmp fast oge float %2613, 0.000000e+00
  %2624 = fsub fast float -0.000000e+00, %2622
  %2625 = select i1 %2623, float %2624, float %2622
  %2626 = fsub fast float %2625, %2613
  %2627 = fdiv fast float %2626, %2610
  %2628 = fdiv fast float %2617, %2626
  %2629 = fmul fast float %2627, 5.000000e-01
  %2630 = fmul fast float %2628, 2.000000e+00
  %2631 = select i1 %2623, float %2629, float %2630
  %2632 = select i1 %2623, float %2630, float %2629
  %2633 = call float @dx.op.binary.f32(i32 35, float %2631, float %2632)  ; FMax(a,b)
  %2634 = call float @dx.op.binary.f32(i32 36, float %2631, float %2632)  ; FMin(a,b)
  %2635 = fcmp fast ogt float %2592, %2633
  %2636 = fsub fast float %2592, %2634
  %2637 = fsub fast float %2592, %2633
  %2638 = fsub fast float %2633, %2634
  %2639 = select i1 %2635, float %2637, float %2638
  %2640 = fmul float %2636, %2639
  %2641 = select i1 %2635, float %2634, float %2592
  %2642 = fcmp fast ogt float %2592, %2634
  %2643 = fmul fast float %2641, %2633
  %2644 = fadd fast float %2641, %2633
  %2645 = fmul fast float %2644, %2427
  %2646 = fadd fast float %2643, %2428
  %2647 = fsub fast float %2646, %2645
  %2648 = fdiv fast float %2647, %2640
  %2649 = select i1 %2642, float %2648, float 0.000000e+00
  %2650 = fsub fast float 1.000000e+00, %2649
  %2651 = select i1 %2635, float %2650, float %2649
  %2652 = call float @dx.op.unary.f32(i32 7, float %2651)  ; Saturate(value)
  %2653 = extractvalue %dx.types.CBufRet.f32 %2412, 3
  %2654 = fmul fast float %2653, %2652
  %2655 = fsub fast float 1.000000e+00, %2654
  br label %2656

; <label>:2656                                    ; preds = %2585, %2297, %2262, %2258, %2253
  %2657 = phi float [ 1.000000e+00, %2253 ], [ %2655, %2585 ], [ 1.000000e+00, %2262 ], [ 1.000000e+00, %2297 ], [ 1.000000e+00, %2258 ]
  %2658 = fcmp fast ogt float %2254, 0.000000e+00
  br i1 %2658, label %2659, label %2665, !dx.controlflow.hints !126

; <label>:2659                                    ; preds = %2656
  %2660 = fadd fast float %2219, %2205
  %2661 = call float @dx.op.binary.f32(i32 35, float %2660, float 0.000000e+00)  ; FMax(a,b)
  %2662 = fadd fast float %2661, 0x3F10000000000000
  %2663 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %37, float %2212, float %2213, float undef, float undef, i32 0, i32 0, i32 undef, float %2662)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2664 = extractvalue %dx.types.ResRet.f32 %2663, 0
  br label %2665

; <label>:2665                                    ; preds = %2659, %2656
  %2666 = phi float [ %2664, %2659 ], [ 1.000000e+00, %2656 ]
  %2667 = fsub fast float %2666, %2657
  %2668 = fmul fast float %2667, %2254
  %2669 = fadd fast float %2668, %2657
  %2670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2671 = extractvalue %dx.types.CBufRet.f32 %2670, 2
  %2672 = fcmp fast ogt float %2671, 0.000000e+00
  br i1 %2672, label %2673, label %2709, !dx.controlflow.hints !127

; <label>:2673                                    ; preds = %2665
  %2674 = fcmp fast ugt float %2671, 0.000000e+00
  br i1 %2674, label %2675, label %2706, !dx.controlflow.hints !128

; <label>:2675                                    ; preds = %2673
  %2676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2677 = extractvalue %dx.types.CBufRet.f32 %2676, 0
  %2678 = extractvalue %dx.types.CBufRet.f32 %2676, 1
  %2679 = extractvalue %dx.types.CBufRet.f32 %2676, 2
  %2680 = extractvalue %dx.types.CBufRet.f32 %2676, 3
  %2681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2682 = extractvalue %dx.types.CBufRet.f32 %2681, 0
  %2683 = extractvalue %dx.types.CBufRet.f32 %2681, 1
  %2684 = extractvalue %dx.types.CBufRet.f32 %2681, 2
  %2685 = extractvalue %dx.types.CBufRet.f32 %2681, 3
  %2686 = extractvalue %dx.types.CBufRet.f32 %2670, 0
  %2687 = extractvalue %dx.types.CBufRet.f32 %2670, 1
  %2688 = fadd fast float %2152, %2174
  %2689 = fadd fast float %2153, %2175
  %2690 = fadd fast float %2154, %2176
  %2691 = fmul fast float %2688, %2677
  %2692 = call float @dx.op.tertiary.f32(i32 46, float %2678, float %2689, float %2691)  ; FMad(a,b,c)
  %2693 = call float @dx.op.tertiary.f32(i32 46, float %2679, float %2690, float %2692)  ; FMad(a,b,c)
  %2694 = fadd fast float %2693, %2680
  %2695 = fmul fast float %2688, %2682
  %2696 = call float @dx.op.tertiary.f32(i32 46, float %2683, float %2689, float %2695)  ; FMad(a,b,c)
  %2697 = call float @dx.op.tertiary.f32(i32 46, float %2684, float %2690, float %2696)  ; FMad(a,b,c)
  %2698 = fadd fast float %2697, %2685
  %2699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %33, float %2694, float %2698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2700 = extractvalue %dx.types.ResRet.f32 %2699, 0
  %2701 = fmul fast float %2700, %2687
  %2702 = fadd fast float %2701, %2686
  %2703 = call float @dx.op.unary.f32(i32 7, float %2702)  ; Saturate(value)
  %2704 = fmul fast float %2703, %2671
  %2705 = fsub fast float 1.000000e+00, %2704
  br label %2706

; <label>:2706                                    ; preds = %2675, %2673
  %2707 = phi float [ %2705, %2675 ], [ 1.000000e+00, %2673 ]
  %2708 = fmul fast float %2707, %2669
  br label %2709

; <label>:2709                                    ; preds = %2706, %2665, %2159
  %2710 = phi float [ 1.000000e+00, %2159 ], [ %2708, %2706 ], [ %2669, %2665 ]
  %2711 = call float @dx.op.binary.f32(i32 36, float %2710, float %2710)  ; FMin(a,b)
  %2712 = call float @dx.op.binary.f32(i32 36, float %2710, float %2711)  ; FMin(a,b)
  %2713 = fcmp fast ogt float %2712, 0.000000e+00
  br i1 %2713, label %2714, label %2872, !dx.controlflow.hints !129

; <label>:2714                                    ; preds = %2709
  %2715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2716 = extractvalue %dx.types.CBufRet.f32 %2715, 0
  %2717 = extractvalue %dx.types.CBufRet.f32 %2715, 1
  %2718 = extractvalue %dx.types.CBufRet.f32 %2715, 2
  %2719 = extractvalue %dx.types.CBufRet.f32 %2715, 3
  %2720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2721 = extractvalue %dx.types.CBufRet.f32 %2720, 0
  %2722 = extractvalue %dx.types.CBufRet.f32 %2720, 1
  %2723 = extractvalue %dx.types.CBufRet.f32 %2720, 2
  %2724 = extractvalue %dx.types.CBufRet.f32 %2720, 3
  %2725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2726 = extractvalue %dx.types.CBufRet.f32 %2725, 0
  %2727 = extractvalue %dx.types.CBufRet.f32 %2725, 1
  %2728 = extractvalue %dx.types.CBufRet.f32 %2725, 2
  %2729 = extractvalue %dx.types.CBufRet.f32 %2725, 3
  %2730 = fmul fast float %2716, %2174
  %2731 = call float @dx.op.tertiary.f32(i32 46, float %2175, float %2717, float %2730)  ; FMad(a,b,c)
  %2732 = call float @dx.op.tertiary.f32(i32 46, float %2176, float %2718, float %2731)  ; FMad(a,b,c)
  %2733 = fadd fast float %2732, %2719
  %2734 = fmul fast float %2721, %2174
  %2735 = call float @dx.op.tertiary.f32(i32 46, float %2175, float %2722, float %2734)  ; FMad(a,b,c)
  %2736 = call float @dx.op.tertiary.f32(i32 46, float %2176, float %2723, float %2735)  ; FMad(a,b,c)
  %2737 = fadd fast float %2736, %2724
  %2738 = fmul fast float %2726, %2174
  %2739 = call float @dx.op.tertiary.f32(i32 46, float %2175, float %2727, float %2738)  ; FMad(a,b,c)
  %2740 = call float @dx.op.tertiary.f32(i32 46, float %2176, float %2728, float %2739)  ; FMad(a,b,c)
  %2741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2742 = extractvalue %dx.types.CBufRet.f32 %2741, 0
  %2743 = extractvalue %dx.types.CBufRet.f32 %2741, 1
  %2744 = extractvalue %dx.types.CBufRet.f32 %2741, 3
  %2745 = fmul fast float %2744, %2733
  %2746 = fmul fast float %2744, %2737
  %2747 = fadd fast float %2745, %2742
  %2748 = fadd fast float %2746, %2743
  %2749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2750 = extractvalue %dx.types.CBufRet.f32 %2749, 0
  %2751 = extractvalue %dx.types.CBufRet.f32 %2749, 1
  %2752 = fsub fast float %2747, %2750
  %2753 = fsub fast float %2748, %2751
  %2754 = fcmp fast olt float %2752, 0.000000e+00
  %2755 = fcmp fast olt float %2753, 0.000000e+00
  %2756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2757 = extractvalue %dx.types.CBufRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.CBufRet.f32 %2756, 1
  %2759 = extractvalue %dx.types.CBufRet.f32 %2756, 2
  %2760 = extractvalue %dx.types.CBufRet.f32 %2756, 3
  %2761 = select i1 %2754, float %2757, float %2759
  %2762 = select i1 %2755, float %2758, float %2760
  %2763 = fmul fast float %2761, %2752
  %2764 = fmul fast float %2762, %2753
  %2765 = call float @dx.op.unary.f32(i32 6, float %2763)  ; FAbs(value)
  %2766 = call float @dx.op.unary.f32(i32 6, float %2764)  ; FAbs(value)
  %2767 = extractvalue %dx.types.CBufRet.f32 %2169, 0
  %2768 = call float @dx.op.binary.f32(i32 35, float %2765, float %2766)  ; FMax(a,b)
  %2769 = fsub fast float %2767, %2768
  %2770 = call float @dx.op.unary.f32(i32 7, float %2769)  ; Saturate(value)
  %2771 = fcmp fast ogt float %2770, 0.000000e+00
  br i1 %2771, label %2772, label %2813, !dx.controlflow.hints !130

; <label>:2772                                    ; preds = %2714
  %2773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %36, float %2747, float %2748, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2774 = extractvalue %dx.types.ResRet.f32 %2773, 1
  %2775 = fcmp fast ogt float %2774, 0.000000e+00
  br i1 %2775, label %2776, label %2809, !dx.controlflow.hints !131

; <label>:2776                                    ; preds = %2772
  %2777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %36, float %2747, float %2748, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2778 = extractvalue %dx.types.ResRet.f32 %2777, 0
  %2779 = extractvalue %dx.types.ResRet.f32 %2777, 1
  %2780 = extractvalue %dx.types.ResRet.f32 %2777, 2
  %2781 = extractvalue %dx.types.ResRet.f32 %2777, 3
  %2782 = fsub fast float 1.000000e+00, %2729
  %2783 = fsub fast float %2782, %2740
  %2784 = fmul fast float %2783, 0x400921FB60000000
  %2785 = fadd fast float %2784, 0x3FF921FB60000000
  %2786 = call float @dx.op.unary.f32(i32 13, float %2785)  ; Sin(value)
  %2787 = fadd fast float %2786, -1.000000e+00
  %2788 = fmul fast float %2787, 0x3FD45F3060000000
  %2789 = fmul fast float %2783, 0x401921FB60000000
  %2790 = fadd fast float %2789, 0x400921FB60000000
  %2791 = call float @dx.op.unary.f32(i32 13, float %2790)  ; Sin(value)
  %2792 = fadd fast float %2791, 0x3E7777A5C0000000
  %2793 = fmul fast float %2792, 0x3FC45F3060000000
  %2794 = fmul fast float %2783, 0x4022D97C80000000
  %2795 = fadd fast float %2794, 0x4012D97C80000000
  %2796 = call float @dx.op.unary.f32(i32 13, float %2795)  ; Sin(value)
  %2797 = fadd fast float %2796, 1.000000e+00
  %2798 = fmul fast float %2797, 0x3FBB2995E0000000
  %2799 = fmul fast float %2783, 0x402921FB60000000
  %2800 = fadd fast float %2799, 0x401921FB60000000
  %2801 = call float @dx.op.unary.f32(i32 13, float %2800)  ; Sin(value)
  %2802 = fadd fast float %2801, 0xBE8777A5C0000000
  %2803 = fmul fast float %2802, 0x3FB45F3060000000
  %2804 = call float @dx.op.dot4.f32(i32 56, float %2778, float %2779, float %2780, float %2781, float %2788, float %2793, float %2798, float %2803)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2805 = fmul fast float %2804, 0xBFF7154760000000
  %2806 = call float @dx.op.unary.f32(i32 21, float %2805)  ; Exp(value)
  %2807 = call float @dx.op.unary.f32(i32 7, float %2806)  ; Saturate(value)
  %2808 = fadd float %2807, -1.000000e+00
  br label %2809

; <label>:2809                                    ; preds = %2776, %2772
  %2810 = phi float [ %2808, %2776 ], [ 0.000000e+00, %2772 ]
  %2811 = fmul fast float %2810, %2770
  %2812 = fadd fast float %2811, 1.000000e+00
  br label %2813

; <label>:2813                                    ; preds = %2809, %2714
  %2814 = phi float [ %2812, %2809 ], [ 1.000000e+00, %2714 ]
  %2815 = fmul fast float %2814, %2710
  %2816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2817 = extractvalue %dx.types.CBufRet.f32 %2816, 1
  %2818 = fsub fast float -0.000000e+00, %190
  %2819 = fsub fast float -0.000000e+00, %191
  %2820 = fsub fast float -0.000000e+00, %2155
  %2821 = fsub fast float %2820, %2154
  %2822 = fadd fast float %2821, %2817
  %2823 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2818, float %2819, float %2822)  ; Dot3(ax,ay,az,bx,by,bz)
  %2824 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2162, float %2163, float %2164)  ; Dot3(ax,ay,az,bx,by,bz)
  %2825 = fdiv fast float 1.000000e+00, %2824
  %2826 = fmul fast float %2825, %2823
  %2827 = fmul fast float %2162, %2826
  %2828 = fmul fast float %2163, %2826
  %2829 = fadd fast float %2827, %190
  %2830 = fadd fast float %2828, %191
  %2831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2832 = extractvalue %dx.types.CBufRet.f32 %2831, 0
  %2833 = extractvalue %dx.types.CBufRet.f32 %2831, 1
  %2834 = fsub fast float %2829, %2832
  %2835 = fsub fast float %2830, %2833
  %2836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2837 = extractvalue %dx.types.CBufRet.f32 %2836, 2
  %2838 = extractvalue %dx.types.CBufRet.f32 %2836, 3
  %2839 = fmul fast float %2834, %2837
  %2840 = fmul fast float %2835, %2838
  %2841 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2842 = extractvalue %dx.types.CBufRet.i32 %2841, 3
  %2843 = icmp eq i32 %2842, 0
  br i1 %2843, label %2849, label %2844, !dx.controlflow.hints !132

; <label>:2844                                    ; preds = %2813
  %2845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %35, float %2839, float %2840, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2846 = extractvalue %dx.types.ResRet.f32 %2845, 0
  %2847 = extractvalue %dx.types.ResRet.f32 %2845, 1
  %2848 = extractvalue %dx.types.ResRet.f32 %2845, 2
  br label %2854

; <label>:2849                                    ; preds = %2813
  %2850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %36, float %2839, float %2840, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2851 = extractvalue %dx.types.ResRet.f32 %2850, 0
  %2852 = extractvalue %dx.types.ResRet.f32 %2850, 1
  %2853 = extractvalue %dx.types.ResRet.f32 %2850, 2
  br label %2854

; <label>:2854                                    ; preds = %2849, %2844
  %2855 = phi float [ %2846, %2844 ], [ %2851, %2849 ]
  %2856 = phi float [ %2847, %2844 ], [ %2852, %2849 ]
  %2857 = phi float [ %2848, %2844 ], [ %2853, %2849 ]
  %2858 = extractvalue %dx.types.CBufRet.f32 %2816, 2
  %2859 = fmul fast float %2858, %2855
  %2860 = extractvalue %dx.types.CBufRet.f32 %2816, 0
  %2861 = fsub fast float %2826, %2860
  %2862 = fsub fast float %2861, %2859
  %2863 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2862)  ; FMax(a,b)
  %2864 = fmul fast float %2863, %2856
  %2865 = call float @dx.op.binary.f32(i32 36, float %2857, float %2864)  ; FMin(a,b)
  %2866 = fmul fast float %2865, 0xBFF7154760000000
  %2867 = call float @dx.op.unary.f32(i32 21, float %2866)  ; Exp(value)
  %2868 = fadd fast float %2867, -1.000000e+00
  %2869 = fmul fast float %2868, %2150
  %2870 = fadd fast float %2869, 1.000000e+00
  %2871 = fmul fast float %2815, %2870
  br label %2872

; <label>:2872                                    ; preds = %2854, %2709
  %2873 = phi float [ %2871, %2854 ], [ %2710, %2709 ]
  %2874 = call float @dx.op.binary.f32(i32 36, float %2873, float %2873)  ; FMin(a,b)
  %2875 = call float @dx.op.binary.f32(i32 36, float %2873, float %2874)  ; FMin(a,b)
  %2876 = fcmp fast ogt float %2875, 0.000000e+00
  br i1 %2876, label %2877, label %2901, !dx.controlflow.hints !133

; <label>:2877                                    ; preds = %2872
  %2878 = call float @dx.op.dot3.f32(i32 55, float %2162, float %2163, float %2164, float %203, float %204, float %205)  ; Dot3(ax,ay,az,bx,by,bz)
  %2879 = fcmp fast ogt float %2144, 0.000000e+00
  %2880 = select i1 %2879, float 1.000000e+00, float -1.000000e+00
  %2881 = fmul fast float %118, 7.812500e-03
  %2882 = fmul fast float %118, 3.125000e-02
  %2883 = fadd fast float %2882, -3.125000e-02
  %2884 = fmul fast float %2880, 5.000000e-01
  %2885 = fmul fast float %2884, %2878
  %2886 = fmul fast float %2880, %2144
  %2887 = fadd fast float %2881, 4.921875e-01
  %2888 = fadd fast float %2887, %2885
  %2889 = fadd fast float %2881, 0x3FB25F3060000000
  %2890 = fadd fast float %2883, %2886
  %2891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %36, float %2888, float %2889, float %2890, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2892 = extractvalue %dx.types.ResRet.f32 %2891, 0
  %2893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2894 = extractvalue %dx.types.CBufRet.f32 %2893, 0
  %2895 = fmul fast float %2873, 0x400921FB60000000
  %2896 = fmul fast float %2895, %2892
  %2897 = fmul fast float %2896, %2894
  %2898 = fmul fast float %2897, %2166
  %2899 = fmul fast float %2897, %2167
  %2900 = fmul fast float %2897, %2168
  br label %2901

; <label>:2901                                    ; preds = %2877, %2872, %2139
  %2902 = phi float [ %2898, %2877 ], [ 0.000000e+00, %2139 ], [ 0.000000e+00, %2872 ]
  %2903 = phi float [ %2899, %2877 ], [ 0.000000e+00, %2139 ], [ 0.000000e+00, %2872 ]
  %2904 = phi float [ %2900, %2877 ], [ 0.000000e+00, %2139 ], [ 0.000000e+00, %2872 ]
  %2905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %34, float %139, float %140, float %141, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2906 = extractvalue %dx.types.ResRet.f32 %2905, 0
  %2907 = extractvalue %dx.types.ResRet.f32 %2905, 1
  %2908 = extractvalue %dx.types.ResRet.f32 %2905, 2
  %2909 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2906)  ; IsNaN(value)
  %2910 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2907)  ; IsNaN(value)
  %2911 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2908)  ; IsNaN(value)
  %2912 = or i1 %2909, %2910
  %2913 = or i1 %2912, %2911
  %2914 = select i1 %2913, float 0.000000e+00, float %2906
  %2915 = select i1 %2913, float 0.000000e+00, float %2907
  %2916 = select i1 %2913, float 0.000000e+00, float %2908
  %2917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2918 = extractvalue %dx.types.CBufRet.f32 %2917, 1
  %2919 = fmul fast float %2914, %2918
  %2920 = fmul fast float %2915, %2918
  %2921 = fmul fast float %2916, %2918
  %2922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2923 = extractvalue %dx.types.CBufRet.f32 %2922, 3
  %2924 = fmul fast float %2919, %2923
  %2925 = fmul fast float %2920, %2923
  %2926 = fmul fast float %2921, %2923
  %2927 = fadd fast float %2924, %2902
  %2928 = fadd fast float %2925, %2903
  %2929 = fadd fast float %2926, %2904
  br label %2930

; <label>:2930                                    ; preds = %2901, %2132
  %2931 = phi float [ %2141, %2901 ], [ %2133, %2132 ]
  %2932 = phi float [ %2142, %2901 ], [ %2134, %2132 ]
  %2933 = phi float [ %2143, %2901 ], [ %2135, %2132 ]
  %2934 = phi float [ %2927, %2901 ], [ 0.000000e+00, %2132 ]
  %2935 = phi float [ %2928, %2901 ], [ 0.000000e+00, %2132 ]
  %2936 = phi float [ %2929, %2901 ], [ 0.000000e+00, %2132 ]
  %2937 = fmul fast float %2931, %2137
  %2938 = fmul fast float %2932, %2137
  %2939 = fmul fast float %2933, %2137
  %2940 = fmul fast float %2937, %2934
  %2941 = fmul fast float %2938, %2935
  %2942 = fmul fast float %2939, %2936
  %2943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %2944 = extractvalue %dx.types.CBufRet.f32 %2943, 0
  %2945 = fmul fast float %2940, %2944
  %2946 = fmul fast float %2941, %2944
  %2947 = fmul fast float %2942, %2944
  %2948 = fmul fast float %2946, 5.000000e-01
  %2949 = fadd fast float %2942, %2940
  %2950 = fmul fast float %2944, %2949
  %2951 = fmul fast float %2950, 2.500000e-01
  %2952 = fadd fast float %2951, %2948
  %2953 = call float @dx.op.unary.f32(i32 23, float %2952)  ; Log(value)
  %2954 = fmul fast float %2953, 0x3FE62E4300000000
  %2955 = fmul fast float %2954, %2954
  %2956 = icmp ugt i32 %206, 31
  %2957 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %2958 = add i32 %206, -1
  %2959 = add i32 %206, 7
  %2960 = and i32 %2959, 4
  %2961 = and i32 %2958, %2957
  %2962 = xor i32 %2961, %2960
  %2963 = and i32 %2957, -4
  %2964 = shl i32 %2957, 1
  %2965 = and i32 %2964, 6
  %2966 = lshr i32 177, %2965
  %2967 = and i32 %2966, 3
  %2968 = or i32 %2967, %2963
  br i1 %2956, label %2969, label %2985, !dx.controlflow.hints !134

; <label>:2969                                    ; preds = %2930
  %2970 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2954, i32 %2962)  ; WaveReadLaneAt(value,lane)
  %2971 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2955, i32 %2962)  ; WaveReadLaneAt(value,lane)
  %2972 = fadd fast float %2970, %2954
  %2973 = fadd fast float %2971, %2955
  %2974 = add i32 %206, 31
  %2975 = and i32 %2974, 16
  %2976 = xor i32 %2961, %2975
  %2977 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2972, i32 %2976)  ; WaveReadLaneAt(value,lane)
  %2978 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2973, i32 %2976)  ; WaveReadLaneAt(value,lane)
  %2979 = fadd fast float %2977, %2972
  %2980 = fadd fast float %2978, %2973
  %2981 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2979, i32 %2968)  ; WaveReadLaneAt(value,lane)
  %2982 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2980, i32 %2968)  ; WaveReadLaneAt(value,lane)
  %2983 = fadd fast float %2981, %2979
  %2984 = fadd fast float %2982, %2980
  br label %3021

; <label>:2985                                    ; preds = %2930
  %2986 = udiv i32 %45, %206
  %2987 = shl i32 %2986, 2
  %2988 = lshr i32 %2957, 1
  %2989 = and i32 %2988, 1
  %2990 = or i32 %2987, %2989
  %2991 = lshr i32 %2957, 2
  %2992 = and i32 %2991, 2
  %2993 = or i32 %2990, %2992
  %2994 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2954, i32 %2962)  ; WaveReadLaneAt(value,lane)
  %2995 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2955, i32 %2962)  ; WaveReadLaneAt(value,lane)
  %2996 = fadd fast float %2994, %2954
  %2997 = fadd fast float %2995, %2955
  %2998 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2996, i32 %2968)  ; WaveReadLaneAt(value,lane)
  %2999 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2997, i32 %2968)  ; WaveReadLaneAt(value,lane)
  %3000 = fadd fast float %2998, %2996
  %3001 = fadd fast float %2999, %2997
  %3002 = mul i32 %2993, 2
  %3003 = add i32 0, %3002
  %3004 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %3003
  store float %3000, float addrspace(3)* %3004, align 4
  %3005 = mul i32 %2993, 2
  %3006 = add i32 1, %3005
  %3007 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %3006
  store float %3001, float addrspace(3)* %3007, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3008 = load float, float addrspace(3)* %3004, align 4
  %3009 = load float, float addrspace(3)* %3007, align 4
  %3010 = xor i32 %2993, 4
  %3011 = mul i32 %3010, 2
  %3012 = add i32 0, %3011
  %3013 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %3012
  %3014 = load float, float addrspace(3)* %3013, align 4
  %3015 = mul i32 %3010, 2
  %3016 = add i32 1, %3015
  %3017 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %3016
  %3018 = load float, float addrspace(3)* %3017, align 4
  %3019 = fadd fast float %3014, %3008
  %3020 = fadd fast float %3018, %3009
  br label %3021

; <label>:3021                                    ; preds = %2985, %2969
  %3022 = phi float [ %2983, %2969 ], [ %3019, %2985 ]
  %3023 = phi float [ %2984, %2969 ], [ %3020, %2985 ]
  %3024 = fmul fast float %3022, 1.250000e-01
  %3025 = and i32 %68, 1
  %3026 = and i32 %3025, %69
  %3027 = and i32 %3026, %70
  %3028 = icmp ne i32 %3027, 0
  %3029 = and i1 %3028, %80
  br i1 %3029, label %3030, label %3035, !dx.controlflow.hints !57

; <label>:3030                                    ; preds = %3021
  %3031 = fmul fast float %3023, 1.250000e-01
  %3032 = lshr i32 %68, 1
  %3033 = lshr i32 %69, 1
  %3034 = lshr i32 %70, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %3032, i32 %3033, i32 %3034, float %3024, float %3031, float %3024, float %3024, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3035

; <label>:3035                                    ; preds = %3030, %3021
  br i1 %79, label %3070, label %3036, !dx.controlflow.hints !58

; <label>:3036                                    ; preds = %3035
  %3037 = fadd fast float %118, 0x3FE3C6EF40000000
  %3038 = call float @dx.op.unary.f32(i32 22, float %3037)  ; Frc(value)
  %3039 = call float @dx.op.unary.f32(i32 23, float %2945)  ; Log(value)
  %3040 = fadd fast float %3039, -7.000000e+00
  %3041 = call float @dx.op.unary.f32(i32 21, float %3040)  ; Exp(value)
  %3042 = fmul fast float %3038, 2.000000e+00
  %3043 = fadd fast float %3042, -1.000000e+00
  %3044 = fmul fast float %3041, %3043
  %3045 = fcmp fast ogt float %2945, 0.000000e+00
  %3046 = select i1 %3045, float %3044, float 0.000000e+00
  %3047 = fadd fast float %3046, %2945
  %3048 = fadd fast float %118, 0x3FF3C6EF40000000
  %3049 = call float @dx.op.unary.f32(i32 22, float %3048)  ; Frc(value)
  %3050 = call float @dx.op.unary.f32(i32 23, float %2946)  ; Log(value)
  %3051 = fadd fast float %3050, -7.000000e+00
  %3052 = call float @dx.op.unary.f32(i32 21, float %3051)  ; Exp(value)
  %3053 = fmul fast float %3049, 2.000000e+00
  %3054 = fadd fast float %3053, -1.000000e+00
  %3055 = fmul fast float %3052, %3054
  %3056 = fcmp fast ogt float %2946, 0.000000e+00
  %3057 = select i1 %3056, float %3055, float 0.000000e+00
  %3058 = fadd fast float %3057, %2946
  %3059 = fadd fast float %118, 0x3FFDAA66E0000000
  %3060 = call float @dx.op.unary.f32(i32 22, float %3059)  ; Frc(value)
  %3061 = call float @dx.op.unary.f32(i32 23, float %2947)  ; Log(value)
  %3062 = fadd fast float %3061, -6.000000e+00
  %3063 = call float @dx.op.unary.f32(i32 21, float %3062)  ; Exp(value)
  %3064 = fmul fast float %3060, 2.000000e+00
  %3065 = fadd fast float %3064, -1.000000e+00
  %3066 = fmul fast float %3063, %3065
  %3067 = fcmp fast ogt float %2947, 0.000000e+00
  %3068 = select i1 %3067, float %3066, float 0.000000e+00
  %3069 = fadd fast float %3068, %2947
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %68, i32 %69, i32 %70, float %3047, float %3058, float %3069, float %3047, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3070

; <label>:3070                                    ; preds = %3036, %3035
  %3071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %3072 = extractvalue %dx.types.CBufRet.f32 %3071, 0
  %3073 = fmul fast float %3072, %2137
  %3074 = fmul fast float %3073, 5.000000e-01
  %3075 = fadd fast float %2137, %2137
  %3076 = fmul fast float %3072, %3075
  %3077 = fmul fast float %3076, 2.500000e-01
  %3078 = fadd fast float %3077, %3074
  %3079 = fmul fast float %3078, %3078
  %3080 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %3081 = add i32 %206, -1
  %3082 = add i32 %206, 7
  %3083 = and i32 %3082, 4
  %3084 = and i32 %3081, %3080
  %3085 = xor i32 %3084, %3083
  %3086 = and i32 %3080, -4
  %3087 = shl i32 %3080, 1
  %3088 = and i32 %3087, 6
  %3089 = lshr i32 177, %3088
  %3090 = and i32 %3089, 3
  %3091 = or i32 %3090, %3086
  br i1 %2956, label %3092, label %3108, !dx.controlflow.hints !134

; <label>:3092                                    ; preds = %3070
  %3093 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3078, i32 %3085)  ; WaveReadLaneAt(value,lane)
  %3094 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3079, i32 %3085)  ; WaveReadLaneAt(value,lane)
  %3095 = fadd fast float %3093, %3078
  %3096 = fadd fast float %3094, %3079
  %3097 = add i32 %206, 31
  %3098 = and i32 %3097, 16
  %3099 = xor i32 %3084, %3098
  %3100 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3095, i32 %3099)  ; WaveReadLaneAt(value,lane)
  %3101 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3096, i32 %3099)  ; WaveReadLaneAt(value,lane)
  %3102 = fadd fast float %3100, %3095
  %3103 = fadd fast float %3101, %3096
  %3104 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3102, i32 %3091)  ; WaveReadLaneAt(value,lane)
  %3105 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3103, i32 %3091)  ; WaveReadLaneAt(value,lane)
  %3106 = fadd fast float %3104, %3102
  %3107 = fadd fast float %3105, %3103
  br label %3144

; <label>:3108                                    ; preds = %3070
  %3109 = udiv i32 %45, %206
  %3110 = shl i32 %3109, 2
  %3111 = lshr i32 %3080, 1
  %3112 = and i32 %3111, 1
  %3113 = or i32 %3110, %3112
  %3114 = lshr i32 %3080, 2
  %3115 = and i32 %3114, 2
  %3116 = or i32 %3113, %3115
  %3117 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3078, i32 %3085)  ; WaveReadLaneAt(value,lane)
  %3118 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3079, i32 %3085)  ; WaveReadLaneAt(value,lane)
  %3119 = fadd fast float %3117, %3078
  %3120 = fadd fast float %3118, %3079
  %3121 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3119, i32 %3091)  ; WaveReadLaneAt(value,lane)
  %3122 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3120, i32 %3091)  ; WaveReadLaneAt(value,lane)
  %3123 = fadd fast float %3121, %3119
  %3124 = fadd fast float %3122, %3120
  %3125 = mul i32 %3116, 2
  %3126 = add i32 0, %3125
  %3127 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %3126
  store float %3123, float addrspace(3)* %3127, align 4
  %3128 = mul i32 %3116, 2
  %3129 = add i32 1, %3128
  %3130 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %3129
  store float %3124, float addrspace(3)* %3130, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3131 = load float, float addrspace(3)* %3127, align 4
  %3132 = load float, float addrspace(3)* %3130, align 4
  %3133 = xor i32 %3116, 4
  %3134 = mul i32 %3133, 2
  %3135 = add i32 0, %3134
  %3136 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %3135
  %3137 = load float, float addrspace(3)* %3136, align 4
  %3138 = mul i32 %3133, 2
  %3139 = add i32 1, %3138
  %3140 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %3139
  %3141 = load float, float addrspace(3)* %3140, align 4
  %3142 = fadd fast float %3137, %3131
  %3143 = fadd fast float %3141, %3132
  br label %3144

; <label>:3144                                    ; preds = %3108, %3092
  %3145 = phi float [ %3106, %3092 ], [ %3142, %3108 ]
  %3146 = phi float [ %3107, %3092 ], [ %3143, %3108 ]
  %3147 = fmul fast float %3145, 1.250000e-01
  br i1 %3029, label %3148, label %3153, !dx.controlflow.hints !59

; <label>:3148                                    ; preds = %3144
  %3149 = fmul fast float %3146, 1.250000e-01
  %3150 = lshr i32 %68, 1
  %3151 = lshr i32 %69, 1
  %3152 = lshr i32 %70, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3150, i32 %3151, i32 %3152, float %3147, float %3149, float %3147, float %3147, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3153

; <label>:3153                                    ; preds = %3148, %3144
  br i1 %79, label %3182, label %3154, !dx.controlflow.hints !60

; <label>:3154                                    ; preds = %3153
  %3155 = fadd fast float %118, 0x3FE3C6EF40000000
  %3156 = call float @dx.op.unary.f32(i32 22, float %3155)  ; Frc(value)
  %3157 = call float @dx.op.unary.f32(i32 23, float %3073)  ; Log(value)
  %3158 = fadd fast float %3157, -7.000000e+00
  %3159 = call float @dx.op.unary.f32(i32 21, float %3158)  ; Exp(value)
  %3160 = fmul fast float %3156, 2.000000e+00
  %3161 = fadd fast float %3160, -1.000000e+00
  %3162 = fmul fast float %3159, %3161
  %3163 = fcmp fast ogt float %3073, 0.000000e+00
  %3164 = select i1 %3163, float %3162, float 0.000000e+00
  %3165 = fadd fast float %3164, %3073
  %3166 = fadd fast float %118, 0x3FF3C6EF40000000
  %3167 = call float @dx.op.unary.f32(i32 22, float %3166)  ; Frc(value)
  %3168 = fmul fast float %3167, 2.000000e+00
  %3169 = fadd fast float %3168, -1.000000e+00
  %3170 = fmul fast float %3159, %3169
  %3171 = select i1 %3163, float %3170, float 0.000000e+00
  %3172 = fadd fast float %3171, %3073
  %3173 = fadd fast float %118, 0x3FFDAA66E0000000
  %3174 = call float @dx.op.unary.f32(i32 22, float %3173)  ; Frc(value)
  %3175 = fadd fast float %3157, -6.000000e+00
  %3176 = call float @dx.op.unary.f32(i32 21, float %3175)  ; Exp(value)
  %3177 = fmul fast float %3174, 2.000000e+00
  %3178 = fadd fast float %3177, -1.000000e+00
  %3179 = fmul fast float %3176, %3178
  %3180 = select i1 %3163, float %3179, float 0.000000e+00
  %3181 = fadd fast float %3180, %3073
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %68, i32 %69, i32 %70, float %3165, float %3172, float %3181, float %3165, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3182

; <label>:3182                                    ; preds = %3154, %3153
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneIndex(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind
declare float @dx.op.waveReadLaneAt.f32(i32, float, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i1 @dx.op.isSpecialFloat.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!53}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !39, !44, !47}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !34, !36, !37}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 44, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture3D<float>"* undef, !"", i32 0, i32 10, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 38, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 35, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 41, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 4, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 24, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 25, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 36, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 37, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 39, i32 1, i32 12, i32 0, !22}
!22 = !{i32 1, i32 164}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 42, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 34, i32 1, i32 7, i32 0, !26}
!26 = !{i32 0, i32 14}
!27 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!28 = !{i32 19, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!29 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 23, i32 1, i32 2, i32 0, !7}
!30 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!31 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!32 = !{i32 23, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!33 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!34 = !{i32 25, %"class.StructuredBuffer<VolumetricVolume>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !35}
!35 = !{i32 1, i32 80}
!36 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!37 = !{i32 27, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 12, i32 0, !38}
!38 = !{i32 1, i32 4}
!39 = !{!40, !41, !42, !43}
!40 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!41 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!42 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!43 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!44 = !{!45, !46}
!45 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!46 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!47 = !{!48, !49, !50, !51, !52}
!48 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!49 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!50 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!51 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!52 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!53 = !{void ()* @cs_volumetric_forwardplus_scatter_local, !"cs_volumetric_forwardplus_scatter_local", null, !4, !54}
!54 = !{i32 0, i64 524560, i32 4, !55}
!55 = !{i32 4, i32 4, i32 4}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !80}
!97 = distinct !{!97, !80}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = !{!110, !110, i64 0}
!110 = !{!"int", !111, i64 0}
!111 = !{!"omnipotent char", !112, i64 0}
!112 = !{!"Simple C/C++ TBAA"}
!113 = !{!114, !116, !118, !120, !122}
!114 = distinct !{!114, !115, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!115 = distinct !{!115, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!116 = distinct !{!116, !117, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!117 = distinct !{!117, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!118 = distinct !{!118, !119, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z: %agg.result"}
!119 = distinct !{!119, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z"}
!120 = distinct !{!120, !121, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!121 = distinct !{!121, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!122 = distinct !{!122, !121, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 2}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 2}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 2}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 2}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 2}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 2}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 2}

