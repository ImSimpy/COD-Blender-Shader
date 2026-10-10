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
; shader hash: 6ddc432b9a9ac07081eb814a64ec536d
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
;                                   texture     f32          1d     T15            t54     1
;                                   texture     f32          3d     T16             t5     1
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

define void @cs_volumetric_forwardplus_scatter_global_afog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 54, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = alloca [4 x i32], align 4
  %30 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %31 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %32 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %33 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %34 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %35 = alloca [12 x float], align 4
  %36 = alloca [12 x float], align 4
  %37 = alloca [3 x float], align 4
  %38 = alloca [3 x float], align 4
  %39 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.i32 %39, 3
  %41 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.i32 %41, 1
  %43 = mul i32 %42, %40
  %44 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.i32 %44, 1
  %46 = mul i32 %43, %45
  %47 = add i32 %46, %33
  %48 = shl i32 %47, 2
  %49 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %48, i32 undef)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = and i32 %50, 255
  %52 = lshr i32 %50, 8
  %53 = and i32 %52, 255
  %54 = lshr i32 %50, 16
  %55 = and i32 %54, 255
  %56 = shl nuw nsw i32 %51, 2
  %57 = shl nuw nsw i32 %53, 2
  %58 = shl nuw nsw i32 %55, 2
  %59 = add i32 %56, %30
  %60 = add i32 %57, %31
  %61 = add i32 %58, %32
  %62 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.i32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.i32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.i32 %62, 2
  %66 = icmp uge i32 %59, %63
  %67 = icmp uge i32 %60, %64
  %68 = icmp uge i32 %61, %65
  %69 = or i1 %66, %67
  %70 = or i1 %68, %69
  %71 = xor i1 %70, true
  %72 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.i32 %72, 3
  %74 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %60, i32 %73)  ; UMad(a,b,c)
  %75 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %59, i32 %74)  ; UMad(a,b,c)
  %76 = mul i32 %75, -63
  %77 = lshr i32 %76, 17
  %78 = xor i32 %77, %76
  %79 = mul i32 %78, -511
  %80 = mul i32 %78, -8176
  %81 = xor i32 %79, %80
  %82 = mul i32 %81, -7
  %83 = mul i32 %81, -7168
  %84 = xor i32 %82, %83
  %85 = lshr i32 %84, 15
  %86 = xor i32 %85, %82
  %87 = and i32 %86, 127
  %88 = mul i32 %87, 3
  %89 = add i32 0, %88
  %90 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %89
  %91 = load float, float* %90, align 4
  %92 = mul i32 %87, 3
  %93 = add i32 1, %92
  %94 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %93
  %95 = load float, float* %94, align 4
  %96 = mul i32 %87, 3
  %97 = add i32 2, %96
  %98 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %97
  %99 = load float, float* %98, align 4
  %100 = uitofp i32 %73 to float
  %101 = fmul fast float %100, 0x3FEA36A940000000
  %102 = fmul fast float %100, 0x3FE5793080000000
  %103 = fmul fast float %100, 0x3FE1972580000000
  %104 = fadd fast float %91, %101
  %105 = fadd fast float %95, %102
  %106 = fadd fast float %99, %103
  %107 = call float @dx.op.unary.f32(i32 22, float %104)  ; Frc(value)
  %108 = call float @dx.op.unary.f32(i32 22, float %105)  ; Frc(value)
  %109 = call float @dx.op.unary.f32(i32 22, float %106)  ; Frc(value)
  %110 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %59, i32 %60, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = fcmp fast ogt float %111, -1.000000e+00
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %115 = select i1 %112, float %114, float 1.000000e+00
  %116 = fadd fast float %111, 1.000000e+00
  %117 = fmul fast float %115, %116
  %118 = uitofp i32 %59 to float
  %119 = uitofp i32 %60 to float
  %120 = uitofp i32 %61 to float
  %121 = fadd fast float %118, -5.000000e-01
  %122 = fadd fast float %121, %107
  %123 = fadd fast float %119, -5.000000e-01
  %124 = fadd fast float %123, %108
  %125 = fadd fast float %120, -5.000000e-01
  %126 = fadd fast float %125, %109
  %127 = fadd fast float %122, 5.000000e-01
  %128 = fadd fast float %124, 5.000000e-01
  %129 = fadd fast float %126, 5.000000e-01
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = fmul fast float %131, %127
  %135 = fmul fast float %132, %128
  %136 = fmul fast float %133, %129
  %137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.i32 %137, 0
  %139 = uitofp i32 %138 to float
  %140 = fmul fast float %139, %136
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %144 = fmul fast float %140, %143
  %145 = call float @dx.op.unary.f32(i32 21, float %144)  ; Exp(value)
  %146 = fmul fast float %145, %142
  %147 = fsub fast float 4.000000e+00, %142
  %148 = fadd fast float %147, %146
  %149 = call float @dx.op.binary.f32(i32 36, float %148, float %117)  ; FMin(a,b)
  %150 = fmul fast float %134, 2.000000e+00
  %151 = fmul fast float %135, 2.000000e+00
  %152 = fsub fast float 1.000000e+00, %150
  %153 = fsub fast float 1.000000e+00, %151
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = fmul fast float %155, %152
  %159 = fmul fast float %156, %152
  %160 = fmul fast float %157, %152
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = fmul fast float %162, %153
  %166 = fmul fast float %163, %153
  %167 = fmul fast float %164, %153
  %168 = fadd fast float %165, %158
  %169 = fadd fast float %166, %159
  %170 = fadd fast float %167, %160
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %174 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %175 = fadd fast float %168, %172
  %176 = fadd fast float %169, %173
  %177 = fadd fast float %170, %174
  %178 = fmul fast float %175, %149
  %179 = fmul fast float %176, %149
  %180 = fmul fast float %177, %149
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %185 = fadd fast float %178, %182
  %186 = fadd fast float %179, %183
  %187 = fadd fast float %180, %184
  %188 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %178, float %179, float %180)  ; Dot3(ax,ay,az,bx,by,bz)
  %189 = call float @dx.op.unary.f32(i32 25, float %188)  ; Rsqrt(value)
  %190 = fmul fast float %178, %189
  %191 = fmul fast float %179, %189
  %192 = fmul fast float %180, %189
  %193 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %194 = fmul fast float %193, 0x3FE62E4300000000
  %195 = fmul fast float %194, %194
  %196 = select i1 %70, float 0.000000e+00, float 1.000000e+00
  %197 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %34
  store float %196, float addrspace(3)* %197, align 4, !tbaa !42, !noalias !46
  %198 = fmul fast float %194, %196
  %199 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %34
  store float %198, float addrspace(3)* %199, align 4, !tbaa !42, !noalias !46
  %200 = fmul fast float %195, %196
  %201 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %34
  store float %200, float addrspace(3)* %201, align 4, !tbaa !42, !noalias !46
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %202 = xor i32 %34, 4
  %203 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %202
  %204 = load float, float addrspace(3)* %203, align 4, !tbaa !42, !noalias !46
  %205 = fadd fast float %204, %196
  %206 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %202
  %207 = load float, float addrspace(3)* %206, align 4, !tbaa !42, !noalias !46
  %208 = fadd fast float %207, %194
  %209 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %202
  %210 = load float, float addrspace(3)* %209, align 4, !tbaa !42, !noalias !46
  %211 = fadd fast float %210, %195
  store float %205, float addrspace(3)* %197, align 4, !tbaa !42, !noalias !46
  store float %208, float addrspace(3)* %199, align 4, !tbaa !42, !noalias !46
  store float %211, float addrspace(3)* %201, align 4, !tbaa !42, !noalias !46
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %212 = xor i32 %34, 16
  %213 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %212
  %214 = load float, float addrspace(3)* %213, align 4, !tbaa !42, !noalias !46
  %215 = fadd fast float %214, %205
  %216 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %212
  %217 = load float, float addrspace(3)* %216, align 4, !tbaa !42, !noalias !46
  %218 = fadd fast float %217, %208
  %219 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %212
  %220 = load float, float addrspace(3)* %219, align 4, !tbaa !42, !noalias !46
  %221 = fadd fast float %220, %211
  store float %215, float addrspace(3)* %197, align 4, !tbaa !42, !noalias !46
  store float %218, float addrspace(3)* %199, align 4, !tbaa !42, !noalias !46
  store float %221, float addrspace(3)* %201, align 4, !tbaa !42, !noalias !46
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %222 = xor i32 %34, 1
  %223 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %222
  %224 = load float, float addrspace(3)* %223, align 4, !tbaa !42, !noalias !46
  %225 = fadd fast float %224, %215
  %226 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %222
  %227 = load float, float addrspace(3)* %226, align 4, !tbaa !42, !noalias !46
  %228 = fadd fast float %227, %218
  %229 = fdiv fast float %228, %225
  %230 = and i32 %59, 1
  %231 = and i32 %230, %60
  %232 = and i32 %231, %61
  %233 = icmp ne i32 %232, 0
  %234 = and i1 %233, %71
  br i1 %234, label %235, label %243, !dx.controlflow.hints !50

; <label>:235                                     ; preds = %0
  %236 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %222
  %237 = load float, float addrspace(3)* %236, align 4, !tbaa !42, !noalias !46
  %238 = fadd fast float %237, %221
  %239 = fdiv fast float %238, %225
  %240 = lshr i32 %59, 1
  %241 = lshr i32 %60, 1
  %242 = lshr i32 %61, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %240, i32 %241, i32 %242, float %229, float %239, float %229, float %229, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %243

; <label>:243                                     ; preds = %235, %0
  br i1 %70, label %245, label %244, !dx.controlflow.hints !51

; <label>:244                                     ; preds = %243
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %59, i32 %60, i32 %61, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %245

; <label>:245                                     ; preds = %244, %243
  store float %196, float addrspace(3)* %197, align 4, !tbaa !42, !noalias !46
  store float 0.000000e+00, float addrspace(3)* %199, align 4, !tbaa !42, !noalias !46
  store float 0.000000e+00, float addrspace(3)* %201, align 4, !tbaa !42, !noalias !46
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %246 = load float, float addrspace(3)* %203, align 4, !tbaa !42, !noalias !46
  %247 = fadd fast float %246, %196
  %248 = load float, float addrspace(3)* %206, align 4, !tbaa !42, !noalias !46
  %249 = load float, float addrspace(3)* %209, align 4, !tbaa !42, !noalias !46
  store float %247, float addrspace(3)* %197, align 4, !tbaa !42, !noalias !46
  store float %248, float addrspace(3)* %199, align 4, !tbaa !42, !noalias !46
  store float %249, float addrspace(3)* %201, align 4, !tbaa !42, !noalias !46
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %250 = load float, float addrspace(3)* %213, align 4, !tbaa !42, !noalias !46
  %251 = fadd fast float %250, %247
  %252 = load float, float addrspace(3)* %216, align 4, !tbaa !42, !noalias !46
  %253 = fadd fast float %252, %248
  %254 = load float, float addrspace(3)* %219, align 4, !tbaa !42, !noalias !46
  %255 = fadd fast float %254, %249
  store float %251, float addrspace(3)* %197, align 4, !tbaa !42, !noalias !46
  store float %253, float addrspace(3)* %199, align 4, !tbaa !42, !noalias !46
  store float %255, float addrspace(3)* %201, align 4, !tbaa !42, !noalias !46
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %256 = load float, float addrspace(3)* %223, align 4, !tbaa !42, !noalias !46
  %257 = fadd fast float %256, %251
  %258 = load float, float addrspace(3)* %226, align 4, !tbaa !42, !noalias !46
  %259 = fadd fast float %258, %253
  %260 = fdiv fast float %259, %257
  br i1 %234, label %261, label %269, !dx.controlflow.hints !52

; <label>:261                                     ; preds = %245
  %262 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %222
  %263 = load float, float addrspace(3)* %262, align 4, !tbaa !42, !noalias !46
  %264 = fadd fast float %263, %255
  %265 = fdiv fast float %264, %257
  %266 = lshr i32 %59, 1
  %267 = lshr i32 %60, 1
  %268 = lshr i32 %61, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %266, i32 %267, i32 %268, float %260, float %265, float %260, float %260, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %269

; <label>:269                                     ; preds = %261, %245
  br i1 %70, label %271, label %270, !dx.controlflow.hints !53

; <label>:270                                     ; preds = %269
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %59, i32 %60, i32 %61, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %271

; <label>:271                                     ; preds = %270, %269
  %272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.f32 %272, 0
  %274 = extractvalue %dx.types.CBufRet.f32 %272, 1
  %275 = fsub fast float %187, %273
  %276 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %275)  ; FMax(a,b)
  %277 = fmul fast float %276, 0x3FF7154760000000
  %278 = fmul fast float %277, %274
  %279 = call float @dx.op.unary.f32(i32 21, float %278)  ; Exp(value)
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 0
  %282 = extractvalue %dx.types.CBufRet.f32 %280, 1
  %283 = extractvalue %dx.types.CBufRet.f32 %280, 2
  %284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.f32 %284, 1
  %286 = fmul fast float %285, %279
  %287 = fmul fast float %286, %281
  %288 = fmul fast float %286, %282
  %289 = fmul fast float %286, %283
  %290 = fcmp fast ogt float %286, 0.000000e+00
  br i1 %290, label %291, label %1803, !dx.controlflow.hints !54

; <label>:291                                     ; preds = %271
  %292 = extractvalue %dx.types.CBufRet.f32 %284, 2
  %293 = fmul fast float %292, %286
  %294 = fdiv fast float 1.000000e+00, %286
  %295 = fmul fast float %294, %287
  %296 = fmul fast float %294, %288
  %297 = fmul fast float %294, %289
  %298 = fmul fast float %293, %294
  %299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.i32 %299, 2
  %301 = extractvalue %dx.types.CBufRet.i32 %299, 3
  %302 = call i32 @dx.op.tertiary.i32(i32 49, i32 %53, i32 %300, i32 %51)  ; UMad(a,b,c)
  %303 = call i32 @dx.op.tertiary.i32(i32 49, i32 %55, i32 %301, i32 %302)  ; UMad(a,b,c)
  %304 = fadd fast float %118, 1.000000e+00
  %305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.f32 %305, 0
  %307 = extractvalue %dx.types.CBufRet.f32 %305, 1
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 0
  %310 = extractvalue %dx.types.CBufRet.f32 %308, 1
  %311 = fmul fast float %310, %126
  %312 = call float @dx.op.unary.f32(i32 21, float %311)  ; Exp(value)
  %313 = fmul fast float %312, %309
  %314 = fsub fast float 4.000000e+00, %309
  %315 = fadd fast float %314, %313
  %316 = fmul fast float %304, 2.000000e+00
  %317 = fmul fast float %316, %306
  %318 = fmul fast float %119, 2.000000e+00
  %319 = fmul fast float %318, %307
  %320 = fsub fast float 1.000000e+00, %317
  %321 = fsub fast float 1.000000e+00, %319
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 0
  %324 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %325 = extractvalue %dx.types.CBufRet.f32 %322, 2
  %326 = fmul fast float %323, %320
  %327 = fmul fast float %324, %320
  %328 = fmul fast float %325, %320
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 0
  %331 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %332 = extractvalue %dx.types.CBufRet.f32 %329, 2
  %333 = fmul fast float %330, %321
  %334 = fmul fast float %331, %321
  %335 = fmul fast float %332, %321
  %336 = fadd fast float %333, %326
  %337 = fadd fast float %334, %327
  %338 = fadd fast float %335, %328
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 0
  %341 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %342 = extractvalue %dx.types.CBufRet.f32 %339, 2
  %343 = fadd fast float %336, %340
  %344 = fadd fast float %337, %341
  %345 = fadd fast float %338, %342
  %346 = fadd fast float %119, 1.000000e+00
  %347 = fmul fast float %118, 2.000000e+00
  %348 = fmul fast float %347, %306
  %349 = fmul fast float %346, 2.000000e+00
  %350 = fmul fast float %349, %307
  %351 = fsub fast float 1.000000e+00, %348
  %352 = fsub fast float 1.000000e+00, %350
  %353 = fmul fast float %323, %351
  %354 = fmul fast float %324, %351
  %355 = fmul fast float %325, %351
  %356 = fmul fast float %330, %352
  %357 = fmul fast float %331, %352
  %358 = fmul fast float %332, %352
  %359 = fadd fast float %356, %353
  %360 = fadd fast float %357, %354
  %361 = fadd fast float %358, %355
  %362 = fadd fast float %359, %340
  %363 = fadd fast float %360, %341
  %364 = fadd fast float %361, %342
  %365 = fmul fast float %362, %315
  %366 = fmul fast float %363, %315
  %367 = fmul fast float %364, %315
  %368 = fadd fast float %362, %343
  %369 = fmul fast float %315, %368
  %370 = fadd fast float %363, %344
  %371 = fmul fast float %315, %370
  %372 = fadd fast float %364, %345
  %373 = fmul fast float %315, %372
  %374 = fmul fast float %369, 5.000000e-01
  %375 = fmul fast float %371, 5.000000e-01
  %376 = fmul fast float %373, 5.000000e-01
  %377 = fsub fast float %374, %365
  %378 = fsub fast float %375, %366
  %379 = fsub fast float %376, %367
  %380 = call float @dx.op.dot3.f32(i32 55, float %377, float %378, float %379, float %377, float %378, float %379)  ; Dot3(ax,ay,az,bx,by,bz)
  %381 = call float @dx.op.unary.f32(i32 25, float %380)  ; Rsqrt(value)
  %382 = fmul fast float %381, %380
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 0
  %385 = extractvalue %dx.types.CBufRet.f32 %383, 1
  %386 = extractvalue %dx.types.CBufRet.f32 %383, 2
  %387 = fsub fast float %187, %386
  %388 = fmul fast float %310, %120
  %389 = call float @dx.op.unary.f32(i32 21, float %388)  ; Exp(value)
  %390 = fmul fast float %389, %309
  %391 = fadd fast float %314, %390
  %392 = fmul fast float %127, 2.000000e+00
  %393 = fmul fast float %392, %306
  %394 = fmul fast float %128, 2.000000e+00
  %395 = fmul fast float %394, %307
  %396 = fsub fast float 1.000000e+00, %393
  %397 = fsub fast float 1.000000e+00, %395
  %398 = fmul fast float %323, %396
  %399 = fmul fast float %324, %396
  %400 = fmul fast float %325, %396
  %401 = fmul fast float %330, %397
  %402 = fmul fast float %331, %397
  %403 = fmul fast float %332, %397
  %404 = fadd fast float %401, %398
  %405 = fadd fast float %402, %399
  %406 = fadd fast float %403, %400
  %407 = fadd fast float %404, %340
  %408 = fadd fast float %405, %341
  %409 = fadd fast float %406, %342
  %410 = fmul fast float %407, %391
  %411 = fmul fast float %408, %391
  %412 = fmul fast float %409, %391
  %413 = fadd fast float %120, 1.000000e+00
  %414 = fmul fast float %310, %413
  %415 = call float @dx.op.unary.f32(i32 21, float %414)  ; Exp(value)
  %416 = fsub fast float %415, %389
  %417 = fmul fast float %309, %416
  %418 = fmul fast float %407, %417
  %419 = fsub fast float %415, %389
  %420 = fmul fast float %309, %419
  %421 = fmul fast float %408, %420
  %422 = fsub fast float %415, %389
  %423 = fmul fast float %309, %422
  %424 = fmul fast float %409, %423
  %425 = call float @dx.op.dot3.f32(i32 55, float %418, float %421, float %424, float %418, float %421, float %424)  ; Dot3(ax,ay,az,bx,by,bz)
  %426 = call float @dx.op.unary.f32(i32 25, float %425)  ; Rsqrt(value)
  %427 = fmul fast float %426, %425
  %428 = fmul fast float %418, %426
  %429 = fmul fast float %421, %426
  %430 = fmul fast float %424, %426
  %431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %432 = extractvalue %dx.types.CBufRet.f32 %431, 3
  %433 = fcmp fast oeq float %432, 0.000000e+00
  br i1 %433, label %1173, label %434, !dx.controlflow.hints !55

; <label>:434                                     ; preds = %291
  %435 = fsub fast float %186, %385
  %436 = fsub fast float %185, %384
  %437 = extractvalue %dx.types.CBufRet.f32 %431, 0
  %438 = extractvalue %dx.types.CBufRet.f32 %431, 1
  %439 = extractvalue %dx.types.CBufRet.f32 %431, 2
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 0
  %442 = extractvalue %dx.types.CBufRet.f32 %440, 1
  %443 = extractvalue %dx.types.CBufRet.f32 %440, 2
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 2
  %446 = fmul fast float %445, %437
  %447 = fmul fast float %445, %438
  %448 = fmul fast float %445, %439
  %449 = fsub fast float %436, %446
  %450 = fsub fast float %435, %447
  %451 = fsub fast float %387, %448
  %452 = fcmp fast olt float %432, 0.000000e+00
  br i1 %452, label %984, label %453, !dx.controlflow.hints !56

; <label>:453                                     ; preds = %434
  %454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.f32 %454, 0
  %456 = extractvalue %dx.types.CBufRet.f32 %454, 1
  %457 = extractvalue %dx.types.CBufRet.f32 %454, 2
  %458 = extractvalue %dx.types.CBufRet.f32 %454, 3
  %459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %460 = extractvalue %dx.types.CBufRet.f32 %459, 0
  %461 = extractvalue %dx.types.CBufRet.f32 %459, 1
  %462 = extractvalue %dx.types.CBufRet.f32 %459, 2
  %463 = extractvalue %dx.types.CBufRet.f32 %459, 3
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 0
  %466 = extractvalue %dx.types.CBufRet.f32 %464, 1
  %467 = extractvalue %dx.types.CBufRet.f32 %464, 2
  %468 = extractvalue %dx.types.CBufRet.f32 %464, 3
  %469 = fmul fast float %455, %449
  %470 = call float @dx.op.tertiary.f32(i32 46, float %450, float %456, float %469)  ; FMad(a,b,c)
  %471 = call float @dx.op.tertiary.f32(i32 46, float %451, float %457, float %470)  ; FMad(a,b,c)
  %472 = fadd fast float %471, %458
  %473 = fmul fast float %460, %449
  %474 = call float @dx.op.tertiary.f32(i32 46, float %450, float %461, float %473)  ; FMad(a,b,c)
  %475 = call float @dx.op.tertiary.f32(i32 46, float %451, float %462, float %474)  ; FMad(a,b,c)
  %476 = fadd fast float %475, %463
  %477 = fmul fast float %465, %449
  %478 = call float @dx.op.tertiary.f32(i32 46, float %450, float %466, float %477)  ; FMad(a,b,c)
  %479 = call float @dx.op.tertiary.f32(i32 46, float %451, float %467, float %478)  ; FMad(a,b,c)
  %480 = fadd fast float %479, %468
  %481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.f32 %481, 0
  %483 = extractvalue %dx.types.CBufRet.f32 %481, 1
  %484 = extractvalue %dx.types.CBufRet.f32 %481, 3
  %485 = fmul fast float %484, %472
  %486 = fmul fast float %484, %476
  %487 = fadd fast float %485, %482
  %488 = fadd fast float %486, %483
  %489 = extractvalue %dx.types.CBufRet.f32 %481, 2
  %490 = fcmp fast olt float %489, 0.000000e+00
  %491 = fsub fast float -0.000000e+00, %489
  %492 = select i1 %490, float %491, float %489
  %493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %494 = extractvalue %dx.types.CBufRet.f32 %493, 1
  %495 = fadd fast float %492, %494
  %496 = fcmp fast ogt float %495, 0.000000e+00
  br i1 %496, label %497, label %528, !dx.controlflow.hints !57

; <label>:497                                     ; preds = %453
  %498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %499 = extractvalue %dx.types.CBufRet.f32 %498, 1
  %500 = fsub fast float %499, %480
  %501 = extractvalue %dx.types.CBufRet.f32 %498, 2
  %502 = fmul fast float %500, %501
  %503 = fsub fast float 1.000000e+00, %502
  %504 = call float @dx.op.unary.f32(i32 7, float %503)  ; Saturate(value)
  %505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.f32 %505, 0
  %507 = extractvalue %dx.types.CBufRet.f32 %505, 1
  %508 = fsub fast float %487, %506
  %509 = fsub fast float %488, %507
  %510 = fcmp fast olt float %508, 0.000000e+00
  %511 = fcmp fast olt float %509, 0.000000e+00
  %512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %513 = extractvalue %dx.types.CBufRet.f32 %512, 0
  %514 = extractvalue %dx.types.CBufRet.f32 %512, 1
  %515 = extractvalue %dx.types.CBufRet.f32 %512, 2
  %516 = extractvalue %dx.types.CBufRet.f32 %512, 3
  %517 = select i1 %510, float %513, float %515
  %518 = select i1 %511, float %514, float %516
  %519 = fmul fast float %517, %508
  %520 = fmul fast float %518, %509
  %521 = call float @dx.op.unary.f32(i32 6, float %519)  ; FAbs(value)
  %522 = call float @dx.op.unary.f32(i32 6, float %520)  ; FAbs(value)
  %523 = extractvalue %dx.types.CBufRet.f32 %444, 0
  %524 = call float @dx.op.binary.f32(i32 35, float %521, float %522)  ; FMax(a,b)
  %525 = fsub fast float %523, %524
  %526 = call float @dx.op.unary.f32(i32 7, float %525)  ; Saturate(value)
  %527 = fmul fast float %526, %504
  br label %528

; <label>:528                                     ; preds = %497, %453
  %529 = phi float [ %527, %497 ], [ 0.000000e+00, %453 ]
  %530 = call float @dx.op.binary.f32(i32 35, float %529, float 0.000000e+00)  ; FMax(a,b)
  %531 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %530)  ; FMax(a,b)
  %532 = fcmp fast olt float %531, 1.000000e+00
  br i1 %532, label %533, label %931, !dx.controlflow.hints !58

; <label>:533                                     ; preds = %528
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 0
  %536 = fcmp fast une float %535, 0.000000e+00
  br i1 %536, label %537, label %931, !dx.controlflow.hints !59

; <label>:537                                     ; preds = %533
  %538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %539 = extractvalue %dx.types.CBufRet.f32 %538, 0
  %540 = extractvalue %dx.types.CBufRet.f32 %538, 1
  %541 = extractvalue %dx.types.CBufRet.f32 %538, 2
  %542 = extractvalue %dx.types.CBufRet.f32 %538, 3
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 0
  %545 = extractvalue %dx.types.CBufRet.f32 %543, 1
  %546 = extractvalue %dx.types.CBufRet.f32 %543, 2
  %547 = extractvalue %dx.types.CBufRet.f32 %543, 3
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 0
  %550 = extractvalue %dx.types.CBufRet.f32 %548, 1
  %551 = extractvalue %dx.types.CBufRet.f32 %548, 2
  %552 = extractvalue %dx.types.CBufRet.f32 %548, 3
  %553 = fmul fast float %539, %449
  %554 = call float @dx.op.tertiary.f32(i32 46, float %450, float %540, float %553)  ; FMad(a,b,c)
  %555 = call float @dx.op.tertiary.f32(i32 46, float %451, float %541, float %554)  ; FMad(a,b,c)
  %556 = fadd fast float %555, %542
  %557 = fmul fast float %544, %449
  %558 = call float @dx.op.tertiary.f32(i32 46, float %450, float %545, float %557)  ; FMad(a,b,c)
  %559 = call float @dx.op.tertiary.f32(i32 46, float %451, float %546, float %558)  ; FMad(a,b,c)
  %560 = fadd fast float %559, %547
  %561 = fmul fast float %549, %449
  %562 = call float @dx.op.tertiary.f32(i32 46, float %450, float %550, float %561)  ; FMad(a,b,c)
  %563 = call float @dx.op.tertiary.f32(i32 46, float %451, float %551, float %562)  ; FMad(a,b,c)
  %564 = fadd fast float %563, %552
  %565 = fcmp fast oge float %556, 1.000000e+00
  %566 = fcmp fast oge float %560, 1.000000e+00
  %567 = or i1 %565, %566
  %568 = fcmp fast olt float %556, 0.000000e+00
  %569 = fcmp fast olt float %560, 0.000000e+00
  %570 = or i1 %568, %569
  %571 = or i1 %567, %570
  br i1 %571, label %931, label %572, !dx.controlflow.hints !60

; <label>:572                                     ; preds = %537
  %573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %574 = extractvalue %dx.types.CBufRet.f32 %573, 0
  %575 = extractvalue %dx.types.CBufRet.f32 %573, 1
  %576 = extractvalue %dx.types.CBufRet.f32 %573, 2
  %577 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.i32 %577, 2
  %579 = uitofp i32 %578 to float
  %580 = extractvalue %dx.types.CBufRet.i32 %577, 3
  %581 = uitofp i32 %580 to float
  %582 = extractvalue %dx.types.CBufRet.f32 %573, 3
  %583 = fmul fast float %582, 2.000000e+00
  %584 = fsub fast float %556, %574
  %585 = fsub fast float %560, %575
  %586 = fmul fast float %583, %584
  %587 = fmul fast float %583, %585
  %588 = fdiv fast float 1.000000e+00, %439
  %589 = fmul fast float %587, %588
  %590 = call float @dx.op.unary.f32(i32 6, float %589)  ; FAbs(value)
  %591 = fmul fast float %576, %451
  %592 = fmul fast float %591, %583
  %593 = call float @dx.op.unary.f32(i32 6, float %592)  ; FAbs(value)
  %594 = call float @dx.op.unary.f32(i32 6, float %586)  ; FAbs(value)
  %595 = call float @dx.op.binary.f32(i32 35, float %593, float %590)  ; FMax(a,b)
  %596 = call float @dx.op.binary.f32(i32 35, float %594, float %595)  ; FMax(a,b)
  %597 = fmul fast float %596, 2.000000e+00
  %598 = call float @dx.op.unary.f32(i32 23, float %597)  ; Log(value)
  %599 = call float @dx.op.binary.f32(i32 35, float %598, float %579)  ; FMax(a,b)
  %600 = call float @dx.op.unary.f32(i32 22, float %599)  ; Frc(value)
  %601 = fadd fast float %600, 0xBFEA666660000000
  %602 = fmul fast float %601, 8.000000e+00
  %603 = call float @dx.op.unary.f32(i32 7, float %602)  ; Saturate(value)
  %604 = call float @dx.op.unary.f32(i32 27, float %599)  ; Round_ni(value)
  %605 = fadd fast float %604, %603
  %606 = call float @dx.op.binary.f32(i32 36, float %605, float %581)  ; FMin(a,b)
  %607 = call float @dx.op.unary.f32(i32 27, float %606)  ; Round_ni(value)
  %608 = fsub fast float -0.000000e+00, %607
  %609 = call float @dx.op.unary.f32(i32 21, float %608)  ; Exp(value)
  %610 = fmul fast float %609, %583
  %611 = fmul fast float %610, %556
  %612 = fmul fast float %610, %560
  %613 = fmul fast float %611, 2.500000e-01
  %614 = fmul fast float %612, 2.500000e-01
  %615 = fadd fast float %613, 5.000000e-01
  %616 = fadd fast float %614, 5.000000e-01
  %617 = fsub fast float %581, %579
  %618 = fptoui float %617 to i32
  %619 = add i32 %618, 320
  %620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 %619)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.f32 %620, 0
  %622 = extractvalue %dx.types.CBufRet.f32 %620, 1
  %623 = fcmp fast une float %606, %581
  %624 = fsub fast float %556, %621
  %625 = fsub fast float %560, %622
  %626 = call float @dx.op.unary.f32(i32 6, float %624)  ; FAbs(value)
  %627 = call float @dx.op.unary.f32(i32 6, float %625)  ; FAbs(value)
  %628 = fmul fast float %626, %610
  %629 = fmul fast float %627, %610
  %630 = fcmp fast olt float %628, 1.000000e+00
  %631 = fcmp fast olt float %629, 1.000000e+00
  %632 = and i1 %630, %631
  %633 = or i1 %623, %632
  br i1 %633, label %634, label %931, !dx.controlflow.hints !61

; <label>:634                                     ; preds = %572
  %635 = fmul fast float %612, 5.000000e-01
  %636 = fmul fast float %611, 5.000000e-01
  %637 = fadd fast float %635, 5.000000e-01
  %638 = fadd fast float %636, 5.000000e-01
  %639 = sitofp i32 %578 to float
  %640 = fsub fast float %606, %639
  %641 = call float @dx.op.unary.f32(i32 27, float %640)  ; Round_ni(value)
  %642 = call float @dx.op.unary.f32(i32 22, float %606)  ; Frc(value)
  %643 = call float @dx.op.unary.f32(i32 22, float %638)  ; Frc(value)
  %644 = call float @dx.op.unary.f32(i32 22, float %637)  ; Frc(value)
  %645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %643, float %644, float %641, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %646 = extractvalue %dx.types.ResRet.f32 %645, 0
  %647 = extractvalue %dx.types.ResRet.f32 %645, 1
  %648 = extractvalue %dx.types.ResRet.f32 %645, 2
  %649 = extractvalue %dx.types.ResRet.f32 %645, 3
  %650 = fcmp fast ogt float %642, 0.000000e+00
  br i1 %650, label %651, label %672, !dx.controlflow.hints !62

; <label>:651                                     ; preds = %634
  %652 = fadd fast float %641, 1.000000e+00
  %653 = call float @dx.op.unary.f32(i32 22, float %615)  ; Frc(value)
  %654 = call float @dx.op.unary.f32(i32 22, float %616)  ; Frc(value)
  %655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %653, float %654, float %652, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %656 = extractvalue %dx.types.ResRet.f32 %655, 0
  %657 = extractvalue %dx.types.ResRet.f32 %655, 1
  %658 = extractvalue %dx.types.ResRet.f32 %655, 2
  %659 = extractvalue %dx.types.ResRet.f32 %655, 3
  %660 = fsub fast float %656, %646
  %661 = fsub fast float %657, %647
  %662 = fsub fast float %658, %648
  %663 = fsub fast float %659, %649
  %664 = fmul fast float %660, %642
  %665 = fmul fast float %661, %642
  %666 = fmul fast float %662, %642
  %667 = fmul fast float %663, %642
  %668 = fadd fast float %664, %646
  %669 = fadd fast float %665, %647
  %670 = fadd fast float %666, %648
  %671 = fadd fast float %667, %649
  br label %672

; <label>:672                                     ; preds = %651, %634
  %673 = phi float [ %668, %651 ], [ %646, %634 ]
  %674 = phi float [ %669, %651 ], [ %647, %634 ]
  %675 = phi float [ %670, %651 ], [ %648, %634 ]
  %676 = phi float [ %671, %651 ], [ %649, %634 ]
  %677 = fadd fast float %673, -5.000000e-01
  %678 = fadd fast float %675, -5.000000e-01
  %679 = fmul fast float %677, 0xBFD5555560000000
  %680 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %678, float %679)  ; FMad(a,b,c)
  %681 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %674, float 0.000000e+00)  ; FMad(a,b,c)
  %682 = fadd fast float %681, %676
  %683 = fmul fast float %677, -7.500000e-01
  %684 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %678, float %683)  ; FMad(a,b,c)
  %685 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %674, float 0.000000e+00)  ; FMad(a,b,c)
  %686 = fadd fast float %685, %676
  %687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %688 = extractvalue %dx.types.CBufRet.f32 %687, 0
  %689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %690 = extractvalue %dx.types.CBufRet.f32 %689, 0
  %691 = extractvalue %dx.types.CBufRet.f32 %689, 1
  %692 = extractvalue %dx.types.CBufRet.f32 %689, 2
  %693 = extractvalue %dx.types.CBufRet.f32 %689, 3
  %694 = fsub fast float %690, %680
  %695 = fsub fast float %691, %682
  %696 = fsub fast float %692, %684
  %697 = fsub fast float %693, %686
  %698 = fmul fast float %694, %688
  %699 = fmul fast float %695, %688
  %700 = fmul fast float %696, %688
  %701 = fmul fast float %697, %688
  %702 = fadd fast float %698, %680
  %703 = fadd fast float %699, %682
  %704 = fadd fast float %700, %684
  %705 = fadd fast float %701, %686
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = and i32 %707, 536870911
  %709 = uitofp i32 %708 to float
  %710 = fmul fast float %709, %556
  %711 = fmul fast float %709, %560
  %712 = fptoui float %710 to i32
  %713 = fptoui float %711 to i32
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = and i32 %715, 31
  %717 = lshr i32 %712, %716
  %718 = lshr i32 %713, %716
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = and i32 %720, 31
  %722 = shl i32 1, %721
  %723 = call i32 @dx.op.binary.i32(i32 40, i32 %722, i32 4)  ; UMin(a,b)
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = extractvalue %dx.types.ResRet.i32 %724, 1
  %727 = icmp eq i32 %723, 0
  br i1 %727, label %769, label %728

; <label>:728                                     ; preds = %672
  br label %729

; <label>:729                                     ; preds = %757, %728
  %730 = phi i32 [ %760, %757 ], [ 0, %728 ]
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = lshr i32 %732, 16
  %734 = and i32 %733, 31
  %735 = shl i32 %718, %734
  %736 = add i32 %735, %717
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = and i32 %738, 31
  %740 = shl i32 %736, %739
  %741 = add i32 %740, %730
  %742 = shl i32 %741, 2
  %743 = add i32 %742, 32
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = icmp slt i32 %745, 0
  %747 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 %730
  %748 = getelementptr [12 x float], [12 x float]* %36, i32 0, i32 %730
  %749 = bitcast float* %747 to i32*
  %750 = bitcast float* %748 to i32*
  br i1 %746, label %751, label %757, !dx.controlflow.hints !63

; <label>:751                                     ; preds = %729
  %752 = and i32 %745, 1073741823
  %753 = add nuw nsw i32 %752, 20
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = extractvalue %dx.types.ResRet.i32 %754, 1
  br label %757

; <label>:757                                     ; preds = %751, %729
  %758 = phi i32 [ %755, %751 ], [ %725, %729 ]
  %759 = phi i32 [ %756, %751 ], [ %726, %729 ]
  store i32 %758, i32* %749, align 4
  store i32 %759, i32* %750, align 4
  %760 = add nuw i32 %730, 1
  %761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %762 = extractvalue %dx.types.CBufRet.i32 %761, 2
  %763 = icmp eq i32 %762, 0
  %764 = icmp ugt i32 %745, -1073741825
  %765 = and i1 %764, %763
  %766 = icmp ult i32 %760, %723
  %767 = and i1 %765, %766
  br i1 %767, label %729, label %768, !dx.controlflow.hints !64

; <label>:768                                     ; preds = %757
  br label %769

; <label>:769                                     ; preds = %768, %672
  %770 = phi i32 [ 0, %672 ], [ %760, %768 ]
  %771 = extractvalue %dx.types.CBufRet.f32 %534, 2
  %772 = fptoui float %771 to i32
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %825, label %774

; <label>:774                                     ; preds = %769
  br label %775

; <label>:775                                     ; preds = %820, %774
  %776 = phi i32 [ %821, %820 ], [ %770, %774 ]
  %777 = phi i32 [ %822, %820 ], [ 0, %774 ]
  %778 = lshr i32 %777, 2
  %779 = and i32 %777, 3
  %780 = add nuw nsw i32 %778, 83
  %781 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 %780)  ; CBufferLoadLegacy(handle,regIndex)
  %782 = extractvalue %dx.types.CBufRet.i32 %781, 0
  %783 = extractvalue %dx.types.CBufRet.i32 %781, 1
  %784 = extractvalue %dx.types.CBufRet.i32 %781, 2
  %785 = extractvalue %dx.types.CBufRet.i32 %781, 3
  %786 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i32 0, i32 0
  store i32 %782, i32* %786, align 4
  %787 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i32 0, i32 1
  store i32 %783, i32* %787, align 4
  %788 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i32 0, i32 2
  store i32 %784, i32* %788, align 4
  %789 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i32 0, i32 3
  store i32 %785, i32* %789, align 4
  %790 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i32 0, i32 %779
  %791 = load i32, i32* %790, align 4, !tbaa !65, !noalias !67
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = lshr i32 %793, 16
  %795 = and i32 %794, 31
  %796 = shl i32 %718, %795
  %797 = add i32 %796, %717
  %798 = shl i32 %797, 2
  %799 = add i32 %798, %791
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %799, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %820, label %803, !dx.controlflow.hints !74

; <label>:803                                     ; preds = %775
  %804 = icmp slt i32 %801, 0
  %805 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 %776
  %806 = getelementptr [12 x float], [12 x float]* %36, i32 0, i32 %776
  %807 = bitcast float* %805 to i32*
  %808 = bitcast float* %806 to i32*
  br i1 %804, label %809, label %816, !dx.controlflow.hints !75

; <label>:809                                     ; preds = %803
  %810 = and i32 %801, 1073741823
  %811 = add i32 %791, 20
  %812 = add i32 %811, %810
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = extractvalue %dx.types.ResRet.i32 %813, 1
  br label %816

; <label>:816                                     ; preds = %809, %803
  %817 = phi i32 [ %814, %809 ], [ %725, %803 ]
  %818 = phi i32 [ %815, %809 ], [ %726, %803 ]
  store i32 %817, i32* %807, align 4
  store i32 %818, i32* %808, align 4
  %819 = add i32 %776, 1
  br label %820

; <label>:820                                     ; preds = %816, %775
  %821 = phi i32 [ %776, %775 ], [ %819, %816 ]
  %822 = add nuw i32 %777, 1
  %823 = icmp eq i32 %822, %772
  br i1 %823, label %824, label %775

; <label>:824                                     ; preds = %820
  br label %825

; <label>:825                                     ; preds = %824, %769
  %826 = phi i32 [ %770, %769 ], [ %821, %824 ]
  %827 = icmp eq i32 %826, 1
  %828 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 0
  %829 = getelementptr [12 x float], [12 x float]* %36, i32 0, i32 0
  br i1 %827, label %830, label %833, !dx.controlflow.hints !76

; <label>:830                                     ; preds = %825
  %831 = load float, float* %828, align 4
  %832 = load float, float* %829, align 4
  br label %860

; <label>:833                                     ; preds = %825
  %834 = load float, float* %828, align 4
  %835 = load float, float* %829, align 4
  %836 = fdiv fast float 1.000000e+00, %835
  %837 = fsub fast float %834, %836
  %838 = icmp ugt i32 %826, 1
  br i1 %838, label %839, label %855

; <label>:839                                     ; preds = %833
  br label %840

; <label>:840                                     ; preds = %840, %839
  %841 = phi float [ %850, %840 ], [ %837, %839 ]
  %842 = phi float [ %851, %840 ], [ %834, %839 ]
  %843 = phi i32 [ %852, %840 ], [ 1, %839 ]
  %844 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 %843
  %845 = load float, float* %844, align 4
  %846 = getelementptr [12 x float], [12 x float]* %36, i32 0, i32 %843
  %847 = load float, float* %846, align 4
  %848 = fdiv fast float 1.000000e+00, %847
  %849 = fsub fast float %845, %848
  %850 = call float @dx.op.binary.f32(i32 36, float %841, float %849)  ; FMin(a,b)
  %851 = call float @dx.op.binary.f32(i32 35, float %842, float %845)  ; FMax(a,b)
  %852 = add nuw i32 %843, 1
  %853 = icmp eq i32 %852, %826
  br i1 %853, label %854, label %840

; <label>:854                                     ; preds = %840
  br label %855

; <label>:855                                     ; preds = %854, %833
  %856 = phi float [ %837, %833 ], [ %850, %854 ]
  %857 = phi float [ %834, %833 ], [ %851, %854 ]
  %858 = fsub fast float %857, %856
  %859 = fdiv fast float 1.000000e+00, %858
  br label %860

; <label>:860                                     ; preds = %855, %830
  %861 = phi float [ %831, %830 ], [ %857, %855 ]
  %862 = phi float [ %832, %830 ], [ %859, %855 ]
  %863 = fadd fast float %564, %861
  %864 = fmul fast float %863, %862
  %865 = call float @dx.op.unary.f32(i32 7, float %864)  ; Saturate(value)
  %866 = fmul fast float %865, 2.000000e+00
  %867 = fsub fast float 1.000000e+00, %866
  %868 = fmul fast float %702, %702
  %869 = fsub fast float %703, %868
  %870 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %869)  ; FMax(a,b)
  %871 = fdiv fast float 1.000000e+00, %870
  %872 = fmul fast float %703, %702
  %873 = fsub fast float %704, %872
  %874 = fsub fast float %867, %702
  %875 = fmul fast float %867, %867
  %876 = fsub fast float %875, %703
  %877 = fmul fast float %871, %873
  %878 = fmul fast float %877, %874
  %879 = fsub fast float %876, %878
  %880 = fmul fast float %703, %703
  %881 = fsub fast float %705, %880
  %882 = fmul fast float %873, %873
  %883 = fmul fast float %882, %871
  %884 = fsub fast float %881, %883
  %885 = fdiv fast float %879, %884
  %886 = fmul fast float %885, %873
  %887 = fsub fast float %874, %886
  %888 = fmul fast float %887, %871
  %889 = fmul fast float %888, %702
  %890 = fsub fast float 1.000000e+00, %889
  %891 = fmul fast float %885, %703
  %892 = fsub fast float %890, %891
  %893 = fmul fast float %888, %888
  %894 = fmul fast float %885, 4.000000e+00
  %895 = fmul fast float %894, %892
  %896 = fsub fast float %893, %895
  %897 = call float @dx.op.unary.f32(i32 24, float %896)  ; Sqrt(value)
  %898 = fcmp fast oge float %888, 0.000000e+00
  %899 = fsub fast float -0.000000e+00, %897
  %900 = select i1 %898, float %899, float %897
  %901 = fsub fast float %900, %888
  %902 = fdiv fast float %901, %885
  %903 = fdiv fast float %892, %901
  %904 = fmul fast float %902, 5.000000e-01
  %905 = fmul fast float %903, 2.000000e+00
  %906 = select i1 %898, float %904, float %905
  %907 = select i1 %898, float %905, float %904
  %908 = call float @dx.op.binary.f32(i32 35, float %906, float %907)  ; FMax(a,b)
  %909 = call float @dx.op.binary.f32(i32 36, float %906, float %907)  ; FMin(a,b)
  %910 = fcmp fast ogt float %867, %908
  %911 = fsub fast float %867, %909
  %912 = fsub fast float %867, %908
  %913 = fsub fast float %908, %909
  %914 = select i1 %910, float %912, float %913
  %915 = fmul float %911, %914
  %916 = select i1 %910, float %909, float %867
  %917 = fcmp fast ogt float %867, %909
  %918 = fmul fast float %916, %908
  %919 = fadd fast float %916, %908
  %920 = fmul fast float %919, %702
  %921 = fadd fast float %918, %703
  %922 = fsub fast float %921, %920
  %923 = fdiv fast float %922, %915
  %924 = select i1 %917, float %923, float 0.000000e+00
  %925 = fsub fast float 1.000000e+00, %924
  %926 = select i1 %910, float %925, float %924
  %927 = call float @dx.op.unary.f32(i32 7, float %926)  ; Saturate(value)
  %928 = extractvalue %dx.types.CBufRet.f32 %687, 3
  %929 = fmul fast float %928, %927
  %930 = fsub fast float 1.000000e+00, %929
  br label %931

; <label>:931                                     ; preds = %860, %572, %537, %533, %528
  %932 = phi float [ 1.000000e+00, %528 ], [ %930, %860 ], [ 1.000000e+00, %537 ], [ 1.000000e+00, %572 ], [ 1.000000e+00, %533 ]
  %933 = fcmp fast ogt float %529, 0.000000e+00
  br i1 %933, label %934, label %940, !dx.controlflow.hints !77

; <label>:934                                     ; preds = %931
  %935 = fadd fast float %494, %480
  %936 = call float @dx.op.binary.f32(i32 35, float %935, float 0.000000e+00)  ; FMax(a,b)
  %937 = fadd fast float %936, 0x3F10000000000000
  %938 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %26, float %487, float %488, float undef, float undef, i32 0, i32 0, i32 undef, float %937)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %939 = extractvalue %dx.types.ResRet.f32 %938, 0
  br label %940

; <label>:940                                     ; preds = %934, %931
  %941 = phi float [ %939, %934 ], [ 1.000000e+00, %931 ]
  %942 = fsub fast float %941, %932
  %943 = fmul fast float %942, %529
  %944 = fadd fast float %943, %932
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 2
  %947 = fcmp fast ogt float %946, 0.000000e+00
  br i1 %947, label %948, label %984, !dx.controlflow.hints !78

; <label>:948                                     ; preds = %940
  %949 = fcmp fast ugt float %946, 0.000000e+00
  br i1 %949, label %950, label %981, !dx.controlflow.hints !79

; <label>:950                                     ; preds = %948
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 0
  %953 = extractvalue %dx.types.CBufRet.f32 %951, 1
  %954 = extractvalue %dx.types.CBufRet.f32 %951, 2
  %955 = extractvalue %dx.types.CBufRet.f32 %951, 3
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 0
  %958 = extractvalue %dx.types.CBufRet.f32 %956, 1
  %959 = extractvalue %dx.types.CBufRet.f32 %956, 2
  %960 = extractvalue %dx.types.CBufRet.f32 %956, 3
  %961 = extractvalue %dx.types.CBufRet.f32 %945, 0
  %962 = extractvalue %dx.types.CBufRet.f32 %945, 1
  %963 = fadd fast float %384, %449
  %964 = fadd fast float %385, %450
  %965 = fadd fast float %386, %451
  %966 = fmul fast float %963, %952
  %967 = call float @dx.op.tertiary.f32(i32 46, float %953, float %964, float %966)  ; FMad(a,b,c)
  %968 = call float @dx.op.tertiary.f32(i32 46, float %954, float %965, float %967)  ; FMad(a,b,c)
  %969 = fadd fast float %968, %955
  %970 = fmul fast float %963, %957
  %971 = call float @dx.op.tertiary.f32(i32 46, float %958, float %964, float %970)  ; FMad(a,b,c)
  %972 = call float @dx.op.tertiary.f32(i32 46, float %959, float %965, float %971)  ; FMad(a,b,c)
  %973 = fadd fast float %972, %960
  %974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %22, float %969, float %973, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %975 = extractvalue %dx.types.ResRet.f32 %974, 0
  %976 = fmul fast float %975, %962
  %977 = fadd fast float %976, %961
  %978 = call float @dx.op.unary.f32(i32 7, float %977)  ; Saturate(value)
  %979 = fmul fast float %978, %946
  %980 = fsub fast float 1.000000e+00, %979
  br label %981

; <label>:981                                     ; preds = %950, %948
  %982 = phi float [ %980, %950 ], [ 1.000000e+00, %948 ]
  %983 = fmul fast float %982, %944
  br label %984

; <label>:984                                     ; preds = %981, %940, %434
  %985 = phi float [ 1.000000e+00, %434 ], [ %983, %981 ], [ %944, %940 ]
  %986 = call float @dx.op.binary.f32(i32 36, float %985, float %985)  ; FMin(a,b)
  %987 = call float @dx.op.binary.f32(i32 36, float %985, float %986)  ; FMin(a,b)
  %988 = fcmp fast ogt float %987, 0.000000e+00
  br i1 %988, label %989, label %1144, !dx.controlflow.hints !80

; <label>:989                                     ; preds = %984
  %990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %991 = extractvalue %dx.types.CBufRet.f32 %990, 0
  %992 = extractvalue %dx.types.CBufRet.f32 %990, 1
  %993 = extractvalue %dx.types.CBufRet.f32 %990, 2
  %994 = extractvalue %dx.types.CBufRet.f32 %990, 3
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 0
  %997 = extractvalue %dx.types.CBufRet.f32 %995, 1
  %998 = extractvalue %dx.types.CBufRet.f32 %995, 2
  %999 = extractvalue %dx.types.CBufRet.f32 %995, 3
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.CBufRet.f32 %1000, 1
  %1003 = extractvalue %dx.types.CBufRet.f32 %1000, 2
  %1004 = extractvalue %dx.types.CBufRet.f32 %1000, 3
  %1005 = fmul fast float %991, %449
  %1006 = call float @dx.op.tertiary.f32(i32 46, float %450, float %992, float %1005)  ; FMad(a,b,c)
  %1007 = call float @dx.op.tertiary.f32(i32 46, float %451, float %993, float %1006)  ; FMad(a,b,c)
  %1008 = fadd fast float %1007, %994
  %1009 = fmul fast float %996, %449
  %1010 = call float @dx.op.tertiary.f32(i32 46, float %450, float %997, float %1009)  ; FMad(a,b,c)
  %1011 = call float @dx.op.tertiary.f32(i32 46, float %451, float %998, float %1010)  ; FMad(a,b,c)
  %1012 = fadd fast float %1011, %999
  %1013 = fmul fast float %1001, %449
  %1014 = call float @dx.op.tertiary.f32(i32 46, float %450, float %1002, float %1013)  ; FMad(a,b,c)
  %1015 = call float @dx.op.tertiary.f32(i32 46, float %451, float %1003, float %1014)  ; FMad(a,b,c)
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 0
  %1018 = extractvalue %dx.types.CBufRet.f32 %1016, 1
  %1019 = extractvalue %dx.types.CBufRet.f32 %1016, 3
  %1020 = fmul fast float %1019, %1008
  %1021 = fmul fast float %1019, %1012
  %1022 = fadd fast float %1020, %1017
  %1023 = fadd fast float %1021, %1018
  %1024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %1025 = extractvalue %dx.types.CBufRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.CBufRet.f32 %1024, 1
  %1027 = fsub fast float %1022, %1025
  %1028 = fsub fast float %1023, %1026
  %1029 = fcmp fast olt float %1027, 0.000000e+00
  %1030 = fcmp fast olt float %1028, 0.000000e+00
  %1031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.f32 %1031, 0
  %1033 = extractvalue %dx.types.CBufRet.f32 %1031, 1
  %1034 = extractvalue %dx.types.CBufRet.f32 %1031, 2
  %1035 = extractvalue %dx.types.CBufRet.f32 %1031, 3
  %1036 = select i1 %1029, float %1032, float %1034
  %1037 = select i1 %1030, float %1033, float %1035
  %1038 = fmul fast float %1036, %1027
  %1039 = fmul fast float %1037, %1028
  %1040 = call float @dx.op.unary.f32(i32 6, float %1038)  ; FAbs(value)
  %1041 = call float @dx.op.unary.f32(i32 6, float %1039)  ; FAbs(value)
  %1042 = extractvalue %dx.types.CBufRet.f32 %444, 0
  %1043 = call float @dx.op.binary.f32(i32 35, float %1040, float %1041)  ; FMax(a,b)
  %1044 = fsub fast float %1042, %1043
  %1045 = call float @dx.op.unary.f32(i32 7, float %1044)  ; Saturate(value)
  %1046 = fcmp fast ogt float %1045, 0.000000e+00
  br i1 %1046, label %1047, label %1088, !dx.controlflow.hints !81

; <label>:1047                                    ; preds = %989
  %1048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %25, float %1022, float %1023, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1050 = fcmp fast ogt float %1049, 0.000000e+00
  br i1 %1050, label %1051, label %1083, !dx.controlflow.hints !82

; <label>:1051                                    ; preds = %1047
  %1052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1022, float %1023, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1053 = extractvalue %dx.types.ResRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.ResRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.ResRet.f32 %1052, 2
  %1056 = extractvalue %dx.types.ResRet.f32 %1052, 3
  %1057 = fsub fast float 1.000000e+00, %1004
  %1058 = fsub fast float %1057, %1015
  %1059 = fmul fast float %1058, 0x400921FB60000000
  %1060 = fadd fast float %1059, 0x3FF921FB60000000
  %1061 = call float @dx.op.unary.f32(i32 13, float %1060)  ; Sin(value)
  %1062 = fadd fast float %1061, -1.000000e+00
  %1063 = fmul fast float %1062, 0x3FD45F3060000000
  %1064 = fmul fast float %1058, 0x401921FB60000000
  %1065 = fadd fast float %1064, 0x400921FB60000000
  %1066 = call float @dx.op.unary.f32(i32 13, float %1065)  ; Sin(value)
  %1067 = fadd fast float %1066, 0x3E7777A5C0000000
  %1068 = fmul fast float %1067, 0x3FC45F3060000000
  %1069 = fmul fast float %1058, 0x4022D97C80000000
  %1070 = fadd fast float %1069, 0x4012D97C80000000
  %1071 = call float @dx.op.unary.f32(i32 13, float %1070)  ; Sin(value)
  %1072 = fadd fast float %1071, 1.000000e+00
  %1073 = fmul fast float %1072, 0x3FBB2995E0000000
  %1074 = fmul fast float %1058, 0x402921FB60000000
  %1075 = fadd fast float %1074, 0x401921FB60000000
  %1076 = call float @dx.op.unary.f32(i32 13, float %1075)  ; Sin(value)
  %1077 = fadd fast float %1076, 0xBE8777A5C0000000
  %1078 = fmul fast float %1077, 0x3FB45F3060000000
  %1079 = call float @dx.op.dot4.f32(i32 56, float %1053, float %1054, float %1055, float %1056, float %1063, float %1068, float %1073, float %1078)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1080 = fmul fast float %1079, 0xBFF7154760000000
  %1081 = call float @dx.op.unary.f32(i32 21, float %1080)  ; Exp(value)
  %1082 = call float @dx.op.unary.f32(i32 7, float %1081)  ; Saturate(value)
  br label %1083

; <label>:1083                                    ; preds = %1051, %1047
  %1084 = phi float [ %1082, %1051 ], [ 1.000000e+00, %1047 ]
  %1085 = fadd fast float %1084, -1.000000e+00
  %1086 = fmul fast float %1085, %1045
  %1087 = fadd fast float %1086, 1.000000e+00
  br label %1088

; <label>:1088                                    ; preds = %1083, %989
  %1089 = phi float [ %1087, %1083 ], [ 1.000000e+00, %989 ]
  %1090 = fmul fast float %1089, %985
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 1
  %1093 = fsub fast float -0.000000e+00, %185
  %1094 = fsub fast float -0.000000e+00, %186
  %1095 = fsub fast float -0.000000e+00, %387
  %1096 = fsub fast float %1095, %386
  %1097 = fadd fast float %1096, %1092
  %1098 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1093, float %1094, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1099 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %437, float %438, float %439)  ; Dot3(ax,ay,az,bx,by,bz)
  %1100 = fdiv fast float 1.000000e+00, %1099
  %1101 = fmul fast float %1100, %1098
  %1102 = fmul fast float %437, %1101
  %1103 = fmul fast float %438, %1101
  %1104 = fadd fast float %1102, %185
  %1105 = fadd fast float %1103, %186
  %1106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.f32 %1106, 0
  %1108 = extractvalue %dx.types.CBufRet.f32 %1106, 1
  %1109 = fsub fast float %1104, %1107
  %1110 = fsub fast float %1105, %1108
  %1111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %1112 = extractvalue %dx.types.CBufRet.f32 %1111, 2
  %1113 = extractvalue %dx.types.CBufRet.f32 %1111, 3
  %1114 = fmul fast float %1109, %1112
  %1115 = fmul fast float %1110, %1113
  %1116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.i32 %1116, 3
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1124, label %1119, !dx.controlflow.hints !83

; <label>:1119                                    ; preds = %1088
  %1120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %24, float %1114, float %1115, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.ResRet.f32 %1120, 1
  %1123 = extractvalue %dx.types.ResRet.f32 %1120, 2
  br label %1129

; <label>:1124                                    ; preds = %1088
  %1125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %1114, float %1115, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  %1127 = extractvalue %dx.types.ResRet.f32 %1125, 1
  %1128 = extractvalue %dx.types.ResRet.f32 %1125, 2
  br label %1129

; <label>:1129                                    ; preds = %1124, %1119
  %1130 = phi float [ %1121, %1119 ], [ %1126, %1124 ]
  %1131 = phi float [ %1122, %1119 ], [ %1127, %1124 ]
  %1132 = phi float [ %1123, %1119 ], [ %1128, %1124 ]
  %1133 = extractvalue %dx.types.CBufRet.f32 %1091, 2
  %1134 = fmul fast float %1133, %1130
  %1135 = extractvalue %dx.types.CBufRet.f32 %1091, 0
  %1136 = fsub fast float %1101, %1135
  %1137 = fsub fast float %1136, %1134
  %1138 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1137)  ; FMax(a,b)
  %1139 = fmul fast float %1138, %1131
  %1140 = call float @dx.op.binary.f32(i32 36, float %1132, float %1139)  ; FMin(a,b)
  %1141 = fmul fast float %1140, 0xBFF7154760000000
  %1142 = call float @dx.op.unary.f32(i32 21, float %1141)  ; Exp(value)
  %1143 = fmul fast float %1090, %1142
  br label %1144

; <label>:1144                                    ; preds = %1129, %984
  %1145 = phi float [ %1143, %1129 ], [ %985, %984 ]
  %1146 = call float @dx.op.binary.f32(i32 36, float %1145, float %1145)  ; FMin(a,b)
  %1147 = call float @dx.op.binary.f32(i32 36, float %1145, float %1146)  ; FMin(a,b)
  %1148 = fcmp fast ogt float %1147, 0.000000e+00
  br i1 %1148, label %1149, label %1173, !dx.controlflow.hints !84

; <label>:1149                                    ; preds = %1144
  %1150 = call float @dx.op.dot3.f32(i32 55, float %437, float %438, float %439, float %190, float %191, float %192)  ; Dot3(ax,ay,az,bx,by,bz)
  %1151 = fcmp fast ogt float %298, 0.000000e+00
  %1152 = select i1 %1151, float 1.000000e+00, float -1.000000e+00
  %1153 = fmul fast float %109, 7.812500e-03
  %1154 = fmul fast float %109, 3.125000e-02
  %1155 = fadd fast float %1154, -3.125000e-02
  %1156 = fmul fast float %1152, 5.000000e-01
  %1157 = fmul fast float %1156, %1150
  %1158 = fmul fast float %1152, %298
  %1159 = fadd fast float %1153, 4.921875e-01
  %1160 = fadd fast float %1159, %1157
  %1161 = fadd fast float %1153, 0x3FB25F3060000000
  %1162 = fadd fast float %1155, %1158
  %1163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %1160, float %1161, float %1162, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1164 = extractvalue %dx.types.ResRet.f32 %1163, 0
  %1165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1166 = extractvalue %dx.types.CBufRet.f32 %1165, 0
  %1167 = fmul fast float %1145, 0x400921FB60000000
  %1168 = fmul fast float %1167, %1164
  %1169 = fmul fast float %1168, %1166
  %1170 = fmul fast float %1169, %441
  %1171 = fmul fast float %1169, %442
  %1172 = fmul fast float %1169, %443
  br label %1173

; <label>:1173                                    ; preds = %1149, %1144, %291
  %1174 = phi float [ %1170, %1149 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %1144 ]
  %1175 = phi float [ %1171, %1149 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %1144 ]
  %1176 = phi float [ %1172, %1149 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %1144 ]
  %1177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1178 = extractvalue %dx.types.CBufRet.i32 %1177, 0
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1774, label %1180, !dx.controlflow.hints !85

; <label>:1180                                    ; preds = %1173
  %1181 = add nsw i32 %1178, -1
  %1182 = call i32 @dx.op.binary.i32(i32 37, i32 %1181, i32 0)  ; IMax(a,b)
  br label %1183

; <label>:1183                                    ; preds = %1767, %1180
  %1184 = phi i32 [ 0, %1180 ], [ %1771, %1767 ]
  %1185 = phi float [ %1174, %1180 ], [ %1768, %1767 ]
  %1186 = phi float [ %1175, %1180 ], [ %1769, %1767 ]
  %1187 = phi float [ %1176, %1180 ], [ %1770, %1767 ]
  %1188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1189 = extractvalue %dx.types.CBufRet.i32 %1188, 0
  %1190 = call i32 @dx.op.tertiary.i32(i32 49, i32 %303, i32 %1189, i32 %1184)  ; UMad(a,b,c)
  %1191 = shl i32 %1190, 2
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1767, label %1195

; <label>:1195                                    ; preds = %1183
  br label %1196

; <label>:1196                                    ; preds = %1635, %1195
  %1197 = phi i32 [ %1206, %1635 ], [ %1193, %1195 ]
  %1198 = phi float [ %1636, %1635 ], [ %1185, %1195 ]
  %1199 = phi float [ %1637, %1635 ], [ %1186, %1195 ]
  %1200 = phi float [ %1638, %1635 ], [ %1187, %1195 ]
  %1201 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1197)  ; FirstbitLo(value)
  %1202 = shl i32 %1184, 5
  %1203 = add i32 %1201, %1202
  %1204 = and i32 %1201, 31
  %1205 = shl i32 1, %1204
  %1206 = xor i32 %1205, %1197
  %1207 = mul i32 %1203, 112
  %1208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1207, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.f32 %1208, 0
  %1210 = extractvalue %dx.types.ResRet.f32 %1208, 1
  %1211 = extractvalue %dx.types.ResRet.f32 %1208, 2
  %1212 = or i32 %1207, 12
  %1213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.f32 %1213, 0
  %1215 = add i32 %1207, 16
  %1216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.ResRet.f32 %1216, 1
  %1219 = extractvalue %dx.types.ResRet.f32 %1216, 2
  %1220 = add i32 %1207, 28
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = add i32 %1207, 32
  %1224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.ResRet.f32 %1224, 1
  %1227 = extractvalue %dx.types.ResRet.f32 %1224, 2
  %1228 = add i32 %1207, 44
  %1229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.f32 %1229, 0
  %1231 = add i32 %1207, 48
  %1232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.ResRet.f32 %1232, 1
  %1235 = extractvalue %dx.types.ResRet.f32 %1232, 2
  %1236 = extractvalue %dx.types.ResRet.f32 %1232, 3
  %1237 = add i32 %1207, 64
  %1238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.f32 %1238, 0
  %1240 = extractvalue %dx.types.ResRet.f32 %1238, 1
  %1241 = extractvalue %dx.types.ResRet.f32 %1238, 2
  %1242 = extractvalue %dx.types.ResRet.f32 %1238, 3
  %1243 = add i32 %1207, 92
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = and i32 %1245, 65535
  %1247 = uitofp i32 %1246 to float
  %1248 = lshr i32 %1245, 16
  %1249 = uitofp i32 %1248 to float
  %1250 = and i32 %1222, 65535
  %1251 = and i32 %1222, 50331648
  %1252 = icmp eq i32 %1251, 33554432
  %1253 = fdiv fast float 1.000000e+00, %427
  br i1 %1252, label %1254, label %1446, !dx.controlflow.hints !86

; <label>:1254                                    ; preds = %1196
  %1255 = fsub fast float %1233, %1225
  %1256 = fsub fast float %1234, %1226
  %1257 = fsub fast float %1235, %1227
  %1258 = fmul fast float %428, %427
  %1259 = fmul fast float %429, %427
  %1260 = fmul fast float %430, %427
  %1261 = fadd fast float %1258, %410
  %1262 = fadd fast float %1259, %411
  %1263 = fadd fast float %1260, %412
  %1264 = fmul fast float %1225, 2.000000e+00
  %1265 = fmul fast float %1226, 2.000000e+00
  %1266 = fmul fast float %1227, 2.000000e+00
  %1267 = call float @dx.op.dot3.f32(i32 55, float %1264, float %1265, float %1266, float %1264, float %1265, float %1266)  ; Dot3(ax,ay,az,bx,by,bz)
  %1268 = fdiv fast float %1264, %1267
  %1269 = fdiv fast float %1265, %1267
  %1270 = fdiv fast float %1266, %1267
  %1271 = fsub fast float %410, %1255
  %1272 = fsub fast float %411, %1256
  %1273 = fsub fast float %412, %1257
  %1274 = call float @dx.op.dot3.f32(i32 55, float %1271, float %1272, float %1273, float %1264, float %1265, float %1266)  ; Dot3(ax,ay,az,bx,by,bz)
  %1275 = fmul fast float %1274, %1268
  %1276 = fmul fast float %1274, %1269
  %1277 = fmul fast float %1274, %1270
  %1278 = fsub fast float %410, %1275
  %1279 = fsub fast float %411, %1276
  %1280 = fsub fast float %412, %1277
  %1281 = fsub fast float %1261, %1255
  %1282 = fsub fast float %1262, %1256
  %1283 = fsub fast float %1263, %1257
  %1284 = call float @dx.op.dot3.f32(i32 55, float %1281, float %1282, float %1283, float %1264, float %1265, float %1266)  ; Dot3(ax,ay,az,bx,by,bz)
  %1285 = fmul fast float %1284, %1268
  %1286 = fmul fast float %1284, %1269
  %1287 = fmul fast float %1284, %1270
  %1288 = fsub fast float %1261, %1285
  %1289 = fsub fast float %1262, %1286
  %1290 = fsub fast float %1263, %1287
  %1291 = fsub fast float %1288, %1278
  %1292 = fsub fast float %1289, %1279
  %1293 = fsub fast float %1290, %1280
  %1294 = fsub fast float %1255, %1278
  %1295 = fsub fast float %1256, %1279
  %1296 = fsub fast float %1257, %1280
  %1297 = call float @dx.op.dot3.f32(i32 55, float %1294, float %1295, float %1296, float %1291, float %1292, float %1293)  ; Dot3(ax,ay,az,bx,by,bz)
  %1298 = call float @dx.op.dot3.f32(i32 55, float %1291, float %1292, float %1293, float %1291, float %1292, float %1293)  ; Dot3(ax,ay,az,bx,by,bz)
  %1299 = fdiv fast float %1297, %1298
  %1300 = fcmp fast une float %1278, %1288
  %1301 = fcmp fast une float %1279, %1289
  %1302 = fcmp fast une float %1280, %1290
  %1303 = or i1 %1300, %1301
  %1304 = or i1 %1302, %1303
  %1305 = select i1 %1304, float %1299, float 0.000000e+00
  %1306 = call float @dx.op.unary.f32(i32 7, float %1305)  ; Saturate(value)
  %1307 = fmul fast float %1306, %1258
  %1308 = fmul fast float %1306, %1259
  %1309 = fmul fast float %1306, %1260
  %1310 = fadd fast float %1271, %1307
  %1311 = fadd fast float %1272, %1308
  %1312 = fadd fast float %1273, %1309
  %1313 = call float @dx.op.dot3.f32(i32 55, float %1310, float %1311, float %1312, float %1264, float %1265, float %1266)  ; Dot3(ax,ay,az,bx,by,bz)
  %1314 = fdiv fast float %1313, %1267
  %1315 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1316 = fmul fast float %1264, %1315
  %1317 = fmul fast float %1265, %1315
  %1318 = fmul fast float %1266, %1315
  %1319 = fadd fast float %1316, %1255
  %1320 = fadd fast float %1317, %1256
  %1321 = fadd fast float %1318, %1257
  %1322 = fmul fast float %1241, %1217
  %1323 = fmul fast float %1241, %1218
  %1324 = fmul fast float %1241, %1219
  %1325 = fadd fast float %1319, %1322
  %1326 = fadd fast float %1320, %1323
  %1327 = fadd fast float %1321, %1324
  %1328 = fsub fast float -0.000000e+00, %1240
  %1329 = fdiv fast float %1328, %1239
  %1330 = fmul fast float %1329, %1329
  %1331 = call float @dx.op.dot3.f32(i32 55, float %428, float %429, float %430, float %1217, float %1218, float %1219)  ; Dot3(ax,ay,az,bx,by,bz)
  %1332 = fsub fast float %410, %1325
  %1333 = fsub fast float %411, %1326
  %1334 = fsub fast float %412, %1327
  %1335 = call float @dx.op.dot3.f32(i32 55, float %1332, float %1333, float %1334, float %1217, float %1218, float %1219)  ; Dot3(ax,ay,az,bx,by,bz)
  %1336 = fsub fast float %1325, %410
  %1337 = fsub fast float %1326, %411
  %1338 = fsub fast float %1327, %412
  %1339 = fmul fast float %1331, %1331
  %1340 = fsub fast float %1339, %1330
  %1341 = fmul fast float %1335, %1331
  %1342 = call float @dx.op.dot3.f32(i32 55, float %1336, float %1337, float %1338, float %428, float %429, float %430)  ; Dot3(ax,ay,az,bx,by,bz)
  %1343 = fmul fast float %1342, %1330
  %1344 = fadd fast float %1343, %1341
  %1345 = fmul fast float %1344, 2.000000e+00
  %1346 = fmul fast float %1335, %1335
  %1347 = call float @dx.op.dot3.f32(i32 55, float %1336, float %1337, float %1338, float %1336, float %1337, float %1338)  ; Dot3(ax,ay,az,bx,by,bz)
  %1348 = fmul fast float %1347, %1330
  %1349 = fsub fast float %1346, %1348
  %1350 = fmul fast float %1345, %1345
  %1351 = fmul fast float %1340, 4.000000e+00
  %1352 = fmul fast float %1351, %1349
  %1353 = fsub fast float %1350, %1352
  %1354 = fcmp fast ogt float %1353, 0.000000e+00
  br i1 %1354, label %1355, label %1446, !dx.controlflow.hints !87

; <label>:1355                                    ; preds = %1254
  %1356 = call float @dx.op.unary.f32(i32 24, float %1353)  ; Sqrt(value)
  %1357 = fdiv fast float 5.000000e-01, %1340
  %1358 = fsub fast float -0.000000e+00, %1345
  %1359 = fsub fast float %1358, %1356
  %1360 = fmul fast float %1359, %1357
  %1361 = fsub fast float %1356, %1345
  %1362 = fmul fast float %1361, %1357
  %1363 = call float @dx.op.binary.f32(i32 35, float %1360, float %1362)  ; FMax(a,b)
  %1364 = call float @dx.op.binary.f32(i32 36, float %1360, float %1362)  ; FMin(a,b)
  %1365 = fsub fast float %1319, %410
  %1366 = fsub fast float %1320, %411
  %1367 = fsub fast float %1321, %412
  %1368 = call float @dx.op.dot3.f32(i32 55, float %1365, float %1366, float %1367, float %1217, float %1218, float %1219)  ; Dot3(ax,ay,az,bx,by,bz)
  %1369 = fdiv fast float %1368, %1331
  %1370 = fcmp fast ogt float %1331, 0.000000e+00
  br i1 %1370, label %1371, label %1374, !dx.controlflow.hints !88

; <label>:1371                                    ; preds = %1355
  %1372 = call float @dx.op.binary.f32(i32 36, float %1364, float %1369)  ; FMin(a,b)
  %1373 = call float @dx.op.binary.f32(i32 36, float %1363, float %1369)  ; FMin(a,b)
  br label %1377

; <label>:1374                                    ; preds = %1355
  %1375 = call float @dx.op.binary.f32(i32 35, float %1364, float %1369)  ; FMax(a,b)
  %1376 = call float @dx.op.binary.f32(i32 35, float %1363, float %1369)  ; FMax(a,b)
  br label %1377

; <label>:1377                                    ; preds = %1374, %1371
  %1378 = phi float [ %1372, %1371 ], [ %1375, %1374 ]
  %1379 = phi float [ %1373, %1371 ], [ %1376, %1374 ]
  %1380 = fcmp fast oge float %1378, 0.000000e+00
  %1381 = fcmp fast olt float %1378, %427
  %1382 = and i1 %1380, %1381
  %1383 = fcmp fast ogt float %1379, 0.000000e+00
  %1384 = fcmp fast ole float %1379, %427
  %1385 = and i1 %1383, %1384
  %1386 = or i1 %1382, %1385
  br i1 %1386, label %1387, label %1446, !dx.controlflow.hints !89

; <label>:1387                                    ; preds = %1377
  %1388 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1378)  ; FMax(a,b)
  %1389 = call float @dx.op.binary.f32(i32 36, float %427, float %1379)  ; FMin(a,b)
  br i1 %1370, label %1390, label %1412, !dx.controlflow.hints !90

; <label>:1390                                    ; preds = %1387
  %1391 = fmul fast float %1389, %428
  %1392 = fmul fast float %1389, %429
  %1393 = fmul fast float %1389, %430
  %1394 = fsub fast float %1336, %1391
  %1395 = fsub fast float %1337, %1392
  %1396 = fsub fast float %1338, %1393
  %1397 = call float @dx.op.dot3.f32(i32 55, float %1394, float %1395, float %1396, float %1394, float %1395, float %1396)  ; Dot3(ax,ay,az,bx,by,bz)
  %1398 = call float @dx.op.unary.f32(i32 25, float %1397)  ; Rsqrt(value)
  %1399 = fmul fast float %1398, %1394
  %1400 = fmul fast float %1398, %1395
  %1401 = fmul fast float %1398, %1396
  %1402 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float %1217, float %1218, float %1219)  ; Dot3(ax,ay,az,bx,by,bz)
  %1403 = fmul fast float %1402, %1239
  %1404 = fadd fast float %1403, %1240
  %1405 = fcmp fast olt float %1404, 0xBF1A36E2E0000000
  %1406 = select i1 %1405, float 0.000000e+00, float %1388
  %1407 = select i1 %1405, float %1388, float %1389
  %1408 = fsub fast float %1406, %1407
  %1409 = call float @dx.op.unary.f32(i32 6, float %1408)  ; FAbs(value)
  %1410 = fcmp fast olt float %1409, 0x3F1A36E2E0000000
  br i1 %1410, label %1411, label %1434, !dx.controlflow.hints !91

; <label>:1411                                    ; preds = %1390
  br label %1434

; <label>:1412                                    ; preds = %1387
  %1413 = fmul fast float %1388, %428
  %1414 = fmul fast float %1388, %429
  %1415 = fmul fast float %1388, %430
  %1416 = fsub fast float %1336, %1413
  %1417 = fsub fast float %1337, %1414
  %1418 = fsub fast float %1338, %1415
  %1419 = call float @dx.op.dot3.f32(i32 55, float %1416, float %1417, float %1418, float %1416, float %1417, float %1418)  ; Dot3(ax,ay,az,bx,by,bz)
  %1420 = call float @dx.op.unary.f32(i32 25, float %1419)  ; Rsqrt(value)
  %1421 = fmul fast float %1420, %1416
  %1422 = fmul fast float %1420, %1417
  %1423 = fmul fast float %1420, %1418
  %1424 = call float @dx.op.dot3.f32(i32 55, float %1421, float %1422, float %1423, float %1217, float %1218, float %1219)  ; Dot3(ax,ay,az,bx,by,bz)
  %1425 = fmul fast float %1424, %1239
  %1426 = fadd fast float %1425, %1240
  %1427 = fcmp fast olt float %1426, 0xBF1A36E2E0000000
  %1428 = select i1 %1427, float %1389, float %1388
  %1429 = select i1 %1427, float %427, float %1389
  %1430 = fsub fast float %1428, %1429
  %1431 = call float @dx.op.unary.f32(i32 6, float %1430)  ; FAbs(value)
  %1432 = fcmp fast olt float %1431, 0x3F1A36E2E0000000
  br i1 %1432, label %1433, label %1434, !dx.controlflow.hints !92

; <label>:1433                                    ; preds = %1412
  br label %1434

; <label>:1434                                    ; preds = %1433, %1412, %1411, %1390
  %1435 = phi float [ 0.000000e+00, %1411 ], [ %1406, %1390 ], [ %1428, %1433 ], [ %1428, %1412 ]
  %1436 = phi float [ %1407, %1411 ], [ %1407, %1390 ], [ %427, %1433 ], [ %1429, %1412 ]
  %1437 = fmul fast float %1435, %428
  %1438 = fmul fast float %1435, %429
  %1439 = fmul fast float %1435, %430
  %1440 = fadd fast float %1437, %410
  %1441 = fadd fast float %1438, %411
  %1442 = fadd fast float %1439, %412
  %1443 = fsub fast float %1436, %1435
  %1444 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1443)  ; FMax(a,b)
  %1445 = fmul fast float %1444, %1253
  br label %1446

; <label>:1446                                    ; preds = %1434, %1377, %1254, %1196
  %1447 = phi float [ %1325, %1434 ], [ %1325, %1377 ], [ %1325, %1254 ], [ %1233, %1196 ]
  %1448 = phi float [ %1326, %1434 ], [ %1326, %1377 ], [ %1326, %1254 ], [ %1234, %1196 ]
  %1449 = phi float [ %1327, %1434 ], [ %1327, %1377 ], [ %1327, %1254 ], [ %1235, %1196 ]
  %1450 = phi float [ %1440, %1434 ], [ %410, %1377 ], [ %410, %1254 ], [ %410, %1196 ]
  %1451 = phi float [ %1441, %1434 ], [ %411, %1377 ], [ %411, %1254 ], [ %411, %1196 ]
  %1452 = phi float [ %1442, %1434 ], [ %412, %1377 ], [ %412, %1254 ], [ %412, %1196 ]
  %1453 = phi float [ %1444, %1434 ], [ %427, %1377 ], [ %427, %1254 ], [ %427, %1196 ]
  %1454 = phi float [ %1445, %1434 ], [ 1.000000e+00, %1377 ], [ 1.000000e+00, %1254 ], [ 1.000000e+00, %1196 ]
  %1455 = fsub fast float %1447, %1450
  %1456 = fsub fast float %1448, %1451
  %1457 = fsub fast float %1449, %1452
  %1458 = call float @dx.op.dot3.f32(i32 55, float %1455, float %1456, float %1457, float %428, float %429, float %430)  ; Dot3(ax,ay,az,bx,by,bz)
  %1459 = call float @dx.op.binary.f32(i32 35, float %1458, float 0.000000e+00)  ; FMax(a,b)
  %1460 = call float @dx.op.binary.f32(i32 36, float %1459, float %1453)  ; FMin(a,b)
  %1461 = fmul fast float %1460, %428
  %1462 = fmul fast float %1460, %429
  %1463 = fmul fast float %1460, %430
  %1464 = fsub fast float %1450, %1447
  %1465 = fadd fast float %1464, %1461
  %1466 = fsub fast float %1451, %1448
  %1467 = fadd fast float %1466, %1462
  %1468 = fsub fast float %1452, %1449
  %1469 = fadd fast float %1468, %1463
  %1470 = fmul fast float %1465, %1465
  %1471 = fmul fast float %1467, %1467
  %1472 = fadd fast float %1470, %1471
  %1473 = fmul fast float %1469, %1469
  %1474 = fadd fast float %1472, %1473
  %1475 = call float @dx.op.unary.f32(i32 24, float %1474)  ; Sqrt(value)
  %1476 = fsub fast float -0.000000e+00, %1460
  %1477 = call float @dx.op.unary.f32(i32 6, float %1476)  ; FAbs(value)
  %1478 = fadd fast float %1477, 0x3DDB7CDFE0000000
  %1479 = fcmp fast oge float %1475, 0.000000e+00
  %1480 = fsub fast float -0.000000e+00, %1478
  %1481 = select i1 %1479, float %1480, float %1478
  %1482 = fadd fast float %1481, %1475
  %1483 = fsub fast float -0.000000e+00, %1475
  %1484 = select i1 %1479, float %1475, float %1483
  %1485 = fadd fast float %1478, %1484
  %1486 = fdiv fast float %1482, %1485
  %1487 = select i1 %1479, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %1488 = fmul fast float %1486, %1486
  %1489 = fmul fast float %1488, 0x3FC9205BC0000000
  %1490 = fadd fast float %1489, 0xBFEF6A1620000000
  %1491 = fmul fast float %1490, %1486
  %1492 = fadd fast float %1491, %1487
  %1493 = fcmp ole float %1460, -0.000000e+00
  %1494 = fsub fast float -0.000000e+00, %1492
  %1495 = select i1 %1493, float %1492, float %1494
  %1496 = fsub fast float %1453, %1460
  %1497 = call float @dx.op.unary.f32(i32 6, float %1496)  ; FAbs(value)
  %1498 = fadd fast float %1497, 0x3DDB7CDFE0000000
  %1499 = fsub fast float -0.000000e+00, %1498
  %1500 = select i1 %1479, float %1499, float %1498
  %1501 = fadd fast float %1500, %1475
  %1502 = fadd fast float %1498, %1484
  %1503 = fdiv fast float %1501, %1502
  %1504 = fmul fast float %1503, %1503
  %1505 = fmul fast float %1504, 0x3FC9205BC0000000
  %1506 = fadd fast float %1505, 0xBFEF6A1620000000
  %1507 = fmul fast float %1506, %1503
  %1508 = fadd fast float %1507, %1487
  %1509 = fcmp fast oge float %1496, 0.000000e+00
  %1510 = fsub fast float -0.000000e+00, %1508
  %1511 = select i1 %1509, float %1508, float %1510
  %1512 = fsub fast float %1511, %1495
  %1513 = fmul fast float %1512, %109
  %1514 = fadd fast float %1513, %1495
  %1515 = call float @dx.op.unary.f32(i32 14, float %1514)  ; Tan(value)
  %1516 = fmul fast float %1515, %1475
  %1517 = fadd fast float %1516, %1460
  %1518 = fmul fast float %1475, %1475
  %1519 = fmul fast float %1516, %1516
  %1520 = fadd fast float %1519, %1518
  %1521 = fmul fast float %1512, %1520
  %1522 = fdiv fast float %1475, %1521
  %1523 = fdiv fast float 1.000000e+00, %1522
  %1524 = fmul fast float %1454, %1253
  %1525 = fmul fast float %1524, %1523
  %1526 = fmul fast float %1517, %428
  %1527 = fmul fast float %1517, %429
  %1528 = fmul fast float %1517, %430
  %1529 = fadd fast float %1526, %1450
  %1530 = fadd fast float %1527, %1451
  %1531 = fadd fast float %1528, %1452
  %1532 = call float @dx.op.dot3.f32(i32 55, float %1225, float %1226, float %1227, float %1225, float %1226, float %1227)  ; Dot3(ax,ay,az,bx,by,bz)
  %1533 = fsub fast float %1529, %1233
  %1534 = fsub fast float %1530, %1234
  %1535 = fsub fast float %1531, %1235
  %1536 = call float @dx.op.dot3.f32(i32 55, float %1533, float %1534, float %1535, float %1225, float %1226, float %1227)  ; Dot3(ax,ay,az,bx,by,bz)
  %1537 = fdiv fast float %1536, %1532
  %1538 = call float @dx.op.binary.f32(i32 35, float %1537, float -1.000000e+00)  ; FMax(a,b)
  %1539 = call float @dx.op.binary.f32(i32 36, float %1538, float 1.000000e+00)  ; FMin(a,b)
  %1540 = fmul fast float %1539, %1225
  %1541 = fmul fast float %1539, %1226
  %1542 = fmul fast float %1539, %1227
  %1543 = fadd fast float %1540, %1233
  %1544 = fadd fast float %1541, %1234
  %1545 = fadd fast float %1542, %1235
  %1546 = fsub fast float %1543, %1529
  %1547 = fsub fast float %1544, %1530
  %1548 = fsub fast float %1545, %1531
  %1549 = call float @dx.op.dot3.f32(i32 55, float %1546, float %1547, float %1548, float %1546, float %1547, float %1548)  ; Dot3(ax,ay,az,bx,by,bz)
  %1550 = call float @dx.op.unary.f32(i32 24, float %1549)  ; Sqrt(value)
  %1551 = fdiv fast float 1.000000e+00, %1550
  %1552 = fmul fast float %1546, %1551
  %1553 = fmul fast float %1547, %1551
  %1554 = fmul fast float %1548, %1551
  %1555 = fadd fast float %1550, %1214
  %1556 = fdiv fast float 1.000000e+00, %1555
  %1557 = fmul float %1230, %1556
  %1558 = fmul float %1557, %1557
  %1559 = call float @dx.op.unary.f32(i32 7, float %1558)  ; Saturate(value)
  br i1 %1252, label %1560, label %1584, !dx.controlflow.hints !93

; <label>:1560                                    ; preds = %1446
  %1561 = fmul fast float %1241, %1217
  %1562 = fmul fast float %1241, %1218
  %1563 = fmul fast float %1241, %1219
  %1564 = fsub fast float %1561, %1529
  %1565 = fadd fast float %1564, %1543
  %1566 = fsub fast float %1562, %1530
  %1567 = fadd fast float %1566, %1544
  %1568 = fsub fast float %1563, %1531
  %1569 = fadd fast float %1568, %1545
  %1570 = call float @dx.op.dot3.f32(i32 55, float %1565, float %1567, float %1569, float %1565, float %1567, float %1569)  ; Dot3(ax,ay,az,bx,by,bz)
  %1571 = call float @dx.op.unary.f32(i32 25, float %1570)  ; Rsqrt(value)
  %1572 = fmul fast float %1571, %1565
  %1573 = fmul fast float %1571, %1567
  %1574 = fmul fast float %1571, %1569
  %1575 = fsub fast float %1529, %1543
  %1576 = fsub fast float %1530, %1544
  %1577 = fsub fast float %1531, %1545
  %1578 = fsub fast float -0.000000e+00, %1575
  %1579 = fsub fast float -0.000000e+00, %1576
  %1580 = fsub fast float -0.000000e+00, %1577
  %1581 = call float @dx.op.dot3.f32(i32 55, float %1578, float %1579, float %1580, float %1217, float %1218, float %1219)  ; Dot3(ax,ay,az,bx,by,bz)
  %1582 = fcmp fast ogt float %1581, 0.000000e+00
  %1583 = uitofp i1 %1582 to float
  br label %1584

; <label>:1584                                    ; preds = %1560, %1446
  %1585 = phi float [ %1583, %1560 ], [ 1.000000e+00, %1446 ]
  %1586 = phi float [ %1572, %1560 ], [ %1552, %1446 ]
  %1587 = phi float [ %1573, %1560 ], [ %1553, %1446 ]
  %1588 = phi float [ %1574, %1560 ], [ %1554, %1446 ]
  %1589 = call float @dx.op.dot3.f32(i32 55, float %1217, float %1218, float %1219, float %1586, float %1587, float %1588)  ; Dot3(ax,ay,az,bx,by,bz)
  %1590 = fmul fast float %1589, %1589
  %1591 = call float @dx.op.unary.f32(i32 7, float %1590)  ; Saturate(value)
  %1592 = fsub fast float 1.000000e+00, %1591
  %1593 = fmul fast float %1592, 5.000000e-01
  %1594 = fcmp fast ogt float %1589, 0.000000e+00
  %1595 = fsub fast float 1.000000e+00, %1593
  %1596 = select i1 %1594, float %1593, float %1595
  %1597 = fmul fast float %1596, %1249
  %1598 = fadd fast float %1597, %1247
  %1599 = fmul fast float %1598, 0x3EF0001000000000
  %1600 = fsub fast float %1543, %374
  %1601 = fsub fast float %1544, %375
  %1602 = fsub fast float %1545, %376
  %1603 = call float @dx.op.dot3.f32(i32 55, float %1600, float %1601, float %1602, float %1600, float %1601, float %1602)  ; Dot3(ax,ay,az,bx,by,bz)
  %1604 = fmul fast float %382, %382
  %1605 = fsub fast float %1603, %1604
  %1606 = fdiv fast float %1605, %1603
  %1607 = call float @dx.op.unary.f32(i32 24, float %1606)  ; Sqrt(value)
  %1608 = fsub fast float 1.000000e+00, %1607
  %1609 = fcmp fast olt float %1603, %1604
  %1610 = fmul fast float %1608, 2.560000e+02
  %1611 = select i1 %1609, float 2.560000e+02, float %1610
  %1612 = call float @dx.op.unary.f32(i32 23, float %1611)  ; Log(value)
  %1613 = call float @dx.op.binary.f32(i32 36, float %1612, float 7.000000e+00)  ; FMin(a,b)
  %1614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %23, float %1599, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float %1613)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1615 = extractvalue %dx.types.ResRet.f32 %1614, 0
  %1616 = fmul fast float %1589, %1239
  %1617 = fadd fast float %1616, %1240
  %1618 = call float @dx.op.unary.f32(i32 7, float %1617)  ; Saturate(value)
  %1619 = select i1 %1252, float 1.000000e+00, float %1618
  %1620 = select i1 %1252, float %1618, float 1.000000e+00
  %1621 = fmul fast float %1550, %1236
  %1622 = fsub fast float 1.000000e+00, %1621
  %1623 = fmul fast float %1622, %1242
  %1624 = call float @dx.op.unary.f32(i32 7, float %1623)  ; Saturate(value)
  %1625 = fmul fast float %1624, %1620
  %1626 = fmul fast float %1625, 2.000000e+00
  %1627 = fsub fast float 3.000000e+00, %1626
  %1628 = fmul fast float %1615, %1585
  %1629 = fmul fast float %1625, %1625
  %1630 = fmul fast float %1629, %1628
  %1631 = fmul fast float %1630, %1627
  %1632 = call float @dx.op.binary.f32(i32 36, float %1631, float %1631)  ; FMin(a,b)
  %1633 = call float @dx.op.binary.f32(i32 36, float %1631, float %1632)  ; FMin(a,b)
  %1634 = fcmp fast ogt float %1633, 0.000000e+00
  br i1 %1634, label %1640, label %1635, !dx.controlflow.hints !94

; <label>:1635                                    ; preds = %1733, %1728, %1584
  %1636 = phi float [ %1763, %1733 ], [ %1198, %1728 ], [ %1198, %1584 ]
  %1637 = phi float [ %1764, %1733 ], [ %1199, %1728 ], [ %1199, %1584 ]
  %1638 = phi float [ %1765, %1733 ], [ %1200, %1728 ], [ %1200, %1584 ]
  %1639 = icmp eq i32 %1197, %1205
  br i1 %1639, label %1766, label %1196

; <label>:1640                                    ; preds = %1584
  %1641 = icmp eq i32 %1250, 255
  br i1 %1641, label %1728, label %1642, !dx.controlflow.hints !95

; <label>:1642                                    ; preds = %1640
  %1643 = mul nuw nsw i32 %1250, 176
  %1644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1643, i32 undef)  ; BufferLoad(srv,index,wot)
  %1645 = extractvalue %dx.types.ResRet.f32 %1644, 0
  %1646 = extractvalue %dx.types.ResRet.f32 %1644, 1
  %1647 = extractvalue %dx.types.ResRet.f32 %1644, 2
  %1648 = extractvalue %dx.types.ResRet.f32 %1644, 3
  %1649 = add nuw nsw i32 %1643, 16
  %1650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1649, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.f32 %1650, 0
  %1652 = extractvalue %dx.types.ResRet.f32 %1650, 1
  %1653 = add nuw nsw i32 %1643, 32
  %1654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1653, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.f32 %1654, 0
  %1656 = extractvalue %dx.types.ResRet.f32 %1654, 2
  %1657 = add nuw nsw i32 %1643, 48
  %1658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1659 = extractvalue %dx.types.ResRet.f32 %1658, 0
  %1660 = extractvalue %dx.types.ResRet.f32 %1658, 1
  %1661 = extractvalue %dx.types.ResRet.f32 %1658, 2
  %1662 = extractvalue %dx.types.ResRet.f32 %1658, 3
  %1663 = add nuw nsw i32 %1643, 64
  %1664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1665 = extractvalue %dx.types.ResRet.f32 %1664, 0
  %1666 = extractvalue %dx.types.ResRet.f32 %1664, 1
  %1667 = extractvalue %dx.types.ResRet.f32 %1664, 2
  %1668 = extractvalue %dx.types.ResRet.f32 %1664, 3
  %1669 = add nuw nsw i32 %1643, 80
  %1670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %1671 = extractvalue %dx.types.ResRet.f32 %1670, 0
  %1672 = extractvalue %dx.types.ResRet.f32 %1670, 1
  %1673 = extractvalue %dx.types.ResRet.f32 %1670, 2
  %1674 = extractvalue %dx.types.ResRet.f32 %1670, 3
  %1675 = add nuw nsw i32 %1643, 96
  %1676 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1675, i32 undef)  ; BufferLoad(srv,index,wot)
  %1677 = extractvalue %dx.types.ResRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.ResRet.f32 %1676, 1
  %1679 = extractvalue %dx.types.ResRet.f32 %1676, 2
  %1680 = extractvalue %dx.types.ResRet.f32 %1676, 3
  %1681 = bitcast float %1652 to i32
  %1682 = fmul fast float %1656, %1552
  %1683 = fmul fast float %1656, %1553
  %1684 = fmul fast float %1656, %1554
  %1685 = fsub fast float %1529, %1682
  %1686 = fsub fast float %1530, %1683
  %1687 = fsub fast float %1531, %1684
  %1688 = fmul fast float %1685, %1659
  %1689 = call float @dx.op.tertiary.f32(i32 46, float %1686, float %1665, float %1688)  ; FMad(a,b,c)
  %1690 = call float @dx.op.tertiary.f32(i32 46, float %1687, float %1671, float %1689)  ; FMad(a,b,c)
  %1691 = fadd fast float %1690, %1677
  %1692 = fmul fast float %1685, %1660
  %1693 = call float @dx.op.tertiary.f32(i32 46, float %1686, float %1666, float %1692)  ; FMad(a,b,c)
  %1694 = call float @dx.op.tertiary.f32(i32 46, float %1687, float %1672, float %1693)  ; FMad(a,b,c)
  %1695 = fadd fast float %1694, %1678
  %1696 = fmul fast float %1685, %1661
  %1697 = call float @dx.op.tertiary.f32(i32 46, float %1686, float %1667, float %1696)  ; FMad(a,b,c)
  %1698 = call float @dx.op.tertiary.f32(i32 46, float %1687, float %1673, float %1697)  ; FMad(a,b,c)
  %1699 = fadd fast float %1698, %1679
  %1700 = fmul fast float %1685, %1662
  %1701 = call float @dx.op.tertiary.f32(i32 46, float %1686, float %1668, float %1700)  ; FMad(a,b,c)
  %1702 = call float @dx.op.tertiary.f32(i32 46, float %1687, float %1674, float %1701)  ; FMad(a,b,c)
  %1703 = fadd fast float %1702, %1680
  %1704 = fdiv fast float %1691, %1703
  %1705 = fdiv fast float %1695, %1703
  %1706 = fdiv fast float %1699, %1703
  %1707 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %1706)  ; FMax(a,b)
  %1708 = fmul fast float %1647, 5.000000e-01
  %1709 = call float @dx.op.tertiary.f32(i32 46, float %1708, float -0.000000e+00, float 0.000000e+00)  ; FMad(a,b,c)
  %1710 = fadd fast float %1709, %1704
  %1711 = fadd fast float %1705, %1708
  %1712 = fmul fast float %1710, %1651
  %1713 = fmul fast float %1711, %1651
  %1714 = call float @dx.op.binary.f32(i32 35, float %1712, float %1647)  ; FMax(a,b)
  %1715 = call float @dx.op.binary.f32(i32 35, float %1713, float %1647)  ; FMax(a,b)
  %1716 = call float @dx.op.binary.f32(i32 36, float %1714, float %1648)  ; FMin(a,b)
  %1717 = call float @dx.op.binary.f32(i32 36, float %1715, float %1648)  ; FMin(a,b)
  %1718 = fadd fast float %1716, %1645
  %1719 = fadd fast float %1717, %1646
  %1720 = uitofp i32 %1681 to float
  %1721 = fadd fast float %1707, %1655
  %1722 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %26, float %1718, float %1719, float %1720, float undef, i32 0, i32 0, i32 undef, float %1721)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1723 = extractvalue %dx.types.ResRet.f32 %1722, 0
  %1724 = fadd fast float %1723, -1.000000e+00
  %1725 = fmul fast float %1724, %1619
  %1726 = fadd fast float %1725, 1.000000e+00
  %1727 = fmul fast float %1726, %1631
  br label %1728

; <label>:1728                                    ; preds = %1642, %1640
  %1729 = phi float [ %1727, %1642 ], [ %1631, %1640 ]
  %1730 = call float @dx.op.binary.f32(i32 36, float %1729, float %1729)  ; FMin(a,b)
  %1731 = call float @dx.op.binary.f32(i32 36, float %1729, float %1730)  ; FMin(a,b)
  %1732 = fcmp fast ogt float %1731, 0.000000e+00
  br i1 %1732, label %1733, label %1635, !dx.controlflow.hints !96

; <label>:1733                                    ; preds = %1728
  %1734 = call float @dx.op.dot3.f32(i32 55, float %1552, float %1553, float %1554, float %190, float %191, float %192)  ; Dot3(ax,ay,az,bx,by,bz)
  %1735 = fcmp fast ogt float %298, 0.000000e+00
  %1736 = select i1 %1735, float 1.000000e+00, float -1.000000e+00
  %1737 = fmul fast float %109, 7.812500e-03
  %1738 = fmul fast float %109, 3.125000e-02
  %1739 = fadd fast float %1738, -3.125000e-02
  %1740 = fmul fast float %1736, 5.000000e-01
  %1741 = fmul fast float %1740, %1734
  %1742 = fmul fast float %1736, %298
  %1743 = fadd fast float %1737, 4.921875e-01
  %1744 = fadd fast float %1743, %1741
  %1745 = fadd fast float %1737, 0x3FB25F3060000000
  %1746 = fadd fast float %1739, %1742
  %1747 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %1744, float %1745, float %1746, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1748 = extractvalue %dx.types.ResRet.f32 %1747, 0
  %1749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1750 = extractvalue %dx.types.CBufRet.f32 %1749, 1
  %1751 = extractvalue %dx.types.CBufRet.f32 %1749, 2
  %1752 = select i1 %1252, float %1750, float %1751
  %1753 = fmul fast float %1559, 0x400921FB60000000
  %1754 = fmul fast float %1753, %1729
  %1755 = fmul fast float %1754, %1748
  %1756 = fmul fast float %1755, %1752
  %1757 = fmul fast float %1525, %1209
  %1758 = fmul fast float %1757, %1756
  %1759 = fmul fast float %1525, %1210
  %1760 = fmul fast float %1759, %1756
  %1761 = fmul fast float %1525, %1211
  %1762 = fmul fast float %1761, %1756
  %1763 = fadd fast float %1758, %1198
  %1764 = fadd fast float %1760, %1199
  %1765 = fadd fast float %1762, %1200
  br label %1635

; <label>:1766                                    ; preds = %1635
  br label %1767

; <label>:1767                                    ; preds = %1766, %1183
  %1768 = phi float [ %1185, %1183 ], [ %1636, %1766 ]
  %1769 = phi float [ %1186, %1183 ], [ %1637, %1766 ]
  %1770 = phi float [ %1187, %1183 ], [ %1638, %1766 ]
  %1771 = add i32 %1184, 1
  %1772 = icmp ugt i32 %1771, %1182
  br i1 %1772, label %1773, label %1183

; <label>:1773                                    ; preds = %1767
  br label %1774

; <label>:1774                                    ; preds = %1773, %1173
  %1775 = phi float [ %1174, %1173 ], [ %1768, %1773 ]
  %1776 = phi float [ %1175, %1173 ], [ %1769, %1773 ]
  %1777 = phi float [ %1176, %1173 ], [ %1770, %1773 ]
  %1778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %23, float %134, float %135, float %136, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1779 = extractvalue %dx.types.ResRet.f32 %1778, 0
  %1780 = extractvalue %dx.types.ResRet.f32 %1778, 1
  %1781 = extractvalue %dx.types.ResRet.f32 %1778, 2
  %1782 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1779)  ; IsNaN(value)
  %1783 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1780)  ; IsNaN(value)
  %1784 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1781)  ; IsNaN(value)
  %1785 = or i1 %1782, %1783
  %1786 = or i1 %1785, %1784
  %1787 = select i1 %1786, float 0.000000e+00, float %1779
  %1788 = select i1 %1786, float 0.000000e+00, float %1780
  %1789 = select i1 %1786, float 0.000000e+00, float %1781
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 1
  %1792 = fmul fast float %1787, %1791
  %1793 = fmul fast float %1788, %1791
  %1794 = fmul fast float %1789, %1791
  %1795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1796 = extractvalue %dx.types.CBufRet.f32 %1795, 3
  %1797 = fmul fast float %1792, %1796
  %1798 = fmul fast float %1793, %1796
  %1799 = fmul fast float %1794, %1796
  %1800 = fadd fast float %1797, %1775
  %1801 = fadd fast float %1798, %1776
  %1802 = fadd fast float %1799, %1777
  br label %1803

; <label>:1803                                    ; preds = %1774, %271
  %1804 = phi float [ %295, %1774 ], [ %287, %271 ]
  %1805 = phi float [ %296, %1774 ], [ %288, %271 ]
  %1806 = phi float [ %297, %1774 ], [ %289, %271 ]
  %1807 = phi float [ %1800, %1774 ], [ 0.000000e+00, %271 ]
  %1808 = phi float [ %1801, %1774 ], [ 0.000000e+00, %271 ]
  %1809 = phi float [ %1802, %1774 ], [ 0.000000e+00, %271 ]
  %1810 = fmul fast float %1804, %286
  %1811 = fmul fast float %1805, %286
  %1812 = fmul fast float %1806, %286
  %1813 = fmul fast float %1810, %1807
  %1814 = fmul fast float %1811, %1808
  %1815 = fmul fast float %1812, %1809
  %1816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1817 = extractvalue %dx.types.CBufRet.f32 %1816, 0
  %1818 = extractvalue %dx.types.CBufRet.f32 %1816, 1
  %1819 = extractvalue %dx.types.CBufRet.f32 %1816, 2
  %1820 = extractvalue %dx.types.CBufRet.f32 %1816, 3
  %1821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1822 = extractvalue %dx.types.CBufRet.f32 %1821, 0
  %1823 = extractvalue %dx.types.CBufRet.f32 %1821, 1
  %1824 = extractvalue %dx.types.CBufRet.f32 %1821, 2
  %1825 = extractvalue %dx.types.CBufRet.f32 %1821, 3
  %1826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1827 = extractvalue %dx.types.CBufRet.f32 %1826, 0
  %1828 = extractvalue %dx.types.CBufRet.f32 %1826, 1
  %1829 = extractvalue %dx.types.CBufRet.f32 %1826, 2
  %1830 = extractvalue %dx.types.CBufRet.f32 %1826, 3
  %1831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1832 = extractvalue %dx.types.CBufRet.f32 %1831, 0
  %1833 = extractvalue %dx.types.CBufRet.f32 %1831, 1
  %1834 = extractvalue %dx.types.CBufRet.f32 %1831, 2
  %1835 = extractvalue %dx.types.CBufRet.f32 %1831, 3
  %1836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1837 = extractvalue %dx.types.CBufRet.f32 %1836, 3
  %1838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.f32 %1838, 3
  %1840 = extractvalue %dx.types.CBufRet.f32 %1838, 0
  %1841 = extractvalue %dx.types.CBufRet.f32 %1838, 1
  %1842 = extractvalue %dx.types.CBufRet.f32 %1838, 2
  %1843 = fcmp fast olt float %1842, -5.000000e-01
  %1844 = fmul fast float %189, %188
  %1845 = fadd fast float %1844, %1820
  %1846 = call float @dx.op.dot3.f32(i32 55, float %190, float %191, float %192, float %1817, float %1818, float %1819)  ; Dot3(ax,ay,az,bx,by,bz)
  %1847 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.i32 %1847, 1
  %1849 = and i32 %1848, 1
  %1850 = icmp ne i32 %1849, 0
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 2
  %1853 = fcmp fast ogt float %1852, 0.000000e+00
  %1854 = and i1 %1850, %1853
  br i1 %1854, label %1855, label %2261, !dx.controlflow.hints !97

; <label>:1855                                    ; preds = %1803
  %1856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1857 = extractvalue %dx.types.CBufRet.f32 %1856, 3
  %1858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1859 = extractvalue %dx.types.CBufRet.f32 %1858, 2
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 2
  %1862 = fsub fast float %1859, %1861
  %1863 = and i32 %1848, 2
  %1864 = extractvalue %dx.types.CBufRet.i32 %1847, 0
  %1865 = call i32 @dx.op.binary.i32(i32 40, i32 %1864, i32 3)  ; UMin(a,b)
  %1866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.f32 %1866, 0
  %1868 = extractvalue %dx.types.CBufRet.f32 %1866, 1
  %1869 = extractvalue %dx.types.CBufRet.f32 %1860, 0
  %1870 = extractvalue %dx.types.CBufRet.f32 %1860, 1
  %1871 = fsub fast float %1867, %1869
  %1872 = fsub fast float %1868, %1870
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 0
  %1875 = fcmp fast ogt float %1874, 0.000000e+00
  %1876 = fsub fast float -0.000000e+00, %1871
  %1877 = fsub fast float -0.000000e+00, %1872
  %1878 = call float @dx.op.dot2.f32(i32 54, float %190, float %191, float %190, float %191)  ; Dot2(ax,ay,bx,by)
  %1879 = call float @dx.op.dot2.f32(i32 54, float %190, float %191, float %1876, float %1877)  ; Dot2(ax,ay,bx,by)
  %1880 = fmul fast float %1879, 2.000000e+00
  %1881 = call float @dx.op.dot2.f32(i32 54, float %1876, float %1877, float %1876, float %1877)  ; Dot2(ax,ay,bx,by)
  %1882 = fmul fast float %1874, %1874
  %1883 = fsub fast float %1881, %1882
  %1884 = fmul fast float %1880, %1880
  %1885 = fmul fast float %1878, 4.000000e+00
  %1886 = fmul fast float %1885, %1883
  %1887 = fsub fast float %1884, %1886
  %1888 = fcmp fast ogt float %1887, 0.000000e+00
  br i1 %1888, label %1889, label %1904, !dx.controlflow.hints !98

; <label>:1889                                    ; preds = %1855
  %1890 = fcmp fast ogt float %1880, 0.000000e+00
  %1891 = call float @dx.op.unary.f32(i32 24, float %1887)  ; Sqrt(value)
  %1892 = fsub fast float -0.000000e+00, %1891
  %1893 = select i1 %1890, float %1891, float %1892
  %1894 = fadd fast float %1893, %1880
  %1895 = fmul float %1894, -5.000000e-01
  %1896 = fdiv fast float %1895, %1878
  %1897 = call float @dx.op.binary.f32(i32 35, float %1896, float 0.000000e+00)  ; FMax(a,b)
  %1898 = call float @dx.op.binary.f32(i32 36, float %1844, float %1897)  ; FMin(a,b)
  %1899 = fdiv fast float %1883, %1895
  %1900 = call float @dx.op.binary.f32(i32 35, float %1899, float 0.000000e+00)  ; FMax(a,b)
  %1901 = call float @dx.op.binary.f32(i32 36, float %1844, float %1900)  ; FMin(a,b)
  %1902 = call float @dx.op.binary.f32(i32 36, float %1898, float %1901)  ; FMin(a,b)
  %1903 = call float @dx.op.binary.f32(i32 35, float %1898, float %1901)  ; FMax(a,b)
  br label %1904

; <label>:1904                                    ; preds = %1889, %1855
  %1905 = phi float [ %1903, %1889 ], [ -1.000000e+00, %1855 ]
  %1906 = phi float [ %1902, %1889 ], [ -1.000000e+00, %1855 ]
  %1907 = phi i1 [ true, %1889 ], [ false, %1855 ]
  %1908 = and i1 %1875, %1907
  br i1 %1908, label %1909, label %1911, !dx.controlflow.hints !99

; <label>:1909                                    ; preds = %1904
  %1910 = fcmp fast oeq float %1906, %1905
  br i1 %1910, label %2214, label %1912, !dx.controlflow.hints !100

; <label>:1911                                    ; preds = %1904
  br i1 %1875, label %2214, label %1912, !dx.controlflow.hints !101

; <label>:1912                                    ; preds = %1911, %1909
  %1913 = phi float [ %1844, %1911 ], [ %1905, %1909 ]
  %1914 = phi float [ 0.000000e+00, %1911 ], [ %1906, %1909 ]
  %1915 = icmp ne i32 %1863, 0
  %1916 = fmul fast float %1913, %192
  %1917 = fadd fast float %1916, %1857
  %1918 = fmul fast float %1917, %1913
  %1919 = select i1 %1915, float 0.000000e+00, float %1918
  %1920 = fcmp fast oeq float %192, 0.000000e+00
  %1921 = fdiv fast float %1862, %192
  %1922 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1921)  ; FMax(a,b)
  %1923 = select i1 %1920, float %1913, float %1922
  %1924 = call float @dx.op.binary.f32(i32 36, float %1913, float %1923)  ; FMin(a,b)
  %1925 = fcmp fast ogt float %192, 0.000000e+00
  %1926 = fcmp fast olt float %1862, 0.000000e+00
  br i1 %1925, label %1927, label %1984, !dx.controlflow.hints !102

; <label>:1927                                    ; preds = %1912
  %1928 = icmp eq i32 %1863, 0
  br i1 %1926, label %1929, label %1973, !dx.controlflow.hints !103

; <label>:1929                                    ; preds = %1927
  %1930 = select i1 %1928, float %1913, float 0.000000e+00
  %1931 = fsub fast float -0.000000e+00, %1930
  %1932 = call float @dx.op.unary.f32(i32 6, float %1931)  ; FAbs(value)
  %1933 = fmul fast float %1930, %192
  %1934 = fadd fast float %1933, %1857
  %1935 = fmul fast float %1932, %1934
  %1936 = fsub fast float %1919, %1935
  %1937 = fsub fast float %1913, %1932
  %1938 = select i1 %1928, float %1937, float 0.000000e+00
  %1939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1940 = extractvalue %dx.types.CBufRet.f32 %1939, 0
  %1941 = extractvalue %dx.types.CBufRet.f32 %1939, 1
  %1942 = extractvalue %dx.types.CBufRet.f32 %1939, 2
  %1943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1944 = extractvalue %dx.types.CBufRet.f32 %1943, 0
  %1945 = extractvalue %dx.types.CBufRet.f32 %1943, 1
  %1946 = extractvalue %dx.types.CBufRet.f32 %1943, 2
  %1947 = extractvalue %dx.types.CBufRet.f32 %1943, 3
  %1948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1949 = extractvalue %dx.types.CBufRet.f32 %1948, 3
  %1950 = call float @dx.op.binary.f32(i32 36, float %1936, float %1949)  ; FMin(a,b)
  %1951 = fmul fast float %1947, %1938
  %1952 = call float @dx.op.unary.f32(i32 7, float %1951)  ; Saturate(value)
  %1953 = fsub fast float %1944, %1940
  %1954 = fsub fast float %1945, %1941
  %1955 = fsub fast float %1946, %1942
  %1956 = fmul fast float %1952, %1953
  %1957 = fmul fast float %1952, %1954
  %1958 = fmul fast float %1952, %1955
  %1959 = fadd fast float %1956, %1940
  %1960 = fadd fast float %1957, %1941
  %1961 = fadd fast float %1958, %1942
  %1962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1963 = extractvalue %dx.types.CBufRet.f32 %1962, 0
  %1964 = extractvalue %dx.types.CBufRet.f32 %1962, 1
  %1965 = fadd fast float %1964, %1963
  %1966 = call float @dx.op.unary.f32(i32 7, float %1965)  ; Saturate(value)
  %1967 = extractvalue %dx.types.CBufRet.f32 %1962, 2
  %1968 = extractvalue %dx.types.CBufRet.f32 %1962, 3
  %1969 = fadd fast float %1968, %1967
  %1970 = call float @dx.op.unary.f32(i32 7, float %1969)  ; Saturate(value)
  %1971 = fmul fast float %1966, %1950
  %1972 = fmul fast float %1971, %1970
  br label %2214

; <label>:1973                                    ; preds = %1927
  br i1 %1928, label %1974, label %1995, !dx.controlflow.hints !104

; <label>:1974                                    ; preds = %1973
  %1975 = call float @dx.op.binary.f32(i32 36, float %1924, float %1914)  ; FMin(a,b)
  %1976 = fsub fast float %1924, %1975
  %1977 = fsub fast float %1976, %1913
  %1978 = call float @dx.op.unary.f32(i32 6, float %1977)  ; FAbs(value)
  %1979 = fadd fast float %1976, %1913
  %1980 = fmul fast float %1979, %192
  %1981 = fadd fast float %1980, %1857
  %1982 = fmul fast float %1981, %1978
  %1983 = fsub fast float %1919, %1982
  br label %1995

; <label>:1984                                    ; preds = %1912
  br i1 %1926, label %1985, label %1995, !dx.controlflow.hints !105

; <label>:1985                                    ; preds = %1984
  %1986 = call float @dx.op.binary.f32(i32 35, float %1914, float %1924)  ; FMax(a,b)
  %1987 = icmp eq i32 %1863, 0
  %1988 = select i1 %1987, float %1924, float 0.000000e+00
  %1989 = fsub fast float -0.000000e+00, %1988
  %1990 = call float @dx.op.unary.f32(i32 6, float %1989)  ; FAbs(value)
  %1991 = fmul fast float %1988, %192
  %1992 = fadd fast float %1991, %1857
  %1993 = fmul fast float %1990, %1992
  %1994 = fsub fast float %1919, %1993
  br label %1995

; <label>:1995                                    ; preds = %1985, %1984, %1974, %1973
  %1996 = phi float [ %1914, %1973 ], [ %1914, %1974 ], [ %1986, %1985 ], [ %1914, %1984 ]
  %1997 = phi float [ 0.000000e+00, %1973 ], [ %1978, %1974 ], [ %1990, %1985 ], [ 0.000000e+00, %1984 ]
  %1998 = phi float [ %1919, %1973 ], [ %1983, %1974 ], [ %1994, %1985 ], [ %1919, %1984 ]
  %1999 = phi float [ %1924, %1973 ], [ %1924, %1974 ], [ %1913, %1985 ], [ %1913, %1984 ]
  %2000 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 0
  store float -1.000000e+00, float* %2000, align 4, !tbaa !42, !noalias !106
  %2001 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 1
  store float -1.000000e+00, float* %2001, align 4, !tbaa !42, !noalias !106
  %2002 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 2
  store float -1.000000e+00, float* %2002, align 4, !tbaa !42, !noalias !106
  %2003 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 0
  store float -1.000000e+00, float* %2003, align 4, !tbaa !42, !noalias !106
  %2004 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 1
  store float -1.000000e+00, float* %2004, align 4, !tbaa !42, !noalias !106
  %2005 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 2
  store float -1.000000e+00, float* %2005, align 4, !tbaa !42, !noalias !106
  %2006 = icmp sgt i32 %1865, 0
  br i1 %2006, label %2007, label %2068

; <label>:2007                                    ; preds = %1995
  br label %2008

; <label>:2008                                    ; preds = %2057, %2007
  %2009 = phi i32 [ %2058, %2057 ], [ 0, %2007 ]
  %2010 = phi i32 [ %2059, %2057 ], [ 0, %2007 ]
  %2011 = add nuw i32 %2010, 171
  %2012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 %2011)  ; CBufferLoadLegacy(handle,regIndex)
  %2013 = extractvalue %dx.types.CBufRet.f32 %2012, 0
  %2014 = extractvalue %dx.types.CBufRet.f32 %2012, 1
  %2015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2016 = extractvalue %dx.types.CBufRet.f32 %2015, 0
  %2017 = extractvalue %dx.types.CBufRet.f32 %2015, 1
  %2018 = fsub fast float %2013, %2016
  %2019 = fsub fast float %2014, %2017
  %2020 = extractvalue %dx.types.CBufRet.f32 %2012, 2
  %2021 = fsub fast float -0.000000e+00, %2018
  %2022 = fsub fast float -0.000000e+00, %2019
  %2023 = call float @dx.op.dot2.f32(i32 54, float %190, float %191, float %2021, float %2022)  ; Dot2(ax,ay,bx,by)
  %2024 = fmul fast float %2023, 2.000000e+00
  %2025 = call float @dx.op.dot2.f32(i32 54, float %2021, float %2022, float %2021, float %2022)  ; Dot2(ax,ay,bx,by)
  %2026 = fmul fast float %2020, %2020
  %2027 = fsub fast float %2025, %2026
  %2028 = fmul fast float %2024, %2024
  %2029 = fmul fast float %1885, %2027
  %2030 = fsub fast float %2028, %2029
  %2031 = fcmp fast ogt float %2030, 0.000000e+00
  br i1 %2031, label %2032, label %2047, !dx.controlflow.hints !98

; <label>:2032                                    ; preds = %2008
  %2033 = fcmp fast ogt float %2024, 0.000000e+00
  %2034 = call float @dx.op.unary.f32(i32 24, float %2030)  ; Sqrt(value)
  %2035 = fsub fast float -0.000000e+00, %2034
  %2036 = select i1 %2033, float %2034, float %2035
  %2037 = fadd fast float %2036, %2024
  %2038 = fmul float %2037, -5.000000e-01
  %2039 = fdiv fast float %2038, %1878
  %2040 = call float @dx.op.binary.f32(i32 35, float %2039, float 0.000000e+00)  ; FMax(a,b)
  %2041 = call float @dx.op.binary.f32(i32 36, float %1913, float %2040)  ; FMin(a,b)
  %2042 = fdiv fast float %2027, %2038
  %2043 = call float @dx.op.binary.f32(i32 35, float %2042, float 0.000000e+00)  ; FMax(a,b)
  %2044 = call float @dx.op.binary.f32(i32 36, float %1913, float %2043)  ; FMin(a,b)
  %2045 = call float @dx.op.binary.f32(i32 36, float %2041, float %2044)  ; FMin(a,b)
  %2046 = call float @dx.op.binary.f32(i32 35, float %2041, float %2044)  ; FMax(a,b)
  br label %2047

; <label>:2047                                    ; preds = %2032, %2008
  %2048 = phi float [ %2046, %2032 ], [ -1.000000e+00, %2008 ]
  %2049 = phi float [ %2045, %2032 ], [ -1.000000e+00, %2008 ]
  %2050 = phi i1 [ true, %2032 ], [ false, %2008 ]
  br i1 %2050, label %2051, label %2057, !dx.controlflow.hints !112

; <label>:2051                                    ; preds = %2047
  %2052 = call float @dx.op.binary.f32(i32 35, float %1996, float %2049)  ; FMax(a,b)
  %2053 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 %2010
  store float %2052, float* %2053, align 4, !tbaa !42, !noalias !106
  %2054 = call float @dx.op.binary.f32(i32 35, float %1996, float %2048)  ; FMax(a,b)
  %2055 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 %2010
  store float %2054, float* %2055, align 4, !tbaa !42, !noalias !106
  %2056 = add nsw i32 %2009, 1
  br label %2057

; <label>:2057                                    ; preds = %2051, %2047
  %2058 = phi i32 [ %2056, %2051 ], [ %2009, %2047 ]
  %2059 = add nuw nsw i32 %2010, 1
  %2060 = icmp eq i32 %2059, %1865
  br i1 %2060, label %2061, label %2008

; <label>:2061                                    ; preds = %2057
  %2062 = load float, float* %2002, align 4, !tbaa !42, !alias.scope !113, !noalias !116
  %2063 = load float, float* %2001, align 4, !tbaa !42, !alias.scope !119, !noalias !120
  %2064 = load float, float* %2000, align 4, !tbaa !42, !alias.scope !121, !noalias !122
  %2065 = load float, float* %2005, align 4, !tbaa !42, !alias.scope !123, !noalias !126
  %2066 = load float, float* %2004, align 4, !tbaa !42, !alias.scope !129, !noalias !130
  %2067 = load float, float* %2003, align 4, !tbaa !42, !alias.scope !131, !noalias !132
  br label %2068

; <label>:2068                                    ; preds = %2061, %1995
  %2069 = phi float [ -1.000000e+00, %1995 ], [ %2067, %2061 ]
  %2070 = phi float [ -1.000000e+00, %1995 ], [ %2066, %2061 ]
  %2071 = phi float [ -1.000000e+00, %1995 ], [ %2065, %2061 ]
  %2072 = phi float [ -1.000000e+00, %1995 ], [ %2064, %2061 ]
  %2073 = phi float [ -1.000000e+00, %1995 ], [ %2063, %2061 ]
  %2074 = phi float [ -1.000000e+00, %1995 ], [ %2062, %2061 ]
  %2075 = phi i32 [ 0, %1995 ], [ %2058, %2061 ]
  %2076 = call float @dx.op.binary.f32(i32 36, float %2073, float %2074)  ; FMin(a,b)
  %2077 = call float @dx.op.binary.f32(i32 36, float %2072, float %2076)  ; FMin(a,b)
  %2078 = call float @dx.op.binary.f32(i32 35, float %2072, float %2073)  ; FMax(a,b)
  %2079 = call float @dx.op.binary.f32(i32 36, float %2078, float %2074)  ; FMin(a,b)
  %2080 = call float @dx.op.binary.f32(i32 36, float %2072, float %2073)  ; FMin(a,b)
  %2081 = call float @dx.op.binary.f32(i32 35, float %2080, float %2079)  ; FMax(a,b)
  %2082 = call float @dx.op.binary.f32(i32 35, float %2073, float %2074)  ; FMax(a,b)
  %2083 = call float @dx.op.binary.f32(i32 35, float %2072, float %2082)  ; FMax(a,b)
  store float %2077, float* %2000, align 4, !tbaa !42, !alias.scope !121, !noalias !122
  store float %2081, float* %2001, align 4, !tbaa !42, !alias.scope !119, !noalias !120
  store float %2083, float* %2002, align 4, !tbaa !42, !alias.scope !113, !noalias !116
  %2084 = call float @dx.op.binary.f32(i32 36, float %2070, float %2071)  ; FMin(a,b)
  %2085 = call float @dx.op.binary.f32(i32 36, float %2069, float %2084)  ; FMin(a,b)
  %2086 = call float @dx.op.binary.f32(i32 35, float %2069, float %2070)  ; FMax(a,b)
  %2087 = call float @dx.op.binary.f32(i32 36, float %2086, float %2071)  ; FMin(a,b)
  %2088 = call float @dx.op.binary.f32(i32 36, float %2069, float %2070)  ; FMin(a,b)
  %2089 = call float @dx.op.binary.f32(i32 35, float %2088, float %2087)  ; FMax(a,b)
  %2090 = call float @dx.op.binary.f32(i32 35, float %2070, float %2071)  ; FMax(a,b)
  %2091 = call float @dx.op.binary.f32(i32 35, float %2069, float %2090)  ; FMax(a,b)
  store float %2085, float* %2003, align 4, !tbaa !42, !alias.scope !131, !noalias !132
  store float %2089, float* %2004, align 4, !tbaa !42, !alias.scope !129, !noalias !130
  store float %2091, float* %2005, align 4, !tbaa !42, !alias.scope !123, !noalias !126
  %2092 = sub nsw i32 3, %2075
  %2093 = icmp sgt i32 %2092, 2
  br i1 %2093, label %2094, label %2132, !dx.controlflow.hints !133

; <label>:2094                                    ; preds = %2068
  %2095 = icmp eq i32 %1863, 0
  %2096 = fsub fast float %1913, %1997
  %2097 = select i1 %2095, float %2096, float %1997
  %2098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2099 = extractvalue %dx.types.CBufRet.f32 %2098, 0
  %2100 = extractvalue %dx.types.CBufRet.f32 %2098, 1
  %2101 = extractvalue %dx.types.CBufRet.f32 %2098, 2
  %2102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2103 = extractvalue %dx.types.CBufRet.f32 %2102, 0
  %2104 = extractvalue %dx.types.CBufRet.f32 %2102, 1
  %2105 = extractvalue %dx.types.CBufRet.f32 %2102, 2
  %2106 = extractvalue %dx.types.CBufRet.f32 %2102, 3
  %2107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2108 = extractvalue %dx.types.CBufRet.f32 %2107, 3
  %2109 = call float @dx.op.binary.f32(i32 36, float %1998, float %2108)  ; FMin(a,b)
  %2110 = fmul fast float %2106, %2097
  %2111 = call float @dx.op.unary.f32(i32 7, float %2110)  ; Saturate(value)
  %2112 = fsub fast float %2103, %2099
  %2113 = fsub fast float %2104, %2100
  %2114 = fsub fast float %2105, %2101
  %2115 = fmul fast float %2111, %2112
  %2116 = fmul fast float %2111, %2113
  %2117 = fmul fast float %2111, %2114
  %2118 = fadd fast float %2115, %2099
  %2119 = fadd fast float %2116, %2100
  %2120 = fadd fast float %2117, %2101
  %2121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2122 = extractvalue %dx.types.CBufRet.f32 %2121, 0
  %2123 = extractvalue %dx.types.CBufRet.f32 %2121, 1
  %2124 = fadd fast float %2123, %2122
  %2125 = call float @dx.op.unary.f32(i32 7, float %2124)  ; Saturate(value)
  %2126 = extractvalue %dx.types.CBufRet.f32 %2121, 2
  %2127 = extractvalue %dx.types.CBufRet.f32 %2121, 3
  %2128 = fadd fast float %2127, %2126
  %2129 = call float @dx.op.unary.f32(i32 7, float %2128)  ; Saturate(value)
  %2130 = fmul fast float %2125, %2109
  %2131 = fmul fast float %2130, %2129
  br label %2214

; <label>:2132                                    ; preds = %2068
  %2133 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 %2092
  %2134 = load float, float* %2133, align 4, !tbaa !42, !noalias !106
  %2135 = fcmp fast olt float %2134, %1999
  %2136 = icmp sgt i32 %2075, 0
  %2137 = and i1 %2136, %2135
  br i1 %2137, label %2138, label %2175

; <label>:2138                                    ; preds = %2132
  br label %2139

; <label>:2139                                    ; preds = %2168, %2138
  %2140 = phi float [ %2169, %2168 ], [ %1997, %2138 ]
  %2141 = phi float [ %2170, %2168 ], [ %1998, %2138 ]
  %2142 = phi float [ %2150, %2168 ], [ %2134, %2138 ]
  %2143 = phi i32 [ %2147, %2168 ], [ %2092, %2138 ]
  %2144 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 %2143
  %2145 = load float, float* %2144, align 4, !tbaa !42, !noalias !106
  %2146 = icmp slt i32 %2143, 2
  %2147 = add nsw i32 %2143, 1
  %2148 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 %2147
  %2149 = load float, float* %2148, align 4, !tbaa !42, !noalias !106
  %2150 = select i1 %2146, float %2149, float %1913
  %2151 = call float @dx.op.binary.f32(i32 36, float %2150, float %2145)  ; FMin(a,b)
  %2152 = call float @dx.op.binary.f32(i32 36, float %1999, float %2151)  ; FMin(a,b)
  %2153 = icmp eq i32 %1863, 0
  %2154 = fadd fast float %2152, %2142
  %2155 = fmul fast float %2154, %192
  %2156 = fadd fast float %2155, %1857
  br i1 %2153, label %2162, label %2157, !dx.controlflow.hints !134

; <label>:2157                                    ; preds = %2139
  %2158 = fsub fast float %2152, %2142
  %2159 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2158)  ; FMax(a,b)
  %2160 = fmul fast float %2159, %2156
  %2161 = fadd fast float %2160, %2141
  br label %2168

; <label>:2162                                    ; preds = %2139
  %2163 = fsub fast float %2142, %2152
  %2164 = call float @dx.op.unary.f32(i32 6, float %2163)  ; FAbs(value)
  %2165 = fadd fast float %2164, %2140
  %2166 = fmul fast float %2164, %2156
  %2167 = fsub fast float %2141, %2166
  br label %2168

; <label>:2168                                    ; preds = %2162, %2157
  %2169 = phi float [ %2159, %2157 ], [ %2165, %2162 ]
  %2170 = phi float [ %2161, %2157 ], [ %2167, %2162 ]
  %2171 = fcmp fast olt float %2150, %1999
  %2172 = icmp slt i32 %2147, 3
  %2173 = and i1 %2172, %2171
  br i1 %2173, label %2139, label %2174

; <label>:2174                                    ; preds = %2168
  br label %2175

; <label>:2175                                    ; preds = %2174, %2132
  %2176 = phi float [ %1997, %2132 ], [ %2169, %2174 ]
  %2177 = phi float [ %1998, %2132 ], [ %2170, %2174 ]
  %2178 = fsub fast float %1913, %2176
  %2179 = select i1 %1915, float %2176, float %2178
  %2180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2181 = extractvalue %dx.types.CBufRet.f32 %2180, 0
  %2182 = extractvalue %dx.types.CBufRet.f32 %2180, 1
  %2183 = extractvalue %dx.types.CBufRet.f32 %2180, 2
  %2184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2185 = extractvalue %dx.types.CBufRet.f32 %2184, 0
  %2186 = extractvalue %dx.types.CBufRet.f32 %2184, 1
  %2187 = extractvalue %dx.types.CBufRet.f32 %2184, 2
  %2188 = extractvalue %dx.types.CBufRet.f32 %2184, 3
  %2189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2190 = extractvalue %dx.types.CBufRet.f32 %2189, 3
  %2191 = call float @dx.op.binary.f32(i32 36, float %2177, float %2190)  ; FMin(a,b)
  %2192 = fmul fast float %2188, %2179
  %2193 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  %2194 = fsub fast float %2185, %2181
  %2195 = fsub fast float %2186, %2182
  %2196 = fsub fast float %2187, %2183
  %2197 = fmul fast float %2193, %2194
  %2198 = fmul fast float %2193, %2195
  %2199 = fmul fast float %2193, %2196
  %2200 = fadd fast float %2197, %2181
  %2201 = fadd fast float %2198, %2182
  %2202 = fadd fast float %2199, %2183
  %2203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2204 = extractvalue %dx.types.CBufRet.f32 %2203, 0
  %2205 = extractvalue %dx.types.CBufRet.f32 %2203, 1
  %2206 = fadd fast float %2205, %2204
  %2207 = call float @dx.op.unary.f32(i32 7, float %2206)  ; Saturate(value)
  %2208 = extractvalue %dx.types.CBufRet.f32 %2203, 2
  %2209 = extractvalue %dx.types.CBufRet.f32 %2203, 3
  %2210 = fadd fast float %2209, %2208
  %2211 = call float @dx.op.unary.f32(i32 7, float %2210)  ; Saturate(value)
  %2212 = fmul fast float %2207, %2191
  %2213 = fmul fast float %2212, %2211
  br label %2214

; <label>:2214                                    ; preds = %2175, %2094, %1929, %1911, %1909
  %2215 = phi float [ %1938, %1929 ], [ %2097, %2094 ], [ %2179, %2175 ], [ 0.000000e+00, %1909 ], [ 0.000000e+00, %1911 ]
  %2216 = phi float [ %1972, %1929 ], [ %2131, %2094 ], [ %2213, %2175 ], [ 0.000000e+00, %1909 ], [ 0.000000e+00, %1911 ]
  %2217 = phi float [ %1959, %1929 ], [ %2118, %2094 ], [ %2200, %2175 ], [ 0.000000e+00, %1909 ], [ 0.000000e+00, %1911 ]
  %2218 = phi float [ %1960, %1929 ], [ %2119, %2094 ], [ %2201, %2175 ], [ 0.000000e+00, %1909 ], [ 0.000000e+00, %1911 ]
  %2219 = phi float [ %1961, %1929 ], [ %2120, %2094 ], [ %2202, %2175 ], [ 0.000000e+00, %1909 ], [ 0.000000e+00, %1911 ]
  %2220 = fmul fast float %1852, %2216
  %2221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2222 = extractvalue %dx.types.CBufRet.f32 %2221, 2
  %2223 = fsub fast float %1859, %2222
  %2224 = fcmp fast olt float %2220, -2.000000e+01
  %2225 = call float @dx.op.unary.f32(i32 21, float %2220)  ; Exp(value)
  %2226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2227 = extractvalue %dx.types.CBufRet.f32 %2226, 2
  %2228 = extractvalue %dx.types.CBufRet.f32 %2226, 3
  %2229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2230 = extractvalue %dx.types.CBufRet.f32 %2229, 2
  %2231 = fmul fast float %2228, %2223
  %2232 = call float @dx.op.unary.f32(i32 7, float %2231)  ; Saturate(value)
  %2233 = fsub fast float 1.000000e+00, %2232
  %2234 = fmul fast float %192, 5.000000e-01
  %2235 = fadd fast float %2234, 5.000000e-01
  %2236 = call float @dx.op.unary.f32(i32 7, float %2235)  ; Saturate(value)
  %2237 = fsub fast float 1.000000e+00, %2236
  %2238 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2233)  ; FMax(a,b)
  %2239 = fdiv fast float %2237, %2238
  %2240 = fsub fast float %2223, %180
  %2241 = call float @dx.op.unary.f32(i32 6, float %2240)  ; FAbs(value)
  %2242 = fmul fast float %2241, %2227
  %2243 = call float @dx.op.unary.f32(i32 7, float %2239)  ; Saturate(value)
  %2244 = fsub fast float 1.000000e+00, %2242
  %2245 = fmul fast float %2244, %2243
  %2246 = fadd fast float %2245, %2242
  %2247 = fmul fast float %2230, %2223
  %2248 = call float @dx.op.unary.f32(i32 7, float %2247)  ; Saturate(value)
  %2249 = fsub fast float 1.000000e+00, %2246
  %2250 = fmul fast float %2249, %2248
  %2251 = fadd fast float %2250, %2246
  %2252 = call float @dx.op.unary.f32(i32 7, float %2251)  ; Saturate(value)
  %2253 = fadd fast float %2225, -1.000000e+00
  %2254 = select i1 %2224, float -1.000000e+00, float %2253
  %2255 = fmul fast float %2252, %2254
  %2256 = fadd fast float %2255, 1.000000e+00
  %2257 = fsub fast float -0.000000e+00, %2255
  %2258 = fmul fast float %2217, %2257
  %2259 = fmul fast float %2218, %2257
  %2260 = fmul fast float %2219, %2257
  br label %2261

; <label>:2261                                    ; preds = %2214, %1803
  %2262 = phi float [ %2215, %2214 ], [ 0.000000e+00, %1803 ]
  %2263 = phi float [ %2256, %2214 ], [ 1.000000e+00, %1803 ]
  %2264 = phi float [ %2258, %2214 ], [ 0.000000e+00, %1803 ]
  %2265 = phi float [ %2259, %2214 ], [ 0.000000e+00, %1803 ]
  %2266 = phi float [ %2260, %2214 ], [ 0.000000e+00, %1803 ]
  %2267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2268 = extractvalue %dx.types.CBufRet.f32 %2267, 1
  %2269 = fsub fast float 1.000000e+00, %2263
  %2270 = fmul fast float %2269, %1845
  %2271 = fmul fast float %2270, %2268
  %2272 = fsub fast float %1845, %2271
  br i1 %1843, label %2273, label %2302, !dx.controlflow.hints !135

; <label>:2273                                    ; preds = %2261
  %2274 = fmul fast float %1846, %1840
  %2275 = fadd fast float %2274, %1841
  %2276 = call float @dx.op.unary.f32(i32 7, float %2275)  ; Saturate(value)
  %2277 = fmul fast float %1822, %2272
  %2278 = fsub fast float -0.000000e+00, %2277
  %2279 = fmul fast float %1823, %2272
  %2280 = fsub fast float -0.000000e+00, %2279
  %2281 = call float @dx.op.unary.f32(i32 21, float %2278)  ; Exp(value)
  %2282 = call float @dx.op.unary.f32(i32 21, float %2280)  ; Exp(value)
  %2283 = call float @dx.op.binary.f32(i32 35, float %1830, float %2281)  ; FMax(a,b)
  %2284 = call float @dx.op.binary.f32(i32 35, float %1830, float %2282)  ; FMax(a,b)
  %2285 = fsub fast float %2284, %2283
  %2286 = fmul fast float %2285, %2276
  %2287 = fadd fast float %2286, %2283
  %2288 = call float @dx.op.unary.f32(i32 7, float %2287)  ; Saturate(value)
  %2289 = fsub fast float %1827, %1832
  %2290 = fsub fast float %1828, %1833
  %2291 = fsub fast float %1829, %1834
  %2292 = fmul fast float %2276, %2289
  %2293 = fmul fast float %2276, %2290
  %2294 = fmul fast float %2276, %2291
  %2295 = fadd fast float %2292, %1832
  %2296 = fadd fast float %2293, %1833
  %2297 = fadd fast float %2294, %1834
  %2298 = fsub fast float 1.000000e+00, %2288
  %2299 = fmul fast float %2298, %2295
  %2300 = fmul fast float %2298, %2296
  %2301 = fmul fast float %2298, %2297
  br label %2361

; <label>:2302                                    ; preds = %2261
  %2303 = fmul fast float %2272, %1839
  %2304 = call float @dx.op.unary.f32(i32 7, float %2303)  ; Saturate(value)
  %2305 = fsub fast float 2.000000e+00, %2304
  %2306 = fmul fast float %2304, 9.921875e-01
  %2307 = fmul fast float %2306, %2305
  %2308 = fadd fast float %2307, 3.906250e-03
  %2309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %25, float %2308, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2310 = extractvalue %dx.types.ResRet.f32 %2309, 0
  %2311 = fsub fast float %2304, %2310
  %2312 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2311)  ; FMax(a,b)
  %2313 = fmul fast float %1825, %180
  %2314 = call float @dx.op.unary.f32(i32 6, float %2313)  ; FAbs(value)
  %2315 = fcmp fast ogt float %2314, 0x3EB0C6F7A0000000
  br i1 %2315, label %2316, label %2322, !dx.controlflow.hints !136

; <label>:2316                                    ; preds = %2302
  %2317 = fmul fast float %2313, 0xBFF7154760000000
  %2318 = call float @dx.op.unary.f32(i32 21, float %2317)  ; Exp(value)
  %2319 = fsub fast float 1.000000e+00, %2318
  %2320 = fdiv fast float %2319, %2313
  %2321 = fmul fast float %2320, %1835
  br label %2322

; <label>:2322                                    ; preds = %2316, %2302
  %2323 = phi float [ %2321, %2316 ], [ %1835, %2302 ]
  %2324 = fadd fast float %2323, %1837
  %2325 = fmul fast float %2324, %2312
  %2326 = fmul fast float %1822, %2325
  %2327 = fsub fast float -0.000000e+00, %2326
  %2328 = fmul fast float %1823, %2325
  %2329 = fsub fast float -0.000000e+00, %2328
  %2330 = fmul fast float %1824, %2325
  %2331 = fsub fast float -0.000000e+00, %2330
  %2332 = call float @dx.op.unary.f32(i32 21, float %2327)  ; Exp(value)
  %2333 = call float @dx.op.unary.f32(i32 21, float %2329)  ; Exp(value)
  %2334 = call float @dx.op.unary.f32(i32 21, float %2331)  ; Exp(value)
  %2335 = fmul fast float %1846, %1846
  %2336 = fadd fast float %2335, 1.000000e+00
  %2337 = fmul fast float %2336, 0x3FAE8EC8A0000000
  %2338 = fmul fast float %2337, %1832
  %2339 = fmul fast float %2337, %1833
  %2340 = fmul fast float %2337, %1834
  %2341 = fmul fast float %1846, %1830
  %2342 = fsub fast float 1.000000e+00, %2341
  %2343 = fmul fast float %1830, %1830
  %2344 = fsub fast float 1.000000e+00, %2343
  %2345 = fmul fast float %2344, 0x3FB45F3060000000
  %2346 = fmul fast float %2342, %2342
  %2347 = fdiv fast float 1.000000e+00, %2346
  %2348 = fmul fast float %2345, %2347
  %2349 = fmul fast float %2348, %1827
  %2350 = fmul fast float %2348, %1828
  %2351 = fmul fast float %2348, %1829
  %2352 = fadd fast float %2349, %2338
  %2353 = fadd fast float %2350, %2339
  %2354 = fadd fast float %2351, %2340
  %2355 = fsub fast float 1.000000e+00, %2332
  %2356 = fsub fast float 1.000000e+00, %2333
  %2357 = fsub fast float 1.000000e+00, %2334
  %2358 = fmul fast float %2352, %2355
  %2359 = fmul fast float %2353, %2356
  %2360 = fmul fast float %2354, %2357
  br label %2361

; <label>:2361                                    ; preds = %2322, %2273
  %2362 = phi float [ %2299, %2273 ], [ %2358, %2322 ]
  %2363 = phi float [ %2300, %2273 ], [ %2359, %2322 ]
  %2364 = phi float [ %2301, %2273 ], [ %2360, %2322 ]
  %2365 = phi float [ %2288, %2273 ], [ %2332, %2322 ]
  %2366 = phi float [ %2288, %2273 ], [ %2333, %2322 ]
  %2367 = phi float [ %2288, %2273 ], [ %2334, %2322 ]
  br i1 %1854, label %2368, label %2566, !dx.controlflow.hints !137

; <label>:2368                                    ; preds = %2361
  %2369 = extractvalue %dx.types.CBufRet.f32 %2267, 0
  %2370 = fmul fast float %2369, %2269
  %2371 = fsub fast float %2264, %2362
  %2372 = fsub fast float %2265, %2363
  %2373 = fsub fast float %2266, %2364
  %2374 = fmul fast float %2370, %2371
  %2375 = fmul fast float %2370, %2372
  %2376 = fmul fast float %2370, %2373
  %2377 = fadd fast float %2374, %2362
  %2378 = fadd fast float %2375, %2363
  %2379 = fadd fast float %2376, %2364
  %2380 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2365)  ; FMax(a,b)
  %2381 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2366)  ; FMax(a,b)
  %2382 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2367)  ; FMax(a,b)
  %2383 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2263)  ; FMax(a,b)
  %2384 = call float @dx.op.binary.f32(i32 35, float %2262, float %2272)  ; FMax(a,b)
  %2385 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2384)  ; FMax(a,b)
  %2386 = fdiv fast float %2262, %2385
  %2387 = call float @dx.op.unary.f32(i32 7, float %2386)  ; Saturate(value)
  %2388 = fdiv fast float %2272, %2385
  %2389 = call float @dx.op.unary.f32(i32 7, float %2388)  ; Saturate(value)
  %2390 = fcmp fast une float %2383, 1.000000e+00
  br i1 %2390, label %2391, label %2404, !dx.controlflow.hints !138

; <label>:2391                                    ; preds = %2368
  %2392 = call float @dx.op.unary.f32(i32 23, float %2383)  ; Log(value)
  %2393 = fmul fast float %2392, 0x3FE62E4300000000
  %2394 = fmul fast float %2264, %2393
  %2395 = fsub fast float -0.000000e+00, %2394
  %2396 = fmul fast float %2265, %2393
  %2397 = fsub fast float -0.000000e+00, %2396
  %2398 = fmul fast float %2266, %2393
  %2399 = fsub fast float -0.000000e+00, %2398
  %2400 = fsub fast float 1.000000e+00, %2383
  %2401 = fdiv fast float %2395, %2400
  %2402 = fdiv fast float %2397, %2400
  %2403 = fdiv fast float %2399, %2400
  br label %2404

; <label>:2404                                    ; preds = %2391, %2368
  %2405 = phi float [ %2401, %2391 ], [ %2264, %2368 ]
  %2406 = phi float [ %2402, %2391 ], [ %2265, %2368 ]
  %2407 = phi float [ %2403, %2391 ], [ %2266, %2368 ]
  %2408 = phi float [ %2393, %2391 ], [ 0.000000e+00, %2368 ]
  %2409 = fcmp fast une float %2380, 1.000000e+00
  br i1 %2409, label %2410, label %2417, !dx.controlflow.hints !139

; <label>:2410                                    ; preds = %2404
  %2411 = call float @dx.op.unary.f32(i32 23, float %2380)  ; Log(value)
  %2412 = fmul fast float %2411, 0x3FE62E4300000000
  %2413 = fmul fast float %2377, %2412
  %2414 = fsub fast float -0.000000e+00, %2413
  %2415 = fsub fast float 1.000000e+00, %2380
  %2416 = fdiv fast float %2414, %2415
  br label %2417

; <label>:2417                                    ; preds = %2410, %2404
  %2418 = phi float [ %2416, %2410 ], [ %2377, %2404 ]
  %2419 = phi float [ %2412, %2410 ], [ 0.000000e+00, %2404 ]
  %2420 = fcmp fast une float %2381, 1.000000e+00
  br i1 %2420, label %2421, label %2428, !dx.controlflow.hints !139

; <label>:2421                                    ; preds = %2417
  %2422 = call float @dx.op.unary.f32(i32 23, float %2381)  ; Log(value)
  %2423 = fmul fast float %2422, 0x3FE62E4300000000
  %2424 = fmul fast float %2378, %2423
  %2425 = fsub fast float -0.000000e+00, %2424
  %2426 = fsub fast float 1.000000e+00, %2381
  %2427 = fdiv fast float %2425, %2426
  br label %2428

; <label>:2428                                    ; preds = %2421, %2417
  %2429 = phi float [ %2427, %2421 ], [ %2378, %2417 ]
  %2430 = phi float [ %2423, %2421 ], [ 0.000000e+00, %2417 ]
  %2431 = fcmp fast une float %2382, 1.000000e+00
  br i1 %2431, label %2432, label %2439, !dx.controlflow.hints !139

; <label>:2432                                    ; preds = %2428
  %2433 = call float @dx.op.unary.f32(i32 23, float %2382)  ; Log(value)
  %2434 = fmul fast float %2433, 0x3FE62E4300000000
  %2435 = fmul fast float %2379, %2434
  %2436 = fsub fast float -0.000000e+00, %2435
  %2437 = fsub fast float 1.000000e+00, %2382
  %2438 = fdiv fast float %2436, %2437
  br label %2439

; <label>:2439                                    ; preds = %2432, %2428
  %2440 = phi float [ %2438, %2432 ], [ %2379, %2428 ]
  %2441 = phi float [ %2434, %2432 ], [ 0.000000e+00, %2428 ]
  %2442 = fmul fast float %2405, %2389
  %2443 = fmul fast float %2406, %2389
  %2444 = fmul fast float %2407, %2389
  %2445 = fmul fast float %2408, %2389
  %2446 = fmul fast float %2418, %2387
  %2447 = fmul fast float %2429, %2387
  %2448 = fmul fast float %2440, %2387
  %2449 = fmul fast float %2419, %2387
  %2450 = fmul fast float %2430, %2387
  %2451 = fmul fast float %2441, %2387
  %2452 = fadd fast float %2446, %2442
  %2453 = fadd fast float %2447, %2443
  %2454 = fadd fast float %2448, %2444
  %2455 = fadd fast float %2449, %2445
  %2456 = fadd fast float %2450, %2445
  %2457 = fadd fast float %2451, %2445
  %2458 = fcmp fast une float %2455, 0.000000e+00
  br i1 %2458, label %2459, label %2466, !dx.controlflow.hints !140

; <label>:2459                                    ; preds = %2439
  %2460 = fmul fast float %2455, 0x3FF7154760000000
  %2461 = call float @dx.op.unary.f32(i32 21, float %2460)  ; Exp(value)
  %2462 = fsub fast float 1.000000e+00, %2461
  %2463 = fmul fast float %2452, %2462
  %2464 = fsub fast float -0.000000e+00, %2463
  %2465 = fdiv fast float %2464, %2455
  br label %2466

; <label>:2466                                    ; preds = %2459, %2439
  %2467 = phi float [ %2461, %2459 ], [ 1.000000e+00, %2439 ]
  %2468 = phi float [ %2465, %2459 ], [ %2452, %2439 ]
  %2469 = fcmp fast une float %2456, 0.000000e+00
  br i1 %2469, label %2470, label %2477, !dx.controlflow.hints !140

; <label>:2470                                    ; preds = %2466
  %2471 = fmul fast float %2456, 0x3FF7154760000000
  %2472 = call float @dx.op.unary.f32(i32 21, float %2471)  ; Exp(value)
  %2473 = fsub fast float 1.000000e+00, %2472
  %2474 = fmul fast float %2453, %2473
  %2475 = fsub fast float -0.000000e+00, %2474
  %2476 = fdiv fast float %2475, %2456
  br label %2477

; <label>:2477                                    ; preds = %2470, %2466
  %2478 = phi float [ %2472, %2470 ], [ 1.000000e+00, %2466 ]
  %2479 = phi float [ %2476, %2470 ], [ %2453, %2466 ]
  %2480 = fcmp fast une float %2457, 0.000000e+00
  br i1 %2480, label %2481, label %2488, !dx.controlflow.hints !140

; <label>:2481                                    ; preds = %2477
  %2482 = fmul fast float %2457, 0x3FF7154760000000
  %2483 = call float @dx.op.unary.f32(i32 21, float %2482)  ; Exp(value)
  %2484 = fsub fast float 1.000000e+00, %2483
  %2485 = fmul fast float %2454, %2484
  %2486 = fsub fast float -0.000000e+00, %2485
  %2487 = fdiv fast float %2486, %2457
  br label %2488

; <label>:2488                                    ; preds = %2481, %2477
  %2489 = phi float [ %2483, %2481 ], [ 1.000000e+00, %2477 ]
  %2490 = phi float [ %2487, %2481 ], [ %2454, %2477 ]
  %2491 = fcmp fast ogt float %2387, %2389
  br i1 %2491, label %2492, label %2512, !dx.controlflow.hints !141

; <label>:2492                                    ; preds = %2488
  %2493 = fsub fast float 1.000000e+00, %2389
  %2494 = fmul fast float %2405, %2493
  %2495 = fmul fast float %2406, %2493
  %2496 = fmul fast float %2407, %2493
  %2497 = fmul fast float %2408, %2493
  %2498 = fcmp fast une float %2497, 0.000000e+00
  br i1 %2498, label %2499, label %2550, !dx.controlflow.hints !142

; <label>:2499                                    ; preds = %2492
  %2500 = fmul fast float %2497, 0x3FF7154760000000
  %2501 = call float @dx.op.unary.f32(i32 21, float %2500)  ; Exp(value)
  %2502 = fsub fast float 1.000000e+00, %2501
  %2503 = fmul fast float %2494, %2502
  %2504 = fsub fast float -0.000000e+00, %2503
  %2505 = fmul fast float %2495, %2502
  %2506 = fsub fast float -0.000000e+00, %2505
  %2507 = fmul fast float %2496, %2502
  %2508 = fsub fast float -0.000000e+00, %2507
  %2509 = fdiv fast float %2504, %2497
  %2510 = fdiv fast float %2506, %2497
  %2511 = fdiv fast float %2508, %2497
  br label %2550

; <label>:2512                                    ; preds = %2488
  %2513 = fsub fast float 1.000000e+00, %2387
  %2514 = fmul fast float %2418, %2513
  %2515 = fmul fast float %2429, %2513
  %2516 = fmul fast float %2440, %2513
  %2517 = fmul fast float %2419, %2513
  %2518 = fmul fast float %2430, %2513
  %2519 = fmul fast float %2441, %2513
  %2520 = fcmp fast une float %2517, 0.000000e+00
  br i1 %2520, label %2521, label %2528, !dx.controlflow.hints !140

; <label>:2521                                    ; preds = %2512
  %2522 = fmul fast float %2517, 0x3FF7154760000000
  %2523 = call float @dx.op.unary.f32(i32 21, float %2522)  ; Exp(value)
  %2524 = fsub fast float 1.000000e+00, %2523
  %2525 = fmul fast float %2514, %2524
  %2526 = fsub fast float -0.000000e+00, %2525
  %2527 = fdiv fast float %2526, %2517
  br label %2528

; <label>:2528                                    ; preds = %2521, %2512
  %2529 = phi float [ %2527, %2521 ], [ %2514, %2512 ]
  %2530 = phi float [ %2523, %2521 ], [ 1.000000e+00, %2512 ]
  %2531 = fcmp fast une float %2518, 0.000000e+00
  br i1 %2531, label %2532, label %2539, !dx.controlflow.hints !140

; <label>:2532                                    ; preds = %2528
  %2533 = fmul fast float %2518, 0x3FF7154760000000
  %2534 = call float @dx.op.unary.f32(i32 21, float %2533)  ; Exp(value)
  %2535 = fsub fast float 1.000000e+00, %2534
  %2536 = fmul fast float %2515, %2535
  %2537 = fsub fast float -0.000000e+00, %2536
  %2538 = fdiv fast float %2537, %2518
  br label %2539

; <label>:2539                                    ; preds = %2532, %2528
  %2540 = phi float [ %2538, %2532 ], [ %2515, %2528 ]
  %2541 = phi float [ %2534, %2532 ], [ 1.000000e+00, %2528 ]
  %2542 = fcmp fast une float %2519, 0.000000e+00
  br i1 %2542, label %2543, label %2550, !dx.controlflow.hints !140

; <label>:2543                                    ; preds = %2539
  %2544 = fmul fast float %2519, 0x3FF7154760000000
  %2545 = call float @dx.op.unary.f32(i32 21, float %2544)  ; Exp(value)
  %2546 = fsub fast float 1.000000e+00, %2545
  %2547 = fmul fast float %2516, %2546
  %2548 = fsub fast float -0.000000e+00, %2547
  %2549 = fdiv fast float %2548, %2519
  br label %2550

; <label>:2550                                    ; preds = %2543, %2539, %2499, %2492
  %2551 = phi float [ %2549, %2543 ], [ %2511, %2499 ], [ %2496, %2492 ], [ %2516, %2539 ]
  %2552 = phi float [ %2540, %2543 ], [ %2510, %2499 ], [ %2495, %2492 ], [ %2540, %2539 ]
  %2553 = phi float [ %2529, %2543 ], [ %2509, %2499 ], [ %2494, %2492 ], [ %2529, %2539 ]
  %2554 = phi float [ %2545, %2543 ], [ %2501, %2499 ], [ 1.000000e+00, %2492 ], [ 1.000000e+00, %2539 ]
  %2555 = phi float [ %2541, %2543 ], [ %2501, %2499 ], [ 1.000000e+00, %2492 ], [ %2541, %2539 ]
  %2556 = phi float [ %2530, %2543 ], [ %2501, %2499 ], [ 1.000000e+00, %2492 ], [ %2530, %2539 ]
  %2557 = fmul fast float %2556, %2468
  %2558 = fmul fast float %2555, %2479
  %2559 = fmul fast float %2554, %2490
  %2560 = fadd fast float %2557, %2553
  %2561 = fadd fast float %2558, %2552
  %2562 = fadd fast float %2559, %2551
  %2563 = fmul fast float %2556, %2467
  %2564 = fmul fast float %2555, %2478
  %2565 = fmul fast float %2554, %2489
  br label %2566

; <label>:2566                                    ; preds = %2550, %2361
  %2567 = phi float [ %2565, %2550 ], [ %2367, %2361 ]
  %2568 = phi float [ %2564, %2550 ], [ %2366, %2361 ]
  %2569 = phi float [ %2563, %2550 ], [ %2365, %2361 ]
  %2570 = phi float [ %2562, %2550 ], [ %2364, %2361 ]
  %2571 = phi float [ %2561, %2550 ], [ %2363, %2361 ]
  %2572 = phi float [ %2560, %2550 ], [ %2362, %2361 ]
  %2573 = fmul fast float %1813, %2569
  %2574 = fmul fast float %1814, %2568
  %2575 = fmul fast float %1815, %2567
  %2576 = fmul fast float %286, 0xBFF7154760000000
  %2577 = call float @dx.op.unary.f32(i32 21, float %2576)  ; Exp(value)
  %2578 = call float @dx.op.unary.f32(i32 7, float %2577)  ; Saturate(value)
  %2579 = fsub fast float 1.000000e+00, %2578
  %2580 = fmul fast float %2579, %2572
  %2581 = fmul fast float %2579, %2571
  %2582 = fmul fast float %2579, %2570
  %2583 = fadd fast float %2580, %2573
  %2584 = fadd fast float %2581, %2574
  %2585 = fadd fast float %2582, %2575
  %2586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %2587 = extractvalue %dx.types.CBufRet.f32 %2586, 0
  %2588 = fmul fast float %2587, %2583
  %2589 = fmul fast float %2584, %2587
  %2590 = fmul fast float %2585, %2587
  %2591 = fmul fast float %2589, 5.000000e-01
  %2592 = fadd fast float %2585, %2583
  %2593 = fmul fast float %2587, %2592
  %2594 = fmul fast float %2593, 2.500000e-01
  %2595 = fadd fast float %2594, %2591
  %2596 = call float @dx.op.unary.f32(i32 23, float %2595)  ; Log(value)
  %2597 = fmul fast float %2596, 0x3FE62E4300000000
  %2598 = fmul fast float %2597, %2597
  store float %196, float addrspace(3)* %197, align 4, !tbaa !42, !noalias !46
  %2599 = fmul fast float %2597, %196
  store float %2599, float addrspace(3)* %199, align 4, !tbaa !42, !noalias !46
  %2600 = fmul fast float %2598, %196
  store float %2600, float addrspace(3)* %201, align 4, !tbaa !42, !noalias !46
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2601 = load float, float addrspace(3)* %203, align 4, !tbaa !42, !noalias !46
  %2602 = fadd fast float %2601, %196
  %2603 = load float, float addrspace(3)* %206, align 4, !tbaa !42, !noalias !46
  %2604 = fadd fast float %2603, %2597
  %2605 = load float, float addrspace(3)* %209, align 4, !tbaa !42, !noalias !46
  %2606 = fadd fast float %2605, %2598
  store float %2602, float addrspace(3)* %197, align 4, !tbaa !42, !noalias !46
  store float %2604, float addrspace(3)* %199, align 4, !tbaa !42, !noalias !46
  store float %2606, float addrspace(3)* %201, align 4, !tbaa !42, !noalias !46
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2607 = load float, float addrspace(3)* %213, align 4, !tbaa !42, !noalias !46
  %2608 = fadd fast float %2607, %2602
  %2609 = load float, float addrspace(3)* %216, align 4, !tbaa !42, !noalias !46
  %2610 = fadd fast float %2609, %2604
  %2611 = load float, float addrspace(3)* %219, align 4, !tbaa !42, !noalias !46
  %2612 = fadd fast float %2611, %2606
  store float %2608, float addrspace(3)* %197, align 4, !tbaa !42, !noalias !46
  store float %2610, float addrspace(3)* %199, align 4, !tbaa !42, !noalias !46
  store float %2612, float addrspace(3)* %201, align 4, !tbaa !42, !noalias !46
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2613 = load float, float addrspace(3)* %223, align 4, !tbaa !42, !noalias !46
  %2614 = fadd fast float %2613, %2608
  %2615 = load float, float addrspace(3)* %226, align 4, !tbaa !42, !noalias !46
  %2616 = fadd fast float %2615, %2610
  %2617 = fdiv fast float %2616, %2614
  br i1 %234, label %2618, label %2626, !dx.controlflow.hints !50

; <label>:2618                                    ; preds = %2566
  %2619 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %222
  %2620 = load float, float addrspace(3)* %2619, align 4, !tbaa !42, !noalias !46
  %2621 = fadd fast float %2620, %2612
  %2622 = fdiv fast float %2621, %2614
  %2623 = lshr i32 %59, 1
  %2624 = lshr i32 %60, 1
  %2625 = lshr i32 %61, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2623, i32 %2624, i32 %2625, float %2617, float %2622, float %2617, float %2617, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2626

; <label>:2626                                    ; preds = %2618, %2566
  br i1 %70, label %2661, label %2627, !dx.controlflow.hints !51

; <label>:2627                                    ; preds = %2626
  %2628 = fadd fast float %109, 0x3FE3C6EF40000000
  %2629 = call float @dx.op.unary.f32(i32 22, float %2628)  ; Frc(value)
  %2630 = call float @dx.op.unary.f32(i32 23, float %2588)  ; Log(value)
  %2631 = fadd fast float %2630, -7.000000e+00
  %2632 = call float @dx.op.unary.f32(i32 21, float %2631)  ; Exp(value)
  %2633 = fmul fast float %2629, 2.000000e+00
  %2634 = fadd fast float %2633, -1.000000e+00
  %2635 = fmul fast float %2632, %2634
  %2636 = fcmp fast ogt float %2588, 0.000000e+00
  %2637 = select i1 %2636, float %2635, float 0.000000e+00
  %2638 = fadd fast float %2637, %2588
  %2639 = fadd fast float %109, 0x3FF3C6EF40000000
  %2640 = call float @dx.op.unary.f32(i32 22, float %2639)  ; Frc(value)
  %2641 = call float @dx.op.unary.f32(i32 23, float %2589)  ; Log(value)
  %2642 = fadd fast float %2641, -7.000000e+00
  %2643 = call float @dx.op.unary.f32(i32 21, float %2642)  ; Exp(value)
  %2644 = fmul fast float %2640, 2.000000e+00
  %2645 = fadd fast float %2644, -1.000000e+00
  %2646 = fmul fast float %2643, %2645
  %2647 = fcmp fast ogt float %2589, 0.000000e+00
  %2648 = select i1 %2647, float %2646, float 0.000000e+00
  %2649 = fadd fast float %2648, %2589
  %2650 = fadd fast float %109, 0x3FFDAA66E0000000
  %2651 = call float @dx.op.unary.f32(i32 22, float %2650)  ; Frc(value)
  %2652 = call float @dx.op.unary.f32(i32 23, float %2590)  ; Log(value)
  %2653 = fadd fast float %2652, -6.000000e+00
  %2654 = call float @dx.op.unary.f32(i32 21, float %2653)  ; Exp(value)
  %2655 = fmul fast float %2651, 2.000000e+00
  %2656 = fadd fast float %2655, -1.000000e+00
  %2657 = fmul fast float %2654, %2656
  %2658 = fcmp fast ogt float %2590, 0.000000e+00
  %2659 = select i1 %2658, float %2657, float 0.000000e+00
  %2660 = fadd fast float %2659, %2590
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %59, i32 %60, i32 %61, float %2638, float %2649, float %2660, float %2638, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2661

; <label>:2661                                    ; preds = %2627, %2626
  %2662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %2663 = extractvalue %dx.types.CBufRet.f32 %2662, 0
  %2664 = fmul fast float %2663, %286
  %2665 = fmul fast float %2664, 5.000000e-01
  %2666 = fadd fast float %279, %279
  %2667 = fmul fast float %285, %2666
  %2668 = fmul fast float %2663, %2667
  %2669 = fmul fast float %2668, 2.500000e-01
  %2670 = fadd fast float %2669, %2665
  %2671 = fmul fast float %2670, %2670
  store float %196, float addrspace(3)* %197, align 4, !tbaa !42, !noalias !46
  %2672 = fmul fast float %2670, %196
  store float %2672, float addrspace(3)* %199, align 4, !tbaa !42, !noalias !46
  %2673 = fmul fast float %2671, %196
  store float %2673, float addrspace(3)* %201, align 4, !tbaa !42, !noalias !46
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2674 = load float, float addrspace(3)* %203, align 4, !tbaa !42, !noalias !46
  %2675 = fadd fast float %2674, %196
  %2676 = load float, float addrspace(3)* %206, align 4, !tbaa !42, !noalias !46
  %2677 = fadd fast float %2670, %2676
  %2678 = load float, float addrspace(3)* %209, align 4, !tbaa !42, !noalias !46
  %2679 = fadd fast float %2671, %2678
  store float %2675, float addrspace(3)* %197, align 4, !tbaa !42, !noalias !46
  store float %2677, float addrspace(3)* %199, align 4, !tbaa !42, !noalias !46
  store float %2679, float addrspace(3)* %201, align 4, !tbaa !42, !noalias !46
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2680 = load float, float addrspace(3)* %213, align 4, !tbaa !42, !noalias !46
  %2681 = fadd fast float %2680, %2675
  %2682 = load float, float addrspace(3)* %216, align 4, !tbaa !42, !noalias !46
  %2683 = fadd fast float %2682, %2677
  %2684 = load float, float addrspace(3)* %219, align 4, !tbaa !42, !noalias !46
  %2685 = fadd fast float %2684, %2679
  store float %2681, float addrspace(3)* %197, align 4, !tbaa !42, !noalias !46
  store float %2683, float addrspace(3)* %199, align 4, !tbaa !42, !noalias !46
  store float %2685, float addrspace(3)* %201, align 4, !tbaa !42, !noalias !46
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2686 = load float, float addrspace(3)* %223, align 4, !tbaa !42, !noalias !46
  %2687 = fadd fast float %2686, %2681
  %2688 = load float, float addrspace(3)* %226, align 4, !tbaa !42, !noalias !46
  %2689 = fadd fast float %2688, %2683
  %2690 = fdiv fast float %2689, %2687
  br i1 %234, label %2691, label %2699, !dx.controlflow.hints !52

; <label>:2691                                    ; preds = %2661
  %2692 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %222
  %2693 = load float, float addrspace(3)* %2692, align 4, !tbaa !42, !noalias !46
  %2694 = fadd fast float %2693, %2685
  %2695 = fdiv fast float %2694, %2687
  %2696 = lshr i32 %59, 1
  %2697 = lshr i32 %60, 1
  %2698 = lshr i32 %61, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2696, i32 %2697, i32 %2698, float %2690, float %2695, float %2690, float %2690, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2699

; <label>:2699                                    ; preds = %2691, %2661
  br i1 %70, label %2728, label %2700, !dx.controlflow.hints !53

; <label>:2700                                    ; preds = %2699
  %2701 = fadd fast float %109, 0x3FE3C6EF40000000
  %2702 = call float @dx.op.unary.f32(i32 22, float %2701)  ; Frc(value)
  %2703 = call float @dx.op.unary.f32(i32 23, float %2664)  ; Log(value)
  %2704 = fadd fast float %2703, -7.000000e+00
  %2705 = call float @dx.op.unary.f32(i32 21, float %2704)  ; Exp(value)
  %2706 = fmul fast float %2702, 2.000000e+00
  %2707 = fadd fast float %2706, -1.000000e+00
  %2708 = fmul fast float %2705, %2707
  %2709 = fcmp fast ogt float %2664, 0.000000e+00
  %2710 = select i1 %2709, float %2708, float 0.000000e+00
  %2711 = fadd fast float %2710, %2664
  %2712 = fadd fast float %109, 0x3FF3C6EF40000000
  %2713 = call float @dx.op.unary.f32(i32 22, float %2712)  ; Frc(value)
  %2714 = fmul fast float %2713, 2.000000e+00
  %2715 = fadd fast float %2714, -1.000000e+00
  %2716 = fmul fast float %2705, %2715
  %2717 = select i1 %2709, float %2716, float 0.000000e+00
  %2718 = fadd fast float %2717, %2664
  %2719 = fadd fast float %109, 0x3FFDAA66E0000000
  %2720 = call float @dx.op.unary.f32(i32 22, float %2719)  ; Frc(value)
  %2721 = fadd fast float %2703, -6.000000e+00
  %2722 = call float @dx.op.unary.f32(i32 21, float %2721)  ; Exp(value)
  %2723 = fmul fast float %2720, 2.000000e+00
  %2724 = fadd fast float %2723, -1.000000e+00
  %2725 = fmul fast float %2722, %2724
  %2726 = select i1 %2709, float %2725, float 0.000000e+00
  %2727 = fadd fast float %2726, %2664
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %59, i32 %60, i32 %61, float %2711, float %2718, float %2727, float %2711, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2728

; <label>:2728                                    ; preds = %2700, %2699
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
!dx.entryPoints = !{!39}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !25, !30, !33}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23, !24}
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
!23 = !{i32 15, %"class.Texture1D<float>"* undef, !"", i32 0, i32 54, i32 1, i32 1, i32 0, !7}
!24 = !{i32 16, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!25 = !{!26, !27, !28, !29}
!26 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!27 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!28 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!29 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!30 = !{!31, !32}
!31 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!32 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!33 = !{!34, !35, !36, !37, !38}
!34 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!35 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!36 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!37 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!38 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!39 = !{void ()* @cs_volumetric_forwardplus_scatter_global_afog, !"cs_volumetric_forwardplus_scatter_global_afog", null, !4, !40}
!40 = !{i32 0, i64 272, i32 4, !41}
!41 = !{i32 4, i32 4, i32 4}
!42 = !{!43, !43, i64 0}
!43 = !{!"float", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!47, !49}
!47 = distinct !{!47, !48, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!48 = distinct !{!48, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!49 = distinct !{!49, !48, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = !{!66, !66, i64 0}
!66 = !{!"int", !44, i64 0}
!67 = !{!68, !70, !72, !47, !49}
!68 = distinct !{!68, !69, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!69 = distinct !{!69, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!70 = distinct !{!70, !71, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!71 = distinct !{!71, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!72 = distinct !{!72, !73, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z: %agg.result"}
!73 = distinct !{!73, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z"}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = !{!107, !109, !111, !47, !49}
!107 = distinct !{!107, !108, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!108 = distinct !{!108, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!109 = distinct !{!109, !110, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!110 = distinct !{!110, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!111 = distinct !{!111, !110, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = !{!114}
!114 = distinct !{!114, !115, !"\01?sort@@YAXAIAM00@Z: %c"}
!115 = distinct !{!115, !"\01?sort@@YAXAIAM00@Z"}
!116 = !{!117, !118, !107, !109, !111, !47, !49}
!117 = distinct !{!117, !115, !"\01?sort@@YAXAIAM00@Z: %a"}
!118 = distinct !{!118, !115, !"\01?sort@@YAXAIAM00@Z: %b"}
!119 = !{!118}
!120 = !{!117, !114, !107, !109, !111, !47, !49}
!121 = !{!117}
!122 = !{!118, !114, !107, !109, !111, !47, !49}
!123 = !{!124}
!124 = distinct !{!124, !125, !"\01?sort@@YAXAIAM00@Z: %c"}
!125 = distinct !{!125, !"\01?sort@@YAXAIAM00@Z"}
!126 = !{!127, !128, !107, !109, !111, !47, !49}
!127 = distinct !{!127, !125, !"\01?sort@@YAXAIAM00@Z: %a"}
!128 = distinct !{!128, !125, !"\01?sort@@YAXAIAM00@Z: %b"}
!129 = !{!128}
!130 = !{!127, !124, !107, !109, !111, !47, !49}
!131 = !{!127}
!132 = !{!128, !124, !107, !109, !111, !47, !49}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 2}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 2}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 2}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 2}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}

