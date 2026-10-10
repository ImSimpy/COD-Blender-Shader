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
; shader hash: 6bdb4329e9d5fb91b3af6b578658a4bf
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
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s3     1
;                                   sampler      NA          NA      S2             s4     1
;                                   sampler      NA          NA      S3             s5     1
;                                   texture     f32          2d      T0            t11     1
;                                   texture    byte         r/o      T1            t22     1
;                                   texture     f32          2d      T2            t27     1
;                                   texture    byte         r/o      T3            t44     1
;                                   texture     f32          2d      T4            t33     1
;                                   texture     f32          3d      T5            t38     1
;                                   texture     f32          2d      T6            t35     1
;                                   texture     f32          2d      T7            t41     1
;                                   texture     f32          3d      T8            t16     1
;                                   texture     f32          2d      T9            t24     1
;                                   texture     f32          2d     T10            t25     1
;                                   texture     f32          2d     T11            t36     1
;                                   texture     f32          2d     T12            t37     1
;                                   texture  struct         r/o     T13            t39     1
;                                   texture    byte         r/o     T14            t42     1
;                                   texture     f32          3d     T15             t5     1
;                                   texture    byte         r/o     T16            t13     1
;                                   texture  struct         r/o     T17            t14     1
;                                   texture    byte         r/o     T18            t15     1
;                                   texture  struct         r/o     T19            t29     1
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
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<VolumetricBBoxGpu>" = type { %struct.VolumetricBBoxGpu }
%struct.VolumetricBBoxGpu = type { <3 x float>, i32, <3 x float>, float, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
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
%struct.SamplerState = type { i32 }

@BLUE_NOISE_SAMPLES.v.1dim = internal constant [384 x float] [float 0x3FE18FE160000000, float 0x3FE2F89540000000, float 0x3FE6E2D4C0000000, float 0x3FC15736E0000000, float 0x3FBA5540C0000000, float 0x3FD3170EC0000000, float 0x3FED0D5120000000, float 0x3FE296A0E0000000, float 0x3FC4826EA0000000, float 0x3FE8282660000000, float 0x3FAFC328C0000000, float 0x3FEC521960000000, float 0x3FE37806C0000000, float 0x3FCA6D0000000000, float 0x3FD7082D00000000, float 0x3FC5E13120000000, float 0x3FD2E650A0000000, float 0x3FEBB39F60000000, float 0x3FDC57B600000000, float 0x3FE7C97180000000, float 0x3FCBD95EA0000000, float 0x3FC9988140000000, float 0x3FEAC46E60000000, float 0x3FEAD953E0000000, float 0x3FC843F4E0000000, float 0x3FE1FA7840000000, float 0x3FDEF62560000000, float 0x3FD8DD05A0000000, float 0x3FB5C98040000000, float 0x3FE40B4F00000000, float 0x3FEC4AEE80000000, float 0x3FEB172F40000000, float 0x3FE0065C00000000, float 0x3FEA254D00000000, float 0x3FD8E6DF40000000, float 0x3FE24C96C0000000, float 0x3FDE978BA0000000, float 0x3FBA8F1180000000, float 0x3FB121A6A0000000, float 0x3FE3626000000000, float 0x3FDE58B860000000, float 0x3FB2DED7A0000000, float 0x3FD4F97900000000, float 0x3FD7645460000000, float 0x3FCE571520000000, float 0x3FE7E85200000000, float 0x3FEAFC6460000000, float 0x3FCC666220000000, float 0x3FEC4FF540000000, float 0x3FE7C8B540000000, float 0x3FEBF4AC20000000, float 0x3FD0C66640000000, float 0x3FE2F95320000000, float 0x3F915FFF00000000, float 0x3FE352C600000000, float 0x3FEBC2D0A0000000, float 0x3FE3664520000000, float 0x3FE4504660000000, float 0x3FE1D81AA0000000, float 0x3FD7A97CA0000000, float 0x3F86A53280000000, float 0x3FC1343780000000, float 0x3FE473A1A0000000, float 0x3FEC7EAE80000000, float 0x3FCE83F160000000, float 0x3FC3B66640000000, float 0x3FABB6C6C0000000, float 0x3FEC127C60000000, float 0x3FC3E70E00000000, float 0x3FDC159A60000000, float 0x3FD7AB8720000000, float 0x3FE14710E0000000, float 0x3FDE623A40000000, float 0x3FEB8A45E0000000, float 0x3FEC3C0140000000, float 0x3FD1597DE0000000, float 0x3FEAF0F9A0000000, float 0x3FE1C52360000000, float 0x3FEA622660000000, float 0x3FD760A060000000, float 0x3FEC561B20000000, float 0x3FBAF00320000000, float 0x3FE4643220000000, float 0x3FE72199C0000000, float 0x3FE2E54080000000, float 0x3FD56206C0000000, float 0x3FE8890420000000, float 0x3FEFBE55E0000000, float 0x3FD25DC400000000, float 0x3FD8BF4640000000, float 0x3FE956BCC0000000, float 0x3FE3A5DFE0000000, float 0x3FE5928420000000, float 0x3FE6754AA0000000, float 0x3FBBCDB900000000, float 0x3FE4509C40000000, float 0x3FE14E9AE0000000, float 0x3FEEE61140000000, float 0x3FD3ADB960000000, float 0x3FD3C9D440000000, float 0x3FDF30AF40000000, float 0x3FE885B760000000, float 0x3FEFC30220000000, float 0x3FB1A902E0000000, float 0x3FED532A00000000, float 0x3FBA846540000000, float 0x3FDAC4BEC0000000, float 0x3FB347E280000000, float 0x3FC77620A0000000, float 0x3FBBEF41C0000000, float 0x3FB2C764E0000000, float 0x3FC199A160000000, float 0x3FE44F4480000000, float 0x3FD01FE1E0000000, float 0x3FEC5559A0000000, float 0x3FA2E2FA40000000, float 0x3FD5AAA3C0000000, float 0x3FEDC06380000000, float 0x3FE393B900000000, float 0x3FDA23D800000000, float 0x3FC0BD6E60000000, float 0x3FD6E3CF60000000, float 0x3FE39D7140000000, float 0x3FE07677C0000000, float 0x3FBE721700000000, float 0x3FEA99EBC0000000, float 0x3FC9C1C7E0000000, float 0x3FB4545D20000000, float 0x3FE927BDC0000000, float 0x3FD2AF0880000000, float 0x3FEDDAA620000000, float 0x3FD4C3A220000000, float 0x3FE764E8C0000000, float 0x3FB5474C60000000, float 0x3FBD28BE60000000, float 0x3FDCAE7120000000, float 0x3FE65C7EC0000000, float 0x3FDFAE6DC0000000, float 0x3FEFF2D3E0000000, float 0x3FED44B380000000, float 0x3FE6676480000000, float 0x3FE59F4A80000000, float 0x3FE61D1240000000, float 0x3F80FB0B40000000, float 0x3FD57E1500000000, float 0x3FEC5C93C0000000, float 0x3FA826DF20000000, float 0x3FE939D3A0000000, float 0x3FDB702260000000, float 0x3FD0309DC0000000, float 0x3FC05BD4E0000000, float 0x3F647F5360000000, float 0x3FDFF14000000000, float 0x3FD6B472E0000000, float 0x3FC67E8AE0000000, float 0x3FD7E52D80000000, float 0x3FD9A20420000000, float 0x3FD873C2E0000000, float 0x3FEED079E0000000, float 0x3FD9280DA0000000, float 0x3FE0E70960000000, float 0x3FD7AD5C60000000, float 0x3FADC1E8A0000000, float 0x3FE9BAFE00000000, float 0x3FD6EB3FA0000000, float 0x3FE8B0FE80000000, float 0x3FEC006EA0000000, float 0x3FE7886EC0000000, float 0x3FD4E113A0000000, float 0x3FE5EB06E0000000, float 0x3FE7AE8F00000000, float 0x3FE594A1A0000000, float 0x3FE8BE5C40000000, float 0x3FDBBB7820000000, float 0x3FDC00F660000000, float 0x3FE3BEAF60000000, float 0x3FECE40A40000000, float 0x3FE476BE80000000, float 0x3FCE715760000000, float 0x3F9A66CEA0000000, float 0x3FE1E87120000000, float 0x3FD6EFB1C0000000, float 0x3FCE53C0A0000000, float 0x3FEEC44720000000, float 0x3FDE4FCA40000000, float 0x3FE71C3E60000000, float 0x3FEF2C7C20000000, float 0x3FE166A120000000, float 0x3FEE257F40000000, float 0x3FE9B56F40000000, float 0x3FECD0D600000000, float 0x3FA0FC3EC0000000, float 0x3FEC4C3DC0000000, float 0x3FD150EC60000000, float 0x3FE71F4F60000000, float 0x3FB622B360000000, float 0x3FDC8CDE60000000, float 0x3FD23942A0000000, float 0x3FE1F1FAA0000000, float 0x3FED974C60000000, float 0x3FB46602A0000000, float 0x3FE6E2E620000000, float 0x3FEFD8B280000000, float 0x3FDD9BF5C0000000, float 0x3FA674A1C0000000, float 0x3FE9B56E40000000, float 0x3FEEE67800000000, float 0x3FCDA72D80000000, float 0x3FD469FA40000000, float 0x3FDBC871E0000000, float 0x3FDD20E3E0000000, float 0x3FEF2C1DE0000000, float 0x3FDF7B00E0000000, float 0x3FD6281F00000000, float 0x3FC66B3000000000, float 0x3FEDE19700000000, float 0x3FDB2072A0000000, float 0x3FE0D7DF20000000, float 0x3FC3B1B640000000, float 0x3FDA9DE220000000, float 0x3FD04AFB60000000, float 0x3FE78D6920000000, float 0x3FEF438F00000000, float 0x3FD0DACEC0000000, float 0x3FED6152E0000000, float 0x3FE9CF90A0000000, float 0x3FD0689260000000, float 0x3FDB295100000000, float 0x3FE43A8B20000000, float 0x3FDB335EA0000000, float 0x3FE0E1EA60000000, float 0x3FEBAB00E0000000, float 0x3FDA8B1D60000000, float 0x3FB10CBD20000000, float 0x3FE78F4620000000, float 0x3FE227D0E0000000, float 0x3FEC0E76A0000000, float 0x3FEEF3F8C0000000, float 0x3FE5ADCD40000000, float 0x3FE386C040000000, float 0x3FE2FA86E0000000, float 0x3FCE803BA0000000, float 0x3FE26AEBE0000000, float 0x3FE58556A0000000, float 0x3FEB878100000000, float 0x3FEC77D980000000, float 0x3FC0793440000000, float 0x3FD134B520000000, float 0x3FC9DB4080000000, float 0x3FE83B8480000000, float 0x3FE4ECC2E0000000, float 0x3FCEA8E9A0000000, float 0x3FD60CA840000000, float 0x3FECE35B20000000, float 0x3FE746B7A0000000, float 0x3FCE074860000000, float 0x3FE81DE580000000, float 0x3FC2584AA0000000, float 0x3FD5C82E00000000, float 0x3FE0CECA40000000, float 0x3FE26646C0000000, float 0x3FC0854540000000, float 0x3FE77AA920000000, float 0x3FE0120580000000, float 0x3FEF5EE280000000, float 0x3FB39D7D80000000, float 0x3FC50B8D20000000, float 0x3FDBFF8BC0000000, float 0x3FB7077B80000000, float 0x3FCF722760000000, float 0x3FD274BA20000000, float 0x3FE7EC88A0000000, float 0x3FD8207A00000000, float 0x3FDC2B1A00000000, float 0x3FEAE81F60000000, float 0x3FD84A9200000000, float 0x3FEB3D1480000000, float 0x3F74CDAB80000000, float 0x3FE2903380000000, float 0x3FE3D88D60000000, float 0x3FE5557C00000000, float 0x3FE1B02540000000, float 0x3FCAD53680000000, float 0x3FC97E4340000000, float 0x3FE4A0C720000000, float 0x3FDE649800000000, float 0x3FE8A886A0000000, float 0x3FE77F7260000000, float 0x3FEB51B700000000, float 0x3FC2E2DE00000000, float 0x3F5888D4C0000000, float 0x3FD41984E0000000, float 0x3FD20DB1A0000000, float 0x3FB551A020000000, float 0x3FDB131880000000, float 0x3FEDC9D0C0000000, float 0x3FC7DD4AA0000000, float 0x3FD5F5F120000000, float 0x3F7F518660000000, float 0x3FEBF19260000000, float 0x3F799ADA40000000, float 0x3FDC20E100000000, float 0x3FE0E7DB40000000, float 0x3FC0BB4EE0000000, float 0x3FDECDAEE0000000, float 0x3FEA638F20000000, float 0x3FE70F2040000000, float 0x3FCA53C540000000, float 0x3FCCF95320000000, float 0x3FB324F500000000, float 0x3FE354CC40000000, float 0x3FB2C45460000000, float 0x3FE072AB00000000, float 0x3FE6B81580000000, float 0x3FAD0D1160000000, float 0x3FECCB0BE0000000, float 0x3FEB935140000000, float 0x3FD2A50CE0000000, float 0x3FE5A24D40000000, float 0x3FCB409DA0000000, float 0x3FEAFD5600000000, float 0x3FE2CA5C00000000, float 0x3FEEB0C0A0000000, float 0x3FE8201F60000000, float 0x3FAA420B00000000, float 0x3FD2EB8020000000, float 0x3FE7E3DFA0000000, float 0x3FE7E2A760000000, float 0x3FE8746C80000000, float 0x3FE31217A0000000, float 0x3FEB946480000000, float 0x3FE7B3EDC0000000, float 0x3FB74FEFA0000000, float 0x3FEE07E160000000, float 0x3FC272BDC0000000, float 0x3FDE3B38A0000000, float 0x3FE687E8E0000000, float 0x3FDD8CC5E0000000, float 0x3FE5BD32A0000000, float 0x3FC63803C0000000, float 0x3FED12DE60000000, float 0x3F99B048C0000000, float 0x3FEC98B3E0000000, float 0x3FB9C91A60000000, float 0x3FE8D6E040000000, float 0x3FD39228C0000000, float 0x3FE404F040000000, float 0x3FD00082E0000000, float 0x3FE9099100000000, float 0x3FE1A444E0000000, float 0x3FDDFDC900000000, float 0x3FD649EA00000000, float 0x3FE7F988C0000000, float 0x3FEEB362C0000000, float 0x3FBE7B5FE0000000, float 0x3FC6A55F60000000, float 0x3FE07F6B40000000, float 0x3FE0AFB880000000, float 0x3FDE87A600000000, float 0x3FEBF9DCC0000000, float 0x3FD039B760000000, float 0x3F73CF67C0000000, float 0x3FE33EED40000000, float 0x3FD43683E0000000, float 0x3FD1531020000000, float 0x3FE1D32C60000000, float 0x3FE16249C0000000, float 0x3FBCE097A0000000, float 0x3FDE6FED80000000, float 0x3FE47A3A60000000, float 0x3FE6D84580000000, float 0x3FEA3764C0000000, float 0x3FE9B3C000000000, float 0x3FCD0FDF40000000, float 0x3FE2C6AC00000000, float 0x3FCBCACA20000000, float 0x3FE02FE880000000, float 0x3FC52C7860000000, float 0x3FD5258C40000000, float 0x3FA7811BC0000000, float 0x3FAAEB5B20000000, float 0x3FE369AEC0000000, float 0x3FB38C3220000000, float 0x3FEF14BEE0000000], align 4
@"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim" = addrspace(3) global [32 x float] undef, align 4

define void @cs_volumetric_forwardplus_scatter_local() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %32 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %33 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %34 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %35 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 3
  %38 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.i32 %38, 1
  %40 = mul i32 %39, %37
  %41 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.i32 %41, 1
  %43 = mul i32 %40, %42
  %44 = add i32 %43, %34
  %45 = shl i32 %44, 2
  %46 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %45, i32 undef)  ; BufferLoad(srv,index,wot)
  %47 = extractvalue %dx.types.ResRet.i32 %46, 0
  %48 = and i32 %47, 255
  %49 = lshr i32 %47, 8
  %50 = and i32 %49, 255
  %51 = lshr i32 %47, 16
  %52 = and i32 %51, 255
  %53 = shl nuw nsw i32 %48, 2
  %54 = shl nuw nsw i32 %50, 2
  %55 = shl nuw nsw i32 %52, 2
  %56 = add i32 %53, %31
  %57 = add i32 %54, %32
  %58 = add i32 %55, %33
  %59 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.i32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.i32 %59, 1
  %62 = extractvalue %dx.types.CBufRet.i32 %59, 2
  %63 = icmp uge i32 %56, %60
  %64 = icmp uge i32 %57, %61
  %65 = icmp uge i32 %58, %62
  %66 = or i1 %63, %64
  %67 = or i1 %65, %66
  %68 = xor i1 %67, true
  %69 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.i32 %69, 3
  %71 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %57, i32 %70)  ; UMad(a,b,c)
  %72 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %56, i32 %71)  ; UMad(a,b,c)
  %73 = mul i32 %72, -63
  %74 = lshr i32 %73, 17
  %75 = xor i32 %74, %73
  %76 = mul i32 %75, -511
  %77 = mul i32 %75, -8176
  %78 = xor i32 %76, %77
  %79 = mul i32 %78, -7
  %80 = mul i32 %78, -7168
  %81 = xor i32 %79, %80
  %82 = lshr i32 %81, 15
  %83 = xor i32 %82, %79
  %84 = and i32 %83, 127
  %85 = mul i32 %84, 3
  %86 = add i32 0, %85
  %87 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %86
  %88 = load float, float* %87, align 4
  %89 = mul i32 %84, 3
  %90 = add i32 1, %89
  %91 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %90
  %92 = load float, float* %91, align 4
  %93 = mul i32 %84, 3
  %94 = add i32 2, %93
  %95 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %94
  %96 = load float, float* %95, align 4
  %97 = uitofp i32 %70 to float
  %98 = fmul fast float %97, 0x3FEA36A940000000
  %99 = fmul fast float %97, 0x3FE5793080000000
  %100 = fmul fast float %97, 0x3FE1972580000000
  %101 = fadd fast float %88, %98
  %102 = fadd fast float %92, %99
  %103 = fadd fast float %96, %100
  %104 = call float @dx.op.unary.f32(i32 22, float %101)  ; Frc(value)
  %105 = call float @dx.op.unary.f32(i32 22, float %102)  ; Frc(value)
  %106 = call float @dx.op.unary.f32(i32 22, float %103)  ; Frc(value)
  %107 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %56, i32 %57, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %108 = extractvalue %dx.types.ResRet.f32 %107, 0
  %109 = fcmp fast ogt float %108, -1.000000e+00
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %112 = select i1 %109, float %111, float 1.000000e+00
  %113 = fadd fast float %108, 1.000000e+00
  %114 = fmul fast float %112, %113
  %115 = uitofp i32 %56 to float
  %116 = uitofp i32 %57 to float
  %117 = uitofp i32 %58 to float
  %118 = fadd fast float %117, -5.000000e-01
  %119 = fadd fast float %118, %106
  %120 = fadd fast float %115, %104
  %121 = fadd fast float %116, %105
  %122 = fadd fast float %119, 5.000000e-01
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = fmul fast float %124, %120
  %128 = fmul fast float %125, %121
  %129 = fmul fast float %126, %122
  %130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.i32 %130, 0
  %132 = uitofp i32 %131 to float
  %133 = fmul fast float %132, %129
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = fmul fast float %133, %136
  %138 = call float @dx.op.unary.f32(i32 21, float %137)  ; Exp(value)
  %139 = fmul fast float %138, %135
  %140 = fsub fast float 4.000000e+00, %135
  %141 = fadd fast float %140, %139
  %142 = call float @dx.op.binary.f32(i32 36, float %141, float %114)  ; FMin(a,b)
  %143 = fmul fast float %127, 2.000000e+00
  %144 = fmul fast float %128, 2.000000e+00
  %145 = fsub fast float 1.000000e+00, %143
  %146 = fsub fast float 1.000000e+00, %144
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = fmul fast float %148, %145
  %152 = fmul fast float %149, %145
  %153 = fmul fast float %150, %145
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = fmul fast float %155, %146
  %159 = fmul fast float %156, %146
  %160 = fmul fast float %157, %146
  %161 = fadd fast float %158, %151
  %162 = fadd fast float %159, %152
  %163 = fadd fast float %160, %153
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = fadd fast float %161, %165
  %169 = fadd fast float %162, %166
  %170 = fadd fast float %163, %167
  %171 = fmul fast float %168, %142
  %172 = fmul fast float %169, %142
  %173 = fmul fast float %170, %142
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %178 = fadd fast float %171, %175
  %179 = fadd fast float %172, %176
  %180 = fadd fast float %173, %177
  %181 = add i32 %58, 1
  %182 = uitofp i32 %181 to float
  %183 = fmul fast float %136, %182
  %184 = call float @dx.op.unary.f32(i32 21, float %183)  ; Exp(value)
  %185 = fmul fast float %136, %117
  %186 = call float @dx.op.unary.f32(i32 21, float %185)  ; Exp(value)
  %187 = fsub fast float %184, %186
  %188 = fmul fast float %135, %187
  %189 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %190 = icmp ult i32 %189, 32
  br i1 %190, label %191, label %309, !dx.controlflow.hints !46

; <label>:191                                     ; preds = %0
  %192 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %193 = fmul fast float %192, 0x3FE62E4300000000
  %194 = fmul fast float %193, %193
  %195 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %196 = add i32 %189, -1
  %197 = add i32 %189, 7
  %198 = and i32 %197, 4
  %199 = and i32 %196, %195
  %200 = xor i32 %199, %198
  %201 = and i32 %195, -4
  %202 = shl i32 %195, 1
  %203 = and i32 %202, 6
  %204 = lshr i32 177, %203
  %205 = and i32 %204, 3
  %206 = or i32 %205, %201
  %207 = udiv i32 %35, %189
  %208 = shl i32 %207, 2
  %209 = lshr i32 %195, 1
  %210 = and i32 %209, 1
  %211 = or i32 %208, %210
  %212 = lshr i32 %195, 2
  %213 = and i32 %212, 2
  %214 = or i32 %211, %213
  %215 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %193, i32 %200)  ; WaveReadLaneAt(value,lane)
  %216 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %194, i32 %200)  ; WaveReadLaneAt(value,lane)
  %217 = fadd fast float %215, %193
  %218 = fadd fast float %216, %194
  %219 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %217, i32 %206)  ; WaveReadLaneAt(value,lane)
  %220 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %218, i32 %206)  ; WaveReadLaneAt(value,lane)
  %221 = fadd fast float %219, %217
  %222 = fadd fast float %220, %218
  %223 = mul i32 %214, 2
  %224 = add i32 0, %223
  %225 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %224
  store float %221, float addrspace(3)* %225, align 4
  %226 = mul i32 %214, 2
  %227 = add i32 1, %226
  %228 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %227
  store float %222, float addrspace(3)* %228, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %229 = load float, float addrspace(3)* %225, align 4
  %230 = xor i32 %214, 4
  %231 = mul i32 %230, 2
  %232 = add i32 0, %231
  %233 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %232
  %234 = load float, float addrspace(3)* %233, align 4
  %235 = fadd fast float %234, %229
  %236 = fmul fast float %235, 1.250000e-01
  %237 = and i32 %56, 1
  %238 = and i32 %237, %57
  %239 = and i32 %238, %58
  %240 = icmp ne i32 %239, 0
  %241 = and i1 %240, %68
  br i1 %241, label %242, label %253, !dx.controlflow.hints !47

; <label>:242                                     ; preds = %191
  %243 = mul i32 %230, 2
  %244 = add i32 1, %243
  %245 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %244
  %246 = load float, float addrspace(3)* %245, align 4
  %247 = load float, float addrspace(3)* %228, align 4
  %248 = fadd fast float %246, %247
  %249 = fmul fast float %248, 1.250000e-01
  %250 = lshr i32 %56, 1
  %251 = lshr i32 %57, 1
  %252 = lshr i32 %58, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %250, i32 %251, i32 %252, float %236, float %249, float %236, float %236, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %253

; <label>:253                                     ; preds = %242, %191
  br i1 %67, label %255, label %254, !dx.controlflow.hints !48

; <label>:254                                     ; preds = %253
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %56, i32 %57, i32 %58, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %255

; <label>:255                                     ; preds = %254, %253
  %256 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %257 = add i32 %189, -1
  %258 = add i32 %189, 7
  %259 = and i32 %258, 4
  %260 = and i32 %257, %256
  %261 = xor i32 %260, %259
  %262 = and i32 %256, -4
  %263 = shl i32 %256, 1
  %264 = and i32 %263, 6
  %265 = lshr i32 177, %264
  %266 = and i32 %265, 3
  %267 = or i32 %266, %262
  %268 = udiv i32 %35, %189
  %269 = shl i32 %268, 2
  %270 = lshr i32 %256, 1
  %271 = and i32 %270, 1
  %272 = or i32 %269, %271
  %273 = lshr i32 %256, 2
  %274 = and i32 %273, 2
  %275 = or i32 %272, %274
  %276 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %261)  ; WaveReadLaneAt(value,lane)
  %277 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %261)  ; WaveReadLaneAt(value,lane)
  %278 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %276, i32 %267)  ; WaveReadLaneAt(value,lane)
  %279 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %277, i32 %267)  ; WaveReadLaneAt(value,lane)
  %280 = fadd fast float %278, %276
  %281 = fadd fast float %279, %277
  %282 = mul i32 %275, 2
  %283 = add i32 0, %282
  %284 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %283
  store float %280, float addrspace(3)* %284, align 4
  %285 = mul i32 %275, 2
  %286 = add i32 1, %285
  %287 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %286
  store float %281, float addrspace(3)* %287, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %288 = load float, float addrspace(3)* %284, align 4
  %289 = xor i32 %275, 4
  %290 = mul i32 %289, 2
  %291 = add i32 0, %290
  %292 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %291
  %293 = load float, float addrspace(3)* %292, align 4
  %294 = fadd fast float %293, %288
  %295 = fmul fast float %294, 1.250000e-01
  br i1 %241, label %296, label %307, !dx.controlflow.hints !49

; <label>:296                                     ; preds = %255
  %297 = mul i32 %289, 2
  %298 = add i32 1, %297
  %299 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %298
  %300 = load float, float addrspace(3)* %299, align 4
  %301 = load float, float addrspace(3)* %287, align 4
  %302 = fadd fast float %300, %301
  %303 = fmul fast float %302, 1.250000e-01
  %304 = lshr i32 %56, 1
  %305 = lshr i32 %57, 1
  %306 = lshr i32 %58, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %304, i32 %305, i32 %306, float %295, float %303, float %295, float %295, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %307

; <label>:307                                     ; preds = %296, %255
  br i1 %67, label %309, label %308, !dx.controlflow.hints !50

; <label>:308                                     ; preds = %307
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %56, i32 %57, i32 %58, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %309

; <label>:309                                     ; preds = %308, %307, %0
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %312 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %313 = fsub fast float %180, %311
  %314 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %313)  ; FMax(a,b)
  %315 = fmul fast float %314, 0x3FF7154760000000
  %316 = fmul fast float %315, %312
  %317 = call float @dx.op.unary.f32(i32 21, float %316)  ; Exp(value)
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 0
  %320 = extractvalue %dx.types.CBufRet.f32 %318, 1
  %321 = extractvalue %dx.types.CBufRet.f32 %318, 2
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %324 = fmul fast float %323, %317
  %325 = fmul fast float %324, %319
  %326 = fmul fast float %324, %320
  %327 = fmul fast float %324, %321
  %328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.i32 %328, 2
  %330 = extractvalue %dx.types.CBufRet.i32 %328, 3
  %331 = call i32 @dx.op.tertiary.i32(i32 49, i32 %50, i32 %329, i32 %48)  ; UMad(a,b,c)
  %332 = call i32 @dx.op.tertiary.i32(i32 49, i32 %52, i32 %330, i32 %331)  ; UMad(a,b,c)
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %332, i32 0)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = fadd fast float %115, 1.000000e+00
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 0
  %341 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %342 = fmul fast float %341, %119
  %343 = call float @dx.op.unary.f32(i32 21, float %342)  ; Exp(value)
  %344 = fmul fast float %343, %340
  %345 = fsub fast float 4.000000e+00, %340
  %346 = fadd fast float %345, %344
  %347 = fmul fast float %335, 2.000000e+00
  %348 = fmul fast float %347, %337
  %349 = fmul fast float %116, 2.000000e+00
  %350 = fmul fast float %349, %338
  %351 = fsub fast float 1.000000e+00, %348
  %352 = fsub fast float 1.000000e+00, %350
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 0
  %355 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %356 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %357 = fmul fast float %354, %351
  %358 = fmul fast float %355, %351
  %359 = fmul fast float %356, %351
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %362 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %363 = extractvalue %dx.types.CBufRet.f32 %360, 2
  %364 = fmul fast float %361, %352
  %365 = fmul fast float %362, %352
  %366 = fmul fast float %363, %352
  %367 = fadd fast float %364, %357
  %368 = fadd fast float %365, %358
  %369 = fadd fast float %366, %359
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %372 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %373 = extractvalue %dx.types.CBufRet.f32 %370, 2
  %374 = fadd fast float %367, %371
  %375 = fadd fast float %368, %372
  %376 = fadd fast float %369, %373
  %377 = fadd fast float %116, 1.000000e+00
  %378 = fmul fast float %115, 2.000000e+00
  %379 = fmul fast float %378, %337
  %380 = fmul fast float %377, 2.000000e+00
  %381 = fmul fast float %380, %338
  %382 = fsub fast float 1.000000e+00, %379
  %383 = fsub fast float 1.000000e+00, %381
  %384 = fmul fast float %354, %382
  %385 = fmul fast float %355, %382
  %386 = fmul fast float %356, %382
  %387 = fmul fast float %361, %383
  %388 = fmul fast float %362, %383
  %389 = fmul fast float %363, %383
  %390 = fadd fast float %387, %384
  %391 = fadd fast float %388, %385
  %392 = fadd fast float %389, %386
  %393 = fadd fast float %390, %371
  %394 = fadd fast float %391, %372
  %395 = fadd fast float %392, %373
  %396 = fmul fast float %393, %346
  %397 = fmul fast float %394, %346
  %398 = fmul fast float %395, %346
  %399 = fadd fast float %393, %374
  %400 = fmul fast float %346, %399
  %401 = fadd fast float %394, %375
  %402 = fmul fast float %346, %401
  %403 = fadd fast float %395, %376
  %404 = fmul fast float %346, %403
  %405 = fmul fast float %400, 5.000000e-01
  %406 = fmul fast float %402, 5.000000e-01
  %407 = fmul fast float %404, 5.000000e-01
  %408 = fsub fast float %405, %396
  %409 = fsub fast float %406, %397
  %410 = fsub fast float %407, %398
  %411 = call float @dx.op.dot3.f32(i32 55, float %408, float %409, float %410, float %408, float %409, float %410)  ; Dot3(ax,ay,az,bx,by,bz)
  %412 = call float @dx.op.unary.f32(i32 25, float %411)  ; Rsqrt(value)
  %413 = fmul fast float %411, 2.000000e+00
  %414 = fmul fast float %413, %412
  %415 = call float @dx.op.binary.f32(i32 35, float %188, float %414)  ; FMax(a,b)
  %416 = and i32 %334, 8
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %629, label %418, !dx.controlflow.hints !51

; <label>:418                                     ; preds = %309
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 0
  %421 = extractvalue %dx.types.CBufRet.f32 %419, 1
  %422 = extractvalue %dx.types.CBufRet.f32 %419, 2
  %423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %424 = extractvalue %dx.types.CBufRet.f32 %423, 0
  %425 = extractvalue %dx.types.CBufRet.f32 %423, 1
  %426 = extractvalue %dx.types.CBufRet.f32 %423, 2
  %427 = fsub fast float %178, %424
  %428 = fsub fast float %179, %425
  %429 = fsub fast float %180, %426
  %430 = fmul fast float %427, %420
  %431 = fmul fast float %428, %421
  %432 = fmul fast float %429, %422
  %433 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %434 = extractvalue %dx.types.CBufRet.i32 %433, 3
  %435 = icmp eq i32 %434, 0
  %436 = fcmp fast oge float %432, 0.000000e+00
  %437 = fcmp fast ole float %432, 1.000000e+00
  br i1 %435, label %440, label %438, !dx.controlflow.hints !52

; <label>:438                                     ; preds = %418
  %439 = and i1 %436, %437
  br label %450

; <label>:440                                     ; preds = %418
  %441 = fcmp fast oge float %430, 0.000000e+00
  %442 = fcmp fast oge float %431, 0.000000e+00
  %443 = and i1 %441, %442
  %444 = and i1 %436, %443
  %445 = fcmp fast ole float %430, 1.000000e+00
  %446 = fcmp fast ole float %431, 1.000000e+00
  %447 = and i1 %445, %446
  %448 = and i1 %437, %447
  %449 = and i1 %444, %448
  br label %450

; <label>:450                                     ; preds = %440, %438
  %451 = phi i1 [ %439, %438 ], [ %449, %440 ]
  br i1 %451, label %452, label %623, !dx.controlflow.hints !53

; <label>:452                                     ; preds = %450
  %453 = fcmp fast oeq float %415, 0.000000e+00
  br i1 %453, label %468, label %454, !dx.controlflow.hints !54

; <label>:454                                     ; preds = %452
  %455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %456 = extractvalue %dx.types.CBufRet.f32 %455, 3
  %457 = fmul fast float %456, %415
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = extractvalue %dx.types.CBufRet.f32 %458, 1
  %461 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %462 = fmul fast float %459, %457
  %463 = fmul fast float %460, %457
  %464 = fmul fast float %461, %457
  %465 = call float @dx.op.unary.f32(i32 23, float %462)  ; Log(value)
  %466 = call float @dx.op.unary.f32(i32 23, float %463)  ; Log(value)
  %467 = call float @dx.op.unary.f32(i32 23, float %464)  ; Log(value)
  br label %468

; <label>:468                                     ; preds = %454, %452
  %469 = phi float [ %465, %454 ], [ 0.000000e+00, %452 ]
  %470 = phi float [ %466, %454 ], [ 0.000000e+00, %452 ]
  %471 = phi float [ %467, %454 ], [ 0.000000e+00, %452 ]
  %472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.i32 %472, 0
  %474 = extractvalue %dx.types.CBufRet.i32 %472, 1
  %475 = uitofp i32 %473 to float
  %476 = uitofp i32 %474 to float
  %477 = fmul fast float %430, %475
  %478 = fmul fast float %431, %476
  %479 = fadd fast float %477, 5.000000e-01
  %480 = fadd fast float %478, 5.000000e-01
  %481 = call float @dx.op.unary.f32(i32 22, float %479)  ; Frc(value)
  %482 = call float @dx.op.unary.f32(i32 22, float %480)  ; Frc(value)
  %483 = call float @dx.op.unary.f32(i32 27, float %479)  ; Round_ni(value)
  %484 = call float @dx.op.unary.f32(i32 27, float %480)  ; Round_ni(value)
  %485 = fadd fast float %483, 1.000000e+00
  %486 = fadd fast float %484, 1.000000e+00
  %487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.f32 %487, 0
  %489 = extractvalue %dx.types.CBufRet.f32 %487, 1
  %490 = fmul fast float %488, %485
  %491 = fmul fast float %489, %486
  %492 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %27, float %490, float %491, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 0
  %494 = extractvalue %dx.types.ResRet.f32 %492, 1
  %495 = extractvalue %dx.types.ResRet.f32 %492, 2
  %496 = extractvalue %dx.types.ResRet.f32 %492, 3
  %497 = extractvalue %dx.types.CBufRet.i32 %472, 2
  %498 = extractvalue %dx.types.CBufRet.f32 %487, 2
  %499 = uitofp i32 %497 to float
  %500 = fadd fast float %499, -1.000000e+00
  %501 = fmul fast float %500, %493
  %502 = fmul fast float %500, %494
  %503 = fmul fast float %500, %495
  %504 = fmul fast float %500, %496
  %505 = fadd fast float %501, 5.000000e-01
  %506 = fadd fast float %502, 5.000000e-01
  %507 = fadd fast float %503, 5.000000e-01
  %508 = fadd fast float %504, 5.000000e-01
  %509 = fptoui float %505 to i32
  %510 = fptoui float %506 to i32
  %511 = fptoui float %507 to i32
  %512 = fptoui float %508 to i32
  %513 = uitofp i32 %509 to float
  %514 = uitofp i32 %510 to float
  %515 = uitofp i32 %511 to float
  %516 = uitofp i32 %512 to float
  %517 = fadd fast float %513, 5.000000e-01
  %518 = fadd fast float %514, 5.000000e-01
  %519 = fadd fast float %515, 5.000000e-01
  %520 = fadd fast float %516, 5.000000e-01
  %521 = fmul fast float %517, %498
  %522 = fmul fast float %518, %498
  %523 = fmul fast float %519, %498
  %524 = fmul fast float %520, %498
  %525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %521, float %432, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %522, float %432, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %523, float %432, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 0
  %531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %524, float %432, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 0
  %533 = fsub fast float %530, %532
  %534 = fmul fast float %533, %481
  %535 = fadd fast float %534, %532
  %536 = fsub fast float %528, %526
  %537 = fmul fast float %536, %481
  %538 = fadd fast float %537, %526
  %539 = fsub fast float %538, %535
  %540 = fmul fast float %539, %482
  %541 = fadd fast float %540, %535
  %542 = fcmp fast ogt float %541, 0.000000e+00
  br i1 %542, label %543, label %611, !dx.controlflow.hints !55

; <label>:543                                     ; preds = %468
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 0
  %546 = extractvalue %dx.types.CBufRet.f32 %544, 1
  %547 = extractvalue %dx.types.CBufRet.f32 %544, 2
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 0
  %550 = extractvalue %dx.types.CBufRet.f32 %548, 1
  %551 = extractvalue %dx.types.CBufRet.f32 %548, 2
  %552 = fmul fast float %428, %420
  %553 = fmul fast float %429, %420
  %554 = fadd fast float %430, %549
  %555 = fadd fast float %552, %550
  %556 = fadd fast float %553, %551
  %557 = fmul fast float %554, %545
  %558 = fmul fast float %555, %545
  %559 = fmul fast float %556, %545
  %560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %25, float %557, float %558, float %559, float undef, i32 0, i32 0, i32 0, float %469)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %561 = extractvalue %dx.types.ResRet.f32 %560, 0
  %562 = fmul fast float %554, %546
  %563 = fmul fast float %555, %546
  %564 = fmul fast float %556, %546
  %565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %25, float %562, float %563, float %564, float undef, i32 0, i32 0, i32 0, float %470)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %566 = extractvalue %dx.types.ResRet.f32 %565, 1
  %567 = fmul fast float %554, %547
  %568 = fmul fast float %555, %547
  %569 = fmul fast float %556, %547
  %570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %25, float %567, float %568, float %569, float undef, i32 0, i32 0, i32 0, float %471)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %571 = extractvalue %dx.types.ResRet.f32 %570, 2
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %574 = fmul fast float %566, %561
  %575 = fmul fast float %574, %571
  %576 = call float @dx.op.unary.f32(i32 23, float %575)  ; Log(value)
  %577 = fmul fast float %576, %573
  %578 = call float @dx.op.unary.f32(i32 21, float %577)  ; Exp(value)
  %579 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %580 = fmul fast float %541, %541
  %581 = fmul fast float %580, %578
  %582 = fmul fast float %581, %579
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 3
  %585 = fmul fast float %584, %582
  %586 = bitcast float %585 to i32
  %587 = sitofp i32 %586 to float
  %588 = fptosi float %587 to i32
  %589 = bitcast i32 %588 to float
  %590 = fsub fast float 1.000000e+00, %582
  %591 = bitcast float %590 to i32
  %592 = sitofp i32 %591 to float
  %593 = fptosi float %592 to i32
  %594 = bitcast i32 %593 to float
  %595 = fadd fast float %589, %594
  %596 = bitcast float %595 to i32
  %597 = sub nsw i32 2129859010, %596
  %598 = bitcast i32 %597 to float
  %599 = fmul fast float %598, %589
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 2
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 0
  %604 = fmul fast float %599, %603
  %605 = fadd fast float %604, 1.000000e+00
  %606 = bitcast float %605 to i32
  %607 = sub nsw i32 2129859010, %606
  %608 = bitcast i32 %607 to float
  %609 = fmul fast float %599, %601
  %610 = fmul fast float %609, %608
  br label %611

; <label>:611                                     ; preds = %543, %468
  %612 = phi float [ %610, %543 ], [ %541, %468 ]
  %613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %614 = extractvalue %dx.types.CBufRet.f32 %613, 0
  %615 = extractvalue %dx.types.CBufRet.f32 %613, 1
  %616 = extractvalue %dx.types.CBufRet.f32 %613, 2
  %617 = fmul fast float %614, %612
  %618 = fmul fast float %615, %612
  %619 = fmul fast float %616, %612
  %620 = fadd fast float %617, %325
  %621 = fadd fast float %618, %326
  %622 = fadd fast float %619, %327
  br label %623

; <label>:623                                     ; preds = %611, %450
  %624 = phi float [ %620, %611 ], [ %325, %450 ]
  %625 = phi float [ %621, %611 ], [ %326, %450 ]
  %626 = phi float [ %622, %611 ], [ %327, %450 ]
  %627 = phi float [ %612, %611 ], [ 0.000000e+00, %450 ]
  %628 = fadd fast float %627, %324
  br label %629

; <label>:629                                     ; preds = %623, %309
  %630 = phi float [ %624, %623 ], [ %325, %309 ]
  %631 = phi float [ %625, %623 ], [ %326, %309 ]
  %632 = phi float [ %626, %623 ], [ %327, %309 ]
  %633 = phi float [ %628, %623 ], [ %324, %309 ]
  %634 = and i32 %334, 2
  %635 = icmp ne i32 %634, 0
  %636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %637 = extractvalue %dx.types.CBufRet.f32 %636, 2
  %638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %639 = extractvalue %dx.types.CBufRet.f32 %638, 2
  %640 = fadd fast float %639, %637
  %641 = fcmp fast ole float %180, %640
  %642 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.i32 %642, 3
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %645, label %664, !dx.controlflow.hints !56

; <label>:645                                     ; preds = %629
  %646 = extractvalue %dx.types.CBufRet.f32 %636, 0
  %647 = extractvalue %dx.types.CBufRet.f32 %636, 1
  %648 = fsub fast float %178, %646
  %649 = fsub fast float %179, %647
  %650 = extractvalue %dx.types.CBufRet.f32 %638, 0
  %651 = extractvalue %dx.types.CBufRet.f32 %638, 1
  %652 = fdiv fast float 1.000000e+00, %650
  %653 = fdiv fast float 1.000000e+00, %651
  %654 = fmul fast float %648, %652
  %655 = fmul fast float %653, %649
  %656 = fcmp fast oge float %654, 0.000000e+00
  %657 = fcmp fast oge float %655, 0.000000e+00
  %658 = and i1 %656, %657
  %659 = and i1 %641, %658
  %660 = fcmp fast ole float %654, 1.000000e+00
  %661 = fcmp fast ole float %655, 1.000000e+00
  %662 = and i1 %660, %661
  %663 = and i1 %662, %659
  br label %664

; <label>:664                                     ; preds = %645, %629
  %665 = phi i1 [ %663, %645 ], [ %641, %629 ]
  %666 = and i1 %635, %665
  br i1 %666, label %667, label %843, !dx.controlflow.hints !57

; <label>:667                                     ; preds = %664
  %668 = fcmp fast oeq float %415, 0.000000e+00
  br i1 %668, label %674, label %669, !dx.controlflow.hints !58

; <label>:669                                     ; preds = %667
  %670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %671 = extractvalue %dx.types.CBufRet.f32 %670, 3
  %672 = fmul fast float %671, %415
  %673 = call float @dx.op.unary.f32(i32 23, float %672)  ; Log(value)
  br label %674

; <label>:674                                     ; preds = %669, %667
  %675 = phi float [ %673, %669 ], [ 0.000000e+00, %667 ]
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 0
  %678 = extractvalue %dx.types.CBufRet.f32 %676, 1
  %679 = extractvalue %dx.types.CBufRet.f32 %676, 2
  %680 = fsub fast float %178, %677
  %681 = fsub fast float %179, %678
  %682 = fsub fast float %180, %679
  %683 = fmul fast float %680, %680
  %684 = fmul fast float %681, %681
  %685 = fadd fast float %683, %684
  %686 = fmul fast float %682, %682
  %687 = fadd fast float %685, %686
  %688 = call float @dx.op.unary.f32(i32 24, float %687)  ; Sqrt(value)
  %689 = extractvalue %dx.types.CBufRet.f32 %636, 0
  %690 = extractvalue %dx.types.CBufRet.f32 %636, 1
  %691 = fsub fast float %178, %689
  %692 = fsub fast float %179, %690
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 0
  %695 = extractvalue %dx.types.CBufRet.f32 %693, 1
  %696 = fmul fast float %691, %694
  %697 = fmul fast float %692, %695
  %698 = fsub fast float 1.000000e+00, %697
  br i1 %644, label %705, label %699, !dx.controlflow.hints !59

; <label>:699                                     ; preds = %674
  %700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %27, float %696, float %698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %701 = extractvalue %dx.types.ResRet.f32 %700, 0
  %702 = extractvalue %dx.types.ResRet.f32 %700, 1
  %703 = extractvalue %dx.types.ResRet.f32 %700, 2
  %704 = extractvalue %dx.types.ResRet.f32 %700, 3
  br label %711

; <label>:705                                     ; preds = %674
  %706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %28, float %696, float %698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  %708 = extractvalue %dx.types.ResRet.f32 %706, 1
  %709 = extractvalue %dx.types.ResRet.f32 %706, 2
  %710 = extractvalue %dx.types.ResRet.f32 %706, 3
  br label %711

; <label>:711                                     ; preds = %705, %699
  %712 = phi float [ %701, %699 ], [ %707, %705 ]
  %713 = phi float [ %702, %699 ], [ %708, %705 ]
  %714 = phi float [ %703, %699 ], [ %709, %705 ]
  %715 = phi float [ %704, %699 ], [ %710, %705 ]
  %716 = extractvalue %dx.types.CBufRet.f32 %693, 3
  %717 = fmul fast float %716, %713
  %718 = fmul fast float %717, %712
  %719 = fsub fast float %717, %718
  %720 = fcmp fast ole float %719, 0.000000e+00
  %721 = fmul fast float %716, %714
  %722 = fadd fast float %721, %637
  %723 = fdiv fast float 1.000000e+00, %719
  %724 = select i1 %720, float 1.000000e+06, float %723
  %725 = fsub fast float %180, %637
  %726 = fsub fast float %725, %718
  %727 = fmul fast float %724, %726
  %728 = call float @dx.op.unary.f32(i32 7, float %727)  ; Saturate(value)
  %729 = extractvalue %dx.types.CBufRet.f32 %693, 2
  %730 = fmul fast float %729, %728
  %731 = fsub fast float %729, %730
  %732 = fcmp fast olt float %180, %722
  %733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.f32 %733, 3
  %735 = select i1 %732, float %734, float 1.000000e+00
  %736 = extractvalue %dx.types.CBufRet.f32 %733, 1
  %737 = fcmp fast oeq float %736, 0.000000e+00
  br i1 %737, label %820, label %738, !dx.controlflow.hints !60

; <label>:738                                     ; preds = %711
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 405)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 3
  %741 = fcmp fast ogt float %740, 0.000000e+00
  %742 = extractvalue %dx.types.CBufRet.f32 %733, 2
  br i1 %741, label %743, label %773, !dx.controlflow.hints !61

; <label>:743                                     ; preds = %738
  %744 = fmul fast float %696, %740
  %745 = fmul fast float %697, %740
  %746 = fsub fast float 1.000000e+00, %745
  %747 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %25, float %744, float %746, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = extractvalue %dx.types.ResRet.f32 %747, 1
  %750 = fmul fast float %748, 2.000000e+00
  %751 = fmul fast float %749, 2.000000e+00
  %752 = fadd fast float %750, -1.000000e+00
  %753 = fadd fast float %751, -1.000000e+00
  %754 = fmul fast float %736, %178
  %755 = fmul fast float %736, %179
  %756 = fmul fast float %736, %180
  %757 = call float @dx.op.unary.f32(i32 22, float %742)  ; Frc(value)
  %758 = fmul fast float %752, %757
  %759 = fmul fast float %753, %757
  %760 = fsub fast float %754, %758
  %761 = fsub fast float %755, %759
  %762 = fadd fast float %742, 5.000000e-01
  %763 = call float @dx.op.unary.f32(i32 22, float %762)  ; Frc(value)
  %764 = fmul fast float %763, %752
  %765 = fmul fast float %763, %753
  %766 = fadd fast float %754, -5.000000e-01
  %767 = fsub fast float %766, %764
  %768 = fadd fast float %755, -5.000000e-01
  %769 = fsub fast float %768, %765
  %770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %767, float %769, float %756, float undef, i32 0, i32 0, i32 0, float %675)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %771 = extractvalue %dx.types.ResRet.f32 %770, 0
  %772 = extractvalue %dx.types.ResRet.f32 %770, 1
  br label %786

; <label>:773                                     ; preds = %738
  %774 = extractvalue %dx.types.CBufRet.f32 %739, 0
  %775 = extractvalue %dx.types.CBufRet.f32 %739, 1
  %776 = extractvalue %dx.types.CBufRet.f32 %739, 2
  %777 = fmul fast float %742, %774
  %778 = fmul fast float %742, %775
  %779 = fmul fast float %742, %776
  %780 = fsub fast float %178, %777
  %781 = fsub fast float %179, %778
  %782 = fsub fast float %180, %779
  %783 = fmul fast float %780, %736
  %784 = fmul fast float %781, %736
  %785 = fmul fast float %782, %736
  br label %786

; <label>:786                                     ; preds = %773, %743
  %787 = phi float [ %760, %743 ], [ %783, %773 ]
  %788 = phi float [ %761, %743 ], [ %784, %773 ]
  %789 = phi float [ %756, %743 ], [ %785, %773 ]
  %790 = phi float [ %771, %743 ], [ 0.000000e+00, %773 ]
  %791 = phi float [ %772, %743 ], [ 0.000000e+00, %773 ]
  %792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %787, float %788, float %789, float undef, i32 0, i32 0, i32 0, float %675)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  %794 = extractvalue %dx.types.ResRet.f32 %792, 1
  br i1 %741, label %795, label %807, !dx.controlflow.hints !62

; <label>:795                                     ; preds = %786
  %796 = extractvalue %dx.types.CBufRet.f32 %733, 2
  %797 = call float @dx.op.unary.f32(i32 22, float %796)  ; Frc(value)
  %798 = fmul fast float %797, 2.000000e+00
  %799 = fadd fast float %798, -1.000000e+00
  %800 = call float @dx.op.unary.f32(i32 6, float %799)  ; FAbs(value)
  %801 = fsub fast float %790, %793
  %802 = fmul fast float %800, %801
  %803 = fadd fast float %802, %793
  %804 = fsub fast float %791, %794
  %805 = fmul fast float %800, %804
  %806 = fadd fast float %805, %794
  br label %807

; <label>:807                                     ; preds = %795, %786
  %808 = phi float [ %803, %795 ], [ %793, %786 ]
  %809 = phi float [ %806, %795 ], [ %794, %786 ]
  %810 = extractvalue %dx.types.CBufRet.f32 %636, 3
  %811 = fadd fast float %810, %810
  %812 = fdiv fast float 2.000000e+00, %811
  %813 = fmul fast float %810, 2.000000e+00
  %814 = fadd fast float %808, -1.000000e+00
  %815 = fadd fast float %814, %809
  %816 = fadd fast float %815, %813
  %817 = fmul fast float %816, %812
  %818 = fadd fast float %817, -1.000000e+00
  %819 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  br label %820

; <label>:820                                     ; preds = %807, %711
  %821 = phi float [ %819, %807 ], [ 1.000000e+00, %711 ]
  %822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.f32 %822, 0
  %824 = extractvalue %dx.types.CBufRet.f32 %822, 1
  %825 = extractvalue %dx.types.CBufRet.f32 %822, 2
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 1
  %828 = fsub fast float %688, %827
  %829 = extractvalue %dx.types.CBufRet.f32 %826, 2
  %830 = fmul fast float %828, %829
  %831 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  %832 = fmul fast float %735, %715
  %833 = fmul fast float %832, %731
  %834 = fmul fast float %833, %821
  %835 = fmul fast float %834, %831
  %836 = fmul fast float %835, %823
  %837 = fmul fast float %835, %824
  %838 = fmul fast float %835, %825
  %839 = fadd fast float %836, %630
  %840 = fadd fast float %837, %631
  %841 = fadd fast float %838, %632
  %842 = fadd fast float %835, %633
  br label %843

; <label>:843                                     ; preds = %820, %664
  %844 = phi float [ %839, %820 ], [ %630, %664 ]
  %845 = phi float [ %840, %820 ], [ %631, %664 ]
  %846 = phi float [ %841, %820 ], [ %632, %664 ]
  %847 = phi float [ %842, %820 ], [ %633, %664 ]
  %848 = and i32 %334, 1
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %1123, label %850, !dx.controlflow.hints !63

; <label>:850                                     ; preds = %843
  %851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.i32 %851, 1
  %853 = and i32 %852, 1
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %930, label %855, !dx.controlflow.hints !64

; <label>:855                                     ; preds = %850
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 180)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 3
  %858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %859 = extractvalue %dx.types.CBufRet.f32 %858, 0
  %860 = extractvalue %dx.types.CBufRet.f32 %858, 1
  %861 = extractvalue %dx.types.CBufRet.f32 %856, 0
  %862 = extractvalue %dx.types.CBufRet.f32 %856, 1
  %863 = extractvalue %dx.types.CBufRet.f32 %856, 2
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 0
  %866 = extractvalue %dx.types.CBufRet.f32 %864, 1
  %867 = extractvalue %dx.types.CBufRet.f32 %864, 2
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 3
  %870 = and i32 %852, 2
  %871 = extractvalue %dx.types.CBufRet.i32 %851, 0
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %909, label %873

; <label>:873                                     ; preds = %855
  br label %874

; <label>:874                                     ; preds = %874, %873
  %875 = phi float [ %903, %874 ], [ 0.000000e+00, %873 ]
  %876 = phi float [ %902, %874 ], [ 1.000000e+06, %873 ]
  %877 = phi i32 [ %904, %874 ], [ 0, %873 ]
  %878 = add i32 %877, 171
  %879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %878)  ; CBufferLoadLegacy(handle,regIndex)
  %880 = extractvalue %dx.types.CBufRet.f32 %879, 0
  %881 = extractvalue %dx.types.CBufRet.f32 %879, 1
  %882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.f32 %882, 2
  %884 = extractvalue %dx.types.CBufRet.f32 %879, 2
  %885 = fsub fast float %178, %880
  %886 = fsub fast float %179, %881
  %887 = fmul fast float %885, %885
  %888 = fmul fast float %886, %886
  %889 = fadd fast float %887, %888
  %890 = call float @dx.op.unary.f32(i32 24, float %889)  ; Sqrt(value)
  %891 = fsub fast float %890, %884
  %892 = icmp ne i32 %870, 0
  %893 = fsub fast float -0.000000e+00, %860
  %894 = select i1 %892, float %893, float %860
  %895 = fmul fast float %891, %894
  %896 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %897 = fmul fast float %896, %859
  %898 = fsub fast float %883, %180
  %899 = fmul fast float %898, %857
  %900 = call float @dx.op.unary.f32(i32 7, float %899)  ; Saturate(value)
  %901 = fmul fast float %897, %900
  %902 = call float @dx.op.binary.f32(i32 36, float %876, float %891)  ; FMin(a,b)
  %903 = call float @dx.op.binary.f32(i32 35, float %875, float %901)  ; FMax(a,b)
  %904 = add nuw nsw i32 %877, 1
  %905 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.i32 %905, 0
  %907 = icmp ult i32 %904, %906
  br i1 %907, label %874, label %908

; <label>:908                                     ; preds = %874
  br label %909

; <label>:909                                     ; preds = %908, %855
  %910 = phi float [ 0.000000e+00, %855 ], [ %903, %908 ]
  %911 = phi float [ 1.000000e+06, %855 ], [ %902, %908 ]
  %912 = fadd fast float %910, %847
  %913 = fmul fast float %911, %869
  %914 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  %915 = fsub fast float %865, %861
  %916 = fsub fast float %866, %862
  %917 = fsub fast float %867, %863
  %918 = fmul fast float %914, %915
  %919 = fmul fast float %914, %916
  %920 = fmul fast float %914, %917
  %921 = fadd fast float %918, %861
  %922 = fadd fast float %919, %862
  %923 = fadd fast float %920, %863
  %924 = fmul fast float %921, %910
  %925 = fmul fast float %922, %910
  %926 = fmul fast float %923, %910
  %927 = fadd fast float %924, %844
  %928 = fadd fast float %925, %845
  %929 = fadd fast float %926, %846
  br label %1123

; <label>:930                                     ; preds = %850
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 2
  %933 = extractvalue %dx.types.CBufRet.f32 %931, 3
  %934 = fmul fast float %932, %178
  %935 = fmul fast float %933, %179
  %936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %937 = extractvalue %dx.types.CBufRet.f32 %936, 0
  %938 = extractvalue %dx.types.CBufRet.f32 %936, 1
  %939 = fadd fast float %934, %937
  %940 = fadd fast float %935, %938
  %941 = call float @dx.op.unary.f32(i32 7, float %939)  ; Saturate(value)
  %942 = call float @dx.op.unary.f32(i32 7, float %940)  ; Saturate(value)
  %943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %28, float %941, float %942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %944 = extractvalue %dx.types.ResRet.f32 %943, 0
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 0
  %947 = fmul fast float %946, %944
  %948 = fsub fast float %939, %941
  %949 = fsub fast float %940, %942
  %950 = extractvalue %dx.types.CBufRet.f32 %931, 0
  %951 = extractvalue %dx.types.CBufRet.f32 %931, 1
  %952 = fmul fast float %950, %948
  %953 = fmul fast float %951, %949
  %954 = fmul fast float %952, %952
  %955 = fmul fast float %953, %953
  %956 = fadd fast float %954, %955
  %957 = call float @dx.op.unary.f32(i32 24, float %956)  ; Sqrt(value)
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 3
  %960 = fmul fast float %959, %957
  %961 = call float @dx.op.unary.f32(i32 7, float %960)  ; Saturate(value)
  %962 = extractvalue %dx.types.CBufRet.f32 %958, 2
  %963 = fsub fast float %962, %947
  %964 = fmul fast float %963, %961
  %965 = extractvalue %dx.types.CBufRet.f32 %945, 1
  %966 = fsub fast float %180, %947
  %967 = fsub fast float %966, %965
  %968 = fsub fast float %967, %964
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 2
  %971 = fsub fast float %968, %970
  %972 = fcmp fast olt float %971, 0.000000e+00
  %973 = extractvalue %dx.types.CBufRet.i32 %851, 0
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %1025, label %975

; <label>:975                                     ; preds = %930
  br label %976

; <label>:976                                     ; preds = %1014, %975
  %977 = phi i32 [ %1020, %1014 ], [ 1, %975 ]
  %978 = phi i32 [ %1021, %1014 ], [ 0, %975 ]
  %979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %980 = extractvalue %dx.types.CBufRet.f32 %979, 1
  %981 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.i32 %981, 1
  %983 = and i32 %982, 8
  %984 = icmp eq i32 %983, 0
  %985 = fcmp fast ogt float %980, %968
  %986 = or i1 %985, %984
  %987 = add i32 %978, 171
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %987)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 0
  %990 = extractvalue %dx.types.CBufRet.f32 %988, 1
  %991 = extractvalue %dx.types.CBufRet.f32 %988, 2
  br i1 %986, label %992, label %998, !dx.controlflow.hints !65

; <label>:992                                     ; preds = %976
  %993 = fsub fast float %989, %178
  %994 = fsub fast float %990, %179
  %995 = fmul fast float %993, %993
  %996 = fmul fast float %994, %994
  %997 = fadd fast float %995, %996
  br label %1014

; <label>:998                                     ; preds = %976
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 2
  %1001 = extractvalue %dx.types.CBufRet.f32 %979, 2
  %1002 = fmul fast float %1001, %1000
  %1003 = fsub fast float %1002, %980
  %1004 = fdiv fast float %991, %1003
  %1005 = fsub fast float %178, %989
  %1006 = fsub fast float %179, %990
  %1007 = fsub fast float %968, %980
  %1008 = fmul fast float %1004, %1007
  %1009 = fmul fast float %1005, %1005
  %1010 = fmul fast float %1006, %1006
  %1011 = fadd fast float %1009, %1010
  %1012 = fmul fast float %1008, %1008
  %1013 = fadd fast float %1011, %1012
  br label %1014

; <label>:1014                                    ; preds = %998, %992
  %1015 = phi float [ %997, %992 ], [ %1013, %998 ]
  %1016 = call float @dx.op.unary.f32(i32 24, float %1015)  ; Sqrt(value)
  %1017 = fsub float %991, %1016
  %1018 = fcmp fast olt float %1017, 0.000000e+00
  %1019 = zext i1 %1018 to i32
  %1020 = and i32 %1019, %977
  %1021 = add i32 %978, 1
  %1022 = extractvalue %dx.types.CBufRet.i32 %981, 0
  %1023 = icmp ult i32 %1021, %1022
  br i1 %1023, label %976, label %1024

; <label>:1024                                    ; preds = %1014
  br label %1025

; <label>:1025                                    ; preds = %1024, %930
  %1026 = phi i32 [ 1, %930 ], [ %1020, %1024 ]
  br label %1027

; <label>:1027                                    ; preds = %1027, %1025
  %1028 = phi i32 [ %1064, %1027 ], [ %1026, %1025 ]
  %1029 = phi i32 [ %1065, %1027 ], [ 0, %1025 ]
  %1030 = add nuw nsw i32 %1029, 191
  %1031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %1030)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.f32 %1031, 0
  %1033 = extractvalue %dx.types.CBufRet.f32 %1031, 1
  %1034 = extractvalue %dx.types.CBufRet.f32 %1031, 2
  %1035 = add nuw nsw i32 %1029, 195
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %1035)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.CBufRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.CBufRet.f32 %1036, 2
  %1040 = fsub fast float %178, %1032
  %1041 = fsub fast float %179, %1033
  %1042 = fsub fast float %968, %1034
  %1043 = call float @dx.op.unary.f32(i32 6, float %1040)  ; FAbs(value)
  %1044 = call float @dx.op.unary.f32(i32 6, float %1041)  ; FAbs(value)
  %1045 = call float @dx.op.unary.f32(i32 6, float %1042)  ; FAbs(value)
  %1046 = fsub fast float %1043, %1037
  %1047 = fsub fast float %1044, %1038
  %1048 = fsub fast float %1045, %1039
  %1049 = call float @dx.op.binary.f32(i32 35, float %1046, float 0.000000e+00)  ; FMax(a,b)
  %1050 = call float @dx.op.binary.f32(i32 35, float %1047, float 0.000000e+00)  ; FMax(a,b)
  %1051 = call float @dx.op.binary.f32(i32 35, float %1048, float 0.000000e+00)  ; FMax(a,b)
  %1052 = fmul fast float %1049, %1049
  %1053 = fmul fast float %1050, %1050
  %1054 = fadd fast float %1053, %1052
  %1055 = fmul fast float %1051, %1051
  %1056 = fadd fast float %1054, %1055
  %1057 = call float @dx.op.unary.f32(i32 24, float %1056)  ; Sqrt(value)
  %1058 = call float @dx.op.binary.f32(i32 35, float %1047, float %1048)  ; FMax(a,b)
  %1059 = call float @dx.op.binary.f32(i32 35, float %1046, float %1058)  ; FMax(a,b)
  %1060 = call float @dx.op.binary.f32(i32 36, float %1059, float 0.000000e+00)  ; FMin(a,b)
  %1061 = fadd fast float %1060, %1057
  %1062 = fcmp ogt float %1061, -0.000000e+00
  %1063 = zext i1 %1062 to i32
  %1064 = and i32 %1063, %1028
  %1065 = add nuw nsw i32 %1029, 1
  %1066 = icmp eq i32 %1065, 4
  br i1 %1066, label %1067, label %1027

; <label>:1067                                    ; preds = %1027
  %1068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.i32 %1068, 1
  %1070 = lshr i32 %1069, 1
  %1071 = xor i32 %1070, %1064
  %1072 = zext i1 %972 to i32
  %1073 = and i32 %1071, %1072
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1123, label %1075, !dx.controlflow.hints !66

; <label>:1075                                    ; preds = %1067
  %1076 = fmul fast float %171, %171
  %1077 = fmul fast float %172, %172
  %1078 = fadd fast float %1076, %1077
  %1079 = fmul fast float %173, %173
  %1080 = fadd fast float %1078, %1079
  %1081 = call float @dx.op.unary.f32(i32 24, float %1080)  ; Sqrt(value)
  %1082 = and i32 %852, 4
  %1083 = icmp ne i32 %1082, 0
  %1084 = select i1 %1083, float %1081, float 1.000000e+00
  %1085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.f32 %1085, 1
  %1087 = fsub fast float %1084, %1086
  %1088 = extractvalue %dx.types.CBufRet.f32 %1085, 3
  %1089 = fmul fast float %1087, %1088
  %1090 = call float @dx.op.unary.f32(i32 7, float %1089)  ; Saturate(value)
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 3
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 2
  %1095 = fsub fast float %1094, %968
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 3
  %1098 = fmul fast float %1095, %1097
  %1099 = call float @dx.op.unary.f32(i32 7, float %1098)  ; Saturate(value)
  %1100 = fmul fast float %1099, %1092
  %1101 = extractvalue %dx.types.CBufRet.f32 %1096, 0
  %1102 = fsub fast float %1081, %1101
  %1103 = extractvalue %dx.types.CBufRet.f32 %1096, 1
  %1104 = fmul fast float %1102, %1103
  %1105 = call float @dx.op.unary.f32(i32 7, float %1104)  ; Saturate(value)
  %1106 = fsub fast float 1.000000e+00, %1090
  %1107 = fmul fast float %1105, %1106
  %1108 = fadd fast float %1107, %1090
  %1109 = extractvalue %dx.types.CBufRet.f32 %1085, 0
  %1110 = fsub fast float %1100, %1109
  %1111 = fmul fast float %1110, %1108
  %1112 = fadd fast float %1111, %1109
  %1113 = extractvalue %dx.types.CBufRet.f32 %1091, 0
  %1114 = extractvalue %dx.types.CBufRet.f32 %1091, 1
  %1115 = extractvalue %dx.types.CBufRet.f32 %1091, 2
  %1116 = fadd fast float %1112, %847
  %1117 = fmul fast float %1112, %1113
  %1118 = fmul fast float %1112, %1114
  %1119 = fmul fast float %1112, %1115
  %1120 = fadd fast float %1117, %844
  %1121 = fadd fast float %1118, %845
  %1122 = fadd fast float %1119, %846
  br label %1123

; <label>:1123                                    ; preds = %1075, %1067, %909, %843
  %1124 = phi float [ %844, %843 ], [ %927, %909 ], [ %1120, %1075 ], [ %844, %1067 ]
  %1125 = phi float [ %845, %843 ], [ %928, %909 ], [ %1121, %1075 ], [ %845, %1067 ]
  %1126 = phi float [ %846, %843 ], [ %929, %909 ], [ %1122, %1075 ], [ %846, %1067 ]
  %1127 = phi float [ %847, %843 ], [ %912, %909 ], [ %1116, %1075 ], [ %847, %1067 ]
  %1128 = and i32 %334, 16
  %1129 = icmp eq i32 %1128, 0
  br i1 %1129, label %1921, label %1130, !dx.controlflow.hints !67

; <label>:1130                                    ; preds = %1123
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.CBufRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.CBufRet.f32 %1131, 2
  %1135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %1136 = extractvalue %dx.types.CBufRet.f32 %1135, 3
  %1137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %1138 = extractvalue %dx.types.CBufRet.f32 %1137, 3
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 3
  %1141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1142 = extractvalue %dx.types.CBufRet.i32 %1141, 0
  %1143 = icmp ne i32 %1142, 0
  %1144 = zext i1 %1143 to i32
  %1145 = extractvalue %dx.types.CBufRet.i32 %1141, 1
  %1146 = icmp ne i32 %1145, 0
  %1147 = zext i1 %1146 to i32
  %1148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1148, 0
  %1150 = bitcast float %1149 to i32
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1201, label %1152

; <label>:1152                                    ; preds = %1130
  br label %1153

; <label>:1153                                    ; preds = %1196, %1152
  %1154 = phi i32 [ %1197, %1196 ], [ 0, %1152 ]
  %1155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.f32 %1155, 0
  %1157 = bitcast float %1156 to i32
  %1158 = call i32 @dx.op.tertiary.i32(i32 49, i32 %332, i32 %1157, i32 %1154)  ; UMad(a,b,c)
  %1159 = shl i32 %1158, 2
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  br label %1162

; <label>:1162                                    ; preds = %1165, %1153
  %1163 = phi i32 [ %1161, %1153 ], [ %1170, %1165 ]
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1196, label %1165

; <label>:1165                                    ; preds = %1162
  %1166 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1163)  ; FirstbitLo(value)
  %1167 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1154, i32 %1166)  ; UMad(a,b,c)
  %1168 = and i32 %1166, 31
  %1169 = shl i32 1, %1168
  %1170 = xor i32 %1169, %1163
  %1171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1167, i32 0)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.f32 %1171, 0
  %1173 = extractvalue %dx.types.ResRet.f32 %1171, 1
  %1174 = extractvalue %dx.types.ResRet.f32 %1171, 2
  %1175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1167, i32 16)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.ResRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.ResRet.f32 %1175, 2
  %1179 = fsub fast float %1172, %1176
  %1180 = fsub fast float %1173, %1177
  %1181 = fsub fast float %1174, %1178
  %1182 = fadd fast float %1176, %1172
  %1183 = fadd fast float %1177, %1173
  %1184 = fadd fast float %1178, %1174
  %1185 = fcmp fast ogt float %178, %1179
  %1186 = fcmp fast ogt float %179, %1180
  %1187 = fcmp fast ogt float %180, %1181
  %1188 = and i1 %1185, %1186
  %1189 = and i1 %1187, %1188
  %1190 = fcmp fast olt float %178, %1182
  %1191 = fcmp fast olt float %179, %1183
  %1192 = fcmp fast olt float %180, %1184
  %1193 = and i1 %1190, %1191
  %1194 = and i1 %1192, %1193
  %1195 = and i1 %1189, %1194
  br i1 %1195, label %1199, label %1162, !dx.controlflow.hints !68

; <label>:1196                                    ; preds = %1162
  %1197 = add i32 %1154, 1
  %1198 = icmp ult i32 %1197, %1157
  br i1 %1198, label %1153, label %1200, !llvm.loop !69

; <label>:1199                                    ; preds = %1165
  br label %1201

; <label>:1200                                    ; preds = %1196
  br label %1201

; <label>:1201                                    ; preds = %1200, %1199, %1130
  %1202 = phi i32 [ 255, %1130 ], [ %1167, %1199 ], [ 255, %1200 ]
  %1203 = icmp eq i32 %1202, 255
  br i1 %1203, label %1223, label %1204, !dx.controlflow.hints !71

; <label>:1204                                    ; preds = %1201
  %1205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 32)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = extractvalue %dx.types.ResRet.f32 %1205, 1
  %1208 = extractvalue %dx.types.ResRet.f32 %1205, 2
  %1209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 132)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 136)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.f32 %1211, 0
  %1213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 152)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.f32 %1213, 0
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1202, i32 156)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1202, i32 160)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = icmp ne i32 %1216, 0
  %1220 = zext i1 %1219 to i32
  %1221 = icmp ne i32 %1218, 0
  %1222 = zext i1 %1221 to i32
  br label %1223

; <label>:1223                                    ; preds = %1204, %1201
  %1224 = phi float [ %1206, %1204 ], [ %1132, %1201 ]
  %1225 = phi float [ %1207, %1204 ], [ %1133, %1201 ]
  %1226 = phi float [ %1208, %1204 ], [ %1134, %1201 ]
  %1227 = phi float [ %1210, %1204 ], [ %1136, %1201 ]
  %1228 = phi float [ %1212, %1204 ], [ %1138, %1201 ]
  %1229 = phi float [ %1214, %1204 ], [ %1140, %1201 ]
  %1230 = phi i32 [ %1220, %1204 ], [ %1144, %1201 ]
  %1231 = phi i32 [ %1222, %1204 ], [ %1147, %1201 ]
  %1232 = extractvalue %dx.types.CBufRet.f32 %1137, 0
  %1233 = extractvalue %dx.types.CBufRet.f32 %1137, 1
  %1234 = fsub fast float %178, %1232
  %1235 = fsub fast float %179, %1233
  %1236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1236, 2
  %1238 = extractvalue %dx.types.CBufRet.f32 %1236, 3
  %1239 = fmul fast float %1234, %1237
  %1240 = fmul fast float %1235, %1238
  %1241 = call float @dx.op.binary.f32(i32 36, float %1239, float %1240)  ; FMin(a,b)
  %1242 = fcmp fast olt float %1241, 0.000000e+00
  %1243 = call float @dx.op.binary.f32(i32 35, float %1239, float %1240)  ; FMax(a,b)
  %1244 = fcmp fast ogt float %1243, 1.000000e+00
  %1245 = or i1 %1242, %1244
  %1246 = extractvalue %dx.types.CBufRet.f32 %1137, 2
  %1247 = fcmp fast olt float %180, %1246
  %1248 = or i1 %1245, %1247
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 3
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 0
  %1253 = fadd fast float %1252, %1250
  %1254 = fcmp fast ogt float %180, %1253
  %1255 = or i1 %1248, %1254
  br i1 %1255, label %1540, label %1256, !dx.controlflow.hints !72

; <label>:1256                                    ; preds = %1223
  %1257 = fsub fast float 1.000000e+00, %1240
  %1258 = extractvalue %dx.types.CBufRet.f32 %1251, 3
  %1259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1260 = extractvalue %dx.types.CBufRet.f32 %1259, 3
  %1261 = extractvalue %dx.types.CBufRet.f32 %1259, 2
  %1262 = extractvalue %dx.types.CBufRet.f32 %1259, 1
  %1263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1264 = extractvalue %dx.types.CBufRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.CBufRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.CBufRet.f32 %1263, 2
  %1267 = extractvalue %dx.types.CBufRet.f32 %1259, 0
  br i1 %1203, label %1283, label %1268, !dx.controlflow.hints !73

; <label>:1268                                    ; preds = %1256
  %1269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 48)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.f32 %1269, 0
  %1271 = extractvalue %dx.types.ResRet.f32 %1269, 1
  %1272 = extractvalue %dx.types.ResRet.f32 %1269, 2
  %1273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 104)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.f32 %1273, 0
  %1275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 108)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.f32 %1275, 0
  %1277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 112)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.f32 %1277, 0
  %1279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 116)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 0
  %1281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 120)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.f32 %1281, 0
  br label %1283

; <label>:1283                                    ; preds = %1268, %1256
  %1284 = phi float [ %1276, %1268 ], [ %1258, %1256 ]
  %1285 = phi float [ %1280, %1268 ], [ %1260, %1256 ]
  %1286 = phi float [ %1282, %1268 ], [ %1261, %1256 ]
  %1287 = phi float [ %1278, %1268 ], [ %1262, %1256 ]
  %1288 = phi float [ %1270, %1268 ], [ %1264, %1256 ]
  %1289 = phi float [ %1271, %1268 ], [ %1265, %1256 ]
  %1290 = phi float [ %1272, %1268 ], [ %1266, %1256 ]
  %1291 = phi float [ %1274, %1268 ], [ %1267, %1256 ]
  %1292 = fcmp fast oeq float %1284, 0.000000e+00
  br i1 %1292, label %1408, label %1293, !dx.controlflow.hints !74

; <label>:1293                                    ; preds = %1283
  %1294 = fcmp fast ogt float %1285, 0.000000e+00
  %1295 = fcmp fast oeq float %415, 0.000000e+00
  br i1 %1295, label %1300, label %1296, !dx.controlflow.hints !58

; <label>:1296                                    ; preds = %1293
  %1297 = extractvalue %dx.types.CBufRet.f32 %1135, 1
  %1298 = fmul fast float %1297, %415
  %1299 = call float @dx.op.unary.f32(i32 23, float %1298)  ; Log(value)
  br label %1300

; <label>:1300                                    ; preds = %1296, %1293
  %1301 = phi float [ %1299, %1296 ], [ 0.000000e+00, %1293 ]
  br i1 %1295, label %1306, label %1302, !dx.controlflow.hints !58

; <label>:1302                                    ; preds = %1300
  %1303 = extractvalue %dx.types.CBufRet.f32 %1135, 0
  %1304 = fmul fast float %1303, %415
  %1305 = call float @dx.op.unary.f32(i32 23, float %1304)  ; Log(value)
  br label %1306

; <label>:1306                                    ; preds = %1302, %1300
  %1307 = phi float [ %1305, %1302 ], [ 0.000000e+00, %1300 ]
  br i1 %1294, label %1308, label %1370, !dx.controlflow.hints !75

; <label>:1308                                    ; preds = %1306
  %1309 = fcmp fast ogt float %1286, 0.000000e+00
  br i1 %1309, label %1310, label %1320, !dx.controlflow.hints !76

; <label>:1310                                    ; preds = %1308
  %1311 = fmul fast float %1286, %1239
  %1312 = fmul fast float %1286, %1257
  %1313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %25, float %1311, float %1312, float undef, float undef, i32 0, i32 0, i32 undef, float %1307)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1314 = extractvalue %dx.types.ResRet.f32 %1313, 0
  %1315 = extractvalue %dx.types.ResRet.f32 %1313, 1
  %1316 = fmul fast float %1314, 2.000000e+00
  %1317 = fmul fast float %1315, 2.000000e+00
  %1318 = fadd fast float %1316, -1.000000e+00
  %1319 = fadd fast float %1317, -1.000000e+00
  br label %1341

; <label>:1320                                    ; preds = %1308
  %1321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1322 = extractvalue %dx.types.CBufRet.f32 %1321, 3
  %1323 = fmul fast float %1322, %1239
  %1324 = fmul fast float %1322, %1257
  %1325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %27, float %1323, float %1324, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1326 = extractvalue %dx.types.ResRet.f32 %1325, 0
  %1327 = extractvalue %dx.types.ResRet.f32 %1325, 1
  %1328 = extractvalue %dx.types.ResRet.f32 %1325, 2
  %1329 = fmul fast float %1326, 2.000000e+00
  %1330 = fmul fast float %1327, 2.000000e+00
  %1331 = fmul fast float %1328, 2.000000e+00
  %1332 = fadd fast float %1329, -1.000000e+00
  %1333 = fadd fast float %1330, -1.000000e+00
  %1334 = fadd fast float %1331, -1.000000e+00
  %1335 = extractvalue %dx.types.CBufRet.f32 %1251, 1
  %1336 = fmul fast float %1332, %1335
  %1337 = fmul fast float %1333, %1335
  %1338 = extractvalue %dx.types.CBufRet.f32 %1251, 2
  %1339 = fmul fast float %1338, 5.000000e-01
  %1340 = fmul fast float %1339, %1334
  br label %1341

; <label>:1341                                    ; preds = %1320, %1310
  %1342 = phi float [ %1318, %1310 ], [ %1336, %1320 ]
  %1343 = phi float [ %1319, %1310 ], [ %1337, %1320 ]
  %1344 = phi float [ 0.000000e+00, %1310 ], [ %1340, %1320 ]
  %1345 = fmul fast float %1284, %178
  %1346 = fmul fast float %1284, %179
  %1347 = fmul fast float %1284, %180
  %1348 = call float @dx.op.unary.f32(i32 22, float %1285)  ; Frc(value)
  %1349 = fmul fast float %1348, %1342
  %1350 = fmul fast float %1348, %1343
  %1351 = fmul fast float %1348, %1344
  %1352 = fsub fast float %1345, %1349
  %1353 = fsub fast float %1346, %1350
  %1354 = fsub fast float %1347, %1351
  %1355 = fadd fast float %1285, 5.000000e-01
  %1356 = call float @dx.op.unary.f32(i32 22, float %1355)  ; Frc(value)
  %1357 = fmul fast float %1356, %1342
  %1358 = fmul fast float %1356, %1343
  %1359 = fmul fast float %1356, %1344
  %1360 = fadd fast float %1345, -5.000000e-01
  %1361 = fsub fast float %1360, %1357
  %1362 = fadd fast float %1346, -5.000000e-01
  %1363 = fsub fast float %1362, %1358
  %1364 = fadd fast float %1347, -5.000000e-01
  %1365 = fsub fast float %1364, %1359
  %1366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %1361, float %1363, float %1365, float undef, i32 0, i32 0, i32 0, float %1301)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1367 = extractvalue %dx.types.ResRet.f32 %1366, 0
  %1368 = extractvalue %dx.types.ResRet.f32 %1366, 1
  %1369 = fadd fast float %1367, %1287
  br label %1380

; <label>:1370                                    ; preds = %1306
  %1371 = fmul fast float %1291, %1288
  %1372 = fmul fast float %1291, %1289
  %1373 = fmul fast float %1291, %1290
  %1374 = fsub fast float %178, %1371
  %1375 = fsub fast float %179, %1372
  %1376 = fsub fast float %180, %1373
  %1377 = fmul fast float %1374, %1284
  %1378 = fmul fast float %1375, %1284
  %1379 = fmul fast float %1376, %1284
  br label %1380

; <label>:1380                                    ; preds = %1370, %1341
  %1381 = phi float [ %1352, %1341 ], [ %1377, %1370 ]
  %1382 = phi float [ %1353, %1341 ], [ %1378, %1370 ]
  %1383 = phi float [ %1354, %1341 ], [ %1379, %1370 ]
  %1384 = phi float [ %1369, %1341 ], [ 0.000000e+00, %1370 ]
  %1385 = phi float [ %1368, %1341 ], [ 0.000000e+00, %1370 ]
  %1386 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %1381, float %1382, float %1383, float undef, i32 0, i32 0, i32 0, float %1301)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1387 = extractvalue %dx.types.ResRet.f32 %1386, 0
  %1388 = extractvalue %dx.types.ResRet.f32 %1386, 1
  %1389 = fadd fast float %1387, %1287
  br i1 %1294, label %1390, label %1401, !dx.controlflow.hints !77

; <label>:1390                                    ; preds = %1380
  %1391 = call float @dx.op.unary.f32(i32 22, float %1285)  ; Frc(value)
  %1392 = fmul fast float %1391, 2.000000e+00
  %1393 = fadd fast float %1392, -1.000000e+00
  %1394 = call float @dx.op.unary.f32(i32 6, float %1393)  ; FAbs(value)
  %1395 = fsub fast float %1384, %1389
  %1396 = fmul fast float %1394, %1395
  %1397 = fadd fast float %1396, %1389
  %1398 = fsub fast float %1385, %1388
  %1399 = fmul fast float %1394, %1398
  %1400 = fadd fast float %1399, %1388
  br label %1401

; <label>:1401                                    ; preds = %1390, %1380
  %1402 = phi float [ %1397, %1390 ], [ %1389, %1380 ]
  %1403 = phi float [ %1400, %1390 ], [ %1388, %1380 ]
  %1404 = fsub fast float %1402, %1403
  %1405 = fsub fast float 1.000000e+00, %1403
  %1406 = fdiv fast float %1404, %1405
  %1407 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  br label %1408

; <label>:1408                                    ; preds = %1401, %1283
  %1409 = phi float [ %1407, %1401 ], [ 1.000000e+00, %1283 ]
  %1410 = fcmp fast oeq float %415, 0.000000e+00
  br i1 %1410, label %1415, label %1411, !dx.controlflow.hints !58

; <label>:1411                                    ; preds = %1408
  %1412 = extractvalue %dx.types.CBufRet.f32 %1135, 2
  %1413 = fmul fast float %1412, %415
  %1414 = call float @dx.op.unary.f32(i32 23, float %1413)  ; Log(value)
  br label %1415

; <label>:1415                                    ; preds = %1411, %1408
  %1416 = phi float [ %1414, %1411 ], [ 0.000000e+00, %1408 ]
  %1417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %26, float %1239, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float %1416)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1418 = extractvalue %dx.types.ResRet.f32 %1417, 0
  %1419 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %28, float %1239, float %1257, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1420 = extractvalue %dx.types.ResRet.f32 %1419, 0
  %1421 = extractvalue %dx.types.ResRet.f32 %1419, 1
  %1422 = extractvalue %dx.types.ResRet.f32 %1419, 2
  %1423 = extractvalue %dx.types.ResRet.f32 %1419, 3
  %1424 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %28, float %1239, float %1257, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.ResRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.ResRet.f32 %1424, 2
  %1428 = extractvalue %dx.types.ResRet.f32 %1424, 3
  %1429 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %28, float %1239, float %1257, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1430 = extractvalue %dx.types.ResRet.f32 %1429, 0
  %1431 = extractvalue %dx.types.ResRet.f32 %1429, 1
  %1432 = extractvalue %dx.types.ResRet.f32 %1429, 2
  %1433 = extractvalue %dx.types.ResRet.f32 %1429, 3
  %1434 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %28, float %1239, float %1257, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1435 = extractvalue %dx.types.ResRet.f32 %1434, 0
  %1436 = extractvalue %dx.types.ResRet.f32 %1434, 1
  %1437 = extractvalue %dx.types.ResRet.f32 %1434, 2
  %1438 = extractvalue %dx.types.ResRet.f32 %1434, 3
  %1439 = fadd fast float %1420, %1421
  %1440 = fadd fast float %1439, %1422
  %1441 = fadd fast float %1440, %1423
  %1442 = fmul fast float %1425, %1420
  %1443 = fmul fast float %1426, %1421
  %1444 = fadd fast float %1442, %1443
  %1445 = fmul fast float %1427, %1422
  %1446 = fadd fast float %1444, %1445
  %1447 = fmul fast float %1428, %1423
  %1448 = fadd fast float %1446, %1447
  %1449 = fmul fast float %1430, %1420
  %1450 = fmul fast float %1431, %1421
  %1451 = fadd fast float %1449, %1450
  %1452 = fmul fast float %1432, %1422
  %1453 = fadd fast float %1451, %1452
  %1454 = fmul fast float %1433, %1423
  %1455 = fadd fast float %1453, %1454
  %1456 = fmul fast float %1435, %1420
  %1457 = fmul fast float %1436, %1421
  %1458 = fadd fast float %1456, %1457
  %1459 = fmul fast float %1437, %1422
  %1460 = fadd fast float %1458, %1459
  %1461 = fmul fast float %1438, %1423
  %1462 = fadd fast float %1460, %1461
  %1463 = fcmp fast ogt float %1441, 0.000000e+00
  %1464 = fdiv fast float %1448, %1441
  %1465 = select i1 %1463, float %1464, float 0.000000e+00
  %1466 = fdiv fast float %1455, %1441
  %1467 = select i1 %1463, float %1466, float 0.000000e+00
  %1468 = fdiv fast float %1462, %1441
  %1469 = select i1 %1463, float %1468, float 0.000000e+00
  %1470 = fcmp fast ogt float %180, %1467
  %1471 = fcmp fast olt float %180, %1465
  %1472 = and i1 %1471, %1470
  br i1 %1472, label %1473, label %1540, !dx.controlflow.hints !78

; <label>:1473                                    ; preds = %1415
  %1474 = extractvalue %dx.types.CBufRet.f32 %1249, 0
  %1475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1476 = extractvalue %dx.types.CBufRet.f32 %1475, 2
  %1477 = extractvalue %dx.types.CBufRet.f32 %1475, 3
  br i1 %1203, label %1488, label %1478, !dx.controlflow.hints !79

; <label>:1478                                    ; preds = %1473
  %1479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 60)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.f32 %1479, 0
  %1481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 64)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.f32 %1481, 0
  %1483 = extractvalue %dx.types.ResRet.f32 %1481, 1
  %1484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 72)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.f32 %1484, 0
  %1486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 96)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.f32 %1486, 0
  br label %1488

; <label>:1488                                    ; preds = %1478, %1473
  %1489 = phi float [ %1480, %1478 ], [ %1252, %1473 ]
  %1490 = phi float [ %1485, %1478 ], [ %1250, %1473 ]
  %1491 = phi float [ %1487, %1478 ], [ %1474, %1473 ]
  %1492 = phi float [ %1482, %1478 ], [ %1476, %1473 ]
  %1493 = phi float [ %1483, %1478 ], [ %1477, %1473 ]
  %1494 = call float @dx.op.binary.f32(i32 35, float %1418, float 0.000000e+00)  ; FMax(a,b)
  %1495 = call float @dx.op.binary.f32(i32 36, float %1494, float 1.000000e+00)  ; FMin(a,b)
  %1496 = call float @dx.op.unary.f32(i32 24, float %1495)  ; Sqrt(value)
  %1497 = call float @dx.op.binary.f32(i32 35, float %1469, float 0x3F847AE140000000)  ; FMax(a,b)
  %1498 = fsub fast float %1465, %180
  %1499 = fsub fast float %180, %1467
  %1500 = call float @dx.op.binary.f32(i32 36, float %1499, float %1498)  ; FMin(a,b)
  %1501 = fdiv fast float %1500, %1497
  %1502 = call float @dx.op.unary.f32(i32 7, float %1501)  ; Saturate(value)
  %1503 = fsub fast float %180, %1490
  %1504 = fdiv fast float %1503, %1489
  %1505 = call float @dx.op.unary.f32(i32 7, float %1504)  ; Saturate(value)
  %1506 = fsub fast float 1.000000e+00, %1505
  %1507 = fmul float %1502, %1506
  %1508 = fmul float %1507, %1507
  %1509 = fmul fast float %1496, %1409
  %1510 = fmul fast float %1509, %1508
  %1511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1512 = extractvalue %dx.types.CBufRet.f32 %1511, 2
  %1513 = extractvalue %dx.types.CBufRet.f32 %1511, 1
  %1514 = fsub fast float %1510, %1513
  %1515 = fsub fast float %1512, %1513
  %1516 = fdiv fast float %1514, %1515
  %1517 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  %1518 = fmul fast float %1517, %1491
  %1519 = fcmp fast ogt float %1493, 0.000000e+00
  br i1 %1519, label %1520, label %1540, !dx.controlflow.hints !80

; <label>:1520                                    ; preds = %1488
  %1521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1522 = extractvalue %dx.types.CBufRet.f32 %1521, 0
  %1523 = extractvalue %dx.types.CBufRet.f32 %1521, 1
  %1524 = extractvalue %dx.types.CBufRet.f32 %1521, 2
  %1525 = fsub fast float %178, %1522
  %1526 = fsub fast float %179, %1523
  %1527 = fsub fast float %180, %1524
  %1528 = fmul fast float %1525, %1525
  %1529 = fmul fast float %1526, %1526
  %1530 = fadd fast float %1528, %1529
  %1531 = fmul fast float %1527, %1527
  %1532 = fadd fast float %1530, %1531
  %1533 = call float @dx.op.unary.f32(i32 24, float %1532)  ; Sqrt(value)
  %1534 = fsub fast float %1533, %1492
  %1535 = fsub fast float %1493, %1492
  %1536 = fdiv fast float %1534, %1535
  %1537 = call float @dx.op.unary.f32(i32 7, float %1536)  ; Saturate(value)
  %1538 = fmul fast float %1537, %1537
  %1539 = fmul fast float %1538, %1518
  br label %1540

; <label>:1540                                    ; preds = %1520, %1488, %1415, %1223
  %1541 = phi float [ 0.000000e+00, %1223 ], [ 0.000000e+00, %1415 ], [ %1539, %1520 ], [ %1518, %1488 ]
  %1542 = fcmp fast oeq float %1541, 0.000000e+00
  br i1 %1542, label %1921, label %1543, !dx.controlflow.hints !81

; <label>:1543                                    ; preds = %1540
  %1544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1545 = extractvalue %dx.types.CBufRet.f32 %1544, 0
  %1546 = extractvalue %dx.types.CBufRet.f32 %1544, 1
  %1547 = extractvalue %dx.types.CBufRet.f32 %1544, 2
  %1548 = fsub fast float %178, %1545
  %1549 = fadd fast float %1548, %1547
  %1550 = fsub fast float %179, %1546
  %1551 = fadd fast float %1550, %1547
  %1552 = extractvalue %dx.types.CBufRet.f32 %1544, 3
  %1553 = fmul fast float %1549, %1552
  %1554 = fmul fast float %1551, %1552
  %1555 = call float @dx.op.unary.f32(i32 7, float %1553)  ; Saturate(value)
  %1556 = call float @dx.op.unary.f32(i32 7, float %1554)  ; Saturate(value)
  %1557 = fsub fast float 1.000000e+00, %1555
  %1558 = fsub fast float 1.000000e+00, %1556
  %1559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %28, float %1557, float %1558, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1560 = extractvalue %dx.types.ResRet.f32 %1559, 0
  %1561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1562 = extractvalue %dx.types.CBufRet.f32 %1561, 2
  %1563 = fmul fast float %1562, %1560
  %1564 = extractvalue %dx.types.CBufRet.f32 %1561, 3
  %1565 = fadd fast float %1564, %1563
  %1566 = fcmp fast ogt float %1560, 0.000000e+00
  %1567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.i32 %1567, 0
  %1569 = and i32 %1568, 32768
  %1570 = icmp ne i32 %1569, 0
  %1571 = and i1 %1566, %1570
  %1572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1573 = extractvalue %dx.types.CBufRet.f32 %1572, 3
  %1574 = fadd fast float %1573, %1565
  %1575 = fcmp fast ole float %180, %1574
  %1576 = and i1 %1571, %1575
  %1577 = xor i1 %1576, true
  %1578 = icmp ne i32 %1230, 0
  %1579 = and i1 %1578, %1577
  %1580 = icmp ne i32 %1231, 0
  %1581 = and i1 %1580, %1576
  %1582 = or i1 %1579, %1581
  br i1 %1582, label %1921, label %1583, !dx.controlflow.hints !82

; <label>:1583                                    ; preds = %1543
  %1584 = fsub fast float %180, %1565
  %1585 = call float @dx.op.unary.f32(i32 6, float %1584)  ; FAbs(value)
  %1586 = fdiv fast float %1585, %1229
  %1587 = call float @dx.op.unary.f32(i32 7, float %1586)  ; Saturate(value)
  %1588 = fmul fast float %1587, %1541
  %1589 = fcmp fast une float %1227, 0.000000e+00
  br i1 %1589, label %1590, label %1909, !dx.controlflow.hints !83

; <label>:1590                                    ; preds = %1583
  %1591 = fmul fast float %1227, %106
  %1592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1593 = extractvalue %dx.types.CBufRet.f32 %1592, 0
  %1594 = extractvalue %dx.types.CBufRet.f32 %1592, 1
  %1595 = extractvalue %dx.types.CBufRet.f32 %1592, 2
  %1596 = fmul fast float %1593, %1591
  %1597 = fmul fast float %1594, %1591
  %1598 = fmul fast float %1595, %1591
  %1599 = fadd fast float %1596, %178
  %1600 = fadd fast float %1597, %179
  %1601 = fadd fast float %1598, %180
  %1602 = fmul fast float %1227, 2.000000e+00
  %1603 = call float @dx.op.binary.f32(i32 35, float %415, float %1602)  ; FMax(a,b)
  %1604 = fsub fast float %1599, %1232
  %1605 = fsub fast float %1600, %1233
  %1606 = fmul fast float %1604, %1237
  %1607 = fmul fast float %1605, %1238
  %1608 = call float @dx.op.binary.f32(i32 36, float %1606, float %1607)  ; FMin(a,b)
  %1609 = fcmp fast olt float %1608, 0.000000e+00
  %1610 = call float @dx.op.binary.f32(i32 35, float %1606, float %1607)  ; FMax(a,b)
  %1611 = fcmp fast ogt float %1610, 1.000000e+00
  %1612 = or i1 %1609, %1611
  %1613 = fcmp fast olt float %1601, %1246
  %1614 = or i1 %1612, %1613
  %1615 = fcmp fast ogt float %1601, %1253
  %1616 = or i1 %1614, %1615
  br i1 %1616, label %1901, label %1617, !dx.controlflow.hints !72

; <label>:1617                                    ; preds = %1590
  %1618 = fsub fast float 1.000000e+00, %1607
  %1619 = extractvalue %dx.types.CBufRet.f32 %1251, 3
  %1620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1621 = extractvalue %dx.types.CBufRet.f32 %1620, 3
  %1622 = extractvalue %dx.types.CBufRet.f32 %1620, 2
  %1623 = extractvalue %dx.types.CBufRet.f32 %1620, 1
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 0
  %1626 = extractvalue %dx.types.CBufRet.f32 %1624, 1
  %1627 = extractvalue %dx.types.CBufRet.f32 %1624, 2
  %1628 = extractvalue %dx.types.CBufRet.f32 %1620, 0
  br i1 %1203, label %1644, label %1629, !dx.controlflow.hints !73

; <label>:1629                                    ; preds = %1617
  %1630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 48)  ; BufferLoad(srv,index,wot)
  %1631 = extractvalue %dx.types.ResRet.f32 %1630, 0
  %1632 = extractvalue %dx.types.ResRet.f32 %1630, 1
  %1633 = extractvalue %dx.types.ResRet.f32 %1630, 2
  %1634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 104)  ; BufferLoad(srv,index,wot)
  %1635 = extractvalue %dx.types.ResRet.f32 %1634, 0
  %1636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 108)  ; BufferLoad(srv,index,wot)
  %1637 = extractvalue %dx.types.ResRet.f32 %1636, 0
  %1638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 112)  ; BufferLoad(srv,index,wot)
  %1639 = extractvalue %dx.types.ResRet.f32 %1638, 0
  %1640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 116)  ; BufferLoad(srv,index,wot)
  %1641 = extractvalue %dx.types.ResRet.f32 %1640, 0
  %1642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 120)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.f32 %1642, 0
  br label %1644

; <label>:1644                                    ; preds = %1629, %1617
  %1645 = phi float [ %1637, %1629 ], [ %1619, %1617 ]
  %1646 = phi float [ %1641, %1629 ], [ %1621, %1617 ]
  %1647 = phi float [ %1643, %1629 ], [ %1622, %1617 ]
  %1648 = phi float [ %1639, %1629 ], [ %1623, %1617 ]
  %1649 = phi float [ %1631, %1629 ], [ %1625, %1617 ]
  %1650 = phi float [ %1632, %1629 ], [ %1626, %1617 ]
  %1651 = phi float [ %1633, %1629 ], [ %1627, %1617 ]
  %1652 = phi float [ %1635, %1629 ], [ %1628, %1617 ]
  %1653 = fcmp fast oeq float %1645, 0.000000e+00
  br i1 %1653, label %1769, label %1654, !dx.controlflow.hints !74

; <label>:1654                                    ; preds = %1644
  %1655 = fcmp fast ogt float %1646, 0.000000e+00
  %1656 = fcmp fast oeq float %1603, 0.000000e+00
  br i1 %1656, label %1661, label %1657, !dx.controlflow.hints !58

; <label>:1657                                    ; preds = %1654
  %1658 = extractvalue %dx.types.CBufRet.f32 %1135, 1
  %1659 = fmul fast float %1658, %1603
  %1660 = call float @dx.op.unary.f32(i32 23, float %1659)  ; Log(value)
  br label %1661

; <label>:1661                                    ; preds = %1657, %1654
  %1662 = phi float [ %1660, %1657 ], [ 0.000000e+00, %1654 ]
  br i1 %1656, label %1667, label %1663, !dx.controlflow.hints !58

; <label>:1663                                    ; preds = %1661
  %1664 = extractvalue %dx.types.CBufRet.f32 %1135, 0
  %1665 = fmul fast float %1664, %1603
  %1666 = call float @dx.op.unary.f32(i32 23, float %1665)  ; Log(value)
  br label %1667

; <label>:1667                                    ; preds = %1663, %1661
  %1668 = phi float [ %1666, %1663 ], [ 0.000000e+00, %1661 ]
  br i1 %1655, label %1669, label %1731, !dx.controlflow.hints !75

; <label>:1669                                    ; preds = %1667
  %1670 = fcmp fast ogt float %1647, 0.000000e+00
  br i1 %1670, label %1671, label %1681, !dx.controlflow.hints !76

; <label>:1671                                    ; preds = %1669
  %1672 = fmul fast float %1647, %1606
  %1673 = fmul fast float %1647, %1618
  %1674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %25, float %1672, float %1673, float undef, float undef, i32 0, i32 0, i32 undef, float %1668)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1675 = extractvalue %dx.types.ResRet.f32 %1674, 0
  %1676 = extractvalue %dx.types.ResRet.f32 %1674, 1
  %1677 = fmul fast float %1675, 2.000000e+00
  %1678 = fmul fast float %1676, 2.000000e+00
  %1679 = fadd fast float %1677, -1.000000e+00
  %1680 = fadd fast float %1678, -1.000000e+00
  br label %1702

; <label>:1681                                    ; preds = %1669
  %1682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1683 = extractvalue %dx.types.CBufRet.f32 %1682, 3
  %1684 = fmul fast float %1683, %1606
  %1685 = fmul fast float %1683, %1618
  %1686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %27, float %1684, float %1685, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1687 = extractvalue %dx.types.ResRet.f32 %1686, 0
  %1688 = extractvalue %dx.types.ResRet.f32 %1686, 1
  %1689 = extractvalue %dx.types.ResRet.f32 %1686, 2
  %1690 = fmul fast float %1687, 2.000000e+00
  %1691 = fmul fast float %1688, 2.000000e+00
  %1692 = fmul fast float %1689, 2.000000e+00
  %1693 = fadd fast float %1690, -1.000000e+00
  %1694 = fadd fast float %1691, -1.000000e+00
  %1695 = fadd fast float %1692, -1.000000e+00
  %1696 = extractvalue %dx.types.CBufRet.f32 %1251, 1
  %1697 = fmul fast float %1693, %1696
  %1698 = fmul fast float %1694, %1696
  %1699 = extractvalue %dx.types.CBufRet.f32 %1251, 2
  %1700 = fmul fast float %1699, 5.000000e-01
  %1701 = fmul fast float %1700, %1695
  br label %1702

; <label>:1702                                    ; preds = %1681, %1671
  %1703 = phi float [ %1679, %1671 ], [ %1697, %1681 ]
  %1704 = phi float [ %1680, %1671 ], [ %1698, %1681 ]
  %1705 = phi float [ 0.000000e+00, %1671 ], [ %1701, %1681 ]
  %1706 = fmul fast float %1645, %1599
  %1707 = fmul fast float %1645, %1600
  %1708 = fmul fast float %1645, %1601
  %1709 = call float @dx.op.unary.f32(i32 22, float %1646)  ; Frc(value)
  %1710 = fmul fast float %1709, %1703
  %1711 = fmul fast float %1709, %1704
  %1712 = fmul fast float %1709, %1705
  %1713 = fsub fast float %1706, %1710
  %1714 = fsub fast float %1707, %1711
  %1715 = fsub fast float %1708, %1712
  %1716 = fadd fast float %1646, 5.000000e-01
  %1717 = call float @dx.op.unary.f32(i32 22, float %1716)  ; Frc(value)
  %1718 = fmul fast float %1717, %1703
  %1719 = fmul fast float %1717, %1704
  %1720 = fmul fast float %1717, %1705
  %1721 = fadd fast float %1706, -5.000000e-01
  %1722 = fsub fast float %1721, %1718
  %1723 = fadd fast float %1707, -5.000000e-01
  %1724 = fsub fast float %1723, %1719
  %1725 = fadd fast float %1708, -5.000000e-01
  %1726 = fsub fast float %1725, %1720
  %1727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %1722, float %1724, float %1726, float undef, i32 0, i32 0, i32 0, float %1662)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1728 = extractvalue %dx.types.ResRet.f32 %1727, 0
  %1729 = extractvalue %dx.types.ResRet.f32 %1727, 1
  %1730 = fadd fast float %1728, %1648
  br label %1741

; <label>:1731                                    ; preds = %1667
  %1732 = fmul fast float %1652, %1649
  %1733 = fmul fast float %1652, %1650
  %1734 = fmul fast float %1652, %1651
  %1735 = fsub fast float %1599, %1732
  %1736 = fsub fast float %1600, %1733
  %1737 = fsub fast float %1601, %1734
  %1738 = fmul fast float %1735, %1645
  %1739 = fmul fast float %1736, %1645
  %1740 = fmul fast float %1737, %1645
  br label %1741

; <label>:1741                                    ; preds = %1731, %1702
  %1742 = phi float [ %1713, %1702 ], [ %1738, %1731 ]
  %1743 = phi float [ %1714, %1702 ], [ %1739, %1731 ]
  %1744 = phi float [ %1715, %1702 ], [ %1740, %1731 ]
  %1745 = phi float [ %1730, %1702 ], [ 0.000000e+00, %1731 ]
  %1746 = phi float [ %1729, %1702 ], [ 0.000000e+00, %1731 ]
  %1747 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %1742, float %1743, float %1744, float undef, i32 0, i32 0, i32 0, float %1662)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1748 = extractvalue %dx.types.ResRet.f32 %1747, 0
  %1749 = extractvalue %dx.types.ResRet.f32 %1747, 1
  %1750 = fadd fast float %1748, %1648
  br i1 %1655, label %1751, label %1762, !dx.controlflow.hints !77

; <label>:1751                                    ; preds = %1741
  %1752 = call float @dx.op.unary.f32(i32 22, float %1646)  ; Frc(value)
  %1753 = fmul fast float %1752, 2.000000e+00
  %1754 = fadd fast float %1753, -1.000000e+00
  %1755 = call float @dx.op.unary.f32(i32 6, float %1754)  ; FAbs(value)
  %1756 = fsub fast float %1745, %1750
  %1757 = fmul fast float %1755, %1756
  %1758 = fadd fast float %1757, %1750
  %1759 = fsub fast float %1746, %1749
  %1760 = fmul fast float %1755, %1759
  %1761 = fadd fast float %1760, %1749
  br label %1762

; <label>:1762                                    ; preds = %1751, %1741
  %1763 = phi float [ %1758, %1751 ], [ %1750, %1741 ]
  %1764 = phi float [ %1761, %1751 ], [ %1749, %1741 ]
  %1765 = fsub fast float %1763, %1764
  %1766 = fsub fast float 1.000000e+00, %1764
  %1767 = fdiv fast float %1765, %1766
  %1768 = call float @dx.op.unary.f32(i32 7, float %1767)  ; Saturate(value)
  br label %1769

; <label>:1769                                    ; preds = %1762, %1644
  %1770 = phi float [ %1768, %1762 ], [ 1.000000e+00, %1644 ]
  %1771 = fcmp fast oeq float %1603, 0.000000e+00
  br i1 %1771, label %1776, label %1772, !dx.controlflow.hints !58

; <label>:1772                                    ; preds = %1769
  %1773 = extractvalue %dx.types.CBufRet.f32 %1135, 2
  %1774 = fmul fast float %1773, %1603
  %1775 = call float @dx.op.unary.f32(i32 23, float %1774)  ; Log(value)
  br label %1776

; <label>:1776                                    ; preds = %1772, %1769
  %1777 = phi float [ %1775, %1772 ], [ 0.000000e+00, %1769 ]
  %1778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %26, float %1606, float %1618, float undef, float undef, i32 0, i32 0, i32 undef, float %1777)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1779 = extractvalue %dx.types.ResRet.f32 %1778, 0
  %1780 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %28, float %1606, float %1618, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1781 = extractvalue %dx.types.ResRet.f32 %1780, 0
  %1782 = extractvalue %dx.types.ResRet.f32 %1780, 1
  %1783 = extractvalue %dx.types.ResRet.f32 %1780, 2
  %1784 = extractvalue %dx.types.ResRet.f32 %1780, 3
  %1785 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %28, float %1606, float %1618, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1786 = extractvalue %dx.types.ResRet.f32 %1785, 0
  %1787 = extractvalue %dx.types.ResRet.f32 %1785, 1
  %1788 = extractvalue %dx.types.ResRet.f32 %1785, 2
  %1789 = extractvalue %dx.types.ResRet.f32 %1785, 3
  %1790 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %28, float %1606, float %1618, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1791 = extractvalue %dx.types.ResRet.f32 %1790, 0
  %1792 = extractvalue %dx.types.ResRet.f32 %1790, 1
  %1793 = extractvalue %dx.types.ResRet.f32 %1790, 2
  %1794 = extractvalue %dx.types.ResRet.f32 %1790, 3
  %1795 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %28, float %1606, float %1618, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1796 = extractvalue %dx.types.ResRet.f32 %1795, 0
  %1797 = extractvalue %dx.types.ResRet.f32 %1795, 1
  %1798 = extractvalue %dx.types.ResRet.f32 %1795, 2
  %1799 = extractvalue %dx.types.ResRet.f32 %1795, 3
  %1800 = fadd fast float %1781, %1782
  %1801 = fadd fast float %1800, %1783
  %1802 = fadd fast float %1801, %1784
  %1803 = fmul fast float %1786, %1781
  %1804 = fmul fast float %1787, %1782
  %1805 = fadd fast float %1803, %1804
  %1806 = fmul fast float %1788, %1783
  %1807 = fadd fast float %1805, %1806
  %1808 = fmul fast float %1789, %1784
  %1809 = fadd fast float %1807, %1808
  %1810 = fmul fast float %1791, %1781
  %1811 = fmul fast float %1792, %1782
  %1812 = fadd fast float %1810, %1811
  %1813 = fmul fast float %1793, %1783
  %1814 = fadd fast float %1812, %1813
  %1815 = fmul fast float %1794, %1784
  %1816 = fadd fast float %1814, %1815
  %1817 = fmul fast float %1796, %1781
  %1818 = fmul fast float %1797, %1782
  %1819 = fadd fast float %1817, %1818
  %1820 = fmul fast float %1798, %1783
  %1821 = fadd fast float %1819, %1820
  %1822 = fmul fast float %1799, %1784
  %1823 = fadd fast float %1821, %1822
  %1824 = fcmp fast ogt float %1802, 0.000000e+00
  %1825 = fdiv fast float %1809, %1802
  %1826 = select i1 %1824, float %1825, float 0.000000e+00
  %1827 = fdiv fast float %1816, %1802
  %1828 = select i1 %1824, float %1827, float 0.000000e+00
  %1829 = fdiv fast float %1823, %1802
  %1830 = select i1 %1824, float %1829, float 0.000000e+00
  %1831 = fcmp fast ogt float %1601, %1828
  %1832 = fcmp fast olt float %1601, %1826
  %1833 = and i1 %1832, %1831
  br i1 %1833, label %1834, label %1901, !dx.controlflow.hints !78

; <label>:1834                                    ; preds = %1776
  %1835 = extractvalue %dx.types.CBufRet.f32 %1249, 0
  %1836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1837 = extractvalue %dx.types.CBufRet.f32 %1836, 2
  %1838 = extractvalue %dx.types.CBufRet.f32 %1836, 3
  br i1 %1203, label %1849, label %1839, !dx.controlflow.hints !79

; <label>:1839                                    ; preds = %1834
  %1840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 60)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.f32 %1840, 0
  %1842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 64)  ; BufferLoad(srv,index,wot)
  %1843 = extractvalue %dx.types.ResRet.f32 %1842, 0
  %1844 = extractvalue %dx.types.ResRet.f32 %1842, 1
  %1845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 72)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.f32 %1845, 0
  %1847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1202, i32 96)  ; BufferLoad(srv,index,wot)
  %1848 = extractvalue %dx.types.ResRet.f32 %1847, 0
  br label %1849

; <label>:1849                                    ; preds = %1839, %1834
  %1850 = phi float [ %1841, %1839 ], [ %1252, %1834 ]
  %1851 = phi float [ %1846, %1839 ], [ %1250, %1834 ]
  %1852 = phi float [ %1848, %1839 ], [ %1835, %1834 ]
  %1853 = phi float [ %1843, %1839 ], [ %1837, %1834 ]
  %1854 = phi float [ %1844, %1839 ], [ %1838, %1834 ]
  %1855 = call float @dx.op.binary.f32(i32 35, float %1779, float 0.000000e+00)  ; FMax(a,b)
  %1856 = call float @dx.op.binary.f32(i32 36, float %1855, float 1.000000e+00)  ; FMin(a,b)
  %1857 = call float @dx.op.unary.f32(i32 24, float %1856)  ; Sqrt(value)
  %1858 = call float @dx.op.binary.f32(i32 35, float %1830, float 0x3F847AE140000000)  ; FMax(a,b)
  %1859 = fsub fast float %1826, %1601
  %1860 = fsub fast float %1601, %1828
  %1861 = call float @dx.op.binary.f32(i32 36, float %1860, float %1859)  ; FMin(a,b)
  %1862 = fdiv fast float %1861, %1858
  %1863 = call float @dx.op.unary.f32(i32 7, float %1862)  ; Saturate(value)
  %1864 = fsub fast float %1601, %1851
  %1865 = fdiv fast float %1864, %1850
  %1866 = call float @dx.op.unary.f32(i32 7, float %1865)  ; Saturate(value)
  %1867 = fsub fast float 1.000000e+00, %1866
  %1868 = fmul float %1863, %1867
  %1869 = fmul float %1868, %1868
  %1870 = fmul fast float %1857, %1770
  %1871 = fmul fast float %1870, %1869
  %1872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1873 = extractvalue %dx.types.CBufRet.f32 %1872, 2
  %1874 = extractvalue %dx.types.CBufRet.f32 %1872, 1
  %1875 = fsub fast float %1871, %1874
  %1876 = fsub fast float %1873, %1874
  %1877 = fdiv fast float %1875, %1876
  %1878 = call float @dx.op.unary.f32(i32 7, float %1877)  ; Saturate(value)
  %1879 = fmul fast float %1878, %1852
  %1880 = fcmp fast ogt float %1854, 0.000000e+00
  br i1 %1880, label %1881, label %1901, !dx.controlflow.hints !80

; <label>:1881                                    ; preds = %1849
  %1882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1883 = extractvalue %dx.types.CBufRet.f32 %1882, 0
  %1884 = extractvalue %dx.types.CBufRet.f32 %1882, 1
  %1885 = extractvalue %dx.types.CBufRet.f32 %1882, 2
  %1886 = fsub fast float %1599, %1883
  %1887 = fsub fast float %1600, %1884
  %1888 = fsub fast float %1601, %1885
  %1889 = fmul fast float %1886, %1886
  %1890 = fmul fast float %1887, %1887
  %1891 = fadd fast float %1889, %1890
  %1892 = fmul fast float %1888, %1888
  %1893 = fadd fast float %1891, %1892
  %1894 = call float @dx.op.unary.f32(i32 24, float %1893)  ; Sqrt(value)
  %1895 = fsub fast float %1894, %1853
  %1896 = fsub fast float %1854, %1853
  %1897 = fdiv fast float %1895, %1896
  %1898 = call float @dx.op.unary.f32(i32 7, float %1897)  ; Saturate(value)
  %1899 = fmul fast float %1898, %1898
  %1900 = fmul fast float %1899, %1879
  br label %1901

; <label>:1901                                    ; preds = %1881, %1849, %1776, %1590
  %1902 = phi float [ 0.000000e+00, %1590 ], [ 0.000000e+00, %1776 ], [ %1900, %1881 ], [ %1879, %1849 ]
  %1903 = fsub fast float %1588, %1902
  %1904 = fdiv fast float %1903, %1588
  %1905 = call float @dx.op.unary.f32(i32 7, float %1904)  ; Saturate(value)
  %1906 = fsub fast float 1.000000e+00, %1228
  %1907 = fmul fast float %1905, %1906
  %1908 = fadd fast float %1907, %1228
  br label %1909

; <label>:1909                                    ; preds = %1901, %1583
  %1910 = phi float [ %1908, %1901 ], [ 1.000000e+00, %1583 ]
  %1911 = fadd fast float %1588, %1127
  %1912 = fmul fast float %1588, %1224
  %1913 = fmul fast float %1912, %1910
  %1914 = fmul fast float %1588, %1225
  %1915 = fmul fast float %1914, %1910
  %1916 = fmul fast float %1588, %1226
  %1917 = fmul fast float %1916, %1910
  %1918 = fadd fast float %1913, %1124
  %1919 = fadd fast float %1915, %1125
  %1920 = fadd fast float %1917, %1126
  br label %1921

; <label>:1921                                    ; preds = %1909, %1543, %1540, %1123
  %1922 = phi float [ %1124, %1123 ], [ %1124, %1540 ], [ %1124, %1543 ], [ %1918, %1909 ]
  %1923 = phi float [ %1125, %1123 ], [ %1125, %1540 ], [ %1125, %1543 ], [ %1919, %1909 ]
  %1924 = phi float [ %1126, %1123 ], [ %1126, %1540 ], [ %1126, %1543 ], [ %1920, %1909 ]
  %1925 = phi float [ %1127, %1123 ], [ %1127, %1540 ], [ %1127, %1543 ], [ %1911, %1909 ]
  %1926 = and i32 %334, 4
  %1927 = icmp eq i32 %1926, 0
  br i1 %1927, label %2091, label %1928, !dx.controlflow.hints !84

; <label>:1928                                    ; preds = %1921
  %1929 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1930 = extractvalue %dx.types.CBufRet.i32 %1929, 1
  %1931 = icmp eq i32 %1930, 0
  br i1 %1931, label %2091, label %1932

; <label>:1932                                    ; preds = %1928
  br label %1933

; <label>:1933                                    ; preds = %2083, %1932
  %1934 = phi i32 [ %2088, %2083 ], [ 0, %1932 ]
  %1935 = phi float [ %2084, %2083 ], [ %1922, %1932 ]
  %1936 = phi float [ %2085, %2083 ], [ %1923, %1932 ]
  %1937 = phi float [ %2086, %2083 ], [ %1924, %1932 ]
  %1938 = phi float [ %2087, %2083 ], [ %1925, %1932 ]
  %1939 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1940 = extractvalue %dx.types.CBufRet.i32 %1939, 1
  %1941 = call i32 @dx.op.tertiary.i32(i32 49, i32 %332, i32 %1940, i32 %1934)  ; UMad(a,b,c)
  %1942 = shl i32 %1941, 2
  %1943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.i32 %1943, 0
  %1945 = icmp eq i32 %1944, 0
  br i1 %1945, label %2083, label %1946

; <label>:1946                                    ; preds = %1933
  br label %1947

; <label>:1947                                    ; preds = %2071, %1946
  %1948 = phi i32 [ %1957, %2071 ], [ %1944, %1946 ]
  %1949 = phi float [ %2077, %2071 ], [ %1935, %1946 ]
  %1950 = phi float [ %2078, %2071 ], [ %1936, %1946 ]
  %1951 = phi float [ %2079, %2071 ], [ %1937, %1946 ]
  %1952 = phi float [ %2080, %2071 ], [ %1938, %1946 ]
  %1953 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1948)  ; FirstbitLo(value)
  %1954 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1934, i32 %1953)  ; UMad(a,b,c)
  %1955 = and i32 %1953, 31
  %1956 = shl i32 1, %1955
  %1957 = xor i32 %1956, %1948
  %1958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1954, i32 0)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.f32 %1958, 0
  %1960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1954, i32 4)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.f32 %1960, 0
  %1962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1954, i32 16)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.f32 %1962, 0
  %1964 = extractvalue %dx.types.ResRet.f32 %1962, 1
  %1965 = extractvalue %dx.types.ResRet.f32 %1962, 2
  %1966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1954, i32 32)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.f32 %1966, 0
  %1968 = extractvalue %dx.types.ResRet.f32 %1966, 1
  %1969 = extractvalue %dx.types.ResRet.f32 %1966, 2
  %1970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1954, i32 44)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.f32 %1970, 0
  %1972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1954, i32 48)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.f32 %1972, 0
  %1974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1954, i32 52)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.f32 %1974, 0
  %1976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1954, i32 56)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.f32 %1976, 0
  %1978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1954, i32 64)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.f32 %1978, 0
  %1980 = extractvalue %dx.types.ResRet.f32 %1978, 1
  %1981 = extractvalue %dx.types.ResRet.f32 %1978, 2
  %1982 = mul i32 %1954, 60
  %1983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.f32 %1983, 0
  %1985 = extractvalue %dx.types.ResRet.f32 %1983, 1
  %1986 = extractvalue %dx.types.ResRet.f32 %1983, 2
  %1987 = add i32 %1982, 12
  %1988 = add i32 %1982, 48
  %1989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %1990 = extractvalue %dx.types.ResRet.f32 %1989, 2
  %1991 = fsub fast float %178, %1984
  %1992 = fsub fast float %179, %1985
  %1993 = fsub fast float %180, %1986
  %1994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.f32 %1994, 0
  %1996 = extractvalue %dx.types.ResRet.f32 %1994, 1
  %1997 = extractvalue %dx.types.ResRet.f32 %1994, 2
  %1998 = call float @dx.op.dot3.f32(i32 55, float %1991, float %1992, float %1993, float %1995, float %1996, float %1997)  ; Dot3(ax,ay,az,bx,by,bz)
  %1999 = add i32 %1982, 24
  %2000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.f32 %2000, 0
  %2002 = extractvalue %dx.types.ResRet.f32 %2000, 1
  %2003 = extractvalue %dx.types.ResRet.f32 %2000, 2
  %2004 = call float @dx.op.dot3.f32(i32 55, float %1991, float %1992, float %1993, float %2001, float %2002, float %2003)  ; Dot3(ax,ay,az,bx,by,bz)
  %2005 = add i32 %1982, 36
  %2006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.f32 %2006, 0
  %2008 = extractvalue %dx.types.ResRet.f32 %2006, 1
  %2009 = extractvalue %dx.types.ResRet.f32 %2006, 2
  %2010 = call float @dx.op.dot3.f32(i32 55, float %1991, float %1992, float %1993, float %2007, float %2008, float %2009)  ; Dot3(ax,ay,az,bx,by,bz)
  %2011 = call float @dx.op.unary.f32(i32 6, float %1998)  ; FAbs(value)
  %2012 = call float @dx.op.unary.f32(i32 6, float %2004)  ; FAbs(value)
  %2013 = call float @dx.op.unary.f32(i32 6, float %2010)  ; FAbs(value)
  %2014 = fmul fast float %2011, %1971
  %2015 = fmul fast float %2012, %1971
  %2016 = fmul fast float %2013, %1971
  %2017 = fadd fast float %2014, %1967
  %2018 = fadd fast float %2015, %1968
  %2019 = fadd fast float %2016, %1969
  %2020 = call float @dx.op.unary.f32(i32 7, float %2017)  ; Saturate(value)
  %2021 = call float @dx.op.unary.f32(i32 7, float %2018)  ; Saturate(value)
  %2022 = call float @dx.op.unary.f32(i32 7, float %2019)  ; Saturate(value)
  %2023 = fmul fast float %2020, %2020
  %2024 = fmul fast float %2021, %2021
  %2025 = fadd fast float %2024, %2023
  %2026 = fmul fast float %2022, %2022
  %2027 = fadd fast float %2025, %2026
  %2028 = call float @dx.op.unary.f32(i32 24, float %2027)  ; Sqrt(value)
  %2029 = fsub fast float 1.000000e+00, %2028
  %2030 = call float @dx.op.unary.f32(i32 7, float %2029)  ; Saturate(value)
  %2031 = fmul fast float %2030, %1959
  %2032 = fmul fast float %1990, 2.000000e+00
  %2033 = fadd fast float %2010, %1990
  %2034 = call float @dx.op.binary.f32(i32 35, float %2033, float 0.000000e+00)  ; FMax(a,b)
  %2035 = call float @dx.op.binary.f32(i32 36, float %2034, float %2032)  ; FMin(a,b)
  %2036 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2035)  ; FMax(a,b)
  %2037 = fmul fast float %1961, 0x3FF7154760000000
  %2038 = fmul fast float %2037, %2036
  %2039 = call float @dx.op.unary.f32(i32 21, float %2038)  ; Exp(value)
  %2040 = fmul fast float %2031, %2039
  %2041 = fcmp fast oeq float %415, 0.000000e+00
  br i1 %2041, label %2047, label %2042, !dx.controlflow.hints !58

; <label>:2042                                    ; preds = %1947
  %2043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %2044 = extractvalue %dx.types.CBufRet.f32 %2043, 3
  %2045 = fmul fast float %2044, %415
  %2046 = call float @dx.op.unary.f32(i32 23, float %2045)  ; Log(value)
  br label %2047

; <label>:2047                                    ; preds = %2042, %1947
  %2048 = phi float [ %2046, %2042 ], [ 0.000000e+00, %1947 ]
  %2049 = fcmp fast oeq float %1973, 0.000000e+00
  br i1 %2049, label %2071, label %2050, !dx.controlflow.hints !85

; <label>:2050                                    ; preds = %2047
  %2051 = fmul fast float %1979, %1977
  %2052 = fmul fast float %1980, %1977
  %2053 = fmul fast float %1981, %1977
  %2054 = fsub fast float %178, %2051
  %2055 = fsub fast float %179, %2052
  %2056 = fsub fast float %180, %2053
  %2057 = fmul fast float %2054, %1973
  %2058 = fmul fast float %2055, %1973
  %2059 = fmul fast float %2056, %1973
  %2060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %2057, float %2058, float %2059, float undef, i32 0, i32 0, i32 0, float %2048)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2061 = extractvalue %dx.types.ResRet.f32 %2060, 0
  %2062 = extractvalue %dx.types.ResRet.f32 %2060, 1
  %2063 = fdiv fast float 1.000000e+00, %1975
  %2064 = fmul fast float %1975, 2.000000e+00
  %2065 = fadd fast float %2064, -1.000000e+00
  %2066 = fadd fast float %2065, %2062
  %2067 = fadd fast float %2066, %2061
  %2068 = fmul fast float %2067, %2063
  %2069 = fadd fast float %2068, -1.000000e+00
  %2070 = call float @dx.op.unary.f32(i32 7, float %2069)  ; Saturate(value)
  br label %2071

; <label>:2071                                    ; preds = %2050, %2047
  %2072 = phi float [ %2070, %2050 ], [ 1.000000e+00, %2047 ]
  %2073 = fmul fast float %2040, %2072
  %2074 = fmul fast float %2073, %1963
  %2075 = fmul fast float %2073, %1964
  %2076 = fmul fast float %2073, %1965
  %2077 = fadd fast float %2074, %1949
  %2078 = fadd fast float %2075, %1950
  %2079 = fadd fast float %2076, %1951
  %2080 = fadd fast float %2073, %1952
  %2081 = icmp eq i32 %1948, %1956
  br i1 %2081, label %2082, label %1947, !llvm.loop !86

; <label>:2082                                    ; preds = %2071
  br label %2083

; <label>:2083                                    ; preds = %2082, %1933
  %2084 = phi float [ %1935, %1933 ], [ %2077, %2082 ]
  %2085 = phi float [ %1936, %1933 ], [ %2078, %2082 ]
  %2086 = phi float [ %1937, %1933 ], [ %2079, %2082 ]
  %2087 = phi float [ %1938, %1933 ], [ %2080, %2082 ]
  %2088 = add i32 %1934, 1
  %2089 = icmp ult i32 %2088, %1940
  br i1 %2089, label %1933, label %2090, !llvm.loop !87

; <label>:2090                                    ; preds = %2083
  br label %2091

; <label>:2091                                    ; preds = %2090, %1928, %1921
  %2092 = phi float [ %1922, %1921 ], [ %1922, %1928 ], [ %2084, %2090 ]
  %2093 = phi float [ %1923, %1921 ], [ %1923, %1928 ], [ %2085, %2090 ]
  %2094 = phi float [ %1924, %1921 ], [ %1924, %1928 ], [ %2086, %2090 ]
  %2095 = phi float [ %1925, %1921 ], [ %1925, %1928 ], [ %2087, %2090 ]
  %2096 = fcmp fast ogt float %2095, 0.000000e+00
  br i1 %2096, label %2097, label %2124, !dx.controlflow.hints !88

; <label>:2097                                    ; preds = %2091
  %2098 = fdiv fast float 1.000000e+00, %2095
  %2099 = fmul fast float %2098, %2092
  %2100 = fmul fast float %2098, %2093
  %2101 = fmul fast float %2098, %2094
  %2102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %127, float %128, float %129, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2103 = extractvalue %dx.types.ResRet.f32 %2102, 0
  %2104 = extractvalue %dx.types.ResRet.f32 %2102, 1
  %2105 = extractvalue %dx.types.ResRet.f32 %2102, 2
  %2106 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2103)  ; IsNaN(value)
  %2107 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2104)  ; IsNaN(value)
  %2108 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2105)  ; IsNaN(value)
  %2109 = or i1 %2106, %2107
  %2110 = or i1 %2109, %2108
  %2111 = select i1 %2110, float 0.000000e+00, float %2103
  %2112 = select i1 %2110, float 0.000000e+00, float %2104
  %2113 = select i1 %2110, float 0.000000e+00, float %2105
  %2114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2115 = extractvalue %dx.types.CBufRet.f32 %2114, 1
  %2116 = fmul fast float %2111, %2115
  %2117 = fmul fast float %2112, %2115
  %2118 = fmul fast float %2113, %2115
  %2119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2120 = extractvalue %dx.types.CBufRet.f32 %2119, 3
  %2121 = fmul fast float %2116, %2120
  %2122 = fmul fast float %2117, %2120
  %2123 = fmul fast float %2118, %2120
  br label %2124

; <label>:2124                                    ; preds = %2097, %2091
  %2125 = phi float [ %2099, %2097 ], [ %2092, %2091 ]
  %2126 = phi float [ %2100, %2097 ], [ %2093, %2091 ]
  %2127 = phi float [ %2101, %2097 ], [ %2094, %2091 ]
  %2128 = phi float [ %2121, %2097 ], [ 0.000000e+00, %2091 ]
  %2129 = phi float [ %2122, %2097 ], [ 0.000000e+00, %2091 ]
  %2130 = phi float [ %2123, %2097 ], [ 0.000000e+00, %2091 ]
  %2131 = fmul fast float %2125, %2095
  %2132 = fmul fast float %2126, %2095
  %2133 = fmul fast float %2127, %2095
  %2134 = fmul fast float %2131, %2128
  %2135 = fmul fast float %2132, %2129
  %2136 = fmul fast float %2133, %2130
  %2137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %2138 = extractvalue %dx.types.CBufRet.f32 %2137, 0
  %2139 = fmul fast float %2134, %2138
  %2140 = fmul fast float %2135, %2138
  %2141 = fmul fast float %2136, %2138
  %2142 = fmul fast float %2140, 5.000000e-01
  %2143 = fadd fast float %2136, %2134
  %2144 = fmul fast float %2138, %2143
  %2145 = fmul fast float %2144, 2.500000e-01
  %2146 = fadd fast float %2145, %2142
  %2147 = call float @dx.op.unary.f32(i32 23, float %2146)  ; Log(value)
  %2148 = fmul fast float %2147, 0x3FE62E4300000000
  %2149 = fmul fast float %2148, %2148
  %2150 = icmp ugt i32 %189, 31
  %2151 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %2152 = add i32 %189, -1
  %2153 = add i32 %189, 7
  %2154 = and i32 %2153, 4
  %2155 = and i32 %2152, %2151
  %2156 = xor i32 %2155, %2154
  %2157 = and i32 %2151, -4
  %2158 = shl i32 %2151, 1
  %2159 = and i32 %2158, 6
  %2160 = lshr i32 177, %2159
  %2161 = and i32 %2160, 3
  %2162 = or i32 %2161, %2157
  br i1 %2150, label %2163, label %2179, !dx.controlflow.hints !89

; <label>:2163                                    ; preds = %2124
  %2164 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2148, i32 %2156)  ; WaveReadLaneAt(value,lane)
  %2165 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2149, i32 %2156)  ; WaveReadLaneAt(value,lane)
  %2166 = fadd fast float %2164, %2148
  %2167 = fadd fast float %2165, %2149
  %2168 = add i32 %189, 31
  %2169 = and i32 %2168, 16
  %2170 = xor i32 %2155, %2169
  %2171 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2166, i32 %2170)  ; WaveReadLaneAt(value,lane)
  %2172 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2167, i32 %2170)  ; WaveReadLaneAt(value,lane)
  %2173 = fadd fast float %2171, %2166
  %2174 = fadd fast float %2172, %2167
  %2175 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2173, i32 %2162)  ; WaveReadLaneAt(value,lane)
  %2176 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2174, i32 %2162)  ; WaveReadLaneAt(value,lane)
  %2177 = fadd fast float %2175, %2173
  %2178 = fadd fast float %2176, %2174
  br label %2215

; <label>:2179                                    ; preds = %2124
  %2180 = udiv i32 %35, %189
  %2181 = shl i32 %2180, 2
  %2182 = lshr i32 %2151, 1
  %2183 = and i32 %2182, 1
  %2184 = or i32 %2181, %2183
  %2185 = lshr i32 %2151, 2
  %2186 = and i32 %2185, 2
  %2187 = or i32 %2184, %2186
  %2188 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2148, i32 %2156)  ; WaveReadLaneAt(value,lane)
  %2189 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2149, i32 %2156)  ; WaveReadLaneAt(value,lane)
  %2190 = fadd fast float %2188, %2148
  %2191 = fadd fast float %2189, %2149
  %2192 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2190, i32 %2162)  ; WaveReadLaneAt(value,lane)
  %2193 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2191, i32 %2162)  ; WaveReadLaneAt(value,lane)
  %2194 = fadd fast float %2192, %2190
  %2195 = fadd fast float %2193, %2191
  %2196 = mul i32 %2187, 2
  %2197 = add i32 0, %2196
  %2198 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %2197
  store float %2194, float addrspace(3)* %2198, align 4
  %2199 = mul i32 %2187, 2
  %2200 = add i32 1, %2199
  %2201 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %2200
  store float %2195, float addrspace(3)* %2201, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2202 = load float, float addrspace(3)* %2198, align 4
  %2203 = load float, float addrspace(3)* %2201, align 4
  %2204 = xor i32 %2187, 4
  %2205 = mul i32 %2204, 2
  %2206 = add i32 0, %2205
  %2207 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %2206
  %2208 = load float, float addrspace(3)* %2207, align 4
  %2209 = mul i32 %2204, 2
  %2210 = add i32 1, %2209
  %2211 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %2210
  %2212 = load float, float addrspace(3)* %2211, align 4
  %2213 = fadd fast float %2208, %2202
  %2214 = fadd fast float %2212, %2203
  br label %2215

; <label>:2215                                    ; preds = %2179, %2163
  %2216 = phi float [ %2177, %2163 ], [ %2213, %2179 ]
  %2217 = phi float [ %2178, %2163 ], [ %2214, %2179 ]
  %2218 = fmul fast float %2216, 1.250000e-01
  %2219 = and i32 %56, 1
  %2220 = and i32 %2219, %57
  %2221 = and i32 %2220, %58
  %2222 = icmp ne i32 %2221, 0
  %2223 = and i1 %2222, %68
  br i1 %2223, label %2224, label %2229, !dx.controlflow.hints !47

; <label>:2224                                    ; preds = %2215
  %2225 = fmul fast float %2217, 1.250000e-01
  %2226 = lshr i32 %56, 1
  %2227 = lshr i32 %57, 1
  %2228 = lshr i32 %58, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2226, i32 %2227, i32 %2228, float %2218, float %2225, float %2218, float %2218, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2229

; <label>:2229                                    ; preds = %2224, %2215
  br i1 %67, label %2264, label %2230, !dx.controlflow.hints !48

; <label>:2230                                    ; preds = %2229
  %2231 = fadd fast float %106, 0x3FE3C6EF40000000
  %2232 = call float @dx.op.unary.f32(i32 22, float %2231)  ; Frc(value)
  %2233 = call float @dx.op.unary.f32(i32 23, float %2139)  ; Log(value)
  %2234 = fadd fast float %2233, -7.000000e+00
  %2235 = call float @dx.op.unary.f32(i32 21, float %2234)  ; Exp(value)
  %2236 = fmul fast float %2232, 2.000000e+00
  %2237 = fadd fast float %2236, -1.000000e+00
  %2238 = fmul fast float %2235, %2237
  %2239 = fcmp fast ogt float %2139, 0.000000e+00
  %2240 = select i1 %2239, float %2238, float 0.000000e+00
  %2241 = fadd fast float %2240, %2139
  %2242 = fadd fast float %106, 0x3FF3C6EF40000000
  %2243 = call float @dx.op.unary.f32(i32 22, float %2242)  ; Frc(value)
  %2244 = call float @dx.op.unary.f32(i32 23, float %2140)  ; Log(value)
  %2245 = fadd fast float %2244, -7.000000e+00
  %2246 = call float @dx.op.unary.f32(i32 21, float %2245)  ; Exp(value)
  %2247 = fmul fast float %2243, 2.000000e+00
  %2248 = fadd fast float %2247, -1.000000e+00
  %2249 = fmul fast float %2246, %2248
  %2250 = fcmp fast ogt float %2140, 0.000000e+00
  %2251 = select i1 %2250, float %2249, float 0.000000e+00
  %2252 = fadd fast float %2251, %2140
  %2253 = fadd fast float %106, 0x3FFDAA66E0000000
  %2254 = call float @dx.op.unary.f32(i32 22, float %2253)  ; Frc(value)
  %2255 = call float @dx.op.unary.f32(i32 23, float %2141)  ; Log(value)
  %2256 = fadd fast float %2255, -6.000000e+00
  %2257 = call float @dx.op.unary.f32(i32 21, float %2256)  ; Exp(value)
  %2258 = fmul fast float %2254, 2.000000e+00
  %2259 = fadd fast float %2258, -1.000000e+00
  %2260 = fmul fast float %2257, %2259
  %2261 = fcmp fast ogt float %2141, 0.000000e+00
  %2262 = select i1 %2261, float %2260, float 0.000000e+00
  %2263 = fadd fast float %2262, %2141
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %56, i32 %57, i32 %58, float %2241, float %2252, float %2263, float %2241, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2264

; <label>:2264                                    ; preds = %2230, %2229
  %2265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %2266 = extractvalue %dx.types.CBufRet.f32 %2265, 0
  %2267 = fmul fast float %2266, %2095
  %2268 = fmul fast float %2267, 5.000000e-01
  %2269 = fadd fast float %2095, %2095
  %2270 = fmul fast float %2266, %2269
  %2271 = fmul fast float %2270, 2.500000e-01
  %2272 = fadd fast float %2271, %2268
  %2273 = fmul fast float %2272, %2272
  %2274 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %2275 = add i32 %189, -1
  %2276 = add i32 %189, 7
  %2277 = and i32 %2276, 4
  %2278 = and i32 %2275, %2274
  %2279 = xor i32 %2278, %2277
  %2280 = and i32 %2274, -4
  %2281 = shl i32 %2274, 1
  %2282 = and i32 %2281, 6
  %2283 = lshr i32 177, %2282
  %2284 = and i32 %2283, 3
  %2285 = or i32 %2284, %2280
  br i1 %2150, label %2286, label %2302, !dx.controlflow.hints !89

; <label>:2286                                    ; preds = %2264
  %2287 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2272, i32 %2279)  ; WaveReadLaneAt(value,lane)
  %2288 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2273, i32 %2279)  ; WaveReadLaneAt(value,lane)
  %2289 = fadd fast float %2287, %2272
  %2290 = fadd fast float %2288, %2273
  %2291 = add i32 %189, 31
  %2292 = and i32 %2291, 16
  %2293 = xor i32 %2278, %2292
  %2294 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2289, i32 %2293)  ; WaveReadLaneAt(value,lane)
  %2295 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2290, i32 %2293)  ; WaveReadLaneAt(value,lane)
  %2296 = fadd fast float %2294, %2289
  %2297 = fadd fast float %2295, %2290
  %2298 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2296, i32 %2285)  ; WaveReadLaneAt(value,lane)
  %2299 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2297, i32 %2285)  ; WaveReadLaneAt(value,lane)
  %2300 = fadd fast float %2298, %2296
  %2301 = fadd fast float %2299, %2297
  br label %2338

; <label>:2302                                    ; preds = %2264
  %2303 = udiv i32 %35, %189
  %2304 = shl i32 %2303, 2
  %2305 = lshr i32 %2274, 1
  %2306 = and i32 %2305, 1
  %2307 = or i32 %2304, %2306
  %2308 = lshr i32 %2274, 2
  %2309 = and i32 %2308, 2
  %2310 = or i32 %2307, %2309
  %2311 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2272, i32 %2279)  ; WaveReadLaneAt(value,lane)
  %2312 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2273, i32 %2279)  ; WaveReadLaneAt(value,lane)
  %2313 = fadd fast float %2311, %2272
  %2314 = fadd fast float %2312, %2273
  %2315 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2313, i32 %2285)  ; WaveReadLaneAt(value,lane)
  %2316 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2314, i32 %2285)  ; WaveReadLaneAt(value,lane)
  %2317 = fadd fast float %2315, %2313
  %2318 = fadd fast float %2316, %2314
  %2319 = mul i32 %2310, 2
  %2320 = add i32 0, %2319
  %2321 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %2320
  store float %2317, float addrspace(3)* %2321, align 4
  %2322 = mul i32 %2310, 2
  %2323 = add i32 1, %2322
  %2324 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %2323
  store float %2318, float addrspace(3)* %2324, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2325 = load float, float addrspace(3)* %2321, align 4
  %2326 = load float, float addrspace(3)* %2324, align 4
  %2327 = xor i32 %2310, 4
  %2328 = mul i32 %2327, 2
  %2329 = add i32 0, %2328
  %2330 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %2329
  %2331 = load float, float addrspace(3)* %2330, align 4
  %2332 = mul i32 %2327, 2
  %2333 = add i32 1, %2332
  %2334 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %2333
  %2335 = load float, float addrspace(3)* %2334, align 4
  %2336 = fadd fast float %2331, %2325
  %2337 = fadd fast float %2335, %2326
  br label %2338

; <label>:2338                                    ; preds = %2302, %2286
  %2339 = phi float [ %2300, %2286 ], [ %2336, %2302 ]
  %2340 = phi float [ %2301, %2286 ], [ %2337, %2302 ]
  %2341 = fmul fast float %2339, 1.250000e-01
  br i1 %2223, label %2342, label %2347, !dx.controlflow.hints !49

; <label>:2342                                    ; preds = %2338
  %2343 = fmul fast float %2340, 1.250000e-01
  %2344 = lshr i32 %56, 1
  %2345 = lshr i32 %57, 1
  %2346 = lshr i32 %58, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2344, i32 %2345, i32 %2346, float %2341, float %2343, float %2341, float %2341, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2347

; <label>:2347                                    ; preds = %2342, %2338
  br i1 %67, label %2376, label %2348, !dx.controlflow.hints !50

; <label>:2348                                    ; preds = %2347
  %2349 = fadd fast float %106, 0x3FE3C6EF40000000
  %2350 = call float @dx.op.unary.f32(i32 22, float %2349)  ; Frc(value)
  %2351 = call float @dx.op.unary.f32(i32 23, float %2267)  ; Log(value)
  %2352 = fadd fast float %2351, -7.000000e+00
  %2353 = call float @dx.op.unary.f32(i32 21, float %2352)  ; Exp(value)
  %2354 = fmul fast float %2350, 2.000000e+00
  %2355 = fadd fast float %2354, -1.000000e+00
  %2356 = fmul fast float %2353, %2355
  %2357 = fcmp fast ogt float %2267, 0.000000e+00
  %2358 = select i1 %2357, float %2356, float 0.000000e+00
  %2359 = fadd fast float %2358, %2267
  %2360 = fadd fast float %106, 0x3FF3C6EF40000000
  %2361 = call float @dx.op.unary.f32(i32 22, float %2360)  ; Frc(value)
  %2362 = fmul fast float %2361, 2.000000e+00
  %2363 = fadd fast float %2362, -1.000000e+00
  %2364 = fmul fast float %2353, %2363
  %2365 = select i1 %2357, float %2364, float 0.000000e+00
  %2366 = fadd fast float %2365, %2267
  %2367 = fadd fast float %106, 0x3FFDAA66E0000000
  %2368 = call float @dx.op.unary.f32(i32 22, float %2367)  ; Frc(value)
  %2369 = fadd fast float %2351, -6.000000e+00
  %2370 = call float @dx.op.unary.f32(i32 21, float %2369)  ; Exp(value)
  %2371 = fmul fast float %2368, 2.000000e+00
  %2372 = fadd fast float %2371, -1.000000e+00
  %2373 = fmul fast float %2370, %2372
  %2374 = select i1 %2357, float %2373, float 0.000000e+00
  %2375 = fadd fast float %2374, %2267
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %56, i32 %57, i32 %58, float %2359, float %2366, float %2375, float %2359, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2376

; <label>:2376                                    ; preds = %2348, %2347
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
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneIndex(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind
declare float @dx.op.waveReadLaneAt.f32(i32, float, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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
!dx.entryPoints = !{!43}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !30, !35, !38}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 44, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 38, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 35, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 41, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 4, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 24, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 25, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 36, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 37, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 39, i32 1, i32 12, i32 0, !21}
!21 = !{i32 1, i32 164}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 42, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %"class.StructuredBuffer<VolumetricVolume>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !26}
!26 = !{i32 1, i32 80}
!27 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!28 = !{i32 19, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 12, i32 0, !29}
!29 = !{i32 1, i32 4}
!30 = !{!31, !32, !33, !34}
!31 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!32 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!33 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!34 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!35 = !{!36, !37}
!36 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!37 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!38 = !{!39, !40, !41, !42}
!39 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!40 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!41 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!42 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!43 = !{void ()* @cs_volumetric_forwardplus_scatter_local, !"cs_volumetric_forwardplus_scatter_local", null, !4, !44}
!44 = !{i32 0, i64 524560, i32 4, !45}
!45 = !{i32 4, i32 4, i32 4}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !70}
!87 = distinct !{!87, !70}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}

