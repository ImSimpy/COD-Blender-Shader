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
; shader hash: 6fc07cce3428a9f215d9bd751fde036d
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
;                                   texture     f32          1d      T4            t54     1
;                                   texture     f32          3d      T5             t5     1
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

define void @cs_volumetric_forwardplus_scatter_global_water_afog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 54, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %16 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %17 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %18 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %19 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 3
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 1
  %26 = mul i32 %25, %23
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 1
  %29 = mul i32 %26, %28
  %30 = add i32 %29, %18
  %31 = shl i32 %30, 2
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %31, i32 undef)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = shl i32 %33, 2
  %35 = and i32 %34, 1020
  %36 = lshr i32 %33, 6
  %37 = and i32 %36, 1020
  %38 = lshr i32 %33, 14
  %39 = and i32 %38, 1020
  %40 = add i32 %35, %15
  %41 = add i32 %37, %16
  %42 = add i32 %39, %17
  %43 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.i32 %43, 0
  %45 = extractvalue %dx.types.CBufRet.i32 %43, 1
  %46 = extractvalue %dx.types.CBufRet.i32 %43, 2
  %47 = icmp uge i32 %40, %44
  %48 = icmp uge i32 %41, %45
  %49 = icmp uge i32 %42, %46
  %50 = or i1 %47, %48
  %51 = or i1 %49, %50
  %52 = xor i1 %51, true
  %53 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.i32 %53, 3
  %55 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %41, i32 %54)  ; UMad(a,b,c)
  %56 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %40, i32 %55)  ; UMad(a,b,c)
  %57 = mul i32 %56, -63
  %58 = lshr i32 %57, 17
  %59 = xor i32 %58, %57
  %60 = mul i32 %59, -511
  %61 = mul i32 %59, -8176
  %62 = xor i32 %60, %61
  %63 = mul i32 %62, -7
  %64 = mul i32 %62, -7168
  %65 = xor i32 %63, %64
  %66 = lshr i32 %65, 15
  %67 = xor i32 %66, %63
  %68 = and i32 %67, 127
  %69 = mul i32 %68, 3
  %70 = add i32 0, %69
  %71 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %70
  %72 = load float, float* %71, align 4
  %73 = mul i32 %68, 3
  %74 = add i32 1, %73
  %75 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %74
  %76 = load float, float* %75, align 4
  %77 = mul i32 %68, 3
  %78 = add i32 2, %77
  %79 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %78
  %80 = load float, float* %79, align 4
  %81 = uitofp i32 %54 to float
  %82 = fmul fast float %81, 0x3FEA36A940000000
  %83 = fmul fast float %81, 0x3FE5793080000000
  %84 = fmul fast float %81, 0x3FE1972580000000
  %85 = fadd fast float %72, %82
  %86 = fadd fast float %76, %83
  %87 = fadd fast float %80, %84
  %88 = call float @dx.op.unary.f32(i32 22, float %85)  ; Frc(value)
  %89 = call float @dx.op.unary.f32(i32 22, float %86)  ; Frc(value)
  %90 = call float @dx.op.unary.f32(i32 22, float %87)  ; Frc(value)
  %91 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %40, i32 %41, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %92 = extractvalue %dx.types.ResRet.f32 %91, 0
  %93 = fcmp fast ogt float %92, -1.000000e+00
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %96 = select i1 %93, float %95, float 1.000000e+00
  %97 = fadd fast float %92, 1.000000e+00
  %98 = fmul fast float %96, %97
  %99 = uitofp i32 %40 to float
  %100 = uitofp i32 %41 to float
  %101 = uitofp i32 %42 to float
  %102 = fadd fast float %99, %88
  %103 = fadd fast float %100, %89
  %104 = fadd fast float %101, %90
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %109 = fmul fast float %106, %102
  %110 = fmul fast float %107, %103
  %111 = fmul fast float %108, %104
  %112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.i32 %112, 0
  %114 = uitofp i32 %113 to float
  %115 = fmul fast float %114, %111
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = fmul fast float %115, %118
  %120 = call float @dx.op.unary.f32(i32 21, float %119)  ; Exp(value)
  %121 = fmul fast float %120, %117
  %122 = fsub fast float 4.000000e+00, %117
  %123 = fadd fast float %122, %121
  %124 = call float @dx.op.binary.f32(i32 36, float %123, float %98)  ; FMin(a,b)
  %125 = fmul fast float %109, 2.000000e+00
  %126 = fmul fast float %110, 2.000000e+00
  %127 = fsub fast float 1.000000e+00, %125
  %128 = fsub fast float 1.000000e+00, %126
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %132 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %133 = fmul fast float %130, %127
  %134 = fmul fast float %131, %127
  %135 = fmul fast float %132, %127
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = fmul fast float %137, %128
  %141 = fmul fast float %138, %128
  %142 = fmul fast float %139, %128
  %143 = fadd fast float %140, %133
  %144 = fadd fast float %141, %134
  %145 = fadd fast float %142, %135
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = fadd fast float %143, %147
  %151 = fadd fast float %144, %148
  %152 = fadd fast float %145, %149
  %153 = fmul fast float %150, %124
  %154 = fmul fast float %151, %124
  %155 = fmul fast float %152, %124
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %160 = fadd fast float %155, %159
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = fcmp fast ogt float %162, 0.000000e+00
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = fadd fast float %153, %157
  %169 = fsub fast float %168, %165
  %170 = fadd fast float %169, %167
  %171 = fadd fast float %154, %158
  %172 = fsub fast float %171, %166
  %173 = fadd fast float %172, %167
  %174 = extractvalue %dx.types.CBufRet.f32 %164, 3
  %175 = fmul fast float %170, %174
  %176 = fmul fast float %173, %174
  %177 = call float @dx.op.unary.f32(i32 7, float %175)  ; Saturate(value)
  %178 = call float @dx.op.unary.f32(i32 7, float %176)  ; Saturate(value)
  %179 = fsub fast float 1.000000e+00, %177
  %180 = fsub fast float 1.000000e+00, %178
  %181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %12, float %179, float %180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %182 = extractvalue %dx.types.ResRet.f32 %181, 0
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %185 = fmul fast float %184, %182
  %186 = extractvalue %dx.types.CBufRet.f32 %183, 3
  %187 = fadd fast float %186, %185
  %188 = fcmp fast ogt float %182, 0.000000e+00
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = and i32 %190, 32768
  %192 = icmp ne i32 %191, 0
  %193 = and i1 %188, %192
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 3
  %196 = fadd fast float %187, %195
  %197 = fcmp fast ole float %160, %196
  %198 = and i1 %193, %197
  %199 = select i1 %163, i32 %113, i32 0
  %200 = add i32 %199, %42
  %201 = xor i1 %163, %198
  %202 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %203 = fmul fast float %202, 0x3FE62E4300000000
  %204 = fmul fast float %203, %203
  %205 = select i1 %51, float 0.000000e+00, float 1.000000e+00
  %206 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %19
  store float %205, float addrspace(3)* %206, align 4, !tbaa !27, !noalias !31
  %207 = fmul fast float %203, %205
  %208 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %19
  store float %207, float addrspace(3)* %208, align 4, !tbaa !27, !noalias !31
  %209 = fmul fast float %204, %205
  %210 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %19
  store float %209, float addrspace(3)* %210, align 4, !tbaa !27, !noalias !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %211 = xor i32 %19, 4
  %212 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %211
  %213 = load float, float addrspace(3)* %212, align 4, !tbaa !27, !noalias !31
  %214 = fadd fast float %213, %205
  %215 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %211
  %216 = load float, float addrspace(3)* %215, align 4, !tbaa !27, !noalias !31
  %217 = fadd fast float %216, %203
  %218 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %211
  %219 = load float, float addrspace(3)* %218, align 4, !tbaa !27, !noalias !31
  %220 = fadd fast float %219, %204
  store float %214, float addrspace(3)* %206, align 4, !tbaa !27, !noalias !31
  store float %217, float addrspace(3)* %208, align 4, !tbaa !27, !noalias !31
  store float %220, float addrspace(3)* %210, align 4, !tbaa !27, !noalias !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %221 = xor i32 %19, 16
  %222 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %221
  %223 = load float, float addrspace(3)* %222, align 4, !tbaa !27, !noalias !31
  %224 = fadd fast float %223, %214
  %225 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %221
  %226 = load float, float addrspace(3)* %225, align 4, !tbaa !27, !noalias !31
  %227 = fadd fast float %226, %217
  %228 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %221
  %229 = load float, float addrspace(3)* %228, align 4, !tbaa !27, !noalias !31
  %230 = fadd fast float %229, %220
  store float %224, float addrspace(3)* %206, align 4, !tbaa !27, !noalias !31
  store float %227, float addrspace(3)* %208, align 4, !tbaa !27, !noalias !31
  store float %230, float addrspace(3)* %210, align 4, !tbaa !27, !noalias !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %231 = xor i32 %19, 1
  %232 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %231
  %233 = load float, float addrspace(3)* %232, align 4, !tbaa !27, !noalias !31
  %234 = fadd fast float %233, %224
  %235 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %231
  %236 = load float, float addrspace(3)* %235, align 4, !tbaa !27, !noalias !31
  %237 = fadd fast float %236, %227
  %238 = fdiv fast float %237, %234
  %239 = and i32 %41, 1
  %240 = and i32 %239, %40
  %241 = and i32 %240, %200
  %242 = icmp ne i32 %241, 0
  %243 = and i1 %242, %52
  br i1 %243, label %244, label %252, !dx.controlflow.hints !35

; <label>:244                                     ; preds = %0
  %245 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %231
  %246 = load float, float addrspace(3)* %245, align 4, !tbaa !27, !noalias !31
  %247 = fadd fast float %246, %230
  %248 = fdiv fast float %247, %234
  %249 = lshr i32 %40, 1
  %250 = lshr i32 %41, 1
  %251 = lshr i32 %200, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %249, i32 %250, i32 %251, float %238, float %248, float %238, float %238, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %252

; <label>:252                                     ; preds = %244, %0
  br i1 %51, label %254, label %253, !dx.controlflow.hints !36

; <label>:253                                     ; preds = %252
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %40, i32 %41, i32 %200, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %254

; <label>:254                                     ; preds = %253, %252
  store float %205, float addrspace(3)* %206, align 4, !tbaa !27, !noalias !31
  store float 0.000000e+00, float addrspace(3)* %208, align 4, !tbaa !27, !noalias !31
  store float 0.000000e+00, float addrspace(3)* %210, align 4, !tbaa !27, !noalias !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %255 = load float, float addrspace(3)* %212, align 4, !tbaa !27, !noalias !31
  %256 = fadd fast float %255, %205
  %257 = load float, float addrspace(3)* %215, align 4, !tbaa !27, !noalias !31
  %258 = load float, float addrspace(3)* %218, align 4, !tbaa !27, !noalias !31
  store float %256, float addrspace(3)* %206, align 4, !tbaa !27, !noalias !31
  store float %257, float addrspace(3)* %208, align 4, !tbaa !27, !noalias !31
  store float %258, float addrspace(3)* %210, align 4, !tbaa !27, !noalias !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %259 = load float, float addrspace(3)* %222, align 4, !tbaa !27, !noalias !31
  %260 = fadd fast float %259, %256
  %261 = load float, float addrspace(3)* %225, align 4, !tbaa !27, !noalias !31
  %262 = fadd fast float %261, %257
  %263 = load float, float addrspace(3)* %228, align 4, !tbaa !27, !noalias !31
  %264 = fadd fast float %263, %258
  store float %260, float addrspace(3)* %206, align 4, !tbaa !27, !noalias !31
  store float %262, float addrspace(3)* %208, align 4, !tbaa !27, !noalias !31
  store float %264, float addrspace(3)* %210, align 4, !tbaa !27, !noalias !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %265 = load float, float addrspace(3)* %232, align 4, !tbaa !27, !noalias !31
  %266 = fadd fast float %265, %260
  %267 = load float, float addrspace(3)* %235, align 4, !tbaa !27, !noalias !31
  %268 = fadd fast float %267, %262
  %269 = fdiv fast float %268, %266
  br i1 %243, label %270, label %278, !dx.controlflow.hints !37

; <label>:270                                     ; preds = %254
  %271 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %231
  %272 = load float, float addrspace(3)* %271, align 4, !tbaa !27, !noalias !31
  %273 = fadd fast float %272, %264
  %274 = fdiv fast float %273, %266
  %275 = lshr i32 %40, 1
  %276 = lshr i32 %41, 1
  %277 = lshr i32 %200, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %275, i32 %276, i32 %277, float %269, float %274, float %269, float %269, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %278

; <label>:278                                     ; preds = %270, %254
  br i1 %51, label %280, label %279, !dx.controlflow.hints !38

; <label>:279                                     ; preds = %278
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %40, i32 %41, i32 %200, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %280

; <label>:280                                     ; preds = %279, %278
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 0
  %283 = extractvalue %dx.types.CBufRet.f32 %281, 1
  %284 = fsub fast float %160, %282
  %285 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %284)  ; FMax(a,b)
  %286 = fmul fast float %285, 0x3FF7154760000000
  %287 = fmul fast float %286, %283
  %288 = call float @dx.op.unary.f32(i32 21, float %287)  ; Exp(value)
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 0
  %291 = extractvalue %dx.types.CBufRet.f32 %289, 1
  %292 = extractvalue %dx.types.CBufRet.f32 %289, 2
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %295 = fmul fast float %294, %288
  %296 = fmul fast float %295, %290
  %297 = fmul fast float %295, %291
  %298 = fmul fast float %295, %292
  %299 = select i1 %198, float 0.000000e+00, float %295
  %300 = fcmp fast ogt float %299, 0.000000e+00
  br i1 %300, label %301, label %328, !dx.controlflow.hints !39

; <label>:301                                     ; preds = %280
  %302 = fdiv fast float 1.000000e+00, %299
  %303 = fmul fast float %302, %296
  %304 = fmul fast float %302, %297
  %305 = fmul fast float %302, %298
  %306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %11, float %109, float %110, float %111, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = extractvalue %dx.types.ResRet.f32 %306, 1
  %309 = extractvalue %dx.types.ResRet.f32 %306, 2
  %310 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %307)  ; IsNaN(value)
  %311 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %308)  ; IsNaN(value)
  %312 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %309)  ; IsNaN(value)
  %313 = or i1 %310, %311
  %314 = or i1 %313, %312
  %315 = select i1 %314, float 0.000000e+00, float %307
  %316 = select i1 %314, float 0.000000e+00, float %308
  %317 = select i1 %314, float 0.000000e+00, float %309
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 1
  %320 = fmul fast float %315, %319
  %321 = fmul fast float %316, %319
  %322 = fmul fast float %317, %319
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 3
  %325 = fmul fast float %320, %324
  %326 = fmul fast float %321, %324
  %327 = fmul fast float %322, %324
  br label %328

; <label>:328                                     ; preds = %301, %280
  %329 = phi float [ %303, %301 ], [ %296, %280 ]
  %330 = phi float [ %304, %301 ], [ %297, %280 ]
  %331 = phi float [ %305, %301 ], [ %298, %280 ]
  %332 = phi float [ %325, %301 ], [ 0.000000e+00, %280 ]
  %333 = phi float [ %326, %301 ], [ 0.000000e+00, %280 ]
  %334 = phi float [ %327, %301 ], [ 0.000000e+00, %280 ]
  %335 = fmul fast float %329, %299
  %336 = fmul fast float %330, %299
  %337 = fmul fast float %331, %299
  %338 = fmul fast float %335, %332
  %339 = fmul fast float %336, %333
  %340 = fmul fast float %337, %334
  br i1 %163, label %1117, label %341, !dx.controlflow.hints !40

; <label>:341                                     ; preds = %328
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 0
  %344 = extractvalue %dx.types.CBufRet.f32 %342, 1
  %345 = extractvalue %dx.types.CBufRet.f32 %342, 2
  %346 = extractvalue %dx.types.CBufRet.f32 %342, 3
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 0
  %349 = extractvalue %dx.types.CBufRet.f32 %347, 1
  %350 = extractvalue %dx.types.CBufRet.f32 %347, 2
  %351 = extractvalue %dx.types.CBufRet.f32 %347, 3
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 0
  %354 = extractvalue %dx.types.CBufRet.f32 %352, 1
  %355 = extractvalue %dx.types.CBufRet.f32 %352, 2
  %356 = extractvalue %dx.types.CBufRet.f32 %352, 3
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %360 = extractvalue %dx.types.CBufRet.f32 %357, 2
  %361 = extractvalue %dx.types.CBufRet.f32 %357, 3
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 3
  %364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.f32 %364, 3
  %366 = extractvalue %dx.types.CBufRet.f32 %364, 0
  %367 = extractvalue %dx.types.CBufRet.f32 %364, 1
  %368 = extractvalue %dx.types.CBufRet.f32 %364, 2
  %369 = fcmp fast olt float %368, -5.000000e-01
  %370 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %371 = call float @dx.op.unary.f32(i32 25, float %370)  ; Rsqrt(value)
  %372 = fmul fast float %371, %370
  %373 = fmul fast float %371, %153
  %374 = fmul fast float %371, %154
  %375 = fmul fast float %371, %155
  %376 = fadd fast float %372, %346
  %377 = call float @dx.op.dot3.f32(i32 55, float %373, float %374, float %375, float %343, float %344, float %345)  ; Dot3(ax,ay,az,bx,by,bz)
  %378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.i32 %378, 1
  %380 = and i32 %379, 1
  %381 = icmp ne i32 %380, 0
  %382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.f32 %382, 2
  %384 = fcmp fast ogt float %383, 0.000000e+00
  %385 = and i1 %381, %384
  br i1 %385, label %386, label %792, !dx.controlflow.hints !41

; <label>:386                                     ; preds = %341
  %387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %388 = extractvalue %dx.types.CBufRet.f32 %387, 3
  %389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %390 = extractvalue %dx.types.CBufRet.f32 %389, 2
  %391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %392 = extractvalue %dx.types.CBufRet.f32 %391, 2
  %393 = fsub fast float %390, %392
  %394 = and i32 %379, 2
  %395 = extractvalue %dx.types.CBufRet.i32 %378, 0
  %396 = call i32 @dx.op.binary.i32(i32 40, i32 %395, i32 3)  ; UMin(a,b)
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 0
  %399 = extractvalue %dx.types.CBufRet.f32 %397, 1
  %400 = extractvalue %dx.types.CBufRet.f32 %391, 0
  %401 = extractvalue %dx.types.CBufRet.f32 %391, 1
  %402 = fsub fast float %398, %400
  %403 = fsub fast float %399, %401
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 0
  %406 = fcmp fast ogt float %405, 0.000000e+00
  %407 = fsub fast float -0.000000e+00, %402
  %408 = fsub fast float -0.000000e+00, %403
  %409 = call float @dx.op.dot2.f32(i32 54, float %373, float %374, float %373, float %374)  ; Dot2(ax,ay,bx,by)
  %410 = call float @dx.op.dot2.f32(i32 54, float %373, float %374, float %407, float %408)  ; Dot2(ax,ay,bx,by)
  %411 = fmul fast float %410, 2.000000e+00
  %412 = call float @dx.op.dot2.f32(i32 54, float %407, float %408, float %407, float %408)  ; Dot2(ax,ay,bx,by)
  %413 = fmul fast float %405, %405
  %414 = fsub fast float %412, %413
  %415 = fmul fast float %411, %411
  %416 = fmul fast float %409, 4.000000e+00
  %417 = fmul fast float %416, %414
  %418 = fsub fast float %415, %417
  %419 = fcmp fast ogt float %418, 0.000000e+00
  br i1 %419, label %420, label %435, !dx.controlflow.hints !42

; <label>:420                                     ; preds = %386
  %421 = fcmp fast ogt float %411, 0.000000e+00
  %422 = call float @dx.op.unary.f32(i32 24, float %418)  ; Sqrt(value)
  %423 = fsub fast float -0.000000e+00, %422
  %424 = select i1 %421, float %422, float %423
  %425 = fadd fast float %424, %411
  %426 = fmul float %425, -5.000000e-01
  %427 = fdiv fast float %426, %409
  %428 = call float @dx.op.binary.f32(i32 35, float %427, float 0.000000e+00)  ; FMax(a,b)
  %429 = call float @dx.op.binary.f32(i32 36, float %372, float %428)  ; FMin(a,b)
  %430 = fdiv fast float %414, %426
  %431 = call float @dx.op.binary.f32(i32 35, float %430, float 0.000000e+00)  ; FMax(a,b)
  %432 = call float @dx.op.binary.f32(i32 36, float %372, float %431)  ; FMin(a,b)
  %433 = call float @dx.op.binary.f32(i32 36, float %429, float %432)  ; FMin(a,b)
  %434 = call float @dx.op.binary.f32(i32 35, float %429, float %432)  ; FMax(a,b)
  br label %435

; <label>:435                                     ; preds = %420, %386
  %436 = phi float [ %434, %420 ], [ -1.000000e+00, %386 ]
  %437 = phi float [ %433, %420 ], [ -1.000000e+00, %386 ]
  %438 = phi i1 [ true, %420 ], [ false, %386 ]
  %439 = and i1 %406, %438
  br i1 %439, label %440, label %442, !dx.controlflow.hints !43

; <label>:440                                     ; preds = %435
  %441 = fcmp fast oeq float %437, %436
  br i1 %441, label %745, label %443, !dx.controlflow.hints !44

; <label>:442                                     ; preds = %435
  br i1 %406, label %745, label %443, !dx.controlflow.hints !45

; <label>:443                                     ; preds = %442, %440
  %444 = phi float [ %372, %442 ], [ %436, %440 ]
  %445 = phi float [ 0.000000e+00, %442 ], [ %437, %440 ]
  %446 = icmp ne i32 %394, 0
  %447 = fmul fast float %444, %375
  %448 = fadd fast float %447, %388
  %449 = fmul fast float %448, %444
  %450 = select i1 %446, float 0.000000e+00, float %449
  %451 = fcmp fast oeq float %375, 0.000000e+00
  %452 = fdiv fast float %393, %375
  %453 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %452)  ; FMax(a,b)
  %454 = select i1 %451, float %444, float %453
  %455 = call float @dx.op.binary.f32(i32 36, float %444, float %454)  ; FMin(a,b)
  %456 = fcmp fast ogt float %375, 0.000000e+00
  %457 = fcmp fast olt float %393, 0.000000e+00
  br i1 %456, label %458, label %515, !dx.controlflow.hints !46

; <label>:458                                     ; preds = %443
  %459 = icmp eq i32 %394, 0
  br i1 %457, label %460, label %504, !dx.controlflow.hints !47

; <label>:460                                     ; preds = %458
  %461 = select i1 %459, float %444, float 0.000000e+00
  %462 = fsub fast float -0.000000e+00, %461
  %463 = call float @dx.op.unary.f32(i32 6, float %462)  ; FAbs(value)
  %464 = fmul fast float %461, %375
  %465 = fadd fast float %464, %388
  %466 = fmul fast float %463, %465
  %467 = fsub fast float %450, %466
  %468 = fsub fast float %444, %463
  %469 = select i1 %459, float %468, float 0.000000e+00
  %470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.f32 %470, 0
  %472 = extractvalue %dx.types.CBufRet.f32 %470, 1
  %473 = extractvalue %dx.types.CBufRet.f32 %470, 2
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 0
  %476 = extractvalue %dx.types.CBufRet.f32 %474, 1
  %477 = extractvalue %dx.types.CBufRet.f32 %474, 2
  %478 = extractvalue %dx.types.CBufRet.f32 %474, 3
  %479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %480 = extractvalue %dx.types.CBufRet.f32 %479, 3
  %481 = call float @dx.op.binary.f32(i32 36, float %467, float %480)  ; FMin(a,b)
  %482 = fmul fast float %478, %469
  %483 = call float @dx.op.unary.f32(i32 7, float %482)  ; Saturate(value)
  %484 = fsub fast float %475, %471
  %485 = fsub fast float %476, %472
  %486 = fsub fast float %477, %473
  %487 = fmul fast float %483, %484
  %488 = fmul fast float %483, %485
  %489 = fmul fast float %483, %486
  %490 = fadd fast float %487, %471
  %491 = fadd fast float %488, %472
  %492 = fadd fast float %489, %473
  %493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %494 = extractvalue %dx.types.CBufRet.f32 %493, 0
  %495 = extractvalue %dx.types.CBufRet.f32 %493, 1
  %496 = fadd fast float %495, %494
  %497 = call float @dx.op.unary.f32(i32 7, float %496)  ; Saturate(value)
  %498 = extractvalue %dx.types.CBufRet.f32 %493, 2
  %499 = extractvalue %dx.types.CBufRet.f32 %493, 3
  %500 = fadd fast float %499, %498
  %501 = call float @dx.op.unary.f32(i32 7, float %500)  ; Saturate(value)
  %502 = fmul fast float %497, %481
  %503 = fmul fast float %502, %501
  br label %745

; <label>:504                                     ; preds = %458
  br i1 %459, label %505, label %526, !dx.controlflow.hints !48

; <label>:505                                     ; preds = %504
  %506 = call float @dx.op.binary.f32(i32 36, float %455, float %445)  ; FMin(a,b)
  %507 = fsub fast float %455, %506
  %508 = fsub fast float %507, %444
  %509 = call float @dx.op.unary.f32(i32 6, float %508)  ; FAbs(value)
  %510 = fadd fast float %507, %444
  %511 = fmul fast float %510, %375
  %512 = fadd fast float %511, %388
  %513 = fmul fast float %512, %509
  %514 = fsub fast float %450, %513
  br label %526

; <label>:515                                     ; preds = %443
  br i1 %457, label %516, label %526, !dx.controlflow.hints !49

; <label>:516                                     ; preds = %515
  %517 = call float @dx.op.binary.f32(i32 35, float %445, float %455)  ; FMax(a,b)
  %518 = icmp eq i32 %394, 0
  %519 = select i1 %518, float %455, float 0.000000e+00
  %520 = fsub fast float -0.000000e+00, %519
  %521 = call float @dx.op.unary.f32(i32 6, float %520)  ; FAbs(value)
  %522 = fmul fast float %519, %375
  %523 = fadd fast float %522, %388
  %524 = fmul fast float %521, %523
  %525 = fsub fast float %450, %524
  br label %526

; <label>:526                                     ; preds = %516, %515, %505, %504
  %527 = phi float [ %445, %504 ], [ %445, %505 ], [ %517, %516 ], [ %445, %515 ]
  %528 = phi float [ 0.000000e+00, %504 ], [ %509, %505 ], [ %521, %516 ], [ 0.000000e+00, %515 ]
  %529 = phi float [ %450, %504 ], [ %514, %505 ], [ %525, %516 ], [ %450, %515 ]
  %530 = phi float [ %455, %504 ], [ %455, %505 ], [ %444, %516 ], [ %444, %515 ]
  %531 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 0
  store float -1.000000e+00, float* %531, align 4, !tbaa !27, !noalias !50
  %532 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 1
  store float -1.000000e+00, float* %532, align 4, !tbaa !27, !noalias !50
  %533 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 2
  store float -1.000000e+00, float* %533, align 4, !tbaa !27, !noalias !50
  %534 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 0
  store float -1.000000e+00, float* %534, align 4, !tbaa !27, !noalias !50
  %535 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 1
  store float -1.000000e+00, float* %535, align 4, !tbaa !27, !noalias !50
  %536 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 2
  store float -1.000000e+00, float* %536, align 4, !tbaa !27, !noalias !50
  %537 = icmp sgt i32 %396, 0
  br i1 %537, label %538, label %599

; <label>:538                                     ; preds = %526
  br label %539

; <label>:539                                     ; preds = %588, %538
  %540 = phi i32 [ %589, %588 ], [ 0, %538 ]
  %541 = phi i32 [ %590, %588 ], [ 0, %538 ]
  %542 = add nuw i32 %541, 171
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %542)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 0
  %545 = extractvalue %dx.types.CBufRet.f32 %543, 1
  %546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.f32 %546, 0
  %548 = extractvalue %dx.types.CBufRet.f32 %546, 1
  %549 = fsub fast float %544, %547
  %550 = fsub fast float %545, %548
  %551 = extractvalue %dx.types.CBufRet.f32 %543, 2
  %552 = fsub fast float -0.000000e+00, %549
  %553 = fsub fast float -0.000000e+00, %550
  %554 = call float @dx.op.dot2.f32(i32 54, float %373, float %374, float %552, float %553)  ; Dot2(ax,ay,bx,by)
  %555 = fmul fast float %554, 2.000000e+00
  %556 = call float @dx.op.dot2.f32(i32 54, float %552, float %553, float %552, float %553)  ; Dot2(ax,ay,bx,by)
  %557 = fmul fast float %551, %551
  %558 = fsub fast float %556, %557
  %559 = fmul fast float %555, %555
  %560 = fmul fast float %416, %558
  %561 = fsub fast float %559, %560
  %562 = fcmp fast ogt float %561, 0.000000e+00
  br i1 %562, label %563, label %578, !dx.controlflow.hints !42

; <label>:563                                     ; preds = %539
  %564 = fcmp fast ogt float %555, 0.000000e+00
  %565 = call float @dx.op.unary.f32(i32 24, float %561)  ; Sqrt(value)
  %566 = fsub fast float -0.000000e+00, %565
  %567 = select i1 %564, float %565, float %566
  %568 = fadd fast float %567, %555
  %569 = fmul float %568, -5.000000e-01
  %570 = fdiv fast float %569, %409
  %571 = call float @dx.op.binary.f32(i32 35, float %570, float 0.000000e+00)  ; FMax(a,b)
  %572 = call float @dx.op.binary.f32(i32 36, float %444, float %571)  ; FMin(a,b)
  %573 = fdiv fast float %558, %569
  %574 = call float @dx.op.binary.f32(i32 35, float %573, float 0.000000e+00)  ; FMax(a,b)
  %575 = call float @dx.op.binary.f32(i32 36, float %444, float %574)  ; FMin(a,b)
  %576 = call float @dx.op.binary.f32(i32 36, float %572, float %575)  ; FMin(a,b)
  %577 = call float @dx.op.binary.f32(i32 35, float %572, float %575)  ; FMax(a,b)
  br label %578

; <label>:578                                     ; preds = %563, %539
  %579 = phi float [ %577, %563 ], [ -1.000000e+00, %539 ]
  %580 = phi float [ %576, %563 ], [ -1.000000e+00, %539 ]
  %581 = phi i1 [ true, %563 ], [ false, %539 ]
  br i1 %581, label %582, label %588, !dx.controlflow.hints !56

; <label>:582                                     ; preds = %578
  %583 = call float @dx.op.binary.f32(i32 35, float %527, float %580)  ; FMax(a,b)
  %584 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %541
  store float %583, float* %584, align 4, !tbaa !27, !noalias !50
  %585 = call float @dx.op.binary.f32(i32 35, float %527, float %579)  ; FMax(a,b)
  %586 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 %541
  store float %585, float* %586, align 4, !tbaa !27, !noalias !50
  %587 = add nsw i32 %540, 1
  br label %588

; <label>:588                                     ; preds = %582, %578
  %589 = phi i32 [ %587, %582 ], [ %540, %578 ]
  %590 = add nuw nsw i32 %541, 1
  %591 = icmp eq i32 %590, %396
  br i1 %591, label %592, label %539

; <label>:592                                     ; preds = %588
  %593 = load float, float* %533, align 4, !tbaa !27, !alias.scope !57, !noalias !60
  %594 = load float, float* %532, align 4, !tbaa !27, !alias.scope !63, !noalias !64
  %595 = load float, float* %531, align 4, !tbaa !27, !alias.scope !65, !noalias !66
  %596 = load float, float* %536, align 4, !tbaa !27, !alias.scope !67, !noalias !70
  %597 = load float, float* %535, align 4, !tbaa !27, !alias.scope !73, !noalias !74
  %598 = load float, float* %534, align 4, !tbaa !27, !alias.scope !75, !noalias !76
  br label %599

; <label>:599                                     ; preds = %592, %526
  %600 = phi float [ -1.000000e+00, %526 ], [ %598, %592 ]
  %601 = phi float [ -1.000000e+00, %526 ], [ %597, %592 ]
  %602 = phi float [ -1.000000e+00, %526 ], [ %596, %592 ]
  %603 = phi float [ -1.000000e+00, %526 ], [ %595, %592 ]
  %604 = phi float [ -1.000000e+00, %526 ], [ %594, %592 ]
  %605 = phi float [ -1.000000e+00, %526 ], [ %593, %592 ]
  %606 = phi i32 [ 0, %526 ], [ %589, %592 ]
  %607 = call float @dx.op.binary.f32(i32 36, float %604, float %605)  ; FMin(a,b)
  %608 = call float @dx.op.binary.f32(i32 36, float %603, float %607)  ; FMin(a,b)
  %609 = call float @dx.op.binary.f32(i32 35, float %603, float %604)  ; FMax(a,b)
  %610 = call float @dx.op.binary.f32(i32 36, float %609, float %605)  ; FMin(a,b)
  %611 = call float @dx.op.binary.f32(i32 36, float %603, float %604)  ; FMin(a,b)
  %612 = call float @dx.op.binary.f32(i32 35, float %611, float %610)  ; FMax(a,b)
  %613 = call float @dx.op.binary.f32(i32 35, float %604, float %605)  ; FMax(a,b)
  %614 = call float @dx.op.binary.f32(i32 35, float %603, float %613)  ; FMax(a,b)
  store float %608, float* %531, align 4, !tbaa !27, !alias.scope !65, !noalias !66
  store float %612, float* %532, align 4, !tbaa !27, !alias.scope !63, !noalias !64
  store float %614, float* %533, align 4, !tbaa !27, !alias.scope !57, !noalias !60
  %615 = call float @dx.op.binary.f32(i32 36, float %601, float %602)  ; FMin(a,b)
  %616 = call float @dx.op.binary.f32(i32 36, float %600, float %615)  ; FMin(a,b)
  %617 = call float @dx.op.binary.f32(i32 35, float %600, float %601)  ; FMax(a,b)
  %618 = call float @dx.op.binary.f32(i32 36, float %617, float %602)  ; FMin(a,b)
  %619 = call float @dx.op.binary.f32(i32 36, float %600, float %601)  ; FMin(a,b)
  %620 = call float @dx.op.binary.f32(i32 35, float %619, float %618)  ; FMax(a,b)
  %621 = call float @dx.op.binary.f32(i32 35, float %601, float %602)  ; FMax(a,b)
  %622 = call float @dx.op.binary.f32(i32 35, float %600, float %621)  ; FMax(a,b)
  store float %616, float* %534, align 4, !tbaa !27, !alias.scope !75, !noalias !76
  store float %620, float* %535, align 4, !tbaa !27, !alias.scope !73, !noalias !74
  store float %622, float* %536, align 4, !tbaa !27, !alias.scope !67, !noalias !70
  %623 = sub nsw i32 3, %606
  %624 = icmp sgt i32 %623, 2
  br i1 %624, label %625, label %663, !dx.controlflow.hints !77

; <label>:625                                     ; preds = %599
  %626 = icmp eq i32 %394, 0
  %627 = fsub fast float %444, %528
  %628 = select i1 %626, float %627, float %528
  %629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %630 = extractvalue %dx.types.CBufRet.f32 %629, 0
  %631 = extractvalue %dx.types.CBufRet.f32 %629, 1
  %632 = extractvalue %dx.types.CBufRet.f32 %629, 2
  %633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %634 = extractvalue %dx.types.CBufRet.f32 %633, 0
  %635 = extractvalue %dx.types.CBufRet.f32 %633, 1
  %636 = extractvalue %dx.types.CBufRet.f32 %633, 2
  %637 = extractvalue %dx.types.CBufRet.f32 %633, 3
  %638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %639 = extractvalue %dx.types.CBufRet.f32 %638, 3
  %640 = call float @dx.op.binary.f32(i32 36, float %529, float %639)  ; FMin(a,b)
  %641 = fmul fast float %637, %628
  %642 = call float @dx.op.unary.f32(i32 7, float %641)  ; Saturate(value)
  %643 = fsub fast float %634, %630
  %644 = fsub fast float %635, %631
  %645 = fsub fast float %636, %632
  %646 = fmul fast float %642, %643
  %647 = fmul fast float %642, %644
  %648 = fmul fast float %642, %645
  %649 = fadd fast float %646, %630
  %650 = fadd fast float %647, %631
  %651 = fadd fast float %648, %632
  %652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.f32 %652, 0
  %654 = extractvalue %dx.types.CBufRet.f32 %652, 1
  %655 = fadd fast float %654, %653
  %656 = call float @dx.op.unary.f32(i32 7, float %655)  ; Saturate(value)
  %657 = extractvalue %dx.types.CBufRet.f32 %652, 2
  %658 = extractvalue %dx.types.CBufRet.f32 %652, 3
  %659 = fadd fast float %658, %657
  %660 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %661 = fmul fast float %656, %640
  %662 = fmul fast float %661, %660
  br label %745

; <label>:663                                     ; preds = %599
  %664 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %623
  %665 = load float, float* %664, align 4, !tbaa !27, !noalias !50
  %666 = fcmp fast olt float %665, %530
  %667 = icmp sgt i32 %606, 0
  %668 = and i1 %667, %666
  br i1 %668, label %669, label %706

; <label>:669                                     ; preds = %663
  br label %670

; <label>:670                                     ; preds = %699, %669
  %671 = phi float [ %700, %699 ], [ %528, %669 ]
  %672 = phi float [ %701, %699 ], [ %529, %669 ]
  %673 = phi float [ %681, %699 ], [ %665, %669 ]
  %674 = phi i32 [ %678, %699 ], [ %623, %669 ]
  %675 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 %674
  %676 = load float, float* %675, align 4, !tbaa !27, !noalias !50
  %677 = icmp slt i32 %674, 2
  %678 = add nsw i32 %674, 1
  %679 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %678
  %680 = load float, float* %679, align 4, !tbaa !27, !noalias !50
  %681 = select i1 %677, float %680, float %444
  %682 = call float @dx.op.binary.f32(i32 36, float %681, float %676)  ; FMin(a,b)
  %683 = call float @dx.op.binary.f32(i32 36, float %530, float %682)  ; FMin(a,b)
  %684 = icmp eq i32 %394, 0
  %685 = fadd fast float %683, %673
  %686 = fmul fast float %685, %375
  %687 = fadd fast float %686, %388
  br i1 %684, label %693, label %688, !dx.controlflow.hints !78

; <label>:688                                     ; preds = %670
  %689 = fsub fast float %683, %673
  %690 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %689)  ; FMax(a,b)
  %691 = fmul fast float %690, %687
  %692 = fadd fast float %691, %672
  br label %699

; <label>:693                                     ; preds = %670
  %694 = fsub fast float %673, %683
  %695 = call float @dx.op.unary.f32(i32 6, float %694)  ; FAbs(value)
  %696 = fadd fast float %695, %671
  %697 = fmul fast float %695, %687
  %698 = fsub fast float %672, %697
  br label %699

; <label>:699                                     ; preds = %693, %688
  %700 = phi float [ %690, %688 ], [ %696, %693 ]
  %701 = phi float [ %692, %688 ], [ %698, %693 ]
  %702 = fcmp fast olt float %681, %530
  %703 = icmp slt i32 %678, 3
  %704 = and i1 %703, %702
  br i1 %704, label %670, label %705

; <label>:705                                     ; preds = %699
  br label %706

; <label>:706                                     ; preds = %705, %663
  %707 = phi float [ %528, %663 ], [ %700, %705 ]
  %708 = phi float [ %529, %663 ], [ %701, %705 ]
  %709 = fsub fast float %444, %707
  %710 = select i1 %446, float %707, float %709
  %711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %712 = extractvalue %dx.types.CBufRet.f32 %711, 0
  %713 = extractvalue %dx.types.CBufRet.f32 %711, 1
  %714 = extractvalue %dx.types.CBufRet.f32 %711, 2
  %715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %716 = extractvalue %dx.types.CBufRet.f32 %715, 0
  %717 = extractvalue %dx.types.CBufRet.f32 %715, 1
  %718 = extractvalue %dx.types.CBufRet.f32 %715, 2
  %719 = extractvalue %dx.types.CBufRet.f32 %715, 3
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 3
  %722 = call float @dx.op.binary.f32(i32 36, float %708, float %721)  ; FMin(a,b)
  %723 = fmul fast float %719, %710
  %724 = call float @dx.op.unary.f32(i32 7, float %723)  ; Saturate(value)
  %725 = fsub fast float %716, %712
  %726 = fsub fast float %717, %713
  %727 = fsub fast float %718, %714
  %728 = fmul fast float %724, %725
  %729 = fmul fast float %724, %726
  %730 = fmul fast float %724, %727
  %731 = fadd fast float %728, %712
  %732 = fadd fast float %729, %713
  %733 = fadd fast float %730, %714
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 0
  %736 = extractvalue %dx.types.CBufRet.f32 %734, 1
  %737 = fadd fast float %736, %735
  %738 = call float @dx.op.unary.f32(i32 7, float %737)  ; Saturate(value)
  %739 = extractvalue %dx.types.CBufRet.f32 %734, 2
  %740 = extractvalue %dx.types.CBufRet.f32 %734, 3
  %741 = fadd fast float %740, %739
  %742 = call float @dx.op.unary.f32(i32 7, float %741)  ; Saturate(value)
  %743 = fmul fast float %738, %722
  %744 = fmul fast float %743, %742
  br label %745

; <label>:745                                     ; preds = %706, %625, %460, %442, %440
  %746 = phi float [ %469, %460 ], [ %628, %625 ], [ %710, %706 ], [ 0.000000e+00, %440 ], [ 0.000000e+00, %442 ]
  %747 = phi float [ %503, %460 ], [ %662, %625 ], [ %744, %706 ], [ 0.000000e+00, %440 ], [ 0.000000e+00, %442 ]
  %748 = phi float [ %490, %460 ], [ %649, %625 ], [ %731, %706 ], [ 0.000000e+00, %440 ], [ 0.000000e+00, %442 ]
  %749 = phi float [ %491, %460 ], [ %650, %625 ], [ %732, %706 ], [ 0.000000e+00, %440 ], [ 0.000000e+00, %442 ]
  %750 = phi float [ %492, %460 ], [ %651, %625 ], [ %733, %706 ], [ 0.000000e+00, %440 ], [ 0.000000e+00, %442 ]
  %751 = fmul fast float %383, %747
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 2
  %754 = fsub fast float %390, %753
  %755 = fcmp fast olt float %751, -2.000000e+01
  %756 = call float @dx.op.unary.f32(i32 21, float %751)  ; Exp(value)
  %757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.f32 %757, 2
  %759 = extractvalue %dx.types.CBufRet.f32 %757, 3
  %760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.f32 %760, 2
  %762 = fmul fast float %759, %754
  %763 = call float @dx.op.unary.f32(i32 7, float %762)  ; Saturate(value)
  %764 = fsub fast float 1.000000e+00, %763
  %765 = fmul fast float %375, 5.000000e-01
  %766 = fadd fast float %765, 5.000000e-01
  %767 = call float @dx.op.unary.f32(i32 7, float %766)  ; Saturate(value)
  %768 = fsub fast float 1.000000e+00, %767
  %769 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %764)  ; FMax(a,b)
  %770 = fdiv fast float %768, %769
  %771 = fsub fast float %754, %155
  %772 = call float @dx.op.unary.f32(i32 6, float %771)  ; FAbs(value)
  %773 = fmul fast float %772, %758
  %774 = call float @dx.op.unary.f32(i32 7, float %770)  ; Saturate(value)
  %775 = fsub fast float 1.000000e+00, %773
  %776 = fmul fast float %775, %774
  %777 = fadd fast float %776, %773
  %778 = fmul fast float %761, %754
  %779 = call float @dx.op.unary.f32(i32 7, float %778)  ; Saturate(value)
  %780 = fsub fast float 1.000000e+00, %777
  %781 = fmul fast float %780, %779
  %782 = fadd fast float %781, %777
  %783 = call float @dx.op.unary.f32(i32 7, float %782)  ; Saturate(value)
  %784 = fadd fast float %756, -1.000000e+00
  %785 = select i1 %755, float -1.000000e+00, float %784
  %786 = fmul fast float %783, %785
  %787 = fadd fast float %786, 1.000000e+00
  %788 = fsub fast float -0.000000e+00, %786
  %789 = fmul fast float %748, %788
  %790 = fmul fast float %749, %788
  %791 = fmul fast float %750, %788
  br label %792

; <label>:792                                     ; preds = %745, %341
  %793 = phi float [ %746, %745 ], [ 0.000000e+00, %341 ]
  %794 = phi float [ %787, %745 ], [ 1.000000e+00, %341 ]
  %795 = phi float [ %789, %745 ], [ 0.000000e+00, %341 ]
  %796 = phi float [ %790, %745 ], [ 0.000000e+00, %341 ]
  %797 = phi float [ %791, %745 ], [ 0.000000e+00, %341 ]
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 1
  %800 = fsub fast float 1.000000e+00, %794
  %801 = fmul fast float %800, %376
  %802 = fmul fast float %801, %799
  %803 = fsub fast float %376, %802
  br i1 %369, label %804, label %833, !dx.controlflow.hints !79

; <label>:804                                     ; preds = %792
  %805 = fmul fast float %377, %366
  %806 = fadd fast float %805, %367
  %807 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  %808 = fmul fast float %348, %803
  %809 = fsub fast float -0.000000e+00, %808
  %810 = fmul fast float %349, %803
  %811 = fsub fast float -0.000000e+00, %810
  %812 = call float @dx.op.unary.f32(i32 21, float %809)  ; Exp(value)
  %813 = call float @dx.op.unary.f32(i32 21, float %811)  ; Exp(value)
  %814 = call float @dx.op.binary.f32(i32 35, float %356, float %812)  ; FMax(a,b)
  %815 = call float @dx.op.binary.f32(i32 35, float %356, float %813)  ; FMax(a,b)
  %816 = fsub fast float %815, %814
  %817 = fmul fast float %816, %807
  %818 = fadd fast float %817, %814
  %819 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %820 = fsub fast float %353, %358
  %821 = fsub fast float %354, %359
  %822 = fsub fast float %355, %360
  %823 = fmul fast float %807, %820
  %824 = fmul fast float %807, %821
  %825 = fmul fast float %807, %822
  %826 = fadd fast float %823, %358
  %827 = fadd fast float %824, %359
  %828 = fadd fast float %825, %360
  %829 = fsub fast float 1.000000e+00, %819
  %830 = fmul fast float %829, %826
  %831 = fmul fast float %829, %827
  %832 = fmul fast float %829, %828
  br label %892

; <label>:833                                     ; preds = %792
  %834 = fmul fast float %803, %365
  %835 = call float @dx.op.unary.f32(i32 7, float %834)  ; Saturate(value)
  %836 = fsub fast float 2.000000e+00, %835
  %837 = fmul fast float %835, 9.921875e-01
  %838 = fmul fast float %837, %836
  %839 = fadd fast float %838, 3.906250e-03
  %840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %839, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %841 = extractvalue %dx.types.ResRet.f32 %840, 0
  %842 = fsub fast float %835, %841
  %843 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %842)  ; FMax(a,b)
  %844 = fmul fast float %351, %155
  %845 = call float @dx.op.unary.f32(i32 6, float %844)  ; FAbs(value)
  %846 = fcmp fast ogt float %845, 0x3EB0C6F7A0000000
  br i1 %846, label %847, label %853, !dx.controlflow.hints !80

; <label>:847                                     ; preds = %833
  %848 = fmul fast float %844, 0xBFF7154760000000
  %849 = call float @dx.op.unary.f32(i32 21, float %848)  ; Exp(value)
  %850 = fsub fast float 1.000000e+00, %849
  %851 = fdiv fast float %850, %844
  %852 = fmul fast float %851, %361
  br label %853

; <label>:853                                     ; preds = %847, %833
  %854 = phi float [ %852, %847 ], [ %361, %833 ]
  %855 = fadd fast float %854, %363
  %856 = fmul fast float %855, %843
  %857 = fmul fast float %348, %856
  %858 = fsub fast float -0.000000e+00, %857
  %859 = fmul fast float %349, %856
  %860 = fsub fast float -0.000000e+00, %859
  %861 = fmul fast float %350, %856
  %862 = fsub fast float -0.000000e+00, %861
  %863 = call float @dx.op.unary.f32(i32 21, float %858)  ; Exp(value)
  %864 = call float @dx.op.unary.f32(i32 21, float %860)  ; Exp(value)
  %865 = call float @dx.op.unary.f32(i32 21, float %862)  ; Exp(value)
  %866 = fmul fast float %377, %377
  %867 = fadd fast float %866, 1.000000e+00
  %868 = fmul fast float %867, 0x3FAE8EC8A0000000
  %869 = fmul fast float %868, %358
  %870 = fmul fast float %868, %359
  %871 = fmul fast float %868, %360
  %872 = fmul fast float %377, %356
  %873 = fsub fast float 1.000000e+00, %872
  %874 = fmul fast float %356, %356
  %875 = fsub fast float 1.000000e+00, %874
  %876 = fmul fast float %875, 0x3FB45F3060000000
  %877 = fmul fast float %873, %873
  %878 = fdiv fast float 1.000000e+00, %877
  %879 = fmul fast float %876, %878
  %880 = fmul fast float %879, %353
  %881 = fmul fast float %879, %354
  %882 = fmul fast float %879, %355
  %883 = fadd fast float %880, %869
  %884 = fadd fast float %881, %870
  %885 = fadd fast float %882, %871
  %886 = fsub fast float 1.000000e+00, %863
  %887 = fsub fast float 1.000000e+00, %864
  %888 = fsub fast float 1.000000e+00, %865
  %889 = fmul fast float %883, %886
  %890 = fmul fast float %884, %887
  %891 = fmul fast float %885, %888
  br label %892

; <label>:892                                     ; preds = %853, %804
  %893 = phi float [ %830, %804 ], [ %889, %853 ]
  %894 = phi float [ %831, %804 ], [ %890, %853 ]
  %895 = phi float [ %832, %804 ], [ %891, %853 ]
  %896 = phi float [ %819, %804 ], [ %863, %853 ]
  %897 = phi float [ %819, %804 ], [ %864, %853 ]
  %898 = phi float [ %819, %804 ], [ %865, %853 ]
  br i1 %385, label %899, label %1097, !dx.controlflow.hints !81

; <label>:899                                     ; preds = %892
  %900 = extractvalue %dx.types.CBufRet.f32 %798, 0
  %901 = fmul fast float %900, %800
  %902 = fsub fast float %795, %893
  %903 = fsub fast float %796, %894
  %904 = fsub fast float %797, %895
  %905 = fmul fast float %901, %902
  %906 = fmul fast float %901, %903
  %907 = fmul fast float %901, %904
  %908 = fadd fast float %905, %893
  %909 = fadd fast float %906, %894
  %910 = fadd fast float %907, %895
  %911 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %896)  ; FMax(a,b)
  %912 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %897)  ; FMax(a,b)
  %913 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %898)  ; FMax(a,b)
  %914 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %794)  ; FMax(a,b)
  %915 = call float @dx.op.binary.f32(i32 35, float %793, float %803)  ; FMax(a,b)
  %916 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %915)  ; FMax(a,b)
  %917 = fdiv fast float %793, %916
  %918 = call float @dx.op.unary.f32(i32 7, float %917)  ; Saturate(value)
  %919 = fdiv fast float %803, %916
  %920 = call float @dx.op.unary.f32(i32 7, float %919)  ; Saturate(value)
  %921 = fcmp fast une float %914, 1.000000e+00
  br i1 %921, label %922, label %935, !dx.controlflow.hints !82

; <label>:922                                     ; preds = %899
  %923 = call float @dx.op.unary.f32(i32 23, float %914)  ; Log(value)
  %924 = fmul fast float %923, 0x3FE62E4300000000
  %925 = fmul fast float %795, %924
  %926 = fsub fast float -0.000000e+00, %925
  %927 = fmul fast float %796, %924
  %928 = fsub fast float -0.000000e+00, %927
  %929 = fmul fast float %797, %924
  %930 = fsub fast float -0.000000e+00, %929
  %931 = fsub fast float 1.000000e+00, %914
  %932 = fdiv fast float %926, %931
  %933 = fdiv fast float %928, %931
  %934 = fdiv fast float %930, %931
  br label %935

; <label>:935                                     ; preds = %922, %899
  %936 = phi float [ %932, %922 ], [ %795, %899 ]
  %937 = phi float [ %933, %922 ], [ %796, %899 ]
  %938 = phi float [ %934, %922 ], [ %797, %899 ]
  %939 = phi float [ %924, %922 ], [ 0.000000e+00, %899 ]
  %940 = fcmp fast une float %911, 1.000000e+00
  br i1 %940, label %941, label %948, !dx.controlflow.hints !83

; <label>:941                                     ; preds = %935
  %942 = call float @dx.op.unary.f32(i32 23, float %911)  ; Log(value)
  %943 = fmul fast float %942, 0x3FE62E4300000000
  %944 = fmul fast float %908, %943
  %945 = fsub fast float -0.000000e+00, %944
  %946 = fsub fast float 1.000000e+00, %911
  %947 = fdiv fast float %945, %946
  br label %948

; <label>:948                                     ; preds = %941, %935
  %949 = phi float [ %947, %941 ], [ %908, %935 ]
  %950 = phi float [ %943, %941 ], [ 0.000000e+00, %935 ]
  %951 = fcmp fast une float %912, 1.000000e+00
  br i1 %951, label %952, label %959, !dx.controlflow.hints !83

; <label>:952                                     ; preds = %948
  %953 = call float @dx.op.unary.f32(i32 23, float %912)  ; Log(value)
  %954 = fmul fast float %953, 0x3FE62E4300000000
  %955 = fmul fast float %909, %954
  %956 = fsub fast float -0.000000e+00, %955
  %957 = fsub fast float 1.000000e+00, %912
  %958 = fdiv fast float %956, %957
  br label %959

; <label>:959                                     ; preds = %952, %948
  %960 = phi float [ %958, %952 ], [ %909, %948 ]
  %961 = phi float [ %954, %952 ], [ 0.000000e+00, %948 ]
  %962 = fcmp fast une float %913, 1.000000e+00
  br i1 %962, label %963, label %970, !dx.controlflow.hints !83

; <label>:963                                     ; preds = %959
  %964 = call float @dx.op.unary.f32(i32 23, float %913)  ; Log(value)
  %965 = fmul fast float %964, 0x3FE62E4300000000
  %966 = fmul fast float %910, %965
  %967 = fsub fast float -0.000000e+00, %966
  %968 = fsub fast float 1.000000e+00, %913
  %969 = fdiv fast float %967, %968
  br label %970

; <label>:970                                     ; preds = %963, %959
  %971 = phi float [ %969, %963 ], [ %910, %959 ]
  %972 = phi float [ %965, %963 ], [ 0.000000e+00, %959 ]
  %973 = fmul fast float %936, %920
  %974 = fmul fast float %937, %920
  %975 = fmul fast float %938, %920
  %976 = fmul fast float %939, %920
  %977 = fmul fast float %949, %918
  %978 = fmul fast float %960, %918
  %979 = fmul fast float %971, %918
  %980 = fmul fast float %950, %918
  %981 = fmul fast float %961, %918
  %982 = fmul fast float %972, %918
  %983 = fadd fast float %977, %973
  %984 = fadd fast float %978, %974
  %985 = fadd fast float %979, %975
  %986 = fadd fast float %980, %976
  %987 = fadd fast float %981, %976
  %988 = fadd fast float %982, %976
  %989 = fcmp fast une float %986, 0.000000e+00
  br i1 %989, label %990, label %997, !dx.controlflow.hints !84

; <label>:990                                     ; preds = %970
  %991 = fmul fast float %986, 0x3FF7154760000000
  %992 = call float @dx.op.unary.f32(i32 21, float %991)  ; Exp(value)
  %993 = fsub fast float 1.000000e+00, %992
  %994 = fmul fast float %983, %993
  %995 = fsub fast float -0.000000e+00, %994
  %996 = fdiv fast float %995, %986
  br label %997

; <label>:997                                     ; preds = %990, %970
  %998 = phi float [ %992, %990 ], [ 1.000000e+00, %970 ]
  %999 = phi float [ %996, %990 ], [ %983, %970 ]
  %1000 = fcmp fast une float %987, 0.000000e+00
  br i1 %1000, label %1001, label %1008, !dx.controlflow.hints !84

; <label>:1001                                    ; preds = %997
  %1002 = fmul fast float %987, 0x3FF7154760000000
  %1003 = call float @dx.op.unary.f32(i32 21, float %1002)  ; Exp(value)
  %1004 = fsub fast float 1.000000e+00, %1003
  %1005 = fmul fast float %984, %1004
  %1006 = fsub fast float -0.000000e+00, %1005
  %1007 = fdiv fast float %1006, %987
  br label %1008

; <label>:1008                                    ; preds = %1001, %997
  %1009 = phi float [ %1003, %1001 ], [ 1.000000e+00, %997 ]
  %1010 = phi float [ %1007, %1001 ], [ %984, %997 ]
  %1011 = fcmp fast une float %988, 0.000000e+00
  br i1 %1011, label %1012, label %1019, !dx.controlflow.hints !84

; <label>:1012                                    ; preds = %1008
  %1013 = fmul fast float %988, 0x3FF7154760000000
  %1014 = call float @dx.op.unary.f32(i32 21, float %1013)  ; Exp(value)
  %1015 = fsub fast float 1.000000e+00, %1014
  %1016 = fmul fast float %985, %1015
  %1017 = fsub fast float -0.000000e+00, %1016
  %1018 = fdiv fast float %1017, %988
  br label %1019

; <label>:1019                                    ; preds = %1012, %1008
  %1020 = phi float [ %1014, %1012 ], [ 1.000000e+00, %1008 ]
  %1021 = phi float [ %1018, %1012 ], [ %985, %1008 ]
  %1022 = fcmp fast ogt float %918, %920
  br i1 %1022, label %1023, label %1043, !dx.controlflow.hints !85

; <label>:1023                                    ; preds = %1019
  %1024 = fsub fast float 1.000000e+00, %920
  %1025 = fmul fast float %936, %1024
  %1026 = fmul fast float %937, %1024
  %1027 = fmul fast float %938, %1024
  %1028 = fmul fast float %939, %1024
  %1029 = fcmp fast une float %1028, 0.000000e+00
  br i1 %1029, label %1030, label %1081, !dx.controlflow.hints !86

; <label>:1030                                    ; preds = %1023
  %1031 = fmul fast float %1028, 0x3FF7154760000000
  %1032 = call float @dx.op.unary.f32(i32 21, float %1031)  ; Exp(value)
  %1033 = fsub fast float 1.000000e+00, %1032
  %1034 = fmul fast float %1025, %1033
  %1035 = fsub fast float -0.000000e+00, %1034
  %1036 = fmul fast float %1026, %1033
  %1037 = fsub fast float -0.000000e+00, %1036
  %1038 = fmul fast float %1027, %1033
  %1039 = fsub fast float -0.000000e+00, %1038
  %1040 = fdiv fast float %1035, %1028
  %1041 = fdiv fast float %1037, %1028
  %1042 = fdiv fast float %1039, %1028
  br label %1081

; <label>:1043                                    ; preds = %1019
  %1044 = fsub fast float 1.000000e+00, %918
  %1045 = fmul fast float %949, %1044
  %1046 = fmul fast float %960, %1044
  %1047 = fmul fast float %971, %1044
  %1048 = fmul fast float %950, %1044
  %1049 = fmul fast float %961, %1044
  %1050 = fmul fast float %972, %1044
  %1051 = fcmp fast une float %1048, 0.000000e+00
  br i1 %1051, label %1052, label %1059, !dx.controlflow.hints !84

; <label>:1052                                    ; preds = %1043
  %1053 = fmul fast float %1048, 0x3FF7154760000000
  %1054 = call float @dx.op.unary.f32(i32 21, float %1053)  ; Exp(value)
  %1055 = fsub fast float 1.000000e+00, %1054
  %1056 = fmul fast float %1045, %1055
  %1057 = fsub fast float -0.000000e+00, %1056
  %1058 = fdiv fast float %1057, %1048
  br label %1059

; <label>:1059                                    ; preds = %1052, %1043
  %1060 = phi float [ %1058, %1052 ], [ %1045, %1043 ]
  %1061 = phi float [ %1054, %1052 ], [ 1.000000e+00, %1043 ]
  %1062 = fcmp fast une float %1049, 0.000000e+00
  br i1 %1062, label %1063, label %1070, !dx.controlflow.hints !84

; <label>:1063                                    ; preds = %1059
  %1064 = fmul fast float %1049, 0x3FF7154760000000
  %1065 = call float @dx.op.unary.f32(i32 21, float %1064)  ; Exp(value)
  %1066 = fsub fast float 1.000000e+00, %1065
  %1067 = fmul fast float %1046, %1066
  %1068 = fsub fast float -0.000000e+00, %1067
  %1069 = fdiv fast float %1068, %1049
  br label %1070

; <label>:1070                                    ; preds = %1063, %1059
  %1071 = phi float [ %1069, %1063 ], [ %1046, %1059 ]
  %1072 = phi float [ %1065, %1063 ], [ 1.000000e+00, %1059 ]
  %1073 = fcmp fast une float %1050, 0.000000e+00
  br i1 %1073, label %1074, label %1081, !dx.controlflow.hints !84

; <label>:1074                                    ; preds = %1070
  %1075 = fmul fast float %1050, 0x3FF7154760000000
  %1076 = call float @dx.op.unary.f32(i32 21, float %1075)  ; Exp(value)
  %1077 = fsub fast float 1.000000e+00, %1076
  %1078 = fmul fast float %1047, %1077
  %1079 = fsub fast float -0.000000e+00, %1078
  %1080 = fdiv fast float %1079, %1050
  br label %1081

; <label>:1081                                    ; preds = %1074, %1070, %1030, %1023
  %1082 = phi float [ %1080, %1074 ], [ %1042, %1030 ], [ %1027, %1023 ], [ %1047, %1070 ]
  %1083 = phi float [ %1071, %1074 ], [ %1041, %1030 ], [ %1026, %1023 ], [ %1071, %1070 ]
  %1084 = phi float [ %1060, %1074 ], [ %1040, %1030 ], [ %1025, %1023 ], [ %1060, %1070 ]
  %1085 = phi float [ %1076, %1074 ], [ %1032, %1030 ], [ 1.000000e+00, %1023 ], [ 1.000000e+00, %1070 ]
  %1086 = phi float [ %1072, %1074 ], [ %1032, %1030 ], [ 1.000000e+00, %1023 ], [ %1072, %1070 ]
  %1087 = phi float [ %1061, %1074 ], [ %1032, %1030 ], [ 1.000000e+00, %1023 ], [ %1061, %1070 ]
  %1088 = fmul fast float %1087, %999
  %1089 = fmul fast float %1086, %1010
  %1090 = fmul fast float %1085, %1021
  %1091 = fadd fast float %1088, %1084
  %1092 = fadd fast float %1089, %1083
  %1093 = fadd fast float %1090, %1082
  %1094 = fmul fast float %1087, %998
  %1095 = fmul fast float %1086, %1009
  %1096 = fmul fast float %1085, %1020
  br label %1097

; <label>:1097                                    ; preds = %1081, %892
  %1098 = phi float [ %1096, %1081 ], [ %898, %892 ]
  %1099 = phi float [ %1095, %1081 ], [ %897, %892 ]
  %1100 = phi float [ %1094, %1081 ], [ %896, %892 ]
  %1101 = phi float [ %1093, %1081 ], [ %895, %892 ]
  %1102 = phi float [ %1092, %1081 ], [ %894, %892 ]
  %1103 = phi float [ %1091, %1081 ], [ %893, %892 ]
  %1104 = fmul fast float %1100, %338
  %1105 = fmul fast float %1099, %339
  %1106 = fmul fast float %1098, %340
  %1107 = fmul fast float %299, 0xBFF7154760000000
  %1108 = call float @dx.op.unary.f32(i32 21, float %1107)  ; Exp(value)
  %1109 = call float @dx.op.unary.f32(i32 7, float %1108)  ; Saturate(value)
  %1110 = fsub fast float 1.000000e+00, %1109
  %1111 = fmul fast float %1110, %1103
  %1112 = fmul fast float %1110, %1102
  %1113 = fmul fast float %1110, %1101
  %1114 = fadd fast float %1111, %1104
  %1115 = fadd fast float %1112, %1105
  %1116 = fadd fast float %1113, %1106
  br label %1117

; <label>:1117                                    ; preds = %1097, %328
  %1118 = phi float [ %1114, %1097 ], [ %338, %328 ]
  %1119 = phi float [ %1115, %1097 ], [ %339, %328 ]
  %1120 = phi float [ %1116, %1097 ], [ %340, %328 ]
  %1121 = xor i1 %201, true
  %1122 = and i1 %52, %1121
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1125, 0
  %1127 = select i1 %163, float %1124, float %1126
  %1128 = fmul fast float %1127, %1118
  %1129 = fmul fast float %1127, %1119
  %1130 = fmul fast float %1127, %1120
  %1131 = fmul fast float %1129, 5.000000e-01
  %1132 = fadd fast float %1120, %1118
  %1133 = fmul fast float %1127, %1132
  %1134 = fmul fast float %1133, 2.500000e-01
  %1135 = fadd fast float %1134, %1131
  %1136 = call float @dx.op.unary.f32(i32 23, float %1135)  ; Log(value)
  %1137 = fmul fast float %1136, 0x3FE62E4300000000
  %1138 = fmul fast float %1137, %1137
  %1139 = select i1 %1122, float 1.000000e+00, float 0.000000e+00
  store float %1139, float addrspace(3)* %206, align 4, !tbaa !27, !noalias !31
  %1140 = fmul fast float %1137, %1139
  store float %1140, float addrspace(3)* %208, align 4, !tbaa !27, !noalias !31
  %1141 = fmul fast float %1138, %1139
  store float %1141, float addrspace(3)* %210, align 4, !tbaa !27, !noalias !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1142 = load float, float addrspace(3)* %212, align 4, !tbaa !27, !noalias !31
  %1143 = fadd fast float %1142, %1139
  %1144 = load float, float addrspace(3)* %215, align 4, !tbaa !27, !noalias !31
  %1145 = fadd fast float %1144, %1137
  %1146 = load float, float addrspace(3)* %218, align 4, !tbaa !27, !noalias !31
  %1147 = fadd fast float %1146, %1138
  store float %1143, float addrspace(3)* %206, align 4, !tbaa !27, !noalias !31
  store float %1145, float addrspace(3)* %208, align 4, !tbaa !27, !noalias !31
  store float %1147, float addrspace(3)* %210, align 4, !tbaa !27, !noalias !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1148 = load float, float addrspace(3)* %222, align 4, !tbaa !27, !noalias !31
  %1149 = fadd fast float %1148, %1143
  %1150 = load float, float addrspace(3)* %225, align 4, !tbaa !27, !noalias !31
  %1151 = fadd fast float %1150, %1145
  %1152 = load float, float addrspace(3)* %228, align 4, !tbaa !27, !noalias !31
  %1153 = fadd fast float %1152, %1147
  store float %1149, float addrspace(3)* %206, align 4, !tbaa !27, !noalias !31
  store float %1151, float addrspace(3)* %208, align 4, !tbaa !27, !noalias !31
  store float %1153, float addrspace(3)* %210, align 4, !tbaa !27, !noalias !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1154 = load float, float addrspace(3)* %232, align 4, !tbaa !27, !noalias !31
  %1155 = fadd fast float %1154, %1149
  %1156 = load float, float addrspace(3)* %235, align 4, !tbaa !27, !noalias !31
  %1157 = fadd fast float %1156, %1151
  %1158 = fdiv fast float %1157, %1155
  %1159 = and i1 %1122, %242
  br i1 %1159, label %1160, label %1168, !dx.controlflow.hints !35

; <label>:1160                                    ; preds = %1117
  %1161 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %231
  %1162 = load float, float addrspace(3)* %1161, align 4, !tbaa !27, !noalias !31
  %1163 = fadd fast float %1162, %1153
  %1164 = fdiv fast float %1163, %1155
  %1165 = lshr i32 %40, 1
  %1166 = lshr i32 %41, 1
  %1167 = lshr i32 %200, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1165, i32 %1166, i32 %1167, float %1158, float %1164, float %1158, float %1158, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1168

; <label>:1168                                    ; preds = %1160, %1117
  br i1 %1122, label %1169, label %1203, !dx.controlflow.hints !36

; <label>:1169                                    ; preds = %1168
  %1170 = fadd fast float %90, 0x3FE3C6EF40000000
  %1171 = call float @dx.op.unary.f32(i32 22, float %1170)  ; Frc(value)
  %1172 = call float @dx.op.unary.f32(i32 23, float %1128)  ; Log(value)
  %1173 = fadd fast float %1172, -7.000000e+00
  %1174 = call float @dx.op.unary.f32(i32 21, float %1173)  ; Exp(value)
  %1175 = fmul fast float %1171, 2.000000e+00
  %1176 = fadd fast float %1175, -1.000000e+00
  %1177 = fmul fast float %1174, %1176
  %1178 = fcmp fast ogt float %1128, 0.000000e+00
  %1179 = select i1 %1178, float %1177, float 0.000000e+00
  %1180 = fadd fast float %1179, %1128
  %1181 = fadd fast float %90, 0x3FF3C6EF40000000
  %1182 = call float @dx.op.unary.f32(i32 22, float %1181)  ; Frc(value)
  %1183 = call float @dx.op.unary.f32(i32 23, float %1129)  ; Log(value)
  %1184 = fadd fast float %1183, -7.000000e+00
  %1185 = call float @dx.op.unary.f32(i32 21, float %1184)  ; Exp(value)
  %1186 = fmul fast float %1182, 2.000000e+00
  %1187 = fadd fast float %1186, -1.000000e+00
  %1188 = fmul fast float %1185, %1187
  %1189 = fcmp fast ogt float %1129, 0.000000e+00
  %1190 = select i1 %1189, float %1188, float 0.000000e+00
  %1191 = fadd fast float %1190, %1129
  %1192 = fadd fast float %90, 0x3FFDAA66E0000000
  %1193 = call float @dx.op.unary.f32(i32 22, float %1192)  ; Frc(value)
  %1194 = call float @dx.op.unary.f32(i32 23, float %1130)  ; Log(value)
  %1195 = fadd fast float %1194, -6.000000e+00
  %1196 = call float @dx.op.unary.f32(i32 21, float %1195)  ; Exp(value)
  %1197 = fmul fast float %1193, 2.000000e+00
  %1198 = fadd fast float %1197, -1.000000e+00
  %1199 = fmul fast float %1196, %1198
  %1200 = fcmp fast ogt float %1130, 0.000000e+00
  %1201 = select i1 %1200, float %1199, float 0.000000e+00
  %1202 = fadd fast float %1201, %1130
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %40, i32 %41, i32 %200, float %1180, float %1191, float %1202, float %1180, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1203

; <label>:1203                                    ; preds = %1169, %1168
  %1204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1204, 0
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 0
  %1208 = select i1 %163, float %1205, float %1207
  %1209 = fmul fast float %1208, %299
  %1210 = fmul fast float %1209, 5.000000e-01
  %1211 = fadd fast float %299, %299
  %1212 = fmul fast float %1208, %1211
  %1213 = fmul fast float %1212, 2.500000e-01
  %1214 = fadd fast float %1213, %1210
  %1215 = fmul fast float %1214, %1214
  store float %1139, float addrspace(3)* %206, align 4, !tbaa !27, !noalias !31
  %1216 = fmul fast float %1214, %1139
  store float %1216, float addrspace(3)* %208, align 4, !tbaa !27, !noalias !31
  %1217 = fmul fast float %1215, %1139
  store float %1217, float addrspace(3)* %210, align 4, !tbaa !27, !noalias !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1218 = load float, float addrspace(3)* %212, align 4, !tbaa !27, !noalias !31
  %1219 = fadd fast float %1218, %1139
  %1220 = load float, float addrspace(3)* %215, align 4, !tbaa !27, !noalias !31
  %1221 = fadd fast float %1214, %1220
  %1222 = load float, float addrspace(3)* %218, align 4, !tbaa !27, !noalias !31
  %1223 = fadd fast float %1215, %1222
  store float %1219, float addrspace(3)* %206, align 4, !tbaa !27, !noalias !31
  store float %1221, float addrspace(3)* %208, align 4, !tbaa !27, !noalias !31
  store float %1223, float addrspace(3)* %210, align 4, !tbaa !27, !noalias !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1224 = load float, float addrspace(3)* %222, align 4, !tbaa !27, !noalias !31
  %1225 = fadd fast float %1224, %1219
  %1226 = load float, float addrspace(3)* %225, align 4, !tbaa !27, !noalias !31
  %1227 = fadd fast float %1221, %1226
  %1228 = load float, float addrspace(3)* %228, align 4, !tbaa !27, !noalias !31
  %1229 = fadd fast float %1223, %1228
  store float %1225, float addrspace(3)* %206, align 4, !tbaa !27, !noalias !31
  store float %1227, float addrspace(3)* %208, align 4, !tbaa !27, !noalias !31
  store float %1229, float addrspace(3)* %210, align 4, !tbaa !27, !noalias !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1230 = load float, float addrspace(3)* %232, align 4, !tbaa !27, !noalias !31
  %1231 = fadd fast float %1230, %1225
  %1232 = load float, float addrspace(3)* %235, align 4, !tbaa !27, !noalias !31
  %1233 = fadd fast float %1232, %1227
  %1234 = fdiv fast float %1233, %1231
  br i1 %1159, label %1235, label %1243, !dx.controlflow.hints !37

; <label>:1235                                    ; preds = %1203
  %1236 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %231
  %1237 = load float, float addrspace(3)* %1236, align 4, !tbaa !27, !noalias !31
  %1238 = fadd fast float %1237, %1229
  %1239 = fdiv fast float %1238, %1231
  %1240 = lshr i32 %40, 1
  %1241 = lshr i32 %41, 1
  %1242 = lshr i32 %200, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1240, i32 %1241, i32 %1242, float %1234, float %1239, float %1234, float %1234, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1243

; <label>:1243                                    ; preds = %1235, %1203
  br i1 %1122, label %1244, label %1272, !dx.controlflow.hints !38

; <label>:1244                                    ; preds = %1243
  %1245 = fadd fast float %90, 0x3FE3C6EF40000000
  %1246 = call float @dx.op.unary.f32(i32 22, float %1245)  ; Frc(value)
  %1247 = call float @dx.op.unary.f32(i32 23, float %1209)  ; Log(value)
  %1248 = fadd fast float %1247, -7.000000e+00
  %1249 = call float @dx.op.unary.f32(i32 21, float %1248)  ; Exp(value)
  %1250 = fmul fast float %1246, 2.000000e+00
  %1251 = fadd fast float %1250, -1.000000e+00
  %1252 = fmul fast float %1249, %1251
  %1253 = fcmp fast ogt float %1209, 0.000000e+00
  %1254 = select i1 %1253, float %1252, float 0.000000e+00
  %1255 = fadd fast float %1254, %1209
  %1256 = fadd fast float %90, 0x3FF3C6EF40000000
  %1257 = call float @dx.op.unary.f32(i32 22, float %1256)  ; Frc(value)
  %1258 = fmul fast float %1257, 2.000000e+00
  %1259 = fadd fast float %1258, -1.000000e+00
  %1260 = fmul fast float %1249, %1259
  %1261 = select i1 %1253, float %1260, float 0.000000e+00
  %1262 = fadd fast float %1261, %1209
  %1263 = fadd fast float %90, 0x3FFDAA66E0000000
  %1264 = call float @dx.op.unary.f32(i32 22, float %1263)  ; Frc(value)
  %1265 = fadd fast float %1247, -6.000000e+00
  %1266 = call float @dx.op.unary.f32(i32 21, float %1265)  ; Exp(value)
  %1267 = fmul fast float %1264, 2.000000e+00
  %1268 = fadd fast float %1267, -1.000000e+00
  %1269 = fmul fast float %1266, %1268
  %1270 = select i1 %1253, float %1269, float 0.000000e+00
  %1271 = fadd fast float %1270, %1209
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %40, i32 %41, i32 %200, float %1255, float %1262, float %1271, float %1255, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1272

; <label>:1272                                    ; preds = %1244, %1243
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
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !18, !21}
!5 = !{!6, !8, !9, !10, !11, !12}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 44, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture1D<float>"* undef, !"", i32 0, i32 54, i32 1, i32 1, i32 0, !7}
!12 = !{i32 5, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!13 = !{!14, !15, !16, !17}
!14 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!15 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!16 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!17 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!18 = !{!19, !20}
!19 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!20 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!21 = !{!22, !23}
!22 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!23 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!24 = !{void ()* @cs_volumetric_forwardplus_scatter_global_water_afog, !"cs_volumetric_forwardplus_scatter_global_water_afog", null, !4, !25}
!25 = !{i32 0, i64 272, i32 4, !26}
!26 = !{i32 4, i32 4, i32 4}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !{!32, !34}
!32 = distinct !{!32, !33, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!33 = distinct !{!33, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!34 = distinct !{!34, !33, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = !{!51, !53, !55, !32, !34}
!51 = distinct !{!51, !52, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!52 = distinct !{!52, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!53 = distinct !{!53, !54, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!54 = distinct !{!54, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!55 = distinct !{!55, !54, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = !{!58}
!58 = distinct !{!58, !59, !"\01?sort@@YAXAIAM00@Z: %c"}
!59 = distinct !{!59, !"\01?sort@@YAXAIAM00@Z"}
!60 = !{!61, !62, !51, !53, !55, !32, !34}
!61 = distinct !{!61, !59, !"\01?sort@@YAXAIAM00@Z: %a"}
!62 = distinct !{!62, !59, !"\01?sort@@YAXAIAM00@Z: %b"}
!63 = !{!62}
!64 = !{!61, !58, !51, !53, !55, !32, !34}
!65 = !{!61}
!66 = !{!62, !58, !51, !53, !55, !32, !34}
!67 = !{!68}
!68 = distinct !{!68, !69, !"\01?sort@@YAXAIAM00@Z: %c"}
!69 = distinct !{!69, !"\01?sort@@YAXAIAM00@Z"}
!70 = !{!71, !72, !51, !53, !55, !32, !34}
!71 = distinct !{!71, !69, !"\01?sort@@YAXAIAM00@Z: %a"}
!72 = distinct !{!72, !69, !"\01?sort@@YAXAIAM00@Z: %b"}
!73 = !{!72}
!74 = !{!71, !68, !51, !53, !55, !32, !34}
!75 = !{!71}
!76 = !{!72, !68, !51, !53, !55, !32, !34}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}

