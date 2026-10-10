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
; shader hash: 5bf8f9c707208fafc13c043145cd3591
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
;                                   texture     f32          1d     T10            t54     1
;                                   texture     f32          3d     T11             t5     1
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
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 54, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = alloca [4 x i32], align 4
  %25 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %26 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %27 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %28 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %29 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %30 = alloca [12 x float], align 4
  %31 = alloca [12 x float], align 4
  %32 = alloca [3 x float], align 4
  %33 = alloca [3 x float], align 4
  %34 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.i32 %34, 3
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 1
  %38 = mul i32 %37, %35
  %39 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.i32 %39, 1
  %41 = mul i32 %38, %40
  %42 = add i32 %41, %28
  %43 = shl i32 %42, 2
  %44 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %43, i32 undef)  ; BufferLoad(srv,index,wot)
  %45 = extractvalue %dx.types.ResRet.i32 %44, 0
  %46 = shl i32 %45, 2
  %47 = and i32 %46, 1020
  %48 = lshr i32 %45, 6
  %49 = and i32 %48, 1020
  %50 = lshr i32 %45, 14
  %51 = and i32 %50, 1020
  %52 = add i32 %47, %25
  %53 = add i32 %49, %26
  %54 = add i32 %51, %27
  %55 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.i32 %55, 0
  %57 = extractvalue %dx.types.CBufRet.i32 %55, 1
  %58 = extractvalue %dx.types.CBufRet.i32 %55, 2
  %59 = icmp uge i32 %52, %56
  %60 = icmp uge i32 %53, %57
  %61 = icmp uge i32 %54, %58
  %62 = or i1 %59, %60
  %63 = or i1 %61, %62
  %64 = xor i1 %63, true
  %65 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.i32 %65, 3
  %67 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %53, i32 %66)  ; UMad(a,b,c)
  %68 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %52, i32 %67)  ; UMad(a,b,c)
  %69 = mul i32 %68, -63
  %70 = lshr i32 %69, 17
  %71 = xor i32 %70, %69
  %72 = mul i32 %71, -511
  %73 = mul i32 %71, -8176
  %74 = xor i32 %72, %73
  %75 = mul i32 %74, -7
  %76 = mul i32 %74, -7168
  %77 = xor i32 %75, %76
  %78 = lshr i32 %77, 15
  %79 = xor i32 %78, %75
  %80 = and i32 %79, 127
  %81 = mul i32 %80, 3
  %82 = add i32 0, %81
  %83 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %82
  %84 = load float, float* %83, align 4
  %85 = mul i32 %80, 3
  %86 = add i32 1, %85
  %87 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %86
  %88 = load float, float* %87, align 4
  %89 = mul i32 %80, 3
  %90 = add i32 2, %89
  %91 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %90
  %92 = load float, float* %91, align 4
  %93 = uitofp i32 %66 to float
  %94 = fmul fast float %93, 0x3FEA36A940000000
  %95 = fmul fast float %93, 0x3FE5793080000000
  %96 = fmul fast float %93, 0x3FE1972580000000
  %97 = fadd fast float %84, %94
  %98 = fadd fast float %88, %95
  %99 = fadd fast float %92, %96
  %100 = call float @dx.op.unary.f32(i32 22, float %97)  ; Frc(value)
  %101 = call float @dx.op.unary.f32(i32 22, float %98)  ; Frc(value)
  %102 = call float @dx.op.unary.f32(i32 22, float %99)  ; Frc(value)
  %103 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %52, i32 %53, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %104 = extractvalue %dx.types.ResRet.f32 %103, 0
  %105 = fcmp fast ogt float %104, -1.000000e+00
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %108 = select i1 %105, float %107, float 1.000000e+00
  %109 = fadd fast float %104, 1.000000e+00
  %110 = fmul fast float %108, %109
  %111 = uitofp i32 %52 to float
  %112 = uitofp i32 %53 to float
  %113 = uitofp i32 %54 to float
  %114 = fadd fast float %111, %100
  %115 = fadd fast float %112, %101
  %116 = fadd fast float %113, %102
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = fmul fast float %118, %114
  %122 = fmul fast float %119, %115
  %123 = fmul fast float %120, %116
  %124 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.i32 %124, 0
  %126 = uitofp i32 %125 to float
  %127 = fmul fast float %126, %123
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = fmul fast float %127, %130
  %132 = call float @dx.op.unary.f32(i32 21, float %131)  ; Exp(value)
  %133 = fmul fast float %132, %129
  %134 = fsub fast float 4.000000e+00, %129
  %135 = fadd fast float %134, %133
  %136 = call float @dx.op.binary.f32(i32 36, float %135, float %110)  ; FMin(a,b)
  %137 = fmul fast float %121, 2.000000e+00
  %138 = fmul fast float %122, 2.000000e+00
  %139 = fsub fast float 1.000000e+00, %137
  %140 = fsub fast float 1.000000e+00, %138
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %144 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %145 = fmul fast float %142, %139
  %146 = fmul fast float %143, %139
  %147 = fmul fast float %144, %139
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = fmul fast float %149, %140
  %153 = fmul fast float %150, %140
  %154 = fmul fast float %151, %140
  %155 = fadd fast float %152, %145
  %156 = fadd fast float %153, %146
  %157 = fadd fast float %154, %147
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = fadd fast float %155, %159
  %163 = fadd fast float %156, %160
  %164 = fadd fast float %157, %161
  %165 = fmul fast float %162, %136
  %166 = fmul fast float %163, %136
  %167 = fmul fast float %164, %136
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %171 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %172 = fadd fast float %165, %169
  %173 = fadd fast float %166, %170
  %174 = fadd fast float %167, %171
  %175 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %165, float %166, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %176 = call float @dx.op.unary.f32(i32 25, float %175)  ; Rsqrt(value)
  %177 = fmul fast float %165, %176
  %178 = fmul fast float %166, %176
  %179 = fmul fast float %167, %176
  %180 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %181 = fmul fast float %180, 0x3FE62E4300000000
  %182 = fmul fast float %181, %181
  %183 = select i1 %63, float 0.000000e+00, float 1.000000e+00
  %184 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %29
  store float %183, float addrspace(3)* %184, align 4, !tbaa !37, !noalias !41
  %185 = fmul fast float %181, %183
  %186 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %29
  store float %185, float addrspace(3)* %186, align 4, !tbaa !37, !noalias !41
  %187 = fmul fast float %182, %183
  %188 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %29
  store float %187, float addrspace(3)* %188, align 4, !tbaa !37, !noalias !41
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %189 = xor i32 %29, 4
  %190 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %189
  %191 = load float, float addrspace(3)* %190, align 4, !tbaa !37, !noalias !41
  %192 = fadd fast float %191, %183
  %193 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %189
  %194 = load float, float addrspace(3)* %193, align 4, !tbaa !37, !noalias !41
  %195 = fadd fast float %194, %181
  %196 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %189
  %197 = load float, float addrspace(3)* %196, align 4, !tbaa !37, !noalias !41
  %198 = fadd fast float %197, %182
  store float %192, float addrspace(3)* %184, align 4, !tbaa !37, !noalias !41
  store float %195, float addrspace(3)* %186, align 4, !tbaa !37, !noalias !41
  store float %198, float addrspace(3)* %188, align 4, !tbaa !37, !noalias !41
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %199 = xor i32 %29, 16
  %200 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %199
  %201 = load float, float addrspace(3)* %200, align 4, !tbaa !37, !noalias !41
  %202 = fadd fast float %201, %192
  %203 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %199
  %204 = load float, float addrspace(3)* %203, align 4, !tbaa !37, !noalias !41
  %205 = fadd fast float %204, %195
  %206 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %199
  %207 = load float, float addrspace(3)* %206, align 4, !tbaa !37, !noalias !41
  %208 = fadd fast float %207, %198
  store float %202, float addrspace(3)* %184, align 4, !tbaa !37, !noalias !41
  store float %205, float addrspace(3)* %186, align 4, !tbaa !37, !noalias !41
  store float %208, float addrspace(3)* %188, align 4, !tbaa !37, !noalias !41
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %209 = xor i32 %29, 1
  %210 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %209
  %211 = load float, float addrspace(3)* %210, align 4, !tbaa !37, !noalias !41
  %212 = fadd fast float %211, %202
  %213 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %209
  %214 = load float, float addrspace(3)* %213, align 4, !tbaa !37, !noalias !41
  %215 = fadd fast float %214, %205
  %216 = fdiv fast float %215, %212
  %217 = and i32 %53, 1
  %218 = and i32 %217, %52
  %219 = and i32 %218, %54
  %220 = icmp ne i32 %219, 0
  %221 = and i1 %220, %64
  br i1 %221, label %222, label %230, !dx.controlflow.hints !45

; <label>:222                                     ; preds = %0
  %223 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %209
  %224 = load float, float addrspace(3)* %223, align 4, !tbaa !37, !noalias !41
  %225 = fadd fast float %224, %208
  %226 = fdiv fast float %225, %212
  %227 = lshr i32 %52, 1
  %228 = lshr i32 %53, 1
  %229 = lshr i32 %54, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %227, i32 %228, i32 %229, float %216, float %226, float %216, float %216, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %230

; <label>:230                                     ; preds = %222, %0
  br i1 %63, label %232, label %231, !dx.controlflow.hints !46

; <label>:231                                     ; preds = %230
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %52, i32 %53, i32 %54, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %232

; <label>:232                                     ; preds = %231, %230
  store float %183, float addrspace(3)* %184, align 4, !tbaa !37, !noalias !41
  store float 0.000000e+00, float addrspace(3)* %186, align 4, !tbaa !37, !noalias !41
  store float 0.000000e+00, float addrspace(3)* %188, align 4, !tbaa !37, !noalias !41
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %233 = load float, float addrspace(3)* %190, align 4, !tbaa !37, !noalias !41
  %234 = fadd fast float %233, %183
  %235 = load float, float addrspace(3)* %193, align 4, !tbaa !37, !noalias !41
  %236 = load float, float addrspace(3)* %196, align 4, !tbaa !37, !noalias !41
  store float %234, float addrspace(3)* %184, align 4, !tbaa !37, !noalias !41
  store float %235, float addrspace(3)* %186, align 4, !tbaa !37, !noalias !41
  store float %236, float addrspace(3)* %188, align 4, !tbaa !37, !noalias !41
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %237 = load float, float addrspace(3)* %200, align 4, !tbaa !37, !noalias !41
  %238 = fadd fast float %237, %234
  %239 = load float, float addrspace(3)* %203, align 4, !tbaa !37, !noalias !41
  %240 = fadd fast float %239, %235
  %241 = load float, float addrspace(3)* %206, align 4, !tbaa !37, !noalias !41
  %242 = fadd fast float %241, %236
  store float %238, float addrspace(3)* %184, align 4, !tbaa !37, !noalias !41
  store float %240, float addrspace(3)* %186, align 4, !tbaa !37, !noalias !41
  store float %242, float addrspace(3)* %188, align 4, !tbaa !37, !noalias !41
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %243 = load float, float addrspace(3)* %210, align 4, !tbaa !37, !noalias !41
  %244 = fadd fast float %243, %238
  %245 = load float, float addrspace(3)* %213, align 4, !tbaa !37, !noalias !41
  %246 = fadd fast float %245, %240
  %247 = fdiv fast float %246, %244
  br i1 %221, label %248, label %256, !dx.controlflow.hints !47

; <label>:248                                     ; preds = %232
  %249 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %209
  %250 = load float, float addrspace(3)* %249, align 4, !tbaa !37, !noalias !41
  %251 = fadd fast float %250, %242
  %252 = fdiv fast float %251, %244
  %253 = lshr i32 %52, 1
  %254 = lshr i32 %53, 1
  %255 = lshr i32 %54, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %253, i32 %254, i32 %255, float %247, float %252, float %247, float %247, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %256

; <label>:256                                     ; preds = %248, %232
  br i1 %63, label %258, label %257, !dx.controlflow.hints !48

; <label>:257                                     ; preds = %256
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %52, i32 %53, i32 %54, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %258

; <label>:258                                     ; preds = %257, %256
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 0
  %261 = extractvalue %dx.types.CBufRet.f32 %259, 1
  %262 = fsub fast float %174, %260
  %263 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %262)  ; FMax(a,b)
  %264 = fmul fast float %263, 0x3FF7154760000000
  %265 = fmul fast float %264, %261
  %266 = call float @dx.op.unary.f32(i32 21, float %265)  ; Exp(value)
  %267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %268 = extractvalue %dx.types.CBufRet.f32 %267, 0
  %269 = extractvalue %dx.types.CBufRet.f32 %267, 1
  %270 = extractvalue %dx.types.CBufRet.f32 %267, 2
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 1
  %273 = fmul fast float %272, %266
  %274 = fmul fast float %273, %268
  %275 = fmul fast float %273, %269
  %276 = fmul fast float %273, %270
  %277 = fcmp fast ogt float %273, 0.000000e+00
  br i1 %277, label %278, label %1062, !dx.controlflow.hints !49

; <label>:278                                     ; preds = %258
  %279 = extractvalue %dx.types.CBufRet.f32 %271, 2
  %280 = fmul fast float %279, %273
  %281 = fdiv fast float 1.000000e+00, %273
  %282 = fmul fast float %281, %274
  %283 = fmul fast float %281, %275
  %284 = fmul fast float %281, %276
  %285 = fmul fast float %280, %281
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 0
  %288 = extractvalue %dx.types.CBufRet.f32 %286, 1
  %289 = extractvalue %dx.types.CBufRet.f32 %286, 2
  %290 = fsub fast float %174, %289
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 3
  %293 = fcmp fast oeq float %292, 0.000000e+00
  br i1 %293, label %1033, label %294, !dx.controlflow.hints !50

; <label>:294                                     ; preds = %278
  %295 = fsub fast float %173, %288
  %296 = fsub fast float %172, %287
  %297 = extractvalue %dx.types.CBufRet.f32 %291, 0
  %298 = extractvalue %dx.types.CBufRet.f32 %291, 1
  %299 = extractvalue %dx.types.CBufRet.f32 %291, 2
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 0
  %302 = extractvalue %dx.types.CBufRet.f32 %300, 1
  %303 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 2
  %306 = fmul fast float %305, %297
  %307 = fmul fast float %305, %298
  %308 = fmul fast float %305, %299
  %309 = fsub fast float %296, %306
  %310 = fsub fast float %295, %307
  %311 = fsub fast float %290, %308
  %312 = fcmp fast olt float %292, 0.000000e+00
  br i1 %312, label %844, label %313, !dx.controlflow.hints !51

; <label>:313                                     ; preds = %294
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 0
  %316 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %317 = extractvalue %dx.types.CBufRet.f32 %314, 2
  %318 = extractvalue %dx.types.CBufRet.f32 %314, 3
  %319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.f32 %319, 0
  %321 = extractvalue %dx.types.CBufRet.f32 %319, 1
  %322 = extractvalue %dx.types.CBufRet.f32 %319, 2
  %323 = extractvalue %dx.types.CBufRet.f32 %319, 3
  %324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.f32 %324, 0
  %326 = extractvalue %dx.types.CBufRet.f32 %324, 1
  %327 = extractvalue %dx.types.CBufRet.f32 %324, 2
  %328 = extractvalue %dx.types.CBufRet.f32 %324, 3
  %329 = fmul fast float %315, %309
  %330 = call float @dx.op.tertiary.f32(i32 46, float %310, float %316, float %329)  ; FMad(a,b,c)
  %331 = call float @dx.op.tertiary.f32(i32 46, float %311, float %317, float %330)  ; FMad(a,b,c)
  %332 = fadd fast float %331, %318
  %333 = fmul fast float %320, %309
  %334 = call float @dx.op.tertiary.f32(i32 46, float %310, float %321, float %333)  ; FMad(a,b,c)
  %335 = call float @dx.op.tertiary.f32(i32 46, float %311, float %322, float %334)  ; FMad(a,b,c)
  %336 = fadd fast float %335, %323
  %337 = fmul fast float %325, %309
  %338 = call float @dx.op.tertiary.f32(i32 46, float %310, float %326, float %337)  ; FMad(a,b,c)
  %339 = call float @dx.op.tertiary.f32(i32 46, float %311, float %327, float %338)  ; FMad(a,b,c)
  %340 = fadd fast float %339, %328
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 0
  %343 = extractvalue %dx.types.CBufRet.f32 %341, 1
  %344 = extractvalue %dx.types.CBufRet.f32 %341, 3
  %345 = fmul fast float %344, %332
  %346 = fmul fast float %344, %336
  %347 = fadd fast float %345, %342
  %348 = fadd fast float %346, %343
  %349 = extractvalue %dx.types.CBufRet.f32 %341, 2
  %350 = fcmp fast olt float %349, 0.000000e+00
  %351 = fsub fast float -0.000000e+00, %349
  %352 = select i1 %350, float %351, float %349
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %355 = fadd fast float %352, %354
  %356 = fcmp fast ogt float %355, 0.000000e+00
  br i1 %356, label %357, label %388, !dx.controlflow.hints !52

; <label>:357                                     ; preds = %313
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 1
  %360 = fsub fast float %359, %340
  %361 = extractvalue %dx.types.CBufRet.f32 %358, 2
  %362 = fmul fast float %360, %361
  %363 = fsub fast float 1.000000e+00, %362
  %364 = call float @dx.op.unary.f32(i32 7, float %363)  ; Saturate(value)
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 0
  %367 = extractvalue %dx.types.CBufRet.f32 %365, 1
  %368 = fsub fast float %347, %366
  %369 = fsub fast float %348, %367
  %370 = fcmp fast olt float %368, 0.000000e+00
  %371 = fcmp fast olt float %369, 0.000000e+00
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %374 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %375 = extractvalue %dx.types.CBufRet.f32 %372, 2
  %376 = extractvalue %dx.types.CBufRet.f32 %372, 3
  %377 = select i1 %370, float %373, float %375
  %378 = select i1 %371, float %374, float %376
  %379 = fmul fast float %377, %368
  %380 = fmul fast float %378, %369
  %381 = call float @dx.op.unary.f32(i32 6, float %379)  ; FAbs(value)
  %382 = call float @dx.op.unary.f32(i32 6, float %380)  ; FAbs(value)
  %383 = extractvalue %dx.types.CBufRet.f32 %304, 0
  %384 = call float @dx.op.binary.f32(i32 35, float %381, float %382)  ; FMax(a,b)
  %385 = fsub fast float %383, %384
  %386 = call float @dx.op.unary.f32(i32 7, float %385)  ; Saturate(value)
  %387 = fmul fast float %386, %364
  br label %388

; <label>:388                                     ; preds = %357, %313
  %389 = phi float [ %387, %357 ], [ 0.000000e+00, %313 ]
  %390 = call float @dx.op.binary.f32(i32 35, float %389, float 0.000000e+00)  ; FMax(a,b)
  %391 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %390)  ; FMax(a,b)
  %392 = fcmp fast olt float %391, 1.000000e+00
  br i1 %392, label %393, label %791, !dx.controlflow.hints !53

; <label>:393                                     ; preds = %388
  %394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.f32 %394, 0
  %396 = fcmp fast une float %395, 0.000000e+00
  br i1 %396, label %397, label %791, !dx.controlflow.hints !54

; <label>:397                                     ; preds = %393
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 0
  %400 = extractvalue %dx.types.CBufRet.f32 %398, 1
  %401 = extractvalue %dx.types.CBufRet.f32 %398, 2
  %402 = extractvalue %dx.types.CBufRet.f32 %398, 3
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.f32 %403, 0
  %405 = extractvalue %dx.types.CBufRet.f32 %403, 1
  %406 = extractvalue %dx.types.CBufRet.f32 %403, 2
  %407 = extractvalue %dx.types.CBufRet.f32 %403, 3
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 0
  %410 = extractvalue %dx.types.CBufRet.f32 %408, 1
  %411 = extractvalue %dx.types.CBufRet.f32 %408, 2
  %412 = extractvalue %dx.types.CBufRet.f32 %408, 3
  %413 = fmul fast float %399, %309
  %414 = call float @dx.op.tertiary.f32(i32 46, float %310, float %400, float %413)  ; FMad(a,b,c)
  %415 = call float @dx.op.tertiary.f32(i32 46, float %311, float %401, float %414)  ; FMad(a,b,c)
  %416 = fadd fast float %415, %402
  %417 = fmul fast float %404, %309
  %418 = call float @dx.op.tertiary.f32(i32 46, float %310, float %405, float %417)  ; FMad(a,b,c)
  %419 = call float @dx.op.tertiary.f32(i32 46, float %311, float %406, float %418)  ; FMad(a,b,c)
  %420 = fadd fast float %419, %407
  %421 = fmul fast float %409, %309
  %422 = call float @dx.op.tertiary.f32(i32 46, float %310, float %410, float %421)  ; FMad(a,b,c)
  %423 = call float @dx.op.tertiary.f32(i32 46, float %311, float %411, float %422)  ; FMad(a,b,c)
  %424 = fadd fast float %423, %412
  %425 = fcmp fast oge float %416, 1.000000e+00
  %426 = fcmp fast oge float %420, 1.000000e+00
  %427 = or i1 %425, %426
  %428 = fcmp fast olt float %416, 0.000000e+00
  %429 = fcmp fast olt float %420, 0.000000e+00
  %430 = or i1 %428, %429
  %431 = or i1 %427, %430
  br i1 %431, label %791, label %432, !dx.controlflow.hints !55

; <label>:432                                     ; preds = %397
  %433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %434 = extractvalue %dx.types.CBufRet.f32 %433, 0
  %435 = extractvalue %dx.types.CBufRet.f32 %433, 1
  %436 = extractvalue %dx.types.CBufRet.f32 %433, 2
  %437 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.i32 %437, 2
  %439 = uitofp i32 %438 to float
  %440 = extractvalue %dx.types.CBufRet.i32 %437, 3
  %441 = uitofp i32 %440 to float
  %442 = extractvalue %dx.types.CBufRet.f32 %433, 3
  %443 = fmul fast float %442, 2.000000e+00
  %444 = fsub fast float %416, %434
  %445 = fsub fast float %420, %435
  %446 = fmul fast float %443, %444
  %447 = fmul fast float %443, %445
  %448 = fdiv fast float 1.000000e+00, %299
  %449 = fmul fast float %447, %448
  %450 = call float @dx.op.unary.f32(i32 6, float %449)  ; FAbs(value)
  %451 = fmul fast float %436, %311
  %452 = fmul fast float %451, %443
  %453 = call float @dx.op.unary.f32(i32 6, float %452)  ; FAbs(value)
  %454 = call float @dx.op.unary.f32(i32 6, float %446)  ; FAbs(value)
  %455 = call float @dx.op.binary.f32(i32 35, float %453, float %450)  ; FMax(a,b)
  %456 = call float @dx.op.binary.f32(i32 35, float %454, float %455)  ; FMax(a,b)
  %457 = fmul fast float %456, 2.000000e+00
  %458 = call float @dx.op.unary.f32(i32 23, float %457)  ; Log(value)
  %459 = call float @dx.op.binary.f32(i32 35, float %458, float %439)  ; FMax(a,b)
  %460 = call float @dx.op.unary.f32(i32 22, float %459)  ; Frc(value)
  %461 = fadd fast float %460, 0xBFEA666660000000
  %462 = fmul fast float %461, 8.000000e+00
  %463 = call float @dx.op.unary.f32(i32 7, float %462)  ; Saturate(value)
  %464 = call float @dx.op.unary.f32(i32 27, float %459)  ; Round_ni(value)
  %465 = fadd fast float %464, %463
  %466 = call float @dx.op.binary.f32(i32 36, float %465, float %441)  ; FMin(a,b)
  %467 = call float @dx.op.unary.f32(i32 27, float %466)  ; Round_ni(value)
  %468 = fsub fast float -0.000000e+00, %467
  %469 = call float @dx.op.unary.f32(i32 21, float %468)  ; Exp(value)
  %470 = fmul fast float %469, %443
  %471 = fmul fast float %470, %416
  %472 = fmul fast float %470, %420
  %473 = fmul fast float %471, 2.500000e-01
  %474 = fmul fast float %472, 2.500000e-01
  %475 = fadd fast float %473, 5.000000e-01
  %476 = fadd fast float %474, 5.000000e-01
  %477 = fsub fast float %441, %439
  %478 = fptoui float %477 to i32
  %479 = add i32 %478, 320
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %479)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.f32 %480, 0
  %482 = extractvalue %dx.types.CBufRet.f32 %480, 1
  %483 = fcmp fast une float %466, %441
  %484 = fsub fast float %416, %481
  %485 = fsub fast float %420, %482
  %486 = call float @dx.op.unary.f32(i32 6, float %484)  ; FAbs(value)
  %487 = call float @dx.op.unary.f32(i32 6, float %485)  ; FAbs(value)
  %488 = fmul fast float %486, %470
  %489 = fmul fast float %487, %470
  %490 = fcmp fast olt float %488, 1.000000e+00
  %491 = fcmp fast olt float %489, 1.000000e+00
  %492 = and i1 %490, %491
  %493 = or i1 %483, %492
  br i1 %493, label %494, label %791, !dx.controlflow.hints !56

; <label>:494                                     ; preds = %432
  %495 = fmul fast float %472, 5.000000e-01
  %496 = fmul fast float %471, 5.000000e-01
  %497 = fadd fast float %495, 5.000000e-01
  %498 = fadd fast float %496, 5.000000e-01
  %499 = sitofp i32 %438 to float
  %500 = fsub fast float %466, %499
  %501 = call float @dx.op.unary.f32(i32 27, float %500)  ; Round_ni(value)
  %502 = call float @dx.op.unary.f32(i32 22, float %466)  ; Frc(value)
  %503 = call float @dx.op.unary.f32(i32 22, float %498)  ; Frc(value)
  %504 = call float @dx.op.unary.f32(i32 22, float %497)  ; Frc(value)
  %505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %503, float %504, float %501, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %506 = extractvalue %dx.types.ResRet.f32 %505, 0
  %507 = extractvalue %dx.types.ResRet.f32 %505, 1
  %508 = extractvalue %dx.types.ResRet.f32 %505, 2
  %509 = extractvalue %dx.types.ResRet.f32 %505, 3
  %510 = fcmp fast ogt float %502, 0.000000e+00
  br i1 %510, label %511, label %532, !dx.controlflow.hints !57

; <label>:511                                     ; preds = %494
  %512 = fadd fast float %501, 1.000000e+00
  %513 = call float @dx.op.unary.f32(i32 22, float %475)  ; Frc(value)
  %514 = call float @dx.op.unary.f32(i32 22, float %476)  ; Frc(value)
  %515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %513, float %514, float %512, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = extractvalue %dx.types.ResRet.f32 %515, 1
  %518 = extractvalue %dx.types.ResRet.f32 %515, 2
  %519 = extractvalue %dx.types.ResRet.f32 %515, 3
  %520 = fsub fast float %516, %506
  %521 = fsub fast float %517, %507
  %522 = fsub fast float %518, %508
  %523 = fsub fast float %519, %509
  %524 = fmul fast float %520, %502
  %525 = fmul fast float %521, %502
  %526 = fmul fast float %522, %502
  %527 = fmul fast float %523, %502
  %528 = fadd fast float %524, %506
  %529 = fadd fast float %525, %507
  %530 = fadd fast float %526, %508
  %531 = fadd fast float %527, %509
  br label %532

; <label>:532                                     ; preds = %511, %494
  %533 = phi float [ %528, %511 ], [ %506, %494 ]
  %534 = phi float [ %529, %511 ], [ %507, %494 ]
  %535 = phi float [ %530, %511 ], [ %508, %494 ]
  %536 = phi float [ %531, %511 ], [ %509, %494 ]
  %537 = fadd fast float %533, -5.000000e-01
  %538 = fadd fast float %535, -5.000000e-01
  %539 = fmul fast float %537, 0xBFD5555560000000
  %540 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %538, float %539)  ; FMad(a,b,c)
  %541 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %534, float 0.000000e+00)  ; FMad(a,b,c)
  %542 = fadd fast float %541, %536
  %543 = fmul fast float %537, -7.500000e-01
  %544 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %538, float %543)  ; FMad(a,b,c)
  %545 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %534, float 0.000000e+00)  ; FMad(a,b,c)
  %546 = fadd fast float %545, %536
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 0
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 0
  %551 = extractvalue %dx.types.CBufRet.f32 %549, 1
  %552 = extractvalue %dx.types.CBufRet.f32 %549, 2
  %553 = extractvalue %dx.types.CBufRet.f32 %549, 3
  %554 = fsub fast float %550, %540
  %555 = fsub fast float %551, %542
  %556 = fsub fast float %552, %544
  %557 = fsub fast float %553, %546
  %558 = fmul fast float %554, %548
  %559 = fmul fast float %555, %548
  %560 = fmul fast float %556, %548
  %561 = fmul fast float %557, %548
  %562 = fadd fast float %558, %540
  %563 = fadd fast float %559, %542
  %564 = fadd fast float %560, %544
  %565 = fadd fast float %561, %546
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = and i32 %567, 536870911
  %569 = uitofp i32 %568 to float
  %570 = fmul fast float %569, %416
  %571 = fmul fast float %569, %420
  %572 = fptoui float %570 to i32
  %573 = fptoui float %571 to i32
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = and i32 %575, 31
  %577 = lshr i32 %572, %576
  %578 = lshr i32 %573, %576
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = and i32 %580, 31
  %582 = shl i32 1, %581
  %583 = call i32 @dx.op.binary.i32(i32 40, i32 %582, i32 4)  ; UMin(a,b)
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = extractvalue %dx.types.ResRet.i32 %584, 1
  %587 = icmp eq i32 %583, 0
  br i1 %587, label %629, label %588

; <label>:588                                     ; preds = %532
  br label %589

; <label>:589                                     ; preds = %617, %588
  %590 = phi i32 [ %620, %617 ], [ 0, %588 ]
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = lshr i32 %592, 16
  %594 = and i32 %593, 31
  %595 = shl i32 %578, %594
  %596 = add i32 %595, %577
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = and i32 %598, 31
  %600 = shl i32 %596, %599
  %601 = add i32 %600, %590
  %602 = shl i32 %601, 2
  %603 = add i32 %602, 32
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = icmp slt i32 %605, 0
  %607 = getelementptr [12 x float], [12 x float]* %30, i32 0, i32 %590
  %608 = getelementptr [12 x float], [12 x float]* %31, i32 0, i32 %590
  %609 = bitcast float* %607 to i32*
  %610 = bitcast float* %608 to i32*
  br i1 %606, label %611, label %617, !dx.controlflow.hints !58

; <label>:611                                     ; preds = %589
  %612 = and i32 %605, 1073741823
  %613 = add nuw nsw i32 %612, 20
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = extractvalue %dx.types.ResRet.i32 %614, 1
  br label %617

; <label>:617                                     ; preds = %611, %589
  %618 = phi i32 [ %615, %611 ], [ %585, %589 ]
  %619 = phi i32 [ %616, %611 ], [ %586, %589 ]
  store i32 %618, i32* %609, align 4
  store i32 %619, i32* %610, align 4
  %620 = add nuw i32 %590, 1
  %621 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.i32 %621, 2
  %623 = icmp eq i32 %622, 0
  %624 = icmp ugt i32 %605, -1073741825
  %625 = and i1 %624, %623
  %626 = icmp ult i32 %620, %583
  %627 = and i1 %625, %626
  br i1 %627, label %589, label %628, !dx.controlflow.hints !59

; <label>:628                                     ; preds = %617
  br label %629

; <label>:629                                     ; preds = %628, %532
  %630 = phi i32 [ 0, %532 ], [ %620, %628 ]
  %631 = extractvalue %dx.types.CBufRet.f32 %394, 2
  %632 = fptoui float %631 to i32
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %685, label %634

; <label>:634                                     ; preds = %629
  br label %635

; <label>:635                                     ; preds = %680, %634
  %636 = phi i32 [ %681, %680 ], [ %630, %634 ]
  %637 = phi i32 [ %682, %680 ], [ 0, %634 ]
  %638 = lshr i32 %637, 2
  %639 = and i32 %637, 3
  %640 = add nuw nsw i32 %638, 83
  %641 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 %640)  ; CBufferLoadLegacy(handle,regIndex)
  %642 = extractvalue %dx.types.CBufRet.i32 %641, 0
  %643 = extractvalue %dx.types.CBufRet.i32 %641, 1
  %644 = extractvalue %dx.types.CBufRet.i32 %641, 2
  %645 = extractvalue %dx.types.CBufRet.i32 %641, 3
  %646 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %642, i32* %646, align 4
  %647 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %643, i32* %647, align 4
  %648 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %644, i32* %648, align 4
  %649 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %645, i32* %649, align 4
  %650 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 %639
  %651 = load i32, i32* %650, align 4, !tbaa !60, !noalias !62
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = lshr i32 %653, 16
  %655 = and i32 %654, 31
  %656 = shl i32 %578, %655
  %657 = add i32 %656, %577
  %658 = shl i32 %657, 2
  %659 = add i32 %658, %651
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %680, label %663, !dx.controlflow.hints !69

; <label>:663                                     ; preds = %635
  %664 = icmp slt i32 %661, 0
  %665 = getelementptr [12 x float], [12 x float]* %30, i32 0, i32 %636
  %666 = getelementptr [12 x float], [12 x float]* %31, i32 0, i32 %636
  %667 = bitcast float* %665 to i32*
  %668 = bitcast float* %666 to i32*
  br i1 %664, label %669, label %676, !dx.controlflow.hints !70

; <label>:669                                     ; preds = %663
  %670 = and i32 %661, 1073741823
  %671 = add i32 %651, 20
  %672 = add i32 %671, %670
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = extractvalue %dx.types.ResRet.i32 %673, 1
  br label %676

; <label>:676                                     ; preds = %669, %663
  %677 = phi i32 [ %674, %669 ], [ %585, %663 ]
  %678 = phi i32 [ %675, %669 ], [ %586, %663 ]
  store i32 %677, i32* %667, align 4
  store i32 %678, i32* %668, align 4
  %679 = add i32 %636, 1
  br label %680

; <label>:680                                     ; preds = %676, %635
  %681 = phi i32 [ %636, %635 ], [ %679, %676 ]
  %682 = add nuw i32 %637, 1
  %683 = icmp eq i32 %682, %632
  br i1 %683, label %684, label %635

; <label>:684                                     ; preds = %680
  br label %685

; <label>:685                                     ; preds = %684, %629
  %686 = phi i32 [ %630, %629 ], [ %681, %684 ]
  %687 = icmp eq i32 %686, 1
  %688 = getelementptr [12 x float], [12 x float]* %30, i32 0, i32 0
  %689 = getelementptr [12 x float], [12 x float]* %31, i32 0, i32 0
  br i1 %687, label %690, label %693, !dx.controlflow.hints !71

; <label>:690                                     ; preds = %685
  %691 = load float, float* %688, align 4
  %692 = load float, float* %689, align 4
  br label %720

; <label>:693                                     ; preds = %685
  %694 = load float, float* %688, align 4
  %695 = load float, float* %689, align 4
  %696 = fdiv fast float 1.000000e+00, %695
  %697 = fsub fast float %694, %696
  %698 = icmp ugt i32 %686, 1
  br i1 %698, label %699, label %715

; <label>:699                                     ; preds = %693
  br label %700

; <label>:700                                     ; preds = %700, %699
  %701 = phi float [ %710, %700 ], [ %697, %699 ]
  %702 = phi float [ %711, %700 ], [ %694, %699 ]
  %703 = phi i32 [ %712, %700 ], [ 1, %699 ]
  %704 = getelementptr [12 x float], [12 x float]* %30, i32 0, i32 %703
  %705 = load float, float* %704, align 4
  %706 = getelementptr [12 x float], [12 x float]* %31, i32 0, i32 %703
  %707 = load float, float* %706, align 4
  %708 = fdiv fast float 1.000000e+00, %707
  %709 = fsub fast float %705, %708
  %710 = call float @dx.op.binary.f32(i32 36, float %701, float %709)  ; FMin(a,b)
  %711 = call float @dx.op.binary.f32(i32 35, float %702, float %705)  ; FMax(a,b)
  %712 = add nuw i32 %703, 1
  %713 = icmp eq i32 %712, %686
  br i1 %713, label %714, label %700

; <label>:714                                     ; preds = %700
  br label %715

; <label>:715                                     ; preds = %714, %693
  %716 = phi float [ %697, %693 ], [ %710, %714 ]
  %717 = phi float [ %694, %693 ], [ %711, %714 ]
  %718 = fsub fast float %717, %716
  %719 = fdiv fast float 1.000000e+00, %718
  br label %720

; <label>:720                                     ; preds = %715, %690
  %721 = phi float [ %691, %690 ], [ %717, %715 ]
  %722 = phi float [ %692, %690 ], [ %719, %715 ]
  %723 = fadd fast float %424, %721
  %724 = fmul fast float %723, %722
  %725 = call float @dx.op.unary.f32(i32 7, float %724)  ; Saturate(value)
  %726 = fmul fast float %725, 2.000000e+00
  %727 = fsub fast float 1.000000e+00, %726
  %728 = fmul fast float %562, %562
  %729 = fsub fast float %563, %728
  %730 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %729)  ; FMax(a,b)
  %731 = fdiv fast float 1.000000e+00, %730
  %732 = fmul fast float %563, %562
  %733 = fsub fast float %564, %732
  %734 = fsub fast float %727, %562
  %735 = fmul fast float %727, %727
  %736 = fsub fast float %735, %563
  %737 = fmul fast float %731, %733
  %738 = fmul fast float %737, %734
  %739 = fsub fast float %736, %738
  %740 = fmul fast float %563, %563
  %741 = fsub fast float %565, %740
  %742 = fmul fast float %733, %733
  %743 = fmul fast float %742, %731
  %744 = fsub fast float %741, %743
  %745 = fdiv fast float %739, %744
  %746 = fmul fast float %745, %733
  %747 = fsub fast float %734, %746
  %748 = fmul fast float %747, %731
  %749 = fmul fast float %748, %562
  %750 = fsub fast float 1.000000e+00, %749
  %751 = fmul fast float %745, %563
  %752 = fsub fast float %750, %751
  %753 = fmul fast float %748, %748
  %754 = fmul fast float %745, 4.000000e+00
  %755 = fmul fast float %754, %752
  %756 = fsub fast float %753, %755
  %757 = call float @dx.op.unary.f32(i32 24, float %756)  ; Sqrt(value)
  %758 = fcmp fast oge float %748, 0.000000e+00
  %759 = fsub fast float -0.000000e+00, %757
  %760 = select i1 %758, float %759, float %757
  %761 = fsub fast float %760, %748
  %762 = fdiv fast float %761, %745
  %763 = fdiv fast float %752, %761
  %764 = fmul fast float %762, 5.000000e-01
  %765 = fmul fast float %763, 2.000000e+00
  %766 = select i1 %758, float %764, float %765
  %767 = select i1 %758, float %765, float %764
  %768 = call float @dx.op.binary.f32(i32 35, float %766, float %767)  ; FMax(a,b)
  %769 = call float @dx.op.binary.f32(i32 36, float %766, float %767)  ; FMin(a,b)
  %770 = fcmp fast ogt float %727, %768
  %771 = fsub fast float %727, %769
  %772 = fsub fast float %727, %768
  %773 = fsub fast float %768, %769
  %774 = select i1 %770, float %772, float %773
  %775 = fmul float %771, %774
  %776 = select i1 %770, float %769, float %727
  %777 = fcmp fast ogt float %727, %769
  %778 = fmul fast float %776, %768
  %779 = fadd fast float %776, %768
  %780 = fmul fast float %779, %562
  %781 = fadd fast float %778, %563
  %782 = fsub fast float %781, %780
  %783 = fdiv fast float %782, %775
  %784 = select i1 %777, float %783, float 0.000000e+00
  %785 = fsub fast float 1.000000e+00, %784
  %786 = select i1 %770, float %785, float %784
  %787 = call float @dx.op.unary.f32(i32 7, float %786)  ; Saturate(value)
  %788 = extractvalue %dx.types.CBufRet.f32 %547, 3
  %789 = fmul fast float %788, %787
  %790 = fsub fast float 1.000000e+00, %789
  br label %791

; <label>:791                                     ; preds = %720, %432, %397, %393, %388
  %792 = phi float [ 1.000000e+00, %388 ], [ %790, %720 ], [ 1.000000e+00, %397 ], [ 1.000000e+00, %432 ], [ 1.000000e+00, %393 ]
  %793 = fcmp fast ogt float %389, 0.000000e+00
  br i1 %793, label %794, label %800, !dx.controlflow.hints !72

; <label>:794                                     ; preds = %791
  %795 = fadd fast float %354, %340
  %796 = call float @dx.op.binary.f32(i32 35, float %795, float 0.000000e+00)  ; FMax(a,b)
  %797 = fadd fast float %796, 0x3F10000000000000
  %798 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %21, float %347, float %348, float undef, float undef, i32 0, i32 0, i32 undef, float %797)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 0
  br label %800

; <label>:800                                     ; preds = %794, %791
  %801 = phi float [ %799, %794 ], [ 1.000000e+00, %791 ]
  %802 = fsub fast float %801, %792
  %803 = fmul fast float %802, %389
  %804 = fadd fast float %803, %792
  %805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %806 = extractvalue %dx.types.CBufRet.f32 %805, 2
  %807 = fcmp fast ogt float %806, 0.000000e+00
  br i1 %807, label %808, label %844, !dx.controlflow.hints !73

; <label>:808                                     ; preds = %800
  %809 = fcmp fast ugt float %806, 0.000000e+00
  br i1 %809, label %810, label %841, !dx.controlflow.hints !74

; <label>:810                                     ; preds = %808
  %811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %812 = extractvalue %dx.types.CBufRet.f32 %811, 0
  %813 = extractvalue %dx.types.CBufRet.f32 %811, 1
  %814 = extractvalue %dx.types.CBufRet.f32 %811, 2
  %815 = extractvalue %dx.types.CBufRet.f32 %811, 3
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 0
  %818 = extractvalue %dx.types.CBufRet.f32 %816, 1
  %819 = extractvalue %dx.types.CBufRet.f32 %816, 2
  %820 = extractvalue %dx.types.CBufRet.f32 %816, 3
  %821 = extractvalue %dx.types.CBufRet.f32 %805, 0
  %822 = extractvalue %dx.types.CBufRet.f32 %805, 1
  %823 = fadd fast float %287, %309
  %824 = fadd fast float %288, %310
  %825 = fadd fast float %289, %311
  %826 = fmul fast float %823, %812
  %827 = call float @dx.op.tertiary.f32(i32 46, float %813, float %824, float %826)  ; FMad(a,b,c)
  %828 = call float @dx.op.tertiary.f32(i32 46, float %814, float %825, float %827)  ; FMad(a,b,c)
  %829 = fadd fast float %828, %815
  %830 = fmul fast float %823, %817
  %831 = call float @dx.op.tertiary.f32(i32 46, float %818, float %824, float %830)  ; FMad(a,b,c)
  %832 = call float @dx.op.tertiary.f32(i32 46, float %819, float %825, float %831)  ; FMad(a,b,c)
  %833 = fadd fast float %832, %820
  %834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %829, float %833, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %835 = extractvalue %dx.types.ResRet.f32 %834, 0
  %836 = fmul fast float %835, %822
  %837 = fadd fast float %836, %821
  %838 = call float @dx.op.unary.f32(i32 7, float %837)  ; Saturate(value)
  %839 = fmul fast float %838, %806
  %840 = fsub fast float 1.000000e+00, %839
  br label %841

; <label>:841                                     ; preds = %810, %808
  %842 = phi float [ %840, %810 ], [ 1.000000e+00, %808 ]
  %843 = fmul fast float %842, %804
  br label %844

; <label>:844                                     ; preds = %841, %800, %294
  %845 = phi float [ 1.000000e+00, %294 ], [ %843, %841 ], [ %804, %800 ]
  %846 = call float @dx.op.binary.f32(i32 36, float %845, float %845)  ; FMin(a,b)
  %847 = call float @dx.op.binary.f32(i32 36, float %845, float %846)  ; FMin(a,b)
  %848 = fcmp fast ogt float %847, 0.000000e+00
  br i1 %848, label %849, label %1004, !dx.controlflow.hints !75

; <label>:849                                     ; preds = %844
  %850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.f32 %850, 0
  %852 = extractvalue %dx.types.CBufRet.f32 %850, 1
  %853 = extractvalue %dx.types.CBufRet.f32 %850, 2
  %854 = extractvalue %dx.types.CBufRet.f32 %850, 3
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %857 = extractvalue %dx.types.CBufRet.f32 %855, 1
  %858 = extractvalue %dx.types.CBufRet.f32 %855, 2
  %859 = extractvalue %dx.types.CBufRet.f32 %855, 3
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 0
  %862 = extractvalue %dx.types.CBufRet.f32 %860, 1
  %863 = extractvalue %dx.types.CBufRet.f32 %860, 2
  %864 = extractvalue %dx.types.CBufRet.f32 %860, 3
  %865 = fmul fast float %851, %309
  %866 = call float @dx.op.tertiary.f32(i32 46, float %310, float %852, float %865)  ; FMad(a,b,c)
  %867 = call float @dx.op.tertiary.f32(i32 46, float %311, float %853, float %866)  ; FMad(a,b,c)
  %868 = fadd fast float %867, %854
  %869 = fmul fast float %856, %309
  %870 = call float @dx.op.tertiary.f32(i32 46, float %310, float %857, float %869)  ; FMad(a,b,c)
  %871 = call float @dx.op.tertiary.f32(i32 46, float %311, float %858, float %870)  ; FMad(a,b,c)
  %872 = fadd fast float %871, %859
  %873 = fmul fast float %861, %309
  %874 = call float @dx.op.tertiary.f32(i32 46, float %310, float %862, float %873)  ; FMad(a,b,c)
  %875 = call float @dx.op.tertiary.f32(i32 46, float %311, float %863, float %874)  ; FMad(a,b,c)
  %876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %877 = extractvalue %dx.types.CBufRet.f32 %876, 0
  %878 = extractvalue %dx.types.CBufRet.f32 %876, 1
  %879 = extractvalue %dx.types.CBufRet.f32 %876, 3
  %880 = fmul fast float %879, %868
  %881 = fmul fast float %879, %872
  %882 = fadd fast float %880, %877
  %883 = fadd fast float %881, %878
  %884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.f32 %884, 0
  %886 = extractvalue %dx.types.CBufRet.f32 %884, 1
  %887 = fsub fast float %882, %885
  %888 = fsub fast float %883, %886
  %889 = fcmp fast olt float %887, 0.000000e+00
  %890 = fcmp fast olt float %888, 0.000000e+00
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %893 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %894 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %895 = extractvalue %dx.types.CBufRet.f32 %891, 3
  %896 = select i1 %889, float %892, float %894
  %897 = select i1 %890, float %893, float %895
  %898 = fmul fast float %896, %887
  %899 = fmul fast float %897, %888
  %900 = call float @dx.op.unary.f32(i32 6, float %898)  ; FAbs(value)
  %901 = call float @dx.op.unary.f32(i32 6, float %899)  ; FAbs(value)
  %902 = extractvalue %dx.types.CBufRet.f32 %304, 0
  %903 = call float @dx.op.binary.f32(i32 35, float %900, float %901)  ; FMax(a,b)
  %904 = fsub fast float %902, %903
  %905 = call float @dx.op.unary.f32(i32 7, float %904)  ; Saturate(value)
  %906 = fcmp fast ogt float %905, 0.000000e+00
  br i1 %906, label %907, label %948, !dx.controlflow.hints !76

; <label>:907                                     ; preds = %849
  %908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %20, float %882, float %883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %909 = extractvalue %dx.types.ResRet.f32 %908, 1
  %910 = fcmp fast ogt float %909, 0.000000e+00
  br i1 %910, label %911, label %943, !dx.controlflow.hints !77

; <label>:911                                     ; preds = %907
  %912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %20, float %882, float %883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %913 = extractvalue %dx.types.ResRet.f32 %912, 0
  %914 = extractvalue %dx.types.ResRet.f32 %912, 1
  %915 = extractvalue %dx.types.ResRet.f32 %912, 2
  %916 = extractvalue %dx.types.ResRet.f32 %912, 3
  %917 = fsub fast float 1.000000e+00, %864
  %918 = fsub fast float %917, %875
  %919 = fmul fast float %918, 0x400921FB60000000
  %920 = fadd fast float %919, 0x3FF921FB60000000
  %921 = call float @dx.op.unary.f32(i32 13, float %920)  ; Sin(value)
  %922 = fadd fast float %921, -1.000000e+00
  %923 = fmul fast float %922, 0x3FD45F3060000000
  %924 = fmul fast float %918, 0x401921FB60000000
  %925 = fadd fast float %924, 0x400921FB60000000
  %926 = call float @dx.op.unary.f32(i32 13, float %925)  ; Sin(value)
  %927 = fadd fast float %926, 0x3E7777A5C0000000
  %928 = fmul fast float %927, 0x3FC45F3060000000
  %929 = fmul fast float %918, 0x4022D97C80000000
  %930 = fadd fast float %929, 0x4012D97C80000000
  %931 = call float @dx.op.unary.f32(i32 13, float %930)  ; Sin(value)
  %932 = fadd fast float %931, 1.000000e+00
  %933 = fmul fast float %932, 0x3FBB2995E0000000
  %934 = fmul fast float %918, 0x402921FB60000000
  %935 = fadd fast float %934, 0x401921FB60000000
  %936 = call float @dx.op.unary.f32(i32 13, float %935)  ; Sin(value)
  %937 = fadd fast float %936, 0xBE8777A5C0000000
  %938 = fmul fast float %937, 0x3FB45F3060000000
  %939 = call float @dx.op.dot4.f32(i32 56, float %913, float %914, float %915, float %916, float %923, float %928, float %933, float %938)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %940 = fmul fast float %939, 0xBFF7154760000000
  %941 = call float @dx.op.unary.f32(i32 21, float %940)  ; Exp(value)
  %942 = call float @dx.op.unary.f32(i32 7, float %941)  ; Saturate(value)
  br label %943

; <label>:943                                     ; preds = %911, %907
  %944 = phi float [ %942, %911 ], [ 1.000000e+00, %907 ]
  %945 = fadd fast float %944, -1.000000e+00
  %946 = fmul fast float %945, %905
  %947 = fadd fast float %946, 1.000000e+00
  br label %948

; <label>:948                                     ; preds = %943, %849
  %949 = phi float [ %947, %943 ], [ 1.000000e+00, %849 ]
  %950 = fmul fast float %949, %845
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 1
  %953 = fsub fast float -0.000000e+00, %172
  %954 = fsub fast float -0.000000e+00, %173
  %955 = fsub fast float -0.000000e+00, %290
  %956 = fsub fast float %955, %289
  %957 = fadd fast float %956, %952
  %958 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %953, float %954, float %957)  ; Dot3(ax,ay,az,bx,by,bz)
  %959 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %297, float %298, float %299)  ; Dot3(ax,ay,az,bx,by,bz)
  %960 = fdiv fast float 1.000000e+00, %959
  %961 = fmul fast float %960, %958
  %962 = fmul fast float %297, %961
  %963 = fmul fast float %298, %961
  %964 = fadd fast float %962, %172
  %965 = fadd fast float %963, %173
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 0
  %968 = extractvalue %dx.types.CBufRet.f32 %966, 1
  %969 = fsub fast float %964, %967
  %970 = fsub fast float %965, %968
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 2
  %973 = extractvalue %dx.types.CBufRet.f32 %971, 3
  %974 = fmul fast float %969, %972
  %975 = fmul fast float %970, %973
  %976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.i32 %976, 3
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %984, label %979, !dx.controlflow.hints !78

; <label>:979                                     ; preds = %948
  %980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %19, float %974, float %975, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %981 = extractvalue %dx.types.ResRet.f32 %980, 0
  %982 = extractvalue %dx.types.ResRet.f32 %980, 1
  %983 = extractvalue %dx.types.ResRet.f32 %980, 2
  br label %989

; <label>:984                                     ; preds = %948
  %985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %20, float %974, float %975, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %986 = extractvalue %dx.types.ResRet.f32 %985, 0
  %987 = extractvalue %dx.types.ResRet.f32 %985, 1
  %988 = extractvalue %dx.types.ResRet.f32 %985, 2
  br label %989

; <label>:989                                     ; preds = %984, %979
  %990 = phi float [ %981, %979 ], [ %986, %984 ]
  %991 = phi float [ %982, %979 ], [ %987, %984 ]
  %992 = phi float [ %983, %979 ], [ %988, %984 ]
  %993 = extractvalue %dx.types.CBufRet.f32 %951, 2
  %994 = fmul fast float %993, %990
  %995 = extractvalue %dx.types.CBufRet.f32 %951, 0
  %996 = fsub fast float %961, %995
  %997 = fsub fast float %996, %994
  %998 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %997)  ; FMax(a,b)
  %999 = fmul fast float %998, %991
  %1000 = call float @dx.op.binary.f32(i32 36, float %992, float %999)  ; FMin(a,b)
  %1001 = fmul fast float %1000, 0xBFF7154760000000
  %1002 = call float @dx.op.unary.f32(i32 21, float %1001)  ; Exp(value)
  %1003 = fmul fast float %950, %1002
  br label %1004

; <label>:1004                                    ; preds = %989, %844
  %1005 = phi float [ %1003, %989 ], [ %845, %844 ]
  %1006 = call float @dx.op.binary.f32(i32 36, float %1005, float %1005)  ; FMin(a,b)
  %1007 = call float @dx.op.binary.f32(i32 36, float %1005, float %1006)  ; FMin(a,b)
  %1008 = fcmp fast ogt float %1007, 0.000000e+00
  br i1 %1008, label %1009, label %1033, !dx.controlflow.hints !79

; <label>:1009                                    ; preds = %1004
  %1010 = call float @dx.op.dot3.f32(i32 55, float %297, float %298, float %299, float %177, float %178, float %179)  ; Dot3(ax,ay,az,bx,by,bz)
  %1011 = fcmp fast ogt float %285, 0.000000e+00
  %1012 = select i1 %1011, float 1.000000e+00, float -1.000000e+00
  %1013 = fmul fast float %102, 7.812500e-03
  %1014 = fmul fast float %102, 3.125000e-02
  %1015 = fadd fast float %1014, -3.125000e-02
  %1016 = fmul fast float %1012, 5.000000e-01
  %1017 = fmul fast float %1016, %1010
  %1018 = fmul fast float %1012, %285
  %1019 = fadd fast float %1013, 4.921875e-01
  %1020 = fadd fast float %1019, %1017
  %1021 = fadd fast float %1013, 0x3FB25F3060000000
  %1022 = fadd fast float %1015, %1018
  %1023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %1020, float %1021, float %1022, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1024 = extractvalue %dx.types.ResRet.f32 %1023, 0
  %1025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.f32 %1025, 0
  %1027 = fmul fast float %1005, 0x400921FB60000000
  %1028 = fmul fast float %1027, %1024
  %1029 = fmul fast float %1028, %1026
  %1030 = fmul fast float %1029, %301
  %1031 = fmul fast float %1029, %302
  %1032 = fmul fast float %1029, %303
  br label %1033

; <label>:1033                                    ; preds = %1009, %1004, %278
  %1034 = phi float [ %1030, %1009 ], [ 0.000000e+00, %278 ], [ 0.000000e+00, %1004 ]
  %1035 = phi float [ %1031, %1009 ], [ 0.000000e+00, %278 ], [ 0.000000e+00, %1004 ]
  %1036 = phi float [ %1032, %1009 ], [ 0.000000e+00, %278 ], [ 0.000000e+00, %1004 ]
  %1037 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %121, float %122, float %123, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1038 = extractvalue %dx.types.ResRet.f32 %1037, 0
  %1039 = extractvalue %dx.types.ResRet.f32 %1037, 1
  %1040 = extractvalue %dx.types.ResRet.f32 %1037, 2
  %1041 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1038)  ; IsNaN(value)
  %1042 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1039)  ; IsNaN(value)
  %1043 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1040)  ; IsNaN(value)
  %1044 = or i1 %1041, %1042
  %1045 = or i1 %1044, %1043
  %1046 = select i1 %1045, float 0.000000e+00, float %1038
  %1047 = select i1 %1045, float 0.000000e+00, float %1039
  %1048 = select i1 %1045, float 0.000000e+00, float %1040
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 1
  %1051 = fmul fast float %1046, %1050
  %1052 = fmul fast float %1047, %1050
  %1053 = fmul fast float %1048, %1050
  %1054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.f32 %1054, 3
  %1056 = fmul fast float %1051, %1055
  %1057 = fmul fast float %1052, %1055
  %1058 = fmul fast float %1053, %1055
  %1059 = fadd fast float %1056, %1034
  %1060 = fadd fast float %1057, %1035
  %1061 = fadd fast float %1058, %1036
  br label %1062

; <label>:1062                                    ; preds = %1033, %258
  %1063 = phi float [ %282, %1033 ], [ %274, %258 ]
  %1064 = phi float [ %283, %1033 ], [ %275, %258 ]
  %1065 = phi float [ %284, %1033 ], [ %276, %258 ]
  %1066 = phi float [ %1059, %1033 ], [ 0.000000e+00, %258 ]
  %1067 = phi float [ %1060, %1033 ], [ 0.000000e+00, %258 ]
  %1068 = phi float [ %1061, %1033 ], [ 0.000000e+00, %258 ]
  %1069 = fmul fast float %1063, %273
  %1070 = fmul fast float %1064, %273
  %1071 = fmul fast float %1065, %273
  %1072 = fmul fast float %1069, %1066
  %1073 = fmul fast float %1070, %1067
  %1074 = fmul fast float %1071, %1068
  %1075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.CBufRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.CBufRet.f32 %1075, 2
  %1079 = extractvalue %dx.types.CBufRet.f32 %1075, 3
  %1080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1081 = extractvalue %dx.types.CBufRet.f32 %1080, 0
  %1082 = extractvalue %dx.types.CBufRet.f32 %1080, 1
  %1083 = extractvalue %dx.types.CBufRet.f32 %1080, 2
  %1084 = extractvalue %dx.types.CBufRet.f32 %1080, 3
  %1085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.f32 %1085, 0
  %1087 = extractvalue %dx.types.CBufRet.f32 %1085, 1
  %1088 = extractvalue %dx.types.CBufRet.f32 %1085, 2
  %1089 = extractvalue %dx.types.CBufRet.f32 %1085, 3
  %1090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.f32 %1090, 0
  %1092 = extractvalue %dx.types.CBufRet.f32 %1090, 1
  %1093 = extractvalue %dx.types.CBufRet.f32 %1090, 2
  %1094 = extractvalue %dx.types.CBufRet.f32 %1090, 3
  %1095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1096 = extractvalue %dx.types.CBufRet.f32 %1095, 3
  %1097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.f32 %1097, 3
  %1099 = extractvalue %dx.types.CBufRet.f32 %1097, 0
  %1100 = extractvalue %dx.types.CBufRet.f32 %1097, 1
  %1101 = extractvalue %dx.types.CBufRet.f32 %1097, 2
  %1102 = fcmp fast olt float %1101, -5.000000e-01
  %1103 = fmul fast float %176, %175
  %1104 = fadd fast float %1103, %1079
  %1105 = call float @dx.op.dot3.f32(i32 55, float %177, float %178, float %179, float %1076, float %1077, float %1078)  ; Dot3(ax,ay,az,bx,by,bz)
  %1106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.i32 %1106, 1
  %1108 = and i32 %1107, 1
  %1109 = icmp ne i32 %1108, 0
  %1110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1111 = extractvalue %dx.types.CBufRet.f32 %1110, 2
  %1112 = fcmp fast ogt float %1111, 0.000000e+00
  %1113 = and i1 %1109, %1112
  br i1 %1113, label %1114, label %1520, !dx.controlflow.hints !80

; <label>:1114                                    ; preds = %1062
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 3
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 2
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 2
  %1121 = fsub fast float %1118, %1120
  %1122 = and i32 %1107, 2
  %1123 = extractvalue %dx.types.CBufRet.i32 %1106, 0
  %1124 = call i32 @dx.op.binary.i32(i32 40, i32 %1123, i32 3)  ; UMin(a,b)
  %1125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1125, 0
  %1127 = extractvalue %dx.types.CBufRet.f32 %1125, 1
  %1128 = extractvalue %dx.types.CBufRet.f32 %1119, 0
  %1129 = extractvalue %dx.types.CBufRet.f32 %1119, 1
  %1130 = fsub fast float %1126, %1128
  %1131 = fsub fast float %1127, %1129
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 0
  %1134 = fcmp fast ogt float %1133, 0.000000e+00
  %1135 = fsub fast float -0.000000e+00, %1130
  %1136 = fsub fast float -0.000000e+00, %1131
  %1137 = call float @dx.op.dot2.f32(i32 54, float %177, float %178, float %177, float %178)  ; Dot2(ax,ay,bx,by)
  %1138 = call float @dx.op.dot2.f32(i32 54, float %177, float %178, float %1135, float %1136)  ; Dot2(ax,ay,bx,by)
  %1139 = fmul fast float %1138, 2.000000e+00
  %1140 = call float @dx.op.dot2.f32(i32 54, float %1135, float %1136, float %1135, float %1136)  ; Dot2(ax,ay,bx,by)
  %1141 = fmul fast float %1133, %1133
  %1142 = fsub fast float %1140, %1141
  %1143 = fmul fast float %1139, %1139
  %1144 = fmul fast float %1137, 4.000000e+00
  %1145 = fmul fast float %1144, %1142
  %1146 = fsub fast float %1143, %1145
  %1147 = fcmp fast ogt float %1146, 0.000000e+00
  br i1 %1147, label %1148, label %1163, !dx.controlflow.hints !81

; <label>:1148                                    ; preds = %1114
  %1149 = fcmp fast ogt float %1139, 0.000000e+00
  %1150 = call float @dx.op.unary.f32(i32 24, float %1146)  ; Sqrt(value)
  %1151 = fsub fast float -0.000000e+00, %1150
  %1152 = select i1 %1149, float %1150, float %1151
  %1153 = fadd fast float %1152, %1139
  %1154 = fmul float %1153, -5.000000e-01
  %1155 = fdiv fast float %1154, %1137
  %1156 = call float @dx.op.binary.f32(i32 35, float %1155, float 0.000000e+00)  ; FMax(a,b)
  %1157 = call float @dx.op.binary.f32(i32 36, float %1103, float %1156)  ; FMin(a,b)
  %1158 = fdiv fast float %1142, %1154
  %1159 = call float @dx.op.binary.f32(i32 35, float %1158, float 0.000000e+00)  ; FMax(a,b)
  %1160 = call float @dx.op.binary.f32(i32 36, float %1103, float %1159)  ; FMin(a,b)
  %1161 = call float @dx.op.binary.f32(i32 36, float %1157, float %1160)  ; FMin(a,b)
  %1162 = call float @dx.op.binary.f32(i32 35, float %1157, float %1160)  ; FMax(a,b)
  br label %1163

; <label>:1163                                    ; preds = %1148, %1114
  %1164 = phi float [ %1162, %1148 ], [ -1.000000e+00, %1114 ]
  %1165 = phi float [ %1161, %1148 ], [ -1.000000e+00, %1114 ]
  %1166 = phi i1 [ true, %1148 ], [ false, %1114 ]
  %1167 = and i1 %1134, %1166
  br i1 %1167, label %1168, label %1170, !dx.controlflow.hints !82

; <label>:1168                                    ; preds = %1163
  %1169 = fcmp fast oeq float %1165, %1164
  br i1 %1169, label %1473, label %1171, !dx.controlflow.hints !83

; <label>:1170                                    ; preds = %1163
  br i1 %1134, label %1473, label %1171, !dx.controlflow.hints !84

; <label>:1171                                    ; preds = %1170, %1168
  %1172 = phi float [ %1103, %1170 ], [ %1164, %1168 ]
  %1173 = phi float [ 0.000000e+00, %1170 ], [ %1165, %1168 ]
  %1174 = icmp ne i32 %1122, 0
  %1175 = fmul fast float %1172, %179
  %1176 = fadd fast float %1175, %1116
  %1177 = fmul fast float %1176, %1172
  %1178 = select i1 %1174, float 0.000000e+00, float %1177
  %1179 = fcmp fast oeq float %179, 0.000000e+00
  %1180 = fdiv fast float %1121, %179
  %1181 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1180)  ; FMax(a,b)
  %1182 = select i1 %1179, float %1172, float %1181
  %1183 = call float @dx.op.binary.f32(i32 36, float %1172, float %1182)  ; FMin(a,b)
  %1184 = fcmp fast ogt float %179, 0.000000e+00
  %1185 = fcmp fast olt float %1121, 0.000000e+00
  br i1 %1184, label %1186, label %1243, !dx.controlflow.hints !85

; <label>:1186                                    ; preds = %1171
  %1187 = icmp eq i32 %1122, 0
  br i1 %1185, label %1188, label %1232, !dx.controlflow.hints !86

; <label>:1188                                    ; preds = %1186
  %1189 = select i1 %1187, float %1172, float 0.000000e+00
  %1190 = fsub fast float -0.000000e+00, %1189
  %1191 = call float @dx.op.unary.f32(i32 6, float %1190)  ; FAbs(value)
  %1192 = fmul fast float %1189, %179
  %1193 = fadd fast float %1192, %1116
  %1194 = fmul fast float %1191, %1193
  %1195 = fsub fast float %1178, %1194
  %1196 = fsub fast float %1172, %1191
  %1197 = select i1 %1187, float %1196, float 0.000000e+00
  %1198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1198, 0
  %1200 = extractvalue %dx.types.CBufRet.f32 %1198, 1
  %1201 = extractvalue %dx.types.CBufRet.f32 %1198, 2
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.CBufRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.CBufRet.f32 %1202, 2
  %1206 = extractvalue %dx.types.CBufRet.f32 %1202, 3
  %1207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.f32 %1207, 3
  %1209 = call float @dx.op.binary.f32(i32 36, float %1195, float %1208)  ; FMin(a,b)
  %1210 = fmul fast float %1206, %1197
  %1211 = call float @dx.op.unary.f32(i32 7, float %1210)  ; Saturate(value)
  %1212 = fsub fast float %1203, %1199
  %1213 = fsub fast float %1204, %1200
  %1214 = fsub fast float %1205, %1201
  %1215 = fmul fast float %1211, %1212
  %1216 = fmul fast float %1211, %1213
  %1217 = fmul fast float %1211, %1214
  %1218 = fadd fast float %1215, %1199
  %1219 = fadd fast float %1216, %1200
  %1220 = fadd fast float %1217, %1201
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.CBufRet.f32 %1221, 1
  %1224 = fadd fast float %1223, %1222
  %1225 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1221, 2
  %1227 = extractvalue %dx.types.CBufRet.f32 %1221, 3
  %1228 = fadd fast float %1227, %1226
  %1229 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1230 = fmul fast float %1225, %1209
  %1231 = fmul fast float %1230, %1229
  br label %1473

; <label>:1232                                    ; preds = %1186
  br i1 %1187, label %1233, label %1254, !dx.controlflow.hints !87

; <label>:1233                                    ; preds = %1232
  %1234 = call float @dx.op.binary.f32(i32 36, float %1183, float %1173)  ; FMin(a,b)
  %1235 = fsub fast float %1183, %1234
  %1236 = fsub fast float %1235, %1172
  %1237 = call float @dx.op.unary.f32(i32 6, float %1236)  ; FAbs(value)
  %1238 = fadd fast float %1235, %1172
  %1239 = fmul fast float %1238, %179
  %1240 = fadd fast float %1239, %1116
  %1241 = fmul fast float %1240, %1237
  %1242 = fsub fast float %1178, %1241
  br label %1254

; <label>:1243                                    ; preds = %1171
  br i1 %1185, label %1244, label %1254, !dx.controlflow.hints !88

; <label>:1244                                    ; preds = %1243
  %1245 = call float @dx.op.binary.f32(i32 35, float %1173, float %1183)  ; FMax(a,b)
  %1246 = icmp eq i32 %1122, 0
  %1247 = select i1 %1246, float %1183, float 0.000000e+00
  %1248 = fsub fast float -0.000000e+00, %1247
  %1249 = call float @dx.op.unary.f32(i32 6, float %1248)  ; FAbs(value)
  %1250 = fmul fast float %1247, %179
  %1251 = fadd fast float %1250, %1116
  %1252 = fmul fast float %1249, %1251
  %1253 = fsub fast float %1178, %1252
  br label %1254

; <label>:1254                                    ; preds = %1244, %1243, %1233, %1232
  %1255 = phi float [ %1173, %1232 ], [ %1173, %1233 ], [ %1245, %1244 ], [ %1173, %1243 ]
  %1256 = phi float [ 0.000000e+00, %1232 ], [ %1237, %1233 ], [ %1249, %1244 ], [ 0.000000e+00, %1243 ]
  %1257 = phi float [ %1178, %1232 ], [ %1242, %1233 ], [ %1253, %1244 ], [ %1178, %1243 ]
  %1258 = phi float [ %1183, %1232 ], [ %1183, %1233 ], [ %1172, %1244 ], [ %1172, %1243 ]
  %1259 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 0
  store float -1.000000e+00, float* %1259, align 4, !tbaa !37, !noalias !89
  %1260 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 1
  store float -1.000000e+00, float* %1260, align 4, !tbaa !37, !noalias !89
  %1261 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 2
  store float -1.000000e+00, float* %1261, align 4, !tbaa !37, !noalias !89
  %1262 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 0
  store float -1.000000e+00, float* %1262, align 4, !tbaa !37, !noalias !89
  %1263 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 1
  store float -1.000000e+00, float* %1263, align 4, !tbaa !37, !noalias !89
  %1264 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 2
  store float -1.000000e+00, float* %1264, align 4, !tbaa !37, !noalias !89
  %1265 = icmp sgt i32 %1124, 0
  br i1 %1265, label %1266, label %1327

; <label>:1266                                    ; preds = %1254
  br label %1267

; <label>:1267                                    ; preds = %1316, %1266
  %1268 = phi i32 [ %1317, %1316 ], [ 0, %1266 ]
  %1269 = phi i32 [ %1318, %1316 ], [ 0, %1266 ]
  %1270 = add nuw i32 %1269, 171
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %1270)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 0
  %1273 = extractvalue %dx.types.CBufRet.f32 %1271, 1
  %1274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.f32 %1274, 0
  %1276 = extractvalue %dx.types.CBufRet.f32 %1274, 1
  %1277 = fsub fast float %1272, %1275
  %1278 = fsub fast float %1273, %1276
  %1279 = extractvalue %dx.types.CBufRet.f32 %1271, 2
  %1280 = fsub fast float -0.000000e+00, %1277
  %1281 = fsub fast float -0.000000e+00, %1278
  %1282 = call float @dx.op.dot2.f32(i32 54, float %177, float %178, float %1280, float %1281)  ; Dot2(ax,ay,bx,by)
  %1283 = fmul fast float %1282, 2.000000e+00
  %1284 = call float @dx.op.dot2.f32(i32 54, float %1280, float %1281, float %1280, float %1281)  ; Dot2(ax,ay,bx,by)
  %1285 = fmul fast float %1279, %1279
  %1286 = fsub fast float %1284, %1285
  %1287 = fmul fast float %1283, %1283
  %1288 = fmul fast float %1144, %1286
  %1289 = fsub fast float %1287, %1288
  %1290 = fcmp fast ogt float %1289, 0.000000e+00
  br i1 %1290, label %1291, label %1306, !dx.controlflow.hints !81

; <label>:1291                                    ; preds = %1267
  %1292 = fcmp fast ogt float %1283, 0.000000e+00
  %1293 = call float @dx.op.unary.f32(i32 24, float %1289)  ; Sqrt(value)
  %1294 = fsub fast float -0.000000e+00, %1293
  %1295 = select i1 %1292, float %1293, float %1294
  %1296 = fadd fast float %1295, %1283
  %1297 = fmul float %1296, -5.000000e-01
  %1298 = fdiv fast float %1297, %1137
  %1299 = call float @dx.op.binary.f32(i32 35, float %1298, float 0.000000e+00)  ; FMax(a,b)
  %1300 = call float @dx.op.binary.f32(i32 36, float %1172, float %1299)  ; FMin(a,b)
  %1301 = fdiv fast float %1286, %1297
  %1302 = call float @dx.op.binary.f32(i32 35, float %1301, float 0.000000e+00)  ; FMax(a,b)
  %1303 = call float @dx.op.binary.f32(i32 36, float %1172, float %1302)  ; FMin(a,b)
  %1304 = call float @dx.op.binary.f32(i32 36, float %1300, float %1303)  ; FMin(a,b)
  %1305 = call float @dx.op.binary.f32(i32 35, float %1300, float %1303)  ; FMax(a,b)
  br label %1306

; <label>:1306                                    ; preds = %1291, %1267
  %1307 = phi float [ %1305, %1291 ], [ -1.000000e+00, %1267 ]
  %1308 = phi float [ %1304, %1291 ], [ -1.000000e+00, %1267 ]
  %1309 = phi i1 [ true, %1291 ], [ false, %1267 ]
  br i1 %1309, label %1310, label %1316, !dx.controlflow.hints !95

; <label>:1310                                    ; preds = %1306
  %1311 = call float @dx.op.binary.f32(i32 35, float %1255, float %1308)  ; FMax(a,b)
  %1312 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %1269
  store float %1311, float* %1312, align 4, !tbaa !37, !noalias !89
  %1313 = call float @dx.op.binary.f32(i32 35, float %1255, float %1307)  ; FMax(a,b)
  %1314 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %1269
  store float %1313, float* %1314, align 4, !tbaa !37, !noalias !89
  %1315 = add nsw i32 %1268, 1
  br label %1316

; <label>:1316                                    ; preds = %1310, %1306
  %1317 = phi i32 [ %1315, %1310 ], [ %1268, %1306 ]
  %1318 = add nuw nsw i32 %1269, 1
  %1319 = icmp eq i32 %1318, %1124
  br i1 %1319, label %1320, label %1267

; <label>:1320                                    ; preds = %1316
  %1321 = load float, float* %1261, align 4, !tbaa !37, !alias.scope !96, !noalias !99
  %1322 = load float, float* %1260, align 4, !tbaa !37, !alias.scope !102, !noalias !103
  %1323 = load float, float* %1259, align 4, !tbaa !37, !alias.scope !104, !noalias !105
  %1324 = load float, float* %1264, align 4, !tbaa !37, !alias.scope !106, !noalias !109
  %1325 = load float, float* %1263, align 4, !tbaa !37, !alias.scope !112, !noalias !113
  %1326 = load float, float* %1262, align 4, !tbaa !37, !alias.scope !114, !noalias !115
  br label %1327

; <label>:1327                                    ; preds = %1320, %1254
  %1328 = phi float [ -1.000000e+00, %1254 ], [ %1326, %1320 ]
  %1329 = phi float [ -1.000000e+00, %1254 ], [ %1325, %1320 ]
  %1330 = phi float [ -1.000000e+00, %1254 ], [ %1324, %1320 ]
  %1331 = phi float [ -1.000000e+00, %1254 ], [ %1323, %1320 ]
  %1332 = phi float [ -1.000000e+00, %1254 ], [ %1322, %1320 ]
  %1333 = phi float [ -1.000000e+00, %1254 ], [ %1321, %1320 ]
  %1334 = phi i32 [ 0, %1254 ], [ %1317, %1320 ]
  %1335 = call float @dx.op.binary.f32(i32 36, float %1332, float %1333)  ; FMin(a,b)
  %1336 = call float @dx.op.binary.f32(i32 36, float %1331, float %1335)  ; FMin(a,b)
  %1337 = call float @dx.op.binary.f32(i32 35, float %1331, float %1332)  ; FMax(a,b)
  %1338 = call float @dx.op.binary.f32(i32 36, float %1337, float %1333)  ; FMin(a,b)
  %1339 = call float @dx.op.binary.f32(i32 36, float %1331, float %1332)  ; FMin(a,b)
  %1340 = call float @dx.op.binary.f32(i32 35, float %1339, float %1338)  ; FMax(a,b)
  %1341 = call float @dx.op.binary.f32(i32 35, float %1332, float %1333)  ; FMax(a,b)
  %1342 = call float @dx.op.binary.f32(i32 35, float %1331, float %1341)  ; FMax(a,b)
  store float %1336, float* %1259, align 4, !tbaa !37, !alias.scope !104, !noalias !105
  store float %1340, float* %1260, align 4, !tbaa !37, !alias.scope !102, !noalias !103
  store float %1342, float* %1261, align 4, !tbaa !37, !alias.scope !96, !noalias !99
  %1343 = call float @dx.op.binary.f32(i32 36, float %1329, float %1330)  ; FMin(a,b)
  %1344 = call float @dx.op.binary.f32(i32 36, float %1328, float %1343)  ; FMin(a,b)
  %1345 = call float @dx.op.binary.f32(i32 35, float %1328, float %1329)  ; FMax(a,b)
  %1346 = call float @dx.op.binary.f32(i32 36, float %1345, float %1330)  ; FMin(a,b)
  %1347 = call float @dx.op.binary.f32(i32 36, float %1328, float %1329)  ; FMin(a,b)
  %1348 = call float @dx.op.binary.f32(i32 35, float %1347, float %1346)  ; FMax(a,b)
  %1349 = call float @dx.op.binary.f32(i32 35, float %1329, float %1330)  ; FMax(a,b)
  %1350 = call float @dx.op.binary.f32(i32 35, float %1328, float %1349)  ; FMax(a,b)
  store float %1344, float* %1262, align 4, !tbaa !37, !alias.scope !114, !noalias !115
  store float %1348, float* %1263, align 4, !tbaa !37, !alias.scope !112, !noalias !113
  store float %1350, float* %1264, align 4, !tbaa !37, !alias.scope !106, !noalias !109
  %1351 = sub nsw i32 3, %1334
  %1352 = icmp sgt i32 %1351, 2
  br i1 %1352, label %1353, label %1391, !dx.controlflow.hints !116

; <label>:1353                                    ; preds = %1327
  %1354 = icmp eq i32 %1122, 0
  %1355 = fsub fast float %1172, %1256
  %1356 = select i1 %1354, float %1355, float %1256
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 0
  %1359 = extractvalue %dx.types.CBufRet.f32 %1357, 1
  %1360 = extractvalue %dx.types.CBufRet.f32 %1357, 2
  %1361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1361, 0
  %1363 = extractvalue %dx.types.CBufRet.f32 %1361, 1
  %1364 = extractvalue %dx.types.CBufRet.f32 %1361, 2
  %1365 = extractvalue %dx.types.CBufRet.f32 %1361, 3
  %1366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1367 = extractvalue %dx.types.CBufRet.f32 %1366, 3
  %1368 = call float @dx.op.binary.f32(i32 36, float %1257, float %1367)  ; FMin(a,b)
  %1369 = fmul fast float %1365, %1356
  %1370 = call float @dx.op.unary.f32(i32 7, float %1369)  ; Saturate(value)
  %1371 = fsub fast float %1362, %1358
  %1372 = fsub fast float %1363, %1359
  %1373 = fsub fast float %1364, %1360
  %1374 = fmul fast float %1370, %1371
  %1375 = fmul fast float %1370, %1372
  %1376 = fmul fast float %1370, %1373
  %1377 = fadd fast float %1374, %1358
  %1378 = fadd fast float %1375, %1359
  %1379 = fadd fast float %1376, %1360
  %1380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1381 = extractvalue %dx.types.CBufRet.f32 %1380, 0
  %1382 = extractvalue %dx.types.CBufRet.f32 %1380, 1
  %1383 = fadd fast float %1382, %1381
  %1384 = call float @dx.op.unary.f32(i32 7, float %1383)  ; Saturate(value)
  %1385 = extractvalue %dx.types.CBufRet.f32 %1380, 2
  %1386 = extractvalue %dx.types.CBufRet.f32 %1380, 3
  %1387 = fadd fast float %1386, %1385
  %1388 = call float @dx.op.unary.f32(i32 7, float %1387)  ; Saturate(value)
  %1389 = fmul fast float %1384, %1368
  %1390 = fmul fast float %1389, %1388
  br label %1473

; <label>:1391                                    ; preds = %1327
  %1392 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %1351
  %1393 = load float, float* %1392, align 4, !tbaa !37, !noalias !89
  %1394 = fcmp fast olt float %1393, %1258
  %1395 = icmp sgt i32 %1334, 0
  %1396 = and i1 %1395, %1394
  br i1 %1396, label %1397, label %1434

; <label>:1397                                    ; preds = %1391
  br label %1398

; <label>:1398                                    ; preds = %1427, %1397
  %1399 = phi float [ %1428, %1427 ], [ %1256, %1397 ]
  %1400 = phi float [ %1429, %1427 ], [ %1257, %1397 ]
  %1401 = phi float [ %1409, %1427 ], [ %1393, %1397 ]
  %1402 = phi i32 [ %1406, %1427 ], [ %1351, %1397 ]
  %1403 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %1402
  %1404 = load float, float* %1403, align 4, !tbaa !37, !noalias !89
  %1405 = icmp slt i32 %1402, 2
  %1406 = add nsw i32 %1402, 1
  %1407 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %1406
  %1408 = load float, float* %1407, align 4, !tbaa !37, !noalias !89
  %1409 = select i1 %1405, float %1408, float %1172
  %1410 = call float @dx.op.binary.f32(i32 36, float %1409, float %1404)  ; FMin(a,b)
  %1411 = call float @dx.op.binary.f32(i32 36, float %1258, float %1410)  ; FMin(a,b)
  %1412 = icmp eq i32 %1122, 0
  %1413 = fadd fast float %1411, %1401
  %1414 = fmul fast float %1413, %179
  %1415 = fadd fast float %1414, %1116
  br i1 %1412, label %1421, label %1416, !dx.controlflow.hints !117

; <label>:1416                                    ; preds = %1398
  %1417 = fsub fast float %1411, %1401
  %1418 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1417)  ; FMax(a,b)
  %1419 = fmul fast float %1418, %1415
  %1420 = fadd fast float %1419, %1400
  br label %1427

; <label>:1421                                    ; preds = %1398
  %1422 = fsub fast float %1401, %1411
  %1423 = call float @dx.op.unary.f32(i32 6, float %1422)  ; FAbs(value)
  %1424 = fadd fast float %1423, %1399
  %1425 = fmul fast float %1423, %1415
  %1426 = fsub fast float %1400, %1425
  br label %1427

; <label>:1427                                    ; preds = %1421, %1416
  %1428 = phi float [ %1418, %1416 ], [ %1424, %1421 ]
  %1429 = phi float [ %1420, %1416 ], [ %1426, %1421 ]
  %1430 = fcmp fast olt float %1409, %1258
  %1431 = icmp slt i32 %1406, 3
  %1432 = and i1 %1431, %1430
  br i1 %1432, label %1398, label %1433

; <label>:1433                                    ; preds = %1427
  br label %1434

; <label>:1434                                    ; preds = %1433, %1391
  %1435 = phi float [ %1256, %1391 ], [ %1428, %1433 ]
  %1436 = phi float [ %1257, %1391 ], [ %1429, %1433 ]
  %1437 = fsub fast float %1172, %1435
  %1438 = select i1 %1174, float %1435, float %1437
  %1439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1440 = extractvalue %dx.types.CBufRet.f32 %1439, 0
  %1441 = extractvalue %dx.types.CBufRet.f32 %1439, 1
  %1442 = extractvalue %dx.types.CBufRet.f32 %1439, 2
  %1443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1444 = extractvalue %dx.types.CBufRet.f32 %1443, 0
  %1445 = extractvalue %dx.types.CBufRet.f32 %1443, 1
  %1446 = extractvalue %dx.types.CBufRet.f32 %1443, 2
  %1447 = extractvalue %dx.types.CBufRet.f32 %1443, 3
  %1448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1449 = extractvalue %dx.types.CBufRet.f32 %1448, 3
  %1450 = call float @dx.op.binary.f32(i32 36, float %1436, float %1449)  ; FMin(a,b)
  %1451 = fmul fast float %1447, %1438
  %1452 = call float @dx.op.unary.f32(i32 7, float %1451)  ; Saturate(value)
  %1453 = fsub fast float %1444, %1440
  %1454 = fsub fast float %1445, %1441
  %1455 = fsub fast float %1446, %1442
  %1456 = fmul fast float %1452, %1453
  %1457 = fmul fast float %1452, %1454
  %1458 = fmul fast float %1452, %1455
  %1459 = fadd fast float %1456, %1440
  %1460 = fadd fast float %1457, %1441
  %1461 = fadd fast float %1458, %1442
  %1462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1463 = extractvalue %dx.types.CBufRet.f32 %1462, 0
  %1464 = extractvalue %dx.types.CBufRet.f32 %1462, 1
  %1465 = fadd fast float %1464, %1463
  %1466 = call float @dx.op.unary.f32(i32 7, float %1465)  ; Saturate(value)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1462, 2
  %1468 = extractvalue %dx.types.CBufRet.f32 %1462, 3
  %1469 = fadd fast float %1468, %1467
  %1470 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  %1471 = fmul fast float %1466, %1450
  %1472 = fmul fast float %1471, %1470
  br label %1473

; <label>:1473                                    ; preds = %1434, %1353, %1188, %1170, %1168
  %1474 = phi float [ %1197, %1188 ], [ %1356, %1353 ], [ %1438, %1434 ], [ 0.000000e+00, %1168 ], [ 0.000000e+00, %1170 ]
  %1475 = phi float [ %1231, %1188 ], [ %1390, %1353 ], [ %1472, %1434 ], [ 0.000000e+00, %1168 ], [ 0.000000e+00, %1170 ]
  %1476 = phi float [ %1218, %1188 ], [ %1377, %1353 ], [ %1459, %1434 ], [ 0.000000e+00, %1168 ], [ 0.000000e+00, %1170 ]
  %1477 = phi float [ %1219, %1188 ], [ %1378, %1353 ], [ %1460, %1434 ], [ 0.000000e+00, %1168 ], [ 0.000000e+00, %1170 ]
  %1478 = phi float [ %1220, %1188 ], [ %1379, %1353 ], [ %1461, %1434 ], [ 0.000000e+00, %1168 ], [ 0.000000e+00, %1170 ]
  %1479 = fmul fast float %1111, %1475
  %1480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1481 = extractvalue %dx.types.CBufRet.f32 %1480, 2
  %1482 = fsub fast float %1118, %1481
  %1483 = fcmp fast olt float %1479, -2.000000e+01
  %1484 = call float @dx.op.unary.f32(i32 21, float %1479)  ; Exp(value)
  %1485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1486 = extractvalue %dx.types.CBufRet.f32 %1485, 2
  %1487 = extractvalue %dx.types.CBufRet.f32 %1485, 3
  %1488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1489 = extractvalue %dx.types.CBufRet.f32 %1488, 2
  %1490 = fmul fast float %1487, %1482
  %1491 = call float @dx.op.unary.f32(i32 7, float %1490)  ; Saturate(value)
  %1492 = fsub fast float 1.000000e+00, %1491
  %1493 = fmul fast float %179, 5.000000e-01
  %1494 = fadd fast float %1493, 5.000000e-01
  %1495 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  %1496 = fsub fast float 1.000000e+00, %1495
  %1497 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1492)  ; FMax(a,b)
  %1498 = fdiv fast float %1496, %1497
  %1499 = fsub fast float %1482, %167
  %1500 = call float @dx.op.unary.f32(i32 6, float %1499)  ; FAbs(value)
  %1501 = fmul fast float %1500, %1486
  %1502 = call float @dx.op.unary.f32(i32 7, float %1498)  ; Saturate(value)
  %1503 = fsub fast float 1.000000e+00, %1501
  %1504 = fmul fast float %1503, %1502
  %1505 = fadd fast float %1504, %1501
  %1506 = fmul fast float %1489, %1482
  %1507 = call float @dx.op.unary.f32(i32 7, float %1506)  ; Saturate(value)
  %1508 = fsub fast float 1.000000e+00, %1505
  %1509 = fmul fast float %1508, %1507
  %1510 = fadd fast float %1509, %1505
  %1511 = call float @dx.op.unary.f32(i32 7, float %1510)  ; Saturate(value)
  %1512 = fadd fast float %1484, -1.000000e+00
  %1513 = select i1 %1483, float -1.000000e+00, float %1512
  %1514 = fmul fast float %1511, %1513
  %1515 = fadd fast float %1514, 1.000000e+00
  %1516 = fsub fast float -0.000000e+00, %1514
  %1517 = fmul fast float %1476, %1516
  %1518 = fmul fast float %1477, %1516
  %1519 = fmul fast float %1478, %1516
  br label %1520

; <label>:1520                                    ; preds = %1473, %1062
  %1521 = phi float [ %1474, %1473 ], [ 0.000000e+00, %1062 ]
  %1522 = phi float [ %1515, %1473 ], [ 1.000000e+00, %1062 ]
  %1523 = phi float [ %1517, %1473 ], [ 0.000000e+00, %1062 ]
  %1524 = phi float [ %1518, %1473 ], [ 0.000000e+00, %1062 ]
  %1525 = phi float [ %1519, %1473 ], [ 0.000000e+00, %1062 ]
  %1526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1527 = extractvalue %dx.types.CBufRet.f32 %1526, 1
  %1528 = fsub fast float 1.000000e+00, %1522
  %1529 = fmul fast float %1528, %1104
  %1530 = fmul fast float %1529, %1527
  %1531 = fsub fast float %1104, %1530
  br i1 %1102, label %1532, label %1561, !dx.controlflow.hints !118

; <label>:1532                                    ; preds = %1520
  %1533 = fmul fast float %1105, %1099
  %1534 = fadd fast float %1533, %1100
  %1535 = call float @dx.op.unary.f32(i32 7, float %1534)  ; Saturate(value)
  %1536 = fmul fast float %1081, %1531
  %1537 = fsub fast float -0.000000e+00, %1536
  %1538 = fmul fast float %1082, %1531
  %1539 = fsub fast float -0.000000e+00, %1538
  %1540 = call float @dx.op.unary.f32(i32 21, float %1537)  ; Exp(value)
  %1541 = call float @dx.op.unary.f32(i32 21, float %1539)  ; Exp(value)
  %1542 = call float @dx.op.binary.f32(i32 35, float %1089, float %1540)  ; FMax(a,b)
  %1543 = call float @dx.op.binary.f32(i32 35, float %1089, float %1541)  ; FMax(a,b)
  %1544 = fsub fast float %1543, %1542
  %1545 = fmul fast float %1544, %1535
  %1546 = fadd fast float %1545, %1542
  %1547 = call float @dx.op.unary.f32(i32 7, float %1546)  ; Saturate(value)
  %1548 = fsub fast float %1086, %1091
  %1549 = fsub fast float %1087, %1092
  %1550 = fsub fast float %1088, %1093
  %1551 = fmul fast float %1535, %1548
  %1552 = fmul fast float %1535, %1549
  %1553 = fmul fast float %1535, %1550
  %1554 = fadd fast float %1551, %1091
  %1555 = fadd fast float %1552, %1092
  %1556 = fadd fast float %1553, %1093
  %1557 = fsub fast float 1.000000e+00, %1547
  %1558 = fmul fast float %1557, %1554
  %1559 = fmul fast float %1557, %1555
  %1560 = fmul fast float %1557, %1556
  br label %1620

; <label>:1561                                    ; preds = %1520
  %1562 = fmul fast float %1531, %1098
  %1563 = call float @dx.op.unary.f32(i32 7, float %1562)  ; Saturate(value)
  %1564 = fsub fast float 2.000000e+00, %1563
  %1565 = fmul fast float %1563, 9.921875e-01
  %1566 = fmul fast float %1565, %1564
  %1567 = fadd fast float %1566, 3.906250e-03
  %1568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %20, float %1567, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1569 = extractvalue %dx.types.ResRet.f32 %1568, 0
  %1570 = fsub fast float %1563, %1569
  %1571 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1570)  ; FMax(a,b)
  %1572 = fmul fast float %1084, %167
  %1573 = call float @dx.op.unary.f32(i32 6, float %1572)  ; FAbs(value)
  %1574 = fcmp fast ogt float %1573, 0x3EB0C6F7A0000000
  br i1 %1574, label %1575, label %1581, !dx.controlflow.hints !119

; <label>:1575                                    ; preds = %1561
  %1576 = fmul fast float %1572, 0xBFF7154760000000
  %1577 = call float @dx.op.unary.f32(i32 21, float %1576)  ; Exp(value)
  %1578 = fsub fast float 1.000000e+00, %1577
  %1579 = fdiv fast float %1578, %1572
  %1580 = fmul fast float %1579, %1094
  br label %1581

; <label>:1581                                    ; preds = %1575, %1561
  %1582 = phi float [ %1580, %1575 ], [ %1094, %1561 ]
  %1583 = fadd fast float %1582, %1096
  %1584 = fmul fast float %1583, %1571
  %1585 = fmul fast float %1081, %1584
  %1586 = fsub fast float -0.000000e+00, %1585
  %1587 = fmul fast float %1082, %1584
  %1588 = fsub fast float -0.000000e+00, %1587
  %1589 = fmul fast float %1083, %1584
  %1590 = fsub fast float -0.000000e+00, %1589
  %1591 = call float @dx.op.unary.f32(i32 21, float %1586)  ; Exp(value)
  %1592 = call float @dx.op.unary.f32(i32 21, float %1588)  ; Exp(value)
  %1593 = call float @dx.op.unary.f32(i32 21, float %1590)  ; Exp(value)
  %1594 = fmul fast float %1105, %1105
  %1595 = fadd fast float %1594, 1.000000e+00
  %1596 = fmul fast float %1595, 0x3FAE8EC8A0000000
  %1597 = fmul fast float %1596, %1091
  %1598 = fmul fast float %1596, %1092
  %1599 = fmul fast float %1596, %1093
  %1600 = fmul fast float %1105, %1089
  %1601 = fsub fast float 1.000000e+00, %1600
  %1602 = fmul fast float %1089, %1089
  %1603 = fsub fast float 1.000000e+00, %1602
  %1604 = fmul fast float %1603, 0x3FB45F3060000000
  %1605 = fmul fast float %1601, %1601
  %1606 = fdiv fast float 1.000000e+00, %1605
  %1607 = fmul fast float %1604, %1606
  %1608 = fmul fast float %1607, %1086
  %1609 = fmul fast float %1607, %1087
  %1610 = fmul fast float %1607, %1088
  %1611 = fadd fast float %1608, %1597
  %1612 = fadd fast float %1609, %1598
  %1613 = fadd fast float %1610, %1599
  %1614 = fsub fast float 1.000000e+00, %1591
  %1615 = fsub fast float 1.000000e+00, %1592
  %1616 = fsub fast float 1.000000e+00, %1593
  %1617 = fmul fast float %1611, %1614
  %1618 = fmul fast float %1612, %1615
  %1619 = fmul fast float %1613, %1616
  br label %1620

; <label>:1620                                    ; preds = %1581, %1532
  %1621 = phi float [ %1558, %1532 ], [ %1617, %1581 ]
  %1622 = phi float [ %1559, %1532 ], [ %1618, %1581 ]
  %1623 = phi float [ %1560, %1532 ], [ %1619, %1581 ]
  %1624 = phi float [ %1547, %1532 ], [ %1591, %1581 ]
  %1625 = phi float [ %1547, %1532 ], [ %1592, %1581 ]
  %1626 = phi float [ %1547, %1532 ], [ %1593, %1581 ]
  br i1 %1113, label %1627, label %1825, !dx.controlflow.hints !120

; <label>:1627                                    ; preds = %1620
  %1628 = extractvalue %dx.types.CBufRet.f32 %1526, 0
  %1629 = fmul fast float %1628, %1528
  %1630 = fsub fast float %1523, %1621
  %1631 = fsub fast float %1524, %1622
  %1632 = fsub fast float %1525, %1623
  %1633 = fmul fast float %1629, %1630
  %1634 = fmul fast float %1629, %1631
  %1635 = fmul fast float %1629, %1632
  %1636 = fadd fast float %1633, %1621
  %1637 = fadd fast float %1634, %1622
  %1638 = fadd fast float %1635, %1623
  %1639 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1624)  ; FMax(a,b)
  %1640 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1625)  ; FMax(a,b)
  %1641 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1626)  ; FMax(a,b)
  %1642 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1522)  ; FMax(a,b)
  %1643 = call float @dx.op.binary.f32(i32 35, float %1521, float %1531)  ; FMax(a,b)
  %1644 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1643)  ; FMax(a,b)
  %1645 = fdiv fast float %1521, %1644
  %1646 = call float @dx.op.unary.f32(i32 7, float %1645)  ; Saturate(value)
  %1647 = fdiv fast float %1531, %1644
  %1648 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1649 = fcmp fast une float %1642, 1.000000e+00
  br i1 %1649, label %1650, label %1663, !dx.controlflow.hints !121

; <label>:1650                                    ; preds = %1627
  %1651 = call float @dx.op.unary.f32(i32 23, float %1642)  ; Log(value)
  %1652 = fmul fast float %1651, 0x3FE62E4300000000
  %1653 = fmul fast float %1523, %1652
  %1654 = fsub fast float -0.000000e+00, %1653
  %1655 = fmul fast float %1524, %1652
  %1656 = fsub fast float -0.000000e+00, %1655
  %1657 = fmul fast float %1525, %1652
  %1658 = fsub fast float -0.000000e+00, %1657
  %1659 = fsub fast float 1.000000e+00, %1642
  %1660 = fdiv fast float %1654, %1659
  %1661 = fdiv fast float %1656, %1659
  %1662 = fdiv fast float %1658, %1659
  br label %1663

; <label>:1663                                    ; preds = %1650, %1627
  %1664 = phi float [ %1660, %1650 ], [ %1523, %1627 ]
  %1665 = phi float [ %1661, %1650 ], [ %1524, %1627 ]
  %1666 = phi float [ %1662, %1650 ], [ %1525, %1627 ]
  %1667 = phi float [ %1652, %1650 ], [ 0.000000e+00, %1627 ]
  %1668 = fcmp fast une float %1639, 1.000000e+00
  br i1 %1668, label %1669, label %1676, !dx.controlflow.hints !122

; <label>:1669                                    ; preds = %1663
  %1670 = call float @dx.op.unary.f32(i32 23, float %1639)  ; Log(value)
  %1671 = fmul fast float %1670, 0x3FE62E4300000000
  %1672 = fmul fast float %1636, %1671
  %1673 = fsub fast float -0.000000e+00, %1672
  %1674 = fsub fast float 1.000000e+00, %1639
  %1675 = fdiv fast float %1673, %1674
  br label %1676

; <label>:1676                                    ; preds = %1669, %1663
  %1677 = phi float [ %1675, %1669 ], [ %1636, %1663 ]
  %1678 = phi float [ %1671, %1669 ], [ 0.000000e+00, %1663 ]
  %1679 = fcmp fast une float %1640, 1.000000e+00
  br i1 %1679, label %1680, label %1687, !dx.controlflow.hints !122

; <label>:1680                                    ; preds = %1676
  %1681 = call float @dx.op.unary.f32(i32 23, float %1640)  ; Log(value)
  %1682 = fmul fast float %1681, 0x3FE62E4300000000
  %1683 = fmul fast float %1637, %1682
  %1684 = fsub fast float -0.000000e+00, %1683
  %1685 = fsub fast float 1.000000e+00, %1640
  %1686 = fdiv fast float %1684, %1685
  br label %1687

; <label>:1687                                    ; preds = %1680, %1676
  %1688 = phi float [ %1686, %1680 ], [ %1637, %1676 ]
  %1689 = phi float [ %1682, %1680 ], [ 0.000000e+00, %1676 ]
  %1690 = fcmp fast une float %1641, 1.000000e+00
  br i1 %1690, label %1691, label %1698, !dx.controlflow.hints !122

; <label>:1691                                    ; preds = %1687
  %1692 = call float @dx.op.unary.f32(i32 23, float %1641)  ; Log(value)
  %1693 = fmul fast float %1692, 0x3FE62E4300000000
  %1694 = fmul fast float %1638, %1693
  %1695 = fsub fast float -0.000000e+00, %1694
  %1696 = fsub fast float 1.000000e+00, %1641
  %1697 = fdiv fast float %1695, %1696
  br label %1698

; <label>:1698                                    ; preds = %1691, %1687
  %1699 = phi float [ %1697, %1691 ], [ %1638, %1687 ]
  %1700 = phi float [ %1693, %1691 ], [ 0.000000e+00, %1687 ]
  %1701 = fmul fast float %1664, %1648
  %1702 = fmul fast float %1665, %1648
  %1703 = fmul fast float %1666, %1648
  %1704 = fmul fast float %1667, %1648
  %1705 = fmul fast float %1677, %1646
  %1706 = fmul fast float %1688, %1646
  %1707 = fmul fast float %1699, %1646
  %1708 = fmul fast float %1678, %1646
  %1709 = fmul fast float %1689, %1646
  %1710 = fmul fast float %1700, %1646
  %1711 = fadd fast float %1705, %1701
  %1712 = fadd fast float %1706, %1702
  %1713 = fadd fast float %1707, %1703
  %1714 = fadd fast float %1708, %1704
  %1715 = fadd fast float %1709, %1704
  %1716 = fadd fast float %1710, %1704
  %1717 = fcmp fast une float %1714, 0.000000e+00
  br i1 %1717, label %1718, label %1725, !dx.controlflow.hints !123

; <label>:1718                                    ; preds = %1698
  %1719 = fmul fast float %1714, 0x3FF7154760000000
  %1720 = call float @dx.op.unary.f32(i32 21, float %1719)  ; Exp(value)
  %1721 = fsub fast float 1.000000e+00, %1720
  %1722 = fmul fast float %1711, %1721
  %1723 = fsub fast float -0.000000e+00, %1722
  %1724 = fdiv fast float %1723, %1714
  br label %1725

; <label>:1725                                    ; preds = %1718, %1698
  %1726 = phi float [ %1720, %1718 ], [ 1.000000e+00, %1698 ]
  %1727 = phi float [ %1724, %1718 ], [ %1711, %1698 ]
  %1728 = fcmp fast une float %1715, 0.000000e+00
  br i1 %1728, label %1729, label %1736, !dx.controlflow.hints !123

; <label>:1729                                    ; preds = %1725
  %1730 = fmul fast float %1715, 0x3FF7154760000000
  %1731 = call float @dx.op.unary.f32(i32 21, float %1730)  ; Exp(value)
  %1732 = fsub fast float 1.000000e+00, %1731
  %1733 = fmul fast float %1712, %1732
  %1734 = fsub fast float -0.000000e+00, %1733
  %1735 = fdiv fast float %1734, %1715
  br label %1736

; <label>:1736                                    ; preds = %1729, %1725
  %1737 = phi float [ %1731, %1729 ], [ 1.000000e+00, %1725 ]
  %1738 = phi float [ %1735, %1729 ], [ %1712, %1725 ]
  %1739 = fcmp fast une float %1716, 0.000000e+00
  br i1 %1739, label %1740, label %1747, !dx.controlflow.hints !123

; <label>:1740                                    ; preds = %1736
  %1741 = fmul fast float %1716, 0x3FF7154760000000
  %1742 = call float @dx.op.unary.f32(i32 21, float %1741)  ; Exp(value)
  %1743 = fsub fast float 1.000000e+00, %1742
  %1744 = fmul fast float %1713, %1743
  %1745 = fsub fast float -0.000000e+00, %1744
  %1746 = fdiv fast float %1745, %1716
  br label %1747

; <label>:1747                                    ; preds = %1740, %1736
  %1748 = phi float [ %1742, %1740 ], [ 1.000000e+00, %1736 ]
  %1749 = phi float [ %1746, %1740 ], [ %1713, %1736 ]
  %1750 = fcmp fast ogt float %1646, %1648
  br i1 %1750, label %1751, label %1771, !dx.controlflow.hints !124

; <label>:1751                                    ; preds = %1747
  %1752 = fsub fast float 1.000000e+00, %1648
  %1753 = fmul fast float %1664, %1752
  %1754 = fmul fast float %1665, %1752
  %1755 = fmul fast float %1666, %1752
  %1756 = fmul fast float %1667, %1752
  %1757 = fcmp fast une float %1756, 0.000000e+00
  br i1 %1757, label %1758, label %1809, !dx.controlflow.hints !125

; <label>:1758                                    ; preds = %1751
  %1759 = fmul fast float %1756, 0x3FF7154760000000
  %1760 = call float @dx.op.unary.f32(i32 21, float %1759)  ; Exp(value)
  %1761 = fsub fast float 1.000000e+00, %1760
  %1762 = fmul fast float %1753, %1761
  %1763 = fsub fast float -0.000000e+00, %1762
  %1764 = fmul fast float %1754, %1761
  %1765 = fsub fast float -0.000000e+00, %1764
  %1766 = fmul fast float %1755, %1761
  %1767 = fsub fast float -0.000000e+00, %1766
  %1768 = fdiv fast float %1763, %1756
  %1769 = fdiv fast float %1765, %1756
  %1770 = fdiv fast float %1767, %1756
  br label %1809

; <label>:1771                                    ; preds = %1747
  %1772 = fsub fast float 1.000000e+00, %1646
  %1773 = fmul fast float %1677, %1772
  %1774 = fmul fast float %1688, %1772
  %1775 = fmul fast float %1699, %1772
  %1776 = fmul fast float %1678, %1772
  %1777 = fmul fast float %1689, %1772
  %1778 = fmul fast float %1700, %1772
  %1779 = fcmp fast une float %1776, 0.000000e+00
  br i1 %1779, label %1780, label %1787, !dx.controlflow.hints !123

; <label>:1780                                    ; preds = %1771
  %1781 = fmul fast float %1776, 0x3FF7154760000000
  %1782 = call float @dx.op.unary.f32(i32 21, float %1781)  ; Exp(value)
  %1783 = fsub fast float 1.000000e+00, %1782
  %1784 = fmul fast float %1773, %1783
  %1785 = fsub fast float -0.000000e+00, %1784
  %1786 = fdiv fast float %1785, %1776
  br label %1787

; <label>:1787                                    ; preds = %1780, %1771
  %1788 = phi float [ %1786, %1780 ], [ %1773, %1771 ]
  %1789 = phi float [ %1782, %1780 ], [ 1.000000e+00, %1771 ]
  %1790 = fcmp fast une float %1777, 0.000000e+00
  br i1 %1790, label %1791, label %1798, !dx.controlflow.hints !123

; <label>:1791                                    ; preds = %1787
  %1792 = fmul fast float %1777, 0x3FF7154760000000
  %1793 = call float @dx.op.unary.f32(i32 21, float %1792)  ; Exp(value)
  %1794 = fsub fast float 1.000000e+00, %1793
  %1795 = fmul fast float %1774, %1794
  %1796 = fsub fast float -0.000000e+00, %1795
  %1797 = fdiv fast float %1796, %1777
  br label %1798

; <label>:1798                                    ; preds = %1791, %1787
  %1799 = phi float [ %1797, %1791 ], [ %1774, %1787 ]
  %1800 = phi float [ %1793, %1791 ], [ 1.000000e+00, %1787 ]
  %1801 = fcmp fast une float %1778, 0.000000e+00
  br i1 %1801, label %1802, label %1809, !dx.controlflow.hints !123

; <label>:1802                                    ; preds = %1798
  %1803 = fmul fast float %1778, 0x3FF7154760000000
  %1804 = call float @dx.op.unary.f32(i32 21, float %1803)  ; Exp(value)
  %1805 = fsub fast float 1.000000e+00, %1804
  %1806 = fmul fast float %1775, %1805
  %1807 = fsub fast float -0.000000e+00, %1806
  %1808 = fdiv fast float %1807, %1778
  br label %1809

; <label>:1809                                    ; preds = %1802, %1798, %1758, %1751
  %1810 = phi float [ %1808, %1802 ], [ %1770, %1758 ], [ %1755, %1751 ], [ %1775, %1798 ]
  %1811 = phi float [ %1799, %1802 ], [ %1769, %1758 ], [ %1754, %1751 ], [ %1799, %1798 ]
  %1812 = phi float [ %1788, %1802 ], [ %1768, %1758 ], [ %1753, %1751 ], [ %1788, %1798 ]
  %1813 = phi float [ %1804, %1802 ], [ %1760, %1758 ], [ 1.000000e+00, %1751 ], [ 1.000000e+00, %1798 ]
  %1814 = phi float [ %1800, %1802 ], [ %1760, %1758 ], [ 1.000000e+00, %1751 ], [ %1800, %1798 ]
  %1815 = phi float [ %1789, %1802 ], [ %1760, %1758 ], [ 1.000000e+00, %1751 ], [ %1789, %1798 ]
  %1816 = fmul fast float %1815, %1727
  %1817 = fmul fast float %1814, %1738
  %1818 = fmul fast float %1813, %1749
  %1819 = fadd fast float %1816, %1812
  %1820 = fadd fast float %1817, %1811
  %1821 = fadd fast float %1818, %1810
  %1822 = fmul fast float %1815, %1726
  %1823 = fmul fast float %1814, %1737
  %1824 = fmul fast float %1813, %1748
  br label %1825

; <label>:1825                                    ; preds = %1809, %1620
  %1826 = phi float [ %1824, %1809 ], [ %1626, %1620 ]
  %1827 = phi float [ %1823, %1809 ], [ %1625, %1620 ]
  %1828 = phi float [ %1822, %1809 ], [ %1624, %1620 ]
  %1829 = phi float [ %1821, %1809 ], [ %1623, %1620 ]
  %1830 = phi float [ %1820, %1809 ], [ %1622, %1620 ]
  %1831 = phi float [ %1819, %1809 ], [ %1621, %1620 ]
  %1832 = fmul fast float %1072, %1828
  %1833 = fmul fast float %1073, %1827
  %1834 = fmul fast float %1074, %1826
  %1835 = fmul fast float %273, 0xBFF7154760000000
  %1836 = call float @dx.op.unary.f32(i32 21, float %1835)  ; Exp(value)
  %1837 = call float @dx.op.unary.f32(i32 7, float %1836)  ; Saturate(value)
  %1838 = fsub fast float 1.000000e+00, %1837
  %1839 = fmul fast float %1838, %1831
  %1840 = fmul fast float %1838, %1830
  %1841 = fmul fast float %1838, %1829
  %1842 = fadd fast float %1839, %1832
  %1843 = fadd fast float %1840, %1833
  %1844 = fadd fast float %1841, %1834
  %1845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1846 = extractvalue %dx.types.CBufRet.f32 %1845, 0
  %1847 = fmul fast float %1846, %1842
  %1848 = fmul fast float %1843, %1846
  %1849 = fmul fast float %1844, %1846
  %1850 = fmul fast float %1848, 5.000000e-01
  %1851 = fadd fast float %1844, %1842
  %1852 = fmul fast float %1846, %1851
  %1853 = fmul fast float %1852, 2.500000e-01
  %1854 = fadd fast float %1853, %1850
  %1855 = call float @dx.op.unary.f32(i32 23, float %1854)  ; Log(value)
  %1856 = fmul fast float %1855, 0x3FE62E4300000000
  %1857 = fmul fast float %1856, %1856
  store float %183, float addrspace(3)* %184, align 4, !tbaa !37, !noalias !41
  %1858 = fmul fast float %1856, %183
  store float %1858, float addrspace(3)* %186, align 4, !tbaa !37, !noalias !41
  %1859 = fmul fast float %1857, %183
  store float %1859, float addrspace(3)* %188, align 4, !tbaa !37, !noalias !41
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1860 = load float, float addrspace(3)* %190, align 4, !tbaa !37, !noalias !41
  %1861 = fadd fast float %1860, %183
  %1862 = load float, float addrspace(3)* %193, align 4, !tbaa !37, !noalias !41
  %1863 = fadd fast float %1862, %1856
  %1864 = load float, float addrspace(3)* %196, align 4, !tbaa !37, !noalias !41
  %1865 = fadd fast float %1864, %1857
  store float %1861, float addrspace(3)* %184, align 4, !tbaa !37, !noalias !41
  store float %1863, float addrspace(3)* %186, align 4, !tbaa !37, !noalias !41
  store float %1865, float addrspace(3)* %188, align 4, !tbaa !37, !noalias !41
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1866 = load float, float addrspace(3)* %200, align 4, !tbaa !37, !noalias !41
  %1867 = fadd fast float %1866, %1861
  %1868 = load float, float addrspace(3)* %203, align 4, !tbaa !37, !noalias !41
  %1869 = fadd fast float %1868, %1863
  %1870 = load float, float addrspace(3)* %206, align 4, !tbaa !37, !noalias !41
  %1871 = fadd fast float %1870, %1865
  store float %1867, float addrspace(3)* %184, align 4, !tbaa !37, !noalias !41
  store float %1869, float addrspace(3)* %186, align 4, !tbaa !37, !noalias !41
  store float %1871, float addrspace(3)* %188, align 4, !tbaa !37, !noalias !41
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1872 = load float, float addrspace(3)* %210, align 4, !tbaa !37, !noalias !41
  %1873 = fadd fast float %1872, %1867
  %1874 = load float, float addrspace(3)* %213, align 4, !tbaa !37, !noalias !41
  %1875 = fadd fast float %1874, %1869
  %1876 = fdiv fast float %1875, %1873
  br i1 %221, label %1877, label %1885, !dx.controlflow.hints !45

; <label>:1877                                    ; preds = %1825
  %1878 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %209
  %1879 = load float, float addrspace(3)* %1878, align 4, !tbaa !37, !noalias !41
  %1880 = fadd fast float %1879, %1871
  %1881 = fdiv fast float %1880, %1873
  %1882 = lshr i32 %52, 1
  %1883 = lshr i32 %53, 1
  %1884 = lshr i32 %54, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1882, i32 %1883, i32 %1884, float %1876, float %1881, float %1876, float %1876, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1885

; <label>:1885                                    ; preds = %1877, %1825
  br i1 %63, label %1920, label %1886, !dx.controlflow.hints !46

; <label>:1886                                    ; preds = %1885
  %1887 = fadd fast float %102, 0x3FE3C6EF40000000
  %1888 = call float @dx.op.unary.f32(i32 22, float %1887)  ; Frc(value)
  %1889 = call float @dx.op.unary.f32(i32 23, float %1847)  ; Log(value)
  %1890 = fadd fast float %1889, -7.000000e+00
  %1891 = call float @dx.op.unary.f32(i32 21, float %1890)  ; Exp(value)
  %1892 = fmul fast float %1888, 2.000000e+00
  %1893 = fadd fast float %1892, -1.000000e+00
  %1894 = fmul fast float %1891, %1893
  %1895 = fcmp fast ogt float %1847, 0.000000e+00
  %1896 = select i1 %1895, float %1894, float 0.000000e+00
  %1897 = fadd fast float %1896, %1847
  %1898 = fadd fast float %102, 0x3FF3C6EF40000000
  %1899 = call float @dx.op.unary.f32(i32 22, float %1898)  ; Frc(value)
  %1900 = call float @dx.op.unary.f32(i32 23, float %1848)  ; Log(value)
  %1901 = fadd fast float %1900, -7.000000e+00
  %1902 = call float @dx.op.unary.f32(i32 21, float %1901)  ; Exp(value)
  %1903 = fmul fast float %1899, 2.000000e+00
  %1904 = fadd fast float %1903, -1.000000e+00
  %1905 = fmul fast float %1902, %1904
  %1906 = fcmp fast ogt float %1848, 0.000000e+00
  %1907 = select i1 %1906, float %1905, float 0.000000e+00
  %1908 = fadd fast float %1907, %1848
  %1909 = fadd fast float %102, 0x3FFDAA66E0000000
  %1910 = call float @dx.op.unary.f32(i32 22, float %1909)  ; Frc(value)
  %1911 = call float @dx.op.unary.f32(i32 23, float %1849)  ; Log(value)
  %1912 = fadd fast float %1911, -6.000000e+00
  %1913 = call float @dx.op.unary.f32(i32 21, float %1912)  ; Exp(value)
  %1914 = fmul fast float %1910, 2.000000e+00
  %1915 = fadd fast float %1914, -1.000000e+00
  %1916 = fmul fast float %1913, %1915
  %1917 = fcmp fast ogt float %1849, 0.000000e+00
  %1918 = select i1 %1917, float %1916, float 0.000000e+00
  %1919 = fadd fast float %1918, %1849
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %52, i32 %53, i32 %54, float %1897, float %1908, float %1919, float %1897, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1920

; <label>:1920                                    ; preds = %1886, %1885
  %1921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.f32 %1921, 0
  %1923 = fmul fast float %1922, %273
  %1924 = fmul fast float %1923, 5.000000e-01
  %1925 = fadd fast float %266, %266
  %1926 = fmul fast float %272, %1925
  %1927 = fmul fast float %1922, %1926
  %1928 = fmul fast float %1927, 2.500000e-01
  %1929 = fadd fast float %1928, %1924
  %1930 = fmul fast float %1929, %1929
  store float %183, float addrspace(3)* %184, align 4, !tbaa !37, !noalias !41
  %1931 = fmul fast float %1929, %183
  store float %1931, float addrspace(3)* %186, align 4, !tbaa !37, !noalias !41
  %1932 = fmul fast float %1930, %183
  store float %1932, float addrspace(3)* %188, align 4, !tbaa !37, !noalias !41
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1933 = load float, float addrspace(3)* %190, align 4, !tbaa !37, !noalias !41
  %1934 = fadd fast float %1933, %183
  %1935 = load float, float addrspace(3)* %193, align 4, !tbaa !37, !noalias !41
  %1936 = fadd fast float %1929, %1935
  %1937 = load float, float addrspace(3)* %196, align 4, !tbaa !37, !noalias !41
  %1938 = fadd fast float %1930, %1937
  store float %1934, float addrspace(3)* %184, align 4, !tbaa !37, !noalias !41
  store float %1936, float addrspace(3)* %186, align 4, !tbaa !37, !noalias !41
  store float %1938, float addrspace(3)* %188, align 4, !tbaa !37, !noalias !41
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1939 = load float, float addrspace(3)* %200, align 4, !tbaa !37, !noalias !41
  %1940 = fadd fast float %1939, %1934
  %1941 = load float, float addrspace(3)* %203, align 4, !tbaa !37, !noalias !41
  %1942 = fadd fast float %1941, %1936
  %1943 = load float, float addrspace(3)* %206, align 4, !tbaa !37, !noalias !41
  %1944 = fadd fast float %1943, %1938
  store float %1940, float addrspace(3)* %184, align 4, !tbaa !37, !noalias !41
  store float %1942, float addrspace(3)* %186, align 4, !tbaa !37, !noalias !41
  store float %1944, float addrspace(3)* %188, align 4, !tbaa !37, !noalias !41
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1945 = load float, float addrspace(3)* %210, align 4, !tbaa !37, !noalias !41
  %1946 = fadd fast float %1945, %1940
  %1947 = load float, float addrspace(3)* %213, align 4, !tbaa !37, !noalias !41
  %1948 = fadd fast float %1947, %1942
  %1949 = fdiv fast float %1948, %1946
  br i1 %221, label %1950, label %1958, !dx.controlflow.hints !47

; <label>:1950                                    ; preds = %1920
  %1951 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %209
  %1952 = load float, float addrspace(3)* %1951, align 4, !tbaa !37, !noalias !41
  %1953 = fadd fast float %1952, %1944
  %1954 = fdiv fast float %1953, %1946
  %1955 = lshr i32 %52, 1
  %1956 = lshr i32 %53, 1
  %1957 = lshr i32 %54, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1955, i32 %1956, i32 %1957, float %1949, float %1954, float %1949, float %1949, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1958

; <label>:1958                                    ; preds = %1950, %1920
  br i1 %63, label %1987, label %1959, !dx.controlflow.hints !48

; <label>:1959                                    ; preds = %1958
  %1960 = fadd fast float %102, 0x3FE3C6EF40000000
  %1961 = call float @dx.op.unary.f32(i32 22, float %1960)  ; Frc(value)
  %1962 = call float @dx.op.unary.f32(i32 23, float %1923)  ; Log(value)
  %1963 = fadd fast float %1962, -7.000000e+00
  %1964 = call float @dx.op.unary.f32(i32 21, float %1963)  ; Exp(value)
  %1965 = fmul fast float %1961, 2.000000e+00
  %1966 = fadd fast float %1965, -1.000000e+00
  %1967 = fmul fast float %1964, %1966
  %1968 = fcmp fast ogt float %1923, 0.000000e+00
  %1969 = select i1 %1968, float %1967, float 0.000000e+00
  %1970 = fadd fast float %1969, %1923
  %1971 = fadd fast float %102, 0x3FF3C6EF40000000
  %1972 = call float @dx.op.unary.f32(i32 22, float %1971)  ; Frc(value)
  %1973 = fmul fast float %1972, 2.000000e+00
  %1974 = fadd fast float %1973, -1.000000e+00
  %1975 = fmul fast float %1964, %1974
  %1976 = select i1 %1968, float %1975, float 0.000000e+00
  %1977 = fadd fast float %1976, %1923
  %1978 = fadd fast float %102, 0x3FFDAA66E0000000
  %1979 = call float @dx.op.unary.f32(i32 22, float %1978)  ; Frc(value)
  %1980 = fadd fast float %1962, -6.000000e+00
  %1981 = call float @dx.op.unary.f32(i32 21, float %1980)  ; Exp(value)
  %1982 = fmul fast float %1979, 2.000000e+00
  %1983 = fadd fast float %1982, -1.000000e+00
  %1984 = fmul fast float %1981, %1983
  %1985 = select i1 %1968, float %1984, float 0.000000e+00
  %1986 = fadd fast float %1985, %1923
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %52, i32 %53, i32 %54, float %1970, float %1977, float %1986, float %1970, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1987

; <label>:1987                                    ; preds = %1959, %1958
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
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !20, !25, !28}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19}
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
!18 = !{i32 10, %"class.Texture1D<float>"* undef, !"", i32 0, i32 54, i32 1, i32 1, i32 0, !7}
!19 = !{i32 11, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!20 = !{!21, !22, !23, !24}
!21 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!22 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!23 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!24 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!28 = !{!29, !30, !31, !32, !33}
!29 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!32 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!34 = !{void ()* @cs_volumetric_forwardplus_scatter_global_afog, !"cs_volumetric_forwardplus_scatter_global_afog", null, !4, !35}
!35 = !{i32 0, i64 272, i32 4, !36}
!36 = !{i32 4, i32 4, i32 4}
!37 = !{!38, !38, i64 0}
!38 = !{!"float", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!42, !44}
!42 = distinct !{!42, !43, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!43 = distinct !{!43, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!44 = distinct !{!44, !43, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
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
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = !{!61, !61, i64 0}
!61 = !{!"int", !39, i64 0}
!62 = !{!63, !65, !67, !42, !44}
!63 = distinct !{!63, !64, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!64 = distinct !{!64, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!65 = distinct !{!65, !66, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!66 = distinct !{!66, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!67 = distinct !{!67, !68, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z: %agg.result"}
!68 = distinct !{!68, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z"}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = !{!90, !92, !94, !42, !44}
!90 = distinct !{!90, !91, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!91 = distinct !{!91, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!92 = distinct !{!92, !93, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!93 = distinct !{!93, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!94 = distinct !{!94, !93, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = !{!97}
!97 = distinct !{!97, !98, !"\01?sort@@YAXAIAM00@Z: %c"}
!98 = distinct !{!98, !"\01?sort@@YAXAIAM00@Z"}
!99 = !{!100, !101, !90, !92, !94, !42, !44}
!100 = distinct !{!100, !98, !"\01?sort@@YAXAIAM00@Z: %a"}
!101 = distinct !{!101, !98, !"\01?sort@@YAXAIAM00@Z: %b"}
!102 = !{!101}
!103 = !{!100, !97, !90, !92, !94, !42, !44}
!104 = !{!100}
!105 = !{!101, !97, !90, !92, !94, !42, !44}
!106 = !{!107}
!107 = distinct !{!107, !108, !"\01?sort@@YAXAIAM00@Z: %c"}
!108 = distinct !{!108, !"\01?sort@@YAXAIAM00@Z"}
!109 = !{!110, !111, !90, !92, !94, !42, !44}
!110 = distinct !{!110, !108, !"\01?sort@@YAXAIAM00@Z: %a"}
!111 = distinct !{!111, !108, !"\01?sort@@YAXAIAM00@Z: %b"}
!112 = !{!111}
!113 = !{!110, !107, !90, !92, !94, !42, !44}
!114 = !{!110}
!115 = !{!111, !107, !90, !92, !94, !42, !44}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 2}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 2}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 2}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 2}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}

