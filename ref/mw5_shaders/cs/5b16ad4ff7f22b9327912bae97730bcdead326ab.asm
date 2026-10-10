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
; shader hash: 43c52feb450bd9e3e5c8549608c6808d
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

@"\01?sharedMomentW@@3PAMA" = external addrspace(3) global [64 x float], align 4
@"\01?sharedMomentX@@3PAMA" = external addrspace(3) global [64 x float], align 4
@"\01?sharedMomentY@@3PAMA" = external addrspace(3) global [64 x float], align 4
@BLUE_NOISE_SAMPLES.v.1dim = internal constant [384 x float] [float 0x3FE18FE160000000, float 0x3FE2F89540000000, float 0x3FE6E2D4C0000000, float 0x3FC15736E0000000, float 0x3FBA5540C0000000, float 0x3FD3170EC0000000, float 0x3FED0D5120000000, float 0x3FE296A0E0000000, float 0x3FC4826EA0000000, float 0x3FE8282660000000, float 0x3FAFC328C0000000, float 0x3FEC521960000000, float 0x3FE37806C0000000, float 0x3FCA6D0000000000, float 0x3FD7082D00000000, float 0x3FC5E13120000000, float 0x3FD2E650A0000000, float 0x3FEBB39F60000000, float 0x3FDC57B600000000, float 0x3FE7C97180000000, float 0x3FCBD95EA0000000, float 0x3FC9988140000000, float 0x3FEAC46E60000000, float 0x3FEAD953E0000000, float 0x3FC843F4E0000000, float 0x3FE1FA7840000000, float 0x3FDEF62560000000, float 0x3FD8DD05A0000000, float 0x3FB5C98040000000, float 0x3FE40B4F00000000, float 0x3FEC4AEE80000000, float 0x3FEB172F40000000, float 0x3FE0065C00000000, float 0x3FEA254D00000000, float 0x3FD8E6DF40000000, float 0x3FE24C96C0000000, float 0x3FDE978BA0000000, float 0x3FBA8F1180000000, float 0x3FB121A6A0000000, float 0x3FE3626000000000, float 0x3FDE58B860000000, float 0x3FB2DED7A0000000, float 0x3FD4F97900000000, float 0x3FD7645460000000, float 0x3FCE571520000000, float 0x3FE7E85200000000, float 0x3FEAFC6460000000, float 0x3FCC666220000000, float 0x3FEC4FF540000000, float 0x3FE7C8B540000000, float 0x3FEBF4AC20000000, float 0x3FD0C66640000000, float 0x3FE2F95320000000, float 0x3F915FFF00000000, float 0x3FE352C600000000, float 0x3FEBC2D0A0000000, float 0x3FE3664520000000, float 0x3FE4504660000000, float 0x3FE1D81AA0000000, float 0x3FD7A97CA0000000, float 0x3F86A53280000000, float 0x3FC1343780000000, float 0x3FE473A1A0000000, float 0x3FEC7EAE80000000, float 0x3FCE83F160000000, float 0x3FC3B66640000000, float 0x3FABB6C6C0000000, float 0x3FEC127C60000000, float 0x3FC3E70E00000000, float 0x3FDC159A60000000, float 0x3FD7AB8720000000, float 0x3FE14710E0000000, float 0x3FDE623A40000000, float 0x3FEB8A45E0000000, float 0x3FEC3C0140000000, float 0x3FD1597DE0000000, float 0x3FEAF0F9A0000000, float 0x3FE1C52360000000, float 0x3FEA622660000000, float 0x3FD760A060000000, float 0x3FEC561B20000000, float 0x3FBAF00320000000, float 0x3FE4643220000000, float 0x3FE72199C0000000, float 0x3FE2E54080000000, float 0x3FD56206C0000000, float 0x3FE8890420000000, float 0x3FEFBE55E0000000, float 0x3FD25DC400000000, float 0x3FD8BF4640000000, float 0x3FE956BCC0000000, float 0x3FE3A5DFE0000000, float 0x3FE5928420000000, float 0x3FE6754AA0000000, float 0x3FBBCDB900000000, float 0x3FE4509C40000000, float 0x3FE14E9AE0000000, float 0x3FEEE61140000000, float 0x3FD3ADB960000000, float 0x3FD3C9D440000000, float 0x3FDF30AF40000000, float 0x3FE885B760000000, float 0x3FEFC30220000000, float 0x3FB1A902E0000000, float 0x3FED532A00000000, float 0x3FBA846540000000, float 0x3FDAC4BEC0000000, float 0x3FB347E280000000, float 0x3FC77620A0000000, float 0x3FBBEF41C0000000, float 0x3FB2C764E0000000, float 0x3FC199A160000000, float 0x3FE44F4480000000, float 0x3FD01FE1E0000000, float 0x3FEC5559A0000000, float 0x3FA2E2FA40000000, float 0x3FD5AAA3C0000000, float 0x3FEDC06380000000, float 0x3FE393B900000000, float 0x3FDA23D800000000, float 0x3FC0BD6E60000000, float 0x3FD6E3CF60000000, float 0x3FE39D7140000000, float 0x3FE07677C0000000, float 0x3FBE721700000000, float 0x3FEA99EBC0000000, float 0x3FC9C1C7E0000000, float 0x3FB4545D20000000, float 0x3FE927BDC0000000, float 0x3FD2AF0880000000, float 0x3FEDDAA620000000, float 0x3FD4C3A220000000, float 0x3FE764E8C0000000, float 0x3FB5474C60000000, float 0x3FBD28BE60000000, float 0x3FDCAE7120000000, float 0x3FE65C7EC0000000, float 0x3FDFAE6DC0000000, float 0x3FEFF2D3E0000000, float 0x3FED44B380000000, float 0x3FE6676480000000, float 0x3FE59F4A80000000, float 0x3FE61D1240000000, float 0x3F80FB0B40000000, float 0x3FD57E1500000000, float 0x3FEC5C93C0000000, float 0x3FA826DF20000000, float 0x3FE939D3A0000000, float 0x3FDB702260000000, float 0x3FD0309DC0000000, float 0x3FC05BD4E0000000, float 0x3F647F5360000000, float 0x3FDFF14000000000, float 0x3FD6B472E0000000, float 0x3FC67E8AE0000000, float 0x3FD7E52D80000000, float 0x3FD9A20420000000, float 0x3FD873C2E0000000, float 0x3FEED079E0000000, float 0x3FD9280DA0000000, float 0x3FE0E70960000000, float 0x3FD7AD5C60000000, float 0x3FADC1E8A0000000, float 0x3FE9BAFE00000000, float 0x3FD6EB3FA0000000, float 0x3FE8B0FE80000000, float 0x3FEC006EA0000000, float 0x3FE7886EC0000000, float 0x3FD4E113A0000000, float 0x3FE5EB06E0000000, float 0x3FE7AE8F00000000, float 0x3FE594A1A0000000, float 0x3FE8BE5C40000000, float 0x3FDBBB7820000000, float 0x3FDC00F660000000, float 0x3FE3BEAF60000000, float 0x3FECE40A40000000, float 0x3FE476BE80000000, float 0x3FCE715760000000, float 0x3F9A66CEA0000000, float 0x3FE1E87120000000, float 0x3FD6EFB1C0000000, float 0x3FCE53C0A0000000, float 0x3FEEC44720000000, float 0x3FDE4FCA40000000, float 0x3FE71C3E60000000, float 0x3FEF2C7C20000000, float 0x3FE166A120000000, float 0x3FEE257F40000000, float 0x3FE9B56F40000000, float 0x3FECD0D600000000, float 0x3FA0FC3EC0000000, float 0x3FEC4C3DC0000000, float 0x3FD150EC60000000, float 0x3FE71F4F60000000, float 0x3FB622B360000000, float 0x3FDC8CDE60000000, float 0x3FD23942A0000000, float 0x3FE1F1FAA0000000, float 0x3FED974C60000000, float 0x3FB46602A0000000, float 0x3FE6E2E620000000, float 0x3FEFD8B280000000, float 0x3FDD9BF5C0000000, float 0x3FA674A1C0000000, float 0x3FE9B56E40000000, float 0x3FEEE67800000000, float 0x3FCDA72D80000000, float 0x3FD469FA40000000, float 0x3FDBC871E0000000, float 0x3FDD20E3E0000000, float 0x3FEF2C1DE0000000, float 0x3FDF7B00E0000000, float 0x3FD6281F00000000, float 0x3FC66B3000000000, float 0x3FEDE19700000000, float 0x3FDB2072A0000000, float 0x3FE0D7DF20000000, float 0x3FC3B1B640000000, float 0x3FDA9DE220000000, float 0x3FD04AFB60000000, float 0x3FE78D6920000000, float 0x3FEF438F00000000, float 0x3FD0DACEC0000000, float 0x3FED6152E0000000, float 0x3FE9CF90A0000000, float 0x3FD0689260000000, float 0x3FDB295100000000, float 0x3FE43A8B20000000, float 0x3FDB335EA0000000, float 0x3FE0E1EA60000000, float 0x3FEBAB00E0000000, float 0x3FDA8B1D60000000, float 0x3FB10CBD20000000, float 0x3FE78F4620000000, float 0x3FE227D0E0000000, float 0x3FEC0E76A0000000, float 0x3FEEF3F8C0000000, float 0x3FE5ADCD40000000, float 0x3FE386C040000000, float 0x3FE2FA86E0000000, float 0x3FCE803BA0000000, float 0x3FE26AEBE0000000, float 0x3FE58556A0000000, float 0x3FEB878100000000, float 0x3FEC77D980000000, float 0x3FC0793440000000, float 0x3FD134B520000000, float 0x3FC9DB4080000000, float 0x3FE83B8480000000, float 0x3FE4ECC2E0000000, float 0x3FCEA8E9A0000000, float 0x3FD60CA840000000, float 0x3FECE35B20000000, float 0x3FE746B7A0000000, float 0x3FCE074860000000, float 0x3FE81DE580000000, float 0x3FC2584AA0000000, float 0x3FD5C82E00000000, float 0x3FE0CECA40000000, float 0x3FE26646C0000000, float 0x3FC0854540000000, float 0x3FE77AA920000000, float 0x3FE0120580000000, float 0x3FEF5EE280000000, float 0x3FB39D7D80000000, float 0x3FC50B8D20000000, float 0x3FDBFF8BC0000000, float 0x3FB7077B80000000, float 0x3FCF722760000000, float 0x3FD274BA20000000, float 0x3FE7EC88A0000000, float 0x3FD8207A00000000, float 0x3FDC2B1A00000000, float 0x3FEAE81F60000000, float 0x3FD84A9200000000, float 0x3FEB3D1480000000, float 0x3F74CDAB80000000, float 0x3FE2903380000000, float 0x3FE3D88D60000000, float 0x3FE5557C00000000, float 0x3FE1B02540000000, float 0x3FCAD53680000000, float 0x3FC97E4340000000, float 0x3FE4A0C720000000, float 0x3FDE649800000000, float 0x3FE8A886A0000000, float 0x3FE77F7260000000, float 0x3FEB51B700000000, float 0x3FC2E2DE00000000, float 0x3F5888D4C0000000, float 0x3FD41984E0000000, float 0x3FD20DB1A0000000, float 0x3FB551A020000000, float 0x3FDB131880000000, float 0x3FEDC9D0C0000000, float 0x3FC7DD4AA0000000, float 0x3FD5F5F120000000, float 0x3F7F518660000000, float 0x3FEBF19260000000, float 0x3F799ADA40000000, float 0x3FDC20E100000000, float 0x3FE0E7DB40000000, float 0x3FC0BB4EE0000000, float 0x3FDECDAEE0000000, float 0x3FEA638F20000000, float 0x3FE70F2040000000, float 0x3FCA53C540000000, float 0x3FCCF95320000000, float 0x3FB324F500000000, float 0x3FE354CC40000000, float 0x3FB2C45460000000, float 0x3FE072AB00000000, float 0x3FE6B81580000000, float 0x3FAD0D1160000000, float 0x3FECCB0BE0000000, float 0x3FEB935140000000, float 0x3FD2A50CE0000000, float 0x3FE5A24D40000000, float 0x3FCB409DA0000000, float 0x3FEAFD5600000000, float 0x3FE2CA5C00000000, float 0x3FEEB0C0A0000000, float 0x3FE8201F60000000, float 0x3FAA420B00000000, float 0x3FD2EB8020000000, float 0x3FE7E3DFA0000000, float 0x3FE7E2A760000000, float 0x3FE8746C80000000, float 0x3FE31217A0000000, float 0x3FEB946480000000, float 0x3FE7B3EDC0000000, float 0x3FB74FEFA0000000, float 0x3FEE07E160000000, float 0x3FC272BDC0000000, float 0x3FDE3B38A0000000, float 0x3FE687E8E0000000, float 0x3FDD8CC5E0000000, float 0x3FE5BD32A0000000, float 0x3FC63803C0000000, float 0x3FED12DE60000000, float 0x3F99B048C0000000, float 0x3FEC98B3E0000000, float 0x3FB9C91A60000000, float 0x3FE8D6E040000000, float 0x3FD39228C0000000, float 0x3FE404F040000000, float 0x3FD00082E0000000, float 0x3FE9099100000000, float 0x3FE1A444E0000000, float 0x3FDDFDC900000000, float 0x3FD649EA00000000, float 0x3FE7F988C0000000, float 0x3FEEB362C0000000, float 0x3FBE7B5FE0000000, float 0x3FC6A55F60000000, float 0x3FE07F6B40000000, float 0x3FE0AFB880000000, float 0x3FDE87A600000000, float 0x3FEBF9DCC0000000, float 0x3FD039B760000000, float 0x3F73CF67C0000000, float 0x3FE33EED40000000, float 0x3FD43683E0000000, float 0x3FD1531020000000, float 0x3FE1D32C60000000, float 0x3FE16249C0000000, float 0x3FBCE097A0000000, float 0x3FDE6FED80000000, float 0x3FE47A3A60000000, float 0x3FE6D84580000000, float 0x3FEA3764C0000000, float 0x3FE9B3C000000000, float 0x3FCD0FDF40000000, float 0x3FE2C6AC00000000, float 0x3FCBCACA20000000, float 0x3FE02FE880000000, float 0x3FC52C7860000000, float 0x3FD5258C40000000, float 0x3FA7811BC0000000, float 0x3FAAEB5B20000000, float 0x3FE369AEC0000000, float 0x3FB38C3220000000, float 0x3FEF14BEE0000000], align 4

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
  %177 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %178 = fmul fast float %177, 0x3FE62E4300000000
  %179 = fmul fast float %178, %178
  %180 = select i1 %60, float 0.000000e+00, float 1.000000e+00
  %181 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %28
  store float %180, float addrspace(3)* %181, align 4, !tbaa !36, !noalias !40
  %182 = fmul fast float %178, %180
  %183 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %28
  store float %182, float addrspace(3)* %183, align 4, !tbaa !36, !noalias !40
  %184 = fmul fast float %179, %180
  %185 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %28
  store float %184, float addrspace(3)* %185, align 4, !tbaa !36, !noalias !40
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %186 = xor i32 %28, 4
  %187 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %186
  %188 = load float, float addrspace(3)* %187, align 4, !tbaa !36, !noalias !40
  %189 = fadd fast float %188, %180
  %190 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %186
  %191 = load float, float addrspace(3)* %190, align 4, !tbaa !36, !noalias !40
  %192 = fadd fast float %191, %178
  %193 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %186
  %194 = load float, float addrspace(3)* %193, align 4, !tbaa !36, !noalias !40
  %195 = fadd fast float %194, %179
  store float %189, float addrspace(3)* %181, align 4, !tbaa !36, !noalias !40
  store float %192, float addrspace(3)* %183, align 4, !tbaa !36, !noalias !40
  store float %195, float addrspace(3)* %185, align 4, !tbaa !36, !noalias !40
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %196 = xor i32 %28, 16
  %197 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %196
  %198 = load float, float addrspace(3)* %197, align 4, !tbaa !36, !noalias !40
  %199 = fadd fast float %198, %189
  %200 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %196
  %201 = load float, float addrspace(3)* %200, align 4, !tbaa !36, !noalias !40
  %202 = fadd fast float %201, %192
  %203 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %196
  %204 = load float, float addrspace(3)* %203, align 4, !tbaa !36, !noalias !40
  %205 = fadd fast float %204, %195
  store float %199, float addrspace(3)* %181, align 4, !tbaa !36, !noalias !40
  store float %202, float addrspace(3)* %183, align 4, !tbaa !36, !noalias !40
  store float %205, float addrspace(3)* %185, align 4, !tbaa !36, !noalias !40
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %206 = xor i32 %28, 1
  %207 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %206
  %208 = load float, float addrspace(3)* %207, align 4, !tbaa !36, !noalias !40
  %209 = fadd fast float %208, %199
  %210 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %206
  %211 = load float, float addrspace(3)* %210, align 4, !tbaa !36, !noalias !40
  %212 = fadd fast float %211, %202
  %213 = fdiv fast float %212, %209
  %214 = and i32 %50, 1
  %215 = and i32 %214, %49
  %216 = and i32 %215, %51
  %217 = icmp ne i32 %216, 0
  %218 = and i1 %217, %61
  br i1 %218, label %219, label %227, !dx.controlflow.hints !44

; <label>:219                                     ; preds = %0
  %220 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %206
  %221 = load float, float addrspace(3)* %220, align 4, !tbaa !36, !noalias !40
  %222 = fadd fast float %221, %205
  %223 = fdiv fast float %222, %209
  %224 = lshr i32 %49, 1
  %225 = lshr i32 %50, 1
  %226 = lshr i32 %51, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %224, i32 %225, i32 %226, float %213, float %223, float %213, float %213, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %227

; <label>:227                                     ; preds = %219, %0
  br i1 %60, label %229, label %228, !dx.controlflow.hints !45

; <label>:228                                     ; preds = %227
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %49, i32 %50, i32 %51, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %229

; <label>:229                                     ; preds = %228, %227
  store float %180, float addrspace(3)* %181, align 4, !tbaa !36, !noalias !40
  store float 0.000000e+00, float addrspace(3)* %183, align 4, !tbaa !36, !noalias !40
  store float 0.000000e+00, float addrspace(3)* %185, align 4, !tbaa !36, !noalias !40
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %230 = load float, float addrspace(3)* %187, align 4, !tbaa !36, !noalias !40
  %231 = fadd fast float %230, %180
  %232 = load float, float addrspace(3)* %190, align 4, !tbaa !36, !noalias !40
  %233 = load float, float addrspace(3)* %193, align 4, !tbaa !36, !noalias !40
  store float %231, float addrspace(3)* %181, align 4, !tbaa !36, !noalias !40
  store float %232, float addrspace(3)* %183, align 4, !tbaa !36, !noalias !40
  store float %233, float addrspace(3)* %185, align 4, !tbaa !36, !noalias !40
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %234 = load float, float addrspace(3)* %197, align 4, !tbaa !36, !noalias !40
  %235 = fadd fast float %234, %231
  %236 = load float, float addrspace(3)* %200, align 4, !tbaa !36, !noalias !40
  %237 = fadd fast float %236, %232
  %238 = load float, float addrspace(3)* %203, align 4, !tbaa !36, !noalias !40
  %239 = fadd fast float %238, %233
  store float %235, float addrspace(3)* %181, align 4, !tbaa !36, !noalias !40
  store float %237, float addrspace(3)* %183, align 4, !tbaa !36, !noalias !40
  store float %239, float addrspace(3)* %185, align 4, !tbaa !36, !noalias !40
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %240 = load float, float addrspace(3)* %207, align 4, !tbaa !36, !noalias !40
  %241 = fadd fast float %240, %235
  %242 = load float, float addrspace(3)* %210, align 4, !tbaa !36, !noalias !40
  %243 = fadd fast float %242, %237
  %244 = fdiv fast float %243, %241
  br i1 %218, label %245, label %253, !dx.controlflow.hints !46

; <label>:245                                     ; preds = %229
  %246 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %206
  %247 = load float, float addrspace(3)* %246, align 4, !tbaa !36, !noalias !40
  %248 = fadd fast float %247, %239
  %249 = fdiv fast float %248, %241
  %250 = lshr i32 %49, 1
  %251 = lshr i32 %50, 1
  %252 = lshr i32 %51, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %250, i32 %251, i32 %252, float %244, float %249, float %244, float %244, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %253

; <label>:253                                     ; preds = %245, %229
  br i1 %60, label %255, label %254, !dx.controlflow.hints !47

; <label>:254                                     ; preds = %253
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %49, i32 %50, i32 %51, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %255

; <label>:255                                     ; preds = %254, %253
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 0
  %258 = extractvalue %dx.types.CBufRet.f32 %256, 1
  %259 = fsub fast float %171, %257
  %260 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %259)  ; FMax(a,b)
  %261 = fmul fast float %260, 0x3FF7154760000000
  %262 = fmul fast float %261, %258
  %263 = call float @dx.op.unary.f32(i32 21, float %262)  ; Exp(value)
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %266 = extractvalue %dx.types.CBufRet.f32 %264, 1
  %267 = extractvalue %dx.types.CBufRet.f32 %264, 2
  %268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.f32 %268, 1
  %270 = fmul fast float %269, %263
  %271 = fmul fast float %270, %265
  %272 = fmul fast float %270, %266
  %273 = fmul fast float %270, %267
  %274 = fcmp fast ogt float %270, 0.000000e+00
  br i1 %274, label %275, label %1059, !dx.controlflow.hints !48

; <label>:275                                     ; preds = %255
  %276 = extractvalue %dx.types.CBufRet.f32 %268, 2
  %277 = fmul fast float %276, %270
  %278 = fdiv fast float 1.000000e+00, %270
  %279 = fmul fast float %278, %271
  %280 = fmul fast float %278, %272
  %281 = fmul fast float %278, %273
  %282 = fmul fast float %277, %278
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 0
  %285 = extractvalue %dx.types.CBufRet.f32 %283, 1
  %286 = extractvalue %dx.types.CBufRet.f32 %283, 2
  %287 = fsub fast float %171, %286
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 3
  %290 = fcmp fast oeq float %289, 0.000000e+00
  br i1 %290, label %1030, label %291, !dx.controlflow.hints !49

; <label>:291                                     ; preds = %275
  %292 = fsub fast float %170, %285
  %293 = fsub fast float %169, %284
  %294 = extractvalue %dx.types.CBufRet.f32 %288, 0
  %295 = extractvalue %dx.types.CBufRet.f32 %288, 1
  %296 = extractvalue %dx.types.CBufRet.f32 %288, 2
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %299 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %300 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 2
  %303 = fmul fast float %302, %294
  %304 = fmul fast float %302, %295
  %305 = fmul fast float %302, %296
  %306 = fsub fast float %293, %303
  %307 = fsub fast float %292, %304
  %308 = fsub fast float %287, %305
  %309 = fcmp fast olt float %289, 0.000000e+00
  br i1 %309, label %841, label %310, !dx.controlflow.hints !50

; <label>:310                                     ; preds = %291
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 0
  %313 = extractvalue %dx.types.CBufRet.f32 %311, 1
  %314 = extractvalue %dx.types.CBufRet.f32 %311, 2
  %315 = extractvalue %dx.types.CBufRet.f32 %311, 3
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 0
  %318 = extractvalue %dx.types.CBufRet.f32 %316, 1
  %319 = extractvalue %dx.types.CBufRet.f32 %316, 2
  %320 = extractvalue %dx.types.CBufRet.f32 %316, 3
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 0
  %323 = extractvalue %dx.types.CBufRet.f32 %321, 1
  %324 = extractvalue %dx.types.CBufRet.f32 %321, 2
  %325 = extractvalue %dx.types.CBufRet.f32 %321, 3
  %326 = fmul fast float %312, %306
  %327 = call float @dx.op.tertiary.f32(i32 46, float %307, float %313, float %326)  ; FMad(a,b,c)
  %328 = call float @dx.op.tertiary.f32(i32 46, float %308, float %314, float %327)  ; FMad(a,b,c)
  %329 = fadd fast float %328, %315
  %330 = fmul fast float %317, %306
  %331 = call float @dx.op.tertiary.f32(i32 46, float %307, float %318, float %330)  ; FMad(a,b,c)
  %332 = call float @dx.op.tertiary.f32(i32 46, float %308, float %319, float %331)  ; FMad(a,b,c)
  %333 = fadd fast float %332, %320
  %334 = fmul fast float %322, %306
  %335 = call float @dx.op.tertiary.f32(i32 46, float %307, float %323, float %334)  ; FMad(a,b,c)
  %336 = call float @dx.op.tertiary.f32(i32 46, float %308, float %324, float %335)  ; FMad(a,b,c)
  %337 = fadd fast float %336, %325
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 0
  %340 = extractvalue %dx.types.CBufRet.f32 %338, 1
  %341 = extractvalue %dx.types.CBufRet.f32 %338, 3
  %342 = fmul fast float %341, %329
  %343 = fmul fast float %341, %333
  %344 = fadd fast float %342, %339
  %345 = fadd fast float %343, %340
  %346 = extractvalue %dx.types.CBufRet.f32 %338, 2
  %347 = fcmp fast olt float %346, 0.000000e+00
  %348 = fsub fast float -0.000000e+00, %346
  %349 = select i1 %347, float %348, float %346
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 1
  %352 = fadd fast float %349, %351
  %353 = fcmp fast ogt float %352, 0.000000e+00
  br i1 %353, label %354, label %385, !dx.controlflow.hints !51

; <label>:354                                     ; preds = %310
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 1
  %357 = fsub fast float %356, %337
  %358 = extractvalue %dx.types.CBufRet.f32 %355, 2
  %359 = fmul fast float %357, %358
  %360 = fsub fast float 1.000000e+00, %359
  %361 = call float @dx.op.unary.f32(i32 7, float %360)  ; Saturate(value)
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 0
  %364 = extractvalue %dx.types.CBufRet.f32 %362, 1
  %365 = fsub fast float %344, %363
  %366 = fsub fast float %345, %364
  %367 = fcmp fast olt float %365, 0.000000e+00
  %368 = fcmp fast olt float %366, 0.000000e+00
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = extractvalue %dx.types.CBufRet.f32 %369, 1
  %372 = extractvalue %dx.types.CBufRet.f32 %369, 2
  %373 = extractvalue %dx.types.CBufRet.f32 %369, 3
  %374 = select i1 %367, float %370, float %372
  %375 = select i1 %368, float %371, float %373
  %376 = fmul fast float %374, %365
  %377 = fmul fast float %375, %366
  %378 = call float @dx.op.unary.f32(i32 6, float %376)  ; FAbs(value)
  %379 = call float @dx.op.unary.f32(i32 6, float %377)  ; FAbs(value)
  %380 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %381 = call float @dx.op.binary.f32(i32 35, float %378, float %379)  ; FMax(a,b)
  %382 = fsub fast float %380, %381
  %383 = call float @dx.op.unary.f32(i32 7, float %382)  ; Saturate(value)
  %384 = fmul fast float %383, %361
  br label %385

; <label>:385                                     ; preds = %354, %310
  %386 = phi float [ %384, %354 ], [ 0.000000e+00, %310 ]
  %387 = call float @dx.op.binary.f32(i32 35, float %386, float 0.000000e+00)  ; FMax(a,b)
  %388 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %387)  ; FMax(a,b)
  %389 = fcmp fast olt float %388, 1.000000e+00
  br i1 %389, label %390, label %788, !dx.controlflow.hints !52

; <label>:390                                     ; preds = %385
  %391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %392 = extractvalue %dx.types.CBufRet.f32 %391, 0
  %393 = fcmp fast une float %392, 0.000000e+00
  br i1 %393, label %394, label %788, !dx.controlflow.hints !53

; <label>:394                                     ; preds = %390
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 0
  %397 = extractvalue %dx.types.CBufRet.f32 %395, 1
  %398 = extractvalue %dx.types.CBufRet.f32 %395, 2
  %399 = extractvalue %dx.types.CBufRet.f32 %395, 3
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %402 = extractvalue %dx.types.CBufRet.f32 %400, 1
  %403 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %404 = extractvalue %dx.types.CBufRet.f32 %400, 3
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 0
  %407 = extractvalue %dx.types.CBufRet.f32 %405, 1
  %408 = extractvalue %dx.types.CBufRet.f32 %405, 2
  %409 = extractvalue %dx.types.CBufRet.f32 %405, 3
  %410 = fmul fast float %396, %306
  %411 = call float @dx.op.tertiary.f32(i32 46, float %307, float %397, float %410)  ; FMad(a,b,c)
  %412 = call float @dx.op.tertiary.f32(i32 46, float %308, float %398, float %411)  ; FMad(a,b,c)
  %413 = fadd fast float %412, %399
  %414 = fmul fast float %401, %306
  %415 = call float @dx.op.tertiary.f32(i32 46, float %307, float %402, float %414)  ; FMad(a,b,c)
  %416 = call float @dx.op.tertiary.f32(i32 46, float %308, float %403, float %415)  ; FMad(a,b,c)
  %417 = fadd fast float %416, %404
  %418 = fmul fast float %406, %306
  %419 = call float @dx.op.tertiary.f32(i32 46, float %307, float %407, float %418)  ; FMad(a,b,c)
  %420 = call float @dx.op.tertiary.f32(i32 46, float %308, float %408, float %419)  ; FMad(a,b,c)
  %421 = fadd fast float %420, %409
  %422 = fcmp fast oge float %413, 1.000000e+00
  %423 = fcmp fast oge float %417, 1.000000e+00
  %424 = or i1 %422, %423
  %425 = fcmp fast olt float %413, 0.000000e+00
  %426 = fcmp fast olt float %417, 0.000000e+00
  %427 = or i1 %425, %426
  %428 = or i1 %424, %427
  br i1 %428, label %788, label %429, !dx.controlflow.hints !54

; <label>:429                                     ; preds = %394
  %430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %431 = extractvalue %dx.types.CBufRet.f32 %430, 0
  %432 = extractvalue %dx.types.CBufRet.f32 %430, 1
  %433 = extractvalue %dx.types.CBufRet.f32 %430, 2
  %434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %435 = extractvalue %dx.types.CBufRet.i32 %434, 2
  %436 = uitofp i32 %435 to float
  %437 = extractvalue %dx.types.CBufRet.i32 %434, 3
  %438 = uitofp i32 %437 to float
  %439 = extractvalue %dx.types.CBufRet.f32 %430, 3
  %440 = fmul fast float %439, 2.000000e+00
  %441 = fsub fast float %413, %431
  %442 = fsub fast float %417, %432
  %443 = fmul fast float %440, %441
  %444 = fmul fast float %440, %442
  %445 = fdiv fast float 1.000000e+00, %296
  %446 = fmul fast float %444, %445
  %447 = call float @dx.op.unary.f32(i32 6, float %446)  ; FAbs(value)
  %448 = fmul fast float %433, %308
  %449 = fmul fast float %448, %440
  %450 = call float @dx.op.unary.f32(i32 6, float %449)  ; FAbs(value)
  %451 = call float @dx.op.unary.f32(i32 6, float %443)  ; FAbs(value)
  %452 = call float @dx.op.binary.f32(i32 35, float %450, float %447)  ; FMax(a,b)
  %453 = call float @dx.op.binary.f32(i32 35, float %451, float %452)  ; FMax(a,b)
  %454 = fmul fast float %453, 2.000000e+00
  %455 = call float @dx.op.unary.f32(i32 23, float %454)  ; Log(value)
  %456 = call float @dx.op.binary.f32(i32 35, float %455, float %436)  ; FMax(a,b)
  %457 = call float @dx.op.unary.f32(i32 22, float %456)  ; Frc(value)
  %458 = fadd fast float %457, 0xBFEA666660000000
  %459 = fmul fast float %458, 8.000000e+00
  %460 = call float @dx.op.unary.f32(i32 7, float %459)  ; Saturate(value)
  %461 = call float @dx.op.unary.f32(i32 27, float %456)  ; Round_ni(value)
  %462 = fadd fast float %461, %460
  %463 = call float @dx.op.binary.f32(i32 36, float %462, float %438)  ; FMin(a,b)
  %464 = call float @dx.op.unary.f32(i32 27, float %463)  ; Round_ni(value)
  %465 = fsub fast float -0.000000e+00, %464
  %466 = call float @dx.op.unary.f32(i32 21, float %465)  ; Exp(value)
  %467 = fmul fast float %466, %440
  %468 = fmul fast float %467, %413
  %469 = fmul fast float %467, %417
  %470 = fmul fast float %468, 2.500000e-01
  %471 = fmul fast float %469, 2.500000e-01
  %472 = fadd fast float %470, 5.000000e-01
  %473 = fadd fast float %471, 5.000000e-01
  %474 = fsub fast float %438, %436
  %475 = fptoui float %474 to i32
  %476 = add i32 %475, 320
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %476)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 0
  %479 = extractvalue %dx.types.CBufRet.f32 %477, 1
  %480 = fcmp fast une float %463, %438
  %481 = fsub fast float %413, %478
  %482 = fsub fast float %417, %479
  %483 = call float @dx.op.unary.f32(i32 6, float %481)  ; FAbs(value)
  %484 = call float @dx.op.unary.f32(i32 6, float %482)  ; FAbs(value)
  %485 = fmul fast float %483, %467
  %486 = fmul fast float %484, %467
  %487 = fcmp fast olt float %485, 1.000000e+00
  %488 = fcmp fast olt float %486, 1.000000e+00
  %489 = and i1 %487, %488
  %490 = or i1 %480, %489
  br i1 %490, label %491, label %788, !dx.controlflow.hints !55

; <label>:491                                     ; preds = %429
  %492 = fmul fast float %469, 5.000000e-01
  %493 = fmul fast float %468, 5.000000e-01
  %494 = fadd fast float %492, 5.000000e-01
  %495 = fadd fast float %493, 5.000000e-01
  %496 = sitofp i32 %435 to float
  %497 = fsub fast float %463, %496
  %498 = call float @dx.op.unary.f32(i32 27, float %497)  ; Round_ni(value)
  %499 = call float @dx.op.unary.f32(i32 22, float %463)  ; Frc(value)
  %500 = call float @dx.op.unary.f32(i32 22, float %495)  ; Frc(value)
  %501 = call float @dx.op.unary.f32(i32 22, float %494)  ; Frc(value)
  %502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %500, float %501, float %498, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = extractvalue %dx.types.ResRet.f32 %502, 1
  %505 = extractvalue %dx.types.ResRet.f32 %502, 2
  %506 = extractvalue %dx.types.ResRet.f32 %502, 3
  %507 = fcmp fast ogt float %499, 0.000000e+00
  br i1 %507, label %508, label %529, !dx.controlflow.hints !56

; <label>:508                                     ; preds = %491
  %509 = fadd fast float %498, 1.000000e+00
  %510 = call float @dx.op.unary.f32(i32 22, float %472)  ; Frc(value)
  %511 = call float @dx.op.unary.f32(i32 22, float %473)  ; Frc(value)
  %512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %510, float %511, float %509, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %513 = extractvalue %dx.types.ResRet.f32 %512, 0
  %514 = extractvalue %dx.types.ResRet.f32 %512, 1
  %515 = extractvalue %dx.types.ResRet.f32 %512, 2
  %516 = extractvalue %dx.types.ResRet.f32 %512, 3
  %517 = fsub fast float %513, %503
  %518 = fsub fast float %514, %504
  %519 = fsub fast float %515, %505
  %520 = fsub fast float %516, %506
  %521 = fmul fast float %517, %499
  %522 = fmul fast float %518, %499
  %523 = fmul fast float %519, %499
  %524 = fmul fast float %520, %499
  %525 = fadd fast float %521, %503
  %526 = fadd fast float %522, %504
  %527 = fadd fast float %523, %505
  %528 = fadd fast float %524, %506
  br label %529

; <label>:529                                     ; preds = %508, %491
  %530 = phi float [ %525, %508 ], [ %503, %491 ]
  %531 = phi float [ %526, %508 ], [ %504, %491 ]
  %532 = phi float [ %527, %508 ], [ %505, %491 ]
  %533 = phi float [ %528, %508 ], [ %506, %491 ]
  %534 = fadd fast float %530, -5.000000e-01
  %535 = fadd fast float %532, -5.000000e-01
  %536 = fmul fast float %534, 0xBFD5555560000000
  %537 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %535, float %536)  ; FMad(a,b,c)
  %538 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %531, float 0.000000e+00)  ; FMad(a,b,c)
  %539 = fadd fast float %538, %533
  %540 = fmul fast float %534, -7.500000e-01
  %541 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %535, float %540)  ; FMad(a,b,c)
  %542 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %531, float 0.000000e+00)  ; FMad(a,b,c)
  %543 = fadd fast float %542, %533
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 0
  %546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.f32 %546, 0
  %548 = extractvalue %dx.types.CBufRet.f32 %546, 1
  %549 = extractvalue %dx.types.CBufRet.f32 %546, 2
  %550 = extractvalue %dx.types.CBufRet.f32 %546, 3
  %551 = fsub fast float %547, %537
  %552 = fsub fast float %548, %539
  %553 = fsub fast float %549, %541
  %554 = fsub fast float %550, %543
  %555 = fmul fast float %551, %545
  %556 = fmul fast float %552, %545
  %557 = fmul fast float %553, %545
  %558 = fmul fast float %554, %545
  %559 = fadd fast float %555, %537
  %560 = fadd fast float %556, %539
  %561 = fadd fast float %557, %541
  %562 = fadd fast float %558, %543
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = and i32 %564, 536870911
  %566 = uitofp i32 %565 to float
  %567 = fmul fast float %566, %413
  %568 = fmul fast float %566, %417
  %569 = fptoui float %567 to i32
  %570 = fptoui float %568 to i32
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = and i32 %572, 31
  %574 = lshr i32 %569, %573
  %575 = lshr i32 %570, %573
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = and i32 %577, 31
  %579 = shl i32 1, %578
  %580 = call i32 @dx.op.binary.i32(i32 40, i32 %579, i32 4)  ; UMin(a,b)
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = extractvalue %dx.types.ResRet.i32 %581, 1
  %584 = icmp eq i32 %580, 0
  br i1 %584, label %626, label %585

; <label>:585                                     ; preds = %529
  br label %586

; <label>:586                                     ; preds = %614, %585
  %587 = phi i32 [ %617, %614 ], [ 0, %585 ]
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = lshr i32 %589, 16
  %591 = and i32 %590, 31
  %592 = shl i32 %575, %591
  %593 = add i32 %592, %574
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = and i32 %595, 31
  %597 = shl i32 %593, %596
  %598 = add i32 %597, %587
  %599 = shl i32 %598, 2
  %600 = add i32 %599, 32
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = icmp slt i32 %602, 0
  %604 = getelementptr [12 x float], [12 x float]* %29, i32 0, i32 %587
  %605 = getelementptr [12 x float], [12 x float]* %30, i32 0, i32 %587
  %606 = bitcast float* %604 to i32*
  %607 = bitcast float* %605 to i32*
  br i1 %603, label %608, label %614, !dx.controlflow.hints !57

; <label>:608                                     ; preds = %586
  %609 = and i32 %602, 1073741823
  %610 = add nuw nsw i32 %609, 20
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = extractvalue %dx.types.ResRet.i32 %611, 1
  br label %614

; <label>:614                                     ; preds = %608, %586
  %615 = phi i32 [ %612, %608 ], [ %582, %586 ]
  %616 = phi i32 [ %613, %608 ], [ %583, %586 ]
  store i32 %615, i32* %606, align 4
  store i32 %616, i32* %607, align 4
  %617 = add nuw i32 %587, 1
  %618 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.i32 %618, 2
  %620 = icmp eq i32 %619, 0
  %621 = icmp ugt i32 %602, -1073741825
  %622 = and i1 %621, %620
  %623 = icmp ult i32 %617, %580
  %624 = and i1 %622, %623
  br i1 %624, label %586, label %625, !dx.controlflow.hints !58

; <label>:625                                     ; preds = %614
  br label %626

; <label>:626                                     ; preds = %625, %529
  %627 = phi i32 [ 0, %529 ], [ %617, %625 ]
  %628 = extractvalue %dx.types.CBufRet.f32 %391, 2
  %629 = fptoui float %628 to i32
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %682, label %631

; <label>:631                                     ; preds = %626
  br label %632

; <label>:632                                     ; preds = %677, %631
  %633 = phi i32 [ %678, %677 ], [ %627, %631 ]
  %634 = phi i32 [ %679, %677 ], [ 0, %631 ]
  %635 = lshr i32 %634, 2
  %636 = and i32 %634, 3
  %637 = add nuw nsw i32 %635, 83
  %638 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 %637)  ; CBufferLoadLegacy(handle,regIndex)
  %639 = extractvalue %dx.types.CBufRet.i32 %638, 0
  %640 = extractvalue %dx.types.CBufRet.i32 %638, 1
  %641 = extractvalue %dx.types.CBufRet.i32 %638, 2
  %642 = extractvalue %dx.types.CBufRet.i32 %638, 3
  %643 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 0
  store i32 %639, i32* %643, align 4
  %644 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 1
  store i32 %640, i32* %644, align 4
  %645 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 2
  store i32 %641, i32* %645, align 4
  %646 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 3
  store i32 %642, i32* %646, align 4
  %647 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 %636
  %648 = load i32, i32* %647, align 4, !tbaa !59, !noalias !61
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = lshr i32 %650, 16
  %652 = and i32 %651, 31
  %653 = shl i32 %575, %652
  %654 = add i32 %653, %574
  %655 = shl i32 %654, 2
  %656 = add i32 %655, %648
  %657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %656, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.i32 %657, 0
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %677, label %660, !dx.controlflow.hints !68

; <label>:660                                     ; preds = %632
  %661 = icmp slt i32 %658, 0
  %662 = getelementptr [12 x float], [12 x float]* %29, i32 0, i32 %633
  %663 = getelementptr [12 x float], [12 x float]* %30, i32 0, i32 %633
  %664 = bitcast float* %662 to i32*
  %665 = bitcast float* %663 to i32*
  br i1 %661, label %666, label %673, !dx.controlflow.hints !69

; <label>:666                                     ; preds = %660
  %667 = and i32 %658, 1073741823
  %668 = add i32 %648, 20
  %669 = add i32 %668, %667
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %669, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = extractvalue %dx.types.ResRet.i32 %670, 1
  br label %673

; <label>:673                                     ; preds = %666, %660
  %674 = phi i32 [ %671, %666 ], [ %582, %660 ]
  %675 = phi i32 [ %672, %666 ], [ %583, %660 ]
  store i32 %674, i32* %664, align 4
  store i32 %675, i32* %665, align 4
  %676 = add i32 %633, 1
  br label %677

; <label>:677                                     ; preds = %673, %632
  %678 = phi i32 [ %633, %632 ], [ %676, %673 ]
  %679 = add nuw i32 %634, 1
  %680 = icmp eq i32 %679, %629
  br i1 %680, label %681, label %632

; <label>:681                                     ; preds = %677
  br label %682

; <label>:682                                     ; preds = %681, %626
  %683 = phi i32 [ %627, %626 ], [ %678, %681 ]
  %684 = icmp eq i32 %683, 1
  %685 = getelementptr [12 x float], [12 x float]* %29, i32 0, i32 0
  %686 = getelementptr [12 x float], [12 x float]* %30, i32 0, i32 0
  br i1 %684, label %687, label %690, !dx.controlflow.hints !70

; <label>:687                                     ; preds = %682
  %688 = load float, float* %685, align 4
  %689 = load float, float* %686, align 4
  br label %717

; <label>:690                                     ; preds = %682
  %691 = load float, float* %685, align 4
  %692 = load float, float* %686, align 4
  %693 = fdiv fast float 1.000000e+00, %692
  %694 = fsub fast float %691, %693
  %695 = icmp ugt i32 %683, 1
  br i1 %695, label %696, label %712

; <label>:696                                     ; preds = %690
  br label %697

; <label>:697                                     ; preds = %697, %696
  %698 = phi float [ %707, %697 ], [ %694, %696 ]
  %699 = phi float [ %708, %697 ], [ %691, %696 ]
  %700 = phi i32 [ %709, %697 ], [ 1, %696 ]
  %701 = getelementptr [12 x float], [12 x float]* %29, i32 0, i32 %700
  %702 = load float, float* %701, align 4
  %703 = getelementptr [12 x float], [12 x float]* %30, i32 0, i32 %700
  %704 = load float, float* %703, align 4
  %705 = fdiv fast float 1.000000e+00, %704
  %706 = fsub fast float %702, %705
  %707 = call float @dx.op.binary.f32(i32 36, float %698, float %706)  ; FMin(a,b)
  %708 = call float @dx.op.binary.f32(i32 35, float %699, float %702)  ; FMax(a,b)
  %709 = add nuw i32 %700, 1
  %710 = icmp eq i32 %709, %683
  br i1 %710, label %711, label %697

; <label>:711                                     ; preds = %697
  br label %712

; <label>:712                                     ; preds = %711, %690
  %713 = phi float [ %694, %690 ], [ %707, %711 ]
  %714 = phi float [ %691, %690 ], [ %708, %711 ]
  %715 = fsub fast float %714, %713
  %716 = fdiv fast float 1.000000e+00, %715
  br label %717

; <label>:717                                     ; preds = %712, %687
  %718 = phi float [ %688, %687 ], [ %714, %712 ]
  %719 = phi float [ %689, %687 ], [ %716, %712 ]
  %720 = fadd fast float %421, %718
  %721 = fmul fast float %720, %719
  %722 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %723 = fmul fast float %722, 2.000000e+00
  %724 = fsub fast float 1.000000e+00, %723
  %725 = fmul fast float %559, %559
  %726 = fsub fast float %560, %725
  %727 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %726)  ; FMax(a,b)
  %728 = fdiv fast float 1.000000e+00, %727
  %729 = fmul fast float %560, %559
  %730 = fsub fast float %561, %729
  %731 = fsub fast float %724, %559
  %732 = fmul fast float %724, %724
  %733 = fsub fast float %732, %560
  %734 = fmul fast float %728, %730
  %735 = fmul fast float %734, %731
  %736 = fsub fast float %733, %735
  %737 = fmul fast float %560, %560
  %738 = fsub fast float %562, %737
  %739 = fmul fast float %730, %730
  %740 = fmul fast float %739, %728
  %741 = fsub fast float %738, %740
  %742 = fdiv fast float %736, %741
  %743 = fmul fast float %742, %730
  %744 = fsub fast float %731, %743
  %745 = fmul fast float %744, %728
  %746 = fmul fast float %745, %559
  %747 = fsub fast float 1.000000e+00, %746
  %748 = fmul fast float %742, %560
  %749 = fsub fast float %747, %748
  %750 = fmul fast float %745, %745
  %751 = fmul fast float %742, 4.000000e+00
  %752 = fmul fast float %751, %749
  %753 = fsub fast float %750, %752
  %754 = call float @dx.op.unary.f32(i32 24, float %753)  ; Sqrt(value)
  %755 = fcmp fast oge float %745, 0.000000e+00
  %756 = fsub fast float -0.000000e+00, %754
  %757 = select i1 %755, float %756, float %754
  %758 = fsub fast float %757, %745
  %759 = fdiv fast float %758, %742
  %760 = fdiv fast float %749, %758
  %761 = fmul fast float %759, 5.000000e-01
  %762 = fmul fast float %760, 2.000000e+00
  %763 = select i1 %755, float %761, float %762
  %764 = select i1 %755, float %762, float %761
  %765 = call float @dx.op.binary.f32(i32 35, float %763, float %764)  ; FMax(a,b)
  %766 = call float @dx.op.binary.f32(i32 36, float %763, float %764)  ; FMin(a,b)
  %767 = fcmp fast ogt float %724, %765
  %768 = fsub fast float %724, %766
  %769 = fsub fast float %724, %765
  %770 = fsub fast float %765, %766
  %771 = select i1 %767, float %769, float %770
  %772 = fmul float %768, %771
  %773 = select i1 %767, float %766, float %724
  %774 = fcmp fast ogt float %724, %766
  %775 = fmul fast float %773, %765
  %776 = fadd fast float %773, %765
  %777 = fmul fast float %776, %559
  %778 = fadd fast float %775, %560
  %779 = fsub fast float %778, %777
  %780 = fdiv fast float %779, %772
  %781 = select i1 %774, float %780, float 0.000000e+00
  %782 = fsub fast float 1.000000e+00, %781
  %783 = select i1 %767, float %782, float %781
  %784 = call float @dx.op.unary.f32(i32 7, float %783)  ; Saturate(value)
  %785 = extractvalue %dx.types.CBufRet.f32 %544, 3
  %786 = fmul fast float %785, %784
  %787 = fsub fast float 1.000000e+00, %786
  br label %788

; <label>:788                                     ; preds = %717, %429, %394, %390, %385
  %789 = phi float [ 1.000000e+00, %385 ], [ %787, %717 ], [ 1.000000e+00, %394 ], [ 1.000000e+00, %429 ], [ 1.000000e+00, %390 ]
  %790 = fcmp fast ogt float %386, 0.000000e+00
  br i1 %790, label %791, label %797, !dx.controlflow.hints !71

; <label>:791                                     ; preds = %788
  %792 = fadd fast float %351, %337
  %793 = call float @dx.op.binary.f32(i32 35, float %792, float 0.000000e+00)  ; FMax(a,b)
  %794 = fadd fast float %793, 0x3F10000000000000
  %795 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %20, float %344, float %345, float undef, float undef, i32 0, i32 0, i32 undef, float %794)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  br label %797

; <label>:797                                     ; preds = %791, %788
  %798 = phi float [ %796, %791 ], [ 1.000000e+00, %788 ]
  %799 = fsub fast float %798, %789
  %800 = fmul fast float %799, %386
  %801 = fadd fast float %800, %789
  %802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.f32 %802, 2
  %804 = fcmp fast ogt float %803, 0.000000e+00
  br i1 %804, label %805, label %841, !dx.controlflow.hints !72

; <label>:805                                     ; preds = %797
  %806 = fcmp fast ugt float %803, 0.000000e+00
  br i1 %806, label %807, label %838, !dx.controlflow.hints !73

; <label>:807                                     ; preds = %805
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 0
  %810 = extractvalue %dx.types.CBufRet.f32 %808, 1
  %811 = extractvalue %dx.types.CBufRet.f32 %808, 2
  %812 = extractvalue %dx.types.CBufRet.f32 %808, 3
  %813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %814 = extractvalue %dx.types.CBufRet.f32 %813, 0
  %815 = extractvalue %dx.types.CBufRet.f32 %813, 1
  %816 = extractvalue %dx.types.CBufRet.f32 %813, 2
  %817 = extractvalue %dx.types.CBufRet.f32 %813, 3
  %818 = extractvalue %dx.types.CBufRet.f32 %802, 0
  %819 = extractvalue %dx.types.CBufRet.f32 %802, 1
  %820 = fadd fast float %284, %306
  %821 = fadd fast float %285, %307
  %822 = fadd fast float %286, %308
  %823 = fmul fast float %820, %809
  %824 = call float @dx.op.tertiary.f32(i32 46, float %810, float %821, float %823)  ; FMad(a,b,c)
  %825 = call float @dx.op.tertiary.f32(i32 46, float %811, float %822, float %824)  ; FMad(a,b,c)
  %826 = fadd fast float %825, %812
  %827 = fmul fast float %820, %814
  %828 = call float @dx.op.tertiary.f32(i32 46, float %815, float %821, float %827)  ; FMad(a,b,c)
  %829 = call float @dx.op.tertiary.f32(i32 46, float %816, float %822, float %828)  ; FMad(a,b,c)
  %830 = fadd fast float %829, %817
  %831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %16, float %826, float %830, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 0
  %833 = fmul fast float %832, %819
  %834 = fadd fast float %833, %818
  %835 = call float @dx.op.unary.f32(i32 7, float %834)  ; Saturate(value)
  %836 = fmul fast float %835, %803
  %837 = fsub fast float 1.000000e+00, %836
  br label %838

; <label>:838                                     ; preds = %807, %805
  %839 = phi float [ %837, %807 ], [ 1.000000e+00, %805 ]
  %840 = fmul fast float %839, %801
  br label %841

; <label>:841                                     ; preds = %838, %797, %291
  %842 = phi float [ 1.000000e+00, %291 ], [ %840, %838 ], [ %801, %797 ]
  %843 = call float @dx.op.binary.f32(i32 36, float %842, float %842)  ; FMin(a,b)
  %844 = call float @dx.op.binary.f32(i32 36, float %842, float %843)  ; FMin(a,b)
  %845 = fcmp fast ogt float %844, 0.000000e+00
  br i1 %845, label %846, label %1001, !dx.controlflow.hints !74

; <label>:846                                     ; preds = %841
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 0
  %849 = extractvalue %dx.types.CBufRet.f32 %847, 1
  %850 = extractvalue %dx.types.CBufRet.f32 %847, 2
  %851 = extractvalue %dx.types.CBufRet.f32 %847, 3
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 0
  %854 = extractvalue %dx.types.CBufRet.f32 %852, 1
  %855 = extractvalue %dx.types.CBufRet.f32 %852, 2
  %856 = extractvalue %dx.types.CBufRet.f32 %852, 3
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 0
  %859 = extractvalue %dx.types.CBufRet.f32 %857, 1
  %860 = extractvalue %dx.types.CBufRet.f32 %857, 2
  %861 = extractvalue %dx.types.CBufRet.f32 %857, 3
  %862 = fmul fast float %848, %306
  %863 = call float @dx.op.tertiary.f32(i32 46, float %307, float %849, float %862)  ; FMad(a,b,c)
  %864 = call float @dx.op.tertiary.f32(i32 46, float %308, float %850, float %863)  ; FMad(a,b,c)
  %865 = fadd fast float %864, %851
  %866 = fmul fast float %853, %306
  %867 = call float @dx.op.tertiary.f32(i32 46, float %307, float %854, float %866)  ; FMad(a,b,c)
  %868 = call float @dx.op.tertiary.f32(i32 46, float %308, float %855, float %867)  ; FMad(a,b,c)
  %869 = fadd fast float %868, %856
  %870 = fmul fast float %858, %306
  %871 = call float @dx.op.tertiary.f32(i32 46, float %307, float %859, float %870)  ; FMad(a,b,c)
  %872 = call float @dx.op.tertiary.f32(i32 46, float %308, float %860, float %871)  ; FMad(a,b,c)
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 0
  %875 = extractvalue %dx.types.CBufRet.f32 %873, 1
  %876 = extractvalue %dx.types.CBufRet.f32 %873, 3
  %877 = fmul fast float %876, %865
  %878 = fmul fast float %876, %869
  %879 = fadd fast float %877, %874
  %880 = fadd fast float %878, %875
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 0
  %883 = extractvalue %dx.types.CBufRet.f32 %881, 1
  %884 = fsub fast float %879, %882
  %885 = fsub fast float %880, %883
  %886 = fcmp fast olt float %884, 0.000000e+00
  %887 = fcmp fast olt float %885, 0.000000e+00
  %888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.f32 %888, 0
  %890 = extractvalue %dx.types.CBufRet.f32 %888, 1
  %891 = extractvalue %dx.types.CBufRet.f32 %888, 2
  %892 = extractvalue %dx.types.CBufRet.f32 %888, 3
  %893 = select i1 %886, float %889, float %891
  %894 = select i1 %887, float %890, float %892
  %895 = fmul fast float %893, %884
  %896 = fmul fast float %894, %885
  %897 = call float @dx.op.unary.f32(i32 6, float %895)  ; FAbs(value)
  %898 = call float @dx.op.unary.f32(i32 6, float %896)  ; FAbs(value)
  %899 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %900 = call float @dx.op.binary.f32(i32 35, float %897, float %898)  ; FMax(a,b)
  %901 = fsub fast float %899, %900
  %902 = call float @dx.op.unary.f32(i32 7, float %901)  ; Saturate(value)
  %903 = fcmp fast ogt float %902, 0.000000e+00
  br i1 %903, label %904, label %945, !dx.controlflow.hints !75

; <label>:904                                     ; preds = %846
  %905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %19, float %879, float %880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %906 = extractvalue %dx.types.ResRet.f32 %905, 1
  %907 = fcmp fast ogt float %906, 0.000000e+00
  br i1 %907, label %908, label %941, !dx.controlflow.hints !76

; <label>:908                                     ; preds = %904
  %909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %19, float %879, float %880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %910 = extractvalue %dx.types.ResRet.f32 %909, 0
  %911 = extractvalue %dx.types.ResRet.f32 %909, 1
  %912 = extractvalue %dx.types.ResRet.f32 %909, 2
  %913 = extractvalue %dx.types.ResRet.f32 %909, 3
  %914 = fsub fast float 1.000000e+00, %861
  %915 = fsub fast float %914, %872
  %916 = fmul fast float %915, 0x400921FB60000000
  %917 = fadd fast float %916, 0x3FF921FB60000000
  %918 = call float @dx.op.unary.f32(i32 13, float %917)  ; Sin(value)
  %919 = fadd fast float %918, -1.000000e+00
  %920 = fmul fast float %919, 0x3FD45F3060000000
  %921 = fmul fast float %915, 0x401921FB60000000
  %922 = fadd fast float %921, 0x400921FB60000000
  %923 = call float @dx.op.unary.f32(i32 13, float %922)  ; Sin(value)
  %924 = fadd fast float %923, 0x3E7777A5C0000000
  %925 = fmul fast float %924, 0x3FC45F3060000000
  %926 = fmul fast float %915, 0x4022D97C80000000
  %927 = fadd fast float %926, 0x4012D97C80000000
  %928 = call float @dx.op.unary.f32(i32 13, float %927)  ; Sin(value)
  %929 = fadd fast float %928, 1.000000e+00
  %930 = fmul fast float %929, 0x3FBB2995E0000000
  %931 = fmul fast float %915, 0x402921FB60000000
  %932 = fadd fast float %931, 0x401921FB60000000
  %933 = call float @dx.op.unary.f32(i32 13, float %932)  ; Sin(value)
  %934 = fadd fast float %933, 0xBE8777A5C0000000
  %935 = fmul fast float %934, 0x3FB45F3060000000
  %936 = call float @dx.op.dot4.f32(i32 56, float %910, float %911, float %912, float %913, float %920, float %925, float %930, float %935)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %937 = fmul fast float %936, 0xBFF7154760000000
  %938 = call float @dx.op.unary.f32(i32 21, float %937)  ; Exp(value)
  %939 = call float @dx.op.unary.f32(i32 7, float %938)  ; Saturate(value)
  %940 = fadd float %939, -1.000000e+00
  br label %941

; <label>:941                                     ; preds = %908, %904
  %942 = phi float [ %940, %908 ], [ 0.000000e+00, %904 ]
  %943 = fmul fast float %942, %902
  %944 = fadd fast float %943, 1.000000e+00
  br label %945

; <label>:945                                     ; preds = %941, %846
  %946 = phi float [ %944, %941 ], [ 1.000000e+00, %846 ]
  %947 = fmul fast float %946, %842
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 1
  %950 = fsub fast float -0.000000e+00, %169
  %951 = fsub fast float -0.000000e+00, %170
  %952 = fsub fast float -0.000000e+00, %287
  %953 = fsub fast float %952, %286
  %954 = fadd fast float %953, %949
  %955 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %950, float %951, float %954)  ; Dot3(ax,ay,az,bx,by,bz)
  %956 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %294, float %295, float %296)  ; Dot3(ax,ay,az,bx,by,bz)
  %957 = fdiv fast float 1.000000e+00, %956
  %958 = fmul fast float %957, %955
  %959 = fmul fast float %294, %958
  %960 = fmul fast float %295, %958
  %961 = fadd fast float %959, %169
  %962 = fadd fast float %960, %170
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 0
  %965 = extractvalue %dx.types.CBufRet.f32 %963, 1
  %966 = fsub fast float %961, %964
  %967 = fsub fast float %962, %965
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %970 = extractvalue %dx.types.CBufRet.f32 %968, 3
  %971 = fmul fast float %966, %969
  %972 = fmul fast float %967, %970
  %973 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.i32 %973, 3
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %981, label %976, !dx.controlflow.hints !77

; <label>:976                                     ; preds = %945
  %977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %18, float %971, float %972, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %978 = extractvalue %dx.types.ResRet.f32 %977, 0
  %979 = extractvalue %dx.types.ResRet.f32 %977, 1
  %980 = extractvalue %dx.types.ResRet.f32 %977, 2
  br label %986

; <label>:981                                     ; preds = %945
  %982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %971, float %972, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %983 = extractvalue %dx.types.ResRet.f32 %982, 0
  %984 = extractvalue %dx.types.ResRet.f32 %982, 1
  %985 = extractvalue %dx.types.ResRet.f32 %982, 2
  br label %986

; <label>:986                                     ; preds = %981, %976
  %987 = phi float [ %978, %976 ], [ %983, %981 ]
  %988 = phi float [ %979, %976 ], [ %984, %981 ]
  %989 = phi float [ %980, %976 ], [ %985, %981 ]
  %990 = extractvalue %dx.types.CBufRet.f32 %948, 2
  %991 = fmul fast float %990, %987
  %992 = extractvalue %dx.types.CBufRet.f32 %948, 0
  %993 = fsub fast float %958, %992
  %994 = fsub fast float %993, %991
  %995 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %994)  ; FMax(a,b)
  %996 = fmul fast float %995, %988
  %997 = call float @dx.op.binary.f32(i32 36, float %989, float %996)  ; FMin(a,b)
  %998 = fmul fast float %997, 0xBFF7154760000000
  %999 = call float @dx.op.unary.f32(i32 21, float %998)  ; Exp(value)
  %1000 = fmul fast float %947, %999
  br label %1001

; <label>:1001                                    ; preds = %986, %841
  %1002 = phi float [ %1000, %986 ], [ %842, %841 ]
  %1003 = call float @dx.op.binary.f32(i32 36, float %1002, float %1002)  ; FMin(a,b)
  %1004 = call float @dx.op.binary.f32(i32 36, float %1002, float %1003)  ; FMin(a,b)
  %1005 = fcmp fast ogt float %1004, 0.000000e+00
  br i1 %1005, label %1006, label %1030, !dx.controlflow.hints !78

; <label>:1006                                    ; preds = %1001
  %1007 = call float @dx.op.dot3.f32(i32 55, float %294, float %295, float %296, float %174, float %175, float %176)  ; Dot3(ax,ay,az,bx,by,bz)
  %1008 = fcmp fast ogt float %282, 0.000000e+00
  %1009 = select i1 %1008, float 1.000000e+00, float -1.000000e+00
  %1010 = fmul fast float %99, 7.812500e-03
  %1011 = fmul fast float %99, 3.125000e-02
  %1012 = fadd fast float %1011, -3.125000e-02
  %1013 = fmul fast float %1009, 5.000000e-01
  %1014 = fmul fast float %1013, %1007
  %1015 = fmul fast float %1009, %282
  %1016 = fadd fast float %1010, 4.921875e-01
  %1017 = fadd fast float %1016, %1014
  %1018 = fadd fast float %1010, 0x3FB25F3060000000
  %1019 = fadd fast float %1012, %1015
  %1020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %19, float %1017, float %1018, float %1019, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 0
  %1024 = fmul fast float %1002, 0x400921FB60000000
  %1025 = fmul fast float %1024, %1021
  %1026 = fmul fast float %1025, %1023
  %1027 = fmul fast float %1026, %298
  %1028 = fmul fast float %1026, %299
  %1029 = fmul fast float %1026, %300
  br label %1030

; <label>:1030                                    ; preds = %1006, %1001, %275
  %1031 = phi float [ %1027, %1006 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %1001 ]
  %1032 = phi float [ %1028, %1006 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %1001 ]
  %1033 = phi float [ %1029, %1006 ], [ 0.000000e+00, %275 ], [ 0.000000e+00, %1001 ]
  %1034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %118, float %119, float %120, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.ResRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.ResRet.f32 %1034, 2
  %1038 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1035)  ; IsNaN(value)
  %1039 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1036)  ; IsNaN(value)
  %1040 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1037)  ; IsNaN(value)
  %1041 = or i1 %1038, %1039
  %1042 = or i1 %1041, %1040
  %1043 = select i1 %1042, float 0.000000e+00, float %1035
  %1044 = select i1 %1042, float 0.000000e+00, float %1036
  %1045 = select i1 %1042, float 0.000000e+00, float %1037
  %1046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.f32 %1046, 1
  %1048 = fmul fast float %1043, %1047
  %1049 = fmul fast float %1044, %1047
  %1050 = fmul fast float %1045, %1047
  %1051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.f32 %1051, 3
  %1053 = fmul fast float %1048, %1052
  %1054 = fmul fast float %1049, %1052
  %1055 = fmul fast float %1050, %1052
  %1056 = fadd fast float %1053, %1031
  %1057 = fadd fast float %1054, %1032
  %1058 = fadd fast float %1055, %1033
  br label %1059

; <label>:1059                                    ; preds = %1030, %255
  %1060 = phi float [ %279, %1030 ], [ %271, %255 ]
  %1061 = phi float [ %280, %1030 ], [ %272, %255 ]
  %1062 = phi float [ %281, %1030 ], [ %273, %255 ]
  %1063 = phi float [ %1056, %1030 ], [ 0.000000e+00, %255 ]
  %1064 = phi float [ %1057, %1030 ], [ 0.000000e+00, %255 ]
  %1065 = phi float [ %1058, %1030 ], [ 0.000000e+00, %255 ]
  %1066 = fmul fast float %1060, %270
  %1067 = fmul fast float %1061, %270
  %1068 = fmul fast float %1062, %270
  %1069 = fmul fast float %1066, %1063
  %1070 = fmul fast float %1067, %1064
  %1071 = fmul fast float %1068, %1065
  %1072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1073 = extractvalue %dx.types.CBufRet.f32 %1072, 0
  %1074 = fmul fast float %1069, %1073
  %1075 = fmul fast float %1070, %1073
  %1076 = fmul fast float %1071, %1073
  %1077 = fmul fast float %1075, 5.000000e-01
  %1078 = fadd fast float %1071, %1069
  %1079 = fmul fast float %1073, %1078
  %1080 = fmul fast float %1079, 2.500000e-01
  %1081 = fadd fast float %1080, %1077
  %1082 = call float @dx.op.unary.f32(i32 23, float %1081)  ; Log(value)
  %1083 = fmul fast float %1082, 0x3FE62E4300000000
  %1084 = fmul fast float %1083, %1083
  store float %180, float addrspace(3)* %181, align 4, !tbaa !36, !noalias !40
  %1085 = fmul fast float %1083, %180
  store float %1085, float addrspace(3)* %183, align 4, !tbaa !36, !noalias !40
  %1086 = fmul fast float %1084, %180
  store float %1086, float addrspace(3)* %185, align 4, !tbaa !36, !noalias !40
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1087 = load float, float addrspace(3)* %187, align 4, !tbaa !36, !noalias !40
  %1088 = fadd fast float %1087, %180
  %1089 = load float, float addrspace(3)* %190, align 4, !tbaa !36, !noalias !40
  %1090 = fadd fast float %1089, %1083
  %1091 = load float, float addrspace(3)* %193, align 4, !tbaa !36, !noalias !40
  %1092 = fadd fast float %1091, %1084
  store float %1088, float addrspace(3)* %181, align 4, !tbaa !36, !noalias !40
  store float %1090, float addrspace(3)* %183, align 4, !tbaa !36, !noalias !40
  store float %1092, float addrspace(3)* %185, align 4, !tbaa !36, !noalias !40
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1093 = load float, float addrspace(3)* %197, align 4, !tbaa !36, !noalias !40
  %1094 = fadd fast float %1093, %1088
  %1095 = load float, float addrspace(3)* %200, align 4, !tbaa !36, !noalias !40
  %1096 = fadd fast float %1095, %1090
  %1097 = load float, float addrspace(3)* %203, align 4, !tbaa !36, !noalias !40
  %1098 = fadd fast float %1097, %1092
  store float %1094, float addrspace(3)* %181, align 4, !tbaa !36, !noalias !40
  store float %1096, float addrspace(3)* %183, align 4, !tbaa !36, !noalias !40
  store float %1098, float addrspace(3)* %185, align 4, !tbaa !36, !noalias !40
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1099 = load float, float addrspace(3)* %207, align 4, !tbaa !36, !noalias !40
  %1100 = fadd fast float %1099, %1094
  %1101 = load float, float addrspace(3)* %210, align 4, !tbaa !36, !noalias !40
  %1102 = fadd fast float %1101, %1096
  %1103 = fdiv fast float %1102, %1100
  br i1 %218, label %1104, label %1112, !dx.controlflow.hints !44

; <label>:1104                                    ; preds = %1059
  %1105 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %206
  %1106 = load float, float addrspace(3)* %1105, align 4, !tbaa !36, !noalias !40
  %1107 = fadd fast float %1106, %1098
  %1108 = fdiv fast float %1107, %1100
  %1109 = lshr i32 %49, 1
  %1110 = lshr i32 %50, 1
  %1111 = lshr i32 %51, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1109, i32 %1110, i32 %1111, float %1103, float %1108, float %1103, float %1103, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1112

; <label>:1112                                    ; preds = %1104, %1059
  br i1 %60, label %1147, label %1113, !dx.controlflow.hints !45

; <label>:1113                                    ; preds = %1112
  %1114 = fadd fast float %99, 0x3FE3C6EF40000000
  %1115 = call float @dx.op.unary.f32(i32 22, float %1114)  ; Frc(value)
  %1116 = call float @dx.op.unary.f32(i32 23, float %1074)  ; Log(value)
  %1117 = fadd fast float %1116, -7.000000e+00
  %1118 = call float @dx.op.unary.f32(i32 21, float %1117)  ; Exp(value)
  %1119 = fmul fast float %1115, 2.000000e+00
  %1120 = fadd fast float %1119, -1.000000e+00
  %1121 = fmul fast float %1118, %1120
  %1122 = fcmp fast ogt float %1074, 0.000000e+00
  %1123 = select i1 %1122, float %1121, float 0.000000e+00
  %1124 = fadd fast float %1123, %1074
  %1125 = fadd fast float %99, 0x3FF3C6EF40000000
  %1126 = call float @dx.op.unary.f32(i32 22, float %1125)  ; Frc(value)
  %1127 = call float @dx.op.unary.f32(i32 23, float %1075)  ; Log(value)
  %1128 = fadd fast float %1127, -7.000000e+00
  %1129 = call float @dx.op.unary.f32(i32 21, float %1128)  ; Exp(value)
  %1130 = fmul fast float %1126, 2.000000e+00
  %1131 = fadd fast float %1130, -1.000000e+00
  %1132 = fmul fast float %1129, %1131
  %1133 = fcmp fast ogt float %1075, 0.000000e+00
  %1134 = select i1 %1133, float %1132, float 0.000000e+00
  %1135 = fadd fast float %1134, %1075
  %1136 = fadd fast float %99, 0x3FFDAA66E0000000
  %1137 = call float @dx.op.unary.f32(i32 22, float %1136)  ; Frc(value)
  %1138 = call float @dx.op.unary.f32(i32 23, float %1076)  ; Log(value)
  %1139 = fadd fast float %1138, -6.000000e+00
  %1140 = call float @dx.op.unary.f32(i32 21, float %1139)  ; Exp(value)
  %1141 = fmul fast float %1137, 2.000000e+00
  %1142 = fadd fast float %1141, -1.000000e+00
  %1143 = fmul fast float %1140, %1142
  %1144 = fcmp fast ogt float %1076, 0.000000e+00
  %1145 = select i1 %1144, float %1143, float 0.000000e+00
  %1146 = fadd fast float %1145, %1076
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %49, i32 %50, i32 %51, float %1124, float %1135, float %1146, float %1124, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1147

; <label>:1147                                    ; preds = %1113, %1112
  %1148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1148, 0
  %1150 = fmul fast float %1149, %270
  %1151 = fmul fast float %1150, 5.000000e-01
  %1152 = fadd fast float %263, %263
  %1153 = fmul fast float %269, %1152
  %1154 = fmul fast float %1149, %1153
  %1155 = fmul fast float %1154, 2.500000e-01
  %1156 = fadd fast float %1155, %1151
  %1157 = fmul fast float %1156, %1156
  store float %180, float addrspace(3)* %181, align 4, !tbaa !36, !noalias !40
  %1158 = fmul fast float %1156, %180
  store float %1158, float addrspace(3)* %183, align 4, !tbaa !36, !noalias !40
  %1159 = fmul fast float %1157, %180
  store float %1159, float addrspace(3)* %185, align 4, !tbaa !36, !noalias !40
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1160 = load float, float addrspace(3)* %187, align 4, !tbaa !36, !noalias !40
  %1161 = fadd fast float %1160, %180
  %1162 = load float, float addrspace(3)* %190, align 4, !tbaa !36, !noalias !40
  %1163 = fadd fast float %1156, %1162
  %1164 = load float, float addrspace(3)* %193, align 4, !tbaa !36, !noalias !40
  %1165 = fadd fast float %1157, %1164
  store float %1161, float addrspace(3)* %181, align 4, !tbaa !36, !noalias !40
  store float %1163, float addrspace(3)* %183, align 4, !tbaa !36, !noalias !40
  store float %1165, float addrspace(3)* %185, align 4, !tbaa !36, !noalias !40
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1166 = load float, float addrspace(3)* %197, align 4, !tbaa !36, !noalias !40
  %1167 = fadd fast float %1166, %1161
  %1168 = load float, float addrspace(3)* %200, align 4, !tbaa !36, !noalias !40
  %1169 = fadd fast float %1168, %1163
  %1170 = load float, float addrspace(3)* %203, align 4, !tbaa !36, !noalias !40
  %1171 = fadd fast float %1170, %1165
  store float %1167, float addrspace(3)* %181, align 4, !tbaa !36, !noalias !40
  store float %1169, float addrspace(3)* %183, align 4, !tbaa !36, !noalias !40
  store float %1171, float addrspace(3)* %185, align 4, !tbaa !36, !noalias !40
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1172 = load float, float addrspace(3)* %207, align 4, !tbaa !36, !noalias !40
  %1173 = fadd fast float %1172, %1167
  %1174 = load float, float addrspace(3)* %210, align 4, !tbaa !36, !noalias !40
  %1175 = fadd fast float %1174, %1169
  %1176 = fdiv fast float %1175, %1173
  br i1 %218, label %1177, label %1185, !dx.controlflow.hints !46

; <label>:1177                                    ; preds = %1147
  %1178 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %206
  %1179 = load float, float addrspace(3)* %1178, align 4, !tbaa !36, !noalias !40
  %1180 = fadd fast float %1179, %1171
  %1181 = fdiv fast float %1180, %1173
  %1182 = lshr i32 %49, 1
  %1183 = lshr i32 %50, 1
  %1184 = lshr i32 %51, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1182, i32 %1183, i32 %1184, float %1176, float %1181, float %1176, float %1176, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1185

; <label>:1185                                    ; preds = %1177, %1147
  br i1 %60, label %1214, label %1186, !dx.controlflow.hints !47

; <label>:1186                                    ; preds = %1185
  %1187 = fadd fast float %99, 0x3FE3C6EF40000000
  %1188 = call float @dx.op.unary.f32(i32 22, float %1187)  ; Frc(value)
  %1189 = call float @dx.op.unary.f32(i32 23, float %1150)  ; Log(value)
  %1190 = fadd fast float %1189, -7.000000e+00
  %1191 = call float @dx.op.unary.f32(i32 21, float %1190)  ; Exp(value)
  %1192 = fmul fast float %1188, 2.000000e+00
  %1193 = fadd fast float %1192, -1.000000e+00
  %1194 = fmul fast float %1191, %1193
  %1195 = fcmp fast ogt float %1150, 0.000000e+00
  %1196 = select i1 %1195, float %1194, float 0.000000e+00
  %1197 = fadd fast float %1196, %1150
  %1198 = fadd fast float %99, 0x3FF3C6EF40000000
  %1199 = call float @dx.op.unary.f32(i32 22, float %1198)  ; Frc(value)
  %1200 = fmul fast float %1199, 2.000000e+00
  %1201 = fadd fast float %1200, -1.000000e+00
  %1202 = fmul fast float %1191, %1201
  %1203 = select i1 %1195, float %1202, float 0.000000e+00
  %1204 = fadd fast float %1203, %1150
  %1205 = fadd fast float %99, 0x3FFDAA66E0000000
  %1206 = call float @dx.op.unary.f32(i32 22, float %1205)  ; Frc(value)
  %1207 = fadd fast float %1189, -6.000000e+00
  %1208 = call float @dx.op.unary.f32(i32 21, float %1207)  ; Exp(value)
  %1209 = fmul fast float %1206, 2.000000e+00
  %1210 = fadd fast float %1209, -1.000000e+00
  %1211 = fmul fast float %1208, %1210
  %1212 = select i1 %1195, float %1211, float 0.000000e+00
  %1213 = fadd fast float %1212, %1150
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %49, i32 %50, i32 %51, float %1197, float %1204, float %1213, float %1197, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1214

; <label>:1214                                    ; preds = %1186, %1185
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
!34 = !{i32 0, i64 272, i32 4, !35}
!35 = !{i32 4, i32 4, i32 4}
!36 = !{!37, !37, i64 0}
!37 = !{!"float", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !43}
!41 = distinct !{!41, !42, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!42 = distinct !{!42, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!43 = distinct !{!43, !42, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = !{!60, !60, i64 0}
!60 = !{!"int", !38, i64 0}
!61 = !{!62, !64, !66, !41, !43}
!62 = distinct !{!62, !63, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!63 = distinct !{!63, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!64 = distinct !{!64, !65, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!65 = distinct !{!65, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!66 = distinct !{!66, !67, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z: %agg.result"}
!67 = distinct !{!67, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z"}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}

