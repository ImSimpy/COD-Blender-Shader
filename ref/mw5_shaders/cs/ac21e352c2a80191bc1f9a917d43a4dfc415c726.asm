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
; shader hash: 4e4fd80d85a4cbbf50ca9e94d2cef42c
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
;                                   texture    byte         r/o      T6            t19     1
;                                   texture    byte         r/o      T7            t20     1
;                                   texture     f32          1d      T8             t4     1
;                                   texture     f32     2darray      T9             t3     1
;                                   texture     f32          2d     T10             t0     1
;                                   textureunorm_f32     2darray     T11            t34     1
;                                   texture    byte         r/o     T12            t28     1
;                                   texture     f32          2d     T13             t1     1
;                                   texture     f32          2d     T14            t23     1
;                                   texture     f32          2d     T15             t2     1
;                                   texture     f32          2d     T16            t18     1
;                                   texture    byte         r/o     T17            t12     1
;                                   texture     f32          3d     T18             t5     1
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

define void @cs_volumetric_forwardplus_scatter_global_water() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = alloca [4 x i32], align 4
  %32 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %33 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %34 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %35 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %36 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %37 = alloca [12 x float], align 4
  %38 = alloca [12 x float], align 4
  %39 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.i32 %39, 3
  %41 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.i32 %41, 1
  %43 = mul i32 %42, %40
  %44 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.i32 %44, 1
  %46 = mul i32 %43, %45
  %47 = add i32 %46, %35
  %48 = shl i32 %47, 2
  %49 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %48, i32 undef)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = and i32 %50, 255
  %52 = lshr i32 %50, 8
  %53 = and i32 %52, 255
  %54 = lshr i32 %50, 16
  %55 = and i32 %54, 255
  %56 = shl nuw nsw i32 %51, 2
  %57 = shl nuw nsw i32 %53, 2
  %58 = shl nuw nsw i32 %55, 2
  %59 = add i32 %56, %32
  %60 = add i32 %57, %33
  %61 = add i32 %58, %34
  %62 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.i32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.i32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.i32 %62, 2
  %66 = icmp uge i32 %59, %63
  %67 = icmp uge i32 %60, %64
  %68 = icmp uge i32 %61, %65
  %69 = or i1 %66, %67
  %70 = or i1 %68, %69
  %71 = xor i1 %70, true
  %72 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
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
  %110 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %59, i32 %60, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = fcmp fast ogt float %111, -1.000000e+00
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
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
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = fmul fast float %131, %127
  %135 = fmul fast float %132, %128
  %136 = fmul fast float %133, %129
  %137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.i32 %137, 0
  %139 = uitofp i32 %138 to float
  %140 = fmul fast float %139, %136
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
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
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = fmul fast float %155, %152
  %159 = fmul fast float %156, %152
  %160 = fmul fast float %157, %152
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = fmul fast float %162, %153
  %166 = fmul fast float %163, %153
  %167 = fmul fast float %164, %153
  %168 = fadd fast float %165, %158
  %169 = fadd fast float %166, %159
  %170 = fadd fast float %167, %160
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %174 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %175 = fadd fast float %168, %172
  %176 = fadd fast float %169, %173
  %177 = fadd fast float %170, %174
  %178 = fmul fast float %175, %149
  %179 = fmul fast float %176, %149
  %180 = fmul fast float %177, %149
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
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
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 0
  %195 = fcmp fast ogt float %194, 0.000000e+00
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 0
  %198 = extractvalue %dx.types.CBufRet.f32 %196, 1
  %199 = extractvalue %dx.types.CBufRet.f32 %196, 2
  %200 = fsub fast float %185, %197
  %201 = fadd fast float %200, %199
  %202 = fsub fast float %186, %198
  %203 = fadd fast float %202, %199
  %204 = extractvalue %dx.types.CBufRet.f32 %196, 3
  %205 = fmul fast float %201, %204
  %206 = fmul fast float %203, %204
  %207 = call float @dx.op.unary.f32(i32 7, float %205)  ; Saturate(value)
  %208 = call float @dx.op.unary.f32(i32 7, float %206)  ; Saturate(value)
  %209 = fsub fast float 1.000000e+00, %207
  %210 = fsub fast float 1.000000e+00, %208
  %211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %27, float %209, float %210, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %215 = fmul fast float %214, %212
  %216 = extractvalue %dx.types.CBufRet.f32 %213, 3
  %217 = fadd fast float %216, %215
  %218 = fcmp fast ogt float %212, 0.000000e+00
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = and i32 %220, 32768
  %222 = icmp ne i32 %221, 0
  %223 = and i1 %218, %222
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %226 = fadd fast float %225, %217
  %227 = fcmp fast ole float %187, %226
  %228 = and i1 %223, %227
  %229 = select i1 %195, i32 %138, i32 0
  %230 = add i32 %229, %61
  %231 = xor i1 %195, %228
  %232 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %233 = fmul fast float %232, 0x3FE62E4300000000
  %234 = fmul fast float %233, %233
  %235 = select i1 %70, float 0.000000e+00, float 1.000000e+00
  %236 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %36
  store float %235, float addrspace(3)* %236, align 4, !tbaa !44, !noalias !48
  %237 = fmul fast float %233, %235
  %238 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %36
  store float %237, float addrspace(3)* %238, align 4, !tbaa !44, !noalias !48
  %239 = fmul fast float %234, %235
  %240 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %36
  store float %239, float addrspace(3)* %240, align 4, !tbaa !44, !noalias !48
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %241 = xor i32 %36, 4
  %242 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %241
  %243 = load float, float addrspace(3)* %242, align 4, !tbaa !44, !noalias !48
  %244 = fadd fast float %243, %235
  %245 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %241
  %246 = load float, float addrspace(3)* %245, align 4, !tbaa !44, !noalias !48
  %247 = fadd fast float %246, %233
  %248 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %241
  %249 = load float, float addrspace(3)* %248, align 4, !tbaa !44, !noalias !48
  %250 = fadd fast float %249, %234
  store float %244, float addrspace(3)* %236, align 4, !tbaa !44, !noalias !48
  store float %247, float addrspace(3)* %238, align 4, !tbaa !44, !noalias !48
  store float %250, float addrspace(3)* %240, align 4, !tbaa !44, !noalias !48
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %251 = xor i32 %36, 16
  %252 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %251
  %253 = load float, float addrspace(3)* %252, align 4, !tbaa !44, !noalias !48
  %254 = fadd fast float %253, %244
  %255 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %251
  %256 = load float, float addrspace(3)* %255, align 4, !tbaa !44, !noalias !48
  %257 = fadd fast float %256, %247
  %258 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %251
  %259 = load float, float addrspace(3)* %258, align 4, !tbaa !44, !noalias !48
  %260 = fadd fast float %259, %250
  store float %254, float addrspace(3)* %236, align 4, !tbaa !44, !noalias !48
  store float %257, float addrspace(3)* %238, align 4, !tbaa !44, !noalias !48
  store float %260, float addrspace(3)* %240, align 4, !tbaa !44, !noalias !48
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %261 = xor i32 %36, 1
  %262 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %261
  %263 = load float, float addrspace(3)* %262, align 4, !tbaa !44, !noalias !48
  %264 = fadd fast float %263, %254
  %265 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %261
  %266 = load float, float addrspace(3)* %265, align 4, !tbaa !44, !noalias !48
  %267 = fadd fast float %266, %257
  %268 = fdiv fast float %267, %264
  %269 = and i32 %59, 1
  %270 = and i32 %269, %60
  %271 = and i32 %270, %230
  %272 = icmp ne i32 %271, 0
  %273 = and i1 %272, %71
  br i1 %273, label %274, label %282, !dx.controlflow.hints !52

; <label>:274                                     ; preds = %0
  %275 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %261
  %276 = load float, float addrspace(3)* %275, align 4, !tbaa !44, !noalias !48
  %277 = fadd fast float %276, %260
  %278 = fdiv fast float %277, %264
  %279 = lshr i32 %59, 1
  %280 = lshr i32 %60, 1
  %281 = lshr i32 %230, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %279, i32 %280, i32 %281, float %268, float %278, float %268, float %268, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %282

; <label>:282                                     ; preds = %274, %0
  br i1 %70, label %284, label %283, !dx.controlflow.hints !53

; <label>:283                                     ; preds = %282
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %59, i32 %60, i32 %230, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %284

; <label>:284                                     ; preds = %283, %282
  store float %235, float addrspace(3)* %236, align 4, !tbaa !44, !noalias !48
  store float 0.000000e+00, float addrspace(3)* %238, align 4, !tbaa !44, !noalias !48
  store float 0.000000e+00, float addrspace(3)* %240, align 4, !tbaa !44, !noalias !48
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %285 = load float, float addrspace(3)* %242, align 4, !tbaa !44, !noalias !48
  %286 = fadd fast float %285, %235
  %287 = load float, float addrspace(3)* %245, align 4, !tbaa !44, !noalias !48
  %288 = load float, float addrspace(3)* %248, align 4, !tbaa !44, !noalias !48
  store float %286, float addrspace(3)* %236, align 4, !tbaa !44, !noalias !48
  store float %287, float addrspace(3)* %238, align 4, !tbaa !44, !noalias !48
  store float %288, float addrspace(3)* %240, align 4, !tbaa !44, !noalias !48
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %289 = load float, float addrspace(3)* %252, align 4, !tbaa !44, !noalias !48
  %290 = fadd fast float %289, %286
  %291 = load float, float addrspace(3)* %255, align 4, !tbaa !44, !noalias !48
  %292 = fadd fast float %291, %287
  %293 = load float, float addrspace(3)* %258, align 4, !tbaa !44, !noalias !48
  %294 = fadd fast float %293, %288
  store float %290, float addrspace(3)* %236, align 4, !tbaa !44, !noalias !48
  store float %292, float addrspace(3)* %238, align 4, !tbaa !44, !noalias !48
  store float %294, float addrspace(3)* %240, align 4, !tbaa !44, !noalias !48
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %295 = load float, float addrspace(3)* %262, align 4, !tbaa !44, !noalias !48
  %296 = fadd fast float %295, %290
  %297 = load float, float addrspace(3)* %265, align 4, !tbaa !44, !noalias !48
  %298 = fadd fast float %297, %292
  %299 = fdiv fast float %298, %296
  br i1 %273, label %300, label %308, !dx.controlflow.hints !54

; <label>:300                                     ; preds = %284
  %301 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %261
  %302 = load float, float addrspace(3)* %301, align 4, !tbaa !44, !noalias !48
  %303 = fadd fast float %302, %294
  %304 = fdiv fast float %303, %296
  %305 = lshr i32 %59, 1
  %306 = lshr i32 %60, 1
  %307 = lshr i32 %230, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %305, i32 %306, i32 %307, float %299, float %304, float %299, float %299, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %308

; <label>:308                                     ; preds = %300, %284
  br i1 %70, label %310, label %309, !dx.controlflow.hints !55

; <label>:309                                     ; preds = %308
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %59, i32 %60, i32 %230, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %310

; <label>:310                                     ; preds = %309, %308
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 0
  %313 = extractvalue %dx.types.CBufRet.f32 %311, 1
  %314 = fsub fast float %187, %312
  %315 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %314)  ; FMax(a,b)
  %316 = fmul fast float %315, 0x3FF7154760000000
  %317 = fmul fast float %316, %313
  %318 = call float @dx.op.unary.f32(i32 21, float %317)  ; Exp(value)
  %319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.f32 %319, 0
  %321 = extractvalue %dx.types.CBufRet.f32 %319, 1
  %322 = extractvalue %dx.types.CBufRet.f32 %319, 2
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 1
  %325 = fmul fast float %324, %318
  %326 = fmul fast float %325, %320
  %327 = fmul fast float %325, %321
  %328 = fmul fast float %325, %322
  %329 = select i1 %228, float 0.000000e+00, float %325
  %330 = fcmp fast ogt float %329, 0.000000e+00
  br i1 %330, label %331, label %2642, !dx.controlflow.hints !56

; <label>:331                                     ; preds = %310
  %332 = extractvalue %dx.types.CBufRet.f32 %323, 2
  %333 = fmul fast float %332, %325
  %334 = fdiv fast float 1.000000e+00, %329
  %335 = fmul fast float %334, %326
  %336 = fmul fast float %334, %327
  %337 = fmul fast float %334, %328
  %338 = fmul fast float %333, %334
  %339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.i32 %339, 2
  %341 = extractvalue %dx.types.CBufRet.i32 %339, 3
  %342 = call i32 @dx.op.tertiary.i32(i32 49, i32 %53, i32 %340, i32 %51)  ; UMad(a,b,c)
  %343 = call i32 @dx.op.tertiary.i32(i32 49, i32 %55, i32 %341, i32 %342)  ; UMad(a,b,c)
  %344 = fadd fast float %118, 1.000000e+00
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 0
  %347 = extractvalue %dx.types.CBufRet.f32 %345, 1
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 0
  %350 = extractvalue %dx.types.CBufRet.f32 %348, 1
  %351 = fmul fast float %350, %126
  %352 = call float @dx.op.unary.f32(i32 21, float %351)  ; Exp(value)
  %353 = fmul fast float %352, %349
  %354 = fsub fast float 4.000000e+00, %349
  %355 = fadd fast float %354, %353
  %356 = fmul fast float %344, 2.000000e+00
  %357 = fmul fast float %356, %346
  %358 = fmul fast float %119, 2.000000e+00
  %359 = fmul fast float %358, %347
  %360 = fsub fast float 1.000000e+00, %357
  %361 = fsub fast float 1.000000e+00, %359
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 0
  %364 = extractvalue %dx.types.CBufRet.f32 %362, 1
  %365 = extractvalue %dx.types.CBufRet.f32 %362, 2
  %366 = fmul fast float %363, %360
  %367 = fmul fast float %364, %360
  %368 = fmul fast float %365, %360
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = extractvalue %dx.types.CBufRet.f32 %369, 1
  %372 = extractvalue %dx.types.CBufRet.f32 %369, 2
  %373 = fmul fast float %370, %361
  %374 = fmul fast float %371, %361
  %375 = fmul fast float %372, %361
  %376 = fadd fast float %373, %366
  %377 = fadd fast float %374, %367
  %378 = fadd fast float %375, %368
  %379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.f32 %379, 0
  %381 = extractvalue %dx.types.CBufRet.f32 %379, 1
  %382 = extractvalue %dx.types.CBufRet.f32 %379, 2
  %383 = fadd fast float %376, %380
  %384 = fadd fast float %377, %381
  %385 = fadd fast float %378, %382
  %386 = fadd fast float %119, 1.000000e+00
  %387 = fmul fast float %118, 2.000000e+00
  %388 = fmul fast float %387, %346
  %389 = fmul fast float %386, 2.000000e+00
  %390 = fmul fast float %389, %347
  %391 = fsub fast float 1.000000e+00, %388
  %392 = fsub fast float 1.000000e+00, %390
  %393 = fmul fast float %363, %391
  %394 = fmul fast float %364, %391
  %395 = fmul fast float %365, %391
  %396 = fmul fast float %370, %392
  %397 = fmul fast float %371, %392
  %398 = fmul fast float %372, %392
  %399 = fadd fast float %396, %393
  %400 = fadd fast float %397, %394
  %401 = fadd fast float %398, %395
  %402 = fadd fast float %399, %380
  %403 = fadd fast float %400, %381
  %404 = fadd fast float %401, %382
  %405 = fmul fast float %402, %355
  %406 = fmul fast float %403, %355
  %407 = fmul fast float %404, %355
  %408 = fadd fast float %402, %383
  %409 = fmul fast float %355, %408
  %410 = fadd fast float %403, %384
  %411 = fmul fast float %355, %410
  %412 = fadd fast float %404, %385
  %413 = fmul fast float %355, %412
  %414 = fmul fast float %409, 5.000000e-01
  %415 = fmul fast float %411, 5.000000e-01
  %416 = fmul fast float %413, 5.000000e-01
  %417 = fsub fast float %414, %405
  %418 = fsub fast float %415, %406
  %419 = fsub fast float %416, %407
  %420 = call float @dx.op.dot3.f32(i32 55, float %417, float %418, float %419, float %417, float %418, float %419)  ; Dot3(ax,ay,az,bx,by,bz)
  %421 = call float @dx.op.unary.f32(i32 25, float %420)  ; Rsqrt(value)
  %422 = fmul fast float %421, %420
  %423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %424 = extractvalue %dx.types.CBufRet.f32 %423, 0
  %425 = extractvalue %dx.types.CBufRet.f32 %423, 1
  %426 = extractvalue %dx.types.CBufRet.f32 %423, 2
  %427 = fsub fast float %185, %424
  %428 = fsub fast float %186, %425
  %429 = fsub fast float %187, %426
  %430 = fmul fast float %350, %120
  %431 = call float @dx.op.unary.f32(i32 21, float %430)  ; Exp(value)
  %432 = fmul fast float %431, %349
  %433 = fadd fast float %354, %432
  %434 = fmul fast float %127, 2.000000e+00
  %435 = fmul fast float %434, %346
  %436 = fmul fast float %128, 2.000000e+00
  %437 = fmul fast float %436, %347
  %438 = fsub fast float 1.000000e+00, %435
  %439 = fsub fast float 1.000000e+00, %437
  %440 = fmul fast float %363, %438
  %441 = fmul fast float %364, %438
  %442 = fmul fast float %365, %438
  %443 = fmul fast float %370, %439
  %444 = fmul fast float %371, %439
  %445 = fmul fast float %372, %439
  %446 = fadd fast float %443, %440
  %447 = fadd fast float %444, %441
  %448 = fadd fast float %445, %442
  %449 = fadd fast float %446, %380
  %450 = fadd fast float %447, %381
  %451 = fadd fast float %448, %382
  %452 = fmul fast float %449, %433
  %453 = fmul fast float %450, %433
  %454 = fmul fast float %451, %433
  %455 = fadd fast float %120, 1.000000e+00
  %456 = fmul fast float %350, %455
  %457 = call float @dx.op.unary.f32(i32 21, float %456)  ; Exp(value)
  %458 = fsub fast float %457, %431
  %459 = fmul fast float %349, %458
  %460 = fmul fast float %449, %459
  %461 = fsub fast float %457, %431
  %462 = fmul fast float %349, %461
  %463 = fmul fast float %450, %462
  %464 = fsub fast float %457, %431
  %465 = fmul fast float %349, %464
  %466 = fmul fast float %451, %465
  %467 = call float @dx.op.dot3.f32(i32 55, float %460, float %463, float %466, float %460, float %463, float %466)  ; Dot3(ax,ay,az,bx,by,bz)
  %468 = call float @dx.op.unary.f32(i32 25, float %467)  ; Rsqrt(value)
  %469 = fmul fast float %468, %467
  %470 = fmul fast float %460, %468
  %471 = fmul fast float %463, %468
  %472 = fmul fast float %466, %468
  %473 = fsub fast float %217, %426
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 3
  %476 = fcmp fast oeq float %475, 0.000000e+00
  br i1 %476, label %1599, label %477, !dx.controlflow.hints !57

; <label>:477                                     ; preds = %331
  %478 = extractvalue %dx.types.CBufRet.f32 %474, 0
  %479 = extractvalue %dx.types.CBufRet.f32 %474, 1
  %480 = extractvalue %dx.types.CBufRet.f32 %474, 2
  %481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.f32 %481, 0
  %483 = extractvalue %dx.types.CBufRet.f32 %481, 1
  %484 = extractvalue %dx.types.CBufRet.f32 %481, 2
  %485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %486 = extractvalue %dx.types.CBufRet.f32 %485, 2
  %487 = fmul fast float %486, %478
  %488 = fmul fast float %486, %479
  %489 = fmul fast float %486, %480
  %490 = fsub fast float %427, %487
  %491 = fsub fast float %428, %488
  %492 = fsub fast float %429, %489
  %493 = fcmp fast olt float %475, 0.000000e+00
  br i1 %493, label %1025, label %494, !dx.controlflow.hints !58

; <label>:494                                     ; preds = %477
  %495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %496 = extractvalue %dx.types.CBufRet.f32 %495, 0
  %497 = extractvalue %dx.types.CBufRet.f32 %495, 1
  %498 = extractvalue %dx.types.CBufRet.f32 %495, 2
  %499 = extractvalue %dx.types.CBufRet.f32 %495, 3
  %500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.f32 %500, 0
  %502 = extractvalue %dx.types.CBufRet.f32 %500, 1
  %503 = extractvalue %dx.types.CBufRet.f32 %500, 2
  %504 = extractvalue %dx.types.CBufRet.f32 %500, 3
  %505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.f32 %505, 0
  %507 = extractvalue %dx.types.CBufRet.f32 %505, 1
  %508 = extractvalue %dx.types.CBufRet.f32 %505, 2
  %509 = extractvalue %dx.types.CBufRet.f32 %505, 3
  %510 = fmul fast float %496, %490
  %511 = call float @dx.op.tertiary.f32(i32 46, float %491, float %497, float %510)  ; FMad(a,b,c)
  %512 = call float @dx.op.tertiary.f32(i32 46, float %492, float %498, float %511)  ; FMad(a,b,c)
  %513 = fadd fast float %512, %499
  %514 = fmul fast float %501, %490
  %515 = call float @dx.op.tertiary.f32(i32 46, float %491, float %502, float %514)  ; FMad(a,b,c)
  %516 = call float @dx.op.tertiary.f32(i32 46, float %492, float %503, float %515)  ; FMad(a,b,c)
  %517 = fadd fast float %516, %504
  %518 = fmul fast float %506, %490
  %519 = call float @dx.op.tertiary.f32(i32 46, float %491, float %507, float %518)  ; FMad(a,b,c)
  %520 = call float @dx.op.tertiary.f32(i32 46, float %492, float %508, float %519)  ; FMad(a,b,c)
  %521 = fadd fast float %520, %509
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 0
  %524 = extractvalue %dx.types.CBufRet.f32 %522, 1
  %525 = extractvalue %dx.types.CBufRet.f32 %522, 3
  %526 = fmul fast float %525, %513
  %527 = fmul fast float %525, %517
  %528 = fadd fast float %526, %523
  %529 = fadd fast float %527, %524
  %530 = extractvalue %dx.types.CBufRet.f32 %522, 2
  %531 = fcmp fast olt float %530, 0.000000e+00
  %532 = fsub fast float -0.000000e+00, %530
  %533 = select i1 %531, float %532, float %530
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 1
  %536 = fadd fast float %533, %535
  %537 = fcmp fast ogt float %536, 0.000000e+00
  br i1 %537, label %538, label %569, !dx.controlflow.hints !59

; <label>:538                                     ; preds = %494
  %539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %540 = extractvalue %dx.types.CBufRet.f32 %539, 1
  %541 = fsub fast float %540, %521
  %542 = extractvalue %dx.types.CBufRet.f32 %539, 2
  %543 = fmul fast float %541, %542
  %544 = fsub fast float 1.000000e+00, %543
  %545 = call float @dx.op.unary.f32(i32 7, float %544)  ; Saturate(value)
  %546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.f32 %546, 0
  %548 = extractvalue %dx.types.CBufRet.f32 %546, 1
  %549 = fsub fast float %528, %547
  %550 = fsub fast float %529, %548
  %551 = fcmp fast olt float %549, 0.000000e+00
  %552 = fcmp fast olt float %550, 0.000000e+00
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 0
  %555 = extractvalue %dx.types.CBufRet.f32 %553, 1
  %556 = extractvalue %dx.types.CBufRet.f32 %553, 2
  %557 = extractvalue %dx.types.CBufRet.f32 %553, 3
  %558 = select i1 %551, float %554, float %556
  %559 = select i1 %552, float %555, float %557
  %560 = fmul fast float %558, %549
  %561 = fmul fast float %559, %550
  %562 = call float @dx.op.unary.f32(i32 6, float %560)  ; FAbs(value)
  %563 = call float @dx.op.unary.f32(i32 6, float %561)  ; FAbs(value)
  %564 = extractvalue %dx.types.CBufRet.f32 %485, 0
  %565 = call float @dx.op.binary.f32(i32 35, float %562, float %563)  ; FMax(a,b)
  %566 = fsub fast float %564, %565
  %567 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  %568 = fmul fast float %567, %545
  br label %569

; <label>:569                                     ; preds = %538, %494
  %570 = phi float [ %568, %538 ], [ 0.000000e+00, %494 ]
  %571 = call float @dx.op.binary.f32(i32 35, float %570, float 0.000000e+00)  ; FMax(a,b)
  %572 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %571)  ; FMax(a,b)
  %573 = fcmp fast olt float %572, 1.000000e+00
  br i1 %573, label %574, label %972, !dx.controlflow.hints !60

; <label>:574                                     ; preds = %569
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 0
  %577 = fcmp fast une float %576, 0.000000e+00
  br i1 %577, label %578, label %972, !dx.controlflow.hints !61

; <label>:578                                     ; preds = %574
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 0
  %581 = extractvalue %dx.types.CBufRet.f32 %579, 1
  %582 = extractvalue %dx.types.CBufRet.f32 %579, 2
  %583 = extractvalue %dx.types.CBufRet.f32 %579, 3
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %587 = extractvalue %dx.types.CBufRet.f32 %584, 2
  %588 = extractvalue %dx.types.CBufRet.f32 %584, 3
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 0
  %591 = extractvalue %dx.types.CBufRet.f32 %589, 1
  %592 = extractvalue %dx.types.CBufRet.f32 %589, 2
  %593 = extractvalue %dx.types.CBufRet.f32 %589, 3
  %594 = fmul fast float %580, %490
  %595 = call float @dx.op.tertiary.f32(i32 46, float %491, float %581, float %594)  ; FMad(a,b,c)
  %596 = call float @dx.op.tertiary.f32(i32 46, float %492, float %582, float %595)  ; FMad(a,b,c)
  %597 = fadd fast float %596, %583
  %598 = fmul fast float %585, %490
  %599 = call float @dx.op.tertiary.f32(i32 46, float %491, float %586, float %598)  ; FMad(a,b,c)
  %600 = call float @dx.op.tertiary.f32(i32 46, float %492, float %587, float %599)  ; FMad(a,b,c)
  %601 = fadd fast float %600, %588
  %602 = fmul fast float %590, %490
  %603 = call float @dx.op.tertiary.f32(i32 46, float %491, float %591, float %602)  ; FMad(a,b,c)
  %604 = call float @dx.op.tertiary.f32(i32 46, float %492, float %592, float %603)  ; FMad(a,b,c)
  %605 = fadd fast float %604, %593
  %606 = fcmp fast oge float %597, 1.000000e+00
  %607 = fcmp fast oge float %601, 1.000000e+00
  %608 = or i1 %606, %607
  %609 = fcmp fast olt float %597, 0.000000e+00
  %610 = fcmp fast olt float %601, 0.000000e+00
  %611 = or i1 %609, %610
  %612 = or i1 %608, %611
  br i1 %612, label %972, label %613, !dx.controlflow.hints !62

; <label>:613                                     ; preds = %578
  %614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %615 = extractvalue %dx.types.CBufRet.f32 %614, 0
  %616 = extractvalue %dx.types.CBufRet.f32 %614, 1
  %617 = extractvalue %dx.types.CBufRet.f32 %614, 2
  %618 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.i32 %618, 2
  %620 = uitofp i32 %619 to float
  %621 = extractvalue %dx.types.CBufRet.i32 %618, 3
  %622 = uitofp i32 %621 to float
  %623 = extractvalue %dx.types.CBufRet.f32 %614, 3
  %624 = fmul fast float %623, 2.000000e+00
  %625 = fsub fast float %597, %615
  %626 = fsub fast float %601, %616
  %627 = fmul fast float %624, %625
  %628 = fmul fast float %624, %626
  %629 = fdiv fast float 1.000000e+00, %480
  %630 = fmul fast float %628, %629
  %631 = call float @dx.op.unary.f32(i32 6, float %630)  ; FAbs(value)
  %632 = fmul fast float %617, %492
  %633 = fmul fast float %632, %624
  %634 = call float @dx.op.unary.f32(i32 6, float %633)  ; FAbs(value)
  %635 = call float @dx.op.unary.f32(i32 6, float %627)  ; FAbs(value)
  %636 = call float @dx.op.binary.f32(i32 35, float %634, float %631)  ; FMax(a,b)
  %637 = call float @dx.op.binary.f32(i32 35, float %635, float %636)  ; FMax(a,b)
  %638 = fmul fast float %637, 2.000000e+00
  %639 = call float @dx.op.unary.f32(i32 23, float %638)  ; Log(value)
  %640 = call float @dx.op.binary.f32(i32 35, float %639, float %620)  ; FMax(a,b)
  %641 = call float @dx.op.unary.f32(i32 22, float %640)  ; Frc(value)
  %642 = fadd fast float %641, 0xBFEA666660000000
  %643 = fmul fast float %642, 8.000000e+00
  %644 = call float @dx.op.unary.f32(i32 7, float %643)  ; Saturate(value)
  %645 = call float @dx.op.unary.f32(i32 27, float %640)  ; Round_ni(value)
  %646 = fadd fast float %645, %644
  %647 = call float @dx.op.binary.f32(i32 36, float %646, float %622)  ; FMin(a,b)
  %648 = call float @dx.op.unary.f32(i32 27, float %647)  ; Round_ni(value)
  %649 = fsub fast float -0.000000e+00, %648
  %650 = call float @dx.op.unary.f32(i32 21, float %649)  ; Exp(value)
  %651 = fmul fast float %650, %624
  %652 = fmul fast float %651, %597
  %653 = fmul fast float %651, %601
  %654 = fmul fast float %652, 2.500000e-01
  %655 = fmul fast float %653, 2.500000e-01
  %656 = fadd fast float %654, 5.000000e-01
  %657 = fadd fast float %655, 5.000000e-01
  %658 = fsub fast float %622, %620
  %659 = fptoui float %658 to i32
  %660 = add i32 %659, 320
  %661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %660)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.f32 %661, 0
  %663 = extractvalue %dx.types.CBufRet.f32 %661, 1
  %664 = fcmp fast une float %647, %622
  %665 = fsub fast float %597, %662
  %666 = fsub fast float %601, %663
  %667 = call float @dx.op.unary.f32(i32 6, float %665)  ; FAbs(value)
  %668 = call float @dx.op.unary.f32(i32 6, float %666)  ; FAbs(value)
  %669 = fmul fast float %667, %651
  %670 = fmul fast float %668, %651
  %671 = fcmp fast olt float %669, 1.000000e+00
  %672 = fcmp fast olt float %670, 1.000000e+00
  %673 = and i1 %671, %672
  %674 = or i1 %664, %673
  br i1 %674, label %675, label %972, !dx.controlflow.hints !63

; <label>:675                                     ; preds = %613
  %676 = fmul fast float %653, 5.000000e-01
  %677 = fmul fast float %652, 5.000000e-01
  %678 = fadd fast float %676, 5.000000e-01
  %679 = fadd fast float %677, 5.000000e-01
  %680 = sitofp i32 %619 to float
  %681 = fsub fast float %647, %680
  %682 = call float @dx.op.unary.f32(i32 27, float %681)  ; Round_ni(value)
  %683 = call float @dx.op.unary.f32(i32 22, float %647)  ; Frc(value)
  %684 = call float @dx.op.unary.f32(i32 22, float %679)  ; Frc(value)
  %685 = call float @dx.op.unary.f32(i32 22, float %678)  ; Frc(value)
  %686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %26, float %684, float %685, float %682, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %687 = extractvalue %dx.types.ResRet.f32 %686, 0
  %688 = extractvalue %dx.types.ResRet.f32 %686, 1
  %689 = extractvalue %dx.types.ResRet.f32 %686, 2
  %690 = extractvalue %dx.types.ResRet.f32 %686, 3
  %691 = fcmp fast ogt float %683, 0.000000e+00
  br i1 %691, label %692, label %713, !dx.controlflow.hints !64

; <label>:692                                     ; preds = %675
  %693 = fadd fast float %682, 1.000000e+00
  %694 = call float @dx.op.unary.f32(i32 22, float %656)  ; Frc(value)
  %695 = call float @dx.op.unary.f32(i32 22, float %657)  ; Frc(value)
  %696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %26, float %694, float %695, float %693, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %697 = extractvalue %dx.types.ResRet.f32 %696, 0
  %698 = extractvalue %dx.types.ResRet.f32 %696, 1
  %699 = extractvalue %dx.types.ResRet.f32 %696, 2
  %700 = extractvalue %dx.types.ResRet.f32 %696, 3
  %701 = fsub fast float %697, %687
  %702 = fsub fast float %698, %688
  %703 = fsub fast float %699, %689
  %704 = fsub fast float %700, %690
  %705 = fmul fast float %701, %683
  %706 = fmul fast float %702, %683
  %707 = fmul fast float %703, %683
  %708 = fmul fast float %704, %683
  %709 = fadd fast float %705, %687
  %710 = fadd fast float %706, %688
  %711 = fadd fast float %707, %689
  %712 = fadd fast float %708, %690
  br label %713

; <label>:713                                     ; preds = %692, %675
  %714 = phi float [ %709, %692 ], [ %687, %675 ]
  %715 = phi float [ %710, %692 ], [ %688, %675 ]
  %716 = phi float [ %711, %692 ], [ %689, %675 ]
  %717 = phi float [ %712, %692 ], [ %690, %675 ]
  %718 = fadd fast float %714, -5.000000e-01
  %719 = fadd fast float %716, -5.000000e-01
  %720 = fmul fast float %718, 0xBFD5555560000000
  %721 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %719, float %720)  ; FMad(a,b,c)
  %722 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %715, float 0.000000e+00)  ; FMad(a,b,c)
  %723 = fadd fast float %722, %717
  %724 = fmul fast float %718, -7.500000e-01
  %725 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %719, float %724)  ; FMad(a,b,c)
  %726 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %715, float 0.000000e+00)  ; FMad(a,b,c)
  %727 = fadd fast float %726, %717
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 0
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 0
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %733 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %734 = extractvalue %dx.types.CBufRet.f32 %730, 3
  %735 = fsub fast float %731, %721
  %736 = fsub fast float %732, %723
  %737 = fsub fast float %733, %725
  %738 = fsub fast float %734, %727
  %739 = fmul fast float %735, %729
  %740 = fmul fast float %736, %729
  %741 = fmul fast float %737, %729
  %742 = fmul fast float %738, %729
  %743 = fadd fast float %739, %721
  %744 = fadd fast float %740, %723
  %745 = fadd fast float %741, %725
  %746 = fadd fast float %742, %727
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = and i32 %748, 536870911
  %750 = uitofp i32 %749 to float
  %751 = fmul fast float %750, %597
  %752 = fmul fast float %750, %601
  %753 = fptoui float %751 to i32
  %754 = fptoui float %752 to i32
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = and i32 %756, 31
  %758 = lshr i32 %753, %757
  %759 = lshr i32 %754, %757
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = and i32 %761, 31
  %763 = shl i32 1, %762
  %764 = call i32 @dx.op.binary.i32(i32 40, i32 %763, i32 4)  ; UMin(a,b)
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = extractvalue %dx.types.ResRet.i32 %765, 1
  %768 = icmp eq i32 %764, 0
  br i1 %768, label %810, label %769

; <label>:769                                     ; preds = %713
  br label %770

; <label>:770                                     ; preds = %798, %769
  %771 = phi i32 [ %801, %798 ], [ 0, %769 ]
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = lshr i32 %773, 16
  %775 = and i32 %774, 31
  %776 = shl i32 %759, %775
  %777 = add i32 %776, %758
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = and i32 %779, 31
  %781 = shl i32 %777, %780
  %782 = add i32 %781, %771
  %783 = shl i32 %782, 2
  %784 = add i32 %783, 32
  %785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %784, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = icmp slt i32 %786, 0
  %788 = getelementptr [12 x float], [12 x float]* %37, i32 0, i32 %771
  %789 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %771
  %790 = bitcast float* %788 to i32*
  %791 = bitcast float* %789 to i32*
  br i1 %787, label %792, label %798, !dx.controlflow.hints !65

; <label>:792                                     ; preds = %770
  %793 = and i32 %786, 1073741823
  %794 = add nuw nsw i32 %793, 20
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %794, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = extractvalue %dx.types.ResRet.i32 %795, 1
  br label %798

; <label>:798                                     ; preds = %792, %770
  %799 = phi i32 [ %796, %792 ], [ %766, %770 ]
  %800 = phi i32 [ %797, %792 ], [ %767, %770 ]
  store i32 %799, i32* %790, align 4
  store i32 %800, i32* %791, align 4
  %801 = add nuw i32 %771, 1
  %802 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.i32 %802, 2
  %804 = icmp eq i32 %803, 0
  %805 = icmp ugt i32 %786, -1073741825
  %806 = and i1 %805, %804
  %807 = icmp ult i32 %801, %764
  %808 = and i1 %806, %807
  br i1 %808, label %770, label %809, !dx.controlflow.hints !66

; <label>:809                                     ; preds = %798
  br label %810

; <label>:810                                     ; preds = %809, %713
  %811 = phi i32 [ 0, %713 ], [ %801, %809 ]
  %812 = extractvalue %dx.types.CBufRet.f32 %575, 2
  %813 = fptoui float %812 to i32
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %866, label %815

; <label>:815                                     ; preds = %810
  br label %816

; <label>:816                                     ; preds = %861, %815
  %817 = phi i32 [ %862, %861 ], [ %811, %815 ]
  %818 = phi i32 [ %863, %861 ], [ 0, %815 ]
  %819 = lshr i32 %818, 2
  %820 = and i32 %818, 3
  %821 = add nuw nsw i32 %819, 83
  %822 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 %821)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.i32 %822, 0
  %824 = extractvalue %dx.types.CBufRet.i32 %822, 1
  %825 = extractvalue %dx.types.CBufRet.i32 %822, 2
  %826 = extractvalue %dx.types.CBufRet.i32 %822, 3
  %827 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %823, i32* %827, align 4
  %828 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %824, i32* %828, align 4
  %829 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %825, i32* %829, align 4
  %830 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %826, i32* %830, align 4
  %831 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 %820
  %832 = load i32, i32* %831, align 4, !tbaa !67, !noalias !69
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = lshr i32 %834, 16
  %836 = and i32 %835, 31
  %837 = shl i32 %759, %836
  %838 = add i32 %837, %758
  %839 = shl i32 %838, 2
  %840 = add i32 %839, %832
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %840, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %861, label %844, !dx.controlflow.hints !76

; <label>:844                                     ; preds = %816
  %845 = icmp slt i32 %842, 0
  %846 = getelementptr [12 x float], [12 x float]* %37, i32 0, i32 %817
  %847 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %817
  %848 = bitcast float* %846 to i32*
  %849 = bitcast float* %847 to i32*
  br i1 %845, label %850, label %857, !dx.controlflow.hints !77

; <label>:850                                     ; preds = %844
  %851 = and i32 %842, 1073741823
  %852 = add i32 %832, 20
  %853 = add i32 %852, %851
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = extractvalue %dx.types.ResRet.i32 %854, 1
  br label %857

; <label>:857                                     ; preds = %850, %844
  %858 = phi i32 [ %855, %850 ], [ %766, %844 ]
  %859 = phi i32 [ %856, %850 ], [ %767, %844 ]
  store i32 %858, i32* %848, align 4
  store i32 %859, i32* %849, align 4
  %860 = add i32 %817, 1
  br label %861

; <label>:861                                     ; preds = %857, %816
  %862 = phi i32 [ %817, %816 ], [ %860, %857 ]
  %863 = add nuw i32 %818, 1
  %864 = icmp eq i32 %863, %813
  br i1 %864, label %865, label %816

; <label>:865                                     ; preds = %861
  br label %866

; <label>:866                                     ; preds = %865, %810
  %867 = phi i32 [ %811, %810 ], [ %862, %865 ]
  %868 = icmp eq i32 %867, 1
  %869 = getelementptr [12 x float], [12 x float]* %37, i32 0, i32 0
  %870 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 0
  br i1 %868, label %871, label %874, !dx.controlflow.hints !78

; <label>:871                                     ; preds = %866
  %872 = load float, float* %869, align 4
  %873 = load float, float* %870, align 4
  br label %901

; <label>:874                                     ; preds = %866
  %875 = load float, float* %869, align 4
  %876 = load float, float* %870, align 4
  %877 = fdiv fast float 1.000000e+00, %876
  %878 = fsub fast float %875, %877
  %879 = icmp ugt i32 %867, 1
  br i1 %879, label %880, label %896

; <label>:880                                     ; preds = %874
  br label %881

; <label>:881                                     ; preds = %881, %880
  %882 = phi float [ %891, %881 ], [ %878, %880 ]
  %883 = phi float [ %892, %881 ], [ %875, %880 ]
  %884 = phi i32 [ %893, %881 ], [ 1, %880 ]
  %885 = getelementptr [12 x float], [12 x float]* %37, i32 0, i32 %884
  %886 = load float, float* %885, align 4
  %887 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %884
  %888 = load float, float* %887, align 4
  %889 = fdiv fast float 1.000000e+00, %888
  %890 = fsub fast float %886, %889
  %891 = call float @dx.op.binary.f32(i32 36, float %882, float %890)  ; FMin(a,b)
  %892 = call float @dx.op.binary.f32(i32 35, float %883, float %886)  ; FMax(a,b)
  %893 = add nuw i32 %884, 1
  %894 = icmp eq i32 %893, %867
  br i1 %894, label %895, label %881

; <label>:895                                     ; preds = %881
  br label %896

; <label>:896                                     ; preds = %895, %874
  %897 = phi float [ %878, %874 ], [ %891, %895 ]
  %898 = phi float [ %875, %874 ], [ %892, %895 ]
  %899 = fsub fast float %898, %897
  %900 = fdiv fast float 1.000000e+00, %899
  br label %901

; <label>:901                                     ; preds = %896, %871
  %902 = phi float [ %872, %871 ], [ %898, %896 ]
  %903 = phi float [ %873, %871 ], [ %900, %896 ]
  %904 = fadd fast float %605, %902
  %905 = fmul fast float %904, %903
  %906 = call float @dx.op.unary.f32(i32 7, float %905)  ; Saturate(value)
  %907 = fmul fast float %906, 2.000000e+00
  %908 = fsub fast float 1.000000e+00, %907
  %909 = fmul fast float %743, %743
  %910 = fsub fast float %744, %909
  %911 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %910)  ; FMax(a,b)
  %912 = fdiv fast float 1.000000e+00, %911
  %913 = fmul fast float %744, %743
  %914 = fsub fast float %745, %913
  %915 = fsub fast float %908, %743
  %916 = fmul fast float %908, %908
  %917 = fsub fast float %916, %744
  %918 = fmul fast float %912, %914
  %919 = fmul fast float %918, %915
  %920 = fsub fast float %917, %919
  %921 = fmul fast float %744, %744
  %922 = fsub fast float %746, %921
  %923 = fmul fast float %914, %914
  %924 = fmul fast float %923, %912
  %925 = fsub fast float %922, %924
  %926 = fdiv fast float %920, %925
  %927 = fmul fast float %926, %914
  %928 = fsub fast float %915, %927
  %929 = fmul fast float %928, %912
  %930 = fmul fast float %929, %743
  %931 = fsub fast float 1.000000e+00, %930
  %932 = fmul fast float %926, %744
  %933 = fsub fast float %931, %932
  %934 = fmul fast float %929, %929
  %935 = fmul fast float %926, 4.000000e+00
  %936 = fmul fast float %935, %933
  %937 = fsub fast float %934, %936
  %938 = call float @dx.op.unary.f32(i32 24, float %937)  ; Sqrt(value)
  %939 = fcmp fast oge float %929, 0.000000e+00
  %940 = fsub fast float -0.000000e+00, %938
  %941 = select i1 %939, float %940, float %938
  %942 = fsub fast float %941, %929
  %943 = fdiv fast float %942, %926
  %944 = fdiv fast float %933, %942
  %945 = fmul fast float %943, 5.000000e-01
  %946 = fmul fast float %944, 2.000000e+00
  %947 = select i1 %939, float %945, float %946
  %948 = select i1 %939, float %946, float %945
  %949 = call float @dx.op.binary.f32(i32 35, float %947, float %948)  ; FMax(a,b)
  %950 = call float @dx.op.binary.f32(i32 36, float %947, float %948)  ; FMin(a,b)
  %951 = fcmp fast ogt float %908, %949
  %952 = fsub fast float %908, %950
  %953 = fsub fast float %908, %949
  %954 = fsub fast float %949, %950
  %955 = select i1 %951, float %953, float %954
  %956 = fmul float %952, %955
  %957 = select i1 %951, float %950, float %908
  %958 = fcmp fast ogt float %908, %950
  %959 = fmul fast float %957, %949
  %960 = fadd fast float %957, %949
  %961 = fmul fast float %960, %743
  %962 = fadd fast float %959, %744
  %963 = fsub fast float %962, %961
  %964 = fdiv fast float %963, %956
  %965 = select i1 %958, float %964, float 0.000000e+00
  %966 = fsub fast float 1.000000e+00, %965
  %967 = select i1 %951, float %966, float %965
  %968 = call float @dx.op.unary.f32(i32 7, float %967)  ; Saturate(value)
  %969 = extractvalue %dx.types.CBufRet.f32 %728, 3
  %970 = fmul fast float %969, %968
  %971 = fsub fast float 1.000000e+00, %970
  br label %972

; <label>:972                                     ; preds = %901, %613, %578, %574, %569
  %973 = phi float [ 1.000000e+00, %569 ], [ %971, %901 ], [ 1.000000e+00, %578 ], [ 1.000000e+00, %613 ], [ 1.000000e+00, %574 ]
  %974 = fcmp fast ogt float %570, 0.000000e+00
  br i1 %974, label %975, label %981, !dx.controlflow.hints !79

; <label>:975                                     ; preds = %972
  %976 = fadd fast float %535, %521
  %977 = call float @dx.op.binary.f32(i32 35, float %976, float 0.000000e+00)  ; FMax(a,b)
  %978 = fadd fast float %977, 0x3F10000000000000
  %979 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %28, float %528, float %529, float undef, float undef, i32 0, i32 0, i32 undef, float %978)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %980 = extractvalue %dx.types.ResRet.f32 %979, 0
  br label %981

; <label>:981                                     ; preds = %975, %972
  %982 = phi float [ %980, %975 ], [ 1.000000e+00, %972 ]
  %983 = fsub fast float %982, %973
  %984 = fmul fast float %983, %570
  %985 = fadd fast float %984, %973
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 2
  %988 = fcmp fast ogt float %987, 0.000000e+00
  br i1 %988, label %989, label %1025, !dx.controlflow.hints !80

; <label>:989                                     ; preds = %981
  %990 = fcmp fast ugt float %987, 0.000000e+00
  br i1 %990, label %991, label %1022, !dx.controlflow.hints !81

; <label>:991                                     ; preds = %989
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 0
  %994 = extractvalue %dx.types.CBufRet.f32 %992, 1
  %995 = extractvalue %dx.types.CBufRet.f32 %992, 2
  %996 = extractvalue %dx.types.CBufRet.f32 %992, 3
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 0
  %999 = extractvalue %dx.types.CBufRet.f32 %997, 1
  %1000 = extractvalue %dx.types.CBufRet.f32 %997, 2
  %1001 = extractvalue %dx.types.CBufRet.f32 %997, 3
  %1002 = extractvalue %dx.types.CBufRet.f32 %986, 0
  %1003 = extractvalue %dx.types.CBufRet.f32 %986, 1
  %1004 = fadd fast float %424, %490
  %1005 = fadd fast float %425, %491
  %1006 = fadd fast float %426, %492
  %1007 = fmul fast float %1004, %993
  %1008 = call float @dx.op.tertiary.f32(i32 46, float %994, float %1005, float %1007)  ; FMad(a,b,c)
  %1009 = call float @dx.op.tertiary.f32(i32 46, float %995, float %1006, float %1008)  ; FMad(a,b,c)
  %1010 = fadd fast float %1009, %996
  %1011 = fmul fast float %1004, %998
  %1012 = call float @dx.op.tertiary.f32(i32 46, float %999, float %1005, float %1011)  ; FMad(a,b,c)
  %1013 = call float @dx.op.tertiary.f32(i32 46, float %1000, float %1006, float %1012)  ; FMad(a,b,c)
  %1014 = fadd fast float %1013, %1001
  %1015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %24, float %1010, float %1014, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 0
  %1017 = fmul fast float %1016, %1003
  %1018 = fadd fast float %1017, %1002
  %1019 = call float @dx.op.unary.f32(i32 7, float %1018)  ; Saturate(value)
  %1020 = fmul fast float %1019, %987
  %1021 = fsub fast float 1.000000e+00, %1020
  br label %1022

; <label>:1022                                    ; preds = %991, %989
  %1023 = phi float [ %1021, %991 ], [ 1.000000e+00, %989 ]
  %1024 = fmul fast float %1023, %985
  br label %1025

; <label>:1025                                    ; preds = %1022, %981, %477
  %1026 = phi float [ 1.000000e+00, %477 ], [ %1024, %1022 ], [ %985, %981 ]
  %1027 = call float @dx.op.binary.f32(i32 36, float %1026, float %1026)  ; FMin(a,b)
  %1028 = call float @dx.op.binary.f32(i32 36, float %1026, float %1027)  ; FMin(a,b)
  %1029 = fcmp fast ogt float %1028, 0.000000e+00
  br i1 %1029, label %1030, label %1185, !dx.controlflow.hints !82

; <label>:1030                                    ; preds = %1025
  %1031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.f32 %1031, 0
  %1033 = extractvalue %dx.types.CBufRet.f32 %1031, 1
  %1034 = extractvalue %dx.types.CBufRet.f32 %1031, 2
  %1035 = extractvalue %dx.types.CBufRet.f32 %1031, 3
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.CBufRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.CBufRet.f32 %1036, 2
  %1040 = extractvalue %dx.types.CBufRet.f32 %1036, 3
  %1041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.CBufRet.f32 %1041, 1
  %1044 = extractvalue %dx.types.CBufRet.f32 %1041, 2
  %1045 = extractvalue %dx.types.CBufRet.f32 %1041, 3
  %1046 = fmul fast float %1032, %490
  %1047 = call float @dx.op.tertiary.f32(i32 46, float %491, float %1033, float %1046)  ; FMad(a,b,c)
  %1048 = call float @dx.op.tertiary.f32(i32 46, float %492, float %1034, float %1047)  ; FMad(a,b,c)
  %1049 = fadd fast float %1048, %1035
  %1050 = fmul fast float %1037, %490
  %1051 = call float @dx.op.tertiary.f32(i32 46, float %491, float %1038, float %1050)  ; FMad(a,b,c)
  %1052 = call float @dx.op.tertiary.f32(i32 46, float %492, float %1039, float %1051)  ; FMad(a,b,c)
  %1053 = fadd fast float %1052, %1040
  %1054 = fmul fast float %1042, %490
  %1055 = call float @dx.op.tertiary.f32(i32 46, float %491, float %1043, float %1054)  ; FMad(a,b,c)
  %1056 = call float @dx.op.tertiary.f32(i32 46, float %492, float %1044, float %1055)  ; FMad(a,b,c)
  %1057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %1058 = extractvalue %dx.types.CBufRet.f32 %1057, 0
  %1059 = extractvalue %dx.types.CBufRet.f32 %1057, 1
  %1060 = extractvalue %dx.types.CBufRet.f32 %1057, 3
  %1061 = fmul fast float %1060, %1049
  %1062 = fmul fast float %1060, %1053
  %1063 = fadd fast float %1061, %1058
  %1064 = fadd fast float %1062, %1059
  %1065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %1066 = extractvalue %dx.types.CBufRet.f32 %1065, 0
  %1067 = extractvalue %dx.types.CBufRet.f32 %1065, 1
  %1068 = fsub fast float %1063, %1066
  %1069 = fsub fast float %1064, %1067
  %1070 = fcmp fast olt float %1068, 0.000000e+00
  %1071 = fcmp fast olt float %1069, 0.000000e+00
  %1072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %1073 = extractvalue %dx.types.CBufRet.f32 %1072, 0
  %1074 = extractvalue %dx.types.CBufRet.f32 %1072, 1
  %1075 = extractvalue %dx.types.CBufRet.f32 %1072, 2
  %1076 = extractvalue %dx.types.CBufRet.f32 %1072, 3
  %1077 = select i1 %1070, float %1073, float %1075
  %1078 = select i1 %1071, float %1074, float %1076
  %1079 = fmul fast float %1077, %1068
  %1080 = fmul fast float %1078, %1069
  %1081 = call float @dx.op.unary.f32(i32 6, float %1079)  ; FAbs(value)
  %1082 = call float @dx.op.unary.f32(i32 6, float %1080)  ; FAbs(value)
  %1083 = extractvalue %dx.types.CBufRet.f32 %485, 0
  %1084 = call float @dx.op.binary.f32(i32 35, float %1081, float %1082)  ; FMax(a,b)
  %1085 = fsub fast float %1083, %1084
  %1086 = call float @dx.op.unary.f32(i32 7, float %1085)  ; Saturate(value)
  %1087 = fcmp fast ogt float %1086, 0.000000e+00
  br i1 %1087, label %1088, label %1129, !dx.controlflow.hints !83

; <label>:1088                                    ; preds = %1030
  %1089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %27, float %1063, float %1064, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 1
  %1091 = fcmp fast ogt float %1090, 0.000000e+00
  br i1 %1091, label %1092, label %1125, !dx.controlflow.hints !84

; <label>:1092                                    ; preds = %1088
  %1093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %27, float %1063, float %1064, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = extractvalue %dx.types.ResRet.f32 %1093, 1
  %1096 = extractvalue %dx.types.ResRet.f32 %1093, 2
  %1097 = extractvalue %dx.types.ResRet.f32 %1093, 3
  %1098 = fsub fast float 1.000000e+00, %1045
  %1099 = fsub fast float %1098, %1056
  %1100 = fmul fast float %1099, 0x400921FB60000000
  %1101 = fadd fast float %1100, 0x3FF921FB60000000
  %1102 = call float @dx.op.unary.f32(i32 13, float %1101)  ; Sin(value)
  %1103 = fadd fast float %1102, -1.000000e+00
  %1104 = fmul fast float %1103, 0x3FD45F3060000000
  %1105 = fmul fast float %1099, 0x401921FB60000000
  %1106 = fadd fast float %1105, 0x400921FB60000000
  %1107 = call float @dx.op.unary.f32(i32 13, float %1106)  ; Sin(value)
  %1108 = fadd fast float %1107, 0x3E7777A5C0000000
  %1109 = fmul fast float %1108, 0x3FC45F3060000000
  %1110 = fmul fast float %1099, 0x4022D97C80000000
  %1111 = fadd fast float %1110, 0x4012D97C80000000
  %1112 = call float @dx.op.unary.f32(i32 13, float %1111)  ; Sin(value)
  %1113 = fadd fast float %1112, 1.000000e+00
  %1114 = fmul fast float %1113, 0x3FBB2995E0000000
  %1115 = fmul fast float %1099, 0x402921FB60000000
  %1116 = fadd fast float %1115, 0x401921FB60000000
  %1117 = call float @dx.op.unary.f32(i32 13, float %1116)  ; Sin(value)
  %1118 = fadd fast float %1117, 0xBE8777A5C0000000
  %1119 = fmul fast float %1118, 0x3FB45F3060000000
  %1120 = call float @dx.op.dot4.f32(i32 56, float %1094, float %1095, float %1096, float %1097, float %1104, float %1109, float %1114, float %1119)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1121 = fmul fast float %1120, 0xBFF7154760000000
  %1122 = call float @dx.op.unary.f32(i32 21, float %1121)  ; Exp(value)
  %1123 = call float @dx.op.unary.f32(i32 7, float %1122)  ; Saturate(value)
  %1124 = fadd float %1123, -1.000000e+00
  br label %1125

; <label>:1125                                    ; preds = %1092, %1088
  %1126 = phi float [ %1124, %1092 ], [ 0.000000e+00, %1088 ]
  %1127 = fmul fast float %1126, %1086
  %1128 = fadd fast float %1127, 1.000000e+00
  br label %1129

; <label>:1129                                    ; preds = %1125, %1030
  %1130 = phi float [ %1128, %1125 ], [ 1.000000e+00, %1030 ]
  %1131 = fmul fast float %1130, %1026
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 1
  %1134 = fsub fast float -0.000000e+00, %185
  %1135 = fsub fast float -0.000000e+00, %186
  %1136 = fsub fast float -0.000000e+00, %429
  %1137 = fsub fast float %1136, %426
  %1138 = fadd fast float %1137, %1133
  %1139 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1134, float %1135, float %1138)  ; Dot3(ax,ay,az,bx,by,bz)
  %1140 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %478, float %479, float %480)  ; Dot3(ax,ay,az,bx,by,bz)
  %1141 = fdiv fast float 1.000000e+00, %1140
  %1142 = fmul fast float %1141, %1139
  %1143 = fmul fast float %478, %1142
  %1144 = fmul fast float %479, %1142
  %1145 = fadd fast float %1143, %185
  %1146 = fadd fast float %1144, %186
  %1147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %1148 = extractvalue %dx.types.CBufRet.f32 %1147, 0
  %1149 = extractvalue %dx.types.CBufRet.f32 %1147, 1
  %1150 = fsub fast float %1145, %1148
  %1151 = fsub fast float %1146, %1149
  %1152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.f32 %1152, 2
  %1154 = extractvalue %dx.types.CBufRet.f32 %1152, 3
  %1155 = fmul fast float %1150, %1153
  %1156 = fmul fast float %1151, %1154
  %1157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1158 = extractvalue %dx.types.CBufRet.i32 %1157, 3
  %1159 = icmp eq i32 %1158, 0
  br i1 %1159, label %1165, label %1160, !dx.controlflow.hints !85

; <label>:1160                                    ; preds = %1129
  %1161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %26, float %1155, float %1156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1162 = extractvalue %dx.types.ResRet.f32 %1161, 0
  %1163 = extractvalue %dx.types.ResRet.f32 %1161, 1
  %1164 = extractvalue %dx.types.ResRet.f32 %1161, 2
  br label %1170

; <label>:1165                                    ; preds = %1129
  %1166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %27, float %1155, float %1156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1167 = extractvalue %dx.types.ResRet.f32 %1166, 0
  %1168 = extractvalue %dx.types.ResRet.f32 %1166, 1
  %1169 = extractvalue %dx.types.ResRet.f32 %1166, 2
  br label %1170

; <label>:1170                                    ; preds = %1165, %1160
  %1171 = phi float [ %1162, %1160 ], [ %1167, %1165 ]
  %1172 = phi float [ %1163, %1160 ], [ %1168, %1165 ]
  %1173 = phi float [ %1164, %1160 ], [ %1169, %1165 ]
  %1174 = extractvalue %dx.types.CBufRet.f32 %1132, 2
  %1175 = fmul fast float %1174, %1171
  %1176 = extractvalue %dx.types.CBufRet.f32 %1132, 0
  %1177 = fsub fast float %1142, %1176
  %1178 = fsub fast float %1177, %1175
  %1179 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1178)  ; FMax(a,b)
  %1180 = fmul fast float %1179, %1172
  %1181 = call float @dx.op.binary.f32(i32 36, float %1173, float %1180)  ; FMin(a,b)
  %1182 = fmul fast float %1181, 0xBFF7154760000000
  %1183 = call float @dx.op.unary.f32(i32 21, float %1182)  ; Exp(value)
  %1184 = fmul fast float %1131, %1183
  br label %1185

; <label>:1185                                    ; preds = %1170, %1025
  %1186 = phi float [ %1184, %1170 ], [ %1026, %1025 ]
  %1187 = call float @dx.op.binary.f32(i32 36, float %1186, float %1186)  ; FMin(a,b)
  %1188 = call float @dx.op.binary.f32(i32 36, float %1186, float %1187)  ; FMin(a,b)
  %1189 = fcmp fast ogt float %1188, 0.000000e+00
  br i1 %1189, label %1190, label %1599, !dx.controlflow.hints !86

; <label>:1190                                    ; preds = %1185
  br i1 %228, label %1191, label %1572, !dx.controlflow.hints !87

; <label>:1191                                    ; preds = %1190
  %1192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.i32 %1192, 0
  %1194 = and i32 %1193, 64
  %1195 = icmp ne i32 %1194, 0
  %1196 = fsub fast float %187, %217
  %1197 = fcmp fast ule float %1196, 0.000000e+00
  %1198 = fmul fast float %478, 5.120000e+02
  %1199 = fmul fast float %479, 5.120000e+02
  %1200 = fmul fast float %480, 5.120000e+02
  %1201 = fadd fast float %1200, %429
  %1202 = fsub fast float %473, %1201
  %1203 = fmul fast float %1202, 2.000000e+00
  %1204 = fadd fast float %1203, %1201
  %1205 = select i1 %1197, float %1201, float %1204
  %1206 = fsub fast float %1205, %429
  %1207 = call float @dx.op.dot3.f32(i32 55, float %1198, float %1199, float %1206, float %1198, float %1199, float %1206)  ; Dot3(ax,ay,az,bx,by,bz)
  %1208 = call float @dx.op.unary.f32(i32 25, float %1207)  ; Rsqrt(value)
  %1209 = fmul fast float %1208, %1198
  %1210 = fmul fast float %1208, %1199
  %1211 = fmul fast float %1208, %1206
  %1212 = fsub fast float %217, %187
  %1213 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1212)  ; Dot3(ax,ay,az,bx,by,bz)
  %1214 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1209, float %1210, float %1211)  ; Dot3(ax,ay,az,bx,by,bz)
  %1215 = fdiv fast float 1.000000e+00, %1214
  %1216 = fmul fast float %1215, %1213
  %1217 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %1196, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1218 = fcmp fast ogt float %1217, 0.000000e+00
  %1219 = fcmp fast olt float %1217, 0.000000e+00
  %1220 = zext i1 %1218 to i32
  %1221 = zext i1 %1219 to i32
  %1222 = sub nsw i32 %1220, %1221
  %1223 = sitofp i32 %1222 to float
  %1224 = fsub fast float %1205, %473
  %1225 = call float @dx.op.dot3.f32(i32 55, float %1198, float %1199, float %1224, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1226 = fcmp fast ogt float %1225, 0.000000e+00
  %1227 = fcmp fast olt float %1225, 0.000000e+00
  %1228 = zext i1 %1226 to i32
  %1229 = zext i1 %1227 to i32
  %1230 = sub nsw i32 %1228, %1229
  %1231 = sitofp i32 %1230 to float
  %1232 = fcmp fast une float %1223, %1231
  br i1 %1232, label %1233, label %1243, !dx.controlflow.hints !88

; <label>:1233                                    ; preds = %1191
  %1234 = fmul fast float %1216, %1211
  %1235 = fmul fast float %1216, %1210
  %1236 = fmul fast float %1216, %1209
  %1237 = fmul fast float %1236, %1236
  %1238 = fmul fast float %1235, %1235
  %1239 = fadd fast float %1237, %1238
  %1240 = fmul fast float %1234, %1234
  %1241 = fadd fast float %1239, %1240
  %1242 = call float @dx.op.unary.f32(i32 24, float %1241)  ; Sqrt(value)
  br label %1253

; <label>:1243                                    ; preds = %1191
  %1244 = icmp slt i32 %1222, 0
  br i1 %1244, label %1245, label %1253, !dx.controlflow.hints !89

; <label>:1245                                    ; preds = %1243
  %1246 = fsub fast float %429, %1205
  %1247 = fmul fast float %1198, %1198
  %1248 = fmul fast float %1199, %1199
  %1249 = fadd fast float %1247, %1248
  %1250 = fmul fast float %1246, %1246
  %1251 = fadd fast float %1249, %1250
  %1252 = call float @dx.op.unary.f32(i32 24, float %1251)  ; Sqrt(value)
  br label %1253

; <label>:1253                                    ; preds = %1245, %1243, %1233
  %1254 = phi float [ %1242, %1233 ], [ %1252, %1245 ], [ 0.000000e+00, %1243 ]
  %1255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.i32 %1255, 1
  %1257 = icmp ne i32 %1256, 0
  %1258 = and i1 %1197, %1257
  %1259 = call float @dx.op.dot3.f32(i32 55, float %1209, float %1210, float %1211, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1260 = fmul fast float %1259, %1259
  %1261 = fsub fast float 1.000000e+00, %1260
  %1262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1262, 0
  %1264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1265 = extractvalue %dx.types.CBufRet.f32 %1264, 0
  %1266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1266, 0
  %1268 = extractvalue %dx.types.CBufRet.f32 %1262, 1
  %1269 = extractvalue %dx.types.CBufRet.f32 %1264, 1
  %1270 = extractvalue %dx.types.CBufRet.f32 %1266, 1
  %1271 = extractvalue %dx.types.CBufRet.f32 %1262, 3
  %1272 = extractvalue %dx.types.CBufRet.f32 %1264, 3
  %1273 = extractvalue %dx.types.CBufRet.f32 %1266, 3
  %1274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.f32 %1274, 0
  %1276 = extractvalue %dx.types.CBufRet.f32 %1274, 1
  %1277 = extractvalue %dx.types.CBufRet.f32 %1274, 2
  %1278 = extractvalue %dx.types.CBufRet.f32 %1274, 3
  br i1 %1258, label %1279, label %1472, !dx.controlflow.hints !90

; <label>:1279                                    ; preds = %1253
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 0
  %1282 = fmul fast float %1281, %1281
  %1283 = fmul fast float %1282, %1261
  %1284 = fsub fast float 1.000000e+00, %1283
  %1285 = fcmp fast oge float %1284, 0.000000e+00
  %1286 = fmul fast float %1281, %1209
  %1287 = fmul fast float %1281, %1210
  %1288 = fmul fast float %1281, %1211
  %1289 = call float @dx.op.unary.f32(i32 24, float %1284)  ; Sqrt(value)
  %1290 = fmul fast float %1281, %1259
  %1291 = fsub fast float -0.000000e+00, %1289
  %1292 = fsub fast float %1291, %1290
  %1293 = fadd fast float %1292, %1288
  %1294 = select i1 %1285, float %1286, float 0.000000e+00
  %1295 = select i1 %1285, float %1287, float 0.000000e+00
  %1296 = select i1 %1285, float %1293, float 0.000000e+00
  %1297 = fmul fast float %1294, %1254
  %1298 = fmul fast float %1295, %1254
  %1299 = fmul fast float %1296, %1254
  %1300 = fadd fast float %185, %1297
  %1301 = fadd fast float %1300, %1271
  %1302 = fadd fast float %186, %1298
  %1303 = fadd fast float %1302, %1272
  %1304 = fadd fast float %187, %1299
  %1305 = fadd fast float %1304, %1273
  %1306 = fmul fast float %1301, %1263
  %1307 = call float @dx.op.tertiary.f32(i32 46, float %1303, float %1265, float %1306)  ; FMad(a,b,c)
  %1308 = call float @dx.op.tertiary.f32(i32 46, float %1305, float %1267, float %1307)  ; FMad(a,b,c)
  %1309 = fmul fast float %1301, %1268
  %1310 = call float @dx.op.tertiary.f32(i32 46, float %1303, float %1269, float %1309)  ; FMad(a,b,c)
  %1311 = call float @dx.op.tertiary.f32(i32 46, float %1305, float %1270, float %1310)  ; FMad(a,b,c)
  %1312 = fsub fast float %1308, %1271
  %1313 = fsub fast float %1312, %1275
  %1314 = fadd fast float %1313, %1277
  %1315 = fsub fast float %1311, %1272
  %1316 = fsub fast float %1315, %1276
  %1317 = fadd fast float %1316, %1277
  %1318 = fmul fast float %1314, %1278
  %1319 = fmul fast float %1317, %1278
  %1320 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1321 = call float @dx.op.unary.f32(i32 7, float %1319)  ; Saturate(value)
  %1322 = fsub fast float 1.000000e+00, %1320
  %1323 = fsub fast float 1.000000e+00, %1321
  %1324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %27, float %1322, float %1323, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1325 = extractvalue %dx.types.ResRet.f32 %1324, 0
  %1326 = fmul fast float %1325, 0x3FBC5ABC00000000
  %1327 = extractvalue %dx.types.CBufRet.f32 %1280, 1
  %1328 = fmul fast float %1327, %1327
  %1329 = fmul fast float %1328, %1261
  %1330 = fsub fast float 1.000000e+00, %1329
  %1331 = fcmp fast oge float %1330, 0.000000e+00
  %1332 = fmul fast float %1327, %1209
  %1333 = fmul fast float %1327, %1210
  %1334 = fmul fast float %1327, %1211
  %1335 = call float @dx.op.unary.f32(i32 24, float %1330)  ; Sqrt(value)
  %1336 = fmul fast float %1327, %1259
  %1337 = fsub fast float -0.000000e+00, %1335
  %1338 = fsub fast float %1337, %1336
  %1339 = fadd fast float %1338, %1334
  %1340 = select i1 %1331, float %1332, float 0.000000e+00
  %1341 = select i1 %1331, float %1333, float 0.000000e+00
  %1342 = select i1 %1331, float %1339, float 0.000000e+00
  %1343 = fmul fast float %1340, %1254
  %1344 = fmul fast float %1341, %1254
  %1345 = fmul fast float %1342, %1254
  %1346 = fadd fast float %185, %1343
  %1347 = fadd fast float %1346, %1271
  %1348 = fadd fast float %186, %1344
  %1349 = fadd fast float %1348, %1272
  %1350 = fadd fast float %187, %1345
  %1351 = fadd fast float %1350, %1273
  %1352 = fmul fast float %1347, %1263
  %1353 = call float @dx.op.tertiary.f32(i32 46, float %1349, float %1265, float %1352)  ; FMad(a,b,c)
  %1354 = call float @dx.op.tertiary.f32(i32 46, float %1351, float %1267, float %1353)  ; FMad(a,b,c)
  %1355 = fmul fast float %1347, %1268
  %1356 = call float @dx.op.tertiary.f32(i32 46, float %1349, float %1269, float %1355)  ; FMad(a,b,c)
  %1357 = call float @dx.op.tertiary.f32(i32 46, float %1351, float %1270, float %1356)  ; FMad(a,b,c)
  %1358 = fsub fast float %1354, %1271
  %1359 = fsub fast float %1358, %1275
  %1360 = fadd fast float %1359, %1277
  %1361 = fsub fast float %1357, %1272
  %1362 = fsub fast float %1361, %1276
  %1363 = fadd fast float %1362, %1277
  %1364 = fmul fast float %1360, %1278
  %1365 = fmul fast float %1363, %1278
  %1366 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1367 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1368 = fsub fast float 1.000000e+00, %1366
  %1369 = fsub fast float 1.000000e+00, %1367
  %1370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %27, float %1368, float %1369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1371 = extractvalue %dx.types.ResRet.f32 %1370, 0
  %1372 = fmul fast float %1371, 0x3F9E4BBD60000000
  %1373 = extractvalue %dx.types.CBufRet.f32 %1280, 2
  %1374 = fmul fast float %1373, %1373
  %1375 = fmul fast float %1374, %1261
  %1376 = fsub fast float 1.000000e+00, %1375
  %1377 = fcmp fast oge float %1376, 0.000000e+00
  %1378 = fmul fast float %1373, %1209
  %1379 = fmul fast float %1373, %1210
  %1380 = fmul fast float %1373, %1211
  %1381 = call float @dx.op.unary.f32(i32 24, float %1376)  ; Sqrt(value)
  %1382 = fmul fast float %1373, %1259
  %1383 = fsub fast float -0.000000e+00, %1381
  %1384 = fsub fast float %1383, %1382
  %1385 = fadd fast float %1384, %1380
  %1386 = select i1 %1377, float %1378, float 0.000000e+00
  %1387 = select i1 %1377, float %1379, float 0.000000e+00
  %1388 = select i1 %1377, float %1385, float 0.000000e+00
  %1389 = fmul fast float %1386, %1254
  %1390 = fmul fast float %1387, %1254
  %1391 = fmul fast float %1388, %1254
  %1392 = fadd fast float %185, %1389
  %1393 = fadd fast float %1392, %1271
  %1394 = fadd fast float %186, %1390
  %1395 = fadd fast float %1394, %1272
  %1396 = fadd fast float %187, %1391
  %1397 = fadd fast float %1396, %1273
  %1398 = fmul fast float %1393, %1263
  %1399 = call float @dx.op.tertiary.f32(i32 46, float %1395, float %1265, float %1398)  ; FMad(a,b,c)
  %1400 = call float @dx.op.tertiary.f32(i32 46, float %1397, float %1267, float %1399)  ; FMad(a,b,c)
  %1401 = fmul fast float %1393, %1268
  %1402 = call float @dx.op.tertiary.f32(i32 46, float %1395, float %1269, float %1401)  ; FMad(a,b,c)
  %1403 = call float @dx.op.tertiary.f32(i32 46, float %1397, float %1270, float %1402)  ; FMad(a,b,c)
  %1404 = fsub fast float %1400, %1271
  %1405 = fsub fast float %1404, %1275
  %1406 = fadd fast float %1405, %1277
  %1407 = fsub fast float %1403, %1272
  %1408 = fsub fast float %1407, %1276
  %1409 = fadd fast float %1408, %1277
  %1410 = fmul fast float %1406, %1278
  %1411 = fmul fast float %1409, %1278
  %1412 = call float @dx.op.unary.f32(i32 7, float %1410)  ; Saturate(value)
  %1413 = call float @dx.op.unary.f32(i32 7, float %1411)  ; Saturate(value)
  %1414 = fsub fast float 1.000000e+00, %1412
  %1415 = fsub fast float 1.000000e+00, %1413
  %1416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %27, float %1414, float %1415, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  %1418 = fmul fast float %1417, 0x3FDDEACB00000000
  %1419 = fadd fast float %1418, %1372
  %1420 = extractvalue %dx.types.CBufRet.f32 %1280, 3
  %1421 = fmul fast float %1420, %1420
  %1422 = fmul fast float %1421, %1261
  %1423 = fsub fast float 1.000000e+00, %1422
  %1424 = fcmp fast oge float %1423, 0.000000e+00
  %1425 = fmul fast float %1420, %1209
  %1426 = fmul fast float %1420, %1210
  %1427 = fmul fast float %1420, %1211
  %1428 = call float @dx.op.unary.f32(i32 24, float %1423)  ; Sqrt(value)
  %1429 = fmul fast float %1420, %1259
  %1430 = fsub fast float -0.000000e+00, %1428
  %1431 = fsub fast float %1430, %1429
  %1432 = fadd fast float %1431, %1427
  %1433 = select i1 %1424, float %1425, float 0.000000e+00
  %1434 = select i1 %1424, float %1426, float 0.000000e+00
  %1435 = select i1 %1424, float %1432, float 0.000000e+00
  %1436 = fmul fast float %1433, %1254
  %1437 = fmul fast float %1434, %1254
  %1438 = fmul fast float %1435, %1254
  %1439 = fadd fast float %185, %1436
  %1440 = fadd fast float %1439, %1271
  %1441 = fadd fast float %186, %1437
  %1442 = fadd fast float %1441, %1272
  %1443 = fadd fast float %187, %1438
  %1444 = fadd fast float %1443, %1273
  %1445 = fmul fast float %1440, %1263
  %1446 = call float @dx.op.tertiary.f32(i32 46, float %1442, float %1265, float %1445)  ; FMad(a,b,c)
  %1447 = call float @dx.op.tertiary.f32(i32 46, float %1444, float %1267, float %1446)  ; FMad(a,b,c)
  %1448 = fmul fast float %1440, %1268
  %1449 = call float @dx.op.tertiary.f32(i32 46, float %1442, float %1269, float %1448)  ; FMad(a,b,c)
  %1450 = call float @dx.op.tertiary.f32(i32 46, float %1444, float %1270, float %1449)  ; FMad(a,b,c)
  %1451 = fsub fast float %1447, %1271
  %1452 = fsub fast float %1451, %1275
  %1453 = fadd fast float %1452, %1277
  %1454 = fsub fast float %1450, %1272
  %1455 = fsub fast float %1454, %1276
  %1456 = fadd fast float %1455, %1277
  %1457 = fmul fast float %1453, %1278
  %1458 = fmul fast float %1456, %1278
  %1459 = call float @dx.op.unary.f32(i32 7, float %1457)  ; Saturate(value)
  %1460 = call float @dx.op.unary.f32(i32 7, float %1458)  ; Saturate(value)
  %1461 = fsub fast float 1.000000e+00, %1459
  %1462 = fsub fast float 1.000000e+00, %1460
  %1463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %27, float %1461, float %1462, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  %1465 = fmul fast float %1464, 0x3FE0183CA0000000
  %1466 = fmul fast float %1464, 0x3FB51033E0000000
  %1467 = fadd fast float %1419, %1465
  %1468 = fadd fast float %1417, %1371
  %1469 = fmul fast float %1468, 0x3FD9D2A200000000
  %1470 = fadd fast float %1466, %1326
  %1471 = fadd fast float %1470, %1469
  br label %1518

; <label>:1472                                    ; preds = %1253
  %1473 = fmul fast float %1261, 0x3FE2024E20000000
  %1474 = fsub fast float 1.000000e+00, %1473
  %1475 = fcmp fast oge float %1474, 0.000000e+00
  %1476 = fmul fast float %1209, 0x3FE8018960000000
  %1477 = fmul fast float %1210, 0x3FE8018960000000
  %1478 = fmul fast float %1211, 0x3FE8018960000000
  %1479 = call float @dx.op.unary.f32(i32 24, float %1474)  ; Sqrt(value)
  %1480 = fmul fast float %1259, 0x3FE8018960000000
  %1481 = fsub fast float %1478, %1479
  %1482 = fsub fast float %1481, %1480
  %1483 = select i1 %1475, float %1476, float 0.000000e+00
  %1484 = select i1 %1475, float %1477, float 0.000000e+00
  %1485 = select i1 %1475, float %1482, float 0.000000e+00
  %1486 = select i1 %1197, float %1483, float %1209
  %1487 = select i1 %1197, float %1484, float %1210
  %1488 = select i1 %1197, float %1485, float %1211
  %1489 = fmul fast float %1486, %1254
  %1490 = fmul fast float %1487, %1254
  %1491 = fmul fast float %1488, %1254
  %1492 = fadd fast float %185, %1489
  %1493 = fadd fast float %1492, %1271
  %1494 = fadd fast float %186, %1490
  %1495 = fadd fast float %1494, %1272
  %1496 = fadd fast float %187, %1491
  %1497 = fadd fast float %1496, %1273
  %1498 = fmul fast float %1493, %1263
  %1499 = call float @dx.op.tertiary.f32(i32 46, float %1495, float %1265, float %1498)  ; FMad(a,b,c)
  %1500 = call float @dx.op.tertiary.f32(i32 46, float %1497, float %1267, float %1499)  ; FMad(a,b,c)
  %1501 = fmul fast float %1493, %1268
  %1502 = call float @dx.op.tertiary.f32(i32 46, float %1495, float %1269, float %1501)  ; FMad(a,b,c)
  %1503 = call float @dx.op.tertiary.f32(i32 46, float %1497, float %1270, float %1502)  ; FMad(a,b,c)
  %1504 = fsub fast float %1500, %1271
  %1505 = fsub fast float %1504, %1275
  %1506 = fadd fast float %1505, %1277
  %1507 = fsub fast float %1503, %1272
  %1508 = fsub fast float %1507, %1276
  %1509 = fadd fast float %1508, %1277
  %1510 = fmul fast float %1506, %1278
  %1511 = fmul fast float %1509, %1278
  %1512 = call float @dx.op.unary.f32(i32 7, float %1510)  ; Saturate(value)
  %1513 = call float @dx.op.unary.f32(i32 7, float %1511)  ; Saturate(value)
  %1514 = fsub fast float 1.000000e+00, %1512
  %1515 = fsub fast float 1.000000e+00, %1513
  %1516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %27, float %1514, float %1515, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1517 = extractvalue %dx.types.ResRet.f32 %1516, 0
  br label %1518

; <label>:1518                                    ; preds = %1472, %1279
  %1519 = phi float [ %1517, %1472 ], [ %1467, %1279 ]
  %1520 = phi float [ %1517, %1472 ], [ %1471, %1279 ]
  %1521 = phi float [ %1517, %1472 ], [ %1325, %1279 ]
  %1522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.f32 %1522, 0
  %1524 = call float @dx.op.unary.f32(i32 6, float %1523)  ; FAbs(value)
  %1525 = fmul fast float %1254, %1254
  %1526 = fadd fast float %1525, 1.000000e+00
  %1527 = fdiv fast float %1524, %1526
  %1528 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1529 = call float @dx.op.unary.f32(i32 6, float %1259)  ; FAbs(value)
  %1530 = fsub fast float 1.000000e+00, %1529
  %1531 = bitcast float %1530 to i32
  %1532 = sitofp i32 %1531 to float
  %1533 = fptosi float %1532 to i32
  %1534 = bitcast i32 %1533 to float
  %1535 = fmul fast float %1534, 0x3FEF333340000000
  %1536 = fadd fast float %1535, 0x3F999999A0000000
  %1537 = call float @dx.op.unary.f32(i32 7, float %1536)  ; Saturate(value)
  %1538 = fsub fast float 1.000000e+00, %1537
  %1539 = fadd fast float %1519, 1.000000e+00
  %1540 = fadd fast float %1520, 1.000000e+00
  %1541 = fadd fast float %1521, 1.000000e+00
  %1542 = fmul fast float %1538, %1539
  %1543 = fmul fast float %1538, %1540
  %1544 = fmul fast float %1538, %1541
  %1545 = fmul fast float %1528, %1539
  %1546 = fmul fast float %1545, %1537
  %1547 = fmul fast float %1528, %1540
  %1548 = fmul fast float %1547, %1537
  %1549 = fmul fast float %1528, %1541
  %1550 = fmul fast float %1549, %1537
  %1551 = fadd fast float %1546, 1.000000e+00
  %1552 = fadd fast float %1548, 1.000000e+00
  %1553 = fadd fast float %1550, 1.000000e+00
  %1554 = call float @dx.op.unary.f32(i32 6, float %1196)  ; FAbs(value)
  %1555 = call float @dx.op.unary.f32(i32 7, float %1554)  ; Saturate(value)
  %1556 = select i1 %1197, float %1542, float %1551
  %1557 = select i1 %1197, float %1543, float %1552
  %1558 = select i1 %1197, float %1544, float %1553
  %1559 = select i1 %1195, float %1555, float 0.000000e+00
  %1560 = fadd fast float %1556, -1.000000e+00
  %1561 = fadd fast float %1557, -1.000000e+00
  %1562 = fadd fast float %1558, -1.000000e+00
  %1563 = fmul fast float %1560, %1559
  %1564 = fmul fast float %1561, %1559
  %1565 = fmul fast float %1562, %1559
  %1566 = fadd fast float %1563, 1.000000e+00
  %1567 = fadd fast float %1564, 1.000000e+00
  %1568 = fadd fast float %1565, 1.000000e+00
  %1569 = fmul fast float %1566, %482
  %1570 = fmul fast float %1567, %483
  %1571 = fmul fast float %1568, %484
  br label %1572

; <label>:1572                                    ; preds = %1518, %1190
  %1573 = phi float [ %1569, %1518 ], [ %482, %1190 ]
  %1574 = phi float [ %1570, %1518 ], [ %483, %1190 ]
  %1575 = phi float [ %1571, %1518 ], [ %484, %1190 ]
  %1576 = call float @dx.op.dot3.f32(i32 55, float %478, float %479, float %480, float %190, float %191, float %192)  ; Dot3(ax,ay,az,bx,by,bz)
  %1577 = fcmp fast ogt float %338, 0.000000e+00
  %1578 = select i1 %1577, float 1.000000e+00, float -1.000000e+00
  %1579 = fmul fast float %109, 7.812500e-03
  %1580 = fmul fast float %109, 3.125000e-02
  %1581 = fadd fast float %1580, -3.125000e-02
  %1582 = fmul fast float %1578, 5.000000e-01
  %1583 = fmul fast float %1582, %1576
  %1584 = fmul fast float %1578, %338
  %1585 = fadd fast float %1579, 4.921875e-01
  %1586 = fadd fast float %1585, %1583
  %1587 = fadd fast float %1579, 0x3FB25F3060000000
  %1588 = fadd fast float %1581, %1584
  %1589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %27, float %1586, float %1587, float %1588, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1590 = extractvalue %dx.types.ResRet.f32 %1589, 0
  %1591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1592 = extractvalue %dx.types.CBufRet.f32 %1591, 0
  %1593 = fmul fast float %1186, 0x400921FB60000000
  %1594 = fmul fast float %1593, %1590
  %1595 = fmul fast float %1594, %1592
  %1596 = fmul fast float %1595, %1573
  %1597 = fmul fast float %1595, %1574
  %1598 = fmul fast float %1595, %1575
  br label %1599

; <label>:1599                                    ; preds = %1572, %1185, %331
  %1600 = phi float [ %1596, %1572 ], [ 0.000000e+00, %331 ], [ 0.000000e+00, %1185 ]
  %1601 = phi float [ %1597, %1572 ], [ 0.000000e+00, %331 ], [ 0.000000e+00, %1185 ]
  %1602 = phi float [ %1598, %1572 ], [ 0.000000e+00, %331 ], [ 0.000000e+00, %1185 ]
  %1603 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.i32 %1603, 0
  %1605 = icmp eq i32 %1604, 0
  br i1 %1605, label %2613, label %1606, !dx.controlflow.hints !91

; <label>:1606                                    ; preds = %1599
  %1607 = add nsw i32 %1604, -1
  %1608 = call i32 @dx.op.binary.i32(i32 37, i32 %1607, i32 0)  ; IMax(a,b)
  br label %1609

; <label>:1609                                    ; preds = %2606, %1606
  %1610 = phi i32 [ 0, %1606 ], [ %2610, %2606 ]
  %1611 = phi float [ %1600, %1606 ], [ %2607, %2606 ]
  %1612 = phi float [ %1601, %1606 ], [ %2608, %2606 ]
  %1613 = phi float [ %1602, %1606 ], [ %2609, %2606 ]
  %1614 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1615 = extractvalue %dx.types.CBufRet.i32 %1614, 0
  %1616 = call i32 @dx.op.tertiary.i32(i32 49, i32 %343, i32 %1615, i32 %1610)  ; UMad(a,b,c)
  %1617 = shl i32 %1616, 2
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1617, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = icmp eq i32 %1619, 0
  br i1 %1620, label %2606, label %1621

; <label>:1621                                    ; preds = %1609
  br label %1622

; <label>:1622                                    ; preds = %2061, %1621
  %1623 = phi i32 [ %1632, %2061 ], [ %1619, %1621 ]
  %1624 = phi float [ %2062, %2061 ], [ %1611, %1621 ]
  %1625 = phi float [ %2063, %2061 ], [ %1612, %1621 ]
  %1626 = phi float [ %2064, %2061 ], [ %1613, %1621 ]
  %1627 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1623)  ; FirstbitLo(value)
  %1628 = shl i32 %1610, 5
  %1629 = add i32 %1627, %1628
  %1630 = and i32 %1627, 31
  %1631 = shl i32 1, %1630
  %1632 = xor i32 %1631, %1623
  %1633 = mul i32 %1629, 112
  %1634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1635 = extractvalue %dx.types.ResRet.f32 %1634, 0
  %1636 = extractvalue %dx.types.ResRet.f32 %1634, 1
  %1637 = extractvalue %dx.types.ResRet.f32 %1634, 2
  %1638 = or i32 %1633, 12
  %1639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1638, i32 undef)  ; BufferLoad(srv,index,wot)
  %1640 = extractvalue %dx.types.ResRet.f32 %1639, 0
  %1641 = add i32 %1633, 16
  %1642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1641, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.f32 %1642, 0
  %1644 = extractvalue %dx.types.ResRet.f32 %1642, 1
  %1645 = extractvalue %dx.types.ResRet.f32 %1642, 2
  %1646 = add i32 %1633, 28
  %1647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1646, i32 undef)  ; BufferLoad(srv,index,wot)
  %1648 = extractvalue %dx.types.ResRet.i32 %1647, 0
  %1649 = add i32 %1633, 32
  %1650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1649, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.f32 %1650, 0
  %1652 = extractvalue %dx.types.ResRet.f32 %1650, 1
  %1653 = extractvalue %dx.types.ResRet.f32 %1650, 2
  %1654 = add i32 %1633, 44
  %1655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1654, i32 undef)  ; BufferLoad(srv,index,wot)
  %1656 = extractvalue %dx.types.ResRet.f32 %1655, 0
  %1657 = add i32 %1633, 48
  %1658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1659 = extractvalue %dx.types.ResRet.f32 %1658, 0
  %1660 = extractvalue %dx.types.ResRet.f32 %1658, 1
  %1661 = extractvalue %dx.types.ResRet.f32 %1658, 2
  %1662 = extractvalue %dx.types.ResRet.f32 %1658, 3
  %1663 = add i32 %1633, 64
  %1664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1665 = extractvalue %dx.types.ResRet.f32 %1664, 0
  %1666 = extractvalue %dx.types.ResRet.f32 %1664, 1
  %1667 = extractvalue %dx.types.ResRet.f32 %1664, 2
  %1668 = extractvalue %dx.types.ResRet.f32 %1664, 3
  %1669 = add i32 %1633, 92
  %1670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %1671 = extractvalue %dx.types.ResRet.i32 %1670, 0
  %1672 = and i32 %1671, 65535
  %1673 = uitofp i32 %1672 to float
  %1674 = lshr i32 %1671, 16
  %1675 = uitofp i32 %1674 to float
  %1676 = and i32 %1648, 65535
  %1677 = and i32 %1648, 50331648
  %1678 = icmp eq i32 %1677, 33554432
  %1679 = fdiv fast float 1.000000e+00, %469
  br i1 %1678, label %1680, label %1872, !dx.controlflow.hints !92

; <label>:1680                                    ; preds = %1622
  %1681 = fsub fast float %1659, %1651
  %1682 = fsub fast float %1660, %1652
  %1683 = fsub fast float %1661, %1653
  %1684 = fmul fast float %470, %469
  %1685 = fmul fast float %471, %469
  %1686 = fmul fast float %472, %469
  %1687 = fadd fast float %1684, %452
  %1688 = fadd fast float %1685, %453
  %1689 = fadd fast float %1686, %454
  %1690 = fmul fast float %1651, 2.000000e+00
  %1691 = fmul fast float %1652, 2.000000e+00
  %1692 = fmul fast float %1653, 2.000000e+00
  %1693 = call float @dx.op.dot3.f32(i32 55, float %1690, float %1691, float %1692, float %1690, float %1691, float %1692)  ; Dot3(ax,ay,az,bx,by,bz)
  %1694 = fdiv fast float %1690, %1693
  %1695 = fdiv fast float %1691, %1693
  %1696 = fdiv fast float %1692, %1693
  %1697 = fsub fast float %452, %1681
  %1698 = fsub fast float %453, %1682
  %1699 = fsub fast float %454, %1683
  %1700 = call float @dx.op.dot3.f32(i32 55, float %1697, float %1698, float %1699, float %1690, float %1691, float %1692)  ; Dot3(ax,ay,az,bx,by,bz)
  %1701 = fmul fast float %1700, %1694
  %1702 = fmul fast float %1700, %1695
  %1703 = fmul fast float %1700, %1696
  %1704 = fsub fast float %452, %1701
  %1705 = fsub fast float %453, %1702
  %1706 = fsub fast float %454, %1703
  %1707 = fsub fast float %1687, %1681
  %1708 = fsub fast float %1688, %1682
  %1709 = fsub fast float %1689, %1683
  %1710 = call float @dx.op.dot3.f32(i32 55, float %1707, float %1708, float %1709, float %1690, float %1691, float %1692)  ; Dot3(ax,ay,az,bx,by,bz)
  %1711 = fmul fast float %1710, %1694
  %1712 = fmul fast float %1710, %1695
  %1713 = fmul fast float %1710, %1696
  %1714 = fsub fast float %1687, %1711
  %1715 = fsub fast float %1688, %1712
  %1716 = fsub fast float %1689, %1713
  %1717 = fsub fast float %1714, %1704
  %1718 = fsub fast float %1715, %1705
  %1719 = fsub fast float %1716, %1706
  %1720 = fsub fast float %1681, %1704
  %1721 = fsub fast float %1682, %1705
  %1722 = fsub fast float %1683, %1706
  %1723 = call float @dx.op.dot3.f32(i32 55, float %1720, float %1721, float %1722, float %1717, float %1718, float %1719)  ; Dot3(ax,ay,az,bx,by,bz)
  %1724 = call float @dx.op.dot3.f32(i32 55, float %1717, float %1718, float %1719, float %1717, float %1718, float %1719)  ; Dot3(ax,ay,az,bx,by,bz)
  %1725 = fdiv fast float %1723, %1724
  %1726 = fcmp fast une float %1704, %1714
  %1727 = fcmp fast une float %1705, %1715
  %1728 = fcmp fast une float %1706, %1716
  %1729 = or i1 %1726, %1727
  %1730 = or i1 %1728, %1729
  %1731 = select i1 %1730, float %1725, float 0.000000e+00
  %1732 = call float @dx.op.unary.f32(i32 7, float %1731)  ; Saturate(value)
  %1733 = fmul fast float %1732, %1684
  %1734 = fmul fast float %1732, %1685
  %1735 = fmul fast float %1732, %1686
  %1736 = fadd fast float %1697, %1733
  %1737 = fadd fast float %1698, %1734
  %1738 = fadd fast float %1699, %1735
  %1739 = call float @dx.op.dot3.f32(i32 55, float %1736, float %1737, float %1738, float %1690, float %1691, float %1692)  ; Dot3(ax,ay,az,bx,by,bz)
  %1740 = fdiv fast float %1739, %1693
  %1741 = call float @dx.op.unary.f32(i32 7, float %1740)  ; Saturate(value)
  %1742 = fmul fast float %1690, %1741
  %1743 = fmul fast float %1691, %1741
  %1744 = fmul fast float %1692, %1741
  %1745 = fadd fast float %1742, %1681
  %1746 = fadd fast float %1743, %1682
  %1747 = fadd fast float %1744, %1683
  %1748 = fmul fast float %1667, %1643
  %1749 = fmul fast float %1667, %1644
  %1750 = fmul fast float %1667, %1645
  %1751 = fadd fast float %1745, %1748
  %1752 = fadd fast float %1746, %1749
  %1753 = fadd fast float %1747, %1750
  %1754 = fsub fast float -0.000000e+00, %1666
  %1755 = fdiv fast float %1754, %1665
  %1756 = fmul fast float %1755, %1755
  %1757 = call float @dx.op.dot3.f32(i32 55, float %470, float %471, float %472, float %1643, float %1644, float %1645)  ; Dot3(ax,ay,az,bx,by,bz)
  %1758 = fsub fast float %452, %1751
  %1759 = fsub fast float %453, %1752
  %1760 = fsub fast float %454, %1753
  %1761 = call float @dx.op.dot3.f32(i32 55, float %1758, float %1759, float %1760, float %1643, float %1644, float %1645)  ; Dot3(ax,ay,az,bx,by,bz)
  %1762 = fsub fast float %1751, %452
  %1763 = fsub fast float %1752, %453
  %1764 = fsub fast float %1753, %454
  %1765 = fmul fast float %1757, %1757
  %1766 = fsub fast float %1765, %1756
  %1767 = fmul fast float %1761, %1757
  %1768 = call float @dx.op.dot3.f32(i32 55, float %1762, float %1763, float %1764, float %470, float %471, float %472)  ; Dot3(ax,ay,az,bx,by,bz)
  %1769 = fmul fast float %1768, %1756
  %1770 = fadd fast float %1769, %1767
  %1771 = fmul fast float %1770, 2.000000e+00
  %1772 = fmul fast float %1761, %1761
  %1773 = call float @dx.op.dot3.f32(i32 55, float %1762, float %1763, float %1764, float %1762, float %1763, float %1764)  ; Dot3(ax,ay,az,bx,by,bz)
  %1774 = fmul fast float %1773, %1756
  %1775 = fsub fast float %1772, %1774
  %1776 = fmul fast float %1771, %1771
  %1777 = fmul fast float %1766, 4.000000e+00
  %1778 = fmul fast float %1777, %1775
  %1779 = fsub fast float %1776, %1778
  %1780 = fcmp fast ogt float %1779, 0.000000e+00
  br i1 %1780, label %1781, label %1872, !dx.controlflow.hints !93

; <label>:1781                                    ; preds = %1680
  %1782 = call float @dx.op.unary.f32(i32 24, float %1779)  ; Sqrt(value)
  %1783 = fdiv fast float 5.000000e-01, %1766
  %1784 = fsub fast float -0.000000e+00, %1771
  %1785 = fsub fast float %1784, %1782
  %1786 = fmul fast float %1785, %1783
  %1787 = fsub fast float %1782, %1771
  %1788 = fmul fast float %1787, %1783
  %1789 = call float @dx.op.binary.f32(i32 35, float %1786, float %1788)  ; FMax(a,b)
  %1790 = call float @dx.op.binary.f32(i32 36, float %1786, float %1788)  ; FMin(a,b)
  %1791 = fsub fast float %1745, %452
  %1792 = fsub fast float %1746, %453
  %1793 = fsub fast float %1747, %454
  %1794 = call float @dx.op.dot3.f32(i32 55, float %1791, float %1792, float %1793, float %1643, float %1644, float %1645)  ; Dot3(ax,ay,az,bx,by,bz)
  %1795 = fdiv fast float %1794, %1757
  %1796 = fcmp fast ogt float %1757, 0.000000e+00
  br i1 %1796, label %1797, label %1800, !dx.controlflow.hints !94

; <label>:1797                                    ; preds = %1781
  %1798 = call float @dx.op.binary.f32(i32 36, float %1790, float %1795)  ; FMin(a,b)
  %1799 = call float @dx.op.binary.f32(i32 36, float %1789, float %1795)  ; FMin(a,b)
  br label %1803

; <label>:1800                                    ; preds = %1781
  %1801 = call float @dx.op.binary.f32(i32 35, float %1790, float %1795)  ; FMax(a,b)
  %1802 = call float @dx.op.binary.f32(i32 35, float %1789, float %1795)  ; FMax(a,b)
  br label %1803

; <label>:1803                                    ; preds = %1800, %1797
  %1804 = phi float [ %1798, %1797 ], [ %1801, %1800 ]
  %1805 = phi float [ %1799, %1797 ], [ %1802, %1800 ]
  %1806 = fcmp fast oge float %1804, 0.000000e+00
  %1807 = fcmp fast olt float %1804, %469
  %1808 = and i1 %1806, %1807
  %1809 = fcmp fast ogt float %1805, 0.000000e+00
  %1810 = fcmp fast ole float %1805, %469
  %1811 = and i1 %1809, %1810
  %1812 = or i1 %1808, %1811
  br i1 %1812, label %1813, label %1872, !dx.controlflow.hints !95

; <label>:1813                                    ; preds = %1803
  %1814 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1804)  ; FMax(a,b)
  %1815 = call float @dx.op.binary.f32(i32 36, float %469, float %1805)  ; FMin(a,b)
  br i1 %1796, label %1816, label %1838, !dx.controlflow.hints !96

; <label>:1816                                    ; preds = %1813
  %1817 = fmul fast float %1815, %470
  %1818 = fmul fast float %1815, %471
  %1819 = fmul fast float %1815, %472
  %1820 = fsub fast float %1762, %1817
  %1821 = fsub fast float %1763, %1818
  %1822 = fsub fast float %1764, %1819
  %1823 = call float @dx.op.dot3.f32(i32 55, float %1820, float %1821, float %1822, float %1820, float %1821, float %1822)  ; Dot3(ax,ay,az,bx,by,bz)
  %1824 = call float @dx.op.unary.f32(i32 25, float %1823)  ; Rsqrt(value)
  %1825 = fmul fast float %1824, %1820
  %1826 = fmul fast float %1824, %1821
  %1827 = fmul fast float %1824, %1822
  %1828 = call float @dx.op.dot3.f32(i32 55, float %1825, float %1826, float %1827, float %1643, float %1644, float %1645)  ; Dot3(ax,ay,az,bx,by,bz)
  %1829 = fmul fast float %1828, %1665
  %1830 = fadd fast float %1829, %1666
  %1831 = fcmp fast olt float %1830, 0xBF1A36E2E0000000
  %1832 = select i1 %1831, float 0.000000e+00, float %1814
  %1833 = select i1 %1831, float %1814, float %1815
  %1834 = fsub fast float %1832, %1833
  %1835 = call float @dx.op.unary.f32(i32 6, float %1834)  ; FAbs(value)
  %1836 = fcmp fast olt float %1835, 0x3F1A36E2E0000000
  br i1 %1836, label %1837, label %1860, !dx.controlflow.hints !97

; <label>:1837                                    ; preds = %1816
  br label %1860

; <label>:1838                                    ; preds = %1813
  %1839 = fmul fast float %1814, %470
  %1840 = fmul fast float %1814, %471
  %1841 = fmul fast float %1814, %472
  %1842 = fsub fast float %1762, %1839
  %1843 = fsub fast float %1763, %1840
  %1844 = fsub fast float %1764, %1841
  %1845 = call float @dx.op.dot3.f32(i32 55, float %1842, float %1843, float %1844, float %1842, float %1843, float %1844)  ; Dot3(ax,ay,az,bx,by,bz)
  %1846 = call float @dx.op.unary.f32(i32 25, float %1845)  ; Rsqrt(value)
  %1847 = fmul fast float %1846, %1842
  %1848 = fmul fast float %1846, %1843
  %1849 = fmul fast float %1846, %1844
  %1850 = call float @dx.op.dot3.f32(i32 55, float %1847, float %1848, float %1849, float %1643, float %1644, float %1645)  ; Dot3(ax,ay,az,bx,by,bz)
  %1851 = fmul fast float %1850, %1665
  %1852 = fadd fast float %1851, %1666
  %1853 = fcmp fast olt float %1852, 0xBF1A36E2E0000000
  %1854 = select i1 %1853, float %1815, float %1814
  %1855 = select i1 %1853, float %469, float %1815
  %1856 = fsub fast float %1854, %1855
  %1857 = call float @dx.op.unary.f32(i32 6, float %1856)  ; FAbs(value)
  %1858 = fcmp fast olt float %1857, 0x3F1A36E2E0000000
  br i1 %1858, label %1859, label %1860, !dx.controlflow.hints !98

; <label>:1859                                    ; preds = %1838
  br label %1860

; <label>:1860                                    ; preds = %1859, %1838, %1837, %1816
  %1861 = phi float [ 0.000000e+00, %1837 ], [ %1832, %1816 ], [ %1854, %1859 ], [ %1854, %1838 ]
  %1862 = phi float [ %1833, %1837 ], [ %1833, %1816 ], [ %469, %1859 ], [ %1855, %1838 ]
  %1863 = fmul fast float %1861, %470
  %1864 = fmul fast float %1861, %471
  %1865 = fmul fast float %1861, %472
  %1866 = fadd fast float %1863, %452
  %1867 = fadd fast float %1864, %453
  %1868 = fadd fast float %1865, %454
  %1869 = fsub fast float %1862, %1861
  %1870 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1869)  ; FMax(a,b)
  %1871 = fmul fast float %1870, %1679
  br label %1872

; <label>:1872                                    ; preds = %1860, %1803, %1680, %1622
  %1873 = phi float [ %1751, %1860 ], [ %1751, %1803 ], [ %1751, %1680 ], [ %1659, %1622 ]
  %1874 = phi float [ %1752, %1860 ], [ %1752, %1803 ], [ %1752, %1680 ], [ %1660, %1622 ]
  %1875 = phi float [ %1753, %1860 ], [ %1753, %1803 ], [ %1753, %1680 ], [ %1661, %1622 ]
  %1876 = phi float [ %1866, %1860 ], [ %452, %1803 ], [ %452, %1680 ], [ %452, %1622 ]
  %1877 = phi float [ %1867, %1860 ], [ %453, %1803 ], [ %453, %1680 ], [ %453, %1622 ]
  %1878 = phi float [ %1868, %1860 ], [ %454, %1803 ], [ %454, %1680 ], [ %454, %1622 ]
  %1879 = phi float [ %1870, %1860 ], [ %469, %1803 ], [ %469, %1680 ], [ %469, %1622 ]
  %1880 = phi float [ %1871, %1860 ], [ 1.000000e+00, %1803 ], [ 1.000000e+00, %1680 ], [ 1.000000e+00, %1622 ]
  %1881 = fsub fast float %1873, %1876
  %1882 = fsub fast float %1874, %1877
  %1883 = fsub fast float %1875, %1878
  %1884 = call float @dx.op.dot3.f32(i32 55, float %1881, float %1882, float %1883, float %470, float %471, float %472)  ; Dot3(ax,ay,az,bx,by,bz)
  %1885 = call float @dx.op.binary.f32(i32 35, float %1884, float 0.000000e+00)  ; FMax(a,b)
  %1886 = call float @dx.op.binary.f32(i32 36, float %1885, float %1879)  ; FMin(a,b)
  %1887 = fmul fast float %1886, %470
  %1888 = fmul fast float %1886, %471
  %1889 = fmul fast float %1886, %472
  %1890 = fsub fast float %1876, %1873
  %1891 = fadd fast float %1890, %1887
  %1892 = fsub fast float %1877, %1874
  %1893 = fadd fast float %1892, %1888
  %1894 = fsub fast float %1878, %1875
  %1895 = fadd fast float %1894, %1889
  %1896 = fmul fast float %1891, %1891
  %1897 = fmul fast float %1893, %1893
  %1898 = fadd fast float %1896, %1897
  %1899 = fmul fast float %1895, %1895
  %1900 = fadd fast float %1898, %1899
  %1901 = call float @dx.op.unary.f32(i32 24, float %1900)  ; Sqrt(value)
  %1902 = fsub fast float -0.000000e+00, %1886
  %1903 = call float @dx.op.unary.f32(i32 6, float %1902)  ; FAbs(value)
  %1904 = fadd fast float %1903, 0x3DDB7CDFE0000000
  %1905 = fcmp fast oge float %1901, 0.000000e+00
  %1906 = fsub fast float -0.000000e+00, %1904
  %1907 = select i1 %1905, float %1906, float %1904
  %1908 = fadd fast float %1907, %1901
  %1909 = fsub fast float -0.000000e+00, %1901
  %1910 = select i1 %1905, float %1901, float %1909
  %1911 = fadd fast float %1904, %1910
  %1912 = fdiv fast float %1908, %1911
  %1913 = select i1 %1905, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %1914 = fmul fast float %1912, %1912
  %1915 = fmul fast float %1914, 0x3FC9205BC0000000
  %1916 = fadd fast float %1915, 0xBFEF6A1620000000
  %1917 = fmul fast float %1916, %1912
  %1918 = fadd fast float %1917, %1913
  %1919 = fcmp ole float %1886, -0.000000e+00
  %1920 = fsub fast float -0.000000e+00, %1918
  %1921 = select i1 %1919, float %1918, float %1920
  %1922 = fsub fast float %1879, %1886
  %1923 = call float @dx.op.unary.f32(i32 6, float %1922)  ; FAbs(value)
  %1924 = fadd fast float %1923, 0x3DDB7CDFE0000000
  %1925 = fsub fast float -0.000000e+00, %1924
  %1926 = select i1 %1905, float %1925, float %1924
  %1927 = fadd fast float %1926, %1901
  %1928 = fadd fast float %1924, %1910
  %1929 = fdiv fast float %1927, %1928
  %1930 = fmul fast float %1929, %1929
  %1931 = fmul fast float %1930, 0x3FC9205BC0000000
  %1932 = fadd fast float %1931, 0xBFEF6A1620000000
  %1933 = fmul fast float %1932, %1929
  %1934 = fadd fast float %1933, %1913
  %1935 = fcmp fast oge float %1922, 0.000000e+00
  %1936 = fsub fast float -0.000000e+00, %1934
  %1937 = select i1 %1935, float %1934, float %1936
  %1938 = fsub fast float %1937, %1921
  %1939 = fmul fast float %1938, %109
  %1940 = fadd fast float %1939, %1921
  %1941 = call float @dx.op.unary.f32(i32 14, float %1940)  ; Tan(value)
  %1942 = fmul fast float %1941, %1901
  %1943 = fadd fast float %1942, %1886
  %1944 = fmul fast float %1901, %1901
  %1945 = fmul fast float %1942, %1942
  %1946 = fadd fast float %1945, %1944
  %1947 = fmul fast float %1938, %1946
  %1948 = fdiv fast float %1901, %1947
  %1949 = fdiv fast float 1.000000e+00, %1948
  %1950 = fmul fast float %1880, %1679
  %1951 = fmul fast float %1950, %1949
  %1952 = fmul fast float %1943, %470
  %1953 = fmul fast float %1943, %471
  %1954 = fmul fast float %1943, %472
  %1955 = fadd fast float %1952, %1876
  %1956 = fadd fast float %1953, %1877
  %1957 = fadd fast float %1954, %1878
  %1958 = call float @dx.op.dot3.f32(i32 55, float %1651, float %1652, float %1653, float %1651, float %1652, float %1653)  ; Dot3(ax,ay,az,bx,by,bz)
  %1959 = fsub fast float %1955, %1659
  %1960 = fsub fast float %1956, %1660
  %1961 = fsub fast float %1957, %1661
  %1962 = call float @dx.op.dot3.f32(i32 55, float %1959, float %1960, float %1961, float %1651, float %1652, float %1653)  ; Dot3(ax,ay,az,bx,by,bz)
  %1963 = fdiv fast float %1962, %1958
  %1964 = call float @dx.op.binary.f32(i32 35, float %1963, float -1.000000e+00)  ; FMax(a,b)
  %1965 = call float @dx.op.binary.f32(i32 36, float %1964, float 1.000000e+00)  ; FMin(a,b)
  %1966 = fmul fast float %1965, %1651
  %1967 = fmul fast float %1965, %1652
  %1968 = fmul fast float %1965, %1653
  %1969 = fadd fast float %1966, %1659
  %1970 = fadd fast float %1967, %1660
  %1971 = fadd fast float %1968, %1661
  %1972 = fsub fast float %1969, %1955
  %1973 = fsub fast float %1970, %1956
  %1974 = fsub fast float %1971, %1957
  %1975 = call float @dx.op.dot3.f32(i32 55, float %1972, float %1973, float %1974, float %1972, float %1973, float %1974)  ; Dot3(ax,ay,az,bx,by,bz)
  %1976 = call float @dx.op.unary.f32(i32 24, float %1975)  ; Sqrt(value)
  %1977 = fdiv fast float 1.000000e+00, %1976
  %1978 = fmul fast float %1972, %1977
  %1979 = fmul fast float %1973, %1977
  %1980 = fmul fast float %1974, %1977
  %1981 = fadd fast float %1976, %1640
  %1982 = fdiv fast float 1.000000e+00, %1981
  %1983 = fmul float %1656, %1982
  %1984 = fmul float %1983, %1983
  %1985 = call float @dx.op.unary.f32(i32 7, float %1984)  ; Saturate(value)
  br i1 %1678, label %1986, label %2010, !dx.controlflow.hints !99

; <label>:1986                                    ; preds = %1872
  %1987 = fmul fast float %1667, %1643
  %1988 = fmul fast float %1667, %1644
  %1989 = fmul fast float %1667, %1645
  %1990 = fsub fast float %1987, %1955
  %1991 = fadd fast float %1990, %1969
  %1992 = fsub fast float %1988, %1956
  %1993 = fadd fast float %1992, %1970
  %1994 = fsub fast float %1989, %1957
  %1995 = fadd fast float %1994, %1971
  %1996 = call float @dx.op.dot3.f32(i32 55, float %1991, float %1993, float %1995, float %1991, float %1993, float %1995)  ; Dot3(ax,ay,az,bx,by,bz)
  %1997 = call float @dx.op.unary.f32(i32 25, float %1996)  ; Rsqrt(value)
  %1998 = fmul fast float %1997, %1991
  %1999 = fmul fast float %1997, %1993
  %2000 = fmul fast float %1997, %1995
  %2001 = fsub fast float %1955, %1969
  %2002 = fsub fast float %1956, %1970
  %2003 = fsub fast float %1957, %1971
  %2004 = fsub fast float -0.000000e+00, %2001
  %2005 = fsub fast float -0.000000e+00, %2002
  %2006 = fsub fast float -0.000000e+00, %2003
  %2007 = call float @dx.op.dot3.f32(i32 55, float %2004, float %2005, float %2006, float %1643, float %1644, float %1645)  ; Dot3(ax,ay,az,bx,by,bz)
  %2008 = fcmp fast ogt float %2007, 0.000000e+00
  %2009 = uitofp i1 %2008 to float
  br label %2010

; <label>:2010                                    ; preds = %1986, %1872
  %2011 = phi float [ %2009, %1986 ], [ 1.000000e+00, %1872 ]
  %2012 = phi float [ %1998, %1986 ], [ %1978, %1872 ]
  %2013 = phi float [ %1999, %1986 ], [ %1979, %1872 ]
  %2014 = phi float [ %2000, %1986 ], [ %1980, %1872 ]
  %2015 = call float @dx.op.dot3.f32(i32 55, float %1643, float %1644, float %1645, float %2012, float %2013, float %2014)  ; Dot3(ax,ay,az,bx,by,bz)
  %2016 = fmul fast float %2015, %2015
  %2017 = call float @dx.op.unary.f32(i32 7, float %2016)  ; Saturate(value)
  %2018 = fsub fast float 1.000000e+00, %2017
  %2019 = fmul fast float %2018, 5.000000e-01
  %2020 = fcmp fast ogt float %2015, 0.000000e+00
  %2021 = fsub fast float 1.000000e+00, %2019
  %2022 = select i1 %2020, float %2019, float %2021
  %2023 = fmul fast float %2022, %1675
  %2024 = fadd fast float %2023, %1673
  %2025 = fmul fast float %2024, 0x3EF0001000000000
  %2026 = fsub fast float %1969, %414
  %2027 = fsub fast float %1970, %415
  %2028 = fsub fast float %1971, %416
  %2029 = call float @dx.op.dot3.f32(i32 55, float %2026, float %2027, float %2028, float %2026, float %2027, float %2028)  ; Dot3(ax,ay,az,bx,by,bz)
  %2030 = fmul fast float %422, %422
  %2031 = fsub fast float %2029, %2030
  %2032 = fdiv fast float %2031, %2029
  %2033 = call float @dx.op.unary.f32(i32 24, float %2032)  ; Sqrt(value)
  %2034 = fsub fast float 1.000000e+00, %2033
  %2035 = fcmp fast olt float %2029, %2030
  %2036 = fmul fast float %2034, 2.560000e+02
  %2037 = select i1 %2035, float 2.560000e+02, float %2036
  %2038 = call float @dx.op.unary.f32(i32 23, float %2037)  ; Log(value)
  %2039 = call float @dx.op.binary.f32(i32 36, float %2038, float 7.000000e+00)  ; FMin(a,b)
  %2040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %2025, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float %2039)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2041 = extractvalue %dx.types.ResRet.f32 %2040, 0
  %2042 = fmul fast float %2015, %1665
  %2043 = fadd fast float %2042, %1666
  %2044 = call float @dx.op.unary.f32(i32 7, float %2043)  ; Saturate(value)
  %2045 = select i1 %1678, float 1.000000e+00, float %2044
  %2046 = select i1 %1678, float %2044, float 1.000000e+00
  %2047 = fmul fast float %1976, %1662
  %2048 = fsub fast float 1.000000e+00, %2047
  %2049 = fmul fast float %2048, %1668
  %2050 = call float @dx.op.unary.f32(i32 7, float %2049)  ; Saturate(value)
  %2051 = fmul fast float %2050, %2046
  %2052 = fmul fast float %2051, 2.000000e+00
  %2053 = fsub fast float 3.000000e+00, %2052
  %2054 = fmul fast float %2041, %2011
  %2055 = fmul fast float %2051, %2051
  %2056 = fmul fast float %2055, %2054
  %2057 = fmul fast float %2056, %2053
  %2058 = call float @dx.op.binary.f32(i32 36, float %2057, float %2057)  ; FMin(a,b)
  %2059 = call float @dx.op.binary.f32(i32 36, float %2057, float %2058)  ; FMin(a,b)
  %2060 = fcmp fast ogt float %2059, 0.000000e+00
  br i1 %2060, label %2066, label %2061, !dx.controlflow.hints !100

; <label>:2061                                    ; preds = %2569, %2154, %2010
  %2062 = phi float [ %2602, %2569 ], [ %1624, %2154 ], [ %1624, %2010 ]
  %2063 = phi float [ %2603, %2569 ], [ %1625, %2154 ], [ %1625, %2010 ]
  %2064 = phi float [ %2604, %2569 ], [ %1626, %2154 ], [ %1626, %2010 ]
  %2065 = icmp eq i32 %1623, %1631
  br i1 %2065, label %2605, label %1622

; <label>:2066                                    ; preds = %2010
  %2067 = icmp eq i32 %1676, 255
  br i1 %2067, label %2154, label %2068, !dx.controlflow.hints !101

; <label>:2068                                    ; preds = %2066
  %2069 = mul nuw nsw i32 %1676, 176
  %2070 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %2069, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.f32 %2070, 0
  %2072 = extractvalue %dx.types.ResRet.f32 %2070, 1
  %2073 = extractvalue %dx.types.ResRet.f32 %2070, 2
  %2074 = extractvalue %dx.types.ResRet.f32 %2070, 3
  %2075 = add nuw nsw i32 %2069, 16
  %2076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.f32 %2076, 0
  %2078 = extractvalue %dx.types.ResRet.f32 %2076, 1
  %2079 = add nuw nsw i32 %2069, 32
  %2080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.f32 %2080, 0
  %2082 = extractvalue %dx.types.ResRet.f32 %2080, 2
  %2083 = add nuw nsw i32 %2069, 48
  %2084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.f32 %2084, 0
  %2086 = extractvalue %dx.types.ResRet.f32 %2084, 1
  %2087 = extractvalue %dx.types.ResRet.f32 %2084, 2
  %2088 = extractvalue %dx.types.ResRet.f32 %2084, 3
  %2089 = add nuw nsw i32 %2069, 64
  %2090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %2089, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.f32 %2090, 0
  %2092 = extractvalue %dx.types.ResRet.f32 %2090, 1
  %2093 = extractvalue %dx.types.ResRet.f32 %2090, 2
  %2094 = extractvalue %dx.types.ResRet.f32 %2090, 3
  %2095 = add nuw nsw i32 %2069, 80
  %2096 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %2095, i32 undef)  ; BufferLoad(srv,index,wot)
  %2097 = extractvalue %dx.types.ResRet.f32 %2096, 0
  %2098 = extractvalue %dx.types.ResRet.f32 %2096, 1
  %2099 = extractvalue %dx.types.ResRet.f32 %2096, 2
  %2100 = extractvalue %dx.types.ResRet.f32 %2096, 3
  %2101 = add nuw nsw i32 %2069, 96
  %2102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2103 = extractvalue %dx.types.ResRet.f32 %2102, 0
  %2104 = extractvalue %dx.types.ResRet.f32 %2102, 1
  %2105 = extractvalue %dx.types.ResRet.f32 %2102, 2
  %2106 = extractvalue %dx.types.ResRet.f32 %2102, 3
  %2107 = bitcast float %2078 to i32
  %2108 = fmul fast float %2082, %1978
  %2109 = fmul fast float %2082, %1979
  %2110 = fmul fast float %2082, %1980
  %2111 = fsub fast float %1955, %2108
  %2112 = fsub fast float %1956, %2109
  %2113 = fsub fast float %1957, %2110
  %2114 = fmul fast float %2111, %2085
  %2115 = call float @dx.op.tertiary.f32(i32 46, float %2112, float %2091, float %2114)  ; FMad(a,b,c)
  %2116 = call float @dx.op.tertiary.f32(i32 46, float %2113, float %2097, float %2115)  ; FMad(a,b,c)
  %2117 = fadd fast float %2116, %2103
  %2118 = fmul fast float %2111, %2086
  %2119 = call float @dx.op.tertiary.f32(i32 46, float %2112, float %2092, float %2118)  ; FMad(a,b,c)
  %2120 = call float @dx.op.tertiary.f32(i32 46, float %2113, float %2098, float %2119)  ; FMad(a,b,c)
  %2121 = fadd fast float %2120, %2104
  %2122 = fmul fast float %2111, %2087
  %2123 = call float @dx.op.tertiary.f32(i32 46, float %2112, float %2093, float %2122)  ; FMad(a,b,c)
  %2124 = call float @dx.op.tertiary.f32(i32 46, float %2113, float %2099, float %2123)  ; FMad(a,b,c)
  %2125 = fadd fast float %2124, %2105
  %2126 = fmul fast float %2111, %2088
  %2127 = call float @dx.op.tertiary.f32(i32 46, float %2112, float %2094, float %2126)  ; FMad(a,b,c)
  %2128 = call float @dx.op.tertiary.f32(i32 46, float %2113, float %2100, float %2127)  ; FMad(a,b,c)
  %2129 = fadd fast float %2128, %2106
  %2130 = fdiv fast float %2117, %2129
  %2131 = fdiv fast float %2121, %2129
  %2132 = fdiv fast float %2125, %2129
  %2133 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %2132)  ; FMax(a,b)
  %2134 = fmul fast float %2073, 5.000000e-01
  %2135 = call float @dx.op.tertiary.f32(i32 46, float %2134, float -0.000000e+00, float 0.000000e+00)  ; FMad(a,b,c)
  %2136 = fadd fast float %2135, %2130
  %2137 = fadd fast float %2131, %2134
  %2138 = fmul fast float %2136, %2077
  %2139 = fmul fast float %2137, %2077
  %2140 = call float @dx.op.binary.f32(i32 35, float %2138, float %2073)  ; FMax(a,b)
  %2141 = call float @dx.op.binary.f32(i32 35, float %2139, float %2073)  ; FMax(a,b)
  %2142 = call float @dx.op.binary.f32(i32 36, float %2140, float %2074)  ; FMin(a,b)
  %2143 = call float @dx.op.binary.f32(i32 36, float %2141, float %2074)  ; FMin(a,b)
  %2144 = fadd fast float %2142, %2071
  %2145 = fadd fast float %2143, %2072
  %2146 = uitofp i32 %2107 to float
  %2147 = fadd fast float %2133, %2081
  %2148 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %28, float %2144, float %2145, float %2146, float undef, i32 0, i32 0, i32 undef, float %2147)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2149 = extractvalue %dx.types.ResRet.f32 %2148, 0
  %2150 = fadd fast float %2149, -1.000000e+00
  %2151 = fmul fast float %2150, %2045
  %2152 = fadd fast float %2151, 1.000000e+00
  %2153 = fmul fast float %2152, %2057
  br label %2154

; <label>:2154                                    ; preds = %2068, %2066
  %2155 = phi float [ %2153, %2068 ], [ %2057, %2066 ]
  %2156 = call float @dx.op.binary.f32(i32 36, float %2155, float %2155)  ; FMin(a,b)
  %2157 = call float @dx.op.binary.f32(i32 36, float %2155, float %2156)  ; FMin(a,b)
  %2158 = fcmp fast ogt float %2157, 0.000000e+00
  br i1 %2158, label %2159, label %2061, !dx.controlflow.hints !102

; <label>:2159                                    ; preds = %2154
  br i1 %228, label %2160, label %2569, !dx.controlflow.hints !87

; <label>:2160                                    ; preds = %2159
  %2161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2162 = extractvalue %dx.types.CBufRet.i32 %2161, 0
  %2163 = and i32 %2162, 64
  %2164 = icmp ne i32 %2163, 0
  %2165 = fsub fast float %1661, %473
  %2166 = fcmp fast ogt float %2165, 0.000000e+00
  %2167 = fsub fast float %187, %217
  %2168 = fcmp fast ogt float %2167, 0.000000e+00
  %2169 = xor i1 %2168, %2166
  %2170 = fsub fast float %473, %1661
  %2171 = fmul fast float %2170, 2.000000e+00
  %2172 = fadd fast float %2171, %1661
  %2173 = select i1 %2169, float %1661, float %2172
  %2174 = fsub fast float %1659, %427
  %2175 = fsub fast float %1660, %428
  %2176 = fsub fast float %2173, %429
  %2177 = call float @dx.op.dot3.f32(i32 55, float %2174, float %2175, float %2176, float %2174, float %2175, float %2176)  ; Dot3(ax,ay,az,bx,by,bz)
  %2178 = call float @dx.op.unary.f32(i32 25, float %2177)  ; Rsqrt(value)
  %2179 = fmul fast float %2178, %2174
  %2180 = fmul fast float %2178, %2175
  %2181 = fmul fast float %2178, %2176
  %2182 = fsub fast float %217, %187
  %2183 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2182)  ; Dot3(ax,ay,az,bx,by,bz)
  %2184 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2179, float %2180, float %2181)  ; Dot3(ax,ay,az,bx,by,bz)
  %2185 = fdiv fast float 1.000000e+00, %2184
  %2186 = fmul fast float %2185, %2183
  %2187 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %2167, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2188 = fcmp fast ogt float %2187, 0.000000e+00
  %2189 = fcmp fast olt float %2187, 0.000000e+00
  %2190 = zext i1 %2188 to i32
  %2191 = zext i1 %2189 to i32
  %2192 = sub nsw i32 %2190, %2191
  %2193 = sitofp i32 %2192 to float
  %2194 = fsub fast float %2173, %473
  %2195 = call float @dx.op.dot3.f32(i32 55, float %2174, float %2175, float %2194, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2196 = fcmp fast ogt float %2195, 0.000000e+00
  %2197 = fcmp fast olt float %2195, 0.000000e+00
  %2198 = zext i1 %2196 to i32
  %2199 = zext i1 %2197 to i32
  %2200 = sub nsw i32 %2198, %2199
  %2201 = sitofp i32 %2200 to float
  %2202 = fcmp fast une float %2193, %2201
  br i1 %2202, label %2203, label %2213, !dx.controlflow.hints !88

; <label>:2203                                    ; preds = %2160
  %2204 = fmul fast float %2186, %2181
  %2205 = fmul fast float %2186, %2180
  %2206 = fmul fast float %2186, %2179
  %2207 = fmul fast float %2206, %2206
  %2208 = fmul fast float %2205, %2205
  %2209 = fadd fast float %2207, %2208
  %2210 = fmul fast float %2204, %2204
  %2211 = fadd fast float %2209, %2210
  %2212 = call float @dx.op.unary.f32(i32 24, float %2211)  ; Sqrt(value)
  br label %2225

; <label>:2213                                    ; preds = %2160
  %2214 = icmp slt i32 %2192, 0
  br i1 %2214, label %2215, label %2225, !dx.controlflow.hints !89

; <label>:2215                                    ; preds = %2213
  %2216 = fsub fast float %427, %1659
  %2217 = fsub fast float %428, %1660
  %2218 = fsub fast float %429, %2173
  %2219 = fmul fast float %2216, %2216
  %2220 = fmul fast float %2217, %2217
  %2221 = fadd fast float %2219, %2220
  %2222 = fmul fast float %2218, %2218
  %2223 = fadd fast float %2221, %2222
  %2224 = call float @dx.op.unary.f32(i32 24, float %2223)  ; Sqrt(value)
  br label %2225

; <label>:2225                                    ; preds = %2215, %2213, %2203
  %2226 = phi float [ %2212, %2203 ], [ %2224, %2215 ], [ 0.000000e+00, %2213 ]
  %2227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %2228 = extractvalue %dx.types.CBufRet.i32 %2227, 1
  %2229 = icmp ne i32 %2228, 0
  %2230 = and i1 %2169, %2229
  %2231 = call float @dx.op.dot3.f32(i32 55, float %2179, float %2180, float %2181, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2232 = fmul fast float %2231, %2231
  %2233 = fsub fast float 1.000000e+00, %2232
  %2234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2235 = extractvalue %dx.types.CBufRet.f32 %2234, 0
  %2236 = extractvalue %dx.types.CBufRet.f32 %2234, 1
  %2237 = extractvalue %dx.types.CBufRet.f32 %2234, 2
  %2238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2239 = extractvalue %dx.types.CBufRet.f32 %2238, 0
  %2240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2241 = extractvalue %dx.types.CBufRet.f32 %2240, 0
  %2242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2243 = extractvalue %dx.types.CBufRet.f32 %2242, 0
  %2244 = extractvalue %dx.types.CBufRet.f32 %2238, 1
  %2245 = extractvalue %dx.types.CBufRet.f32 %2240, 1
  %2246 = extractvalue %dx.types.CBufRet.f32 %2242, 1
  %2247 = extractvalue %dx.types.CBufRet.f32 %2238, 3
  %2248 = extractvalue %dx.types.CBufRet.f32 %2240, 3
  %2249 = extractvalue %dx.types.CBufRet.f32 %2242, 3
  %2250 = fadd fast float %2235, %427
  %2251 = fadd fast float %2236, %428
  %2252 = fadd fast float %2237, %429
  %2253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %2254 = extractvalue %dx.types.CBufRet.f32 %2253, 0
  %2255 = extractvalue %dx.types.CBufRet.f32 %2253, 1
  %2256 = extractvalue %dx.types.CBufRet.f32 %2253, 2
  %2257 = extractvalue %dx.types.CBufRet.f32 %2253, 3
  br i1 %2230, label %2258, label %2451, !dx.controlflow.hints !90

; <label>:2258                                    ; preds = %2225
  %2259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %2260 = extractvalue %dx.types.CBufRet.f32 %2259, 0
  %2261 = fmul fast float %2260, %2260
  %2262 = fmul fast float %2261, %2233
  %2263 = fsub fast float 1.000000e+00, %2262
  %2264 = fcmp fast oge float %2263, 0.000000e+00
  %2265 = fmul fast float %2260, %2179
  %2266 = fmul fast float %2260, %2180
  %2267 = fmul fast float %2260, %2181
  %2268 = call float @dx.op.unary.f32(i32 24, float %2263)  ; Sqrt(value)
  %2269 = fmul fast float %2260, %2231
  %2270 = fsub fast float -0.000000e+00, %2268
  %2271 = fsub fast float %2270, %2269
  %2272 = fadd fast float %2271, %2267
  %2273 = select i1 %2264, float %2265, float 0.000000e+00
  %2274 = select i1 %2264, float %2266, float 0.000000e+00
  %2275 = select i1 %2264, float %2272, float 0.000000e+00
  %2276 = fmul fast float %2273, %2226
  %2277 = fmul fast float %2274, %2226
  %2278 = fmul fast float %2275, %2226
  %2279 = fadd fast float %2250, %2276
  %2280 = fadd fast float %2279, %2247
  %2281 = fadd fast float %2251, %2277
  %2282 = fadd fast float %2281, %2248
  %2283 = fadd fast float %2252, %2278
  %2284 = fadd fast float %2283, %2249
  %2285 = fmul fast float %2280, %2239
  %2286 = call float @dx.op.tertiary.f32(i32 46, float %2282, float %2241, float %2285)  ; FMad(a,b,c)
  %2287 = call float @dx.op.tertiary.f32(i32 46, float %2284, float %2243, float %2286)  ; FMad(a,b,c)
  %2288 = fmul fast float %2280, %2244
  %2289 = call float @dx.op.tertiary.f32(i32 46, float %2282, float %2245, float %2288)  ; FMad(a,b,c)
  %2290 = call float @dx.op.tertiary.f32(i32 46, float %2284, float %2246, float %2289)  ; FMad(a,b,c)
  %2291 = fsub fast float %2287, %2247
  %2292 = fsub fast float %2291, %2254
  %2293 = fadd fast float %2292, %2256
  %2294 = fsub fast float %2290, %2248
  %2295 = fsub fast float %2294, %2255
  %2296 = fadd fast float %2295, %2256
  %2297 = fmul fast float %2293, %2257
  %2298 = fmul fast float %2296, %2257
  %2299 = call float @dx.op.unary.f32(i32 7, float %2297)  ; Saturate(value)
  %2300 = call float @dx.op.unary.f32(i32 7, float %2298)  ; Saturate(value)
  %2301 = fsub fast float 1.000000e+00, %2299
  %2302 = fsub fast float 1.000000e+00, %2300
  %2303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %27, float %2301, float %2302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2304 = extractvalue %dx.types.ResRet.f32 %2303, 0
  %2305 = fmul fast float %2304, 0x3FBC5ABC00000000
  %2306 = extractvalue %dx.types.CBufRet.f32 %2259, 1
  %2307 = fmul fast float %2306, %2306
  %2308 = fmul fast float %2307, %2233
  %2309 = fsub fast float 1.000000e+00, %2308
  %2310 = fcmp fast oge float %2309, 0.000000e+00
  %2311 = fmul fast float %2306, %2179
  %2312 = fmul fast float %2306, %2180
  %2313 = fmul fast float %2306, %2181
  %2314 = call float @dx.op.unary.f32(i32 24, float %2309)  ; Sqrt(value)
  %2315 = fmul fast float %2306, %2231
  %2316 = fsub fast float -0.000000e+00, %2314
  %2317 = fsub fast float %2316, %2315
  %2318 = fadd fast float %2317, %2313
  %2319 = select i1 %2310, float %2311, float 0.000000e+00
  %2320 = select i1 %2310, float %2312, float 0.000000e+00
  %2321 = select i1 %2310, float %2318, float 0.000000e+00
  %2322 = fmul fast float %2319, %2226
  %2323 = fmul fast float %2320, %2226
  %2324 = fmul fast float %2321, %2226
  %2325 = fadd fast float %2250, %2322
  %2326 = fadd fast float %2325, %2247
  %2327 = fadd fast float %2251, %2323
  %2328 = fadd fast float %2327, %2248
  %2329 = fadd fast float %2252, %2324
  %2330 = fadd fast float %2329, %2249
  %2331 = fmul fast float %2326, %2239
  %2332 = call float @dx.op.tertiary.f32(i32 46, float %2328, float %2241, float %2331)  ; FMad(a,b,c)
  %2333 = call float @dx.op.tertiary.f32(i32 46, float %2330, float %2243, float %2332)  ; FMad(a,b,c)
  %2334 = fmul fast float %2326, %2244
  %2335 = call float @dx.op.tertiary.f32(i32 46, float %2328, float %2245, float %2334)  ; FMad(a,b,c)
  %2336 = call float @dx.op.tertiary.f32(i32 46, float %2330, float %2246, float %2335)  ; FMad(a,b,c)
  %2337 = fsub fast float %2333, %2247
  %2338 = fsub fast float %2337, %2254
  %2339 = fadd fast float %2338, %2256
  %2340 = fsub fast float %2336, %2248
  %2341 = fsub fast float %2340, %2255
  %2342 = fadd fast float %2341, %2256
  %2343 = fmul fast float %2339, %2257
  %2344 = fmul fast float %2342, %2257
  %2345 = call float @dx.op.unary.f32(i32 7, float %2343)  ; Saturate(value)
  %2346 = call float @dx.op.unary.f32(i32 7, float %2344)  ; Saturate(value)
  %2347 = fsub fast float 1.000000e+00, %2345
  %2348 = fsub fast float 1.000000e+00, %2346
  %2349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %27, float %2347, float %2348, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2350 = extractvalue %dx.types.ResRet.f32 %2349, 0
  %2351 = fmul fast float %2350, 0x3F9E4BBD60000000
  %2352 = extractvalue %dx.types.CBufRet.f32 %2259, 2
  %2353 = fmul fast float %2352, %2352
  %2354 = fmul fast float %2353, %2233
  %2355 = fsub fast float 1.000000e+00, %2354
  %2356 = fcmp fast oge float %2355, 0.000000e+00
  %2357 = fmul fast float %2352, %2179
  %2358 = fmul fast float %2352, %2180
  %2359 = fmul fast float %2352, %2181
  %2360 = call float @dx.op.unary.f32(i32 24, float %2355)  ; Sqrt(value)
  %2361 = fmul fast float %2352, %2231
  %2362 = fsub fast float -0.000000e+00, %2360
  %2363 = fsub fast float %2362, %2361
  %2364 = fadd fast float %2363, %2359
  %2365 = select i1 %2356, float %2357, float 0.000000e+00
  %2366 = select i1 %2356, float %2358, float 0.000000e+00
  %2367 = select i1 %2356, float %2364, float 0.000000e+00
  %2368 = fmul fast float %2365, %2226
  %2369 = fmul fast float %2366, %2226
  %2370 = fmul fast float %2367, %2226
  %2371 = fadd fast float %2250, %2368
  %2372 = fadd fast float %2371, %2247
  %2373 = fadd fast float %2251, %2369
  %2374 = fadd fast float %2373, %2248
  %2375 = fadd fast float %2252, %2370
  %2376 = fadd fast float %2375, %2249
  %2377 = fmul fast float %2372, %2239
  %2378 = call float @dx.op.tertiary.f32(i32 46, float %2374, float %2241, float %2377)  ; FMad(a,b,c)
  %2379 = call float @dx.op.tertiary.f32(i32 46, float %2376, float %2243, float %2378)  ; FMad(a,b,c)
  %2380 = fmul fast float %2372, %2244
  %2381 = call float @dx.op.tertiary.f32(i32 46, float %2374, float %2245, float %2380)  ; FMad(a,b,c)
  %2382 = call float @dx.op.tertiary.f32(i32 46, float %2376, float %2246, float %2381)  ; FMad(a,b,c)
  %2383 = fsub fast float %2379, %2247
  %2384 = fsub fast float %2383, %2254
  %2385 = fadd fast float %2384, %2256
  %2386 = fsub fast float %2382, %2248
  %2387 = fsub fast float %2386, %2255
  %2388 = fadd fast float %2387, %2256
  %2389 = fmul fast float %2385, %2257
  %2390 = fmul fast float %2388, %2257
  %2391 = call float @dx.op.unary.f32(i32 7, float %2389)  ; Saturate(value)
  %2392 = call float @dx.op.unary.f32(i32 7, float %2390)  ; Saturate(value)
  %2393 = fsub fast float 1.000000e+00, %2391
  %2394 = fsub fast float 1.000000e+00, %2392
  %2395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %27, float %2393, float %2394, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2396 = extractvalue %dx.types.ResRet.f32 %2395, 0
  %2397 = fmul fast float %2396, 0x3FDDEACB00000000
  %2398 = fadd fast float %2397, %2351
  %2399 = extractvalue %dx.types.CBufRet.f32 %2259, 3
  %2400 = fmul fast float %2399, %2399
  %2401 = fmul fast float %2400, %2233
  %2402 = fsub fast float 1.000000e+00, %2401
  %2403 = fcmp fast oge float %2402, 0.000000e+00
  %2404 = fmul fast float %2399, %2179
  %2405 = fmul fast float %2399, %2180
  %2406 = fmul fast float %2399, %2181
  %2407 = call float @dx.op.unary.f32(i32 24, float %2402)  ; Sqrt(value)
  %2408 = fmul fast float %2399, %2231
  %2409 = fsub fast float -0.000000e+00, %2407
  %2410 = fsub fast float %2409, %2408
  %2411 = fadd fast float %2410, %2406
  %2412 = select i1 %2403, float %2404, float 0.000000e+00
  %2413 = select i1 %2403, float %2405, float 0.000000e+00
  %2414 = select i1 %2403, float %2411, float 0.000000e+00
  %2415 = fmul fast float %2412, %2226
  %2416 = fmul fast float %2413, %2226
  %2417 = fmul fast float %2414, %2226
  %2418 = fadd fast float %2250, %2415
  %2419 = fadd fast float %2418, %2247
  %2420 = fadd fast float %2251, %2416
  %2421 = fadd fast float %2420, %2248
  %2422 = fadd fast float %2252, %2417
  %2423 = fadd fast float %2422, %2249
  %2424 = fmul fast float %2419, %2239
  %2425 = call float @dx.op.tertiary.f32(i32 46, float %2421, float %2241, float %2424)  ; FMad(a,b,c)
  %2426 = call float @dx.op.tertiary.f32(i32 46, float %2423, float %2243, float %2425)  ; FMad(a,b,c)
  %2427 = fmul fast float %2419, %2244
  %2428 = call float @dx.op.tertiary.f32(i32 46, float %2421, float %2245, float %2427)  ; FMad(a,b,c)
  %2429 = call float @dx.op.tertiary.f32(i32 46, float %2423, float %2246, float %2428)  ; FMad(a,b,c)
  %2430 = fsub fast float %2426, %2247
  %2431 = fsub fast float %2430, %2254
  %2432 = fadd fast float %2431, %2256
  %2433 = fsub fast float %2429, %2248
  %2434 = fsub fast float %2433, %2255
  %2435 = fadd fast float %2434, %2256
  %2436 = fmul fast float %2432, %2257
  %2437 = fmul fast float %2435, %2257
  %2438 = call float @dx.op.unary.f32(i32 7, float %2436)  ; Saturate(value)
  %2439 = call float @dx.op.unary.f32(i32 7, float %2437)  ; Saturate(value)
  %2440 = fsub fast float 1.000000e+00, %2438
  %2441 = fsub fast float 1.000000e+00, %2439
  %2442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %27, float %2440, float %2441, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2443 = extractvalue %dx.types.ResRet.f32 %2442, 0
  %2444 = fmul fast float %2443, 0x3FE0183CA0000000
  %2445 = fmul fast float %2443, 0x3FB51033E0000000
  %2446 = fadd fast float %2398, %2444
  %2447 = fadd fast float %2396, %2350
  %2448 = fmul fast float %2447, 0x3FD9D2A200000000
  %2449 = fadd fast float %2445, %2305
  %2450 = fadd fast float %2449, %2448
  br label %2497

; <label>:2451                                    ; preds = %2225
  %2452 = fmul fast float %2233, 0x3FE2024E20000000
  %2453 = fsub fast float 1.000000e+00, %2452
  %2454 = fcmp fast oge float %2453, 0.000000e+00
  %2455 = fmul fast float %2179, 0x3FE8018960000000
  %2456 = fmul fast float %2180, 0x3FE8018960000000
  %2457 = fmul fast float %2181, 0x3FE8018960000000
  %2458 = call float @dx.op.unary.f32(i32 24, float %2453)  ; Sqrt(value)
  %2459 = fmul fast float %2231, 0x3FE8018960000000
  %2460 = fsub fast float %2457, %2458
  %2461 = fsub fast float %2460, %2459
  %2462 = select i1 %2454, float %2455, float 0.000000e+00
  %2463 = select i1 %2454, float %2456, float 0.000000e+00
  %2464 = select i1 %2454, float %2461, float 0.000000e+00
  %2465 = select i1 %2169, float %2462, float %2179
  %2466 = select i1 %2169, float %2463, float %2180
  %2467 = select i1 %2169, float %2464, float %2181
  %2468 = fmul fast float %2465, %2226
  %2469 = fmul fast float %2466, %2226
  %2470 = fmul fast float %2467, %2226
  %2471 = fadd fast float %2250, %2468
  %2472 = fadd fast float %2471, %2247
  %2473 = fadd fast float %2251, %2469
  %2474 = fadd fast float %2473, %2248
  %2475 = fadd fast float %2252, %2470
  %2476 = fadd fast float %2475, %2249
  %2477 = fmul fast float %2472, %2239
  %2478 = call float @dx.op.tertiary.f32(i32 46, float %2474, float %2241, float %2477)  ; FMad(a,b,c)
  %2479 = call float @dx.op.tertiary.f32(i32 46, float %2476, float %2243, float %2478)  ; FMad(a,b,c)
  %2480 = fmul fast float %2472, %2244
  %2481 = call float @dx.op.tertiary.f32(i32 46, float %2474, float %2245, float %2480)  ; FMad(a,b,c)
  %2482 = call float @dx.op.tertiary.f32(i32 46, float %2476, float %2246, float %2481)  ; FMad(a,b,c)
  %2483 = fsub fast float %2479, %2247
  %2484 = fsub fast float %2483, %2254
  %2485 = fadd fast float %2484, %2256
  %2486 = fsub fast float %2482, %2248
  %2487 = fsub fast float %2486, %2255
  %2488 = fadd fast float %2487, %2256
  %2489 = fmul fast float %2485, %2257
  %2490 = fmul fast float %2488, %2257
  %2491 = call float @dx.op.unary.f32(i32 7, float %2489)  ; Saturate(value)
  %2492 = call float @dx.op.unary.f32(i32 7, float %2490)  ; Saturate(value)
  %2493 = fsub fast float 1.000000e+00, %2491
  %2494 = fsub fast float 1.000000e+00, %2492
  %2495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %27, float %2493, float %2494, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2496 = extractvalue %dx.types.ResRet.f32 %2495, 0
  br label %2497

; <label>:2497                                    ; preds = %2451, %2258
  %2498 = phi float [ %2496, %2451 ], [ %2446, %2258 ]
  %2499 = phi float [ %2496, %2451 ], [ %2450, %2258 ]
  %2500 = phi float [ %2496, %2451 ], [ %2304, %2258 ]
  %2501 = fmul fast float %2174, %2174
  %2502 = fmul fast float %2175, %2175
  %2503 = fadd fast float %2501, %2502
  %2504 = fmul fast float %2176, %2176
  %2505 = fadd fast float %2503, %2504
  %2506 = call float @dx.op.unary.f32(i32 24, float %2505)  ; Sqrt(value)
  %2507 = fsub fast float %427, %1659
  %2508 = fsub fast float %428, %1660
  %2509 = fsub fast float %429, %1661
  %2510 = fmul fast float %2507, %2507
  %2511 = fmul fast float %2508, %2508
  %2512 = fadd fast float %2510, %2511
  %2513 = fmul fast float %2509, %2509
  %2514 = fadd fast float %2512, %2513
  %2515 = call float @dx.op.unary.f32(i32 24, float %2514)  ; Sqrt(value)
  %2516 = fsub fast float %2506, %2515
  %2517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2518 = extractvalue %dx.types.CBufRet.f32 %2517, 0
  %2519 = call float @dx.op.unary.f32(i32 6, float %2518)  ; FAbs(value)
  %2520 = fmul fast float %2515, %2515
  %2521 = fmul fast float %2520, %2519
  %2522 = fmul fast float %2516, %2516
  %2523 = fadd fast float %2522, %2520
  %2524 = fdiv fast float %2521, %2523
  %2525 = call float @dx.op.unary.f32(i32 7, float %2524)  ; Saturate(value)
  %2526 = call float @dx.op.unary.f32(i32 6, float %2231)  ; FAbs(value)
  %2527 = fsub fast float 1.000000e+00, %2526
  %2528 = bitcast float %2527 to i32
  %2529 = sitofp i32 %2528 to float
  %2530 = fptosi float %2529 to i32
  %2531 = bitcast i32 %2530 to float
  %2532 = fmul fast float %2531, 0x3FEF333340000000
  %2533 = fadd fast float %2532, 0x3F999999A0000000
  %2534 = call float @dx.op.unary.f32(i32 7, float %2533)  ; Saturate(value)
  %2535 = fsub fast float 1.000000e+00, %2534
  %2536 = fadd fast float %2498, 1.000000e+00
  %2537 = fadd fast float %2499, 1.000000e+00
  %2538 = fadd fast float %2500, 1.000000e+00
  %2539 = fmul fast float %2535, %2536
  %2540 = fmul fast float %2535, %2537
  %2541 = fmul fast float %2535, %2538
  %2542 = fmul fast float %2525, %2536
  %2543 = fmul fast float %2542, %2534
  %2544 = fmul fast float %2525, %2537
  %2545 = fmul fast float %2544, %2534
  %2546 = fmul fast float %2525, %2538
  %2547 = fmul fast float %2546, %2534
  %2548 = fadd fast float %2543, 1.000000e+00
  %2549 = fadd fast float %2545, 1.000000e+00
  %2550 = fadd fast float %2547, 1.000000e+00
  %2551 = call float @dx.op.unary.f32(i32 6, float %2167)  ; FAbs(value)
  %2552 = call float @dx.op.unary.f32(i32 7, float %2551)  ; Saturate(value)
  %2553 = select i1 %2169, float %2539, float %2548
  %2554 = select i1 %2169, float %2540, float %2549
  %2555 = select i1 %2169, float %2541, float %2550
  %2556 = select i1 %2164, float %2552, float 0.000000e+00
  %2557 = fadd fast float %2553, -1.000000e+00
  %2558 = fadd fast float %2554, -1.000000e+00
  %2559 = fadd fast float %2555, -1.000000e+00
  %2560 = fmul fast float %2557, %2556
  %2561 = fmul fast float %2558, %2556
  %2562 = fmul fast float %2559, %2556
  %2563 = fadd fast float %2560, 1.000000e+00
  %2564 = fadd fast float %2561, 1.000000e+00
  %2565 = fadd fast float %2562, 1.000000e+00
  %2566 = fmul fast float %2563, %1635
  %2567 = fmul fast float %2564, %1636
  %2568 = fmul fast float %2565, %1637
  br label %2569

; <label>:2569                                    ; preds = %2497, %2159
  %2570 = phi float [ %2566, %2497 ], [ %1635, %2159 ]
  %2571 = phi float [ %2567, %2497 ], [ %1636, %2159 ]
  %2572 = phi float [ %2568, %2497 ], [ %1637, %2159 ]
  %2573 = call float @dx.op.dot3.f32(i32 55, float %1978, float %1979, float %1980, float %190, float %191, float %192)  ; Dot3(ax,ay,az,bx,by,bz)
  %2574 = fcmp fast ogt float %338, 0.000000e+00
  %2575 = select i1 %2574, float 1.000000e+00, float -1.000000e+00
  %2576 = fmul fast float %109, 7.812500e-03
  %2577 = fmul fast float %109, 3.125000e-02
  %2578 = fadd fast float %2577, -3.125000e-02
  %2579 = fmul fast float %2575, 5.000000e-01
  %2580 = fmul fast float %2579, %2573
  %2581 = fmul fast float %2575, %338
  %2582 = fadd fast float %2576, 4.921875e-01
  %2583 = fadd fast float %2582, %2580
  %2584 = fadd fast float %2576, 0x3FB25F3060000000
  %2585 = fadd fast float %2578, %2581
  %2586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %27, float %2583, float %2584, float %2585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2587 = extractvalue %dx.types.ResRet.f32 %2586, 0
  %2588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2589 = extractvalue %dx.types.CBufRet.f32 %2588, 1
  %2590 = extractvalue %dx.types.CBufRet.f32 %2588, 2
  %2591 = select i1 %1678, float %2589, float %2590
  %2592 = fmul fast float %1985, 0x400921FB60000000
  %2593 = fmul fast float %2592, %2155
  %2594 = fmul fast float %2593, %2587
  %2595 = fmul fast float %2594, %2591
  %2596 = fmul fast float %2570, %1951
  %2597 = fmul fast float %2596, %2595
  %2598 = fmul fast float %2571, %1951
  %2599 = fmul fast float %2598, %2595
  %2600 = fmul fast float %2572, %1951
  %2601 = fmul fast float %2600, %2595
  %2602 = fadd fast float %2597, %1624
  %2603 = fadd fast float %2599, %1625
  %2604 = fadd fast float %2601, %1626
  br label %2061

; <label>:2605                                    ; preds = %2061
  br label %2606

; <label>:2606                                    ; preds = %2605, %1609
  %2607 = phi float [ %1611, %1609 ], [ %2062, %2605 ]
  %2608 = phi float [ %1612, %1609 ], [ %2063, %2605 ]
  %2609 = phi float [ %1613, %1609 ], [ %2064, %2605 ]
  %2610 = add i32 %1610, 1
  %2611 = icmp ugt i32 %2610, %1608
  br i1 %2611, label %2612, label %1609

; <label>:2612                                    ; preds = %2606
  br label %2613

; <label>:2613                                    ; preds = %2612, %1599
  %2614 = phi float [ %1600, %1599 ], [ %2607, %2612 ]
  %2615 = phi float [ %1601, %1599 ], [ %2608, %2612 ]
  %2616 = phi float [ %1602, %1599 ], [ %2609, %2612 ]
  %2617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %25, float %134, float %135, float %136, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2618 = extractvalue %dx.types.ResRet.f32 %2617, 0
  %2619 = extractvalue %dx.types.ResRet.f32 %2617, 1
  %2620 = extractvalue %dx.types.ResRet.f32 %2617, 2
  %2621 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2618)  ; IsNaN(value)
  %2622 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2619)  ; IsNaN(value)
  %2623 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2620)  ; IsNaN(value)
  %2624 = or i1 %2621, %2622
  %2625 = or i1 %2624, %2623
  %2626 = select i1 %2625, float 0.000000e+00, float %2618
  %2627 = select i1 %2625, float 0.000000e+00, float %2619
  %2628 = select i1 %2625, float 0.000000e+00, float %2620
  %2629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2630 = extractvalue %dx.types.CBufRet.f32 %2629, 1
  %2631 = fmul fast float %2626, %2630
  %2632 = fmul fast float %2627, %2630
  %2633 = fmul fast float %2628, %2630
  %2634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2635 = extractvalue %dx.types.CBufRet.f32 %2634, 3
  %2636 = fmul fast float %2631, %2635
  %2637 = fmul fast float %2632, %2635
  %2638 = fmul fast float %2633, %2635
  %2639 = fadd fast float %2636, %2614
  %2640 = fadd fast float %2637, %2615
  %2641 = fadd fast float %2638, %2616
  br label %2642

; <label>:2642                                    ; preds = %2613, %310
  %2643 = phi float [ %335, %2613 ], [ %326, %310 ]
  %2644 = phi float [ %336, %2613 ], [ %327, %310 ]
  %2645 = phi float [ %337, %2613 ], [ %328, %310 ]
  %2646 = phi float [ %2639, %2613 ], [ 0.000000e+00, %310 ]
  %2647 = phi float [ %2640, %2613 ], [ 0.000000e+00, %310 ]
  %2648 = phi float [ %2641, %2613 ], [ 0.000000e+00, %310 ]
  %2649 = fmul fast float %2643, %329
  %2650 = fmul fast float %2644, %329
  %2651 = fmul fast float %2645, %329
  %2652 = fmul fast float %2649, %2646
  %2653 = fmul fast float %2650, %2647
  %2654 = fmul fast float %2651, %2648
  %2655 = xor i1 %231, true
  %2656 = and i1 %71, %2655
  %2657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %2658 = extractvalue %dx.types.CBufRet.f32 %2657, 0
  %2659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %2660 = extractvalue %dx.types.CBufRet.f32 %2659, 0
  %2661 = select i1 %195, float %2658, float %2660
  %2662 = fmul fast float %2652, %2661
  %2663 = fmul fast float %2653, %2661
  %2664 = fmul fast float %2654, %2661
  %2665 = fmul fast float %2663, 5.000000e-01
  %2666 = fadd fast float %2654, %2652
  %2667 = fmul fast float %2661, %2666
  %2668 = fmul fast float %2667, 2.500000e-01
  %2669 = fadd fast float %2668, %2665
  %2670 = call float @dx.op.unary.f32(i32 23, float %2669)  ; Log(value)
  %2671 = fmul fast float %2670, 0x3FE62E4300000000
  %2672 = fmul fast float %2671, %2671
  %2673 = select i1 %2656, float 1.000000e+00, float 0.000000e+00
  store float %2673, float addrspace(3)* %236, align 4, !tbaa !44, !noalias !48
  %2674 = fmul fast float %2671, %2673
  store float %2674, float addrspace(3)* %238, align 4, !tbaa !44, !noalias !48
  %2675 = fmul fast float %2672, %2673
  store float %2675, float addrspace(3)* %240, align 4, !tbaa !44, !noalias !48
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2676 = load float, float addrspace(3)* %242, align 4, !tbaa !44, !noalias !48
  %2677 = fadd fast float %2676, %2673
  %2678 = load float, float addrspace(3)* %245, align 4, !tbaa !44, !noalias !48
  %2679 = fadd fast float %2678, %2671
  %2680 = load float, float addrspace(3)* %248, align 4, !tbaa !44, !noalias !48
  %2681 = fadd fast float %2680, %2672
  store float %2677, float addrspace(3)* %236, align 4, !tbaa !44, !noalias !48
  store float %2679, float addrspace(3)* %238, align 4, !tbaa !44, !noalias !48
  store float %2681, float addrspace(3)* %240, align 4, !tbaa !44, !noalias !48
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2682 = load float, float addrspace(3)* %252, align 4, !tbaa !44, !noalias !48
  %2683 = fadd fast float %2682, %2677
  %2684 = load float, float addrspace(3)* %255, align 4, !tbaa !44, !noalias !48
  %2685 = fadd fast float %2684, %2679
  %2686 = load float, float addrspace(3)* %258, align 4, !tbaa !44, !noalias !48
  %2687 = fadd fast float %2686, %2681
  store float %2683, float addrspace(3)* %236, align 4, !tbaa !44, !noalias !48
  store float %2685, float addrspace(3)* %238, align 4, !tbaa !44, !noalias !48
  store float %2687, float addrspace(3)* %240, align 4, !tbaa !44, !noalias !48
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2688 = load float, float addrspace(3)* %262, align 4, !tbaa !44, !noalias !48
  %2689 = fadd fast float %2688, %2683
  %2690 = load float, float addrspace(3)* %265, align 4, !tbaa !44, !noalias !48
  %2691 = fadd fast float %2690, %2685
  %2692 = fdiv fast float %2691, %2689
  %2693 = and i1 %2656, %272
  br i1 %2693, label %2694, label %2702, !dx.controlflow.hints !52

; <label>:2694                                    ; preds = %2642
  %2695 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %261
  %2696 = load float, float addrspace(3)* %2695, align 4, !tbaa !44, !noalias !48
  %2697 = fadd fast float %2696, %2687
  %2698 = fdiv fast float %2697, %2689
  %2699 = lshr i32 %59, 1
  %2700 = lshr i32 %60, 1
  %2701 = lshr i32 %230, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2699, i32 %2700, i32 %2701, float %2692, float %2698, float %2692, float %2692, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2702

; <label>:2702                                    ; preds = %2694, %2642
  br i1 %2656, label %2703, label %2737, !dx.controlflow.hints !53

; <label>:2703                                    ; preds = %2702
  %2704 = fadd fast float %109, 0x3FE3C6EF40000000
  %2705 = call float @dx.op.unary.f32(i32 22, float %2704)  ; Frc(value)
  %2706 = call float @dx.op.unary.f32(i32 23, float %2662)  ; Log(value)
  %2707 = fadd fast float %2706, -7.000000e+00
  %2708 = call float @dx.op.unary.f32(i32 21, float %2707)  ; Exp(value)
  %2709 = fmul fast float %2705, 2.000000e+00
  %2710 = fadd fast float %2709, -1.000000e+00
  %2711 = fmul fast float %2708, %2710
  %2712 = fcmp fast ogt float %2662, 0.000000e+00
  %2713 = select i1 %2712, float %2711, float 0.000000e+00
  %2714 = fadd fast float %2713, %2662
  %2715 = fadd fast float %109, 0x3FF3C6EF40000000
  %2716 = call float @dx.op.unary.f32(i32 22, float %2715)  ; Frc(value)
  %2717 = call float @dx.op.unary.f32(i32 23, float %2663)  ; Log(value)
  %2718 = fadd fast float %2717, -7.000000e+00
  %2719 = call float @dx.op.unary.f32(i32 21, float %2718)  ; Exp(value)
  %2720 = fmul fast float %2716, 2.000000e+00
  %2721 = fadd fast float %2720, -1.000000e+00
  %2722 = fmul fast float %2719, %2721
  %2723 = fcmp fast ogt float %2663, 0.000000e+00
  %2724 = select i1 %2723, float %2722, float 0.000000e+00
  %2725 = fadd fast float %2724, %2663
  %2726 = fadd fast float %109, 0x3FFDAA66E0000000
  %2727 = call float @dx.op.unary.f32(i32 22, float %2726)  ; Frc(value)
  %2728 = call float @dx.op.unary.f32(i32 23, float %2664)  ; Log(value)
  %2729 = fadd fast float %2728, -6.000000e+00
  %2730 = call float @dx.op.unary.f32(i32 21, float %2729)  ; Exp(value)
  %2731 = fmul fast float %2727, 2.000000e+00
  %2732 = fadd fast float %2731, -1.000000e+00
  %2733 = fmul fast float %2730, %2732
  %2734 = fcmp fast ogt float %2664, 0.000000e+00
  %2735 = select i1 %2734, float %2733, float 0.000000e+00
  %2736 = fadd fast float %2735, %2664
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %59, i32 %60, i32 %230, float %2714, float %2725, float %2736, float %2714, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2737

; <label>:2737                                    ; preds = %2703, %2702
  %2738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %2739 = extractvalue %dx.types.CBufRet.f32 %2738, 0
  %2740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %2741 = extractvalue %dx.types.CBufRet.f32 %2740, 0
  %2742 = select i1 %195, float %2739, float %2741
  %2743 = fmul fast float %2742, %329
  %2744 = fmul fast float %2743, 5.000000e-01
  %2745 = fadd fast float %329, %329
  %2746 = fmul fast float %2742, %2745
  %2747 = fmul fast float %2746, 2.500000e-01
  %2748 = fadd fast float %2747, %2744
  %2749 = fmul fast float %2748, %2748
  store float %2673, float addrspace(3)* %236, align 4, !tbaa !44, !noalias !48
  %2750 = fmul fast float %2748, %2673
  store float %2750, float addrspace(3)* %238, align 4, !tbaa !44, !noalias !48
  %2751 = fmul fast float %2749, %2673
  store float %2751, float addrspace(3)* %240, align 4, !tbaa !44, !noalias !48
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2752 = load float, float addrspace(3)* %242, align 4, !tbaa !44, !noalias !48
  %2753 = fadd fast float %2752, %2673
  %2754 = load float, float addrspace(3)* %245, align 4, !tbaa !44, !noalias !48
  %2755 = fadd fast float %2748, %2754
  %2756 = load float, float addrspace(3)* %248, align 4, !tbaa !44, !noalias !48
  %2757 = fadd fast float %2749, %2756
  store float %2753, float addrspace(3)* %236, align 4, !tbaa !44, !noalias !48
  store float %2755, float addrspace(3)* %238, align 4, !tbaa !44, !noalias !48
  store float %2757, float addrspace(3)* %240, align 4, !tbaa !44, !noalias !48
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2758 = load float, float addrspace(3)* %252, align 4, !tbaa !44, !noalias !48
  %2759 = fadd fast float %2758, %2753
  %2760 = load float, float addrspace(3)* %255, align 4, !tbaa !44, !noalias !48
  %2761 = fadd fast float %2755, %2760
  %2762 = load float, float addrspace(3)* %258, align 4, !tbaa !44, !noalias !48
  %2763 = fadd fast float %2757, %2762
  store float %2759, float addrspace(3)* %236, align 4, !tbaa !44, !noalias !48
  store float %2761, float addrspace(3)* %238, align 4, !tbaa !44, !noalias !48
  store float %2763, float addrspace(3)* %240, align 4, !tbaa !44, !noalias !48
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2764 = load float, float addrspace(3)* %262, align 4, !tbaa !44, !noalias !48
  %2765 = fadd fast float %2764, %2759
  %2766 = load float, float addrspace(3)* %265, align 4, !tbaa !44, !noalias !48
  %2767 = fadd fast float %2766, %2761
  %2768 = fdiv fast float %2767, %2765
  br i1 %2693, label %2769, label %2777, !dx.controlflow.hints !54

; <label>:2769                                    ; preds = %2737
  %2770 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %261
  %2771 = load float, float addrspace(3)* %2770, align 4, !tbaa !44, !noalias !48
  %2772 = fadd fast float %2771, %2763
  %2773 = fdiv fast float %2772, %2765
  %2774 = lshr i32 %59, 1
  %2775 = lshr i32 %60, 1
  %2776 = lshr i32 %230, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2774, i32 %2775, i32 %2776, float %2768, float %2773, float %2768, float %2768, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2777

; <label>:2777                                    ; preds = %2769, %2737
  br i1 %2656, label %2778, label %2806, !dx.controlflow.hints !55

; <label>:2778                                    ; preds = %2777
  %2779 = fadd fast float %109, 0x3FE3C6EF40000000
  %2780 = call float @dx.op.unary.f32(i32 22, float %2779)  ; Frc(value)
  %2781 = call float @dx.op.unary.f32(i32 23, float %2743)  ; Log(value)
  %2782 = fadd fast float %2781, -7.000000e+00
  %2783 = call float @dx.op.unary.f32(i32 21, float %2782)  ; Exp(value)
  %2784 = fmul fast float %2780, 2.000000e+00
  %2785 = fadd fast float %2784, -1.000000e+00
  %2786 = fmul fast float %2783, %2785
  %2787 = fcmp fast ogt float %2743, 0.000000e+00
  %2788 = select i1 %2787, float %2786, float 0.000000e+00
  %2789 = fadd fast float %2788, %2743
  %2790 = fadd fast float %109, 0x3FF3C6EF40000000
  %2791 = call float @dx.op.unary.f32(i32 22, float %2790)  ; Frc(value)
  %2792 = fmul fast float %2791, 2.000000e+00
  %2793 = fadd fast float %2792, -1.000000e+00
  %2794 = fmul fast float %2783, %2793
  %2795 = select i1 %2787, float %2794, float 0.000000e+00
  %2796 = fadd fast float %2795, %2743
  %2797 = fadd fast float %109, 0x3FFDAA66E0000000
  %2798 = call float @dx.op.unary.f32(i32 22, float %2797)  ; Frc(value)
  %2799 = fadd fast float %2781, -6.000000e+00
  %2800 = call float @dx.op.unary.f32(i32 21, float %2799)  ; Exp(value)
  %2801 = fmul fast float %2798, 2.000000e+00
  %2802 = fadd fast float %2801, -1.000000e+00
  %2803 = fmul fast float %2800, %2802
  %2804 = select i1 %2787, float %2803, float 0.000000e+00
  %2805 = fadd fast float %2804, %2743
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %59, i32 %60, i32 %230, float %2789, float %2796, float %2805, float %2789, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2806

; <label>:2806                                    ; preds = %2778, %2777
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
!dx.entryPoints = !{!41}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !27, !32, !35}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !25, !26}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 40, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 44, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture3D<float>"* undef, !"", i32 0, i32 10, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %"class.Texture1D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 1, i32 0, !7}
!16 = !{i32 9, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 34, i32 1, i32 7, i32 0, !19}
!19 = !{i32 0, i32 14}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 23, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!27 = !{!28, !29, !30, !31}
!28 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!29 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!30 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!31 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!32 = !{!33, !34}
!33 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!34 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!35 = !{!36, !37, !38, !39, !40}
!36 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!37 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!38 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!39 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!40 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!41 = !{void ()* @cs_volumetric_forwardplus_scatter_global_water, !"cs_volumetric_forwardplus_scatter_global_water", null, !4, !42}
!42 = !{i32 0, i64 272, i32 4, !43}
!43 = !{i32 4, i32 4, i32 4}
!44 = !{!45, !45, i64 0}
!45 = !{!"float", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !{!49, !51}
!49 = distinct !{!49, !50, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!50 = distinct !{!50, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!51 = distinct !{!51, !50, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = !{!68, !68, i64 0}
!68 = !{!"int", !46, i64 0}
!69 = !{!70, !72, !74, !49, !51}
!70 = distinct !{!70, !71, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!71 = distinct !{!71, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!72 = distinct !{!72, !73, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!73 = distinct !{!73, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!74 = distinct !{!74, !75, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z: %agg.result"}
!75 = distinct !{!75, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z"}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}

