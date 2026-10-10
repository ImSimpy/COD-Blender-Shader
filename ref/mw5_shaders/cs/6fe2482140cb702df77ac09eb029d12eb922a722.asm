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
; shader hash: 67e0909825c85ed765ce7df04fdb614e
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
;                                   texture     f32          1d      T8            t54     1
;                                   texture     f32          3d      T9             t5     1
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

define void @cs_volumetric_forwardplus_scatter_global_afog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 54, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %21 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %22 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %23 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %24 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %25 = alloca [3 x float], align 4
  %26 = alloca [3 x float], align 4
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 3
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 1
  %31 = mul i32 %30, %28
  %32 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 1
  %34 = mul i32 %31, %33
  %35 = add i32 %34, %23
  %36 = shl i32 %35, 2
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %36, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = and i32 %38, 255
  %40 = lshr i32 %38, 8
  %41 = and i32 %40, 255
  %42 = lshr i32 %38, 16
  %43 = and i32 %42, 255
  %44 = shl nuw nsw i32 %39, 2
  %45 = shl nuw nsw i32 %41, 2
  %46 = shl nuw nsw i32 %43, 2
  %47 = add i32 %44, %20
  %48 = add i32 %45, %21
  %49 = add i32 %46, %22
  %50 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.i32 %50, 0
  %52 = extractvalue %dx.types.CBufRet.i32 %50, 1
  %53 = extractvalue %dx.types.CBufRet.i32 %50, 2
  %54 = icmp uge i32 %47, %51
  %55 = icmp uge i32 %48, %52
  %56 = icmp uge i32 %49, %53
  %57 = or i1 %54, %55
  %58 = or i1 %56, %57
  %59 = xor i1 %58, true
  %60 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.i32 %60, 3
  %62 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %48, i32 %61)  ; UMad(a,b,c)
  %63 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %47, i32 %62)  ; UMad(a,b,c)
  %64 = mul i32 %63, -63
  %65 = lshr i32 %64, 17
  %66 = xor i32 %65, %64
  %67 = mul i32 %66, -511
  %68 = mul i32 %66, -8176
  %69 = xor i32 %67, %68
  %70 = mul i32 %69, -7
  %71 = mul i32 %69, -7168
  %72 = xor i32 %70, %71
  %73 = lshr i32 %72, 15
  %74 = xor i32 %73, %70
  %75 = and i32 %74, 127
  %76 = mul i32 %75, 3
  %77 = add i32 0, %76
  %78 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %77
  %79 = load float, float* %78, align 4
  %80 = mul i32 %75, 3
  %81 = add i32 1, %80
  %82 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %81
  %83 = load float, float* %82, align 4
  %84 = mul i32 %75, 3
  %85 = add i32 2, %84
  %86 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %85
  %87 = load float, float* %86, align 4
  %88 = uitofp i32 %61 to float
  %89 = fmul fast float %88, 0x3FEA36A940000000
  %90 = fmul fast float %88, 0x3FE5793080000000
  %91 = fmul fast float %88, 0x3FE1972580000000
  %92 = fadd fast float %79, %89
  %93 = fadd fast float %83, %90
  %94 = fadd fast float %87, %91
  %95 = call float @dx.op.unary.f32(i32 22, float %92)  ; Frc(value)
  %96 = call float @dx.op.unary.f32(i32 22, float %93)  ; Frc(value)
  %97 = call float @dx.op.unary.f32(i32 22, float %94)  ; Frc(value)
  %98 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %47, i32 %48, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = fcmp fast ogt float %99, -1.000000e+00
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %103 = select i1 %100, float %102, float 1.000000e+00
  %104 = fadd fast float %99, 1.000000e+00
  %105 = fmul fast float %103, %104
  %106 = uitofp i32 %47 to float
  %107 = uitofp i32 %48 to float
  %108 = uitofp i32 %49 to float
  %109 = fadd fast float %106, -5.000000e-01
  %110 = fadd fast float %109, %95
  %111 = fadd fast float %107, -5.000000e-01
  %112 = fadd fast float %111, %96
  %113 = fadd fast float %108, -5.000000e-01
  %114 = fadd fast float %113, %97
  %115 = fadd fast float %110, 5.000000e-01
  %116 = fadd fast float %112, 5.000000e-01
  %117 = fadd fast float %114, 5.000000e-01
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = fmul fast float %119, %115
  %123 = fmul fast float %120, %116
  %124 = fmul fast float %121, %117
  %125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.i32 %125, 0
  %127 = uitofp i32 %126 to float
  %128 = fmul fast float %127, %124
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %132 = fmul fast float %128, %131
  %133 = call float @dx.op.unary.f32(i32 21, float %132)  ; Exp(value)
  %134 = fmul fast float %133, %130
  %135 = fsub fast float 4.000000e+00, %130
  %136 = fadd fast float %135, %134
  %137 = call float @dx.op.binary.f32(i32 36, float %136, float %105)  ; FMin(a,b)
  %138 = fmul fast float %122, 2.000000e+00
  %139 = fmul fast float %123, 2.000000e+00
  %140 = fsub fast float 1.000000e+00, %138
  %141 = fsub fast float 1.000000e+00, %139
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %145 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %146 = fmul fast float %143, %140
  %147 = fmul fast float %144, %140
  %148 = fmul fast float %145, %140
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = fmul fast float %150, %141
  %154 = fmul fast float %151, %141
  %155 = fmul fast float %152, %141
  %156 = fadd fast float %153, %146
  %157 = fadd fast float %154, %147
  %158 = fadd fast float %155, %148
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = fadd fast float %156, %160
  %164 = fadd fast float %157, %161
  %165 = fadd fast float %158, %162
  %166 = fmul fast float %163, %137
  %167 = fmul fast float %164, %137
  %168 = fmul fast float %165, %137
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %171 = fadd fast float %168, %170
  %172 = call float @dx.op.dot3.f32(i32 55, float %166, float %167, float %168, float %166, float %167, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %173 = call float @dx.op.unary.f32(i32 25, float %172)  ; Rsqrt(value)
  %174 = fmul fast float %166, %173
  %175 = fmul fast float %167, %173
  %176 = fmul fast float %168, %173
  %177 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %178 = fmul fast float %177, 0x3FE62E4300000000
  %179 = fmul fast float %178, %178
  %180 = select i1 %58, float 0.000000e+00, float 1.000000e+00
  %181 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %24
  store float %180, float addrspace(3)* %181, align 4, !tbaa !32, !noalias !36
  %182 = fmul fast float %178, %180
  %183 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %24
  store float %182, float addrspace(3)* %183, align 4, !tbaa !32, !noalias !36
  %184 = fmul fast float %179, %180
  %185 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %24
  store float %184, float addrspace(3)* %185, align 4, !tbaa !32, !noalias !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %186 = xor i32 %24, 4
  %187 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %186
  %188 = load float, float addrspace(3)* %187, align 4, !tbaa !32, !noalias !36
  %189 = fadd fast float %188, %180
  %190 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %186
  %191 = load float, float addrspace(3)* %190, align 4, !tbaa !32, !noalias !36
  %192 = fadd fast float %191, %178
  %193 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %186
  %194 = load float, float addrspace(3)* %193, align 4, !tbaa !32, !noalias !36
  %195 = fadd fast float %194, %179
  store float %189, float addrspace(3)* %181, align 4, !tbaa !32, !noalias !36
  store float %192, float addrspace(3)* %183, align 4, !tbaa !32, !noalias !36
  store float %195, float addrspace(3)* %185, align 4, !tbaa !32, !noalias !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %196 = xor i32 %24, 16
  %197 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %196
  %198 = load float, float addrspace(3)* %197, align 4, !tbaa !32, !noalias !36
  %199 = fadd fast float %198, %189
  %200 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %196
  %201 = load float, float addrspace(3)* %200, align 4, !tbaa !32, !noalias !36
  %202 = fadd fast float %201, %192
  %203 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %196
  %204 = load float, float addrspace(3)* %203, align 4, !tbaa !32, !noalias !36
  %205 = fadd fast float %204, %195
  store float %199, float addrspace(3)* %181, align 4, !tbaa !32, !noalias !36
  store float %202, float addrspace(3)* %183, align 4, !tbaa !32, !noalias !36
  store float %205, float addrspace(3)* %185, align 4, !tbaa !32, !noalias !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %206 = xor i32 %24, 1
  %207 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %206
  %208 = load float, float addrspace(3)* %207, align 4, !tbaa !32, !noalias !36
  %209 = fadd fast float %208, %199
  %210 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %206
  %211 = load float, float addrspace(3)* %210, align 4, !tbaa !32, !noalias !36
  %212 = fadd fast float %211, %202
  %213 = fdiv fast float %212, %209
  %214 = and i32 %47, 1
  %215 = and i32 %214, %48
  %216 = and i32 %215, %49
  %217 = icmp ne i32 %216, 0
  %218 = and i1 %217, %59
  br i1 %218, label %219, label %227, !dx.controlflow.hints !40

; <label>:219                                     ; preds = %0
  %220 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %206
  %221 = load float, float addrspace(3)* %220, align 4, !tbaa !32, !noalias !36
  %222 = fadd fast float %221, %205
  %223 = fdiv fast float %222, %209
  %224 = lshr i32 %47, 1
  %225 = lshr i32 %48, 1
  %226 = lshr i32 %49, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %224, i32 %225, i32 %226, float %213, float %223, float %213, float %213, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %227

; <label>:227                                     ; preds = %219, %0
  br i1 %58, label %229, label %228, !dx.controlflow.hints !41

; <label>:228                                     ; preds = %227
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %47, i32 %48, i32 %49, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %229

; <label>:229                                     ; preds = %228, %227
  store float %180, float addrspace(3)* %181, align 4, !tbaa !32, !noalias !36
  store float 0.000000e+00, float addrspace(3)* %183, align 4, !tbaa !32, !noalias !36
  store float 0.000000e+00, float addrspace(3)* %185, align 4, !tbaa !32, !noalias !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %230 = load float, float addrspace(3)* %187, align 4, !tbaa !32, !noalias !36
  %231 = fadd fast float %230, %180
  %232 = load float, float addrspace(3)* %190, align 4, !tbaa !32, !noalias !36
  %233 = load float, float addrspace(3)* %193, align 4, !tbaa !32, !noalias !36
  store float %231, float addrspace(3)* %181, align 4, !tbaa !32, !noalias !36
  store float %232, float addrspace(3)* %183, align 4, !tbaa !32, !noalias !36
  store float %233, float addrspace(3)* %185, align 4, !tbaa !32, !noalias !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %234 = load float, float addrspace(3)* %197, align 4, !tbaa !32, !noalias !36
  %235 = fadd fast float %234, %231
  %236 = load float, float addrspace(3)* %200, align 4, !tbaa !32, !noalias !36
  %237 = fadd fast float %236, %232
  %238 = load float, float addrspace(3)* %203, align 4, !tbaa !32, !noalias !36
  %239 = fadd fast float %238, %233
  store float %235, float addrspace(3)* %181, align 4, !tbaa !32, !noalias !36
  store float %237, float addrspace(3)* %183, align 4, !tbaa !32, !noalias !36
  store float %239, float addrspace(3)* %185, align 4, !tbaa !32, !noalias !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %240 = load float, float addrspace(3)* %207, align 4, !tbaa !32, !noalias !36
  %241 = fadd fast float %240, %235
  %242 = load float, float addrspace(3)* %210, align 4, !tbaa !32, !noalias !36
  %243 = fadd fast float %242, %237
  %244 = fdiv fast float %243, %241
  br i1 %218, label %245, label %253, !dx.controlflow.hints !42

; <label>:245                                     ; preds = %229
  %246 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %206
  %247 = load float, float addrspace(3)* %246, align 4, !tbaa !32, !noalias !36
  %248 = fadd fast float %247, %239
  %249 = fdiv fast float %248, %241
  %250 = lshr i32 %47, 1
  %251 = lshr i32 %48, 1
  %252 = lshr i32 %49, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %250, i32 %251, i32 %252, float %244, float %249, float %244, float %244, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %253

; <label>:253                                     ; preds = %245, %229
  br i1 %58, label %255, label %254, !dx.controlflow.hints !43

; <label>:254                                     ; preds = %253
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %47, i32 %48, i32 %49, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %255

; <label>:255                                     ; preds = %254, %253
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 0
  %258 = extractvalue %dx.types.CBufRet.f32 %256, 1
  %259 = fsub fast float %171, %257
  %260 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %259)  ; FMax(a,b)
  %261 = fmul fast float %260, 0x3FF7154760000000
  %262 = fmul fast float %261, %258
  %263 = call float @dx.op.unary.f32(i32 21, float %262)  ; Exp(value)
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %266 = extractvalue %dx.types.CBufRet.f32 %264, 1
  %267 = extractvalue %dx.types.CBufRet.f32 %264, 2
  %268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.f32 %268, 1
  %270 = fmul fast float %269, %263
  %271 = fmul fast float %270, %265
  %272 = fmul fast float %270, %266
  %273 = fmul fast float %270, %267
  %274 = fcmp fast ogt float %270, 0.000000e+00
  br i1 %274, label %275, label %1036, !dx.controlflow.hints !44

; <label>:275                                     ; preds = %255
  %276 = extractvalue %dx.types.CBufRet.f32 %268, 2
  %277 = fmul fast float %276, %270
  %278 = fdiv fast float 1.000000e+00, %270
  %279 = fmul fast float %278, %271
  %280 = fmul fast float %278, %272
  %281 = fmul fast float %278, %273
  %282 = fmul fast float %277, %278
  %283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.i32 %283, 2
  %285 = extractvalue %dx.types.CBufRet.i32 %283, 3
  %286 = call i32 @dx.op.tertiary.i32(i32 49, i32 %41, i32 %284, i32 %39)  ; UMad(a,b,c)
  %287 = call i32 @dx.op.tertiary.i32(i32 49, i32 %43, i32 %285, i32 %286)  ; UMad(a,b,c)
  %288 = fadd fast float %106, 1.000000e+00
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 0
  %291 = extractvalue %dx.types.CBufRet.f32 %289, 1
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 0
  %294 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %295 = fmul fast float %294, %114
  %296 = call float @dx.op.unary.f32(i32 21, float %295)  ; Exp(value)
  %297 = fmul fast float %296, %293
  %298 = fsub fast float 4.000000e+00, %293
  %299 = fadd fast float %298, %297
  %300 = fmul fast float %288, 2.000000e+00
  %301 = fmul fast float %300, %290
  %302 = fmul fast float %107, 2.000000e+00
  %303 = fmul fast float %302, %291
  %304 = fsub fast float 1.000000e+00, %301
  %305 = fsub fast float 1.000000e+00, %303
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 0
  %308 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %309 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %310 = fmul fast float %307, %304
  %311 = fmul fast float %308, %304
  %312 = fmul fast float %309, %304
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 0
  %315 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %316 = extractvalue %dx.types.CBufRet.f32 %313, 2
  %317 = fmul fast float %314, %305
  %318 = fmul fast float %315, %305
  %319 = fmul fast float %316, %305
  %320 = fadd fast float %317, %310
  %321 = fadd fast float %318, %311
  %322 = fadd fast float %319, %312
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 0
  %325 = extractvalue %dx.types.CBufRet.f32 %323, 1
  %326 = extractvalue %dx.types.CBufRet.f32 %323, 2
  %327 = fadd fast float %320, %324
  %328 = fadd fast float %321, %325
  %329 = fadd fast float %322, %326
  %330 = fadd fast float %107, 1.000000e+00
  %331 = fmul fast float %106, 2.000000e+00
  %332 = fmul fast float %331, %290
  %333 = fmul fast float %330, 2.000000e+00
  %334 = fmul fast float %333, %291
  %335 = fsub fast float 1.000000e+00, %332
  %336 = fsub fast float 1.000000e+00, %334
  %337 = fmul fast float %307, %335
  %338 = fmul fast float %308, %335
  %339 = fmul fast float %309, %335
  %340 = fmul fast float %314, %336
  %341 = fmul fast float %315, %336
  %342 = fmul fast float %316, %336
  %343 = fadd fast float %340, %337
  %344 = fadd fast float %341, %338
  %345 = fadd fast float %342, %339
  %346 = fadd fast float %343, %324
  %347 = fadd fast float %344, %325
  %348 = fadd fast float %345, %326
  %349 = fmul fast float %346, %299
  %350 = fmul fast float %347, %299
  %351 = fmul fast float %348, %299
  %352 = fadd fast float %346, %327
  %353 = fmul fast float %299, %352
  %354 = fadd fast float %347, %328
  %355 = fmul fast float %299, %354
  %356 = fadd fast float %348, %329
  %357 = fmul fast float %299, %356
  %358 = fmul fast float %353, 5.000000e-01
  %359 = fmul fast float %355, 5.000000e-01
  %360 = fmul fast float %357, 5.000000e-01
  %361 = fsub fast float %358, %349
  %362 = fsub fast float %359, %350
  %363 = fsub fast float %360, %351
  %364 = call float @dx.op.dot3.f32(i32 55, float %361, float %362, float %363, float %361, float %362, float %363)  ; Dot3(ax,ay,az,bx,by,bz)
  %365 = call float @dx.op.unary.f32(i32 25, float %364)  ; Rsqrt(value)
  %366 = fmul fast float %365, %364
  %367 = fmul fast float %294, %108
  %368 = call float @dx.op.unary.f32(i32 21, float %367)  ; Exp(value)
  %369 = fmul fast float %368, %293
  %370 = fadd fast float %298, %369
  %371 = fmul fast float %115, 2.000000e+00
  %372 = fmul fast float %371, %290
  %373 = fmul fast float %116, 2.000000e+00
  %374 = fmul fast float %373, %291
  %375 = fsub fast float 1.000000e+00, %372
  %376 = fsub fast float 1.000000e+00, %374
  %377 = fmul fast float %307, %375
  %378 = fmul fast float %308, %375
  %379 = fmul fast float %309, %375
  %380 = fmul fast float %314, %376
  %381 = fmul fast float %315, %376
  %382 = fmul fast float %316, %376
  %383 = fadd fast float %380, %377
  %384 = fadd fast float %381, %378
  %385 = fadd fast float %382, %379
  %386 = fadd fast float %383, %324
  %387 = fadd fast float %384, %325
  %388 = fadd fast float %385, %326
  %389 = fmul fast float %386, %370
  %390 = fmul fast float %387, %370
  %391 = fmul fast float %388, %370
  %392 = fadd fast float %108, 1.000000e+00
  %393 = fmul fast float %294, %392
  %394 = call float @dx.op.unary.f32(i32 21, float %393)  ; Exp(value)
  %395 = fsub fast float %394, %368
  %396 = fmul fast float %293, %395
  %397 = fmul fast float %386, %396
  %398 = fsub fast float %394, %368
  %399 = fmul fast float %293, %398
  %400 = fmul fast float %387, %399
  %401 = fsub fast float %394, %368
  %402 = fmul fast float %293, %401
  %403 = fmul fast float %388, %402
  %404 = call float @dx.op.dot3.f32(i32 55, float %397, float %400, float %403, float %397, float %400, float %403)  ; Dot3(ax,ay,az,bx,by,bz)
  %405 = call float @dx.op.unary.f32(i32 25, float %404)  ; Rsqrt(value)
  %406 = fmul fast float %405, %404
  %407 = fmul fast float %397, %405
  %408 = fmul fast float %400, %405
  %409 = fmul fast float %403, %405
  %410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.i32 %410, 0
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %1007, label %413, !dx.controlflow.hints !45

; <label>:413                                     ; preds = %275
  %414 = add nsw i32 %411, -1
  %415 = call i32 @dx.op.binary.i32(i32 37, i32 %414, i32 0)  ; IMax(a,b)
  br label %416

; <label>:416                                     ; preds = %1000, %413
  %417 = phi i32 [ 0, %413 ], [ %1004, %1000 ]
  %418 = phi float [ 0.000000e+00, %413 ], [ %1001, %1000 ]
  %419 = phi float [ 0.000000e+00, %413 ], [ %1002, %1000 ]
  %420 = phi float [ 0.000000e+00, %413 ], [ %1003, %1000 ]
  %421 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.i32 %421, 0
  %423 = call i32 @dx.op.tertiary.i32(i32 49, i32 %287, i32 %422, i32 %417)  ; UMad(a,b,c)
  %424 = shl i32 %423, 2
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %1000, label %428

; <label>:428                                     ; preds = %416
  br label %429

; <label>:429                                     ; preds = %868, %428
  %430 = phi i32 [ %439, %868 ], [ %426, %428 ]
  %431 = phi float [ %869, %868 ], [ %418, %428 ]
  %432 = phi float [ %870, %868 ], [ %419, %428 ]
  %433 = phi float [ %871, %868 ], [ %420, %428 ]
  %434 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %430)  ; FirstbitLo(value)
  %435 = shl i32 %417, 5
  %436 = add i32 %434, %435
  %437 = and i32 %434, 31
  %438 = shl i32 1, %437
  %439 = xor i32 %438, %430
  %440 = mul i32 %436, 112
  %441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = extractvalue %dx.types.ResRet.f32 %441, 1
  %444 = extractvalue %dx.types.ResRet.f32 %441, 2
  %445 = or i32 %440, 12
  %446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = add i32 %440, 16
  %449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = extractvalue %dx.types.ResRet.f32 %449, 1
  %452 = extractvalue %dx.types.ResRet.f32 %449, 2
  %453 = add i32 %440, 28
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = add i32 %440, 32
  %457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.f32 %457, 0
  %459 = extractvalue %dx.types.ResRet.f32 %457, 1
  %460 = extractvalue %dx.types.ResRet.f32 %457, 2
  %461 = add i32 %440, 44
  %462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = add i32 %440, 48
  %465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.f32 %465, 0
  %467 = extractvalue %dx.types.ResRet.f32 %465, 1
  %468 = extractvalue %dx.types.ResRet.f32 %465, 2
  %469 = extractvalue %dx.types.ResRet.f32 %465, 3
  %470 = add i32 %440, 64
  %471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.f32 %471, 0
  %473 = extractvalue %dx.types.ResRet.f32 %471, 1
  %474 = extractvalue %dx.types.ResRet.f32 %471, 2
  %475 = extractvalue %dx.types.ResRet.f32 %471, 3
  %476 = add i32 %440, 92
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = and i32 %478, 65535
  %480 = uitofp i32 %479 to float
  %481 = lshr i32 %478, 16
  %482 = uitofp i32 %481 to float
  %483 = and i32 %455, 65535
  %484 = and i32 %455, 50331648
  %485 = icmp eq i32 %484, 33554432
  %486 = fdiv fast float 1.000000e+00, %406
  br i1 %485, label %487, label %679, !dx.controlflow.hints !46

; <label>:487                                     ; preds = %429
  %488 = fsub fast float %466, %458
  %489 = fsub fast float %467, %459
  %490 = fsub fast float %468, %460
  %491 = fmul fast float %407, %406
  %492 = fmul fast float %408, %406
  %493 = fmul fast float %409, %406
  %494 = fadd fast float %491, %389
  %495 = fadd fast float %492, %390
  %496 = fadd fast float %493, %391
  %497 = fmul fast float %458, 2.000000e+00
  %498 = fmul fast float %459, 2.000000e+00
  %499 = fmul fast float %460, 2.000000e+00
  %500 = call float @dx.op.dot3.f32(i32 55, float %497, float %498, float %499, float %497, float %498, float %499)  ; Dot3(ax,ay,az,bx,by,bz)
  %501 = fdiv fast float %497, %500
  %502 = fdiv fast float %498, %500
  %503 = fdiv fast float %499, %500
  %504 = fsub fast float %389, %488
  %505 = fsub fast float %390, %489
  %506 = fsub fast float %391, %490
  %507 = call float @dx.op.dot3.f32(i32 55, float %504, float %505, float %506, float %497, float %498, float %499)  ; Dot3(ax,ay,az,bx,by,bz)
  %508 = fmul fast float %507, %501
  %509 = fmul fast float %507, %502
  %510 = fmul fast float %507, %503
  %511 = fsub fast float %389, %508
  %512 = fsub fast float %390, %509
  %513 = fsub fast float %391, %510
  %514 = fsub fast float %494, %488
  %515 = fsub fast float %495, %489
  %516 = fsub fast float %496, %490
  %517 = call float @dx.op.dot3.f32(i32 55, float %514, float %515, float %516, float %497, float %498, float %499)  ; Dot3(ax,ay,az,bx,by,bz)
  %518 = fmul fast float %517, %501
  %519 = fmul fast float %517, %502
  %520 = fmul fast float %517, %503
  %521 = fsub fast float %494, %518
  %522 = fsub fast float %495, %519
  %523 = fsub fast float %496, %520
  %524 = fsub fast float %521, %511
  %525 = fsub fast float %522, %512
  %526 = fsub fast float %523, %513
  %527 = fsub fast float %488, %511
  %528 = fsub fast float %489, %512
  %529 = fsub fast float %490, %513
  %530 = call float @dx.op.dot3.f32(i32 55, float %527, float %528, float %529, float %524, float %525, float %526)  ; Dot3(ax,ay,az,bx,by,bz)
  %531 = call float @dx.op.dot3.f32(i32 55, float %524, float %525, float %526, float %524, float %525, float %526)  ; Dot3(ax,ay,az,bx,by,bz)
  %532 = fdiv fast float %530, %531
  %533 = fcmp fast une float %511, %521
  %534 = fcmp fast une float %512, %522
  %535 = fcmp fast une float %513, %523
  %536 = or i1 %533, %534
  %537 = or i1 %535, %536
  %538 = select i1 %537, float %532, float 0.000000e+00
  %539 = call float @dx.op.unary.f32(i32 7, float %538)  ; Saturate(value)
  %540 = fmul fast float %539, %491
  %541 = fmul fast float %539, %492
  %542 = fmul fast float %539, %493
  %543 = fadd fast float %504, %540
  %544 = fadd fast float %505, %541
  %545 = fadd fast float %506, %542
  %546 = call float @dx.op.dot3.f32(i32 55, float %543, float %544, float %545, float %497, float %498, float %499)  ; Dot3(ax,ay,az,bx,by,bz)
  %547 = fdiv fast float %546, %500
  %548 = call float @dx.op.unary.f32(i32 7, float %547)  ; Saturate(value)
  %549 = fmul fast float %497, %548
  %550 = fmul fast float %498, %548
  %551 = fmul fast float %499, %548
  %552 = fadd fast float %549, %488
  %553 = fadd fast float %550, %489
  %554 = fadd fast float %551, %490
  %555 = fmul fast float %474, %450
  %556 = fmul fast float %474, %451
  %557 = fmul fast float %474, %452
  %558 = fadd fast float %552, %555
  %559 = fadd fast float %553, %556
  %560 = fadd fast float %554, %557
  %561 = fsub fast float -0.000000e+00, %473
  %562 = fdiv fast float %561, %472
  %563 = fmul fast float %562, %562
  %564 = call float @dx.op.dot3.f32(i32 55, float %407, float %408, float %409, float %450, float %451, float %452)  ; Dot3(ax,ay,az,bx,by,bz)
  %565 = fsub fast float %389, %558
  %566 = fsub fast float %390, %559
  %567 = fsub fast float %391, %560
  %568 = call float @dx.op.dot3.f32(i32 55, float %565, float %566, float %567, float %450, float %451, float %452)  ; Dot3(ax,ay,az,bx,by,bz)
  %569 = fsub fast float %558, %389
  %570 = fsub fast float %559, %390
  %571 = fsub fast float %560, %391
  %572 = fmul fast float %564, %564
  %573 = fsub fast float %572, %563
  %574 = fmul fast float %568, %564
  %575 = call float @dx.op.dot3.f32(i32 55, float %569, float %570, float %571, float %407, float %408, float %409)  ; Dot3(ax,ay,az,bx,by,bz)
  %576 = fmul fast float %575, %563
  %577 = fadd fast float %576, %574
  %578 = fmul fast float %577, 2.000000e+00
  %579 = fmul fast float %568, %568
  %580 = call float @dx.op.dot3.f32(i32 55, float %569, float %570, float %571, float %569, float %570, float %571)  ; Dot3(ax,ay,az,bx,by,bz)
  %581 = fmul fast float %580, %563
  %582 = fsub fast float %579, %581
  %583 = fmul fast float %578, %578
  %584 = fmul fast float %573, 4.000000e+00
  %585 = fmul fast float %584, %582
  %586 = fsub fast float %583, %585
  %587 = fcmp fast ogt float %586, 0.000000e+00
  br i1 %587, label %588, label %679, !dx.controlflow.hints !47

; <label>:588                                     ; preds = %487
  %589 = call float @dx.op.unary.f32(i32 24, float %586)  ; Sqrt(value)
  %590 = fdiv fast float 5.000000e-01, %573
  %591 = fsub fast float -0.000000e+00, %578
  %592 = fsub fast float %591, %589
  %593 = fmul fast float %592, %590
  %594 = fsub fast float %589, %578
  %595 = fmul fast float %594, %590
  %596 = call float @dx.op.binary.f32(i32 35, float %593, float %595)  ; FMax(a,b)
  %597 = call float @dx.op.binary.f32(i32 36, float %593, float %595)  ; FMin(a,b)
  %598 = fsub fast float %552, %389
  %599 = fsub fast float %553, %390
  %600 = fsub fast float %554, %391
  %601 = call float @dx.op.dot3.f32(i32 55, float %598, float %599, float %600, float %450, float %451, float %452)  ; Dot3(ax,ay,az,bx,by,bz)
  %602 = fdiv fast float %601, %564
  %603 = fcmp fast ogt float %564, 0.000000e+00
  br i1 %603, label %604, label %607, !dx.controlflow.hints !48

; <label>:604                                     ; preds = %588
  %605 = call float @dx.op.binary.f32(i32 36, float %597, float %602)  ; FMin(a,b)
  %606 = call float @dx.op.binary.f32(i32 36, float %596, float %602)  ; FMin(a,b)
  br label %610

; <label>:607                                     ; preds = %588
  %608 = call float @dx.op.binary.f32(i32 35, float %597, float %602)  ; FMax(a,b)
  %609 = call float @dx.op.binary.f32(i32 35, float %596, float %602)  ; FMax(a,b)
  br label %610

; <label>:610                                     ; preds = %607, %604
  %611 = phi float [ %605, %604 ], [ %608, %607 ]
  %612 = phi float [ %606, %604 ], [ %609, %607 ]
  %613 = fcmp fast oge float %611, 0.000000e+00
  %614 = fcmp fast olt float %611, %406
  %615 = and i1 %613, %614
  %616 = fcmp fast ogt float %612, 0.000000e+00
  %617 = fcmp fast ole float %612, %406
  %618 = and i1 %616, %617
  %619 = or i1 %615, %618
  br i1 %619, label %620, label %679, !dx.controlflow.hints !49

; <label>:620                                     ; preds = %610
  %621 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %611)  ; FMax(a,b)
  %622 = call float @dx.op.binary.f32(i32 36, float %406, float %612)  ; FMin(a,b)
  br i1 %603, label %623, label %645, !dx.controlflow.hints !50

; <label>:623                                     ; preds = %620
  %624 = fmul fast float %622, %407
  %625 = fmul fast float %622, %408
  %626 = fmul fast float %622, %409
  %627 = fsub fast float %569, %624
  %628 = fsub fast float %570, %625
  %629 = fsub fast float %571, %626
  %630 = call float @dx.op.dot3.f32(i32 55, float %627, float %628, float %629, float %627, float %628, float %629)  ; Dot3(ax,ay,az,bx,by,bz)
  %631 = call float @dx.op.unary.f32(i32 25, float %630)  ; Rsqrt(value)
  %632 = fmul fast float %631, %627
  %633 = fmul fast float %631, %628
  %634 = fmul fast float %631, %629
  %635 = call float @dx.op.dot3.f32(i32 55, float %632, float %633, float %634, float %450, float %451, float %452)  ; Dot3(ax,ay,az,bx,by,bz)
  %636 = fmul fast float %635, %472
  %637 = fadd fast float %636, %473
  %638 = fcmp fast olt float %637, 0xBF1A36E2E0000000
  %639 = select i1 %638, float 0.000000e+00, float %621
  %640 = select i1 %638, float %621, float %622
  %641 = fsub fast float %639, %640
  %642 = call float @dx.op.unary.f32(i32 6, float %641)  ; FAbs(value)
  %643 = fcmp fast olt float %642, 0x3F1A36E2E0000000
  br i1 %643, label %644, label %667, !dx.controlflow.hints !51

; <label>:644                                     ; preds = %623
  br label %667

; <label>:645                                     ; preds = %620
  %646 = fmul fast float %621, %407
  %647 = fmul fast float %621, %408
  %648 = fmul fast float %621, %409
  %649 = fsub fast float %569, %646
  %650 = fsub fast float %570, %647
  %651 = fsub fast float %571, %648
  %652 = call float @dx.op.dot3.f32(i32 55, float %649, float %650, float %651, float %649, float %650, float %651)  ; Dot3(ax,ay,az,bx,by,bz)
  %653 = call float @dx.op.unary.f32(i32 25, float %652)  ; Rsqrt(value)
  %654 = fmul fast float %653, %649
  %655 = fmul fast float %653, %650
  %656 = fmul fast float %653, %651
  %657 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %656, float %450, float %451, float %452)  ; Dot3(ax,ay,az,bx,by,bz)
  %658 = fmul fast float %657, %472
  %659 = fadd fast float %658, %473
  %660 = fcmp fast olt float %659, 0xBF1A36E2E0000000
  %661 = select i1 %660, float %622, float %621
  %662 = select i1 %660, float %406, float %622
  %663 = fsub fast float %661, %662
  %664 = call float @dx.op.unary.f32(i32 6, float %663)  ; FAbs(value)
  %665 = fcmp fast olt float %664, 0x3F1A36E2E0000000
  br i1 %665, label %666, label %667, !dx.controlflow.hints !52

; <label>:666                                     ; preds = %645
  br label %667

; <label>:667                                     ; preds = %666, %645, %644, %623
  %668 = phi float [ 0.000000e+00, %644 ], [ %639, %623 ], [ %661, %666 ], [ %661, %645 ]
  %669 = phi float [ %640, %644 ], [ %640, %623 ], [ %406, %666 ], [ %662, %645 ]
  %670 = fmul fast float %668, %407
  %671 = fmul fast float %668, %408
  %672 = fmul fast float %668, %409
  %673 = fadd fast float %670, %389
  %674 = fadd fast float %671, %390
  %675 = fadd fast float %672, %391
  %676 = fsub fast float %669, %668
  %677 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %676)  ; FMax(a,b)
  %678 = fmul fast float %677, %486
  br label %679

; <label>:679                                     ; preds = %667, %610, %487, %429
  %680 = phi float [ %558, %667 ], [ %558, %610 ], [ %558, %487 ], [ %466, %429 ]
  %681 = phi float [ %559, %667 ], [ %559, %610 ], [ %559, %487 ], [ %467, %429 ]
  %682 = phi float [ %560, %667 ], [ %560, %610 ], [ %560, %487 ], [ %468, %429 ]
  %683 = phi float [ %673, %667 ], [ %389, %610 ], [ %389, %487 ], [ %389, %429 ]
  %684 = phi float [ %674, %667 ], [ %390, %610 ], [ %390, %487 ], [ %390, %429 ]
  %685 = phi float [ %675, %667 ], [ %391, %610 ], [ %391, %487 ], [ %391, %429 ]
  %686 = phi float [ %677, %667 ], [ %406, %610 ], [ %406, %487 ], [ %406, %429 ]
  %687 = phi float [ %678, %667 ], [ 1.000000e+00, %610 ], [ 1.000000e+00, %487 ], [ 1.000000e+00, %429 ]
  %688 = fsub fast float %680, %683
  %689 = fsub fast float %681, %684
  %690 = fsub fast float %682, %685
  %691 = call float @dx.op.dot3.f32(i32 55, float %688, float %689, float %690, float %407, float %408, float %409)  ; Dot3(ax,ay,az,bx,by,bz)
  %692 = call float @dx.op.binary.f32(i32 35, float %691, float 0.000000e+00)  ; FMax(a,b)
  %693 = call float @dx.op.binary.f32(i32 36, float %692, float %686)  ; FMin(a,b)
  %694 = fmul fast float %693, %407
  %695 = fmul fast float %693, %408
  %696 = fmul fast float %693, %409
  %697 = fsub fast float %683, %680
  %698 = fadd fast float %697, %694
  %699 = fsub fast float %684, %681
  %700 = fadd fast float %699, %695
  %701 = fsub fast float %685, %682
  %702 = fadd fast float %701, %696
  %703 = fmul fast float %698, %698
  %704 = fmul fast float %700, %700
  %705 = fadd fast float %703, %704
  %706 = fmul fast float %702, %702
  %707 = fadd fast float %705, %706
  %708 = call float @dx.op.unary.f32(i32 24, float %707)  ; Sqrt(value)
  %709 = fsub fast float -0.000000e+00, %693
  %710 = call float @dx.op.unary.f32(i32 6, float %709)  ; FAbs(value)
  %711 = fadd fast float %710, 0x3DDB7CDFE0000000
  %712 = fcmp fast oge float %708, 0.000000e+00
  %713 = fsub fast float -0.000000e+00, %711
  %714 = select i1 %712, float %713, float %711
  %715 = fadd fast float %714, %708
  %716 = fsub fast float -0.000000e+00, %708
  %717 = select i1 %712, float %708, float %716
  %718 = fadd fast float %711, %717
  %719 = fdiv fast float %715, %718
  %720 = select i1 %712, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %721 = fmul fast float %719, %719
  %722 = fmul fast float %721, 0x3FC9205BC0000000
  %723 = fadd fast float %722, 0xBFEF6A1620000000
  %724 = fmul fast float %723, %719
  %725 = fadd fast float %724, %720
  %726 = fcmp ole float %693, -0.000000e+00
  %727 = fsub fast float -0.000000e+00, %725
  %728 = select i1 %726, float %725, float %727
  %729 = fsub fast float %686, %693
  %730 = call float @dx.op.unary.f32(i32 6, float %729)  ; FAbs(value)
  %731 = fadd fast float %730, 0x3DDB7CDFE0000000
  %732 = fsub fast float -0.000000e+00, %731
  %733 = select i1 %712, float %732, float %731
  %734 = fadd fast float %733, %708
  %735 = fadd fast float %731, %717
  %736 = fdiv fast float %734, %735
  %737 = fmul fast float %736, %736
  %738 = fmul fast float %737, 0x3FC9205BC0000000
  %739 = fadd fast float %738, 0xBFEF6A1620000000
  %740 = fmul fast float %739, %736
  %741 = fadd fast float %740, %720
  %742 = fcmp fast oge float %729, 0.000000e+00
  %743 = fsub fast float -0.000000e+00, %741
  %744 = select i1 %742, float %741, float %743
  %745 = fsub fast float %744, %728
  %746 = fmul fast float %745, %97
  %747 = fadd fast float %746, %728
  %748 = call float @dx.op.unary.f32(i32 14, float %747)  ; Tan(value)
  %749 = fmul fast float %748, %708
  %750 = fadd fast float %749, %693
  %751 = fmul fast float %708, %708
  %752 = fmul fast float %749, %749
  %753 = fadd fast float %752, %751
  %754 = fmul fast float %745, %753
  %755 = fdiv fast float %708, %754
  %756 = fdiv fast float 1.000000e+00, %755
  %757 = fmul fast float %687, %486
  %758 = fmul fast float %757, %756
  %759 = fmul fast float %750, %407
  %760 = fmul fast float %750, %408
  %761 = fmul fast float %750, %409
  %762 = fadd fast float %759, %683
  %763 = fadd fast float %760, %684
  %764 = fadd fast float %761, %685
  %765 = call float @dx.op.dot3.f32(i32 55, float %458, float %459, float %460, float %458, float %459, float %460)  ; Dot3(ax,ay,az,bx,by,bz)
  %766 = fsub fast float %762, %466
  %767 = fsub fast float %763, %467
  %768 = fsub fast float %764, %468
  %769 = call float @dx.op.dot3.f32(i32 55, float %766, float %767, float %768, float %458, float %459, float %460)  ; Dot3(ax,ay,az,bx,by,bz)
  %770 = fdiv fast float %769, %765
  %771 = call float @dx.op.binary.f32(i32 35, float %770, float -1.000000e+00)  ; FMax(a,b)
  %772 = call float @dx.op.binary.f32(i32 36, float %771, float 1.000000e+00)  ; FMin(a,b)
  %773 = fmul fast float %772, %458
  %774 = fmul fast float %772, %459
  %775 = fmul fast float %772, %460
  %776 = fadd fast float %773, %466
  %777 = fadd fast float %774, %467
  %778 = fadd fast float %775, %468
  %779 = fsub fast float %776, %762
  %780 = fsub fast float %777, %763
  %781 = fsub fast float %778, %764
  %782 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %779, float %780, float %781)  ; Dot3(ax,ay,az,bx,by,bz)
  %783 = call float @dx.op.unary.f32(i32 24, float %782)  ; Sqrt(value)
  %784 = fdiv fast float 1.000000e+00, %783
  %785 = fmul fast float %779, %784
  %786 = fmul fast float %780, %784
  %787 = fmul fast float %781, %784
  %788 = fadd fast float %783, %447
  %789 = fdiv fast float 1.000000e+00, %788
  %790 = fmul float %463, %789
  %791 = fmul float %790, %790
  %792 = call float @dx.op.unary.f32(i32 7, float %791)  ; Saturate(value)
  br i1 %485, label %793, label %817, !dx.controlflow.hints !53

; <label>:793                                     ; preds = %679
  %794 = fmul fast float %474, %450
  %795 = fmul fast float %474, %451
  %796 = fmul fast float %474, %452
  %797 = fsub fast float %794, %762
  %798 = fadd fast float %797, %776
  %799 = fsub fast float %795, %763
  %800 = fadd fast float %799, %777
  %801 = fsub fast float %796, %764
  %802 = fadd fast float %801, %778
  %803 = call float @dx.op.dot3.f32(i32 55, float %798, float %800, float %802, float %798, float %800, float %802)  ; Dot3(ax,ay,az,bx,by,bz)
  %804 = call float @dx.op.unary.f32(i32 25, float %803)  ; Rsqrt(value)
  %805 = fmul fast float %804, %798
  %806 = fmul fast float %804, %800
  %807 = fmul fast float %804, %802
  %808 = fsub fast float %762, %776
  %809 = fsub fast float %763, %777
  %810 = fsub fast float %764, %778
  %811 = fsub fast float -0.000000e+00, %808
  %812 = fsub fast float -0.000000e+00, %809
  %813 = fsub fast float -0.000000e+00, %810
  %814 = call float @dx.op.dot3.f32(i32 55, float %811, float %812, float %813, float %450, float %451, float %452)  ; Dot3(ax,ay,az,bx,by,bz)
  %815 = fcmp fast ogt float %814, 0.000000e+00
  %816 = uitofp i1 %815 to float
  br label %817

; <label>:817                                     ; preds = %793, %679
  %818 = phi float [ %816, %793 ], [ 1.000000e+00, %679 ]
  %819 = phi float [ %805, %793 ], [ %785, %679 ]
  %820 = phi float [ %806, %793 ], [ %786, %679 ]
  %821 = phi float [ %807, %793 ], [ %787, %679 ]
  %822 = call float @dx.op.dot3.f32(i32 55, float %450, float %451, float %452, float %819, float %820, float %821)  ; Dot3(ax,ay,az,bx,by,bz)
  %823 = fmul fast float %822, %822
  %824 = call float @dx.op.unary.f32(i32 7, float %823)  ; Saturate(value)
  %825 = fsub fast float 1.000000e+00, %824
  %826 = fmul fast float %825, 5.000000e-01
  %827 = fcmp fast ogt float %822, 0.000000e+00
  %828 = fsub fast float 1.000000e+00, %826
  %829 = select i1 %827, float %826, float %828
  %830 = fmul fast float %829, %482
  %831 = fadd fast float %830, %480
  %832 = fmul fast float %831, 0x3EF0001000000000
  %833 = fsub fast float %776, %358
  %834 = fsub fast float %777, %359
  %835 = fsub fast float %778, %360
  %836 = call float @dx.op.dot3.f32(i32 55, float %833, float %834, float %835, float %833, float %834, float %835)  ; Dot3(ax,ay,az,bx,by,bz)
  %837 = fmul fast float %366, %366
  %838 = fsub fast float %836, %837
  %839 = fdiv fast float %838, %836
  %840 = call float @dx.op.unary.f32(i32 24, float %839)  ; Sqrt(value)
  %841 = fsub fast float 1.000000e+00, %840
  %842 = fcmp fast olt float %836, %837
  %843 = fmul fast float %841, 2.560000e+02
  %844 = select i1 %842, float 2.560000e+02, float %843
  %845 = call float @dx.op.unary.f32(i32 23, float %844)  ; Log(value)
  %846 = call float @dx.op.binary.f32(i32 36, float %845, float 7.000000e+00)  ; FMin(a,b)
  %847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %15, float %832, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float %846)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %848 = extractvalue %dx.types.ResRet.f32 %847, 0
  %849 = fmul fast float %822, %472
  %850 = fadd fast float %849, %473
  %851 = call float @dx.op.unary.f32(i32 7, float %850)  ; Saturate(value)
  %852 = select i1 %485, float 1.000000e+00, float %851
  %853 = select i1 %485, float %851, float 1.000000e+00
  %854 = fmul fast float %783, %469
  %855 = fsub fast float 1.000000e+00, %854
  %856 = fmul fast float %855, %475
  %857 = call float @dx.op.unary.f32(i32 7, float %856)  ; Saturate(value)
  %858 = fmul fast float %857, %853
  %859 = fmul fast float %858, 2.000000e+00
  %860 = fsub fast float 3.000000e+00, %859
  %861 = fmul fast float %848, %818
  %862 = fmul fast float %858, %858
  %863 = fmul fast float %862, %861
  %864 = fmul fast float %863, %860
  %865 = call float @dx.op.binary.f32(i32 36, float %864, float %864)  ; FMin(a,b)
  %866 = call float @dx.op.binary.f32(i32 36, float %864, float %865)  ; FMin(a,b)
  %867 = fcmp fast ogt float %866, 0.000000e+00
  br i1 %867, label %873, label %868, !dx.controlflow.hints !54

; <label>:868                                     ; preds = %966, %961, %817
  %869 = phi float [ %996, %966 ], [ %431, %961 ], [ %431, %817 ]
  %870 = phi float [ %997, %966 ], [ %432, %961 ], [ %432, %817 ]
  %871 = phi float [ %998, %966 ], [ %433, %961 ], [ %433, %817 ]
  %872 = icmp eq i32 %430, %438
  br i1 %872, label %999, label %429

; <label>:873                                     ; preds = %817
  %874 = icmp eq i32 %483, 255
  br i1 %874, label %961, label %875, !dx.controlflow.hints !55

; <label>:875                                     ; preds = %873
  %876 = mul nuw nsw i32 %483, 176
  %877 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.f32 %877, 0
  %879 = extractvalue %dx.types.ResRet.f32 %877, 1
  %880 = extractvalue %dx.types.ResRet.f32 %877, 2
  %881 = extractvalue %dx.types.ResRet.f32 %877, 3
  %882 = add nuw nsw i32 %876, 16
  %883 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.f32 %883, 0
  %885 = extractvalue %dx.types.ResRet.f32 %883, 1
  %886 = add nuw nsw i32 %876, 32
  %887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.f32 %887, 0
  %889 = extractvalue %dx.types.ResRet.f32 %887, 2
  %890 = add nuw nsw i32 %876, 48
  %891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %890, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.f32 %891, 0
  %893 = extractvalue %dx.types.ResRet.f32 %891, 1
  %894 = extractvalue %dx.types.ResRet.f32 %891, 2
  %895 = extractvalue %dx.types.ResRet.f32 %891, 3
  %896 = add nuw nsw i32 %876, 64
  %897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.f32 %897, 0
  %899 = extractvalue %dx.types.ResRet.f32 %897, 1
  %900 = extractvalue %dx.types.ResRet.f32 %897, 2
  %901 = extractvalue %dx.types.ResRet.f32 %897, 3
  %902 = add nuw nsw i32 %876, 80
  %903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.f32 %903, 0
  %905 = extractvalue %dx.types.ResRet.f32 %903, 1
  %906 = extractvalue %dx.types.ResRet.f32 %903, 2
  %907 = extractvalue %dx.types.ResRet.f32 %903, 3
  %908 = add nuw nsw i32 %876, 96
  %909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.f32 %909, 0
  %911 = extractvalue %dx.types.ResRet.f32 %909, 1
  %912 = extractvalue %dx.types.ResRet.f32 %909, 2
  %913 = extractvalue %dx.types.ResRet.f32 %909, 3
  %914 = bitcast float %885 to i32
  %915 = fmul fast float %889, %785
  %916 = fmul fast float %889, %786
  %917 = fmul fast float %889, %787
  %918 = fsub fast float %762, %915
  %919 = fsub fast float %763, %916
  %920 = fsub fast float %764, %917
  %921 = fmul fast float %918, %892
  %922 = call float @dx.op.tertiary.f32(i32 46, float %919, float %898, float %921)  ; FMad(a,b,c)
  %923 = call float @dx.op.tertiary.f32(i32 46, float %920, float %904, float %922)  ; FMad(a,b,c)
  %924 = fadd fast float %923, %910
  %925 = fmul fast float %918, %893
  %926 = call float @dx.op.tertiary.f32(i32 46, float %919, float %899, float %925)  ; FMad(a,b,c)
  %927 = call float @dx.op.tertiary.f32(i32 46, float %920, float %905, float %926)  ; FMad(a,b,c)
  %928 = fadd fast float %927, %911
  %929 = fmul fast float %918, %894
  %930 = call float @dx.op.tertiary.f32(i32 46, float %919, float %900, float %929)  ; FMad(a,b,c)
  %931 = call float @dx.op.tertiary.f32(i32 46, float %920, float %906, float %930)  ; FMad(a,b,c)
  %932 = fadd fast float %931, %912
  %933 = fmul fast float %918, %895
  %934 = call float @dx.op.tertiary.f32(i32 46, float %919, float %901, float %933)  ; FMad(a,b,c)
  %935 = call float @dx.op.tertiary.f32(i32 46, float %920, float %907, float %934)  ; FMad(a,b,c)
  %936 = fadd fast float %935, %913
  %937 = fdiv fast float %924, %936
  %938 = fdiv fast float %928, %936
  %939 = fdiv fast float %932, %936
  %940 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %939)  ; FMax(a,b)
  %941 = fmul fast float %880, 5.000000e-01
  %942 = call float @dx.op.tertiary.f32(i32 46, float %941, float -0.000000e+00, float 0.000000e+00)  ; FMad(a,b,c)
  %943 = fadd fast float %942, %937
  %944 = fadd fast float %938, %941
  %945 = fmul fast float %943, %884
  %946 = fmul fast float %944, %884
  %947 = call float @dx.op.binary.f32(i32 35, float %945, float %880)  ; FMax(a,b)
  %948 = call float @dx.op.binary.f32(i32 35, float %946, float %880)  ; FMax(a,b)
  %949 = call float @dx.op.binary.f32(i32 36, float %947, float %881)  ; FMin(a,b)
  %950 = call float @dx.op.binary.f32(i32 36, float %948, float %881)  ; FMin(a,b)
  %951 = fadd fast float %949, %878
  %952 = fadd fast float %950, %879
  %953 = uitofp i32 %914 to float
  %954 = fadd fast float %940, %888
  %955 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %17, float %951, float %952, float %953, float undef, i32 0, i32 0, i32 undef, float %954)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %956 = extractvalue %dx.types.ResRet.f32 %955, 0
  %957 = fadd fast float %956, -1.000000e+00
  %958 = fmul fast float %957, %852
  %959 = fadd fast float %958, 1.000000e+00
  %960 = fmul fast float %959, %864
  br label %961

; <label>:961                                     ; preds = %875, %873
  %962 = phi float [ %960, %875 ], [ %864, %873 ]
  %963 = call float @dx.op.binary.f32(i32 36, float %962, float %962)  ; FMin(a,b)
  %964 = call float @dx.op.binary.f32(i32 36, float %962, float %963)  ; FMin(a,b)
  %965 = fcmp fast ogt float %964, 0.000000e+00
  br i1 %965, label %966, label %868, !dx.controlflow.hints !56

; <label>:966                                     ; preds = %961
  %967 = call float @dx.op.dot3.f32(i32 55, float %785, float %786, float %787, float %174, float %175, float %176)  ; Dot3(ax,ay,az,bx,by,bz)
  %968 = fcmp fast ogt float %282, 0.000000e+00
  %969 = select i1 %968, float 1.000000e+00, float -1.000000e+00
  %970 = fmul fast float %97, 7.812500e-03
  %971 = fmul fast float %97, 3.125000e-02
  %972 = fadd fast float %971, -3.125000e-02
  %973 = fmul fast float %969, 5.000000e-01
  %974 = fmul fast float %973, %967
  %975 = fmul fast float %969, %282
  %976 = fadd fast float %970, 4.921875e-01
  %977 = fadd fast float %976, %974
  %978 = fadd fast float %970, 0x3FB25F3060000000
  %979 = fadd fast float %972, %975
  %980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %977, float %978, float %979, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %981 = extractvalue %dx.types.ResRet.f32 %980, 0
  %982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.f32 %982, 1
  %984 = extractvalue %dx.types.CBufRet.f32 %982, 2
  %985 = select i1 %485, float %983, float %984
  %986 = fmul fast float %792, 0x400921FB60000000
  %987 = fmul fast float %986, %962
  %988 = fmul fast float %987, %981
  %989 = fmul fast float %988, %985
  %990 = fmul fast float %758, %442
  %991 = fmul fast float %990, %989
  %992 = fmul fast float %758, %443
  %993 = fmul fast float %992, %989
  %994 = fmul fast float %758, %444
  %995 = fmul fast float %994, %989
  %996 = fadd fast float %991, %431
  %997 = fadd fast float %993, %432
  %998 = fadd fast float %995, %433
  br label %868

; <label>:999                                     ; preds = %868
  br label %1000

; <label>:1000                                    ; preds = %999, %416
  %1001 = phi float [ %418, %416 ], [ %869, %999 ]
  %1002 = phi float [ %419, %416 ], [ %870, %999 ]
  %1003 = phi float [ %420, %416 ], [ %871, %999 ]
  %1004 = add i32 %417, 1
  %1005 = icmp ugt i32 %1004, %415
  br i1 %1005, label %1006, label %416

; <label>:1006                                    ; preds = %1000
  br label %1007

; <label>:1007                                    ; preds = %1006, %275
  %1008 = phi float [ 0.000000e+00, %275 ], [ %1001, %1006 ]
  %1009 = phi float [ 0.000000e+00, %275 ], [ %1002, %1006 ]
  %1010 = phi float [ 0.000000e+00, %275 ], [ %1003, %1006 ]
  %1011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %122, float %123, float %124, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1012 = extractvalue %dx.types.ResRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.ResRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.ResRet.f32 %1011, 2
  %1015 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1012)  ; IsNaN(value)
  %1016 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1013)  ; IsNaN(value)
  %1017 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1014)  ; IsNaN(value)
  %1018 = or i1 %1015, %1016
  %1019 = or i1 %1018, %1017
  %1020 = select i1 %1019, float 0.000000e+00, float %1012
  %1021 = select i1 %1019, float 0.000000e+00, float %1013
  %1022 = select i1 %1019, float 0.000000e+00, float %1014
  %1023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.f32 %1023, 1
  %1025 = fmul fast float %1020, %1024
  %1026 = fmul fast float %1021, %1024
  %1027 = fmul fast float %1022, %1024
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 3
  %1030 = fmul fast float %1025, %1029
  %1031 = fmul fast float %1026, %1029
  %1032 = fmul fast float %1027, %1029
  %1033 = fadd fast float %1030, %1008
  %1034 = fadd fast float %1031, %1009
  %1035 = fadd fast float %1032, %1010
  br label %1036

; <label>:1036                                    ; preds = %1007, %255
  %1037 = phi float [ %279, %1007 ], [ %271, %255 ]
  %1038 = phi float [ %280, %1007 ], [ %272, %255 ]
  %1039 = phi float [ %281, %1007 ], [ %273, %255 ]
  %1040 = phi float [ %1033, %1007 ], [ 0.000000e+00, %255 ]
  %1041 = phi float [ %1034, %1007 ], [ 0.000000e+00, %255 ]
  %1042 = phi float [ %1035, %1007 ], [ 0.000000e+00, %255 ]
  %1043 = fmul fast float %1037, %270
  %1044 = fmul fast float %1038, %270
  %1045 = fmul fast float %1039, %270
  %1046 = fmul fast float %1043, %1040
  %1047 = fmul fast float %1044, %1041
  %1048 = fmul fast float %1045, %1042
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.CBufRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.CBufRet.f32 %1049, 2
  %1053 = extractvalue %dx.types.CBufRet.f32 %1049, 3
  %1054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.CBufRet.f32 %1054, 1
  %1057 = extractvalue %dx.types.CBufRet.f32 %1054, 2
  %1058 = extractvalue %dx.types.CBufRet.f32 %1054, 3
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.CBufRet.f32 %1059, 1
  %1062 = extractvalue %dx.types.CBufRet.f32 %1059, 2
  %1063 = extractvalue %dx.types.CBufRet.f32 %1059, 3
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 0
  %1066 = extractvalue %dx.types.CBufRet.f32 %1064, 1
  %1067 = extractvalue %dx.types.CBufRet.f32 %1064, 2
  %1068 = extractvalue %dx.types.CBufRet.f32 %1064, 3
  %1069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1070 = extractvalue %dx.types.CBufRet.f32 %1069, 3
  %1071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.f32 %1071, 3
  %1073 = extractvalue %dx.types.CBufRet.f32 %1071, 0
  %1074 = extractvalue %dx.types.CBufRet.f32 %1071, 1
  %1075 = extractvalue %dx.types.CBufRet.f32 %1071, 2
  %1076 = fcmp fast olt float %1075, -5.000000e-01
  %1077 = fmul fast float %173, %172
  %1078 = fadd fast float %1077, %1053
  %1079 = call float @dx.op.dot3.f32(i32 55, float %174, float %175, float %176, float %1050, float %1051, float %1052)  ; Dot3(ax,ay,az,bx,by,bz)
  %1080 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1081 = extractvalue %dx.types.CBufRet.i32 %1080, 1
  %1082 = and i32 %1081, 1
  %1083 = icmp ne i32 %1082, 0
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 2
  %1086 = fcmp fast ogt float %1085, 0.000000e+00
  %1087 = and i1 %1083, %1086
  br i1 %1087, label %1088, label %1494, !dx.controlflow.hints !57

; <label>:1088                                    ; preds = %1036
  %1089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.f32 %1089, 3
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 2
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 2
  %1095 = fsub fast float %1092, %1094
  %1096 = and i32 %1081, 2
  %1097 = extractvalue %dx.types.CBufRet.i32 %1080, 0
  %1098 = call i32 @dx.op.binary.i32(i32 40, i32 %1097, i32 3)  ; UMin(a,b)
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1101 = extractvalue %dx.types.CBufRet.f32 %1099, 1
  %1102 = extractvalue %dx.types.CBufRet.f32 %1093, 0
  %1103 = extractvalue %dx.types.CBufRet.f32 %1093, 1
  %1104 = fsub fast float %1100, %1102
  %1105 = fsub fast float %1101, %1103
  %1106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.f32 %1106, 0
  %1108 = fcmp fast ogt float %1107, 0.000000e+00
  %1109 = fsub fast float -0.000000e+00, %1104
  %1110 = fsub fast float -0.000000e+00, %1105
  %1111 = call float @dx.op.dot2.f32(i32 54, float %174, float %175, float %174, float %175)  ; Dot2(ax,ay,bx,by)
  %1112 = call float @dx.op.dot2.f32(i32 54, float %174, float %175, float %1109, float %1110)  ; Dot2(ax,ay,bx,by)
  %1113 = fmul fast float %1112, 2.000000e+00
  %1114 = call float @dx.op.dot2.f32(i32 54, float %1109, float %1110, float %1109, float %1110)  ; Dot2(ax,ay,bx,by)
  %1115 = fmul fast float %1107, %1107
  %1116 = fsub fast float %1114, %1115
  %1117 = fmul fast float %1113, %1113
  %1118 = fmul fast float %1111, 4.000000e+00
  %1119 = fmul fast float %1118, %1116
  %1120 = fsub fast float %1117, %1119
  %1121 = fcmp fast ogt float %1120, 0.000000e+00
  br i1 %1121, label %1122, label %1137, !dx.controlflow.hints !58

; <label>:1122                                    ; preds = %1088
  %1123 = fcmp fast ogt float %1113, 0.000000e+00
  %1124 = call float @dx.op.unary.f32(i32 24, float %1120)  ; Sqrt(value)
  %1125 = fsub fast float -0.000000e+00, %1124
  %1126 = select i1 %1123, float %1124, float %1125
  %1127 = fadd fast float %1126, %1113
  %1128 = fmul float %1127, -5.000000e-01
  %1129 = fdiv fast float %1128, %1111
  %1130 = call float @dx.op.binary.f32(i32 35, float %1129, float 0.000000e+00)  ; FMax(a,b)
  %1131 = call float @dx.op.binary.f32(i32 36, float %1077, float %1130)  ; FMin(a,b)
  %1132 = fdiv fast float %1116, %1128
  %1133 = call float @dx.op.binary.f32(i32 35, float %1132, float 0.000000e+00)  ; FMax(a,b)
  %1134 = call float @dx.op.binary.f32(i32 36, float %1077, float %1133)  ; FMin(a,b)
  %1135 = call float @dx.op.binary.f32(i32 36, float %1131, float %1134)  ; FMin(a,b)
  %1136 = call float @dx.op.binary.f32(i32 35, float %1131, float %1134)  ; FMax(a,b)
  br label %1137

; <label>:1137                                    ; preds = %1122, %1088
  %1138 = phi float [ %1136, %1122 ], [ -1.000000e+00, %1088 ]
  %1139 = phi float [ %1135, %1122 ], [ -1.000000e+00, %1088 ]
  %1140 = phi i1 [ true, %1122 ], [ false, %1088 ]
  %1141 = and i1 %1108, %1140
  br i1 %1141, label %1142, label %1144, !dx.controlflow.hints !59

; <label>:1142                                    ; preds = %1137
  %1143 = fcmp fast oeq float %1139, %1138
  br i1 %1143, label %1447, label %1145, !dx.controlflow.hints !60

; <label>:1144                                    ; preds = %1137
  br i1 %1108, label %1447, label %1145, !dx.controlflow.hints !61

; <label>:1145                                    ; preds = %1144, %1142
  %1146 = phi float [ %1077, %1144 ], [ %1138, %1142 ]
  %1147 = phi float [ 0.000000e+00, %1144 ], [ %1139, %1142 ]
  %1148 = icmp ne i32 %1096, 0
  %1149 = fmul fast float %1146, %176
  %1150 = fadd fast float %1149, %1090
  %1151 = fmul fast float %1150, %1146
  %1152 = select i1 %1148, float 0.000000e+00, float %1151
  %1153 = fcmp fast oeq float %176, 0.000000e+00
  %1154 = fdiv fast float %1095, %176
  %1155 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1154)  ; FMax(a,b)
  %1156 = select i1 %1153, float %1146, float %1155
  %1157 = call float @dx.op.binary.f32(i32 36, float %1146, float %1156)  ; FMin(a,b)
  %1158 = fcmp fast ogt float %176, 0.000000e+00
  %1159 = fcmp fast olt float %1095, 0.000000e+00
  br i1 %1158, label %1160, label %1217, !dx.controlflow.hints !62

; <label>:1160                                    ; preds = %1145
  %1161 = icmp eq i32 %1096, 0
  br i1 %1159, label %1162, label %1206, !dx.controlflow.hints !63

; <label>:1162                                    ; preds = %1160
  %1163 = select i1 %1161, float %1146, float 0.000000e+00
  %1164 = fsub fast float -0.000000e+00, %1163
  %1165 = call float @dx.op.unary.f32(i32 6, float %1164)  ; FAbs(value)
  %1166 = fmul fast float %1163, %176
  %1167 = fadd fast float %1166, %1090
  %1168 = fmul fast float %1165, %1167
  %1169 = fsub fast float %1152, %1168
  %1170 = fsub fast float %1146, %1165
  %1171 = select i1 %1161, float %1170, float 0.000000e+00
  %1172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1173 = extractvalue %dx.types.CBufRet.f32 %1172, 0
  %1174 = extractvalue %dx.types.CBufRet.f32 %1172, 1
  %1175 = extractvalue %dx.types.CBufRet.f32 %1172, 2
  %1176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1177 = extractvalue %dx.types.CBufRet.f32 %1176, 0
  %1178 = extractvalue %dx.types.CBufRet.f32 %1176, 1
  %1179 = extractvalue %dx.types.CBufRet.f32 %1176, 2
  %1180 = extractvalue %dx.types.CBufRet.f32 %1176, 3
  %1181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1182 = extractvalue %dx.types.CBufRet.f32 %1181, 3
  %1183 = call float @dx.op.binary.f32(i32 36, float %1169, float %1182)  ; FMin(a,b)
  %1184 = fmul fast float %1180, %1171
  %1185 = call float @dx.op.unary.f32(i32 7, float %1184)  ; Saturate(value)
  %1186 = fsub fast float %1177, %1173
  %1187 = fsub fast float %1178, %1174
  %1188 = fsub fast float %1179, %1175
  %1189 = fmul fast float %1185, %1186
  %1190 = fmul fast float %1185, %1187
  %1191 = fmul fast float %1185, %1188
  %1192 = fadd fast float %1189, %1173
  %1193 = fadd fast float %1190, %1174
  %1194 = fadd fast float %1191, %1175
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.CBufRet.f32 %1195, 1
  %1198 = fadd fast float %1197, %1196
  %1199 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1195, 2
  %1201 = extractvalue %dx.types.CBufRet.f32 %1195, 3
  %1202 = fadd fast float %1201, %1200
  %1203 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  %1204 = fmul fast float %1199, %1183
  %1205 = fmul fast float %1204, %1203
  br label %1447

; <label>:1206                                    ; preds = %1160
  br i1 %1161, label %1207, label %1228, !dx.controlflow.hints !64

; <label>:1207                                    ; preds = %1206
  %1208 = call float @dx.op.binary.f32(i32 36, float %1157, float %1147)  ; FMin(a,b)
  %1209 = fsub fast float %1157, %1208
  %1210 = fsub fast float %1209, %1146
  %1211 = call float @dx.op.unary.f32(i32 6, float %1210)  ; FAbs(value)
  %1212 = fadd fast float %1209, %1146
  %1213 = fmul fast float %1212, %176
  %1214 = fadd fast float %1213, %1090
  %1215 = fmul fast float %1214, %1211
  %1216 = fsub fast float %1152, %1215
  br label %1228

; <label>:1217                                    ; preds = %1145
  br i1 %1159, label %1218, label %1228, !dx.controlflow.hints !65

; <label>:1218                                    ; preds = %1217
  %1219 = call float @dx.op.binary.f32(i32 35, float %1147, float %1157)  ; FMax(a,b)
  %1220 = icmp eq i32 %1096, 0
  %1221 = select i1 %1220, float %1157, float 0.000000e+00
  %1222 = fsub fast float -0.000000e+00, %1221
  %1223 = call float @dx.op.unary.f32(i32 6, float %1222)  ; FAbs(value)
  %1224 = fmul fast float %1221, %176
  %1225 = fadd fast float %1224, %1090
  %1226 = fmul fast float %1223, %1225
  %1227 = fsub fast float %1152, %1226
  br label %1228

; <label>:1228                                    ; preds = %1218, %1217, %1207, %1206
  %1229 = phi float [ %1147, %1206 ], [ %1147, %1207 ], [ %1219, %1218 ], [ %1147, %1217 ]
  %1230 = phi float [ 0.000000e+00, %1206 ], [ %1211, %1207 ], [ %1223, %1218 ], [ 0.000000e+00, %1217 ]
  %1231 = phi float [ %1152, %1206 ], [ %1216, %1207 ], [ %1227, %1218 ], [ %1152, %1217 ]
  %1232 = phi float [ %1157, %1206 ], [ %1157, %1207 ], [ %1146, %1218 ], [ %1146, %1217 ]
  %1233 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 0
  store float -1.000000e+00, float* %1233, align 4, !tbaa !32, !noalias !66
  %1234 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 1
  store float -1.000000e+00, float* %1234, align 4, !tbaa !32, !noalias !66
  %1235 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 2
  store float -1.000000e+00, float* %1235, align 4, !tbaa !32, !noalias !66
  %1236 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 0
  store float -1.000000e+00, float* %1236, align 4, !tbaa !32, !noalias !66
  %1237 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 1
  store float -1.000000e+00, float* %1237, align 4, !tbaa !32, !noalias !66
  %1238 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 2
  store float -1.000000e+00, float* %1238, align 4, !tbaa !32, !noalias !66
  %1239 = icmp sgt i32 %1098, 0
  br i1 %1239, label %1240, label %1301

; <label>:1240                                    ; preds = %1228
  br label %1241

; <label>:1241                                    ; preds = %1290, %1240
  %1242 = phi i32 [ %1291, %1290 ], [ 0, %1240 ]
  %1243 = phi i32 [ %1292, %1290 ], [ 0, %1240 ]
  %1244 = add nuw i32 %1243, 171
  %1245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %1244)  ; CBufferLoadLegacy(handle,regIndex)
  %1246 = extractvalue %dx.types.CBufRet.f32 %1245, 0
  %1247 = extractvalue %dx.types.CBufRet.f32 %1245, 1
  %1248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1249 = extractvalue %dx.types.CBufRet.f32 %1248, 0
  %1250 = extractvalue %dx.types.CBufRet.f32 %1248, 1
  %1251 = fsub fast float %1246, %1249
  %1252 = fsub fast float %1247, %1250
  %1253 = extractvalue %dx.types.CBufRet.f32 %1245, 2
  %1254 = fsub fast float -0.000000e+00, %1251
  %1255 = fsub fast float -0.000000e+00, %1252
  %1256 = call float @dx.op.dot2.f32(i32 54, float %174, float %175, float %1254, float %1255)  ; Dot2(ax,ay,bx,by)
  %1257 = fmul fast float %1256, 2.000000e+00
  %1258 = call float @dx.op.dot2.f32(i32 54, float %1254, float %1255, float %1254, float %1255)  ; Dot2(ax,ay,bx,by)
  %1259 = fmul fast float %1253, %1253
  %1260 = fsub fast float %1258, %1259
  %1261 = fmul fast float %1257, %1257
  %1262 = fmul fast float %1118, %1260
  %1263 = fsub fast float %1261, %1262
  %1264 = fcmp fast ogt float %1263, 0.000000e+00
  br i1 %1264, label %1265, label %1280, !dx.controlflow.hints !58

; <label>:1265                                    ; preds = %1241
  %1266 = fcmp fast ogt float %1257, 0.000000e+00
  %1267 = call float @dx.op.unary.f32(i32 24, float %1263)  ; Sqrt(value)
  %1268 = fsub fast float -0.000000e+00, %1267
  %1269 = select i1 %1266, float %1267, float %1268
  %1270 = fadd fast float %1269, %1257
  %1271 = fmul float %1270, -5.000000e-01
  %1272 = fdiv fast float %1271, %1111
  %1273 = call float @dx.op.binary.f32(i32 35, float %1272, float 0.000000e+00)  ; FMax(a,b)
  %1274 = call float @dx.op.binary.f32(i32 36, float %1146, float %1273)  ; FMin(a,b)
  %1275 = fdiv fast float %1260, %1271
  %1276 = call float @dx.op.binary.f32(i32 35, float %1275, float 0.000000e+00)  ; FMax(a,b)
  %1277 = call float @dx.op.binary.f32(i32 36, float %1146, float %1276)  ; FMin(a,b)
  %1278 = call float @dx.op.binary.f32(i32 36, float %1274, float %1277)  ; FMin(a,b)
  %1279 = call float @dx.op.binary.f32(i32 35, float %1274, float %1277)  ; FMax(a,b)
  br label %1280

; <label>:1280                                    ; preds = %1265, %1241
  %1281 = phi float [ %1279, %1265 ], [ -1.000000e+00, %1241 ]
  %1282 = phi float [ %1278, %1265 ], [ -1.000000e+00, %1241 ]
  %1283 = phi i1 [ true, %1265 ], [ false, %1241 ]
  br i1 %1283, label %1284, label %1290, !dx.controlflow.hints !72

; <label>:1284                                    ; preds = %1280
  %1285 = call float @dx.op.binary.f32(i32 35, float %1229, float %1282)  ; FMax(a,b)
  %1286 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %1243
  store float %1285, float* %1286, align 4, !tbaa !32, !noalias !66
  %1287 = call float @dx.op.binary.f32(i32 35, float %1229, float %1281)  ; FMax(a,b)
  %1288 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %1243
  store float %1287, float* %1288, align 4, !tbaa !32, !noalias !66
  %1289 = add nsw i32 %1242, 1
  br label %1290

; <label>:1290                                    ; preds = %1284, %1280
  %1291 = phi i32 [ %1289, %1284 ], [ %1242, %1280 ]
  %1292 = add nuw nsw i32 %1243, 1
  %1293 = icmp eq i32 %1292, %1098
  br i1 %1293, label %1294, label %1241

; <label>:1294                                    ; preds = %1290
  %1295 = load float, float* %1235, align 4, !tbaa !32, !alias.scope !73, !noalias !76
  %1296 = load float, float* %1234, align 4, !tbaa !32, !alias.scope !79, !noalias !80
  %1297 = load float, float* %1233, align 4, !tbaa !32, !alias.scope !81, !noalias !82
  %1298 = load float, float* %1238, align 4, !tbaa !32, !alias.scope !83, !noalias !86
  %1299 = load float, float* %1237, align 4, !tbaa !32, !alias.scope !89, !noalias !90
  %1300 = load float, float* %1236, align 4, !tbaa !32, !alias.scope !91, !noalias !92
  br label %1301

; <label>:1301                                    ; preds = %1294, %1228
  %1302 = phi float [ -1.000000e+00, %1228 ], [ %1300, %1294 ]
  %1303 = phi float [ -1.000000e+00, %1228 ], [ %1299, %1294 ]
  %1304 = phi float [ -1.000000e+00, %1228 ], [ %1298, %1294 ]
  %1305 = phi float [ -1.000000e+00, %1228 ], [ %1297, %1294 ]
  %1306 = phi float [ -1.000000e+00, %1228 ], [ %1296, %1294 ]
  %1307 = phi float [ -1.000000e+00, %1228 ], [ %1295, %1294 ]
  %1308 = phi i32 [ 0, %1228 ], [ %1291, %1294 ]
  %1309 = call float @dx.op.binary.f32(i32 36, float %1306, float %1307)  ; FMin(a,b)
  %1310 = call float @dx.op.binary.f32(i32 36, float %1305, float %1309)  ; FMin(a,b)
  %1311 = call float @dx.op.binary.f32(i32 35, float %1305, float %1306)  ; FMax(a,b)
  %1312 = call float @dx.op.binary.f32(i32 36, float %1311, float %1307)  ; FMin(a,b)
  %1313 = call float @dx.op.binary.f32(i32 36, float %1305, float %1306)  ; FMin(a,b)
  %1314 = call float @dx.op.binary.f32(i32 35, float %1313, float %1312)  ; FMax(a,b)
  %1315 = call float @dx.op.binary.f32(i32 35, float %1306, float %1307)  ; FMax(a,b)
  %1316 = call float @dx.op.binary.f32(i32 35, float %1305, float %1315)  ; FMax(a,b)
  store float %1310, float* %1233, align 4, !tbaa !32, !alias.scope !81, !noalias !82
  store float %1314, float* %1234, align 4, !tbaa !32, !alias.scope !79, !noalias !80
  store float %1316, float* %1235, align 4, !tbaa !32, !alias.scope !73, !noalias !76
  %1317 = call float @dx.op.binary.f32(i32 36, float %1303, float %1304)  ; FMin(a,b)
  %1318 = call float @dx.op.binary.f32(i32 36, float %1302, float %1317)  ; FMin(a,b)
  %1319 = call float @dx.op.binary.f32(i32 35, float %1302, float %1303)  ; FMax(a,b)
  %1320 = call float @dx.op.binary.f32(i32 36, float %1319, float %1304)  ; FMin(a,b)
  %1321 = call float @dx.op.binary.f32(i32 36, float %1302, float %1303)  ; FMin(a,b)
  %1322 = call float @dx.op.binary.f32(i32 35, float %1321, float %1320)  ; FMax(a,b)
  %1323 = call float @dx.op.binary.f32(i32 35, float %1303, float %1304)  ; FMax(a,b)
  %1324 = call float @dx.op.binary.f32(i32 35, float %1302, float %1323)  ; FMax(a,b)
  store float %1318, float* %1236, align 4, !tbaa !32, !alias.scope !91, !noalias !92
  store float %1322, float* %1237, align 4, !tbaa !32, !alias.scope !89, !noalias !90
  store float %1324, float* %1238, align 4, !tbaa !32, !alias.scope !83, !noalias !86
  %1325 = sub nsw i32 3, %1308
  %1326 = icmp sgt i32 %1325, 2
  br i1 %1326, label %1327, label %1365, !dx.controlflow.hints !93

; <label>:1327                                    ; preds = %1301
  %1328 = icmp eq i32 %1096, 0
  %1329 = fsub fast float %1146, %1230
  %1330 = select i1 %1328, float %1329, float %1230
  %1331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1332 = extractvalue %dx.types.CBufRet.f32 %1331, 0
  %1333 = extractvalue %dx.types.CBufRet.f32 %1331, 1
  %1334 = extractvalue %dx.types.CBufRet.f32 %1331, 2
  %1335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1335, 0
  %1337 = extractvalue %dx.types.CBufRet.f32 %1335, 1
  %1338 = extractvalue %dx.types.CBufRet.f32 %1335, 2
  %1339 = extractvalue %dx.types.CBufRet.f32 %1335, 3
  %1340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1341 = extractvalue %dx.types.CBufRet.f32 %1340, 3
  %1342 = call float @dx.op.binary.f32(i32 36, float %1231, float %1341)  ; FMin(a,b)
  %1343 = fmul fast float %1339, %1330
  %1344 = call float @dx.op.unary.f32(i32 7, float %1343)  ; Saturate(value)
  %1345 = fsub fast float %1336, %1332
  %1346 = fsub fast float %1337, %1333
  %1347 = fsub fast float %1338, %1334
  %1348 = fmul fast float %1344, %1345
  %1349 = fmul fast float %1344, %1346
  %1350 = fmul fast float %1344, %1347
  %1351 = fadd fast float %1348, %1332
  %1352 = fadd fast float %1349, %1333
  %1353 = fadd fast float %1350, %1334
  %1354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1355 = extractvalue %dx.types.CBufRet.f32 %1354, 0
  %1356 = extractvalue %dx.types.CBufRet.f32 %1354, 1
  %1357 = fadd fast float %1356, %1355
  %1358 = call float @dx.op.unary.f32(i32 7, float %1357)  ; Saturate(value)
  %1359 = extractvalue %dx.types.CBufRet.f32 %1354, 2
  %1360 = extractvalue %dx.types.CBufRet.f32 %1354, 3
  %1361 = fadd fast float %1360, %1359
  %1362 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1363 = fmul fast float %1358, %1342
  %1364 = fmul fast float %1363, %1362
  br label %1447

; <label>:1365                                    ; preds = %1301
  %1366 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %1325
  %1367 = load float, float* %1366, align 4, !tbaa !32, !noalias !66
  %1368 = fcmp fast olt float %1367, %1232
  %1369 = icmp sgt i32 %1308, 0
  %1370 = and i1 %1369, %1368
  br i1 %1370, label %1371, label %1408

; <label>:1371                                    ; preds = %1365
  br label %1372

; <label>:1372                                    ; preds = %1401, %1371
  %1373 = phi float [ %1402, %1401 ], [ %1230, %1371 ]
  %1374 = phi float [ %1403, %1401 ], [ %1231, %1371 ]
  %1375 = phi float [ %1383, %1401 ], [ %1367, %1371 ]
  %1376 = phi i32 [ %1380, %1401 ], [ %1325, %1371 ]
  %1377 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %1376
  %1378 = load float, float* %1377, align 4, !tbaa !32, !noalias !66
  %1379 = icmp slt i32 %1376, 2
  %1380 = add nsw i32 %1376, 1
  %1381 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %1380
  %1382 = load float, float* %1381, align 4, !tbaa !32, !noalias !66
  %1383 = select i1 %1379, float %1382, float %1146
  %1384 = call float @dx.op.binary.f32(i32 36, float %1383, float %1378)  ; FMin(a,b)
  %1385 = call float @dx.op.binary.f32(i32 36, float %1232, float %1384)  ; FMin(a,b)
  %1386 = icmp eq i32 %1096, 0
  %1387 = fadd fast float %1385, %1375
  %1388 = fmul fast float %1387, %176
  %1389 = fadd fast float %1388, %1090
  br i1 %1386, label %1395, label %1390, !dx.controlflow.hints !94

; <label>:1390                                    ; preds = %1372
  %1391 = fsub fast float %1385, %1375
  %1392 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1391)  ; FMax(a,b)
  %1393 = fmul fast float %1392, %1389
  %1394 = fadd fast float %1393, %1374
  br label %1401

; <label>:1395                                    ; preds = %1372
  %1396 = fsub fast float %1375, %1385
  %1397 = call float @dx.op.unary.f32(i32 6, float %1396)  ; FAbs(value)
  %1398 = fadd fast float %1397, %1373
  %1399 = fmul fast float %1397, %1389
  %1400 = fsub fast float %1374, %1399
  br label %1401

; <label>:1401                                    ; preds = %1395, %1390
  %1402 = phi float [ %1392, %1390 ], [ %1398, %1395 ]
  %1403 = phi float [ %1394, %1390 ], [ %1400, %1395 ]
  %1404 = fcmp fast olt float %1383, %1232
  %1405 = icmp slt i32 %1380, 3
  %1406 = and i1 %1405, %1404
  br i1 %1406, label %1372, label %1407

; <label>:1407                                    ; preds = %1401
  br label %1408

; <label>:1408                                    ; preds = %1407, %1365
  %1409 = phi float [ %1230, %1365 ], [ %1402, %1407 ]
  %1410 = phi float [ %1231, %1365 ], [ %1403, %1407 ]
  %1411 = fsub fast float %1146, %1409
  %1412 = select i1 %1148, float %1409, float %1411
  %1413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1414 = extractvalue %dx.types.CBufRet.f32 %1413, 0
  %1415 = extractvalue %dx.types.CBufRet.f32 %1413, 1
  %1416 = extractvalue %dx.types.CBufRet.f32 %1413, 2
  %1417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1418 = extractvalue %dx.types.CBufRet.f32 %1417, 0
  %1419 = extractvalue %dx.types.CBufRet.f32 %1417, 1
  %1420 = extractvalue %dx.types.CBufRet.f32 %1417, 2
  %1421 = extractvalue %dx.types.CBufRet.f32 %1417, 3
  %1422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.f32 %1422, 3
  %1424 = call float @dx.op.binary.f32(i32 36, float %1410, float %1423)  ; FMin(a,b)
  %1425 = fmul fast float %1421, %1412
  %1426 = call float @dx.op.unary.f32(i32 7, float %1425)  ; Saturate(value)
  %1427 = fsub fast float %1418, %1414
  %1428 = fsub fast float %1419, %1415
  %1429 = fsub fast float %1420, %1416
  %1430 = fmul fast float %1426, %1427
  %1431 = fmul fast float %1426, %1428
  %1432 = fmul fast float %1426, %1429
  %1433 = fadd fast float %1430, %1414
  %1434 = fadd fast float %1431, %1415
  %1435 = fadd fast float %1432, %1416
  %1436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1437 = extractvalue %dx.types.CBufRet.f32 %1436, 0
  %1438 = extractvalue %dx.types.CBufRet.f32 %1436, 1
  %1439 = fadd fast float %1438, %1437
  %1440 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  %1441 = extractvalue %dx.types.CBufRet.f32 %1436, 2
  %1442 = extractvalue %dx.types.CBufRet.f32 %1436, 3
  %1443 = fadd fast float %1442, %1441
  %1444 = call float @dx.op.unary.f32(i32 7, float %1443)  ; Saturate(value)
  %1445 = fmul fast float %1440, %1424
  %1446 = fmul fast float %1445, %1444
  br label %1447

; <label>:1447                                    ; preds = %1408, %1327, %1162, %1144, %1142
  %1448 = phi float [ %1171, %1162 ], [ %1330, %1327 ], [ %1412, %1408 ], [ 0.000000e+00, %1142 ], [ 0.000000e+00, %1144 ]
  %1449 = phi float [ %1205, %1162 ], [ %1364, %1327 ], [ %1446, %1408 ], [ 0.000000e+00, %1142 ], [ 0.000000e+00, %1144 ]
  %1450 = phi float [ %1192, %1162 ], [ %1351, %1327 ], [ %1433, %1408 ], [ 0.000000e+00, %1142 ], [ 0.000000e+00, %1144 ]
  %1451 = phi float [ %1193, %1162 ], [ %1352, %1327 ], [ %1434, %1408 ], [ 0.000000e+00, %1142 ], [ 0.000000e+00, %1144 ]
  %1452 = phi float [ %1194, %1162 ], [ %1353, %1327 ], [ %1435, %1408 ], [ 0.000000e+00, %1142 ], [ 0.000000e+00, %1144 ]
  %1453 = fmul fast float %1085, %1449
  %1454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1455 = extractvalue %dx.types.CBufRet.f32 %1454, 2
  %1456 = fsub fast float %1092, %1455
  %1457 = fcmp fast olt float %1453, -2.000000e+01
  %1458 = call float @dx.op.unary.f32(i32 21, float %1453)  ; Exp(value)
  %1459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1460 = extractvalue %dx.types.CBufRet.f32 %1459, 2
  %1461 = extractvalue %dx.types.CBufRet.f32 %1459, 3
  %1462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1463 = extractvalue %dx.types.CBufRet.f32 %1462, 2
  %1464 = fmul fast float %1461, %1456
  %1465 = call float @dx.op.unary.f32(i32 7, float %1464)  ; Saturate(value)
  %1466 = fsub fast float 1.000000e+00, %1465
  %1467 = fmul fast float %176, 5.000000e-01
  %1468 = fadd fast float %1467, 5.000000e-01
  %1469 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  %1470 = fsub fast float 1.000000e+00, %1469
  %1471 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1466)  ; FMax(a,b)
  %1472 = fdiv fast float %1470, %1471
  %1473 = fsub fast float %1456, %168
  %1474 = call float @dx.op.unary.f32(i32 6, float %1473)  ; FAbs(value)
  %1475 = fmul fast float %1474, %1460
  %1476 = call float @dx.op.unary.f32(i32 7, float %1472)  ; Saturate(value)
  %1477 = fsub fast float 1.000000e+00, %1475
  %1478 = fmul fast float %1477, %1476
  %1479 = fadd fast float %1478, %1475
  %1480 = fmul fast float %1463, %1456
  %1481 = call float @dx.op.unary.f32(i32 7, float %1480)  ; Saturate(value)
  %1482 = fsub fast float 1.000000e+00, %1479
  %1483 = fmul fast float %1482, %1481
  %1484 = fadd fast float %1483, %1479
  %1485 = call float @dx.op.unary.f32(i32 7, float %1484)  ; Saturate(value)
  %1486 = fadd fast float %1458, -1.000000e+00
  %1487 = select i1 %1457, float -1.000000e+00, float %1486
  %1488 = fmul fast float %1485, %1487
  %1489 = fadd fast float %1488, 1.000000e+00
  %1490 = fsub fast float -0.000000e+00, %1488
  %1491 = fmul fast float %1450, %1490
  %1492 = fmul fast float %1451, %1490
  %1493 = fmul fast float %1452, %1490
  br label %1494

; <label>:1494                                    ; preds = %1447, %1036
  %1495 = phi float [ %1448, %1447 ], [ 0.000000e+00, %1036 ]
  %1496 = phi float [ %1489, %1447 ], [ 1.000000e+00, %1036 ]
  %1497 = phi float [ %1491, %1447 ], [ 0.000000e+00, %1036 ]
  %1498 = phi float [ %1492, %1447 ], [ 0.000000e+00, %1036 ]
  %1499 = phi float [ %1493, %1447 ], [ 0.000000e+00, %1036 ]
  %1500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.f32 %1500, 1
  %1502 = fsub fast float 1.000000e+00, %1496
  %1503 = fmul fast float %1502, %1078
  %1504 = fmul fast float %1503, %1501
  %1505 = fsub fast float %1078, %1504
  br i1 %1076, label %1506, label %1535, !dx.controlflow.hints !95

; <label>:1506                                    ; preds = %1494
  %1507 = fmul fast float %1079, %1073
  %1508 = fadd fast float %1507, %1074
  %1509 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  %1510 = fmul fast float %1055, %1505
  %1511 = fsub fast float -0.000000e+00, %1510
  %1512 = fmul fast float %1056, %1505
  %1513 = fsub fast float -0.000000e+00, %1512
  %1514 = call float @dx.op.unary.f32(i32 21, float %1511)  ; Exp(value)
  %1515 = call float @dx.op.unary.f32(i32 21, float %1513)  ; Exp(value)
  %1516 = call float @dx.op.binary.f32(i32 35, float %1063, float %1514)  ; FMax(a,b)
  %1517 = call float @dx.op.binary.f32(i32 35, float %1063, float %1515)  ; FMax(a,b)
  %1518 = fsub fast float %1517, %1516
  %1519 = fmul fast float %1518, %1509
  %1520 = fadd fast float %1519, %1516
  %1521 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1522 = fsub fast float %1060, %1065
  %1523 = fsub fast float %1061, %1066
  %1524 = fsub fast float %1062, %1067
  %1525 = fmul fast float %1509, %1522
  %1526 = fmul fast float %1509, %1523
  %1527 = fmul fast float %1509, %1524
  %1528 = fadd fast float %1525, %1065
  %1529 = fadd fast float %1526, %1066
  %1530 = fadd fast float %1527, %1067
  %1531 = fsub fast float 1.000000e+00, %1521
  %1532 = fmul fast float %1531, %1528
  %1533 = fmul fast float %1531, %1529
  %1534 = fmul fast float %1531, %1530
  br label %1594

; <label>:1535                                    ; preds = %1494
  %1536 = fmul fast float %1505, %1072
  %1537 = call float @dx.op.unary.f32(i32 7, float %1536)  ; Saturate(value)
  %1538 = fsub fast float 2.000000e+00, %1537
  %1539 = fmul fast float %1537, 9.921875e-01
  %1540 = fmul fast float %1539, %1538
  %1541 = fadd fast float %1540, 3.906250e-03
  %1542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %1541, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1543 = extractvalue %dx.types.ResRet.f32 %1542, 0
  %1544 = fsub fast float %1537, %1543
  %1545 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1544)  ; FMax(a,b)
  %1546 = fmul fast float %1058, %168
  %1547 = call float @dx.op.unary.f32(i32 6, float %1546)  ; FAbs(value)
  %1548 = fcmp fast ogt float %1547, 0x3EB0C6F7A0000000
  br i1 %1548, label %1549, label %1555, !dx.controlflow.hints !96

; <label>:1549                                    ; preds = %1535
  %1550 = fmul fast float %1546, 0xBFF7154760000000
  %1551 = call float @dx.op.unary.f32(i32 21, float %1550)  ; Exp(value)
  %1552 = fsub fast float 1.000000e+00, %1551
  %1553 = fdiv fast float %1552, %1546
  %1554 = fmul fast float %1553, %1068
  br label %1555

; <label>:1555                                    ; preds = %1549, %1535
  %1556 = phi float [ %1554, %1549 ], [ %1068, %1535 ]
  %1557 = fadd fast float %1556, %1070
  %1558 = fmul fast float %1557, %1545
  %1559 = fmul fast float %1055, %1558
  %1560 = fsub fast float -0.000000e+00, %1559
  %1561 = fmul fast float %1056, %1558
  %1562 = fsub fast float -0.000000e+00, %1561
  %1563 = fmul fast float %1057, %1558
  %1564 = fsub fast float -0.000000e+00, %1563
  %1565 = call float @dx.op.unary.f32(i32 21, float %1560)  ; Exp(value)
  %1566 = call float @dx.op.unary.f32(i32 21, float %1562)  ; Exp(value)
  %1567 = call float @dx.op.unary.f32(i32 21, float %1564)  ; Exp(value)
  %1568 = fmul fast float %1079, %1079
  %1569 = fadd fast float %1568, 1.000000e+00
  %1570 = fmul fast float %1569, 0x3FAE8EC8A0000000
  %1571 = fmul fast float %1570, %1065
  %1572 = fmul fast float %1570, %1066
  %1573 = fmul fast float %1570, %1067
  %1574 = fmul fast float %1079, %1063
  %1575 = fsub fast float 1.000000e+00, %1574
  %1576 = fmul fast float %1063, %1063
  %1577 = fsub fast float 1.000000e+00, %1576
  %1578 = fmul fast float %1577, 0x3FB45F3060000000
  %1579 = fmul fast float %1575, %1575
  %1580 = fdiv fast float 1.000000e+00, %1579
  %1581 = fmul fast float %1578, %1580
  %1582 = fmul fast float %1581, %1060
  %1583 = fmul fast float %1581, %1061
  %1584 = fmul fast float %1581, %1062
  %1585 = fadd fast float %1582, %1571
  %1586 = fadd fast float %1583, %1572
  %1587 = fadd fast float %1584, %1573
  %1588 = fsub fast float 1.000000e+00, %1565
  %1589 = fsub fast float 1.000000e+00, %1566
  %1590 = fsub fast float 1.000000e+00, %1567
  %1591 = fmul fast float %1585, %1588
  %1592 = fmul fast float %1586, %1589
  %1593 = fmul fast float %1587, %1590
  br label %1594

; <label>:1594                                    ; preds = %1555, %1506
  %1595 = phi float [ %1532, %1506 ], [ %1591, %1555 ]
  %1596 = phi float [ %1533, %1506 ], [ %1592, %1555 ]
  %1597 = phi float [ %1534, %1506 ], [ %1593, %1555 ]
  %1598 = phi float [ %1521, %1506 ], [ %1565, %1555 ]
  %1599 = phi float [ %1521, %1506 ], [ %1566, %1555 ]
  %1600 = phi float [ %1521, %1506 ], [ %1567, %1555 ]
  br i1 %1087, label %1601, label %1799, !dx.controlflow.hints !97

; <label>:1601                                    ; preds = %1594
  %1602 = extractvalue %dx.types.CBufRet.f32 %1500, 0
  %1603 = fmul fast float %1602, %1502
  %1604 = fsub fast float %1497, %1595
  %1605 = fsub fast float %1498, %1596
  %1606 = fsub fast float %1499, %1597
  %1607 = fmul fast float %1603, %1604
  %1608 = fmul fast float %1603, %1605
  %1609 = fmul fast float %1603, %1606
  %1610 = fadd fast float %1607, %1595
  %1611 = fadd fast float %1608, %1596
  %1612 = fadd fast float %1609, %1597
  %1613 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1598)  ; FMax(a,b)
  %1614 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1599)  ; FMax(a,b)
  %1615 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1600)  ; FMax(a,b)
  %1616 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1496)  ; FMax(a,b)
  %1617 = call float @dx.op.binary.f32(i32 35, float %1495, float %1505)  ; FMax(a,b)
  %1618 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1617)  ; FMax(a,b)
  %1619 = fdiv fast float %1495, %1618
  %1620 = call float @dx.op.unary.f32(i32 7, float %1619)  ; Saturate(value)
  %1621 = fdiv fast float %1505, %1618
  %1622 = call float @dx.op.unary.f32(i32 7, float %1621)  ; Saturate(value)
  %1623 = fcmp fast une float %1616, 1.000000e+00
  br i1 %1623, label %1624, label %1637, !dx.controlflow.hints !98

; <label>:1624                                    ; preds = %1601
  %1625 = call float @dx.op.unary.f32(i32 23, float %1616)  ; Log(value)
  %1626 = fmul fast float %1625, 0x3FE62E4300000000
  %1627 = fmul fast float %1497, %1626
  %1628 = fsub fast float -0.000000e+00, %1627
  %1629 = fmul fast float %1498, %1626
  %1630 = fsub fast float -0.000000e+00, %1629
  %1631 = fmul fast float %1499, %1626
  %1632 = fsub fast float -0.000000e+00, %1631
  %1633 = fsub fast float 1.000000e+00, %1616
  %1634 = fdiv fast float %1628, %1633
  %1635 = fdiv fast float %1630, %1633
  %1636 = fdiv fast float %1632, %1633
  br label %1637

; <label>:1637                                    ; preds = %1624, %1601
  %1638 = phi float [ %1634, %1624 ], [ %1497, %1601 ]
  %1639 = phi float [ %1635, %1624 ], [ %1498, %1601 ]
  %1640 = phi float [ %1636, %1624 ], [ %1499, %1601 ]
  %1641 = phi float [ %1626, %1624 ], [ 0.000000e+00, %1601 ]
  %1642 = fcmp fast une float %1613, 1.000000e+00
  br i1 %1642, label %1643, label %1650, !dx.controlflow.hints !99

; <label>:1643                                    ; preds = %1637
  %1644 = call float @dx.op.unary.f32(i32 23, float %1613)  ; Log(value)
  %1645 = fmul fast float %1644, 0x3FE62E4300000000
  %1646 = fmul fast float %1610, %1645
  %1647 = fsub fast float -0.000000e+00, %1646
  %1648 = fsub fast float 1.000000e+00, %1613
  %1649 = fdiv fast float %1647, %1648
  br label %1650

; <label>:1650                                    ; preds = %1643, %1637
  %1651 = phi float [ %1649, %1643 ], [ %1610, %1637 ]
  %1652 = phi float [ %1645, %1643 ], [ 0.000000e+00, %1637 ]
  %1653 = fcmp fast une float %1614, 1.000000e+00
  br i1 %1653, label %1654, label %1661, !dx.controlflow.hints !99

; <label>:1654                                    ; preds = %1650
  %1655 = call float @dx.op.unary.f32(i32 23, float %1614)  ; Log(value)
  %1656 = fmul fast float %1655, 0x3FE62E4300000000
  %1657 = fmul fast float %1611, %1656
  %1658 = fsub fast float -0.000000e+00, %1657
  %1659 = fsub fast float 1.000000e+00, %1614
  %1660 = fdiv fast float %1658, %1659
  br label %1661

; <label>:1661                                    ; preds = %1654, %1650
  %1662 = phi float [ %1660, %1654 ], [ %1611, %1650 ]
  %1663 = phi float [ %1656, %1654 ], [ 0.000000e+00, %1650 ]
  %1664 = fcmp fast une float %1615, 1.000000e+00
  br i1 %1664, label %1665, label %1672, !dx.controlflow.hints !99

; <label>:1665                                    ; preds = %1661
  %1666 = call float @dx.op.unary.f32(i32 23, float %1615)  ; Log(value)
  %1667 = fmul fast float %1666, 0x3FE62E4300000000
  %1668 = fmul fast float %1612, %1667
  %1669 = fsub fast float -0.000000e+00, %1668
  %1670 = fsub fast float 1.000000e+00, %1615
  %1671 = fdiv fast float %1669, %1670
  br label %1672

; <label>:1672                                    ; preds = %1665, %1661
  %1673 = phi float [ %1671, %1665 ], [ %1612, %1661 ]
  %1674 = phi float [ %1667, %1665 ], [ 0.000000e+00, %1661 ]
  %1675 = fmul fast float %1638, %1622
  %1676 = fmul fast float %1639, %1622
  %1677 = fmul fast float %1640, %1622
  %1678 = fmul fast float %1641, %1622
  %1679 = fmul fast float %1651, %1620
  %1680 = fmul fast float %1662, %1620
  %1681 = fmul fast float %1673, %1620
  %1682 = fmul fast float %1652, %1620
  %1683 = fmul fast float %1663, %1620
  %1684 = fmul fast float %1674, %1620
  %1685 = fadd fast float %1679, %1675
  %1686 = fadd fast float %1680, %1676
  %1687 = fadd fast float %1681, %1677
  %1688 = fadd fast float %1682, %1678
  %1689 = fadd fast float %1683, %1678
  %1690 = fadd fast float %1684, %1678
  %1691 = fcmp fast une float %1688, 0.000000e+00
  br i1 %1691, label %1692, label %1699, !dx.controlflow.hints !100

; <label>:1692                                    ; preds = %1672
  %1693 = fmul fast float %1688, 0x3FF7154760000000
  %1694 = call float @dx.op.unary.f32(i32 21, float %1693)  ; Exp(value)
  %1695 = fsub fast float 1.000000e+00, %1694
  %1696 = fmul fast float %1685, %1695
  %1697 = fsub fast float -0.000000e+00, %1696
  %1698 = fdiv fast float %1697, %1688
  br label %1699

; <label>:1699                                    ; preds = %1692, %1672
  %1700 = phi float [ %1694, %1692 ], [ 1.000000e+00, %1672 ]
  %1701 = phi float [ %1698, %1692 ], [ %1685, %1672 ]
  %1702 = fcmp fast une float %1689, 0.000000e+00
  br i1 %1702, label %1703, label %1710, !dx.controlflow.hints !100

; <label>:1703                                    ; preds = %1699
  %1704 = fmul fast float %1689, 0x3FF7154760000000
  %1705 = call float @dx.op.unary.f32(i32 21, float %1704)  ; Exp(value)
  %1706 = fsub fast float 1.000000e+00, %1705
  %1707 = fmul fast float %1686, %1706
  %1708 = fsub fast float -0.000000e+00, %1707
  %1709 = fdiv fast float %1708, %1689
  br label %1710

; <label>:1710                                    ; preds = %1703, %1699
  %1711 = phi float [ %1705, %1703 ], [ 1.000000e+00, %1699 ]
  %1712 = phi float [ %1709, %1703 ], [ %1686, %1699 ]
  %1713 = fcmp fast une float %1690, 0.000000e+00
  br i1 %1713, label %1714, label %1721, !dx.controlflow.hints !100

; <label>:1714                                    ; preds = %1710
  %1715 = fmul fast float %1690, 0x3FF7154760000000
  %1716 = call float @dx.op.unary.f32(i32 21, float %1715)  ; Exp(value)
  %1717 = fsub fast float 1.000000e+00, %1716
  %1718 = fmul fast float %1687, %1717
  %1719 = fsub fast float -0.000000e+00, %1718
  %1720 = fdiv fast float %1719, %1690
  br label %1721

; <label>:1721                                    ; preds = %1714, %1710
  %1722 = phi float [ %1716, %1714 ], [ 1.000000e+00, %1710 ]
  %1723 = phi float [ %1720, %1714 ], [ %1687, %1710 ]
  %1724 = fcmp fast ogt float %1620, %1622
  br i1 %1724, label %1725, label %1745, !dx.controlflow.hints !101

; <label>:1725                                    ; preds = %1721
  %1726 = fsub fast float 1.000000e+00, %1622
  %1727 = fmul fast float %1638, %1726
  %1728 = fmul fast float %1639, %1726
  %1729 = fmul fast float %1640, %1726
  %1730 = fmul fast float %1641, %1726
  %1731 = fcmp fast une float %1730, 0.000000e+00
  br i1 %1731, label %1732, label %1783, !dx.controlflow.hints !102

; <label>:1732                                    ; preds = %1725
  %1733 = fmul fast float %1730, 0x3FF7154760000000
  %1734 = call float @dx.op.unary.f32(i32 21, float %1733)  ; Exp(value)
  %1735 = fsub fast float 1.000000e+00, %1734
  %1736 = fmul fast float %1727, %1735
  %1737 = fsub fast float -0.000000e+00, %1736
  %1738 = fmul fast float %1728, %1735
  %1739 = fsub fast float -0.000000e+00, %1738
  %1740 = fmul fast float %1729, %1735
  %1741 = fsub fast float -0.000000e+00, %1740
  %1742 = fdiv fast float %1737, %1730
  %1743 = fdiv fast float %1739, %1730
  %1744 = fdiv fast float %1741, %1730
  br label %1783

; <label>:1745                                    ; preds = %1721
  %1746 = fsub fast float 1.000000e+00, %1620
  %1747 = fmul fast float %1651, %1746
  %1748 = fmul fast float %1662, %1746
  %1749 = fmul fast float %1673, %1746
  %1750 = fmul fast float %1652, %1746
  %1751 = fmul fast float %1663, %1746
  %1752 = fmul fast float %1674, %1746
  %1753 = fcmp fast une float %1750, 0.000000e+00
  br i1 %1753, label %1754, label %1761, !dx.controlflow.hints !100

; <label>:1754                                    ; preds = %1745
  %1755 = fmul fast float %1750, 0x3FF7154760000000
  %1756 = call float @dx.op.unary.f32(i32 21, float %1755)  ; Exp(value)
  %1757 = fsub fast float 1.000000e+00, %1756
  %1758 = fmul fast float %1747, %1757
  %1759 = fsub fast float -0.000000e+00, %1758
  %1760 = fdiv fast float %1759, %1750
  br label %1761

; <label>:1761                                    ; preds = %1754, %1745
  %1762 = phi float [ %1760, %1754 ], [ %1747, %1745 ]
  %1763 = phi float [ %1756, %1754 ], [ 1.000000e+00, %1745 ]
  %1764 = fcmp fast une float %1751, 0.000000e+00
  br i1 %1764, label %1765, label %1772, !dx.controlflow.hints !100

; <label>:1765                                    ; preds = %1761
  %1766 = fmul fast float %1751, 0x3FF7154760000000
  %1767 = call float @dx.op.unary.f32(i32 21, float %1766)  ; Exp(value)
  %1768 = fsub fast float 1.000000e+00, %1767
  %1769 = fmul fast float %1748, %1768
  %1770 = fsub fast float -0.000000e+00, %1769
  %1771 = fdiv fast float %1770, %1751
  br label %1772

; <label>:1772                                    ; preds = %1765, %1761
  %1773 = phi float [ %1771, %1765 ], [ %1748, %1761 ]
  %1774 = phi float [ %1767, %1765 ], [ 1.000000e+00, %1761 ]
  %1775 = fcmp fast une float %1752, 0.000000e+00
  br i1 %1775, label %1776, label %1783, !dx.controlflow.hints !100

; <label>:1776                                    ; preds = %1772
  %1777 = fmul fast float %1752, 0x3FF7154760000000
  %1778 = call float @dx.op.unary.f32(i32 21, float %1777)  ; Exp(value)
  %1779 = fsub fast float 1.000000e+00, %1778
  %1780 = fmul fast float %1749, %1779
  %1781 = fsub fast float -0.000000e+00, %1780
  %1782 = fdiv fast float %1781, %1752
  br label %1783

; <label>:1783                                    ; preds = %1776, %1772, %1732, %1725
  %1784 = phi float [ %1782, %1776 ], [ %1744, %1732 ], [ %1729, %1725 ], [ %1749, %1772 ]
  %1785 = phi float [ %1773, %1776 ], [ %1743, %1732 ], [ %1728, %1725 ], [ %1773, %1772 ]
  %1786 = phi float [ %1762, %1776 ], [ %1742, %1732 ], [ %1727, %1725 ], [ %1762, %1772 ]
  %1787 = phi float [ %1778, %1776 ], [ %1734, %1732 ], [ 1.000000e+00, %1725 ], [ 1.000000e+00, %1772 ]
  %1788 = phi float [ %1774, %1776 ], [ %1734, %1732 ], [ 1.000000e+00, %1725 ], [ %1774, %1772 ]
  %1789 = phi float [ %1763, %1776 ], [ %1734, %1732 ], [ 1.000000e+00, %1725 ], [ %1763, %1772 ]
  %1790 = fmul fast float %1789, %1701
  %1791 = fmul fast float %1788, %1712
  %1792 = fmul fast float %1787, %1723
  %1793 = fadd fast float %1790, %1786
  %1794 = fadd fast float %1791, %1785
  %1795 = fadd fast float %1792, %1784
  %1796 = fmul fast float %1789, %1700
  %1797 = fmul fast float %1788, %1711
  %1798 = fmul fast float %1787, %1722
  br label %1799

; <label>:1799                                    ; preds = %1783, %1594
  %1800 = phi float [ %1798, %1783 ], [ %1600, %1594 ]
  %1801 = phi float [ %1797, %1783 ], [ %1599, %1594 ]
  %1802 = phi float [ %1796, %1783 ], [ %1598, %1594 ]
  %1803 = phi float [ %1795, %1783 ], [ %1597, %1594 ]
  %1804 = phi float [ %1794, %1783 ], [ %1596, %1594 ]
  %1805 = phi float [ %1793, %1783 ], [ %1595, %1594 ]
  %1806 = fmul fast float %1046, %1802
  %1807 = fmul fast float %1047, %1801
  %1808 = fmul fast float %1048, %1800
  %1809 = fmul fast float %270, 0xBFF7154760000000
  %1810 = call float @dx.op.unary.f32(i32 21, float %1809)  ; Exp(value)
  %1811 = call float @dx.op.unary.f32(i32 7, float %1810)  ; Saturate(value)
  %1812 = fsub fast float 1.000000e+00, %1811
  %1813 = fmul fast float %1812, %1805
  %1814 = fmul fast float %1812, %1804
  %1815 = fmul fast float %1812, %1803
  %1816 = fadd fast float %1813, %1806
  %1817 = fadd fast float %1814, %1807
  %1818 = fadd fast float %1815, %1808
  %1819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1820 = extractvalue %dx.types.CBufRet.f32 %1819, 0
  %1821 = fmul fast float %1820, %1816
  %1822 = fmul fast float %1817, %1820
  %1823 = fmul fast float %1818, %1820
  %1824 = fmul fast float %1822, 5.000000e-01
  %1825 = fadd fast float %1818, %1816
  %1826 = fmul fast float %1820, %1825
  %1827 = fmul fast float %1826, 2.500000e-01
  %1828 = fadd fast float %1827, %1824
  %1829 = call float @dx.op.unary.f32(i32 23, float %1828)  ; Log(value)
  %1830 = fmul fast float %1829, 0x3FE62E4300000000
  %1831 = fmul fast float %1830, %1830
  store float %180, float addrspace(3)* %181, align 4, !tbaa !32, !noalias !36
  %1832 = fmul fast float %1830, %180
  store float %1832, float addrspace(3)* %183, align 4, !tbaa !32, !noalias !36
  %1833 = fmul fast float %1831, %180
  store float %1833, float addrspace(3)* %185, align 4, !tbaa !32, !noalias !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1834 = load float, float addrspace(3)* %187, align 4, !tbaa !32, !noalias !36
  %1835 = fadd fast float %1834, %180
  %1836 = load float, float addrspace(3)* %190, align 4, !tbaa !32, !noalias !36
  %1837 = fadd fast float %1836, %1830
  %1838 = load float, float addrspace(3)* %193, align 4, !tbaa !32, !noalias !36
  %1839 = fadd fast float %1838, %1831
  store float %1835, float addrspace(3)* %181, align 4, !tbaa !32, !noalias !36
  store float %1837, float addrspace(3)* %183, align 4, !tbaa !32, !noalias !36
  store float %1839, float addrspace(3)* %185, align 4, !tbaa !32, !noalias !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1840 = load float, float addrspace(3)* %197, align 4, !tbaa !32, !noalias !36
  %1841 = fadd fast float %1840, %1835
  %1842 = load float, float addrspace(3)* %200, align 4, !tbaa !32, !noalias !36
  %1843 = fadd fast float %1842, %1837
  %1844 = load float, float addrspace(3)* %203, align 4, !tbaa !32, !noalias !36
  %1845 = fadd fast float %1844, %1839
  store float %1841, float addrspace(3)* %181, align 4, !tbaa !32, !noalias !36
  store float %1843, float addrspace(3)* %183, align 4, !tbaa !32, !noalias !36
  store float %1845, float addrspace(3)* %185, align 4, !tbaa !32, !noalias !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1846 = load float, float addrspace(3)* %207, align 4, !tbaa !32, !noalias !36
  %1847 = fadd fast float %1846, %1841
  %1848 = load float, float addrspace(3)* %210, align 4, !tbaa !32, !noalias !36
  %1849 = fadd fast float %1848, %1843
  %1850 = fdiv fast float %1849, %1847
  br i1 %218, label %1851, label %1859, !dx.controlflow.hints !40

; <label>:1851                                    ; preds = %1799
  %1852 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %206
  %1853 = load float, float addrspace(3)* %1852, align 4, !tbaa !32, !noalias !36
  %1854 = fadd fast float %1853, %1845
  %1855 = fdiv fast float %1854, %1847
  %1856 = lshr i32 %47, 1
  %1857 = lshr i32 %48, 1
  %1858 = lshr i32 %49, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1856, i32 %1857, i32 %1858, float %1850, float %1855, float %1850, float %1850, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1859

; <label>:1859                                    ; preds = %1851, %1799
  br i1 %58, label %1894, label %1860, !dx.controlflow.hints !41

; <label>:1860                                    ; preds = %1859
  %1861 = fadd fast float %97, 0x3FE3C6EF40000000
  %1862 = call float @dx.op.unary.f32(i32 22, float %1861)  ; Frc(value)
  %1863 = call float @dx.op.unary.f32(i32 23, float %1821)  ; Log(value)
  %1864 = fadd fast float %1863, -7.000000e+00
  %1865 = call float @dx.op.unary.f32(i32 21, float %1864)  ; Exp(value)
  %1866 = fmul fast float %1862, 2.000000e+00
  %1867 = fadd fast float %1866, -1.000000e+00
  %1868 = fmul fast float %1865, %1867
  %1869 = fcmp fast ogt float %1821, 0.000000e+00
  %1870 = select i1 %1869, float %1868, float 0.000000e+00
  %1871 = fadd fast float %1870, %1821
  %1872 = fadd fast float %97, 0x3FF3C6EF40000000
  %1873 = call float @dx.op.unary.f32(i32 22, float %1872)  ; Frc(value)
  %1874 = call float @dx.op.unary.f32(i32 23, float %1822)  ; Log(value)
  %1875 = fadd fast float %1874, -7.000000e+00
  %1876 = call float @dx.op.unary.f32(i32 21, float %1875)  ; Exp(value)
  %1877 = fmul fast float %1873, 2.000000e+00
  %1878 = fadd fast float %1877, -1.000000e+00
  %1879 = fmul fast float %1876, %1878
  %1880 = fcmp fast ogt float %1822, 0.000000e+00
  %1881 = select i1 %1880, float %1879, float 0.000000e+00
  %1882 = fadd fast float %1881, %1822
  %1883 = fadd fast float %97, 0x3FFDAA66E0000000
  %1884 = call float @dx.op.unary.f32(i32 22, float %1883)  ; Frc(value)
  %1885 = call float @dx.op.unary.f32(i32 23, float %1823)  ; Log(value)
  %1886 = fadd fast float %1885, -6.000000e+00
  %1887 = call float @dx.op.unary.f32(i32 21, float %1886)  ; Exp(value)
  %1888 = fmul fast float %1884, 2.000000e+00
  %1889 = fadd fast float %1888, -1.000000e+00
  %1890 = fmul fast float %1887, %1889
  %1891 = fcmp fast ogt float %1823, 0.000000e+00
  %1892 = select i1 %1891, float %1890, float 0.000000e+00
  %1893 = fadd fast float %1892, %1823
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %47, i32 %48, i32 %49, float %1871, float %1882, float %1893, float %1871, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1894

; <label>:1894                                    ; preds = %1860, %1859
  %1895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1896 = extractvalue %dx.types.CBufRet.f32 %1895, 0
  %1897 = fmul fast float %1896, %270
  %1898 = fmul fast float %1897, 5.000000e-01
  %1899 = fadd fast float %263, %263
  %1900 = fmul fast float %269, %1899
  %1901 = fmul fast float %1896, %1900
  %1902 = fmul fast float %1901, 2.500000e-01
  %1903 = fadd fast float %1902, %1898
  %1904 = fmul fast float %1903, %1903
  store float %180, float addrspace(3)* %181, align 4, !tbaa !32, !noalias !36
  %1905 = fmul fast float %1903, %180
  store float %1905, float addrspace(3)* %183, align 4, !tbaa !32, !noalias !36
  %1906 = fmul fast float %1904, %180
  store float %1906, float addrspace(3)* %185, align 4, !tbaa !32, !noalias !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1907 = load float, float addrspace(3)* %187, align 4, !tbaa !32, !noalias !36
  %1908 = fadd fast float %1907, %180
  %1909 = load float, float addrspace(3)* %190, align 4, !tbaa !32, !noalias !36
  %1910 = fadd fast float %1903, %1909
  %1911 = load float, float addrspace(3)* %193, align 4, !tbaa !32, !noalias !36
  %1912 = fadd fast float %1904, %1911
  store float %1908, float addrspace(3)* %181, align 4, !tbaa !32, !noalias !36
  store float %1910, float addrspace(3)* %183, align 4, !tbaa !32, !noalias !36
  store float %1912, float addrspace(3)* %185, align 4, !tbaa !32, !noalias !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1913 = load float, float addrspace(3)* %197, align 4, !tbaa !32, !noalias !36
  %1914 = fadd fast float %1913, %1908
  %1915 = load float, float addrspace(3)* %200, align 4, !tbaa !32, !noalias !36
  %1916 = fadd fast float %1915, %1910
  %1917 = load float, float addrspace(3)* %203, align 4, !tbaa !32, !noalias !36
  %1918 = fadd fast float %1917, %1912
  store float %1914, float addrspace(3)* %181, align 4, !tbaa !32, !noalias !36
  store float %1916, float addrspace(3)* %183, align 4, !tbaa !32, !noalias !36
  store float %1918, float addrspace(3)* %185, align 4, !tbaa !32, !noalias !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1919 = load float, float addrspace(3)* %207, align 4, !tbaa !32, !noalias !36
  %1920 = fadd fast float %1919, %1914
  %1921 = load float, float addrspace(3)* %210, align 4, !tbaa !32, !noalias !36
  %1922 = fadd fast float %1921, %1916
  %1923 = fdiv fast float %1922, %1920
  br i1 %218, label %1924, label %1932, !dx.controlflow.hints !42

; <label>:1924                                    ; preds = %1894
  %1925 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %206
  %1926 = load float, float addrspace(3)* %1925, align 4, !tbaa !32, !noalias !36
  %1927 = fadd fast float %1926, %1918
  %1928 = fdiv fast float %1927, %1920
  %1929 = lshr i32 %47, 1
  %1930 = lshr i32 %48, 1
  %1931 = lshr i32 %49, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1929, i32 %1930, i32 %1931, float %1923, float %1928, float %1923, float %1923, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1932

; <label>:1932                                    ; preds = %1924, %1894
  br i1 %58, label %1961, label %1933, !dx.controlflow.hints !43

; <label>:1933                                    ; preds = %1932
  %1934 = fadd fast float %97, 0x3FE3C6EF40000000
  %1935 = call float @dx.op.unary.f32(i32 22, float %1934)  ; Frc(value)
  %1936 = call float @dx.op.unary.f32(i32 23, float %1897)  ; Log(value)
  %1937 = fadd fast float %1936, -7.000000e+00
  %1938 = call float @dx.op.unary.f32(i32 21, float %1937)  ; Exp(value)
  %1939 = fmul fast float %1935, 2.000000e+00
  %1940 = fadd fast float %1939, -1.000000e+00
  %1941 = fmul fast float %1938, %1940
  %1942 = fcmp fast ogt float %1897, 0.000000e+00
  %1943 = select i1 %1942, float %1941, float 0.000000e+00
  %1944 = fadd fast float %1943, %1897
  %1945 = fadd fast float %97, 0x3FF3C6EF40000000
  %1946 = call float @dx.op.unary.f32(i32 22, float %1945)  ; Frc(value)
  %1947 = fmul fast float %1946, 2.000000e+00
  %1948 = fadd fast float %1947, -1.000000e+00
  %1949 = fmul fast float %1938, %1948
  %1950 = select i1 %1942, float %1949, float 0.000000e+00
  %1951 = fadd fast float %1950, %1897
  %1952 = fadd fast float %97, 0x3FFDAA66E0000000
  %1953 = call float @dx.op.unary.f32(i32 22, float %1952)  ; Frc(value)
  %1954 = fadd fast float %1936, -6.000000e+00
  %1955 = call float @dx.op.unary.f32(i32 21, float %1954)  ; Exp(value)
  %1956 = fmul fast float %1953, 2.000000e+00
  %1957 = fadd fast float %1956, -1.000000e+00
  %1958 = fmul fast float %1955, %1957
  %1959 = select i1 %1942, float %1958, float 0.000000e+00
  %1960 = fadd fast float %1959, %1897
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %47, i32 %48, i32 %49, float %1944, float %1951, float %1960, float %1944, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1961

; <label>:1961                                    ; preds = %1933, %1932
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
!dx.entryPoints = !{!29}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !17, !22, !25}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture3D<float>"* undef, !"", i32 0, i32 10, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture1D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 1, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %"class.Texture1D<float>"* undef, !"", i32 0, i32 54, i32 1, i32 1, i32 0, !7}
!16 = !{i32 9, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!17 = !{!18, !19, !20, !21}
!18 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!19 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!20 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!21 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!22 = !{!23, !24}
!23 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!24 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!25 = !{!26, !27, !28}
!26 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!27 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!28 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!29 = !{void ()* @cs_volumetric_forwardplus_scatter_global_afog, !"cs_volumetric_forwardplus_scatter_global_afog", null, !4, !30}
!30 = !{i32 0, i64 272, i32 4, !31}
!31 = !{i32 4, i32 4, i32 4}
!32 = !{!33, !33, i64 0}
!33 = !{!"float", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !{!37, !39}
!37 = distinct !{!37, !38, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!38 = distinct !{!38, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!39 = distinct !{!39, !38, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = !{!67, !69, !71, !37, !39}
!67 = distinct !{!67, !68, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!68 = distinct !{!68, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!69 = distinct !{!69, !70, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!70 = distinct !{!70, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!71 = distinct !{!71, !70, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = !{!74}
!74 = distinct !{!74, !75, !"\01?sort@@YAXAIAM00@Z: %c"}
!75 = distinct !{!75, !"\01?sort@@YAXAIAM00@Z"}
!76 = !{!77, !78, !67, !69, !71, !37, !39}
!77 = distinct !{!77, !75, !"\01?sort@@YAXAIAM00@Z: %a"}
!78 = distinct !{!78, !75, !"\01?sort@@YAXAIAM00@Z: %b"}
!79 = !{!78}
!80 = !{!77, !74, !67, !69, !71, !37, !39}
!81 = !{!77}
!82 = !{!78, !74, !67, !69, !71, !37, !39}
!83 = !{!84}
!84 = distinct !{!84, !85, !"\01?sort@@YAXAIAM00@Z: %c"}
!85 = distinct !{!85, !"\01?sort@@YAXAIAM00@Z"}
!86 = !{!87, !88, !67, !69, !71, !37, !39}
!87 = distinct !{!87, !85, !"\01?sort@@YAXAIAM00@Z: %a"}
!88 = distinct !{!88, !85, !"\01?sort@@YAXAIAM00@Z: %b"}
!89 = !{!88}
!90 = !{!87, !84, !67, !69, !71, !37, !39}
!91 = !{!87}
!92 = !{!88, !84, !67, !69, !71, !37, !39}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}

