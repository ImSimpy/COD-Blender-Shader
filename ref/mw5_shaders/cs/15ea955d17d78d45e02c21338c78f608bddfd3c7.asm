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
; shader hash: f610122f4d565ca9da81cc9f51745874
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
;                                   texture     f32          2d      T2            t27     1
;                                   texture     f32          2d      T3            t40     1
;                                   texture    byte         r/o      T4            t44     1
;                                   texture     f32          3d      T5            t10     1
;                                   texture     f32          2d      T6             t0     1
;                                   textureunorm_f32     2darray      T7            t34     1
;                                   texture    byte         r/o      T8            t28     1
;                                   texture     f32          2d      T9             t1     1
;                                   texture     f32          2d     T10            t23     1
;                                   texture     f32          2d     T11             t2     1
;                                   texture     f32          2d     T12            t18     1
;                                   texture     f32          3d     T13             t5     1
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
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
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

define void @cs_volumetric_forwardplus_scatter_global_water() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = alloca [4 x i32], align 4
  %27 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %28 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %29 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %30 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %31 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %32 = alloca [12 x float], align 4
  %33 = alloca [12 x float], align 4
  %34 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.i32 %34, 3
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 1
  %38 = mul i32 %37, %35
  %39 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.i32 %39, 1
  %41 = mul i32 %38, %40
  %42 = add i32 %41, %30
  %43 = shl i32 %42, 2
  %44 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %43, i32 undef)  ; BufferLoad(srv,index,wot)
  %45 = extractvalue %dx.types.ResRet.i32 %44, 0
  %46 = shl i32 %45, 2
  %47 = and i32 %46, 1020
  %48 = lshr i32 %45, 6
  %49 = and i32 %48, 1020
  %50 = lshr i32 %45, 14
  %51 = and i32 %50, 1020
  %52 = add i32 %47, %27
  %53 = add i32 %49, %28
  %54 = add i32 %51, %29
  %55 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.i32 %55, 0
  %57 = extractvalue %dx.types.CBufRet.i32 %55, 1
  %58 = extractvalue %dx.types.CBufRet.i32 %55, 2
  %59 = icmp uge i32 %52, %56
  %60 = icmp uge i32 %53, %57
  %61 = icmp uge i32 %54, %58
  %62 = or i1 %59, %60
  %63 = or i1 %61, %62
  %64 = xor i1 %63, true
  %65 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
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
  %103 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %18, i32 0, i32 %52, i32 %53, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %104 = extractvalue %dx.types.ResRet.f32 %103, 0
  %105 = fcmp fast ogt float %104, -1.000000e+00
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
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
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = fmul fast float %118, %114
  %122 = fmul fast float %119, %115
  %123 = fmul fast float %120, %116
  %124 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.i32 %124, 0
  %126 = uitofp i32 %125 to float
  %127 = fmul fast float %126, %123
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
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
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %144 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %145 = fmul fast float %142, %139
  %146 = fmul fast float %143, %139
  %147 = fmul fast float %144, %139
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = fmul fast float %149, %140
  %153 = fmul fast float %150, %140
  %154 = fmul fast float %151, %140
  %155 = fadd fast float %152, %145
  %156 = fadd fast float %153, %146
  %157 = fadd fast float %154, %147
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = fadd fast float %155, %159
  %163 = fadd fast float %156, %160
  %164 = fadd fast float %157, %161
  %165 = fmul fast float %162, %136
  %166 = fmul fast float %163, %136
  %167 = fmul fast float %164, %136
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
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
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %182 = fcmp fast ogt float %181, 0.000000e+00
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %185 = extractvalue %dx.types.CBufRet.f32 %183, 1
  %186 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %187 = fsub fast float %172, %184
  %188 = fadd fast float %187, %186
  %189 = fsub fast float %173, %185
  %190 = fadd fast float %189, %186
  %191 = extractvalue %dx.types.CBufRet.f32 %183, 3
  %192 = fmul fast float %188, %191
  %193 = fmul fast float %190, %191
  %194 = call float @dx.op.unary.f32(i32 7, float %192)  ; Saturate(value)
  %195 = call float @dx.op.unary.f32(i32 7, float %193)  ; Saturate(value)
  %196 = fsub fast float 1.000000e+00, %194
  %197 = fsub fast float 1.000000e+00, %195
  %198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %22, float %196, float %197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %199 = extractvalue %dx.types.ResRet.f32 %198, 0
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 2
  %202 = fmul fast float %201, %199
  %203 = extractvalue %dx.types.CBufRet.f32 %200, 3
  %204 = fadd fast float %203, %202
  %205 = fcmp fast ogt float %199, 0.000000e+00
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = and i32 %207, 32768
  %209 = icmp ne i32 %208, 0
  %210 = and i1 %205, %209
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 3
  %213 = fadd fast float %212, %204
  %214 = fcmp fast ole float %174, %213
  %215 = and i1 %210, %214
  %216 = select i1 %182, i32 %125, i32 0
  %217 = add i32 %216, %54
  %218 = xor i1 %182, %215
  %219 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %220 = fmul fast float %219, 0x3FE62E4300000000
  %221 = fmul fast float %220, %220
  %222 = select i1 %63, float 0.000000e+00, float 1.000000e+00
  %223 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %31
  store float %222, float addrspace(3)* %223, align 4, !tbaa !39, !noalias !43
  %224 = fmul fast float %220, %222
  %225 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %31
  store float %224, float addrspace(3)* %225, align 4, !tbaa !39, !noalias !43
  %226 = fmul fast float %221, %222
  %227 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %31
  store float %226, float addrspace(3)* %227, align 4, !tbaa !39, !noalias !43
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %228 = xor i32 %31, 4
  %229 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %228
  %230 = load float, float addrspace(3)* %229, align 4, !tbaa !39, !noalias !43
  %231 = fadd fast float %230, %222
  %232 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %228
  %233 = load float, float addrspace(3)* %232, align 4, !tbaa !39, !noalias !43
  %234 = fadd fast float %233, %220
  %235 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %228
  %236 = load float, float addrspace(3)* %235, align 4, !tbaa !39, !noalias !43
  %237 = fadd fast float %236, %221
  store float %231, float addrspace(3)* %223, align 4, !tbaa !39, !noalias !43
  store float %234, float addrspace(3)* %225, align 4, !tbaa !39, !noalias !43
  store float %237, float addrspace(3)* %227, align 4, !tbaa !39, !noalias !43
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %238 = xor i32 %31, 16
  %239 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %238
  %240 = load float, float addrspace(3)* %239, align 4, !tbaa !39, !noalias !43
  %241 = fadd fast float %240, %231
  %242 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %238
  %243 = load float, float addrspace(3)* %242, align 4, !tbaa !39, !noalias !43
  %244 = fadd fast float %243, %234
  %245 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %238
  %246 = load float, float addrspace(3)* %245, align 4, !tbaa !39, !noalias !43
  %247 = fadd fast float %246, %237
  store float %241, float addrspace(3)* %223, align 4, !tbaa !39, !noalias !43
  store float %244, float addrspace(3)* %225, align 4, !tbaa !39, !noalias !43
  store float %247, float addrspace(3)* %227, align 4, !tbaa !39, !noalias !43
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %248 = xor i32 %31, 1
  %249 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %248
  %250 = load float, float addrspace(3)* %249, align 4, !tbaa !39, !noalias !43
  %251 = fadd fast float %250, %241
  %252 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %248
  %253 = load float, float addrspace(3)* %252, align 4, !tbaa !39, !noalias !43
  %254 = fadd fast float %253, %244
  %255 = fdiv fast float %254, %251
  %256 = and i32 %53, 1
  %257 = and i32 %256, %52
  %258 = and i32 %257, %217
  %259 = icmp ne i32 %258, 0
  %260 = and i1 %259, %64
  br i1 %260, label %261, label %269, !dx.controlflow.hints !47

; <label>:261                                     ; preds = %0
  %262 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %248
  %263 = load float, float addrspace(3)* %262, align 4, !tbaa !39, !noalias !43
  %264 = fadd fast float %263, %247
  %265 = fdiv fast float %264, %251
  %266 = lshr i32 %52, 1
  %267 = lshr i32 %53, 1
  %268 = lshr i32 %217, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %266, i32 %267, i32 %268, float %255, float %265, float %255, float %255, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %269

; <label>:269                                     ; preds = %261, %0
  br i1 %63, label %271, label %270, !dx.controlflow.hints !48

; <label>:270                                     ; preds = %269
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %52, i32 %53, i32 %217, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %271

; <label>:271                                     ; preds = %270, %269
  store float %222, float addrspace(3)* %223, align 4, !tbaa !39, !noalias !43
  store float 0.000000e+00, float addrspace(3)* %225, align 4, !tbaa !39, !noalias !43
  store float 0.000000e+00, float addrspace(3)* %227, align 4, !tbaa !39, !noalias !43
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %272 = load float, float addrspace(3)* %229, align 4, !tbaa !39, !noalias !43
  %273 = fadd fast float %272, %222
  %274 = load float, float addrspace(3)* %232, align 4, !tbaa !39, !noalias !43
  %275 = load float, float addrspace(3)* %235, align 4, !tbaa !39, !noalias !43
  store float %273, float addrspace(3)* %223, align 4, !tbaa !39, !noalias !43
  store float %274, float addrspace(3)* %225, align 4, !tbaa !39, !noalias !43
  store float %275, float addrspace(3)* %227, align 4, !tbaa !39, !noalias !43
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %276 = load float, float addrspace(3)* %239, align 4, !tbaa !39, !noalias !43
  %277 = fadd fast float %276, %273
  %278 = load float, float addrspace(3)* %242, align 4, !tbaa !39, !noalias !43
  %279 = fadd fast float %278, %274
  %280 = load float, float addrspace(3)* %245, align 4, !tbaa !39, !noalias !43
  %281 = fadd fast float %280, %275
  store float %277, float addrspace(3)* %223, align 4, !tbaa !39, !noalias !43
  store float %279, float addrspace(3)* %225, align 4, !tbaa !39, !noalias !43
  store float %281, float addrspace(3)* %227, align 4, !tbaa !39, !noalias !43
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %282 = load float, float addrspace(3)* %249, align 4, !tbaa !39, !noalias !43
  %283 = fadd fast float %282, %277
  %284 = load float, float addrspace(3)* %252, align 4, !tbaa !39, !noalias !43
  %285 = fadd fast float %284, %279
  %286 = fdiv fast float %285, %283
  br i1 %260, label %287, label %295, !dx.controlflow.hints !49

; <label>:287                                     ; preds = %271
  %288 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %248
  %289 = load float, float addrspace(3)* %288, align 4, !tbaa !39, !noalias !43
  %290 = fadd fast float %289, %281
  %291 = fdiv fast float %290, %283
  %292 = lshr i32 %52, 1
  %293 = lshr i32 %53, 1
  %294 = lshr i32 %217, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %292, i32 %293, i32 %294, float %286, float %291, float %286, float %286, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %295

; <label>:295                                     ; preds = %287, %271
  br i1 %63, label %297, label %296, !dx.controlflow.hints !50

; <label>:296                                     ; preds = %295
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %52, i32 %53, i32 %217, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %297

; <label>:297                                     ; preds = %296, %295
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 0
  %300 = extractvalue %dx.types.CBufRet.f32 %298, 1
  %301 = fsub fast float %174, %299
  %302 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %301)  ; FMax(a,b)
  %303 = fmul fast float %302, 0x3FF7154760000000
  %304 = fmul fast float %303, %300
  %305 = call float @dx.op.unary.f32(i32 21, float %304)  ; Exp(value)
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 0
  %308 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %309 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %312 = fmul fast float %311, %305
  %313 = fmul fast float %312, %307
  %314 = fmul fast float %312, %308
  %315 = fmul fast float %312, %309
  %316 = select i1 %215, float 0.000000e+00, float %312
  %317 = fcmp fast ogt float %316, 0.000000e+00
  br i1 %317, label %318, label %1488, !dx.controlflow.hints !51

; <label>:318                                     ; preds = %297
  %319 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %320 = fmul fast float %319, %312
  %321 = fdiv fast float 1.000000e+00, %316
  %322 = fmul fast float %321, %313
  %323 = fmul fast float %321, %314
  %324 = fmul fast float %321, %315
  %325 = fmul fast float %320, %321
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 0
  %328 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %329 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %330 = fsub fast float %174, %329
  %331 = fsub fast float %204, %329
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 3
  %334 = fcmp fast oeq float %333, 0.000000e+00
  br i1 %334, label %1459, label %335, !dx.controlflow.hints !52

; <label>:335                                     ; preds = %318
  %336 = fsub fast float %173, %328
  %337 = fsub fast float %172, %327
  %338 = extractvalue %dx.types.CBufRet.f32 %332, 0
  %339 = extractvalue %dx.types.CBufRet.f32 %332, 1
  %340 = extractvalue %dx.types.CBufRet.f32 %332, 2
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 0
  %343 = extractvalue %dx.types.CBufRet.f32 %341, 1
  %344 = extractvalue %dx.types.CBufRet.f32 %341, 2
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 2
  %347 = fmul fast float %346, %338
  %348 = fmul fast float %346, %339
  %349 = fmul fast float %346, %340
  %350 = fsub fast float %337, %347
  %351 = fsub fast float %336, %348
  %352 = fsub fast float %330, %349
  %353 = fcmp fast olt float %333, 0.000000e+00
  br i1 %353, label %885, label %354, !dx.controlflow.hints !53

; <label>:354                                     ; preds = %335
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 0
  %357 = extractvalue %dx.types.CBufRet.f32 %355, 1
  %358 = extractvalue %dx.types.CBufRet.f32 %355, 2
  %359 = extractvalue %dx.types.CBufRet.f32 %355, 3
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %362 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %363 = extractvalue %dx.types.CBufRet.f32 %360, 2
  %364 = extractvalue %dx.types.CBufRet.f32 %360, 3
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 0
  %367 = extractvalue %dx.types.CBufRet.f32 %365, 1
  %368 = extractvalue %dx.types.CBufRet.f32 %365, 2
  %369 = extractvalue %dx.types.CBufRet.f32 %365, 3
  %370 = fmul fast float %356, %350
  %371 = call float @dx.op.tertiary.f32(i32 46, float %351, float %357, float %370)  ; FMad(a,b,c)
  %372 = call float @dx.op.tertiary.f32(i32 46, float %352, float %358, float %371)  ; FMad(a,b,c)
  %373 = fadd fast float %372, %359
  %374 = fmul fast float %361, %350
  %375 = call float @dx.op.tertiary.f32(i32 46, float %351, float %362, float %374)  ; FMad(a,b,c)
  %376 = call float @dx.op.tertiary.f32(i32 46, float %352, float %363, float %375)  ; FMad(a,b,c)
  %377 = fadd fast float %376, %364
  %378 = fmul fast float %366, %350
  %379 = call float @dx.op.tertiary.f32(i32 46, float %351, float %367, float %378)  ; FMad(a,b,c)
  %380 = call float @dx.op.tertiary.f32(i32 46, float %352, float %368, float %379)  ; FMad(a,b,c)
  %381 = fadd fast float %380, %369
  %382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.f32 %382, 0
  %384 = extractvalue %dx.types.CBufRet.f32 %382, 1
  %385 = extractvalue %dx.types.CBufRet.f32 %382, 3
  %386 = fmul fast float %385, %373
  %387 = fmul fast float %385, %377
  %388 = fadd fast float %386, %383
  %389 = fadd fast float %387, %384
  %390 = extractvalue %dx.types.CBufRet.f32 %382, 2
  %391 = fcmp fast olt float %390, 0.000000e+00
  %392 = fsub fast float -0.000000e+00, %390
  %393 = select i1 %391, float %392, float %390
  %394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.f32 %394, 1
  %396 = fadd fast float %393, %395
  %397 = fcmp fast ogt float %396, 0.000000e+00
  br i1 %397, label %398, label %429, !dx.controlflow.hints !54

; <label>:398                                     ; preds = %354
  %399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.f32 %399, 1
  %401 = fsub fast float %400, %381
  %402 = extractvalue %dx.types.CBufRet.f32 %399, 2
  %403 = fmul fast float %401, %402
  %404 = fsub fast float 1.000000e+00, %403
  %405 = call float @dx.op.unary.f32(i32 7, float %404)  ; Saturate(value)
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 0
  %408 = extractvalue %dx.types.CBufRet.f32 %406, 1
  %409 = fsub fast float %388, %407
  %410 = fsub fast float %389, %408
  %411 = fcmp fast olt float %409, 0.000000e+00
  %412 = fcmp fast olt float %410, 0.000000e+00
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 0
  %415 = extractvalue %dx.types.CBufRet.f32 %413, 1
  %416 = extractvalue %dx.types.CBufRet.f32 %413, 2
  %417 = extractvalue %dx.types.CBufRet.f32 %413, 3
  %418 = select i1 %411, float %414, float %416
  %419 = select i1 %412, float %415, float %417
  %420 = fmul fast float %418, %409
  %421 = fmul fast float %419, %410
  %422 = call float @dx.op.unary.f32(i32 6, float %420)  ; FAbs(value)
  %423 = call float @dx.op.unary.f32(i32 6, float %421)  ; FAbs(value)
  %424 = extractvalue %dx.types.CBufRet.f32 %345, 0
  %425 = call float @dx.op.binary.f32(i32 35, float %422, float %423)  ; FMax(a,b)
  %426 = fsub fast float %424, %425
  %427 = call float @dx.op.unary.f32(i32 7, float %426)  ; Saturate(value)
  %428 = fmul fast float %427, %405
  br label %429

; <label>:429                                     ; preds = %398, %354
  %430 = phi float [ %428, %398 ], [ 0.000000e+00, %354 ]
  %431 = call float @dx.op.binary.f32(i32 35, float %430, float 0.000000e+00)  ; FMax(a,b)
  %432 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %431)  ; FMax(a,b)
  %433 = fcmp fast olt float %432, 1.000000e+00
  br i1 %433, label %434, label %832, !dx.controlflow.hints !55

; <label>:434                                     ; preds = %429
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 0
  %437 = fcmp fast une float %436, 0.000000e+00
  br i1 %437, label %438, label %832, !dx.controlflow.hints !56

; <label>:438                                     ; preds = %434
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 0
  %441 = extractvalue %dx.types.CBufRet.f32 %439, 1
  %442 = extractvalue %dx.types.CBufRet.f32 %439, 2
  %443 = extractvalue %dx.types.CBufRet.f32 %439, 3
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 0
  %446 = extractvalue %dx.types.CBufRet.f32 %444, 1
  %447 = extractvalue %dx.types.CBufRet.f32 %444, 2
  %448 = extractvalue %dx.types.CBufRet.f32 %444, 3
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 0
  %451 = extractvalue %dx.types.CBufRet.f32 %449, 1
  %452 = extractvalue %dx.types.CBufRet.f32 %449, 2
  %453 = extractvalue %dx.types.CBufRet.f32 %449, 3
  %454 = fmul fast float %440, %350
  %455 = call float @dx.op.tertiary.f32(i32 46, float %351, float %441, float %454)  ; FMad(a,b,c)
  %456 = call float @dx.op.tertiary.f32(i32 46, float %352, float %442, float %455)  ; FMad(a,b,c)
  %457 = fadd fast float %456, %443
  %458 = fmul fast float %445, %350
  %459 = call float @dx.op.tertiary.f32(i32 46, float %351, float %446, float %458)  ; FMad(a,b,c)
  %460 = call float @dx.op.tertiary.f32(i32 46, float %352, float %447, float %459)  ; FMad(a,b,c)
  %461 = fadd fast float %460, %448
  %462 = fmul fast float %450, %350
  %463 = call float @dx.op.tertiary.f32(i32 46, float %351, float %451, float %462)  ; FMad(a,b,c)
  %464 = call float @dx.op.tertiary.f32(i32 46, float %352, float %452, float %463)  ; FMad(a,b,c)
  %465 = fadd fast float %464, %453
  %466 = fcmp fast oge float %457, 1.000000e+00
  %467 = fcmp fast oge float %461, 1.000000e+00
  %468 = or i1 %466, %467
  %469 = fcmp fast olt float %457, 0.000000e+00
  %470 = fcmp fast olt float %461, 0.000000e+00
  %471 = or i1 %469, %470
  %472 = or i1 %468, %471
  br i1 %472, label %832, label %473, !dx.controlflow.hints !57

; <label>:473                                     ; preds = %438
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 0
  %476 = extractvalue %dx.types.CBufRet.f32 %474, 1
  %477 = extractvalue %dx.types.CBufRet.f32 %474, 2
  %478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.i32 %478, 2
  %480 = uitofp i32 %479 to float
  %481 = extractvalue %dx.types.CBufRet.i32 %478, 3
  %482 = uitofp i32 %481 to float
  %483 = extractvalue %dx.types.CBufRet.f32 %474, 3
  %484 = fmul fast float %483, 2.000000e+00
  %485 = fsub fast float %457, %475
  %486 = fsub fast float %461, %476
  %487 = fmul fast float %484, %485
  %488 = fmul fast float %484, %486
  %489 = fdiv fast float 1.000000e+00, %340
  %490 = fmul fast float %488, %489
  %491 = call float @dx.op.unary.f32(i32 6, float %490)  ; FAbs(value)
  %492 = fmul fast float %477, %352
  %493 = fmul fast float %492, %484
  %494 = call float @dx.op.unary.f32(i32 6, float %493)  ; FAbs(value)
  %495 = call float @dx.op.unary.f32(i32 6, float %487)  ; FAbs(value)
  %496 = call float @dx.op.binary.f32(i32 35, float %494, float %491)  ; FMax(a,b)
  %497 = call float @dx.op.binary.f32(i32 35, float %495, float %496)  ; FMax(a,b)
  %498 = fmul fast float %497, 2.000000e+00
  %499 = call float @dx.op.unary.f32(i32 23, float %498)  ; Log(value)
  %500 = call float @dx.op.binary.f32(i32 35, float %499, float %480)  ; FMax(a,b)
  %501 = call float @dx.op.unary.f32(i32 22, float %500)  ; Frc(value)
  %502 = fadd fast float %501, 0xBFEA666660000000
  %503 = fmul fast float %502, 8.000000e+00
  %504 = call float @dx.op.unary.f32(i32 7, float %503)  ; Saturate(value)
  %505 = call float @dx.op.unary.f32(i32 27, float %500)  ; Round_ni(value)
  %506 = fadd fast float %505, %504
  %507 = call float @dx.op.binary.f32(i32 36, float %506, float %482)  ; FMin(a,b)
  %508 = call float @dx.op.unary.f32(i32 27, float %507)  ; Round_ni(value)
  %509 = fsub fast float -0.000000e+00, %508
  %510 = call float @dx.op.unary.f32(i32 21, float %509)  ; Exp(value)
  %511 = fmul fast float %510, %484
  %512 = fmul fast float %511, %457
  %513 = fmul fast float %511, %461
  %514 = fmul fast float %512, 2.500000e-01
  %515 = fmul fast float %513, 2.500000e-01
  %516 = fadd fast float %514, 5.000000e-01
  %517 = fadd fast float %515, 5.000000e-01
  %518 = fsub fast float %482, %480
  %519 = fptoui float %518 to i32
  %520 = add i32 %519, 320
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 %520)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 0
  %523 = extractvalue %dx.types.CBufRet.f32 %521, 1
  %524 = fcmp fast une float %507, %482
  %525 = fsub fast float %457, %522
  %526 = fsub fast float %461, %523
  %527 = call float @dx.op.unary.f32(i32 6, float %525)  ; FAbs(value)
  %528 = call float @dx.op.unary.f32(i32 6, float %526)  ; FAbs(value)
  %529 = fmul fast float %527, %511
  %530 = fmul fast float %528, %511
  %531 = fcmp fast olt float %529, 1.000000e+00
  %532 = fcmp fast olt float %530, 1.000000e+00
  %533 = and i1 %531, %532
  %534 = or i1 %524, %533
  br i1 %534, label %535, label %832, !dx.controlflow.hints !58

; <label>:535                                     ; preds = %473
  %536 = fmul fast float %513, 5.000000e-01
  %537 = fmul fast float %512, 5.000000e-01
  %538 = fadd fast float %536, 5.000000e-01
  %539 = fadd fast float %537, 5.000000e-01
  %540 = sitofp i32 %479 to float
  %541 = fsub fast float %507, %540
  %542 = call float @dx.op.unary.f32(i32 27, float %541)  ; Round_ni(value)
  %543 = call float @dx.op.unary.f32(i32 22, float %507)  ; Frc(value)
  %544 = call float @dx.op.unary.f32(i32 22, float %539)  ; Frc(value)
  %545 = call float @dx.op.unary.f32(i32 22, float %538)  ; Frc(value)
  %546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %544, float %545, float %542, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = extractvalue %dx.types.ResRet.f32 %546, 1
  %549 = extractvalue %dx.types.ResRet.f32 %546, 2
  %550 = extractvalue %dx.types.ResRet.f32 %546, 3
  %551 = fcmp fast ogt float %543, 0.000000e+00
  br i1 %551, label %552, label %573, !dx.controlflow.hints !59

; <label>:552                                     ; preds = %535
  %553 = fadd fast float %542, 1.000000e+00
  %554 = call float @dx.op.unary.f32(i32 22, float %516)  ; Frc(value)
  %555 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %554, float %555, float %553, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %557 = extractvalue %dx.types.ResRet.f32 %556, 0
  %558 = extractvalue %dx.types.ResRet.f32 %556, 1
  %559 = extractvalue %dx.types.ResRet.f32 %556, 2
  %560 = extractvalue %dx.types.ResRet.f32 %556, 3
  %561 = fsub fast float %557, %547
  %562 = fsub fast float %558, %548
  %563 = fsub fast float %559, %549
  %564 = fsub fast float %560, %550
  %565 = fmul fast float %561, %543
  %566 = fmul fast float %562, %543
  %567 = fmul fast float %563, %543
  %568 = fmul fast float %564, %543
  %569 = fadd fast float %565, %547
  %570 = fadd fast float %566, %548
  %571 = fadd fast float %567, %549
  %572 = fadd fast float %568, %550
  br label %573

; <label>:573                                     ; preds = %552, %535
  %574 = phi float [ %569, %552 ], [ %547, %535 ]
  %575 = phi float [ %570, %552 ], [ %548, %535 ]
  %576 = phi float [ %571, %552 ], [ %549, %535 ]
  %577 = phi float [ %572, %552 ], [ %550, %535 ]
  %578 = fadd fast float %574, -5.000000e-01
  %579 = fadd fast float %576, -5.000000e-01
  %580 = fmul fast float %578, 0xBFD5555560000000
  %581 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %579, float %580)  ; FMad(a,b,c)
  %582 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %575, float 0.000000e+00)  ; FMad(a,b,c)
  %583 = fadd fast float %582, %577
  %584 = fmul fast float %578, -7.500000e-01
  %585 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %579, float %584)  ; FMad(a,b,c)
  %586 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %575, float 0.000000e+00)  ; FMad(a,b,c)
  %587 = fadd fast float %586, %577
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 0
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 0
  %592 = extractvalue %dx.types.CBufRet.f32 %590, 1
  %593 = extractvalue %dx.types.CBufRet.f32 %590, 2
  %594 = extractvalue %dx.types.CBufRet.f32 %590, 3
  %595 = fsub fast float %591, %581
  %596 = fsub fast float %592, %583
  %597 = fsub fast float %593, %585
  %598 = fsub fast float %594, %587
  %599 = fmul fast float %595, %589
  %600 = fmul fast float %596, %589
  %601 = fmul fast float %597, %589
  %602 = fmul fast float %598, %589
  %603 = fadd fast float %599, %581
  %604 = fadd fast float %600, %583
  %605 = fadd fast float %601, %585
  %606 = fadd fast float %602, %587
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = and i32 %608, 536870911
  %610 = uitofp i32 %609 to float
  %611 = fmul fast float %610, %457
  %612 = fmul fast float %610, %461
  %613 = fptoui float %611 to i32
  %614 = fptoui float %612 to i32
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = and i32 %616, 31
  %618 = lshr i32 %613, %617
  %619 = lshr i32 %614, %617
  %620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.i32 %620, 0
  %622 = and i32 %621, 31
  %623 = shl i32 1, %622
  %624 = call i32 @dx.op.binary.i32(i32 40, i32 %623, i32 4)  ; UMin(a,b)
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = extractvalue %dx.types.ResRet.i32 %625, 1
  %628 = icmp eq i32 %624, 0
  br i1 %628, label %670, label %629

; <label>:629                                     ; preds = %573
  br label %630

; <label>:630                                     ; preds = %658, %629
  %631 = phi i32 [ %661, %658 ], [ 0, %629 ]
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = lshr i32 %633, 16
  %635 = and i32 %634, 31
  %636 = shl i32 %619, %635
  %637 = add i32 %636, %618
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = and i32 %639, 31
  %641 = shl i32 %637, %640
  %642 = add i32 %641, %631
  %643 = shl i32 %642, 2
  %644 = add i32 %643, 32
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = icmp slt i32 %646, 0
  %648 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 %631
  %649 = getelementptr [12 x float], [12 x float]* %33, i32 0, i32 %631
  %650 = bitcast float* %648 to i32*
  %651 = bitcast float* %649 to i32*
  br i1 %647, label %652, label %658, !dx.controlflow.hints !60

; <label>:652                                     ; preds = %630
  %653 = and i32 %646, 1073741823
  %654 = add nuw nsw i32 %653, 20
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = extractvalue %dx.types.ResRet.i32 %655, 1
  br label %658

; <label>:658                                     ; preds = %652, %630
  %659 = phi i32 [ %656, %652 ], [ %626, %630 ]
  %660 = phi i32 [ %657, %652 ], [ %627, %630 ]
  store i32 %659, i32* %650, align 4
  store i32 %660, i32* %651, align 4
  %661 = add nuw i32 %631, 1
  %662 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.i32 %662, 2
  %664 = icmp eq i32 %663, 0
  %665 = icmp ugt i32 %646, -1073741825
  %666 = and i1 %665, %664
  %667 = icmp ult i32 %661, %624
  %668 = and i1 %666, %667
  br i1 %668, label %630, label %669, !dx.controlflow.hints !61

; <label>:669                                     ; preds = %658
  br label %670

; <label>:670                                     ; preds = %669, %573
  %671 = phi i32 [ 0, %573 ], [ %661, %669 ]
  %672 = extractvalue %dx.types.CBufRet.f32 %435, 2
  %673 = fptoui float %672 to i32
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %726, label %675

; <label>:675                                     ; preds = %670
  br label %676

; <label>:676                                     ; preds = %721, %675
  %677 = phi i32 [ %722, %721 ], [ %671, %675 ]
  %678 = phi i32 [ %723, %721 ], [ 0, %675 ]
  %679 = lshr i32 %678, 2
  %680 = and i32 %678, 3
  %681 = add nuw nsw i32 %679, 83
  %682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 %681)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.i32 %682, 0
  %684 = extractvalue %dx.types.CBufRet.i32 %682, 1
  %685 = extractvalue %dx.types.CBufRet.i32 %682, 2
  %686 = extractvalue %dx.types.CBufRet.i32 %682, 3
  %687 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %683, i32* %687, align 4
  %688 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %684, i32* %688, align 4
  %689 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %685, i32* %689, align 4
  %690 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %686, i32* %690, align 4
  %691 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 %680
  %692 = load i32, i32* %691, align 4, !tbaa !62, !noalias !64
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = lshr i32 %694, 16
  %696 = and i32 %695, 31
  %697 = shl i32 %619, %696
  %698 = add i32 %697, %618
  %699 = shl i32 %698, 2
  %700 = add i32 %699, %692
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %721, label %704, !dx.controlflow.hints !71

; <label>:704                                     ; preds = %676
  %705 = icmp slt i32 %702, 0
  %706 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 %677
  %707 = getelementptr [12 x float], [12 x float]* %33, i32 0, i32 %677
  %708 = bitcast float* %706 to i32*
  %709 = bitcast float* %707 to i32*
  br i1 %705, label %710, label %717, !dx.controlflow.hints !72

; <label>:710                                     ; preds = %704
  %711 = and i32 %702, 1073741823
  %712 = add i32 %692, 20
  %713 = add i32 %712, %711
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %713, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = extractvalue %dx.types.ResRet.i32 %714, 1
  br label %717

; <label>:717                                     ; preds = %710, %704
  %718 = phi i32 [ %715, %710 ], [ %626, %704 ]
  %719 = phi i32 [ %716, %710 ], [ %627, %704 ]
  store i32 %718, i32* %708, align 4
  store i32 %719, i32* %709, align 4
  %720 = add i32 %677, 1
  br label %721

; <label>:721                                     ; preds = %717, %676
  %722 = phi i32 [ %677, %676 ], [ %720, %717 ]
  %723 = add nuw i32 %678, 1
  %724 = icmp eq i32 %723, %673
  br i1 %724, label %725, label %676

; <label>:725                                     ; preds = %721
  br label %726

; <label>:726                                     ; preds = %725, %670
  %727 = phi i32 [ %671, %670 ], [ %722, %725 ]
  %728 = icmp eq i32 %727, 1
  %729 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 0
  %730 = getelementptr [12 x float], [12 x float]* %33, i32 0, i32 0
  br i1 %728, label %731, label %734, !dx.controlflow.hints !73

; <label>:731                                     ; preds = %726
  %732 = load float, float* %729, align 4
  %733 = load float, float* %730, align 4
  br label %761

; <label>:734                                     ; preds = %726
  %735 = load float, float* %729, align 4
  %736 = load float, float* %730, align 4
  %737 = fdiv fast float 1.000000e+00, %736
  %738 = fsub fast float %735, %737
  %739 = icmp ugt i32 %727, 1
  br i1 %739, label %740, label %756

; <label>:740                                     ; preds = %734
  br label %741

; <label>:741                                     ; preds = %741, %740
  %742 = phi float [ %751, %741 ], [ %738, %740 ]
  %743 = phi float [ %752, %741 ], [ %735, %740 ]
  %744 = phi i32 [ %753, %741 ], [ 1, %740 ]
  %745 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 %744
  %746 = load float, float* %745, align 4
  %747 = getelementptr [12 x float], [12 x float]* %33, i32 0, i32 %744
  %748 = load float, float* %747, align 4
  %749 = fdiv fast float 1.000000e+00, %748
  %750 = fsub fast float %746, %749
  %751 = call float @dx.op.binary.f32(i32 36, float %742, float %750)  ; FMin(a,b)
  %752 = call float @dx.op.binary.f32(i32 35, float %743, float %746)  ; FMax(a,b)
  %753 = add nuw i32 %744, 1
  %754 = icmp eq i32 %753, %727
  br i1 %754, label %755, label %741

; <label>:755                                     ; preds = %741
  br label %756

; <label>:756                                     ; preds = %755, %734
  %757 = phi float [ %738, %734 ], [ %751, %755 ]
  %758 = phi float [ %735, %734 ], [ %752, %755 ]
  %759 = fsub fast float %758, %757
  %760 = fdiv fast float 1.000000e+00, %759
  br label %761

; <label>:761                                     ; preds = %756, %731
  %762 = phi float [ %732, %731 ], [ %758, %756 ]
  %763 = phi float [ %733, %731 ], [ %760, %756 ]
  %764 = fadd fast float %465, %762
  %765 = fmul fast float %764, %763
  %766 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  %767 = fmul fast float %766, 2.000000e+00
  %768 = fsub fast float 1.000000e+00, %767
  %769 = fmul fast float %603, %603
  %770 = fsub fast float %604, %769
  %771 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %770)  ; FMax(a,b)
  %772 = fdiv fast float 1.000000e+00, %771
  %773 = fmul fast float %604, %603
  %774 = fsub fast float %605, %773
  %775 = fsub fast float %768, %603
  %776 = fmul fast float %768, %768
  %777 = fsub fast float %776, %604
  %778 = fmul fast float %772, %774
  %779 = fmul fast float %778, %775
  %780 = fsub fast float %777, %779
  %781 = fmul fast float %604, %604
  %782 = fsub fast float %606, %781
  %783 = fmul fast float %774, %774
  %784 = fmul fast float %783, %772
  %785 = fsub fast float %782, %784
  %786 = fdiv fast float %780, %785
  %787 = fmul fast float %786, %774
  %788 = fsub fast float %775, %787
  %789 = fmul fast float %788, %772
  %790 = fmul fast float %789, %603
  %791 = fsub fast float 1.000000e+00, %790
  %792 = fmul fast float %786, %604
  %793 = fsub fast float %791, %792
  %794 = fmul fast float %789, %789
  %795 = fmul fast float %786, 4.000000e+00
  %796 = fmul fast float %795, %793
  %797 = fsub fast float %794, %796
  %798 = call float @dx.op.unary.f32(i32 24, float %797)  ; Sqrt(value)
  %799 = fcmp fast oge float %789, 0.000000e+00
  %800 = fsub fast float -0.000000e+00, %798
  %801 = select i1 %799, float %800, float %798
  %802 = fsub fast float %801, %789
  %803 = fdiv fast float %802, %786
  %804 = fdiv fast float %793, %802
  %805 = fmul fast float %803, 5.000000e-01
  %806 = fmul fast float %804, 2.000000e+00
  %807 = select i1 %799, float %805, float %806
  %808 = select i1 %799, float %806, float %805
  %809 = call float @dx.op.binary.f32(i32 35, float %807, float %808)  ; FMax(a,b)
  %810 = call float @dx.op.binary.f32(i32 36, float %807, float %808)  ; FMin(a,b)
  %811 = fcmp fast ogt float %768, %809
  %812 = fsub fast float %768, %810
  %813 = fsub fast float %768, %809
  %814 = fsub fast float %809, %810
  %815 = select i1 %811, float %813, float %814
  %816 = fmul float %812, %815
  %817 = select i1 %811, float %810, float %768
  %818 = fcmp fast ogt float %768, %810
  %819 = fmul fast float %817, %809
  %820 = fadd fast float %817, %809
  %821 = fmul fast float %820, %603
  %822 = fadd fast float %819, %604
  %823 = fsub fast float %822, %821
  %824 = fdiv fast float %823, %816
  %825 = select i1 %818, float %824, float 0.000000e+00
  %826 = fsub fast float 1.000000e+00, %825
  %827 = select i1 %811, float %826, float %825
  %828 = call float @dx.op.unary.f32(i32 7, float %827)  ; Saturate(value)
  %829 = extractvalue %dx.types.CBufRet.f32 %588, 3
  %830 = fmul fast float %829, %828
  %831 = fsub fast float 1.000000e+00, %830
  br label %832

; <label>:832                                     ; preds = %761, %473, %438, %434, %429
  %833 = phi float [ 1.000000e+00, %429 ], [ %831, %761 ], [ 1.000000e+00, %438 ], [ 1.000000e+00, %473 ], [ 1.000000e+00, %434 ]
  %834 = fcmp fast ogt float %430, 0.000000e+00
  br i1 %834, label %835, label %841, !dx.controlflow.hints !74

; <label>:835                                     ; preds = %832
  %836 = fadd fast float %395, %381
  %837 = call float @dx.op.binary.f32(i32 35, float %836, float 0.000000e+00)  ; FMax(a,b)
  %838 = fadd fast float %837, 0x3F10000000000000
  %839 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %23, float %388, float %389, float undef, float undef, i32 0, i32 0, i32 undef, float %838)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 0
  br label %841

; <label>:841                                     ; preds = %835, %832
  %842 = phi float [ %840, %835 ], [ 1.000000e+00, %832 ]
  %843 = fsub fast float %842, %833
  %844 = fmul fast float %843, %430
  %845 = fadd fast float %844, %833
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 2
  %848 = fcmp fast ogt float %847, 0.000000e+00
  br i1 %848, label %849, label %885, !dx.controlflow.hints !75

; <label>:849                                     ; preds = %841
  %850 = fcmp fast ugt float %847, 0.000000e+00
  br i1 %850, label %851, label %882, !dx.controlflow.hints !76

; <label>:851                                     ; preds = %849
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 0
  %854 = extractvalue %dx.types.CBufRet.f32 %852, 1
  %855 = extractvalue %dx.types.CBufRet.f32 %852, 2
  %856 = extractvalue %dx.types.CBufRet.f32 %852, 3
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 0
  %859 = extractvalue %dx.types.CBufRet.f32 %857, 1
  %860 = extractvalue %dx.types.CBufRet.f32 %857, 2
  %861 = extractvalue %dx.types.CBufRet.f32 %857, 3
  %862 = extractvalue %dx.types.CBufRet.f32 %846, 0
  %863 = extractvalue %dx.types.CBufRet.f32 %846, 1
  %864 = fadd fast float %327, %350
  %865 = fadd fast float %328, %351
  %866 = fadd fast float %329, %352
  %867 = fmul fast float %864, %853
  %868 = call float @dx.op.tertiary.f32(i32 46, float %854, float %865, float %867)  ; FMad(a,b,c)
  %869 = call float @dx.op.tertiary.f32(i32 46, float %855, float %866, float %868)  ; FMad(a,b,c)
  %870 = fadd fast float %869, %856
  %871 = fmul fast float %864, %858
  %872 = call float @dx.op.tertiary.f32(i32 46, float %859, float %865, float %871)  ; FMad(a,b,c)
  %873 = call float @dx.op.tertiary.f32(i32 46, float %860, float %866, float %872)  ; FMad(a,b,c)
  %874 = fadd fast float %873, %861
  %875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %870, float %874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %876 = extractvalue %dx.types.ResRet.f32 %875, 0
  %877 = fmul fast float %876, %863
  %878 = fadd fast float %877, %862
  %879 = call float @dx.op.unary.f32(i32 7, float %878)  ; Saturate(value)
  %880 = fmul fast float %879, %847
  %881 = fsub fast float 1.000000e+00, %880
  br label %882

; <label>:882                                     ; preds = %851, %849
  %883 = phi float [ %881, %851 ], [ 1.000000e+00, %849 ]
  %884 = fmul fast float %883, %845
  br label %885

; <label>:885                                     ; preds = %882, %841, %335
  %886 = phi float [ 1.000000e+00, %335 ], [ %884, %882 ], [ %845, %841 ]
  %887 = call float @dx.op.binary.f32(i32 36, float %886, float %886)  ; FMin(a,b)
  %888 = call float @dx.op.binary.f32(i32 36, float %886, float %887)  ; FMin(a,b)
  %889 = fcmp fast ogt float %888, 0.000000e+00
  br i1 %889, label %890, label %1045, !dx.controlflow.hints !77

; <label>:890                                     ; preds = %885
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %893 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %894 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %895 = extractvalue %dx.types.CBufRet.f32 %891, 3
  %896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.f32 %896, 0
  %898 = extractvalue %dx.types.CBufRet.f32 %896, 1
  %899 = extractvalue %dx.types.CBufRet.f32 %896, 2
  %900 = extractvalue %dx.types.CBufRet.f32 %896, 3
  %901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %902 = extractvalue %dx.types.CBufRet.f32 %901, 0
  %903 = extractvalue %dx.types.CBufRet.f32 %901, 1
  %904 = extractvalue %dx.types.CBufRet.f32 %901, 2
  %905 = extractvalue %dx.types.CBufRet.f32 %901, 3
  %906 = fmul fast float %892, %350
  %907 = call float @dx.op.tertiary.f32(i32 46, float %351, float %893, float %906)  ; FMad(a,b,c)
  %908 = call float @dx.op.tertiary.f32(i32 46, float %352, float %894, float %907)  ; FMad(a,b,c)
  %909 = fadd fast float %908, %895
  %910 = fmul fast float %897, %350
  %911 = call float @dx.op.tertiary.f32(i32 46, float %351, float %898, float %910)  ; FMad(a,b,c)
  %912 = call float @dx.op.tertiary.f32(i32 46, float %352, float %899, float %911)  ; FMad(a,b,c)
  %913 = fadd fast float %912, %900
  %914 = fmul fast float %902, %350
  %915 = call float @dx.op.tertiary.f32(i32 46, float %351, float %903, float %914)  ; FMad(a,b,c)
  %916 = call float @dx.op.tertiary.f32(i32 46, float %352, float %904, float %915)  ; FMad(a,b,c)
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 0
  %919 = extractvalue %dx.types.CBufRet.f32 %917, 1
  %920 = extractvalue %dx.types.CBufRet.f32 %917, 3
  %921 = fmul fast float %920, %909
  %922 = fmul fast float %920, %913
  %923 = fadd fast float %921, %918
  %924 = fadd fast float %922, %919
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 0
  %927 = extractvalue %dx.types.CBufRet.f32 %925, 1
  %928 = fsub fast float %923, %926
  %929 = fsub fast float %924, %927
  %930 = fcmp fast olt float %928, 0.000000e+00
  %931 = fcmp fast olt float %929, 0.000000e+00
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 0
  %934 = extractvalue %dx.types.CBufRet.f32 %932, 1
  %935 = extractvalue %dx.types.CBufRet.f32 %932, 2
  %936 = extractvalue %dx.types.CBufRet.f32 %932, 3
  %937 = select i1 %930, float %933, float %935
  %938 = select i1 %931, float %934, float %936
  %939 = fmul fast float %937, %928
  %940 = fmul fast float %938, %929
  %941 = call float @dx.op.unary.f32(i32 6, float %939)  ; FAbs(value)
  %942 = call float @dx.op.unary.f32(i32 6, float %940)  ; FAbs(value)
  %943 = extractvalue %dx.types.CBufRet.f32 %345, 0
  %944 = call float @dx.op.binary.f32(i32 35, float %941, float %942)  ; FMax(a,b)
  %945 = fsub fast float %943, %944
  %946 = call float @dx.op.unary.f32(i32 7, float %945)  ; Saturate(value)
  %947 = fcmp fast ogt float %946, 0.000000e+00
  br i1 %947, label %948, label %989, !dx.controlflow.hints !78

; <label>:948                                     ; preds = %890
  %949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %22, float %923, float %924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %950 = extractvalue %dx.types.ResRet.f32 %949, 1
  %951 = fcmp fast ogt float %950, 0.000000e+00
  br i1 %951, label %952, label %985, !dx.controlflow.hints !79

; <label>:952                                     ; preds = %948
  %953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %22, float %923, float %924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %954 = extractvalue %dx.types.ResRet.f32 %953, 0
  %955 = extractvalue %dx.types.ResRet.f32 %953, 1
  %956 = extractvalue %dx.types.ResRet.f32 %953, 2
  %957 = extractvalue %dx.types.ResRet.f32 %953, 3
  %958 = fsub fast float 1.000000e+00, %905
  %959 = fsub fast float %958, %916
  %960 = fmul fast float %959, 0x400921FB60000000
  %961 = fadd fast float %960, 0x3FF921FB60000000
  %962 = call float @dx.op.unary.f32(i32 13, float %961)  ; Sin(value)
  %963 = fadd fast float %962, -1.000000e+00
  %964 = fmul fast float %963, 0x3FD45F3060000000
  %965 = fmul fast float %959, 0x401921FB60000000
  %966 = fadd fast float %965, 0x400921FB60000000
  %967 = call float @dx.op.unary.f32(i32 13, float %966)  ; Sin(value)
  %968 = fadd fast float %967, 0x3E7777A5C0000000
  %969 = fmul fast float %968, 0x3FC45F3060000000
  %970 = fmul fast float %959, 0x4022D97C80000000
  %971 = fadd fast float %970, 0x4012D97C80000000
  %972 = call float @dx.op.unary.f32(i32 13, float %971)  ; Sin(value)
  %973 = fadd fast float %972, 1.000000e+00
  %974 = fmul fast float %973, 0x3FBB2995E0000000
  %975 = fmul fast float %959, 0x402921FB60000000
  %976 = fadd fast float %975, 0x401921FB60000000
  %977 = call float @dx.op.unary.f32(i32 13, float %976)  ; Sin(value)
  %978 = fadd fast float %977, 0xBE8777A5C0000000
  %979 = fmul fast float %978, 0x3FB45F3060000000
  %980 = call float @dx.op.dot4.f32(i32 56, float %954, float %955, float %956, float %957, float %964, float %969, float %974, float %979)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %981 = fmul fast float %980, 0xBFF7154760000000
  %982 = call float @dx.op.unary.f32(i32 21, float %981)  ; Exp(value)
  %983 = call float @dx.op.unary.f32(i32 7, float %982)  ; Saturate(value)
  %984 = fadd float %983, -1.000000e+00
  br label %985

; <label>:985                                     ; preds = %952, %948
  %986 = phi float [ %984, %952 ], [ 0.000000e+00, %948 ]
  %987 = fmul fast float %986, %946
  %988 = fadd fast float %987, 1.000000e+00
  br label %989

; <label>:989                                     ; preds = %985, %890
  %990 = phi float [ %988, %985 ], [ 1.000000e+00, %890 ]
  %991 = fmul fast float %990, %886
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 1
  %994 = fsub fast float -0.000000e+00, %172
  %995 = fsub fast float -0.000000e+00, %173
  %996 = fsub fast float -0.000000e+00, %330
  %997 = fsub fast float %996, %329
  %998 = fadd fast float %997, %993
  %999 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %994, float %995, float %998)  ; Dot3(ax,ay,az,bx,by,bz)
  %1000 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %338, float %339, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %1001 = fdiv fast float 1.000000e+00, %1000
  %1002 = fmul fast float %1001, %999
  %1003 = fmul fast float %338, %1002
  %1004 = fmul fast float %339, %1002
  %1005 = fadd fast float %1003, %172
  %1006 = fadd fast float %1004, %173
  %1007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.f32 %1007, 0
  %1009 = extractvalue %dx.types.CBufRet.f32 %1007, 1
  %1010 = fsub fast float %1005, %1008
  %1011 = fsub fast float %1006, %1009
  %1012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %1013 = extractvalue %dx.types.CBufRet.f32 %1012, 2
  %1014 = extractvalue %dx.types.CBufRet.f32 %1012, 3
  %1015 = fmul fast float %1010, %1013
  %1016 = fmul fast float %1011, %1014
  %1017 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.i32 %1017, 3
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1025, label %1020, !dx.controlflow.hints !80

; <label>:1020                                    ; preds = %989
  %1021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %21, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 0
  %1023 = extractvalue %dx.types.ResRet.f32 %1021, 1
  %1024 = extractvalue %dx.types.ResRet.f32 %1021, 2
  br label %1030

; <label>:1025                                    ; preds = %989
  %1026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %22, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1027 = extractvalue %dx.types.ResRet.f32 %1026, 0
  %1028 = extractvalue %dx.types.ResRet.f32 %1026, 1
  %1029 = extractvalue %dx.types.ResRet.f32 %1026, 2
  br label %1030

; <label>:1030                                    ; preds = %1025, %1020
  %1031 = phi float [ %1022, %1020 ], [ %1027, %1025 ]
  %1032 = phi float [ %1023, %1020 ], [ %1028, %1025 ]
  %1033 = phi float [ %1024, %1020 ], [ %1029, %1025 ]
  %1034 = extractvalue %dx.types.CBufRet.f32 %992, 2
  %1035 = fmul fast float %1034, %1031
  %1036 = extractvalue %dx.types.CBufRet.f32 %992, 0
  %1037 = fsub fast float %1002, %1036
  %1038 = fsub fast float %1037, %1035
  %1039 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1038)  ; FMax(a,b)
  %1040 = fmul fast float %1039, %1032
  %1041 = call float @dx.op.binary.f32(i32 36, float %1033, float %1040)  ; FMin(a,b)
  %1042 = fmul fast float %1041, 0xBFF7154760000000
  %1043 = call float @dx.op.unary.f32(i32 21, float %1042)  ; Exp(value)
  %1044 = fmul fast float %991, %1043
  br label %1045

; <label>:1045                                    ; preds = %1030, %885
  %1046 = phi float [ %1044, %1030 ], [ %886, %885 ]
  %1047 = call float @dx.op.binary.f32(i32 36, float %1046, float %1046)  ; FMin(a,b)
  %1048 = call float @dx.op.binary.f32(i32 36, float %1046, float %1047)  ; FMin(a,b)
  %1049 = fcmp fast ogt float %1048, 0.000000e+00
  br i1 %1049, label %1050, label %1459, !dx.controlflow.hints !81

; <label>:1050                                    ; preds = %1045
  br i1 %215, label %1051, label %1432, !dx.controlflow.hints !82

; <label>:1051                                    ; preds = %1050
  %1052 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.i32 %1052, 0
  %1054 = and i32 %1053, 64
  %1055 = icmp ne i32 %1054, 0
  %1056 = fsub fast float %174, %204
  %1057 = fcmp fast ule float %1056, 0.000000e+00
  %1058 = fmul fast float %338, 5.120000e+02
  %1059 = fmul fast float %339, 5.120000e+02
  %1060 = fmul fast float %340, 5.120000e+02
  %1061 = fadd fast float %1060, %330
  %1062 = fsub fast float %331, %1061
  %1063 = fmul fast float %1062, 2.000000e+00
  %1064 = fadd fast float %1063, %1061
  %1065 = select i1 %1057, float %1061, float %1064
  %1066 = fsub fast float %1065, %330
  %1067 = call float @dx.op.dot3.f32(i32 55, float %1058, float %1059, float %1066, float %1058, float %1059, float %1066)  ; Dot3(ax,ay,az,bx,by,bz)
  %1068 = call float @dx.op.unary.f32(i32 25, float %1067)  ; Rsqrt(value)
  %1069 = fmul fast float %1068, %1058
  %1070 = fmul fast float %1068, %1059
  %1071 = fmul fast float %1068, %1066
  %1072 = fsub fast float %204, %174
  %1073 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1072)  ; Dot3(ax,ay,az,bx,by,bz)
  %1074 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1069, float %1070, float %1071)  ; Dot3(ax,ay,az,bx,by,bz)
  %1075 = fdiv fast float 1.000000e+00, %1074
  %1076 = fmul fast float %1075, %1073
  %1077 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %1056, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1078 = fcmp fast ogt float %1077, 0.000000e+00
  %1079 = fcmp fast olt float %1077, 0.000000e+00
  %1080 = zext i1 %1078 to i32
  %1081 = zext i1 %1079 to i32
  %1082 = sub nsw i32 %1080, %1081
  %1083 = sitofp i32 %1082 to float
  %1084 = fsub fast float %1065, %331
  %1085 = call float @dx.op.dot3.f32(i32 55, float %1058, float %1059, float %1084, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1086 = fcmp fast ogt float %1085, 0.000000e+00
  %1087 = fcmp fast olt float %1085, 0.000000e+00
  %1088 = zext i1 %1086 to i32
  %1089 = zext i1 %1087 to i32
  %1090 = sub nsw i32 %1088, %1089
  %1091 = sitofp i32 %1090 to float
  %1092 = fcmp fast une float %1083, %1091
  br i1 %1092, label %1093, label %1103, !dx.controlflow.hints !83

; <label>:1093                                    ; preds = %1051
  %1094 = fmul fast float %1076, %1071
  %1095 = fmul fast float %1076, %1070
  %1096 = fmul fast float %1076, %1069
  %1097 = fmul fast float %1096, %1096
  %1098 = fmul fast float %1095, %1095
  %1099 = fadd fast float %1097, %1098
  %1100 = fmul fast float %1094, %1094
  %1101 = fadd fast float %1099, %1100
  %1102 = call float @dx.op.unary.f32(i32 24, float %1101)  ; Sqrt(value)
  br label %1113

; <label>:1103                                    ; preds = %1051
  %1104 = icmp slt i32 %1082, 0
  br i1 %1104, label %1105, label %1113, !dx.controlflow.hints !84

; <label>:1105                                    ; preds = %1103
  %1106 = fsub fast float %330, %1065
  %1107 = fmul fast float %1058, %1058
  %1108 = fmul fast float %1059, %1059
  %1109 = fadd fast float %1107, %1108
  %1110 = fmul fast float %1106, %1106
  %1111 = fadd fast float %1109, %1110
  %1112 = call float @dx.op.unary.f32(i32 24, float %1111)  ; Sqrt(value)
  br label %1113

; <label>:1113                                    ; preds = %1105, %1103, %1093
  %1114 = phi float [ %1102, %1093 ], [ %1112, %1105 ], [ 0.000000e+00, %1103 ]
  %1115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.i32 %1115, 1
  %1117 = icmp ne i32 %1116, 0
  %1118 = and i1 %1057, %1117
  %1119 = call float @dx.op.dot3.f32(i32 55, float %1069, float %1070, float %1071, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1120 = fmul fast float %1119, %1119
  %1121 = fsub fast float 1.000000e+00, %1120
  %1122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.f32 %1122, 0
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.CBufRet.f32 %1122, 1
  %1129 = extractvalue %dx.types.CBufRet.f32 %1124, 1
  %1130 = extractvalue %dx.types.CBufRet.f32 %1126, 1
  %1131 = extractvalue %dx.types.CBufRet.f32 %1122, 3
  %1132 = extractvalue %dx.types.CBufRet.f32 %1124, 3
  %1133 = extractvalue %dx.types.CBufRet.f32 %1126, 3
  %1134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %1135 = extractvalue %dx.types.CBufRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.CBufRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.CBufRet.f32 %1134, 2
  %1138 = extractvalue %dx.types.CBufRet.f32 %1134, 3
  br i1 %1118, label %1139, label %1332, !dx.controlflow.hints !85

; <label>:1139                                    ; preds = %1113
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 0
  %1142 = fmul fast float %1141, %1141
  %1143 = fmul fast float %1142, %1121
  %1144 = fsub fast float 1.000000e+00, %1143
  %1145 = fcmp fast oge float %1144, 0.000000e+00
  %1146 = fmul fast float %1141, %1069
  %1147 = fmul fast float %1141, %1070
  %1148 = fmul fast float %1141, %1071
  %1149 = call float @dx.op.unary.f32(i32 24, float %1144)  ; Sqrt(value)
  %1150 = fmul fast float %1141, %1119
  %1151 = fsub fast float -0.000000e+00, %1149
  %1152 = fsub fast float %1151, %1150
  %1153 = fadd fast float %1152, %1148
  %1154 = select i1 %1145, float %1146, float 0.000000e+00
  %1155 = select i1 %1145, float %1147, float 0.000000e+00
  %1156 = select i1 %1145, float %1153, float 0.000000e+00
  %1157 = fmul fast float %1154, %1114
  %1158 = fmul fast float %1155, %1114
  %1159 = fmul fast float %1156, %1114
  %1160 = fadd fast float %172, %1157
  %1161 = fadd fast float %1160, %1131
  %1162 = fadd fast float %173, %1158
  %1163 = fadd fast float %1162, %1132
  %1164 = fadd fast float %174, %1159
  %1165 = fadd fast float %1164, %1133
  %1166 = fmul fast float %1161, %1123
  %1167 = call float @dx.op.tertiary.f32(i32 46, float %1163, float %1125, float %1166)  ; FMad(a,b,c)
  %1168 = call float @dx.op.tertiary.f32(i32 46, float %1165, float %1127, float %1167)  ; FMad(a,b,c)
  %1169 = fmul fast float %1161, %1128
  %1170 = call float @dx.op.tertiary.f32(i32 46, float %1163, float %1129, float %1169)  ; FMad(a,b,c)
  %1171 = call float @dx.op.tertiary.f32(i32 46, float %1165, float %1130, float %1170)  ; FMad(a,b,c)
  %1172 = fsub fast float %1168, %1131
  %1173 = fsub fast float %1172, %1135
  %1174 = fadd fast float %1173, %1137
  %1175 = fsub fast float %1171, %1132
  %1176 = fsub fast float %1175, %1136
  %1177 = fadd fast float %1176, %1137
  %1178 = fmul fast float %1174, %1138
  %1179 = fmul fast float %1177, %1138
  %1180 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1181 = call float @dx.op.unary.f32(i32 7, float %1179)  ; Saturate(value)
  %1182 = fsub fast float 1.000000e+00, %1180
  %1183 = fsub fast float 1.000000e+00, %1181
  %1184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1182, float %1183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1185 = extractvalue %dx.types.ResRet.f32 %1184, 0
  %1186 = fmul fast float %1185, 0x3FBC5ABC00000000
  %1187 = extractvalue %dx.types.CBufRet.f32 %1140, 1
  %1188 = fmul fast float %1187, %1187
  %1189 = fmul fast float %1188, %1121
  %1190 = fsub fast float 1.000000e+00, %1189
  %1191 = fcmp fast oge float %1190, 0.000000e+00
  %1192 = fmul fast float %1187, %1069
  %1193 = fmul fast float %1187, %1070
  %1194 = fmul fast float %1187, %1071
  %1195 = call float @dx.op.unary.f32(i32 24, float %1190)  ; Sqrt(value)
  %1196 = fmul fast float %1187, %1119
  %1197 = fsub fast float -0.000000e+00, %1195
  %1198 = fsub fast float %1197, %1196
  %1199 = fadd fast float %1198, %1194
  %1200 = select i1 %1191, float %1192, float 0.000000e+00
  %1201 = select i1 %1191, float %1193, float 0.000000e+00
  %1202 = select i1 %1191, float %1199, float 0.000000e+00
  %1203 = fmul fast float %1200, %1114
  %1204 = fmul fast float %1201, %1114
  %1205 = fmul fast float %1202, %1114
  %1206 = fadd fast float %172, %1203
  %1207 = fadd fast float %1206, %1131
  %1208 = fadd fast float %173, %1204
  %1209 = fadd fast float %1208, %1132
  %1210 = fadd fast float %174, %1205
  %1211 = fadd fast float %1210, %1133
  %1212 = fmul fast float %1207, %1123
  %1213 = call float @dx.op.tertiary.f32(i32 46, float %1209, float %1125, float %1212)  ; FMad(a,b,c)
  %1214 = call float @dx.op.tertiary.f32(i32 46, float %1211, float %1127, float %1213)  ; FMad(a,b,c)
  %1215 = fmul fast float %1207, %1128
  %1216 = call float @dx.op.tertiary.f32(i32 46, float %1209, float %1129, float %1215)  ; FMad(a,b,c)
  %1217 = call float @dx.op.tertiary.f32(i32 46, float %1211, float %1130, float %1216)  ; FMad(a,b,c)
  %1218 = fsub fast float %1214, %1131
  %1219 = fsub fast float %1218, %1135
  %1220 = fadd fast float %1219, %1137
  %1221 = fsub fast float %1217, %1132
  %1222 = fsub fast float %1221, %1136
  %1223 = fadd fast float %1222, %1137
  %1224 = fmul fast float %1220, %1138
  %1225 = fmul fast float %1223, %1138
  %1226 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  %1227 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  %1228 = fsub fast float 1.000000e+00, %1226
  %1229 = fsub fast float 1.000000e+00, %1227
  %1230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1228, float %1229, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = fmul fast float %1231, 0x3F9E4BBD60000000
  %1233 = extractvalue %dx.types.CBufRet.f32 %1140, 2
  %1234 = fmul fast float %1233, %1233
  %1235 = fmul fast float %1234, %1121
  %1236 = fsub fast float 1.000000e+00, %1235
  %1237 = fcmp fast oge float %1236, 0.000000e+00
  %1238 = fmul fast float %1233, %1069
  %1239 = fmul fast float %1233, %1070
  %1240 = fmul fast float %1233, %1071
  %1241 = call float @dx.op.unary.f32(i32 24, float %1236)  ; Sqrt(value)
  %1242 = fmul fast float %1233, %1119
  %1243 = fsub fast float -0.000000e+00, %1241
  %1244 = fsub fast float %1243, %1242
  %1245 = fadd fast float %1244, %1240
  %1246 = select i1 %1237, float %1238, float 0.000000e+00
  %1247 = select i1 %1237, float %1239, float 0.000000e+00
  %1248 = select i1 %1237, float %1245, float 0.000000e+00
  %1249 = fmul fast float %1246, %1114
  %1250 = fmul fast float %1247, %1114
  %1251 = fmul fast float %1248, %1114
  %1252 = fadd fast float %172, %1249
  %1253 = fadd fast float %1252, %1131
  %1254 = fadd fast float %173, %1250
  %1255 = fadd fast float %1254, %1132
  %1256 = fadd fast float %174, %1251
  %1257 = fadd fast float %1256, %1133
  %1258 = fmul fast float %1253, %1123
  %1259 = call float @dx.op.tertiary.f32(i32 46, float %1255, float %1125, float %1258)  ; FMad(a,b,c)
  %1260 = call float @dx.op.tertiary.f32(i32 46, float %1257, float %1127, float %1259)  ; FMad(a,b,c)
  %1261 = fmul fast float %1253, %1128
  %1262 = call float @dx.op.tertiary.f32(i32 46, float %1255, float %1129, float %1261)  ; FMad(a,b,c)
  %1263 = call float @dx.op.tertiary.f32(i32 46, float %1257, float %1130, float %1262)  ; FMad(a,b,c)
  %1264 = fsub fast float %1260, %1131
  %1265 = fsub fast float %1264, %1135
  %1266 = fadd fast float %1265, %1137
  %1267 = fsub fast float %1263, %1132
  %1268 = fsub fast float %1267, %1136
  %1269 = fadd fast float %1268, %1137
  %1270 = fmul fast float %1266, %1138
  %1271 = fmul fast float %1269, %1138
  %1272 = call float @dx.op.unary.f32(i32 7, float %1270)  ; Saturate(value)
  %1273 = call float @dx.op.unary.f32(i32 7, float %1271)  ; Saturate(value)
  %1274 = fsub fast float 1.000000e+00, %1272
  %1275 = fsub fast float 1.000000e+00, %1273
  %1276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1274, float %1275, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 0
  %1278 = fmul fast float %1277, 0x3FDDEACB00000000
  %1279 = fadd fast float %1278, %1232
  %1280 = extractvalue %dx.types.CBufRet.f32 %1140, 3
  %1281 = fmul fast float %1280, %1280
  %1282 = fmul fast float %1281, %1121
  %1283 = fsub fast float 1.000000e+00, %1282
  %1284 = fcmp fast oge float %1283, 0.000000e+00
  %1285 = fmul fast float %1280, %1069
  %1286 = fmul fast float %1280, %1070
  %1287 = fmul fast float %1280, %1071
  %1288 = call float @dx.op.unary.f32(i32 24, float %1283)  ; Sqrt(value)
  %1289 = fmul fast float %1280, %1119
  %1290 = fsub fast float -0.000000e+00, %1288
  %1291 = fsub fast float %1290, %1289
  %1292 = fadd fast float %1291, %1287
  %1293 = select i1 %1284, float %1285, float 0.000000e+00
  %1294 = select i1 %1284, float %1286, float 0.000000e+00
  %1295 = select i1 %1284, float %1292, float 0.000000e+00
  %1296 = fmul fast float %1293, %1114
  %1297 = fmul fast float %1294, %1114
  %1298 = fmul fast float %1295, %1114
  %1299 = fadd fast float %172, %1296
  %1300 = fadd fast float %1299, %1131
  %1301 = fadd fast float %173, %1297
  %1302 = fadd fast float %1301, %1132
  %1303 = fadd fast float %174, %1298
  %1304 = fadd fast float %1303, %1133
  %1305 = fmul fast float %1300, %1123
  %1306 = call float @dx.op.tertiary.f32(i32 46, float %1302, float %1125, float %1305)  ; FMad(a,b,c)
  %1307 = call float @dx.op.tertiary.f32(i32 46, float %1304, float %1127, float %1306)  ; FMad(a,b,c)
  %1308 = fmul fast float %1300, %1128
  %1309 = call float @dx.op.tertiary.f32(i32 46, float %1302, float %1129, float %1308)  ; FMad(a,b,c)
  %1310 = call float @dx.op.tertiary.f32(i32 46, float %1304, float %1130, float %1309)  ; FMad(a,b,c)
  %1311 = fsub fast float %1307, %1131
  %1312 = fsub fast float %1311, %1135
  %1313 = fadd fast float %1312, %1137
  %1314 = fsub fast float %1310, %1132
  %1315 = fsub fast float %1314, %1136
  %1316 = fadd fast float %1315, %1137
  %1317 = fmul fast float %1313, %1138
  %1318 = fmul fast float %1316, %1138
  %1319 = call float @dx.op.unary.f32(i32 7, float %1317)  ; Saturate(value)
  %1320 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1321 = fsub fast float 1.000000e+00, %1319
  %1322 = fsub fast float 1.000000e+00, %1320
  %1323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1321, float %1322, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1324 = extractvalue %dx.types.ResRet.f32 %1323, 0
  %1325 = fmul fast float %1324, 0x3FE0183CA0000000
  %1326 = fmul fast float %1324, 0x3FB51033E0000000
  %1327 = fadd fast float %1279, %1325
  %1328 = fadd fast float %1277, %1231
  %1329 = fmul fast float %1328, 0x3FD9D2A200000000
  %1330 = fadd fast float %1326, %1186
  %1331 = fadd fast float %1330, %1329
  br label %1378

; <label>:1332                                    ; preds = %1113
  %1333 = fmul fast float %1121, 0x3FE2024E20000000
  %1334 = fsub fast float 1.000000e+00, %1333
  %1335 = fcmp fast oge float %1334, 0.000000e+00
  %1336 = fmul fast float %1069, 0x3FE8018960000000
  %1337 = fmul fast float %1070, 0x3FE8018960000000
  %1338 = fmul fast float %1071, 0x3FE8018960000000
  %1339 = call float @dx.op.unary.f32(i32 24, float %1334)  ; Sqrt(value)
  %1340 = fmul fast float %1119, 0x3FE8018960000000
  %1341 = fsub fast float %1338, %1339
  %1342 = fsub fast float %1341, %1340
  %1343 = select i1 %1335, float %1336, float 0.000000e+00
  %1344 = select i1 %1335, float %1337, float 0.000000e+00
  %1345 = select i1 %1335, float %1342, float 0.000000e+00
  %1346 = select i1 %1057, float %1343, float %1069
  %1347 = select i1 %1057, float %1344, float %1070
  %1348 = select i1 %1057, float %1345, float %1071
  %1349 = fmul fast float %1346, %1114
  %1350 = fmul fast float %1347, %1114
  %1351 = fmul fast float %1348, %1114
  %1352 = fadd fast float %172, %1349
  %1353 = fadd fast float %1352, %1131
  %1354 = fadd fast float %173, %1350
  %1355 = fadd fast float %1354, %1132
  %1356 = fadd fast float %174, %1351
  %1357 = fadd fast float %1356, %1133
  %1358 = fmul fast float %1353, %1123
  %1359 = call float @dx.op.tertiary.f32(i32 46, float %1355, float %1125, float %1358)  ; FMad(a,b,c)
  %1360 = call float @dx.op.tertiary.f32(i32 46, float %1357, float %1127, float %1359)  ; FMad(a,b,c)
  %1361 = fmul fast float %1353, %1128
  %1362 = call float @dx.op.tertiary.f32(i32 46, float %1355, float %1129, float %1361)  ; FMad(a,b,c)
  %1363 = call float @dx.op.tertiary.f32(i32 46, float %1357, float %1130, float %1362)  ; FMad(a,b,c)
  %1364 = fsub fast float %1360, %1131
  %1365 = fsub fast float %1364, %1135
  %1366 = fadd fast float %1365, %1137
  %1367 = fsub fast float %1363, %1132
  %1368 = fsub fast float %1367, %1136
  %1369 = fadd fast float %1368, %1137
  %1370 = fmul fast float %1366, %1138
  %1371 = fmul fast float %1369, %1138
  %1372 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1373 = call float @dx.op.unary.f32(i32 7, float %1371)  ; Saturate(value)
  %1374 = fsub fast float 1.000000e+00, %1372
  %1375 = fsub fast float 1.000000e+00, %1373
  %1376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1374, float %1375, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1377 = extractvalue %dx.types.ResRet.f32 %1376, 0
  br label %1378

; <label>:1378                                    ; preds = %1332, %1139
  %1379 = phi float [ %1377, %1332 ], [ %1327, %1139 ]
  %1380 = phi float [ %1377, %1332 ], [ %1331, %1139 ]
  %1381 = phi float [ %1377, %1332 ], [ %1185, %1139 ]
  %1382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1383 = extractvalue %dx.types.CBufRet.f32 %1382, 0
  %1384 = call float @dx.op.unary.f32(i32 6, float %1383)  ; FAbs(value)
  %1385 = fmul fast float %1114, %1114
  %1386 = fadd fast float %1385, 1.000000e+00
  %1387 = fdiv fast float %1384, %1386
  %1388 = call float @dx.op.unary.f32(i32 7, float %1387)  ; Saturate(value)
  %1389 = call float @dx.op.unary.f32(i32 6, float %1119)  ; FAbs(value)
  %1390 = fsub fast float 1.000000e+00, %1389
  %1391 = bitcast float %1390 to i32
  %1392 = sitofp i32 %1391 to float
  %1393 = fptosi float %1392 to i32
  %1394 = bitcast i32 %1393 to float
  %1395 = fmul fast float %1394, 0x3FEF333340000000
  %1396 = fadd fast float %1395, 0x3F999999A0000000
  %1397 = call float @dx.op.unary.f32(i32 7, float %1396)  ; Saturate(value)
  %1398 = fsub fast float 1.000000e+00, %1397
  %1399 = fadd fast float %1379, 1.000000e+00
  %1400 = fadd fast float %1380, 1.000000e+00
  %1401 = fadd fast float %1381, 1.000000e+00
  %1402 = fmul fast float %1398, %1399
  %1403 = fmul fast float %1398, %1400
  %1404 = fmul fast float %1398, %1401
  %1405 = fmul fast float %1388, %1399
  %1406 = fmul fast float %1405, %1397
  %1407 = fmul fast float %1388, %1400
  %1408 = fmul fast float %1407, %1397
  %1409 = fmul fast float %1388, %1401
  %1410 = fmul fast float %1409, %1397
  %1411 = fadd fast float %1406, 1.000000e+00
  %1412 = fadd fast float %1408, 1.000000e+00
  %1413 = fadd fast float %1410, 1.000000e+00
  %1414 = call float @dx.op.unary.f32(i32 6, float %1056)  ; FAbs(value)
  %1415 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  %1416 = select i1 %1057, float %1402, float %1411
  %1417 = select i1 %1057, float %1403, float %1412
  %1418 = select i1 %1057, float %1404, float %1413
  %1419 = select i1 %1055, float %1415, float 0.000000e+00
  %1420 = fadd fast float %1416, -1.000000e+00
  %1421 = fadd fast float %1417, -1.000000e+00
  %1422 = fadd fast float %1418, -1.000000e+00
  %1423 = fmul fast float %1420, %1419
  %1424 = fmul fast float %1421, %1419
  %1425 = fmul fast float %1422, %1419
  %1426 = fadd fast float %1423, 1.000000e+00
  %1427 = fadd fast float %1424, 1.000000e+00
  %1428 = fadd fast float %1425, 1.000000e+00
  %1429 = fmul fast float %1426, %342
  %1430 = fmul fast float %1427, %343
  %1431 = fmul fast float %1428, %344
  br label %1432

; <label>:1432                                    ; preds = %1378, %1050
  %1433 = phi float [ %1429, %1378 ], [ %342, %1050 ]
  %1434 = phi float [ %1430, %1378 ], [ %343, %1050 ]
  %1435 = phi float [ %1431, %1378 ], [ %344, %1050 ]
  %1436 = call float @dx.op.dot3.f32(i32 55, float %338, float %339, float %340, float %177, float %178, float %179)  ; Dot3(ax,ay,az,bx,by,bz)
  %1437 = fcmp fast ogt float %325, 0.000000e+00
  %1438 = select i1 %1437, float 1.000000e+00, float -1.000000e+00
  %1439 = fmul fast float %102, 7.812500e-03
  %1440 = fmul fast float %102, 3.125000e-02
  %1441 = fadd fast float %1440, -3.125000e-02
  %1442 = fmul fast float %1438, 5.000000e-01
  %1443 = fmul fast float %1442, %1436
  %1444 = fmul fast float %1438, %325
  %1445 = fadd fast float %1439, 4.921875e-01
  %1446 = fadd fast float %1445, %1443
  %1447 = fadd fast float %1439, 0x3FB25F3060000000
  %1448 = fadd fast float %1441, %1444
  %1449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %22, float %1446, float %1447, float %1448, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1450 = extractvalue %dx.types.ResRet.f32 %1449, 0
  %1451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.f32 %1451, 0
  %1453 = fmul fast float %1046, 0x400921FB60000000
  %1454 = fmul fast float %1453, %1450
  %1455 = fmul fast float %1454, %1452
  %1456 = fmul fast float %1455, %1433
  %1457 = fmul fast float %1455, %1434
  %1458 = fmul fast float %1455, %1435
  br label %1459

; <label>:1459                                    ; preds = %1432, %1045, %318
  %1460 = phi float [ %1456, %1432 ], [ 0.000000e+00, %318 ], [ 0.000000e+00, %1045 ]
  %1461 = phi float [ %1457, %1432 ], [ 0.000000e+00, %318 ], [ 0.000000e+00, %1045 ]
  %1462 = phi float [ %1458, %1432 ], [ 0.000000e+00, %318 ], [ 0.000000e+00, %1045 ]
  %1463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %20, float %121, float %122, float %123, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  %1465 = extractvalue %dx.types.ResRet.f32 %1463, 1
  %1466 = extractvalue %dx.types.ResRet.f32 %1463, 2
  %1467 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1464)  ; IsNaN(value)
  %1468 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1465)  ; IsNaN(value)
  %1469 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1466)  ; IsNaN(value)
  %1470 = or i1 %1467, %1468
  %1471 = or i1 %1470, %1469
  %1472 = select i1 %1471, float 0.000000e+00, float %1464
  %1473 = select i1 %1471, float 0.000000e+00, float %1465
  %1474 = select i1 %1471, float 0.000000e+00, float %1466
  %1475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1476 = extractvalue %dx.types.CBufRet.f32 %1475, 1
  %1477 = fmul fast float %1472, %1476
  %1478 = fmul fast float %1473, %1476
  %1479 = fmul fast float %1474, %1476
  %1480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1481 = extractvalue %dx.types.CBufRet.f32 %1480, 3
  %1482 = fmul fast float %1477, %1481
  %1483 = fmul fast float %1478, %1481
  %1484 = fmul fast float %1479, %1481
  %1485 = fadd fast float %1482, %1460
  %1486 = fadd fast float %1483, %1461
  %1487 = fadd fast float %1484, %1462
  br label %1488

; <label>:1488                                    ; preds = %1459, %297
  %1489 = phi float [ %322, %1459 ], [ %313, %297 ]
  %1490 = phi float [ %323, %1459 ], [ %314, %297 ]
  %1491 = phi float [ %324, %1459 ], [ %315, %297 ]
  %1492 = phi float [ %1485, %1459 ], [ 0.000000e+00, %297 ]
  %1493 = phi float [ %1486, %1459 ], [ 0.000000e+00, %297 ]
  %1494 = phi float [ %1487, %1459 ], [ 0.000000e+00, %297 ]
  %1495 = fmul fast float %1489, %316
  %1496 = fmul fast float %1490, %316
  %1497 = fmul fast float %1491, %316
  %1498 = fmul fast float %1495, %1492
  %1499 = fmul fast float %1496, %1493
  %1500 = fmul fast float %1497, %1494
  %1501 = xor i1 %218, true
  %1502 = and i1 %64, %1501
  %1503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %1504 = extractvalue %dx.types.CBufRet.f32 %1503, 0
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.f32 %1505, 0
  %1507 = select i1 %182, float %1504, float %1506
  %1508 = fmul fast float %1498, %1507
  %1509 = fmul fast float %1499, %1507
  %1510 = fmul fast float %1500, %1507
  %1511 = fmul fast float %1509, 5.000000e-01
  %1512 = fadd fast float %1500, %1498
  %1513 = fmul fast float %1507, %1512
  %1514 = fmul fast float %1513, 2.500000e-01
  %1515 = fadd fast float %1514, %1511
  %1516 = call float @dx.op.unary.f32(i32 23, float %1515)  ; Log(value)
  %1517 = fmul fast float %1516, 0x3FE62E4300000000
  %1518 = fmul fast float %1517, %1517
  %1519 = select i1 %1502, float 1.000000e+00, float 0.000000e+00
  store float %1519, float addrspace(3)* %223, align 4, !tbaa !39, !noalias !43
  %1520 = fmul fast float %1517, %1519
  store float %1520, float addrspace(3)* %225, align 4, !tbaa !39, !noalias !43
  %1521 = fmul fast float %1518, %1519
  store float %1521, float addrspace(3)* %227, align 4, !tbaa !39, !noalias !43
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1522 = load float, float addrspace(3)* %229, align 4, !tbaa !39, !noalias !43
  %1523 = fadd fast float %1522, %1519
  %1524 = load float, float addrspace(3)* %232, align 4, !tbaa !39, !noalias !43
  %1525 = fadd fast float %1524, %1517
  %1526 = load float, float addrspace(3)* %235, align 4, !tbaa !39, !noalias !43
  %1527 = fadd fast float %1526, %1518
  store float %1523, float addrspace(3)* %223, align 4, !tbaa !39, !noalias !43
  store float %1525, float addrspace(3)* %225, align 4, !tbaa !39, !noalias !43
  store float %1527, float addrspace(3)* %227, align 4, !tbaa !39, !noalias !43
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1528 = load float, float addrspace(3)* %239, align 4, !tbaa !39, !noalias !43
  %1529 = fadd fast float %1528, %1523
  %1530 = load float, float addrspace(3)* %242, align 4, !tbaa !39, !noalias !43
  %1531 = fadd fast float %1530, %1525
  %1532 = load float, float addrspace(3)* %245, align 4, !tbaa !39, !noalias !43
  %1533 = fadd fast float %1532, %1527
  store float %1529, float addrspace(3)* %223, align 4, !tbaa !39, !noalias !43
  store float %1531, float addrspace(3)* %225, align 4, !tbaa !39, !noalias !43
  store float %1533, float addrspace(3)* %227, align 4, !tbaa !39, !noalias !43
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1534 = load float, float addrspace(3)* %249, align 4, !tbaa !39, !noalias !43
  %1535 = fadd fast float %1534, %1529
  %1536 = load float, float addrspace(3)* %252, align 4, !tbaa !39, !noalias !43
  %1537 = fadd fast float %1536, %1531
  %1538 = fdiv fast float %1537, %1535
  %1539 = and i1 %1502, %259
  br i1 %1539, label %1540, label %1548, !dx.controlflow.hints !47

; <label>:1540                                    ; preds = %1488
  %1541 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %248
  %1542 = load float, float addrspace(3)* %1541, align 4, !tbaa !39, !noalias !43
  %1543 = fadd fast float %1542, %1533
  %1544 = fdiv fast float %1543, %1535
  %1545 = lshr i32 %52, 1
  %1546 = lshr i32 %53, 1
  %1547 = lshr i32 %217, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1545, i32 %1546, i32 %1547, float %1538, float %1544, float %1538, float %1538, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1548

; <label>:1548                                    ; preds = %1540, %1488
  br i1 %1502, label %1549, label %1583, !dx.controlflow.hints !48

; <label>:1549                                    ; preds = %1548
  %1550 = fadd fast float %102, 0x3FE3C6EF40000000
  %1551 = call float @dx.op.unary.f32(i32 22, float %1550)  ; Frc(value)
  %1552 = call float @dx.op.unary.f32(i32 23, float %1508)  ; Log(value)
  %1553 = fadd fast float %1552, -7.000000e+00
  %1554 = call float @dx.op.unary.f32(i32 21, float %1553)  ; Exp(value)
  %1555 = fmul fast float %1551, 2.000000e+00
  %1556 = fadd fast float %1555, -1.000000e+00
  %1557 = fmul fast float %1554, %1556
  %1558 = fcmp fast ogt float %1508, 0.000000e+00
  %1559 = select i1 %1558, float %1557, float 0.000000e+00
  %1560 = fadd fast float %1559, %1508
  %1561 = fadd fast float %102, 0x3FF3C6EF40000000
  %1562 = call float @dx.op.unary.f32(i32 22, float %1561)  ; Frc(value)
  %1563 = call float @dx.op.unary.f32(i32 23, float %1509)  ; Log(value)
  %1564 = fadd fast float %1563, -7.000000e+00
  %1565 = call float @dx.op.unary.f32(i32 21, float %1564)  ; Exp(value)
  %1566 = fmul fast float %1562, 2.000000e+00
  %1567 = fadd fast float %1566, -1.000000e+00
  %1568 = fmul fast float %1565, %1567
  %1569 = fcmp fast ogt float %1509, 0.000000e+00
  %1570 = select i1 %1569, float %1568, float 0.000000e+00
  %1571 = fadd fast float %1570, %1509
  %1572 = fadd fast float %102, 0x3FFDAA66E0000000
  %1573 = call float @dx.op.unary.f32(i32 22, float %1572)  ; Frc(value)
  %1574 = call float @dx.op.unary.f32(i32 23, float %1510)  ; Log(value)
  %1575 = fadd fast float %1574, -6.000000e+00
  %1576 = call float @dx.op.unary.f32(i32 21, float %1575)  ; Exp(value)
  %1577 = fmul fast float %1573, 2.000000e+00
  %1578 = fadd fast float %1577, -1.000000e+00
  %1579 = fmul fast float %1576, %1578
  %1580 = fcmp fast ogt float %1510, 0.000000e+00
  %1581 = select i1 %1580, float %1579, float 0.000000e+00
  %1582 = fadd fast float %1581, %1510
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %52, i32 %53, i32 %217, float %1560, float %1571, float %1582, float %1560, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1583

; <label>:1583                                    ; preds = %1549, %1548
  %1584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1585 = extractvalue %dx.types.CBufRet.f32 %1584, 0
  %1586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1587 = extractvalue %dx.types.CBufRet.f32 %1586, 0
  %1588 = select i1 %182, float %1585, float %1587
  %1589 = fmul fast float %1588, %316
  %1590 = fmul fast float %1589, 5.000000e-01
  %1591 = fadd fast float %316, %316
  %1592 = fmul fast float %1588, %1591
  %1593 = fmul fast float %1592, 2.500000e-01
  %1594 = fadd fast float %1593, %1590
  %1595 = fmul fast float %1594, %1594
  store float %1519, float addrspace(3)* %223, align 4, !tbaa !39, !noalias !43
  %1596 = fmul fast float %1594, %1519
  store float %1596, float addrspace(3)* %225, align 4, !tbaa !39, !noalias !43
  %1597 = fmul fast float %1595, %1519
  store float %1597, float addrspace(3)* %227, align 4, !tbaa !39, !noalias !43
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1598 = load float, float addrspace(3)* %229, align 4, !tbaa !39, !noalias !43
  %1599 = fadd fast float %1598, %1519
  %1600 = load float, float addrspace(3)* %232, align 4, !tbaa !39, !noalias !43
  %1601 = fadd fast float %1594, %1600
  %1602 = load float, float addrspace(3)* %235, align 4, !tbaa !39, !noalias !43
  %1603 = fadd fast float %1595, %1602
  store float %1599, float addrspace(3)* %223, align 4, !tbaa !39, !noalias !43
  store float %1601, float addrspace(3)* %225, align 4, !tbaa !39, !noalias !43
  store float %1603, float addrspace(3)* %227, align 4, !tbaa !39, !noalias !43
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1604 = load float, float addrspace(3)* %239, align 4, !tbaa !39, !noalias !43
  %1605 = fadd fast float %1604, %1599
  %1606 = load float, float addrspace(3)* %242, align 4, !tbaa !39, !noalias !43
  %1607 = fadd fast float %1601, %1606
  %1608 = load float, float addrspace(3)* %245, align 4, !tbaa !39, !noalias !43
  %1609 = fadd fast float %1603, %1608
  store float %1605, float addrspace(3)* %223, align 4, !tbaa !39, !noalias !43
  store float %1607, float addrspace(3)* %225, align 4, !tbaa !39, !noalias !43
  store float %1609, float addrspace(3)* %227, align 4, !tbaa !39, !noalias !43
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1610 = load float, float addrspace(3)* %249, align 4, !tbaa !39, !noalias !43
  %1611 = fadd fast float %1610, %1605
  %1612 = load float, float addrspace(3)* %252, align 4, !tbaa !39, !noalias !43
  %1613 = fadd fast float %1612, %1607
  %1614 = fdiv fast float %1613, %1611
  br i1 %1539, label %1615, label %1623, !dx.controlflow.hints !49

; <label>:1615                                    ; preds = %1583
  %1616 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %248
  %1617 = load float, float addrspace(3)* %1616, align 4, !tbaa !39, !noalias !43
  %1618 = fadd fast float %1617, %1609
  %1619 = fdiv fast float %1618, %1611
  %1620 = lshr i32 %52, 1
  %1621 = lshr i32 %53, 1
  %1622 = lshr i32 %217, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1620, i32 %1621, i32 %1622, float %1614, float %1619, float %1614, float %1614, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1623

; <label>:1623                                    ; preds = %1615, %1583
  br i1 %1502, label %1624, label %1652, !dx.controlflow.hints !50

; <label>:1624                                    ; preds = %1623
  %1625 = fadd fast float %102, 0x3FE3C6EF40000000
  %1626 = call float @dx.op.unary.f32(i32 22, float %1625)  ; Frc(value)
  %1627 = call float @dx.op.unary.f32(i32 23, float %1589)  ; Log(value)
  %1628 = fadd fast float %1627, -7.000000e+00
  %1629 = call float @dx.op.unary.f32(i32 21, float %1628)  ; Exp(value)
  %1630 = fmul fast float %1626, 2.000000e+00
  %1631 = fadd fast float %1630, -1.000000e+00
  %1632 = fmul fast float %1629, %1631
  %1633 = fcmp fast ogt float %1589, 0.000000e+00
  %1634 = select i1 %1633, float %1632, float 0.000000e+00
  %1635 = fadd fast float %1634, %1589
  %1636 = fadd fast float %102, 0x3FF3C6EF40000000
  %1637 = call float @dx.op.unary.f32(i32 22, float %1636)  ; Frc(value)
  %1638 = fmul fast float %1637, 2.000000e+00
  %1639 = fadd fast float %1638, -1.000000e+00
  %1640 = fmul fast float %1629, %1639
  %1641 = select i1 %1633, float %1640, float 0.000000e+00
  %1642 = fadd fast float %1641, %1589
  %1643 = fadd fast float %102, 0x3FFDAA66E0000000
  %1644 = call float @dx.op.unary.f32(i32 22, float %1643)  ; Frc(value)
  %1645 = fadd fast float %1627, -6.000000e+00
  %1646 = call float @dx.op.unary.f32(i32 21, float %1645)  ; Exp(value)
  %1647 = fmul fast float %1644, 2.000000e+00
  %1648 = fadd fast float %1647, -1.000000e+00
  %1649 = fmul fast float %1646, %1648
  %1650 = select i1 %1633, float %1649, float 0.000000e+00
  %1651 = fadd fast float %1650, %1589
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %52, i32 %53, i32 %217, float %1635, float %1642, float %1651, float %1635, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1652

; <label>:1652                                    ; preds = %1624, %1623
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
!dx.entryPoints = !{!36}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !22, !27, !30}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 40, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 44, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture3D<float>"* undef, !"", i32 0, i32 10, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 34, i32 1, i32 7, i32 0, !15}
!15 = !{i32 0, i32 14}
!16 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!17 = !{i32 9, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 23, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!22 = !{!23, !24, !25, !26}
!23 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!24 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!25 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!26 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!27 = !{!28, !29}
!28 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!30 = !{!31, !32, !33, !34, !35}
!31 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!32 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!33 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!34 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!35 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!36 = !{void ()* @cs_volumetric_forwardplus_scatter_global_water, !"cs_volumetric_forwardplus_scatter_global_water", null, !4, !37}
!37 = !{i32 0, i64 272, i32 4, !38}
!38 = !{i32 4, i32 4, i32 4}
!39 = !{!40, !40, i64 0}
!40 = !{!"float", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!44, !46}
!44 = distinct !{!44, !45, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!45 = distinct !{!45, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!46 = distinct !{!46, !45, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = !{!63, !63, i64 0}
!63 = !{!"int", !41, i64 0}
!64 = !{!65, !67, !69, !44, !46}
!65 = distinct !{!65, !66, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!66 = distinct !{!66, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!67 = distinct !{!67, !68, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!68 = distinct !{!68, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!69 = distinct !{!69, !70, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z: %agg.result"}
!70 = distinct !{!70, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z"}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}

