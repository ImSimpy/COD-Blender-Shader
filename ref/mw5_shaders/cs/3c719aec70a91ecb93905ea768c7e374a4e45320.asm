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
; shader hash: fbdfaad8163e93a86eda040a742c2624
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

@"\01?sharedMomentW@@3PAMA" = external addrspace(3) global [64 x float], align 4
@"\01?sharedMomentX@@3PAMA" = external addrspace(3) global [64 x float], align 4
@"\01?sharedMomentY@@3PAMA" = external addrspace(3) global [64 x float], align 4
@BLUE_NOISE_SAMPLES.v.1dim = internal constant [384 x float] [float 0x3FE18FE160000000, float 0x3FE2F89540000000, float 0x3FE6E2D4C0000000, float 0x3FC15736E0000000, float 0x3FBA5540C0000000, float 0x3FD3170EC0000000, float 0x3FED0D5120000000, float 0x3FE296A0E0000000, float 0x3FC4826EA0000000, float 0x3FE8282660000000, float 0x3FAFC328C0000000, float 0x3FEC521960000000, float 0x3FE37806C0000000, float 0x3FCA6D0000000000, float 0x3FD7082D00000000, float 0x3FC5E13120000000, float 0x3FD2E650A0000000, float 0x3FEBB39F60000000, float 0x3FDC57B600000000, float 0x3FE7C97180000000, float 0x3FCBD95EA0000000, float 0x3FC9988140000000, float 0x3FEAC46E60000000, float 0x3FEAD953E0000000, float 0x3FC843F4E0000000, float 0x3FE1FA7840000000, float 0x3FDEF62560000000, float 0x3FD8DD05A0000000, float 0x3FB5C98040000000, float 0x3FE40B4F00000000, float 0x3FEC4AEE80000000, float 0x3FEB172F40000000, float 0x3FE0065C00000000, float 0x3FEA254D00000000, float 0x3FD8E6DF40000000, float 0x3FE24C96C0000000, float 0x3FDE978BA0000000, float 0x3FBA8F1180000000, float 0x3FB121A6A0000000, float 0x3FE3626000000000, float 0x3FDE58B860000000, float 0x3FB2DED7A0000000, float 0x3FD4F97900000000, float 0x3FD7645460000000, float 0x3FCE571520000000, float 0x3FE7E85200000000, float 0x3FEAFC6460000000, float 0x3FCC666220000000, float 0x3FEC4FF540000000, float 0x3FE7C8B540000000, float 0x3FEBF4AC20000000, float 0x3FD0C66640000000, float 0x3FE2F95320000000, float 0x3F915FFF00000000, float 0x3FE352C600000000, float 0x3FEBC2D0A0000000, float 0x3FE3664520000000, float 0x3FE4504660000000, float 0x3FE1D81AA0000000, float 0x3FD7A97CA0000000, float 0x3F86A53280000000, float 0x3FC1343780000000, float 0x3FE473A1A0000000, float 0x3FEC7EAE80000000, float 0x3FCE83F160000000, float 0x3FC3B66640000000, float 0x3FABB6C6C0000000, float 0x3FEC127C60000000, float 0x3FC3E70E00000000, float 0x3FDC159A60000000, float 0x3FD7AB8720000000, float 0x3FE14710E0000000, float 0x3FDE623A40000000, float 0x3FEB8A45E0000000, float 0x3FEC3C0140000000, float 0x3FD1597DE0000000, float 0x3FEAF0F9A0000000, float 0x3FE1C52360000000, float 0x3FEA622660000000, float 0x3FD760A060000000, float 0x3FEC561B20000000, float 0x3FBAF00320000000, float 0x3FE4643220000000, float 0x3FE72199C0000000, float 0x3FE2E54080000000, float 0x3FD56206C0000000, float 0x3FE8890420000000, float 0x3FEFBE55E0000000, float 0x3FD25DC400000000, float 0x3FD8BF4640000000, float 0x3FE956BCC0000000, float 0x3FE3A5DFE0000000, float 0x3FE5928420000000, float 0x3FE6754AA0000000, float 0x3FBBCDB900000000, float 0x3FE4509C40000000, float 0x3FE14E9AE0000000, float 0x3FEEE61140000000, float 0x3FD3ADB960000000, float 0x3FD3C9D440000000, float 0x3FDF30AF40000000, float 0x3FE885B760000000, float 0x3FEFC30220000000, float 0x3FB1A902E0000000, float 0x3FED532A00000000, float 0x3FBA846540000000, float 0x3FDAC4BEC0000000, float 0x3FB347E280000000, float 0x3FC77620A0000000, float 0x3FBBEF41C0000000, float 0x3FB2C764E0000000, float 0x3FC199A160000000, float 0x3FE44F4480000000, float 0x3FD01FE1E0000000, float 0x3FEC5559A0000000, float 0x3FA2E2FA40000000, float 0x3FD5AAA3C0000000, float 0x3FEDC06380000000, float 0x3FE393B900000000, float 0x3FDA23D800000000, float 0x3FC0BD6E60000000, float 0x3FD6E3CF60000000, float 0x3FE39D7140000000, float 0x3FE07677C0000000, float 0x3FBE721700000000, float 0x3FEA99EBC0000000, float 0x3FC9C1C7E0000000, float 0x3FB4545D20000000, float 0x3FE927BDC0000000, float 0x3FD2AF0880000000, float 0x3FEDDAA620000000, float 0x3FD4C3A220000000, float 0x3FE764E8C0000000, float 0x3FB5474C60000000, float 0x3FBD28BE60000000, float 0x3FDCAE7120000000, float 0x3FE65C7EC0000000, float 0x3FDFAE6DC0000000, float 0x3FEFF2D3E0000000, float 0x3FED44B380000000, float 0x3FE6676480000000, float 0x3FE59F4A80000000, float 0x3FE61D1240000000, float 0x3F80FB0B40000000, float 0x3FD57E1500000000, float 0x3FEC5C93C0000000, float 0x3FA826DF20000000, float 0x3FE939D3A0000000, float 0x3FDB702260000000, float 0x3FD0309DC0000000, float 0x3FC05BD4E0000000, float 0x3F647F5360000000, float 0x3FDFF14000000000, float 0x3FD6B472E0000000, float 0x3FC67E8AE0000000, float 0x3FD7E52D80000000, float 0x3FD9A20420000000, float 0x3FD873C2E0000000, float 0x3FEED079E0000000, float 0x3FD9280DA0000000, float 0x3FE0E70960000000, float 0x3FD7AD5C60000000, float 0x3FADC1E8A0000000, float 0x3FE9BAFE00000000, float 0x3FD6EB3FA0000000, float 0x3FE8B0FE80000000, float 0x3FEC006EA0000000, float 0x3FE7886EC0000000, float 0x3FD4E113A0000000, float 0x3FE5EB06E0000000, float 0x3FE7AE8F00000000, float 0x3FE594A1A0000000, float 0x3FE8BE5C40000000, float 0x3FDBBB7820000000, float 0x3FDC00F660000000, float 0x3FE3BEAF60000000, float 0x3FECE40A40000000, float 0x3FE476BE80000000, float 0x3FCE715760000000, float 0x3F9A66CEA0000000, float 0x3FE1E87120000000, float 0x3FD6EFB1C0000000, float 0x3FCE53C0A0000000, float 0x3FEEC44720000000, float 0x3FDE4FCA40000000, float 0x3FE71C3E60000000, float 0x3FEF2C7C20000000, float 0x3FE166A120000000, float 0x3FEE257F40000000, float 0x3FE9B56F40000000, float 0x3FECD0D600000000, float 0x3FA0FC3EC0000000, float 0x3FEC4C3DC0000000, float 0x3FD150EC60000000, float 0x3FE71F4F60000000, float 0x3FB622B360000000, float 0x3FDC8CDE60000000, float 0x3FD23942A0000000, float 0x3FE1F1FAA0000000, float 0x3FED974C60000000, float 0x3FB46602A0000000, float 0x3FE6E2E620000000, float 0x3FEFD8B280000000, float 0x3FDD9BF5C0000000, float 0x3FA674A1C0000000, float 0x3FE9B56E40000000, float 0x3FEEE67800000000, float 0x3FCDA72D80000000, float 0x3FD469FA40000000, float 0x3FDBC871E0000000, float 0x3FDD20E3E0000000, float 0x3FEF2C1DE0000000, float 0x3FDF7B00E0000000, float 0x3FD6281F00000000, float 0x3FC66B3000000000, float 0x3FEDE19700000000, float 0x3FDB2072A0000000, float 0x3FE0D7DF20000000, float 0x3FC3B1B640000000, float 0x3FDA9DE220000000, float 0x3FD04AFB60000000, float 0x3FE78D6920000000, float 0x3FEF438F00000000, float 0x3FD0DACEC0000000, float 0x3FED6152E0000000, float 0x3FE9CF90A0000000, float 0x3FD0689260000000, float 0x3FDB295100000000, float 0x3FE43A8B20000000, float 0x3FDB335EA0000000, float 0x3FE0E1EA60000000, float 0x3FEBAB00E0000000, float 0x3FDA8B1D60000000, float 0x3FB10CBD20000000, float 0x3FE78F4620000000, float 0x3FE227D0E0000000, float 0x3FEC0E76A0000000, float 0x3FEEF3F8C0000000, float 0x3FE5ADCD40000000, float 0x3FE386C040000000, float 0x3FE2FA86E0000000, float 0x3FCE803BA0000000, float 0x3FE26AEBE0000000, float 0x3FE58556A0000000, float 0x3FEB878100000000, float 0x3FEC77D980000000, float 0x3FC0793440000000, float 0x3FD134B520000000, float 0x3FC9DB4080000000, float 0x3FE83B8480000000, float 0x3FE4ECC2E0000000, float 0x3FCEA8E9A0000000, float 0x3FD60CA840000000, float 0x3FECE35B20000000, float 0x3FE746B7A0000000, float 0x3FCE074860000000, float 0x3FE81DE580000000, float 0x3FC2584AA0000000, float 0x3FD5C82E00000000, float 0x3FE0CECA40000000, float 0x3FE26646C0000000, float 0x3FC0854540000000, float 0x3FE77AA920000000, float 0x3FE0120580000000, float 0x3FEF5EE280000000, float 0x3FB39D7D80000000, float 0x3FC50B8D20000000, float 0x3FDBFF8BC0000000, float 0x3FB7077B80000000, float 0x3FCF722760000000, float 0x3FD274BA20000000, float 0x3FE7EC88A0000000, float 0x3FD8207A00000000, float 0x3FDC2B1A00000000, float 0x3FEAE81F60000000, float 0x3FD84A9200000000, float 0x3FEB3D1480000000, float 0x3F74CDAB80000000, float 0x3FE2903380000000, float 0x3FE3D88D60000000, float 0x3FE5557C00000000, float 0x3FE1B02540000000, float 0x3FCAD53680000000, float 0x3FC97E4340000000, float 0x3FE4A0C720000000, float 0x3FDE649800000000, float 0x3FE8A886A0000000, float 0x3FE77F7260000000, float 0x3FEB51B700000000, float 0x3FC2E2DE00000000, float 0x3F5888D4C0000000, float 0x3FD41984E0000000, float 0x3FD20DB1A0000000, float 0x3FB551A020000000, float 0x3FDB131880000000, float 0x3FEDC9D0C0000000, float 0x3FC7DD4AA0000000, float 0x3FD5F5F120000000, float 0x3F7F518660000000, float 0x3FEBF19260000000, float 0x3F799ADA40000000, float 0x3FDC20E100000000, float 0x3FE0E7DB40000000, float 0x3FC0BB4EE0000000, float 0x3FDECDAEE0000000, float 0x3FEA638F20000000, float 0x3FE70F2040000000, float 0x3FCA53C540000000, float 0x3FCCF95320000000, float 0x3FB324F500000000, float 0x3FE354CC40000000, float 0x3FB2C45460000000, float 0x3FE072AB00000000, float 0x3FE6B81580000000, float 0x3FAD0D1160000000, float 0x3FECCB0BE0000000, float 0x3FEB935140000000, float 0x3FD2A50CE0000000, float 0x3FE5A24D40000000, float 0x3FCB409DA0000000, float 0x3FEAFD5600000000, float 0x3FE2CA5C00000000, float 0x3FEEB0C0A0000000, float 0x3FE8201F60000000, float 0x3FAA420B00000000, float 0x3FD2EB8020000000, float 0x3FE7E3DFA0000000, float 0x3FE7E2A760000000, float 0x3FE8746C80000000, float 0x3FE31217A0000000, float 0x3FEB946480000000, float 0x3FE7B3EDC0000000, float 0x3FB74FEFA0000000, float 0x3FEE07E160000000, float 0x3FC272BDC0000000, float 0x3FDE3B38A0000000, float 0x3FE687E8E0000000, float 0x3FDD8CC5E0000000, float 0x3FE5BD32A0000000, float 0x3FC63803C0000000, float 0x3FED12DE60000000, float 0x3F99B048C0000000, float 0x3FEC98B3E0000000, float 0x3FB9C91A60000000, float 0x3FE8D6E040000000, float 0x3FD39228C0000000, float 0x3FE404F040000000, float 0x3FD00082E0000000, float 0x3FE9099100000000, float 0x3FE1A444E0000000, float 0x3FDDFDC900000000, float 0x3FD649EA00000000, float 0x3FE7F988C0000000, float 0x3FEEB362C0000000, float 0x3FBE7B5FE0000000, float 0x3FC6A55F60000000, float 0x3FE07F6B40000000, float 0x3FE0AFB880000000, float 0x3FDE87A600000000, float 0x3FEBF9DCC0000000, float 0x3FD039B760000000, float 0x3F73CF67C0000000, float 0x3FE33EED40000000, float 0x3FD43683E0000000, float 0x3FD1531020000000, float 0x3FE1D32C60000000, float 0x3FE16249C0000000, float 0x3FBCE097A0000000, float 0x3FDE6FED80000000, float 0x3FE47A3A60000000, float 0x3FE6D84580000000, float 0x3FEA3764C0000000, float 0x3FE9B3C000000000, float 0x3FCD0FDF40000000, float 0x3FE2C6AC00000000, float 0x3FCBCACA20000000, float 0x3FE02FE880000000, float 0x3FC52C7860000000, float 0x3FD5258C40000000, float 0x3FA7811BC0000000, float 0x3FAAEB5B20000000, float 0x3FE369AEC0000000, float 0x3FB38C3220000000, float 0x3FEF14BEE0000000], align 4

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
  %137 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %138 = fmul fast float %137, 0x3FE62E4300000000
  %139 = fmul fast float %138, %138
  %140 = select i1 %45, float 0.000000e+00, float 1.000000e+00
  %141 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %15
  store float %140, float addrspace(3)* %141, align 4, !tbaa !23, !noalias !27
  %142 = fmul fast float %138, %140
  %143 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %15
  store float %142, float addrspace(3)* %143, align 4, !tbaa !23, !noalias !27
  %144 = fmul fast float %139, %140
  %145 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %15
  store float %144, float addrspace(3)* %145, align 4, !tbaa !23, !noalias !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %146 = xor i32 %15, 4
  %147 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %146
  %148 = load float, float addrspace(3)* %147, align 4, !tbaa !23, !noalias !27
  %149 = fadd fast float %148, %140
  %150 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %146
  %151 = load float, float addrspace(3)* %150, align 4, !tbaa !23, !noalias !27
  %152 = fadd fast float %151, %138
  %153 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %146
  %154 = load float, float addrspace(3)* %153, align 4, !tbaa !23, !noalias !27
  %155 = fadd fast float %154, %139
  store float %149, float addrspace(3)* %141, align 4, !tbaa !23, !noalias !27
  store float %152, float addrspace(3)* %143, align 4, !tbaa !23, !noalias !27
  store float %155, float addrspace(3)* %145, align 4, !tbaa !23, !noalias !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %156 = xor i32 %15, 16
  %157 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %156
  %158 = load float, float addrspace(3)* %157, align 4, !tbaa !23, !noalias !27
  %159 = fadd fast float %158, %149
  %160 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %156
  %161 = load float, float addrspace(3)* %160, align 4, !tbaa !23, !noalias !27
  %162 = fadd fast float %161, %152
  %163 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %156
  %164 = load float, float addrspace(3)* %163, align 4, !tbaa !23, !noalias !27
  %165 = fadd fast float %164, %155
  store float %159, float addrspace(3)* %141, align 4, !tbaa !23, !noalias !27
  store float %162, float addrspace(3)* %143, align 4, !tbaa !23, !noalias !27
  store float %165, float addrspace(3)* %145, align 4, !tbaa !23, !noalias !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %166 = xor i32 %15, 1
  %167 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %166
  %168 = load float, float addrspace(3)* %167, align 4, !tbaa !23, !noalias !27
  %169 = fadd fast float %168, %159
  %170 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %166
  %171 = load float, float addrspace(3)* %170, align 4, !tbaa !23, !noalias !27
  %172 = fadd fast float %171, %162
  %173 = fdiv fast float %172, %169
  %174 = and i32 %35, 1
  %175 = and i32 %174, %34
  %176 = and i32 %175, %36
  %177 = icmp ne i32 %176, 0
  %178 = and i1 %177, %46
  br i1 %178, label %179, label %187, !dx.controlflow.hints !31

; <label>:179                                     ; preds = %0
  %180 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %166
  %181 = load float, float addrspace(3)* %180, align 4, !tbaa !23, !noalias !27
  %182 = fadd fast float %181, %165
  %183 = fdiv fast float %182, %169
  %184 = lshr i32 %34, 1
  %185 = lshr i32 %35, 1
  %186 = lshr i32 %36, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %184, i32 %185, i32 %186, float %173, float %183, float %173, float %173, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %187

; <label>:187                                     ; preds = %179, %0
  br i1 %45, label %189, label %188, !dx.controlflow.hints !32

; <label>:188                                     ; preds = %187
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %34, i32 %35, i32 %36, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %189

; <label>:189                                     ; preds = %188, %187
  store float %140, float addrspace(3)* %141, align 4, !tbaa !23, !noalias !27
  store float 0.000000e+00, float addrspace(3)* %143, align 4, !tbaa !23, !noalias !27
  store float 0.000000e+00, float addrspace(3)* %145, align 4, !tbaa !23, !noalias !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %190 = load float, float addrspace(3)* %147, align 4, !tbaa !23, !noalias !27
  %191 = fadd fast float %190, %140
  %192 = load float, float addrspace(3)* %150, align 4, !tbaa !23, !noalias !27
  %193 = load float, float addrspace(3)* %153, align 4, !tbaa !23, !noalias !27
  store float %191, float addrspace(3)* %141, align 4, !tbaa !23, !noalias !27
  store float %192, float addrspace(3)* %143, align 4, !tbaa !23, !noalias !27
  store float %193, float addrspace(3)* %145, align 4, !tbaa !23, !noalias !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %194 = load float, float addrspace(3)* %157, align 4, !tbaa !23, !noalias !27
  %195 = fadd fast float %194, %191
  %196 = load float, float addrspace(3)* %160, align 4, !tbaa !23, !noalias !27
  %197 = fadd fast float %196, %192
  %198 = load float, float addrspace(3)* %163, align 4, !tbaa !23, !noalias !27
  %199 = fadd fast float %198, %193
  store float %195, float addrspace(3)* %141, align 4, !tbaa !23, !noalias !27
  store float %197, float addrspace(3)* %143, align 4, !tbaa !23, !noalias !27
  store float %199, float addrspace(3)* %145, align 4, !tbaa !23, !noalias !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %200 = load float, float addrspace(3)* %167, align 4, !tbaa !23, !noalias !27
  %201 = fadd fast float %200, %195
  %202 = load float, float addrspace(3)* %170, align 4, !tbaa !23, !noalias !27
  %203 = fadd fast float %202, %197
  %204 = fdiv fast float %203, %201
  br i1 %178, label %205, label %213, !dx.controlflow.hints !33

; <label>:205                                     ; preds = %189
  %206 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %166
  %207 = load float, float addrspace(3)* %206, align 4, !tbaa !23, !noalias !27
  %208 = fadd fast float %207, %199
  %209 = fdiv fast float %208, %201
  %210 = lshr i32 %34, 1
  %211 = lshr i32 %35, 1
  %212 = lshr i32 %36, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %210, i32 %211, i32 %212, float %204, float %209, float %204, float %204, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %213

; <label>:213                                     ; preds = %205, %189
  br i1 %45, label %215, label %214, !dx.controlflow.hints !34

; <label>:214                                     ; preds = %213
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %34, i32 %35, i32 %36, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %215

; <label>:215                                     ; preds = %214, %213
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 0
  %218 = extractvalue %dx.types.CBufRet.f32 %216, 1
  %219 = fsub fast float %136, %217
  %220 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %219)  ; FMax(a,b)
  %221 = fmul fast float %220, 0x3FF7154760000000
  %222 = fmul fast float %221, %218
  %223 = call float @dx.op.unary.f32(i32 21, float %222)  ; Exp(value)
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 0
  %226 = extractvalue %dx.types.CBufRet.f32 %224, 1
  %227 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 1
  %230 = fmul fast float %229, %223
  %231 = fmul fast float %230, %225
  %232 = fmul fast float %230, %226
  %233 = fmul fast float %230, %227
  %234 = fcmp fast ogt float %230, 0.000000e+00
  br i1 %234, label %235, label %262, !dx.controlflow.hints !35

; <label>:235                                     ; preds = %215
  %236 = fdiv fast float 1.000000e+00, %230
  %237 = fmul fast float %236, %231
  %238 = fmul fast float %236, %232
  %239 = fmul fast float %236, %233
  %240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %103, float %104, float %105, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = extractvalue %dx.types.ResRet.f32 %240, 1
  %243 = extractvalue %dx.types.ResRet.f32 %240, 2
  %244 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %241)  ; IsNaN(value)
  %245 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %242)  ; IsNaN(value)
  %246 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %243)  ; IsNaN(value)
  %247 = or i1 %244, %245
  %248 = or i1 %247, %246
  %249 = select i1 %248, float 0.000000e+00, float %241
  %250 = select i1 %248, float 0.000000e+00, float %242
  %251 = select i1 %248, float 0.000000e+00, float %243
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 1
  %254 = fmul fast float %249, %253
  %255 = fmul fast float %250, %253
  %256 = fmul fast float %251, %253
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 3
  %259 = fmul fast float %254, %258
  %260 = fmul fast float %255, %258
  %261 = fmul fast float %256, %258
  br label %262

; <label>:262                                     ; preds = %235, %215
  %263 = phi float [ %237, %235 ], [ %231, %215 ]
  %264 = phi float [ %238, %235 ], [ %232, %215 ]
  %265 = phi float [ %239, %235 ], [ %233, %215 ]
  %266 = phi float [ %259, %235 ], [ 0.000000e+00, %215 ]
  %267 = phi float [ %260, %235 ], [ 0.000000e+00, %215 ]
  %268 = phi float [ %261, %235 ], [ 0.000000e+00, %215 ]
  %269 = fmul fast float %263, %230
  %270 = fmul fast float %264, %230
  %271 = fmul fast float %265, %230
  %272 = fmul fast float %269, %266
  %273 = fmul fast float %270, %267
  %274 = fmul fast float %271, %268
  %275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.f32 %275, 0
  %277 = fmul fast float %272, %276
  %278 = fmul fast float %273, %276
  %279 = fmul fast float %274, %276
  %280 = fmul fast float %278, 5.000000e-01
  %281 = fadd fast float %274, %272
  %282 = fmul fast float %276, %281
  %283 = fmul fast float %282, 2.500000e-01
  %284 = fadd fast float %283, %280
  %285 = call float @dx.op.unary.f32(i32 23, float %284)  ; Log(value)
  %286 = fmul fast float %285, 0x3FE62E4300000000
  %287 = fmul fast float %286, %286
  store float %140, float addrspace(3)* %141, align 4, !tbaa !23, !noalias !27
  %288 = fmul fast float %286, %140
  store float %288, float addrspace(3)* %143, align 4, !tbaa !23, !noalias !27
  %289 = fmul fast float %287, %140
  store float %289, float addrspace(3)* %145, align 4, !tbaa !23, !noalias !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %290 = load float, float addrspace(3)* %147, align 4, !tbaa !23, !noalias !27
  %291 = fadd fast float %290, %140
  %292 = load float, float addrspace(3)* %150, align 4, !tbaa !23, !noalias !27
  %293 = fadd fast float %292, %286
  %294 = load float, float addrspace(3)* %153, align 4, !tbaa !23, !noalias !27
  %295 = fadd fast float %294, %287
  store float %291, float addrspace(3)* %141, align 4, !tbaa !23, !noalias !27
  store float %293, float addrspace(3)* %143, align 4, !tbaa !23, !noalias !27
  store float %295, float addrspace(3)* %145, align 4, !tbaa !23, !noalias !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %296 = load float, float addrspace(3)* %157, align 4, !tbaa !23, !noalias !27
  %297 = fadd fast float %296, %291
  %298 = load float, float addrspace(3)* %160, align 4, !tbaa !23, !noalias !27
  %299 = fadd fast float %298, %293
  %300 = load float, float addrspace(3)* %163, align 4, !tbaa !23, !noalias !27
  %301 = fadd fast float %300, %295
  store float %297, float addrspace(3)* %141, align 4, !tbaa !23, !noalias !27
  store float %299, float addrspace(3)* %143, align 4, !tbaa !23, !noalias !27
  store float %301, float addrspace(3)* %145, align 4, !tbaa !23, !noalias !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %302 = load float, float addrspace(3)* %167, align 4, !tbaa !23, !noalias !27
  %303 = fadd fast float %302, %297
  %304 = load float, float addrspace(3)* %170, align 4, !tbaa !23, !noalias !27
  %305 = fadd fast float %304, %299
  %306 = fdiv fast float %305, %303
  br i1 %178, label %307, label %315, !dx.controlflow.hints !31

; <label>:307                                     ; preds = %262
  %308 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %166
  %309 = load float, float addrspace(3)* %308, align 4, !tbaa !23, !noalias !27
  %310 = fadd fast float %309, %301
  %311 = fdiv fast float %310, %303
  %312 = lshr i32 %34, 1
  %313 = lshr i32 %35, 1
  %314 = lshr i32 %36, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %312, i32 %313, i32 %314, float %306, float %311, float %306, float %306, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %315

; <label>:315                                     ; preds = %307, %262
  br i1 %45, label %350, label %316, !dx.controlflow.hints !32

; <label>:316                                     ; preds = %315
  %317 = fadd fast float %84, 0x3FE3C6EF40000000
  %318 = call float @dx.op.unary.f32(i32 22, float %317)  ; Frc(value)
  %319 = call float @dx.op.unary.f32(i32 23, float %277)  ; Log(value)
  %320 = fadd fast float %319, -7.000000e+00
  %321 = call float @dx.op.unary.f32(i32 21, float %320)  ; Exp(value)
  %322 = fmul fast float %318, 2.000000e+00
  %323 = fadd fast float %322, -1.000000e+00
  %324 = fmul fast float %321, %323
  %325 = fcmp fast ogt float %277, 0.000000e+00
  %326 = select i1 %325, float %324, float 0.000000e+00
  %327 = fadd fast float %326, %277
  %328 = fadd fast float %84, 0x3FF3C6EF40000000
  %329 = call float @dx.op.unary.f32(i32 22, float %328)  ; Frc(value)
  %330 = call float @dx.op.unary.f32(i32 23, float %278)  ; Log(value)
  %331 = fadd fast float %330, -7.000000e+00
  %332 = call float @dx.op.unary.f32(i32 21, float %331)  ; Exp(value)
  %333 = fmul fast float %329, 2.000000e+00
  %334 = fadd fast float %333, -1.000000e+00
  %335 = fmul fast float %332, %334
  %336 = fcmp fast ogt float %278, 0.000000e+00
  %337 = select i1 %336, float %335, float 0.000000e+00
  %338 = fadd fast float %337, %278
  %339 = fadd fast float %84, 0x3FFDAA66E0000000
  %340 = call float @dx.op.unary.f32(i32 22, float %339)  ; Frc(value)
  %341 = call float @dx.op.unary.f32(i32 23, float %279)  ; Log(value)
  %342 = fadd fast float %341, -6.000000e+00
  %343 = call float @dx.op.unary.f32(i32 21, float %342)  ; Exp(value)
  %344 = fmul fast float %340, 2.000000e+00
  %345 = fadd fast float %344, -1.000000e+00
  %346 = fmul fast float %343, %345
  %347 = fcmp fast ogt float %279, 0.000000e+00
  %348 = select i1 %347, float %346, float 0.000000e+00
  %349 = fadd fast float %348, %279
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %34, i32 %35, i32 %36, float %327, float %338, float %349, float %327, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %350

; <label>:350                                     ; preds = %316, %315
  %351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.f32 %351, 0
  %353 = fmul fast float %352, %230
  %354 = fmul fast float %353, 5.000000e-01
  %355 = fadd fast float %223, %223
  %356 = fmul fast float %229, %355
  %357 = fmul fast float %352, %356
  %358 = fmul fast float %357, 2.500000e-01
  %359 = fadd fast float %358, %354
  %360 = fmul fast float %359, %359
  store float %140, float addrspace(3)* %141, align 4, !tbaa !23, !noalias !27
  %361 = fmul fast float %359, %140
  store float %361, float addrspace(3)* %143, align 4, !tbaa !23, !noalias !27
  %362 = fmul fast float %360, %140
  store float %362, float addrspace(3)* %145, align 4, !tbaa !23, !noalias !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %363 = load float, float addrspace(3)* %147, align 4, !tbaa !23, !noalias !27
  %364 = fadd fast float %363, %140
  %365 = load float, float addrspace(3)* %150, align 4, !tbaa !23, !noalias !27
  %366 = fadd fast float %359, %365
  %367 = load float, float addrspace(3)* %153, align 4, !tbaa !23, !noalias !27
  %368 = fadd fast float %360, %367
  store float %364, float addrspace(3)* %141, align 4, !tbaa !23, !noalias !27
  store float %366, float addrspace(3)* %143, align 4, !tbaa !23, !noalias !27
  store float %368, float addrspace(3)* %145, align 4, !tbaa !23, !noalias !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %369 = load float, float addrspace(3)* %157, align 4, !tbaa !23, !noalias !27
  %370 = fadd fast float %369, %364
  %371 = load float, float addrspace(3)* %160, align 4, !tbaa !23, !noalias !27
  %372 = fadd fast float %371, %366
  %373 = load float, float addrspace(3)* %163, align 4, !tbaa !23, !noalias !27
  %374 = fadd fast float %373, %368
  store float %370, float addrspace(3)* %141, align 4, !tbaa !23, !noalias !27
  store float %372, float addrspace(3)* %143, align 4, !tbaa !23, !noalias !27
  store float %374, float addrspace(3)* %145, align 4, !tbaa !23, !noalias !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %375 = load float, float addrspace(3)* %167, align 4, !tbaa !23, !noalias !27
  %376 = fadd fast float %375, %370
  %377 = load float, float addrspace(3)* %170, align 4, !tbaa !23, !noalias !27
  %378 = fadd fast float %377, %372
  %379 = fdiv fast float %378, %376
  br i1 %178, label %380, label %388, !dx.controlflow.hints !33

; <label>:380                                     ; preds = %350
  %381 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %166
  %382 = load float, float addrspace(3)* %381, align 4, !tbaa !23, !noalias !27
  %383 = fadd fast float %382, %374
  %384 = fdiv fast float %383, %376
  %385 = lshr i32 %34, 1
  %386 = lshr i32 %35, 1
  %387 = lshr i32 %36, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %385, i32 %386, i32 %387, float %379, float %384, float %379, float %379, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %388

; <label>:388                                     ; preds = %380, %350
  br i1 %45, label %417, label %389, !dx.controlflow.hints !34

; <label>:389                                     ; preds = %388
  %390 = fadd fast float %84, 0x3FE3C6EF40000000
  %391 = call float @dx.op.unary.f32(i32 22, float %390)  ; Frc(value)
  %392 = call float @dx.op.unary.f32(i32 23, float %353)  ; Log(value)
  %393 = fadd fast float %392, -7.000000e+00
  %394 = call float @dx.op.unary.f32(i32 21, float %393)  ; Exp(value)
  %395 = fmul fast float %391, 2.000000e+00
  %396 = fadd fast float %395, -1.000000e+00
  %397 = fmul fast float %394, %396
  %398 = fcmp fast ogt float %353, 0.000000e+00
  %399 = select i1 %398, float %397, float 0.000000e+00
  %400 = fadd fast float %399, %353
  %401 = fadd fast float %84, 0x3FF3C6EF40000000
  %402 = call float @dx.op.unary.f32(i32 22, float %401)  ; Frc(value)
  %403 = fmul fast float %402, 2.000000e+00
  %404 = fadd fast float %403, -1.000000e+00
  %405 = fmul fast float %394, %404
  %406 = select i1 %398, float %405, float 0.000000e+00
  %407 = fadd fast float %406, %353
  %408 = fadd fast float %84, 0x3FFDAA66E0000000
  %409 = call float @dx.op.unary.f32(i32 22, float %408)  ; Frc(value)
  %410 = fadd fast float %392, -6.000000e+00
  %411 = call float @dx.op.unary.f32(i32 21, float %410)  ; Exp(value)
  %412 = fmul fast float %409, 2.000000e+00
  %413 = fadd fast float %412, -1.000000e+00
  %414 = fmul fast float %411, %413
  %415 = select i1 %398, float %414, float 0.000000e+00
  %416 = fadd fast float %415, %353
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %34, i32 %35, i32 %36, float %400, float %407, float %416, float %400, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %417

; <label>:417                                     ; preds = %389, %388
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

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
!21 = !{i32 0, i64 272, i32 4, !22}
!22 = !{i32 4, i32 4, i32 4}
!23 = !{!24, !24, i64 0}
!24 = !{!"float", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !{!28, !30}
!28 = distinct !{!28, !29, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!29 = distinct !{!29, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!30 = distinct !{!30, !29, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}

