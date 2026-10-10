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
; shader hash: affea36b5e7e1ee728a07456e713c053
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
;                                   sampler      NA          NA      S2             s3     1
;                                   sampler      NA          NA      S3             s4     1
;                                   sampler      NA          NA      S4             s5     1
;                                   texture     f32          2d      T0            t11     1
;                                   texture    byte         r/o      T1            t22     1
;                                   texture     f32          3d      T2            t10     1
;                                   texture     f32          2d      T3             t0     1
;                                   textureunorm_f32     2darray      T4            t34     1
;                                   texture    byte         r/o      T5            t28     1
;                                   texture     f32          2d      T6             t1     1
;                                   texture     f32          2d      T7            t23     1
;                                   texture     f32          2d      T8             t2     1
;                                   texture     f32          2d      T9            t18     1
;                                   texture     f32          3d     T10             t5     1
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
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
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
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = alloca [4 x i32], align 4
  %24 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %25 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %26 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %27 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %28 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %29 = alloca [12 x float], align 4
  %30 = alloca [12 x float], align 4
  %31 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.i32 %31, 3
  %33 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.i32 %33, 1
  %35 = mul i32 %34, %32
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 1
  %38 = mul i32 %35, %37
  %39 = add i32 %38, %27
  %40 = shl i32 %39, 2
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %40, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = shl i32 %42, 2
  %44 = and i32 %43, 1020
  %45 = lshr i32 %42, 6
  %46 = and i32 %45, 1020
  %47 = lshr i32 %42, 14
  %48 = and i32 %47, 1020
  %49 = add i32 %44, %24
  %50 = add i32 %46, %25
  %51 = add i32 %48, %26
  %52 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.i32 %52, 0
  %54 = extractvalue %dx.types.CBufRet.i32 %52, 1
  %55 = extractvalue %dx.types.CBufRet.i32 %52, 2
  %56 = icmp uge i32 %49, %53
  %57 = icmp uge i32 %50, %54
  %58 = icmp uge i32 %51, %55
  %59 = or i1 %56, %57
  %60 = or i1 %58, %59
  %61 = xor i1 %60, true
  %62 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.i32 %62, 3
  %64 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %50, i32 %63)  ; UMad(a,b,c)
  %65 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %49, i32 %64)  ; UMad(a,b,c)
  %66 = mul i32 %65, -63
  %67 = lshr i32 %66, 17
  %68 = xor i32 %67, %66
  %69 = mul i32 %68, -511
  %70 = mul i32 %68, -8176
  %71 = xor i32 %69, %70
  %72 = mul i32 %71, -7
  %73 = mul i32 %71, -7168
  %74 = xor i32 %72, %73
  %75 = lshr i32 %74, 15
  %76 = xor i32 %75, %72
  %77 = and i32 %76, 127
  %78 = mul i32 %77, 3
  %79 = add i32 0, %78
  %80 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %79
  %81 = load float, float* %80, align 4
  %82 = mul i32 %77, 3
  %83 = add i32 1, %82
  %84 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %83
  %85 = load float, float* %84, align 4
  %86 = mul i32 %77, 3
  %87 = add i32 2, %86
  %88 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %87
  %89 = load float, float* %88, align 4
  %90 = uitofp i32 %63 to float
  %91 = fmul fast float %90, 0x3FEA36A940000000
  %92 = fmul fast float %90, 0x3FE5793080000000
  %93 = fmul fast float %90, 0x3FE1972580000000
  %94 = fadd fast float %81, %91
  %95 = fadd fast float %85, %92
  %96 = fadd fast float %89, %93
  %97 = call float @dx.op.unary.f32(i32 22, float %94)  ; Frc(value)
  %98 = call float @dx.op.unary.f32(i32 22, float %95)  ; Frc(value)
  %99 = call float @dx.op.unary.f32(i32 22, float %96)  ; Frc(value)
  %100 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %49, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %101 = extractvalue %dx.types.ResRet.f32 %100, 0
  %102 = fcmp fast ogt float %101, -1.000000e+00
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %105 = select i1 %102, float %104, float 1.000000e+00
  %106 = fadd fast float %101, 1.000000e+00
  %107 = fmul fast float %105, %106
  %108 = uitofp i32 %49 to float
  %109 = uitofp i32 %50 to float
  %110 = uitofp i32 %51 to float
  %111 = fadd fast float %108, %97
  %112 = fadd fast float %109, %98
  %113 = fadd fast float %110, %99
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %117 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %118 = fmul fast float %115, %111
  %119 = fmul fast float %116, %112
  %120 = fmul fast float %117, %113
  %121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.i32 %121, 0
  %123 = uitofp i32 %122 to float
  %124 = fmul fast float %123, %120
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = fmul fast float %124, %127
  %129 = call float @dx.op.unary.f32(i32 21, float %128)  ; Exp(value)
  %130 = fmul fast float %129, %126
  %131 = fsub fast float 4.000000e+00, %126
  %132 = fadd fast float %131, %130
  %133 = call float @dx.op.binary.f32(i32 36, float %132, float %107)  ; FMin(a,b)
  %134 = fmul fast float %118, 2.000000e+00
  %135 = fmul fast float %119, 2.000000e+00
  %136 = fsub fast float 1.000000e+00, %134
  %137 = fsub fast float 1.000000e+00, %135
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = fmul fast float %139, %136
  %143 = fmul fast float %140, %136
  %144 = fmul fast float %141, %136
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = fmul fast float %146, %137
  %150 = fmul fast float %147, %137
  %151 = fmul fast float %148, %137
  %152 = fadd fast float %149, %142
  %153 = fadd fast float %150, %143
  %154 = fadd fast float %151, %144
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = fadd fast float %152, %156
  %160 = fadd fast float %153, %157
  %161 = fadd fast float %154, %158
  %162 = fmul fast float %159, %133
  %163 = fmul fast float %160, %133
  %164 = fmul fast float %161, %133
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %168 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %169 = fadd fast float %162, %166
  %170 = fadd fast float %163, %167
  %171 = fadd fast float %164, %168
  %172 = call float @dx.op.dot3.f32(i32 55, float %162, float %163, float %164, float %162, float %163, float %164)  ; Dot3(ax,ay,az,bx,by,bz)
  %173 = call float @dx.op.unary.f32(i32 25, float %172)  ; Rsqrt(value)
  %174 = fmul fast float %162, %173
  %175 = fmul fast float %163, %173
  %176 = fmul fast float %164, %173
  %177 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %178 = icmp ult i32 %177, 32
  br i1 %178, label %179, label %297, !dx.controlflow.hints !36

; <label>:179                                     ; preds = %0
  %180 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %181 = fmul fast float %180, 0x3FE62E4300000000
  %182 = fmul fast float %181, %181
  %183 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %184 = add i32 %177, -1
  %185 = add i32 %177, 7
  %186 = and i32 %185, 4
  %187 = and i32 %184, %183
  %188 = xor i32 %187, %186
  %189 = and i32 %183, -4
  %190 = shl i32 %183, 1
  %191 = and i32 %190, 6
  %192 = lshr i32 177, %191
  %193 = and i32 %192, 3
  %194 = or i32 %193, %189
  %195 = udiv i32 %28, %177
  %196 = shl i32 %195, 2
  %197 = lshr i32 %183, 1
  %198 = and i32 %197, 1
  %199 = or i32 %196, %198
  %200 = lshr i32 %183, 2
  %201 = and i32 %200, 2
  %202 = or i32 %199, %201
  %203 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %181, i32 %188)  ; WaveReadLaneAt(value,lane)
  %204 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %182, i32 %188)  ; WaveReadLaneAt(value,lane)
  %205 = fadd fast float %203, %181
  %206 = fadd fast float %204, %182
  %207 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %205, i32 %194)  ; WaveReadLaneAt(value,lane)
  %208 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %206, i32 %194)  ; WaveReadLaneAt(value,lane)
  %209 = fadd fast float %207, %205
  %210 = fadd fast float %208, %206
  %211 = mul i32 %202, 2
  %212 = add i32 0, %211
  %213 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %212
  store float %209, float addrspace(3)* %213, align 4
  %214 = mul i32 %202, 2
  %215 = add i32 1, %214
  %216 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %215
  store float %210, float addrspace(3)* %216, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %217 = load float, float addrspace(3)* %213, align 4
  %218 = xor i32 %202, 4
  %219 = mul i32 %218, 2
  %220 = add i32 0, %219
  %221 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %220
  %222 = load float, float addrspace(3)* %221, align 4
  %223 = fadd fast float %222, %217
  %224 = fmul fast float %223, 1.250000e-01
  %225 = and i32 %50, 1
  %226 = and i32 %225, %49
  %227 = and i32 %226, %51
  %228 = icmp ne i32 %227, 0
  %229 = and i1 %228, %61
  br i1 %229, label %230, label %241, !dx.controlflow.hints !37

; <label>:230                                     ; preds = %179
  %231 = mul i32 %218, 2
  %232 = add i32 1, %231
  %233 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %232
  %234 = load float, float addrspace(3)* %233, align 4
  %235 = load float, float addrspace(3)* %216, align 4
  %236 = fadd fast float %234, %235
  %237 = fmul fast float %236, 1.250000e-01
  %238 = lshr i32 %49, 1
  %239 = lshr i32 %50, 1
  %240 = lshr i32 %51, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %238, i32 %239, i32 %240, float %224, float %237, float %224, float %224, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %241

; <label>:241                                     ; preds = %230, %179
  br i1 %60, label %243, label %242, !dx.controlflow.hints !38

; <label>:242                                     ; preds = %241
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %49, i32 %50, i32 %51, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %243

; <label>:243                                     ; preds = %242, %241
  %244 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %245 = add i32 %177, -1
  %246 = add i32 %177, 7
  %247 = and i32 %246, 4
  %248 = and i32 %245, %244
  %249 = xor i32 %248, %247
  %250 = and i32 %244, -4
  %251 = shl i32 %244, 1
  %252 = and i32 %251, 6
  %253 = lshr i32 177, %252
  %254 = and i32 %253, 3
  %255 = or i32 %254, %250
  %256 = udiv i32 %28, %177
  %257 = shl i32 %256, 2
  %258 = lshr i32 %244, 1
  %259 = and i32 %258, 1
  %260 = or i32 %257, %259
  %261 = lshr i32 %244, 2
  %262 = and i32 %261, 2
  %263 = or i32 %260, %262
  %264 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %249)  ; WaveReadLaneAt(value,lane)
  %265 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %249)  ; WaveReadLaneAt(value,lane)
  %266 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %264, i32 %255)  ; WaveReadLaneAt(value,lane)
  %267 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %265, i32 %255)  ; WaveReadLaneAt(value,lane)
  %268 = fadd fast float %266, %264
  %269 = fadd fast float %267, %265
  %270 = mul i32 %263, 2
  %271 = add i32 0, %270
  %272 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %271
  store float %268, float addrspace(3)* %272, align 4
  %273 = mul i32 %263, 2
  %274 = add i32 1, %273
  %275 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %274
  store float %269, float addrspace(3)* %275, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %276 = load float, float addrspace(3)* %272, align 4
  %277 = xor i32 %263, 4
  %278 = mul i32 %277, 2
  %279 = add i32 0, %278
  %280 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %279
  %281 = load float, float addrspace(3)* %280, align 4
  %282 = fadd fast float %281, %276
  %283 = fmul fast float %282, 1.250000e-01
  br i1 %229, label %284, label %295, !dx.controlflow.hints !39

; <label>:284                                     ; preds = %243
  %285 = mul i32 %277, 2
  %286 = add i32 1, %285
  %287 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %286
  %288 = load float, float addrspace(3)* %287, align 4
  %289 = load float, float addrspace(3)* %275, align 4
  %290 = fadd fast float %288, %289
  %291 = fmul fast float %290, 1.250000e-01
  %292 = lshr i32 %49, 1
  %293 = lshr i32 %50, 1
  %294 = lshr i32 %51, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %292, i32 %293, i32 %294, float %283, float %291, float %283, float %283, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %295

; <label>:295                                     ; preds = %284, %243
  br i1 %60, label %297, label %296, !dx.controlflow.hints !40

; <label>:296                                     ; preds = %295
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %49, i32 %50, i32 %51, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %297

; <label>:297                                     ; preds = %296, %295, %0
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 0
  %300 = extractvalue %dx.types.CBufRet.f32 %298, 1
  %301 = fsub fast float %171, %299
  %302 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %301)  ; FMax(a,b)
  %303 = fmul fast float %302, 0x3FF7154760000000
  %304 = fmul fast float %303, %300
  %305 = call float @dx.op.unary.f32(i32 21, float %304)  ; Exp(value)
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 0
  %308 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %309 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %312 = fmul fast float %311, %305
  %313 = fmul fast float %312, %307
  %314 = fmul fast float %312, %308
  %315 = fmul fast float %312, %309
  %316 = fcmp fast ogt float %312, 0.000000e+00
  br i1 %316, label %317, label %1101, !dx.controlflow.hints !41

; <label>:317                                     ; preds = %297
  %318 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %319 = fmul fast float %318, %312
  %320 = fdiv fast float 1.000000e+00, %312
  %321 = fmul fast float %320, %313
  %322 = fmul fast float %320, %314
  %323 = fmul fast float %320, %315
  %324 = fmul fast float %319, %320
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 0
  %327 = extractvalue %dx.types.CBufRet.f32 %325, 1
  %328 = extractvalue %dx.types.CBufRet.f32 %325, 2
  %329 = fsub fast float %171, %328
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 3
  %332 = fcmp fast oeq float %331, 0.000000e+00
  br i1 %332, label %1072, label %333, !dx.controlflow.hints !42

; <label>:333                                     ; preds = %317
  %334 = fsub fast float %170, %327
  %335 = fsub fast float %169, %326
  %336 = extractvalue %dx.types.CBufRet.f32 %330, 0
  %337 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %338 = extractvalue %dx.types.CBufRet.f32 %330, 2
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 0
  %341 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %342 = extractvalue %dx.types.CBufRet.f32 %339, 2
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %345 = fmul fast float %344, %336
  %346 = fmul fast float %344, %337
  %347 = fmul fast float %344, %338
  %348 = fsub fast float %335, %345
  %349 = fsub fast float %334, %346
  %350 = fsub fast float %329, %347
  %351 = fcmp fast olt float %331, 0.000000e+00
  br i1 %351, label %883, label %352, !dx.controlflow.hints !43

; <label>:352                                     ; preds = %333
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 0
  %355 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %356 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %357 = extractvalue %dx.types.CBufRet.f32 %353, 3
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 0
  %360 = extractvalue %dx.types.CBufRet.f32 %358, 1
  %361 = extractvalue %dx.types.CBufRet.f32 %358, 2
  %362 = extractvalue %dx.types.CBufRet.f32 %358, 3
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 0
  %365 = extractvalue %dx.types.CBufRet.f32 %363, 1
  %366 = extractvalue %dx.types.CBufRet.f32 %363, 2
  %367 = extractvalue %dx.types.CBufRet.f32 %363, 3
  %368 = fmul fast float %354, %348
  %369 = call float @dx.op.tertiary.f32(i32 46, float %349, float %355, float %368)  ; FMad(a,b,c)
  %370 = call float @dx.op.tertiary.f32(i32 46, float %350, float %356, float %369)  ; FMad(a,b,c)
  %371 = fadd fast float %370, %357
  %372 = fmul fast float %359, %348
  %373 = call float @dx.op.tertiary.f32(i32 46, float %349, float %360, float %372)  ; FMad(a,b,c)
  %374 = call float @dx.op.tertiary.f32(i32 46, float %350, float %361, float %373)  ; FMad(a,b,c)
  %375 = fadd fast float %374, %362
  %376 = fmul fast float %364, %348
  %377 = call float @dx.op.tertiary.f32(i32 46, float %349, float %365, float %376)  ; FMad(a,b,c)
  %378 = call float @dx.op.tertiary.f32(i32 46, float %350, float %366, float %377)  ; FMad(a,b,c)
  %379 = fadd fast float %378, %367
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 0
  %382 = extractvalue %dx.types.CBufRet.f32 %380, 1
  %383 = extractvalue %dx.types.CBufRet.f32 %380, 3
  %384 = fmul fast float %383, %371
  %385 = fmul fast float %383, %375
  %386 = fadd fast float %384, %381
  %387 = fadd fast float %385, %382
  %388 = extractvalue %dx.types.CBufRet.f32 %380, 2
  %389 = fcmp fast olt float %388, 0.000000e+00
  %390 = fsub fast float -0.000000e+00, %388
  %391 = select i1 %389, float %390, float %388
  %392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %393 = extractvalue %dx.types.CBufRet.f32 %392, 1
  %394 = fadd fast float %391, %393
  %395 = fcmp fast ogt float %394, 0.000000e+00
  br i1 %395, label %396, label %427, !dx.controlflow.hints !44

; <label>:396                                     ; preds = %352
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 1
  %399 = fsub fast float %398, %379
  %400 = extractvalue %dx.types.CBufRet.f32 %397, 2
  %401 = fmul fast float %399, %400
  %402 = fsub fast float 1.000000e+00, %401
  %403 = call float @dx.op.unary.f32(i32 7, float %402)  ; Saturate(value)
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 0
  %406 = extractvalue %dx.types.CBufRet.f32 %404, 1
  %407 = fsub fast float %386, %405
  %408 = fsub fast float %387, %406
  %409 = fcmp fast olt float %407, 0.000000e+00
  %410 = fcmp fast olt float %408, 0.000000e+00
  %411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.f32 %411, 0
  %413 = extractvalue %dx.types.CBufRet.f32 %411, 1
  %414 = extractvalue %dx.types.CBufRet.f32 %411, 2
  %415 = extractvalue %dx.types.CBufRet.f32 %411, 3
  %416 = select i1 %409, float %412, float %414
  %417 = select i1 %410, float %413, float %415
  %418 = fmul fast float %416, %407
  %419 = fmul fast float %417, %408
  %420 = call float @dx.op.unary.f32(i32 6, float %418)  ; FAbs(value)
  %421 = call float @dx.op.unary.f32(i32 6, float %419)  ; FAbs(value)
  %422 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %423 = call float @dx.op.binary.f32(i32 35, float %420, float %421)  ; FMax(a,b)
  %424 = fsub fast float %422, %423
  %425 = call float @dx.op.unary.f32(i32 7, float %424)  ; Saturate(value)
  %426 = fmul fast float %425, %403
  br label %427

; <label>:427                                     ; preds = %396, %352
  %428 = phi float [ %426, %396 ], [ 0.000000e+00, %352 ]
  %429 = call float @dx.op.binary.f32(i32 35, float %428, float 0.000000e+00)  ; FMax(a,b)
  %430 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %429)  ; FMax(a,b)
  %431 = fcmp fast olt float %430, 1.000000e+00
  br i1 %431, label %432, label %830, !dx.controlflow.hints !45

; <label>:432                                     ; preds = %427
  %433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %434 = extractvalue %dx.types.CBufRet.f32 %433, 0
  %435 = fcmp fast une float %434, 0.000000e+00
  br i1 %435, label %436, label %830, !dx.controlflow.hints !46

; <label>:436                                     ; preds = %432
  %437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.f32 %437, 0
  %439 = extractvalue %dx.types.CBufRet.f32 %437, 1
  %440 = extractvalue %dx.types.CBufRet.f32 %437, 2
  %441 = extractvalue %dx.types.CBufRet.f32 %437, 3
  %442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.f32 %442, 0
  %444 = extractvalue %dx.types.CBufRet.f32 %442, 1
  %445 = extractvalue %dx.types.CBufRet.f32 %442, 2
  %446 = extractvalue %dx.types.CBufRet.f32 %442, 3
  %447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.f32 %447, 0
  %449 = extractvalue %dx.types.CBufRet.f32 %447, 1
  %450 = extractvalue %dx.types.CBufRet.f32 %447, 2
  %451 = extractvalue %dx.types.CBufRet.f32 %447, 3
  %452 = fmul fast float %438, %348
  %453 = call float @dx.op.tertiary.f32(i32 46, float %349, float %439, float %452)  ; FMad(a,b,c)
  %454 = call float @dx.op.tertiary.f32(i32 46, float %350, float %440, float %453)  ; FMad(a,b,c)
  %455 = fadd fast float %454, %441
  %456 = fmul fast float %443, %348
  %457 = call float @dx.op.tertiary.f32(i32 46, float %349, float %444, float %456)  ; FMad(a,b,c)
  %458 = call float @dx.op.tertiary.f32(i32 46, float %350, float %445, float %457)  ; FMad(a,b,c)
  %459 = fadd fast float %458, %446
  %460 = fmul fast float %448, %348
  %461 = call float @dx.op.tertiary.f32(i32 46, float %349, float %449, float %460)  ; FMad(a,b,c)
  %462 = call float @dx.op.tertiary.f32(i32 46, float %350, float %450, float %461)  ; FMad(a,b,c)
  %463 = fadd fast float %462, %451
  %464 = fcmp fast oge float %455, 1.000000e+00
  %465 = fcmp fast oge float %459, 1.000000e+00
  %466 = or i1 %464, %465
  %467 = fcmp fast olt float %455, 0.000000e+00
  %468 = fcmp fast olt float %459, 0.000000e+00
  %469 = or i1 %467, %468
  %470 = or i1 %466, %469
  br i1 %470, label %830, label %471, !dx.controlflow.hints !47

; <label>:471                                     ; preds = %436
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 0
  %474 = extractvalue %dx.types.CBufRet.f32 %472, 1
  %475 = extractvalue %dx.types.CBufRet.f32 %472, 2
  %476 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.i32 %476, 2
  %478 = uitofp i32 %477 to float
  %479 = extractvalue %dx.types.CBufRet.i32 %476, 3
  %480 = uitofp i32 %479 to float
  %481 = extractvalue %dx.types.CBufRet.f32 %472, 3
  %482 = fmul fast float %481, 2.000000e+00
  %483 = fsub fast float %455, %473
  %484 = fsub fast float %459, %474
  %485 = fmul fast float %482, %483
  %486 = fmul fast float %482, %484
  %487 = fdiv fast float 1.000000e+00, %338
  %488 = fmul fast float %486, %487
  %489 = call float @dx.op.unary.f32(i32 6, float %488)  ; FAbs(value)
  %490 = fmul fast float %475, %350
  %491 = fmul fast float %490, %482
  %492 = call float @dx.op.unary.f32(i32 6, float %491)  ; FAbs(value)
  %493 = call float @dx.op.unary.f32(i32 6, float %485)  ; FAbs(value)
  %494 = call float @dx.op.binary.f32(i32 35, float %492, float %489)  ; FMax(a,b)
  %495 = call float @dx.op.binary.f32(i32 35, float %493, float %494)  ; FMax(a,b)
  %496 = fmul fast float %495, 2.000000e+00
  %497 = call float @dx.op.unary.f32(i32 23, float %496)  ; Log(value)
  %498 = call float @dx.op.binary.f32(i32 35, float %497, float %478)  ; FMax(a,b)
  %499 = call float @dx.op.unary.f32(i32 22, float %498)  ; Frc(value)
  %500 = fadd fast float %499, 0xBFEA666660000000
  %501 = fmul fast float %500, 8.000000e+00
  %502 = call float @dx.op.unary.f32(i32 7, float %501)  ; Saturate(value)
  %503 = call float @dx.op.unary.f32(i32 27, float %498)  ; Round_ni(value)
  %504 = fadd fast float %503, %502
  %505 = call float @dx.op.binary.f32(i32 36, float %504, float %480)  ; FMin(a,b)
  %506 = call float @dx.op.unary.f32(i32 27, float %505)  ; Round_ni(value)
  %507 = fsub fast float -0.000000e+00, %506
  %508 = call float @dx.op.unary.f32(i32 21, float %507)  ; Exp(value)
  %509 = fmul fast float %508, %482
  %510 = fmul fast float %509, %455
  %511 = fmul fast float %509, %459
  %512 = fmul fast float %510, 2.500000e-01
  %513 = fmul fast float %511, 2.500000e-01
  %514 = fadd fast float %512, 5.000000e-01
  %515 = fadd fast float %513, 5.000000e-01
  %516 = fsub fast float %480, %478
  %517 = fptoui float %516 to i32
  %518 = add i32 %517, 320
  %519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %518)  ; CBufferLoadLegacy(handle,regIndex)
  %520 = extractvalue %dx.types.CBufRet.f32 %519, 0
  %521 = extractvalue %dx.types.CBufRet.f32 %519, 1
  %522 = fcmp fast une float %505, %480
  %523 = fsub fast float %455, %520
  %524 = fsub fast float %459, %521
  %525 = call float @dx.op.unary.f32(i32 6, float %523)  ; FAbs(value)
  %526 = call float @dx.op.unary.f32(i32 6, float %524)  ; FAbs(value)
  %527 = fmul fast float %525, %509
  %528 = fmul fast float %526, %509
  %529 = fcmp fast olt float %527, 1.000000e+00
  %530 = fcmp fast olt float %528, 1.000000e+00
  %531 = and i1 %529, %530
  %532 = or i1 %522, %531
  br i1 %532, label %533, label %830, !dx.controlflow.hints !48

; <label>:533                                     ; preds = %471
  %534 = fmul fast float %511, 5.000000e-01
  %535 = fmul fast float %510, 5.000000e-01
  %536 = fadd fast float %534, 5.000000e-01
  %537 = fadd fast float %535, 5.000000e-01
  %538 = sitofp i32 %477 to float
  %539 = fsub fast float %505, %538
  %540 = call float @dx.op.unary.f32(i32 27, float %539)  ; Round_ni(value)
  %541 = call float @dx.op.unary.f32(i32 22, float %505)  ; Frc(value)
  %542 = call float @dx.op.unary.f32(i32 22, float %537)  ; Frc(value)
  %543 = call float @dx.op.unary.f32(i32 22, float %536)  ; Frc(value)
  %544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %542, float %543, float %540, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = extractvalue %dx.types.ResRet.f32 %544, 1
  %547 = extractvalue %dx.types.ResRet.f32 %544, 2
  %548 = extractvalue %dx.types.ResRet.f32 %544, 3
  %549 = fcmp fast ogt float %541, 0.000000e+00
  br i1 %549, label %550, label %571, !dx.controlflow.hints !49

; <label>:550                                     ; preds = %533
  %551 = fadd fast float %540, 1.000000e+00
  %552 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %553 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %552, float %553, float %551, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %555 = extractvalue %dx.types.ResRet.f32 %554, 0
  %556 = extractvalue %dx.types.ResRet.f32 %554, 1
  %557 = extractvalue %dx.types.ResRet.f32 %554, 2
  %558 = extractvalue %dx.types.ResRet.f32 %554, 3
  %559 = fsub fast float %555, %545
  %560 = fsub fast float %556, %546
  %561 = fsub fast float %557, %547
  %562 = fsub fast float %558, %548
  %563 = fmul fast float %559, %541
  %564 = fmul fast float %560, %541
  %565 = fmul fast float %561, %541
  %566 = fmul fast float %562, %541
  %567 = fadd fast float %563, %545
  %568 = fadd fast float %564, %546
  %569 = fadd fast float %565, %547
  %570 = fadd fast float %566, %548
  br label %571

; <label>:571                                     ; preds = %550, %533
  %572 = phi float [ %567, %550 ], [ %545, %533 ]
  %573 = phi float [ %568, %550 ], [ %546, %533 ]
  %574 = phi float [ %569, %550 ], [ %547, %533 ]
  %575 = phi float [ %570, %550 ], [ %548, %533 ]
  %576 = fadd fast float %572, -5.000000e-01
  %577 = fadd fast float %574, -5.000000e-01
  %578 = fmul fast float %576, 0xBFD5555560000000
  %579 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %577, float %578)  ; FMad(a,b,c)
  %580 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %573, float 0.000000e+00)  ; FMad(a,b,c)
  %581 = fadd fast float %580, %575
  %582 = fmul fast float %576, -7.500000e-01
  %583 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %577, float %582)  ; FMad(a,b,c)
  %584 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %573, float 0.000000e+00)  ; FMad(a,b,c)
  %585 = fadd fast float %584, %575
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 0
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 0
  %590 = extractvalue %dx.types.CBufRet.f32 %588, 1
  %591 = extractvalue %dx.types.CBufRet.f32 %588, 2
  %592 = extractvalue %dx.types.CBufRet.f32 %588, 3
  %593 = fsub fast float %589, %579
  %594 = fsub fast float %590, %581
  %595 = fsub fast float %591, %583
  %596 = fsub fast float %592, %585
  %597 = fmul fast float %593, %587
  %598 = fmul fast float %594, %587
  %599 = fmul fast float %595, %587
  %600 = fmul fast float %596, %587
  %601 = fadd fast float %597, %579
  %602 = fadd fast float %598, %581
  %603 = fadd fast float %599, %583
  %604 = fadd fast float %600, %585
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = and i32 %606, 536870911
  %608 = uitofp i32 %607 to float
  %609 = fmul fast float %608, %455
  %610 = fmul fast float %608, %459
  %611 = fptoui float %609 to i32
  %612 = fptoui float %610 to i32
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = and i32 %614, 31
  %616 = lshr i32 %611, %615
  %617 = lshr i32 %612, %615
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = and i32 %619, 31
  %621 = shl i32 1, %620
  %622 = call i32 @dx.op.binary.i32(i32 40, i32 %621, i32 4)  ; UMin(a,b)
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = extractvalue %dx.types.ResRet.i32 %623, 1
  %626 = icmp eq i32 %622, 0
  br i1 %626, label %668, label %627

; <label>:627                                     ; preds = %571
  br label %628

; <label>:628                                     ; preds = %656, %627
  %629 = phi i32 [ %659, %656 ], [ 0, %627 ]
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = lshr i32 %631, 16
  %633 = and i32 %632, 31
  %634 = shl i32 %617, %633
  %635 = add i32 %634, %616
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = and i32 %637, 31
  %639 = shl i32 %635, %638
  %640 = add i32 %639, %629
  %641 = shl i32 %640, 2
  %642 = add i32 %641, 32
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = icmp slt i32 %644, 0
  %646 = getelementptr [12 x float], [12 x float]* %29, i32 0, i32 %629
  %647 = getelementptr [12 x float], [12 x float]* %30, i32 0, i32 %629
  %648 = bitcast float* %646 to i32*
  %649 = bitcast float* %647 to i32*
  br i1 %645, label %650, label %656, !dx.controlflow.hints !50

; <label>:650                                     ; preds = %628
  %651 = and i32 %644, 1073741823
  %652 = add nuw nsw i32 %651, 20
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = extractvalue %dx.types.ResRet.i32 %653, 1
  br label %656

; <label>:656                                     ; preds = %650, %628
  %657 = phi i32 [ %654, %650 ], [ %624, %628 ]
  %658 = phi i32 [ %655, %650 ], [ %625, %628 ]
  store i32 %657, i32* %648, align 4
  store i32 %658, i32* %649, align 4
  %659 = add nuw i32 %629, 1
  %660 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %661 = extractvalue %dx.types.CBufRet.i32 %660, 2
  %662 = icmp eq i32 %661, 0
  %663 = icmp ugt i32 %644, -1073741825
  %664 = and i1 %663, %662
  %665 = icmp ult i32 %659, %622
  %666 = and i1 %664, %665
  br i1 %666, label %628, label %667, !dx.controlflow.hints !51

; <label>:667                                     ; preds = %656
  br label %668

; <label>:668                                     ; preds = %667, %571
  %669 = phi i32 [ 0, %571 ], [ %659, %667 ]
  %670 = extractvalue %dx.types.CBufRet.f32 %433, 2
  %671 = fptoui float %670 to i32
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %724, label %673

; <label>:673                                     ; preds = %668
  br label %674

; <label>:674                                     ; preds = %719, %673
  %675 = phi i32 [ %720, %719 ], [ %669, %673 ]
  %676 = phi i32 [ %721, %719 ], [ 0, %673 ]
  %677 = lshr i32 %676, 2
  %678 = and i32 %676, 3
  %679 = add nuw nsw i32 %677, 83
  %680 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 %679)  ; CBufferLoadLegacy(handle,regIndex)
  %681 = extractvalue %dx.types.CBufRet.i32 %680, 0
  %682 = extractvalue %dx.types.CBufRet.i32 %680, 1
  %683 = extractvalue %dx.types.CBufRet.i32 %680, 2
  %684 = extractvalue %dx.types.CBufRet.i32 %680, 3
  %685 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 0
  store i32 %681, i32* %685, align 4
  %686 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 1
  store i32 %682, i32* %686, align 4
  %687 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 2
  store i32 %683, i32* %687, align 4
  %688 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 3
  store i32 %684, i32* %688, align 4
  %689 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 %678
  %690 = load i32, i32* %689, align 4, !tbaa !52, !noalias !56
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = lshr i32 %692, 16
  %694 = and i32 %693, 31
  %695 = shl i32 %617, %694
  %696 = add i32 %695, %616
  %697 = shl i32 %696, 2
  %698 = add i32 %697, %690
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %719, label %702, !dx.controlflow.hints !66

; <label>:702                                     ; preds = %674
  %703 = icmp slt i32 %700, 0
  %704 = getelementptr [12 x float], [12 x float]* %29, i32 0, i32 %675
  %705 = getelementptr [12 x float], [12 x float]* %30, i32 0, i32 %675
  %706 = bitcast float* %704 to i32*
  %707 = bitcast float* %705 to i32*
  br i1 %703, label %708, label %715, !dx.controlflow.hints !67

; <label>:708                                     ; preds = %702
  %709 = and i32 %700, 1073741823
  %710 = add i32 %690, 20
  %711 = add i32 %710, %709
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = extractvalue %dx.types.ResRet.i32 %712, 1
  br label %715

; <label>:715                                     ; preds = %708, %702
  %716 = phi i32 [ %713, %708 ], [ %624, %702 ]
  %717 = phi i32 [ %714, %708 ], [ %625, %702 ]
  store i32 %716, i32* %706, align 4
  store i32 %717, i32* %707, align 4
  %718 = add i32 %675, 1
  br label %719

; <label>:719                                     ; preds = %715, %674
  %720 = phi i32 [ %675, %674 ], [ %718, %715 ]
  %721 = add nuw i32 %676, 1
  %722 = icmp eq i32 %721, %671
  br i1 %722, label %723, label %674

; <label>:723                                     ; preds = %719
  br label %724

; <label>:724                                     ; preds = %723, %668
  %725 = phi i32 [ %669, %668 ], [ %720, %723 ]
  %726 = icmp eq i32 %725, 1
  %727 = getelementptr [12 x float], [12 x float]* %29, i32 0, i32 0
  %728 = getelementptr [12 x float], [12 x float]* %30, i32 0, i32 0
  br i1 %726, label %729, label %732, !dx.controlflow.hints !68

; <label>:729                                     ; preds = %724
  %730 = load float, float* %727, align 4
  %731 = load float, float* %728, align 4
  br label %759

; <label>:732                                     ; preds = %724
  %733 = load float, float* %727, align 4
  %734 = load float, float* %728, align 4
  %735 = fdiv fast float 1.000000e+00, %734
  %736 = fsub fast float %733, %735
  %737 = icmp ugt i32 %725, 1
  br i1 %737, label %738, label %754

; <label>:738                                     ; preds = %732
  br label %739

; <label>:739                                     ; preds = %739, %738
  %740 = phi float [ %749, %739 ], [ %736, %738 ]
  %741 = phi float [ %750, %739 ], [ %733, %738 ]
  %742 = phi i32 [ %751, %739 ], [ 1, %738 ]
  %743 = getelementptr [12 x float], [12 x float]* %29, i32 0, i32 %742
  %744 = load float, float* %743, align 4
  %745 = getelementptr [12 x float], [12 x float]* %30, i32 0, i32 %742
  %746 = load float, float* %745, align 4
  %747 = fdiv fast float 1.000000e+00, %746
  %748 = fsub fast float %744, %747
  %749 = call float @dx.op.binary.f32(i32 36, float %740, float %748)  ; FMin(a,b)
  %750 = call float @dx.op.binary.f32(i32 35, float %741, float %744)  ; FMax(a,b)
  %751 = add nuw i32 %742, 1
  %752 = icmp eq i32 %751, %725
  br i1 %752, label %753, label %739

; <label>:753                                     ; preds = %739
  br label %754

; <label>:754                                     ; preds = %753, %732
  %755 = phi float [ %736, %732 ], [ %749, %753 ]
  %756 = phi float [ %733, %732 ], [ %750, %753 ]
  %757 = fsub fast float %756, %755
  %758 = fdiv fast float 1.000000e+00, %757
  br label %759

; <label>:759                                     ; preds = %754, %729
  %760 = phi float [ %730, %729 ], [ %756, %754 ]
  %761 = phi float [ %731, %729 ], [ %758, %754 ]
  %762 = fadd fast float %463, %760
  %763 = fmul fast float %762, %761
  %764 = call float @dx.op.unary.f32(i32 7, float %763)  ; Saturate(value)
  %765 = fmul fast float %764, 2.000000e+00
  %766 = fsub fast float 1.000000e+00, %765
  %767 = fmul fast float %601, %601
  %768 = fsub fast float %602, %767
  %769 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %768)  ; FMax(a,b)
  %770 = fdiv fast float 1.000000e+00, %769
  %771 = fmul fast float %602, %601
  %772 = fsub fast float %603, %771
  %773 = fsub fast float %766, %601
  %774 = fmul fast float %766, %766
  %775 = fsub fast float %774, %602
  %776 = fmul fast float %770, %772
  %777 = fmul fast float %776, %773
  %778 = fsub fast float %775, %777
  %779 = fmul fast float %602, %602
  %780 = fsub fast float %604, %779
  %781 = fmul fast float %772, %772
  %782 = fmul fast float %781, %770
  %783 = fsub fast float %780, %782
  %784 = fdiv fast float %778, %783
  %785 = fmul fast float %784, %772
  %786 = fsub fast float %773, %785
  %787 = fmul fast float %786, %770
  %788 = fmul fast float %787, %601
  %789 = fsub fast float 1.000000e+00, %788
  %790 = fmul fast float %784, %602
  %791 = fsub fast float %789, %790
  %792 = fmul fast float %787, %787
  %793 = fmul fast float %784, 4.000000e+00
  %794 = fmul fast float %793, %791
  %795 = fsub fast float %792, %794
  %796 = call float @dx.op.unary.f32(i32 24, float %795)  ; Sqrt(value)
  %797 = fcmp fast oge float %787, 0.000000e+00
  %798 = fsub fast float -0.000000e+00, %796
  %799 = select i1 %797, float %798, float %796
  %800 = fsub fast float %799, %787
  %801 = fdiv fast float %800, %784
  %802 = fdiv fast float %791, %800
  %803 = fmul fast float %801, 5.000000e-01
  %804 = fmul fast float %802, 2.000000e+00
  %805 = select i1 %797, float %803, float %804
  %806 = select i1 %797, float %804, float %803
  %807 = call float @dx.op.binary.f32(i32 35, float %805, float %806)  ; FMax(a,b)
  %808 = call float @dx.op.binary.f32(i32 36, float %805, float %806)  ; FMin(a,b)
  %809 = fcmp fast ogt float %766, %807
  %810 = fsub fast float %766, %808
  %811 = fsub fast float %766, %807
  %812 = fsub fast float %807, %808
  %813 = select i1 %809, float %811, float %812
  %814 = fmul float %810, %813
  %815 = select i1 %809, float %808, float %766
  %816 = fcmp fast ogt float %766, %808
  %817 = fmul fast float %815, %807
  %818 = fadd fast float %815, %807
  %819 = fmul fast float %818, %601
  %820 = fadd fast float %817, %602
  %821 = fsub fast float %820, %819
  %822 = fdiv fast float %821, %814
  %823 = select i1 %816, float %822, float 0.000000e+00
  %824 = fsub fast float 1.000000e+00, %823
  %825 = select i1 %809, float %824, float %823
  %826 = call float @dx.op.unary.f32(i32 7, float %825)  ; Saturate(value)
  %827 = extractvalue %dx.types.CBufRet.f32 %586, 3
  %828 = fmul fast float %827, %826
  %829 = fsub fast float 1.000000e+00, %828
  br label %830

; <label>:830                                     ; preds = %759, %471, %436, %432, %427
  %831 = phi float [ 1.000000e+00, %427 ], [ %829, %759 ], [ 1.000000e+00, %436 ], [ 1.000000e+00, %471 ], [ 1.000000e+00, %432 ]
  %832 = fcmp fast ogt float %428, 0.000000e+00
  br i1 %832, label %833, label %839, !dx.controlflow.hints !69

; <label>:833                                     ; preds = %830
  %834 = fadd fast float %393, %379
  %835 = call float @dx.op.binary.f32(i32 35, float %834, float 0.000000e+00)  ; FMax(a,b)
  %836 = fadd fast float %835, 0x3F10000000000000
  %837 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %20, float %386, float %387, float undef, float undef, i32 0, i32 0, i32 undef, float %836)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %838 = extractvalue %dx.types.ResRet.f32 %837, 0
  br label %839

; <label>:839                                     ; preds = %833, %830
  %840 = phi float [ %838, %833 ], [ 1.000000e+00, %830 ]
  %841 = fsub fast float %840, %831
  %842 = fmul fast float %841, %428
  %843 = fadd fast float %842, %831
  %844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %845 = extractvalue %dx.types.CBufRet.f32 %844, 2
  %846 = fcmp fast ogt float %845, 0.000000e+00
  br i1 %846, label %847, label %883, !dx.controlflow.hints !70

; <label>:847                                     ; preds = %839
  %848 = fcmp fast ugt float %845, 0.000000e+00
  br i1 %848, label %849, label %880, !dx.controlflow.hints !71

; <label>:849                                     ; preds = %847
  %850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.f32 %850, 0
  %852 = extractvalue %dx.types.CBufRet.f32 %850, 1
  %853 = extractvalue %dx.types.CBufRet.f32 %850, 2
  %854 = extractvalue %dx.types.CBufRet.f32 %850, 3
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %857 = extractvalue %dx.types.CBufRet.f32 %855, 1
  %858 = extractvalue %dx.types.CBufRet.f32 %855, 2
  %859 = extractvalue %dx.types.CBufRet.f32 %855, 3
  %860 = extractvalue %dx.types.CBufRet.f32 %844, 0
  %861 = extractvalue %dx.types.CBufRet.f32 %844, 1
  %862 = fadd fast float %326, %348
  %863 = fadd fast float %327, %349
  %864 = fadd fast float %328, %350
  %865 = fmul fast float %862, %851
  %866 = call float @dx.op.tertiary.f32(i32 46, float %852, float %863, float %865)  ; FMad(a,b,c)
  %867 = call float @dx.op.tertiary.f32(i32 46, float %853, float %864, float %866)  ; FMad(a,b,c)
  %868 = fadd fast float %867, %854
  %869 = fmul fast float %862, %856
  %870 = call float @dx.op.tertiary.f32(i32 46, float %857, float %863, float %869)  ; FMad(a,b,c)
  %871 = call float @dx.op.tertiary.f32(i32 46, float %858, float %864, float %870)  ; FMad(a,b,c)
  %872 = fadd fast float %871, %859
  %873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %16, float %868, float %872, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %874 = extractvalue %dx.types.ResRet.f32 %873, 0
  %875 = fmul fast float %874, %861
  %876 = fadd fast float %875, %860
  %877 = call float @dx.op.unary.f32(i32 7, float %876)  ; Saturate(value)
  %878 = fmul fast float %877, %845
  %879 = fsub fast float 1.000000e+00, %878
  br label %880

; <label>:880                                     ; preds = %849, %847
  %881 = phi float [ %879, %849 ], [ 1.000000e+00, %847 ]
  %882 = fmul fast float %881, %843
  br label %883

; <label>:883                                     ; preds = %880, %839, %333
  %884 = phi float [ 1.000000e+00, %333 ], [ %882, %880 ], [ %843, %839 ]
  %885 = call float @dx.op.binary.f32(i32 36, float %884, float %884)  ; FMin(a,b)
  %886 = call float @dx.op.binary.f32(i32 36, float %884, float %885)  ; FMin(a,b)
  %887 = fcmp fast ogt float %886, 0.000000e+00
  br i1 %887, label %888, label %1043, !dx.controlflow.hints !72

; <label>:888                                     ; preds = %883
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 0
  %891 = extractvalue %dx.types.CBufRet.f32 %889, 1
  %892 = extractvalue %dx.types.CBufRet.f32 %889, 2
  %893 = extractvalue %dx.types.CBufRet.f32 %889, 3
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %896 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %897 = extractvalue %dx.types.CBufRet.f32 %894, 2
  %898 = extractvalue %dx.types.CBufRet.f32 %894, 3
  %899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.f32 %899, 0
  %901 = extractvalue %dx.types.CBufRet.f32 %899, 1
  %902 = extractvalue %dx.types.CBufRet.f32 %899, 2
  %903 = extractvalue %dx.types.CBufRet.f32 %899, 3
  %904 = fmul fast float %890, %348
  %905 = call float @dx.op.tertiary.f32(i32 46, float %349, float %891, float %904)  ; FMad(a,b,c)
  %906 = call float @dx.op.tertiary.f32(i32 46, float %350, float %892, float %905)  ; FMad(a,b,c)
  %907 = fadd fast float %906, %893
  %908 = fmul fast float %895, %348
  %909 = call float @dx.op.tertiary.f32(i32 46, float %349, float %896, float %908)  ; FMad(a,b,c)
  %910 = call float @dx.op.tertiary.f32(i32 46, float %350, float %897, float %909)  ; FMad(a,b,c)
  %911 = fadd fast float %910, %898
  %912 = fmul fast float %900, %348
  %913 = call float @dx.op.tertiary.f32(i32 46, float %349, float %901, float %912)  ; FMad(a,b,c)
  %914 = call float @dx.op.tertiary.f32(i32 46, float %350, float %902, float %913)  ; FMad(a,b,c)
  %915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %916 = extractvalue %dx.types.CBufRet.f32 %915, 0
  %917 = extractvalue %dx.types.CBufRet.f32 %915, 1
  %918 = extractvalue %dx.types.CBufRet.f32 %915, 3
  %919 = fmul fast float %918, %907
  %920 = fmul fast float %918, %911
  %921 = fadd fast float %919, %916
  %922 = fadd fast float %920, %917
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 0
  %925 = extractvalue %dx.types.CBufRet.f32 %923, 1
  %926 = fsub fast float %921, %924
  %927 = fsub fast float %922, %925
  %928 = fcmp fast olt float %926, 0.000000e+00
  %929 = fcmp fast olt float %927, 0.000000e+00
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 0
  %932 = extractvalue %dx.types.CBufRet.f32 %930, 1
  %933 = extractvalue %dx.types.CBufRet.f32 %930, 2
  %934 = extractvalue %dx.types.CBufRet.f32 %930, 3
  %935 = select i1 %928, float %931, float %933
  %936 = select i1 %929, float %932, float %934
  %937 = fmul fast float %935, %926
  %938 = fmul fast float %936, %927
  %939 = call float @dx.op.unary.f32(i32 6, float %937)  ; FAbs(value)
  %940 = call float @dx.op.unary.f32(i32 6, float %938)  ; FAbs(value)
  %941 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %942 = call float @dx.op.binary.f32(i32 35, float %939, float %940)  ; FMax(a,b)
  %943 = fsub fast float %941, %942
  %944 = call float @dx.op.unary.f32(i32 7, float %943)  ; Saturate(value)
  %945 = fcmp fast ogt float %944, 0.000000e+00
  br i1 %945, label %946, label %987, !dx.controlflow.hints !73

; <label>:946                                     ; preds = %888
  %947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %19, float %921, float %922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %948 = extractvalue %dx.types.ResRet.f32 %947, 1
  %949 = fcmp fast ogt float %948, 0.000000e+00
  br i1 %949, label %950, label %983, !dx.controlflow.hints !74

; <label>:950                                     ; preds = %946
  %951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %19, float %921, float %922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %952 = extractvalue %dx.types.ResRet.f32 %951, 0
  %953 = extractvalue %dx.types.ResRet.f32 %951, 1
  %954 = extractvalue %dx.types.ResRet.f32 %951, 2
  %955 = extractvalue %dx.types.ResRet.f32 %951, 3
  %956 = fsub fast float 1.000000e+00, %903
  %957 = fsub fast float %956, %914
  %958 = fmul fast float %957, 0x400921FB60000000
  %959 = fadd fast float %958, 0x3FF921FB60000000
  %960 = call float @dx.op.unary.f32(i32 13, float %959)  ; Sin(value)
  %961 = fadd fast float %960, -1.000000e+00
  %962 = fmul fast float %961, 0x3FD45F3060000000
  %963 = fmul fast float %957, 0x401921FB60000000
  %964 = fadd fast float %963, 0x400921FB60000000
  %965 = call float @dx.op.unary.f32(i32 13, float %964)  ; Sin(value)
  %966 = fadd fast float %965, 0x3E7777A5C0000000
  %967 = fmul fast float %966, 0x3FC45F3060000000
  %968 = fmul fast float %957, 0x4022D97C80000000
  %969 = fadd fast float %968, 0x4012D97C80000000
  %970 = call float @dx.op.unary.f32(i32 13, float %969)  ; Sin(value)
  %971 = fadd fast float %970, 1.000000e+00
  %972 = fmul fast float %971, 0x3FBB2995E0000000
  %973 = fmul fast float %957, 0x402921FB60000000
  %974 = fadd fast float %973, 0x401921FB60000000
  %975 = call float @dx.op.unary.f32(i32 13, float %974)  ; Sin(value)
  %976 = fadd fast float %975, 0xBE8777A5C0000000
  %977 = fmul fast float %976, 0x3FB45F3060000000
  %978 = call float @dx.op.dot4.f32(i32 56, float %952, float %953, float %954, float %955, float %962, float %967, float %972, float %977)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %979 = fmul fast float %978, 0xBFF7154760000000
  %980 = call float @dx.op.unary.f32(i32 21, float %979)  ; Exp(value)
  %981 = call float @dx.op.unary.f32(i32 7, float %980)  ; Saturate(value)
  %982 = fadd float %981, -1.000000e+00
  br label %983

; <label>:983                                     ; preds = %950, %946
  %984 = phi float [ %982, %950 ], [ 0.000000e+00, %946 ]
  %985 = fmul fast float %984, %944
  %986 = fadd fast float %985, 1.000000e+00
  br label %987

; <label>:987                                     ; preds = %983, %888
  %988 = phi float [ %986, %983 ], [ 1.000000e+00, %888 ]
  %989 = fmul fast float %988, %884
  %990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %991 = extractvalue %dx.types.CBufRet.f32 %990, 1
  %992 = fsub fast float -0.000000e+00, %169
  %993 = fsub fast float -0.000000e+00, %170
  %994 = fsub fast float -0.000000e+00, %329
  %995 = fsub fast float %994, %328
  %996 = fadd fast float %995, %991
  %997 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %992, float %993, float %996)  ; Dot3(ax,ay,az,bx,by,bz)
  %998 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %336, float %337, float %338)  ; Dot3(ax,ay,az,bx,by,bz)
  %999 = fdiv fast float 1.000000e+00, %998
  %1000 = fmul fast float %999, %997
  %1001 = fmul fast float %336, %1000
  %1002 = fmul fast float %337, %1000
  %1003 = fadd fast float %1001, %169
  %1004 = fadd fast float %1002, %170
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.CBufRet.f32 %1005, 1
  %1008 = fsub fast float %1003, %1006
  %1009 = fsub fast float %1004, %1007
  %1010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %1011 = extractvalue %dx.types.CBufRet.f32 %1010, 2
  %1012 = extractvalue %dx.types.CBufRet.f32 %1010, 3
  %1013 = fmul fast float %1008, %1011
  %1014 = fmul fast float %1009, %1012
  %1015 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.i32 %1015, 3
  %1017 = icmp eq i32 %1016, 0
  br i1 %1017, label %1023, label %1018, !dx.controlflow.hints !75

; <label>:1018                                    ; preds = %987
  %1019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %18, float %1013, float %1014, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1020 = extractvalue %dx.types.ResRet.f32 %1019, 0
  %1021 = extractvalue %dx.types.ResRet.f32 %1019, 1
  %1022 = extractvalue %dx.types.ResRet.f32 %1019, 2
  br label %1028

; <label>:1023                                    ; preds = %987
  %1024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1013, float %1014, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.ResRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.ResRet.f32 %1024, 2
  br label %1028

; <label>:1028                                    ; preds = %1023, %1018
  %1029 = phi float [ %1020, %1018 ], [ %1025, %1023 ]
  %1030 = phi float [ %1021, %1018 ], [ %1026, %1023 ]
  %1031 = phi float [ %1022, %1018 ], [ %1027, %1023 ]
  %1032 = extractvalue %dx.types.CBufRet.f32 %990, 2
  %1033 = fmul fast float %1032, %1029
  %1034 = extractvalue %dx.types.CBufRet.f32 %990, 0
  %1035 = fsub fast float %1000, %1034
  %1036 = fsub fast float %1035, %1033
  %1037 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1036)  ; FMax(a,b)
  %1038 = fmul fast float %1037, %1030
  %1039 = call float @dx.op.binary.f32(i32 36, float %1031, float %1038)  ; FMin(a,b)
  %1040 = fmul fast float %1039, 0xBFF7154760000000
  %1041 = call float @dx.op.unary.f32(i32 21, float %1040)  ; Exp(value)
  %1042 = fmul fast float %989, %1041
  br label %1043

; <label>:1043                                    ; preds = %1028, %883
  %1044 = phi float [ %1042, %1028 ], [ %884, %883 ]
  %1045 = call float @dx.op.binary.f32(i32 36, float %1044, float %1044)  ; FMin(a,b)
  %1046 = call float @dx.op.binary.f32(i32 36, float %1044, float %1045)  ; FMin(a,b)
  %1047 = fcmp fast ogt float %1046, 0.000000e+00
  br i1 %1047, label %1048, label %1072, !dx.controlflow.hints !76

; <label>:1048                                    ; preds = %1043
  %1049 = call float @dx.op.dot3.f32(i32 55, float %336, float %337, float %338, float %174, float %175, float %176)  ; Dot3(ax,ay,az,bx,by,bz)
  %1050 = fcmp fast ogt float %324, 0.000000e+00
  %1051 = select i1 %1050, float 1.000000e+00, float -1.000000e+00
  %1052 = fmul fast float %99, 7.812500e-03
  %1053 = fmul fast float %99, 3.125000e-02
  %1054 = fadd fast float %1053, -3.125000e-02
  %1055 = fmul fast float %1051, 5.000000e-01
  %1056 = fmul fast float %1055, %1049
  %1057 = fmul fast float %1051, %324
  %1058 = fadd fast float %1052, 4.921875e-01
  %1059 = fadd fast float %1058, %1056
  %1060 = fadd fast float %1052, 0x3FB25F3060000000
  %1061 = fadd fast float %1054, %1057
  %1062 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %19, float %1059, float %1060, float %1061, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1063 = extractvalue %dx.types.ResRet.f32 %1062, 0
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 0
  %1066 = fmul fast float %1044, 0x400921FB60000000
  %1067 = fmul fast float %1066, %1063
  %1068 = fmul fast float %1067, %1065
  %1069 = fmul fast float %1068, %340
  %1070 = fmul fast float %1068, %341
  %1071 = fmul fast float %1068, %342
  br label %1072

; <label>:1072                                    ; preds = %1048, %1043, %317
  %1073 = phi float [ %1069, %1048 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %1043 ]
  %1074 = phi float [ %1070, %1048 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %1043 ]
  %1075 = phi float [ %1071, %1048 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %1043 ]
  %1076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %118, float %119, float %120, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.ResRet.f32 %1076, 2
  %1080 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1077)  ; IsNaN(value)
  %1081 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1078)  ; IsNaN(value)
  %1082 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1079)  ; IsNaN(value)
  %1083 = or i1 %1080, %1081
  %1084 = or i1 %1083, %1082
  %1085 = select i1 %1084, float 0.000000e+00, float %1077
  %1086 = select i1 %1084, float 0.000000e+00, float %1078
  %1087 = select i1 %1084, float 0.000000e+00, float %1079
  %1088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1089 = extractvalue %dx.types.CBufRet.f32 %1088, 1
  %1090 = fmul fast float %1085, %1089
  %1091 = fmul fast float %1086, %1089
  %1092 = fmul fast float %1087, %1089
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 3
  %1095 = fmul fast float %1090, %1094
  %1096 = fmul fast float %1091, %1094
  %1097 = fmul fast float %1092, %1094
  %1098 = fadd fast float %1095, %1073
  %1099 = fadd fast float %1096, %1074
  %1100 = fadd fast float %1097, %1075
  br label %1101

; <label>:1101                                    ; preds = %1072, %297
  %1102 = phi float [ %321, %1072 ], [ %313, %297 ]
  %1103 = phi float [ %322, %1072 ], [ %314, %297 ]
  %1104 = phi float [ %323, %1072 ], [ %315, %297 ]
  %1105 = phi float [ %1098, %1072 ], [ 0.000000e+00, %297 ]
  %1106 = phi float [ %1099, %1072 ], [ 0.000000e+00, %297 ]
  %1107 = phi float [ %1100, %1072 ], [ 0.000000e+00, %297 ]
  %1108 = fmul fast float %1102, %312
  %1109 = fmul fast float %1103, %312
  %1110 = fmul fast float %1104, %312
  %1111 = fmul fast float %1108, %1105
  %1112 = fmul fast float %1109, %1106
  %1113 = fmul fast float %1110, %1107
  %1114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1115 = extractvalue %dx.types.CBufRet.f32 %1114, 0
  %1116 = fmul fast float %1111, %1115
  %1117 = fmul fast float %1112, %1115
  %1118 = fmul fast float %1113, %1115
  %1119 = fmul fast float %1117, 5.000000e-01
  %1120 = fadd fast float %1113, %1111
  %1121 = fmul fast float %1115, %1120
  %1122 = fmul fast float %1121, 2.500000e-01
  %1123 = fadd fast float %1122, %1119
  %1124 = call float @dx.op.unary.f32(i32 23, float %1123)  ; Log(value)
  %1125 = fmul fast float %1124, 0x3FE62E4300000000
  %1126 = fmul fast float %1125, %1125
  %1127 = icmp ugt i32 %177, 31
  %1128 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %1129 = add i32 %177, -1
  %1130 = add i32 %177, 7
  %1131 = and i32 %1130, 4
  %1132 = and i32 %1129, %1128
  %1133 = xor i32 %1132, %1131
  %1134 = and i32 %1128, -4
  %1135 = shl i32 %1128, 1
  %1136 = and i32 %1135, 6
  %1137 = lshr i32 177, %1136
  %1138 = and i32 %1137, 3
  %1139 = or i32 %1138, %1134
  br i1 %1127, label %1140, label %1156, !dx.controlflow.hints !77

; <label>:1140                                    ; preds = %1101
  %1141 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1125, i32 %1133)  ; WaveReadLaneAt(value,lane)
  %1142 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1126, i32 %1133)  ; WaveReadLaneAt(value,lane)
  %1143 = fadd fast float %1141, %1125
  %1144 = fadd fast float %1142, %1126
  %1145 = add i32 %177, 31
  %1146 = and i32 %1145, 16
  %1147 = xor i32 %1132, %1146
  %1148 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1143, i32 %1147)  ; WaveReadLaneAt(value,lane)
  %1149 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1144, i32 %1147)  ; WaveReadLaneAt(value,lane)
  %1150 = fadd fast float %1148, %1143
  %1151 = fadd fast float %1149, %1144
  %1152 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1150, i32 %1139)  ; WaveReadLaneAt(value,lane)
  %1153 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1151, i32 %1139)  ; WaveReadLaneAt(value,lane)
  %1154 = fadd fast float %1152, %1150
  %1155 = fadd fast float %1153, %1151
  br label %1192

; <label>:1156                                    ; preds = %1101
  %1157 = udiv i32 %28, %177
  %1158 = shl i32 %1157, 2
  %1159 = lshr i32 %1128, 1
  %1160 = and i32 %1159, 1
  %1161 = or i32 %1158, %1160
  %1162 = lshr i32 %1128, 2
  %1163 = and i32 %1162, 2
  %1164 = or i32 %1161, %1163
  %1165 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1125, i32 %1133)  ; WaveReadLaneAt(value,lane)
  %1166 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1126, i32 %1133)  ; WaveReadLaneAt(value,lane)
  %1167 = fadd fast float %1165, %1125
  %1168 = fadd fast float %1166, %1126
  %1169 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1167, i32 %1139)  ; WaveReadLaneAt(value,lane)
  %1170 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1168, i32 %1139)  ; WaveReadLaneAt(value,lane)
  %1171 = fadd fast float %1169, %1167
  %1172 = fadd fast float %1170, %1168
  %1173 = mul i32 %1164, 2
  %1174 = add i32 0, %1173
  %1175 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1174
  store float %1171, float addrspace(3)* %1175, align 4
  %1176 = mul i32 %1164, 2
  %1177 = add i32 1, %1176
  %1178 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1177
  store float %1172, float addrspace(3)* %1178, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1179 = load float, float addrspace(3)* %1175, align 4
  %1180 = load float, float addrspace(3)* %1178, align 4
  %1181 = xor i32 %1164, 4
  %1182 = mul i32 %1181, 2
  %1183 = add i32 0, %1182
  %1184 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1183
  %1185 = load float, float addrspace(3)* %1184, align 4
  %1186 = mul i32 %1181, 2
  %1187 = add i32 1, %1186
  %1188 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1187
  %1189 = load float, float addrspace(3)* %1188, align 4
  %1190 = fadd fast float %1185, %1179
  %1191 = fadd fast float %1189, %1180
  br label %1192

; <label>:1192                                    ; preds = %1156, %1140
  %1193 = phi float [ %1154, %1140 ], [ %1190, %1156 ]
  %1194 = phi float [ %1155, %1140 ], [ %1191, %1156 ]
  %1195 = fmul fast float %1193, 1.250000e-01
  %1196 = and i32 %50, 1
  %1197 = and i32 %1196, %49
  %1198 = and i32 %1197, %51
  %1199 = icmp ne i32 %1198, 0
  %1200 = and i1 %1199, %61
  br i1 %1200, label %1201, label %1206, !dx.controlflow.hints !37

; <label>:1201                                    ; preds = %1192
  %1202 = fmul fast float %1194, 1.250000e-01
  %1203 = lshr i32 %49, 1
  %1204 = lshr i32 %50, 1
  %1205 = lshr i32 %51, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1203, i32 %1204, i32 %1205, float %1195, float %1202, float %1195, float %1195, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1206

; <label>:1206                                    ; preds = %1201, %1192
  br i1 %60, label %1241, label %1207, !dx.controlflow.hints !38

; <label>:1207                                    ; preds = %1206
  %1208 = fadd fast float %99, 0x3FE3C6EF40000000
  %1209 = call float @dx.op.unary.f32(i32 22, float %1208)  ; Frc(value)
  %1210 = call float @dx.op.unary.f32(i32 23, float %1116)  ; Log(value)
  %1211 = fadd fast float %1210, -7.000000e+00
  %1212 = call float @dx.op.unary.f32(i32 21, float %1211)  ; Exp(value)
  %1213 = fmul fast float %1209, 2.000000e+00
  %1214 = fadd fast float %1213, -1.000000e+00
  %1215 = fmul fast float %1212, %1214
  %1216 = fcmp fast ogt float %1116, 0.000000e+00
  %1217 = select i1 %1216, float %1215, float 0.000000e+00
  %1218 = fadd fast float %1217, %1116
  %1219 = fadd fast float %99, 0x3FF3C6EF40000000
  %1220 = call float @dx.op.unary.f32(i32 22, float %1219)  ; Frc(value)
  %1221 = call float @dx.op.unary.f32(i32 23, float %1117)  ; Log(value)
  %1222 = fadd fast float %1221, -7.000000e+00
  %1223 = call float @dx.op.unary.f32(i32 21, float %1222)  ; Exp(value)
  %1224 = fmul fast float %1220, 2.000000e+00
  %1225 = fadd fast float %1224, -1.000000e+00
  %1226 = fmul fast float %1223, %1225
  %1227 = fcmp fast ogt float %1117, 0.000000e+00
  %1228 = select i1 %1227, float %1226, float 0.000000e+00
  %1229 = fadd fast float %1228, %1117
  %1230 = fadd fast float %99, 0x3FFDAA66E0000000
  %1231 = call float @dx.op.unary.f32(i32 22, float %1230)  ; Frc(value)
  %1232 = call float @dx.op.unary.f32(i32 23, float %1118)  ; Log(value)
  %1233 = fadd fast float %1232, -6.000000e+00
  %1234 = call float @dx.op.unary.f32(i32 21, float %1233)  ; Exp(value)
  %1235 = fmul fast float %1231, 2.000000e+00
  %1236 = fadd fast float %1235, -1.000000e+00
  %1237 = fmul fast float %1234, %1236
  %1238 = fcmp fast ogt float %1118, 0.000000e+00
  %1239 = select i1 %1238, float %1237, float 0.000000e+00
  %1240 = fadd fast float %1239, %1118
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %49, i32 %50, i32 %51, float %1218, float %1229, float %1240, float %1218, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1241

; <label>:1241                                    ; preds = %1207, %1206
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 0
  %1244 = fmul fast float %1243, %312
  %1245 = fmul fast float %1244, 5.000000e-01
  %1246 = fadd fast float %305, %305
  %1247 = fmul fast float %311, %1246
  %1248 = fmul fast float %1243, %1247
  %1249 = fmul fast float %1248, 2.500000e-01
  %1250 = fadd fast float %1249, %1245
  %1251 = fmul fast float %1250, %1250
  %1252 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %1253 = add i32 %177, -1
  %1254 = add i32 %177, 7
  %1255 = and i32 %1254, 4
  %1256 = and i32 %1253, %1252
  %1257 = xor i32 %1256, %1255
  %1258 = and i32 %1252, -4
  %1259 = shl i32 %1252, 1
  %1260 = and i32 %1259, 6
  %1261 = lshr i32 177, %1260
  %1262 = and i32 %1261, 3
  %1263 = or i32 %1262, %1258
  br i1 %1127, label %1264, label %1280, !dx.controlflow.hints !77

; <label>:1264                                    ; preds = %1241
  %1265 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1250, i32 %1257)  ; WaveReadLaneAt(value,lane)
  %1266 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1251, i32 %1257)  ; WaveReadLaneAt(value,lane)
  %1267 = fadd fast float %1265, %1250
  %1268 = fadd fast float %1266, %1251
  %1269 = add i32 %177, 31
  %1270 = and i32 %1269, 16
  %1271 = xor i32 %1256, %1270
  %1272 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1267, i32 %1271)  ; WaveReadLaneAt(value,lane)
  %1273 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1268, i32 %1271)  ; WaveReadLaneAt(value,lane)
  %1274 = fadd fast float %1272, %1267
  %1275 = fadd fast float %1273, %1268
  %1276 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1274, i32 %1263)  ; WaveReadLaneAt(value,lane)
  %1277 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1275, i32 %1263)  ; WaveReadLaneAt(value,lane)
  %1278 = fadd fast float %1276, %1274
  %1279 = fadd fast float %1277, %1275
  br label %1316

; <label>:1280                                    ; preds = %1241
  %1281 = udiv i32 %28, %177
  %1282 = shl i32 %1281, 2
  %1283 = lshr i32 %1252, 1
  %1284 = and i32 %1283, 1
  %1285 = or i32 %1282, %1284
  %1286 = lshr i32 %1252, 2
  %1287 = and i32 %1286, 2
  %1288 = or i32 %1285, %1287
  %1289 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1250, i32 %1257)  ; WaveReadLaneAt(value,lane)
  %1290 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1251, i32 %1257)  ; WaveReadLaneAt(value,lane)
  %1291 = fadd fast float %1289, %1250
  %1292 = fadd fast float %1290, %1251
  %1293 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1291, i32 %1263)  ; WaveReadLaneAt(value,lane)
  %1294 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1292, i32 %1263)  ; WaveReadLaneAt(value,lane)
  %1295 = fadd fast float %1293, %1291
  %1296 = fadd fast float %1294, %1292
  %1297 = mul i32 %1288, 2
  %1298 = add i32 0, %1297
  %1299 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1298
  store float %1295, float addrspace(3)* %1299, align 4
  %1300 = mul i32 %1288, 2
  %1301 = add i32 1, %1300
  %1302 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1301
  store float %1296, float addrspace(3)* %1302, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1303 = load float, float addrspace(3)* %1299, align 4
  %1304 = load float, float addrspace(3)* %1302, align 4
  %1305 = xor i32 %1288, 4
  %1306 = mul i32 %1305, 2
  %1307 = add i32 0, %1306
  %1308 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1307
  %1309 = load float, float addrspace(3)* %1308, align 4
  %1310 = mul i32 %1305, 2
  %1311 = add i32 1, %1310
  %1312 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1311
  %1313 = load float, float addrspace(3)* %1312, align 4
  %1314 = fadd fast float %1309, %1303
  %1315 = fadd fast float %1313, %1304
  br label %1316

; <label>:1316                                    ; preds = %1280, %1264
  %1317 = phi float [ %1278, %1264 ], [ %1314, %1280 ]
  %1318 = phi float [ %1279, %1264 ], [ %1315, %1280 ]
  %1319 = fmul fast float %1317, 1.250000e-01
  br i1 %1200, label %1320, label %1325, !dx.controlflow.hints !39

; <label>:1320                                    ; preds = %1316
  %1321 = fmul fast float %1318, 1.250000e-01
  %1322 = lshr i32 %49, 1
  %1323 = lshr i32 %50, 1
  %1324 = lshr i32 %51, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1322, i32 %1323, i32 %1324, float %1319, float %1321, float %1319, float %1319, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1325

; <label>:1325                                    ; preds = %1320, %1316
  br i1 %60, label %1354, label %1326, !dx.controlflow.hints !40

; <label>:1326                                    ; preds = %1325
  %1327 = fadd fast float %99, 0x3FE3C6EF40000000
  %1328 = call float @dx.op.unary.f32(i32 22, float %1327)  ; Frc(value)
  %1329 = call float @dx.op.unary.f32(i32 23, float %1244)  ; Log(value)
  %1330 = fadd fast float %1329, -7.000000e+00
  %1331 = call float @dx.op.unary.f32(i32 21, float %1330)  ; Exp(value)
  %1332 = fmul fast float %1328, 2.000000e+00
  %1333 = fadd fast float %1332, -1.000000e+00
  %1334 = fmul fast float %1331, %1333
  %1335 = fcmp fast ogt float %1244, 0.000000e+00
  %1336 = select i1 %1335, float %1334, float 0.000000e+00
  %1337 = fadd fast float %1336, %1244
  %1338 = fadd fast float %99, 0x3FF3C6EF40000000
  %1339 = call float @dx.op.unary.f32(i32 22, float %1338)  ; Frc(value)
  %1340 = fmul fast float %1339, 2.000000e+00
  %1341 = fadd fast float %1340, -1.000000e+00
  %1342 = fmul fast float %1331, %1341
  %1343 = select i1 %1335, float %1342, float 0.000000e+00
  %1344 = fadd fast float %1343, %1244
  %1345 = fadd fast float %99, 0x3FFDAA66E0000000
  %1346 = call float @dx.op.unary.f32(i32 22, float %1345)  ; Frc(value)
  %1347 = fadd fast float %1329, -6.000000e+00
  %1348 = call float @dx.op.unary.f32(i32 21, float %1347)  ; Exp(value)
  %1349 = fmul fast float %1346, 2.000000e+00
  %1350 = fadd fast float %1349, -1.000000e+00
  %1351 = fmul fast float %1348, %1350
  %1352 = select i1 %1335, float %1351, float 0.000000e+00
  %1353 = fadd fast float %1352, %1244
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %49, i32 %50, i32 %51, float %1337, float %1344, float %1353, float %1337, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1354

; <label>:1354                                    ; preds = %1326, %1325
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
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

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

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!33}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !19, !24, !27}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture3D<float>"* undef, !"", i32 0, i32 10, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 34, i32 1, i32 7, i32 0, !12}
!12 = !{i32 0, i32 14}
!13 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!14 = !{i32 6, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 23, i32 1, i32 2, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!19 = !{!20, !21, !22, !23}
!20 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!21 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!22 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!23 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!24 = !{!25, !26}
!25 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!26 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!27 = !{!28, !29, !30, !31, !32}
!28 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!29 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!30 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!31 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!32 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!33 = !{void ()* @cs_volumetric_forwardplus_scatter_global, !"cs_volumetric_forwardplus_scatter_global", null, !4, !34}
!34 = !{i32 0, i64 524560, i32 4, !35}
!35 = !{i32 4, i32 4, i32 4}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 1}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = !{!53, !53, i64 0}
!53 = !{!"int", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !{!57, !59, !61, !63, !65}
!57 = distinct !{!57, !58, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!58 = distinct !{!58, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!59 = distinct !{!59, !60, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!60 = distinct !{!60, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!61 = distinct !{!61, !62, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z: %agg.result"}
!62 = distinct !{!62, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z"}
!63 = distinct !{!63, !64, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!64 = distinct !{!64, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!65 = distinct !{!65, !64, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}

