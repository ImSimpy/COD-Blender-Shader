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
; shader hash: 8e42ab0bc10eed31cc54ef9184913f4c
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
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s4     1
;                                   texture     f32          2d      T0            t11     1
;                                   texture    byte         r/o      T1            t22     1
;                                   texture     f32          1d      T2            t54     1
;                                   texture     f32          3d      T3             t5     1
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
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
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

define void @cs_volumetric_forwardplus_scatter_global_afog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 54, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %14 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %15 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %16 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %17 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.i32 %20, 3
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 1
  %24 = mul i32 %23, %21
  %25 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.i32 %25, 1
  %27 = mul i32 %24, %26
  %28 = add i32 %27, %16
  %29 = shl i32 %28, 2
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %29, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = shl i32 %31, 2
  %33 = and i32 %32, 1020
  %34 = lshr i32 %31, 6
  %35 = and i32 %34, 1020
  %36 = lshr i32 %31, 14
  %37 = and i32 %36, 1020
  %38 = add i32 %33, %13
  %39 = add i32 %35, %14
  %40 = add i32 %37, %15
  %41 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.i32 %41, 0
  %43 = extractvalue %dx.types.CBufRet.i32 %41, 1
  %44 = extractvalue %dx.types.CBufRet.i32 %41, 2
  %45 = icmp uge i32 %38, %42
  %46 = icmp uge i32 %39, %43
  %47 = icmp uge i32 %40, %44
  %48 = or i1 %45, %46
  %49 = or i1 %47, %48
  %50 = xor i1 %49, true
  %51 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.i32 %51, 3
  %53 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %39, i32 %52)  ; UMad(a,b,c)
  %54 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %38, i32 %53)  ; UMad(a,b,c)
  %55 = mul i32 %54, -63
  %56 = lshr i32 %55, 17
  %57 = xor i32 %56, %55
  %58 = mul i32 %57, -511
  %59 = mul i32 %57, -8176
  %60 = xor i32 %58, %59
  %61 = mul i32 %60, -7
  %62 = mul i32 %60, -7168
  %63 = xor i32 %61, %62
  %64 = lshr i32 %63, 15
  %65 = xor i32 %64, %61
  %66 = and i32 %65, 127
  %67 = mul i32 %66, 3
  %68 = add i32 0, %67
  %69 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %68
  %70 = load float, float* %69, align 4
  %71 = mul i32 %66, 3
  %72 = add i32 1, %71
  %73 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %72
  %74 = load float, float* %73, align 4
  %75 = mul i32 %66, 3
  %76 = add i32 2, %75
  %77 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %76
  %78 = load float, float* %77, align 4
  %79 = uitofp i32 %52 to float
  %80 = fmul fast float %79, 0x3FEA36A940000000
  %81 = fmul fast float %79, 0x3FE5793080000000
  %82 = fmul fast float %79, 0x3FE1972580000000
  %83 = fadd fast float %70, %80
  %84 = fadd fast float %74, %81
  %85 = fadd fast float %78, %82
  %86 = call float @dx.op.unary.f32(i32 22, float %83)  ; Frc(value)
  %87 = call float @dx.op.unary.f32(i32 22, float %84)  ; Frc(value)
  %88 = call float @dx.op.unary.f32(i32 22, float %85)  ; Frc(value)
  %89 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %38, i32 %39, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %90 = extractvalue %dx.types.ResRet.f32 %89, 0
  %91 = fcmp fast ogt float %90, -1.000000e+00
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %94 = select i1 %91, float %93, float 1.000000e+00
  %95 = fadd fast float %90, 1.000000e+00
  %96 = fmul fast float %94, %95
  %97 = uitofp i32 %38 to float
  %98 = uitofp i32 %39 to float
  %99 = uitofp i32 %40 to float
  %100 = fadd fast float %97, %86
  %101 = fadd fast float %98, %87
  %102 = fadd fast float %99, %88
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %107 = fmul fast float %104, %100
  %108 = fmul fast float %105, %101
  %109 = fmul fast float %106, %102
  %110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.i32 %110, 0
  %112 = uitofp i32 %111 to float
  %113 = fmul fast float %112, %109
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %117 = fmul fast float %113, %116
  %118 = call float @dx.op.unary.f32(i32 21, float %117)  ; Exp(value)
  %119 = fmul fast float %118, %115
  %120 = fsub fast float 4.000000e+00, %115
  %121 = fadd fast float %120, %119
  %122 = call float @dx.op.binary.f32(i32 36, float %121, float %96)  ; FMin(a,b)
  %123 = fmul fast float %107, 2.000000e+00
  %124 = fmul fast float %108, 2.000000e+00
  %125 = fsub fast float 1.000000e+00, %123
  %126 = fsub fast float 1.000000e+00, %124
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = fmul fast float %128, %125
  %132 = fmul fast float %129, %125
  %133 = fmul fast float %130, %125
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = fmul fast float %135, %126
  %139 = fmul fast float %136, %126
  %140 = fmul fast float %137, %126
  %141 = fadd fast float %138, %131
  %142 = fadd fast float %139, %132
  %143 = fadd fast float %140, %133
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %148 = fadd fast float %141, %145
  %149 = fadd fast float %142, %146
  %150 = fadd fast float %143, %147
  %151 = fmul fast float %148, %122
  %152 = fmul fast float %149, %122
  %153 = fmul fast float %150, %122
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %156 = fadd fast float %153, %155
  %157 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %158 = fmul fast float %157, 0x3FE62E4300000000
  %159 = fmul fast float %158, %158
  %160 = select i1 %49, float 0.000000e+00, float 1.000000e+00
  %161 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %17
  store float %160, float addrspace(3)* %161, align 4, !tbaa !25, !noalias !29
  %162 = fmul fast float %158, %160
  %163 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %17
  store float %162, float addrspace(3)* %163, align 4, !tbaa !25, !noalias !29
  %164 = fmul fast float %159, %160
  %165 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %17
  store float %164, float addrspace(3)* %165, align 4, !tbaa !25, !noalias !29
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %166 = xor i32 %17, 4
  %167 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %166
  %168 = load float, float addrspace(3)* %167, align 4, !tbaa !25, !noalias !29
  %169 = fadd fast float %168, %160
  %170 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %166
  %171 = load float, float addrspace(3)* %170, align 4, !tbaa !25, !noalias !29
  %172 = fadd fast float %171, %158
  %173 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %166
  %174 = load float, float addrspace(3)* %173, align 4, !tbaa !25, !noalias !29
  %175 = fadd fast float %174, %159
  store float %169, float addrspace(3)* %161, align 4, !tbaa !25, !noalias !29
  store float %172, float addrspace(3)* %163, align 4, !tbaa !25, !noalias !29
  store float %175, float addrspace(3)* %165, align 4, !tbaa !25, !noalias !29
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %176 = xor i32 %17, 16
  %177 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %176
  %178 = load float, float addrspace(3)* %177, align 4, !tbaa !25, !noalias !29
  %179 = fadd fast float %178, %169
  %180 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %176
  %181 = load float, float addrspace(3)* %180, align 4, !tbaa !25, !noalias !29
  %182 = fadd fast float %181, %172
  %183 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %176
  %184 = load float, float addrspace(3)* %183, align 4, !tbaa !25, !noalias !29
  %185 = fadd fast float %184, %175
  store float %179, float addrspace(3)* %161, align 4, !tbaa !25, !noalias !29
  store float %182, float addrspace(3)* %163, align 4, !tbaa !25, !noalias !29
  store float %185, float addrspace(3)* %165, align 4, !tbaa !25, !noalias !29
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %186 = xor i32 %17, 1
  %187 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %186
  %188 = load float, float addrspace(3)* %187, align 4, !tbaa !25, !noalias !29
  %189 = fadd fast float %188, %179
  %190 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %186
  %191 = load float, float addrspace(3)* %190, align 4, !tbaa !25, !noalias !29
  %192 = fadd fast float %191, %182
  %193 = fdiv fast float %192, %189
  %194 = and i32 %39, 1
  %195 = and i32 %194, %38
  %196 = and i32 %195, %40
  %197 = icmp ne i32 %196, 0
  %198 = and i1 %197, %50
  br i1 %198, label %199, label %207, !dx.controlflow.hints !33

; <label>:199                                     ; preds = %0
  %200 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %186
  %201 = load float, float addrspace(3)* %200, align 4, !tbaa !25, !noalias !29
  %202 = fadd fast float %201, %185
  %203 = fdiv fast float %202, %189
  %204 = lshr i32 %38, 1
  %205 = lshr i32 %39, 1
  %206 = lshr i32 %40, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %204, i32 %205, i32 %206, float %193, float %203, float %193, float %193, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %207

; <label>:207                                     ; preds = %199, %0
  br i1 %49, label %209, label %208, !dx.controlflow.hints !34

; <label>:208                                     ; preds = %207
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %38, i32 %39, i32 %40, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %209

; <label>:209                                     ; preds = %208, %207
  store float %160, float addrspace(3)* %161, align 4, !tbaa !25, !noalias !29
  store float 0.000000e+00, float addrspace(3)* %163, align 4, !tbaa !25, !noalias !29
  store float 0.000000e+00, float addrspace(3)* %165, align 4, !tbaa !25, !noalias !29
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %210 = load float, float addrspace(3)* %167, align 4, !tbaa !25, !noalias !29
  %211 = fadd fast float %210, %160
  %212 = load float, float addrspace(3)* %170, align 4, !tbaa !25, !noalias !29
  %213 = load float, float addrspace(3)* %173, align 4, !tbaa !25, !noalias !29
  store float %211, float addrspace(3)* %161, align 4, !tbaa !25, !noalias !29
  store float %212, float addrspace(3)* %163, align 4, !tbaa !25, !noalias !29
  store float %213, float addrspace(3)* %165, align 4, !tbaa !25, !noalias !29
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %214 = load float, float addrspace(3)* %177, align 4, !tbaa !25, !noalias !29
  %215 = fadd fast float %214, %211
  %216 = load float, float addrspace(3)* %180, align 4, !tbaa !25, !noalias !29
  %217 = fadd fast float %216, %212
  %218 = load float, float addrspace(3)* %183, align 4, !tbaa !25, !noalias !29
  %219 = fadd fast float %218, %213
  store float %215, float addrspace(3)* %161, align 4, !tbaa !25, !noalias !29
  store float %217, float addrspace(3)* %163, align 4, !tbaa !25, !noalias !29
  store float %219, float addrspace(3)* %165, align 4, !tbaa !25, !noalias !29
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %220 = load float, float addrspace(3)* %187, align 4, !tbaa !25, !noalias !29
  %221 = fadd fast float %220, %215
  %222 = load float, float addrspace(3)* %190, align 4, !tbaa !25, !noalias !29
  %223 = fadd fast float %222, %217
  %224 = fdiv fast float %223, %221
  br i1 %198, label %225, label %233, !dx.controlflow.hints !35

; <label>:225                                     ; preds = %209
  %226 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %186
  %227 = load float, float addrspace(3)* %226, align 4, !tbaa !25, !noalias !29
  %228 = fadd fast float %227, %219
  %229 = fdiv fast float %228, %221
  %230 = lshr i32 %38, 1
  %231 = lshr i32 %39, 1
  %232 = lshr i32 %40, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %230, i32 %231, i32 %232, float %224, float %229, float %224, float %224, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %233

; <label>:233                                     ; preds = %225, %209
  br i1 %49, label %235, label %234, !dx.controlflow.hints !36

; <label>:234                                     ; preds = %233
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %38, i32 %39, i32 %40, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %235

; <label>:235                                     ; preds = %234, %233
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 0
  %238 = extractvalue %dx.types.CBufRet.f32 %236, 1
  %239 = fsub fast float %156, %237
  %240 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %239)  ; FMax(a,b)
  %241 = fmul fast float %240, 0x3FF7154760000000
  %242 = fmul fast float %241, %238
  %243 = call float @dx.op.unary.f32(i32 21, float %242)  ; Exp(value)
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 0
  %246 = extractvalue %dx.types.CBufRet.f32 %244, 1
  %247 = extractvalue %dx.types.CBufRet.f32 %244, 2
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 1
  %250 = fmul fast float %249, %243
  %251 = fmul fast float %250, %245
  %252 = fmul fast float %250, %246
  %253 = fmul fast float %250, %247
  %254 = fcmp fast ogt float %250, 0.000000e+00
  br i1 %254, label %255, label %282, !dx.controlflow.hints !37

; <label>:255                                     ; preds = %235
  %256 = fdiv fast float 1.000000e+00, %250
  %257 = fmul fast float %256, %251
  %258 = fmul fast float %256, %252
  %259 = fmul fast float %256, %253
  %260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %9, float %107, float %108, float %109, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = extractvalue %dx.types.ResRet.f32 %260, 1
  %263 = extractvalue %dx.types.ResRet.f32 %260, 2
  %264 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %261)  ; IsNaN(value)
  %265 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %262)  ; IsNaN(value)
  %266 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %263)  ; IsNaN(value)
  %267 = or i1 %264, %265
  %268 = or i1 %267, %266
  %269 = select i1 %268, float 0.000000e+00, float %261
  %270 = select i1 %268, float 0.000000e+00, float %262
  %271 = select i1 %268, float 0.000000e+00, float %263
  %272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.f32 %272, 1
  %274 = fmul fast float %269, %273
  %275 = fmul fast float %270, %273
  %276 = fmul fast float %271, %273
  %277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.f32 %277, 3
  %279 = fmul fast float %274, %278
  %280 = fmul fast float %275, %278
  %281 = fmul fast float %276, %278
  br label %282

; <label>:282                                     ; preds = %255, %235
  %283 = phi float [ %257, %255 ], [ %251, %235 ]
  %284 = phi float [ %258, %255 ], [ %252, %235 ]
  %285 = phi float [ %259, %255 ], [ %253, %235 ]
  %286 = phi float [ %279, %255 ], [ 0.000000e+00, %235 ]
  %287 = phi float [ %280, %255 ], [ 0.000000e+00, %235 ]
  %288 = phi float [ %281, %255 ], [ 0.000000e+00, %235 ]
  %289 = fmul fast float %283, %250
  %290 = fmul fast float %284, %250
  %291 = fmul fast float %285, %250
  %292 = fmul fast float %289, %286
  %293 = fmul fast float %290, %287
  %294 = fmul fast float %291, %288
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 0
  %297 = extractvalue %dx.types.CBufRet.f32 %295, 1
  %298 = extractvalue %dx.types.CBufRet.f32 %295, 2
  %299 = extractvalue %dx.types.CBufRet.f32 %295, 3
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 0
  %302 = extractvalue %dx.types.CBufRet.f32 %300, 1
  %303 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %304 = extractvalue %dx.types.CBufRet.f32 %300, 3
  %305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.f32 %305, 0
  %307 = extractvalue %dx.types.CBufRet.f32 %305, 1
  %308 = extractvalue %dx.types.CBufRet.f32 %305, 2
  %309 = extractvalue %dx.types.CBufRet.f32 %305, 3
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %312 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %313 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %314 = extractvalue %dx.types.CBufRet.f32 %310, 3
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 3
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 3
  %319 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %320 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %321 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %322 = fcmp fast olt float %321, -5.000000e-01
  %323 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %151, float %152, float %153)  ; Dot3(ax,ay,az,bx,by,bz)
  %324 = call float @dx.op.unary.f32(i32 25, float %323)  ; Rsqrt(value)
  %325 = fmul fast float %324, %323
  %326 = fmul fast float %324, %151
  %327 = fmul fast float %324, %152
  %328 = fmul fast float %324, %153
  %329 = fadd fast float %325, %299
  %330 = call float @dx.op.dot3.f32(i32 55, float %326, float %327, float %328, float %296, float %297, float %298)  ; Dot3(ax,ay,az,bx,by,bz)
  %331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.i32 %331, 1
  %333 = and i32 %332, 1
  %334 = icmp ne i32 %333, 0
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 2
  %337 = fcmp fast ogt float %336, 0.000000e+00
  %338 = and i1 %334, %337
  br i1 %338, label %339, label %745, !dx.controlflow.hints !38

; <label>:339                                     ; preds = %282
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 3
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 2
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %346 = fsub fast float %343, %345
  %347 = and i32 %332, 2
  %348 = extractvalue %dx.types.CBufRet.i32 %331, 0
  %349 = call i32 @dx.op.binary.i32(i32 40, i32 %348, i32 3)  ; UMin(a,b)
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 0
  %352 = extractvalue %dx.types.CBufRet.f32 %350, 1
  %353 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %354 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %355 = fsub fast float %351, %353
  %356 = fsub fast float %352, %354
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = fcmp fast ogt float %358, 0.000000e+00
  %360 = fsub fast float -0.000000e+00, %355
  %361 = fsub fast float -0.000000e+00, %356
  %362 = call float @dx.op.dot2.f32(i32 54, float %326, float %327, float %326, float %327)  ; Dot2(ax,ay,bx,by)
  %363 = call float @dx.op.dot2.f32(i32 54, float %326, float %327, float %360, float %361)  ; Dot2(ax,ay,bx,by)
  %364 = fmul fast float %363, 2.000000e+00
  %365 = call float @dx.op.dot2.f32(i32 54, float %360, float %361, float %360, float %361)  ; Dot2(ax,ay,bx,by)
  %366 = fmul fast float %358, %358
  %367 = fsub fast float %365, %366
  %368 = fmul fast float %364, %364
  %369 = fmul fast float %362, 4.000000e+00
  %370 = fmul fast float %369, %367
  %371 = fsub fast float %368, %370
  %372 = fcmp fast ogt float %371, 0.000000e+00
  br i1 %372, label %373, label %388, !dx.controlflow.hints !39

; <label>:373                                     ; preds = %339
  %374 = fcmp fast ogt float %364, 0.000000e+00
  %375 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %376 = fsub fast float -0.000000e+00, %375
  %377 = select i1 %374, float %375, float %376
  %378 = fadd fast float %377, %364
  %379 = fmul float %378, -5.000000e-01
  %380 = fdiv fast float %379, %362
  %381 = call float @dx.op.binary.f32(i32 35, float %380, float 0.000000e+00)  ; FMax(a,b)
  %382 = call float @dx.op.binary.f32(i32 36, float %325, float %381)  ; FMin(a,b)
  %383 = fdiv fast float %367, %379
  %384 = call float @dx.op.binary.f32(i32 35, float %383, float 0.000000e+00)  ; FMax(a,b)
  %385 = call float @dx.op.binary.f32(i32 36, float %325, float %384)  ; FMin(a,b)
  %386 = call float @dx.op.binary.f32(i32 36, float %382, float %385)  ; FMin(a,b)
  %387 = call float @dx.op.binary.f32(i32 35, float %382, float %385)  ; FMax(a,b)
  br label %388

; <label>:388                                     ; preds = %373, %339
  %389 = phi float [ %387, %373 ], [ -1.000000e+00, %339 ]
  %390 = phi float [ %386, %373 ], [ -1.000000e+00, %339 ]
  %391 = phi i1 [ true, %373 ], [ false, %339 ]
  %392 = and i1 %359, %391
  br i1 %392, label %393, label %395, !dx.controlflow.hints !40

; <label>:393                                     ; preds = %388
  %394 = fcmp fast oeq float %390, %389
  br i1 %394, label %698, label %396, !dx.controlflow.hints !41

; <label>:395                                     ; preds = %388
  br i1 %359, label %698, label %396, !dx.controlflow.hints !42

; <label>:396                                     ; preds = %395, %393
  %397 = phi float [ %325, %395 ], [ %389, %393 ]
  %398 = phi float [ 0.000000e+00, %395 ], [ %390, %393 ]
  %399 = icmp ne i32 %347, 0
  %400 = fmul fast float %397, %328
  %401 = fadd fast float %400, %341
  %402 = fmul fast float %401, %397
  %403 = select i1 %399, float 0.000000e+00, float %402
  %404 = fcmp fast oeq float %328, 0.000000e+00
  %405 = fdiv fast float %346, %328
  %406 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %405)  ; FMax(a,b)
  %407 = select i1 %404, float %397, float %406
  %408 = call float @dx.op.binary.f32(i32 36, float %397, float %407)  ; FMin(a,b)
  %409 = fcmp fast ogt float %328, 0.000000e+00
  %410 = fcmp fast olt float %346, 0.000000e+00
  br i1 %409, label %411, label %468, !dx.controlflow.hints !43

; <label>:411                                     ; preds = %396
  %412 = icmp eq i32 %347, 0
  br i1 %410, label %413, label %457, !dx.controlflow.hints !44

; <label>:413                                     ; preds = %411
  %414 = select i1 %412, float %397, float 0.000000e+00
  %415 = fsub fast float -0.000000e+00, %414
  %416 = call float @dx.op.unary.f32(i32 6, float %415)  ; FAbs(value)
  %417 = fmul fast float %414, %328
  %418 = fadd fast float %417, %341
  %419 = fmul fast float %416, %418
  %420 = fsub fast float %403, %419
  %421 = fsub fast float %397, %416
  %422 = select i1 %412, float %421, float 0.000000e+00
  %423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %424 = extractvalue %dx.types.CBufRet.f32 %423, 0
  %425 = extractvalue %dx.types.CBufRet.f32 %423, 1
  %426 = extractvalue %dx.types.CBufRet.f32 %423, 2
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 0
  %429 = extractvalue %dx.types.CBufRet.f32 %427, 1
  %430 = extractvalue %dx.types.CBufRet.f32 %427, 2
  %431 = extractvalue %dx.types.CBufRet.f32 %427, 3
  %432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %433 = extractvalue %dx.types.CBufRet.f32 %432, 3
  %434 = call float @dx.op.binary.f32(i32 36, float %420, float %433)  ; FMin(a,b)
  %435 = fmul fast float %431, %422
  %436 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  %437 = fsub fast float %428, %424
  %438 = fsub fast float %429, %425
  %439 = fsub fast float %430, %426
  %440 = fmul fast float %436, %437
  %441 = fmul fast float %436, %438
  %442 = fmul fast float %436, %439
  %443 = fadd fast float %440, %424
  %444 = fadd fast float %441, %425
  %445 = fadd fast float %442, %426
  %446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.f32 %446, 0
  %448 = extractvalue %dx.types.CBufRet.f32 %446, 1
  %449 = fadd fast float %448, %447
  %450 = call float @dx.op.unary.f32(i32 7, float %449)  ; Saturate(value)
  %451 = extractvalue %dx.types.CBufRet.f32 %446, 2
  %452 = extractvalue %dx.types.CBufRet.f32 %446, 3
  %453 = fadd fast float %452, %451
  %454 = call float @dx.op.unary.f32(i32 7, float %453)  ; Saturate(value)
  %455 = fmul fast float %450, %434
  %456 = fmul fast float %455, %454
  br label %698

; <label>:457                                     ; preds = %411
  br i1 %412, label %458, label %479, !dx.controlflow.hints !45

; <label>:458                                     ; preds = %457
  %459 = call float @dx.op.binary.f32(i32 36, float %408, float %398)  ; FMin(a,b)
  %460 = fsub fast float %408, %459
  %461 = fsub fast float %460, %397
  %462 = call float @dx.op.unary.f32(i32 6, float %461)  ; FAbs(value)
  %463 = fadd fast float %460, %397
  %464 = fmul fast float %463, %328
  %465 = fadd fast float %464, %341
  %466 = fmul fast float %465, %462
  %467 = fsub fast float %403, %466
  br label %479

; <label>:468                                     ; preds = %396
  br i1 %410, label %469, label %479, !dx.controlflow.hints !46

; <label>:469                                     ; preds = %468
  %470 = call float @dx.op.binary.f32(i32 35, float %398, float %408)  ; FMax(a,b)
  %471 = icmp eq i32 %347, 0
  %472 = select i1 %471, float %408, float 0.000000e+00
  %473 = fsub fast float -0.000000e+00, %472
  %474 = call float @dx.op.unary.f32(i32 6, float %473)  ; FAbs(value)
  %475 = fmul fast float %472, %328
  %476 = fadd fast float %475, %341
  %477 = fmul fast float %474, %476
  %478 = fsub fast float %403, %477
  br label %479

; <label>:479                                     ; preds = %469, %468, %458, %457
  %480 = phi float [ %398, %457 ], [ %398, %458 ], [ %470, %469 ], [ %398, %468 ]
  %481 = phi float [ 0.000000e+00, %457 ], [ %462, %458 ], [ %474, %469 ], [ 0.000000e+00, %468 ]
  %482 = phi float [ %403, %457 ], [ %467, %458 ], [ %478, %469 ], [ %403, %468 ]
  %483 = phi float [ %408, %457 ], [ %408, %458 ], [ %397, %469 ], [ %397, %468 ]
  %484 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 0
  store float -1.000000e+00, float* %484, align 4, !tbaa !25, !noalias !47
  %485 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 1
  store float -1.000000e+00, float* %485, align 4, !tbaa !25, !noalias !47
  %486 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 2
  store float -1.000000e+00, float* %486, align 4, !tbaa !25, !noalias !47
  %487 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 0
  store float -1.000000e+00, float* %487, align 4, !tbaa !25, !noalias !47
  %488 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 1
  store float -1.000000e+00, float* %488, align 4, !tbaa !25, !noalias !47
  %489 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 2
  store float -1.000000e+00, float* %489, align 4, !tbaa !25, !noalias !47
  %490 = icmp sgt i32 %349, 0
  br i1 %490, label %491, label %552

; <label>:491                                     ; preds = %479
  br label %492

; <label>:492                                     ; preds = %541, %491
  %493 = phi i32 [ %542, %541 ], [ 0, %491 ]
  %494 = phi i32 [ %543, %541 ], [ 0, %491 ]
  %495 = add nuw i32 %494, 171
  %496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %495)  ; CBufferLoadLegacy(handle,regIndex)
  %497 = extractvalue %dx.types.CBufRet.f32 %496, 0
  %498 = extractvalue %dx.types.CBufRet.f32 %496, 1
  %499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %500 = extractvalue %dx.types.CBufRet.f32 %499, 0
  %501 = extractvalue %dx.types.CBufRet.f32 %499, 1
  %502 = fsub fast float %497, %500
  %503 = fsub fast float %498, %501
  %504 = extractvalue %dx.types.CBufRet.f32 %496, 2
  %505 = fsub fast float -0.000000e+00, %502
  %506 = fsub fast float -0.000000e+00, %503
  %507 = call float @dx.op.dot2.f32(i32 54, float %326, float %327, float %505, float %506)  ; Dot2(ax,ay,bx,by)
  %508 = fmul fast float %507, 2.000000e+00
  %509 = call float @dx.op.dot2.f32(i32 54, float %505, float %506, float %505, float %506)  ; Dot2(ax,ay,bx,by)
  %510 = fmul fast float %504, %504
  %511 = fsub fast float %509, %510
  %512 = fmul fast float %508, %508
  %513 = fmul fast float %369, %511
  %514 = fsub fast float %512, %513
  %515 = fcmp fast ogt float %514, 0.000000e+00
  br i1 %515, label %516, label %531, !dx.controlflow.hints !39

; <label>:516                                     ; preds = %492
  %517 = fcmp fast ogt float %508, 0.000000e+00
  %518 = call float @dx.op.unary.f32(i32 24, float %514)  ; Sqrt(value)
  %519 = fsub fast float -0.000000e+00, %518
  %520 = select i1 %517, float %518, float %519
  %521 = fadd fast float %520, %508
  %522 = fmul float %521, -5.000000e-01
  %523 = fdiv fast float %522, %362
  %524 = call float @dx.op.binary.f32(i32 35, float %523, float 0.000000e+00)  ; FMax(a,b)
  %525 = call float @dx.op.binary.f32(i32 36, float %397, float %524)  ; FMin(a,b)
  %526 = fdiv fast float %511, %522
  %527 = call float @dx.op.binary.f32(i32 35, float %526, float 0.000000e+00)  ; FMax(a,b)
  %528 = call float @dx.op.binary.f32(i32 36, float %397, float %527)  ; FMin(a,b)
  %529 = call float @dx.op.binary.f32(i32 36, float %525, float %528)  ; FMin(a,b)
  %530 = call float @dx.op.binary.f32(i32 35, float %525, float %528)  ; FMax(a,b)
  br label %531

; <label>:531                                     ; preds = %516, %492
  %532 = phi float [ %530, %516 ], [ -1.000000e+00, %492 ]
  %533 = phi float [ %529, %516 ], [ -1.000000e+00, %492 ]
  %534 = phi i1 [ true, %516 ], [ false, %492 ]
  br i1 %534, label %535, label %541, !dx.controlflow.hints !53

; <label>:535                                     ; preds = %531
  %536 = call float @dx.op.binary.f32(i32 35, float %480, float %533)  ; FMax(a,b)
  %537 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 %494
  store float %536, float* %537, align 4, !tbaa !25, !noalias !47
  %538 = call float @dx.op.binary.f32(i32 35, float %480, float %532)  ; FMax(a,b)
  %539 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %494
  store float %538, float* %539, align 4, !tbaa !25, !noalias !47
  %540 = add nsw i32 %493, 1
  br label %541

; <label>:541                                     ; preds = %535, %531
  %542 = phi i32 [ %540, %535 ], [ %493, %531 ]
  %543 = add nuw nsw i32 %494, 1
  %544 = icmp eq i32 %543, %349
  br i1 %544, label %545, label %492

; <label>:545                                     ; preds = %541
  %546 = load float, float* %486, align 4, !tbaa !25, !alias.scope !54, !noalias !57
  %547 = load float, float* %485, align 4, !tbaa !25, !alias.scope !60, !noalias !61
  %548 = load float, float* %484, align 4, !tbaa !25, !alias.scope !62, !noalias !63
  %549 = load float, float* %489, align 4, !tbaa !25, !alias.scope !64, !noalias !67
  %550 = load float, float* %488, align 4, !tbaa !25, !alias.scope !70, !noalias !71
  %551 = load float, float* %487, align 4, !tbaa !25, !alias.scope !72, !noalias !73
  br label %552

; <label>:552                                     ; preds = %545, %479
  %553 = phi float [ -1.000000e+00, %479 ], [ %551, %545 ]
  %554 = phi float [ -1.000000e+00, %479 ], [ %550, %545 ]
  %555 = phi float [ -1.000000e+00, %479 ], [ %549, %545 ]
  %556 = phi float [ -1.000000e+00, %479 ], [ %548, %545 ]
  %557 = phi float [ -1.000000e+00, %479 ], [ %547, %545 ]
  %558 = phi float [ -1.000000e+00, %479 ], [ %546, %545 ]
  %559 = phi i32 [ 0, %479 ], [ %542, %545 ]
  %560 = call float @dx.op.binary.f32(i32 36, float %557, float %558)  ; FMin(a,b)
  %561 = call float @dx.op.binary.f32(i32 36, float %556, float %560)  ; FMin(a,b)
  %562 = call float @dx.op.binary.f32(i32 35, float %556, float %557)  ; FMax(a,b)
  %563 = call float @dx.op.binary.f32(i32 36, float %562, float %558)  ; FMin(a,b)
  %564 = call float @dx.op.binary.f32(i32 36, float %556, float %557)  ; FMin(a,b)
  %565 = call float @dx.op.binary.f32(i32 35, float %564, float %563)  ; FMax(a,b)
  %566 = call float @dx.op.binary.f32(i32 35, float %557, float %558)  ; FMax(a,b)
  %567 = call float @dx.op.binary.f32(i32 35, float %556, float %566)  ; FMax(a,b)
  store float %561, float* %484, align 4, !tbaa !25, !alias.scope !62, !noalias !63
  store float %565, float* %485, align 4, !tbaa !25, !alias.scope !60, !noalias !61
  store float %567, float* %486, align 4, !tbaa !25, !alias.scope !54, !noalias !57
  %568 = call float @dx.op.binary.f32(i32 36, float %554, float %555)  ; FMin(a,b)
  %569 = call float @dx.op.binary.f32(i32 36, float %553, float %568)  ; FMin(a,b)
  %570 = call float @dx.op.binary.f32(i32 35, float %553, float %554)  ; FMax(a,b)
  %571 = call float @dx.op.binary.f32(i32 36, float %570, float %555)  ; FMin(a,b)
  %572 = call float @dx.op.binary.f32(i32 36, float %553, float %554)  ; FMin(a,b)
  %573 = call float @dx.op.binary.f32(i32 35, float %572, float %571)  ; FMax(a,b)
  %574 = call float @dx.op.binary.f32(i32 35, float %554, float %555)  ; FMax(a,b)
  %575 = call float @dx.op.binary.f32(i32 35, float %553, float %574)  ; FMax(a,b)
  store float %569, float* %487, align 4, !tbaa !25, !alias.scope !72, !noalias !73
  store float %573, float* %488, align 4, !tbaa !25, !alias.scope !70, !noalias !71
  store float %575, float* %489, align 4, !tbaa !25, !alias.scope !64, !noalias !67
  %576 = sub nsw i32 3, %559
  %577 = icmp sgt i32 %576, 2
  br i1 %577, label %578, label %616, !dx.controlflow.hints !74

; <label>:578                                     ; preds = %552
  %579 = icmp eq i32 %347, 0
  %580 = fsub fast float %397, %481
  %581 = select i1 %579, float %580, float %481
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = extractvalue %dx.types.CBufRet.f32 %582, 1
  %585 = extractvalue %dx.types.CBufRet.f32 %582, 2
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 0
  %588 = extractvalue %dx.types.CBufRet.f32 %586, 1
  %589 = extractvalue %dx.types.CBufRet.f32 %586, 2
  %590 = extractvalue %dx.types.CBufRet.f32 %586, 3
  %591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %592 = extractvalue %dx.types.CBufRet.f32 %591, 3
  %593 = call float @dx.op.binary.f32(i32 36, float %482, float %592)  ; FMin(a,b)
  %594 = fmul fast float %590, %581
  %595 = call float @dx.op.unary.f32(i32 7, float %594)  ; Saturate(value)
  %596 = fsub fast float %587, %583
  %597 = fsub fast float %588, %584
  %598 = fsub fast float %589, %585
  %599 = fmul fast float %595, %596
  %600 = fmul fast float %595, %597
  %601 = fmul fast float %595, %598
  %602 = fadd fast float %599, %583
  %603 = fadd fast float %600, %584
  %604 = fadd fast float %601, %585
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 0
  %607 = extractvalue %dx.types.CBufRet.f32 %605, 1
  %608 = fadd fast float %607, %606
  %609 = call float @dx.op.unary.f32(i32 7, float %608)  ; Saturate(value)
  %610 = extractvalue %dx.types.CBufRet.f32 %605, 2
  %611 = extractvalue %dx.types.CBufRet.f32 %605, 3
  %612 = fadd fast float %611, %610
  %613 = call float @dx.op.unary.f32(i32 7, float %612)  ; Saturate(value)
  %614 = fmul fast float %609, %593
  %615 = fmul fast float %614, %613
  br label %698

; <label>:616                                     ; preds = %552
  %617 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 %576
  %618 = load float, float* %617, align 4, !tbaa !25, !noalias !47
  %619 = fcmp fast olt float %618, %483
  %620 = icmp sgt i32 %559, 0
  %621 = and i1 %620, %619
  br i1 %621, label %622, label %659

; <label>:622                                     ; preds = %616
  br label %623

; <label>:623                                     ; preds = %652, %622
  %624 = phi float [ %653, %652 ], [ %481, %622 ]
  %625 = phi float [ %654, %652 ], [ %482, %622 ]
  %626 = phi float [ %634, %652 ], [ %618, %622 ]
  %627 = phi i32 [ %631, %652 ], [ %576, %622 ]
  %628 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %627
  %629 = load float, float* %628, align 4, !tbaa !25, !noalias !47
  %630 = icmp slt i32 %627, 2
  %631 = add nsw i32 %627, 1
  %632 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 %631
  %633 = load float, float* %632, align 4, !tbaa !25, !noalias !47
  %634 = select i1 %630, float %633, float %397
  %635 = call float @dx.op.binary.f32(i32 36, float %634, float %629)  ; FMin(a,b)
  %636 = call float @dx.op.binary.f32(i32 36, float %483, float %635)  ; FMin(a,b)
  %637 = icmp eq i32 %347, 0
  %638 = fadd fast float %636, %626
  %639 = fmul fast float %638, %328
  %640 = fadd fast float %639, %341
  br i1 %637, label %646, label %641, !dx.controlflow.hints !75

; <label>:641                                     ; preds = %623
  %642 = fsub fast float %636, %626
  %643 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %642)  ; FMax(a,b)
  %644 = fmul fast float %643, %640
  %645 = fadd fast float %644, %625
  br label %652

; <label>:646                                     ; preds = %623
  %647 = fsub fast float %626, %636
  %648 = call float @dx.op.unary.f32(i32 6, float %647)  ; FAbs(value)
  %649 = fadd fast float %648, %624
  %650 = fmul fast float %648, %640
  %651 = fsub fast float %625, %650
  br label %652

; <label>:652                                     ; preds = %646, %641
  %653 = phi float [ %643, %641 ], [ %649, %646 ]
  %654 = phi float [ %645, %641 ], [ %651, %646 ]
  %655 = fcmp fast olt float %634, %483
  %656 = icmp slt i32 %631, 3
  %657 = and i1 %656, %655
  br i1 %657, label %623, label %658

; <label>:658                                     ; preds = %652
  br label %659

; <label>:659                                     ; preds = %658, %616
  %660 = phi float [ %481, %616 ], [ %653, %658 ]
  %661 = phi float [ %482, %616 ], [ %654, %658 ]
  %662 = fsub fast float %397, %660
  %663 = select i1 %399, float %660, float %662
  %664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.f32 %664, 0
  %666 = extractvalue %dx.types.CBufRet.f32 %664, 1
  %667 = extractvalue %dx.types.CBufRet.f32 %664, 2
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 0
  %670 = extractvalue %dx.types.CBufRet.f32 %668, 1
  %671 = extractvalue %dx.types.CBufRet.f32 %668, 2
  %672 = extractvalue %dx.types.CBufRet.f32 %668, 3
  %673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %674 = extractvalue %dx.types.CBufRet.f32 %673, 3
  %675 = call float @dx.op.binary.f32(i32 36, float %661, float %674)  ; FMin(a,b)
  %676 = fmul fast float %672, %663
  %677 = call float @dx.op.unary.f32(i32 7, float %676)  ; Saturate(value)
  %678 = fsub fast float %669, %665
  %679 = fsub fast float %670, %666
  %680 = fsub fast float %671, %667
  %681 = fmul fast float %677, %678
  %682 = fmul fast float %677, %679
  %683 = fmul fast float %677, %680
  %684 = fadd fast float %681, %665
  %685 = fadd fast float %682, %666
  %686 = fadd fast float %683, %667
  %687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %688 = extractvalue %dx.types.CBufRet.f32 %687, 0
  %689 = extractvalue %dx.types.CBufRet.f32 %687, 1
  %690 = fadd fast float %689, %688
  %691 = call float @dx.op.unary.f32(i32 7, float %690)  ; Saturate(value)
  %692 = extractvalue %dx.types.CBufRet.f32 %687, 2
  %693 = extractvalue %dx.types.CBufRet.f32 %687, 3
  %694 = fadd fast float %693, %692
  %695 = call float @dx.op.unary.f32(i32 7, float %694)  ; Saturate(value)
  %696 = fmul fast float %691, %675
  %697 = fmul fast float %696, %695
  br label %698

; <label>:698                                     ; preds = %659, %578, %413, %395, %393
  %699 = phi float [ %422, %413 ], [ %581, %578 ], [ %663, %659 ], [ 0.000000e+00, %393 ], [ 0.000000e+00, %395 ]
  %700 = phi float [ %456, %413 ], [ %615, %578 ], [ %697, %659 ], [ 0.000000e+00, %393 ], [ 0.000000e+00, %395 ]
  %701 = phi float [ %443, %413 ], [ %602, %578 ], [ %684, %659 ], [ 0.000000e+00, %393 ], [ 0.000000e+00, %395 ]
  %702 = phi float [ %444, %413 ], [ %603, %578 ], [ %685, %659 ], [ 0.000000e+00, %393 ], [ 0.000000e+00, %395 ]
  %703 = phi float [ %445, %413 ], [ %604, %578 ], [ %686, %659 ], [ 0.000000e+00, %393 ], [ 0.000000e+00, %395 ]
  %704 = fmul fast float %336, %700
  %705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %706 = extractvalue %dx.types.CBufRet.f32 %705, 2
  %707 = fsub fast float %343, %706
  %708 = fcmp fast olt float %704, -2.000000e+01
  %709 = call float @dx.op.unary.f32(i32 21, float %704)  ; Exp(value)
  %710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.f32 %710, 2
  %712 = extractvalue %dx.types.CBufRet.f32 %710, 3
  %713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %714 = extractvalue %dx.types.CBufRet.f32 %713, 2
  %715 = fmul fast float %712, %707
  %716 = call float @dx.op.unary.f32(i32 7, float %715)  ; Saturate(value)
  %717 = fsub fast float 1.000000e+00, %716
  %718 = fmul fast float %328, 5.000000e-01
  %719 = fadd fast float %718, 5.000000e-01
  %720 = call float @dx.op.unary.f32(i32 7, float %719)  ; Saturate(value)
  %721 = fsub fast float 1.000000e+00, %720
  %722 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %717)  ; FMax(a,b)
  %723 = fdiv fast float %721, %722
  %724 = fsub fast float %707, %153
  %725 = call float @dx.op.unary.f32(i32 6, float %724)  ; FAbs(value)
  %726 = fmul fast float %725, %711
  %727 = call float @dx.op.unary.f32(i32 7, float %723)  ; Saturate(value)
  %728 = fsub fast float 1.000000e+00, %726
  %729 = fmul fast float %728, %727
  %730 = fadd fast float %729, %726
  %731 = fmul fast float %714, %707
  %732 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  %733 = fsub fast float 1.000000e+00, %730
  %734 = fmul fast float %733, %732
  %735 = fadd fast float %734, %730
  %736 = call float @dx.op.unary.f32(i32 7, float %735)  ; Saturate(value)
  %737 = fadd fast float %709, -1.000000e+00
  %738 = select i1 %708, float -1.000000e+00, float %737
  %739 = fmul fast float %736, %738
  %740 = fadd fast float %739, 1.000000e+00
  %741 = fsub fast float -0.000000e+00, %739
  %742 = fmul fast float %701, %741
  %743 = fmul fast float %702, %741
  %744 = fmul fast float %703, %741
  br label %745

; <label>:745                                     ; preds = %698, %282
  %746 = phi float [ %699, %698 ], [ 0.000000e+00, %282 ]
  %747 = phi float [ %740, %698 ], [ 1.000000e+00, %282 ]
  %748 = phi float [ %742, %698 ], [ 0.000000e+00, %282 ]
  %749 = phi float [ %743, %698 ], [ 0.000000e+00, %282 ]
  %750 = phi float [ %744, %698 ], [ 0.000000e+00, %282 ]
  %751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.f32 %751, 1
  %753 = fsub fast float 1.000000e+00, %747
  %754 = fmul fast float %753, %329
  %755 = fmul fast float %754, %752
  %756 = fsub fast float %329, %755
  br i1 %322, label %757, label %786, !dx.controlflow.hints !76

; <label>:757                                     ; preds = %745
  %758 = fmul fast float %330, %319
  %759 = fadd fast float %758, %320
  %760 = call float @dx.op.unary.f32(i32 7, float %759)  ; Saturate(value)
  %761 = fmul fast float %301, %756
  %762 = fsub fast float -0.000000e+00, %761
  %763 = fmul fast float %302, %756
  %764 = fsub fast float -0.000000e+00, %763
  %765 = call float @dx.op.unary.f32(i32 21, float %762)  ; Exp(value)
  %766 = call float @dx.op.unary.f32(i32 21, float %764)  ; Exp(value)
  %767 = call float @dx.op.binary.f32(i32 35, float %309, float %765)  ; FMax(a,b)
  %768 = call float @dx.op.binary.f32(i32 35, float %309, float %766)  ; FMax(a,b)
  %769 = fsub fast float %768, %767
  %770 = fmul fast float %769, %760
  %771 = fadd fast float %770, %767
  %772 = call float @dx.op.unary.f32(i32 7, float %771)  ; Saturate(value)
  %773 = fsub fast float %306, %311
  %774 = fsub fast float %307, %312
  %775 = fsub fast float %308, %313
  %776 = fmul fast float %760, %773
  %777 = fmul fast float %760, %774
  %778 = fmul fast float %760, %775
  %779 = fadd fast float %776, %311
  %780 = fadd fast float %777, %312
  %781 = fadd fast float %778, %313
  %782 = fsub fast float 1.000000e+00, %772
  %783 = fmul fast float %782, %779
  %784 = fmul fast float %782, %780
  %785 = fmul fast float %782, %781
  br label %845

; <label>:786                                     ; preds = %745
  %787 = fmul fast float %756, %318
  %788 = call float @dx.op.unary.f32(i32 7, float %787)  ; Saturate(value)
  %789 = fsub fast float 2.000000e+00, %788
  %790 = fmul fast float %788, 9.921875e-01
  %791 = fmul fast float %790, %789
  %792 = fadd fast float %791, 3.906250e-03
  %793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %792, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %794 = extractvalue %dx.types.ResRet.f32 %793, 0
  %795 = fsub fast float %788, %794
  %796 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %795)  ; FMax(a,b)
  %797 = fmul fast float %304, %153
  %798 = call float @dx.op.unary.f32(i32 6, float %797)  ; FAbs(value)
  %799 = fcmp fast ogt float %798, 0x3EB0C6F7A0000000
  br i1 %799, label %800, label %806, !dx.controlflow.hints !77

; <label>:800                                     ; preds = %786
  %801 = fmul fast float %797, 0xBFF7154760000000
  %802 = call float @dx.op.unary.f32(i32 21, float %801)  ; Exp(value)
  %803 = fsub fast float 1.000000e+00, %802
  %804 = fdiv fast float %803, %797
  %805 = fmul fast float %804, %314
  br label %806

; <label>:806                                     ; preds = %800, %786
  %807 = phi float [ %805, %800 ], [ %314, %786 ]
  %808 = fadd fast float %807, %316
  %809 = fmul fast float %808, %796
  %810 = fmul fast float %301, %809
  %811 = fsub fast float -0.000000e+00, %810
  %812 = fmul fast float %302, %809
  %813 = fsub fast float -0.000000e+00, %812
  %814 = fmul fast float %303, %809
  %815 = fsub fast float -0.000000e+00, %814
  %816 = call float @dx.op.unary.f32(i32 21, float %811)  ; Exp(value)
  %817 = call float @dx.op.unary.f32(i32 21, float %813)  ; Exp(value)
  %818 = call float @dx.op.unary.f32(i32 21, float %815)  ; Exp(value)
  %819 = fmul fast float %330, %330
  %820 = fadd fast float %819, 1.000000e+00
  %821 = fmul fast float %820, 0x3FAE8EC8A0000000
  %822 = fmul fast float %821, %311
  %823 = fmul fast float %821, %312
  %824 = fmul fast float %821, %313
  %825 = fmul fast float %330, %309
  %826 = fsub fast float 1.000000e+00, %825
  %827 = fmul fast float %309, %309
  %828 = fsub fast float 1.000000e+00, %827
  %829 = fmul fast float %828, 0x3FB45F3060000000
  %830 = fmul fast float %826, %826
  %831 = fdiv fast float 1.000000e+00, %830
  %832 = fmul fast float %829, %831
  %833 = fmul fast float %832, %306
  %834 = fmul fast float %832, %307
  %835 = fmul fast float %832, %308
  %836 = fadd fast float %833, %822
  %837 = fadd fast float %834, %823
  %838 = fadd fast float %835, %824
  %839 = fsub fast float 1.000000e+00, %816
  %840 = fsub fast float 1.000000e+00, %817
  %841 = fsub fast float 1.000000e+00, %818
  %842 = fmul fast float %836, %839
  %843 = fmul fast float %837, %840
  %844 = fmul fast float %838, %841
  br label %845

; <label>:845                                     ; preds = %806, %757
  %846 = phi float [ %783, %757 ], [ %842, %806 ]
  %847 = phi float [ %784, %757 ], [ %843, %806 ]
  %848 = phi float [ %785, %757 ], [ %844, %806 ]
  %849 = phi float [ %772, %757 ], [ %816, %806 ]
  %850 = phi float [ %772, %757 ], [ %817, %806 ]
  %851 = phi float [ %772, %757 ], [ %818, %806 ]
  br i1 %338, label %852, label %1050, !dx.controlflow.hints !78

; <label>:852                                     ; preds = %845
  %853 = extractvalue %dx.types.CBufRet.f32 %751, 0
  %854 = fmul fast float %853, %753
  %855 = fsub fast float %748, %846
  %856 = fsub fast float %749, %847
  %857 = fsub fast float %750, %848
  %858 = fmul fast float %854, %855
  %859 = fmul fast float %854, %856
  %860 = fmul fast float %854, %857
  %861 = fadd fast float %858, %846
  %862 = fadd fast float %859, %847
  %863 = fadd fast float %860, %848
  %864 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %849)  ; FMax(a,b)
  %865 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %850)  ; FMax(a,b)
  %866 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %851)  ; FMax(a,b)
  %867 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %747)  ; FMax(a,b)
  %868 = call float @dx.op.binary.f32(i32 35, float %746, float %756)  ; FMax(a,b)
  %869 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %868)  ; FMax(a,b)
  %870 = fdiv fast float %746, %869
  %871 = call float @dx.op.unary.f32(i32 7, float %870)  ; Saturate(value)
  %872 = fdiv fast float %756, %869
  %873 = call float @dx.op.unary.f32(i32 7, float %872)  ; Saturate(value)
  %874 = fcmp fast une float %867, 1.000000e+00
  br i1 %874, label %875, label %888, !dx.controlflow.hints !79

; <label>:875                                     ; preds = %852
  %876 = call float @dx.op.unary.f32(i32 23, float %867)  ; Log(value)
  %877 = fmul fast float %876, 0x3FE62E4300000000
  %878 = fmul fast float %748, %877
  %879 = fsub fast float -0.000000e+00, %878
  %880 = fmul fast float %749, %877
  %881 = fsub fast float -0.000000e+00, %880
  %882 = fmul fast float %750, %877
  %883 = fsub fast float -0.000000e+00, %882
  %884 = fsub fast float 1.000000e+00, %867
  %885 = fdiv fast float %879, %884
  %886 = fdiv fast float %881, %884
  %887 = fdiv fast float %883, %884
  br label %888

; <label>:888                                     ; preds = %875, %852
  %889 = phi float [ %885, %875 ], [ %748, %852 ]
  %890 = phi float [ %886, %875 ], [ %749, %852 ]
  %891 = phi float [ %887, %875 ], [ %750, %852 ]
  %892 = phi float [ %877, %875 ], [ 0.000000e+00, %852 ]
  %893 = fcmp fast une float %864, 1.000000e+00
  br i1 %893, label %894, label %901, !dx.controlflow.hints !80

; <label>:894                                     ; preds = %888
  %895 = call float @dx.op.unary.f32(i32 23, float %864)  ; Log(value)
  %896 = fmul fast float %895, 0x3FE62E4300000000
  %897 = fmul fast float %861, %896
  %898 = fsub fast float -0.000000e+00, %897
  %899 = fsub fast float 1.000000e+00, %864
  %900 = fdiv fast float %898, %899
  br label %901

; <label>:901                                     ; preds = %894, %888
  %902 = phi float [ %900, %894 ], [ %861, %888 ]
  %903 = phi float [ %896, %894 ], [ 0.000000e+00, %888 ]
  %904 = fcmp fast une float %865, 1.000000e+00
  br i1 %904, label %905, label %912, !dx.controlflow.hints !80

; <label>:905                                     ; preds = %901
  %906 = call float @dx.op.unary.f32(i32 23, float %865)  ; Log(value)
  %907 = fmul fast float %906, 0x3FE62E4300000000
  %908 = fmul fast float %862, %907
  %909 = fsub fast float -0.000000e+00, %908
  %910 = fsub fast float 1.000000e+00, %865
  %911 = fdiv fast float %909, %910
  br label %912

; <label>:912                                     ; preds = %905, %901
  %913 = phi float [ %911, %905 ], [ %862, %901 ]
  %914 = phi float [ %907, %905 ], [ 0.000000e+00, %901 ]
  %915 = fcmp fast une float %866, 1.000000e+00
  br i1 %915, label %916, label %923, !dx.controlflow.hints !80

; <label>:916                                     ; preds = %912
  %917 = call float @dx.op.unary.f32(i32 23, float %866)  ; Log(value)
  %918 = fmul fast float %917, 0x3FE62E4300000000
  %919 = fmul fast float %863, %918
  %920 = fsub fast float -0.000000e+00, %919
  %921 = fsub fast float 1.000000e+00, %866
  %922 = fdiv fast float %920, %921
  br label %923

; <label>:923                                     ; preds = %916, %912
  %924 = phi float [ %922, %916 ], [ %863, %912 ]
  %925 = phi float [ %918, %916 ], [ 0.000000e+00, %912 ]
  %926 = fmul fast float %889, %873
  %927 = fmul fast float %890, %873
  %928 = fmul fast float %891, %873
  %929 = fmul fast float %892, %873
  %930 = fmul fast float %902, %871
  %931 = fmul fast float %913, %871
  %932 = fmul fast float %924, %871
  %933 = fmul fast float %903, %871
  %934 = fmul fast float %914, %871
  %935 = fmul fast float %925, %871
  %936 = fadd fast float %930, %926
  %937 = fadd fast float %931, %927
  %938 = fadd fast float %932, %928
  %939 = fadd fast float %933, %929
  %940 = fadd fast float %934, %929
  %941 = fadd fast float %935, %929
  %942 = fcmp fast une float %939, 0.000000e+00
  br i1 %942, label %943, label %950, !dx.controlflow.hints !81

; <label>:943                                     ; preds = %923
  %944 = fmul fast float %939, 0x3FF7154760000000
  %945 = call float @dx.op.unary.f32(i32 21, float %944)  ; Exp(value)
  %946 = fsub fast float 1.000000e+00, %945
  %947 = fmul fast float %936, %946
  %948 = fsub fast float -0.000000e+00, %947
  %949 = fdiv fast float %948, %939
  br label %950

; <label>:950                                     ; preds = %943, %923
  %951 = phi float [ %945, %943 ], [ 1.000000e+00, %923 ]
  %952 = phi float [ %949, %943 ], [ %936, %923 ]
  %953 = fcmp fast une float %940, 0.000000e+00
  br i1 %953, label %954, label %961, !dx.controlflow.hints !81

; <label>:954                                     ; preds = %950
  %955 = fmul fast float %940, 0x3FF7154760000000
  %956 = call float @dx.op.unary.f32(i32 21, float %955)  ; Exp(value)
  %957 = fsub fast float 1.000000e+00, %956
  %958 = fmul fast float %937, %957
  %959 = fsub fast float -0.000000e+00, %958
  %960 = fdiv fast float %959, %940
  br label %961

; <label>:961                                     ; preds = %954, %950
  %962 = phi float [ %956, %954 ], [ 1.000000e+00, %950 ]
  %963 = phi float [ %960, %954 ], [ %937, %950 ]
  %964 = fcmp fast une float %941, 0.000000e+00
  br i1 %964, label %965, label %972, !dx.controlflow.hints !81

; <label>:965                                     ; preds = %961
  %966 = fmul fast float %941, 0x3FF7154760000000
  %967 = call float @dx.op.unary.f32(i32 21, float %966)  ; Exp(value)
  %968 = fsub fast float 1.000000e+00, %967
  %969 = fmul fast float %938, %968
  %970 = fsub fast float -0.000000e+00, %969
  %971 = fdiv fast float %970, %941
  br label %972

; <label>:972                                     ; preds = %965, %961
  %973 = phi float [ %967, %965 ], [ 1.000000e+00, %961 ]
  %974 = phi float [ %971, %965 ], [ %938, %961 ]
  %975 = fcmp fast ogt float %871, %873
  br i1 %975, label %976, label %996, !dx.controlflow.hints !82

; <label>:976                                     ; preds = %972
  %977 = fsub fast float 1.000000e+00, %873
  %978 = fmul fast float %889, %977
  %979 = fmul fast float %890, %977
  %980 = fmul fast float %891, %977
  %981 = fmul fast float %892, %977
  %982 = fcmp fast une float %981, 0.000000e+00
  br i1 %982, label %983, label %1034, !dx.controlflow.hints !83

; <label>:983                                     ; preds = %976
  %984 = fmul fast float %981, 0x3FF7154760000000
  %985 = call float @dx.op.unary.f32(i32 21, float %984)  ; Exp(value)
  %986 = fsub fast float 1.000000e+00, %985
  %987 = fmul fast float %978, %986
  %988 = fsub fast float -0.000000e+00, %987
  %989 = fmul fast float %979, %986
  %990 = fsub fast float -0.000000e+00, %989
  %991 = fmul fast float %980, %986
  %992 = fsub fast float -0.000000e+00, %991
  %993 = fdiv fast float %988, %981
  %994 = fdiv fast float %990, %981
  %995 = fdiv fast float %992, %981
  br label %1034

; <label>:996                                     ; preds = %972
  %997 = fsub fast float 1.000000e+00, %871
  %998 = fmul fast float %902, %997
  %999 = fmul fast float %913, %997
  %1000 = fmul fast float %924, %997
  %1001 = fmul fast float %903, %997
  %1002 = fmul fast float %914, %997
  %1003 = fmul fast float %925, %997
  %1004 = fcmp fast une float %1001, 0.000000e+00
  br i1 %1004, label %1005, label %1012, !dx.controlflow.hints !81

; <label>:1005                                    ; preds = %996
  %1006 = fmul fast float %1001, 0x3FF7154760000000
  %1007 = call float @dx.op.unary.f32(i32 21, float %1006)  ; Exp(value)
  %1008 = fsub fast float 1.000000e+00, %1007
  %1009 = fmul fast float %998, %1008
  %1010 = fsub fast float -0.000000e+00, %1009
  %1011 = fdiv fast float %1010, %1001
  br label %1012

; <label>:1012                                    ; preds = %1005, %996
  %1013 = phi float [ %1011, %1005 ], [ %998, %996 ]
  %1014 = phi float [ %1007, %1005 ], [ 1.000000e+00, %996 ]
  %1015 = fcmp fast une float %1002, 0.000000e+00
  br i1 %1015, label %1016, label %1023, !dx.controlflow.hints !81

; <label>:1016                                    ; preds = %1012
  %1017 = fmul fast float %1002, 0x3FF7154760000000
  %1018 = call float @dx.op.unary.f32(i32 21, float %1017)  ; Exp(value)
  %1019 = fsub fast float 1.000000e+00, %1018
  %1020 = fmul fast float %999, %1019
  %1021 = fsub fast float -0.000000e+00, %1020
  %1022 = fdiv fast float %1021, %1002
  br label %1023

; <label>:1023                                    ; preds = %1016, %1012
  %1024 = phi float [ %1022, %1016 ], [ %999, %1012 ]
  %1025 = phi float [ %1018, %1016 ], [ 1.000000e+00, %1012 ]
  %1026 = fcmp fast une float %1003, 0.000000e+00
  br i1 %1026, label %1027, label %1034, !dx.controlflow.hints !81

; <label>:1027                                    ; preds = %1023
  %1028 = fmul fast float %1003, 0x3FF7154760000000
  %1029 = call float @dx.op.unary.f32(i32 21, float %1028)  ; Exp(value)
  %1030 = fsub fast float 1.000000e+00, %1029
  %1031 = fmul fast float %1000, %1030
  %1032 = fsub fast float -0.000000e+00, %1031
  %1033 = fdiv fast float %1032, %1003
  br label %1034

; <label>:1034                                    ; preds = %1027, %1023, %983, %976
  %1035 = phi float [ %1033, %1027 ], [ %995, %983 ], [ %980, %976 ], [ %1000, %1023 ]
  %1036 = phi float [ %1024, %1027 ], [ %994, %983 ], [ %979, %976 ], [ %1024, %1023 ]
  %1037 = phi float [ %1013, %1027 ], [ %993, %983 ], [ %978, %976 ], [ %1013, %1023 ]
  %1038 = phi float [ %1029, %1027 ], [ %985, %983 ], [ 1.000000e+00, %976 ], [ 1.000000e+00, %1023 ]
  %1039 = phi float [ %1025, %1027 ], [ %985, %983 ], [ 1.000000e+00, %976 ], [ %1025, %1023 ]
  %1040 = phi float [ %1014, %1027 ], [ %985, %983 ], [ 1.000000e+00, %976 ], [ %1014, %1023 ]
  %1041 = fmul fast float %1040, %952
  %1042 = fmul fast float %1039, %963
  %1043 = fmul fast float %1038, %974
  %1044 = fadd fast float %1041, %1037
  %1045 = fadd fast float %1042, %1036
  %1046 = fadd fast float %1043, %1035
  %1047 = fmul fast float %1040, %951
  %1048 = fmul fast float %1039, %962
  %1049 = fmul fast float %1038, %973
  br label %1050

; <label>:1050                                    ; preds = %1034, %845
  %1051 = phi float [ %1049, %1034 ], [ %851, %845 ]
  %1052 = phi float [ %1048, %1034 ], [ %850, %845 ]
  %1053 = phi float [ %1047, %1034 ], [ %849, %845 ]
  %1054 = phi float [ %1046, %1034 ], [ %848, %845 ]
  %1055 = phi float [ %1045, %1034 ], [ %847, %845 ]
  %1056 = phi float [ %1044, %1034 ], [ %846, %845 ]
  %1057 = fmul fast float %292, %1053
  %1058 = fmul fast float %293, %1052
  %1059 = fmul fast float %294, %1051
  %1060 = fmul fast float %250, 0xBFF7154760000000
  %1061 = call float @dx.op.unary.f32(i32 21, float %1060)  ; Exp(value)
  %1062 = call float @dx.op.unary.f32(i32 7, float %1061)  ; Saturate(value)
  %1063 = fsub fast float 1.000000e+00, %1062
  %1064 = fmul fast float %1063, %1056
  %1065 = fmul fast float %1063, %1055
  %1066 = fmul fast float %1063, %1054
  %1067 = fadd fast float %1064, %1057
  %1068 = fadd fast float %1065, %1058
  %1069 = fadd fast float %1066, %1059
  %1070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1071 = extractvalue %dx.types.CBufRet.f32 %1070, 0
  %1072 = fmul fast float %1071, %1067
  %1073 = fmul fast float %1068, %1071
  %1074 = fmul fast float %1069, %1071
  %1075 = fmul fast float %1073, 5.000000e-01
  %1076 = fadd fast float %1069, %1067
  %1077 = fmul fast float %1071, %1076
  %1078 = fmul fast float %1077, 2.500000e-01
  %1079 = fadd fast float %1078, %1075
  %1080 = call float @dx.op.unary.f32(i32 23, float %1079)  ; Log(value)
  %1081 = fmul fast float %1080, 0x3FE62E4300000000
  %1082 = fmul fast float %1081, %1081
  store float %160, float addrspace(3)* %161, align 4, !tbaa !25, !noalias !29
  %1083 = fmul fast float %1081, %160
  store float %1083, float addrspace(3)* %163, align 4, !tbaa !25, !noalias !29
  %1084 = fmul fast float %1082, %160
  store float %1084, float addrspace(3)* %165, align 4, !tbaa !25, !noalias !29
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1085 = load float, float addrspace(3)* %167, align 4, !tbaa !25, !noalias !29
  %1086 = fadd fast float %1085, %160
  %1087 = load float, float addrspace(3)* %170, align 4, !tbaa !25, !noalias !29
  %1088 = fadd fast float %1087, %1081
  %1089 = load float, float addrspace(3)* %173, align 4, !tbaa !25, !noalias !29
  %1090 = fadd fast float %1089, %1082
  store float %1086, float addrspace(3)* %161, align 4, !tbaa !25, !noalias !29
  store float %1088, float addrspace(3)* %163, align 4, !tbaa !25, !noalias !29
  store float %1090, float addrspace(3)* %165, align 4, !tbaa !25, !noalias !29
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1091 = load float, float addrspace(3)* %177, align 4, !tbaa !25, !noalias !29
  %1092 = fadd fast float %1091, %1086
  %1093 = load float, float addrspace(3)* %180, align 4, !tbaa !25, !noalias !29
  %1094 = fadd fast float %1093, %1088
  %1095 = load float, float addrspace(3)* %183, align 4, !tbaa !25, !noalias !29
  %1096 = fadd fast float %1095, %1090
  store float %1092, float addrspace(3)* %161, align 4, !tbaa !25, !noalias !29
  store float %1094, float addrspace(3)* %163, align 4, !tbaa !25, !noalias !29
  store float %1096, float addrspace(3)* %165, align 4, !tbaa !25, !noalias !29
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1097 = load float, float addrspace(3)* %187, align 4, !tbaa !25, !noalias !29
  %1098 = fadd fast float %1097, %1092
  %1099 = load float, float addrspace(3)* %190, align 4, !tbaa !25, !noalias !29
  %1100 = fadd fast float %1099, %1094
  %1101 = fdiv fast float %1100, %1098
  br i1 %198, label %1102, label %1110, !dx.controlflow.hints !33

; <label>:1102                                    ; preds = %1050
  %1103 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %186
  %1104 = load float, float addrspace(3)* %1103, align 4, !tbaa !25, !noalias !29
  %1105 = fadd fast float %1104, %1096
  %1106 = fdiv fast float %1105, %1098
  %1107 = lshr i32 %38, 1
  %1108 = lshr i32 %39, 1
  %1109 = lshr i32 %40, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1107, i32 %1108, i32 %1109, float %1101, float %1106, float %1101, float %1101, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1110

; <label>:1110                                    ; preds = %1102, %1050
  br i1 %49, label %1145, label %1111, !dx.controlflow.hints !34

; <label>:1111                                    ; preds = %1110
  %1112 = fadd fast float %88, 0x3FE3C6EF40000000
  %1113 = call float @dx.op.unary.f32(i32 22, float %1112)  ; Frc(value)
  %1114 = call float @dx.op.unary.f32(i32 23, float %1072)  ; Log(value)
  %1115 = fadd fast float %1114, -7.000000e+00
  %1116 = call float @dx.op.unary.f32(i32 21, float %1115)  ; Exp(value)
  %1117 = fmul fast float %1113, 2.000000e+00
  %1118 = fadd fast float %1117, -1.000000e+00
  %1119 = fmul fast float %1116, %1118
  %1120 = fcmp fast ogt float %1072, 0.000000e+00
  %1121 = select i1 %1120, float %1119, float 0.000000e+00
  %1122 = fadd fast float %1121, %1072
  %1123 = fadd fast float %88, 0x3FF3C6EF40000000
  %1124 = call float @dx.op.unary.f32(i32 22, float %1123)  ; Frc(value)
  %1125 = call float @dx.op.unary.f32(i32 23, float %1073)  ; Log(value)
  %1126 = fadd fast float %1125, -7.000000e+00
  %1127 = call float @dx.op.unary.f32(i32 21, float %1126)  ; Exp(value)
  %1128 = fmul fast float %1124, 2.000000e+00
  %1129 = fadd fast float %1128, -1.000000e+00
  %1130 = fmul fast float %1127, %1129
  %1131 = fcmp fast ogt float %1073, 0.000000e+00
  %1132 = select i1 %1131, float %1130, float 0.000000e+00
  %1133 = fadd fast float %1132, %1073
  %1134 = fadd fast float %88, 0x3FFDAA66E0000000
  %1135 = call float @dx.op.unary.f32(i32 22, float %1134)  ; Frc(value)
  %1136 = call float @dx.op.unary.f32(i32 23, float %1074)  ; Log(value)
  %1137 = fadd fast float %1136, -6.000000e+00
  %1138 = call float @dx.op.unary.f32(i32 21, float %1137)  ; Exp(value)
  %1139 = fmul fast float %1135, 2.000000e+00
  %1140 = fadd fast float %1139, -1.000000e+00
  %1141 = fmul fast float %1138, %1140
  %1142 = fcmp fast ogt float %1074, 0.000000e+00
  %1143 = select i1 %1142, float %1141, float 0.000000e+00
  %1144 = fadd fast float %1143, %1074
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %38, i32 %39, i32 %40, float %1122, float %1133, float %1144, float %1122, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1145

; <label>:1145                                    ; preds = %1111, %1110
  %1146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1147 = extractvalue %dx.types.CBufRet.f32 %1146, 0
  %1148 = fmul fast float %1147, %250
  %1149 = fmul fast float %1148, 5.000000e-01
  %1150 = fadd fast float %243, %243
  %1151 = fmul fast float %249, %1150
  %1152 = fmul fast float %1147, %1151
  %1153 = fmul fast float %1152, 2.500000e-01
  %1154 = fadd fast float %1153, %1149
  %1155 = fmul fast float %1154, %1154
  store float %160, float addrspace(3)* %161, align 4, !tbaa !25, !noalias !29
  %1156 = fmul fast float %1154, %160
  store float %1156, float addrspace(3)* %163, align 4, !tbaa !25, !noalias !29
  %1157 = fmul fast float %1155, %160
  store float %1157, float addrspace(3)* %165, align 4, !tbaa !25, !noalias !29
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1158 = load float, float addrspace(3)* %167, align 4, !tbaa !25, !noalias !29
  %1159 = fadd fast float %1158, %160
  %1160 = load float, float addrspace(3)* %170, align 4, !tbaa !25, !noalias !29
  %1161 = fadd fast float %1154, %1160
  %1162 = load float, float addrspace(3)* %173, align 4, !tbaa !25, !noalias !29
  %1163 = fadd fast float %1155, %1162
  store float %1159, float addrspace(3)* %161, align 4, !tbaa !25, !noalias !29
  store float %1161, float addrspace(3)* %163, align 4, !tbaa !25, !noalias !29
  store float %1163, float addrspace(3)* %165, align 4, !tbaa !25, !noalias !29
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1164 = load float, float addrspace(3)* %177, align 4, !tbaa !25, !noalias !29
  %1165 = fadd fast float %1164, %1159
  %1166 = load float, float addrspace(3)* %180, align 4, !tbaa !25, !noalias !29
  %1167 = fadd fast float %1166, %1161
  %1168 = load float, float addrspace(3)* %183, align 4, !tbaa !25, !noalias !29
  %1169 = fadd fast float %1168, %1163
  store float %1165, float addrspace(3)* %161, align 4, !tbaa !25, !noalias !29
  store float %1167, float addrspace(3)* %163, align 4, !tbaa !25, !noalias !29
  store float %1169, float addrspace(3)* %165, align 4, !tbaa !25, !noalias !29
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1170 = load float, float addrspace(3)* %187, align 4, !tbaa !25, !noalias !29
  %1171 = fadd fast float %1170, %1165
  %1172 = load float, float addrspace(3)* %190, align 4, !tbaa !25, !noalias !29
  %1173 = fadd fast float %1172, %1167
  %1174 = fdiv fast float %1173, %1171
  br i1 %198, label %1175, label %1183, !dx.controlflow.hints !35

; <label>:1175                                    ; preds = %1145
  %1176 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %186
  %1177 = load float, float addrspace(3)* %1176, align 4, !tbaa !25, !noalias !29
  %1178 = fadd fast float %1177, %1169
  %1179 = fdiv fast float %1178, %1171
  %1180 = lshr i32 %38, 1
  %1181 = lshr i32 %39, 1
  %1182 = lshr i32 %40, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1180, i32 %1181, i32 %1182, float %1174, float %1179, float %1174, float %1174, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1183

; <label>:1183                                    ; preds = %1175, %1145
  br i1 %49, label %1212, label %1184, !dx.controlflow.hints !36

; <label>:1184                                    ; preds = %1183
  %1185 = fadd fast float %88, 0x3FE3C6EF40000000
  %1186 = call float @dx.op.unary.f32(i32 22, float %1185)  ; Frc(value)
  %1187 = call float @dx.op.unary.f32(i32 23, float %1148)  ; Log(value)
  %1188 = fadd fast float %1187, -7.000000e+00
  %1189 = call float @dx.op.unary.f32(i32 21, float %1188)  ; Exp(value)
  %1190 = fmul fast float %1186, 2.000000e+00
  %1191 = fadd fast float %1190, -1.000000e+00
  %1192 = fmul fast float %1189, %1191
  %1193 = fcmp fast ogt float %1148, 0.000000e+00
  %1194 = select i1 %1193, float %1192, float 0.000000e+00
  %1195 = fadd fast float %1194, %1148
  %1196 = fadd fast float %88, 0x3FF3C6EF40000000
  %1197 = call float @dx.op.unary.f32(i32 22, float %1196)  ; Frc(value)
  %1198 = fmul fast float %1197, 2.000000e+00
  %1199 = fadd fast float %1198, -1.000000e+00
  %1200 = fmul fast float %1189, %1199
  %1201 = select i1 %1193, float %1200, float 0.000000e+00
  %1202 = fadd fast float %1201, %1148
  %1203 = fadd fast float %88, 0x3FFDAA66E0000000
  %1204 = call float @dx.op.unary.f32(i32 22, float %1203)  ; Frc(value)
  %1205 = fadd fast float %1187, -6.000000e+00
  %1206 = call float @dx.op.unary.f32(i32 21, float %1205)  ; Exp(value)
  %1207 = fmul fast float %1204, 2.000000e+00
  %1208 = fadd fast float %1207, -1.000000e+00
  %1209 = fmul fast float %1206, %1208
  %1210 = select i1 %1193, float %1209, float 0.000000e+00
  %1211 = fadd fast float %1210, %1148
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %38, i32 %39, i32 %40, float %1195, float %1202, float %1211, float %1195, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1212

; <label>:1212                                    ; preds = %1184, %1183
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

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i1 @dx.op.isSpecialFloat.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

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
!dx.entryPoints = !{!22}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !11, !16, !19}
!5 = !{!6, !8, !9, !10}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture1D<float>"* undef, !"", i32 0, i32 54, i32 1, i32 1, i32 0, !7}
!10 = !{i32 3, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!11 = !{!12, !13, !14, !15}
!12 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!13 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!14 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!15 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!16 = !{!17, !18}
!17 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!18 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!19 = !{!20, !21}
!20 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!21 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!22 = !{void ()* @cs_volumetric_forwardplus_scatter_global_afog, !"cs_volumetric_forwardplus_scatter_global_afog", null, !4, !23}
!23 = !{i32 0, i64 272, i32 4, !24}
!24 = !{i32 4, i32 4, i32 4}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !{!30, !32}
!30 = distinct !{!30, !31, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!31 = distinct !{!31, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!32 = distinct !{!32, !31, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = !{!48, !50, !52, !30, !32}
!48 = distinct !{!48, !49, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!49 = distinct !{!49, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!50 = distinct !{!50, !51, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!51 = distinct !{!51, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!52 = distinct !{!52, !51, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = !{!55}
!55 = distinct !{!55, !56, !"\01?sort@@YAXAIAM00@Z: %c"}
!56 = distinct !{!56, !"\01?sort@@YAXAIAM00@Z"}
!57 = !{!58, !59, !48, !50, !52, !30, !32}
!58 = distinct !{!58, !56, !"\01?sort@@YAXAIAM00@Z: %a"}
!59 = distinct !{!59, !56, !"\01?sort@@YAXAIAM00@Z: %b"}
!60 = !{!59}
!61 = !{!58, !55, !48, !50, !52, !30, !32}
!62 = !{!58}
!63 = !{!59, !55, !48, !50, !52, !30, !32}
!64 = !{!65}
!65 = distinct !{!65, !66, !"\01?sort@@YAXAIAM00@Z: %c"}
!66 = distinct !{!66, !"\01?sort@@YAXAIAM00@Z"}
!67 = !{!68, !69, !48, !50, !52, !30, !32}
!68 = distinct !{!68, !66, !"\01?sort@@YAXAIAM00@Z: %a"}
!69 = distinct !{!69, !66, !"\01?sort@@YAXAIAM00@Z: %b"}
!70 = !{!69}
!71 = !{!68, !65, !48, !50, !52, !30, !32}
!72 = !{!68}
!73 = !{!69, !65, !48, !50, !52, !30, !32}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}

