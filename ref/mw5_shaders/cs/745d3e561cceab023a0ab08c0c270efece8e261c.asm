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
; shader hash: 0e421d3b772e87a58662a61c86441aa0
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
;                                   texture    byte         r/o      T3            t19     1
;                                   texture    byte         r/o      T4            t20     1
;                                   texture     f32          1d      T5             t4     1
;                                   texture     f32     2darray      T6             t3     1
;                                   texture     f32          2d      T7             t0     1
;                                   textureunorm_f32     2darray      T8            t34     1
;                                   texture    byte         r/o      T9            t28     1
;                                   texture     f32          2d     T10             t1     1
;                                   texture     f32          2d     T11            t23     1
;                                   texture     f32          2d     T12             t2     1
;                                   texture     f32          2d     T13            t18     1
;                                   texture    byte         r/o     T14            t12     1
;                                   texture     f32          3d     T15             t5     1
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
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
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
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = alloca [4 x i32], align 4
  %29 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %30 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %31 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %32 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %33 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %34 = alloca [12 x float], align 4
  %35 = alloca [12 x float], align 4
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 3
  %38 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.i32 %38, 1
  %40 = mul i32 %39, %37
  %41 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.i32 %41, 1
  %43 = mul i32 %40, %42
  %44 = add i32 %43, %32
  %45 = shl i32 %44, 2
  %46 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %45, i32 undef)  ; BufferLoad(srv,index,wot)
  %47 = extractvalue %dx.types.ResRet.i32 %46, 0
  %48 = and i32 %47, 255
  %49 = lshr i32 %47, 8
  %50 = and i32 %49, 255
  %51 = lshr i32 %47, 16
  %52 = and i32 %51, 255
  %53 = shl nuw nsw i32 %48, 2
  %54 = shl nuw nsw i32 %50, 2
  %55 = shl nuw nsw i32 %52, 2
  %56 = add i32 %53, %29
  %57 = add i32 %54, %30
  %58 = add i32 %55, %31
  %59 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.i32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.i32 %59, 1
  %62 = extractvalue %dx.types.CBufRet.i32 %59, 2
  %63 = icmp uge i32 %56, %60
  %64 = icmp uge i32 %57, %61
  %65 = icmp uge i32 %58, %62
  %66 = or i1 %63, %64
  %67 = or i1 %65, %66
  %68 = xor i1 %67, true
  %69 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.i32 %69, 3
  %71 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %57, i32 %70)  ; UMad(a,b,c)
  %72 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %56, i32 %71)  ; UMad(a,b,c)
  %73 = mul i32 %72, -63
  %74 = lshr i32 %73, 17
  %75 = xor i32 %74, %73
  %76 = mul i32 %75, -511
  %77 = mul i32 %75, -8176
  %78 = xor i32 %76, %77
  %79 = mul i32 %78, -7
  %80 = mul i32 %78, -7168
  %81 = xor i32 %79, %80
  %82 = lshr i32 %81, 15
  %83 = xor i32 %82, %79
  %84 = and i32 %83, 127
  %85 = mul i32 %84, 3
  %86 = add i32 0, %85
  %87 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %86
  %88 = load float, float* %87, align 4
  %89 = mul i32 %84, 3
  %90 = add i32 1, %89
  %91 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %90
  %92 = load float, float* %91, align 4
  %93 = mul i32 %84, 3
  %94 = add i32 2, %93
  %95 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %94
  %96 = load float, float* %95, align 4
  %97 = uitofp i32 %70 to float
  %98 = fmul fast float %97, 0x3FEA36A940000000
  %99 = fmul fast float %97, 0x3FE5793080000000
  %100 = fmul fast float %97, 0x3FE1972580000000
  %101 = fadd fast float %88, %98
  %102 = fadd fast float %92, %99
  %103 = fadd fast float %96, %100
  %104 = call float @dx.op.unary.f32(i32 22, float %101)  ; Frc(value)
  %105 = call float @dx.op.unary.f32(i32 22, float %102)  ; Frc(value)
  %106 = call float @dx.op.unary.f32(i32 22, float %103)  ; Frc(value)
  %107 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %56, i32 %57, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %108 = extractvalue %dx.types.ResRet.f32 %107, 0
  %109 = fcmp fast ogt float %108, -1.000000e+00
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %112 = select i1 %109, float %111, float 1.000000e+00
  %113 = fadd fast float %108, 1.000000e+00
  %114 = fmul fast float %112, %113
  %115 = uitofp i32 %56 to float
  %116 = uitofp i32 %57 to float
  %117 = uitofp i32 %58 to float
  %118 = fadd fast float %115, -5.000000e-01
  %119 = fadd fast float %118, %104
  %120 = fadd fast float %116, -5.000000e-01
  %121 = fadd fast float %120, %105
  %122 = fadd fast float %117, -5.000000e-01
  %123 = fadd fast float %122, %106
  %124 = fadd fast float %119, 5.000000e-01
  %125 = fadd fast float %121, 5.000000e-01
  %126 = fadd fast float %123, 5.000000e-01
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = fmul fast float %128, %124
  %132 = fmul fast float %129, %125
  %133 = fmul fast float %130, %126
  %134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.i32 %134, 0
  %136 = uitofp i32 %135 to float
  %137 = fmul fast float %136, %133
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = fmul fast float %137, %140
  %142 = call float @dx.op.unary.f32(i32 21, float %141)  ; Exp(value)
  %143 = fmul fast float %142, %139
  %144 = fsub fast float 4.000000e+00, %139
  %145 = fadd fast float %144, %143
  %146 = call float @dx.op.binary.f32(i32 36, float %145, float %114)  ; FMin(a,b)
  %147 = fmul fast float %131, 2.000000e+00
  %148 = fmul fast float %132, 2.000000e+00
  %149 = fsub fast float 1.000000e+00, %147
  %150 = fsub fast float 1.000000e+00, %148
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = fmul fast float %152, %149
  %156 = fmul fast float %153, %149
  %157 = fmul fast float %154, %149
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = fmul fast float %159, %150
  %163 = fmul fast float %160, %150
  %164 = fmul fast float %161, %150
  %165 = fadd fast float %162, %155
  %166 = fadd fast float %163, %156
  %167 = fadd fast float %164, %157
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %171 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %172 = fadd fast float %165, %169
  %173 = fadd fast float %166, %170
  %174 = fadd fast float %167, %171
  %175 = fmul fast float %172, %146
  %176 = fmul fast float %173, %146
  %177 = fmul fast float %174, %146
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %182 = fadd fast float %175, %179
  %183 = fadd fast float %176, %180
  %184 = fadd fast float %177, %181
  %185 = call float @dx.op.dot3.f32(i32 55, float %175, float %176, float %177, float %175, float %176, float %177)  ; Dot3(ax,ay,az,bx,by,bz)
  %186 = call float @dx.op.unary.f32(i32 25, float %185)  ; Rsqrt(value)
  %187 = fmul fast float %175, %186
  %188 = fmul fast float %176, %186
  %189 = fmul fast float %177, %186
  %190 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %191 = fmul fast float %190, 0x3FE62E4300000000
  %192 = fmul fast float %191, %191
  %193 = select i1 %67, float 0.000000e+00, float 1.000000e+00
  %194 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %33
  store float %193, float addrspace(3)* %194, align 4, !tbaa !41, !noalias !45
  %195 = fmul fast float %191, %193
  %196 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %33
  store float %195, float addrspace(3)* %196, align 4, !tbaa !41, !noalias !45
  %197 = fmul fast float %192, %193
  %198 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %33
  store float %197, float addrspace(3)* %198, align 4, !tbaa !41, !noalias !45
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %199 = xor i32 %33, 4
  %200 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %199
  %201 = load float, float addrspace(3)* %200, align 4, !tbaa !41, !noalias !45
  %202 = fadd fast float %201, %193
  %203 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %199
  %204 = load float, float addrspace(3)* %203, align 4, !tbaa !41, !noalias !45
  %205 = fadd fast float %204, %191
  %206 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %199
  %207 = load float, float addrspace(3)* %206, align 4, !tbaa !41, !noalias !45
  %208 = fadd fast float %207, %192
  store float %202, float addrspace(3)* %194, align 4, !tbaa !41, !noalias !45
  store float %205, float addrspace(3)* %196, align 4, !tbaa !41, !noalias !45
  store float %208, float addrspace(3)* %198, align 4, !tbaa !41, !noalias !45
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %209 = xor i32 %33, 16
  %210 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %209
  %211 = load float, float addrspace(3)* %210, align 4, !tbaa !41, !noalias !45
  %212 = fadd fast float %211, %202
  %213 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %209
  %214 = load float, float addrspace(3)* %213, align 4, !tbaa !41, !noalias !45
  %215 = fadd fast float %214, %205
  %216 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %209
  %217 = load float, float addrspace(3)* %216, align 4, !tbaa !41, !noalias !45
  %218 = fadd fast float %217, %208
  store float %212, float addrspace(3)* %194, align 4, !tbaa !41, !noalias !45
  store float %215, float addrspace(3)* %196, align 4, !tbaa !41, !noalias !45
  store float %218, float addrspace(3)* %198, align 4, !tbaa !41, !noalias !45
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %219 = xor i32 %33, 1
  %220 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %219
  %221 = load float, float addrspace(3)* %220, align 4, !tbaa !41, !noalias !45
  %222 = fadd fast float %221, %212
  %223 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %219
  %224 = load float, float addrspace(3)* %223, align 4, !tbaa !41, !noalias !45
  %225 = fadd fast float %224, %215
  %226 = fdiv fast float %225, %222
  %227 = and i32 %56, 1
  %228 = and i32 %227, %57
  %229 = and i32 %228, %58
  %230 = icmp ne i32 %229, 0
  %231 = and i1 %230, %68
  br i1 %231, label %232, label %240, !dx.controlflow.hints !49

; <label>:232                                     ; preds = %0
  %233 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %219
  %234 = load float, float addrspace(3)* %233, align 4, !tbaa !41, !noalias !45
  %235 = fadd fast float %234, %218
  %236 = fdiv fast float %235, %222
  %237 = lshr i32 %56, 1
  %238 = lshr i32 %57, 1
  %239 = lshr i32 %58, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %237, i32 %238, i32 %239, float %226, float %236, float %226, float %226, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %240

; <label>:240                                     ; preds = %232, %0
  br i1 %67, label %242, label %241, !dx.controlflow.hints !50

; <label>:241                                     ; preds = %240
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %56, i32 %57, i32 %58, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %242

; <label>:242                                     ; preds = %241, %240
  store float %193, float addrspace(3)* %194, align 4, !tbaa !41, !noalias !45
  store float 0.000000e+00, float addrspace(3)* %196, align 4, !tbaa !41, !noalias !45
  store float 0.000000e+00, float addrspace(3)* %198, align 4, !tbaa !41, !noalias !45
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %243 = load float, float addrspace(3)* %200, align 4, !tbaa !41, !noalias !45
  %244 = fadd fast float %243, %193
  %245 = load float, float addrspace(3)* %203, align 4, !tbaa !41, !noalias !45
  %246 = load float, float addrspace(3)* %206, align 4, !tbaa !41, !noalias !45
  store float %244, float addrspace(3)* %194, align 4, !tbaa !41, !noalias !45
  store float %245, float addrspace(3)* %196, align 4, !tbaa !41, !noalias !45
  store float %246, float addrspace(3)* %198, align 4, !tbaa !41, !noalias !45
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %247 = load float, float addrspace(3)* %210, align 4, !tbaa !41, !noalias !45
  %248 = fadd fast float %247, %244
  %249 = load float, float addrspace(3)* %213, align 4, !tbaa !41, !noalias !45
  %250 = fadd fast float %249, %245
  %251 = load float, float addrspace(3)* %216, align 4, !tbaa !41, !noalias !45
  %252 = fadd fast float %251, %246
  store float %248, float addrspace(3)* %194, align 4, !tbaa !41, !noalias !45
  store float %250, float addrspace(3)* %196, align 4, !tbaa !41, !noalias !45
  store float %252, float addrspace(3)* %198, align 4, !tbaa !41, !noalias !45
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %253 = load float, float addrspace(3)* %220, align 4, !tbaa !41, !noalias !45
  %254 = fadd fast float %253, %248
  %255 = load float, float addrspace(3)* %223, align 4, !tbaa !41, !noalias !45
  %256 = fadd fast float %255, %250
  %257 = fdiv fast float %256, %254
  br i1 %231, label %258, label %266, !dx.controlflow.hints !51

; <label>:258                                     ; preds = %242
  %259 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %219
  %260 = load float, float addrspace(3)* %259, align 4, !tbaa !41, !noalias !45
  %261 = fadd fast float %260, %252
  %262 = fdiv fast float %261, %254
  %263 = lshr i32 %56, 1
  %264 = lshr i32 %57, 1
  %265 = lshr i32 %58, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %263, i32 %264, i32 %265, float %257, float %262, float %257, float %257, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %266

; <label>:266                                     ; preds = %258, %242
  br i1 %67, label %268, label %267, !dx.controlflow.hints !52

; <label>:267                                     ; preds = %266
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %56, i32 %57, i32 %58, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %268

; <label>:268                                     ; preds = %267, %266
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 0
  %271 = extractvalue %dx.types.CBufRet.f32 %269, 1
  %272 = fsub fast float %184, %270
  %273 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %272)  ; FMax(a,b)
  %274 = fmul fast float %273, 0x3FF7154760000000
  %275 = fmul fast float %274, %271
  %276 = call float @dx.op.unary.f32(i32 21, float %275)  ; Exp(value)
  %277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.f32 %277, 0
  %279 = extractvalue %dx.types.CBufRet.f32 %277, 1
  %280 = extractvalue %dx.types.CBufRet.f32 %277, 2
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 1
  %283 = fmul fast float %282, %276
  %284 = fmul fast float %283, %278
  %285 = fmul fast float %283, %279
  %286 = fmul fast float %283, %280
  %287 = fcmp fast ogt float %283, 0.000000e+00
  br i1 %287, label %288, label %1800, !dx.controlflow.hints !53

; <label>:288                                     ; preds = %268
  %289 = extractvalue %dx.types.CBufRet.f32 %281, 2
  %290 = fmul fast float %289, %283
  %291 = fdiv fast float 1.000000e+00, %283
  %292 = fmul fast float %291, %284
  %293 = fmul fast float %291, %285
  %294 = fmul fast float %291, %286
  %295 = fmul fast float %290, %291
  %296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.i32 %296, 2
  %298 = extractvalue %dx.types.CBufRet.i32 %296, 3
  %299 = call i32 @dx.op.tertiary.i32(i32 49, i32 %50, i32 %297, i32 %48)  ; UMad(a,b,c)
  %300 = call i32 @dx.op.tertiary.i32(i32 49, i32 %52, i32 %298, i32 %299)  ; UMad(a,b,c)
  %301 = fadd fast float %115, 1.000000e+00
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %304 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.f32 %305, 0
  %307 = extractvalue %dx.types.CBufRet.f32 %305, 1
  %308 = fmul fast float %307, %123
  %309 = call float @dx.op.unary.f32(i32 21, float %308)  ; Exp(value)
  %310 = fmul fast float %309, %306
  %311 = fsub fast float 4.000000e+00, %306
  %312 = fadd fast float %311, %310
  %313 = fmul fast float %301, 2.000000e+00
  %314 = fmul fast float %313, %303
  %315 = fmul fast float %116, 2.000000e+00
  %316 = fmul fast float %315, %304
  %317 = fsub fast float 1.000000e+00, %314
  %318 = fsub fast float 1.000000e+00, %316
  %319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.f32 %319, 0
  %321 = extractvalue %dx.types.CBufRet.f32 %319, 1
  %322 = extractvalue %dx.types.CBufRet.f32 %319, 2
  %323 = fmul fast float %320, %317
  %324 = fmul fast float %321, %317
  %325 = fmul fast float %322, %317
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 0
  %328 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %329 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %330 = fmul fast float %327, %318
  %331 = fmul fast float %328, %318
  %332 = fmul fast float %329, %318
  %333 = fadd fast float %330, %323
  %334 = fadd fast float %331, %324
  %335 = fadd fast float %332, %325
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %340 = fadd fast float %333, %337
  %341 = fadd fast float %334, %338
  %342 = fadd fast float %335, %339
  %343 = fadd fast float %116, 1.000000e+00
  %344 = fmul fast float %115, 2.000000e+00
  %345 = fmul fast float %344, %303
  %346 = fmul fast float %343, 2.000000e+00
  %347 = fmul fast float %346, %304
  %348 = fsub fast float 1.000000e+00, %345
  %349 = fsub fast float 1.000000e+00, %347
  %350 = fmul fast float %320, %348
  %351 = fmul fast float %321, %348
  %352 = fmul fast float %322, %348
  %353 = fmul fast float %327, %349
  %354 = fmul fast float %328, %349
  %355 = fmul fast float %329, %349
  %356 = fadd fast float %353, %350
  %357 = fadd fast float %354, %351
  %358 = fadd fast float %355, %352
  %359 = fadd fast float %356, %337
  %360 = fadd fast float %357, %338
  %361 = fadd fast float %358, %339
  %362 = fmul fast float %359, %312
  %363 = fmul fast float %360, %312
  %364 = fmul fast float %361, %312
  %365 = fadd fast float %359, %340
  %366 = fmul fast float %312, %365
  %367 = fadd fast float %360, %341
  %368 = fmul fast float %312, %367
  %369 = fadd fast float %361, %342
  %370 = fmul fast float %312, %369
  %371 = fmul fast float %366, 5.000000e-01
  %372 = fmul fast float %368, 5.000000e-01
  %373 = fmul fast float %370, 5.000000e-01
  %374 = fsub fast float %371, %362
  %375 = fsub fast float %372, %363
  %376 = fsub fast float %373, %364
  %377 = call float @dx.op.dot3.f32(i32 55, float %374, float %375, float %376, float %374, float %375, float %376)  ; Dot3(ax,ay,az,bx,by,bz)
  %378 = call float @dx.op.unary.f32(i32 25, float %377)  ; Rsqrt(value)
  %379 = fmul fast float %378, %377
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 0
  %382 = extractvalue %dx.types.CBufRet.f32 %380, 1
  %383 = extractvalue %dx.types.CBufRet.f32 %380, 2
  %384 = fsub fast float %184, %383
  %385 = fmul fast float %307, %117
  %386 = call float @dx.op.unary.f32(i32 21, float %385)  ; Exp(value)
  %387 = fmul fast float %386, %306
  %388 = fadd fast float %311, %387
  %389 = fmul fast float %124, 2.000000e+00
  %390 = fmul fast float %389, %303
  %391 = fmul fast float %125, 2.000000e+00
  %392 = fmul fast float %391, %304
  %393 = fsub fast float 1.000000e+00, %390
  %394 = fsub fast float 1.000000e+00, %392
  %395 = fmul fast float %320, %393
  %396 = fmul fast float %321, %393
  %397 = fmul fast float %322, %393
  %398 = fmul fast float %327, %394
  %399 = fmul fast float %328, %394
  %400 = fmul fast float %329, %394
  %401 = fadd fast float %398, %395
  %402 = fadd fast float %399, %396
  %403 = fadd fast float %400, %397
  %404 = fadd fast float %401, %337
  %405 = fadd fast float %402, %338
  %406 = fadd fast float %403, %339
  %407 = fmul fast float %404, %388
  %408 = fmul fast float %405, %388
  %409 = fmul fast float %406, %388
  %410 = fadd fast float %117, 1.000000e+00
  %411 = fmul fast float %307, %410
  %412 = call float @dx.op.unary.f32(i32 21, float %411)  ; Exp(value)
  %413 = fsub fast float %412, %386
  %414 = fmul fast float %306, %413
  %415 = fmul fast float %404, %414
  %416 = fsub fast float %412, %386
  %417 = fmul fast float %306, %416
  %418 = fmul fast float %405, %417
  %419 = fsub fast float %412, %386
  %420 = fmul fast float %306, %419
  %421 = fmul fast float %406, %420
  %422 = call float @dx.op.dot3.f32(i32 55, float %415, float %418, float %421, float %415, float %418, float %421)  ; Dot3(ax,ay,az,bx,by,bz)
  %423 = call float @dx.op.unary.f32(i32 25, float %422)  ; Rsqrt(value)
  %424 = fmul fast float %423, %422
  %425 = fmul fast float %415, %423
  %426 = fmul fast float %418, %423
  %427 = fmul fast float %421, %423
  %428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %429 = extractvalue %dx.types.CBufRet.f32 %428, 3
  %430 = fcmp fast oeq float %429, 0.000000e+00
  br i1 %430, label %1170, label %431, !dx.controlflow.hints !54

; <label>:431                                     ; preds = %288
  %432 = fsub fast float %183, %382
  %433 = fsub fast float %182, %381
  %434 = extractvalue %dx.types.CBufRet.f32 %428, 0
  %435 = extractvalue %dx.types.CBufRet.f32 %428, 1
  %436 = extractvalue %dx.types.CBufRet.f32 %428, 2
  %437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.f32 %437, 0
  %439 = extractvalue %dx.types.CBufRet.f32 %437, 1
  %440 = extractvalue %dx.types.CBufRet.f32 %437, 2
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 2
  %443 = fmul fast float %442, %434
  %444 = fmul fast float %442, %435
  %445 = fmul fast float %442, %436
  %446 = fsub fast float %433, %443
  %447 = fsub fast float %432, %444
  %448 = fsub fast float %384, %445
  %449 = fcmp fast olt float %429, 0.000000e+00
  br i1 %449, label %981, label %450, !dx.controlflow.hints !55

; <label>:450                                     ; preds = %431
  %451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.f32 %451, 0
  %453 = extractvalue %dx.types.CBufRet.f32 %451, 1
  %454 = extractvalue %dx.types.CBufRet.f32 %451, 2
  %455 = extractvalue %dx.types.CBufRet.f32 %451, 3
  %456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %457 = extractvalue %dx.types.CBufRet.f32 %456, 0
  %458 = extractvalue %dx.types.CBufRet.f32 %456, 1
  %459 = extractvalue %dx.types.CBufRet.f32 %456, 2
  %460 = extractvalue %dx.types.CBufRet.f32 %456, 3
  %461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %462 = extractvalue %dx.types.CBufRet.f32 %461, 0
  %463 = extractvalue %dx.types.CBufRet.f32 %461, 1
  %464 = extractvalue %dx.types.CBufRet.f32 %461, 2
  %465 = extractvalue %dx.types.CBufRet.f32 %461, 3
  %466 = fmul fast float %452, %446
  %467 = call float @dx.op.tertiary.f32(i32 46, float %447, float %453, float %466)  ; FMad(a,b,c)
  %468 = call float @dx.op.tertiary.f32(i32 46, float %448, float %454, float %467)  ; FMad(a,b,c)
  %469 = fadd fast float %468, %455
  %470 = fmul fast float %457, %446
  %471 = call float @dx.op.tertiary.f32(i32 46, float %447, float %458, float %470)  ; FMad(a,b,c)
  %472 = call float @dx.op.tertiary.f32(i32 46, float %448, float %459, float %471)  ; FMad(a,b,c)
  %473 = fadd fast float %472, %460
  %474 = fmul fast float %462, %446
  %475 = call float @dx.op.tertiary.f32(i32 46, float %447, float %463, float %474)  ; FMad(a,b,c)
  %476 = call float @dx.op.tertiary.f32(i32 46, float %448, float %464, float %475)  ; FMad(a,b,c)
  %477 = fadd fast float %476, %465
  %478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.f32 %478, 0
  %480 = extractvalue %dx.types.CBufRet.f32 %478, 1
  %481 = extractvalue %dx.types.CBufRet.f32 %478, 3
  %482 = fmul fast float %481, %469
  %483 = fmul fast float %481, %473
  %484 = fadd fast float %482, %479
  %485 = fadd fast float %483, %480
  %486 = extractvalue %dx.types.CBufRet.f32 %478, 2
  %487 = fcmp fast olt float %486, 0.000000e+00
  %488 = fsub fast float -0.000000e+00, %486
  %489 = select i1 %487, float %488, float %486
  %490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %491 = extractvalue %dx.types.CBufRet.f32 %490, 1
  %492 = fadd fast float %489, %491
  %493 = fcmp fast ogt float %492, 0.000000e+00
  br i1 %493, label %494, label %525, !dx.controlflow.hints !56

; <label>:494                                     ; preds = %450
  %495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %496 = extractvalue %dx.types.CBufRet.f32 %495, 1
  %497 = fsub fast float %496, %477
  %498 = extractvalue %dx.types.CBufRet.f32 %495, 2
  %499 = fmul fast float %497, %498
  %500 = fsub fast float 1.000000e+00, %499
  %501 = call float @dx.op.unary.f32(i32 7, float %500)  ; Saturate(value)
  %502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.f32 %502, 0
  %504 = extractvalue %dx.types.CBufRet.f32 %502, 1
  %505 = fsub fast float %484, %503
  %506 = fsub fast float %485, %504
  %507 = fcmp fast olt float %505, 0.000000e+00
  %508 = fcmp fast olt float %506, 0.000000e+00
  %509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %510 = extractvalue %dx.types.CBufRet.f32 %509, 0
  %511 = extractvalue %dx.types.CBufRet.f32 %509, 1
  %512 = extractvalue %dx.types.CBufRet.f32 %509, 2
  %513 = extractvalue %dx.types.CBufRet.f32 %509, 3
  %514 = select i1 %507, float %510, float %512
  %515 = select i1 %508, float %511, float %513
  %516 = fmul fast float %514, %505
  %517 = fmul fast float %515, %506
  %518 = call float @dx.op.unary.f32(i32 6, float %516)  ; FAbs(value)
  %519 = call float @dx.op.unary.f32(i32 6, float %517)  ; FAbs(value)
  %520 = extractvalue %dx.types.CBufRet.f32 %441, 0
  %521 = call float @dx.op.binary.f32(i32 35, float %518, float %519)  ; FMax(a,b)
  %522 = fsub fast float %520, %521
  %523 = call float @dx.op.unary.f32(i32 7, float %522)  ; Saturate(value)
  %524 = fmul fast float %523, %501
  br label %525

; <label>:525                                     ; preds = %494, %450
  %526 = phi float [ %524, %494 ], [ 0.000000e+00, %450 ]
  %527 = call float @dx.op.binary.f32(i32 35, float %526, float 0.000000e+00)  ; FMax(a,b)
  %528 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %527)  ; FMax(a,b)
  %529 = fcmp fast olt float %528, 1.000000e+00
  br i1 %529, label %530, label %928, !dx.controlflow.hints !57

; <label>:530                                     ; preds = %525
  %531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %532 = extractvalue %dx.types.CBufRet.f32 %531, 0
  %533 = fcmp fast une float %532, 0.000000e+00
  br i1 %533, label %534, label %928, !dx.controlflow.hints !58

; <label>:534                                     ; preds = %530
  %535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.f32 %535, 0
  %537 = extractvalue %dx.types.CBufRet.f32 %535, 1
  %538 = extractvalue %dx.types.CBufRet.f32 %535, 2
  %539 = extractvalue %dx.types.CBufRet.f32 %535, 3
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 0
  %542 = extractvalue %dx.types.CBufRet.f32 %540, 1
  %543 = extractvalue %dx.types.CBufRet.f32 %540, 2
  %544 = extractvalue %dx.types.CBufRet.f32 %540, 3
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 0
  %547 = extractvalue %dx.types.CBufRet.f32 %545, 1
  %548 = extractvalue %dx.types.CBufRet.f32 %545, 2
  %549 = extractvalue %dx.types.CBufRet.f32 %545, 3
  %550 = fmul fast float %536, %446
  %551 = call float @dx.op.tertiary.f32(i32 46, float %447, float %537, float %550)  ; FMad(a,b,c)
  %552 = call float @dx.op.tertiary.f32(i32 46, float %448, float %538, float %551)  ; FMad(a,b,c)
  %553 = fadd fast float %552, %539
  %554 = fmul fast float %541, %446
  %555 = call float @dx.op.tertiary.f32(i32 46, float %447, float %542, float %554)  ; FMad(a,b,c)
  %556 = call float @dx.op.tertiary.f32(i32 46, float %448, float %543, float %555)  ; FMad(a,b,c)
  %557 = fadd fast float %556, %544
  %558 = fmul fast float %546, %446
  %559 = call float @dx.op.tertiary.f32(i32 46, float %447, float %547, float %558)  ; FMad(a,b,c)
  %560 = call float @dx.op.tertiary.f32(i32 46, float %448, float %548, float %559)  ; FMad(a,b,c)
  %561 = fadd fast float %560, %549
  %562 = fcmp fast oge float %553, 1.000000e+00
  %563 = fcmp fast oge float %557, 1.000000e+00
  %564 = or i1 %562, %563
  %565 = fcmp fast olt float %553, 0.000000e+00
  %566 = fcmp fast olt float %557, 0.000000e+00
  %567 = or i1 %565, %566
  %568 = or i1 %564, %567
  br i1 %568, label %928, label %569, !dx.controlflow.hints !59

; <label>:569                                     ; preds = %534
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 0
  %572 = extractvalue %dx.types.CBufRet.f32 %570, 1
  %573 = extractvalue %dx.types.CBufRet.f32 %570, 2
  %574 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.i32 %574, 2
  %576 = uitofp i32 %575 to float
  %577 = extractvalue %dx.types.CBufRet.i32 %574, 3
  %578 = uitofp i32 %577 to float
  %579 = extractvalue %dx.types.CBufRet.f32 %570, 3
  %580 = fmul fast float %579, 2.000000e+00
  %581 = fsub fast float %553, %571
  %582 = fsub fast float %557, %572
  %583 = fmul fast float %580, %581
  %584 = fmul fast float %580, %582
  %585 = fdiv fast float 1.000000e+00, %436
  %586 = fmul fast float %584, %585
  %587 = call float @dx.op.unary.f32(i32 6, float %586)  ; FAbs(value)
  %588 = fmul fast float %573, %448
  %589 = fmul fast float %588, %580
  %590 = call float @dx.op.unary.f32(i32 6, float %589)  ; FAbs(value)
  %591 = call float @dx.op.unary.f32(i32 6, float %583)  ; FAbs(value)
  %592 = call float @dx.op.binary.f32(i32 35, float %590, float %587)  ; FMax(a,b)
  %593 = call float @dx.op.binary.f32(i32 35, float %591, float %592)  ; FMax(a,b)
  %594 = fmul fast float %593, 2.000000e+00
  %595 = call float @dx.op.unary.f32(i32 23, float %594)  ; Log(value)
  %596 = call float @dx.op.binary.f32(i32 35, float %595, float %576)  ; FMax(a,b)
  %597 = call float @dx.op.unary.f32(i32 22, float %596)  ; Frc(value)
  %598 = fadd fast float %597, 0xBFEA666660000000
  %599 = fmul fast float %598, 8.000000e+00
  %600 = call float @dx.op.unary.f32(i32 7, float %599)  ; Saturate(value)
  %601 = call float @dx.op.unary.f32(i32 27, float %596)  ; Round_ni(value)
  %602 = fadd fast float %601, %600
  %603 = call float @dx.op.binary.f32(i32 36, float %602, float %578)  ; FMin(a,b)
  %604 = call float @dx.op.unary.f32(i32 27, float %603)  ; Round_ni(value)
  %605 = fsub fast float -0.000000e+00, %604
  %606 = call float @dx.op.unary.f32(i32 21, float %605)  ; Exp(value)
  %607 = fmul fast float %606, %580
  %608 = fmul fast float %607, %553
  %609 = fmul fast float %607, %557
  %610 = fmul fast float %608, 2.500000e-01
  %611 = fmul fast float %609, 2.500000e-01
  %612 = fadd fast float %610, 5.000000e-01
  %613 = fadd fast float %611, 5.000000e-01
  %614 = fsub fast float %578, %576
  %615 = fptoui float %614 to i32
  %616 = add i32 %615, 320
  %617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %616)  ; CBufferLoadLegacy(handle,regIndex)
  %618 = extractvalue %dx.types.CBufRet.f32 %617, 0
  %619 = extractvalue %dx.types.CBufRet.f32 %617, 1
  %620 = fcmp fast une float %603, %578
  %621 = fsub fast float %553, %618
  %622 = fsub fast float %557, %619
  %623 = call float @dx.op.unary.f32(i32 6, float %621)  ; FAbs(value)
  %624 = call float @dx.op.unary.f32(i32 6, float %622)  ; FAbs(value)
  %625 = fmul fast float %623, %607
  %626 = fmul fast float %624, %607
  %627 = fcmp fast olt float %625, 1.000000e+00
  %628 = fcmp fast olt float %626, 1.000000e+00
  %629 = and i1 %627, %628
  %630 = or i1 %620, %629
  br i1 %630, label %631, label %928, !dx.controlflow.hints !60

; <label>:631                                     ; preds = %569
  %632 = fmul fast float %609, 5.000000e-01
  %633 = fmul fast float %608, 5.000000e-01
  %634 = fadd fast float %632, 5.000000e-01
  %635 = fadd fast float %633, 5.000000e-01
  %636 = sitofp i32 %575 to float
  %637 = fsub fast float %603, %636
  %638 = call float @dx.op.unary.f32(i32 27, float %637)  ; Round_ni(value)
  %639 = call float @dx.op.unary.f32(i32 22, float %603)  ; Frc(value)
  %640 = call float @dx.op.unary.f32(i32 22, float %635)  ; Frc(value)
  %641 = call float @dx.op.unary.f32(i32 22, float %634)  ; Frc(value)
  %642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %23, float %640, float %641, float %638, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = extractvalue %dx.types.ResRet.f32 %642, 1
  %645 = extractvalue %dx.types.ResRet.f32 %642, 2
  %646 = extractvalue %dx.types.ResRet.f32 %642, 3
  %647 = fcmp fast ogt float %639, 0.000000e+00
  br i1 %647, label %648, label %669, !dx.controlflow.hints !61

; <label>:648                                     ; preds = %631
  %649 = fadd fast float %638, 1.000000e+00
  %650 = call float @dx.op.unary.f32(i32 22, float %612)  ; Frc(value)
  %651 = call float @dx.op.unary.f32(i32 22, float %613)  ; Frc(value)
  %652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %23, float %650, float %651, float %649, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %653 = extractvalue %dx.types.ResRet.f32 %652, 0
  %654 = extractvalue %dx.types.ResRet.f32 %652, 1
  %655 = extractvalue %dx.types.ResRet.f32 %652, 2
  %656 = extractvalue %dx.types.ResRet.f32 %652, 3
  %657 = fsub fast float %653, %643
  %658 = fsub fast float %654, %644
  %659 = fsub fast float %655, %645
  %660 = fsub fast float %656, %646
  %661 = fmul fast float %657, %639
  %662 = fmul fast float %658, %639
  %663 = fmul fast float %659, %639
  %664 = fmul fast float %660, %639
  %665 = fadd fast float %661, %643
  %666 = fadd fast float %662, %644
  %667 = fadd fast float %663, %645
  %668 = fadd fast float %664, %646
  br label %669

; <label>:669                                     ; preds = %648, %631
  %670 = phi float [ %665, %648 ], [ %643, %631 ]
  %671 = phi float [ %666, %648 ], [ %644, %631 ]
  %672 = phi float [ %667, %648 ], [ %645, %631 ]
  %673 = phi float [ %668, %648 ], [ %646, %631 ]
  %674 = fadd fast float %670, -5.000000e-01
  %675 = fadd fast float %672, -5.000000e-01
  %676 = fmul fast float %674, 0xBFD5555560000000
  %677 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %675, float %676)  ; FMad(a,b,c)
  %678 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %671, float 0.000000e+00)  ; FMad(a,b,c)
  %679 = fadd fast float %678, %673
  %680 = fmul fast float %674, -7.500000e-01
  %681 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %675, float %680)  ; FMad(a,b,c)
  %682 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %671, float 0.000000e+00)  ; FMad(a,b,c)
  %683 = fadd fast float %682, %673
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 0
  %686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.f32 %686, 0
  %688 = extractvalue %dx.types.CBufRet.f32 %686, 1
  %689 = extractvalue %dx.types.CBufRet.f32 %686, 2
  %690 = extractvalue %dx.types.CBufRet.f32 %686, 3
  %691 = fsub fast float %687, %677
  %692 = fsub fast float %688, %679
  %693 = fsub fast float %689, %681
  %694 = fsub fast float %690, %683
  %695 = fmul fast float %691, %685
  %696 = fmul fast float %692, %685
  %697 = fmul fast float %693, %685
  %698 = fmul fast float %694, %685
  %699 = fadd fast float %695, %677
  %700 = fadd fast float %696, %679
  %701 = fadd fast float %697, %681
  %702 = fadd fast float %698, %683
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = and i32 %704, 536870911
  %706 = uitofp i32 %705 to float
  %707 = fmul fast float %706, %553
  %708 = fmul fast float %706, %557
  %709 = fptoui float %707 to i32
  %710 = fptoui float %708 to i32
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = and i32 %712, 31
  %714 = lshr i32 %709, %713
  %715 = lshr i32 %710, %713
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = and i32 %717, 31
  %719 = shl i32 1, %718
  %720 = call i32 @dx.op.binary.i32(i32 40, i32 %719, i32 4)  ; UMin(a,b)
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = extractvalue %dx.types.ResRet.i32 %721, 1
  %724 = icmp eq i32 %720, 0
  br i1 %724, label %766, label %725

; <label>:725                                     ; preds = %669
  br label %726

; <label>:726                                     ; preds = %754, %725
  %727 = phi i32 [ %757, %754 ], [ 0, %725 ]
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = lshr i32 %729, 16
  %731 = and i32 %730, 31
  %732 = shl i32 %715, %731
  %733 = add i32 %732, %714
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = and i32 %735, 31
  %737 = shl i32 %733, %736
  %738 = add i32 %737, %727
  %739 = shl i32 %738, 2
  %740 = add i32 %739, 32
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = icmp slt i32 %742, 0
  %744 = getelementptr [12 x float], [12 x float]* %34, i32 0, i32 %727
  %745 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 %727
  %746 = bitcast float* %744 to i32*
  %747 = bitcast float* %745 to i32*
  br i1 %743, label %748, label %754, !dx.controlflow.hints !62

; <label>:748                                     ; preds = %726
  %749 = and i32 %742, 1073741823
  %750 = add nuw nsw i32 %749, 20
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = extractvalue %dx.types.ResRet.i32 %751, 1
  br label %754

; <label>:754                                     ; preds = %748, %726
  %755 = phi i32 [ %752, %748 ], [ %722, %726 ]
  %756 = phi i32 [ %753, %748 ], [ %723, %726 ]
  store i32 %755, i32* %746, align 4
  store i32 %756, i32* %747, align 4
  %757 = add nuw i32 %727, 1
  %758 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.i32 %758, 2
  %760 = icmp eq i32 %759, 0
  %761 = icmp ugt i32 %742, -1073741825
  %762 = and i1 %761, %760
  %763 = icmp ult i32 %757, %720
  %764 = and i1 %762, %763
  br i1 %764, label %726, label %765, !dx.controlflow.hints !63

; <label>:765                                     ; preds = %754
  br label %766

; <label>:766                                     ; preds = %765, %669
  %767 = phi i32 [ 0, %669 ], [ %757, %765 ]
  %768 = extractvalue %dx.types.CBufRet.f32 %531, 2
  %769 = fptoui float %768 to i32
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %822, label %771

; <label>:771                                     ; preds = %766
  br label %772

; <label>:772                                     ; preds = %817, %771
  %773 = phi i32 [ %818, %817 ], [ %767, %771 ]
  %774 = phi i32 [ %819, %817 ], [ 0, %771 ]
  %775 = lshr i32 %774, 2
  %776 = and i32 %774, 3
  %777 = add nuw nsw i32 %775, 83
  %778 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 %777)  ; CBufferLoadLegacy(handle,regIndex)
  %779 = extractvalue %dx.types.CBufRet.i32 %778, 0
  %780 = extractvalue %dx.types.CBufRet.i32 %778, 1
  %781 = extractvalue %dx.types.CBufRet.i32 %778, 2
  %782 = extractvalue %dx.types.CBufRet.i32 %778, 3
  %783 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %779, i32* %783, align 4
  %784 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %780, i32* %784, align 4
  %785 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %781, i32* %785, align 4
  %786 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %782, i32* %786, align 4
  %787 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 %776
  %788 = load i32, i32* %787, align 4, !tbaa !64, !noalias !66
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = lshr i32 %790, 16
  %792 = and i32 %791, 31
  %793 = shl i32 %715, %792
  %794 = add i32 %793, %714
  %795 = shl i32 %794, 2
  %796 = add i32 %795, %788
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %817, label %800, !dx.controlflow.hints !73

; <label>:800                                     ; preds = %772
  %801 = icmp slt i32 %798, 0
  %802 = getelementptr [12 x float], [12 x float]* %34, i32 0, i32 %773
  %803 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 %773
  %804 = bitcast float* %802 to i32*
  %805 = bitcast float* %803 to i32*
  br i1 %801, label %806, label %813, !dx.controlflow.hints !74

; <label>:806                                     ; preds = %800
  %807 = and i32 %798, 1073741823
  %808 = add i32 %788, 20
  %809 = add i32 %808, %807
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = extractvalue %dx.types.ResRet.i32 %810, 1
  br label %813

; <label>:813                                     ; preds = %806, %800
  %814 = phi i32 [ %811, %806 ], [ %722, %800 ]
  %815 = phi i32 [ %812, %806 ], [ %723, %800 ]
  store i32 %814, i32* %804, align 4
  store i32 %815, i32* %805, align 4
  %816 = add i32 %773, 1
  br label %817

; <label>:817                                     ; preds = %813, %772
  %818 = phi i32 [ %773, %772 ], [ %816, %813 ]
  %819 = add nuw i32 %774, 1
  %820 = icmp eq i32 %819, %769
  br i1 %820, label %821, label %772

; <label>:821                                     ; preds = %817
  br label %822

; <label>:822                                     ; preds = %821, %766
  %823 = phi i32 [ %767, %766 ], [ %818, %821 ]
  %824 = icmp eq i32 %823, 1
  %825 = getelementptr [12 x float], [12 x float]* %34, i32 0, i32 0
  %826 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 0
  br i1 %824, label %827, label %830, !dx.controlflow.hints !75

; <label>:827                                     ; preds = %822
  %828 = load float, float* %825, align 4
  %829 = load float, float* %826, align 4
  br label %857

; <label>:830                                     ; preds = %822
  %831 = load float, float* %825, align 4
  %832 = load float, float* %826, align 4
  %833 = fdiv fast float 1.000000e+00, %832
  %834 = fsub fast float %831, %833
  %835 = icmp ugt i32 %823, 1
  br i1 %835, label %836, label %852

; <label>:836                                     ; preds = %830
  br label %837

; <label>:837                                     ; preds = %837, %836
  %838 = phi float [ %847, %837 ], [ %834, %836 ]
  %839 = phi float [ %848, %837 ], [ %831, %836 ]
  %840 = phi i32 [ %849, %837 ], [ 1, %836 ]
  %841 = getelementptr [12 x float], [12 x float]* %34, i32 0, i32 %840
  %842 = load float, float* %841, align 4
  %843 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 %840
  %844 = load float, float* %843, align 4
  %845 = fdiv fast float 1.000000e+00, %844
  %846 = fsub fast float %842, %845
  %847 = call float @dx.op.binary.f32(i32 36, float %838, float %846)  ; FMin(a,b)
  %848 = call float @dx.op.binary.f32(i32 35, float %839, float %842)  ; FMax(a,b)
  %849 = add nuw i32 %840, 1
  %850 = icmp eq i32 %849, %823
  br i1 %850, label %851, label %837

; <label>:851                                     ; preds = %837
  br label %852

; <label>:852                                     ; preds = %851, %830
  %853 = phi float [ %834, %830 ], [ %847, %851 ]
  %854 = phi float [ %831, %830 ], [ %848, %851 ]
  %855 = fsub fast float %854, %853
  %856 = fdiv fast float 1.000000e+00, %855
  br label %857

; <label>:857                                     ; preds = %852, %827
  %858 = phi float [ %828, %827 ], [ %854, %852 ]
  %859 = phi float [ %829, %827 ], [ %856, %852 ]
  %860 = fadd fast float %561, %858
  %861 = fmul fast float %860, %859
  %862 = call float @dx.op.unary.f32(i32 7, float %861)  ; Saturate(value)
  %863 = fmul fast float %862, 2.000000e+00
  %864 = fsub fast float 1.000000e+00, %863
  %865 = fmul fast float %699, %699
  %866 = fsub fast float %700, %865
  %867 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %866)  ; FMax(a,b)
  %868 = fdiv fast float 1.000000e+00, %867
  %869 = fmul fast float %700, %699
  %870 = fsub fast float %701, %869
  %871 = fsub fast float %864, %699
  %872 = fmul fast float %864, %864
  %873 = fsub fast float %872, %700
  %874 = fmul fast float %868, %870
  %875 = fmul fast float %874, %871
  %876 = fsub fast float %873, %875
  %877 = fmul fast float %700, %700
  %878 = fsub fast float %702, %877
  %879 = fmul fast float %870, %870
  %880 = fmul fast float %879, %868
  %881 = fsub fast float %878, %880
  %882 = fdiv fast float %876, %881
  %883 = fmul fast float %882, %870
  %884 = fsub fast float %871, %883
  %885 = fmul fast float %884, %868
  %886 = fmul fast float %885, %699
  %887 = fsub fast float 1.000000e+00, %886
  %888 = fmul fast float %882, %700
  %889 = fsub fast float %887, %888
  %890 = fmul fast float %885, %885
  %891 = fmul fast float %882, 4.000000e+00
  %892 = fmul fast float %891, %889
  %893 = fsub fast float %890, %892
  %894 = call float @dx.op.unary.f32(i32 24, float %893)  ; Sqrt(value)
  %895 = fcmp fast oge float %885, 0.000000e+00
  %896 = fsub fast float -0.000000e+00, %894
  %897 = select i1 %895, float %896, float %894
  %898 = fsub fast float %897, %885
  %899 = fdiv fast float %898, %882
  %900 = fdiv fast float %889, %898
  %901 = fmul fast float %899, 5.000000e-01
  %902 = fmul fast float %900, 2.000000e+00
  %903 = select i1 %895, float %901, float %902
  %904 = select i1 %895, float %902, float %901
  %905 = call float @dx.op.binary.f32(i32 35, float %903, float %904)  ; FMax(a,b)
  %906 = call float @dx.op.binary.f32(i32 36, float %903, float %904)  ; FMin(a,b)
  %907 = fcmp fast ogt float %864, %905
  %908 = fsub fast float %864, %906
  %909 = fsub fast float %864, %905
  %910 = fsub fast float %905, %906
  %911 = select i1 %907, float %909, float %910
  %912 = fmul float %908, %911
  %913 = select i1 %907, float %906, float %864
  %914 = fcmp fast ogt float %864, %906
  %915 = fmul fast float %913, %905
  %916 = fadd fast float %913, %905
  %917 = fmul fast float %916, %699
  %918 = fadd fast float %915, %700
  %919 = fsub fast float %918, %917
  %920 = fdiv fast float %919, %912
  %921 = select i1 %914, float %920, float 0.000000e+00
  %922 = fsub fast float 1.000000e+00, %921
  %923 = select i1 %907, float %922, float %921
  %924 = call float @dx.op.unary.f32(i32 7, float %923)  ; Saturate(value)
  %925 = extractvalue %dx.types.CBufRet.f32 %684, 3
  %926 = fmul fast float %925, %924
  %927 = fsub fast float 1.000000e+00, %926
  br label %928

; <label>:928                                     ; preds = %857, %569, %534, %530, %525
  %929 = phi float [ 1.000000e+00, %525 ], [ %927, %857 ], [ 1.000000e+00, %534 ], [ 1.000000e+00, %569 ], [ 1.000000e+00, %530 ]
  %930 = fcmp fast ogt float %526, 0.000000e+00
  br i1 %930, label %931, label %937, !dx.controlflow.hints !76

; <label>:931                                     ; preds = %928
  %932 = fadd fast float %491, %477
  %933 = call float @dx.op.binary.f32(i32 35, float %932, float 0.000000e+00)  ; FMax(a,b)
  %934 = fadd fast float %933, 0x3F10000000000000
  %935 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %25, float %484, float %485, float undef, float undef, i32 0, i32 0, i32 undef, float %934)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %936 = extractvalue %dx.types.ResRet.f32 %935, 0
  br label %937

; <label>:937                                     ; preds = %931, %928
  %938 = phi float [ %936, %931 ], [ 1.000000e+00, %928 ]
  %939 = fsub fast float %938, %929
  %940 = fmul fast float %939, %526
  %941 = fadd fast float %940, %929
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 2
  %944 = fcmp fast ogt float %943, 0.000000e+00
  br i1 %944, label %945, label %981, !dx.controlflow.hints !77

; <label>:945                                     ; preds = %937
  %946 = fcmp fast ugt float %943, 0.000000e+00
  br i1 %946, label %947, label %978, !dx.controlflow.hints !78

; <label>:947                                     ; preds = %945
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 0
  %950 = extractvalue %dx.types.CBufRet.f32 %948, 1
  %951 = extractvalue %dx.types.CBufRet.f32 %948, 2
  %952 = extractvalue %dx.types.CBufRet.f32 %948, 3
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 0
  %955 = extractvalue %dx.types.CBufRet.f32 %953, 1
  %956 = extractvalue %dx.types.CBufRet.f32 %953, 2
  %957 = extractvalue %dx.types.CBufRet.f32 %953, 3
  %958 = extractvalue %dx.types.CBufRet.f32 %942, 0
  %959 = extractvalue %dx.types.CBufRet.f32 %942, 1
  %960 = fadd fast float %381, %446
  %961 = fadd fast float %382, %447
  %962 = fadd fast float %383, %448
  %963 = fmul fast float %960, %949
  %964 = call float @dx.op.tertiary.f32(i32 46, float %950, float %961, float %963)  ; FMad(a,b,c)
  %965 = call float @dx.op.tertiary.f32(i32 46, float %951, float %962, float %964)  ; FMad(a,b,c)
  %966 = fadd fast float %965, %952
  %967 = fmul fast float %960, %954
  %968 = call float @dx.op.tertiary.f32(i32 46, float %955, float %961, float %967)  ; FMad(a,b,c)
  %969 = call float @dx.op.tertiary.f32(i32 46, float %956, float %962, float %968)  ; FMad(a,b,c)
  %970 = fadd fast float %969, %957
  %971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %966, float %970, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %972 = extractvalue %dx.types.ResRet.f32 %971, 0
  %973 = fmul fast float %972, %959
  %974 = fadd fast float %973, %958
  %975 = call float @dx.op.unary.f32(i32 7, float %974)  ; Saturate(value)
  %976 = fmul fast float %975, %943
  %977 = fsub fast float 1.000000e+00, %976
  br label %978

; <label>:978                                     ; preds = %947, %945
  %979 = phi float [ %977, %947 ], [ 1.000000e+00, %945 ]
  %980 = fmul fast float %979, %941
  br label %981

; <label>:981                                     ; preds = %978, %937, %431
  %982 = phi float [ 1.000000e+00, %431 ], [ %980, %978 ], [ %941, %937 ]
  %983 = call float @dx.op.binary.f32(i32 36, float %982, float %982)  ; FMin(a,b)
  %984 = call float @dx.op.binary.f32(i32 36, float %982, float %983)  ; FMin(a,b)
  %985 = fcmp fast ogt float %984, 0.000000e+00
  br i1 %985, label %986, label %1141, !dx.controlflow.hints !79

; <label>:986                                     ; preds = %981
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 0
  %989 = extractvalue %dx.types.CBufRet.f32 %987, 1
  %990 = extractvalue %dx.types.CBufRet.f32 %987, 2
  %991 = extractvalue %dx.types.CBufRet.f32 %987, 3
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 0
  %994 = extractvalue %dx.types.CBufRet.f32 %992, 1
  %995 = extractvalue %dx.types.CBufRet.f32 %992, 2
  %996 = extractvalue %dx.types.CBufRet.f32 %992, 3
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 0
  %999 = extractvalue %dx.types.CBufRet.f32 %997, 1
  %1000 = extractvalue %dx.types.CBufRet.f32 %997, 2
  %1001 = extractvalue %dx.types.CBufRet.f32 %997, 3
  %1002 = fmul fast float %988, %446
  %1003 = call float @dx.op.tertiary.f32(i32 46, float %447, float %989, float %1002)  ; FMad(a,b,c)
  %1004 = call float @dx.op.tertiary.f32(i32 46, float %448, float %990, float %1003)  ; FMad(a,b,c)
  %1005 = fadd fast float %1004, %991
  %1006 = fmul fast float %993, %446
  %1007 = call float @dx.op.tertiary.f32(i32 46, float %447, float %994, float %1006)  ; FMad(a,b,c)
  %1008 = call float @dx.op.tertiary.f32(i32 46, float %448, float %995, float %1007)  ; FMad(a,b,c)
  %1009 = fadd fast float %1008, %996
  %1010 = fmul fast float %998, %446
  %1011 = call float @dx.op.tertiary.f32(i32 46, float %447, float %999, float %1010)  ; FMad(a,b,c)
  %1012 = call float @dx.op.tertiary.f32(i32 46, float %448, float %1000, float %1011)  ; FMad(a,b,c)
  %1013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.f32 %1013, 0
  %1015 = extractvalue %dx.types.CBufRet.f32 %1013, 1
  %1016 = extractvalue %dx.types.CBufRet.f32 %1013, 3
  %1017 = fmul fast float %1016, %1005
  %1018 = fmul fast float %1016, %1009
  %1019 = fadd fast float %1017, %1014
  %1020 = fadd fast float %1018, %1015
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1021, 0
  %1023 = extractvalue %dx.types.CBufRet.f32 %1021, 1
  %1024 = fsub fast float %1019, %1022
  %1025 = fsub fast float %1020, %1023
  %1026 = fcmp fast olt float %1024, 0.000000e+00
  %1027 = fcmp fast olt float %1025, 0.000000e+00
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 0
  %1030 = extractvalue %dx.types.CBufRet.f32 %1028, 1
  %1031 = extractvalue %dx.types.CBufRet.f32 %1028, 2
  %1032 = extractvalue %dx.types.CBufRet.f32 %1028, 3
  %1033 = select i1 %1026, float %1029, float %1031
  %1034 = select i1 %1027, float %1030, float %1032
  %1035 = fmul fast float %1033, %1024
  %1036 = fmul fast float %1034, %1025
  %1037 = call float @dx.op.unary.f32(i32 6, float %1035)  ; FAbs(value)
  %1038 = call float @dx.op.unary.f32(i32 6, float %1036)  ; FAbs(value)
  %1039 = extractvalue %dx.types.CBufRet.f32 %441, 0
  %1040 = call float @dx.op.binary.f32(i32 35, float %1037, float %1038)  ; FMax(a,b)
  %1041 = fsub fast float %1039, %1040
  %1042 = call float @dx.op.unary.f32(i32 7, float %1041)  ; Saturate(value)
  %1043 = fcmp fast ogt float %1042, 0.000000e+00
  br i1 %1043, label %1044, label %1085, !dx.controlflow.hints !80

; <label>:1044                                    ; preds = %986
  %1045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %1019, float %1020, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1046 = extractvalue %dx.types.ResRet.f32 %1045, 1
  %1047 = fcmp fast ogt float %1046, 0.000000e+00
  br i1 %1047, label %1048, label %1081, !dx.controlflow.hints !81

; <label>:1048                                    ; preds = %1044
  %1049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %24, float %1019, float %1020, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.ResRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1053 = extractvalue %dx.types.ResRet.f32 %1049, 3
  %1054 = fsub fast float 1.000000e+00, %1001
  %1055 = fsub fast float %1054, %1012
  %1056 = fmul fast float %1055, 0x400921FB60000000
  %1057 = fadd fast float %1056, 0x3FF921FB60000000
  %1058 = call float @dx.op.unary.f32(i32 13, float %1057)  ; Sin(value)
  %1059 = fadd fast float %1058, -1.000000e+00
  %1060 = fmul fast float %1059, 0x3FD45F3060000000
  %1061 = fmul fast float %1055, 0x401921FB60000000
  %1062 = fadd fast float %1061, 0x400921FB60000000
  %1063 = call float @dx.op.unary.f32(i32 13, float %1062)  ; Sin(value)
  %1064 = fadd fast float %1063, 0x3E7777A5C0000000
  %1065 = fmul fast float %1064, 0x3FC45F3060000000
  %1066 = fmul fast float %1055, 0x4022D97C80000000
  %1067 = fadd fast float %1066, 0x4012D97C80000000
  %1068 = call float @dx.op.unary.f32(i32 13, float %1067)  ; Sin(value)
  %1069 = fadd fast float %1068, 1.000000e+00
  %1070 = fmul fast float %1069, 0x3FBB2995E0000000
  %1071 = fmul fast float %1055, 0x402921FB60000000
  %1072 = fadd fast float %1071, 0x401921FB60000000
  %1073 = call float @dx.op.unary.f32(i32 13, float %1072)  ; Sin(value)
  %1074 = fadd fast float %1073, 0xBE8777A5C0000000
  %1075 = fmul fast float %1074, 0x3FB45F3060000000
  %1076 = call float @dx.op.dot4.f32(i32 56, float %1050, float %1051, float %1052, float %1053, float %1060, float %1065, float %1070, float %1075)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1077 = fmul fast float %1076, 0xBFF7154760000000
  %1078 = call float @dx.op.unary.f32(i32 21, float %1077)  ; Exp(value)
  %1079 = call float @dx.op.unary.f32(i32 7, float %1078)  ; Saturate(value)
  %1080 = fadd float %1079, -1.000000e+00
  br label %1081

; <label>:1081                                    ; preds = %1048, %1044
  %1082 = phi float [ %1080, %1048 ], [ 0.000000e+00, %1044 ]
  %1083 = fmul fast float %1082, %1042
  %1084 = fadd fast float %1083, 1.000000e+00
  br label %1085

; <label>:1085                                    ; preds = %1081, %986
  %1086 = phi float [ %1084, %1081 ], [ 1.000000e+00, %986 ]
  %1087 = fmul fast float %1086, %982
  %1088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %1089 = extractvalue %dx.types.CBufRet.f32 %1088, 1
  %1090 = fsub fast float -0.000000e+00, %182
  %1091 = fsub fast float -0.000000e+00, %183
  %1092 = fsub fast float -0.000000e+00, %384
  %1093 = fsub fast float %1092, %383
  %1094 = fadd fast float %1093, %1089
  %1095 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1090, float %1091, float %1094)  ; Dot3(ax,ay,az,bx,by,bz)
  %1096 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %434, float %435, float %436)  ; Dot3(ax,ay,az,bx,by,bz)
  %1097 = fdiv fast float 1.000000e+00, %1096
  %1098 = fmul fast float %1097, %1095
  %1099 = fmul fast float %434, %1098
  %1100 = fmul fast float %435, %1098
  %1101 = fadd fast float %1099, %182
  %1102 = fadd fast float %1100, %183
  %1103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %1104 = extractvalue %dx.types.CBufRet.f32 %1103, 0
  %1105 = extractvalue %dx.types.CBufRet.f32 %1103, 1
  %1106 = fsub fast float %1101, %1104
  %1107 = fsub fast float %1102, %1105
  %1108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %1109 = extractvalue %dx.types.CBufRet.f32 %1108, 2
  %1110 = extractvalue %dx.types.CBufRet.f32 %1108, 3
  %1111 = fmul fast float %1106, %1109
  %1112 = fmul fast float %1107, %1110
  %1113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.i32 %1113, 3
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1121, label %1116, !dx.controlflow.hints !82

; <label>:1116                                    ; preds = %1085
  %1117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %23, float %1111, float %1112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1118 = extractvalue %dx.types.ResRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.ResRet.f32 %1117, 1
  %1120 = extractvalue %dx.types.ResRet.f32 %1117, 2
  br label %1126

; <label>:1121                                    ; preds = %1085
  %1122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %24, float %1111, float %1112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1123 = extractvalue %dx.types.ResRet.f32 %1122, 0
  %1124 = extractvalue %dx.types.ResRet.f32 %1122, 1
  %1125 = extractvalue %dx.types.ResRet.f32 %1122, 2
  br label %1126

; <label>:1126                                    ; preds = %1121, %1116
  %1127 = phi float [ %1118, %1116 ], [ %1123, %1121 ]
  %1128 = phi float [ %1119, %1116 ], [ %1124, %1121 ]
  %1129 = phi float [ %1120, %1116 ], [ %1125, %1121 ]
  %1130 = extractvalue %dx.types.CBufRet.f32 %1088, 2
  %1131 = fmul fast float %1130, %1127
  %1132 = extractvalue %dx.types.CBufRet.f32 %1088, 0
  %1133 = fsub fast float %1098, %1132
  %1134 = fsub fast float %1133, %1131
  %1135 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1134)  ; FMax(a,b)
  %1136 = fmul fast float %1135, %1128
  %1137 = call float @dx.op.binary.f32(i32 36, float %1129, float %1136)  ; FMin(a,b)
  %1138 = fmul fast float %1137, 0xBFF7154760000000
  %1139 = call float @dx.op.unary.f32(i32 21, float %1138)  ; Exp(value)
  %1140 = fmul fast float %1087, %1139
  br label %1141

; <label>:1141                                    ; preds = %1126, %981
  %1142 = phi float [ %1140, %1126 ], [ %982, %981 ]
  %1143 = call float @dx.op.binary.f32(i32 36, float %1142, float %1142)  ; FMin(a,b)
  %1144 = call float @dx.op.binary.f32(i32 36, float %1142, float %1143)  ; FMin(a,b)
  %1145 = fcmp fast ogt float %1144, 0.000000e+00
  br i1 %1145, label %1146, label %1170, !dx.controlflow.hints !83

; <label>:1146                                    ; preds = %1141
  %1147 = call float @dx.op.dot3.f32(i32 55, float %434, float %435, float %436, float %187, float %188, float %189)  ; Dot3(ax,ay,az,bx,by,bz)
  %1148 = fcmp fast ogt float %295, 0.000000e+00
  %1149 = select i1 %1148, float 1.000000e+00, float -1.000000e+00
  %1150 = fmul fast float %106, 7.812500e-03
  %1151 = fmul fast float %106, 3.125000e-02
  %1152 = fadd fast float %1151, -3.125000e-02
  %1153 = fmul fast float %1149, 5.000000e-01
  %1154 = fmul fast float %1153, %1147
  %1155 = fmul fast float %1149, %295
  %1156 = fadd fast float %1150, 4.921875e-01
  %1157 = fadd fast float %1156, %1154
  %1158 = fadd fast float %1150, 0x3FB25F3060000000
  %1159 = fadd fast float %1152, %1155
  %1160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %24, float %1157, float %1158, float %1159, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1161 = extractvalue %dx.types.ResRet.f32 %1160, 0
  %1162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1163 = extractvalue %dx.types.CBufRet.f32 %1162, 0
  %1164 = fmul fast float %1142, 0x400921FB60000000
  %1165 = fmul fast float %1164, %1161
  %1166 = fmul fast float %1165, %1163
  %1167 = fmul fast float %1166, %438
  %1168 = fmul fast float %1166, %439
  %1169 = fmul fast float %1166, %440
  br label %1170

; <label>:1170                                    ; preds = %1146, %1141, %288
  %1171 = phi float [ %1167, %1146 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %1141 ]
  %1172 = phi float [ %1168, %1146 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %1141 ]
  %1173 = phi float [ %1169, %1146 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %1141 ]
  %1174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.i32 %1174, 0
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1771, label %1177, !dx.controlflow.hints !84

; <label>:1177                                    ; preds = %1170
  %1178 = add nsw i32 %1175, -1
  %1179 = call i32 @dx.op.binary.i32(i32 37, i32 %1178, i32 0)  ; IMax(a,b)
  br label %1180

; <label>:1180                                    ; preds = %1764, %1177
  %1181 = phi i32 [ 0, %1177 ], [ %1768, %1764 ]
  %1182 = phi float [ %1171, %1177 ], [ %1765, %1764 ]
  %1183 = phi float [ %1172, %1177 ], [ %1766, %1764 ]
  %1184 = phi float [ %1173, %1177 ], [ %1767, %1764 ]
  %1185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.i32 %1185, 0
  %1187 = call i32 @dx.op.tertiary.i32(i32 49, i32 %300, i32 %1186, i32 %1181)  ; UMad(a,b,c)
  %1188 = shl i32 %1187, 2
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %1764, label %1192

; <label>:1192                                    ; preds = %1180
  br label %1193

; <label>:1193                                    ; preds = %1632, %1192
  %1194 = phi i32 [ %1203, %1632 ], [ %1190, %1192 ]
  %1195 = phi float [ %1633, %1632 ], [ %1182, %1192 ]
  %1196 = phi float [ %1634, %1632 ], [ %1183, %1192 ]
  %1197 = phi float [ %1635, %1632 ], [ %1184, %1192 ]
  %1198 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1194)  ; FirstbitLo(value)
  %1199 = shl i32 %1181, 5
  %1200 = add i32 %1198, %1199
  %1201 = and i32 %1198, 31
  %1202 = shl i32 1, %1201
  %1203 = xor i32 %1202, %1194
  %1204 = mul i32 %1200, 112
  %1205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = extractvalue %dx.types.ResRet.f32 %1205, 1
  %1208 = extractvalue %dx.types.ResRet.f32 %1205, 2
  %1209 = or i32 %1204, 12
  %1210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1209, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = add i32 %1204, 16
  %1213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.f32 %1213, 0
  %1215 = extractvalue %dx.types.ResRet.f32 %1213, 1
  %1216 = extractvalue %dx.types.ResRet.f32 %1213, 2
  %1217 = add i32 %1204, 28
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = add i32 %1204, 32
  %1221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.ResRet.f32 %1221, 1
  %1224 = extractvalue %dx.types.ResRet.f32 %1221, 2
  %1225 = add i32 %1204, 44
  %1226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.f32 %1226, 0
  %1228 = add i32 %1204, 48
  %1229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.f32 %1229, 0
  %1231 = extractvalue %dx.types.ResRet.f32 %1229, 1
  %1232 = extractvalue %dx.types.ResRet.f32 %1229, 2
  %1233 = extractvalue %dx.types.ResRet.f32 %1229, 3
  %1234 = add i32 %1204, 64
  %1235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = extractvalue %dx.types.ResRet.f32 %1235, 1
  %1238 = extractvalue %dx.types.ResRet.f32 %1235, 2
  %1239 = extractvalue %dx.types.ResRet.f32 %1235, 3
  %1240 = add i32 %1204, 92
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = and i32 %1242, 65535
  %1244 = uitofp i32 %1243 to float
  %1245 = lshr i32 %1242, 16
  %1246 = uitofp i32 %1245 to float
  %1247 = and i32 %1219, 65535
  %1248 = and i32 %1219, 50331648
  %1249 = icmp eq i32 %1248, 33554432
  %1250 = fdiv fast float 1.000000e+00, %424
  br i1 %1249, label %1251, label %1443, !dx.controlflow.hints !85

; <label>:1251                                    ; preds = %1193
  %1252 = fsub fast float %1230, %1222
  %1253 = fsub fast float %1231, %1223
  %1254 = fsub fast float %1232, %1224
  %1255 = fmul fast float %425, %424
  %1256 = fmul fast float %426, %424
  %1257 = fmul fast float %427, %424
  %1258 = fadd fast float %1255, %407
  %1259 = fadd fast float %1256, %408
  %1260 = fadd fast float %1257, %409
  %1261 = fmul fast float %1222, 2.000000e+00
  %1262 = fmul fast float %1223, 2.000000e+00
  %1263 = fmul fast float %1224, 2.000000e+00
  %1264 = call float @dx.op.dot3.f32(i32 55, float %1261, float %1262, float %1263, float %1261, float %1262, float %1263)  ; Dot3(ax,ay,az,bx,by,bz)
  %1265 = fdiv fast float %1261, %1264
  %1266 = fdiv fast float %1262, %1264
  %1267 = fdiv fast float %1263, %1264
  %1268 = fsub fast float %407, %1252
  %1269 = fsub fast float %408, %1253
  %1270 = fsub fast float %409, %1254
  %1271 = call float @dx.op.dot3.f32(i32 55, float %1268, float %1269, float %1270, float %1261, float %1262, float %1263)  ; Dot3(ax,ay,az,bx,by,bz)
  %1272 = fmul fast float %1271, %1265
  %1273 = fmul fast float %1271, %1266
  %1274 = fmul fast float %1271, %1267
  %1275 = fsub fast float %407, %1272
  %1276 = fsub fast float %408, %1273
  %1277 = fsub fast float %409, %1274
  %1278 = fsub fast float %1258, %1252
  %1279 = fsub fast float %1259, %1253
  %1280 = fsub fast float %1260, %1254
  %1281 = call float @dx.op.dot3.f32(i32 55, float %1278, float %1279, float %1280, float %1261, float %1262, float %1263)  ; Dot3(ax,ay,az,bx,by,bz)
  %1282 = fmul fast float %1281, %1265
  %1283 = fmul fast float %1281, %1266
  %1284 = fmul fast float %1281, %1267
  %1285 = fsub fast float %1258, %1282
  %1286 = fsub fast float %1259, %1283
  %1287 = fsub fast float %1260, %1284
  %1288 = fsub fast float %1285, %1275
  %1289 = fsub fast float %1286, %1276
  %1290 = fsub fast float %1287, %1277
  %1291 = fsub fast float %1252, %1275
  %1292 = fsub fast float %1253, %1276
  %1293 = fsub fast float %1254, %1277
  %1294 = call float @dx.op.dot3.f32(i32 55, float %1291, float %1292, float %1293, float %1288, float %1289, float %1290)  ; Dot3(ax,ay,az,bx,by,bz)
  %1295 = call float @dx.op.dot3.f32(i32 55, float %1288, float %1289, float %1290, float %1288, float %1289, float %1290)  ; Dot3(ax,ay,az,bx,by,bz)
  %1296 = fdiv fast float %1294, %1295
  %1297 = fcmp fast une float %1275, %1285
  %1298 = fcmp fast une float %1276, %1286
  %1299 = fcmp fast une float %1277, %1287
  %1300 = or i1 %1297, %1298
  %1301 = or i1 %1299, %1300
  %1302 = select i1 %1301, float %1296, float 0.000000e+00
  %1303 = call float @dx.op.unary.f32(i32 7, float %1302)  ; Saturate(value)
  %1304 = fmul fast float %1303, %1255
  %1305 = fmul fast float %1303, %1256
  %1306 = fmul fast float %1303, %1257
  %1307 = fadd fast float %1268, %1304
  %1308 = fadd fast float %1269, %1305
  %1309 = fadd fast float %1270, %1306
  %1310 = call float @dx.op.dot3.f32(i32 55, float %1307, float %1308, float %1309, float %1261, float %1262, float %1263)  ; Dot3(ax,ay,az,bx,by,bz)
  %1311 = fdiv fast float %1310, %1264
  %1312 = call float @dx.op.unary.f32(i32 7, float %1311)  ; Saturate(value)
  %1313 = fmul fast float %1261, %1312
  %1314 = fmul fast float %1262, %1312
  %1315 = fmul fast float %1263, %1312
  %1316 = fadd fast float %1313, %1252
  %1317 = fadd fast float %1314, %1253
  %1318 = fadd fast float %1315, %1254
  %1319 = fmul fast float %1238, %1214
  %1320 = fmul fast float %1238, %1215
  %1321 = fmul fast float %1238, %1216
  %1322 = fadd fast float %1316, %1319
  %1323 = fadd fast float %1317, %1320
  %1324 = fadd fast float %1318, %1321
  %1325 = fsub fast float -0.000000e+00, %1237
  %1326 = fdiv fast float %1325, %1236
  %1327 = fmul fast float %1326, %1326
  %1328 = call float @dx.op.dot3.f32(i32 55, float %425, float %426, float %427, float %1214, float %1215, float %1216)  ; Dot3(ax,ay,az,bx,by,bz)
  %1329 = fsub fast float %407, %1322
  %1330 = fsub fast float %408, %1323
  %1331 = fsub fast float %409, %1324
  %1332 = call float @dx.op.dot3.f32(i32 55, float %1329, float %1330, float %1331, float %1214, float %1215, float %1216)  ; Dot3(ax,ay,az,bx,by,bz)
  %1333 = fsub fast float %1322, %407
  %1334 = fsub fast float %1323, %408
  %1335 = fsub fast float %1324, %409
  %1336 = fmul fast float %1328, %1328
  %1337 = fsub fast float %1336, %1327
  %1338 = fmul fast float %1332, %1328
  %1339 = call float @dx.op.dot3.f32(i32 55, float %1333, float %1334, float %1335, float %425, float %426, float %427)  ; Dot3(ax,ay,az,bx,by,bz)
  %1340 = fmul fast float %1339, %1327
  %1341 = fadd fast float %1340, %1338
  %1342 = fmul fast float %1341, 2.000000e+00
  %1343 = fmul fast float %1332, %1332
  %1344 = call float @dx.op.dot3.f32(i32 55, float %1333, float %1334, float %1335, float %1333, float %1334, float %1335)  ; Dot3(ax,ay,az,bx,by,bz)
  %1345 = fmul fast float %1344, %1327
  %1346 = fsub fast float %1343, %1345
  %1347 = fmul fast float %1342, %1342
  %1348 = fmul fast float %1337, 4.000000e+00
  %1349 = fmul fast float %1348, %1346
  %1350 = fsub fast float %1347, %1349
  %1351 = fcmp fast ogt float %1350, 0.000000e+00
  br i1 %1351, label %1352, label %1443, !dx.controlflow.hints !86

; <label>:1352                                    ; preds = %1251
  %1353 = call float @dx.op.unary.f32(i32 24, float %1350)  ; Sqrt(value)
  %1354 = fdiv fast float 5.000000e-01, %1337
  %1355 = fsub fast float -0.000000e+00, %1342
  %1356 = fsub fast float %1355, %1353
  %1357 = fmul fast float %1356, %1354
  %1358 = fsub fast float %1353, %1342
  %1359 = fmul fast float %1358, %1354
  %1360 = call float @dx.op.binary.f32(i32 35, float %1357, float %1359)  ; FMax(a,b)
  %1361 = call float @dx.op.binary.f32(i32 36, float %1357, float %1359)  ; FMin(a,b)
  %1362 = fsub fast float %1316, %407
  %1363 = fsub fast float %1317, %408
  %1364 = fsub fast float %1318, %409
  %1365 = call float @dx.op.dot3.f32(i32 55, float %1362, float %1363, float %1364, float %1214, float %1215, float %1216)  ; Dot3(ax,ay,az,bx,by,bz)
  %1366 = fdiv fast float %1365, %1328
  %1367 = fcmp fast ogt float %1328, 0.000000e+00
  br i1 %1367, label %1368, label %1371, !dx.controlflow.hints !87

; <label>:1368                                    ; preds = %1352
  %1369 = call float @dx.op.binary.f32(i32 36, float %1361, float %1366)  ; FMin(a,b)
  %1370 = call float @dx.op.binary.f32(i32 36, float %1360, float %1366)  ; FMin(a,b)
  br label %1374

; <label>:1371                                    ; preds = %1352
  %1372 = call float @dx.op.binary.f32(i32 35, float %1361, float %1366)  ; FMax(a,b)
  %1373 = call float @dx.op.binary.f32(i32 35, float %1360, float %1366)  ; FMax(a,b)
  br label %1374

; <label>:1374                                    ; preds = %1371, %1368
  %1375 = phi float [ %1369, %1368 ], [ %1372, %1371 ]
  %1376 = phi float [ %1370, %1368 ], [ %1373, %1371 ]
  %1377 = fcmp fast oge float %1375, 0.000000e+00
  %1378 = fcmp fast olt float %1375, %424
  %1379 = and i1 %1377, %1378
  %1380 = fcmp fast ogt float %1376, 0.000000e+00
  %1381 = fcmp fast ole float %1376, %424
  %1382 = and i1 %1380, %1381
  %1383 = or i1 %1379, %1382
  br i1 %1383, label %1384, label %1443, !dx.controlflow.hints !88

; <label>:1384                                    ; preds = %1374
  %1385 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1375)  ; FMax(a,b)
  %1386 = call float @dx.op.binary.f32(i32 36, float %424, float %1376)  ; FMin(a,b)
  br i1 %1367, label %1387, label %1409, !dx.controlflow.hints !89

; <label>:1387                                    ; preds = %1384
  %1388 = fmul fast float %1386, %425
  %1389 = fmul fast float %1386, %426
  %1390 = fmul fast float %1386, %427
  %1391 = fsub fast float %1333, %1388
  %1392 = fsub fast float %1334, %1389
  %1393 = fsub fast float %1335, %1390
  %1394 = call float @dx.op.dot3.f32(i32 55, float %1391, float %1392, float %1393, float %1391, float %1392, float %1393)  ; Dot3(ax,ay,az,bx,by,bz)
  %1395 = call float @dx.op.unary.f32(i32 25, float %1394)  ; Rsqrt(value)
  %1396 = fmul fast float %1395, %1391
  %1397 = fmul fast float %1395, %1392
  %1398 = fmul fast float %1395, %1393
  %1399 = call float @dx.op.dot3.f32(i32 55, float %1396, float %1397, float %1398, float %1214, float %1215, float %1216)  ; Dot3(ax,ay,az,bx,by,bz)
  %1400 = fmul fast float %1399, %1236
  %1401 = fadd fast float %1400, %1237
  %1402 = fcmp fast olt float %1401, 0xBF1A36E2E0000000
  %1403 = select i1 %1402, float 0.000000e+00, float %1385
  %1404 = select i1 %1402, float %1385, float %1386
  %1405 = fsub fast float %1403, %1404
  %1406 = call float @dx.op.unary.f32(i32 6, float %1405)  ; FAbs(value)
  %1407 = fcmp fast olt float %1406, 0x3F1A36E2E0000000
  br i1 %1407, label %1408, label %1431, !dx.controlflow.hints !90

; <label>:1408                                    ; preds = %1387
  br label %1431

; <label>:1409                                    ; preds = %1384
  %1410 = fmul fast float %1385, %425
  %1411 = fmul fast float %1385, %426
  %1412 = fmul fast float %1385, %427
  %1413 = fsub fast float %1333, %1410
  %1414 = fsub fast float %1334, %1411
  %1415 = fsub fast float %1335, %1412
  %1416 = call float @dx.op.dot3.f32(i32 55, float %1413, float %1414, float %1415, float %1413, float %1414, float %1415)  ; Dot3(ax,ay,az,bx,by,bz)
  %1417 = call float @dx.op.unary.f32(i32 25, float %1416)  ; Rsqrt(value)
  %1418 = fmul fast float %1417, %1413
  %1419 = fmul fast float %1417, %1414
  %1420 = fmul fast float %1417, %1415
  %1421 = call float @dx.op.dot3.f32(i32 55, float %1418, float %1419, float %1420, float %1214, float %1215, float %1216)  ; Dot3(ax,ay,az,bx,by,bz)
  %1422 = fmul fast float %1421, %1236
  %1423 = fadd fast float %1422, %1237
  %1424 = fcmp fast olt float %1423, 0xBF1A36E2E0000000
  %1425 = select i1 %1424, float %1386, float %1385
  %1426 = select i1 %1424, float %424, float %1386
  %1427 = fsub fast float %1425, %1426
  %1428 = call float @dx.op.unary.f32(i32 6, float %1427)  ; FAbs(value)
  %1429 = fcmp fast olt float %1428, 0x3F1A36E2E0000000
  br i1 %1429, label %1430, label %1431, !dx.controlflow.hints !91

; <label>:1430                                    ; preds = %1409
  br label %1431

; <label>:1431                                    ; preds = %1430, %1409, %1408, %1387
  %1432 = phi float [ 0.000000e+00, %1408 ], [ %1403, %1387 ], [ %1425, %1430 ], [ %1425, %1409 ]
  %1433 = phi float [ %1404, %1408 ], [ %1404, %1387 ], [ %424, %1430 ], [ %1426, %1409 ]
  %1434 = fmul fast float %1432, %425
  %1435 = fmul fast float %1432, %426
  %1436 = fmul fast float %1432, %427
  %1437 = fadd fast float %1434, %407
  %1438 = fadd fast float %1435, %408
  %1439 = fadd fast float %1436, %409
  %1440 = fsub fast float %1433, %1432
  %1441 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1440)  ; FMax(a,b)
  %1442 = fmul fast float %1441, %1250
  br label %1443

; <label>:1443                                    ; preds = %1431, %1374, %1251, %1193
  %1444 = phi float [ %1322, %1431 ], [ %1322, %1374 ], [ %1322, %1251 ], [ %1230, %1193 ]
  %1445 = phi float [ %1323, %1431 ], [ %1323, %1374 ], [ %1323, %1251 ], [ %1231, %1193 ]
  %1446 = phi float [ %1324, %1431 ], [ %1324, %1374 ], [ %1324, %1251 ], [ %1232, %1193 ]
  %1447 = phi float [ %1437, %1431 ], [ %407, %1374 ], [ %407, %1251 ], [ %407, %1193 ]
  %1448 = phi float [ %1438, %1431 ], [ %408, %1374 ], [ %408, %1251 ], [ %408, %1193 ]
  %1449 = phi float [ %1439, %1431 ], [ %409, %1374 ], [ %409, %1251 ], [ %409, %1193 ]
  %1450 = phi float [ %1441, %1431 ], [ %424, %1374 ], [ %424, %1251 ], [ %424, %1193 ]
  %1451 = phi float [ %1442, %1431 ], [ 1.000000e+00, %1374 ], [ 1.000000e+00, %1251 ], [ 1.000000e+00, %1193 ]
  %1452 = fsub fast float %1444, %1447
  %1453 = fsub fast float %1445, %1448
  %1454 = fsub fast float %1446, %1449
  %1455 = call float @dx.op.dot3.f32(i32 55, float %1452, float %1453, float %1454, float %425, float %426, float %427)  ; Dot3(ax,ay,az,bx,by,bz)
  %1456 = call float @dx.op.binary.f32(i32 35, float %1455, float 0.000000e+00)  ; FMax(a,b)
  %1457 = call float @dx.op.binary.f32(i32 36, float %1456, float %1450)  ; FMin(a,b)
  %1458 = fmul fast float %1457, %425
  %1459 = fmul fast float %1457, %426
  %1460 = fmul fast float %1457, %427
  %1461 = fsub fast float %1447, %1444
  %1462 = fadd fast float %1461, %1458
  %1463 = fsub fast float %1448, %1445
  %1464 = fadd fast float %1463, %1459
  %1465 = fsub fast float %1449, %1446
  %1466 = fadd fast float %1465, %1460
  %1467 = fmul fast float %1462, %1462
  %1468 = fmul fast float %1464, %1464
  %1469 = fadd fast float %1467, %1468
  %1470 = fmul fast float %1466, %1466
  %1471 = fadd fast float %1469, %1470
  %1472 = call float @dx.op.unary.f32(i32 24, float %1471)  ; Sqrt(value)
  %1473 = fsub fast float -0.000000e+00, %1457
  %1474 = call float @dx.op.unary.f32(i32 6, float %1473)  ; FAbs(value)
  %1475 = fadd fast float %1474, 0x3DDB7CDFE0000000
  %1476 = fcmp fast oge float %1472, 0.000000e+00
  %1477 = fsub fast float -0.000000e+00, %1475
  %1478 = select i1 %1476, float %1477, float %1475
  %1479 = fadd fast float %1478, %1472
  %1480 = fsub fast float -0.000000e+00, %1472
  %1481 = select i1 %1476, float %1472, float %1480
  %1482 = fadd fast float %1475, %1481
  %1483 = fdiv fast float %1479, %1482
  %1484 = select i1 %1476, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %1485 = fmul fast float %1483, %1483
  %1486 = fmul fast float %1485, 0x3FC9205BC0000000
  %1487 = fadd fast float %1486, 0xBFEF6A1620000000
  %1488 = fmul fast float %1487, %1483
  %1489 = fadd fast float %1488, %1484
  %1490 = fcmp ole float %1457, -0.000000e+00
  %1491 = fsub fast float -0.000000e+00, %1489
  %1492 = select i1 %1490, float %1489, float %1491
  %1493 = fsub fast float %1450, %1457
  %1494 = call float @dx.op.unary.f32(i32 6, float %1493)  ; FAbs(value)
  %1495 = fadd fast float %1494, 0x3DDB7CDFE0000000
  %1496 = fsub fast float -0.000000e+00, %1495
  %1497 = select i1 %1476, float %1496, float %1495
  %1498 = fadd fast float %1497, %1472
  %1499 = fadd fast float %1495, %1481
  %1500 = fdiv fast float %1498, %1499
  %1501 = fmul fast float %1500, %1500
  %1502 = fmul fast float %1501, 0x3FC9205BC0000000
  %1503 = fadd fast float %1502, 0xBFEF6A1620000000
  %1504 = fmul fast float %1503, %1500
  %1505 = fadd fast float %1504, %1484
  %1506 = fcmp fast oge float %1493, 0.000000e+00
  %1507 = fsub fast float -0.000000e+00, %1505
  %1508 = select i1 %1506, float %1505, float %1507
  %1509 = fsub fast float %1508, %1492
  %1510 = fmul fast float %1509, %106
  %1511 = fadd fast float %1510, %1492
  %1512 = call float @dx.op.unary.f32(i32 14, float %1511)  ; Tan(value)
  %1513 = fmul fast float %1512, %1472
  %1514 = fadd fast float %1513, %1457
  %1515 = fmul fast float %1472, %1472
  %1516 = fmul fast float %1513, %1513
  %1517 = fadd fast float %1516, %1515
  %1518 = fmul fast float %1509, %1517
  %1519 = fdiv fast float %1472, %1518
  %1520 = fdiv fast float 1.000000e+00, %1519
  %1521 = fmul fast float %1451, %1250
  %1522 = fmul fast float %1521, %1520
  %1523 = fmul fast float %1514, %425
  %1524 = fmul fast float %1514, %426
  %1525 = fmul fast float %1514, %427
  %1526 = fadd fast float %1523, %1447
  %1527 = fadd fast float %1524, %1448
  %1528 = fadd fast float %1525, %1449
  %1529 = call float @dx.op.dot3.f32(i32 55, float %1222, float %1223, float %1224, float %1222, float %1223, float %1224)  ; Dot3(ax,ay,az,bx,by,bz)
  %1530 = fsub fast float %1526, %1230
  %1531 = fsub fast float %1527, %1231
  %1532 = fsub fast float %1528, %1232
  %1533 = call float @dx.op.dot3.f32(i32 55, float %1530, float %1531, float %1532, float %1222, float %1223, float %1224)  ; Dot3(ax,ay,az,bx,by,bz)
  %1534 = fdiv fast float %1533, %1529
  %1535 = call float @dx.op.binary.f32(i32 35, float %1534, float -1.000000e+00)  ; FMax(a,b)
  %1536 = call float @dx.op.binary.f32(i32 36, float %1535, float 1.000000e+00)  ; FMin(a,b)
  %1537 = fmul fast float %1536, %1222
  %1538 = fmul fast float %1536, %1223
  %1539 = fmul fast float %1536, %1224
  %1540 = fadd fast float %1537, %1230
  %1541 = fadd fast float %1538, %1231
  %1542 = fadd fast float %1539, %1232
  %1543 = fsub fast float %1540, %1526
  %1544 = fsub fast float %1541, %1527
  %1545 = fsub fast float %1542, %1528
  %1546 = call float @dx.op.dot3.f32(i32 55, float %1543, float %1544, float %1545, float %1543, float %1544, float %1545)  ; Dot3(ax,ay,az,bx,by,bz)
  %1547 = call float @dx.op.unary.f32(i32 24, float %1546)  ; Sqrt(value)
  %1548 = fdiv fast float 1.000000e+00, %1547
  %1549 = fmul fast float %1543, %1548
  %1550 = fmul fast float %1544, %1548
  %1551 = fmul fast float %1545, %1548
  %1552 = fadd fast float %1547, %1211
  %1553 = fdiv fast float 1.000000e+00, %1552
  %1554 = fmul float %1227, %1553
  %1555 = fmul float %1554, %1554
  %1556 = call float @dx.op.unary.f32(i32 7, float %1555)  ; Saturate(value)
  br i1 %1249, label %1557, label %1581, !dx.controlflow.hints !92

; <label>:1557                                    ; preds = %1443
  %1558 = fmul fast float %1238, %1214
  %1559 = fmul fast float %1238, %1215
  %1560 = fmul fast float %1238, %1216
  %1561 = fsub fast float %1558, %1526
  %1562 = fadd fast float %1561, %1540
  %1563 = fsub fast float %1559, %1527
  %1564 = fadd fast float %1563, %1541
  %1565 = fsub fast float %1560, %1528
  %1566 = fadd fast float %1565, %1542
  %1567 = call float @dx.op.dot3.f32(i32 55, float %1562, float %1564, float %1566, float %1562, float %1564, float %1566)  ; Dot3(ax,ay,az,bx,by,bz)
  %1568 = call float @dx.op.unary.f32(i32 25, float %1567)  ; Rsqrt(value)
  %1569 = fmul fast float %1568, %1562
  %1570 = fmul fast float %1568, %1564
  %1571 = fmul fast float %1568, %1566
  %1572 = fsub fast float %1526, %1540
  %1573 = fsub fast float %1527, %1541
  %1574 = fsub fast float %1528, %1542
  %1575 = fsub fast float -0.000000e+00, %1572
  %1576 = fsub fast float -0.000000e+00, %1573
  %1577 = fsub fast float -0.000000e+00, %1574
  %1578 = call float @dx.op.dot3.f32(i32 55, float %1575, float %1576, float %1577, float %1214, float %1215, float %1216)  ; Dot3(ax,ay,az,bx,by,bz)
  %1579 = fcmp fast ogt float %1578, 0.000000e+00
  %1580 = uitofp i1 %1579 to float
  br label %1581

; <label>:1581                                    ; preds = %1557, %1443
  %1582 = phi float [ %1580, %1557 ], [ 1.000000e+00, %1443 ]
  %1583 = phi float [ %1569, %1557 ], [ %1549, %1443 ]
  %1584 = phi float [ %1570, %1557 ], [ %1550, %1443 ]
  %1585 = phi float [ %1571, %1557 ], [ %1551, %1443 ]
  %1586 = call float @dx.op.dot3.f32(i32 55, float %1214, float %1215, float %1216, float %1583, float %1584, float %1585)  ; Dot3(ax,ay,az,bx,by,bz)
  %1587 = fmul fast float %1586, %1586
  %1588 = call float @dx.op.unary.f32(i32 7, float %1587)  ; Saturate(value)
  %1589 = fsub fast float 1.000000e+00, %1588
  %1590 = fmul fast float %1589, 5.000000e-01
  %1591 = fcmp fast ogt float %1586, 0.000000e+00
  %1592 = fsub fast float 1.000000e+00, %1590
  %1593 = select i1 %1591, float %1590, float %1592
  %1594 = fmul fast float %1593, %1246
  %1595 = fadd fast float %1594, %1244
  %1596 = fmul fast float %1595, 0x3EF0001000000000
  %1597 = fsub fast float %1540, %371
  %1598 = fsub fast float %1541, %372
  %1599 = fsub fast float %1542, %373
  %1600 = call float @dx.op.dot3.f32(i32 55, float %1597, float %1598, float %1599, float %1597, float %1598, float %1599)  ; Dot3(ax,ay,az,bx,by,bz)
  %1601 = fmul fast float %379, %379
  %1602 = fsub fast float %1600, %1601
  %1603 = fdiv fast float %1602, %1600
  %1604 = call float @dx.op.unary.f32(i32 24, float %1603)  ; Sqrt(value)
  %1605 = fsub fast float 1.000000e+00, %1604
  %1606 = fcmp fast olt float %1600, %1601
  %1607 = fmul fast float %1605, 2.560000e+02
  %1608 = select i1 %1606, float 2.560000e+02, float %1607
  %1609 = call float @dx.op.unary.f32(i32 23, float %1608)  ; Log(value)
  %1610 = call float @dx.op.binary.f32(i32 36, float %1609, float 7.000000e+00)  ; FMin(a,b)
  %1611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1596, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float %1610)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1612 = extractvalue %dx.types.ResRet.f32 %1611, 0
  %1613 = fmul fast float %1586, %1236
  %1614 = fadd fast float %1613, %1237
  %1615 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1616 = select i1 %1249, float 1.000000e+00, float %1615
  %1617 = select i1 %1249, float %1615, float 1.000000e+00
  %1618 = fmul fast float %1547, %1233
  %1619 = fsub fast float 1.000000e+00, %1618
  %1620 = fmul fast float %1619, %1239
  %1621 = call float @dx.op.unary.f32(i32 7, float %1620)  ; Saturate(value)
  %1622 = fmul fast float %1621, %1617
  %1623 = fmul fast float %1622, 2.000000e+00
  %1624 = fsub fast float 3.000000e+00, %1623
  %1625 = fmul fast float %1612, %1582
  %1626 = fmul fast float %1622, %1622
  %1627 = fmul fast float %1626, %1625
  %1628 = fmul fast float %1627, %1624
  %1629 = call float @dx.op.binary.f32(i32 36, float %1628, float %1628)  ; FMin(a,b)
  %1630 = call float @dx.op.binary.f32(i32 36, float %1628, float %1629)  ; FMin(a,b)
  %1631 = fcmp fast ogt float %1630, 0.000000e+00
  br i1 %1631, label %1637, label %1632, !dx.controlflow.hints !93

; <label>:1632                                    ; preds = %1730, %1725, %1581
  %1633 = phi float [ %1760, %1730 ], [ %1195, %1725 ], [ %1195, %1581 ]
  %1634 = phi float [ %1761, %1730 ], [ %1196, %1725 ], [ %1196, %1581 ]
  %1635 = phi float [ %1762, %1730 ], [ %1197, %1725 ], [ %1197, %1581 ]
  %1636 = icmp eq i32 %1194, %1202
  br i1 %1636, label %1763, label %1193

; <label>:1637                                    ; preds = %1581
  %1638 = icmp eq i32 %1247, 255
  br i1 %1638, label %1725, label %1639, !dx.controlflow.hints !94

; <label>:1639                                    ; preds = %1637
  %1640 = mul nuw nsw i32 %1247, 176
  %1641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1640, i32 undef)  ; BufferLoad(srv,index,wot)
  %1642 = extractvalue %dx.types.ResRet.f32 %1641, 0
  %1643 = extractvalue %dx.types.ResRet.f32 %1641, 1
  %1644 = extractvalue %dx.types.ResRet.f32 %1641, 2
  %1645 = extractvalue %dx.types.ResRet.f32 %1641, 3
  %1646 = add nuw nsw i32 %1640, 16
  %1647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1646, i32 undef)  ; BufferLoad(srv,index,wot)
  %1648 = extractvalue %dx.types.ResRet.f32 %1647, 0
  %1649 = extractvalue %dx.types.ResRet.f32 %1647, 1
  %1650 = add nuw nsw i32 %1640, 32
  %1651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1650, i32 undef)  ; BufferLoad(srv,index,wot)
  %1652 = extractvalue %dx.types.ResRet.f32 %1651, 0
  %1653 = extractvalue %dx.types.ResRet.f32 %1651, 2
  %1654 = add nuw nsw i32 %1640, 48
  %1655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1654, i32 undef)  ; BufferLoad(srv,index,wot)
  %1656 = extractvalue %dx.types.ResRet.f32 %1655, 0
  %1657 = extractvalue %dx.types.ResRet.f32 %1655, 1
  %1658 = extractvalue %dx.types.ResRet.f32 %1655, 2
  %1659 = extractvalue %dx.types.ResRet.f32 %1655, 3
  %1660 = add nuw nsw i32 %1640, 64
  %1661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1660, i32 undef)  ; BufferLoad(srv,index,wot)
  %1662 = extractvalue %dx.types.ResRet.f32 %1661, 0
  %1663 = extractvalue %dx.types.ResRet.f32 %1661, 1
  %1664 = extractvalue %dx.types.ResRet.f32 %1661, 2
  %1665 = extractvalue %dx.types.ResRet.f32 %1661, 3
  %1666 = add nuw nsw i32 %1640, 80
  %1667 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.f32 %1667, 0
  %1669 = extractvalue %dx.types.ResRet.f32 %1667, 1
  %1670 = extractvalue %dx.types.ResRet.f32 %1667, 2
  %1671 = extractvalue %dx.types.ResRet.f32 %1667, 3
  %1672 = add nuw nsw i32 %1640, 96
  %1673 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.f32 %1673, 0
  %1675 = extractvalue %dx.types.ResRet.f32 %1673, 1
  %1676 = extractvalue %dx.types.ResRet.f32 %1673, 2
  %1677 = extractvalue %dx.types.ResRet.f32 %1673, 3
  %1678 = bitcast float %1649 to i32
  %1679 = fmul fast float %1653, %1549
  %1680 = fmul fast float %1653, %1550
  %1681 = fmul fast float %1653, %1551
  %1682 = fsub fast float %1526, %1679
  %1683 = fsub fast float %1527, %1680
  %1684 = fsub fast float %1528, %1681
  %1685 = fmul fast float %1682, %1656
  %1686 = call float @dx.op.tertiary.f32(i32 46, float %1683, float %1662, float %1685)  ; FMad(a,b,c)
  %1687 = call float @dx.op.tertiary.f32(i32 46, float %1684, float %1668, float %1686)  ; FMad(a,b,c)
  %1688 = fadd fast float %1687, %1674
  %1689 = fmul fast float %1682, %1657
  %1690 = call float @dx.op.tertiary.f32(i32 46, float %1683, float %1663, float %1689)  ; FMad(a,b,c)
  %1691 = call float @dx.op.tertiary.f32(i32 46, float %1684, float %1669, float %1690)  ; FMad(a,b,c)
  %1692 = fadd fast float %1691, %1675
  %1693 = fmul fast float %1682, %1658
  %1694 = call float @dx.op.tertiary.f32(i32 46, float %1683, float %1664, float %1693)  ; FMad(a,b,c)
  %1695 = call float @dx.op.tertiary.f32(i32 46, float %1684, float %1670, float %1694)  ; FMad(a,b,c)
  %1696 = fadd fast float %1695, %1676
  %1697 = fmul fast float %1682, %1659
  %1698 = call float @dx.op.tertiary.f32(i32 46, float %1683, float %1665, float %1697)  ; FMad(a,b,c)
  %1699 = call float @dx.op.tertiary.f32(i32 46, float %1684, float %1671, float %1698)  ; FMad(a,b,c)
  %1700 = fadd fast float %1699, %1677
  %1701 = fdiv fast float %1688, %1700
  %1702 = fdiv fast float %1692, %1700
  %1703 = fdiv fast float %1696, %1700
  %1704 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %1703)  ; FMax(a,b)
  %1705 = fmul fast float %1644, 5.000000e-01
  %1706 = call float @dx.op.tertiary.f32(i32 46, float %1705, float -0.000000e+00, float 0.000000e+00)  ; FMad(a,b,c)
  %1707 = fadd fast float %1706, %1701
  %1708 = fadd fast float %1702, %1705
  %1709 = fmul fast float %1707, %1648
  %1710 = fmul fast float %1708, %1648
  %1711 = call float @dx.op.binary.f32(i32 35, float %1709, float %1644)  ; FMax(a,b)
  %1712 = call float @dx.op.binary.f32(i32 35, float %1710, float %1644)  ; FMax(a,b)
  %1713 = call float @dx.op.binary.f32(i32 36, float %1711, float %1645)  ; FMin(a,b)
  %1714 = call float @dx.op.binary.f32(i32 36, float %1712, float %1645)  ; FMin(a,b)
  %1715 = fadd fast float %1713, %1642
  %1716 = fadd fast float %1714, %1643
  %1717 = uitofp i32 %1678 to float
  %1718 = fadd fast float %1704, %1652
  %1719 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %25, float %1715, float %1716, float %1717, float undef, i32 0, i32 0, i32 undef, float %1718)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1720 = extractvalue %dx.types.ResRet.f32 %1719, 0
  %1721 = fadd fast float %1720, -1.000000e+00
  %1722 = fmul fast float %1721, %1616
  %1723 = fadd fast float %1722, 1.000000e+00
  %1724 = fmul fast float %1723, %1628
  br label %1725

; <label>:1725                                    ; preds = %1639, %1637
  %1726 = phi float [ %1724, %1639 ], [ %1628, %1637 ]
  %1727 = call float @dx.op.binary.f32(i32 36, float %1726, float %1726)  ; FMin(a,b)
  %1728 = call float @dx.op.binary.f32(i32 36, float %1726, float %1727)  ; FMin(a,b)
  %1729 = fcmp fast ogt float %1728, 0.000000e+00
  br i1 %1729, label %1730, label %1632, !dx.controlflow.hints !95

; <label>:1730                                    ; preds = %1725
  %1731 = call float @dx.op.dot3.f32(i32 55, float %1549, float %1550, float %1551, float %187, float %188, float %189)  ; Dot3(ax,ay,az,bx,by,bz)
  %1732 = fcmp fast ogt float %295, 0.000000e+00
  %1733 = select i1 %1732, float 1.000000e+00, float -1.000000e+00
  %1734 = fmul fast float %106, 7.812500e-03
  %1735 = fmul fast float %106, 3.125000e-02
  %1736 = fadd fast float %1735, -3.125000e-02
  %1737 = fmul fast float %1733, 5.000000e-01
  %1738 = fmul fast float %1737, %1731
  %1739 = fmul fast float %1733, %295
  %1740 = fadd fast float %1734, 4.921875e-01
  %1741 = fadd fast float %1740, %1738
  %1742 = fadd fast float %1734, 0x3FB25F3060000000
  %1743 = fadd fast float %1736, %1739
  %1744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %24, float %1741, float %1742, float %1743, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1745 = extractvalue %dx.types.ResRet.f32 %1744, 0
  %1746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1747 = extractvalue %dx.types.CBufRet.f32 %1746, 1
  %1748 = extractvalue %dx.types.CBufRet.f32 %1746, 2
  %1749 = select i1 %1249, float %1747, float %1748
  %1750 = fmul fast float %1556, 0x400921FB60000000
  %1751 = fmul fast float %1750, %1726
  %1752 = fmul fast float %1751, %1745
  %1753 = fmul fast float %1752, %1749
  %1754 = fmul fast float %1522, %1206
  %1755 = fmul fast float %1754, %1753
  %1756 = fmul fast float %1522, %1207
  %1757 = fmul fast float %1756, %1753
  %1758 = fmul fast float %1522, %1208
  %1759 = fmul fast float %1758, %1753
  %1760 = fadd fast float %1755, %1195
  %1761 = fadd fast float %1757, %1196
  %1762 = fadd fast float %1759, %1197
  br label %1632

; <label>:1763                                    ; preds = %1632
  br label %1764

; <label>:1764                                    ; preds = %1763, %1180
  %1765 = phi float [ %1182, %1180 ], [ %1633, %1763 ]
  %1766 = phi float [ %1183, %1180 ], [ %1634, %1763 ]
  %1767 = phi float [ %1184, %1180 ], [ %1635, %1763 ]
  %1768 = add i32 %1181, 1
  %1769 = icmp ugt i32 %1768, %1179
  br i1 %1769, label %1770, label %1180

; <label>:1770                                    ; preds = %1764
  br label %1771

; <label>:1771                                    ; preds = %1770, %1170
  %1772 = phi float [ %1171, %1170 ], [ %1765, %1770 ]
  %1773 = phi float [ %1172, %1170 ], [ %1766, %1770 ]
  %1774 = phi float [ %1173, %1170 ], [ %1767, %1770 ]
  %1775 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %22, float %131, float %132, float %133, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1776 = extractvalue %dx.types.ResRet.f32 %1775, 0
  %1777 = extractvalue %dx.types.ResRet.f32 %1775, 1
  %1778 = extractvalue %dx.types.ResRet.f32 %1775, 2
  %1779 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1776)  ; IsNaN(value)
  %1780 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1777)  ; IsNaN(value)
  %1781 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1778)  ; IsNaN(value)
  %1782 = or i1 %1779, %1780
  %1783 = or i1 %1782, %1781
  %1784 = select i1 %1783, float 0.000000e+00, float %1776
  %1785 = select i1 %1783, float 0.000000e+00, float %1777
  %1786 = select i1 %1783, float 0.000000e+00, float %1778
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 1
  %1789 = fmul fast float %1784, %1788
  %1790 = fmul fast float %1785, %1788
  %1791 = fmul fast float %1786, %1788
  %1792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1792, 3
  %1794 = fmul fast float %1789, %1793
  %1795 = fmul fast float %1790, %1793
  %1796 = fmul fast float %1791, %1793
  %1797 = fadd fast float %1794, %1772
  %1798 = fadd fast float %1795, %1773
  %1799 = fadd fast float %1796, %1774
  br label %1800

; <label>:1800                                    ; preds = %1771, %268
  %1801 = phi float [ %292, %1771 ], [ %284, %268 ]
  %1802 = phi float [ %293, %1771 ], [ %285, %268 ]
  %1803 = phi float [ %294, %1771 ], [ %286, %268 ]
  %1804 = phi float [ %1797, %1771 ], [ 0.000000e+00, %268 ]
  %1805 = phi float [ %1798, %1771 ], [ 0.000000e+00, %268 ]
  %1806 = phi float [ %1799, %1771 ], [ 0.000000e+00, %268 ]
  %1807 = fmul fast float %1801, %283
  %1808 = fmul fast float %1802, %283
  %1809 = fmul fast float %1803, %283
  %1810 = fmul fast float %1807, %1804
  %1811 = fmul fast float %1808, %1805
  %1812 = fmul fast float %1809, %1806
  %1813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.f32 %1813, 0
  %1815 = fmul fast float %1810, %1814
  %1816 = fmul fast float %1811, %1814
  %1817 = fmul fast float %1812, %1814
  %1818 = fmul fast float %1816, 5.000000e-01
  %1819 = fadd fast float %1812, %1810
  %1820 = fmul fast float %1814, %1819
  %1821 = fmul fast float %1820, 2.500000e-01
  %1822 = fadd fast float %1821, %1818
  %1823 = call float @dx.op.unary.f32(i32 23, float %1822)  ; Log(value)
  %1824 = fmul fast float %1823, 0x3FE62E4300000000
  %1825 = fmul fast float %1824, %1824
  store float %193, float addrspace(3)* %194, align 4, !tbaa !41, !noalias !45
  %1826 = fmul fast float %1824, %193
  store float %1826, float addrspace(3)* %196, align 4, !tbaa !41, !noalias !45
  %1827 = fmul fast float %1825, %193
  store float %1827, float addrspace(3)* %198, align 4, !tbaa !41, !noalias !45
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1828 = load float, float addrspace(3)* %200, align 4, !tbaa !41, !noalias !45
  %1829 = fadd fast float %1828, %193
  %1830 = load float, float addrspace(3)* %203, align 4, !tbaa !41, !noalias !45
  %1831 = fadd fast float %1830, %1824
  %1832 = load float, float addrspace(3)* %206, align 4, !tbaa !41, !noalias !45
  %1833 = fadd fast float %1832, %1825
  store float %1829, float addrspace(3)* %194, align 4, !tbaa !41, !noalias !45
  store float %1831, float addrspace(3)* %196, align 4, !tbaa !41, !noalias !45
  store float %1833, float addrspace(3)* %198, align 4, !tbaa !41, !noalias !45
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1834 = load float, float addrspace(3)* %210, align 4, !tbaa !41, !noalias !45
  %1835 = fadd fast float %1834, %1829
  %1836 = load float, float addrspace(3)* %213, align 4, !tbaa !41, !noalias !45
  %1837 = fadd fast float %1836, %1831
  %1838 = load float, float addrspace(3)* %216, align 4, !tbaa !41, !noalias !45
  %1839 = fadd fast float %1838, %1833
  store float %1835, float addrspace(3)* %194, align 4, !tbaa !41, !noalias !45
  store float %1837, float addrspace(3)* %196, align 4, !tbaa !41, !noalias !45
  store float %1839, float addrspace(3)* %198, align 4, !tbaa !41, !noalias !45
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1840 = load float, float addrspace(3)* %220, align 4, !tbaa !41, !noalias !45
  %1841 = fadd fast float %1840, %1835
  %1842 = load float, float addrspace(3)* %223, align 4, !tbaa !41, !noalias !45
  %1843 = fadd fast float %1842, %1837
  %1844 = fdiv fast float %1843, %1841
  br i1 %231, label %1845, label %1853, !dx.controlflow.hints !49

; <label>:1845                                    ; preds = %1800
  %1846 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %219
  %1847 = load float, float addrspace(3)* %1846, align 4, !tbaa !41, !noalias !45
  %1848 = fadd fast float %1847, %1839
  %1849 = fdiv fast float %1848, %1841
  %1850 = lshr i32 %56, 1
  %1851 = lshr i32 %57, 1
  %1852 = lshr i32 %58, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1850, i32 %1851, i32 %1852, float %1844, float %1849, float %1844, float %1844, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1853

; <label>:1853                                    ; preds = %1845, %1800
  br i1 %67, label %1888, label %1854, !dx.controlflow.hints !50

; <label>:1854                                    ; preds = %1853
  %1855 = fadd fast float %106, 0x3FE3C6EF40000000
  %1856 = call float @dx.op.unary.f32(i32 22, float %1855)  ; Frc(value)
  %1857 = call float @dx.op.unary.f32(i32 23, float %1815)  ; Log(value)
  %1858 = fadd fast float %1857, -7.000000e+00
  %1859 = call float @dx.op.unary.f32(i32 21, float %1858)  ; Exp(value)
  %1860 = fmul fast float %1856, 2.000000e+00
  %1861 = fadd fast float %1860, -1.000000e+00
  %1862 = fmul fast float %1859, %1861
  %1863 = fcmp fast ogt float %1815, 0.000000e+00
  %1864 = select i1 %1863, float %1862, float 0.000000e+00
  %1865 = fadd fast float %1864, %1815
  %1866 = fadd fast float %106, 0x3FF3C6EF40000000
  %1867 = call float @dx.op.unary.f32(i32 22, float %1866)  ; Frc(value)
  %1868 = call float @dx.op.unary.f32(i32 23, float %1816)  ; Log(value)
  %1869 = fadd fast float %1868, -7.000000e+00
  %1870 = call float @dx.op.unary.f32(i32 21, float %1869)  ; Exp(value)
  %1871 = fmul fast float %1867, 2.000000e+00
  %1872 = fadd fast float %1871, -1.000000e+00
  %1873 = fmul fast float %1870, %1872
  %1874 = fcmp fast ogt float %1816, 0.000000e+00
  %1875 = select i1 %1874, float %1873, float 0.000000e+00
  %1876 = fadd fast float %1875, %1816
  %1877 = fadd fast float %106, 0x3FFDAA66E0000000
  %1878 = call float @dx.op.unary.f32(i32 22, float %1877)  ; Frc(value)
  %1879 = call float @dx.op.unary.f32(i32 23, float %1817)  ; Log(value)
  %1880 = fadd fast float %1879, -6.000000e+00
  %1881 = call float @dx.op.unary.f32(i32 21, float %1880)  ; Exp(value)
  %1882 = fmul fast float %1878, 2.000000e+00
  %1883 = fadd fast float %1882, -1.000000e+00
  %1884 = fmul fast float %1881, %1883
  %1885 = fcmp fast ogt float %1817, 0.000000e+00
  %1886 = select i1 %1885, float %1884, float 0.000000e+00
  %1887 = fadd fast float %1886, %1817
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %56, i32 %57, i32 %58, float %1865, float %1876, float %1887, float %1865, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1888

; <label>:1888                                    ; preds = %1854, %1853
  %1889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1890 = extractvalue %dx.types.CBufRet.f32 %1889, 0
  %1891 = fmul fast float %1890, %283
  %1892 = fmul fast float %1891, 5.000000e-01
  %1893 = fadd fast float %276, %276
  %1894 = fmul fast float %282, %1893
  %1895 = fmul fast float %1890, %1894
  %1896 = fmul fast float %1895, 2.500000e-01
  %1897 = fadd fast float %1896, %1892
  %1898 = fmul fast float %1897, %1897
  store float %193, float addrspace(3)* %194, align 4, !tbaa !41, !noalias !45
  %1899 = fmul fast float %1897, %193
  store float %1899, float addrspace(3)* %196, align 4, !tbaa !41, !noalias !45
  %1900 = fmul fast float %1898, %193
  store float %1900, float addrspace(3)* %198, align 4, !tbaa !41, !noalias !45
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1901 = load float, float addrspace(3)* %200, align 4, !tbaa !41, !noalias !45
  %1902 = fadd fast float %1901, %193
  %1903 = load float, float addrspace(3)* %203, align 4, !tbaa !41, !noalias !45
  %1904 = fadd fast float %1897, %1903
  %1905 = load float, float addrspace(3)* %206, align 4, !tbaa !41, !noalias !45
  %1906 = fadd fast float %1898, %1905
  store float %1902, float addrspace(3)* %194, align 4, !tbaa !41, !noalias !45
  store float %1904, float addrspace(3)* %196, align 4, !tbaa !41, !noalias !45
  store float %1906, float addrspace(3)* %198, align 4, !tbaa !41, !noalias !45
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1907 = load float, float addrspace(3)* %210, align 4, !tbaa !41, !noalias !45
  %1908 = fadd fast float %1907, %1902
  %1909 = load float, float addrspace(3)* %213, align 4, !tbaa !41, !noalias !45
  %1910 = fadd fast float %1909, %1904
  %1911 = load float, float addrspace(3)* %216, align 4, !tbaa !41, !noalias !45
  %1912 = fadd fast float %1911, %1906
  store float %1908, float addrspace(3)* %194, align 4, !tbaa !41, !noalias !45
  store float %1910, float addrspace(3)* %196, align 4, !tbaa !41, !noalias !45
  store float %1912, float addrspace(3)* %198, align 4, !tbaa !41, !noalias !45
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1913 = load float, float addrspace(3)* %220, align 4, !tbaa !41, !noalias !45
  %1914 = fadd fast float %1913, %1908
  %1915 = load float, float addrspace(3)* %223, align 4, !tbaa !41, !noalias !45
  %1916 = fadd fast float %1915, %1910
  %1917 = fdiv fast float %1916, %1914
  br i1 %231, label %1918, label %1926, !dx.controlflow.hints !51

; <label>:1918                                    ; preds = %1888
  %1919 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %219
  %1920 = load float, float addrspace(3)* %1919, align 4, !tbaa !41, !noalias !45
  %1921 = fadd fast float %1920, %1912
  %1922 = fdiv fast float %1921, %1914
  %1923 = lshr i32 %56, 1
  %1924 = lshr i32 %57, 1
  %1925 = lshr i32 %58, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1923, i32 %1924, i32 %1925, float %1917, float %1922, float %1917, float %1917, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1926

; <label>:1926                                    ; preds = %1918, %1888
  br i1 %67, label %1955, label %1927, !dx.controlflow.hints !52

; <label>:1927                                    ; preds = %1926
  %1928 = fadd fast float %106, 0x3FE3C6EF40000000
  %1929 = call float @dx.op.unary.f32(i32 22, float %1928)  ; Frc(value)
  %1930 = call float @dx.op.unary.f32(i32 23, float %1891)  ; Log(value)
  %1931 = fadd fast float %1930, -7.000000e+00
  %1932 = call float @dx.op.unary.f32(i32 21, float %1931)  ; Exp(value)
  %1933 = fmul fast float %1929, 2.000000e+00
  %1934 = fadd fast float %1933, -1.000000e+00
  %1935 = fmul fast float %1932, %1934
  %1936 = fcmp fast ogt float %1891, 0.000000e+00
  %1937 = select i1 %1936, float %1935, float 0.000000e+00
  %1938 = fadd fast float %1937, %1891
  %1939 = fadd fast float %106, 0x3FF3C6EF40000000
  %1940 = call float @dx.op.unary.f32(i32 22, float %1939)  ; Frc(value)
  %1941 = fmul fast float %1940, 2.000000e+00
  %1942 = fadd fast float %1941, -1.000000e+00
  %1943 = fmul fast float %1932, %1942
  %1944 = select i1 %1936, float %1943, float 0.000000e+00
  %1945 = fadd fast float %1944, %1891
  %1946 = fadd fast float %106, 0x3FFDAA66E0000000
  %1947 = call float @dx.op.unary.f32(i32 22, float %1946)  ; Frc(value)
  %1948 = fadd fast float %1930, -6.000000e+00
  %1949 = call float @dx.op.unary.f32(i32 21, float %1948)  ; Exp(value)
  %1950 = fmul fast float %1947, 2.000000e+00
  %1951 = fadd fast float %1950, -1.000000e+00
  %1952 = fmul fast float %1949, %1951
  %1953 = select i1 %1936, float %1952, float 0.000000e+00
  %1954 = fadd fast float %1953, %1891
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %56, i32 %57, i32 %58, float %1938, float %1945, float %1954, float %1938, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1955

; <label>:1955                                    ; preds = %1927, %1926
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
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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
!dx.entryPoints = !{!38}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !24, !29, !32}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture3D<float>"* undef, !"", i32 0, i32 10, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture1D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 1, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 34, i32 1, i32 7, i32 0, !16}
!16 = !{i32 0, i32 14}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 23, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!24 = !{!25, !26, !27, !28}
!25 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!26 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!27 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!28 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!29 = !{!30, !31}
!30 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!31 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!32 = !{!33, !34, !35, !36, !37}
!33 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!34 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!35 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!36 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!37 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!38 = !{void ()* @cs_volumetric_forwardplus_scatter_global, !"cs_volumetric_forwardplus_scatter_global", null, !4, !39}
!39 = !{i32 0, i64 272, i32 4, !40}
!40 = !{i32 4, i32 4, i32 4}
!41 = !{!42, !42, i64 0}
!42 = !{!"float", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!46, !48}
!46 = distinct !{!46, !47, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!47 = distinct !{!47, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!48 = distinct !{!48, !47, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = !{!65, !65, i64 0}
!65 = !{!"int", !43, i64 0}
!66 = !{!67, !69, !71, !46, !48}
!67 = distinct !{!67, !68, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!68 = distinct !{!68, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!69 = distinct !{!69, !70, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!70 = distinct !{!70, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!71 = distinct !{!71, !72, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z: %agg.result"}
!72 = distinct !{!72, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z"}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}

