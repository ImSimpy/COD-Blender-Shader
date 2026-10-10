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
; shader hash: dbdf2c6f47cefddd57195b48ae18b0e1
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
;                                   texture     f32          2d      T2            t27     1
;                                   texture    byte         r/o      T3            t44     1
;                                   texture     f32          3d      T4             t5     1
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

define void @cs_volumetric_forwardplus_scatter_global_water() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %15 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %16 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %17 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %18 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 3
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 1
  %23 = mul i32 %22, %20
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 1
  %26 = mul i32 %23, %25
  %27 = add i32 %26, %17
  %28 = shl i32 %27, 2
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %28, i32 undef)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = shl i32 %30, 2
  %32 = and i32 %31, 1020
  %33 = lshr i32 %30, 6
  %34 = and i32 %33, 1020
  %35 = lshr i32 %30, 14
  %36 = and i32 %35, 1020
  %37 = add i32 %32, %14
  %38 = add i32 %34, %15
  %39 = add i32 %36, %16
  %40 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.i32 %40, 0
  %42 = extractvalue %dx.types.CBufRet.i32 %40, 1
  %43 = extractvalue %dx.types.CBufRet.i32 %40, 2
  %44 = icmp uge i32 %37, %41
  %45 = icmp uge i32 %38, %42
  %46 = icmp uge i32 %39, %43
  %47 = or i1 %44, %45
  %48 = or i1 %46, %47
  %49 = xor i1 %48, true
  %50 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.i32 %50, 3
  %52 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %38, i32 %51)  ; UMad(a,b,c)
  %53 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %37, i32 %52)  ; UMad(a,b,c)
  %54 = mul i32 %53, -63
  %55 = lshr i32 %54, 17
  %56 = xor i32 %55, %54
  %57 = mul i32 %56, -511
  %58 = mul i32 %56, -8176
  %59 = xor i32 %57, %58
  %60 = mul i32 %59, -7
  %61 = mul i32 %59, -7168
  %62 = xor i32 %60, %61
  %63 = lshr i32 %62, 15
  %64 = xor i32 %63, %60
  %65 = and i32 %64, 127
  %66 = mul i32 %65, 3
  %67 = add i32 0, %66
  %68 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %67
  %69 = load float, float* %68, align 4
  %70 = mul i32 %65, 3
  %71 = add i32 1, %70
  %72 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %71
  %73 = load float, float* %72, align 4
  %74 = mul i32 %65, 3
  %75 = add i32 2, %74
  %76 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %75
  %77 = load float, float* %76, align 4
  %78 = uitofp i32 %51 to float
  %79 = fmul fast float %78, 0x3FEA36A940000000
  %80 = fmul fast float %78, 0x3FE5793080000000
  %81 = fmul fast float %78, 0x3FE1972580000000
  %82 = fadd fast float %69, %79
  %83 = fadd fast float %73, %80
  %84 = fadd fast float %77, %81
  %85 = call float @dx.op.unary.f32(i32 22, float %82)  ; Frc(value)
  %86 = call float @dx.op.unary.f32(i32 22, float %83)  ; Frc(value)
  %87 = call float @dx.op.unary.f32(i32 22, float %84)  ; Frc(value)
  %88 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %37, i32 %38, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %89 = extractvalue %dx.types.ResRet.f32 %88, 0
  %90 = fcmp fast ogt float %89, -1.000000e+00
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 1
  %93 = select i1 %90, float %92, float 1.000000e+00
  %94 = fadd fast float %89, 1.000000e+00
  %95 = fmul fast float %93, %94
  %96 = uitofp i32 %37 to float
  %97 = uitofp i32 %38 to float
  %98 = uitofp i32 %39 to float
  %99 = fadd fast float %96, %85
  %100 = fadd fast float %97, %86
  %101 = fadd fast float %98, %87
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %106 = fmul fast float %103, %99
  %107 = fmul fast float %104, %100
  %108 = fmul fast float %105, %101
  %109 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.i32 %109, 0
  %111 = uitofp i32 %110 to float
  %112 = fmul fast float %111, %108
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = fmul fast float %112, %115
  %117 = call float @dx.op.unary.f32(i32 21, float %116)  ; Exp(value)
  %118 = fmul fast float %117, %114
  %119 = fsub fast float 4.000000e+00, %114
  %120 = fadd fast float %119, %118
  %121 = call float @dx.op.binary.f32(i32 36, float %120, float %95)  ; FMin(a,b)
  %122 = fmul fast float %106, 2.000000e+00
  %123 = fmul fast float %107, 2.000000e+00
  %124 = fsub fast float 1.000000e+00, %122
  %125 = fsub fast float 1.000000e+00, %123
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = fmul fast float %127, %124
  %131 = fmul fast float %128, %124
  %132 = fmul fast float %129, %124
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = fmul fast float %134, %125
  %138 = fmul fast float %135, %125
  %139 = fmul fast float %136, %125
  %140 = fadd fast float %137, %130
  %141 = fadd fast float %138, %131
  %142 = fadd fast float %139, %132
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %147 = fadd fast float %140, %144
  %148 = fadd fast float %141, %145
  %149 = fadd fast float %142, %146
  %150 = fmul fast float %147, %121
  %151 = fmul fast float %148, %121
  %152 = fmul fast float %149, %121
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = fadd fast float %152, %156
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = fcmp fast ogt float %159, 0.000000e+00
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = fadd fast float %150, %154
  %166 = fsub fast float %165, %162
  %167 = fadd fast float %166, %164
  %168 = fadd fast float %151, %155
  %169 = fsub fast float %168, %163
  %170 = fadd fast float %169, %164
  %171 = extractvalue %dx.types.CBufRet.f32 %161, 3
  %172 = fmul fast float %167, %171
  %173 = fmul fast float %170, %171
  %174 = call float @dx.op.unary.f32(i32 7, float %172)  ; Saturate(value)
  %175 = call float @dx.op.unary.f32(i32 7, float %173)  ; Saturate(value)
  %176 = fsub fast float 1.000000e+00, %174
  %177 = fsub fast float 1.000000e+00, %175
  %178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %11, float %176, float %177, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %179 = extractvalue %dx.types.ResRet.f32 %178, 0
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %182 = fmul fast float %181, %179
  %183 = extractvalue %dx.types.CBufRet.f32 %180, 3
  %184 = fadd fast float %183, %182
  %185 = fcmp fast ogt float %179, 0.000000e+00
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = and i32 %187, 32768
  %189 = icmp ne i32 %188, 0
  %190 = and i1 %185, %189
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 3
  %193 = fadd fast float %184, %192
  %194 = fcmp fast ole float %157, %193
  %195 = and i1 %190, %194
  %196 = select i1 %160, i32 %110, i32 0
  %197 = add i32 %196, %39
  %198 = xor i1 %160, %195
  %199 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %200 = fmul fast float %199, 0x3FE62E4300000000
  %201 = fmul fast float %200, %200
  %202 = select i1 %48, float 0.000000e+00, float 1.000000e+00
  %203 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %18
  store float %202, float addrspace(3)* %203, align 4, !tbaa !26, !noalias !30
  %204 = fmul fast float %200, %202
  %205 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %18
  store float %204, float addrspace(3)* %205, align 4, !tbaa !26, !noalias !30
  %206 = fmul fast float %201, %202
  %207 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %18
  store float %206, float addrspace(3)* %207, align 4, !tbaa !26, !noalias !30
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %208 = xor i32 %18, 4
  %209 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %208
  %210 = load float, float addrspace(3)* %209, align 4, !tbaa !26, !noalias !30
  %211 = fadd fast float %210, %202
  %212 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %208
  %213 = load float, float addrspace(3)* %212, align 4, !tbaa !26, !noalias !30
  %214 = fadd fast float %213, %200
  %215 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %208
  %216 = load float, float addrspace(3)* %215, align 4, !tbaa !26, !noalias !30
  %217 = fadd fast float %216, %201
  store float %211, float addrspace(3)* %203, align 4, !tbaa !26, !noalias !30
  store float %214, float addrspace(3)* %205, align 4, !tbaa !26, !noalias !30
  store float %217, float addrspace(3)* %207, align 4, !tbaa !26, !noalias !30
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %218 = xor i32 %18, 16
  %219 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %218
  %220 = load float, float addrspace(3)* %219, align 4, !tbaa !26, !noalias !30
  %221 = fadd fast float %220, %211
  %222 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %218
  %223 = load float, float addrspace(3)* %222, align 4, !tbaa !26, !noalias !30
  %224 = fadd fast float %223, %214
  %225 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %218
  %226 = load float, float addrspace(3)* %225, align 4, !tbaa !26, !noalias !30
  %227 = fadd fast float %226, %217
  store float %221, float addrspace(3)* %203, align 4, !tbaa !26, !noalias !30
  store float %224, float addrspace(3)* %205, align 4, !tbaa !26, !noalias !30
  store float %227, float addrspace(3)* %207, align 4, !tbaa !26, !noalias !30
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %228 = xor i32 %18, 1
  %229 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %228
  %230 = load float, float addrspace(3)* %229, align 4, !tbaa !26, !noalias !30
  %231 = fadd fast float %230, %221
  %232 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %228
  %233 = load float, float addrspace(3)* %232, align 4, !tbaa !26, !noalias !30
  %234 = fadd fast float %233, %224
  %235 = fdiv fast float %234, %231
  %236 = and i32 %38, 1
  %237 = and i32 %236, %37
  %238 = and i32 %237, %197
  %239 = icmp ne i32 %238, 0
  %240 = and i1 %239, %49
  br i1 %240, label %241, label %249, !dx.controlflow.hints !34

; <label>:241                                     ; preds = %0
  %242 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %228
  %243 = load float, float addrspace(3)* %242, align 4, !tbaa !26, !noalias !30
  %244 = fadd fast float %243, %227
  %245 = fdiv fast float %244, %231
  %246 = lshr i32 %37, 1
  %247 = lshr i32 %38, 1
  %248 = lshr i32 %197, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %246, i32 %247, i32 %248, float %235, float %245, float %235, float %235, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %249

; <label>:249                                     ; preds = %241, %0
  br i1 %48, label %251, label %250, !dx.controlflow.hints !35

; <label>:250                                     ; preds = %249
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %37, i32 %38, i32 %197, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %251

; <label>:251                                     ; preds = %250, %249
  store float %202, float addrspace(3)* %203, align 4, !tbaa !26, !noalias !30
  store float 0.000000e+00, float addrspace(3)* %205, align 4, !tbaa !26, !noalias !30
  store float 0.000000e+00, float addrspace(3)* %207, align 4, !tbaa !26, !noalias !30
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %252 = load float, float addrspace(3)* %209, align 4, !tbaa !26, !noalias !30
  %253 = fadd fast float %252, %202
  %254 = load float, float addrspace(3)* %212, align 4, !tbaa !26, !noalias !30
  %255 = load float, float addrspace(3)* %215, align 4, !tbaa !26, !noalias !30
  store float %253, float addrspace(3)* %203, align 4, !tbaa !26, !noalias !30
  store float %254, float addrspace(3)* %205, align 4, !tbaa !26, !noalias !30
  store float %255, float addrspace(3)* %207, align 4, !tbaa !26, !noalias !30
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %256 = load float, float addrspace(3)* %219, align 4, !tbaa !26, !noalias !30
  %257 = fadd fast float %256, %253
  %258 = load float, float addrspace(3)* %222, align 4, !tbaa !26, !noalias !30
  %259 = fadd fast float %258, %254
  %260 = load float, float addrspace(3)* %225, align 4, !tbaa !26, !noalias !30
  %261 = fadd fast float %260, %255
  store float %257, float addrspace(3)* %203, align 4, !tbaa !26, !noalias !30
  store float %259, float addrspace(3)* %205, align 4, !tbaa !26, !noalias !30
  store float %261, float addrspace(3)* %207, align 4, !tbaa !26, !noalias !30
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %262 = load float, float addrspace(3)* %229, align 4, !tbaa !26, !noalias !30
  %263 = fadd fast float %262, %257
  %264 = load float, float addrspace(3)* %232, align 4, !tbaa !26, !noalias !30
  %265 = fadd fast float %264, %259
  %266 = fdiv fast float %265, %263
  br i1 %240, label %267, label %275, !dx.controlflow.hints !36

; <label>:267                                     ; preds = %251
  %268 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %228
  %269 = load float, float addrspace(3)* %268, align 4, !tbaa !26, !noalias !30
  %270 = fadd fast float %269, %261
  %271 = fdiv fast float %270, %263
  %272 = lshr i32 %37, 1
  %273 = lshr i32 %38, 1
  %274 = lshr i32 %197, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %272, i32 %273, i32 %274, float %266, float %271, float %266, float %266, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %275

; <label>:275                                     ; preds = %267, %251
  br i1 %48, label %277, label %276, !dx.controlflow.hints !37

; <label>:276                                     ; preds = %275
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %37, i32 %38, i32 %197, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %277

; <label>:277                                     ; preds = %276, %275
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 0
  %280 = extractvalue %dx.types.CBufRet.f32 %278, 1
  %281 = fsub fast float %157, %279
  %282 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %281)  ; FMax(a,b)
  %283 = fmul fast float %282, 0x3FF7154760000000
  %284 = fmul fast float %283, %280
  %285 = call float @dx.op.unary.f32(i32 21, float %284)  ; Exp(value)
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 0
  %288 = extractvalue %dx.types.CBufRet.f32 %286, 1
  %289 = extractvalue %dx.types.CBufRet.f32 %286, 2
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 1
  %292 = fmul fast float %291, %285
  %293 = fmul fast float %292, %287
  %294 = fmul fast float %292, %288
  %295 = fmul fast float %292, %289
  %296 = select i1 %195, float 0.000000e+00, float %292
  %297 = fcmp fast ogt float %296, 0.000000e+00
  br i1 %297, label %298, label %325, !dx.controlflow.hints !38

; <label>:298                                     ; preds = %277
  %299 = fdiv fast float 1.000000e+00, %296
  %300 = fmul fast float %299, %293
  %301 = fmul fast float %299, %294
  %302 = fmul fast float %299, %295
  %303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %10, float %106, float %107, float %108, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 0
  %305 = extractvalue %dx.types.ResRet.f32 %303, 1
  %306 = extractvalue %dx.types.ResRet.f32 %303, 2
  %307 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %304)  ; IsNaN(value)
  %308 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %305)  ; IsNaN(value)
  %309 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %306)  ; IsNaN(value)
  %310 = or i1 %307, %308
  %311 = or i1 %310, %309
  %312 = select i1 %311, float 0.000000e+00, float %304
  %313 = select i1 %311, float 0.000000e+00, float %305
  %314 = select i1 %311, float 0.000000e+00, float %306
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 1
  %317 = fmul fast float %312, %316
  %318 = fmul fast float %313, %316
  %319 = fmul fast float %314, %316
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 3
  %322 = fmul fast float %317, %321
  %323 = fmul fast float %318, %321
  %324 = fmul fast float %319, %321
  br label %325

; <label>:325                                     ; preds = %298, %277
  %326 = phi float [ %300, %298 ], [ %293, %277 ]
  %327 = phi float [ %301, %298 ], [ %294, %277 ]
  %328 = phi float [ %302, %298 ], [ %295, %277 ]
  %329 = phi float [ %322, %298 ], [ 0.000000e+00, %277 ]
  %330 = phi float [ %323, %298 ], [ 0.000000e+00, %277 ]
  %331 = phi float [ %324, %298 ], [ 0.000000e+00, %277 ]
  %332 = fmul fast float %326, %296
  %333 = fmul fast float %327, %296
  %334 = fmul fast float %328, %296
  %335 = fmul fast float %332, %329
  %336 = fmul fast float %333, %330
  %337 = fmul fast float %334, %331
  %338 = xor i1 %198, true
  %339 = and i1 %49, %338
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 0
  %344 = select i1 %160, float %341, float %343
  %345 = fmul fast float %335, %344
  %346 = fmul fast float %336, %344
  %347 = fmul fast float %337, %344
  %348 = fmul fast float %346, 5.000000e-01
  %349 = fadd fast float %337, %335
  %350 = fmul fast float %344, %349
  %351 = fmul fast float %350, 2.500000e-01
  %352 = fadd fast float %351, %348
  %353 = call float @dx.op.unary.f32(i32 23, float %352)  ; Log(value)
  %354 = fmul fast float %353, 0x3FE62E4300000000
  %355 = fmul fast float %354, %354
  %356 = select i1 %339, float 1.000000e+00, float 0.000000e+00
  store float %356, float addrspace(3)* %203, align 4, !tbaa !26, !noalias !30
  %357 = fmul fast float %354, %356
  store float %357, float addrspace(3)* %205, align 4, !tbaa !26, !noalias !30
  %358 = fmul fast float %355, %356
  store float %358, float addrspace(3)* %207, align 4, !tbaa !26, !noalias !30
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %359 = load float, float addrspace(3)* %209, align 4, !tbaa !26, !noalias !30
  %360 = fadd fast float %359, %356
  %361 = load float, float addrspace(3)* %212, align 4, !tbaa !26, !noalias !30
  %362 = fadd fast float %361, %354
  %363 = load float, float addrspace(3)* %215, align 4, !tbaa !26, !noalias !30
  %364 = fadd fast float %363, %355
  store float %360, float addrspace(3)* %203, align 4, !tbaa !26, !noalias !30
  store float %362, float addrspace(3)* %205, align 4, !tbaa !26, !noalias !30
  store float %364, float addrspace(3)* %207, align 4, !tbaa !26, !noalias !30
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %365 = load float, float addrspace(3)* %219, align 4, !tbaa !26, !noalias !30
  %366 = fadd fast float %365, %360
  %367 = load float, float addrspace(3)* %222, align 4, !tbaa !26, !noalias !30
  %368 = fadd fast float %367, %362
  %369 = load float, float addrspace(3)* %225, align 4, !tbaa !26, !noalias !30
  %370 = fadd fast float %369, %364
  store float %366, float addrspace(3)* %203, align 4, !tbaa !26, !noalias !30
  store float %368, float addrspace(3)* %205, align 4, !tbaa !26, !noalias !30
  store float %370, float addrspace(3)* %207, align 4, !tbaa !26, !noalias !30
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %371 = load float, float addrspace(3)* %229, align 4, !tbaa !26, !noalias !30
  %372 = fadd fast float %371, %366
  %373 = load float, float addrspace(3)* %232, align 4, !tbaa !26, !noalias !30
  %374 = fadd fast float %373, %368
  %375 = fdiv fast float %374, %372
  %376 = and i1 %339, %239
  br i1 %376, label %377, label %385, !dx.controlflow.hints !34

; <label>:377                                     ; preds = %325
  %378 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %228
  %379 = load float, float addrspace(3)* %378, align 4, !tbaa !26, !noalias !30
  %380 = fadd fast float %379, %370
  %381 = fdiv fast float %380, %372
  %382 = lshr i32 %37, 1
  %383 = lshr i32 %38, 1
  %384 = lshr i32 %197, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %382, i32 %383, i32 %384, float %375, float %381, float %375, float %375, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %385

; <label>:385                                     ; preds = %377, %325
  br i1 %339, label %386, label %420, !dx.controlflow.hints !35

; <label>:386                                     ; preds = %385
  %387 = fadd fast float %87, 0x3FE3C6EF40000000
  %388 = call float @dx.op.unary.f32(i32 22, float %387)  ; Frc(value)
  %389 = call float @dx.op.unary.f32(i32 23, float %345)  ; Log(value)
  %390 = fadd fast float %389, -7.000000e+00
  %391 = call float @dx.op.unary.f32(i32 21, float %390)  ; Exp(value)
  %392 = fmul fast float %388, 2.000000e+00
  %393 = fadd fast float %392, -1.000000e+00
  %394 = fmul fast float %391, %393
  %395 = fcmp fast ogt float %345, 0.000000e+00
  %396 = select i1 %395, float %394, float 0.000000e+00
  %397 = fadd fast float %396, %345
  %398 = fadd fast float %87, 0x3FF3C6EF40000000
  %399 = call float @dx.op.unary.f32(i32 22, float %398)  ; Frc(value)
  %400 = call float @dx.op.unary.f32(i32 23, float %346)  ; Log(value)
  %401 = fadd fast float %400, -7.000000e+00
  %402 = call float @dx.op.unary.f32(i32 21, float %401)  ; Exp(value)
  %403 = fmul fast float %399, 2.000000e+00
  %404 = fadd fast float %403, -1.000000e+00
  %405 = fmul fast float %402, %404
  %406 = fcmp fast ogt float %346, 0.000000e+00
  %407 = select i1 %406, float %405, float 0.000000e+00
  %408 = fadd fast float %407, %346
  %409 = fadd fast float %87, 0x3FFDAA66E0000000
  %410 = call float @dx.op.unary.f32(i32 22, float %409)  ; Frc(value)
  %411 = call float @dx.op.unary.f32(i32 23, float %347)  ; Log(value)
  %412 = fadd fast float %411, -6.000000e+00
  %413 = call float @dx.op.unary.f32(i32 21, float %412)  ; Exp(value)
  %414 = fmul fast float %410, 2.000000e+00
  %415 = fadd fast float %414, -1.000000e+00
  %416 = fmul fast float %413, %415
  %417 = fcmp fast ogt float %347, 0.000000e+00
  %418 = select i1 %417, float %416, float 0.000000e+00
  %419 = fadd fast float %418, %347
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %37, i32 %38, i32 %197, float %397, float %408, float %419, float %397, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %420

; <label>:420                                     ; preds = %386, %385
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 0
  %423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %424 = extractvalue %dx.types.CBufRet.f32 %423, 0
  %425 = select i1 %160, float %422, float %424
  %426 = fmul fast float %425, %296
  %427 = fmul fast float %426, 5.000000e-01
  %428 = fadd fast float %296, %296
  %429 = fmul fast float %425, %428
  %430 = fmul fast float %429, 2.500000e-01
  %431 = fadd fast float %430, %427
  %432 = fmul fast float %431, %431
  store float %356, float addrspace(3)* %203, align 4, !tbaa !26, !noalias !30
  %433 = fmul fast float %431, %356
  store float %433, float addrspace(3)* %205, align 4, !tbaa !26, !noalias !30
  %434 = fmul fast float %432, %356
  store float %434, float addrspace(3)* %207, align 4, !tbaa !26, !noalias !30
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %435 = load float, float addrspace(3)* %209, align 4, !tbaa !26, !noalias !30
  %436 = fadd fast float %435, %356
  %437 = load float, float addrspace(3)* %212, align 4, !tbaa !26, !noalias !30
  %438 = fadd fast float %431, %437
  %439 = load float, float addrspace(3)* %215, align 4, !tbaa !26, !noalias !30
  %440 = fadd fast float %432, %439
  store float %436, float addrspace(3)* %203, align 4, !tbaa !26, !noalias !30
  store float %438, float addrspace(3)* %205, align 4, !tbaa !26, !noalias !30
  store float %440, float addrspace(3)* %207, align 4, !tbaa !26, !noalias !30
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %441 = load float, float addrspace(3)* %219, align 4, !tbaa !26, !noalias !30
  %442 = fadd fast float %441, %436
  %443 = load float, float addrspace(3)* %222, align 4, !tbaa !26, !noalias !30
  %444 = fadd fast float %438, %443
  %445 = load float, float addrspace(3)* %225, align 4, !tbaa !26, !noalias !30
  %446 = fadd fast float %440, %445
  store float %442, float addrspace(3)* %203, align 4, !tbaa !26, !noalias !30
  store float %444, float addrspace(3)* %205, align 4, !tbaa !26, !noalias !30
  store float %446, float addrspace(3)* %207, align 4, !tbaa !26, !noalias !30
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %447 = load float, float addrspace(3)* %229, align 4, !tbaa !26, !noalias !30
  %448 = fadd fast float %447, %442
  %449 = load float, float addrspace(3)* %232, align 4, !tbaa !26, !noalias !30
  %450 = fadd fast float %449, %444
  %451 = fdiv fast float %450, %448
  br i1 %376, label %452, label %460, !dx.controlflow.hints !36

; <label>:452                                     ; preds = %420
  %453 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %228
  %454 = load float, float addrspace(3)* %453, align 4, !tbaa !26, !noalias !30
  %455 = fadd fast float %454, %446
  %456 = fdiv fast float %455, %448
  %457 = lshr i32 %37, 1
  %458 = lshr i32 %38, 1
  %459 = lshr i32 %197, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %457, i32 %458, i32 %459, float %451, float %456, float %451, float %451, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %460

; <label>:460                                     ; preds = %452, %420
  br i1 %339, label %461, label %489, !dx.controlflow.hints !37

; <label>:461                                     ; preds = %460
  %462 = fadd fast float %87, 0x3FE3C6EF40000000
  %463 = call float @dx.op.unary.f32(i32 22, float %462)  ; Frc(value)
  %464 = call float @dx.op.unary.f32(i32 23, float %426)  ; Log(value)
  %465 = fadd fast float %464, -7.000000e+00
  %466 = call float @dx.op.unary.f32(i32 21, float %465)  ; Exp(value)
  %467 = fmul fast float %463, 2.000000e+00
  %468 = fadd fast float %467, -1.000000e+00
  %469 = fmul fast float %466, %468
  %470 = fcmp fast ogt float %426, 0.000000e+00
  %471 = select i1 %470, float %469, float 0.000000e+00
  %472 = fadd fast float %471, %426
  %473 = fadd fast float %87, 0x3FF3C6EF40000000
  %474 = call float @dx.op.unary.f32(i32 22, float %473)  ; Frc(value)
  %475 = fmul fast float %474, 2.000000e+00
  %476 = fadd fast float %475, -1.000000e+00
  %477 = fmul fast float %466, %476
  %478 = select i1 %470, float %477, float 0.000000e+00
  %479 = fadd fast float %478, %426
  %480 = fadd fast float %87, 0x3FFDAA66E0000000
  %481 = call float @dx.op.unary.f32(i32 22, float %480)  ; Frc(value)
  %482 = fadd fast float %464, -6.000000e+00
  %483 = call float @dx.op.unary.f32(i32 21, float %482)  ; Exp(value)
  %484 = fmul fast float %481, 2.000000e+00
  %485 = fadd fast float %484, -1.000000e+00
  %486 = fmul fast float %483, %485
  %487 = select i1 %470, float %486, float 0.000000e+00
  %488 = fadd fast float %487, %426
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %37, i32 %38, i32 %197, float %472, float %479, float %488, float %472, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %489

; <label>:489                                     ; preds = %461, %460
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
!dx.entryPoints = !{!23}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !12, !17, !20}
!5 = !{!6, !8, !9, !10, !11}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 44, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!12 = !{!13, !14, !15, !16}
!13 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!14 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!15 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!16 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!17 = !{!18, !19}
!18 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!19 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!20 = !{!21, !22}
!21 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!22 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!23 = !{void ()* @cs_volumetric_forwardplus_scatter_global_water, !"cs_volumetric_forwardplus_scatter_global_water", null, !4, !24}
!24 = !{i32 0, i64 272, i32 4, !25}
!25 = !{i32 4, i32 4, i32 4}
!26 = !{!27, !27, i64 0}
!27 = !{!"float", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !{!31, !33}
!31 = distinct !{!31, !32, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!32 = distinct !{!32, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!33 = distinct !{!33, !32, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}

