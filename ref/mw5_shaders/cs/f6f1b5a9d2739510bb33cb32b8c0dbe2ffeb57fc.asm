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
; shader hash: b74638999b532d7f4434e94a0d3aaa39
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
;                                   sampler      NA          NA      S0             s0     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s4     1
;                                   texture     f32          2d      T0            t11     1
;                                   texture    byte         r/o      T1            t22     1
;                                   texture     f32          3d      T2            t10     1
;                                   texture    byte         r/o      T3            t19     1
;                                   texture    byte         r/o      T4            t20     1
;                                   texture     f32          1d      T5             t4     1
;                                   texture     f32     2darray      T6             t3     1
;                                   texture    byte         r/o      T7            t12     1
;                                   texture     f32          3d      T8             t5     1
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
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
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
%struct.SamplerComparisonState = type { i32 }
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
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %20 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %21 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %22 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %23 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 3
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 1
  %28 = mul i32 %27, %25
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 1
  %31 = mul i32 %28, %30
  %32 = add i32 %31, %22
  %33 = shl i32 %32, 2
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = and i32 %35, 255
  %37 = lshr i32 %35, 8
  %38 = and i32 %37, 255
  %39 = lshr i32 %35, 16
  %40 = and i32 %39, 255
  %41 = shl nuw nsw i32 %36, 2
  %42 = shl nuw nsw i32 %38, 2
  %43 = shl nuw nsw i32 %40, 2
  %44 = add i32 %41, %19
  %45 = add i32 %42, %20
  %46 = add i32 %43, %21
  %47 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.i32 %47, 0
  %49 = extractvalue %dx.types.CBufRet.i32 %47, 1
  %50 = extractvalue %dx.types.CBufRet.i32 %47, 2
  %51 = icmp uge i32 %44, %48
  %52 = icmp uge i32 %45, %49
  %53 = icmp uge i32 %46, %50
  %54 = or i1 %51, %52
  %55 = or i1 %53, %54
  %56 = xor i1 %55, true
  %57 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.i32 %57, 3
  %59 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %45, i32 %58)  ; UMad(a,b,c)
  %60 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %44, i32 %59)  ; UMad(a,b,c)
  %61 = mul i32 %60, -63
  %62 = lshr i32 %61, 17
  %63 = xor i32 %62, %61
  %64 = mul i32 %63, -511
  %65 = mul i32 %63, -8176
  %66 = xor i32 %64, %65
  %67 = mul i32 %66, -7
  %68 = mul i32 %66, -7168
  %69 = xor i32 %67, %68
  %70 = lshr i32 %69, 15
  %71 = xor i32 %70, %67
  %72 = and i32 %71, 127
  %73 = mul i32 %72, 3
  %74 = add i32 0, %73
  %75 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %74
  %76 = load float, float* %75, align 4
  %77 = mul i32 %72, 3
  %78 = add i32 1, %77
  %79 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %78
  %80 = load float, float* %79, align 4
  %81 = mul i32 %72, 3
  %82 = add i32 2, %81
  %83 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %82
  %84 = load float, float* %83, align 4
  %85 = uitofp i32 %58 to float
  %86 = fmul fast float %85, 0x3FEA36A940000000
  %87 = fmul fast float %85, 0x3FE5793080000000
  %88 = fmul fast float %85, 0x3FE1972580000000
  %89 = fadd fast float %76, %86
  %90 = fadd fast float %80, %87
  %91 = fadd fast float %84, %88
  %92 = call float @dx.op.unary.f32(i32 22, float %89)  ; Frc(value)
  %93 = call float @dx.op.unary.f32(i32 22, float %90)  ; Frc(value)
  %94 = call float @dx.op.unary.f32(i32 22, float %91)  ; Frc(value)
  %95 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %44, i32 %45, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = fcmp fast ogt float %96, -1.000000e+00
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 1
  %100 = select i1 %97, float %99, float 1.000000e+00
  %101 = fadd fast float %96, 1.000000e+00
  %102 = fmul fast float %100, %101
  %103 = uitofp i32 %44 to float
  %104 = uitofp i32 %45 to float
  %105 = uitofp i32 %46 to float
  %106 = fadd fast float %103, -5.000000e-01
  %107 = fadd fast float %106, %92
  %108 = fadd fast float %104, -5.000000e-01
  %109 = fadd fast float %108, %93
  %110 = fadd fast float %105, -5.000000e-01
  %111 = fadd fast float %110, %94
  %112 = fadd fast float %107, 5.000000e-01
  %113 = fadd fast float %109, 5.000000e-01
  %114 = fadd fast float %111, 5.000000e-01
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %118 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %119 = fmul fast float %116, %112
  %120 = fmul fast float %117, %113
  %121 = fmul fast float %118, %114
  %122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.i32 %122, 0
  %124 = uitofp i32 %123 to float
  %125 = fmul fast float %124, %121
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = fmul fast float %125, %128
  %130 = call float @dx.op.unary.f32(i32 21, float %129)  ; Exp(value)
  %131 = fmul fast float %130, %127
  %132 = fsub fast float 4.000000e+00, %127
  %133 = fadd fast float %132, %131
  %134 = call float @dx.op.binary.f32(i32 36, float %133, float %102)  ; FMin(a,b)
  %135 = fmul fast float %119, 2.000000e+00
  %136 = fmul fast float %120, 2.000000e+00
  %137 = fsub fast float 1.000000e+00, %135
  %138 = fsub fast float 1.000000e+00, %136
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %142 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %143 = fmul fast float %140, %137
  %144 = fmul fast float %141, %137
  %145 = fmul fast float %142, %137
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = fmul fast float %147, %138
  %151 = fmul fast float %148, %138
  %152 = fmul fast float %149, %138
  %153 = fadd fast float %150, %143
  %154 = fadd fast float %151, %144
  %155 = fadd fast float %152, %145
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %160 = fadd fast float %153, %157
  %161 = fadd fast float %154, %158
  %162 = fadd fast float %155, %159
  %163 = fmul fast float %160, %134
  %164 = fmul fast float %161, %134
  %165 = fmul fast float %162, %134
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %168 = fadd fast float %165, %167
  %169 = call float @dx.op.dot3.f32(i32 55, float %163, float %164, float %165, float %163, float %164, float %165)  ; Dot3(ax,ay,az,bx,by,bz)
  %170 = call float @dx.op.unary.f32(i32 25, float %169)  ; Rsqrt(value)
  %171 = fmul fast float %163, %170
  %172 = fmul fast float %164, %170
  %173 = fmul fast float %165, %170
  %174 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %175 = fmul fast float %174, 0x3FE62E4300000000
  %176 = fmul fast float %175, %175
  %177 = select i1 %55, float 0.000000e+00, float 1.000000e+00
  %178 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %23
  store float %177, float addrspace(3)* %178, align 4, !tbaa !31, !noalias !35
  %179 = fmul fast float %175, %177
  %180 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %23
  store float %179, float addrspace(3)* %180, align 4, !tbaa !31, !noalias !35
  %181 = fmul fast float %176, %177
  %182 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %23
  store float %181, float addrspace(3)* %182, align 4, !tbaa !31, !noalias !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %183 = xor i32 %23, 4
  %184 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %183
  %185 = load float, float addrspace(3)* %184, align 4, !tbaa !31, !noalias !35
  %186 = fadd fast float %185, %177
  %187 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %183
  %188 = load float, float addrspace(3)* %187, align 4, !tbaa !31, !noalias !35
  %189 = fadd fast float %188, %175
  %190 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %183
  %191 = load float, float addrspace(3)* %190, align 4, !tbaa !31, !noalias !35
  %192 = fadd fast float %191, %176
  store float %186, float addrspace(3)* %178, align 4, !tbaa !31, !noalias !35
  store float %189, float addrspace(3)* %180, align 4, !tbaa !31, !noalias !35
  store float %192, float addrspace(3)* %182, align 4, !tbaa !31, !noalias !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %193 = xor i32 %23, 16
  %194 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %193
  %195 = load float, float addrspace(3)* %194, align 4, !tbaa !31, !noalias !35
  %196 = fadd fast float %195, %186
  %197 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %193
  %198 = load float, float addrspace(3)* %197, align 4, !tbaa !31, !noalias !35
  %199 = fadd fast float %198, %189
  %200 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %193
  %201 = load float, float addrspace(3)* %200, align 4, !tbaa !31, !noalias !35
  %202 = fadd fast float %201, %192
  store float %196, float addrspace(3)* %178, align 4, !tbaa !31, !noalias !35
  store float %199, float addrspace(3)* %180, align 4, !tbaa !31, !noalias !35
  store float %202, float addrspace(3)* %182, align 4, !tbaa !31, !noalias !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %203 = xor i32 %23, 1
  %204 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %203
  %205 = load float, float addrspace(3)* %204, align 4, !tbaa !31, !noalias !35
  %206 = fadd fast float %205, %196
  %207 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %203
  %208 = load float, float addrspace(3)* %207, align 4, !tbaa !31, !noalias !35
  %209 = fadd fast float %208, %199
  %210 = fdiv fast float %209, %206
  %211 = and i32 %44, 1
  %212 = and i32 %211, %45
  %213 = and i32 %212, %46
  %214 = icmp ne i32 %213, 0
  %215 = and i1 %214, %56
  br i1 %215, label %216, label %224, !dx.controlflow.hints !39

; <label>:216                                     ; preds = %0
  %217 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %203
  %218 = load float, float addrspace(3)* %217, align 4, !tbaa !31, !noalias !35
  %219 = fadd fast float %218, %202
  %220 = fdiv fast float %219, %206
  %221 = lshr i32 %44, 1
  %222 = lshr i32 %45, 1
  %223 = lshr i32 %46, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %221, i32 %222, i32 %223, float %210, float %220, float %210, float %210, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %224

; <label>:224                                     ; preds = %216, %0
  br i1 %55, label %226, label %225, !dx.controlflow.hints !40

; <label>:225                                     ; preds = %224
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %44, i32 %45, i32 %46, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %226

; <label>:226                                     ; preds = %225, %224
  store float %177, float addrspace(3)* %178, align 4, !tbaa !31, !noalias !35
  store float 0.000000e+00, float addrspace(3)* %180, align 4, !tbaa !31, !noalias !35
  store float 0.000000e+00, float addrspace(3)* %182, align 4, !tbaa !31, !noalias !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %227 = load float, float addrspace(3)* %184, align 4, !tbaa !31, !noalias !35
  %228 = fadd fast float %227, %177
  %229 = load float, float addrspace(3)* %187, align 4, !tbaa !31, !noalias !35
  %230 = load float, float addrspace(3)* %190, align 4, !tbaa !31, !noalias !35
  store float %228, float addrspace(3)* %178, align 4, !tbaa !31, !noalias !35
  store float %229, float addrspace(3)* %180, align 4, !tbaa !31, !noalias !35
  store float %230, float addrspace(3)* %182, align 4, !tbaa !31, !noalias !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %231 = load float, float addrspace(3)* %194, align 4, !tbaa !31, !noalias !35
  %232 = fadd fast float %231, %228
  %233 = load float, float addrspace(3)* %197, align 4, !tbaa !31, !noalias !35
  %234 = fadd fast float %233, %229
  %235 = load float, float addrspace(3)* %200, align 4, !tbaa !31, !noalias !35
  %236 = fadd fast float %235, %230
  store float %232, float addrspace(3)* %178, align 4, !tbaa !31, !noalias !35
  store float %234, float addrspace(3)* %180, align 4, !tbaa !31, !noalias !35
  store float %236, float addrspace(3)* %182, align 4, !tbaa !31, !noalias !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %237 = load float, float addrspace(3)* %204, align 4, !tbaa !31, !noalias !35
  %238 = fadd fast float %237, %232
  %239 = load float, float addrspace(3)* %207, align 4, !tbaa !31, !noalias !35
  %240 = fadd fast float %239, %234
  %241 = fdiv fast float %240, %238
  br i1 %215, label %242, label %250, !dx.controlflow.hints !41

; <label>:242                                     ; preds = %226
  %243 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %203
  %244 = load float, float addrspace(3)* %243, align 4, !tbaa !31, !noalias !35
  %245 = fadd fast float %244, %236
  %246 = fdiv fast float %245, %238
  %247 = lshr i32 %44, 1
  %248 = lshr i32 %45, 1
  %249 = lshr i32 %46, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %247, i32 %248, i32 %249, float %241, float %246, float %241, float %241, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %250

; <label>:250                                     ; preds = %242, %226
  br i1 %55, label %252, label %251, !dx.controlflow.hints !42

; <label>:251                                     ; preds = %250
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %44, i32 %45, i32 %46, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %252

; <label>:252                                     ; preds = %251, %250
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 0
  %255 = extractvalue %dx.types.CBufRet.f32 %253, 1
  %256 = fsub fast float %168, %254
  %257 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %256)  ; FMax(a,b)
  %258 = fmul fast float %257, 0x3FF7154760000000
  %259 = fmul fast float %258, %255
  %260 = call float @dx.op.unary.f32(i32 21, float %259)  ; Exp(value)
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 0
  %263 = extractvalue %dx.types.CBufRet.f32 %261, 1
  %264 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 1
  %267 = fmul fast float %266, %260
  %268 = fmul fast float %267, %262
  %269 = fmul fast float %267, %263
  %270 = fmul fast float %267, %264
  %271 = fcmp fast ogt float %267, 0.000000e+00
  br i1 %271, label %272, label %1033, !dx.controlflow.hints !43

; <label>:272                                     ; preds = %252
  %273 = extractvalue %dx.types.CBufRet.f32 %265, 2
  %274 = fmul fast float %273, %267
  %275 = fdiv fast float 1.000000e+00, %267
  %276 = fmul fast float %275, %268
  %277 = fmul fast float %275, %269
  %278 = fmul fast float %275, %270
  %279 = fmul fast float %274, %275
  %280 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.i32 %280, 2
  %282 = extractvalue %dx.types.CBufRet.i32 %280, 3
  %283 = call i32 @dx.op.tertiary.i32(i32 49, i32 %38, i32 %281, i32 %36)  ; UMad(a,b,c)
  %284 = call i32 @dx.op.tertiary.i32(i32 49, i32 %40, i32 %282, i32 %283)  ; UMad(a,b,c)
  %285 = fadd fast float %103, 1.000000e+00
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 0
  %288 = extractvalue %dx.types.CBufRet.f32 %286, 1
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 0
  %291 = extractvalue %dx.types.CBufRet.f32 %289, 1
  %292 = fmul fast float %291, %111
  %293 = call float @dx.op.unary.f32(i32 21, float %292)  ; Exp(value)
  %294 = fmul fast float %293, %290
  %295 = fsub fast float 4.000000e+00, %290
  %296 = fadd fast float %295, %294
  %297 = fmul fast float %285, 2.000000e+00
  %298 = fmul fast float %297, %287
  %299 = fmul fast float %104, 2.000000e+00
  %300 = fmul fast float %299, %288
  %301 = fsub fast float 1.000000e+00, %298
  %302 = fsub fast float 1.000000e+00, %300
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 0
  %305 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %306 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %307 = fmul fast float %304, %301
  %308 = fmul fast float %305, %301
  %309 = fmul fast float %306, %301
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %312 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %313 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %314 = fmul fast float %311, %302
  %315 = fmul fast float %312, %302
  %316 = fmul fast float %313, %302
  %317 = fadd fast float %314, %307
  %318 = fadd fast float %315, %308
  %319 = fadd fast float %316, %309
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %323 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %324 = fadd fast float %317, %321
  %325 = fadd fast float %318, %322
  %326 = fadd fast float %319, %323
  %327 = fadd fast float %104, 1.000000e+00
  %328 = fmul fast float %103, 2.000000e+00
  %329 = fmul fast float %328, %287
  %330 = fmul fast float %327, 2.000000e+00
  %331 = fmul fast float %330, %288
  %332 = fsub fast float 1.000000e+00, %329
  %333 = fsub fast float 1.000000e+00, %331
  %334 = fmul fast float %304, %332
  %335 = fmul fast float %305, %332
  %336 = fmul fast float %306, %332
  %337 = fmul fast float %311, %333
  %338 = fmul fast float %312, %333
  %339 = fmul fast float %313, %333
  %340 = fadd fast float %337, %334
  %341 = fadd fast float %338, %335
  %342 = fadd fast float %339, %336
  %343 = fadd fast float %340, %321
  %344 = fadd fast float %341, %322
  %345 = fadd fast float %342, %323
  %346 = fmul fast float %343, %296
  %347 = fmul fast float %344, %296
  %348 = fmul fast float %345, %296
  %349 = fadd fast float %343, %324
  %350 = fmul fast float %296, %349
  %351 = fadd fast float %344, %325
  %352 = fmul fast float %296, %351
  %353 = fadd fast float %345, %326
  %354 = fmul fast float %296, %353
  %355 = fmul fast float %350, 5.000000e-01
  %356 = fmul fast float %352, 5.000000e-01
  %357 = fmul fast float %354, 5.000000e-01
  %358 = fsub fast float %355, %346
  %359 = fsub fast float %356, %347
  %360 = fsub fast float %357, %348
  %361 = call float @dx.op.dot3.f32(i32 55, float %358, float %359, float %360, float %358, float %359, float %360)  ; Dot3(ax,ay,az,bx,by,bz)
  %362 = call float @dx.op.unary.f32(i32 25, float %361)  ; Rsqrt(value)
  %363 = fmul fast float %362, %361
  %364 = fmul fast float %291, %105
  %365 = call float @dx.op.unary.f32(i32 21, float %364)  ; Exp(value)
  %366 = fmul fast float %365, %290
  %367 = fadd fast float %295, %366
  %368 = fmul fast float %112, 2.000000e+00
  %369 = fmul fast float %368, %287
  %370 = fmul fast float %113, 2.000000e+00
  %371 = fmul fast float %370, %288
  %372 = fsub fast float 1.000000e+00, %369
  %373 = fsub fast float 1.000000e+00, %371
  %374 = fmul fast float %304, %372
  %375 = fmul fast float %305, %372
  %376 = fmul fast float %306, %372
  %377 = fmul fast float %311, %373
  %378 = fmul fast float %312, %373
  %379 = fmul fast float %313, %373
  %380 = fadd fast float %377, %374
  %381 = fadd fast float %378, %375
  %382 = fadd fast float %379, %376
  %383 = fadd fast float %380, %321
  %384 = fadd fast float %381, %322
  %385 = fadd fast float %382, %323
  %386 = fmul fast float %383, %367
  %387 = fmul fast float %384, %367
  %388 = fmul fast float %385, %367
  %389 = fadd fast float %105, 1.000000e+00
  %390 = fmul fast float %291, %389
  %391 = call float @dx.op.unary.f32(i32 21, float %390)  ; Exp(value)
  %392 = fsub fast float %391, %365
  %393 = fmul fast float %290, %392
  %394 = fmul fast float %383, %393
  %395 = fsub fast float %391, %365
  %396 = fmul fast float %290, %395
  %397 = fmul fast float %384, %396
  %398 = fsub fast float %391, %365
  %399 = fmul fast float %290, %398
  %400 = fmul fast float %385, %399
  %401 = call float @dx.op.dot3.f32(i32 55, float %394, float %397, float %400, float %394, float %397, float %400)  ; Dot3(ax,ay,az,bx,by,bz)
  %402 = call float @dx.op.unary.f32(i32 25, float %401)  ; Rsqrt(value)
  %403 = fmul fast float %402, %401
  %404 = fmul fast float %394, %402
  %405 = fmul fast float %397, %402
  %406 = fmul fast float %400, %402
  %407 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %408 = extractvalue %dx.types.CBufRet.i32 %407, 0
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %1004, label %410, !dx.controlflow.hints !44

; <label>:410                                     ; preds = %272
  %411 = add nsw i32 %408, -1
  %412 = call i32 @dx.op.binary.i32(i32 37, i32 %411, i32 0)  ; IMax(a,b)
  br label %413

; <label>:413                                     ; preds = %997, %410
  %414 = phi i32 [ 0, %410 ], [ %1001, %997 ]
  %415 = phi float [ 0.000000e+00, %410 ], [ %998, %997 ]
  %416 = phi float [ 0.000000e+00, %410 ], [ %999, %997 ]
  %417 = phi float [ 0.000000e+00, %410 ], [ %1000, %997 ]
  %418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.i32 %418, 0
  %420 = call i32 @dx.op.tertiary.i32(i32 49, i32 %284, i32 %419, i32 %414)  ; UMad(a,b,c)
  %421 = shl i32 %420, 2
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %997, label %425

; <label>:425                                     ; preds = %413
  br label %426

; <label>:426                                     ; preds = %865, %425
  %427 = phi i32 [ %436, %865 ], [ %423, %425 ]
  %428 = phi float [ %866, %865 ], [ %415, %425 ]
  %429 = phi float [ %867, %865 ], [ %416, %425 ]
  %430 = phi float [ %868, %865 ], [ %417, %425 ]
  %431 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %427)  ; FirstbitLo(value)
  %432 = shl i32 %414, 5
  %433 = add i32 %431, %432
  %434 = and i32 %431, 31
  %435 = shl i32 1, %434
  %436 = xor i32 %435, %427
  %437 = mul i32 %433, 112
  %438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = extractvalue %dx.types.ResRet.f32 %438, 2
  %442 = or i32 %437, 12
  %443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.f32 %443, 0
  %445 = add i32 %437, 16
  %446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = extractvalue %dx.types.ResRet.f32 %446, 1
  %449 = extractvalue %dx.types.ResRet.f32 %446, 2
  %450 = add i32 %437, 28
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = add i32 %437, 32
  %454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = extractvalue %dx.types.ResRet.f32 %454, 1
  %457 = extractvalue %dx.types.ResRet.f32 %454, 2
  %458 = add i32 %437, 44
  %459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = add i32 %437, 48
  %462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = extractvalue %dx.types.ResRet.f32 %462, 1
  %465 = extractvalue %dx.types.ResRet.f32 %462, 2
  %466 = extractvalue %dx.types.ResRet.f32 %462, 3
  %467 = add i32 %437, 64
  %468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = extractvalue %dx.types.ResRet.f32 %468, 1
  %471 = extractvalue %dx.types.ResRet.f32 %468, 2
  %472 = extractvalue %dx.types.ResRet.f32 %468, 3
  %473 = add i32 %437, 92
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = and i32 %475, 65535
  %477 = uitofp i32 %476 to float
  %478 = lshr i32 %475, 16
  %479 = uitofp i32 %478 to float
  %480 = and i32 %452, 65535
  %481 = and i32 %452, 50331648
  %482 = icmp eq i32 %481, 33554432
  %483 = fdiv fast float 1.000000e+00, %403
  br i1 %482, label %484, label %676, !dx.controlflow.hints !45

; <label>:484                                     ; preds = %426
  %485 = fsub fast float %463, %455
  %486 = fsub fast float %464, %456
  %487 = fsub fast float %465, %457
  %488 = fmul fast float %404, %403
  %489 = fmul fast float %405, %403
  %490 = fmul fast float %406, %403
  %491 = fadd fast float %488, %386
  %492 = fadd fast float %489, %387
  %493 = fadd fast float %490, %388
  %494 = fmul fast float %455, 2.000000e+00
  %495 = fmul fast float %456, 2.000000e+00
  %496 = fmul fast float %457, 2.000000e+00
  %497 = call float @dx.op.dot3.f32(i32 55, float %494, float %495, float %496, float %494, float %495, float %496)  ; Dot3(ax,ay,az,bx,by,bz)
  %498 = fdiv fast float %494, %497
  %499 = fdiv fast float %495, %497
  %500 = fdiv fast float %496, %497
  %501 = fsub fast float %386, %485
  %502 = fsub fast float %387, %486
  %503 = fsub fast float %388, %487
  %504 = call float @dx.op.dot3.f32(i32 55, float %501, float %502, float %503, float %494, float %495, float %496)  ; Dot3(ax,ay,az,bx,by,bz)
  %505 = fmul fast float %504, %498
  %506 = fmul fast float %504, %499
  %507 = fmul fast float %504, %500
  %508 = fsub fast float %386, %505
  %509 = fsub fast float %387, %506
  %510 = fsub fast float %388, %507
  %511 = fsub fast float %491, %485
  %512 = fsub fast float %492, %486
  %513 = fsub fast float %493, %487
  %514 = call float @dx.op.dot3.f32(i32 55, float %511, float %512, float %513, float %494, float %495, float %496)  ; Dot3(ax,ay,az,bx,by,bz)
  %515 = fmul fast float %514, %498
  %516 = fmul fast float %514, %499
  %517 = fmul fast float %514, %500
  %518 = fsub fast float %491, %515
  %519 = fsub fast float %492, %516
  %520 = fsub fast float %493, %517
  %521 = fsub fast float %518, %508
  %522 = fsub fast float %519, %509
  %523 = fsub fast float %520, %510
  %524 = fsub fast float %485, %508
  %525 = fsub fast float %486, %509
  %526 = fsub fast float %487, %510
  %527 = call float @dx.op.dot3.f32(i32 55, float %524, float %525, float %526, float %521, float %522, float %523)  ; Dot3(ax,ay,az,bx,by,bz)
  %528 = call float @dx.op.dot3.f32(i32 55, float %521, float %522, float %523, float %521, float %522, float %523)  ; Dot3(ax,ay,az,bx,by,bz)
  %529 = fdiv fast float %527, %528
  %530 = fcmp fast une float %508, %518
  %531 = fcmp fast une float %509, %519
  %532 = fcmp fast une float %510, %520
  %533 = or i1 %530, %531
  %534 = or i1 %532, %533
  %535 = select i1 %534, float %529, float 0.000000e+00
  %536 = call float @dx.op.unary.f32(i32 7, float %535)  ; Saturate(value)
  %537 = fmul fast float %536, %488
  %538 = fmul fast float %536, %489
  %539 = fmul fast float %536, %490
  %540 = fadd fast float %501, %537
  %541 = fadd fast float %502, %538
  %542 = fadd fast float %503, %539
  %543 = call float @dx.op.dot3.f32(i32 55, float %540, float %541, float %542, float %494, float %495, float %496)  ; Dot3(ax,ay,az,bx,by,bz)
  %544 = fdiv fast float %543, %497
  %545 = call float @dx.op.unary.f32(i32 7, float %544)  ; Saturate(value)
  %546 = fmul fast float %494, %545
  %547 = fmul fast float %495, %545
  %548 = fmul fast float %496, %545
  %549 = fadd fast float %546, %485
  %550 = fadd fast float %547, %486
  %551 = fadd fast float %548, %487
  %552 = fmul fast float %471, %447
  %553 = fmul fast float %471, %448
  %554 = fmul fast float %471, %449
  %555 = fadd fast float %549, %552
  %556 = fadd fast float %550, %553
  %557 = fadd fast float %551, %554
  %558 = fsub fast float -0.000000e+00, %470
  %559 = fdiv fast float %558, %469
  %560 = fmul fast float %559, %559
  %561 = call float @dx.op.dot3.f32(i32 55, float %404, float %405, float %406, float %447, float %448, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %562 = fsub fast float %386, %555
  %563 = fsub fast float %387, %556
  %564 = fsub fast float %388, %557
  %565 = call float @dx.op.dot3.f32(i32 55, float %562, float %563, float %564, float %447, float %448, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %566 = fsub fast float %555, %386
  %567 = fsub fast float %556, %387
  %568 = fsub fast float %557, %388
  %569 = fmul fast float %561, %561
  %570 = fsub fast float %569, %560
  %571 = fmul fast float %565, %561
  %572 = call float @dx.op.dot3.f32(i32 55, float %566, float %567, float %568, float %404, float %405, float %406)  ; Dot3(ax,ay,az,bx,by,bz)
  %573 = fmul fast float %572, %560
  %574 = fadd fast float %573, %571
  %575 = fmul fast float %574, 2.000000e+00
  %576 = fmul fast float %565, %565
  %577 = call float @dx.op.dot3.f32(i32 55, float %566, float %567, float %568, float %566, float %567, float %568)  ; Dot3(ax,ay,az,bx,by,bz)
  %578 = fmul fast float %577, %560
  %579 = fsub fast float %576, %578
  %580 = fmul fast float %575, %575
  %581 = fmul fast float %570, 4.000000e+00
  %582 = fmul fast float %581, %579
  %583 = fsub fast float %580, %582
  %584 = fcmp fast ogt float %583, 0.000000e+00
  br i1 %584, label %585, label %676, !dx.controlflow.hints !46

; <label>:585                                     ; preds = %484
  %586 = call float @dx.op.unary.f32(i32 24, float %583)  ; Sqrt(value)
  %587 = fdiv fast float 5.000000e-01, %570
  %588 = fsub fast float -0.000000e+00, %575
  %589 = fsub fast float %588, %586
  %590 = fmul fast float %589, %587
  %591 = fsub fast float %586, %575
  %592 = fmul fast float %591, %587
  %593 = call float @dx.op.binary.f32(i32 35, float %590, float %592)  ; FMax(a,b)
  %594 = call float @dx.op.binary.f32(i32 36, float %590, float %592)  ; FMin(a,b)
  %595 = fsub fast float %549, %386
  %596 = fsub fast float %550, %387
  %597 = fsub fast float %551, %388
  %598 = call float @dx.op.dot3.f32(i32 55, float %595, float %596, float %597, float %447, float %448, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %599 = fdiv fast float %598, %561
  %600 = fcmp fast ogt float %561, 0.000000e+00
  br i1 %600, label %601, label %604, !dx.controlflow.hints !47

; <label>:601                                     ; preds = %585
  %602 = call float @dx.op.binary.f32(i32 36, float %594, float %599)  ; FMin(a,b)
  %603 = call float @dx.op.binary.f32(i32 36, float %593, float %599)  ; FMin(a,b)
  br label %607

; <label>:604                                     ; preds = %585
  %605 = call float @dx.op.binary.f32(i32 35, float %594, float %599)  ; FMax(a,b)
  %606 = call float @dx.op.binary.f32(i32 35, float %593, float %599)  ; FMax(a,b)
  br label %607

; <label>:607                                     ; preds = %604, %601
  %608 = phi float [ %602, %601 ], [ %605, %604 ]
  %609 = phi float [ %603, %601 ], [ %606, %604 ]
  %610 = fcmp fast oge float %608, 0.000000e+00
  %611 = fcmp fast olt float %608, %403
  %612 = and i1 %610, %611
  %613 = fcmp fast ogt float %609, 0.000000e+00
  %614 = fcmp fast ole float %609, %403
  %615 = and i1 %613, %614
  %616 = or i1 %612, %615
  br i1 %616, label %617, label %676, !dx.controlflow.hints !48

; <label>:617                                     ; preds = %607
  %618 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %608)  ; FMax(a,b)
  %619 = call float @dx.op.binary.f32(i32 36, float %403, float %609)  ; FMin(a,b)
  br i1 %600, label %620, label %642, !dx.controlflow.hints !49

; <label>:620                                     ; preds = %617
  %621 = fmul fast float %619, %404
  %622 = fmul fast float %619, %405
  %623 = fmul fast float %619, %406
  %624 = fsub fast float %566, %621
  %625 = fsub fast float %567, %622
  %626 = fsub fast float %568, %623
  %627 = call float @dx.op.dot3.f32(i32 55, float %624, float %625, float %626, float %624, float %625, float %626)  ; Dot3(ax,ay,az,bx,by,bz)
  %628 = call float @dx.op.unary.f32(i32 25, float %627)  ; Rsqrt(value)
  %629 = fmul fast float %628, %624
  %630 = fmul fast float %628, %625
  %631 = fmul fast float %628, %626
  %632 = call float @dx.op.dot3.f32(i32 55, float %629, float %630, float %631, float %447, float %448, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %633 = fmul fast float %632, %469
  %634 = fadd fast float %633, %470
  %635 = fcmp fast olt float %634, 0xBF1A36E2E0000000
  %636 = select i1 %635, float 0.000000e+00, float %618
  %637 = select i1 %635, float %618, float %619
  %638 = fsub fast float %636, %637
  %639 = call float @dx.op.unary.f32(i32 6, float %638)  ; FAbs(value)
  %640 = fcmp fast olt float %639, 0x3F1A36E2E0000000
  br i1 %640, label %641, label %664, !dx.controlflow.hints !50

; <label>:641                                     ; preds = %620
  br label %664

; <label>:642                                     ; preds = %617
  %643 = fmul fast float %618, %404
  %644 = fmul fast float %618, %405
  %645 = fmul fast float %618, %406
  %646 = fsub fast float %566, %643
  %647 = fsub fast float %567, %644
  %648 = fsub fast float %568, %645
  %649 = call float @dx.op.dot3.f32(i32 55, float %646, float %647, float %648, float %646, float %647, float %648)  ; Dot3(ax,ay,az,bx,by,bz)
  %650 = call float @dx.op.unary.f32(i32 25, float %649)  ; Rsqrt(value)
  %651 = fmul fast float %650, %646
  %652 = fmul fast float %650, %647
  %653 = fmul fast float %650, %648
  %654 = call float @dx.op.dot3.f32(i32 55, float %651, float %652, float %653, float %447, float %448, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %655 = fmul fast float %654, %469
  %656 = fadd fast float %655, %470
  %657 = fcmp fast olt float %656, 0xBF1A36E2E0000000
  %658 = select i1 %657, float %619, float %618
  %659 = select i1 %657, float %403, float %619
  %660 = fsub fast float %658, %659
  %661 = call float @dx.op.unary.f32(i32 6, float %660)  ; FAbs(value)
  %662 = fcmp fast olt float %661, 0x3F1A36E2E0000000
  br i1 %662, label %663, label %664, !dx.controlflow.hints !51

; <label>:663                                     ; preds = %642
  br label %664

; <label>:664                                     ; preds = %663, %642, %641, %620
  %665 = phi float [ 0.000000e+00, %641 ], [ %636, %620 ], [ %658, %663 ], [ %658, %642 ]
  %666 = phi float [ %637, %641 ], [ %637, %620 ], [ %403, %663 ], [ %659, %642 ]
  %667 = fmul fast float %665, %404
  %668 = fmul fast float %665, %405
  %669 = fmul fast float %665, %406
  %670 = fadd fast float %667, %386
  %671 = fadd fast float %668, %387
  %672 = fadd fast float %669, %388
  %673 = fsub fast float %666, %665
  %674 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %673)  ; FMax(a,b)
  %675 = fmul fast float %674, %483
  br label %676

; <label>:676                                     ; preds = %664, %607, %484, %426
  %677 = phi float [ %555, %664 ], [ %555, %607 ], [ %555, %484 ], [ %463, %426 ]
  %678 = phi float [ %556, %664 ], [ %556, %607 ], [ %556, %484 ], [ %464, %426 ]
  %679 = phi float [ %557, %664 ], [ %557, %607 ], [ %557, %484 ], [ %465, %426 ]
  %680 = phi float [ %670, %664 ], [ %386, %607 ], [ %386, %484 ], [ %386, %426 ]
  %681 = phi float [ %671, %664 ], [ %387, %607 ], [ %387, %484 ], [ %387, %426 ]
  %682 = phi float [ %672, %664 ], [ %388, %607 ], [ %388, %484 ], [ %388, %426 ]
  %683 = phi float [ %674, %664 ], [ %403, %607 ], [ %403, %484 ], [ %403, %426 ]
  %684 = phi float [ %675, %664 ], [ 1.000000e+00, %607 ], [ 1.000000e+00, %484 ], [ 1.000000e+00, %426 ]
  %685 = fsub fast float %677, %680
  %686 = fsub fast float %678, %681
  %687 = fsub fast float %679, %682
  %688 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %404, float %405, float %406)  ; Dot3(ax,ay,az,bx,by,bz)
  %689 = call float @dx.op.binary.f32(i32 35, float %688, float 0.000000e+00)  ; FMax(a,b)
  %690 = call float @dx.op.binary.f32(i32 36, float %689, float %683)  ; FMin(a,b)
  %691 = fmul fast float %690, %404
  %692 = fmul fast float %690, %405
  %693 = fmul fast float %690, %406
  %694 = fsub fast float %680, %677
  %695 = fadd fast float %694, %691
  %696 = fsub fast float %681, %678
  %697 = fadd fast float %696, %692
  %698 = fsub fast float %682, %679
  %699 = fadd fast float %698, %693
  %700 = fmul fast float %695, %695
  %701 = fmul fast float %697, %697
  %702 = fadd fast float %700, %701
  %703 = fmul fast float %699, %699
  %704 = fadd fast float %702, %703
  %705 = call float @dx.op.unary.f32(i32 24, float %704)  ; Sqrt(value)
  %706 = fsub fast float -0.000000e+00, %690
  %707 = call float @dx.op.unary.f32(i32 6, float %706)  ; FAbs(value)
  %708 = fadd fast float %707, 0x3DDB7CDFE0000000
  %709 = fcmp fast oge float %705, 0.000000e+00
  %710 = fsub fast float -0.000000e+00, %708
  %711 = select i1 %709, float %710, float %708
  %712 = fadd fast float %711, %705
  %713 = fsub fast float -0.000000e+00, %705
  %714 = select i1 %709, float %705, float %713
  %715 = fadd fast float %708, %714
  %716 = fdiv fast float %712, %715
  %717 = select i1 %709, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %718 = fmul fast float %716, %716
  %719 = fmul fast float %718, 0x3FC9205BC0000000
  %720 = fadd fast float %719, 0xBFEF6A1620000000
  %721 = fmul fast float %720, %716
  %722 = fadd fast float %721, %717
  %723 = fcmp ole float %690, -0.000000e+00
  %724 = fsub fast float -0.000000e+00, %722
  %725 = select i1 %723, float %722, float %724
  %726 = fsub fast float %683, %690
  %727 = call float @dx.op.unary.f32(i32 6, float %726)  ; FAbs(value)
  %728 = fadd fast float %727, 0x3DDB7CDFE0000000
  %729 = fsub fast float -0.000000e+00, %728
  %730 = select i1 %709, float %729, float %728
  %731 = fadd fast float %730, %705
  %732 = fadd fast float %728, %714
  %733 = fdiv fast float %731, %732
  %734 = fmul fast float %733, %733
  %735 = fmul fast float %734, 0x3FC9205BC0000000
  %736 = fadd fast float %735, 0xBFEF6A1620000000
  %737 = fmul fast float %736, %733
  %738 = fadd fast float %737, %717
  %739 = fcmp fast oge float %726, 0.000000e+00
  %740 = fsub fast float -0.000000e+00, %738
  %741 = select i1 %739, float %738, float %740
  %742 = fsub fast float %741, %725
  %743 = fmul fast float %742, %94
  %744 = fadd fast float %743, %725
  %745 = call float @dx.op.unary.f32(i32 14, float %744)  ; Tan(value)
  %746 = fmul fast float %745, %705
  %747 = fadd fast float %746, %690
  %748 = fmul fast float %705, %705
  %749 = fmul fast float %746, %746
  %750 = fadd fast float %749, %748
  %751 = fmul fast float %742, %750
  %752 = fdiv fast float %705, %751
  %753 = fdiv fast float 1.000000e+00, %752
  %754 = fmul fast float %684, %483
  %755 = fmul fast float %754, %753
  %756 = fmul fast float %747, %404
  %757 = fmul fast float %747, %405
  %758 = fmul fast float %747, %406
  %759 = fadd fast float %756, %680
  %760 = fadd fast float %757, %681
  %761 = fadd fast float %758, %682
  %762 = call float @dx.op.dot3.f32(i32 55, float %455, float %456, float %457, float %455, float %456, float %457)  ; Dot3(ax,ay,az,bx,by,bz)
  %763 = fsub fast float %759, %463
  %764 = fsub fast float %760, %464
  %765 = fsub fast float %761, %465
  %766 = call float @dx.op.dot3.f32(i32 55, float %763, float %764, float %765, float %455, float %456, float %457)  ; Dot3(ax,ay,az,bx,by,bz)
  %767 = fdiv fast float %766, %762
  %768 = call float @dx.op.binary.f32(i32 35, float %767, float -1.000000e+00)  ; FMax(a,b)
  %769 = call float @dx.op.binary.f32(i32 36, float %768, float 1.000000e+00)  ; FMin(a,b)
  %770 = fmul fast float %769, %455
  %771 = fmul fast float %769, %456
  %772 = fmul fast float %769, %457
  %773 = fadd fast float %770, %463
  %774 = fadd fast float %771, %464
  %775 = fadd fast float %772, %465
  %776 = fsub fast float %773, %759
  %777 = fsub fast float %774, %760
  %778 = fsub fast float %775, %761
  %779 = call float @dx.op.dot3.f32(i32 55, float %776, float %777, float %778, float %776, float %777, float %778)  ; Dot3(ax,ay,az,bx,by,bz)
  %780 = call float @dx.op.unary.f32(i32 24, float %779)  ; Sqrt(value)
  %781 = fdiv fast float 1.000000e+00, %780
  %782 = fmul fast float %776, %781
  %783 = fmul fast float %777, %781
  %784 = fmul fast float %778, %781
  %785 = fadd fast float %780, %444
  %786 = fdiv fast float 1.000000e+00, %785
  %787 = fmul float %460, %786
  %788 = fmul float %787, %787
  %789 = call float @dx.op.unary.f32(i32 7, float %788)  ; Saturate(value)
  br i1 %482, label %790, label %814, !dx.controlflow.hints !52

; <label>:790                                     ; preds = %676
  %791 = fmul fast float %471, %447
  %792 = fmul fast float %471, %448
  %793 = fmul fast float %471, %449
  %794 = fsub fast float %791, %759
  %795 = fadd fast float %794, %773
  %796 = fsub fast float %792, %760
  %797 = fadd fast float %796, %774
  %798 = fsub fast float %793, %761
  %799 = fadd fast float %798, %775
  %800 = call float @dx.op.dot3.f32(i32 55, float %795, float %797, float %799, float %795, float %797, float %799)  ; Dot3(ax,ay,az,bx,by,bz)
  %801 = call float @dx.op.unary.f32(i32 25, float %800)  ; Rsqrt(value)
  %802 = fmul fast float %801, %795
  %803 = fmul fast float %801, %797
  %804 = fmul fast float %801, %799
  %805 = fsub fast float %759, %773
  %806 = fsub fast float %760, %774
  %807 = fsub fast float %761, %775
  %808 = fsub fast float -0.000000e+00, %805
  %809 = fsub fast float -0.000000e+00, %806
  %810 = fsub fast float -0.000000e+00, %807
  %811 = call float @dx.op.dot3.f32(i32 55, float %808, float %809, float %810, float %447, float %448, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %812 = fcmp fast ogt float %811, 0.000000e+00
  %813 = uitofp i1 %812 to float
  br label %814

; <label>:814                                     ; preds = %790, %676
  %815 = phi float [ %813, %790 ], [ 1.000000e+00, %676 ]
  %816 = phi float [ %802, %790 ], [ %782, %676 ]
  %817 = phi float [ %803, %790 ], [ %783, %676 ]
  %818 = phi float [ %804, %790 ], [ %784, %676 ]
  %819 = call float @dx.op.dot3.f32(i32 55, float %447, float %448, float %449, float %816, float %817, float %818)  ; Dot3(ax,ay,az,bx,by,bz)
  %820 = fmul fast float %819, %819
  %821 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  %822 = fsub fast float 1.000000e+00, %821
  %823 = fmul fast float %822, 5.000000e-01
  %824 = fcmp fast ogt float %819, 0.000000e+00
  %825 = fsub fast float 1.000000e+00, %823
  %826 = select i1 %824, float %823, float %825
  %827 = fmul fast float %826, %479
  %828 = fadd fast float %827, %477
  %829 = fmul fast float %828, 0x3EF0001000000000
  %830 = fsub fast float %773, %355
  %831 = fsub fast float %774, %356
  %832 = fsub fast float %775, %357
  %833 = call float @dx.op.dot3.f32(i32 55, float %830, float %831, float %832, float %830, float %831, float %832)  ; Dot3(ax,ay,az,bx,by,bz)
  %834 = fmul fast float %363, %363
  %835 = fsub fast float %833, %834
  %836 = fdiv fast float %835, %833
  %837 = call float @dx.op.unary.f32(i32 24, float %836)  ; Sqrt(value)
  %838 = fsub fast float 1.000000e+00, %837
  %839 = fcmp fast olt float %833, %834
  %840 = fmul fast float %838, 2.560000e+02
  %841 = select i1 %839, float 2.560000e+02, float %840
  %842 = call float @dx.op.unary.f32(i32 23, float %841)  ; Log(value)
  %843 = call float @dx.op.binary.f32(i32 36, float %842, float 7.000000e+00)  ; FMin(a,b)
  %844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %829, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float %843)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %845 = extractvalue %dx.types.ResRet.f32 %844, 0
  %846 = fmul fast float %819, %469
  %847 = fadd fast float %846, %470
  %848 = call float @dx.op.unary.f32(i32 7, float %847)  ; Saturate(value)
  %849 = select i1 %482, float 1.000000e+00, float %848
  %850 = select i1 %482, float %848, float 1.000000e+00
  %851 = fmul fast float %780, %466
  %852 = fsub fast float 1.000000e+00, %851
  %853 = fmul fast float %852, %472
  %854 = call float @dx.op.unary.f32(i32 7, float %853)  ; Saturate(value)
  %855 = fmul fast float %854, %850
  %856 = fmul fast float %855, 2.000000e+00
  %857 = fsub fast float 3.000000e+00, %856
  %858 = fmul fast float %845, %815
  %859 = fmul fast float %855, %855
  %860 = fmul fast float %859, %858
  %861 = fmul fast float %860, %857
  %862 = call float @dx.op.binary.f32(i32 36, float %861, float %861)  ; FMin(a,b)
  %863 = call float @dx.op.binary.f32(i32 36, float %861, float %862)  ; FMin(a,b)
  %864 = fcmp fast ogt float %863, 0.000000e+00
  br i1 %864, label %870, label %865, !dx.controlflow.hints !53

; <label>:865                                     ; preds = %963, %958, %814
  %866 = phi float [ %993, %963 ], [ %428, %958 ], [ %428, %814 ]
  %867 = phi float [ %994, %963 ], [ %429, %958 ], [ %429, %814 ]
  %868 = phi float [ %995, %963 ], [ %430, %958 ], [ %430, %814 ]
  %869 = icmp eq i32 %427, %435
  br i1 %869, label %996, label %426

; <label>:870                                     ; preds = %814
  %871 = icmp eq i32 %480, 255
  br i1 %871, label %958, label %872, !dx.controlflow.hints !54

; <label>:872                                     ; preds = %870
  %873 = mul nuw nsw i32 %480, 176
  %874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %873, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.f32 %874, 0
  %876 = extractvalue %dx.types.ResRet.f32 %874, 1
  %877 = extractvalue %dx.types.ResRet.f32 %874, 2
  %878 = extractvalue %dx.types.ResRet.f32 %874, 3
  %879 = add nuw nsw i32 %873, 16
  %880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %879, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.f32 %880, 0
  %882 = extractvalue %dx.types.ResRet.f32 %880, 1
  %883 = add nuw nsw i32 %873, 32
  %884 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.f32 %884, 0
  %886 = extractvalue %dx.types.ResRet.f32 %884, 2
  %887 = add nuw nsw i32 %873, 48
  %888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.f32 %888, 0
  %890 = extractvalue %dx.types.ResRet.f32 %888, 1
  %891 = extractvalue %dx.types.ResRet.f32 %888, 2
  %892 = extractvalue %dx.types.ResRet.f32 %888, 3
  %893 = add nuw nsw i32 %873, 64
  %894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.f32 %894, 0
  %896 = extractvalue %dx.types.ResRet.f32 %894, 1
  %897 = extractvalue %dx.types.ResRet.f32 %894, 2
  %898 = extractvalue %dx.types.ResRet.f32 %894, 3
  %899 = add nuw nsw i32 %873, 80
  %900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.f32 %900, 0
  %902 = extractvalue %dx.types.ResRet.f32 %900, 1
  %903 = extractvalue %dx.types.ResRet.f32 %900, 2
  %904 = extractvalue %dx.types.ResRet.f32 %900, 3
  %905 = add nuw nsw i32 %873, 96
  %906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.f32 %906, 0
  %908 = extractvalue %dx.types.ResRet.f32 %906, 1
  %909 = extractvalue %dx.types.ResRet.f32 %906, 2
  %910 = extractvalue %dx.types.ResRet.f32 %906, 3
  %911 = bitcast float %882 to i32
  %912 = fmul fast float %886, %782
  %913 = fmul fast float %886, %783
  %914 = fmul fast float %886, %784
  %915 = fsub fast float %759, %912
  %916 = fsub fast float %760, %913
  %917 = fsub fast float %761, %914
  %918 = fmul fast float %915, %889
  %919 = call float @dx.op.tertiary.f32(i32 46, float %916, float %895, float %918)  ; FMad(a,b,c)
  %920 = call float @dx.op.tertiary.f32(i32 46, float %917, float %901, float %919)  ; FMad(a,b,c)
  %921 = fadd fast float %920, %907
  %922 = fmul fast float %915, %890
  %923 = call float @dx.op.tertiary.f32(i32 46, float %916, float %896, float %922)  ; FMad(a,b,c)
  %924 = call float @dx.op.tertiary.f32(i32 46, float %917, float %902, float %923)  ; FMad(a,b,c)
  %925 = fadd fast float %924, %908
  %926 = fmul fast float %915, %891
  %927 = call float @dx.op.tertiary.f32(i32 46, float %916, float %897, float %926)  ; FMad(a,b,c)
  %928 = call float @dx.op.tertiary.f32(i32 46, float %917, float %903, float %927)  ; FMad(a,b,c)
  %929 = fadd fast float %928, %909
  %930 = fmul fast float %915, %892
  %931 = call float @dx.op.tertiary.f32(i32 46, float %916, float %898, float %930)  ; FMad(a,b,c)
  %932 = call float @dx.op.tertiary.f32(i32 46, float %917, float %904, float %931)  ; FMad(a,b,c)
  %933 = fadd fast float %932, %910
  %934 = fdiv fast float %921, %933
  %935 = fdiv fast float %925, %933
  %936 = fdiv fast float %929, %933
  %937 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %936)  ; FMax(a,b)
  %938 = fmul fast float %877, 5.000000e-01
  %939 = call float @dx.op.tertiary.f32(i32 46, float %938, float -0.000000e+00, float 0.000000e+00)  ; FMad(a,b,c)
  %940 = fadd fast float %939, %934
  %941 = fadd fast float %935, %938
  %942 = fmul fast float %940, %881
  %943 = fmul fast float %941, %881
  %944 = call float @dx.op.binary.f32(i32 35, float %942, float %877)  ; FMax(a,b)
  %945 = call float @dx.op.binary.f32(i32 35, float %943, float %877)  ; FMax(a,b)
  %946 = call float @dx.op.binary.f32(i32 36, float %944, float %878)  ; FMin(a,b)
  %947 = call float @dx.op.binary.f32(i32 36, float %945, float %878)  ; FMin(a,b)
  %948 = fadd fast float %946, %875
  %949 = fadd fast float %947, %876
  %950 = uitofp i32 %911 to float
  %951 = fadd fast float %937, %885
  %952 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %16, float %948, float %949, float %950, float undef, i32 0, i32 0, i32 undef, float %951)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %953 = extractvalue %dx.types.ResRet.f32 %952, 0
  %954 = fadd fast float %953, -1.000000e+00
  %955 = fmul fast float %954, %849
  %956 = fadd fast float %955, 1.000000e+00
  %957 = fmul fast float %956, %861
  br label %958

; <label>:958                                     ; preds = %872, %870
  %959 = phi float [ %957, %872 ], [ %861, %870 ]
  %960 = call float @dx.op.binary.f32(i32 36, float %959, float %959)  ; FMin(a,b)
  %961 = call float @dx.op.binary.f32(i32 36, float %959, float %960)  ; FMin(a,b)
  %962 = fcmp fast ogt float %961, 0.000000e+00
  br i1 %962, label %963, label %865, !dx.controlflow.hints !55

; <label>:963                                     ; preds = %958
  %964 = call float @dx.op.dot3.f32(i32 55, float %782, float %783, float %784, float %171, float %172, float %173)  ; Dot3(ax,ay,az,bx,by,bz)
  %965 = fcmp fast ogt float %279, 0.000000e+00
  %966 = select i1 %965, float 1.000000e+00, float -1.000000e+00
  %967 = fmul fast float %94, 7.812500e-03
  %968 = fmul fast float %94, 3.125000e-02
  %969 = fadd fast float %968, -3.125000e-02
  %970 = fmul fast float %966, 5.000000e-01
  %971 = fmul fast float %970, %964
  %972 = fmul fast float %966, %279
  %973 = fadd fast float %967, 4.921875e-01
  %974 = fadd fast float %973, %971
  %975 = fadd fast float %967, 0x3FB25F3060000000
  %976 = fadd fast float %969, %972
  %977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %974, float %975, float %976, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %978 = extractvalue %dx.types.ResRet.f32 %977, 0
  %979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %980 = extractvalue %dx.types.CBufRet.f32 %979, 1
  %981 = extractvalue %dx.types.CBufRet.f32 %979, 2
  %982 = select i1 %482, float %980, float %981
  %983 = fmul fast float %789, 0x400921FB60000000
  %984 = fmul fast float %983, %959
  %985 = fmul fast float %984, %978
  %986 = fmul fast float %985, %982
  %987 = fmul fast float %755, %439
  %988 = fmul fast float %987, %986
  %989 = fmul fast float %755, %440
  %990 = fmul fast float %989, %986
  %991 = fmul fast float %755, %441
  %992 = fmul fast float %991, %986
  %993 = fadd fast float %988, %428
  %994 = fadd fast float %990, %429
  %995 = fadd fast float %992, %430
  br label %865

; <label>:996                                     ; preds = %865
  br label %997

; <label>:997                                     ; preds = %996, %413
  %998 = phi float [ %415, %413 ], [ %866, %996 ]
  %999 = phi float [ %416, %413 ], [ %867, %996 ]
  %1000 = phi float [ %417, %413 ], [ %868, %996 ]
  %1001 = add i32 %414, 1
  %1002 = icmp ugt i32 %1001, %412
  br i1 %1002, label %1003, label %413

; <label>:1003                                    ; preds = %997
  br label %1004

; <label>:1004                                    ; preds = %1003, %272
  %1005 = phi float [ 0.000000e+00, %272 ], [ %998, %1003 ]
  %1006 = phi float [ 0.000000e+00, %272 ], [ %999, %1003 ]
  %1007 = phi float [ 0.000000e+00, %272 ], [ %1000, %1003 ]
  %1008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %14, float %119, float %120, float %121, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1009 = extractvalue %dx.types.ResRet.f32 %1008, 0
  %1010 = extractvalue %dx.types.ResRet.f32 %1008, 1
  %1011 = extractvalue %dx.types.ResRet.f32 %1008, 2
  %1012 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1009)  ; IsNaN(value)
  %1013 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1010)  ; IsNaN(value)
  %1014 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1011)  ; IsNaN(value)
  %1015 = or i1 %1012, %1013
  %1016 = or i1 %1015, %1014
  %1017 = select i1 %1016, float 0.000000e+00, float %1009
  %1018 = select i1 %1016, float 0.000000e+00, float %1010
  %1019 = select i1 %1016, float 0.000000e+00, float %1011
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1020, 1
  %1022 = fmul fast float %1017, %1021
  %1023 = fmul fast float %1018, %1021
  %1024 = fmul fast float %1019, %1021
  %1025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.f32 %1025, 3
  %1027 = fmul fast float %1022, %1026
  %1028 = fmul fast float %1023, %1026
  %1029 = fmul fast float %1024, %1026
  %1030 = fadd fast float %1027, %1005
  %1031 = fadd fast float %1028, %1006
  %1032 = fadd fast float %1029, %1007
  br label %1033

; <label>:1033                                    ; preds = %1004, %252
  %1034 = phi float [ %276, %1004 ], [ %268, %252 ]
  %1035 = phi float [ %277, %1004 ], [ %269, %252 ]
  %1036 = phi float [ %278, %1004 ], [ %270, %252 ]
  %1037 = phi float [ %1030, %1004 ], [ 0.000000e+00, %252 ]
  %1038 = phi float [ %1031, %1004 ], [ 0.000000e+00, %252 ]
  %1039 = phi float [ %1032, %1004 ], [ 0.000000e+00, %252 ]
  %1040 = fmul fast float %1034, %267
  %1041 = fmul fast float %1035, %267
  %1042 = fmul fast float %1036, %267
  %1043 = fmul fast float %1040, %1037
  %1044 = fmul fast float %1041, %1038
  %1045 = fmul fast float %1042, %1039
  %1046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.f32 %1046, 0
  %1048 = fmul fast float %1043, %1047
  %1049 = fmul fast float %1044, %1047
  %1050 = fmul fast float %1045, %1047
  %1051 = fmul fast float %1049, 5.000000e-01
  %1052 = fadd fast float %1045, %1043
  %1053 = fmul fast float %1047, %1052
  %1054 = fmul fast float %1053, 2.500000e-01
  %1055 = fadd fast float %1054, %1051
  %1056 = call float @dx.op.unary.f32(i32 23, float %1055)  ; Log(value)
  %1057 = fmul fast float %1056, 0x3FE62E4300000000
  %1058 = fmul fast float %1057, %1057
  store float %177, float addrspace(3)* %178, align 4, !tbaa !31, !noalias !35
  %1059 = fmul fast float %1057, %177
  store float %1059, float addrspace(3)* %180, align 4, !tbaa !31, !noalias !35
  %1060 = fmul fast float %1058, %177
  store float %1060, float addrspace(3)* %182, align 4, !tbaa !31, !noalias !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1061 = load float, float addrspace(3)* %184, align 4, !tbaa !31, !noalias !35
  %1062 = fadd fast float %1061, %177
  %1063 = load float, float addrspace(3)* %187, align 4, !tbaa !31, !noalias !35
  %1064 = fadd fast float %1063, %1057
  %1065 = load float, float addrspace(3)* %190, align 4, !tbaa !31, !noalias !35
  %1066 = fadd fast float %1065, %1058
  store float %1062, float addrspace(3)* %178, align 4, !tbaa !31, !noalias !35
  store float %1064, float addrspace(3)* %180, align 4, !tbaa !31, !noalias !35
  store float %1066, float addrspace(3)* %182, align 4, !tbaa !31, !noalias !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1067 = load float, float addrspace(3)* %194, align 4, !tbaa !31, !noalias !35
  %1068 = fadd fast float %1067, %1062
  %1069 = load float, float addrspace(3)* %197, align 4, !tbaa !31, !noalias !35
  %1070 = fadd fast float %1069, %1064
  %1071 = load float, float addrspace(3)* %200, align 4, !tbaa !31, !noalias !35
  %1072 = fadd fast float %1071, %1066
  store float %1068, float addrspace(3)* %178, align 4, !tbaa !31, !noalias !35
  store float %1070, float addrspace(3)* %180, align 4, !tbaa !31, !noalias !35
  store float %1072, float addrspace(3)* %182, align 4, !tbaa !31, !noalias !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1073 = load float, float addrspace(3)* %204, align 4, !tbaa !31, !noalias !35
  %1074 = fadd fast float %1073, %1068
  %1075 = load float, float addrspace(3)* %207, align 4, !tbaa !31, !noalias !35
  %1076 = fadd fast float %1075, %1070
  %1077 = fdiv fast float %1076, %1074
  br i1 %215, label %1078, label %1086, !dx.controlflow.hints !39

; <label>:1078                                    ; preds = %1033
  %1079 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %203
  %1080 = load float, float addrspace(3)* %1079, align 4, !tbaa !31, !noalias !35
  %1081 = fadd fast float %1080, %1072
  %1082 = fdiv fast float %1081, %1074
  %1083 = lshr i32 %44, 1
  %1084 = lshr i32 %45, 1
  %1085 = lshr i32 %46, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1083, i32 %1084, i32 %1085, float %1077, float %1082, float %1077, float %1077, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1086

; <label>:1086                                    ; preds = %1078, %1033
  br i1 %55, label %1121, label %1087, !dx.controlflow.hints !40

; <label>:1087                                    ; preds = %1086
  %1088 = fadd fast float %94, 0x3FE3C6EF40000000
  %1089 = call float @dx.op.unary.f32(i32 22, float %1088)  ; Frc(value)
  %1090 = call float @dx.op.unary.f32(i32 23, float %1048)  ; Log(value)
  %1091 = fadd fast float %1090, -7.000000e+00
  %1092 = call float @dx.op.unary.f32(i32 21, float %1091)  ; Exp(value)
  %1093 = fmul fast float %1089, 2.000000e+00
  %1094 = fadd fast float %1093, -1.000000e+00
  %1095 = fmul fast float %1092, %1094
  %1096 = fcmp fast ogt float %1048, 0.000000e+00
  %1097 = select i1 %1096, float %1095, float 0.000000e+00
  %1098 = fadd fast float %1097, %1048
  %1099 = fadd fast float %94, 0x3FF3C6EF40000000
  %1100 = call float @dx.op.unary.f32(i32 22, float %1099)  ; Frc(value)
  %1101 = call float @dx.op.unary.f32(i32 23, float %1049)  ; Log(value)
  %1102 = fadd fast float %1101, -7.000000e+00
  %1103 = call float @dx.op.unary.f32(i32 21, float %1102)  ; Exp(value)
  %1104 = fmul fast float %1100, 2.000000e+00
  %1105 = fadd fast float %1104, -1.000000e+00
  %1106 = fmul fast float %1103, %1105
  %1107 = fcmp fast ogt float %1049, 0.000000e+00
  %1108 = select i1 %1107, float %1106, float 0.000000e+00
  %1109 = fadd fast float %1108, %1049
  %1110 = fadd fast float %94, 0x3FFDAA66E0000000
  %1111 = call float @dx.op.unary.f32(i32 22, float %1110)  ; Frc(value)
  %1112 = call float @dx.op.unary.f32(i32 23, float %1050)  ; Log(value)
  %1113 = fadd fast float %1112, -6.000000e+00
  %1114 = call float @dx.op.unary.f32(i32 21, float %1113)  ; Exp(value)
  %1115 = fmul fast float %1111, 2.000000e+00
  %1116 = fadd fast float %1115, -1.000000e+00
  %1117 = fmul fast float %1114, %1116
  %1118 = fcmp fast ogt float %1050, 0.000000e+00
  %1119 = select i1 %1118, float %1117, float 0.000000e+00
  %1120 = fadd fast float %1119, %1050
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %44, i32 %45, i32 %46, float %1098, float %1109, float %1120, float %1098, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1121

; <label>:1121                                    ; preds = %1087, %1086
  %1122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.f32 %1122, 0
  %1124 = fmul fast float %1123, %267
  %1125 = fmul fast float %1124, 5.000000e-01
  %1126 = fadd fast float %260, %260
  %1127 = fmul fast float %266, %1126
  %1128 = fmul fast float %1123, %1127
  %1129 = fmul fast float %1128, 2.500000e-01
  %1130 = fadd fast float %1129, %1125
  %1131 = fmul fast float %1130, %1130
  store float %177, float addrspace(3)* %178, align 4, !tbaa !31, !noalias !35
  %1132 = fmul fast float %1130, %177
  store float %1132, float addrspace(3)* %180, align 4, !tbaa !31, !noalias !35
  %1133 = fmul fast float %1131, %177
  store float %1133, float addrspace(3)* %182, align 4, !tbaa !31, !noalias !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1134 = load float, float addrspace(3)* %184, align 4, !tbaa !31, !noalias !35
  %1135 = fadd fast float %1134, %177
  %1136 = load float, float addrspace(3)* %187, align 4, !tbaa !31, !noalias !35
  %1137 = fadd fast float %1130, %1136
  %1138 = load float, float addrspace(3)* %190, align 4, !tbaa !31, !noalias !35
  %1139 = fadd fast float %1131, %1138
  store float %1135, float addrspace(3)* %178, align 4, !tbaa !31, !noalias !35
  store float %1137, float addrspace(3)* %180, align 4, !tbaa !31, !noalias !35
  store float %1139, float addrspace(3)* %182, align 4, !tbaa !31, !noalias !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1140 = load float, float addrspace(3)* %194, align 4, !tbaa !31, !noalias !35
  %1141 = fadd fast float %1140, %1135
  %1142 = load float, float addrspace(3)* %197, align 4, !tbaa !31, !noalias !35
  %1143 = fadd fast float %1142, %1137
  %1144 = load float, float addrspace(3)* %200, align 4, !tbaa !31, !noalias !35
  %1145 = fadd fast float %1144, %1139
  store float %1141, float addrspace(3)* %178, align 4, !tbaa !31, !noalias !35
  store float %1143, float addrspace(3)* %180, align 4, !tbaa !31, !noalias !35
  store float %1145, float addrspace(3)* %182, align 4, !tbaa !31, !noalias !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1146 = load float, float addrspace(3)* %204, align 4, !tbaa !31, !noalias !35
  %1147 = fadd fast float %1146, %1141
  %1148 = load float, float addrspace(3)* %207, align 4, !tbaa !31, !noalias !35
  %1149 = fadd fast float %1148, %1143
  %1150 = fdiv fast float %1149, %1147
  br i1 %215, label %1151, label %1159, !dx.controlflow.hints !41

; <label>:1151                                    ; preds = %1121
  %1152 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %203
  %1153 = load float, float addrspace(3)* %1152, align 4, !tbaa !31, !noalias !35
  %1154 = fadd fast float %1153, %1145
  %1155 = fdiv fast float %1154, %1147
  %1156 = lshr i32 %44, 1
  %1157 = lshr i32 %45, 1
  %1158 = lshr i32 %46, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1156, i32 %1157, i32 %1158, float %1150, float %1155, float %1150, float %1150, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1159

; <label>:1159                                    ; preds = %1151, %1121
  br i1 %55, label %1188, label %1160, !dx.controlflow.hints !42

; <label>:1160                                    ; preds = %1159
  %1161 = fadd fast float %94, 0x3FE3C6EF40000000
  %1162 = call float @dx.op.unary.f32(i32 22, float %1161)  ; Frc(value)
  %1163 = call float @dx.op.unary.f32(i32 23, float %1124)  ; Log(value)
  %1164 = fadd fast float %1163, -7.000000e+00
  %1165 = call float @dx.op.unary.f32(i32 21, float %1164)  ; Exp(value)
  %1166 = fmul fast float %1162, 2.000000e+00
  %1167 = fadd fast float %1166, -1.000000e+00
  %1168 = fmul fast float %1165, %1167
  %1169 = fcmp fast ogt float %1124, 0.000000e+00
  %1170 = select i1 %1169, float %1168, float 0.000000e+00
  %1171 = fadd fast float %1170, %1124
  %1172 = fadd fast float %94, 0x3FF3C6EF40000000
  %1173 = call float @dx.op.unary.f32(i32 22, float %1172)  ; Frc(value)
  %1174 = fmul fast float %1173, 2.000000e+00
  %1175 = fadd fast float %1174, -1.000000e+00
  %1176 = fmul fast float %1165, %1175
  %1177 = select i1 %1169, float %1176, float 0.000000e+00
  %1178 = fadd fast float %1177, %1124
  %1179 = fadd fast float %94, 0x3FFDAA66E0000000
  %1180 = call float @dx.op.unary.f32(i32 22, float %1179)  ; Frc(value)
  %1181 = fadd fast float %1163, -6.000000e+00
  %1182 = call float @dx.op.unary.f32(i32 21, float %1181)  ; Exp(value)
  %1183 = fmul fast float %1180, 2.000000e+00
  %1184 = fadd fast float %1183, -1.000000e+00
  %1185 = fmul fast float %1182, %1184
  %1186 = select i1 %1169, float %1185, float 0.000000e+00
  %1187 = fadd fast float %1186, %1124
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %44, i32 %45, i32 %46, float %1171, float %1178, float %1187, float %1171, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1188

; <label>:1188                                    ; preds = %1160, %1159
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
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

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
!dx.entryPoints = !{!28}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !16, !21, !24}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture3D<float>"* undef, !"", i32 0, i32 10, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture1D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 1, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!16 = !{!17, !18, !19, !20}
!17 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!18 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!19 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!20 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!21 = !{!22, !23}
!22 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!23 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!24 = !{!25, !26, !27}
!25 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!26 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!27 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!28 = !{void ()* @cs_volumetric_forwardplus_scatter_global, !"cs_volumetric_forwardplus_scatter_global", null, !4, !29}
!29 = !{i32 0, i64 272, i32 4, !30}
!30 = !{i32 4, i32 4, i32 4}
!31 = !{!32, !32, i64 0}
!32 = !{!"float", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !{!36, !38}
!36 = distinct !{!36, !37, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!37 = distinct !{!37, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!38 = distinct !{!38, !37, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 1}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}

