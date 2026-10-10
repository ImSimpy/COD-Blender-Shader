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
; shader hash: a22852074212c082273aa25a633942db
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
;                                   texture     f32          1d     T13            t54     1
;                                   texture     f32          3d     T14             t5     1
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

define void @cs_volumetric_forwardplus_scatter_global_water_afog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 54, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = alloca [4 x i32], align 4
  %28 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %29 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %30 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %31 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %32 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %33 = alloca [12 x float], align 4
  %34 = alloca [12 x float], align 4
  %35 = alloca [3 x float], align 4
  %36 = alloca [3 x float], align 4
  %37 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.i32 %37, 3
  %39 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.i32 %39, 1
  %41 = mul i32 %40, %38
  %42 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.i32 %42, 1
  %44 = mul i32 %41, %43
  %45 = add i32 %44, %31
  %46 = shl i32 %45, 2
  %47 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %46, i32 undef)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.i32 %47, 0
  %49 = shl i32 %48, 2
  %50 = and i32 %49, 1020
  %51 = lshr i32 %48, 6
  %52 = and i32 %51, 1020
  %53 = lshr i32 %48, 14
  %54 = and i32 %53, 1020
  %55 = add i32 %50, %28
  %56 = add i32 %52, %29
  %57 = add i32 %54, %30
  %58 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.i32 %58, 0
  %60 = extractvalue %dx.types.CBufRet.i32 %58, 1
  %61 = extractvalue %dx.types.CBufRet.i32 %58, 2
  %62 = icmp uge i32 %55, %59
  %63 = icmp uge i32 %56, %60
  %64 = icmp uge i32 %57, %61
  %65 = or i1 %62, %63
  %66 = or i1 %64, %65
  %67 = xor i1 %66, true
  %68 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.i32 %68, 3
  %70 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %56, i32 %69)  ; UMad(a,b,c)
  %71 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %55, i32 %70)  ; UMad(a,b,c)
  %72 = mul i32 %71, -63
  %73 = lshr i32 %72, 17
  %74 = xor i32 %73, %72
  %75 = mul i32 %74, -511
  %76 = mul i32 %74, -8176
  %77 = xor i32 %75, %76
  %78 = mul i32 %77, -7
  %79 = mul i32 %77, -7168
  %80 = xor i32 %78, %79
  %81 = lshr i32 %80, 15
  %82 = xor i32 %81, %78
  %83 = and i32 %82, 127
  %84 = mul i32 %83, 3
  %85 = add i32 0, %84
  %86 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %85
  %87 = load float, float* %86, align 4
  %88 = mul i32 %83, 3
  %89 = add i32 1, %88
  %90 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %89
  %91 = load float, float* %90, align 4
  %92 = mul i32 %83, 3
  %93 = add i32 2, %92
  %94 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %93
  %95 = load float, float* %94, align 4
  %96 = uitofp i32 %69 to float
  %97 = fmul fast float %96, 0x3FEA36A940000000
  %98 = fmul fast float %96, 0x3FE5793080000000
  %99 = fmul fast float %96, 0x3FE1972580000000
  %100 = fadd fast float %87, %97
  %101 = fadd fast float %91, %98
  %102 = fadd fast float %95, %99
  %103 = call float @dx.op.unary.f32(i32 22, float %100)  ; Frc(value)
  %104 = call float @dx.op.unary.f32(i32 22, float %101)  ; Frc(value)
  %105 = call float @dx.op.unary.f32(i32 22, float %102)  ; Frc(value)
  %106 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %19, i32 0, i32 %55, i32 %56, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %107 = extractvalue %dx.types.ResRet.f32 %106, 0
  %108 = fcmp fast ogt float %107, -1.000000e+00
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 1
  %111 = select i1 %108, float %110, float 1.000000e+00
  %112 = fadd fast float %107, 1.000000e+00
  %113 = fmul fast float %111, %112
  %114 = uitofp i32 %55 to float
  %115 = uitofp i32 %56 to float
  %116 = uitofp i32 %57 to float
  %117 = fadd fast float %114, %103
  %118 = fadd fast float %115, %104
  %119 = fadd fast float %116, %105
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fmul fast float %121, %117
  %125 = fmul fast float %122, %118
  %126 = fmul fast float %123, %119
  %127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.i32 %127, 0
  %129 = uitofp i32 %128 to float
  %130 = fmul fast float %129, %126
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = fmul fast float %130, %133
  %135 = call float @dx.op.unary.f32(i32 21, float %134)  ; Exp(value)
  %136 = fmul fast float %135, %132
  %137 = fsub fast float 4.000000e+00, %132
  %138 = fadd fast float %137, %136
  %139 = call float @dx.op.binary.f32(i32 36, float %138, float %113)  ; FMin(a,b)
  %140 = fmul fast float %124, 2.000000e+00
  %141 = fmul fast float %125, 2.000000e+00
  %142 = fsub fast float 1.000000e+00, %140
  %143 = fsub fast float 1.000000e+00, %141
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %148 = fmul fast float %145, %142
  %149 = fmul fast float %146, %142
  %150 = fmul fast float %147, %142
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = fmul fast float %152, %143
  %156 = fmul fast float %153, %143
  %157 = fmul fast float %154, %143
  %158 = fadd fast float %155, %148
  %159 = fadd fast float %156, %149
  %160 = fadd fast float %157, %150
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = fadd fast float %158, %162
  %166 = fadd fast float %159, %163
  %167 = fadd fast float %160, %164
  %168 = fmul fast float %165, %139
  %169 = fmul fast float %166, %139
  %170 = fmul fast float %167, %139
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %174 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %175 = fadd fast float %168, %172
  %176 = fadd fast float %169, %173
  %177 = fadd fast float %170, %174
  %178 = call float @dx.op.dot3.f32(i32 55, float %168, float %169, float %170, float %168, float %169, float %170)  ; Dot3(ax,ay,az,bx,by,bz)
  %179 = call float @dx.op.unary.f32(i32 25, float %178)  ; Rsqrt(value)
  %180 = fmul fast float %168, %179
  %181 = fmul fast float %169, %179
  %182 = fmul fast float %170, %179
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %185 = fcmp fast ogt float %184, 0.000000e+00
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %188 = extractvalue %dx.types.CBufRet.f32 %186, 1
  %189 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %190 = fsub fast float %175, %187
  %191 = fadd fast float %190, %189
  %192 = fsub fast float %176, %188
  %193 = fadd fast float %192, %189
  %194 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %195 = fmul fast float %191, %194
  %196 = fmul fast float %193, %194
  %197 = call float @dx.op.unary.f32(i32 7, float %195)  ; Saturate(value)
  %198 = call float @dx.op.unary.f32(i32 7, float %196)  ; Saturate(value)
  %199 = fsub fast float 1.000000e+00, %197
  %200 = fsub fast float 1.000000e+00, %198
  %201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %23, float %199, float %200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %205 = fmul fast float %204, %202
  %206 = extractvalue %dx.types.CBufRet.f32 %203, 3
  %207 = fadd fast float %206, %205
  %208 = fcmp fast ogt float %202, 0.000000e+00
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = and i32 %210, 32768
  %212 = icmp ne i32 %211, 0
  %213 = and i1 %208, %212
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 3
  %216 = fadd fast float %215, %207
  %217 = fcmp fast ole float %177, %216
  %218 = and i1 %213, %217
  %219 = select i1 %185, i32 %128, i32 0
  %220 = add i32 %219, %57
  %221 = xor i1 %185, %218
  %222 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %223 = fmul fast float %222, 0x3FE62E4300000000
  %224 = fmul fast float %223, %223
  %225 = select i1 %66, float 0.000000e+00, float 1.000000e+00
  %226 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %32
  store float %225, float addrspace(3)* %226, align 4, !tbaa !40, !noalias !44
  %227 = fmul fast float %223, %225
  %228 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %32
  store float %227, float addrspace(3)* %228, align 4, !tbaa !40, !noalias !44
  %229 = fmul fast float %224, %225
  %230 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %32
  store float %229, float addrspace(3)* %230, align 4, !tbaa !40, !noalias !44
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %231 = xor i32 %32, 4
  %232 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %231
  %233 = load float, float addrspace(3)* %232, align 4, !tbaa !40, !noalias !44
  %234 = fadd fast float %233, %225
  %235 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %231
  %236 = load float, float addrspace(3)* %235, align 4, !tbaa !40, !noalias !44
  %237 = fadd fast float %236, %223
  %238 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %231
  %239 = load float, float addrspace(3)* %238, align 4, !tbaa !40, !noalias !44
  %240 = fadd fast float %239, %224
  store float %234, float addrspace(3)* %226, align 4, !tbaa !40, !noalias !44
  store float %237, float addrspace(3)* %228, align 4, !tbaa !40, !noalias !44
  store float %240, float addrspace(3)* %230, align 4, !tbaa !40, !noalias !44
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %241 = xor i32 %32, 16
  %242 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %241
  %243 = load float, float addrspace(3)* %242, align 4, !tbaa !40, !noalias !44
  %244 = fadd fast float %243, %234
  %245 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %241
  %246 = load float, float addrspace(3)* %245, align 4, !tbaa !40, !noalias !44
  %247 = fadd fast float %246, %237
  %248 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %241
  %249 = load float, float addrspace(3)* %248, align 4, !tbaa !40, !noalias !44
  %250 = fadd fast float %249, %240
  store float %244, float addrspace(3)* %226, align 4, !tbaa !40, !noalias !44
  store float %247, float addrspace(3)* %228, align 4, !tbaa !40, !noalias !44
  store float %250, float addrspace(3)* %230, align 4, !tbaa !40, !noalias !44
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %251 = xor i32 %32, 1
  %252 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %251
  %253 = load float, float addrspace(3)* %252, align 4, !tbaa !40, !noalias !44
  %254 = fadd fast float %253, %244
  %255 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %251
  %256 = load float, float addrspace(3)* %255, align 4, !tbaa !40, !noalias !44
  %257 = fadd fast float %256, %247
  %258 = fdiv fast float %257, %254
  %259 = and i32 %56, 1
  %260 = and i32 %259, %55
  %261 = and i32 %260, %220
  %262 = icmp ne i32 %261, 0
  %263 = and i1 %262, %67
  br i1 %263, label %264, label %272, !dx.controlflow.hints !48

; <label>:264                                     ; preds = %0
  %265 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %251
  %266 = load float, float addrspace(3)* %265, align 4, !tbaa !40, !noalias !44
  %267 = fadd fast float %266, %250
  %268 = fdiv fast float %267, %254
  %269 = lshr i32 %55, 1
  %270 = lshr i32 %56, 1
  %271 = lshr i32 %220, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %269, i32 %270, i32 %271, float %258, float %268, float %258, float %258, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %272

; <label>:272                                     ; preds = %264, %0
  br i1 %66, label %274, label %273, !dx.controlflow.hints !49

; <label>:273                                     ; preds = %272
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %55, i32 %56, i32 %220, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %274

; <label>:274                                     ; preds = %273, %272
  store float %225, float addrspace(3)* %226, align 4, !tbaa !40, !noalias !44
  store float 0.000000e+00, float addrspace(3)* %228, align 4, !tbaa !40, !noalias !44
  store float 0.000000e+00, float addrspace(3)* %230, align 4, !tbaa !40, !noalias !44
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %275 = load float, float addrspace(3)* %232, align 4, !tbaa !40, !noalias !44
  %276 = fadd fast float %275, %225
  %277 = load float, float addrspace(3)* %235, align 4, !tbaa !40, !noalias !44
  %278 = load float, float addrspace(3)* %238, align 4, !tbaa !40, !noalias !44
  store float %276, float addrspace(3)* %226, align 4, !tbaa !40, !noalias !44
  store float %277, float addrspace(3)* %228, align 4, !tbaa !40, !noalias !44
  store float %278, float addrspace(3)* %230, align 4, !tbaa !40, !noalias !44
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %279 = load float, float addrspace(3)* %242, align 4, !tbaa !40, !noalias !44
  %280 = fadd fast float %279, %276
  %281 = load float, float addrspace(3)* %245, align 4, !tbaa !40, !noalias !44
  %282 = fadd fast float %281, %277
  %283 = load float, float addrspace(3)* %248, align 4, !tbaa !40, !noalias !44
  %284 = fadd fast float %283, %278
  store float %280, float addrspace(3)* %226, align 4, !tbaa !40, !noalias !44
  store float %282, float addrspace(3)* %228, align 4, !tbaa !40, !noalias !44
  store float %284, float addrspace(3)* %230, align 4, !tbaa !40, !noalias !44
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %285 = load float, float addrspace(3)* %252, align 4, !tbaa !40, !noalias !44
  %286 = fadd fast float %285, %280
  %287 = load float, float addrspace(3)* %255, align 4, !tbaa !40, !noalias !44
  %288 = fadd fast float %287, %282
  %289 = fdiv fast float %288, %286
  br i1 %263, label %290, label %298, !dx.controlflow.hints !50

; <label>:290                                     ; preds = %274
  %291 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %251
  %292 = load float, float addrspace(3)* %291, align 4, !tbaa !40, !noalias !44
  %293 = fadd fast float %292, %284
  %294 = fdiv fast float %293, %286
  %295 = lshr i32 %55, 1
  %296 = lshr i32 %56, 1
  %297 = lshr i32 %220, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %295, i32 %296, i32 %297, float %289, float %294, float %289, float %289, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %298

; <label>:298                                     ; preds = %290, %274
  br i1 %66, label %300, label %299, !dx.controlflow.hints !51

; <label>:299                                     ; preds = %298
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %55, i32 %56, i32 %220, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %300

; <label>:300                                     ; preds = %299, %298
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %303 = extractvalue %dx.types.CBufRet.f32 %301, 1
  %304 = fsub fast float %177, %302
  %305 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %304)  ; FMax(a,b)
  %306 = fmul fast float %305, 0x3FF7154760000000
  %307 = fmul fast float %306, %303
  %308 = call float @dx.op.unary.f32(i32 21, float %307)  ; Exp(value)
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 0
  %311 = extractvalue %dx.types.CBufRet.f32 %309, 1
  %312 = extractvalue %dx.types.CBufRet.f32 %309, 2
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %315 = fmul fast float %314, %308
  %316 = fmul fast float %315, %310
  %317 = fmul fast float %315, %311
  %318 = fmul fast float %315, %312
  %319 = select i1 %218, float 0.000000e+00, float %315
  %320 = fcmp fast ogt float %319, 0.000000e+00
  br i1 %320, label %321, label %1491, !dx.controlflow.hints !52

; <label>:321                                     ; preds = %300
  %322 = extractvalue %dx.types.CBufRet.f32 %313, 2
  %323 = fmul fast float %322, %315
  %324 = fdiv fast float 1.000000e+00, %319
  %325 = fmul fast float %324, %316
  %326 = fmul fast float %324, %317
  %327 = fmul fast float %324, %318
  %328 = fmul fast float %323, %324
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 0
  %331 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %332 = extractvalue %dx.types.CBufRet.f32 %329, 2
  %333 = fsub fast float %177, %332
  %334 = fsub fast float %207, %332
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 3
  %337 = fcmp fast oeq float %336, 0.000000e+00
  br i1 %337, label %1462, label %338, !dx.controlflow.hints !53

; <label>:338                                     ; preds = %321
  %339 = fsub fast float %176, %331
  %340 = fsub fast float %175, %330
  %341 = extractvalue %dx.types.CBufRet.f32 %335, 0
  %342 = extractvalue %dx.types.CBufRet.f32 %335, 1
  %343 = extractvalue %dx.types.CBufRet.f32 %335, 2
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %347 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 2
  %350 = fmul fast float %349, %341
  %351 = fmul fast float %349, %342
  %352 = fmul fast float %349, %343
  %353 = fsub fast float %340, %350
  %354 = fsub fast float %339, %351
  %355 = fsub fast float %333, %352
  %356 = fcmp fast olt float %336, 0.000000e+00
  br i1 %356, label %888, label %357, !dx.controlflow.hints !54

; <label>:357                                     ; preds = %338
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 0
  %360 = extractvalue %dx.types.CBufRet.f32 %358, 1
  %361 = extractvalue %dx.types.CBufRet.f32 %358, 2
  %362 = extractvalue %dx.types.CBufRet.f32 %358, 3
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 0
  %365 = extractvalue %dx.types.CBufRet.f32 %363, 1
  %366 = extractvalue %dx.types.CBufRet.f32 %363, 2
  %367 = extractvalue %dx.types.CBufRet.f32 %363, 3
  %368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.f32 %368, 0
  %370 = extractvalue %dx.types.CBufRet.f32 %368, 1
  %371 = extractvalue %dx.types.CBufRet.f32 %368, 2
  %372 = extractvalue %dx.types.CBufRet.f32 %368, 3
  %373 = fmul fast float %359, %353
  %374 = call float @dx.op.tertiary.f32(i32 46, float %354, float %360, float %373)  ; FMad(a,b,c)
  %375 = call float @dx.op.tertiary.f32(i32 46, float %355, float %361, float %374)  ; FMad(a,b,c)
  %376 = fadd fast float %375, %362
  %377 = fmul fast float %364, %353
  %378 = call float @dx.op.tertiary.f32(i32 46, float %354, float %365, float %377)  ; FMad(a,b,c)
  %379 = call float @dx.op.tertiary.f32(i32 46, float %355, float %366, float %378)  ; FMad(a,b,c)
  %380 = fadd fast float %379, %367
  %381 = fmul fast float %369, %353
  %382 = call float @dx.op.tertiary.f32(i32 46, float %354, float %370, float %381)  ; FMad(a,b,c)
  %383 = call float @dx.op.tertiary.f32(i32 46, float %355, float %371, float %382)  ; FMad(a,b,c)
  %384 = fadd fast float %383, %372
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 0
  %387 = extractvalue %dx.types.CBufRet.f32 %385, 1
  %388 = extractvalue %dx.types.CBufRet.f32 %385, 3
  %389 = fmul fast float %388, %376
  %390 = fmul fast float %388, %380
  %391 = fadd fast float %389, %386
  %392 = fadd fast float %390, %387
  %393 = extractvalue %dx.types.CBufRet.f32 %385, 2
  %394 = fcmp fast olt float %393, 0.000000e+00
  %395 = fsub fast float -0.000000e+00, %393
  %396 = select i1 %394, float %395, float %393
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 1
  %399 = fadd fast float %396, %398
  %400 = fcmp fast ogt float %399, 0.000000e+00
  br i1 %400, label %401, label %432, !dx.controlflow.hints !55

; <label>:401                                     ; preds = %357
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 1
  %404 = fsub fast float %403, %384
  %405 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %406 = fmul fast float %404, %405
  %407 = fsub fast float 1.000000e+00, %406
  %408 = call float @dx.op.unary.f32(i32 7, float %407)  ; Saturate(value)
  %409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.f32 %409, 0
  %411 = extractvalue %dx.types.CBufRet.f32 %409, 1
  %412 = fsub fast float %391, %410
  %413 = fsub fast float %392, %411
  %414 = fcmp fast olt float %412, 0.000000e+00
  %415 = fcmp fast olt float %413, 0.000000e+00
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 0
  %418 = extractvalue %dx.types.CBufRet.f32 %416, 1
  %419 = extractvalue %dx.types.CBufRet.f32 %416, 2
  %420 = extractvalue %dx.types.CBufRet.f32 %416, 3
  %421 = select i1 %414, float %417, float %419
  %422 = select i1 %415, float %418, float %420
  %423 = fmul fast float %421, %412
  %424 = fmul fast float %422, %413
  %425 = call float @dx.op.unary.f32(i32 6, float %423)  ; FAbs(value)
  %426 = call float @dx.op.unary.f32(i32 6, float %424)  ; FAbs(value)
  %427 = extractvalue %dx.types.CBufRet.f32 %348, 0
  %428 = call float @dx.op.binary.f32(i32 35, float %425, float %426)  ; FMax(a,b)
  %429 = fsub fast float %427, %428
  %430 = call float @dx.op.unary.f32(i32 7, float %429)  ; Saturate(value)
  %431 = fmul fast float %430, %408
  br label %432

; <label>:432                                     ; preds = %401, %357
  %433 = phi float [ %431, %401 ], [ 0.000000e+00, %357 ]
  %434 = call float @dx.op.binary.f32(i32 35, float %433, float 0.000000e+00)  ; FMax(a,b)
  %435 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %434)  ; FMax(a,b)
  %436 = fcmp fast olt float %435, 1.000000e+00
  br i1 %436, label %437, label %835, !dx.controlflow.hints !56

; <label>:437                                     ; preds = %432
  %438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %439 = extractvalue %dx.types.CBufRet.f32 %438, 0
  %440 = fcmp fast une float %439, 0.000000e+00
  br i1 %440, label %441, label %835, !dx.controlflow.hints !57

; <label>:441                                     ; preds = %437
  %442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.f32 %442, 0
  %444 = extractvalue %dx.types.CBufRet.f32 %442, 1
  %445 = extractvalue %dx.types.CBufRet.f32 %442, 2
  %446 = extractvalue %dx.types.CBufRet.f32 %442, 3
  %447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.f32 %447, 0
  %449 = extractvalue %dx.types.CBufRet.f32 %447, 1
  %450 = extractvalue %dx.types.CBufRet.f32 %447, 2
  %451 = extractvalue %dx.types.CBufRet.f32 %447, 3
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 0
  %454 = extractvalue %dx.types.CBufRet.f32 %452, 1
  %455 = extractvalue %dx.types.CBufRet.f32 %452, 2
  %456 = extractvalue %dx.types.CBufRet.f32 %452, 3
  %457 = fmul fast float %443, %353
  %458 = call float @dx.op.tertiary.f32(i32 46, float %354, float %444, float %457)  ; FMad(a,b,c)
  %459 = call float @dx.op.tertiary.f32(i32 46, float %355, float %445, float %458)  ; FMad(a,b,c)
  %460 = fadd fast float %459, %446
  %461 = fmul fast float %448, %353
  %462 = call float @dx.op.tertiary.f32(i32 46, float %354, float %449, float %461)  ; FMad(a,b,c)
  %463 = call float @dx.op.tertiary.f32(i32 46, float %355, float %450, float %462)  ; FMad(a,b,c)
  %464 = fadd fast float %463, %451
  %465 = fmul fast float %453, %353
  %466 = call float @dx.op.tertiary.f32(i32 46, float %354, float %454, float %465)  ; FMad(a,b,c)
  %467 = call float @dx.op.tertiary.f32(i32 46, float %355, float %455, float %466)  ; FMad(a,b,c)
  %468 = fadd fast float %467, %456
  %469 = fcmp fast oge float %460, 1.000000e+00
  %470 = fcmp fast oge float %464, 1.000000e+00
  %471 = or i1 %469, %470
  %472 = fcmp fast olt float %460, 0.000000e+00
  %473 = fcmp fast olt float %464, 0.000000e+00
  %474 = or i1 %472, %473
  %475 = or i1 %471, %474
  br i1 %475, label %835, label %476, !dx.controlflow.hints !58

; <label>:476                                     ; preds = %441
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 0
  %479 = extractvalue %dx.types.CBufRet.f32 %477, 1
  %480 = extractvalue %dx.types.CBufRet.f32 %477, 2
  %481 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.i32 %481, 2
  %483 = uitofp i32 %482 to float
  %484 = extractvalue %dx.types.CBufRet.i32 %481, 3
  %485 = uitofp i32 %484 to float
  %486 = extractvalue %dx.types.CBufRet.f32 %477, 3
  %487 = fmul fast float %486, 2.000000e+00
  %488 = fsub fast float %460, %478
  %489 = fsub fast float %464, %479
  %490 = fmul fast float %487, %488
  %491 = fmul fast float %487, %489
  %492 = fdiv fast float 1.000000e+00, %343
  %493 = fmul fast float %491, %492
  %494 = call float @dx.op.unary.f32(i32 6, float %493)  ; FAbs(value)
  %495 = fmul fast float %480, %355
  %496 = fmul fast float %495, %487
  %497 = call float @dx.op.unary.f32(i32 6, float %496)  ; FAbs(value)
  %498 = call float @dx.op.unary.f32(i32 6, float %490)  ; FAbs(value)
  %499 = call float @dx.op.binary.f32(i32 35, float %497, float %494)  ; FMax(a,b)
  %500 = call float @dx.op.binary.f32(i32 35, float %498, float %499)  ; FMax(a,b)
  %501 = fmul fast float %500, 2.000000e+00
  %502 = call float @dx.op.unary.f32(i32 23, float %501)  ; Log(value)
  %503 = call float @dx.op.binary.f32(i32 35, float %502, float %483)  ; FMax(a,b)
  %504 = call float @dx.op.unary.f32(i32 22, float %503)  ; Frc(value)
  %505 = fadd fast float %504, 0xBFEA666660000000
  %506 = fmul fast float %505, 8.000000e+00
  %507 = call float @dx.op.unary.f32(i32 7, float %506)  ; Saturate(value)
  %508 = call float @dx.op.unary.f32(i32 27, float %503)  ; Round_ni(value)
  %509 = fadd fast float %508, %507
  %510 = call float @dx.op.binary.f32(i32 36, float %509, float %485)  ; FMin(a,b)
  %511 = call float @dx.op.unary.f32(i32 27, float %510)  ; Round_ni(value)
  %512 = fsub fast float -0.000000e+00, %511
  %513 = call float @dx.op.unary.f32(i32 21, float %512)  ; Exp(value)
  %514 = fmul fast float %513, %487
  %515 = fmul fast float %514, %460
  %516 = fmul fast float %514, %464
  %517 = fmul fast float %515, 2.500000e-01
  %518 = fmul fast float %516, 2.500000e-01
  %519 = fadd fast float %517, 5.000000e-01
  %520 = fadd fast float %518, 5.000000e-01
  %521 = fsub fast float %485, %483
  %522 = fptoui float %521 to i32
  %523 = add i32 %522, 320
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %523)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 0
  %526 = extractvalue %dx.types.CBufRet.f32 %524, 1
  %527 = fcmp fast une float %510, %485
  %528 = fsub fast float %460, %525
  %529 = fsub fast float %464, %526
  %530 = call float @dx.op.unary.f32(i32 6, float %528)  ; FAbs(value)
  %531 = call float @dx.op.unary.f32(i32 6, float %529)  ; FAbs(value)
  %532 = fmul fast float %530, %514
  %533 = fmul fast float %531, %514
  %534 = fcmp fast olt float %532, 1.000000e+00
  %535 = fcmp fast olt float %533, 1.000000e+00
  %536 = and i1 %534, %535
  %537 = or i1 %527, %536
  br i1 %537, label %538, label %835, !dx.controlflow.hints !59

; <label>:538                                     ; preds = %476
  %539 = fmul fast float %516, 5.000000e-01
  %540 = fmul fast float %515, 5.000000e-01
  %541 = fadd fast float %539, 5.000000e-01
  %542 = fadd fast float %540, 5.000000e-01
  %543 = sitofp i32 %482 to float
  %544 = fsub fast float %510, %543
  %545 = call float @dx.op.unary.f32(i32 27, float %544)  ; Round_ni(value)
  %546 = call float @dx.op.unary.f32(i32 22, float %510)  ; Frc(value)
  %547 = call float @dx.op.unary.f32(i32 22, float %542)  ; Frc(value)
  %548 = call float @dx.op.unary.f32(i32 22, float %541)  ; Frc(value)
  %549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %22, float %547, float %548, float %545, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = extractvalue %dx.types.ResRet.f32 %549, 1
  %552 = extractvalue %dx.types.ResRet.f32 %549, 2
  %553 = extractvalue %dx.types.ResRet.f32 %549, 3
  %554 = fcmp fast ogt float %546, 0.000000e+00
  br i1 %554, label %555, label %576, !dx.controlflow.hints !60

; <label>:555                                     ; preds = %538
  %556 = fadd fast float %545, 1.000000e+00
  %557 = call float @dx.op.unary.f32(i32 22, float %519)  ; Frc(value)
  %558 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %22, float %557, float %558, float %556, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = extractvalue %dx.types.ResRet.f32 %559, 1
  %562 = extractvalue %dx.types.ResRet.f32 %559, 2
  %563 = extractvalue %dx.types.ResRet.f32 %559, 3
  %564 = fsub fast float %560, %550
  %565 = fsub fast float %561, %551
  %566 = fsub fast float %562, %552
  %567 = fsub fast float %563, %553
  %568 = fmul fast float %564, %546
  %569 = fmul fast float %565, %546
  %570 = fmul fast float %566, %546
  %571 = fmul fast float %567, %546
  %572 = fadd fast float %568, %550
  %573 = fadd fast float %569, %551
  %574 = fadd fast float %570, %552
  %575 = fadd fast float %571, %553
  br label %576

; <label>:576                                     ; preds = %555, %538
  %577 = phi float [ %572, %555 ], [ %550, %538 ]
  %578 = phi float [ %573, %555 ], [ %551, %538 ]
  %579 = phi float [ %574, %555 ], [ %552, %538 ]
  %580 = phi float [ %575, %555 ], [ %553, %538 ]
  %581 = fadd fast float %577, -5.000000e-01
  %582 = fadd fast float %579, -5.000000e-01
  %583 = fmul fast float %581, 0xBFD5555560000000
  %584 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %582, float %583)  ; FMad(a,b,c)
  %585 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %578, float 0.000000e+00)  ; FMad(a,b,c)
  %586 = fadd fast float %585, %580
  %587 = fmul fast float %581, -7.500000e-01
  %588 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %582, float %587)  ; FMad(a,b,c)
  %589 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %578, float 0.000000e+00)  ; FMad(a,b,c)
  %590 = fadd fast float %589, %580
  %591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %592 = extractvalue %dx.types.CBufRet.f32 %591, 0
  %593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %594 = extractvalue %dx.types.CBufRet.f32 %593, 0
  %595 = extractvalue %dx.types.CBufRet.f32 %593, 1
  %596 = extractvalue %dx.types.CBufRet.f32 %593, 2
  %597 = extractvalue %dx.types.CBufRet.f32 %593, 3
  %598 = fsub fast float %594, %584
  %599 = fsub fast float %595, %586
  %600 = fsub fast float %596, %588
  %601 = fsub fast float %597, %590
  %602 = fmul fast float %598, %592
  %603 = fmul fast float %599, %592
  %604 = fmul fast float %600, %592
  %605 = fmul fast float %601, %592
  %606 = fadd fast float %602, %584
  %607 = fadd fast float %603, %586
  %608 = fadd fast float %604, %588
  %609 = fadd fast float %605, %590
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = and i32 %611, 536870911
  %613 = uitofp i32 %612 to float
  %614 = fmul fast float %613, %460
  %615 = fmul fast float %613, %464
  %616 = fptoui float %614 to i32
  %617 = fptoui float %615 to i32
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = and i32 %619, 31
  %621 = lshr i32 %616, %620
  %622 = lshr i32 %617, %620
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = and i32 %624, 31
  %626 = shl i32 1, %625
  %627 = call i32 @dx.op.binary.i32(i32 40, i32 %626, i32 4)  ; UMin(a,b)
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = extractvalue %dx.types.ResRet.i32 %628, 1
  %631 = icmp eq i32 %627, 0
  br i1 %631, label %673, label %632

; <label>:632                                     ; preds = %576
  br label %633

; <label>:633                                     ; preds = %661, %632
  %634 = phi i32 [ %664, %661 ], [ 0, %632 ]
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = lshr i32 %636, 16
  %638 = and i32 %637, 31
  %639 = shl i32 %622, %638
  %640 = add i32 %639, %621
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = and i32 %642, 31
  %644 = shl i32 %640, %643
  %645 = add i32 %644, %634
  %646 = shl i32 %645, 2
  %647 = add i32 %646, 32
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = icmp slt i32 %649, 0
  %651 = getelementptr [12 x float], [12 x float]* %33, i32 0, i32 %634
  %652 = getelementptr [12 x float], [12 x float]* %34, i32 0, i32 %634
  %653 = bitcast float* %651 to i32*
  %654 = bitcast float* %652 to i32*
  br i1 %650, label %655, label %661, !dx.controlflow.hints !61

; <label>:655                                     ; preds = %633
  %656 = and i32 %649, 1073741823
  %657 = add nuw nsw i32 %656, 20
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = extractvalue %dx.types.ResRet.i32 %658, 1
  br label %661

; <label>:661                                     ; preds = %655, %633
  %662 = phi i32 [ %659, %655 ], [ %629, %633 ]
  %663 = phi i32 [ %660, %655 ], [ %630, %633 ]
  store i32 %662, i32* %653, align 4
  store i32 %663, i32* %654, align 4
  %664 = add nuw i32 %634, 1
  %665 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %666 = extractvalue %dx.types.CBufRet.i32 %665, 2
  %667 = icmp eq i32 %666, 0
  %668 = icmp ugt i32 %649, -1073741825
  %669 = and i1 %668, %667
  %670 = icmp ult i32 %664, %627
  %671 = and i1 %669, %670
  br i1 %671, label %633, label %672, !dx.controlflow.hints !62

; <label>:672                                     ; preds = %661
  br label %673

; <label>:673                                     ; preds = %672, %576
  %674 = phi i32 [ 0, %576 ], [ %664, %672 ]
  %675 = extractvalue %dx.types.CBufRet.f32 %438, 2
  %676 = fptoui float %675 to i32
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %729, label %678

; <label>:678                                     ; preds = %673
  br label %679

; <label>:679                                     ; preds = %724, %678
  %680 = phi i32 [ %725, %724 ], [ %674, %678 ]
  %681 = phi i32 [ %726, %724 ], [ 0, %678 ]
  %682 = lshr i32 %681, 2
  %683 = and i32 %681, 3
  %684 = add nuw nsw i32 %682, 83
  %685 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 %684)  ; CBufferLoadLegacy(handle,regIndex)
  %686 = extractvalue %dx.types.CBufRet.i32 %685, 0
  %687 = extractvalue %dx.types.CBufRet.i32 %685, 1
  %688 = extractvalue %dx.types.CBufRet.i32 %685, 2
  %689 = extractvalue %dx.types.CBufRet.i32 %685, 3
  %690 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 0
  store i32 %686, i32* %690, align 4
  %691 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 1
  store i32 %687, i32* %691, align 4
  %692 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 2
  store i32 %688, i32* %692, align 4
  %693 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 3
  store i32 %689, i32* %693, align 4
  %694 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 %683
  %695 = load i32, i32* %694, align 4, !tbaa !63, !noalias !65
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = lshr i32 %697, 16
  %699 = and i32 %698, 31
  %700 = shl i32 %622, %699
  %701 = add i32 %700, %621
  %702 = shl i32 %701, 2
  %703 = add i32 %702, %695
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %724, label %707, !dx.controlflow.hints !72

; <label>:707                                     ; preds = %679
  %708 = icmp slt i32 %705, 0
  %709 = getelementptr [12 x float], [12 x float]* %33, i32 0, i32 %680
  %710 = getelementptr [12 x float], [12 x float]* %34, i32 0, i32 %680
  %711 = bitcast float* %709 to i32*
  %712 = bitcast float* %710 to i32*
  br i1 %708, label %713, label %720, !dx.controlflow.hints !73

; <label>:713                                     ; preds = %707
  %714 = and i32 %705, 1073741823
  %715 = add i32 %695, 20
  %716 = add i32 %715, %714
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = extractvalue %dx.types.ResRet.i32 %717, 1
  br label %720

; <label>:720                                     ; preds = %713, %707
  %721 = phi i32 [ %718, %713 ], [ %629, %707 ]
  %722 = phi i32 [ %719, %713 ], [ %630, %707 ]
  store i32 %721, i32* %711, align 4
  store i32 %722, i32* %712, align 4
  %723 = add i32 %680, 1
  br label %724

; <label>:724                                     ; preds = %720, %679
  %725 = phi i32 [ %680, %679 ], [ %723, %720 ]
  %726 = add nuw i32 %681, 1
  %727 = icmp eq i32 %726, %676
  br i1 %727, label %728, label %679

; <label>:728                                     ; preds = %724
  br label %729

; <label>:729                                     ; preds = %728, %673
  %730 = phi i32 [ %674, %673 ], [ %725, %728 ]
  %731 = icmp eq i32 %730, 1
  %732 = getelementptr [12 x float], [12 x float]* %33, i32 0, i32 0
  %733 = getelementptr [12 x float], [12 x float]* %34, i32 0, i32 0
  br i1 %731, label %734, label %737, !dx.controlflow.hints !74

; <label>:734                                     ; preds = %729
  %735 = load float, float* %732, align 4
  %736 = load float, float* %733, align 4
  br label %764

; <label>:737                                     ; preds = %729
  %738 = load float, float* %732, align 4
  %739 = load float, float* %733, align 4
  %740 = fdiv fast float 1.000000e+00, %739
  %741 = fsub fast float %738, %740
  %742 = icmp ugt i32 %730, 1
  br i1 %742, label %743, label %759

; <label>:743                                     ; preds = %737
  br label %744

; <label>:744                                     ; preds = %744, %743
  %745 = phi float [ %754, %744 ], [ %741, %743 ]
  %746 = phi float [ %755, %744 ], [ %738, %743 ]
  %747 = phi i32 [ %756, %744 ], [ 1, %743 ]
  %748 = getelementptr [12 x float], [12 x float]* %33, i32 0, i32 %747
  %749 = load float, float* %748, align 4
  %750 = getelementptr [12 x float], [12 x float]* %34, i32 0, i32 %747
  %751 = load float, float* %750, align 4
  %752 = fdiv fast float 1.000000e+00, %751
  %753 = fsub fast float %749, %752
  %754 = call float @dx.op.binary.f32(i32 36, float %745, float %753)  ; FMin(a,b)
  %755 = call float @dx.op.binary.f32(i32 35, float %746, float %749)  ; FMax(a,b)
  %756 = add nuw i32 %747, 1
  %757 = icmp eq i32 %756, %730
  br i1 %757, label %758, label %744

; <label>:758                                     ; preds = %744
  br label %759

; <label>:759                                     ; preds = %758, %737
  %760 = phi float [ %741, %737 ], [ %754, %758 ]
  %761 = phi float [ %738, %737 ], [ %755, %758 ]
  %762 = fsub fast float %761, %760
  %763 = fdiv fast float 1.000000e+00, %762
  br label %764

; <label>:764                                     ; preds = %759, %734
  %765 = phi float [ %735, %734 ], [ %761, %759 ]
  %766 = phi float [ %736, %734 ], [ %763, %759 ]
  %767 = fadd fast float %468, %765
  %768 = fmul fast float %767, %766
  %769 = call float @dx.op.unary.f32(i32 7, float %768)  ; Saturate(value)
  %770 = fmul fast float %769, 2.000000e+00
  %771 = fsub fast float 1.000000e+00, %770
  %772 = fmul fast float %606, %606
  %773 = fsub fast float %607, %772
  %774 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %773)  ; FMax(a,b)
  %775 = fdiv fast float 1.000000e+00, %774
  %776 = fmul fast float %607, %606
  %777 = fsub fast float %608, %776
  %778 = fsub fast float %771, %606
  %779 = fmul fast float %771, %771
  %780 = fsub fast float %779, %607
  %781 = fmul fast float %775, %777
  %782 = fmul fast float %781, %778
  %783 = fsub fast float %780, %782
  %784 = fmul fast float %607, %607
  %785 = fsub fast float %609, %784
  %786 = fmul fast float %777, %777
  %787 = fmul fast float %786, %775
  %788 = fsub fast float %785, %787
  %789 = fdiv fast float %783, %788
  %790 = fmul fast float %789, %777
  %791 = fsub fast float %778, %790
  %792 = fmul fast float %791, %775
  %793 = fmul fast float %792, %606
  %794 = fsub fast float 1.000000e+00, %793
  %795 = fmul fast float %789, %607
  %796 = fsub fast float %794, %795
  %797 = fmul fast float %792, %792
  %798 = fmul fast float %789, 4.000000e+00
  %799 = fmul fast float %798, %796
  %800 = fsub fast float %797, %799
  %801 = call float @dx.op.unary.f32(i32 24, float %800)  ; Sqrt(value)
  %802 = fcmp fast oge float %792, 0.000000e+00
  %803 = fsub fast float -0.000000e+00, %801
  %804 = select i1 %802, float %803, float %801
  %805 = fsub fast float %804, %792
  %806 = fdiv fast float %805, %789
  %807 = fdiv fast float %796, %805
  %808 = fmul fast float %806, 5.000000e-01
  %809 = fmul fast float %807, 2.000000e+00
  %810 = select i1 %802, float %808, float %809
  %811 = select i1 %802, float %809, float %808
  %812 = call float @dx.op.binary.f32(i32 35, float %810, float %811)  ; FMax(a,b)
  %813 = call float @dx.op.binary.f32(i32 36, float %810, float %811)  ; FMin(a,b)
  %814 = fcmp fast ogt float %771, %812
  %815 = fsub fast float %771, %813
  %816 = fsub fast float %771, %812
  %817 = fsub fast float %812, %813
  %818 = select i1 %814, float %816, float %817
  %819 = fmul float %815, %818
  %820 = select i1 %814, float %813, float %771
  %821 = fcmp fast ogt float %771, %813
  %822 = fmul fast float %820, %812
  %823 = fadd fast float %820, %812
  %824 = fmul fast float %823, %606
  %825 = fadd fast float %822, %607
  %826 = fsub fast float %825, %824
  %827 = fdiv fast float %826, %819
  %828 = select i1 %821, float %827, float 0.000000e+00
  %829 = fsub fast float 1.000000e+00, %828
  %830 = select i1 %814, float %829, float %828
  %831 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  %832 = extractvalue %dx.types.CBufRet.f32 %591, 3
  %833 = fmul fast float %832, %831
  %834 = fsub fast float 1.000000e+00, %833
  br label %835

; <label>:835                                     ; preds = %764, %476, %441, %437, %432
  %836 = phi float [ 1.000000e+00, %432 ], [ %834, %764 ], [ 1.000000e+00, %441 ], [ 1.000000e+00, %476 ], [ 1.000000e+00, %437 ]
  %837 = fcmp fast ogt float %433, 0.000000e+00
  br i1 %837, label %838, label %844, !dx.controlflow.hints !75

; <label>:838                                     ; preds = %835
  %839 = fadd fast float %398, %384
  %840 = call float @dx.op.binary.f32(i32 35, float %839, float 0.000000e+00)  ; FMax(a,b)
  %841 = fadd fast float %840, 0x3F10000000000000
  %842 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %24, float %391, float %392, float undef, float undef, i32 0, i32 0, i32 undef, float %841)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %843 = extractvalue %dx.types.ResRet.f32 %842, 0
  br label %844

; <label>:844                                     ; preds = %838, %835
  %845 = phi float [ %843, %838 ], [ 1.000000e+00, %835 ]
  %846 = fsub fast float %845, %836
  %847 = fmul fast float %846, %433
  %848 = fadd fast float %847, %836
  %849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %850 = extractvalue %dx.types.CBufRet.f32 %849, 2
  %851 = fcmp fast ogt float %850, 0.000000e+00
  br i1 %851, label %852, label %888, !dx.controlflow.hints !76

; <label>:852                                     ; preds = %844
  %853 = fcmp fast ugt float %850, 0.000000e+00
  br i1 %853, label %854, label %885, !dx.controlflow.hints !77

; <label>:854                                     ; preds = %852
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %857 = extractvalue %dx.types.CBufRet.f32 %855, 1
  %858 = extractvalue %dx.types.CBufRet.f32 %855, 2
  %859 = extractvalue %dx.types.CBufRet.f32 %855, 3
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 0
  %862 = extractvalue %dx.types.CBufRet.f32 %860, 1
  %863 = extractvalue %dx.types.CBufRet.f32 %860, 2
  %864 = extractvalue %dx.types.CBufRet.f32 %860, 3
  %865 = extractvalue %dx.types.CBufRet.f32 %849, 0
  %866 = extractvalue %dx.types.CBufRet.f32 %849, 1
  %867 = fadd fast float %330, %353
  %868 = fadd fast float %331, %354
  %869 = fadd fast float %332, %355
  %870 = fmul fast float %867, %856
  %871 = call float @dx.op.tertiary.f32(i32 46, float %857, float %868, float %870)  ; FMad(a,b,c)
  %872 = call float @dx.op.tertiary.f32(i32 46, float %858, float %869, float %871)  ; FMad(a,b,c)
  %873 = fadd fast float %872, %859
  %874 = fmul fast float %867, %861
  %875 = call float @dx.op.tertiary.f32(i32 46, float %862, float %868, float %874)  ; FMad(a,b,c)
  %876 = call float @dx.op.tertiary.f32(i32 46, float %863, float %869, float %875)  ; FMad(a,b,c)
  %877 = fadd fast float %876, %864
  %878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %20, float %873, float %877, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %879 = extractvalue %dx.types.ResRet.f32 %878, 0
  %880 = fmul fast float %879, %866
  %881 = fadd fast float %880, %865
  %882 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  %883 = fmul fast float %882, %850
  %884 = fsub fast float 1.000000e+00, %883
  br label %885

; <label>:885                                     ; preds = %854, %852
  %886 = phi float [ %884, %854 ], [ 1.000000e+00, %852 ]
  %887 = fmul fast float %886, %848
  br label %888

; <label>:888                                     ; preds = %885, %844, %338
  %889 = phi float [ 1.000000e+00, %338 ], [ %887, %885 ], [ %848, %844 ]
  %890 = call float @dx.op.binary.f32(i32 36, float %889, float %889)  ; FMin(a,b)
  %891 = call float @dx.op.binary.f32(i32 36, float %889, float %890)  ; FMin(a,b)
  %892 = fcmp fast ogt float %891, 0.000000e+00
  br i1 %892, label %893, label %1048, !dx.controlflow.hints !78

; <label>:893                                     ; preds = %888
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %896 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %897 = extractvalue %dx.types.CBufRet.f32 %894, 2
  %898 = extractvalue %dx.types.CBufRet.f32 %894, 3
  %899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.f32 %899, 0
  %901 = extractvalue %dx.types.CBufRet.f32 %899, 1
  %902 = extractvalue %dx.types.CBufRet.f32 %899, 2
  %903 = extractvalue %dx.types.CBufRet.f32 %899, 3
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 0
  %906 = extractvalue %dx.types.CBufRet.f32 %904, 1
  %907 = extractvalue %dx.types.CBufRet.f32 %904, 2
  %908 = extractvalue %dx.types.CBufRet.f32 %904, 3
  %909 = fmul fast float %895, %353
  %910 = call float @dx.op.tertiary.f32(i32 46, float %354, float %896, float %909)  ; FMad(a,b,c)
  %911 = call float @dx.op.tertiary.f32(i32 46, float %355, float %897, float %910)  ; FMad(a,b,c)
  %912 = fadd fast float %911, %898
  %913 = fmul fast float %900, %353
  %914 = call float @dx.op.tertiary.f32(i32 46, float %354, float %901, float %913)  ; FMad(a,b,c)
  %915 = call float @dx.op.tertiary.f32(i32 46, float %355, float %902, float %914)  ; FMad(a,b,c)
  %916 = fadd fast float %915, %903
  %917 = fmul fast float %905, %353
  %918 = call float @dx.op.tertiary.f32(i32 46, float %354, float %906, float %917)  ; FMad(a,b,c)
  %919 = call float @dx.op.tertiary.f32(i32 46, float %355, float %907, float %918)  ; FMad(a,b,c)
  %920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %921 = extractvalue %dx.types.CBufRet.f32 %920, 0
  %922 = extractvalue %dx.types.CBufRet.f32 %920, 1
  %923 = extractvalue %dx.types.CBufRet.f32 %920, 3
  %924 = fmul fast float %923, %912
  %925 = fmul fast float %923, %916
  %926 = fadd fast float %924, %921
  %927 = fadd fast float %925, %922
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 0
  %930 = extractvalue %dx.types.CBufRet.f32 %928, 1
  %931 = fsub fast float %926, %929
  %932 = fsub fast float %927, %930
  %933 = fcmp fast olt float %931, 0.000000e+00
  %934 = fcmp fast olt float %932, 0.000000e+00
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %937 = extractvalue %dx.types.CBufRet.f32 %935, 1
  %938 = extractvalue %dx.types.CBufRet.f32 %935, 2
  %939 = extractvalue %dx.types.CBufRet.f32 %935, 3
  %940 = select i1 %933, float %936, float %938
  %941 = select i1 %934, float %937, float %939
  %942 = fmul fast float %940, %931
  %943 = fmul fast float %941, %932
  %944 = call float @dx.op.unary.f32(i32 6, float %942)  ; FAbs(value)
  %945 = call float @dx.op.unary.f32(i32 6, float %943)  ; FAbs(value)
  %946 = extractvalue %dx.types.CBufRet.f32 %348, 0
  %947 = call float @dx.op.binary.f32(i32 35, float %944, float %945)  ; FMax(a,b)
  %948 = fsub fast float %946, %947
  %949 = call float @dx.op.unary.f32(i32 7, float %948)  ; Saturate(value)
  %950 = fcmp fast ogt float %949, 0.000000e+00
  br i1 %950, label %951, label %992, !dx.controlflow.hints !79

; <label>:951                                     ; preds = %893
  %952 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %23, float %926, float %927, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %953 = extractvalue %dx.types.ResRet.f32 %952, 1
  %954 = fcmp fast ogt float %953, 0.000000e+00
  br i1 %954, label %955, label %987, !dx.controlflow.hints !80

; <label>:955                                     ; preds = %951
  %956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %23, float %926, float %927, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %957 = extractvalue %dx.types.ResRet.f32 %956, 0
  %958 = extractvalue %dx.types.ResRet.f32 %956, 1
  %959 = extractvalue %dx.types.ResRet.f32 %956, 2
  %960 = extractvalue %dx.types.ResRet.f32 %956, 3
  %961 = fsub fast float 1.000000e+00, %908
  %962 = fsub fast float %961, %919
  %963 = fmul fast float %962, 0x400921FB60000000
  %964 = fadd fast float %963, 0x3FF921FB60000000
  %965 = call float @dx.op.unary.f32(i32 13, float %964)  ; Sin(value)
  %966 = fadd fast float %965, -1.000000e+00
  %967 = fmul fast float %966, 0x3FD45F3060000000
  %968 = fmul fast float %962, 0x401921FB60000000
  %969 = fadd fast float %968, 0x400921FB60000000
  %970 = call float @dx.op.unary.f32(i32 13, float %969)  ; Sin(value)
  %971 = fadd fast float %970, 0x3E7777A5C0000000
  %972 = fmul fast float %971, 0x3FC45F3060000000
  %973 = fmul fast float %962, 0x4022D97C80000000
  %974 = fadd fast float %973, 0x4012D97C80000000
  %975 = call float @dx.op.unary.f32(i32 13, float %974)  ; Sin(value)
  %976 = fadd fast float %975, 1.000000e+00
  %977 = fmul fast float %976, 0x3FBB2995E0000000
  %978 = fmul fast float %962, 0x402921FB60000000
  %979 = fadd fast float %978, 0x401921FB60000000
  %980 = call float @dx.op.unary.f32(i32 13, float %979)  ; Sin(value)
  %981 = fadd fast float %980, 0xBE8777A5C0000000
  %982 = fmul fast float %981, 0x3FB45F3060000000
  %983 = call float @dx.op.dot4.f32(i32 56, float %957, float %958, float %959, float %960, float %967, float %972, float %977, float %982)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %984 = fmul fast float %983, 0xBFF7154760000000
  %985 = call float @dx.op.unary.f32(i32 21, float %984)  ; Exp(value)
  %986 = call float @dx.op.unary.f32(i32 7, float %985)  ; Saturate(value)
  br label %987

; <label>:987                                     ; preds = %955, %951
  %988 = phi float [ %986, %955 ], [ 1.000000e+00, %951 ]
  %989 = fadd fast float %988, -1.000000e+00
  %990 = fmul fast float %989, %949
  %991 = fadd fast float %990, 1.000000e+00
  br label %992

; <label>:992                                     ; preds = %987, %893
  %993 = phi float [ %991, %987 ], [ 1.000000e+00, %893 ]
  %994 = fmul fast float %993, %889
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 1
  %997 = fsub fast float -0.000000e+00, %175
  %998 = fsub fast float -0.000000e+00, %176
  %999 = fsub fast float -0.000000e+00, %333
  %1000 = fsub fast float %999, %332
  %1001 = fadd fast float %1000, %996
  %1002 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %997, float %998, float %1001)  ; Dot3(ax,ay,az,bx,by,bz)
  %1003 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %341, float %342, float %343)  ; Dot3(ax,ay,az,bx,by,bz)
  %1004 = fdiv fast float 1.000000e+00, %1003
  %1005 = fmul fast float %1004, %1002
  %1006 = fmul fast float %341, %1005
  %1007 = fmul fast float %342, %1005
  %1008 = fadd fast float %1006, %175
  %1009 = fadd fast float %1007, %176
  %1010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %1011 = extractvalue %dx.types.CBufRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.CBufRet.f32 %1010, 1
  %1013 = fsub fast float %1008, %1011
  %1014 = fsub fast float %1009, %1012
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 2
  %1017 = extractvalue %dx.types.CBufRet.f32 %1015, 3
  %1018 = fmul fast float %1013, %1016
  %1019 = fmul fast float %1014, %1017
  %1020 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.i32 %1020, 3
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1028, label %1023, !dx.controlflow.hints !81

; <label>:1023                                    ; preds = %992
  %1024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %22, float %1018, float %1019, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.ResRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.ResRet.f32 %1024, 2
  br label %1033

; <label>:1028                                    ; preds = %992
  %1029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %23, float %1018, float %1019, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.ResRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.ResRet.f32 %1029, 2
  br label %1033

; <label>:1033                                    ; preds = %1028, %1023
  %1034 = phi float [ %1025, %1023 ], [ %1030, %1028 ]
  %1035 = phi float [ %1026, %1023 ], [ %1031, %1028 ]
  %1036 = phi float [ %1027, %1023 ], [ %1032, %1028 ]
  %1037 = extractvalue %dx.types.CBufRet.f32 %995, 2
  %1038 = fmul fast float %1037, %1034
  %1039 = extractvalue %dx.types.CBufRet.f32 %995, 0
  %1040 = fsub fast float %1005, %1039
  %1041 = fsub fast float %1040, %1038
  %1042 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1041)  ; FMax(a,b)
  %1043 = fmul fast float %1042, %1035
  %1044 = call float @dx.op.binary.f32(i32 36, float %1036, float %1043)  ; FMin(a,b)
  %1045 = fmul fast float %1044, 0xBFF7154760000000
  %1046 = call float @dx.op.unary.f32(i32 21, float %1045)  ; Exp(value)
  %1047 = fmul fast float %994, %1046
  br label %1048

; <label>:1048                                    ; preds = %1033, %888
  %1049 = phi float [ %1047, %1033 ], [ %889, %888 ]
  %1050 = call float @dx.op.binary.f32(i32 36, float %1049, float %1049)  ; FMin(a,b)
  %1051 = call float @dx.op.binary.f32(i32 36, float %1049, float %1050)  ; FMin(a,b)
  %1052 = fcmp fast ogt float %1051, 0.000000e+00
  br i1 %1052, label %1053, label %1462, !dx.controlflow.hints !82

; <label>:1053                                    ; preds = %1048
  br i1 %218, label %1054, label %1435, !dx.controlflow.hints !83

; <label>:1054                                    ; preds = %1053
  %1055 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1056 = extractvalue %dx.types.CBufRet.i32 %1055, 0
  %1057 = and i32 %1056, 64
  %1058 = icmp ne i32 %1057, 0
  %1059 = fsub fast float %177, %207
  %1060 = fcmp fast ule float %1059, 0.000000e+00
  %1061 = fmul fast float %341, 5.120000e+02
  %1062 = fmul fast float %342, 5.120000e+02
  %1063 = fmul fast float %343, 5.120000e+02
  %1064 = fadd fast float %1063, %333
  %1065 = fsub fast float %334, %1064
  %1066 = fmul fast float %1065, 2.000000e+00
  %1067 = fadd fast float %1066, %1064
  %1068 = select i1 %1060, float %1064, float %1067
  %1069 = fsub fast float %1068, %333
  %1070 = call float @dx.op.dot3.f32(i32 55, float %1061, float %1062, float %1069, float %1061, float %1062, float %1069)  ; Dot3(ax,ay,az,bx,by,bz)
  %1071 = call float @dx.op.unary.f32(i32 25, float %1070)  ; Rsqrt(value)
  %1072 = fmul fast float %1071, %1061
  %1073 = fmul fast float %1071, %1062
  %1074 = fmul fast float %1071, %1069
  %1075 = fsub fast float %207, %177
  %1076 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1075)  ; Dot3(ax,ay,az,bx,by,bz)
  %1077 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1072, float %1073, float %1074)  ; Dot3(ax,ay,az,bx,by,bz)
  %1078 = fdiv fast float 1.000000e+00, %1077
  %1079 = fmul fast float %1078, %1076
  %1080 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %1059, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1081 = fcmp fast ogt float %1080, 0.000000e+00
  %1082 = fcmp fast olt float %1080, 0.000000e+00
  %1083 = zext i1 %1081 to i32
  %1084 = zext i1 %1082 to i32
  %1085 = sub nsw i32 %1083, %1084
  %1086 = sitofp i32 %1085 to float
  %1087 = fsub fast float %1068, %334
  %1088 = call float @dx.op.dot3.f32(i32 55, float %1061, float %1062, float %1087, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1089 = fcmp fast ogt float %1088, 0.000000e+00
  %1090 = fcmp fast olt float %1088, 0.000000e+00
  %1091 = zext i1 %1089 to i32
  %1092 = zext i1 %1090 to i32
  %1093 = sub nsw i32 %1091, %1092
  %1094 = sitofp i32 %1093 to float
  %1095 = fcmp fast une float %1086, %1094
  br i1 %1095, label %1096, label %1106, !dx.controlflow.hints !84

; <label>:1096                                    ; preds = %1054
  %1097 = fmul fast float %1079, %1074
  %1098 = fmul fast float %1079, %1073
  %1099 = fmul fast float %1079, %1072
  %1100 = fmul fast float %1099, %1099
  %1101 = fmul fast float %1098, %1098
  %1102 = fadd fast float %1100, %1101
  %1103 = fmul fast float %1097, %1097
  %1104 = fadd fast float %1102, %1103
  %1105 = call float @dx.op.unary.f32(i32 24, float %1104)  ; Sqrt(value)
  br label %1116

; <label>:1106                                    ; preds = %1054
  %1107 = icmp slt i32 %1085, 0
  br i1 %1107, label %1108, label %1116, !dx.controlflow.hints !85

; <label>:1108                                    ; preds = %1106
  %1109 = fsub fast float %333, %1068
  %1110 = fmul fast float %1061, %1061
  %1111 = fmul fast float %1062, %1062
  %1112 = fadd fast float %1110, %1111
  %1113 = fmul fast float %1109, %1109
  %1114 = fadd fast float %1112, %1113
  %1115 = call float @dx.op.unary.f32(i32 24, float %1114)  ; Sqrt(value)
  br label %1116

; <label>:1116                                    ; preds = %1108, %1106, %1096
  %1117 = phi float [ %1105, %1096 ], [ %1115, %1108 ], [ 0.000000e+00, %1106 ]
  %1118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.i32 %1118, 1
  %1120 = icmp ne i32 %1119, 0
  %1121 = and i1 %1060, %1120
  %1122 = call float @dx.op.dot3.f32(i32 55, float %1072, float %1073, float %1074, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1123 = fmul fast float %1122, %1122
  %1124 = fsub fast float 1.000000e+00, %1123
  %1125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1125, 0
  %1127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1128 = extractvalue %dx.types.CBufRet.f32 %1127, 0
  %1129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1129, 0
  %1131 = extractvalue %dx.types.CBufRet.f32 %1125, 1
  %1132 = extractvalue %dx.types.CBufRet.f32 %1127, 1
  %1133 = extractvalue %dx.types.CBufRet.f32 %1129, 1
  %1134 = extractvalue %dx.types.CBufRet.f32 %1125, 3
  %1135 = extractvalue %dx.types.CBufRet.f32 %1127, 3
  %1136 = extractvalue %dx.types.CBufRet.f32 %1129, 3
  %1137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %1138 = extractvalue %dx.types.CBufRet.f32 %1137, 0
  %1139 = extractvalue %dx.types.CBufRet.f32 %1137, 1
  %1140 = extractvalue %dx.types.CBufRet.f32 %1137, 2
  %1141 = extractvalue %dx.types.CBufRet.f32 %1137, 3
  br i1 %1121, label %1142, label %1335, !dx.controlflow.hints !86

; <label>:1142                                    ; preds = %1116
  %1143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %1144 = extractvalue %dx.types.CBufRet.f32 %1143, 0
  %1145 = fmul fast float %1144, %1144
  %1146 = fmul fast float %1145, %1124
  %1147 = fsub fast float 1.000000e+00, %1146
  %1148 = fcmp fast oge float %1147, 0.000000e+00
  %1149 = fmul fast float %1144, %1072
  %1150 = fmul fast float %1144, %1073
  %1151 = fmul fast float %1144, %1074
  %1152 = call float @dx.op.unary.f32(i32 24, float %1147)  ; Sqrt(value)
  %1153 = fmul fast float %1144, %1122
  %1154 = fsub fast float -0.000000e+00, %1152
  %1155 = fsub fast float %1154, %1153
  %1156 = fadd fast float %1155, %1151
  %1157 = select i1 %1148, float %1149, float 0.000000e+00
  %1158 = select i1 %1148, float %1150, float 0.000000e+00
  %1159 = select i1 %1148, float %1156, float 0.000000e+00
  %1160 = fmul fast float %1157, %1117
  %1161 = fmul fast float %1158, %1117
  %1162 = fmul fast float %1159, %1117
  %1163 = fadd fast float %175, %1160
  %1164 = fadd fast float %1163, %1134
  %1165 = fadd fast float %176, %1161
  %1166 = fadd fast float %1165, %1135
  %1167 = fadd fast float %177, %1162
  %1168 = fadd fast float %1167, %1136
  %1169 = fmul fast float %1164, %1126
  %1170 = call float @dx.op.tertiary.f32(i32 46, float %1166, float %1128, float %1169)  ; FMad(a,b,c)
  %1171 = call float @dx.op.tertiary.f32(i32 46, float %1168, float %1130, float %1170)  ; FMad(a,b,c)
  %1172 = fmul fast float %1164, %1131
  %1173 = call float @dx.op.tertiary.f32(i32 46, float %1166, float %1132, float %1172)  ; FMad(a,b,c)
  %1174 = call float @dx.op.tertiary.f32(i32 46, float %1168, float %1133, float %1173)  ; FMad(a,b,c)
  %1175 = fsub fast float %1171, %1134
  %1176 = fsub fast float %1175, %1138
  %1177 = fadd fast float %1176, %1140
  %1178 = fsub fast float %1174, %1135
  %1179 = fsub fast float %1178, %1139
  %1180 = fadd fast float %1179, %1140
  %1181 = fmul fast float %1177, %1141
  %1182 = fmul fast float %1180, %1141
  %1183 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  %1184 = call float @dx.op.unary.f32(i32 7, float %1182)  ; Saturate(value)
  %1185 = fsub fast float 1.000000e+00, %1183
  %1186 = fsub fast float 1.000000e+00, %1184
  %1187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %23, float %1185, float %1186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1188 = extractvalue %dx.types.ResRet.f32 %1187, 0
  %1189 = fmul fast float %1188, 0x3FBC5ABC00000000
  %1190 = extractvalue %dx.types.CBufRet.f32 %1143, 1
  %1191 = fmul fast float %1190, %1190
  %1192 = fmul fast float %1191, %1124
  %1193 = fsub fast float 1.000000e+00, %1192
  %1194 = fcmp fast oge float %1193, 0.000000e+00
  %1195 = fmul fast float %1190, %1072
  %1196 = fmul fast float %1190, %1073
  %1197 = fmul fast float %1190, %1074
  %1198 = call float @dx.op.unary.f32(i32 24, float %1193)  ; Sqrt(value)
  %1199 = fmul fast float %1190, %1122
  %1200 = fsub fast float -0.000000e+00, %1198
  %1201 = fsub fast float %1200, %1199
  %1202 = fadd fast float %1201, %1197
  %1203 = select i1 %1194, float %1195, float 0.000000e+00
  %1204 = select i1 %1194, float %1196, float 0.000000e+00
  %1205 = select i1 %1194, float %1202, float 0.000000e+00
  %1206 = fmul fast float %1203, %1117
  %1207 = fmul fast float %1204, %1117
  %1208 = fmul fast float %1205, %1117
  %1209 = fadd fast float %175, %1206
  %1210 = fadd fast float %1209, %1134
  %1211 = fadd fast float %176, %1207
  %1212 = fadd fast float %1211, %1135
  %1213 = fadd fast float %177, %1208
  %1214 = fadd fast float %1213, %1136
  %1215 = fmul fast float %1210, %1126
  %1216 = call float @dx.op.tertiary.f32(i32 46, float %1212, float %1128, float %1215)  ; FMad(a,b,c)
  %1217 = call float @dx.op.tertiary.f32(i32 46, float %1214, float %1130, float %1216)  ; FMad(a,b,c)
  %1218 = fmul fast float %1210, %1131
  %1219 = call float @dx.op.tertiary.f32(i32 46, float %1212, float %1132, float %1218)  ; FMad(a,b,c)
  %1220 = call float @dx.op.tertiary.f32(i32 46, float %1214, float %1133, float %1219)  ; FMad(a,b,c)
  %1221 = fsub fast float %1217, %1134
  %1222 = fsub fast float %1221, %1138
  %1223 = fadd fast float %1222, %1140
  %1224 = fsub fast float %1220, %1135
  %1225 = fsub fast float %1224, %1139
  %1226 = fadd fast float %1225, %1140
  %1227 = fmul fast float %1223, %1141
  %1228 = fmul fast float %1226, %1141
  %1229 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  %1230 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1231 = fsub fast float 1.000000e+00, %1229
  %1232 = fsub fast float 1.000000e+00, %1230
  %1233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %23, float %1231, float %1232, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1234 = extractvalue %dx.types.ResRet.f32 %1233, 0
  %1235 = fmul fast float %1234, 0x3F9E4BBD60000000
  %1236 = extractvalue %dx.types.CBufRet.f32 %1143, 2
  %1237 = fmul fast float %1236, %1236
  %1238 = fmul fast float %1237, %1124
  %1239 = fsub fast float 1.000000e+00, %1238
  %1240 = fcmp fast oge float %1239, 0.000000e+00
  %1241 = fmul fast float %1236, %1072
  %1242 = fmul fast float %1236, %1073
  %1243 = fmul fast float %1236, %1074
  %1244 = call float @dx.op.unary.f32(i32 24, float %1239)  ; Sqrt(value)
  %1245 = fmul fast float %1236, %1122
  %1246 = fsub fast float -0.000000e+00, %1244
  %1247 = fsub fast float %1246, %1245
  %1248 = fadd fast float %1247, %1243
  %1249 = select i1 %1240, float %1241, float 0.000000e+00
  %1250 = select i1 %1240, float %1242, float 0.000000e+00
  %1251 = select i1 %1240, float %1248, float 0.000000e+00
  %1252 = fmul fast float %1249, %1117
  %1253 = fmul fast float %1250, %1117
  %1254 = fmul fast float %1251, %1117
  %1255 = fadd fast float %175, %1252
  %1256 = fadd fast float %1255, %1134
  %1257 = fadd fast float %176, %1253
  %1258 = fadd fast float %1257, %1135
  %1259 = fadd fast float %177, %1254
  %1260 = fadd fast float %1259, %1136
  %1261 = fmul fast float %1256, %1126
  %1262 = call float @dx.op.tertiary.f32(i32 46, float %1258, float %1128, float %1261)  ; FMad(a,b,c)
  %1263 = call float @dx.op.tertiary.f32(i32 46, float %1260, float %1130, float %1262)  ; FMad(a,b,c)
  %1264 = fmul fast float %1256, %1131
  %1265 = call float @dx.op.tertiary.f32(i32 46, float %1258, float %1132, float %1264)  ; FMad(a,b,c)
  %1266 = call float @dx.op.tertiary.f32(i32 46, float %1260, float %1133, float %1265)  ; FMad(a,b,c)
  %1267 = fsub fast float %1263, %1134
  %1268 = fsub fast float %1267, %1138
  %1269 = fadd fast float %1268, %1140
  %1270 = fsub fast float %1266, %1135
  %1271 = fsub fast float %1270, %1139
  %1272 = fadd fast float %1271, %1140
  %1273 = fmul fast float %1269, %1141
  %1274 = fmul fast float %1272, %1141
  %1275 = call float @dx.op.unary.f32(i32 7, float %1273)  ; Saturate(value)
  %1276 = call float @dx.op.unary.f32(i32 7, float %1274)  ; Saturate(value)
  %1277 = fsub fast float 1.000000e+00, %1275
  %1278 = fsub fast float 1.000000e+00, %1276
  %1279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %23, float %1277, float %1278, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 0
  %1281 = fmul fast float %1280, 0x3FDDEACB00000000
  %1282 = fadd fast float %1281, %1235
  %1283 = extractvalue %dx.types.CBufRet.f32 %1143, 3
  %1284 = fmul fast float %1283, %1283
  %1285 = fmul fast float %1284, %1124
  %1286 = fsub fast float 1.000000e+00, %1285
  %1287 = fcmp fast oge float %1286, 0.000000e+00
  %1288 = fmul fast float %1283, %1072
  %1289 = fmul fast float %1283, %1073
  %1290 = fmul fast float %1283, %1074
  %1291 = call float @dx.op.unary.f32(i32 24, float %1286)  ; Sqrt(value)
  %1292 = fmul fast float %1283, %1122
  %1293 = fsub fast float -0.000000e+00, %1291
  %1294 = fsub fast float %1293, %1292
  %1295 = fadd fast float %1294, %1290
  %1296 = select i1 %1287, float %1288, float 0.000000e+00
  %1297 = select i1 %1287, float %1289, float 0.000000e+00
  %1298 = select i1 %1287, float %1295, float 0.000000e+00
  %1299 = fmul fast float %1296, %1117
  %1300 = fmul fast float %1297, %1117
  %1301 = fmul fast float %1298, %1117
  %1302 = fadd fast float %175, %1299
  %1303 = fadd fast float %1302, %1134
  %1304 = fadd fast float %176, %1300
  %1305 = fadd fast float %1304, %1135
  %1306 = fadd fast float %177, %1301
  %1307 = fadd fast float %1306, %1136
  %1308 = fmul fast float %1303, %1126
  %1309 = call float @dx.op.tertiary.f32(i32 46, float %1305, float %1128, float %1308)  ; FMad(a,b,c)
  %1310 = call float @dx.op.tertiary.f32(i32 46, float %1307, float %1130, float %1309)  ; FMad(a,b,c)
  %1311 = fmul fast float %1303, %1131
  %1312 = call float @dx.op.tertiary.f32(i32 46, float %1305, float %1132, float %1311)  ; FMad(a,b,c)
  %1313 = call float @dx.op.tertiary.f32(i32 46, float %1307, float %1133, float %1312)  ; FMad(a,b,c)
  %1314 = fsub fast float %1310, %1134
  %1315 = fsub fast float %1314, %1138
  %1316 = fadd fast float %1315, %1140
  %1317 = fsub fast float %1313, %1135
  %1318 = fsub fast float %1317, %1139
  %1319 = fadd fast float %1318, %1140
  %1320 = fmul fast float %1316, %1141
  %1321 = fmul fast float %1319, %1141
  %1322 = call float @dx.op.unary.f32(i32 7, float %1320)  ; Saturate(value)
  %1323 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1324 = fsub fast float 1.000000e+00, %1322
  %1325 = fsub fast float 1.000000e+00, %1323
  %1326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %23, float %1324, float %1325, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1327 = extractvalue %dx.types.ResRet.f32 %1326, 0
  %1328 = fmul fast float %1327, 0x3FE0183CA0000000
  %1329 = fmul fast float %1327, 0x3FB51033E0000000
  %1330 = fadd fast float %1282, %1328
  %1331 = fadd fast float %1280, %1234
  %1332 = fmul fast float %1331, 0x3FD9D2A200000000
  %1333 = fadd fast float %1329, %1189
  %1334 = fadd fast float %1333, %1332
  br label %1381

; <label>:1335                                    ; preds = %1116
  %1336 = fmul fast float %1124, 0x3FE2024E20000000
  %1337 = fsub fast float 1.000000e+00, %1336
  %1338 = fcmp fast oge float %1337, 0.000000e+00
  %1339 = fmul fast float %1072, 0x3FE8018960000000
  %1340 = fmul fast float %1073, 0x3FE8018960000000
  %1341 = fmul fast float %1074, 0x3FE8018960000000
  %1342 = call float @dx.op.unary.f32(i32 24, float %1337)  ; Sqrt(value)
  %1343 = fmul fast float %1122, 0x3FE8018960000000
  %1344 = fsub fast float %1341, %1342
  %1345 = fsub fast float %1344, %1343
  %1346 = select i1 %1338, float %1339, float 0.000000e+00
  %1347 = select i1 %1338, float %1340, float 0.000000e+00
  %1348 = select i1 %1338, float %1345, float 0.000000e+00
  %1349 = select i1 %1060, float %1346, float %1072
  %1350 = select i1 %1060, float %1347, float %1073
  %1351 = select i1 %1060, float %1348, float %1074
  %1352 = fmul fast float %1349, %1117
  %1353 = fmul fast float %1350, %1117
  %1354 = fmul fast float %1351, %1117
  %1355 = fadd fast float %175, %1352
  %1356 = fadd fast float %1355, %1134
  %1357 = fadd fast float %176, %1353
  %1358 = fadd fast float %1357, %1135
  %1359 = fadd fast float %177, %1354
  %1360 = fadd fast float %1359, %1136
  %1361 = fmul fast float %1356, %1126
  %1362 = call float @dx.op.tertiary.f32(i32 46, float %1358, float %1128, float %1361)  ; FMad(a,b,c)
  %1363 = call float @dx.op.tertiary.f32(i32 46, float %1360, float %1130, float %1362)  ; FMad(a,b,c)
  %1364 = fmul fast float %1356, %1131
  %1365 = call float @dx.op.tertiary.f32(i32 46, float %1358, float %1132, float %1364)  ; FMad(a,b,c)
  %1366 = call float @dx.op.tertiary.f32(i32 46, float %1360, float %1133, float %1365)  ; FMad(a,b,c)
  %1367 = fsub fast float %1363, %1134
  %1368 = fsub fast float %1367, %1138
  %1369 = fadd fast float %1368, %1140
  %1370 = fsub fast float %1366, %1135
  %1371 = fsub fast float %1370, %1139
  %1372 = fadd fast float %1371, %1140
  %1373 = fmul fast float %1369, %1141
  %1374 = fmul fast float %1372, %1141
  %1375 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  %1376 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  %1377 = fsub fast float 1.000000e+00, %1375
  %1378 = fsub fast float 1.000000e+00, %1376
  %1379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %23, float %1377, float %1378, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  br label %1381

; <label>:1381                                    ; preds = %1335, %1142
  %1382 = phi float [ %1380, %1335 ], [ %1330, %1142 ]
  %1383 = phi float [ %1380, %1335 ], [ %1334, %1142 ]
  %1384 = phi float [ %1380, %1335 ], [ %1188, %1142 ]
  %1385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1386 = extractvalue %dx.types.CBufRet.f32 %1385, 0
  %1387 = call float @dx.op.unary.f32(i32 6, float %1386)  ; FAbs(value)
  %1388 = fmul fast float %1117, %1117
  %1389 = fadd fast float %1388, 1.000000e+00
  %1390 = fdiv fast float %1387, %1389
  %1391 = call float @dx.op.unary.f32(i32 7, float %1390)  ; Saturate(value)
  %1392 = call float @dx.op.unary.f32(i32 6, float %1122)  ; FAbs(value)
  %1393 = fsub fast float 1.000000e+00, %1392
  %1394 = bitcast float %1393 to i32
  %1395 = sitofp i32 %1394 to float
  %1396 = fptosi float %1395 to i32
  %1397 = bitcast i32 %1396 to float
  %1398 = fmul fast float %1397, 0x3FEF333340000000
  %1399 = fadd fast float %1398, 0x3F999999A0000000
  %1400 = call float @dx.op.unary.f32(i32 7, float %1399)  ; Saturate(value)
  %1401 = fsub fast float 1.000000e+00, %1400
  %1402 = fadd fast float %1382, 1.000000e+00
  %1403 = fadd fast float %1383, 1.000000e+00
  %1404 = fadd fast float %1384, 1.000000e+00
  %1405 = fmul fast float %1401, %1402
  %1406 = fmul fast float %1401, %1403
  %1407 = fmul fast float %1401, %1404
  %1408 = fmul fast float %1391, %1402
  %1409 = fmul fast float %1408, %1400
  %1410 = fmul fast float %1391, %1403
  %1411 = fmul fast float %1410, %1400
  %1412 = fmul fast float %1391, %1404
  %1413 = fmul fast float %1412, %1400
  %1414 = fadd fast float %1409, 1.000000e+00
  %1415 = fadd fast float %1411, 1.000000e+00
  %1416 = fadd fast float %1413, 1.000000e+00
  %1417 = call float @dx.op.unary.f32(i32 6, float %1059)  ; FAbs(value)
  %1418 = call float @dx.op.unary.f32(i32 7, float %1417)  ; Saturate(value)
  %1419 = select i1 %1060, float %1405, float %1414
  %1420 = select i1 %1060, float %1406, float %1415
  %1421 = select i1 %1060, float %1407, float %1416
  %1422 = select i1 %1058, float %1418, float 0.000000e+00
  %1423 = fadd fast float %1419, -1.000000e+00
  %1424 = fadd fast float %1420, -1.000000e+00
  %1425 = fadd fast float %1421, -1.000000e+00
  %1426 = fmul fast float %1423, %1422
  %1427 = fmul fast float %1424, %1422
  %1428 = fmul fast float %1425, %1422
  %1429 = fadd fast float %1426, 1.000000e+00
  %1430 = fadd fast float %1427, 1.000000e+00
  %1431 = fadd fast float %1428, 1.000000e+00
  %1432 = fmul fast float %1429, %345
  %1433 = fmul fast float %1430, %346
  %1434 = fmul fast float %1431, %347
  br label %1435

; <label>:1435                                    ; preds = %1381, %1053
  %1436 = phi float [ %1432, %1381 ], [ %345, %1053 ]
  %1437 = phi float [ %1433, %1381 ], [ %346, %1053 ]
  %1438 = phi float [ %1434, %1381 ], [ %347, %1053 ]
  %1439 = call float @dx.op.dot3.f32(i32 55, float %341, float %342, float %343, float %180, float %181, float %182)  ; Dot3(ax,ay,az,bx,by,bz)
  %1440 = fcmp fast ogt float %328, 0.000000e+00
  %1441 = select i1 %1440, float 1.000000e+00, float -1.000000e+00
  %1442 = fmul fast float %105, 7.812500e-03
  %1443 = fmul fast float %105, 3.125000e-02
  %1444 = fadd fast float %1443, -3.125000e-02
  %1445 = fmul fast float %1441, 5.000000e-01
  %1446 = fmul fast float %1445, %1439
  %1447 = fmul fast float %1441, %328
  %1448 = fadd fast float %1442, 4.921875e-01
  %1449 = fadd fast float %1448, %1446
  %1450 = fadd fast float %1442, 0x3FB25F3060000000
  %1451 = fadd fast float %1444, %1447
  %1452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %23, float %1449, float %1450, float %1451, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1453 = extractvalue %dx.types.ResRet.f32 %1452, 0
  %1454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1455 = extractvalue %dx.types.CBufRet.f32 %1454, 0
  %1456 = fmul fast float %1049, 0x400921FB60000000
  %1457 = fmul fast float %1456, %1453
  %1458 = fmul fast float %1457, %1455
  %1459 = fmul fast float %1458, %1436
  %1460 = fmul fast float %1458, %1437
  %1461 = fmul fast float %1458, %1438
  br label %1462

; <label>:1462                                    ; preds = %1435, %1048, %321
  %1463 = phi float [ %1459, %1435 ], [ 0.000000e+00, %321 ], [ 0.000000e+00, %1048 ]
  %1464 = phi float [ %1460, %1435 ], [ 0.000000e+00, %321 ], [ 0.000000e+00, %1048 ]
  %1465 = phi float [ %1461, %1435 ], [ 0.000000e+00, %321 ], [ 0.000000e+00, %1048 ]
  %1466 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %21, float %124, float %125, float %126, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1467 = extractvalue %dx.types.ResRet.f32 %1466, 0
  %1468 = extractvalue %dx.types.ResRet.f32 %1466, 1
  %1469 = extractvalue %dx.types.ResRet.f32 %1466, 2
  %1470 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1467)  ; IsNaN(value)
  %1471 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1468)  ; IsNaN(value)
  %1472 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1469)  ; IsNaN(value)
  %1473 = or i1 %1470, %1471
  %1474 = or i1 %1473, %1472
  %1475 = select i1 %1474, float 0.000000e+00, float %1467
  %1476 = select i1 %1474, float 0.000000e+00, float %1468
  %1477 = select i1 %1474, float 0.000000e+00, float %1469
  %1478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1479 = extractvalue %dx.types.CBufRet.f32 %1478, 1
  %1480 = fmul fast float %1475, %1479
  %1481 = fmul fast float %1476, %1479
  %1482 = fmul fast float %1477, %1479
  %1483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.f32 %1483, 3
  %1485 = fmul fast float %1480, %1484
  %1486 = fmul fast float %1481, %1484
  %1487 = fmul fast float %1482, %1484
  %1488 = fadd fast float %1485, %1463
  %1489 = fadd fast float %1486, %1464
  %1490 = fadd fast float %1487, %1465
  br label %1491

; <label>:1491                                    ; preds = %1462, %300
  %1492 = phi float [ %325, %1462 ], [ %316, %300 ]
  %1493 = phi float [ %326, %1462 ], [ %317, %300 ]
  %1494 = phi float [ %327, %1462 ], [ %318, %300 ]
  %1495 = phi float [ %1488, %1462 ], [ 0.000000e+00, %300 ]
  %1496 = phi float [ %1489, %1462 ], [ 0.000000e+00, %300 ]
  %1497 = phi float [ %1490, %1462 ], [ 0.000000e+00, %300 ]
  %1498 = fmul fast float %1492, %319
  %1499 = fmul fast float %1493, %319
  %1500 = fmul fast float %1494, %319
  %1501 = fmul fast float %1498, %1495
  %1502 = fmul fast float %1499, %1496
  %1503 = fmul fast float %1500, %1497
  br i1 %185, label %2275, label %1504, !dx.controlflow.hints !87

; <label>:1504                                    ; preds = %1491
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.f32 %1505, 0
  %1507 = extractvalue %dx.types.CBufRet.f32 %1505, 1
  %1508 = extractvalue %dx.types.CBufRet.f32 %1505, 2
  %1509 = extractvalue %dx.types.CBufRet.f32 %1505, 3
  %1510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1511 = extractvalue %dx.types.CBufRet.f32 %1510, 0
  %1512 = extractvalue %dx.types.CBufRet.f32 %1510, 1
  %1513 = extractvalue %dx.types.CBufRet.f32 %1510, 2
  %1514 = extractvalue %dx.types.CBufRet.f32 %1510, 3
  %1515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1516 = extractvalue %dx.types.CBufRet.f32 %1515, 0
  %1517 = extractvalue %dx.types.CBufRet.f32 %1515, 1
  %1518 = extractvalue %dx.types.CBufRet.f32 %1515, 2
  %1519 = extractvalue %dx.types.CBufRet.f32 %1515, 3
  %1520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.f32 %1520, 0
  %1522 = extractvalue %dx.types.CBufRet.f32 %1520, 1
  %1523 = extractvalue %dx.types.CBufRet.f32 %1520, 2
  %1524 = extractvalue %dx.types.CBufRet.f32 %1520, 3
  %1525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.f32 %1525, 3
  %1527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1528 = extractvalue %dx.types.CBufRet.f32 %1527, 3
  %1529 = extractvalue %dx.types.CBufRet.f32 %1527, 0
  %1530 = extractvalue %dx.types.CBufRet.f32 %1527, 1
  %1531 = extractvalue %dx.types.CBufRet.f32 %1527, 2
  %1532 = fcmp fast olt float %1531, -5.000000e-01
  %1533 = fmul fast float %179, %178
  %1534 = fadd fast float %1533, %1509
  %1535 = call float @dx.op.dot3.f32(i32 55, float %180, float %181, float %182, float %1506, float %1507, float %1508)  ; Dot3(ax,ay,az,bx,by,bz)
  %1536 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1537 = extractvalue %dx.types.CBufRet.i32 %1536, 1
  %1538 = and i32 %1537, 1
  %1539 = icmp ne i32 %1538, 0
  %1540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1541 = extractvalue %dx.types.CBufRet.f32 %1540, 2
  %1542 = fcmp fast ogt float %1541, 0.000000e+00
  %1543 = and i1 %1539, %1542
  br i1 %1543, label %1544, label %1950, !dx.controlflow.hints !88

; <label>:1544                                    ; preds = %1504
  %1545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1546 = extractvalue %dx.types.CBufRet.f32 %1545, 3
  %1547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1548 = extractvalue %dx.types.CBufRet.f32 %1547, 2
  %1549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1550 = extractvalue %dx.types.CBufRet.f32 %1549, 2
  %1551 = fsub fast float %1548, %1550
  %1552 = and i32 %1537, 2
  %1553 = extractvalue %dx.types.CBufRet.i32 %1536, 0
  %1554 = call i32 @dx.op.binary.i32(i32 40, i32 %1553, i32 3)  ; UMin(a,b)
  %1555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1556 = extractvalue %dx.types.CBufRet.f32 %1555, 0
  %1557 = extractvalue %dx.types.CBufRet.f32 %1555, 1
  %1558 = extractvalue %dx.types.CBufRet.f32 %1549, 0
  %1559 = extractvalue %dx.types.CBufRet.f32 %1549, 1
  %1560 = fsub fast float %1556, %1558
  %1561 = fsub fast float %1557, %1559
  %1562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1563 = extractvalue %dx.types.CBufRet.f32 %1562, 0
  %1564 = fcmp fast ogt float %1563, 0.000000e+00
  %1565 = fsub fast float -0.000000e+00, %1560
  %1566 = fsub fast float -0.000000e+00, %1561
  %1567 = call float @dx.op.dot2.f32(i32 54, float %180, float %181, float %180, float %181)  ; Dot2(ax,ay,bx,by)
  %1568 = call float @dx.op.dot2.f32(i32 54, float %180, float %181, float %1565, float %1566)  ; Dot2(ax,ay,bx,by)
  %1569 = fmul fast float %1568, 2.000000e+00
  %1570 = call float @dx.op.dot2.f32(i32 54, float %1565, float %1566, float %1565, float %1566)  ; Dot2(ax,ay,bx,by)
  %1571 = fmul fast float %1563, %1563
  %1572 = fsub fast float %1570, %1571
  %1573 = fmul fast float %1569, %1569
  %1574 = fmul fast float %1567, 4.000000e+00
  %1575 = fmul fast float %1574, %1572
  %1576 = fsub fast float %1573, %1575
  %1577 = fcmp fast ogt float %1576, 0.000000e+00
  br i1 %1577, label %1578, label %1593, !dx.controlflow.hints !89

; <label>:1578                                    ; preds = %1544
  %1579 = fcmp fast ogt float %1569, 0.000000e+00
  %1580 = call float @dx.op.unary.f32(i32 24, float %1576)  ; Sqrt(value)
  %1581 = fsub fast float -0.000000e+00, %1580
  %1582 = select i1 %1579, float %1580, float %1581
  %1583 = fadd fast float %1582, %1569
  %1584 = fmul float %1583, -5.000000e-01
  %1585 = fdiv fast float %1584, %1567
  %1586 = call float @dx.op.binary.f32(i32 35, float %1585, float 0.000000e+00)  ; FMax(a,b)
  %1587 = call float @dx.op.binary.f32(i32 36, float %1533, float %1586)  ; FMin(a,b)
  %1588 = fdiv fast float %1572, %1584
  %1589 = call float @dx.op.binary.f32(i32 35, float %1588, float 0.000000e+00)  ; FMax(a,b)
  %1590 = call float @dx.op.binary.f32(i32 36, float %1533, float %1589)  ; FMin(a,b)
  %1591 = call float @dx.op.binary.f32(i32 36, float %1587, float %1590)  ; FMin(a,b)
  %1592 = call float @dx.op.binary.f32(i32 35, float %1587, float %1590)  ; FMax(a,b)
  br label %1593

; <label>:1593                                    ; preds = %1578, %1544
  %1594 = phi float [ %1592, %1578 ], [ -1.000000e+00, %1544 ]
  %1595 = phi float [ %1591, %1578 ], [ -1.000000e+00, %1544 ]
  %1596 = phi i1 [ true, %1578 ], [ false, %1544 ]
  %1597 = and i1 %1564, %1596
  br i1 %1597, label %1598, label %1600, !dx.controlflow.hints !90

; <label>:1598                                    ; preds = %1593
  %1599 = fcmp fast oeq float %1595, %1594
  br i1 %1599, label %1903, label %1601, !dx.controlflow.hints !91

; <label>:1600                                    ; preds = %1593
  br i1 %1564, label %1903, label %1601, !dx.controlflow.hints !92

; <label>:1601                                    ; preds = %1600, %1598
  %1602 = phi float [ %1533, %1600 ], [ %1594, %1598 ]
  %1603 = phi float [ 0.000000e+00, %1600 ], [ %1595, %1598 ]
  %1604 = icmp ne i32 %1552, 0
  %1605 = fmul fast float %1602, %182
  %1606 = fadd fast float %1605, %1546
  %1607 = fmul fast float %1606, %1602
  %1608 = select i1 %1604, float 0.000000e+00, float %1607
  %1609 = fcmp fast oeq float %182, 0.000000e+00
  %1610 = fdiv fast float %1551, %182
  %1611 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1610)  ; FMax(a,b)
  %1612 = select i1 %1609, float %1602, float %1611
  %1613 = call float @dx.op.binary.f32(i32 36, float %1602, float %1612)  ; FMin(a,b)
  %1614 = fcmp fast ogt float %182, 0.000000e+00
  %1615 = fcmp fast olt float %1551, 0.000000e+00
  br i1 %1614, label %1616, label %1673, !dx.controlflow.hints !93

; <label>:1616                                    ; preds = %1601
  %1617 = icmp eq i32 %1552, 0
  br i1 %1615, label %1618, label %1662, !dx.controlflow.hints !94

; <label>:1618                                    ; preds = %1616
  %1619 = select i1 %1617, float %1602, float 0.000000e+00
  %1620 = fsub fast float -0.000000e+00, %1619
  %1621 = call float @dx.op.unary.f32(i32 6, float %1620)  ; FAbs(value)
  %1622 = fmul fast float %1619, %182
  %1623 = fadd fast float %1622, %1546
  %1624 = fmul fast float %1621, %1623
  %1625 = fsub fast float %1608, %1624
  %1626 = fsub fast float %1602, %1621
  %1627 = select i1 %1617, float %1626, float 0.000000e+00
  %1628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1629 = extractvalue %dx.types.CBufRet.f32 %1628, 0
  %1630 = extractvalue %dx.types.CBufRet.f32 %1628, 1
  %1631 = extractvalue %dx.types.CBufRet.f32 %1628, 2
  %1632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1633 = extractvalue %dx.types.CBufRet.f32 %1632, 0
  %1634 = extractvalue %dx.types.CBufRet.f32 %1632, 1
  %1635 = extractvalue %dx.types.CBufRet.f32 %1632, 2
  %1636 = extractvalue %dx.types.CBufRet.f32 %1632, 3
  %1637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1638 = extractvalue %dx.types.CBufRet.f32 %1637, 3
  %1639 = call float @dx.op.binary.f32(i32 36, float %1625, float %1638)  ; FMin(a,b)
  %1640 = fmul fast float %1636, %1627
  %1641 = call float @dx.op.unary.f32(i32 7, float %1640)  ; Saturate(value)
  %1642 = fsub fast float %1633, %1629
  %1643 = fsub fast float %1634, %1630
  %1644 = fsub fast float %1635, %1631
  %1645 = fmul fast float %1641, %1642
  %1646 = fmul fast float %1641, %1643
  %1647 = fmul fast float %1641, %1644
  %1648 = fadd fast float %1645, %1629
  %1649 = fadd fast float %1646, %1630
  %1650 = fadd fast float %1647, %1631
  %1651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1652 = extractvalue %dx.types.CBufRet.f32 %1651, 0
  %1653 = extractvalue %dx.types.CBufRet.f32 %1651, 1
  %1654 = fadd fast float %1653, %1652
  %1655 = call float @dx.op.unary.f32(i32 7, float %1654)  ; Saturate(value)
  %1656 = extractvalue %dx.types.CBufRet.f32 %1651, 2
  %1657 = extractvalue %dx.types.CBufRet.f32 %1651, 3
  %1658 = fadd fast float %1657, %1656
  %1659 = call float @dx.op.unary.f32(i32 7, float %1658)  ; Saturate(value)
  %1660 = fmul fast float %1655, %1639
  %1661 = fmul fast float %1660, %1659
  br label %1903

; <label>:1662                                    ; preds = %1616
  br i1 %1617, label %1663, label %1684, !dx.controlflow.hints !95

; <label>:1663                                    ; preds = %1662
  %1664 = call float @dx.op.binary.f32(i32 36, float %1613, float %1603)  ; FMin(a,b)
  %1665 = fsub fast float %1613, %1664
  %1666 = fsub fast float %1665, %1602
  %1667 = call float @dx.op.unary.f32(i32 6, float %1666)  ; FAbs(value)
  %1668 = fadd fast float %1665, %1602
  %1669 = fmul fast float %1668, %182
  %1670 = fadd fast float %1669, %1546
  %1671 = fmul fast float %1670, %1667
  %1672 = fsub fast float %1608, %1671
  br label %1684

; <label>:1673                                    ; preds = %1601
  br i1 %1615, label %1674, label %1684, !dx.controlflow.hints !96

; <label>:1674                                    ; preds = %1673
  %1675 = call float @dx.op.binary.f32(i32 35, float %1603, float %1613)  ; FMax(a,b)
  %1676 = icmp eq i32 %1552, 0
  %1677 = select i1 %1676, float %1613, float 0.000000e+00
  %1678 = fsub fast float -0.000000e+00, %1677
  %1679 = call float @dx.op.unary.f32(i32 6, float %1678)  ; FAbs(value)
  %1680 = fmul fast float %1677, %182
  %1681 = fadd fast float %1680, %1546
  %1682 = fmul fast float %1679, %1681
  %1683 = fsub fast float %1608, %1682
  br label %1684

; <label>:1684                                    ; preds = %1674, %1673, %1663, %1662
  %1685 = phi float [ %1603, %1662 ], [ %1603, %1663 ], [ %1675, %1674 ], [ %1603, %1673 ]
  %1686 = phi float [ 0.000000e+00, %1662 ], [ %1667, %1663 ], [ %1679, %1674 ], [ 0.000000e+00, %1673 ]
  %1687 = phi float [ %1608, %1662 ], [ %1672, %1663 ], [ %1683, %1674 ], [ %1608, %1673 ]
  %1688 = phi float [ %1613, %1662 ], [ %1613, %1663 ], [ %1602, %1674 ], [ %1602, %1673 ]
  %1689 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 0
  store float -1.000000e+00, float* %1689, align 4, !tbaa !40, !noalias !97
  %1690 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 1
  store float -1.000000e+00, float* %1690, align 4, !tbaa !40, !noalias !97
  %1691 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 2
  store float -1.000000e+00, float* %1691, align 4, !tbaa !40, !noalias !97
  %1692 = getelementptr inbounds [3 x float], [3 x float]* %36, i32 0, i32 0
  store float -1.000000e+00, float* %1692, align 4, !tbaa !40, !noalias !97
  %1693 = getelementptr inbounds [3 x float], [3 x float]* %36, i32 0, i32 1
  store float -1.000000e+00, float* %1693, align 4, !tbaa !40, !noalias !97
  %1694 = getelementptr inbounds [3 x float], [3 x float]* %36, i32 0, i32 2
  store float -1.000000e+00, float* %1694, align 4, !tbaa !40, !noalias !97
  %1695 = icmp sgt i32 %1554, 0
  br i1 %1695, label %1696, label %1757

; <label>:1696                                    ; preds = %1684
  br label %1697

; <label>:1697                                    ; preds = %1746, %1696
  %1698 = phi i32 [ %1747, %1746 ], [ 0, %1696 ]
  %1699 = phi i32 [ %1748, %1746 ], [ 0, %1696 ]
  %1700 = add nuw i32 %1699, 171
  %1701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %1700)  ; CBufferLoadLegacy(handle,regIndex)
  %1702 = extractvalue %dx.types.CBufRet.f32 %1701, 0
  %1703 = extractvalue %dx.types.CBufRet.f32 %1701, 1
  %1704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1705 = extractvalue %dx.types.CBufRet.f32 %1704, 0
  %1706 = extractvalue %dx.types.CBufRet.f32 %1704, 1
  %1707 = fsub fast float %1702, %1705
  %1708 = fsub fast float %1703, %1706
  %1709 = extractvalue %dx.types.CBufRet.f32 %1701, 2
  %1710 = fsub fast float -0.000000e+00, %1707
  %1711 = fsub fast float -0.000000e+00, %1708
  %1712 = call float @dx.op.dot2.f32(i32 54, float %180, float %181, float %1710, float %1711)  ; Dot2(ax,ay,bx,by)
  %1713 = fmul fast float %1712, 2.000000e+00
  %1714 = call float @dx.op.dot2.f32(i32 54, float %1710, float %1711, float %1710, float %1711)  ; Dot2(ax,ay,bx,by)
  %1715 = fmul fast float %1709, %1709
  %1716 = fsub fast float %1714, %1715
  %1717 = fmul fast float %1713, %1713
  %1718 = fmul fast float %1574, %1716
  %1719 = fsub fast float %1717, %1718
  %1720 = fcmp fast ogt float %1719, 0.000000e+00
  br i1 %1720, label %1721, label %1736, !dx.controlflow.hints !89

; <label>:1721                                    ; preds = %1697
  %1722 = fcmp fast ogt float %1713, 0.000000e+00
  %1723 = call float @dx.op.unary.f32(i32 24, float %1719)  ; Sqrt(value)
  %1724 = fsub fast float -0.000000e+00, %1723
  %1725 = select i1 %1722, float %1723, float %1724
  %1726 = fadd fast float %1725, %1713
  %1727 = fmul float %1726, -5.000000e-01
  %1728 = fdiv fast float %1727, %1567
  %1729 = call float @dx.op.binary.f32(i32 35, float %1728, float 0.000000e+00)  ; FMax(a,b)
  %1730 = call float @dx.op.binary.f32(i32 36, float %1602, float %1729)  ; FMin(a,b)
  %1731 = fdiv fast float %1716, %1727
  %1732 = call float @dx.op.binary.f32(i32 35, float %1731, float 0.000000e+00)  ; FMax(a,b)
  %1733 = call float @dx.op.binary.f32(i32 36, float %1602, float %1732)  ; FMin(a,b)
  %1734 = call float @dx.op.binary.f32(i32 36, float %1730, float %1733)  ; FMin(a,b)
  %1735 = call float @dx.op.binary.f32(i32 35, float %1730, float %1733)  ; FMax(a,b)
  br label %1736

; <label>:1736                                    ; preds = %1721, %1697
  %1737 = phi float [ %1735, %1721 ], [ -1.000000e+00, %1697 ]
  %1738 = phi float [ %1734, %1721 ], [ -1.000000e+00, %1697 ]
  %1739 = phi i1 [ true, %1721 ], [ false, %1697 ]
  br i1 %1739, label %1740, label %1746, !dx.controlflow.hints !103

; <label>:1740                                    ; preds = %1736
  %1741 = call float @dx.op.binary.f32(i32 35, float %1685, float %1738)  ; FMax(a,b)
  %1742 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 %1699
  store float %1741, float* %1742, align 4, !tbaa !40, !noalias !97
  %1743 = call float @dx.op.binary.f32(i32 35, float %1685, float %1737)  ; FMax(a,b)
  %1744 = getelementptr inbounds [3 x float], [3 x float]* %36, i32 0, i32 %1699
  store float %1743, float* %1744, align 4, !tbaa !40, !noalias !97
  %1745 = add nsw i32 %1698, 1
  br label %1746

; <label>:1746                                    ; preds = %1740, %1736
  %1747 = phi i32 [ %1745, %1740 ], [ %1698, %1736 ]
  %1748 = add nuw nsw i32 %1699, 1
  %1749 = icmp eq i32 %1748, %1554
  br i1 %1749, label %1750, label %1697

; <label>:1750                                    ; preds = %1746
  %1751 = load float, float* %1691, align 4, !tbaa !40, !alias.scope !104, !noalias !107
  %1752 = load float, float* %1690, align 4, !tbaa !40, !alias.scope !110, !noalias !111
  %1753 = load float, float* %1689, align 4, !tbaa !40, !alias.scope !112, !noalias !113
  %1754 = load float, float* %1694, align 4, !tbaa !40, !alias.scope !114, !noalias !117
  %1755 = load float, float* %1693, align 4, !tbaa !40, !alias.scope !120, !noalias !121
  %1756 = load float, float* %1692, align 4, !tbaa !40, !alias.scope !122, !noalias !123
  br label %1757

; <label>:1757                                    ; preds = %1750, %1684
  %1758 = phi float [ -1.000000e+00, %1684 ], [ %1756, %1750 ]
  %1759 = phi float [ -1.000000e+00, %1684 ], [ %1755, %1750 ]
  %1760 = phi float [ -1.000000e+00, %1684 ], [ %1754, %1750 ]
  %1761 = phi float [ -1.000000e+00, %1684 ], [ %1753, %1750 ]
  %1762 = phi float [ -1.000000e+00, %1684 ], [ %1752, %1750 ]
  %1763 = phi float [ -1.000000e+00, %1684 ], [ %1751, %1750 ]
  %1764 = phi i32 [ 0, %1684 ], [ %1747, %1750 ]
  %1765 = call float @dx.op.binary.f32(i32 36, float %1762, float %1763)  ; FMin(a,b)
  %1766 = call float @dx.op.binary.f32(i32 36, float %1761, float %1765)  ; FMin(a,b)
  %1767 = call float @dx.op.binary.f32(i32 35, float %1761, float %1762)  ; FMax(a,b)
  %1768 = call float @dx.op.binary.f32(i32 36, float %1767, float %1763)  ; FMin(a,b)
  %1769 = call float @dx.op.binary.f32(i32 36, float %1761, float %1762)  ; FMin(a,b)
  %1770 = call float @dx.op.binary.f32(i32 35, float %1769, float %1768)  ; FMax(a,b)
  %1771 = call float @dx.op.binary.f32(i32 35, float %1762, float %1763)  ; FMax(a,b)
  %1772 = call float @dx.op.binary.f32(i32 35, float %1761, float %1771)  ; FMax(a,b)
  store float %1766, float* %1689, align 4, !tbaa !40, !alias.scope !112, !noalias !113
  store float %1770, float* %1690, align 4, !tbaa !40, !alias.scope !110, !noalias !111
  store float %1772, float* %1691, align 4, !tbaa !40, !alias.scope !104, !noalias !107
  %1773 = call float @dx.op.binary.f32(i32 36, float %1759, float %1760)  ; FMin(a,b)
  %1774 = call float @dx.op.binary.f32(i32 36, float %1758, float %1773)  ; FMin(a,b)
  %1775 = call float @dx.op.binary.f32(i32 35, float %1758, float %1759)  ; FMax(a,b)
  %1776 = call float @dx.op.binary.f32(i32 36, float %1775, float %1760)  ; FMin(a,b)
  %1777 = call float @dx.op.binary.f32(i32 36, float %1758, float %1759)  ; FMin(a,b)
  %1778 = call float @dx.op.binary.f32(i32 35, float %1777, float %1776)  ; FMax(a,b)
  %1779 = call float @dx.op.binary.f32(i32 35, float %1759, float %1760)  ; FMax(a,b)
  %1780 = call float @dx.op.binary.f32(i32 35, float %1758, float %1779)  ; FMax(a,b)
  store float %1774, float* %1692, align 4, !tbaa !40, !alias.scope !122, !noalias !123
  store float %1778, float* %1693, align 4, !tbaa !40, !alias.scope !120, !noalias !121
  store float %1780, float* %1694, align 4, !tbaa !40, !alias.scope !114, !noalias !117
  %1781 = sub nsw i32 3, %1764
  %1782 = icmp sgt i32 %1781, 2
  br i1 %1782, label %1783, label %1821, !dx.controlflow.hints !124

; <label>:1783                                    ; preds = %1757
  %1784 = icmp eq i32 %1552, 0
  %1785 = fsub fast float %1602, %1686
  %1786 = select i1 %1784, float %1785, float %1686
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 0
  %1789 = extractvalue %dx.types.CBufRet.f32 %1787, 1
  %1790 = extractvalue %dx.types.CBufRet.f32 %1787, 2
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 0
  %1793 = extractvalue %dx.types.CBufRet.f32 %1791, 1
  %1794 = extractvalue %dx.types.CBufRet.f32 %1791, 2
  %1795 = extractvalue %dx.types.CBufRet.f32 %1791, 3
  %1796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1797 = extractvalue %dx.types.CBufRet.f32 %1796, 3
  %1798 = call float @dx.op.binary.f32(i32 36, float %1687, float %1797)  ; FMin(a,b)
  %1799 = fmul fast float %1795, %1786
  %1800 = call float @dx.op.unary.f32(i32 7, float %1799)  ; Saturate(value)
  %1801 = fsub fast float %1792, %1788
  %1802 = fsub fast float %1793, %1789
  %1803 = fsub fast float %1794, %1790
  %1804 = fmul fast float %1800, %1801
  %1805 = fmul fast float %1800, %1802
  %1806 = fmul fast float %1800, %1803
  %1807 = fadd fast float %1804, %1788
  %1808 = fadd fast float %1805, %1789
  %1809 = fadd fast float %1806, %1790
  %1810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1811 = extractvalue %dx.types.CBufRet.f32 %1810, 0
  %1812 = extractvalue %dx.types.CBufRet.f32 %1810, 1
  %1813 = fadd fast float %1812, %1811
  %1814 = call float @dx.op.unary.f32(i32 7, float %1813)  ; Saturate(value)
  %1815 = extractvalue %dx.types.CBufRet.f32 %1810, 2
  %1816 = extractvalue %dx.types.CBufRet.f32 %1810, 3
  %1817 = fadd fast float %1816, %1815
  %1818 = call float @dx.op.unary.f32(i32 7, float %1817)  ; Saturate(value)
  %1819 = fmul fast float %1814, %1798
  %1820 = fmul fast float %1819, %1818
  br label %1903

; <label>:1821                                    ; preds = %1757
  %1822 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 %1781
  %1823 = load float, float* %1822, align 4, !tbaa !40, !noalias !97
  %1824 = fcmp fast olt float %1823, %1688
  %1825 = icmp sgt i32 %1764, 0
  %1826 = and i1 %1825, %1824
  br i1 %1826, label %1827, label %1864

; <label>:1827                                    ; preds = %1821
  br label %1828

; <label>:1828                                    ; preds = %1857, %1827
  %1829 = phi float [ %1858, %1857 ], [ %1686, %1827 ]
  %1830 = phi float [ %1859, %1857 ], [ %1687, %1827 ]
  %1831 = phi float [ %1839, %1857 ], [ %1823, %1827 ]
  %1832 = phi i32 [ %1836, %1857 ], [ %1781, %1827 ]
  %1833 = getelementptr inbounds [3 x float], [3 x float]* %36, i32 0, i32 %1832
  %1834 = load float, float* %1833, align 4, !tbaa !40, !noalias !97
  %1835 = icmp slt i32 %1832, 2
  %1836 = add nsw i32 %1832, 1
  %1837 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 %1836
  %1838 = load float, float* %1837, align 4, !tbaa !40, !noalias !97
  %1839 = select i1 %1835, float %1838, float %1602
  %1840 = call float @dx.op.binary.f32(i32 36, float %1839, float %1834)  ; FMin(a,b)
  %1841 = call float @dx.op.binary.f32(i32 36, float %1688, float %1840)  ; FMin(a,b)
  %1842 = icmp eq i32 %1552, 0
  %1843 = fadd fast float %1841, %1831
  %1844 = fmul fast float %1843, %182
  %1845 = fadd fast float %1844, %1546
  br i1 %1842, label %1851, label %1846, !dx.controlflow.hints !125

; <label>:1846                                    ; preds = %1828
  %1847 = fsub fast float %1841, %1831
  %1848 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1847)  ; FMax(a,b)
  %1849 = fmul fast float %1848, %1845
  %1850 = fadd fast float %1849, %1830
  br label %1857

; <label>:1851                                    ; preds = %1828
  %1852 = fsub fast float %1831, %1841
  %1853 = call float @dx.op.unary.f32(i32 6, float %1852)  ; FAbs(value)
  %1854 = fadd fast float %1853, %1829
  %1855 = fmul fast float %1853, %1845
  %1856 = fsub fast float %1830, %1855
  br label %1857

; <label>:1857                                    ; preds = %1851, %1846
  %1858 = phi float [ %1848, %1846 ], [ %1854, %1851 ]
  %1859 = phi float [ %1850, %1846 ], [ %1856, %1851 ]
  %1860 = fcmp fast olt float %1839, %1688
  %1861 = icmp slt i32 %1836, 3
  %1862 = and i1 %1861, %1860
  br i1 %1862, label %1828, label %1863

; <label>:1863                                    ; preds = %1857
  br label %1864

; <label>:1864                                    ; preds = %1863, %1821
  %1865 = phi float [ %1686, %1821 ], [ %1858, %1863 ]
  %1866 = phi float [ %1687, %1821 ], [ %1859, %1863 ]
  %1867 = fsub fast float %1602, %1865
  %1868 = select i1 %1604, float %1865, float %1867
  %1869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1870 = extractvalue %dx.types.CBufRet.f32 %1869, 0
  %1871 = extractvalue %dx.types.CBufRet.f32 %1869, 1
  %1872 = extractvalue %dx.types.CBufRet.f32 %1869, 2
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 0
  %1875 = extractvalue %dx.types.CBufRet.f32 %1873, 1
  %1876 = extractvalue %dx.types.CBufRet.f32 %1873, 2
  %1877 = extractvalue %dx.types.CBufRet.f32 %1873, 3
  %1878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1879 = extractvalue %dx.types.CBufRet.f32 %1878, 3
  %1880 = call float @dx.op.binary.f32(i32 36, float %1866, float %1879)  ; FMin(a,b)
  %1881 = fmul fast float %1877, %1868
  %1882 = call float @dx.op.unary.f32(i32 7, float %1881)  ; Saturate(value)
  %1883 = fsub fast float %1874, %1870
  %1884 = fsub fast float %1875, %1871
  %1885 = fsub fast float %1876, %1872
  %1886 = fmul fast float %1882, %1883
  %1887 = fmul fast float %1882, %1884
  %1888 = fmul fast float %1882, %1885
  %1889 = fadd fast float %1886, %1870
  %1890 = fadd fast float %1887, %1871
  %1891 = fadd fast float %1888, %1872
  %1892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1893 = extractvalue %dx.types.CBufRet.f32 %1892, 0
  %1894 = extractvalue %dx.types.CBufRet.f32 %1892, 1
  %1895 = fadd fast float %1894, %1893
  %1896 = call float @dx.op.unary.f32(i32 7, float %1895)  ; Saturate(value)
  %1897 = extractvalue %dx.types.CBufRet.f32 %1892, 2
  %1898 = extractvalue %dx.types.CBufRet.f32 %1892, 3
  %1899 = fadd fast float %1898, %1897
  %1900 = call float @dx.op.unary.f32(i32 7, float %1899)  ; Saturate(value)
  %1901 = fmul fast float %1896, %1880
  %1902 = fmul fast float %1901, %1900
  br label %1903

; <label>:1903                                    ; preds = %1864, %1783, %1618, %1600, %1598
  %1904 = phi float [ %1627, %1618 ], [ %1786, %1783 ], [ %1868, %1864 ], [ 0.000000e+00, %1598 ], [ 0.000000e+00, %1600 ]
  %1905 = phi float [ %1661, %1618 ], [ %1820, %1783 ], [ %1902, %1864 ], [ 0.000000e+00, %1598 ], [ 0.000000e+00, %1600 ]
  %1906 = phi float [ %1648, %1618 ], [ %1807, %1783 ], [ %1889, %1864 ], [ 0.000000e+00, %1598 ], [ 0.000000e+00, %1600 ]
  %1907 = phi float [ %1649, %1618 ], [ %1808, %1783 ], [ %1890, %1864 ], [ 0.000000e+00, %1598 ], [ 0.000000e+00, %1600 ]
  %1908 = phi float [ %1650, %1618 ], [ %1809, %1783 ], [ %1891, %1864 ], [ 0.000000e+00, %1598 ], [ 0.000000e+00, %1600 ]
  %1909 = fmul fast float %1541, %1905
  %1910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.f32 %1910, 2
  %1912 = fsub fast float %1548, %1911
  %1913 = fcmp fast olt float %1909, -2.000000e+01
  %1914 = call float @dx.op.unary.f32(i32 21, float %1909)  ; Exp(value)
  %1915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1916 = extractvalue %dx.types.CBufRet.f32 %1915, 2
  %1917 = extractvalue %dx.types.CBufRet.f32 %1915, 3
  %1918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1919 = extractvalue %dx.types.CBufRet.f32 %1918, 2
  %1920 = fmul fast float %1917, %1912
  %1921 = call float @dx.op.unary.f32(i32 7, float %1920)  ; Saturate(value)
  %1922 = fsub fast float 1.000000e+00, %1921
  %1923 = fmul fast float %182, 5.000000e-01
  %1924 = fadd fast float %1923, 5.000000e-01
  %1925 = call float @dx.op.unary.f32(i32 7, float %1924)  ; Saturate(value)
  %1926 = fsub fast float 1.000000e+00, %1925
  %1927 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1922)  ; FMax(a,b)
  %1928 = fdiv fast float %1926, %1927
  %1929 = fsub fast float %1912, %170
  %1930 = call float @dx.op.unary.f32(i32 6, float %1929)  ; FAbs(value)
  %1931 = fmul fast float %1930, %1916
  %1932 = call float @dx.op.unary.f32(i32 7, float %1928)  ; Saturate(value)
  %1933 = fsub fast float 1.000000e+00, %1931
  %1934 = fmul fast float %1933, %1932
  %1935 = fadd fast float %1934, %1931
  %1936 = fmul fast float %1919, %1912
  %1937 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  %1938 = fsub fast float 1.000000e+00, %1935
  %1939 = fmul fast float %1938, %1937
  %1940 = fadd fast float %1939, %1935
  %1941 = call float @dx.op.unary.f32(i32 7, float %1940)  ; Saturate(value)
  %1942 = fadd fast float %1914, -1.000000e+00
  %1943 = select i1 %1913, float -1.000000e+00, float %1942
  %1944 = fmul fast float %1941, %1943
  %1945 = fadd fast float %1944, 1.000000e+00
  %1946 = fsub fast float -0.000000e+00, %1944
  %1947 = fmul fast float %1906, %1946
  %1948 = fmul fast float %1907, %1946
  %1949 = fmul fast float %1908, %1946
  br label %1950

; <label>:1950                                    ; preds = %1903, %1504
  %1951 = phi float [ %1904, %1903 ], [ 0.000000e+00, %1504 ]
  %1952 = phi float [ %1945, %1903 ], [ 1.000000e+00, %1504 ]
  %1953 = phi float [ %1947, %1903 ], [ 0.000000e+00, %1504 ]
  %1954 = phi float [ %1948, %1903 ], [ 0.000000e+00, %1504 ]
  %1955 = phi float [ %1949, %1903 ], [ 0.000000e+00, %1504 ]
  %1956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1957 = extractvalue %dx.types.CBufRet.f32 %1956, 1
  %1958 = fsub fast float 1.000000e+00, %1952
  %1959 = fmul fast float %1958, %1534
  %1960 = fmul fast float %1959, %1957
  %1961 = fsub fast float %1534, %1960
  br i1 %1532, label %1962, label %1991, !dx.controlflow.hints !126

; <label>:1962                                    ; preds = %1950
  %1963 = fmul fast float %1535, %1529
  %1964 = fadd fast float %1963, %1530
  %1965 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  %1966 = fmul fast float %1511, %1961
  %1967 = fsub fast float -0.000000e+00, %1966
  %1968 = fmul fast float %1512, %1961
  %1969 = fsub fast float -0.000000e+00, %1968
  %1970 = call float @dx.op.unary.f32(i32 21, float %1967)  ; Exp(value)
  %1971 = call float @dx.op.unary.f32(i32 21, float %1969)  ; Exp(value)
  %1972 = call float @dx.op.binary.f32(i32 35, float %1519, float %1970)  ; FMax(a,b)
  %1973 = call float @dx.op.binary.f32(i32 35, float %1519, float %1971)  ; FMax(a,b)
  %1974 = fsub fast float %1973, %1972
  %1975 = fmul fast float %1974, %1965
  %1976 = fadd fast float %1975, %1972
  %1977 = call float @dx.op.unary.f32(i32 7, float %1976)  ; Saturate(value)
  %1978 = fsub fast float %1516, %1521
  %1979 = fsub fast float %1517, %1522
  %1980 = fsub fast float %1518, %1523
  %1981 = fmul fast float %1965, %1978
  %1982 = fmul fast float %1965, %1979
  %1983 = fmul fast float %1965, %1980
  %1984 = fadd fast float %1981, %1521
  %1985 = fadd fast float %1982, %1522
  %1986 = fadd fast float %1983, %1523
  %1987 = fsub fast float 1.000000e+00, %1977
  %1988 = fmul fast float %1987, %1984
  %1989 = fmul fast float %1987, %1985
  %1990 = fmul fast float %1987, %1986
  br label %2050

; <label>:1991                                    ; preds = %1950
  %1992 = fmul fast float %1961, %1528
  %1993 = call float @dx.op.unary.f32(i32 7, float %1992)  ; Saturate(value)
  %1994 = fsub fast float 2.000000e+00, %1993
  %1995 = fmul fast float %1993, 9.921875e-01
  %1996 = fmul fast float %1995, %1994
  %1997 = fadd fast float %1996, 3.906250e-03
  %1998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %23, float %1997, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1999 = extractvalue %dx.types.ResRet.f32 %1998, 0
  %2000 = fsub fast float %1993, %1999
  %2001 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2000)  ; FMax(a,b)
  %2002 = fmul fast float %1514, %170
  %2003 = call float @dx.op.unary.f32(i32 6, float %2002)  ; FAbs(value)
  %2004 = fcmp fast ogt float %2003, 0x3EB0C6F7A0000000
  br i1 %2004, label %2005, label %2011, !dx.controlflow.hints !127

; <label>:2005                                    ; preds = %1991
  %2006 = fmul fast float %2002, 0xBFF7154760000000
  %2007 = call float @dx.op.unary.f32(i32 21, float %2006)  ; Exp(value)
  %2008 = fsub fast float 1.000000e+00, %2007
  %2009 = fdiv fast float %2008, %2002
  %2010 = fmul fast float %2009, %1524
  br label %2011

; <label>:2011                                    ; preds = %2005, %1991
  %2012 = phi float [ %2010, %2005 ], [ %1524, %1991 ]
  %2013 = fadd fast float %2012, %1526
  %2014 = fmul fast float %2013, %2001
  %2015 = fmul fast float %1511, %2014
  %2016 = fsub fast float -0.000000e+00, %2015
  %2017 = fmul fast float %1512, %2014
  %2018 = fsub fast float -0.000000e+00, %2017
  %2019 = fmul fast float %1513, %2014
  %2020 = fsub fast float -0.000000e+00, %2019
  %2021 = call float @dx.op.unary.f32(i32 21, float %2016)  ; Exp(value)
  %2022 = call float @dx.op.unary.f32(i32 21, float %2018)  ; Exp(value)
  %2023 = call float @dx.op.unary.f32(i32 21, float %2020)  ; Exp(value)
  %2024 = fmul fast float %1535, %1535
  %2025 = fadd fast float %2024, 1.000000e+00
  %2026 = fmul fast float %2025, 0x3FAE8EC8A0000000
  %2027 = fmul fast float %2026, %1521
  %2028 = fmul fast float %2026, %1522
  %2029 = fmul fast float %2026, %1523
  %2030 = fmul fast float %1535, %1519
  %2031 = fsub fast float 1.000000e+00, %2030
  %2032 = fmul fast float %1519, %1519
  %2033 = fsub fast float 1.000000e+00, %2032
  %2034 = fmul fast float %2033, 0x3FB45F3060000000
  %2035 = fmul fast float %2031, %2031
  %2036 = fdiv fast float 1.000000e+00, %2035
  %2037 = fmul fast float %2034, %2036
  %2038 = fmul fast float %2037, %1516
  %2039 = fmul fast float %2037, %1517
  %2040 = fmul fast float %2037, %1518
  %2041 = fadd fast float %2038, %2027
  %2042 = fadd fast float %2039, %2028
  %2043 = fadd fast float %2040, %2029
  %2044 = fsub fast float 1.000000e+00, %2021
  %2045 = fsub fast float 1.000000e+00, %2022
  %2046 = fsub fast float 1.000000e+00, %2023
  %2047 = fmul fast float %2041, %2044
  %2048 = fmul fast float %2042, %2045
  %2049 = fmul fast float %2043, %2046
  br label %2050

; <label>:2050                                    ; preds = %2011, %1962
  %2051 = phi float [ %1988, %1962 ], [ %2047, %2011 ]
  %2052 = phi float [ %1989, %1962 ], [ %2048, %2011 ]
  %2053 = phi float [ %1990, %1962 ], [ %2049, %2011 ]
  %2054 = phi float [ %1977, %1962 ], [ %2021, %2011 ]
  %2055 = phi float [ %1977, %1962 ], [ %2022, %2011 ]
  %2056 = phi float [ %1977, %1962 ], [ %2023, %2011 ]
  br i1 %1543, label %2057, label %2255, !dx.controlflow.hints !128

; <label>:2057                                    ; preds = %2050
  %2058 = extractvalue %dx.types.CBufRet.f32 %1956, 0
  %2059 = fmul fast float %2058, %1958
  %2060 = fsub fast float %1953, %2051
  %2061 = fsub fast float %1954, %2052
  %2062 = fsub fast float %1955, %2053
  %2063 = fmul fast float %2059, %2060
  %2064 = fmul fast float %2059, %2061
  %2065 = fmul fast float %2059, %2062
  %2066 = fadd fast float %2063, %2051
  %2067 = fadd fast float %2064, %2052
  %2068 = fadd fast float %2065, %2053
  %2069 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2054)  ; FMax(a,b)
  %2070 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2055)  ; FMax(a,b)
  %2071 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2056)  ; FMax(a,b)
  %2072 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1952)  ; FMax(a,b)
  %2073 = call float @dx.op.binary.f32(i32 35, float %1951, float %1961)  ; FMax(a,b)
  %2074 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2073)  ; FMax(a,b)
  %2075 = fdiv fast float %1951, %2074
  %2076 = call float @dx.op.unary.f32(i32 7, float %2075)  ; Saturate(value)
  %2077 = fdiv fast float %1961, %2074
  %2078 = call float @dx.op.unary.f32(i32 7, float %2077)  ; Saturate(value)
  %2079 = fcmp fast une float %2072, 1.000000e+00
  br i1 %2079, label %2080, label %2093, !dx.controlflow.hints !129

; <label>:2080                                    ; preds = %2057
  %2081 = call float @dx.op.unary.f32(i32 23, float %2072)  ; Log(value)
  %2082 = fmul fast float %2081, 0x3FE62E4300000000
  %2083 = fmul fast float %1953, %2082
  %2084 = fsub fast float -0.000000e+00, %2083
  %2085 = fmul fast float %1954, %2082
  %2086 = fsub fast float -0.000000e+00, %2085
  %2087 = fmul fast float %1955, %2082
  %2088 = fsub fast float -0.000000e+00, %2087
  %2089 = fsub fast float 1.000000e+00, %2072
  %2090 = fdiv fast float %2084, %2089
  %2091 = fdiv fast float %2086, %2089
  %2092 = fdiv fast float %2088, %2089
  br label %2093

; <label>:2093                                    ; preds = %2080, %2057
  %2094 = phi float [ %2090, %2080 ], [ %1953, %2057 ]
  %2095 = phi float [ %2091, %2080 ], [ %1954, %2057 ]
  %2096 = phi float [ %2092, %2080 ], [ %1955, %2057 ]
  %2097 = phi float [ %2082, %2080 ], [ 0.000000e+00, %2057 ]
  %2098 = fcmp fast une float %2069, 1.000000e+00
  br i1 %2098, label %2099, label %2106, !dx.controlflow.hints !130

; <label>:2099                                    ; preds = %2093
  %2100 = call float @dx.op.unary.f32(i32 23, float %2069)  ; Log(value)
  %2101 = fmul fast float %2100, 0x3FE62E4300000000
  %2102 = fmul fast float %2066, %2101
  %2103 = fsub fast float -0.000000e+00, %2102
  %2104 = fsub fast float 1.000000e+00, %2069
  %2105 = fdiv fast float %2103, %2104
  br label %2106

; <label>:2106                                    ; preds = %2099, %2093
  %2107 = phi float [ %2105, %2099 ], [ %2066, %2093 ]
  %2108 = phi float [ %2101, %2099 ], [ 0.000000e+00, %2093 ]
  %2109 = fcmp fast une float %2070, 1.000000e+00
  br i1 %2109, label %2110, label %2117, !dx.controlflow.hints !130

; <label>:2110                                    ; preds = %2106
  %2111 = call float @dx.op.unary.f32(i32 23, float %2070)  ; Log(value)
  %2112 = fmul fast float %2111, 0x3FE62E4300000000
  %2113 = fmul fast float %2067, %2112
  %2114 = fsub fast float -0.000000e+00, %2113
  %2115 = fsub fast float 1.000000e+00, %2070
  %2116 = fdiv fast float %2114, %2115
  br label %2117

; <label>:2117                                    ; preds = %2110, %2106
  %2118 = phi float [ %2116, %2110 ], [ %2067, %2106 ]
  %2119 = phi float [ %2112, %2110 ], [ 0.000000e+00, %2106 ]
  %2120 = fcmp fast une float %2071, 1.000000e+00
  br i1 %2120, label %2121, label %2128, !dx.controlflow.hints !130

; <label>:2121                                    ; preds = %2117
  %2122 = call float @dx.op.unary.f32(i32 23, float %2071)  ; Log(value)
  %2123 = fmul fast float %2122, 0x3FE62E4300000000
  %2124 = fmul fast float %2068, %2123
  %2125 = fsub fast float -0.000000e+00, %2124
  %2126 = fsub fast float 1.000000e+00, %2071
  %2127 = fdiv fast float %2125, %2126
  br label %2128

; <label>:2128                                    ; preds = %2121, %2117
  %2129 = phi float [ %2127, %2121 ], [ %2068, %2117 ]
  %2130 = phi float [ %2123, %2121 ], [ 0.000000e+00, %2117 ]
  %2131 = fmul fast float %2094, %2078
  %2132 = fmul fast float %2095, %2078
  %2133 = fmul fast float %2096, %2078
  %2134 = fmul fast float %2097, %2078
  %2135 = fmul fast float %2107, %2076
  %2136 = fmul fast float %2118, %2076
  %2137 = fmul fast float %2129, %2076
  %2138 = fmul fast float %2108, %2076
  %2139 = fmul fast float %2119, %2076
  %2140 = fmul fast float %2130, %2076
  %2141 = fadd fast float %2135, %2131
  %2142 = fadd fast float %2136, %2132
  %2143 = fadd fast float %2137, %2133
  %2144 = fadd fast float %2138, %2134
  %2145 = fadd fast float %2139, %2134
  %2146 = fadd fast float %2140, %2134
  %2147 = fcmp fast une float %2144, 0.000000e+00
  br i1 %2147, label %2148, label %2155, !dx.controlflow.hints !131

; <label>:2148                                    ; preds = %2128
  %2149 = fmul fast float %2144, 0x3FF7154760000000
  %2150 = call float @dx.op.unary.f32(i32 21, float %2149)  ; Exp(value)
  %2151 = fsub fast float 1.000000e+00, %2150
  %2152 = fmul fast float %2141, %2151
  %2153 = fsub fast float -0.000000e+00, %2152
  %2154 = fdiv fast float %2153, %2144
  br label %2155

; <label>:2155                                    ; preds = %2148, %2128
  %2156 = phi float [ %2150, %2148 ], [ 1.000000e+00, %2128 ]
  %2157 = phi float [ %2154, %2148 ], [ %2141, %2128 ]
  %2158 = fcmp fast une float %2145, 0.000000e+00
  br i1 %2158, label %2159, label %2166, !dx.controlflow.hints !131

; <label>:2159                                    ; preds = %2155
  %2160 = fmul fast float %2145, 0x3FF7154760000000
  %2161 = call float @dx.op.unary.f32(i32 21, float %2160)  ; Exp(value)
  %2162 = fsub fast float 1.000000e+00, %2161
  %2163 = fmul fast float %2142, %2162
  %2164 = fsub fast float -0.000000e+00, %2163
  %2165 = fdiv fast float %2164, %2145
  br label %2166

; <label>:2166                                    ; preds = %2159, %2155
  %2167 = phi float [ %2161, %2159 ], [ 1.000000e+00, %2155 ]
  %2168 = phi float [ %2165, %2159 ], [ %2142, %2155 ]
  %2169 = fcmp fast une float %2146, 0.000000e+00
  br i1 %2169, label %2170, label %2177, !dx.controlflow.hints !131

; <label>:2170                                    ; preds = %2166
  %2171 = fmul fast float %2146, 0x3FF7154760000000
  %2172 = call float @dx.op.unary.f32(i32 21, float %2171)  ; Exp(value)
  %2173 = fsub fast float 1.000000e+00, %2172
  %2174 = fmul fast float %2143, %2173
  %2175 = fsub fast float -0.000000e+00, %2174
  %2176 = fdiv fast float %2175, %2146
  br label %2177

; <label>:2177                                    ; preds = %2170, %2166
  %2178 = phi float [ %2172, %2170 ], [ 1.000000e+00, %2166 ]
  %2179 = phi float [ %2176, %2170 ], [ %2143, %2166 ]
  %2180 = fcmp fast ogt float %2076, %2078
  br i1 %2180, label %2181, label %2201, !dx.controlflow.hints !132

; <label>:2181                                    ; preds = %2177
  %2182 = fsub fast float 1.000000e+00, %2078
  %2183 = fmul fast float %2094, %2182
  %2184 = fmul fast float %2095, %2182
  %2185 = fmul fast float %2096, %2182
  %2186 = fmul fast float %2097, %2182
  %2187 = fcmp fast une float %2186, 0.000000e+00
  br i1 %2187, label %2188, label %2239, !dx.controlflow.hints !133

; <label>:2188                                    ; preds = %2181
  %2189 = fmul fast float %2186, 0x3FF7154760000000
  %2190 = call float @dx.op.unary.f32(i32 21, float %2189)  ; Exp(value)
  %2191 = fsub fast float 1.000000e+00, %2190
  %2192 = fmul fast float %2183, %2191
  %2193 = fsub fast float -0.000000e+00, %2192
  %2194 = fmul fast float %2184, %2191
  %2195 = fsub fast float -0.000000e+00, %2194
  %2196 = fmul fast float %2185, %2191
  %2197 = fsub fast float -0.000000e+00, %2196
  %2198 = fdiv fast float %2193, %2186
  %2199 = fdiv fast float %2195, %2186
  %2200 = fdiv fast float %2197, %2186
  br label %2239

; <label>:2201                                    ; preds = %2177
  %2202 = fsub fast float 1.000000e+00, %2076
  %2203 = fmul fast float %2107, %2202
  %2204 = fmul fast float %2118, %2202
  %2205 = fmul fast float %2129, %2202
  %2206 = fmul fast float %2108, %2202
  %2207 = fmul fast float %2119, %2202
  %2208 = fmul fast float %2130, %2202
  %2209 = fcmp fast une float %2206, 0.000000e+00
  br i1 %2209, label %2210, label %2217, !dx.controlflow.hints !131

; <label>:2210                                    ; preds = %2201
  %2211 = fmul fast float %2206, 0x3FF7154760000000
  %2212 = call float @dx.op.unary.f32(i32 21, float %2211)  ; Exp(value)
  %2213 = fsub fast float 1.000000e+00, %2212
  %2214 = fmul fast float %2203, %2213
  %2215 = fsub fast float -0.000000e+00, %2214
  %2216 = fdiv fast float %2215, %2206
  br label %2217

; <label>:2217                                    ; preds = %2210, %2201
  %2218 = phi float [ %2216, %2210 ], [ %2203, %2201 ]
  %2219 = phi float [ %2212, %2210 ], [ 1.000000e+00, %2201 ]
  %2220 = fcmp fast une float %2207, 0.000000e+00
  br i1 %2220, label %2221, label %2228, !dx.controlflow.hints !131

; <label>:2221                                    ; preds = %2217
  %2222 = fmul fast float %2207, 0x3FF7154760000000
  %2223 = call float @dx.op.unary.f32(i32 21, float %2222)  ; Exp(value)
  %2224 = fsub fast float 1.000000e+00, %2223
  %2225 = fmul fast float %2204, %2224
  %2226 = fsub fast float -0.000000e+00, %2225
  %2227 = fdiv fast float %2226, %2207
  br label %2228

; <label>:2228                                    ; preds = %2221, %2217
  %2229 = phi float [ %2227, %2221 ], [ %2204, %2217 ]
  %2230 = phi float [ %2223, %2221 ], [ 1.000000e+00, %2217 ]
  %2231 = fcmp fast une float %2208, 0.000000e+00
  br i1 %2231, label %2232, label %2239, !dx.controlflow.hints !131

; <label>:2232                                    ; preds = %2228
  %2233 = fmul fast float %2208, 0x3FF7154760000000
  %2234 = call float @dx.op.unary.f32(i32 21, float %2233)  ; Exp(value)
  %2235 = fsub fast float 1.000000e+00, %2234
  %2236 = fmul fast float %2205, %2235
  %2237 = fsub fast float -0.000000e+00, %2236
  %2238 = fdiv fast float %2237, %2208
  br label %2239

; <label>:2239                                    ; preds = %2232, %2228, %2188, %2181
  %2240 = phi float [ %2238, %2232 ], [ %2200, %2188 ], [ %2185, %2181 ], [ %2205, %2228 ]
  %2241 = phi float [ %2229, %2232 ], [ %2199, %2188 ], [ %2184, %2181 ], [ %2229, %2228 ]
  %2242 = phi float [ %2218, %2232 ], [ %2198, %2188 ], [ %2183, %2181 ], [ %2218, %2228 ]
  %2243 = phi float [ %2234, %2232 ], [ %2190, %2188 ], [ 1.000000e+00, %2181 ], [ 1.000000e+00, %2228 ]
  %2244 = phi float [ %2230, %2232 ], [ %2190, %2188 ], [ 1.000000e+00, %2181 ], [ %2230, %2228 ]
  %2245 = phi float [ %2219, %2232 ], [ %2190, %2188 ], [ 1.000000e+00, %2181 ], [ %2219, %2228 ]
  %2246 = fmul fast float %2245, %2157
  %2247 = fmul fast float %2244, %2168
  %2248 = fmul fast float %2243, %2179
  %2249 = fadd fast float %2246, %2242
  %2250 = fadd fast float %2247, %2241
  %2251 = fadd fast float %2248, %2240
  %2252 = fmul fast float %2245, %2156
  %2253 = fmul fast float %2244, %2167
  %2254 = fmul fast float %2243, %2178
  br label %2255

; <label>:2255                                    ; preds = %2239, %2050
  %2256 = phi float [ %2254, %2239 ], [ %2056, %2050 ]
  %2257 = phi float [ %2253, %2239 ], [ %2055, %2050 ]
  %2258 = phi float [ %2252, %2239 ], [ %2054, %2050 ]
  %2259 = phi float [ %2251, %2239 ], [ %2053, %2050 ]
  %2260 = phi float [ %2250, %2239 ], [ %2052, %2050 ]
  %2261 = phi float [ %2249, %2239 ], [ %2051, %2050 ]
  %2262 = fmul fast float %2258, %1501
  %2263 = fmul fast float %2257, %1502
  %2264 = fmul fast float %2256, %1503
  %2265 = fmul fast float %319, 0xBFF7154760000000
  %2266 = call float @dx.op.unary.f32(i32 21, float %2265)  ; Exp(value)
  %2267 = call float @dx.op.unary.f32(i32 7, float %2266)  ; Saturate(value)
  %2268 = fsub fast float 1.000000e+00, %2267
  %2269 = fmul fast float %2268, %2261
  %2270 = fmul fast float %2268, %2260
  %2271 = fmul fast float %2268, %2259
  %2272 = fadd fast float %2269, %2262
  %2273 = fadd fast float %2270, %2263
  %2274 = fadd fast float %2271, %2264
  br label %2275

; <label>:2275                                    ; preds = %2255, %1491
  %2276 = phi float [ %2272, %2255 ], [ %1501, %1491 ]
  %2277 = phi float [ %2273, %2255 ], [ %1502, %1491 ]
  %2278 = phi float [ %2274, %2255 ], [ %1503, %1491 ]
  %2279 = xor i1 %221, true
  %2280 = and i1 %67, %2279
  %2281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %2282 = extractvalue %dx.types.CBufRet.f32 %2281, 0
  %2283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %2284 = extractvalue %dx.types.CBufRet.f32 %2283, 0
  %2285 = select i1 %185, float %2282, float %2284
  %2286 = fmul fast float %2285, %2276
  %2287 = fmul fast float %2285, %2277
  %2288 = fmul fast float %2285, %2278
  %2289 = fmul fast float %2287, 5.000000e-01
  %2290 = fadd fast float %2278, %2276
  %2291 = fmul fast float %2285, %2290
  %2292 = fmul fast float %2291, 2.500000e-01
  %2293 = fadd fast float %2292, %2289
  %2294 = call float @dx.op.unary.f32(i32 23, float %2293)  ; Log(value)
  %2295 = fmul fast float %2294, 0x3FE62E4300000000
  %2296 = fmul fast float %2295, %2295
  %2297 = select i1 %2280, float 1.000000e+00, float 0.000000e+00
  store float %2297, float addrspace(3)* %226, align 4, !tbaa !40, !noalias !44
  %2298 = fmul fast float %2295, %2297
  store float %2298, float addrspace(3)* %228, align 4, !tbaa !40, !noalias !44
  %2299 = fmul fast float %2296, %2297
  store float %2299, float addrspace(3)* %230, align 4, !tbaa !40, !noalias !44
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2300 = load float, float addrspace(3)* %232, align 4, !tbaa !40, !noalias !44
  %2301 = fadd fast float %2300, %2297
  %2302 = load float, float addrspace(3)* %235, align 4, !tbaa !40, !noalias !44
  %2303 = fadd fast float %2302, %2295
  %2304 = load float, float addrspace(3)* %238, align 4, !tbaa !40, !noalias !44
  %2305 = fadd fast float %2304, %2296
  store float %2301, float addrspace(3)* %226, align 4, !tbaa !40, !noalias !44
  store float %2303, float addrspace(3)* %228, align 4, !tbaa !40, !noalias !44
  store float %2305, float addrspace(3)* %230, align 4, !tbaa !40, !noalias !44
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2306 = load float, float addrspace(3)* %242, align 4, !tbaa !40, !noalias !44
  %2307 = fadd fast float %2306, %2301
  %2308 = load float, float addrspace(3)* %245, align 4, !tbaa !40, !noalias !44
  %2309 = fadd fast float %2308, %2303
  %2310 = load float, float addrspace(3)* %248, align 4, !tbaa !40, !noalias !44
  %2311 = fadd fast float %2310, %2305
  store float %2307, float addrspace(3)* %226, align 4, !tbaa !40, !noalias !44
  store float %2309, float addrspace(3)* %228, align 4, !tbaa !40, !noalias !44
  store float %2311, float addrspace(3)* %230, align 4, !tbaa !40, !noalias !44
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2312 = load float, float addrspace(3)* %252, align 4, !tbaa !40, !noalias !44
  %2313 = fadd fast float %2312, %2307
  %2314 = load float, float addrspace(3)* %255, align 4, !tbaa !40, !noalias !44
  %2315 = fadd fast float %2314, %2309
  %2316 = fdiv fast float %2315, %2313
  %2317 = and i1 %2280, %262
  br i1 %2317, label %2318, label %2326, !dx.controlflow.hints !48

; <label>:2318                                    ; preds = %2275
  %2319 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %251
  %2320 = load float, float addrspace(3)* %2319, align 4, !tbaa !40, !noalias !44
  %2321 = fadd fast float %2320, %2311
  %2322 = fdiv fast float %2321, %2313
  %2323 = lshr i32 %55, 1
  %2324 = lshr i32 %56, 1
  %2325 = lshr i32 %220, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2323, i32 %2324, i32 %2325, float %2316, float %2322, float %2316, float %2316, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2326

; <label>:2326                                    ; preds = %2318, %2275
  br i1 %2280, label %2327, label %2361, !dx.controlflow.hints !49

; <label>:2327                                    ; preds = %2326
  %2328 = fadd fast float %105, 0x3FE3C6EF40000000
  %2329 = call float @dx.op.unary.f32(i32 22, float %2328)  ; Frc(value)
  %2330 = call float @dx.op.unary.f32(i32 23, float %2286)  ; Log(value)
  %2331 = fadd fast float %2330, -7.000000e+00
  %2332 = call float @dx.op.unary.f32(i32 21, float %2331)  ; Exp(value)
  %2333 = fmul fast float %2329, 2.000000e+00
  %2334 = fadd fast float %2333, -1.000000e+00
  %2335 = fmul fast float %2332, %2334
  %2336 = fcmp fast ogt float %2286, 0.000000e+00
  %2337 = select i1 %2336, float %2335, float 0.000000e+00
  %2338 = fadd fast float %2337, %2286
  %2339 = fadd fast float %105, 0x3FF3C6EF40000000
  %2340 = call float @dx.op.unary.f32(i32 22, float %2339)  ; Frc(value)
  %2341 = call float @dx.op.unary.f32(i32 23, float %2287)  ; Log(value)
  %2342 = fadd fast float %2341, -7.000000e+00
  %2343 = call float @dx.op.unary.f32(i32 21, float %2342)  ; Exp(value)
  %2344 = fmul fast float %2340, 2.000000e+00
  %2345 = fadd fast float %2344, -1.000000e+00
  %2346 = fmul fast float %2343, %2345
  %2347 = fcmp fast ogt float %2287, 0.000000e+00
  %2348 = select i1 %2347, float %2346, float 0.000000e+00
  %2349 = fadd fast float %2348, %2287
  %2350 = fadd fast float %105, 0x3FFDAA66E0000000
  %2351 = call float @dx.op.unary.f32(i32 22, float %2350)  ; Frc(value)
  %2352 = call float @dx.op.unary.f32(i32 23, float %2288)  ; Log(value)
  %2353 = fadd fast float %2352, -6.000000e+00
  %2354 = call float @dx.op.unary.f32(i32 21, float %2353)  ; Exp(value)
  %2355 = fmul fast float %2351, 2.000000e+00
  %2356 = fadd fast float %2355, -1.000000e+00
  %2357 = fmul fast float %2354, %2356
  %2358 = fcmp fast ogt float %2288, 0.000000e+00
  %2359 = select i1 %2358, float %2357, float 0.000000e+00
  %2360 = fadd fast float %2359, %2288
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %55, i32 %56, i32 %220, float %2338, float %2349, float %2360, float %2338, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2361

; <label>:2361                                    ; preds = %2327, %2326
  %2362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %2363 = extractvalue %dx.types.CBufRet.f32 %2362, 0
  %2364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %2365 = extractvalue %dx.types.CBufRet.f32 %2364, 0
  %2366 = select i1 %185, float %2363, float %2365
  %2367 = fmul fast float %2366, %319
  %2368 = fmul fast float %2367, 5.000000e-01
  %2369 = fadd fast float %319, %319
  %2370 = fmul fast float %2366, %2369
  %2371 = fmul fast float %2370, 2.500000e-01
  %2372 = fadd fast float %2371, %2368
  %2373 = fmul fast float %2372, %2372
  store float %2297, float addrspace(3)* %226, align 4, !tbaa !40, !noalias !44
  %2374 = fmul fast float %2372, %2297
  store float %2374, float addrspace(3)* %228, align 4, !tbaa !40, !noalias !44
  %2375 = fmul fast float %2373, %2297
  store float %2375, float addrspace(3)* %230, align 4, !tbaa !40, !noalias !44
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2376 = load float, float addrspace(3)* %232, align 4, !tbaa !40, !noalias !44
  %2377 = fadd fast float %2376, %2297
  %2378 = load float, float addrspace(3)* %235, align 4, !tbaa !40, !noalias !44
  %2379 = fadd fast float %2372, %2378
  %2380 = load float, float addrspace(3)* %238, align 4, !tbaa !40, !noalias !44
  %2381 = fadd fast float %2373, %2380
  store float %2377, float addrspace(3)* %226, align 4, !tbaa !40, !noalias !44
  store float %2379, float addrspace(3)* %228, align 4, !tbaa !40, !noalias !44
  store float %2381, float addrspace(3)* %230, align 4, !tbaa !40, !noalias !44
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2382 = load float, float addrspace(3)* %242, align 4, !tbaa !40, !noalias !44
  %2383 = fadd fast float %2382, %2377
  %2384 = load float, float addrspace(3)* %245, align 4, !tbaa !40, !noalias !44
  %2385 = fadd fast float %2379, %2384
  %2386 = load float, float addrspace(3)* %248, align 4, !tbaa !40, !noalias !44
  %2387 = fadd fast float %2381, %2386
  store float %2383, float addrspace(3)* %226, align 4, !tbaa !40, !noalias !44
  store float %2385, float addrspace(3)* %228, align 4, !tbaa !40, !noalias !44
  store float %2387, float addrspace(3)* %230, align 4, !tbaa !40, !noalias !44
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2388 = load float, float addrspace(3)* %252, align 4, !tbaa !40, !noalias !44
  %2389 = fadd fast float %2388, %2383
  %2390 = load float, float addrspace(3)* %255, align 4, !tbaa !40, !noalias !44
  %2391 = fadd fast float %2390, %2385
  %2392 = fdiv fast float %2391, %2389
  br i1 %2317, label %2393, label %2401, !dx.controlflow.hints !50

; <label>:2393                                    ; preds = %2361
  %2394 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %251
  %2395 = load float, float addrspace(3)* %2394, align 4, !tbaa !40, !noalias !44
  %2396 = fadd fast float %2395, %2387
  %2397 = fdiv fast float %2396, %2389
  %2398 = lshr i32 %55, 1
  %2399 = lshr i32 %56, 1
  %2400 = lshr i32 %220, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2398, i32 %2399, i32 %2400, float %2392, float %2397, float %2392, float %2392, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2401

; <label>:2401                                    ; preds = %2393, %2361
  br i1 %2280, label %2402, label %2430, !dx.controlflow.hints !51

; <label>:2402                                    ; preds = %2401
  %2403 = fadd fast float %105, 0x3FE3C6EF40000000
  %2404 = call float @dx.op.unary.f32(i32 22, float %2403)  ; Frc(value)
  %2405 = call float @dx.op.unary.f32(i32 23, float %2367)  ; Log(value)
  %2406 = fadd fast float %2405, -7.000000e+00
  %2407 = call float @dx.op.unary.f32(i32 21, float %2406)  ; Exp(value)
  %2408 = fmul fast float %2404, 2.000000e+00
  %2409 = fadd fast float %2408, -1.000000e+00
  %2410 = fmul fast float %2407, %2409
  %2411 = fcmp fast ogt float %2367, 0.000000e+00
  %2412 = select i1 %2411, float %2410, float 0.000000e+00
  %2413 = fadd fast float %2412, %2367
  %2414 = fadd fast float %105, 0x3FF3C6EF40000000
  %2415 = call float @dx.op.unary.f32(i32 22, float %2414)  ; Frc(value)
  %2416 = fmul fast float %2415, 2.000000e+00
  %2417 = fadd fast float %2416, -1.000000e+00
  %2418 = fmul fast float %2407, %2417
  %2419 = select i1 %2411, float %2418, float 0.000000e+00
  %2420 = fadd fast float %2419, %2367
  %2421 = fadd fast float %105, 0x3FFDAA66E0000000
  %2422 = call float @dx.op.unary.f32(i32 22, float %2421)  ; Frc(value)
  %2423 = fadd fast float %2405, -6.000000e+00
  %2424 = call float @dx.op.unary.f32(i32 21, float %2423)  ; Exp(value)
  %2425 = fmul fast float %2422, 2.000000e+00
  %2426 = fadd fast float %2425, -1.000000e+00
  %2427 = fmul fast float %2424, %2426
  %2428 = select i1 %2411, float %2427, float 0.000000e+00
  %2429 = fadd fast float %2428, %2367
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %55, i32 %56, i32 %220, float %2413, float %2420, float %2429, float %2413, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2430

; <label>:2430                                    ; preds = %2402, %2401
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
!dx.entryPoints = !{!37}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !23, !28, !31}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22}
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
!21 = !{i32 13, %"class.Texture1D<float>"* undef, !"", i32 0, i32 54, i32 1, i32 1, i32 0, !7}
!22 = !{i32 14, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!23 = !{!24, !25, !26, !27}
!24 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!25 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!26 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!27 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!28 = !{!29, !30}
!29 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!30 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!31 = !{!32, !33, !34, !35, !36}
!32 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!33 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!34 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!35 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!36 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!37 = !{void ()* @cs_volumetric_forwardplus_scatter_global_water_afog, !"cs_volumetric_forwardplus_scatter_global_water_afog", null, !4, !38}
!38 = !{i32 0, i64 272, i32 4, !39}
!39 = !{i32 4, i32 4, i32 4}
!40 = !{!41, !41, i64 0}
!41 = !{!"float", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!45, !47}
!45 = distinct !{!45, !46, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!46 = distinct !{!46, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!47 = distinct !{!47, !46, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = !{!64, !64, i64 0}
!64 = !{!"int", !42, i64 0}
!65 = !{!66, !68, !70, !45, !47}
!66 = distinct !{!66, !67, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!67 = distinct !{!67, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!68 = distinct !{!68, !69, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!69 = distinct !{!69, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!70 = distinct !{!70, !71, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z: %agg.result"}
!71 = distinct !{!71, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z"}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = !{!98, !100, !102, !45, !47}
!98 = distinct !{!98, !99, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!99 = distinct !{!99, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!100 = distinct !{!100, !101, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!101 = distinct !{!101, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!102 = distinct !{!102, !101, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = !{!105}
!105 = distinct !{!105, !106, !"\01?sort@@YAXAIAM00@Z: %c"}
!106 = distinct !{!106, !"\01?sort@@YAXAIAM00@Z"}
!107 = !{!108, !109, !98, !100, !102, !45, !47}
!108 = distinct !{!108, !106, !"\01?sort@@YAXAIAM00@Z: %a"}
!109 = distinct !{!109, !106, !"\01?sort@@YAXAIAM00@Z: %b"}
!110 = !{!109}
!111 = !{!108, !105, !98, !100, !102, !45, !47}
!112 = !{!108}
!113 = !{!109, !105, !98, !100, !102, !45, !47}
!114 = !{!115}
!115 = distinct !{!115, !116, !"\01?sort@@YAXAIAM00@Z: %c"}
!116 = distinct !{!116, !"\01?sort@@YAXAIAM00@Z"}
!117 = !{!118, !119, !98, !100, !102, !45, !47}
!118 = distinct !{!118, !116, !"\01?sort@@YAXAIAM00@Z: %a"}
!119 = distinct !{!119, !116, !"\01?sort@@YAXAIAM00@Z: %b"}
!120 = !{!119}
!121 = !{!118, !115, !98, !100, !102, !45, !47}
!122 = !{!118}
!123 = !{!119, !115, !98, !100, !102, !45, !47}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 2}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 2}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 2}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 2}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}

