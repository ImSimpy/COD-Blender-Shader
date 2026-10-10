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
; shader hash: 8aea15df7c54a0aa09d0398b4df303e6
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   sampler      NA          NA      S0             s4     1
;                                   texture     f32          2d      T0            t11     1
;                                   texture    byte         r/o      T1            t22     1
;                                   texture     f32          3d      T2             t5     1
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
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
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

define void @cs_volumetric_forwardplus_scatter_global() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %12 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %13 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %14 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %15 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %16 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.i32 %16, 3
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 1
  %20 = mul i32 %19, %17
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 1
  %23 = mul i32 %20, %22
  %24 = add i32 %23, %14
  %25 = shl i32 %24, 2
  %26 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %25, i32 undef)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.i32 %26, 0
  %28 = shl i32 %27, 2
  %29 = and i32 %28, 1020
  %30 = lshr i32 %27, 6
  %31 = and i32 %30, 1020
  %32 = lshr i32 %27, 14
  %33 = and i32 %32, 1020
  %34 = add i32 %29, %11
  %35 = add i32 %31, %12
  %36 = add i32 %33, %13
  %37 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.i32 %37, 0
  %39 = extractvalue %dx.types.CBufRet.i32 %37, 1
  %40 = extractvalue %dx.types.CBufRet.i32 %37, 2
  %41 = icmp uge i32 %34, %38
  %42 = icmp uge i32 %35, %39
  %43 = icmp uge i32 %36, %40
  %44 = or i1 %41, %42
  %45 = or i1 %43, %44
  %46 = xor i1 %45, true
  %47 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.i32 %47, 3
  %49 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %35, i32 %48)  ; UMad(a,b,c)
  %50 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %34, i32 %49)  ; UMad(a,b,c)
  %51 = mul i32 %50, -63
  %52 = lshr i32 %51, 17
  %53 = xor i32 %52, %51
  %54 = mul i32 %53, -511
  %55 = mul i32 %53, -8176
  %56 = xor i32 %54, %55
  %57 = mul i32 %56, -7
  %58 = mul i32 %56, -7168
  %59 = xor i32 %57, %58
  %60 = lshr i32 %59, 15
  %61 = xor i32 %60, %57
  %62 = and i32 %61, 127
  %63 = mul i32 %62, 3
  %64 = add i32 0, %63
  %65 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %64
  %66 = load float, float* %65, align 4
  %67 = mul i32 %62, 3
  %68 = add i32 1, %67
  %69 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %68
  %70 = load float, float* %69, align 4
  %71 = mul i32 %62, 3
  %72 = add i32 2, %71
  %73 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %72
  %74 = load float, float* %73, align 4
  %75 = uitofp i32 %48 to float
  %76 = fmul fast float %75, 0x3FEA36A940000000
  %77 = fmul fast float %75, 0x3FE5793080000000
  %78 = fmul fast float %75, 0x3FE1972580000000
  %79 = fadd fast float %66, %76
  %80 = fadd fast float %70, %77
  %81 = fadd fast float %74, %78
  %82 = call float @dx.op.unary.f32(i32 22, float %79)  ; Frc(value)
  %83 = call float @dx.op.unary.f32(i32 22, float %80)  ; Frc(value)
  %84 = call float @dx.op.unary.f32(i32 22, float %81)  ; Frc(value)
  %85 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %34, i32 %35, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %86 = extractvalue %dx.types.ResRet.f32 %85, 0
  %87 = fcmp fast ogt float %86, -1.000000e+00
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %90 = select i1 %87, float %89, float 1.000000e+00
  %91 = fadd fast float %86, 1.000000e+00
  %92 = fmul fast float %90, %91
  %93 = uitofp i32 %34 to float
  %94 = uitofp i32 %35 to float
  %95 = uitofp i32 %36 to float
  %96 = fadd fast float %93, %82
  %97 = fadd fast float %94, %83
  %98 = fadd fast float %95, %84
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %103 = fmul fast float %100, %96
  %104 = fmul fast float %101, %97
  %105 = fmul fast float %102, %98
  %106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.i32 %106, 0
  %108 = uitofp i32 %107 to float
  %109 = fmul fast float %108, %105
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = fmul fast float %109, %112
  %114 = call float @dx.op.unary.f32(i32 21, float %113)  ; Exp(value)
  %115 = fmul fast float %114, %111
  %116 = fsub fast float 4.000000e+00, %111
  %117 = fadd fast float %116, %115
  %118 = call float @dx.op.binary.f32(i32 36, float %117, float %92)  ; FMin(a,b)
  %119 = fmul fast float %103, 2.000000e+00
  %120 = fmul fast float %104, 2.000000e+00
  %121 = fsub fast float 1.000000e+00, %119
  %122 = fsub fast float 1.000000e+00, %120
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %125 = fmul fast float %124, %121
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %128 = fmul fast float %127, %122
  %129 = fadd fast float %128, %125
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %132 = fadd fast float %129, %131
  %133 = fmul fast float %132, %118
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = fadd fast float %133, %135
  %137 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %138 = icmp ult i32 %137, 32
  br i1 %138, label %139, label %257, !dx.controlflow.hints !23

; <label>:139                                     ; preds = %0
  %140 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %141 = fmul fast float %140, 0x3FE62E4300000000
  %142 = fmul fast float %141, %141
  %143 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %144 = add i32 %137, -1
  %145 = add i32 %137, 7
  %146 = and i32 %145, 4
  %147 = and i32 %144, %143
  %148 = xor i32 %147, %146
  %149 = and i32 %143, -4
  %150 = shl i32 %143, 1
  %151 = and i32 %150, 6
  %152 = lshr i32 177, %151
  %153 = and i32 %152, 3
  %154 = or i32 %153, %149
  %155 = udiv i32 %15, %137
  %156 = shl i32 %155, 2
  %157 = lshr i32 %143, 1
  %158 = and i32 %157, 1
  %159 = or i32 %156, %158
  %160 = lshr i32 %143, 2
  %161 = and i32 %160, 2
  %162 = or i32 %159, %161
  %163 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %141, i32 %148)  ; WaveReadLaneAt(value,lane)
  %164 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %142, i32 %148)  ; WaveReadLaneAt(value,lane)
  %165 = fadd fast float %163, %141
  %166 = fadd fast float %164, %142
  %167 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %165, i32 %154)  ; WaveReadLaneAt(value,lane)
  %168 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %166, i32 %154)  ; WaveReadLaneAt(value,lane)
  %169 = fadd fast float %167, %165
  %170 = fadd fast float %168, %166
  %171 = mul i32 %162, 2
  %172 = add i32 0, %171
  %173 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %172
  store float %169, float addrspace(3)* %173, align 4
  %174 = mul i32 %162, 2
  %175 = add i32 1, %174
  %176 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %175
  store float %170, float addrspace(3)* %176, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %177 = load float, float addrspace(3)* %173, align 4
  %178 = xor i32 %162, 4
  %179 = mul i32 %178, 2
  %180 = add i32 0, %179
  %181 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %180
  %182 = load float, float addrspace(3)* %181, align 4
  %183 = fadd fast float %182, %177
  %184 = fmul fast float %183, 1.250000e-01
  %185 = and i32 %35, 1
  %186 = and i32 %185, %34
  %187 = and i32 %186, %36
  %188 = icmp ne i32 %187, 0
  %189 = and i1 %188, %46
  br i1 %189, label %190, label %201, !dx.controlflow.hints !24

; <label>:190                                     ; preds = %139
  %191 = mul i32 %178, 2
  %192 = add i32 1, %191
  %193 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %192
  %194 = load float, float addrspace(3)* %193, align 4
  %195 = load float, float addrspace(3)* %176, align 4
  %196 = fadd fast float %194, %195
  %197 = fmul fast float %196, 1.250000e-01
  %198 = lshr i32 %34, 1
  %199 = lshr i32 %35, 1
  %200 = lshr i32 %36, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %198, i32 %199, i32 %200, float %184, float %197, float %184, float %184, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %201

; <label>:201                                     ; preds = %190, %139
  br i1 %45, label %203, label %202, !dx.controlflow.hints !25

; <label>:202                                     ; preds = %201
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %34, i32 %35, i32 %36, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %203

; <label>:203                                     ; preds = %202, %201
  %204 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %205 = add i32 %137, -1
  %206 = add i32 %137, 7
  %207 = and i32 %206, 4
  %208 = and i32 %205, %204
  %209 = xor i32 %208, %207
  %210 = and i32 %204, -4
  %211 = shl i32 %204, 1
  %212 = and i32 %211, 6
  %213 = lshr i32 177, %212
  %214 = and i32 %213, 3
  %215 = or i32 %214, %210
  %216 = udiv i32 %15, %137
  %217 = shl i32 %216, 2
  %218 = lshr i32 %204, 1
  %219 = and i32 %218, 1
  %220 = or i32 %217, %219
  %221 = lshr i32 %204, 2
  %222 = and i32 %221, 2
  %223 = or i32 %220, %222
  %224 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %209)  ; WaveReadLaneAt(value,lane)
  %225 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %209)  ; WaveReadLaneAt(value,lane)
  %226 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %224, i32 %215)  ; WaveReadLaneAt(value,lane)
  %227 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %225, i32 %215)  ; WaveReadLaneAt(value,lane)
  %228 = fadd fast float %226, %224
  %229 = fadd fast float %227, %225
  %230 = mul i32 %223, 2
  %231 = add i32 0, %230
  %232 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %231
  store float %228, float addrspace(3)* %232, align 4
  %233 = mul i32 %223, 2
  %234 = add i32 1, %233
  %235 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %234
  store float %229, float addrspace(3)* %235, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %236 = load float, float addrspace(3)* %232, align 4
  %237 = xor i32 %223, 4
  %238 = mul i32 %237, 2
  %239 = add i32 0, %238
  %240 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %239
  %241 = load float, float addrspace(3)* %240, align 4
  %242 = fadd fast float %241, %236
  %243 = fmul fast float %242, 1.250000e-01
  br i1 %189, label %244, label %255, !dx.controlflow.hints !26

; <label>:244                                     ; preds = %203
  %245 = mul i32 %237, 2
  %246 = add i32 1, %245
  %247 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %246
  %248 = load float, float addrspace(3)* %247, align 4
  %249 = load float, float addrspace(3)* %235, align 4
  %250 = fadd fast float %248, %249
  %251 = fmul fast float %250, 1.250000e-01
  %252 = lshr i32 %34, 1
  %253 = lshr i32 %35, 1
  %254 = lshr i32 %36, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %252, i32 %253, i32 %254, float %243, float %251, float %243, float %243, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %255

; <label>:255                                     ; preds = %244, %203
  br i1 %45, label %257, label %256, !dx.controlflow.hints !27

; <label>:256                                     ; preds = %255
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %34, i32 %35, i32 %36, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %257

; <label>:257                                     ; preds = %256, %255, %0
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 0
  %260 = extractvalue %dx.types.CBufRet.f32 %258, 1
  %261 = fsub fast float %136, %259
  %262 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %261)  ; FMax(a,b)
  %263 = fmul fast float %262, 0x3FF7154760000000
  %264 = fmul fast float %263, %260
  %265 = call float @dx.op.unary.f32(i32 21, float %264)  ; Exp(value)
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 0
  %268 = extractvalue %dx.types.CBufRet.f32 %266, 1
  %269 = extractvalue %dx.types.CBufRet.f32 %266, 2
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 1
  %272 = fmul fast float %271, %265
  %273 = fmul fast float %272, %267
  %274 = fmul fast float %272, %268
  %275 = fmul fast float %272, %269
  %276 = fcmp fast ogt float %272, 0.000000e+00
  br i1 %276, label %277, label %304, !dx.controlflow.hints !28

; <label>:277                                     ; preds = %257
  %278 = fdiv fast float 1.000000e+00, %272
  %279 = fmul fast float %278, %273
  %280 = fmul fast float %278, %274
  %281 = fmul fast float %278, %275
  %282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %103, float %104, float %105, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = extractvalue %dx.types.ResRet.f32 %282, 1
  %285 = extractvalue %dx.types.ResRet.f32 %282, 2
  %286 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %283)  ; IsNaN(value)
  %287 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %284)  ; IsNaN(value)
  %288 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %285)  ; IsNaN(value)
  %289 = or i1 %286, %287
  %290 = or i1 %289, %288
  %291 = select i1 %290, float 0.000000e+00, float %283
  %292 = select i1 %290, float 0.000000e+00, float %284
  %293 = select i1 %290, float 0.000000e+00, float %285
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 1
  %296 = fmul fast float %291, %295
  %297 = fmul fast float %292, %295
  %298 = fmul fast float %293, %295
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 3
  %301 = fmul fast float %296, %300
  %302 = fmul fast float %297, %300
  %303 = fmul fast float %298, %300
  br label %304

; <label>:304                                     ; preds = %277, %257
  %305 = phi float [ %279, %277 ], [ %273, %257 ]
  %306 = phi float [ %280, %277 ], [ %274, %257 ]
  %307 = phi float [ %281, %277 ], [ %275, %257 ]
  %308 = phi float [ %301, %277 ], [ 0.000000e+00, %257 ]
  %309 = phi float [ %302, %277 ], [ 0.000000e+00, %257 ]
  %310 = phi float [ %303, %277 ], [ 0.000000e+00, %257 ]
  %311 = fmul fast float %305, %272
  %312 = fmul fast float %306, %272
  %313 = fmul fast float %307, %272
  %314 = fmul fast float %311, %308
  %315 = fmul fast float %312, %309
  %316 = fmul fast float %313, %310
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %319 = fmul fast float %314, %318
  %320 = fmul fast float %315, %318
  %321 = fmul fast float %316, %318
  %322 = fmul fast float %320, 5.000000e-01
  %323 = fadd fast float %316, %314
  %324 = fmul fast float %318, %323
  %325 = fmul fast float %324, 2.500000e-01
  %326 = fadd fast float %325, %322
  %327 = call float @dx.op.unary.f32(i32 23, float %326)  ; Log(value)
  %328 = fmul fast float %327, 0x3FE62E4300000000
  %329 = fmul fast float %328, %328
  %330 = icmp ugt i32 %137, 31
  %331 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %332 = add i32 %137, -1
  %333 = add i32 %137, 7
  %334 = and i32 %333, 4
  %335 = and i32 %332, %331
  %336 = xor i32 %335, %334
  %337 = and i32 %331, -4
  %338 = shl i32 %331, 1
  %339 = and i32 %338, 6
  %340 = lshr i32 177, %339
  %341 = and i32 %340, 3
  %342 = or i32 %341, %337
  br i1 %330, label %343, label %359, !dx.controlflow.hints !29

; <label>:343                                     ; preds = %304
  %344 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %328, i32 %336)  ; WaveReadLaneAt(value,lane)
  %345 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %329, i32 %336)  ; WaveReadLaneAt(value,lane)
  %346 = fadd fast float %344, %328
  %347 = fadd fast float %345, %329
  %348 = add i32 %137, 31
  %349 = and i32 %348, 16
  %350 = xor i32 %335, %349
  %351 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %346, i32 %350)  ; WaveReadLaneAt(value,lane)
  %352 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %347, i32 %350)  ; WaveReadLaneAt(value,lane)
  %353 = fadd fast float %351, %346
  %354 = fadd fast float %352, %347
  %355 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %353, i32 %342)  ; WaveReadLaneAt(value,lane)
  %356 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %354, i32 %342)  ; WaveReadLaneAt(value,lane)
  %357 = fadd fast float %355, %353
  %358 = fadd fast float %356, %354
  br label %395

; <label>:359                                     ; preds = %304
  %360 = udiv i32 %15, %137
  %361 = shl i32 %360, 2
  %362 = lshr i32 %331, 1
  %363 = and i32 %362, 1
  %364 = or i32 %361, %363
  %365 = lshr i32 %331, 2
  %366 = and i32 %365, 2
  %367 = or i32 %364, %366
  %368 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %328, i32 %336)  ; WaveReadLaneAt(value,lane)
  %369 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %329, i32 %336)  ; WaveReadLaneAt(value,lane)
  %370 = fadd fast float %368, %328
  %371 = fadd fast float %369, %329
  %372 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %370, i32 %342)  ; WaveReadLaneAt(value,lane)
  %373 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %371, i32 %342)  ; WaveReadLaneAt(value,lane)
  %374 = fadd fast float %372, %370
  %375 = fadd fast float %373, %371
  %376 = mul i32 %367, 2
  %377 = add i32 0, %376
  %378 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %377
  store float %374, float addrspace(3)* %378, align 4
  %379 = mul i32 %367, 2
  %380 = add i32 1, %379
  %381 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %380
  store float %375, float addrspace(3)* %381, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %382 = load float, float addrspace(3)* %378, align 4
  %383 = load float, float addrspace(3)* %381, align 4
  %384 = xor i32 %367, 4
  %385 = mul i32 %384, 2
  %386 = add i32 0, %385
  %387 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %386
  %388 = load float, float addrspace(3)* %387, align 4
  %389 = mul i32 %384, 2
  %390 = add i32 1, %389
  %391 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %390
  %392 = load float, float addrspace(3)* %391, align 4
  %393 = fadd fast float %388, %382
  %394 = fadd fast float %392, %383
  br label %395

; <label>:395                                     ; preds = %359, %343
  %396 = phi float [ %357, %343 ], [ %393, %359 ]
  %397 = phi float [ %358, %343 ], [ %394, %359 ]
  %398 = fmul fast float %396, 1.250000e-01
  %399 = and i32 %35, 1
  %400 = and i32 %399, %34
  %401 = and i32 %400, %36
  %402 = icmp ne i32 %401, 0
  %403 = and i1 %402, %46
  br i1 %403, label %404, label %409, !dx.controlflow.hints !24

; <label>:404                                     ; preds = %395
  %405 = fmul fast float %397, 1.250000e-01
  %406 = lshr i32 %34, 1
  %407 = lshr i32 %35, 1
  %408 = lshr i32 %36, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %406, i32 %407, i32 %408, float %398, float %405, float %398, float %398, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %409

; <label>:409                                     ; preds = %404, %395
  br i1 %45, label %444, label %410, !dx.controlflow.hints !25

; <label>:410                                     ; preds = %409
  %411 = fadd fast float %84, 0x3FE3C6EF40000000
  %412 = call float @dx.op.unary.f32(i32 22, float %411)  ; Frc(value)
  %413 = call float @dx.op.unary.f32(i32 23, float %319)  ; Log(value)
  %414 = fadd fast float %413, -7.000000e+00
  %415 = call float @dx.op.unary.f32(i32 21, float %414)  ; Exp(value)
  %416 = fmul fast float %412, 2.000000e+00
  %417 = fadd fast float %416, -1.000000e+00
  %418 = fmul fast float %415, %417
  %419 = fcmp fast ogt float %319, 0.000000e+00
  %420 = select i1 %419, float %418, float 0.000000e+00
  %421 = fadd fast float %420, %319
  %422 = fadd fast float %84, 0x3FF3C6EF40000000
  %423 = call float @dx.op.unary.f32(i32 22, float %422)  ; Frc(value)
  %424 = call float @dx.op.unary.f32(i32 23, float %320)  ; Log(value)
  %425 = fadd fast float %424, -7.000000e+00
  %426 = call float @dx.op.unary.f32(i32 21, float %425)  ; Exp(value)
  %427 = fmul fast float %423, 2.000000e+00
  %428 = fadd fast float %427, -1.000000e+00
  %429 = fmul fast float %426, %428
  %430 = fcmp fast ogt float %320, 0.000000e+00
  %431 = select i1 %430, float %429, float 0.000000e+00
  %432 = fadd fast float %431, %320
  %433 = fadd fast float %84, 0x3FFDAA66E0000000
  %434 = call float @dx.op.unary.f32(i32 22, float %433)  ; Frc(value)
  %435 = call float @dx.op.unary.f32(i32 23, float %321)  ; Log(value)
  %436 = fadd fast float %435, -6.000000e+00
  %437 = call float @dx.op.unary.f32(i32 21, float %436)  ; Exp(value)
  %438 = fmul fast float %434, 2.000000e+00
  %439 = fadd fast float %438, -1.000000e+00
  %440 = fmul fast float %437, %439
  %441 = fcmp fast ogt float %321, 0.000000e+00
  %442 = select i1 %441, float %440, float 0.000000e+00
  %443 = fadd fast float %442, %321
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %34, i32 %35, i32 %36, float %421, float %432, float %443, float %421, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %444

; <label>:444                                     ; preds = %410, %409
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 0
  %447 = fmul fast float %446, %272
  %448 = fmul fast float %447, 5.000000e-01
  %449 = fadd fast float %265, %265
  %450 = fmul fast float %271, %449
  %451 = fmul fast float %446, %450
  %452 = fmul fast float %451, 2.500000e-01
  %453 = fadd fast float %452, %448
  %454 = fmul fast float %453, %453
  %455 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %456 = add i32 %137, -1
  %457 = add i32 %137, 7
  %458 = and i32 %457, 4
  %459 = and i32 %456, %455
  %460 = xor i32 %459, %458
  %461 = and i32 %455, -4
  %462 = shl i32 %455, 1
  %463 = and i32 %462, 6
  %464 = lshr i32 177, %463
  %465 = and i32 %464, 3
  %466 = or i32 %465, %461
  br i1 %330, label %467, label %483, !dx.controlflow.hints !29

; <label>:467                                     ; preds = %444
  %468 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %453, i32 %460)  ; WaveReadLaneAt(value,lane)
  %469 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %454, i32 %460)  ; WaveReadLaneAt(value,lane)
  %470 = fadd fast float %468, %453
  %471 = fadd fast float %469, %454
  %472 = add i32 %137, 31
  %473 = and i32 %472, 16
  %474 = xor i32 %459, %473
  %475 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %470, i32 %474)  ; WaveReadLaneAt(value,lane)
  %476 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %471, i32 %474)  ; WaveReadLaneAt(value,lane)
  %477 = fadd fast float %475, %470
  %478 = fadd fast float %476, %471
  %479 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %477, i32 %466)  ; WaveReadLaneAt(value,lane)
  %480 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %478, i32 %466)  ; WaveReadLaneAt(value,lane)
  %481 = fadd fast float %479, %477
  %482 = fadd fast float %480, %478
  br label %519

; <label>:483                                     ; preds = %444
  %484 = udiv i32 %15, %137
  %485 = shl i32 %484, 2
  %486 = lshr i32 %455, 1
  %487 = and i32 %486, 1
  %488 = or i32 %485, %487
  %489 = lshr i32 %455, 2
  %490 = and i32 %489, 2
  %491 = or i32 %488, %490
  %492 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %453, i32 %460)  ; WaveReadLaneAt(value,lane)
  %493 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %454, i32 %460)  ; WaveReadLaneAt(value,lane)
  %494 = fadd fast float %492, %453
  %495 = fadd fast float %493, %454
  %496 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %494, i32 %466)  ; WaveReadLaneAt(value,lane)
  %497 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %495, i32 %466)  ; WaveReadLaneAt(value,lane)
  %498 = fadd fast float %496, %494
  %499 = fadd fast float %497, %495
  %500 = mul i32 %491, 2
  %501 = add i32 0, %500
  %502 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %501
  store float %498, float addrspace(3)* %502, align 4
  %503 = mul i32 %491, 2
  %504 = add i32 1, %503
  %505 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %504
  store float %499, float addrspace(3)* %505, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %506 = load float, float addrspace(3)* %502, align 4
  %507 = load float, float addrspace(3)* %505, align 4
  %508 = xor i32 %491, 4
  %509 = mul i32 %508, 2
  %510 = add i32 0, %509
  %511 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %510
  %512 = load float, float addrspace(3)* %511, align 4
  %513 = mul i32 %508, 2
  %514 = add i32 1, %513
  %515 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %514
  %516 = load float, float addrspace(3)* %515, align 4
  %517 = fadd fast float %512, %506
  %518 = fadd fast float %516, %507
  br label %519

; <label>:519                                     ; preds = %483, %467
  %520 = phi float [ %481, %467 ], [ %517, %483 ]
  %521 = phi float [ %482, %467 ], [ %518, %483 ]
  %522 = fmul fast float %520, 1.250000e-01
  br i1 %403, label %523, label %528, !dx.controlflow.hints !26

; <label>:523                                     ; preds = %519
  %524 = fmul fast float %521, 1.250000e-01
  %525 = lshr i32 %34, 1
  %526 = lshr i32 %35, 1
  %527 = lshr i32 %36, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %525, i32 %526, i32 %527, float %522, float %524, float %522, float %522, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %528

; <label>:528                                     ; preds = %523, %519
  br i1 %45, label %557, label %529, !dx.controlflow.hints !27

; <label>:529                                     ; preds = %528
  %530 = fadd fast float %84, 0x3FE3C6EF40000000
  %531 = call float @dx.op.unary.f32(i32 22, float %530)  ; Frc(value)
  %532 = call float @dx.op.unary.f32(i32 23, float %447)  ; Log(value)
  %533 = fadd fast float %532, -7.000000e+00
  %534 = call float @dx.op.unary.f32(i32 21, float %533)  ; Exp(value)
  %535 = fmul fast float %531, 2.000000e+00
  %536 = fadd fast float %535, -1.000000e+00
  %537 = fmul fast float %534, %536
  %538 = fcmp fast ogt float %447, 0.000000e+00
  %539 = select i1 %538, float %537, float 0.000000e+00
  %540 = fadd fast float %539, %447
  %541 = fadd fast float %84, 0x3FF3C6EF40000000
  %542 = call float @dx.op.unary.f32(i32 22, float %541)  ; Frc(value)
  %543 = fmul fast float %542, 2.000000e+00
  %544 = fadd fast float %543, -1.000000e+00
  %545 = fmul fast float %534, %544
  %546 = select i1 %538, float %545, float 0.000000e+00
  %547 = fadd fast float %546, %447
  %548 = fadd fast float %84, 0x3FFDAA66E0000000
  %549 = call float @dx.op.unary.f32(i32 22, float %548)  ; Frc(value)
  %550 = fadd fast float %532, -6.000000e+00
  %551 = call float @dx.op.unary.f32(i32 21, float %550)  ; Exp(value)
  %552 = fmul fast float %549, 2.000000e+00
  %553 = fadd fast float %552, -1.000000e+00
  %554 = fmul fast float %551, %553
  %555 = select i1 %538, float %554, float 0.000000e+00
  %556 = fadd fast float %555, %447
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %34, i32 %35, i32 %36, float %540, float %547, float %556, float %540, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %557

; <label>:557                                     ; preds = %529, %528
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
declare i1 @dx.op.isSpecialFloat.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !15, !18}
!5 = !{!6, !8, !9}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!10 = !{!11, !12, !13, !14}
!11 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!12 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!13 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!14 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!15 = !{!16, !17}
!16 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!17 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!18 = !{!19}
!19 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!20 = !{void ()* @cs_volumetric_forwardplus_scatter_global, !"cs_volumetric_forwardplus_scatter_global", null, !4, !21}
!21 = !{i32 0, i64 524560, i32 4, !22}
!22 = !{i32 4, i32 4, i32 4}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}

