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
; shader hash: 5e7277d67143f333e6a0cf834da0f30c
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

@BLUE_NOISE_SAMPLES.v.1dim = internal constant [384 x float] [float 0x3FE18FE160000000, float 0x3FE2F89540000000, float 0x3FE6E2D4C0000000, float 0x3FC15736E0000000, float 0x3FBA5540C0000000, float 0x3FD3170EC0000000, float 0x3FED0D5120000000, float 0x3FE296A0E0000000, float 0x3FC4826EA0000000, float 0x3FE8282660000000, float 0x3FAFC328C0000000, float 0x3FEC521960000000, float 0x3FE37806C0000000, float 0x3FCA6D0000000000, float 0x3FD7082D00000000, float 0x3FC5E13120000000, float 0x3FD2E650A0000000, float 0x3FEBB39F60000000, float 0x3FDC57B600000000, float 0x3FE7C97180000000, float 0x3FCBD95EA0000000, float 0x3FC9988140000000, float 0x3FEAC46E60000000, float 0x3FEAD953E0000000, float 0x3FC843F4E0000000, float 0x3FE1FA7840000000, float 0x3FDEF62560000000, float 0x3FD8DD05A0000000, float 0x3FB5C98040000000, float 0x3FE40B4F00000000, float 0x3FEC4AEE80000000, float 0x3FEB172F40000000, float 0x3FE0065C00000000, float 0x3FEA254D00000000, float 0x3FD8E6DF40000000, float 0x3FE24C96C0000000, float 0x3FDE978BA0000000, float 0x3FBA8F1180000000, float 0x3FB121A6A0000000, float 0x3FE3626000000000, float 0x3FDE58B860000000, float 0x3FB2DED7A0000000, float 0x3FD4F97900000000, float 0x3FD7645460000000, float 0x3FCE571520000000, float 0x3FE7E85200000000, float 0x3FEAFC6460000000, float 0x3FCC666220000000, float 0x3FEC4FF540000000, float 0x3FE7C8B540000000, float 0x3FEBF4AC20000000, float 0x3FD0C66640000000, float 0x3FE2F95320000000, float 0x3F915FFF00000000, float 0x3FE352C600000000, float 0x3FEBC2D0A0000000, float 0x3FE3664520000000, float 0x3FE4504660000000, float 0x3FE1D81AA0000000, float 0x3FD7A97CA0000000, float 0x3F86A53280000000, float 0x3FC1343780000000, float 0x3FE473A1A0000000, float 0x3FEC7EAE80000000, float 0x3FCE83F160000000, float 0x3FC3B66640000000, float 0x3FABB6C6C0000000, float 0x3FEC127C60000000, float 0x3FC3E70E00000000, float 0x3FDC159A60000000, float 0x3FD7AB8720000000, float 0x3FE14710E0000000, float 0x3FDE623A40000000, float 0x3FEB8A45E0000000, float 0x3FEC3C0140000000, float 0x3FD1597DE0000000, float 0x3FEAF0F9A0000000, float 0x3FE1C52360000000, float 0x3FEA622660000000, float 0x3FD760A060000000, float 0x3FEC561B20000000, float 0x3FBAF00320000000, float 0x3FE4643220000000, float 0x3FE72199C0000000, float 0x3FE2E54080000000, float 0x3FD56206C0000000, float 0x3FE8890420000000, float 0x3FEFBE55E0000000, float 0x3FD25DC400000000, float 0x3FD8BF4640000000, float 0x3FE956BCC0000000, float 0x3FE3A5DFE0000000, float 0x3FE5928420000000, float 0x3FE6754AA0000000, float 0x3FBBCDB900000000, float 0x3FE4509C40000000, float 0x3FE14E9AE0000000, float 0x3FEEE61140000000, float 0x3FD3ADB960000000, float 0x3FD3C9D440000000, float 0x3FDF30AF40000000, float 0x3FE885B760000000, float 0x3FEFC30220000000, float 0x3FB1A902E0000000, float 0x3FED532A00000000, float 0x3FBA846540000000, float 0x3FDAC4BEC0000000, float 0x3FB347E280000000, float 0x3FC77620A0000000, float 0x3FBBEF41C0000000, float 0x3FB2C764E0000000, float 0x3FC199A160000000, float 0x3FE44F4480000000, float 0x3FD01FE1E0000000, float 0x3FEC5559A0000000, float 0x3FA2E2FA40000000, float 0x3FD5AAA3C0000000, float 0x3FEDC06380000000, float 0x3FE393B900000000, float 0x3FDA23D800000000, float 0x3FC0BD6E60000000, float 0x3FD6E3CF60000000, float 0x3FE39D7140000000, float 0x3FE07677C0000000, float 0x3FBE721700000000, float 0x3FEA99EBC0000000, float 0x3FC9C1C7E0000000, float 0x3FB4545D20000000, float 0x3FE927BDC0000000, float 0x3FD2AF0880000000, float 0x3FEDDAA620000000, float 0x3FD4C3A220000000, float 0x3FE764E8C0000000, float 0x3FB5474C60000000, float 0x3FBD28BE60000000, float 0x3FDCAE7120000000, float 0x3FE65C7EC0000000, float 0x3FDFAE6DC0000000, float 0x3FEFF2D3E0000000, float 0x3FED44B380000000, float 0x3FE6676480000000, float 0x3FE59F4A80000000, float 0x3FE61D1240000000, float 0x3F80FB0B40000000, float 0x3FD57E1500000000, float 0x3FEC5C93C0000000, float 0x3FA826DF20000000, float 0x3FE939D3A0000000, float 0x3FDB702260000000, float 0x3FD0309DC0000000, float 0x3FC05BD4E0000000, float 0x3F647F5360000000, float 0x3FDFF14000000000, float 0x3FD6B472E0000000, float 0x3FC67E8AE0000000, float 0x3FD7E52D80000000, float 0x3FD9A20420000000, float 0x3FD873C2E0000000, float 0x3FEED079E0000000, float 0x3FD9280DA0000000, float 0x3FE0E70960000000, float 0x3FD7AD5C60000000, float 0x3FADC1E8A0000000, float 0x3FE9BAFE00000000, float 0x3FD6EB3FA0000000, float 0x3FE8B0FE80000000, float 0x3FEC006EA0000000, float 0x3FE7886EC0000000, float 0x3FD4E113A0000000, float 0x3FE5EB06E0000000, float 0x3FE7AE8F00000000, float 0x3FE594A1A0000000, float 0x3FE8BE5C40000000, float 0x3FDBBB7820000000, float 0x3FDC00F660000000, float 0x3FE3BEAF60000000, float 0x3FECE40A40000000, float 0x3FE476BE80000000, float 0x3FCE715760000000, float 0x3F9A66CEA0000000, float 0x3FE1E87120000000, float 0x3FD6EFB1C0000000, float 0x3FCE53C0A0000000, float 0x3FEEC44720000000, float 0x3FDE4FCA40000000, float 0x3FE71C3E60000000, float 0x3FEF2C7C20000000, float 0x3FE166A120000000, float 0x3FEE257F40000000, float 0x3FE9B56F40000000, float 0x3FECD0D600000000, float 0x3FA0FC3EC0000000, float 0x3FEC4C3DC0000000, float 0x3FD150EC60000000, float 0x3FE71F4F60000000, float 0x3FB622B360000000, float 0x3FDC8CDE60000000, float 0x3FD23942A0000000, float 0x3FE1F1FAA0000000, float 0x3FED974C60000000, float 0x3FB46602A0000000, float 0x3FE6E2E620000000, float 0x3FEFD8B280000000, float 0x3FDD9BF5C0000000, float 0x3FA674A1C0000000, float 0x3FE9B56E40000000, float 0x3FEEE67800000000, float 0x3FCDA72D80000000, float 0x3FD469FA40000000, float 0x3FDBC871E0000000, float 0x3FDD20E3E0000000, float 0x3FEF2C1DE0000000, float 0x3FDF7B00E0000000, float 0x3FD6281F00000000, float 0x3FC66B3000000000, float 0x3FEDE19700000000, float 0x3FDB2072A0000000, float 0x3FE0D7DF20000000, float 0x3FC3B1B640000000, float 0x3FDA9DE220000000, float 0x3FD04AFB60000000, float 0x3FE78D6920000000, float 0x3FEF438F00000000, float 0x3FD0DACEC0000000, float 0x3FED6152E0000000, float 0x3FE9CF90A0000000, float 0x3FD0689260000000, float 0x3FDB295100000000, float 0x3FE43A8B20000000, float 0x3FDB335EA0000000, float 0x3FE0E1EA60000000, float 0x3FEBAB00E0000000, float 0x3FDA8B1D60000000, float 0x3FB10CBD20000000, float 0x3FE78F4620000000, float 0x3FE227D0E0000000, float 0x3FEC0E76A0000000, float 0x3FEEF3F8C0000000, float 0x3FE5ADCD40000000, float 0x3FE386C040000000, float 0x3FE2FA86E0000000, float 0x3FCE803BA0000000, float 0x3FE26AEBE0000000, float 0x3FE58556A0000000, float 0x3FEB878100000000, float 0x3FEC77D980000000, float 0x3FC0793440000000, float 0x3FD134B520000000, float 0x3FC9DB4080000000, float 0x3FE83B8480000000, float 0x3FE4ECC2E0000000, float 0x3FCEA8E9A0000000, float 0x3FD60CA840000000, float 0x3FECE35B20000000, float 0x3FE746B7A0000000, float 0x3FCE074860000000, float 0x3FE81DE580000000, float 0x3FC2584AA0000000, float 0x3FD5C82E00000000, float 0x3FE0CECA40000000, float 0x3FE26646C0000000, float 0x3FC0854540000000, float 0x3FE77AA920000000, float 0x3FE0120580000000, float 0x3FEF5EE280000000, float 0x3FB39D7D80000000, float 0x3FC50B8D20000000, float 0x3FDBFF8BC0000000, float 0x3FB7077B80000000, float 0x3FCF722760000000, float 0x3FD274BA20000000, float 0x3FE7EC88A0000000, float 0x3FD8207A00000000, float 0x3FDC2B1A00000000, float 0x3FEAE81F60000000, float 0x3FD84A9200000000, float 0x3FEB3D1480000000, float 0x3F74CDAB80000000, float 0x3FE2903380000000, float 0x3FE3D88D60000000, float 0x3FE5557C00000000, float 0x3FE1B02540000000, float 0x3FCAD53680000000, float 0x3FC97E4340000000, float 0x3FE4A0C720000000, float 0x3FDE649800000000, float 0x3FE8A886A0000000, float 0x3FE77F7260000000, float 0x3FEB51B700000000, float 0x3FC2E2DE00000000, float 0x3F5888D4C0000000, float 0x3FD41984E0000000, float 0x3FD20DB1A0000000, float 0x3FB551A020000000, float 0x3FDB131880000000, float 0x3FEDC9D0C0000000, float 0x3FC7DD4AA0000000, float 0x3FD5F5F120000000, float 0x3F7F518660000000, float 0x3FEBF19260000000, float 0x3F799ADA40000000, float 0x3FDC20E100000000, float 0x3FE0E7DB40000000, float 0x3FC0BB4EE0000000, float 0x3FDECDAEE0000000, float 0x3FEA638F20000000, float 0x3FE70F2040000000, float 0x3FCA53C540000000, float 0x3FCCF95320000000, float 0x3FB324F500000000, float 0x3FE354CC40000000, float 0x3FB2C45460000000, float 0x3FE072AB00000000, float 0x3FE6B81580000000, float 0x3FAD0D1160000000, float 0x3FECCB0BE0000000, float 0x3FEB935140000000, float 0x3FD2A50CE0000000, float 0x3FE5A24D40000000, float 0x3FCB409DA0000000, float 0x3FEAFD5600000000, float 0x3FE2CA5C00000000, float 0x3FEEB0C0A0000000, float 0x3FE8201F60000000, float 0x3FAA420B00000000, float 0x3FD2EB8020000000, float 0x3FE7E3DFA0000000, float 0x3FE7E2A760000000, float 0x3FE8746C80000000, float 0x3FE31217A0000000, float 0x3FEB946480000000, float 0x3FE7B3EDC0000000, float 0x3FB74FEFA0000000, float 0x3FEE07E160000000, float 0x3FC272BDC0000000, float 0x3FDE3B38A0000000, float 0x3FE687E8E0000000, float 0x3FDD8CC5E0000000, float 0x3FE5BD32A0000000, float 0x3FC63803C0000000, float 0x3FED12DE60000000, float 0x3F99B048C0000000, float 0x3FEC98B3E0000000, float 0x3FB9C91A60000000, float 0x3FE8D6E040000000, float 0x3FD39228C0000000, float 0x3FE404F040000000, float 0x3FD00082E0000000, float 0x3FE9099100000000, float 0x3FE1A444E0000000, float 0x3FDDFDC900000000, float 0x3FD649EA00000000, float 0x3FE7F988C0000000, float 0x3FEEB362C0000000, float 0x3FBE7B5FE0000000, float 0x3FC6A55F60000000, float 0x3FE07F6B40000000, float 0x3FE0AFB880000000, float 0x3FDE87A600000000, float 0x3FEBF9DCC0000000, float 0x3FD039B760000000, float 0x3F73CF67C0000000, float 0x3FE33EED40000000, float 0x3FD43683E0000000, float 0x3FD1531020000000, float 0x3FE1D32C60000000, float 0x3FE16249C0000000, float 0x3FBCE097A0000000, float 0x3FDE6FED80000000, float 0x3FE47A3A60000000, float 0x3FE6D84580000000, float 0x3FEA3764C0000000, float 0x3FE9B3C000000000, float 0x3FCD0FDF40000000, float 0x3FE2C6AC00000000, float 0x3FCBCACA20000000, float 0x3FE02FE880000000, float 0x3FC52C7860000000, float 0x3FD5258C40000000, float 0x3FA7811BC0000000, float 0x3FAAEB5B20000000, float 0x3FE369AEC0000000, float 0x3FB38C3220000000, float 0x3FEF14BEE0000000], align 4
@"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim" = addrspace(3) global [32 x float] undef, align 4

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
  %174 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %175 = icmp ult i32 %174, 32
  br i1 %175, label %176, label %294, !dx.controlflow.hints !31

; <label>:176                                     ; preds = %0
  %177 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %178 = fmul fast float %177, 0x3FE62E4300000000
  %179 = fmul fast float %178, %178
  %180 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %181 = add i32 %174, -1
  %182 = add i32 %174, 7
  %183 = and i32 %182, 4
  %184 = and i32 %181, %180
  %185 = xor i32 %184, %183
  %186 = and i32 %180, -4
  %187 = shl i32 %180, 1
  %188 = and i32 %187, 6
  %189 = lshr i32 177, %188
  %190 = and i32 %189, 3
  %191 = or i32 %190, %186
  %192 = udiv i32 %23, %174
  %193 = shl i32 %192, 2
  %194 = lshr i32 %180, 1
  %195 = and i32 %194, 1
  %196 = or i32 %193, %195
  %197 = lshr i32 %180, 2
  %198 = and i32 %197, 2
  %199 = or i32 %196, %198
  %200 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %178, i32 %185)  ; WaveReadLaneAt(value,lane)
  %201 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %179, i32 %185)  ; WaveReadLaneAt(value,lane)
  %202 = fadd fast float %200, %178
  %203 = fadd fast float %201, %179
  %204 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %202, i32 %191)  ; WaveReadLaneAt(value,lane)
  %205 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %203, i32 %191)  ; WaveReadLaneAt(value,lane)
  %206 = fadd fast float %204, %202
  %207 = fadd fast float %205, %203
  %208 = mul i32 %199, 2
  %209 = add i32 0, %208
  %210 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %209
  store float %206, float addrspace(3)* %210, align 4
  %211 = mul i32 %199, 2
  %212 = add i32 1, %211
  %213 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %212
  store float %207, float addrspace(3)* %213, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %214 = load float, float addrspace(3)* %210, align 4
  %215 = xor i32 %199, 4
  %216 = mul i32 %215, 2
  %217 = add i32 0, %216
  %218 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %217
  %219 = load float, float addrspace(3)* %218, align 4
  %220 = fadd fast float %219, %214
  %221 = fmul fast float %220, 1.250000e-01
  %222 = and i32 %44, 1
  %223 = and i32 %222, %45
  %224 = and i32 %223, %46
  %225 = icmp ne i32 %224, 0
  %226 = and i1 %225, %56
  br i1 %226, label %227, label %238, !dx.controlflow.hints !32

; <label>:227                                     ; preds = %176
  %228 = mul i32 %215, 2
  %229 = add i32 1, %228
  %230 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %229
  %231 = load float, float addrspace(3)* %230, align 4
  %232 = load float, float addrspace(3)* %213, align 4
  %233 = fadd fast float %231, %232
  %234 = fmul fast float %233, 1.250000e-01
  %235 = lshr i32 %44, 1
  %236 = lshr i32 %45, 1
  %237 = lshr i32 %46, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %235, i32 %236, i32 %237, float %221, float %234, float %221, float %221, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %238

; <label>:238                                     ; preds = %227, %176
  br i1 %55, label %240, label %239, !dx.controlflow.hints !33

; <label>:239                                     ; preds = %238
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %44, i32 %45, i32 %46, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %240

; <label>:240                                     ; preds = %239, %238
  %241 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %242 = add i32 %174, -1
  %243 = add i32 %174, 7
  %244 = and i32 %243, 4
  %245 = and i32 %242, %241
  %246 = xor i32 %245, %244
  %247 = and i32 %241, -4
  %248 = shl i32 %241, 1
  %249 = and i32 %248, 6
  %250 = lshr i32 177, %249
  %251 = and i32 %250, 3
  %252 = or i32 %251, %247
  %253 = udiv i32 %23, %174
  %254 = shl i32 %253, 2
  %255 = lshr i32 %241, 1
  %256 = and i32 %255, 1
  %257 = or i32 %254, %256
  %258 = lshr i32 %241, 2
  %259 = and i32 %258, 2
  %260 = or i32 %257, %259
  %261 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %246)  ; WaveReadLaneAt(value,lane)
  %262 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %246)  ; WaveReadLaneAt(value,lane)
  %263 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %261, i32 %252)  ; WaveReadLaneAt(value,lane)
  %264 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %262, i32 %252)  ; WaveReadLaneAt(value,lane)
  %265 = fadd fast float %263, %261
  %266 = fadd fast float %264, %262
  %267 = mul i32 %260, 2
  %268 = add i32 0, %267
  %269 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %268
  store float %265, float addrspace(3)* %269, align 4
  %270 = mul i32 %260, 2
  %271 = add i32 1, %270
  %272 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %271
  store float %266, float addrspace(3)* %272, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %273 = load float, float addrspace(3)* %269, align 4
  %274 = xor i32 %260, 4
  %275 = mul i32 %274, 2
  %276 = add i32 0, %275
  %277 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %276
  %278 = load float, float addrspace(3)* %277, align 4
  %279 = fadd fast float %278, %273
  %280 = fmul fast float %279, 1.250000e-01
  br i1 %226, label %281, label %292, !dx.controlflow.hints !34

; <label>:281                                     ; preds = %240
  %282 = mul i32 %274, 2
  %283 = add i32 1, %282
  %284 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %283
  %285 = load float, float addrspace(3)* %284, align 4
  %286 = load float, float addrspace(3)* %272, align 4
  %287 = fadd fast float %285, %286
  %288 = fmul fast float %287, 1.250000e-01
  %289 = lshr i32 %44, 1
  %290 = lshr i32 %45, 1
  %291 = lshr i32 %46, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %289, i32 %290, i32 %291, float %280, float %288, float %280, float %280, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %292

; <label>:292                                     ; preds = %281, %240
  br i1 %55, label %294, label %293, !dx.controlflow.hints !35

; <label>:293                                     ; preds = %292
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %44, i32 %45, i32 %46, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %294

; <label>:294                                     ; preds = %293, %292, %0
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 0
  %297 = extractvalue %dx.types.CBufRet.f32 %295, 1
  %298 = fsub fast float %168, %296
  %299 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %298)  ; FMax(a,b)
  %300 = fmul fast float %299, 0x3FF7154760000000
  %301 = fmul fast float %300, %297
  %302 = call float @dx.op.unary.f32(i32 21, float %301)  ; Exp(value)
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 0
  %305 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %306 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 1
  %309 = fmul fast float %308, %302
  %310 = fmul fast float %309, %304
  %311 = fmul fast float %309, %305
  %312 = fmul fast float %309, %306
  %313 = fcmp fast ogt float %309, 0.000000e+00
  br i1 %313, label %314, label %1075, !dx.controlflow.hints !36

; <label>:314                                     ; preds = %294
  %315 = extractvalue %dx.types.CBufRet.f32 %307, 2
  %316 = fmul fast float %315, %309
  %317 = fdiv fast float 1.000000e+00, %309
  %318 = fmul fast float %317, %310
  %319 = fmul fast float %317, %311
  %320 = fmul fast float %317, %312
  %321 = fmul fast float %316, %317
  %322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.i32 %322, 2
  %324 = extractvalue %dx.types.CBufRet.i32 %322, 3
  %325 = call i32 @dx.op.tertiary.i32(i32 49, i32 %38, i32 %323, i32 %36)  ; UMad(a,b,c)
  %326 = call i32 @dx.op.tertiary.i32(i32 49, i32 %40, i32 %324, i32 %325)  ; UMad(a,b,c)
  %327 = fadd fast float %103, 1.000000e+00
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 0
  %330 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %333 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %334 = fmul fast float %333, %111
  %335 = call float @dx.op.unary.f32(i32 21, float %334)  ; Exp(value)
  %336 = fmul fast float %335, %332
  %337 = fsub fast float 4.000000e+00, %332
  %338 = fadd fast float %337, %336
  %339 = fmul fast float %327, 2.000000e+00
  %340 = fmul fast float %339, %329
  %341 = fmul fast float %104, 2.000000e+00
  %342 = fmul fast float %341, %330
  %343 = fsub fast float 1.000000e+00, %340
  %344 = fsub fast float 1.000000e+00, %342
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 0
  %347 = extractvalue %dx.types.CBufRet.f32 %345, 1
  %348 = extractvalue %dx.types.CBufRet.f32 %345, 2
  %349 = fmul fast float %346, %343
  %350 = fmul fast float %347, %343
  %351 = fmul fast float %348, %343
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 0
  %354 = extractvalue %dx.types.CBufRet.f32 %352, 1
  %355 = extractvalue %dx.types.CBufRet.f32 %352, 2
  %356 = fmul fast float %353, %344
  %357 = fmul fast float %354, %344
  %358 = fmul fast float %355, %344
  %359 = fadd fast float %356, %349
  %360 = fadd fast float %357, %350
  %361 = fadd fast float %358, %351
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 0
  %364 = extractvalue %dx.types.CBufRet.f32 %362, 1
  %365 = extractvalue %dx.types.CBufRet.f32 %362, 2
  %366 = fadd fast float %359, %363
  %367 = fadd fast float %360, %364
  %368 = fadd fast float %361, %365
  %369 = fadd fast float %104, 1.000000e+00
  %370 = fmul fast float %103, 2.000000e+00
  %371 = fmul fast float %370, %329
  %372 = fmul fast float %369, 2.000000e+00
  %373 = fmul fast float %372, %330
  %374 = fsub fast float 1.000000e+00, %371
  %375 = fsub fast float 1.000000e+00, %373
  %376 = fmul fast float %346, %374
  %377 = fmul fast float %347, %374
  %378 = fmul fast float %348, %374
  %379 = fmul fast float %353, %375
  %380 = fmul fast float %354, %375
  %381 = fmul fast float %355, %375
  %382 = fadd fast float %379, %376
  %383 = fadd fast float %380, %377
  %384 = fadd fast float %381, %378
  %385 = fadd fast float %382, %363
  %386 = fadd fast float %383, %364
  %387 = fadd fast float %384, %365
  %388 = fmul fast float %385, %338
  %389 = fmul fast float %386, %338
  %390 = fmul fast float %387, %338
  %391 = fadd fast float %385, %366
  %392 = fmul fast float %338, %391
  %393 = fadd fast float %386, %367
  %394 = fmul fast float %338, %393
  %395 = fadd fast float %387, %368
  %396 = fmul fast float %338, %395
  %397 = fmul fast float %392, 5.000000e-01
  %398 = fmul fast float %394, 5.000000e-01
  %399 = fmul fast float %396, 5.000000e-01
  %400 = fsub fast float %397, %388
  %401 = fsub fast float %398, %389
  %402 = fsub fast float %399, %390
  %403 = call float @dx.op.dot3.f32(i32 55, float %400, float %401, float %402, float %400, float %401, float %402)  ; Dot3(ax,ay,az,bx,by,bz)
  %404 = call float @dx.op.unary.f32(i32 25, float %403)  ; Rsqrt(value)
  %405 = fmul fast float %404, %403
  %406 = fmul fast float %333, %105
  %407 = call float @dx.op.unary.f32(i32 21, float %406)  ; Exp(value)
  %408 = fmul fast float %407, %332
  %409 = fadd fast float %337, %408
  %410 = fmul fast float %112, 2.000000e+00
  %411 = fmul fast float %410, %329
  %412 = fmul fast float %113, 2.000000e+00
  %413 = fmul fast float %412, %330
  %414 = fsub fast float 1.000000e+00, %411
  %415 = fsub fast float 1.000000e+00, %413
  %416 = fmul fast float %346, %414
  %417 = fmul fast float %347, %414
  %418 = fmul fast float %348, %414
  %419 = fmul fast float %353, %415
  %420 = fmul fast float %354, %415
  %421 = fmul fast float %355, %415
  %422 = fadd fast float %419, %416
  %423 = fadd fast float %420, %417
  %424 = fadd fast float %421, %418
  %425 = fadd fast float %422, %363
  %426 = fadd fast float %423, %364
  %427 = fadd fast float %424, %365
  %428 = fmul fast float %425, %409
  %429 = fmul fast float %426, %409
  %430 = fmul fast float %427, %409
  %431 = fadd fast float %105, 1.000000e+00
  %432 = fmul fast float %333, %431
  %433 = call float @dx.op.unary.f32(i32 21, float %432)  ; Exp(value)
  %434 = fsub fast float %433, %407
  %435 = fmul fast float %332, %434
  %436 = fmul fast float %425, %435
  %437 = fsub fast float %433, %407
  %438 = fmul fast float %332, %437
  %439 = fmul fast float %426, %438
  %440 = fsub fast float %433, %407
  %441 = fmul fast float %332, %440
  %442 = fmul fast float %427, %441
  %443 = call float @dx.op.dot3.f32(i32 55, float %436, float %439, float %442, float %436, float %439, float %442)  ; Dot3(ax,ay,az,bx,by,bz)
  %444 = call float @dx.op.unary.f32(i32 25, float %443)  ; Rsqrt(value)
  %445 = fmul fast float %444, %443
  %446 = fmul fast float %436, %444
  %447 = fmul fast float %439, %444
  %448 = fmul fast float %442, %444
  %449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.i32 %449, 0
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %1046, label %452, !dx.controlflow.hints !37

; <label>:452                                     ; preds = %314
  %453 = add nsw i32 %450, -1
  %454 = call i32 @dx.op.binary.i32(i32 37, i32 %453, i32 0)  ; IMax(a,b)
  br label %455

; <label>:455                                     ; preds = %1039, %452
  %456 = phi i32 [ 0, %452 ], [ %1043, %1039 ]
  %457 = phi float [ 0.000000e+00, %452 ], [ %1040, %1039 ]
  %458 = phi float [ 0.000000e+00, %452 ], [ %1041, %1039 ]
  %459 = phi float [ 0.000000e+00, %452 ], [ %1042, %1039 ]
  %460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.i32 %460, 0
  %462 = call i32 @dx.op.tertiary.i32(i32 49, i32 %326, i32 %461, i32 %456)  ; UMad(a,b,c)
  %463 = shl i32 %462, 2
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %1039, label %467

; <label>:467                                     ; preds = %455
  br label %468

; <label>:468                                     ; preds = %907, %467
  %469 = phi i32 [ %478, %907 ], [ %465, %467 ]
  %470 = phi float [ %908, %907 ], [ %457, %467 ]
  %471 = phi float [ %909, %907 ], [ %458, %467 ]
  %472 = phi float [ %910, %907 ], [ %459, %467 ]
  %473 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %469)  ; FirstbitLo(value)
  %474 = shl i32 %456, 5
  %475 = add i32 %473, %474
  %476 = and i32 %473, 31
  %477 = shl i32 1, %476
  %478 = xor i32 %477, %469
  %479 = mul i32 %475, 112
  %480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.f32 %480, 0
  %482 = extractvalue %dx.types.ResRet.f32 %480, 1
  %483 = extractvalue %dx.types.ResRet.f32 %480, 2
  %484 = or i32 %479, 12
  %485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = add i32 %479, 16
  %488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.f32 %488, 0
  %490 = extractvalue %dx.types.ResRet.f32 %488, 1
  %491 = extractvalue %dx.types.ResRet.f32 %488, 2
  %492 = add i32 %479, 28
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = add i32 %479, 32
  %496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = extractvalue %dx.types.ResRet.f32 %496, 1
  %499 = extractvalue %dx.types.ResRet.f32 %496, 2
  %500 = add i32 %479, 44
  %501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = add i32 %479, 48
  %504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = extractvalue %dx.types.ResRet.f32 %504, 2
  %508 = extractvalue %dx.types.ResRet.f32 %504, 3
  %509 = add i32 %479, 64
  %510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  %512 = extractvalue %dx.types.ResRet.f32 %510, 1
  %513 = extractvalue %dx.types.ResRet.f32 %510, 2
  %514 = extractvalue %dx.types.ResRet.f32 %510, 3
  %515 = add i32 %479, 92
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = and i32 %517, 65535
  %519 = uitofp i32 %518 to float
  %520 = lshr i32 %517, 16
  %521 = uitofp i32 %520 to float
  %522 = and i32 %494, 65535
  %523 = and i32 %494, 50331648
  %524 = icmp eq i32 %523, 33554432
  %525 = fdiv fast float 1.000000e+00, %445
  br i1 %524, label %526, label %718, !dx.controlflow.hints !38

; <label>:526                                     ; preds = %468
  %527 = fsub fast float %505, %497
  %528 = fsub fast float %506, %498
  %529 = fsub fast float %507, %499
  %530 = fmul fast float %446, %445
  %531 = fmul fast float %447, %445
  %532 = fmul fast float %448, %445
  %533 = fadd fast float %530, %428
  %534 = fadd fast float %531, %429
  %535 = fadd fast float %532, %430
  %536 = fmul fast float %497, 2.000000e+00
  %537 = fmul fast float %498, 2.000000e+00
  %538 = fmul fast float %499, 2.000000e+00
  %539 = call float @dx.op.dot3.f32(i32 55, float %536, float %537, float %538, float %536, float %537, float %538)  ; Dot3(ax,ay,az,bx,by,bz)
  %540 = fdiv fast float %536, %539
  %541 = fdiv fast float %537, %539
  %542 = fdiv fast float %538, %539
  %543 = fsub fast float %428, %527
  %544 = fsub fast float %429, %528
  %545 = fsub fast float %430, %529
  %546 = call float @dx.op.dot3.f32(i32 55, float %543, float %544, float %545, float %536, float %537, float %538)  ; Dot3(ax,ay,az,bx,by,bz)
  %547 = fmul fast float %546, %540
  %548 = fmul fast float %546, %541
  %549 = fmul fast float %546, %542
  %550 = fsub fast float %428, %547
  %551 = fsub fast float %429, %548
  %552 = fsub fast float %430, %549
  %553 = fsub fast float %533, %527
  %554 = fsub fast float %534, %528
  %555 = fsub fast float %535, %529
  %556 = call float @dx.op.dot3.f32(i32 55, float %553, float %554, float %555, float %536, float %537, float %538)  ; Dot3(ax,ay,az,bx,by,bz)
  %557 = fmul fast float %556, %540
  %558 = fmul fast float %556, %541
  %559 = fmul fast float %556, %542
  %560 = fsub fast float %533, %557
  %561 = fsub fast float %534, %558
  %562 = fsub fast float %535, %559
  %563 = fsub fast float %560, %550
  %564 = fsub fast float %561, %551
  %565 = fsub fast float %562, %552
  %566 = fsub fast float %527, %550
  %567 = fsub fast float %528, %551
  %568 = fsub fast float %529, %552
  %569 = call float @dx.op.dot3.f32(i32 55, float %566, float %567, float %568, float %563, float %564, float %565)  ; Dot3(ax,ay,az,bx,by,bz)
  %570 = call float @dx.op.dot3.f32(i32 55, float %563, float %564, float %565, float %563, float %564, float %565)  ; Dot3(ax,ay,az,bx,by,bz)
  %571 = fdiv fast float %569, %570
  %572 = fcmp fast une float %550, %560
  %573 = fcmp fast une float %551, %561
  %574 = fcmp fast une float %552, %562
  %575 = or i1 %572, %573
  %576 = or i1 %574, %575
  %577 = select i1 %576, float %571, float 0.000000e+00
  %578 = call float @dx.op.unary.f32(i32 7, float %577)  ; Saturate(value)
  %579 = fmul fast float %578, %530
  %580 = fmul fast float %578, %531
  %581 = fmul fast float %578, %532
  %582 = fadd fast float %543, %579
  %583 = fadd fast float %544, %580
  %584 = fadd fast float %545, %581
  %585 = call float @dx.op.dot3.f32(i32 55, float %582, float %583, float %584, float %536, float %537, float %538)  ; Dot3(ax,ay,az,bx,by,bz)
  %586 = fdiv fast float %585, %539
  %587 = call float @dx.op.unary.f32(i32 7, float %586)  ; Saturate(value)
  %588 = fmul fast float %536, %587
  %589 = fmul fast float %537, %587
  %590 = fmul fast float %538, %587
  %591 = fadd fast float %588, %527
  %592 = fadd fast float %589, %528
  %593 = fadd fast float %590, %529
  %594 = fmul fast float %513, %489
  %595 = fmul fast float %513, %490
  %596 = fmul fast float %513, %491
  %597 = fadd fast float %591, %594
  %598 = fadd fast float %592, %595
  %599 = fadd fast float %593, %596
  %600 = fsub fast float -0.000000e+00, %512
  %601 = fdiv fast float %600, %511
  %602 = fmul fast float %601, %601
  %603 = call float @dx.op.dot3.f32(i32 55, float %446, float %447, float %448, float %489, float %490, float %491)  ; Dot3(ax,ay,az,bx,by,bz)
  %604 = fsub fast float %428, %597
  %605 = fsub fast float %429, %598
  %606 = fsub fast float %430, %599
  %607 = call float @dx.op.dot3.f32(i32 55, float %604, float %605, float %606, float %489, float %490, float %491)  ; Dot3(ax,ay,az,bx,by,bz)
  %608 = fsub fast float %597, %428
  %609 = fsub fast float %598, %429
  %610 = fsub fast float %599, %430
  %611 = fmul fast float %603, %603
  %612 = fsub fast float %611, %602
  %613 = fmul fast float %607, %603
  %614 = call float @dx.op.dot3.f32(i32 55, float %608, float %609, float %610, float %446, float %447, float %448)  ; Dot3(ax,ay,az,bx,by,bz)
  %615 = fmul fast float %614, %602
  %616 = fadd fast float %615, %613
  %617 = fmul fast float %616, 2.000000e+00
  %618 = fmul fast float %607, %607
  %619 = call float @dx.op.dot3.f32(i32 55, float %608, float %609, float %610, float %608, float %609, float %610)  ; Dot3(ax,ay,az,bx,by,bz)
  %620 = fmul fast float %619, %602
  %621 = fsub fast float %618, %620
  %622 = fmul fast float %617, %617
  %623 = fmul fast float %612, 4.000000e+00
  %624 = fmul fast float %623, %621
  %625 = fsub fast float %622, %624
  %626 = fcmp fast ogt float %625, 0.000000e+00
  br i1 %626, label %627, label %718, !dx.controlflow.hints !39

; <label>:627                                     ; preds = %526
  %628 = call float @dx.op.unary.f32(i32 24, float %625)  ; Sqrt(value)
  %629 = fdiv fast float 5.000000e-01, %612
  %630 = fsub fast float -0.000000e+00, %617
  %631 = fsub fast float %630, %628
  %632 = fmul fast float %631, %629
  %633 = fsub fast float %628, %617
  %634 = fmul fast float %633, %629
  %635 = call float @dx.op.binary.f32(i32 35, float %632, float %634)  ; FMax(a,b)
  %636 = call float @dx.op.binary.f32(i32 36, float %632, float %634)  ; FMin(a,b)
  %637 = fsub fast float %591, %428
  %638 = fsub fast float %592, %429
  %639 = fsub fast float %593, %430
  %640 = call float @dx.op.dot3.f32(i32 55, float %637, float %638, float %639, float %489, float %490, float %491)  ; Dot3(ax,ay,az,bx,by,bz)
  %641 = fdiv fast float %640, %603
  %642 = fcmp fast ogt float %603, 0.000000e+00
  br i1 %642, label %643, label %646, !dx.controlflow.hints !40

; <label>:643                                     ; preds = %627
  %644 = call float @dx.op.binary.f32(i32 36, float %636, float %641)  ; FMin(a,b)
  %645 = call float @dx.op.binary.f32(i32 36, float %635, float %641)  ; FMin(a,b)
  br label %649

; <label>:646                                     ; preds = %627
  %647 = call float @dx.op.binary.f32(i32 35, float %636, float %641)  ; FMax(a,b)
  %648 = call float @dx.op.binary.f32(i32 35, float %635, float %641)  ; FMax(a,b)
  br label %649

; <label>:649                                     ; preds = %646, %643
  %650 = phi float [ %644, %643 ], [ %647, %646 ]
  %651 = phi float [ %645, %643 ], [ %648, %646 ]
  %652 = fcmp fast oge float %650, 0.000000e+00
  %653 = fcmp fast olt float %650, %445
  %654 = and i1 %652, %653
  %655 = fcmp fast ogt float %651, 0.000000e+00
  %656 = fcmp fast ole float %651, %445
  %657 = and i1 %655, %656
  %658 = or i1 %654, %657
  br i1 %658, label %659, label %718, !dx.controlflow.hints !41

; <label>:659                                     ; preds = %649
  %660 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %650)  ; FMax(a,b)
  %661 = call float @dx.op.binary.f32(i32 36, float %445, float %651)  ; FMin(a,b)
  br i1 %642, label %662, label %684, !dx.controlflow.hints !42

; <label>:662                                     ; preds = %659
  %663 = fmul fast float %661, %446
  %664 = fmul fast float %661, %447
  %665 = fmul fast float %661, %448
  %666 = fsub fast float %608, %663
  %667 = fsub fast float %609, %664
  %668 = fsub fast float %610, %665
  %669 = call float @dx.op.dot3.f32(i32 55, float %666, float %667, float %668, float %666, float %667, float %668)  ; Dot3(ax,ay,az,bx,by,bz)
  %670 = call float @dx.op.unary.f32(i32 25, float %669)  ; Rsqrt(value)
  %671 = fmul fast float %670, %666
  %672 = fmul fast float %670, %667
  %673 = fmul fast float %670, %668
  %674 = call float @dx.op.dot3.f32(i32 55, float %671, float %672, float %673, float %489, float %490, float %491)  ; Dot3(ax,ay,az,bx,by,bz)
  %675 = fmul fast float %674, %511
  %676 = fadd fast float %675, %512
  %677 = fcmp fast olt float %676, 0xBF1A36E2E0000000
  %678 = select i1 %677, float 0.000000e+00, float %660
  %679 = select i1 %677, float %660, float %661
  %680 = fsub fast float %678, %679
  %681 = call float @dx.op.unary.f32(i32 6, float %680)  ; FAbs(value)
  %682 = fcmp fast olt float %681, 0x3F1A36E2E0000000
  br i1 %682, label %683, label %706, !dx.controlflow.hints !43

; <label>:683                                     ; preds = %662
  br label %706

; <label>:684                                     ; preds = %659
  %685 = fmul fast float %660, %446
  %686 = fmul fast float %660, %447
  %687 = fmul fast float %660, %448
  %688 = fsub fast float %608, %685
  %689 = fsub fast float %609, %686
  %690 = fsub fast float %610, %687
  %691 = call float @dx.op.dot3.f32(i32 55, float %688, float %689, float %690, float %688, float %689, float %690)  ; Dot3(ax,ay,az,bx,by,bz)
  %692 = call float @dx.op.unary.f32(i32 25, float %691)  ; Rsqrt(value)
  %693 = fmul fast float %692, %688
  %694 = fmul fast float %692, %689
  %695 = fmul fast float %692, %690
  %696 = call float @dx.op.dot3.f32(i32 55, float %693, float %694, float %695, float %489, float %490, float %491)  ; Dot3(ax,ay,az,bx,by,bz)
  %697 = fmul fast float %696, %511
  %698 = fadd fast float %697, %512
  %699 = fcmp fast olt float %698, 0xBF1A36E2E0000000
  %700 = select i1 %699, float %661, float %660
  %701 = select i1 %699, float %445, float %661
  %702 = fsub fast float %700, %701
  %703 = call float @dx.op.unary.f32(i32 6, float %702)  ; FAbs(value)
  %704 = fcmp fast olt float %703, 0x3F1A36E2E0000000
  br i1 %704, label %705, label %706, !dx.controlflow.hints !44

; <label>:705                                     ; preds = %684
  br label %706

; <label>:706                                     ; preds = %705, %684, %683, %662
  %707 = phi float [ 0.000000e+00, %683 ], [ %678, %662 ], [ %700, %705 ], [ %700, %684 ]
  %708 = phi float [ %679, %683 ], [ %679, %662 ], [ %445, %705 ], [ %701, %684 ]
  %709 = fmul fast float %707, %446
  %710 = fmul fast float %707, %447
  %711 = fmul fast float %707, %448
  %712 = fadd fast float %709, %428
  %713 = fadd fast float %710, %429
  %714 = fadd fast float %711, %430
  %715 = fsub fast float %708, %707
  %716 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %715)  ; FMax(a,b)
  %717 = fmul fast float %716, %525
  br label %718

; <label>:718                                     ; preds = %706, %649, %526, %468
  %719 = phi float [ %597, %706 ], [ %597, %649 ], [ %597, %526 ], [ %505, %468 ]
  %720 = phi float [ %598, %706 ], [ %598, %649 ], [ %598, %526 ], [ %506, %468 ]
  %721 = phi float [ %599, %706 ], [ %599, %649 ], [ %599, %526 ], [ %507, %468 ]
  %722 = phi float [ %712, %706 ], [ %428, %649 ], [ %428, %526 ], [ %428, %468 ]
  %723 = phi float [ %713, %706 ], [ %429, %649 ], [ %429, %526 ], [ %429, %468 ]
  %724 = phi float [ %714, %706 ], [ %430, %649 ], [ %430, %526 ], [ %430, %468 ]
  %725 = phi float [ %716, %706 ], [ %445, %649 ], [ %445, %526 ], [ %445, %468 ]
  %726 = phi float [ %717, %706 ], [ 1.000000e+00, %649 ], [ 1.000000e+00, %526 ], [ 1.000000e+00, %468 ]
  %727 = fsub fast float %719, %722
  %728 = fsub fast float %720, %723
  %729 = fsub fast float %721, %724
  %730 = call float @dx.op.dot3.f32(i32 55, float %727, float %728, float %729, float %446, float %447, float %448)  ; Dot3(ax,ay,az,bx,by,bz)
  %731 = call float @dx.op.binary.f32(i32 35, float %730, float 0.000000e+00)  ; FMax(a,b)
  %732 = call float @dx.op.binary.f32(i32 36, float %731, float %725)  ; FMin(a,b)
  %733 = fmul fast float %732, %446
  %734 = fmul fast float %732, %447
  %735 = fmul fast float %732, %448
  %736 = fsub fast float %722, %719
  %737 = fadd fast float %736, %733
  %738 = fsub fast float %723, %720
  %739 = fadd fast float %738, %734
  %740 = fsub fast float %724, %721
  %741 = fadd fast float %740, %735
  %742 = fmul fast float %737, %737
  %743 = fmul fast float %739, %739
  %744 = fadd fast float %742, %743
  %745 = fmul fast float %741, %741
  %746 = fadd fast float %744, %745
  %747 = call float @dx.op.unary.f32(i32 24, float %746)  ; Sqrt(value)
  %748 = fsub fast float -0.000000e+00, %732
  %749 = call float @dx.op.unary.f32(i32 6, float %748)  ; FAbs(value)
  %750 = fadd fast float %749, 0x3DDB7CDFE0000000
  %751 = fcmp fast oge float %747, 0.000000e+00
  %752 = fsub fast float -0.000000e+00, %750
  %753 = select i1 %751, float %752, float %750
  %754 = fadd fast float %753, %747
  %755 = fsub fast float -0.000000e+00, %747
  %756 = select i1 %751, float %747, float %755
  %757 = fadd fast float %750, %756
  %758 = fdiv fast float %754, %757
  %759 = select i1 %751, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %760 = fmul fast float %758, %758
  %761 = fmul fast float %760, 0x3FC9205BC0000000
  %762 = fadd fast float %761, 0xBFEF6A1620000000
  %763 = fmul fast float %762, %758
  %764 = fadd fast float %763, %759
  %765 = fcmp ole float %732, -0.000000e+00
  %766 = fsub fast float -0.000000e+00, %764
  %767 = select i1 %765, float %764, float %766
  %768 = fsub fast float %725, %732
  %769 = call float @dx.op.unary.f32(i32 6, float %768)  ; FAbs(value)
  %770 = fadd fast float %769, 0x3DDB7CDFE0000000
  %771 = fsub fast float -0.000000e+00, %770
  %772 = select i1 %751, float %771, float %770
  %773 = fadd fast float %772, %747
  %774 = fadd fast float %770, %756
  %775 = fdiv fast float %773, %774
  %776 = fmul fast float %775, %775
  %777 = fmul fast float %776, 0x3FC9205BC0000000
  %778 = fadd fast float %777, 0xBFEF6A1620000000
  %779 = fmul fast float %778, %775
  %780 = fadd fast float %779, %759
  %781 = fcmp fast oge float %768, 0.000000e+00
  %782 = fsub fast float -0.000000e+00, %780
  %783 = select i1 %781, float %780, float %782
  %784 = fsub fast float %783, %767
  %785 = fmul fast float %784, %94
  %786 = fadd fast float %785, %767
  %787 = call float @dx.op.unary.f32(i32 14, float %786)  ; Tan(value)
  %788 = fmul fast float %787, %747
  %789 = fadd fast float %788, %732
  %790 = fmul fast float %747, %747
  %791 = fmul fast float %788, %788
  %792 = fadd fast float %791, %790
  %793 = fmul fast float %784, %792
  %794 = fdiv fast float %747, %793
  %795 = fdiv fast float 1.000000e+00, %794
  %796 = fmul fast float %726, %525
  %797 = fmul fast float %796, %795
  %798 = fmul fast float %789, %446
  %799 = fmul fast float %789, %447
  %800 = fmul fast float %789, %448
  %801 = fadd fast float %798, %722
  %802 = fadd fast float %799, %723
  %803 = fadd fast float %800, %724
  %804 = call float @dx.op.dot3.f32(i32 55, float %497, float %498, float %499, float %497, float %498, float %499)  ; Dot3(ax,ay,az,bx,by,bz)
  %805 = fsub fast float %801, %505
  %806 = fsub fast float %802, %506
  %807 = fsub fast float %803, %507
  %808 = call float @dx.op.dot3.f32(i32 55, float %805, float %806, float %807, float %497, float %498, float %499)  ; Dot3(ax,ay,az,bx,by,bz)
  %809 = fdiv fast float %808, %804
  %810 = call float @dx.op.binary.f32(i32 35, float %809, float -1.000000e+00)  ; FMax(a,b)
  %811 = call float @dx.op.binary.f32(i32 36, float %810, float 1.000000e+00)  ; FMin(a,b)
  %812 = fmul fast float %811, %497
  %813 = fmul fast float %811, %498
  %814 = fmul fast float %811, %499
  %815 = fadd fast float %812, %505
  %816 = fadd fast float %813, %506
  %817 = fadd fast float %814, %507
  %818 = fsub fast float %815, %801
  %819 = fsub fast float %816, %802
  %820 = fsub fast float %817, %803
  %821 = call float @dx.op.dot3.f32(i32 55, float %818, float %819, float %820, float %818, float %819, float %820)  ; Dot3(ax,ay,az,bx,by,bz)
  %822 = call float @dx.op.unary.f32(i32 24, float %821)  ; Sqrt(value)
  %823 = fdiv fast float 1.000000e+00, %822
  %824 = fmul fast float %818, %823
  %825 = fmul fast float %819, %823
  %826 = fmul fast float %820, %823
  %827 = fadd fast float %822, %486
  %828 = fdiv fast float 1.000000e+00, %827
  %829 = fmul float %502, %828
  %830 = fmul float %829, %829
  %831 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  br i1 %524, label %832, label %856, !dx.controlflow.hints !45

; <label>:832                                     ; preds = %718
  %833 = fmul fast float %513, %489
  %834 = fmul fast float %513, %490
  %835 = fmul fast float %513, %491
  %836 = fsub fast float %833, %801
  %837 = fadd fast float %836, %815
  %838 = fsub fast float %834, %802
  %839 = fadd fast float %838, %816
  %840 = fsub fast float %835, %803
  %841 = fadd fast float %840, %817
  %842 = call float @dx.op.dot3.f32(i32 55, float %837, float %839, float %841, float %837, float %839, float %841)  ; Dot3(ax,ay,az,bx,by,bz)
  %843 = call float @dx.op.unary.f32(i32 25, float %842)  ; Rsqrt(value)
  %844 = fmul fast float %843, %837
  %845 = fmul fast float %843, %839
  %846 = fmul fast float %843, %841
  %847 = fsub fast float %801, %815
  %848 = fsub fast float %802, %816
  %849 = fsub fast float %803, %817
  %850 = fsub fast float -0.000000e+00, %847
  %851 = fsub fast float -0.000000e+00, %848
  %852 = fsub fast float -0.000000e+00, %849
  %853 = call float @dx.op.dot3.f32(i32 55, float %850, float %851, float %852, float %489, float %490, float %491)  ; Dot3(ax,ay,az,bx,by,bz)
  %854 = fcmp fast ogt float %853, 0.000000e+00
  %855 = uitofp i1 %854 to float
  br label %856

; <label>:856                                     ; preds = %832, %718
  %857 = phi float [ %855, %832 ], [ 1.000000e+00, %718 ]
  %858 = phi float [ %844, %832 ], [ %824, %718 ]
  %859 = phi float [ %845, %832 ], [ %825, %718 ]
  %860 = phi float [ %846, %832 ], [ %826, %718 ]
  %861 = call float @dx.op.dot3.f32(i32 55, float %489, float %490, float %491, float %858, float %859, float %860)  ; Dot3(ax,ay,az,bx,by,bz)
  %862 = fmul fast float %861, %861
  %863 = call float @dx.op.unary.f32(i32 7, float %862)  ; Saturate(value)
  %864 = fsub fast float 1.000000e+00, %863
  %865 = fmul fast float %864, 5.000000e-01
  %866 = fcmp fast ogt float %861, 0.000000e+00
  %867 = fsub fast float 1.000000e+00, %865
  %868 = select i1 %866, float %865, float %867
  %869 = fmul fast float %868, %521
  %870 = fadd fast float %869, %519
  %871 = fmul fast float %870, 0x3EF0001000000000
  %872 = fsub fast float %815, %397
  %873 = fsub fast float %816, %398
  %874 = fsub fast float %817, %399
  %875 = call float @dx.op.dot3.f32(i32 55, float %872, float %873, float %874, float %872, float %873, float %874)  ; Dot3(ax,ay,az,bx,by,bz)
  %876 = fmul fast float %405, %405
  %877 = fsub fast float %875, %876
  %878 = fdiv fast float %877, %875
  %879 = call float @dx.op.unary.f32(i32 24, float %878)  ; Sqrt(value)
  %880 = fsub fast float 1.000000e+00, %879
  %881 = fcmp fast olt float %875, %876
  %882 = fmul fast float %880, 2.560000e+02
  %883 = select i1 %881, float 2.560000e+02, float %882
  %884 = call float @dx.op.unary.f32(i32 23, float %883)  ; Log(value)
  %885 = call float @dx.op.binary.f32(i32 36, float %884, float 7.000000e+00)  ; FMin(a,b)
  %886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %871, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float %885)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %887 = extractvalue %dx.types.ResRet.f32 %886, 0
  %888 = fmul fast float %861, %511
  %889 = fadd fast float %888, %512
  %890 = call float @dx.op.unary.f32(i32 7, float %889)  ; Saturate(value)
  %891 = select i1 %524, float 1.000000e+00, float %890
  %892 = select i1 %524, float %890, float 1.000000e+00
  %893 = fmul fast float %822, %508
  %894 = fsub fast float 1.000000e+00, %893
  %895 = fmul fast float %894, %514
  %896 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %897 = fmul fast float %896, %892
  %898 = fmul fast float %897, 2.000000e+00
  %899 = fsub fast float 3.000000e+00, %898
  %900 = fmul fast float %887, %857
  %901 = fmul fast float %897, %897
  %902 = fmul fast float %901, %900
  %903 = fmul fast float %902, %899
  %904 = call float @dx.op.binary.f32(i32 36, float %903, float %903)  ; FMin(a,b)
  %905 = call float @dx.op.binary.f32(i32 36, float %903, float %904)  ; FMin(a,b)
  %906 = fcmp fast ogt float %905, 0.000000e+00
  br i1 %906, label %912, label %907, !dx.controlflow.hints !46

; <label>:907                                     ; preds = %1005, %1000, %856
  %908 = phi float [ %1035, %1005 ], [ %470, %1000 ], [ %470, %856 ]
  %909 = phi float [ %1036, %1005 ], [ %471, %1000 ], [ %471, %856 ]
  %910 = phi float [ %1037, %1005 ], [ %472, %1000 ], [ %472, %856 ]
  %911 = icmp eq i32 %469, %477
  br i1 %911, label %1038, label %468

; <label>:912                                     ; preds = %856
  %913 = icmp eq i32 %522, 255
  br i1 %913, label %1000, label %914, !dx.controlflow.hints !47

; <label>:914                                     ; preds = %912
  %915 = mul nuw nsw i32 %522, 176
  %916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.f32 %916, 0
  %918 = extractvalue %dx.types.ResRet.f32 %916, 1
  %919 = extractvalue %dx.types.ResRet.f32 %916, 2
  %920 = extractvalue %dx.types.ResRet.f32 %916, 3
  %921 = add nuw nsw i32 %915, 16
  %922 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %921, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.f32 %922, 0
  %924 = extractvalue %dx.types.ResRet.f32 %922, 1
  %925 = add nuw nsw i32 %915, 32
  %926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.f32 %926, 0
  %928 = extractvalue %dx.types.ResRet.f32 %926, 2
  %929 = add nuw nsw i32 %915, 48
  %930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.f32 %930, 0
  %932 = extractvalue %dx.types.ResRet.f32 %930, 1
  %933 = extractvalue %dx.types.ResRet.f32 %930, 2
  %934 = extractvalue %dx.types.ResRet.f32 %930, 3
  %935 = add nuw nsw i32 %915, 64
  %936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.f32 %936, 0
  %938 = extractvalue %dx.types.ResRet.f32 %936, 1
  %939 = extractvalue %dx.types.ResRet.f32 %936, 2
  %940 = extractvalue %dx.types.ResRet.f32 %936, 3
  %941 = add nuw nsw i32 %915, 80
  %942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.f32 %942, 0
  %944 = extractvalue %dx.types.ResRet.f32 %942, 1
  %945 = extractvalue %dx.types.ResRet.f32 %942, 2
  %946 = extractvalue %dx.types.ResRet.f32 %942, 3
  %947 = add nuw nsw i32 %915, 96
  %948 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %947, i32 undef)  ; BufferLoad(srv,index,wot)
  %949 = extractvalue %dx.types.ResRet.f32 %948, 0
  %950 = extractvalue %dx.types.ResRet.f32 %948, 1
  %951 = extractvalue %dx.types.ResRet.f32 %948, 2
  %952 = extractvalue %dx.types.ResRet.f32 %948, 3
  %953 = bitcast float %924 to i32
  %954 = fmul fast float %928, %824
  %955 = fmul fast float %928, %825
  %956 = fmul fast float %928, %826
  %957 = fsub fast float %801, %954
  %958 = fsub fast float %802, %955
  %959 = fsub fast float %803, %956
  %960 = fmul fast float %957, %931
  %961 = call float @dx.op.tertiary.f32(i32 46, float %958, float %937, float %960)  ; FMad(a,b,c)
  %962 = call float @dx.op.tertiary.f32(i32 46, float %959, float %943, float %961)  ; FMad(a,b,c)
  %963 = fadd fast float %962, %949
  %964 = fmul fast float %957, %932
  %965 = call float @dx.op.tertiary.f32(i32 46, float %958, float %938, float %964)  ; FMad(a,b,c)
  %966 = call float @dx.op.tertiary.f32(i32 46, float %959, float %944, float %965)  ; FMad(a,b,c)
  %967 = fadd fast float %966, %950
  %968 = fmul fast float %957, %933
  %969 = call float @dx.op.tertiary.f32(i32 46, float %958, float %939, float %968)  ; FMad(a,b,c)
  %970 = call float @dx.op.tertiary.f32(i32 46, float %959, float %945, float %969)  ; FMad(a,b,c)
  %971 = fadd fast float %970, %951
  %972 = fmul fast float %957, %934
  %973 = call float @dx.op.tertiary.f32(i32 46, float %958, float %940, float %972)  ; FMad(a,b,c)
  %974 = call float @dx.op.tertiary.f32(i32 46, float %959, float %946, float %973)  ; FMad(a,b,c)
  %975 = fadd fast float %974, %952
  %976 = fdiv fast float %963, %975
  %977 = fdiv fast float %967, %975
  %978 = fdiv fast float %971, %975
  %979 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %978)  ; FMax(a,b)
  %980 = fmul fast float %919, 5.000000e-01
  %981 = call float @dx.op.tertiary.f32(i32 46, float %980, float -0.000000e+00, float 0.000000e+00)  ; FMad(a,b,c)
  %982 = fadd fast float %981, %976
  %983 = fadd fast float %977, %980
  %984 = fmul fast float %982, %923
  %985 = fmul fast float %983, %923
  %986 = call float @dx.op.binary.f32(i32 35, float %984, float %919)  ; FMax(a,b)
  %987 = call float @dx.op.binary.f32(i32 35, float %985, float %919)  ; FMax(a,b)
  %988 = call float @dx.op.binary.f32(i32 36, float %986, float %920)  ; FMin(a,b)
  %989 = call float @dx.op.binary.f32(i32 36, float %987, float %920)  ; FMin(a,b)
  %990 = fadd fast float %988, %917
  %991 = fadd fast float %989, %918
  %992 = uitofp i32 %953 to float
  %993 = fadd fast float %979, %927
  %994 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %16, float %990, float %991, float %992, float undef, i32 0, i32 0, i32 undef, float %993)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %995 = extractvalue %dx.types.ResRet.f32 %994, 0
  %996 = fadd fast float %995, -1.000000e+00
  %997 = fmul fast float %996, %891
  %998 = fadd fast float %997, 1.000000e+00
  %999 = fmul fast float %998, %903
  br label %1000

; <label>:1000                                    ; preds = %914, %912
  %1001 = phi float [ %999, %914 ], [ %903, %912 ]
  %1002 = call float @dx.op.binary.f32(i32 36, float %1001, float %1001)  ; FMin(a,b)
  %1003 = call float @dx.op.binary.f32(i32 36, float %1001, float %1002)  ; FMin(a,b)
  %1004 = fcmp fast ogt float %1003, 0.000000e+00
  br i1 %1004, label %1005, label %907, !dx.controlflow.hints !48

; <label>:1005                                    ; preds = %1000
  %1006 = call float @dx.op.dot3.f32(i32 55, float %824, float %825, float %826, float %171, float %172, float %173)  ; Dot3(ax,ay,az,bx,by,bz)
  %1007 = fcmp fast ogt float %321, 0.000000e+00
  %1008 = select i1 %1007, float 1.000000e+00, float -1.000000e+00
  %1009 = fmul fast float %94, 7.812500e-03
  %1010 = fmul fast float %94, 3.125000e-02
  %1011 = fadd fast float %1010, -3.125000e-02
  %1012 = fmul fast float %1008, 5.000000e-01
  %1013 = fmul fast float %1012, %1006
  %1014 = fmul fast float %1008, %321
  %1015 = fadd fast float %1009, 4.921875e-01
  %1016 = fadd fast float %1015, %1013
  %1017 = fadd fast float %1009, 0x3FB25F3060000000
  %1018 = fadd fast float %1011, %1014
  %1019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1016, float %1017, float %1018, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1020 = extractvalue %dx.types.ResRet.f32 %1019, 0
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1021, 1
  %1023 = extractvalue %dx.types.CBufRet.f32 %1021, 2
  %1024 = select i1 %524, float %1022, float %1023
  %1025 = fmul fast float %831, 0x400921FB60000000
  %1026 = fmul fast float %1025, %1001
  %1027 = fmul fast float %1026, %1020
  %1028 = fmul fast float %1027, %1024
  %1029 = fmul fast float %797, %481
  %1030 = fmul fast float %1029, %1028
  %1031 = fmul fast float %797, %482
  %1032 = fmul fast float %1031, %1028
  %1033 = fmul fast float %797, %483
  %1034 = fmul fast float %1033, %1028
  %1035 = fadd fast float %1030, %470
  %1036 = fadd fast float %1032, %471
  %1037 = fadd fast float %1034, %472
  br label %907

; <label>:1038                                    ; preds = %907
  br label %1039

; <label>:1039                                    ; preds = %1038, %455
  %1040 = phi float [ %457, %455 ], [ %908, %1038 ]
  %1041 = phi float [ %458, %455 ], [ %909, %1038 ]
  %1042 = phi float [ %459, %455 ], [ %910, %1038 ]
  %1043 = add i32 %456, 1
  %1044 = icmp ugt i32 %1043, %454
  br i1 %1044, label %1045, label %455

; <label>:1045                                    ; preds = %1039
  br label %1046

; <label>:1046                                    ; preds = %1045, %314
  %1047 = phi float [ 0.000000e+00, %314 ], [ %1040, %1045 ]
  %1048 = phi float [ 0.000000e+00, %314 ], [ %1041, %1045 ]
  %1049 = phi float [ 0.000000e+00, %314 ], [ %1042, %1045 ]
  %1050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %14, float %119, float %120, float %121, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.ResRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.ResRet.f32 %1050, 2
  %1054 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1051)  ; IsNaN(value)
  %1055 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1052)  ; IsNaN(value)
  %1056 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1053)  ; IsNaN(value)
  %1057 = or i1 %1054, %1055
  %1058 = or i1 %1057, %1056
  %1059 = select i1 %1058, float 0.000000e+00, float %1051
  %1060 = select i1 %1058, float 0.000000e+00, float %1052
  %1061 = select i1 %1058, float 0.000000e+00, float %1053
  %1062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.f32 %1062, 1
  %1064 = fmul fast float %1059, %1063
  %1065 = fmul fast float %1060, %1063
  %1066 = fmul fast float %1061, %1063
  %1067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1068 = extractvalue %dx.types.CBufRet.f32 %1067, 3
  %1069 = fmul fast float %1064, %1068
  %1070 = fmul fast float %1065, %1068
  %1071 = fmul fast float %1066, %1068
  %1072 = fadd fast float %1069, %1047
  %1073 = fadd fast float %1070, %1048
  %1074 = fadd fast float %1071, %1049
  br label %1075

; <label>:1075                                    ; preds = %1046, %294
  %1076 = phi float [ %318, %1046 ], [ %310, %294 ]
  %1077 = phi float [ %319, %1046 ], [ %311, %294 ]
  %1078 = phi float [ %320, %1046 ], [ %312, %294 ]
  %1079 = phi float [ %1072, %1046 ], [ 0.000000e+00, %294 ]
  %1080 = phi float [ %1073, %1046 ], [ 0.000000e+00, %294 ]
  %1081 = phi float [ %1074, %1046 ], [ 0.000000e+00, %294 ]
  %1082 = fmul fast float %1076, %309
  %1083 = fmul fast float %1077, %309
  %1084 = fmul fast float %1078, %309
  %1085 = fmul fast float %1082, %1079
  %1086 = fmul fast float %1083, %1080
  %1087 = fmul fast float %1084, %1081
  %1088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1089 = extractvalue %dx.types.CBufRet.f32 %1088, 0
  %1090 = fmul fast float %1085, %1089
  %1091 = fmul fast float %1086, %1089
  %1092 = fmul fast float %1087, %1089
  %1093 = fmul fast float %1091, 5.000000e-01
  %1094 = fadd fast float %1087, %1085
  %1095 = fmul fast float %1089, %1094
  %1096 = fmul fast float %1095, 2.500000e-01
  %1097 = fadd fast float %1096, %1093
  %1098 = call float @dx.op.unary.f32(i32 23, float %1097)  ; Log(value)
  %1099 = fmul fast float %1098, 0x3FE62E4300000000
  %1100 = fmul fast float %1099, %1099
  %1101 = icmp ugt i32 %174, 31
  %1102 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %1103 = add i32 %174, -1
  %1104 = add i32 %174, 7
  %1105 = and i32 %1104, 4
  %1106 = and i32 %1103, %1102
  %1107 = xor i32 %1106, %1105
  %1108 = and i32 %1102, -4
  %1109 = shl i32 %1102, 1
  %1110 = and i32 %1109, 6
  %1111 = lshr i32 177, %1110
  %1112 = and i32 %1111, 3
  %1113 = or i32 %1112, %1108
  br i1 %1101, label %1114, label %1130, !dx.controlflow.hints !49

; <label>:1114                                    ; preds = %1075
  %1115 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1099, i32 %1107)  ; WaveReadLaneAt(value,lane)
  %1116 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1100, i32 %1107)  ; WaveReadLaneAt(value,lane)
  %1117 = fadd fast float %1115, %1099
  %1118 = fadd fast float %1116, %1100
  %1119 = add i32 %174, 31
  %1120 = and i32 %1119, 16
  %1121 = xor i32 %1106, %1120
  %1122 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1117, i32 %1121)  ; WaveReadLaneAt(value,lane)
  %1123 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1118, i32 %1121)  ; WaveReadLaneAt(value,lane)
  %1124 = fadd fast float %1122, %1117
  %1125 = fadd fast float %1123, %1118
  %1126 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1124, i32 %1113)  ; WaveReadLaneAt(value,lane)
  %1127 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1125, i32 %1113)  ; WaveReadLaneAt(value,lane)
  %1128 = fadd fast float %1126, %1124
  %1129 = fadd fast float %1127, %1125
  br label %1166

; <label>:1130                                    ; preds = %1075
  %1131 = udiv i32 %23, %174
  %1132 = shl i32 %1131, 2
  %1133 = lshr i32 %1102, 1
  %1134 = and i32 %1133, 1
  %1135 = or i32 %1132, %1134
  %1136 = lshr i32 %1102, 2
  %1137 = and i32 %1136, 2
  %1138 = or i32 %1135, %1137
  %1139 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1099, i32 %1107)  ; WaveReadLaneAt(value,lane)
  %1140 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1100, i32 %1107)  ; WaveReadLaneAt(value,lane)
  %1141 = fadd fast float %1139, %1099
  %1142 = fadd fast float %1140, %1100
  %1143 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1141, i32 %1113)  ; WaveReadLaneAt(value,lane)
  %1144 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1142, i32 %1113)  ; WaveReadLaneAt(value,lane)
  %1145 = fadd fast float %1143, %1141
  %1146 = fadd fast float %1144, %1142
  %1147 = mul i32 %1138, 2
  %1148 = add i32 0, %1147
  %1149 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1148
  store float %1145, float addrspace(3)* %1149, align 4
  %1150 = mul i32 %1138, 2
  %1151 = add i32 1, %1150
  %1152 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1151
  store float %1146, float addrspace(3)* %1152, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1153 = load float, float addrspace(3)* %1149, align 4
  %1154 = load float, float addrspace(3)* %1152, align 4
  %1155 = xor i32 %1138, 4
  %1156 = mul i32 %1155, 2
  %1157 = add i32 0, %1156
  %1158 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1157
  %1159 = load float, float addrspace(3)* %1158, align 4
  %1160 = mul i32 %1155, 2
  %1161 = add i32 1, %1160
  %1162 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1161
  %1163 = load float, float addrspace(3)* %1162, align 4
  %1164 = fadd fast float %1159, %1153
  %1165 = fadd fast float %1163, %1154
  br label %1166

; <label>:1166                                    ; preds = %1130, %1114
  %1167 = phi float [ %1128, %1114 ], [ %1164, %1130 ]
  %1168 = phi float [ %1129, %1114 ], [ %1165, %1130 ]
  %1169 = fmul fast float %1167, 1.250000e-01
  %1170 = and i32 %44, 1
  %1171 = and i32 %1170, %45
  %1172 = and i32 %1171, %46
  %1173 = icmp ne i32 %1172, 0
  %1174 = and i1 %1173, %56
  br i1 %1174, label %1175, label %1180, !dx.controlflow.hints !32

; <label>:1175                                    ; preds = %1166
  %1176 = fmul fast float %1168, 1.250000e-01
  %1177 = lshr i32 %44, 1
  %1178 = lshr i32 %45, 1
  %1179 = lshr i32 %46, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1177, i32 %1178, i32 %1179, float %1169, float %1176, float %1169, float %1169, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1180

; <label>:1180                                    ; preds = %1175, %1166
  br i1 %55, label %1215, label %1181, !dx.controlflow.hints !33

; <label>:1181                                    ; preds = %1180
  %1182 = fadd fast float %94, 0x3FE3C6EF40000000
  %1183 = call float @dx.op.unary.f32(i32 22, float %1182)  ; Frc(value)
  %1184 = call float @dx.op.unary.f32(i32 23, float %1090)  ; Log(value)
  %1185 = fadd fast float %1184, -7.000000e+00
  %1186 = call float @dx.op.unary.f32(i32 21, float %1185)  ; Exp(value)
  %1187 = fmul fast float %1183, 2.000000e+00
  %1188 = fadd fast float %1187, -1.000000e+00
  %1189 = fmul fast float %1186, %1188
  %1190 = fcmp fast ogt float %1090, 0.000000e+00
  %1191 = select i1 %1190, float %1189, float 0.000000e+00
  %1192 = fadd fast float %1191, %1090
  %1193 = fadd fast float %94, 0x3FF3C6EF40000000
  %1194 = call float @dx.op.unary.f32(i32 22, float %1193)  ; Frc(value)
  %1195 = call float @dx.op.unary.f32(i32 23, float %1091)  ; Log(value)
  %1196 = fadd fast float %1195, -7.000000e+00
  %1197 = call float @dx.op.unary.f32(i32 21, float %1196)  ; Exp(value)
  %1198 = fmul fast float %1194, 2.000000e+00
  %1199 = fadd fast float %1198, -1.000000e+00
  %1200 = fmul fast float %1197, %1199
  %1201 = fcmp fast ogt float %1091, 0.000000e+00
  %1202 = select i1 %1201, float %1200, float 0.000000e+00
  %1203 = fadd fast float %1202, %1091
  %1204 = fadd fast float %94, 0x3FFDAA66E0000000
  %1205 = call float @dx.op.unary.f32(i32 22, float %1204)  ; Frc(value)
  %1206 = call float @dx.op.unary.f32(i32 23, float %1092)  ; Log(value)
  %1207 = fadd fast float %1206, -6.000000e+00
  %1208 = call float @dx.op.unary.f32(i32 21, float %1207)  ; Exp(value)
  %1209 = fmul fast float %1205, 2.000000e+00
  %1210 = fadd fast float %1209, -1.000000e+00
  %1211 = fmul fast float %1208, %1210
  %1212 = fcmp fast ogt float %1092, 0.000000e+00
  %1213 = select i1 %1212, float %1211, float 0.000000e+00
  %1214 = fadd fast float %1213, %1092
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %44, i32 %45, i32 %46, float %1192, float %1203, float %1214, float %1192, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1215

; <label>:1215                                    ; preds = %1181, %1180
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 0
  %1218 = fmul fast float %1217, %309
  %1219 = fmul fast float %1218, 5.000000e-01
  %1220 = fadd fast float %302, %302
  %1221 = fmul fast float %308, %1220
  %1222 = fmul fast float %1217, %1221
  %1223 = fmul fast float %1222, 2.500000e-01
  %1224 = fadd fast float %1223, %1219
  %1225 = fmul fast float %1224, %1224
  %1226 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %1227 = add i32 %174, -1
  %1228 = add i32 %174, 7
  %1229 = and i32 %1228, 4
  %1230 = and i32 %1227, %1226
  %1231 = xor i32 %1230, %1229
  %1232 = and i32 %1226, -4
  %1233 = shl i32 %1226, 1
  %1234 = and i32 %1233, 6
  %1235 = lshr i32 177, %1234
  %1236 = and i32 %1235, 3
  %1237 = or i32 %1236, %1232
  br i1 %1101, label %1238, label %1254, !dx.controlflow.hints !49

; <label>:1238                                    ; preds = %1215
  %1239 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1224, i32 %1231)  ; WaveReadLaneAt(value,lane)
  %1240 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1225, i32 %1231)  ; WaveReadLaneAt(value,lane)
  %1241 = fadd fast float %1239, %1224
  %1242 = fadd fast float %1240, %1225
  %1243 = add i32 %174, 31
  %1244 = and i32 %1243, 16
  %1245 = xor i32 %1230, %1244
  %1246 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1241, i32 %1245)  ; WaveReadLaneAt(value,lane)
  %1247 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1242, i32 %1245)  ; WaveReadLaneAt(value,lane)
  %1248 = fadd fast float %1246, %1241
  %1249 = fadd fast float %1247, %1242
  %1250 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1248, i32 %1237)  ; WaveReadLaneAt(value,lane)
  %1251 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1249, i32 %1237)  ; WaveReadLaneAt(value,lane)
  %1252 = fadd fast float %1250, %1248
  %1253 = fadd fast float %1251, %1249
  br label %1290

; <label>:1254                                    ; preds = %1215
  %1255 = udiv i32 %23, %174
  %1256 = shl i32 %1255, 2
  %1257 = lshr i32 %1226, 1
  %1258 = and i32 %1257, 1
  %1259 = or i32 %1256, %1258
  %1260 = lshr i32 %1226, 2
  %1261 = and i32 %1260, 2
  %1262 = or i32 %1259, %1261
  %1263 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1224, i32 %1231)  ; WaveReadLaneAt(value,lane)
  %1264 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1225, i32 %1231)  ; WaveReadLaneAt(value,lane)
  %1265 = fadd fast float %1263, %1224
  %1266 = fadd fast float %1264, %1225
  %1267 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1265, i32 %1237)  ; WaveReadLaneAt(value,lane)
  %1268 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1266, i32 %1237)  ; WaveReadLaneAt(value,lane)
  %1269 = fadd fast float %1267, %1265
  %1270 = fadd fast float %1268, %1266
  %1271 = mul i32 %1262, 2
  %1272 = add i32 0, %1271
  %1273 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1272
  store float %1269, float addrspace(3)* %1273, align 4
  %1274 = mul i32 %1262, 2
  %1275 = add i32 1, %1274
  %1276 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1275
  store float %1270, float addrspace(3)* %1276, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1277 = load float, float addrspace(3)* %1273, align 4
  %1278 = load float, float addrspace(3)* %1276, align 4
  %1279 = xor i32 %1262, 4
  %1280 = mul i32 %1279, 2
  %1281 = add i32 0, %1280
  %1282 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1281
  %1283 = load float, float addrspace(3)* %1282, align 4
  %1284 = mul i32 %1279, 2
  %1285 = add i32 1, %1284
  %1286 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1285
  %1287 = load float, float addrspace(3)* %1286, align 4
  %1288 = fadd fast float %1283, %1277
  %1289 = fadd fast float %1287, %1278
  br label %1290

; <label>:1290                                    ; preds = %1254, %1238
  %1291 = phi float [ %1252, %1238 ], [ %1288, %1254 ]
  %1292 = phi float [ %1253, %1238 ], [ %1289, %1254 ]
  %1293 = fmul fast float %1291, 1.250000e-01
  br i1 %1174, label %1294, label %1299, !dx.controlflow.hints !34

; <label>:1294                                    ; preds = %1290
  %1295 = fmul fast float %1292, 1.250000e-01
  %1296 = lshr i32 %44, 1
  %1297 = lshr i32 %45, 1
  %1298 = lshr i32 %46, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1296, i32 %1297, i32 %1298, float %1293, float %1295, float %1293, float %1293, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1299

; <label>:1299                                    ; preds = %1294, %1290
  br i1 %55, label %1328, label %1300, !dx.controlflow.hints !35

; <label>:1300                                    ; preds = %1299
  %1301 = fadd fast float %94, 0x3FE3C6EF40000000
  %1302 = call float @dx.op.unary.f32(i32 22, float %1301)  ; Frc(value)
  %1303 = call float @dx.op.unary.f32(i32 23, float %1218)  ; Log(value)
  %1304 = fadd fast float %1303, -7.000000e+00
  %1305 = call float @dx.op.unary.f32(i32 21, float %1304)  ; Exp(value)
  %1306 = fmul fast float %1302, 2.000000e+00
  %1307 = fadd fast float %1306, -1.000000e+00
  %1308 = fmul fast float %1305, %1307
  %1309 = fcmp fast ogt float %1218, 0.000000e+00
  %1310 = select i1 %1309, float %1308, float 0.000000e+00
  %1311 = fadd fast float %1310, %1218
  %1312 = fadd fast float %94, 0x3FF3C6EF40000000
  %1313 = call float @dx.op.unary.f32(i32 22, float %1312)  ; Frc(value)
  %1314 = fmul fast float %1313, 2.000000e+00
  %1315 = fadd fast float %1314, -1.000000e+00
  %1316 = fmul fast float %1305, %1315
  %1317 = select i1 %1309, float %1316, float 0.000000e+00
  %1318 = fadd fast float %1317, %1218
  %1319 = fadd fast float %94, 0x3FFDAA66E0000000
  %1320 = call float @dx.op.unary.f32(i32 22, float %1319)  ; Frc(value)
  %1321 = fadd fast float %1303, -6.000000e+00
  %1322 = call float @dx.op.unary.f32(i32 21, float %1321)  ; Exp(value)
  %1323 = fmul fast float %1320, 2.000000e+00
  %1324 = fadd fast float %1323, -1.000000e+00
  %1325 = fmul fast float %1322, %1324
  %1326 = select i1 %1309, float %1325, float 0.000000e+00
  %1327 = fadd fast float %1326, %1218
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %44, i32 %45, i32 %46, float %1311, float %1318, float %1327, float %1311, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1328

; <label>:1328                                    ; preds = %1300, %1299
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
!29 = !{i32 0, i64 524560, i32 4, !30}
!30 = !{i32 4, i32 4, i32 4}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
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
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}

