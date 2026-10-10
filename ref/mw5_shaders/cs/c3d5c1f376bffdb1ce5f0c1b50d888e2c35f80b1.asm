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
; shader hash: ffcc652478362bfcbcb6a7f0be3d60d4
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
;                                   texture     f32          1d     T18            t54     1
;                                   texture     f32          3d     T19             t5     1
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

define void @cs_volumetric_forwardplus_scatter_global_water_afog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 54, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = alloca [4 x i32], align 4
  %33 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %34 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %35 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %36 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %37 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %38 = alloca [12 x float], align 4
  %39 = alloca [12 x float], align 4
  %40 = alloca [3 x float], align 4
  %41 = alloca [3 x float], align 4
  %42 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.i32 %42, 3
  %44 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.i32 %44, 1
  %46 = mul i32 %45, %43
  %47 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.i32 %47, 1
  %49 = mul i32 %46, %48
  %50 = add i32 %49, %36
  %51 = shl i32 %50, 2
  %52 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %51, i32 undef)  ; BufferLoad(srv,index,wot)
  %53 = extractvalue %dx.types.ResRet.i32 %52, 0
  %54 = and i32 %53, 255
  %55 = lshr i32 %53, 8
  %56 = and i32 %55, 255
  %57 = lshr i32 %53, 16
  %58 = and i32 %57, 255
  %59 = shl nuw nsw i32 %54, 2
  %60 = shl nuw nsw i32 %56, 2
  %61 = shl nuw nsw i32 %58, 2
  %62 = add i32 %59, %33
  %63 = add i32 %60, %34
  %64 = add i32 %61, %35
  %65 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.i32 %65, 0
  %67 = extractvalue %dx.types.CBufRet.i32 %65, 1
  %68 = extractvalue %dx.types.CBufRet.i32 %65, 2
  %69 = icmp uge i32 %62, %66
  %70 = icmp uge i32 %63, %67
  %71 = icmp uge i32 %64, %68
  %72 = or i1 %69, %70
  %73 = or i1 %71, %72
  %74 = xor i1 %73, true
  %75 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.i32 %75, 3
  %77 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %63, i32 %76)  ; UMad(a,b,c)
  %78 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %62, i32 %77)  ; UMad(a,b,c)
  %79 = mul i32 %78, -63
  %80 = lshr i32 %79, 17
  %81 = xor i32 %80, %79
  %82 = mul i32 %81, -511
  %83 = mul i32 %81, -8176
  %84 = xor i32 %82, %83
  %85 = mul i32 %84, -7
  %86 = mul i32 %84, -7168
  %87 = xor i32 %85, %86
  %88 = lshr i32 %87, 15
  %89 = xor i32 %88, %85
  %90 = and i32 %89, 127
  %91 = mul i32 %90, 3
  %92 = add i32 0, %91
  %93 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %92
  %94 = load float, float* %93, align 4
  %95 = mul i32 %90, 3
  %96 = add i32 1, %95
  %97 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %96
  %98 = load float, float* %97, align 4
  %99 = mul i32 %90, 3
  %100 = add i32 2, %99
  %101 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %100
  %102 = load float, float* %101, align 4
  %103 = uitofp i32 %76 to float
  %104 = fmul fast float %103, 0x3FEA36A940000000
  %105 = fmul fast float %103, 0x3FE5793080000000
  %106 = fmul fast float %103, 0x3FE1972580000000
  %107 = fadd fast float %94, %104
  %108 = fadd fast float %98, %105
  %109 = fadd fast float %102, %106
  %110 = call float @dx.op.unary.f32(i32 22, float %107)  ; Frc(value)
  %111 = call float @dx.op.unary.f32(i32 22, float %108)  ; Frc(value)
  %112 = call float @dx.op.unary.f32(i32 22, float %109)  ; Frc(value)
  %113 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %62, i32 %63, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %114 = extractvalue %dx.types.ResRet.f32 %113, 0
  %115 = fcmp fast ogt float %114, -1.000000e+00
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %118 = select i1 %115, float %117, float 1.000000e+00
  %119 = fadd fast float %114, 1.000000e+00
  %120 = fmul fast float %118, %119
  %121 = uitofp i32 %62 to float
  %122 = uitofp i32 %63 to float
  %123 = uitofp i32 %64 to float
  %124 = fadd fast float %121, -5.000000e-01
  %125 = fadd fast float %124, %110
  %126 = fadd fast float %122, -5.000000e-01
  %127 = fadd fast float %126, %111
  %128 = fadd fast float %123, -5.000000e-01
  %129 = fadd fast float %128, %112
  %130 = fadd fast float %125, 5.000000e-01
  %131 = fadd fast float %127, 5.000000e-01
  %132 = fadd fast float %129, 5.000000e-01
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = fmul fast float %134, %130
  %138 = fmul fast float %135, %131
  %139 = fmul fast float %136, %132
  %140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.i32 %140, 0
  %142 = uitofp i32 %141 to float
  %143 = fmul fast float %142, %139
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = fmul fast float %143, %146
  %148 = call float @dx.op.unary.f32(i32 21, float %147)  ; Exp(value)
  %149 = fmul fast float %148, %145
  %150 = fsub fast float 4.000000e+00, %145
  %151 = fadd fast float %150, %149
  %152 = call float @dx.op.binary.f32(i32 36, float %151, float %120)  ; FMin(a,b)
  %153 = fmul fast float %137, 2.000000e+00
  %154 = fmul fast float %138, 2.000000e+00
  %155 = fsub fast float 1.000000e+00, %153
  %156 = fsub fast float 1.000000e+00, %154
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = fmul fast float %158, %155
  %162 = fmul fast float %159, %155
  %163 = fmul fast float %160, %155
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = fmul fast float %165, %156
  %169 = fmul fast float %166, %156
  %170 = fmul fast float %167, %156
  %171 = fadd fast float %168, %161
  %172 = fadd fast float %169, %162
  %173 = fadd fast float %170, %163
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %178 = fadd fast float %171, %175
  %179 = fadd fast float %172, %176
  %180 = fadd fast float %173, %177
  %181 = fmul fast float %178, %152
  %182 = fmul fast float %179, %152
  %183 = fmul fast float %180, %152
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %186 = extractvalue %dx.types.CBufRet.f32 %184, 1
  %187 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %188 = fadd fast float %181, %185
  %189 = fadd fast float %182, %186
  %190 = fadd fast float %183, %187
  %191 = call float @dx.op.dot3.f32(i32 55, float %181, float %182, float %183, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %192 = call float @dx.op.unary.f32(i32 25, float %191)  ; Rsqrt(value)
  %193 = fmul fast float %181, %192
  %194 = fmul fast float %182, %192
  %195 = fmul fast float %183, %192
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 0
  %198 = fcmp fast ogt float %197, 0.000000e+00
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 0
  %201 = extractvalue %dx.types.CBufRet.f32 %199, 1
  %202 = extractvalue %dx.types.CBufRet.f32 %199, 2
  %203 = fsub fast float %188, %200
  %204 = fadd fast float %203, %202
  %205 = fsub fast float %189, %201
  %206 = fadd fast float %205, %202
  %207 = extractvalue %dx.types.CBufRet.f32 %199, 3
  %208 = fmul fast float %204, %207
  %209 = fmul fast float %206, %207
  %210 = call float @dx.op.unary.f32(i32 7, float %208)  ; Saturate(value)
  %211 = call float @dx.op.unary.f32(i32 7, float %209)  ; Saturate(value)
  %212 = fsub fast float 1.000000e+00, %210
  %213 = fsub fast float 1.000000e+00, %211
  %214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %28, float %212, float %213, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %218 = fmul fast float %217, %215
  %219 = extractvalue %dx.types.CBufRet.f32 %216, 3
  %220 = fadd fast float %219, %218
  %221 = fcmp fast ogt float %215, 0.000000e+00
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = and i32 %223, 32768
  %225 = icmp ne i32 %224, 0
  %226 = and i1 %221, %225
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 3
  %229 = fadd fast float %228, %220
  %230 = fcmp fast ole float %190, %229
  %231 = and i1 %226, %230
  %232 = select i1 %198, i32 %141, i32 0
  %233 = add i32 %232, %64
  %234 = xor i1 %198, %231
  %235 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %236 = fmul fast float %235, 0x3FE62E4300000000
  %237 = fmul fast float %236, %236
  %238 = select i1 %73, float 0.000000e+00, float 1.000000e+00
  %239 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %37
  store float %238, float addrspace(3)* %239, align 4, !tbaa !45, !noalias !49
  %240 = fmul fast float %236, %238
  %241 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %37
  store float %240, float addrspace(3)* %241, align 4, !tbaa !45, !noalias !49
  %242 = fmul fast float %237, %238
  %243 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %37
  store float %242, float addrspace(3)* %243, align 4, !tbaa !45, !noalias !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %244 = xor i32 %37, 4
  %245 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %244
  %246 = load float, float addrspace(3)* %245, align 4, !tbaa !45, !noalias !49
  %247 = fadd fast float %246, %238
  %248 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %244
  %249 = load float, float addrspace(3)* %248, align 4, !tbaa !45, !noalias !49
  %250 = fadd fast float %249, %236
  %251 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %244
  %252 = load float, float addrspace(3)* %251, align 4, !tbaa !45, !noalias !49
  %253 = fadd fast float %252, %237
  store float %247, float addrspace(3)* %239, align 4, !tbaa !45, !noalias !49
  store float %250, float addrspace(3)* %241, align 4, !tbaa !45, !noalias !49
  store float %253, float addrspace(3)* %243, align 4, !tbaa !45, !noalias !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %254 = xor i32 %37, 16
  %255 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %254
  %256 = load float, float addrspace(3)* %255, align 4, !tbaa !45, !noalias !49
  %257 = fadd fast float %256, %247
  %258 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %254
  %259 = load float, float addrspace(3)* %258, align 4, !tbaa !45, !noalias !49
  %260 = fadd fast float %259, %250
  %261 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %254
  %262 = load float, float addrspace(3)* %261, align 4, !tbaa !45, !noalias !49
  %263 = fadd fast float %262, %253
  store float %257, float addrspace(3)* %239, align 4, !tbaa !45, !noalias !49
  store float %260, float addrspace(3)* %241, align 4, !tbaa !45, !noalias !49
  store float %263, float addrspace(3)* %243, align 4, !tbaa !45, !noalias !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %264 = xor i32 %37, 1
  %265 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %264
  %266 = load float, float addrspace(3)* %265, align 4, !tbaa !45, !noalias !49
  %267 = fadd fast float %266, %257
  %268 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %264
  %269 = load float, float addrspace(3)* %268, align 4, !tbaa !45, !noalias !49
  %270 = fadd fast float %269, %260
  %271 = fdiv fast float %270, %267
  %272 = and i32 %62, 1
  %273 = and i32 %272, %63
  %274 = and i32 %273, %233
  %275 = icmp ne i32 %274, 0
  %276 = and i1 %275, %74
  br i1 %276, label %277, label %285, !dx.controlflow.hints !53

; <label>:277                                     ; preds = %0
  %278 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %264
  %279 = load float, float addrspace(3)* %278, align 4, !tbaa !45, !noalias !49
  %280 = fadd fast float %279, %263
  %281 = fdiv fast float %280, %267
  %282 = lshr i32 %62, 1
  %283 = lshr i32 %63, 1
  %284 = lshr i32 %233, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %282, i32 %283, i32 %284, float %271, float %281, float %271, float %271, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %285

; <label>:285                                     ; preds = %277, %0
  br i1 %73, label %287, label %286, !dx.controlflow.hints !54

; <label>:286                                     ; preds = %285
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %62, i32 %63, i32 %233, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %287

; <label>:287                                     ; preds = %286, %285
  store float %238, float addrspace(3)* %239, align 4, !tbaa !45, !noalias !49
  store float 0.000000e+00, float addrspace(3)* %241, align 4, !tbaa !45, !noalias !49
  store float 0.000000e+00, float addrspace(3)* %243, align 4, !tbaa !45, !noalias !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %288 = load float, float addrspace(3)* %245, align 4, !tbaa !45, !noalias !49
  %289 = fadd fast float %288, %238
  %290 = load float, float addrspace(3)* %248, align 4, !tbaa !45, !noalias !49
  %291 = load float, float addrspace(3)* %251, align 4, !tbaa !45, !noalias !49
  store float %289, float addrspace(3)* %239, align 4, !tbaa !45, !noalias !49
  store float %290, float addrspace(3)* %241, align 4, !tbaa !45, !noalias !49
  store float %291, float addrspace(3)* %243, align 4, !tbaa !45, !noalias !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %292 = load float, float addrspace(3)* %255, align 4, !tbaa !45, !noalias !49
  %293 = fadd fast float %292, %289
  %294 = load float, float addrspace(3)* %258, align 4, !tbaa !45, !noalias !49
  %295 = fadd fast float %294, %290
  %296 = load float, float addrspace(3)* %261, align 4, !tbaa !45, !noalias !49
  %297 = fadd fast float %296, %291
  store float %293, float addrspace(3)* %239, align 4, !tbaa !45, !noalias !49
  store float %295, float addrspace(3)* %241, align 4, !tbaa !45, !noalias !49
  store float %297, float addrspace(3)* %243, align 4, !tbaa !45, !noalias !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %298 = load float, float addrspace(3)* %265, align 4, !tbaa !45, !noalias !49
  %299 = fadd fast float %298, %293
  %300 = load float, float addrspace(3)* %268, align 4, !tbaa !45, !noalias !49
  %301 = fadd fast float %300, %295
  %302 = fdiv fast float %301, %299
  br i1 %276, label %303, label %311, !dx.controlflow.hints !55

; <label>:303                                     ; preds = %287
  %304 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %264
  %305 = load float, float addrspace(3)* %304, align 4, !tbaa !45, !noalias !49
  %306 = fadd fast float %305, %297
  %307 = fdiv fast float %306, %299
  %308 = lshr i32 %62, 1
  %309 = lshr i32 %63, 1
  %310 = lshr i32 %233, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %308, i32 %309, i32 %310, float %302, float %307, float %302, float %302, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %311

; <label>:311                                     ; preds = %303, %287
  br i1 %73, label %313, label %312, !dx.controlflow.hints !56

; <label>:312                                     ; preds = %311
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %62, i32 %63, i32 %233, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %313

; <label>:313                                     ; preds = %312, %311
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 0
  %316 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %317 = fsub fast float %190, %315
  %318 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %317)  ; FMax(a,b)
  %319 = fmul fast float %318, 0x3FF7154760000000
  %320 = fmul fast float %319, %316
  %321 = call float @dx.op.unary.f32(i32 21, float %320)  ; Exp(value)
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 0
  %324 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %325 = extractvalue %dx.types.CBufRet.f32 %322, 2
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %328 = fmul fast float %327, %321
  %329 = fmul fast float %328, %323
  %330 = fmul fast float %328, %324
  %331 = fmul fast float %328, %325
  %332 = select i1 %231, float 0.000000e+00, float %328
  %333 = fcmp fast ogt float %332, 0.000000e+00
  br i1 %333, label %334, label %2645, !dx.controlflow.hints !57

; <label>:334                                     ; preds = %313
  %335 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %336 = fmul fast float %335, %328
  %337 = fdiv fast float 1.000000e+00, %332
  %338 = fmul fast float %337, %329
  %339 = fmul fast float %337, %330
  %340 = fmul fast float %337, %331
  %341 = fmul fast float %336, %337
  %342 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.i32 %342, 2
  %344 = extractvalue %dx.types.CBufRet.i32 %342, 3
  %345 = call i32 @dx.op.tertiary.i32(i32 49, i32 %56, i32 %343, i32 %54)  ; UMad(a,b,c)
  %346 = call i32 @dx.op.tertiary.i32(i32 49, i32 %58, i32 %344, i32 %345)  ; UMad(a,b,c)
  %347 = fadd fast float %121, 1.000000e+00
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 0
  %350 = extractvalue %dx.types.CBufRet.f32 %348, 1
  %351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.f32 %351, 0
  %353 = extractvalue %dx.types.CBufRet.f32 %351, 1
  %354 = fmul fast float %353, %129
  %355 = call float @dx.op.unary.f32(i32 21, float %354)  ; Exp(value)
  %356 = fmul fast float %355, %352
  %357 = fsub fast float 4.000000e+00, %352
  %358 = fadd fast float %357, %356
  %359 = fmul fast float %347, 2.000000e+00
  %360 = fmul fast float %359, %349
  %361 = fmul fast float %122, 2.000000e+00
  %362 = fmul fast float %361, %350
  %363 = fsub fast float 1.000000e+00, %360
  %364 = fsub fast float 1.000000e+00, %362
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 0
  %367 = extractvalue %dx.types.CBufRet.f32 %365, 1
  %368 = extractvalue %dx.types.CBufRet.f32 %365, 2
  %369 = fmul fast float %366, %363
  %370 = fmul fast float %367, %363
  %371 = fmul fast float %368, %363
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %374 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %375 = extractvalue %dx.types.CBufRet.f32 %372, 2
  %376 = fmul fast float %373, %364
  %377 = fmul fast float %374, %364
  %378 = fmul fast float %375, %364
  %379 = fadd fast float %376, %369
  %380 = fadd fast float %377, %370
  %381 = fadd fast float %378, %371
  %382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.f32 %382, 0
  %384 = extractvalue %dx.types.CBufRet.f32 %382, 1
  %385 = extractvalue %dx.types.CBufRet.f32 %382, 2
  %386 = fadd fast float %379, %383
  %387 = fadd fast float %380, %384
  %388 = fadd fast float %381, %385
  %389 = fadd fast float %122, 1.000000e+00
  %390 = fmul fast float %121, 2.000000e+00
  %391 = fmul fast float %390, %349
  %392 = fmul fast float %389, 2.000000e+00
  %393 = fmul fast float %392, %350
  %394 = fsub fast float 1.000000e+00, %391
  %395 = fsub fast float 1.000000e+00, %393
  %396 = fmul fast float %366, %394
  %397 = fmul fast float %367, %394
  %398 = fmul fast float %368, %394
  %399 = fmul fast float %373, %395
  %400 = fmul fast float %374, %395
  %401 = fmul fast float %375, %395
  %402 = fadd fast float %399, %396
  %403 = fadd fast float %400, %397
  %404 = fadd fast float %401, %398
  %405 = fadd fast float %402, %383
  %406 = fadd fast float %403, %384
  %407 = fadd fast float %404, %385
  %408 = fmul fast float %405, %358
  %409 = fmul fast float %406, %358
  %410 = fmul fast float %407, %358
  %411 = fadd fast float %405, %386
  %412 = fmul fast float %358, %411
  %413 = fadd fast float %406, %387
  %414 = fmul fast float %358, %413
  %415 = fadd fast float %407, %388
  %416 = fmul fast float %358, %415
  %417 = fmul fast float %412, 5.000000e-01
  %418 = fmul fast float %414, 5.000000e-01
  %419 = fmul fast float %416, 5.000000e-01
  %420 = fsub fast float %417, %408
  %421 = fsub fast float %418, %409
  %422 = fsub fast float %419, %410
  %423 = call float @dx.op.dot3.f32(i32 55, float %420, float %421, float %422, float %420, float %421, float %422)  ; Dot3(ax,ay,az,bx,by,bz)
  %424 = call float @dx.op.unary.f32(i32 25, float %423)  ; Rsqrt(value)
  %425 = fmul fast float %424, %423
  %426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.f32 %426, 0
  %428 = extractvalue %dx.types.CBufRet.f32 %426, 1
  %429 = extractvalue %dx.types.CBufRet.f32 %426, 2
  %430 = fsub fast float %188, %427
  %431 = fsub fast float %189, %428
  %432 = fsub fast float %190, %429
  %433 = fmul fast float %353, %123
  %434 = call float @dx.op.unary.f32(i32 21, float %433)  ; Exp(value)
  %435 = fmul fast float %434, %352
  %436 = fadd fast float %357, %435
  %437 = fmul fast float %130, 2.000000e+00
  %438 = fmul fast float %437, %349
  %439 = fmul fast float %131, 2.000000e+00
  %440 = fmul fast float %439, %350
  %441 = fsub fast float 1.000000e+00, %438
  %442 = fsub fast float 1.000000e+00, %440
  %443 = fmul fast float %366, %441
  %444 = fmul fast float %367, %441
  %445 = fmul fast float %368, %441
  %446 = fmul fast float %373, %442
  %447 = fmul fast float %374, %442
  %448 = fmul fast float %375, %442
  %449 = fadd fast float %446, %443
  %450 = fadd fast float %447, %444
  %451 = fadd fast float %448, %445
  %452 = fadd fast float %449, %383
  %453 = fadd fast float %450, %384
  %454 = fadd fast float %451, %385
  %455 = fmul fast float %452, %436
  %456 = fmul fast float %453, %436
  %457 = fmul fast float %454, %436
  %458 = fadd fast float %123, 1.000000e+00
  %459 = fmul fast float %353, %458
  %460 = call float @dx.op.unary.f32(i32 21, float %459)  ; Exp(value)
  %461 = fsub fast float %460, %434
  %462 = fmul fast float %352, %461
  %463 = fmul fast float %452, %462
  %464 = fsub fast float %460, %434
  %465 = fmul fast float %352, %464
  %466 = fmul fast float %453, %465
  %467 = fsub fast float %460, %434
  %468 = fmul fast float %352, %467
  %469 = fmul fast float %454, %468
  %470 = call float @dx.op.dot3.f32(i32 55, float %463, float %466, float %469, float %463, float %466, float %469)  ; Dot3(ax,ay,az,bx,by,bz)
  %471 = call float @dx.op.unary.f32(i32 25, float %470)  ; Rsqrt(value)
  %472 = fmul fast float %471, %470
  %473 = fmul fast float %463, %471
  %474 = fmul fast float %466, %471
  %475 = fmul fast float %469, %471
  %476 = fsub fast float %220, %429
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 3
  %479 = fcmp fast oeq float %478, 0.000000e+00
  br i1 %479, label %1602, label %480, !dx.controlflow.hints !58

; <label>:480                                     ; preds = %334
  %481 = extractvalue %dx.types.CBufRet.f32 %477, 0
  %482 = extractvalue %dx.types.CBufRet.f32 %477, 1
  %483 = extractvalue %dx.types.CBufRet.f32 %477, 2
  %484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %485 = extractvalue %dx.types.CBufRet.f32 %484, 0
  %486 = extractvalue %dx.types.CBufRet.f32 %484, 1
  %487 = extractvalue %dx.types.CBufRet.f32 %484, 2
  %488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %489 = extractvalue %dx.types.CBufRet.f32 %488, 2
  %490 = fmul fast float %489, %481
  %491 = fmul fast float %489, %482
  %492 = fmul fast float %489, %483
  %493 = fsub fast float %430, %490
  %494 = fsub fast float %431, %491
  %495 = fsub fast float %432, %492
  %496 = fcmp fast olt float %478, 0.000000e+00
  br i1 %496, label %1028, label %497, !dx.controlflow.hints !59

; <label>:497                                     ; preds = %480
  %498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %499 = extractvalue %dx.types.CBufRet.f32 %498, 0
  %500 = extractvalue %dx.types.CBufRet.f32 %498, 1
  %501 = extractvalue %dx.types.CBufRet.f32 %498, 2
  %502 = extractvalue %dx.types.CBufRet.f32 %498, 3
  %503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %504 = extractvalue %dx.types.CBufRet.f32 %503, 0
  %505 = extractvalue %dx.types.CBufRet.f32 %503, 1
  %506 = extractvalue %dx.types.CBufRet.f32 %503, 2
  %507 = extractvalue %dx.types.CBufRet.f32 %503, 3
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 0
  %510 = extractvalue %dx.types.CBufRet.f32 %508, 1
  %511 = extractvalue %dx.types.CBufRet.f32 %508, 2
  %512 = extractvalue %dx.types.CBufRet.f32 %508, 3
  %513 = fmul fast float %499, %493
  %514 = call float @dx.op.tertiary.f32(i32 46, float %494, float %500, float %513)  ; FMad(a,b,c)
  %515 = call float @dx.op.tertiary.f32(i32 46, float %495, float %501, float %514)  ; FMad(a,b,c)
  %516 = fadd fast float %515, %502
  %517 = fmul fast float %504, %493
  %518 = call float @dx.op.tertiary.f32(i32 46, float %494, float %505, float %517)  ; FMad(a,b,c)
  %519 = call float @dx.op.tertiary.f32(i32 46, float %495, float %506, float %518)  ; FMad(a,b,c)
  %520 = fadd fast float %519, %507
  %521 = fmul fast float %509, %493
  %522 = call float @dx.op.tertiary.f32(i32 46, float %494, float %510, float %521)  ; FMad(a,b,c)
  %523 = call float @dx.op.tertiary.f32(i32 46, float %495, float %511, float %522)  ; FMad(a,b,c)
  %524 = fadd fast float %523, %512
  %525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %526 = extractvalue %dx.types.CBufRet.f32 %525, 0
  %527 = extractvalue %dx.types.CBufRet.f32 %525, 1
  %528 = extractvalue %dx.types.CBufRet.f32 %525, 3
  %529 = fmul fast float %528, %516
  %530 = fmul fast float %528, %520
  %531 = fadd fast float %529, %526
  %532 = fadd fast float %530, %527
  %533 = extractvalue %dx.types.CBufRet.f32 %525, 2
  %534 = fcmp fast olt float %533, 0.000000e+00
  %535 = fsub fast float -0.000000e+00, %533
  %536 = select i1 %534, float %535, float %533
  %537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.f32 %537, 1
  %539 = fadd fast float %536, %538
  %540 = fcmp fast ogt float %539, 0.000000e+00
  br i1 %540, label %541, label %572, !dx.controlflow.hints !60

; <label>:541                                     ; preds = %497
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 1
  %544 = fsub fast float %543, %524
  %545 = extractvalue %dx.types.CBufRet.f32 %542, 2
  %546 = fmul fast float %544, %545
  %547 = fsub fast float 1.000000e+00, %546
  %548 = call float @dx.op.unary.f32(i32 7, float %547)  ; Saturate(value)
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 0
  %551 = extractvalue %dx.types.CBufRet.f32 %549, 1
  %552 = fsub fast float %531, %550
  %553 = fsub fast float %532, %551
  %554 = fcmp fast olt float %552, 0.000000e+00
  %555 = fcmp fast olt float %553, 0.000000e+00
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 0
  %558 = extractvalue %dx.types.CBufRet.f32 %556, 1
  %559 = extractvalue %dx.types.CBufRet.f32 %556, 2
  %560 = extractvalue %dx.types.CBufRet.f32 %556, 3
  %561 = select i1 %554, float %557, float %559
  %562 = select i1 %555, float %558, float %560
  %563 = fmul fast float %561, %552
  %564 = fmul fast float %562, %553
  %565 = call float @dx.op.unary.f32(i32 6, float %563)  ; FAbs(value)
  %566 = call float @dx.op.unary.f32(i32 6, float %564)  ; FAbs(value)
  %567 = extractvalue %dx.types.CBufRet.f32 %488, 0
  %568 = call float @dx.op.binary.f32(i32 35, float %565, float %566)  ; FMax(a,b)
  %569 = fsub fast float %567, %568
  %570 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  %571 = fmul fast float %570, %548
  br label %572

; <label>:572                                     ; preds = %541, %497
  %573 = phi float [ %571, %541 ], [ 0.000000e+00, %497 ]
  %574 = call float @dx.op.binary.f32(i32 35, float %573, float 0.000000e+00)  ; FMax(a,b)
  %575 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %574)  ; FMax(a,b)
  %576 = fcmp fast olt float %575, 1.000000e+00
  br i1 %576, label %577, label %975, !dx.controlflow.hints !61

; <label>:577                                     ; preds = %572
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 0
  %580 = fcmp fast une float %579, 0.000000e+00
  br i1 %580, label %581, label %975, !dx.controlflow.hints !62

; <label>:581                                     ; preds = %577
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = extractvalue %dx.types.CBufRet.f32 %582, 1
  %585 = extractvalue %dx.types.CBufRet.f32 %582, 2
  %586 = extractvalue %dx.types.CBufRet.f32 %582, 3
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 0
  %589 = extractvalue %dx.types.CBufRet.f32 %587, 1
  %590 = extractvalue %dx.types.CBufRet.f32 %587, 2
  %591 = extractvalue %dx.types.CBufRet.f32 %587, 3
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 0
  %594 = extractvalue %dx.types.CBufRet.f32 %592, 1
  %595 = extractvalue %dx.types.CBufRet.f32 %592, 2
  %596 = extractvalue %dx.types.CBufRet.f32 %592, 3
  %597 = fmul fast float %583, %493
  %598 = call float @dx.op.tertiary.f32(i32 46, float %494, float %584, float %597)  ; FMad(a,b,c)
  %599 = call float @dx.op.tertiary.f32(i32 46, float %495, float %585, float %598)  ; FMad(a,b,c)
  %600 = fadd fast float %599, %586
  %601 = fmul fast float %588, %493
  %602 = call float @dx.op.tertiary.f32(i32 46, float %494, float %589, float %601)  ; FMad(a,b,c)
  %603 = call float @dx.op.tertiary.f32(i32 46, float %495, float %590, float %602)  ; FMad(a,b,c)
  %604 = fadd fast float %603, %591
  %605 = fmul fast float %593, %493
  %606 = call float @dx.op.tertiary.f32(i32 46, float %494, float %594, float %605)  ; FMad(a,b,c)
  %607 = call float @dx.op.tertiary.f32(i32 46, float %495, float %595, float %606)  ; FMad(a,b,c)
  %608 = fadd fast float %607, %596
  %609 = fcmp fast oge float %600, 1.000000e+00
  %610 = fcmp fast oge float %604, 1.000000e+00
  %611 = or i1 %609, %610
  %612 = fcmp fast olt float %600, 0.000000e+00
  %613 = fcmp fast olt float %604, 0.000000e+00
  %614 = or i1 %612, %613
  %615 = or i1 %611, %614
  br i1 %615, label %975, label %616, !dx.controlflow.hints !63

; <label>:616                                     ; preds = %581
  %617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %618 = extractvalue %dx.types.CBufRet.f32 %617, 0
  %619 = extractvalue %dx.types.CBufRet.f32 %617, 1
  %620 = extractvalue %dx.types.CBufRet.f32 %617, 2
  %621 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.i32 %621, 2
  %623 = uitofp i32 %622 to float
  %624 = extractvalue %dx.types.CBufRet.i32 %621, 3
  %625 = uitofp i32 %624 to float
  %626 = extractvalue %dx.types.CBufRet.f32 %617, 3
  %627 = fmul fast float %626, 2.000000e+00
  %628 = fsub fast float %600, %618
  %629 = fsub fast float %604, %619
  %630 = fmul fast float %627, %628
  %631 = fmul fast float %627, %629
  %632 = fdiv fast float 1.000000e+00, %483
  %633 = fmul fast float %631, %632
  %634 = call float @dx.op.unary.f32(i32 6, float %633)  ; FAbs(value)
  %635 = fmul fast float %620, %495
  %636 = fmul fast float %635, %627
  %637 = call float @dx.op.unary.f32(i32 6, float %636)  ; FAbs(value)
  %638 = call float @dx.op.unary.f32(i32 6, float %630)  ; FAbs(value)
  %639 = call float @dx.op.binary.f32(i32 35, float %637, float %634)  ; FMax(a,b)
  %640 = call float @dx.op.binary.f32(i32 35, float %638, float %639)  ; FMax(a,b)
  %641 = fmul fast float %640, 2.000000e+00
  %642 = call float @dx.op.unary.f32(i32 23, float %641)  ; Log(value)
  %643 = call float @dx.op.binary.f32(i32 35, float %642, float %623)  ; FMax(a,b)
  %644 = call float @dx.op.unary.f32(i32 22, float %643)  ; Frc(value)
  %645 = fadd fast float %644, 0xBFEA666660000000
  %646 = fmul fast float %645, 8.000000e+00
  %647 = call float @dx.op.unary.f32(i32 7, float %646)  ; Saturate(value)
  %648 = call float @dx.op.unary.f32(i32 27, float %643)  ; Round_ni(value)
  %649 = fadd fast float %648, %647
  %650 = call float @dx.op.binary.f32(i32 36, float %649, float %625)  ; FMin(a,b)
  %651 = call float @dx.op.unary.f32(i32 27, float %650)  ; Round_ni(value)
  %652 = fsub fast float -0.000000e+00, %651
  %653 = call float @dx.op.unary.f32(i32 21, float %652)  ; Exp(value)
  %654 = fmul fast float %653, %627
  %655 = fmul fast float %654, %600
  %656 = fmul fast float %654, %604
  %657 = fmul fast float %655, 2.500000e-01
  %658 = fmul fast float %656, 2.500000e-01
  %659 = fadd fast float %657, 5.000000e-01
  %660 = fadd fast float %658, 5.000000e-01
  %661 = fsub fast float %625, %623
  %662 = fptoui float %661 to i32
  %663 = add i32 %662, 320
  %664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 %663)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.f32 %664, 0
  %666 = extractvalue %dx.types.CBufRet.f32 %664, 1
  %667 = fcmp fast une float %650, %625
  %668 = fsub fast float %600, %665
  %669 = fsub fast float %604, %666
  %670 = call float @dx.op.unary.f32(i32 6, float %668)  ; FAbs(value)
  %671 = call float @dx.op.unary.f32(i32 6, float %669)  ; FAbs(value)
  %672 = fmul fast float %670, %654
  %673 = fmul fast float %671, %654
  %674 = fcmp fast olt float %672, 1.000000e+00
  %675 = fcmp fast olt float %673, 1.000000e+00
  %676 = and i1 %674, %675
  %677 = or i1 %667, %676
  br i1 %677, label %678, label %975, !dx.controlflow.hints !64

; <label>:678                                     ; preds = %616
  %679 = fmul fast float %656, 5.000000e-01
  %680 = fmul fast float %655, 5.000000e-01
  %681 = fadd fast float %679, 5.000000e-01
  %682 = fadd fast float %680, 5.000000e-01
  %683 = sitofp i32 %622 to float
  %684 = fsub fast float %650, %683
  %685 = call float @dx.op.unary.f32(i32 27, float %684)  ; Round_ni(value)
  %686 = call float @dx.op.unary.f32(i32 22, float %650)  ; Frc(value)
  %687 = call float @dx.op.unary.f32(i32 22, float %682)  ; Frc(value)
  %688 = call float @dx.op.unary.f32(i32 22, float %681)  ; Frc(value)
  %689 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %27, float %687, float %688, float %685, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %690 = extractvalue %dx.types.ResRet.f32 %689, 0
  %691 = extractvalue %dx.types.ResRet.f32 %689, 1
  %692 = extractvalue %dx.types.ResRet.f32 %689, 2
  %693 = extractvalue %dx.types.ResRet.f32 %689, 3
  %694 = fcmp fast ogt float %686, 0.000000e+00
  br i1 %694, label %695, label %716, !dx.controlflow.hints !65

; <label>:695                                     ; preds = %678
  %696 = fadd fast float %685, 1.000000e+00
  %697 = call float @dx.op.unary.f32(i32 22, float %659)  ; Frc(value)
  %698 = call float @dx.op.unary.f32(i32 22, float %660)  ; Frc(value)
  %699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %27, float %697, float %698, float %696, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %700 = extractvalue %dx.types.ResRet.f32 %699, 0
  %701 = extractvalue %dx.types.ResRet.f32 %699, 1
  %702 = extractvalue %dx.types.ResRet.f32 %699, 2
  %703 = extractvalue %dx.types.ResRet.f32 %699, 3
  %704 = fsub fast float %700, %690
  %705 = fsub fast float %701, %691
  %706 = fsub fast float %702, %692
  %707 = fsub fast float %703, %693
  %708 = fmul fast float %704, %686
  %709 = fmul fast float %705, %686
  %710 = fmul fast float %706, %686
  %711 = fmul fast float %707, %686
  %712 = fadd fast float %708, %690
  %713 = fadd fast float %709, %691
  %714 = fadd fast float %710, %692
  %715 = fadd fast float %711, %693
  br label %716

; <label>:716                                     ; preds = %695, %678
  %717 = phi float [ %712, %695 ], [ %690, %678 ]
  %718 = phi float [ %713, %695 ], [ %691, %678 ]
  %719 = phi float [ %714, %695 ], [ %692, %678 ]
  %720 = phi float [ %715, %695 ], [ %693, %678 ]
  %721 = fadd fast float %717, -5.000000e-01
  %722 = fadd fast float %719, -5.000000e-01
  %723 = fmul fast float %721, 0xBFD5555560000000
  %724 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %722, float %723)  ; FMad(a,b,c)
  %725 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %718, float 0.000000e+00)  ; FMad(a,b,c)
  %726 = fadd fast float %725, %720
  %727 = fmul fast float %721, -7.500000e-01
  %728 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %722, float %727)  ; FMad(a,b,c)
  %729 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %718, float 0.000000e+00)  ; FMad(a,b,c)
  %730 = fadd fast float %729, %720
  %731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.f32 %731, 0
  %733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.f32 %733, 0
  %735 = extractvalue %dx.types.CBufRet.f32 %733, 1
  %736 = extractvalue %dx.types.CBufRet.f32 %733, 2
  %737 = extractvalue %dx.types.CBufRet.f32 %733, 3
  %738 = fsub fast float %734, %724
  %739 = fsub fast float %735, %726
  %740 = fsub fast float %736, %728
  %741 = fsub fast float %737, %730
  %742 = fmul fast float %738, %732
  %743 = fmul fast float %739, %732
  %744 = fmul fast float %740, %732
  %745 = fmul fast float %741, %732
  %746 = fadd fast float %742, %724
  %747 = fadd fast float %743, %726
  %748 = fadd fast float %744, %728
  %749 = fadd fast float %745, %730
  %750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 0
  %752 = and i32 %751, 536870911
  %753 = uitofp i32 %752 to float
  %754 = fmul fast float %753, %600
  %755 = fmul fast float %753, %604
  %756 = fptoui float %754 to i32
  %757 = fptoui float %755 to i32
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = and i32 %759, 31
  %761 = lshr i32 %756, %760
  %762 = lshr i32 %757, %760
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = and i32 %764, 31
  %766 = shl i32 1, %765
  %767 = call i32 @dx.op.binary.i32(i32 40, i32 %766, i32 4)  ; UMin(a,b)
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = extractvalue %dx.types.ResRet.i32 %768, 1
  %771 = icmp eq i32 %767, 0
  br i1 %771, label %813, label %772

; <label>:772                                     ; preds = %716
  br label %773

; <label>:773                                     ; preds = %801, %772
  %774 = phi i32 [ %804, %801 ], [ 0, %772 ]
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = lshr i32 %776, 16
  %778 = and i32 %777, 31
  %779 = shl i32 %762, %778
  %780 = add i32 %779, %761
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = and i32 %782, 31
  %784 = shl i32 %780, %783
  %785 = add i32 %784, %774
  %786 = shl i32 %785, 2
  %787 = add i32 %786, 32
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = icmp slt i32 %789, 0
  %791 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %774
  %792 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %774
  %793 = bitcast float* %791 to i32*
  %794 = bitcast float* %792 to i32*
  br i1 %790, label %795, label %801, !dx.controlflow.hints !66

; <label>:795                                     ; preds = %773
  %796 = and i32 %789, 1073741823
  %797 = add nuw nsw i32 %796, 20
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %797, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = extractvalue %dx.types.ResRet.i32 %798, 1
  br label %801

; <label>:801                                     ; preds = %795, %773
  %802 = phi i32 [ %799, %795 ], [ %769, %773 ]
  %803 = phi i32 [ %800, %795 ], [ %770, %773 ]
  store i32 %802, i32* %793, align 4
  store i32 %803, i32* %794, align 4
  %804 = add nuw i32 %774, 1
  %805 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %806 = extractvalue %dx.types.CBufRet.i32 %805, 2
  %807 = icmp eq i32 %806, 0
  %808 = icmp ugt i32 %789, -1073741825
  %809 = and i1 %808, %807
  %810 = icmp ult i32 %804, %767
  %811 = and i1 %809, %810
  br i1 %811, label %773, label %812, !dx.controlflow.hints !67

; <label>:812                                     ; preds = %801
  br label %813

; <label>:813                                     ; preds = %812, %716
  %814 = phi i32 [ 0, %716 ], [ %804, %812 ]
  %815 = extractvalue %dx.types.CBufRet.f32 %578, 2
  %816 = fptoui float %815 to i32
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %869, label %818

; <label>:818                                     ; preds = %813
  br label %819

; <label>:819                                     ; preds = %864, %818
  %820 = phi i32 [ %865, %864 ], [ %814, %818 ]
  %821 = phi i32 [ %866, %864 ], [ 0, %818 ]
  %822 = lshr i32 %821, 2
  %823 = and i32 %821, 3
  %824 = add nuw nsw i32 %822, 83
  %825 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 %824)  ; CBufferLoadLegacy(handle,regIndex)
  %826 = extractvalue %dx.types.CBufRet.i32 %825, 0
  %827 = extractvalue %dx.types.CBufRet.i32 %825, 1
  %828 = extractvalue %dx.types.CBufRet.i32 %825, 2
  %829 = extractvalue %dx.types.CBufRet.i32 %825, 3
  %830 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 0
  store i32 %826, i32* %830, align 4
  %831 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 1
  store i32 %827, i32* %831, align 4
  %832 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 2
  store i32 %828, i32* %832, align 4
  %833 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 3
  store i32 %829, i32* %833, align 4
  %834 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 %823
  %835 = load i32, i32* %834, align 4, !tbaa !68, !noalias !70
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = lshr i32 %837, 16
  %839 = and i32 %838, 31
  %840 = shl i32 %762, %839
  %841 = add i32 %840, %761
  %842 = shl i32 %841, 2
  %843 = add i32 %842, %835
  %844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %843, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.i32 %844, 0
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %864, label %847, !dx.controlflow.hints !77

; <label>:847                                     ; preds = %819
  %848 = icmp slt i32 %845, 0
  %849 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %820
  %850 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %820
  %851 = bitcast float* %849 to i32*
  %852 = bitcast float* %850 to i32*
  br i1 %848, label %853, label %860, !dx.controlflow.hints !78

; <label>:853                                     ; preds = %847
  %854 = and i32 %845, 1073741823
  %855 = add i32 %835, 20
  %856 = add i32 %855, %854
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = extractvalue %dx.types.ResRet.i32 %857, 1
  br label %860

; <label>:860                                     ; preds = %853, %847
  %861 = phi i32 [ %858, %853 ], [ %769, %847 ]
  %862 = phi i32 [ %859, %853 ], [ %770, %847 ]
  store i32 %861, i32* %851, align 4
  store i32 %862, i32* %852, align 4
  %863 = add i32 %820, 1
  br label %864

; <label>:864                                     ; preds = %860, %819
  %865 = phi i32 [ %820, %819 ], [ %863, %860 ]
  %866 = add nuw i32 %821, 1
  %867 = icmp eq i32 %866, %816
  br i1 %867, label %868, label %819

; <label>:868                                     ; preds = %864
  br label %869

; <label>:869                                     ; preds = %868, %813
  %870 = phi i32 [ %814, %813 ], [ %865, %868 ]
  %871 = icmp eq i32 %870, 1
  %872 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 0
  %873 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 0
  br i1 %871, label %874, label %877, !dx.controlflow.hints !79

; <label>:874                                     ; preds = %869
  %875 = load float, float* %872, align 4
  %876 = load float, float* %873, align 4
  br label %904

; <label>:877                                     ; preds = %869
  %878 = load float, float* %872, align 4
  %879 = load float, float* %873, align 4
  %880 = fdiv fast float 1.000000e+00, %879
  %881 = fsub fast float %878, %880
  %882 = icmp ugt i32 %870, 1
  br i1 %882, label %883, label %899

; <label>:883                                     ; preds = %877
  br label %884

; <label>:884                                     ; preds = %884, %883
  %885 = phi float [ %894, %884 ], [ %881, %883 ]
  %886 = phi float [ %895, %884 ], [ %878, %883 ]
  %887 = phi i32 [ %896, %884 ], [ 1, %883 ]
  %888 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %887
  %889 = load float, float* %888, align 4
  %890 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %887
  %891 = load float, float* %890, align 4
  %892 = fdiv fast float 1.000000e+00, %891
  %893 = fsub fast float %889, %892
  %894 = call float @dx.op.binary.f32(i32 36, float %885, float %893)  ; FMin(a,b)
  %895 = call float @dx.op.binary.f32(i32 35, float %886, float %889)  ; FMax(a,b)
  %896 = add nuw i32 %887, 1
  %897 = icmp eq i32 %896, %870
  br i1 %897, label %898, label %884

; <label>:898                                     ; preds = %884
  br label %899

; <label>:899                                     ; preds = %898, %877
  %900 = phi float [ %881, %877 ], [ %894, %898 ]
  %901 = phi float [ %878, %877 ], [ %895, %898 ]
  %902 = fsub fast float %901, %900
  %903 = fdiv fast float 1.000000e+00, %902
  br label %904

; <label>:904                                     ; preds = %899, %874
  %905 = phi float [ %875, %874 ], [ %901, %899 ]
  %906 = phi float [ %876, %874 ], [ %903, %899 ]
  %907 = fadd fast float %608, %905
  %908 = fmul fast float %907, %906
  %909 = call float @dx.op.unary.f32(i32 7, float %908)  ; Saturate(value)
  %910 = fmul fast float %909, 2.000000e+00
  %911 = fsub fast float 1.000000e+00, %910
  %912 = fmul fast float %746, %746
  %913 = fsub fast float %747, %912
  %914 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %913)  ; FMax(a,b)
  %915 = fdiv fast float 1.000000e+00, %914
  %916 = fmul fast float %747, %746
  %917 = fsub fast float %748, %916
  %918 = fsub fast float %911, %746
  %919 = fmul fast float %911, %911
  %920 = fsub fast float %919, %747
  %921 = fmul fast float %915, %917
  %922 = fmul fast float %921, %918
  %923 = fsub fast float %920, %922
  %924 = fmul fast float %747, %747
  %925 = fsub fast float %749, %924
  %926 = fmul fast float %917, %917
  %927 = fmul fast float %926, %915
  %928 = fsub fast float %925, %927
  %929 = fdiv fast float %923, %928
  %930 = fmul fast float %929, %917
  %931 = fsub fast float %918, %930
  %932 = fmul fast float %931, %915
  %933 = fmul fast float %932, %746
  %934 = fsub fast float 1.000000e+00, %933
  %935 = fmul fast float %929, %747
  %936 = fsub fast float %934, %935
  %937 = fmul fast float %932, %932
  %938 = fmul fast float %929, 4.000000e+00
  %939 = fmul fast float %938, %936
  %940 = fsub fast float %937, %939
  %941 = call float @dx.op.unary.f32(i32 24, float %940)  ; Sqrt(value)
  %942 = fcmp fast oge float %932, 0.000000e+00
  %943 = fsub fast float -0.000000e+00, %941
  %944 = select i1 %942, float %943, float %941
  %945 = fsub fast float %944, %932
  %946 = fdiv fast float %945, %929
  %947 = fdiv fast float %936, %945
  %948 = fmul fast float %946, 5.000000e-01
  %949 = fmul fast float %947, 2.000000e+00
  %950 = select i1 %942, float %948, float %949
  %951 = select i1 %942, float %949, float %948
  %952 = call float @dx.op.binary.f32(i32 35, float %950, float %951)  ; FMax(a,b)
  %953 = call float @dx.op.binary.f32(i32 36, float %950, float %951)  ; FMin(a,b)
  %954 = fcmp fast ogt float %911, %952
  %955 = fsub fast float %911, %953
  %956 = fsub fast float %911, %952
  %957 = fsub fast float %952, %953
  %958 = select i1 %954, float %956, float %957
  %959 = fmul float %955, %958
  %960 = select i1 %954, float %953, float %911
  %961 = fcmp fast ogt float %911, %953
  %962 = fmul fast float %960, %952
  %963 = fadd fast float %960, %952
  %964 = fmul fast float %963, %746
  %965 = fadd fast float %962, %747
  %966 = fsub fast float %965, %964
  %967 = fdiv fast float %966, %959
  %968 = select i1 %961, float %967, float 0.000000e+00
  %969 = fsub fast float 1.000000e+00, %968
  %970 = select i1 %954, float %969, float %968
  %971 = call float @dx.op.unary.f32(i32 7, float %970)  ; Saturate(value)
  %972 = extractvalue %dx.types.CBufRet.f32 %731, 3
  %973 = fmul fast float %972, %971
  %974 = fsub fast float 1.000000e+00, %973
  br label %975

; <label>:975                                     ; preds = %904, %616, %581, %577, %572
  %976 = phi float [ 1.000000e+00, %572 ], [ %974, %904 ], [ 1.000000e+00, %581 ], [ 1.000000e+00, %616 ], [ 1.000000e+00, %577 ]
  %977 = fcmp fast ogt float %573, 0.000000e+00
  br i1 %977, label %978, label %984, !dx.controlflow.hints !80

; <label>:978                                     ; preds = %975
  %979 = fadd fast float %538, %524
  %980 = call float @dx.op.binary.f32(i32 35, float %979, float 0.000000e+00)  ; FMax(a,b)
  %981 = fadd fast float %980, 0x3F10000000000000
  %982 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %29, float %531, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float %981)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %983 = extractvalue %dx.types.ResRet.f32 %982, 0
  br label %984

; <label>:984                                     ; preds = %978, %975
  %985 = phi float [ %983, %978 ], [ 1.000000e+00, %975 ]
  %986 = fsub fast float %985, %976
  %987 = fmul fast float %986, %573
  %988 = fadd fast float %987, %976
  %989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %990 = extractvalue %dx.types.CBufRet.f32 %989, 2
  %991 = fcmp fast ogt float %990, 0.000000e+00
  br i1 %991, label %992, label %1028, !dx.controlflow.hints !81

; <label>:992                                     ; preds = %984
  %993 = fcmp fast ugt float %990, 0.000000e+00
  br i1 %993, label %994, label %1025, !dx.controlflow.hints !82

; <label>:994                                     ; preds = %992
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 0
  %997 = extractvalue %dx.types.CBufRet.f32 %995, 1
  %998 = extractvalue %dx.types.CBufRet.f32 %995, 2
  %999 = extractvalue %dx.types.CBufRet.f32 %995, 3
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.CBufRet.f32 %1000, 1
  %1003 = extractvalue %dx.types.CBufRet.f32 %1000, 2
  %1004 = extractvalue %dx.types.CBufRet.f32 %1000, 3
  %1005 = extractvalue %dx.types.CBufRet.f32 %989, 0
  %1006 = extractvalue %dx.types.CBufRet.f32 %989, 1
  %1007 = fadd fast float %427, %493
  %1008 = fadd fast float %428, %494
  %1009 = fadd fast float %429, %495
  %1010 = fmul fast float %1007, %996
  %1011 = call float @dx.op.tertiary.f32(i32 46, float %997, float %1008, float %1010)  ; FMad(a,b,c)
  %1012 = call float @dx.op.tertiary.f32(i32 46, float %998, float %1009, float %1011)  ; FMad(a,b,c)
  %1013 = fadd fast float %1012, %999
  %1014 = fmul fast float %1007, %1001
  %1015 = call float @dx.op.tertiary.f32(i32 46, float %1002, float %1008, float %1014)  ; FMad(a,b,c)
  %1016 = call float @dx.op.tertiary.f32(i32 46, float %1003, float %1009, float %1015)  ; FMad(a,b,c)
  %1017 = fadd fast float %1016, %1004
  %1018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %25, float %1013, float %1017, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1019 = extractvalue %dx.types.ResRet.f32 %1018, 0
  %1020 = fmul fast float %1019, %1006
  %1021 = fadd fast float %1020, %1005
  %1022 = call float @dx.op.unary.f32(i32 7, float %1021)  ; Saturate(value)
  %1023 = fmul fast float %1022, %990
  %1024 = fsub fast float 1.000000e+00, %1023
  br label %1025

; <label>:1025                                    ; preds = %994, %992
  %1026 = phi float [ %1024, %994 ], [ 1.000000e+00, %992 ]
  %1027 = fmul fast float %1026, %988
  br label %1028

; <label>:1028                                    ; preds = %1025, %984, %480
  %1029 = phi float [ 1.000000e+00, %480 ], [ %1027, %1025 ], [ %988, %984 ]
  %1030 = call float @dx.op.binary.f32(i32 36, float %1029, float %1029)  ; FMin(a,b)
  %1031 = call float @dx.op.binary.f32(i32 36, float %1029, float %1030)  ; FMin(a,b)
  %1032 = fcmp fast ogt float %1031, 0.000000e+00
  br i1 %1032, label %1033, label %1188, !dx.controlflow.hints !83

; <label>:1033                                    ; preds = %1028
  %1034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.CBufRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.CBufRet.f32 %1034, 2
  %1038 = extractvalue %dx.types.CBufRet.f32 %1034, 3
  %1039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.CBufRet.f32 %1039, 1
  %1042 = extractvalue %dx.types.CBufRet.f32 %1039, 2
  %1043 = extractvalue %dx.types.CBufRet.f32 %1039, 3
  %1044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %1045 = extractvalue %dx.types.CBufRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.CBufRet.f32 %1044, 1
  %1047 = extractvalue %dx.types.CBufRet.f32 %1044, 2
  %1048 = extractvalue %dx.types.CBufRet.f32 %1044, 3
  %1049 = fmul fast float %1035, %493
  %1050 = call float @dx.op.tertiary.f32(i32 46, float %494, float %1036, float %1049)  ; FMad(a,b,c)
  %1051 = call float @dx.op.tertiary.f32(i32 46, float %495, float %1037, float %1050)  ; FMad(a,b,c)
  %1052 = fadd fast float %1051, %1038
  %1053 = fmul fast float %1040, %493
  %1054 = call float @dx.op.tertiary.f32(i32 46, float %494, float %1041, float %1053)  ; FMad(a,b,c)
  %1055 = call float @dx.op.tertiary.f32(i32 46, float %495, float %1042, float %1054)  ; FMad(a,b,c)
  %1056 = fadd fast float %1055, %1043
  %1057 = fmul fast float %1045, %493
  %1058 = call float @dx.op.tertiary.f32(i32 46, float %494, float %1046, float %1057)  ; FMad(a,b,c)
  %1059 = call float @dx.op.tertiary.f32(i32 46, float %495, float %1047, float %1058)  ; FMad(a,b,c)
  %1060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %1061 = extractvalue %dx.types.CBufRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.CBufRet.f32 %1060, 1
  %1063 = extractvalue %dx.types.CBufRet.f32 %1060, 3
  %1064 = fmul fast float %1063, %1052
  %1065 = fmul fast float %1063, %1056
  %1066 = fadd fast float %1064, %1061
  %1067 = fadd fast float %1065, %1062
  %1068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.f32 %1068, 0
  %1070 = extractvalue %dx.types.CBufRet.f32 %1068, 1
  %1071 = fsub fast float %1066, %1069
  %1072 = fsub fast float %1067, %1070
  %1073 = fcmp fast olt float %1071, 0.000000e+00
  %1074 = fcmp fast olt float %1072, 0.000000e+00
  %1075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.CBufRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.CBufRet.f32 %1075, 2
  %1079 = extractvalue %dx.types.CBufRet.f32 %1075, 3
  %1080 = select i1 %1073, float %1076, float %1078
  %1081 = select i1 %1074, float %1077, float %1079
  %1082 = fmul fast float %1080, %1071
  %1083 = fmul fast float %1081, %1072
  %1084 = call float @dx.op.unary.f32(i32 6, float %1082)  ; FAbs(value)
  %1085 = call float @dx.op.unary.f32(i32 6, float %1083)  ; FAbs(value)
  %1086 = extractvalue %dx.types.CBufRet.f32 %488, 0
  %1087 = call float @dx.op.binary.f32(i32 35, float %1084, float %1085)  ; FMax(a,b)
  %1088 = fsub fast float %1086, %1087
  %1089 = call float @dx.op.unary.f32(i32 7, float %1088)  ; Saturate(value)
  %1090 = fcmp fast ogt float %1089, 0.000000e+00
  br i1 %1090, label %1091, label %1132, !dx.controlflow.hints !84

; <label>:1091                                    ; preds = %1033
  %1092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %28, float %1066, float %1067, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 1
  %1094 = fcmp fast ogt float %1093, 0.000000e+00
  br i1 %1094, label %1095, label %1127, !dx.controlflow.hints !85

; <label>:1095                                    ; preds = %1091
  %1096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %28, float %1066, float %1067, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1097 = extractvalue %dx.types.ResRet.f32 %1096, 0
  %1098 = extractvalue %dx.types.ResRet.f32 %1096, 1
  %1099 = extractvalue %dx.types.ResRet.f32 %1096, 2
  %1100 = extractvalue %dx.types.ResRet.f32 %1096, 3
  %1101 = fsub fast float 1.000000e+00, %1048
  %1102 = fsub fast float %1101, %1059
  %1103 = fmul fast float %1102, 0x400921FB60000000
  %1104 = fadd fast float %1103, 0x3FF921FB60000000
  %1105 = call float @dx.op.unary.f32(i32 13, float %1104)  ; Sin(value)
  %1106 = fadd fast float %1105, -1.000000e+00
  %1107 = fmul fast float %1106, 0x3FD45F3060000000
  %1108 = fmul fast float %1102, 0x401921FB60000000
  %1109 = fadd fast float %1108, 0x400921FB60000000
  %1110 = call float @dx.op.unary.f32(i32 13, float %1109)  ; Sin(value)
  %1111 = fadd fast float %1110, 0x3E7777A5C0000000
  %1112 = fmul fast float %1111, 0x3FC45F3060000000
  %1113 = fmul fast float %1102, 0x4022D97C80000000
  %1114 = fadd fast float %1113, 0x4012D97C80000000
  %1115 = call float @dx.op.unary.f32(i32 13, float %1114)  ; Sin(value)
  %1116 = fadd fast float %1115, 1.000000e+00
  %1117 = fmul fast float %1116, 0x3FBB2995E0000000
  %1118 = fmul fast float %1102, 0x402921FB60000000
  %1119 = fadd fast float %1118, 0x401921FB60000000
  %1120 = call float @dx.op.unary.f32(i32 13, float %1119)  ; Sin(value)
  %1121 = fadd fast float %1120, 0xBE8777A5C0000000
  %1122 = fmul fast float %1121, 0x3FB45F3060000000
  %1123 = call float @dx.op.dot4.f32(i32 56, float %1097, float %1098, float %1099, float %1100, float %1107, float %1112, float %1117, float %1122)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1124 = fmul fast float %1123, 0xBFF7154760000000
  %1125 = call float @dx.op.unary.f32(i32 21, float %1124)  ; Exp(value)
  %1126 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  br label %1127

; <label>:1127                                    ; preds = %1095, %1091
  %1128 = phi float [ %1126, %1095 ], [ 1.000000e+00, %1091 ]
  %1129 = fadd fast float %1128, -1.000000e+00
  %1130 = fmul fast float %1129, %1089
  %1131 = fadd fast float %1130, 1.000000e+00
  br label %1132

; <label>:1132                                    ; preds = %1127, %1033
  %1133 = phi float [ %1131, %1127 ], [ 1.000000e+00, %1033 ]
  %1134 = fmul fast float %1133, %1029
  %1135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %1136 = extractvalue %dx.types.CBufRet.f32 %1135, 1
  %1137 = fsub fast float -0.000000e+00, %188
  %1138 = fsub fast float -0.000000e+00, %189
  %1139 = fsub fast float -0.000000e+00, %432
  %1140 = fsub fast float %1139, %429
  %1141 = fadd fast float %1140, %1136
  %1142 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1137, float %1138, float %1141)  ; Dot3(ax,ay,az,bx,by,bz)
  %1143 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %481, float %482, float %483)  ; Dot3(ax,ay,az,bx,by,bz)
  %1144 = fdiv fast float 1.000000e+00, %1143
  %1145 = fmul fast float %1144, %1142
  %1146 = fmul fast float %481, %1145
  %1147 = fmul fast float %482, %1145
  %1148 = fadd fast float %1146, %188
  %1149 = fadd fast float %1147, %189
  %1150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %1151 = extractvalue %dx.types.CBufRet.f32 %1150, 0
  %1152 = extractvalue %dx.types.CBufRet.f32 %1150, 1
  %1153 = fsub fast float %1148, %1151
  %1154 = fsub fast float %1149, %1152
  %1155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.f32 %1155, 2
  %1157 = extractvalue %dx.types.CBufRet.f32 %1155, 3
  %1158 = fmul fast float %1153, %1156
  %1159 = fmul fast float %1154, %1157
  %1160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1161 = extractvalue %dx.types.CBufRet.i32 %1160, 3
  %1162 = icmp eq i32 %1161, 0
  br i1 %1162, label %1168, label %1163, !dx.controlflow.hints !86

; <label>:1163                                    ; preds = %1132
  %1164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %27, float %1158, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  %1166 = extractvalue %dx.types.ResRet.f32 %1164, 1
  %1167 = extractvalue %dx.types.ResRet.f32 %1164, 2
  br label %1173

; <label>:1168                                    ; preds = %1132
  %1169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %28, float %1158, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1170 = extractvalue %dx.types.ResRet.f32 %1169, 0
  %1171 = extractvalue %dx.types.ResRet.f32 %1169, 1
  %1172 = extractvalue %dx.types.ResRet.f32 %1169, 2
  br label %1173

; <label>:1173                                    ; preds = %1168, %1163
  %1174 = phi float [ %1165, %1163 ], [ %1170, %1168 ]
  %1175 = phi float [ %1166, %1163 ], [ %1171, %1168 ]
  %1176 = phi float [ %1167, %1163 ], [ %1172, %1168 ]
  %1177 = extractvalue %dx.types.CBufRet.f32 %1135, 2
  %1178 = fmul fast float %1177, %1174
  %1179 = extractvalue %dx.types.CBufRet.f32 %1135, 0
  %1180 = fsub fast float %1145, %1179
  %1181 = fsub fast float %1180, %1178
  %1182 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1181)  ; FMax(a,b)
  %1183 = fmul fast float %1182, %1175
  %1184 = call float @dx.op.binary.f32(i32 36, float %1176, float %1183)  ; FMin(a,b)
  %1185 = fmul fast float %1184, 0xBFF7154760000000
  %1186 = call float @dx.op.unary.f32(i32 21, float %1185)  ; Exp(value)
  %1187 = fmul fast float %1134, %1186
  br label %1188

; <label>:1188                                    ; preds = %1173, %1028
  %1189 = phi float [ %1187, %1173 ], [ %1029, %1028 ]
  %1190 = call float @dx.op.binary.f32(i32 36, float %1189, float %1189)  ; FMin(a,b)
  %1191 = call float @dx.op.binary.f32(i32 36, float %1189, float %1190)  ; FMin(a,b)
  %1192 = fcmp fast ogt float %1191, 0.000000e+00
  br i1 %1192, label %1193, label %1602, !dx.controlflow.hints !87

; <label>:1193                                    ; preds = %1188
  br i1 %231, label %1194, label %1575, !dx.controlflow.hints !88

; <label>:1194                                    ; preds = %1193
  %1195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.i32 %1195, 0
  %1197 = and i32 %1196, 64
  %1198 = icmp ne i32 %1197, 0
  %1199 = fsub fast float %190, %220
  %1200 = fcmp fast ule float %1199, 0.000000e+00
  %1201 = fmul fast float %481, 5.120000e+02
  %1202 = fmul fast float %482, 5.120000e+02
  %1203 = fmul fast float %483, 5.120000e+02
  %1204 = fadd fast float %1203, %432
  %1205 = fsub fast float %476, %1204
  %1206 = fmul fast float %1205, 2.000000e+00
  %1207 = fadd fast float %1206, %1204
  %1208 = select i1 %1200, float %1204, float %1207
  %1209 = fsub fast float %1208, %432
  %1210 = call float @dx.op.dot3.f32(i32 55, float %1201, float %1202, float %1209, float %1201, float %1202, float %1209)  ; Dot3(ax,ay,az,bx,by,bz)
  %1211 = call float @dx.op.unary.f32(i32 25, float %1210)  ; Rsqrt(value)
  %1212 = fmul fast float %1211, %1201
  %1213 = fmul fast float %1211, %1202
  %1214 = fmul fast float %1211, %1209
  %1215 = fsub fast float %220, %190
  %1216 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1215)  ; Dot3(ax,ay,az,bx,by,bz)
  %1217 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1212, float %1213, float %1214)  ; Dot3(ax,ay,az,bx,by,bz)
  %1218 = fdiv fast float 1.000000e+00, %1217
  %1219 = fmul fast float %1218, %1216
  %1220 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %1199, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1221 = fcmp fast ogt float %1220, 0.000000e+00
  %1222 = fcmp fast olt float %1220, 0.000000e+00
  %1223 = zext i1 %1221 to i32
  %1224 = zext i1 %1222 to i32
  %1225 = sub nsw i32 %1223, %1224
  %1226 = sitofp i32 %1225 to float
  %1227 = fsub fast float %1208, %476
  %1228 = call float @dx.op.dot3.f32(i32 55, float %1201, float %1202, float %1227, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1229 = fcmp fast ogt float %1228, 0.000000e+00
  %1230 = fcmp fast olt float %1228, 0.000000e+00
  %1231 = zext i1 %1229 to i32
  %1232 = zext i1 %1230 to i32
  %1233 = sub nsw i32 %1231, %1232
  %1234 = sitofp i32 %1233 to float
  %1235 = fcmp fast une float %1226, %1234
  br i1 %1235, label %1236, label %1246, !dx.controlflow.hints !89

; <label>:1236                                    ; preds = %1194
  %1237 = fmul fast float %1219, %1214
  %1238 = fmul fast float %1219, %1213
  %1239 = fmul fast float %1219, %1212
  %1240 = fmul fast float %1239, %1239
  %1241 = fmul fast float %1238, %1238
  %1242 = fadd fast float %1240, %1241
  %1243 = fmul fast float %1237, %1237
  %1244 = fadd fast float %1242, %1243
  %1245 = call float @dx.op.unary.f32(i32 24, float %1244)  ; Sqrt(value)
  br label %1256

; <label>:1246                                    ; preds = %1194
  %1247 = icmp slt i32 %1225, 0
  br i1 %1247, label %1248, label %1256, !dx.controlflow.hints !90

; <label>:1248                                    ; preds = %1246
  %1249 = fsub fast float %432, %1208
  %1250 = fmul fast float %1201, %1201
  %1251 = fmul fast float %1202, %1202
  %1252 = fadd fast float %1250, %1251
  %1253 = fmul fast float %1249, %1249
  %1254 = fadd fast float %1252, %1253
  %1255 = call float @dx.op.unary.f32(i32 24, float %1254)  ; Sqrt(value)
  br label %1256

; <label>:1256                                    ; preds = %1248, %1246, %1236
  %1257 = phi float [ %1245, %1236 ], [ %1255, %1248 ], [ 0.000000e+00, %1246 ]
  %1258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.i32 %1258, 1
  %1260 = icmp ne i32 %1259, 0
  %1261 = and i1 %1200, %1260
  %1262 = call float @dx.op.dot3.f32(i32 55, float %1212, float %1213, float %1214, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1263 = fmul fast float %1262, %1262
  %1264 = fsub fast float 1.000000e+00, %1263
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 0
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 0
  %1269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1270 = extractvalue %dx.types.CBufRet.f32 %1269, 0
  %1271 = extractvalue %dx.types.CBufRet.f32 %1265, 1
  %1272 = extractvalue %dx.types.CBufRet.f32 %1267, 1
  %1273 = extractvalue %dx.types.CBufRet.f32 %1269, 1
  %1274 = extractvalue %dx.types.CBufRet.f32 %1265, 3
  %1275 = extractvalue %dx.types.CBufRet.f32 %1267, 3
  %1276 = extractvalue %dx.types.CBufRet.f32 %1269, 3
  %1277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %1278 = extractvalue %dx.types.CBufRet.f32 %1277, 0
  %1279 = extractvalue %dx.types.CBufRet.f32 %1277, 1
  %1280 = extractvalue %dx.types.CBufRet.f32 %1277, 2
  %1281 = extractvalue %dx.types.CBufRet.f32 %1277, 3
  br i1 %1261, label %1282, label %1475, !dx.controlflow.hints !91

; <label>:1282                                    ; preds = %1256
  %1283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %1284 = extractvalue %dx.types.CBufRet.f32 %1283, 0
  %1285 = fmul fast float %1284, %1284
  %1286 = fmul fast float %1285, %1264
  %1287 = fsub fast float 1.000000e+00, %1286
  %1288 = fcmp fast oge float %1287, 0.000000e+00
  %1289 = fmul fast float %1284, %1212
  %1290 = fmul fast float %1284, %1213
  %1291 = fmul fast float %1284, %1214
  %1292 = call float @dx.op.unary.f32(i32 24, float %1287)  ; Sqrt(value)
  %1293 = fmul fast float %1284, %1262
  %1294 = fsub fast float -0.000000e+00, %1292
  %1295 = fsub fast float %1294, %1293
  %1296 = fadd fast float %1295, %1291
  %1297 = select i1 %1288, float %1289, float 0.000000e+00
  %1298 = select i1 %1288, float %1290, float 0.000000e+00
  %1299 = select i1 %1288, float %1296, float 0.000000e+00
  %1300 = fmul fast float %1297, %1257
  %1301 = fmul fast float %1298, %1257
  %1302 = fmul fast float %1299, %1257
  %1303 = fadd fast float %188, %1300
  %1304 = fadd fast float %1303, %1274
  %1305 = fadd fast float %189, %1301
  %1306 = fadd fast float %1305, %1275
  %1307 = fadd fast float %190, %1302
  %1308 = fadd fast float %1307, %1276
  %1309 = fmul fast float %1304, %1266
  %1310 = call float @dx.op.tertiary.f32(i32 46, float %1306, float %1268, float %1309)  ; FMad(a,b,c)
  %1311 = call float @dx.op.tertiary.f32(i32 46, float %1308, float %1270, float %1310)  ; FMad(a,b,c)
  %1312 = fmul fast float %1304, %1271
  %1313 = call float @dx.op.tertiary.f32(i32 46, float %1306, float %1272, float %1312)  ; FMad(a,b,c)
  %1314 = call float @dx.op.tertiary.f32(i32 46, float %1308, float %1273, float %1313)  ; FMad(a,b,c)
  %1315 = fsub fast float %1311, %1274
  %1316 = fsub fast float %1315, %1278
  %1317 = fadd fast float %1316, %1280
  %1318 = fsub fast float %1314, %1275
  %1319 = fsub fast float %1318, %1279
  %1320 = fadd fast float %1319, %1280
  %1321 = fmul fast float %1317, %1281
  %1322 = fmul fast float %1320, %1281
  %1323 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1324 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  %1325 = fsub fast float 1.000000e+00, %1323
  %1326 = fsub fast float 1.000000e+00, %1324
  %1327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %28, float %1325, float %1326, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1328 = extractvalue %dx.types.ResRet.f32 %1327, 0
  %1329 = fmul fast float %1328, 0x3FBC5ABC00000000
  %1330 = extractvalue %dx.types.CBufRet.f32 %1283, 1
  %1331 = fmul fast float %1330, %1330
  %1332 = fmul fast float %1331, %1264
  %1333 = fsub fast float 1.000000e+00, %1332
  %1334 = fcmp fast oge float %1333, 0.000000e+00
  %1335 = fmul fast float %1330, %1212
  %1336 = fmul fast float %1330, %1213
  %1337 = fmul fast float %1330, %1214
  %1338 = call float @dx.op.unary.f32(i32 24, float %1333)  ; Sqrt(value)
  %1339 = fmul fast float %1330, %1262
  %1340 = fsub fast float -0.000000e+00, %1338
  %1341 = fsub fast float %1340, %1339
  %1342 = fadd fast float %1341, %1337
  %1343 = select i1 %1334, float %1335, float 0.000000e+00
  %1344 = select i1 %1334, float %1336, float 0.000000e+00
  %1345 = select i1 %1334, float %1342, float 0.000000e+00
  %1346 = fmul fast float %1343, %1257
  %1347 = fmul fast float %1344, %1257
  %1348 = fmul fast float %1345, %1257
  %1349 = fadd fast float %188, %1346
  %1350 = fadd fast float %1349, %1274
  %1351 = fadd fast float %189, %1347
  %1352 = fadd fast float %1351, %1275
  %1353 = fadd fast float %190, %1348
  %1354 = fadd fast float %1353, %1276
  %1355 = fmul fast float %1350, %1266
  %1356 = call float @dx.op.tertiary.f32(i32 46, float %1352, float %1268, float %1355)  ; FMad(a,b,c)
  %1357 = call float @dx.op.tertiary.f32(i32 46, float %1354, float %1270, float %1356)  ; FMad(a,b,c)
  %1358 = fmul fast float %1350, %1271
  %1359 = call float @dx.op.tertiary.f32(i32 46, float %1352, float %1272, float %1358)  ; FMad(a,b,c)
  %1360 = call float @dx.op.tertiary.f32(i32 46, float %1354, float %1273, float %1359)  ; FMad(a,b,c)
  %1361 = fsub fast float %1357, %1274
  %1362 = fsub fast float %1361, %1278
  %1363 = fadd fast float %1362, %1280
  %1364 = fsub fast float %1360, %1275
  %1365 = fsub fast float %1364, %1279
  %1366 = fadd fast float %1365, %1280
  %1367 = fmul fast float %1363, %1281
  %1368 = fmul fast float %1366, %1281
  %1369 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  %1370 = call float @dx.op.unary.f32(i32 7, float %1368)  ; Saturate(value)
  %1371 = fsub fast float 1.000000e+00, %1369
  %1372 = fsub fast float 1.000000e+00, %1370
  %1373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %28, float %1371, float %1372, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1374 = extractvalue %dx.types.ResRet.f32 %1373, 0
  %1375 = fmul fast float %1374, 0x3F9E4BBD60000000
  %1376 = extractvalue %dx.types.CBufRet.f32 %1283, 2
  %1377 = fmul fast float %1376, %1376
  %1378 = fmul fast float %1377, %1264
  %1379 = fsub fast float 1.000000e+00, %1378
  %1380 = fcmp fast oge float %1379, 0.000000e+00
  %1381 = fmul fast float %1376, %1212
  %1382 = fmul fast float %1376, %1213
  %1383 = fmul fast float %1376, %1214
  %1384 = call float @dx.op.unary.f32(i32 24, float %1379)  ; Sqrt(value)
  %1385 = fmul fast float %1376, %1262
  %1386 = fsub fast float -0.000000e+00, %1384
  %1387 = fsub fast float %1386, %1385
  %1388 = fadd fast float %1387, %1383
  %1389 = select i1 %1380, float %1381, float 0.000000e+00
  %1390 = select i1 %1380, float %1382, float 0.000000e+00
  %1391 = select i1 %1380, float %1388, float 0.000000e+00
  %1392 = fmul fast float %1389, %1257
  %1393 = fmul fast float %1390, %1257
  %1394 = fmul fast float %1391, %1257
  %1395 = fadd fast float %188, %1392
  %1396 = fadd fast float %1395, %1274
  %1397 = fadd fast float %189, %1393
  %1398 = fadd fast float %1397, %1275
  %1399 = fadd fast float %190, %1394
  %1400 = fadd fast float %1399, %1276
  %1401 = fmul fast float %1396, %1266
  %1402 = call float @dx.op.tertiary.f32(i32 46, float %1398, float %1268, float %1401)  ; FMad(a,b,c)
  %1403 = call float @dx.op.tertiary.f32(i32 46, float %1400, float %1270, float %1402)  ; FMad(a,b,c)
  %1404 = fmul fast float %1396, %1271
  %1405 = call float @dx.op.tertiary.f32(i32 46, float %1398, float %1272, float %1404)  ; FMad(a,b,c)
  %1406 = call float @dx.op.tertiary.f32(i32 46, float %1400, float %1273, float %1405)  ; FMad(a,b,c)
  %1407 = fsub fast float %1403, %1274
  %1408 = fsub fast float %1407, %1278
  %1409 = fadd fast float %1408, %1280
  %1410 = fsub fast float %1406, %1275
  %1411 = fsub fast float %1410, %1279
  %1412 = fadd fast float %1411, %1280
  %1413 = fmul fast float %1409, %1281
  %1414 = fmul fast float %1412, %1281
  %1415 = call float @dx.op.unary.f32(i32 7, float %1413)  ; Saturate(value)
  %1416 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  %1417 = fsub fast float 1.000000e+00, %1415
  %1418 = fsub fast float 1.000000e+00, %1416
  %1419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %28, float %1417, float %1418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1420 = extractvalue %dx.types.ResRet.f32 %1419, 0
  %1421 = fmul fast float %1420, 0x3FDDEACB00000000
  %1422 = fadd fast float %1421, %1375
  %1423 = extractvalue %dx.types.CBufRet.f32 %1283, 3
  %1424 = fmul fast float %1423, %1423
  %1425 = fmul fast float %1424, %1264
  %1426 = fsub fast float 1.000000e+00, %1425
  %1427 = fcmp fast oge float %1426, 0.000000e+00
  %1428 = fmul fast float %1423, %1212
  %1429 = fmul fast float %1423, %1213
  %1430 = fmul fast float %1423, %1214
  %1431 = call float @dx.op.unary.f32(i32 24, float %1426)  ; Sqrt(value)
  %1432 = fmul fast float %1423, %1262
  %1433 = fsub fast float -0.000000e+00, %1431
  %1434 = fsub fast float %1433, %1432
  %1435 = fadd fast float %1434, %1430
  %1436 = select i1 %1427, float %1428, float 0.000000e+00
  %1437 = select i1 %1427, float %1429, float 0.000000e+00
  %1438 = select i1 %1427, float %1435, float 0.000000e+00
  %1439 = fmul fast float %1436, %1257
  %1440 = fmul fast float %1437, %1257
  %1441 = fmul fast float %1438, %1257
  %1442 = fadd fast float %188, %1439
  %1443 = fadd fast float %1442, %1274
  %1444 = fadd fast float %189, %1440
  %1445 = fadd fast float %1444, %1275
  %1446 = fadd fast float %190, %1441
  %1447 = fadd fast float %1446, %1276
  %1448 = fmul fast float %1443, %1266
  %1449 = call float @dx.op.tertiary.f32(i32 46, float %1445, float %1268, float %1448)  ; FMad(a,b,c)
  %1450 = call float @dx.op.tertiary.f32(i32 46, float %1447, float %1270, float %1449)  ; FMad(a,b,c)
  %1451 = fmul fast float %1443, %1271
  %1452 = call float @dx.op.tertiary.f32(i32 46, float %1445, float %1272, float %1451)  ; FMad(a,b,c)
  %1453 = call float @dx.op.tertiary.f32(i32 46, float %1447, float %1273, float %1452)  ; FMad(a,b,c)
  %1454 = fsub fast float %1450, %1274
  %1455 = fsub fast float %1454, %1278
  %1456 = fadd fast float %1455, %1280
  %1457 = fsub fast float %1453, %1275
  %1458 = fsub fast float %1457, %1279
  %1459 = fadd fast float %1458, %1280
  %1460 = fmul fast float %1456, %1281
  %1461 = fmul fast float %1459, %1281
  %1462 = call float @dx.op.unary.f32(i32 7, float %1460)  ; Saturate(value)
  %1463 = call float @dx.op.unary.f32(i32 7, float %1461)  ; Saturate(value)
  %1464 = fsub fast float 1.000000e+00, %1462
  %1465 = fsub fast float 1.000000e+00, %1463
  %1466 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %28, float %1464, float %1465, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1467 = extractvalue %dx.types.ResRet.f32 %1466, 0
  %1468 = fmul fast float %1467, 0x3FE0183CA0000000
  %1469 = fmul fast float %1467, 0x3FB51033E0000000
  %1470 = fadd fast float %1422, %1468
  %1471 = fadd fast float %1420, %1374
  %1472 = fmul fast float %1471, 0x3FD9D2A200000000
  %1473 = fadd fast float %1469, %1329
  %1474 = fadd fast float %1473, %1472
  br label %1521

; <label>:1475                                    ; preds = %1256
  %1476 = fmul fast float %1264, 0x3FE2024E20000000
  %1477 = fsub fast float 1.000000e+00, %1476
  %1478 = fcmp fast oge float %1477, 0.000000e+00
  %1479 = fmul fast float %1212, 0x3FE8018960000000
  %1480 = fmul fast float %1213, 0x3FE8018960000000
  %1481 = fmul fast float %1214, 0x3FE8018960000000
  %1482 = call float @dx.op.unary.f32(i32 24, float %1477)  ; Sqrt(value)
  %1483 = fmul fast float %1262, 0x3FE8018960000000
  %1484 = fsub fast float %1481, %1482
  %1485 = fsub fast float %1484, %1483
  %1486 = select i1 %1478, float %1479, float 0.000000e+00
  %1487 = select i1 %1478, float %1480, float 0.000000e+00
  %1488 = select i1 %1478, float %1485, float 0.000000e+00
  %1489 = select i1 %1200, float %1486, float %1212
  %1490 = select i1 %1200, float %1487, float %1213
  %1491 = select i1 %1200, float %1488, float %1214
  %1492 = fmul fast float %1489, %1257
  %1493 = fmul fast float %1490, %1257
  %1494 = fmul fast float %1491, %1257
  %1495 = fadd fast float %188, %1492
  %1496 = fadd fast float %1495, %1274
  %1497 = fadd fast float %189, %1493
  %1498 = fadd fast float %1497, %1275
  %1499 = fadd fast float %190, %1494
  %1500 = fadd fast float %1499, %1276
  %1501 = fmul fast float %1496, %1266
  %1502 = call float @dx.op.tertiary.f32(i32 46, float %1498, float %1268, float %1501)  ; FMad(a,b,c)
  %1503 = call float @dx.op.tertiary.f32(i32 46, float %1500, float %1270, float %1502)  ; FMad(a,b,c)
  %1504 = fmul fast float %1496, %1271
  %1505 = call float @dx.op.tertiary.f32(i32 46, float %1498, float %1272, float %1504)  ; FMad(a,b,c)
  %1506 = call float @dx.op.tertiary.f32(i32 46, float %1500, float %1273, float %1505)  ; FMad(a,b,c)
  %1507 = fsub fast float %1503, %1274
  %1508 = fsub fast float %1507, %1278
  %1509 = fadd fast float %1508, %1280
  %1510 = fsub fast float %1506, %1275
  %1511 = fsub fast float %1510, %1279
  %1512 = fadd fast float %1511, %1280
  %1513 = fmul fast float %1509, %1281
  %1514 = fmul fast float %1512, %1281
  %1515 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  %1516 = call float @dx.op.unary.f32(i32 7, float %1514)  ; Saturate(value)
  %1517 = fsub fast float 1.000000e+00, %1515
  %1518 = fsub fast float 1.000000e+00, %1516
  %1519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %28, float %1517, float %1518, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1520 = extractvalue %dx.types.ResRet.f32 %1519, 0
  br label %1521

; <label>:1521                                    ; preds = %1475, %1282
  %1522 = phi float [ %1520, %1475 ], [ %1470, %1282 ]
  %1523 = phi float [ %1520, %1475 ], [ %1474, %1282 ]
  %1524 = phi float [ %1520, %1475 ], [ %1328, %1282 ]
  %1525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.f32 %1525, 0
  %1527 = call float @dx.op.unary.f32(i32 6, float %1526)  ; FAbs(value)
  %1528 = fmul fast float %1257, %1257
  %1529 = fadd fast float %1528, 1.000000e+00
  %1530 = fdiv fast float %1527, %1529
  %1531 = call float @dx.op.unary.f32(i32 7, float %1530)  ; Saturate(value)
  %1532 = call float @dx.op.unary.f32(i32 6, float %1262)  ; FAbs(value)
  %1533 = fsub fast float 1.000000e+00, %1532
  %1534 = bitcast float %1533 to i32
  %1535 = sitofp i32 %1534 to float
  %1536 = fptosi float %1535 to i32
  %1537 = bitcast i32 %1536 to float
  %1538 = fmul fast float %1537, 0x3FEF333340000000
  %1539 = fadd fast float %1538, 0x3F999999A0000000
  %1540 = call float @dx.op.unary.f32(i32 7, float %1539)  ; Saturate(value)
  %1541 = fsub fast float 1.000000e+00, %1540
  %1542 = fadd fast float %1522, 1.000000e+00
  %1543 = fadd fast float %1523, 1.000000e+00
  %1544 = fadd fast float %1524, 1.000000e+00
  %1545 = fmul fast float %1541, %1542
  %1546 = fmul fast float %1541, %1543
  %1547 = fmul fast float %1541, %1544
  %1548 = fmul fast float %1531, %1542
  %1549 = fmul fast float %1548, %1540
  %1550 = fmul fast float %1531, %1543
  %1551 = fmul fast float %1550, %1540
  %1552 = fmul fast float %1531, %1544
  %1553 = fmul fast float %1552, %1540
  %1554 = fadd fast float %1549, 1.000000e+00
  %1555 = fadd fast float %1551, 1.000000e+00
  %1556 = fadd fast float %1553, 1.000000e+00
  %1557 = call float @dx.op.unary.f32(i32 6, float %1199)  ; FAbs(value)
  %1558 = call float @dx.op.unary.f32(i32 7, float %1557)  ; Saturate(value)
  %1559 = select i1 %1200, float %1545, float %1554
  %1560 = select i1 %1200, float %1546, float %1555
  %1561 = select i1 %1200, float %1547, float %1556
  %1562 = select i1 %1198, float %1558, float 0.000000e+00
  %1563 = fadd fast float %1559, -1.000000e+00
  %1564 = fadd fast float %1560, -1.000000e+00
  %1565 = fadd fast float %1561, -1.000000e+00
  %1566 = fmul fast float %1563, %1562
  %1567 = fmul fast float %1564, %1562
  %1568 = fmul fast float %1565, %1562
  %1569 = fadd fast float %1566, 1.000000e+00
  %1570 = fadd fast float %1567, 1.000000e+00
  %1571 = fadd fast float %1568, 1.000000e+00
  %1572 = fmul fast float %1569, %485
  %1573 = fmul fast float %1570, %486
  %1574 = fmul fast float %1571, %487
  br label %1575

; <label>:1575                                    ; preds = %1521, %1193
  %1576 = phi float [ %1572, %1521 ], [ %485, %1193 ]
  %1577 = phi float [ %1573, %1521 ], [ %486, %1193 ]
  %1578 = phi float [ %1574, %1521 ], [ %487, %1193 ]
  %1579 = call float @dx.op.dot3.f32(i32 55, float %481, float %482, float %483, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %1580 = fcmp fast ogt float %341, 0.000000e+00
  %1581 = select i1 %1580, float 1.000000e+00, float -1.000000e+00
  %1582 = fmul fast float %112, 7.812500e-03
  %1583 = fmul fast float %112, 3.125000e-02
  %1584 = fadd fast float %1583, -3.125000e-02
  %1585 = fmul fast float %1581, 5.000000e-01
  %1586 = fmul fast float %1585, %1579
  %1587 = fmul fast float %1581, %341
  %1588 = fadd fast float %1582, 4.921875e-01
  %1589 = fadd fast float %1588, %1586
  %1590 = fadd fast float %1582, 0x3FB25F3060000000
  %1591 = fadd fast float %1584, %1587
  %1592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %28, float %1589, float %1590, float %1591, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1593 = extractvalue %dx.types.ResRet.f32 %1592, 0
  %1594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1595 = extractvalue %dx.types.CBufRet.f32 %1594, 0
  %1596 = fmul fast float %1189, 0x400921FB60000000
  %1597 = fmul fast float %1596, %1593
  %1598 = fmul fast float %1597, %1595
  %1599 = fmul fast float %1598, %1576
  %1600 = fmul fast float %1598, %1577
  %1601 = fmul fast float %1598, %1578
  br label %1602

; <label>:1602                                    ; preds = %1575, %1188, %334
  %1603 = phi float [ %1599, %1575 ], [ 0.000000e+00, %334 ], [ 0.000000e+00, %1188 ]
  %1604 = phi float [ %1600, %1575 ], [ 0.000000e+00, %334 ], [ 0.000000e+00, %1188 ]
  %1605 = phi float [ %1601, %1575 ], [ 0.000000e+00, %334 ], [ 0.000000e+00, %1188 ]
  %1606 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1607 = extractvalue %dx.types.CBufRet.i32 %1606, 0
  %1608 = icmp eq i32 %1607, 0
  br i1 %1608, label %2616, label %1609, !dx.controlflow.hints !92

; <label>:1609                                    ; preds = %1602
  %1610 = add nsw i32 %1607, -1
  %1611 = call i32 @dx.op.binary.i32(i32 37, i32 %1610, i32 0)  ; IMax(a,b)
  br label %1612

; <label>:1612                                    ; preds = %2609, %1609
  %1613 = phi i32 [ 0, %1609 ], [ %2613, %2609 ]
  %1614 = phi float [ %1603, %1609 ], [ %2610, %2609 ]
  %1615 = phi float [ %1604, %1609 ], [ %2611, %2609 ]
  %1616 = phi float [ %1605, %1609 ], [ %2612, %2609 ]
  %1617 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.i32 %1617, 0
  %1619 = call i32 @dx.op.tertiary.i32(i32 49, i32 %346, i32 %1618, i32 %1613)  ; UMad(a,b,c)
  %1620 = shl i32 %1619, 2
  %1621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1620, i32 undef)  ; BufferLoad(srv,index,wot)
  %1622 = extractvalue %dx.types.ResRet.i32 %1621, 0
  %1623 = icmp eq i32 %1622, 0
  br i1 %1623, label %2609, label %1624

; <label>:1624                                    ; preds = %1612
  br label %1625

; <label>:1625                                    ; preds = %2064, %1624
  %1626 = phi i32 [ %1635, %2064 ], [ %1622, %1624 ]
  %1627 = phi float [ %2065, %2064 ], [ %1614, %1624 ]
  %1628 = phi float [ %2066, %2064 ], [ %1615, %1624 ]
  %1629 = phi float [ %2067, %2064 ], [ %1616, %1624 ]
  %1630 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1626)  ; FirstbitLo(value)
  %1631 = shl i32 %1613, 5
  %1632 = add i32 %1630, %1631
  %1633 = and i32 %1630, 31
  %1634 = shl i32 1, %1633
  %1635 = xor i32 %1634, %1626
  %1636 = mul i32 %1632, 112
  %1637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1636, i32 undef)  ; BufferLoad(srv,index,wot)
  %1638 = extractvalue %dx.types.ResRet.f32 %1637, 0
  %1639 = extractvalue %dx.types.ResRet.f32 %1637, 1
  %1640 = extractvalue %dx.types.ResRet.f32 %1637, 2
  %1641 = or i32 %1636, 12
  %1642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1641, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.f32 %1642, 0
  %1644 = add i32 %1636, 16
  %1645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1644, i32 undef)  ; BufferLoad(srv,index,wot)
  %1646 = extractvalue %dx.types.ResRet.f32 %1645, 0
  %1647 = extractvalue %dx.types.ResRet.f32 %1645, 1
  %1648 = extractvalue %dx.types.ResRet.f32 %1645, 2
  %1649 = add i32 %1636, 28
  %1650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1649, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.i32 %1650, 0
  %1652 = add i32 %1636, 32
  %1653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1654 = extractvalue %dx.types.ResRet.f32 %1653, 0
  %1655 = extractvalue %dx.types.ResRet.f32 %1653, 1
  %1656 = extractvalue %dx.types.ResRet.f32 %1653, 2
  %1657 = add i32 %1636, 44
  %1658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1659 = extractvalue %dx.types.ResRet.f32 %1658, 0
  %1660 = add i32 %1636, 48
  %1661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1660, i32 undef)  ; BufferLoad(srv,index,wot)
  %1662 = extractvalue %dx.types.ResRet.f32 %1661, 0
  %1663 = extractvalue %dx.types.ResRet.f32 %1661, 1
  %1664 = extractvalue %dx.types.ResRet.f32 %1661, 2
  %1665 = extractvalue %dx.types.ResRet.f32 %1661, 3
  %1666 = add i32 %1636, 64
  %1667 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.f32 %1667, 0
  %1669 = extractvalue %dx.types.ResRet.f32 %1667, 1
  %1670 = extractvalue %dx.types.ResRet.f32 %1667, 2
  %1671 = extractvalue %dx.types.ResRet.f32 %1667, 3
  %1672 = add i32 %1636, 92
  %1673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.i32 %1673, 0
  %1675 = and i32 %1674, 65535
  %1676 = uitofp i32 %1675 to float
  %1677 = lshr i32 %1674, 16
  %1678 = uitofp i32 %1677 to float
  %1679 = and i32 %1651, 65535
  %1680 = and i32 %1651, 50331648
  %1681 = icmp eq i32 %1680, 33554432
  %1682 = fdiv fast float 1.000000e+00, %472
  br i1 %1681, label %1683, label %1875, !dx.controlflow.hints !93

; <label>:1683                                    ; preds = %1625
  %1684 = fsub fast float %1662, %1654
  %1685 = fsub fast float %1663, %1655
  %1686 = fsub fast float %1664, %1656
  %1687 = fmul fast float %473, %472
  %1688 = fmul fast float %474, %472
  %1689 = fmul fast float %475, %472
  %1690 = fadd fast float %1687, %455
  %1691 = fadd fast float %1688, %456
  %1692 = fadd fast float %1689, %457
  %1693 = fmul fast float %1654, 2.000000e+00
  %1694 = fmul fast float %1655, 2.000000e+00
  %1695 = fmul fast float %1656, 2.000000e+00
  %1696 = call float @dx.op.dot3.f32(i32 55, float %1693, float %1694, float %1695, float %1693, float %1694, float %1695)  ; Dot3(ax,ay,az,bx,by,bz)
  %1697 = fdiv fast float %1693, %1696
  %1698 = fdiv fast float %1694, %1696
  %1699 = fdiv fast float %1695, %1696
  %1700 = fsub fast float %455, %1684
  %1701 = fsub fast float %456, %1685
  %1702 = fsub fast float %457, %1686
  %1703 = call float @dx.op.dot3.f32(i32 55, float %1700, float %1701, float %1702, float %1693, float %1694, float %1695)  ; Dot3(ax,ay,az,bx,by,bz)
  %1704 = fmul fast float %1703, %1697
  %1705 = fmul fast float %1703, %1698
  %1706 = fmul fast float %1703, %1699
  %1707 = fsub fast float %455, %1704
  %1708 = fsub fast float %456, %1705
  %1709 = fsub fast float %457, %1706
  %1710 = fsub fast float %1690, %1684
  %1711 = fsub fast float %1691, %1685
  %1712 = fsub fast float %1692, %1686
  %1713 = call float @dx.op.dot3.f32(i32 55, float %1710, float %1711, float %1712, float %1693, float %1694, float %1695)  ; Dot3(ax,ay,az,bx,by,bz)
  %1714 = fmul fast float %1713, %1697
  %1715 = fmul fast float %1713, %1698
  %1716 = fmul fast float %1713, %1699
  %1717 = fsub fast float %1690, %1714
  %1718 = fsub fast float %1691, %1715
  %1719 = fsub fast float %1692, %1716
  %1720 = fsub fast float %1717, %1707
  %1721 = fsub fast float %1718, %1708
  %1722 = fsub fast float %1719, %1709
  %1723 = fsub fast float %1684, %1707
  %1724 = fsub fast float %1685, %1708
  %1725 = fsub fast float %1686, %1709
  %1726 = call float @dx.op.dot3.f32(i32 55, float %1723, float %1724, float %1725, float %1720, float %1721, float %1722)  ; Dot3(ax,ay,az,bx,by,bz)
  %1727 = call float @dx.op.dot3.f32(i32 55, float %1720, float %1721, float %1722, float %1720, float %1721, float %1722)  ; Dot3(ax,ay,az,bx,by,bz)
  %1728 = fdiv fast float %1726, %1727
  %1729 = fcmp fast une float %1707, %1717
  %1730 = fcmp fast une float %1708, %1718
  %1731 = fcmp fast une float %1709, %1719
  %1732 = or i1 %1729, %1730
  %1733 = or i1 %1731, %1732
  %1734 = select i1 %1733, float %1728, float 0.000000e+00
  %1735 = call float @dx.op.unary.f32(i32 7, float %1734)  ; Saturate(value)
  %1736 = fmul fast float %1735, %1687
  %1737 = fmul fast float %1735, %1688
  %1738 = fmul fast float %1735, %1689
  %1739 = fadd fast float %1700, %1736
  %1740 = fadd fast float %1701, %1737
  %1741 = fadd fast float %1702, %1738
  %1742 = call float @dx.op.dot3.f32(i32 55, float %1739, float %1740, float %1741, float %1693, float %1694, float %1695)  ; Dot3(ax,ay,az,bx,by,bz)
  %1743 = fdiv fast float %1742, %1696
  %1744 = call float @dx.op.unary.f32(i32 7, float %1743)  ; Saturate(value)
  %1745 = fmul fast float %1693, %1744
  %1746 = fmul fast float %1694, %1744
  %1747 = fmul fast float %1695, %1744
  %1748 = fadd fast float %1745, %1684
  %1749 = fadd fast float %1746, %1685
  %1750 = fadd fast float %1747, %1686
  %1751 = fmul fast float %1670, %1646
  %1752 = fmul fast float %1670, %1647
  %1753 = fmul fast float %1670, %1648
  %1754 = fadd fast float %1748, %1751
  %1755 = fadd fast float %1749, %1752
  %1756 = fadd fast float %1750, %1753
  %1757 = fsub fast float -0.000000e+00, %1669
  %1758 = fdiv fast float %1757, %1668
  %1759 = fmul fast float %1758, %1758
  %1760 = call float @dx.op.dot3.f32(i32 55, float %473, float %474, float %475, float %1646, float %1647, float %1648)  ; Dot3(ax,ay,az,bx,by,bz)
  %1761 = fsub fast float %455, %1754
  %1762 = fsub fast float %456, %1755
  %1763 = fsub fast float %457, %1756
  %1764 = call float @dx.op.dot3.f32(i32 55, float %1761, float %1762, float %1763, float %1646, float %1647, float %1648)  ; Dot3(ax,ay,az,bx,by,bz)
  %1765 = fsub fast float %1754, %455
  %1766 = fsub fast float %1755, %456
  %1767 = fsub fast float %1756, %457
  %1768 = fmul fast float %1760, %1760
  %1769 = fsub fast float %1768, %1759
  %1770 = fmul fast float %1764, %1760
  %1771 = call float @dx.op.dot3.f32(i32 55, float %1765, float %1766, float %1767, float %473, float %474, float %475)  ; Dot3(ax,ay,az,bx,by,bz)
  %1772 = fmul fast float %1771, %1759
  %1773 = fadd fast float %1772, %1770
  %1774 = fmul fast float %1773, 2.000000e+00
  %1775 = fmul fast float %1764, %1764
  %1776 = call float @dx.op.dot3.f32(i32 55, float %1765, float %1766, float %1767, float %1765, float %1766, float %1767)  ; Dot3(ax,ay,az,bx,by,bz)
  %1777 = fmul fast float %1776, %1759
  %1778 = fsub fast float %1775, %1777
  %1779 = fmul fast float %1774, %1774
  %1780 = fmul fast float %1769, 4.000000e+00
  %1781 = fmul fast float %1780, %1778
  %1782 = fsub fast float %1779, %1781
  %1783 = fcmp fast ogt float %1782, 0.000000e+00
  br i1 %1783, label %1784, label %1875, !dx.controlflow.hints !94

; <label>:1784                                    ; preds = %1683
  %1785 = call float @dx.op.unary.f32(i32 24, float %1782)  ; Sqrt(value)
  %1786 = fdiv fast float 5.000000e-01, %1769
  %1787 = fsub fast float -0.000000e+00, %1774
  %1788 = fsub fast float %1787, %1785
  %1789 = fmul fast float %1788, %1786
  %1790 = fsub fast float %1785, %1774
  %1791 = fmul fast float %1790, %1786
  %1792 = call float @dx.op.binary.f32(i32 35, float %1789, float %1791)  ; FMax(a,b)
  %1793 = call float @dx.op.binary.f32(i32 36, float %1789, float %1791)  ; FMin(a,b)
  %1794 = fsub fast float %1748, %455
  %1795 = fsub fast float %1749, %456
  %1796 = fsub fast float %1750, %457
  %1797 = call float @dx.op.dot3.f32(i32 55, float %1794, float %1795, float %1796, float %1646, float %1647, float %1648)  ; Dot3(ax,ay,az,bx,by,bz)
  %1798 = fdiv fast float %1797, %1760
  %1799 = fcmp fast ogt float %1760, 0.000000e+00
  br i1 %1799, label %1800, label %1803, !dx.controlflow.hints !95

; <label>:1800                                    ; preds = %1784
  %1801 = call float @dx.op.binary.f32(i32 36, float %1793, float %1798)  ; FMin(a,b)
  %1802 = call float @dx.op.binary.f32(i32 36, float %1792, float %1798)  ; FMin(a,b)
  br label %1806

; <label>:1803                                    ; preds = %1784
  %1804 = call float @dx.op.binary.f32(i32 35, float %1793, float %1798)  ; FMax(a,b)
  %1805 = call float @dx.op.binary.f32(i32 35, float %1792, float %1798)  ; FMax(a,b)
  br label %1806

; <label>:1806                                    ; preds = %1803, %1800
  %1807 = phi float [ %1801, %1800 ], [ %1804, %1803 ]
  %1808 = phi float [ %1802, %1800 ], [ %1805, %1803 ]
  %1809 = fcmp fast oge float %1807, 0.000000e+00
  %1810 = fcmp fast olt float %1807, %472
  %1811 = and i1 %1809, %1810
  %1812 = fcmp fast ogt float %1808, 0.000000e+00
  %1813 = fcmp fast ole float %1808, %472
  %1814 = and i1 %1812, %1813
  %1815 = or i1 %1811, %1814
  br i1 %1815, label %1816, label %1875, !dx.controlflow.hints !96

; <label>:1816                                    ; preds = %1806
  %1817 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1807)  ; FMax(a,b)
  %1818 = call float @dx.op.binary.f32(i32 36, float %472, float %1808)  ; FMin(a,b)
  br i1 %1799, label %1819, label %1841, !dx.controlflow.hints !97

; <label>:1819                                    ; preds = %1816
  %1820 = fmul fast float %1818, %473
  %1821 = fmul fast float %1818, %474
  %1822 = fmul fast float %1818, %475
  %1823 = fsub fast float %1765, %1820
  %1824 = fsub fast float %1766, %1821
  %1825 = fsub fast float %1767, %1822
  %1826 = call float @dx.op.dot3.f32(i32 55, float %1823, float %1824, float %1825, float %1823, float %1824, float %1825)  ; Dot3(ax,ay,az,bx,by,bz)
  %1827 = call float @dx.op.unary.f32(i32 25, float %1826)  ; Rsqrt(value)
  %1828 = fmul fast float %1827, %1823
  %1829 = fmul fast float %1827, %1824
  %1830 = fmul fast float %1827, %1825
  %1831 = call float @dx.op.dot3.f32(i32 55, float %1828, float %1829, float %1830, float %1646, float %1647, float %1648)  ; Dot3(ax,ay,az,bx,by,bz)
  %1832 = fmul fast float %1831, %1668
  %1833 = fadd fast float %1832, %1669
  %1834 = fcmp fast olt float %1833, 0xBF1A36E2E0000000
  %1835 = select i1 %1834, float 0.000000e+00, float %1817
  %1836 = select i1 %1834, float %1817, float %1818
  %1837 = fsub fast float %1835, %1836
  %1838 = call float @dx.op.unary.f32(i32 6, float %1837)  ; FAbs(value)
  %1839 = fcmp fast olt float %1838, 0x3F1A36E2E0000000
  br i1 %1839, label %1840, label %1863, !dx.controlflow.hints !98

; <label>:1840                                    ; preds = %1819
  br label %1863

; <label>:1841                                    ; preds = %1816
  %1842 = fmul fast float %1817, %473
  %1843 = fmul fast float %1817, %474
  %1844 = fmul fast float %1817, %475
  %1845 = fsub fast float %1765, %1842
  %1846 = fsub fast float %1766, %1843
  %1847 = fsub fast float %1767, %1844
  %1848 = call float @dx.op.dot3.f32(i32 55, float %1845, float %1846, float %1847, float %1845, float %1846, float %1847)  ; Dot3(ax,ay,az,bx,by,bz)
  %1849 = call float @dx.op.unary.f32(i32 25, float %1848)  ; Rsqrt(value)
  %1850 = fmul fast float %1849, %1845
  %1851 = fmul fast float %1849, %1846
  %1852 = fmul fast float %1849, %1847
  %1853 = call float @dx.op.dot3.f32(i32 55, float %1850, float %1851, float %1852, float %1646, float %1647, float %1648)  ; Dot3(ax,ay,az,bx,by,bz)
  %1854 = fmul fast float %1853, %1668
  %1855 = fadd fast float %1854, %1669
  %1856 = fcmp fast olt float %1855, 0xBF1A36E2E0000000
  %1857 = select i1 %1856, float %1818, float %1817
  %1858 = select i1 %1856, float %472, float %1818
  %1859 = fsub fast float %1857, %1858
  %1860 = call float @dx.op.unary.f32(i32 6, float %1859)  ; FAbs(value)
  %1861 = fcmp fast olt float %1860, 0x3F1A36E2E0000000
  br i1 %1861, label %1862, label %1863, !dx.controlflow.hints !99

; <label>:1862                                    ; preds = %1841
  br label %1863

; <label>:1863                                    ; preds = %1862, %1841, %1840, %1819
  %1864 = phi float [ 0.000000e+00, %1840 ], [ %1835, %1819 ], [ %1857, %1862 ], [ %1857, %1841 ]
  %1865 = phi float [ %1836, %1840 ], [ %1836, %1819 ], [ %472, %1862 ], [ %1858, %1841 ]
  %1866 = fmul fast float %1864, %473
  %1867 = fmul fast float %1864, %474
  %1868 = fmul fast float %1864, %475
  %1869 = fadd fast float %1866, %455
  %1870 = fadd fast float %1867, %456
  %1871 = fadd fast float %1868, %457
  %1872 = fsub fast float %1865, %1864
  %1873 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1872)  ; FMax(a,b)
  %1874 = fmul fast float %1873, %1682
  br label %1875

; <label>:1875                                    ; preds = %1863, %1806, %1683, %1625
  %1876 = phi float [ %1754, %1863 ], [ %1754, %1806 ], [ %1754, %1683 ], [ %1662, %1625 ]
  %1877 = phi float [ %1755, %1863 ], [ %1755, %1806 ], [ %1755, %1683 ], [ %1663, %1625 ]
  %1878 = phi float [ %1756, %1863 ], [ %1756, %1806 ], [ %1756, %1683 ], [ %1664, %1625 ]
  %1879 = phi float [ %1869, %1863 ], [ %455, %1806 ], [ %455, %1683 ], [ %455, %1625 ]
  %1880 = phi float [ %1870, %1863 ], [ %456, %1806 ], [ %456, %1683 ], [ %456, %1625 ]
  %1881 = phi float [ %1871, %1863 ], [ %457, %1806 ], [ %457, %1683 ], [ %457, %1625 ]
  %1882 = phi float [ %1873, %1863 ], [ %472, %1806 ], [ %472, %1683 ], [ %472, %1625 ]
  %1883 = phi float [ %1874, %1863 ], [ 1.000000e+00, %1806 ], [ 1.000000e+00, %1683 ], [ 1.000000e+00, %1625 ]
  %1884 = fsub fast float %1876, %1879
  %1885 = fsub fast float %1877, %1880
  %1886 = fsub fast float %1878, %1881
  %1887 = call float @dx.op.dot3.f32(i32 55, float %1884, float %1885, float %1886, float %473, float %474, float %475)  ; Dot3(ax,ay,az,bx,by,bz)
  %1888 = call float @dx.op.binary.f32(i32 35, float %1887, float 0.000000e+00)  ; FMax(a,b)
  %1889 = call float @dx.op.binary.f32(i32 36, float %1888, float %1882)  ; FMin(a,b)
  %1890 = fmul fast float %1889, %473
  %1891 = fmul fast float %1889, %474
  %1892 = fmul fast float %1889, %475
  %1893 = fsub fast float %1879, %1876
  %1894 = fadd fast float %1893, %1890
  %1895 = fsub fast float %1880, %1877
  %1896 = fadd fast float %1895, %1891
  %1897 = fsub fast float %1881, %1878
  %1898 = fadd fast float %1897, %1892
  %1899 = fmul fast float %1894, %1894
  %1900 = fmul fast float %1896, %1896
  %1901 = fadd fast float %1899, %1900
  %1902 = fmul fast float %1898, %1898
  %1903 = fadd fast float %1901, %1902
  %1904 = call float @dx.op.unary.f32(i32 24, float %1903)  ; Sqrt(value)
  %1905 = fsub fast float -0.000000e+00, %1889
  %1906 = call float @dx.op.unary.f32(i32 6, float %1905)  ; FAbs(value)
  %1907 = fadd fast float %1906, 0x3DDB7CDFE0000000
  %1908 = fcmp fast oge float %1904, 0.000000e+00
  %1909 = fsub fast float -0.000000e+00, %1907
  %1910 = select i1 %1908, float %1909, float %1907
  %1911 = fadd fast float %1910, %1904
  %1912 = fsub fast float -0.000000e+00, %1904
  %1913 = select i1 %1908, float %1904, float %1912
  %1914 = fadd fast float %1907, %1913
  %1915 = fdiv fast float %1911, %1914
  %1916 = select i1 %1908, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %1917 = fmul fast float %1915, %1915
  %1918 = fmul fast float %1917, 0x3FC9205BC0000000
  %1919 = fadd fast float %1918, 0xBFEF6A1620000000
  %1920 = fmul fast float %1919, %1915
  %1921 = fadd fast float %1920, %1916
  %1922 = fcmp ole float %1889, -0.000000e+00
  %1923 = fsub fast float -0.000000e+00, %1921
  %1924 = select i1 %1922, float %1921, float %1923
  %1925 = fsub fast float %1882, %1889
  %1926 = call float @dx.op.unary.f32(i32 6, float %1925)  ; FAbs(value)
  %1927 = fadd fast float %1926, 0x3DDB7CDFE0000000
  %1928 = fsub fast float -0.000000e+00, %1927
  %1929 = select i1 %1908, float %1928, float %1927
  %1930 = fadd fast float %1929, %1904
  %1931 = fadd fast float %1927, %1913
  %1932 = fdiv fast float %1930, %1931
  %1933 = fmul fast float %1932, %1932
  %1934 = fmul fast float %1933, 0x3FC9205BC0000000
  %1935 = fadd fast float %1934, 0xBFEF6A1620000000
  %1936 = fmul fast float %1935, %1932
  %1937 = fadd fast float %1936, %1916
  %1938 = fcmp fast oge float %1925, 0.000000e+00
  %1939 = fsub fast float -0.000000e+00, %1937
  %1940 = select i1 %1938, float %1937, float %1939
  %1941 = fsub fast float %1940, %1924
  %1942 = fmul fast float %1941, %112
  %1943 = fadd fast float %1942, %1924
  %1944 = call float @dx.op.unary.f32(i32 14, float %1943)  ; Tan(value)
  %1945 = fmul fast float %1944, %1904
  %1946 = fadd fast float %1945, %1889
  %1947 = fmul fast float %1904, %1904
  %1948 = fmul fast float %1945, %1945
  %1949 = fadd fast float %1948, %1947
  %1950 = fmul fast float %1941, %1949
  %1951 = fdiv fast float %1904, %1950
  %1952 = fdiv fast float 1.000000e+00, %1951
  %1953 = fmul fast float %1883, %1682
  %1954 = fmul fast float %1953, %1952
  %1955 = fmul fast float %1946, %473
  %1956 = fmul fast float %1946, %474
  %1957 = fmul fast float %1946, %475
  %1958 = fadd fast float %1955, %1879
  %1959 = fadd fast float %1956, %1880
  %1960 = fadd fast float %1957, %1881
  %1961 = call float @dx.op.dot3.f32(i32 55, float %1654, float %1655, float %1656, float %1654, float %1655, float %1656)  ; Dot3(ax,ay,az,bx,by,bz)
  %1962 = fsub fast float %1958, %1662
  %1963 = fsub fast float %1959, %1663
  %1964 = fsub fast float %1960, %1664
  %1965 = call float @dx.op.dot3.f32(i32 55, float %1962, float %1963, float %1964, float %1654, float %1655, float %1656)  ; Dot3(ax,ay,az,bx,by,bz)
  %1966 = fdiv fast float %1965, %1961
  %1967 = call float @dx.op.binary.f32(i32 35, float %1966, float -1.000000e+00)  ; FMax(a,b)
  %1968 = call float @dx.op.binary.f32(i32 36, float %1967, float 1.000000e+00)  ; FMin(a,b)
  %1969 = fmul fast float %1968, %1654
  %1970 = fmul fast float %1968, %1655
  %1971 = fmul fast float %1968, %1656
  %1972 = fadd fast float %1969, %1662
  %1973 = fadd fast float %1970, %1663
  %1974 = fadd fast float %1971, %1664
  %1975 = fsub fast float %1972, %1958
  %1976 = fsub fast float %1973, %1959
  %1977 = fsub fast float %1974, %1960
  %1978 = call float @dx.op.dot3.f32(i32 55, float %1975, float %1976, float %1977, float %1975, float %1976, float %1977)  ; Dot3(ax,ay,az,bx,by,bz)
  %1979 = call float @dx.op.unary.f32(i32 24, float %1978)  ; Sqrt(value)
  %1980 = fdiv fast float 1.000000e+00, %1979
  %1981 = fmul fast float %1975, %1980
  %1982 = fmul fast float %1976, %1980
  %1983 = fmul fast float %1977, %1980
  %1984 = fadd fast float %1979, %1643
  %1985 = fdiv fast float 1.000000e+00, %1984
  %1986 = fmul float %1659, %1985
  %1987 = fmul float %1986, %1986
  %1988 = call float @dx.op.unary.f32(i32 7, float %1987)  ; Saturate(value)
  br i1 %1681, label %1989, label %2013, !dx.controlflow.hints !100

; <label>:1989                                    ; preds = %1875
  %1990 = fmul fast float %1670, %1646
  %1991 = fmul fast float %1670, %1647
  %1992 = fmul fast float %1670, %1648
  %1993 = fsub fast float %1990, %1958
  %1994 = fadd fast float %1993, %1972
  %1995 = fsub fast float %1991, %1959
  %1996 = fadd fast float %1995, %1973
  %1997 = fsub fast float %1992, %1960
  %1998 = fadd fast float %1997, %1974
  %1999 = call float @dx.op.dot3.f32(i32 55, float %1994, float %1996, float %1998, float %1994, float %1996, float %1998)  ; Dot3(ax,ay,az,bx,by,bz)
  %2000 = call float @dx.op.unary.f32(i32 25, float %1999)  ; Rsqrt(value)
  %2001 = fmul fast float %2000, %1994
  %2002 = fmul fast float %2000, %1996
  %2003 = fmul fast float %2000, %1998
  %2004 = fsub fast float %1958, %1972
  %2005 = fsub fast float %1959, %1973
  %2006 = fsub fast float %1960, %1974
  %2007 = fsub fast float -0.000000e+00, %2004
  %2008 = fsub fast float -0.000000e+00, %2005
  %2009 = fsub fast float -0.000000e+00, %2006
  %2010 = call float @dx.op.dot3.f32(i32 55, float %2007, float %2008, float %2009, float %1646, float %1647, float %1648)  ; Dot3(ax,ay,az,bx,by,bz)
  %2011 = fcmp fast ogt float %2010, 0.000000e+00
  %2012 = uitofp i1 %2011 to float
  br label %2013

; <label>:2013                                    ; preds = %1989, %1875
  %2014 = phi float [ %2012, %1989 ], [ 1.000000e+00, %1875 ]
  %2015 = phi float [ %2001, %1989 ], [ %1981, %1875 ]
  %2016 = phi float [ %2002, %1989 ], [ %1982, %1875 ]
  %2017 = phi float [ %2003, %1989 ], [ %1983, %1875 ]
  %2018 = call float @dx.op.dot3.f32(i32 55, float %1646, float %1647, float %1648, float %2015, float %2016, float %2017)  ; Dot3(ax,ay,az,bx,by,bz)
  %2019 = fmul fast float %2018, %2018
  %2020 = call float @dx.op.unary.f32(i32 7, float %2019)  ; Saturate(value)
  %2021 = fsub fast float 1.000000e+00, %2020
  %2022 = fmul fast float %2021, 5.000000e-01
  %2023 = fcmp fast ogt float %2018, 0.000000e+00
  %2024 = fsub fast float 1.000000e+00, %2022
  %2025 = select i1 %2023, float %2022, float %2024
  %2026 = fmul fast float %2025, %1678
  %2027 = fadd fast float %2026, %1676
  %2028 = fmul fast float %2027, 0x3EF0001000000000
  %2029 = fsub fast float %1972, %417
  %2030 = fsub fast float %1973, %418
  %2031 = fsub fast float %1974, %419
  %2032 = call float @dx.op.dot3.f32(i32 55, float %2029, float %2030, float %2031, float %2029, float %2030, float %2031)  ; Dot3(ax,ay,az,bx,by,bz)
  %2033 = fmul fast float %425, %425
  %2034 = fsub fast float %2032, %2033
  %2035 = fdiv fast float %2034, %2032
  %2036 = call float @dx.op.unary.f32(i32 24, float %2035)  ; Sqrt(value)
  %2037 = fsub fast float 1.000000e+00, %2036
  %2038 = fcmp fast olt float %2032, %2033
  %2039 = fmul fast float %2037, 2.560000e+02
  %2040 = select i1 %2038, float 2.560000e+02, float %2039
  %2041 = call float @dx.op.unary.f32(i32 23, float %2040)  ; Log(value)
  %2042 = call float @dx.op.binary.f32(i32 36, float %2041, float 7.000000e+00)  ; FMin(a,b)
  %2043 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %26, float %2028, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float %2042)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2044 = extractvalue %dx.types.ResRet.f32 %2043, 0
  %2045 = fmul fast float %2018, %1668
  %2046 = fadd fast float %2045, %1669
  %2047 = call float @dx.op.unary.f32(i32 7, float %2046)  ; Saturate(value)
  %2048 = select i1 %1681, float 1.000000e+00, float %2047
  %2049 = select i1 %1681, float %2047, float 1.000000e+00
  %2050 = fmul fast float %1979, %1665
  %2051 = fsub fast float 1.000000e+00, %2050
  %2052 = fmul fast float %2051, %1671
  %2053 = call float @dx.op.unary.f32(i32 7, float %2052)  ; Saturate(value)
  %2054 = fmul fast float %2053, %2049
  %2055 = fmul fast float %2054, 2.000000e+00
  %2056 = fsub fast float 3.000000e+00, %2055
  %2057 = fmul fast float %2044, %2014
  %2058 = fmul fast float %2054, %2054
  %2059 = fmul fast float %2058, %2057
  %2060 = fmul fast float %2059, %2056
  %2061 = call float @dx.op.binary.f32(i32 36, float %2060, float %2060)  ; FMin(a,b)
  %2062 = call float @dx.op.binary.f32(i32 36, float %2060, float %2061)  ; FMin(a,b)
  %2063 = fcmp fast ogt float %2062, 0.000000e+00
  br i1 %2063, label %2069, label %2064, !dx.controlflow.hints !101

; <label>:2064                                    ; preds = %2572, %2157, %2013
  %2065 = phi float [ %2605, %2572 ], [ %1627, %2157 ], [ %1627, %2013 ]
  %2066 = phi float [ %2606, %2572 ], [ %1628, %2157 ], [ %1628, %2013 ]
  %2067 = phi float [ %2607, %2572 ], [ %1629, %2157 ], [ %1629, %2013 ]
  %2068 = icmp eq i32 %1626, %1634
  br i1 %2068, label %2608, label %1625

; <label>:2069                                    ; preds = %2013
  %2070 = icmp eq i32 %1679, 255
  br i1 %2070, label %2157, label %2071, !dx.controlflow.hints !102

; <label>:2071                                    ; preds = %2069
  %2072 = mul nuw nsw i32 %1679, 176
  %2073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %2072, i32 undef)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.f32 %2073, 0
  %2075 = extractvalue %dx.types.ResRet.f32 %2073, 1
  %2076 = extractvalue %dx.types.ResRet.f32 %2073, 2
  %2077 = extractvalue %dx.types.ResRet.f32 %2073, 3
  %2078 = add nuw nsw i32 %2072, 16
  %2079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %2078, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.f32 %2079, 0
  %2081 = extractvalue %dx.types.ResRet.f32 %2079, 1
  %2082 = add nuw nsw i32 %2072, 32
  %2083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %2082, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.f32 %2083, 0
  %2085 = extractvalue %dx.types.ResRet.f32 %2083, 2
  %2086 = add nuw nsw i32 %2072, 48
  %2087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %2086, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.f32 %2087, 0
  %2089 = extractvalue %dx.types.ResRet.f32 %2087, 1
  %2090 = extractvalue %dx.types.ResRet.f32 %2087, 2
  %2091 = extractvalue %dx.types.ResRet.f32 %2087, 3
  %2092 = add nuw nsw i32 %2072, 64
  %2093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %2092, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.f32 %2093, 0
  %2095 = extractvalue %dx.types.ResRet.f32 %2093, 1
  %2096 = extractvalue %dx.types.ResRet.f32 %2093, 2
  %2097 = extractvalue %dx.types.ResRet.f32 %2093, 3
  %2098 = add nuw nsw i32 %2072, 80
  %2099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.f32 %2099, 0
  %2101 = extractvalue %dx.types.ResRet.f32 %2099, 1
  %2102 = extractvalue %dx.types.ResRet.f32 %2099, 2
  %2103 = extractvalue %dx.types.ResRet.f32 %2099, 3
  %2104 = add nuw nsw i32 %2072, 96
  %2105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %2104, i32 undef)  ; BufferLoad(srv,index,wot)
  %2106 = extractvalue %dx.types.ResRet.f32 %2105, 0
  %2107 = extractvalue %dx.types.ResRet.f32 %2105, 1
  %2108 = extractvalue %dx.types.ResRet.f32 %2105, 2
  %2109 = extractvalue %dx.types.ResRet.f32 %2105, 3
  %2110 = bitcast float %2081 to i32
  %2111 = fmul fast float %2085, %1981
  %2112 = fmul fast float %2085, %1982
  %2113 = fmul fast float %2085, %1983
  %2114 = fsub fast float %1958, %2111
  %2115 = fsub fast float %1959, %2112
  %2116 = fsub fast float %1960, %2113
  %2117 = fmul fast float %2114, %2088
  %2118 = call float @dx.op.tertiary.f32(i32 46, float %2115, float %2094, float %2117)  ; FMad(a,b,c)
  %2119 = call float @dx.op.tertiary.f32(i32 46, float %2116, float %2100, float %2118)  ; FMad(a,b,c)
  %2120 = fadd fast float %2119, %2106
  %2121 = fmul fast float %2114, %2089
  %2122 = call float @dx.op.tertiary.f32(i32 46, float %2115, float %2095, float %2121)  ; FMad(a,b,c)
  %2123 = call float @dx.op.tertiary.f32(i32 46, float %2116, float %2101, float %2122)  ; FMad(a,b,c)
  %2124 = fadd fast float %2123, %2107
  %2125 = fmul fast float %2114, %2090
  %2126 = call float @dx.op.tertiary.f32(i32 46, float %2115, float %2096, float %2125)  ; FMad(a,b,c)
  %2127 = call float @dx.op.tertiary.f32(i32 46, float %2116, float %2102, float %2126)  ; FMad(a,b,c)
  %2128 = fadd fast float %2127, %2108
  %2129 = fmul fast float %2114, %2091
  %2130 = call float @dx.op.tertiary.f32(i32 46, float %2115, float %2097, float %2129)  ; FMad(a,b,c)
  %2131 = call float @dx.op.tertiary.f32(i32 46, float %2116, float %2103, float %2130)  ; FMad(a,b,c)
  %2132 = fadd fast float %2131, %2109
  %2133 = fdiv fast float %2120, %2132
  %2134 = fdiv fast float %2124, %2132
  %2135 = fdiv fast float %2128, %2132
  %2136 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %2135)  ; FMax(a,b)
  %2137 = fmul fast float %2076, 5.000000e-01
  %2138 = call float @dx.op.tertiary.f32(i32 46, float %2137, float -0.000000e+00, float 0.000000e+00)  ; FMad(a,b,c)
  %2139 = fadd fast float %2138, %2133
  %2140 = fadd fast float %2134, %2137
  %2141 = fmul fast float %2139, %2080
  %2142 = fmul fast float %2140, %2080
  %2143 = call float @dx.op.binary.f32(i32 35, float %2141, float %2076)  ; FMax(a,b)
  %2144 = call float @dx.op.binary.f32(i32 35, float %2142, float %2076)  ; FMax(a,b)
  %2145 = call float @dx.op.binary.f32(i32 36, float %2143, float %2077)  ; FMin(a,b)
  %2146 = call float @dx.op.binary.f32(i32 36, float %2144, float %2077)  ; FMin(a,b)
  %2147 = fadd fast float %2145, %2074
  %2148 = fadd fast float %2146, %2075
  %2149 = uitofp i32 %2110 to float
  %2150 = fadd fast float %2136, %2084
  %2151 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %29, float %2147, float %2148, float %2149, float undef, i32 0, i32 0, i32 undef, float %2150)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2152 = extractvalue %dx.types.ResRet.f32 %2151, 0
  %2153 = fadd fast float %2152, -1.000000e+00
  %2154 = fmul fast float %2153, %2048
  %2155 = fadd fast float %2154, 1.000000e+00
  %2156 = fmul fast float %2155, %2060
  br label %2157

; <label>:2157                                    ; preds = %2071, %2069
  %2158 = phi float [ %2156, %2071 ], [ %2060, %2069 ]
  %2159 = call float @dx.op.binary.f32(i32 36, float %2158, float %2158)  ; FMin(a,b)
  %2160 = call float @dx.op.binary.f32(i32 36, float %2158, float %2159)  ; FMin(a,b)
  %2161 = fcmp fast ogt float %2160, 0.000000e+00
  br i1 %2161, label %2162, label %2064, !dx.controlflow.hints !103

; <label>:2162                                    ; preds = %2157
  br i1 %231, label %2163, label %2572, !dx.controlflow.hints !88

; <label>:2163                                    ; preds = %2162
  %2164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2165 = extractvalue %dx.types.CBufRet.i32 %2164, 0
  %2166 = and i32 %2165, 64
  %2167 = icmp ne i32 %2166, 0
  %2168 = fsub fast float %1664, %476
  %2169 = fcmp fast ogt float %2168, 0.000000e+00
  %2170 = fsub fast float %190, %220
  %2171 = fcmp fast ogt float %2170, 0.000000e+00
  %2172 = xor i1 %2171, %2169
  %2173 = fsub fast float %476, %1664
  %2174 = fmul fast float %2173, 2.000000e+00
  %2175 = fadd fast float %2174, %1664
  %2176 = select i1 %2172, float %1664, float %2175
  %2177 = fsub fast float %1662, %430
  %2178 = fsub fast float %1663, %431
  %2179 = fsub fast float %2176, %432
  %2180 = call float @dx.op.dot3.f32(i32 55, float %2177, float %2178, float %2179, float %2177, float %2178, float %2179)  ; Dot3(ax,ay,az,bx,by,bz)
  %2181 = call float @dx.op.unary.f32(i32 25, float %2180)  ; Rsqrt(value)
  %2182 = fmul fast float %2181, %2177
  %2183 = fmul fast float %2181, %2178
  %2184 = fmul fast float %2181, %2179
  %2185 = fsub fast float %220, %190
  %2186 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2185)  ; Dot3(ax,ay,az,bx,by,bz)
  %2187 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2182, float %2183, float %2184)  ; Dot3(ax,ay,az,bx,by,bz)
  %2188 = fdiv fast float 1.000000e+00, %2187
  %2189 = fmul fast float %2188, %2186
  %2190 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %2170, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2191 = fcmp fast ogt float %2190, 0.000000e+00
  %2192 = fcmp fast olt float %2190, 0.000000e+00
  %2193 = zext i1 %2191 to i32
  %2194 = zext i1 %2192 to i32
  %2195 = sub nsw i32 %2193, %2194
  %2196 = sitofp i32 %2195 to float
  %2197 = fsub fast float %2176, %476
  %2198 = call float @dx.op.dot3.f32(i32 55, float %2177, float %2178, float %2197, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2199 = fcmp fast ogt float %2198, 0.000000e+00
  %2200 = fcmp fast olt float %2198, 0.000000e+00
  %2201 = zext i1 %2199 to i32
  %2202 = zext i1 %2200 to i32
  %2203 = sub nsw i32 %2201, %2202
  %2204 = sitofp i32 %2203 to float
  %2205 = fcmp fast une float %2196, %2204
  br i1 %2205, label %2206, label %2216, !dx.controlflow.hints !89

; <label>:2206                                    ; preds = %2163
  %2207 = fmul fast float %2189, %2184
  %2208 = fmul fast float %2189, %2183
  %2209 = fmul fast float %2189, %2182
  %2210 = fmul fast float %2209, %2209
  %2211 = fmul fast float %2208, %2208
  %2212 = fadd fast float %2210, %2211
  %2213 = fmul fast float %2207, %2207
  %2214 = fadd fast float %2212, %2213
  %2215 = call float @dx.op.unary.f32(i32 24, float %2214)  ; Sqrt(value)
  br label %2228

; <label>:2216                                    ; preds = %2163
  %2217 = icmp slt i32 %2195, 0
  br i1 %2217, label %2218, label %2228, !dx.controlflow.hints !90

; <label>:2218                                    ; preds = %2216
  %2219 = fsub fast float %430, %1662
  %2220 = fsub fast float %431, %1663
  %2221 = fsub fast float %432, %2176
  %2222 = fmul fast float %2219, %2219
  %2223 = fmul fast float %2220, %2220
  %2224 = fadd fast float %2222, %2223
  %2225 = fmul fast float %2221, %2221
  %2226 = fadd fast float %2224, %2225
  %2227 = call float @dx.op.unary.f32(i32 24, float %2226)  ; Sqrt(value)
  br label %2228

; <label>:2228                                    ; preds = %2218, %2216, %2206
  %2229 = phi float [ %2215, %2206 ], [ %2227, %2218 ], [ 0.000000e+00, %2216 ]
  %2230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %2231 = extractvalue %dx.types.CBufRet.i32 %2230, 1
  %2232 = icmp ne i32 %2231, 0
  %2233 = and i1 %2172, %2232
  %2234 = call float @dx.op.dot3.f32(i32 55, float %2182, float %2183, float %2184, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2235 = fmul fast float %2234, %2234
  %2236 = fsub fast float 1.000000e+00, %2235
  %2237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.f32 %2237, 0
  %2239 = extractvalue %dx.types.CBufRet.f32 %2237, 1
  %2240 = extractvalue %dx.types.CBufRet.f32 %2237, 2
  %2241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2242 = extractvalue %dx.types.CBufRet.f32 %2241, 0
  %2243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2244 = extractvalue %dx.types.CBufRet.f32 %2243, 0
  %2245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2246 = extractvalue %dx.types.CBufRet.f32 %2245, 0
  %2247 = extractvalue %dx.types.CBufRet.f32 %2241, 1
  %2248 = extractvalue %dx.types.CBufRet.f32 %2243, 1
  %2249 = extractvalue %dx.types.CBufRet.f32 %2245, 1
  %2250 = extractvalue %dx.types.CBufRet.f32 %2241, 3
  %2251 = extractvalue %dx.types.CBufRet.f32 %2243, 3
  %2252 = extractvalue %dx.types.CBufRet.f32 %2245, 3
  %2253 = fadd fast float %2238, %430
  %2254 = fadd fast float %2239, %431
  %2255 = fadd fast float %2240, %432
  %2256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %2257 = extractvalue %dx.types.CBufRet.f32 %2256, 0
  %2258 = extractvalue %dx.types.CBufRet.f32 %2256, 1
  %2259 = extractvalue %dx.types.CBufRet.f32 %2256, 2
  %2260 = extractvalue %dx.types.CBufRet.f32 %2256, 3
  br i1 %2233, label %2261, label %2454, !dx.controlflow.hints !91

; <label>:2261                                    ; preds = %2228
  %2262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %2263 = extractvalue %dx.types.CBufRet.f32 %2262, 0
  %2264 = fmul fast float %2263, %2263
  %2265 = fmul fast float %2264, %2236
  %2266 = fsub fast float 1.000000e+00, %2265
  %2267 = fcmp fast oge float %2266, 0.000000e+00
  %2268 = fmul fast float %2263, %2182
  %2269 = fmul fast float %2263, %2183
  %2270 = fmul fast float %2263, %2184
  %2271 = call float @dx.op.unary.f32(i32 24, float %2266)  ; Sqrt(value)
  %2272 = fmul fast float %2263, %2234
  %2273 = fsub fast float -0.000000e+00, %2271
  %2274 = fsub fast float %2273, %2272
  %2275 = fadd fast float %2274, %2270
  %2276 = select i1 %2267, float %2268, float 0.000000e+00
  %2277 = select i1 %2267, float %2269, float 0.000000e+00
  %2278 = select i1 %2267, float %2275, float 0.000000e+00
  %2279 = fmul fast float %2276, %2229
  %2280 = fmul fast float %2277, %2229
  %2281 = fmul fast float %2278, %2229
  %2282 = fadd fast float %2253, %2279
  %2283 = fadd fast float %2282, %2250
  %2284 = fadd fast float %2254, %2280
  %2285 = fadd fast float %2284, %2251
  %2286 = fadd fast float %2255, %2281
  %2287 = fadd fast float %2286, %2252
  %2288 = fmul fast float %2283, %2242
  %2289 = call float @dx.op.tertiary.f32(i32 46, float %2285, float %2244, float %2288)  ; FMad(a,b,c)
  %2290 = call float @dx.op.tertiary.f32(i32 46, float %2287, float %2246, float %2289)  ; FMad(a,b,c)
  %2291 = fmul fast float %2283, %2247
  %2292 = call float @dx.op.tertiary.f32(i32 46, float %2285, float %2248, float %2291)  ; FMad(a,b,c)
  %2293 = call float @dx.op.tertiary.f32(i32 46, float %2287, float %2249, float %2292)  ; FMad(a,b,c)
  %2294 = fsub fast float %2290, %2250
  %2295 = fsub fast float %2294, %2257
  %2296 = fadd fast float %2295, %2259
  %2297 = fsub fast float %2293, %2251
  %2298 = fsub fast float %2297, %2258
  %2299 = fadd fast float %2298, %2259
  %2300 = fmul fast float %2296, %2260
  %2301 = fmul fast float %2299, %2260
  %2302 = call float @dx.op.unary.f32(i32 7, float %2300)  ; Saturate(value)
  %2303 = call float @dx.op.unary.f32(i32 7, float %2301)  ; Saturate(value)
  %2304 = fsub fast float 1.000000e+00, %2302
  %2305 = fsub fast float 1.000000e+00, %2303
  %2306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %28, float %2304, float %2305, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2307 = extractvalue %dx.types.ResRet.f32 %2306, 0
  %2308 = fmul fast float %2307, 0x3FBC5ABC00000000
  %2309 = extractvalue %dx.types.CBufRet.f32 %2262, 1
  %2310 = fmul fast float %2309, %2309
  %2311 = fmul fast float %2310, %2236
  %2312 = fsub fast float 1.000000e+00, %2311
  %2313 = fcmp fast oge float %2312, 0.000000e+00
  %2314 = fmul fast float %2309, %2182
  %2315 = fmul fast float %2309, %2183
  %2316 = fmul fast float %2309, %2184
  %2317 = call float @dx.op.unary.f32(i32 24, float %2312)  ; Sqrt(value)
  %2318 = fmul fast float %2309, %2234
  %2319 = fsub fast float -0.000000e+00, %2317
  %2320 = fsub fast float %2319, %2318
  %2321 = fadd fast float %2320, %2316
  %2322 = select i1 %2313, float %2314, float 0.000000e+00
  %2323 = select i1 %2313, float %2315, float 0.000000e+00
  %2324 = select i1 %2313, float %2321, float 0.000000e+00
  %2325 = fmul fast float %2322, %2229
  %2326 = fmul fast float %2323, %2229
  %2327 = fmul fast float %2324, %2229
  %2328 = fadd fast float %2253, %2325
  %2329 = fadd fast float %2328, %2250
  %2330 = fadd fast float %2254, %2326
  %2331 = fadd fast float %2330, %2251
  %2332 = fadd fast float %2255, %2327
  %2333 = fadd fast float %2332, %2252
  %2334 = fmul fast float %2329, %2242
  %2335 = call float @dx.op.tertiary.f32(i32 46, float %2331, float %2244, float %2334)  ; FMad(a,b,c)
  %2336 = call float @dx.op.tertiary.f32(i32 46, float %2333, float %2246, float %2335)  ; FMad(a,b,c)
  %2337 = fmul fast float %2329, %2247
  %2338 = call float @dx.op.tertiary.f32(i32 46, float %2331, float %2248, float %2337)  ; FMad(a,b,c)
  %2339 = call float @dx.op.tertiary.f32(i32 46, float %2333, float %2249, float %2338)  ; FMad(a,b,c)
  %2340 = fsub fast float %2336, %2250
  %2341 = fsub fast float %2340, %2257
  %2342 = fadd fast float %2341, %2259
  %2343 = fsub fast float %2339, %2251
  %2344 = fsub fast float %2343, %2258
  %2345 = fadd fast float %2344, %2259
  %2346 = fmul fast float %2342, %2260
  %2347 = fmul fast float %2345, %2260
  %2348 = call float @dx.op.unary.f32(i32 7, float %2346)  ; Saturate(value)
  %2349 = call float @dx.op.unary.f32(i32 7, float %2347)  ; Saturate(value)
  %2350 = fsub fast float 1.000000e+00, %2348
  %2351 = fsub fast float 1.000000e+00, %2349
  %2352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %28, float %2350, float %2351, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2353 = extractvalue %dx.types.ResRet.f32 %2352, 0
  %2354 = fmul fast float %2353, 0x3F9E4BBD60000000
  %2355 = extractvalue %dx.types.CBufRet.f32 %2262, 2
  %2356 = fmul fast float %2355, %2355
  %2357 = fmul fast float %2356, %2236
  %2358 = fsub fast float 1.000000e+00, %2357
  %2359 = fcmp fast oge float %2358, 0.000000e+00
  %2360 = fmul fast float %2355, %2182
  %2361 = fmul fast float %2355, %2183
  %2362 = fmul fast float %2355, %2184
  %2363 = call float @dx.op.unary.f32(i32 24, float %2358)  ; Sqrt(value)
  %2364 = fmul fast float %2355, %2234
  %2365 = fsub fast float -0.000000e+00, %2363
  %2366 = fsub fast float %2365, %2364
  %2367 = fadd fast float %2366, %2362
  %2368 = select i1 %2359, float %2360, float 0.000000e+00
  %2369 = select i1 %2359, float %2361, float 0.000000e+00
  %2370 = select i1 %2359, float %2367, float 0.000000e+00
  %2371 = fmul fast float %2368, %2229
  %2372 = fmul fast float %2369, %2229
  %2373 = fmul fast float %2370, %2229
  %2374 = fadd fast float %2253, %2371
  %2375 = fadd fast float %2374, %2250
  %2376 = fadd fast float %2254, %2372
  %2377 = fadd fast float %2376, %2251
  %2378 = fadd fast float %2255, %2373
  %2379 = fadd fast float %2378, %2252
  %2380 = fmul fast float %2375, %2242
  %2381 = call float @dx.op.tertiary.f32(i32 46, float %2377, float %2244, float %2380)  ; FMad(a,b,c)
  %2382 = call float @dx.op.tertiary.f32(i32 46, float %2379, float %2246, float %2381)  ; FMad(a,b,c)
  %2383 = fmul fast float %2375, %2247
  %2384 = call float @dx.op.tertiary.f32(i32 46, float %2377, float %2248, float %2383)  ; FMad(a,b,c)
  %2385 = call float @dx.op.tertiary.f32(i32 46, float %2379, float %2249, float %2384)  ; FMad(a,b,c)
  %2386 = fsub fast float %2382, %2250
  %2387 = fsub fast float %2386, %2257
  %2388 = fadd fast float %2387, %2259
  %2389 = fsub fast float %2385, %2251
  %2390 = fsub fast float %2389, %2258
  %2391 = fadd fast float %2390, %2259
  %2392 = fmul fast float %2388, %2260
  %2393 = fmul fast float %2391, %2260
  %2394 = call float @dx.op.unary.f32(i32 7, float %2392)  ; Saturate(value)
  %2395 = call float @dx.op.unary.f32(i32 7, float %2393)  ; Saturate(value)
  %2396 = fsub fast float 1.000000e+00, %2394
  %2397 = fsub fast float 1.000000e+00, %2395
  %2398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %28, float %2396, float %2397, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2399 = extractvalue %dx.types.ResRet.f32 %2398, 0
  %2400 = fmul fast float %2399, 0x3FDDEACB00000000
  %2401 = fadd fast float %2400, %2354
  %2402 = extractvalue %dx.types.CBufRet.f32 %2262, 3
  %2403 = fmul fast float %2402, %2402
  %2404 = fmul fast float %2403, %2236
  %2405 = fsub fast float 1.000000e+00, %2404
  %2406 = fcmp fast oge float %2405, 0.000000e+00
  %2407 = fmul fast float %2402, %2182
  %2408 = fmul fast float %2402, %2183
  %2409 = fmul fast float %2402, %2184
  %2410 = call float @dx.op.unary.f32(i32 24, float %2405)  ; Sqrt(value)
  %2411 = fmul fast float %2402, %2234
  %2412 = fsub fast float -0.000000e+00, %2410
  %2413 = fsub fast float %2412, %2411
  %2414 = fadd fast float %2413, %2409
  %2415 = select i1 %2406, float %2407, float 0.000000e+00
  %2416 = select i1 %2406, float %2408, float 0.000000e+00
  %2417 = select i1 %2406, float %2414, float 0.000000e+00
  %2418 = fmul fast float %2415, %2229
  %2419 = fmul fast float %2416, %2229
  %2420 = fmul fast float %2417, %2229
  %2421 = fadd fast float %2253, %2418
  %2422 = fadd fast float %2421, %2250
  %2423 = fadd fast float %2254, %2419
  %2424 = fadd fast float %2423, %2251
  %2425 = fadd fast float %2255, %2420
  %2426 = fadd fast float %2425, %2252
  %2427 = fmul fast float %2422, %2242
  %2428 = call float @dx.op.tertiary.f32(i32 46, float %2424, float %2244, float %2427)  ; FMad(a,b,c)
  %2429 = call float @dx.op.tertiary.f32(i32 46, float %2426, float %2246, float %2428)  ; FMad(a,b,c)
  %2430 = fmul fast float %2422, %2247
  %2431 = call float @dx.op.tertiary.f32(i32 46, float %2424, float %2248, float %2430)  ; FMad(a,b,c)
  %2432 = call float @dx.op.tertiary.f32(i32 46, float %2426, float %2249, float %2431)  ; FMad(a,b,c)
  %2433 = fsub fast float %2429, %2250
  %2434 = fsub fast float %2433, %2257
  %2435 = fadd fast float %2434, %2259
  %2436 = fsub fast float %2432, %2251
  %2437 = fsub fast float %2436, %2258
  %2438 = fadd fast float %2437, %2259
  %2439 = fmul fast float %2435, %2260
  %2440 = fmul fast float %2438, %2260
  %2441 = call float @dx.op.unary.f32(i32 7, float %2439)  ; Saturate(value)
  %2442 = call float @dx.op.unary.f32(i32 7, float %2440)  ; Saturate(value)
  %2443 = fsub fast float 1.000000e+00, %2441
  %2444 = fsub fast float 1.000000e+00, %2442
  %2445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %28, float %2443, float %2444, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2446 = extractvalue %dx.types.ResRet.f32 %2445, 0
  %2447 = fmul fast float %2446, 0x3FE0183CA0000000
  %2448 = fmul fast float %2446, 0x3FB51033E0000000
  %2449 = fadd fast float %2401, %2447
  %2450 = fadd fast float %2399, %2353
  %2451 = fmul fast float %2450, 0x3FD9D2A200000000
  %2452 = fadd fast float %2448, %2308
  %2453 = fadd fast float %2452, %2451
  br label %2500

; <label>:2454                                    ; preds = %2228
  %2455 = fmul fast float %2236, 0x3FE2024E20000000
  %2456 = fsub fast float 1.000000e+00, %2455
  %2457 = fcmp fast oge float %2456, 0.000000e+00
  %2458 = fmul fast float %2182, 0x3FE8018960000000
  %2459 = fmul fast float %2183, 0x3FE8018960000000
  %2460 = fmul fast float %2184, 0x3FE8018960000000
  %2461 = call float @dx.op.unary.f32(i32 24, float %2456)  ; Sqrt(value)
  %2462 = fmul fast float %2234, 0x3FE8018960000000
  %2463 = fsub fast float %2460, %2461
  %2464 = fsub fast float %2463, %2462
  %2465 = select i1 %2457, float %2458, float 0.000000e+00
  %2466 = select i1 %2457, float %2459, float 0.000000e+00
  %2467 = select i1 %2457, float %2464, float 0.000000e+00
  %2468 = select i1 %2172, float %2465, float %2182
  %2469 = select i1 %2172, float %2466, float %2183
  %2470 = select i1 %2172, float %2467, float %2184
  %2471 = fmul fast float %2468, %2229
  %2472 = fmul fast float %2469, %2229
  %2473 = fmul fast float %2470, %2229
  %2474 = fadd fast float %2253, %2471
  %2475 = fadd fast float %2474, %2250
  %2476 = fadd fast float %2254, %2472
  %2477 = fadd fast float %2476, %2251
  %2478 = fadd fast float %2255, %2473
  %2479 = fadd fast float %2478, %2252
  %2480 = fmul fast float %2475, %2242
  %2481 = call float @dx.op.tertiary.f32(i32 46, float %2477, float %2244, float %2480)  ; FMad(a,b,c)
  %2482 = call float @dx.op.tertiary.f32(i32 46, float %2479, float %2246, float %2481)  ; FMad(a,b,c)
  %2483 = fmul fast float %2475, %2247
  %2484 = call float @dx.op.tertiary.f32(i32 46, float %2477, float %2248, float %2483)  ; FMad(a,b,c)
  %2485 = call float @dx.op.tertiary.f32(i32 46, float %2479, float %2249, float %2484)  ; FMad(a,b,c)
  %2486 = fsub fast float %2482, %2250
  %2487 = fsub fast float %2486, %2257
  %2488 = fadd fast float %2487, %2259
  %2489 = fsub fast float %2485, %2251
  %2490 = fsub fast float %2489, %2258
  %2491 = fadd fast float %2490, %2259
  %2492 = fmul fast float %2488, %2260
  %2493 = fmul fast float %2491, %2260
  %2494 = call float @dx.op.unary.f32(i32 7, float %2492)  ; Saturate(value)
  %2495 = call float @dx.op.unary.f32(i32 7, float %2493)  ; Saturate(value)
  %2496 = fsub fast float 1.000000e+00, %2494
  %2497 = fsub fast float 1.000000e+00, %2495
  %2498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %28, float %2496, float %2497, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2499 = extractvalue %dx.types.ResRet.f32 %2498, 0
  br label %2500

; <label>:2500                                    ; preds = %2454, %2261
  %2501 = phi float [ %2499, %2454 ], [ %2449, %2261 ]
  %2502 = phi float [ %2499, %2454 ], [ %2453, %2261 ]
  %2503 = phi float [ %2499, %2454 ], [ %2307, %2261 ]
  %2504 = fmul fast float %2177, %2177
  %2505 = fmul fast float %2178, %2178
  %2506 = fadd fast float %2504, %2505
  %2507 = fmul fast float %2179, %2179
  %2508 = fadd fast float %2506, %2507
  %2509 = call float @dx.op.unary.f32(i32 24, float %2508)  ; Sqrt(value)
  %2510 = fsub fast float %430, %1662
  %2511 = fsub fast float %431, %1663
  %2512 = fsub fast float %432, %1664
  %2513 = fmul fast float %2510, %2510
  %2514 = fmul fast float %2511, %2511
  %2515 = fadd fast float %2513, %2514
  %2516 = fmul fast float %2512, %2512
  %2517 = fadd fast float %2515, %2516
  %2518 = call float @dx.op.unary.f32(i32 24, float %2517)  ; Sqrt(value)
  %2519 = fsub fast float %2509, %2518
  %2520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2521 = extractvalue %dx.types.CBufRet.f32 %2520, 0
  %2522 = call float @dx.op.unary.f32(i32 6, float %2521)  ; FAbs(value)
  %2523 = fmul fast float %2518, %2518
  %2524 = fmul fast float %2523, %2522
  %2525 = fmul fast float %2519, %2519
  %2526 = fadd fast float %2525, %2523
  %2527 = fdiv fast float %2524, %2526
  %2528 = call float @dx.op.unary.f32(i32 7, float %2527)  ; Saturate(value)
  %2529 = call float @dx.op.unary.f32(i32 6, float %2234)  ; FAbs(value)
  %2530 = fsub fast float 1.000000e+00, %2529
  %2531 = bitcast float %2530 to i32
  %2532 = sitofp i32 %2531 to float
  %2533 = fptosi float %2532 to i32
  %2534 = bitcast i32 %2533 to float
  %2535 = fmul fast float %2534, 0x3FEF333340000000
  %2536 = fadd fast float %2535, 0x3F999999A0000000
  %2537 = call float @dx.op.unary.f32(i32 7, float %2536)  ; Saturate(value)
  %2538 = fsub fast float 1.000000e+00, %2537
  %2539 = fadd fast float %2501, 1.000000e+00
  %2540 = fadd fast float %2502, 1.000000e+00
  %2541 = fadd fast float %2503, 1.000000e+00
  %2542 = fmul fast float %2538, %2539
  %2543 = fmul fast float %2538, %2540
  %2544 = fmul fast float %2538, %2541
  %2545 = fmul fast float %2528, %2539
  %2546 = fmul fast float %2545, %2537
  %2547 = fmul fast float %2528, %2540
  %2548 = fmul fast float %2547, %2537
  %2549 = fmul fast float %2528, %2541
  %2550 = fmul fast float %2549, %2537
  %2551 = fadd fast float %2546, 1.000000e+00
  %2552 = fadd fast float %2548, 1.000000e+00
  %2553 = fadd fast float %2550, 1.000000e+00
  %2554 = call float @dx.op.unary.f32(i32 6, float %2170)  ; FAbs(value)
  %2555 = call float @dx.op.unary.f32(i32 7, float %2554)  ; Saturate(value)
  %2556 = select i1 %2172, float %2542, float %2551
  %2557 = select i1 %2172, float %2543, float %2552
  %2558 = select i1 %2172, float %2544, float %2553
  %2559 = select i1 %2167, float %2555, float 0.000000e+00
  %2560 = fadd fast float %2556, -1.000000e+00
  %2561 = fadd fast float %2557, -1.000000e+00
  %2562 = fadd fast float %2558, -1.000000e+00
  %2563 = fmul fast float %2560, %2559
  %2564 = fmul fast float %2561, %2559
  %2565 = fmul fast float %2562, %2559
  %2566 = fadd fast float %2563, 1.000000e+00
  %2567 = fadd fast float %2564, 1.000000e+00
  %2568 = fadd fast float %2565, 1.000000e+00
  %2569 = fmul fast float %2566, %1638
  %2570 = fmul fast float %2567, %1639
  %2571 = fmul fast float %2568, %1640
  br label %2572

; <label>:2572                                    ; preds = %2500, %2162
  %2573 = phi float [ %2569, %2500 ], [ %1638, %2162 ]
  %2574 = phi float [ %2570, %2500 ], [ %1639, %2162 ]
  %2575 = phi float [ %2571, %2500 ], [ %1640, %2162 ]
  %2576 = call float @dx.op.dot3.f32(i32 55, float %1981, float %1982, float %1983, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %2577 = fcmp fast ogt float %341, 0.000000e+00
  %2578 = select i1 %2577, float 1.000000e+00, float -1.000000e+00
  %2579 = fmul fast float %112, 7.812500e-03
  %2580 = fmul fast float %112, 3.125000e-02
  %2581 = fadd fast float %2580, -3.125000e-02
  %2582 = fmul fast float %2578, 5.000000e-01
  %2583 = fmul fast float %2582, %2576
  %2584 = fmul fast float %2578, %341
  %2585 = fadd fast float %2579, 4.921875e-01
  %2586 = fadd fast float %2585, %2583
  %2587 = fadd fast float %2579, 0x3FB25F3060000000
  %2588 = fadd fast float %2581, %2584
  %2589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %28, float %2586, float %2587, float %2588, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2590 = extractvalue %dx.types.ResRet.f32 %2589, 0
  %2591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2592 = extractvalue %dx.types.CBufRet.f32 %2591, 1
  %2593 = extractvalue %dx.types.CBufRet.f32 %2591, 2
  %2594 = select i1 %1681, float %2592, float %2593
  %2595 = fmul fast float %1988, 0x400921FB60000000
  %2596 = fmul fast float %2595, %2158
  %2597 = fmul fast float %2596, %2590
  %2598 = fmul fast float %2597, %2594
  %2599 = fmul fast float %2573, %1954
  %2600 = fmul fast float %2599, %2598
  %2601 = fmul fast float %2574, %1954
  %2602 = fmul fast float %2601, %2598
  %2603 = fmul fast float %2575, %1954
  %2604 = fmul fast float %2603, %2598
  %2605 = fadd fast float %2600, %1627
  %2606 = fadd fast float %2602, %1628
  %2607 = fadd fast float %2604, %1629
  br label %2064

; <label>:2608                                    ; preds = %2064
  br label %2609

; <label>:2609                                    ; preds = %2608, %1612
  %2610 = phi float [ %1614, %1612 ], [ %2065, %2608 ]
  %2611 = phi float [ %1615, %1612 ], [ %2066, %2608 ]
  %2612 = phi float [ %1616, %1612 ], [ %2067, %2608 ]
  %2613 = add i32 %1613, 1
  %2614 = icmp ugt i32 %2613, %1611
  br i1 %2614, label %2615, label %1612

; <label>:2615                                    ; preds = %2609
  br label %2616

; <label>:2616                                    ; preds = %2615, %1602
  %2617 = phi float [ %1603, %1602 ], [ %2610, %2615 ]
  %2618 = phi float [ %1604, %1602 ], [ %2611, %2615 ]
  %2619 = phi float [ %1605, %1602 ], [ %2612, %2615 ]
  %2620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %26, float %137, float %138, float %139, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2621 = extractvalue %dx.types.ResRet.f32 %2620, 0
  %2622 = extractvalue %dx.types.ResRet.f32 %2620, 1
  %2623 = extractvalue %dx.types.ResRet.f32 %2620, 2
  %2624 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2621)  ; IsNaN(value)
  %2625 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2622)  ; IsNaN(value)
  %2626 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2623)  ; IsNaN(value)
  %2627 = or i1 %2624, %2625
  %2628 = or i1 %2627, %2626
  %2629 = select i1 %2628, float 0.000000e+00, float %2621
  %2630 = select i1 %2628, float 0.000000e+00, float %2622
  %2631 = select i1 %2628, float 0.000000e+00, float %2623
  %2632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2633 = extractvalue %dx.types.CBufRet.f32 %2632, 1
  %2634 = fmul fast float %2629, %2633
  %2635 = fmul fast float %2630, %2633
  %2636 = fmul fast float %2631, %2633
  %2637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2638 = extractvalue %dx.types.CBufRet.f32 %2637, 3
  %2639 = fmul fast float %2634, %2638
  %2640 = fmul fast float %2635, %2638
  %2641 = fmul fast float %2636, %2638
  %2642 = fadd fast float %2639, %2617
  %2643 = fadd fast float %2640, %2618
  %2644 = fadd fast float %2641, %2619
  br label %2645

; <label>:2645                                    ; preds = %2616, %313
  %2646 = phi float [ %338, %2616 ], [ %329, %313 ]
  %2647 = phi float [ %339, %2616 ], [ %330, %313 ]
  %2648 = phi float [ %340, %2616 ], [ %331, %313 ]
  %2649 = phi float [ %2642, %2616 ], [ 0.000000e+00, %313 ]
  %2650 = phi float [ %2643, %2616 ], [ 0.000000e+00, %313 ]
  %2651 = phi float [ %2644, %2616 ], [ 0.000000e+00, %313 ]
  %2652 = fmul fast float %2646, %332
  %2653 = fmul fast float %2647, %332
  %2654 = fmul fast float %2648, %332
  %2655 = fmul fast float %2652, %2649
  %2656 = fmul fast float %2653, %2650
  %2657 = fmul fast float %2654, %2651
  br i1 %198, label %3429, label %2658, !dx.controlflow.hints !104

; <label>:2658                                    ; preds = %2645
  %2659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2660 = extractvalue %dx.types.CBufRet.f32 %2659, 0
  %2661 = extractvalue %dx.types.CBufRet.f32 %2659, 1
  %2662 = extractvalue %dx.types.CBufRet.f32 %2659, 2
  %2663 = extractvalue %dx.types.CBufRet.f32 %2659, 3
  %2664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2665 = extractvalue %dx.types.CBufRet.f32 %2664, 0
  %2666 = extractvalue %dx.types.CBufRet.f32 %2664, 1
  %2667 = extractvalue %dx.types.CBufRet.f32 %2664, 2
  %2668 = extractvalue %dx.types.CBufRet.f32 %2664, 3
  %2669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2670 = extractvalue %dx.types.CBufRet.f32 %2669, 0
  %2671 = extractvalue %dx.types.CBufRet.f32 %2669, 1
  %2672 = extractvalue %dx.types.CBufRet.f32 %2669, 2
  %2673 = extractvalue %dx.types.CBufRet.f32 %2669, 3
  %2674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2675 = extractvalue %dx.types.CBufRet.f32 %2674, 0
  %2676 = extractvalue %dx.types.CBufRet.f32 %2674, 1
  %2677 = extractvalue %dx.types.CBufRet.f32 %2674, 2
  %2678 = extractvalue %dx.types.CBufRet.f32 %2674, 3
  %2679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2680 = extractvalue %dx.types.CBufRet.f32 %2679, 3
  %2681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2682 = extractvalue %dx.types.CBufRet.f32 %2681, 3
  %2683 = extractvalue %dx.types.CBufRet.f32 %2681, 0
  %2684 = extractvalue %dx.types.CBufRet.f32 %2681, 1
  %2685 = extractvalue %dx.types.CBufRet.f32 %2681, 2
  %2686 = fcmp fast olt float %2685, -5.000000e-01
  %2687 = fmul fast float %192, %191
  %2688 = fadd fast float %2687, %2663
  %2689 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %2660, float %2661, float %2662)  ; Dot3(ax,ay,az,bx,by,bz)
  %2690 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2691 = extractvalue %dx.types.CBufRet.i32 %2690, 1
  %2692 = and i32 %2691, 1
  %2693 = icmp ne i32 %2692, 0
  %2694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2695 = extractvalue %dx.types.CBufRet.f32 %2694, 2
  %2696 = fcmp fast ogt float %2695, 0.000000e+00
  %2697 = and i1 %2693, %2696
  br i1 %2697, label %2698, label %3104, !dx.controlflow.hints !105

; <label>:2698                                    ; preds = %2658
  %2699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2700 = extractvalue %dx.types.CBufRet.f32 %2699, 3
  %2701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2702 = extractvalue %dx.types.CBufRet.f32 %2701, 2
  %2703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2704 = extractvalue %dx.types.CBufRet.f32 %2703, 2
  %2705 = fsub fast float %2702, %2704
  %2706 = and i32 %2691, 2
  %2707 = extractvalue %dx.types.CBufRet.i32 %2690, 0
  %2708 = call i32 @dx.op.binary.i32(i32 40, i32 %2707, i32 3)  ; UMin(a,b)
  %2709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2710 = extractvalue %dx.types.CBufRet.f32 %2709, 0
  %2711 = extractvalue %dx.types.CBufRet.f32 %2709, 1
  %2712 = extractvalue %dx.types.CBufRet.f32 %2703, 0
  %2713 = extractvalue %dx.types.CBufRet.f32 %2703, 1
  %2714 = fsub fast float %2710, %2712
  %2715 = fsub fast float %2711, %2713
  %2716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2717 = extractvalue %dx.types.CBufRet.f32 %2716, 0
  %2718 = fcmp fast ogt float %2717, 0.000000e+00
  %2719 = fsub fast float -0.000000e+00, %2714
  %2720 = fsub fast float -0.000000e+00, %2715
  %2721 = call float @dx.op.dot2.f32(i32 54, float %193, float %194, float %193, float %194)  ; Dot2(ax,ay,bx,by)
  %2722 = call float @dx.op.dot2.f32(i32 54, float %193, float %194, float %2719, float %2720)  ; Dot2(ax,ay,bx,by)
  %2723 = fmul fast float %2722, 2.000000e+00
  %2724 = call float @dx.op.dot2.f32(i32 54, float %2719, float %2720, float %2719, float %2720)  ; Dot2(ax,ay,bx,by)
  %2725 = fmul fast float %2717, %2717
  %2726 = fsub fast float %2724, %2725
  %2727 = fmul fast float %2723, %2723
  %2728 = fmul fast float %2721, 4.000000e+00
  %2729 = fmul fast float %2728, %2726
  %2730 = fsub fast float %2727, %2729
  %2731 = fcmp fast ogt float %2730, 0.000000e+00
  br i1 %2731, label %2732, label %2747, !dx.controlflow.hints !106

; <label>:2732                                    ; preds = %2698
  %2733 = fcmp fast ogt float %2723, 0.000000e+00
  %2734 = call float @dx.op.unary.f32(i32 24, float %2730)  ; Sqrt(value)
  %2735 = fsub fast float -0.000000e+00, %2734
  %2736 = select i1 %2733, float %2734, float %2735
  %2737 = fadd fast float %2736, %2723
  %2738 = fmul float %2737, -5.000000e-01
  %2739 = fdiv fast float %2738, %2721
  %2740 = call float @dx.op.binary.f32(i32 35, float %2739, float 0.000000e+00)  ; FMax(a,b)
  %2741 = call float @dx.op.binary.f32(i32 36, float %2687, float %2740)  ; FMin(a,b)
  %2742 = fdiv fast float %2726, %2738
  %2743 = call float @dx.op.binary.f32(i32 35, float %2742, float 0.000000e+00)  ; FMax(a,b)
  %2744 = call float @dx.op.binary.f32(i32 36, float %2687, float %2743)  ; FMin(a,b)
  %2745 = call float @dx.op.binary.f32(i32 36, float %2741, float %2744)  ; FMin(a,b)
  %2746 = call float @dx.op.binary.f32(i32 35, float %2741, float %2744)  ; FMax(a,b)
  br label %2747

; <label>:2747                                    ; preds = %2732, %2698
  %2748 = phi float [ %2746, %2732 ], [ -1.000000e+00, %2698 ]
  %2749 = phi float [ %2745, %2732 ], [ -1.000000e+00, %2698 ]
  %2750 = phi i1 [ true, %2732 ], [ false, %2698 ]
  %2751 = and i1 %2718, %2750
  br i1 %2751, label %2752, label %2754, !dx.controlflow.hints !107

; <label>:2752                                    ; preds = %2747
  %2753 = fcmp fast oeq float %2749, %2748
  br i1 %2753, label %3057, label %2755, !dx.controlflow.hints !108

; <label>:2754                                    ; preds = %2747
  br i1 %2718, label %3057, label %2755, !dx.controlflow.hints !109

; <label>:2755                                    ; preds = %2754, %2752
  %2756 = phi float [ %2687, %2754 ], [ %2748, %2752 ]
  %2757 = phi float [ 0.000000e+00, %2754 ], [ %2749, %2752 ]
  %2758 = icmp ne i32 %2706, 0
  %2759 = fmul fast float %2756, %195
  %2760 = fadd fast float %2759, %2700
  %2761 = fmul fast float %2760, %2756
  %2762 = select i1 %2758, float 0.000000e+00, float %2761
  %2763 = fcmp fast oeq float %195, 0.000000e+00
  %2764 = fdiv fast float %2705, %195
  %2765 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2764)  ; FMax(a,b)
  %2766 = select i1 %2763, float %2756, float %2765
  %2767 = call float @dx.op.binary.f32(i32 36, float %2756, float %2766)  ; FMin(a,b)
  %2768 = fcmp fast ogt float %195, 0.000000e+00
  %2769 = fcmp fast olt float %2705, 0.000000e+00
  br i1 %2768, label %2770, label %2827, !dx.controlflow.hints !110

; <label>:2770                                    ; preds = %2755
  %2771 = icmp eq i32 %2706, 0
  br i1 %2769, label %2772, label %2816, !dx.controlflow.hints !111

; <label>:2772                                    ; preds = %2770
  %2773 = select i1 %2771, float %2756, float 0.000000e+00
  %2774 = fsub fast float -0.000000e+00, %2773
  %2775 = call float @dx.op.unary.f32(i32 6, float %2774)  ; FAbs(value)
  %2776 = fmul fast float %2773, %195
  %2777 = fadd fast float %2776, %2700
  %2778 = fmul fast float %2775, %2777
  %2779 = fsub fast float %2762, %2778
  %2780 = fsub fast float %2756, %2775
  %2781 = select i1 %2771, float %2780, float 0.000000e+00
  %2782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2783 = extractvalue %dx.types.CBufRet.f32 %2782, 0
  %2784 = extractvalue %dx.types.CBufRet.f32 %2782, 1
  %2785 = extractvalue %dx.types.CBufRet.f32 %2782, 2
  %2786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2787 = extractvalue %dx.types.CBufRet.f32 %2786, 0
  %2788 = extractvalue %dx.types.CBufRet.f32 %2786, 1
  %2789 = extractvalue %dx.types.CBufRet.f32 %2786, 2
  %2790 = extractvalue %dx.types.CBufRet.f32 %2786, 3
  %2791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2792 = extractvalue %dx.types.CBufRet.f32 %2791, 3
  %2793 = call float @dx.op.binary.f32(i32 36, float %2779, float %2792)  ; FMin(a,b)
  %2794 = fmul fast float %2790, %2781
  %2795 = call float @dx.op.unary.f32(i32 7, float %2794)  ; Saturate(value)
  %2796 = fsub fast float %2787, %2783
  %2797 = fsub fast float %2788, %2784
  %2798 = fsub fast float %2789, %2785
  %2799 = fmul fast float %2795, %2796
  %2800 = fmul fast float %2795, %2797
  %2801 = fmul fast float %2795, %2798
  %2802 = fadd fast float %2799, %2783
  %2803 = fadd fast float %2800, %2784
  %2804 = fadd fast float %2801, %2785
  %2805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2806 = extractvalue %dx.types.CBufRet.f32 %2805, 0
  %2807 = extractvalue %dx.types.CBufRet.f32 %2805, 1
  %2808 = fadd fast float %2807, %2806
  %2809 = call float @dx.op.unary.f32(i32 7, float %2808)  ; Saturate(value)
  %2810 = extractvalue %dx.types.CBufRet.f32 %2805, 2
  %2811 = extractvalue %dx.types.CBufRet.f32 %2805, 3
  %2812 = fadd fast float %2811, %2810
  %2813 = call float @dx.op.unary.f32(i32 7, float %2812)  ; Saturate(value)
  %2814 = fmul fast float %2809, %2793
  %2815 = fmul fast float %2814, %2813
  br label %3057

; <label>:2816                                    ; preds = %2770
  br i1 %2771, label %2817, label %2838, !dx.controlflow.hints !112

; <label>:2817                                    ; preds = %2816
  %2818 = call float @dx.op.binary.f32(i32 36, float %2767, float %2757)  ; FMin(a,b)
  %2819 = fsub fast float %2767, %2818
  %2820 = fsub fast float %2819, %2756
  %2821 = call float @dx.op.unary.f32(i32 6, float %2820)  ; FAbs(value)
  %2822 = fadd fast float %2819, %2756
  %2823 = fmul fast float %2822, %195
  %2824 = fadd fast float %2823, %2700
  %2825 = fmul fast float %2824, %2821
  %2826 = fsub fast float %2762, %2825
  br label %2838

; <label>:2827                                    ; preds = %2755
  br i1 %2769, label %2828, label %2838, !dx.controlflow.hints !113

; <label>:2828                                    ; preds = %2827
  %2829 = call float @dx.op.binary.f32(i32 35, float %2757, float %2767)  ; FMax(a,b)
  %2830 = icmp eq i32 %2706, 0
  %2831 = select i1 %2830, float %2767, float 0.000000e+00
  %2832 = fsub fast float -0.000000e+00, %2831
  %2833 = call float @dx.op.unary.f32(i32 6, float %2832)  ; FAbs(value)
  %2834 = fmul fast float %2831, %195
  %2835 = fadd fast float %2834, %2700
  %2836 = fmul fast float %2833, %2835
  %2837 = fsub fast float %2762, %2836
  br label %2838

; <label>:2838                                    ; preds = %2828, %2827, %2817, %2816
  %2839 = phi float [ %2757, %2816 ], [ %2757, %2817 ], [ %2829, %2828 ], [ %2757, %2827 ]
  %2840 = phi float [ 0.000000e+00, %2816 ], [ %2821, %2817 ], [ %2833, %2828 ], [ 0.000000e+00, %2827 ]
  %2841 = phi float [ %2762, %2816 ], [ %2826, %2817 ], [ %2837, %2828 ], [ %2762, %2827 ]
  %2842 = phi float [ %2767, %2816 ], [ %2767, %2817 ], [ %2756, %2828 ], [ %2756, %2827 ]
  %2843 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 0
  store float -1.000000e+00, float* %2843, align 4, !tbaa !45, !noalias !114
  %2844 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 1
  store float -1.000000e+00, float* %2844, align 4, !tbaa !45, !noalias !114
  %2845 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 2
  store float -1.000000e+00, float* %2845, align 4, !tbaa !45, !noalias !114
  %2846 = getelementptr inbounds [3 x float], [3 x float]* %41, i32 0, i32 0
  store float -1.000000e+00, float* %2846, align 4, !tbaa !45, !noalias !114
  %2847 = getelementptr inbounds [3 x float], [3 x float]* %41, i32 0, i32 1
  store float -1.000000e+00, float* %2847, align 4, !tbaa !45, !noalias !114
  %2848 = getelementptr inbounds [3 x float], [3 x float]* %41, i32 0, i32 2
  store float -1.000000e+00, float* %2848, align 4, !tbaa !45, !noalias !114
  %2849 = icmp sgt i32 %2708, 0
  br i1 %2849, label %2850, label %2911

; <label>:2850                                    ; preds = %2838
  br label %2851

; <label>:2851                                    ; preds = %2900, %2850
  %2852 = phi i32 [ %2901, %2900 ], [ 0, %2850 ]
  %2853 = phi i32 [ %2902, %2900 ], [ 0, %2850 ]
  %2854 = add nuw i32 %2853, 171
  %2855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 %2854)  ; CBufferLoadLegacy(handle,regIndex)
  %2856 = extractvalue %dx.types.CBufRet.f32 %2855, 0
  %2857 = extractvalue %dx.types.CBufRet.f32 %2855, 1
  %2858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2859 = extractvalue %dx.types.CBufRet.f32 %2858, 0
  %2860 = extractvalue %dx.types.CBufRet.f32 %2858, 1
  %2861 = fsub fast float %2856, %2859
  %2862 = fsub fast float %2857, %2860
  %2863 = extractvalue %dx.types.CBufRet.f32 %2855, 2
  %2864 = fsub fast float -0.000000e+00, %2861
  %2865 = fsub fast float -0.000000e+00, %2862
  %2866 = call float @dx.op.dot2.f32(i32 54, float %193, float %194, float %2864, float %2865)  ; Dot2(ax,ay,bx,by)
  %2867 = fmul fast float %2866, 2.000000e+00
  %2868 = call float @dx.op.dot2.f32(i32 54, float %2864, float %2865, float %2864, float %2865)  ; Dot2(ax,ay,bx,by)
  %2869 = fmul fast float %2863, %2863
  %2870 = fsub fast float %2868, %2869
  %2871 = fmul fast float %2867, %2867
  %2872 = fmul fast float %2728, %2870
  %2873 = fsub fast float %2871, %2872
  %2874 = fcmp fast ogt float %2873, 0.000000e+00
  br i1 %2874, label %2875, label %2890, !dx.controlflow.hints !106

; <label>:2875                                    ; preds = %2851
  %2876 = fcmp fast ogt float %2867, 0.000000e+00
  %2877 = call float @dx.op.unary.f32(i32 24, float %2873)  ; Sqrt(value)
  %2878 = fsub fast float -0.000000e+00, %2877
  %2879 = select i1 %2876, float %2877, float %2878
  %2880 = fadd fast float %2879, %2867
  %2881 = fmul float %2880, -5.000000e-01
  %2882 = fdiv fast float %2881, %2721
  %2883 = call float @dx.op.binary.f32(i32 35, float %2882, float 0.000000e+00)  ; FMax(a,b)
  %2884 = call float @dx.op.binary.f32(i32 36, float %2756, float %2883)  ; FMin(a,b)
  %2885 = fdiv fast float %2870, %2881
  %2886 = call float @dx.op.binary.f32(i32 35, float %2885, float 0.000000e+00)  ; FMax(a,b)
  %2887 = call float @dx.op.binary.f32(i32 36, float %2756, float %2886)  ; FMin(a,b)
  %2888 = call float @dx.op.binary.f32(i32 36, float %2884, float %2887)  ; FMin(a,b)
  %2889 = call float @dx.op.binary.f32(i32 35, float %2884, float %2887)  ; FMax(a,b)
  br label %2890

; <label>:2890                                    ; preds = %2875, %2851
  %2891 = phi float [ %2889, %2875 ], [ -1.000000e+00, %2851 ]
  %2892 = phi float [ %2888, %2875 ], [ -1.000000e+00, %2851 ]
  %2893 = phi i1 [ true, %2875 ], [ false, %2851 ]
  br i1 %2893, label %2894, label %2900, !dx.controlflow.hints !120

; <label>:2894                                    ; preds = %2890
  %2895 = call float @dx.op.binary.f32(i32 35, float %2839, float %2892)  ; FMax(a,b)
  %2896 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 %2853
  store float %2895, float* %2896, align 4, !tbaa !45, !noalias !114
  %2897 = call float @dx.op.binary.f32(i32 35, float %2839, float %2891)  ; FMax(a,b)
  %2898 = getelementptr inbounds [3 x float], [3 x float]* %41, i32 0, i32 %2853
  store float %2897, float* %2898, align 4, !tbaa !45, !noalias !114
  %2899 = add nsw i32 %2852, 1
  br label %2900

; <label>:2900                                    ; preds = %2894, %2890
  %2901 = phi i32 [ %2899, %2894 ], [ %2852, %2890 ]
  %2902 = add nuw nsw i32 %2853, 1
  %2903 = icmp eq i32 %2902, %2708
  br i1 %2903, label %2904, label %2851

; <label>:2904                                    ; preds = %2900
  %2905 = load float, float* %2845, align 4, !tbaa !45, !alias.scope !121, !noalias !124
  %2906 = load float, float* %2844, align 4, !tbaa !45, !alias.scope !127, !noalias !128
  %2907 = load float, float* %2843, align 4, !tbaa !45, !alias.scope !129, !noalias !130
  %2908 = load float, float* %2848, align 4, !tbaa !45, !alias.scope !131, !noalias !134
  %2909 = load float, float* %2847, align 4, !tbaa !45, !alias.scope !137, !noalias !138
  %2910 = load float, float* %2846, align 4, !tbaa !45, !alias.scope !139, !noalias !140
  br label %2911

; <label>:2911                                    ; preds = %2904, %2838
  %2912 = phi float [ -1.000000e+00, %2838 ], [ %2910, %2904 ]
  %2913 = phi float [ -1.000000e+00, %2838 ], [ %2909, %2904 ]
  %2914 = phi float [ -1.000000e+00, %2838 ], [ %2908, %2904 ]
  %2915 = phi float [ -1.000000e+00, %2838 ], [ %2907, %2904 ]
  %2916 = phi float [ -1.000000e+00, %2838 ], [ %2906, %2904 ]
  %2917 = phi float [ -1.000000e+00, %2838 ], [ %2905, %2904 ]
  %2918 = phi i32 [ 0, %2838 ], [ %2901, %2904 ]
  %2919 = call float @dx.op.binary.f32(i32 36, float %2916, float %2917)  ; FMin(a,b)
  %2920 = call float @dx.op.binary.f32(i32 36, float %2915, float %2919)  ; FMin(a,b)
  %2921 = call float @dx.op.binary.f32(i32 35, float %2915, float %2916)  ; FMax(a,b)
  %2922 = call float @dx.op.binary.f32(i32 36, float %2921, float %2917)  ; FMin(a,b)
  %2923 = call float @dx.op.binary.f32(i32 36, float %2915, float %2916)  ; FMin(a,b)
  %2924 = call float @dx.op.binary.f32(i32 35, float %2923, float %2922)  ; FMax(a,b)
  %2925 = call float @dx.op.binary.f32(i32 35, float %2916, float %2917)  ; FMax(a,b)
  %2926 = call float @dx.op.binary.f32(i32 35, float %2915, float %2925)  ; FMax(a,b)
  store float %2920, float* %2843, align 4, !tbaa !45, !alias.scope !129, !noalias !130
  store float %2924, float* %2844, align 4, !tbaa !45, !alias.scope !127, !noalias !128
  store float %2926, float* %2845, align 4, !tbaa !45, !alias.scope !121, !noalias !124
  %2927 = call float @dx.op.binary.f32(i32 36, float %2913, float %2914)  ; FMin(a,b)
  %2928 = call float @dx.op.binary.f32(i32 36, float %2912, float %2927)  ; FMin(a,b)
  %2929 = call float @dx.op.binary.f32(i32 35, float %2912, float %2913)  ; FMax(a,b)
  %2930 = call float @dx.op.binary.f32(i32 36, float %2929, float %2914)  ; FMin(a,b)
  %2931 = call float @dx.op.binary.f32(i32 36, float %2912, float %2913)  ; FMin(a,b)
  %2932 = call float @dx.op.binary.f32(i32 35, float %2931, float %2930)  ; FMax(a,b)
  %2933 = call float @dx.op.binary.f32(i32 35, float %2913, float %2914)  ; FMax(a,b)
  %2934 = call float @dx.op.binary.f32(i32 35, float %2912, float %2933)  ; FMax(a,b)
  store float %2928, float* %2846, align 4, !tbaa !45, !alias.scope !139, !noalias !140
  store float %2932, float* %2847, align 4, !tbaa !45, !alias.scope !137, !noalias !138
  store float %2934, float* %2848, align 4, !tbaa !45, !alias.scope !131, !noalias !134
  %2935 = sub nsw i32 3, %2918
  %2936 = icmp sgt i32 %2935, 2
  br i1 %2936, label %2937, label %2975, !dx.controlflow.hints !141

; <label>:2937                                    ; preds = %2911
  %2938 = icmp eq i32 %2706, 0
  %2939 = fsub fast float %2756, %2840
  %2940 = select i1 %2938, float %2939, float %2840
  %2941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2942 = extractvalue %dx.types.CBufRet.f32 %2941, 0
  %2943 = extractvalue %dx.types.CBufRet.f32 %2941, 1
  %2944 = extractvalue %dx.types.CBufRet.f32 %2941, 2
  %2945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2946 = extractvalue %dx.types.CBufRet.f32 %2945, 0
  %2947 = extractvalue %dx.types.CBufRet.f32 %2945, 1
  %2948 = extractvalue %dx.types.CBufRet.f32 %2945, 2
  %2949 = extractvalue %dx.types.CBufRet.f32 %2945, 3
  %2950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2951 = extractvalue %dx.types.CBufRet.f32 %2950, 3
  %2952 = call float @dx.op.binary.f32(i32 36, float %2841, float %2951)  ; FMin(a,b)
  %2953 = fmul fast float %2949, %2940
  %2954 = call float @dx.op.unary.f32(i32 7, float %2953)  ; Saturate(value)
  %2955 = fsub fast float %2946, %2942
  %2956 = fsub fast float %2947, %2943
  %2957 = fsub fast float %2948, %2944
  %2958 = fmul fast float %2954, %2955
  %2959 = fmul fast float %2954, %2956
  %2960 = fmul fast float %2954, %2957
  %2961 = fadd fast float %2958, %2942
  %2962 = fadd fast float %2959, %2943
  %2963 = fadd fast float %2960, %2944
  %2964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2965 = extractvalue %dx.types.CBufRet.f32 %2964, 0
  %2966 = extractvalue %dx.types.CBufRet.f32 %2964, 1
  %2967 = fadd fast float %2966, %2965
  %2968 = call float @dx.op.unary.f32(i32 7, float %2967)  ; Saturate(value)
  %2969 = extractvalue %dx.types.CBufRet.f32 %2964, 2
  %2970 = extractvalue %dx.types.CBufRet.f32 %2964, 3
  %2971 = fadd fast float %2970, %2969
  %2972 = call float @dx.op.unary.f32(i32 7, float %2971)  ; Saturate(value)
  %2973 = fmul fast float %2968, %2952
  %2974 = fmul fast float %2973, %2972
  br label %3057

; <label>:2975                                    ; preds = %2911
  %2976 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 %2935
  %2977 = load float, float* %2976, align 4, !tbaa !45, !noalias !114
  %2978 = fcmp fast olt float %2977, %2842
  %2979 = icmp sgt i32 %2918, 0
  %2980 = and i1 %2979, %2978
  br i1 %2980, label %2981, label %3018

; <label>:2981                                    ; preds = %2975
  br label %2982

; <label>:2982                                    ; preds = %3011, %2981
  %2983 = phi float [ %3012, %3011 ], [ %2840, %2981 ]
  %2984 = phi float [ %3013, %3011 ], [ %2841, %2981 ]
  %2985 = phi float [ %2993, %3011 ], [ %2977, %2981 ]
  %2986 = phi i32 [ %2990, %3011 ], [ %2935, %2981 ]
  %2987 = getelementptr inbounds [3 x float], [3 x float]* %41, i32 0, i32 %2986
  %2988 = load float, float* %2987, align 4, !tbaa !45, !noalias !114
  %2989 = icmp slt i32 %2986, 2
  %2990 = add nsw i32 %2986, 1
  %2991 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 %2990
  %2992 = load float, float* %2991, align 4, !tbaa !45, !noalias !114
  %2993 = select i1 %2989, float %2992, float %2756
  %2994 = call float @dx.op.binary.f32(i32 36, float %2993, float %2988)  ; FMin(a,b)
  %2995 = call float @dx.op.binary.f32(i32 36, float %2842, float %2994)  ; FMin(a,b)
  %2996 = icmp eq i32 %2706, 0
  %2997 = fadd fast float %2995, %2985
  %2998 = fmul fast float %2997, %195
  %2999 = fadd fast float %2998, %2700
  br i1 %2996, label %3005, label %3000, !dx.controlflow.hints !142

; <label>:3000                                    ; preds = %2982
  %3001 = fsub fast float %2995, %2985
  %3002 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3001)  ; FMax(a,b)
  %3003 = fmul fast float %3002, %2999
  %3004 = fadd fast float %3003, %2984
  br label %3011

; <label>:3005                                    ; preds = %2982
  %3006 = fsub fast float %2985, %2995
  %3007 = call float @dx.op.unary.f32(i32 6, float %3006)  ; FAbs(value)
  %3008 = fadd fast float %3007, %2983
  %3009 = fmul fast float %3007, %2999
  %3010 = fsub fast float %2984, %3009
  br label %3011

; <label>:3011                                    ; preds = %3005, %3000
  %3012 = phi float [ %3002, %3000 ], [ %3008, %3005 ]
  %3013 = phi float [ %3004, %3000 ], [ %3010, %3005 ]
  %3014 = fcmp fast olt float %2993, %2842
  %3015 = icmp slt i32 %2990, 3
  %3016 = and i1 %3015, %3014
  br i1 %3016, label %2982, label %3017

; <label>:3017                                    ; preds = %3011
  br label %3018

; <label>:3018                                    ; preds = %3017, %2975
  %3019 = phi float [ %2840, %2975 ], [ %3012, %3017 ]
  %3020 = phi float [ %2841, %2975 ], [ %3013, %3017 ]
  %3021 = fsub fast float %2756, %3019
  %3022 = select i1 %2758, float %3019, float %3021
  %3023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3024 = extractvalue %dx.types.CBufRet.f32 %3023, 0
  %3025 = extractvalue %dx.types.CBufRet.f32 %3023, 1
  %3026 = extractvalue %dx.types.CBufRet.f32 %3023, 2
  %3027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3028 = extractvalue %dx.types.CBufRet.f32 %3027, 0
  %3029 = extractvalue %dx.types.CBufRet.f32 %3027, 1
  %3030 = extractvalue %dx.types.CBufRet.f32 %3027, 2
  %3031 = extractvalue %dx.types.CBufRet.f32 %3027, 3
  %3032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3033 = extractvalue %dx.types.CBufRet.f32 %3032, 3
  %3034 = call float @dx.op.binary.f32(i32 36, float %3020, float %3033)  ; FMin(a,b)
  %3035 = fmul fast float %3031, %3022
  %3036 = call float @dx.op.unary.f32(i32 7, float %3035)  ; Saturate(value)
  %3037 = fsub fast float %3028, %3024
  %3038 = fsub fast float %3029, %3025
  %3039 = fsub fast float %3030, %3026
  %3040 = fmul fast float %3036, %3037
  %3041 = fmul fast float %3036, %3038
  %3042 = fmul fast float %3036, %3039
  %3043 = fadd fast float %3040, %3024
  %3044 = fadd fast float %3041, %3025
  %3045 = fadd fast float %3042, %3026
  %3046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3047 = extractvalue %dx.types.CBufRet.f32 %3046, 0
  %3048 = extractvalue %dx.types.CBufRet.f32 %3046, 1
  %3049 = fadd fast float %3048, %3047
  %3050 = call float @dx.op.unary.f32(i32 7, float %3049)  ; Saturate(value)
  %3051 = extractvalue %dx.types.CBufRet.f32 %3046, 2
  %3052 = extractvalue %dx.types.CBufRet.f32 %3046, 3
  %3053 = fadd fast float %3052, %3051
  %3054 = call float @dx.op.unary.f32(i32 7, float %3053)  ; Saturate(value)
  %3055 = fmul fast float %3050, %3034
  %3056 = fmul fast float %3055, %3054
  br label %3057

; <label>:3057                                    ; preds = %3018, %2937, %2772, %2754, %2752
  %3058 = phi float [ %2781, %2772 ], [ %2940, %2937 ], [ %3022, %3018 ], [ 0.000000e+00, %2752 ], [ 0.000000e+00, %2754 ]
  %3059 = phi float [ %2815, %2772 ], [ %2974, %2937 ], [ %3056, %3018 ], [ 0.000000e+00, %2752 ], [ 0.000000e+00, %2754 ]
  %3060 = phi float [ %2802, %2772 ], [ %2961, %2937 ], [ %3043, %3018 ], [ 0.000000e+00, %2752 ], [ 0.000000e+00, %2754 ]
  %3061 = phi float [ %2803, %2772 ], [ %2962, %2937 ], [ %3044, %3018 ], [ 0.000000e+00, %2752 ], [ 0.000000e+00, %2754 ]
  %3062 = phi float [ %2804, %2772 ], [ %2963, %2937 ], [ %3045, %3018 ], [ 0.000000e+00, %2752 ], [ 0.000000e+00, %2754 ]
  %3063 = fmul fast float %2695, %3059
  %3064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3065 = extractvalue %dx.types.CBufRet.f32 %3064, 2
  %3066 = fsub fast float %2702, %3065
  %3067 = fcmp fast olt float %3063, -2.000000e+01
  %3068 = call float @dx.op.unary.f32(i32 21, float %3063)  ; Exp(value)
  %3069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3070 = extractvalue %dx.types.CBufRet.f32 %3069, 2
  %3071 = extractvalue %dx.types.CBufRet.f32 %3069, 3
  %3072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3073 = extractvalue %dx.types.CBufRet.f32 %3072, 2
  %3074 = fmul fast float %3071, %3066
  %3075 = call float @dx.op.unary.f32(i32 7, float %3074)  ; Saturate(value)
  %3076 = fsub fast float 1.000000e+00, %3075
  %3077 = fmul fast float %195, 5.000000e-01
  %3078 = fadd fast float %3077, 5.000000e-01
  %3079 = call float @dx.op.unary.f32(i32 7, float %3078)  ; Saturate(value)
  %3080 = fsub fast float 1.000000e+00, %3079
  %3081 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3076)  ; FMax(a,b)
  %3082 = fdiv fast float %3080, %3081
  %3083 = fsub fast float %3066, %183
  %3084 = call float @dx.op.unary.f32(i32 6, float %3083)  ; FAbs(value)
  %3085 = fmul fast float %3084, %3070
  %3086 = call float @dx.op.unary.f32(i32 7, float %3082)  ; Saturate(value)
  %3087 = fsub fast float 1.000000e+00, %3085
  %3088 = fmul fast float %3087, %3086
  %3089 = fadd fast float %3088, %3085
  %3090 = fmul fast float %3073, %3066
  %3091 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  %3092 = fsub fast float 1.000000e+00, %3089
  %3093 = fmul fast float %3092, %3091
  %3094 = fadd fast float %3093, %3089
  %3095 = call float @dx.op.unary.f32(i32 7, float %3094)  ; Saturate(value)
  %3096 = fadd fast float %3068, -1.000000e+00
  %3097 = select i1 %3067, float -1.000000e+00, float %3096
  %3098 = fmul fast float %3095, %3097
  %3099 = fadd fast float %3098, 1.000000e+00
  %3100 = fsub fast float -0.000000e+00, %3098
  %3101 = fmul fast float %3060, %3100
  %3102 = fmul fast float %3061, %3100
  %3103 = fmul fast float %3062, %3100
  br label %3104

; <label>:3104                                    ; preds = %3057, %2658
  %3105 = phi float [ %3058, %3057 ], [ 0.000000e+00, %2658 ]
  %3106 = phi float [ %3099, %3057 ], [ 1.000000e+00, %2658 ]
  %3107 = phi float [ %3101, %3057 ], [ 0.000000e+00, %2658 ]
  %3108 = phi float [ %3102, %3057 ], [ 0.000000e+00, %2658 ]
  %3109 = phi float [ %3103, %3057 ], [ 0.000000e+00, %2658 ]
  %3110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3111 = extractvalue %dx.types.CBufRet.f32 %3110, 1
  %3112 = fsub fast float 1.000000e+00, %3106
  %3113 = fmul fast float %3112, %2688
  %3114 = fmul fast float %3113, %3111
  %3115 = fsub fast float %2688, %3114
  br i1 %2686, label %3116, label %3145, !dx.controlflow.hints !143

; <label>:3116                                    ; preds = %3104
  %3117 = fmul fast float %2689, %2683
  %3118 = fadd fast float %3117, %2684
  %3119 = call float @dx.op.unary.f32(i32 7, float %3118)  ; Saturate(value)
  %3120 = fmul fast float %2665, %3115
  %3121 = fsub fast float -0.000000e+00, %3120
  %3122 = fmul fast float %2666, %3115
  %3123 = fsub fast float -0.000000e+00, %3122
  %3124 = call float @dx.op.unary.f32(i32 21, float %3121)  ; Exp(value)
  %3125 = call float @dx.op.unary.f32(i32 21, float %3123)  ; Exp(value)
  %3126 = call float @dx.op.binary.f32(i32 35, float %2673, float %3124)  ; FMax(a,b)
  %3127 = call float @dx.op.binary.f32(i32 35, float %2673, float %3125)  ; FMax(a,b)
  %3128 = fsub fast float %3127, %3126
  %3129 = fmul fast float %3128, %3119
  %3130 = fadd fast float %3129, %3126
  %3131 = call float @dx.op.unary.f32(i32 7, float %3130)  ; Saturate(value)
  %3132 = fsub fast float %2670, %2675
  %3133 = fsub fast float %2671, %2676
  %3134 = fsub fast float %2672, %2677
  %3135 = fmul fast float %3119, %3132
  %3136 = fmul fast float %3119, %3133
  %3137 = fmul fast float %3119, %3134
  %3138 = fadd fast float %3135, %2675
  %3139 = fadd fast float %3136, %2676
  %3140 = fadd fast float %3137, %2677
  %3141 = fsub fast float 1.000000e+00, %3131
  %3142 = fmul fast float %3141, %3138
  %3143 = fmul fast float %3141, %3139
  %3144 = fmul fast float %3141, %3140
  br label %3204

; <label>:3145                                    ; preds = %3104
  %3146 = fmul fast float %3115, %2682
  %3147 = call float @dx.op.unary.f32(i32 7, float %3146)  ; Saturate(value)
  %3148 = fsub fast float 2.000000e+00, %3147
  %3149 = fmul fast float %3147, 9.921875e-01
  %3150 = fmul fast float %3149, %3148
  %3151 = fadd fast float %3150, 3.906250e-03
  %3152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3151, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3153 = extractvalue %dx.types.ResRet.f32 %3152, 0
  %3154 = fsub fast float %3147, %3153
  %3155 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3154)  ; FMax(a,b)
  %3156 = fmul fast float %2668, %183
  %3157 = call float @dx.op.unary.f32(i32 6, float %3156)  ; FAbs(value)
  %3158 = fcmp fast ogt float %3157, 0x3EB0C6F7A0000000
  br i1 %3158, label %3159, label %3165, !dx.controlflow.hints !144

; <label>:3159                                    ; preds = %3145
  %3160 = fmul fast float %3156, 0xBFF7154760000000
  %3161 = call float @dx.op.unary.f32(i32 21, float %3160)  ; Exp(value)
  %3162 = fsub fast float 1.000000e+00, %3161
  %3163 = fdiv fast float %3162, %3156
  %3164 = fmul fast float %3163, %2678
  br label %3165

; <label>:3165                                    ; preds = %3159, %3145
  %3166 = phi float [ %3164, %3159 ], [ %2678, %3145 ]
  %3167 = fadd fast float %3166, %2680
  %3168 = fmul fast float %3167, %3155
  %3169 = fmul fast float %2665, %3168
  %3170 = fsub fast float -0.000000e+00, %3169
  %3171 = fmul fast float %2666, %3168
  %3172 = fsub fast float -0.000000e+00, %3171
  %3173 = fmul fast float %2667, %3168
  %3174 = fsub fast float -0.000000e+00, %3173
  %3175 = call float @dx.op.unary.f32(i32 21, float %3170)  ; Exp(value)
  %3176 = call float @dx.op.unary.f32(i32 21, float %3172)  ; Exp(value)
  %3177 = call float @dx.op.unary.f32(i32 21, float %3174)  ; Exp(value)
  %3178 = fmul fast float %2689, %2689
  %3179 = fadd fast float %3178, 1.000000e+00
  %3180 = fmul fast float %3179, 0x3FAE8EC8A0000000
  %3181 = fmul fast float %3180, %2675
  %3182 = fmul fast float %3180, %2676
  %3183 = fmul fast float %3180, %2677
  %3184 = fmul fast float %2689, %2673
  %3185 = fsub fast float 1.000000e+00, %3184
  %3186 = fmul fast float %2673, %2673
  %3187 = fsub fast float 1.000000e+00, %3186
  %3188 = fmul fast float %3187, 0x3FB45F3060000000
  %3189 = fmul fast float %3185, %3185
  %3190 = fdiv fast float 1.000000e+00, %3189
  %3191 = fmul fast float %3188, %3190
  %3192 = fmul fast float %3191, %2670
  %3193 = fmul fast float %3191, %2671
  %3194 = fmul fast float %3191, %2672
  %3195 = fadd fast float %3192, %3181
  %3196 = fadd fast float %3193, %3182
  %3197 = fadd fast float %3194, %3183
  %3198 = fsub fast float 1.000000e+00, %3175
  %3199 = fsub fast float 1.000000e+00, %3176
  %3200 = fsub fast float 1.000000e+00, %3177
  %3201 = fmul fast float %3195, %3198
  %3202 = fmul fast float %3196, %3199
  %3203 = fmul fast float %3197, %3200
  br label %3204

; <label>:3204                                    ; preds = %3165, %3116
  %3205 = phi float [ %3142, %3116 ], [ %3201, %3165 ]
  %3206 = phi float [ %3143, %3116 ], [ %3202, %3165 ]
  %3207 = phi float [ %3144, %3116 ], [ %3203, %3165 ]
  %3208 = phi float [ %3131, %3116 ], [ %3175, %3165 ]
  %3209 = phi float [ %3131, %3116 ], [ %3176, %3165 ]
  %3210 = phi float [ %3131, %3116 ], [ %3177, %3165 ]
  br i1 %2697, label %3211, label %3409, !dx.controlflow.hints !145

; <label>:3211                                    ; preds = %3204
  %3212 = extractvalue %dx.types.CBufRet.f32 %3110, 0
  %3213 = fmul fast float %3212, %3112
  %3214 = fsub fast float %3107, %3205
  %3215 = fsub fast float %3108, %3206
  %3216 = fsub fast float %3109, %3207
  %3217 = fmul fast float %3213, %3214
  %3218 = fmul fast float %3213, %3215
  %3219 = fmul fast float %3213, %3216
  %3220 = fadd fast float %3217, %3205
  %3221 = fadd fast float %3218, %3206
  %3222 = fadd fast float %3219, %3207
  %3223 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3208)  ; FMax(a,b)
  %3224 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3209)  ; FMax(a,b)
  %3225 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3210)  ; FMax(a,b)
  %3226 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3106)  ; FMax(a,b)
  %3227 = call float @dx.op.binary.f32(i32 35, float %3105, float %3115)  ; FMax(a,b)
  %3228 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3227)  ; FMax(a,b)
  %3229 = fdiv fast float %3105, %3228
  %3230 = call float @dx.op.unary.f32(i32 7, float %3229)  ; Saturate(value)
  %3231 = fdiv fast float %3115, %3228
  %3232 = call float @dx.op.unary.f32(i32 7, float %3231)  ; Saturate(value)
  %3233 = fcmp fast une float %3226, 1.000000e+00
  br i1 %3233, label %3234, label %3247, !dx.controlflow.hints !146

; <label>:3234                                    ; preds = %3211
  %3235 = call float @dx.op.unary.f32(i32 23, float %3226)  ; Log(value)
  %3236 = fmul fast float %3235, 0x3FE62E4300000000
  %3237 = fmul fast float %3107, %3236
  %3238 = fsub fast float -0.000000e+00, %3237
  %3239 = fmul fast float %3108, %3236
  %3240 = fsub fast float -0.000000e+00, %3239
  %3241 = fmul fast float %3109, %3236
  %3242 = fsub fast float -0.000000e+00, %3241
  %3243 = fsub fast float 1.000000e+00, %3226
  %3244 = fdiv fast float %3238, %3243
  %3245 = fdiv fast float %3240, %3243
  %3246 = fdiv fast float %3242, %3243
  br label %3247

; <label>:3247                                    ; preds = %3234, %3211
  %3248 = phi float [ %3244, %3234 ], [ %3107, %3211 ]
  %3249 = phi float [ %3245, %3234 ], [ %3108, %3211 ]
  %3250 = phi float [ %3246, %3234 ], [ %3109, %3211 ]
  %3251 = phi float [ %3236, %3234 ], [ 0.000000e+00, %3211 ]
  %3252 = fcmp fast une float %3223, 1.000000e+00
  br i1 %3252, label %3253, label %3260, !dx.controlflow.hints !147

; <label>:3253                                    ; preds = %3247
  %3254 = call float @dx.op.unary.f32(i32 23, float %3223)  ; Log(value)
  %3255 = fmul fast float %3254, 0x3FE62E4300000000
  %3256 = fmul fast float %3220, %3255
  %3257 = fsub fast float -0.000000e+00, %3256
  %3258 = fsub fast float 1.000000e+00, %3223
  %3259 = fdiv fast float %3257, %3258
  br label %3260

; <label>:3260                                    ; preds = %3253, %3247
  %3261 = phi float [ %3259, %3253 ], [ %3220, %3247 ]
  %3262 = phi float [ %3255, %3253 ], [ 0.000000e+00, %3247 ]
  %3263 = fcmp fast une float %3224, 1.000000e+00
  br i1 %3263, label %3264, label %3271, !dx.controlflow.hints !147

; <label>:3264                                    ; preds = %3260
  %3265 = call float @dx.op.unary.f32(i32 23, float %3224)  ; Log(value)
  %3266 = fmul fast float %3265, 0x3FE62E4300000000
  %3267 = fmul fast float %3221, %3266
  %3268 = fsub fast float -0.000000e+00, %3267
  %3269 = fsub fast float 1.000000e+00, %3224
  %3270 = fdiv fast float %3268, %3269
  br label %3271

; <label>:3271                                    ; preds = %3264, %3260
  %3272 = phi float [ %3270, %3264 ], [ %3221, %3260 ]
  %3273 = phi float [ %3266, %3264 ], [ 0.000000e+00, %3260 ]
  %3274 = fcmp fast une float %3225, 1.000000e+00
  br i1 %3274, label %3275, label %3282, !dx.controlflow.hints !147

; <label>:3275                                    ; preds = %3271
  %3276 = call float @dx.op.unary.f32(i32 23, float %3225)  ; Log(value)
  %3277 = fmul fast float %3276, 0x3FE62E4300000000
  %3278 = fmul fast float %3222, %3277
  %3279 = fsub fast float -0.000000e+00, %3278
  %3280 = fsub fast float 1.000000e+00, %3225
  %3281 = fdiv fast float %3279, %3280
  br label %3282

; <label>:3282                                    ; preds = %3275, %3271
  %3283 = phi float [ %3281, %3275 ], [ %3222, %3271 ]
  %3284 = phi float [ %3277, %3275 ], [ 0.000000e+00, %3271 ]
  %3285 = fmul fast float %3248, %3232
  %3286 = fmul fast float %3249, %3232
  %3287 = fmul fast float %3250, %3232
  %3288 = fmul fast float %3251, %3232
  %3289 = fmul fast float %3261, %3230
  %3290 = fmul fast float %3272, %3230
  %3291 = fmul fast float %3283, %3230
  %3292 = fmul fast float %3262, %3230
  %3293 = fmul fast float %3273, %3230
  %3294 = fmul fast float %3284, %3230
  %3295 = fadd fast float %3289, %3285
  %3296 = fadd fast float %3290, %3286
  %3297 = fadd fast float %3291, %3287
  %3298 = fadd fast float %3292, %3288
  %3299 = fadd fast float %3293, %3288
  %3300 = fadd fast float %3294, %3288
  %3301 = fcmp fast une float %3298, 0.000000e+00
  br i1 %3301, label %3302, label %3309, !dx.controlflow.hints !148

; <label>:3302                                    ; preds = %3282
  %3303 = fmul fast float %3298, 0x3FF7154760000000
  %3304 = call float @dx.op.unary.f32(i32 21, float %3303)  ; Exp(value)
  %3305 = fsub fast float 1.000000e+00, %3304
  %3306 = fmul fast float %3295, %3305
  %3307 = fsub fast float -0.000000e+00, %3306
  %3308 = fdiv fast float %3307, %3298
  br label %3309

; <label>:3309                                    ; preds = %3302, %3282
  %3310 = phi float [ %3304, %3302 ], [ 1.000000e+00, %3282 ]
  %3311 = phi float [ %3308, %3302 ], [ %3295, %3282 ]
  %3312 = fcmp fast une float %3299, 0.000000e+00
  br i1 %3312, label %3313, label %3320, !dx.controlflow.hints !148

; <label>:3313                                    ; preds = %3309
  %3314 = fmul fast float %3299, 0x3FF7154760000000
  %3315 = call float @dx.op.unary.f32(i32 21, float %3314)  ; Exp(value)
  %3316 = fsub fast float 1.000000e+00, %3315
  %3317 = fmul fast float %3296, %3316
  %3318 = fsub fast float -0.000000e+00, %3317
  %3319 = fdiv fast float %3318, %3299
  br label %3320

; <label>:3320                                    ; preds = %3313, %3309
  %3321 = phi float [ %3315, %3313 ], [ 1.000000e+00, %3309 ]
  %3322 = phi float [ %3319, %3313 ], [ %3296, %3309 ]
  %3323 = fcmp fast une float %3300, 0.000000e+00
  br i1 %3323, label %3324, label %3331, !dx.controlflow.hints !148

; <label>:3324                                    ; preds = %3320
  %3325 = fmul fast float %3300, 0x3FF7154760000000
  %3326 = call float @dx.op.unary.f32(i32 21, float %3325)  ; Exp(value)
  %3327 = fsub fast float 1.000000e+00, %3326
  %3328 = fmul fast float %3297, %3327
  %3329 = fsub fast float -0.000000e+00, %3328
  %3330 = fdiv fast float %3329, %3300
  br label %3331

; <label>:3331                                    ; preds = %3324, %3320
  %3332 = phi float [ %3326, %3324 ], [ 1.000000e+00, %3320 ]
  %3333 = phi float [ %3330, %3324 ], [ %3297, %3320 ]
  %3334 = fcmp fast ogt float %3230, %3232
  br i1 %3334, label %3335, label %3355, !dx.controlflow.hints !149

; <label>:3335                                    ; preds = %3331
  %3336 = fsub fast float 1.000000e+00, %3232
  %3337 = fmul fast float %3248, %3336
  %3338 = fmul fast float %3249, %3336
  %3339 = fmul fast float %3250, %3336
  %3340 = fmul fast float %3251, %3336
  %3341 = fcmp fast une float %3340, 0.000000e+00
  br i1 %3341, label %3342, label %3393, !dx.controlflow.hints !150

; <label>:3342                                    ; preds = %3335
  %3343 = fmul fast float %3340, 0x3FF7154760000000
  %3344 = call float @dx.op.unary.f32(i32 21, float %3343)  ; Exp(value)
  %3345 = fsub fast float 1.000000e+00, %3344
  %3346 = fmul fast float %3337, %3345
  %3347 = fsub fast float -0.000000e+00, %3346
  %3348 = fmul fast float %3338, %3345
  %3349 = fsub fast float -0.000000e+00, %3348
  %3350 = fmul fast float %3339, %3345
  %3351 = fsub fast float -0.000000e+00, %3350
  %3352 = fdiv fast float %3347, %3340
  %3353 = fdiv fast float %3349, %3340
  %3354 = fdiv fast float %3351, %3340
  br label %3393

; <label>:3355                                    ; preds = %3331
  %3356 = fsub fast float 1.000000e+00, %3230
  %3357 = fmul fast float %3261, %3356
  %3358 = fmul fast float %3272, %3356
  %3359 = fmul fast float %3283, %3356
  %3360 = fmul fast float %3262, %3356
  %3361 = fmul fast float %3273, %3356
  %3362 = fmul fast float %3284, %3356
  %3363 = fcmp fast une float %3360, 0.000000e+00
  br i1 %3363, label %3364, label %3371, !dx.controlflow.hints !148

; <label>:3364                                    ; preds = %3355
  %3365 = fmul fast float %3360, 0x3FF7154760000000
  %3366 = call float @dx.op.unary.f32(i32 21, float %3365)  ; Exp(value)
  %3367 = fsub fast float 1.000000e+00, %3366
  %3368 = fmul fast float %3357, %3367
  %3369 = fsub fast float -0.000000e+00, %3368
  %3370 = fdiv fast float %3369, %3360
  br label %3371

; <label>:3371                                    ; preds = %3364, %3355
  %3372 = phi float [ %3370, %3364 ], [ %3357, %3355 ]
  %3373 = phi float [ %3366, %3364 ], [ 1.000000e+00, %3355 ]
  %3374 = fcmp fast une float %3361, 0.000000e+00
  br i1 %3374, label %3375, label %3382, !dx.controlflow.hints !148

; <label>:3375                                    ; preds = %3371
  %3376 = fmul fast float %3361, 0x3FF7154760000000
  %3377 = call float @dx.op.unary.f32(i32 21, float %3376)  ; Exp(value)
  %3378 = fsub fast float 1.000000e+00, %3377
  %3379 = fmul fast float %3358, %3378
  %3380 = fsub fast float -0.000000e+00, %3379
  %3381 = fdiv fast float %3380, %3361
  br label %3382

; <label>:3382                                    ; preds = %3375, %3371
  %3383 = phi float [ %3381, %3375 ], [ %3358, %3371 ]
  %3384 = phi float [ %3377, %3375 ], [ 1.000000e+00, %3371 ]
  %3385 = fcmp fast une float %3362, 0.000000e+00
  br i1 %3385, label %3386, label %3393, !dx.controlflow.hints !148

; <label>:3386                                    ; preds = %3382
  %3387 = fmul fast float %3362, 0x3FF7154760000000
  %3388 = call float @dx.op.unary.f32(i32 21, float %3387)  ; Exp(value)
  %3389 = fsub fast float 1.000000e+00, %3388
  %3390 = fmul fast float %3359, %3389
  %3391 = fsub fast float -0.000000e+00, %3390
  %3392 = fdiv fast float %3391, %3362
  br label %3393

; <label>:3393                                    ; preds = %3386, %3382, %3342, %3335
  %3394 = phi float [ %3392, %3386 ], [ %3354, %3342 ], [ %3339, %3335 ], [ %3359, %3382 ]
  %3395 = phi float [ %3383, %3386 ], [ %3353, %3342 ], [ %3338, %3335 ], [ %3383, %3382 ]
  %3396 = phi float [ %3372, %3386 ], [ %3352, %3342 ], [ %3337, %3335 ], [ %3372, %3382 ]
  %3397 = phi float [ %3388, %3386 ], [ %3344, %3342 ], [ 1.000000e+00, %3335 ], [ 1.000000e+00, %3382 ]
  %3398 = phi float [ %3384, %3386 ], [ %3344, %3342 ], [ 1.000000e+00, %3335 ], [ %3384, %3382 ]
  %3399 = phi float [ %3373, %3386 ], [ %3344, %3342 ], [ 1.000000e+00, %3335 ], [ %3373, %3382 ]
  %3400 = fmul fast float %3399, %3311
  %3401 = fmul fast float %3398, %3322
  %3402 = fmul fast float %3397, %3333
  %3403 = fadd fast float %3400, %3396
  %3404 = fadd fast float %3401, %3395
  %3405 = fadd fast float %3402, %3394
  %3406 = fmul fast float %3399, %3310
  %3407 = fmul fast float %3398, %3321
  %3408 = fmul fast float %3397, %3332
  br label %3409

; <label>:3409                                    ; preds = %3393, %3204
  %3410 = phi float [ %3408, %3393 ], [ %3210, %3204 ]
  %3411 = phi float [ %3407, %3393 ], [ %3209, %3204 ]
  %3412 = phi float [ %3406, %3393 ], [ %3208, %3204 ]
  %3413 = phi float [ %3405, %3393 ], [ %3207, %3204 ]
  %3414 = phi float [ %3404, %3393 ], [ %3206, %3204 ]
  %3415 = phi float [ %3403, %3393 ], [ %3205, %3204 ]
  %3416 = fmul fast float %3412, %2655
  %3417 = fmul fast float %3411, %2656
  %3418 = fmul fast float %3410, %2657
  %3419 = fmul fast float %332, 0xBFF7154760000000
  %3420 = call float @dx.op.unary.f32(i32 21, float %3419)  ; Exp(value)
  %3421 = call float @dx.op.unary.f32(i32 7, float %3420)  ; Saturate(value)
  %3422 = fsub fast float 1.000000e+00, %3421
  %3423 = fmul fast float %3422, %3415
  %3424 = fmul fast float %3422, %3414
  %3425 = fmul fast float %3422, %3413
  %3426 = fadd fast float %3423, %3416
  %3427 = fadd fast float %3424, %3417
  %3428 = fadd fast float %3425, %3418
  br label %3429

; <label>:3429                                    ; preds = %3409, %2645
  %3430 = phi float [ %3426, %3409 ], [ %2655, %2645 ]
  %3431 = phi float [ %3427, %3409 ], [ %2656, %2645 ]
  %3432 = phi float [ %3428, %3409 ], [ %2657, %2645 ]
  %3433 = xor i1 %234, true
  %3434 = and i1 %74, %3433
  %3435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %3436 = extractvalue %dx.types.CBufRet.f32 %3435, 0
  %3437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %3438 = extractvalue %dx.types.CBufRet.f32 %3437, 0
  %3439 = select i1 %198, float %3436, float %3438
  %3440 = fmul fast float %3439, %3430
  %3441 = fmul fast float %3439, %3431
  %3442 = fmul fast float %3439, %3432
  %3443 = fmul fast float %3441, 5.000000e-01
  %3444 = fadd fast float %3432, %3430
  %3445 = fmul fast float %3439, %3444
  %3446 = fmul fast float %3445, 2.500000e-01
  %3447 = fadd fast float %3446, %3443
  %3448 = call float @dx.op.unary.f32(i32 23, float %3447)  ; Log(value)
  %3449 = fmul fast float %3448, 0x3FE62E4300000000
  %3450 = fmul fast float %3449, %3449
  %3451 = select i1 %3434, float 1.000000e+00, float 0.000000e+00
  store float %3451, float addrspace(3)* %239, align 4, !tbaa !45, !noalias !49
  %3452 = fmul fast float %3449, %3451
  store float %3452, float addrspace(3)* %241, align 4, !tbaa !45, !noalias !49
  %3453 = fmul fast float %3450, %3451
  store float %3453, float addrspace(3)* %243, align 4, !tbaa !45, !noalias !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3454 = load float, float addrspace(3)* %245, align 4, !tbaa !45, !noalias !49
  %3455 = fadd fast float %3454, %3451
  %3456 = load float, float addrspace(3)* %248, align 4, !tbaa !45, !noalias !49
  %3457 = fadd fast float %3456, %3449
  %3458 = load float, float addrspace(3)* %251, align 4, !tbaa !45, !noalias !49
  %3459 = fadd fast float %3458, %3450
  store float %3455, float addrspace(3)* %239, align 4, !tbaa !45, !noalias !49
  store float %3457, float addrspace(3)* %241, align 4, !tbaa !45, !noalias !49
  store float %3459, float addrspace(3)* %243, align 4, !tbaa !45, !noalias !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3460 = load float, float addrspace(3)* %255, align 4, !tbaa !45, !noalias !49
  %3461 = fadd fast float %3460, %3455
  %3462 = load float, float addrspace(3)* %258, align 4, !tbaa !45, !noalias !49
  %3463 = fadd fast float %3462, %3457
  %3464 = load float, float addrspace(3)* %261, align 4, !tbaa !45, !noalias !49
  %3465 = fadd fast float %3464, %3459
  store float %3461, float addrspace(3)* %239, align 4, !tbaa !45, !noalias !49
  store float %3463, float addrspace(3)* %241, align 4, !tbaa !45, !noalias !49
  store float %3465, float addrspace(3)* %243, align 4, !tbaa !45, !noalias !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3466 = load float, float addrspace(3)* %265, align 4, !tbaa !45, !noalias !49
  %3467 = fadd fast float %3466, %3461
  %3468 = load float, float addrspace(3)* %268, align 4, !tbaa !45, !noalias !49
  %3469 = fadd fast float %3468, %3463
  %3470 = fdiv fast float %3469, %3467
  %3471 = and i1 %3434, %275
  br i1 %3471, label %3472, label %3480, !dx.controlflow.hints !53

; <label>:3472                                    ; preds = %3429
  %3473 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %264
  %3474 = load float, float addrspace(3)* %3473, align 4, !tbaa !45, !noalias !49
  %3475 = fadd fast float %3474, %3465
  %3476 = fdiv fast float %3475, %3467
  %3477 = lshr i32 %62, 1
  %3478 = lshr i32 %63, 1
  %3479 = lshr i32 %233, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %3477, i32 %3478, i32 %3479, float %3470, float %3476, float %3470, float %3470, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3480

; <label>:3480                                    ; preds = %3472, %3429
  br i1 %3434, label %3481, label %3515, !dx.controlflow.hints !54

; <label>:3481                                    ; preds = %3480
  %3482 = fadd fast float %112, 0x3FE3C6EF40000000
  %3483 = call float @dx.op.unary.f32(i32 22, float %3482)  ; Frc(value)
  %3484 = call float @dx.op.unary.f32(i32 23, float %3440)  ; Log(value)
  %3485 = fadd fast float %3484, -7.000000e+00
  %3486 = call float @dx.op.unary.f32(i32 21, float %3485)  ; Exp(value)
  %3487 = fmul fast float %3483, 2.000000e+00
  %3488 = fadd fast float %3487, -1.000000e+00
  %3489 = fmul fast float %3486, %3488
  %3490 = fcmp fast ogt float %3440, 0.000000e+00
  %3491 = select i1 %3490, float %3489, float 0.000000e+00
  %3492 = fadd fast float %3491, %3440
  %3493 = fadd fast float %112, 0x3FF3C6EF40000000
  %3494 = call float @dx.op.unary.f32(i32 22, float %3493)  ; Frc(value)
  %3495 = call float @dx.op.unary.f32(i32 23, float %3441)  ; Log(value)
  %3496 = fadd fast float %3495, -7.000000e+00
  %3497 = call float @dx.op.unary.f32(i32 21, float %3496)  ; Exp(value)
  %3498 = fmul fast float %3494, 2.000000e+00
  %3499 = fadd fast float %3498, -1.000000e+00
  %3500 = fmul fast float %3497, %3499
  %3501 = fcmp fast ogt float %3441, 0.000000e+00
  %3502 = select i1 %3501, float %3500, float 0.000000e+00
  %3503 = fadd fast float %3502, %3441
  %3504 = fadd fast float %112, 0x3FFDAA66E0000000
  %3505 = call float @dx.op.unary.f32(i32 22, float %3504)  ; Frc(value)
  %3506 = call float @dx.op.unary.f32(i32 23, float %3442)  ; Log(value)
  %3507 = fadd fast float %3506, -6.000000e+00
  %3508 = call float @dx.op.unary.f32(i32 21, float %3507)  ; Exp(value)
  %3509 = fmul fast float %3505, 2.000000e+00
  %3510 = fadd fast float %3509, -1.000000e+00
  %3511 = fmul fast float %3508, %3510
  %3512 = fcmp fast ogt float %3442, 0.000000e+00
  %3513 = select i1 %3512, float %3511, float 0.000000e+00
  %3514 = fadd fast float %3513, %3442
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %62, i32 %63, i32 %233, float %3492, float %3503, float %3514, float %3492, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3515

; <label>:3515                                    ; preds = %3481, %3480
  %3516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %3517 = extractvalue %dx.types.CBufRet.f32 %3516, 0
  %3518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %3519 = extractvalue %dx.types.CBufRet.f32 %3518, 0
  %3520 = select i1 %198, float %3517, float %3519
  %3521 = fmul fast float %3520, %332
  %3522 = fmul fast float %3521, 5.000000e-01
  %3523 = fadd fast float %332, %332
  %3524 = fmul fast float %3520, %3523
  %3525 = fmul fast float %3524, 2.500000e-01
  %3526 = fadd fast float %3525, %3522
  %3527 = fmul fast float %3526, %3526
  store float %3451, float addrspace(3)* %239, align 4, !tbaa !45, !noalias !49
  %3528 = fmul fast float %3526, %3451
  store float %3528, float addrspace(3)* %241, align 4, !tbaa !45, !noalias !49
  %3529 = fmul fast float %3527, %3451
  store float %3529, float addrspace(3)* %243, align 4, !tbaa !45, !noalias !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3530 = load float, float addrspace(3)* %245, align 4, !tbaa !45, !noalias !49
  %3531 = fadd fast float %3530, %3451
  %3532 = load float, float addrspace(3)* %248, align 4, !tbaa !45, !noalias !49
  %3533 = fadd fast float %3526, %3532
  %3534 = load float, float addrspace(3)* %251, align 4, !tbaa !45, !noalias !49
  %3535 = fadd fast float %3527, %3534
  store float %3531, float addrspace(3)* %239, align 4, !tbaa !45, !noalias !49
  store float %3533, float addrspace(3)* %241, align 4, !tbaa !45, !noalias !49
  store float %3535, float addrspace(3)* %243, align 4, !tbaa !45, !noalias !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3536 = load float, float addrspace(3)* %255, align 4, !tbaa !45, !noalias !49
  %3537 = fadd fast float %3536, %3531
  %3538 = load float, float addrspace(3)* %258, align 4, !tbaa !45, !noalias !49
  %3539 = fadd fast float %3533, %3538
  %3540 = load float, float addrspace(3)* %261, align 4, !tbaa !45, !noalias !49
  %3541 = fadd fast float %3535, %3540
  store float %3537, float addrspace(3)* %239, align 4, !tbaa !45, !noalias !49
  store float %3539, float addrspace(3)* %241, align 4, !tbaa !45, !noalias !49
  store float %3541, float addrspace(3)* %243, align 4, !tbaa !45, !noalias !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3542 = load float, float addrspace(3)* %265, align 4, !tbaa !45, !noalias !49
  %3543 = fadd fast float %3542, %3537
  %3544 = load float, float addrspace(3)* %268, align 4, !tbaa !45, !noalias !49
  %3545 = fadd fast float %3544, %3539
  %3546 = fdiv fast float %3545, %3543
  br i1 %3471, label %3547, label %3555, !dx.controlflow.hints !55

; <label>:3547                                    ; preds = %3515
  %3548 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %264
  %3549 = load float, float addrspace(3)* %3548, align 4, !tbaa !45, !noalias !49
  %3550 = fadd fast float %3549, %3541
  %3551 = fdiv fast float %3550, %3543
  %3552 = lshr i32 %62, 1
  %3553 = lshr i32 %63, 1
  %3554 = lshr i32 %233, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3552, i32 %3553, i32 %3554, float %3546, float %3551, float %3546, float %3546, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3555

; <label>:3555                                    ; preds = %3547, %3515
  br i1 %3434, label %3556, label %3584, !dx.controlflow.hints !56

; <label>:3556                                    ; preds = %3555
  %3557 = fadd fast float %112, 0x3FE3C6EF40000000
  %3558 = call float @dx.op.unary.f32(i32 22, float %3557)  ; Frc(value)
  %3559 = call float @dx.op.unary.f32(i32 23, float %3521)  ; Log(value)
  %3560 = fadd fast float %3559, -7.000000e+00
  %3561 = call float @dx.op.unary.f32(i32 21, float %3560)  ; Exp(value)
  %3562 = fmul fast float %3558, 2.000000e+00
  %3563 = fadd fast float %3562, -1.000000e+00
  %3564 = fmul fast float %3561, %3563
  %3565 = fcmp fast ogt float %3521, 0.000000e+00
  %3566 = select i1 %3565, float %3564, float 0.000000e+00
  %3567 = fadd fast float %3566, %3521
  %3568 = fadd fast float %112, 0x3FF3C6EF40000000
  %3569 = call float @dx.op.unary.f32(i32 22, float %3568)  ; Frc(value)
  %3570 = fmul fast float %3569, 2.000000e+00
  %3571 = fadd fast float %3570, -1.000000e+00
  %3572 = fmul fast float %3561, %3571
  %3573 = select i1 %3565, float %3572, float 0.000000e+00
  %3574 = fadd fast float %3573, %3521
  %3575 = fadd fast float %112, 0x3FFDAA66E0000000
  %3576 = call float @dx.op.unary.f32(i32 22, float %3575)  ; Frc(value)
  %3577 = fadd fast float %3559, -6.000000e+00
  %3578 = call float @dx.op.unary.f32(i32 21, float %3577)  ; Exp(value)
  %3579 = fmul fast float %3576, 2.000000e+00
  %3580 = fadd fast float %3579, -1.000000e+00
  %3581 = fmul fast float %3578, %3580
  %3582 = select i1 %3565, float %3581, float 0.000000e+00
  %3583 = fadd fast float %3582, %3521
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %62, i32 %63, i32 %233, float %3567, float %3574, float %3583, float %3567, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3584

; <label>:3584                                    ; preds = %3556, %3555
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
!dx.entryPoints = !{!42}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !28, !33, !36}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !25, !26, !27}
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
!26 = !{i32 18, %"class.Texture1D<float>"* undef, !"", i32 0, i32 54, i32 1, i32 1, i32 0, !7}
!27 = !{i32 19, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!28 = !{!29, !30, !31, !32}
!29 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!30 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!31 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!32 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!33 = !{!34, !35}
!34 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!35 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!36 = !{!37, !38, !39, !40, !41}
!37 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!38 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!39 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!40 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!41 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!42 = !{void ()* @cs_volumetric_forwardplus_scatter_global_water_afog, !"cs_volumetric_forwardplus_scatter_global_water_afog", null, !4, !43}
!43 = !{i32 0, i64 272, i32 4, !44}
!44 = !{i32 4, i32 4, i32 4}
!45 = !{!46, !46, i64 0}
!46 = !{!"float", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !{!50, !52}
!50 = distinct !{!50, !51, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!51 = distinct !{!51, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!52 = distinct !{!52, !51, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = !{!69, !69, i64 0}
!69 = !{!"int", !47, i64 0}
!70 = !{!71, !73, !75, !50, !52}
!71 = distinct !{!71, !72, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!72 = distinct !{!72, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!73 = distinct !{!73, !74, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!74 = distinct !{!74, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!75 = distinct !{!75, !76, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z: %agg.result"}
!76 = distinct !{!76, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z"}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = !{!115, !117, !119, !50, !52}
!115 = distinct !{!115, !116, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!116 = distinct !{!116, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!117 = distinct !{!117, !118, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!118 = distinct !{!118, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!119 = distinct !{!119, !118, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 2}
!121 = !{!122}
!122 = distinct !{!122, !123, !"\01?sort@@YAXAIAM00@Z: %c"}
!123 = distinct !{!123, !"\01?sort@@YAXAIAM00@Z"}
!124 = !{!125, !126, !115, !117, !119, !50, !52}
!125 = distinct !{!125, !123, !"\01?sort@@YAXAIAM00@Z: %a"}
!126 = distinct !{!126, !123, !"\01?sort@@YAXAIAM00@Z: %b"}
!127 = !{!126}
!128 = !{!125, !122, !115, !117, !119, !50, !52}
!129 = !{!125}
!130 = !{!126, !122, !115, !117, !119, !50, !52}
!131 = !{!132}
!132 = distinct !{!132, !133, !"\01?sort@@YAXAIAM00@Z: %c"}
!133 = distinct !{!133, !"\01?sort@@YAXAIAM00@Z"}
!134 = !{!135, !136, !115, !117, !119, !50, !52}
!135 = distinct !{!135, !133, !"\01?sort@@YAXAIAM00@Z: %a"}
!136 = distinct !{!136, !133, !"\01?sort@@YAXAIAM00@Z: %b"}
!137 = !{!136}
!138 = !{!135, !132, !115, !117, !119, !50, !52}
!139 = !{!135}
!140 = !{!136, !132, !115, !117, !119, !50, !52}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 2}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 2}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 2}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 1}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 2}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}

